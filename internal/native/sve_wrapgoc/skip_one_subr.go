//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_wrapgoc

import (
	"github.com/bytedance/sonic/loader"
)

const (
	_entry__skip_one = 0
)

const (
	_stack__skip_one = 224
)

const (
	_size__skip_one = 14212
)

var (
	_pcsp__skip_one = [][2]uint32{
		{0x1, 0},
		{0x18, 96},
		{0x1c, 192},
		{0x3244, 224},
		{0x3248, 192},
		{0x3260, 96},
		{0x3264, 0},
		{0x3784, 224},
	}
)

var _cfunc_skip_one = []loader.CFunc{
	{"_skip_one_entry", 0, _entry__skip_one, 0, nil},
	{"_skip_one", _entry__skip_one, _size__skip_one, _stack__skip_one, _pcsp__skip_one},
}
