//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_wrapgoc

import (
	"github.com/bytedance/sonic/loader"
)

const (
	_entry__u64toa = 0
)

const (
	_stack__u64toa = 0
)

const (
	_size__u64toa = 1808
)

var (
	_pcsp__u64toa = [][2]uint32{
		{0x1, 0},
		{0x710, 0},
	}
)

var _cfunc_u64toa = []loader.CFunc{
	{"_u64toa_entry", 0, _entry__u64toa, 0, nil},
	{"_u64toa", _entry__u64toa, _size__u64toa, _stack__u64toa, _pcsp__u64toa},
}
