package optdec

import (
	"sync"
	"testing"
)

// wideStruct exercises the flattened fieldSlot offset arithmetic across
// int64/string/bool/float64 fields with mixed alignment.
type wideStruct struct {
	ID          int64   `json:"ID"`
	Name        string  `json:"Name"`
	Flag        bool    `json:"Flag"`
	Ratio       float64 `json:"Ratio"`
	UserID      int64   `json:"UserID"`
	Title       string  `json:"Title"`
	Description string  `json:"Description"`
	Status      int     `json:"Status"`
	Priority    int     `json:"Priority"`
	IsPinned    bool    `json:"IsPinned"`
	IsArchived  bool    `json:"IsArchived"`
}

var widePayload = `{"ID":42,"Name":"x","Flag":true,"Ratio":1.5,"UserID":7,` +
	`"Title":"t","Description":"d","Status":1,"Priority":2,` +
	`"IsPinned":true,"IsArchived":false}`

// TestFieldSlotDecodeRoundtrip validates every precomputed slot offset/decoder
// by decoding a full object and checking each field value.
func TestFieldSlotDecodeRoundtrip(t *testing.T) {
	var v wideStruct
	if err := Decode(&widePayload, new(int), 0, &v); err != nil {
		t.Fatal(err)
	}
	if v.ID != 42 || v.Name != "x" || !v.Flag || v.Ratio != 1.5 || v.UserID != 7 ||
		v.Title != "t" || v.Description != "d" || v.Status != 1 || v.Priority != 2 ||
		!v.IsPinned || v.IsArchived {
		t.Fatalf("slot decode mismatch: %+v", v)
	}
}

// TestFieldSlotConcurrentFirstUse decodes a type for the first time from many
// goroutines at once. The compiled structDecoder is cached in the global
// programCache and shared by all goroutines, so the very first FromDom calls
// run concurrently; this must stay race-free under -race.
func TestFieldSlotConcurrentFirstUse(t *testing.T) {
	payload := `{"ID":1,"Name":"a","Flag":true,"Ratio":0.5,"UserID":2,` +
		`"Title":"x","Description":"y","Status":1,"Priority":1,` +
		`"IsPinned":false,"IsArchived":true}`
	for k := 0; k < 16; k++ {
		var wg sync.WaitGroup
		for i := 0; i < 8; i++ {
			wg.Add(1)
			go func() {
				defer wg.Done()
				var v wideStruct
				if err := Decode(&payload, new(int), 0, &v); err != nil {
					t.Error(err)
					return
				}
				if v.ID != 1 || v.Name != "a" || !v.IsArchived {
					t.Errorf("concurrent slot decode mismatch: %+v", v)
				}
			}()
		}
		wg.Wait()
	}
}
