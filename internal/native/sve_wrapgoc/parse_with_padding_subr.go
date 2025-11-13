//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_wrapgoc

import (
	"github.com/bytedance/sonic/loader"
)

const (
	_entry__parse_with_padding = 64
)

const (
	_stack__parse_with_padding = 160
)

const (
	_size__parse_with_padding = 57460
)

var (
	_pcsp__parse_with_padding = [][2]uint32{
		{0x1, 0},
		{0x58, 96},
		{0x5c, 128},
		{0x15d0, 160},
		{0x15d4, 128},
		{0x15ec, 96},
		{0x15f0, 0},
		{0xe074, 160},
	}
)
var _cfunc_parse_with_padding = []loader.CFunc{
	{"_parse_with_padding_entry", 0, _entry__parse_with_padding, 0, nil},
	{"_parse_with_padding", _entry__parse_with_padding, _size__parse_with_padding, _stack__parse_with_padding, _pcsp__parse_with_padding},
}
