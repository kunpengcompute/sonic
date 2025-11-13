//+build !noasm !appengine
// -- DO NOT EDIT

#include "go_asm.h"
#include "funcdata.h"
#include "textflag.h"

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

TEXT ·__skip_one_entry__(SB), NOSPLIT, $176
	NO_LOCAL_POINTERS
	WORD $0x100000a0 // adr x0, .+20
	MOVD R0, ret(FP)
	RET

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
skip_one:
    WORD $0xf81a0ffd // str    fp, [sp, #-96]!
    WORD $0xa9016ffe // stp    lr, x27, [sp, #16]
    WORD $0xa90267fa // stp    x26, x25, [sp, #32]
    WORD $0xa9035ff8 // stp    x24, x23, [sp, #48]
    WORD $0xa90457f6 // stp    x22, x21, [sp, #64]
    WORD $0xa9054ff4 // stp    x20, x19, [sp, #80]
    WORD $0xd10183ff // sub    sp, sp, #96
    WORD $0x043f57ff // addvl    sp, sp, #-1
    TST $(1<<6), R3
    BNE LBB0_543
    ADR LCPI0_10, R8
    ADR LCPI0_1, R16
    WORD $0xaa0203e9 // mov    x9, x2
    WORD $0x3dc00100 // ldr    q0, [x8, :lo12:.LCPI0_10]
    ADR LCPI0_0, R8
    WORD $0xd284c00c // mov    x12, #9728
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x3dc00119 // ldr    q25, [x8, :lo12:.LCPI0_0]
    WORD $0x3dc0021a // ldr    q26, [x16, :lo12:.LCPI0_1]
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x9280000a // mov    x10, #-1
    WORD $0x5280002b // mov    w11, #1
    WORD $0xf2c0002c // movk    x12, #1, lsl #32
    WORD $0x52800078 // mov    w24, #3
    WORD $0x5280008e // mov    w14, #4
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x3c808520 // str    q0, [x9], #8
    WORD $0x5280040f // mov    w15, #32
    WORD $0x2538c440 // mov    z0.b, #34
    WORD $0x2538cb81 // mov    z1.b, #92
    WORD $0x2538c3e2 // mov    z2.b, #31
    WORD $0xf280003a // movk    x26, #1
    WORD $0x2538c5e3 // mov    z3.b, #47
    WORD $0x2538c724 // mov    z4.b, #57
    WORD $0x2538c5c5 // mov    z5.b, #46
    WORD $0x2538cca6 // mov    z6.b, #101
    WORD $0x2538c8a7 // mov    z7.b, #69
    WORD $0x2538c570 // mov    z16.b, #43
    WORD $0x2538c5b1 // mov    z17.b, #45
    WORD $0x4f01e5d2 // movi    v18.16b, #46
    WORD $0x4f01e573 // movi    v19.16b, #43
    WORD $0x4f01e5b4 // movi    v20.16b, #45
    WORD $0x4f06e615 // movi    v21.16b, #208
    WORD $0x4f00e556 // movi    v22.16b, #10
    WORD $0x4f06e7f7 // movi    v23.16b, #223
    WORD $0x4f02e4b8 // movi    v24.16b, #69
    WORD $0x12800019 // mov    w25, #-1
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    WORD $0x52800054 // mov    w20, #2
LBB0_2:
    WORD $0xa9402012 // ldp    x18, x8, [x0]
    WORD $0xf9400025 // ldr    x5, [x1]
    WORD $0xeb0800bf // cmp    x5, x8
    BHS LBB0_6
    WORD $0x38656a44 // ldrb    w4, [x18, x5]
    WORD $0x7100349f // cmp    w4, #13
    BEQ LBB0_6
    WORD $0x7100809f // cmp    w4, #32
    BEQ LBB0_6
    WORD $0x51002c90 // sub    w16, w4, #11
    WORD $0xaa0503e4 // mov    x4, x5
    WORD $0x31000a1f // cmn    w16, #2
    BLO LBB0_22
LBB0_6:
    WORD $0x910004a4 // add    x4, x5, #1
    WORD $0xeb08009f // cmp    x4, x8
    BHS LBB0_10
    WORD $0x38646a46 // ldrb    w6, [x18, x4]
    WORD $0x710034df // cmp    w6, #13
    BEQ LBB0_10
    WORD $0x710080df // cmp    w6, #32
    BEQ LBB0_10
    WORD $0x51002cd0 // sub    w16, w6, #11
    WORD $0x31000a1f // cmn    w16, #2
    BLO LBB0_22
LBB0_10:
    WORD $0x910008a4 // add    x4, x5, #2
    WORD $0xeb08009f // cmp    x4, x8
    BHS LBB0_14
    WORD $0x38646a46 // ldrb    w6, [x18, x4]
    WORD $0x710034df // cmp    w6, #13
    BEQ LBB0_14
    WORD $0x710080df // cmp    w6, #32
    BEQ LBB0_14
    WORD $0x51002cd0 // sub    w16, w6, #11
    WORD $0x31000a1f // cmn    w16, #2
    BLO LBB0_22
LBB0_14:
    WORD $0x91000ca4 // add    x4, x5, #3
    WORD $0xeb08009f // cmp    x4, x8
    BHS LBB0_18
    WORD $0x38646a46 // ldrb    w6, [x18, x4]
    WORD $0x710034df // cmp    w6, #13
    BEQ LBB0_18
    WORD $0x710080df // cmp    w6, #32
    BEQ LBB0_18
    WORD $0x51002cd0 // sub    w16, w6, #11
    WORD $0x31000a1f // cmn    w16, #2
    BLO LBB0_22
LBB0_18:
    WORD $0x910010a4 // add    x4, x5, #4
    WORD $0xeb08009f // cmp    x4, x8
    BHS LBB0_626
LBB0_19:
    WORD $0x38646a50 // ldrb    w16, [x18, x4]
    WORD $0x9ad02165 // lsl    x5, x11, x16
    WORD $0x7100821f // cmp    w16, #32
    WORD $0x8a0c00b0 // and    x16, x5, x12
    WORD $0xfa409a04 // ccmp    x16, #0, #4, ls
    BEQ LBB0_21
    WORD $0x91000484 // add    x4, x4, #1
    WORD $0xeb04011f // cmp    x8, x4
    BNE LBB0_19
    B LBB0_563
LBB0_21:
    WORD $0xeb08009f // cmp    x4, x8
    BHS LBB0_563
LBB0_22:
    WORD $0x91000488 // add    x8, x4, #1
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x38646a45 // ldrb    w5, [x18, x4]
    CMP $0, R5
    BEQ LBB0_563
    WORD $0xf9400048 // ldr    x8, [x2]
    WORD $0xb100055f // cmn    x10, #1
    WORD $0x9a8a008a // csel    x10, x4, x10, eq
    WORD $0xd1000506 // sub    x6, x8, #1
    WORD $0xf8667927 // ldr    x7, [x9, x6, lsl #3]
    WORD $0x71000cff // cmp    w7, #3
    BGT LBB0_40
    WORD $0x710004ff // cmp    w7, #1
    BEQ LBB0_56
    WORD $0x710008ff // cmp    w7, #2
    BEQ LBB0_66
    WORD $0x71000cff // cmp    w7, #3
    BNE LBB0_60
    WORD $0x710088bf // cmp    w5, #34
    BNE LBB0_704
    WORD $0xf826792e // str    x14, [x9, x6, lsl #3]
    WORD $0xf9400024 // ldr    x4, [x1]
    WORD $0xf9400405 // ldr    x5, [x0, #8]
    TST $(1<<5), R3
    BNE LBB0_81
    WORD $0xeb0400a8 // subs    x8, x5, x4
    BEQ LBB0_710
    WORD $0xf101011f // cmp    x8, #64
    BLO LBB0_306
    WORD $0xaa1f03f3 // mov    x19, xzr
    WORD $0x92800006 // mov    x6, #-1
    WORD $0xaa0403e7 // mov    x7, x4
LBB0_32:
    WORD $0xa407425b // ld1b    { z27.b }, p0/z, [x18, x7]
    WORD $0x8b070250 // add    x16, x18, x7
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xa40f421c // ld1b    { z28.b }, p0/z, [x16, x15]
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0x2401a362 // cmpeq    p2.b, p0/z, z27.b, z1.b
    WORD $0x2401a383 // cmpeq    p3.b, p0/z, z28.b, z1.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x2400a381 // cmpeq    p1.b, p0/z, z28.b, z0.b
    WORD $0xe58015a2 // str    p2, [x13, #5, mul vl]
    WORD $0xe58011a3 // str    p3, [x13, #4, mul vl]
    WORD $0xe58019a1 // str    p1, [x13, #6, mul vl]
    WORD $0x047f508d // addpl    x13, sp, #4
    WORD $0xb94061b0 // ldr    w16, [x13, #96]
    WORD $0x047f50ad // addpl    x13, sp, #5
    WORD $0xb94061b4 // ldr    w20, [x13, #96]
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0xb94061b6 // ldr    w22, [x13, #96]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b7 // ldr    w23, [x13, #96]
    WORD $0xaa108295 // orr    x21, x20, x16, lsl #32
    WORD $0xaa1682f4 // orr    x20, x23, x22, lsl #32
    CMP $0, R21
    BNE LBB0_36
    CMP $0, R19
    BNE LBB0_38
    CMP $0, R20
    BNE LBB0_39
LBB0_35:
    WORD $0xd1010108 // sub    x8, x8, #64
    WORD $0x910100e7 // add    x7, x7, #64
    WORD $0xf100fd1f // cmp    x8, #63
    BHI LBB0_32
    B LBB0_301
LBB0_36:
    WORD $0xb10004df // cmn    x6, #1
    BNE LBB0_38
    WORD $0xdac002b0 // rbit    x16, x21
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b070206 // add    x6, x16, x7
LBB0_38:
    WORD $0x8a3302b0 // bic    x16, x21, x19
    WORD $0xaa100673 // orr    x19, x19, x16, lsl #1
    WORD $0x8a3302b5 // bic    x21, x21, x19
    WORD $0x9201f2b5 // and    x21, x21, #0xaaaaaaaaaaaaaaaa
    WORD $0xab1002b0 // adds    x16, x21, x16
    WORD $0xd37ffa10 // lsl    x16, x16, #1
    WORD $0xd200f210 // eor    x16, x16, #0x5555555555555555
    WORD $0x8a130210 // and    x16, x16, x19
    WORD $0x1a9f37f3 // cset    w19, hs
    WORD $0x8a300294 // bic    x20, x20, x16
    CMP $0, R20
    BEQ LBB0_35
LBB0_39:
    WORD $0xdac00288 // rbit    x8, x20
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b070108 // add    x8, x8, x7
    B LBB0_94
LBB0_40:
    WORD $0x710010ff // cmp    w7, #4
    BEQ LBB0_58
    WORD $0x710014ff // cmp    w7, #5
    BEQ LBB0_68
    WORD $0x710018ff // cmp    w7, #6
    BNE LBB0_60
    WORD $0x710088bf // cmp    w5, #34
    BNE LBB0_67
    WORD $0xf8267934 // str    x20, [x9, x6, lsl #3]
    WORD $0xf9400024 // ldr    x4, [x1]
    WORD $0xf9400417 // ldr    x23, [x0, #8]
    TST $(1<<5), R3
    BNE LBB0_96
    WORD $0xeb0402e8 // subs    x8, x23, x4
    BEQ LBB0_710
    WORD $0xf101011f // cmp    x8, #64
    BLO LBB0_360
    WORD $0xaa1f03e7 // mov    x7, xzr
    WORD $0x92800005 // mov    x5, #-1
    WORD $0xaa0403e6 // mov    x6, x4
LBB0_48:
    WORD $0xa406425b // ld1b    { z27.b }, p0/z, [x18, x6]
    WORD $0x8b060250 // add    x16, x18, x6
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xa40f421c // ld1b    { z28.b }, p0/z, [x16, x15]
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0x2401a362 // cmpeq    p2.b, p0/z, z27.b, z1.b
    WORD $0x2401a383 // cmpeq    p3.b, p0/z, z28.b, z1.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x2400a381 // cmpeq    p1.b, p0/z, z28.b, z0.b
    WORD $0xe58015a2 // str    p2, [x13, #5, mul vl]
    WORD $0xe58011a3 // str    p3, [x13, #4, mul vl]
    WORD $0xe58019a1 // str    p1, [x13, #6, mul vl]
    WORD $0x047f508d // addpl    x13, sp, #4
    WORD $0xb94061b0 // ldr    w16, [x13, #96]
    WORD $0x047f50ad // addpl    x13, sp, #5
    WORD $0xb94061b3 // ldr    w19, [x13, #96]
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0xb94061b5 // ldr    w21, [x13, #96]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b6 // ldr    w22, [x13, #96]
    WORD $0xaa108274 // orr    x20, x19, x16, lsl #32
    WORD $0xaa1582d3 // orr    x19, x22, x21, lsl #32
    CMP $0, R20
    BNE LBB0_52
    CMP $0, R7
    BNE LBB0_54
    CMP $0, R19
    BNE LBB0_55
LBB0_51:
    WORD $0xd1010108 // sub    x8, x8, #64
    WORD $0x910100c6 // add    x6, x6, #64
    WORD $0xf100fd1f // cmp    x8, #63
    BHI LBB0_48
    B LBB0_355
LBB0_52:
    WORD $0xb10004bf // cmn    x5, #1
    BNE LBB0_54
    WORD $0xdac00290 // rbit    x16, x20
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b060205 // add    x5, x16, x6
LBB0_54:
    WORD $0x8a270290 // bic    x16, x20, x7
    WORD $0xaa1004e7 // orr    x7, x7, x16, lsl #1
    WORD $0x8a270294 // bic    x20, x20, x7
    WORD $0x9201f294 // and    x20, x20, #0xaaaaaaaaaaaaaaaa
    WORD $0xab100290 // adds    x16, x20, x16
    WORD $0xd37ffa10 // lsl    x16, x16, #1
    WORD $0xd200f210 // eor    x16, x16, #0x5555555555555555
    WORD $0x8a070210 // and    x16, x16, x7
    WORD $0x1a9f37e7 // cset    w7, hs
    WORD $0x8a300273 // bic    x19, x19, x16
    CMP $0, R19
    BEQ LBB0_51
LBB0_55:
    WORD $0xdac00268 // rbit    x8, x19
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b060108 // add    x8, x8, x6
    B LBB0_109
LBB0_56:
    WORD $0x7100b0bf // cmp    w5, #44
    BEQ LBB0_77
    WORD $0x710174bf // cmp    w5, #93
    BEQ LBB0_69
    B LBB0_704
LBB0_58:
    WORD $0x7100e8bf // cmp    w5, #58
    BNE LBB0_704
    WORD $0xf826793f // str    xzr, [x9, x6, lsl #3]
    B LBB0_195
LBB0_60:
    WORD $0xf9000046 // str    x6, [x2]
    WORD $0x710168bf // cmp    w5, #90
    WORD $0x92800028 // mov    x8, #-2
    BGT LBB0_71
LBB0_61:
    WORD $0x5100c0b0 // sub    w16, w5, #48
    WORD $0x71002a1f // cmp    w16, #10
    BHS LBB0_169
    WORD $0xf9400024 // ldr    x4, [x1]
    WORD $0xf9400410 // ldr    x16, [x0, #8]
    WORD $0xd1000488 // sub    x8, x4, #1
    WORD $0xeb080214 // subs    x20, x16, x8
    BEQ LBB0_675
    WORD $0x8b080255 // add    x21, x18, x8
    WORD $0x394002b0 // ldrb    w16, [x21]
    WORD $0x7100c21f // cmp    w16, #48
    BNE LBB0_117
    WORD $0xf100069f // cmp    x20, #1
    BNE LBB0_115
LBB0_65:
    WORD $0x52800036 // mov    w22, #1
    B LBB0_194
LBB0_66:
    WORD $0x7100b0bf // cmp    w5, #44
    BEQ LBB0_79
LBB0_67:
    WORD $0x7101f4bf // cmp    w5, #125
    BEQ LBB0_69
    B LBB0_704
LBB0_68:
    WORD $0x710174bf // cmp    w5, #93
    BNE LBB0_70
LBB0_69:
    WORD $0xaa0a03e8 // mov    x8, x10
    WORD $0xf9000046 // str    x6, [x2]
    CMP $0, R6
    BNE LBB0_2
    B LBB0_667
LBB0_70:
    WORD $0xf826792b // str    x11, [x9, x6, lsl #3]
    WORD $0x710168bf // cmp    w5, #90
    WORD $0x92800028 // mov    x8, #-2
    BLE LBB0_61
LBB0_71:
    WORD $0x7101b4bf // cmp    w5, #109
    BLE LBB0_176
    WORD $0x7101b8bf // cmp    w5, #110
    BEQ LBB0_200
    WORD $0x7101d0bf // cmp    w5, #116
    BEQ LBB0_196
    WORD $0x7101ecbf // cmp    w5, #123
    BNE LBB0_667
    WORD $0xf9400048 // ldr    x8, [x2]
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_668
    WORD $0x9100050d // add    x13, x8, #1
    WORD $0xf900004d // str    x13, [x2]
    WORD $0x528000cd // mov    w13, #6
    WORD $0xf828792d // str    x13, [x9, x8, lsl #3]
    B LBB0_195
LBB0_77:
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_668
    WORD $0x91000510 // add    x16, x8, #1
    WORD $0xf9000050 // str    x16, [x2]
    WORD $0xf828793f // str    xzr, [x9, x8, lsl #3]
    B LBB0_195
LBB0_79:
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_668
    WORD $0x91000510 // add    x16, x8, #1
    WORD $0xf9000050 // str    x16, [x2]
    WORD $0xf8287938 // str    x24, [x9, x8, lsl #3]
    B LBB0_195
LBB0_81:
    WORD $0xeb0400a7 // subs    x7, x5, x4
    BEQ LBB0_710
    WORD $0xf10100ff // cmp    x7, #64
    BLO LBB0_312
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0x92800006 // mov    x6, #-1
    WORD $0xaa0403f3 // mov    x19, x4
LBB0_84:
    WORD $0xa413425b // ld1b    { z27.b }, p0/z, [x18, x19]
    WORD $0x8b130250 // add    x16, x18, x19
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xa40f421c // ld1b    { z28.b }, p0/z, [x16, x15]
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0x2401a363 // cmpeq    p3.b, p0/z, z27.b, z1.b
    WORD $0x2400a382 // cmpeq    p2.b, p0/z, z28.b, z0.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0x2401a381 // cmpeq    p1.b, p0/z, z28.b, z1.b
    WORD $0xb94061b0 // ldr    w16, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da2 // str    p2, [x13, #7, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0x251f0372 // cmpgt    p2.b, p0/z, z27.b, #-1
    WORD $0xb94061b4 // ldr    w20, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da3 // str    p3, [x13, #7, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0x251f0393 // cmpgt    p3.b, p0/z, z28.b, #-1
    WORD $0xb94061b6 // ldr    w22, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xaa148214 // orr    x20, x16, x20, lsl #32
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x24028371 // cmpgt    p1.b, p0/z, z27.b, z2.b
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b7 // ldr    w23, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da2 // str    p2, [x13, #7, mul vl]
    WORD $0x24028392 // cmpgt    p2.b, p0/z, z28.b, z2.b
    WORD $0xe58019a1 // str    p1, [x13, #6, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xaa1782d7 // orr    x23, x22, x23, lsl #32
    WORD $0xb94061b5 // ldr    w21, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da3 // str    p3, [x13, #7, mul vl]
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0xb94061b6 // ldr    w22, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    CMP $0, R23
    BNE LBB0_89
    CMP $0, R8
    BNE LBB0_91
LBB0_86:
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0x0a3602b5 // bic    w21, w21, w22
    WORD $0xb94061b0 // ldr    w16, [x13, #96]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b7 // ldr    w23, [x13, #96]
    WORD $0x0a3002f0 // bic    w16, w23, w16
    WORD $0xaa1082b5 // orr    x21, x21, x16, lsl #32
    CMP $0, R20
    BNE LBB0_92
    CMP $0, R21
    BNE LBB0_682
    WORD $0xd10100e7 // sub    x7, x7, #64
    WORD $0x91010273 // add    x19, x19, #64
    WORD $0xf100fcff // cmp    x7, #63
    BHI LBB0_84
    B LBB0_302
LBB0_89:
    WORD $0xb10004df // cmn    x6, #1
    BNE LBB0_91
    WORD $0xdac002f0 // rbit    x16, x23
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b130206 // add    x6, x16, x19
LBB0_91:
    WORD $0x8a2802f0 // bic    x16, x23, x8
    WORD $0xaa100508 // orr    x8, x8, x16, lsl #1
    WORD $0x8a2802f7 // bic    x23, x23, x8
    WORD $0x9201f2f7 // and    x23, x23, #0xaaaaaaaaaaaaaaaa
    WORD $0xab1002f0 // adds    x16, x23, x16
    WORD $0xd37ffa10 // lsl    x16, x16, #1
    WORD $0xd200f210 // eor    x16, x16, #0x5555555555555555
    WORD $0x8a080210 // and    x16, x16, x8
    WORD $0x1a9f37e8 // cset    w8, hs
    WORD $0x8a300294 // bic    x20, x20, x16
    B LBB0_86
LBB0_92:
    WORD $0xdac00288 // rbit    x8, x20
    WORD $0xdac002b0 // rbit    x16, x21
    WORD $0xdac01108 // clz    x8, x8
    WORD $0xdac01212 // clz    x18, x16
    WORD $0xeb08025f // cmp    x18, x8
    BLO LBB0_714
    WORD $0x8b130108 // add    x8, x8, x19
LBB0_94:
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    WORD $0x52800054 // mov    w20, #2
    TST $(1<<63), R8
    BNE LBB0_673
LBB0_95:
    WORD $0xf100009f // cmp    x4, #0
    WORD $0xf9000028 // str    x8, [x1]
    BGT LBB0_195
    B LBB0_674
LBB0_96:
    WORD $0xeb0402e6 // subs    x6, x23, x4
    BEQ LBB0_710
    WORD $0xf10100df // cmp    x6, #64
    BLO LBB0_366
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0x92800005 // mov    x5, #-1
    WORD $0xaa0403e7 // mov    x7, x4
LBB0_99:
    WORD $0xa407425b // ld1b    { z27.b }, p0/z, [x18, x7]
    WORD $0x8b070250 // add    x16, x18, x7
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xa40f421c // ld1b    { z28.b }, p0/z, [x16, x15]
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0x2401a363 // cmpeq    p3.b, p0/z, z27.b, z1.b
    WORD $0x2400a382 // cmpeq    p2.b, p0/z, z28.b, z0.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0x2401a381 // cmpeq    p1.b, p0/z, z28.b, z1.b
    WORD $0xb94061b0 // ldr    w16, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da2 // str    p2, [x13, #7, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0x251f0372 // cmpgt    p2.b, p0/z, z27.b, #-1
    WORD $0xb94061b3 // ldr    w19, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da3 // str    p3, [x13, #7, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0x251f0393 // cmpgt    p3.b, p0/z, z28.b, #-1
    WORD $0xb94061b5 // ldr    w21, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xaa138213 // orr    x19, x16, x19, lsl #32
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x24028371 // cmpgt    p1.b, p0/z, z27.b, z2.b
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b6 // ldr    w22, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da2 // str    p2, [x13, #7, mul vl]
    WORD $0x24028392 // cmpgt    p2.b, p0/z, z28.b, z2.b
    WORD $0xe58019a1 // str    p1, [x13, #6, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xaa1682b6 // orr    x22, x21, x22, lsl #32
    WORD $0xb94061b4 // ldr    w20, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da3 // str    p3, [x13, #7, mul vl]
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0xb94061b5 // ldr    w21, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    CMP $0, R22
    BNE LBB0_104
    CMP $0, R8
    BNE LBB0_106
LBB0_101:
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0x0a350294 // bic    w20, w20, w21
    WORD $0xb94061b0 // ldr    w16, [x13, #96]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b6 // ldr    w22, [x13, #96]
    WORD $0x0a3002d0 // bic    w16, w22, w16
    WORD $0xaa108294 // orr    x20, x20, x16, lsl #32
    CMP $0, R19
    BNE LBB0_107
    CMP $0, R20
    BNE LBB0_684
    WORD $0xd10100c6 // sub    x6, x6, #64
    WORD $0x910100e7 // add    x7, x7, #64
    WORD $0xf100fcdf // cmp    x6, #63
    BHI LBB0_99
    B LBB0_356
LBB0_104:
    WORD $0xb10004bf // cmn    x5, #1
    BNE LBB0_106
    WORD $0xdac002d0 // rbit    x16, x22
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b070205 // add    x5, x16, x7
LBB0_106:
    WORD $0x8a2802d0 // bic    x16, x22, x8
    WORD $0xaa100508 // orr    x8, x8, x16, lsl #1
    WORD $0x8a2802d6 // bic    x22, x22, x8
    WORD $0x9201f2d6 // and    x22, x22, #0xaaaaaaaaaaaaaaaa
    WORD $0xab1002d0 // adds    x16, x22, x16
    WORD $0xd37ffa10 // lsl    x16, x16, #1
    WORD $0xd200f210 // eor    x16, x16, #0x5555555555555555
    WORD $0x8a080210 // and    x16, x16, x8
    WORD $0x1a9f37e8 // cset    w8, hs
    WORD $0x8a300273 // bic    x19, x19, x16
    B LBB0_101
LBB0_107:
    WORD $0xdac00268 // rbit    x8, x19
    WORD $0xdac00290 // rbit    x16, x20
    WORD $0xdac01108 // clz    x8, x8
    WORD $0xdac01212 // clz    x18, x16
    WORD $0xeb08025f // cmp    x18, x8
    BLO LBB0_717
    WORD $0x8b070108 // add    x8, x8, x7
LBB0_109:
    WORD $0x91000508 // add    x8, x8, #1
LBB0_110:
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x52800054 // mov    w20, #2
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
LBB0_111:
    TST $(1<<63), R8
    BNE LBB0_676
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0xf1000488 // subs    x8, x4, #1
    BLT LBB0_667
    WORD $0xf9400048 // ldr    x8, [x2]
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_668
    WORD $0x91000510 // add    x16, x8, #1
    WORD $0xf9000050 // str    x16, [x2]
    WORD $0xf828792e // str    x14, [x9, x8, lsl #3]
    B LBB0_195
LBB0_115:
    WORD $0x38646a50 // ldrb    w16, [x18, x4]
    WORD $0x5100ba05 // sub    w5, w16, #46
    WORD $0x7100dcbf // cmp    w5, #55
    BHI LBB0_65
    WORD $0x9ac52170 // lsl    x16, x11, x5
    WORD $0x52800036 // mov    w22, #1
    WORD $0xea1a021f // tst    x16, x26
    BEQ LBB0_194
LBB0_117:
    WORD $0xf100829f // cmp    x20, #32
    BLO LBB0_470
    WORD $0xaa1f03e5 // mov    x5, xzr
    WORD $0x92800013 // mov    x19, #-1
    WORD $0x92800006 // mov    x6, #-1
    WORD $0x92800007 // mov    x7, #-1
LBB0_119:
    WORD $0xa40542bb // ld1b    { z27.b }, p0/z, [x21, x5]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0x24038371 // cmpgt    p1.b, p0/z, z27.b, z3.b
    WORD $0x24048372 // cmpgt    p2.b, p0/z, z27.b, z4.b
    WORD $0x2405a363 // cmpeq    p3.b, p0/z, z27.b, z5.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x2406a361 // cmpeq    p1.b, p0/z, z27.b, z6.b
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    WORD $0x2407a362 // cmpeq    p2.b, p0/z, z27.b, z7.b
    WORD $0xe58015a3 // str    p3, [x13, #5, mul vl]
    WORD $0x2410a363 // cmpeq    p3.b, p0/z, z27.b, z16.b
    WORD $0xe58011a1 // str    p1, [x13, #4, mul vl]
    WORD $0x2411a361 // cmpeq    p1.b, p0/z, z27.b, z17.b
    WORD $0xe5800da2 // str    p2, [x13, #3, mul vl]
    WORD $0xe58009a3 // str    p3, [x13, #2, mul vl]
    WORD $0xe58005a1 // str    p1, [x13, #1, mul vl]
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0xb94061b0 // ldr    w16, [x13, #96]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b6 // ldr    w22, [x13, #96]
    WORD $0x047f508d // addpl    x13, sp, #4
    WORD $0xb94061b7 // ldr    w23, [x13, #96]
    WORD $0x047f506d // addpl    x13, sp, #3
    WORD $0xb94061bb // ldr    w27, [x13, #96]
    WORD $0x047f504d // addpl    x13, sp, #2
    WORD $0x0a3002d0 // bic    w16, w22, w16
    WORD $0xb94061bd // ldr    w29, [x13, #96]
    WORD $0x047f502d // addpl    x13, sp, #1
    WORD $0xb94061be // ldr    w30, [x13, #96]
    WORD $0x047f50ad // addpl    x13, sp, #5
    WORD $0x2a17037b // orr    w27, w27, w23
    WORD $0xb94061ba // ldr    w26, [x13, #96]
    WORD $0x2a100370 // orr    w16, w27, w16
    WORD $0x2a1d03d7 // orr    w23, w30, w29
    WORD $0x2a1a02f6 // orr    w22, w23, w26
    WORD $0x2a160210 // orr    w16, w16, w22
    WORD $0xaa3003f0 // mvn    x16, x16
    WORD $0xdac00210 // rbit    x16, x16
    WORD $0xdac01216 // clz    x22, x16
    WORD $0x710082df // cmp    w22, #32
    BEQ LBB0_121
    WORD $0x1ad62330 // lsl    w16, w25, w22
    WORD $0x0a30035a // bic    w26, w26, w16
    WORD $0x0a30037b // bic    w27, w27, w16
    WORD $0x0a3002f7 // bic    w23, w23, w16
LBB0_121:
    WORD $0x51000750 // sub    w16, w26, #1
    WORD $0x6a1a021d // ands    w29, w16, w26
    BNE LBB0_298
    WORD $0x51000770 // sub    w16, w27, #1
    WORD $0x6a1b021d // ands    w29, w16, w27
    BNE LBB0_298
    WORD $0x510006f0 // sub    w16, w23, #1
    WORD $0x6a17021d // ands    w29, w16, w23
    BNE LBB0_298
    CMP $0, R26
    BEQ LBB0_127
    WORD $0xb10004ff // cmn    x7, #1
    BNE LBB0_299
    WORD $0x5ac00350 // rbit    w16, w26
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0x8b1000a7 // add    x7, x5, x16
LBB0_127:
    CMP $0, R27
    BEQ LBB0_130
    WORD $0xb10004df // cmn    x6, #1
    BNE LBB0_357
    WORD $0x5ac00370 // rbit    w16, w27
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0x8b1000a6 // add    x6, x5, x16
LBB0_130:
    CMP $0, R23
    BEQ LBB0_133
    WORD $0xb100067f // cmn    x19, #1
    BNE LBB0_358
    WORD $0x5ac002f0 // rbit    w16, w23
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0x8b1000b3 // add    x19, x5, x16
LBB0_133:
    WORD $0x710082df // cmp    w22, #32
    BNE LBB0_168
    WORD $0xd1008294 // sub    x20, x20, #32
    WORD $0x910080a5 // add    x5, x5, #32
    WORD $0xf1007e9f // cmp    x20, #31
    BHI LBB0_119
    WORD $0x8b0502a5 // add    x5, x21, x5
    WORD $0xf100429f // cmp    x20, #16
    BLO LBB0_152
LBB0_136:
    WORD $0xcb0400b0 // sub    x16, x5, x4
    WORD $0xaa1f03f6 // mov    x22, xzr
    WORD $0xcb120210 // sub    x16, x16, x18
    WORD $0x91000617 // add    x23, x16, #1
LBB0_137:
    WORD $0x3cf668bb // ldr    q27, [x5, x22]
    WORD $0x4e35877c // add    v28.16b, v27.16b, v21.16b
    WORD $0x6e338f7d // cmeq    v29.16b, v27.16b, v19.16b
    WORD $0x6e348f7e // cmeq    v30.16b, v27.16b, v20.16b
    WORD $0x4e371f7f // and    v31.16b, v27.16b, v23.16b
    WORD $0x6e328f7b // cmeq    v27.16b, v27.16b, v18.16b
    WORD $0x4ebe1fbd // orr    v29.16b, v29.16b, v30.16b
    WORD $0x6e3c36dc // cmhi    v28.16b, v22.16b, v28.16b
    WORD $0x6e388fff // cmeq    v31.16b, v31.16b, v24.16b
    WORD $0x4ebb1f9c // orr    v28.16b, v28.16b, v27.16b
    WORD $0x4ebd1ffe // orr    v30.16b, v31.16b, v29.16b
    WORD $0x4e391f7b // and    v27.16b, v27.16b, v25.16b
    WORD $0x4e391fbd // and    v29.16b, v29.16b, v25.16b
    WORD $0x4ebe1f9c // orr    v28.16b, v28.16b, v30.16b
    WORD $0x4e391ffe // and    v30.16b, v31.16b, v25.16b
    WORD $0x4e1a037b // tbl    v27.16b, { v27.16b }, v26.16b
    WORD $0x4e1a03bd // tbl    v29.16b, { v29.16b }, v26.16b
    WORD $0x4e391f9c // and    v28.16b, v28.16b, v25.16b
    WORD $0x4e71bb7b // addv    h27, v27.8h
    WORD $0x4e71bbbd // addv    h29, v29.8h
    WORD $0x4e1a039c // tbl    v28.16b, { v28.16b }, v26.16b
    WORD $0x1e26037b // fmov    w27, s27
    WORD $0x1e2603ad // fmov    w13, s29
    WORD $0x4e71bb9c // addv    h28, v28.8h
    WORD $0x1e260390 // fmov    w16, s28
    WORD $0x4e1a03dc // tbl    v28.16b, { v30.16b }, v26.16b
    WORD $0x2a3003f0 // mvn    w16, w16
    WORD $0x32103e10 // orr    w16, w16, #0xffff0000
    WORD $0x4e71bb9c // addv    h28, v28.8h
    WORD $0x5ac00210 // rbit    w16, w16
    WORD $0x5ac0121a // clz    w26, w16
    WORD $0x1ada2330 // lsl    w16, w25, w26
    WORD $0x1e260398 // fmov    w24, s28
    WORD $0x7100435f // cmp    w26, #16
    WORD $0x0a30037d // bic    w29, w27, w16
    WORD $0x1a9d037e // csel    w30, w27, w29, eq
    WORD $0x0a30031b // bic    w27, w24, w16
    WORD $0x0a3001b0 // bic    w16, w13, w16
    WORD $0x510007d1 // sub    w17, w30, #1
    WORD $0x1a9b031d // csel    w29, w24, w27, eq
    WORD $0x1a9001bb // csel    w27, w13, w16, eq
    WORD $0x6a1e0230 // ands    w16, w17, w30
    BNE LBB0_303
    WORD $0x510007ad // sub    w13, w29, #1
    WORD $0x6a1d01b0 // ands    w16, w13, w29
    BNE LBB0_303
    WORD $0x5100076d // sub    w13, w27, #1
    WORD $0x6a1b01b0 // ands    w16, w13, w27
    BNE LBB0_303
    CMP $0, R30
    BEQ LBB0_143
    WORD $0x5ac003cd // rbit    w13, w30
    WORD $0xb10004ff // cmn    x7, #1
    WORD $0x5ac011a7 // clz    w7, w13
    BNE LBB0_410
    WORD $0x8b1602ed // add    x13, x23, x22
    WORD $0x8b0701a7 // add    x7, x13, x7
LBB0_143:
    CMP $0, R29
    BEQ LBB0_146
    WORD $0x5ac003ad // rbit    w13, w29
    WORD $0xb10004df // cmn    x6, #1
    WORD $0x5ac011a6 // clz    w6, w13
    BNE LBB0_411
    WORD $0x8b1602ed // add    x13, x23, x22
    WORD $0x8b0601a6 // add    x6, x13, x6
LBB0_146:
    CMP $0, R27
    BEQ LBB0_149
    WORD $0x5ac0036d // rbit    w13, w27
    WORD $0xb100067f // cmn    x19, #1
    WORD $0x5ac011b3 // clz    w19, w13
    BNE LBB0_412
    WORD $0x8b1602ed // add    x13, x23, x22
    WORD $0x8b1301b3 // add    x19, x13, x19
LBB0_149:
    WORD $0x7100435f // cmp    w26, #16
    BNE LBB0_181
    WORD $0xd1004294 // sub    x20, x20, #16
    WORD $0x910042d6 // add    x22, x22, #16
    WORD $0xf1003e9f // cmp    x20, #15
    BHI LBB0_137
    WORD $0x8b1600a5 // add    x5, x5, x22
LBB0_152:
    CMP $0, R20
    BEQ LBB0_182
    WORD $0xcb0400ad // sub    x13, x5, x4
    WORD $0x8b1400b6 // add    x22, x5, x20
    WORD $0xaa0503f7 // mov    x23, x5
    WORD $0xcb1201ad // sub    x13, x13, x18
    WORD $0x910009b2 // add    x18, x13, #2
    B LBB0_156
LBB0_154:
    WORD $0xd1000647 // sub    x7, x18, #1
LBB0_155:
    WORD $0xd1000694 // sub    x20, x20, #1
    WORD $0x91000652 // add    x18, x18, #1
    WORD $0xaa1703e5 // mov    x5, x23
    CMP $0, R20
    BEQ LBB0_231
LBB0_156:
    WORD $0x384016fa // ldrb    w26, [x23], #1
    WORD $0x5100c34d // sub    w13, w26, #48
    WORD $0x710029bf // cmp    w13, #10
    BLO LBB0_155
    WORD $0x7100b75f // cmp    w26, #45
    BLE LBB0_162
    WORD $0x7101975f // cmp    w26, #101
    BEQ LBB0_166
    WORD $0x7101175f // cmp    w26, #69
    BEQ LBB0_166
    WORD $0x7100bb5f // cmp    w26, #46
    BNE LBB0_182
    WORD $0xb10004ff // cmn    x7, #1
    BEQ LBB0_154
    B LBB0_300
LBB0_162:
    WORD $0x7100af5f // cmp    w26, #43
    BEQ LBB0_164
    WORD $0x7100b75f // cmp    w26, #45
    BNE LBB0_182
LBB0_164:
    WORD $0xb100067f // cmn    x19, #1
    BNE LBB0_300
    WORD $0xd1000653 // sub    x19, x18, #1
    B LBB0_155
LBB0_166:
    WORD $0xb10004df // cmn    x6, #1
    BNE LBB0_300
    WORD $0xd1000646 // sub    x6, x18, #1
    B LBB0_155
LBB0_168:
    WORD $0x8b0502d0 // add    x16, x22, x5
    WORD $0x8b1002a5 // add    x5, x21, x16
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x92800016 // mov    x22, #-1
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    CMP $0, R7
    BNE LBB0_183
    B LBB0_680
LBB0_169:
    WORD $0x710088bf // cmp    w5, #34
    BEQ LBB0_205
    WORD $0x7100b4bf // cmp    w5, #45
    BNE LBB0_667
    WORD $0xf9400028 // ldr    x8, [x1]
    WORD $0xf9400404 // ldr    x4, [x0, #8]
    WORD $0xcb080093 // sub    x19, x4, x8
    WORD $0xf100027f // cmp    x19, #0
    BLE LBB0_720
    WORD $0x8b080244 // add    x4, x18, x8
    WORD $0x39400085 // ldrb    w5, [x4]
    WORD $0x5100e8ad // sub    w13, w5, #58
    WORD $0x310029bf // cmn    w13, #10
    BLO LBB0_704
    WORD $0x7100c0bf // cmp    w5, #48
    BNE LBB0_234
    WORD $0xf100067f // cmp    x19, #1
    BNE LBB0_232
LBB0_175:
    WORD $0x52800035 // mov    w21, #1
    B LBB0_297
LBB0_176:
    WORD $0x71016cbf // cmp    w5, #91
    BEQ LBB0_203
    WORD $0x710198bf // cmp    w5, #102
    BNE LBB0_667
    WORD $0xf9400404 // ldr    x4, [x0, #8]
    WORD $0xf9400028 // ldr    x8, [x1]
    WORD $0xd100108d // sub    x13, x4, #4
    WORD $0xeb0d011f // cmp    x8, x13
    BHI LBB0_626
    WORD $0xb8686a4d // ldr    w13, [x18, x8]
    WORD $0x6b1301bf // cmp    w13, w19
    BNE LBB0_690
    WORD $0x9100110d // add    x13, x8, #4
    B LBB0_199
LBB0_181:
    WORD $0x8b3a40ad // add    x13, x5, w26, uxtw
    WORD $0x8b1601a5 // add    x5, x13, x22
LBB0_182:
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x92800016 // mov    x22, #-1
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    CMP $0, R7
    BEQ LBB0_680
LBB0_183:
    CMP $0, R19
    BEQ LBB0_680
    CMP $0, R6
    BEQ LBB0_680
    WORD $0xcb1500b2 // sub    x18, x5, x21
    WORD $0xd1000645 // sub    x5, x18, #1
    WORD $0xeb0500ff // cmp    x7, x5
    BEQ LBB0_193
    WORD $0xeb05027f // cmp    x19, x5
    BEQ LBB0_193
    WORD $0xeb0500df // cmp    x6, x5
    BEQ LBB0_193
    WORD $0xf1000670 // subs    x16, x19, #1
    BLT LBB0_190
    WORD $0xeb1000df // cmp    x6, x16
    BNE LBB0_678
LBB0_190:
    WORD $0xaa0600e5 // orr    x5, x7, x6
    TST $(1<<63), R5
    BNE LBB0_192
    WORD $0xeb0600ff // cmp    x7, x6
    BGE LBB0_679
LBB0_192:
    WORD $0xd37ffcad // lsr    x13, x5, #63
    WORD $0xd10004d0 // sub    x16, x6, #1
    WORD $0xeb1000ff // cmp    x7, x16
    WORD $0x520001ad // eor    w13, w13, #0x1
    WORD $0x1a9f17f0 // cset    w16, eq
    WORD $0x6a1001bf // tst    w13, w16
    WORD $0xda860256 // csinv    x22, x18, x6, eq
    TST $(1<<63), R22
    BEQ LBB0_194
    B LBB0_680
LBB0_193:
    WORD $0xcb1203f6 // neg    x22, x18
    TST $(1<<63), R22
    BNE LBB0_680
LBB0_194:
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x8b16010d // add    x13, x8, x22
    WORD $0xf100009f // cmp    x4, #0
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    WORD $0x52800054 // mov    w20, #2
    WORD $0xf900002d // str    x13, [x1]
    BLE LBB0_667
LBB0_195:
    WORD $0xf9400050 // ldr    x16, [x2]
    WORD $0xaa0a03e8 // mov    x8, x10
    CMP $0, R16
    BNE LBB0_2
    B LBB0_667
LBB0_196:
    WORD $0xf9400404 // ldr    x4, [x0, #8]
    WORD $0xf9400028 // ldr    x8, [x1]
    WORD $0xd1000c8d // sub    x13, x4, #3
    WORD $0xeb0d011f // cmp    x8, x13
    BHI LBB0_626
    WORD $0x8b08024d // add    x13, x18, x8
    WORD $0x528e4e90 // mov    w16, #29300
    WORD $0xb85ff1ad // ldur    w13, [x13, #-1]
    WORD $0x72acaeb0 // movk    w16, #25973, lsl #16
    WORD $0x6b1001bf // cmp    w13, w16
    BNE LBB0_695
    WORD $0x91000d0d // add    x13, x8, #3
LBB0_199:
    WORD $0xf100011f // cmp    x8, #0
    WORD $0xf900002d // str    x13, [x1]
    BGT LBB0_195
    B LBB0_677
LBB0_200:
    WORD $0xf9400404 // ldr    x4, [x0, #8]
    WORD $0xf9400028 // ldr    x8, [x1]
    WORD $0xd1000c8d // sub    x13, x4, #3
    WORD $0xeb0d011f // cmp    x8, x13
    BHI LBB0_626
    WORD $0x8b08024d // add    x13, x18, x8
    WORD $0x528eadd0 // mov    w16, #30062
    WORD $0xb85ff1ad // ldur    w13, [x13, #-1]
    WORD $0x72ad8d90 // movk    w16, #27756, lsl #16
    WORD $0x6b1001bf // cmp    w13, w16
    BNE LBB0_699
    WORD $0x91000d0d // add    x13, x8, #3
    WORD $0xf100011f // cmp    x8, #0
    WORD $0xf900002d // str    x13, [x1]
    BGT LBB0_195
    B LBB0_677
LBB0_203:
    WORD $0xf9400048 // ldr    x8, [x2]
    WORD $0xf13ffd1f // cmp    x8, #4095
    BGT LBB0_668
    WORD $0x9100050d // add    x13, x8, #1
    WORD $0xf900004d // str    x13, [x2]
    WORD $0xf8287931 // str    x17, [x9, x8, lsl #3]
    B LBB0_195
LBB0_205:
    WORD $0xf9400037 // ldr    x23, [x1]
    WORD $0xf9400404 // ldr    x4, [x0, #8]
    TST $(1<<5), R3
    BNE LBB0_217
    WORD $0xeb170088 // subs    x8, x4, x23
    BEQ LBB0_721
    WORD $0xf101011f // cmp    x8, #64
    BLO LBB0_418
    WORD $0xaa1f03e7 // mov    x7, xzr
    WORD $0x92800005 // mov    x5, #-1
    WORD $0xaa1703e6 // mov    x6, x23
LBB0_209:
    WORD $0xa406425b // ld1b    { z27.b }, p0/z, [x18, x6]
    WORD $0x8b06024d // add    x13, x18, x6
    WORD $0x047f50b0 // addpl    x16, sp, #5
    WORD $0xa40f41bc // ld1b    { z28.b }, p0/z, [x13, x15]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0x047f50d1 // addpl    x17, sp, #6
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0x2401a362 // cmpeq    p2.b, p0/z, z27.b, z1.b
    WORD $0x2401a383 // cmpeq    p3.b, p0/z, z28.b, z1.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x2400a381 // cmpeq    p1.b, p0/z, z28.b, z0.b
    WORD $0xe58015a2 // str    p2, [x13, #5, mul vl]
    WORD $0xb9406273 // ldr    w19, [x19, #96]
    WORD $0xe58011a3 // str    p3, [x13, #4, mul vl]
    WORD $0xb9406210 // ldr    w16, [x16, #96]
    WORD $0xe58019a1 // str    p1, [x13, #6, mul vl]
    WORD $0x047f508d // addpl    x13, sp, #4
    WORD $0xb94061ad // ldr    w13, [x13, #96]
    WORD $0xb9406231 // ldr    w17, [x17, #96]
    WORD $0xaa0d8214 // orr    x20, x16, x13, lsl #32
    WORD $0xaa118273 // orr    x19, x19, x17, lsl #32
    CMP $0, R20
    BNE LBB0_213
    CMP $0, R7
    BNE LBB0_215
    WORD $0x52800054 // mov    w20, #2
    CMP $0, R19
    BNE LBB0_216
LBB0_212:
    WORD $0xd1010108 // sub    x8, x8, #64
    WORD $0x910100c6 // add    x6, x6, #64
    WORD $0xf100fd1f // cmp    x8, #63
    BHI LBB0_209
    B LBB0_416
LBB0_213:
    WORD $0xb10004bf // cmn    x5, #1
    BNE LBB0_215
    WORD $0xdac0028d // rbit    x13, x20
    WORD $0xdac011ad // clz    x13, x13
    WORD $0x8b0601a5 // add    x5, x13, x6
LBB0_215:
    WORD $0x8a27028d // bic    x13, x20, x7
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0xaa0d04f0 // orr    x16, x7, x13, lsl #1
    WORD $0xf280003a // movk    x26, #1
    WORD $0x8a300291 // bic    x17, x20, x16
    WORD $0x9201f231 // and    x17, x17, #0xaaaaaaaaaaaaaaaa
    WORD $0xab0d022d // adds    x13, x17, x13
    WORD $0xd37ff9ad // lsl    x13, x13, #1
    WORD $0x1a9f37e7 // cset    w7, hs
    WORD $0xd200f1ad // eor    x13, x13, #0x5555555555555555
    WORD $0x8a1001ad // and    x13, x13, x16
    WORD $0x8a2d0273 // bic    x19, x19, x13
    WORD $0x52800054 // mov    w20, #2
    CMP $0, R19
    BEQ LBB0_212
LBB0_216:
    WORD $0xdac00268 // rbit    x8, x19
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b060108 // add    x8, x8, x6
    WORD $0x91000508 // add    x8, x8, #1
    TST $(1<<63), R8
    BEQ LBB0_230
    B LBB0_688
LBB0_217:
    WORD $0xeb170086 // subs    x6, x4, x23
    BEQ LBB0_721
    WORD $0xf10100df // cmp    x6, #64
    BLO LBB0_424
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0x92800005 // mov    x5, #-1
    WORD $0xaa1703e7 // mov    x7, x23
LBB0_220:
    WORD $0x8b07024d // add    x13, x18, x7
    WORD $0xa407425b // ld1b    { z27.b }, p0/z, [x18, x7]
    WORD $0x910183f0 // add    x16, sp, #96
    WORD $0xa40f41bc // ld1b    { z28.b }, p0/z, [x13, x15]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0x910183f1 // add    x17, sp, #96
    WORD $0x910183f3 // add    x19, sp, #96
    WORD $0x910183f4 // add    x20, sp, #96
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0x2401a363 // cmpeq    p3.b, p0/z, z27.b, z1.b
    WORD $0x2400a382 // cmpeq    p2.b, p0/z, z28.b, z0.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x2401a381 // cmpeq    p1.b, p0/z, z28.b, z1.b
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061ad // ldr    w13, [x13, #96]
    WORD $0xe5801e02 // str    p2, [x16, #7, mul vl]
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0xb9406210 // ldr    w16, [x16, #96]
    WORD $0xe5801e23 // str    p3, [x17, #7, mul vl]
    WORD $0x047f50f1 // addpl    x17, sp, #7
    WORD $0x251f0372 // cmpgt    p2.b, p0/z, z27.b, #-1
    WORD $0xb9406231 // ldr    w17, [x17, #96]
    WORD $0xe5801e61 // str    p1, [x19, #7, mul vl]
    WORD $0x24028371 // cmpgt    p1.b, p0/z, z27.b, z2.b
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0x251f0393 // cmpgt    p3.b, p0/z, z28.b, #-1
    WORD $0xb9406273 // ldr    w19, [x19, #96]
    WORD $0xe5801e82 // str    p2, [x20, #7, mul vl]
    WORD $0x24028392 // cmpgt    p2.b, p0/z, z28.b, z2.b
    WORD $0xe5801a81 // str    p1, [x20, #6, mul vl]
    WORD $0x047f50f4 // addpl    x20, sp, #7
    WORD $0xaa138236 // orr    x22, x17, x19, lsl #32
    WORD $0x910183f1 // add    x17, sp, #96
    WORD $0xb9406294 // ldr    w20, [x20, #96]
    WORD $0xaa1081b3 // orr    x19, x13, x16, lsl #32
    WORD $0xe5801e23 // str    p3, [x17, #7, mul vl]
    WORD $0x047f50d1 // addpl    x17, sp, #6
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xb9406235 // ldr    w21, [x17, #96]
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    CMP $0, R22
    BNE LBB0_225
    CMP $0, R8
    BNE LBB0_227
LBB0_222:
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0x0a350291 // bic    w17, w20, w21
    WORD $0xb94061ad // ldr    w13, [x13, #96]
    WORD $0xb9406210 // ldr    w16, [x16, #96]
    WORD $0x0a2d020d // bic    w13, w16, w13
    WORD $0xaa0d8234 // orr    x20, x17, x13, lsl #32
    CMP $0, R19
    BNE LBB0_228
    CMP $0, R20
    BNE LBB0_711
    WORD $0xd10100c6 // sub    x6, x6, #64
    WORD $0x910100e7 // add    x7, x7, #64
    WORD $0xf100fcdf // cmp    x6, #63
    BHI LBB0_220
    B LBB0_417
LBB0_225:
    WORD $0xb10004bf // cmn    x5, #1
    BNE LBB0_227
    WORD $0xdac002cd // rbit    x13, x22
    WORD $0xdac011ad // clz    x13, x13
    WORD $0x8b0701a5 // add    x5, x13, x7
LBB0_227:
    WORD $0x8a2802cd // bic    x13, x22, x8
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0xaa0d0508 // orr    x8, x8, x13, lsl #1
    WORD $0xf280003a // movk    x26, #1
    WORD $0x8a2802d0 // bic    x16, x22, x8
    WORD $0x9201f210 // and    x16, x16, #0xaaaaaaaaaaaaaaaa
    WORD $0xab0d020d // adds    x13, x16, x13
    WORD $0xd37ff9ad // lsl    x13, x13, #1
    WORD $0xd200f1ad // eor    x13, x13, #0x5555555555555555
    WORD $0x8a0801ad // and    x13, x13, x8
    WORD $0x1a9f37e8 // cset    w8, hs
    WORD $0x8a2d0273 // bic    x19, x19, x13
    B LBB0_222
LBB0_228:
    WORD $0xdac00268 // rbit    x8, x19
    WORD $0xdac0028d // rbit    x13, x20
    WORD $0xdac01108 // clz    x8, x8
    WORD $0xdac011b2 // clz    x18, x13
    WORD $0xeb08025f // cmp    x18, x8
    BLO LBB0_722
    WORD $0x8b070108 // add    x8, x8, x7
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x52800054 // mov    w20, #2
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    TST $(1<<63), R8
    BNE LBB0_688
LBB0_230:
    WORD $0xf10002ff // cmp    x23, #0
    WORD $0xf9000028 // str    x8, [x1]
    BGT LBB0_195
    B LBB0_705
LBB0_231:
    WORD $0xaa1603e5 // mov    x5, x22
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x92800016 // mov    x22, #-1
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    CMP $0, R7
    BNE LBB0_183
    B LBB0_680
LBB0_232:
    WORD $0x3940048d // ldrb    w13, [x4, #1]
    WORD $0x5100b9a5 // sub    w5, w13, #46
    WORD $0x7100dcbf // cmp    w5, #55
    BHI LBB0_175
    WORD $0x9ac5216d // lsl    x13, x11, x5
    WORD $0x52800035 // mov    w21, #1
    WORD $0xea1a01bf // tst    x13, x26
    BEQ LBB0_297
LBB0_234:
    WORD $0xf100827f // cmp    x19, #32
    BLO LBB0_474
    WORD $0xaa1f03f4 // mov    x20, xzr
    WORD $0x92800005 // mov    x5, #-1
    WORD $0x92800006 // mov    x6, #-1
    WORD $0x92800007 // mov    x7, #-1
LBB0_236:
    WORD $0xa414409b // ld1b    { z27.b }, p0/z, [x4, x20]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0x047f5091 // addpl    x17, sp, #4
    WORD $0x047f5075 // addpl    x21, sp, #3
    WORD $0x047f5056 // addpl    x22, sp, #2
    WORD $0x047f5037 // addpl    x23, sp, #1
    WORD $0x24038371 // cmpgt    p1.b, p0/z, z27.b, z3.b
    WORD $0x24048372 // cmpgt    p2.b, p0/z, z27.b, z4.b
    WORD $0x2405a363 // cmpeq    p3.b, p0/z, z27.b, z5.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x2406a361 // cmpeq    p1.b, p0/z, z27.b, z6.b
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    WORD $0x2407a362 // cmpeq    p2.b, p0/z, z27.b, z7.b
    WORD $0xb9406210 // ldr    w16, [x16, #96]
    WORD $0xe58015a3 // str    p3, [x13, #5, mul vl]
    WORD $0x2410a363 // cmpeq    p3.b, p0/z, z27.b, z16.b
    WORD $0xe58011a1 // str    p1, [x13, #4, mul vl]
    WORD $0x2411a361 // cmpeq    p1.b, p0/z, z27.b, z17.b
    WORD $0xe5800da2 // str    p2, [x13, #3, mul vl]
    WORD $0xb9406231 // ldr    w17, [x17, #96]
    WORD $0xe58009a3 // str    p3, [x13, #2, mul vl]
    WORD $0xb94062b5 // ldr    w21, [x21, #96]
    WORD $0xe58005a1 // str    p1, [x13, #1, mul vl]
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0xb94062d6 // ldr    w22, [x22, #96]
    WORD $0xb94061ad // ldr    w13, [x13, #96]
    WORD $0xb94062f8 // ldr    w24, [x23, #96]
    WORD $0x047f50b7 // addpl    x23, sp, #5
    WORD $0xb94062fa // ldr    w26, [x23, #96]
    WORD $0x2a1102b7 // orr    w23, w21, w17
    WORD $0x0a2d020d // bic    w13, w16, w13
    WORD $0x2a160316 // orr    w22, w24, w22
    WORD $0x2a0d02ed // orr    w13, w23, w13
    WORD $0x2a1a02d0 // orr    w16, w22, w26
    WORD $0x2a1001ad // orr    w13, w13, w16
    WORD $0xaa2d03ed // mvn    x13, x13
    WORD $0xdac001ad // rbit    x13, x13
    WORD $0xdac011b5 // clz    x21, x13
    WORD $0x710082bf // cmp    w21, #32
    BEQ LBB0_238
    WORD $0x1ad5232d // lsl    w13, w25, w21
    WORD $0x0a2d035a // bic    w26, w26, w13
    WORD $0x0a2d02f7 // bic    w23, w23, w13
    WORD $0x0a2d02d6 // bic    w22, w22, w13
LBB0_238:
    WORD $0x5100074d // sub    w13, w26, #1
    WORD $0x6a1a01bb // ands    w27, w13, w26
    BNE LBB0_408
    WORD $0x510006ed // sub    w13, w23, #1
    WORD $0x6a1701bb // ands    w27, w13, w23
    BNE LBB0_408
    WORD $0x510006cd // sub    w13, w22, #1
    WORD $0x6a1601bb // ands    w27, w13, w22
    BNE LBB0_408
    CMP $0, R26
    BEQ LBB0_244
    WORD $0xb10004ff // cmn    x7, #1
    BNE LBB0_409
    WORD $0x5ac0034d // rbit    w13, w26
    WORD $0x5ac011ad // clz    w13, w13
    WORD $0x8b0d0287 // add    x7, x20, x13
LBB0_244:
    CMP $0, R23
    BEQ LBB0_247
    WORD $0xb10004df // cmn    x6, #1
    BNE LBB0_468
    WORD $0x5ac002ed // rbit    w13, w23
    WORD $0x5ac011ad // clz    w13, w13
    WORD $0x8b0d0286 // add    x6, x20, x13
LBB0_247:
    CMP $0, R22
    BEQ LBB0_250
    WORD $0xb10004bf // cmn    x5, #1
    BNE LBB0_469
    WORD $0x5ac002cd // rbit    w13, w22
    WORD $0x5ac011ad // clz    w13, w13
    WORD $0x8b0d0285 // add    x5, x20, x13
LBB0_250:
    WORD $0x710082bf // cmp    w21, #32
    BNE LBB0_282
    WORD $0xd1008273 // sub    x19, x19, #32
    WORD $0x91008294 // add    x20, x20, #32
    WORD $0xf1007e7f // cmp    x19, #31
    BHI LBB0_236
    WORD $0x8b140094 // add    x20, x4, x20
    WORD $0xf100427f // cmp    x19, #16
    BLO LBB0_269
LBB0_253:
    WORD $0xaa1f03f5 // mov    x21, xzr
    WORD $0xcb040296 // sub    x22, x20, x4
LBB0_254:
    WORD $0x3cf56a9b // ldr    q27, [x20, x21]
    WORD $0x4e35877c // add    v28.16b, v27.16b, v21.16b
    WORD $0x6e338f7d // cmeq    v29.16b, v27.16b, v19.16b
    WORD $0x6e348f7e // cmeq    v30.16b, v27.16b, v20.16b
    WORD $0x4e371f7f // and    v31.16b, v27.16b, v23.16b
    WORD $0x6e328f7b // cmeq    v27.16b, v27.16b, v18.16b
    WORD $0x4ebe1fbd // orr    v29.16b, v29.16b, v30.16b
    WORD $0x6e3c36dc // cmhi    v28.16b, v22.16b, v28.16b
    WORD $0x6e388fff // cmeq    v31.16b, v31.16b, v24.16b
    WORD $0x4ebb1f9c // orr    v28.16b, v28.16b, v27.16b
    WORD $0x4ebd1ffe // orr    v30.16b, v31.16b, v29.16b
    WORD $0x4e391f7b // and    v27.16b, v27.16b, v25.16b
    WORD $0x4e391fbd // and    v29.16b, v29.16b, v25.16b
    WORD $0x4ebe1f9c // orr    v28.16b, v28.16b, v30.16b
    WORD $0x4e391ffe // and    v30.16b, v31.16b, v25.16b
    WORD $0x4e1a037b // tbl    v27.16b, { v27.16b }, v26.16b
    WORD $0x4e1a03bd // tbl    v29.16b, { v29.16b }, v26.16b
    WORD $0x4e391f9c // and    v28.16b, v28.16b, v25.16b
    WORD $0x4e71bb7b // addv    h27, v27.8h
    WORD $0x4e71bbbd // addv    h29, v29.8h
    WORD $0x4e1a039c // tbl    v28.16b, { v28.16b }, v26.16b
    WORD $0x1e260370 // fmov    w16, s27
    WORD $0x1e2603ba // fmov    w26, s29
    WORD $0x4e71bb9c // addv    h28, v28.8h
    WORD $0x1e26038d // fmov    w13, s28
    WORD $0x4e1a03dc // tbl    v28.16b, { v30.16b }, v26.16b
    WORD $0x2a2d03ed // mvn    w13, w13
    WORD $0x32103dad // orr    w13, w13, #0xffff0000
    WORD $0x4e71bb9c // addv    h28, v28.8h
    WORD $0x5ac001ad // rbit    w13, w13
    WORD $0x5ac011b7 // clz    w23, w13
    WORD $0x1ad7232d // lsl    w13, w25, w23
    WORD $0x1e260398 // fmov    w24, s28
    WORD $0x710042ff // cmp    w23, #16
    WORD $0x0a2d0211 // bic    w17, w16, w13
    WORD $0x1a91021d // csel    w29, w16, w17, eq
    WORD $0x0a2d0310 // bic    w16, w24, w13
    WORD $0x0a2d034d // bic    w13, w26, w13
    WORD $0x510007b1 // sub    w17, w29, #1
    WORD $0x1a90031b // csel    w27, w24, w16, eq
    WORD $0x1a8d035a // csel    w26, w26, w13, eq
    WORD $0x6a1d023e // ands    w30, w17, w29
    BNE LBB0_413
    WORD $0x5100076d // sub    w13, w27, #1
    WORD $0x6a1b01be // ands    w30, w13, w27
    BNE LBB0_413
    WORD $0x5100074d // sub    w13, w26, #1
    WORD $0x6a1a01be // ands    w30, w13, w26
    BNE LBB0_413
    CMP $0, R29
    BEQ LBB0_260
    WORD $0x5ac003ad // rbit    w13, w29
    WORD $0xb10004ff // cmn    x7, #1
    WORD $0x5ac011a7 // clz    w7, w13
    BNE LBB0_471
    WORD $0x8b1502cd // add    x13, x22, x21
    WORD $0x8b0701a7 // add    x7, x13, x7
LBB0_260:
    CMP $0, R27
    BEQ LBB0_263
    WORD $0x5ac0036d // rbit    w13, w27
    WORD $0xb10004df // cmn    x6, #1
    WORD $0x5ac011a6 // clz    w6, w13
    BNE LBB0_472
    WORD $0x8b1502cd // add    x13, x22, x21
    WORD $0x8b0601a6 // add    x6, x13, x6
LBB0_263:
    CMP $0, R26
    BEQ LBB0_266
    WORD $0x5ac0034d // rbit    w13, w26
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0x5ac011a5 // clz    w5, w13
    BNE LBB0_473
    WORD $0x8b1502cd // add    x13, x22, x21
    WORD $0x8b0501a5 // add    x5, x13, x5
LBB0_266:
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0x710042ff // cmp    w23, #16
    WORD $0xf280003a // movk    x26, #1
    BNE LBB0_284
    WORD $0xd1004273 // sub    x19, x19, #16
    WORD $0x910042b5 // add    x21, x21, #16
    WORD $0xf1003e7f // cmp    x19, #15
    BHI LBB0_254
    WORD $0x8b150294 // add    x20, x20, x21
LBB0_269:
    CMP $0, R19
    BEQ LBB0_283
    WORD $0x8b12010d // add    x13, x8, x18
    WORD $0xaa3403f0 // mvn    x16, x20
    WORD $0x8b130296 // add    x22, x20, x19
    WORD $0x8b0d0215 // add    x21, x16, x13
    WORD $0xcb040292 // sub    x18, x20, x4
    WORD $0xaa1403f7 // mov    x23, x20
    B LBB0_273
LBB0_271:
    WORD $0xb10004df // cmn    x6, #1
    WORD $0xaa1203e6 // mov    x6, x18
    BNE LBB0_415
LBB0_272:
    WORD $0xd1000673 // sub    x19, x19, #1
    WORD $0xd10006b5 // sub    x21, x21, #1
    WORD $0x91000652 // add    x18, x18, #1
    WORD $0xaa1703f4 // mov    x20, x23
    CMP $0, R19
    BEQ LBB0_359
LBB0_273:
    WORD $0x384016fa // ldrb    w26, [x23], #1
    WORD $0x5100c34d // sub    w13, w26, #48
    WORD $0x710029bf // cmp    w13, #10
    BLO LBB0_272
    WORD $0x7100b75f // cmp    w26, #45
    BLE LBB0_279
    WORD $0x7101975f // cmp    w26, #101
    BEQ LBB0_271
    WORD $0x7101175f // cmp    w26, #69
    BEQ LBB0_271
    WORD $0x7100bb5f // cmp    w26, #46
    BNE LBB0_283
    WORD $0xb10004ff // cmn    x7, #1
    WORD $0xaa1203e7 // mov    x7, x18
    BEQ LBB0_272
    B LBB0_415
LBB0_279:
    WORD $0x7100af5f // cmp    w26, #43
    BEQ LBB0_281
    WORD $0x7100b75f // cmp    w26, #45
    BNE LBB0_283
LBB0_281:
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0xaa1203e5 // mov    x5, x18
    BEQ LBB0_272
    B LBB0_415
LBB0_282:
    WORD $0x8b1402ad // add    x13, x21, x20
    WORD $0x8b0d0094 // add    x20, x4, x13
LBB0_283:
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    B LBB0_285
LBB0_284:
    WORD $0x8b37428d // add    x13, x20, w23, uxtw
    WORD $0x8b1501b4 // add    x20, x13, x21
LBB0_285:
    WORD $0x92800015 // mov    x21, #-1
    CMP $0, R7
    BEQ LBB0_686
    CMP $0, R5
    BEQ LBB0_686
    CMP $0, R6
    BEQ LBB0_686
    WORD $0xcb040292 // sub    x18, x20, x4
    WORD $0xd1000644 // sub    x4, x18, #1
    WORD $0xeb0400ff // cmp    x7, x4
    BEQ LBB0_296
    WORD $0xeb0400bf // cmp    x5, x4
    BEQ LBB0_296
    WORD $0xeb0400df // cmp    x6, x4
    BEQ LBB0_296
    WORD $0xf10004a4 // subs    x4, x5, #1
    BLT LBB0_293
    WORD $0xeb0400df // cmp    x6, x4
    BNE LBB0_687
LBB0_293:
    WORD $0xaa0600e4 // orr    x4, x7, x6
    TST $(1<<63), R4
    BNE LBB0_295
    WORD $0xeb0600ff // cmp    x7, x6
    BGE LBB0_709
LBB0_295:
    WORD $0xd37ffc8d // lsr    x13, x4, #63
    WORD $0xd10004d0 // sub    x16, x6, #1
    WORD $0xeb1000ff // cmp    x7, x16
    WORD $0x520001ad // eor    w13, w13, #0x1
    WORD $0x1a9f17f0 // cset    w16, eq
    WORD $0x6a1001bf // tst    w13, w16
    WORD $0xda860255 // csinv    x21, x18, x6, eq
    TST $(1<<63), R21
    BEQ LBB0_297
    B LBB0_686
LBB0_296:
    WORD $0xcb1203f5 // neg    x21, x18
    TST $(1<<63), R21
    BNE LBB0_686
LBB0_297:
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x8b0802ad // add    x13, x21, x8
    WORD $0xf100011f // cmp    x8, #0
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    WORD $0x52800054 // mov    w20, #2
    WORD $0xf900002d // str    x13, [x1]
    BGT LBB0_195
    B LBB0_677
LBB0_298:
    WORD $0x2a1d03fa // mov    w26, w29
LBB0_299:
    WORD $0x5ac00350 // rbit    w16, w26
    WORD $0xaa2503f2 // mvn    x18, x5
    WORD $0x5ac01210 // clz    w16, w16
    WORD $0xcb100256 // sub    x22, x18, x16
    B LBB0_305
LBB0_300:
    WORD $0xcb1203f6 // neg    x22, x18
    B LBB0_305
LBB0_301:
    WORD $0x8b070247 // add    x7, x18, x7
    B LBB0_307
LBB0_302:
    WORD $0x8b130253 // add    x19, x18, x19
    B LBB0_313
LBB0_303:
    WORD $0x5ac0020d // rbit    w13, w16
    WORD $0x8b120090 // add    x16, x4, x18
    WORD $0xcb050210 // sub    x16, x16, x5
    WORD $0x5ac011ad // clz    w13, w13
    WORD $0xcb0d020d // sub    x13, x16, x13
LBB0_304:
    WORD $0xcb1601ad // sub    x13, x13, x22
    WORD $0xd10009b6 // sub    x22, x13, #2
LBB0_305:
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    TST $(1<<63), R22
    BEQ LBB0_194
    B LBB0_680
LBB0_306:
    WORD $0xaa1f03f3 // mov    x19, xzr
    WORD $0x8b040247 // add    x7, x18, x4
    WORD $0x92800006 // mov    x6, #-1
LBB0_307:
    WORD $0xf1008114 // subs    x20, x8, #32
    BLO LBB0_479
    WORD $0xa400a0fb // ld1b    { z27.b }, p0/z, [x7]
    WORD $0x910183e8 // add    x8, sp, #96
    WORD $0x2401a361 // cmpeq    p1.b, p0/z, z27.b, z1.b
    WORD $0x2400a362 // cmpeq    p2.b, p0/z, z27.b, z0.b
    WORD $0xe5801901 // str    p1, [x8, #6, mul vl]
    WORD $0xe5801d02 // str    p2, [x8, #7, mul vl]
    WORD $0x047f50c8 // addpl    x8, sp, #6
    WORD $0xb9406115 // ldr    w21, [x8, #96]
    WORD $0x047f50e8 // addpl    x8, sp, #7
    WORD $0xb9406108 // ldr    w8, [x8, #96]
    CMP $0, R21
    BNE LBB0_475
    CMP $0, R19
    BNE LBB0_477
    CMP $0, R8
    BEQ LBB0_478
LBB0_311:
    WORD $0xdac00108 // rbit    x8, x8
    WORD $0xcb1200f0 // sub    x16, x7, x18
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b080208 // add    x8, x16, x8
    B LBB0_94
LBB0_312:
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0x8b040253 // add    x19, x18, x4
    WORD $0x92800006 // mov    x6, #-1
LBB0_313:
    WORD $0xf10080f4 // subs    x20, x7, #32
    BLO LBB0_321
    WORD $0xa400a27b // ld1b    { z27.b }, p0/z, [x19]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0x2401a362 // cmpeq    p2.b, p0/z, z27.b, z1.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0x251f0371 // cmpgt    p1.b, p0/z, z27.b, #-1
    WORD $0xb94061a7 // ldr    w7, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da2 // str    p2, [x13, #7, mul vl]
    WORD $0x24028372 // cmpgt    p2.b, p0/z, z27.b, z2.b
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b5 // ldr    w21, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    CMP $0, R21
    BNE LBB0_490
    CMP $0, R8
    BNE LBB0_492
LBB0_316:
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0xb94061b0 // ldr    w16, [x13, #96]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b5 // ldr    w21, [x13, #96]
    WORD $0x0a3002b6 // bic    w22, w21, w16
    WORD $0xdac002d0 // rbit    x16, x22
    WORD $0xdac01215 // clz    x21, x16
    CMP $0, R7
    BEQ LBB0_319
    WORD $0xdac000e8 // rbit    x8, x7
    WORD $0xcb120272 // sub    x18, x19, x18
    WORD $0xdac01108 // clz    x8, x8
    WORD $0xeb0802bf // cmp    x21, x8
    BLO LBB0_727
    WORD $0x8b080248 // add    x8, x18, x8
    B LBB0_94
LBB0_319:
    CMP $0, R22
    BNE LBB0_726
    WORD $0x91008273 // add    x19, x19, #32
    WORD $0xaa1403e7 // mov    x7, x20
LBB0_321:
    CMP $0, R8
    BNE LBB0_516
LBB0_322:
    WORD $0x8b050248 // add    x8, x18, x5
    WORD $0xcb1203fd // neg    fp, x18
    WORD $0xcb120254 // sub    x20, x18, x18
    WORD $0xd100051e // sub    lr, x8, #1
LBB0_323:
    CMP $0, R7
    BEQ LBB0_715
    WORD $0xaa1f03f5 // mov    x21, xzr
LBB0_325:
    WORD $0x38756a68 // ldrb    w8, [x19, x21]
    WORD $0x7100891f // cmp    w8, #34
    BEQ LBB0_354
    WORD $0x7101711f // cmp    w8, #92
    BEQ LBB0_329
    WORD $0x71007d1f // cmp    w8, #31
    BLS LBB0_726
    WORD $0x910006b5 // add    x21, x21, #1
    WORD $0x92800008 // mov    x8, #-1
    WORD $0xeb1500ff // cmp    x7, x21
    BNE LBB0_325
    B LBB0_716
LBB0_329:
    WORD $0x52820231 // mov    w17, #4113
    WORD $0xd284002d // mov    x13, #8193
    WORD $0xd10004e8 // sub    x8, x7, #1
    WORD $0x529b0018 // mov    w24, #55296
    WORD $0x72a000b1 // movk    w17, #5, lsl #16
    WORD $0xf2e0800d // movk    x13, #1024, lsl #48
    WORD $0xeb15011f // cmp    x8, x21
    BEQ LBB0_715
    WORD $0x8b1303a8 // add    x8, fp, x19
    WORD $0xb10004df // cmn    x6, #1
    WORD $0xcb1303d0 // sub    x16, lr, x19
    WORD $0x8b150108 // add    x8, x8, x21
    WORD $0x9a860106 // csel    x6, x8, x6, eq
    WORD $0xeb150208 // subs    x8, x16, x21
    BEQ LBB0_715
    WORD $0x8b130290 // add    x16, x20, x19
    WORD $0x8b150210 // add    x16, x16, x21
    WORD $0x39400616 // ldrb    w22, [x16, #1]
    WORD $0x51018ad7 // sub    w23, w22, #98
    WORD $0x71004eff // cmp    w23, #19
    BHI LBB0_349
    WORD $0x1ad72170 // lsl    w16, w11, w23
    WORD $0x6a11021f // tst    w16, w17
    BNE LBB0_351
    WORD $0x71004eff // cmp    w23, #19
    BNE LBB0_349
    WORD $0xf100151f // cmp    x8, #5
    BLO LBB0_715
    WORD $0x8b130290 // add    x16, x20, x19
    WORD $0x5299fa0d // mov    w13, #53200
    WORD $0x8b150210 // add    x16, x16, x21
    WORD $0x72b9f9ed // movk    w13, #53199, lsl #16
    WORD $0xb8402216 // ldur    w22, [x16, #2]
    WORD $0x0b0d02d0 // add    w16, w22, w13
    WORD $0x3201c3ed // mov    w13, #-2139062144
    WORD $0x0a3601b7 // bic    w23, w13, w22
    WORD $0x6a1002ff // tst    w23, w16
    BNE LBB0_726
    WORD $0x5283232d // mov    w13, #6425
    WORD $0x72a3232d // movk    w13, #6425, lsl #16
    WORD $0x0b0d02d0 // add    w16, w22, w13
    WORD $0x2a160210 // orr    w16, w16, w22
    WORD $0x7201c21f // tst    w16, #0x80808080
    BNE LBB0_726
    WORD $0x1200dada // and    w26, w22, #0x7f7f7f7f
    WORD $0x3202c7ed // mov    w13, #-1061109568
    WORD $0x4b1a01b0 // sub    w16, w13, w26
    WORD $0x5288c8cd // mov    w13, #17990
    WORD $0x72a8c8cd // movk    w13, #17990, lsl #16
    WORD $0x0b0d035b // add    w27, w26, w13
    WORD $0x0a100370 // and    w16, w27, w16
    WORD $0x6a17021f // tst    w16, w23
    BNE LBB0_726
    WORD $0x3203cbed // mov    w13, #-522133280
    WORD $0x4b1a01b0 // sub    w16, w13, w26
    WORD $0x5287272d // mov    w13, #14649
    WORD $0x72a7272d // movk    w13, #14649, lsl #16
    WORD $0x0b0d035a // add    w26, w26, w13
    WORD $0x0a100350 // and    w16, w26, w16
    WORD $0x6a17021f // tst    w16, w23
    BNE LBB0_726
    WORD $0x5ac00ad0 // rev    w16, w22
    WORD $0x3200c3ed // mov    w13, #16843009
    WORD $0x0a7011b6 // bic    w22, w13, w16, lsr #4
    WORD $0x1200ce10 // and    w16, w16, #0xf0f0f0f
    WORD $0x2a160ed6 // orr    w22, w22, w22, lsl #3
    WORD $0x0b1002d0 // add    w16, w22, w16
    WORD $0x530c7e16 // lsr    w22, w16, #12
    WORD $0x2a5022d0 // orr    w16, w22, w16, lsr #8
    WORD $0x12161610 // and    w16, w16, #0xfc00
    WORD $0x6b18021f // cmp    w16, w24
    BNE LBB0_353
    WORD $0xf1002d1f // cmp    x8, #11
    BLO LBB0_353
    WORD $0x8b130288 // add    x8, x20, x19
    WORD $0x8b150108 // add    x8, x8, x21
    WORD $0x39401910 // ldrb    w16, [x8, #6]
    WORD $0x7101721f // cmp    w16, #92
    BNE LBB0_353
    WORD $0x39401d08 // ldrb    w8, [x8, #7]
    WORD $0x7101d51f // cmp    w8, #117
    BNE LBB0_353
    WORD $0x8b130288 // add    x8, x20, x19
    WORD $0x5299fa0d // mov    w13, #53200
    WORD $0x8b150108 // add    x8, x8, x21
    WORD $0x72b9f9ed // movk    w13, #53199, lsl #16
    WORD $0xb9400908 // ldr    w8, [x8, #8]
    WORD $0x0b0d0110 // add    w16, w8, w13
    WORD $0x3201c3ed // mov    w13, #-2139062144
    WORD $0x0a2801b6 // bic    w22, w13, w8
    WORD $0x6a1002df // tst    w22, w16
    BNE LBB0_353
    WORD $0x5283232d // mov    w13, #6425
    WORD $0x72a3232d // movk    w13, #6425, lsl #16
    WORD $0x0b0d0110 // add    w16, w8, w13
    WORD $0x2a080210 // orr    w16, w16, w8
    WORD $0x7201c21f // tst    w16, #0x80808080
    BNE LBB0_353
    WORD $0x1200d917 // and    w23, w8, #0x7f7f7f7f
    WORD $0x3202c7ed // mov    w13, #-1061109568
    WORD $0x4b1701b0 // sub    w16, w13, w23
    WORD $0x5288c8cd // mov    w13, #17990
    WORD $0x72a8c8cd // movk    w13, #17990, lsl #16
    WORD $0x0b0d02fa // add    w26, w23, w13
    WORD $0x0a100350 // and    w16, w26, w16
    WORD $0x6a16021f // tst    w16, w22
    BNE LBB0_353
    WORD $0x3203cbed // mov    w13, #-522133280
    WORD $0x4b1701b0 // sub    w16, w13, w23
    WORD $0x5287272d // mov    w13, #14649
    WORD $0x72a7272d // movk    w13, #14649, lsl #16
    WORD $0x0b0d02f7 // add    w23, w23, w13
    WORD $0x0a1002f0 // and    w16, w23, w16
    WORD $0x6a16021f // tst    w16, w22
    BNE LBB0_353
    WORD $0x5ac00908 // rev    w8, w8
    WORD $0x3200c3ed // mov    w13, #16843009
    WORD $0x0a6811b0 // bic    w16, w13, w8, lsr #4
    WORD $0x1200cd08 // and    w8, w8, #0xf0f0f0f
    WORD $0x529b800d // mov    w13, #56320
    WORD $0x2a100e10 // orr    w16, w16, w16, lsl #3
    WORD $0x0b080208 // add    w8, w16, w8
    WORD $0x530c7d10 // lsr    w16, w8, #12
    WORD $0x2a482208 // orr    w8, w16, w8, lsr #8
    WORD $0x12161508 // and    w8, w8, #0xfc00
    WORD $0x6b0d011f // cmp    w8, w13
    BNE LBB0_353
    WORD $0x8b1303a8 // add    x8, fp, x19
    WORD $0x8b150108 // add    x8, x8, x21
    WORD $0x91003108 // add    x8, x8, #12
    B LBB0_352
LBB0_349:
    WORD $0x51008ac8 // sub    w8, w22, #34
    WORD $0x7100e91f // cmp    w8, #58
    BHI LBB0_726
    WORD $0x9ac82168 // lsl    x8, x11, x8
    WORD $0xea0d011f // tst    x8, x13
    BEQ LBB0_726
LBB0_351:
    WORD $0x8b1303a8 // add    x8, fp, x19
    WORD $0x8b150108 // add    x8, x8, x21
    WORD $0x91000908 // add    x8, x8, #2
LBB0_352:
    WORD $0xcb130250 // sub    x16, x18, x19
    WORD $0xcb1500e7 // sub    x7, x7, x21
    WORD $0x8b150273 // add    x19, x19, x21
    WORD $0x8b100110 // add    x16, x8, x16
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0xcb150210 // sub    x16, x16, x21
    WORD $0xf280003a // movk    x26, #1
    WORD $0x8b100273 // add    x19, x19, x16
    WORD $0xcb1000e7 // sub    x7, x7, x16
    TST $(1<<63), R8
    BEQ LBB0_323
    B LBB0_673
LBB0_353:
    WORD $0x8b1303a8 // add    x8, fp, x19
    WORD $0x8b150108 // add    x8, x8, x21
    WORD $0x91001908 // add    x8, x8, #6
    B LBB0_352
LBB0_354:
    WORD $0xcb120268 // sub    x8, x19, x18
    WORD $0x8b150108 // add    x8, x8, x21
    B LBB0_94
LBB0_355:
    WORD $0x8b060246 // add    x6, x18, x6
    B LBB0_361
LBB0_356:
    WORD $0x8b070247 // add    x7, x18, x7
    B LBB0_367
LBB0_357:
    WORD $0x2a1b03fa // mov    w26, w27
    B LBB0_299
LBB0_358:
    WORD $0x2a1703fa // mov    w26, w23
    B LBB0_299
LBB0_359:
    WORD $0xaa1603f4 // mov    x20, x22
    B LBB0_283
LBB0_360:
    WORD $0xaa1f03e7 // mov    x7, xzr
    WORD $0x8b040246 // add    x6, x18, x4
    WORD $0x92800005 // mov    x5, #-1
LBB0_361:
    WORD $0xf1008113 // subs    x19, x8, #32
    BLO LBB0_497
    WORD $0xa400a0db // ld1b    { z27.b }, p0/z, [x6]
    WORD $0x910183e8 // add    x8, sp, #96
    WORD $0x2401a361 // cmpeq    p1.b, p0/z, z27.b, z1.b
    WORD $0x2400a362 // cmpeq    p2.b, p0/z, z27.b, z0.b
    WORD $0xe5801901 // str    p1, [x8, #6, mul vl]
    WORD $0xe5801d02 // str    p2, [x8, #7, mul vl]
    WORD $0x047f50c8 // addpl    x8, sp, #6
    WORD $0xb9406114 // ldr    w20, [x8, #96]
    WORD $0x047f50e8 // addpl    x8, sp, #7
    WORD $0xb9406108 // ldr    w8, [x8, #96]
    CMP $0, R20
    BNE LBB0_493
    CMP $0, R7
    BNE LBB0_495
    WORD $0x52800054 // mov    w20, #2
    CMP $0, R8
    BEQ LBB0_496
LBB0_365:
    WORD $0xdac00108 // rbit    x8, x8
    WORD $0xcb1200d0 // sub    x16, x6, x18
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b080208 // add    x8, x16, x8
    WORD $0x91000508 // add    x8, x8, #1
    B LBB0_111
LBB0_366:
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0x8b040247 // add    x7, x18, x4
    WORD $0x92800005 // mov    x5, #-1
LBB0_367:
    WORD $0xf10080d3 // subs    x19, x6, #32
    BLO LBB0_508
    WORD $0xa400a0fb // ld1b    { z27.b }, p0/z, [x7]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0x2401a362 // cmpeq    p2.b, p0/z, z27.b, z1.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0x251f0371 // cmpgt    p1.b, p0/z, z27.b, #-1
    WORD $0xb94061a6 // ldr    w6, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da2 // str    p2, [x13, #7, mul vl]
    WORD $0x24028372 // cmpgt    p2.b, p0/z, z27.b, z2.b
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b4 // ldr    w20, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    CMP $0, R20
    BNE LBB0_511
    CMP $0, R8
    BNE LBB0_513
LBB0_370:
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0xb94061b0 // ldr    w16, [x13, #96]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b4 // ldr    w20, [x13, #96]
    WORD $0x0a300295 // bic    w21, w20, w16
    WORD $0xdac002b0 // rbit    x16, x21
    WORD $0xdac01214 // clz    x20, x16
    CMP $0, R6
    BEQ LBB0_373
    WORD $0xdac000c8 // rbit    x8, x6
    WORD $0xcb1200f2 // sub    x18, x7, x18
    WORD $0xdac01108 // clz    x8, x8
    WORD $0xeb08029f // cmp    x20, x8
    BLO LBB0_735
    WORD $0x8b080248 // add    x8, x18, x8
    B LBB0_109
LBB0_373:
    WORD $0x5283233e // mov    w30, #6425
    WORD $0x52820231 // mov    w17, #4113
    WORD $0xd284002d // mov    x13, #8193
    WORD $0x3202c7f8 // mov    w24, #-1061109568
    WORD $0x72a3233e // movk    w30, #6425, lsl #16
    WORD $0x3201c3fd // mov    w29, #-2139062144
    WORD $0x72a000b1 // movk    w17, #5, lsl #16
    WORD $0xf2e0800d // movk    x13, #1024, lsl #48
    CMP $0, R21
    BNE LBB0_737
    WORD $0x910080e7 // add    x7, x7, #32
    WORD $0xaa1303e6 // mov    x6, x19
    CMP $0, R8
    BNE LBB0_509
LBB0_375:
    WORD $0x8b170248 // add    x8, x18, x23
    WORD $0xcb1203f0 // neg    x16, x18
    WORD $0x043f5033 // addvl    x19, sp, #1
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0xcb120254 // sub    x20, x18, x18
    WORD $0xf9003670 // str    x16, [x19, #104]
    WORD $0xf9000fe8 // str    x8, [sp, #24]
LBB0_376:
    WORD $0xaa1703f5 // mov    x21, x23
    CMP $0, R6
    BEQ LBB0_718
    WORD $0xaa1f03f3 // mov    x19, xzr
LBB0_378:
    WORD $0x387368e8 // ldrb    w8, [x7, x19]
    WORD $0x7100891f // cmp    w8, #34
    BEQ LBB0_407
    WORD $0x7101711f // cmp    w8, #92
    BEQ LBB0_382
    WORD $0x71007d1f // cmp    w8, #31
    BLS LBB0_738
    WORD $0x91000673 // add    x19, x19, #1
    WORD $0x92800008 // mov    x8, #-1
    WORD $0xeb1300df // cmp    x6, x19
    BNE LBB0_378
    B LBB0_719
LBB0_382:
    WORD $0xd10004c8 // sub    x8, x6, #1
    WORD $0xeb13011f // cmp    x8, x19
    BEQ LBB0_718
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0xf9400ff0 // ldr    x16, [sp, #24]
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0xf9403508 // ldr    x8, [x8, #104]
    WORD $0xcb070210 // sub    x16, x16, x7
    WORD $0x8b070108 // add    x8, x8, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x9a850105 // csel    x5, x8, x5, eq
    WORD $0xeb130208 // subs    x8, x16, x19
    BEQ LBB0_718
    WORD $0x8b070290 // add    x16, x20, x7
    WORD $0x8b130210 // add    x16, x16, x19
    WORD $0x39400616 // ldrb    w22, [x16, #1]
    WORD $0x51018ad7 // sub    w23, w22, #98
    WORD $0x71004eff // cmp    w23, #19
    BHI LBB0_402
    WORD $0x1ad72170 // lsl    w16, w11, w23
    WORD $0x6a11021f // tst    w16, w17
    BNE LBB0_404
    WORD $0x71004eff // cmp    w23, #19
    BNE LBB0_402
    WORD $0xf100151f // cmp    x8, #5
    BLO LBB0_718
    WORD $0x8b070290 // add    x16, x20, x7
    WORD $0x8b130210 // add    x16, x16, x19
    WORD $0xb8402216 // ldur    w22, [x16, #2]
    WORD $0x5299fa10 // mov    w16, #53200
    WORD $0x72b9f9f0 // movk    w16, #53199, lsl #16
    WORD $0x0b1002d0 // add    w16, w22, w16
    WORD $0x0a3603b7 // bic    w23, w29, w22
    WORD $0x6a1002ff // tst    w23, w16
    BNE LBB0_738
    WORD $0x0b1e02d0 // add    w16, w22, w30
    WORD $0x2a160210 // orr    w16, w16, w22
    WORD $0x7201c21f // tst    w16, #0x80808080
    BNE LBB0_738
    WORD $0x5288c8db // mov    w27, #17990
    WORD $0x1200dada // and    w26, w22, #0x7f7f7f7f
    WORD $0x72a8c8db // movk    w27, #17990, lsl #16
    WORD $0x4b1a0310 // sub    w16, w24, w26
    WORD $0x0b1b035b // add    w27, w26, w27
    WORD $0x0a100370 // and    w16, w27, w16
    WORD $0x6a17021f // tst    w16, w23
    BNE LBB0_738
    WORD $0x5287273b // mov    w27, #14649
    WORD $0x3203cbf0 // mov    w16, #-522133280
    WORD $0x72a7273b // movk    w27, #14649, lsl #16
    WORD $0x4b1a0210 // sub    w16, w16, w26
    WORD $0x0b1b035a // add    w26, w26, w27
    WORD $0x0a100350 // and    w16, w26, w16
    WORD $0x6a17021f // tst    w16, w23
    BNE LBB0_738
    WORD $0x5ac00ad0 // rev    w16, w22
    WORD $0x3200c3f6 // mov    w22, #16843009
    WORD $0x0a7012d6 // bic    w22, w22, w16, lsr #4
    WORD $0x1200ce10 // and    w16, w16, #0xf0f0f0f
    WORD $0x2a160ed6 // orr    w22, w22, w22, lsl #3
    WORD $0x0b1002d0 // add    w16, w22, w16
    WORD $0x530c7e16 // lsr    w22, w16, #12
    WORD $0x2a5022d0 // orr    w16, w22, w16, lsr #8
    WORD $0x529b0016 // mov    w22, #55296
    WORD $0x12161610 // and    w16, w16, #0xfc00
    WORD $0x6b16021f // cmp    w16, w22
    BNE LBB0_406
    WORD $0xf1002d1f // cmp    x8, #11
    BLO LBB0_406
    WORD $0x8b070288 // add    x8, x20, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x39401910 // ldrb    w16, [x8, #6]
    WORD $0x7101721f // cmp    w16, #92
    BNE LBB0_406
    WORD $0x39401d08 // ldrb    w8, [x8, #7]
    WORD $0x7101d51f // cmp    w8, #117
    BNE LBB0_406
    WORD $0x8b070288 // add    x8, x20, x7
    WORD $0x5299fa10 // mov    w16, #53200
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x72b9f9f0 // movk    w16, #53199, lsl #16
    WORD $0xb9400908 // ldr    w8, [x8, #8]
    WORD $0x0b100110 // add    w16, w8, w16
    WORD $0x0a2803b6 // bic    w22, w29, w8
    WORD $0x6a1002df // tst    w22, w16
    BNE LBB0_406
    WORD $0x0b1e0110 // add    w16, w8, w30
    WORD $0x2a080210 // orr    w16, w16, w8
    WORD $0x7201c21f // tst    w16, #0x80808080
    BNE LBB0_406
    WORD $0x5288c8da // mov    w26, #17990
    WORD $0x1200d917 // and    w23, w8, #0x7f7f7f7f
    WORD $0x72a8c8da // movk    w26, #17990, lsl #16
    WORD $0x4b170310 // sub    w16, w24, w23
    WORD $0x0b1a02fa // add    w26, w23, w26
    WORD $0x0a100350 // and    w16, w26, w16
    WORD $0x6a16021f // tst    w16, w22
    BNE LBB0_406
    WORD $0x5287273a // mov    w26, #14649
    WORD $0x3203cbf0 // mov    w16, #-522133280
    WORD $0x72a7273a // movk    w26, #14649, lsl #16
    WORD $0x4b170210 // sub    w16, w16, w23
    WORD $0x0b1a02f7 // add    w23, w23, w26
    WORD $0x0a1002f0 // and    w16, w23, w16
    WORD $0x6a16021f // tst    w16, w22
    BNE LBB0_406
    WORD $0x5ac00908 // rev    w8, w8
    WORD $0x3200c3f0 // mov    w16, #16843009
    WORD $0x0a681210 // bic    w16, w16, w8, lsr #4
    WORD $0x1200cd08 // and    w8, w8, #0xf0f0f0f
    WORD $0x2a100e10 // orr    w16, w16, w16, lsl #3
    WORD $0x0b080208 // add    w8, w16, w8
    WORD $0x530c7d10 // lsr    w16, w8, #12
    WORD $0x2a482208 // orr    w8, w16, w8, lsr #8
    WORD $0x529b8010 // mov    w16, #56320
    WORD $0x12161508 // and    w8, w8, #0xfc00
    WORD $0x6b10011f // cmp    w8, w16
    BNE LBB0_406
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0xf9403508 // ldr    x8, [x8, #104]
    WORD $0x8b070108 // add    x8, x8, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x91003108 // add    x8, x8, #12
    B LBB0_405
LBB0_402:
    WORD $0x51008ac8 // sub    w8, w22, #34
    WORD $0x7100e91f // cmp    w8, #58
    BHI LBB0_738
    WORD $0x9ac82168 // lsl    x8, x11, x8
    WORD $0xea0d011f // tst    x8, x13
    BEQ LBB0_738
LBB0_404:
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0xf9403508 // ldr    x8, [x8, #104]
    WORD $0x8b070108 // add    x8, x8, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x91000908 // add    x8, x8, #2
LBB0_405:
    WORD $0xcb070250 // sub    x16, x18, x7
    WORD $0xcb1300c6 // sub    x6, x6, x19
    WORD $0x8b1300e7 // add    x7, x7, x19
    WORD $0x8b100110 // add    x16, x8, x16
    WORD $0xaa1503f7 // mov    x23, x21
    WORD $0xcb130210 // sub    x16, x16, x19
    WORD $0x8b1000e7 // add    x7, x7, x16
    WORD $0xcb1000c6 // sub    x6, x6, x16
    TST $(1<<63), R8
    BEQ LBB0_376
    B LBB0_676
LBB0_406:
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0xf9403508 // ldr    x8, [x8, #104]
    WORD $0x8b070108 // add    x8, x8, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x91001908 // add    x8, x8, #6
    B LBB0_405
LBB0_407:
    WORD $0xcb1200e8 // sub    x8, x7, x18
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0xf280003a // movk    x26, #1
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    WORD $0x52800054 // mov    w20, #2
    WORD $0xaa1503f7 // mov    x23, x21
    B LBB0_111
LBB0_408:
    WORD $0x2a1b03fa // mov    w26, w27
LBB0_409:
    WORD $0x5ac0034d // rbit    w13, w26
    WORD $0xaa3403f0 // mvn    x16, x20
    WORD $0x5ac011ad // clz    w13, w13
    WORD $0xcb0d0215 // sub    x21, x16, x13
    B LBB0_415
LBB0_410:
    WORD $0x8b12008d // add    x13, x4, x18
    WORD $0xcb0501ad // sub    x13, x13, x5
    WORD $0xcb2741ad // sub    x13, x13, w7, uxtw
    B LBB0_304
LBB0_411:
    WORD $0x8b12008d // add    x13, x4, x18
    WORD $0xcb0501ad // sub    x13, x13, x5
    WORD $0xcb2641ad // sub    x13, x13, w6, uxtw
    B LBB0_304
LBB0_412:
    WORD $0x8b12008d // add    x13, x4, x18
    WORD $0xcb0501ad // sub    x13, x13, x5
    WORD $0xcb3341ad // sub    x13, x13, w19, uxtw
    B LBB0_304
LBB0_413:
    WORD $0x5ac003cd // rbit    w13, w30
    WORD $0x8b120110 // add    x16, x8, x18
    WORD $0xaa3403f1 // mvn    x17, x20
    WORD $0x8b100230 // add    x16, x17, x16
    WORD $0x5ac011ad // clz    w13, w13
    WORD $0xcb0d020d // sub    x13, x16, x13
LBB0_414:
    WORD $0xcb1501b5 // sub    x21, x13, x21
LBB0_415:
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    TST $(1<<63), R21
    BEQ LBB0_297
    B LBB0_686
LBB0_416:
    WORD $0xaa1703f6 // mov    x22, x23
    WORD $0x8b060246 // add    x6, x18, x6
    B LBB0_419
LBB0_417:
    WORD $0x5287273d // mov    w29, #14649
    WORD $0x5288c8d1 // mov    w17, #17990
    WORD $0x529b801a // mov    w26, #56320
    WORD $0x529b001b // mov    w27, #55296
    WORD $0x3200c3f8 // mov    w24, #16843009
    WORD $0x72a7273d // movk    w29, #14649, lsl #16
    WORD $0x3203cbfe // mov    w30, #-522133280
    WORD $0x72a8c8d1 // movk    w17, #17990, lsl #16
    WORD $0x3202c7f6 // mov    w22, #-1061109568
    WORD $0x8b070247 // add    x7, x18, x7
    B LBB0_425
LBB0_418:
    WORD $0xaa1f03e7 // mov    x7, xzr
    WORD $0xaa1703f6 // mov    x22, x23
    WORD $0x8b170246 // add    x6, x18, x23
    WORD $0x92800005 // mov    x5, #-1
LBB0_419:
    WORD $0xf1008113 // subs    x19, x8, #32
    BLO LBB0_524
    WORD $0xa400a0db // ld1b    { z27.b }, p0/z, [x6]
    WORD $0x910183e8 // add    x8, sp, #96
    WORD $0x2401a361 // cmpeq    p1.b, p0/z, z27.b, z1.b
    WORD $0x2400a362 // cmpeq    p2.b, p0/z, z27.b, z0.b
    WORD $0xe5801901 // str    p1, [x8, #6, mul vl]
    WORD $0xe5801d02 // str    p2, [x8, #7, mul vl]
    WORD $0x047f50c8 // addpl    x8, sp, #6
    WORD $0xb9406114 // ldr    w20, [x8, #96]
    WORD $0x047f50e8 // addpl    x8, sp, #7
    WORD $0xb9406108 // ldr    w8, [x8, #96]
    CMP $0, R20
    BNE LBB0_520
    CMP $0, R7
    BNE LBB0_522
    CMP $0, R8
    BEQ LBB0_523
LBB0_423:
    WORD $0xdac00108 // rbit    x8, x8
    WORD $0xcb1200cd // sub    x13, x6, x18
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b0801a8 // add    x8, x13, x8
    WORD $0x91000508 // add    x8, x8, #1
    B LBB0_535
LBB0_424:
    WORD $0x5287273d // mov    w29, #14649
    WORD $0x5288c8d1 // mov    w17, #17990
    WORD $0x529b801a // mov    w26, #56320
    WORD $0x529b001b // mov    w27, #55296
    WORD $0x3200c3f8 // mov    w24, #16843009
    WORD $0x72a7273d // movk    w29, #14649, lsl #16
    WORD $0xaa1703ed // mov    x13, x23
    WORD $0x3203cbfe // mov    w30, #-522133280
    WORD $0x72a8c8d1 // movk    w17, #17990, lsl #16
    WORD $0x3202c7f6 // mov    w22, #-1061109568
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0x8b170247 // add    x7, x18, x23
    WORD $0x92800005 // mov    x5, #-1
LBB0_425:
    WORD $0xf10080d3 // subs    x19, x6, #32
    BLO LBB0_433
    WORD $0xa400a0fb // ld1b    { z27.b }, p0/z, [x7]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0x2400a361 // cmpeq    p1.b, p0/z, z27.b, z0.b
    WORD $0x2401a362 // cmpeq    p2.b, p0/z, z27.b, z1.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0x251f0371 // cmpgt    p1.b, p0/z, z27.b, #-1
    WORD $0xb94061a6 // ldr    w6, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da2 // str    p2, [x13, #7, mul vl]
    WORD $0x24028372 // cmpgt    p2.b, p0/z, z27.b, z2.b
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061b4 // ldr    w20, [x13, #96]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    CMP $0, R20
    BNE LBB0_536
    CMP $0, R8
    BNE LBB0_538
LBB0_428:
    WORD $0x047f50cd // addpl    x13, sp, #6
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0xb94061ad // ldr    w13, [x13, #96]
    WORD $0xb9406210 // ldr    w16, [x16, #96]
    WORD $0x0a2d0215 // bic    w21, w16, w13
    WORD $0xdac002ad // rbit    x13, x21
    WORD $0xdac011b4 // clz    x20, x13
    CMP $0, R6
    BEQ LBB0_431
    WORD $0xdac000c8 // rbit    x8, x6
    WORD $0xcb1200f2 // sub    x18, x7, x18
    WORD $0xdac01108 // clz    x8, x8
    WORD $0xeb08029f // cmp    x20, x8
    BLO LBB0_739
    WORD $0x8b080248 // add    x8, x18, x8
    B LBB0_467
LBB0_431:
    CMP $0, R21
    BNE LBB0_740
    WORD $0x910080e7 // add    x7, x7, #32
    WORD $0xaa1303e6 // mov    x6, x19
LBB0_433:
    CMP $0, R8
    BNE LBB0_541
LBB0_434:
    WORD $0x8b040248 // add    x8, x18, x4
    WORD $0xcb1203ed // neg    x13, x18
    WORD $0x043f5030 // addvl    x16, sp, #1
    WORD $0xd1000514 // sub    x20, x8, #1
    WORD $0xcb120255 // sub    x21, x18, x18
    WORD $0xf900360d // str    x13, [x16, #104]
LBB0_435:
    CMP $0, R6
    BEQ LBB0_724
    WORD $0xaa1f03f3 // mov    x19, xzr
LBB0_437:
    WORD $0x387368e8 // ldrb    w8, [x7, x19]
    WORD $0x7100891f // cmp    w8, #34
    BEQ LBB0_466
    WORD $0x7101711f // cmp    w8, #92
    BEQ LBB0_441
    WORD $0x71007d1f // cmp    w8, #31
    BLS LBB0_741
    WORD $0x91000673 // add    x19, x19, #1
    WORD $0x92800008 // mov    x8, #-1
    WORD $0xeb1300df // cmp    x6, x19
    BNE LBB0_437
    B LBB0_725
LBB0_441:
    WORD $0xd10004c8 // sub    x8, x6, #1
    WORD $0xeb13011f // cmp    x8, x19
    BEQ LBB0_724
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0xcb07028d // sub    x13, x20, x7
    WORD $0xf9403508 // ldr    x8, [x8, #104]
    WORD $0x8b070108 // add    x8, x8, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x9a850105 // csel    x5, x8, x5, eq
    WORD $0xeb1301a8 // subs    x8, x13, x19
    WORD $0xf9000be8 // str    x8, [sp, #16]
    BEQ LBB0_724
    WORD $0x8b0702ad // add    x13, x21, x7
    WORD $0x8b1301ad // add    x13, x13, x19
    WORD $0x394005a8 // ldrb    w8, [x13, #1]
    WORD $0xb9001be8 // str    w8, [sp, #24]
    WORD $0x51018908 // sub    w8, w8, #98
    WORD $0x71004d1f // cmp    w8, #19
    BHI LBB0_461
    WORD $0x1ac8216d // lsl    w13, w11, w8
    WORD $0x52820230 // mov    w16, #4113
    WORD $0x72a000b0 // movk    w16, #5, lsl #16
    WORD $0x6a1001bf // tst    w13, w16
    BNE LBB0_463
    WORD $0x71004d1f // cmp    w8, #19
    BNE LBB0_461
    WORD $0xf9400be8 // ldr    x8, [sp, #16]
    WORD $0xf100151f // cmp    x8, #5
    BLO LBB0_724
    WORD $0x8b0702ad // add    x13, x21, x7
    WORD $0x5299fa08 // mov    w8, #53200
    WORD $0x8b1301ad // add    x13, x13, x19
    WORD $0x72b9f9e8 // movk    w8, #53199, lsl #16
    WORD $0xb84021b0 // ldur    w16, [x13, #2]
    WORD $0x0b08020d // add    w13, w16, w8
    WORD $0x3201c3e8 // mov    w8, #-2139062144
    WORD $0xb9001bf0 // str    w16, [sp, #24]
    WORD $0x0a300108 // bic    w8, w8, w16
    WORD $0x6a0d011f // tst    w8, w13
    WORD $0xb9000fe8 // str    w8, [sp, #12]
    BNE LBB0_741
    WORD $0x52832328 // mov    w8, #6425
    WORD $0xb9401bf0 // ldr    w16, [sp, #24]
    WORD $0x72a32328 // movk    w8, #6425, lsl #16
    WORD $0x0b08020d // add    w13, w16, w8
    WORD $0x2a1001ad // orr    w13, w13, w16
    WORD $0x7201c1bf // tst    w13, #0x80808080
    BNE LBB0_741
    WORD $0xb9401be8 // ldr    w8, [sp, #24]
    WORD $0x1200d908 // and    w8, w8, #0x7f7f7f7f
    WORD $0x4b0802cd // sub    w13, w22, w8
    WORD $0x0b110110 // add    w16, w8, w17
    WORD $0x0a0d020d // and    w13, w16, w13
    WORD $0xb9400ff0 // ldr    w16, [sp, #12]
    WORD $0x6a1001bf // tst    w13, w16
    BNE LBB0_741
    WORD $0x4b0803cd // sub    w13, w30, w8
    WORD $0x0b1d0110 // add    w16, w8, w29
    WORD $0xb9400fe8 // ldr    w8, [sp, #12]
    WORD $0x0a0d020d // and    w13, w16, w13
    WORD $0x6a0801bf // tst    w13, w8
    BNE LBB0_741
    WORD $0xb9401be8 // ldr    w8, [sp, #24]
    WORD $0x5ac0090d // rev    w13, w8
    WORD $0x0a6d1310 // bic    w16, w24, w13, lsr #4
    WORD $0x1200cdad // and    w13, w13, #0xf0f0f0f
    WORD $0x2a100e10 // orr    w16, w16, w16, lsl #3
    WORD $0x0b0d020d // add    w13, w16, w13
    WORD $0x530c7db0 // lsr    w16, w13, #12
    WORD $0x2a4d220d // orr    w13, w16, w13, lsr #8
    WORD $0x121615ad // and    w13, w13, #0xfc00
    WORD $0x6b1b01bf // cmp    w13, w27
    BNE LBB0_465
    WORD $0xf9400be8 // ldr    x8, [sp, #16]
    WORD $0xf1002d1f // cmp    x8, #11
    BLO LBB0_465
    WORD $0x8b0702a8 // add    x8, x21, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x3940190d // ldrb    w13, [x8, #6]
    WORD $0x710171bf // cmp    w13, #92
    BNE LBB0_465
    WORD $0x39401d08 // ldrb    w8, [x8, #7]
    WORD $0x7101d51f // cmp    w8, #117
    BNE LBB0_465
    WORD $0x8b0702a8 // add    x8, x21, x7
    WORD $0x5299fa0d // mov    w13, #53200
    WORD $0x3201c3f0 // mov    w16, #-2139062144
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x72b9f9ed // movk    w13, #53199, lsl #16
    WORD $0xb9400908 // ldr    w8, [x8, #8]
    WORD $0x0b0d010d // add    w13, w8, w13
    WORD $0x0a280210 // bic    w16, w16, w8
    WORD $0x6a0d021f // tst    w16, w13
    WORD $0xb9001bf0 // str    w16, [sp, #24]
    BNE LBB0_465
    WORD $0x5283232d // mov    w13, #6425
    WORD $0x72a3232d // movk    w13, #6425, lsl #16
    WORD $0x0b0d010d // add    w13, w8, w13
    WORD $0x2a0801ad // orr    w13, w13, w8
    WORD $0x7201c1bf // tst    w13, #0x80808080
    BNE LBB0_465
    WORD $0x1200d910 // and    w16, w8, #0x7f7f7f7f
    WORD $0x4b1002cd // sub    w13, w22, w16
    WORD $0xb90013f0 // str    w16, [sp, #16]
    WORD $0x0b110210 // add    w16, w16, w17
    WORD $0x0a0d020d // and    w13, w16, w13
    WORD $0xb9401bf0 // ldr    w16, [sp, #24]
    WORD $0x6a1001bf // tst    w13, w16
    BNE LBB0_465
    WORD $0xb94013f0 // ldr    w16, [sp, #16]
    WORD $0x4b1003cd // sub    w13, w30, w16
    WORD $0x0b1d0210 // add    w16, w16, w29
    WORD $0x0a0d020d // and    w13, w16, w13
    WORD $0xb9401bf0 // ldr    w16, [sp, #24]
    WORD $0x6a1001bf // tst    w13, w16
    BNE LBB0_465
    WORD $0x5ac00908 // rev    w8, w8
    WORD $0x0a68130d // bic    w13, w24, w8, lsr #4
    WORD $0x1200cd08 // and    w8, w8, #0xf0f0f0f
    WORD $0x2a0d0dad // orr    w13, w13, w13, lsl #3
    WORD $0x0b0801a8 // add    w8, w13, w8
    WORD $0x530c7d0d // lsr    w13, w8, #12
    WORD $0x2a4821a8 // orr    w8, w13, w8, lsr #8
    WORD $0x12161508 // and    w8, w8, #0xfc00
    WORD $0x6b1a011f // cmp    w8, w26
    BNE LBB0_465
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0xf9403508 // ldr    x8, [x8, #104]
    WORD $0x8b070108 // add    x8, x8, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x91003108 // add    x8, x8, #12
    B LBB0_464
LBB0_461:
    WORD $0xb9401be8 // ldr    w8, [sp, #24]
    WORD $0x51008908 // sub    w8, w8, #34
    WORD $0x7100e91f // cmp    w8, #58
    BHI LBB0_741
    WORD $0x9ac82168 // lsl    x8, x11, x8
    WORD $0xd284002d // mov    x13, #8193
    WORD $0xf2e0800d // movk    x13, #1024, lsl #48
    WORD $0xea0d011f // tst    x8, x13
    BEQ LBB0_741
LBB0_463:
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0xf9403508 // ldr    x8, [x8, #104]
    WORD $0x8b070108 // add    x8, x8, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x91000908 // add    x8, x8, #2
LBB0_464:
    WORD $0xcb07024d // sub    x13, x18, x7
    WORD $0xcb1300d0 // sub    x16, x6, x19
    WORD $0x8b1300e6 // add    x6, x7, x19
    WORD $0x8b0d010d // add    x13, x8, x13
    WORD $0xcb1301ad // sub    x13, x13, x19
    WORD $0x8b0d00c7 // add    x7, x6, x13
    WORD $0xcb0d0206 // sub    x6, x16, x13
    TST $(1<<63), R8
    BEQ LBB0_435
    B LBB0_688
LBB0_465:
    WORD $0x043f5028 // addvl    x8, sp, #1
    WORD $0xf9403508 // ldr    x8, [x8, #104]
    WORD $0x8b070108 // add    x8, x8, x7
    WORD $0x8b130108 // add    x8, x8, x19
    WORD $0x91001908 // add    x8, x8, #6
    B LBB0_464
LBB0_466:
    WORD $0xcb1200e8 // sub    x8, x7, x18
    WORD $0x8b130108 // add    x8, x8, x19
LBB0_467:
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x52800054 // mov    w20, #2
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    TST $(1<<63), R8
    BEQ LBB0_230
    B LBB0_688
LBB0_468:
    WORD $0x2a1703fa // mov    w26, w23
    B LBB0_409
LBB0_469:
    WORD $0x2a1603fa // mov    w26, w22
    B LBB0_409
LBB0_470:
    WORD $0x92800013 // mov    x19, #-1
    WORD $0x92800006 // mov    x6, #-1
    WORD $0x92800007 // mov    x7, #-1
    WORD $0xaa1503e5 // mov    x5, x21
    WORD $0xf100429f // cmp    x20, #16
    BHS LBB0_136
    B LBB0_152
LBB0_471:
    WORD $0x8b12010d // add    x13, x8, x18
    WORD $0xaa3403f0 // mvn    x16, x20
    WORD $0x8b0d020d // add    x13, x16, x13
    WORD $0xcb2741ad // sub    x13, x13, w7, uxtw
    B LBB0_414
LBB0_472:
    WORD $0x8b12010d // add    x13, x8, x18
    WORD $0xaa3403f0 // mvn    x16, x20
    WORD $0x8b0d020d // add    x13, x16, x13
    WORD $0xcb2641ad // sub    x13, x13, w6, uxtw
    B LBB0_414
LBB0_473:
    WORD $0x8b12010d // add    x13, x8, x18
    WORD $0xaa3403f0 // mvn    x16, x20
    WORD $0x8b0d020d // add    x13, x16, x13
    WORD $0xcb2541ad // sub    x13, x13, w5, uxtw
    B LBB0_414
LBB0_474:
    WORD $0x92800005 // mov    x5, #-1
    WORD $0x92800006 // mov    x6, #-1
    WORD $0x92800007 // mov    x7, #-1
    WORD $0xaa0403f4 // mov    x20, x4
    WORD $0xf100427f // cmp    x19, #16
    BHS LBB0_253
    B LBB0_269
LBB0_475:
    WORD $0xb10004df // cmn    x6, #1
    BNE LBB0_477
    WORD $0xdac002b0 // rbit    x16, x21
    WORD $0xcb1200e6 // sub    x6, x7, x18
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b1000c6 // add    x6, x6, x16
LBB0_477:
    WORD $0x0a3302b0 // bic    w16, w21, w19
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0x531f7a16 // lsl    w22, w16, #1
    WORD $0x331f7a13 // bfi    w19, w16, #1, #31
    WORD $0xf280003a // movk    x26, #1
    WORD $0x0a3602b5 // bic    w21, w21, w22
    WORD $0x1201f2b5 // and    w21, w21, #0xaaaaaaaa
    WORD $0x2b1002b5 // adds    w21, w21, w16
    WORD $0x531f7ab5 // lsl    w21, w21, #1
    WORD $0x5200f2b0 // eor    w16, w21, #0x55555555
    WORD $0x0a130210 // and    w16, w16, w19
    WORD $0x1a9f37f3 // cset    w19, hs
    WORD $0x2a3003f0 // mvn    w16, w16
    WORD $0x8a080208 // and    x8, x16, x8
    CMP $0, R8
    BNE LBB0_311
LBB0_478:
    WORD $0x910080e7 // add    x7, x7, #32
    WORD $0xaa1403e8 // mov    x8, x20
LBB0_479:
    CMP $0, R19
    BNE LBB0_514
    CMP $0, R8
    BEQ LBB0_488
LBB0_481:
    WORD $0xaa3203f3 // mvn    x19, x18
LBB0_482:
    WORD $0xaa0703f5 // mov    x21, x7
    WORD $0x384016b4 // ldrb    w20, [x21], #1
    WORD $0x71008a9f // cmp    w20, #34
    BEQ LBB0_489
    WORD $0x7101729f // cmp    w20, #92
    WORD $0xd1000516 // sub    x22, x8, #1
    BEQ LBB0_485
    WORD $0xaa1503e7 // mov    x7, x21
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0xaa1603e8 // mov    x8, x22
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    CMP $0, R22
    BNE LBB0_482
    B LBB0_487
LBB0_485:
    CMP $0, R22
    BEQ LBB0_715
    WORD $0x8b1302b0 // add    x16, x21, x19
    WORD $0xb10004df // cmn    x6, #1
    WORD $0x910008e7 // add    x7, x7, #2
    WORD $0x9a860206 // csel    x6, x16, x6, eq
    WORD $0xd1000916 // sub    x22, x8, #2
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0xaa1603e8 // mov    x8, x22
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    CMP $0, R22
    BNE LBB0_482
LBB0_487:
    WORD $0x71008a9f // cmp    w20, #34
    BNE LBB0_715
LBB0_488:
    WORD $0xaa0703f5 // mov    x21, x7
LBB0_489:
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x52800054 // mov    w20, #2
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    WORD $0xcb1202a8 // sub    x8, x21, x18
    TST $(1<<63), R8
    BEQ LBB0_95
    B LBB0_673
LBB0_490:
    WORD $0xb10004df // cmn    x6, #1
    BNE LBB0_492
    WORD $0xdac002b0 // rbit    x16, x21
    WORD $0xcb120266 // sub    x6, x19, x18
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b1000c6 // add    x6, x6, x16
LBB0_492:
    WORD $0x0a2802b0 // bic    w16, w21, w8
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0x531f7a16 // lsl    w22, w16, #1
    WORD $0x331f7a08 // bfi    w8, w16, #1, #31
    WORD $0xf280003a // movk    x26, #1
    WORD $0x0a3602b5 // bic    w21, w21, w22
    WORD $0x1201f2b5 // and    w21, w21, #0xaaaaaaaa
    WORD $0x2b1002b5 // adds    w21, w21, w16
    WORD $0x531f7ab5 // lsl    w21, w21, #1
    WORD $0x5200f2b0 // eor    w16, w21, #0x55555555
    WORD $0x0a080208 // and    w8, w16, w8
    WORD $0x1a9f37f0 // cset    w16, hs
    WORD $0x2a2803e8 // mvn    w8, w8
    WORD $0x8a070107 // and    x7, x8, x7
    WORD $0xaa1003e8 // mov    x8, x16
    B LBB0_316
LBB0_493:
    WORD $0xb10004bf // cmn    x5, #1
    BNE LBB0_495
    WORD $0xdac00290 // rbit    x16, x20
    WORD $0xcb1200c5 // sub    x5, x6, x18
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b1000a5 // add    x5, x5, x16
LBB0_495:
    WORD $0x0a270290 // bic    w16, w20, w7
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0x531f7a15 // lsl    w21, w16, #1
    WORD $0x331f7a07 // bfi    w7, w16, #1, #31
    WORD $0xf280003a // movk    x26, #1
    WORD $0x0a350294 // bic    w20, w20, w21
    WORD $0x1201f294 // and    w20, w20, #0xaaaaaaaa
    WORD $0x2b100294 // adds    w20, w20, w16
    WORD $0x531f7a94 // lsl    w20, w20, #1
    WORD $0x5200f290 // eor    w16, w20, #0x55555555
    WORD $0x0a070210 // and    w16, w16, w7
    WORD $0x1a9f37e7 // cset    w7, hs
    WORD $0x2a3003f0 // mvn    w16, w16
    WORD $0x8a080208 // and    x8, x16, x8
    WORD $0x52800054 // mov    w20, #2
    CMP $0, R8
    BNE LBB0_365
LBB0_496:
    WORD $0x910080c6 // add    x6, x6, #32
    WORD $0xaa1303e8 // mov    x8, x19
LBB0_497:
    CMP $0, R7
    BNE LBB0_518
    CMP $0, R8
    BEQ LBB0_506
LBB0_499:
    WORD $0xaa3203e7 // mvn    x7, x18
LBB0_500:
    WORD $0xaa0603f4 // mov    x20, x6
    WORD $0x38401693 // ldrb    w19, [x20], #1
    WORD $0x71008a7f // cmp    w19, #34
    BEQ LBB0_507
    WORD $0x7101727f // cmp    w19, #92
    WORD $0xd1000515 // sub    x21, x8, #1
    BEQ LBB0_503
    WORD $0xaa1403e6 // mov    x6, x20
    WORD $0xaa1503e8 // mov    x8, x21
    CMP $0, R21
    BNE LBB0_500
    B LBB0_505
LBB0_503:
    CMP $0, R21
    BEQ LBB0_736
    WORD $0x8b070290 // add    x16, x20, x7
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0x910008c6 // add    x6, x6, #2
    WORD $0x9a850205 // csel    x5, x16, x5, eq
    WORD $0xd1000915 // sub    x21, x8, #2
    WORD $0xaa1503e8 // mov    x8, x21
    CMP $0, R21
    BNE LBB0_500
LBB0_505:
    WORD $0x71008a7f // cmp    w19, #34
    BNE LBB0_736
LBB0_506:
    WORD $0xaa0603f4 // mov    x20, x6
LBB0_507:
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0xcb120288 // sub    x8, x20, x18
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    B LBB0_110
LBB0_508:
    WORD $0x5283233e // mov    w30, #6425
    WORD $0x52820231 // mov    w17, #4113
    WORD $0xd284002d // mov    x13, #8193
    WORD $0x3202c7f8 // mov    w24, #-1061109568
    WORD $0x72a3233e // movk    w30, #6425, lsl #16
    WORD $0x3201c3fd // mov    w29, #-2139062144
    WORD $0x72a000b1 // movk    w17, #5, lsl #16
    WORD $0xf2e0800d // movk    x13, #1024, lsl #48
    CMP $0, R8
    BEQ LBB0_375
LBB0_509:
    CMP $0, R6
    BEQ LBB0_736
    WORD $0xaa3203e8 // mvn    x8, x18
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0xd10004c6 // sub    x6, x6, #1
    WORD $0x8b0800e8 // add    x8, x7, x8
    WORD $0x910004e7 // add    x7, x7, #1
    WORD $0x9a850105 // csel    x5, x8, x5, eq
    B LBB0_375
LBB0_511:
    WORD $0xb10004bf // cmn    x5, #1
    BNE LBB0_513
    WORD $0xdac00290 // rbit    x16, x20
    WORD $0xcb1200e5 // sub    x5, x7, x18
    WORD $0xdac01210 // clz    x16, x16
    WORD $0x8b1000a5 // add    x5, x5, x16
LBB0_513:
    WORD $0x0a280290 // bic    w16, w20, w8
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x52800078 // mov    w24, #3
    WORD $0x531f7a15 // lsl    w21, w16, #1
    WORD $0x331f7a08 // bfi    w8, w16, #1, #31
    WORD $0xf280003a // movk    x26, #1
    WORD $0x0a350294 // bic    w20, w20, w21
    WORD $0x1201f294 // and    w20, w20, #0xaaaaaaaa
    WORD $0x2b100294 // adds    w20, w20, w16
    WORD $0x531f7a94 // lsl    w20, w20, #1
    WORD $0x5200f290 // eor    w16, w20, #0x55555555
    WORD $0x0a080208 // and    w8, w16, w8
    WORD $0x1a9f37f0 // cset    w16, hs
    WORD $0x2a2803e8 // mvn    w8, w8
    WORD $0x8a060106 // and    x6, x8, x6
    WORD $0xaa1003e8 // mov    x8, x16
    B LBB0_370
LBB0_514:
    CMP $0, R8
    BEQ LBB0_715
    WORD $0xaa3203f0 // mvn    x16, x18
    WORD $0xb10004df // cmn    x6, #1
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x8b1000f0 // add    x16, x7, x16
    WORD $0x910004e7 // add    x7, x7, #1
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x9a860206 // csel    x6, x16, x6, eq
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    CMP $0, R8
    BNE LBB0_481
    B LBB0_488
LBB0_516:
    CMP $0, R7
    BEQ LBB0_715
    WORD $0xaa3203e8 // mvn    x8, x18
    WORD $0xb10004df // cmn    x6, #1
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x8b080268 // add    x8, x19, x8
    WORD $0x91000673 // add    x19, x19, #1
    WORD $0xd10004e7 // sub    x7, x7, #1
    WORD $0x9a860106 // csel    x6, x8, x6, eq
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    B LBB0_322
LBB0_518:
    CMP $0, R8
    BEQ LBB0_736
    WORD $0xaa3203f0 // mvn    x16, x18
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x8b1000d0 // add    x16, x6, x16
    WORD $0x910004c6 // add    x6, x6, #1
    WORD $0x9a850205 // csel    x5, x16, x5, eq
    CMP $0, R8
    BNE LBB0_499
    B LBB0_506
LBB0_520:
    WORD $0xb10004bf // cmn    x5, #1
    BNE LBB0_522
    WORD $0xdac0028d // rbit    x13, x20
    WORD $0xcb1200d0 // sub    x16, x6, x18
    WORD $0xdac011ad // clz    x13, x13
    WORD $0x8b0d0205 // add    x5, x16, x13
LBB0_522:
    WORD $0x0a27028d // bic    w13, w20, w7
    WORD $0x531f79b0 // lsl    w16, w13, #1
    WORD $0x331f79a7 // bfi    w7, w13, #1, #31
    WORD $0x0a300290 // bic    w16, w20, w16
    WORD $0x1201f210 // and    w16, w16, #0xaaaaaaaa
    WORD $0x2b0d0210 // adds    w16, w16, w13
    WORD $0x531f7a10 // lsl    w16, w16, #1
    WORD $0x5200f20d // eor    w13, w16, #0x55555555
    WORD $0x0a0701ad // and    w13, w13, w7
    WORD $0x1a9f37e7 // cset    w7, hs
    WORD $0x2a2d03ed // mvn    w13, w13
    WORD $0x8a0801a8 // and    x8, x13, x8
    CMP $0, R8
    BNE LBB0_423
LBB0_523:
    WORD $0x910080c6 // add    x6, x6, #32
    WORD $0xaa1303e8 // mov    x8, x19
LBB0_524:
    CMP $0, R7
    BNE LBB0_539
    CMP $0, R8
    BEQ LBB0_533
LBB0_526:
    WORD $0xaa3203e7 // mvn    x7, x18
LBB0_527:
    WORD $0xaa0603f4 // mov    x20, x6
    WORD $0x38401693 // ldrb    w19, [x20], #1
    WORD $0x71008a7f // cmp    w19, #34
    BEQ LBB0_534
    WORD $0x7101727f // cmp    w19, #92
    WORD $0xd1000515 // sub    x21, x8, #1
    BEQ LBB0_530
    WORD $0xaa1403e6 // mov    x6, x20
    WORD $0xaa1503e8 // mov    x8, x21
    CMP $0, R21
    BNE LBB0_527
    B LBB0_532
LBB0_530:
    CMP $0, R21
    BEQ LBB0_724
    WORD $0x8b07028d // add    x13, x20, x7
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0x910008c6 // add    x6, x6, #2
    WORD $0x9a8501a5 // csel    x5, x13, x5, eq
    WORD $0xd1000915 // sub    x21, x8, #2
    WORD $0xaa1503e8 // mov    x8, x21
    CMP $0, R21
    BNE LBB0_527
LBB0_532:
    WORD $0x71008a7f // cmp    w19, #34
    BNE LBB0_724
LBB0_533:
    WORD $0xaa0603f4 // mov    x20, x6
LBB0_534:
    WORD $0xcb120288 // sub    x8, x20, x18
LBB0_535:
    WORD $0xb20903fa // mov    x26, #36028797027352576
    WORD $0x528d8c33 // mov    w19, #27745
    WORD $0x52800078 // mov    w24, #3
    WORD $0xf280003a // movk    x26, #1
    WORD $0x528000b1 // mov    w17, #5
    WORD $0x72acae73 // movk    w19, #25971, lsl #16
    WORD $0x52800054 // mov    w20, #2
    WORD $0xaa1603f7 // mov    x23, x22
    TST $(1<<63), R8
    BEQ LBB0_230
    B LBB0_688
LBB0_536:
    WORD $0xb10004bf // cmn    x5, #1
    BNE LBB0_538
    WORD $0xdac0028d // rbit    x13, x20
    WORD $0xcb1200f0 // sub    x16, x7, x18
    WORD $0xdac011ad // clz    x13, x13
    WORD $0x8b0d0205 // add    x5, x16, x13
LBB0_538:
    WORD $0x0a28028d // bic    w13, w20, w8
    WORD $0x531f79b0 // lsl    w16, w13, #1
    WORD $0x331f79a8 // bfi    w8, w13, #1, #31
    WORD $0x0a300290 // bic    w16, w20, w16
    WORD $0x1201f210 // and    w16, w16, #0xaaaaaaaa
    WORD $0x2b0d0210 // adds    w16, w16, w13
    WORD $0x531f7a10 // lsl    w16, w16, #1
    WORD $0x5200f20d // eor    w13, w16, #0x55555555
    WORD $0x0a0801a8 // and    w8, w13, w8
    WORD $0x1a9f37ed // cset    w13, hs
    WORD $0x2a2803e8 // mvn    w8, w8
    WORD $0x8a060106 // and    x6, x8, x6
    WORD $0xaa0d03e8 // mov    x8, x13
    B LBB0_428
LBB0_539:
    CMP $0, R8
    BEQ LBB0_724
    WORD $0xaa3203ed // mvn    x13, x18
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x8b0d00cd // add    x13, x6, x13
    WORD $0x910004c6 // add    x6, x6, #1
    WORD $0x9a8501a5 // csel    x5, x13, x5, eq
    CMP $0, R8
    BNE LBB0_526
    B LBB0_533
LBB0_541:
    CMP $0, R6
    BEQ LBB0_724
    WORD $0xaa3203e8 // mvn    x8, x18
    WORD $0xb10004bf // cmn    x5, #1
    WORD $0xd10004c6 // sub    x6, x6, #1
    WORD $0x8b0800e8 // add    x8, x7, x8
    WORD $0x910004e7 // add    x7, x7, #1
    WORD $0x9a850105 // csel    x5, x8, x5, eq
    B LBB0_434
LBB0_543:
    WORD $0xa940200a // ldp    x10, x8, [x0]
    WORD $0xf940002b // ldr    x11, [x1]
    WORD $0xeb08017f // cmp    x11, x8
    BHS LBB0_547
    WORD $0x386b6949 // ldrb    w9, [x10, x11]
    WORD $0x7100353f // cmp    w9, #13
    BEQ LBB0_547
    WORD $0x7100813f // cmp    w9, #32
    BEQ LBB0_547
    WORD $0x51002d29 // sub    w9, w9, #11
    WORD $0x3100093f // cmn    w9, #2
    WORD $0xaa0b03e9 // mov    x9, x11
    BLO LBB0_566
LBB0_547:
    WORD $0x91000569 // add    x9, x11, #1
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_551
    WORD $0x3869694c // ldrb    w12, [x10, x9]
    WORD $0x7100359f // cmp    w12, #13
    BEQ LBB0_551
    WORD $0x7100819f // cmp    w12, #32
    BEQ LBB0_551
    WORD $0x51002d8c // sub    w12, w12, #11
    WORD $0x3100099f // cmn    w12, #2
    BLO LBB0_566
LBB0_551:
    WORD $0x91000969 // add    x9, x11, #2
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_555
    WORD $0x3869694c // ldrb    w12, [x10, x9]
    WORD $0x7100359f // cmp    w12, #13
    BEQ LBB0_555
    WORD $0x7100819f // cmp    w12, #32
    BEQ LBB0_555
    WORD $0x51002d8c // sub    w12, w12, #11
    WORD $0x3100099f // cmn    w12, #2
    BLO LBB0_566
LBB0_555:
    WORD $0x91000d69 // add    x9, x11, #3
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_559
    WORD $0x3869694c // ldrb    w12, [x10, x9]
    WORD $0x7100359f // cmp    w12, #13
    BEQ LBB0_559
    WORD $0x7100819f // cmp    w12, #32
    BEQ LBB0_559
    WORD $0x51002d8c // sub    w12, w12, #11
    WORD $0x3100099f // cmn    w12, #2
    BLO LBB0_566
LBB0_559:
    WORD $0x91001169 // add    x9, x11, #4
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_564
    WORD $0xd284c00c // mov    x12, #9728
    WORD $0x5280002b // mov    w11, #1
    WORD $0xf2c0002c // movk    x12, #1, lsl #32
LBB0_561:
    WORD $0x3869694d // ldrb    w13, [x10, x9]
    WORD $0x9acd216e // lsl    x14, x11, x13
    WORD $0x710081bf // cmp    w13, #32
    WORD $0x8a0c01cd // and    x13, x14, x12
    WORD $0xfa4099a4 // ccmp    x13, #0, #4, ls
    BEQ LBB0_565
    WORD $0x91000529 // add    x9, x9, #1
    WORD $0xeb09011f // cmp    x8, x9
    BNE LBB0_561
LBB0_563:
    WORD $0x92800008 // mov    x8, #-1
    B LBB0_667
LBB0_564:
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x92800008 // mov    x8, #-1
    B LBB0_667
LBB0_565:
    WORD $0xeb08013f // cmp    x9, x8
    BHS LBB0_563
LBB0_566:
    WORD $0x91000530 // add    x16, x9, #1
    WORD $0xf9000030 // str    x16, [x1]
    WORD $0x38696948 // ldrb    w8, [x10, x9]
    WORD $0x7101691f // cmp    w8, #90
    BGT LBB0_591
    WORD $0x7100bd1f // cmp    w8, #47
    BLE LBB0_596
    WORD $0x5100c108 // sub    w8, w8, #48
    WORD $0x7100291f // cmp    w8, #10
    BHS LBB0_663
LBB0_569:
    WORD $0xf9400408 // ldr    x8, [x0, #8]
    WORD $0xcb10010b // sub    x11, x8, x16
    WORD $0x8b100148 // add    x8, x10, x16
    WORD $0xf100817f // cmp    x11, #32
    BLO LBB0_573
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x2538cfa0 // mov    z0.b, #125
    WORD $0x2538cba1 // mov    z1.b, #93
    WORD $0x2538c582 // mov    z2.b, #44
    WORD $0xaa1f03ec // mov    x12, xzr
LBB0_571:
    WORD $0xa400a103 // ld1b    { z3.b }, p0/z, [x8]
    WORD $0x910183ed // add    x13, sp, #96
    WORD $0x047f50ce // addpl    x14, sp, #6
    WORD $0x047f50af // addpl    x15, sp, #5
    WORD $0x2400a061 // cmpeq    p1.b, p0/z, z3.b, z0.b
    WORD $0x2401a062 // cmpeq    p2.b, p0/z, z3.b, z1.b
    WORD $0x2402a063 // cmpeq    p3.b, p0/z, z3.b, z2.b
    WORD $0xe5801da1 // str    p1, [x13, #7, mul vl]
    WORD $0xe58019a2 // str    p2, [x13, #6, mul vl]
    WORD $0xe58015a3 // str    p3, [x13, #5, mul vl]
    WORD $0x047f50ed // addpl    x13, sp, #7
    WORD $0xb94061ce // ldr    w14, [x14, #96]
    WORD $0xb94061ad // ldr    w13, [x13, #96]
    WORD $0xb94061ef // ldr    w15, [x15, #96]
    WORD $0x2a0d01cd // orr    w13, w14, w13
    WORD $0x2a0f01ad // orr    w13, w13, w15
    CMP $0, R13
    BNE LBB0_587
    WORD $0xd100816b // sub    x11, x11, #32
    WORD $0x91008108 // add    x8, x8, #32
    WORD $0x9100818c // add    x12, x12, #32
    WORD $0xf1007d7f // cmp    x11, #31
    BHI LBB0_571
LBB0_573:
    WORD $0xf100417f // cmp    x11, #16
    BLO LBB0_578
    WORD $0x4f01e580 // movi    v0.16b, #44
    WORD $0x4f06e7e1 // movi    v1.16b, #223
    ADR LCPI0_0, R12
    WORD $0x4f02e7a2 // movi    v2.16b, #93
    ADR LCPI0_1, R13
    WORD $0x3dc00183 // ldr    q3, [x12, :lo12:.LCPI0_0]
    WORD $0x3dc001a4 // ldr    q4, [x13, :lo12:.LCPI0_1]
    WORD $0xaa1f03ec // mov    x12, xzr
LBB0_575:
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
    BNE LBB0_669
    WORD $0xd100416b // sub    x11, x11, #16
    WORD $0x9100418c // add    x12, x12, #16
    WORD $0xf1003d7f // cmp    x11, #15
    BHI LBB0_575
    WORD $0x8b0c0108 // add    x8, x8, x12
LBB0_578:
    CMP $0, R11
    BEQ LBB0_586
    WORD $0xd284c00f // mov    x15, #9728
    WORD $0x8b0b010c // add    x12, x8, x11
    WORD $0xcb0a010d // sub    x13, x8, x10
    WORD $0x5280002e // mov    w14, #1
    WORD $0xf2c2002f // movk    x15, #4097, lsl #32
LBB0_580:
    WORD $0x39400110 // ldrb    w16, [x8]
    WORD $0x7100b21f // cmp    w16, #44
    BHI LBB0_582
    WORD $0x9ad021d1 // lsl    x17, x14, x16
    WORD $0xea0f023f // tst    x17, x15
    BNE LBB0_708
LBB0_582:
    WORD $0x7101f61f // cmp    w16, #125
    BEQ LBB0_708
    WORD $0x7101761f // cmp    w16, #93
    BEQ LBB0_708
    WORD $0xf100056b // subs    x11, x11, #1
    WORD $0x91000508 // add    x8, x8, #1
    WORD $0x910005ad // add    x13, x13, #1
    BNE LBB0_580
    WORD $0xaa0c03e8 // mov    x8, x12
LBB0_586:
    WORD $0xcb0a0108 // sub    x8, x8, x10
    B LBB0_665
LBB0_587:
    WORD $0x5ac001ab // rbit    w11, w13
    WORD $0xcb0a010d // sub    x13, x8, x10
    WORD $0x5ac01168 // clz    w8, w11
    WORD $0x8b0801ab // add    x11, x13, x8
    WORD $0xf100057f // cmp    x11, #1
    WORD $0xf900002b // str    x11, [x1]
    BLT LBB0_666
    WORD $0x8b0c0108 // add    x8, x8, x12
    WORD $0xd284c00c // mov    x12, #9728
    WORD $0x8b09014a // add    x10, x10, x9
    WORD $0x5280002b // mov    w11, #1
    WORD $0xf2c0002c // movk    x12, #1, lsl #32
LBB0_589:
    WORD $0x3868694d // ldrb    w13, [x10, x8]
    WORD $0x9acd216e // lsl    x14, x11, x13
    WORD $0x710081bf // cmp    w13, #32
    WORD $0x8a0c01cd // and    x13, x14, x12
    WORD $0xfa4099a4 // ccmp    x13, #0, #4, ls
    BEQ LBB0_666
    WORD $0x8b08012d // add    x13, x9, x8
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x8b08012e // add    x14, x9, x8
    WORD $0xf900002d // str    x13, [x1]
    WORD $0x910009ce // add    x14, x14, #2
    WORD $0xf10005df // cmp    x14, #1
    BGT LBB0_589
    B LBB0_666
LBB0_591:
    WORD $0x7101b51f // cmp    w8, #109
    BLE LBB0_599
    WORD $0x7101b91f // cmp    w8, #110
    BEQ LBB0_627
    WORD $0x7101d11f // cmp    w8, #116
    BEQ LBB0_627
    WORD $0x7101ed1f // cmp    w8, #123
    BNE LBB0_663
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
    WORD $0x910083ef // add    x15, sp, #32
    WORD $0x3dc00235 // ldr    q21, [x17, :lo12:.LCPI0_9]
    WORD $0xaa1f03ee // mov    x14, xzr
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0xaa1f03eb // mov    x11, xzr
    WORD $0xcb1001ad // sub    x13, x13, x16
    WORD $0x8b100152 // add    x18, x10, x16
    WORD $0x910081ea // add    x10, x15, #32
    WORD $0x52800410 // mov    w16, #32
    B LBB0_603
LBB0_596:
    CMP $0, R8
    BEQ LBB0_563
    WORD $0x7100891f // cmp    w8, #34
    BEQ LBB0_628
    WORD $0x7100b51f // cmp    w8, #45
    BEQ LBB0_569
    B LBB0_663
LBB0_599:
    WORD $0x71016d1f // cmp    w8, #91
    BEQ LBB0_637
    WORD $0x7101991f // cmp    w8, #102
    BNE LBB0_663
    WORD $0xf940040a // ldr    x10, [x0, #8]
    WORD $0x91001528 // add    x8, x9, #5
    WORD $0xeb0a011f // cmp    x8, x10
    BHI LBB0_563
    B LBB0_665
LBB0_602:
    WORD $0x9e670256 // fmov    d22, x18
    WORD $0x937ffdce // asr    x14, x14, #63
    WORD $0x91008052 // add    x18, x2, #32
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602cd // fmov    w13, s22
    WORD $0x8b0801a8 // add    x8, x13, x8
    WORD $0xaa1103ed // mov    x13, x17
LBB0_603:
    WORD $0xf10101b1 // subs    x17, x13, #64
    BLT LBB0_610
LBB0_604:
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0x910183f3 // add    x19, sp, #96
    WORD $0x2400a2c2 // cmpeq    p2.b, p0/z, z22.b, z0.b
    WORD $0x2400a2e3 // cmpeq    p3.b, p0/z, z23.b, z0.b
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0xb9406262 // ldr    w2, [x19, #96]
    WORD $0x910183f3 // add    x19, sp, #96
    WORD $0x2401a2c2 // cmpeq    p2.b, p0/z, z22.b, z1.b
    WORD $0x2401a2e3 // cmpeq    p3.b, p0/z, z23.b, z1.b
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9406263 // ldr    w3, [x19, #96]
    WORD $0x910183f3 // add    x19, sp, #96
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9406264 // ldr    w4, [x19, #96]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xb9406265 // ldr    w5, [x19, #96]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0xaa0c0085 // orr    x5, x4, x12
    CMP $0, R5
    BNE LBB0_606
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e4 // mov    x4, xzr
    B LBB0_607
LBB0_606:
    WORD $0x8a2c0085 // bic    x5, x4, x12
    WORD $0xaa050586 // orr    x6, x12, x5, lsl #1
    WORD $0x8a26008c // bic    x12, x4, x6
    WORD $0x9201f18c // and    x12, x12, #0xaaaaaaaaaaaaaaaa
    WORD $0xab05018c // adds    x12, x12, x5
    WORD $0xd37ff98c // lsl    x12, x12, #1
    WORD $0xd200f184 // eor    x4, x12, #0x5555555555555555
    WORD $0x1a9f37ec // cset    w12, hs
    WORD $0x8a060084 // and    x4, x4, x6
LBB0_607:
    WORD $0xaa038042 // orr    x2, x2, x3, lsl #32
    WORD $0x910183f3 // add    x19, sp, #96
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
    WORD $0xb9406252 // ldr    w18, [x18, #96]
    WORD $0x2413a2e2 // cmpeq    p2.b, p0/z, z23.b, z19.b
    WORD $0x6e1642d9 // ext    v25.16b, v22.16b, v22.16b, #8
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9406263 // ldr    w3, [x19, #96]
    WORD $0x910183f3 // add    x19, sp, #96
    WORD $0x0eb91ed6 // orr    v22.8b, v22.8b, v25.8b
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9406264 // ldr    w4, [x19, #96]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xaa038252 // orr    x18, x18, x3, lsl #32
    WORD $0xb9406265 // ldr    w5, [x19, #96]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0x9e6602c5 // fmov    x5, d22
    WORD $0xca0e00ae // eor    x14, x5, x14
    WORD $0xea2e0083 // bics    x3, x4, x14
    WORD $0x8a2e0252 // bic    x18, x18, x14
    BEQ LBB0_602
LBB0_608:
    WORD $0xd1000464 // sub    x4, x3, #1
    WORD $0x8a120085 // and    x5, x4, x18
    WORD $0x9e6700b6 // fmov    d22, x5
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602c5 // fmov    w5, s22
    WORD $0x8b0800a5 // add    x5, x5, x8
    WORD $0xeb0b00bf // cmp    x5, x11
    BLS LBB0_662
    WORD $0xea030083 // ands    x3, x4, x3
    WORD $0x9100056b // add    x11, x11, #1
    BNE LBB0_608
    B LBB0_602
LBB0_610:
    WORD $0xf10001bf // cmp    x13, #0
    BLE LBB0_723
    WORD $0x92402e42 // and    x2, x18, #0xfff
    WORD $0xad0147f1 // stp    q17, q17, [sp, #32]
    WORD $0xf13f045f // cmp    x2, #4033
    WORD $0xad0247f1 // stp    q17, q17, [sp, #64]
    BLO LBB0_604
    WORD $0xf10081a3 // subs    x3, x13, #32
    BLO LBB0_614
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0x91008252 // add    x18, x18, #32
    WORD $0xaa0a03e2 // mov    x2, x10
    WORD $0xe400e1f6 // st1b    { z22.b }, p0, [x15]
    B LBB0_615
LBB0_614:
    WORD $0x910083e2 // add    x2, sp, #32
    WORD $0xaa0d03e3 // mov    x3, x13
LBB0_615:
    WORD $0xf1004064 // subs    x4, x3, #16
    BLO LBB0_621
    WORD $0x3cc10656 // ldr    q22, [x18], #16
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0x3c810456 // str    q22, [x2], #16
    WORD $0xf1002084 // subs    x4, x4, #8
    BHS LBB0_622
LBB0_617:
    WORD $0xf1001064 // subs    x4, x3, #4
    BLO LBB0_623
LBB0_618:
    WORD $0xb8404643 // ldr    w3, [x18], #4
    WORD $0xb8004443 // str    w3, [x2], #4
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1000884 // subs    x4, x4, #2
    BHS LBB0_624
LBB0_619:
    CMP $0, R3
    BEQ LBB0_625
LBB0_620:
    WORD $0x39400243 // ldrb    w3, [x18]
    WORD $0x910083f2 // add    x18, sp, #32
    WORD $0x39000043 // strb    w3, [x2]
    B LBB0_604
LBB0_621:
    WORD $0xf1002064 // subs    x4, x3, #8
    BLO LBB0_617
LBB0_622:
    WORD $0xf8408643 // ldr    x3, [x18], #8
    WORD $0xf8008443 // str    x3, [x2], #8
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1001084 // subs    x4, x4, #4
    BHS LBB0_618
LBB0_623:
    WORD $0xf1000864 // subs    x4, x3, #2
    BLO LBB0_619
LBB0_624:
    WORD $0x78402643 // ldrh    w3, [x18], #2
    WORD $0x78002443 // strh    w3, [x2], #2
    WORD $0xaa0403e3 // mov    x3, x4
    CMP $0, R4
    BNE LBB0_620
LBB0_625:
    WORD $0x910083f2 // add    x18, sp, #32
    B LBB0_604
LBB0_626:
    WORD $0xf9000024 // str    x4, [x1]
    WORD $0x92800008 // mov    x8, #-1
    B LBB0_667
LBB0_627:
    WORD $0xf940040a // ldr    x10, [x0, #8]
    WORD $0x91001128 // add    x8, x9, #4
    WORD $0xeb0a011f // cmp    x8, x10
    BHI LBB0_563
    B LBB0_665
LBB0_628:
    WORD $0xf940040e // ldr    x14, [x0, #8]
    WORD $0xcb1001cb // sub    x11, x14, x16
    WORD $0xf100817f // cmp    x11, #32
    BLT LBB0_706
    WORD $0x2518e3e0 // ptrue    p0.b
    WORD $0x2538c440 // mov    z0.b, #34
    WORD $0x2538cb81 // mov    z1.b, #92
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0xaa1f03ed // mov    x13, xzr
    WORD $0x8b09014c // add    x12, x10, x9
    WORD $0xcb0901cb // sub    x11, x14, x9
    WORD $0x528003ee // mov    w14, #31
    WORD $0x5280002f // mov    w15, #1
LBB0_630:
    WORD $0x8b080190 // add    x16, x12, x8
    WORD $0x910183f1 // add    x17, sp, #96
    WORD $0xa40f4202 // ld1b    { z2.b }, p0/z, [x16, x15]
    WORD $0x910183f0 // add    x16, sp, #96
    WORD $0x2400a041 // cmpeq    p1.b, p0/z, z2.b, z0.b
    WORD $0x2401a042 // cmpeq    p2.b, p0/z, z2.b, z1.b
    WORD $0xe5801e01 // str    p1, [x16, #7, mul vl]
    WORD $0x047f50f0 // addpl    x16, sp, #7
    WORD $0xb9406210 // ldr    w16, [x16, #96]
    WORD $0xe5801e22 // str    p2, [x17, #7, mul vl]
    WORD $0x047f50f1 // addpl    x17, sp, #7
    WORD $0xb9406231 // ldr    w17, [x17, #96]
    CMP $0, R17
    BNE LBB0_632
    CMP $0, R13
    BEQ LBB0_633
LBB0_632:
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
LBB0_633:
    CMP $0, R16
    BNE LBB0_664
    WORD $0xd10081ce // sub    x14, x14, #32
    WORD $0x91008108 // add    x8, x8, #32
    WORD $0x8b0e0170 // add    x16, x11, x14
    WORD $0xf100fe1f // cmp    x16, #63
    BGT LBB0_630
    CMP $0, R13
    BNE LBB0_728
    WORD $0x8b09014c // add    x12, x10, x9
    WORD $0x8b08018c // add    x12, x12, x8
    WORD $0xaa2803e8 // mvn    x8, x8
    WORD $0x9100058c // add    x12, x12, #1
    WORD $0x8b0b010b // add    x11, x8, x11
    WORD $0xf100057f // cmp    x11, #1
    BGE LBB0_731
    B LBB0_563
LBB0_637:
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
    WORD $0x910083ef // add    x15, sp, #32
    WORD $0x3dc00235 // ldr    q21, [x17, :lo12:.LCPI0_9]
    WORD $0xaa1f03ee // mov    x14, xzr
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e8 // mov    x8, xzr
    WORD $0xaa1f03eb // mov    x11, xzr
    WORD $0xcb1001ad // sub    x13, x13, x16
    WORD $0x8b100152 // add    x18, x10, x16
    WORD $0x910081ea // add    x10, x15, #32
    WORD $0x52800410 // mov    w16, #32
    B LBB0_639
LBB0_638:
    WORD $0x9e670256 // fmov    d22, x18
    WORD $0x937ffdce // asr    x14, x14, #63
    WORD $0x91008052 // add    x18, x2, #32
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602cd // fmov    w13, s22
    WORD $0x8b0801a8 // add    x8, x13, x8
    WORD $0xaa1103ed // mov    x13, x17
LBB0_639:
    WORD $0xf10101b1 // subs    x17, x13, #64
    BLT LBB0_646
LBB0_640:
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0x910183f3 // add    x19, sp, #96
    WORD $0x2400a2c2 // cmpeq    p2.b, p0/z, z22.b, z0.b
    WORD $0x2400a2e3 // cmpeq    p3.b, p0/z, z23.b, z0.b
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0xa4104257 // ld1b    { z23.b }, p0/z, [x18, x16]
    WORD $0xb9406262 // ldr    w2, [x19, #96]
    WORD $0x910183f3 // add    x19, sp, #96
    WORD $0x2401a2c2 // cmpeq    p2.b, p0/z, z22.b, z1.b
    WORD $0x2401a2e3 // cmpeq    p3.b, p0/z, z23.b, z1.b
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9406263 // ldr    w3, [x19, #96]
    WORD $0x910183f3 // add    x19, sp, #96
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9406264 // ldr    w4, [x19, #96]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xb9406265 // ldr    w5, [x19, #96]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0xaa0c0085 // orr    x5, x4, x12
    CMP $0, R5
    BNE LBB0_642
    WORD $0xaa1f03ec // mov    x12, xzr
    WORD $0xaa1f03e4 // mov    x4, xzr
    B LBB0_643
LBB0_642:
    WORD $0x8a2c0085 // bic    x5, x4, x12
    WORD $0xaa050586 // orr    x6, x12, x5, lsl #1
    WORD $0x8a26008c // bic    x12, x4, x6
    WORD $0x9201f18c // and    x12, x12, #0xaaaaaaaaaaaaaaaa
    WORD $0xab05018c // adds    x12, x12, x5
    WORD $0xd37ff98c // lsl    x12, x12, #1
    WORD $0xd200f184 // eor    x4, x12, #0x5555555555555555
    WORD $0x1a9f37ec // cset    w12, hs
    WORD $0x8a060084 // and    x4, x4, x6
LBB0_643:
    WORD $0xaa038042 // orr    x2, x2, x3, lsl #32
    WORD $0x910183f3 // add    x19, sp, #96
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
    WORD $0xb9406252 // ldr    w18, [x18, #96]
    WORD $0x2413a2e2 // cmpeq    p2.b, p0/z, z23.b, z19.b
    WORD $0x6e1642d9 // ext    v25.16b, v22.16b, v22.16b, #8
    WORD $0xe5801e62 // str    p2, [x19, #7, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9406263 // ldr    w3, [x19, #96]
    WORD $0x910183f3 // add    x19, sp, #96
    WORD $0x0eb91ed6 // orr    v22.8b, v22.8b, v25.8b
    WORD $0xe5801a63 // str    p3, [x19, #6, mul vl]
    WORD $0x047f50d3 // addpl    x19, sp, #6
    WORD $0xb9406264 // ldr    w4, [x19, #96]
    WORD $0x047f50f3 // addpl    x19, sp, #7
    WORD $0xaa038252 // orr    x18, x18, x3, lsl #32
    WORD $0xb9406265 // ldr    w5, [x19, #96]
    WORD $0xaa0480a4 // orr    x4, x5, x4, lsl #32
    WORD $0x9e6602c5 // fmov    x5, d22
    WORD $0xca0e00ae // eor    x14, x5, x14
    WORD $0xea2e0083 // bics    x3, x4, x14
    WORD $0x8a2e0252 // bic    x18, x18, x14
    BEQ LBB0_638
LBB0_644:
    WORD $0xd1000464 // sub    x4, x3, #1
    WORD $0x8a120085 // and    x5, x4, x18
    WORD $0x9e6700b6 // fmov    d22, x5
    WORD $0x0e205ad6 // cnt    v22.8b, v22.8b
    WORD $0x2e303ad6 // uaddlv    h22, v22.8b
    WORD $0x1e2602c5 // fmov    w5, s22
    WORD $0x8b0800a5 // add    x5, x5, x8
    WORD $0xeb0b00bf // cmp    x5, x11
    BLS LBB0_662
    WORD $0xea030083 // ands    x3, x4, x3
    WORD $0x9100056b // add    x11, x11, #1
    BNE LBB0_644
    B LBB0_638
LBB0_646:
    WORD $0xf10001bf // cmp    x13, #0
    BLE LBB0_723
    WORD $0x92402e42 // and    x2, x18, #0xfff
    WORD $0xad0147f1 // stp    q17, q17, [sp, #32]
    WORD $0xf13f045f // cmp    x2, #4033
    WORD $0xad0247f1 // stp    q17, q17, [sp, #64]
    BLO LBB0_640
    WORD $0xf10081a3 // subs    x3, x13, #32
    BLO LBB0_650
    WORD $0xa400a256 // ld1b    { z22.b }, p0/z, [x18]
    WORD $0x91008252 // add    x18, x18, #32
    WORD $0xaa0a03e2 // mov    x2, x10
    WORD $0xe400e1f6 // st1b    { z22.b }, p0, [x15]
    B LBB0_651
LBB0_650:
    WORD $0x910083e2 // add    x2, sp, #32
    WORD $0xaa0d03e3 // mov    x3, x13
LBB0_651:
    WORD $0xf1004064 // subs    x4, x3, #16
    BLO LBB0_657
    WORD $0x3cc10656 // ldr    q22, [x18], #16
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0x3c810456 // str    q22, [x2], #16
    WORD $0xf1002084 // subs    x4, x4, #8
    BHS LBB0_658
LBB0_653:
    WORD $0xf1001064 // subs    x4, x3, #4
    BLO LBB0_659
LBB0_654:
    WORD $0xb8404643 // ldr    w3, [x18], #4
    WORD $0xb8004443 // str    w3, [x2], #4
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1000884 // subs    x4, x4, #2
    BHS LBB0_660
LBB0_655:
    CMP $0, R3
    BEQ LBB0_661
LBB0_656:
    WORD $0x39400243 // ldrb    w3, [x18]
    WORD $0x910083f2 // add    x18, sp, #32
    WORD $0x39000043 // strb    w3, [x2]
    B LBB0_640
LBB0_657:
    WORD $0xf1002064 // subs    x4, x3, #8
    BLO LBB0_653
LBB0_658:
    WORD $0xf8408643 // ldr    x3, [x18], #8
    WORD $0xf8008443 // str    x3, [x2], #8
    WORD $0xaa0403e3 // mov    x3, x4
    WORD $0xf1001084 // subs    x4, x4, #4
    BHS LBB0_654
LBB0_659:
    WORD $0xf1000864 // subs    x4, x3, #2
    BLO LBB0_655
LBB0_660:
    WORD $0x78402643 // ldrh    w3, [x18], #2
    WORD $0x78002443 // strh    w3, [x2], #2
    WORD $0xaa0403e3 // mov    x3, x4
    CMP $0, R4
    BNE LBB0_656
LBB0_661:
    WORD $0x910083f2 // add    x18, sp, #32
    B LBB0_640
LBB0_662:
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
    B LBB0_667
LBB0_663:
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x92800028 // mov    x8, #-2
    B LBB0_667
LBB0_664:
    WORD $0xdac0020a // rbit    x10, x16
    WORD $0x8b080128 // add    x8, x9, x8
    WORD $0xdac0114a // clz    x10, x10
    WORD $0x8b080148 // add    x8, x10, x8
    WORD $0x91000908 // add    x8, x8, #2
LBB0_665:
    WORD $0xf9000028 // str    x8, [x1]
LBB0_666:
    WORD $0xaa0903e8 // mov    x8, x9
LBB0_667:
    WORD $0xaa0803e0 // mov    x0, x8
    WORD $0x043f503f // addvl    sp, sp, #1
    WORD $0x910183ff // add    sp, sp, #96
    WORD $0xa9454ff4 // ldp    x20, x19, [sp, #80]
    WORD $0xa94457f6 // ldp    x22, x21, [sp, #64]
    WORD $0xa9435ff8 // ldp    x24, x23, [sp, #48]
    WORD $0xa94267fa // ldp    x26, x25, [sp, #32]
    WORD $0xa9416ffe // ldp    lr, x27, [sp, #16]
    WORD $0xf84607fd // ldr    fp, [sp], #96
    WORD $0xd65f03c0 // ret
LBB0_668:
    WORD $0x928000c8 // mov    x8, #-7
    B LBB0_667
LBB0_669:
    WORD $0x5ac001ab // rbit    w11, w13
    WORD $0xcb0a010a // sub    x10, x8, x10
    WORD $0x8b0c014d // add    x13, x10, x12
    WORD $0x5ac0116b // clz    w11, w11
    WORD $0x8b0d016d // add    x13, x11, x13
    WORD $0xf10005bf // cmp    x13, #1
    WORD $0xf900002d // str    x13, [x1]
    BLT LBB0_666
    WORD $0xd284c00d // mov    x13, #9728
    WORD $0x8b0c016b // add    x11, x11, x12
    WORD $0xd1000508 // sub    x8, x8, #1
    WORD $0x5280002c // mov    w12, #1
    WORD $0xf2c0002d // movk    x13, #1, lsl #32
LBB0_671:
    WORD $0x386b690e // ldrb    w14, [x8, x11]
    WORD $0x9ace218f // lsl    x15, x12, x14
    WORD $0x710081df // cmp    w14, #32
    WORD $0x8a0d01ee // and    x14, x15, x13
    WORD $0xfa4099c4 // ccmp    x14, #0, #4, ls
    BEQ LBB0_666
    WORD $0x8b0b014e // add    x14, x10, x11
    WORD $0xd100056b // sub    x11, x11, #1
    WORD $0x8b0b014f // add    x15, x10, x11
    WORD $0xd10005ce // sub    x14, x14, #1
    WORD $0x910005ef // add    x15, x15, #1
    WORD $0xf900002e // str    x14, [x1]
    WORD $0xf10005ff // cmp    x15, #1
    BGT LBB0_671
    B LBB0_666
LBB0_673:
    WORD $0xb100051f // cmn    x8, #1
    WORD $0x9a8600a4 // csel    x4, x5, x6, eq
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_674:
    WORD $0xd1000488 // sub    x8, x4, #1
    B LBB0_667
LBB0_675:
    WORD $0x92800016 // mov    x22, #-1
    B LBB0_680
LBB0_676:
    WORD $0xb100051f // cmn    x8, #1
    WORD $0x9a8502e4 // csel    x4, x23, x5, eq
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_677:
    WORD $0xd1000508 // sub    x8, x8, #1
    B LBB0_667
LBB0_678:
    WORD $0xaa3303f6 // mvn    x22, x19
    B LBB0_680
LBB0_679:
    WORD $0xaa2703f6 // mvn    x22, x7
LBB0_680:
    WORD $0xcb160088 // sub    x8, x4, x22
    WORD $0xd1000908 // sub    x8, x8, #2
LBB0_681:
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x92800028 // mov    x8, #-2
    B LBB0_667
LBB0_682:
    WORD $0xb10004df // cmn    x6, #1
    BEQ LBB0_689
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xaa0603e4 // mov    x4, x6
    WORD $0xf9000026 // str    x6, [x1]
    B LBB0_667
LBB0_684:
    WORD $0xb10004bf // cmn    x5, #1
    BEQ LBB0_707
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xaa0503e4 // mov    x4, x5
    WORD $0xf9000025 // str    x5, [x1]
    B LBB0_667
LBB0_686:
    WORD $0xaa3503e5 // mvn    x5, x21
LBB0_687:
    WORD $0x8b050108 // add    x8, x8, x5
    B LBB0_681
LBB0_688:
    WORD $0xb100051f // cmn    x8, #1
    WORD $0x9a850097 // csel    x23, x4, x5, eq
    WORD $0xf9000037 // str    x23, [x1]
    B LBB0_667
LBB0_689:
    WORD $0xdac002a8 // rbit    x8, x21
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b130104 // add    x4, x8, x19
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_690:
    WORD $0x38686a49 // ldrb    w9, [x18, x8]
    WORD $0x7101853f // cmp    w9, #97
    BNE LBB0_704
    WORD $0x91000509 // add    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a49 // ldrb    w9, [x18, x9]
    WORD $0x7101b13f // cmp    w9, #108
    BNE LBB0_704
    WORD $0x91000909 // add    x9, x8, #2
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a49 // ldrb    w9, [x18, x9]
    WORD $0x7101cd3f // cmp    w9, #115
    BNE LBB0_704
    WORD $0x91000d09 // add    x9, x8, #3
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a49 // ldrb    w9, [x18, x9]
    WORD $0x7101953f // cmp    w9, #101
    BNE LBB0_704
    WORD $0x91001108 // add    x8, x8, #4
    B LBB0_681
LBB0_695:
    WORD $0xd1000509 // sub    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a49 // ldrb    w9, [x18, x9]
    WORD $0x7101d13f // cmp    w9, #116
    BNE LBB0_704
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x38686a49 // ldrb    w9, [x18, x8]
    WORD $0x7101c93f // cmp    w9, #114
    BNE LBB0_704
    WORD $0x91000509 // add    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a49 // ldrb    w9, [x18, x9]
    WORD $0x7101d53f // cmp    w9, #117
    BNE LBB0_704
    WORD $0x91000909 // add    x9, x8, #2
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a49 // ldrb    w9, [x18, x9]
    WORD $0x7101953f // cmp    w9, #101
    BNE LBB0_704
    B LBB0_703
LBB0_699:
    WORD $0xd1000509 // sub    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a49 // ldrb    w9, [x18, x9]
    WORD $0x7101b93f // cmp    w9, #110
    BNE LBB0_704
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x38686a49 // ldrb    w9, [x18, x8]
    WORD $0x7101d53f // cmp    w9, #117
    BNE LBB0_704
    WORD $0x91000509 // add    x9, x8, #1
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a49 // ldrb    w9, [x18, x9]
    WORD $0x7101b13f // cmp    w9, #108
    BNE LBB0_704
    WORD $0x91000909 // add    x9, x8, #2
    WORD $0xf9000029 // str    x9, [x1]
    WORD $0x38696a49 // ldrb    w9, [x18, x9]
    WORD $0x7101b13f // cmp    w9, #108
    BNE LBB0_704
LBB0_703:
    WORD $0x91000d08 // add    x8, x8, #3
    B LBB0_681
LBB0_704:
    WORD $0x92800028 // mov    x8, #-2
    B LBB0_667
LBB0_705:
    WORD $0xd10006e8 // sub    x8, x23, #1
    B LBB0_667
LBB0_706:
    WORD $0x8b10014c // add    x12, x10, x16
    WORD $0xf100057f // cmp    x11, #1
    BGE LBB0_731
    B LBB0_563
LBB0_707:
    WORD $0xdac00288 // rbit    x8, x20
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b070104 // add    x4, x8, x7
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_708:
    WORD $0xf900002d // str    x13, [x1]
    B LBB0_666
LBB0_709:
    WORD $0xaa0703e5 // mov    x5, x7
    B LBB0_687
LBB0_710:
    WORD $0x92800008 // mov    x8, #-1
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_711:
    WORD $0xb10004bf // cmn    x5, #1
    BEQ LBB0_713
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xaa0503f7 // mov    x23, x5
    WORD $0xf9000025 // str    x5, [x1]
    B LBB0_667
LBB0_713:
    WORD $0xdac00288 // rbit    x8, x20
    WORD $0xdac01108 // clz    x8, x8
    WORD $0x8b070117 // add    x23, x8, x7
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000037 // str    x23, [x1]
    B LBB0_667
LBB0_714:
    WORD $0x8b130244 // add    x4, x18, x19
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_715:
    WORD $0x92800008 // mov    x8, #-1
    WORD $0xaa0503e4 // mov    x4, x5
    WORD $0xf9000025 // str    x5, [x1]
    B LBB0_667
LBB0_716:
    WORD $0xaa0503e4 // mov    x4, x5
    WORD $0xf9000025 // str    x5, [x1]
    B LBB0_667
LBB0_717:
    WORD $0x8b070244 // add    x4, x18, x7
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_718:
    WORD $0x92800008 // mov    x8, #-1
LBB0_719:
    WORD $0xaa1503e4 // mov    x4, x21
    WORD $0xf9000035 // str    x21, [x1]
    B LBB0_667
LBB0_720:
    WORD $0xf9000024 // str    x4, [x1]
    WORD $0x92800028 // mov    x8, #-2
    B LBB0_667
LBB0_721:
    WORD $0x92800008 // mov    x8, #-1
    WORD $0xf9000037 // str    x23, [x1]
    B LBB0_667
LBB0_722:
    WORD $0x8b070257 // add    x23, x18, x7
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000037 // str    x23, [x1]
    B LBB0_667
LBB0_723:
    WORD $0xf9400408 // ldr    x8, [x0, #8]
    WORD $0xf9000028 // str    x8, [x1]
    WORD $0x92800008 // mov    x8, #-1
    B LBB0_667
LBB0_724:
    WORD $0x92800008 // mov    x8, #-1
LBB0_725:
    WORD $0xaa0403f7 // mov    x23, x4
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_726:
    WORD $0xcb120268 // sub    x8, x19, x18
    WORD $0x8b150104 // add    x4, x8, x21
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_727:
    WORD $0x8b150244 // add    x4, x18, x21
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_728:
    WORD $0xd100056c // sub    x12, x11, #1
    WORD $0xeb08019f // cmp    x12, x8
    BEQ LBB0_563
    WORD $0x8b09014c // add    x12, x10, x9
    WORD $0x8b08018c // add    x12, x12, x8
    WORD $0xcb080168 // sub    x8, x11, x8
    WORD $0x9100098c // add    x12, x12, #2
    WORD $0xd100090b // sub    x11, x8, #2
    WORD $0xf100057f // cmp    x11, #1
    BGE LBB0_731
    B LBB0_563
LBB0_730:
    WORD $0x92800028 // mov    x8, #-2
    WORD $0x5280004d // mov    w13, #2
    WORD $0xab08016b // adds    x11, x11, x8
    WORD $0x8b0d018c // add    x12, x12, x13
    WORD $0x92800008 // mov    x8, #-1
    BLE LBB0_667
LBB0_731:
    WORD $0x39400188 // ldrb    w8, [x12]
    WORD $0x7101711f // cmp    w8, #92
    BEQ LBB0_730
    WORD $0x7100891f // cmp    w8, #34
    BEQ LBB0_734
    WORD $0x92800008 // mov    x8, #-1
    WORD $0x5280002d // mov    w13, #1
    WORD $0xab08016b // adds    x11, x11, x8
    WORD $0x8b0d018c // add    x12, x12, x13
    WORD $0x92800008 // mov    x8, #-1
    BGT LBB0_731
    B LBB0_667
LBB0_734:
    WORD $0xcb0a0188 // sub    x8, x12, x10
    WORD $0x91000508 // add    x8, x8, #1
    B LBB0_665
LBB0_735:
    WORD $0x8b140244 // add    x4, x18, x20
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_736:
    WORD $0x92800008 // mov    x8, #-1
    WORD $0xaa1703e4 // mov    x4, x23
    WORD $0xf9000037 // str    x23, [x1]
    B LBB0_667
LBB0_737:
    WORD $0xcb1200e8 // sub    x8, x7, x18
    WORD $0x8b140104 // add    x4, x8, x20
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_738:
    WORD $0xcb1200e8 // sub    x8, x7, x18
    WORD $0x8b130104 // add    x4, x8, x19
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000024 // str    x4, [x1]
    B LBB0_667
LBB0_739:
    WORD $0x8b140257 // add    x23, x18, x20
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000037 // str    x23, [x1]
    B LBB0_667
LBB0_740:
    WORD $0xcb1200e8 // sub    x8, x7, x18
    WORD $0x8b140117 // add    x23, x8, x20
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000037 // str    x23, [x1]
    B LBB0_667
LBB0_741:
    WORD $0xcb1200e8 // sub    x8, x7, x18
    WORD $0x8b130117 // add    x23, x8, x19
    WORD $0x92800028 // mov    x8, #-2
    WORD $0xf9000037 // str    x23, [x1]
    B LBB0_667
MASK_USE_NUMBER:
    WORD $0x00000002 // .long    2

TEXT ·__skip_one(SB), NOSPLIT, $0-40
	NO_LOCAL_POINTERS

_entry:
	MOVD 16(g), R16
	SUB $256, RSP, R17
	CMP  R16, R17
	BLS  _stack_grow

_skip_one:
	MOVD s+0(FP), R0
	MOVD p+8(FP), R1
	MOVD m+16(FP), R2
	MOVD flags+24(FP), R3
	MOVD ·_subr__skip_one(SB), R11
	WORD $0x1000005e // adr x30, .+8
	JMP (R11)
	MOVD R0, ret+32(FP)
	RET

_stack_grow:
	MOVD R30, R3
	CALL runtime·morestack_noctxt<>(SB)
	JMP  _entry
