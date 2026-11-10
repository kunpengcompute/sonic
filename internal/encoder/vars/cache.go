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

package vars

import (
	"os"
	"sync/atomic"
	"unsafe"

	"github.com/bytedance/sonic/internal/rt"
)

type Encoder func(
	rb *[]byte,
	vp unsafe.Pointer,
	sb *Stack,
	fv uint64,
) error

// lastProgram memoizes the most recently compiled program: hot workloads ask
// FindOrCompile for the same type repeatedly, and a single-slot hit avoids the
// RCU map lookup. It is immutable once published, so readers can race with the
// pointer swap safely; a stale slot only costs a failed compare. Strong
// references keep the GoType and the program alive.
type lastProgram struct {
	vt  unsafe.Pointer
	pv  bool
	val interface{}
}

var lastCompile = unsafe.Pointer(new(lastProgram)) // zero vt: never matches

// useLastProgram can be disabled with SONIC_NO_LAST_PROGRAM=1; the code then
// takes the RCU path, identical to upstream.
var useLastProgram = os.Getenv("SONIC_NO_LAST_PROGRAM") == ""

func FindOrCompile(vt *rt.GoType, pv bool, compiler func(*rt.GoType, ...interface{}) (interface{}, error)) (interface{}, error) {
	if useLastProgram {
		if s := (*lastProgram)(atomic.LoadPointer(&lastCompile)); s.vt == unsafe.Pointer(vt) && s.pv == pv {
			return s.val, nil
		}
	}
	if val := programCache.Get(vt); val != nil {
		return val, nil
	} else if ret, err := programCache.Compute(vt, compiler, pv); err == nil {
		// publish only after an actual (re)compile, and only when the slot
		// changed, so rotating-vt workloads pay no allocation per miss
		if useLastProgram {
			if s := (*lastProgram)(atomic.LoadPointer(&lastCompile)); s.vt != unsafe.Pointer(vt) || s.pv != pv {
				atomic.StorePointer(&lastCompile, unsafe.Pointer(&lastProgram{vt: unsafe.Pointer(vt), pv: pv, val: ret}))
			}
		}
		return ret, nil
	} else {
		return nil, err
	}
}

func GetProgram(vt *rt.GoType) interface{} {
	return programCache.Get(vt)
}

func ComputeProgram(vt *rt.GoType, compute func(*rt.GoType, ...interface{}) (interface{}, error), pv bool) (interface{}, error) {
	return programCache.Compute(vt, compute, pv)
}
