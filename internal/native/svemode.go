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

type sveMode uint8

const (
	sveModeNeon sveMode = iota
	sveModeWrapgoc
	sveModeLinkname
)

// The checked-in SVE assembly is generated with --vl=32; its addvl/addpl
// stack adjustments and baked stack sizes assume the same vector length.
const sveVectorLengthBytes = 32

// prctl(PR_SVE_GET_VL) returns the calling thread's effective SVE vector
// length in bytes, OR'ed with flags such as PR_SVE_VL_INHERIT.
const (
	prSveGetVl     = 51
	prSveVlLenMask = 0xffff
)

func sveVLMatches(vl int) bool {
	return vl == sveVectorLengthBytes
}

func sveVLFromPrctl(v uintptr) int {
	return int(v & prSveVlLenMask)
}

// selectSveMode mirrors amd64's automatic AVX2/SSE selection: SVE is used by
// default when the CPU is capable, and the SONIC_USE_SVE_* variables only
// override ("1") or disable ("0") that choice.
func selectSveMode(capable bool, wrapEnv, linkEnv string) sveMode {
	if !capable {
		return sveModeNeon
	}
	switch {
	case wrapEnv == "1":
		return sveModeWrapgoc
	case linkEnv == "1":
		return sveModeLinkname
	case wrapEnv == "0" || linkEnv == "0":
		return sveModeNeon
	default:
		return sveModeWrapgoc
	}
}
