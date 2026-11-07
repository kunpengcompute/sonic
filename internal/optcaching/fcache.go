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

// maxLinearFields is the struct field count under which a contiguous linear
// scan beats a Go map lookup (measured: N<=6 linear wins, N>=10 map wins).
const maxLinearFields = 8

type FieldCache struct {
	caseSensitive   map[string]int
	caseInsensitive map[string]int

	// linear exact-match table for small structs; nil for large ones.
	// Built with last-wins semantics to match the map above.
	linearNames []string
	linearIdx   []int32
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
		lower := strings.ToLower(name)
		if lower == name {
			return -1
		}
		if idx, ok := f.caseInsensitive[lower]; ok {
			return idx
		}
		return -1
	}

	// small struct: contiguous linear scan (no hashing, no allocation)
	// backward scan: same last-wins result as map assignment
	for i := len(f.linearNames) - 1; i >= 0; i-- {
		if f.linearNames[i] == name {
			return int(f.linearIdx[i])
		}
	}
	if caseSensitive {
		return -1
	}
	// case-insensitive: single EqualFold pass (first-wins, matches the
	// smallest-index semantics of the map below); no ToLower allocation
	for i := 0; i < len(f.linearNames); i++ {
		if strings.EqualFold(f.linearNames[i], name) {
			return int(f.linearIdx[i])
		}
	}
	return -1
}
