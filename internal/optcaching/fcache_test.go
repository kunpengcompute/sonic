/*
 * Copyright 2026 ByteDance Inc.
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
	"math/rand"
	"testing"

	"github.com/bytedance/sonic/internal/resolver"
)

var fieldNames = []string{
	"user_id", "aweme_id", "desc", "create_time", "author", "statistics",
	"video", "music", "cha_list", "text_extra", "duration", "cover",
	"title", "share_url", "is_long_video", "item_id", "group_id",
	"comment_count", "digg_count", "share_count",
}

func fieldsOf(n []string) []resolver.FieldMeta {
	out := make([]resolver.FieldMeta, len(n))
	for i, s := range n {
		out[i] = resolver.FieldMeta{Name: s}
	}
	return out
}

func TestParity(t *testing.T) {
	sets := [][]string{
		fieldNames,
		{"ID", "Id", "id", "Name", "name", "URL", "url", "a", "", "AbC"},
		{"UserName", "username", "USERNAME", "user_name"},
		{"dup", "dup", "dup2", "dup", "x"},
		{"a", "bb", "ccc", "dddd", "eeeee", "ffffff", "ggggggg", "hhhhhhhh",
			"iiiiiiiii", "jjjjjjjjjj", "kkkkkkkkkkk", "llllllllllll",
			"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaXaaaaaaaaaaaaaaa"},
	}
	probes := append([]string{}, fieldNames...)
	probes = append(probes, "ID", "Id", "id", "URL", "url", "UserName", "username",
		"USERNAME", "user_name", "", "a", "ab", "dup", "dup2", "x", "unknown_field_xyz")
	const alpha = "abcdefghijklmnopqrstuvwxyz_0123456789ABCDEFGHIJ"
	r := rand.New(rand.NewSource(11))
	for i := 0; i < 3000; i++ {
		n := r.Intn(40)
		b := make([]byte, n)
		for j := range b {
			b[j] = alpha[r.Intn(len(alpha))]
		}
		probes = append(probes, string(b))
	}
	for _, set := range sets {
		old := newMapFieldCache(fieldsOf(set))
		fast := NewFieldCache(fieldsOf(set))
		for _, p := range probes {
			for _, cs := range []bool{false, true} {
				if got, want := fast.Get(p, cs), old.Get(p, cs); got != want {
					t.Fatalf("set=%v key=%q cs=%v: new=%d old=%d", set, p, cs, got, want)
				}
			}
		}
	}
}

func BenchmarkHit(b *testing.B) {
	f := NewFieldCache(fieldsOf(fieldNames))
	key := "create_time"
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		if f.Get(key, false) < 0 {
			b.Fatal("miss")
		}
	}
}

func BenchmarkHitOld(b *testing.B) {
	f := newMapFieldCache(fieldsOf(fieldNames))
	key := "create_time"
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		if f.Get(key, false) < 0 {
			b.Fatal("miss")
		}
	}
}

func BenchmarkMiss(b *testing.B) {
	f := NewFieldCache(fieldsOf(fieldNames))
	key := "unknown_field_xyz"
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		_ = f.Get(key, false)
	}
}

func BenchmarkInsensitive(b *testing.B) {
	f := NewFieldCache(fieldsOf(fieldNames))
	key := "Create_Time"
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		if f.Get(key, false) < 0 {
			b.Fatal("miss")
		}
	}
}

func BenchmarkInsensitiveOld(b *testing.B) {
	f := newMapFieldCache(fieldsOf(fieldNames))
	key := "Create_Time"
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		if f.Get(key, false) < 0 {
			b.Fatal("miss")
		}
	}
}

func BenchmarkShortHit(b *testing.B) {
	f := NewFieldCache(fieldsOf([]string{"id", "uid", "aid", "cid", "sid", "gid", "mid", "tid"}))
	key := "cid"
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		if f.Get(key, false) < 0 {
			b.Fatal("miss")
		}
	}
}

func BenchmarkParallel(b *testing.B) {
	f := NewFieldCache(fieldsOf(fieldNames))
	key := "create_time"
	b.ReportAllocs()
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			if f.Get(key, false) < 0 {
				b.Fatal("miss")
			}
		}
	})
}
