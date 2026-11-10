//go:build (amd64 && go1.17 && !go1.27) || (arm64 && go1.20 && !go1.27)
// +build amd64,go1.17,!go1.27 arm64,go1.20,!go1.27

/*
 * Copyright 2022 ByteDance Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package ast

import (
	"github.com/bytedance/sonic/internal/decoder/optdec"
	"github.com/bytedance/sonic/internal/native/types"
	"github.com/bytedance/sonic/internal/utils"
)

// init installs the eager tree parse on native builds; see treehook.go.
func init() {
	eagerTreeParse = func(self *Parser) (Node, types.ParsingError, bool) {
		return self.tryParseEagerTree()
	}
}

// _EagerTreeMinLen excludes tiny documents: below this size the fixed cost of
// the padded copy + pooled parser exceeds the saved per-value native calls
// (measured: 7B/18B docs regress ~+25%, 150B already wins ~-13%).
const _EagerTreeMinLen = 256

// tryParseEagerTree replaces the classic per-value eager walk with a single
// native tree parse (optdec.ParseDomTree) + a flat Go conversion, when the
// parser is at the document start with noLazy and a container root. Any
// failure falls back to the classic path, so errors stay byte-identical.
func (self *Parser) tryParseEagerTree() (Node, types.ParsingError, bool) {
	sp := skipBlank(self.s, 0)
	if self.p != sp || !self.noLazy || self.loadOnce || self.skipValue {
		return Node{}, 0, false
	}
	if len(self.s) < _EagerTreeMinLen {
		return Node{}, 0, false
	}
	c := self.s[sp]
	if c != '{' && c != '[' {
		return Node{}, 0, false
	}

	tree := optdec.ParseDomTree(self.s)
	if tree == nil {
		return Node{}, 0, false
	}
	defer tree.Free()

	w := _treeWalker{p: self, tree: tree, nodes: tree.Nodes()}
	n, _, end, ok := w.walk(0)
	if !ok || end < 0 {
		return Node{}, 0, false
	}
	/* root token ends after its closing bracket, like the classic path */
	self.p = end
	return n, 0, true
}

// _treeWalker converts the prefix-order native node array back into ast Nodes.
// Tree node positions are absolute offsets into the original input.
type _treeWalker struct {
	p     *Parser
	tree  *optdec.DomTree
	nodes []optdec.DomNode
}

// walk builds the ast Node for tree node i: (node, next index, byte offset
// past this token, ok).
func (w *_treeWalker) walk(i int) (Node, int, int, bool) {
	if i < 0 || i >= len(w.nodes) {
		return Node{}, 0, 0, false
	}
	n := w.nodes[i]
	switch t := n.Type(); t {
	case optdec.KObject, optdec.KArray:
		return w.walkContainer(i)
	case optdec.KStringCommon, optdec.KStringEscaped:
		/* common strings zero-copy the input slice; escaped strings copy the
		   unescaped content out of the temp padded buffer (EscStr) */
		s, end, ok := w.strAt(i)
		if !ok {
			return Node{}, 0, 0, false
		}
		return NewString(s), i + 1, end, true
	case optdec.KUint, optdec.KSint, optdec.KReal, optdec.KRawNumber:
		/* the tree keeps the parsed value in val, not the length: rescan the
		   decimal span from its position to feed NewNumber the raw text */
		pos := n.Pos()
		end := utils.SkipNumber(w.p.s, pos)
		if end < 0 {
			return Node{}, 0, 0, false
		}
		return NewNumber(w.p.s[pos:end]), i + 1, end, true
	case optdec.KTrue:
		return trueNode, i + 1, n.Pos() + 4, true
	case optdec.KFalse:
		return falseNode, i + 1, n.Pos() + 5, true
	case optdec.KNull:
		return nullNode, i + 1, n.Pos() + 4, true
	default:
		return Node{}, 0, 0, false
	}
}

// walkContainer rebuilds an object or array from its subtree in prefix order:
// the node's Len is the child count (objects: key+value pairs, arrays: values).
func (w *_treeWalker) walkContainer(i int) (Node, int, int, bool) {
	n := w.nodes[i]
	cnt := int(n.Len())
	pos := n.Pos()

	/* empty containers mirror the classic early-out node (no linked buffer) */
	if cnt == 0 {
		end, ok := w.rawCloseEnd(pos + 1)
		if !ok {
			return Node{}, 0, 0, false
		}
		if n.Type() == optdec.KObject {
			return Node{t: types.V_OBJECT}, i + 1, end, true
		}
		return Node{t: types.V_ARRAY}, i + 1, end, true
	}

	idx := i + 1
	var end int

	if n.Type() == optdec.KObject {
		pairs := new(linkedPairs)
		for k := 0; k < cnt; k++ {
			key, _, ok := w.strAt(idx)
			if !ok {
				return Node{}, 0, 0, false
			}
			idx++

			val, ni2, vEnd, ok := w.walk(idx)
			if !ok {
				return Node{}, 0, 0, false
			}
			idx = ni2
			end = vEnd
			pairs.Push(NewPair(key, val))
		}
		closeEnd, ok := w.rawCloseEnd(end)
		if !ok {
			return Node{}, 0, 0, false
		}
		return newObject(pairs), idx, closeEnd, true
	}

	/* array */
	values := new(linkedNodes)
	for k := 0; k < cnt; k++ {
		val, ni, vEnd, ok := w.walk(idx)
		if !ok {
			return Node{}, 0, 0, false
		}
		idx = ni
		end = vEnd
		values.Push(val)
	}
	closeEnd, ok := w.rawCloseEnd(end)
	if !ok {
		return Node{}, 0, 0, false
	}
	return newArray(values), idx, closeEnd, true
}

// strAt returns the Go string of a string node and the byte offset past its
// closing quote: common strings zero-copy a slice of the original input,
// escaped strings copy the unescaped content out of the temp padded buffer.
func (w *_treeWalker) strAt(i int) (string, int, bool) {
	n := w.nodes[i]
	pos := n.Pos()
	if n.Type() == optdec.KStringEscaped {
		end := escCloseEnd(w.p.s, pos)
		if end < 0 {
			return "", 0, false
		}
		return w.tree.EscStr(i), end, true
	}
	l := int(n.Len())
	if pos < 0 || pos+l > len(w.p.s) {
		return "", 0, false
	}
	return w.p.s[pos : pos+l], pos + l + 1, true
}

// rawCloseEnd skips blanks from pos to the closing bracket of the container
// whose children ended at pos, returning the offset right after it.
func (w *_treeWalker) rawCloseEnd(pos int) (int, bool) {
	s := w.p.s
	for pos < len(s) && utils.IsSpace(s[pos]) {
		pos++
	}
	if pos >= len(s) || (s[pos] != '}' && s[pos] != ']') {
		return -1, false
	}
	return pos + 1, true
}

// escCloseEnd scans the ORIGINAL input from the content start of an escaped
// string to the offset after its closing quote (escape-aware). Only escaped
// strings pay this scan; common strings use the tree length directly.
func escCloseEnd(s string, pos int) int {
	for pos < len(s) {
		c := s[pos]
		if c == '\\' {
			pos += 2
			continue
		}
		if c == '"' {
			return pos + 1
		}
		pos++
	}
	return -1
}
