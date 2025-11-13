//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_wrapgoc

import (
	"github.com/bytedance/sonic/loader"
)

const (
	_entry__quote = 0
)

const (
	_stack__quote = 48
)

const (
	_size__quote = 10640
)

var (
	_pcsp__quote = [][2]uint32{
		{0x1, 0},
		{0x4, 16},
		{0x7fc, 48},
		{0x800, 16},
		{0x804, 0},
		{0x818, 48},
		{0x81c, 16},
		{0x820, 0},
		{0x834, 48},
		{0x838, 16},
		{0x83c, 0},
		{0x85c, 48},
		{0x860, 16},
		{0x864, 0},
		{0x2990, 48},
	}
)

var _cfunc_quote = []loader.CFunc{
	{"_quote_entry", 0, _entry__quote, 0, nil},
	{"_quote", _entry__quote, _size__quote, _stack__quote, _pcsp__quote},
}
