//+build !noasm !appengine
// DO NOT EDIT

#include "go_asm.h"
#include "funcdata.h"
#include "textflag.h"

TEXT ·__lookup_small_key_entry__(SB), NOSPLIT, $16
	NO_LOCAL_POINTERS
	WORD $0x100000a0 // adr x0, .+20
	MOVD R0, ret(FP)
	RET
	  // .p2align 4, 0x00

lookup_small_key:
    WORD $0xf81f0ffd // str    fp, [sp, #-16]!
    WORD $0xd10083ff // sub    sp, sp, #32
    WORD $0x043f57ff // addvl    sp, sp, #-1
    WORD $0xa940280d // ldp    x13, x10, [x0]
    WORD $0x6f00e400 // movi    v0.2d, #0000000000000000
    WORD $0xf940002b // ldr    x11, [x1]
    WORD $0x12001d49 // and    w9, w10, #0xff
    WORD $0x8b294928 // add    x8, x9, w9, uxtw #2
    WORD $0xad0003e0 // stp    q0, q0, [sp]
    WORD $0x8b08016c // add    x12, x11, x8
    WORD $0x39400188 // ldrb    w8, [x12]
    WORD $0xb840118c // ldur    w12, [x12, #1]
    CMP $0, R8
    BEQ LBB0_46
    WORD $0x1102958e // add    w14, w12, #165
    WORD $0x7100253f // cmp    w9, #9
    WORD $0x92401d4f // and    x15, x10, #0xff
    WORD $0x8b0e016e // add    x14, x11, x14
    BHS LBB0_20
    WORD $0x394001b0 // ldrb    w16, [x13]
    WORD $0x11000531 // add    w17, w9, #1
    WORD $0x528000f2 // mov    w18, #7
    WORD $0x2a0803e0 // mov    w0, w8
    B LBB0_5
LBB0_3:
    WORD $0x2a1f03e1 // mov    w1, wzr
    WORD $0x6b0f03ff // cmp    wzr, w15
    BHS LBB0_19
LBB0_4:
    WORD $0x71000400 // subs    w0, w0, #1
    WORD $0x8b1101ce // add    x14, x14, x17
    BEQ LBB0_23
LBB0_5:
    WORD $0x394001c1 // ldrb    w1, [x14]
    WORD $0x6b10003f // cmp    w1, w16
    BNE LBB0_3
    WORD $0x394005c1 // ldrb    w1, [x14, #1]
    WORD $0x394005a3 // ldrb    w3, [x13, #1]
    WORD $0x6b03003f // cmp    w1, w3
    BNE LBB0_13
    WORD $0x394009c1 // ldrb    w1, [x14, #2]
    WORD $0x394009a3 // ldrb    w3, [x13, #2]
    WORD $0x6b03003f // cmp    w1, w3
    BNE LBB0_14
    WORD $0x39400dc1 // ldrb    w1, [x14, #3]
    WORD $0x39400da3 // ldrb    w3, [x13, #3]
    WORD $0x6b03003f // cmp    w1, w3
    BNE LBB0_15
    WORD $0x394011c1 // ldrb    w1, [x14, #4]
    WORD $0x394011a3 // ldrb    w3, [x13, #4]
    WORD $0x6b03003f // cmp    w1, w3
    BNE LBB0_16
    WORD $0x394015c1 // ldrb    w1, [x14, #5]
    WORD $0x394015a3 // ldrb    w3, [x13, #5]
    WORD $0x6b03003f // cmp    w1, w3
    BNE LBB0_17
    WORD $0x394019c1 // ldrb    w1, [x14, #6]
    WORD $0x394019a3 // ldrb    w3, [x13, #6]
    WORD $0x6b03003f // cmp    w1, w3
    BNE LBB0_18
    WORD $0x39401dc1 // ldrb    w1, [x14, #7]
    WORD $0x39401da3 // ldrb    w3, [x13, #7]
    WORD $0x6b03003f // cmp    w1, w3
    WORD $0x1a921641 // cinc    w1, w18, eq
    WORD $0x6b0f003f // cmp    w1, w15
    BLO LBB0_4
    B LBB0_19
LBB0_13:
    WORD $0x52800021 // mov    w1, #1
    WORD $0x6b0f003f // cmp    w1, w15
    BLO LBB0_4
    B LBB0_19
LBB0_14:
    WORD $0x52800041 // mov    w1, #2
    WORD $0x6b0f003f // cmp    w1, w15
    BLO LBB0_4
    B LBB0_19
LBB0_15:
    WORD $0x52800061 // mov    w1, #3
    WORD $0x6b0f003f // cmp    w1, w15
    BLO LBB0_4
    B LBB0_19
LBB0_16:
    WORD $0x52800081 // mov    w1, #4
    WORD $0x6b0f003f // cmp    w1, w15
    BLO LBB0_4
    B LBB0_19
LBB0_17:
    WORD $0x528000a1 // mov    w1, #5
    WORD $0x6b0f003f // cmp    w1, w15
    BLO LBB0_4
    B LBB0_19
LBB0_18:
    WORD $0x528000c1 // mov    w1, #6
    WORD $0x6b0f003f // cmp    w1, w15
    BLO LBB0_4
LBB0_19:
    WORD $0x8b0f01c8 // add    x8, x14, x15
    WORD $0x39400100 // ldrb    w0, [x8]
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910083ff // add    sp, sp, #32
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_20:
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x92800010 // mov    x16, #-1
    WORD $0x2538d001 // mov    z1.b, #-128
    WORD $0x9acf2210 // lsl    x16, x16, x15
    WORD $0x11000531 // add    w17, w9, #1
    WORD $0x2a0803f2 // mov    w18, w8
    WORD $0xa400a1a0 // ld1b    { z0.b }, p0/z, [x13]
LBB0_21:
    WORD $0xa400a1c2 // ld1b    { z2.b }, p0/z, [x14]
    WORD $0x910083fd // add    fp, sp, #32
    WORD $0x2400a041 // cmpeq    p1.b, p0/z, z2.b, z0.b
    WORD $0x05111fe2 // mov    z2.b, p1/z, #-1
    WORD $0x24010041 // cmphs    p1.b, p0/z, z2.b, z1.b
    WORD $0xe5801ba1 // str    p1, [fp, #6, mul vl]
    WORD $0x047f50dd // addpl    fp, sp, #6
    WORD $0xb94023a0 // ldr    w0, [fp, #32]
    WORD $0x2a100000 // orr    w0, w0, w16
    WORD $0x3100041f // cmn    w0, #1
    BEQ LBB0_19
    WORD $0x71000652 // subs    w18, w18, #1
    WORD $0x8b1101ce // add    x14, x14, x17
    BNE LBB0_21
LBB0_23:
    WORD $0xb100045f // cmn    x2, #1
    BEQ LBB0_46
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x2538c801 // mov    z1.b, #64
    WORD $0x2538cb62 // mov    z2.b, #91
    WORD $0x8b0c016b // add    x11, x11, x12
    WORD $0x910003ec // mov    x12, sp
    WORD $0x92401d4a // and    x10, x10, #0xff
    WORD $0x8b02016b // add    x11, x11, x2
    WORD $0xa400a1a0 // ld1b    { z0.b }, p0/z, [x13]
    WORD $0x24018011 // cmpgt    p1.b, p0/z, z0.b, z1.b
    WORD $0x24008052 // cmpgt    p2.b, p0/z, z2.b, z0.b
    WORD $0x2538c401 // mov    z1.b, #32
    WORD $0x7100253f // cmp    w9, #9
    WORD $0x25024021 // and    p1.b, p0/z, p1.b, p2.b
    WORD $0x04000420 // add    z0.b, p1/m, z0.b, z1.b
    WORD $0xe400e180 // st1b    { z0.b }, p0, [x12]
    BHS LBB0_43
    WORD $0x394003ec // ldrb    w12, [sp]
    WORD $0x394007ed // ldrb    w13, [sp, #1]
    WORD $0x11000529 // add    w9, w9, #1
    WORD $0x39400bee // ldrb    w14, [sp, #2]
    WORD $0x39400fef // ldrb    w15, [sp, #3]
    WORD $0x528000e1 // mov    w1, #7
    WORD $0x394013f0 // ldrb    w16, [sp, #4]
    WORD $0x394017f1 // ldrb    w17, [sp, #5]
    WORD $0x39401bf2 // ldrb    w18, [sp, #6]
    WORD $0x39401fe0 // ldrb    w0, [sp, #7]
LBB0_26:
    WORD $0x39400162 // ldrb    w2, [x11]
    WORD $0x6b0c005f // cmp    w2, w12
    BNE LBB0_34
    WORD $0x39400562 // ldrb    w2, [x11, #1]
    WORD $0x6b0d005f // cmp    w2, w13
    BNE LBB0_35
    WORD $0x39400962 // ldrb    w2, [x11, #2]
    WORD $0x6b0e005f // cmp    w2, w14
    BNE LBB0_36
    WORD $0x39400d62 // ldrb    w2, [x11, #3]
    WORD $0x6b0f005f // cmp    w2, w15
    BNE LBB0_37
    WORD $0x39401162 // ldrb    w2, [x11, #4]
    WORD $0x6b10005f // cmp    w2, w16
    BNE LBB0_38
    WORD $0x39401562 // ldrb    w2, [x11, #5]
    WORD $0x6b11005f // cmp    w2, w17
    BNE LBB0_39
    WORD $0x39401962 // ldrb    w2, [x11, #6]
    WORD $0x6b12005f // cmp    w2, w18
    BNE LBB0_40
    WORD $0x39401d62 // ldrb    w2, [x11, #7]
    WORD $0x6b00005f // cmp    w2, w0
    WORD $0x1a811422 // cinc    w2, w1, eq
    B LBB0_41
LBB0_34:
    WORD $0x2a1f03e2 // mov    w2, wzr
    B LBB0_41
LBB0_35:
    WORD $0x52800022 // mov    w2, #1
    B LBB0_41
LBB0_36:
    WORD $0x52800042 // mov    w2, #2
    B LBB0_41
LBB0_37:
    WORD $0x52800062 // mov    w2, #3
    B LBB0_41
LBB0_38:
    WORD $0x52800082 // mov    w2, #4
    B LBB0_41
LBB0_39:
    WORD $0x528000a2 // mov    w2, #5
    B LBB0_41
LBB0_40:
    WORD $0x528000c2 // mov    w2, #6
LBB0_41:
    WORD $0x6b0a005f // cmp    w2, w10
    BHS LBB0_47
    WORD $0x71000508 // subs    w8, w8, #1
    WORD $0x8b09016b // add    x11, x11, x9
    BNE LBB0_26
    B LBB0_46
LBB0_43:
    WORD $0x9280000c // mov    x12, #-1
    WORD $0x2538d001 // mov    z1.b, #-128
    WORD $0x11000529 // add    w9, w9, #1
    WORD $0x9aca218c // lsl    x12, x12, x10
LBB0_44:
    WORD $0xa400a162 // ld1b    { z2.b }, p0/z, [x11]
    WORD $0x910083ed // add    x13, sp, #32
    WORD $0x2400a041 // cmpeq    p1.b, p0/z, z2.b, z0.b
    WORD $0x05111fe2 // mov    z2.b, p1/z, #-1
    WORD $0x24010041 // cmphs    p1.b, p0/z, z2.b, z1.b
    WORD $0xe58019a1 // str    p1, [x13, #6, mul vl]
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0xb94021ad // ldr    w13, [x13, #32]
    WORD $0x2a0c01ad // orr    w13, w13, w12
    WORD $0x310005bf // cmn    w13, #1
    BEQ LBB0_47
    WORD $0x71000508 // subs    w8, w8, #1
    WORD $0x8b09016b // add    x11, x11, x9
    BNE LBB0_44
LBB0_46:
    WORD $0x92800000 // mov    x0, #-1
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910083ff // add    sp, sp, #32
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_47:
    WORD $0x8b0a0168 // add    x8, x11, x10
    WORD $0x39400100 // ldrb    w0, [x8]
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910083ff // add    sp, sp, #32
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret

TEXT ·__lookup_small_key(SB), NOSPLIT, $0-32
	NO_LOCAL_POINTERS

_entry:
	MOVD 16(g), R16
	SUB $96, RSP, R17
	CMP  R16, R17
	BLS  _stack_grow

_lookup_small_key:
	MOVD key+0(FP), R0
	MOVD table+8(FP), R1
	MOVD lowerOff+16(FP), R2
	MOVD ·_subr__lookup_small_key(SB), R11
	WORD $0x1000005e // adr x30, .+8
	JMP (R11)
	MOVD R0, ret+24(FP)
	RET

_stack_grow:
	MOVD R30, R3
	CALL runtime·morestack_noctxt<>(SB)
	JMP  _entry
