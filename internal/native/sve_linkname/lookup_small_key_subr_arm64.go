//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_linkname

//go:nosplit
//go:noescape
//goland:noinspection ALL
func __lookup_small_key_entry__() uintptr

var (
	_subr__lookup_small_key uintptr = __lookup_small_key_entry__()
)

const (
	_stack__lookup_small_key = 32
)

var (
	_ = _subr__lookup_small_key
)

const (
	_ = _stack__lookup_small_key
)
