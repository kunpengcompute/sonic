//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_wrapgoc

import (
	"github.com/bytedance/sonic/loader"
)

const (
	_entry__f64toa = 0
)

const (
	_stack__f64toa = 0
)

const (
	_size__f64toa = 14248
)

var (
	_pcsp__f64toa = [][2]uint32{
		{0x1, 0},
		{0x37a8, 0},
	}
)

var _cfunc_f64toa = []loader.CFunc{
	{"_f64toa_entry", 0, _entry__f64toa, 0, nil},
	{"_f64toa", _entry__f64toa, _size__f64toa, _stack__f64toa, _pcsp__f64toa},
}
