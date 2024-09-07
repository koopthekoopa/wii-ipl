.include "macros.inc"
.file "iplSensitivity.cpp"

# 0x813F9B70..0x813F9FC8 | size: 0x458
.text
.balign 4

# .text:0x0 | 0x813F9B70 | size: 0x458
# ipl::SensitivityDrawing::draw(ipl::nand::File*)
.fn draw__Q23ipl18SensitivityDrawingFPQ33ipl4nand4File, global
/* 813F9B70 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 813F9B74 | 7C 08 02 A6 */	mflr r0
/* 813F9B78 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 813F9B7C | DB E1 01 10 */	stfd f31, 0x110(r1)
/* 813F9B80 | F3 E1 01 18 */	psq_st f31, 0x118(r1), 0, qr0
/* 813F9B84 | DB C1 01 00 */	stfd f30, 0x100(r1)
/* 813F9B88 | F3 C1 01 08 */	psq_st f30, 0x108(r1), 0, qr0
/* 813F9B8C | DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 813F9B90 | F3 A1 00 F8 */	psq_st f29, 0xf8(r1), 0, qr0
/* 813F9B94 | DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 813F9B98 | F3 81 00 E8 */	psq_st f28, 0xe8(r1), 0, qr0
/* 813F9B9C | DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 813F9BA0 | F3 61 00 D8 */	psq_st f27, 0xd8(r1), 0, qr0
/* 813F9BA4 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813F9BA8 | 48 1F F9 19 */	bl _savegpr_27
/* 813F9BAC | 3C 00 43 30 */	lis r0, 0x4330
/* 813F9BB0 | 7C 7E 1B 78 */	mr r30, r3
/* 813F9BB4 | 90 01 00 A0 */	stw r0, 0xa0(r1)
/* 813F9BB8 | 90 01 00 A8 */	stw r0, 0xa8(r1)
/* 813F9BBC | 4B F3 BD D9 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813F9BC0 | 38 00 00 07 */	li r0, 0x7
/* 813F9BC4 | 38 A1 00 60 */	addi r5, r1, 0x60
/* 813F9BC8 | 38 83 FF FC */	subi r4, r3, 0x4
/* 813F9BCC | 7C 09 03 A6 */	mtctr r0
.L_813F9BD0:
/* 813F9BD0 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813F9BD4 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813F9BD8 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813F9BDC | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813F9BE0 | 42 00 FF F0 */	bdnz .L_813F9BD0
/* 813F9BE4 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 813F9BE8 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813F9BEC | C0 02 88 60 */	lfs f0, lbl_81694C60@sda21(r0)
/* 813F9BF0 | 90 05 00 04 */	stw r0, 0x4(r5)
/* 813F9BF4 | D0 01 00 34 */	stfs f0, 0x34(r1)
/* 813F9BF8 | D0 01 00 38 */	stfs f0, 0x38(r1)
/* 813F9BFC | D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 813F9C00 | D0 01 00 40 */	stfs f0, 0x40(r1)
/* 813F9C04 | 4B F3 BD 15 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813F9C08 | 89 22 88 58 */	lbz r9, lbl_81694C58@sda21(r0)
/* 813F9C0C | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813F9C10 | 89 02 88 59 */	lbz r8, lbl_81694C59@sda21(r0)
/* 813F9C14 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813F9C18 | 88 E2 88 5A */	lbz r7, lbl_81694C5A@sda21(r0)
/* 813F9C1C | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813F9C20 | 88 02 88 5B */	lbz r0, lbl_81694C5B@sda21(r0)
/* 813F9C24 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 813F9C28 | 99 21 00 20 */	stb r9, 0x20(r1)
/* 813F9C2C | 99 01 00 21 */	stb r8, 0x21(r1)
/* 813F9C30 | 98 E1 00 22 */	stb r7, 0x22(r1)
/* 813F9C34 | 98 01 00 23 */	stb r0, 0x23(r1)
/* 813F9C38 | 48 14 E3 D9 */	bl GXGetScissor
/* 813F9C3C | A0 81 00 68 */	lhz r4, 0x68(r1)
/* 813F9C40 | 38 60 00 00 */	li r3, 0x0
/* 813F9C44 | A0 01 00 6A */	lhz r0, 0x6a(r1)
/* 813F9C48 | 90 81 00 A4 */	stw r4, 0xa4(r1)
/* 813F9C4C | C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 813F9C50 | C0 21 00 34 */	lfs f1, 0x34(r1)
/* 813F9C54 | 90 01 00 AC */	stw r0, 0xac(r1)
/* 813F9C58 | EC 82 08 28 */	fsubs f4, f2, f1
/* 813F9C5C | C0 61 00 40 */	lfs f3, 0x40(r1)
/* 813F9C60 | C0 01 00 38 */	lfs f0, 0x38(r1)
/* 813F9C64 | C8 42 88 70 */	lfd f2, lbl_81694C70@sda21(r0)
/* 813F9C68 | EC A3 00 28 */	fsubs f5, f3, f0
/* 813F9C6C | C8 21 00 A0 */	lfd f1, 0xa0(r1)
/* 813F9C70 | C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 813F9C74 | EC 21 10 28 */	fsubs f1, f1, f2
/* 813F9C78 | C0 62 88 40 */	lfs f3, lbl_81694C40@sda21(r0)
/* 813F9C7C | EC 00 10 28 */	fsubs f0, f0, f2
/* 813F9C80 | EF E3 01 32 */	fmuls f31, f3, f4
/* 813F9C84 | EF C1 20 24 */	fdivs f30, f1, f4
/* 813F9C88 | EF A0 28 24 */	fdivs f29, f0, f5
/* 813F9C8C | EF 63 01 72 */	fmuls f27, f3, f5
/* 813F9C90 | 4B F6 8E 3D */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813F9C94 | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 813F9C98 | C0 21 00 38 */	lfs f1, 0x38(r1)
/* 813F9C9C | C0 02 88 40 */	lfs f0, lbl_81694C40@sda21(r0)
/* 813F9CA0 | EC 62 08 28 */	fsubs f3, f2, f1
/* 813F9CA4 | C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 813F9CA8 | C0 21 00 34 */	lfs f1, 0x34(r1)
/* 813F9CAC | EC 00 00 F2 */	fmuls f0, f0, f3
/* 813F9CB0 | EF 82 08 28 */	fsubs f28, f2, f1
/* 813F9CB4 | EC 3D 00 32 */	fmuls f1, f29, f0
/* 813F9CB8 | 48 1F F6 E1 */	bl __cvt_fp2unsigned
/* 813F9CBC | C0 02 88 40 */	lfs f0, lbl_81694C40@sda21(r0)
/* 813F9CC0 | 7C 7B 1B 78 */	mr r27, r3
/* 813F9CC4 | EC 00 07 32 */	fmuls f0, f0, f28
/* 813F9CC8 | EC 3E 00 32 */	fmuls f1, f30, f0
/* 813F9CCC | 48 1F F6 CD */	bl __cvt_fp2unsigned
/* 813F9CD0 | C0 42 88 40 */	lfs f2, lbl_81694C40@sda21(r0)
/* 813F9CD4 | 7C 7C 1B 78 */	mr r28, r3
/* 813F9CD8 | C0 21 00 38 */	lfs f1, 0x38(r1)
/* 813F9CDC | C0 02 88 64 */	lfs f0, lbl_81694C64@sda21(r0)
/* 813F9CE0 | EC 22 00 72 */	fmuls f1, f2, f1
/* 813F9CE4 | EC 21 D8 2A */	fadds f1, f1, f27
/* 813F9CE8 | EC 00 08 2A */	fadds f0, f0, f1
/* 813F9CEC | EC 3D 00 32 */	fmuls f1, f29, f0
/* 813F9CF0 | 48 1F F6 A9 */	bl __cvt_fp2unsigned
/* 813F9CF4 | C0 22 88 40 */	lfs f1, lbl_81694C40@sda21(r0)
/* 813F9CF8 | 7C 7D 1B 78 */	mr r29, r3
/* 813F9CFC | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 813F9D00 | EC 01 00 32 */	fmuls f0, f1, f0
/* 813F9D04 | EC 00 F8 2A */	fadds f0, f0, f31
/* 813F9D08 | EC 3E 00 32 */	fmuls f1, f30, f0
/* 813F9D0C | 48 1F F6 8D */	bl __cvt_fp2unsigned
/* 813F9D10 | 7F A4 EB 78 */	mr r4, r29
/* 813F9D14 | 7F 85 E3 78 */	mr r5, r28
/* 813F9D18 | 7F 66 DB 78 */	mr r6, r27
/* 813F9D1C | 48 14 E2 8D */	bl GXSetScissor
/* 813F9D20 | 88 E1 00 20 */	lbz r7, 0x20(r1)
/* 813F9D24 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813F9D28 | 88 C1 00 21 */	lbz r6, 0x21(r1)
/* 813F9D2C | 38 81 00 0C */	addi r4, r1, 0xc
/* 813F9D30 | 88 A1 00 22 */	lbz r5, 0x22(r1)
/* 813F9D34 | 88 01 00 23 */	lbz r0, 0x23(r1)
/* 813F9D38 | 98 E1 00 0C */	stb r7, 0xc(r1)
/* 813F9D3C | 98 C1 00 0D */	stb r6, 0xd(r1)
/* 813F9D40 | 98 A1 00 0E */	stb r5, 0xe(r1)
/* 813F9D44 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 813F9D48 | 4B F6 8F F5 */	bl drawPolygon__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4Rect8_GXColor
/* 813F9D4C | 4B F3 BC 6D */	bl getYoungController__Q23ipl6SystemFv
/* 813F9D50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9D54 | 7C 7B 1B 78 */	mr r27, r3
/* 813F9D58 | 41 82 02 1C */	beq .L_813F9F74
/* 813F9D5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F9D60 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 813F9D64 | 7D 89 03 A6 */	mtctr r12
/* 813F9D68 | 4E 80 04 21 */	bctrl
/* 813F9D6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9D70 | 41 82 02 04 */	beq .L_813F9F74
/* 813F9D74 | 80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 813F9D78 | 38 81 00 44 */	addi r4, r1, 0x44
/* 813F9D7C | 38 A0 00 01 */	li r5, 0x1
/* 813F9D80 | 48 1C 25 5D */	bl fn_815BC2DC
/* 813F9D84 | 38 61 00 44 */	addi r3, r1, 0x44
/* 813F9D88 | 38 80 00 02 */	li r4, 0x2
/* 813F9D8C | 38 A0 00 02 */	li r5, 0x2
/* 813F9D90 | 48 14 C2 39 */	bl GXInitTexObjWrapMode
/* 813F9D94 | C0 21 00 40 */	lfs f1, 0x40(r1)
/* 813F9D98 | 7F 63 DB 78 */	mr r3, r27
/* 813F9D9C | C0 01 00 38 */	lfs f0, 0x38(r1)
/* 813F9DA0 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813F9DA4 | EC 21 00 28 */	fsubs f1, f1, f0
/* 813F9DA8 | C0 62 88 40 */	lfs f3, lbl_81694C40@sda21(r0)
/* 813F9DAC | C0 02 88 44 */	lfs f0, lbl_81694C44@sda21(r0)
/* 813F9DB0 | C0 A1 00 3C */	lfs f5, 0x3c(r1)
/* 813F9DB4 | EC 23 00 72 */	fmuls f1, f3, f1
/* 813F9DB8 | C0 81 00 34 */	lfs f4, 0x34(r1)
/* 813F9DBC | C0 42 88 48 */	lfs f2, lbl_81694C48@sda21(r0)
/* 813F9DC0 | EC 85 20 28 */	fsubs f4, f5, f4
/* 813F9DC4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813F9DC8 | EF A1 00 24 */	fdivs f29, f1, f0
/* 813F9DCC | EC 03 01 32 */	fmuls f0, f3, f4
/* 813F9DD0 | EF 60 00 B2 */	fmuls f27, f0, f2
/* 813F9DD4 | 7D 89 03 A6 */	mtctr r12
/* 813F9DD8 | 4E 80 04 21 */	bctrl
/* 813F9DDC | 48 18 18 61 */	bl fn_8157B63C
/* 813F9DE0 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813F9DE4 | 7C 7D 1B 78 */	mr r29, r3
/* 813F9DE8 | 7F 63 DB 78 */	mr r3, r27
/* 813F9DEC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F9DF0 | 7D 89 03 A6 */	mtctr r12
/* 813F9DF4 | 4E 80 04 21 */	bctrl
/* 813F9DF8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813F9DFC | 41 82 00 4C */	beq .L_813F9E48
/* 813F9E00 | 40 80 00 10 */	bge .L_813F9E10
/* 813F9E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9E08 | 40 80 00 14 */	bge .L_813F9E1C
/* 813F9E0C | 48 00 00 90 */	b .L_813F9E9C
.L_813F9E10:
/* 813F9E10 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813F9E14 | 40 80 00 88 */	bge .L_813F9E9C
/* 813F9E18 | 48 00 00 5C */	b .L_813F9E74
.L_813F9E1C:
/* 813F9E1C | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813F9E20 | 7F 63 DB 78 */	mr r3, r27
/* 813F9E24 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813F9E28 | 7D 89 03 A6 */	mtctr r12
/* 813F9E2C | 4E 80 04 21 */	bctrl
/* 813F9E30 | 48 18 B6 41 */	bl fn_81585470
/* 813F9E34 | 1C 1D 00 2A */	mulli r0, r29, 0x2a
/* 813F9E38 | 7C 63 02 14 */	add r3, r3, r0
/* 813F9E3C | 3B E3 00 20 */	addi r31, r3, 0x20
/* 813F9E40 | 3B C3 00 08 */	addi r30, r3, 0x8
/* 813F9E44 | 48 00 00 58 */	b .L_813F9E9C
.L_813F9E48:
/* 813F9E48 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813F9E4C | 7F 63 DB 78 */	mr r3, r27
/* 813F9E50 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813F9E54 | 7D 89 03 A6 */	mtctr r12
/* 813F9E58 | 4E 80 04 21 */	bctrl
/* 813F9E5C | 48 18 B6 25 */	bl fn_81585480
/* 813F9E60 | 1C 1D 00 32 */	mulli r0, r29, 0x32
/* 813F9E64 | 7C 63 02 14 */	add r3, r3, r0
/* 813F9E68 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 813F9E6C | 3B C3 00 08 */	addi r30, r3, 0x8
/* 813F9E70 | 48 00 00 2C */	b .L_813F9E9C
.L_813F9E74:
/* 813F9E74 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813F9E78 | 7F 63 DB 78 */	mr r3, r27
/* 813F9E7C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813F9E80 | 7D 89 03 A6 */	mtctr r12
/* 813F9E84 | 4E 80 04 21 */	bctrl
/* 813F9E88 | 48 18 B6 09 */	bl fn_81585490
/* 813F9E8C | 1C 1D 00 36 */	mulli r0, r29, 0x36
/* 813F9E90 | 7C 63 02 14 */	add r3, r3, r0
/* 813F9E94 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 813F9E98 | 3B C3 00 08 */	addi r30, r3, 0x8
.L_813F9E9C:
/* 813F9E9C | CB 82 88 50 */	lfd f28, lbl_81694C50@sda21(r0)
/* 813F9EA0 | C3 E2 88 68 */	lfs f31, lbl_81694C68@sda21(r0)
/* 813F9EA4 | C3 C2 88 64 */	lfs f30, lbl_81694C64@sda21(r0)
.L_813F9EA8:
/* 813F9EA8 | A0 7F 00 04 */	lhz r3, 0x4(r31)
/* 813F9EAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9EB0 | 41 82 00 B8 */	beq .L_813F9F68
/* 813F9EB4 | 38 03 00 19 */	addi r0, r3, 0x19
/* 813F9EB8 | A8 7F 00 02 */	lha r3, 0x2(r31)
/* 813F9EBC | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813F9EC0 | A8 9F 00 00 */	lha r4, 0x0(r31)
/* 813F9EC4 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813F9EC8 | 38 03 FE 80 */	subi r0, r3, 0x180
/* 813F9ECC | 38 64 FE 00 */	subi r3, r4, 0x200
/* 813F9ED0 | 88 A2 88 5C */	lbz r5, lbl_81694C5C@sda21(r0)
/* 813F9ED4 | C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 813F9ED8 | 6C 68 80 00 */	xoris r8, r3, 0x8000
/* 813F9EDC | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813F9EE0 | 91 01 00 AC */	stw r8, 0xac(r1)
/* 813F9EE4 | EC 40 E0 28 */	fsubs f2, f0, f28
/* 813F9EE8 | 88 C2 88 5D */	lbz r6, lbl_81694C5D@sda21(r0)
/* 813F9EEC | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813F9EF0 | 38 61 00 24 */	addi r3, r1, 0x24
/* 813F9EF4 | C8 21 00 A8 */	lfd f1, 0xa8(r1)
/* 813F9EF8 | 38 81 00 44 */	addi r4, r1, 0x44
/* 813F9EFC | C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 813F9F00 | EC 21 E0 28 */	fsubs f1, f1, f28
/* 813F9F04 | 88 E2 88 5E */	lbz r7, lbl_81694C5E@sda21(r0)
/* 813F9F08 | EC 9F 00 B2 */	fmuls f4, f31, f2
/* 813F9F0C | EC 00 E0 28 */	fsubs f0, f0, f28
/* 813F9F10 | 88 02 88 5F */	lbz r0, lbl_81694C5F@sda21(r0)
/* 813F9F14 | EC A1 06 F2 */	fmuls f5, f1, f27
/* 813F9F18 | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 813F9F1C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813F9F20 | EC 00 07 72 */	fmuls f0, f0, f29
/* 813F9F24 | EC 65 20 28 */	fsubs f3, f5, f4
/* 813F9F28 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 813F9F2C | 38 C0 00 02 */	li r6, 0x2
/* 813F9F30 | FC 00 00 50 */	fneg f0, f0
/* 813F9F34 | 98 E1 00 0A */	stb r7, 0xa(r1)
/* 813F9F38 | 38 E0 00 00 */	li r7, 0x0
/* 813F9F3C | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813F9F40 | EC 20 20 2A */	fadds f1, f0, f4
/* 813F9F44 | EC 00 20 28 */	fsubs f0, f0, f4
/* 813F9F48 | D0 61 00 24 */	stfs f3, 0x24(r1)
/* 813F9F4C | EC 41 F0 28 */	fsubs f2, f1, f30
/* 813F9F50 | EC 25 20 2A */	fadds f1, f5, f4
/* 813F9F54 | EC 00 F0 28 */	fsubs f0, f0, f30
/* 813F9F58 | D0 41 00 28 */	stfs f2, 0x28(r1)
/* 813F9F5C | D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 813F9F60 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 813F9F64 | 4B F6 90 59 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
.L_813F9F68:
/* 813F9F68 | 3B FF FF F8 */	subi r31, r31, 0x8
/* 813F9F6C | 7C 1F F0 40 */	cmplw r31, r30
/* 813F9F70 | 40 80 FF 38 */	bge .L_813F9EA8
.L_813F9F74:
/* 813F9F74 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 813F9F78 | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 813F9F7C | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 813F9F80 | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 813F9F84 | 48 14 E0 25 */	bl GXSetScissor
/* 813F9F88 | E3 E1 01 18 */	psq_l f31, 0x118(r1), 0, qr0
/* 813F9F8C | CB E1 01 10 */	lfd f31, 0x110(r1)
/* 813F9F90 | E3 C1 01 08 */	psq_l f30, 0x108(r1), 0, qr0
/* 813F9F94 | CB C1 01 00 */	lfd f30, 0x100(r1)
/* 813F9F98 | E3 A1 00 F8 */	psq_l f29, 0xf8(r1), 0, qr0
/* 813F9F9C | CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 813F9FA0 | E3 81 00 E8 */	psq_l f28, 0xe8(r1), 0, qr0
/* 813F9FA4 | CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 813F9FA8 | E3 61 00 D8 */	psq_l f27, 0xd8(r1), 0, qr0
/* 813F9FAC | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813F9FB0 | CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 813F9FB4 | 48 1F F5 59 */	bl _restgpr_27
/* 813F9FB8 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 813F9FBC | 7C 08 03 A6 */	mtlr r0
/* 813F9FC0 | 38 21 01 20 */	addi r1, r1, 0x120
/* 813F9FC4 | 4E 80 00 20 */	blr
.endfn draw__Q23ipl18SensitivityDrawingFPQ33ipl4nand4File

# 0x81694C40..0x81694C78 | size: 0x38
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694C40 | size: 0x4
.obj lbl_81694C40, global
	.float 0.5
.endobj lbl_81694C40

# .sdata2:0x4 | 0x81694C44 | size: 0x4
.obj lbl_81694C44, global
	.float 768
.endobj lbl_81694C44

# .sdata2:0x8 | 0x81694C48 | size: 0x4
.obj lbl_81694C48, global
	.float 0.0009765625
.endobj lbl_81694C48

# .sdata2:0xC | 0x81694C4C | size: 0x4
.obj gap_09_81694C4C_sdata2, global
.hidden gap_09_81694C4C_sdata2
	.4byte 0x00000000
.endobj gap_09_81694C4C_sdata2

# .sdata2:0x10 | 0x81694C50 | size: 0x8
.obj lbl_81694C50, global
	.double 4503601774854144
.endobj lbl_81694C50

# .sdata2:0x18 | 0x81694C58 | size: 0x1
.obj lbl_81694C58, global
	.byte 0x60
.endobj lbl_81694C58

# .sdata2:0x19 | 0x81694C59 | size: 0x1
.obj lbl_81694C59, global
	.byte 0x60
.endobj lbl_81694C59

# .sdata2:0x1A | 0x81694C5A | size: 0x1
.obj lbl_81694C5A, global
	.byte 0x60
.endobj lbl_81694C5A

# .sdata2:0x1B | 0x81694C5B | size: 0x1
.obj lbl_81694C5B, global
	.byte 0xC0
.endobj lbl_81694C5B

# .sdata2:0x1C | 0x81694C5C | size: 0x1
.obj lbl_81694C5C, global
	.byte 0xFF
.endobj lbl_81694C5C

# .sdata2:0x1D | 0x81694C5D | size: 0x1
.obj lbl_81694C5D, global
	.byte 0xFF
.endobj lbl_81694C5D

# .sdata2:0x1E | 0x81694C5E | size: 0x1
.obj lbl_81694C5E, global
	.byte 0xFF
.endobj lbl_81694C5E

# .sdata2:0x1F | 0x81694C5F | size: 0x1
.obj lbl_81694C5F, global
	.byte 0xFF
.endobj lbl_81694C5F

# .sdata2:0x20 | 0x81694C60 | size: 0x4
.obj lbl_81694C60, global
	.float 0
.endobj lbl_81694C60

# .sdata2:0x24 | 0x81694C64 | size: 0x4
.obj lbl_81694C64, global
	.float -45
.endobj lbl_81694C64

# .sdata2:0x28 | 0x81694C68 | size: 0x4
.obj lbl_81694C68, global
	.float 0.15
.endobj lbl_81694C68

# .sdata2:0x2C | 0x81694C6C | size: 0x4
.obj gap_09_81694C6C_sdata2, global
.hidden gap_09_81694C6C_sdata2
	.4byte 0x00000000
.endobj gap_09_81694C6C_sdata2

# .sdata2:0x30 | 0x81694C70 | size: 0x8
.obj lbl_81694C70, global
	.double 4503599627370496
.endobj lbl_81694C70
