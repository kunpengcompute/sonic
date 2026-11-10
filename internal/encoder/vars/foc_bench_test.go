package vars

import (
	"reflect"
	"testing"

	"github.com/bytedance/sonic/internal/rt"
)

func focBench(b *testing.B) {
	vt := rtOf(reflect.TypeOf(""))
	for i := 0; i < b.N; i++ {
		if _, err := FindOrCompile(vt, false, compileStub); err != nil {
			b.Fatal(err)
		}
	}
}

func BenchmarkFindOrCompileHot(b *testing.B) { focBench(b) }
func BenchmarkFindOrCompileCold(b *testing.B) {
	// rotate among vts so the single slot never hits
	types := []*rt.GoType{rtOf(reflect.TypeOf("")), rtOf(reflect.TypeOf(int64(0))), rtOf(reflect.TypeOf(float64(0)))}
	for i := 0; i < b.N; i++ {
		if _, err := FindOrCompile(types[i%3], false, compileStub); err != nil {
			b.Fatal(err)
		}
	}
}

func rtOf(t reflect.Type) *rt.GoType { return rt.UnpackType(t) }

func compileStub(t *rt.GoType, ex ...interface{}) (interface{}, error) { return &t, nil }
