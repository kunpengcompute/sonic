//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_wrapgoc

import (
	"github.com/bytedance/sonic/loader"
)

const (
	_entry__lookup_small_key = 0
)

const (
	_stack__lookup_small_key = 80
)

const (
	_size__lookup_small_key = 864
)

var (
	_pcsp__lookup_small_key = [][2]uint32{
		{0x1, 0},
		{0x4, 16},
		{0x8, 48},
		{0x160, 80},
		{0x164, 48},
		{0x168, 16},
		{0x16c, 0},
		{0x330, 80},
		{0x334, 48},
		{0x338, 16},
		{0x33c, 0},
		{0x348, 80},
		{0x34c, 48},
		{0x350, 16},
		{0x354, 0},
		{0x360, 80},
	}
)

var _cfunc_lookup_small_key = []loader.CFunc{
	{"_lookup_small_key_entry", 0, _entry__lookup_small_key, 0, nil},
	{"_lookup_small_key", _entry__lookup_small_key, _size__lookup_small_key, _stack__lookup_small_key, _pcsp__lookup_small_key},
}
