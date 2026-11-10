package encoder

import (
	"encoding/json"
	"testing"
	"unsafe"
)

// Stress the eface fast path with the realistic Twitter payload, which boxes a
// mix of strings, bools, numbers and nested containers into interface{}.
func TestEfaceFastStress(t *testing.T) {
	var v interface{}
	if err := json.Unmarshal([]byte(TwitterJson), &v); err != nil {
		t.Fatal(err)
	}
	for i := 0; i < 3000; i++ {
		_, err := Encode(v, 0)
		if err != nil {
			t.Fatalf("plain encode failed at %d: %v", i, err)
		}
		_, err = Encode(v, SortMapKeys|EscapeHTML)
		if err != nil {
			t.Fatalf("escape encode failed at %d: %v", i, err)
		}
	}
}

// Exercise every fast-path kind plus the fallback types in one payload.
func TestEfaceFastKinds(t *testing.T) {
	v := map[string]interface{}{
		"s1":   "hello, 世界",
		"s2":   "",
		"b":    true,
		"bf":   false,
		"i":    42,
		"i64":  int64(-91234567890123),
		"u":    uint(7),
		"u64":  uint64(18446744073709551615),
		"f":    3.141592653589793,
		"f32":  float32(1.5),
		"nil":  nil,
		"i8":   int8(-8),
		"u16":  uint16(65535),
		"nst":  map[string]interface{}{"a": "b", "n": float64(1)},
		"arr":  []interface{}{"x", float64(2), true},
		"jnum": jsonNumber("1.25"),
	}
	for i := 0; i < 500; i++ {
		b, err := Encode(v, SortMapKeys|EscapeHTML)
		if err != nil {
			t.Fatalf("encode failed at %d: %v", i, err)
		}
		var back interface{}
		if err := json.Unmarshal(b, &back); err != nil {
			t.Fatalf("output not valid json at %d: %v\n%s", i, err, b)
		}
	}
}

type jsonNumber string

func (j jsonNumber) MarshalJSON() ([]byte, error) {
	return []byte(`"` + string(j) + `"`), nil
}

// The inline assembly assumes boxed leaves are stored as [type word][data
// word] with data being a POINTER to the value (staticuint64s / heap / string
// header), never the value stored inline. This holds on Go 1.26; if a future
// runtime changes the boxed layout this test fails, flagging that the fast
// chain would misread the data word (the code itself keeps working, since the
// layout check is not part of the runtime path).
func TestEfaceBoxedLayout(t *testing.T) {
	check := func(boxed interface{}, inline uintptr, header *stringHeader) bool {
		e := (*efaceBox)(unsafe.Pointer(&boxed))
		if uintptr(e.data) == inline {
			return false // value stored inline, not a pointer
		}
		if header != nil {
			return (*stringHeader)(e.data) != nil && (*stringHeader)(e.data).len == header.len
		}
		return e.data != nil
	}
	if !check(boxInt(42), 42, nil) {
		t.Fatal("int is boxed inline; inline assembly would misread the data word")
	}
	if !check(boxString("x"), 0, &stringHeader{len: 1}) {
		t.Fatal("string is not boxed behind a header pointer")
	}
}

type efaceBox struct {
	typ, data unsafe.Pointer
}

type stringHeader struct {
	data unsafe.Pointer
	len  int
}

//go:noinline
func boxInt(i int) interface{} { return i }

//go:noinline
func boxString(s string) interface{} { return s }
