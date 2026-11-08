package sonic

// End-to-end encode benchmarks for the eface fast path (A) and the
// last-program cache (B), run through the public sonic.Marshal API. These
// spill from map[string]interface{} payloads only: real headroom of the eface
// inline dispatch lives on boxed leaves. Payloads stay in the function scope
// so the JIT program table treats every type identically across runs.
//
// A/B: run with and without SONIC_NO_EFACE_FAST / SONIC_NO_LAST_PROGRAM and
// compare medians (report: -10~-17% on interface payloads, flat on typed and
// JSON controls).

import (
	"encoding/json"
	"testing"
)

func smallStrIntf() map[string]interface{} {
	return map[string]interface{}{
		"id": "123", "ok": true, "pi": 3.14, "n": nil, "s": "hello, world!",
	}
}

func mixedMid() map[string]interface{} {
	m := map[string]interface{}{}
	for i := 0; i < 20; i++ {
		switch i % 4 {
		case 0:
			m[k(i)] = map[string]interface{}{"a": 1.5, "b": "x", "c": false}
		case 1:
			m[k(i)] = []interface{}{1.0, "two", true, nil}
		case 2:
			m[k(i)] = float64(i)
		default:
			m[k(i)] = "value_" + k(i)
		}
	}
	return m
}

func allStr() map[string]interface{} {
	m := map[string]interface{}{}
	for i := 0; i < 50; i++ {
		m[k(i)] = "value_" + k(i)
	}
	return m
}

func typedStr() map[string]string {
	m := map[string]string{}
	for i := 0; i < 50; i++ {
		m[k(i)] = "value_" + k(i)
	}
	return m
}

func typedNum() map[string]float64 {
	m := map[string]float64{}
	for i := 0; i < 50; i++ {
		m[k(i)] = float64(i)
	}
	return m
}

func k(i int) string { return "field_number_" + string(rune('a'+i%26)) + string(rune('0'+i/26)) }

func arrNested() []interface{} {
	s := make([]interface{}, 0, 100)
	for i := 0; i < 100; i++ {
		s = append(s, map[string]interface{}{"a": 1.5, "b": "x", "c": false})
	}
	return s
}

type smallBoxed struct {
	Name string
	Any  interface{}
	Num  float64
	Ok   bool
}

func arrTyped() []smallBoxed {
	s := make([]smallBoxed, 0, 100)
	for i := 0; i < 100; i++ {
		s = append(s, smallBoxed{Name: "n", Any: "v", Num: 1.5, Ok: true})
	}
	return s
}

func mapStrings() map[string]interface{} {
	m := map[string]interface{}{}
	for i := 0; i < 200; i++ {
		m["field_"+itoa(i)] = "value_" + itoa(i)
	}
	return m
}

func itoa(i int) string {
	if i == 0 {
		return "0"
	}
	var b [8]byte
	p := len(b)
	for i > 0 {
		p--
		b[p] = byte('0' + i%10)
		i /= 10
	}
	return string(b[p:])
}

func benchMarshal(b *testing.B, v interface{}) {
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		if _, err := Marshal(v); err != nil {
			b.Fatal(err)
		}
	}
}

func benchJSON(b *testing.B, v interface{}) {
	b.ReportAllocs()
	for i := 0; i < b.N; i++ {
		if _, err := json.Marshal(v); err != nil {
			b.Fatal(err)
		}
	}
}

/* interface payloads (real headroom of the eface fast path) */
func BenchmarkSonicSmallStrIntf(b *testing.B) { benchMarshal(b, smallStrIntf()) }
func BenchmarkSonicMidStrIntf(b *testing.B)   { benchMarshal(b, mixedMid()) }
func BenchmarkSonicAllStrIntf(b *testing.B)   { benchMarshal(b, allStr()) }
func BenchmarkSonicMapStrings(b *testing.B)   { benchMarshal(b, mapStrings()) }
func BenchmarkSonicArrNested(b *testing.B)    { benchMarshal(b, arrNested()) }

/* interface-typed-struct elements (many FindOrCompile hits per payload) */
func BenchmarkSonicArrTyped(b *testing.B) { benchMarshal(b, arrTyped()) }

/* typed controls: must stay flat across A/B */
func BenchmarkSonicTypedStr(b *testing.B) { benchMarshal(b, typedStr()) }
func BenchmarkSonicTypedNum(b *testing.B) { benchMarshal(b, typedNum()) }

/* stdlib json, same payloads, for reference */
func BenchmarkJSONSmallStrIntf(b *testing.B) { benchJSON(b, smallStrIntf()) }
func BenchmarkJSONMidStrIntf(b *testing.B)   { benchJSON(b, mixedMid()) }
func BenchmarkJSONAllStrIntf(b *testing.B)   { benchJSON(b, allStr()) }
func BenchmarkJSONMapStrings(b *testing.B)   { benchJSON(b, mapStrings()) }
func BenchmarkJSONArrNested(b *testing.B)    { benchJSON(b, arrNested()) }
func BenchmarkJSONArrTyped(b *testing.B)     { benchJSON(b, arrTyped()) }
func BenchmarkJSONTypedStr(b *testing.B)     { benchJSON(b, typedStr()) }
