//+build !noasm !appengine
// DO NOT EDIT

#include "go_asm.h"
#include "funcdata.h"
#include "textflag.h"

TEXT ·__skip_one_fast_entry__(SB), NOSPLIT, $176
	NO_LOCAL_POINTERS
	WORD $0x100000a0 // adr x0, .+20
	MOVD R0, ret(FP)
	RET
	// .p2align 4, 0x00
	
DATA LCDATA1<>+0x000(SB)/8, $0x8040201008040201
DATA LCDATA1<>+0x008(SB)/8, $0x8040201008040201
DATA LCDATA1<>+0x010(SB)/8, $0x0b030a0209010800
DATA LCDATA1<>+0x018(SB)/8, $0x0f070e060d050c04
DATA LCDATA1<>+0x020(SB)/8, $0x1111111111111111
DATA LCDATA1<>+0x028(SB)/8, $0x2222222222222222
DATA LCDATA1<>+0x030(SB)/8, $0x2222222222222222
DATA LCDATA1<>+0x038(SB)/8, $0x8888888888888888
DATA LCDATA1<>+0x040(SB)/8, $0x2222222222222222
DATA LCDATA1<>+0x048(SB)/8, $0x1111111111111111
DATA LCDATA1<>+0x050(SB)/8, $0x1111111111111111
DATA LCDATA1<>+0x058(SB)/8, $0x0888888888888888
DATA LCDATA1<>+0x060(SB)/8, $0x0888888888888888
DATA LCDATA1<>+0x068(SB)/8, $0x0444444444444444
DATA LCDATA1<>+0x070(SB)/8, $0x0888888888888888
DATA LCDATA1<>+0x078(SB)/8, $0x1111111111111111
DATA LCDATA1<>+0x080(SB)/8, $0x0444444444444444
DATA LCDATA1<>+0x088(SB)/8, $0x0222222222222222
DATA LCDATA1<>+0x090(SB)/8, $0x4444444444444444
DATA LCDATA1<>+0x098(SB)/8, $0x8888888888888888
GLOBL LCDATA1<>(SB), 8, $160

LCPI0_0:
    WORD $0x08040201
    WORD $0x80402010
    WORD $0x08040201
    WORD $0x80402010
LCPI0_1:
    WORD $0x09010800
    WORD $0x0b030a02
    WORD $0x0d050c04
    WORD $0x0f070e06
LCPI0_2:
    WORD $0x11111111; WORD $0x11111111
    WORD $0x22222222; WORD $0x22222222
LCPI0_3:
    WORD $0x22222222; WORD $0x22222222
    WORD $0x88888888; WORD $0x88888888
LCPI0_4:
    WORD $0x22222222; WORD $0x22222222
    WORD $0x11111111; WORD $0x11111111
LCPI0_5:
    WORD $0x11111111; WORD $0x11111111
    WORD $0x88888888; WORD $0x08888888
LCPI0_6:
    WORD $0x88888888; WORD $0x08888888
    WORD $0x44444444; WORD $0x04444444
LCPI0_7:
    WORD $0x88888888; WORD $0x08888888
    WORD $0x11111111; WORD $0x11111111
LCPI0_8:
    WORD $0x44444444; WORD $0x04444444
    WORD $0x22222222; WORD $0x02222222
LCPI0_9:
    WORD $0x44444444; WORD $0x44444444
    WORD $0x88888888; WORD $0x88888888
skip_one_fast:
    WORD $0xf81f0ffd // str    fp, [sp, #-16]!
    WORD $0xd10103ff // sub    sp, sp, #64
    WORD $0x043f57ff // addvl    sp, sp, #-1
    WORD $0xa9402809 // ldp    x9, x10, [x0]
    WORD $0xf940002b // ldr    x11, [x1]
    WORD $0xeb0a017f // cmp    x11, x10
    BHS LBB0_4
    WORD $0x386b6928 // ldrb    w8, [x9, x11]
    WORD $0x7100351f // cmp    w8, #13
    BEQ LBB0_4
    WORD $0x7100811f // cmp    w8, #32
    BEQ LBB0_4
    WORD $0x51002d08 // sub    w8, w8, #11
    WORD $0x3100091f // cmn    w8, #2
    WORD $0xaa0b03e8 // mov    x8, x11
    BLO LBB0_23
LBB0_4:
    WORD $0x91000568 // add    x8, x11, #1
    WORD $0xeb0a011f // cmp    x8, x10
    BHS LBB0_8
    WORD $0x3868692c // ldrb    w12, [x9, x8]
    WORD $0x7100359f // cmp    w12, #13
    BEQ LBB0_8
    WORD $0x7100819f // cmp    w12, #32
    BEQ LBB0_8
    WORD $0x51002d8c // sub    w12, w12, #11
    WORD $0x3100099f // cmn    w12, #2
    BLO LBB0_23
LBB0_8:
    WORD $0x91000968 // add    x8, x11, #2
    WORD $0xeb0a011f // cmp    x8, x10
    BHS LBB0_12
    WORD $0x3868692c // ldrb    w12, [x9, x8]
    WORD $0x7100359f // cmp    w12, #13
    BEQ LBB0_12
    WORD $0x7100819f // cmp    w12, #32
    BEQ LBB0_12
    WORD $0x51002d8c // sub    w12, w12, #11
    WORD $0x3100099f // cmn    w12, #2
    BLO LBB0_23
LBB0_12:
    WORD $0x91000d68 // add    x8, x11, #3
    WORD $0xeb0a011f // cmp    x8, x10
    BHS LBB0_16
    WORD $0x3868692c // ldrb    w12, [x9, x8]
    WORD $0x7100359f // cmp    w12, #13
    BEQ LBB0_16
    WORD $0x7100819f // cmp    w12, #32
    BEQ LBB0_16
    WORD $0x51002d8c // sub    w12, w12, #11
    WORD $0x3100099f // cmn    w12, #2
    BLO LBB0_23
LBB0_16:
    WORD $0x91001168 // add    x8, x11, #4
    WORD $0xeb0a011f // cmp    x8, x10
    BHS LBB0_131
    WORD $0xd284c00c // mov    x12, #9728
    WORD $0x5280002b // mov    w11, #1
    WORD $0xf2c0002c // movk    x12, #1, lsl #32
LBB0_18:
    WORD $0x3868692d // ldrb    w13, [x9, x8]
    WORD $0x9acd216e // lsl    x14, x11, x13
    WORD $0x710081bf // cmp    w13, #32
    WORD $0x8a0c01cd // and    x13, x14, x12
    WORD $0xfa4099a4 // ccmp    x13, #0, #4, ls
    BEQ LBB0_22
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0xeb08015f // cmp    x10, x8
    BNE LBB0_18
    WORD $0x92800000 // mov    x0, #-1
LBB0_21:
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_22:
    WORD $0xeb0a011f // cmp    x8, x10
    BHS LBB0_85
LBB0_23:
    WORD $0x91000510 // add    x16, x8, #1
    WORD $0xf9000030 // str    x16, [x1]
    WORD $0x3868692a // ldrb    w10, [x9, x8]
    WORD $0x7101695f // cmp    w10, #90
    BGT LBB0_49
    WORD $0x7100bd5f // cmp    w10, #47
    BLE LBB0_54
    WORD $0x5100c14a // sub    w10, w10, #48
    WORD $0x7100295f // cmp    w10, #10
    BHS LBB0_121
LBB0_26:
    WORD $0xf940040a // ldr    x10, [x0, #8]
    WORD $0xcb10014b // sub    x11, x10, x16
    WORD $0x8b10012a // add    x10, x9, x16
    WORD $0xf100817f // cmp    x11, #32
    BLO LBB0_30
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x2538cfa0 // mov    z0.b, #125
    WORD $0x2538cba1 // mov    z1.b, #93
    WORD $0x2538c582 // mov    z2.b, #44
    WORD $0xaa1f03ec // mov    x12, xzr
LBB0_28:
    WORD $0xa400a143 // ld1b    { z3.b }, p0/z, [x10]
    WORD $0x910103ed // add    x13, sp, #64
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0x047f50af // addpl    x15, sp, #5
    WORD $0x2400a061 // cmpeq    p1.b, p0/z, z3.b, z0.b
    WORD $0x2401a062 // cmpeq    p2.b, p0/z, z3.b, z1.b
    WORD $0x2402a063 // cmpeq    p3.b, p0/z, z3.b, z2.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    WORD $0xe58015a3 // str    p3, [x13, #5, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94041ce // ldr    w14, [x14, #64]
    WORD $0xb94041ad // ldr    w13, [x13, #64]
    WORD $0xb94041ef // ldr    w15, [x15, #64]
    WORD $0x2a0d01cd // orr    w13, w14, w13
    WORD $0x2a0f01ad // orr    w13, w13, w15
    CMP $0, R13
    BNE LBB0_44
    WORD $0xd100816b // sub    x11, x11, #32
    WORD $0x9100814a // add    x10, x10, #32
    WORD $0x9100818c // add    x12, x12, #32
    WORD $0xf1007d7f // cmp    x11, #31
    BHI LBB0_28
LBB0_30:
    WORD $0xf100417f // cmp    x11, #16
    BLO LBB0_35
    WORD $0x4f01e580 // movi    v0.16b, #44
    WORD $0x4f06e7e1 // movi    v1.16b, #223
    ADR LCPI0_0, R12
    WORD $0x4f02e7a2 // movi    v2.16b, #93
    ADR LCPI0_1, R13
    WORD $0x3dc00183 // ldr    q3, [x12, :lo12:.LCPI0_0]
    WORD $0x3dc001a4 // ldr    q4, [x13, :lo12:.LCPI0_1]
    WORD $0xaa1f03ec // mov    x12, xzr
LBB0_32:
    WORD $0x3cec6945 // ldr    q5, [x10, x12]
    WORD $0x4e211ca6 // and    v6.16b, v5.16b, v1.16b
    WORD $0x6e208ca5 // cmeq    v5.16b, v5.16b, v0.16b
    WORD $0x6e228cc6 // cmeq    v6.16b, v6.16b, v2.16b
    WORD $0x4ea51cc5 // orr    v5.16b, v6.16b, v5.16b
    WORD $0x4e231ca5 // and    v5.16b, v5.16b, v3.16b
    WORD $0x4e0400a5 // tbl    v5.16b, { v5.16b }, v4.16b
    WORD $0x4e71b8a5 // addv    h5, v5.8h
    WORD $0x1e2600ad // fmov    w13, s5
    CMP $0, R13
    BNE LBB0_124
    WORD $0xd100416b // sub    x11, x11, #16
    WORD $0x9100418c // add    x12, x12, #16
    WORD $0xf1003d7f // cmp    x11, #15
    BHI LBB0_32
    WORD $0x8b0c014a // add    x10, x10, x12
LBB0_35:
    CMP $0, R11
    BEQ LBB0_43
    WORD $0xd284c00f // mov    x15, #9728
    WORD $0x8b0b014c // add    x12, x10, x11
    WORD $0xcb09014d // sub    x13, x10, x9
    WORD $0x5280002e // mov    w14, #1
    WORD $0xf2c2002f // movk    x15, #4097, lsl #32
LBB0_37:
    WORD $0x39400150 // ldrb    w16, [x10]
    WORD $0x7100b21f // cmp    w16, #44
    BHI LBB0_39
    WORD $0x9ad021d1 // lsl    x17, x14, x16
    WORD $0xea0f023f // tst    x17, x15
    BNE LBB0_129
LBB0_39:
    WORD $0x7101f61f // cmp    w16, #125
    BEQ LBB0_129
    WORD $0x7101761f // cmp    w16, #93
    BEQ LBB0_129
    WORD $0xf100056b // subs    x11, x11, #1
    WORD $0x9100054a // add    x10, x10, #1
    WORD $0x910005ad // add    x13, x13, #1
    BNE LBB0_37
    WORD $0xaa0c03ea // mov    x10, x12
LBB0_43:
    WORD $0xcb090149 // sub    x9, x10, x9
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0xaa0803e0 // mov    x0, x8
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_44:
    WORD $0x5ac001ab // rbit    w11, w13
    WORD $0xcb09014d // sub    x13, x10, x9
    WORD $0x5ac0116a // clz    w10, w11
    WORD $0x8b0a01ab // add    x11, x13, x10
    WORD $0xf100057f // cmp    x11, #1
    WORD $0xf900002b // str    x11, [x1]
    BLT LBB0_48
    WORD $0x8b0c014a // add    x10, x10, x12
    WORD $0xd284c00c // mov    x12, #9728
    WORD $0x8b080129 // add    x9, x9, x8
    WORD $0x5280002b // mov    w11, #1
    WORD $0xf2c0002c // movk    x12, #1, lsl #32
LBB0_46:
    WORD $0x386a692d // ldrb    w13, [x9, x10]
    WORD $0x9acd216e // lsl    x14, x11, x13
    WORD $0x710081bf // cmp    w13, #32
    WORD $0x8a0c01cd // and    x13, x14, x12
    WORD $0xfa4099a4 // ccmp    x13, #0, #4, ls
    BEQ LBB0_48
    WORD $0x8b0a010d // add    x13, x8, x10
    WORD $0xd100054a // sub    x10, x10, #1
    WORD $0x8b0a010e // add    x14, x8, x10
    WORD $0xf900002d // str    x13, [x1]
    WORD $0x910009ce // add    x14, x14, #2
    WORD $0xf10005df // cmp    x14, #1
    BGT LBB0_46
LBB0_48:
    WORD $0xaa0803e0 // mov    x0, x8
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_49:
    WORD $0x7101b55f // cmp    w10, #109
    BLE LBB0_57
    WORD $0x7101b95f // cmp    w10, #110
    BEQ LBB0_84
    WORD $0x7101d15f // cmp    w10, #116
    BEQ LBB0_84
    WORD $0x7101ed5f // cmp    w10, #123
    BNE LBB0_121
    ADR LCPI0_2, R15
    WORD $0x2518e3e0 // ptrue    p0.b
    ADR LCPI0_4, R17
    WORD $0x3dc001e2 // ldr    q2, [x15, :lo12:.LCPI0_2]
    ADR LCPI0_3, R15
    WORD $0x25d8e041 // ptrue    p1.d, vl2
    WORD $0x3dc001e3 // ldr    q3, [x15, :lo12:.LCPI0_3]
    ADR LCPI0_5, R15
    WORD $0x3dc00224 // ldr    q4, [x17, :lo12:.LCPI0_4]
    WORD $0x4f02e485 // movi    v5.16b, #68
    ADR LCPI0_6, R17
    WORD $0x3dc001e6 // ldr    q6, [x15, :lo12:.LCPI0_5]
    ADR LCPI0_7, R15
    WORD $0x6f00e411 // movi    v17.2d, #0000000000000000
    WORD $0xf940040d // ldr    x13, [x0, #8]
    WORD $0x2538c440 // mov    z0.b, #34
    WORD $0x2538cb81 // mov    z1.b, #92
    WORD $0x3dc00227 // ldr    q7, [x17, :lo12:.LCPI0_6]
    WORD $0x3dc001f0 // ldr    q16, [x15, :lo12:.LCPI0_7]
    ADR LCPI0_8, R15
    ADR LCPI0_9, R17
    WORD $0x2538cf72 // mov    z18.b, #123
    WORD $0x2538cfb3 // mov    z19.b, #125
    WORD $0x3dc001f4 // ldr    q20, [x15, :lo12:.LCPI0_8]
    WORD $0x910003ef // mov    x15, sp
    WORD $0x3dc00235 // ldr    q21, [x17, :lo12:.LCPI0_9]
    WORD $0xaa1f03ee // mov    x14, xzr
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03ea // mov    x10, xzr
    WORD $0xaa1f03eb // mov    x11, xzr
    WORD $0xcb1001ad // sub    x13, x13, x16
    WORD $0x8b100132 // add    x18, x9, x16
    WORD $0x910081e9 // add    x9, x15, #32
    WORD $0x52800410 // mov    w16, #32
    B LBB0_61
LBB0_54:
    CMP $0, R10
    BEQ LBB0_85
    WORD $0x7100895f // cmp    w10, #34
    BEQ LBB0_86
    WORD $0x7100b55f // cmp    w10, #45
    BEQ LBB0_26
    B LBB0_121
LBB0_57:
    WORD $0x71016d5f // cmp    w10, #91
    BEQ LBB0_95
    WORD $0x7101995f // cmp    w10, #102
    BNE LBB0_121
    WORD $0xf940040a // ldr    x10, [x0, #8]
    WORD $0x91001509 // add    x9, x8, #5
    WORD $0xeb0a013f // cmp    x9, x10
    BHI LBB0_85
    B LBB0_123
LBB0_60:
    WORD $0x9e670256 // fmov    d22, x18
    WORD $0x937ffdce // asr    x14, x14, #63
    WORD $0x91008052 // add    x18, x2, #32
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602cd // fmov    w13, s22
    WORD $0x8b0a01aa // add    x10, x13, x10
    WORD $0xaa1103ed // mov    x13, x17
LBB0_61:
    WORD $0xf10101b1 // subs    x17, x13, #64
    BLT LBB0_68
LBB0_62:
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0x2400a2c2 // cmpeq    p2.b, p0/z, z22.b, z0.b
    WORD $0x2400a2e3 // cmpeq    p3.b, p0/z, z23.b, z0.b
    WORD $0xe5801fa2 // str    p2, [fp, #7, mul vl]
    WORD $0xe5801ba3 // str    p3, [fp, #6, mul vl]
    WORD $0x047f50fd // addpl    fp, sp, #7
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0xb94043a2 // ldr    w2, [fp, #64]
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0x2401a2c2 // cmpeq    p2.b, p0/z, z22.b, z1.b
    WORD $0x2401a2e3 // cmpeq    p3.b, p0/z, z23.b, z1.b
    WORD $0xe5801fa2 // str    p2, [fp, #7, mul vl]
    WORD $0x047f50dd // addpl    fp, sp, #6
    WORD $0xb94043a3 // ldr    w3, [fp, #64]
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0xe5801ba3 // str    p3, [fp, #6, mul vl]
    WORD $0x047f50dd // addpl    fp, sp, #6
    WORD $0xb94043a4 // ldr    w4, [fp, #64]
    WORD $0x047f50fd // addpl    fp, sp, #7
    WORD $0xb94043a5 // ldr    w5, [fp, #64]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0xaa0c0085 // orr    x5, x4, x12
    CMP $0, R5
    BNE LBB0_64
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e4 // mov    x4, xzr
    B LBB0_65
LBB0_64:
    WORD $0x8a2c0085 // bic    x5, x4, x12
    WORD $0xaa050586 // orr    x6, x12, x5, lsl #1
    WORD $0x8a26008c // bic    x12, x4, x6
    WORD $0x9201f18c // and    x12, x12, #0xaaaaaaaaaaaaaaaa
    WORD $0xab05018c // adds    x12, x12, x5
    WORD $0xd37ff98c // lsl    x12, x12, #1
    WORD $0xd200f184 // eor    x4, x12, #0x5555555555555555
    WORD $0x1a9f37ec // cset    w12, hs
    WORD $0x8a060084 // and    x4, x4, x6
LBB0_65:
    WORD $0xaa038042 // orr    x2, x2, x3, lsl #32
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0x8a240042 // bic    x2, x2, x4
    WORD $0x4e080c56 // dup    v22.2d, x2
    WORD $0x9202e043 // and    x3, x2, #0x4444444444444444
    WORD $0x9201e042 // and    x2, x2, #0x8888888888888888
    WORD $0x4e080c77 // dup    v23.2d, x3
    WORD $0x4e080c5a // dup    v26.2d, x2
    WORD $0x0420befb // movprfx    z27, z23
    WORD $0x04d0045b // mul    z27.d, p1/m, z27.d, z2.d
    WORD $0x0420bf5d // movprfx    z29, z26
    WORD $0x04d0061d // mul    z29.d, p1/m, z29.d, z16.d
    WORD $0x91008242 // add    x2, x18, #32
    WORD $0x4e221ed6 // and    v22.16b, v22.16b, v2.16b
    WORD $0x0420bedc // movprfx    z28, z22
    WORD $0x04d004bc // mul    z28.d, p1/m, z28.d, z5.d
    WORD $0x6e3b1f9b // eor    v27.16b, v28.16b, v27.16b
    WORD $0x04d004f7 // mul    z23.d, p1/m, z23.d, z7.d
    WORD $0x04d0069a // mul    z26.d, p1/m, z26.d, z20.d
    WORD $0x4e0806d8 // dup    v24.2d, v22.d[0]
    WORD $0x4e1806d9 // dup    v25.2d, v22.d[1]
    WORD $0x6e1642d6 // ext    v22.16b, v22.16b, v22.16b, #8
    WORD $0x6e3a1ef7 // eor    v23.16b, v23.16b, v26.16b
    WORD $0xa400a25a // ld1b    { z26.b }, p0/z, [x18]
    WORD $0x04d00498 // mul    z24.d, p1/m, z24.d, z4.d
    WORD $0x04d004d9 // mul    z25.d, p1/m, z25.d, z6.d
    WORD $0x04d00476 // mul    z22.d, p1/m, z22.d, z3.d
    WORD $0x2412a342 // cmpeq    p2.b, p0/z, z26.b, z18.b
    WORD $0x6e391f18 // eor    v24.16b, v24.16b, v25.16b
    WORD $0x6e3d1f79 // eor    v25.16b, v27.16b, v29.16b
    WORD $0xa400a05b // ld1b    { z27.b }, p0/z, [x2]
    WORD $0xe5801fa2 // str    p2, [fp, #7, mul vl]
    WORD $0x6e371f17 // eor    v23.16b, v24.16b, v23.16b
    WORD $0x6e391ed6 // eor    v22.16b, v22.16b, v25.16b
    WORD $0x2412a363 // cmpeq    p3.b, p0/z, z27.b, z18.b
    WORD $0x4e351ed6 // and    v22.16b, v22.16b, v21.16b
    WORD $0x4e241ef7 // and    v23.16b, v23.16b, v4.16b
    WORD $0xe5801ba3 // str    p3, [fp, #6, mul vl]
    WORD $0xa400a058 // ld1b    { z24.b }, p0/z, [x2]
    WORD $0x4eb61ef6 // orr    v22.16b, v23.16b, v22.16b
    WORD $0xa400a257 // ld1b    { z23.b }, p0/z, [x18]
    WORD $0x047f50f2 // addpl    x18, sp, #7
    WORD $0x2413a303 // cmpeq    p3.b, p0/z, z24.b, z19.b
    WORD $0xb9404252 // ldr    w18, [x18, #64]
    WORD $0x2413a2e2 // cmpeq    p2.b, p0/z, z23.b, z19.b
    WORD $0x6e1642d9 // ext    v25.16b, v22.16b, v22.16b, #8
    WORD $0xe5801fa2 // str    p2, [fp, #7, mul vl]
    WORD $0x047f50dd // addpl    fp, sp, #6
    WORD $0xb94043a3 // ldr    w3, [fp, #64]
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0x0eb91ed6 // orr    v22.8b, v22.8b, v25.8b
    WORD $0xe5801ba3 // str    p3, [fp, #6, mul vl]
    WORD $0x047f50dd // addpl    fp, sp, #6
    WORD $0xb94043a4 // ldr    w4, [fp, #64]
    WORD $0x047f50fd // addpl    fp, sp, #7
    WORD $0xaa038252 // orr    x18, x18, x3, lsl #32
    WORD $0xb94043a5 // ldr    w5, [fp, #64]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0x9e6602c5 // fmov    x5, d22
    WORD $0xca0e00ae // eor    x14, x5, x14
    WORD $0xea2e0083 // bics    x3, x4, x14
    WORD $0x8a2e0252 // bic    x18, x18, x14
    BEQ LBB0_60
LBB0_66:
    WORD $0xd1000464 // sub    x4, x3, #1
    WORD $0x8a120085 // and    x5, x4, x18
    WORD $0x9e6700b6 // fmov    d22, x5
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602c5 // fmov    w5, s22
    WORD $0x8b0a00a5 // add    x5, x5, x10
    WORD $0xeb0b00bf // cmp    x5, x11
    BLS LBB0_120
    WORD $0xea030083 // ands    x3, x4, x3
    WORD $0x9100056b // add    x11, x11, #1
    BNE LBB0_66
    B LBB0_60
LBB0_68:
    WORD $0xf10001bf // cmp    x13, #0
    BLE LBB0_130
    WORD $0x92402e42 // and    x2, x18, #0xfff
    WORD $0xad0047f1 // stp    q17, q17, [sp]
    WORD $0xf13f045f // cmp    x2, #4033
    WORD $0xad0147f1 // stp    q17, q17, [sp, #32]
    BLO LBB0_62
    WORD $0xf10081a3 // subs    x3, x13, #32
    BLO LBB0_72
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0x91008252 // add    x18, x18, #32
    WORD $0xaa0903e2 // mov    x2, x9
    WORD $0xe400e1f6 // st1b    { z22.b }, p0, [x15]
    B LBB0_73
LBB0_72:
    WORD $0x910003e2 // mov    x2, sp
    WORD $0xaa0d03e3 // mov    x3, x13
LBB0_73:
    WORD $0xf1004064 // subs    x4, x3, #16
    BLO LBB0_79
    WORD $0x3cc10656 // ldr    q22, [x18], #16
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0x3c810456 // str    q22, [x2], #16
    WORD $0xf1002084 // subs    x4, x4, #8
    BHS LBB0_80
LBB0_75:
    WORD $0xf1001064 // subs    x4, x3, #4
    BLO LBB0_81
LBB0_76:
    WORD $0xb8404643 // ldr    w3, [x18], #4
    WORD $0xb8004443 // str    w3, [x2], #4
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1000884 // subs    x4, x4, #2
    BHS LBB0_82
LBB0_77:
    CMP $0, R3
    BEQ LBB0_83
LBB0_78:
    WORD $0x39400243 // ldrb    w3, [x18]
    WORD $0x910003f2 // mov    x18, sp
    WORD $0x39000043 // strb    w3, [x2]
    B LBB0_62
LBB0_79:
    WORD $0xf1002064 // subs    x4, x3, #8
    BLO LBB0_75
LBB0_80:
    WORD $0xf8408643 // ldr    x3, [x18], #8
    WORD $0xf8008443 // str    x3, [x2], #8
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1001084 // subs    x4, x4, #4
    BHS LBB0_76
LBB0_81:
    WORD $0xf1000864 // subs    x4, x3, #2
    BLO LBB0_77
LBB0_82:
    WORD $0x78402643 // ldrh    w3, [x18], #2
    WORD $0x78002443 // strh    w3, [x2], #2
    WORD $0xaa0403e3 // mov    x3, x4
    CMP $0, R4
    BNE LBB0_78
LBB0_83:
    WORD $0x910003f2 // mov    x18, sp
    B LBB0_62
LBB0_84:
    WORD $0xf940040a // ldr    x10, [x0, #8]
    WORD $0x91001109 // add    x9, x8, #4
    WORD $0xeb0a013f // cmp    x9, x10
    BLS LBB0_123
LBB0_85:
    WORD $0x92800000 // mov    x0, #-1
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_86:
    WORD $0xf940040b // ldr    x11, [x0, #8]
    WORD $0xcb10016a // sub    x10, x11, x16
    WORD $0xf100815f // cmp    x10, #32
    BLT LBB0_128
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x2538c440 // mov    z0.b, #34
    WORD $0x2538cb81 // mov    z1.b, #92
    WORD $0xaa1f03ea // mov    x10, xzr
    WORD $0xaa1f03ed // mov    x13, xzr
    WORD $0x8b08012c // add    x12, x9, x8
    WORD $0xcb08016b // sub    x11, x11, x8
    WORD $0x528003ee // mov    w14, #31
    WORD $0x5280002f // mov    w15, #1
LBB0_88:
    WORD $0x8b0a0190 // add    x16, x12, x10
    WORD $0x910103f1 // add    x17, sp, #64
    WORD $0xa40f4202 // ld1b    { z2.b }, p0/z, [x16, x15]
    WORD $0x910103f0 // add    x16, sp, #64
    WORD $0x2400a041 // cmpeq    p1.b, p0/z, z2.b, z0.b
    WORD $0x2401a042 // cmpeq    p2.b, p0/z, z2.b, z1.b
    WORD $0xe5801e01 // str    p1, [x16, #7, mul vl]
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0xb9404210 // ldr    w16, [x16, #64]
    WORD $0xe5801e22 // str    p2, [x17, #7, mul vl]
    WORD $0x047f50f1 // addpl    x17, sp, #7
    WORD $0xb9404231 // ldr    w17, [x17, #64]
    CMP $0, R17
    BNE LBB0_90
    CMP $0, R13
    BEQ LBB0_91
LBB0_90:
    WORD $0x0a2d0232 // bic    w18, w17, w13
    WORD $0x2a1205ad // orr    w13, w13, w18, lsl #1
    WORD $0x0a2d0231 // bic    w17, w17, w13
    WORD $0x1201f231 // and    w17, w17, #0xaaaaaaaa
    WORD $0x2b120231 // adds    w17, w17, w18
    WORD $0x531f7a31 // lsl    w17, w17, #1
    WORD $0x5200f231 // eor    w17, w17, #0x55555555
    WORD $0x0a0d022d // and    w13, w17, w13
    WORD $0x2a2d03f1 // mvn    w17, w13
    WORD $0x1a9f37ed // cset    w13, hs
    WORD $0x8a100230 // and    x16, x17, x16
LBB0_91:
    CMP $0, R16
    BNE LBB0_122
    WORD $0xd10081ce // sub    x14, x14, #32
    WORD $0x9100814a // add    x10, x10, #32
    WORD $0x8b0e0170 // add    x16, x11, x14
    WORD $0xf100fe1f // cmp    x16, #63
    BGT LBB0_88
    CMP $0, R13
    BNE LBB0_132
    WORD $0x8b08012c // add    x12, x9, x8
    WORD $0x8b0a018c // add    x12, x12, x10
    WORD $0xaa2a03ea // mvn    x10, x10
    WORD $0x9100058c // add    x12, x12, #1
    WORD $0x8b0b014a // add    x10, x10, x11
    WORD $0x92800000 // mov    x0, #-1
    WORD $0xf100055f // cmp    x10, #1
    BGE LBB0_135
    B LBB0_21
LBB0_95:
    ADR LCPI0_2, R15
    WORD $0x2518e3e0 // ptrue    p0.b
    ADR LCPI0_4, R17
    WORD $0x3dc001e2 // ldr    q2, [x15, :lo12:.LCPI0_2]
    ADR LCPI0_3, R15
    WORD $0x25d8e041 // ptrue    p1.d, vl2
    WORD $0x3dc001e3 // ldr    q3, [x15, :lo12:.LCPI0_3]
    ADR LCPI0_5, R15
    WORD $0x3dc00224 // ldr    q4, [x17, :lo12:.LCPI0_4]
    WORD $0x4f02e485 // movi    v5.16b, #68
    ADR LCPI0_6, R17
    WORD $0x3dc001e6 // ldr    q6, [x15, :lo12:.LCPI0_5]
    ADR LCPI0_7, R15
    WORD $0x6f00e411 // movi    v17.2d, #0000000000000000
    WORD $0xf940040d // ldr    x13, [x0, #8]
    WORD $0x2538c440 // mov    z0.b, #34
    WORD $0x2538cb81 // mov    z1.b, #92
    WORD $0x3dc00227 // ldr    q7, [x17, :lo12:.LCPI0_6]
    WORD $0x3dc001f0 // ldr    q16, [x15, :lo12:.LCPI0_7]
    ADR LCPI0_8, R15
    ADR LCPI0_9, R17
    WORD $0x2538cb72 // mov    z18.b, #91
    WORD $0x2538cbb3 // mov    z19.b, #93
    WORD $0x3dc001f4 // ldr    q20, [x15, :lo12:.LCPI0_8]
    WORD $0x910003ef // mov    x15, sp
    WORD $0x3dc00235 // ldr    q21, [x17, :lo12:.LCPI0_9]
    WORD $0xaa1f03ee // mov    x14, xzr
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03ea // mov    x10, xzr
    WORD $0xaa1f03eb // mov    x11, xzr
    WORD $0xcb1001ad // sub    x13, x13, x16
    WORD $0x8b100132 // add    x18, x9, x16
    WORD $0x910081e9 // add    x9, x15, #32
    WORD $0x52800410 // mov    w16, #32
    B LBB0_97
LBB0_96:
    WORD $0x9e670256 // fmov    d22, x18
    WORD $0x937ffdce // asr    x14, x14, #63
    WORD $0x91008052 // add    x18, x2, #32
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602cd // fmov    w13, s22
    WORD $0x8b0a01aa // add    x10, x13, x10
    WORD $0xaa1103ed // mov    x13, x17
LBB0_97:
    WORD $0xf10101b1 // subs    x17, x13, #64
    BLT LBB0_104
LBB0_98:
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0x2400a2c2 // cmpeq    p2.b, p0/z, z22.b, z0.b
    WORD $0x2400a2e3 // cmpeq    p3.b, p0/z, z23.b, z0.b
    WORD $0xe5801fa2 // str    p2, [fp, #7, mul vl]
    WORD $0xe5801ba3 // str    p3, [fp, #6, mul vl]
    WORD $0x047f50fd // addpl    fp, sp, #7
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0xb94043a2 // ldr    w2, [fp, #64]
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0x2401a2c2 // cmpeq    p2.b, p0/z, z22.b, z1.b
    WORD $0x2401a2e3 // cmpeq    p3.b, p0/z, z23.b, z1.b
    WORD $0xe5801fa2 // str    p2, [fp, #7, mul vl]
    WORD $0x047f50dd // addpl    fp, sp, #6
    WORD $0xb94043a3 // ldr    w3, [fp, #64]
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0xe5801ba3 // str    p3, [fp, #6, mul vl]
    WORD $0x047f50dd // addpl    fp, sp, #6
    WORD $0xb94043a4 // ldr    w4, [fp, #64]
    WORD $0x047f50fd // addpl    fp, sp, #7
    WORD $0xb94043a5 // ldr    w5, [fp, #64]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0xaa0c0085 // orr    x5, x4, x12
    CMP $0, R5
    BNE LBB0_100
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e4 // mov    x4, xzr
    B LBB0_101
LBB0_100:
    WORD $0x8a2c0085 // bic    x5, x4, x12
    WORD $0xaa050586 // orr    x6, x12, x5, lsl #1
    WORD $0x8a26008c // bic    x12, x4, x6
    WORD $0x9201f18c // and    x12, x12, #0xaaaaaaaaaaaaaaaa
    WORD $0xab05018c // adds    x12, x12, x5
    WORD $0xd37ff98c // lsl    x12, x12, #1
    WORD $0xd200f184 // eor    x4, x12, #0x5555555555555555
    WORD $0x1a9f37ec // cset    w12, hs
    WORD $0x8a060084 // and    x4, x4, x6
LBB0_101:
    WORD $0xaa038042 // orr    x2, x2, x3, lsl #32
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0x8a240042 // bic    x2, x2, x4
    WORD $0x4e080c56 // dup    v22.2d, x2
    WORD $0x9202e043 // and    x3, x2, #0x4444444444444444
    WORD $0x9201e042 // and    x2, x2, #0x8888888888888888
    WORD $0x4e080c77 // dup    v23.2d, x3
    WORD $0x4e080c5a // dup    v26.2d, x2
    WORD $0x0420befb // movprfx    z27, z23
    WORD $0x04d0045b // mul    z27.d, p1/m, z27.d, z2.d
    WORD $0x0420bf5d // movprfx    z29, z26
    WORD $0x04d0061d // mul    z29.d, p1/m, z29.d, z16.d
    WORD $0x91008242 // add    x2, x18, #32
    WORD $0x4e221ed6 // and    v22.16b, v22.16b, v2.16b
    WORD $0x0420bedc // movprfx    z28, z22
    WORD $0x04d004bc // mul    z28.d, p1/m, z28.d, z5.d
    WORD $0x6e3b1f9b // eor    v27.16b, v28.16b, v27.16b
    WORD $0x04d004f7 // mul    z23.d, p1/m, z23.d, z7.d
    WORD $0x04d0069a // mul    z26.d, p1/m, z26.d, z20.d
    WORD $0x4e0806d8 // dup    v24.2d, v22.d[0]
    WORD $0x4e1806d9 // dup    v25.2d, v22.d[1]
    WORD $0x6e1642d6 // ext    v22.16b, v22.16b, v22.16b, #8
    WORD $0x6e3a1ef7 // eor    v23.16b, v23.16b, v26.16b
    WORD $0xa400a25a // ld1b    { z26.b }, p0/z, [x18]
    WORD $0x04d00498 // mul    z24.d, p1/m, z24.d, z4.d
    WORD $0x04d004d9 // mul    z25.d, p1/m, z25.d, z6.d
    WORD $0x04d00476 // mul    z22.d, p1/m, z22.d, z3.d
    WORD $0x2412a342 // cmpeq    p2.b, p0/z, z26.b, z18.b
    WORD $0x6e391f18 // eor    v24.16b, v24.16b, v25.16b
    WORD $0x6e3d1f79 // eor    v25.16b, v27.16b, v29.16b
    WORD $0xa400a05b // ld1b    { z27.b }, p0/z, [x2]
    WORD $0xe5801fa2 // str    p2, [fp, #7, mul vl]
    WORD $0x6e371f17 // eor    v23.16b, v24.16b, v23.16b
    WORD $0x6e391ed6 // eor    v22.16b, v22.16b, v25.16b
    WORD $0x2412a363 // cmpeq    p3.b, p0/z, z27.b, z18.b
    WORD $0x4e351ed6 // and    v22.16b, v22.16b, v21.16b
    WORD $0x4e241ef7 // and    v23.16b, v23.16b, v4.16b
    WORD $0xe5801ba3 // str    p3, [fp, #6, mul vl]
    WORD $0xa400a058 // ld1b    { z24.b }, p0/z, [x2]
    WORD $0x4eb61ef6 // orr    v22.16b, v23.16b, v22.16b
    WORD $0xa400a257 // ld1b    { z23.b }, p0/z, [x18]
    WORD $0x047f50f2 // addpl    x18, sp, #7
    WORD $0x2413a303 // cmpeq    p3.b, p0/z, z24.b, z19.b
    WORD $0xb9404252 // ldr    w18, [x18, #64]
    WORD $0x2413a2e2 // cmpeq    p2.b, p0/z, z23.b, z19.b
    WORD $0x6e1642d9 // ext    v25.16b, v22.16b, v22.16b, #8
    WORD $0xe5801fa2 // str    p2, [fp, #7, mul vl]
    WORD $0x047f50dd // addpl    fp, sp, #6
    WORD $0xb94043a3 // ldr    w3, [fp, #64]
    WORD $0x910103fd // add    fp, sp, #64
    WORD $0x0eb91ed6 // orr    v22.8b, v22.8b, v25.8b
    WORD $0xe5801ba3 // str    p3, [fp, #6, mul vl]
    WORD $0x047f50dd // addpl    fp, sp, #6
    WORD $0xb94043a4 // ldr    w4, [fp, #64]
    WORD $0x047f50fd // addpl    fp, sp, #7
    WORD $0xaa038252 // orr    x18, x18, x3, lsl #32
    WORD $0xb94043a5 // ldr    w5, [fp, #64]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0x9e6602c5 // fmov    x5, d22
    WORD $0xca0e00ae // eor    x14, x5, x14
    WORD $0xea2e0083 // bics    x3, x4, x14
    WORD $0x8a2e0252 // bic    x18, x18, x14
    BEQ LBB0_96
LBB0_102:
    WORD $0xd1000464 // sub    x4, x3, #1
    WORD $0x8a120085 // and    x5, x4, x18
    WORD $0x9e6700b6 // fmov    d22, x5
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602c5 // fmov    w5, s22
    WORD $0x8b0a00a5 // add    x5, x5, x10
    WORD $0xeb0b00bf // cmp    x5, x11
    BLS LBB0_120
    WORD $0xea030083 // ands    x3, x4, x3
    WORD $0x9100056b // add    x11, x11, #1
    BNE LBB0_102
    B LBB0_96
LBB0_104:
    WORD $0xf10001bf // cmp    x13, #0
    BLE LBB0_130
    WORD $0x92402e42 // and    x2, x18, #0xfff
    WORD $0xad0047f1 // stp    q17, q17, [sp]
    WORD $0xf13f045f // cmp    x2, #4033
    WORD $0xad0147f1 // stp    q17, q17, [sp, #32]
    BLO LBB0_98
    WORD $0xf10081a3 // subs    x3, x13, #32
    BLO LBB0_108
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0x91008252 // add    x18, x18, #32
    WORD $0xaa0903e2 // mov    x2, x9
    WORD $0xe400e1f6 // st1b    { z22.b }, p0, [x15]
    B LBB0_109
LBB0_108:
    WORD $0x910003e2 // mov    x2, sp
    WORD $0xaa0d03e3 // mov    x3, x13
LBB0_109:
    WORD $0xf1004064 // subs    x4, x3, #16
    BLO LBB0_115
    WORD $0x3cc10656 // ldr    q22, [x18], #16
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0x3c810456 // str    q22, [x2], #16
    WORD $0xf1002084 // subs    x4, x4, #8
    BHS LBB0_116
LBB0_111:
    WORD $0xf1001064 // subs    x4, x3, #4
    BLO LBB0_117
LBB0_112:
    WORD $0xb8404643 // ldr    w3, [x18], #4
    WORD $0xb8004443 // str    w3, [x2], #4
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1000884 // subs    x4, x4, #2
    BHS LBB0_118
LBB0_113:
    CMP $0, R3
    BEQ LBB0_119
LBB0_114:
    WORD $0x39400243 // ldrb    w3, [x18]
    WORD $0x910003f2 // mov    x18, sp
    WORD $0x39000043 // strb    w3, [x2]
    B LBB0_98
LBB0_115:
    WORD $0xf1002064 // subs    x4, x3, #8
    BLO LBB0_111
LBB0_116:
    WORD $0xf8408643 // ldr    x3, [x18], #8
    WORD $0xf8008443 // str    x3, [x2], #8
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1001084 // subs    x4, x4, #4
    BHS LBB0_112
LBB0_117:
    WORD $0xf1000864 // subs    x4, x3, #2
    BLO LBB0_113
LBB0_118:
    WORD $0x78402643 // ldrh    w3, [x18], #2
    WORD $0x78002443 // strh    w3, [x2], #2
    WORD $0xaa0403e3 // mov    x3, x4
    CMP $0, R4
    BNE LBB0_114
LBB0_119:
    WORD $0x910003f2 // mov    x18, sp
    B LBB0_98
LBB0_120:
    WORD $0xdac00069 // rbit    x9, x3
    WORD $0xf940040a // ldr    x10, [x0, #8]
    WORD $0xdac01129 // clz    x9, x9
    WORD $0xcb0d0129 // sub    x9, x9, x13
    WORD $0x8b0a0129 // add    x9, x9, x10
    WORD $0x9100052a // add    x10, x9, #1
    WORD $0xf900002a // str    x10, [x1]
    WORD $0xf940040b // ldr    x11, [x0, #8]
    WORD $0xeb0b015f // cmp    x10, x11
    WORD $0x9a892569 // csinc    x9, x11, x9, hs
    WORD $0xda9f9100 // csinv    x0, x8, xzr, ls
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_121:
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x92800020 // mov    x0, #-2
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_122:
    WORD $0xdac00209 // rbit    x9, x16
    WORD $0x8b0a010a // add    x10, x8, x10
    WORD $0xdac01129 // clz    x9, x9
    WORD $0x8b0a0129 // add    x9, x9, x10
    WORD $0x91000929 // add    x9, x9, #2
LBB0_123:
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0xaa0803e0 // mov    x0, x8
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_124:
    WORD $0x5ac001ab // rbit    w11, w13
    WORD $0xcb090149 // sub    x9, x10, x9
    WORD $0x8b0c012d // add    x13, x9, x12
    WORD $0x5ac0116b // clz    w11, w11
    WORD $0x8b0d016d // add    x13, x11, x13
    WORD $0xf10005bf // cmp    x13, #1
    WORD $0xf900002d // str    x13, [x1]
    BLT LBB0_48
    WORD $0xd284c00d // mov    x13, #9728
    WORD $0x8b0c016b // add    x11, x11, x12
    WORD $0xd100054a // sub    x10, x10, #1
    WORD $0x5280002c // mov    w12, #1
    WORD $0xf2c0002d // movk    x13, #1, lsl #32
LBB0_126:
    WORD $0x386b694e // ldrb    w14, [x10, x11]
    WORD $0x9ace218f // lsl    x15, x12, x14
    WORD $0x710081df // cmp    w14, #32
    WORD $0x8a0d01ee // and    x14, x15, x13
    WORD $0xfa4099c4 // ccmp    x14, #0, #4, ls
    BEQ LBB0_48
    WORD $0x8b0b012e // add    x14, x9, x11
    WORD $0xd100056b // sub    x11, x11, #1
    WORD $0x8b0b012f // add    x15, x9, x11
    WORD $0xd10005ce // sub    x14, x14, #1
    WORD $0x910005ef // add    x15, x15, #1
    WORD $0xf900002e // str    x14, [x1]
    WORD $0xf10005ff // cmp    x15, #1
    BGT LBB0_126
    B LBB0_48
LBB0_128:
    WORD $0x8b10012c // add    x12, x9, x16
    WORD $0x92800000 // mov    x0, #-1
    WORD $0xf100055f // cmp    x10, #1
    BGE LBB0_135
    B LBB0_21
LBB0_129:
    WORD $0xf900002d // str    x13, [x1]
    WORD $0xaa0803e0 // mov    x0, x8
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_130:
    WORD $0xf9400408 // ldr    x8, [x0, #8]
LBB0_131:
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x92800000 // mov    x0, #-1
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
LBB0_132:
    WORD $0xd100056c // sub    x12, x11, #1
    WORD $0xeb0a019f // cmp    x12, x10
    BEQ LBB0_85
    WORD $0x8b08012c // add    x12, x9, x8
    WORD $0x8b0a018c // add    x12, x12, x10
    WORD $0xcb0a016a // sub    x10, x11, x10
    WORD $0x9100098c // add    x12, x12, #2
    WORD $0xd100094a // sub    x10, x10, #2
    WORD $0x92800000 // mov    x0, #-1
    WORD $0xf100055f // cmp    x10, #1
    BGE LBB0_135
    B LBB0_21
LBB0_134:
    WORD $0x9280002b // mov    x11, #-2
    WORD $0x5280004d // mov    w13, #2
    WORD $0xab0b014a // adds    x10, x10, x11
    WORD $0x8b0d018c // add    x12, x12, x13
    BLE LBB0_21
LBB0_135:
    WORD $0x3940018b // ldrb    w11, [x12]
    WORD $0x7101717f // cmp    w11, #92
    BEQ LBB0_134
    WORD $0x7100897f // cmp    w11, #34
    BEQ LBB0_138
    WORD $0x9280000b // mov    x11, #-1
    WORD $0x5280002d // mov    w13, #1
    WORD $0xab0b014a // adds    x10, x10, x11
    WORD $0x8b0d018c // add    x12, x12, x13
    BGT LBB0_135
    B LBB0_21
LBB0_138:
    WORD $0xcb090189 // sub    x9, x12, x9
    WORD $0x91000529 // add    x9, x9, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0xaa0803e0 // mov    x0, x8
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910103ff // add    sp, sp, #64
    WORD $0xf84107fd // ldr    fp, [sp], #16
    WORD $0xd65f03c0 // ret
MASK_USE_NUMBER:
    WORD $0x00000002 // .long    2

TEXT ·__skip_one_fast(SB), NOSPLIT, $0-24
	NO_LOCAL_POINTERS

_entry:
	MOVD 16(g), R16
	SUB $256, RSP, R17
	CMP  R16, R17
	BLS  _stack_grow

_skip_one_fast:
	MOVD s+0(FP), R0
	MOVD p+8(FP), R1
	MOVD ·_subr__skip_one_fast(SB), R11
	WORD $0x1000005e // adr x30, .+8
	JMP (R11)
	MOVD R0, ret+16(FP)
	RET

_stack_grow:
	MOVD R30, R3
	CALL runtime·morestack_noctxt<>(SB)
	JMP  _entry
