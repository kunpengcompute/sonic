//go:build arm64
// +build arm64

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

import (
	"os"
	"testing"
)

func TestSveAutoDefault(t *testing.T) {
	if os.Getenv("SONIC_USE_SVE_WRAPGOC") != "" || os.Getenv("SONIC_USE_SVE_LINKNAME") != "" {
		t.Skip("SVE environment override is set")
	}
	if !CpuDetect() || !sveVLCompatible() {
		t.Skip("SVE is not usable on this CPU")
	}
	if !UseSveWrapgoc || UseSveLinkname {
		t.Fatalf("expected auto-selected SVE wrapgoc, got wrapgoc=%v linkname=%v",
			UseSveWrapgoc, UseSveLinkname)
	}
}

func TestSveSelectionMatchesEnv(t *testing.T) {
	if !CpuDetect() || !sveVLCompatible() {
		t.Skip("SVE is not usable on this CPU")
	}
	want := selectSveMode(true,
		os.Getenv("SONIC_USE_SVE_WRAPGOC"), os.Getenv("SONIC_USE_SVE_LINKNAME"))
	switch want {
	case sveModeWrapgoc:
		if !UseSveWrapgoc || UseSveLinkname {
			t.Fatalf("expected wrapgoc, got wrapgoc=%v linkname=%v",
				UseSveWrapgoc, UseSveLinkname)
		}
	case sveModeLinkname:
		if UseSveWrapgoc || !UseSveLinkname {
			t.Fatalf("expected linkname, got wrapgoc=%v linkname=%v",
				UseSveWrapgoc, UseSveLinkname)
		}
	default:
		if UseSveWrapgoc || UseSveLinkname {
			t.Fatalf("expected neon, got wrapgoc=%v linkname=%v",
				UseSveWrapgoc, UseSveLinkname)
		}
	}
}
