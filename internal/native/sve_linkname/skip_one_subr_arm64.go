//go:build !noasm || !appengine
// +build !noasm !appengine

// DO NOT EDIT.

package sve_linkname

//go:nosplit
//go:noescape
//goland:noinspection ALL
func __skip_one_entry__() uintptr

var (
	_subr__skip_one uintptr = __skip_one_entry__() + 176
)

const (
	_stack__skip_one = 96
)

var (
	_ = _subr__skip_one
)

const (
	_ = _stack__skip_one
)
