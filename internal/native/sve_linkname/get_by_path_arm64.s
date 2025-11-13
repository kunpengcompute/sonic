//+build !noasm !appengine
// -- DO NOT EDIT

#include "go_asm.h"
#include "funcdata.h"
#include "textflag.h"

TEXT ·__get_by_path_entry__(SB), NOSPLIT, $208
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
DATA LCDATA1<>+0x0a0(SB)/8, $0x0000000000000001
DATA LCDATA1<>+0x0a8(SB)/8, $0x0000000000000000
GLOBL LCDATA1<>(SB), 8, $176

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
LCPI0_10:
    WORD $0x00000001; WORD $0x00000000
    WORD $0x00000000; WORD $0x00000000
get_by_path:
    WORD $0x6db733ed // stp    d13, d12, [sp, #-144]!
    WORD $0x6d012beb // stp    d11, d10, [sp, #16]
    WORD $0x6d0223e9 // stp    d9, d8, [sp, #32]
    WORD $0xf9001bfd // str    fp, [sp, #48]
    WORD $0xa9046ffe // stp    lr, x27, [sp, #64]
    WORD $0xa90567fa // stp    x26, x25, [sp, #80]
    WORD $0xa9065ff8 // stp    x24, x23, [sp, #96]
    WORD $0xa90757f6 // stp    x22, x21, [sp, #112]
    WORD $0xa9084ff4 // stp    x20, x19, [sp, #128]
    WORD $0xd10143ff // sub    sp, sp, #80
    WORD $0x043f57ff // addvl    sp, sp, #-1
    WORD $0xf9400448 // ldr    x8, [x2, #8]
    CMP $0, R8
    BEQ LBB0_529
    WORD $0xf9400049 // ldr    x9, [x2]
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x4f01e585 // movi    v5.16b, #44
    WORD $0x25d8e041 // ptrue    p1.d, vl2
    WORD $0x4f06e7e6 // movi    v6.16b, #223
    WORD $0x4f02e7a7 // movi    v7.16b, #93
    WORD $0x8b08112d // add    x13, x9, x8, lsl #4
    ADR LCPI0_0, R8
    ADR LCPI0_6, R15
    WORD $0x3dc00110 // ldr    q16, [x8, :lo12:.LCPI0_0]
    ADR LCPI0_1, R8
    WORD $0x4f02e495 // movi    v21.16b, #68
    WORD $0x3dc00111 // ldr    q17, [x8, :lo12:.LCPI0_1]
    ADR LCPI0_2, R8
    WORD $0x6f00e41c // movi    v28.2d, #0000000000000000
    WORD $0x3dc00112 // ldr    q18, [x8, :lo12:.LCPI0_2]
    ADR LCPI0_3, R8
    WORD $0x2538c440 // mov    z0.b, #34
    WORD $0x3dc00113 // ldr    q19, [x8, :lo12:.LCPI0_3]
    ADR LCPI0_4, R8
    WORD $0x2538cb81 // mov    z1.b, #92
    WORD $0x3dc00114 // ldr    q20, [x8, :lo12:.LCPI0_4]
    ADR LCPI0_5, R8
    WORD $0x2538cfa2 // mov    z2.b, #125
    WORD $0x2538cba3 // mov    z3.b, #93
    WORD $0x2538c584 // mov    z4.b, #44
    WORD $0x3dc00116 // ldr    q22, [x8, :lo12:.LCPI0_5]
    WORD $0x3dc001f7 // ldr    q23, [x15, :lo12:.LCPI0_6]
    ADR LCPI0_7, R8
    ADR LCPI0_8, R15
    ADR LCPI0_9, R17
    WORD $0x2538cb7b // mov    z27.b, #91
    WORD $0x2538cf7d // mov    z29.b, #123
    WORD $0x910043ea // add    x10, sp, #16
    WORD $0xf9400038 // ldr    x24, [x1]
    WORD $0xd284c00c // mov    x12, #9728
    WORD $0x3dc00118 // ldr    q24, [x8, :lo12:.LCPI0_7]
    WORD $0x3dc001f9 // ldr    q25, [x15, :lo12:.LCPI0_8]
    WORD $0x3dc0023a // ldr    q26, [x17, :lo12:.LCPI0_9]
    WORD $0x52832335 // mov    w21, #6425
    WORD $0x5299fa13 // mov    w19, #53200
    WORD $0x5280002b // mov    w11, #1
    WORD $0xf2c0002c // movk    x12, #1, lsl #32
    WORD $0x9100814a // add    x10, x10, #32
    WORD $0x52800410 // mov    w16, #32
    ADR _UnquoteTab, R6
    WORD $0x910000c6 // add    x6, x6, :lo12:_UnquoteTab
    WORD $0x3202c7f6 // mov    w22, #-1061109568
    WORD $0x72a32335 // movk    w21, #6425, lsl #16
    WORD $0x3201c3f4 // mov    w20, #-2139062144
    WORD $0x72b9f9f3 // movk    w19, #53199, lsl #16
LBB0_2:
    WORD $0xa9402017 // ldp    x23, x8, [x0]
    WORD $0xeb08031f // cmp    x24, x8
    BHS LBB0_7
    WORD $0x38786aef // ldrb    w15, [x23, x24]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_7
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_7
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BHS LBB0_7
    WORD $0xaa1803fa // mov    x26, x24
    B LBB0_25
LBB0_7:
    WORD $0x9100071a // add    x26, x24, #1
    WORD $0xeb08035f // cmp    x26, x8
    BHS LBB0_11
    WORD $0x387a6aef // ldrb    w15, [x23, x26]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_11
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_11
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BLO LBB0_25
LBB0_11:
    WORD $0x91000b1a // add    x26, x24, #2
    WORD $0xeb08035f // cmp    x26, x8
    BHS LBB0_15
    WORD $0x387a6aef // ldrb    w15, [x23, x26]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_15
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_15
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BLO LBB0_25
LBB0_15:
    WORD $0x91000f1a // add    x26, x24, #3
    WORD $0xeb08035f // cmp    x26, x8
    BHS LBB0_19
    WORD $0x387a6aef // ldrb    w15, [x23, x26]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_19
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_19
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BLO LBB0_25
LBB0_19:
    WORD $0x9100131a // add    x26, x24, #4
    WORD $0xeb08035f // cmp    x26, x8
    BHS LBB0_23
LBB0_20:
    WORD $0x387a6aef // ldrb    w15, [x23, x26]
    WORD $0x9acf2172 // lsl    x18, x11, x15
    WORD $0x710081ff // cmp    w15, #32
    WORD $0x8a0c024f // and    x15, x18, x12
    WORD $0xfa4099e4 // ccmp    x15, #0, #4, ls
    BEQ LBB0_24
    WORD $0x9100075a // add    x26, x26, #1
    WORD $0xeb1a011f // cmp    x8, x26
    BNE LBB0_20
LBB0_22:
    WORD $0x2a1f03e8 // mov    w8, wzr
    WORD $0xaa1803fa // mov    x26, x24
    WORD $0xf940012f // ldr    x15, [x9]
    CMP $0, R15
    BNE LBB0_26
    B LBB0_903
LBB0_23:
    WORD $0x2a1f03e8 // mov    w8, wzr
    WORD $0xf900003a // str    x26, [x1]
    WORD $0xf940012f // ldr    x15, [x9]
    CMP $0, R15
    BNE LBB0_26
    B LBB0_903
LBB0_24:
    WORD $0xeb08035f // cmp    x26, x8
    BHS LBB0_22
LBB0_25:
    WORD $0x9100074f // add    x15, x26, #1
    WORD $0xf900002f // str    x15, [x1]
    WORD $0x387a6ae8 // ldrb    w8, [x23, x26]
    WORD $0xaa0f03fa // mov    x26, x15
    WORD $0xf940012f // ldr    x15, [x9]
    CMP $0, R15
    BEQ LBB0_903
LBB0_26:
    WORD $0x39405def // ldrb    w15, [x15, #23]
    WORD $0x120011ef // and    w15, w15, #0x1f
    WORD $0x710009ff // cmp    w15, #2
    BEQ LBB0_337
    WORD $0x710061ff // cmp    w15, #24
    BNE LBB0_903
    WORD $0x7101ed1f // cmp    w8, #123
    BNE LBB0_940
LBB0_29:
    WORD $0xf9400408 // ldr    x8, [x0, #8]
    WORD $0xeb08035f // cmp    x26, x8
    BHS LBB0_34
    WORD $0x387a6aef // ldrb    w15, [x23, x26]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_34
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_34
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BHS LBB0_34
    WORD $0xaa1a03f9 // mov    x25, x26
    B LBB0_50
LBB0_34:
    WORD $0x91000759 // add    x25, x26, #1
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_38
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_38
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_38
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BLO LBB0_50
LBB0_38:
    WORD $0x91000b59 // add    x25, x26, #2
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_42
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_42
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_42
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BLO LBB0_50
LBB0_42:
    WORD $0x91000f59 // add    x25, x26, #3
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_46
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_46
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_46
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BLO LBB0_50
LBB0_46:
    WORD $0x91001359 // add    x25, x26, #4
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_904
LBB0_47:
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x9acf2172 // lsl    x18, x11, x15
    WORD $0x710081ff // cmp    w15, #32
    WORD $0x8a0c024f // and    x15, x18, x12
    WORD $0xfa4099e4 // ccmp    x15, #0, #4, ls
    BEQ LBB0_49
    WORD $0x91000739 // add    x25, x25, #1
    WORD $0xeb19011f // cmp    x8, x25
    BNE LBB0_47
    B LBB0_940
LBB0_49:
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_940
LBB0_50:
    WORD $0x9100073d // add    fp, x25, #1
    WORD $0xf900003d // str    fp, [x1]
    WORD $0x38796ae8 // ldrb    w8, [x23, x25]
    WORD $0x7100891f // cmp    w8, #34
    BNE LBB0_939
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0x52848007 // mov    w7, #9216
    WORD $0xf90007ed // str    x13, [sp, #8]
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0x5287272d // mov    w13, #14649
    WORD $0x5288c8d1 // mov    w17, #17990
    WORD $0x72bf9407 // movk    w7, #64672, lsl #16
    WORD $0x3200c3ee // mov    w14, #16843009
    WORD $0xf900450a // str    x10, [x8, #136]
    WORD $0x72a7272d // movk    w13, #14649, lsl #16
    WORD $0x3203cbea // mov    w10, #-522133280
    WORD $0x72a8c8d1 // movk    w17, #17990, lsl #16
    WORD $0xeb1d0248 // subs    x8, x18, fp
    BEQ LBB0_1028
    WORD $0xf940052f // ldr    x15, [x9, #8]
    WORD $0xf101011f // cmp    x8, #64
    WORD $0x8b1d02f8 // add    x24, x23, fp
    WORD $0x9280001e // mov    lr, #-1
    WORD $0xa9406dfa // ldp    x26, x27, [x15]
    WORD $0xaa1f03ef // mov    x15, xzr
    BLO LBB0_219
LBB0_53:
    WORD $0xa41d42fe // ld1b    { z30.b }, p0/z, [x23, fp]
    WORD $0x8b1d02e2 // add    x2, x23, fp
    WORD $0x047f50a4 // addpl    x4, sp, #5
    WORD $0xa410405f // ld1b    { z31.b }, p0/z, [x2, x16]
    WORD $0x910143e2 // add    x2, sp, #80
    WORD $0x047f50c5 // addpl    x5, sp, #6
    WORD $0x047f50e6 // addpl    x6, sp, #7
    WORD $0x2400a3c2 // cmpeq    p2.b, p0/z, z30.b, z0.b
    WORD $0x2401a3c3 // cmpeq    p3.b, p0/z, z30.b, z1.b
    WORD $0x2401a3e4 // cmpeq    p4.b, p0/z, z31.b, z1.b
    WORD $0xe5801c42 // str    p2, [x2, #7, mul vl]
    WORD $0x2400a3e2 // cmpeq    p2.b, p0/z, z31.b, z0.b
    WORD $0xe5801443 // str    p3, [x2, #5, mul vl]
    WORD $0xb94050c6 // ldr    w6, [x6, #80]
    WORD $0xe5801044 // str    p4, [x2, #4, mul vl]
    WORD $0xb9405084 // ldr    w4, [x4, #80]
    WORD $0xe5801842 // str    p2, [x2, #6, mul vl]
    WORD $0x047f5082 // addpl    x2, sp, #4
    WORD $0xb9405042 // ldr    w2, [x2, #80]
    WORD $0xb94050a5 // ldr    w5, [x5, #80]
    WORD $0xaa028084 // orr    x4, x4, x2, lsl #32
    WORD $0xaa0580c2 // orr    x2, x6, x5, lsl #32
    CMP $0, R4
    BNE LBB0_57
    CMP $0, R15
    BNE LBB0_59
    CMP $0, R2
    BNE LBB0_60
LBB0_56:
    WORD $0xd1010108 // sub    x8, x8, #64
    WORD $0x910103bd // add    fp, fp, #64
    WORD $0xf100fd1f // cmp    x8, #63
    BHI LBB0_53
    B LBB0_189
LBB0_57:
    WORD $0xb10007df // cmn    lr, #1
    BNE LBB0_59
    WORD $0xdac00085 // rbit    x5, x4
    WORD $0xdac010a5 // clz    x5, x5
    WORD $0x8b1d00be // add    lr, x5, fp
LBB0_59:
    WORD $0x8a2f0085 // bic    x5, x4, x15
    WORD $0xaa0505ef // orr    x15, x15, x5, lsl #1
    WORD $0x8a2f0084 // bic    x4, x4, x15
    WORD $0x9201f084 // and    x4, x4, #0xaaaaaaaaaaaaaaaa
    WORD $0xab050084 // adds    x4, x4, x5
    WORD $0xd37ff884 // lsl    x4, x4, #1
    WORD $0xd200f084 // eor    x4, x4, #0x5555555555555555
    WORD $0x8a0f0084 // and    x4, x4, x15
    WORD $0x1a9f37ef // cset    w15, hs
    WORD $0x8a240042 // bic    x2, x2, x4
    CMP $0, R2
    BEQ LBB0_56
LBB0_60:
    WORD $0xdac00048 // rbit    x8, x2
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b1d0108 // add    x8, x8, fp
    WORD $0x91000508 // add    x8, x8, #1
    TST $(1<<63), R8
    BNE LBB0_1029
LBB0_61:
    WORD $0xb10007df // cmn    lr, #1
    WORD $0xf9000028 // str    x8, [x1]
    BEQ LBB0_63
    WORD $0xeb0803df // cmp    lr, x8
    BLE LBB0_266
LBB0_63:
    WORD $0xcb19010f // sub    x15, x8, x25
    WORD $0xd10009ef // sub    x15, x15, #2
    WORD $0xaa1b01f2 // orr    x18, x15, x27
    CMP $0, R18_PLATFORM
    BEQ LBB0_68
    WORD $0x043f502a // addvl    x10, sp, #1
    WORD $0xf94007ed // ldr    x13, [sp, #8]
    WORD $0xeb1b01ff // cmp    x15, x27
    WORD $0xf940454a // ldr    x10, [x10, #136]
    WORD $0x529ffff1 // mov    w17, #65535
    BNE LBB0_71
    WORD $0xaa1f03f2 // mov    x18, xzr
    WORD $0xaa1b03ef // mov    x15, x27
LBB0_66:
    WORD $0xf10081e2 // subs    x2, x15, #32
    BLO LBB0_72
    WORD $0xa412431e // ld1b    { z30.b }, p0/z, [x24, x18]
    WORD $0xa412435f // ld1b    { z31.b }, p0/z, [x26, x18]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x91008252 // add    x18, x18, #32
    WORD $0x241fa3c2 // cmpeq    p2.b, p0/z, z30.b, z31.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051cf // ldr    w15, [x14, #80]
    WORD $0x310005ff // cmn    w15, #1
    WORD $0xaa0203ef // mov    x15, x2
    BEQ LBB0_66
    B LBB0_77
LBB0_68:
    WORD $0x5280002f // mov    w15, #1
LBB0_69:
    ADR _UnquoteTab, R6
    WORD $0x910000c6 // add    x6, x6, :lo12:_UnquoteTab
LBB0_70:
    WORD $0x043f502a // addvl    x10, sp, #1
    WORD $0xf94007ed // ldr    x13, [sp, #8]
    WORD $0xf940454a // ldr    x10, [x10, #136]
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xeb12011f // cmp    x8, x18
    BLO LBB0_80
    B LBB0_84
LBB0_71:
    WORD $0xaa1f03ef // mov    x15, xzr
    ADR _UnquoteTab, R6
    WORD $0x910000c6 // add    x6, x6, :lo12:_UnquoteTab
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xeb12011f // cmp    x8, x18
    BLO LBB0_80
    B LBB0_84
LBB0_72:
    WORD $0x0b170322 // add    w2, w25, w23
    WORD $0x0b120042 // add    w2, w2, w18
    WORD $0x11000442 // add    w2, w2, #1
    WORD $0x92402c42 // and    x2, x2, #0xfff
    WORD $0xf13f805f // cmp    x2, #4064
    BHI LBB0_75
    WORD $0x0b120342 // add    w2, w26, w18
    WORD $0x92402c42 // and    x2, x2, #0xfff
    WORD $0xf13f845f // cmp    x2, #4065
    BHS LBB0_75
    WORD $0xa412431e // ld1b    { z30.b }, p0/z, [x24, x18]
    WORD $0xa412435f // ld1b    { z31.b }, p0/z, [x26, x18]
    WORD $0x910143ee // add    x14, sp, #80
    ADR _UnquoteTab, R6
    WORD $0x910000c6 // add    x6, x6, :lo12:_UnquoteTab
    WORD $0x241fa3c2 // cmpeq    p2.b, p0/z, z30.b, z31.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051d2 // ldr    w18, [x14, #80]
    WORD $0x2a3203e2 // mvn    w2, w18
    WORD $0x3100065f // cmn    w18, #1
    WORD $0xdac00042 // rbit    x2, x2
    WORD $0xdac01052 // clz    x18, x2
    WORD $0xfa4f1242 // ccmp    x18, x15, #2, ne
    WORD $0x1a9f37f2 // cset    w18, hs
    B LBB0_79
LBB0_75:
    WORD $0xf10041e2 // subs    x2, x15, #16
    BLO LBB0_122
    WORD $0x3cf26b1e // ldr    q30, [x24, x18]
    WORD $0x3cf26b5f // ldr    q31, [x26, x18]
    WORD $0x91004252 // add    x18, x18, #16
    WORD $0x6e3e8ffe // cmeq    v30.16b, v31.16b, v30.16b
    WORD $0x4e301fde // and    v30.16b, v30.16b, v16.16b
    WORD $0x4e1103de // tbl    v30.16b, { v30.16b }, v17.16b
    WORD $0x4e71bbde // addv    h30, v30.8h
    WORD $0x1e2603cf // fmov    w15, s30
    WORD $0x0a2f0224 // bic    w4, w17, w15
    WORD $0xaa0203ef // mov    x15, x2
    CMP $0, R4
    BEQ LBB0_75
LBB0_77:
    WORD $0x2a1f03f2 // mov    w18, wzr
LBB0_78:
    ADR _UnquoteTab, R6
    WORD $0x910000c6 // add    x6, x6, :lo12:_UnquoteTab
LBB0_79:
    WORD $0x2a1203ef // mov    w15, w18
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xeb12011f // cmp    x8, x18
    BHS LBB0_84
LBB0_80:
    WORD $0x38686ae2 // ldrb    w2, [x23, x8]
    WORD $0x7100345f // cmp    w2, #13
    BEQ LBB0_84
    WORD $0x7100805f // cmp    w2, #32
    BEQ LBB0_84
    WORD $0x51002c42 // sub    w2, w2, #11
    WORD $0x3100085f // cmn    w2, #2
    BHS LBB0_84
    WORD $0xaa0803f9 // mov    x25, x8
    B LBB0_100
LBB0_84:
    WORD $0x91000519 // add    x25, x8, #1
    WORD $0xeb12033f // cmp    x25, x18
    BHS LBB0_88
    WORD $0x38796ae2 // ldrb    w2, [x23, x25]
    WORD $0x7100345f // cmp    w2, #13
    BEQ LBB0_88
    WORD $0x7100805f // cmp    w2, #32
    BEQ LBB0_88
    WORD $0x51002c42 // sub    w2, w2, #11
    WORD $0x3100085f // cmn    w2, #2
    BLO LBB0_100
LBB0_88:
    WORD $0x91000919 // add    x25, x8, #2
    WORD $0xeb12033f // cmp    x25, x18
    BHS LBB0_92
    WORD $0x38796ae2 // ldrb    w2, [x23, x25]
    WORD $0x7100345f // cmp    w2, #13
    BEQ LBB0_92
    WORD $0x7100805f // cmp    w2, #32
    BEQ LBB0_92
    WORD $0x51002c42 // sub    w2, w2, #11
    WORD $0x3100085f // cmn    w2, #2
    BLO LBB0_100
LBB0_92:
    WORD $0x91000d19 // add    x25, x8, #3
    WORD $0xeb12033f // cmp    x25, x18
    BHS LBB0_96
    WORD $0x38796ae2 // ldrb    w2, [x23, x25]
    WORD $0x7100345f // cmp    w2, #13
    BEQ LBB0_96
    WORD $0x7100805f // cmp    w2, #32
    BEQ LBB0_96
    WORD $0x51002c42 // sub    w2, w2, #11
    WORD $0x3100085f // cmn    w2, #2
    BLO LBB0_100
LBB0_96:
    WORD $0x91001119 // add    x25, x8, #4
    WORD $0xeb12033f // cmp    x25, x18
    BHS LBB0_904
LBB0_97:
    WORD $0x38796ae8 // ldrb    w8, [x23, x25]
    WORD $0x9ac82162 // lsl    x2, x11, x8
    WORD $0x7100811f // cmp    w8, #32
    WORD $0x8a0c0048 // and    x8, x2, x12
    WORD $0xfa409904 // ccmp    x8, #0, #4, ls
    BEQ LBB0_99
    WORD $0x91000739 // add    x25, x25, #1
    WORD $0xeb19025f // cmp    x18, x25
    BNE LBB0_97
    B LBB0_940
LBB0_99:
    WORD $0xeb12033f // cmp    x25, x18
    BHS LBB0_940
LBB0_100:
    WORD $0x91000738 // add    x24, x25, #1
    WORD $0xf9000038 // str    x24, [x1]
    WORD $0x38796ae8 // ldrb    w8, [x23, x25]
    WORD $0x7100e91f // cmp    w8, #58
    BNE LBB0_940
    CMP $0, R15
    BNE LBB0_528
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xeb0f031f // cmp    x24, x15
    BHS LBB0_107
    WORD $0x38786ae8 // ldrb    w8, [x23, x24]
    WORD $0x7100351f // cmp    w8, #13
    BEQ LBB0_107
    WORD $0x7100811f // cmp    w8, #32
    BEQ LBB0_107
    WORD $0x51002d08 // sub    w8, w8, #11
    WORD $0x3100091f // cmn    w8, #2
    BHS LBB0_107
    WORD $0xaa1803e8 // mov    x8, x24
    B LBB0_126
LBB0_107:
    WORD $0x91000b28 // add    x8, x25, #2
    WORD $0xeb0f011f // cmp    x8, x15
    BHS LBB0_111
    WORD $0x38686af2 // ldrb    w18, [x23, x8]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_111
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_111
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_126
LBB0_111:
    WORD $0x91000f28 // add    x8, x25, #3
    WORD $0xeb0f011f // cmp    x8, x15
    BHS LBB0_115
    WORD $0x38686af2 // ldrb    w18, [x23, x8]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_115
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_115
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_126
LBB0_115:
    WORD $0x91001328 // add    x8, x25, #4
    WORD $0xeb0f011f // cmp    x8, x15
    BHS LBB0_119
    WORD $0x38686af2 // ldrb    w18, [x23, x8]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_119
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_119
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_126
LBB0_119:
    WORD $0x91001728 // add    x8, x25, #5
    WORD $0xeb0f011f // cmp    x8, x15
    BHS LBB0_192
LBB0_120:
    WORD $0x38686af2 // ldrb    w18, [x23, x8]
    WORD $0x9ad22162 // lsl    x2, x11, x18
    WORD $0x7100825f // cmp    w18, #32
    WORD $0x8a0c0052 // and    x18, x2, x12
    WORD $0xfa409a44 // ccmp    x18, #0, #4, ls
    BEQ LBB0_125
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0xeb0801ff // cmp    x15, x8
    BNE LBB0_120
    B LBB0_193
LBB0_122:
    WORD $0x0b170322 // add    w2, w25, w23
    WORD $0x8b120318 // add    x24, x24, x18
    WORD $0x0b120042 // add    w2, w2, w18
    WORD $0x11000442 // add    w2, w2, #1
    WORD $0x92402c42 // and    x2, x2, #0xfff
    WORD $0xf13fc05f // cmp    x2, #4080
    WORD $0x8b120342 // add    x2, x26, x18
    BHI LBB0_159
    WORD $0x92402c44 // and    x4, x2, #0xfff
    WORD $0xf13fc49f // cmp    x4, #4081
    BHS LBB0_159
    WORD $0x3dc0031e // ldr    q30, [x24]
    WORD $0x3dc0005f // ldr    q31, [x2]
    ADR _UnquoteTab, R6
    WORD $0x910000c6 // add    x6, x6, :lo12:_UnquoteTab
    WORD $0x6e3e8ffe // cmeq    v30.16b, v31.16b, v30.16b
    WORD $0x4e301fde // and    v30.16b, v30.16b, v16.16b
    WORD $0x4e1103de // tbl    v30.16b, { v30.16b }, v17.16b
    WORD $0x4e71bbde // addv    h30, v30.8h
    WORD $0x1e2603d2 // fmov    w18, s30
    WORD $0x6a320232 // bics    w18, w17, w18
    WORD $0xdac00252 // rbit    x18, x18
    WORD $0x1a9f17e2 // cset    w2, eq
    WORD $0xdac01252 // clz    x18, x18
    WORD $0xeb0f025f // cmp    x18, x15
    WORD $0x1a9f3452 // csinc    w18, w2, wzr, lo
    B LBB0_79
LBB0_125:
    WORD $0xeb0f011f // cmp    x8, x15
    BHS LBB0_193
LBB0_126:
    WORD $0x91000518 // add    x24, x8, #1
    WORD $0xf9000038 // str    x24, [x1]
    WORD $0x38686aef // ldrb    w15, [x23, x8]
    WORD $0x710169ff // cmp    w15, #90
    BGT LBB0_151
    WORD $0x7100bdff // cmp    w15, #47
    BLE LBB0_156
    WORD $0x5100c1ef // sub    w15, w15, #48
    WORD $0x710029ff // cmp    w15, #10
    BHS LBB0_192
LBB0_129:
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xcb1801ef // sub    x15, x15, x24
    WORD $0xf10081ff // cmp    x15, #32
    BLO LBB0_133
    WORD $0xaa1f03f2 // mov    x18, xzr
LBB0_131:
    WORD $0xa41842fe // ld1b    { z30.b }, p0/z, [x23, x24]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2402a3c2 // cmpeq    p2.b, p0/z, z30.b, z2.b
    WORD $0x2403a3c3 // cmpeq    p3.b, p0/z, z30.b, z3.b
    WORD $0x2404a3c4 // cmpeq    p4.b, p0/z, z30.b, z4.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0xe58015c4 // str    p4, [x14, #5, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0x047f50ae // addpl    x14, sp, #5
    WORD $0xb94051c5 // ldr    w5, [x14, #80]
    WORD $0x2a020082 // orr    w2, w4, w2
    WORD $0x2a050042 // orr    w2, w2, w5
    CMP $0, R2
    BNE LBB0_146
    WORD $0xd10081ef // sub    x15, x15, #32
    WORD $0x91008318 // add    x24, x24, #32
    WORD $0x91008252 // add    x18, x18, #32
    WORD $0xf1007dff // cmp    x15, #31
    BHI LBB0_131
LBB0_133:
    WORD $0x8b1802e8 // add    x8, x23, x24
    WORD $0xf10041ff // cmp    x15, #16
    BLO LBB0_137
    WORD $0xcb0802e2 // sub    x2, x23, x8
    WORD $0xcb170112 // sub    x18, x8, x23
LBB0_135:
    WORD $0x3dc0011e // ldr    q30, [x8]
    WORD $0x4e261fdf // and    v31.16b, v30.16b, v6.16b
    WORD $0x6e258fde // cmeq    v30.16b, v30.16b, v5.16b
    WORD $0x6e278fff // cmeq    v31.16b, v31.16b, v7.16b
    WORD $0x4ebe1ffe // orr    v30.16b, v31.16b, v30.16b
    WORD $0x4e301fde // and    v30.16b, v30.16b, v16.16b
    WORD $0x4e1103de // tbl    v30.16b, { v30.16b }, v17.16b
    WORD $0x4e71bbde // addv    h30, v30.8h
    WORD $0x1e2603c4 // fmov    w4, s30
    CMP $0, R4
    BNE LBB0_262
    WORD $0xd10041ef // sub    x15, x15, #16
    WORD $0x91004108 // add    x8, x8, #16
    WORD $0xd1004042 // sub    x2, x2, #16
    WORD $0xf1003dff // cmp    x15, #15
    WORD $0x91004252 // add    x18, x18, #16
    BHI LBB0_135
LBB0_137:
    WORD $0xd284c005 // mov    x5, #9728
    WORD $0xf2c20025 // movk    x5, #4097, lsl #32
    CMP $0, R15
    BEQ LBB0_145
    WORD $0x8b0f0112 // add    x18, x8, x15
    WORD $0xcb170118 // sub    x24, x8, x23
LBB0_139:
    WORD $0x39400102 // ldrb    w2, [x8]
    WORD $0x7100b05f // cmp    w2, #44
    BHI LBB0_141
    WORD $0x9ac22164 // lsl    x4, x11, x2
    WORD $0xea05009f // tst    x4, x5
    BNE LBB0_335
LBB0_141:
    WORD $0x7101f45f // cmp    w2, #125
    BEQ LBB0_335
    WORD $0x7101745f // cmp    w2, #93
    BEQ LBB0_335
    WORD $0xf10005ef // subs    x15, x15, #1
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0x91000718 // add    x24, x24, #1
    BNE LBB0_139
    WORD $0xaa1203e8 // mov    x8, x18
LBB0_145:
    WORD $0xcb170118 // sub    x24, x8, x23
    B LBB0_335
LBB0_146:
    WORD $0x5ac0004f // rbit    w15, w2
    WORD $0x5ac011ef // clz    w15, w15
    WORD $0x8b1801f8 // add    x24, x15, x24
    WORD $0xf100071f // cmp    x24, #1
    WORD $0xf9000038 // str    x24, [x1]
    BLT LBB0_193
    WORD $0x8b1201ef // add    x15, x15, x18
    WORD $0x8b0802f2 // add    x18, x23, x8
LBB0_148:
    WORD $0x386f6a42 // ldrb    w2, [x18, x15]
    WORD $0x9ac22164 // lsl    x4, x11, x2
    WORD $0x7100805f // cmp    w2, #32
    WORD $0x8a0c0082 // and    x2, x4, x12
    WORD $0xfa409844 // ccmp    x2, #0, #4, ls
    BEQ LBB0_215
    WORD $0x8b0f0104 // add    x4, x8, x15
    WORD $0xd10005ef // sub    x15, x15, #1
    WORD $0x8b0f0102 // add    x2, x8, x15
    WORD $0xf9000024 // str    x4, [x1]
    WORD $0x91000845 // add    x5, x2, #2
    WORD $0xf10004bf // cmp    x5, #1
    BGT LBB0_148
    WORD $0x91000458 // add    x24, x2, #1
    B LBB0_193
LBB0_151:
    WORD $0x7101b5ff // cmp    w15, #109
    BLE LBB0_161
    WORD $0x7101b9ff // cmp    w15, #110
    BEQ LBB0_190
    WORD $0x7101d1ff // cmp    w15, #116
    BEQ LBB0_190
    WORD $0x7101edff // cmp    w15, #123
    BNE LBB0_192
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xaa1f03fd // mov    fp, xzr
    WORD $0xaa1f03fa // mov    x26, xzr
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0xaa1f03f9 // mov    x25, xzr
    WORD $0xcb1801fb // sub    x27, x15, x24
    WORD $0x8b1802f8 // add    x24, x23, x24
    B LBB0_165
LBB0_156:
    CMP $0, R15
    BEQ LBB0_193
    WORD $0x710089ff // cmp    w15, #34
    BEQ LBB0_225
    WORD $0x7100b5ff // cmp    w15, #45
    BEQ LBB0_129
    B LBB0_192
LBB0_159:
    WORD $0xeb12037f // cmp    x27, x18
    BNE LBB0_216
    WORD $0x52800032 // mov    w18, #1
    B LBB0_78
LBB0_161:
    WORD $0x71016dff // cmp    w15, #91
    BEQ LBB0_234
    WORD $0x710199ff // cmp    w15, #102
    BNE LBB0_192
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0x91001508 // add    x8, x8, #5
    B LBB0_191
LBB0_164:
    WORD $0x9e67005e // fmov    d30, x2
    WORD $0x937ffe5d // asr    fp, x18, #63
    WORD $0x910081f8 // add    x24, x15, #32
    WORD $0xaa1703fb // mov    x27, x23
    WORD $0x0e205bde // cnt    v30.8b, v30.8b
    WORD $0x2e303bde // uaddlv    h30, v30.8b
    WORD $0x1e2603c2 // fmov    w2, s30
    WORD $0x8b080048 // add    x8, x2, x8
LBB0_165:
    WORD $0xf1010377 // subs    x23, x27, #64
    BLT LBB0_172
LBB0_166:
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0xa410431f // ld1b    { z31.b }, p0/z, [x24, x16]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2400a3c2 // cmpeq    p2.b, p0/z, z30.b, z0.b
    WORD $0x2400a3e3 // cmpeq    p3.b, p0/z, z31.b, z0.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0xa410431f // ld1b    { z31.b }, p0/z, [x24, x16]
    WORD $0xb94051cf // ldr    w15, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2401a3c2 // cmpeq    p2.b, p0/z, z30.b, z1.b
    WORD $0x2401a3e3 // cmpeq    p3.b, p0/z, z31.b, z1.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051d2 // ldr    w18, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0xaa028082 // orr    x2, x4, x2, lsl #32
    WORD $0xaa1a0044 // orr    x4, x2, x26
    CMP $0, R4
    BNE LBB0_168
    WORD $0xaa1f03fa // mov    x26, xzr
    WORD $0xaa1f03e2 // mov    x2, xzr
    B LBB0_169
LBB0_168:
    WORD $0x8a3a0044 // bic    x4, x2, x26
    WORD $0xaa040745 // orr    x5, x26, x4, lsl #1
    WORD $0x8a250042 // bic    x2, x2, x5
    WORD $0x9201f042 // and    x2, x2, #0xaaaaaaaaaaaaaaaa
    WORD $0xab040042 // adds    x2, x2, x4
    WORD $0xd37ff842 // lsl    x2, x2, #1
    WORD $0x1a9f37fa // cset    w26, hs
    WORD $0xd200f042 // eor    x2, x2, #0x5555555555555555
    WORD $0x8a050042 // and    x2, x2, x5
LBB0_169:
    WORD $0xaa1281ef // orr    x15, x15, x18, lsl #32
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x8a2201ef // bic    x15, x15, x2
    WORD $0x4e080dfe // dup    v30.2d, x15
    WORD $0x9202e1f2 // and    x18, x15, #0x4444444444444444
    WORD $0x9201e1ef // and    x15, x15, #0x8888888888888888
    WORD $0x4e080e5f // dup    v31.2d, x18
    WORD $0x4e080dea // dup    v10.2d, x15
    WORD $0x0420bfeb // movprfx    z11, z31
    WORD $0x04d0064b // mul    z11.d, p1/m, z11.d, z18.d
    WORD $0x0420bd4d // movprfx    z13, z10
    WORD $0x04d0070d // mul    z13.d, p1/m, z13.d, z24.d
    WORD $0x9100830f // add    x15, x24, #32
    WORD $0x4e321fde // and    v30.16b, v30.16b, v18.16b
    WORD $0x0420bfcc // movprfx    z12, z30
    WORD $0x04d006ac // mul    z12.d, p1/m, z12.d, z21.d
    WORD $0x6e2b1d8b // eor    v11.16b, v12.16b, v11.16b
    WORD $0x04d006ff // mul    z31.d, p1/m, z31.d, z23.d
    WORD $0x04d0072a // mul    z10.d, p1/m, z10.d, z25.d
    WORD $0x4e0807c8 // dup    v8.2d, v30.d[0]
    WORD $0x4e1807c9 // dup    v9.2d, v30.d[1]
    WORD $0x6e1e43de // ext    v30.16b, v30.16b, v30.16b, #8
    WORD $0x6e2a1fff // eor    v31.16b, v31.16b, v10.16b
    WORD $0xa400a30a // ld1b    { z10.b }, p0/z, [x24]
    WORD $0x04d00688 // mul    z8.d, p1/m, z8.d, z20.d
    WORD $0x04d006c9 // mul    z9.d, p1/m, z9.d, z22.d
    WORD $0x04d0067e // mul    z30.d, p1/m, z30.d, z19.d
    WORD $0x241da142 // cmpeq    p2.b, p0/z, z10.b, z29.b
    WORD $0x6e291d08 // eor    v8.16b, v8.16b, v9.16b
    WORD $0x6e2d1d69 // eor    v9.16b, v11.16b, v13.16b
    WORD $0xa400a1eb // ld1b    { z11.b }, p0/z, [x15]
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x6e3f1d1f // eor    v31.16b, v8.16b, v31.16b
    WORD $0x6e291fde // eor    v30.16b, v30.16b, v9.16b
    WORD $0x241da163 // cmpeq    p3.b, p0/z, z11.b, z29.b
    WORD $0x4e3a1fde // and    v30.16b, v30.16b, v26.16b
    WORD $0x4e341fff // and    v31.16b, v31.16b, v20.16b
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0xa400a1e8 // ld1b    { z8.b }, p0/z, [x15]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x4ebe1ffe // orr    v30.16b, v31.16b, v30.16b
    WORD $0xa400a31f // ld1b    { z31.b }, p0/z, [x24]
    WORD $0x2402a103 // cmpeq    p3.b, p0/z, z8.b, z2.b
    WORD $0x2402a3e2 // cmpeq    p2.b, p0/z, z31.b, z2.b
    WORD $0x6e1e43c9 // ext    v9.16b, v30.16b, v30.16b, #8
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x0ea91fde // orr    v30.8b, v30.8b, v9.8b
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051d2 // ldr    w18, [x14, #80]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xaa048042 // orr    x2, x2, x4, lsl #32
    WORD $0xb94051c5 // ldr    w5, [x14, #80]
    WORD $0xaa1280a5 // orr    x5, x5, x18, lsl #32
    WORD $0x9e6603d2 // fmov    x18, d30
    WORD $0xca1d0252 // eor    x18, x18, fp
    WORD $0xea3200b8 // bics    x24, x5, x18
    WORD $0x8a320042 // bic    x2, x2, x18
    BEQ LBB0_164
LBB0_170:
    WORD $0xd1000704 // sub    x4, x24, #1
    WORD $0x8a020085 // and    x5, x4, x2
    WORD $0x9e6700be // fmov    d30, x5
    WORD $0x0e205bde // cnt    v30.8b, v30.8b
    WORD $0x2e303bde // uaddlv    h30, v30.8b
    WORD $0x1e2603c5 // fmov    w5, s30
    WORD $0x8b0800a5 // add    x5, x5, x8
    WORD $0xeb1900bf // cmp    x5, x25
    BLS LBB0_260
    WORD $0xea180098 // ands    x24, x4, x24
    WORD $0x91000739 // add    x25, x25, #1
    BNE LBB0_170
    B LBB0_164
LBB0_172:
    WORD $0x910043ea // add    x10, sp, #16
    WORD $0xf100037f // cmp    x27, #0
    BLE LBB0_327
    WORD $0x92402f0f // and    x15, x24, #0xfff
    WORD $0xad00f3fc // stp    q28, q28, [sp, #16]
    WORD $0xf13f05ff // cmp    x15, #4033
    WORD $0xad01f3fc // stp    q28, q28, [sp, #48]
    BLO LBB0_188
    WORD $0xf1008372 // subs    x18, x27, #32
    BLO LBB0_176
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0x91008318 // add    x24, x24, #32
    WORD $0xe400e15e // st1b    { z30.b }, p0, [x10]
    WORD $0x043f502a // addvl    x10, sp, #1
    WORD $0xf940454f // ldr    x15, [x10, #136]
    B LBB0_177
LBB0_176:
    WORD $0x910043ef // add    x15, sp, #16
    WORD $0xaa1b03f2 // mov    x18, x27
LBB0_177:
    WORD $0xf1004242 // subs    x2, x18, #16
    BLO LBB0_183
    WORD $0x3cc1071e // ldr    q30, [x24], #16
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0x3c8105fe // str    q30, [x15], #16
    WORD $0xf1002042 // subs    x2, x2, #8
    BHS LBB0_184
LBB0_179:
    WORD $0xf1001242 // subs    x2, x18, #4
    BLO LBB0_185
LBB0_180:
    WORD $0xb8404712 // ldr    w18, [x24], #4
    WORD $0xb80045f2 // str    w18, [x15], #4
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0xf1000842 // subs    x2, x2, #2
    BHS LBB0_186
LBB0_181:
    CMP $0, R18_PLATFORM
    BEQ LBB0_187
LBB0_182:
    WORD $0x39400312 // ldrb    w18, [x24]
    WORD $0x910043f8 // add    x24, sp, #16
    WORD $0x390001f2 // strb    w18, [x15]
    B LBB0_188
LBB0_183:
    WORD $0xf1002242 // subs    x2, x18, #8
    BLO LBB0_179
LBB0_184:
    WORD $0xf8408712 // ldr    x18, [x24], #8
    WORD $0xf80085f2 // str    x18, [x15], #8
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0xf1001042 // subs    x2, x2, #4
    BHS LBB0_180
LBB0_185:
    WORD $0xf1000a42 // subs    x2, x18, #2
    BLO LBB0_181
LBB0_186:
    WORD $0x78402712 // ldrh    w18, [x24], #2
    WORD $0x780025f2 // strh    w18, [x15], #2
    WORD $0xaa0203f2 // mov    x18, x2
    CMP $0, R2
    BNE LBB0_182
LBB0_187:
    WORD $0x910043f8 // add    x24, sp, #16
LBB0_188:
    WORD $0x043f502a // addvl    x10, sp, #1
    WORD $0xf94007ed // ldr    x13, [sp, #8]
    WORD $0xf940454a // ldr    x10, [x10, #136]
    B LBB0_166
LBB0_189:
    WORD $0x8b1d02e6 // add    x6, x23, fp
    B LBB0_220
LBB0_190:
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0x91001108 // add    x8, x8, #4
LBB0_191:
    WORD $0xeb0f011f // cmp    x8, x15
    BHI LBB0_193
LBB0_192:
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0xaa0803f8 // mov    x24, x8
LBB0_193:
    WORD $0xa9402017 // ldp    x23, x8, [x0]
    WORD $0xeb08031f // cmp    x24, x8
    BHS LBB0_198
    WORD $0x38786aef // ldrb    w15, [x23, x24]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_198
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_198
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BHS LBB0_198
    WORD $0xaa1803f9 // mov    x25, x24
    B LBB0_214
LBB0_198:
    WORD $0x91000719 // add    x25, x24, #1
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_202
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_202
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_202
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BLO LBB0_214
LBB0_202:
    WORD $0x91000b19 // add    x25, x24, #2
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_206
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_206
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_206
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BLO LBB0_214
LBB0_206:
    WORD $0x91000f19 // add    x25, x24, #3
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_210
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x710035ff // cmp    w15, #13
    BEQ LBB0_210
    WORD $0x710081ff // cmp    w15, #32
    BEQ LBB0_210
    WORD $0x51002def // sub    w15, w15, #11
    WORD $0x310009ff // cmn    w15, #2
    BLO LBB0_214
LBB0_210:
    WORD $0x91001319 // add    x25, x24, #4
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_904
LBB0_211:
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x9acf2172 // lsl    x18, x11, x15
    WORD $0x710081ff // cmp    w15, #32
    WORD $0x8a0c024f // and    x15, x18, x12
    WORD $0xfa4099e4 // ccmp    x15, #0, #4, ls
    BEQ LBB0_213
    WORD $0x91000739 // add    x25, x25, #1
    WORD $0xeb19011f // cmp    x8, x25
    BNE LBB0_211
    B LBB0_940
LBB0_213:
    WORD $0xeb08033f // cmp    x25, x8
    BHS LBB0_940
LBB0_214:
    WORD $0x9100073a // add    x26, x25, #1
    WORD $0xf900003a // str    x26, [x1]
    WORD $0x38796ae8 // ldrb    w8, [x23, x25]
    WORD $0x7100b11f // cmp    w8, #44
    BEQ LBB0_29
    B LBB0_939
LBB0_215:
    WORD $0x8b0f0108 // add    x8, x8, x15
    WORD $0x91000518 // add    x24, x8, #1
    B LBB0_193
LBB0_216:
    WORD $0x52800039 // mov    w25, #1
    ADR _UnquoteTab, R6
    WORD $0x910000c6 // add    x6, x6, :lo12:_UnquoteTab
LBB0_217:
    WORD $0x38401712 // ldrb    w18, [x24], #1
    WORD $0x38401444 // ldrb    w4, [x2], #1
    WORD $0x6b04025f // cmp    w18, w4
    WORD $0x1a9f17f2 // cset    w18, eq
    BNE LBB0_79
    WORD $0xeb1901ff // cmp    x15, x25
    WORD $0x91000739 // add    x25, x25, #1
    BNE LBB0_217
    B LBB0_79
LBB0_219:
    WORD $0xaa1803e6 // mov    x6, x24
LBB0_220:
    WORD $0xf100811d // subs    fp, x8, #32
    BLO LBB0_314
    WORD $0xa400a0de // ld1b    { z30.b }, p0/z, [x6]
    WORD $0x910143e8 // add    x8, sp, #80
    WORD $0x2401a3c2 // cmpeq    p2.b, p0/z, z30.b, z1.b
    WORD $0x2400a3c3 // cmpeq    p3.b, p0/z, z30.b, z0.b
    WORD $0xe5801902 // str    p2, [x8, #6, mul vl]
    WORD $0xe5801d03 // str    p3, [x8, #7, mul vl]
    WORD $0x047f50c8 // addpl    x8, sp, #6
    WORD $0xb9405102 // ldr    w2, [x8, #80]
    WORD $0x047f50e8 // addpl    x8, sp, #7
    WORD $0xb9405108 // ldr    w8, [x8, #80]
    CMP $0, R2
    BNE LBB0_310
    CMP $0, R15
    BNE LBB0_312
    CMP $0, R8
    BEQ LBB0_313
LBB0_224:
    WORD $0xdac00108 // rbit    x8, x8
    WORD $0xcb1700cf // sub    x15, x6, x23
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b0801e8 // add    x8, x15, x8
    WORD $0x91000508 // add    x8, x8, #1
    TST $(1<<63), R8
    BEQ LBB0_61
    B LBB0_1029
LBB0_225:
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xcb18024f // sub    x15, x18, x24
    WORD $0xf10081ff // cmp    x15, #32
    BLT LBB0_307
    WORD $0xaa1f03ef // mov    x15, xzr
    WORD $0xaa1f03fb // mov    x27, xzr
    WORD $0x8b0802f9 // add    x25, x23, x8
    WORD $0xcb080252 // sub    x18, x18, x8
    WORD $0x528003fa // mov    w26, #31
LBB0_227:
    WORD $0x8b0f0322 // add    x2, x25, x15
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0xa40b405e // ld1b    { z30.b }, p0/z, [x2, x11]
    WORD $0x2400a3c2 // cmpeq    p2.b, p0/z, z30.b, z0.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xa40b405e // ld1b    { z30.b }, p0/z, [x2, x11]
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2401a3c2 // cmpeq    p2.b, p0/z, z30.b, z1.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    CMP $0, R4
    BNE LBB0_229
    CMP $0, R27
    BEQ LBB0_230
LBB0_229:
    WORD $0x0a3b0085 // bic    w5, w4, w27
    WORD $0x2a050766 // orr    w6, w27, w5, lsl #1
    WORD $0x0a260084 // bic    w4, w4, w6
    WORD $0x1201f084 // and    w4, w4, #0xaaaaaaaa
    WORD $0x2b050084 // adds    w4, w4, w5
    WORD $0x531f7884 // lsl    w4, w4, #1
    WORD $0x1a9f37fb // cset    w27, hs
    WORD $0x5200f084 // eor    w4, w4, #0x55555555
    WORD $0x0a060084 // and    w4, w4, w6
    WORD $0x2a2403e4 // mvn    w4, w4
    WORD $0x8a020082 // and    x2, x4, x2
LBB0_230:
    CMP $0, R2
    BNE LBB0_261
    WORD $0xd100835a // sub    x26, x26, #32
    WORD $0x910081ef // add    x15, x15, #32
    WORD $0x8b1a0242 // add    x2, x18, x26
    WORD $0xf100fc5f // cmp    x2, #63
    BGT LBB0_227
    CMP $0, R27
    BNE LBB0_328
    WORD $0x8b0802e8 // add    x8, x23, x8
    WORD $0x8b0f0108 // add    x8, x8, x15
    WORD $0xaa2f03ef // mvn    x15, x15
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0x8b1201ef // add    x15, x15, x18
    WORD $0xf10005ff // cmp    x15, #1
    BGE LBB0_331
    B LBB0_336
LBB0_234:
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xaa1f03fd // mov    fp, xzr
    WORD $0xaa1f03fa // mov    x26, xzr
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0xaa1f03f9 // mov    x25, xzr
    WORD $0xcb1801fb // sub    x27, x15, x24
    WORD $0x8b1802f8 // add    x24, x23, x24
    B LBB0_236
LBB0_235:
    WORD $0x9e67005e // fmov    d30, x2
    WORD $0x937ffe5d // asr    fp, x18, #63
    WORD $0x910081f8 // add    x24, x15, #32
    WORD $0xaa1703fb // mov    x27, x23
    WORD $0x0e205bde // cnt    v30.8b, v30.8b
    WORD $0x2e303bde // uaddlv    h30, v30.8b
    WORD $0x1e2603c2 // fmov    w2, s30
    WORD $0x8b080048 // add    x8, x2, x8
LBB0_236:
    WORD $0xf1010377 // subs    x23, x27, #64
    BLT LBB0_243
LBB0_237:
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0xa410431f // ld1b    { z31.b }, p0/z, [x24, x16]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2400a3c2 // cmpeq    p2.b, p0/z, z30.b, z0.b
    WORD $0x2400a3e3 // cmpeq    p3.b, p0/z, z31.b, z0.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0xa410431f // ld1b    { z31.b }, p0/z, [x24, x16]
    WORD $0xb94051cf // ldr    w15, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2401a3c2 // cmpeq    p2.b, p0/z, z30.b, z1.b
    WORD $0x2401a3e3 // cmpeq    p3.b, p0/z, z31.b, z1.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051d2 // ldr    w18, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0xaa028082 // orr    x2, x4, x2, lsl #32
    WORD $0xaa1a0044 // orr    x4, x2, x26
    CMP $0, R4
    BNE LBB0_239
    WORD $0xaa1f03fa // mov    x26, xzr
    WORD $0xaa1f03e2 // mov    x2, xzr
    B LBB0_240
LBB0_239:
    WORD $0x8a3a0044 // bic    x4, x2, x26
    WORD $0xaa040745 // orr    x5, x26, x4, lsl #1
    WORD $0x8a250042 // bic    x2, x2, x5
    WORD $0x9201f042 // and    x2, x2, #0xaaaaaaaaaaaaaaaa
    WORD $0xab040042 // adds    x2, x2, x4
    WORD $0xd37ff842 // lsl    x2, x2, #1
    WORD $0x1a9f37fa // cset    w26, hs
    WORD $0xd200f042 // eor    x2, x2, #0x5555555555555555
    WORD $0x8a050042 // and    x2, x2, x5
LBB0_240:
    WORD $0xaa1281ef // orr    x15, x15, x18, lsl #32
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x8a2201ef // bic    x15, x15, x2
    WORD $0x4e080dfe // dup    v30.2d, x15
    WORD $0x9202e1f2 // and    x18, x15, #0x4444444444444444
    WORD $0x9201e1ef // and    x15, x15, #0x8888888888888888
    WORD $0x4e080e5f // dup    v31.2d, x18
    WORD $0x4e080dea // dup    v10.2d, x15
    WORD $0x0420bfeb // movprfx    z11, z31
    WORD $0x04d0064b // mul    z11.d, p1/m, z11.d, z18.d
    WORD $0x0420bd4d // movprfx    z13, z10
    WORD $0x04d0070d // mul    z13.d, p1/m, z13.d, z24.d
    WORD $0x9100830f // add    x15, x24, #32
    WORD $0x4e321fde // and    v30.16b, v30.16b, v18.16b
    WORD $0x0420bfcc // movprfx    z12, z30
    WORD $0x04d006ac // mul    z12.d, p1/m, z12.d, z21.d
    WORD $0x6e2b1d8b // eor    v11.16b, v12.16b, v11.16b
    WORD $0x04d006ff // mul    z31.d, p1/m, z31.d, z23.d
    WORD $0x04d0072a // mul    z10.d, p1/m, z10.d, z25.d
    WORD $0x4e0807c8 // dup    v8.2d, v30.d[0]
    WORD $0x4e1807c9 // dup    v9.2d, v30.d[1]
    WORD $0x6e1e43de // ext    v30.16b, v30.16b, v30.16b, #8
    WORD $0x6e2a1fff // eor    v31.16b, v31.16b, v10.16b
    WORD $0xa400a30a // ld1b    { z10.b }, p0/z, [x24]
    WORD $0x04d00688 // mul    z8.d, p1/m, z8.d, z20.d
    WORD $0x04d006c9 // mul    z9.d, p1/m, z9.d, z22.d
    WORD $0x04d0067e // mul    z30.d, p1/m, z30.d, z19.d
    WORD $0x241ba142 // cmpeq    p2.b, p0/z, z10.b, z27.b
    WORD $0x6e291d08 // eor    v8.16b, v8.16b, v9.16b
    WORD $0x6e2d1d69 // eor    v9.16b, v11.16b, v13.16b
    WORD $0xa400a1eb // ld1b    { z11.b }, p0/z, [x15]
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x6e3f1d1f // eor    v31.16b, v8.16b, v31.16b
    WORD $0x6e291fde // eor    v30.16b, v30.16b, v9.16b
    WORD $0x241ba163 // cmpeq    p3.b, p0/z, z11.b, z27.b
    WORD $0x4e3a1fde // and    v30.16b, v30.16b, v26.16b
    WORD $0x4e341fff // and    v31.16b, v31.16b, v20.16b
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0xa400a1e8 // ld1b    { z8.b }, p0/z, [x15]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x4ebe1ffe // orr    v30.16b, v31.16b, v30.16b
    WORD $0xa400a31f // ld1b    { z31.b }, p0/z, [x24]
    WORD $0x2403a103 // cmpeq    p3.b, p0/z, z8.b, z3.b
    WORD $0x2403a3e2 // cmpeq    p2.b, p0/z, z31.b, z3.b
    WORD $0x6e1e43c9 // ext    v9.16b, v30.16b, v30.16b, #8
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x0ea91fde // orr    v30.8b, v30.8b, v9.8b
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051d2 // ldr    w18, [x14, #80]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xaa048042 // orr    x2, x2, x4, lsl #32
    WORD $0xb94051c5 // ldr    w5, [x14, #80]
    WORD $0xaa1280a5 // orr    x5, x5, x18, lsl #32
    WORD $0x9e6603d2 // fmov    x18, d30
    WORD $0xca1d0252 // eor    x18, x18, fp
    WORD $0xea3200b8 // bics    x24, x5, x18
    WORD $0x8a320042 // bic    x2, x2, x18
    BEQ LBB0_235
LBB0_241:
    WORD $0xd1000704 // sub    x4, x24, #1
    WORD $0x8a020085 // and    x5, x4, x2
    WORD $0x9e6700be // fmov    d30, x5
    WORD $0x0e205bde // cnt    v30.8b, v30.8b
    WORD $0x2e303bde // uaddlv    h30, v30.8b
    WORD $0x1e2603c5 // fmov    w5, s30
    WORD $0x8b0800a5 // add    x5, x5, x8
    WORD $0xeb1900bf // cmp    x5, x25
    BLS LBB0_260
    WORD $0xea180098 // ands    x24, x4, x24
    WORD $0x91000739 // add    x25, x25, #1
    BNE LBB0_241
    B LBB0_235
LBB0_243:
    WORD $0x910043ea // add    x10, sp, #16
    WORD $0xf100037f // cmp    x27, #0
    BLE LBB0_327
    WORD $0x92402f0f // and    x15, x24, #0xfff
    WORD $0xad00f3fc // stp    q28, q28, [sp, #16]
    WORD $0xf13f05ff // cmp    x15, #4033
    WORD $0xad01f3fc // stp    q28, q28, [sp, #48]
    BLO LBB0_259
    WORD $0xf1008372 // subs    x18, x27, #32
    BLO LBB0_247
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0x91008318 // add    x24, x24, #32
    WORD $0xe400e15e // st1b    { z30.b }, p0, [x10]
    WORD $0x043f502a // addvl    x10, sp, #1
    WORD $0xf940454f // ldr    x15, [x10, #136]
    B LBB0_248
LBB0_247:
    WORD $0x910043ef // add    x15, sp, #16
    WORD $0xaa1b03f2 // mov    x18, x27
LBB0_248:
    WORD $0xf1004242 // subs    x2, x18, #16
    BLO LBB0_254
    WORD $0x3cc1071e // ldr    q30, [x24], #16
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0x3c8105fe // str    q30, [x15], #16
    WORD $0xf1002042 // subs    x2, x2, #8
    BHS LBB0_255
LBB0_250:
    WORD $0xf1001242 // subs    x2, x18, #4
    BLO LBB0_256
LBB0_251:
    WORD $0xb8404712 // ldr    w18, [x24], #4
    WORD $0xb80045f2 // str    w18, [x15], #4
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0xf1000842 // subs    x2, x2, #2
    BHS LBB0_257
LBB0_252:
    CMP $0, R18_PLATFORM
    BEQ LBB0_258
LBB0_253:
    WORD $0x39400312 // ldrb    w18, [x24]
    WORD $0x910043f8 // add    x24, sp, #16
    WORD $0x390001f2 // strb    w18, [x15]
    B LBB0_259
LBB0_254:
    WORD $0xf1002242 // subs    x2, x18, #8
    BLO LBB0_250
LBB0_255:
    WORD $0xf8408712 // ldr    x18, [x24], #8
    WORD $0xf80085f2 // str    x18, [x15], #8
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0xf1001042 // subs    x2, x2, #4
    BHS LBB0_251
LBB0_256:
    WORD $0xf1000a42 // subs    x2, x18, #2
    BLO LBB0_252
LBB0_257:
    WORD $0x78402712 // ldrh    w18, [x24], #2
    WORD $0x780025f2 // strh    w18, [x15], #2
    WORD $0xaa0203f2 // mov    x18, x2
    CMP $0, R2
    BNE LBB0_253
LBB0_258:
    WORD $0x910043f8 // add    x24, sp, #16
LBB0_259:
    WORD $0x043f502a // addvl    x10, sp, #1
    WORD $0xf94007ed // ldr    x13, [sp, #8]
    WORD $0xf940454a // ldr    x10, [x10, #136]
    B LBB0_237
LBB0_260:
    WORD $0xdac00308 // rbit    x8, x24
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xdac01108 // clz    x8, x8
    WORD $0xcb1b0108 // sub    x8, x8, x27
    WORD $0x8b0f0108 // add    x8, x8, x15
    WORD $0x9100050f // add    x15, x8, #1
    WORD $0xf900002f // str    x15, [x1]
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xeb1201ff // cmp    x15, x18
    WORD $0x9a882658 // csinc    x24, x18, x8, hs
    WORD $0xf9000038 // str    x24, [x1]
    B LBB0_193
LBB0_261:
    WORD $0xdac00052 // rbit    x18, x2
    WORD $0x8b0f0108 // add    x8, x8, x15
    WORD $0xdac01252 // clz    x18, x18
    WORD $0x8b080248 // add    x8, x18, x8
    WORD $0x91000918 // add    x24, x8, #2
    WORD $0xf9000038 // str    x24, [x1]
    B LBB0_193
LBB0_262:
    WORD $0x5ac00088 // rbit    w8, w4
    WORD $0x5ac01108 // clz    w8, w8
    WORD $0xcb020118 // sub    x24, x8, x2
    WORD $0xf100071f // cmp    x24, #1
    WORD $0xf9000038 // str    x24, [x1]
    BLT LBB0_193
    WORD $0x8b0802ef // add    x15, x23, x8
    WORD $0xd10005ef // sub    x15, x15, #1
LBB0_264:
    WORD $0x387269e2 // ldrb    w2, [x15, x18]
    WORD $0x9ac22164 // lsl    x4, x11, x2
    WORD $0x7100805f // cmp    w2, #32
    WORD $0x8a0c0082 // and    x2, x4, x12
    WORD $0xfa409844 // ccmp    x2, #0, #4, ls
    BEQ LBB0_306
    WORD $0x8b120102 // add    x2, x8, x18
    WORD $0xd1000652 // sub    x18, x18, #1
    WORD $0x8b120118 // add    x24, x8, x18
    WORD $0xd1000442 // sub    x2, x2, #1
    WORD $0x91000704 // add    x4, x24, #1
    WORD $0xf9000022 // str    x2, [x1]
    WORD $0xf100049f // cmp    x4, #1
    BGT LBB0_264
    B LBB0_193
LBB0_266:
    WORD $0xaa0803f9 // mov    x25, x8
    WORD $0x8b0802e8 // add    x8, x23, x8
    WORD $0x8b1b035e // add    lr, x26, x27
    WORD $0xd100051d // sub    fp, x8, #1
    WORD $0xf9000bff // str    xzr, [sp, #16]
    WORD $0xeb1d031f // cmp    x24, fp
    BHS LBB0_304
    WORD $0xf100077f // cmp    x27, #1
    BLT LBB0_304
    ADR _UnquoteTab, R6
    WORD $0x910000c6 // add    x6, x6, :lo12:_UnquoteTab
LBB0_269:
    WORD $0x39400308 // ldrb    w8, [x24]
    WORD $0x7101711f // cmp    w8, #92
    BNE LBB0_274
    WORD $0xcb1803a8 // sub    x8, fp, x24
    WORD $0xf100051f // cmp    x8, #1
    BLT LBB0_1052
    WORD $0x3940070f // ldrb    w15, [x24, #1]
    WORD $0x386f68cf // ldrb    w15, [x6, x15]
    WORD $0x7103fdff // cmp    w15, #255
    BEQ LBB0_276
    CMP $0, R15
    BEQ LBB0_1050
    WORD $0x390043ef // strb    w15, [sp, #16]
    WORD $0x91000b18 // add    x24, x24, #2
    WORD $0x5280002f // mov    w15, #1
    B LBB0_285
LBB0_274:
    WORD $0x3940034f // ldrb    w15, [x26]
    WORD $0x6b0f011f // cmp    w8, w15
    BNE LBB0_308
    WORD $0x91000718 // add    x24, x24, #1
    WORD $0x9100075a // add    x26, x26, #1
    B LBB0_290
LBB0_276:
    WORD $0xf100111f // cmp    x8, #4
    BLO LBB0_1051
    WORD $0xb840230f // ldur    w15, [x24, #2]
    WORD $0x0b1301e2 // add    w2, w15, w19
    WORD $0x0a2f0292 // bic    w18, w20, w15
    WORD $0x6a02025f // tst    w18, w2
    BNE LBB0_1048
    WORD $0x0b1501e2 // add    w2, w15, w21
    WORD $0x2a0f0042 // orr    w2, w2, w15
    WORD $0x7201c05f // tst    w2, #0x80808080
    BNE LBB0_1048
    WORD $0x1200d9e2 // and    w2, w15, #0x7f7f7f7f
    WORD $0x4b0202c4 // sub    w4, w22, w2
    WORD $0x0b110045 // add    w5, w2, w17
    WORD $0x0a0400a4 // and    w4, w5, w4
    WORD $0x6a12009f // tst    w4, w18
    BNE LBB0_1048
    WORD $0x4b020144 // sub    w4, w10, w2
    WORD $0x0b0d0042 // add    w2, w2, w13
    WORD $0x0a040042 // and    w2, w2, w4
    WORD $0x6a12005f // tst    w2, w18
    BNE LBB0_1048
    WORD $0x5ac009ef // rev    w15, w15
    WORD $0x0a6f11d2 // bic    w18, w14, w15, lsr #4
    WORD $0x1200cdef // and    w15, w15, #0xf0f0f0f
    WORD $0x2a120e52 // orr    w18, w18, w18, lsl #3
    WORD $0x0b0f024f // add    w15, w18, w15
    WORD $0x91001b12 // add    x18, x24, #6
    WORD $0x2a4f11e2 // orr    w2, w15, w15, lsr #4
    WORD $0x53087c4f // lsr    w15, w2, #8
    WORD $0x12181de4 // and    w4, w15, #0xff00
    WORD $0x2a0403ef // mov    w15, w4
    WORD $0x33001c4f // bfxil    w15, w2, #0, #8
    WORD $0x7101fdff // cmp    w15, #127
    BLS LBB0_292
    WORD $0x711ffdff // cmp    w15, #2047
    BLS LBB0_293
    WORD $0x51403885 // sub    w5, w4, #14, lsl #12
    WORD $0x312004bf // cmn    w5, #2049
    BHI LBB0_294
    WORD $0x530c7c88 // lsr    w8, w4, #12
    WORD $0x52801004 // mov    w4, #128
    WORD $0x52801005 // mov    w5, #128
    WORD $0x33062de4 // bfxil    w4, w15, #6, #6
    WORD $0x33001445 // bfxil    w5, w2, #0, #6
    WORD $0xaa1203f8 // mov    x24, x18
    WORD $0x321b0908 // orr    w8, w8, #0xe0
    WORD $0x5280006f // mov    w15, #3
    WORD $0x390043e8 // strb    w8, [sp, #16]
    WORD $0x390047e4 // strb    w4, [sp, #17]
    WORD $0x39004be5 // strb    w5, [sp, #18]
LBB0_285:
    WORD $0x910043e8 // add    x8, sp, #16
    WORD $0xeb1e035f // cmp    x26, lr
    WORD $0xaa0f010f // orr    x15, x8, x15
    BHS LBB0_289
LBB0_286:
    WORD $0x39400352 // ldrb    w18, [x26]
    WORD $0x39400102 // ldrb    w2, [x8]
    WORD $0x6b02025f // cmp    w18, w2
    BNE LBB0_289
    WORD $0x9100075a // add    x26, x26, #1
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0xeb1e035f // cmp    x26, lr
    BHS LBB0_289
    WORD $0xeb0f011f // cmp    x8, x15
    BLO LBB0_286
LBB0_289:
    WORD $0xeb0f011f // cmp    x8, x15
    ADR _UnquoteTab, R6
    WORD $0x910000c6 // add    x6, x6, :lo12:_UnquoteTab
    BNE LBB0_309
LBB0_290:
    WORD $0xeb1d031f // cmp    x24, fp
    BHS LBB0_304
    WORD $0xeb1e035f // cmp    x26, lr
    BLO LBB0_269
    B LBB0_304
LBB0_292:
    WORD $0x390043e2 // strb    w2, [sp, #16]
    WORD $0xaa1203f8 // mov    x24, x18
    WORD $0x5280002f // mov    w15, #1
    B LBB0_285
LBB0_293:
    WORD $0x53067de8 // lsr    w8, w15, #6
    WORD $0x5280100f // mov    w15, #128
    WORD $0xaa1203f8 // mov    x24, x18
    WORD $0x3300144f // bfxil    w15, w2, #0, #6
    WORD $0x321a0508 // orr    w8, w8, #0xc0
    WORD $0x390043e8 // strb    w8, [sp, #16]
    WORD $0x390047ef // strb    w15, [sp, #17]
    WORD $0x5280004f // mov    w15, #2
    B LBB0_285
LBB0_294:
    WORD $0xf100191f // cmp    x8, #6
    WORD $0x92800068 // mov    x8, #-4
    BLO LBB0_1066
    WORD $0x530a7de2 // lsr    w2, w15, #10
    WORD $0x7100d85f // cmp    w2, #54
    BHI LBB0_1066
    WORD $0x39400248 // ldrb    w8, [x18]
    WORD $0x7101711f // cmp    w8, #92
    BNE LBB0_1065
    WORD $0x39401f08 // ldrb    w8, [x24, #7]
    WORD $0x7101d51f // cmp    w8, #117
    BNE LBB0_1065
    WORD $0xb9400b08 // ldr    w8, [x24, #8]
    WORD $0x0b130102 // add    w2, w8, w19
    WORD $0x0a280292 // bic    w18, w20, w8
    WORD $0x6a02025f // tst    w18, w2
    BNE LBB0_1064
    WORD $0x0b150102 // add    w2, w8, w21
    WORD $0x2a080042 // orr    w2, w2, w8
    WORD $0x7201c05f // tst    w2, #0x80808080
    BNE LBB0_1064
    WORD $0x1200d902 // and    w2, w8, #0x7f7f7f7f
    WORD $0x4b0202c4 // sub    w4, w22, w2
    WORD $0x0b110045 // add    w5, w2, w17
    WORD $0x0a0400a4 // and    w4, w5, w4
    WORD $0x6a12009f // tst    w4, w18
    BNE LBB0_1064
    WORD $0x4b020144 // sub    w4, w10, w2
    WORD $0x0b0d0042 // add    w2, w2, w13
    WORD $0x0a040042 // and    w2, w2, w4
    WORD $0x6a12005f // tst    w2, w18
    BNE LBB0_1064
    WORD $0x5ac00908 // rev    w8, w8
    WORD $0x0a6811d2 // bic    w18, w14, w8, lsr #4
    WORD $0x1200cd08 // and    w8, w8, #0xf0f0f0f
    WORD $0x2a120e52 // orr    w18, w18, w18, lsl #3
    WORD $0x0b080248 // add    w8, w18, w8
    WORD $0x2a481108 // orr    w8, w8, w8, lsr #4
    WORD $0x53087d12 // lsr    w18, w8, #8
    WORD $0x12181e52 // and    w18, w18, #0xff00
    WORD $0x51403a42 // sub    w2, w18, #14, lsl #12
    WORD $0x3110005f // cmn    w2, #1024
    BLO LBB0_1067
    WORD $0x12001d02 // and    w2, w8, #0xff
    WORD $0x0b070252 // add    w18, w18, w7
    WORD $0x91003318 // add    x24, x24, #12
    WORD $0x2a0f284f // orr    w15, w2, w15, lsl #10
    WORD $0x52801002 // mov    w2, #128
    WORD $0x0b1201ef // add    w15, w15, w18
    WORD $0x52801012 // mov    w18, #128
    WORD $0x330c45e2 // bfxil    w2, w15, #12, #6
    WORD $0x33062df2 // bfxil    w18, w15, #6, #6
    WORD $0x53127def // lsr    w15, w15, #18
    WORD $0x390047e2 // strb    w2, [sp, #17]
    WORD $0x52801002 // mov    w2, #128
    WORD $0x33001502 // bfxil    w2, w8, #0, #6
    WORD $0x321c0de8 // orr    w8, w15, #0xf0
    WORD $0x5280008f // mov    w15, #4
    WORD $0x39004bf2 // strb    w18, [sp, #18]
    WORD $0x390043e8 // strb    w8, [sp, #16]
    WORD $0x39004fe2 // strb    w2, [sp, #19]
    B LBB0_285
LBB0_304:
    WORD $0xeb1d031f // cmp    x24, fp
    WORD $0xfa5e0340 // ccmp    x26, lr, #0, eq
    WORD $0x1a9f17ef // cset    w15, eq
LBB0_305:
    WORD $0xaa1903e8 // mov    x8, x25
    B LBB0_69
LBB0_306:
    WORD $0x8b120118 // add    x24, x8, x18
    B LBB0_193
LBB0_307:
    WORD $0x8b1802e8 // add    x8, x23, x24
    WORD $0xf10005ff // cmp    x15, #1
    BGE LBB0_331
    B LBB0_336
LBB0_308:
    WORD $0xaa1f03ef // mov    x15, xzr
    B LBB0_305
LBB0_309:
    WORD $0xaa1f03ef // mov    x15, xzr
    WORD $0xaa1903e8 // mov    x8, x25
    B LBB0_70
LBB0_310:
    WORD $0xb10007df // cmn    lr, #1
    BNE LBB0_312
    WORD $0xdac00044 // rbit    x4, x2
    WORD $0xcb1700c5 // sub    x5, x6, x23
    WORD $0xdac01084 // clz    x4, x4
    WORD $0x8b0400be // add    lr, x5, x4
LBB0_312:
    WORD $0x0a2f0044 // bic    w4, w2, w15
    WORD $0x531f7885 // lsl    w5, w4, #1
    WORD $0x331f788f // bfi    w15, w4, #1, #31
    WORD $0x0a250042 // bic    w2, w2, w5
    WORD $0x1201f042 // and    w2, w2, #0xaaaaaaaa
    WORD $0x2b040042 // adds    w2, w2, w4
    WORD $0x531f7842 // lsl    w2, w2, #1
    WORD $0x5200f042 // eor    w2, w2, #0x55555555
    WORD $0x0a0f004f // and    w15, w2, w15
    WORD $0x1a9f37e2 // cset    w2, hs
    WORD $0x2a2f03ef // mvn    w15, w15
    WORD $0x8a0801e8 // and    x8, x15, x8
    WORD $0xaa0203ef // mov    x15, x2
    CMP $0, R8
    BNE LBB0_224
LBB0_313:
    WORD $0x910080c6 // add    x6, x6, #32
    WORD $0xaa1d03e8 // mov    x8, fp
LBB0_314:
    CMP $0, R15
    BNE LBB0_325
    CMP $0, R8
    BEQ LBB0_323
LBB0_316:
    WORD $0xaa3703ef // mvn    x15, x23
LBB0_317:
    WORD $0xaa0603fd // mov    fp, x6
    WORD $0x384017a2 // ldrb    w2, [fp], #1
    WORD $0x7100885f // cmp    w2, #34
    BEQ LBB0_324
    WORD $0x7101705f // cmp    w2, #92
    WORD $0xd1000504 // sub    x4, x8, #1
    BEQ LBB0_320
    WORD $0xaa1d03e6 // mov    x6, fp
    WORD $0xaa0403e8 // mov    x8, x4
    CMP $0, R4
    BNE LBB0_317
    B LBB0_322
LBB0_320:
    CMP $0, R4
    BEQ LBB0_1029
    WORD $0x8b0f03a4 // add    x4, fp, x15
    WORD $0xb10007df // cmn    lr, #1
    WORD $0x910008c6 // add    x6, x6, #2
    WORD $0x9a9e009e // csel    lr, x4, lr, eq
    WORD $0xd1000904 // sub    x4, x8, #2
    WORD $0xaa0403e8 // mov    x8, x4
    CMP $0, R4
    BNE LBB0_317
LBB0_322:
    WORD $0x7100885f // cmp    w2, #34
    BNE LBB0_1029
LBB0_323:
    WORD $0xaa0603fd // mov    fp, x6
LBB0_324:
    WORD $0xcb1703a8 // sub    x8, fp, x23
    TST $(1<<63), R8
    BEQ LBB0_61
    B LBB0_1029
LBB0_325:
    CMP $0, R8
    BEQ LBB0_1029
    WORD $0xaa3703ef // mvn    x15, x23
    WORD $0xb10007df // cmn    lr, #1
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x8b0f00cf // add    x15, x6, x15
    WORD $0x910004c6 // add    x6, x6, #1
    WORD $0x9a9e01fe // csel    lr, x15, lr, eq
    CMP $0, R8
    BNE LBB0_316
    B LBB0_323
LBB0_327:
    WORD $0xf9400418 // ldr    x24, [x0, #8]
    B LBB0_335
LBB0_328:
    WORD $0xd1000642 // sub    x2, x18, #1
    WORD $0xeb0f005f // cmp    x2, x15
    BEQ LBB0_336
    WORD $0x8b0802e8 // add    x8, x23, x8
    WORD $0x8b0f0108 // add    x8, x8, x15
    WORD $0xcb0f024f // sub    x15, x18, x15
    WORD $0x91000908 // add    x8, x8, #2
    WORD $0xd10009ef // sub    x15, x15, #2
    WORD $0xf10005ff // cmp    x15, #1
    BGE LBB0_331
    B LBB0_336
LBB0_330:
    WORD $0x92800032 // mov    x18, #-2
    WORD $0x52800042 // mov    w2, #2
    WORD $0xab1201ef // adds    x15, x15, x18
    WORD $0x8b020108 // add    x8, x8, x2
    BLE LBB0_336
LBB0_331:
    WORD $0x39400112 // ldrb    w18, [x8]
    WORD $0x7101725f // cmp    w18, #92
    BEQ LBB0_330
    WORD $0x71008a5f // cmp    w18, #34
    BEQ LBB0_334
    WORD $0x92800012 // mov    x18, #-1
    WORD $0x52800022 // mov    w2, #1
    WORD $0xab1201ef // adds    x15, x15, x18
    WORD $0x8b020108 // add    x8, x8, x2
    BGT LBB0_331
    B LBB0_336
LBB0_334:
    WORD $0xcb170108 // sub    x8, x8, x23
    WORD $0x91000518 // add    x24, x8, #1
LBB0_335:
    WORD $0xf9000038 // str    x24, [x1]
LBB0_336:
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0xf94007ed // ldr    x13, [sp, #8]
    WORD $0xf940450a // ldr    x10, [x8, #136]
    B LBB0_193
LBB0_337:
    WORD $0x71016d1f // cmp    w8, #91
    BNE LBB0_940
    WORD $0xf9400528 // ldr    x8, [x9, #8]
    WORD $0xf9400108 // ldr    x8, [x8]
    TST $(1<<63), R8
    BNE LBB0_903
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xeb0f035f // cmp    x26, x15
    BHS LBB0_344
    WORD $0x387a6af2 // ldrb    w18, [x23, x26]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_344
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_344
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BHS LBB0_344
    WORD $0xaa1a03f9 // mov    x25, x26
    B LBB0_361
LBB0_344:
    WORD $0x91000759 // add    x25, x26, #1
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_348
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_348
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_348
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_361
LBB0_348:
    WORD $0x91000b59 // add    x25, x26, #2
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_352
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_352
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_352
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_361
LBB0_352:
    WORD $0x91000f59 // add    x25, x26, #3
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_356
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_356
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_356
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_361
LBB0_356:
    WORD $0x91001359 // add    x25, x26, #4
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_359
LBB0_357:
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x9ad22162 // lsl    x2, x11, x18
    WORD $0x7100825f // cmp    w18, #32
    WORD $0x8a0c0052 // and    x18, x2, x12
    WORD $0xfa409a44 // ccmp    x18, #0, #4, ls
    BEQ LBB0_360
    WORD $0x91000739 // add    x25, x25, #1
    WORD $0xeb1901ff // cmp    x15, x25
    BNE LBB0_357
    B LBB0_362
LBB0_359:
    WORD $0xaa1903fa // mov    x26, x25
    B LBB0_362
LBB0_360:
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_362
LBB0_361:
    WORD $0x9100073a // add    x26, x25, #1
    WORD $0xf900003a // str    x26, [x1]
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x710175ff // cmp    w15, #93
    BEQ LBB0_906
LBB0_362:
    WORD $0xd1000758 // sub    x24, x26, #1
    WORD $0xf9000038 // str    x24, [x1]
LBB0_363:
    WORD $0xf1000508 // subs    x8, x8, #1
    BLT LBB0_528
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xeb0f031f // cmp    x24, x15
    BHS LBB0_369
    WORD $0x38786af2 // ldrb    w18, [x23, x24]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_369
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_369
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BHS LBB0_369
    WORD $0xaa1803f9 // mov    x25, x24
    B LBB0_385
LBB0_369:
    WORD $0x91000719 // add    x25, x24, #1
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_373
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_373
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_373
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_385
LBB0_373:
    WORD $0x91000b19 // add    x25, x24, #2
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_377
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_377
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_377
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_385
LBB0_377:
    WORD $0x91000f19 // add    x25, x24, #3
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_381
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_381
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_381
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_385
LBB0_381:
    WORD $0x91001319 // add    x25, x24, #4
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_421
LBB0_382:
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x9ad22162 // lsl    x2, x11, x18
    WORD $0x7100825f // cmp    w18, #32
    WORD $0x8a0c0052 // and    x18, x2, x12
    WORD $0xfa409a44 // ccmp    x18, #0, #4, ls
    BEQ LBB0_384
    WORD $0x91000739 // add    x25, x25, #1
    WORD $0xeb1901ff // cmp    x15, x25
    BNE LBB0_382
    B LBB0_422
LBB0_384:
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_422
LBB0_385:
    WORD $0x91000738 // add    x24, x25, #1
    WORD $0xf9000038 // str    x24, [x1]
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x710169ff // cmp    w15, #90
    BGT LBB0_410
    WORD $0x7100bdff // cmp    w15, #47
    BLE LBB0_415
    WORD $0x5100c1ef // sub    w15, w15, #48
    WORD $0x710029ff // cmp    w15, #10
    BHS LBB0_421
LBB0_388:
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xcb1801ef // sub    x15, x15, x24
    WORD $0xf10081ff // cmp    x15, #32
    BLO LBB0_392
    WORD $0xaa1f03f2 // mov    x18, xzr
LBB0_390:
    WORD $0xa41842fe // ld1b    { z30.b }, p0/z, [x23, x24]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2402a3c2 // cmpeq    p2.b, p0/z, z30.b, z2.b
    WORD $0x2403a3c3 // cmpeq    p3.b, p0/z, z30.b, z3.b
    WORD $0x2404a3c4 // cmpeq    p4.b, p0/z, z30.b, z4.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0xe58015c4 // str    p4, [x14, #5, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0x047f50ae // addpl    x14, sp, #5
    WORD $0xb94051c5 // ldr    w5, [x14, #80]
    WORD $0x2a020082 // orr    w2, w4, w2
    WORD $0x2a050042 // orr    w2, w2, w5
    CMP $0, R2
    BNE LBB0_405
    WORD $0xd10081ef // sub    x15, x15, #32
    WORD $0x91008318 // add    x24, x24, #32
    WORD $0x91008252 // add    x18, x18, #32
    WORD $0xf1007dff // cmp    x15, #31
    BHI LBB0_390
LBB0_392:
    WORD $0x8b1802f2 // add    x18, x23, x24
    WORD $0xf10041ff // cmp    x15, #16
    BLO LBB0_396
    WORD $0xcb1202e2 // sub    x2, x23, x18
    WORD $0xcb170259 // sub    x25, x18, x23
LBB0_394:
    WORD $0x3dc0025e // ldr    q30, [x18]
    WORD $0x4e261fdf // and    v31.16b, v30.16b, v6.16b
    WORD $0x6e258fde // cmeq    v30.16b, v30.16b, v5.16b
    WORD $0x6e278fff // cmeq    v31.16b, v31.16b, v7.16b
    WORD $0x4ebe1ffe // orr    v30.16b, v31.16b, v30.16b
    WORD $0x4e301fde // and    v30.16b, v30.16b, v16.16b
    WORD $0x4e1103de // tbl    v30.16b, { v30.16b }, v17.16b
    WORD $0x4e71bbde // addv    h30, v30.8h
    WORD $0x1e2603c4 // fmov    w4, s30
    CMP $0, R4
    BNE LBB0_512
    WORD $0xd10041ef // sub    x15, x15, #16
    WORD $0x91004252 // add    x18, x18, #16
    WORD $0xd1004042 // sub    x2, x2, #16
    WORD $0xf1003dff // cmp    x15, #15
    WORD $0x91004339 // add    x25, x25, #16
    BHI LBB0_394
LBB0_396:
    WORD $0xaa0603e7 // mov    x7, x6
    CMP $0, R15
    BEQ LBB0_404
    WORD $0xd284c006 // mov    x6, #9728
    WORD $0x8b0f0242 // add    x2, x18, x15
    WORD $0xcb170258 // sub    x24, x18, x23
    WORD $0xf2c20026 // movk    x6, #4097, lsl #32
LBB0_398:
    WORD $0x39400244 // ldrb    w4, [x18]
    WORD $0x7100b09f // cmp    w4, #44
    BHI LBB0_400
    WORD $0x9ac42165 // lsl    x5, x11, x4
    WORD $0xea0600bf // tst    x5, x6
    BNE LBB0_511
LBB0_400:
    WORD $0x7101f49f // cmp    w4, #125
    BEQ LBB0_511
    WORD $0x7101749f // cmp    w4, #93
    BEQ LBB0_511
    WORD $0xf10005ef // subs    x15, x15, #1
    WORD $0x91000652 // add    x18, x18, #1
    WORD $0x91000718 // add    x24, x24, #1
    BNE LBB0_398
    WORD $0xaa0203f2 // mov    x18, x2
LBB0_404:
    WORD $0xcb170258 // sub    x24, x18, x23
    B LBB0_511
LBB0_405:
    WORD $0x5ac0004f // rbit    w15, w2
    WORD $0x5ac011ef // clz    w15, w15
    WORD $0x8b1801f8 // add    x24, x15, x24
    WORD $0xf100071f // cmp    x24, #1
    WORD $0xf9000038 // str    x24, [x1]
    BLT LBB0_422
    WORD $0x8b1201ef // add    x15, x15, x18
    WORD $0x8b1902f2 // add    x18, x23, x25
LBB0_407:
    WORD $0x386f6a42 // ldrb    w2, [x18, x15]
    WORD $0x9ac22164 // lsl    x4, x11, x2
    WORD $0x7100805f // cmp    w2, #32
    WORD $0x8a0c0082 // and    x2, x4, x12
    WORD $0xfa409844 // ccmp    x2, #0, #4, ls
    BEQ LBB0_472
    WORD $0x8b0f0324 // add    x4, x25, x15
    WORD $0xd10005ef // sub    x15, x15, #1
    WORD $0x8b0f0322 // add    x2, x25, x15
    WORD $0xf9000024 // str    x4, [x1]
    WORD $0x91000845 // add    x5, x2, #2
    WORD $0xf10004bf // cmp    x5, #1
    BGT LBB0_407
    WORD $0x91000458 // add    x24, x2, #1
    B LBB0_422
LBB0_410:
    WORD $0x7101b5ff // cmp    w15, #109
    BLE LBB0_418
    WORD $0x7101b9ff // cmp    w15, #110
    BEQ LBB0_469
    WORD $0x7101d1ff // cmp    w15, #116
    BEQ LBB0_469
    WORD $0x7101edff // cmp    w15, #123
    BNE LBB0_421
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xaa1f03fe // mov    lr, xzr
    WORD $0xaa1f03fb // mov    x27, xzr
    WORD $0xaa1f03f9 // mov    x25, xzr
    WORD $0xaa1f03fa // mov    x26, xzr
    WORD $0xcb1801fd // sub    fp, x15, x24
    WORD $0x8b1802f8 // add    x24, x23, x24
    B LBB0_445
LBB0_415:
    CMP $0, R15
    BEQ LBB0_422
    WORD $0x710089ff // cmp    w15, #34
    BEQ LBB0_473
    WORD $0x7100b5ff // cmp    w15, #45
    BEQ LBB0_388
    B LBB0_421
LBB0_418:
    WORD $0x71016dff // cmp    w15, #91
    BEQ LBB0_483
    WORD $0x710199ff // cmp    w15, #102
    BNE LBB0_421
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0x9100172f // add    x15, x25, #5
    B LBB0_470
LBB0_421:
    WORD $0xf9000039 // str    x25, [x1]
    WORD $0xaa1903f8 // mov    x24, x25
LBB0_422:
    WORD $0xa9403c17 // ldp    x23, x15, [x0]
    WORD $0xeb0f031f // cmp    x24, x15
    BHS LBB0_427
    WORD $0x38786af2 // ldrb    w18, [x23, x24]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_427
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_427
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BHS LBB0_427
    WORD $0xaa1803f9 // mov    x25, x24
    B LBB0_443
LBB0_427:
    WORD $0x91000719 // add    x25, x24, #1
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_431
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_431
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_431
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_443
LBB0_431:
    WORD $0x91000b19 // add    x25, x24, #2
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_435
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_435
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_435
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_443
LBB0_435:
    WORD $0x91000f19 // add    x25, x24, #3
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_439
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_439
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_439
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_443
LBB0_439:
    WORD $0x91001319 // add    x25, x24, #4
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_904
LBB0_440:
    WORD $0x38796af2 // ldrb    w18, [x23, x25]
    WORD $0x9ad22162 // lsl    x2, x11, x18
    WORD $0x7100825f // cmp    w18, #32
    WORD $0x8a0c0052 // and    x18, x2, x12
    WORD $0xfa409a44 // ccmp    x18, #0, #4, ls
    BEQ LBB0_442
    WORD $0x91000739 // add    x25, x25, #1
    WORD $0xeb1901ff // cmp    x15, x25
    BNE LBB0_440
    B LBB0_940
LBB0_442:
    WORD $0xeb0f033f // cmp    x25, x15
    BHS LBB0_940
LBB0_443:
    WORD $0x91000738 // add    x24, x25, #1
    WORD $0xf9000038 // str    x24, [x1]
    WORD $0x38796aef // ldrb    w15, [x23, x25]
    WORD $0x7100b1ff // cmp    w15, #44
    BEQ LBB0_363
    B LBB0_905
LBB0_444:
    WORD $0x9e67005e // fmov    d30, x2
    WORD $0x937ffe5e // asr    lr, x18, #63
    WORD $0x910081f8 // add    x24, x15, #32
    WORD $0xaa1703fd // mov    fp, x23
    WORD $0x0e205bde // cnt    v30.8b, v30.8b
    WORD $0x2e303bde // uaddlv    h30, v30.8b
    WORD $0x1e2603c2 // fmov    w2, s30
    WORD $0x8b190059 // add    x25, x2, x25
LBB0_445:
    WORD $0xf10103b7 // subs    x23, fp, #64
    BLT LBB0_452
LBB0_446:
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0xa410431f // ld1b    { z31.b }, p0/z, [x24, x16]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2400a3c2 // cmpeq    p2.b, p0/z, z30.b, z0.b
    WORD $0x2400a3e3 // cmpeq    p3.b, p0/z, z31.b, z0.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0xa410431f // ld1b    { z31.b }, p0/z, [x24, x16]
    WORD $0xb94051cf // ldr    w15, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2401a3c2 // cmpeq    p2.b, p0/z, z30.b, z1.b
    WORD $0x2401a3e3 // cmpeq    p3.b, p0/z, z31.b, z1.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051d2 // ldr    w18, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0xaa028082 // orr    x2, x4, x2, lsl #32
    WORD $0xaa1b0044 // orr    x4, x2, x27
    CMP $0, R4
    BNE LBB0_448
    WORD $0xaa1f03fb // mov    x27, xzr
    WORD $0xaa1f03e2 // mov    x2, xzr
    B LBB0_449
LBB0_448:
    WORD $0x8a3b0044 // bic    x4, x2, x27
    WORD $0xaa040765 // orr    x5, x27, x4, lsl #1
    WORD $0x8a250042 // bic    x2, x2, x5
    WORD $0x9201f042 // and    x2, x2, #0xaaaaaaaaaaaaaaaa
    WORD $0xab040042 // adds    x2, x2, x4
    WORD $0xd37ff842 // lsl    x2, x2, #1
    WORD $0x1a9f37fb // cset    w27, hs
    WORD $0xd200f042 // eor    x2, x2, #0x5555555555555555
    WORD $0x8a050042 // and    x2, x2, x5
LBB0_449:
    WORD $0xaa1281ef // orr    x15, x15, x18, lsl #32
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x8a2201ef // bic    x15, x15, x2
    WORD $0x4e080dfe // dup    v30.2d, x15
    WORD $0x9202e1f2 // and    x18, x15, #0x4444444444444444
    WORD $0x9201e1ef // and    x15, x15, #0x8888888888888888
    WORD $0x4e080e5f // dup    v31.2d, x18
    WORD $0x4e080dea // dup    v10.2d, x15
    WORD $0x0420bfeb // movprfx    z11, z31
    WORD $0x04d0064b // mul    z11.d, p1/m, z11.d, z18.d
    WORD $0x0420bd4d // movprfx    z13, z10
    WORD $0x04d0070d // mul    z13.d, p1/m, z13.d, z24.d
    WORD $0x9100830f // add    x15, x24, #32
    WORD $0x4e321fde // and    v30.16b, v30.16b, v18.16b
    WORD $0x0420bfcc // movprfx    z12, z30
    WORD $0x04d006ac // mul    z12.d, p1/m, z12.d, z21.d
    WORD $0x6e2b1d8b // eor    v11.16b, v12.16b, v11.16b
    WORD $0x04d006ff // mul    z31.d, p1/m, z31.d, z23.d
    WORD $0x04d0072a // mul    z10.d, p1/m, z10.d, z25.d
    WORD $0x4e0807c8 // dup    v8.2d, v30.d[0]
    WORD $0x4e1807c9 // dup    v9.2d, v30.d[1]
    WORD $0x6e1e43de // ext    v30.16b, v30.16b, v30.16b, #8
    WORD $0x6e2a1fff // eor    v31.16b, v31.16b, v10.16b
    WORD $0xa400a30a // ld1b    { z10.b }, p0/z, [x24]
    WORD $0x04d00688 // mul    z8.d, p1/m, z8.d, z20.d
    WORD $0x04d006c9 // mul    z9.d, p1/m, z9.d, z22.d
    WORD $0x04d0067e // mul    z30.d, p1/m, z30.d, z19.d
    WORD $0x241da142 // cmpeq    p2.b, p0/z, z10.b, z29.b
    WORD $0x6e291d08 // eor    v8.16b, v8.16b, v9.16b
    WORD $0x6e2d1d69 // eor    v9.16b, v11.16b, v13.16b
    WORD $0xa400a1eb // ld1b    { z11.b }, p0/z, [x15]
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x6e3f1d1f // eor    v31.16b, v8.16b, v31.16b
    WORD $0x6e291fde // eor    v30.16b, v30.16b, v9.16b
    WORD $0x241da163 // cmpeq    p3.b, p0/z, z11.b, z29.b
    WORD $0x4e3a1fde // and    v30.16b, v30.16b, v26.16b
    WORD $0x4e341fff // and    v31.16b, v31.16b, v20.16b
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0xa400a1e8 // ld1b    { z8.b }, p0/z, [x15]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x4ebe1ffe // orr    v30.16b, v31.16b, v30.16b
    WORD $0xa400a31f // ld1b    { z31.b }, p0/z, [x24]
    WORD $0x2402a103 // cmpeq    p3.b, p0/z, z8.b, z2.b
    WORD $0x2402a3e2 // cmpeq    p2.b, p0/z, z31.b, z2.b
    WORD $0x6e1e43c9 // ext    v9.16b, v30.16b, v30.16b, #8
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x0ea91fde // orr    v30.8b, v30.8b, v9.8b
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051d2 // ldr    w18, [x14, #80]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xaa048042 // orr    x2, x2, x4, lsl #32
    WORD $0xb94051c5 // ldr    w5, [x14, #80]
    WORD $0xaa1280a5 // orr    x5, x5, x18, lsl #32
    WORD $0x9e6603d2 // fmov    x18, d30
    WORD $0xca1e0252 // eor    x18, x18, lr
    WORD $0xea3200b8 // bics    x24, x5, x18
    WORD $0x8a320042 // bic    x2, x2, x18
    BEQ LBB0_444
LBB0_450:
    WORD $0xd1000704 // sub    x4, x24, #1
    WORD $0x8a020085 // and    x5, x4, x2
    WORD $0x9e6700be // fmov    d30, x5
    WORD $0x0e205bde // cnt    v30.8b, v30.8b
    WORD $0x2e303bde // uaddlv    h30, v30.8b
    WORD $0x1e2603c5 // fmov    w5, s30
    WORD $0x8b1900a5 // add    x5, x5, x25
    WORD $0xeb1a00bf // cmp    x5, x26
    BLS LBB0_509
    WORD $0xea180098 // ands    x24, x4, x24
    WORD $0x9100075a // add    x26, x26, #1
    BNE LBB0_450
    B LBB0_444
LBB0_452:
    WORD $0xaa0d03ee // mov    x14, x13
    WORD $0xaa0a03ed // mov    x13, x10
    WORD $0x910043ea // add    x10, sp, #16
    WORD $0xf10003bf // cmp    fp, #0
    BLE LBB0_524
    WORD $0x92402f0f // and    x15, x24, #0xfff
    WORD $0xad00f3fc // stp    q28, q28, [sp, #16]
    WORD $0xf13f05ff // cmp    x15, #4033
    WORD $0xad01f3fc // stp    q28, q28, [sp, #48]
    BLO LBB0_468
    WORD $0xf10083b2 // subs    x18, fp, #32
    BLO LBB0_456
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0x91008318 // add    x24, x24, #32
    WORD $0xaa0d03ef // mov    x15, x13
    WORD $0xe400e15e // st1b    { z30.b }, p0, [x10]
    B LBB0_457
LBB0_456:
    WORD $0x910043ef // add    x15, sp, #16
    WORD $0xaa1d03f2 // mov    x18, fp
LBB0_457:
    WORD $0xf1004242 // subs    x2, x18, #16
    BLO LBB0_463
    WORD $0x3cc1071e // ldr    q30, [x24], #16
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0x3c8105fe // str    q30, [x15], #16
    WORD $0xf1002042 // subs    x2, x2, #8
    BHS LBB0_464
LBB0_459:
    WORD $0xf1001242 // subs    x2, x18, #4
    BLO LBB0_465
LBB0_460:
    WORD $0xb8404712 // ldr    w18, [x24], #4
    WORD $0xb80045f2 // str    w18, [x15], #4
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0xf1000842 // subs    x2, x2, #2
    BHS LBB0_466
LBB0_461:
    CMP $0, R18_PLATFORM
    BEQ LBB0_467
LBB0_462:
    WORD $0x39400312 // ldrb    w18, [x24]
    WORD $0x910043f8 // add    x24, sp, #16
    WORD $0x390001f2 // strb    w18, [x15]
    B LBB0_468
LBB0_463:
    WORD $0xf1002242 // subs    x2, x18, #8
    BLO LBB0_459
LBB0_464:
    WORD $0xf8408712 // ldr    x18, [x24], #8
    WORD $0xf80085f2 // str    x18, [x15], #8
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0xf1001042 // subs    x2, x2, #4
    BHS LBB0_460
LBB0_465:
    WORD $0xf1000a42 // subs    x2, x18, #2
    BLO LBB0_461
LBB0_466:
    WORD $0x78402712 // ldrh    w18, [x24], #2
    WORD $0x780025f2 // strh    w18, [x15], #2
    WORD $0xaa0203f2 // mov    x18, x2
    CMP $0, R2
    BNE LBB0_462
LBB0_467:
    WORD $0x910043f8 // add    x24, sp, #16
LBB0_468:
    WORD $0xaa0d03ea // mov    x10, x13
    WORD $0xaa0e03ed // mov    x13, x14
    B LBB0_446
LBB0_469:
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0x9100132f // add    x15, x25, #4
LBB0_470:
    WORD $0xeb1201ff // cmp    x15, x18
    BHI LBB0_422
    WORD $0xf900002f // str    x15, [x1]
    WORD $0xaa0f03f8 // mov    x24, x15
    B LBB0_422
LBB0_472:
    WORD $0x8b0f032f // add    x15, x25, x15
    WORD $0x910005f8 // add    x24, x15, #1
    B LBB0_422
LBB0_473:
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xcb18024f // sub    x15, x18, x24
    WORD $0xf10081ff // cmp    x15, #32
    BLT LBB0_517
    WORD $0xaa0603e7 // mov    x7, x6
    WORD $0xaa1f03ef // mov    x15, xzr
    WORD $0xaa1f03fd // mov    fp, xzr
    WORD $0x8b1902fa // add    x26, x23, x25
    WORD $0xcb190252 // sub    x18, x18, x25
    WORD $0x528003fb // mov    w27, #31
LBB0_475:
    WORD $0x8b0f0342 // add    x2, x26, x15
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0xa40b405e // ld1b    { z30.b }, p0/z, [x2, x11]
    WORD $0x2400a3c2 // cmpeq    p2.b, p0/z, z30.b, z0.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xa40b405e // ld1b    { z30.b }, p0/z, [x2, x11]
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2401a3c2 // cmpeq    p2.b, p0/z, z30.b, z1.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    CMP $0, R4
    BNE LBB0_477
    CBZ R29, LBB0_478 // cbz    fp, .LBB0_478
LBB0_477:
    WORD $0x0a3d0085 // bic    w5, w4, w29
    WORD $0x2a0507a6 // orr    w6, w29, w5, lsl #1
    WORD $0x0a260084 // bic    w4, w4, w6
    WORD $0x1201f084 // and    w4, w4, #0xaaaaaaaa
    WORD $0x2b050084 // adds    w4, w4, w5
    WORD $0x531f7884 // lsl    w4, w4, #1
    WORD $0x1a9f37fd // cset    w29, hs
    WORD $0x5200f084 // eor    w4, w4, #0x55555555
    WORD $0x0a060084 // and    w4, w4, w6
    WORD $0x2a2403e4 // mvn    w4, w4
    WORD $0x8a020082 // and    x2, x4, x2
LBB0_478:
    CMP $0, R2
    BNE LBB0_510
    WORD $0xd100837b // sub    x27, x27, #32
    WORD $0x910081ef // add    x15, x15, #32
    WORD $0x8b1b0242 // add    x2, x18, x27
    WORD $0xf100fc5f // cmp    x2, #63
    BGT LBB0_475
    CBNZ R29, LBB0_525 // cbnz    fp, .LBB0_525
    WORD $0x8b1902e2 // add    x2, x23, x25
    WORD $0x8b0f0042 // add    x2, x2, x15
    WORD $0xaa2f03ef // mvn    x15, x15
    WORD $0x91000459 // add    x25, x2, #1
    WORD $0x8b1201ef // add    x15, x15, x18
LBB0_482:
    WORD $0xaa0703e6 // mov    x6, x7
    B LBB0_518
LBB0_483:
    WORD $0xf940040f // ldr    x15, [x0, #8]
    WORD $0xaa1f03fe // mov    lr, xzr
    WORD $0xaa1f03fb // mov    x27, xzr
    WORD $0xaa1f03f9 // mov    x25, xzr
    WORD $0xaa1f03fa // mov    x26, xzr
    WORD $0xcb1801fd // sub    fp, x15, x24
    WORD $0x8b1802f8 // add    x24, x23, x24
    B LBB0_485
LBB0_484:
    WORD $0x9e67005e // fmov    d30, x2
    WORD $0x937ffe5e // asr    lr, x18, #63
    WORD $0x910081f8 // add    x24, x15, #32
    WORD $0xaa1703fd // mov    fp, x23
    WORD $0x0e205bde // cnt    v30.8b, v30.8b
    WORD $0x2e303bde // uaddlv    h30, v30.8b
    WORD $0x1e2603c2 // fmov    w2, s30
    WORD $0x8b190059 // add    x25, x2, x25
LBB0_485:
    WORD $0xf10103b7 // subs    x23, fp, #64
    BLT LBB0_492
LBB0_486:
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0xa410431f // ld1b    { z31.b }, p0/z, [x24, x16]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2400a3c2 // cmpeq    p2.b, p0/z, z30.b, z0.b
    WORD $0x2400a3e3 // cmpeq    p3.b, p0/z, z31.b, z0.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0xa410431f // ld1b    { z31.b }, p0/z, [x24, x16]
    WORD $0xb94051cf // ldr    w15, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x2401a3c2 // cmpeq    p2.b, p0/z, z30.b, z1.b
    WORD $0x2401a3e3 // cmpeq    p3.b, p0/z, z31.b, z1.b
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051d2 // ldr    w18, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0xaa028082 // orr    x2, x4, x2, lsl #32
    WORD $0xaa1b0044 // orr    x4, x2, x27
    CMP $0, R4
    BNE LBB0_488
    WORD $0xaa1f03fb // mov    x27, xzr
    WORD $0xaa1f03e2 // mov    x2, xzr
    B LBB0_489
LBB0_488:
    WORD $0x8a3b0044 // bic    x4, x2, x27
    WORD $0xaa040765 // orr    x5, x27, x4, lsl #1
    WORD $0x8a250042 // bic    x2, x2, x5
    WORD $0x9201f042 // and    x2, x2, #0xaaaaaaaaaaaaaaaa
    WORD $0xab040042 // adds    x2, x2, x4
    WORD $0xd37ff842 // lsl    x2, x2, #1
    WORD $0x1a9f37fb // cset    w27, hs
    WORD $0xd200f042 // eor    x2, x2, #0x5555555555555555
    WORD $0x8a050042 // and    x2, x2, x5
LBB0_489:
    WORD $0xaa1281ef // orr    x15, x15, x18, lsl #32
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x8a2201ef // bic    x15, x15, x2
    WORD $0x4e080dfe // dup    v30.2d, x15
    WORD $0x9202e1f2 // and    x18, x15, #0x4444444444444444
    WORD $0x9201e1ef // and    x15, x15, #0x8888888888888888
    WORD $0x4e080e5f // dup    v31.2d, x18
    WORD $0x4e080dea // dup    v10.2d, x15
    WORD $0x0420bfeb // movprfx    z11, z31
    WORD $0x04d0064b // mul    z11.d, p1/m, z11.d, z18.d
    WORD $0x0420bd4d // movprfx    z13, z10
    WORD $0x04d0070d // mul    z13.d, p1/m, z13.d, z24.d
    WORD $0x9100830f // add    x15, x24, #32
    WORD $0x4e321fde // and    v30.16b, v30.16b, v18.16b
    WORD $0x0420bfcc // movprfx    z12, z30
    WORD $0x04d006ac // mul    z12.d, p1/m, z12.d, z21.d
    WORD $0x6e2b1d8b // eor    v11.16b, v12.16b, v11.16b
    WORD $0x04d006ff // mul    z31.d, p1/m, z31.d, z23.d
    WORD $0x04d0072a // mul    z10.d, p1/m, z10.d, z25.d
    WORD $0x4e0807c8 // dup    v8.2d, v30.d[0]
    WORD $0x4e1807c9 // dup    v9.2d, v30.d[1]
    WORD $0x6e1e43de // ext    v30.16b, v30.16b, v30.16b, #8
    WORD $0x6e2a1fff // eor    v31.16b, v31.16b, v10.16b
    WORD $0xa400a30a // ld1b    { z10.b }, p0/z, [x24]
    WORD $0x04d00688 // mul    z8.d, p1/m, z8.d, z20.d
    WORD $0x04d006c9 // mul    z9.d, p1/m, z9.d, z22.d
    WORD $0x04d0067e // mul    z30.d, p1/m, z30.d, z19.d
    WORD $0x241ba142 // cmpeq    p2.b, p0/z, z10.b, z27.b
    WORD $0x6e291d08 // eor    v8.16b, v8.16b, v9.16b
    WORD $0x6e2d1d69 // eor    v9.16b, v11.16b, v13.16b
    WORD $0xa400a1eb // ld1b    { z11.b }, p0/z, [x15]
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x6e3f1d1f // eor    v31.16b, v8.16b, v31.16b
    WORD $0x6e291fde // eor    v30.16b, v30.16b, v9.16b
    WORD $0x241ba163 // cmpeq    p3.b, p0/z, z11.b, z27.b
    WORD $0x4e3a1fde // and    v30.16b, v30.16b, v26.16b
    WORD $0x4e341fff // and    v31.16b, v31.16b, v20.16b
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0xa400a1e8 // ld1b    { z8.b }, p0/z, [x15]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xb94051c2 // ldr    w2, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x4ebe1ffe // orr    v30.16b, v31.16b, v30.16b
    WORD $0xa400a31f // ld1b    { z31.b }, p0/z, [x24]
    WORD $0x2403a103 // cmpeq    p3.b, p0/z, z8.b, z3.b
    WORD $0x2403a3e2 // cmpeq    p2.b, p0/z, z31.b, z3.b
    WORD $0x6e1e43c9 // ext    v9.16b, v30.16b, v30.16b, #8
    WORD $0xe5801dc2 // str    p2, [x14, #7, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051c4 // ldr    w4, [x14, #80]
    WORD $0x910143ee // add    x14, sp, #80
    WORD $0x0ea91fde // orr    v30.8b, v30.8b, v9.8b
    WORD $0xe58019c3 // str    p3, [x14, #6, mul vl]
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0xb94051d2 // ldr    w18, [x14, #80]
    WORD $0x047f50ee // addpl    x14, sp, #7
    WORD $0xaa048042 // orr    x2, x2, x4, lsl #32
    WORD $0xb94051c5 // ldr    w5, [x14, #80]
    WORD $0xaa1280a5 // orr    x5, x5, x18, lsl #32
    WORD $0x9e6603d2 // fmov    x18, d30
    WORD $0xca1e0252 // eor    x18, x18, lr
    WORD $0xea3200b8 // bics    x24, x5, x18
    WORD $0x8a320042 // bic    x2, x2, x18
    BEQ LBB0_484
LBB0_490:
    WORD $0xd1000704 // sub    x4, x24, #1
    WORD $0x8a020085 // and    x5, x4, x2
    WORD $0x9e6700be // fmov    d30, x5
    WORD $0x0e205bde // cnt    v30.8b, v30.8b
    WORD $0x2e303bde // uaddlv    h30, v30.8b
    WORD $0x1e2603c5 // fmov    w5, s30
    WORD $0x8b1900a5 // add    x5, x5, x25
    WORD $0xeb1a00bf // cmp    x5, x26
    BLS LBB0_509
    WORD $0xea180098 // ands    x24, x4, x24
    WORD $0x9100075a // add    x26, x26, #1
    BNE LBB0_490
    B LBB0_484
LBB0_492:
    WORD $0xaa0d03ee // mov    x14, x13
    WORD $0xaa0a03ed // mov    x13, x10
    WORD $0x910043ea // add    x10, sp, #16
    WORD $0xf10003bf // cmp    fp, #0
    BLE LBB0_524
    WORD $0x92402f0f // and    x15, x24, #0xfff
    WORD $0xad00f3fc // stp    q28, q28, [sp, #16]
    WORD $0xf13f05ff // cmp    x15, #4033
    WORD $0xad01f3fc // stp    q28, q28, [sp, #48]
    BLO LBB0_508
    WORD $0xf10083b2 // subs    x18, fp, #32
    BLO LBB0_496
    WORD $0xa400a31e // ld1b    { z30.b }, p0/z, [x24]
    WORD $0x91008318 // add    x24, x24, #32
    WORD $0xaa0d03ef // mov    x15, x13
    WORD $0xe400e15e // st1b    { z30.b }, p0, [x10]
    B LBB0_497
LBB0_496:
    WORD $0x910043ef // add    x15, sp, #16
    WORD $0xaa1d03f2 // mov    x18, fp
LBB0_497:
    WORD $0xf1004242 // subs    x2, x18, #16
    BLO LBB0_503
    WORD $0x3cc1071e // ldr    q30, [x24], #16
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0x3c8105fe // str    q30, [x15], #16
    WORD $0xf1002042 // subs    x2, x2, #8
    BHS LBB0_504
LBB0_499:
    WORD $0xf1001242 // subs    x2, x18, #4
    BLO LBB0_505
LBB0_500:
    WORD $0xb8404712 // ldr    w18, [x24], #4
    WORD $0xb80045f2 // str    w18, [x15], #4
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0xf1000842 // subs    x2, x2, #2
    BHS LBB0_506
LBB0_501:
    CMP $0, R18_PLATFORM
    BEQ LBB0_507
LBB0_502:
    WORD $0x39400312 // ldrb    w18, [x24]
    WORD $0x910043f8 // add    x24, sp, #16
    WORD $0x390001f2 // strb    w18, [x15]
    B LBB0_508
LBB0_503:
    WORD $0xf1002242 // subs    x2, x18, #8
    BLO LBB0_499
LBB0_504:
    WORD $0xf8408712 // ldr    x18, [x24], #8
    WORD $0xf80085f2 // str    x18, [x15], #8
    WORD $0xaa0203f2 // mov    x18, x2
    WORD $0xf1001042 // subs    x2, x2, #4
    BHS LBB0_500
LBB0_505:
    WORD $0xf1000a42 // subs    x2, x18, #2
    BLO LBB0_501
LBB0_506:
    WORD $0x78402712 // ldrh    w18, [x24], #2
    WORD $0x780025f2 // strh    w18, [x15], #2
    WORD $0xaa0203f2 // mov    x18, x2
    CMP $0, R2
    BNE LBB0_502
LBB0_507:
    WORD $0x910043f8 // add    x24, sp, #16
LBB0_508:
    WORD $0xaa0d03ea // mov    x10, x13
    WORD $0xaa0e03ed // mov    x13, x14
    B LBB0_486
LBB0_509:
    WORD $0xdac0030f // rbit    x15, x24
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xdac011ef // clz    x15, x15
    WORD $0xcb1d01ef // sub    x15, x15, fp
    WORD $0x8b1201ef // add    x15, x15, x18
    WORD $0x910005f2 // add    x18, x15, #1
    WORD $0xf9000032 // str    x18, [x1]
    WORD $0xf9400402 // ldr    x2, [x0, #8]
    WORD $0xeb02025f // cmp    x18, x2
    WORD $0x9a8f2458 // csinc    x24, x2, x15, hs
    WORD $0xf9000038 // str    x24, [x1]
    B LBB0_422
LBB0_510:
    WORD $0xdac00052 // rbit    x18, x2
    WORD $0x8b0f032f // add    x15, x25, x15
    WORD $0xdac01252 // clz    x18, x18
    WORD $0x8b0f024f // add    x15, x18, x15
    WORD $0x910009f8 // add    x24, x15, #2
LBB0_511:
    WORD $0xf9000038 // str    x24, [x1]
    WORD $0xaa0703e6 // mov    x6, x7
    B LBB0_422
LBB0_512:
    WORD $0x5ac0008f // rbit    w15, w4
    WORD $0x5ac011ef // clz    w15, w15
    WORD $0xcb0201f8 // sub    x24, x15, x2
    WORD $0xf100071f // cmp    x24, #1
    WORD $0xf9000038 // str    x24, [x1]
    BLT LBB0_422
    WORD $0x8b0f02f2 // add    x18, x23, x15
    WORD $0xd1000652 // sub    x18, x18, #1
LBB0_514:
    WORD $0x38796a42 // ldrb    w2, [x18, x25]
    WORD $0x9ac22164 // lsl    x4, x11, x2
    WORD $0x7100805f // cmp    w2, #32
    WORD $0x8a0c0082 // and    x2, x4, x12
    WORD $0xfa409844 // ccmp    x2, #0, #4, ls
    BEQ LBB0_516
    WORD $0x8b1901e2 // add    x2, x15, x25
    WORD $0xd1000739 // sub    x25, x25, #1
    WORD $0x8b1901f8 // add    x24, x15, x25
    WORD $0xd1000442 // sub    x2, x2, #1
    WORD $0x91000704 // add    x4, x24, #1
    WORD $0xf9000022 // str    x2, [x1]
    WORD $0xf100049f // cmp    x4, #1
    BGT LBB0_514
    B LBB0_422
LBB0_516:
    WORD $0x8b1901f8 // add    x24, x15, x25
    B LBB0_422
LBB0_517:
    WORD $0x8b1802f9 // add    x25, x23, x24
LBB0_518:
    WORD $0xf10005ff // cmp    x15, #1
    BGE LBB0_520
    B LBB0_422
LBB0_519:
    WORD $0x92800032 // mov    x18, #-2
    WORD $0x52800042 // mov    w2, #2
    WORD $0xab1201ef // adds    x15, x15, x18
    WORD $0x8b020339 // add    x25, x25, x2
    BLE LBB0_422
LBB0_520:
    WORD $0x39400332 // ldrb    w18, [x25]
    WORD $0x7101725f // cmp    w18, #92
    BEQ LBB0_519
    WORD $0x71008a5f // cmp    w18, #34
    BEQ LBB0_523
    WORD $0x92800012 // mov    x18, #-1
    WORD $0x52800022 // mov    w2, #1
    WORD $0xab1201ef // adds    x15, x15, x18
    WORD $0x8b020339 // add    x25, x25, x2
    BGT LBB0_520
    B LBB0_422
LBB0_523:
    WORD $0xcb17032f // sub    x15, x25, x23
    WORD $0x910005f8 // add    x24, x15, #1
    WORD $0xf9000038 // str    x24, [x1]
    B LBB0_422
LBB0_524:
    WORD $0xf9400418 // ldr    x24, [x0, #8]
    WORD $0xaa0d03ea // mov    x10, x13
    WORD $0xaa0e03ed // mov    x13, x14
    WORD $0xf9000038 // str    x24, [x1]
    B LBB0_422
LBB0_525:
    WORD $0xd1000642 // sub    x2, x18, #1
    WORD $0xeb0f005f // cmp    x2, x15
    BNE LBB0_527
    WORD $0xaa0703e6 // mov    x6, x7
    B LBB0_422
LBB0_527:
    WORD $0x8b1902e2 // add    x2, x23, x25
    WORD $0x8b0f0042 // add    x2, x2, x15
    WORD $0xcb0f024f // sub    x15, x18, x15
    WORD $0x91000859 // add    x25, x2, #2
    WORD $0xd10009ef // sub    x15, x15, #2
    B LBB0_482
LBB0_528:
    WORD $0x91004129 // add    x9, x9, #16
    WORD $0xeb0d013f // cmp    x9, x13
    BNE LBB0_2
LBB0_529:
    CMP $0, R3
    BEQ LBB0_881
    ADR LCPI0_10, R8
    ADR LCPI0_1, R18_PLATFORM
    WORD $0xaa0303e9 // mov    x9, x3
    WORD $0x3dc00100 // ldr    q0, [x8, :lo12:.LCPI0_10]
    ADR LCPI0_0, R8
    WORD $0xd284c00c // mov    x12, #9728
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x3dc00118 // ldr    q24, [x8, :lo12:.LCPI0_0]
    WORD $0x3dc00259 // ldr    q25, [x18, :lo12:.LCPI0_1]
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x528eadda // mov    w26, #30062
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0x9280000a // mov    x10, #-1
    WORD $0x5280002b // mov    w11, #1
    WORD $0xf2c0002c // movk    x12, #1, lsl #32
    WORD $0x5280006d // mov    w13, #3
    WORD $0x5280008e // mov    w14, #4
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x5280040f // mov    w15, #32
    WORD $0x3c808520 // str    q0, [x9], #8
    WORD $0x2538c440 // mov    z0.b, #34
    WORD $0x2538cb81 // mov    z1.b, #92
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x2538c5e2 // mov    z2.b, #47
    WORD $0x2538c723 // mov    z3.b, #57
    WORD $0x2538c5c4 // mov    z4.b, #46
    WORD $0x2538cca5 // mov    z5.b, #101
    WORD $0x2538c8a6 // mov    z6.b, #69
    WORD $0x2538c567 // mov    z7.b, #43
    WORD $0x2538c5b0 // mov    z16.b, #45
    WORD $0x4f01e5d1 // movi    v17.16b, #46
    WORD $0x4f01e572 // movi    v18.16b, #43
    WORD $0x4f01e5b3 // movi    v19.16b, #45
    WORD $0x4f06e614 // movi    v20.16b, #208
    WORD $0x4f00e555 // movi    v21.16b, #10
    WORD $0x4f06e7f6 // movi    v22.16b, #223
    WORD $0x4f02e4b7 // movi    v23.16b, #69
    WORD $0x12800011 // mov    w17, #-1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    WORD $0x528000de // mov    w30, #6
    WORD $0x52800047 // mov    w7, #2
LBB0_531:
    WORD $0xa9402013 // ldp    x19, x8, [x0]
    WORD $0xf9400035 // ldr    x21, [x1]
    WORD $0xeb0802bf // cmp    x21, x8
    BHS LBB0_535
    WORD $0x38756a72 // ldrb    w18, [x19, x21]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_535
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_535
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0xaa1503f4 // mov    x20, x21
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_551
LBB0_535:
    WORD $0x910006b4 // add    x20, x21, #1
    WORD $0xeb08029f // cmp    x20, x8
    BHS LBB0_539
    WORD $0x38746a72 // ldrb    w18, [x19, x20]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_539
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_539
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_551
LBB0_539:
    WORD $0x91000ab4 // add    x20, x21, #2
    WORD $0xeb08029f // cmp    x20, x8
    BHS LBB0_543
    WORD $0x38746a72 // ldrb    w18, [x19, x20]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_543
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_543
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_551
LBB0_543:
    WORD $0x91000eb4 // add    x20, x21, #3
    WORD $0xeb08029f // cmp    x20, x8
    BHS LBB0_547
    WORD $0x38746a72 // ldrb    w18, [x19, x20]
    WORD $0x7100365f // cmp    w18, #13
    BEQ LBB0_547
    WORD $0x7100825f // cmp    w18, #32
    BEQ LBB0_547
    WORD $0x51002e52 // sub    w18, w18, #11
    WORD $0x31000a5f // cmn    w18, #2
    BLO LBB0_551
LBB0_547:
    WORD $0x910012b4 // add    x20, x21, #4
    WORD $0xeb08029f // cmp    x20, x8
    BHS LBB0_944
LBB0_548:
    WORD $0x38746a72 // ldrb    w18, [x19, x20]
    WORD $0x9ad22162 // lsl    x2, x11, x18
    WORD $0x7100825f // cmp    w18, #32
    WORD $0x8a0c0052 // and    x18, x2, x12
    WORD $0xfa409a44 // ccmp    x18, #0, #4, ls
    BEQ LBB0_550
    WORD $0x91000694 // add    x20, x20, #1
    WORD $0xeb14011f // cmp    x8, x20
    BNE LBB0_548
    B LBB0_901
LBB0_550:
    WORD $0xeb08029f // cmp    x20, x8
    BHS LBB0_901
LBB0_551:
    WORD $0x91000688 // add    x8, x20, #1
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x38746a75 // ldrb    w21, [x19, x20]
    CMP $0, R21
    BEQ LBB0_901
    WORD $0xf9400068 // ldr    x8, [x3]
    WORD $0xb100055f // cmn    x10, #1
    WORD $0x9a8a028a // csel    x10, x20, x10, eq
    WORD $0xd1000516 // sub    x22, x8, #1
    WORD $0xf8767932 // ldr    x18, [x9, x22, lsl #3]
    WORD $0x71000e5f // cmp    w18, #3
    BGT LBB0_569
    WORD $0x7100065f // cmp    w18, #1
    BEQ LBB0_587
    WORD $0x71000a5f // cmp    w18, #2
    BEQ LBB0_592
    WORD $0x71000e5f // cmp    w18, #3
    BNE LBB0_591
    WORD $0x71008abf // cmp    w21, #34
    BNE LBB0_942
    WORD $0xf836792e // str    x14, [x9, x22, lsl #3]
    WORD $0xf9400034 // ldr    x20, [x1]
    WORD $0xf9400415 // ldr    x21, [x0, #8]
    WORD $0xeb1402a8 // subs    x8, x21, x20
    BEQ LBB0_1046
    WORD $0xf101011f // cmp    x8, #64
    BLO LBB0_787
    WORD $0xaa1f03f8 // mov    x24, xzr
    WORD $0x92800016 // mov    x22, #-1
    WORD $0xaa1403f7 // mov    x23, x20
LBB0_560:
    WORD $0xa417427a // ld1b    { z26.b }, p0/z, [x19, x23]
    WORD $0x8b170272 // add    x18, x19, x23
    WORD $0x910143f0 // add    x16, sp, #80
    WORD $0xa40f425b // ld1b    { z27.b }, p0/z, [x18, x15]
    WORD $0x2400a341 // cmpeq    p1.b, p0/z, z26.b, z0.b
    WORD $0x2401a342 // cmpeq    p2.b, p0/z, z26.b, z1.b
    WORD $0x2401a363 // cmpeq    p3.b, p0/z, z27.b, z1.b
    WORD $0xe5801e01 // str    p1, [x16, #7, mul vl]
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0xe5801602 // str    p2, [x16, #5, mul vl]
    WORD $0xe5801203 // str    p3, [x16, #4, mul vl]
    WORD $0xe5801a01 // str    p1, [x16, #6, mul vl]
    WORD $0x047f5090 // addpl    x16, sp, #4
    WORD $0xb9405212 // ldr    w18, [x16, #80]
    WORD $0x047f50b0 // addpl    x16, sp, #5
    WORD $0xb9405202 // ldr    w2, [x16, #80]
    WORD $0x047f50d0 // addpl    x16, sp, #6
    WORD $0xb9405204 // ldr    w4, [x16, #80]
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0xb9405205 // ldr    w5, [x16, #80]
    WORD $0xaa128042 // orr    x2, x2, x18, lsl #32
    WORD $0xaa0480b2 // orr    x18, x5, x4, lsl #32
    CMP $0, R2
    BNE LBB0_564
    CMP $0, R24
    BNE LBB0_566
    CMP $0, R18_PLATFORM
    BNE LBB0_567
LBB0_563:
    WORD $0xd1010108 // sub    x8, x8, #64
    WORD $0x910102f7 // add    x23, x23, #64
    WORD $0xf100fd1f // cmp    x8, #63
    BHI LBB0_560
    B LBB0_768
LBB0_564:
    WORD $0xb10006df // cmn    x22, #1
    BNE LBB0_566
    WORD $0xdac00044 // rbit    x4, x2
    WORD $0xdac01084 // clz    x4, x4
    WORD $0x8b170096 // add    x22, x4, x23
LBB0_566:
    WORD $0x8a380044 // bic    x4, x2, x24
    WORD $0xaa040705 // orr    x5, x24, x4, lsl #1
    WORD $0x8a250042 // bic    x2, x2, x5
    WORD $0x9201f042 // and    x2, x2, #0xaaaaaaaaaaaaaaaa
    WORD $0xab040042 // adds    x2, x2, x4
    WORD $0xd37ff842 // lsl    x2, x2, #1
    WORD $0x1a9f37f8 // cset    w24, hs
    WORD $0xd200f042 // eor    x2, x2, #0x5555555555555555
    WORD $0x8a050042 // and    x2, x2, x5
    WORD $0x8a220252 // bic    x18, x18, x2
    CMP $0, R18_PLATFORM
    BEQ LBB0_563
LBB0_567:
    WORD $0xdac00248 // rbit    x8, x18
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b170108 // add    x8, x8, x23
    WORD $0x91000508 // add    x8, x8, #1
    TST $(1<<63), R8
    BNE LBB0_1015
LBB0_568:
    WORD $0xf100029f // cmp    x20, #0
    WORD $0xf9000028 // str    x8, [x1]
    BGT LBB0_694
    B LBB0_1016
LBB0_569:
    WORD $0x7100125f // cmp    w18, #4
    BEQ LBB0_589
    WORD $0x7100165f // cmp    w18, #5
    BEQ LBB0_594
    WORD $0x71001a5f // cmp    w18, #6
    BNE LBB0_591
    WORD $0x71008abf // cmp    w21, #34
    BNE LBB0_593
    WORD $0xf8367927 // str    x7, [x9, x22, lsl #3]
    WORD $0xf9400034 // ldr    x20, [x1]
    WORD $0xf9400415 // ldr    x21, [x0, #8]
    WORD $0xeb1402a8 // subs    x8, x21, x20
    BEQ LBB0_1046
    WORD $0xf101011f // cmp    x8, #64
    BLO LBB0_796
    WORD $0xaa1f03f8 // mov    x24, xzr
    WORD $0x92800016 // mov    x22, #-1
    WORD $0xaa1403f7 // mov    x23, x20
LBB0_576:
    WORD $0xa417427a // ld1b    { z26.b }, p0/z, [x19, x23]
    WORD $0x8b170272 // add    x18, x19, x23
    WORD $0x910143f0 // add    x16, sp, #80
    WORD $0xa40f425b // ld1b    { z27.b }, p0/z, [x18, x15]
    WORD $0x2400a341 // cmpeq    p1.b, p0/z, z26.b, z0.b
    WORD $0x2401a342 // cmpeq    p2.b, p0/z, z26.b, z1.b
    WORD $0x2401a363 // cmpeq    p3.b, p0/z, z27.b, z1.b
    WORD $0xe5801e01 // str    p1, [x16, #7, mul vl]
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0xe5801602 // str    p2, [x16, #5, mul vl]
    WORD $0xe5801203 // str    p3, [x16, #4, mul vl]
    WORD $0xe5801a01 // str    p1, [x16, #6, mul vl]
    WORD $0x047f5090 // addpl    x16, sp, #4
    WORD $0xb9405212 // ldr    w18, [x16, #80]
    WORD $0x047f50b0 // addpl    x16, sp, #5
    WORD $0xb9405202 // ldr    w2, [x16, #80]
    WORD $0x047f50d0 // addpl    x16, sp, #6
    WORD $0xb9405204 // ldr    w4, [x16, #80]
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0xb9405205 // ldr    w5, [x16, #80]
    WORD $0xaa128042 // orr    x2, x2, x18, lsl #32
    WORD $0xaa0480b2 // orr    x18, x5, x4, lsl #32
    CMP $0, R2
    BNE LBB0_580
    CMP $0, R24
    BNE LBB0_582
    CMP $0, R18_PLATFORM
    BNE LBB0_583
LBB0_579:
    WORD $0xd1010108 // sub    x8, x8, #64
    WORD $0x910102f7 // add    x23, x23, #64
    WORD $0xf100fd1f // cmp    x8, #63
    BHI LBB0_576
    B LBB0_793
LBB0_580:
    WORD $0xb10006df // cmn    x22, #1
    BNE LBB0_582
    WORD $0xdac00044 // rbit    x4, x2
    WORD $0xdac01084 // clz    x4, x4
    WORD $0x8b170096 // add    x22, x4, x23
LBB0_582:
    WORD $0x8a380044 // bic    x4, x2, x24
    WORD $0xaa040705 // orr    x5, x24, x4, lsl #1
    WORD $0x8a250042 // bic    x2, x2, x5
    WORD $0x9201f042 // and    x2, x2, #0xaaaaaaaaaaaaaaaa
    WORD $0xab040042 // adds    x2, x2, x4
    WORD $0xd37ff842 // lsl    x2, x2, #1
    WORD $0x1a9f37f8 // cset    w24, hs
    WORD $0xd200f042 // eor    x2, x2, #0x5555555555555555
    WORD $0x8a050042 // and    x2, x2, x5
    WORD $0x8a220252 // bic    x18, x18, x2
    CMP $0, R18_PLATFORM
    BEQ LBB0_579
LBB0_583:
    WORD $0xdac00248 // rbit    x8, x18
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b170108 // add    x8, x8, x23
    WORD $0x91000508 // add    x8, x8, #1
    TST $(1<<63), R8
    BNE LBB0_1015
LBB0_584:
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0xf1000688 // subs    x8, x20, #1
    BLT LBB0_943
    WORD $0xf9400068 // ldr    x8, [x3]
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_1014
    WORD $0x91000512 // add    x18, x8, #1
    WORD $0xf9000072 // str    x18, [x3]
    WORD $0xf828792e // str    x14, [x9, x8, lsl #3]
    B LBB0_694
LBB0_587:
    WORD $0x7100b2bf // cmp    w21, #44
    BEQ LBB0_603
    WORD $0x710176bf // cmp    w21, #93
    BEQ LBB0_595
    B LBB0_942
LBB0_589:
    WORD $0x7100eabf // cmp    w21, #58
    BNE LBB0_942
    WORD $0xf836793f // str    xzr, [x9, x22, lsl #3]
    B LBB0_694
LBB0_591:
    WORD $0xf9000076 // str    x22, [x3]
    B LBB0_597
LBB0_592:
    WORD $0x7100b2bf // cmp    w21, #44
    BEQ LBB0_605
LBB0_593:
    WORD $0x7101f6bf // cmp    w21, #125
    BEQ LBB0_595
    B LBB0_942
LBB0_594:
    WORD $0x710176bf // cmp    w21, #93
    BNE LBB0_596
LBB0_595:
    WORD $0xaa0a03e8 // mov    x8, x10
    WORD $0xf9000076 // str    x22, [x3]
    CMP $0, R22
    BNE LBB0_531
    B LBB0_943
LBB0_596:
    WORD $0xf836792b // str    x11, [x9, x22, lsl #3]
LBB0_597:
    WORD $0x71016abf // cmp    w21, #90
    WORD $0x92800028 // mov    x8, #-2
    BGT LBB0_607
    WORD $0x5100c2b2 // sub    w18, w21, #48
    WORD $0x71002a5f // cmp    w18, #10
    BHS LBB0_667
    WORD $0xf9400034 // ldr    x20, [x1]
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xd1000688 // sub    x8, x20, #1
    WORD $0xeb080259 // subs    x25, x18, x8
    BEQ LBB0_1017
    WORD $0x8b080275 // add    x21, x19, x8
    WORD $0x394002b2 // ldrb    w18, [x21]
    WORD $0x7100c25f // cmp    w18, #48
    BNE LBB0_615
    WORD $0xf100073f // cmp    x25, #1
    BNE LBB0_613
LBB0_602:
    WORD $0x5280003b // mov    w27, #1
    B LBB0_693
LBB0_603:
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_1014
    WORD $0x91000512 // add    x18, x8, #1
    WORD $0xf9000072 // str    x18, [x3]
    WORD $0xf828793f // str    xzr, [x9, x8, lsl #3]
    B LBB0_694
LBB0_605:
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_1014
    WORD $0x91000512 // add    x18, x8, #1
    WORD $0xf9000072 // str    x18, [x3]
    WORD $0xf828792d // str    x13, [x9, x8, lsl #3]
    B LBB0_694
LBB0_607:
    WORD $0x7101b6bf // cmp    w21, #109
    BLE LBB0_674
    WORD $0x7101babf // cmp    w21, #110
    BEQ LBB0_699
    WORD $0x7101d2bf // cmp    w21, #116
    BEQ LBB0_695
    WORD $0x7101eebf // cmp    w21, #123
    BNE LBB0_943
    WORD $0xf9400068 // ldr    x8, [x3]
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_1014
    WORD $0x91000510 // add    x16, x8, #1
    WORD $0xf9000070 // str    x16, [x3]
    WORD $0xf828793e // str    lr, [x9, x8, lsl #3]
    B LBB0_694
LBB0_613:
    WORD $0x38746a72 // ldrb    w18, [x19, x20]
    WORD $0x5100ba52 // sub    w18, w18, #46
    WORD $0x7100de5f // cmp    w18, #55
    BHI LBB0_602
    WORD $0x9ad22172 // lsl    x18, x11, x18
    WORD $0x5280003b // mov    w27, #1
    WORD $0xea06025f // tst    x18, x6
    BEQ LBB0_693
LBB0_615:
    WORD $0xf100833f // cmp    x25, #32
    BLO LBB0_821
    WORD $0xaa1f03fa // mov    x26, xzr
    WORD $0x92800018 // mov    x24, #-1
    WORD $0x92800016 // mov    x22, #-1
    WORD $0x92800017 // mov    x23, #-1
LBB0_617:
    WORD $0xa41a42ba // ld1b    { z26.b }, p0/z, [x21, x26]
    WORD $0x910143f0 // add    x16, sp, #80
    WORD $0x24028351 // cmpgt    p1.b, p0/z, z26.b, z2.b
    WORD $0x24038352 // cmpgt    p2.b, p0/z, z26.b, z3.b
    WORD $0x2404a343 // cmpeq    p3.b, p0/z, z26.b, z4.b
    WORD $0xe5801e01 // str    p1, [x16, #7, mul vl]
    WORD $0x2405a341 // cmpeq    p1.b, p0/z, z26.b, z5.b
    WORD $0xe5801a02 // str    p2, [x16, #6, mul vl]
    WORD $0x2406a342 // cmpeq    p2.b, p0/z, z26.b, z6.b
    WORD $0xe5801603 // str    p3, [x16, #5, mul vl]
    WORD $0x2407a343 // cmpeq    p3.b, p0/z, z26.b, z7.b
    WORD $0xe5801201 // str    p1, [x16, #4, mul vl]
    WORD $0x2410a341 // cmpeq    p1.b, p0/z, z26.b, z16.b
    WORD $0xe5800e02 // str    p2, [x16, #3, mul vl]
    WORD $0xe5800a03 // str    p3, [x16, #2, mul vl]
    WORD $0xe5800601 // str    p1, [x16, #1, mul vl]
    WORD $0x047f50d0 // addpl    x16, sp, #6
    WORD $0xb9405212 // ldr    w18, [x16, #80]
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0xb9405202 // ldr    w2, [x16, #80]
    WORD $0x047f5090 // addpl    x16, sp, #4
    WORD $0xb9405204 // ldr    w4, [x16, #80]
    WORD $0x047f5070 // addpl    x16, sp, #3
    WORD $0xb9405205 // ldr    w5, [x16, #80]
    WORD $0x047f5050 // addpl    x16, sp, #2
    WORD $0x0a320042 // bic    w2, w2, w18
    WORD $0xb940521b // ldr    w27, [x16, #80]
    WORD $0x047f5030 // addpl    x16, sp, #1
    WORD $0xb940521d // ldr    w29, [x16, #80]
    WORD $0x047f50b0 // addpl    x16, sp, #5
    WORD $0x2a0400b2 // orr    w18, w5, w4
    WORD $0xb940521e // ldr    w30, [x16, #80]
    WORD $0x2a020242 // orr    w2, w18, w2
    WORD $0x2a1b03bd // orr    w29, w29, w27
    WORD $0x2a1e03a4 // orr    w4, w29, w30
    WORD $0x2a040042 // orr    w2, w2, w4
    WORD $0xaa2203e2 // mvn    x2, x2
    WORD $0xdac00042 // rbit    x2, x2
    WORD $0xdac0105b // clz    x27, x2
    WORD $0x7100837f // cmp    w27, #32
    BEQ LBB0_619
    WORD $0x1adb2222 // lsl    w2, w17, w27
    WORD $0x0a2203de // bic    w30, w30, w2
    WORD $0x0a220252 // bic    w18, w18, w2
    WORD $0x0a2203bd // bic    w29, w29, w2
LBB0_619:
    WORD $0x510007c2 // sub    w2, w30, #1
    WORD $0x6a1e0042 // ands    w2, w2, w30
    BNE LBB0_784
    WORD $0x51000642 // sub    w2, w18, #1
    WORD $0x6a120042 // ands    w2, w2, w18
    BNE LBB0_784
    WORD $0x510007a2 // sub    w2, w29, #1
    WORD $0x6a1d0042 // ands    w2, w2, w29
    BNE LBB0_784
    CMP $0, R30
    BEQ LBB0_625
    WORD $0xb10006ff // cmn    x23, #1
    BNE LBB0_785
    WORD $0x5ac003c2 // rbit    w2, w30
    WORD $0x5ac01042 // clz    w2, w2
    WORD $0x8b020357 // add    x23, x26, x2
LBB0_625:
    CMP $0, R18_PLATFORM
    BEQ LBB0_628
    WORD $0xb10006df // cmn    x22, #1
    BNE LBB0_802
    WORD $0x5ac00252 // rbit    w18, w18
    WORD $0x5ac01252 // clz    w18, w18
    WORD $0x8b120356 // add    x22, x26, x18
LBB0_628:
    CMP $0, R29
    BEQ LBB0_631
    WORD $0xb100071f // cmn    x24, #1
    BNE LBB0_803
    WORD $0x5ac003b2 // rbit    w18, w29
    WORD $0x5ac01252 // clz    w18, w18
    WORD $0x8b120358 // add    x24, x26, x18
LBB0_631:
    WORD $0x7100837f // cmp    w27, #32
    BNE LBB0_666
    WORD $0xd1008339 // sub    x25, x25, #32
    WORD $0x9100835a // add    x26, x26, #32
    WORD $0xf1007f3f // cmp    x25, #31
    BHI LBB0_617
    WORD $0x8b1a02ba // add    x26, x21, x26
    WORD $0xf100433f // cmp    x25, #16
    BLO LBB0_650
LBB0_634:
    WORD $0xcb140352 // sub    x18, x26, x20
    WORD $0xaa1f03fb // mov    x27, xzr
    WORD $0xcb130252 // sub    x18, x18, x19
    WORD $0x9100065d // add    fp, x18, #1
LBB0_635:
    WORD $0x3cfb6b5a // ldr    q26, [x26, x27]
    WORD $0x4e34875b // add    v27.16b, v26.16b, v20.16b
    WORD $0x6e328f5c // cmeq    v28.16b, v26.16b, v18.16b
    WORD $0x6e338f5d // cmeq    v29.16b, v26.16b, v19.16b
    WORD $0x4e361f5e // and    v30.16b, v26.16b, v22.16b
    WORD $0x6e318f5a // cmeq    v26.16b, v26.16b, v17.16b
    WORD $0x4ebd1f9c // orr    v28.16b, v28.16b, v29.16b
    WORD $0x6e3b36bb // cmhi    v27.16b, v21.16b, v27.16b
    WORD $0x6e378fde // cmeq    v30.16b, v30.16b, v23.16b
    WORD $0x4eba1f7b // orr    v27.16b, v27.16b, v26.16b
    WORD $0x4ebc1fdd // orr    v29.16b, v30.16b, v28.16b
    WORD $0x4e381f5a // and    v26.16b, v26.16b, v24.16b
    WORD $0x4e381f9c // and    v28.16b, v28.16b, v24.16b
    WORD $0x4ebd1f7b // orr    v27.16b, v27.16b, v29.16b
    WORD $0x4e381fdd // and    v29.16b, v30.16b, v24.16b
    WORD $0x4e19035a // tbl    v26.16b, { v26.16b }, v25.16b
    WORD $0x4e19039c // tbl    v28.16b, { v28.16b }, v25.16b
    WORD $0x4e381f7b // and    v27.16b, v27.16b, v24.16b
    WORD $0x4e71bb5a // addv    h26, v26.8h
    WORD $0x4e71bb9c // addv    h28, v28.8h
    WORD $0x4e19037b // tbl    v27.16b, { v27.16b }, v25.16b
    WORD $0x1e260342 // fmov    w2, s26
    WORD $0x1e260386 // fmov    w6, s28
    WORD $0x4e71bb7b // addv    h27, v27.8h
    WORD $0x1e260372 // fmov    w18, s27
    WORD $0x4e1903bb // tbl    v27.16b, { v29.16b }, v25.16b
    WORD $0x2a3203f2 // mvn    w18, w18
    WORD $0x32103e52 // orr    w18, w18, #0xffff0000
    WORD $0x4e71bb7b // addv    h27, v27.8h
    WORD $0x5ac00252 // rbit    w18, w18
    WORD $0x5ac0125e // clz    w30, w18
    WORD $0x1ade2232 // lsl    w18, w17, w30
    WORD $0x1e260365 // fmov    w5, s27
    WORD $0x710043df // cmp    w30, #16
    WORD $0x0a320044 // bic    w4, w2, w18
    WORD $0x1a840044 // csel    w4, w2, w4, eq
    WORD $0x0a3200a2 // bic    w2, w5, w18
    WORD $0x0a3200d2 // bic    w18, w6, w18
    WORD $0x51000490 // sub    w16, w4, #1
    WORD $0x1a8200a2 // csel    w2, w5, w2, eq
    WORD $0x1a9200d2 // csel    w18, w6, w18, eq
    WORD $0x6a040205 // ands    w5, w16, w4
    BNE LBB0_794
    WORD $0x51000450 // sub    w16, w2, #1
    WORD $0x6a020205 // ands    w5, w16, w2
    BNE LBB0_794
    WORD $0x51000650 // sub    w16, w18, #1
    WORD $0x6a120205 // ands    w5, w16, w18
    BNE LBB0_794
    CMP $0, R4
    BEQ LBB0_641
    WORD $0x5ac00090 // rbit    w16, w4
    WORD $0xb10006ff // cmn    x23, #1
    WORD $0x5ac01204 // clz    w4, w16
    BNE LBB0_807
    WORD $0x8b1b03b0 // add    x16, fp, x27
    WORD $0x8b040217 // add    x23, x16, x4
LBB0_641:
    CMP $0, R2
    BEQ LBB0_644
    WORD $0x5ac00050 // rbit    w16, w2
    WORD $0xb10006df // cmn    x22, #1
    WORD $0x5ac01202 // clz    w2, w16
    BNE LBB0_808
    WORD $0x8b1b03b0 // add    x16, fp, x27
    WORD $0x8b020216 // add    x22, x16, x2
LBB0_644:
    CMP $0, R18_PLATFORM
    BEQ LBB0_647
    WORD $0x5ac00250 // rbit    w16, w18
    WORD $0xb100071f // cmn    x24, #1
    WORD $0x5ac01212 // clz    w18, w16
    BNE LBB0_809
    WORD $0x8b1b03b0 // add    x16, fp, x27
    WORD $0x8b120218 // add    x24, x16, x18
LBB0_647:
    WORD $0x710043df // cmp    w30, #16
    BNE LBB0_679
    WORD $0xd1004339 // sub    x25, x25, #16
    WORD $0x9100437b // add    x27, x27, #16
    WORD $0xf1003f3f // cmp    x25, #15
    BHI LBB0_635
    WORD $0x8b1b035a // add    x26, x26, x27
LBB0_650:
    WORD $0x528000de // mov    w30, #6
    CMP $0, R25
    BEQ LBB0_680
    WORD $0xcb140350 // sub    x16, x26, x20
    WORD $0x8b19035b // add    x27, x26, x25
    WORD $0xaa1a03fd // mov    fp, x26
    WORD $0xcb130210 // sub    x16, x16, x19
    WORD $0x91000a13 // add    x19, x16, #2
    B LBB0_655
LBB0_652:
    WORD $0xb100071f // cmn    x24, #1
    BNE LBB0_786
    WORD $0xd1000678 // sub    x24, x19, #1
LBB0_654:
    WORD $0xd1000739 // sub    x25, x25, #1
    WORD $0x91000673 // add    x19, x19, #1
    WORD $0xaa1d03fa // mov    x26, fp
    CMP $0, R25
    BEQ LBB0_715
LBB0_655:
    WORD $0x384017b2 // ldrb    w18, [fp], #1
    WORD $0x5100c250 // sub    w16, w18, #48
    WORD $0x71002a1f // cmp    w16, #10
    BLO LBB0_654
    WORD $0x7100b65f // cmp    w18, #45
    BLE LBB0_662
    WORD $0x7101965f // cmp    w18, #101
    BEQ LBB0_664
    WORD $0x7101165f // cmp    w18, #69
    BEQ LBB0_664
    WORD $0x7100ba5f // cmp    w18, #46
    BNE LBB0_680
    WORD $0xb10006ff // cmn    x23, #1
    BNE LBB0_786
    WORD $0xd1000677 // sub    x23, x19, #1
    B LBB0_654
LBB0_662:
    WORD $0x7100ae5f // cmp    w18, #43
    BEQ LBB0_652
    WORD $0x7100b65f // cmp    w18, #45
    BEQ LBB0_652
    B LBB0_680
LBB0_664:
    WORD $0xb10006df // cmn    x22, #1
    BNE LBB0_786
    WORD $0xd1000676 // sub    x22, x19, #1
    B LBB0_654
LBB0_666:
    WORD $0x8b1a0372 // add    x18, x27, x26
    WORD $0x528000de // mov    w30, #6
    WORD $0x8b1202ba // add    x26, x21, x18
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x9280001b // mov    x27, #-1
    WORD $0x528000bd // mov    w29, #5
    WORD $0xf2800026 // movk    x6, #1
    CMP $0, R23
    BNE LBB0_681
    B LBB0_1025
LBB0_667:
    WORD $0x71008abf // cmp    w21, #34
    BEQ LBB0_704
    WORD $0x7100b6bf // cmp    w21, #45
    BNE LBB0_943
    WORD $0xf9400028 // ldr    x8, [x1]
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xcb080258 // sub    x24, x18, x8
    WORD $0xf100031f // cmp    x24, #0
    BLE LBB0_1054
    WORD $0x8b080274 // add    x20, x19, x8
    WORD $0x39400292 // ldrb    w18, [x20]
    WORD $0x5100ea50 // sub    w16, w18, #58
    WORD $0x31002a1f // cmn    w16, #10
    BLO LBB0_942
    WORD $0x7100c25f // cmp    w18, #48
    BNE LBB0_718
    WORD $0xf100071f // cmp    x24, #1
    BNE LBB0_716
LBB0_673:
    WORD $0x5280003a // mov    w26, #1
    B LBB0_783
LBB0_674:
    WORD $0x71016ebf // cmp    w21, #91
    BEQ LBB0_702
    WORD $0x71019abf // cmp    w21, #102
    BNE LBB0_943
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xf9400028 // ldr    x8, [x1]
    WORD $0xd1001250 // sub    x16, x18, #4
    WORD $0xeb10011f // cmp    x8, x16
    BHI LBB0_1029
    WORD $0xb8686a70 // ldr    w16, [x19, x8]
    WORD $0x6b1b021f // cmp    w16, w27
    BNE LBB0_1034
    WORD $0x91001110 // add    x16, x8, #4
    B LBB0_698
LBB0_679:
    WORD $0x8b3e4350 // add    x16, x26, w30, uxtw
    WORD $0x528000de // mov    w30, #6
    WORD $0x8b1b021a // add    x26, x16, x27
LBB0_680:
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x9280001b // mov    x27, #-1
    WORD $0x528000bd // mov    w29, #5
    WORD $0xf2800026 // movk    x6, #1
    CMP $0, R23
    BEQ LBB0_1025
LBB0_681:
    CMP $0, R24
    BEQ LBB0_1025
    CMP $0, R22
    BEQ LBB0_1025
    WORD $0xcb150352 // sub    x18, x26, x21
    WORD $0xd1000642 // sub    x2, x18, #1
    WORD $0xeb0202ff // cmp    x23, x2
    BEQ LBB0_691
    WORD $0xeb02031f // cmp    x24, x2
    BEQ LBB0_691
    WORD $0xeb0202df // cmp    x22, x2
    BEQ LBB0_691
    WORD $0xf1000702 // subs    x2, x24, #1
    BLT LBB0_688
    WORD $0xeb0202df // cmp    x22, x2
    BNE LBB0_1023
LBB0_688:
    WORD $0xaa1602e2 // orr    x2, x23, x22
    TST $(1<<63), R2
    BNE LBB0_690
    WORD $0xeb1602ff // cmp    x23, x22
    BGE LBB0_1024
LBB0_690:
    WORD $0xd37ffc50 // lsr    x16, x2, #63
    WORD $0xd10006c2 // sub    x2, x22, #1
    WORD $0xeb0202ff // cmp    x23, x2
    WORD $0x52000210 // eor    w16, w16, #0x1
    WORD $0x1a9f17e2 // cset    w2, eq
    WORD $0x6a02021f // tst    w16, w2
    WORD $0xda96025b // csinv    x27, x18, x22, eq
    B LBB0_692
LBB0_691:
    WORD $0xcb1203fb // neg    x27, x18
LBB0_692:
    TST $(1<<63), R27
    BNE LBB0_1025
LBB0_693:
    WORD $0x8b1b0110 // add    x16, x8, x27
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x528eadda // mov    w26, #30062
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0xf100029f // cmp    x20, #0
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    WORD $0xf9000030 // str    x16, [x1]
    BLE LBB0_943
LBB0_694:
    WORD $0xf9400072 // ldr    x18, [x3]
    WORD $0xaa0a03e8 // mov    x8, x10
    CMP $0, R18_PLATFORM
    BNE LBB0_531
    B LBB0_943
LBB0_695:
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xf9400028 // ldr    x8, [x1]
    WORD $0xd1000e50 // sub    x16, x18, #3
    WORD $0xeb10011f // cmp    x8, x16
    BHI LBB0_1029
    WORD $0x8b080270 // add    x16, x19, x8
    WORD $0xb85ff210 // ldur    w16, [x16, #-1]
    WORD $0x6b19021f // cmp    w16, w25
    BNE LBB0_1039
    WORD $0x91000d10 // add    x16, x8, #3
LBB0_698:
    WORD $0xf100011f // cmp    x8, #0
    WORD $0xf9000030 // str    x16, [x1]
    BGT LBB0_694
    B LBB0_1022
LBB0_699:
    WORD $0xf9400412 // ldr    x18, [x0, #8]
    WORD $0xf9400028 // ldr    x8, [x1]
    WORD $0xd1000e50 // sub    x16, x18, #3
    WORD $0xeb10011f // cmp    x8, x16
    BHI LBB0_1029
    WORD $0x8b080270 // add    x16, x19, x8
    WORD $0xb85ff210 // ldur    w16, [x16, #-1]
    WORD $0x6b1a021f // cmp    w16, w26
    BNE LBB0_1030
    WORD $0x91000d10 // add    x16, x8, #3
    WORD $0xf100011f // cmp    x8, #0
    WORD $0xf9000030 // str    x16, [x1]
    BGT LBB0_694
    B LBB0_1022
LBB0_702:
    WORD $0xf9400068 // ldr    x8, [x3]
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_1014
    WORD $0x91000510 // add    x16, x8, #1
    WORD $0xf9000070 // str    x16, [x3]
    WORD $0xf828793d // str    fp, [x9, x8, lsl #3]
    B LBB0_694
LBB0_704:
    WORD $0xf9400034 // ldr    x20, [x1]
    WORD $0xf9400415 // ldr    x21, [x0, #8]
    WORD $0xeb1402a8 // subs    x8, x21, x20
    BEQ LBB0_1046
    WORD $0xf101011f // cmp    x8, #64
    BLO LBB0_811
    WORD $0xaa1f03f8 // mov    x24, xzr
    WORD $0x92800016 // mov    x22, #-1
    WORD $0xaa1403f7 // mov    x23, x20
LBB0_707:
    WORD $0xa417427a // ld1b    { z26.b }, p0/z, [x19, x23]
    WORD $0x8b170270 // add    x16, x19, x23
    WORD $0x047f50c2 // addpl    x2, sp, #6
    WORD $0xa40f421b // ld1b    { z27.b }, p0/z, [x16, x15]
    WORD $0x910143f0 // add    x16, sp, #80
    WORD $0x047f50b2 // addpl    x18, sp, #5
    WORD $0x2400a341 // cmpeq    p1.b, p0/z, z26.b, z0.b
    WORD $0x2401a342 // cmpeq    p2.b, p0/z, z26.b, z1.b
    WORD $0x2401a363 // cmpeq    p3.b, p0/z, z27.b, z1.b
    WORD $0xe5801e01 // str    p1, [x16, #7, mul vl]
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0xe5801602 // str    p2, [x16, #5, mul vl]
    WORD $0xe5801203 // str    p3, [x16, #4, mul vl]
    WORD $0xb9405252 // ldr    w18, [x18, #80]
    WORD $0xe5801a01 // str    p1, [x16, #6, mul vl]
    WORD $0x047f5090 // addpl    x16, sp, #4
    WORD $0xb9405044 // ldr    w4, [x2, #80]
    WORD $0x047f50e2 // addpl    x2, sp, #7
    WORD $0xb9405210 // ldr    w16, [x16, #80]
    WORD $0xb9405045 // ldr    w5, [x2, #80]
    WORD $0xaa108242 // orr    x2, x18, x16, lsl #32
    WORD $0xaa0480b2 // orr    x18, x5, x4, lsl #32
    CMP $0, R2
    BNE LBB0_711
    CMP $0, R24
    BNE LBB0_713
    CMP $0, R18_PLATFORM
    BNE LBB0_714
LBB0_710:
    WORD $0xd1010108 // sub    x8, x8, #64
    WORD $0x910102f7 // add    x23, x23, #64
    WORD $0xf100fd1f // cmp    x8, #63
    BHI LBB0_707
    B LBB0_810
LBB0_711:
    WORD $0xb10006df // cmn    x22, #1
    BNE LBB0_713
    WORD $0xdac00050 // rbit    x16, x2
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b170216 // add    x22, x16, x23
LBB0_713:
    WORD $0x8a380050 // bic    x16, x2, x24
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0xaa100704 // orr    x4, x24, x16, lsl #1
    WORD $0x528eadda // mov    w26, #30062
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x8a240042 // bic    x2, x2, x4
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    WORD $0x9201f042 // and    x2, x2, #0xaaaaaaaaaaaaaaaa
    WORD $0x528000de // mov    w30, #6
    WORD $0xab100050 // adds    x16, x2, x16
    WORD $0xd37ffa10 // lsl    x16, x16, #1
    WORD $0x1a9f37f8 // cset    w24, hs
    WORD $0xd200f210 // eor    x16, x16, #0x5555555555555555
    WORD $0x8a040210 // and    x16, x16, x4
    WORD $0x8a300252 // bic    x18, x18, x16
    CMP $0, R18_PLATFORM
    BEQ LBB0_710
LBB0_714:
    WORD $0xdac00248 // rbit    x8, x18
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b170108 // add    x8, x8, x23
    WORD $0x91000508 // add    x8, x8, #1
    TST $(1<<63), R8
    BEQ LBB0_568
    B LBB0_1015
LBB0_715:
    WORD $0xaa1b03fa // mov    x26, x27
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x9280001b // mov    x27, #-1
    WORD $0x528000bd // mov    w29, #5
    WORD $0xf2800026 // movk    x6, #1
    CMP $0, R23
    BNE LBB0_681
    B LBB0_1025
LBB0_716:
    WORD $0x39400690 // ldrb    w16, [x20, #1]
    WORD $0x5100ba12 // sub    w18, w16, #46
    WORD $0x7100de5f // cmp    w18, #55
    BHI LBB0_673
    WORD $0x9ad22170 // lsl    x16, x11, x18
    WORD $0x5280003a // mov    w26, #1
    WORD $0xea06021f // tst    x16, x6
    BEQ LBB0_783
LBB0_718:
    WORD $0xf100831f // cmp    x24, #32
    BLO LBB0_827
    WORD $0xaa1f03f9 // mov    x25, xzr
    WORD $0x92800015 // mov    x21, #-1
    WORD $0x92800016 // mov    x22, #-1
    WORD $0x92800017 // mov    x23, #-1
LBB0_720:
    WORD $0xa419429a // ld1b    { z26.b }, p0/z, [x20, x25]
    WORD $0x910143f0 // add    x16, sp, #80
    WORD $0x047f50f2 // addpl    x18, sp, #7
    WORD $0x24028351 // cmpgt    p1.b, p0/z, z26.b, z2.b
    WORD $0x24038352 // cmpgt    p2.b, p0/z, z26.b, z3.b
    WORD $0x2404a343 // cmpeq    p3.b, p0/z, z26.b, z4.b
    WORD $0xe5801e01 // str    p1, [x16, #7, mul vl]
    WORD $0x2405a341 // cmpeq    p1.b, p0/z, z26.b, z5.b
    WORD $0xe5801a02 // str    p2, [x16, #6, mul vl]
    WORD $0x2406a342 // cmpeq    p2.b, p0/z, z26.b, z6.b
    WORD $0xb9405242 // ldr    w2, [x18, #80]
    WORD $0xe5801603 // str    p3, [x16, #5, mul vl]
    WORD $0x2407a343 // cmpeq    p3.b, p0/z, z26.b, z7.b
    WORD $0x047f5092 // addpl    x18, sp, #4
    WORD $0xe5801201 // str    p1, [x16, #4, mul vl]
    WORD $0x2410a341 // cmpeq    p1.b, p0/z, z26.b, z16.b
    WORD $0xe5800e02 // str    p2, [x16, #3, mul vl]
    WORD $0xb9405244 // ldr    w4, [x18, #80]
    WORD $0x047f5072 // addpl    x18, sp, #3
    WORD $0xe5800a03 // str    p3, [x16, #2, mul vl]
    WORD $0xb9405245 // ldr    w5, [x18, #80]
    WORD $0x047f5052 // addpl    x18, sp, #2
    WORD $0xe5800601 // str    p1, [x16, #1, mul vl]
    WORD $0x047f50d0 // addpl    x16, sp, #6
    WORD $0xb9405246 // ldr    w6, [x18, #80]
    WORD $0x047f5032 // addpl    x18, sp, #1
    WORD $0xb9405210 // ldr    w16, [x16, #80]
    WORD $0x2a0400bd // orr    w29, w5, w4
    WORD $0xb940525a // ldr    w26, [x18, #80]
    WORD $0x047f50b2 // addpl    x18, sp, #5
    WORD $0xb9405252 // ldr    w18, [x18, #80]
    WORD $0x0a300050 // bic    w16, w2, w16
    WORD $0x2a06035b // orr    w27, w26, w6
    WORD $0x2a1003b0 // orr    w16, w29, w16
    WORD $0x2a120362 // orr    w2, w27, w18
    WORD $0x2a020210 // orr    w16, w16, w2
    WORD $0xaa3003f0 // mvn    x16, x16
    WORD $0xdac00210 // rbit    x16, x16
    WORD $0xdac0121a // clz    x26, x16
    WORD $0x7100835f // cmp    w26, #32
    BEQ LBB0_722
    WORD $0x1ada2230 // lsl    w16, w17, w26
    WORD $0x0a300252 // bic    w18, w18, w16
    WORD $0x0a3003bd // bic    w29, w29, w16
    WORD $0x0a30037b // bic    w27, w27, w16
LBB0_722:
    WORD $0x51000650 // sub    w16, w18, #1
    WORD $0x6a120202 // ands    w2, w16, w18
    BNE LBB0_805
    WORD $0x510007b0 // sub    w16, w29, #1
    WORD $0x6a1d0202 // ands    w2, w16, w29
    BNE LBB0_805
    WORD $0x51000770 // sub    w16, w27, #1
    WORD $0x6a1b0202 // ands    w2, w16, w27
    BNE LBB0_805
    CMP $0, R18_PLATFORM
    BEQ LBB0_728
    WORD $0xb10006ff // cmn    x23, #1
    BNE LBB0_806
    WORD $0x5ac00250 // rbit    w16, w18
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0x8b100337 // add    x23, x25, x16
LBB0_728:
    CMP $0, R29
    BEQ LBB0_731
    WORD $0xb10006df // cmn    x22, #1
    BNE LBB0_819
    WORD $0x5ac003b0 // rbit    w16, w29
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0x8b100336 // add    x22, x25, x16
LBB0_731:
    CMP $0, R27
    BEQ LBB0_734
    WORD $0xb10006bf // cmn    x21, #1
    BNE LBB0_820
    WORD $0x5ac00370 // rbit    w16, w27
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0x8b100335 // add    x21, x25, x16
LBB0_734:
    WORD $0x7100835f // cmp    w26, #32
    BNE LBB0_767
    WORD $0xd1008318 // sub    x24, x24, #32
    WORD $0x91008339 // add    x25, x25, #32
    WORD $0xf1007f1f // cmp    x24, #31
    BHI LBB0_720
    WORD $0x8b190299 // add    x25, x20, x25
    WORD $0xf100431f // cmp    x24, #16
    BLO LBB0_754
LBB0_737:
    WORD $0xaa1f03fa // mov    x26, xzr
    WORD $0xcb14033b // sub    x27, x25, x20
LBB0_738:
    WORD $0x3cfa6b3a // ldr    q26, [x25, x26]
    WORD $0x4e34875b // add    v27.16b, v26.16b, v20.16b
    WORD $0x6e328f5c // cmeq    v28.16b, v26.16b, v18.16b
    WORD $0x6e338f5d // cmeq    v29.16b, v26.16b, v19.16b
    WORD $0x4e361f5e // and    v30.16b, v26.16b, v22.16b
    WORD $0x6e318f5a // cmeq    v26.16b, v26.16b, v17.16b
    WORD $0x4ebd1f9c // orr    v28.16b, v28.16b, v29.16b
    WORD $0x6e3b36bb // cmhi    v27.16b, v21.16b, v27.16b
    WORD $0x6e378fde // cmeq    v30.16b, v30.16b, v23.16b
    WORD $0x4eba1f7b // orr    v27.16b, v27.16b, v26.16b
    WORD $0x4ebc1fdd // orr    v29.16b, v30.16b, v28.16b
    WORD $0x4e381f5a // and    v26.16b, v26.16b, v24.16b
    WORD $0x4e381f9c // and    v28.16b, v28.16b, v24.16b
    WORD $0x4ebd1f7b // orr    v27.16b, v27.16b, v29.16b
    WORD $0x4e381fdd // and    v29.16b, v30.16b, v24.16b
    WORD $0x4e19035a // tbl    v26.16b, { v26.16b }, v25.16b
    WORD $0x4e19039c // tbl    v28.16b, { v28.16b }, v25.16b
    WORD $0x4e381f7b // and    v27.16b, v27.16b, v24.16b
    WORD $0x4e71bb5a // addv    h26, v26.8h
    WORD $0x4e71bb9c // addv    h28, v28.8h
    WORD $0x4e19037b // tbl    v27.16b, { v27.16b }, v25.16b
    WORD $0x1e260352 // fmov    w18, s26
    WORD $0x1e260386 // fmov    w6, s28
    WORD $0x4e71bb7b // addv    h27, v27.8h
    WORD $0x1e260370 // fmov    w16, s27
    WORD $0x4e1903bb // tbl    v27.16b, { v29.16b }, v25.16b
    WORD $0x2a3003f0 // mvn    w16, w16
    WORD $0x32103e10 // orr    w16, w16, #0xffff0000
    WORD $0x4e71bb7b // addv    h27, v27.8h
    WORD $0x5ac00210 // rbit    w16, w16
    WORD $0x5ac0121d // clz    w29, w16
    WORD $0x1add2230 // lsl    w16, w17, w29
    WORD $0x1e260365 // fmov    w5, s27
    WORD $0x710043bf // cmp    w29, #16
    WORD $0x0a300242 // bic    w2, w18, w16
    WORD $0x1a820244 // csel    w4, w18, w2, eq
    WORD $0x0a3000b2 // bic    w18, w5, w16
    WORD $0x0a3000d0 // bic    w16, w6, w16
    WORD $0x5100049e // sub    w30, w4, #1
    WORD $0x1a9200a2 // csel    w2, w5, w18, eq
    WORD $0x1a9000d2 // csel    w18, w6, w16, eq
    WORD $0x6a0403de // ands    w30, w30, w4
    BNE LBB0_817
    WORD $0x51000450 // sub    w16, w2, #1
    WORD $0x6a02021e // ands    w30, w16, w2
    BNE LBB0_817
    WORD $0x51000650 // sub    w16, w18, #1
    WORD $0x6a12021e // ands    w30, w16, w18
    BNE LBB0_817
    CMP $0, R4
    BEQ LBB0_744
    WORD $0x5ac00090 // rbit    w16, w4
    WORD $0xb10006ff // cmn    x23, #1
    WORD $0x528000de // mov    w30, #6
    WORD $0x5ac01204 // clz    w4, w16
    BNE LBB0_822
    WORD $0x8b1a0370 // add    x16, x27, x26
    WORD $0x8b040217 // add    x23, x16, x4
    B LBB0_745
LBB0_744:
    WORD $0x528000de // mov    w30, #6
LBB0_745:
    CMP $0, R2
    BEQ LBB0_748
    WORD $0x5ac00050 // rbit    w16, w2
    WORD $0xb10006df // cmn    x22, #1
    WORD $0x5ac01202 // clz    w2, w16
    BNE LBB0_823
    WORD $0x8b1a0370 // add    x16, x27, x26
    WORD $0x8b020216 // add    x22, x16, x2
LBB0_748:
    CMP $0, R18_PLATFORM
    BEQ LBB0_751
    WORD $0x5ac00250 // rbit    w16, w18
    WORD $0xb10006bf // cmn    x21, #1
    WORD $0x5ac01212 // clz    w18, w16
    BNE LBB0_824
    WORD $0x8b1a0370 // add    x16, x27, x26
    WORD $0x8b120215 // add    x21, x16, x18
LBB0_751:
    WORD $0x710043bf // cmp    w29, #16
    BNE LBB0_769
    WORD $0xd1004318 // sub    x24, x24, #16
    WORD $0x9100435a // add    x26, x26, #16
    WORD $0xf1003f1f // cmp    x24, #15
    BHI LBB0_738
    WORD $0x8b1a0339 // add    x25, x25, x26
LBB0_754:
    CMP $0, R24
    BEQ LBB0_770
    WORD $0x8b130110 // add    x16, x8, x19
    WORD $0xaa3903f2 // mvn    x18, x25
    WORD $0x8b18033b // add    x27, x25, x24
    WORD $0x8b10025a // add    x26, x18, x16
    WORD $0xcb140333 // sub    x19, x25, x20
    WORD $0xaa1903fd // mov    fp, x25
    B LBB0_758
LBB0_756:
    WORD $0xb10006df // cmn    x22, #1
    WORD $0xaa1303f6 // mov    x22, x19
    BNE LBB0_826
LBB0_757:
    WORD $0xd1000718 // sub    x24, x24, #1
    WORD $0xd100075a // sub    x26, x26, #1
    WORD $0x91000673 // add    x19, x19, #1
    WORD $0xaa1d03f9 // mov    x25, fp
    CMP $0, R24
    BEQ LBB0_804
LBB0_758:
    WORD $0x384017b2 // ldrb    w18, [fp], #1
    WORD $0x5100c250 // sub    w16, w18, #48
    WORD $0x71002a1f // cmp    w16, #10
    BLO LBB0_757
    WORD $0x7100b65f // cmp    w18, #45
    BLE LBB0_764
    WORD $0x7101965f // cmp    w18, #101
    BEQ LBB0_756
    WORD $0x7101165f // cmp    w18, #69
    BEQ LBB0_756
    WORD $0x7100ba5f // cmp    w18, #46
    BNE LBB0_770
    WORD $0xb10006ff // cmn    x23, #1
    WORD $0xaa1303f7 // mov    x23, x19
    BEQ LBB0_757
    B LBB0_826
LBB0_764:
    WORD $0x7100ae5f // cmp    w18, #43
    BEQ LBB0_766
    WORD $0x7100b65f // cmp    w18, #45
    BNE LBB0_770
LBB0_766:
    WORD $0xb10006bf // cmn    x21, #1
    WORD $0xaa1303f5 // mov    x21, x19
    BEQ LBB0_757
    B LBB0_826
LBB0_767:
    WORD $0x8b190350 // add    x16, x26, x25
    WORD $0x8b100299 // add    x25, x20, x16
    B LBB0_770
LBB0_768:
    WORD $0x8b170277 // add    x23, x19, x23
    B LBB0_788
LBB0_769:
    WORD $0x8b3d4330 // add    x16, x25, w29, uxtw
    WORD $0x8b1a0219 // add    x25, x16, x26
LBB0_770:
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x9280001a // mov    x26, #-1
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    CMP $0, R23
    BEQ LBB0_1026
    CMP $0, R21
    BEQ LBB0_1026
    CMP $0, R22
    BEQ LBB0_1026
    WORD $0xcb140332 // sub    x18, x25, x20
    WORD $0xd1000642 // sub    x2, x18, #1
    WORD $0xeb0202ff // cmp    x23, x2
    BEQ LBB0_781
    WORD $0xeb0202bf // cmp    x21, x2
    BEQ LBB0_781
    WORD $0xeb0202df // cmp    x22, x2
    BEQ LBB0_781
    WORD $0xf10006a2 // subs    x2, x21, #1
    BLT LBB0_778
    WORD $0xeb0202df // cmp    x22, x2
    BNE LBB0_1027
LBB0_778:
    WORD $0xaa1602e2 // orr    x2, x23, x22
    TST $(1<<63), R2
    BNE LBB0_780
    WORD $0xeb1602ff // cmp    x23, x22
    BGE LBB0_1045
LBB0_780:
    WORD $0xd37ffc50 // lsr    x16, x2, #63
    WORD $0xd10006c2 // sub    x2, x22, #1
    WORD $0xeb0202ff // cmp    x23, x2
    WORD $0x52000210 // eor    w16, w16, #0x1
    WORD $0x1a9f17e2 // cset    w2, eq
    WORD $0x6a02021f // tst    w16, w2
    WORD $0xda96025a // csinv    x26, x18, x22, eq
    B LBB0_782
LBB0_781:
    WORD $0xcb1203fa // neg    x26, x18
LBB0_782:
    TST $(1<<63), R26
    BNE LBB0_1026
LBB0_783:
    WORD $0x8b080350 // add    x16, x26, x8
    WORD $0x528eadda // mov    w26, #30062
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0xf100011f // cmp    x8, #0
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    WORD $0xf9000030 // str    x16, [x1]
    BGT LBB0_694
    B LBB0_1022
LBB0_784:
    WORD $0x2a0203fe // mov    w30, w2
LBB0_785:
    WORD $0x5ac003d2 // rbit    w18, w30
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0xaa3a03e2 // mvn    x2, x26
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x528000de // mov    w30, #6
    WORD $0x5ac01252 // clz    w18, w18
    WORD $0xcb12005b // sub    x27, x2, x18
    B LBB0_692
LBB0_786:
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0xcb1303fb // neg    x27, x19
    WORD $0x528000bd // mov    w29, #5
    WORD $0xf2800026 // movk    x6, #1
    B LBB0_692
LBB0_787:
    WORD $0xaa1f03f8 // mov    x24, xzr
    WORD $0x8b140277 // add    x23, x19, x20
    WORD $0x92800016 // mov    x22, #-1
LBB0_788:
    WORD $0xf1008119 // subs    x25, x8, #32
    BLO LBB0_832
    WORD $0xa400a2fa // ld1b    { z26.b }, p0/z, [x23]
    WORD $0x910143e8 // add    x8, sp, #80
    WORD $0x2401a341 // cmpeq    p1.b, p0/z, z26.b, z1.b
    WORD $0x2400a342 // cmpeq    p2.b, p0/z, z26.b, z0.b
    WORD $0xe5801901 // str    p1, [x8, #6, mul vl]
    WORD $0xe5801d02 // str    p2, [x8, #7, mul vl]
    WORD $0x047f50c8 // addpl    x8, sp, #6
    WORD $0xb9405112 // ldr    w18, [x8, #80]
    WORD $0x047f50e8 // addpl    x8, sp, #7
    WORD $0xb9405108 // ldr    w8, [x8, #80]
    CMP $0, R18_PLATFORM
    BNE LBB0_828
    CMP $0, R24
    BNE LBB0_830
    CMP $0, R8
    BEQ LBB0_831
LBB0_792:
    WORD $0xdac00108 // rbit    x8, x8
    WORD $0xcb1302f2 // sub    x18, x23, x19
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b080248 // add    x8, x18, x8
    WORD $0x91000508 // add    x8, x8, #1
    TST $(1<<63), R8
    BEQ LBB0_568
    B LBB0_1015
LBB0_793:
    WORD $0x8b170277 // add    x23, x19, x23
    B LBB0_797
LBB0_794:
    WORD $0x5ac000b0 // rbit    w16, w5
    WORD $0x8b130292 // add    x18, x20, x19
    WORD $0xcb1a0252 // sub    x18, x18, x26
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0xcb100250 // sub    x16, x18, x16
LBB0_795:
    WORD $0xcb1b0210 // sub    x16, x16, x27
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528000bd // mov    w29, #5
    WORD $0xd1000a1b // sub    x27, x16, #2
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000de // mov    w30, #6
    B LBB0_692
LBB0_796:
    WORD $0xaa1f03f8 // mov    x24, xzr
    WORD $0x8b140277 // add    x23, x19, x20
    WORD $0x92800016 // mov    x22, #-1
LBB0_797:
    WORD $0xf1008119 // subs    x25, x8, #32
    BLO LBB0_848
    WORD $0xa400a2fa // ld1b    { z26.b }, p0/z, [x23]
    WORD $0x910143e8 // add    x8, sp, #80
    WORD $0x2401a341 // cmpeq    p1.b, p0/z, z26.b, z1.b
    WORD $0x2400a342 // cmpeq    p2.b, p0/z, z26.b, z0.b
    WORD $0xe5801901 // str    p1, [x8, #6, mul vl]
    WORD $0xe5801d02 // str    p2, [x8, #7, mul vl]
    WORD $0x047f50c8 // addpl    x8, sp, #6
    WORD $0xb9405112 // ldr    w18, [x8, #80]
    WORD $0x047f50e8 // addpl    x8, sp, #7
    WORD $0xb9405108 // ldr    w8, [x8, #80]
    CMP $0, R18_PLATFORM
    BNE LBB0_844
    CMP $0, R24
    BNE LBB0_846
    CMP $0, R8
    BEQ LBB0_847
LBB0_801:
    WORD $0xdac00108 // rbit    x8, x8
    WORD $0xcb1302f2 // sub    x18, x23, x19
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b080248 // add    x8, x18, x8
    WORD $0x91000508 // add    x8, x8, #1
    TST $(1<<63), R8
    BEQ LBB0_584
    B LBB0_1015
LBB0_802:
    WORD $0x2a1203fe // mov    w30, w18
    B LBB0_785
LBB0_803:
    WORD $0x2a1d03fe // mov    w30, w29
    B LBB0_785
LBB0_804:
    WORD $0xaa1b03f9 // mov    x25, x27
    B LBB0_770
LBB0_805:
    WORD $0x2a0203f2 // mov    w18, w2
LBB0_806:
    WORD $0x5ac00250 // rbit    w16, w18
    WORD $0xaa3903f2 // mvn    x18, x25
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0xcb10025a // sub    x26, x18, x16
    B LBB0_818
LBB0_807:
    WORD $0x8b130290 // add    x16, x20, x19
    WORD $0xcb1a0210 // sub    x16, x16, x26
    WORD $0xcb244210 // sub    x16, x16, w4, uxtw
    B LBB0_795
LBB0_808:
    WORD $0x8b130290 // add    x16, x20, x19
    WORD $0xcb1a0210 // sub    x16, x16, x26
    WORD $0xcb224210 // sub    x16, x16, w2, uxtw
    B LBB0_795
LBB0_809:
    WORD $0x8b130290 // add    x16, x20, x19
    WORD $0xcb1a0210 // sub    x16, x16, x26
    WORD $0xcb324210 // sub    x16, x16, w18, uxtw
    B LBB0_795
LBB0_810:
    WORD $0x8b170277 // add    x23, x19, x23
    B LBB0_812
LBB0_811:
    WORD $0xaa1f03f8 // mov    x24, xzr
    WORD $0x8b140277 // add    x23, x19, x20
    WORD $0x92800016 // mov    x22, #-1
LBB0_812:
    WORD $0xf1008119 // subs    x25, x8, #32
    BLO LBB0_867
    WORD $0xa400a2fa // ld1b    { z26.b }, p0/z, [x23]
    WORD $0x910143e8 // add    x8, sp, #80
    WORD $0x2401a341 // cmpeq    p1.b, p0/z, z26.b, z1.b
    WORD $0x2400a342 // cmpeq    p2.b, p0/z, z26.b, z0.b
    WORD $0xe5801901 // str    p1, [x8, #6, mul vl]
    WORD $0xe5801d02 // str    p2, [x8, #7, mul vl]
    WORD $0x047f50c8 // addpl    x8, sp, #6
    WORD $0xb9405112 // ldr    w18, [x8, #80]
    WORD $0x047f50e8 // addpl    x8, sp, #7
    WORD $0xb9405108 // ldr    w8, [x8, #80]
    CMP $0, R18_PLATFORM
    BNE LBB0_863
    CMP $0, R24
    BNE LBB0_865
    CMP $0, R8
    BEQ LBB0_866
LBB0_816:
    WORD $0xdac00108 // rbit    x8, x8
    WORD $0xcb1302f0 // sub    x16, x23, x19
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b080208 // add    x8, x16, x8
    WORD $0x91000508 // add    x8, x8, #1
    B LBB0_878
LBB0_817:
    WORD $0x5ac003d0 // rbit    w16, w30
    WORD $0x8b130112 // add    x18, x8, x19
    WORD $0xaa3903e2 // mvn    x2, x25
    WORD $0x8b120052 // add    x18, x2, x18
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0xcb100250 // sub    x16, x18, x16
    WORD $0xcb1a021a // sub    x26, x16, x26
LBB0_818:
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x528000bd // mov    w29, #5
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x528000de // mov    w30, #6
    B LBB0_782
LBB0_819:
    WORD $0x2a1d03f2 // mov    w18, w29
    B LBB0_806
LBB0_820:
    WORD $0x2a1b03f2 // mov    w18, w27
    B LBB0_806
LBB0_821:
    WORD $0x92800018 // mov    x24, #-1
    WORD $0x92800016 // mov    x22, #-1
    WORD $0x92800017 // mov    x23, #-1
    WORD $0xaa1503fa // mov    x26, x21
    WORD $0xf100433f // cmp    x25, #16
    BHS LBB0_634
    B LBB0_650
LBB0_822:
    WORD $0x8b130110 // add    x16, x8, x19
    WORD $0xaa3903f2 // mvn    x18, x25
    WORD $0x8b100250 // add    x16, x18, x16
    WORD $0xcb244210 // sub    x16, x16, w4, uxtw
    B LBB0_825
LBB0_823:
    WORD $0x8b130110 // add    x16, x8, x19
    WORD $0xaa3903f2 // mvn    x18, x25
    WORD $0x8b100250 // add    x16, x18, x16
    WORD $0xcb224210 // sub    x16, x16, w2, uxtw
    B LBB0_825
LBB0_824:
    WORD $0x8b130110 // add    x16, x8, x19
    WORD $0xaa3903e2 // mvn    x2, x25
    WORD $0x8b100050 // add    x16, x2, x16
    WORD $0xcb324210 // sub    x16, x16, w18, uxtw
LBB0_825:
    WORD $0xcb1a021a // sub    x26, x16, x26
LBB0_826:
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x528000bd // mov    w29, #5
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    B LBB0_782
LBB0_827:
    WORD $0x92800015 // mov    x21, #-1
    WORD $0x92800016 // mov    x22, #-1
    WORD $0x92800017 // mov    x23, #-1
    WORD $0xaa1403f9 // mov    x25, x20
    WORD $0xf100431f // cmp    x24, #16
    BHS LBB0_737
    B LBB0_754
LBB0_828:
    WORD $0xb10006df // cmn    x22, #1
    BNE LBB0_830
    WORD $0xdac00242 // rbit    x2, x18
    WORD $0xcb1302e4 // sub    x4, x23, x19
    WORD $0xdac01042 // clz    x2, x2
    WORD $0x8b020096 // add    x22, x4, x2
LBB0_830:
    WORD $0x0a380242 // bic    w2, w18, w24
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x531f7844 // lsl    w4, w2, #1
    WORD $0x331f7858 // bfi    w24, w2, #1, #31
    WORD $0x528eadda // mov    w26, #30062
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x0a240252 // bic    w18, w18, w4
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x528000de // mov    w30, #6
    WORD $0x1201f252 // and    w18, w18, #0xaaaaaaaa
    WORD $0x2b020252 // adds    w18, w18, w2
    WORD $0x531f7a52 // lsl    w18, w18, #1
    WORD $0x5200f252 // eor    w18, w18, #0x55555555
    WORD $0x0a180252 // and    w18, w18, w24
    WORD $0x1a9f37f8 // cset    w24, hs
    WORD $0x2a3203f2 // mvn    w18, w18
    WORD $0x8a080248 // and    x8, x18, x8
    CMP $0, R8
    BNE LBB0_792
LBB0_831:
    WORD $0x910082f7 // add    x23, x23, #32
    WORD $0xaa1903e8 // mov    x8, x25
LBB0_832:
    CMP $0, R24
    BNE LBB0_859
    CMP $0, R8
    BEQ LBB0_841
LBB0_834:
    WORD $0xaa3303f2 // mvn    x18, x19
LBB0_835:
    WORD $0xaa1703e2 // mov    x2, x23
    WORD $0x38401458 // ldrb    w24, [x2], #1
    WORD $0x71008b1f // cmp    w24, #34
    BEQ LBB0_842
    WORD $0x7101731f // cmp    w24, #92
    WORD $0xd1000504 // sub    x4, x8, #1
    BEQ LBB0_838
    WORD $0xaa0203f7 // mov    x23, x2
    WORD $0xaa0403e8 // mov    x8, x4
    CMP $0, R4
    BNE LBB0_835
    B LBB0_840
LBB0_838:
    CMP $0, R4
    BEQ LBB0_1056
    WORD $0x8b120042 // add    x2, x2, x18
    WORD $0xb10006df // cmn    x22, #1
    WORD $0x91000af7 // add    x23, x23, #2
    WORD $0x9a960056 // csel    x22, x2, x22, eq
    WORD $0xd1000904 // sub    x4, x8, #2
    WORD $0xaa0403e8 // mov    x8, x4
    CMP $0, R4
    BNE LBB0_835
LBB0_840:
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x528eadda // mov    w26, #30062
    WORD $0x71008b1f // cmp    w24, #34
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x528000de // mov    w30, #6
    BNE LBB0_1056
LBB0_841:
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0xaa1703e2 // mov    x2, x23
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    B LBB0_843
LBB0_842:
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x528eadda // mov    w26, #30062
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    WORD $0x528000de // mov    w30, #6
LBB0_843:
    WORD $0xcb130048 // sub    x8, x2, x19
    TST $(1<<63), R8
    BEQ LBB0_568
    B LBB0_1015
LBB0_844:
    WORD $0xb10006df // cmn    x22, #1
    BNE LBB0_846
    WORD $0xdac00242 // rbit    x2, x18
    WORD $0xcb1302e4 // sub    x4, x23, x19
    WORD $0xdac01042 // clz    x2, x2
    WORD $0x8b020096 // add    x22, x4, x2
LBB0_846:
    WORD $0x0a380242 // bic    w2, w18, w24
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x531f7844 // lsl    w4, w2, #1
    WORD $0x331f7858 // bfi    w24, w2, #1, #31
    WORD $0x528eadda // mov    w26, #30062
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x0a240252 // bic    w18, w18, w4
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x528000de // mov    w30, #6
    WORD $0x1201f252 // and    w18, w18, #0xaaaaaaaa
    WORD $0x2b020252 // adds    w18, w18, w2
    WORD $0x531f7a52 // lsl    w18, w18, #1
    WORD $0x5200f252 // eor    w18, w18, #0x55555555
    WORD $0x0a180252 // and    w18, w18, w24
    WORD $0x1a9f37f8 // cset    w24, hs
    WORD $0x2a3203f2 // mvn    w18, w18
    WORD $0x8a080248 // and    x8, x18, x8
    CMP $0, R8
    BNE LBB0_801
LBB0_847:
    WORD $0x910082f7 // add    x23, x23, #32
    WORD $0xaa1903e8 // mov    x8, x25
LBB0_848:
    CMP $0, R24
    BNE LBB0_861
    CMP $0, R8
    BEQ LBB0_857
LBB0_850:
    WORD $0xaa3303f2 // mvn    x18, x19
LBB0_851:
    WORD $0xaa1703e2 // mov    x2, x23
    WORD $0x38401458 // ldrb    w24, [x2], #1
    WORD $0x71008b1f // cmp    w24, #34
    BEQ LBB0_858
    WORD $0x7101731f // cmp    w24, #92
    WORD $0xd1000504 // sub    x4, x8, #1
    BEQ LBB0_854
    WORD $0xaa0203f7 // mov    x23, x2
    WORD $0xaa0403e8 // mov    x8, x4
    CMP $0, R4
    BNE LBB0_851
    B LBB0_856
LBB0_854:
    CMP $0, R4
    BEQ LBB0_1056
    WORD $0x8b120042 // add    x2, x2, x18
    WORD $0xb10006df // cmn    x22, #1
    WORD $0x91000af7 // add    x23, x23, #2
    WORD $0x9a960056 // csel    x22, x2, x22, eq
    WORD $0xd1000904 // sub    x4, x8, #2
    WORD $0xaa0403e8 // mov    x8, x4
    CMP $0, R4
    BNE LBB0_851
LBB0_856:
    WORD $0x71008b1f // cmp    w24, #34
    BNE LBB0_1056
LBB0_857:
    WORD $0xaa1703e2 // mov    x2, x23
LBB0_858:
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x528eadda // mov    w26, #30062
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0xcb130048 // sub    x8, x2, x19
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    WORD $0x528000de // mov    w30, #6
    TST $(1<<63), R8
    BEQ LBB0_584
    B LBB0_1015
LBB0_859:
    CMP $0, R8
    BEQ LBB0_1056
    WORD $0xaa3303f2 // mvn    x18, x19
    WORD $0xb10006df // cmn    x22, #1
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x8b1202f2 // add    x18, x23, x18
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x528eadda // mov    w26, #30062
    WORD $0x9a960256 // csel    x22, x18, x22, eq
    WORD $0x910006f7 // add    x23, x23, #1
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x528000de // mov    w30, #6
    CMP $0, R8
    BNE LBB0_834
    B LBB0_841
LBB0_861:
    CMP $0, R8
    BEQ LBB0_1056
    WORD $0xaa3303f2 // mvn    x18, x19
    WORD $0xb10006df // cmn    x22, #1
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x8b1202f2 // add    x18, x23, x18
    WORD $0x910006f7 // add    x23, x23, #1
    WORD $0x9a960256 // csel    x22, x18, x22, eq
    CMP $0, R8
    BNE LBB0_850
    B LBB0_857
LBB0_863:
    WORD $0xb10006df // cmn    x22, #1
    BNE LBB0_865
    WORD $0xdac00250 // rbit    x16, x18
    WORD $0xcb1302e2 // sub    x2, x23, x19
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b100056 // add    x22, x2, x16
LBB0_865:
    WORD $0x0a380250 // bic    w16, w18, w24
    WORD $0x531f7a02 // lsl    w2, w16, #1
    WORD $0x331f7a18 // bfi    w24, w16, #1, #31
    WORD $0x0a220252 // bic    w18, w18, w2
    WORD $0x1201f252 // and    w18, w18, #0xaaaaaaaa
    WORD $0x2b100252 // adds    w18, w18, w16
    WORD $0x531f7a52 // lsl    w18, w18, #1
    WORD $0x5200f250 // eor    w16, w18, #0x55555555
    WORD $0x0a180210 // and    w16, w16, w24
    WORD $0x1a9f37f8 // cset    w24, hs
    WORD $0x2a3003f0 // mvn    w16, w16
    WORD $0x8a080208 // and    x8, x16, x8
    CMP $0, R8
    BNE LBB0_816
LBB0_866:
    WORD $0x910082f7 // add    x23, x23, #32
    WORD $0xaa1903e8 // mov    x8, x25
LBB0_867:
    CMP $0, R24
    BNE LBB0_879
    CMP $0, R8
    BEQ LBB0_876
LBB0_869:
    WORD $0xaa3303f2 // mvn    x18, x19
LBB0_870:
    WORD $0xaa1703e2 // mov    x2, x23
    WORD $0x38401458 // ldrb    w24, [x2], #1
    WORD $0x71008b1f // cmp    w24, #34
    BEQ LBB0_877
    WORD $0x7101731f // cmp    w24, #92
    WORD $0xd1000504 // sub    x4, x8, #1
    BEQ LBB0_873
    WORD $0xaa0203f7 // mov    x23, x2
    WORD $0xaa0403e8 // mov    x8, x4
    CMP $0, R4
    BNE LBB0_870
    B LBB0_875
LBB0_873:
    CMP $0, R4
    BEQ LBB0_1056
    WORD $0x8b120050 // add    x16, x2, x18
    WORD $0xb10006df // cmn    x22, #1
    WORD $0x91000af7 // add    x23, x23, #2
    WORD $0x9a960216 // csel    x22, x16, x22, eq
    WORD $0xd1000904 // sub    x4, x8, #2
    WORD $0xaa0403e8 // mov    x8, x4
    CMP $0, R4
    BNE LBB0_870
LBB0_875:
    WORD $0x71008b1f // cmp    w24, #34
    BNE LBB0_1056
LBB0_876:
    WORD $0xaa1703e2 // mov    x2, x23
LBB0_877:
    WORD $0xcb130048 // sub    x8, x2, x19
LBB0_878:
    WORD $0xb20903e6 // mov    x6, #36028797027352576
    WORD $0x528d8c3b // mov    w27, #27745
    WORD $0x528eadda // mov    w26, #30062
    WORD $0x528e4e99 // mov    w25, #29300
    WORD $0xf2800026 // movk    x6, #1
    WORD $0x528000bd // mov    w29, #5
    WORD $0x72acae7b // movk    w27, #25971, lsl #16
    WORD $0x72ad8d9a // movk    w26, #27756, lsl #16
    WORD $0x72acaeb9 // movk    w25, #25973, lsl #16
    WORD $0x528000de // mov    w30, #6
    TST $(1<<63), R8
    BEQ LBB0_568
    B LBB0_1015
LBB0_879:
    CMP $0, R8
    BEQ LBB0_1056
    WORD $0xaa3303f0 // mvn    x16, x19
    WORD $0xb10006df // cmn    x22, #1
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x8b1002f0 // add    x16, x23, x16
    WORD $0x910006f7 // add    x23, x23, #1
    WORD $0x9a960216 // csel    x22, x16, x22, eq
    CMP $0, R8
    BNE LBB0_869
    B LBB0_876
LBB0_881:
    WORD $0xa940200a // ldp    x10, x8, [x0]
    WORD $0xf940002b // ldr    x11, [x1]
    WORD $0xeb08017f // cmp    x11, x8
    BHS LBB0_885
    WORD $0x386b6949 // ldrb    w9, [x10, x11]
    WORD $0x7100353f // cmp    w9, #13
    BEQ LBB0_885
    WORD $0x7100813f // cmp    w9, #32
    BEQ LBB0_885
    WORD $0x51002d29 // sub    w9, w9, #11
    WORD $0x3100093f // cmn    w9, #2
    WORD $0xaa0b03e9 // mov    x9, x11
    BLO LBB0_908
LBB0_885:
    WORD $0x91000569 // add    x9, x11, #1
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_889
    WORD $0x3869694c // ldrb    w12, [x10, x9]
    WORD $0x7100359f // cmp    w12, #13
    BEQ LBB0_889
    WORD $0x7100819f // cmp    w12, #32
    BEQ LBB0_889
    WORD $0x51002d8c // sub    w12, w12, #11
    WORD $0x3100099f // cmn    w12, #2
    BLO LBB0_908
LBB0_889:
    WORD $0x91000969 // add    x9, x11, #2
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_893
    WORD $0x3869694c // ldrb    w12, [x10, x9]
    WORD $0x7100359f // cmp    w12, #13
    BEQ LBB0_893
    WORD $0x7100819f // cmp    w12, #32
    BEQ LBB0_893
    WORD $0x51002d8c // sub    w12, w12, #11
    WORD $0x3100099f // cmn    w12, #2
    BLO LBB0_908
LBB0_893:
    WORD $0x91000d69 // add    x9, x11, #3
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_897
    WORD $0x3869694c // ldrb    w12, [x10, x9]
    WORD $0x7100359f // cmp    w12, #13
    BEQ LBB0_897
    WORD $0x7100819f // cmp    w12, #32
    BEQ LBB0_897
    WORD $0x51002d8c // sub    w12, w12, #11
    WORD $0x3100099f // cmn    w12, #2
    BLO LBB0_908
LBB0_897:
    WORD $0x91001169 // add    x9, x11, #4
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_902
    WORD $0xd284c00c // mov    x12, #9728
    WORD $0x5280002b // mov    w11, #1
    WORD $0xf2c0002c // movk    x12, #1, lsl #32
LBB0_899:
    WORD $0x3869694d // ldrb    w13, [x10, x9]
    WORD $0x9acd216e // lsl    x14, x11, x13
    WORD $0x710081bf // cmp    w13, #32
    WORD $0x8a0c01cd // and    x13, x14, x12
    WORD $0xfa4099a4 // ccmp    x13, #0, #4, ls
    BEQ LBB0_907
    WORD $0x91000529 // add    x9, x9, #1
    WORD $0xeb09011f // cmp    x8, x9
    BNE LBB0_899
LBB0_901:
    WORD $0x92800008 // mov    x8, #-1
    B LBB0_943
LBB0_902:
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x92800008 // mov    x8, #-1
    B LBB0_943
LBB0_903:
    WORD $0xd1000748 // sub    x8, x26, #1
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x92800428 // mov    x8, #-34
    B LBB0_943
LBB0_904:
    WORD $0xf9000039 // str    x25, [x1]
    B LBB0_940
LBB0_905:
    WORD $0x710175ff // cmp    w15, #93
    BNE LBB0_940
LBB0_906:
    WORD $0xf9000039 // str    x25, [x1]
    WORD $0x92800408 // mov    x8, #-33
    B LBB0_943
LBB0_907:
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_901
LBB0_908:
    WORD $0x91000530 // add    x16, x9, #1
    WORD $0xf9000030 // str    x16, [x1]
    WORD $0x38696948 // ldrb    w8, [x10, x9]
    WORD $0x7101691f // cmp    w8, #90
    BGT LBB0_934
    WORD $0x7100bd1f // cmp    w8, #47
    BLE LBB0_945
    WORD $0x5100c108 // sub    w8, w8, #48
    WORD $0x7100291f // cmp    w8, #10
    BHS LBB0_1011
LBB0_911:
    WORD $0xf9400408 // ldr    x8, [x0, #8]
    WORD $0xcb10010b // sub    x11, x8, x16
    WORD $0x8b100148 // add    x8, x10, x16
    WORD $0xf100817f // cmp    x11, #32
    BLO LBB0_915
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x2538cfa0 // mov    z0.b, #125
    WORD $0x2538cba1 // mov    z1.b, #93
    WORD $0x2538c582 // mov    z2.b, #44
    WORD $0xaa1f03ec // mov    x12, xzr
LBB0_913:
    WORD $0xa400a103 // ld1b    { z3.b }, p0/z, [x8]
    WORD $0x910143ed // add    x13, sp, #80
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0x047f50af // addpl    x15, sp, #5
    WORD $0x2400a061 // cmpeq    p1.b, p0/z, z3.b, z0.b
    WORD $0x2401a062 // cmpeq    p2.b, p0/z, z3.b, z1.b
    WORD $0x2402a063 // cmpeq    p3.b, p0/z, z3.b, z2.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    WORD $0xe58015a3 // str    p3, [x13, #5, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94051ce // ldr    w14, [x14, #80]
    WORD $0xb94051ad // ldr    w13, [x13, #80]
    WORD $0xb94051ef // ldr    w15, [x15, #80]
    WORD $0x2a0d01cd // orr    w13, w14, w13
    WORD $0x2a0f01ad // orr    w13, w13, w15
    CMP $0, R13
    BNE LBB0_929
    WORD $0xd100816b // sub    x11, x11, #32
    WORD $0x91008108 // add    x8, x8, #32
    WORD $0x9100818c // add    x12, x12, #32
    WORD $0xf1007d7f // cmp    x11, #31
    BHI LBB0_913
LBB0_915:
    WORD $0xf100417f // cmp    x11, #16
    BLO LBB0_920
    WORD $0x4f01e580 // movi    v0.16b, #44
    WORD $0x4f06e7e1 // movi    v1.16b, #223
    ADR LCPI0_0, R12
    WORD $0x4f02e7a2 // movi    v2.16b, #93
    ADR LCPI0_1, R13
    WORD $0x3dc00183 // ldr    q3, [x12, :lo12:.LCPI0_0]
    WORD $0x3dc001a4 // ldr    q4, [x13, :lo12:.LCPI0_1]
    WORD $0xaa1f03ec // mov    x12, xzr
LBB0_917:
    WORD $0x3cec6905 // ldr    q5, [x8, x12]
    WORD $0x4e211ca6 // and    v6.16b, v5.16b, v1.16b
    WORD $0x6e208ca5 // cmeq    v5.16b, v5.16b, v0.16b
    WORD $0x6e228cc6 // cmeq    v6.16b, v6.16b, v2.16b
    WORD $0x4ea51cc5 // orr    v5.16b, v6.16b, v5.16b
    WORD $0x4e231ca5 // and    v5.16b, v5.16b, v3.16b
    WORD $0x4e0400a5 // tbl    v5.16b, { v5.16b }, v4.16b
    WORD $0x4e71b8a5 // addv    h5, v5.8h
    WORD $0x1e2600ad // fmov    w13, s5
    CMP $0, R13
    BNE LBB0_1018
    WORD $0xd100416b // sub    x11, x11, #16
    WORD $0x9100418c // add    x12, x12, #16
    WORD $0xf1003d7f // cmp    x11, #15
    BHI LBB0_917
    WORD $0x8b0c0108 // add    x8, x8, x12
LBB0_920:
    CMP $0, R11
    BEQ LBB0_928
    WORD $0xd284c00f // mov    x15, #9728
    WORD $0x8b0b010c // add    x12, x8, x11
    WORD $0xcb0a010d // sub    x13, x8, x10
    WORD $0x5280002e // mov    w14, #1
    WORD $0xf2c2002f // movk    x15, #4097, lsl #32
LBB0_922:
    WORD $0x39400110 // ldrb    w16, [x8]
    WORD $0x7100b21f // cmp    w16, #44
    BHI LBB0_924
    WORD $0x9ad021d1 // lsl    x17, x14, x16
    WORD $0xea0f023f // tst    x17, x15
    BNE LBB0_1047
LBB0_924:
    WORD $0x7101f61f // cmp    w16, #125
    BEQ LBB0_1047
    WORD $0x7101761f // cmp    w16, #93
    BEQ LBB0_1047
    WORD $0xf100056b // subs    x11, x11, #1
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0x910005ad // add    x13, x13, #1
    BNE LBB0_922
    WORD $0xaa0c03e8 // mov    x8, x12
LBB0_928:
    WORD $0xcb0a0108 // sub    x8, x8, x10
    B LBB0_1013
LBB0_929:
    WORD $0x5ac001ab // rbit    w11, w13
    WORD $0xcb0a010d // sub    x13, x8, x10
    WORD $0x5ac01168 // clz    w8, w11
    WORD $0x8b0801ab // add    x11, x13, x8
    WORD $0xf100057f // cmp    x11, #1
    WORD $0xf900002b // str    x11, [x1]
    BLT LBB0_933
    WORD $0x8b0c0108 // add    x8, x8, x12
    WORD $0xd284c00c // mov    x12, #9728
    WORD $0x8b09014a // add    x10, x10, x9
    WORD $0x5280002b // mov    w11, #1
    WORD $0xf2c0002c // movk    x12, #1, lsl #32
LBB0_931:
    WORD $0x3868694d // ldrb    w13, [x10, x8]
    WORD $0x9acd216e // lsl    x14, x11, x13
    WORD $0x710081bf // cmp    w13, #32
    WORD $0x8a0c01cd // and    x13, x14, x12
    WORD $0xfa4099a4 // ccmp    x13, #0, #4, ls
    BEQ LBB0_933
    WORD $0x8b08012d // add    x13, x9, x8
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x8b08012e // add    x14, x9, x8
    WORD $0xf900002d // str    x13, [x1]
    WORD $0x910009ce // add    x14, x14, #2
    WORD $0xf10005df // cmp    x14, #1
    BGT LBB0_931
LBB0_933:
    WORD $0xaa0903e8 // mov    x8, x9
    B LBB0_943
LBB0_934:
    WORD $0x7101b51f // cmp    w8, #109
    BLE LBB0_948
    WORD $0x7101b91f // cmp    w8, #110
    BEQ LBB0_975
    WORD $0x7101d11f // cmp    w8, #116
    BEQ LBB0_975
    WORD $0x7101ed1f // cmp    w8, #123
    BNE LBB0_1011
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
    WORD $0x910043ef // add    x15, sp, #16
    WORD $0x3dc00235 // ldr    q21, [x17, :lo12:.LCPI0_9]
    WORD $0xaa1f03ee // mov    x14, xzr
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0xaa1f03eb // mov    x11, xzr
    WORD $0xcb1001ad // sub    x13, x13, x16
    WORD $0x8b100152 // add    x18, x10, x16
    WORD $0x910081ea // add    x10, x15, #32
    WORD $0x52800410 // mov    w16, #32
    B LBB0_952
LBB0_939:
    WORD $0x7101f51f // cmp    w8, #125
    BEQ LBB0_906
LBB0_940:
    WORD $0xf9400028 // ldr    x8, [x1]
    WORD $0xd1000508 // sub    x8, x8, #1
LBB0_941:
    WORD $0xf9000028 // str    x8, [x1]
LBB0_942:
    WORD $0x92800028 // mov    x8, #-2
LBB0_943:
    WORD $0xaa0803e0 // mov    x0, x8
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910143ff // add    sp, sp, #80
    WORD $0xa9484ff4 // ldp    x20, x19, [sp, #128]
    WORD $0xf9401bfd // ldr    fp, [sp, #48]
    WORD $0xa94757f6 // ldp    x22, x21, [sp, #112]
    WORD $0xa9465ff8 // ldp    x24, x23, [sp, #96]
    WORD $0xa94567fa // ldp    x26, x25, [sp, #80]
    WORD $0xa9446ffe // ldp    lr, x27, [sp, #64]
    WORD $0x6d4223e9 // ldp    d9, d8, [sp, #32]
    WORD $0x6d412beb // ldp    d11, d10, [sp, #16]
    WORD $0x6cc933ed // ldp    d13, d12, [sp], #144
    WORD $0xd65f03c0 // ret
LBB0_944:
    WORD $0xf9000034 // str    x20, [x1]
    WORD $0x92800008 // mov    x8, #-1
    B LBB0_943
LBB0_945:
    CMP $0, R8
    BEQ LBB0_901
    WORD $0x7100891f // cmp    w8, #34
    BEQ LBB0_976
    WORD $0x7100b51f // cmp    w8, #45
    BEQ LBB0_911
    B LBB0_1011
LBB0_948:
    WORD $0x71016d1f // cmp    w8, #91
    BEQ LBB0_985
    WORD $0x7101991f // cmp    w8, #102
    BNE LBB0_1011
    WORD $0xf940040a // ldr    x10, [x0, #8]
    WORD $0x91001528 // add    x8, x9, #5
    WORD $0xeb0a011f // cmp    x8, x10
    BHI LBB0_901
    B LBB0_1013
LBB0_951:
    WORD $0x9e670256 // fmov    d22, x18
    WORD $0x937ffdce // asr    x14, x14, #63
    WORD $0x91008052 // add    x18, x2, #32
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602cd // fmov    w13, s22
    WORD $0x8b0801a8 // add    x8, x13, x8
    WORD $0xaa1103ed // mov    x13, x17
LBB0_952:
    WORD $0xf10101b1 // subs    x17, x13, #64
    BLT LBB0_959
LBB0_953:
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0x910143f3 // add    x19, sp, #80
    WORD $0x2400a2c2 // cmpeq    p2.b, p0/z, z22.b, z0.b
    WORD $0x2400a2e3 // cmpeq    p3.b, p0/z, z23.b, z0.b
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0xb9405262 // ldr    w2, [x19, #80]
    WORD $0x910143f3 // add    x19, sp, #80
    WORD $0x2401a2c2 // cmpeq    p2.b, p0/z, z22.b, z1.b
    WORD $0x2401a2e3 // cmpeq    p3.b, p0/z, z23.b, z1.b
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9405263 // ldr    w3, [x19, #80]
    WORD $0x910143f3 // add    x19, sp, #80
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9405264 // ldr    w4, [x19, #80]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xb9405265 // ldr    w5, [x19, #80]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0xaa0c0085 // orr    x5, x4, x12
    CMP $0, R5
    BNE LBB0_955
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e4 // mov    x4, xzr
    B LBB0_956
LBB0_955:
    WORD $0x8a2c0085 // bic    x5, x4, x12
    WORD $0xaa050586 // orr    x6, x12, x5, lsl #1
    WORD $0x8a26008c // bic    x12, x4, x6
    WORD $0x9201f18c // and    x12, x12, #0xaaaaaaaaaaaaaaaa
    WORD $0xab05018c // adds    x12, x12, x5
    WORD $0xd37ff98c // lsl    x12, x12, #1
    WORD $0xd200f184 // eor    x4, x12, #0x5555555555555555
    WORD $0x1a9f37ec // cset    w12, hs
    WORD $0x8a060084 // and    x4, x4, x6
LBB0_956:
    WORD $0xaa038042 // orr    x2, x2, x3, lsl #32
    WORD $0x910143f3 // add    x19, sp, #80
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
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x6e371f17 // eor    v23.16b, v24.16b, v23.16b
    WORD $0x6e391ed6 // eor    v22.16b, v22.16b, v25.16b
    WORD $0x2412a363 // cmpeq    p3.b, p0/z, z27.b, z18.b
    WORD $0x4e351ed6 // and    v22.16b, v22.16b, v21.16b
    WORD $0x4e241ef7 // and    v23.16b, v23.16b, v4.16b
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0xa400a058 // ld1b    { z24.b }, p0/z, [x2]
    WORD $0x4eb61ef6 // orr    v22.16b, v23.16b, v22.16b
    WORD $0xa400a257 // ld1b    { z23.b }, p0/z, [x18]
    WORD $0x047f50f2 // addpl    x18, sp, #7
    WORD $0x2413a303 // cmpeq    p3.b, p0/z, z24.b, z19.b
    WORD $0xb9405252 // ldr    w18, [x18, #80]
    WORD $0x2413a2e2 // cmpeq    p2.b, p0/z, z23.b, z19.b
    WORD $0x6e1642d9 // ext    v25.16b, v22.16b, v22.16b, #8
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9405263 // ldr    w3, [x19, #80]
    WORD $0x910143f3 // add    x19, sp, #80
    WORD $0x0eb91ed6 // orr    v22.8b, v22.8b, v25.8b
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9405264 // ldr    w4, [x19, #80]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xaa038252 // orr    x18, x18, x3, lsl #32
    WORD $0xb9405265 // ldr    w5, [x19, #80]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0x9e6602c5 // fmov    x5, d22
    WORD $0xca0e00ae // eor    x14, x5, x14
    WORD $0xea2e0083 // bics    x3, x4, x14
    WORD $0x8a2e0252 // bic    x18, x18, x14
    BEQ LBB0_951
LBB0_957:
    WORD $0xd1000464 // sub    x4, x3, #1
    WORD $0x8a120085 // and    x5, x4, x18
    WORD $0x9e6700b6 // fmov    d22, x5
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602c5 // fmov    w5, s22
    WORD $0x8b0800a5 // add    x5, x5, x8
    WORD $0xeb0b00bf // cmp    x5, x11
    BLS LBB0_1010
    WORD $0xea030083 // ands    x3, x4, x3
    WORD $0x9100056b // add    x11, x11, #1
    BNE LBB0_957
    B LBB0_951
LBB0_959:
    WORD $0xf10001bf // cmp    x13, #0
    BLE LBB0_1055
    WORD $0x92402e42 // and    x2, x18, #0xfff
    WORD $0xad00c7f1 // stp    q17, q17, [sp, #16]
    WORD $0xf13f045f // cmp    x2, #4033
    WORD $0xad01c7f1 // stp    q17, q17, [sp, #48]
    BLO LBB0_953
    WORD $0xf10081a3 // subs    x3, x13, #32
    BLO LBB0_963
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0x91008252 // add    x18, x18, #32
    WORD $0xaa0a03e2 // mov    x2, x10
    WORD $0xe400e1f6 // st1b    { z22.b }, p0, [x15]
    B LBB0_964
LBB0_963:
    WORD $0x910043e2 // add    x2, sp, #16
    WORD $0xaa0d03e3 // mov    x3, x13
LBB0_964:
    WORD $0xf1004064 // subs    x4, x3, #16
    BLO LBB0_970
    WORD $0x3cc10656 // ldr    q22, [x18], #16
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0x3c810456 // str    q22, [x2], #16
    WORD $0xf1002084 // subs    x4, x4, #8
    BHS LBB0_971
LBB0_966:
    WORD $0xf1001064 // subs    x4, x3, #4
    BLO LBB0_972
LBB0_967:
    WORD $0xb8404643 // ldr    w3, [x18], #4
    WORD $0xb8004443 // str    w3, [x2], #4
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1000884 // subs    x4, x4, #2
    BHS LBB0_973
LBB0_968:
    CMP $0, R3
    BEQ LBB0_974
LBB0_969:
    WORD $0x39400243 // ldrb    w3, [x18]
    WORD $0x910043f2 // add    x18, sp, #16
    WORD $0x39000043 // strb    w3, [x2]
    B LBB0_953
LBB0_970:
    WORD $0xf1002064 // subs    x4, x3, #8
    BLO LBB0_966
LBB0_971:
    WORD $0xf8408643 // ldr    x3, [x18], #8
    WORD $0xf8008443 // str    x3, [x2], #8
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1001084 // subs    x4, x4, #4
    BHS LBB0_967
LBB0_972:
    WORD $0xf1000864 // subs    x4, x3, #2
    BLO LBB0_968
LBB0_973:
    WORD $0x78402643 // ldrh    w3, [x18], #2
    WORD $0x78002443 // strh    w3, [x2], #2
    WORD $0xaa0403e3 // mov    x3, x4
    CMP $0, R4
    BNE LBB0_969
LBB0_974:
    WORD $0x910043f2 // add    x18, sp, #16
    B LBB0_953
LBB0_975:
    WORD $0xf940040a // ldr    x10, [x0, #8]
    WORD $0x91001128 // add    x8, x9, #4
    WORD $0xeb0a011f // cmp    x8, x10
    BHI LBB0_901
    B LBB0_1013
LBB0_976:
    WORD $0xf940040e // ldr    x14, [x0, #8]
    WORD $0xcb1001cb // sub    x11, x14, x16
    WORD $0xf100817f // cmp    x11, #32
    BLT LBB0_1044
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x2538c440 // mov    z0.b, #34
    WORD $0x2538cb81 // mov    z1.b, #92
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0xaa1f03ed // mov    x13, xzr
    WORD $0x8b09014c // add    x12, x10, x9
    WORD $0xcb0901cb // sub    x11, x14, x9
    WORD $0x528003ee // mov    w14, #31
    WORD $0x5280002f // mov    w15, #1
LBB0_978:
    WORD $0x8b080190 // add    x16, x12, x8
    WORD $0x910143f1 // add    x17, sp, #80
    WORD $0xa40f4202 // ld1b    { z2.b }, p0/z, [x16, x15]
    WORD $0x910143f0 // add    x16, sp, #80
    WORD $0x2400a041 // cmpeq    p1.b, p0/z, z2.b, z0.b
    WORD $0x2401a042 // cmpeq    p2.b, p0/z, z2.b, z1.b
    WORD $0xe5801e01 // str    p1, [x16, #7, mul vl]
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0xb9405210 // ldr    w16, [x16, #80]
    WORD $0xe5801e22 // str    p2, [x17, #7, mul vl]
    WORD $0x047f50f1 // addpl    x17, sp, #7
    WORD $0xb9405231 // ldr    w17, [x17, #80]
    CMP $0, R17
    BNE LBB0_980
    CMP $0, R13
    BEQ LBB0_981
LBB0_980:
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
LBB0_981:
    CMP $0, R16
    BNE LBB0_1012
    WORD $0xd10081ce // sub    x14, x14, #32
    WORD $0x91008108 // add    x8, x8, #32
    WORD $0x8b0e0170 // add    x16, x11, x14
    WORD $0xf100fe1f // cmp    x16, #63
    BGT LBB0_978
    CMP $0, R13
    BNE LBB0_1057
    WORD $0x8b09014c // add    x12, x10, x9
    WORD $0x8b08018c // add    x12, x12, x8
    WORD $0xaa2803e8 // mvn    x8, x8
    WORD $0x9100058c // add    x12, x12, #1
    WORD $0x8b0b010b // add    x11, x8, x11
    WORD $0xf100057f // cmp    x11, #1
    BGE LBB0_1060
    B LBB0_901
LBB0_985:
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
    WORD $0x910043ef // add    x15, sp, #16
    WORD $0x3dc00235 // ldr    q21, [x17, :lo12:.LCPI0_9]
    WORD $0xaa1f03ee // mov    x14, xzr
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0xaa1f03eb // mov    x11, xzr
    WORD $0xcb1001ad // sub    x13, x13, x16
    WORD $0x8b100152 // add    x18, x10, x16
    WORD $0x910081ea // add    x10, x15, #32
    WORD $0x52800410 // mov    w16, #32
    B LBB0_987
LBB0_986:
    WORD $0x9e670256 // fmov    d22, x18
    WORD $0x937ffdce // asr    x14, x14, #63
    WORD $0x91008052 // add    x18, x2, #32
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602cd // fmov    w13, s22
    WORD $0x8b0801a8 // add    x8, x13, x8
    WORD $0xaa1103ed // mov    x13, x17
LBB0_987:
    WORD $0xf10101b1 // subs    x17, x13, #64
    BLT LBB0_994
LBB0_988:
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0x910143f3 // add    x19, sp, #80
    WORD $0x2400a2c2 // cmpeq    p2.b, p0/z, z22.b, z0.b
    WORD $0x2400a2e3 // cmpeq    p3.b, p0/z, z23.b, z0.b
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0xb9405262 // ldr    w2, [x19, #80]
    WORD $0x910143f3 // add    x19, sp, #80
    WORD $0x2401a2c2 // cmpeq    p2.b, p0/z, z22.b, z1.b
    WORD $0x2401a2e3 // cmpeq    p3.b, p0/z, z23.b, z1.b
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9405263 // ldr    w3, [x19, #80]
    WORD $0x910143f3 // add    x19, sp, #80
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9405264 // ldr    w4, [x19, #80]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xb9405265 // ldr    w5, [x19, #80]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0xaa0c0085 // orr    x5, x4, x12
    CMP $0, R5
    BNE LBB0_990
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e4 // mov    x4, xzr
    B LBB0_991
LBB0_990:
    WORD $0x8a2c0085 // bic    x5, x4, x12
    WORD $0xaa050586 // orr    x6, x12, x5, lsl #1
    WORD $0x8a26008c // bic    x12, x4, x6
    WORD $0x9201f18c // and    x12, x12, #0xaaaaaaaaaaaaaaaa
    WORD $0xab05018c // adds    x12, x12, x5
    WORD $0xd37ff98c // lsl    x12, x12, #1
    WORD $0xd200f184 // eor    x4, x12, #0x5555555555555555
    WORD $0x1a9f37ec // cset    w12, hs
    WORD $0x8a060084 // and    x4, x4, x6
LBB0_991:
    WORD $0xaa038042 // orr    x2, x2, x3, lsl #32
    WORD $0x910143f3 // add    x19, sp, #80
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
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x6e371f17 // eor    v23.16b, v24.16b, v23.16b
    WORD $0x6e391ed6 // eor    v22.16b, v22.16b, v25.16b
    WORD $0x2412a363 // cmpeq    p3.b, p0/z, z27.b, z18.b
    WORD $0x4e351ed6 // and    v22.16b, v22.16b, v21.16b
    WORD $0x4e241ef7 // and    v23.16b, v23.16b, v4.16b
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0xa400a058 // ld1b    { z24.b }, p0/z, [x2]
    WORD $0x4eb61ef6 // orr    v22.16b, v23.16b, v22.16b
    WORD $0xa400a257 // ld1b    { z23.b }, p0/z, [x18]
    WORD $0x047f50f2 // addpl    x18, sp, #7
    WORD $0x2413a303 // cmpeq    p3.b, p0/z, z24.b, z19.b
    WORD $0xb9405252 // ldr    w18, [x18, #80]
    WORD $0x2413a2e2 // cmpeq    p2.b, p0/z, z23.b, z19.b
    WORD $0x6e1642d9 // ext    v25.16b, v22.16b, v22.16b, #8
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9405263 // ldr    w3, [x19, #80]
    WORD $0x910143f3 // add    x19, sp, #80
    WORD $0x0eb91ed6 // orr    v22.8b, v22.8b, v25.8b
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9405264 // ldr    w4, [x19, #80]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xaa038252 // orr    x18, x18, x3, lsl #32
    WORD $0xb9405265 // ldr    w5, [x19, #80]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0x9e6602c5 // fmov    x5, d22
    WORD $0xca0e00ae // eor    x14, x5, x14
    WORD $0xea2e0083 // bics    x3, x4, x14
    WORD $0x8a2e0252 // bic    x18, x18, x14
    BEQ LBB0_986
LBB0_992:
    WORD $0xd1000464 // sub    x4, x3, #1
    WORD $0x8a120085 // and    x5, x4, x18
    WORD $0x9e6700b6 // fmov    d22, x5
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602c5 // fmov    w5, s22
    WORD $0x8b0800a5 // add    x5, x5, x8
    WORD $0xeb0b00bf // cmp    x5, x11
    BLS LBB0_1010
    WORD $0xea030083 // ands    x3, x4, x3
    WORD $0x9100056b // add    x11, x11, #1
    BNE LBB0_992
    B LBB0_986
LBB0_994:
    WORD $0xf10001bf // cmp    x13, #0
    BLE LBB0_1055
    WORD $0x92402e42 // and    x2, x18, #0xfff
    WORD $0xad00c7f1 // stp    q17, q17, [sp, #16]
    WORD $0xf13f045f // cmp    x2, #4033
    WORD $0xad01c7f1 // stp    q17, q17, [sp, #48]
    BLO LBB0_988
    WORD $0xf10081a3 // subs    x3, x13, #32
    BLO LBB0_998
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0x91008252 // add    x18, x18, #32
    WORD $0xaa0a03e2 // mov    x2, x10
    WORD $0xe400e1f6 // st1b    { z22.b }, p0, [x15]
    B LBB0_999
LBB0_998:
    WORD $0x910043e2 // add    x2, sp, #16
    WORD $0xaa0d03e3 // mov    x3, x13
LBB0_999:
    WORD $0xf1004064 // subs    x4, x3, #16
    BLO LBB0_1005
    WORD $0x3cc10656 // ldr    q22, [x18], #16
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0x3c810456 // str    q22, [x2], #16
    WORD $0xf1002084 // subs    x4, x4, #8
    BHS LBB0_1006
LBB0_1001:
    WORD $0xf1001064 // subs    x4, x3, #4
    BLO LBB0_1007
LBB0_1002:
    WORD $0xb8404643 // ldr    w3, [x18], #4
    WORD $0xb8004443 // str    w3, [x2], #4
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1000884 // subs    x4, x4, #2
    BHS LBB0_1008
LBB0_1003:
    CMP $0, R3
    BEQ LBB0_1009
LBB0_1004:
    WORD $0x39400243 // ldrb    w3, [x18]
    WORD $0x910043f2 // add    x18, sp, #16
    WORD $0x39000043 // strb    w3, [x2]
    B LBB0_988
LBB0_1005:
    WORD $0xf1002064 // subs    x4, x3, #8
    BLO LBB0_1001
LBB0_1006:
    WORD $0xf8408643 // ldr    x3, [x18], #8
    WORD $0xf8008443 // str    x3, [x2], #8
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1001084 // subs    x4, x4, #4
    BHS LBB0_1002
LBB0_1007:
    WORD $0xf1000864 // subs    x4, x3, #2
    BLO LBB0_1003
LBB0_1008:
    WORD $0x78402643 // ldrh    w3, [x18], #2
    WORD $0x78002443 // strh    w3, [x2], #2
    WORD $0xaa0403e3 // mov    x3, x4
    CMP $0, R4
    BNE LBB0_1004
LBB0_1009:
    WORD $0x910043f2 // add    x18, sp, #16
    B LBB0_988
LBB0_1010:
    WORD $0xdac00068 // rbit    x8, x3
    WORD $0xf940040a // ldr    x10, [x0, #8]
    WORD $0xdac01108 // clz    x8, x8
    WORD $0xcb0d0108 // sub    x8, x8, x13
    WORD $0x8b0a0108 // add    x8, x8, x10
    WORD $0x9100050a // add    x10, x8, #1
    WORD $0xf900002a // str    x10, [x1]
    WORD $0xf940040b // ldr    x11, [x0, #8]
    WORD $0xeb0b015f // cmp    x10, x11
    WORD $0x9a882568 // csinc    x8, x11, x8, hs
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0xda9f9128 // csinv    x8, x9, xzr, ls
    B LBB0_943
LBB0_1011:
    WORD $0xf9000029 // str    x9, [x1]
    B LBB0_942
LBB0_1012:
    WORD $0xdac0020a // rbit    x10, x16
    WORD $0x8b080128 // add    x8, x9, x8
    WORD $0xdac0114a // clz    x10, x10
    WORD $0x8b080148 // add    x8, x10, x8
    WORD $0x91000908 // add    x8, x8, #2
LBB0_1013:
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0xaa0903e8 // mov    x8, x9
    B LBB0_943
LBB0_1014:
    WORD $0x928000c8 // mov    x8, #-7
    B LBB0_943
LBB0_1015:
    WORD $0xb100051f // cmn    x8, #1
    WORD $0x9a9602b4 // csel    x20, x21, x22, eq
    WORD $0xf9000034 // str    x20, [x1]
    B LBB0_943
LBB0_1016:
    WORD $0xd1000688 // sub    x8, x20, #1
    B LBB0_943
LBB0_1017:
    WORD $0x9280001b // mov    x27, #-1
    B LBB0_1025
LBB0_1018:
    WORD $0x5ac001ab // rbit    w11, w13
    WORD $0xcb0a010a // sub    x10, x8, x10
    WORD $0x8b0c014d // add    x13, x10, x12
    WORD $0x5ac0116b // clz    w11, w11
    WORD $0x8b0d016d // add    x13, x11, x13
    WORD $0xf10005bf // cmp    x13, #1
    WORD $0xf900002d // str    x13, [x1]
    BLT LBB0_933
    WORD $0xd284c00d // mov    x13, #9728
    WORD $0x8b0c016b // add    x11, x11, x12
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x5280002c // mov    w12, #1
    WORD $0xf2c0002d // movk    x13, #1, lsl #32
LBB0_1020:
    WORD $0x386b690e // ldrb    w14, [x8, x11]
    WORD $0x9ace218f // lsl    x15, x12, x14
    WORD $0x710081df // cmp    w14, #32
    WORD $0x8a0d01ee // and    x14, x15, x13
    WORD $0xfa4099c4 // ccmp    x14, #0, #4, ls
    BEQ LBB0_933
    WORD $0x8b0b014e // add    x14, x10, x11
    WORD $0xd100056b // sub    x11, x11, #1
    WORD $0x8b0b014f // add    x15, x10, x11
    WORD $0xd10005ce // sub    x14, x14, #1
    WORD $0x910005ef // add    x15, x15, #1
    WORD $0xf900002e // str    x14, [x1]
    WORD $0xf10005ff // cmp    x15, #1
    BGT LBB0_1020
    B LBB0_933
LBB0_1022:
    WORD $0xd1000508 // sub    x8, x8, #1
    B LBB0_943
LBB0_1023:
    WORD $0xaa3803fb // mvn    x27, x24
    B LBB0_1025
LBB0_1024:
    WORD $0xaa3703fb // mvn    x27, x23
LBB0_1025:
    WORD $0xcb1b0288 // sub    x8, x20, x27
    WORD $0xd1000908 // sub    x8, x8, #2
    B LBB0_941
LBB0_1026:
    WORD $0xaa3a03f5 // mvn    x21, x26
LBB0_1027:
    WORD $0x8b150108 // add    x8, x8, x21
    B LBB0_941
LBB0_1028:
    WORD $0xaa1d03f2 // mov    x18, fp
LBB0_1029:
    WORD $0xf9000032 // str    x18, [x1]
    WORD $0x92800008 // mov    x8, #-1
    B LBB0_943
LBB0_1030:
    WORD $0xd1000509 // sub    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a69 // ldrb    w9, [x19, x9]
    WORD $0x7101b93f // cmp    w9, #110
    BNE LBB0_942
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x38686a69 // ldrb    w9, [x19, x8]
    WORD $0x7101d53f // cmp    w9, #117
    BNE LBB0_942
    WORD $0x91000509 // add    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a69 // ldrb    w9, [x19, x9]
    WORD $0x7101b13f // cmp    w9, #108
    BNE LBB0_942
    WORD $0x91000909 // add    x9, x8, #2
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a69 // ldrb    w9, [x19, x9]
    WORD $0x7101b13f // cmp    w9, #108
    BNE LBB0_942
    B LBB0_1043
LBB0_1034:
    WORD $0x38686a69 // ldrb    w9, [x19, x8]
    WORD $0x7101853f // cmp    w9, #97
    BNE LBB0_942
    WORD $0x91000509 // add    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a69 // ldrb    w9, [x19, x9]
    WORD $0x7101b13f // cmp    w9, #108
    BNE LBB0_942
    WORD $0x91000909 // add    x9, x8, #2
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a69 // ldrb    w9, [x19, x9]
    WORD $0x7101cd3f // cmp    w9, #115
    BNE LBB0_942
    WORD $0x91000d09 // add    x9, x8, #3
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a69 // ldrb    w9, [x19, x9]
    WORD $0x7101953f // cmp    w9, #101
    BNE LBB0_942
    WORD $0x91001108 // add    x8, x8, #4
    B LBB0_941
LBB0_1039:
    WORD $0xd1000509 // sub    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a69 // ldrb    w9, [x19, x9]
    WORD $0x7101d13f // cmp    w9, #116
    BNE LBB0_942
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x38686a69 // ldrb    w9, [x19, x8]
    WORD $0x7101c93f // cmp    w9, #114
    BNE LBB0_942
    WORD $0x91000509 // add    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a69 // ldrb    w9, [x19, x9]
    WORD $0x7101d53f // cmp    w9, #117
    BNE LBB0_942
    WORD $0x91000909 // add    x9, x8, #2
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a69 // ldrb    w9, [x19, x9]
    WORD $0x7101953f // cmp    w9, #101
    BNE LBB0_942
LBB0_1043:
    WORD $0x91000d08 // add    x8, x8, #3
    B LBB0_941
LBB0_1044:
    WORD $0x8b10014c // add    x12, x10, x16
    WORD $0xf100057f // cmp    x11, #1
    BGE LBB0_1060
    B LBB0_901
LBB0_1045:
    WORD $0xaa1703f5 // mov    x21, x23
    B LBB0_1027
LBB0_1046:
    WORD $0x92800008 // mov    x8, #-1
    WORD $0xf9000034 // str    x20, [x1]
    B LBB0_943
LBB0_1047:
    WORD $0xf900002d // str    x13, [x1]
    WORD $0xaa0903e8 // mov    x8, x9
    B LBB0_943
LBB0_1048:
    WORD $0x91000b18 // add    x24, x24, #2
LBB0_1049:
    WORD $0x92800028 // mov    x8, #-2
    B LBB0_1053
LBB0_1050:
    WORD $0x91000718 // add    x24, x24, #1
    WORD $0x92800048 // mov    x8, #-3
    B LBB0_1053
LBB0_1051:
    WORD $0x91000718 // add    x24, x24, #1
LBB0_1052:
    WORD $0x92800008 // mov    x8, #-1
LBB0_1053:
    WORD $0xcb170309 // sub    x9, x24, x23
    WORD $0xf9000029 // str    x9, [x1]
    B LBB0_943
LBB0_1054:
    WORD $0xf9000032 // str    x18, [x1]
    B LBB0_942
LBB0_1055:
    WORD $0xf9400408 // ldr    x8, [x0, #8]
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x92800008 // mov    x8, #-1
    B LBB0_943
LBB0_1056:
    WORD $0x92800008 // mov    x8, #-1
    WORD $0xaa1503f4 // mov    x20, x21
    WORD $0xf9000035 // str    x21, [x1]
    B LBB0_943
LBB0_1057:
    WORD $0xd100056c // sub    x12, x11, #1
    WORD $0xeb08019f // cmp    x12, x8
    BEQ LBB0_901
    WORD $0x8b09014c // add    x12, x10, x9
    WORD $0x8b08018c // add    x12, x12, x8
    WORD $0xcb080168 // sub    x8, x11, x8
    WORD $0x9100098c // add    x12, x12, #2
    WORD $0xd100090b // sub    x11, x8, #2
    WORD $0xf100057f // cmp    x11, #1
    BGE LBB0_1060
    B LBB0_901
LBB0_1059:
    WORD $0x92800028 // mov    x8, #-2
    WORD $0x5280004d // mov    w13, #2
    WORD $0xab08016b // adds    x11, x11, x8
    WORD $0x8b0d018c // add    x12, x12, x13
    WORD $0x92800008 // mov    x8, #-1
    BLE LBB0_943
LBB0_1060:
    WORD $0x39400188 // ldrb    w8, [x12]
    WORD $0x7101711f // cmp    w8, #92
    BEQ LBB0_1059
    WORD $0x7100891f // cmp    w8, #34
    BEQ LBB0_1063
    WORD $0x92800008 // mov    x8, #-1
    WORD $0x5280002d // mov    w13, #1
    WORD $0xab08016b // adds    x11, x11, x8
    WORD $0x8b0d018c // add    x12, x12, x13
    WORD $0x92800008 // mov    x8, #-1
    BGT LBB0_1060
    B LBB0_943
LBB0_1063:
    WORD $0xcb0a0188 // sub    x8, x12, x10
    WORD $0x91000508 // add    x8, x8, #1
    B LBB0_1013
LBB0_1064:
    WORD $0x91002318 // add    x24, x24, #8
    B LBB0_1049
LBB0_1065:
    WORD $0x92800068 // mov    x8, #-4
    WORD $0xaa1203f8 // mov    x24, x18
    B LBB0_1053
LBB0_1066:
    WORD $0xaa1203f8 // mov    x24, x18
    B LBB0_1053
LBB0_1067:
    WORD $0x91002318 // add    x24, x24, #8
    WORD $0x92800068 // mov    x8, #-4
    B LBB0_1053
MASK_USE_NUMBER:
    WORD $0x00000002 // .long    2
_UnquoteTab:
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00220000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x2F000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x0000005C
    WORD $0x00080000
    WORD $0x000C0000
    WORD $0x00000000
    WORD $0x000A0000
    WORD $0x000D0000
    WORD $0x0000FF09
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000
    WORD $0x00000000

TEXT ·__get_by_path(SB), NOSPLIT, $0-40
	NO_LOCAL_POINTERS

_entry:
	MOVD 16(g), R16
	SUB $288, RSP, R17
	CMP  R16, R17
	BLS  _stack_grow

_get_by_path:
	MOVD s+0(FP), R0
	MOVD p+8(FP), R1
	MOVD path+16(FP), R2
	MOVD m+24(FP), R3
	MOVD ·_subr__get_by_path(SB), R11
	WORD $0x1000005e // adr x30, .+8
	JMP (R11)
	MOVD R0, ret+32(FP)
	RET

_stack_grow:
	MOVD R30, R3
	CALL runtime·morestack_noctxt<>(SB)
	JMP  _entry
