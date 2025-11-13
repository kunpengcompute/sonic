//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_wrapgoc

import (
	"github.com/bytedance/sonic/loader"
)

const (
	_entry__get_by_path = 0
)

const (
	_stack__get_by_path = 256
)

const (
	_size__get_by_path = 19524
)

var (
	_pcsp__get_by_path = [][2]uint32{
		{0x1, 0},
		{0x24, 144},
		{0x28, 224},
		{0x3fe0, 256},
		{0x3fe4, 224},
		{0x4008, 144},
		{0x400c, 0},
		{0x4c44, 256},
	}
)

var _cfunc_get_by_path = []loader.CFunc{
	{"_get_by_path_entry", 0, _entry__get_by_path, 0, nil},
	{"_get_by_path", _entry__get_by_path, _size__get_by_path, _stack__get_by_path, _pcsp__get_by_path},
}
