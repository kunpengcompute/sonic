package optdec

import "unsafe"

// DomNode is the exported read-only view of a 16-byte native parse-tree node
// (typ: [type 8b | position 32b], val: [len/count 32b | next 32b]). It shares
// the exact layout of the private node struct, so Nodes() reinterprets the
// parser buffer with no copy. Consumed by the ast package.
type DomNode struct {
	typ uint64
	val uint64
}

func (n DomNode) Type() uint8 { return uint8(n.typ & TypeMask) }
func (n DomNode) Pos() int    { return int(n.typ >> PosBits) }

// Len returns the content byte length (string/number), or the child count
// (object/array). See native/parser.c.
func (n DomNode) Len() uint32 { return uint32(n.val & ConLenMask) }

// DomTree is the native parse tree of one JSON document. It borrows an optdec
// Parser from the shared pool; callers must call Free.
type DomTree struct {
	p *Parser
}

// ParseDomTree parses data into the native node tree. Parsing stops at the end
// of the first complete value (like ast.Parser.Parse), so trailing content is
// ignored; node positions are absolute byte offsets into data. It returns nil
// when data is not a valid JSON value.
func ParseDomTree(data string) *DomTree {
	p := newParser(data, 0, 0)
	if err := p.parse(); err != 0 {
		p.free()
		return nil
	}
	return &DomTree{p: p}
}

func (t *DomTree) Free() {
	t.p.free()
	t.p = nil
}

// Nodes exposes the raw node buffer (prefix order; only the span covered by
// the root container is meaningful, the tail is zero padding). The result
// aliases the parser buffer and must not be used after Free.
func (t *DomTree) Nodes() []DomNode {
	return *(*[]DomNode)(unsafe.Pointer(&t.p.nodes))
}

// EscStr returns the unescaped content of a string node from the padded
// buffer, where the native parser compacts escaped strings in place. The
// returned string is a fresh copy valid after Free. Common strings should be
// sliced from the original input instead (zero copy).
func (t *DomTree) EscStr(i int) string {
	n := t.p.nodes[i]
	pos := int(n.typ >> PosBits)
	l := int(n.val & ConLenMask)
	if pos < 0 || l < 0 || pos+l > len(t.p.padded) {
		return ""
	}
	return string(t.p.padded[pos : pos+l])
}
