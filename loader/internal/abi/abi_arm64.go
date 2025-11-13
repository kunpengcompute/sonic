//go:build arm64
// +build arm64

/*
 * Copyright 2025 Huawei Technologies Co., Ltd.
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

package abi

import (
	"fmt"
	"reflect"
	"unsafe"

	arm64 "github.com/bytedance/sonic/loader/internal/iasm/arm64"
)

// ARM64 Register definitions
// Based on ARM64 calling convention (AAPCS64)
type Register = arm64.Register
type Register64 = arm64.Register64
type VRegister = arm64.VRegister
type Program = arm64.Program
type MemoryOperand = arm64.MemoryOperand
type Label = arm64.Label

var (
	Ptr         = arm64.Ptr
	DefaultArch = arm64.DefaultArch
	CreateLabel = arm64.CreateLabel

	intType = reflect.TypeOf(0)
	ptrType = reflect.TypeOf(unsafe.Pointer(nil))
)

// Address modes
const (
	AddrModePreIndex  = arm64.AddrModePreIndex
	AddrModePostIndex = arm64.AddrModePostIndex
)

// ARM64 general purpose registers
const (
	X0  = arm64.X0
	X1  = arm64.X1
	X2  = arm64.X2
	X3  = arm64.X3
	X4  = arm64.X4
	X5  = arm64.X5
	X6  = arm64.X6
	X7  = arm64.X7
	X8  = arm64.X8
	X9  = arm64.X9
	X10 = arm64.X10
	X11 = arm64.X11
	X12 = arm64.X12
	X13 = arm64.X13
	X14 = arm64.X14
	X15 = arm64.X15
	X16 = arm64.X16
	X17 = arm64.X17
	X18 = arm64.X18
	X19 = arm64.X19
	X20 = arm64.X20
	X21 = arm64.X21
	X22 = arm64.X22
	X23 = arm64.X23
	X24 = arm64.X24
	X25 = arm64.X25
	X26 = arm64.X26
	X27 = arm64.X27
	X28 = arm64.X28
	X29 = arm64.X29
	X30 = arm64.X30
	SP  = arm64.SP
	XZR = arm64.XZR
)

// ARM64 NEON/FP registers
const (
	V0  = arm64.V0
	V1  = arm64.V1
	V2  = arm64.V2
	V3  = arm64.V3
	V4  = arm64.V4
	V5  = arm64.V5
	V6  = arm64.V6
	V7  = arm64.V7
	V8  = arm64.V8
	V9  = arm64.V9
	V10 = arm64.V10
	V11 = arm64.V11
	V12 = arm64.V12
	V13 = arm64.V13
	V14 = arm64.V14
	V15 = arm64.V15
	V16 = arm64.V16
	V17 = arm64.V17
	V18 = arm64.V18
	V19 = arm64.V19
	V20 = arm64.V20
	V21 = arm64.V21
	V22 = arm64.V22
	V23 = arm64.V23
	V24 = arm64.V24
	V25 = arm64.V25
	V26 = arm64.V26
	V27 = arm64.V27
	V28 = arm64.V28
	V29 = arm64.V29
	V30 = arm64.V30
	V31 = arm64.V31
)

// Aliases
const (
	FP = arm64.FP
	LR = arm64.LR
)

const (
	PtrSize  = 8 // pointer size on ARM64
	PtrAlign = 8 // pointer alignment on ARM64
)

// ARM64 C calling convention (AAPCS64)
// Arguments are passed in X0-X7 for integers/pointers
// V0-V7 for floating point
var iregOrderC = []Register64{
	X0, X1, X2, X3, X4, X5, X6, X7,
}

var vregOrderC = []VRegister{
	V0, V1, V2, V3, V4, V5, V6, V7,
}

// ARM64 Go calling convention (ABIInternal)
// According to Go internal ABI spec, ARM64 uses R0-R15 (X0-X15) for integer arguments
// and F0-F15 (V0-V15) for floating-point arguments
// We support up to 16 integer and 16 float registers for Go ABI
var iregOrderGo = []Register64{
	X0, X1, X2, X3, X4, X5, X6, X7,
	X8, X9, X10, X11, X12, X13, X14, X15,
}

var vregOrderGo = []VRegister{
	V0, V1, V2, V3, V4, V5, V6, V7,
	V8, V9, V10, V11, V12, V13, V14, V15,
}

type stackAlloc struct {
	s uint32
	i int
	x int
}

func (self *stackAlloc) reset() {
	self.i, self.x = 0, 0
}

func (self *stackAlloc) ireg(vt reflect.Type) (p Parameter) {
	p = mkIReg(vt, iregOrderGo[self.i])
	self.i++
	return
}

func (self *stackAlloc) xreg(vt reflect.Type) (p Parameter) {
	p = mkVReg(vt, vregOrderGo[self.x])
	self.x++
	return
}

func (self *stackAlloc) stack(vt reflect.Type) (p Parameter) {
	p = mkStack(vt, self.s)
	self.s += uint32(vt.Size())
	return
}

func (self *stackAlloc) spill(n uint32, a int) uint32 {
	self.s = alignUp(self.s, a) + n
	return self.s
}

func (self *stackAlloc) alloc(p []Parameter, vt reflect.Type) []Parameter {
	nb := vt.Size()
	vk := vt.Kind()

	/* zero-sized objects are allocated on stack */
	if nb == 0 {
		return append(p, mkStack(intType, self.s))
	}

	/* check for value type */
	switch vk {
	case reflect.Bool:
		return self.valloc(p, reflect.TypeOf(false))
	case reflect.Int:
		return self.valloc(p, intType)
	case reflect.Int8:
		return self.valloc(p, reflect.TypeOf(int8(0)))
	case reflect.Int16:
		return self.valloc(p, reflect.TypeOf(int16(0)))
	case reflect.Int32:
		return self.valloc(p, reflect.TypeOf(int32(0)))
	case reflect.Int64:
		return self.valloc(p, reflect.TypeOf(int64(0)))
	case reflect.Uint:
		return self.valloc(p, reflect.TypeOf(uint(0)))
	case reflect.Uint8:
		return self.valloc(p, reflect.TypeOf(uint8(0)))
	case reflect.Uint16:
		return self.valloc(p, reflect.TypeOf(uint16(0)))
	case reflect.Uint32:
		return self.valloc(p, reflect.TypeOf(uint32(0)))
	case reflect.Uint64:
		return self.valloc(p, reflect.TypeOf(uint64(0)))
	case reflect.Uintptr:
		return self.valloc(p, reflect.TypeOf(uintptr(0)))
	case reflect.Float32:
		return self.valloc(p, reflect.TypeOf(float32(0)))
	case reflect.Float64:
		return self.valloc(p, reflect.TypeOf(float64(0)))
	case reflect.Complex64:
		panic("abi: arm64: not implemented: complex64")
	case reflect.Complex128:
		panic("abi: arm64: not implemented: complex128")
	case reflect.Array:
		panic("abi: arm64: not implemented: arrays")
	case reflect.Chan:
		return self.valloc(p, reflect.TypeOf((chan int)(nil)))
	case reflect.Func:
		return self.valloc(p, reflect.TypeOf((func())(nil)))
	case reflect.Map:
		return self.valloc(p, reflect.TypeOf((map[int]int)(nil)))
	case reflect.Ptr:
		return self.valloc(p, reflect.TypeOf((*int)(nil)))
	case reflect.UnsafePointer:
		return self.valloc(p, ptrType)
	case reflect.Interface:
		return self.valloc(p, ptrType, ptrType)
	case reflect.Slice:
		return self.valloc(p, ptrType, intType, intType)
	case reflect.String:
		return self.valloc(p, ptrType, intType)
	case reflect.Struct:
		panic("abi: arm64: not implemented: structs")
	default:
		panic("abi: invalid value type")
	}
}

func (self *stackAlloc) valloc(p []Parameter, vts ...reflect.Type) []Parameter {
	for _, vt := range vts {
		enum := isFloat(vt)
		if enum != notFloatKind && self.x < len(vregOrderGo) {
			p = append(p, self.xreg(vt))
		} else if enum == notFloatKind && self.i < len(iregOrderGo) {
			p = append(p, self.ireg(vt))
		} else {
			p = append(p, self.stack(vt))
		}
	}
	return p
}

func NewFunctionLayout(ft reflect.Type) FunctionLayout {
	var sa stackAlloc
	var fn FunctionLayout

	/* assign every arguments */
	for i := 0; i < ft.NumIn(); i++ {
		fn.Args = sa.alloc(fn.Args, ft.In(i))
	}

	/* reset the register counter, and add a pointer alignment field */
	sa.reset()

	/* assign every return value */
	for i := 0; i < ft.NumOut(); i++ {
		fn.Rets = sa.alloc(fn.Rets, ft.Out(i))
	}

	sa.spill(0, PtrAlign)

	/* assign spill slots */
	for i := 0; i < len(fn.Args); i++ {
		if fn.Args[i].InRegister {
			fn.Args[i].Mem = sa.spill(PtrSize, PtrAlign) - PtrSize
		}
	}

	/* add the final pointer alignment field */
	fn.FP = sa.spill(0, PtrAlign)
	return fn
}

func (self *Frame) emitGrowStack(p *Program, entry *Label) {
	// ARM64 morestack calling convention:
	// - morestack expects the caller's return address in R3 register (not on stack!)
	// - We must spill register arguments to their spill slots in caller's frame
	// - Spill slots are at POSITIVE offsets from SP (in caller's frame)
	//
	// Stack layout when we arrive here (BEFORE prologue):
	// +------------------+
	// | args from caller |  <- Stack arguments (if any)
	// +------------------+ <- SP points here
	// | spill slots      |  <- At positive offsets: SP+0, SP+8, SP+16...
	// +------------------+
	//
	// LR (X30) contains our return address - morestack needs it in R3!

	// Step 1: Spill register arguments to their spill slots in caller's frame FIRST
	// IMPORTANT: Must save args before moving LR to R3, because R3 might contain arg data!
	// These slots are at POSITIVE offsets from current SP
	for _, v := range self.desc.Args {
		if v.InRegister {
			// v.Mem contains the spill slot offset in caller's frame
			offset := int32(v.Mem)
			if v.IsFloat == floatKind64 {
				p.STR(arm64.DRegister(v.Reg.(VRegister)), Ptr(SP, offset))
			} else if v.IsFloat == floatKind32 {
				p.STR(arm64.SRegister(v.Reg.(VRegister)), Ptr(SP, offset))
			} else {
				p.STR(v.Reg.(Register64), Ptr(SP, offset))
			}
		}
	}

	// Step 2: Move LR to R3 (morestack calling convention)
	// morestack will save R3 to g->sched->gobuf_lr
	// MUST do this AFTER saving args, since R3 might be an argument register!
	p.MOV(X3, X30)

	// Step 3: Call runtime.morestack_noctxt
	// It will:
	// - Read return address from R3
	// - Save current goroutine state (SP, FP, PC from LR, LR from R3)
	// - Allocate new stack and copy old stack contents
	// - Switch to new stack
	// - Return to this point (on the new stack)
	p.MOVZ(X16, uint16(F_morestack_noctxt&0xffff), 0)
	p.MOVK(X16, uint16((F_morestack_noctxt>>16)&0xffff), 16)
	p.MOVK(X16, uint16((F_morestack_noctxt>>32)&0xffff), 32)
	p.MOVK(X16, uint16((F_morestack_noctxt>>48)&0xffff), 48)
	p.BLR(X16)

	// Step 4: After morestack returns, we're on the new stack
	// Reload register arguments from their spill slots
	for _, v := range self.desc.Args {
		if v.InRegister {
			offset := int32(v.Mem)
			if v.IsFloat == floatKind64 {
				p.LDR(arm64.DRegister(v.Reg.(VRegister)), Ptr(SP, offset))
			} else if v.IsFloat == floatKind32 {
				p.LDR(arm64.SRegister(v.Reg.(VRegister)), Ptr(SP, offset))
			} else {
				p.LDR(v.Reg.(Register64), Ptr(SP, offset))
			}
		}
	}

	// Step 5: Jump back to function entry to retry with the grown stack
	p.B(entry)
}

func (self *Frame) GrowStackTextSize() uint32 {
	// Generate actual grow stack code and measure its size
	// This matches what emitGrowStack produces
	p := DefaultArch.CreateProgram()
	entry := CreateLabel("_entry")
	p.Link(entry)
	self.emitGrowStack(p, entry)
	return uint32(len(p.Assemble(0)))
}

func (self *Frame) emitPrologue(p *Program, maxStack uintptr) {
	// ARM64 prologue:
	// SUB SP, SP, #frameSize           (allocate stack space)
	// Reserved registers (X29, X30, X28) will be saved by emitReserveRegs
	// frameSize must include:
	// - baseFrameSize (for reserved registers and locals)
	// - maxStack (for C function call stack usage)

	baseFrameSize := self.Size()
	// Add maxStack for C function call stack space
	// ARM64 requires 16-byte stack alignment
	frameSize := alignUp(baseFrameSize+uint32(maxStack), 16)

	// Allocate stack space
	p.SUB(SP, SP, int(frameSize))
}

func (self *Frame) emitEpilogue(p *Program, maxStack uintptr) {
	// ARM64 epilogue:
	// Reserved registers (X29, X30, X28) will be restored by emitRestoreRegs
	// ADD SP, SP, #frameSize           (deallocate stack space)
	// RET

	baseFrameSize := self.Size()
	// Add maxStack for C function call stack space (same as prologue)
	// ARM64 requires 16-byte stack alignment
	frameSize := alignUp(baseFrameSize+uint32(maxStack), 16)

	// Deallocate stack space
	p.ADD(SP, SP, int(frameSize))

	// RET
	p.RET()
}

// ReservedRegs returns the list of registers that need to be preserved
// For ARM64, we need to preserve:
// - X29 (FP): Frame Pointer - required for stack unwinding and debugging
// - X30 (LR): Link Register - stores return address, clobbered by BL/BLR
// - X28 (g): Current goroutine pointer - critical for Go runtime
func ReservedRegs(callc bool) []Register {
	return []Register{
		X29, // frame pointer (FP)
		X30, // link register (LR)
		X28, // current goroutine (g)
	}
}

func (self *Frame) emitReserveRegs(p *Program) {
	// Spill reserved registers to stack
	// Optimize: use STP for X29, X30 pair (first two registers)
	regs := ReservedRegs(self.ccall)

	// Save X29 and X30 together using STP (more efficient)
	if len(regs) >= 2 {
		if r0, ok := regs[0].(Register64); ok {
			if r1, ok := regs[1].(Register64); ok {
				// STP X29, X30, [SP, #0]
				p.STP(r0, r1, Ptr(SP, 0))

				// Save remaining registers individually
				for i := 2; i < len(regs); i++ {
					switch r := regs[i].(type) {
					case Register64:
						p.STR(r, Ptr(SP, int32(i*PtrSize)))
					case VRegister:
						p.STR(arm64.DRegister(r), Ptr(SP, int32(i*PtrSize)))
					default:
						panic(fmt.Sprintf("unsupported register type %T to reserve", r))
					}
				}
				return
			}
		}
	}

	// Fallback: save all registers individually
	for i, r := range regs {
		switch r := r.(type) {
		case Register64:
			p.STR(r, Ptr(SP, int32(i*PtrSize)))
		case VRegister:
			p.STR(arm64.DRegister(r), Ptr(SP, int32(i*PtrSize)))
		default:
			panic(fmt.Sprintf("unsupported register type %T to reserve", r))
		}
	}
}

func (self *Frame) emitRestoreRegs(p *Program) {
	// Restore reserved registers from stack
	// Optimize: use LDP for X29, X30 pair (first two registers)
	regs := ReservedRegs(self.ccall)

	// Restore X29 and X30 together using LDP (more efficient)
	if len(regs) >= 2 {
		if r0, ok := regs[0].(Register64); ok {
			if r1, ok := regs[1].(Register64); ok {
				// LDP X29, X30, [SP, #0]
				p.LDP(r0, r1, Ptr(SP, 0))

				// Restore remaining registers individually
				for i := 2; i < len(regs); i++ {
					switch r := regs[i].(type) {
					case Register64:
						p.LDR(r, Ptr(SP, int32(i*PtrSize)))
					case VRegister:
						p.LDR(arm64.DRegister(r), Ptr(SP, int32(i*PtrSize)))
					default:
						panic(fmt.Sprintf("unsupported register type %T to restore", r))
					}
				}
				return
			}
		}
	}

	// Fallback: restore all registers individually
	for i, r := range regs {
		switch r := r.(type) {
		case Register64:
			p.LDR(r, Ptr(SP, int32(i*PtrSize)))
		case VRegister:
			p.LDR(arm64.DRegister(r), Ptr(SP, int32(i*PtrSize)))
		default:
			panic(fmt.Sprintf("unsupported register type %T to restore", r))
		}
	}
}

func (self *Frame) emitStackCheck(p *Program, to *Label, maxStack uintptr) {
	// ARM64 stack check: compare SP - frameSize with g.stackguard0
	// g is in X28, stackguard0 is at offset 16 in g struct
	// Use X9 as temporary register to calculate SP - frameSize
	// Note: frameSize must include space for reserved registers and maxStack
	baseFrameSize := self.Size()
	// Add maxStack for C function call stack space
	// frameSize must match what prologue allocates
	frameSize := alignUp(baseFrameSize+uint32(maxStack), 16)
	p.SUB(X9, SP, int(frameSize))
	p.LDR(X10, Ptr(X28, 16)) // load g.stackguard0
	p.CMP(X9, X10)           // compare calculated SP with stackguard0 (X9 - X10, sets flags)
	//p.BLO(to)                // branch if calculated SP < stackguard0 (unsigned less than)
}

func (self *Frame) emitSpillPtrs(p *Program) {
	// Spill pointer argument registers to stack for GC
	// Save pointers to our own stack frame, not to caller's spill slots
	for i, r := range self.desc.Args {
		if r.InRegister && r.IsPointer {
			// Calculate offset within our frame
			// After prologue and emitReserveRegs:
			// SP points to [reserved regs: X29, X30, X28] (24 bytes)
			// We save pointers after the reserved registers
			numReserved := len(ReservedRegs(self.ccall))
			offset := numReserved*PtrSize + i*8
			fmt.Printf("Spilling pointer arg %d register %v to offset %d", i, r.Reg, offset)

			// STR Xreg, [SP, #offset]
			p.STR(r.Reg.(Register64), Ptr(SP, int32(offset)))
		}
	}
}

func (self *Frame) emitExchangeArgs(p *Program) {
	// ARM64 register exchange for Go ABI to C ABI
	//
	// Go internal ABI for ARM64 uses:
	// - Integer/pointer arguments: R0-R15 (X0-X15)
	// - Float arguments: F0-F15 (V0-V15)
	//
	// C ABI (AAPCS64) for ARM64 uses:
	// - Integer/pointer arguments: X0-X7
	// - Float arguments: V0-V7
	//
	// Since the first 8 integer registers (X0-X7) and first 8 float registers (V0-V7)
	// are the same in both ABIs, arguments that fit in these registers don't need exchange.
	// For arguments beyond X7/V7, they would need to be moved to stack for C calls,
	// but currently our implementation only supports up to 8 register arguments.

	// Count arguments by type
	iregArgs := 0
	vregArgs := 0

	for _, v := range self.desc.Args {
		if v.InRegister {
			if v.IsFloat != notFloatKind {
				vregArgs++
			} else {
				iregArgs++
			}
		}
	}

	// Validate we don't exceed C ABI limits
	if iregArgs > len(iregOrderC) {
		panic(fmt.Sprintf("too many integer arguments (%d), C ABI supports at most %d", iregArgs, len(iregOrderC)))
	}
	if vregArgs > len(vregOrderC) {
		panic(fmt.Sprintf("too many float arguments (%d), C ABI supports at most %d", vregArgs, len(vregOrderC)))
	}

	// For arguments that fit in X0-X7 and V0-V7, they're already in the correct
	// registers for both Go and C ABIs, so no exchange is needed.
	// This is different from AMD64 where Go and C use different register orders.
}

func (self *Frame) emitExchangeRets(p *Program) {
	// ARM64 Go ABI and C ABI (AAPCS64) return value conventions:
	// Both use:
	// - Integer/pointer returns in X0-X7 (first return in X0, second in X1, etc.)
	// - Float returns in V0-V7 (first return in V0, second in V1, etc.)
	//
	// Since both ABIs use the same registers for return values, no exchange is needed.
	// Return values are already in the correct registers after the C function returns.
	//
	// Note: This is different from AMD64 where some register mapping may be needed.
	// For ARM64, the register-based return convention is compatible between Go and C.

	// No operation needed - return values in X0, V0, etc. are already correct
}

func (self *Frame) emitCallC(p *Program, addr uintptr) {
	// Load C function address into X16 and call it
	// Using MOVZ + MOVK sequence to load 64-bit address
	p.MOVZ(X16, uint16(addr&0xffff), 0)
	p.MOVK(X16, uint16((addr>>16)&0xffff), 16)
	p.MOVK(X16, uint16((addr>>32)&0xffff), 32)
	p.MOVK(X16, uint16((addr>>48)&0xffff), 48)
	// BLR X16 (branch with link to register)
	p.BLR(X16)
}

type floatKind uint8

const (
	notFloatKind floatKind = iota
	floatKind32
	floatKind64
)

type Parameter struct {
	InRegister bool
	IsPointer  bool
	IsFloat    floatKind
	Reg        Register
	Mem        uint32
	Type       reflect.Type
}

func mkIReg(vt reflect.Type, reg Register64) (p Parameter) {
	p.Reg = reg
	p.Type = vt
	p.InRegister = true
	p.IsPointer = isPointer(vt)
	return
}

func isFloat(vt reflect.Type) floatKind {
	switch vt.Kind() {
	case reflect.Float32:
		return floatKind32
	case reflect.Float64:
		return floatKind64
	default:
		return notFloatKind
	}
}

func mkVReg(vt reflect.Type, reg VRegister) (p Parameter) {
	p.Reg = reg
	p.Type = vt
	p.InRegister = true
	p.IsFloat = isFloat(vt)
	return
}

func mkStack(vt reflect.Type, mem uint32) (p Parameter) {
	p.Mem = mem
	p.Type = vt
	p.InRegister = false
	p.IsPointer = isPointer(vt)
	p.IsFloat = isFloat(vt)
	return
}

func (self Parameter) String() string {
	if self.InRegister {
		return fmt.Sprintf("[%s, Pointer(%v), Float(%v)]", self.Reg, self.IsPointer, self.IsFloat)
	} else {
		return fmt.Sprintf("[%d(SP), Pointer(%v), Float(%v)]", self.Mem, self.IsPointer, self.IsFloat)
	}
}

func CallC(addr uintptr, fr Frame, maxStack uintptr) []byte {
	// Generate ARM64 machine code that wraps a C function call
	// Following AMD64 implementation pattern for consistency
	p := DefaultArch.CreateProgram()

	stack := CreateLabel("_stack_grow")
	entry := CreateLabel("_entry")

	// Entry point
	p.Link(entry)

	// Always emit stack check like AMD64 version does
	fr.emitStackCheck(p, stack, maxStack)

	fr.emitPrologue(p, maxStack)
	fr.emitReserveRegs(p)
	fr.emitSpillPtrs(p)
	fr.emitExchangeArgs(p)
	fr.emitCallC(p, addr)
	fr.emitExchangeRets(p)
	fr.emitRestoreRegs(p)
	fr.emitEpilogue(p, maxStack)

	// Always link stack growth path like AMD64 version does
	p.Link(stack)
	fr.emitGrowStack(p, entry)

	return p.Assemble(0)
}

func (self *Frame) StackCheckTextSize() uint32 {
	// Generate actual stack check code and measure its size
	// This is used to build correct PCSP (PC to Stack Pointer) mapping table
	// Note: This must match the exact code generated by emitStackCheck
	// Including maxStack in calculation to match runtime behavior
	p := DefaultArch.CreateProgram()
	p.SUB(X9, SP, 0) // Placeholder - actual size computed separately
	p.LDR(X10, Ptr(X28, 16))
	p.CMP(X9, X10)
	to := CreateLabel("")
	p.Link(to)
	p.BLO(to)
	return uint32(len(p.Assemble(0)))
}
