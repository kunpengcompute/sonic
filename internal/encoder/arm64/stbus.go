//go:build arm64
// +build arm64

/**
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

package arm64

import (
	"sync/atomic"
	"unsafe"
	_ "unsafe"

	_ "encoding/base64"
	"github.com/bytedance/sonic/internal/encoder/alg"
	"github.com/bytedance/sonic/internal/encoder/prim"
	"github.com/bytedance/sonic/internal/encoder/vars"
	"github.com/bytedance/sonic/internal/rt"
	"github.com/bytedance/sonic/loader"
)

var compiler func(*rt.GoType, ...interface{}) (interface{}, error)

func SetCompiler(c func(*rt.GoType, ...interface{}) (interface{}, error)) {
	compiler = c
}

func ptoenc(p loader.Function) vars.Encoder {
	return *(*vars.Encoder)(unsafe.Pointer(&p))
}

// direct-mapped cache to skip programCache probing on the hot per-value
// dispatch path; entries are immutable once stored, so racing stores are benign
const _FastDispatchSize = 1 << 10

type _FastDispatchEntry struct {
	vt *rt.GoType
	fn vars.Encoder
}

var _fastDispatch [_FastDispatchSize]atomic.Pointer[_FastDispatchEntry]

func EncodeTypedPointer(buf *[]byte, vt *rt.GoType, vp *unsafe.Pointer, sb *vars.Stack, fv uint64) error {
	if vt == nil {
		return prim.EncodeNil(buf)
	}
	var fn vars.Encoder
	slot := &_fastDispatch[vt.Hash&(_FastDispatchSize-1)]
	if e := slot.Load(); e != nil && e.vt == vt {
		fn = e.fn
	} else {
		ifn, err := vars.FindOrCompile(vt, (fv&(1<<alg.BitPointerValue)) != 0, compiler)
		if err != nil {
			return err
		}
		fn = ifn.(vars.Encoder)
		slot.Store(&_FastDispatchEntry{vt: vt, fn: fn})
	}
	if vt.Indirect() {
		return fn(buf, *vp, sb, fv)
	}
	return fn(buf, unsafe.Pointer(vp), sb, fv)
}
