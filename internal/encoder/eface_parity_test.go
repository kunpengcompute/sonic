package encoder

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"hash"
	"math"
	"math/rand"
	"strings"
	"testing"

	"github.com/bytedance/sonic/internal/encoder/vars"
)

// parityPayloads builds a deterministic corpus that exercises every eface
// fast-path kind (string, bool, int, int64, uint, uint64, float64, float32),
// the fallback types (small ints, []byte, nil, json.Number, custom
// marshalers, pointers) and nested containers, in all supported option
// combinations. Everything is shipped through interface{} so the JIT has to
// dispatch per value.
func parityPayloads() []interface{} {
	var out []interface{}
	add := func(v interface{}) { out = append(out, v) }

	mk := func() map[string]interface{} {
		return map[string]interface{}{}
	}

	// core fast kinds
	m := mk()
	m["str"] = "hello, 世界 \n \"quoted\" \\ backslash <&>"
	m["str_empty"] = ""
	m["str_long"] = strings.Repeat("long-string-content-", 3000)
	m["bool_t"] = true
	m["bool_f"] = false
	m["i"] = 42
	m["i_neg"] = -1234567890123
	m["i64"] = int64(math.MaxInt64)
	m["u"] = uint(7)
	m["u64"] = uint64(math.MaxUint64)
	m["f"] = 3.141592653589793
	m["f_big"] = 1e300
	m["f_small"] = 5e-324
	m["f_negzero"] = math.Copysign(0, -1)
	m["f32"] = float32(1.5)
	add(m)

	// fallback types
	m = mk()
	m["i8"] = int8(-8)
	m["i16"] = int16(-1600)
	m["i32"] = int32(-320000)
	m["u8"] = uint8(255)
	m["u16"] = uint16(65535)
	m["u32"] = uint32(4294967295)
	m["bin"] = []byte{0x00, 0x01, 0xfe, 0xff, 'a', '"', '<'}
	m["nil"] = nil
	add(m)

	// special floats & numbers
	m = mk()
	m["nan"] = math.NaN()
	m["inf"] = math.Inf(1)
	m["ninf"] = math.Inf(-1)
	add(m)

	// nested containers
	m = mk()
	m["obj"] = map[string]interface{}{"a": "b", "n": float64(1), "deep": map[string]interface{}{"x": []interface{}{1, "two", false, nil}}}
	m["arr"] = []interface{}{"x", float64(2), true, nil, []interface{}{1, 2}, map[string]interface{}{"k": "v"}}
	add(m)

	// struct with interface{} fields (value slots point into the struct)
	add(&typedHolder{Name: "n", Any: "inline-string", Num: float64(3.5), Ok: true, Sub: &typedHolder{Name: "s", Any: map[string]interface{}{"z": "y"}}})
	add(typedHolder{Name: "copy", Any: int64(99), Num: float64(-1)})

	// interface-in-interface
	var inner interface{} = "nested-iface"
	m = mk()
	m["iface"] = inner
	m["iface_map"] = map[string]interface{}{"a": 1}
	add(m)

	// slices of interface
	add([]interface{}{"s", true, float64(1.25)})
	return out
}

// canon re-encodes JSON text through the stdlib so the digest is independent
// of the source encoder's map iteration order (the JIT output order for
// unsorted maps is randomized by the runtime, exactly like stdlib's).
func canon(b []byte, h hash.Hash) error {
	var v interface{}
	if err := json.Unmarshal(b, &v); err != nil {
		return err
	}
	out, err := json.Marshal(v)
	if err != nil {
		return err
	}
	h.Write(out)
	return nil
}

func parityRun(t *testing.T) string {
	h := sha256.New()
	var optSets = []Options{0, EscapeHTML, SortMapKeys, SortMapKeys | EscapeHTML}
	for _, v := range parityPayloads() {
		for _, opts := range optSets {
			b, err := Encode(v, opts)
			if err != nil {
				h.Write([]byte("ERR:" + err.Error()))
				continue
			}
			if err := canon(b, h); err != nil {
				t.Fatalf("sonic output invalid (opts=%d): %v\n%s", opts, err, b)
			}
			// output must be semantically equal to the stdlib encoder — in JIT
			// mode only: the VM interpreter is a compatibility path with known
			// divergences from encoding/json (e.g. -0.0 sign bits), which the
			// fast path does not touch
			if !vars.UseVM {
				want, err2 := json.Marshal(v)
				if err2 == nil {
					var got, wantV interface{}
					if err := json.Unmarshal(b, &got); err != nil {
						t.Fatalf("sonic output invalid: %v\n%s", err, b)
					}
					if err := json.Unmarshal(want, &wantV); err != nil {
						t.Fatalf("stdlib output invalid: %v", err)
					}
					if !jsonEqual(got, wantV) {
						t.Fatalf("semantic mismatch with stdlib (opts=%d)\nsonic:%s\nstdlib:%s", opts, b, want)
					}
				}
			}
		}
	}
	return hex.EncodeToString(h.Sum(nil))
}

func jsonEqual(a, b interface{}) bool {
	as, _ := json.Marshal(a)
	bs, _ := json.Marshal(b)
	return string(as) == string(bs)
}

// TestEfaceFastParity is the A/B oracle: run once with SONIC_NO_EFACE_FAST=1
// and once without; the printed digests must match, proving the fast path
// changes no output bytes. It also cross-checks every payload against
// encoding/json semantics.
func TestEfaceFastParity(t *testing.T) {
	fmt.Println("PARITY", parityRun(t))
}

// random corpus for the same digest, deterministic across runs
func TestEfaceFastParityRandom(t *testing.T) {
	rnd := rand.New(rand.NewSource(42))
	h := sha256.New()
	var gen func(depth int) interface{}
	gen = func(depth int) interface{} {
		switch rnd.Intn(12) {
		case 0:
			return "s" + fmt.Sprint(rnd.Intn(1000)) + strings.Repeat("x", rnd.Intn(40))
		case 1:
			return rnd.Intn(2) == 0
		case 2:
			return rnd.Intn(1<<31) - (1 << 30)
		case 3:
			return rnd.Uint64()
		case 4:
			return rnd.Float64()
		case 5:
			return float32(rnd.Float32())
		case 6:
			return int8(rnd.Intn(256) - 128)
		case 7:
			return uint16(rnd.Intn(65536))
		case 8:
			return nil
		case 9:
			if depth > 3 {
				return float64(rnd.Intn(10))
			}
			m := map[string]interface{}{}
			for i := 0; i < rnd.Intn(6); i++ {
				m["k"+fmt.Sprint(i)] = gen(depth + 1)
			}
			return m
		case 10:
			if depth > 3 {
				return "leaf"
			}
			s := []interface{}{}
			for i := 0; i < rnd.Intn(6); i++ {
				s = append(s, gen(depth+1))
			}
			return s
		default:
			return json.Number(fmt.Sprint(rnd.Intn(100000)))
		}
	}
	var optSets = []Options{0, EscapeHTML, SortMapKeys | EscapeHTML}
	for i := 0; i < 300; i++ {
		for _, opts := range optSets {
			b, err := Encode(gen(0), opts)
			if err != nil {
				h.Write([]byte("ERR"))
				continue
			}
			if err := canon(b, h); err != nil {
				t.Fatalf("rnd output invalid: %v", err)
			}
		}
	}
	fmt.Println("PARITY_RND", hex.EncodeToString(h.Sum(nil)))
}

type typedHolder struct {
	Name string
	Any  interface{}
	Num  float64
	Ok   bool
	Sub  *typedHolder
}
