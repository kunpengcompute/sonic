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

package optdec

import (
	"github.com/bytedance/sonic/internal/decoder/consts"
)

// DecodeGeneric decodes one json value from s into a generic
// interface{}/[]interface{}/map[string]interface{} value. It backs the ast
// package's raw-node Interface() fast path; ok=false on any error lets the
// caller fall back to its canonical (error-exact) path.
func DecodeGeneric(s string, useNumber bool) (interface{}, bool) {
	var v interface{}
	pos := 0
	var f uint64
	if useNumber {
		f = uint64(consts.OptionUseNumber)
	}
	if err := Decode(&s, &pos, f, &v); err != nil {
		return nil, false
	}
	return v, true
}
