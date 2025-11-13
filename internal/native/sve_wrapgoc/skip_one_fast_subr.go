//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_wrapgoc

import (
	"github.com/bytedance/sonic/loader"
)

const (
	_entry__skip_one_fast = 0
)

const (
	_stack__skip_one_fast = 112
)

const (
	_size__skip_one_fast = 3428
)

var (
	_pcsp__skip_one_fast = [][2]uint32{
		{0x1, 0},
		{0x4, 16},
		{0x8, 80},
		{0x104, 112},
		{0x108, 80},
		{0x10c, 16},
		{0x110, 0},
		{0x288, 112},
		{0x28c, 80},
		{0x290, 16},
		{0x294, 0},
		{0x300, 112},
		{0x304, 80},
		{0x308, 16},
		{0x30c, 0},
		{0x6c4, 112},
		{0x6c8, 80},
		{0x6cc, 16},
		{0x6d0, 0},
		{0xb20, 112},
		{0xb24, 80},
		{0xb28, 16},
		{0xb2c, 0},
		{0xb38, 112},
		{0xb3c, 80},
		{0xb40, 16},
		{0xb44, 0},
		{0xb64, 112},
		{0xb68, 80},
		{0xb6c, 16},
		{0xb70, 0},
		{0xc00, 112},
		{0xc04, 80},
		{0xc08, 16},
		{0xc0c, 0},
		{0xc1c, 112},
		{0xc20, 80},
		{0xc24, 16},
		{0xc28, 0},
		{0xcac, 112},
		{0xcb0, 80},
		{0xcb4, 16},
		{0xcb8, 0},
		{0xd64, 112},
	}
)

var _cfunc_skip_one_fast = []loader.CFunc{
	{"_skip_one_fast_entry", 0, _entry__skip_one_fast, 0, nil},
	{"_skip_one_fast", _entry__skip_one_fast, _size__skip_one_fast, _stack__skip_one_fast, _pcsp__skip_one_fast},
}
