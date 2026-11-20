/*
 * Copyright 2025 Huawei Technologies Co., Ltd.
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

package native

import "testing"

func TestSveVLFromPrctl(t *testing.T) {
	cases := []struct {
		name string
		v    uintptr
		want int
	}{
		{"32 bytes", 32, 32},
		{"32 bytes with inherit flag", 32 | 0x20000, 32},
		{"16 bytes", 16, 16},
		{"64 bytes", 64, 64},
		{"zero", 0, 0},
	}
	for _, c := range cases {
		t.Run(c.name, func(t *testing.T) {
			if got := sveVLFromPrctl(c.v); got != c.want {
				t.Fatalf("sveVLFromPrctl(%#x) = %d, want %d", c.v, got, c.want)
			}
		})
	}
}

func TestSveVLMatches(t *testing.T) {
	cases := []struct {
		vl   int
		want bool
	}{
		{sveVectorLengthBytes, true},
		{16, false},
		{64, false},
		{128, false},
		{0, false},
	}
	for _, c := range cases {
		if got := sveVLMatches(c.vl); got != c.want {
			t.Fatalf("sveVLMatches(%d) = %v, want %v", c.vl, got, c.want)
		}
	}
}

func TestSelectSveMode(t *testing.T) {
	cases := []struct {
		name       string
		capable    bool
		wrap, link string
		want       sveMode
	}{
		{"incapable ignores envs", false, "1", "1", sveModeNeon},
		{"auto uses wrapgoc", true, "", "", sveModeWrapgoc},
		{"force wrapgoc", true, "1", "", sveModeWrapgoc},
		{"force linkname", true, "", "1", sveModeLinkname},
		{"wrapgoc has priority", true, "1", "1", sveModeWrapgoc},
		{"disable sve", true, "0", "", sveModeNeon},
		{"disable sve via linkname env", true, "", "0", sveModeNeon},
		{"linkname overrides wrapgoc disable", true, "0", "1", sveModeLinkname},
	}
	for _, c := range cases {
		t.Run(c.name, func(t *testing.T) {
			if got := selectSveMode(c.capable, c.wrap, c.link); got != c.want {
				t.Fatalf("selectSveMode(%v, %q, %q) = %d, want %d",
					c.capable, c.wrap, c.link, got, c.want)
			}
		})
	}
}
