//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_wrapgoc

import (
	"github.com/bytedance/sonic/loader"
)

const (
	_entry__i64toa = 0
)

const (
	_stack__i64toa = 0
)

const (
	_size__i64toa = 3152 // TODO: fill in the actual size
)

var (
	_pcsp__i64toa = [][2]uint32{
		{0x1, 0},
		{0xc50, 0},
	}
)

var _cfunc_i64toa = []loader.CFunc{
	{"_i64toa_entry", 0, _entry__i64toa, 0, nil},
	{"_i64toa", _entry__i64toa, _size__i64toa, _stack__i64toa, _pcsp__i64toa},
}
