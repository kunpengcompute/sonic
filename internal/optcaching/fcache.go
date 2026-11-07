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

	"github.com/bytedance/sonic/internal/resolver"
)

const maxLinearFields = 8

type FieldCache struct {
	caseSensitive   map[string]int
	caseInsensitive map[string]int

	linearNames []string
	linearIdx   []int32

	foldHashes map[uint64]int
	fieldNames []string
}

func foldHash(s string) uint64 {
	const offset uint64 = 14695981039346656037
	const prime uint64 = 1099511628211
	h := offset
	for i := 0; i < len(s); i++ {
		c := s[i]
		if c >= 'A' && c <= 'Z' {
			c += 'a' - 'A'
		}
		h ^= uint64(c)
		h *= prime
	}
	return h
}

// hasUpperASCII reports whether s contains at least one byte in 'A'..'Z'.
// It also returns false (with ok=false) if any byte >= 0x80 is found,
// signalling the caller to fall back to strings.ToLower.
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

func NewFieldCache(fields []resolver.FieldMeta) *FieldCache {
	f := &FieldCache{
		caseSensitive:   make(map[string]int, len(fields)),
		caseInsensitive: make(map[string]int, len(fields)),
	}
	for i, field := range fields {
		name := field.Name
		f.caseSensitive[name] = i
		lowerName := strings.ToLower(name)
		if existingIdx, ok := f.caseInsensitive[lowerName]; !ok || i < existingIdx {
			f.caseInsensitive[lowerName] = i
		}
	}
	if len(fields) > 0 && len(fields) <= maxLinearFields {
		f.linearNames = make([]string, len(fields))
		f.linearIdx = make([]int32, len(fields))
		for i, field := range fields {
			f.linearNames[i] = field.Name
			f.linearIdx[i] = int32(i)
		}
	} else if len(fields) > maxLinearFields {
		f.foldHashes = make(map[uint64]int, len(fields))
		f.fieldNames = make([]string, len(fields))
		for i, field := range fields {
			f.fieldNames[i] = field.Name
			if _, ok := hasUpperASCII(field.Name); ok {
				h := foldHash(field.Name)
				if existing, ok := f.foldHashes[h]; !ok || i < existing {
					f.foldHashes[h] = i
				}
			}
		}
	}
	return f
}

func (f *FieldCache) Get(name string, caseSensitive bool) int {
	if f.linearNames == nil {
		if idx, ok := f.caseSensitive[name]; ok {
			return idx
		}
		if caseSensitive {
			return -1
		}
		if idx, ok := f.caseInsensitive[name]; ok {
			return idx
		}
		// Quick check: does name have uppercase ASCII?
		// If not, ToLower(name)==name and caseInsensitive already missed → -1.
		has, ascii := hasUpperASCII(name)
		if !ascii {
			// non-ASCII key, fall back to ToLower
			lower := strings.ToLower(name)
			if lower == name {
				return -1
			}
			if idx, ok := f.caseInsensitive[lower]; ok {
				return idx
			}
			return -1
		}
		if !has {
			// all-lowercase ASCII, caseInsensitive[name] already missed
			return -1
		}
		// has uppercase ASCII: use fold-hash (no allocation)
		if f.foldHashes != nil {
			h := foldHash(name)
			if idx, ok := f.foldHashes[h]; ok {
				if strings.EqualFold(f.fieldNames[idx], name) {
					return idx
				}
			}
			return -1
		}
		// foldHashes nil (field names were non-ASCII), use ToLower
		lower := strings.ToLower(name)
		if lower == name {
			return -1
		}
		if idx, ok := f.caseInsensitive[lower]; ok {
			return idx
		}
		return -1
	}

	// small struct: contiguous linear scan
	for i := len(f.linearNames) - 1; i >= 0; i-- {
		if f.linearNames[i] == name {
			return int(f.linearIdx[i])
		}
	}
	if caseSensitive {
		return -1
	}
	for i := 0; i < len(f.linearNames); i++ {
		if strings.EqualFold(f.linearNames[i], name) {
			return int(f.linearIdx[i])
		}
	}
	return -1
}
