/*
 * Copyright 2021 ByteDance Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package caching

import (
	"strings"
	"unsafe"

	"github.com/bytedance/sonic/internal/resolver"
)

type entry struct {
	name string
	low  string // build-time folded name (comparison basis of the fold scan)
	f8   uint64 // first 8 bytes (exact key)
	l8   uint64 // last 8 bytes (exact key, valid for len >= 8)
	h    uint64 // foldHash(low), gate for the fold scan
	idx  int32  // returned on exact match (last-wins on duplicates)
	lo   int32  // returned on fold match (minimum idx of the same fold class)
}

type FieldCache struct {
	buckets [][]entry // bucketed by length; len(buckets) = maxLen+1
	uni     bool
	legacy  *mapFieldCache
}

func NewFieldCache(fields []resolver.FieldMeta) *FieldCache {
	for _, f := range fields {
		for i := 0; i < len(f.Name); i++ {
			if f.Name[i] >= 0x80 { // non-ASCII: fall back to the legacy Unicode-semantics implementation
				return &FieldCache{uni: true, legacy: newMapFieldCache(fields)}
			}
		}
	}

	maxLen := 0
	for _, f := range fields {
		if len(f.Name) > maxLen {
			maxLen = len(f.Name)
		}
	}

	c := &FieldCache{buckets: make([][]entry, maxLen+1)}
	pos := make(map[string]int, len(fields))   // name -> bucket slot (last-wins on duplicates)
	min := make(map[string]int32, len(fields)) // folded name -> minimum idx
	for i, f := range fields {
		n, lo := len(f.Name), strings.ToLower(f.Name)
		if v, ok := min[lo]; !ok || int32(i) < v {
			min[lo] = int32(i)
		}
		if j, ok := pos[f.Name]; ok {
			c.buckets[n][j].idx = int32(i)
			continue
		}
		e := entry{name: f.Name, low: lo, h: foldHash(lo), idx: int32(i)}
		if n >= 8 {
			e.f8, e.l8 = load64(f.Name), loadLast64(f.Name)
		}
		pos[f.Name] = len(c.buckets[n])
		c.buckets[n] = append(c.buckets[n], e)
	}
	for _, b := range c.buckets {
		for j := range b {
			b[j].lo = min[b[j].low]
		}
	}
	return c
}

func (c *FieldCache) Get(name string, caseSensitive bool) int {
	if c.uni {
		return c.legacy.Get(name, caseSensitive)
	}
	n := len(name)
	if n >= len(c.buckets) { // n > maxLen: cannot hit
		return -1
	}
	b := c.buckets[n]

	if n >= 8 {
		f, l := load64(name), loadLast64(name)
		if n <= 16 {
			// f8+l8 already cover the full name, skipping string comparison
			for i := range b {
				if b[i].f8 == f && b[i].l8 == l {
					return int(b[i].idx)
				}
			}
		} else {
			for i := range b {
				if b[i].f8 == f && b[i].l8 == l && b[i].name == name {
					return int(b[i].idx)
				}
			}
		}
	} else {
		for i := range b {
			if b[i].name == name {
				return int(b[i].idx)
			}
		}
	}

	if caseSensitive {
		return -1
	}
	// all-lowercase pure ASCII: fold match reduces to exact string match,
	// skipping both the fold-hash computation and the per-entry equalFold scan
	if has, ascii := hasUpperASCII(name); ascii && !has {
		for i := range b {
			if b[i].low == name {
				return int(b[i].lo)
			}
		}
		return -1
	}
	// fold-hash gate: one O(len) hash vs a per-entry byte-wise equalFold scan
	fh := foldHash(name)
	for i := range b {
		if b[i].h == fh && equalFold(b[i].low, name) {
			return int(b[i].lo)
		}
	}
	return -1
}

// foldHash computes the case-folded (ASCII A-Z → a-z) FNV-1a hash of s.
// Used as a cheap integer gate before the per-entry equalFold scan.
func foldHash(s string) uint64 {
	const (
		offset64 uint64 = 14695981039346656037
		prime64  uint64 = 1099511628211
	)
	h := offset64
	for i := 0; i < len(s); i++ {
		c := s[i]
		if c >= 'A' && c <= 'Z' {
			c += 'a' - 'A'
		}
		h ^= uint64(c)
		h *= prime64
	}
	return h
}

// hasUpperASCII reports (hasUppercase, isPureASCII) for s.
func hasUpperASCII(s string) (has bool, ok bool) {
	for i := 0; i < len(s); i++ {
		c := s[i]
		if c >= 'A' && c <= 'Z' {
			return true, true
		}
		if c >= 0x80 {
			return false, false
		}
	}
	return false, true
}

// equalFold reports whether low and s are ASCII case-insensitively equal.
// Callers guarantee equal lengths (same bucket); the defensive check is kept.
func equalFold(low, s string) bool {
	if len(low) != len(s) {
		return false
	}
	for i := 0; i < len(low); i++ {
		c := s[i]
		if c >= 'A' && c <= 'Z' {
			c += 'a' - 'A'
		}
		if c != low[i] {
			return false
		}
	}
	return true
}

type strHdr struct {
	data unsafe.Pointer
	len  int
}

func load64(s string) uint64 { return *(*uint64)((*strHdr)(unsafe.Pointer(&s)).data) }

func loadLast64(s string) uint64 {
	return *(*uint64)(unsafe.Add((*strHdr)(unsafe.Pointer(&s)).data, len(s)-8))
}

// ---- non-ASCII fallback ----

type mapFieldCache struct {
	caseSensitive   map[string]int
	caseInsensitive map[string]int
}

func newMapFieldCache(fields []resolver.FieldMeta) *mapFieldCache {
	f := &mapFieldCache{
		caseSensitive:   make(map[string]int, len(fields)),
		caseInsensitive: make(map[string]int, len(fields)),
	}
	for i, field := range fields {
		f.caseSensitive[field.Name] = i
		lo := strings.ToLower(field.Name)
		if v, ok := f.caseInsensitive[lo]; !ok || i < v {
			f.caseInsensitive[lo] = i
		}
	}
	return f
}

func (f *mapFieldCache) Get(name string, caseSensitive bool) int {
	if idx, ok := f.caseSensitive[name]; ok {
		return idx
	}
	if !caseSensitive {
		if idx, ok := f.caseInsensitive[strings.ToLower(name)]; ok {
			return idx
		}
	}
	return -1
}
