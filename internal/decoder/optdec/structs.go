package optdec

import (
	"reflect"
	"unsafe"

	"github.com/bytedance/sonic/internal/decoder/consts"
	caching "github.com/bytedance/sonic/internal/optcaching"
	"github.com/bytedance/sonic/internal/resolver"
)

type fieldEntry struct {
	resolver.FieldMeta
	fieldDec decFunc
	offset   uintptr
}

// fieldSlot is the hot-loop view of a struct field: only the members touched
// by FromDom, kept contiguous to skip the FieldMeta indirections
// (fields[idx].Path[0].Size goes through two slice headers on every access,
// and FieldMeta is embedded at a non-zero offset inside fieldEntry).
type fieldSlot struct {
	dec    decFunc
	offset uintptr // Path[0].Size, precomputed
}

type structDecoder struct {
	fieldMap   *caching.FieldCache
	fields     []fieldEntry
	slots      []fieldSlot // flattened per-field hot data
	structName string
	typ        reflect.Type
}

func makeSlots(fields []fieldEntry) []fieldSlot {
	s := make([]fieldSlot, len(fields))
	for i := range fields {
		s[i].dec = fields[i].fieldDec
		s[i].offset = fields[i].Path[0].Size
	}
	return s
}

func (d *structDecoder) FromDom(vp unsafe.Pointer, node Node, ctx *context) error {
	if node.IsNull() {
		return nil
	}

	var gerr error
	obj, ok := node.AsObj()
	if !ok {
		return error_mismatch(node, ctx, d.typ)
	}

	slots := d.slots

	next := obj.Children()
	size := obj.Len()
	caseSensitive := ctx.Options()&uint64(consts.OptionCaseSensitive) != 0
	for i, n := 0, size; i < n; i++ {
		key, _ := NewNode(next).AsStrRef(ctx)
		val := NewNode(PtrOffset(next, 1))
		next = val.Next()

		// find field idx
		idx := d.fieldMap.Get(key, caseSensitive)
		if idx == -1 {
			if Options(ctx.Options())&OptionDisableUnknown != 0 {
				return error_field(key)
			}
			continue
		}

		slot := &slots[idx]
		elem := unsafe.Pointer(uintptr(vp) + slot.offset)
		err := slot.dec.FromDom(elem, val, ctx)

		// deal with mismatch type errors
		if gerr == nil && err != nil {
			// TODO: better error info
			gerr = err
		}
	}
	return gerr
}
