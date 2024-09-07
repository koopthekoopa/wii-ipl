.include "macros.inc"
.file "iplSDChannelSelect.cpp"

# 0x813DAB08..0x813E2F2C | size: 0x8424
.text
.balign 4

# .text:0x0 | 0x813DAB08 | size: 0x374
# ipl::scene::SDChannelSelect::SDChannelSelect(EGG::Heap*, int)
.fn __ct__Q33ipl5scene15SDChannelSelectFPQ23EGG4Heapi, global
/* 813DAB08 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813DAB0C | 7C 08 02 A6 */	mflr r0
/* 813DAB10 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813DAB14 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 813DAB18 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 813DAB1C | 39 61 00 50 */	addi r11, r1, 0x50
/* 813DAB20 | 48 21 E9 A5 */	bl _savegpr_28
/* 813DAB24 | 7C 7E 1B 78 */	mr r30, r3
/* 813DAB28 | 7C 9F 23 78 */	mr r31, r4
/* 813DAB2C | 48 03 06 DD */	bl fn_8140B208
/* 813DAB30 | 3C 80 81 65 */	lis r4, lbl_81654A3C@ha
/* 813DAB34 | 38 60 00 10 */	li r3, 0x10
/* 813DAB38 | 38 84 4A 3C */	addi r4, r4, lbl_81654A3C@l
/* 813DAB3C | 38 04 00 1C */	addi r0, r4, 0x1c
/* 813DAB40 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 813DAB44 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813DAB48 | 48 21 D5 55 */	bl __nw__FUl
/* 813DAB4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DAB50 | 41 82 00 1C */	beq .L_813DAB6C
/* 813DAB54 | 38 00 00 00 */	li r0, 0x0
/* 813DAB58 | 3C 80 81 65 */	lis r4, lbl_81654A08@ha
/* 813DAB5C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813DAB60 | 38 84 4A 08 */	addi r4, r4, lbl_81654A08@l
/* 813DAB64 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813DAB68 | 93 C3 00 0C */	stw r30, 0xc(r3)
.L_813DAB6C:
/* 813DAB6C | 3B 80 00 00 */	li r28, 0x0
/* 813DAB70 | 90 7E 00 94 */	stw r3, 0x94(r30)
/* 813DAB74 | 93 9E 00 98 */	stw r28, 0x98(r30)
/* 813DAB78 | 48 18 F4 3D */	bl SCGetAspectRatio
/* 813DAB7C | 3F A0 81 61 */	lis r29, lbl_816105C8@ha
/* 813DAB80 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813DAB84 | 3B BD 05 C8 */	addi r29, r29, lbl_816105C8@l
/* 813DAB88 | 7C 1D 04 2E */	lfsx f0, r29, r0
/* 813DAB8C | D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 813DAB90 | 48 18 F4 25 */	bl SCGetAspectRatio
/* 813DAB94 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813DAB98 | 38 E0 00 04 */	li r7, 0x4
/* 813DAB9C | 7C 7D 02 14 */	add r3, r29, r0
/* 813DABA0 | 38 C0 00 2A */	li r6, 0x2a
/* 813DABA4 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813DABA8 | 38 A0 00 01 */	li r5, 0x1
/* 813DABAC | 38 80 00 0E */	li r4, 0xe
/* 813DABB0 | 38 00 00 14 */	li r0, 0x14
/* 813DABB4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DABB8 | D0 1E 00 AC */	stfs f0, 0xac(r30)
/* 813DABBC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DABC0 | 90 FE 01 A0 */	stw r7, 0x1a0(r30)
/* 813DABC4 | 93 9E 01 A4 */	stw r28, 0x1a4(r30)
/* 813DABC8 | 93 9E 01 A8 */	stw r28, 0x1a8(r30)
/* 813DABCC | 93 9E 01 AC */	stw r28, 0x1ac(r30)
/* 813DABD0 | 90 DE 06 F0 */	stw r6, 0x6f0(r30)
/* 813DABD4 | 93 9E 06 F4 */	stw r28, 0x6f4(r30)
/* 813DABD8 | 93 9E 06 F8 */	stw r28, 0x6f8(r30)
/* 813DABDC | 93 9E 06 FC */	stw r28, 0x6fc(r30)
/* 813DABE0 | 93 9E 07 00 */	stw r28, 0x700(r30)
/* 813DABE4 | 93 9E 07 04 */	stw r28, 0x704(r30)
/* 813DABE8 | 93 9E 07 08 */	stw r28, 0x708(r30)
/* 813DABEC | 90 BE 07 0C */	stw r5, 0x70c(r30)
/* 813DABF0 | 93 9E 07 10 */	stw r28, 0x710(r30)
/* 813DABF4 | 93 9E 07 14 */	stw r28, 0x714(r30)
/* 813DABF8 | 93 9E 07 18 */	stw r28, 0x718(r30)
/* 813DABFC | 93 9E 07 1C */	stw r28, 0x71c(r30)
/* 813DAC00 | 93 9E 07 20 */	stw r28, 0x720(r30)
/* 813DAC04 | 93 9E 07 24 */	stw r28, 0x724(r30)
/* 813DAC08 | 93 9E 07 30 */	stw r28, 0x730(r30)
/* 813DAC0C | 93 9E 07 3C */	stw r28, 0x73c(r30)
/* 813DAC10 | 90 9E 07 44 */	stw r4, 0x744(r30)
/* 813DAC14 | 93 9E 07 54 */	stw r28, 0x754(r30)
/* 813DAC18 | 9B 9E 07 58 */	stb r28, 0x758(r30)
/* 813DAC1C | 9B 9E 07 59 */	stb r28, 0x759(r30)
/* 813DAC20 | 9B 9E 07 5A */	stb r28, 0x75a(r30)
/* 813DAC24 | 93 9E 07 5C */	stw r28, 0x75c(r30)
/* 813DAC28 | 93 9E 07 60 */	stw r28, 0x760(r30)
/* 813DAC2C | 93 9E 07 64 */	stw r28, 0x764(r30)
/* 813DAC30 | 93 9E 07 68 */	stw r28, 0x768(r30)
/* 813DAC34 | 93 9E 07 6C */	stw r28, 0x76c(r30)
/* 813DAC38 | 9B 9E 07 7C */	stb r28, 0x77c(r30)
/* 813DAC3C | 9B 9E 07 7D */	stb r28, 0x77d(r30)
/* 813DAC40 | 9B 9E 07 7E */	stb r28, 0x77e(r30)
/* 813DAC44 | 9B 9E 07 7F */	stb r28, 0x77f(r30)
/* 813DAC48 | 90 1E 00 A0 */	stw r0, 0xa0(r30)
/* 813DAC4C | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 813DAC50 | 80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 813DAC54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DAC58 | 90 1E 00 9C */	stw r0, 0x9c(r30)
/* 813DAC5C | 93 9E 00 A4 */	stw r28, 0xa4(r30)
/* 813DAC60 | 40 82 00 0C */	bne .L_813DAC6C
/* 813DAC64 | 9B 9E 00 C8 */	stb r28, 0xc8(r30)
/* 813DAC68 | 48 00 00 08 */	b .L_813DAC70
.L_813DAC6C:
/* 813DAC6C | 98 BE 00 C8 */	stb r5, 0xc8(r30)
.L_813DAC70:
/* 813DAC70 | 80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 813DAC74 | 80 9E 00 9C */	lwz r4, 0x9c(r30)
/* 813DAC78 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DAC7C | 7C 04 00 00 */	cmpw r4, r0
/* 813DAC80 | 40 82 00 10 */	bne .L_813DAC90
/* 813DAC84 | 38 00 00 00 */	li r0, 0x0
/* 813DAC88 | 98 1E 00 C9 */	stb r0, 0xc9(r30)
/* 813DAC8C | 48 00 00 0C */	b .L_813DAC98
.L_813DAC90:
/* 813DAC90 | 38 00 00 01 */	li r0, 0x1
/* 813DAC94 | 98 1E 00 C9 */	stb r0, 0xc9(r30)
.L_813DAC98:
/* 813DAC98 | C0 22 86 C8 */	lfs f1, lbl_81694AC8@sda21(r0)
/* 813DAC9C | 38 00 00 03 */	li r0, 0x3
/* 813DACA0 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 813DACA4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813DACA8 | FC 40 08 90 */	fmr f2, f1
/* 813DACAC | FC 60 08 90 */	fmr f3, f1
/* 813DACB0 | 4B F8 7D AD */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813DACB4 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 813DACB8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813DACBC | 4B F6 99 C9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813DACC0 | C0 02 86 CC */	lfs f0, lbl_81694ACC@sda21(r0)
/* 813DACC4 | 38 7E 00 BC */	addi r3, r30, 0xbc
/* 813DACC8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DACCC | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813DACD0 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813DACD4 | 4B F5 BB 1D */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 813DACD8 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813DACDC | 4B F5 B7 4D */	bl __ct__Q34nw4r2ut4RectFv
/* 813DACE0 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813DACE4 | 4B F5 AC 69 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813DACE8 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813DACEC | 4B F5 B7 3D */	bl __ct__Q34nw4r2ut4RectFv
/* 813DACF0 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813DACF4 | 4B F5 AC 7D */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813DACF8 | C0 61 00 34 */	lfs f3, 0x34(r1)
/* 813DACFC | C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 813DAD00 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 813DAD04 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813DAD08 | EC 43 10 28 */	fsubs f2, f3, f2
/* 813DAD0C | EC 01 00 28 */	fsubs f0, f1, f0
/* 813DAD10 | EF E0 10 24 */	fdivs f31, f0, f2
/* 813DAD14 | 48 18 F2 A1 */	bl SCGetAspectRatio
/* 813DAD18 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813DAD1C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813DAD20 | 40 82 00 08 */	bne .L_813DAD28
/* 813DAD24 | 48 00 00 08 */	b .L_813DAD2C
.L_813DAD28:
/* 813DAD28 | C3 E2 86 CC */	lfs f31, lbl_81694ACC@sda21(r0)
.L_813DAD2C:
/* 813DAD2C | D3 FE 00 C4 */	stfs f31, 0xc4(r30)
/* 813DAD30 | 38 7E 00 DC */	addi r3, r30, 0xdc
/* 813DAD34 | 38 80 00 00 */	li r4, 0x0
/* 813DAD38 | 38 A0 00 30 */	li r5, 0x30
/* 813DAD3C | 4B F5 55 F9 */	bl memset
/* 813DAD40 | 3C 60 00 01 */	lis r3, 0x1
/* 813DAD44 | 7F E4 FB 78 */	mr r4, r31
/* 813DAD48 | 38 63 36 10 */	addi r3, r3, 0x3610
/* 813DAD4C | 38 A0 00 06 */	li r5, 0x6
/* 813DAD50 | 48 21 C9 25 */	bl fn_815F7674
/* 813DAD54 | 90 7E 00 D8 */	stw r3, 0xd8(r30)
/* 813DAD58 | 3F A0 00 02 */	lis r29, 0x2
/* 813DAD5C | 38 7D 12 B8 */	addi r3, r29, 0x12b8
/* 813DAD60 | 38 80 00 2D */	li r4, 0x2d
/* 813DAD64 | 38 A0 00 20 */	li r5, 0x20
/* 813DAD68 | 48 21 DF 01 */	bl fn_815F8C68
/* 813DAD6C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813DAD70 | 38 9D 12 B8 */	addi r4, r29, 0x12b8
/* 813DAD74 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813DAD78 | 38 C0 00 20 */	li r6, 0x20
/* 813DAD7C | 80 BF 00 28 */	lwz r5, 0x28(r31)
/* 813DAD80 | 38 E0 00 02 */	li r7, 0x2
/* 813DAD84 | 48 21 DD 41 */	bl fn_815F8AC4
/* 813DAD88 | 90 7E 00 CC */	stw r3, 0xcc(r30)
/* 813DAD8C | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813DAD90 | 38 80 00 00 */	li r4, 0x0
/* 813DAD94 | 48 13 72 C9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813DAD98 | 80 9E 00 9C */	lwz r4, 0x9c(r30)
/* 813DAD9C | 7F C3 F3 78 */	mr r3, r30
/* 813DADA0 | 38 A0 00 01 */	li r5, 0x1
/* 813DADA4 | 48 00 4A 91 */	bl iplSDChannelSelect_813DF834
/* 813DADA8 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813DADAC | 38 80 00 01 */	li r4, 0x1
/* 813DADB0 | 4B F8 70 71 */	bl setEnable__Q23ipl11TVRCManagerFi
/* 813DADB4 | 80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 813DADB8 | 38 A0 00 20 */	li r5, 0x20
/* 813DADBC | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813DADC0 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813DADC4 | 54 03 10 3A */	slwi r3, r0, 2
/* 813DADC8 | 48 21 D3 0D */	bl __nwa__FUlPQ23EGG4Heapi
/* 813DADCC | 80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 813DADD0 | 38 80 00 00 */	li r4, 0x0
/* 813DADD4 | 90 7E 07 3C */	stw r3, 0x73c(r30)
/* 813DADD8 | 1C A0 00 30 */	mulli r5, r0, 0x30
/* 813DADDC | 4B F5 55 59 */	bl memset
/* 813DADE0 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813DADE4 | 38 60 4B 00 */	li r3, 0x4b00
/* 813DADE8 | 38 A0 00 20 */	li r5, 0x20
/* 813DADEC | 48 21 D2 E9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813DADF0 | 90 7E 07 20 */	stw r3, 0x720(r30)
/* 813DADF4 | 38 80 00 00 */	li r4, 0x0
/* 813DADF8 | 38 A0 4B 00 */	li r5, 0x4b00
/* 813DADFC | 4B F5 55 39 */	bl memset
/* 813DAE00 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813DAE04 | 38 60 25 80 */	li r3, 0x2580
/* 813DAE08 | 38 A0 00 20 */	li r5, 0x20
/* 813DAE0C | 48 21 D2 C9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813DAE10 | 90 7E 07 1C */	stw r3, 0x71c(r30)
/* 813DAE14 | 38 80 00 00 */	li r4, 0x0
/* 813DAE18 | 38 A0 25 80 */	li r5, 0x2580
/* 813DAE1C | 4B F5 55 19 */	bl memset
/* 813DAE20 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813DAE24 | 38 60 06 00 */	li r3, 0x600
/* 813DAE28 | 38 A0 00 20 */	li r5, 0x20
/* 813DAE2C | 48 21 D2 A9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813DAE30 | 90 7E 07 24 */	stw r3, 0x724(r30)
/* 813DAE34 | 38 80 00 00 */	li r4, 0x0
/* 813DAE38 | 38 A0 06 00 */	li r5, 0x600
/* 813DAE3C | 4B F5 54 F9 */	bl memset
/* 813DAE40 | 38 80 00 00 */	li r4, 0x0
/* 813DAE44 | 38 00 FF FF */	li r0, -0x1
/* 813DAE48 | 90 9E 07 28 */	stw r4, 0x728(r30)
/* 813DAE4C | 7F C3 F3 78 */	mr r3, r30
/* 813DAE50 | 90 9E 07 2C */	stw r4, 0x72c(r30)
/* 813DAE54 | 90 1E 00 E8 */	stw r0, 0xe8(r30)
/* 813DAE58 | 90 1E 00 EC */	stw r0, 0xec(r30)
/* 813DAE5C | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 813DAE60 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 813DAE64 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813DAE68 | 48 21 E6 A9 */	bl _restgpr_28
/* 813DAE6C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813DAE70 | 7C 08 03 A6 */	mtlr r0
/* 813DAE74 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813DAE78 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene15SDChannelSelectFPQ23EGG4Heapi

# .text:0x374 | 0x813DAE7C | size: 0x5C
# ipl::scene::SDChannelSelect::~SDChannelSelect()
.fn __dt__Q33ipl5scene15SDChannelSelectFv, global
/* 813DAE7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DAE80 | 7C 08 02 A6 */	mflr r0
/* 813DAE84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DAE88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DAE8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DAE90 | 7C 9F 23 78 */	mr r31, r4
/* 813DAE94 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DAE98 | 7C 7E 1B 78 */	mr r30, r3
/* 813DAE9C | 41 82 00 20 */	beq .L_813DAEBC
/* 813DAEA0 | 41 82 00 0C */	beq .L_813DAEAC
/* 813DAEA4 | 38 80 00 00 */	li r4, 0x0
/* 813DAEA8 | 48 02 ED BD */	bl fn_81409C64
.L_813DAEAC:
/* 813DAEAC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813DAEB0 | 40 81 00 0C */	ble .L_813DAEBC
/* 813DAEB4 | 7F C3 F3 78 */	mr r3, r30
/* 813DAEB8 | 48 21 D2 2D */	bl __dl__FPv
.L_813DAEBC:
/* 813DAEBC | 7F C3 F3 78 */	mr r3, r30
/* 813DAEC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DAEC4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DAEC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DAECC | 7C 08 03 A6 */	mtlr r0
/* 813DAED0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DAED4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene15SDChannelSelectFv

# .text:0x3D0 | 0x813DAED8 | size: 0xA8
# ipl::scene::SDChannelSelect::prepare()
.fn prepare__Q33ipl5scene15SDChannelSelectFv, global
/* 813DAED8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DAEDC | 7C 08 02 A6 */	mflr r0
/* 813DAEE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DAEE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DAEE8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813DAEEC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813DAEF0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DAEF4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DAEF8 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813DAEFC | 4B F8 5B DD */	bl abort__Q33ipl3bs27ManagerFv
/* 813DAF00 | 3C A0 81 65 */	lis r5, lbl_81654488@ha
/* 813DAF04 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813DAF08 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813DAF0C | 38 A5 44 88 */	addi r5, r5, lbl_81654488@l
/* 813DAF10 | 38 C0 00 00 */	li r6, 0x0
/* 813DAF14 | 4B F6 29 A1 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813DAF18 | 90 7E 00 64 */	stw r3, 0x64(r30)
/* 813DAF1C | 3C A0 81 65 */	lis r5, lbl_81654496@ha
/* 813DAF20 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813DAF24 | 38 A5 44 96 */	addi r5, r5, lbl_81654496@l
/* 813DAF28 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813DAF2C | 38 C0 00 00 */	li r6, 0x0
/* 813DAF30 | 38 E0 00 00 */	li r7, 0x0
/* 813DAF34 | 39 00 00 00 */	li r8, 0x0
/* 813DAF38 | 4B F6 25 B1 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813DAF3C | 90 7E 07 78 */	stw r3, 0x778(r30)
/* 813DAF40 | 3B E0 00 00 */	li r31, 0x0
/* 813DAF44 | 48 00 00 0C */	b .L_813DAF50
.L_813DAF48:
/* 813DAF48 | 7F E3 FB 78 */	mr r3, r31
/* 813DAF4C | 48 00 81 B9 */	bl iplSDChannelObj_813E3104
.L_813DAF50:
/* 813DAF50 | 7F E4 FB 78 */	mr r4, r31
/* 813DAF54 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813DAF58 | 48 13 73 85 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DAF5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DAF60 | 7C 7F 1B 78 */	mr r31, r3
/* 813DAF64 | 40 82 FF E4 */	bne .L_813DAF48
/* 813DAF68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DAF6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DAF70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DAF74 | 7C 08 03 A6 */	mtlr r0
/* 813DAF78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DAF7C | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene15SDChannelSelectFv

# .text:0x478 | 0x813DAF80 | size: 0x248
# ipl::scene::SDChannelSelect::create()
.fn create__Q33ipl5scene15SDChannelSelectFv, global
/* 813DAF80 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DAF84 | 7C 08 02 A6 */	mflr r0
/* 813DAF88 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DAF8C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DAF90 | 48 21 E5 35 */	bl _savegpr_28
/* 813DAF94 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813DAF98 | 7C 7F 1B 78 */	mr r31, r3
/* 813DAF9C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813DAFA0 | 38 60 00 08 */	li r3, 0x8
/* 813DAFA4 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813DAFA8 | 38 A0 00 04 */	li r5, 0x4
/* 813DAFAC | 48 21 D1 05 */	bl __nw__FUlPQ23EGG4Heapi
/* 813DAFB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DAFB4 | 41 82 00 08 */	beq .L_813DAFBC
/* 813DAFB8 | 4B F6 D4 35 */	bl __ct__Q23ipl12NandSDWorkerFv
.L_813DAFBC:
/* 813DAFBC | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813DAFC0 | 90 7F 07 18 */	stw r3, 0x718(r31)
/* 813DAFC4 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813DAFC8 | 3C 80 00 04 */	lis r4, 0x4
/* 813DAFCC | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 813DAFD0 | 38 84 EA 60 */	subi r4, r4, 0x15a0
/* 813DAFD4 | 38 A0 00 40 */	li r5, 0x40
/* 813DAFD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DAFDC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813DAFE0 | 7D 89 03 A6 */	mtctr r12
/* 813DAFE4 | 4E 80 04 21 */	bctrl
/* 813DAFE8 | 90 7F 07 10 */	stw r3, 0x710(r31)
/* 813DAFEC | 3C 60 00 02 */	lis r3, 0x2
/* 813DAFF0 | 38 63 96 20 */	subi r3, r3, 0x69e0
/* 813DAFF4 | 38 80 00 60 */	li r4, 0x60
/* 813DAFF8 | 38 A0 00 20 */	li r5, 0x20
/* 813DAFFC | 48 18 05 F5 */	bl fn_8155B5F0
/* 813DB000 | 3C 83 00 04 */	addis r4, r3, 0x4
/* 813DB004 | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 813DB008 | 38 A0 00 40 */	li r5, 0x40
/* 813DB00C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DB010 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813DB014 | 7D 89 03 A6 */	mtctr r12
/* 813DB018 | 4E 80 04 21 */	bctrl
/* 813DB01C | 7C 66 1B 78 */	mr r6, r3
/* 813DB020 | 90 7F 07 14 */	stw r3, 0x714(r31)
/* 813DB024 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB028 | 38 A0 00 00 */	li r5, 0x0
/* 813DB02C | 80 9F 07 10 */	lwz r4, 0x710(r31)
/* 813DB030 | 38 E0 00 12 */	li r7, 0x12
/* 813DB034 | 4B F6 D4 05 */	bl create__Q23ipl12NandSDWorkerFPvPvPvi
/* 813DB038 | 80 7C 00 94 */	lwz r3, 0x94(r28)
/* 813DB03C | 80 03 03 3C */	lwz r0, 0x33c(r3)
/* 813DB040 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DB044 | 40 82 00 14 */	bne .L_813DB058
/* 813DB048 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB04C | 4B F6 DC ED */	bl mount_sd_async__Q23ipl12NandSDWorkerFv
/* 813DB050 | 38 00 00 01 */	li r0, 0x1
/* 813DB054 | 90 1F 07 08 */	stw r0, 0x708(r31)
.L_813DB058:
/* 813DB058 | 3C 60 00 02 */	lis r3, 0x2
/* 813DB05C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813DB060 | 38 63 11 00 */	addi r3, r3, 0x1100
/* 813DB064 | 38 A0 00 06 */	li r5, 0x6
/* 813DB068 | 48 21 C6 0D */	bl fn_815F7674
/* 813DB06C | 90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 813DB070 | 3C 60 00 03 */	lis r3, 0x3
/* 813DB074 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813DB078 | 38 63 C1 00 */	subi r3, r3, 0x3f00
/* 813DB07C | 38 A0 00 06 */	li r5, 0x6
/* 813DB080 | 48 21 C5 F5 */	bl fn_815F7674
/* 813DB084 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813DB088 | 90 7F 00 D4 */	stw r3, 0xd4(r31)
/* 813DB08C | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813DB090 | 3C 80 00 20 */	lis r4, 0x20
/* 813DB094 | 80 7C 00 30 */	lwz r3, 0x30(r28)
/* 813DB098 | 38 A0 00 00 */	li r5, 0x0
/* 813DB09C | 48 21 C5 41 */	bl fn_815F75DC
/* 813DB0A0 | 90 7F 01 14 */	stw r3, 0x114(r31)
/* 813DB0A4 | 38 60 03 60 */	li r3, 0x360
/* 813DB0A8 | 38 A0 00 20 */	li r5, 0x20
/* 813DB0AC | 80 9C 00 28 */	lwz r4, 0x28(r28)
/* 813DB0B0 | 48 21 D0 01 */	bl __nw__FUlPQ23EGG4Heapi
/* 813DB0B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DB0B8 | 41 82 00 0C */	beq .L_813DB0C4
/* 813DB0BC | 80 9F 01 14 */	lwz r4, 0x114(r31)
/* 813DB0C0 | 4B F7 E7 FD */	bl __ct__Q33ipl7channel9RsoThreadFPQ23EGG4Heap
.L_813DB0C4:
/* 813DB0C4 | 90 7F 01 18 */	stw r3, 0x118(r31)
/* 813DB0C8 | 7F E3 FB 78 */	mr r3, r31
/* 813DB0CC | 48 00 39 31 */	bl iplSDChannelSelect_813DE9FC
/* 813DB0D0 | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 813DB0D4 | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 813DB0D8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DB0DC | 7C 04 00 00 */	cmpw r4, r0
/* 813DB0E0 | 40 80 00 14 */	bge .L_813DB0F4
/* 813DB0E4 | 7F E3 FB 78 */	mr r3, r31
/* 813DB0E8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813DB0EC | 38 A0 00 00 */	li r5, 0x0
/* 813DB0F0 | 48 00 47 45 */	bl iplSDChannelSelect_813DF834
.L_813DB0F4:
/* 813DB0F4 | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 813DB0F8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813DB0FC | 40 81 00 14 */	ble .L_813DB110
/* 813DB100 | 7F E3 FB 78 */	mr r3, r31
/* 813DB104 | 38 84 FF FF */	subi r4, r4, 0x1
/* 813DB108 | 38 A0 00 00 */	li r5, 0x0
/* 813DB10C | 48 00 47 29 */	bl iplSDChannelSelect_813DF834
.L_813DB110:
/* 813DB110 | 7F E3 FB 78 */	mr r3, r31
/* 813DB114 | 48 00 3D 29 */	bl iplSDChannelSelect_813DEE3C
/* 813DB118 | 7F E3 FB 78 */	mr r3, r31
/* 813DB11C | 48 00 60 A9 */	bl iplSDChannelSelect_813E11C4
/* 813DB120 | 48 15 AB 79 */	bl fn_81535C98
/* 813DB124 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813DB128 | 7C 7C 1B 78 */	mr r28, r3
/* 813DB12C | 3F C0 81 65 */	lis r30, lbl_816544A7@ha
/* 813DB130 | 3B A4 90 08 */	addi r29, r4, smArg__Q23ipl6System@l
/* 813DB134 | 48 00 00 1C */	b .L_813DB150
.L_813DB138:
/* 813DB138 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813DB13C | 4B F8 57 5D */	bl update__Q33ipl3bs27ManagerFv
/* 813DB140 | 38 7E 44 A7 */	addi r3, r30, lbl_816544A7@l
/* 813DB144 | 4C C6 31 82 */	crclr cr1eq
/* 813DB148 | 48 15 35 59 */	bl OSReport
/* 813DB14C | 48 16 1E 9D */	bl VIWaitForRetrace
.L_813DB150:
/* 813DB150 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813DB154 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813DB158 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813DB15C | 40 82 FF DC */	bne .L_813DB138
/* 813DB160 | 48 15 AB 39 */	bl fn_81535C98
/* 813DB164 | 3C 80 80 00 */	lis r4, 0x8000
/* 813DB168 | 7C BC 18 50 */	subf r5, r28, r3
/* 813DB16C | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813DB170 | 3C 60 81 65 */	lis r3, lbl_816544C0@ha
/* 813DB174 | 38 00 03 E8 */	li r0, 0x3e8
/* 813DB178 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813DB17C | 38 63 44 C0 */	addi r3, r3, lbl_816544C0@l
/* 813DB180 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813DB184 | 7C 85 03 96 */	divwu r4, r5, r0
/* 813DB188 | 4C C6 31 82 */	crclr cr1eq
/* 813DB18C | 48 15 35 15 */	bl OSReport
/* 813DB190 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813DB194 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DB198 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813DB19C | 7D 89 03 A6 */	mtctr r12
/* 813DB1A0 | 4E 80 04 21 */	bctrl
/* 813DB1A4 | 38 00 00 02 */	li r0, 0x2
/* 813DB1A8 | 90 1F 00 98 */	stw r0, 0x98(r31)
/* 813DB1AC | 4B F8 D4 A5 */	bl UpdateFlagsFile__Q33ipl7utility7CSFlagsFv
/* 813DB1B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DB1B4 | 48 21 E3 5D */	bl _restgpr_28
/* 813DB1B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DB1BC | 7C 08 03 A6 */	mtlr r0
/* 813DB1C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DB1C4 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene15SDChannelSelectFv

# .text:0x6C0 | 0x813DB1C8 | size: 0x44
.fn iplSDChannelSelect_813DB1C8, global
/* 813DB1C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB1CC | 7C 08 02 A6 */	mflr r0
/* 813DB1D0 | 38 80 00 01 */	li r4, 0x1
/* 813DB1D4 | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB1D8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB1DC | 38 00 00 00 */	li r0, 0x0
/* 813DB1E0 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813DB1E4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB1E8 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813DB1EC | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DB1F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DB1F4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DB1F8 | 48 00 7C 2D */	bl iplSDChannelSelect_813E2E24
/* 813DB1FC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB200 | 7C 08 03 A6 */	mtlr r0
/* 813DB204 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB208 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB1C8

# .text:0x704 | 0x813DB20C | size: 0x48
.fn iplSDChannelSelect_813DB20C, global
/* 813DB20C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB210 | 7C 08 02 A6 */	mflr r0
/* 813DB214 | 38 80 00 02 */	li r4, 0x2
/* 813DB218 | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB21C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB220 | 38 00 00 00 */	li r0, 0x0
/* 813DB224 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813DB228 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB22C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813DB230 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DB234 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DB238 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DB23C | 48 00 7B E9 */	bl iplSDChannelSelect_813E2E24
/* 813DB240 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB244 | 38 60 00 01 */	li r3, 0x1
/* 813DB248 | 7C 08 03 A6 */	mtlr r0
/* 813DB24C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB250 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB20C

# .text:0x74C | 0x813DB254 | size: 0xB4
.fn iplSDChannelSelect_813DB254, global
/* 813DB254 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB258 | 7C 08 02 A6 */	mflr r0
/* 813DB25C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB260 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813DB264 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 813DB268 | 7C 7E 1B 78 */	mr r30, r3
/* 813DB26C | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB270 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB274 | 41 82 00 0C */	beq .L_813DB280
/* 813DB278 | 38 60 00 00 */	li r3, 0x0
/* 813DB27C | 48 00 00 74 */	b .L_813DB2F0
.L_813DB280:
/* 813DB280 | 38 00 00 04 */	li r0, 0x4
/* 813DB284 | 3B E0 00 00 */	li r31, 0x0
/* 813DB288 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813DB28C | 90 A1 00 18 */	stw r5, 0x18(r1)
/* 813DB290 | 90 C1 00 1C */	stw r6, 0x1c(r1)
/* 813DB294 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813DB298 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 813DB29C | 80 83 06 F0 */	lwz r4, 0x6f0(r3)
/* 813DB2A0 | 80 03 06 F4 */	lwz r0, 0x6f4(r3)
/* 813DB2A4 | 7C 04 00 00 */	cmpw r4, r0
/* 813DB2A8 | 41 82 00 44 */	beq .L_813DB2EC
/* 813DB2AC | 80 03 06 FC */	lwz r0, 0x6fc(r3)
/* 813DB2B0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB2B4 | 54 00 28 34 */	slwi r0, r0, 5
/* 813DB2B8 | 7C 63 02 14 */	add r3, r3, r0
/* 813DB2BC | 38 63 01 B0 */	addi r3, r3, 0x1b0
/* 813DB2C0 | 48 00 7C 31 */	bl iplSDChannelSelect_813E2EF0
/* 813DB2C4 | 80 7E 06 FC */	lwz r3, 0x6fc(r30)
/* 813DB2C8 | 80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 813DB2CC | 38 63 00 01 */	addi r3, r3, 0x1
/* 813DB2D0 | 7C 03 00 00 */	cmpw r3, r0
/* 813DB2D4 | 90 7E 06 FC */	stw r3, 0x6fc(r30)
/* 813DB2D8 | 41 80 00 08 */	blt .L_813DB2E0
/* 813DB2DC | 93 FE 06 FC */	stw r31, 0x6fc(r30)
.L_813DB2E0:
/* 813DB2E0 | 80 7E 06 F4 */	lwz r3, 0x6f4(r30)
/* 813DB2E4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DB2E8 | 90 1E 06 F4 */	stw r0, 0x6f4(r30)
.L_813DB2EC:
/* 813DB2EC | 38 60 00 01 */	li r3, 0x1
.L_813DB2F0:
/* 813DB2F0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB2F4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813DB2F8 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 813DB2FC | 7C 08 03 A6 */	mtlr r0
/* 813DB300 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB304 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB254

# .text:0x800 | 0x813DB308 | size: 0x5C
.fn iplSDChannelSelect_813DB308, global
/* 813DB308 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB30C | 7C 08 02 A6 */	mflr r0
/* 813DB310 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB314 | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB318 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB31C | 41 82 00 0C */	beq .L_813DB328
/* 813DB320 | 38 60 00 00 */	li r3, 0x0
/* 813DB324 | 48 00 00 30 */	b .L_813DB354
.L_813DB328:
/* 813DB328 | 38 00 00 00 */	li r0, 0x0
/* 813DB32C | 38 80 00 08 */	li r4, 0x8
/* 813DB330 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813DB334 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB338 | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB33C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813DB340 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DB344 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DB348 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DB34C | 48 00 7A D9 */	bl iplSDChannelSelect_813E2E24
/* 813DB350 | 38 60 00 01 */	li r3, 0x1
.L_813DB354:
/* 813DB354 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB358 | 7C 08 03 A6 */	mtlr r0
/* 813DB35C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB360 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB308

# .text:0x85C | 0x813DB364 | size: 0x5C
.fn iplSDChannelSelect_813DB364, global
/* 813DB364 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB368 | 7C 08 02 A6 */	mflr r0
/* 813DB36C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB370 | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB374 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB378 | 41 82 00 0C */	beq .L_813DB384
/* 813DB37C | 38 60 00 00 */	li r3, 0x0
/* 813DB380 | 48 00 00 30 */	b .L_813DB3B0
.L_813DB384:
/* 813DB384 | 38 00 00 00 */	li r0, 0x0
/* 813DB388 | 38 80 00 09 */	li r4, 0x9
/* 813DB38C | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813DB390 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB394 | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB398 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813DB39C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DB3A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DB3A4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DB3A8 | 48 00 7A 7D */	bl iplSDChannelSelect_813E2E24
/* 813DB3AC | 38 60 00 01 */	li r3, 0x1
.L_813DB3B0:
/* 813DB3B0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB3B4 | 7C 08 03 A6 */	mtlr r0
/* 813DB3B8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB3BC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB364

# .text:0x8B8 | 0x813DB3C0 | size: 0x5C
.fn iplSDChannelSelect_813DB3C0, global
/* 813DB3C0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB3C4 | 7C 08 02 A6 */	mflr r0
/* 813DB3C8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB3CC | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB3D0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB3D4 | 41 82 00 0C */	beq .L_813DB3E0
/* 813DB3D8 | 38 60 00 00 */	li r3, 0x0
/* 813DB3DC | 48 00 00 30 */	b .L_813DB40C
.L_813DB3E0:
/* 813DB3E0 | 38 00 00 00 */	li r0, 0x0
/* 813DB3E4 | 38 A0 00 05 */	li r5, 0x5
/* 813DB3E8 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813DB3EC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB3F0 | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB3F4 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813DB3F8 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813DB3FC | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DB400 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DB404 | 48 00 7A 21 */	bl iplSDChannelSelect_813E2E24
/* 813DB408 | 38 60 00 01 */	li r3, 0x1
.L_813DB40C:
/* 813DB40C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB410 | 7C 08 03 A6 */	mtlr r0
/* 813DB414 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB418 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB3C0

# .text:0x914 | 0x813DB41C | size: 0x5C
.fn iplSDChannelSelect_813DB41C, global
/* 813DB41C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB420 | 7C 08 02 A6 */	mflr r0
/* 813DB424 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB428 | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB42C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB430 | 41 82 00 0C */	beq .L_813DB43C
/* 813DB434 | 38 60 00 00 */	li r3, 0x0
/* 813DB438 | 48 00 00 30 */	b .L_813DB468
.L_813DB43C:
/* 813DB43C | 38 03 07 28 */	addi r0, r3, 0x728
/* 813DB440 | 38 80 00 0A */	li r4, 0xa
/* 813DB444 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813DB448 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB44C | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB450 | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 813DB454 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DB458 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 813DB45C | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 813DB460 | 48 00 79 C5 */	bl iplSDChannelSelect_813E2E24
/* 813DB464 | 38 60 00 01 */	li r3, 0x1
.L_813DB468:
/* 813DB468 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB46C | 7C 08 03 A6 */	mtlr r0
/* 813DB470 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB474 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB41C

# .text:0x970 | 0x813DB478 | size: 0x5C
.fn iplSDChannelSelect_813DB478, global
/* 813DB478 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB47C | 7C 08 02 A6 */	mflr r0
/* 813DB480 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB484 | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB488 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB48C | 41 82 00 0C */	beq .L_813DB498
/* 813DB490 | 38 60 00 00 */	li r3, 0x0
/* 813DB494 | 48 00 00 30 */	b .L_813DB4C4
.L_813DB498:
/* 813DB498 | 38 00 00 00 */	li r0, 0x0
/* 813DB49C | 38 80 00 06 */	li r4, 0x6
/* 813DB4A0 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813DB4A4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB4A8 | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB4AC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813DB4B0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DB4B4 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 813DB4B8 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 813DB4BC | 48 00 79 69 */	bl iplSDChannelSelect_813E2E24
/* 813DB4C0 | 38 60 00 01 */	li r3, 0x1
.L_813DB4C4:
/* 813DB4C4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB4C8 | 7C 08 03 A6 */	mtlr r0
/* 813DB4CC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB4D0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB478

# .text:0x9CC | 0x813DB4D4 | size: 0x5C
.fn iplSDChannelSelect_813DB4D4, global
/* 813DB4D4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB4D8 | 7C 08 02 A6 */	mflr r0
/* 813DB4DC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB4E0 | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB4E4 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB4E8 | 41 82 00 0C */	beq .L_813DB4F4
/* 813DB4EC | 38 60 00 00 */	li r3, 0x0
/* 813DB4F0 | 48 00 00 30 */	b .L_813DB520
.L_813DB4F4:
/* 813DB4F4 | 38 80 00 07 */	li r4, 0x7
/* 813DB4F8 | 38 00 00 00 */	li r0, 0x0
/* 813DB4FC | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813DB500 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB504 | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB508 | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 813DB50C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DB510 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 813DB514 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 813DB518 | 48 00 79 0D */	bl iplSDChannelSelect_813E2E24
/* 813DB51C | 38 60 00 01 */	li r3, 0x1
.L_813DB520:
/* 813DB520 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB524 | 7C 08 03 A6 */	mtlr r0
/* 813DB528 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB52C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB4D4

# .text:0xA28 | 0x813DB530 | size: 0x5C
.fn iplSDChannelSelect_813DB530, global
/* 813DB530 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB534 | 7C 08 02 A6 */	mflr r0
/* 813DB538 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB53C | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB540 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB544 | 41 82 00 0C */	beq .L_813DB550
/* 813DB548 | 38 60 00 00 */	li r3, 0x0
/* 813DB54C | 48 00 00 30 */	b .L_813DB57C
.L_813DB550:
/* 813DB550 | 38 00 00 00 */	li r0, 0x0
/* 813DB554 | 38 C0 00 0B */	li r6, 0xb
/* 813DB558 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 813DB55C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB560 | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB564 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 813DB568 | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 813DB56C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DB570 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DB574 | 48 00 78 B1 */	bl iplSDChannelSelect_813E2E24
/* 813DB578 | 38 60 00 01 */	li r3, 0x1
.L_813DB57C:
/* 813DB57C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB580 | 7C 08 03 A6 */	mtlr r0
/* 813DB584 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB588 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB530

# .text:0xA84 | 0x813DB58C | size: 0x60
.fn iplSDChannelSelect_813DB58C, global
/* 813DB58C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB590 | 7C 08 02 A6 */	mflr r0
/* 813DB594 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB598 | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB59C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB5A0 | 41 82 00 0C */	beq .L_813DB5AC
/* 813DB5A4 | 38 60 00 00 */	li r3, 0x0
/* 813DB5A8 | 48 00 00 34 */	b .L_813DB5DC
.L_813DB5AC:
/* 813DB5AC | 38 00 00 00 */	li r0, 0x0
/* 813DB5B0 | 38 E0 00 0C */	li r7, 0xc
/* 813DB5B4 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 813DB5B8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB5BC | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB5C0 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 813DB5C4 | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 813DB5C8 | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 813DB5CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DB5D0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DB5D4 | 48 00 78 51 */	bl iplSDChannelSelect_813E2E24
/* 813DB5D8 | 38 60 00 01 */	li r3, 0x1
.L_813DB5DC:
/* 813DB5DC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB5E0 | 7C 08 03 A6 */	mtlr r0
/* 813DB5E4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB5E8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB58C

# .text:0xAE4 | 0x813DB5EC | size: 0x60
.fn iplSDChannelSelect_813DB5EC, global
/* 813DB5EC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DB5F0 | 7C 08 02 A6 */	mflr r0
/* 813DB5F4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DB5F8 | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB5FC | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DB600 | 41 82 00 0C */	beq .L_813DB60C
/* 813DB604 | 38 60 00 00 */	li r3, 0x0
/* 813DB608 | 48 00 00 34 */	b .L_813DB63C
.L_813DB60C:
/* 813DB60C | 38 00 00 00 */	li r0, 0x0
/* 813DB610 | 38 80 00 0D */	li r4, 0xd
/* 813DB614 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813DB618 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DB61C | 38 63 01 20 */	addi r3, r3, 0x120
/* 813DB620 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813DB624 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DB628 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813DB62C | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 813DB630 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 813DB634 | 48 00 77 F1 */	bl iplSDChannelSelect_813E2E24
/* 813DB638 | 38 60 00 01 */	li r3, 0x1
.L_813DB63C:
/* 813DB63C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DB640 | 7C 08 03 A6 */	mtlr r0
/* 813DB644 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DB648 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB5EC

# .text:0xB44 | 0x813DB64C | size: 0x40
.fn iplSDChannelSelect_813DB64C, global
/* 813DB64C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DB650 | 7C 08 02 A6 */	mflr r0
/* 813DB654 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DB658 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DB65C | 7C 7F 1B 78 */	mr r31, r3
/* 813DB660 | 48 00 00 0C */	b .L_813DB66C
.L_813DB664:
/* 813DB664 | 38 7F 01 20 */	addi r3, r31, 0x120
/* 813DB668 | 48 00 78 3D */	bl iplSDChannelSelect_813E2EA4
.L_813DB66C:
/* 813DB66C | 80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 813DB670 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DB674 | 41 81 FF F0 */	bgt .L_813DB664
/* 813DB678 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DB67C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DB680 | 7C 08 03 A6 */	mtlr r0
/* 813DB684 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DB688 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB64C

# .text:0xB84 | 0x813DB68C | size: 0x40
.fn iplSDChannelSelect_813DB68C, global
/* 813DB68C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DB690 | 7C 08 02 A6 */	mflr r0
/* 813DB694 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DB698 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DB69C | 7C 7F 1B 78 */	mr r31, r3
/* 813DB6A0 | 48 00 00 0C */	b .L_813DB6AC
.L_813DB6A4:
/* 813DB6A4 | 38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 813DB6A8 | 48 00 77 31 */	bl iplSDChannelSelect_813E2DD8
.L_813DB6AC:
/* 813DB6AC | 80 1F 06 F4 */	lwz r0, 0x6f4(r31)
/* 813DB6B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DB6B4 | 41 81 FF F0 */	bgt .L_813DB6A4
/* 813DB6B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DB6BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DB6C0 | 7C 08 03 A6 */	mtlr r0
/* 813DB6C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DB6C8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB68C

# .text:0xBC4 | 0x813DB6CC | size: 0x518
.fn iplSDChannelSelect_813DB6CC, global
/* 813DB6CC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813DB6D0 | 7C 08 02 A6 */	mflr r0
/* 813DB6D4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813DB6D8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813DB6DC | 48 21 DD E5 */	bl _savegpr_27
/* 813DB6E0 | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DB6E4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DB6E8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DB6EC | 41 82 00 24 */	beq .L_813DB710
/* 813DB6F0 | 40 80 00 10 */	bge .L_813DB700
/* 813DB6F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DB6F8 | 40 80 00 10 */	bge .L_813DB708
/* 813DB6FC | 48 00 00 24 */	b .L_813DB720
.L_813DB700:
/* 813DB700 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813DB704 | 40 80 00 1C */	bge .L_813DB720
.L_813DB708:
/* 813DB708 | 38 00 00 00 */	li r0, 0x0
/* 813DB70C | 98 03 07 7E */	stb r0, 0x77e(r3)
.L_813DB710:
/* 813DB710 | 7F E3 FB 78 */	mr r3, r31
/* 813DB714 | 4B FF FF 39 */	bl iplSDChannelSelect_813DB64C
/* 813DB718 | 7F E3 FB 78 */	mr r3, r31
/* 813DB71C | 4B FF FF 71 */	bl iplSDChannelSelect_813DB68C
.L_813DB720:
/* 813DB720 | 80 1F 00 98 */	lwz r0, 0x98(r31)
/* 813DB724 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813DB728 | 40 80 00 1C */	bge .L_813DB744
/* 813DB72C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DB730 | 41 82 00 24 */	beq .L_813DB754
/* 813DB734 | 40 80 01 34 */	bge .L_813DB868
/* 813DB738 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DB73C | 40 80 01 2C */	bge .L_813DB868
/* 813DB740 | 48 00 00 14 */	b .L_813DB754
.L_813DB744:
/* 813DB744 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813DB748 | 40 80 00 0C */	bge .L_813DB754
/* 813DB74C | 2C 00 00 0C */	cmpwi r0, 0xc
/* 813DB750 | 40 80 01 18 */	bge .L_813DB868
.L_813DB754:
/* 813DB754 | 80 1F 07 00 */	lwz r0, 0x700(r31)
/* 813DB758 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813DB75C | 40 80 01 0C */	bge .L_813DB868
/* 813DB760 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DB764 | 40 80 00 08 */	bge .L_813DB76C
/* 813DB768 | 48 00 01 00 */	b .L_813DB868
.L_813DB76C:
/* 813DB76C | 80 1F 07 60 */	lwz r0, 0x760(r31)
/* 813DB770 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DB774 | 40 82 04 58 */	bne .L_813DBBCC
/* 813DB778 | 38 80 FF FF */	li r4, -0x1
/* 813DB77C | 38 00 00 01 */	li r0, 0x1
/* 813DB780 | 90 9F 00 E8 */	stw r4, 0xe8(r31)
/* 813DB784 | 7F E3 FB 78 */	mr r3, r31
/* 813DB788 | 90 9F 00 EC */	stw r4, 0xec(r31)
/* 813DB78C | 98 1F 07 58 */	stb r0, 0x758(r31)
/* 813DB790 | 48 00 43 31 */	bl iplSDChannelSelect_813DFAC0
/* 813DB794 | 80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 813DB798 | 38 80 00 00 */	li r4, 0x0
/* 813DB79C | 80 7F 07 3C */	lwz r3, 0x73c(r31)
/* 813DB7A0 | 1C A0 00 30 */	mulli r5, r0, 0x30
/* 813DB7A4 | 4B F5 4B 91 */	bl memset
/* 813DB7A8 | 80 7F 07 20 */	lwz r3, 0x720(r31)
/* 813DB7AC | 38 80 00 00 */	li r4, 0x0
/* 813DB7B0 | 38 A0 4B 00 */	li r5, 0x4b00
/* 813DB7B4 | 4B F5 4B 81 */	bl memset
/* 813DB7B8 | 80 1F 07 00 */	lwz r0, 0x700(r31)
/* 813DB7BC | 38 60 00 00 */	li r3, 0x0
/* 813DB7C0 | 90 7F 07 34 */	stw r3, 0x734(r31)
/* 813DB7C4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DB7C8 | 98 7F 07 59 */	stb r3, 0x759(r31)
/* 813DB7CC | 98 7F 07 7C */	stb r3, 0x77c(r31)
/* 813DB7D0 | 98 7F 07 7D */	stb r3, 0x77d(r31)
/* 813DB7D4 | 98 7F 07 5A */	stb r3, 0x75a(r31)
/* 813DB7D8 | 98 7F 07 7F */	stb r3, 0x77f(r31)
/* 813DB7DC | 41 82 00 3C */	beq .L_813DB818
/* 813DB7E0 | 40 80 00 10 */	bge .L_813DB7F0
/* 813DB7E4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DB7E8 | 40 80 00 14 */	bge .L_813DB7FC
/* 813DB7EC | 48 00 00 7C */	b .L_813DB868
.L_813DB7F0:
/* 813DB7F0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813DB7F4 | 40 80 00 74 */	bge .L_813DB868
/* 813DB7F8 | 48 00 00 58 */	b .L_813DB850
.L_813DB7FC:
/* 813DB7FC | 7F E3 FB 78 */	mr r3, r31
/* 813DB800 | 38 80 00 02 */	li r4, 0x2
/* 813DB804 | 38 A0 00 A9 */	li r5, 0xa9
/* 813DB808 | 48 00 16 E9 */	bl iplSDChannelSelect_813DCEF0
/* 813DB80C | 38 00 00 06 */	li r0, 0x6
/* 813DB810 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DB814 | 48 00 00 54 */	b .L_813DB868
.L_813DB818:
/* 813DB818 | 88 1F 07 7E */	lbz r0, 0x77e(r31)
/* 813DB81C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DB820 | 40 82 00 14 */	bne .L_813DB834
/* 813DB824 | 7F E3 FB 78 */	mr r3, r31
/* 813DB828 | 38 80 00 08 */	li r4, 0x8
/* 813DB82C | 38 A0 00 AA */	li r5, 0xaa
/* 813DB830 | 48 00 16 C1 */	bl iplSDChannelSelect_813DCEF0
.L_813DB834:
/* 813DB834 | 38 00 00 01 */	li r0, 0x1
/* 813DB838 | 7F E3 FB 78 */	mr r3, r31
/* 813DB83C | 98 1F 07 7E */	stb r0, 0x77e(r31)
/* 813DB840 | 4B FF F9 89 */	bl iplSDChannelSelect_813DB1C8
/* 813DB844 | 7F E3 FB 78 */	mr r3, r31
/* 813DB848 | 4B FF F9 C5 */	bl iplSDChannelSelect_813DB20C
/* 813DB84C | 48 00 00 1C */	b .L_813DB868
.L_813DB850:
/* 813DB850 | 7F E3 FB 78 */	mr r3, r31
/* 813DB854 | 38 80 00 02 */	li r4, 0x2
/* 813DB858 | 38 A0 00 AB */	li r5, 0xab
/* 813DB85C | 48 00 16 95 */	bl iplSDChannelSelect_813DCEF0
/* 813DB860 | 38 00 00 0F */	li r0, 0xf
/* 813DB864 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DB868:
/* 813DB868 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB86C | 4B F6 CF 9D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DB870 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DB874 | 40 82 03 58 */	bne .L_813DBBCC
/* 813DB878 | 80 1F 07 08 */	lwz r0, 0x708(r31)
/* 813DB87C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813DB880 | 41 82 00 08 */	beq .L_813DB888
/* 813DB884 | 48 00 03 48 */	b .L_813DBBCC
.L_813DB888:
/* 813DB888 | 80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 813DB88C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DB890 | 41 82 02 58 */	beq .L_813DBAE8
/* 813DB894 | 80 7F 01 A8 */	lwz r3, 0x1a8(r31)
/* 813DB898 | 38 00 00 04 */	li r0, 0x4
/* 813DB89C | 38 A1 00 24 */	addi r5, r1, 0x24
/* 813DB8A0 | 54 63 28 34 */	slwi r3, r3, 5
/* 813DB8A4 | 7C 7F 1A 14 */	add r3, r31, r3
/* 813DB8A8 | 38 83 01 1C */	addi r4, r3, 0x11c
/* 813DB8AC | 7C 09 03 A6 */	mtctr r0
.L_813DB8B0:
/* 813DB8B0 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813DB8B4 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813DB8B8 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813DB8BC | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813DB8C0 | 42 00 FF F0 */	bdnz .L_813DB8B0
/* 813DB8C4 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813DB8C8 | 28 00 00 0D */	cmplwi r0, 0xd
/* 813DB8CC | 41 81 02 08 */	bgt .L_813DBAD4
/* 813DB8D0 | 3C 60 81 65 */	lis r3, jumptable_816544DC@ha
/* 813DB8D4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813DB8D8 | 38 63 44 DC */	addi r3, r3, jumptable_816544DC@l
/* 813DB8DC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813DB8E0 | 7C 69 03 A6 */	mtctr r3
/* 813DB8E4 | 4E 80 04 20 */	bctr
.L_813DB8E8:
/* 813DB8E8 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB8EC | 4B F6 D4 4D */	bl mount_sd_async__Q23ipl12NandSDWorkerFv
/* 813DB8F0 | 38 00 00 00 */	li r0, 0x0
/* 813DB8F4 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DB8F8 | 98 1F 07 7E */	stb r0, 0x77e(r31)
/* 813DB8FC | 48 00 01 D8 */	b .L_813DBAD4
.L_813DB900:
/* 813DB900 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB904 | 4B F6 D1 C9 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813DB908 | 90 7F 07 34 */	stw r3, 0x734(r31)
/* 813DB90C | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB910 | 80 9F 07 1C */	lwz r4, 0x71c(r31)
/* 813DB914 | 4B F6 D4 79 */	bl list_sd_app_async__Q23ipl12NandSDWorkerFPUl
/* 813DB918 | 38 00 00 02 */	li r0, 0x2
/* 813DB91C | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DB920 | 48 00 01 B4 */	b .L_813DBAD4
.L_813DB924:
/* 813DB924 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB928 | 80 9F 07 3C */	lwz r4, 0x73c(r31)
/* 813DB92C | 4B F6 D5 05 */	bl iplNandSD_81348E30
/* 813DB930 | 38 00 00 04 */	li r0, 0x4
/* 813DB934 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DB938 | 48 00 01 9C */	b .L_813DBAD4
.L_813DB93C:
/* 813DB93C | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB940 | 80 9F 07 3C */	lwz r4, 0x73c(r31)
/* 813DB944 | 4B F6 D5 01 */	bl iplNandSD_81348E44
/* 813DB948 | 38 00 00 05 */	li r0, 0x5
/* 813DB94C | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DB950 | 48 00 01 84 */	b .L_813DBAD4
.L_813DB954:
/* 813DB954 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB958 | 38 A0 00 01 */	li r5, 0x1
/* 813DB95C | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 813DB960 | 4B F6 D7 39 */	bl copy_sd_app_to_nand_async__Q23ipl12NandSDWorkerFUl
/* 813DB964 | 38 00 00 07 */	li r0, 0x7
/* 813DB968 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DB96C | 48 00 01 68 */	b .L_813DBAD4
.L_813DB970:
/* 813DB970 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB974 | 80 A1 00 30 */	lwz r5, 0x30(r1)
/* 813DB978 | 80 C1 00 34 */	lwz r6, 0x34(r1)
/* 813DB97C | 80 E1 00 38 */	lwz r7, 0x38(r1)
/* 813DB980 | 81 01 00 3C */	lwz r8, 0x3c(r1)
/* 813DB984 | 4B F6 D4 D5 */	bl iplNandSD_81348E58
/* 813DB988 | 38 00 00 08 */	li r0, 0x8
/* 813DB98C | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DB990 | 48 00 01 44 */	b .L_813DBAD4
.L_813DB994:
/* 813DB994 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB998 | 80 A1 00 30 */	lwz r5, 0x30(r1)
/* 813DB99C | 80 C1 00 34 */	lwz r6, 0x34(r1)
/* 813DB9A0 | 4B F6 D6 D9 */	bl copy_nand_app_to_sd_async__Q23ipl12NandSDWorkerFUx
/* 813DB9A4 | 38 00 00 09 */	li r0, 0x9
/* 813DB9A8 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DB9AC | 48 00 01 28 */	b .L_813DBAD4
.L_813DB9B0:
/* 813DB9B0 | 80 81 00 38 */	lwz r4, 0x38(r1)
/* 813DB9B4 | 83 C1 00 30 */	lwz r30, 0x30(r1)
/* 813DB9B8 | 83 A1 00 34 */	lwz r29, 0x34(r1)
/* 813DB9BC | 30 04 FF FF */	subic r0, r4, 0x1
/* 813DB9C0 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DB9C4 | 7F C5 F3 78 */	mr r5, r30
/* 813DB9C8 | 7F A6 EB 78 */	mr r6, r29
/* 813DB9CC | 7C E0 21 10 */	subfe r7, r0, r4
/* 813DB9D0 | 4B F6 D6 81 */	bl delete_nand_app_async__Q23ipl12NandSDWorkerFUx
/* 813DB9D4 | 80 BF 07 38 */	lwz r5, 0x738(r31)
/* 813DB9D8 | 38 00 00 0A */	li r0, 0xa
/* 813DB9DC | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DB9E0 | 38 E0 00 00 */	li r7, 0x0
/* 813DB9E4 | 38 60 00 00 */	li r3, 0x0
/* 813DB9E8 | 7C A9 03 A6 */	mtctr r5
/* 813DB9EC | 28 05 00 00 */	cmplwi r5, 0x0
/* 813DB9F0 | 40 81 00 30 */	ble .L_813DBA20
.L_813DB9F4:
/* 813DB9F4 | 80 1F 07 24 */	lwz r0, 0x724(r31)
/* 813DB9F8 | 7C 80 1A 14 */	add r4, r0, r3
/* 813DB9FC | 7C 03 00 2E */	lwzx r0, r3, r0
/* 813DBA00 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813DBA04 | 7F C0 02 78 */	xor r0, r30, r0
/* 813DBA08 | 7F A4 22 78 */	xor r4, r29, r4
/* 813DBA0C | 7C 80 03 79 */	or. r0, r4, r0
/* 813DBA10 | 41 82 00 10 */	beq .L_813DBA20
/* 813DBA14 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 813DBA18 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813DBA1C | 42 00 FF D8 */	bdnz .L_813DB9F4
.L_813DBA20:
/* 813DBA20 | 7C 07 28 40 */	cmplw r7, r5
/* 813DBA24 | 40 80 00 B0 */	bge .L_813DBAD4
/* 813DBA28 | 54 E3 20 36 */	slwi r3, r7, 4
/* 813DBA2C | 48 00 00 40 */	b .L_813DBA6C
.L_813DBA30:
/* 813DBA30 | 38 07 00 01 */	addi r0, r7, 0x1
/* 813DBA34 | 80 9F 07 24 */	lwz r4, 0x724(r31)
/* 813DBA38 | 54 00 20 36 */	slwi r0, r0, 4
/* 813DBA3C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 813DBA40 | 7C C4 02 14 */	add r6, r4, r0
/* 813DBA44 | 7C A4 1A 14 */	add r5, r4, r3
/* 813DBA48 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 813DBA4C | 38 63 00 10 */	addi r3, r3, 0x10
/* 813DBA50 | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 813DBA54 | 90 85 00 04 */	stw r4, 0x4(r5)
/* 813DBA58 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 813DBA5C | 80 06 00 08 */	lwz r0, 0x8(r6)
/* 813DBA60 | 90 05 00 08 */	stw r0, 0x8(r5)
/* 813DBA64 | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 813DBA68 | 90 05 00 0C */	stw r0, 0xc(r5)
.L_813DBA6C:
/* 813DBA6C | 80 9F 07 38 */	lwz r4, 0x738(r31)
/* 813DBA70 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813DBA74 | 7C 07 00 40 */	cmplw r7, r0
/* 813DBA78 | 41 80 FF B8 */	blt .L_813DBA30
/* 813DBA7C | 90 1F 07 38 */	stw r0, 0x738(r31)
/* 813DBA80 | 48 00 00 54 */	b .L_813DBAD4
.L_813DBA84:
/* 813DBA84 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBA88 | 80 81 00 38 */	lwz r4, 0x38(r1)
/* 813DBA8C | 80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 813DBA90 | 4B F6 D3 F9 */	bl iplNandSD_81348E88
/* 813DBA94 | 38 00 00 0B */	li r0, 0xb
/* 813DBA98 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DBA9C | 48 00 00 38 */	b .L_813DBAD4
.L_813DBAA0:
/* 813DBAA0 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBAA4 | 80 81 00 38 */	lwz r4, 0x38(r1)
/* 813DBAA8 | 80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 813DBAAC | 80 C1 00 40 */	lwz r6, 0x40(r1)
/* 813DBAB0 | 4B F6 D3 F9 */	bl iplNandSD_81348EA8
/* 813DBAB4 | 38 00 00 0C */	li r0, 0xc
/* 813DBAB8 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DBABC | 48 00 00 18 */	b .L_813DBAD4
.L_813DBAC0:
/* 813DBAC0 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBAC4 | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 813DBAC8 | 4B F6 D4 A9 */	bl delete_sd_app_async__Q23ipl12NandSDWorkerFUl
/* 813DBACC | 38 00 00 0D */	li r0, 0xd
/* 813DBAD0 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DBAD4:
/* 813DBAD4 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813DBAD8 | 38 7F 01 20 */	addi r3, r31, 0x120
/* 813DBADC | 90 1F 07 44 */	stw r0, 0x744(r31)
/* 813DBAE0 | 48 00 73 C5 */	bl iplSDChannelSelect_813E2EA4
/* 813DBAE4 | 48 00 00 E8 */	b .L_813DBBCC
.L_813DBAE8:
/* 813DBAE8 | 80 1F 06 F4 */	lwz r0, 0x6f4(r31)
/* 813DBAEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DBAF0 | 41 82 00 DC */	beq .L_813DBBCC
/* 813DBAF4 | 80 7F 06 F8 */	lwz r3, 0x6f8(r31)
/* 813DBAF8 | 38 00 00 04 */	li r0, 0x4
/* 813DBAFC | 38 A1 00 04 */	addi r5, r1, 0x4
/* 813DBB00 | 54 63 28 34 */	slwi r3, r3, 5
/* 813DBB04 | 7C 7F 1A 14 */	add r3, r31, r3
/* 813DBB08 | 38 83 01 AC */	addi r4, r3, 0x1ac
/* 813DBB0C | 7C 09 03 A6 */	mtctr r0
.L_813DBB10:
/* 813DBB10 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813DBB14 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813DBB18 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813DBB1C | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813DBB20 | 42 00 FF F0 */	bdnz .L_813DBB10
/* 813DBB24 | 83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 813DBB28 | 7F E3 FB 78 */	mr r3, r31
/* 813DBB2C | 83 81 00 18 */	lwz r28, 0x18(r1)
/* 813DBB30 | 7F A5 EB 78 */	mr r5, r29
/* 813DBB34 | 7F 84 E3 78 */	mr r4, r28
/* 813DBB38 | 48 00 43 81 */	bl iplSDChannelSelect_813DFEB8
/* 813DBB3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBB40 | 41 82 00 84 */	beq .L_813DBBC4
/* 813DBB44 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813DBB48 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DBB4C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813DBB50 | 41 81 00 74 */	bgt .L_813DBBC4
/* 813DBB54 | 3C 60 00 02 */	lis r3, 0x2
/* 813DBB58 | 80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 813DBB5C | 38 63 12 B8 */	addi r3, r3, 0x12b8
/* 813DBB60 | 38 A0 00 02 */	li r5, 0x2
/* 813DBB64 | 48 21 BE 81 */	bl fn_815F79E4
/* 813DBB68 | 80 9F 00 D8 */	lwz r4, 0xd8(r31)
/* 813DBB6C | 7C 7B 1B 78 */	mr r27, r3
/* 813DBB70 | 38 60 06 98 */	li r3, 0x698
/* 813DBB74 | 38 A0 00 04 */	li r5, 0x4
/* 813DBB78 | 48 21 C5 39 */	bl __nw__FUlPQ23EGG4Heapi
/* 813DBB7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBB80 | 7C 7E 1B 78 */	mr r30, r3
/* 813DBB84 | 41 82 00 18 */	beq .L_813DBB9C
/* 813DBB88 | 7F 64 DB 78 */	mr r4, r27
/* 813DBB8C | 7F 85 E3 78 */	mr r5, r28
/* 813DBB90 | 7F A6 EB 78 */	mr r6, r29
/* 813DBB94 | 48 00 73 99 */	bl __ct__Q33ipl5scene12SDChannelObjFPQ23EGG4Heapii
/* 813DBB98 | 7C 7E 1B 78 */	mr r30, r3
.L_813DBB9C:
/* 813DBB9C | 93 DF 07 30 */	stw r30, 0x730(r31)
/* 813DBBA0 | 7F C3 F3 78 */	mr r3, r30
/* 813DBBA4 | 48 00 75 85 */	bl iplSDChannelObj_813E3128
/* 813DBBA8 | 7C 65 1B 78 */	mr r5, r3
/* 813DBBAC | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBBB0 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 813DBBB4 | 38 DE 00 90 */	addi r6, r30, 0x90
/* 813DBBB8 | 4B F6 D2 45 */	bl iplNandSD_81348DFC
/* 813DBBBC | 38 00 00 03 */	li r0, 0x3
/* 813DBBC0 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DBBC4:
/* 813DBBC4 | 38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 813DBBC8 | 48 00 72 11 */	bl iplSDChannelSelect_813E2DD8
.L_813DBBCC:
/* 813DBBCC | 39 61 00 60 */	addi r11, r1, 0x60
/* 813DBBD0 | 48 21 D9 3D */	bl _restgpr_27
/* 813DBBD4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813DBBD8 | 7C 08 03 A6 */	mtlr r0
/* 813DBBDC | 38 21 00 60 */	addi r1, r1, 0x60
/* 813DBBE0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DB6CC

# .text:0x10DC | 0x813DBBE4 | size: 0xB0
.fn iplSDChannelSelect_813DBBE4, global
/* 813DBBE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DBBE8 | 7C 08 02 A6 */	mflr r0
/* 813DBBEC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DBBF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DBBF4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DBBF8 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DBBFC | 4B F6 CC 0D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DBC00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBC04 | 40 82 00 54 */	bne .L_813DBC58
/* 813DBC08 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBC0C | 4B F6 CC 29 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813DBC10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBC14 | 40 82 00 30 */	bne .L_813DBC44
/* 813DBC18 | 80 1F 07 5C */	lwz r0, 0x75c(r31)
/* 813DBC1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DBC20 | 40 82 00 14 */	bne .L_813DBC34
/* 813DBC24 | 7F E3 FB 78 */	mr r3, r31
/* 813DBC28 | 38 80 00 08 */	li r4, 0x8
/* 813DBC2C | 38 A0 00 AA */	li r5, 0xaa
/* 813DBC30 | 48 00 12 C1 */	bl iplSDChannelSelect_813DCEF0
.L_813DBC34:
/* 813DBC34 | 7F E3 FB 78 */	mr r3, r31
/* 813DBC38 | 4B FF F5 D5 */	bl iplSDChannelSelect_813DB20C
/* 813DBC3C | 38 00 00 01 */	li r0, 0x1
/* 813DBC40 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DBC44:
/* 813DBC44 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBC48 | 4B F6 D0 A1 */	bl startup_async__Q23ipl12NandSDWorkerFv
/* 813DBC4C | 38 00 00 02 */	li r0, 0x2
/* 813DBC50 | 90 1F 07 08 */	stw r0, 0x708(r31)
/* 813DBC54 | 48 00 00 2C */	b .L_813DBC80
.L_813DBC58:
/* 813DBC58 | 80 7F 07 00 */	lwz r3, 0x700(r31)
/* 813DBC5C | 80 1F 07 04 */	lwz r0, 0x704(r31)
/* 813DBC60 | 7C 00 18 00 */	cmpw r0, r3
/* 813DBC64 | 41 82 00 1C */	beq .L_813DBC80
/* 813DBC68 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 813DBC6C | 40 82 00 14 */	bne .L_813DBC80
/* 813DBC70 | 7F E3 FB 78 */	mr r3, r31
/* 813DBC74 | 38 80 00 08 */	li r4, 0x8
/* 813DBC78 | 38 A0 00 AA */	li r5, 0xaa
/* 813DBC7C | 48 00 12 75 */	bl iplSDChannelSelect_813DCEF0
.L_813DBC80:
/* 813DBC80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DBC84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DBC88 | 7C 08 03 A6 */	mtlr r0
/* 813DBC8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DBC90 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DBBE4

# .text:0x118C | 0x813DBC94 | size: 0xB8
.fn iplSDChannelSelect_813DBC94, global
/* 813DBC94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DBC98 | 7C 08 02 A6 */	mflr r0
/* 813DBC9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DBCA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DBCA4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DBCA8 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DBCAC | 4B F6 CB 5D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DBCB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBCB4 | 40 82 00 84 */	bne .L_813DBD38
/* 813DBCB8 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBCBC | 4B F6 CB 79 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813DBCC0 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 813DBCC4 | 40 82 00 2C */	bne .L_813DBCF0
/* 813DBCC8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DBCCC | 38 80 00 01 */	li r4, 0x1
/* 813DBCD0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DBCD4 | 38 A0 00 01 */	li r5, 0x1
/* 813DBCD8 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 813DBCDC | 38 C0 00 00 */	li r6, 0x0
/* 813DBCE0 | 38 E0 00 00 */	li r7, 0x0
/* 813DBCE4 | 39 00 FF FF */	li r8, -0x1
/* 813DBCE8 | 4B F7 A8 2D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 813DBCEC | 48 00 00 4C */	b .L_813DBD38
.L_813DBCF0:
/* 813DBCF0 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBCF4 | 4B F6 CB A9 */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813DBCF8 | 28 03 00 60 */	cmplwi r3, 0x60
/* 813DBCFC | 90 7F 07 38 */	stw r3, 0x738(r31)
/* 813DBD00 | 40 81 00 0C */	ble .L_813DBD0C
/* 813DBD04 | 38 00 00 60 */	li r0, 0x60
/* 813DBD08 | 90 1F 07 38 */	stw r0, 0x738(r31)
.L_813DBD0C:
/* 813DBD0C | 80 BF 07 38 */	lwz r5, 0x738(r31)
/* 813DBD10 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813DBD14 | 41 82 00 1C */	beq .L_813DBD30
/* 813DBD18 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBD1C | 80 9F 07 24 */	lwz r4, 0x724(r31)
/* 813DBD20 | 4B F6 D2 E1 */	bl iplNandSD_81349000
/* 813DBD24 | 38 00 00 03 */	li r0, 0x3
/* 813DBD28 | 90 1F 07 08 */	stw r0, 0x708(r31)
/* 813DBD2C | 48 00 00 0C */	b .L_813DBD38
.L_813DBD30:
/* 813DBD30 | 38 00 00 04 */	li r0, 0x4
/* 813DBD34 | 90 1F 07 08 */	stw r0, 0x708(r31)
.L_813DBD38:
/* 813DBD38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DBD3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DBD40 | 7C 08 03 A6 */	mtlr r0
/* 813DBD44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DBD48 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DBC94

# .text:0x1244 | 0x813DBD4C | size: 0x48
.fn iplSDChannelSelect_813DBD4C, global
/* 813DBD4C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DBD50 | 7C 08 02 A6 */	mflr r0
/* 813DBD54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DBD58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DBD5C | 7C 7F 1B 78 */	mr r31, r3
/* 813DBD60 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DBD64 | 4B F6 CA A5 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DBD68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBD6C | 40 82 00 14 */	bne .L_813DBD80
/* 813DBD70 | 38 60 00 0E */	li r3, 0xe
/* 813DBD74 | 38 00 00 01 */	li r0, 0x1
/* 813DBD78 | 90 7F 07 44 */	stw r3, 0x744(r31)
/* 813DBD7C | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DBD80:
/* 813DBD80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DBD84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DBD88 | 7C 08 03 A6 */	mtlr r0
/* 813DBD8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DBD90 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DBD4C

# .text:0x128C | 0x813DBD94 | size: 0xD8
.fn iplSDChannelSelect_813DBD94, global
/* 813DBD94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DBD98 | 7C 08 02 A6 */	mflr r0
/* 813DBD9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DBDA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DBDA4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DBDA8 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DBDAC | 4B F6 CA 5D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DBDB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBDB4 | 40 82 00 A4 */	bne .L_813DBE58
/* 813DBDB8 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBDBC | 4B F6 CA 79 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813DBDC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBDC4 | 40 82 00 70 */	bne .L_813DBE34
/* 813DBDC8 | 3C C0 81 3E */	lis r6, iplSDChannelSelect_813DBE6C@ha
/* 813DBDCC | 80 7F 07 24 */	lwz r3, 0x724(r31)
/* 813DBDD0 | 80 9F 07 38 */	lwz r4, 0x738(r31)
/* 813DBDD4 | 38 C6 BE 6C */	addi r6, r6, iplSDChannelSelect_813DBE6C@l
/* 813DBDD8 | 38 A0 00 10 */	li r5, 0x10
/* 813DBDDC | 48 22 4D 75 */	bl qsort
/* 813DBDE0 | 38 C0 00 00 */	li r6, 0x0
/* 813DBDE4 | 38 60 00 00 */	li r3, 0x0
/* 813DBDE8 | 48 00 00 34 */	b .L_813DBE1C
.L_813DBDEC:
/* 813DBDEC | 80 1F 07 24 */	lwz r0, 0x724(r31)
/* 813DBDF0 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 813DBDF4 | 7C A0 1A 14 */	add r5, r0, r3
/* 813DBDF8 | 80 85 00 08 */	lwz r4, 0x8(r5)
/* 813DBDFC | 38 04 C0 00 */	subi r0, r4, 0x4000
/* 813DBE00 | 90 05 00 08 */	stw r0, 0x8(r5)
/* 813DBE04 | 80 1F 07 24 */	lwz r0, 0x724(r31)
/* 813DBE08 | 7C A0 1A 14 */	add r5, r0, r3
/* 813DBE0C | 38 63 00 10 */	addi r3, r3, 0x10
/* 813DBE10 | 80 85 00 0C */	lwz r4, 0xc(r5)
/* 813DBE14 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813DBE18 | 90 05 00 0C */	stw r0, 0xc(r5)
.L_813DBE1C:
/* 813DBE1C | 80 1F 07 38 */	lwz r0, 0x738(r31)
/* 813DBE20 | 7C 06 00 40 */	cmplw r6, r0
/* 813DBE24 | 41 80 FF C8 */	blt .L_813DBDEC
/* 813DBE28 | 38 00 00 04 */	li r0, 0x4
/* 813DBE2C | 90 1F 07 08 */	stw r0, 0x708(r31)
/* 813DBE30 | 48 00 00 28 */	b .L_813DBE58
.L_813DBE34:
/* 813DBE34 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DBE38 | 38 80 00 01 */	li r4, 0x1
/* 813DBE3C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DBE40 | 38 A0 00 02 */	li r5, 0x2
/* 813DBE44 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 813DBE48 | 38 C0 00 00 */	li r6, 0x0
/* 813DBE4C | 38 E0 00 00 */	li r7, 0x0
/* 813DBE50 | 39 00 FF FF */	li r8, -0x1
/* 813DBE54 | 4B F7 A6 C1 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813DBE58:
/* 813DBE58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DBE5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DBE60 | 7C 08 03 A6 */	mtlr r0
/* 813DBE64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DBE68 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DBD94

# .text:0x1364 | 0x813DBE6C | size: 0x28
.fn iplSDChannelSelect_813DBE6C, global
/* 813DBE6C | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813DBE70 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813DBE74 | 7C 03 00 00 */	cmpw r3, r0
/* 813DBE78 | 40 80 00 0C */	bge .L_813DBE84
/* 813DBE7C | 38 60 FF FF */	li r3, -0x1
/* 813DBE80 | 4E 80 00 20 */	blr
.L_813DBE84:
/* 813DBE84 | 7C 63 00 50 */	subf r3, r3, r0
/* 813DBE88 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813DBE8C | 7C 60 19 10 */	subfe r3, r0, r3
/* 813DBE90 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DBE6C

# .text:0x138C | 0x813DBE94 | size: 0x124
.fn iplSDChannelSelect_813DBE94, global
/* 813DBE94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DBE98 | 7C 08 02 A6 */	mflr r0
/* 813DBE9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DBEA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DBEA4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DBEA8 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DBEAC | 4B F6 C9 5D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DBEB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBEB4 | 40 82 00 F0 */	bne .L_813DBFA4
/* 813DBEB8 | 80 1F 07 34 */	lwz r0, 0x734(r31)
/* 813DBEBC | 38 60 00 0E */	li r3, 0xe
/* 813DBEC0 | 90 7F 07 44 */	stw r3, 0x744(r31)
/* 813DBEC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DBEC8 | 40 82 00 2C */	bne .L_813DBEF4
/* 813DBECC | 80 1F 07 60 */	lwz r0, 0x760(r31)
/* 813DBED0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DBED4 | 40 82 00 D0 */	bne .L_813DBFA4
/* 813DBED8 | 7F E3 FB 78 */	mr r3, r31
/* 813DBEDC | 38 80 00 01 */	li r4, 0x1
/* 813DBEE0 | 38 A0 00 00 */	li r5, 0x0
/* 813DBEE4 | 48 00 10 0D */	bl iplSDChannelSelect_813DCEF0
/* 813DBEE8 | 38 00 00 0F */	li r0, 0xf
/* 813DBEEC | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DBEF0 | 48 00 00 B4 */	b .L_813DBFA4
.L_813DBEF4:
/* 813DBEF4 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DBEF8 | 4B F6 C9 3D */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813DBEFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DBF00 | 40 82 00 80 */	bne .L_813DBF80
/* 813DBF04 | 38 E0 00 00 */	li r7, 0x0
/* 813DBF08 | 38 60 00 00 */	li r3, 0x0
/* 813DBF0C | 38 A0 00 00 */	li r5, 0x0
/* 813DBF10 | 38 00 00 01 */	li r0, 0x1
/* 813DBF14 | 48 00 00 38 */	b .L_813DBF4C
.L_813DBF18:
/* 813DBF18 | 80 DF 07 1C */	lwz r6, 0x71c(r31)
/* 813DBF1C | 80 9F 07 20 */	lwz r4, 0x720(r31)
/* 813DBF20 | 7C C6 28 2E */	lwzx r6, r6, r5
/* 813DBF24 | 7C C4 19 2E */	stwx r6, r4, r3
/* 813DBF28 | 80 9F 07 1C */	lwz r4, 0x71c(r31)
/* 813DBF2C | 7C 84 28 2E */	lwzx r4, r4, r5
/* 813DBF30 | 3C 84 B7 BF */	subis r4, r4, 0x4841
/* 813DBF34 | 28 04 5A 41 */	cmplwi r4, 0x5a41
/* 813DBF38 | 40 82 00 08 */	bne .L_813DBF40
/* 813DBF3C | 98 1F 07 7C */	stb r0, 0x77c(r31)
.L_813DBF40:
/* 813DBF40 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 813DBF44 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813DBF48 | 38 A5 00 04 */	addi r5, r5, 0x4
.L_813DBF4C:
/* 813DBF4C | 80 9F 07 34 */	lwz r4, 0x734(r31)
/* 813DBF50 | 7C 07 20 40 */	cmplw r7, r4
/* 813DBF54 | 41 80 FF C4 */	blt .L_813DBF18
/* 813DBF58 | 3C C0 81 3E */	lis r6, iplSDChannelSelect_813DBFB8@ha
/* 813DBF5C | 80 7F 07 20 */	lwz r3, 0x720(r31)
/* 813DBF60 | 38 A0 00 08 */	li r5, 0x8
/* 813DBF64 | 38 C6 BF B8 */	addi r6, r6, iplSDChannelSelect_813DBFB8@l
/* 813DBF68 | 48 22 4B E9 */	bl qsort
/* 813DBF6C | 7F E3 FB 78 */	mr r3, r31
/* 813DBF70 | 4B FF F3 F5 */	bl iplSDChannelSelect_813DB364
/* 813DBF74 | 38 00 00 01 */	li r0, 0x1
/* 813DBF78 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DBF7C | 48 00 00 28 */	b .L_813DBFA4
.L_813DBF80:
/* 813DBF80 | 80 1F 07 60 */	lwz r0, 0x760(r31)
/* 813DBF84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DBF88 | 40 82 00 1C */	bne .L_813DBFA4
/* 813DBF8C | 7F E3 FB 78 */	mr r3, r31
/* 813DBF90 | 38 80 00 02 */	li r4, 0x2
/* 813DBF94 | 38 A0 00 C3 */	li r5, 0xc3
/* 813DBF98 | 48 00 0F 59 */	bl iplSDChannelSelect_813DCEF0
/* 813DBF9C | 38 00 00 0F */	li r0, 0xf
/* 813DBFA0 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DBFA4:
/* 813DBFA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DBFA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DBFAC | 7C 08 03 A6 */	mtlr r0
/* 813DBFB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DBFB4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DBE94

# .text:0x14B0 | 0x813DBFB8 | size: 0x28
.fn iplSDChannelSelect_813DBFB8, global
/* 813DBFB8 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813DBFBC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813DBFC0 | 7C 03 00 40 */	cmplw r3, r0
/* 813DBFC4 | 40 80 00 0C */	bge .L_813DBFD0
/* 813DBFC8 | 38 60 FF FF */	li r3, -0x1
/* 813DBFCC | 4E 80 00 20 */	blr
.L_813DBFD0:
/* 813DBFD0 | 7C 63 00 50 */	subf r3, r3, r0
/* 813DBFD4 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813DBFD8 | 7C 60 19 10 */	subfe r3, r0, r3
/* 813DBFDC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DBFB8

# .text:0x14D8 | 0x813DBFE0 | size: 0x2AC
.fn iplSDChannelSelect_813DBFE0, global
/* 813DBFE0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DBFE4 | 7C 08 02 A6 */	mflr r0
/* 813DBFE8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DBFEC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813DBFF0 | 48 21 D4 C9 */	bl _savegpr_25
/* 813DBFF4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DBFF8 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DBFFC | 4B F6 C8 0D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC004 | 40 82 02 70 */	bne .L_813DC274
/* 813DC008 | 80 1E 07 60 */	lwz r0, 0x760(r30)
/* 813DC00C | 38 60 00 0E */	li r3, 0xe
/* 813DC010 | 90 7E 07 44 */	stw r3, 0x744(r30)
/* 813DC014 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DC018 | 40 82 02 5C */	bne .L_813DC274
/* 813DC01C | 48 15 9C 65 */	bl OSGetTime
/* 813DC020 | 80 DE 07 74 */	lwz r6, 0x774(r30)
/* 813DC024 | 3C A0 80 00 */	lis r5, 0x8000
/* 813DC028 | 80 A5 00 F8 */	lwz r5, 0xf8(r5)
/* 813DC02C | 38 00 00 00 */	li r0, 0x0
/* 813DC030 | 7C C6 20 10 */	subfc r6, r6, r4
/* 813DC034 | 80 FE 07 70 */	lwz r7, 0x770(r30)
/* 813DC038 | 6C 04 80 00 */	xoris r4, r0, 0x8000
/* 813DC03C | 54 A5 F0 BE */	srwi r5, r5, 2
/* 813DC040 | 7C 07 19 10 */	subfe r0, r7, r3
/* 813DC044 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813DC048 | 7C 65 30 10 */	subfc r3, r5, r6
/* 813DC04C | 7C 84 01 10 */	subfe r4, r4, r0
/* 813DC050 | 7C 80 01 10 */	subfe r4, r0, r0
/* 813DC054 | 7C 84 00 D1 */	neg. r4, r4
/* 813DC058 | 41 82 00 08 */	beq .L_813DC060
/* 813DC05C | 48 00 02 18 */	b .L_813DC274
.L_813DC060:
/* 813DC060 | 7F C3 F3 78 */	mr r3, r30
/* 813DC064 | 38 80 00 01 */	li r4, 0x1
/* 813DC068 | 38 A0 00 00 */	li r5, 0x0
/* 813DC06C | 48 00 0E 85 */	bl iplSDChannelSelect_813DCEF0
/* 813DC070 | 80 7E 07 18 */	lwz r3, 0x718(r30)
/* 813DC074 | 4B F6 C7 C1 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813DC078 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC07C | 7C 7F 1B 78 */	mr r31, r3
/* 813DC080 | 41 82 00 0C */	beq .L_813DC08C
/* 813DC084 | 2C 03 FF EF */	cmpwi r3, -0x11
/* 813DC088 | 40 82 01 28 */	bne .L_813DC1B0
.L_813DC08C:
/* 813DC08C | 3B 20 00 00 */	li r25, 0x0
/* 813DC090 | 3B A0 00 00 */	li r29, 0x0
/* 813DC094 | 7F 3C CB 78 */	mr r28, r25
/* 813DC098 | 3F 40 81 3E */	lis r26, iplSDChannelSelect_813DBFB8@ha
/* 813DC09C | 3B 60 00 01 */	li r27, 0x1
/* 813DC0A0 | 48 00 00 4C */	b .L_813DC0EC
.L_813DC0A4:
/* 813DC0A4 | 80 1E 07 3C */	lwz r0, 0x73c(r30)
/* 813DC0A8 | 7C 60 EA 14 */	add r3, r0, r29
/* 813DC0AC | 7C 1D 00 2E */	lwzx r0, r29, r0
/* 813DC0B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DC0B4 | 41 82 00 30 */	beq .L_813DC0E4
/* 813DC0B8 | 80 9E 07 20 */	lwz r4, 0x720(r30)
/* 813DC0BC | 38 FA BF B8 */	addi r7, r26, iplSDChannelSelect_813DBFB8@l
/* 813DC0C0 | 80 BE 07 34 */	lwz r5, 0x734(r30)
/* 813DC0C4 | 38 C0 00 08 */	li r6, 0x8
/* 813DC0C8 | 48 22 11 C5 */	bl bsearch
/* 813DC0CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC0D0 | 41 82 00 0C */	beq .L_813DC0DC
/* 813DC0D4 | 9B 63 00 04 */	stb r27, 0x4(r3)
/* 813DC0D8 | 48 00 00 0C */	b .L_813DC0E4
.L_813DC0DC:
/* 813DC0DC | 80 7E 07 3C */	lwz r3, 0x73c(r30)
/* 813DC0E0 | 7F 83 E9 2E */	stwx r28, r3, r29
.L_813DC0E4:
/* 813DC0E4 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813DC0E8 | 3B BD 00 04 */	addi r29, r29, 0x4
.L_813DC0EC:
/* 813DC0EC | 80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 813DC0F0 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813DC0F4 | 7C 19 00 00 */	cmpw r25, r0
/* 813DC0F8 | 41 80 FF AC */	blt .L_813DC0A4
/* 813DC0FC | 38 E0 00 00 */	li r7, 0x0
/* 813DC100 | 38 60 00 00 */	li r3, 0x0
/* 813DC104 | 39 00 00 00 */	li r8, 0x0
/* 813DC108 | 39 20 00 00 */	li r9, 0x0
/* 813DC10C | 48 00 00 78 */	b .L_813DC184
.L_813DC110:
/* 813DC110 | 80 BE 07 3C */	lwz r5, 0x73c(r30)
/* 813DC114 | 7C 05 18 2E */	lwzx r0, r5, r3
/* 813DC118 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DC11C | 40 82 00 60 */	bne .L_813DC17C
/* 813DC120 | 80 1E 07 34 */	lwz r0, 0x734(r30)
/* 813DC124 | 7C 08 00 40 */	cmplw r8, r0
/* 813DC128 | 41 82 00 6C */	beq .L_813DC194
/* 813DC12C | 7C 08 00 50 */	subf r0, r8, r0
/* 813DC130 | 55 04 18 38 */	slwi r4, r8, 3
/* 813DC134 | 7C 09 03 A6 */	mtctr r0
/* 813DC138 | 40 80 00 44 */	bge .L_813DC17C
.L_813DC13C:
/* 813DC13C | 80 1E 07 20 */	lwz r0, 0x720(r30)
/* 813DC140 | 7C C0 22 14 */	add r6, r0, r4
/* 813DC144 | 88 06 00 04 */	lbz r0, 0x4(r6)
/* 813DC148 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DC14C | 40 82 00 24 */	bne .L_813DC170
/* 813DC150 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 813DC154 | 3C 06 B7 BF */	subis r0, r6, 0x4841
/* 813DC158 | 28 00 5A 41 */	cmplwi r0, 0x5a41
/* 813DC15C | 41 82 00 14 */	beq .L_813DC170
/* 813DC160 | 7C C5 19 2E */	stwx r6, r5, r3
/* 813DC164 | 39 20 00 01 */	li r9, 0x1
/* 813DC168 | 39 08 00 01 */	addi r8, r8, 0x1
/* 813DC16C | 48 00 00 10 */	b .L_813DC17C
.L_813DC170:
/* 813DC170 | 39 08 00 01 */	addi r8, r8, 0x1
/* 813DC174 | 38 84 00 08 */	addi r4, r4, 0x8
/* 813DC178 | 42 00 FF C4 */	bdnz .L_813DC13C
.L_813DC17C:
/* 813DC17C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 813DC180 | 38 63 00 04 */	addi r3, r3, 0x4
.L_813DC184:
/* 813DC184 | 80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 813DC188 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813DC18C | 7C 07 00 00 */	cmpw r7, r0
/* 813DC190 | 41 80 FF 80 */	blt .L_813DC110
.L_813DC194:
/* 813DC194 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 813DC198 | 40 82 00 0C */	bne .L_813DC1A4
/* 813DC19C | 2C 1F FF EF */	cmpwi r31, -0x11
/* 813DC1A0 | 40 82 00 74 */	bne .L_813DC214
.L_813DC1A4:
/* 813DC1A4 | 7F C3 F3 78 */	mr r3, r30
/* 813DC1A8 | 4B FF F1 61 */	bl iplSDChannelSelect_813DB308
/* 813DC1AC | 48 00 00 68 */	b .L_813DC214
.L_813DC1B0:
/* 813DC1B0 | 39 00 00 00 */	li r8, 0x0
/* 813DC1B4 | 38 60 00 00 */	li r3, 0x0
/* 813DC1B8 | 38 E0 00 00 */	li r7, 0x0
/* 813DC1BC | 38 80 00 00 */	li r4, 0x0
/* 813DC1C0 | 48 00 00 40 */	b .L_813DC200
.L_813DC1C4:
/* 813DC1C4 | 80 BE 07 20 */	lwz r5, 0x720(r30)
/* 813DC1C8 | 7C C5 20 2E */	lwzx r6, r5, r4
/* 813DC1CC | 3C 06 B7 BF */	subis r0, r6, 0x4841
/* 813DC1D0 | 28 00 5A 41 */	cmplwi r0, 0x5a41
/* 813DC1D4 | 41 82 00 24 */	beq .L_813DC1F8
/* 813DC1D8 | 80 BE 07 3C */	lwz r5, 0x73c(r30)
/* 813DC1DC | 39 08 00 01 */	addi r8, r8, 0x1
/* 813DC1E0 | 7C C5 19 2E */	stwx r6, r5, r3
/* 813DC1E4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813DC1E8 | 80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 813DC1EC | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813DC1F0 | 7C 08 00 00 */	cmpw r8, r0
/* 813DC1F4 | 41 82 00 18 */	beq .L_813DC20C
.L_813DC1F8:
/* 813DC1F8 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 813DC1FC | 38 84 00 08 */	addi r4, r4, 0x8
.L_813DC200:
/* 813DC200 | 80 1E 07 34 */	lwz r0, 0x734(r30)
/* 813DC204 | 7C 07 00 40 */	cmplw r7, r0
/* 813DC208 | 41 80 FF BC */	blt .L_813DC1C4
.L_813DC20C:
/* 813DC20C | 7F C3 F3 78 */	mr r3, r30
/* 813DC210 | 4B FF F0 F9 */	bl iplSDChannelSelect_813DB308
.L_813DC214:
/* 813DC214 | 88 1E 07 7C */	lbz r0, 0x77c(r30)
/* 813DC218 | 38 60 00 01 */	li r3, 0x1
/* 813DC21C | 90 7E 07 0C */	stw r3, 0x70c(r30)
/* 813DC220 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DC224 | 98 7E 07 7F */	stb r3, 0x77f(r30)
/* 813DC228 | 41 82 00 10 */	beq .L_813DC238
/* 813DC22C | 80 7E 07 34 */	lwz r3, 0x734(r30)
/* 813DC230 | 38 63 FF FF */	subi r3, r3, 0x1
/* 813DC234 | 48 00 00 08 */	b .L_813DC23C
.L_813DC238:
/* 813DC238 | 80 7E 07 34 */	lwz r3, 0x734(r30)
.L_813DC23C:
/* 813DC23C | 80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 813DC240 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813DC244 | 7C 03 00 40 */	cmplw r3, r0
/* 813DC248 | 40 81 00 0C */	ble .L_813DC254
/* 813DC24C | 38 00 00 01 */	li r0, 0x1
/* 813DC250 | 98 1E 07 59 */	stb r0, 0x759(r30)
.L_813DC254:
/* 813DC254 | 80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 813DC258 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813DC25C | 7C 03 00 40 */	cmplw r3, r0
/* 813DC260 | 41 80 00 0C */	blt .L_813DC26C
/* 813DC264 | 38 00 00 01 */	li r0, 0x1
/* 813DC268 | 98 1E 07 5A */	stb r0, 0x75a(r30)
.L_813DC26C:
/* 813DC26C | 7F C3 F3 78 */	mr r3, r30
/* 813DC270 | 48 00 39 4D */	bl iplSDChannelSelect_813DFBBC
.L_813DC274:
/* 813DC274 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813DC278 | 48 21 D2 8D */	bl _restgpr_25
/* 813DC27C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DC280 | 7C 08 03 A6 */	mtlr r0
/* 813DC284 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DC288 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DBFE0

# .text:0x1784 | 0x813DC28C | size: 0x64
.fn iplSDChannelSelect_813DC28C, global
/* 813DC28C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC290 | 7C 08 02 A6 */	mflr r0
/* 813DC294 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC298 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC29C | 7C 7F 1B 78 */	mr r31, r3
/* 813DC2A0 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC2A4 | 4B F6 C5 65 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC2A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC2AC | 40 82 00 30 */	bne .L_813DC2DC
/* 813DC2B0 | 38 00 00 0E */	li r0, 0xe
/* 813DC2B4 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DC2B8 | 90 1F 07 44 */	stw r0, 0x744(r31)
/* 813DC2BC | 4B F6 C5 79 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813DC2C0 | 2C 03 FF F9 */	cmpwi r3, -0x7
/* 813DC2C4 | 40 82 00 0C */	bne .L_813DC2D0
/* 813DC2C8 | 38 00 00 01 */	li r0, 0x1
/* 813DC2CC | 98 1F 07 5A */	stb r0, 0x75a(r31)
.L_813DC2D0:
/* 813DC2D0 | 38 00 00 01 */	li r0, 0x1
/* 813DC2D4 | 98 1F 07 58 */	stb r0, 0x758(r31)
/* 813DC2D8 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC2DC:
/* 813DC2DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC2E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC2E4 | 7C 08 03 A6 */	mtlr r0
/* 813DC2E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC2EC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC28C

# .text:0x17E8 | 0x813DC2F0 | size: 0x1B0
.fn iplSDChannelSelect_813DC2F0, global
/* 813DC2F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DC2F4 | 7C 08 02 A6 */	mflr r0
/* 813DC2F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DC2FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DC300 | 48 21 D1 C5 */	bl _savegpr_28
/* 813DC304 | 7C 7F 1B 78 */	mr r31, r3
/* 813DC308 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC30C | 4B F6 C4 FD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC314 | 40 82 01 74 */	bne .L_813DC488
/* 813DC318 | 38 00 00 0E */	li r0, 0xe
/* 813DC31C | 80 9F 07 30 */	lwz r4, 0x730(r31)
/* 813DC320 | 90 1F 07 44 */	stw r0, 0x744(r31)
/* 813DC324 | 7F E3 FB 78 */	mr r3, r31
/* 813DC328 | 80 DF 00 9C */	lwz r6, 0x9c(r31)
/* 813DC32C | 83 84 00 1C */	lwz r28, 0x1c(r4)
/* 813DC330 | 83 A4 00 18 */	lwz r29, 0x18(r4)
/* 813DC334 | 7F 85 E3 78 */	mr r5, r28
/* 813DC338 | 7F A4 EB 78 */	mr r4, r29
/* 813DC33C | 48 00 3E F1 */	bl iplSDChannelSelect_813E022C
/* 813DC340 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC344 | 41 82 00 14 */	beq .L_813DC358
/* 813DC348 | 80 7F 07 00 */	lwz r3, 0x700(r31)
/* 813DC34C | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DC350 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813DC354 | 41 81 00 24 */	bgt .L_813DC378
.L_813DC358:
/* 813DC358 | 80 9F 07 30 */	lwz r4, 0x730(r31)
/* 813DC35C | 7F E3 FB 78 */	mr r3, r31
/* 813DC360 | 48 00 39 41 */	bl iplSDChannelSelect_813DFCA0
/* 813DC364 | 38 60 00 01 */	li r3, 0x1
/* 813DC368 | 38 00 00 00 */	li r0, 0x0
/* 813DC36C | 90 7F 07 0C */	stw r3, 0x70c(r31)
/* 813DC370 | 90 1F 07 30 */	stw r0, 0x730(r31)
/* 813DC374 | 48 00 01 14 */	b .L_813DC488
.L_813DC378:
/* 813DC378 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DC37C | 4B F6 C4 B9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813DC380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC384 | 41 80 00 30 */	blt .L_813DC3B4
/* 813DC388 | 80 9F 07 30 */	lwz r4, 0x730(r31)
/* 813DC38C | 38 60 00 00 */	li r3, 0x0
/* 813DC390 | 38 00 00 02 */	li r0, 0x2
/* 813DC394 | 90 64 00 84 */	stw r3, 0x84(r4)
/* 813DC398 | 90 04 00 14 */	stw r0, 0x14(r4)
/* 813DC39C | 80 7F 07 30 */	lwz r3, 0x730(r31)
/* 813DC3A0 | 48 00 6D 89 */	bl iplSDChannelObj_813E3128
/* 813DC3A4 | 3C 80 00 02 */	lis r4, 0x2
/* 813DC3A8 | 38 84 90 00 */	subi r4, r4, 0x7000
/* 813DC3AC | 48 15 15 89 */	bl DCFlushRange
/* 813DC3B0 | 48 00 00 44 */	b .L_813DC3F4
.L_813DC3B4:
/* 813DC3B4 | 83 DF 07 78 */	lwz r30, 0x778(r31)
/* 813DC3B8 | 80 7F 07 30 */	lwz r3, 0x730(r31)
/* 813DC3BC | 48 00 6D 6D */	bl iplSDChannelObj_813E3128
/* 813DC3C0 | 80 9E 00 A0 */	lwz r4, 0xa0(r30)
/* 813DC3C4 | 80 BE 00 98 */	lwz r5, 0x98(r30)
/* 813DC3C8 | 4B F5 3E 69 */	bl memcpy
/* 813DC3CC | 80 7F 07 30 */	lwz r3, 0x730(r31)
/* 813DC3D0 | 38 80 00 00 */	li r4, 0x0
/* 813DC3D4 | 38 A0 06 08 */	li r5, 0x608
/* 813DC3D8 | 38 63 00 90 */	addi r3, r3, 0x90
/* 813DC3DC | 4B F5 3F 59 */	bl memset
/* 813DC3E0 | 80 9F 07 30 */	lwz r4, 0x730(r31)
/* 813DC3E4 | 38 60 00 03 */	li r3, 0x3
/* 813DC3E8 | 38 00 00 02 */	li r0, 0x2
/* 813DC3EC | 90 64 00 84 */	stw r3, 0x84(r4)
/* 813DC3F0 | 90 04 00 14 */	stw r0, 0x14(r4)
.L_813DC3F4:
/* 813DC3F4 | 7F E3 FB 78 */	mr r3, r31
/* 813DC3F8 | 7F A4 EB 78 */	mr r4, r29
/* 813DC3FC | 7F 85 E3 78 */	mr r5, r28
/* 813DC400 | 48 00 3A B9 */	bl iplSDChannelSelect_813DFEB8
/* 813DC404 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC408 | 7C 7E 1B 78 */	mr r30, r3
/* 813DC40C | 41 82 00 30 */	beq .L_813DC43C
/* 813DC410 | 80 BF 07 30 */	lwz r5, 0x730(r31)
/* 813DC414 | 7F C4 F3 78 */	mr r4, r30
/* 813DC418 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813DC41C | 48 13 5D 35 */	bl List_Insert__Q24nw4r2utFPQ34nw4r2ut4ListPvPv
/* 813DC420 | 7F C4 F3 78 */	mr r4, r30
/* 813DC424 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813DC428 | 48 13 5E 49 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813DC42C | 7F E3 FB 78 */	mr r3, r31
/* 813DC430 | 7F C4 F3 78 */	mr r4, r30
/* 813DC434 | 48 00 38 6D */	bl iplSDChannelSelect_813DFCA0
/* 813DC438 | 48 00 00 10 */	b .L_813DC448
.L_813DC43C:
/* 813DC43C | 80 9F 07 30 */	lwz r4, 0x730(r31)
/* 813DC440 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813DC444 | 48 13 5C 31 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_813DC448:
/* 813DC448 | 80 9F 07 30 */	lwz r4, 0x730(r31)
/* 813DC44C | 7F E3 FB 78 */	mr r3, r31
/* 813DC450 | 48 00 2A 49 */	bl iplSDChannelSelect_813DEE98
/* 813DC454 | 80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 813DC458 | 7C 00 E8 00 */	cmpw r0, r29
/* 813DC45C | 40 82 00 1C */	bne .L_813DC478
/* 813DC460 | 7F E3 FB 78 */	mr r3, r31
/* 813DC464 | 7F 84 E3 78 */	mr r4, r28
/* 813DC468 | 48 00 43 4D */	bl iplSDChannelSelect_813E07B4
/* 813DC46C | 7C 64 1B 78 */	mr r4, r3
/* 813DC470 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813DC474 | 4B F8 ED A5 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
.L_813DC478:
/* 813DC478 | 38 60 00 01 */	li r3, 0x1
/* 813DC47C | 38 00 00 00 */	li r0, 0x0
/* 813DC480 | 90 7F 07 0C */	stw r3, 0x70c(r31)
/* 813DC484 | 90 1F 07 30 */	stw r0, 0x730(r31)
.L_813DC488:
/* 813DC488 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DC48C | 48 21 D0 85 */	bl _restgpr_28
/* 813DC490 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DC494 | 7C 08 03 A6 */	mtlr r0
/* 813DC498 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DC49C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC2F0

# .text:0x1998 | 0x813DC4A0 | size: 0x5C
.fn iplSDChannelSelect_813DC4A0, global
/* 813DC4A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC4A4 | 7C 08 02 A6 */	mflr r0
/* 813DC4A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC4AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC4B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813DC4B4 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC4B8 | 4B F6 C3 CD */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813DC4BC | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813DC4C0 | 40 82 00 28 */	bne .L_813DC4E8
/* 813DC4C4 | 80 1F 07 60 */	lwz r0, 0x760(r31)
/* 813DC4C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DC4CC | 40 82 00 1C */	bne .L_813DC4E8
/* 813DC4D0 | 7F E3 FB 78 */	mr r3, r31
/* 813DC4D4 | 38 80 00 01 */	li r4, 0x1
/* 813DC4D8 | 38 A0 00 00 */	li r5, 0x0
/* 813DC4DC | 48 00 0A 15 */	bl iplSDChannelSelect_813DCEF0
/* 813DC4E0 | 38 00 00 01 */	li r0, 0x1
/* 813DC4E4 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC4E8:
/* 813DC4E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC4EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC4F0 | 7C 08 03 A6 */	mtlr r0
/* 813DC4F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC4F8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC4A0

# .text:0x19F4 | 0x813DC4FC | size: 0x78
.fn iplSDChannelSelect_813DC4FC, global
/* 813DC4FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC500 | 7C 08 02 A6 */	mflr r0
/* 813DC504 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC508 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC50C | 7C 7F 1B 78 */	mr r31, r3
/* 813DC510 | 80 03 07 60 */	lwz r0, 0x760(r3)
/* 813DC514 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DC518 | 40 82 00 48 */	bne .L_813DC560
/* 813DC51C | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC520 | 4B F6 C3 65 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813DC524 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813DC528 | 40 82 00 20 */	bne .L_813DC548
/* 813DC52C | 7F E3 FB 78 */	mr r3, r31
/* 813DC530 | 38 80 00 02 */	li r4, 0x2
/* 813DC534 | 38 A0 00 A9 */	li r5, 0xa9
/* 813DC538 | 48 00 09 B9 */	bl iplSDChannelSelect_813DCEF0
/* 813DC53C | 38 00 00 06 */	li r0, 0x6
/* 813DC540 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DC544 | 48 00 00 1C */	b .L_813DC560
.L_813DC548:
/* 813DC548 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DC54C | 4B F6 C3 39 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813DC550 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813DC554 | 40 82 00 0C */	bne .L_813DC560
/* 813DC558 | 38 00 00 01 */	li r0, 0x1
/* 813DC55C | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC560:
/* 813DC560 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC564 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC568 | 7C 08 03 A6 */	mtlr r0
/* 813DC56C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC570 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC4FC

# .text:0x1A6C | 0x813DC574 | size: 0x80
.fn iplSDChannelSelect_813DC574, global
/* 813DC574 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC578 | 7C 08 02 A6 */	mflr r0
/* 813DC57C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC580 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC584 | 7C 7F 1B 78 */	mr r31, r3
/* 813DC588 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC58C | 4B F6 C2 7D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC590 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC594 | 40 82 00 4C */	bne .L_813DC5E0
/* 813DC598 | 38 00 00 0E */	li r0, 0xe
/* 813DC59C | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DC5A0 | 90 1F 07 44 */	stw r0, 0x744(r31)
/* 813DC5A4 | 4B F6 C2 91 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813DC5A8 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 813DC5AC | 40 82 00 2C */	bne .L_813DC5D8
/* 813DC5B0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DC5B4 | 38 80 00 01 */	li r4, 0x1
/* 813DC5B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DC5BC | 38 A0 00 01 */	li r5, 0x1
/* 813DC5C0 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 813DC5C4 | 38 C0 00 00 */	li r6, 0x0
/* 813DC5C8 | 38 E0 00 00 */	li r7, 0x0
/* 813DC5CC | 39 00 FF FF */	li r8, -0x1
/* 813DC5D0 | 4B F7 9F 45 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 813DC5D4 | 48 00 00 0C */	b .L_813DC5E0
.L_813DC5D8:
/* 813DC5D8 | 38 00 00 01 */	li r0, 0x1
/* 813DC5DC | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC5E0:
/* 813DC5E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC5E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC5E8 | 7C 08 03 A6 */	mtlr r0
/* 813DC5EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC5F0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC574

# .text:0x1AEC | 0x813DC5F4 | size: 0x48
.fn iplSDChannelSelect_813DC5F4, global
/* 813DC5F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC5F8 | 7C 08 02 A6 */	mflr r0
/* 813DC5FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC600 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC604 | 7C 7F 1B 78 */	mr r31, r3
/* 813DC608 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC60C | 4B F6 C1 FD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC614 | 40 82 00 14 */	bne .L_813DC628
/* 813DC618 | 38 60 00 0E */	li r3, 0xe
/* 813DC61C | 38 00 00 01 */	li r0, 0x1
/* 813DC620 | 90 7F 07 44 */	stw r3, 0x744(r31)
/* 813DC624 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC628:
/* 813DC628 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC62C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC630 | 7C 08 03 A6 */	mtlr r0
/* 813DC634 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC638 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC5F4

# .text:0x1B34 | 0x813DC63C | size: 0x48
.fn iplSDChannelSelect_813DC63C, global
/* 813DC63C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC640 | 7C 08 02 A6 */	mflr r0
/* 813DC644 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC648 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC64C | 7C 7F 1B 78 */	mr r31, r3
/* 813DC650 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC654 | 4B F6 C1 B5 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC658 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC65C | 40 82 00 14 */	bne .L_813DC670
/* 813DC660 | 38 60 00 0E */	li r3, 0xe
/* 813DC664 | 38 00 00 01 */	li r0, 0x1
/* 813DC668 | 90 7F 07 44 */	stw r3, 0x744(r31)
/* 813DC66C | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC670:
/* 813DC670 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC674 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC678 | 7C 08 03 A6 */	mtlr r0
/* 813DC67C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC680 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC63C

# .text:0x1B7C | 0x813DC684 | size: 0x90
.fn iplSDChannelSelect_813DC684, global
/* 813DC684 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC688 | 7C 08 02 A6 */	mflr r0
/* 813DC68C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC690 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC694 | 7C 7F 1B 78 */	mr r31, r3
/* 813DC698 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC69C | 4B F6 C1 6D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC6A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC6A4 | 40 82 00 5C */	bne .L_813DC700
/* 813DC6A8 | 38 00 00 0E */	li r0, 0xe
/* 813DC6AC | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DC6B0 | 90 1F 07 44 */	stw r0, 0x744(r31)
/* 813DC6B4 | 4B F6 C1 81 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813DC6B8 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 813DC6BC | 40 82 00 2C */	bne .L_813DC6E8
/* 813DC6C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DC6C4 | 38 80 00 01 */	li r4, 0x1
/* 813DC6C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DC6CC | 38 A0 00 01 */	li r5, 0x1
/* 813DC6D0 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 813DC6D4 | 38 C0 00 00 */	li r6, 0x0
/* 813DC6D8 | 38 E0 00 00 */	li r7, 0x0
/* 813DC6DC | 39 00 FF FF */	li r8, -0x1
/* 813DC6E0 | 4B F7 9E 35 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 813DC6E4 | 48 00 00 1C */	b .L_813DC700
.L_813DC6E8:
/* 813DC6E8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DC6EC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DC6F0 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813DC6F4 | 4B F5 B5 59 */	bl reserveRefresh__Q33ipl7channel7ManagerFv
/* 813DC6F8 | 38 00 00 01 */	li r0, 0x1
/* 813DC6FC | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC700:
/* 813DC700 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC704 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC708 | 7C 08 03 A6 */	mtlr r0
/* 813DC70C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC710 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC684

# .text:0x1C0C | 0x813DC714 | size: 0x48
.fn iplSDChannelSelect_813DC714, global
/* 813DC714 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC718 | 7C 08 02 A6 */	mflr r0
/* 813DC71C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC720 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC724 | 7C 7F 1B 78 */	mr r31, r3
/* 813DC728 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC72C | 4B F6 C0 DD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC730 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC734 | 40 82 00 14 */	bne .L_813DC748
/* 813DC738 | 38 60 00 0E */	li r3, 0xe
/* 813DC73C | 38 00 00 01 */	li r0, 0x1
/* 813DC740 | 90 7F 07 44 */	stw r3, 0x744(r31)
/* 813DC744 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC748:
/* 813DC748 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC74C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC750 | 7C 08 03 A6 */	mtlr r0
/* 813DC754 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC758 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC714

# .text:0x1C54 | 0x813DC75C | size: 0x48
.fn iplSDChannelSelect_813DC75C, global
/* 813DC75C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC760 | 7C 08 02 A6 */	mflr r0
/* 813DC764 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC768 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC76C | 7C 7F 1B 78 */	mr r31, r3
/* 813DC770 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC774 | 4B F6 C0 95 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC778 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC77C | 40 82 00 14 */	bne .L_813DC790
/* 813DC780 | 38 60 00 0E */	li r3, 0xe
/* 813DC784 | 38 00 00 01 */	li r0, 0x1
/* 813DC788 | 90 7F 07 44 */	stw r3, 0x744(r31)
/* 813DC78C | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC790:
/* 813DC790 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC794 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC798 | 7C 08 03 A6 */	mtlr r0
/* 813DC79C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC7A0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC75C

# .text:0x1C9C | 0x813DC7A4 | size: 0x48
.fn iplSDChannelSelect_813DC7A4, global
/* 813DC7A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC7A8 | 7C 08 02 A6 */	mflr r0
/* 813DC7AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC7B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC7B4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DC7B8 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC7BC | 4B F6 C0 4D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DC7C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC7C4 | 40 82 00 14 */	bne .L_813DC7D8
/* 813DC7C8 | 38 60 00 0E */	li r3, 0xe
/* 813DC7CC | 38 00 00 01 */	li r0, 0x1
/* 813DC7D0 | 90 7F 07 44 */	stw r3, 0x744(r31)
/* 813DC7D4 | 90 1F 07 0C */	stw r0, 0x70c(r31)
.L_813DC7D8:
/* 813DC7D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DC7DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DC7E0 | 7C 08 03 A6 */	mtlr r0
/* 813DC7E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DC7E8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC7A4

# .text:0x1CE4 | 0x813DC7EC | size: 0x14C
.fn iplSDChannelSelect_813DC7EC, global
/* 813DC7EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DC7F0 | 7C 08 02 A6 */	mflr r0
/* 813DC7F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DC7F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DC7FC | 48 21 CC C1 */	bl _savegpr_26
/* 813DC800 | 80 03 00 9C */	lwz r0, 0x9c(r3)
/* 813DC804 | 7C 7A 1B 78 */	mr r26, r3
/* 813DC808 | 7C BB 2B 78 */	mr r27, r5
/* 813DC80C | 7F E0 22 15 */	add. r31, r0, r4
/* 813DC810 | 41 80 01 10 */	blt .L_813DC920
/* 813DC814 | 80 03 07 3C */	lwz r0, 0x73c(r3)
/* 813DC818 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DC81C | 40 82 00 08 */	bne .L_813DC824
/* 813DC820 | 48 00 01 00 */	b .L_813DC920
.L_813DC824:
/* 813DC824 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813DC828 | 41 82 00 20 */	beq .L_813DC848
/* 813DC82C | 40 80 00 28 */	bge .L_813DC854
/* 813DC830 | 2C 04 FF FE */	cmpwi r4, -0x2
/* 813DC834 | 41 82 00 08 */	beq .L_813DC83C
/* 813DC838 | 48 00 00 1C */	b .L_813DC854
.L_813DC83C:
/* 813DC83C | 3B 80 00 03 */	li r28, 0x3
/* 813DC840 | 3B C0 00 04 */	li r30, 0x4
/* 813DC844 | 48 00 00 18 */	b .L_813DC85C
.L_813DC848:
/* 813DC848 | 3B 80 00 00 */	li r28, 0x0
/* 813DC84C | 3B C0 00 04 */	li r30, 0x4
/* 813DC850 | 48 00 00 0C */	b .L_813DC85C
.L_813DC854:
/* 813DC854 | 3B 80 00 00 */	li r28, 0x0
/* 813DC858 | 3B C0 00 01 */	li r30, 0x1
.L_813DC85C:
/* 813DC85C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813DC860 | 1F BF 00 0C */	mulli r29, r31, 0xc
/* 813DC864 | 41 80 00 B4 */	blt .L_813DC918
/* 813DC868 | 2C 05 00 0C */	cmpwi r5, 0xc
/* 813DC86C | 40 80 00 AC */	bge .L_813DC918
/* 813DC870 | 7F 43 D3 78 */	mr r3, r26
/* 813DC874 | 7F E4 FB 78 */	mr r4, r31
/* 813DC878 | 7F 65 DB 78 */	mr r5, r27
/* 813DC87C | 48 00 36 3D */	bl iplSDChannelSelect_813DFEB8
/* 813DC880 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC884 | 41 82 00 94 */	beq .L_813DC918
/* 813DC888 | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813DC88C | 7C 9D DA 14 */	add r4, r29, r27
/* 813DC890 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DC894 | 40 82 00 84 */	bne .L_813DC918
/* 813DC898 | 80 7A 07 3C */	lwz r3, 0x73c(r26)
/* 813DC89C | 54 80 10 3A */	slwi r0, r4, 2
/* 813DC8A0 | 7C 83 00 2E */	lwzx r4, r3, r0
/* 813DC8A4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813DC8A8 | 41 82 00 70 */	beq .L_813DC918
/* 813DC8AC | 7F 43 D3 78 */	mr r3, r26
/* 813DC8B0 | 7F E5 FB 78 */	mr r5, r31
/* 813DC8B4 | 7F 66 DB 78 */	mr r6, r27
/* 813DC8B8 | 4B FF E9 9D */	bl iplSDChannelSelect_813DB254
/* 813DC8BC | 48 00 00 5C */	b .L_813DC918
.L_813DC8C0:
/* 813DC8C0 | 7C 1B E0 00 */	cmpw r27, r28
/* 813DC8C4 | 41 82 00 50 */	beq .L_813DC914
/* 813DC8C8 | 7F 43 D3 78 */	mr r3, r26
/* 813DC8CC | 7F E4 FB 78 */	mr r4, r31
/* 813DC8D0 | 7F 85 E3 78 */	mr r5, r28
/* 813DC8D4 | 48 00 35 E5 */	bl iplSDChannelSelect_813DFEB8
/* 813DC8D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DC8DC | 41 82 00 38 */	beq .L_813DC914
/* 813DC8E0 | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813DC8E4 | 7C 9D E2 14 */	add r4, r29, r28
/* 813DC8E8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DC8EC | 40 82 00 28 */	bne .L_813DC914
/* 813DC8F0 | 80 7A 07 3C */	lwz r3, 0x73c(r26)
/* 813DC8F4 | 54 80 10 3A */	slwi r0, r4, 2
/* 813DC8F8 | 7C 83 00 2E */	lwzx r4, r3, r0
/* 813DC8FC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813DC900 | 41 82 00 14 */	beq .L_813DC914
/* 813DC904 | 7F 43 D3 78 */	mr r3, r26
/* 813DC908 | 7F E5 FB 78 */	mr r5, r31
/* 813DC90C | 7F 86 E3 78 */	mr r6, r28
/* 813DC910 | 4B FF E9 45 */	bl iplSDChannelSelect_813DB254
.L_813DC914:
/* 813DC914 | 7F 9C F2 14 */	add r28, r28, r30
.L_813DC918:
/* 813DC918 | 2C 1C 00 0C */	cmpwi r28, 0xc
/* 813DC91C | 41 80 FF A4 */	blt .L_813DC8C0
.L_813DC920:
/* 813DC920 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DC924 | 48 21 CB E5 */	bl _restgpr_26
/* 813DC928 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DC92C | 7C 08 03 A6 */	mtlr r0
/* 813DC930 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DC934 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC7EC

# .text:0x1E30 | 0x813DC938 | size: 0x18C
.fn iplSDChannelSelect_813DC938, global
/* 813DC938 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DC93C | 7C 08 02 A6 */	mflr r0
/* 813DC940 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DC944 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DC948 | 7C 7F 1B 78 */	mr r31, r3
/* 813DC94C | 80 03 07 00 */	lwz r0, 0x700(r3)
/* 813DC950 | 90 03 07 04 */	stw r0, 0x704(r3)
/* 813DC954 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813DC958 | 4B F6 BF 2D */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813DC95C | 80 1F 07 08 */	lwz r0, 0x708(r31)
/* 813DC960 | 90 7F 07 00 */	stw r3, 0x700(r31)
/* 813DC964 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DC968 | 41 82 00 2C */	beq .L_813DC994
/* 813DC96C | 40 80 00 10 */	bge .L_813DC97C
/* 813DC970 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DC974 | 40 80 00 14 */	bge .L_813DC988
/* 813DC978 | 48 00 00 30 */	b .L_813DC9A8
.L_813DC97C:
/* 813DC97C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813DC980 | 40 80 00 28 */	bge .L_813DC9A8
/* 813DC984 | 48 00 00 1C */	b .L_813DC9A0
.L_813DC988:
/* 813DC988 | 7F E3 FB 78 */	mr r3, r31
/* 813DC98C | 4B FF F2 59 */	bl iplSDChannelSelect_813DBBE4
/* 813DC990 | 48 00 00 18 */	b .L_813DC9A8
.L_813DC994:
/* 813DC994 | 7F E3 FB 78 */	mr r3, r31
/* 813DC998 | 4B FF F2 FD */	bl iplSDChannelSelect_813DBC94
/* 813DC99C | 48 00 00 0C */	b .L_813DC9A8
.L_813DC9A0:
/* 813DC9A0 | 7F E3 FB 78 */	mr r3, r31
/* 813DC9A4 | 4B FF F3 F1 */	bl iplSDChannelSelect_813DBD94
.L_813DC9A8:
/* 813DC9A8 | 80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 813DC9AC | 28 00 00 0F */	cmplwi r0, 0xf
/* 813DC9B0 | 41 81 00 CC */	bgt .L_813DCA7C
/* 813DC9B4 | 3C 60 81 65 */	lis r3, jumptable_81654514@ha
/* 813DC9B8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813DC9BC | 38 63 45 14 */	addi r3, r3, jumptable_81654514@l
/* 813DC9C0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813DC9C4 | 7C 69 03 A6 */	mtctr r3
/* 813DC9C8 | 4E 80 04 20 */	bctr
.L_813DC9CC:
/* 813DC9CC | 7F E3 FB 78 */	mr r3, r31
/* 813DC9D0 | 4B FF EC FD */	bl iplSDChannelSelect_813DB6CC
/* 813DC9D4 | 48 00 00 A8 */	b .L_813DCA7C
.L_813DC9D8:
/* 813DC9D8 | 7F E3 FB 78 */	mr r3, r31
/* 813DC9DC | 4B FF F3 71 */	bl iplSDChannelSelect_813DBD4C
/* 813DC9E0 | 48 00 00 9C */	b .L_813DCA7C
.L_813DC9E4:
/* 813DC9E4 | 7F E3 FB 78 */	mr r3, r31
/* 813DC9E8 | 4B FF F4 AD */	bl iplSDChannelSelect_813DBE94
/* 813DC9EC | 48 00 00 90 */	b .L_813DCA7C
.L_813DC9F0:
/* 813DC9F0 | 7F E3 FB 78 */	mr r3, r31
/* 813DC9F4 | 4B FF F8 99 */	bl iplSDChannelSelect_813DC28C
/* 813DC9F8 | 48 00 00 84 */	b .L_813DCA7C
.L_813DC9FC:
/* 813DC9FC | 7F E3 FB 78 */	mr r3, r31
/* 813DCA00 | 4B FF F5 E1 */	bl iplSDChannelSelect_813DBFE0
/* 813DCA04 | 48 00 00 78 */	b .L_813DCA7C
.L_813DCA08:
/* 813DCA08 | 7F E3 FB 78 */	mr r3, r31
/* 813DCA0C | 4B FF F8 E5 */	bl iplSDChannelSelect_813DC2F0
/* 813DCA10 | 48 00 00 6C */	b .L_813DCA7C
.L_813DCA14:
/* 813DCA14 | 7F E3 FB 78 */	mr r3, r31
/* 813DCA18 | 4B FF FB 5D */	bl iplSDChannelSelect_813DC574
/* 813DCA1C | 48 00 00 60 */	b .L_813DCA7C
.L_813DCA20:
/* 813DCA20 | 7F E3 FB 78 */	mr r3, r31
/* 813DCA24 | 4B FF FB D1 */	bl iplSDChannelSelect_813DC5F4
/* 813DCA28 | 48 00 00 54 */	b .L_813DCA7C
.L_813DCA2C:
/* 813DCA2C | 7F E3 FB 78 */	mr r3, r31
/* 813DCA30 | 4B FF FC 0D */	bl iplSDChannelSelect_813DC63C
/* 813DCA34 | 48 00 00 48 */	b .L_813DCA7C
.L_813DCA38:
/* 813DCA38 | 7F E3 FB 78 */	mr r3, r31
/* 813DCA3C | 4B FF FC 49 */	bl iplSDChannelSelect_813DC684
/* 813DCA40 | 48 00 00 3C */	b .L_813DCA7C
.L_813DCA44:
/* 813DCA44 | 7F E3 FB 78 */	mr r3, r31
/* 813DCA48 | 4B FF FC CD */	bl iplSDChannelSelect_813DC714
/* 813DCA4C | 48 00 00 30 */	b .L_813DCA7C
.L_813DCA50:
/* 813DCA50 | 7F E3 FB 78 */	mr r3, r31
/* 813DCA54 | 4B FF FD 09 */	bl iplSDChannelSelect_813DC75C
/* 813DCA58 | 48 00 00 24 */	b .L_813DCA7C
.L_813DCA5C:
/* 813DCA5C | 7F E3 FB 78 */	mr r3, r31
/* 813DCA60 | 4B FF FD 45 */	bl iplSDChannelSelect_813DC7A4
/* 813DCA64 | 48 00 00 18 */	b .L_813DCA7C
.L_813DCA68:
/* 813DCA68 | 7F E3 FB 78 */	mr r3, r31
/* 813DCA6C | 4B FF FA 35 */	bl iplSDChannelSelect_813DC4A0
/* 813DCA70 | 48 00 00 0C */	b .L_813DCA7C
.L_813DCA74:
/* 813DCA74 | 7F E3 FB 78 */	mr r3, r31
/* 813DCA78 | 4B FF FA 85 */	bl iplSDChannelSelect_813DC4FC
.L_813DCA7C:
/* 813DCA7C | 80 1F 07 00 */	lwz r0, 0x700(r31)
/* 813DCA80 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813DCA84 | 41 82 00 24 */	beq .L_813DCAA8
/* 813DCA88 | 80 1F 00 98 */	lwz r0, 0x98(r31)
/* 813DCA8C | 2C 00 00 18 */	cmpwi r0, 0x18
/* 813DCA90 | 40 80 00 18 */	bge .L_813DCAA8
/* 813DCA94 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813DCA98 | 40 80 00 08 */	bge .L_813DCAA0
/* 813DCA9C | 48 00 00 0C */	b .L_813DCAA8
.L_813DCAA0:
/* 813DCAA0 | 38 00 00 01 */	li r0, 0x1
/* 813DCAA4 | 98 1F 01 05 */	stb r0, 0x105(r31)
.L_813DCAA8:
/* 813DCAA8 | 7F E3 FB 78 */	mr r3, r31
/* 813DCAAC | 48 00 00 19 */	bl iplSDChannelSelect_813DCAC4
/* 813DCAB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DCAB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DCAB8 | 7C 08 03 A6 */	mtlr r0
/* 813DCABC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DCAC0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DC938

# .text:0x1FBC | 0x813DCAC4 | size: 0x42C
.fn iplSDChannelSelect_813DCAC4, global
/* 813DCAC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DCAC8 | 7C 08 02 A6 */	mflr r0
/* 813DCACC | 38 80 FF FF */	li r4, -0x1
/* 813DCAD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DCAD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DCAD8 | 7C 7F 1B 78 */	mr r31, r3
/* 813DCADC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DCAE0 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813DCAE4 | 4B F8 DF ED */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813DCAE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DCAEC | 41 82 00 18 */	beq .L_813DCB04
/* 813DCAF0 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DCAF4 | 38 80 00 04 */	li r4, 0x4
/* 813DCAF8 | 4B F8 DF D9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813DCAFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DCB00 | 41 82 03 D8 */	beq .L_813DCED8
.L_813DCB04:
/* 813DCB04 | 80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 813DCB08 | 38 03 FF FD */	subi r0, r3, 0x3
/* 813DCB0C | 28 00 00 09 */	cmplwi r0, 0x9
/* 813DCB10 | 41 81 00 60 */	bgt .L_813DCB70
/* 813DCB14 | 3C 60 81 65 */	lis r3, jumptable_8165466C@ha
/* 813DCB18 | 54 00 10 3A */	slwi r0, r0, 2
/* 813DCB1C | 38 63 46 6C */	addi r3, r3, jumptable_8165466C@l
/* 813DCB20 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813DCB24 | 7C 69 03 A6 */	mtctr r3
/* 813DCB28 | 4E 80 04 20 */	bctr
.L_813DCB2C:
/* 813DCB2C | 38 00 00 04 */	li r0, 0x4
/* 813DCB30 | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCB34 | 48 15 91 4D */	bl OSGetTime
/* 813DCB38 | 90 9F 07 74 */	stw r4, 0x774(r31)
/* 813DCB3C | 90 7F 07 70 */	stw r3, 0x770(r31)
/* 813DCB40 | 48 00 00 30 */	b .L_813DCB70
.L_813DCB44:
/* 813DCB44 | 38 00 00 07 */	li r0, 0x7
/* 813DCB48 | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCB4C | 48 00 00 24 */	b .L_813DCB70
.L_813DCB50:
/* 813DCB50 | 38 00 00 0A */	li r0, 0xa
/* 813DCB54 | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCB58 | 48 15 91 29 */	bl OSGetTime
/* 813DCB5C | 90 9F 07 74 */	stw r4, 0x774(r31)
/* 813DCB60 | 90 7F 07 70 */	stw r3, 0x770(r31)
/* 813DCB64 | 48 00 00 0C */	b .L_813DCB70
.L_813DCB68:
/* 813DCB68 | 38 00 00 0D */	li r0, 0xd
/* 813DCB6C | 90 1F 07 5C */	stw r0, 0x75c(r31)
.L_813DCB70:
/* 813DCB70 | 80 1F 07 60 */	lwz r0, 0x760(r31)
/* 813DCB74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DCB78 | 40 82 00 38 */	bne .L_813DCBB0
/* 813DCB7C | 80 1F 07 5C */	lwz r0, 0x75c(r31)
/* 813DCB80 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813DCB84 | 41 82 00 20 */	beq .L_813DCBA4
/* 813DCB88 | 40 80 01 B8 */	bge .L_813DCD40
/* 813DCB8C | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813DCB90 | 41 82 00 08 */	beq .L_813DCB98
/* 813DCB94 | 48 00 01 AC */	b .L_813DCD40
.L_813DCB98:
/* 813DCB98 | 38 00 00 08 */	li r0, 0x8
/* 813DCB9C | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCBA0 | 48 00 01 A0 */	b .L_813DCD40
.L_813DCBA4:
/* 813DCBA4 | 38 00 00 0E */	li r0, 0xe
/* 813DCBA8 | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCBAC | 48 00 01 94 */	b .L_813DCD40
.L_813DCBB0:
/* 813DCBB0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DCBB4 | 41 82 00 20 */	beq .L_813DCBD4
/* 813DCBB8 | 40 80 00 10 */	bge .L_813DCBC8
/* 813DCBBC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DCBC0 | 40 80 01 2C */	bge .L_813DCCEC
/* 813DCBC4 | 48 00 01 7C */	b .L_813DCD40
.L_813DCBC8:
/* 813DCBC8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813DCBCC | 41 82 00 94 */	beq .L_813DCC60
/* 813DCBD0 | 48 00 01 70 */	b .L_813DCD40
.L_813DCBD4:
/* 813DCBD4 | 80 1F 07 5C */	lwz r0, 0x75c(r31)
/* 813DCBD8 | 28 00 00 0F */	cmplwi r0, 0xf
/* 813DCBDC | 41 81 01 64 */	bgt .L_813DCD40
/* 813DCBE0 | 3C 60 81 65 */	lis r3, jumptable_8165462C@ha
/* 813DCBE4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813DCBE8 | 38 63 46 2C */	addi r3, r3, jumptable_8165462C@l
/* 813DCBEC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813DCBF0 | 7C 69 03 A6 */	mtctr r3
/* 813DCBF4 | 4E 80 04 20 */	bctr
.L_813DCBF8:
/* 813DCBF8 | 80 1F 07 6C */	lwz r0, 0x76c(r31)
/* 813DCBFC | 38 60 00 02 */	li r3, 0x2
/* 813DCC00 | 90 7F 07 5C */	stw r3, 0x75c(r31)
/* 813DCC04 | 90 1F 07 68 */	stw r0, 0x768(r31)
/* 813DCC08 | 48 00 01 38 */	b .L_813DCD40
.L_813DCC0C:
/* 813DCC0C | 80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 813DCC10 | 80 1F 07 68 */	lwz r0, 0x768(r31)
/* 813DCC14 | 7C 00 18 40 */	cmplw r0, r3
/* 813DCC18 | 41 82 00 08 */	beq .L_813DCC20
/* 813DCC1C | 90 7F 07 68 */	stw r3, 0x768(r31)
.L_813DCC20:
/* 813DCC20 | 38 00 00 00 */	li r0, 0x0
/* 813DCC24 | 90 1F 07 60 */	stw r0, 0x760(r31)
/* 813DCC28 | 48 00 01 18 */	b .L_813DCD40
.L_813DCC2C:
/* 813DCC2C | 80 7F 07 68 */	lwz r3, 0x768(r31)
/* 813DCC30 | 80 1F 07 6C */	lwz r0, 0x76c(r31)
/* 813DCC34 | 7C 03 00 40 */	cmplw r3, r0
/* 813DCC38 | 40 82 00 10 */	bne .L_813DCC48
/* 813DCC3C | 38 00 00 00 */	li r0, 0x0
/* 813DCC40 | 90 1F 07 60 */	stw r0, 0x760(r31)
/* 813DCC44 | 48 00 00 FC */	b .L_813DCD40
.L_813DCC48:
/* 813DCC48 | 38 00 00 05 */	li r0, 0x5
/* 813DCC4C | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCC50 | 48 00 00 F0 */	b .L_813DCD40
.L_813DCC54:
/* 813DCC54 | 38 00 00 0B */	li r0, 0xb
/* 813DCC58 | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCC5C | 48 00 00 E4 */	b .L_813DCD40
.L_813DCC60:
/* 813DCC60 | 80 1F 07 5C */	lwz r0, 0x75c(r31)
/* 813DCC64 | 28 00 00 0F */	cmplwi r0, 0xf
/* 813DCC68 | 41 81 00 D8 */	bgt .L_813DCD40
/* 813DCC6C | 3C 60 81 65 */	lis r3, jumptable_816545EC@ha
/* 813DCC70 | 54 00 10 3A */	slwi r0, r0, 2
/* 813DCC74 | 38 63 45 EC */	addi r3, r3, jumptable_816545EC@l
/* 813DCC78 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813DCC7C | 7C 69 03 A6 */	mtctr r3
/* 813DCC80 | 4E 80 04 20 */	bctr
.L_813DCC84:
/* 813DCC84 | 80 1F 07 6C */	lwz r0, 0x76c(r31)
/* 813DCC88 | 38 60 00 08 */	li r3, 0x8
/* 813DCC8C | 90 7F 07 5C */	stw r3, 0x75c(r31)
/* 813DCC90 | 90 1F 07 68 */	stw r0, 0x768(r31)
/* 813DCC94 | 48 00 00 AC */	b .L_813DCD40
.L_813DCC98:
/* 813DCC98 | 80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 813DCC9C | 80 1F 07 68 */	lwz r0, 0x768(r31)
/* 813DCCA0 | 7C 00 18 40 */	cmplw r0, r3
/* 813DCCA4 | 41 82 00 08 */	beq .L_813DCCAC
/* 813DCCA8 | 90 7F 07 68 */	stw r3, 0x768(r31)
.L_813DCCAC:
/* 813DCCAC | 38 00 00 00 */	li r0, 0x0
/* 813DCCB0 | 90 1F 07 60 */	stw r0, 0x760(r31)
/* 813DCCB4 | 48 00 00 8C */	b .L_813DCD40
.L_813DCCB8:
/* 813DCCB8 | 80 7F 07 68 */	lwz r3, 0x768(r31)
/* 813DCCBC | 80 1F 07 6C */	lwz r0, 0x76c(r31)
/* 813DCCC0 | 7C 03 00 40 */	cmplw r3, r0
/* 813DCCC4 | 40 82 00 10 */	bne .L_813DCCD4
/* 813DCCC8 | 38 00 00 00 */	li r0, 0x0
/* 813DCCCC | 90 1F 07 60 */	stw r0, 0x760(r31)
/* 813DCCD0 | 48 00 00 70 */	b .L_813DCD40
.L_813DCCD4:
/* 813DCCD4 | 38 00 00 0B */	li r0, 0xb
/* 813DCCD8 | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCCDC | 48 00 00 64 */	b .L_813DCD40
.L_813DCCE0:
/* 813DCCE0 | 38 00 00 05 */	li r0, 0x5
/* 813DCCE4 | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCCE8 | 48 00 00 58 */	b .L_813DCD40
.L_813DCCEC:
/* 813DCCEC | 80 1F 07 5C */	lwz r0, 0x75c(r31)
/* 813DCCF0 | 28 00 00 0F */	cmplwi r0, 0xf
/* 813DCCF4 | 41 81 00 4C */	bgt .L_813DCD40
/* 813DCCF8 | 3C 60 81 65 */	lis r3, jumptable_816545AC@ha
/* 813DCCFC | 54 00 10 3A */	slwi r0, r0, 2
/* 813DCD00 | 38 63 45 AC */	addi r3, r3, jumptable_816545AC@l
/* 813DCD04 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813DCD08 | 7C 69 03 A6 */	mtctr r3
/* 813DCD0C | 4E 80 04 20 */	bctr
.L_813DCD10:
/* 813DCD10 | 80 1F 07 6C */	lwz r0, 0x76c(r31)
/* 813DCD14 | 38 80 00 01 */	li r4, 0x1
/* 813DCD18 | 38 60 00 00 */	li r3, 0x0
/* 813DCD1C | 90 9F 07 5C */	stw r4, 0x75c(r31)
/* 813DCD20 | 90 7F 07 60 */	stw r3, 0x760(r31)
/* 813DCD24 | 90 1F 07 68 */	stw r0, 0x768(r31)
/* 813DCD28 | 48 00 00 18 */	b .L_813DCD40
.L_813DCD2C:
/* 813DCD2C | 38 00 00 05 */	li r0, 0x5
/* 813DCD30 | 90 1F 07 5C */	stw r0, 0x75c(r31)
/* 813DCD34 | 48 00 00 0C */	b .L_813DCD40
.L_813DCD38:
/* 813DCD38 | 38 00 00 0B */	li r0, 0xb
/* 813DCD3C | 90 1F 07 5C */	stw r0, 0x75c(r31)
.L_813DCD40:
/* 813DCD40 | 80 1F 07 5C */	lwz r0, 0x75c(r31)
/* 813DCD44 | 3B C0 00 00 */	li r30, 0x0
/* 813DCD48 | 28 00 00 0E */	cmplwi r0, 0xe
/* 813DCD4C | 41 81 01 60 */	bgt .L_813DCEAC
/* 813DCD50 | 3C 60 81 65 */	lis r3, jumptable_81654570@ha
/* 813DCD54 | 54 00 10 3A */	slwi r0, r0, 2
/* 813DCD58 | 38 63 45 70 */	addi r3, r3, jumptable_81654570@l
/* 813DCD5C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813DCD60 | 7C 69 03 A6 */	mtctr r3
/* 813DCD64 | 4E 80 04 20 */	bctr
.L_813DCD68:
/* 813DCD68 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DCD6C | 3C 80 81 65 */	lis r4, lbl_81654554@ha
/* 813DCD70 | 38 84 45 54 */	addi r4, r4, lbl_81654554@l
/* 813DCD74 | 38 A0 00 01 */	li r5, 0x1
/* 813DCD78 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DCD7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DCD80 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DCD84 | 7D 89 03 A6 */	mtctr r12
/* 813DCD88 | 4E 80 04 21 */	bctrl
/* 813DCD8C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813DCD90 | 7C 7E 1B 78 */	mr r30, r3
/* 813DCD94 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813DCD98 | 80 9F 07 68 */	lwz r4, 0x768(r31)
/* 813DCD9C | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813DCDA0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813DCDA4 | 4B F6 1A 19 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813DCDA8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813DCDAC | 7C 64 1B 78 */	mr r4, r3
/* 813DCDB0 | 7F C3 F3 78 */	mr r3, r30
/* 813DCDB4 | 38 A0 00 00 */	li r5, 0x0
/* 813DCDB8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813DCDBC | 7D 89 03 A6 */	mtctr r12
/* 813DCDC0 | 4E 80 04 21 */	bctrl
/* 813DCDC4 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DCDC8 | 38 80 00 00 */	li r4, 0x0
/* 813DCDCC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DCDD0 | 48 13 55 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DCDD4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DCDD8 | 48 00 00 D4 */	b .L_813DCEAC
.L_813DCDDC:
/* 813DCDDC | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DCDE0 | 38 80 00 01 */	li r4, 0x1
/* 813DCDE4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DCDE8 | 48 13 55 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DCDEC | 7C 7E 1B 78 */	mr r30, r3
/* 813DCDF0 | 48 00 00 BC */	b .L_813DCEAC
.L_813DCDF4:
/* 813DCDF4 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DCDF8 | 3C 80 81 65 */	lis r4, lbl_8165455F@ha
/* 813DCDFC | 38 84 45 5F */	addi r4, r4, lbl_8165455F@l
/* 813DCE00 | 38 A0 00 01 */	li r5, 0x1
/* 813DCE04 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DCE08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DCE0C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DCE10 | 7D 89 03 A6 */	mtctr r12
/* 813DCE14 | 4E 80 04 21 */	bctrl
/* 813DCE18 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813DCE1C | 7C 7E 1B 78 */	mr r30, r3
/* 813DCE20 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813DCE24 | 80 9F 07 68 */	lwz r4, 0x768(r31)
/* 813DCE28 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813DCE2C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813DCE30 | 4B F6 19 8D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813DCE34 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813DCE38 | 7C 64 1B 78 */	mr r4, r3
/* 813DCE3C | 7F C3 F3 78 */	mr r3, r30
/* 813DCE40 | 38 A0 00 00 */	li r5, 0x0
/* 813DCE44 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813DCE48 | 7D 89 03 A6 */	mtctr r12
/* 813DCE4C | 4E 80 04 21 */	bctrl
/* 813DCE50 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DCE54 | 38 80 00 02 */	li r4, 0x2
/* 813DCE58 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DCE5C | 48 13 54 BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DCE60 | 7C 7E 1B 78 */	mr r30, r3
/* 813DCE64 | 48 00 00 48 */	b .L_813DCEAC
.L_813DCE68:
/* 813DCE68 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DCE6C | 38 80 00 04 */	li r4, 0x4
/* 813DCE70 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DCE74 | 48 13 54 A5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DCE78 | 38 00 00 00 */	li r0, 0x0
/* 813DCE7C | 38 80 00 03 */	li r4, 0x3
/* 813DCE80 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813DCE84 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DCE88 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DCE8C | 48 13 54 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DCE90 | 7C 7E 1B 78 */	mr r30, r3
/* 813DCE94 | 48 00 00 18 */	b .L_813DCEAC
.L_813DCE98:
/* 813DCE98 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DCE9C | 38 80 00 04 */	li r4, 0x4
/* 813DCEA0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DCEA4 | 48 13 54 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DCEA8 | 7C 7E 1B 78 */	mr r30, r3
.L_813DCEAC:
/* 813DCEAC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813DCEB0 | 41 82 00 28 */	beq .L_813DCED8
/* 813DCEB4 | 7F C3 F3 78 */	mr r3, r30
/* 813DCEB8 | 4B F8 CD 6D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813DCEBC | 7F C3 F3 78 */	mr r3, r30
/* 813DCEC0 | 4B F8 59 B1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813DCEC4 | 38 00 00 01 */	li r0, 0x1
/* 813DCEC8 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813DCECC | 80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 813DCED0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DCED4 | 90 1F 07 5C */	stw r0, 0x75c(r31)
.L_813DCED8:
/* 813DCED8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DCEDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DCEE0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DCEE4 | 7C 08 03 A6 */	mtlr r0
/* 813DCEE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DCEEC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DCAC4

# .text:0x23E8 | 0x813DCEF0 | size: 0x24
.fn iplSDChannelSelect_813DCEF0, global
/* 813DCEF0 | 80 03 07 60 */	lwz r0, 0x760(r3)
/* 813DCEF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DCEF8 | 40 82 00 14 */	bne .L_813DCF0C
/* 813DCEFC | 90 83 07 60 */	stw r4, 0x760(r3)
/* 813DCF00 | 90 A3 07 6C */	stw r5, 0x76c(r3)
/* 813DCF04 | 38 60 00 01 */	li r3, 0x1
/* 813DCF08 | 4E 80 00 20 */	blr
.L_813DCF0C:
/* 813DCF0C | 38 60 00 00 */	li r3, 0x0
/* 813DCF10 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DCEF0

# .text:0x240C | 0x813DCF14 | size: 0xCC
.fn iplSDChannelSelect_813DCF14, global
/* 813DCF14 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DCF18 | 7C 08 02 A6 */	mflr r0
/* 813DCF1C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DCF20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DCF24 | 48 21 C5 A1 */	bl _savegpr_28
/* 813DCF28 | 83 A3 07 28 */	lwz r29, 0x728(r3)
/* 813DCF2C | 7C 7C 1B 78 */	mr r28, r3
/* 813DCF30 | 83 E3 07 2C */	lwz r31, 0x72c(r3)
/* 813DCF34 | 7C 9E 23 78 */	mr r30, r4
/* 813DCF38 | 48 18 D9 5D */	bl fn_8156A894
/* 813DCF3C | 80 FC 07 38 */	lwz r7, 0x738(r28)
/* 813DCF40 | 39 00 00 00 */	li r8, 0x0
/* 813DCF44 | 38 A0 00 00 */	li r5, 0x0
/* 813DCF48 | 7C E9 03 A6 */	mtctr r7
/* 813DCF4C | 28 07 00 00 */	cmplwi r7, 0x0
/* 813DCF50 | 40 81 00 30 */	ble .L_813DCF80
.L_813DCF54:
/* 813DCF54 | 80 1C 07 24 */	lwz r0, 0x724(r28)
/* 813DCF58 | 7C C0 2A 14 */	add r6, r0, r5
/* 813DCF5C | 7C 05 00 2E */	lwzx r0, r5, r0
/* 813DCF60 | 80 C6 00 04 */	lwz r6, 0x4(r6)
/* 813DCF64 | 7C 60 02 78 */	xor r0, r3, r0
/* 813DCF68 | 7C 86 32 78 */	xor r6, r4, r6
/* 813DCF6C | 7C C0 03 79 */	or. r0, r6, r0
/* 813DCF70 | 41 82 00 10 */	beq .L_813DCF80
/* 813DCF74 | 39 08 00 01 */	addi r8, r8, 0x1
/* 813DCF78 | 38 A5 00 10 */	addi r5, r5, 0x10
/* 813DCF7C | 42 00 FF D8 */	bdnz .L_813DCF54
.L_813DCF80:
/* 813DCF80 | 7C 08 38 40 */	cmplw r8, r7
/* 813DCF84 | 40 80 00 20 */	bge .L_813DCFA4
/* 813DCF88 | 80 7C 07 24 */	lwz r3, 0x724(r28)
/* 813DCF8C | 55 00 20 36 */	slwi r0, r8, 4
/* 813DCF90 | 7C 83 02 14 */	add r4, r3, r0
/* 813DCF94 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 813DCF98 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813DCF9C | 7F BD 1A 14 */	add r29, r29, r3
/* 813DCFA0 | 7F FF 02 14 */	add r31, r31, r0
.L_813DCFA4:
/* 813DCFA4 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 813DCFA8 | 7C 1D 00 00 */	cmpw r29, r0
/* 813DCFAC | 41 80 00 18 */	blt .L_813DCFC4
/* 813DCFB0 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 813DCFB4 | 7C 1F 00 00 */	cmpw r31, r0
/* 813DCFB8 | 41 80 00 0C */	blt .L_813DCFC4
/* 813DCFBC | 38 60 00 01 */	li r3, 0x1
/* 813DCFC0 | 48 00 00 08 */	b .L_813DCFC8
.L_813DCFC4:
/* 813DCFC4 | 38 60 00 00 */	li r3, 0x0
.L_813DCFC8:
/* 813DCFC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DCFCC | 48 21 C5 45 */	bl _restgpr_28
/* 813DCFD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DCFD4 | 7C 08 03 A6 */	mtlr r0
/* 813DCFD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DCFDC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DCF14

# .text:0x24D8 | 0x813DCFE0 | size: 0xCC
.fn iplSDChannelSelect_813DCFE0, global
/* 813DCFE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DCFE4 | 7C 08 02 A6 */	mflr r0
/* 813DCFE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DCFEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DCFF0 | 48 21 C4 D9 */	bl _savegpr_29
/* 813DCFF4 | 80 03 07 28 */	lwz r0, 0x728(r3)
/* 813DCFF8 | 7C 7D 1B 78 */	mr r29, r3
/* 813DCFFC | 7C 9E 23 78 */	mr r30, r4
/* 813DD000 | 7C BF 2B 78 */	mr r31, r5
/* 813DD004 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 813DD008 | 80 03 07 2C */	lwz r0, 0x72c(r3)
/* 813DD00C | 90 05 00 00 */	stw r0, 0x0(r5)
/* 813DD010 | 48 18 D8 85 */	bl fn_8156A894
/* 813DD014 | 80 FD 07 38 */	lwz r7, 0x738(r29)
/* 813DD018 | 39 00 00 00 */	li r8, 0x0
/* 813DD01C | 38 A0 00 00 */	li r5, 0x0
/* 813DD020 | 7C E9 03 A6 */	mtctr r7
/* 813DD024 | 28 07 00 00 */	cmplwi r7, 0x0
/* 813DD028 | 40 81 00 30 */	ble .L_813DD058
.L_813DD02C:
/* 813DD02C | 80 1D 07 24 */	lwz r0, 0x724(r29)
/* 813DD030 | 7C C0 2A 14 */	add r6, r0, r5
/* 813DD034 | 7C 05 00 2E */	lwzx r0, r5, r0
/* 813DD038 | 80 C6 00 04 */	lwz r6, 0x4(r6)
/* 813DD03C | 7C 60 02 78 */	xor r0, r3, r0
/* 813DD040 | 7C 86 32 78 */	xor r6, r4, r6
/* 813DD044 | 7C C0 03 79 */	or. r0, r6, r0
/* 813DD048 | 41 82 00 10 */	beq .L_813DD058
/* 813DD04C | 39 08 00 01 */	addi r8, r8, 0x1
/* 813DD050 | 38 A5 00 10 */	addi r5, r5, 0x10
/* 813DD054 | 42 00 FF D8 */	bdnz .L_813DD02C
.L_813DD058:
/* 813DD058 | 7C 08 38 40 */	cmplw r8, r7
/* 813DD05C | 40 80 00 38 */	bge .L_813DD094
/* 813DD060 | 80 1D 07 24 */	lwz r0, 0x724(r29)
/* 813DD064 | 55 05 20 36 */	slwi r5, r8, 4
/* 813DD068 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 813DD06C | 7C 60 2A 14 */	add r3, r0, r5
/* 813DD070 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813DD074 | 7C 04 02 14 */	add r0, r4, r0
/* 813DD078 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 813DD07C | 80 1D 07 24 */	lwz r0, 0x724(r29)
/* 813DD080 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813DD084 | 7C 60 2A 14 */	add r3, r0, r5
/* 813DD088 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813DD08C | 7C 04 02 14 */	add r0, r4, r0
/* 813DD090 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813DD094:
/* 813DD094 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DD098 | 48 21 C4 7D */	bl _restgpr_29
/* 813DD09C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DD0A0 | 7C 08 03 A6 */	mtlr r0
/* 813DD0A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DD0A8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DCFE0

# .text:0x25A4 | 0x813DD0AC | size: 0x194
.fn iplSDChannelSelect_813DD0AC, global
/* 813DD0AC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813DD0B0 | 7C 08 02 A6 */	mflr r0
/* 813DD0B4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813DD0B8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813DD0BC | 48 21 C3 F1 */	bl _savegpr_22
/* 813DD0C0 | 7C 97 23 78 */	mr r23, r4
/* 813DD0C4 | 7C B8 2B 78 */	mr r24, r5
/* 813DD0C8 | 7C 76 1B 78 */	mr r22, r3
/* 813DD0CC | 7C D9 33 78 */	mr r25, r6
/* 813DD0D0 | 7C FA 3B 78 */	mr r26, r7
/* 813DD0D4 | 7D 1B 43 78 */	mr r27, r8
/* 813DD0D8 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813DD0DC | 38 A1 00 10 */	addi r5, r1, 0x10
/* 813DD0E0 | 4B FF FF 01 */	bl iplSDChannelSelect_813DCFE0
/* 813DD0E4 | 3B A0 00 00 */	li r29, 0x0
/* 813DD0E8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813DD0EC | 3C 60 48 41 */	lis r3, 0x4841
/* 813DD0F0 | 93 BB 00 00 */	stw r29, 0x0(r27)
/* 813DD0F4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813DD0F8 | 3B 80 00 00 */	li r28, 0x0
/* 813DD0FC | 3B C3 5A 41 */	addi r30, r3, 0x5a41
/* 813DD100 | 48 00 00 F0 */	b .L_813DD1F0
.L_813DD104:
/* 813DD104 | 80 16 07 24 */	lwz r0, 0x724(r22)
/* 813DD108 | 7C 60 EA 14 */	add r3, r0, r29
/* 813DD10C | 7C BD 00 2E */	lwzx r5, r29, r0
/* 813DD110 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 813DD114 | 7C C0 F2 78 */	xor r0, r6, r30
/* 813DD118 | 7C 00 2B 79 */	or. r0, r0, r5
/* 813DD11C | 41 82 00 CC */	beq .L_813DD1E8
/* 813DD120 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813DD124 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813DD128 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813DD12C | 4B F5 AD 4D */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813DD130 | 7C 80 1B 79 */	or. r0, r4, r3
/* 813DD134 | 41 82 00 B4 */	beq .L_813DD1E8
/* 813DD138 | 80 16 07 24 */	lwz r0, 0x724(r22)
/* 813DD13C | 38 C0 00 00 */	li r6, 0x0
/* 813DD140 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 813DD144 | 7C 60 EA 14 */	add r3, r0, r29
/* 813DD148 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 813DD14C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813DD150 | 7C 05 02 14 */	add r0, r5, r0
/* 813DD154 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DD158 | 80 16 07 24 */	lwz r0, 0x724(r22)
/* 813DD15C | 7C 60 EA 14 */	add r3, r0, r29
/* 813DD160 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813DD164 | 7C 04 02 14 */	add r0, r4, r0
/* 813DD168 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DD16C | 80 76 07 24 */	lwz r3, 0x724(r22)
/* 813DD170 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 813DD174 | 7C 83 E8 6E */	lwzux r4, r3, r29
/* 813DD178 | 54 00 18 38 */	slwi r0, r0, 3
/* 813DD17C | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813DD180 | 7C 79 02 14 */	add r3, r25, r0
/* 813DD184 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 813DD188 | 7C 99 01 2E */	stwx r4, r25, r0
/* 813DD18C | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813DD190 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813DD194 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813DD198 | 4B F5 B9 C5 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813DD19C | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 813DD1A0 | 7C 64 1B 78 */	mr r4, r3
/* 813DD1A4 | 38 A0 00 2A */	li r5, 0x2a
/* 813DD1A8 | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813DD1AC | 7C 7A 02 14 */	add r3, r26, r0
/* 813DD1B0 | 4B F5 30 81 */	bl memcpy
/* 813DD1B4 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813DD1B8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DD1BC | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 813DD1C0 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 813DD1C4 | 80 18 00 00 */	lwz r0, 0x0(r24)
/* 813DD1C8 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD1CC | 41 80 00 1C */	blt .L_813DD1E8
/* 813DD1D0 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813DD1D4 | 80 18 00 04 */	lwz r0, 0x4(r24)
/* 813DD1D8 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD1DC | 41 80 00 0C */	blt .L_813DD1E8
/* 813DD1E0 | 38 60 00 01 */	li r3, 0x1
/* 813DD1E4 | 48 00 00 44 */	b .L_813DD228
.L_813DD1E8:
/* 813DD1E8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813DD1EC | 3B BD 00 10 */	addi r29, r29, 0x10
.L_813DD1F0:
/* 813DD1F0 | 80 16 07 38 */	lwz r0, 0x738(r22)
/* 813DD1F4 | 7C 1C 00 40 */	cmplw r28, r0
/* 813DD1F8 | 41 80 FF 0C */	blt .L_813DD104
/* 813DD1FC | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 813DD200 | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 813DD204 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD208 | 41 80 00 1C */	blt .L_813DD224
/* 813DD20C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813DD210 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 813DD214 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD218 | 41 80 00 0C */	blt .L_813DD224
/* 813DD21C | 38 60 00 01 */	li r3, 0x1
/* 813DD220 | 48 00 00 08 */	b .L_813DD228
.L_813DD224:
/* 813DD224 | 38 60 00 00 */	li r3, 0x0
.L_813DD228:
/* 813DD228 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813DD22C | 48 21 C2 CD */	bl _restgpr_22
/* 813DD230 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813DD234 | 7C 08 03 A6 */	mtlr r0
/* 813DD238 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813DD23C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DD0AC

# .text:0x2738 | 0x813DD240 | size: 0x198
.fn iplSDChannelSelect_813DD240, global
/* 813DD240 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813DD244 | 7C 08 02 A6 */	mflr r0
/* 813DD248 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813DD24C | 39 61 00 40 */	addi r11, r1, 0x40
/* 813DD250 | 48 21 C2 5D */	bl _savegpr_22
/* 813DD254 | 7C 98 23 78 */	mr r24, r4
/* 813DD258 | 7C B9 2B 78 */	mr r25, r5
/* 813DD25C | 7C 77 1B 78 */	mr r23, r3
/* 813DD260 | 7C DA 33 78 */	mr r26, r6
/* 813DD264 | 7C FB 3B 78 */	mr r27, r7
/* 813DD268 | 7D 1C 43 78 */	mr r28, r8
/* 813DD26C | 38 81 00 14 */	addi r4, r1, 0x14
/* 813DD270 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 813DD274 | 4B FF FD 6D */	bl iplSDChannelSelect_813DCFE0
/* 813DD278 | 38 00 00 00 */	li r0, 0x0
/* 813DD27C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813DD280 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 813DD284 | 3C 60 48 41 */	lis r3, 0x4841
/* 813DD288 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813DD28C | 80 97 07 38 */	lwz r4, 0x738(r23)
/* 813DD290 | 3B C3 5A 41 */	addi r30, r3, 0x5a41
/* 813DD294 | 3B A4 FF FF */	subi r29, r4, 0x1
/* 813DD298 | 57 B6 20 36 */	slwi r22, r29, 4
/* 813DD29C | 48 00 00 F0 */	b .L_813DD38C
.L_813DD2A0:
/* 813DD2A0 | 80 17 07 24 */	lwz r0, 0x724(r23)
/* 813DD2A4 | 7C 60 B2 14 */	add r3, r0, r22
/* 813DD2A8 | 7C B6 00 2E */	lwzx r5, r22, r0
/* 813DD2AC | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 813DD2B0 | 7C C0 F2 78 */	xor r0, r6, r30
/* 813DD2B4 | 7C 00 2B 79 */	or. r0, r0, r5
/* 813DD2B8 | 41 82 00 CC */	beq .L_813DD384
/* 813DD2BC | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813DD2C0 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813DD2C4 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813DD2C8 | 4B F5 AB B1 */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813DD2CC | 7C 80 1B 79 */	or. r0, r4, r3
/* 813DD2D0 | 41 82 00 B4 */	beq .L_813DD384
/* 813DD2D4 | 80 17 07 24 */	lwz r0, 0x724(r23)
/* 813DD2D8 | 38 C0 00 00 */	li r6, 0x0
/* 813DD2DC | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 813DD2E0 | 7C 60 B2 14 */	add r3, r0, r22
/* 813DD2E4 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 813DD2E8 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813DD2EC | 7C 05 02 14 */	add r0, r5, r0
/* 813DD2F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DD2F4 | 80 17 07 24 */	lwz r0, 0x724(r23)
/* 813DD2F8 | 7C 60 B2 14 */	add r3, r0, r22
/* 813DD2FC | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813DD300 | 7C 04 02 14 */	add r0, r4, r0
/* 813DD304 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DD308 | 80 77 07 24 */	lwz r3, 0x724(r23)
/* 813DD30C | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 813DD310 | 7C 83 B0 6E */	lwzux r4, r3, r22
/* 813DD314 | 54 00 18 38 */	slwi r0, r0, 3
/* 813DD318 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813DD31C | 7C 7A 02 14 */	add r3, r26, r0
/* 813DD320 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 813DD324 | 7C 9A 01 2E */	stwx r4, r26, r0
/* 813DD328 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813DD32C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813DD330 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813DD334 | 4B F5 B8 29 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813DD338 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 813DD33C | 7C 64 1B 78 */	mr r4, r3
/* 813DD340 | 38 A0 00 2A */	li r5, 0x2a
/* 813DD344 | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813DD348 | 7C 7B 02 14 */	add r3, r27, r0
/* 813DD34C | 4B F5 2E E5 */	bl memcpy
/* 813DD350 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813DD354 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DD358 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 813DD35C | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 813DD360 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 813DD364 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD368 | 41 80 00 1C */	blt .L_813DD384
/* 813DD36C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813DD370 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 813DD374 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD378 | 41 80 00 0C */	blt .L_813DD384
/* 813DD37C | 38 60 00 01 */	li r3, 0x1
/* 813DD380 | 48 00 00 40 */	b .L_813DD3C0
.L_813DD384:
/* 813DD384 | 3B BD FF FF */	subi r29, r29, 0x1
/* 813DD388 | 3A D6 FF F0 */	subi r22, r22, 0x10
.L_813DD38C:
/* 813DD38C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813DD390 | 40 80 FF 10 */	bge .L_813DD2A0
/* 813DD394 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 813DD398 | 80 18 00 00 */	lwz r0, 0x0(r24)
/* 813DD39C | 7C 03 00 00 */	cmpw r3, r0
/* 813DD3A0 | 41 80 00 1C */	blt .L_813DD3BC
/* 813DD3A4 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813DD3A8 | 80 18 00 04 */	lwz r0, 0x4(r24)
/* 813DD3AC | 7C 03 00 00 */	cmpw r3, r0
/* 813DD3B0 | 41 80 00 0C */	blt .L_813DD3BC
/* 813DD3B4 | 38 60 00 01 */	li r3, 0x1
/* 813DD3B8 | 48 00 00 08 */	b .L_813DD3C0
.L_813DD3BC:
/* 813DD3BC | 38 60 00 00 */	li r3, 0x0
.L_813DD3C0:
/* 813DD3C0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813DD3C4 | 48 21 C1 35 */	bl _restgpr_22
/* 813DD3C8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813DD3CC | 7C 08 03 A6 */	mtlr r0
/* 813DD3D0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813DD3D4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DD240

# .text:0x28D0 | 0x813DD3D8 | size: 0x1F8
.fn iplSDChannelSelect_813DD3D8, global
/* 813DD3D8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813DD3DC | 7C 08 02 A6 */	mflr r0
/* 813DD3E0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813DD3E4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813DD3E8 | 48 21 C0 A9 */	bl _savegpr_15
/* 813DD3EC | 7C 93 23 78 */	mr r19, r4
/* 813DD3F0 | 7C B4 2B 78 */	mr r20, r5
/* 813DD3F4 | 7C 72 1B 78 */	mr r18, r3
/* 813DD3F8 | 7C D5 33 78 */	mr r21, r6
/* 813DD3FC | 7C F6 3B 78 */	mr r22, r7
/* 813DD400 | 7D 17 43 78 */	mr r23, r8
/* 813DD404 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813DD408 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813DD40C | 4B FF FB D5 */	bl iplSDChannelSelect_813DCFE0
/* 813DD410 | 38 00 00 00 */	li r0, 0x0
/* 813DD414 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813DD418 | 3F A0 81 61 */	lis r29, lbl_816105D8@ha
/* 813DD41C | 90 17 00 00 */	stw r0, 0x0(r23)
/* 813DD420 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813DD424 | 3B 40 00 03 */	li r26, 0x3
/* 813DD428 | 3B BD 05 D8 */	addi r29, r29, lbl_816105D8@l
/* 813DD42C | 3A 20 0F C0 */	li r17, 0xfc0
/* 813DD430 | 3F C0 48 41 */	lis r30, 0x4841
.L_813DD434:
/* 813DD434 | 3B 20 00 00 */	li r25, 0x0
/* 813DD438 | 3A 00 00 00 */	li r16, 0x0
.L_813DD43C:
/* 813DD43C | 7C 1D 80 2E */	lwzx r0, r29, r16
/* 813DD440 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813DD444 | 1C 80 00 70 */	mulli r4, r0, 0x70
/* 813DD448 | 7C 11 1A 14 */	add r0, r17, r3
/* 813DD44C | 7C 60 22 14 */	add r3, r0, r4
/* 813DD450 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 813DD454 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DD458 | 41 82 00 10 */	beq .L_813DD468
/* 813DD45C | 83 83 00 4C */	lwz r28, 0x4c(r3)
/* 813DD460 | 83 63 00 50 */	lwz r27, 0x50(r3)
/* 813DD464 | 48 00 00 0C */	b .L_813DD470
.L_813DD468:
/* 813DD468 | 3B 60 00 00 */	li r27, 0x0
/* 813DD46C | 3B 80 00 00 */	li r28, 0x0
.L_813DD470:
/* 813DD470 | 7F 60 E3 79 */	or. r0, r27, r28
/* 813DD474 | 41 82 00 FC */	beq .L_813DD570
/* 813DD478 | 38 1E 5A 41 */	addi r0, r30, 0x5a41
/* 813DD47C | 7F 60 02 78 */	xor r0, r27, r0
/* 813DD480 | 7C 00 E3 79 */	or. r0, r0, r28
/* 813DD484 | 41 82 00 EC */	beq .L_813DD570
/* 813DD488 | 3B 00 00 00 */	li r24, 0x0
/* 813DD48C | 39 E0 00 00 */	li r15, 0x0
/* 813DD490 | 48 00 00 D4 */	b .L_813DD564
.L_813DD494:
/* 813DD494 | 80 12 07 24 */	lwz r0, 0x724(r18)
/* 813DD498 | 7C A0 7A 14 */	add r5, r0, r15
/* 813DD49C | 7C 0F 00 2E */	lwzx r0, r15, r0
/* 813DD4A0 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813DD4A4 | 7F 80 02 78 */	xor r0, r28, r0
/* 813DD4A8 | 7F 63 1A 78 */	xor r3, r27, r3
/* 813DD4AC | 7C 60 03 79 */	or. r0, r3, r0
/* 813DD4B0 | 40 82 00 AC */	bne .L_813DD55C
/* 813DD4B4 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 813DD4B8 | 7F 44 D3 78 */	mr r4, r26
/* 813DD4BC | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 813DD4C0 | 38 C0 00 00 */	li r6, 0x0
/* 813DD4C4 | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 813DD4C8 | 7C 03 02 14 */	add r0, r3, r0
/* 813DD4CC | 7C BD 80 2E */	lwzx r5, r29, r16
/* 813DD4D0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813DD4D4 | 80 12 07 24 */	lwz r0, 0x724(r18)
/* 813DD4D8 | 7C 60 7A 14 */	add r3, r0, r15
/* 813DD4DC | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813DD4E0 | 7C 07 02 14 */	add r0, r7, r0
/* 813DD4E4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813DD4E8 | 80 72 07 24 */	lwz r3, 0x724(r18)
/* 813DD4EC | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 813DD4F0 | 7C E3 78 6E */	lwzux r7, r3, r15
/* 813DD4F4 | 54 00 18 38 */	slwi r0, r0, 3
/* 813DD4F8 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 813DD4FC | 7C 75 02 14 */	add r3, r21, r0
/* 813DD500 | 91 03 00 04 */	stw r8, 0x4(r3)
/* 813DD504 | 7C F5 01 2E */	stwx r7, r21, r0
/* 813DD508 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813DD50C | 4B F5 B6 51 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813DD510 | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 813DD514 | 7C 64 1B 78 */	mr r4, r3
/* 813DD518 | 38 A0 00 2A */	li r5, 0x2a
/* 813DD51C | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813DD520 | 7C 76 02 14 */	add r3, r22, r0
/* 813DD524 | 4B F5 2D 0D */	bl memcpy
/* 813DD528 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 813DD52C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DD530 | 90 17 00 00 */	stw r0, 0x0(r23)
/* 813DD534 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 813DD538 | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 813DD53C | 7C 03 00 00 */	cmpw r3, r0
/* 813DD540 | 41 80 00 1C */	blt .L_813DD55C
/* 813DD544 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813DD548 | 80 14 00 04 */	lwz r0, 0x4(r20)
/* 813DD54C | 7C 03 00 00 */	cmpw r3, r0
/* 813DD550 | 41 80 00 0C */	blt .L_813DD55C
/* 813DD554 | 38 60 00 01 */	li r3, 0x1
/* 813DD558 | 48 00 00 60 */	b .L_813DD5B8
.L_813DD55C:
/* 813DD55C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 813DD560 | 39 EF 00 10 */	addi r15, r15, 0x10
.L_813DD564:
/* 813DD564 | 80 12 07 38 */	lwz r0, 0x738(r18)
/* 813DD568 | 7C 18 00 40 */	cmplw r24, r0
/* 813DD56C | 41 80 FF 28 */	blt .L_813DD494
.L_813DD570:
/* 813DD570 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813DD574 | 3A 10 00 04 */	addi r16, r16, 0x4
/* 813DD578 | 2C 19 00 0C */	cmpwi r25, 0xc
/* 813DD57C | 41 80 FE C0 */	blt .L_813DD43C
/* 813DD580 | 37 5A FF FF */	subic. r26, r26, 0x1
/* 813DD584 | 3A 31 FA C0 */	subi r17, r17, 0x540
/* 813DD588 | 40 80 FE AC */	bge .L_813DD434
/* 813DD58C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 813DD590 | 80 13 00 00 */	lwz r0, 0x0(r19)
/* 813DD594 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD598 | 41 80 00 1C */	blt .L_813DD5B4
/* 813DD59C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813DD5A0 | 80 13 00 04 */	lwz r0, 0x4(r19)
/* 813DD5A4 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD5A8 | 41 80 00 0C */	blt .L_813DD5B4
/* 813DD5AC | 38 60 00 01 */	li r3, 0x1
/* 813DD5B0 | 48 00 00 08 */	b .L_813DD5B8
.L_813DD5B4:
/* 813DD5B4 | 38 60 00 00 */	li r3, 0x0
.L_813DD5B8:
/* 813DD5B8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813DD5BC | 48 21 BF 21 */	bl _restgpr_15
/* 813DD5C0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813DD5C4 | 7C 08 03 A6 */	mtlr r0
/* 813DD5C8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813DD5CC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DD3D8

# .text:0x2AC8 | 0x813DD5D0 | size: 0x5A4
.fn iplSDChannelSelect_813DD5D0, global
/* 813DD5D0 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813DD5D4 | 7C 08 02 A6 */	mflr r0
/* 813DD5D8 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 813DD5DC | 39 61 00 80 */	addi r11, r1, 0x80
/* 813DD5E0 | 48 21 BE AD */	bl _savegpr_14
/* 813DD5E4 | 7C 90 23 78 */	mr r16, r4
/* 813DD5E8 | 7C B1 2B 78 */	mr r17, r5
/* 813DD5EC | 7C 6F 1B 78 */	mr r15, r3
/* 813DD5F0 | 7C D2 33 78 */	mr r18, r6
/* 813DD5F4 | 7C F3 3B 78 */	mr r19, r7
/* 813DD5F8 | 7D 14 43 78 */	mr r20, r8
/* 813DD5FC | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813DD600 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 813DD604 | 4B FF F9 DD */	bl iplSDChannelSelect_813DCFE0
/* 813DD608 | 3E C0 48 41 */	lis r22, 0x4841
/* 813DD60C | 3F E0 00 01 */	lis r31, 0x1
/* 813DD610 | 3B 60 FF FF */	li r27, -0x1
/* 813DD614 | 39 C0 FF FF */	li r14, -0x1
/* 813DD618 | 3B B6 54 45 */	addi r29, r22, 0x5445
/* 813DD61C | 3B 9F 00 01 */	addi r28, r31, 0x1
/* 813DD620 | 3B 40 FF FF */	li r26, -0x1
/* 813DD624 | 3B 20 FF FF */	li r25, -0x1
/* 813DD628 | 3B 00 FF FF */	li r24, -0x1
/* 813DD62C | 3A E0 FF FF */	li r23, -0x1
/* 813DD630 | 3B C0 00 00 */	li r30, 0x0
/* 813DD634 | 3A A0 00 00 */	li r21, 0x0
/* 813DD638 | 48 00 00 98 */	b .L_813DD6D0
.L_813DD63C:
/* 813DD63C | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DD640 | 7C 60 AA 14 */	add r3, r0, r21
/* 813DD644 | 7C 95 00 2E */	lwzx r4, r21, r0
/* 813DD648 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 813DD64C | 7C 80 E2 78 */	xor r0, r4, r28
/* 813DD650 | 7C E3 EA 78 */	xor r3, r7, r29
/* 813DD654 | 7C 60 03 79 */	or. r0, r3, r0
/* 813DD658 | 40 82 00 34 */	bne .L_813DD68C
/* 813DD65C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DD660 | 7F DB F3 78 */	mr r27, r30
/* 813DD664 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DD668 | 38 D6 54 45 */	addi r6, r22, 0x5445
/* 813DD66C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813DD670 | 38 BF 00 01 */	addi r5, r31, 0x1
/* 813DD674 | 38 E1 00 24 */	addi r7, r1, 0x24
/* 813DD678 | 39 01 00 20 */	addi r8, r1, 0x20
/* 813DD67C | 4B F5 A7 FD */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813DD680 | 81 C1 00 24 */	lwz r14, 0x24(r1)
/* 813DD684 | 83 41 00 20 */	lwz r26, 0x20(r1)
/* 813DD688 | 48 00 00 40 */	b .L_813DD6C8
.L_813DD68C:
/* 813DD68C | 38 D6 44 45 */	addi r6, r22, 0x4445
/* 813DD690 | 38 BF 00 01 */	addi r5, r31, 0x1
/* 813DD694 | 7C E3 32 78 */	xor r3, r7, r6
/* 813DD698 | 7C 80 2A 78 */	xor r0, r4, r5
/* 813DD69C | 7C 60 03 79 */	or. r0, r3, r0
/* 813DD6A0 | 40 82 00 28 */	bne .L_813DD6C8
/* 813DD6A4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DD6A8 | 7F D9 F3 78 */	mr r25, r30
/* 813DD6AC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DD6B0 | 38 E1 00 1C */	addi r7, r1, 0x1c
/* 813DD6B4 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813DD6B8 | 39 01 00 18 */	addi r8, r1, 0x18
/* 813DD6BC | 4B F5 A7 BD */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813DD6C0 | 83 01 00 1C */	lwz r24, 0x1c(r1)
/* 813DD6C4 | 82 E1 00 18 */	lwz r23, 0x18(r1)
.L_813DD6C8:
/* 813DD6C8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813DD6CC | 3A B5 00 10 */	addi r21, r21, 0x10
.L_813DD6D0:
/* 813DD6D0 | 80 0F 07 38 */	lwz r0, 0x738(r15)
/* 813DD6D4 | 7C 1E 00 40 */	cmplw r30, r0
/* 813DD6D8 | 41 80 FF 64 */	blt .L_813DD63C
/* 813DD6DC | 38 00 00 00 */	li r0, 0x0
/* 813DD6E0 | 3F 80 48 41 */	lis r28, 0x4841
/* 813DD6E4 | 90 14 00 00 */	stw r0, 0x0(r20)
/* 813DD6E8 | 3E C0 81 09 */	lis r22, smArg__Q23ipl6System@ha
/* 813DD6EC | 3B BC 5A 41 */	addi r29, r28, 0x5a41
/* 813DD6F0 | 3F E0 00 01 */	lis r31, 0x1
/* 813DD6F4 | 80 6F 07 38 */	lwz r3, 0x738(r15)
/* 813DD6F8 | 3A D6 90 08 */	addi r22, r22, smArg__Q23ipl6System@l
/* 813DD6FC | 3B C3 FF FF */	subi r30, r3, 0x1
/* 813DD700 | 57 D5 20 36 */	slwi r21, r30, 4
/* 813DD704 | 48 00 01 3C */	b .L_813DD840
.L_813DD708:
/* 813DD708 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DD70C | 7C 60 AA 14 */	add r3, r0, r21
/* 813DD710 | 7C B5 00 2E */	lwzx r5, r21, r0
/* 813DD714 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 813DD718 | 7C C0 EA 78 */	xor r0, r6, r29
/* 813DD71C | 7C 00 2B 79 */	or. r0, r0, r5
/* 813DD720 | 41 82 01 18 */	beq .L_813DD838
/* 813DD724 | 38 1C 54 45 */	addi r0, r28, 0x5445
/* 813DD728 | 38 9F 00 01 */	addi r4, r31, 0x1
/* 813DD72C | 7C C3 02 78 */	xor r3, r6, r0
/* 813DD730 | 7C A0 22 78 */	xor r0, r5, r4
/* 813DD734 | 7C 60 03 79 */	or. r0, r3, r0
/* 813DD738 | 41 82 01 00 */	beq .L_813DD838
/* 813DD73C | 38 7C 44 45 */	addi r3, r28, 0x4445
/* 813DD740 | 7C A0 22 78 */	xor r0, r5, r4
/* 813DD744 | 7C C3 1A 78 */	xor r3, r6, r3
/* 813DD748 | 7C 60 03 79 */	or. r0, r3, r0
/* 813DD74C | 41 82 00 EC */	beq .L_813DD838
/* 813DD750 | 80 76 00 84 */	lwz r3, 0x84(r22)
/* 813DD754 | 38 E1 00 14 */	addi r7, r1, 0x14
/* 813DD758 | 39 01 00 10 */	addi r8, r1, 0x10
/* 813DD75C | 4B F5 A7 1D */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813DD760 | 7C 80 1B 79 */	or. r0, r4, r3
/* 813DD764 | 41 82 00 D4 */	beq .L_813DD838
/* 813DD768 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DD76C | 80 76 00 94 */	lwz r3, 0x94(r22)
/* 813DD770 | 7C 80 AA 14 */	add r4, r0, r21
/* 813DD774 | 7C B5 00 2E */	lwzx r5, r21, r0
/* 813DD778 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 813DD77C | 4B F7 C0 25 */	bl iplSavedata_813597A0
/* 813DD780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DD784 | 40 82 00 B4 */	bne .L_813DD838
/* 813DD788 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DD78C | 38 C0 00 00 */	li r6, 0x0
/* 813DD790 | 80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 813DD794 | 7C 60 AA 14 */	add r3, r0, r21
/* 813DD798 | 80 81 00 28 */	lwz r4, 0x28(r1)
/* 813DD79C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813DD7A0 | 7C 05 02 14 */	add r0, r5, r0
/* 813DD7A4 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813DD7A8 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DD7AC | 7C 60 AA 14 */	add r3, r0, r21
/* 813DD7B0 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813DD7B4 | 7C 04 02 14 */	add r0, r4, r0
/* 813DD7B8 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813DD7BC | 80 6F 07 24 */	lwz r3, 0x724(r15)
/* 813DD7C0 | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 813DD7C4 | 7C 83 A8 6E */	lwzux r4, r3, r21
/* 813DD7C8 | 54 00 18 38 */	slwi r0, r0, 3
/* 813DD7CC | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813DD7D0 | 7C 72 02 14 */	add r3, r18, r0
/* 813DD7D4 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 813DD7D8 | 7C 92 01 2E */	stwx r4, r18, r0
/* 813DD7DC | 80 76 00 84 */	lwz r3, 0x84(r22)
/* 813DD7E0 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 813DD7E4 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 813DD7E8 | 4B F5 B3 75 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813DD7EC | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 813DD7F0 | 7C 64 1B 78 */	mr r4, r3
/* 813DD7F4 | 38 A0 00 2A */	li r5, 0x2a
/* 813DD7F8 | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813DD7FC | 7C 73 02 14 */	add r3, r19, r0
/* 813DD800 | 4B F5 2A 31 */	bl memcpy
/* 813DD804 | 80 74 00 00 */	lwz r3, 0x0(r20)
/* 813DD808 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DD80C | 90 14 00 00 */	stw r0, 0x0(r20)
/* 813DD810 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 813DD814 | 80 11 00 00 */	lwz r0, 0x0(r17)
/* 813DD818 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD81C | 41 80 00 1C */	blt .L_813DD838
/* 813DD820 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 813DD824 | 80 11 00 04 */	lwz r0, 0x4(r17)
/* 813DD828 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD82C | 41 80 00 0C */	blt .L_813DD838
/* 813DD830 | 38 60 00 01 */	li r3, 0x1
/* 813DD834 | 48 00 03 28 */	b .L_813DDB5C
.L_813DD838:
/* 813DD838 | 3B DE FF FF */	subi r30, r30, 0x1
/* 813DD83C | 3A B5 FF F0 */	subi r21, r21, 0x10
.L_813DD840:
/* 813DD840 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813DD844 | 40 80 FE C4 */	bge .L_813DD708
/* 813DD848 | 3A C0 00 2F */	li r22, 0x2f
/* 813DD84C | 3B E0 01 78 */	li r31, 0x178
.L_813DD850:
/* 813DD850 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DD854 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 813DD858 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DD85C | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 813DD860 | 41 80 00 0C */	blt .L_813DD86C
/* 813DD864 | 2C 16 00 30 */	cmpwi r22, 0x30
/* 813DD868 | 41 80 00 10 */	blt .L_813DD878
.L_813DD86C:
/* 813DD86C | 3B 80 00 00 */	li r28, 0x0
/* 813DD870 | 3B A0 00 00 */	li r29, 0x0
/* 813DD874 | 48 00 00 10 */	b .L_813DD884
.L_813DD878:
/* 813DD878 | 7C 60 FA 14 */	add r3, r0, r31
/* 813DD87C | 83 A3 03 40 */	lwz r29, 0x340(r3)
/* 813DD880 | 83 83 03 44 */	lwz r28, 0x344(r3)
.L_813DD884:
/* 813DD884 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DD888 | 7F 86 E3 78 */	mr r6, r28
/* 813DD88C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DD890 | 7F A5 EB 78 */	mr r5, r29
/* 813DD894 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813DD898 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813DD89C | 39 01 00 08 */	addi r8, r1, 0x8
/* 813DD8A0 | 4B F5 A5 D9 */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813DD8A4 | 7C 80 1B 79 */	or. r0, r4, r3
/* 813DD8A8 | 41 82 00 F4 */	beq .L_813DD99C
/* 813DD8AC | 3A A0 00 00 */	li r21, 0x0
/* 813DD8B0 | 3B C0 00 00 */	li r30, 0x0
/* 813DD8B4 | 48 00 00 DC */	b .L_813DD990
.L_813DD8B8:
/* 813DD8B8 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DD8BC | 7C 80 F2 14 */	add r4, r0, r30
/* 813DD8C0 | 7C 1E 00 2E */	lwzx r0, r30, r0
/* 813DD8C4 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813DD8C8 | 7F A0 02 78 */	xor r0, r29, r0
/* 813DD8CC | 7F 83 1A 78 */	xor r3, r28, r3
/* 813DD8D0 | 7C 60 03 79 */	or. r0, r3, r0
/* 813DD8D4 | 40 82 00 B4 */	bne .L_813DD988
/* 813DD8D8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813DD8DC | 38 C0 00 00 */	li r6, 0x0
/* 813DD8E0 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 813DD8E4 | 80 81 00 28 */	lwz r4, 0x28(r1)
/* 813DD8E8 | 7C 03 02 14 */	add r0, r3, r0
/* 813DD8EC | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813DD8F0 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DD8F4 | 7C 60 F2 14 */	add r3, r0, r30
/* 813DD8F8 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813DD8FC | 7C 04 02 14 */	add r0, r4, r0
/* 813DD900 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813DD904 | 80 6F 07 24 */	lwz r3, 0x724(r15)
/* 813DD908 | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 813DD90C | 7C 83 F0 6E */	lwzux r4, r3, r30
/* 813DD910 | 54 00 18 38 */	slwi r0, r0, 3
/* 813DD914 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813DD918 | 7C 72 02 14 */	add r3, r18, r0
/* 813DD91C | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 813DD920 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DD924 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DD928 | 7C 92 01 2E */	stwx r4, r18, r0
/* 813DD92C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813DD930 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813DD934 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813DD938 | 4B F5 B2 25 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813DD93C | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 813DD940 | 7C 64 1B 78 */	mr r4, r3
/* 813DD944 | 38 A0 00 2A */	li r5, 0x2a
/* 813DD948 | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813DD94C | 7C 73 02 14 */	add r3, r19, r0
/* 813DD950 | 4B F5 28 E1 */	bl memcpy
/* 813DD954 | 80 74 00 00 */	lwz r3, 0x0(r20)
/* 813DD958 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DD95C | 90 14 00 00 */	stw r0, 0x0(r20)
/* 813DD960 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 813DD964 | 80 11 00 00 */	lwz r0, 0x0(r17)
/* 813DD968 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD96C | 41 80 00 1C */	blt .L_813DD988
/* 813DD970 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 813DD974 | 80 11 00 04 */	lwz r0, 0x4(r17)
/* 813DD978 | 7C 03 00 00 */	cmpw r3, r0
/* 813DD97C | 41 80 00 0C */	blt .L_813DD988
/* 813DD980 | 38 60 00 01 */	li r3, 0x1
/* 813DD984 | 48 00 01 D8 */	b .L_813DDB5C
.L_813DD988:
/* 813DD988 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 813DD98C | 3B DE 00 10 */	addi r30, r30, 0x10
.L_813DD990:
/* 813DD990 | 80 0F 07 38 */	lwz r0, 0x738(r15)
/* 813DD994 | 7C 15 00 40 */	cmplw r21, r0
/* 813DD998 | 41 80 FF 20 */	blt .L_813DD8B8
.L_813DD99C:
/* 813DD99C | 36 D6 FF FF */	subic. r22, r22, 0x1
/* 813DD9A0 | 3B FF FF F8 */	subi r31, r31, 0x8
/* 813DD9A4 | 40 80 FE AC */	bge .L_813DD850
/* 813DD9A8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813DD9AC | 41 80 00 C0 */	blt .L_813DDA6C
/* 813DD9B0 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DD9B4 | 57 29 20 36 */	slwi r9, r25, 4
/* 813DD9B8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DD9BC | 80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 813DD9C0 | 7C 80 4A 14 */	add r4, r0, r9
/* 813DD9C4 | 81 01 00 28 */	lwz r8, 0x28(r1)
/* 813DD9C8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813DD9CC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DD9D0 | 7F 04 C3 78 */	mr r4, r24
/* 813DD9D4 | 7E E5 BB 78 */	mr r5, r23
/* 813DD9D8 | 7C 06 02 14 */	add r0, r6, r0
/* 813DD9DC | 38 C0 00 00 */	li r6, 0x0
/* 813DD9E0 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813DD9E4 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DD9E8 | 7C E0 4A 14 */	add r7, r0, r9
/* 813DD9EC | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 813DD9F0 | 7C 08 02 14 */	add r0, r8, r0
/* 813DD9F4 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813DD9F8 | 80 EF 07 24 */	lwz r7, 0x724(r15)
/* 813DD9FC | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 813DDA00 | 7D 07 48 6E */	lwzux r8, r7, r9
/* 813DDA04 | 54 00 18 38 */	slwi r0, r0, 3
/* 813DDA08 | 81 27 00 04 */	lwz r9, 0x4(r7)
/* 813DDA0C | 7C F2 02 14 */	add r7, r18, r0
/* 813DDA10 | 91 27 00 04 */	stw r9, 0x4(r7)
/* 813DDA14 | 7D 12 01 2E */	stwx r8, r18, r0
/* 813DDA18 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813DDA1C | 4B F5 B1 41 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813DDA20 | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 813DDA24 | 7C 64 1B 78 */	mr r4, r3
/* 813DDA28 | 38 A0 00 2A */	li r5, 0x2a
/* 813DDA2C | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813DDA30 | 7C 73 02 14 */	add r3, r19, r0
/* 813DDA34 | 4B F5 27 FD */	bl memcpy
/* 813DDA38 | 80 74 00 00 */	lwz r3, 0x0(r20)
/* 813DDA3C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DDA40 | 90 14 00 00 */	stw r0, 0x0(r20)
/* 813DDA44 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 813DDA48 | 80 11 00 00 */	lwz r0, 0x0(r17)
/* 813DDA4C | 7C 03 00 00 */	cmpw r3, r0
/* 813DDA50 | 41 80 00 1C */	blt .L_813DDA6C
/* 813DDA54 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 813DDA58 | 80 11 00 04 */	lwz r0, 0x4(r17)
/* 813DDA5C | 7C 03 00 00 */	cmpw r3, r0
/* 813DDA60 | 41 80 00 0C */	blt .L_813DDA6C
/* 813DDA64 | 38 60 00 01 */	li r3, 0x1
/* 813DDA68 | 48 00 00 F4 */	b .L_813DDB5C
.L_813DDA6C:
/* 813DDA6C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813DDA70 | 41 80 00 C0 */	blt .L_813DDB30
/* 813DDA74 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DDA78 | 57 69 20 36 */	slwi r9, r27, 4
/* 813DDA7C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DDA80 | 80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 813DDA84 | 7C 80 4A 14 */	add r4, r0, r9
/* 813DDA88 | 81 01 00 28 */	lwz r8, 0x28(r1)
/* 813DDA8C | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813DDA90 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DDA94 | 7D C4 73 78 */	mr r4, r14
/* 813DDA98 | 7F 45 D3 78 */	mr r5, r26
/* 813DDA9C | 7C 06 02 14 */	add r0, r6, r0
/* 813DDAA0 | 38 C0 00 00 */	li r6, 0x0
/* 813DDAA4 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813DDAA8 | 80 0F 07 24 */	lwz r0, 0x724(r15)
/* 813DDAAC | 7C E0 4A 14 */	add r7, r0, r9
/* 813DDAB0 | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 813DDAB4 | 7C 08 02 14 */	add r0, r8, r0
/* 813DDAB8 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813DDABC | 80 EF 07 24 */	lwz r7, 0x724(r15)
/* 813DDAC0 | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 813DDAC4 | 7D 07 48 6E */	lwzux r8, r7, r9
/* 813DDAC8 | 54 00 18 38 */	slwi r0, r0, 3
/* 813DDACC | 81 27 00 04 */	lwz r9, 0x4(r7)
/* 813DDAD0 | 7C F2 02 14 */	add r7, r18, r0
/* 813DDAD4 | 91 27 00 04 */	stw r9, 0x4(r7)
/* 813DDAD8 | 7D 12 01 2E */	stwx r8, r18, r0
/* 813DDADC | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813DDAE0 | 4B F5 B0 7D */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813DDAE4 | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 813DDAE8 | 7C 64 1B 78 */	mr r4, r3
/* 813DDAEC | 38 A0 00 2A */	li r5, 0x2a
/* 813DDAF0 | 1C 00 00 2A */	mulli r0, r0, 0x2a
/* 813DDAF4 | 7C 73 02 14 */	add r3, r19, r0
/* 813DDAF8 | 4B F5 27 39 */	bl memcpy
/* 813DDAFC | 80 74 00 00 */	lwz r3, 0x0(r20)
/* 813DDB00 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813DDB04 | 90 14 00 00 */	stw r0, 0x0(r20)
/* 813DDB08 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 813DDB0C | 80 11 00 00 */	lwz r0, 0x0(r17)
/* 813DDB10 | 7C 03 00 00 */	cmpw r3, r0
/* 813DDB14 | 41 80 00 1C */	blt .L_813DDB30
/* 813DDB18 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 813DDB1C | 80 11 00 04 */	lwz r0, 0x4(r17)
/* 813DDB20 | 7C 03 00 00 */	cmpw r3, r0
/* 813DDB24 | 41 80 00 0C */	blt .L_813DDB30
/* 813DDB28 | 38 60 00 01 */	li r3, 0x1
/* 813DDB2C | 48 00 00 30 */	b .L_813DDB5C
.L_813DDB30:
/* 813DDB30 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 813DDB34 | 80 10 00 00 */	lwz r0, 0x0(r16)
/* 813DDB38 | 7C 03 00 00 */	cmpw r3, r0
/* 813DDB3C | 41 80 00 1C */	blt .L_813DDB58
/* 813DDB40 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 813DDB44 | 80 10 00 04 */	lwz r0, 0x4(r16)
/* 813DDB48 | 7C 03 00 00 */	cmpw r3, r0
/* 813DDB4C | 41 80 00 0C */	blt .L_813DDB58
/* 813DDB50 | 38 60 00 01 */	li r3, 0x1
/* 813DDB54 | 48 00 00 08 */	b .L_813DDB5C
.L_813DDB58:
/* 813DDB58 | 38 60 00 00 */	li r3, 0x0
.L_813DDB5C:
/* 813DDB5C | 39 61 00 80 */	addi r11, r1, 0x80
/* 813DDB60 | 48 21 B9 79 */	bl _restgpr_14
/* 813DDB64 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 813DDB68 | 7C 08 03 A6 */	mtlr r0
/* 813DDB6C | 38 21 00 80 */	addi r1, r1, 0x80
/* 813DDB70 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DD5D0

# .text:0x306C | 0x813DDB74 | size: 0x40
.fn iplSDChannelSelect_813DDB74, global
/* 813DDB74 | 2C 09 00 02 */	cmpwi r9, 0x2
/* 813DDB78 | 41 82 00 2C */	beq .L_813DDBA4
/* 813DDB7C | 40 80 00 14 */	bge .L_813DDB90
/* 813DDB80 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 813DDB84 | 41 82 00 18 */	beq .L_813DDB9C
/* 813DDB88 | 40 80 00 18 */	bge .L_813DDBA0
/* 813DDB8C | 48 00 00 20 */	b .L_813DDBAC
.L_813DDB90:
/* 813DDB90 | 2C 09 00 04 */	cmpwi r9, 0x4
/* 813DDB94 | 40 80 00 18 */	bge .L_813DDBAC
/* 813DDB98 | 48 00 00 10 */	b .L_813DDBA8
.L_813DDB9C:
/* 813DDB9C | 4B FF FA 34 */	b iplSDChannelSelect_813DD5D0
.L_813DDBA0:
/* 813DDBA0 | 4B FF F8 38 */	b iplSDChannelSelect_813DD3D8
.L_813DDBA4:
/* 813DDBA4 | 4B FF F6 9C */	b iplSDChannelSelect_813DD240
.L_813DDBA8:
/* 813DDBA8 | 4B FF F5 04 */	b iplSDChannelSelect_813DD0AC
.L_813DDBAC:
/* 813DDBAC | 38 60 00 00 */	li r3, 0x0
/* 813DDBB0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDB74

# .text:0x30AC | 0x813DDBB4 | size: 0xB4
.fn iplSDChannelSelect_813DDBB4, global
/* 813DDBB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DDBB8 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813DDBBC | 39 00 00 01 */	li r8, 0x1
/* 813DDBC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DDBC4 | 81 43 00 9C */	lwz r10, 0x9c(r3)
/* 813DDBC8 | 80 83 00 A4 */	lwz r4, 0xa4(r3)
/* 813DDBCC | 1C 0A 00 0C */	mulli r0, r10, 0xc
/* 813DDBD0 | 7D 64 02 14 */	add r11, r4, r0
/* 813DDBD4 | 40 82 00 08 */	bne .L_813DDBDC
/* 813DDBD8 | 39 00 FF FF */	li r8, -0x1
.L_813DDBDC:
/* 813DDBDC | 80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 813DDBE0 | 7D 8B 42 14 */	add r12, r11, r8
/* 813DDBE4 | 38 E0 00 0C */	li r7, 0xc
/* 813DDBE8 | 1D 20 00 0C */	mulli r9, r0, 0xc
.L_813DDBEC:
/* 813DDBEC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813DDBF0 | 40 80 00 08 */	bge .L_813DDBF8
/* 813DDBF4 | 39 89 FF FF */	subi r12, r9, 0x1
.L_813DDBF8:
/* 813DDBF8 | 7C 0C 48 00 */	cmpw r12, r9
/* 813DDBFC | 41 80 00 08 */	blt .L_813DDC04
/* 813DDC00 | 39 80 00 00 */	li r12, 0x0
.L_813DDC04:
/* 813DDC04 | 7C 0C 58 00 */	cmpw r12, r11
/* 813DDC08 | 40 82 00 18 */	bne .L_813DDC20
/* 813DDC0C | 91 45 00 00 */	stw r10, 0x0(r5)
/* 813DDC10 | 38 80 00 00 */	li r4, 0x0
/* 813DDC14 | 80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 813DDC18 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 813DDC1C | 48 00 00 3C */	b .L_813DDC58
.L_813DDC20:
/* 813DDC20 | 7F EC 3B D6 */	divw r31, r12, r7
/* 813DDC24 | 80 83 07 3C */	lwz r4, 0x73c(r3)
/* 813DDC28 | 55 80 10 3A */	slwi r0, r12, 2
/* 813DDC2C | 7C 04 00 2E */	lwzx r0, r4, r0
/* 813DDC30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DDC34 | 7C 1F 39 D6 */	mullw r0, r31, r7
/* 813DDC38 | 7C 00 60 50 */	subf r0, r0, r12
/* 813DDC3C | 41 82 00 14 */	beq .L_813DDC50
/* 813DDC40 | 93 E5 00 00 */	stw r31, 0x0(r5)
/* 813DDC44 | 38 80 00 01 */	li r4, 0x1
/* 813DDC48 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 813DDC4C | 48 00 00 0C */	b .L_813DDC58
.L_813DDC50:
/* 813DDC50 | 7D 8C 42 14 */	add r12, r12, r8
/* 813DDC54 | 4B FF FF 98 */	b .L_813DDBEC
.L_813DDC58:
/* 813DDC58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DDC5C | 7C 83 23 78 */	mr r3, r4
/* 813DDC60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DDC64 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDBB4

# .text:0x3160 | 0x813DDC68 | size: 0x18
.fn iplSDChannelSelect_813DDC68, global
/* 813DDC68 | 7C A0 2B 78 */	mr r0, r5
/* 813DDC6C | 7C C5 33 78 */	mr r5, r6
/* 813DDC70 | 90 83 00 9C */	stw r4, 0x9c(r3)
/* 813DDC74 | 7C 06 03 78 */	mr r6, r0
/* 813DDC78 | 90 03 00 A4 */	stw r0, 0xa4(r3)
/* 813DDC7C | 48 00 1A 54 */	b iplSDChannelSelect_813DF6D0
.endfn iplSDChannelSelect_813DDC68

# .text:0x3178 | 0x813DDC80 | size: 0x58
.fn iplSDChannelSelect_813DDC80, global
/* 813DDC80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DDC84 | 7C 08 02 A6 */	mflr r0
/* 813DDC88 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813DDC8C | 3C 80 81 65 */	lis r4, lbl_8165439C@ha
/* 813DDC90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DDC94 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813DDC98 | 38 84 43 9C */	addi r4, r4, lbl_8165439C@l
/* 813DDC9C | 38 C0 00 0A */	li r6, 0xa
/* 813DDCA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DDCA4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DDCA8 | 80 65 00 AC */	lwz r3, 0xac(r5)
/* 813DDCAC | 38 A0 00 04 */	li r5, 0x4
/* 813DDCB0 | 4B F6 8F 65 */	bl iplDialogWindow_81346C14
/* 813DDCB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DDCB8 | 41 82 00 0C */	beq .L_813DDCC4
/* 813DDCBC | 38 00 00 19 */	li r0, 0x19
/* 813DDCC0 | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813DDCC4:
/* 813DDCC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DDCC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DDCCC | 7C 08 03 A6 */	mtlr r0
/* 813DDCD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DDCD4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDC80

# .text:0x31D0 | 0x813DDCD8 | size: 0x8C
.fn iplSDChannelSelect_813DDCD8, global
/* 813DDCD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DDCDC | 7C 08 02 A6 */	mflr r0
/* 813DDCE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DDCE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DDCE8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813DDCEC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813DDCF0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DDCF4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DDCF8 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 813DDCFC | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813DDD00 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813DDD04 | 41 82 00 48 */	beq .L_813DDD4C
/* 813DDD08 | 80 63 07 4C */	lwz r3, 0x74c(r3)
/* 813DDD0C | 38 80 00 00 */	li r4, 0x0
/* 813DDD10 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DDD14 | 48 13 46 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DDD18 | 4B F8 BF 0D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813DDD1C | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813DDD20 | 38 00 00 00 */	li r0, 0x0
/* 813DDD24 | 90 03 03 3C */	stw r0, 0x33c(r3)
/* 813DDD28 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813DDD2C | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813DDD30 | 4B F7 A1 05 */	bl flushAsync__Q33ipl8savedata7ManagerFPQ23EGG4Heap
/* 813DDD34 | 3B E0 00 01 */	li r31, 0x1
/* 813DDD38 | 90 7E 07 64 */	stw r3, 0x764(r30)
/* 813DDD3C | 80 7E 07 18 */	lwz r3, 0x718(r30)
/* 813DDD40 | 93 FE 00 98 */	stw r31, 0x98(r30)
/* 813DDD44 | 4B F6 AF F5 */	bl mount_sd_async__Q23ipl12NandSDWorkerFv
/* 813DDD48 | 93 FE 07 08 */	stw r31, 0x708(r30)
.L_813DDD4C:
/* 813DDD4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DDD50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DDD54 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DDD58 | 7C 08 03 A6 */	mtlr r0
/* 813DDD5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DDD60 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDCD8

# .text:0x325C | 0x813DDD64 | size: 0x58
.fn iplSDChannelSelect_813DDD64, global
/* 813DDD64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DDD68 | 7C 08 02 A6 */	mflr r0
/* 813DDD6C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813DDD70 | 3C 80 81 65 */	lis r4, lbl_8165440C@ha
/* 813DDD74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DDD78 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813DDD7C | 38 84 44 0C */	addi r4, r4, lbl_8165440C@l
/* 813DDD80 | 38 C0 00 0A */	li r6, 0xa
/* 813DDD84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DDD88 | 7C 7F 1B 78 */	mr r31, r3
/* 813DDD8C | 80 65 00 AC */	lwz r3, 0xac(r5)
/* 813DDD90 | 38 A0 00 03 */	li r5, 0x3
/* 813DDD94 | 4B F6 8E 81 */	bl iplDialogWindow_81346C14
/* 813DDD98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DDD9C | 41 82 00 0C */	beq .L_813DDDA8
/* 813DDDA0 | 38 00 00 1B */	li r0, 0x1b
/* 813DDDA4 | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813DDDA8:
/* 813DDDA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DDDAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DDDB0 | 7C 08 03 A6 */	mtlr r0
/* 813DDDB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DDDB8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDD64

# .text:0x32B4 | 0x813DDDBC | size: 0x5C
.fn iplSDChannelSelect_813DDDBC, global
/* 813DDDBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DDDC0 | 7C 08 02 A6 */	mflr r0
/* 813DDDC4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813DDDC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DDDCC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813DDDD0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DDDD4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DDDD8 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813DDDDC | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813DDDE0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813DDDE4 | 41 82 00 20 */	beq .L_813DDE04
/* 813DDDE8 | 80 63 07 4C */	lwz r3, 0x74c(r3)
/* 813DDDEC | 38 80 00 00 */	li r4, 0x0
/* 813DDDF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DDDF4 | 48 13 45 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DDDF8 | 4B F8 BE 2D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813DDDFC | 38 00 00 01 */	li r0, 0x1
/* 813DDE00 | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813DDE04:
/* 813DDE04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DDE08 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DDE0C | 7C 08 03 A6 */	mtlr r0
/* 813DDE10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DDE14 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDDBC

# .text:0x3310 | 0x813DDE18 | size: 0x2C
.fn iplSDChannelSelect_813DDE18, global
/* 813DDE18 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813DDE1C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813DDE20 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813DDE24 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813DDE28 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813DDE2C | 4D 82 00 20 */	beqlr
/* 813DDE30 | 38 80 00 00 */	li r4, 0x0
/* 813DDE34 | 38 00 00 01 */	li r0, 0x1
/* 813DDE38 | 98 83 07 59 */	stb r4, 0x759(r3)
/* 813DDE3C | 90 03 00 98 */	stw r0, 0x98(r3)
/* 813DDE40 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDE18

# .text:0x333C | 0x813DDE44 | size: 0x24
.fn iplSDChannelSelect_813DDE44, global
/* 813DDE44 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813DDE48 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813DDE4C | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813DDE50 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813DDE54 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813DDE58 | 4D 82 00 20 */	beqlr
/* 813DDE5C | 38 00 00 01 */	li r0, 0x1
/* 813DDE60 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 813DDE64 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDE44

# .text:0x3360 | 0x813DDE68 | size: 0x28
.fn iplSDChannelSelect_813DDE68, global
/* 813DDE68 | 80 03 07 44 */	lwz r0, 0x744(r3)
/* 813DDE6C | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813DDE70 | 40 80 00 18 */	bge .L_813DDE88
/* 813DDE74 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813DDE78 | 40 80 00 08 */	bge .L_813DDE80
/* 813DDE7C | 48 00 00 0C */	b .L_813DDE88
.L_813DDE80:
/* 813DDE80 | 38 60 00 00 */	li r3, 0x0
/* 813DDE84 | 4E 80 00 20 */	blr
.L_813DDE88:
/* 813DDE88 | 38 60 00 01 */	li r3, 0x1
/* 813DDE8C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDE68

# .text:0x3388 | 0x813DDE90 | size: 0x1B0
.fn iplSDChannelSelect_813DDE90, global
/* 813DDE90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DDE94 | 7C 08 02 A6 */	mflr r0
/* 813DDE98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DDE9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DDEA0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DDEA4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DDEA8 | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813DDEAC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DDEB0 | 40 82 00 B8 */	bne .L_813DDF68
/* 813DDEB4 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813DDEB8 | 38 80 00 00 */	li r4, 0x0
/* 813DDEBC | 4B F8 CC 15 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813DDEC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DDEC4 | 40 82 00 A4 */	bne .L_813DDF68
/* 813DDEC8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DDECC | 38 80 00 24 */	li r4, 0x24
/* 813DDED0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DDED4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813DDED8 | 48 02 D2 61 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813DDEDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DDEE0 | 7C 7F 1B 78 */	mr r31, r3
/* 813DDEE4 | 41 82 00 84 */	beq .L_813DDF68
/* 813DDEE8 | 80 9E 00 94 */	lwz r4, 0x94(r30)
/* 813DDEEC | 48 00 C2 A1 */	bl iplSDChannelButton_813EA18C
/* 813DDEF0 | 80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 813DDEF4 | 38 60 00 03 */	li r3, 0x3
/* 813DDEF8 | 90 7E 00 98 */	stw r3, 0x98(r30)
/* 813DDEFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DDF00 | 40 81 00 18 */	ble .L_813DDF18
/* 813DDF04 | 7F E3 FB 78 */	mr r3, r31
/* 813DDF08 | 38 80 00 01 */	li r4, 0x1
/* 813DDF0C | 38 A0 00 01 */	li r5, 0x1
/* 813DDF10 | 48 00 C5 09 */	bl iplSDChannelButton_813EA418
/* 813DDF14 | 48 00 00 14 */	b .L_813DDF28
.L_813DDF18:
/* 813DDF18 | 7F E3 FB 78 */	mr r3, r31
/* 813DDF1C | 38 80 00 01 */	li r4, 0x1
/* 813DDF20 | 38 A0 00 00 */	li r5, 0x0
/* 813DDF24 | 48 00 C4 F5 */	bl iplSDChannelButton_813EA418
.L_813DDF28:
/* 813DDF28 | 80 9E 00 A0 */	lwz r4, 0xa0(r30)
/* 813DDF2C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813DDF30 | 40 81 00 28 */	ble .L_813DDF58
/* 813DDF34 | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 813DDF38 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813DDF3C | 7C 03 00 00 */	cmpw r3, r0
/* 813DDF40 | 40 80 00 18 */	bge .L_813DDF58
/* 813DDF44 | 7F E3 FB 78 */	mr r3, r31
/* 813DDF48 | 38 80 00 00 */	li r4, 0x0
/* 813DDF4C | 38 A0 00 01 */	li r5, 0x1
/* 813DDF50 | 48 00 C4 C9 */	bl iplSDChannelButton_813EA418
/* 813DDF54 | 48 00 00 14 */	b .L_813DDF68
.L_813DDF58:
/* 813DDF58 | 7F E3 FB 78 */	mr r3, r31
/* 813DDF5C | 38 80 00 00 */	li r4, 0x0
/* 813DDF60 | 38 A0 00 00 */	li r5, 0x0
/* 813DDF64 | 48 00 C4 B5 */	bl iplSDChannelButton_813EA418
.L_813DDF68:
/* 813DDF68 | 80 1E 00 98 */	lwz r0, 0x98(r30)
/* 813DDF6C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813DDF70 | 40 82 00 54 */	bne .L_813DDFC4
/* 813DDF74 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813DDF78 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813DDF7C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813DDF80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DDF84 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813DDF88 | 7D 89 03 A6 */	mtctr r12
/* 813DDF8C | 4E 80 04 21 */	bctrl
/* 813DDF90 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813DDF94 | 40 82 00 30 */	bne .L_813DDFC4
/* 813DDF98 | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813DDF9C | 80 03 03 3C */	lwz r0, 0x33c(r3)
/* 813DDFA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DDFA4 | 41 82 00 18 */	beq .L_813DDFBC
/* 813DDFA8 | 38 60 00 00 */	li r3, 0x0
/* 813DDFAC | 38 00 00 18 */	li r0, 0x18
/* 813DDFB0 | 90 7E 07 54 */	stw r3, 0x754(r30)
/* 813DDFB4 | 90 1E 00 98 */	stw r0, 0x98(r30)
/* 813DDFB8 | 48 00 00 0C */	b .L_813DDFC4
.L_813DDFBC:
/* 813DDFBC | 38 00 00 01 */	li r0, 0x1
/* 813DDFC0 | 90 1E 00 98 */	stw r0, 0x98(r30)
.L_813DDFC4:
/* 813DDFC4 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813DDFC8 | 4B F8 C7 3D */	bl calc__Q33ipl6layout6ObjectFv
/* 813DDFCC | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813DDFD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DDFD4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813DDFD8 | 7D 89 03 A6 */	mtctr r12
/* 813DDFDC | 4E 80 04 21 */	bctrl
/* 813DDFE0 | 7F C3 F3 78 */	mr r3, r30
/* 813DDFE4 | 48 00 0F 2D */	bl iplSDChannelSelect_813DEF10
/* 813DDFE8 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813DDFEC | 4B F8 C7 19 */	bl calc__Q33ipl6layout6ObjectFv
/* 813DDFF0 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813DDFF4 | 4B F8 C7 11 */	bl calc__Q33ipl6layout6ObjectFv
/* 813DDFF8 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813DDFFC | 4B F8 C7 09 */	bl calc__Q33ipl6layout6ObjectFv
/* 813DE000 | 80 7E 07 48 */	lwz r3, 0x748(r30)
/* 813DE004 | 4B F8 C7 01 */	bl calc__Q33ipl6layout6ObjectFv
/* 813DE008 | 80 7E 07 4C */	lwz r3, 0x74c(r30)
/* 813DE00C | 4B F8 C6 F9 */	bl calc__Q33ipl6layout6ObjectFv
/* 813DE010 | 80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 813DE014 | 4B F8 C6 F1 */	bl calc__Q33ipl6layout6ObjectFv
/* 813DE018 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813DE01C | 4B F8 C6 E9 */	bl calc__Q33ipl6layout6ObjectFv
/* 813DE020 | 7F C3 F3 78 */	mr r3, r30
/* 813DE024 | 4B FF E9 15 */	bl iplSDChannelSelect_813DC938
/* 813DE028 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DE02C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DE030 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DE034 | 7C 08 03 A6 */	mtlr r0
/* 813DE038 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DE03C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DDE90

# .text:0x3538 | 0x813DE040 | size: 0x30
.fn iplSDChannelSelect_813DE040, global
/* 813DE040 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DE044 | 7C 08 02 A6 */	mflr r0
/* 813DE048 | 38 80 00 00 */	li r4, 0x0
/* 813DE04C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DE050 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813DE054 | 4B F8 CA 7D */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813DE058 | 7C 60 00 34 */	cntlzw r0, r3
/* 813DE05C | 54 03 D9 7E */	srwi r3, r0, 5
/* 813DE060 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DE064 | 7C 08 03 A6 */	mtlr r0
/* 813DE068 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DE06C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DE040

# .text:0x3568 | 0x813DE070 | size: 0x1DC
.fn iplSDChannelSelect_813DE070, global
/* 813DE070 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DE074 | 7C 08 02 A6 */	mflr r0
/* 813DE078 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DE07C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DE080 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DE084 | 7C 7E 1B 78 */	mr r30, r3
/* 813DE088 | 83 E3 00 98 */	lwz r31, 0x98(r3)
/* 813DE08C | 2C 1F 00 0D */	cmpwi r31, 0xd
/* 813DE090 | 40 82 00 0C */	bne .L_813DE09C
/* 813DE094 | 38 60 00 00 */	li r3, 0x0
/* 813DE098 | 48 00 01 9C */	b .L_813DE234
.L_813DE09C:
/* 813DE09C | 28 1F 00 1D */	cmplwi r31, 0x1d
/* 813DE0A0 | 41 81 00 DC */	bgt .L_813DE17C
/* 813DE0A4 | 3C 80 81 65 */	lis r4, jumptable_81654694@ha
/* 813DE0A8 | 57 E0 10 3A */	slwi r0, r31, 2
/* 813DE0AC | 38 84 46 94 */	addi r4, r4, jumptable_81654694@l
/* 813DE0B0 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813DE0B4 | 7C 89 03 A6 */	mtctr r4
/* 813DE0B8 | 4E 80 04 20 */	bctr
.L_813DE0BC:
/* 813DE0BC | 48 00 11 ED */	bl iplSDChannelSelect_813DF2A8
/* 813DE0C0 | 48 00 00 BC */	b .L_813DE17C
.L_813DE0C4:
/* 813DE0C4 | 48 00 13 1D */	bl iplSDChannelSelect_813DF3E0
/* 813DE0C8 | 48 00 00 B4 */	b .L_813DE17C
.L_813DE0CC:
/* 813DE0CC | 48 00 13 31 */	bl iplSDChannelSelect_813DF3FC
/* 813DE0D0 | 48 00 00 AC */	b .L_813DE17C
.L_813DE0D4:
/* 813DE0D4 | 7F C5 F3 78 */	mr r5, r30
/* 813DE0D8 | 7F C7 F3 78 */	mr r7, r30
/* 813DE0DC | 38 80 00 23 */	li r4, 0x23
/* 813DE0E0 | 38 C0 00 00 */	li r6, 0x0
/* 813DE0E4 | 48 02 BD A5 */	bl fn_81409E88
/* 813DE0E8 | 38 00 00 06 */	li r0, 0x6
/* 813DE0EC | 90 1E 00 98 */	stw r0, 0x98(r30)
/* 813DE0F0 | 48 00 00 8C */	b .L_813DE17C
.L_813DE0F4:
/* 813DE0F4 | 48 00 14 19 */	bl iplSDChannelSelect_813DF50C
/* 813DE0F8 | 48 00 00 84 */	b .L_813DE17C
.L_813DE0FC:
/* 813DE0FC | 38 00 00 0D */	li r0, 0xd
/* 813DE100 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 813DE104 | 48 00 00 78 */	b .L_813DE17C
.L_813DE108:
/* 813DE108 | 48 00 14 51 */	bl iplSDChannelSelect_813DF558
/* 813DE10C | 48 00 00 70 */	b .L_813DE17C
.L_813DE110:
/* 813DE110 | 48 00 34 59 */	bl iplSDChannelSelect_813E1568
/* 813DE114 | 48 00 00 68 */	b .L_813DE17C
.L_813DE118:
/* 813DE118 | 48 00 35 75 */	bl iplSDChannelSelect_813E168C
/* 813DE11C | 48 00 00 60 */	b .L_813DE17C
.L_813DE120:
/* 813DE120 | 48 00 38 3D */	bl iplSDChannelSelect_813E195C
/* 813DE124 | 48 00 00 58 */	b .L_813DE17C
.L_813DE128:
/* 813DE128 | 48 00 38 A1 */	bl iplSDChannelSelect_813E19C8
/* 813DE12C | 48 00 00 50 */	b .L_813DE17C
.L_813DE130:
/* 813DE130 | 48 00 39 01 */	bl iplSDChannelSelect_813E1A30
/* 813DE134 | 48 00 00 48 */	b .L_813DE17C
.L_813DE138:
/* 813DE138 | 48 00 3B 01 */	bl iplSDChannelSelect_813E1C38
/* 813DE13C | 48 00 00 40 */	b .L_813DE17C
.L_813DE140:
/* 813DE140 | 48 00 3C 11 */	bl iplSDChannelSelect_813E1D50
/* 813DE144 | 48 00 00 38 */	b .L_813DE17C
.L_813DE148:
/* 813DE148 | 48 00 3D 05 */	bl iplSDChannelSelect_813E1E4C
/* 813DE14C | 48 00 00 30 */	b .L_813DE17C
.L_813DE150:
/* 813DE150 | 4B FF FB 31 */	bl iplSDChannelSelect_813DDC80
/* 813DE154 | 48 00 00 28 */	b .L_813DE17C
.L_813DE158:
/* 813DE158 | 4B FF FB 81 */	bl iplSDChannelSelect_813DDCD8
/* 813DE15C | 48 00 00 20 */	b .L_813DE17C
.L_813DE160:
/* 813DE160 | 4B FF FC 05 */	bl iplSDChannelSelect_813DDD64
/* 813DE164 | 48 00 00 18 */	b .L_813DE17C
.L_813DE168:
/* 813DE168 | 4B FF FC 55 */	bl iplSDChannelSelect_813DDDBC
/* 813DE16C | 48 00 00 10 */	b .L_813DE17C
.L_813DE170:
/* 813DE170 | 4B FF FC A9 */	bl iplSDChannelSelect_813DDE18
/* 813DE174 | 48 00 00 08 */	b .L_813DE17C
.L_813DE178:
/* 813DE178 | 4B FF FC CD */	bl iplSDChannelSelect_813DDE44
.L_813DE17C:
/* 813DE17C | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 813DE180 | 40 82 00 A4 */	bne .L_813DE224
/* 813DE184 | 80 1E 00 98 */	lwz r0, 0x98(r30)
/* 813DE188 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DE18C | 41 82 00 98 */	beq .L_813DE224
/* 813DE190 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813DE194 | 41 82 00 90 */	beq .L_813DE224
/* 813DE198 | 3B E0 00 00 */	li r31, 0x0
/* 813DE19C | 48 00 00 48 */	b .L_813DE1E4
.L_813DE1A0:
/* 813DE1A0 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 813DE1A4 | 80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 813DE1A8 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 813DE1AC | 7C 04 00 00 */	cmpw r4, r0
/* 813DE1B0 | 40 82 00 34 */	bne .L_813DE1E4
/* 813DE1B4 | 80 1E 00 98 */	lwz r0, 0x98(r30)
/* 813DE1B8 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813DE1BC | 40 82 00 10 */	bne .L_813DE1CC
/* 813DE1C0 | 80 1E 00 A4 */	lwz r0, 0xa4(r30)
/* 813DE1C4 | 7C 03 00 00 */	cmpw r3, r0
/* 813DE1C8 | 41 82 00 10 */	beq .L_813DE1D8
.L_813DE1CC:
/* 813DE1CC | 7F E3 FB 78 */	mr r3, r31
/* 813DE1D0 | 38 80 00 01 */	li r4, 0x1
/* 813DE1D4 | 48 00 53 15 */	bl iplSDChannelObj_813E34E8
.L_813DE1D8:
/* 813DE1D8 | 7F E3 FB 78 */	mr r3, r31
/* 813DE1DC | 38 80 00 01 */	li r4, 0x1
/* 813DE1E0 | 48 00 53 55 */	bl iplSDChannelObj_813E3534
.L_813DE1E4:
/* 813DE1E4 | 7F E4 FB 78 */	mr r4, r31
/* 813DE1E8 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813DE1EC | 48 13 40 F1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DE1F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE1F4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DE1F8 | 40 82 FF A8 */	bne .L_813DE1A0
/* 813DE1FC | 3B E0 00 00 */	li r31, 0x0
.L_813DE200:
/* 813DE200 | 7F C3 F3 78 */	mr r3, r30
/* 813DE204 | 7F E4 FB 78 */	mr r4, r31
/* 813DE208 | 48 00 25 AD */	bl iplSDChannelSelect_813E07B4
/* 813DE20C | 7C 64 1B 78 */	mr r4, r3
/* 813DE210 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813DE214 | 4B F8 D0 05 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813DE218 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813DE21C | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813DE220 | 41 80 FF E0 */	blt .L_813DE200
.L_813DE224:
/* 813DE224 | 80 7E 00 98 */	lwz r3, 0x98(r30)
/* 813DE228 | 38 03 FF FC */	subi r0, r3, 0x4
/* 813DE22C | 7C 00 00 34 */	cntlzw r0, r0
/* 813DE230 | 54 03 D9 7E */	srwi r3, r0, 5
.L_813DE234:
/* 813DE234 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DE238 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DE23C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DE240 | 7C 08 03 A6 */	mtlr r0
/* 813DE244 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DE248 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DE070

# .text:0x3744 | 0x813DE24C | size: 0xA0
.fn iplSDChannelSelect_813DE24C, global
/* 813DE24C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DE250 | 7C 08 02 A6 */	mflr r0
/* 813DE254 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DE258 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DE25C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DE260 | 7C 7E 1B 78 */	mr r30, r3
/* 813DE264 | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813DE268 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813DE26C | 40 82 00 68 */	bne .L_813DE2D4
/* 813DE270 | 4B FF D3 DD */	bl iplSDChannelSelect_813DB64C
/* 813DE274 | 7F C3 F3 78 */	mr r3, r30
/* 813DE278 | 4B FF D4 15 */	bl iplSDChannelSelect_813DB68C
/* 813DE27C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813DE280 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813DE284 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813DE288 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE28C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813DE290 | 7D 89 03 A6 */	mtctr r12
/* 813DE294 | 4E 80 04 21 */	bctrl
/* 813DE298 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813DE29C | 38 80 00 00 */	li r4, 0x0
/* 813DE2A0 | 4B F8 3B 81 */	bl setEnable__Q23ipl11TVRCManagerFi
/* 813DE2A4 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813DE2A8 | 4B F5 99 BD */	bl refreshAsync__Q33ipl7channel7ManagerFv
/* 813DE2AC | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 813DE2B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DE2B4 | 41 82 00 0C */	beq .L_813DE2C0
/* 813DE2B8 | 38 60 00 00 */	li r3, 0x0
/* 813DE2BC | 48 00 00 08 */	b .L_813DE2C4
.L_813DE2C0:
/* 813DE2C0 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
.L_813DE2C4:
/* 813DE2C4 | 88 A3 0A 30 */	lbz r5, 0xa30(r3)
/* 813DE2C8 | 7F C3 F3 78 */	mr r3, r30
/* 813DE2CC | 38 80 00 04 */	li r4, 0x4
/* 813DE2D0 | 48 02 BC C5 */	bl fn_81409F94
.L_813DE2D4:
/* 813DE2D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DE2D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DE2DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DE2E0 | 7C 08 03 A6 */	mtlr r0
/* 813DE2E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DE2E8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DE24C

# .text:0x37E4 | 0x813DE2EC | size: 0x50
.fn iplSDChannelSelect_813DE2EC, global
/* 813DE2EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DE2F0 | 7C 08 02 A6 */	mflr r0
/* 813DE2F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DE2F8 | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813DE2FC | 38 60 00 00 */	li r3, 0x0
/* 813DE300 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813DE304 | 40 82 00 28 */	bne .L_813DE32C
/* 813DE308 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DE30C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DE310 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813DE314 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE318 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813DE31C | 7D 89 03 A6 */	mtctr r12
/* 813DE320 | 4E 80 04 21 */	bctrl
/* 813DE324 | 7C 60 00 34 */	cntlzw r0, r3
/* 813DE328 | 54 03 D9 7E */	srwi r3, r0, 5
.L_813DE32C:
/* 813DE32C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DE330 | 7C 08 03 A6 */	mtlr r0
/* 813DE334 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DE338 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DE2EC

# .text:0x3834 | 0x813DE33C | size: 0x38C
.fn iplSDChannelSelect_813DE33C, global
/* 813DE33C | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 813DE340 | 7C 08 02 A6 */	mflr r0
/* 813DE344 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 813DE348 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813DE34C | 48 21 B1 69 */	bl _savegpr_24
/* 813DE350 | 80 83 00 98 */	lwz r4, 0x98(r3)
/* 813DE354 | 3F 40 81 65 */	lis r26, lbl_81654088@ha
/* 813DE358 | 7C 7D 1B 78 */	mr r29, r3
/* 813DE35C | 2C 04 00 0D */	cmpwi r4, 0xd
/* 813DE360 | 3B 5A 40 88 */	addi r26, r26, lbl_81654088@l
/* 813DE364 | 41 82 02 C8 */	beq .L_813DE62C
/* 813DE368 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DE36C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DE370 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813DE374 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813DE378 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DE37C | 40 82 02 B0 */	bne .L_813DE62C
/* 813DE380 | 2C 04 00 07 */	cmpwi r4, 0x7
/* 813DE384 | 41 82 00 14 */	beq .L_813DE398
/* 813DE388 | 2C 04 00 0C */	cmpwi r4, 0xc
/* 813DE38C | 41 82 00 0C */	beq .L_813DE398
/* 813DE390 | 2C 04 00 0E */	cmpwi r4, 0xe
/* 813DE394 | 40 82 00 24 */	bne .L_813DE3B8
.L_813DE398:
/* 813DE398 | 3F 20 81 09 */	lis r25, mArg__Q33ipl7utility8Graphics@ha
/* 813DE39C | 38 9D 00 B0 */	addi r4, r29, 0xb0
/* 813DE3A0 | 3B 39 97 C0 */	addi r25, r25, mArg__Q33ipl7utility8Graphics@l
/* 813DE3A4 | 38 79 00 70 */	addi r3, r25, 0x70
/* 813DE3A8 | 4B F6 62 DD */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813DE3AC | 38 79 00 7C */	addi r3, r25, 0x7c
/* 813DE3B0 | 38 9D 00 BC */	addi r4, r29, 0xbc
/* 813DE3B4 | 4B F5 84 3D */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
.L_813DE3B8:
/* 813DE3B8 | 38 60 00 00 */	li r3, 0x0
/* 813DE3BC | 4B F8 46 B1 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813DE3C0 | 3B 3A 02 A0 */	addi r25, r26, 0x2a0
/* 813DE3C4 | 3B C0 00 00 */	li r30, 0x0
/* 813DE3C8 | 3B 80 00 00 */	li r28, 0x0
.L_813DE3CC:
/* 813DE3CC | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813DE3D0 | 38 A0 00 01 */	li r5, 0x1
/* 813DE3D4 | 7C 99 E0 2E */	lwzx r4, r25, r28
/* 813DE3D8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DE3DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE3E0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DE3E4 | 7D 89 03 A6 */	mtctr r12
/* 813DE3E8 | 4E 80 04 21 */	bctrl
/* 813DE3EC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813DE3F0 | 7C 7B 1B 78 */	mr r27, r3
/* 813DE3F4 | 7F 64 DB 78 */	mr r4, r27
/* 813DE3F8 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813DE3FC | 60 00 00 01 */	ori r0, r0, 0x1
/* 813DE400 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813DE404 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813DE408 | 4B F8 C4 85 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 813DE40C | 7F 63 DB 78 */	mr r3, r27
/* 813DE410 | 38 80 00 00 */	li r4, 0x0
/* 813DE414 | 4B F6 60 01 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813DE418 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813DE41C | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813DE420 | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 813DE424 | 41 80 FF A8 */	blt .L_813DE3CC
/* 813DE428 | 7F A3 EB 78 */	mr r3, r29
/* 813DE42C | 48 00 0B 3D */	bl iplSDChannelSelect_813DEF68
/* 813DE430 | 7F A3 EB 78 */	mr r3, r29
/* 813DE434 | 48 00 1A F9 */	bl iplSDChannelSelect_813DFF2C
/* 813DE438 | 4B F5 75 5D */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813DE43C | A3 23 00 06 */	lhz r25, 0x6(r3)
/* 813DE440 | 4B F5 75 55 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813DE444 | A0 A3 00 04 */	lhz r5, 0x4(r3)
/* 813DE448 | 7F 26 CB 78 */	mr r6, r25
/* 813DE44C | 38 60 00 00 */	li r3, 0x0
/* 813DE450 | 38 80 00 00 */	li r4, 0x0
/* 813DE454 | 48 16 9B 55 */	bl GXSetScissor
/* 813DE458 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813DE45C | 38 A0 00 01 */	li r5, 0x1
/* 813DE460 | 80 8D 8D 68 */	lwz r4, lbl_81696DA8@sda21(r0)
/* 813DE464 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DE468 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE46C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DE470 | 7D 89 03 A6 */	mtctr r12
/* 813DE474 | 4E 80 04 21 */	bctrl
/* 813DE478 | 7C 7F 1B 78 */	mr r31, r3
/* 813DE47C | 38 80 00 00 */	li r4, 0x0
/* 813DE480 | 4B F6 5F 95 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813DE484 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813DE488 | 4B F8 C3 15 */	bl draw__Q33ipl6layout6ObjectFv
/* 813DE48C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 813DE490 | 38 9A 06 84 */	addi r4, r26, 0x684
/* 813DE494 | 38 A0 00 01 */	li r5, 0x1
/* 813DE498 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DE49C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE4A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DE4A4 | 7D 89 03 A6 */	mtctr r12
/* 813DE4A8 | 4E 80 04 21 */	bctrl
/* 813DE4AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE4B0 | 7C 7E 1B 78 */	mr r30, r3
/* 813DE4B4 | 3B 2D AF 78 */	li r25, lbl_81698FB8@sda21
/* 813DE4B8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813DE4BC | 7D 89 03 A6 */	mtctr r12
/* 813DE4C0 | 4E 80 04 21 */	bctrl
/* 813DE4C4 | 48 00 00 18 */	b .L_813DE4DC
.L_813DE4C8:
/* 813DE4C8 | 7C 03 C8 40 */	cmplw r3, r25
/* 813DE4CC | 40 82 00 0C */	bne .L_813DE4D8
/* 813DE4D0 | 38 00 00 01 */	li r0, 0x1
/* 813DE4D4 | 48 00 00 14 */	b .L_813DE4E8
.L_813DE4D8:
/* 813DE4D8 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_813DE4DC:
/* 813DE4DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE4E0 | 40 82 FF E8 */	bne .L_813DE4C8
/* 813DE4E4 | 38 00 00 00 */	li r0, 0x0
.L_813DE4E8:
/* 813DE4E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DE4EC | 41 82 00 08 */	beq .L_813DE4F4
/* 813DE4F0 | 48 00 00 08 */	b .L_813DE4F8
.L_813DE4F4:
/* 813DE4F4 | 3B C0 00 00 */	li r30, 0x0
.L_813DE4F8:
/* 813DE4F8 | 3B 5A 03 F4 */	addi r26, r26, 0x3f4
/* 813DE4FC | 3B 00 00 00 */	li r24, 0x0
/* 813DE500 | 3B 80 00 00 */	li r28, 0x0
/* 813DE504 | 3B 20 00 00 */	li r25, 0x0
/* 813DE508 | 3B 60 00 06 */	li r27, 0x6
.L_813DE50C:
/* 813DE50C | B3 21 00 84 */	sth r25, 0x84(r1)
/* 813DE510 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813DE514 | 38 80 00 13 */	li r4, 0x13
/* 813DE518 | 38 AD 8D 6C */	li r5, lbl_81696DAC@sda21
/* 813DE51C | 80 1D 00 9C */	lwz r0, 0x9c(r29)
/* 813DE520 | 7C C0 C2 14 */	add r6, r0, r24
/* 813DE524 | 4C C6 31 82 */	crclr cr1eq
/* 813DE528 | 48 22 A0 A9 */	bl swprintf
/* 813DE52C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813DE530 | 7F C3 F3 78 */	mr r3, r30
/* 813DE534 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813DE538 | 38 A0 00 00 */	li r5, 0x0
/* 813DE53C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813DE540 | 7D 89 03 A6 */	mtctr r12
/* 813DE544 | 4E 80 04 21 */	bctrl
/* 813DE548 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813DE54C | 38 A0 00 01 */	li r5, 0x1
/* 813DE550 | 7C 9A E0 2E */	lwzx r4, r26, r28
/* 813DE554 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DE558 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE55C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DE560 | 7D 89 03 A6 */	mtctr r12
/* 813DE564 | 4E 80 04 21 */	bctrl
/* 813DE568 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 813DE56C | 38 83 00 80 */	addi r4, r3, 0x80
/* 813DE570 | 7F 69 03 A6 */	mtctr r27
.L_813DE574:
/* 813DE574 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813DE578 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813DE57C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813DE580 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813DE584 | 42 00 FF F0 */	bdnz .L_813DE574
/* 813DE588 | C0 22 86 C8 */	lfs f1, lbl_81694AC8@sda21(r0)
/* 813DE58C | 38 61 00 20 */	addi r3, r1, 0x20
/* 813DE590 | FC 40 08 90 */	fmr f2, f1
/* 813DE594 | FC 60 08 90 */	fmr f3, f1
/* 813DE598 | 4B F8 44 C5 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813DE59C | 38 81 00 20 */	addi r4, r1, 0x20
/* 813DE5A0 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813DE5A4 | 7C 85 23 78 */	mr r5, r4
/* 813DE5A8 | 48 16 2F 15 */	bl fn_815414BC
/* 813DE5AC | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 813DE5B0 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813DE5B4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DE5B8 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813DE5BC | 4B F6 60 C9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813DE5C0 | 80 9D 00 90 */	lwz r4, 0x90(r29)
/* 813DE5C4 | 38 64 00 04 */	addi r3, r4, 0x4
/* 813DE5C8 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813DE5CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE5D0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813DE5D4 | 7D 89 03 A6 */	mtctr r12
/* 813DE5D8 | 4E 80 04 21 */	bctrl
/* 813DE5DC | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 813DE5E0 | 4B F8 C1 BD */	bl draw__Q33ipl6layout6ObjectFv
/* 813DE5E4 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 813DE5E8 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813DE5EC | 2C 18 00 03 */	cmpwi r24, 0x3
/* 813DE5F0 | 41 80 FF 1C */	blt .L_813DE50C
/* 813DE5F4 | 7F A3 EB 78 */	mr r3, r29
/* 813DE5F8 | 48 00 0C 01 */	bl iplSDChannelSelect_813DF1F8
/* 813DE5FC | 88 1F 00 CF */	lbz r0, 0xcf(r31)
/* 813DE600 | 7F E4 FB 78 */	mr r4, r31
/* 813DE604 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813DE608 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813DE60C | 98 1F 00 CF */	stb r0, 0xcf(r31)
/* 813DE610 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813DE614 | 4B F8 C2 79 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 813DE618 | 80 7D 00 88 */	lwz r3, 0x88(r29)
/* 813DE61C | 4B F8 C1 81 */	bl draw__Q33ipl6layout6ObjectFv
/* 813DE620 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 813DE624 | 4B F8 C1 79 */	bl draw__Q33ipl6layout6ObjectFv
/* 813DE628 | 48 00 00 88 */	b .L_813DE6B0
.L_813DE62C:
/* 813DE62C | 2C 04 00 0D */	cmpwi r4, 0xd
/* 813DE630 | 40 82 00 80 */	bne .L_813DE6B0
/* 813DE634 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DE638 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DE63C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813DE640 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813DE644 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DE648 | 40 82 00 68 */	bne .L_813DE6B0
/* 813DE64C | 38 60 00 00 */	li r3, 0x0
/* 813DE650 | 4B F8 44 1D */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813DE654 | 88 C2 86 D0 */	lbz r6, lbl_81694AD0@sda21(r0)
/* 813DE658 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813DE65C | 88 A2 86 D1 */	lbz r5, lbl_81694AD1@sda21(r0)
/* 813DE660 | 88 82 86 D2 */	lbz r4, lbl_81694AD2@sda21(r0)
/* 813DE664 | 88 02 86 D3 */	lbz r0, lbl_81694AD3@sda21(r0)
/* 813DE668 | 98 C1 00 0C */	stb r6, 0xc(r1)
/* 813DE66C | 98 A1 00 0D */	stb r5, 0xd(r1)
/* 813DE670 | 98 81 00 0E */	stb r4, 0xe(r1)
/* 813DE674 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 813DE678 | 4B F5 7D B1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813DE67C | 38 61 00 10 */	addi r3, r1, 0x10
/* 813DE680 | 4B F5 72 99 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813DE684 | 88 E1 00 0C */	lbz r7, 0xc(r1)
/* 813DE688 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813DE68C | 88 C1 00 0D */	lbz r6, 0xd(r1)
/* 813DE690 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DE694 | 88 A1 00 0E */	lbz r5, 0xe(r1)
/* 813DE698 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 813DE69C | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 813DE6A0 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 813DE6A4 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 813DE6A8 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813DE6AC | 4B F8 46 91 */	bl drawPolygon__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4Rect8_GXColor
.L_813DE6B0:
/* 813DE6B0 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813DE6B4 | 48 21 AE 4D */	bl _restgpr_24
/* 813DE6B8 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 813DE6BC | 7C 08 03 A6 */	mtlr r0
/* 813DE6C0 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 813DE6C4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DE33C

# .text:0x3BC0 | 0x813DE6C8 | size: 0x334
.fn iplSDChannelSelect_813DE6C8, global
/* 813DE6C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DE6CC | 7C 08 02 A6 */	mflr r0
/* 813DE6D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DE6D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DE6D8 | 48 21 AD E5 */	bl _savegpr_26
/* 813DE6DC | 3F 40 81 09 */	lis r26, smArg__Q23ipl6System@ha
/* 813DE6E0 | 7C 7F 1B 78 */	mr r31, r3
/* 813DE6E4 | 3B 5A 90 08 */	addi r26, r26, smArg__Q23ipl6System@l
/* 813DE6E8 | 80 7A 00 A8 */	lwz r3, 0xa8(r26)
/* 813DE6EC | 4B F8 24 01 */	bl restart__Q33ipl3bs27ManagerFv
/* 813DE6F0 | 80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 813DE6F4 | 38 80 00 00 */	li r4, 0x0
/* 813DE6F8 | 80 7A 00 94 */	lwz r3, 0x94(r26)
/* 813DE6FC | 90 03 04 E4 */	stw r0, 0x4e4(r3)
/* 813DE700 | 48 00 00 20 */	b .L_813DE720
.L_813DE704:
/* 813DE704 | 7F 44 D3 78 */	mr r4, r26
/* 813DE708 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813DE70C | 48 13 3B 65 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813DE710 | 7F E3 FB 78 */	mr r3, r31
/* 813DE714 | 7F 44 D3 78 */	mr r4, r26
/* 813DE718 | 48 00 15 89 */	bl iplSDChannelSelect_813DFCA0
/* 813DE71C | 38 80 00 00 */	li r4, 0x0
.L_813DE720:
/* 813DE720 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813DE724 | 48 13 3B B9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DE728 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE72C | 7C 7A 1B 78 */	mr r26, r3
/* 813DE730 | 40 82 FF D4 */	bne .L_813DE704
/* 813DE734 | 80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 813DE738 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE73C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813DE740 | 7D 89 03 A6 */	mtctr r12
/* 813DE744 | 4E 80 04 21 */	bctrl
/* 813DE748 | 80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 813DE74C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE750 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813DE754 | 7D 89 03 A6 */	mtctr r12
/* 813DE758 | 4E 80 04 21 */	bctrl
/* 813DE75C | 80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 813DE760 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE764 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813DE768 | 7D 89 03 A6 */	mtctr r12
/* 813DE76C | 4E 80 04 21 */	bctrl
/* 813DE770 | 80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 813DE774 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE778 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813DE77C | 7D 89 03 A6 */	mtctr r12
/* 813DE780 | 4E 80 04 21 */	bctrl
/* 813DE784 | 80 7F 01 18 */	lwz r3, 0x118(r31)
/* 813DE788 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE78C | 41 82 00 18 */	beq .L_813DE7A4
/* 813DE790 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE794 | 38 80 00 01 */	li r4, 0x1
/* 813DE798 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813DE79C | 7D 89 03 A6 */	mtctr r12
/* 813DE7A0 | 4E 80 04 21 */	bctrl
.L_813DE7A4:
/* 813DE7A4 | 80 7F 01 14 */	lwz r3, 0x114(r31)
/* 813DE7A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE7AC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813DE7B0 | 7D 89 03 A6 */	mtctr r12
/* 813DE7B4 | 4E 80 04 21 */	bctrl
/* 813DE7B8 | 80 1F 07 64 */	lwz r0, 0x764(r31)
/* 813DE7BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DE7C0 | 41 82 00 9C */	beq .L_813DE85C
/* 813DE7C4 | 38 00 00 00 */	li r0, 0x0
/* 813DE7C8 | 3B A0 00 64 */	li r29, 0x64
/* 813DE7CC | 7F 80 E9 D6 */	mullw r28, r0, r29
/* 813DE7D0 | 3C 60 00 02 */	lis r3, 0x2
/* 813DE7D4 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813DE7D8 | 3B C3 E8 48 */	subi r30, r3, 0x17b8
/* 813DE7DC | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813DE7E0 | 3F 40 80 00 */	lis r26, 0x8000
/* 813DE7E4 | 48 00 00 3C */	b .L_813DE820
.L_813DE7E8:
/* 813DE7E8 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 813DE7EC | 54 00 F0 BE */	srwi r0, r0, 2
/* 813DE7F0 | 7C 60 F3 96 */	divwu r3, r0, r30
/* 813DE7F4 | 7C 03 E8 16 */	mulhwu r0, r3, r29
/* 813DE7F8 | 1C 63 00 64 */	mulli r3, r3, 0x64
/* 813DE7FC | 7C 80 E2 14 */	add r4, r0, r28
/* 813DE800 | 7C 80 23 78 */	mr r0, r4
/* 813DE804 | 50 60 07 7E */	rlwimi r0, r3, 0, 29, 31
/* 813DE808 | 54 63 E8 3E */	rotrwi r3, r3, 3
/* 813DE80C | 50 83 E8 04 */	rlwimi r3, r4, 29, 0, 2
/* 813DE810 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 813DE814 | 7C 83 01 94 */	addze r4, r3
/* 813DE818 | 7C 60 01 94 */	addze r3, r0
/* 813DE81C | 48 15 73 B1 */	bl OSSleepTicks
.L_813DE820:
/* 813DE820 | 80 7B 00 94 */	lwz r3, 0x94(r27)
/* 813DE824 | 80 9F 07 64 */	lwz r4, 0x764(r31)
/* 813DE828 | 4B F7 96 B5 */	bl isFinished__Q33ipl8savedata7ManagerFPQ33ipl4nand4File
/* 813DE82C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE830 | 41 82 FF B8 */	beq .L_813DE7E8
/* 813DE834 | 80 7F 07 64 */	lwz r3, 0x764(r31)
/* 813DE838 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE83C | 41 82 00 18 */	beq .L_813DE854
/* 813DE840 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE844 | 38 80 00 01 */	li r4, 0x1
/* 813DE848 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813DE84C | 7D 89 03 A6 */	mtctr r12
/* 813DE850 | 4E 80 04 21 */	bctrl
.L_813DE854:
/* 813DE854 | 38 00 00 00 */	li r0, 0x0
/* 813DE858 | 90 1F 07 64 */	stw r0, 0x764(r31)
.L_813DE85C:
/* 813DE85C | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DE860 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE864 | 41 82 01 80 */	beq .L_813DE9E4
/* 813DE868 | 4B F6 9F 91 */	bl is_terminated__Q23ipl12NandSDWorkerFv
/* 813DE86C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE870 | 40 82 00 E0 */	bne .L_813DE950
/* 813DE874 | 38 00 00 00 */	li r0, 0x0
/* 813DE878 | 3B 80 00 64 */	li r28, 0x64
/* 813DE87C | 7F 60 E1 D6 */	mullw r27, r0, r28
/* 813DE880 | 3C 60 00 02 */	lis r3, 0x2
/* 813DE884 | 80 9F 07 18 */	lwz r4, 0x718(r31)
/* 813DE888 | 38 00 00 01 */	li r0, 0x1
/* 813DE88C | 3B A3 E8 48 */	subi r29, r3, 0x17b8
/* 813DE890 | 98 04 00 04 */	stb r0, 0x4(r4)
/* 813DE894 | 3F C0 80 00 */	lis r30, 0x8000
/* 813DE898 | 48 00 00 3C */	b .L_813DE8D4
.L_813DE89C:
/* 813DE89C | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 813DE8A0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 813DE8A4 | 7C 60 EB 96 */	divwu r3, r0, r29
/* 813DE8A8 | 7C 03 E0 16 */	mulhwu r0, r3, r28
/* 813DE8AC | 1C 63 00 64 */	mulli r3, r3, 0x64
/* 813DE8B0 | 7C 80 DA 14 */	add r4, r0, r27
/* 813DE8B4 | 7C 80 23 78 */	mr r0, r4
/* 813DE8B8 | 50 60 07 7E */	rlwimi r0, r3, 0, 29, 31
/* 813DE8BC | 54 63 E8 3E */	rotrwi r3, r3, 3
/* 813DE8C0 | 50 83 E8 04 */	rlwimi r3, r4, 29, 0, 2
/* 813DE8C4 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 813DE8C8 | 7C 83 01 94 */	addze r4, r3
/* 813DE8CC | 7C 60 01 94 */	addze r3, r0
/* 813DE8D0 | 48 15 72 FD */	bl OSSleepTicks
.L_813DE8D4:
/* 813DE8D4 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DE8D8 | 4B F6 9F 31 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813DE8DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE8E0 | 40 82 FF BC */	bne .L_813DE89C
/* 813DE8E4 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DE8E8 | 4B F6 A4 09 */	bl terminate_async__Q23ipl12NandSDWorkerFv
/* 813DE8EC | 38 00 00 00 */	li r0, 0x0
/* 813DE8F0 | 3B A0 00 64 */	li r29, 0x64
/* 813DE8F4 | 7F C0 E9 D6 */	mullw r30, r0, r29
/* 813DE8F8 | 3C 60 00 02 */	lis r3, 0x2
/* 813DE8FC | 3F 60 80 00 */	lis r27, 0x8000
/* 813DE900 | 3B 83 E8 48 */	subi r28, r3, 0x17b8
/* 813DE904 | 48 00 00 3C */	b .L_813DE940
.L_813DE908:
/* 813DE908 | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 813DE90C | 54 00 F0 BE */	srwi r0, r0, 2
/* 813DE910 | 7C 60 E3 96 */	divwu r3, r0, r28
/* 813DE914 | 7C 03 E8 16 */	mulhwu r0, r3, r29
/* 813DE918 | 1C 63 00 64 */	mulli r3, r3, 0x64
/* 813DE91C | 7C 80 F2 14 */	add r4, r0, r30
/* 813DE920 | 7C 80 23 78 */	mr r0, r4
/* 813DE924 | 50 60 07 7E */	rlwimi r0, r3, 0, 29, 31
/* 813DE928 | 54 63 E8 3E */	rotrwi r3, r3, 3
/* 813DE92C | 50 83 E8 04 */	rlwimi r3, r4, 29, 0, 2
/* 813DE930 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 813DE934 | 7C 83 01 94 */	addze r4, r3
/* 813DE938 | 7C 60 01 94 */	addze r3, r0
/* 813DE93C | 48 15 72 91 */	bl OSSleepTicks
.L_813DE940:
/* 813DE940 | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DE944 | 4B F6 9E B5 */	bl is_terminated__Q23ipl12NandSDWorkerFv
/* 813DE948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE94C | 41 82 FF BC */	beq .L_813DE908
.L_813DE950:
/* 813DE950 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813DE954 | 80 9F 07 10 */	lwz r4, 0x710(r31)
/* 813DE958 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813DE95C | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 813DE960 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE964 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813DE968 | 7D 89 03 A6 */	mtctr r12
/* 813DE96C | 4E 80 04 21 */	bctrl
/* 813DE970 | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 813DE974 | 80 9F 07 14 */	lwz r4, 0x714(r31)
/* 813DE978 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DE97C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813DE980 | 7D 89 03 A6 */	mtctr r12
/* 813DE984 | 4E 80 04 21 */	bctrl
/* 813DE988 | 80 7F 07 1C */	lwz r3, 0x71c(r31)
/* 813DE98C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE990 | 41 82 00 08 */	beq .L_813DE998
/* 813DE994 | 48 21 97 59 */	bl __dla__FPv
.L_813DE998:
/* 813DE998 | 80 7F 07 20 */	lwz r3, 0x720(r31)
/* 813DE99C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE9A0 | 41 82 00 08 */	beq .L_813DE9A8
/* 813DE9A4 | 48 21 97 49 */	bl __dla__FPv
.L_813DE9A8:
/* 813DE9A8 | 80 7F 07 3C */	lwz r3, 0x73c(r31)
/* 813DE9AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE9B0 | 41 82 00 08 */	beq .L_813DE9B8
/* 813DE9B4 | 48 21 97 39 */	bl __dla__FPv
.L_813DE9B8:
/* 813DE9B8 | 80 7F 07 24 */	lwz r3, 0x724(r31)
/* 813DE9BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DE9C0 | 41 82 00 08 */	beq .L_813DE9C8
/* 813DE9C4 | 48 21 97 29 */	bl __dla__FPv
.L_813DE9C8:
/* 813DE9C8 | 38 00 00 06 */	li r0, 0x6
/* 813DE9CC | 80 7F 07 18 */	lwz r3, 0x718(r31)
/* 813DE9D0 | 90 1F 07 0C */	stw r0, 0x70c(r31)
/* 813DE9D4 | 38 80 00 01 */	li r4, 0x1
/* 813DE9D8 | 4B F6 9A 21 */	bl __dt__Q23ipl12NandSDWorkerFv
/* 813DE9DC | 38 00 00 00 */	li r0, 0x0
/* 813DE9E0 | 90 1F 07 18 */	stw r0, 0x718(r31)
.L_813DE9E4:
/* 813DE9E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DE9E8 | 48 21 AB 21 */	bl _restgpr_26
/* 813DE9EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DE9F0 | 7C 08 03 A6 */	mtlr r0
/* 813DE9F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DE9F8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DE6C8

# .text:0x3EF4 | 0x813DE9FC | size: 0x440
.fn iplSDChannelSelect_813DE9FC, global
/* 813DE9FC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813DEA00 | 7C 08 02 A6 */	mflr r0
/* 813DEA04 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813DEA08 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813DEA0C | 48 21 AA B1 */	bl _savegpr_26
/* 813DEA10 | 3F 60 81 65 */	lis r27, lbl_81654088@ha
/* 813DEA14 | 7C 7F 1B 78 */	mr r31, r3
/* 813DEA18 | 3B 7B 40 88 */	addi r27, r27, lbl_81654088@l
/* 813DEA1C | 38 60 05 80 */	li r3, 0x580
/* 813DEA20 | 48 21 96 7D */	bl __nw__FUl
/* 813DEA24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEA28 | 41 82 00 18 */	beq .L_813DEA40
/* 813DEA2C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813DEA30 | 38 FB 06 8F */	addi r7, r27, 0x68f
/* 813DEA34 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813DEA38 | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813DEA3C | 4B F8 B5 E9 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813DEA40:
/* 813DEA40 | 90 7F 00 68 */	stw r3, 0x68(r31)
/* 813DEA44 | 48 18 B5 71 */	bl SCGetAspectRatio
/* 813DEA48 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813DEA4C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813DEA50 | 40 82 01 14 */	bne .L_813DEB64
/* 813DEA54 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813DEA58 | 38 9B 06 A5 */	addi r4, r27, 0x6a5
/* 813DEA5C | 38 A0 00 01 */	li r5, 0x1
/* 813DEA60 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DEA64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEA68 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DEA6C | 7D 89 03 A6 */	mtctr r12
/* 813DEA70 | 4E 80 04 21 */	bctrl
/* 813DEA74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEA78 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813DEA7C | 7D 89 03 A6 */	mtctr r12
/* 813DEA80 | 4E 80 04 21 */	bctrl
/* 813DEA84 | 38 81 00 28 */	addi r4, r1, 0x28
/* 813DEA88 | 38 A0 00 00 */	li r5, 0x0
/* 813DEA8C | 48 14 92 A1 */	bl fn_81527D2C
/* 813DEA90 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813DEA94 | 38 9B 06 B3 */	addi r4, r27, 0x6b3
/* 813DEA98 | 38 A0 00 01 */	li r5, 0x1
/* 813DEA9C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DEAA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEAA4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DEAA8 | 7D 89 03 A6 */	mtctr r12
/* 813DEAAC | 4E 80 04 21 */	bctrl
/* 813DEAB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEAB4 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813DEAB8 | 7D 89 03 A6 */	mtctr r12
/* 813DEABC | 4E 80 04 21 */	bctrl
/* 813DEAC0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DEAC4 | 38 A0 00 00 */	li r5, 0x0
/* 813DEAC8 | 48 14 92 65 */	bl fn_81527D2C
/* 813DEACC | 3B 9B 02 EC */	addi r28, r27, 0x2ec
/* 813DEAD0 | 3B BB 03 00 */	addi r29, r27, 0x300
/* 813DEAD4 | 3B 40 00 00 */	li r26, 0x0
/* 813DEAD8 | 3B C0 00 00 */	li r30, 0x0
.L_813DEADC:
/* 813DEADC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813DEAE0 | 38 A0 00 01 */	li r5, 0x1
/* 813DEAE4 | 7C 9C F0 2E */	lwzx r4, r28, r30
/* 813DEAE8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DEAEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEAF0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DEAF4 | 7D 89 03 A6 */	mtctr r12
/* 813DEAF8 | 4E 80 04 21 */	bctrl
/* 813DEAFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEB00 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813DEB04 | 7D 89 03 A6 */	mtctr r12
/* 813DEB08 | 4E 80 04 21 */	bctrl
/* 813DEB0C | 38 A1 00 28 */	addi r5, r1, 0x28
/* 813DEB10 | 38 80 00 00 */	li r4, 0x0
/* 813DEB14 | 48 14 93 09 */	bl fn_81527E1C
/* 813DEB18 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813DEB1C | 38 A0 00 01 */	li r5, 0x1
/* 813DEB20 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813DEB24 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DEB28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEB2C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DEB30 | 7D 89 03 A6 */	mtctr r12
/* 813DEB34 | 4E 80 04 21 */	bctrl
/* 813DEB38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEB3C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813DEB40 | 7D 89 03 A6 */	mtctr r12
/* 813DEB44 | 4E 80 04 21 */	bctrl
/* 813DEB48 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813DEB4C | 38 80 00 00 */	li r4, 0x0
/* 813DEB50 | 48 14 92 CD */	bl fn_81527E1C
/* 813DEB54 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813DEB58 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813DEB5C | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 813DEB60 | 41 80 FF 7C */	blt .L_813DEADC
.L_813DEB64:
/* 813DEB64 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813DEB68 | 38 9B 06 BE */	addi r4, r27, 0x6be
/* 813DEB6C | 38 A0 00 01 */	li r5, 0x1
/* 813DEB70 | 4B F8 B7 FD */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813DEB74 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813DEB78 | 4B F8 BA BD */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813DEB7C | 38 60 05 80 */	li r3, 0x580
/* 813DEB80 | 48 21 95 1D */	bl __nw__FUl
/* 813DEB84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEB88 | 41 82 00 18 */	beq .L_813DEBA0
/* 813DEB8C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813DEB90 | 38 FB 06 D4 */	addi r7, r27, 0x6d4
/* 813DEB94 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813DEB98 | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813DEB9C | 4B F8 B4 89 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813DEBA0:
/* 813DEBA0 | 90 7F 00 90 */	stw r3, 0x90(r31)
/* 813DEBA4 | 38 60 05 80 */	li r3, 0x580
/* 813DEBA8 | 48 21 94 F5 */	bl __nw__FUl
/* 813DEBAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEBB0 | 41 82 00 18 */	beq .L_813DEBC8
/* 813DEBB4 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813DEBB8 | 38 FB 06 ED */	addi r7, r27, 0x6ed
/* 813DEBBC | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813DEBC0 | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813DEBC4 | 4B F8 B4 61 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813DEBC8:
/* 813DEBC8 | 90 7F 00 80 */	stw r3, 0x80(r31)
/* 813DEBCC | 38 9B 06 FD */	addi r4, r27, 0x6fd
/* 813DEBD0 | 38 BB 07 10 */	addi r5, r27, 0x710
/* 813DEBD4 | 38 C0 00 00 */	li r6, 0x0
/* 813DEBD8 | 38 E0 00 01 */	li r7, 0x1
/* 813DEBDC | 4B F8 B9 05 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813DEBE0 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DEBE4 | 38 9B 07 19 */	addi r4, r27, 0x719
/* 813DEBE8 | 38 BB 07 10 */	addi r5, r27, 0x710
/* 813DEBEC | 38 C0 00 00 */	li r6, 0x0
/* 813DEBF0 | 38 E0 00 01 */	li r7, 0x1
/* 813DEBF4 | 4B F8 B8 ED */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813DEBF8 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DEBFC | 38 9B 07 2D */	addi r4, r27, 0x72d
/* 813DEC00 | 38 BB 07 43 */	addi r5, r27, 0x743
/* 813DEC04 | 38 C0 00 00 */	li r6, 0x0
/* 813DEC08 | 38 E0 00 01 */	li r7, 0x1
/* 813DEC0C | 4B F8 B8 D5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813DEC10 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DEC14 | 38 9B 07 4C */	addi r4, r27, 0x74c
/* 813DEC18 | 38 BB 07 43 */	addi r5, r27, 0x743
/* 813DEC1C | 38 C0 00 00 */	li r6, 0x0
/* 813DEC20 | 38 E0 00 01 */	li r7, 0x1
/* 813DEC24 | 4B F8 B8 BD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813DEC28 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DEC2C | 38 9B 07 63 */	addi r4, r27, 0x763
/* 813DEC30 | 38 AD 8D 76 */	li r5, lbl_81696DB6@sda21
/* 813DEC34 | 38 C0 00 00 */	li r6, 0x0
/* 813DEC38 | 38 E0 00 01 */	li r7, 0x1
/* 813DEC3C | 4B F8 B8 A5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813DEC40 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DEC44 | 38 80 00 00 */	li r4, 0x0
/* 813DEC48 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DEC4C | 48 13 36 CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DEC50 | 4B F8 AF D5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813DEC54 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DEC58 | 38 80 00 02 */	li r4, 0x2
/* 813DEC5C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813DEC60 | 48 13 36 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813DEC64 | 4B F8 AF C1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813DEC68 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813DEC6C | 4B F8 B9 C9 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813DEC70 | 38 60 05 80 */	li r3, 0x580
/* 813DEC74 | 48 21 94 29 */	bl __nw__FUl
/* 813DEC78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEC7C | 7C 60 1B 78 */	mr r0, r3
/* 813DEC80 | 41 82 00 1C */	beq .L_813DEC9C
/* 813DEC84 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813DEC88 | 38 FB 07 78 */	addi r7, r27, 0x778
/* 813DEC8C | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813DEC90 | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813DEC94 | 4B F8 B3 91 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
/* 813DEC98 | 7C 60 1B 78 */	mr r0, r3
.L_813DEC9C:
/* 813DEC9C | 90 1F 07 50 */	stw r0, 0x750(r31)
/* 813DECA0 | 38 9B 03 14 */	addi r4, r27, 0x314
/* 813DECA4 | 38 60 00 10 */	li r3, 0x10
/* 813DECA8 | 90 04 00 64 */	stw r0, 0x64(r4)
/* 813DECAC | 48 21 93 F1 */	bl __nw__FUl
/* 813DECB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DECB4 | 7C 7D 1B 78 */	mr r29, r3
/* 813DECB8 | 41 82 00 1C */	beq .L_813DECD4
/* 813DECBC | 38 00 00 00 */	li r0, 0x0
/* 813DECC0 | 3C 80 81 65 */	lis r4, lbl_81654A24@ha
/* 813DECC4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813DECC8 | 38 84 4A 24 */	addi r4, r4, lbl_81654A24@l
/* 813DECCC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813DECD0 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_813DECD4:
/* 813DECD4 | 38 60 00 34 */	li r3, 0x34
/* 813DECD8 | 48 21 93 C5 */	bl __nw__FUl
/* 813DECDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DECE0 | 7C 7B 1B 78 */	mr r27, r3
/* 813DECE4 | 41 82 00 84 */	beq .L_813DED68
/* 813DECE8 | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813DECEC | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813DECF0 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813DECF4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813DECF8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813DECFC | 38 00 00 00 */	li r0, 0x0
/* 813DED00 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813DED04 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 813DED08 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813DED0C | 41 82 00 1C */	beq .L_813DED28
/* 813DED10 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813DED14 | 7F A3 EB 78 */	mr r3, r29
/* 813DED18 | 7F 64 DB 78 */	mr r4, r27
/* 813DED1C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813DED20 | 7D 89 03 A6 */	mtctr r12
/* 813DED24 | 4E 80 04 21 */	bctrl
.L_813DED28:
/* 813DED28 | 38 7B 00 08 */	addi r3, r27, 0x8
/* 813DED2C | 38 80 00 08 */	li r4, 0x8
/* 813DED30 | 48 13 33 2D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813DED34 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813DED38 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 813DED3C | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813DED40 | 38 80 00 08 */	li r4, 0x8
/* 813DED44 | 90 BB 00 00 */	stw r5, 0x0(r27)
/* 813DED48 | 93 9B 00 24 */	stw r28, 0x24(r27)
/* 813DED4C | 48 13 33 11 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813DED50 | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 813DED54 | 38 00 00 00 */	li r0, 0x0
/* 813DED58 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 813DED5C | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 813DED60 | 90 1B 00 2C */	stw r0, 0x2c(r27)
/* 813DED64 | 98 1B 00 30 */	stb r0, 0x30(r27)
.L_813DED68:
/* 813DED68 | 93 7F 00 7C */	stw r27, 0x7c(r31)
/* 813DED6C | 7F 63 DB 78 */	mr r3, r27
/* 813DED70 | 80 9F 00 68 */	lwz r4, 0x68(r31)
/* 813DED74 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813DED78 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813DED7C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813DED80 | 7D 89 03 A6 */	mtctr r12
/* 813DED84 | 4E 80 04 21 */	bctrl
/* 813DED88 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813DED8C | 38 80 00 00 */	li r4, 0x0
/* 813DED90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DED94 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813DED98 | 7D 89 03 A6 */	mtctr r12
/* 813DED9C | 4E 80 04 21 */	bctrl
/* 813DEDA0 | 3B 40 00 00 */	li r26, 0x0
.L_813DEDA4:
/* 813DEDA4 | 7F E3 FB 78 */	mr r3, r31
/* 813DEDA8 | 7F 44 D3 78 */	mr r4, r26
/* 813DEDAC | 48 00 1A 09 */	bl iplSDChannelSelect_813E07B4
/* 813DEDB0 | 7C 64 1B 78 */	mr r4, r3
/* 813DEDB4 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813DEDB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEDBC | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813DEDC0 | 7D 89 03 A6 */	mtctr r12
/* 813DEDC4 | 4E 80 04 21 */	bctrl
/* 813DEDC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DEDCC | 38 80 00 01 */	li r4, 0x1
/* 813DEDD0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813DEDD4 | 7D 89 03 A6 */	mtctr r12
/* 813DEDD8 | 4E 80 04 21 */	bctrl
/* 813DEDDC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813DEDE0 | 2C 1A 00 0C */	cmpwi r26, 0xc
/* 813DEDE4 | 41 80 FF C0 */	blt .L_813DEDA4
/* 813DEDE8 | 3F A0 81 65 */	lis r29, "__vt__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>"@ha
/* 813DEDEC | 3B 40 00 00 */	li r26, 0x0
/* 813DEDF0 | 3B BD E0 48 */	addi r29, r29, "__vt__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>"@l
/* 813DEDF4 | 3B C0 00 00 */	li r30, 0x0
.L_813DEDF8:
/* 813DEDF8 | 38 60 00 40 */	li r3, 0x40
/* 813DEDFC | 48 21 92 A1 */	bl __nw__FUl
/* 813DEE00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEE04 | 41 82 00 08 */	beq .L_813DEE0C
/* 813DEE08 | 93 A3 00 00 */	stw r29, 0x0(r3)
.L_813DEE0C:
/* 813DEE0C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813DEE10 | 7C 9F F2 14 */	add r4, r31, r30
/* 813DEE14 | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813DEE18 | 90 64 00 6C */	stw r3, 0x6c(r4)
/* 813DEE1C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813DEE20 | 41 80 FF D8 */	blt .L_813DEDF8
/* 813DEE24 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813DEE28 | 48 21 A6 E1 */	bl _restgpr_26
/* 813DEE2C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813DEE30 | 7C 08 03 A6 */	mtlr r0
/* 813DEE34 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813DEE38 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DE9FC

# .text:0x4334 | 0x813DEE3C | size: 0x5C
.fn iplSDChannelSelect_813DEE3C, global
/* 813DEE3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DEE40 | 7C 08 02 A6 */	mflr r0
/* 813DEE44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DEE48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DEE4C | 3B E0 00 00 */	li r31, 0x0
/* 813DEE50 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DEE54 | 7C 7E 1B 78 */	mr r30, r3
/* 813DEE58 | 48 00 00 10 */	b .L_813DEE68
.L_813DEE5C:
/* 813DEE5C | 7F C3 F3 78 */	mr r3, r30
/* 813DEE60 | 7F E4 FB 78 */	mr r4, r31
/* 813DEE64 | 48 00 00 35 */	bl iplSDChannelSelect_813DEE98
.L_813DEE68:
/* 813DEE68 | 7F E4 FB 78 */	mr r4, r31
/* 813DEE6C | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813DEE70 | 48 13 34 6D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DEE74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEE78 | 7C 7F 1B 78 */	mr r31, r3
/* 813DEE7C | 40 82 FF E0 */	bne .L_813DEE5C
/* 813DEE80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DEE84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DEE88 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DEE8C | 7C 08 03 A6 */	mtlr r0
/* 813DEE90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DEE94 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DEE3C

# .text:0x4390 | 0x813DEE98 | size: 0x78
.fn iplSDChannelSelect_813DEE98, global
/* 813DEE98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DEE9C | 7C 08 02 A6 */	mflr r0
/* 813DEEA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DEEA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DEEA8 | 7C 9F 23 78 */	mr r31, r4
/* 813DEEAC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DEEB0 | 7C 7E 1B 78 */	mr r30, r3
/* 813DEEB4 | 7F E3 FB 78 */	mr r3, r31
/* 813DEEB8 | 48 00 42 4D */	bl iplSDChannelObj_813E3104
/* 813DEEBC | 80 9E 00 D0 */	lwz r4, 0xd0(r30)
/* 813DEEC0 | 7F E3 FB 78 */	mr r3, r31
/* 813DEEC4 | 80 BE 00 D4 */	lwz r5, 0xd4(r30)
/* 813DEEC8 | 48 00 42 55 */	bl iplSDChannelObj_813E311C
/* 813DEECC | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 813DEED0 | 7F C3 F3 78 */	mr r3, r30
/* 813DEED4 | 80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 813DEED8 | 80 DE 00 9C */	lwz r6, 0x9c(r30)
/* 813DEEDC | 48 00 17 FD */	bl iplSDChannelSelect_813E06D8
/* 813DEEE0 | 7C 64 1B 78 */	mr r4, r3
/* 813DEEE4 | 7F E3 FB 78 */	mr r3, r31
/* 813DEEE8 | 48 00 42 91 */	bl iplSDChannelObj_813E3178
/* 813DEEEC | 80 9E 00 64 */	lwz r4, 0x64(r30)
/* 813DEEF0 | 7F E3 FB 78 */	mr r3, r31
/* 813DEEF4 | 48 00 42 8D */	bl iplSDChannelObj_813E3180
/* 813DEEF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DEEFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DEF00 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DEF04 | 7C 08 03 A6 */	mtlr r0
/* 813DEF08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DEF0C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DEE98

# .text:0x4408 | 0x813DEF10 | size: 0x58
.fn iplSDChannelSelect_813DEF10, global
/* 813DEF10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DEF14 | 7C 08 02 A6 */	mflr r0
/* 813DEF18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DEF1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DEF20 | 3B E0 00 00 */	li r31, 0x0
/* 813DEF24 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DEF28 | 7C 7E 1B 78 */	mr r30, r3
/* 813DEF2C | 48 00 00 0C */	b .L_813DEF38
.L_813DEF30:
/* 813DEF30 | 7F E3 FB 78 */	mr r3, r31
/* 813DEF34 | 48 00 42 F9 */	bl iplSDChannelObj_813E322C
.L_813DEF38:
/* 813DEF38 | 7F E4 FB 78 */	mr r4, r31
/* 813DEF3C | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813DEF40 | 48 13 33 9D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DEF44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEF48 | 7C 7F 1B 78 */	mr r31, r3
/* 813DEF4C | 40 82 FF E4 */	bne .L_813DEF30
/* 813DEF50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DEF54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DEF58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DEF5C | 7C 08 03 A6 */	mtlr r0
/* 813DEF60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DEF64 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DEF10

# .text:0x4460 | 0x813DEF68 | size: 0x27C
.fn iplSDChannelSelect_813DEF68, global
/* 813DEF68 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813DEF6C | 7C 08 02 A6 */	mflr r0
/* 813DEF70 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813DEF74 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813DEF78 | 48 21 A5 4D */	bl _savegpr_28
/* 813DEF7C | 7C 7C 1B 78 */	mr r28, r3
/* 813DEF80 | 3B E0 00 00 */	li r31, 0x0
/* 813DEF84 | 48 00 02 30 */	b .L_813DF1B4
.L_813DEF88:
/* 813DEF88 | 83 C3 00 18 */	lwz r30, 0x18(r3)
/* 813DEF8C | 83 A3 00 1C */	lwz r29, 0x1c(r3)
/* 813DEF90 | 7F 83 E3 78 */	mr r3, r28
/* 813DEF94 | 7F C4 F3 78 */	mr r4, r30
/* 813DEF98 | 7F A5 EB 78 */	mr r5, r29
/* 813DEF9C | 48 00 11 51 */	bl iplSDChannelSelect_813E00EC
/* 813DEFA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEFA4 | 41 82 02 10 */	beq .L_813DF1B4
/* 813DEFA8 | 7F E3 FB 78 */	mr r3, r31
/* 813DEFAC | 48 00 02 39 */	bl iplSDChannelSelect_813DF1E4
/* 813DEFB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEFB4 | 41 82 02 00 */	beq .L_813DF1B4
/* 813DEFB8 | 7F 83 E3 78 */	mr r3, r28
/* 813DEFBC | 7F E4 FB 78 */	mr r4, r31
/* 813DEFC0 | 48 00 18 89 */	bl iplSDChannelSelect_813E0848
/* 813DEFC4 | 7F E3 FB 78 */	mr r3, r31
/* 813DEFC8 | 48 00 43 01 */	bl iplSDChannelObj_813E32C8
/* 813DEFCC | 7F E3 FB 78 */	mr r3, r31
/* 813DEFD0 | 48 00 43 61 */	bl iplSDChannelObj_813E3330
/* 813DEFD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DEFD8 | 41 82 00 90 */	beq .L_813DF068
/* 813DEFDC | 80 1C 00 98 */	lwz r0, 0x98(r28)
/* 813DEFE0 | 2C 00 00 18 */	cmpwi r0, 0x18
/* 813DEFE4 | 40 80 00 E8 */	bge .L_813DF0CC
/* 813DEFE8 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813DEFEC | 40 80 00 08 */	bge .L_813DEFF4
/* 813DEFF0 | 48 00 00 DC */	b .L_813DF0CC
.L_813DEFF4:
/* 813DEFF4 | 80 1C 00 E8 */	lwz r0, 0xe8(r28)
/* 813DEFF8 | 7C 1E 00 00 */	cmpw r30, r0
/* 813DEFFC | 40 82 00 10 */	bne .L_813DF00C
/* 813DF000 | 80 1C 00 EC */	lwz r0, 0xec(r28)
/* 813DF004 | 7C 1D 00 00 */	cmpw r29, r0
/* 813DF008 | 41 82 00 C4 */	beq .L_813DF0CC
.L_813DF00C:
/* 813DF00C | 7F E3 FB 78 */	mr r3, r31
/* 813DF010 | 48 00 43 11 */	bl iplSDChannelObj_813E3320
/* 813DF014 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813DF018 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813DF01C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813DF020 | 90 A1 00 20 */	stw r5, 0x20(r1)
/* 813DF024 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DF028 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813DF02C | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813DF030 | 80 7C 00 84 */	lwz r3, 0x84(r28)
/* 813DF034 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DF038 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813DF03C | 4B F6 56 49 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813DF040 | 80 9C 00 84 */	lwz r4, 0x84(r28)
/* 813DF044 | 38 64 00 04 */	addi r3, r4, 0x4
/* 813DF048 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813DF04C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DF050 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813DF054 | 7D 89 03 A6 */	mtctr r12
/* 813DF058 | 4E 80 04 21 */	bctrl
/* 813DF05C | 80 7C 00 84 */	lwz r3, 0x84(r28)
/* 813DF060 | 4B F8 B7 3D */	bl draw__Q33ipl6layout6ObjectFv
/* 813DF064 | 48 00 00 68 */	b .L_813DF0CC
.L_813DF068:
/* 813DF068 | 80 1F 00 84 */	lwz r0, 0x84(r31)
/* 813DF06C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DF070 | 40 82 00 5C */	bne .L_813DF0CC
/* 813DF074 | 7F E3 FB 78 */	mr r3, r31
/* 813DF078 | 48 00 42 A9 */	bl iplSDChannelObj_813E3320
/* 813DF07C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813DF080 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813DF084 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813DF088 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 813DF08C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813DF090 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813DF094 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813DF098 | 80 7C 07 48 */	lwz r3, 0x748(r28)
/* 813DF09C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DF0A0 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813DF0A4 | 4B F6 55 E1 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813DF0A8 | 80 9C 07 48 */	lwz r4, 0x748(r28)
/* 813DF0AC | 38 64 00 04 */	addi r3, r4, 0x4
/* 813DF0B0 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813DF0B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DF0B8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813DF0BC | 7D 89 03 A6 */	mtctr r12
/* 813DF0C0 | 4E 80 04 21 */	bctrl
/* 813DF0C4 | 80 7C 07 48 */	lwz r3, 0x748(r28)
/* 813DF0C8 | 4B F8 B6 D5 */	bl draw__Q33ipl6layout6ObjectFv
.L_813DF0CC:
/* 813DF0CC | 80 1C 00 98 */	lwz r0, 0x98(r28)
/* 813DF0D0 | 2C 00 00 15 */	cmpwi r0, 0x15
/* 813DF0D4 | 41 82 00 A0 */	beq .L_813DF174
/* 813DF0D8 | 40 80 00 24 */	bge .L_813DF0FC
/* 813DF0DC | 2C 00 00 11 */	cmpwi r0, 0x11
/* 813DF0E0 | 40 80 00 10 */	bge .L_813DF0F0
/* 813DF0E4 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813DF0E8 | 40 80 00 1C */	bge .L_813DF104
/* 813DF0EC | 48 00 00 88 */	b .L_813DF174
.L_813DF0F0:
/* 813DF0F0 | 2C 00 00 13 */	cmpwi r0, 0x13
/* 813DF0F4 | 40 80 00 10 */	bge .L_813DF104
/* 813DF0F8 | 48 00 00 7C */	b .L_813DF174
.L_813DF0FC:
/* 813DF0FC | 2C 00 00 18 */	cmpwi r0, 0x18
/* 813DF100 | 40 80 00 74 */	bge .L_813DF174
.L_813DF104:
/* 813DF104 | 80 1C 00 E8 */	lwz r0, 0xe8(r28)
/* 813DF108 | 7C 1E 00 00 */	cmpw r30, r0
/* 813DF10C | 40 82 00 68 */	bne .L_813DF174
/* 813DF110 | 80 1C 00 EC */	lwz r0, 0xec(r28)
/* 813DF114 | 7C 1D 00 00 */	cmpw r29, r0
/* 813DF118 | 40 82 00 5C */	bne .L_813DF174
/* 813DF11C | 7F E3 FB 78 */	mr r3, r31
/* 813DF120 | 48 00 42 01 */	bl iplSDChannelObj_813E3320
/* 813DF124 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813DF128 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813DF12C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813DF130 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813DF134 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813DF138 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813DF13C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813DF140 | 80 7C 01 0C */	lwz r3, 0x10c(r28)
/* 813DF144 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DF148 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813DF14C | 4B F6 55 39 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813DF150 | 80 9C 01 0C */	lwz r4, 0x10c(r28)
/* 813DF154 | 38 64 00 04 */	addi r3, r4, 0x4
/* 813DF158 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813DF15C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DF160 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813DF164 | 7D 89 03 A6 */	mtctr r12
/* 813DF168 | 4E 80 04 21 */	bctrl
/* 813DF16C | 80 7C 01 0C */	lwz r3, 0x10c(r28)
/* 813DF170 | 4B F8 B6 2D */	bl draw__Q33ipl6layout6ObjectFv
.L_813DF174:
/* 813DF174 | 80 1C 00 98 */	lwz r0, 0x98(r28)
/* 813DF178 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813DF17C | 40 80 00 38 */	bge .L_813DF1B4
/* 813DF180 | 2C 00 00 13 */	cmpwi r0, 0x13
/* 813DF184 | 40 80 00 08 */	bge .L_813DF18C
/* 813DF188 | 48 00 00 2C */	b .L_813DF1B4
.L_813DF18C:
/* 813DF18C | 80 1C 00 F0 */	lwz r0, 0xf0(r28)
/* 813DF190 | 7C 1E 00 00 */	cmpw r30, r0
/* 813DF194 | 40 82 00 20 */	bne .L_813DF1B4
/* 813DF198 | 80 1C 00 F4 */	lwz r0, 0xf4(r28)
/* 813DF19C | 7C 1D 00 00 */	cmpw r29, r0
/* 813DF1A0 | 40 82 00 14 */	bne .L_813DF1B4
/* 813DF1A4 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813DF1A8 | 4B F8 B5 F5 */	bl draw__Q33ipl6layout6ObjectFv
/* 813DF1AC | 80 7C 07 4C */	lwz r3, 0x74c(r28)
/* 813DF1B0 | 4B F8 B5 ED */	bl draw__Q33ipl6layout6ObjectFv
.L_813DF1B4:
/* 813DF1B4 | 7F E4 FB 78 */	mr r4, r31
/* 813DF1B8 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813DF1BC | 48 13 31 21 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DF1C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF1C4 | 7C 7F 1B 78 */	mr r31, r3
/* 813DF1C8 | 40 82 FD C0 */	bne .L_813DEF88
/* 813DF1CC | 39 61 00 40 */	addi r11, r1, 0x40
/* 813DF1D0 | 48 21 A3 41 */	bl _restgpr_28
/* 813DF1D4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813DF1D8 | 7C 08 03 A6 */	mtlr r0
/* 813DF1DC | 38 21 00 40 */	addi r1, r1, 0x40
/* 813DF1E0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DEF68

# .text:0x46DC | 0x813DF1E4 | size: 0x14
.fn iplSDChannelSelect_813DF1E4, global
/* 813DF1E4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DF1E8 | 38 03 FF FD */	subi r0, r3, 0x3
/* 813DF1EC | 7C 00 00 34 */	cntlzw r0, r0
/* 813DF1F0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813DF1F4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF1E4

# .text:0x46F0 | 0x813DF1F8 | size: 0xB0
.fn iplSDChannelSelect_813DF1F8, global
/* 813DF1F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DF1FC | 7C 08 02 A6 */	mflr r0
/* 813DF200 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DF204 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DF208 | 3B E0 00 00 */	li r31, 0x0
/* 813DF20C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DF210 | 7C 7E 1B 78 */	mr r30, r3
/* 813DF214 | 48 00 00 24 */	b .L_813DF238
.L_813DF218:
/* 813DF218 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 813DF21C | 7F C3 F3 78 */	mr r3, r30
/* 813DF220 | 80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 813DF224 | 48 00 0E C9 */	bl iplSDChannelSelect_813E00EC
/* 813DF228 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF22C | 41 82 00 0C */	beq .L_813DF238
/* 813DF230 | 7F E3 FB 78 */	mr r3, r31
/* 813DF234 | 48 00 40 D1 */	bl iplSDChannelObj_813E3304
.L_813DF238:
/* 813DF238 | 7F E4 FB 78 */	mr r4, r31
/* 813DF23C | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813DF240 | 48 13 30 9D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DF244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF248 | 7C 7F 1B 78 */	mr r31, r3
/* 813DF24C | 40 82 FF CC */	bne .L_813DF218
/* 813DF250 | 3B E0 00 00 */	li r31, 0x0
/* 813DF254 | 48 00 00 24 */	b .L_813DF278
.L_813DF258:
/* 813DF258 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 813DF25C | 7F C3 F3 78 */	mr r3, r30
/* 813DF260 | 80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 813DF264 | 48 00 0E 89 */	bl iplSDChannelSelect_813E00EC
/* 813DF268 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF26C | 41 82 00 0C */	beq .L_813DF278
/* 813DF270 | 7F E3 FB 78 */	mr r3, r31
/* 813DF274 | 48 00 40 99 */	bl iplSDChannelObj_813E330C
.L_813DF278:
/* 813DF278 | 7F E4 FB 78 */	mr r4, r31
/* 813DF27C | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813DF280 | 48 13 30 5D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DF284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF288 | 7C 7F 1B 78 */	mr r31, r3
/* 813DF28C | 40 82 FF CC */	bne .L_813DF258
/* 813DF290 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DF294 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DF298 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DF29C | 7C 08 03 A6 */	mtlr r0
/* 813DF2A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DF2A4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF1F8

# .text:0x47A0 | 0x813DF2A8 | size: 0x138
.fn iplSDChannelSelect_813DF2A8, global
/* 813DF2A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DF2AC | 7C 08 02 A6 */	mflr r0
/* 813DF2B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DF2B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DF2B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DF2BC | 7C 7E 1B 78 */	mr r30, r3
/* 813DF2C0 | 88 03 07 59 */	lbz r0, 0x759(r3)
/* 813DF2C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DF2C8 | 41 82 00 2C */	beq .L_813DF2F4
/* 813DF2CC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DF2D0 | 38 80 00 C1 */	li r4, 0xc1
/* 813DF2D4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DF2D8 | 38 A0 00 2E */	li r5, 0x2e
/* 813DF2DC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813DF2E0 | 4B F6 74 19 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813DF2E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF2E8 | 41 82 00 0C */	beq .L_813DF2F4
/* 813DF2EC | 38 00 00 1C */	li r0, 0x1c
/* 813DF2F0 | 90 1E 00 98 */	stw r0, 0x98(r30)
.L_813DF2F4:
/* 813DF2F4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DF2F8 | 38 80 00 24 */	li r4, 0x24
/* 813DF2FC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DF300 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813DF304 | 48 02 BE 35 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813DF308 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF30C | 7C 7F 1B 78 */	mr r31, r3
/* 813DF310 | 41 82 00 18 */	beq .L_813DF328
/* 813DF314 | 48 00 AE 6D */	bl iplSDChannelButton_813EA180
/* 813DF318 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF31C | 41 82 00 0C */	beq .L_813DF328
/* 813DF320 | 7F E3 FB 78 */	mr r3, r31
/* 813DF324 | 48 00 A8 95 */	bl iplSDChannelButton_813E9BB8
.L_813DF328:
/* 813DF328 | 80 1E 00 98 */	lwz r0, 0x98(r30)
/* 813DF32C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DF330 | 40 82 00 90 */	bne .L_813DF3C0
/* 813DF334 | 4B F5 66 75 */	bl getMasterController__Q23ipl6SystemFv
/* 813DF338 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DF33C | 3C 80 30 00 */	lis r4, 0x3000
/* 813DF340 | 7C 7F 1B 78 */	mr r31, r3
/* 813DF344 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813DF348 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 813DF34C | 7D 89 03 A6 */	mtctr r12
/* 813DF350 | 4E 80 04 21 */	bctrl
/* 813DF354 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF358 | 41 82 00 20 */	beq .L_813DF378
/* 813DF35C | 80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 813DF360 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DF364 | 40 81 00 5C */	ble .L_813DF3C0
/* 813DF368 | 7F C3 F3 78 */	mr r3, r30
/* 813DF36C | 38 80 00 08 */	li r4, 0x8
/* 813DF370 | 48 00 10 29 */	bl iplSDChannelSelect_813E0398
/* 813DF374 | 48 00 00 54 */	b .L_813DF3C8
.L_813DF378:
/* 813DF378 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813DF37C | 3C 80 06 00 */	lis r4, 0x600
/* 813DF380 | 7F E3 FB 78 */	mr r3, r31
/* 813DF384 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813DF388 | 38 84 00 10 */	addi r4, r4, 0x10
/* 813DF38C | 7D 89 03 A6 */	mtctr r12
/* 813DF390 | 4E 80 04 21 */	bctrl
/* 813DF394 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF398 | 41 82 00 28 */	beq .L_813DF3C0
/* 813DF39C | 80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 813DF3A0 | 80 9E 00 9C */	lwz r4, 0x9c(r30)
/* 813DF3A4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DF3A8 | 7C 04 00 00 */	cmpw r4, r0
/* 813DF3AC | 40 80 00 14 */	bge .L_813DF3C0
/* 813DF3B0 | 7F C3 F3 78 */	mr r3, r30
/* 813DF3B4 | 38 80 00 09 */	li r4, 0x9
/* 813DF3B8 | 48 00 0F E1 */	bl iplSDChannelSelect_813E0398
/* 813DF3BC | 48 00 00 0C */	b .L_813DF3C8
.L_813DF3C0:
/* 813DF3C0 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813DF3C4 | 4B F8 BB C9 */	bl update__Q33ipl3gui11PaneManagerFv
.L_813DF3C8:
/* 813DF3C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DF3CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DF3D0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DF3D4 | 7C 08 03 A6 */	mtlr r0
/* 813DF3D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DF3DC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF2A8

# .text:0x48D8 | 0x813DF3E0 | size: 0x1C
.fn iplSDChannelSelect_813DF3E0, global
/* 813DF3E0 | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813DF3E4 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813DF3E8 | 40 82 00 0C */	bne .L_813DF3F4
/* 813DF3EC | 38 80 00 0A */	li r4, 0xa
/* 813DF3F0 | 48 00 0F C0 */	b iplSDChannelSelect_813E03B0
.L_813DF3F4:
/* 813DF3F4 | 38 80 00 0B */	li r4, 0xb
/* 813DF3F8 | 48 00 0F B8 */	b iplSDChannelSelect_813E03B0
.endfn iplSDChannelSelect_813DF3E0

# .text:0x48F4 | 0x813DF3FC | size: 0x110
.fn iplSDChannelSelect_813DF3FC, global
/* 813DF3FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DF400 | 7C 08 02 A6 */	mflr r0
/* 813DF404 | 38 80 00 00 */	li r4, 0x0
/* 813DF408 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DF40C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DF410 | 7C 7F 1B 78 */	mr r31, r3
/* 813DF414 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813DF418 | 4B F8 B6 B9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813DF41C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF420 | 40 82 00 D8 */	bne .L_813DF4F8
/* 813DF424 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DF428 | 38 80 00 24 */	li r4, 0x24
/* 813DF42C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DF430 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813DF434 | 48 02 BD 05 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813DF438 | 80 1F 00 98 */	lwz r0, 0x98(r31)
/* 813DF43C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813DF440 | 40 82 00 48 */	bne .L_813DF488
/* 813DF444 | 80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 813DF448 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 813DF44C | 90 1F 00 9C */	stw r0, 0x9c(r31)
/* 813DF450 | 40 82 00 18 */	bne .L_813DF468
/* 813DF454 | 38 80 00 0F */	li r4, 0xf
/* 813DF458 | 48 00 AD FD */	bl iplSDChannelButton_813EA254
/* 813DF45C | 38 00 00 00 */	li r0, 0x0
/* 813DF460 | 98 1F 00 C8 */	stb r0, 0xc8(r31)
/* 813DF464 | 48 00 00 70 */	b .L_813DF4D4
.L_813DF468:
/* 813DF468 | 88 1F 00 C9 */	lbz r0, 0xc9(r31)
/* 813DF46C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DF470 | 40 82 00 64 */	bne .L_813DF4D4
/* 813DF474 | 38 80 00 0E */	li r4, 0xe
/* 813DF478 | 48 00 AD DD */	bl iplSDChannelButton_813EA254
/* 813DF47C | 38 00 00 01 */	li r0, 0x1
/* 813DF480 | 98 1F 00 C9 */	stb r0, 0xc9(r31)
/* 813DF484 | 48 00 00 50 */	b .L_813DF4D4
.L_813DF488:
/* 813DF488 | 80 BF 00 9C */	lwz r5, 0x9c(r31)
/* 813DF48C | 80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 813DF490 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813DF494 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813DF498 | 90 BF 00 9C */	stw r5, 0x9c(r31)
/* 813DF49C | 7C 05 00 00 */	cmpw r5, r0
/* 813DF4A0 | 40 82 00 18 */	bne .L_813DF4B8
/* 813DF4A4 | 38 80 00 10 */	li r4, 0x10
/* 813DF4A8 | 48 00 AD AD */	bl iplSDChannelButton_813EA254
/* 813DF4AC | 38 00 00 00 */	li r0, 0x0
/* 813DF4B0 | 98 1F 00 C9 */	stb r0, 0xc9(r31)
/* 813DF4B4 | 48 00 00 20 */	b .L_813DF4D4
.L_813DF4B8:
/* 813DF4B8 | 88 1F 00 C8 */	lbz r0, 0xc8(r31)
/* 813DF4BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DF4C0 | 40 82 00 14 */	bne .L_813DF4D4
/* 813DF4C4 | 38 80 00 0D */	li r4, 0xd
/* 813DF4C8 | 48 00 AD 8D */	bl iplSDChannelButton_813EA254
/* 813DF4CC | 38 00 00 01 */	li r0, 0x1
/* 813DF4D0 | 98 1F 00 C8 */	stb r0, 0xc8(r31)
.L_813DF4D4:
/* 813DF4D4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813DF4D8 | 4B F8 B1 5D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813DF4DC | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 813DF4E0 | 7F E3 FB 78 */	mr r3, r31
/* 813DF4E4 | 38 A0 00 00 */	li r5, 0x0
/* 813DF4E8 | 38 C0 FF FF */	li r6, -0x1
/* 813DF4EC | 48 00 01 E5 */	bl iplSDChannelSelect_813DF6D0
/* 813DF4F0 | 38 00 00 01 */	li r0, 0x1
/* 813DF4F4 | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813DF4F8:
/* 813DF4F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DF4FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DF500 | 7C 08 03 A6 */	mtlr r0
/* 813DF504 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DF508 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF3FC

# .text:0x4A04 | 0x813DF50C | size: 0x4C
.fn iplSDChannelSelect_813DF50C, global
/* 813DF50C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DF510 | 7C 08 02 A6 */	mflr r0
/* 813DF514 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DF518 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DF51C | 7C 7F 1B 78 */	mr r31, r3
/* 813DF520 | 48 00 19 61 */	bl iplSDChannelSelect_813E0E80
/* 813DF524 | 7F E3 FB 78 */	mr r3, r31
/* 813DF528 | 48 00 19 B9 */	bl iplSDChannelSelect_813E0EE0
/* 813DF52C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813DF530 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813DF534 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DF538 | 41 82 00 0C */	beq .L_813DF544
/* 813DF53C | 38 00 00 0C */	li r0, 0xc
/* 813DF540 | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813DF544:
/* 813DF544 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DF548 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DF54C | 7C 08 03 A6 */	mtlr r0
/* 813DF550 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DF554 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF50C

# .text:0x4A50 | 0x813DF558 | size: 0x178
.fn iplSDChannelSelect_813DF558, global
/* 813DF558 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DF55C | 7C 08 02 A6 */	mflr r0
/* 813DF560 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DF564 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DF568 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DF56C | 7C 7E 1B 78 */	mr r30, r3
/* 813DF570 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813DF574 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813DF578 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DF57C | 41 82 01 2C */	beq .L_813DF6A8
/* 813DF580 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813DF584 | 38 80 00 23 */	li r4, 0x23
/* 813DF588 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813DF58C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813DF590 | 48 02 BB A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813DF594 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF598 | 40 82 01 10 */	bne .L_813DF6A8
/* 813DF59C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813DF5A0 | 38 80 00 24 */	li r4, 0x24
/* 813DF5A4 | 48 02 BB 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813DF5A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813DF5AC | 48 00 B0 69 */	bl iplSDChannelButton_813EA614
/* 813DF5B0 | 80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 813DF5B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DF5B8 | 40 81 00 1C */	ble .L_813DF5D4
/* 813DF5BC | 7F E3 FB 78 */	mr r3, r31
/* 813DF5C0 | 38 80 00 0D */	li r4, 0xd
/* 813DF5C4 | 48 00 AC 91 */	bl iplSDChannelButton_813EA254
/* 813DF5C8 | 38 00 00 01 */	li r0, 0x1
/* 813DF5CC | 98 1E 00 C8 */	stb r0, 0xc8(r30)
/* 813DF5D0 | 48 00 00 0C */	b .L_813DF5DC
.L_813DF5D4:
/* 813DF5D4 | 38 00 00 00 */	li r0, 0x0
/* 813DF5D8 | 98 1E 00 C8 */	stb r0, 0xc8(r30)
.L_813DF5DC:
/* 813DF5DC | 80 9E 00 A0 */	lwz r4, 0xa0(r30)
/* 813DF5E0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813DF5E4 | 40 81 00 2C */	ble .L_813DF610
/* 813DF5E8 | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 813DF5EC | 38 04 FF FF */	subi r0, r4, 0x1
/* 813DF5F0 | 7C 03 00 00 */	cmpw r3, r0
/* 813DF5F4 | 40 80 00 1C */	bge .L_813DF610
/* 813DF5F8 | 7F E3 FB 78 */	mr r3, r31
/* 813DF5FC | 38 80 00 0E */	li r4, 0xe
/* 813DF600 | 48 00 AC 55 */	bl iplSDChannelButton_813EA254
/* 813DF604 | 38 00 00 01 */	li r0, 0x1
/* 813DF608 | 98 1E 00 C9 */	stb r0, 0xc9(r30)
/* 813DF60C | 48 00 00 0C */	b .L_813DF618
.L_813DF610:
/* 813DF610 | 38 00 00 00 */	li r0, 0x0
/* 813DF614 | 98 1E 00 C9 */	stb r0, 0xc9(r30)
.L_813DF618:
/* 813DF618 | 80 9E 00 94 */	lwz r4, 0x94(r30)
/* 813DF61C | 7F E3 FB 78 */	mr r3, r31
/* 813DF620 | 48 00 AB 6D */	bl iplSDChannelButton_813EA18C
/* 813DF624 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813DF628 | 38 80 00 01 */	li r4, 0x1
/* 813DF62C | 4B F8 27 F5 */	bl setEnable__Q23ipl11TVRCManagerFi
/* 813DF630 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813DF634 | 3C 80 81 65 */	lis r4, lbl_8165480F@ha
/* 813DF638 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813DF63C | 38 84 48 0F */	addi r4, r4, lbl_8165480F@l
/* 813DF640 | 4B F8 BD 7D */	bl startBGM__Q33ipl3snd6SystemFPCc
/* 813DF644 | 7F C3 F3 78 */	mr r3, r30
/* 813DF648 | 4B FF C0 45 */	bl iplSDChannelSelect_813DB68C
/* 813DF64C | 7F C3 F3 78 */	mr r3, r30
/* 813DF650 | 38 80 00 00 */	li r4, 0x0
/* 813DF654 | 38 A0 FF FF */	li r5, -0x1
/* 813DF658 | 4B FF D1 95 */	bl iplSDChannelSelect_813DC7EC
/* 813DF65C | 7F C3 F3 78 */	mr r3, r30
/* 813DF660 | 38 80 FF FF */	li r4, -0x1
/* 813DF664 | 38 A0 FF FF */	li r5, -0x1
/* 813DF668 | 4B FF D1 85 */	bl iplSDChannelSelect_813DC7EC
/* 813DF66C | 7F C3 F3 78 */	mr r3, r30
/* 813DF670 | 38 80 00 01 */	li r4, 0x1
/* 813DF674 | 38 A0 FF FF */	li r5, -0x1
/* 813DF678 | 4B FF D1 75 */	bl iplSDChannelSelect_813DC7EC
/* 813DF67C | 7F C3 F3 78 */	mr r3, r30
/* 813DF680 | 38 80 FF FE */	li r4, -0x2
/* 813DF684 | 38 A0 FF FF */	li r5, -0x1
/* 813DF688 | 4B FF D1 65 */	bl iplSDChannelSelect_813DC7EC
/* 813DF68C | 7F C3 F3 78 */	mr r3, r30
/* 813DF690 | 38 80 00 02 */	li r4, 0x2
/* 813DF694 | 38 A0 FF FF */	li r5, -0x1
/* 813DF698 | 4B FF D1 55 */	bl iplSDChannelSelect_813DC7EC
/* 813DF69C | 38 00 00 01 */	li r0, 0x1
/* 813DF6A0 | 90 1E 00 98 */	stw r0, 0x98(r30)
/* 813DF6A4 | 48 00 00 14 */	b .L_813DF6B8
.L_813DF6A8:
/* 813DF6A8 | 7F C3 F3 78 */	mr r3, r30
/* 813DF6AC | 48 00 17 D5 */	bl iplSDChannelSelect_813E0E80
/* 813DF6B0 | 7F C3 F3 78 */	mr r3, r30
/* 813DF6B4 | 48 00 18 2D */	bl iplSDChannelSelect_813E0EE0
.L_813DF6B8:
/* 813DF6B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DF6BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DF6C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DF6C4 | 7C 08 03 A6 */	mtlr r0
/* 813DF6C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DF6CC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF558

# .text:0x4BC8 | 0x813DF6D0 | size: 0x164
.fn iplSDChannelSelect_813DF6D0, global
/* 813DF6D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DF6D4 | 7C 08 02 A6 */	mflr r0
/* 813DF6D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DF6DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DF6E0 | 48 21 9D E1 */	bl _savegpr_27
/* 813DF6E4 | 7C 7B 1B 78 */	mr r27, r3
/* 813DF6E8 | 7C 9D 23 78 */	mr r29, r4
/* 813DF6EC | 7C DC 33 78 */	mr r28, r6
/* 813DF6F0 | 48 00 02 D9 */	bl iplSDChannelSelect_813DF9C8
/* 813DF6F4 | 7F 63 DB 78 */	mr r3, r27
/* 813DF6F8 | 7F A4 EB 78 */	mr r4, r29
/* 813DF6FC | 38 A0 00 00 */	li r5, 0x0
/* 813DF700 | 48 00 01 35 */	bl iplSDChannelSelect_813DF834
/* 813DF704 | 80 7B 00 A0 */	lwz r3, 0xa0(r27)
/* 813DF708 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DF70C | 7C 1D 00 00 */	cmpw r29, r0
/* 813DF710 | 40 80 00 14 */	bge .L_813DF724
/* 813DF714 | 7F 63 DB 78 */	mr r3, r27
/* 813DF718 | 38 9D 00 01 */	addi r4, r29, 0x1
/* 813DF71C | 38 A0 00 00 */	li r5, 0x0
/* 813DF720 | 48 00 01 15 */	bl iplSDChannelSelect_813DF834
.L_813DF724:
/* 813DF724 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813DF728 | 40 81 00 14 */	ble .L_813DF73C
/* 813DF72C | 7F 63 DB 78 */	mr r3, r27
/* 813DF730 | 38 9D FF FF */	subi r4, r29, 0x1
/* 813DF734 | 38 A0 00 00 */	li r5, 0x0
/* 813DF738 | 48 00 00 FD */	bl iplSDChannelSelect_813DF834
.L_813DF73C:
/* 813DF73C | 7F 63 DB 78 */	mr r3, r27
/* 813DF740 | 7F A4 EB 78 */	mr r4, r29
/* 813DF744 | 48 00 05 AD */	bl iplSDChannelSelect_813DFCF0
/* 813DF748 | 3B C0 00 00 */	li r30, 0x0
/* 813DF74C | 3B E0 00 02 */	li r31, 0x2
/* 813DF750 | 48 00 00 48 */	b .L_813DF798
.L_813DF754:
/* 813DF754 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813DF758 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 813DF75C | 7F C3 F3 78 */	mr r3, r30
/* 813DF760 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813DF764 | 7F A4 02 14 */	add r29, r4, r0
/* 813DF768 | 48 00 3B C9 */	bl iplSDChannelObj_813E3330
/* 813DF76C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF770 | 40 82 00 28 */	bne .L_813DF798
/* 813DF774 | 80 7B 07 3C */	lwz r3, 0x73c(r27)
/* 813DF778 | 57 A0 10 3A */	slwi r0, r29, 2
/* 813DF77C | 7C 03 00 2E */	lwzx r0, r3, r0
/* 813DF780 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DF784 | 41 82 00 14 */	beq .L_813DF798
/* 813DF788 | 88 1B 07 7F */	lbz r0, 0x77f(r27)
/* 813DF78C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DF790 | 41 82 00 08 */	beq .L_813DF798
/* 813DF794 | 93 FE 00 84 */	stw r31, 0x84(r30)
.L_813DF798:
/* 813DF798 | 7F C4 F3 78 */	mr r4, r30
/* 813DF79C | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813DF7A0 | 48 13 2B 3D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DF7A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF7A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813DF7AC | 40 82 FF A8 */	bne .L_813DF754
/* 813DF7B0 | 7F 63 DB 78 */	mr r3, r27
/* 813DF7B4 | 4B FF F6 89 */	bl iplSDChannelSelect_813DEE3C
/* 813DF7B8 | 88 1B 07 7F */	lbz r0, 0x77f(r27)
/* 813DF7BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DF7C0 | 41 82 00 5C */	beq .L_813DF81C
/* 813DF7C4 | 7F 63 DB 78 */	mr r3, r27
/* 813DF7C8 | 4B FF BE C5 */	bl iplSDChannelSelect_813DB68C
/* 813DF7CC | 7F 63 DB 78 */	mr r3, r27
/* 813DF7D0 | 7F 85 E3 78 */	mr r5, r28
/* 813DF7D4 | 38 80 00 00 */	li r4, 0x0
/* 813DF7D8 | 4B FF D0 15 */	bl iplSDChannelSelect_813DC7EC
/* 813DF7DC | 7F 63 DB 78 */	mr r3, r27
/* 813DF7E0 | 38 80 FF FF */	li r4, -0x1
/* 813DF7E4 | 38 A0 FF FF */	li r5, -0x1
/* 813DF7E8 | 4B FF D0 05 */	bl iplSDChannelSelect_813DC7EC
/* 813DF7EC | 7F 63 DB 78 */	mr r3, r27
/* 813DF7F0 | 38 80 00 01 */	li r4, 0x1
/* 813DF7F4 | 38 A0 FF FF */	li r5, -0x1
/* 813DF7F8 | 4B FF CF F5 */	bl iplSDChannelSelect_813DC7EC
/* 813DF7FC | 7F 63 DB 78 */	mr r3, r27
/* 813DF800 | 38 80 FF FE */	li r4, -0x2
/* 813DF804 | 38 A0 FF FF */	li r5, -0x1
/* 813DF808 | 4B FF CF E5 */	bl iplSDChannelSelect_813DC7EC
/* 813DF80C | 7F 63 DB 78 */	mr r3, r27
/* 813DF810 | 38 80 00 02 */	li r4, 0x2
/* 813DF814 | 38 A0 FF FF */	li r5, -0x1
/* 813DF818 | 4B FF CF D5 */	bl iplSDChannelSelect_813DC7EC
.L_813DF81C:
/* 813DF81C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DF820 | 48 21 9C ED */	bl _restgpr_27
/* 813DF824 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DF828 | 7C 08 03 A6 */	mtlr r0
/* 813DF82C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DF830 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF6D0

# .text:0x4D2C | 0x813DF834 | size: 0x110
.fn iplSDChannelSelect_813DF834, global
/* 813DF834 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DF838 | 7C 08 02 A6 */	mflr r0
/* 813DF83C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DF840 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DF844 | 48 21 9C 81 */	bl _savegpr_28
/* 813DF848 | 7C 7C 1B 78 */	mr r28, r3
/* 813DF84C | 7C 9D 23 78 */	mr r29, r4
/* 813DF850 | 7C BE 2B 78 */	mr r30, r5
/* 813DF854 | 3B E0 00 00 */	li r31, 0x0
.L_813DF858:
/* 813DF858 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813DF85C | 40 82 00 1C */	bne .L_813DF878
/* 813DF860 | 7F 83 E3 78 */	mr r3, r28
/* 813DF864 | 7F A4 EB 78 */	mr r4, r29
/* 813DF868 | 7F E5 FB 78 */	mr r5, r31
/* 813DF86C | 48 00 06 4D */	bl iplSDChannelSelect_813DFEB8
/* 813DF870 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF874 | 40 82 00 14 */	bne .L_813DF888
.L_813DF878:
/* 813DF878 | 7F 83 E3 78 */	mr r3, r28
/* 813DF87C | 7F A4 EB 78 */	mr r4, r29
/* 813DF880 | 7F E5 FB 78 */	mr r5, r31
/* 813DF884 | 48 00 00 C1 */	bl iplSDChannelSelect_813DF944
.L_813DF888:
/* 813DF888 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813DF88C | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813DF890 | 41 80 FF C8 */	blt .L_813DF858
/* 813DF894 | 80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 813DF898 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DF89C | 7C 1D 00 00 */	cmpw r29, r0
/* 813DF8A0 | 40 80 00 44 */	bge .L_813DF8E4
/* 813DF8A4 | 3B E0 00 00 */	li r31, 0x0
.L_813DF8A8:
/* 813DF8A8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813DF8AC | 40 82 00 1C */	bne .L_813DF8C8
/* 813DF8B0 | 7F 83 E3 78 */	mr r3, r28
/* 813DF8B4 | 7F E5 FB 78 */	mr r5, r31
/* 813DF8B8 | 38 9D 00 01 */	addi r4, r29, 0x1
/* 813DF8BC | 48 00 05 FD */	bl iplSDChannelSelect_813DFEB8
/* 813DF8C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF8C4 | 40 82 00 14 */	bne .L_813DF8D8
.L_813DF8C8:
/* 813DF8C8 | 7F 83 E3 78 */	mr r3, r28
/* 813DF8CC | 7F E5 FB 78 */	mr r5, r31
/* 813DF8D0 | 38 9D 00 01 */	addi r4, r29, 0x1
/* 813DF8D4 | 48 00 00 71 */	bl iplSDChannelSelect_813DF944
.L_813DF8D8:
/* 813DF8D8 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813DF8DC | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813DF8E0 | 41 80 FF C8 */	blt .L_813DF8A8
.L_813DF8E4:
/* 813DF8E4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813DF8E8 | 40 81 00 44 */	ble .L_813DF92C
/* 813DF8EC | 3B E0 00 03 */	li r31, 0x3
.L_813DF8F0:
/* 813DF8F0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813DF8F4 | 40 82 00 1C */	bne .L_813DF910
/* 813DF8F8 | 7F 83 E3 78 */	mr r3, r28
/* 813DF8FC | 7F E5 FB 78 */	mr r5, r31
/* 813DF900 | 38 9D FF FF */	subi r4, r29, 0x1
/* 813DF904 | 48 00 05 B5 */	bl iplSDChannelSelect_813DFEB8
/* 813DF908 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF90C | 40 82 00 14 */	bne .L_813DF920
.L_813DF910:
/* 813DF910 | 7F 83 E3 78 */	mr r3, r28
/* 813DF914 | 7F E5 FB 78 */	mr r5, r31
/* 813DF918 | 38 9D FF FF */	subi r4, r29, 0x1
/* 813DF91C | 48 00 00 29 */	bl iplSDChannelSelect_813DF944
.L_813DF920:
/* 813DF920 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813DF924 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813DF928 | 41 80 FF C8 */	blt .L_813DF8F0
.L_813DF92C:
/* 813DF92C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DF930 | 48 21 9B E1 */	bl _restgpr_28
/* 813DF934 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DF938 | 7C 08 03 A6 */	mtlr r0
/* 813DF93C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DF940 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF834

# .text:0x4E3C | 0x813DF944 | size: 0x84
.fn iplSDChannelSelect_813DF944, global
/* 813DF944 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DF948 | 7C 08 02 A6 */	mflr r0
/* 813DF94C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DF950 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DF954 | 48 21 9B 71 */	bl _savegpr_28
/* 813DF958 | 7C 7C 1B 78 */	mr r28, r3
/* 813DF95C | 7C 9D 23 78 */	mr r29, r4
/* 813DF960 | 3C 60 00 02 */	lis r3, 0x2
/* 813DF964 | 80 9C 00 CC */	lwz r4, 0xcc(r28)
/* 813DF968 | 7C BE 2B 78 */	mr r30, r5
/* 813DF96C | 38 A0 00 02 */	li r5, 0x2
/* 813DF970 | 38 63 12 B8 */	addi r3, r3, 0x12b8
/* 813DF974 | 48 21 80 71 */	bl fn_815F79E4
/* 813DF978 | 80 9C 00 D8 */	lwz r4, 0xd8(r28)
/* 813DF97C | 7C 7F 1B 78 */	mr r31, r3
/* 813DF980 | 38 60 06 98 */	li r3, 0x698
/* 813DF984 | 38 A0 00 04 */	li r5, 0x4
/* 813DF988 | 48 21 87 29 */	bl __nw__FUlPQ23EGG4Heapi
/* 813DF98C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DF990 | 41 82 00 14 */	beq .L_813DF9A4
/* 813DF994 | 7F E4 FB 78 */	mr r4, r31
/* 813DF998 | 7F A5 EB 78 */	mr r5, r29
/* 813DF99C | 7F C6 F3 78 */	mr r6, r30
/* 813DF9A0 | 48 00 35 8D */	bl __ct__Q33ipl5scene12SDChannelObjFPQ23EGG4Heapii
.L_813DF9A4:
/* 813DF9A4 | 7C 64 1B 78 */	mr r4, r3
/* 813DF9A8 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813DF9AC | 48 13 26 C9 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813DF9B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DF9B4 | 48 21 9B 5D */	bl _restgpr_28
/* 813DF9B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DF9BC | 7C 08 03 A6 */	mtlr r0
/* 813DF9C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DF9C4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF944

# .text:0x4EC0 | 0x813DF9C8 | size: 0xF8
.fn iplSDChannelSelect_813DF9C8, global
/* 813DF9C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813DF9CC | 7C 08 02 A6 */	mflr r0
/* 813DF9D0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813DF9D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813DF9D8 | 48 21 9A E1 */	bl _savegpr_25
/* 813DF9DC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813DF9E0 | 7C 79 1B 78 */	mr r25, r3
/* 813DF9E4 | 7C 9A 23 78 */	mr r26, r4
/* 813DF9E8 | 7C BB 2B 78 */	mr r27, r5
/* 813DF9EC | 41 82 00 0C */	beq .L_813DF9F8
/* 813DF9F0 | 83 E5 00 18 */	lwz r31, 0x18(r5)
/* 813DF9F4 | 83 C5 00 1C */	lwz r30, 0x1c(r5)
.L_813DF9F8:
/* 813DF9F8 | 3B A0 00 00 */	li r29, 0x0
/* 813DF9FC | 48 00 00 94 */	b .L_813DFA90
.L_813DFA00:
/* 813DFA00 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813DFA04 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 813DFA08 | 80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 813DFA0C | 41 82 00 14 */	beq .L_813DFA20
/* 813DFA10 | 7C 04 F8 00 */	cmpw r4, r31
/* 813DFA14 | 40 82 00 0C */	bne .L_813DFA20
/* 813DFA18 | 7C 05 F0 00 */	cmpw r5, r30
/* 813DFA1C | 41 82 00 74 */	beq .L_813DFA90
.L_813DFA20:
/* 813DFA20 | 80 19 00 98 */	lwz r0, 0x98(r25)
/* 813DFA24 | 2C 00 00 18 */	cmpwi r0, 0x18
/* 813DFA28 | 40 80 00 28 */	bge .L_813DFA50
/* 813DFA2C | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813DFA30 | 40 80 00 08 */	bge .L_813DFA38
/* 813DFA34 | 48 00 00 1C */	b .L_813DFA50
.L_813DFA38:
/* 813DFA38 | 80 19 00 E8 */	lwz r0, 0xe8(r25)
/* 813DFA3C | 7C 04 00 00 */	cmpw r4, r0
/* 813DFA40 | 40 82 00 10 */	bne .L_813DFA50
/* 813DFA44 | 80 19 00 EC */	lwz r0, 0xec(r25)
/* 813DFA48 | 7C 05 00 00 */	cmpw r5, r0
/* 813DFA4C | 41 82 00 44 */	beq .L_813DFA90
.L_813DFA50:
/* 813DFA50 | 7F 23 CB 78 */	mr r3, r25
/* 813DFA54 | 7F 46 D3 78 */	mr r6, r26
/* 813DFA58 | 48 00 07 D5 */	bl iplSDChannelSelect_813E022C
/* 813DFA5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFA60 | 40 82 00 30 */	bne .L_813DFA90
/* 813DFA64 | 7F A4 EB 78 */	mr r4, r29
/* 813DFA68 | 38 79 00 58 */	addi r3, r25, 0x58
/* 813DFA6C | 48 13 28 91 */	bl List_GetPrev__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DFA70 | 7C 7C 1B 78 */	mr r28, r3
/* 813DFA74 | 7F A4 EB 78 */	mr r4, r29
/* 813DFA78 | 38 79 00 58 */	addi r3, r25, 0x58
/* 813DFA7C | 48 13 27 F5 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813DFA80 | 7F 23 CB 78 */	mr r3, r25
/* 813DFA84 | 7F A4 EB 78 */	mr r4, r29
/* 813DFA88 | 48 00 02 19 */	bl iplSDChannelSelect_813DFCA0
/* 813DFA8C | 7F 9D E3 78 */	mr r29, r28
.L_813DFA90:
/* 813DFA90 | 7F A4 EB 78 */	mr r4, r29
/* 813DFA94 | 38 79 00 58 */	addi r3, r25, 0x58
/* 813DFA98 | 48 13 28 45 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DFA9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFAA0 | 7C 7D 1B 78 */	mr r29, r3
/* 813DFAA4 | 40 82 FF 5C */	bne .L_813DFA00
/* 813DFAA8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813DFAAC | 48 21 9A 59 */	bl _restgpr_25
/* 813DFAB0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813DFAB4 | 7C 08 03 A6 */	mtlr r0
/* 813DFAB8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813DFABC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DF9C8

# .text:0x4FB8 | 0x813DFAC0 | size: 0xFC
.fn iplSDChannelSelect_813DFAC0, global
/* 813DFAC0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DFAC4 | 7C 08 02 A6 */	mflr r0
/* 813DFAC8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DFACC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DFAD0 | 48 21 99 F5 */	bl _savegpr_28
/* 813DFAD4 | 7C 7C 1B 78 */	mr r28, r3
/* 813DFAD8 | 3B C0 00 00 */	li r30, 0x0
/* 813DFADC | 3B E0 00 01 */	li r31, 0x1
/* 813DFAE0 | 48 00 00 54 */	b .L_813DFB34
.L_813DFAE4:
/* 813DFAE4 | 7F C3 F3 78 */	mr r3, r30
/* 813DFAE8 | 48 00 38 49 */	bl iplSDChannelObj_813E3330
/* 813DFAEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFAF0 | 41 82 00 34 */	beq .L_813DFB24
/* 813DFAF4 | 7F C4 F3 78 */	mr r4, r30
/* 813DFAF8 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813DFAFC | 48 13 28 01 */	bl List_GetPrev__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DFB00 | 7C 7D 1B 78 */	mr r29, r3
/* 813DFB04 | 7F C4 F3 78 */	mr r4, r30
/* 813DFB08 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813DFB0C | 48 13 27 65 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813DFB10 | 7F 83 E3 78 */	mr r3, r28
/* 813DFB14 | 7F C4 F3 78 */	mr r4, r30
/* 813DFB18 | 48 00 01 89 */	bl iplSDChannelSelect_813DFCA0
/* 813DFB1C | 7F BE EB 78 */	mr r30, r29
/* 813DFB20 | 48 00 00 14 */	b .L_813DFB34
.L_813DFB24:
/* 813DFB24 | 80 1E 00 84 */	lwz r0, 0x84(r30)
/* 813DFB28 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DFB2C | 40 82 00 08 */	bne .L_813DFB34
/* 813DFB30 | 93 FE 00 84 */	stw r31, 0x84(r30)
.L_813DFB34:
/* 813DFB34 | 7F C4 F3 78 */	mr r4, r30
/* 813DFB38 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813DFB3C | 48 13 27 A1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DFB40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFB44 | 7C 7E 1B 78 */	mr r30, r3
/* 813DFB48 | 40 82 FF 9C */	bne .L_813DFAE4
/* 813DFB4C | 80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 813DFB50 | 7F 83 E3 78 */	mr r3, r28
/* 813DFB54 | 38 A0 00 00 */	li r5, 0x0
/* 813DFB58 | 4B FF FC DD */	bl iplSDChannelSelect_813DF834
/* 813DFB5C | 80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 813DFB60 | 80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 813DFB64 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DFB68 | 7C 04 00 00 */	cmpw r4, r0
/* 813DFB6C | 40 80 00 14 */	bge .L_813DFB80
/* 813DFB70 | 7F 83 E3 78 */	mr r3, r28
/* 813DFB74 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813DFB78 | 38 A0 00 00 */	li r5, 0x0
/* 813DFB7C | 4B FF FC B9 */	bl iplSDChannelSelect_813DF834
.L_813DFB80:
/* 813DFB80 | 80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 813DFB84 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813DFB88 | 40 81 00 14 */	ble .L_813DFB9C
/* 813DFB8C | 7F 83 E3 78 */	mr r3, r28
/* 813DFB90 | 38 84 FF FF */	subi r4, r4, 0x1
/* 813DFB94 | 38 A0 00 00 */	li r5, 0x0
/* 813DFB98 | 4B FF FC 9D */	bl iplSDChannelSelect_813DF834
.L_813DFB9C:
/* 813DFB9C | 7F 83 E3 78 */	mr r3, r28
/* 813DFBA0 | 4B FF F2 9D */	bl iplSDChannelSelect_813DEE3C
/* 813DFBA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DFBA8 | 48 21 99 69 */	bl _restgpr_28
/* 813DFBAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DFBB0 | 7C 08 03 A6 */	mtlr r0
/* 813DFBB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DFBB8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DFAC0

# .text:0x50B4 | 0x813DFBBC | size: 0xE4
.fn iplSDChannelSelect_813DFBBC, global
/* 813DFBBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DFBC0 | 7C 08 02 A6 */	mflr r0
/* 813DFBC4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DFBC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DFBCC | 48 21 98 F9 */	bl _savegpr_28
/* 813DFBD0 | 7C 7C 1B 78 */	mr r28, r3
/* 813DFBD4 | 3B C0 00 00 */	li r30, 0x0
/* 813DFBD8 | 3B E0 00 02 */	li r31, 0x2
/* 813DFBDC | 48 00 00 3C */	b .L_813DFC18
.L_813DFBE0:
/* 813DFBE0 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813DFBE4 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 813DFBE8 | 7F C3 F3 78 */	mr r3, r30
/* 813DFBEC | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813DFBF0 | 7F A4 02 14 */	add r29, r4, r0
/* 813DFBF4 | 48 00 37 3D */	bl iplSDChannelObj_813E3330
/* 813DFBF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFBFC | 40 82 00 1C */	bne .L_813DFC18
/* 813DFC00 | 80 7C 07 3C */	lwz r3, 0x73c(r28)
/* 813DFC04 | 57 A0 10 3A */	slwi r0, r29, 2
/* 813DFC08 | 7C 03 00 2E */	lwzx r0, r3, r0
/* 813DFC0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DFC10 | 41 82 00 08 */	beq .L_813DFC18
/* 813DFC14 | 93 FE 00 84 */	stw r31, 0x84(r30)
.L_813DFC18:
/* 813DFC18 | 7F C4 F3 78 */	mr r4, r30
/* 813DFC1C | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813DFC20 | 48 13 26 BD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DFC24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFC28 | 7C 7E 1B 78 */	mr r30, r3
/* 813DFC2C | 40 82 FF B4 */	bne .L_813DFBE0
/* 813DFC30 | 7F 83 E3 78 */	mr r3, r28
/* 813DFC34 | 4B FF BA 59 */	bl iplSDChannelSelect_813DB68C
/* 813DFC38 | 7F 83 E3 78 */	mr r3, r28
/* 813DFC3C | 38 80 00 00 */	li r4, 0x0
/* 813DFC40 | 38 A0 FF FF */	li r5, -0x1
/* 813DFC44 | 4B FF CB A9 */	bl iplSDChannelSelect_813DC7EC
/* 813DFC48 | 7F 83 E3 78 */	mr r3, r28
/* 813DFC4C | 38 80 FF FF */	li r4, -0x1
/* 813DFC50 | 38 A0 FF FF */	li r5, -0x1
/* 813DFC54 | 4B FF CB 99 */	bl iplSDChannelSelect_813DC7EC
/* 813DFC58 | 7F 83 E3 78 */	mr r3, r28
/* 813DFC5C | 38 80 00 01 */	li r4, 0x1
/* 813DFC60 | 38 A0 FF FF */	li r5, -0x1
/* 813DFC64 | 4B FF CB 89 */	bl iplSDChannelSelect_813DC7EC
/* 813DFC68 | 7F 83 E3 78 */	mr r3, r28
/* 813DFC6C | 38 80 FF FE */	li r4, -0x2
/* 813DFC70 | 38 A0 FF FF */	li r5, -0x1
/* 813DFC74 | 4B FF CB 79 */	bl iplSDChannelSelect_813DC7EC
/* 813DFC78 | 7F 83 E3 78 */	mr r3, r28
/* 813DFC7C | 38 80 00 02 */	li r4, 0x2
/* 813DFC80 | 38 A0 FF FF */	li r5, -0x1
/* 813DFC84 | 4B FF CB 69 */	bl iplSDChannelSelect_813DC7EC
/* 813DFC88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DFC8C | 48 21 98 85 */	bl _restgpr_28
/* 813DFC90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DFC94 | 7C 08 03 A6 */	mtlr r0
/* 813DFC98 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DFC9C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DFBBC

# .text:0x5198 | 0x813DFCA0 | size: 0x50
.fn iplSDChannelSelect_813DFCA0, global
/* 813DFCA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DFCA4 | 7C 08 02 A6 */	mflr r0
/* 813DFCA8 | 7C 83 23 78 */	mr r3, r4
/* 813DFCAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DFCB0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DFCB4 | 83 E4 00 10 */	lwz r31, 0x10(r4)
/* 813DFCB8 | 38 80 00 01 */	li r4, 0x1
/* 813DFCBC | 48 00 33 A1 */	bl __dt__Q33ipl5scene12SDChannelObjFv
/* 813DFCC0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813DFCC4 | 41 82 00 18 */	beq .L_813DFCDC
/* 813DFCC8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813DFCCC | 7F E3 FB 78 */	mr r3, r31
/* 813DFCD0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813DFCD4 | 7D 89 03 A6 */	mtctr r12
/* 813DFCD8 | 4E 80 04 21 */	bctrl
.L_813DFCDC:
/* 813DFCDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DFCE0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DFCE4 | 7C 08 03 A6 */	mtlr r0
/* 813DFCE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DFCEC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DFCA0

# .text:0x51E8 | 0x813DFCF0 | size: 0x74
.fn iplSDChannelSelect_813DFCF0, global
/* 813DFCF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DFCF4 | 7C 08 02 A6 */	mflr r0
/* 813DFCF8 | 38 A0 00 00 */	li r5, 0x0
/* 813DFCFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DFD00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DFD04 | 7C 9F 23 78 */	mr r31, r4
/* 813DFD08 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DFD0C | 7C 7E 1B 78 */	mr r30, r3
/* 813DFD10 | 48 00 00 55 */	bl iplSDChannelSelect_813DFD64
/* 813DFD14 | 80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 813DFD18 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813DFD1C | 7C 1F 00 00 */	cmpw r31, r0
/* 813DFD20 | 40 80 00 14 */	bge .L_813DFD34
/* 813DFD24 | 7F C3 F3 78 */	mr r3, r30
/* 813DFD28 | 38 9F 00 01 */	addi r4, r31, 0x1
/* 813DFD2C | 38 A0 FF FF */	li r5, -0x1
/* 813DFD30 | 48 00 00 35 */	bl iplSDChannelSelect_813DFD64
.L_813DFD34:
/* 813DFD34 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813DFD38 | 40 81 00 14 */	ble .L_813DFD4C
/* 813DFD3C | 7F C3 F3 78 */	mr r3, r30
/* 813DFD40 | 38 9F FF FF */	subi r4, r31, 0x1
/* 813DFD44 | 38 A0 00 01 */	li r5, 0x1
/* 813DFD48 | 48 00 00 1D */	bl iplSDChannelSelect_813DFD64
.L_813DFD4C:
/* 813DFD4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DFD50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DFD54 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DFD58 | 7C 08 03 A6 */	mtlr r0
/* 813DFD5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DFD60 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DFCF0

# .text:0x525C | 0x813DFD64 | size: 0x154
.fn iplSDChannelSelect_813DFD64, global
/* 813DFD64 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DFD68 | 7C 08 02 A6 */	mflr r0
/* 813DFD6C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DFD70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DFD74 | 48 21 97 4D */	bl _savegpr_27
/* 813DFD78 | 7C 7B 1B 78 */	mr r27, r3
/* 813DFD7C | 7C 9C 23 78 */	mr r28, r4
/* 813DFD80 | 7C BD 2B 78 */	mr r29, r5
/* 813DFD84 | 3B E0 00 00 */	li r31, 0x0
.L_813DFD88:
/* 813DFD88 | 2C 1D FF FF */	cmpwi r29, -0x1
/* 813DFD8C | 40 82 00 10 */	bne .L_813DFD9C
/* 813DFD90 | 57 E0 07 BF */	clrlwi. r0, r31, 30
/* 813DFD94 | 41 82 00 50 */	beq .L_813DFDE4
/* 813DFD98 | 48 00 00 18 */	b .L_813DFDB0
.L_813DFD9C:
/* 813DFD9C | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813DFDA0 | 40 82 00 10 */	bne .L_813DFDB0
/* 813DFDA4 | 57 E0 07 BE */	clrlwi r0, r31, 30
/* 813DFDA8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813DFDAC | 41 82 00 38 */	beq .L_813DFDE4
.L_813DFDB0:
/* 813DFDB0 | 7F 63 DB 78 */	mr r3, r27
/* 813DFDB4 | 7F 84 E3 78 */	mr r4, r28
/* 813DFDB8 | 7F E5 FB 78 */	mr r5, r31
/* 813DFDBC | 48 00 00 FD */	bl iplSDChannelSelect_813DFEB8
/* 813DFDC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFDC4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DFDC8 | 41 82 00 1C */	beq .L_813DFDE4
/* 813DFDCC | 7F C4 F3 78 */	mr r4, r30
/* 813DFDD0 | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813DFDD4 | 48 13 24 9D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813DFDD8 | 7F C4 F3 78 */	mr r4, r30
/* 813DFDDC | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813DFDE0 | 48 13 22 95 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_813DFDE4:
/* 813DFDE4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813DFDE8 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813DFDEC | 41 80 FF 9C */	blt .L_813DFD88
/* 813DFDF0 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813DFDF4 | 41 82 00 58 */	beq .L_813DFE4C
/* 813DFDF8 | 80 1B 00 A0 */	lwz r0, 0xa0(r27)
/* 813DFDFC | 38 7C 00 01 */	addi r3, r28, 0x1
/* 813DFE00 | 7C 03 00 00 */	cmpw r3, r0
/* 813DFE04 | 40 80 00 48 */	bge .L_813DFE4C
/* 813DFE08 | 3B C0 00 00 */	li r30, 0x0
.L_813DFE0C:
/* 813DFE0C | 7F 63 DB 78 */	mr r3, r27
/* 813DFE10 | 7F C5 F3 78 */	mr r5, r30
/* 813DFE14 | 38 9C 00 01 */	addi r4, r28, 0x1
/* 813DFE18 | 48 00 00 A1 */	bl iplSDChannelSelect_813DFEB8
/* 813DFE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFE20 | 7C 7F 1B 78 */	mr r31, r3
/* 813DFE24 | 41 82 00 1C */	beq .L_813DFE40
/* 813DFE28 | 7F E4 FB 78 */	mr r4, r31
/* 813DFE2C | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813DFE30 | 48 13 24 41 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813DFE34 | 7F E4 FB 78 */	mr r4, r31
/* 813DFE38 | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813DFE3C | 48 13 22 39 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_813DFE40:
/* 813DFE40 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813DFE44 | 2C 1E 00 0C */	cmpwi r30, 0xc
/* 813DFE48 | 41 80 FF C4 */	blt .L_813DFE0C
.L_813DFE4C:
/* 813DFE4C | 2C 1D FF FF */	cmpwi r29, -0x1
/* 813DFE50 | 41 82 00 50 */	beq .L_813DFEA0
/* 813DFE54 | 34 1C FF FF */	subic. r0, r28, 0x1
/* 813DFE58 | 41 80 00 48 */	blt .L_813DFEA0
/* 813DFE5C | 3B C0 00 03 */	li r30, 0x3
.L_813DFE60:
/* 813DFE60 | 7F 63 DB 78 */	mr r3, r27
/* 813DFE64 | 7F C5 F3 78 */	mr r5, r30
/* 813DFE68 | 38 9C FF FF */	subi r4, r28, 0x1
/* 813DFE6C | 48 00 00 4D */	bl iplSDChannelSelect_813DFEB8
/* 813DFE70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFE74 | 7C 7F 1B 78 */	mr r31, r3
/* 813DFE78 | 41 82 00 1C */	beq .L_813DFE94
/* 813DFE7C | 7F E4 FB 78 */	mr r4, r31
/* 813DFE80 | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813DFE84 | 48 13 23 ED */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813DFE88 | 7F E4 FB 78 */	mr r4, r31
/* 813DFE8C | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813DFE90 | 48 13 21 E5 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_813DFE94:
/* 813DFE94 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813DFE98 | 2C 1E 00 0C */	cmpwi r30, 0xc
/* 813DFE9C | 41 80 FF C4 */	blt .L_813DFE60
.L_813DFEA0:
/* 813DFEA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DFEA4 | 48 21 96 69 */	bl _restgpr_27
/* 813DFEA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DFEAC | 7C 08 03 A6 */	mtlr r0
/* 813DFEB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DFEB4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DFD64

# .text:0x53B0 | 0x813DFEB8 | size: 0x74
.fn iplSDChannelSelect_813DFEB8, global
/* 813DFEB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DFEBC | 7C 08 02 A6 */	mflr r0
/* 813DFEC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DFEC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DFEC8 | 48 21 96 01 */	bl _savegpr_29
/* 813DFECC | 7C 7D 1B 78 */	mr r29, r3
/* 813DFED0 | 7C 9E 23 78 */	mr r30, r4
/* 813DFED4 | 7C BF 2B 78 */	mr r31, r5
/* 813DFED8 | 38 60 00 00 */	li r3, 0x0
/* 813DFEDC | 48 00 00 20 */	b .L_813DFEFC
.L_813DFEE0:
/* 813DFEE0 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813DFEE4 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 813DFEE8 | 7C 00 F0 00 */	cmpw r0, r30
/* 813DFEEC | 40 82 00 10 */	bne .L_813DFEFC
/* 813DFEF0 | 7C 04 F8 00 */	cmpw r4, r31
/* 813DFEF4 | 40 82 00 08 */	bne .L_813DFEFC
/* 813DFEF8 | 48 00 00 1C */	b .L_813DFF14
.L_813DFEFC:
/* 813DFEFC | 7C 64 1B 78 */	mr r4, r3
/* 813DFF00 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813DFF04 | 48 13 23 D9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813DFF08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DFF0C | 40 82 FF D4 */	bne .L_813DFEE0
/* 813DFF10 | 38 60 00 00 */	li r3, 0x0
.L_813DFF14:
/* 813DFF14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DFF18 | 48 21 95 FD */	bl _restgpr_29
/* 813DFF1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DFF20 | 7C 08 03 A6 */	mtlr r0
/* 813DFF24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DFF28 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DFEB8

# .text:0x5424 | 0x813DFF2C | size: 0x1C0
.fn iplSDChannelSelect_813DFF2C, global
/* 813DFF2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DFF30 | 7C 08 02 A6 */	mflr r0
/* 813DFF34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DFF38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DFF3C | 7C 7F 1B 78 */	mr r31, r3
/* 813DFF40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DFF44 | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813DFF48 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813DFF4C | 41 82 00 0C */	beq .L_813DFF58
/* 813DFF50 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813DFF54 | 40 82 00 0C */	bne .L_813DFF60
.L_813DFF58:
/* 813DFF58 | 38 A0 00 01 */	li r5, 0x1
/* 813DFF5C | 48 00 00 08 */	b .L_813DFF64
.L_813DFF60:
/* 813DFF60 | 38 A0 00 00 */	li r5, 0x0
.L_813DFF64:
/* 813DFF64 | 80 83 00 9C */	lwz r4, 0x9c(r3)
/* 813DFF68 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813DFF6C | 7C 05 00 51 */	subf. r0, r5, r0
/* 813DFF70 | 41 80 00 60 */	blt .L_813DFFD0
/* 813DFF74 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813DFF78 | 3F C0 81 65 */	lis r30, lbl_81654388@ha
/* 813DFF7C | 80 9E 43 88 */	lwz r4, lbl_81654388@l(r30)
/* 813DFF80 | 38 A0 00 01 */	li r5, 0x1
/* 813DFF84 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DFF88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DFF8C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DFF90 | 7D 89 03 A6 */	mtctr r12
/* 813DFF94 | 4E 80 04 21 */	bctrl
/* 813DFF98 | 38 80 00 01 */	li r4, 0x1
/* 813DFF9C | 4B F6 44 79 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813DFFA0 | 80 DF 00 68 */	lwz r6, 0x68(r31)
/* 813DFFA4 | 38 7E 43 88 */	addi r3, r30, lbl_81654388@l
/* 813DFFA8 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813DFFAC | 38 A0 00 01 */	li r5, 0x1
/* 813DFFB0 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813DFFB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DFFB8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DFFBC | 7D 89 03 A6 */	mtctr r12
/* 813DFFC0 | 4E 80 04 21 */	bctrl
/* 813DFFC4 | 38 80 00 01 */	li r4, 0x1
/* 813DFFC8 | 4B F6 44 4D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813DFFCC | 48 00 00 3C */	b .L_813E0008
.L_813DFFD0:
/* 813DFFD0 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813DFFD4 | 20 05 00 01 */	subfic r0, r5, 0x1
/* 813DFFD8 | 3C 80 81 65 */	lis r4, lbl_81654388@ha
/* 813DFFDC | 38 A0 00 01 */	li r5, 0x1
/* 813DFFE0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813DFFE4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813DFFE8 | 38 84 43 88 */	addi r4, r4, lbl_81654388@l
/* 813DFFEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DFFF0 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813DFFF4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813DFFF8 | 7D 89 03 A6 */	mtctr r12
/* 813DFFFC | 4E 80 04 21 */	bctrl
/* 813E0000 | 38 80 00 00 */	li r4, 0x0
/* 813E0004 | 4B F6 44 11 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813E0008:
/* 813E0008 | 80 1F 00 98 */	lwz r0, 0x98(r31)
/* 813E000C | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813E0010 | 41 82 00 0C */	beq .L_813E001C
/* 813E0014 | 2C 00 00 17 */	cmpwi r0, 0x17
/* 813E0018 | 40 82 00 0C */	bne .L_813E0024
.L_813E001C:
/* 813E001C | 38 80 00 01 */	li r4, 0x1
/* 813E0020 | 48 00 00 08 */	b .L_813E0028
.L_813E0024:
/* 813E0024 | 38 80 00 00 */	li r4, 0x0
.L_813E0028:
/* 813E0028 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 813E002C | 80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 813E0030 | 7C 64 1A 14 */	add r3, r4, r3
/* 813E0034 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813E0038 | 7C 03 00 00 */	cmpw r3, r0
/* 813E003C | 40 80 00 60 */	bge .L_813E009C
/* 813E0040 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E0044 | 3F C0 81 65 */	lis r30, lbl_81654388@ha
/* 813E0048 | 3B DE 43 88 */	addi r30, r30, lbl_81654388@l
/* 813E004C | 38 A0 00 01 */	li r5, 0x1
/* 813E0050 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E0054 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 813E0058 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E005C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E0060 | 7D 89 03 A6 */	mtctr r12
/* 813E0064 | 4E 80 04 21 */	bctrl
/* 813E0068 | 38 80 00 01 */	li r4, 0x1
/* 813E006C | 4B F6 43 A9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E0070 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E0074 | 38 A0 00 01 */	li r5, 0x1
/* 813E0078 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 813E007C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E0080 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E0084 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E0088 | 7D 89 03 A6 */	mtctr r12
/* 813E008C | 4E 80 04 21 */	bctrl
/* 813E0090 | 38 80 00 01 */	li r4, 0x1
/* 813E0094 | 4B F6 43 81 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E0098 | 48 00 00 3C */	b .L_813E00D4
.L_813E009C:
/* 813E009C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E00A0 | 38 04 00 03 */	addi r0, r4, 0x3
/* 813E00A4 | 3C 80 81 65 */	lis r4, lbl_81654388@ha
/* 813E00A8 | 38 A0 00 01 */	li r5, 0x1
/* 813E00AC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E00B0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E00B4 | 38 84 43 88 */	addi r4, r4, lbl_81654388@l
/* 813E00B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E00BC | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813E00C0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E00C4 | 7D 89 03 A6 */	mtctr r12
/* 813E00C8 | 4E 80 04 21 */	bctrl
/* 813E00CC | 38 80 00 00 */	li r4, 0x0
/* 813E00D0 | 4B F6 43 45 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813E00D4:
/* 813E00D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E00D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E00DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E00E0 | 7C 08 03 A6 */	mtlr r0
/* 813E00E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E00E8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813DFF2C

# .text:0x55E4 | 0x813E00EC | size: 0x140
.fn iplSDChannelSelect_813E00EC, global
/* 813E00EC | 80 C3 00 9C */	lwz r6, 0x9c(r3)
/* 813E00F0 | 7C 04 30 00 */	cmpw r4, r6
/* 813E00F4 | 40 82 00 0C */	bne .L_813E0100
/* 813E00F8 | 38 60 00 01 */	li r3, 0x1
/* 813E00FC | 4E 80 00 20 */	blr
.L_813E0100:
/* 813E0100 | 38 06 FF FF */	subi r0, r6, 0x1
/* 813E0104 | 7C 04 00 00 */	cmpw r4, r0
/* 813E0108 | 40 82 00 44 */	bne .L_813E014C
/* 813E010C | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813E0110 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813E0114 | 41 82 00 0C */	beq .L_813E0120
/* 813E0118 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813E011C | 40 82 00 0C */	bne .L_813E0128
.L_813E0120:
/* 813E0120 | 38 60 00 01 */	li r3, 0x1
/* 813E0124 | 4E 80 00 20 */	blr
.L_813E0128:
/* 813E0128 | 38 60 00 03 */	li r3, 0x3
/* 813E012C | 7C 69 03 A6 */	mtctr r3
.L_813E0130:
/* 813E0130 | 7C 03 28 00 */	cmpw r3, r5
/* 813E0134 | 40 82 00 0C */	bne .L_813E0140
/* 813E0138 | 38 60 00 01 */	li r3, 0x1
/* 813E013C | 4E 80 00 20 */	blr
.L_813E0140:
/* 813E0140 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813E0144 | 42 00 FF EC */	bdnz .L_813E0130
/* 813E0148 | 48 00 00 DC */	b .L_813E0224
.L_813E014C:
/* 813E014C | 38 06 FF FE */	subi r0, r6, 0x2
/* 813E0150 | 7C 04 00 00 */	cmpw r4, r0
/* 813E0154 | 40 82 00 3C */	bne .L_813E0190
/* 813E0158 | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813E015C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813E0160 | 41 82 00 0C */	beq .L_813E016C
/* 813E0164 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813E0168 | 40 82 00 BC */	bne .L_813E0224
.L_813E016C:
/* 813E016C | 38 60 00 03 */	li r3, 0x3
/* 813E0170 | 7C 69 03 A6 */	mtctr r3
.L_813E0174:
/* 813E0174 | 7C 03 28 00 */	cmpw r3, r5
/* 813E0178 | 40 82 00 0C */	bne .L_813E0184
/* 813E017C | 38 60 00 01 */	li r3, 0x1
/* 813E0180 | 4E 80 00 20 */	blr
.L_813E0184:
/* 813E0184 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813E0188 | 42 00 FF EC */	bdnz .L_813E0174
/* 813E018C | 48 00 00 98 */	b .L_813E0224
.L_813E0190:
/* 813E0190 | 38 06 00 01 */	addi r0, r6, 0x1
/* 813E0194 | 7C 04 00 00 */	cmpw r4, r0
/* 813E0198 | 40 82 00 48 */	bne .L_813E01E0
/* 813E019C | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813E01A0 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813E01A4 | 41 82 00 0C */	beq .L_813E01B0
/* 813E01A8 | 2C 00 00 17 */	cmpwi r0, 0x17
/* 813E01AC | 40 82 00 0C */	bne .L_813E01B8
.L_813E01B0:
/* 813E01B0 | 38 60 00 01 */	li r3, 0x1
/* 813E01B4 | 4E 80 00 20 */	blr
.L_813E01B8:
/* 813E01B8 | 38 00 00 03 */	li r0, 0x3
/* 813E01BC | 38 60 00 00 */	li r3, 0x0
/* 813E01C0 | 7C 09 03 A6 */	mtctr r0
.L_813E01C4:
/* 813E01C4 | 7C 03 28 00 */	cmpw r3, r5
/* 813E01C8 | 40 82 00 0C */	bne .L_813E01D4
/* 813E01CC | 38 60 00 01 */	li r3, 0x1
/* 813E01D0 | 4E 80 00 20 */	blr
.L_813E01D4:
/* 813E01D4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813E01D8 | 42 00 FF EC */	bdnz .L_813E01C4
/* 813E01DC | 48 00 00 48 */	b .L_813E0224
.L_813E01E0:
/* 813E01E0 | 38 06 00 02 */	addi r0, r6, 0x2
/* 813E01E4 | 7C 04 00 00 */	cmpw r4, r0
/* 813E01E8 | 40 82 00 3C */	bne .L_813E0224
/* 813E01EC | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813E01F0 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813E01F4 | 41 82 00 0C */	beq .L_813E0200
/* 813E01F8 | 2C 00 00 17 */	cmpwi r0, 0x17
/* 813E01FC | 40 82 00 28 */	bne .L_813E0224
.L_813E0200:
/* 813E0200 | 38 00 00 03 */	li r0, 0x3
/* 813E0204 | 38 60 00 00 */	li r3, 0x0
/* 813E0208 | 7C 09 03 A6 */	mtctr r0
.L_813E020C:
/* 813E020C | 7C 03 28 00 */	cmpw r3, r5
/* 813E0210 | 40 82 00 0C */	bne .L_813E021C
/* 813E0214 | 38 60 00 01 */	li r3, 0x1
/* 813E0218 | 4E 80 00 20 */	blr
.L_813E021C:
/* 813E021C | 38 63 00 04 */	addi r3, r3, 0x4
/* 813E0220 | 42 00 FF EC */	bdnz .L_813E020C
.L_813E0224:
/* 813E0224 | 38 60 00 00 */	li r3, 0x0
/* 813E0228 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E00EC

# .text:0x5724 | 0x813E022C | size: 0x68
.fn iplSDChannelSelect_813E022C, global
/* 813E022C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E0230 | 7C 08 02 A6 */	mflr r0
/* 813E0234 | 7C 66 20 50 */	subf r3, r6, r4
/* 813E0238 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 813E023C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E0240 | 40 81 00 38 */	ble .L_813E0278
/* 813E0244 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813E0248 | 40 80 00 30 */	bge .L_813E0278
/* 813E024C | 38 03 00 02 */	addi r0, r3, 0x2
/* 813E0250 | 3C C0 81 65 */	lis r6, lbl_81654204@ha
/* 813E0254 | 1C 00 00 30 */	mulli r0, r0, 0x30
/* 813E0258 | 54 A3 10 3A */	slwi r3, r5, 2
/* 813E025C | 38 C6 42 04 */	addi r6, r6, lbl_81654204@l
/* 813E0260 | 38 8D 8D 7D */	li r4, lbl_81696DBD@sda21
/* 813E0264 | 7C 06 02 14 */	add r0, r6, r0
/* 813E0268 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813E026C | 48 22 22 15 */	bl strcmp
/* 813E0270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E0274 | 40 82 00 0C */	bne .L_813E0280
.L_813E0278:
/* 813E0278 | 38 60 00 00 */	li r3, 0x0
/* 813E027C | 48 00 00 08 */	b .L_813E0284
.L_813E0280:
/* 813E0280 | 38 60 00 01 */	li r3, 0x1
.L_813E0284:
/* 813E0284 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E0288 | 7C 08 03 A6 */	mtlr r0
/* 813E028C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E0290 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E022C

# .text:0x578C | 0x813E0294 | size: 0x104
.fn iplSDChannelSelect_813E0294, global
/* 813E0294 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E0298 | 7C 08 02 A6 */	mflr r0
/* 813E029C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E02A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E02A4 | 48 21 92 25 */	bl _savegpr_29
/* 813E02A8 | 7C 7D 1B 78 */	mr r29, r3
/* 813E02AC | 7C 9E 23 78 */	mr r30, r4
/* 813E02B0 | 3B E0 00 00 */	li r31, 0x0
.L_813E02B4:
/* 813E02B4 | 7F A3 EB 78 */	mr r3, r29
/* 813E02B8 | 7F C4 F3 78 */	mr r4, r30
/* 813E02BC | 7F E5 FB 78 */	mr r5, r31
/* 813E02C0 | 4B FF FB F9 */	bl iplSDChannelSelect_813DFEB8
/* 813E02C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E02C8 | 41 82 00 10 */	beq .L_813E02D8
/* 813E02CC | 4B FF EF 19 */	bl iplSDChannelSelect_813DF1E4
/* 813E02D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E02D4 | 40 82 00 0C */	bne .L_813E02E0
.L_813E02D8:
/* 813E02D8 | 38 60 00 00 */	li r3, 0x0
/* 813E02DC | 48 00 00 A4 */	b .L_813E0380
.L_813E02E0:
/* 813E02E0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813E02E4 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813E02E8 | 41 80 FF CC */	blt .L_813E02B4
/* 813E02EC | 80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 813E02F0 | 38 7E 00 01 */	addi r3, r30, 0x1
/* 813E02F4 | 7C 03 00 00 */	cmpw r3, r0
/* 813E02F8 | 40 80 00 40 */	bge .L_813E0338
/* 813E02FC | 3B E0 00 00 */	li r31, 0x0
.L_813E0300:
/* 813E0300 | 7F A3 EB 78 */	mr r3, r29
/* 813E0304 | 7F E5 FB 78 */	mr r5, r31
/* 813E0308 | 38 9E 00 01 */	addi r4, r30, 0x1
/* 813E030C | 4B FF FB AD */	bl iplSDChannelSelect_813DFEB8
/* 813E0310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E0314 | 41 82 00 10 */	beq .L_813E0324
/* 813E0318 | 4B FF EE CD */	bl iplSDChannelSelect_813DF1E4
/* 813E031C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E0320 | 40 82 00 0C */	bne .L_813E032C
.L_813E0324:
/* 813E0324 | 38 60 00 00 */	li r3, 0x0
/* 813E0328 | 48 00 00 58 */	b .L_813E0380
.L_813E032C:
/* 813E032C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E0330 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813E0334 | 41 80 FF CC */	blt .L_813E0300
.L_813E0338:
/* 813E0338 | 34 1E FF FF */	subic. r0, r30, 0x1
/* 813E033C | 41 80 00 40 */	blt .L_813E037C
/* 813E0340 | 3B E0 00 03 */	li r31, 0x3
.L_813E0344:
/* 813E0344 | 7F A3 EB 78 */	mr r3, r29
/* 813E0348 | 7F E5 FB 78 */	mr r5, r31
/* 813E034C | 38 9E FF FF */	subi r4, r30, 0x1
/* 813E0350 | 4B FF FB 69 */	bl iplSDChannelSelect_813DFEB8
/* 813E0354 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E0358 | 41 82 00 10 */	beq .L_813E0368
/* 813E035C | 4B FF EE 89 */	bl iplSDChannelSelect_813DF1E4
/* 813E0360 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E0364 | 40 82 00 0C */	bne .L_813E0370
.L_813E0368:
/* 813E0368 | 38 60 00 00 */	li r3, 0x0
/* 813E036C | 48 00 00 14 */	b .L_813E0380
.L_813E0370:
/* 813E0370 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E0374 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813E0378 | 41 80 FF CC */	blt .L_813E0344
.L_813E037C:
/* 813E037C | 38 60 00 01 */	li r3, 0x1
.L_813E0380:
/* 813E0380 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E0384 | 48 21 91 91 */	bl _restgpr_29
/* 813E0388 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E038C | 7C 08 03 A6 */	mtlr r0
/* 813E0390 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E0394 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E0294

# .text:0x5890 | 0x813E0398 | size: 0x18
.fn iplSDChannelSelect_813E0398, global
/* 813E0398 | 90 83 00 98 */	stw r4, 0x98(r3)
/* 813E039C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E03A0 | 3C 80 81 65 */	lis r4, lbl_8165481D@ha
/* 813E03A4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E03A8 | 38 84 48 1D */	addi r4, r4, lbl_8165481D@l
/* 813E03AC | 4B F8 B0 C0 */	b startSE__Q33ipl3snd6SystemFPCc
.endfn iplSDChannelSelect_813E0398

# .text:0x58A8 | 0x813E03B0 | size: 0xA0
.fn iplSDChannelSelect_813E03B0, global
/* 813E03B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E03B4 | 7C 08 02 A6 */	mflr r0
/* 813E03B8 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 813E03BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E03C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E03C4 | 7C 9F 23 78 */	mr r31, r4
/* 813E03C8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E03CC | 7C 7E 1B 78 */	mr r30, r3
/* 813E03D0 | 40 82 00 28 */	bne .L_813E03F8
/* 813E03D4 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813E03D8 | 38 80 FF FF */	li r4, -0x1
/* 813E03DC | C0 22 86 C8 */	lfs f1, lbl_81694AC8@sda21(r0)
/* 813E03E0 | 4B F8 A6 11 */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813E03E4 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813E03E8 | 38 80 FF FF */	li r4, -0x1
/* 813E03EC | C0 22 86 D4 */	lfs f1, lbl_81694AD4@sda21(r0)
/* 813E03F0 | 4B F8 A5 91 */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813E03F4 | 48 00 00 24 */	b .L_813E0418
.L_813E03F8:
/* 813E03F8 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813E03FC | 38 80 FF FF */	li r4, -0x1
/* 813E0400 | C0 22 86 D8 */	lfs f1, lbl_81694AD8@sda21(r0)
/* 813E0404 | 4B F8 A5 ED */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813E0408 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813E040C | 38 80 FF FF */	li r4, -0x1
/* 813E0410 | C0 22 86 DC */	lfs f1, lbl_81694ADC@sda21(r0)
/* 813E0414 | 4B F8 A5 6D */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
.L_813E0418:
/* 813E0418 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813E041C | 38 80 00 00 */	li r4, 0x0
/* 813E0420 | 38 A0 FF FF */	li r5, -0x1
/* 813E0424 | 4B F8 A6 3D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813E0428 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813E042C | 38 80 FF FF */	li r4, -0x1
/* 813E0430 | 4B F8 A4 C9 */	bl start__Q33ipl6layout6ObjectFi
/* 813E0434 | 93 FE 00 98 */	stw r31, 0x98(r30)
/* 813E0438 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E043C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E0440 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E0444 | 7C 08 03 A6 */	mtlr r0
/* 813E0448 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E044C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E03B0

# .text:0x5948 | 0x813E0450 | size: 0xEC
.fn iplSDChannelSelect_813E0450, global
/* 813E0450 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E0454 | 7C 08 02 A6 */	mflr r0
/* 813E0458 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E045C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E0460 | 48 21 90 69 */	bl _savegpr_29
/* 813E0464 | 7C 7D 1B 78 */	mr r29, r3
/* 813E0468 | 7C BE 2B 78 */	mr r30, r5
/* 813E046C | 4B FF FA 4D */	bl iplSDChannelSelect_813DFEB8
/* 813E0470 | 7C 7F 1B 78 */	mr r31, r3
/* 813E0474 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E0478 | 80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 813E047C | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 813E0480 | 38 84 00 2C */	addi r4, r4, 0x2c
/* 813E0484 | 4B FB 71 21 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813E0488 | 7C 64 1B 78 */	mr r4, r3
/* 813E048C | 7F A3 EB 78 */	mr r3, r29
/* 813E0490 | 38 A0 00 00 */	li r5, 0x0
/* 813E0494 | 48 00 07 59 */	bl iplSDChannelSelect_813E0BEC
/* 813E0498 | 7F E3 FB 78 */	mr r3, r31
/* 813E049C | 48 00 30 45 */	bl iplSDChannelObj_813E34E0
/* 813E04A0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E04A4 | 38 80 00 24 */	li r4, 0x24
/* 813E04A8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E04AC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813E04B0 | 48 02 AC 89 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E04B4 | 88 1D 00 C8 */	lbz r0, 0xc8(r29)
/* 813E04B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813E04BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E04C0 | 41 82 00 0C */	beq .L_813E04CC
/* 813E04C4 | 38 80 00 0F */	li r4, 0xf
/* 813E04C8 | 48 00 9D 8D */	bl iplSDChannelButton_813EA254
.L_813E04CC:
/* 813E04CC | 88 1D 00 C9 */	lbz r0, 0xc9(r29)
/* 813E04D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E04D4 | 41 82 00 10 */	beq .L_813E04E4
/* 813E04D8 | 7F E3 FB 78 */	mr r3, r31
/* 813E04DC | 38 80 00 10 */	li r4, 0x10
/* 813E04E0 | 48 00 9D 75 */	bl iplSDChannelButton_813EA254
.L_813E04E4:
/* 813E04E4 | 7F E3 FB 78 */	mr r3, r31
/* 813E04E8 | 48 00 A2 75 */	bl iplSDChannelButton_813EA75C
/* 813E04EC | 7F E3 FB 78 */	mr r3, r31
/* 813E04F0 | 38 80 00 00 */	li r4, 0x0
/* 813E04F4 | 48 00 9C 99 */	bl iplSDChannelButton_813EA18C
/* 813E04F8 | 38 00 00 05 */	li r0, 0x5
/* 813E04FC | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 813E0500 | 3C 80 81 65 */	lis r4, lbl_81654828@ha
/* 813E0504 | 93 DD 00 A4 */	stw r30, 0xa4(r29)
/* 813E0508 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813E050C | 90 1D 00 98 */	stw r0, 0x98(r29)
/* 813E0510 | 38 84 48 28 */	addi r4, r4, lbl_81654828@l
/* 813E0514 | 4B F8 AF 59 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E0518 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813E051C | 38 80 00 05 */	li r4, 0x5
/* 813E0520 | 4B F8 B5 15 */	bl stopBGM__Q33ipl3snd6SystemFi
/* 813E0524 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E0528 | 48 21 8F ED */	bl _restgpr_29
/* 813E052C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E0530 | 7C 08 03 A6 */	mtlr r0
/* 813E0534 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E0538 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E0450

# .text:0x5A34 | 0x813E053C | size: 0x84
.fn iplSDChannelSelect_813E053C, global
/* 813E053C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E0540 | 7C 08 02 A6 */	mflr r0
/* 813E0544 | C0 22 86 E0 */	lfs f1, lbl_81694AE0@sda21(r0)
/* 813E0548 | 38 80 FF FF */	li r4, -0x1
/* 813E054C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E0550 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E0554 | 7C 7F 1B 78 */	mr r31, r3
/* 813E0558 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813E055C | 4B F8 A4 95 */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813E0560 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E0564 | 38 80 FF FF */	li r4, -0x1
/* 813E0568 | C0 22 86 E4 */	lfs f1, lbl_81694AE4@sda21(r0)
/* 813E056C | 4B F8 A4 15 */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813E0570 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E0574 | 38 80 00 00 */	li r4, 0x0
/* 813E0578 | 38 A0 FF FF */	li r5, -0x1
/* 813E057C | 4B F8 A4 E5 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813E0580 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E0584 | 38 80 FF FF */	li r4, -0x1
/* 813E0588 | 4B F8 A3 71 */	bl start__Q33ipl6layout6ObjectFi
/* 813E058C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E0590 | 3C 80 81 65 */	lis r4, lbl_81654838@ha
/* 813E0594 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E0598 | 38 84 48 38 */	addi r4, r4, lbl_81654838@l
/* 813E059C | 4B F8 AE D1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E05A0 | 38 00 00 07 */	li r0, 0x7
/* 813E05A4 | 38 60 00 01 */	li r3, 0x1
/* 813E05A8 | 90 1F 00 98 */	stw r0, 0x98(r31)
/* 813E05AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E05B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E05B4 | 7C 08 03 A6 */	mtlr r0
/* 813E05B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E05BC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E053C

# .text:0x5AB8 | 0x813E05C0 | size: 0x64
.fn iplSDChannelSelect_813E05C0, global
/* 813E05C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E05C4 | 7C 08 02 A6 */	mflr r0
/* 813E05C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E05CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E05D0 | 7C 9F 23 78 */	mr r31, r4
/* 813E05D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E05D8 | 7C 7E 1B 78 */	mr r30, r3
/* 813E05DC | 80 03 00 9C */	lwz r0, 0x9c(r3)
/* 813E05E0 | 7C 04 00 00 */	cmpw r4, r0
/* 813E05E4 | 40 82 00 0C */	bne .L_813E05F0
/* 813E05E8 | 4B FF FC AD */	bl iplSDChannelSelect_813E0294
/* 813E05EC | 48 00 00 20 */	b .L_813E060C
.L_813E05F0:
/* 813E05F0 | 90 83 00 9C */	stw r4, 0x9c(r3)
/* 813E05F4 | 38 A0 00 00 */	li r5, 0x0
/* 813E05F8 | 38 C0 FF FF */	li r6, -0x1
/* 813E05FC | 4B FF F0 D5 */	bl iplSDChannelSelect_813DF6D0
/* 813E0600 | 7F C3 F3 78 */	mr r3, r30
/* 813E0604 | 7F E4 FB 78 */	mr r4, r31
/* 813E0608 | 4B FF FC 8D */	bl iplSDChannelSelect_813E0294
.L_813E060C:
/* 813E060C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E0610 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E0614 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E0618 | 7C 08 03 A6 */	mtlr r0
/* 813E061C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E0620 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E05C0

# .text:0x5B1C | 0x813E0624 | size: 0xB4
.fn iplSDChannelSelect_813E0624, global
/* 813E0624 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E0628 | 7C 08 02 A6 */	mflr r0
/* 813E062C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E0630 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813E0634 | 7C BF 2B 78 */	mr r31, r5
/* 813E0638 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 813E063C | 7C 7E 1B 78 */	mr r30, r3
/* 813E0640 | 90 83 00 9C */	stw r4, 0x9c(r3)
/* 813E0644 | 38 80 00 01 */	li r4, 0x1
/* 813E0648 | 90 A3 00 A4 */	stw r5, 0xa4(r3)
/* 813E064C | 38 A0 FF FF */	li r5, -0x1
/* 813E0650 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813E0654 | 4B F8 A4 0D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813E0658 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813E065C | 38 80 FF FF */	li r4, -0x1
/* 813E0660 | 4B F8 A2 99 */	bl start__Q33ipl6layout6ObjectFi
/* 813E0664 | C0 22 86 C8 */	lfs f1, lbl_81694AC8@sda21(r0)
/* 813E0668 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E066C | FC 40 08 90 */	fmr f2, f1
/* 813E0670 | FC 60 08 90 */	fmr f3, f1
/* 813E0674 | 4B F9 42 11 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813E0678 | 7F C3 F3 78 */	mr r3, r30
/* 813E067C | 7F E4 FB 78 */	mr r4, r31
/* 813E0680 | 48 00 01 05 */	bl iplSDChannelSelect_813E0784
/* 813E0684 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E0688 | 38 63 00 84 */	addi r3, r3, 0x84
/* 813E068C | 7C 85 23 78 */	mr r5, r4
/* 813E0690 | 48 16 0E 2D */	bl fn_815414BC
/* 813E0694 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813E0698 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E069C | 4B FB 6F 09 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813E06A0 | 7F C3 F3 78 */	mr r3, r30
/* 813E06A4 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813E06A8 | 38 A0 00 01 */	li r5, 0x1
/* 813E06AC | 48 00 05 41 */	bl iplSDChannelSelect_813E0BEC
/* 813E06B0 | 7F C3 F3 78 */	mr r3, r30
/* 813E06B4 | 48 00 08 2D */	bl iplSDChannelSelect_813E0EE0
/* 813E06B8 | 38 00 00 0E */	li r0, 0xe
/* 813E06BC | 90 1E 00 98 */	stw r0, 0x98(r30)
/* 813E06C0 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813E06C4 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 813E06C8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E06CC | 7C 08 03 A6 */	mtlr r0
/* 813E06D0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E06D4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E0624

# .text:0x5BD0 | 0x813E06D8 | size: 0xAC
.fn iplSDChannelSelect_813E06D8, global
/* 813E06D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E06DC | 7C 08 02 A6 */	mflr r0
/* 813E06E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E06E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E06E8 | 48 21 8D DD */	bl _savegpr_28
/* 813E06EC | 7C 7C 1B 78 */	mr r28, r3
/* 813E06F0 | 7C 9D 23 78 */	mr r29, r4
/* 813E06F4 | 7C BE 2B 78 */	mr r30, r5
/* 813E06F8 | 7C DF 33 78 */	mr r31, r6
/* 813E06FC | 4B FF FB 31 */	bl iplSDChannelSelect_813E022C
/* 813E0700 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E0704 | 41 82 00 44 */	beq .L_813E0748
/* 813E0708 | 80 9C 00 68 */	lwz r4, 0x68(r28)
/* 813E070C | 7C 7F E8 50 */	subf r3, r31, r29
/* 813E0710 | 38 03 00 02 */	addi r0, r3, 0x2
/* 813E0714 | 3C A0 81 65 */	lis r5, lbl_81654204@ha
/* 813E0718 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 813E071C | 1C 00 00 30 */	mulli r0, r0, 0x30
/* 813E0720 | 38 A5 42 04 */	addi r5, r5, lbl_81654204@l
/* 813E0724 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E0728 | 57 C4 10 3A */	slwi r4, r30, 2
/* 813E072C | 7C 05 02 14 */	add r0, r5, r0
/* 813E0730 | 38 A0 00 01 */	li r5, 0x1
/* 813E0734 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E0738 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813E073C | 7D 89 03 A6 */	mtctr r12
/* 813E0740 | 4E 80 04 21 */	bctrl
/* 813E0744 | 48 00 00 28 */	b .L_813E076C
.L_813E0748:
/* 813E0748 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 813E074C | 3C 80 81 65 */	lis r4, lbl_8165473B@ha
/* 813E0750 | 38 84 47 3B */	addi r4, r4, lbl_8165473B@l
/* 813E0754 | 38 A0 00 01 */	li r5, 0x1
/* 813E0758 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E075C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E0760 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E0764 | 7D 89 03 A6 */	mtctr r12
/* 813E0768 | 4E 80 04 21 */	bctrl
.L_813E076C:
/* 813E076C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E0770 | 48 21 8D A1 */	bl _restgpr_28
/* 813E0774 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E0778 | 7C 08 03 A6 */	mtlr r0
/* 813E077C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E0780 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E06D8

# .text:0x5C7C | 0x813E0784 | size: 0x30
.fn iplSDChannelSelect_813E0784, global
/* 813E0784 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813E0788 | 3C A0 81 65 */	lis r5, lbl_81654204@ha
/* 813E078C | 38 A5 42 04 */	addi r5, r5, lbl_81654204@l
/* 813E0790 | 54 80 10 3A */	slwi r0, r4, 2
/* 813E0794 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E0798 | 7C 85 02 14 */	add r4, r5, r0
/* 813E079C | 80 84 00 60 */	lwz r4, 0x60(r4)
/* 813E07A0 | 38 A0 00 01 */	li r5, 0x1
/* 813E07A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E07A8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E07AC | 7D 89 03 A6 */	mtctr r12
/* 813E07B0 | 4E 80 04 20 */	bctr
.endfn iplSDChannelSelect_813E0784

# .text:0x5CAC | 0x813E07B4 | size: 0x30
.fn iplSDChannelSelect_813E07B4, global
/* 813E07B4 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813E07B8 | 3C A0 81 65 */	lis r5, lbl_81654204@ha
/* 813E07BC | 38 A5 42 04 */	addi r5, r5, lbl_81654204@l
/* 813E07C0 | 54 80 10 3A */	slwi r0, r4, 2
/* 813E07C4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E07C8 | 7C 85 02 14 */	add r4, r5, r0
/* 813E07CC | 80 84 00 60 */	lwz r4, 0x60(r4)
/* 813E07D0 | 38 A0 00 01 */	li r5, 0x1
/* 813E07D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E07D8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E07DC | 7D 89 03 A6 */	mtctr r12
/* 813E07E0 | 4E 80 04 20 */	bctr
.endfn iplSDChannelSelect_813E07B4

# .text:0x5CDC | 0x813E07E4 | size: 0x64
.fn iplSDChannelSelect_813E07E4, global
/* 813E07E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E07E8 | 7C 08 02 A6 */	mflr r0
/* 813E07EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E07F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E07F4 | 48 21 8C D5 */	bl _savegpr_29
/* 813E07F8 | C0 22 86 C8 */	lfs f1, lbl_81694AC8@sda21(r0)
/* 813E07FC | 7C 7D 1B 78 */	mr r29, r3
/* 813E0800 | 7C 9E 23 78 */	mr r30, r4
/* 813E0804 | 7C BF 2B 78 */	mr r31, r5
/* 813E0808 | FC 40 08 90 */	fmr f2, f1
/* 813E080C | FC 60 08 90 */	fmr f3, f1
/* 813E0810 | 4B F9 40 75 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813E0814 | 7F C3 F3 78 */	mr r3, r30
/* 813E0818 | 7F E4 FB 78 */	mr r4, r31
/* 813E081C | 4B FF FF 69 */	bl iplSDChannelSelect_813E0784
/* 813E0820 | 7F A4 EB 78 */	mr r4, r29
/* 813E0824 | 7F A5 EB 78 */	mr r5, r29
/* 813E0828 | 38 63 00 84 */	addi r3, r3, 0x84
/* 813E082C | 48 16 0C 91 */	bl fn_815414BC
/* 813E0830 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E0834 | 48 21 8C E1 */	bl _restgpr_29
/* 813E0838 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E083C | 7C 08 03 A6 */	mtlr r0
/* 813E0840 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E0844 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E07E4

# .text:0x5D40 | 0x813E0848 | size: 0x3A4
.fn iplSDChannelSelect_813E0848, global
/* 813E0848 | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 813E084C | 7C 08 02 A6 */	mflr r0
/* 813E0850 | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 813E0854 | DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 813E0858 | F3 E1 00 D8 */	psq_st f31, 0xd8(r1), 0, qr0
/* 813E085C | DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 813E0860 | F3 C1 00 C8 */	psq_st f30, 0xc8(r1), 0, qr0
/* 813E0864 | DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 813E0868 | F3 A1 00 B8 */	psq_st f29, 0xb8(r1), 0, qr0
/* 813E086C | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813E0870 | 48 21 8C 59 */	bl _savegpr_29
/* 813E0874 | 3C 00 43 30 */	lis r0, 0x4330
/* 813E0878 | 7C 7E 1B 78 */	mr r30, r3
/* 813E087C | 90 01 00 88 */	stw r0, 0x88(r1)
/* 813E0880 | 7C 83 23 78 */	mr r3, r4
/* 813E0884 | 90 01 00 90 */	stw r0, 0x90(r1)
/* 813E0888 | 48 00 2A 99 */	bl iplSDChannelObj_813E3320
/* 813E088C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813E0890 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813E0894 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813E0898 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813E089C | 90 A1 00 38 */	stw r5, 0x38(r1)
/* 813E08A0 | 90 81 00 3C */	stw r4, 0x3c(r1)
/* 813E08A4 | 90 01 00 40 */	stw r0, 0x40(r1)
/* 813E08A8 | 4B F5 5B 81 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E08AC | 38 61 00 28 */	addi r3, r1, 0x28
/* 813E08B0 | 4B F5 50 69 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813E08B4 | 4B F5 50 E1 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813E08B8 | 80 1E 00 98 */	lwz r0, 0x98(r30)
/* 813E08BC | 7C 7D 1B 78 */	mr r29, r3
/* 813E08C0 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813E08C4 | 41 82 00 14 */	beq .L_813E08D8
/* 813E08C8 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 813E08CC | 41 82 00 0C */	beq .L_813E08D8
/* 813E08D0 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 813E08D4 | 40 82 01 44 */	bne .L_813E0A18
.L_813E08D8:
/* 813E08D8 | C0 01 00 30 */	lfs f0, 0x30(r1)
/* 813E08DC | 38 61 00 44 */	addi r3, r1, 0x44
/* 813E08E0 | C0 DE 00 BC */	lfs f6, 0xbc(r30)
/* 813E08E4 | C0 81 00 28 */	lfs f4, 0x28(r1)
/* 813E08E8 | ED 20 30 24 */	fdivs f9, f0, f6
/* 813E08EC | C0 41 00 34 */	lfs f2, 0x34(r1)
/* 813E08F0 | C0 7E 00 C0 */	lfs f3, 0xc0(r30)
/* 813E08F4 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 813E08F8 | C1 1E 00 B0 */	lfs f8, 0xb0(r30)
/* 813E08FC | C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 813E0900 | EC E4 30 24 */	fdivs f7, f4, f6
/* 813E0904 | C0 A2 86 E8 */	lfs f5, lbl_81694AE8@sda21(r0)
/* 813E0908 | C0 C2 86 EC */	lfs f6, lbl_81694AEC@sda21(r0)
/* 813E090C | EC 42 18 24 */	fdivs f2, f2, f3
/* 813E0910 | EC 00 18 24 */	fdivs f0, f0, f3
/* 813E0914 | EC 41 10 28 */	fsubs f2, f1, f2
/* 813E0918 | EC 88 48 2A */	fadds f4, f8, f9
/* 813E091C | EC 68 38 2A */	fadds f3, f8, f7
/* 813E0920 | EC 21 00 28 */	fsubs f1, f1, f0
/* 813E0924 | 48 16 0C D9 */	bl fn_815415FC
/* 813E0928 | C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 813E092C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E0930 | C0 41 00 38 */	lfs f2, 0x38(r1)
/* 813E0934 | 38 81 00 44 */	addi r4, r1, 0x44
/* 813E0938 | C0 22 86 C8 */	lfs f1, lbl_81694AC8@sda21(r0)
/* 813E093C | 38 A1 00 18 */	addi r5, r1, 0x18
/* 813E0940 | C0 02 86 CC */	lfs f0, lbl_81694ACC@sda21(r0)
/* 813E0944 | D0 41 00 18 */	stfs f2, 0x18(r1)
/* 813E0948 | D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 813E094C | D0 21 00 20 */	stfs f1, 0x20(r1)
/* 813E0950 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 813E0954 | 48 13 DF 05 */	bl fn_8151E858
/* 813E0958 | A0 1D 00 04 */	lhz r0, 0x4(r29)
/* 813E095C | A0 7D 00 06 */	lhz r3, 0x6(r29)
/* 813E0960 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 813E0964 | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 813E0968 | C8 41 00 88 */	lfd f2, 0x88(r1)
/* 813E096C | C0 01 00 28 */	lfs f0, 0x28(r1)
/* 813E0970 | 90 61 00 8C */	stw r3, 0x8c(r1)
/* 813E0974 | EF A1 00 28 */	fsubs f29, f1, f0
/* 813E0978 | C9 62 87 00 */	lfd f11, lbl_81694B00@sda21(r0)
/* 813E097C | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813E0980 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813E0984 | ED 22 58 28 */	fsubs f9, f2, f11
/* 813E0988 | EC C0 58 28 */	fsubs f6, f0, f11
/* 813E098C | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 813E0990 | C8 21 00 90 */	lfd f1, 0x90(r1)
/* 813E0994 | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813E0998 | EC 21 58 28 */	fsubs f1, f1, f11
/* 813E099C | 90 61 00 94 */	stw r3, 0x94(r1)
/* 813E09A0 | EC 00 58 28 */	fsubs f0, f0, f11
/* 813E09A4 | C1 A2 86 CC */	lfs f13, lbl_81694ACC@sda21(r0)
/* 813E09A8 | C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 813E09AC | EC E1 E8 24 */	fdivs f7, f1, f29
/* 813E09B0 | C8 81 00 90 */	lfd f4, 0x90(r1)
/* 813E09B4 | C0 61 00 08 */	lfs f3, 0x8(r1)
/* 813E09B8 | C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 813E09BC | C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 813E09C0 | C1 42 86 F0 */	lfs f10, lbl_81694AF0@sda21(r0)
/* 813E09C4 | ED 02 00 72 */	fmuls f8, f2, f1
/* 813E09C8 | C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 813E09CC | ED 8D 18 2A */	fadds f12, f13, f3
/* 813E09D0 | C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 813E09D4 | EC 00 E8 24 */	fdivs f0, f0, f29
/* 813E09D8 | C0 42 86 F4 */	lfs f2, lbl_81694AF4@sda21(r0)
/* 813E09DC | EC 63 00 72 */	fmuls f3, f3, f1
/* 813E09E0 | EC 22 02 32 */	fmuls f1, f2, f8
/* 813E09E4 | ED 2C 02 72 */	fmuls f9, f12, f9
/* 813E09E8 | EC AD 28 2A */	fadds f5, f13, f5
/* 813E09EC | EC 84 58 28 */	fsubs f4, f4, f11
/* 813E09F0 | EF A1 00 32 */	fmuls f29, f1, f0
/* 813E09F4 | ED 29 02 B2 */	fmuls f9, f9, f10
/* 813E09F8 | EC 85 01 32 */	fmuls f4, f5, f4
/* 813E09FC | EC E8 01 F2 */	fmuls f7, f8, f7
/* 813E0A00 | EC 22 00 F2 */	fmuls f1, f2, f3
/* 813E0A04 | EC 04 02 B2 */	fmuls f0, f4, f10
/* 813E0A08 | EF E9 38 28 */	fsubs f31, f9, f7
/* 813E0A0C | EC 06 00 28 */	fsubs f0, f6, f0
/* 813E0A10 | EF C0 18 28 */	fsubs f30, f0, f3
/* 813E0A14 | 48 00 00 94 */	b .L_813E0AA8
.L_813E0A18:
/* 813E0A18 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 813E0A1C | C0 41 00 30 */	lfs f2, 0x30(r1)
/* 813E0A20 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 813E0A24 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 813E0A28 | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813E0A2C | C9 22 87 00 */	lfd f9, lbl_81694B00@sda21(r0)
/* 813E0A30 | ED 42 08 28 */	fsubs f10, f2, f1
/* 813E0A34 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 813E0A38 | EC 20 48 28 */	fsubs f1, f0, f9
/* 813E0A3C | A0 63 00 06 */	lhz r3, 0x6(r3)
/* 813E0A40 | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813E0A44 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813E0A48 | EC 00 48 28 */	fsubs f0, f0, f9
/* 813E0A4C | C1 02 86 F0 */	lfs f8, lbl_81694AF0@sda21(r0)
/* 813E0A50 | EC A1 50 24 */	fdivs f5, f1, f10
/* 813E0A54 | C8 61 00 90 */	lfd f3, 0x90(r1)
/* 813E0A58 | C0 C1 00 38 */	lfs f6, 0x38(r1)
/* 813E0A5C | 90 61 00 94 */	stw r3, 0x94(r1)
/* 813E0A60 | C0 FE 00 A8 */	lfs f7, 0xa8(r30)
/* 813E0A64 | C8 21 00 90 */	lfd f1, 0x90(r1)
/* 813E0A68 | EC 81 48 28 */	fsubs f4, f1, f9
/* 813E0A6C | C0 42 86 F4 */	lfs f2, lbl_81694AF4@sda21(r0)
/* 813E0A70 | ED 23 48 28 */	fsubs f9, f3, f9
/* 813E0A74 | C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 813E0A78 | EC C6 38 28 */	fsubs f6, f6, f7
/* 813E0A7C | C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 813E0A80 | EC 84 02 32 */	fmuls f4, f4, f8
/* 813E0A84 | EC 00 50 24 */	fdivs f0, f0, f10
/* 813E0A88 | EC 84 08 28 */	fsubs f4, f4, f1
/* 813E0A8C | EC 22 01 F2 */	fmuls f1, f2, f7
/* 813E0A90 | EC E9 02 32 */	fmuls f7, f9, f8
/* 813E0A94 | EC A6 01 72 */	fmuls f5, f6, f5
/* 813E0A98 | EF A1 00 32 */	fmuls f29, f1, f0
/* 813E0A9C | EF C4 18 28 */	fsubs f30, f4, f3
/* 813E0AA0 | EF E7 28 2A */	fadds f31, f7, f5
/* 813E0AA4 | EC 22 00 F2 */	fmuls f1, f2, f3
.L_813E0AA8:
/* 813E0AA8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813E0AAC | C0 82 86 CC */	lfs f4, lbl_81694ACC@sda21(r0)
/* 813E0AB0 | C8 62 87 00 */	lfd f3, lbl_81694B00@sda21(r0)
/* 813E0AB4 | C8 01 00 90 */	lfd f0, 0x90(r1)
/* 813E0AB8 | EF FF 20 28 */	fsubs f31, f31, f4
/* 813E0ABC | C0 42 86 F4 */	lfs f2, lbl_81694AF4@sda21(r0)
/* 813E0AC0 | EF DE 20 28 */	fsubs f30, f30, f4
/* 813E0AC4 | EC 00 18 28 */	fsubs f0, f0, f3
/* 813E0AC8 | EF BD 10 2A */	fadds f29, f29, f2
/* 813E0ACC | EC 21 10 2A */	fadds f1, f1, f2
/* 813E0AD0 | FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 813E0AD4 | 4C 41 13 82 */	cror eq, gt, eq
/* 813E0AD8 | 41 82 00 40 */	beq .L_813E0B18
/* 813E0ADC | EC 1F E8 2A */	fadds f0, f31, f29
/* 813E0AE0 | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E0AE4 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 813E0AE8 | 4C 40 13 82 */	cror eq, lt, eq
/* 813E0AEC | 41 82 00 2C */	beq .L_813E0B18
/* 813E0AF0 | 90 61 00 8C */	stw r3, 0x8c(r1)
/* 813E0AF4 | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813E0AF8 | EC 00 18 28 */	fsubs f0, f0, f3
/* 813E0AFC | FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 813E0B00 | 4C 41 13 82 */	cror eq, gt, eq
/* 813E0B04 | 41 82 00 14 */	beq .L_813E0B18
/* 813E0B08 | EC 1E 08 2A */	fadds f0, f30, f1
/* 813E0B0C | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 813E0B10 | 4C 40 13 82 */	cror eq, lt, eq
/* 813E0B14 | 40 82 00 1C */	bne .L_813E0B30
.L_813E0B18:
/* 813E0B18 | 38 60 00 00 */	li r3, 0x0
/* 813E0B1C | 38 80 00 00 */	li r4, 0x0
/* 813E0B20 | 38 A0 00 00 */	li r5, 0x0
/* 813E0B24 | 38 C0 00 00 */	li r6, 0x0
/* 813E0B28 | 48 16 74 81 */	bl GXSetScissor
/* 813E0B2C | 48 00 00 90 */	b .L_813E0BBC
.L_813E0B30:
/* 813E0B30 | FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 813E0B34 | 40 80 00 0C */	bge .L_813E0B40
/* 813E0B38 | EF BD F8 2A */	fadds f29, f29, f31
/* 813E0B3C | FF E0 10 90 */	fmr f31, f2
.L_813E0B40:
/* 813E0B40 | C0 02 86 C8 */	lfs f0, lbl_81694AC8@sda21(r0)
/* 813E0B44 | FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 813E0B48 | 40 80 00 0C */	bge .L_813E0B54
/* 813E0B4C | EC 21 F0 2A */	fadds f1, f1, f30
/* 813E0B50 | FF C0 00 90 */	fmr f30, f0
.L_813E0B54:
/* 813E0B54 | EC 5F E8 2A */	fadds f2, f31, f29
/* 813E0B58 | C0 02 86 F8 */	lfs f0, lbl_81694AF8@sda21(r0)
/* 813E0B5C | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 813E0B60 | 40 81 00 0C */	ble .L_813E0B6C
/* 813E0B64 | EC 02 00 28 */	fsubs f0, f2, f0
/* 813E0B68 | EF BD 00 28 */	fsubs f29, f29, f0
.L_813E0B6C:
/* 813E0B6C | EC 5E 08 2A */	fadds f2, f30, f1
/* 813E0B70 | C0 02 86 F8 */	lfs f0, lbl_81694AF8@sda21(r0)
/* 813E0B74 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 813E0B78 | 40 81 00 0C */	ble .L_813E0B84
/* 813E0B7C | EC 02 00 28 */	fsubs f0, f2, f0
/* 813E0B80 | EC 21 00 28 */	fsubs f1, f1, f0
.L_813E0B84:
/* 813E0B84 | 48 21 88 15 */	bl __cvt_fp2unsigned
/* 813E0B88 | FC 20 E8 90 */	fmr f1, f29
/* 813E0B8C | 7C 7D 1B 78 */	mr r29, r3
/* 813E0B90 | 48 21 88 09 */	bl __cvt_fp2unsigned
/* 813E0B94 | FC 20 F0 90 */	fmr f1, f30
/* 813E0B98 | 7C 7E 1B 78 */	mr r30, r3
/* 813E0B9C | 48 21 87 FD */	bl __cvt_fp2unsigned
/* 813E0BA0 | FC 20 F8 90 */	fmr f1, f31
/* 813E0BA4 | 7C 7F 1B 78 */	mr r31, r3
/* 813E0BA8 | 48 21 87 F1 */	bl __cvt_fp2unsigned
/* 813E0BAC | 7F E4 FB 78 */	mr r4, r31
/* 813E0BB0 | 7F C5 F3 78 */	mr r5, r30
/* 813E0BB4 | 7F A6 EB 78 */	mr r6, r29
/* 813E0BB8 | 48 16 73 F1 */	bl GXSetScissor
.L_813E0BBC:
/* 813E0BBC | E3 E1 00 D8 */	psq_l f31, 0xd8(r1), 0, qr0
/* 813E0BC0 | CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 813E0BC4 | E3 C1 00 C8 */	psq_l f30, 0xc8(r1), 0, qr0
/* 813E0BC8 | CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 813E0BCC | E3 A1 00 B8 */	psq_l f29, 0xb8(r1), 0, qr0
/* 813E0BD0 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813E0BD4 | CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 813E0BD8 | 48 21 89 3D */	bl _restgpr_29
/* 813E0BDC | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 813E0BE0 | 7C 08 03 A6 */	mtlr r0
/* 813E0BE4 | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 813E0BE8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E0848

# .text:0x60E4 | 0x813E0BEC | size: 0x294
.fn iplSDChannelSelect_813E0BEC, global
/* 813E0BEC | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813E0BF0 | 7C 08 02 A6 */	mflr r0
/* 813E0BF4 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813E0BF8 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813E0BFC | 48 21 88 C5 */	bl _savegpr_27
/* 813E0C00 | 7C 7B 1B 78 */	mr r27, r3
/* 813E0C04 | 7C 9D 23 78 */	mr r29, r4
/* 813E0C08 | 7C BC 2B 78 */	mr r28, r5
/* 813E0C0C | 38 61 00 68 */	addi r3, r1, 0x68
/* 813E0C10 | 4B F5 58 19 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E0C14 | 38 61 00 68 */	addi r3, r1, 0x68
/* 813E0C18 | 4B F5 4D 01 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813E0C1C | C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 813E0C20 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813E0C24 | C0 21 00 68 */	lfs f1, 0x68(r1)
/* 813E0C28 | FC 40 00 50 */	fneg f2, f0
/* 813E0C2C | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E0C30 | 4B F8 1E 2D */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E0C34 | C0 7D 00 00 */	lfs f3, 0x0(r29)
/* 813E0C38 | 38 61 00 50 */	addi r3, r1, 0x50
/* 813E0C3C | C0 3B 00 A8 */	lfs f1, 0xa8(r27)
/* 813E0C40 | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 813E0C44 | C0 1B 00 AC */	lfs f0, 0xac(r27)
/* 813E0C48 | EC 23 08 28 */	fsubs f1, f3, f1
/* 813E0C4C | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E0C50 | EC 42 00 2A */	fadds f2, f2, f0
/* 813E0C54 | 4B F8 1E 09 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E0C58 | C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 813E0C5C | 38 61 00 44 */	addi r3, r1, 0x44
/* 813E0C60 | C0 21 00 70 */	lfs f1, 0x70(r1)
/* 813E0C64 | FC 40 00 50 */	fneg f2, f0
/* 813E0C68 | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E0C6C | 4B F8 1D F1 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E0C70 | C0 7D 00 00 */	lfs f3, 0x0(r29)
/* 813E0C74 | 38 61 00 38 */	addi r3, r1, 0x38
/* 813E0C78 | C0 3B 00 A8 */	lfs f1, 0xa8(r27)
/* 813E0C7C | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 813E0C80 | C0 1B 00 AC */	lfs f0, 0xac(r27)
/* 813E0C84 | EC 23 08 2A */	fadds f1, f3, f1
/* 813E0C88 | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E0C8C | EC 42 00 2A */	fadds f2, f2, f0
/* 813E0C90 | 4B F8 1D CD */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E0C94 | C0 01 00 74 */	lfs f0, 0x74(r1)
/* 813E0C98 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813E0C9C | C0 21 00 68 */	lfs f1, 0x68(r1)
/* 813E0CA0 | FC 40 00 50 */	fneg f2, f0
/* 813E0CA4 | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E0CA8 | 4B F8 1D B5 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E0CAC | C0 7D 00 00 */	lfs f3, 0x0(r29)
/* 813E0CB0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813E0CB4 | C0 3B 00 A8 */	lfs f1, 0xa8(r27)
/* 813E0CB8 | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 813E0CBC | C0 1B 00 AC */	lfs f0, 0xac(r27)
/* 813E0CC0 | EC 23 08 28 */	fsubs f1, f3, f1
/* 813E0CC4 | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E0CC8 | EC 42 00 28 */	fsubs f2, f2, f0
/* 813E0CCC | 4B F8 1D 91 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E0CD0 | C0 01 00 74 */	lfs f0, 0x74(r1)
/* 813E0CD4 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813E0CD8 | C0 21 00 70 */	lfs f1, 0x70(r1)
/* 813E0CDC | FC 40 00 50 */	fneg f2, f0
/* 813E0CE0 | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E0CE4 | 4B F8 1D 79 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E0CE8 | C0 7D 00 00 */	lfs f3, 0x0(r29)
/* 813E0CEC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E0CF0 | C0 3B 00 A8 */	lfs f1, 0xa8(r27)
/* 813E0CF4 | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 813E0CF8 | C0 1B 00 AC */	lfs f0, 0xac(r27)
/* 813E0CFC | EC 23 08 2A */	fadds f1, f3, f1
/* 813E0D00 | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E0D04 | EC 42 00 28 */	fsubs f2, f2, f0
/* 813E0D08 | 4B F8 1D 55 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E0D0C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813E0D10 | 40 82 00 98 */	bne .L_813E0DA8
/* 813E0D14 | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E0D18 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813E0D1C | 80 7B 00 6C */	lwz r3, 0x6c(r27)
/* 813E0D20 | 38 A1 00 50 */	addi r5, r1, 0x50
/* 813E0D24 | FC 60 10 90 */	fmr f3, f2
/* 813E0D28 | C0 22 87 08 */	lfs f1, lbl_81694B08@sda21(r0)
/* 813E0D2C | C0 82 86 CC */	lfs f4, lbl_81694ACC@sda21(r0)
/* 813E0D30 | 38 C0 00 00 */	li r6, 0x0
/* 813E0D34 | 4B FC D8 E1 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813E0D38 | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E0D3C | 38 81 00 44 */	addi r4, r1, 0x44
/* 813E0D40 | 80 7B 00 70 */	lwz r3, 0x70(r27)
/* 813E0D44 | 38 A1 00 38 */	addi r5, r1, 0x38
/* 813E0D48 | FC 60 10 90 */	fmr f3, f2
/* 813E0D4C | C0 22 87 08 */	lfs f1, lbl_81694B08@sda21(r0)
/* 813E0D50 | C0 82 86 CC */	lfs f4, lbl_81694ACC@sda21(r0)
/* 813E0D54 | 38 C0 00 00 */	li r6, 0x0
/* 813E0D58 | 4B FC D8 BD */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813E0D5C | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E0D60 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813E0D64 | 80 7B 00 74 */	lwz r3, 0x74(r27)
/* 813E0D68 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 813E0D6C | FC 60 10 90 */	fmr f3, f2
/* 813E0D70 | C0 22 87 08 */	lfs f1, lbl_81694B08@sda21(r0)
/* 813E0D74 | C0 82 86 CC */	lfs f4, lbl_81694ACC@sda21(r0)
/* 813E0D78 | 38 C0 00 00 */	li r6, 0x0
/* 813E0D7C | 4B FC D8 99 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813E0D80 | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E0D84 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813E0D88 | 80 7B 00 78 */	lwz r3, 0x78(r27)
/* 813E0D8C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813E0D90 | FC 60 10 90 */	fmr f3, f2
/* 813E0D94 | C0 22 87 08 */	lfs f1, lbl_81694B08@sda21(r0)
/* 813E0D98 | C0 82 86 CC */	lfs f4, lbl_81694ACC@sda21(r0)
/* 813E0D9C | 38 C0 00 00 */	li r6, 0x0
/* 813E0DA0 | 4B FC D8 75 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813E0DA4 | 48 00 00 94 */	b .L_813E0E38
.L_813E0DA8:
/* 813E0DA8 | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E0DAC | 38 81 00 50 */	addi r4, r1, 0x50
/* 813E0DB0 | 80 7B 00 6C */	lwz r3, 0x6c(r27)
/* 813E0DB4 | 38 A1 00 5C */	addi r5, r1, 0x5c
/* 813E0DB8 | FC 60 10 90 */	fmr f3, f2
/* 813E0DBC | C0 22 87 08 */	lfs f1, lbl_81694B08@sda21(r0)
/* 813E0DC0 | C0 82 86 CC */	lfs f4, lbl_81694ACC@sda21(r0)
/* 813E0DC4 | 38 C0 00 00 */	li r6, 0x0
/* 813E0DC8 | 4B FC D8 4D */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813E0DCC | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E0DD0 | 38 81 00 38 */	addi r4, r1, 0x38
/* 813E0DD4 | 80 7B 00 70 */	lwz r3, 0x70(r27)
/* 813E0DD8 | 38 A1 00 44 */	addi r5, r1, 0x44
/* 813E0DDC | FC 60 10 90 */	fmr f3, f2
/* 813E0DE0 | C0 22 87 08 */	lfs f1, lbl_81694B08@sda21(r0)
/* 813E0DE4 | C0 82 86 CC */	lfs f4, lbl_81694ACC@sda21(r0)
/* 813E0DE8 | 38 C0 00 00 */	li r6, 0x0
/* 813E0DEC | 4B FC D8 29 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813E0DF0 | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E0DF4 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813E0DF8 | 80 7B 00 74 */	lwz r3, 0x74(r27)
/* 813E0DFC | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 813E0E00 | FC 60 10 90 */	fmr f3, f2
/* 813E0E04 | C0 22 87 08 */	lfs f1, lbl_81694B08@sda21(r0)
/* 813E0E08 | C0 82 86 CC */	lfs f4, lbl_81694ACC@sda21(r0)
/* 813E0E0C | 38 C0 00 00 */	li r6, 0x0
/* 813E0E10 | 4B FC D8 05 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813E0E14 | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E0E18 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E0E1C | 80 7B 00 78 */	lwz r3, 0x78(r27)
/* 813E0E20 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813E0E24 | FC 60 10 90 */	fmr f3, f2
/* 813E0E28 | C0 22 87 08 */	lfs f1, lbl_81694B08@sda21(r0)
/* 813E0E2C | C0 82 86 CC */	lfs f4, lbl_81694ACC@sda21(r0)
/* 813E0E30 | 38 C0 00 00 */	li r6, 0x0
/* 813E0E34 | 4B FC D7 E1 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
.L_813E0E38:
/* 813E0E38 | 3B 80 00 00 */	li r28, 0x0
/* 813E0E3C | 3B E0 00 00 */	li r31, 0x0
/* 813E0E40 | 3B C0 00 01 */	li r30, 0x1
.L_813E0E44:
/* 813E0E44 | 7C 7B FA 14 */	add r3, r27, r31
/* 813E0E48 | 83 A3 00 6C */	lwz r29, 0x6c(r3)
/* 813E0E4C | 7F A3 EB 78 */	mr r3, r29
/* 813E0E50 | 4B F8 1A 21 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E0E54 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813E0E58 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813E0E5C | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813E0E60 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E0E64 | 41 80 FF E0 */	blt .L_813E0E44
/* 813E0E68 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813E0E6C | 48 21 86 A1 */	bl _restgpr_27
/* 813E0E70 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813E0E74 | 7C 08 03 A6 */	mtlr r0
/* 813E0E78 | 38 21 00 90 */	addi r1, r1, 0x90
/* 813E0E7C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E0BEC

# .text:0x6378 | 0x813E0E80 | size: 0x60
.fn iplSDChannelSelect_813E0E80, global
/* 813E0E80 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E0E84 | 7C 08 02 A6 */	mflr r0
/* 813E0E88 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E0E8C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E0E90 | 48 21 86 39 */	bl _savegpr_29
/* 813E0E94 | 7C 7D 1B 78 */	mr r29, r3
/* 813E0E98 | 3B C0 00 00 */	li r30, 0x0
/* 813E0E9C | 3B E0 00 00 */	li r31, 0x0
.L_813E0EA0:
/* 813E0EA0 | 7C 7D FA 14 */	add r3, r29, r31
/* 813E0EA4 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 813E0EA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E0EAC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E0EB0 | 7D 89 03 A6 */	mtctr r12
/* 813E0EB4 | 4E 80 04 21 */	bctrl
/* 813E0EB8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813E0EBC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E0EC0 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 813E0EC4 | 41 80 FF DC */	blt .L_813E0EA0
/* 813E0EC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E0ECC | 48 21 86 49 */	bl _restgpr_29
/* 813E0ED0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E0ED4 | 7C 08 03 A6 */	mtlr r0
/* 813E0ED8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E0EDC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E0E80

# .text:0x63D8 | 0x813E0EE0 | size: 0x26C
.fn iplSDChannelSelect_813E0EE0, global
/* 813E0EE0 | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 813E0EE4 | 7C 08 02 A6 */	mflr r0
/* 813E0EE8 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 813E0EEC | DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 813E0EF0 | F3 E1 00 E8 */	psq_st f31, 0xe8(r1), 0, qr0
/* 813E0EF4 | DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 813E0EF8 | F3 C1 00 D8 */	psq_st f30, 0xd8(r1), 0, qr0
/* 813E0EFC | DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 813E0F00 | F3 A1 00 C8 */	psq_st f29, 0xc8(r1), 0, qr0
/* 813E0F04 | DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 813E0F08 | F3 81 00 B8 */	psq_st f28, 0xb8(r1), 0, qr0
/* 813E0F0C | DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 813E0F10 | F3 61 00 A8 */	psq_st f27, 0xa8(r1), 0, qr0
/* 813E0F14 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813E0F18 | 48 21 85 A9 */	bl _savegpr_27
/* 813E0F1C | C3 A2 86 CC */	lfs f29, lbl_81694ACC@sda21(r0)
/* 813E0F20 | 7C 7B 1B 78 */	mr r27, r3
/* 813E0F24 | C3 C2 86 F4 */	lfs f30, lbl_81694AF4@sda21(r0)
/* 813E0F28 | 3B 80 00 00 */	li r28, 0x0
/* 813E0F2C | C3 E2 87 0C */	lfs f31, lbl_81694B0C@sda21(r0)
/* 813E0F30 | 3B E0 00 00 */	li r31, 0x0
/* 813E0F34 | 3B C0 00 00 */	li r30, 0x0
.L_813E0F38:
/* 813E0F38 | 7C 9B F2 14 */	add r4, r27, r30
/* 813E0F3C | 38 61 00 28 */	addi r3, r1, 0x28
/* 813E0F40 | 83 A4 00 6C */	lwz r29, 0x6c(r4)
/* 813E0F44 | C0 1D 00 04 */	lfs f0, 0x4(r29)
/* 813E0F48 | 38 9D 00 2C */	addi r4, r29, 0x2c
/* 813E0F4C | C3 7D 00 0C */	lfs f27, 0xc(r29)
/* 813E0F50 | EF 9D 00 24 */	fdivs f28, f29, f0
/* 813E0F54 | EC 3E 06 F2 */	fmuls f1, f30, f27
/* 813E0F58 | EC 1F 06 F2 */	fmuls f0, f31, f27
/* 813E0F5C | EC 21 06 F2 */	fmuls f1, f1, f27
/* 813E0F60 | EC 00 06 F2 */	fmuls f0, f0, f27
/* 813E0F64 | EC 3B 00 72 */	fmuls f1, f27, f1
/* 813E0F68 | EC 1C 00 32 */	fmuls f0, f28, f0
/* 813E0F6C | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813E0F70 | EC 1C 00 32 */	fmuls f0, f28, f0
/* 813E0F74 | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813E0F78 | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813E0F7C | EC 21 00 28 */	fsubs f1, f1, f0
/* 813E0F80 | 4B FB 66 41 */	bl __ml__Q33ipl4math4VEC3CFf
/* 813E0F84 | EC 3E 06 F2 */	fmuls f1, f30, f27
/* 813E0F88 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813E0F8C | EC 1F 06 F2 */	fmuls f0, f31, f27
/* 813E0F90 | 38 9D 00 20 */	addi r4, r29, 0x20
/* 813E0F94 | EC 21 06 F2 */	fmuls f1, f1, f27
/* 813E0F98 | EC 00 06 F2 */	fmuls f0, f0, f27
/* 813E0F9C | EC 3B 00 72 */	fmuls f1, f27, f1
/* 813E0FA0 | EC 1C 00 32 */	fmuls f0, f28, f0
/* 813E0FA4 | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813E0FA8 | EC 1C 00 32 */	fmuls f0, f28, f0
/* 813E0FAC | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813E0FB0 | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813E0FB4 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813E0FB8 | EC 3D 00 2A */	fadds f1, f29, f0
/* 813E0FBC | 4B FB 66 05 */	bl __ml__Q33ipl4math4VEC3CFf
/* 813E0FC0 | E0 41 00 1C */	psq_l f2, 0x1c(r1), 0, qr0
/* 813E0FC4 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813E0FC8 | E0 21 00 28 */	psq_l f1, 0x28(r1), 0, qr0
/* 813E0FCC | 38 81 00 10 */	addi r4, r1, 0x10
/* 813E0FD0 | 10 02 08 28 */	ps_sub f0, f2, f1
/* 813E0FD4 | E0 41 80 24 */	psq_l f2, 0x24(r1), 1, qr0
/* 813E0FD8 | E0 21 80 30 */	psq_l f1, 0x30(r1), 1, qr0
/* 813E0FDC | F0 01 00 10 */	psq_st f0, 0x10(r1), 0, qr0
/* 813E0FE0 | 10 02 08 28 */	ps_sub f0, f2, f1
/* 813E0FE4 | F0 01 80 18 */	psq_st f0, 0x18(r1), 1, qr0
/* 813E0FE8 | 4B FB 65 BD */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813E0FEC | EC 9B 06 F2 */	fmuls f4, f27, f27
/* 813E0FF0 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813E0FF4 | EC 1E 06 F2 */	fmuls f0, f30, f27
/* 813E0FF8 | C0 BD 00 38 */	lfs f5, 0x38(r29)
/* 813E0FFC | C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 813E1000 | 7C 63 FA 14 */	add r3, r3, r31
/* 813E1004 | EC FB 01 32 */	fmuls f7, f27, f4
/* 813E1008 | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 813E100C | EC C0 06 F2 */	fmuls f6, f0, f27
/* 813E1010 | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 813E1014 | EC 9C 01 32 */	fmuls f4, f28, f4
/* 813E1018 | C0 01 00 48 */	lfs f0, 0x48(r1)
/* 813E101C | EC FC 01 F2 */	fmuls f7, f28, f7
/* 813E1020 | 38 81 00 40 */	addi r4, r1, 0x40
/* 813E1024 | EC DC 01 B2 */	fmuls f6, f28, f6
/* 813E1028 | EC FC 01 F2 */	fmuls f7, f28, f7
/* 813E102C | EC C7 30 28 */	fsubs f6, f7, f6
/* 813E1030 | EC 87 20 28 */	fsubs f4, f7, f4
/* 813E1034 | EC DB 30 2A */	fadds f6, f27, f6
/* 813E1038 | EC 63 01 32 */	fmuls f3, f3, f4
/* 813E103C | EC 85 01 B2 */	fmuls f4, f5, f6
/* 813E1040 | EC 64 18 2A */	fadds f3, f4, f3
/* 813E1044 | EC 42 18 2A */	fadds f2, f2, f3
/* 813E1048 | EC 21 18 2A */	fadds f1, f1, f3
/* 813E104C | EC 00 18 2A */	fadds f0, f0, f3
/* 813E1050 | D0 41 00 40 */	stfs f2, 0x40(r1)
/* 813E1054 | D0 21 00 44 */	stfs f1, 0x44(r1)
/* 813E1058 | D0 01 00 48 */	stfs f0, 0x48(r1)
/* 813E105C | 4B F6 36 29 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813E1060 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813E1064 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813E1068 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813E106C | 3B FF 00 0C */	addi r31, r31, 0xc
/* 813E1070 | 41 80 FE C8 */	blt .L_813E0F38
/* 813E1074 | 38 61 00 4C */	addi r3, r1, 0x4c
/* 813E1078 | 4B F5 53 B1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E107C | 38 61 00 4C */	addi r3, r1, 0x4c
/* 813E1080 | 4B F5 48 99 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813E1084 | C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 813E1088 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813E108C | C0 41 00 68 */	lfs f2, 0x68(r1)
/* 813E1090 | C0 21 00 60 */	lfs f1, 0x60(r1)
/* 813E1094 | EC 83 10 2A */	fadds f4, f3, f2
/* 813E1098 | C0 01 00 78 */	lfs f0, 0x78(r1)
/* 813E109C | C0 42 86 F0 */	lfs f2, lbl_81694AF0@sda21(r0)
/* 813E10A0 | EC 01 00 2A */	fadds f0, f1, f0
/* 813E10A4 | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E10A8 | EC 24 00 B2 */	fmuls f1, f4, f2
/* 813E10AC | EC 40 00 B2 */	fmuls f2, f0, f2
/* 813E10B0 | 4B F8 19 AD */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E10B4 | 38 7B 00 B0 */	addi r3, r27, 0xb0
/* 813E10B8 | 38 81 00 34 */	addi r4, r1, 0x34
/* 813E10BC | 4B F6 35 C9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813E10C0 | C0 61 00 58 */	lfs f3, 0x58(r1)
/* 813E10C4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E10C8 | C0 41 00 50 */	lfs f2, 0x50(r1)
/* 813E10CC | C0 21 00 54 */	lfs f1, 0x54(r1)
/* 813E10D0 | EC 83 10 28 */	fsubs f4, f3, f2
/* 813E10D4 | C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 813E10D8 | C0 61 00 68 */	lfs f3, 0x68(r1)
/* 813E10DC | EC A1 00 28 */	fsubs f5, f1, f0
/* 813E10E0 | C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 813E10E4 | C0 21 00 60 */	lfs f1, 0x60(r1)
/* 813E10E8 | C0 01 00 78 */	lfs f0, 0x78(r1)
/* 813E10EC | EC 43 10 28 */	fsubs f2, f3, f2
/* 813E10F0 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813E10F4 | EC 25 10 24 */	fdivs f1, f5, f2
/* 813E10F8 | EC 44 00 24 */	fdivs f2, f4, f0
/* 813E10FC | 4B F5 54 6D */	bl __ct__Q33ipl4math4VEC2Fff
/* 813E1100 | 7C 64 1B 78 */	mr r4, r3
/* 813E1104 | 38 7B 00 BC */	addi r3, r27, 0xbc
/* 813E1108 | 4B F5 56 E9 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 813E110C | E3 E1 00 E8 */	psq_l f31, 0xe8(r1), 0, qr0
/* 813E1110 | CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 813E1114 | E3 C1 00 D8 */	psq_l f30, 0xd8(r1), 0, qr0
/* 813E1118 | CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 813E111C | E3 A1 00 C8 */	psq_l f29, 0xc8(r1), 0, qr0
/* 813E1120 | CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 813E1124 | E3 81 00 B8 */	psq_l f28, 0xb8(r1), 0, qr0
/* 813E1128 | CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 813E112C | E3 61 00 A8 */	psq_l f27, 0xa8(r1), 0, qr0
/* 813E1130 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813E1134 | CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 813E1138 | 48 21 83 D5 */	bl _restgpr_27
/* 813E113C | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 813E1140 | 7C 08 03 A6 */	mtlr r0
/* 813E1144 | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 813E1148 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E0EE0

# .text:0x6644 | 0x813E114C | size: 0x78
.fn iplSDChannelSelect_813E114C, global
/* 813E114C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E1150 | 7C 08 02 A6 */	mflr r0
/* 813E1154 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E1158 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E115C | 48 21 83 69 */	bl _savegpr_28
/* 813E1160 | 3F C0 81 65 */	lis r30, lbl_81654204@ha
/* 813E1164 | 7C 9C 23 78 */	mr r28, r4
/* 813E1168 | 3B DE 42 04 */	addi r30, r30, lbl_81654204@l
/* 813E116C | 3B A0 00 00 */	li r29, 0x0
/* 813E1170 | 3B E0 00 00 */	li r31, 0x0
.L_813E1174:
/* 813E1174 | 7C 9E FA 14 */	add r4, r30, r31
/* 813E1178 | 7F 83 E3 78 */	mr r3, r28
/* 813E117C | 80 84 00 60 */	lwz r4, 0x60(r4)
/* 813E1180 | 48 22 13 01 */	bl strcmp
/* 813E1184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1188 | 41 82 00 14 */	beq .L_813E119C
/* 813E118C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813E1190 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E1194 | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813E1198 | 41 80 FF DC */	blt .L_813E1174
.L_813E119C:
/* 813E119C | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813E11A0 | 38 60 FF FF */	li r3, -0x1
/* 813E11A4 | 40 80 00 08 */	bge .L_813E11AC
/* 813E11A8 | 7F A3 EB 78 */	mr r3, r29
.L_813E11AC:
/* 813E11AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E11B0 | 48 21 83 61 */	bl _restgpr_28
/* 813E11B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E11B8 | 7C 08 03 A6 */	mtlr r0
/* 813E11BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E11C0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E114C

# .text:0x66BC | 0x813E11C4 | size: 0x3A4
.fn iplSDChannelSelect_813E11C4, global
/* 813E11C4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813E11C8 | 7C 08 02 A6 */	mflr r0
/* 813E11CC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813E11D0 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813E11D4 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813E11D8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813E11DC | 48 21 82 ED */	bl _savegpr_29
/* 813E11E0 | 3F E0 81 65 */	lis r31, lbl_81654088@ha
/* 813E11E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813E11E8 | 3B FF 40 88 */	addi r31, r31, lbl_81654088@l
/* 813E11EC | 38 60 05 80 */	li r3, 0x580
/* 813E11F0 | 48 21 6E AD */	bl __nw__FUl
/* 813E11F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E11F8 | 41 82 00 18 */	beq .L_813E1210
/* 813E11FC | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E1200 | 38 FF 07 C2 */	addi r7, r31, 0x7c2
/* 813E1204 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813E1208 | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813E120C | 4B F8 8E 19 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E1210:
/* 813E1210 | 90 7E 01 0C */	stw r3, 0x10c(r30)
/* 813E1214 | 38 9F 07 D8 */	addi r4, r31, 0x7d8
/* 813E1218 | 38 A0 00 01 */	li r5, 0x1
/* 813E121C | 4B F8 91 51 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E1220 | 90 7E 01 10 */	stw r3, 0x110(r30)
/* 813E1224 | 4B F5 47 B9 */	bl getRndm__Q23ipl6SystemFv
/* 813E1228 | 4B FC DB E9 */	bl get_u16__Q33ipl4math6RandomFv
/* 813E122C | 54 66 04 3E */	clrlwi r6, r3, 16
/* 813E1230 | 38 A0 07 D0 */	li r5, 0x7d0
/* 813E1234 | 7C 86 2B D6 */	divw r4, r6, r5
/* 813E1238 | 3C 00 43 30 */	lis r0, 0x4330
/* 813E123C | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813E1240 | 83 BE 01 10 */	lwz r29, 0x110(r30)
/* 813E1244 | C8 22 87 10 */	lfd f1, lbl_81694B10@sda21(r0)
/* 813E1248 | 7F A3 EB 78 */	mr r3, r29
/* 813E124C | 7C 04 29 D6 */	mullw r0, r4, r5
/* 813E1250 | 7C 00 30 50 */	subf r0, r0, r6
/* 813E1254 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813E1258 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813E125C | C8 01 00 28 */	lfd f0, 0x28(r1)
/* 813E1260 | EF E0 08 28 */	fsubs f31, f0, f1
/* 813E1264 | 4B F8 16 0D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E1268 | 38 00 00 01 */	li r0, 0x1
/* 813E126C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813E1270 | 80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 813E1274 | 4B F8 93 C1 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E1278 | 80 9E 01 10 */	lwz r4, 0x110(r30)
/* 813E127C | 38 60 05 80 */	li r3, 0x580
/* 813E1280 | D3 E4 00 0C */	stfs f31, 0xc(r4)
/* 813E1284 | 48 21 6E 19 */	bl __nw__FUl
/* 813E1288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E128C | 41 82 00 18 */	beq .L_813E12A4
/* 813E1290 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E1294 | 38 FF 07 EE */	addi r7, r31, 0x7ee
/* 813E1298 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813E129C | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813E12A0 | 4B F8 8D 85 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E12A4:
/* 813E12A4 | 90 7E 00 84 */	stw r3, 0x84(r30)
/* 813E12A8 | 38 9F 08 00 */	addi r4, r31, 0x800
/* 813E12AC | 38 BF 08 18 */	addi r5, r31, 0x818
/* 813E12B0 | 38 C0 00 00 */	li r6, 0x0
/* 813E12B4 | 38 E0 00 01 */	li r7, 0x1
/* 813E12B8 | 4B F8 90 C5 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E12BC | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813E12C0 | 38 9F 08 23 */	addi r4, r31, 0x823
/* 813E12C4 | 38 BF 08 18 */	addi r5, r31, 0x818
/* 813E12C8 | 38 C0 00 00 */	li r6, 0x0
/* 813E12CC | 38 E0 00 00 */	li r7, 0x0
/* 813E12D0 | 4B F8 90 AD */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E12D4 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813E12D8 | 4B F8 93 5D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E12DC | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813E12E0 | 38 80 00 00 */	li r4, 0x0
/* 813E12E4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E12E8 | 48 13 10 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E12EC | 4B F8 89 39 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E12F0 | 38 60 05 80 */	li r3, 0x580
/* 813E12F4 | 48 21 6D A9 */	bl __nw__FUl
/* 813E12F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E12FC | 41 82 00 18 */	beq .L_813E1314
/* 813E1300 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E1304 | 38 FF 08 3A */	addi r7, r31, 0x83a
/* 813E1308 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813E130C | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813E1310 | 4B F8 8D 15 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E1314:
/* 813E1314 | 90 7E 00 88 */	stw r3, 0x88(r30)
/* 813E1318 | 38 9F 08 4D */	addi r4, r31, 0x84d
/* 813E131C | 38 AD 8D 7E */	li r5, lbl_81696DBE@sda21
/* 813E1320 | 38 C0 00 01 */	li r6, 0x1
/* 813E1324 | 38 E0 00 01 */	li r7, 0x1
/* 813E1328 | 4B F8 90 55 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E132C | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E1330 | 38 9F 08 66 */	addi r4, r31, 0x866
/* 813E1334 | 38 AD 8D 7E */	li r5, lbl_81696DBE@sda21
/* 813E1338 | 38 C0 00 01 */	li r6, 0x1
/* 813E133C | 38 E0 00 00 */	li r7, 0x0
/* 813E1340 | 4B F8 90 3D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E1344 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E1348 | 4B F8 92 ED */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E134C | 48 18 8C 69 */	bl SCGetAspectRatio
/* 813E1350 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813E1354 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E1358 | 40 82 00 B8 */	bne .L_813E1410
/* 813E135C | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E1360 | 38 8D 8D 82 */	li r4, lbl_81696DC2@sda21
/* 813E1364 | 38 A0 00 01 */	li r5, 0x1
/* 813E1368 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E136C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E1370 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E1374 | 7D 89 03 A6 */	mtctr r12
/* 813E1378 | 4E 80 04 21 */	bctrl
/* 813E137C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E1380 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813E1384 | 7D 89 03 A6 */	mtctr r12
/* 813E1388 | 4E 80 04 21 */	bctrl
/* 813E138C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E1390 | 38 A0 00 00 */	li r5, 0x0
/* 813E1394 | 48 14 69 99 */	bl fn_81527D2C
/* 813E1398 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E139C | 38 8D 8D 7E */	li r4, lbl_81696DBE@sda21
/* 813E13A0 | 38 A0 00 01 */	li r5, 0x1
/* 813E13A4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E13A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E13AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E13B0 | 7D 89 03 A6 */	mtctr r12
/* 813E13B4 | 4E 80 04 21 */	bctrl
/* 813E13B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E13BC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813E13C0 | 7D 89 03 A6 */	mtctr r12
/* 813E13C4 | 4E 80 04 21 */	bctrl
/* 813E13C8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813E13CC | 38 80 00 00 */	li r4, 0x0
/* 813E13D0 | 48 14 6A 4D */	bl fn_81527E1C
/* 813E13D4 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E13D8 | 38 9F 08 7E */	addi r4, r31, 0x87e
/* 813E13DC | 38 A0 00 01 */	li r5, 0x1
/* 813E13E0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E13E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E13E8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E13EC | 7D 89 03 A6 */	mtctr r12
/* 813E13F0 | 4E 80 04 21 */	bctrl
/* 813E13F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E13F8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813E13FC | 7D 89 03 A6 */	mtctr r12
/* 813E1400 | 4E 80 04 21 */	bctrl
/* 813E1404 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813E1408 | 38 80 00 00 */	li r4, 0x0
/* 813E140C | 48 14 6A 11 */	bl fn_81527E1C
.L_813E1410:
/* 813E1410 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E1414 | 38 80 00 00 */	li r4, 0x0
/* 813E1418 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E141C | 48 13 0E FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1420 | 4B F8 88 05 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E1424 | 38 60 05 80 */	li r3, 0x580
/* 813E1428 | 48 21 6C 75 */	bl __nw__FUl
/* 813E142C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1430 | 41 82 00 18 */	beq .L_813E1448
/* 813E1434 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E1438 | 38 FF 08 88 */	addi r7, r31, 0x888
/* 813E143C | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813E1440 | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813E1444 | 4B F8 8B E1 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E1448:
/* 813E1448 | 90 7E 00 8C */	stw r3, 0x8c(r30)
/* 813E144C | 38 9F 08 9B */	addi r4, r31, 0x89b
/* 813E1450 | 38 BF 08 18 */	addi r5, r31, 0x818
/* 813E1454 | 38 C0 00 00 */	li r6, 0x0
/* 813E1458 | 38 E0 00 01 */	li r7, 0x1
/* 813E145C | 4B F8 8F 21 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E1460 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813E1464 | 38 9F 08 B4 */	addi r4, r31, 0x8b4
/* 813E1468 | 38 BF 08 18 */	addi r5, r31, 0x818
/* 813E146C | 38 C0 00 00 */	li r6, 0x0
/* 813E1470 | 38 E0 00 00 */	li r7, 0x0
/* 813E1474 | 4B F8 8F 09 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E1478 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813E147C | 4B F8 91 B9 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E1480 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813E1484 | 38 80 00 00 */	li r4, 0x0
/* 813E1488 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E148C | 48 13 0E 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1490 | 4B F8 87 95 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E1494 | 38 60 05 80 */	li r3, 0x580
/* 813E1498 | 48 21 6C 05 */	bl __nw__FUl
/* 813E149C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E14A0 | 41 82 00 18 */	beq .L_813E14B8
/* 813E14A4 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E14A8 | 38 FF 07 EE */	addi r7, r31, 0x7ee
/* 813E14AC | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813E14B0 | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813E14B4 | 4B F8 8B 71 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E14B8:
/* 813E14B8 | 90 7E 07 48 */	stw r3, 0x748(r30)
/* 813E14BC | 38 9F 08 23 */	addi r4, r31, 0x823
/* 813E14C0 | 38 BF 08 18 */	addi r5, r31, 0x818
/* 813E14C4 | 38 C0 00 00 */	li r6, 0x0
/* 813E14C8 | 38 E0 00 01 */	li r7, 0x1
/* 813E14CC | 4B F8 8E B1 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E14D0 | 80 7E 07 48 */	lwz r3, 0x748(r30)
/* 813E14D4 | 4B F8 91 61 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E14D8 | 38 60 05 80 */	li r3, 0x580
/* 813E14DC | 48 21 6B C1 */	bl __nw__FUl
/* 813E14E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E14E4 | 41 82 00 18 */	beq .L_813E14FC
/* 813E14E8 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E14EC | 38 FF 08 CC */	addi r7, r31, 0x8cc
/* 813E14F0 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813E14F4 | 38 CD 8D 72 */	li r6, lbl_81696DB2@sda21
/* 813E14F8 | 4B F8 8B 2D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E14FC:
/* 813E14FC | 90 7E 07 4C */	stw r3, 0x74c(r30)
/* 813E1500 | 38 9F 08 DC */	addi r4, r31, 0x8dc
/* 813E1504 | 38 AD 8D 87 */	li r5, lbl_81696DC7@sda21
/* 813E1508 | 38 C0 00 00 */	li r6, 0x0
/* 813E150C | 38 E0 00 01 */	li r7, 0x1
/* 813E1510 | 4B F8 8E 6D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E1514 | 80 7E 07 4C */	lwz r3, 0x74c(r30)
/* 813E1518 | 4B F8 91 1D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E151C | 80 7E 07 4C */	lwz r3, 0x74c(r30)
/* 813E1520 | 38 80 00 00 */	li r4, 0x0
/* 813E1524 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1528 | 48 13 0D F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E152C | 4B F8 86 F9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E1530 | 80 1E 07 4C */	lwz r0, 0x74c(r30)
/* 813E1534 | 38 9F 03 14 */	addi r4, r31, 0x314
/* 813E1538 | 38 7F 03 84 */	addi r3, r31, 0x384
/* 813E153C | 90 04 00 48 */	stw r0, 0x48(r4)
/* 813E1540 | 80 1E 07 4C */	lwz r0, 0x74c(r30)
/* 813E1544 | 90 03 00 48 */	stw r0, 0x48(r3)
/* 813E1548 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813E154C | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813E1550 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813E1554 | 48 21 7F C1 */	bl _restgpr_29
/* 813E1558 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813E155C | 7C 08 03 A6 */	mtlr r0
/* 813E1560 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813E1564 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E11C4

# .text:0x6A60 | 0x813E1568 | size: 0x124
.fn iplSDChannelSelect_813E1568, global
/* 813E1568 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E156C | 7C 08 02 A6 */	mflr r0
/* 813E1570 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813E1574 | 38 80 00 24 */	li r4, 0x24
/* 813E1578 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E157C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813E1580 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E1584 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E1588 | 7C 7E 1B 78 */	mr r30, r3
/* 813E158C | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813E1590 | 48 02 9B A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E1594 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1598 | 7C 7F 1B 78 */	mr r31, r3
/* 813E159C | 41 82 00 18 */	beq .L_813E15B4
/* 813E15A0 | 48 00 8B E1 */	bl iplSDChannelButton_813EA180
/* 813E15A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E15A8 | 41 82 00 0C */	beq .L_813E15B4
/* 813E15AC | 7F E3 FB 78 */	mr r3, r31
/* 813E15B0 | 48 00 86 09 */	bl iplSDChannelButton_813E9BB8
.L_813E15B4:
/* 813E15B4 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813E15B8 | 4B F8 99 D5 */	bl update__Q33ipl3gui11PaneManagerFv
/* 813E15BC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E15C0 | 80 9E 00 E4 */	lwz r4, 0xe4(r30)
/* 813E15C4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E15C8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E15CC | 4B F5 62 BD */	bl getController__Q33ipl10controller7ManagerFi
/* 813E15D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E15D4 | 41 82 00 28 */	beq .L_813E15FC
/* 813E15D8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E15DC | 80 9E 00 E4 */	lwz r4, 0xe4(r30)
/* 813E15E0 | 4B F5 62 A9 */	bl getController__Q33ipl10controller7ManagerFi
/* 813E15E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E15E8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813E15EC | 7D 89 03 A6 */	mtctr r12
/* 813E15F0 | 4E 80 04 21 */	bctrl
/* 813E15F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E15F8 | 40 82 00 0C */	bne .L_813E1604
.L_813E15FC:
/* 813E15FC | 38 00 00 01 */	li r0, 0x1
/* 813E1600 | 98 1E 01 04 */	stb r0, 0x104(r30)
.L_813E1604:
/* 813E1604 | 80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 813E1608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E160C | 41 80 00 0C */	blt .L_813E1618
/* 813E1610 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813E1614 | 90 1E 00 FC */	stw r0, 0xfc(r30)
.L_813E1618:
/* 813E1618 | 80 7E 00 F8 */	lwz r3, 0xf8(r30)
/* 813E161C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1620 | 41 80 00 0C */	blt .L_813E162C
/* 813E1624 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813E1628 | 90 1E 00 F8 */	stw r0, 0xf8(r30)
.L_813E162C:
/* 813E162C | 7F C3 F3 78 */	mr r3, r30
/* 813E1630 | 48 00 11 21 */	bl iplSDChannelSelect_813E2750
/* 813E1634 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813E1638 | 38 80 00 00 */	li r4, 0x0
/* 813E163C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1640 | 48 13 0C D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1644 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E1648 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E164C | 41 82 00 28 */	beq .L_813E1674
/* 813E1650 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E1654 | 38 80 00 00 */	li r4, 0x0
/* 813E1658 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E165C | 48 13 0C BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1660 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E1664 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E1668 | 41 82 00 0C */	beq .L_813E1674
/* 813E166C | 38 00 00 10 */	li r0, 0x10
/* 813E1670 | 90 1E 00 98 */	stw r0, 0x98(r30)
.L_813E1674:
/* 813E1674 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E1678 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E167C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E1680 | 7C 08 03 A6 */	mtlr r0
/* 813E1684 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E1688 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E1568

# .text:0x6B84 | 0x813E168C | size: 0x2D0
.fn iplSDChannelSelect_813E168C, global
/* 813E168C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E1690 | 7C 08 02 A6 */	mflr r0
/* 813E1694 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E1698 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E169C | 48 21 7E 2D */	bl _savegpr_29
/* 813E16A0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813E16A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813E16A8 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813E16AC | 38 80 00 24 */	li r4, 0x24
/* 813E16B0 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813E16B4 | 48 02 9A 85 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E16B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E16BC | 7C 7D 1B 78 */	mr r29, r3
/* 813E16C0 | 41 82 00 18 */	beq .L_813E16D8
/* 813E16C4 | 48 00 8A BD */	bl iplSDChannelButton_813EA180
/* 813E16C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E16CC | 41 82 00 0C */	beq .L_813E16D8
/* 813E16D0 | 7F A3 EB 78 */	mr r3, r29
/* 813E16D4 | 48 00 84 E5 */	bl iplSDChannelButton_813E9BB8
.L_813E16D8:
/* 813E16D8 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813E16DC | 4B F8 98 B1 */	bl update__Q33ipl3gui11PaneManagerFv
/* 813E16E0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813E16E4 | 80 9F 00 E4 */	lwz r4, 0xe4(r31)
/* 813E16E8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813E16EC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813E16F0 | 4B F5 61 99 */	bl getController__Q33ipl10controller7ManagerFi
/* 813E16F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E16F8 | 41 82 00 28 */	beq .L_813E1720
/* 813E16FC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813E1700 | 80 9F 00 E4 */	lwz r4, 0xe4(r31)
/* 813E1704 | 4B F5 61 85 */	bl getController__Q33ipl10controller7ManagerFi
/* 813E1708 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E170C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813E1710 | 7D 89 03 A6 */	mtctr r12
/* 813E1714 | 4E 80 04 21 */	bctrl
/* 813E1718 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E171C | 40 82 00 0C */	bne .L_813E1728
.L_813E1720:
/* 813E1720 | 38 00 00 01 */	li r0, 0x1
/* 813E1724 | 98 1F 01 04 */	stb r0, 0x104(r31)
.L_813E1728:
/* 813E1728 | 80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 813E172C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1730 | 41 80 00 0C */	blt .L_813E173C
/* 813E1734 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813E1738 | 90 1F 00 FC */	stw r0, 0xfc(r31)
.L_813E173C:
/* 813E173C | 80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 813E1740 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1744 | 41 80 00 0C */	blt .L_813E1750
/* 813E1748 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813E174C | 90 1F 00 F8 */	stw r0, 0xf8(r31)
.L_813E1750:
/* 813E1750 | 7F E3 FB 78 */	mr r3, r31
/* 813E1754 | 48 00 0F FD */	bl iplSDChannelSelect_813E2750
/* 813E1758 | 88 1F 01 04 */	lbz r0, 0x104(r31)
/* 813E175C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E1760 | 40 82 00 10 */	bne .L_813E1770
/* 813E1764 | 88 1F 01 05 */	lbz r0, 0x105(r31)
/* 813E1768 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E176C | 41 82 00 10 */	beq .L_813E177C
.L_813E1770:
/* 813E1770 | 7F E3 FB 78 */	mr r3, r31
/* 813E1774 | 48 00 0D 65 */	bl iplSDChannelSelect_813E24D8
/* 813E1778 | 48 00 01 CC */	b .L_813E1944
.L_813E177C:
/* 813E177C | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 813E1780 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813E1784 | 40 81 00 DC */	ble .L_813E1860
/* 813E1788 | 80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 813E178C | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813E1790 | 41 80 00 D0 */	blt .L_813E1860
/* 813E1794 | 7F A3 EB 78 */	mr r3, r29
/* 813E1798 | 38 80 00 07 */	li r4, 0x7
/* 813E179C | 48 00 8A B9 */	bl iplSDChannelButton_813EA254
/* 813E17A0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E17A4 | 38 80 FF FF */	li r4, -0x1
/* 813E17A8 | C0 22 86 C8 */	lfs f1, lbl_81694AC8@sda21(r0)
/* 813E17AC | 4B F8 92 45 */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813E17B0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E17B4 | 38 80 FF FF */	li r4, -0x1
/* 813E17B8 | C0 22 86 D4 */	lfs f1, lbl_81694AD4@sda21(r0)
/* 813E17BC | 4B F8 91 C5 */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813E17C0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E17C4 | 38 80 00 00 */	li r4, 0x0
/* 813E17C8 | 38 A0 FF FF */	li r5, -0x1
/* 813E17CC | 4B F8 92 95 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813E17D0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E17D4 | 38 80 FF FF */	li r4, -0x1
/* 813E17D8 | 4B F8 91 21 */	bl start__Q33ipl6layout6ObjectFi
/* 813E17DC | 38 80 00 16 */	li r4, 0x16
/* 813E17E0 | 38 60 00 00 */	li r3, 0x0
/* 813E17E4 | 38 00 FF FF */	li r0, -0x1
/* 813E17E8 | 90 9F 00 98 */	stw r4, 0x98(r31)
/* 813E17EC | 3B A0 00 00 */	li r29, 0x0
/* 813E17F0 | 90 7F 00 FC */	stw r3, 0xfc(r31)
/* 813E17F4 | 90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 813E17F8 | 48 00 00 10 */	b .L_813E1808
.L_813E17FC:
/* 813E17FC | 7F A3 EB 78 */	mr r3, r29
/* 813E1800 | 38 80 00 01 */	li r4, 0x1
/* 813E1804 | 48 00 1C E5 */	bl iplSDChannelObj_813E34E8
.L_813E1808:
/* 813E1808 | 7F A4 EB 78 */	mr r4, r29
/* 813E180C | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813E1810 | 48 13 0A CD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813E1814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1818 | 7C 7D 1B 78 */	mr r29, r3
/* 813E181C | 40 82 FF E0 */	bne .L_813E17FC
/* 813E1820 | 3B A0 00 00 */	li r29, 0x0
.L_813E1824:
/* 813E1824 | 7F E3 FB 78 */	mr r3, r31
/* 813E1828 | 7F A4 EB 78 */	mr r4, r29
/* 813E182C | 4B FF EF 89 */	bl iplSDChannelSelect_813E07B4
/* 813E1830 | 7C 64 1B 78 */	mr r4, r3
/* 813E1834 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813E1838 | 4B F8 99 E1 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813E183C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813E1840 | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813E1844 | 41 80 FF E0 */	blt .L_813E1824
/* 813E1848 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E184C | 3C 80 81 65 */	lis r4, lbl_8165481D@ha
/* 813E1850 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E1854 | 38 84 48 1D */	addi r4, r4, lbl_8165481D@l
/* 813E1858 | 4B F8 9C 15 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E185C | 48 00 00 E8 */	b .L_813E1944
.L_813E1860:
/* 813E1860 | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 813E1864 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813E1868 | 7C 04 00 00 */	cmpw r4, r0
/* 813E186C | 40 80 00 D8 */	bge .L_813E1944
/* 813E1870 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 813E1874 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813E1878 | 41 80 00 CC */	blt .L_813E1944
/* 813E187C | 7F A3 EB 78 */	mr r3, r29
/* 813E1880 | 38 80 00 08 */	li r4, 0x8
/* 813E1884 | 48 00 89 D1 */	bl iplSDChannelButton_813EA254
/* 813E1888 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E188C | 38 80 FF FF */	li r4, -0x1
/* 813E1890 | C0 22 86 D8 */	lfs f1, lbl_81694AD8@sda21(r0)
/* 813E1894 | 4B F8 91 5D */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813E1898 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E189C | 38 80 FF FF */	li r4, -0x1
/* 813E18A0 | C0 22 86 DC */	lfs f1, lbl_81694ADC@sda21(r0)
/* 813E18A4 | 4B F8 90 DD */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813E18A8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E18AC | 38 80 00 00 */	li r4, 0x0
/* 813E18B0 | 38 A0 FF FF */	li r5, -0x1
/* 813E18B4 | 4B F8 91 AD */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813E18B8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E18BC | 38 80 FF FF */	li r4, -0x1
/* 813E18C0 | 4B F8 90 39 */	bl start__Q33ipl6layout6ObjectFi
/* 813E18C4 | 38 80 00 17 */	li r4, 0x17
/* 813E18C8 | 38 60 FF FF */	li r3, -0x1
/* 813E18CC | 38 00 00 00 */	li r0, 0x0
/* 813E18D0 | 90 9F 00 98 */	stw r4, 0x98(r31)
/* 813E18D4 | 3B A0 00 00 */	li r29, 0x0
/* 813E18D8 | 90 7F 00 FC */	stw r3, 0xfc(r31)
/* 813E18DC | 90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 813E18E0 | 48 00 00 10 */	b .L_813E18F0
.L_813E18E4:
/* 813E18E4 | 7F A3 EB 78 */	mr r3, r29
/* 813E18E8 | 38 80 00 01 */	li r4, 0x1
/* 813E18EC | 48 00 1B FD */	bl iplSDChannelObj_813E34E8
.L_813E18F0:
/* 813E18F0 | 7F A4 EB 78 */	mr r4, r29
/* 813E18F4 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813E18F8 | 48 13 09 E5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813E18FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1900 | 7C 7D 1B 78 */	mr r29, r3
/* 813E1904 | 40 82 FF E0 */	bne .L_813E18E4
/* 813E1908 | 3B A0 00 00 */	li r29, 0x0
.L_813E190C:
/* 813E190C | 7F E3 FB 78 */	mr r3, r31
/* 813E1910 | 7F A4 EB 78 */	mr r4, r29
/* 813E1914 | 4B FF EE A1 */	bl iplSDChannelSelect_813E07B4
/* 813E1918 | 7C 64 1B 78 */	mr r4, r3
/* 813E191C | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813E1920 | 4B F8 98 F9 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813E1924 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813E1928 | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813E192C | 41 80 FF E0 */	blt .L_813E190C
/* 813E1930 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E1934 | 3C 80 81 65 */	lis r4, lbl_8165481D@ha
/* 813E1938 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E193C | 38 84 48 1D */	addi r4, r4, lbl_8165481D@l
/* 813E1940 | 4B F8 9B 2D */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813E1944:
/* 813E1944 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E1948 | 48 21 7B CD */	bl _restgpr_29
/* 813E194C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E1950 | 7C 08 03 A6 */	mtlr r0
/* 813E1954 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E1958 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E168C

# .text:0x6E54 | 0x813E195C | size: 0x6C
.fn iplSDChannelSelect_813E195C, global
/* 813E195C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E1960 | 7C 08 02 A6 */	mflr r0
/* 813E1964 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E1968 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E196C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E1970 | 7C 7E 1B 78 */	mr r30, r3
/* 813E1974 | 80 83 01 00 */	lwz r4, 0x100(r3)
/* 813E1978 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813E197C | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813E1980 | 90 03 01 00 */	stw r0, 0x100(r3)
/* 813E1984 | 40 81 00 2C */	ble .L_813E19B0
/* 813E1988 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813E198C | 38 80 00 01 */	li r4, 0x1
/* 813E1990 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1994 | 48 13 09 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1998 | 7C 7F 1B 78 */	mr r31, r3
/* 813E199C | 4B F8 0E D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E19A0 | 38 60 00 01 */	li r3, 0x1
/* 813E19A4 | 38 00 00 12 */	li r0, 0x12
/* 813E19A8 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813E19AC | 90 1E 00 98 */	stw r0, 0x98(r30)
.L_813E19B0:
/* 813E19B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E19B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E19B8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E19BC | 7C 08 03 A6 */	mtlr r0
/* 813E19C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E19C4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E195C

# .text:0x6EC0 | 0x813E19C8 | size: 0x68
.fn iplSDChannelSelect_813E19C8, global
/* 813E19C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E19CC | 7C 08 02 A6 */	mflr r0
/* 813E19D0 | 38 80 00 01 */	li r4, 0x1
/* 813E19D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E19D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E19DC | 7C 7F 1B 78 */	mr r31, r3
/* 813E19E0 | 80 A3 00 84 */	lwz r5, 0x84(r3)
/* 813E19E4 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813E19E8 | 48 13 09 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E19EC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E19F0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E19F4 | 41 82 00 28 */	beq .L_813E1A1C
/* 813E19F8 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813E19FC | 38 80 00 01 */	li r4, 0x1
/* 813E1A00 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1A04 | 48 13 09 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1A08 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E1A0C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E1A10 | 41 82 00 0C */	beq .L_813E1A1C
/* 813E1A14 | 38 00 00 01 */	li r0, 0x1
/* 813E1A18 | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813E1A1C:
/* 813E1A1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E1A20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E1A24 | 7C 08 03 A6 */	mtlr r0
/* 813E1A28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E1A2C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E19C8

# .text:0x6F28 | 0x813E1A30 | size: 0x208
.fn iplSDChannelSelect_813E1A30, global
/* 813E1A30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E1A34 | 7C 08 02 A6 */	mflr r0
/* 813E1A38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E1A3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E1A40 | 48 21 7A 89 */	bl _savegpr_29
/* 813E1A44 | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 813E1A48 | 7C 7F 1B 78 */	mr r31, r3
/* 813E1A4C | 38 80 00 00 */	li r4, 0x0
/* 813E1A50 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813E1A54 | 48 13 08 C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1A58 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E1A5C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E1A60 | 41 82 01 C0 */	beq .L_813E1C20
/* 813E1A64 | 80 FF 00 F0 */	lwz r7, 0xf0(r31)
/* 813E1A68 | 80 9F 00 E8 */	lwz r4, 0xe8(r31)
/* 813E1A6C | 7C 04 38 00 */	cmpw r4, r7
/* 813E1A70 | 40 82 00 40 */	bne .L_813E1AB0
/* 813E1A74 | 80 7F 00 EC */	lwz r3, 0xec(r31)
/* 813E1A78 | 80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 813E1A7C | 7C 03 00 00 */	cmpw r3, r0
/* 813E1A80 | 40 82 00 30 */	bne .L_813E1AB0
/* 813E1A84 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 813E1A88 | 38 80 00 01 */	li r4, 0x1
/* 813E1A8C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1A90 | 48 13 08 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1A94 | 7C 7E 1B 78 */	mr r30, r3
/* 813E1A98 | 4B F8 0D D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E1A9C | 38 60 00 01 */	li r3, 0x1
/* 813E1AA0 | 38 00 00 15 */	li r0, 0x15
/* 813E1AA4 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813E1AA8 | 90 1F 00 98 */	stw r0, 0x98(r31)
/* 813E1AAC | 48 00 01 74 */	b .L_813E1C20
.L_813E1AB0:
/* 813E1AB0 | 1C A4 00 0C */	mulli r5, r4, 0xc
/* 813E1AB4 | 80 DF 00 EC */	lwz r6, 0xec(r31)
/* 813E1AB8 | 80 9F 00 F4 */	lwz r4, 0xf4(r31)
/* 813E1ABC | 7F E3 FB 78 */	mr r3, r31
/* 813E1AC0 | 81 1F 07 3C */	lwz r8, 0x73c(r31)
/* 813E1AC4 | 1C 07 00 0C */	mulli r0, r7, 0xc
/* 813E1AC8 | 7C A6 2A 14 */	add r5, r6, r5
/* 813E1ACC | 7C 04 02 14 */	add r0, r4, r0
/* 813E1AD0 | 54 A4 10 3A */	slwi r4, r5, 2
/* 813E1AD4 | 54 1D 10 3A */	slwi r29, r0, 2
/* 813E1AD8 | 7C A8 20 2E */	lwzx r5, r8, r4
/* 813E1ADC | 7C 08 E8 2E */	lwzx r0, r8, r29
/* 813E1AE0 | 7C 08 21 2E */	stwx r0, r8, r4
/* 813E1AE4 | 80 9F 07 3C */	lwz r4, 0x73c(r31)
/* 813E1AE8 | 7C A4 E9 2E */	stwx r5, r4, r29
/* 813E1AEC | 4B FF 98 1D */	bl iplSDChannelSelect_813DB308
/* 813E1AF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1AF4 | 41 82 00 10 */	beq .L_813E1B04
/* 813E1AF8 | 3B C0 00 00 */	li r30, 0x0
/* 813E1AFC | 9B DF 07 58 */	stb r30, 0x758(r31)
/* 813E1B00 | 48 00 00 30 */	b .L_813E1B30
.L_813E1B04:
/* 813E1B04 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 813E1B08 | 38 80 00 01 */	li r4, 0x1
/* 813E1B0C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1B10 | 48 13 08 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1B14 | 7C 7E 1B 78 */	mr r30, r3
/* 813E1B18 | 4B F8 0D 59 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E1B1C | 38 60 00 01 */	li r3, 0x1
/* 813E1B20 | 38 00 00 15 */	li r0, 0x15
/* 813E1B24 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813E1B28 | 90 1F 00 98 */	stw r0, 0x98(r31)
/* 813E1B2C | 48 00 00 F4 */	b .L_813E1C20
.L_813E1B30:
/* 813E1B30 | 80 9F 00 E8 */	lwz r4, 0xe8(r31)
/* 813E1B34 | 7F E3 FB 78 */	mr r3, r31
/* 813E1B38 | 80 BF 00 EC */	lwz r5, 0xec(r31)
/* 813E1B3C | 4B FF E3 7D */	bl iplSDChannelSelect_813DFEB8
/* 813E1B40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1B44 | 90 7F 01 08 */	stw r3, 0x108(r31)
/* 813E1B48 | 40 82 00 34 */	bne .L_813E1B7C
/* 813E1B4C | 80 9F 00 F0 */	lwz r4, 0xf0(r31)
/* 813E1B50 | 7F E3 FB 78 */	mr r3, r31
/* 813E1B54 | 80 BF 00 F4 */	lwz r5, 0xf4(r31)
/* 813E1B58 | 4B FF E3 61 */	bl iplSDChannelSelect_813DFEB8
/* 813E1B5C | 90 7F 01 08 */	stw r3, 0x108(r31)
/* 813E1B60 | 7F E3 FB 78 */	mr r3, r31
/* 813E1B64 | 80 9F 07 3C */	lwz r4, 0x73c(r31)
/* 813E1B68 | 80 BF 00 F0 */	lwz r5, 0xf0(r31)
/* 813E1B6C | 7C 84 E8 2E */	lwzx r4, r4, r29
/* 813E1B70 | 80 DF 00 F4 */	lwz r6, 0xf4(r31)
/* 813E1B74 | 4B FF 96 E1 */	bl iplSDChannelSelect_813DB254
/* 813E1B78 | 48 00 00 A0 */	b .L_813E1C18
.L_813E1B7C:
/* 813E1B7C | 80 9F 00 F0 */	lwz r4, 0xf0(r31)
/* 813E1B80 | 7F E3 FB 78 */	mr r3, r31
/* 813E1B84 | 80 BF 00 F4 */	lwz r5, 0xf4(r31)
/* 813E1B88 | 4B FF E3 31 */	bl iplSDChannelSelect_813DFEB8
/* 813E1B8C | 80 9F 00 F0 */	lwz r4, 0xf0(r31)
/* 813E1B90 | 7C 7D 1B 78 */	mr r29, r3
/* 813E1B94 | 80 BF 00 F4 */	lwz r5, 0xf4(r31)
/* 813E1B98 | 7F E3 FB 78 */	mr r3, r31
/* 813E1B9C | 80 DF 00 9C */	lwz r6, 0x9c(r31)
/* 813E1BA0 | 4B FF EB 39 */	bl iplSDChannelSelect_813E06D8
/* 813E1BA4 | 7C 64 1B 78 */	mr r4, r3
/* 813E1BA8 | 80 7F 01 08 */	lwz r3, 0x108(r31)
/* 813E1BAC | 48 00 15 CD */	bl iplSDChannelObj_813E3178
/* 813E1BB0 | 80 9F 00 E8 */	lwz r4, 0xe8(r31)
/* 813E1BB4 | 7F E3 FB 78 */	mr r3, r31
/* 813E1BB8 | 80 BF 00 EC */	lwz r5, 0xec(r31)
/* 813E1BBC | 80 DF 00 9C */	lwz r6, 0x9c(r31)
/* 813E1BC0 | 4B FF EB 19 */	bl iplSDChannelSelect_813E06D8
/* 813E1BC4 | 7C 64 1B 78 */	mr r4, r3
/* 813E1BC8 | 7F A3 EB 78 */	mr r3, r29
/* 813E1BCC | 48 00 15 AD */	bl iplSDChannelObj_813E3178
/* 813E1BD0 | 80 9F 00 F4 */	lwz r4, 0xf4(r31)
/* 813E1BD4 | 80 7F 01 08 */	lwz r3, 0x108(r31)
/* 813E1BD8 | 80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 813E1BDC | 90 03 00 18 */	stw r0, 0x18(r3)
/* 813E1BE0 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 813E1BE4 | 80 7F 00 EC */	lwz r3, 0xec(r31)
/* 813E1BE8 | 80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 813E1BEC | 90 1D 00 18 */	stw r0, 0x18(r29)
/* 813E1BF0 | 90 7D 00 1C */	stw r3, 0x1c(r29)
/* 813E1BF4 | 80 7F 01 08 */	lwz r3, 0x108(r31)
/* 813E1BF8 | 48 00 16 35 */	bl iplSDChannelObj_813E322C
/* 813E1BFC | 7F A3 EB 78 */	mr r3, r29
/* 813E1C00 | 48 00 16 2D */	bl iplSDChannelObj_813E322C
/* 813E1C04 | 93 DF 01 08 */	stw r30, 0x108(r31)
/* 813E1C08 | 80 9F 01 10 */	lwz r4, 0x110(r31)
/* 813E1C0C | 80 7D 00 30 */	lwz r3, 0x30(r29)
/* 813E1C10 | C0 04 00 0C */	lfs f0, 0xc(r4)
/* 813E1C14 | D0 03 00 0C */	stfs f0, 0xc(r3)
.L_813E1C18:
/* 813E1C18 | 38 00 00 14 */	li r0, 0x14
/* 813E1C1C | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813E1C20:
/* 813E1C20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E1C24 | 48 21 78 F1 */	bl _restgpr_29
/* 813E1C28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E1C2C | 7C 08 03 A6 */	mtlr r0
/* 813E1C30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E1C34 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E1A30

# .text:0x7130 | 0x813E1C38 | size: 0x118
.fn iplSDChannelSelect_813E1C38, global
/* 813E1C38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E1C3C | 7C 08 02 A6 */	mflr r0
/* 813E1C40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E1C44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E1C48 | 48 21 78 7D */	bl _savegpr_28
/* 813E1C4C | 88 03 07 58 */	lbz r0, 0x758(r3)
/* 813E1C50 | 7C 7C 1B 78 */	mr r28, r3
/* 813E1C54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E1C58 | 41 82 00 E0 */	beq .L_813E1D38
/* 813E1C5C | 80 63 01 08 */	lwz r3, 0x108(r3)
/* 813E1C60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1C64 | 41 82 00 10 */	beq .L_813E1C74
/* 813E1C68 | 4B FF D5 7D */	bl iplSDChannelSelect_813DF1E4
/* 813E1C6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1C70 | 41 82 00 C8 */	beq .L_813E1D38
.L_813E1C74:
/* 813E1C74 | 80 1C 01 08 */	lwz r0, 0x108(r28)
/* 813E1C78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E1C7C | 41 82 00 10 */	beq .L_813E1C8C
/* 813E1C80 | 38 00 00 00 */	li r0, 0x0
/* 813E1C84 | 90 1C 01 08 */	stw r0, 0x108(r28)
/* 813E1C88 | 48 00 00 88 */	b .L_813E1D10
.L_813E1C8C:
/* 813E1C8C | 80 9C 00 E8 */	lwz r4, 0xe8(r28)
/* 813E1C90 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 813E1C94 | 41 82 00 7C */	beq .L_813E1D10
/* 813E1C98 | 80 BC 00 EC */	lwz r5, 0xec(r28)
/* 813E1C9C | 7F 83 E3 78 */	mr r3, r28
/* 813E1CA0 | 4B FF E2 19 */	bl iplSDChannelSelect_813DFEB8
/* 813E1CA4 | 80 9C 00 F0 */	lwz r4, 0xf0(r28)
/* 813E1CA8 | 7C 7F 1B 78 */	mr r31, r3
/* 813E1CAC | 80 BC 00 F4 */	lwz r5, 0xf4(r28)
/* 813E1CB0 | 7F 83 E3 78 */	mr r3, r28
/* 813E1CB4 | 4B FF E2 05 */	bl iplSDChannelSelect_813DFEB8
/* 813E1CB8 | 7C 7E 1B 78 */	mr r30, r3
/* 813E1CBC | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813E1CC0 | 7F C4 F3 78 */	mr r4, r30
/* 813E1CC4 | 48 13 06 19 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813E1CC8 | 7C 03 F8 40 */	cmplw r3, r31
/* 813E1CCC | 7C 7D 1B 78 */	mr r29, r3
/* 813E1CD0 | 40 82 00 08 */	bne .L_813E1CD8
/* 813E1CD4 | 7F DD F3 78 */	mr r29, r30
.L_813E1CD8:
/* 813E1CD8 | 7F C4 F3 78 */	mr r4, r30
/* 813E1CDC | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813E1CE0 | 48 13 05 91 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813E1CE4 | 7F E4 FB 78 */	mr r4, r31
/* 813E1CE8 | 7F C5 F3 78 */	mr r5, r30
/* 813E1CEC | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813E1CF0 | 48 13 04 61 */	bl List_Insert__Q24nw4r2utFPQ34nw4r2ut4ListPvPv
/* 813E1CF4 | 7F E4 FB 78 */	mr r4, r31
/* 813E1CF8 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813E1CFC | 48 13 05 75 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813E1D00 | 7F A4 EB 78 */	mr r4, r29
/* 813E1D04 | 7F E5 FB 78 */	mr r5, r31
/* 813E1D08 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813E1D0C | 48 13 04 45 */	bl List_Insert__Q24nw4r2utFPQ34nw4r2ut4ListPvPv
.L_813E1D10:
/* 813E1D10 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813E1D14 | 38 80 00 01 */	li r4, 0x1
/* 813E1D18 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1D1C | 48 13 05 FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1D20 | 7C 7F 1B 78 */	mr r31, r3
/* 813E1D24 | 4B F8 0B 4D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E1D28 | 38 60 00 01 */	li r3, 0x1
/* 813E1D2C | 38 00 00 15 */	li r0, 0x15
/* 813E1D30 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813E1D34 | 90 1C 00 98 */	stw r0, 0x98(r28)
.L_813E1D38:
/* 813E1D38 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E1D3C | 48 21 77 D5 */	bl _restgpr_28
/* 813E1D40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E1D44 | 7C 08 03 A6 */	mtlr r0
/* 813E1D48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E1D4C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E1C38

# .text:0x7248 | 0x813E1D50 | size: 0xFC
.fn iplSDChannelSelect_813E1D50, global
/* 813E1D50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E1D54 | 7C 08 02 A6 */	mflr r0
/* 813E1D58 | 38 80 00 01 */	li r4, 0x1
/* 813E1D5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E1D60 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813E1D64 | 7C 7F 1B 78 */	mr r31, r3
/* 813E1D68 | 80 A3 00 84 */	lwz r5, 0x84(r3)
/* 813E1D6C | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813E1D70 | 48 13 05 A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1D74 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E1D78 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E1D7C | 41 82 00 BC */	beq .L_813E1E38
/* 813E1D80 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813E1D84 | 38 80 00 01 */	li r4, 0x1
/* 813E1D88 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1D8C | 48 13 05 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1D90 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E1D94 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E1D98 | 41 82 00 A0 */	beq .L_813E1E38
/* 813E1D9C | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 813E1DA0 | 38 80 00 01 */	li r4, 0x1
/* 813E1DA4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1DA8 | 48 13 05 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1DAC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E1DB0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E1DB4 | 41 82 00 84 */	beq .L_813E1E38
/* 813E1DB8 | 4B F5 3C 25 */	bl getRndm__Q23ipl6SystemFv
/* 813E1DBC | 4B FC D0 55 */	bl get_u16__Q33ipl4math6RandomFv
/* 813E1DC0 | 54 66 04 3E */	clrlwi r6, r3, 16
/* 813E1DC4 | 38 A0 07 D0 */	li r5, 0x7d0
/* 813E1DC8 | 7C 66 2B D6 */	divw r3, r6, r5
/* 813E1DCC | 3C 00 43 30 */	lis r0, 0x4330
/* 813E1DD0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813E1DD4 | 38 80 00 00 */	li r4, 0x0
/* 813E1DD8 | C8 22 87 10 */	lfd f1, lbl_81694B10@sda21(r0)
/* 813E1DDC | 38 00 FF FF */	li r0, -0x1
/* 813E1DE0 | 7C A3 29 D6 */	mullw r5, r3, r5
/* 813E1DE4 | 80 7F 01 10 */	lwz r3, 0x110(r31)
/* 813E1DE8 | 7C A5 30 50 */	subf r5, r5, r6
/* 813E1DEC | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 813E1DF0 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 813E1DF4 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813E1DF8 | EC 00 08 28 */	fsubs f0, f0, f1
/* 813E1DFC | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 813E1E00 | 80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 813E1E04 | 90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 813E1E08 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1E0C | 90 1F 00 EC */	stw r0, 0xec(r31)
/* 813E1E10 | 48 13 05 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1E14 | 38 00 00 00 */	li r0, 0x0
/* 813E1E18 | 38 80 00 00 */	li r4, 0x0
/* 813E1E1C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813E1E20 | 80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 813E1E24 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E1E28 | 48 13 04 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E1E2C | 4B F8 7D F9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E1E30 | 38 00 00 01 */	li r0, 0x1
/* 813E1E34 | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813E1E38:
/* 813E1E38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E1E3C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813E1E40 | 7C 08 03 A6 */	mtlr r0
/* 813E1E44 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E1E48 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E1D50

# .text:0x7344 | 0x813E1E4C | size: 0x19C
.fn iplSDChannelSelect_813E1E4C, global
/* 813E1E4C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E1E50 | 7C 08 02 A6 */	mflr r0
/* 813E1E54 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813E1E58 | 38 80 00 24 */	li r4, 0x24
/* 813E1E5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E1E60 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813E1E64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E1E68 | 7C 7F 1B 78 */	mr r31, r3
/* 813E1E6C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E1E70 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813E1E74 | 48 02 92 C5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E1E78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1E7C | 7C 7E 1B 78 */	mr r30, r3
/* 813E1E80 | 41 82 00 18 */	beq .L_813E1E98
/* 813E1E84 | 48 00 82 FD */	bl iplSDChannelButton_813EA180
/* 813E1E88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1E8C | 41 82 00 0C */	beq .L_813E1E98
/* 813E1E90 | 7F C3 F3 78 */	mr r3, r30
/* 813E1E94 | 48 00 7D 25 */	bl iplSDChannelButton_813E9BB8
.L_813E1E98:
/* 813E1E98 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813E1E9C | 80 9F 00 E4 */	lwz r4, 0xe4(r31)
/* 813E1EA0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813E1EA4 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813E1EA8 | 4B F5 59 E1 */	bl getController__Q33ipl10controller7ManagerFi
/* 813E1EAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1EB0 | 41 82 00 28 */	beq .L_813E1ED8
/* 813E1EB4 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813E1EB8 | 80 9F 00 E4 */	lwz r4, 0xe4(r31)
/* 813E1EBC | 4B F5 59 CD */	bl getController__Q33ipl10controller7ManagerFi
/* 813E1EC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E1EC4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813E1EC8 | 7D 89 03 A6 */	mtctr r12
/* 813E1ECC | 4E 80 04 21 */	bctrl
/* 813E1ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1ED4 | 40 82 00 0C */	bne .L_813E1EE0
.L_813E1ED8:
/* 813E1ED8 | 38 00 00 01 */	li r0, 0x1
/* 813E1EDC | 98 1F 01 04 */	stb r0, 0x104(r31)
.L_813E1EE0:
/* 813E1EE0 | 7F E3 FB 78 */	mr r3, r31
/* 813E1EE4 | 48 00 08 6D */	bl iplSDChannelSelect_813E2750
/* 813E1EE8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E1EEC | 38 80 00 00 */	li r4, 0x0
/* 813E1EF0 | 4B F8 8B E1 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E1EF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E1EF8 | 40 82 00 D8 */	bne .L_813E1FD0
/* 813E1EFC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E1F00 | 38 80 00 24 */	li r4, 0x24
/* 813E1F04 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E1F08 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813E1F0C | 48 02 92 2D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E1F10 | 80 1F 00 98 */	lwz r0, 0x98(r31)
/* 813E1F14 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813E1F18 | 40 82 00 48 */	bne .L_813E1F60
/* 813E1F1C | 80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 813E1F20 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 813E1F24 | 90 1F 00 9C */	stw r0, 0x9c(r31)
/* 813E1F28 | 40 82 00 18 */	bne .L_813E1F40
/* 813E1F2C | 38 80 00 0F */	li r4, 0xf
/* 813E1F30 | 48 00 83 25 */	bl iplSDChannelButton_813EA254
/* 813E1F34 | 38 00 00 00 */	li r0, 0x0
/* 813E1F38 | 98 1F 00 C8 */	stb r0, 0xc8(r31)
/* 813E1F3C | 48 00 00 70 */	b .L_813E1FAC
.L_813E1F40:
/* 813E1F40 | 88 1F 00 C9 */	lbz r0, 0xc9(r31)
/* 813E1F44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E1F48 | 40 82 00 64 */	bne .L_813E1FAC
/* 813E1F4C | 38 80 00 0E */	li r4, 0xe
/* 813E1F50 | 48 00 83 05 */	bl iplSDChannelButton_813EA254
/* 813E1F54 | 38 00 00 01 */	li r0, 0x1
/* 813E1F58 | 98 1F 00 C9 */	stb r0, 0xc9(r31)
/* 813E1F5C | 48 00 00 50 */	b .L_813E1FAC
.L_813E1F60:
/* 813E1F60 | 80 BF 00 9C */	lwz r5, 0x9c(r31)
/* 813E1F64 | 80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 813E1F68 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813E1F6C | 38 04 FF FF */	subi r0, r4, 0x1
/* 813E1F70 | 90 BF 00 9C */	stw r5, 0x9c(r31)
/* 813E1F74 | 7C 05 00 00 */	cmpw r5, r0
/* 813E1F78 | 40 82 00 18 */	bne .L_813E1F90
/* 813E1F7C | 38 80 00 10 */	li r4, 0x10
/* 813E1F80 | 48 00 82 D5 */	bl iplSDChannelButton_813EA254
/* 813E1F84 | 38 00 00 00 */	li r0, 0x0
/* 813E1F88 | 98 1F 00 C9 */	stb r0, 0xc9(r31)
/* 813E1F8C | 48 00 00 20 */	b .L_813E1FAC
.L_813E1F90:
/* 813E1F90 | 88 1F 00 C8 */	lbz r0, 0xc8(r31)
/* 813E1F94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E1F98 | 40 82 00 14 */	bne .L_813E1FAC
/* 813E1F9C | 38 80 00 0D */	li r4, 0xd
/* 813E1FA0 | 48 00 82 B5 */	bl iplSDChannelButton_813EA254
/* 813E1FA4 | 38 00 00 01 */	li r0, 0x1
/* 813E1FA8 | 98 1F 00 C8 */	stb r0, 0xc8(r31)
.L_813E1FAC:
/* 813E1FAC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E1FB0 | 4B F8 86 85 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E1FB4 | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 813E1FB8 | 7F E3 FB 78 */	mr r3, r31
/* 813E1FBC | 38 A0 00 00 */	li r5, 0x0
/* 813E1FC0 | 38 C0 FF FF */	li r6, -0x1
/* 813E1FC4 | 4B FF D7 0D */	bl iplSDChannelSelect_813DF6D0
/* 813E1FC8 | 38 00 00 10 */	li r0, 0x10
/* 813E1FCC | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813E1FD0:
/* 813E1FD0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E1FD4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E1FD8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E1FDC | 7C 08 03 A6 */	mtlr r0
/* 813E1FE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E1FE4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E1E4C

# .text:0x74E0 | 0x813E1FE8 | size: 0x1A4
.fn iplSDChannelSelect_813E1FE8, global
/* 813E1FE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E1FEC | 7C 08 02 A6 */	mflr r0
/* 813E1FF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E1FF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E1FF8 | 48 21 74 CD */	bl _savegpr_28
/* 813E1FFC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813E2000 | 7C 7C 1B 78 */	mr r28, r3
/* 813E2004 | 7C 9F 23 78 */	mr r31, r4
/* 813E2008 | 7C BD 2B 78 */	mr r29, r5
/* 813E200C | 7C DE 33 78 */	mr r30, r6
/* 813E2010 | 41 82 00 28 */	beq .L_813E2038
/* 813E2014 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E2018 | 80 9C 00 E4 */	lwz r4, 0xe4(r28)
/* 813E201C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E2020 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813E2024 | 4B F5 58 65 */	bl getController__Q33ipl10controller7ManagerFi
/* 813E2028 | 7C 1E 18 40 */	cmplw r30, r3
/* 813E202C | 41 82 00 0C */	beq .L_813E2038
/* 813E2030 | 38 60 00 01 */	li r3, 0x1
/* 813E2034 | 48 00 01 40 */	b .L_813E2174
.L_813E2038:
/* 813E2038 | 7F 83 E3 78 */	mr r3, r28
/* 813E203C | 7F E4 FB 78 */	mr r4, r31
/* 813E2040 | 4B FF F1 0D */	bl iplSDChannelSelect_813E114C
/* 813E2044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2048 | 7C 7F 1B 78 */	mr r31, r3
/* 813E204C | 41 80 01 24 */	blt .L_813E2170
/* 813E2050 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813E2054 | 41 82 00 D0 */	beq .L_813E2124
/* 813E2058 | 40 80 00 10 */	bge .L_813E2068
/* 813E205C | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813E2060 | 40 80 00 48 */	bge .L_813E20A8
/* 813E2064 | 48 00 01 0C */	b .L_813E2170
.L_813E2068:
/* 813E2068 | 2C 1D 00 05 */	cmpwi r29, 0x5
/* 813E206C | 41 82 00 08 */	beq .L_813E2074
/* 813E2070 | 48 00 01 00 */	b .L_813E2170
.L_813E2074:
/* 813E2074 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813E2078 | 7F C3 F3 78 */	mr r3, r30
/* 813E207C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813E2080 | 7D 89 03 A6 */	mtctr r12
/* 813E2084 | 4E 80 04 21 */	bctrl
/* 813E2088 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E208C | 40 82 00 E4 */	bne .L_813E2170
/* 813E2090 | 80 7C 00 9C */	lwz r3, 0x9c(r28)
/* 813E2094 | 38 00 00 01 */	li r0, 0x1
/* 813E2098 | 93 FC 00 F4 */	stw r31, 0xf4(r28)
/* 813E209C | 90 7C 00 F0 */	stw r3, 0xf0(r28)
/* 813E20A0 | 98 1C 01 04 */	stb r0, 0x104(r28)
/* 813E20A4 | 48 00 00 CC */	b .L_813E2170
.L_813E20A8:
/* 813E20A8 | 80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 813E20AC | 7F 83 E3 78 */	mr r3, r28
/* 813E20B0 | 7F E5 FB 78 */	mr r5, r31
/* 813E20B4 | 48 00 06 29 */	bl iplSDChannelSelect_813E26DC
/* 813E20B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E20BC | 40 82 00 20 */	bne .L_813E20DC
/* 813E20C0 | 80 7C 00 9C */	lwz r3, 0x9c(r28)
/* 813E20C4 | 80 1C 00 E8 */	lwz r0, 0xe8(r28)
/* 813E20C8 | 7C 03 00 00 */	cmpw r3, r0
/* 813E20CC | 40 82 00 A4 */	bne .L_813E2170
/* 813E20D0 | 80 1C 00 EC */	lwz r0, 0xec(r28)
/* 813E20D4 | 7C 1F 00 00 */	cmpw r31, r0
/* 813E20D8 | 40 82 00 98 */	bne .L_813E2170
.L_813E20DC:
/* 813E20DC | 80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 813E20E0 | 7F 83 E3 78 */	mr r3, r28
/* 813E20E4 | 7F E5 FB 78 */	mr r5, r31
/* 813E20E8 | 4B FF DD D1 */	bl iplSDChannelSelect_813DFEB8
/* 813E20EC | 38 80 00 02 */	li r4, 0x2
/* 813E20F0 | 48 00 12 65 */	bl iplSDChannelObj_813E3354
/* 813E20F4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E20F8 | 3C 80 81 65 */	lis r4, lbl_8165497E@ha
/* 813E20FC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E2100 | 38 84 49 7E */	addi r4, r4, lbl_8165497E@l
/* 813E2104 | 4B F8 93 69 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E2108 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813E210C | 7F C3 F3 78 */	mr r3, r30
/* 813E2110 | 38 80 00 01 */	li r4, 0x1
/* 813E2114 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813E2118 | 7D 89 03 A6 */	mtctr r12
/* 813E211C | 4E 80 04 21 */	bctrl
/* 813E2120 | 48 00 00 50 */	b .L_813E2170
.L_813E2124:
/* 813E2124 | 80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 813E2128 | 7F 83 E3 78 */	mr r3, r28
/* 813E212C | 7F E5 FB 78 */	mr r5, r31
/* 813E2130 | 48 00 05 AD */	bl iplSDChannelSelect_813E26DC
/* 813E2134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2138 | 40 82 00 20 */	bne .L_813E2158
/* 813E213C | 80 7C 00 9C */	lwz r3, 0x9c(r28)
/* 813E2140 | 80 1C 00 E8 */	lwz r0, 0xe8(r28)
/* 813E2144 | 7C 03 00 00 */	cmpw r3, r0
/* 813E2148 | 40 82 00 28 */	bne .L_813E2170
/* 813E214C | 80 1C 00 EC */	lwz r0, 0xec(r28)
/* 813E2150 | 7C 1F 00 00 */	cmpw r31, r0
/* 813E2154 | 40 82 00 1C */	bne .L_813E2170
.L_813E2158:
/* 813E2158 | 80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 813E215C | 7F 83 E3 78 */	mr r3, r28
/* 813E2160 | 7F E5 FB 78 */	mr r5, r31
/* 813E2164 | 4B FF DD 55 */	bl iplSDChannelSelect_813DFEB8
/* 813E2168 | 38 80 00 02 */	li r4, 0x2
/* 813E216C | 48 00 12 81 */	bl iplSDChannelObj_813E33EC
.L_813E2170:
/* 813E2170 | 38 60 00 01 */	li r3, 0x1
.L_813E2174:
/* 813E2174 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E2178 | 48 21 73 99 */	bl _restgpr_28
/* 813E217C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E2180 | 7C 08 03 A6 */	mtlr r0
/* 813E2184 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E2188 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E1FE8

# .text:0x7684 | 0x813E218C | size: 0x16C
.fn iplSDChannelSelect_813E218C, global
/* 813E218C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E2190 | 7C 08 02 A6 */	mflr r0
/* 813E2194 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E2198 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E219C | 48 21 73 29 */	bl _savegpr_28
/* 813E21A0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813E21A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813E21A8 | 7C 9C 23 78 */	mr r28, r4
/* 813E21AC | 7C BD 2B 78 */	mr r29, r5
/* 813E21B0 | 7C DE 33 78 */	mr r30, r6
/* 813E21B4 | 41 82 00 20 */	beq .L_813E21D4
/* 813E21B8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E21BC | 80 9F 00 E4 */	lwz r4, 0xe4(r31)
/* 813E21C0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E21C4 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813E21C8 | 4B F5 56 C1 */	bl getController__Q33ipl10controller7ManagerFi
/* 813E21CC | 7C 1E 18 40 */	cmplw r30, r3
/* 813E21D0 | 40 82 01 10 */	bne .L_813E22E0
.L_813E21D4:
/* 813E21D4 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813E21D8 | 41 82 00 14 */	beq .L_813E21EC
/* 813E21DC | 40 80 01 04 */	bge .L_813E22E0
/* 813E21E0 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813E21E4 | 40 80 00 78 */	bge .L_813E225C
/* 813E21E8 | 48 00 00 F8 */	b .L_813E22E0
.L_813E21EC:
/* 813E21EC | 3C 80 81 65 */	lis r4, lbl_81655644@ha
/* 813E21F0 | 7F 83 E3 78 */	mr r3, r28
/* 813E21F4 | 38 84 56 44 */	addi r4, r4, lbl_81655644@l
/* 813E21F8 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 813E21FC | 48 22 02 85 */	bl strcmp
/* 813E2200 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2204 | 40 82 00 1C */	bne .L_813E2220
/* 813E2208 | 80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 813E220C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E2210 | 40 81 00 10 */	ble .L_813E2220
/* 813E2214 | 38 00 FF FF */	li r0, -0x1
/* 813E2218 | 90 1F 00 FC */	stw r0, 0xfc(r31)
/* 813E221C | 48 00 00 C4 */	b .L_813E22E0
.L_813E2220:
/* 813E2220 | 3C 80 81 65 */	lis r4, lbl_81655644@ha
/* 813E2224 | 7F 83 E3 78 */	mr r3, r28
/* 813E2228 | 38 84 56 44 */	addi r4, r4, lbl_81655644@l
/* 813E222C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813E2230 | 48 22 02 51 */	bl strcmp
/* 813E2234 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2238 | 40 82 00 A8 */	bne .L_813E22E0
/* 813E223C | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 813E2240 | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 813E2244 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813E2248 | 7C 04 00 00 */	cmpw r4, r0
/* 813E224C | 40 80 00 94 */	bge .L_813E22E0
/* 813E2250 | 38 00 FF FF */	li r0, -0x1
/* 813E2254 | 90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 813E2258 | 48 00 00 88 */	b .L_813E22E0
.L_813E225C:
/* 813E225C | 3C 80 81 65 */	lis r4, lbl_81655644@ha
/* 813E2260 | 7F 83 E3 78 */	mr r3, r28
/* 813E2264 | 38 84 56 44 */	addi r4, r4, lbl_81655644@l
/* 813E2268 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 813E226C | 48 22 02 15 */	bl strcmp
/* 813E2270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2274 | 40 82 00 28 */	bne .L_813E229C
/* 813E2278 | 80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 813E227C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E2280 | 40 81 00 1C */	ble .L_813E229C
/* 813E2284 | 80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 813E2288 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E228C | 40 80 00 54 */	bge .L_813E22E0
/* 813E2290 | 38 00 00 00 */	li r0, 0x0
/* 813E2294 | 90 1F 00 FC */	stw r0, 0xfc(r31)
/* 813E2298 | 48 00 00 48 */	b .L_813E22E0
.L_813E229C:
/* 813E229C | 3C 80 81 65 */	lis r4, lbl_81655644@ha
/* 813E22A0 | 7F 83 E3 78 */	mr r3, r28
/* 813E22A4 | 38 84 56 44 */	addi r4, r4, lbl_81655644@l
/* 813E22A8 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813E22AC | 48 22 01 D5 */	bl strcmp
/* 813E22B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E22B4 | 40 82 00 2C */	bne .L_813E22E0
/* 813E22B8 | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 813E22BC | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 813E22C0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813E22C4 | 7C 04 00 00 */	cmpw r4, r0
/* 813E22C8 | 40 80 00 18 */	bge .L_813E22E0
/* 813E22CC | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 813E22D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E22D4 | 40 80 00 0C */	bge .L_813E22E0
/* 813E22D8 | 38 00 00 00 */	li r0, 0x0
/* 813E22DC | 90 1F 00 F8 */	stw r0, 0xf8(r31)
.L_813E22E0:
/* 813E22E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E22E4 | 48 21 72 2D */	bl _restgpr_28
/* 813E22E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E22EC | 7C 08 03 A6 */	mtlr r0
/* 813E22F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E22F4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E218C

# .text:0x77F0 | 0x813E22F8 | size: 0x1E0
.fn iplSDChannelSelect_813E22F8, global
/* 813E22F8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E22FC | 7C 08 02 A6 */	mflr r0
/* 813E2300 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E2304 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E2308 | 48 21 71 B5 */	bl _savegpr_26
/* 813E230C | 7C 9D 23 78 */	mr r29, r4
/* 813E2310 | 7C 7A 1B 78 */	mr r26, r3
/* 813E2314 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813E2318 | 7F A3 EB 78 */	mr r3, r29
/* 813E231C | 7C BB 2B 78 */	mr r27, r5
/* 813E2320 | 7C DC 33 78 */	mr r28, r6
/* 813E2324 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813E2328 | 7D 89 03 A6 */	mtctr r12
/* 813E232C | 4E 80 04 21 */	bctrl
/* 813E2330 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2334 | 41 80 01 8C */	blt .L_813E24C0
/* 813E2338 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813E233C | 7F A3 EB 78 */	mr r3, r29
/* 813E2340 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813E2344 | 7D 89 03 A6 */	mtctr r12
/* 813E2348 | 4E 80 04 21 */	bctrl
/* 813E234C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2350 | 41 82 00 30 */	beq .L_813E2380
/* 813E2354 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813E2358 | 7F A3 EB 78 */	mr r3, r29
/* 813E235C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813E2360 | 7D 89 03 A6 */	mtctr r12
/* 813E2364 | 4E 80 04 21 */	bctrl
/* 813E2368 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813E236C | 38 81 00 10 */	addi r4, r1, 0x10
/* 813E2370 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813E2374 | 38 7A 00 DC */	addi r3, r26, 0xdc
/* 813E2378 | 4B F8 8A 61 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 813E237C | 48 00 00 1C */	b .L_813E2398
.L_813E2380:
/* 813E2380 | C0 02 86 C8 */	lfs f0, lbl_81694AC8@sda21(r0)
/* 813E2384 | 38 7A 00 DC */	addi r3, r26, 0xdc
/* 813E2388 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E238C | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813E2390 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813E2394 | 4B F8 8A 45 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
.L_813E2398:
/* 813E2398 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813E239C | 7F A3 EB 78 */	mr r3, r29
/* 813E23A0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813E23A4 | 7D 89 03 A6 */	mtctr r12
/* 813E23A8 | 4E 80 04 21 */	bctrl
/* 813E23AC | 38 80 FF FF */	li r4, -0x1
/* 813E23B0 | 38 00 00 00 */	li r0, 0x0
/* 813E23B4 | 90 7A 00 E4 */	stw r3, 0xe4(r26)
/* 813E23B8 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813E23BC | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813E23C0 | 7F A3 EB 78 */	mr r3, r29
/* 813E23C4 | 93 7A 00 E8 */	stw r27, 0xe8(r26)
/* 813E23C8 | 93 9A 00 EC */	stw r28, 0xec(r26)
/* 813E23CC | 90 9A 00 F0 */	stw r4, 0xf0(r26)
/* 813E23D0 | 90 9A 00 F4 */	stw r4, 0xf4(r26)
/* 813E23D4 | 90 9A 00 F8 */	stw r4, 0xf8(r26)
/* 813E23D8 | 90 9A 00 FC */	stw r4, 0xfc(r26)
/* 813E23DC | 90 1A 01 00 */	stw r0, 0x100(r26)
/* 813E23E0 | 98 1A 01 04 */	stb r0, 0x104(r26)
/* 813E23E4 | 98 1A 01 05 */	stb r0, 0x105(r26)
/* 813E23E8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813E23EC | 83 FE 00 B0 */	lwz r31, 0xb0(r30)
/* 813E23F0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813E23F4 | 7D 89 03 A6 */	mtctr r12
/* 813E23F8 | 4E 80 04 21 */	bctrl
/* 813E23FC | 7C 64 1B 78 */	mr r4, r3
/* 813E2400 | 7F E3 FB 78 */	mr r3, r31
/* 813E2404 | 38 A0 00 01 */	li r5, 0x1
/* 813E2408 | 4B F6 20 79 */	bl changeType__Q23ipl7PointerFii
/* 813E240C | 80 7A 00 84 */	lwz r3, 0x84(r26)
/* 813E2410 | 38 80 00 00 */	li r4, 0x0
/* 813E2414 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E2418 | 48 12 FF 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E241C | 7C 7D 1B 78 */	mr r29, r3
/* 813E2420 | 4B F8 04 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E2424 | 3B E0 00 01 */	li r31, 0x1
/* 813E2428 | 38 80 00 00 */	li r4, 0x0
/* 813E242C | 93 FD 00 14 */	stw r31, 0x14(r29)
/* 813E2430 | 80 7A 00 88 */	lwz r3, 0x88(r26)
/* 813E2434 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E2438 | 48 12 FE E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E243C | 7C 7D 1B 78 */	mr r29, r3
/* 813E2440 | 4B F8 04 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E2444 | 93 FD 00 14 */	stw r31, 0x14(r29)
/* 813E2448 | 38 80 00 24 */	li r4, 0x24
/* 813E244C | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813E2450 | 48 02 8C E9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E2454 | 48 00 83 09 */	bl iplSDChannelButton_813EA75C
/* 813E2458 | 3B A0 00 00 */	li r29, 0x0
/* 813E245C | 48 00 00 2C */	b .L_813E2488
.L_813E2460:
/* 813E2460 | 80 1D 00 18 */	lwz r0, 0x18(r29)
/* 813E2464 | 38 80 00 00 */	li r4, 0x0
/* 813E2468 | 80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 813E246C | 7F A3 EB 78 */	mr r3, r29
/* 813E2470 | 7C 00 D8 00 */	cmpw r0, r27
/* 813E2474 | 40 82 00 10 */	bne .L_813E2484
/* 813E2478 | 7C 05 E0 00 */	cmpw r5, r28
/* 813E247C | 40 82 00 08 */	bne .L_813E2484
/* 813E2480 | 38 80 00 01 */	li r4, 0x1
.L_813E2484:
/* 813E2484 | 48 00 0F FD */	bl iplSDChannelObj_813E3480
.L_813E2488:
/* 813E2488 | 7F A4 EB 78 */	mr r4, r29
/* 813E248C | 38 7A 00 58 */	addi r3, r26, 0x58
/* 813E2490 | 48 12 FE 4D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813E2494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2498 | 7C 7D 1B 78 */	mr r29, r3
/* 813E249C | 40 82 FF C4 */	bne .L_813E2460
/* 813E24A0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E24A4 | 3C 80 81 65 */	lis r4, lbl_81654994@ha
/* 813E24A8 | C0 3A 00 DC */	lfs f1, 0xdc(r26)
/* 813E24AC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E24B0 | 38 84 49 94 */	addi r4, r4, lbl_81654994@l
/* 813E24B4 | 4B F8 91 ED */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 813E24B8 | 38 00 00 0F */	li r0, 0xf
/* 813E24BC | 90 1A 00 98 */	stw r0, 0x98(r26)
.L_813E24C0:
/* 813E24C0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E24C4 | 48 21 70 45 */	bl _restgpr_26
/* 813E24C8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E24CC | 7C 08 03 A6 */	mtlr r0
/* 813E24D0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E24D4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E22F8

# .text:0x79D0 | 0x813E24D8 | size: 0x204
.fn iplSDChannelSelect_813E24D8, global
/* 813E24D8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E24DC | 7C 08 02 A6 */	mflr r0
/* 813E24E0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E24E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E24E8 | 48 21 6F E1 */	bl _savegpr_29
/* 813E24EC | 80 83 00 F0 */	lwz r4, 0xf0(r3)
/* 813E24F0 | 7C 7F 1B 78 */	mr r31, r3
/* 813E24F4 | 80 A3 00 F4 */	lwz r5, 0xf4(r3)
/* 813E24F8 | 48 00 01 E5 */	bl iplSDChannelSelect_813E26DC
/* 813E24FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2500 | 41 82 00 FC */	beq .L_813E25FC
/* 813E2504 | 88 1F 01 05 */	lbz r0, 0x105(r31)
/* 813E2508 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E250C | 40 82 00 F0 */	bne .L_813E25FC
/* 813E2510 | 80 9F 00 F0 */	lwz r4, 0xf0(r31)
/* 813E2514 | 7F E3 FB 78 */	mr r3, r31
/* 813E2518 | 80 BF 00 F4 */	lwz r5, 0xf4(r31)
/* 813E251C | 4B FF D9 9D */	bl iplSDChannelSelect_813DFEB8
/* 813E2520 | 48 00 0E 01 */	bl iplSDChannelObj_813E3320
/* 813E2524 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813E2528 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E252C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813E2530 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813E2534 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813E2538 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813E253C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813E2540 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 813E2544 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E2548 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813E254C | 4B F6 21 39 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813E2550 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 813E2554 | 38 80 00 00 */	li r4, 0x0
/* 813E2558 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E255C | 48 12 FD BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E2560 | 7C 7D 1B 78 */	mr r29, r3
/* 813E2564 | 4B F8 03 0D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E2568 | 3B C0 00 01 */	li r30, 0x1
/* 813E256C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E2570 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813E2574 | 80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 813E2578 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E257C | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813E2580 | 4B F6 21 05 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813E2584 | 80 9F 07 4C */	lwz r4, 0x74c(r31)
/* 813E2588 | 38 64 00 04 */	addi r3, r4, 0x4
/* 813E258C | 38 84 02 98 */	addi r4, r4, 0x298
/* 813E2590 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E2594 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813E2598 | 7D 89 03 A6 */	mtctr r12
/* 813E259C | 4E 80 04 21 */	bctrl
/* 813E25A0 | 80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 813E25A4 | 38 80 00 00 */	li r4, 0x0
/* 813E25A8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E25AC | 48 12 FD 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E25B0 | 7C 7D 1B 78 */	mr r29, r3
/* 813E25B4 | 4B F8 02 BD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E25B8 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813E25BC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E25C0 | 3C 80 81 65 */	lis r4, lbl_816549A4@ha
/* 813E25C4 | C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 813E25C8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E25CC | 38 84 49 A4 */	addi r4, r4, lbl_816549A4@l
/* 813E25D0 | 4B F8 90 D1 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 813E25D4 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E25D8 | 38 80 00 01 */	li r4, 0x1
/* 813E25DC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E25E0 | 48 12 FD 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E25E4 | 7C 7D 1B 78 */	mr r29, r3
/* 813E25E8 | 4B F8 02 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E25EC | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813E25F0 | 38 00 00 13 */	li r0, 0x13
/* 813E25F4 | 90 1F 00 98 */	stw r0, 0x98(r31)
/* 813E25F8 | 48 00 00 24 */	b .L_813E261C
.L_813E25FC:
/* 813E25FC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E2600 | 3C 80 81 65 */	lis r4, lbl_816549B3@ha
/* 813E2604 | C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 813E2608 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E260C | 38 84 49 B3 */	addi r4, r4, lbl_816549B3@l
/* 813E2610 | 4B F8 90 91 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 813E2614 | 38 00 00 11 */	li r0, 0x11
/* 813E2618 | 90 1F 00 98 */	stw r0, 0x98(r31)
.L_813E261C:
/* 813E261C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813E2620 | 80 9F 00 E4 */	lwz r4, 0xe4(r31)
/* 813E2624 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813E2628 | 38 A0 00 00 */	li r5, 0x0
/* 813E262C | 80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 813E2630 | 4B F6 1E 51 */	bl changeType__Q23ipl7PointerFii
/* 813E2634 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813E2638 | 38 80 00 01 */	li r4, 0x1
/* 813E263C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E2640 | 48 12 FC D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E2644 | 7C 7D 1B 78 */	mr r29, r3
/* 813E2648 | 4B F8 02 29 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E264C | 38 00 00 01 */	li r0, 0x1
/* 813E2650 | 38 80 00 24 */	li r4, 0x24
/* 813E2654 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813E2658 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813E265C | 48 02 8A DD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E2660 | 48 00 7F B5 */	bl iplSDChannelButton_813EA614
/* 813E2664 | 38 00 00 00 */	li r0, 0x0
/* 813E2668 | 3B A0 00 00 */	li r29, 0x0
/* 813E266C | 98 1F 01 04 */	stb r0, 0x104(r31)
/* 813E2670 | 98 1F 01 05 */	stb r0, 0x105(r31)
/* 813E2674 | 48 00 00 10 */	b .L_813E2684
.L_813E2678:
/* 813E2678 | 7F A3 EB 78 */	mr r3, r29
/* 813E267C | 38 80 00 01 */	li r4, 0x1
/* 813E2680 | 48 00 0E 69 */	bl iplSDChannelObj_813E34E8
.L_813E2684:
/* 813E2684 | 7F A4 EB 78 */	mr r4, r29
/* 813E2688 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813E268C | 48 12 FC 51 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813E2690 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2694 | 7C 7D 1B 78 */	mr r29, r3
/* 813E2698 | 40 82 FF E0 */	bne .L_813E2678
/* 813E269C | 3B A0 00 00 */	li r29, 0x0
.L_813E26A0:
/* 813E26A0 | 7F E3 FB 78 */	mr r3, r31
/* 813E26A4 | 7F A4 EB 78 */	mr r4, r29
/* 813E26A8 | 4B FF E1 0D */	bl iplSDChannelSelect_813E07B4
/* 813E26AC | 7C 64 1B 78 */	mr r4, r3
/* 813E26B0 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813E26B4 | 4B F8 8B 65 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813E26B8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813E26BC | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813E26C0 | 41 80 FF E0 */	blt .L_813E26A0
/* 813E26C4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E26C8 | 48 21 6E 4D */	bl _restgpr_29
/* 813E26CC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E26D0 | 7C 08 03 A6 */	mtlr r0
/* 813E26D4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E26D8 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E24D8

# .text:0x7BD4 | 0x813E26DC | size: 0x74
.fn iplSDChannelSelect_813E26DC, global
/* 813E26DC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813E26E0 | 41 80 00 10 */	blt .L_813E26F0
/* 813E26E4 | 80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 813E26E8 | 7C 04 00 00 */	cmpw r4, r0
/* 813E26EC | 41 80 00 0C */	blt .L_813E26F8
.L_813E26F0:
/* 813E26F0 | 38 60 00 00 */	li r3, 0x0
/* 813E26F4 | 4E 80 00 20 */	blr
.L_813E26F8:
/* 813E26F8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813E26FC | 41 80 00 0C */	blt .L_813E2708
/* 813E2700 | 2C 05 00 0C */	cmpwi r5, 0xc
/* 813E2704 | 41 80 00 0C */	blt .L_813E2710
.L_813E2708:
/* 813E2708 | 38 60 00 00 */	li r3, 0x0
/* 813E270C | 4E 80 00 20 */	blr
.L_813E2710:
/* 813E2710 | 80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 813E2714 | 7C 04 00 00 */	cmpw r4, r0
/* 813E2718 | 40 82 00 18 */	bne .L_813E2730
/* 813E271C | 80 03 00 EC */	lwz r0, 0xec(r3)
/* 813E2720 | 7C 05 00 00 */	cmpw r5, r0
/* 813E2724 | 40 82 00 0C */	bne .L_813E2730
/* 813E2728 | 38 60 00 01 */	li r3, 0x1
/* 813E272C | 4E 80 00 20 */	blr
.L_813E2730:
/* 813E2730 | 1C 04 00 0C */	mulli r0, r4, 0xc
/* 813E2734 | 80 63 07 3C */	lwz r3, 0x73c(r3)
/* 813E2738 | 7C 05 02 14 */	add r0, r5, r0
/* 813E273C | 54 00 10 3A */	slwi r0, r0, 2
/* 813E2740 | 7C 03 00 2E */	lwzx r0, r3, r0
/* 813E2744 | 7C 00 00 34 */	cntlzw r0, r0
/* 813E2748 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813E274C | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E26DC

# .text:0x7C48 | 0x813E2750 | size: 0x164
.fn iplSDChannelSelect_813E2750, global
/* 813E2750 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813E2754 | 7C 08 02 A6 */	mflr r0
/* 813E2758 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813E275C | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813E2760 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813E2764 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813E2768 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E276C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E2770 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 813E2774 | 7C 7E 1B 78 */	mr r30, r3
/* 813E2778 | 80 83 00 E4 */	lwz r4, 0xe4(r3)
/* 813E277C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E2780 | 4B F5 51 09 */	bl getController__Q33ipl10controller7ManagerFi
/* 813E2784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2788 | 41 82 01 0C */	beq .L_813E2894
/* 813E278C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E2790 | 80 9E 00 E4 */	lwz r4, 0xe4(r30)
/* 813E2794 | 4B F5 50 F5 */	bl getController__Q33ipl10controller7ManagerFi
/* 813E2798 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E279C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813E27A0 | 7D 89 03 A6 */	mtctr r12
/* 813E27A4 | 4E 80 04 21 */	bctrl
/* 813E27A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E27AC | 41 82 00 E8 */	beq .L_813E2894
/* 813E27B0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813E27B4 | 80 9E 00 E4 */	lwz r4, 0xe4(r30)
/* 813E27B8 | 4B F5 50 D1 */	bl getController__Q33ipl10controller7ManagerFi
/* 813E27BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E27C0 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813E27C4 | 7D 89 03 A6 */	mtctr r12
/* 813E27C8 | 4E 80 04 21 */	bctrl
/* 813E27CC | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 813E27D0 | C0 62 86 C8 */	lfs f3, lbl_81694AC8@sda21(r0)
/* 813E27D4 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813E27D8 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813E27DC | FC 40 00 50 */	fneg f2, f0
/* 813E27E0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813E27E4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813E27E8 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 813E27EC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813E27F0 | 4B F9 20 95 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813E27F4 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E27F8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813E27FC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E2800 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813E2804 | 4B F6 1E 81 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813E2808 | 80 9E 00 88 */	lwz r4, 0x88(r30)
/* 813E280C | 38 64 00 04 */	addi r3, r4, 0x4
/* 813E2810 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813E2814 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E2818 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813E281C | 7D 89 03 A6 */	mtctr r12
/* 813E2820 | 4E 80 04 21 */	bctrl
/* 813E2824 | C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 813E2828 | C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 813E282C | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 813E2830 | EC 82 00 28 */	fsubs f4, f2, f0
/* 813E2834 | C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 813E2838 | C0 42 86 C8 */	lfs f2, lbl_81694AC8@sda21(r0)
/* 813E283C | EC 61 00 28 */	fsubs f3, f1, f0
/* 813E2840 | EC 04 01 32 */	fmuls f0, f4, f4
/* 813E2844 | D0 81 00 14 */	stfs f4, 0x14(r1)
/* 813E2848 | EC 23 00 F2 */	fmuls f1, f3, f3
/* 813E284C | D0 61 00 10 */	stfs f3, 0x10(r1)
/* 813E2850 | EF E1 00 2A */	fadds f31, f1, f0
/* 813E2854 | FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 813E2858 | 4C 40 13 82 */	cror eq, lt, eq
/* 813E285C | 40 82 00 08 */	bne .L_813E2864
/* 813E2860 | 48 00 00 10 */	b .L_813E2870
.L_813E2864:
/* 813E2864 | FC 20 F8 90 */	fmr f1, f31
/* 813E2868 | 48 13 BC D1 */	bl fn_8151E538
/* 813E286C | EC 5F 00 72 */	fmuls f2, f31, f1
.L_813E2870:
/* 813E2870 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E2874 | 3C 80 81 65 */	lis r4, lbl_816549C7@ha
/* 813E2878 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 813E287C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E2880 | 38 84 49 C7 */	addi r4, r4, lbl_816549C7@l
/* 813E2884 | 4B F8 90 1D */	bl holdSEwithPosDis__Q33ipl3snd6SystemFPCcff
/* 813E2888 | 38 7E 00 DC */	addi r3, r30, 0xdc
/* 813E288C | 38 81 00 18 */	addi r4, r1, 0x18
/* 813E2890 | 4B F8 85 49 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
.L_813E2894:
/* 813E2894 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813E2898 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813E289C | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813E28A0 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813E28A4 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 813E28A8 | 7C 08 03 A6 */	mtlr r0
/* 813E28AC | 38 21 00 50 */	addi r1, r1, 0x50
/* 813E28B0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E2750

# .text:0x7DAC | 0x813E28B4 | size: 0x2A0
.fn iplSDChannelSelect_813E28B4, global
/* 813E28B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E28B8 | 7C 08 02 A6 */	mflr r0
/* 813E28BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E28C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E28C4 | 48 21 6B F9 */	bl _savegpr_26
/* 813E28C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813E28CC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813E28D0 | 7C BA 2B 78 */	mr r26, r5
/* 813E28D4 | 7C DB 33 78 */	mr r27, r6
/* 813E28D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E28DC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813E28E0 | 7D 89 03 A6 */	mtctr r12
/* 813E28E4 | 4E 80 04 21 */	bctrl
/* 813E28E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E28EC | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813E28F0 | 7D 89 03 A6 */	mtctr r12
/* 813E28F4 | 4E 80 04 21 */	bctrl
/* 813E28F8 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813E28FC | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813E2900 | 38 60 00 00 */	li r3, 0x0
/* 813E2904 | 80 04 00 98 */	lwz r0, 0x98(r4)
/* 813E2908 | 2C 00 00 11 */	cmpwi r0, 0x11
/* 813E290C | 40 80 00 24 */	bge .L_813E2930
/* 813E2910 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813E2914 | 40 80 00 08 */	bge .L_813E291C
/* 813E2918 | 48 00 00 18 */	b .L_813E2930
.L_813E291C:
/* 813E291C | 7C 83 23 78 */	mr r3, r4
/* 813E2920 | 7F C4 F3 78 */	mr r4, r30
/* 813E2924 | 7F 45 D3 78 */	mr r5, r26
/* 813E2928 | 7F 66 DB 78 */	mr r6, r27
/* 813E292C | 4B FF F6 BD */	bl iplSDChannelSelect_813E1FE8
.L_813E2930:
/* 813E2930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2934 | 40 82 02 08 */	bne .L_813E2B3C
/* 813E2938 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E293C | 7F C4 F3 78 */	mr r4, r30
/* 813E2940 | 4B FF E8 0D */	bl iplSDChannelSelect_813E114C
/* 813E2944 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2948 | 7C 7D 1B 78 */	mr r29, r3
/* 813E294C | 41 80 01 F0 */	blt .L_813E2B3C
/* 813E2950 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E2954 | 7F A5 EB 78 */	mr r5, r29
/* 813E2958 | 80 83 00 9C */	lwz r4, 0x9c(r3)
/* 813E295C | 4B FF D5 5D */	bl iplSDChannelSelect_813DFEB8
/* 813E2960 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2964 | 7C 7C 1B 78 */	mr r28, r3
/* 813E2968 | 41 82 01 D4 */	beq .L_813E2B3C
/* 813E296C | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 813E2970 | 41 82 01 A4 */	beq .L_813E2B14
/* 813E2974 | 40 80 00 14 */	bge .L_813E2988
/* 813E2978 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813E297C | 41 82 00 18 */	beq .L_813E2994
/* 813E2980 | 40 80 01 3C */	bge .L_813E2ABC
/* 813E2984 | 48 00 01 B8 */	b .L_813E2B3C
.L_813E2988:
/* 813E2988 | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813E298C | 41 82 00 CC */	beq .L_813E2A58
/* 813E2990 | 48 00 01 AC */	b .L_813E2B3C
.L_813E2994:
/* 813E2994 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E2998 | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813E299C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E29A0 | 40 82 01 9C */	bne .L_813E2B3C
/* 813E29A4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813E29A8 | 41 82 01 94 */	beq .L_813E2B3C
/* 813E29AC | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813E29B0 | 4B F6 62 F1 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813E29B4 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813E29B8 | 7C 7E 1B 78 */	mr r30, r3
/* 813E29BC | 7F 63 DB 78 */	mr r3, r27
/* 813E29C0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813E29C4 | 7D 89 03 A6 */	mtctr r12
/* 813E29C8 | 4E 80 04 21 */	bctrl
/* 813E29CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E29D0 | 41 82 01 6C */	beq .L_813E2B3C
/* 813E29D4 | 7F 83 E3 78 */	mr r3, r28
/* 813E29D8 | 48 00 09 59 */	bl iplSDChannelObj_813E3330
/* 813E29DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E29E0 | 41 82 01 5C */	beq .L_813E2B3C
/* 813E29E4 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E29E8 | 88 03 07 5A */	lbz r0, 0x75a(r3)
/* 813E29EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E29F0 | 40 82 01 4C */	bne .L_813E2B3C
/* 813E29F4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813E29F8 | 40 82 00 18 */	bne .L_813E2A10
/* 813E29FC | 80 A3 00 9C */	lwz r5, 0x9c(r3)
/* 813E2A00 | 7F 64 DB 78 */	mr r4, r27
/* 813E2A04 | 7F A6 EB 78 */	mr r6, r29
/* 813E2A08 | 4B FF F8 F1 */	bl iplSDChannelSelect_813E22F8
/* 813E2A0C | 48 00 01 30 */	b .L_813E2B3C
.L_813E2A10:
/* 813E2A10 | 88 03 07 7D */	lbz r0, 0x77d(r3)
/* 813E2A14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E2A18 | 40 82 01 24 */	bne .L_813E2B3C
/* 813E2A1C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E2A20 | 38 80 00 C6 */	li r4, 0xc6
/* 813E2A24 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E2A28 | 38 A0 00 2E */	li r5, 0x2e
/* 813E2A2C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813E2A30 | 4B F6 3C C9 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813E2A34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2A38 | 41 82 01 04 */	beq .L_813E2B3C
/* 813E2A3C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E2A40 | 38 80 00 01 */	li r4, 0x1
/* 813E2A44 | 38 00 00 1D */	li r0, 0x1d
/* 813E2A48 | 98 83 07 7D */	stb r4, 0x77d(r3)
/* 813E2A4C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E2A50 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 813E2A54 | 48 00 00 E8 */	b .L_813E2B3C
.L_813E2A58:
/* 813E2A58 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E2A5C | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 813E2A60 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E2A64 | 40 82 00 D8 */	bne .L_813E2B3C
/* 813E2A68 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813E2A6C | 41 82 00 D0 */	beq .L_813E2B3C
/* 813E2A70 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813E2A74 | 7F 63 DB 78 */	mr r3, r27
/* 813E2A78 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813E2A7C | 7D 89 03 A6 */	mtctr r12
/* 813E2A80 | 4E 80 04 21 */	bctrl
/* 813E2A84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2A88 | 41 82 00 B4 */	beq .L_813E2B3C
/* 813E2A8C | 7F 83 E3 78 */	mr r3, r28
/* 813E2A90 | 48 00 08 A1 */	bl iplSDChannelObj_813E3330
/* 813E2A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2A98 | 41 82 00 A4 */	beq .L_813E2B3C
/* 813E2A9C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E2AA0 | 80 9C 00 18 */	lwz r4, 0x18(r28)
/* 813E2AA4 | 80 BC 00 1C */	lwz r5, 0x1c(r28)
/* 813E2AA8 | 4B FF D9 A9 */	bl iplSDChannelSelect_813E0450
/* 813E2AAC | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813E2AB0 | 38 80 00 00 */	li r4, 0x0
/* 813E2AB4 | 4B F7 F3 6D */	bl setEnable__Q23ipl11TVRCManagerFi
/* 813E2AB8 | 48 00 00 84 */	b .L_813E2B3C
.L_813E2ABC:
/* 813E2ABC | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813E2AC0 | 80 04 00 98 */	lwz r0, 0x98(r4)
/* 813E2AC4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E2AC8 | 40 82 00 74 */	bne .L_813E2B3C
/* 813E2ACC | 48 00 08 65 */	bl iplSDChannelObj_813E3330
/* 813E2AD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2AD4 | 41 82 00 68 */	beq .L_813E2B3C
/* 813E2AD8 | 7F 83 E3 78 */	mr r3, r28
/* 813E2ADC | 38 80 00 00 */	li r4, 0x0
/* 813E2AE0 | 48 00 08 75 */	bl iplSDChannelObj_813E3354
/* 813E2AE4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E2AE8 | 3C 80 81 65 */	lis r4, lbl_8165497E@ha
/* 813E2AEC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E2AF0 | 38 84 49 7E */	addi r4, r4, lbl_8165497E@l
/* 813E2AF4 | 4B F8 89 79 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E2AF8 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813E2AFC | 7F 63 DB 78 */	mr r3, r27
/* 813E2B00 | 38 80 00 01 */	li r4, 0x1
/* 813E2B04 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813E2B08 | 7D 89 03 A6 */	mtctr r12
/* 813E2B0C | 4E 80 04 21 */	bctrl
/* 813E2B10 | 48 00 00 2C */	b .L_813E2B3C
.L_813E2B14:
/* 813E2B14 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813E2B18 | 80 04 00 98 */	lwz r0, 0x98(r4)
/* 813E2B1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E2B20 | 40 82 00 1C */	bne .L_813E2B3C
/* 813E2B24 | 48 00 08 0D */	bl iplSDChannelObj_813E3330
/* 813E2B28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2B2C | 41 82 00 10 */	beq .L_813E2B3C
/* 813E2B30 | 7F 83 E3 78 */	mr r3, r28
/* 813E2B34 | 38 80 00 00 */	li r4, 0x0
/* 813E2B38 | 48 00 08 B5 */	bl iplSDChannelObj_813E33EC
.L_813E2B3C:
/* 813E2B3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E2B40 | 48 21 69 C9 */	bl _restgpr_26
/* 813E2B44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E2B48 | 7C 08 03 A6 */	mtlr r0
/* 813E2B4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E2B50 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E28B4

# .text:0x804C | 0x813E2B54 | size: 0x240
.fn iplSDChannelSelect_813E2B54, global
/* 813E2B54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E2B58 | 7C 08 02 A6 */	mflr r0
/* 813E2B5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E2B60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E2B64 | 48 21 69 5D */	bl _savegpr_27
/* 813E2B68 | 7C 7F 1B 78 */	mr r31, r3
/* 813E2B6C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813E2B70 | 7C BD 2B 78 */	mr r29, r5
/* 813E2B74 | 7C DB 33 78 */	mr r27, r6
/* 813E2B78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E2B7C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813E2B80 | 7D 89 03 A6 */	mtctr r12
/* 813E2B84 | 4E 80 04 21 */	bctrl
/* 813E2B88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E2B8C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813E2B90 | 7D 89 03 A6 */	mtctr r12
/* 813E2B94 | 4E 80 04 21 */	bctrl
/* 813E2B98 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813E2B9C | 3B 83 00 B4 */	addi r28, r3, 0xb4
/* 813E2BA0 | 80 04 00 98 */	lwz r0, 0x98(r4)
/* 813E2BA4 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813E2BA8 | 40 80 00 18 */	bge .L_813E2BC0
/* 813E2BAC | 2C 00 00 11 */	cmpwi r0, 0x11
/* 813E2BB0 | 40 80 00 30 */	bge .L_813E2BE0
/* 813E2BB4 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813E2BB8 | 40 80 00 10 */	bge .L_813E2BC8
/* 813E2BBC | 48 00 00 24 */	b .L_813E2BE0
.L_813E2BC0:
/* 813E2BC0 | 2C 00 00 18 */	cmpwi r0, 0x18
/* 813E2BC4 | 40 80 00 1C */	bge .L_813E2BE0
.L_813E2BC8:
/* 813E2BC8 | 7C 83 23 78 */	mr r3, r4
/* 813E2BCC | 7F 84 E3 78 */	mr r4, r28
/* 813E2BD0 | 7F A5 EB 78 */	mr r5, r29
/* 813E2BD4 | 7F 66 DB 78 */	mr r6, r27
/* 813E2BD8 | 4B FF F5 B5 */	bl iplSDChannelSelect_813E218C
/* 813E2BDC | 48 00 01 A0 */	b .L_813E2D7C
.L_813E2BE0:
/* 813E2BE0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813E2BE4 | 41 82 00 08 */	beq .L_813E2BEC
/* 813E2BE8 | 48 00 01 94 */	b .L_813E2D7C
.L_813E2BEC:
/* 813E2BEC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E2BF0 | 40 82 01 8C */	bne .L_813E2D7C
/* 813E2BF4 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813E2BF8 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813E2BFC | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813E2C00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E2C04 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E2C08 | 7D 89 03 A6 */	mtctr r12
/* 813E2C0C | 4E 80 04 21 */	bctrl
/* 813E2C10 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813E2C14 | 40 82 01 68 */	bne .L_813E2D7C
/* 813E2C18 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813E2C1C | 41 82 01 60 */	beq .L_813E2D7C
/* 813E2C20 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813E2C24 | 3C 80 00 10 */	lis r4, 0x10
/* 813E2C28 | 7F 63 DB 78 */	mr r3, r27
/* 813E2C2C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813E2C30 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813E2C34 | 7D 89 03 A6 */	mtctr r12
/* 813E2C38 | 4E 80 04 21 */	bctrl
/* 813E2C3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2C40 | 41 82 01 3C */	beq .L_813E2D7C
/* 813E2C44 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813E2C48 | 38 80 00 24 */	li r4, 0x24
/* 813E2C4C | 48 02 84 ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E2C50 | 3F A0 81 65 */	lis r29, lbl_81655644@ha
/* 813E2C54 | 7C 7B 1B 78 */	mr r27, r3
/* 813E2C58 | 3B DD 56 44 */	addi r30, r29, lbl_81655644@l
/* 813E2C5C | 7F 83 E3 78 */	mr r3, r28
/* 813E2C60 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813E2C64 | 48 21 F8 1D */	bl strcmp
/* 813E2C68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2C6C | 40 82 00 40 */	bne .L_813E2CAC
/* 813E2C70 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813E2C74 | 38 A0 00 00 */	li r5, 0x0
/* 813E2C78 | 38 00 00 1A */	li r0, 0x1a
/* 813E2C7C | 7F 63 DB 78 */	mr r3, r27
/* 813E2C80 | 90 A4 07 54 */	stw r5, 0x754(r4)
/* 813E2C84 | 38 80 00 04 */	li r4, 0x4
/* 813E2C88 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813E2C8C | 90 05 00 98 */	stw r0, 0x98(r5)
/* 813E2C90 | 48 00 75 C5 */	bl iplSDChannelButton_813EA254
/* 813E2C94 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E2C98 | 3C 80 81 65 */	lis r4, lbl_816549D7@ha
/* 813E2C9C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E2CA0 | 38 84 49 D7 */	addi r4, r4, lbl_816549D7@l
/* 813E2CA4 | 4B F8 87 C9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E2CA8 | 48 00 00 D4 */	b .L_813E2D7C
.L_813E2CAC:
/* 813E2CAC | 80 9D 56 44 */	lwz r4, lbl_81655644@l(r29)
/* 813E2CB0 | 7F 83 E3 78 */	mr r3, r28
/* 813E2CB4 | 48 21 F7 CD */	bl strcmp
/* 813E2CB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2CBC | 40 82 00 34 */	bne .L_813E2CF0
/* 813E2CC0 | 7F 63 DB 78 */	mr r3, r27
/* 813E2CC4 | 38 80 00 00 */	li r4, 0x0
/* 813E2CC8 | 48 00 74 C5 */	bl iplSDChannelButton_813EA18C
/* 813E2CCC | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813E2CD0 | 38 00 00 04 */	li r0, 0x4
/* 813E2CD4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E2CD8 | 3C 80 81 65 */	lis r4, lbl_816549D7@ha
/* 813E2CDC | 90 05 00 98 */	stw r0, 0x98(r5)
/* 813E2CE0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E2CE4 | 38 84 49 D7 */	addi r4, r4, lbl_816549D7@l
/* 813E2CE8 | 4B F8 87 85 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E2CEC | 48 00 00 90 */	b .L_813E2D7C
.L_813E2CF0:
/* 813E2CF0 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 813E2CF4 | 7F 83 E3 78 */	mr r3, r28
/* 813E2CF8 | 48 21 F7 89 */	bl strcmp
/* 813E2CFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2D00 | 40 82 00 30 */	bne .L_813E2D30
/* 813E2D04 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E2D08 | 80 03 00 9C */	lwz r0, 0x9c(r3)
/* 813E2D0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E2D10 | 40 81 00 20 */	ble .L_813E2D30
/* 813E2D14 | 7F 63 DB 78 */	mr r3, r27
/* 813E2D18 | 38 80 00 07 */	li r4, 0x7
/* 813E2D1C | 48 00 75 39 */	bl iplSDChannelButton_813EA254
/* 813E2D20 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E2D24 | 38 80 00 08 */	li r4, 0x8
/* 813E2D28 | 4B FF D6 71 */	bl iplSDChannelSelect_813E0398
/* 813E2D2C | 48 00 00 50 */	b .L_813E2D7C
.L_813E2D30:
/* 813E2D30 | 3C 80 81 65 */	lis r4, lbl_81655644@ha
/* 813E2D34 | 7F 83 E3 78 */	mr r3, r28
/* 813E2D38 | 38 84 56 44 */	addi r4, r4, lbl_81655644@l
/* 813E2D3C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813E2D40 | 48 21 F7 41 */	bl strcmp
/* 813E2D44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E2D48 | 40 82 00 34 */	bne .L_813E2D7C
/* 813E2D4C | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813E2D50 | 80 64 00 A0 */	lwz r3, 0xa0(r4)
/* 813E2D54 | 80 84 00 9C */	lwz r4, 0x9c(r4)
/* 813E2D58 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813E2D5C | 7C 04 00 00 */	cmpw r4, r0
/* 813E2D60 | 40 80 00 1C */	bge .L_813E2D7C
/* 813E2D64 | 7F 63 DB 78 */	mr r3, r27
/* 813E2D68 | 38 80 00 08 */	li r4, 0x8
/* 813E2D6C | 48 00 74 E9 */	bl iplSDChannelButton_813EA254
/* 813E2D70 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813E2D74 | 38 80 00 09 */	li r4, 0x9
/* 813E2D78 | 4B FF D6 21 */	bl iplSDChannelSelect_813E0398
.L_813E2D7C:
/* 813E2D7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E2D80 | 48 21 67 8D */	bl _restgpr_27
/* 813E2D84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E2D88 | 7C 08 03 A6 */	mtlr r0
/* 813E2D8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E2D90 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E2B54

# .text:0x828C | 0x813E2D94 | size: 0x44
.fn iplSDChannelSelect_813E2D94, global
/* 813E2D94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E2D98 | 7C 08 02 A6 */	mflr r0
/* 813E2D9C | 3C 80 81 09 */	lis r4, sSystem__Q23ipl3snd@ha
/* 813E2DA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E2DA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E2DA8 | 7C 7F 1B 78 */	mr r31, r3
/* 813E2DAC | 38 64 99 2C */	addi r3, r4, sSystem__Q23ipl3snd@l
/* 813E2DB0 | 4B F8 8E 65 */	bl resetAllSound__Q33ipl3snd6SystemFv
/* 813E2DB4 | 7F E3 FB 78 */	mr r3, r31
/* 813E2DB8 | 4B FF 88 95 */	bl iplSDChannelSelect_813DB64C
/* 813E2DBC | 7F E3 FB 78 */	mr r3, r31
/* 813E2DC0 | 4B FF 88 CD */	bl iplSDChannelSelect_813DB68C
/* 813E2DC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E2DC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E2DCC | 7C 08 03 A6 */	mtlr r0
/* 813E2DD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E2DD4 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E2D94

# .text:0x82D0 | 0x813E2DD8 | size: 0x4C
.fn iplSDChannelSelect_813E2DD8, global
/* 813E2DD8 | 80 03 05 44 */	lwz r0, 0x544(r3)
/* 813E2DDC | 38 A0 00 01 */	li r5, 0x1
/* 813E2DE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E2DE4 | 40 82 00 0C */	bne .L_813E2DF0
/* 813E2DE8 | 38 A0 00 00 */	li r5, 0x0
/* 813E2DEC | 48 00 00 30 */	b .L_813E2E1C
.L_813E2DF0:
/* 813E2DF0 | 80 83 05 48 */	lwz r4, 0x548(r3)
/* 813E2DF4 | 80 03 05 40 */	lwz r0, 0x540(r3)
/* 813E2DF8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813E2DFC | 7C 04 00 00 */	cmpw r4, r0
/* 813E2E00 | 90 83 05 48 */	stw r4, 0x548(r3)
/* 813E2E04 | 41 80 00 0C */	blt .L_813E2E10
/* 813E2E08 | 38 00 00 00 */	li r0, 0x0
/* 813E2E0C | 90 03 05 48 */	stw r0, 0x548(r3)
.L_813E2E10:
/* 813E2E10 | 80 83 05 44 */	lwz r4, 0x544(r3)
/* 813E2E14 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813E2E18 | 90 03 05 44 */	stw r0, 0x544(r3)
.L_813E2E1C:
/* 813E2E1C | 7C A3 2B 78 */	mr r3, r5
/* 813E2E20 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E2DD8

# .text:0x831C | 0x813E2E24 | size: 0x80
.fn iplSDChannelSelect_813E2E24, global
/* 813E2E24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E2E28 | 7C 08 02 A6 */	mflr r0
/* 813E2E2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E2E30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E2E34 | 7C 7F 1B 78 */	mr r31, r3
/* 813E2E38 | 80 A3 00 80 */	lwz r5, 0x80(r3)
/* 813E2E3C | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813E2E40 | 7C 05 00 00 */	cmpw r5, r0
/* 813E2E44 | 40 82 00 0C */	bne .L_813E2E50
/* 813E2E48 | 38 60 00 00 */	li r3, 0x0
/* 813E2E4C | 48 00 00 44 */	b .L_813E2E90
.L_813E2E50:
/* 813E2E50 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813E2E54 | 54 00 28 34 */	slwi r0, r0, 5
/* 813E2E58 | 7C 63 02 14 */	add r3, r3, r0
/* 813E2E5C | 48 00 00 95 */	bl iplSDChannelSelect_813E2EF0
/* 813E2E60 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 813E2E64 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 813E2E68 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813E2E6C | 7C 03 00 00 */	cmpw r3, r0
/* 813E2E70 | 90 7F 00 8C */	stw r3, 0x8c(r31)
/* 813E2E74 | 41 80 00 0C */	blt .L_813E2E80
/* 813E2E78 | 38 00 00 00 */	li r0, 0x0
/* 813E2E7C | 90 1F 00 8C */	stw r0, 0x8c(r31)
.L_813E2E80:
/* 813E2E80 | 80 9F 00 84 */	lwz r4, 0x84(r31)
/* 813E2E84 | 38 60 00 01 */	li r3, 0x1
/* 813E2E88 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813E2E8C | 90 1F 00 84 */	stw r0, 0x84(r31)
.L_813E2E90:
/* 813E2E90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E2E94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E2E98 | 7C 08 03 A6 */	mtlr r0
/* 813E2E9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E2EA0 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E2E24

# .text:0x839C | 0x813E2EA4 | size: 0x4C
.fn iplSDChannelSelect_813E2EA4, global
/* 813E2EA4 | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813E2EA8 | 38 A0 00 01 */	li r5, 0x1
/* 813E2EAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E2EB0 | 40 82 00 0C */	bne .L_813E2EBC
/* 813E2EB4 | 38 A0 00 00 */	li r5, 0x0
/* 813E2EB8 | 48 00 00 30 */	b .L_813E2EE8
.L_813E2EBC:
/* 813E2EBC | 80 83 00 88 */	lwz r4, 0x88(r3)
/* 813E2EC0 | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 813E2EC4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813E2EC8 | 7C 04 00 00 */	cmpw r4, r0
/* 813E2ECC | 90 83 00 88 */	stw r4, 0x88(r3)
/* 813E2ED0 | 41 80 00 0C */	blt .L_813E2EDC
/* 813E2ED4 | 38 00 00 00 */	li r0, 0x0
/* 813E2ED8 | 90 03 00 88 */	stw r0, 0x88(r3)
.L_813E2EDC:
/* 813E2EDC | 80 83 00 84 */	lwz r4, 0x84(r3)
/* 813E2EE0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813E2EE4 | 90 03 00 84 */	stw r0, 0x84(r3)
.L_813E2EE8:
/* 813E2EE8 | 7C A3 2B 78 */	mr r3, r5
/* 813E2EEC | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E2EA4

# .text:0x83E8 | 0x813E2EF0 | size: 0x34
.fn iplSDChannelSelect_813E2EF0, global
/* 813E2EF0 | 81 24 00 00 */	lwz r9, 0x0(r4)
/* 813E2EF4 | 80 E4 00 08 */	lwz r7, 0x8(r4)
/* 813E2EF8 | 81 04 00 0C */	lwz r8, 0xc(r4)
/* 813E2EFC | 80 C4 00 10 */	lwz r6, 0x10(r4)
/* 813E2F00 | 80 A4 00 14 */	lwz r5, 0x14(r4)
/* 813E2F04 | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 813E2F08 | 91 23 00 00 */	stw r9, 0x0(r3)
/* 813E2F0C | 91 03 00 0C */	stw r8, 0xc(r3)
/* 813E2F10 | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 813E2F14 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 813E2F18 | 90 A3 00 14 */	stw r5, 0x14(r3)
/* 813E2F1C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 813E2F20 | 4E 80 00 20 */	blr
.endfn iplSDChannelSelect_813E2EF0

# .text:0x841C | 0x813E2F24 | size: 0x8
.fn "@20@__dt__Q33ipl5scene15SDChannelSelectFv", global
/* 813E2F24 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813E2F28 | 4B FF 7F 54 */	b __dt__Q33ipl5scene15SDChannelSelectFv
.endfn "@20@__dt__Q33ipl5scene15SDChannelSelectFv"

# 0x816105C8..0x81610608 | size: 0x40
.rodata
.balign 8

# .rodata:0x0 | 0x816105C8 | size: 0x10
.obj lbl_816105C8, global
	.4byte 0x42800000
	.4byte 0x42400000
	.4byte 0x42AA0000
	.4byte 0x42400000
.endobj lbl_816105C8

# .rodata:0x10 | 0x816105D8 | size: 0x30
.obj lbl_816105D8, global
	.4byte 0x0000000B
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000009
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00000000
.endobj lbl_816105D8

# 0x81654088..0x81654B38 | size: 0xAB0
.data
.balign 8

# .data:0x0 | 0x81654088 | size: 0x9
.obj lbl_81654088, global
	.string "N_Ch_a04"
.endobj lbl_81654088

# .data:0x9 | 0x81654091 | size: 0x9
.obj lbl_81654091, global
	.string "N_Ch_a08"
.endobj lbl_81654091

# .data:0x12 | 0x8165409A | size: 0x9
.obj lbl_8165409A, global
	.string "N_Ch_a12"
.endobj lbl_8165409A

# .data:0x1B | 0x816540A3 | size: 0x9
.obj lbl_816540A3, global
	.string "N_Ch_b01"
.endobj lbl_816540A3

# .data:0x24 | 0x816540AC | size: 0x9
.obj lbl_816540AC, global
	.string "N_Ch_b02"
.endobj lbl_816540AC

# .data:0x2D | 0x816540B5 | size: 0x9
.obj lbl_816540B5, global
	.string "N_Ch_b03"
.endobj lbl_816540B5

# .data:0x36 | 0x816540BE | size: 0x9
.obj lbl_816540BE, global
	.string "N_Ch_b04"
.endobj lbl_816540BE

# .data:0x3F | 0x816540C7 | size: 0x9
.obj lbl_816540C7, global
	.string "N_Ch_b05"
.endobj lbl_816540C7

# .data:0x48 | 0x816540D0 | size: 0x9
.obj lbl_816540D0, global
	.string "N_Ch_b06"
.endobj lbl_816540D0

# .data:0x51 | 0x816540D9 | size: 0x9
.obj lbl_816540D9, global
	.string "N_Ch_b07"
.endobj lbl_816540D9

# .data:0x5A | 0x816540E2 | size: 0x9
.obj lbl_816540E2, global
	.string "N_Ch_b08"
.endobj lbl_816540E2

# .data:0x63 | 0x816540EB | size: 0x9
.obj lbl_816540EB, global
	.string "N_Ch_b09"
.endobj lbl_816540EB

# .data:0x6C | 0x816540F4 | size: 0x9
.obj lbl_816540F4, global
	.string "N_Ch_b10"
.endobj lbl_816540F4

# .data:0x75 | 0x816540FD | size: 0x9
.obj lbl_816540FD, global
	.string "N_Ch_b11"
.endobj lbl_816540FD

# .data:0x7E | 0x81654106 | size: 0x9
.obj lbl_81654106, global
	.string "N_Ch_b12"
.endobj lbl_81654106

# .data:0x87 | 0x8165410F | size: 0x9
.obj lbl_8165410F, global
	.string "N_Ch_c01"
.endobj lbl_8165410F

# .data:0x90 | 0x81654118 | size: 0x9
.obj lbl_81654118, global
	.string "N_Ch_c02"
.endobj lbl_81654118

# .data:0x99 | 0x81654121 | size: 0x9
.obj lbl_81654121, global
	.string "N_Ch_c03"
.endobj lbl_81654121

# .data:0xA2 | 0x8165412A | size: 0x9
.obj lbl_8165412A, global
	.string "N_Ch_c04"
.endobj lbl_8165412A

# .data:0xAB | 0x81654133 | size: 0x9
.obj lbl_81654133, global
	.string "N_Ch_c05"
.endobj lbl_81654133

# .data:0xB4 | 0x8165413C | size: 0x9
.obj lbl_8165413C, global
	.string "N_Ch_c06"
.endobj lbl_8165413C

# .data:0xBD | 0x81654145 | size: 0x9
.obj lbl_81654145, global
	.string "N_Ch_c07"
.endobj lbl_81654145

# .data:0xC6 | 0x8165414E | size: 0x9
.obj lbl_8165414E, global
	.string "N_Ch_c08"
.endobj lbl_8165414E

# .data:0xCF | 0x81654157 | size: 0x9
.obj lbl_81654157, global
	.string "N_Ch_c09"
.endobj lbl_81654157

# .data:0xD8 | 0x81654160 | size: 0x9
.obj lbl_81654160, global
	.string "N_Ch_c10"
.endobj lbl_81654160

# .data:0xE1 | 0x81654169 | size: 0x9
.obj lbl_81654169, global
	.string "N_Ch_c11"
.endobj lbl_81654169

# .data:0xEA | 0x81654172 | size: 0x9
.obj lbl_81654172, global
	.string "N_Ch_c12"
.endobj lbl_81654172

# .data:0xF3 | 0x8165417B | size: 0x9
.obj lbl_8165417B, global
	.string "N_Ch_d01"
.endobj lbl_8165417B

# .data:0xFC | 0x81654184 | size: 0x9
.obj lbl_81654184, global
	.string "N_Ch_d02"
.endobj lbl_81654184

# .data:0x105 | 0x8165418D | size: 0x9
.obj lbl_8165418D, global
	.string "N_Ch_d03"
.endobj lbl_8165418D

# .data:0x10E | 0x81654196 | size: 0x9
.obj lbl_81654196, global
	.string "N_Ch_d04"
.endobj lbl_81654196

# .data:0x117 | 0x8165419F | size: 0x9
.obj lbl_8165419F, global
	.string "N_Ch_d05"
.endobj lbl_8165419F

# .data:0x120 | 0x816541A8 | size: 0x9
.obj lbl_816541A8, global
	.string "N_Ch_d06"
.endobj lbl_816541A8

# .data:0x129 | 0x816541B1 | size: 0x9
.obj lbl_816541B1, global
	.string "N_Ch_d07"
.endobj lbl_816541B1

# .data:0x132 | 0x816541BA | size: 0x9
.obj lbl_816541BA, global
	.string "N_Ch_d08"
.endobj lbl_816541BA

# .data:0x13B | 0x816541C3 | size: 0x9
.obj lbl_816541C3, global
	.string "N_Ch_d09"
.endobj lbl_816541C3

# .data:0x144 | 0x816541CC | size: 0x9
.obj lbl_816541CC, global
	.string "N_Ch_d10"
.endobj lbl_816541CC

# .data:0x14D | 0x816541D5 | size: 0x9
.obj lbl_816541D5, global
	.string "N_Ch_d11"
.endobj lbl_816541D5

# .data:0x156 | 0x816541DE | size: 0x9
.obj lbl_816541DE, global
	.string "N_Ch_d12"
.endobj lbl_816541DE

# .data:0x15F | 0x816541E7 | size: 0x9
.obj lbl_816541E7, global
	.string "N_Ch_e01"
.endobj lbl_816541E7

# .data:0x168 | 0x816541F0 | size: 0x9
.obj lbl_816541F0, global
	.string "N_Ch_e05"
.endobj lbl_816541F0

# .data:0x171 | 0x816541F9 | size: 0xB
.obj lbl_816541F9, global
	.4byte 0x4E5F4368
	.4byte 0x5F653039
	.byte 0x00, 0x00, 0x00
.endobj lbl_816541F9

# .data:0x17C | 0x81654204 | size: 0xF0
.obj lbl_81654204, global
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_81654088
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_81654091
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_8165409A
	.4byte lbl_816540A3
	.4byte lbl_816540AC
	.4byte lbl_816540B5
	.4byte lbl_816540BE
	.4byte lbl_816540C7
	.4byte lbl_816540D0
	.4byte lbl_816540D9
	.4byte lbl_816540E2
	.4byte lbl_816540EB
	.4byte lbl_816540F4
	.4byte lbl_816540FD
	.4byte lbl_81654106
	.4byte lbl_8165410F
	.4byte lbl_81654118
	.4byte lbl_81654121
	.4byte lbl_8165412A
	.4byte lbl_81654133
	.4byte lbl_8165413C
	.4byte lbl_81654145
	.4byte lbl_8165414E
	.4byte lbl_81654157
	.4byte lbl_81654160
	.4byte lbl_81654169
	.4byte lbl_81654172
	.4byte lbl_8165417B
	.4byte lbl_81654184
	.4byte lbl_8165418D
	.4byte lbl_81654196
	.4byte lbl_8165419F
	.4byte lbl_816541A8
	.4byte lbl_816541B1
	.4byte lbl_816541BA
	.4byte lbl_816541C3
	.4byte lbl_816541CC
	.4byte lbl_816541D5
	.4byte lbl_816541DE
	.4byte lbl_816541E7
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_816541F0
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_816541F9
	.4byte lbl_81696D80
	.4byte lbl_81696D80
	.4byte lbl_81696D80
.endobj lbl_81654204

# .data:0x26C | 0x816542F4 | size: 0xA
.obj lbl_816542F4, global
	.string "BaseMask0"
.endobj lbl_816542F4

# .data:0x276 | 0x816542FE | size: 0xA
.obj lbl_816542FE, global
	.string "BaseMask1"
.endobj lbl_816542FE

# .data:0x280 | 0x81654308 | size: 0xA
.obj lbl_81654308, global
	.string "BaseMask2"
.endobj lbl_81654308

# .data:0x28A | 0x81654312 | size: 0xA
.obj lbl_81654312, global
	.string "BaseMask3"
.endobj lbl_81654312

# .data:0x294 | 0x8165431C | size: 0x20
.obj lbl_8165431C, global
	.4byte 0x42617365
	.4byte 0x4D61736B
	.4byte 0x34000000
	.4byte lbl_816542F4
	.4byte lbl_816542FE
	.4byte lbl_81654308
	.4byte lbl_81654312
	.4byte lbl_8165431C
.endobj lbl_8165431C

# .data:0x2B4 | 0x8165433C | size: 0xB
.obj lbl_8165433C, global
	.string "Picture_00"
.endobj lbl_8165433C

# .data:0x2BF | 0x81654347 | size: 0xB
.obj lbl_81654347, global
	.string "Picture_01"
.endobj lbl_81654347

# .data:0x2CA | 0x81654352 | size: 0xB
.obj lbl_81654352, global
	.string "Picture_02"
.endobj lbl_81654352

# .data:0x2D5 | 0x8165435D | size: 0xB
.obj lbl_8165435D, global
	.string "Picture_03"
.endobj lbl_8165435D

# .data:0x2E0 | 0x81654368 | size: 0x20
.obj lbl_81654368, global
	.4byte 0x50696374
	.4byte 0x7572655F
	.4byte 0x30340000
	.4byte lbl_8165433C
	.4byte lbl_81654347
	.4byte lbl_81654352
	.4byte lbl_8165435D
	.4byte lbl_81654368
.endobj lbl_81654368

# .data:0x300 | 0x81654388 | size: 0x14
.obj lbl_81654388, global
	.4byte lbl_81696D81
	.4byte lbl_81696D87
	.4byte lbl_81696D8D
	.4byte lbl_81696D93
	.4byte lbl_81696D99
.endobj lbl_81654388

# .data:0x314 | 0x8165439C | size: 0x70
.obj lbl_8165439C, global
	.4byte 0x0000009D
	.4byte 0x000000A3
	.4byte 0x000000A5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000009E
	.4byte 0x000000A3
	.4byte 0x000000A5
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000009F
	.4byte 0x000000A3
	.4byte 0x000000A5
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x42940000
	.4byte 0x01000000
	.4byte 0x000000CA
	.4byte 0x000000A4
	.4byte 0x000000A5
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x42D80000
	.4byte 0x00000000
.endobj lbl_8165439C

# .data:0x384 | 0x8165440C | size: 0x54
.obj lbl_8165440C, global
	.4byte 0x000000C9
	.4byte 0x000000A3
	.4byte 0x000000A5
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000009E
	.4byte 0x000000A3
	.4byte 0x000000A5
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000009F
	.4byte 0x000000A4
	.4byte 0x000000A5
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x42940000
	.4byte 0x01000000
.endobj lbl_8165440C

# .data:0x3D8 | 0x81654460 | size: 0x9
.obj lbl_81654460, global
	.string "N_Clock0"
.endobj lbl_81654460

# .data:0x3E1 | 0x81654469 | size: 0x9
.obj lbl_81654469, global
	.string "N_Clock1"
.endobj lbl_81654469

# .data:0x3EA | 0x81654472 | size: 0x16
.obj lbl_81654472, global
	.4byte 0x4E5F436C
	.4byte 0x6F636B32
	.2byte 0x0000
	.4byte lbl_81654460
	.4byte lbl_81654469
	.4byte lbl_81654472
.endobj lbl_81654472

# .data:0x400 | 0x81654488 | size: 0xE
.obj lbl_81654488, global
	.string "sdChanSel.ash"
.endobj lbl_81654488

# .data:0x40E | 0x81654496 | size: 0x11
.obj lbl_81654496, global
	.string "corrupt_icon.ash"
.endobj lbl_81654496

# .data:0x41F | 0x816544A7 | size: 0x19
.obj lbl_816544A7, global
	.string " ... wait for bs2 abord\n"
.endobj lbl_816544A7

# .data:0x438 | 0x816544C0 | size: 0x1C
.obj lbl_816544C0, global
	.4byte 0x2A2A2A20
	.4byte 0x42533220
	.4byte 0x61626F72
	.4byte 0x7420636F
	.4byte 0x7374733A
	.4byte 0x2025646D
	.4byte 0x730A0000
.endobj lbl_816544C0

# .data:0x454 | 0x816544DC | size: 0x38
.obj jumptable_816544DC, local
	.rel iplSDChannelSelect_813DB6CC, .L_813DBAD4
	.rel iplSDChannelSelect_813DB6CC, .L_813DB8E8
	.rel iplSDChannelSelect_813DB6CC, .L_813DB900
	.rel iplSDChannelSelect_813DB6CC, .L_813DBAD4
	.rel iplSDChannelSelect_813DB6CC, .L_813DBAD4
	.rel iplSDChannelSelect_813DB6CC, .L_813DB954
	.rel iplSDChannelSelect_813DB6CC, .L_813DB994
	.rel iplSDChannelSelect_813DB6CC, .L_813DB9B0
	.rel iplSDChannelSelect_813DB6CC, .L_813DB924
	.rel iplSDChannelSelect_813DB6CC, .L_813DB93C
	.rel iplSDChannelSelect_813DB6CC, .L_813DB970
	.rel iplSDChannelSelect_813DB6CC, .L_813DBA84
	.rel iplSDChannelSelect_813DB6CC, .L_813DBAA0
	.rel iplSDChannelSelect_813DB6CC, .L_813DBAC0
.endobj jumptable_816544DC

# .data:0x48C | 0x81654514 | size: 0x40
.obj jumptable_81654514, local
	.rel iplSDChannelSelect_813DC938, .L_813DC9D8
	.rel iplSDChannelSelect_813DC938, .L_813DC9CC
	.rel iplSDChannelSelect_813DC938, .L_813DC9E4
	.rel iplSDChannelSelect_813DC938, .L_813DCA08
	.rel iplSDChannelSelect_813DC938, .L_813DC9F0
	.rel iplSDChannelSelect_813DC938, .L_813DC9FC
	.rel iplSDChannelSelect_813DC938, .L_813DCA68
	.rel iplSDChannelSelect_813DC938, .L_813DCA14
	.rel iplSDChannelSelect_813DC938, .L_813DCA20
	.rel iplSDChannelSelect_813DC938, .L_813DCA2C
	.rel iplSDChannelSelect_813DC938, .L_813DCA38
	.rel iplSDChannelSelect_813DC938, .L_813DCA44
	.rel iplSDChannelSelect_813DC938, .L_813DCA50
	.rel iplSDChannelSelect_813DC938, .L_813DCA5C
	.rel iplSDChannelSelect_813DC938, .L_813DCA7C
	.rel iplSDChannelSelect_813DC938, .L_813DCA74
.endobj jumptable_81654514

# .data:0x4CC | 0x81654554 | size: 0xB
.obj lbl_81654554, global
	.string "T_TimerMes"
.endobj lbl_81654554

# .data:0x4D7 | 0x8165455F | size: 0x11
.obj lbl_8165455F, global
	.4byte 0x545F5469
	.4byte 0x6D65724D
	.4byte 0x65735F30
	.4byte 0x31000000
	.byte 0x00
.endobj lbl_8165455F

# .data:0x4E8 | 0x81654570 | size: 0x3C
.obj jumptable_81654570, local
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD68
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCDDC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCDF4
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCE68
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCEAC
	.rel iplSDChannelSelect_813DCAC4, .L_813DCE98
.endobj jumptable_81654570

# .data:0x524 | 0x816545AC | size: 0x40
.obj jumptable_816545AC, local
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD10
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD10
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD10
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD2C
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD10
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD10
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD38
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD10
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD38
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD38
.endobj jumptable_816545AC

# .data:0x564 | 0x816545EC | size: 0x40
.obj jumptable_816545EC, local
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC84
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC84
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCCE0
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC84
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC98
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCCB8
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC84
	.rel iplSDChannelSelect_813DCAC4, .L_813DCCB8
	.rel iplSDChannelSelect_813DCAC4, .L_813DCCB8
.endobj jumptable_816545EC

# .data:0x5A4 | 0x8165462C | size: 0x40
.obj jumptable_8165462C, local
	.rel iplSDChannelSelect_813DCAC4, .L_813DCBF8
	.rel iplSDChannelSelect_813DCAC4, .L_813DCBF8
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC0C
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC2C
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCBF8
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC54
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCD40
	.rel iplSDChannelSelect_813DCAC4, .L_813DCBF8
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC54
	.rel iplSDChannelSelect_813DCAC4, .L_813DCC54
.endobj jumptable_8165462C

# .data:0x5E4 | 0x8165466C | size: 0x28
.obj jumptable_8165466C, local
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB2C
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB70
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB70
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB44
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB70
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB70
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB50
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB70
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB70
	.rel iplSDChannelSelect_813DCAC4, .L_813DCB68
.endobj jumptable_8165466C

# .data:0x60C | 0x81654694 | size: 0x78
.obj jumptable_81654694, local
	.rel iplSDChannelSelect_813DE070, .L_813DE17C
	.rel iplSDChannelSelect_813DE070, .L_813DE0BC
	.rel iplSDChannelSelect_813DE070, .L_813DE17C
	.rel iplSDChannelSelect_813DE070, .L_813DE17C
	.rel iplSDChannelSelect_813DE070, .L_813DE17C
	.rel iplSDChannelSelect_813DE070, .L_813DE0D4
	.rel iplSDChannelSelect_813DE070, .L_813DE17C
	.rel iplSDChannelSelect_813DE070, .L_813DE0F4
	.rel iplSDChannelSelect_813DE070, .L_813DE0C4
	.rel iplSDChannelSelect_813DE070, .L_813DE0C4
	.rel iplSDChannelSelect_813DE070, .L_813DE0CC
	.rel iplSDChannelSelect_813DE070, .L_813DE0CC
	.rel iplSDChannelSelect_813DE070, .L_813DE0FC
	.rel iplSDChannelSelect_813DE070, .L_813DE17C
	.rel iplSDChannelSelect_813DE070, .L_813DE108
	.rel iplSDChannelSelect_813DE070, .L_813DE110
	.rel iplSDChannelSelect_813DE070, .L_813DE118
	.rel iplSDChannelSelect_813DE070, .L_813DE120
	.rel iplSDChannelSelect_813DE070, .L_813DE128
	.rel iplSDChannelSelect_813DE070, .L_813DE130
	.rel iplSDChannelSelect_813DE070, .L_813DE138
	.rel iplSDChannelSelect_813DE070, .L_813DE140
	.rel iplSDChannelSelect_813DE070, .L_813DE148
	.rel iplSDChannelSelect_813DE070, .L_813DE148
	.rel iplSDChannelSelect_813DE070, .L_813DE150
	.rel iplSDChannelSelect_813DE070, .L_813DE158
	.rel iplSDChannelSelect_813DE070, .L_813DE160
	.rel iplSDChannelSelect_813DE070, .L_813DE168
	.rel iplSDChannelSelect_813DE070, .L_813DE170
	.rel iplSDChannelSelect_813DE070, .L_813DE178
.endobj jumptable_81654694

# .data:0x684 | 0x8165470C | size: 0x2F
.obj gap_08_8165470C_data, global
.hidden gap_08_8165470C_data
	.4byte 0x54657874
	.4byte 0x426F785F
	.4byte 0x3030006D
	.4byte 0x6E5F5364
	.4byte 0x63617264
	.4byte 0x4D656E75
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x00436861
	.4byte 0x6E676554
	.4byte 0x65783136
	.byte 0x78, 0x39, 0x00
.endobj gap_08_8165470C_data

# .data:0x6B3 | 0x8165473B | size: 0xD4
.obj lbl_8165473B, global
	.4byte 0x50696374
	.4byte 0x7572655F
	.4byte 0x3136006D
	.4byte 0x6E5F5364
	.4byte 0x63617264
	.4byte 0x4D656E75
	.4byte 0x5F612E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x53646361
	.4byte 0x72644D65
	.4byte 0x6E755F50
	.4byte 0x6167652E
	.4byte 0x62726C79
	.4byte 0x74006D6E
	.4byte 0x5F4E6F63
	.4byte 0x6172642E
	.4byte 0x62726C79
	.4byte 0x74006D6E
	.4byte 0x5F4E6F63
	.4byte 0x6172645F
	.4byte 0x494E2E62
	.4byte 0x726C616E
	.4byte 0x0047726F
	.4byte 0x75705F30
	.4byte 0x30006D6E
	.4byte 0x5F4E6F63
	.4byte 0x6172645F
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F4E6F63
	.4byte 0x6172645F
	.4byte 0x494E5F30
	.4byte 0x322E6272
	.4byte 0x6C616E00
	.4byte 0x47726F75
	.4byte 0x705F3031
	.4byte 0x006D6E5F
	.4byte 0x4E6F6361
	.4byte 0x72645F4F
	.4byte 0x75745F30
	.4byte 0x322E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F4E
	.4byte 0x6F636172
	.4byte 0x645F5761
	.4byte 0x69742E62
	.4byte 0x726C616E
	.4byte 0x0068656C
	.4byte 0x705F4274
	.4byte 0x6E2E6272
	.4byte 0x6C797400
.endobj lbl_8165473B

# .data:0x787 | 0x8165480F | size: 0xE
.obj lbl_8165480F, global
	.string "WIPL_BGM_MENU"
.endobj lbl_8165480F

# .data:0x795 | 0x8165481D | size: 0xB
.obj lbl_8165481D, global
	.string "WSD_SELECT"
.endobj lbl_8165481D

# .data:0x7A0 | 0x81654828 | size: 0x10
.obj lbl_81654828, global
	.string "WIPL_SE_BT_PUSH"
.endobj lbl_81654828

# .data:0x7B0 | 0x81654838 | size: 0x146
.obj lbl_81654838, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43485F53
	.4byte 0x454C4543
	.4byte 0x54006D6E
	.4byte 0x5F536463
	.4byte 0x6172644D
	.4byte 0x656E755F
	.4byte 0x642E6272
	.4byte 0x6C797400
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x644D656E
	.4byte 0x755F642E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F54564D
	.4byte 0x61736B5F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x6D795F54
	.4byte 0x564D6173
	.4byte 0x6B5F615F
	.4byte 0x41706561
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x50696374
	.4byte 0x7572655F
	.4byte 0x3030006D
	.4byte 0x795F5456
	.4byte 0x4D61736B
	.4byte 0x5F615F4C
	.4byte 0x6F73742E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F545653
	.4byte 0x68616465
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x006D795F
	.4byte 0x54565368
	.4byte 0x6164655F
	.4byte 0x615F4170
	.4byte 0x6561722E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F545653
	.4byte 0x68616465
	.4byte 0x5F615F4C
	.4byte 0x6F73742E
	.4byte 0x62726C61
	.4byte 0x6E003478
	.4byte 0x335F6475
	.4byte 0x6D6D7900
	.4byte 0x6D795F54
	.4byte 0x56417065
	.4byte 0x61725F61
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x795F5456
	.4byte 0x41706561
	.4byte 0x725F615F
	.4byte 0x41706561
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F54
	.4byte 0x56417065
	.4byte 0x61725F61
	.4byte 0x5F4C6F73
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x77616974
	.4byte 0x5F69636F
	.4byte 0x6E2E6272
	.4byte 0x6C797400
	.4byte 0x77616974
	.4byte 0x5F69636F
	.4byte 0x6E5F7761
	.4byte 0x69745F6C
	.4byte 0x6F6F702E
	.4byte 0x62726C61
	.2byte 0x6E00
.endobj lbl_81654838

# .data:0x8F6 | 0x8165497E | size: 0x16
.obj lbl_8165497E, global
	.string "WIPL_SE_CH_TARGETTING"
.endobj lbl_8165497E

# .data:0x90C | 0x81654994 | size: 0x10
.obj lbl_81654994, global
	.string "WIPL_SE_CH_HOLD"
.endobj lbl_81654994

# .data:0x91C | 0x816549A4 | size: 0xF
.obj lbl_816549A4, global
	.string "WIPL_SE_CH_SET"
.endobj lbl_816549A4

# .data:0x92B | 0x816549B3 | size: 0x14
.obj lbl_816549B3, global
	.string "WIPL_SE_CH_NOT_MOVE"
.endobj lbl_816549B3

# .data:0x93F | 0x816549C7 | size: 0x10
.obj lbl_816549C7, global
	.string "WIPL_SE_CH_DRAG"
.endobj lbl_816549C7

# .data:0x94F | 0x816549D7 | size: 0x31
.obj lbl_816549D7, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x44450000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_816549D7

# .data:0x980 | 0x81654A08 | size: 0x1C
.obj lbl_81654A08, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte iplSDChannelButton_813EA7B8
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte iplSDChannelSelect_813E2B54
.endobj lbl_81654A08

# .data:0x99C | 0x81654A24 | size: 0x18
.obj lbl_81654A24, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte iplSDChannelSelect_813E28B4
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj lbl_81654A24

# .data:0x9B4 | 0x81654A3C | size: 0xFC
.obj lbl_81654A3C, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene15SDChannelSelectFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene15SDChannelSelectFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte iplSDChannelSelect_813E2D94
	.4byte iplSDChannelSelect_813DDE68
	.4byte prepare__Q33ipl5scene15SDChannelSelectFv
	.4byte create__Q33ipl5scene15SDChannelSelectFv
	.4byte fn_8140B254
	.4byte iplSDChannelSelect_813DE33C
	.4byte iplSDChannelSelect_813DE6C8
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte iplSDChannelSelect_813DE24C
	.4byte iplSDChannelSelect_813DDE90
	.4byte iplSDChannelSelect_813DE040
	.4byte iplSDChannelSelect_813DE070
	.4byte iplSDChannelSelect_813DE2EC
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81654A3C

# 0x81694AC8..0x81694B18 | size: 0x50
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694AC8 | size: 0x4
.obj lbl_81694AC8, global
	.float 0
.endobj lbl_81694AC8

# .sdata2:0x4 | 0x81694ACC | size: 0x4
.obj lbl_81694ACC, global
	.float 1
.endobj lbl_81694ACC

# .sdata2:0x8 | 0x81694AD0 | size: 0x1
.obj lbl_81694AD0, global
	.byte 0x00
.endobj lbl_81694AD0

# .sdata2:0x9 | 0x81694AD1 | size: 0x1
.obj lbl_81694AD1, global
	.byte 0x00
.endobj lbl_81694AD1

# .sdata2:0xA | 0x81694AD2 | size: 0x1
.obj lbl_81694AD2, global
	.byte 0x00
.endobj lbl_81694AD2

# .sdata2:0xB | 0x81694AD3 | size: 0x1
.obj lbl_81694AD3, global
	.byte 0xFF
.endobj lbl_81694AD3

# .sdata2:0xC | 0x81694AD4 | size: 0x4
.obj lbl_81694AD4, global
	.float 20
.endobj lbl_81694AD4

# .sdata2:0x10 | 0x81694AD8 | size: 0x4
.obj lbl_81694AD8, global
	.float 40
.endobj lbl_81694AD8

# .sdata2:0x14 | 0x81694ADC | size: 0x4
.obj lbl_81694ADC, global
	.float 60
.endobj lbl_81694ADC

# .sdata2:0x18 | 0x81694AE0 | size: 0x4
.obj lbl_81694AE0, global
	.float 200
.endobj lbl_81694AE0

# .sdata2:0x1C | 0x81694AE4 | size: 0x4
.obj lbl_81694AE4, global
	.float 228
.endobj lbl_81694AE4

# .sdata2:0x20 | 0x81694AE8 | size: 0x4
.obj lbl_81694AE8, global
	.float -100
.endobj lbl_81694AE8

# .sdata2:0x24 | 0x81694AEC | size: 0x4
.obj lbl_81694AEC, global
	.float 100
.endobj lbl_81694AEC

# .sdata2:0x28 | 0x81694AF0 | size: 0x4
.obj lbl_81694AF0, global
	.float 0.5
.endobj lbl_81694AF0

# .sdata2:0x2C | 0x81694AF4 | size: 0x4
.obj lbl_81694AF4, global
	.float 2
.endobj lbl_81694AF4

# .sdata2:0x30 | 0x81694AF8 | size: 0x4
.obj lbl_81694AF8, global
	.float 1705
.endobj lbl_81694AF8

# .sdata2:0x34 | 0x81694AFC | size: 0x4
.obj gap_09_81694AFC_sdata2, global
.hidden gap_09_81694AFC_sdata2
	.4byte 0x00000000
.endobj gap_09_81694AFC_sdata2

# .sdata2:0x38 | 0x81694B00 | size: 0x8
.obj lbl_81694B00, global
	.double 4503599627370496
.endobj lbl_81694B00

# .sdata2:0x40 | 0x81694B08 | size: 0x4
.obj lbl_81694B08, global
	.float 28
.endobj lbl_81694B08

# .sdata2:0x44 | 0x81694B0C | size: 0x4
.obj lbl_81694B0C, global
	.float 3
.endobj lbl_81694B0C

# .sdata2:0x48 | 0x81694B10 | size: 0x8
.obj lbl_81694B10, global
	.double 4503601774854144
.endobj lbl_81694B10

# 0x81696D80..0x81696DD0 | size: 0x50
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696D80 | size: 0x1
.obj lbl_81696D80, global
	.byte 0x00
.endobj lbl_81696D80

# .sdata:0x1 | 0x81696D81 | size: 0x6
.obj lbl_81696D81, global
	.string "Edge0"
.endobj lbl_81696D81

# .sdata:0x7 | 0x81696D87 | size: 0x6
.obj lbl_81696D87, global
	.string "Edge1"
.endobj lbl_81696D87

# .sdata:0xD | 0x81696D8D | size: 0x6
.obj lbl_81696D8D, global
	.string "Edge2"
.endobj lbl_81696D8D

# .sdata:0x13 | 0x81696D93 | size: 0x6
.obj lbl_81696D93, global
	.string "Edge3"
.endobj lbl_81696D93

# .sdata:0x19 | 0x81696D99 | size: 0x6
.obj lbl_81696D99, global
	.string "Edge4"
.endobj lbl_81696D99

# .sdata:0x1F | 0x81696D9F | size: 0x9
.obj lbl_81696D9F, global
	.4byte 0x43684D61
	.4byte 0x736B0000
	.byte 0x00
.endobj lbl_81696D9F

# .sdata:0x28 | 0x81696DA8 | size: 0x4
.obj lbl_81696DA8, global
	.4byte lbl_81696D9F
.endobj lbl_81696DA8

# .sdata:0x2C | 0x81696DAC | size: 0x6
.obj lbl_81696DAC, global
	.string16 "%d"
.endobj lbl_81696DAC

# .sdata:0x32 | 0x81696DB2 | size: 0x4
.obj lbl_81696DB2, global
	.string "arc"
.endobj lbl_81696DB2

# .sdata:0x36 | 0x81696DB6 | size: 0x7
.obj lbl_81696DB6, global
	.string "G_Wait"
.endobj lbl_81696DB6

# .sdata:0x3D | 0x81696DBD | size: 0x1
.obj lbl_81696DBD, global
	.byte 0x00
.endobj lbl_81696DBD

# .sdata:0x3E | 0x81696DBE | size: 0x4
.obj lbl_81696DBE, global
	.string "4x3"
.endobj lbl_81696DBE

# .sdata:0x42 | 0x81696DC2 | size: 0x5
.obj lbl_81696DC2, global
	.string "16x9"
.endobj lbl_81696DC2

# .sdata:0x47 | 0x81696DC7 | size: 0x9
.obj lbl_81696DC7, global
	.4byte 0x57616974
	.4byte 0x5F303000
	.byte 0x00
.endobj lbl_81696DC7
