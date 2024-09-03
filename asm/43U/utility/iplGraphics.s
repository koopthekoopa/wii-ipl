.include "macros.inc"
.file "iplGraphics.cpp"

# 0x810897C0..0x81089848 | size: 0x88
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810897C0 | size: 0x88
# ipl::utility::Graphics::mArg
.obj mArg__Q33ipl7utility8Graphics, global
	.skip 0x88
.endobj mArg__Q33ipl7utility8Graphics

# 0x81362A00..0x813632A8 | size: 0x8A8
.text
.balign 4

# .text:0x0 | 0x81362A00 | size: 0x5C
# ipl::utility::Graphics::Arg::Arg()
.fn __ct__Q43ipl7utility8Graphics3ArgFv, global
/* 81362A00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81362A04 | 7C 08 02 A6 */	mflr r0
/* 81362A08 | C0 22 81 E8 */	lfs f1, lbl_816945E8@sda21(r0)
/* 81362A0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81362A10 | FC 40 08 90 */	fmr f2, f1
/* 81362A14 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81362A18 | FC 60 08 90 */	fmr f3, f1
/* 81362A1C | 7C 7F 1B 78 */	mr r31, r3
/* 81362A20 | 38 63 00 70 */	addi r3, r3, 0x70
/* 81362A24 | 48 00 00 39 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 81362A28 | C0 02 81 EC */	lfs f0, lbl_816945EC@sda21(r0)
/* 81362A2C | 7F E3 FB 78 */	mr r3, r31
/* 81362A30 | D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 81362A34 | D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 81362A38 | 48 1B BD ED */	bl fn_8151E824
/* 81362A3C | 38 7F 00 40 */	addi r3, r31, 0x40
/* 81362A40 | 48 1D E3 F1 */	bl fn_81540E30
/* 81362A44 | 7F E3 FB 78 */	mr r3, r31
/* 81362A48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81362A4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81362A50 | 7C 08 03 A6 */	mtlr r0
/* 81362A54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81362A58 | 4E 80 00 20 */	blr
.endfn __ct__Q43ipl7utility8Graphics3ArgFv

# .text:0x5C | 0x81362A5C | size: 0x10
# ipl::math::VEC3::VEC3(float, float, float)
.fn __ct__Q33ipl4math4VEC3Ffff, global
/* 81362A5C | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 81362A60 | D0 43 00 04 */	stfs f2, 0x4(r3)
/* 81362A64 | D0 63 00 08 */	stfs f3, 0x8(r3)
/* 81362A68 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4math4VEC3Ffff

# .text:0x6C | 0x81362A6C | size: 0x60
# ipl::utility::Graphics::setOrtho(unsigned long)
.fn setOrtho__Q33ipl7utility8GraphicsFUl, global
/* 81362A6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81362A70 | 7C 08 02 A6 */	mflr r0
/* 81362A74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81362A78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81362A7C | 3F E0 81 09 */	lis r31, mArg__Q33ipl7utility8Graphics@ha
/* 81362A80 | 3B FF 97 C0 */	addi r31, r31, mArg__Q33ipl7utility8Graphics@l
/* 81362A84 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81362A88 | 7C 7E 1B 78 */	mr r30, r3
/* 81362A8C | 38 7F 00 70 */	addi r3, r31, 0x70
/* 81362A90 | 38 9F 00 7C */	addi r4, r31, 0x7c
/* 81362A94 | 48 00 00 B9 */	bl setOrthoProjection__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3RCQ33ipl4math4VEC2
/* 81362A98 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 81362A9C | 48 1D E3 95 */	bl fn_81540E30
/* 81362AA0 | 7F C4 F3 78 */	mr r4, r30
/* 81362AA4 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 81362AA8 | 48 1E 52 79 */	bl GXLoadPosMtxImm
/* 81362AAC | 7F C3 F3 78 */	mr r3, r30
/* 81362AB0 | 48 1E 53 19 */	bl GXSetCurrentMtx
/* 81362AB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81362AB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81362ABC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81362AC0 | 7C 08 03 A6 */	mtlr r0
/* 81362AC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81362AC8 | 4E 80 00 20 */	blr
.endfn setOrtho__Q33ipl7utility8GraphicsFUl

# .text:0xCC | 0x81362ACC | size: 0x80
# ipl::utility::Graphics::setDefaultOrtho(unsigned long)
.fn setDefaultOrtho__Q33ipl7utility8GraphicsFUl, global
/* 81362ACC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81362AD0 | 7C 08 02 A6 */	mflr r0
/* 81362AD4 | C0 22 81 E8 */	lfs f1, lbl_816945E8@sda21(r0)
/* 81362AD8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81362ADC | FC 40 08 90 */	fmr f2, f1
/* 81362AE0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81362AE4 | FC 60 08 90 */	fmr f3, f1
/* 81362AE8 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81362AEC | 7C 7E 1B 78 */	mr r30, r3
/* 81362AF0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81362AF4 | 4B FF FF 69 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 81362AF8 | C0 02 81 EC */	lfs f0, lbl_816945EC@sda21(r0)
/* 81362AFC | 38 61 00 10 */	addi r3, r1, 0x10
/* 81362B00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81362B04 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81362B08 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81362B0C | 48 00 00 41 */	bl setOrthoProjection__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3RCQ33ipl4math4VEC2
/* 81362B10 | 3F E0 81 09 */	lis r31, mArg__Q33ipl7utility8Graphics@ha
/* 81362B14 | 3B FF 97 C0 */	addi r31, r31, mArg__Q33ipl7utility8Graphics@l
/* 81362B18 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 81362B1C | 48 1D E3 15 */	bl fn_81540E30
/* 81362B20 | 7F C4 F3 78 */	mr r4, r30
/* 81362B24 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 81362B28 | 48 1E 51 F9 */	bl GXLoadPosMtxImm
/* 81362B2C | 7F C3 F3 78 */	mr r3, r30
/* 81362B30 | 48 1E 52 99 */	bl GXSetCurrentMtx
/* 81362B34 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81362B38 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81362B3C | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81362B40 | 7C 08 03 A6 */	mtlr r0
/* 81362B44 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81362B48 | 4E 80 00 20 */	blr
.endfn setDefaultOrtho__Q33ipl7utility8GraphicsFUl

# .text:0x14C | 0x81362B4C | size: 0xB0
# ipl::utility::Graphics::setOrthoProjection(const ipl::math::VEC3&, const ipl::math::VEC2&)
.fn setOrthoProjection__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3RCQ33ipl4math4VEC2, global
/* 81362B4C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81362B50 | 7C 08 02 A6 */	mflr r0
/* 81362B54 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81362B58 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81362B5C | 48 29 69 6D */	bl _savegpr_29
/* 81362B60 | C0 02 81 E8 */	lfs f0, lbl_816945E8@sda21(r0)
/* 81362B64 | 7C 7D 1B 78 */	mr r29, r3
/* 81362B68 | 7C 9E 23 78 */	mr r30, r4
/* 81362B6C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81362B70 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81362B74 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81362B78 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81362B7C | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81362B80 | 4B FD 2D 99 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81362B84 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81362B88 | 3F E0 81 09 */	lis r31, mArg__Q33ipl7utility8Graphics@ha
/* 81362B8C | C0 DE 00 00 */	lfs f6, 0x0(r30)
/* 81362B90 | 38 7F 97 C0 */	addi r3, r31, mArg__Q33ipl7utility8Graphics@l
/* 81362B94 | C0 81 00 08 */	lfs f4, 0x8(r1)
/* 81362B98 | ED 20 30 24 */	fdivs f9, f0, f6
/* 81362B9C | C0 41 00 14 */	lfs f2, 0x14(r1)
/* 81362BA0 | C0 7E 00 04 */	lfs f3, 0x4(r30)
/* 81362BA4 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 81362BA8 | C1 1D 00 00 */	lfs f8, 0x0(r29)
/* 81362BAC | C0 3D 00 04 */	lfs f1, 0x4(r29)
/* 81362BB0 | EC E4 30 24 */	fdivs f7, f4, f6
/* 81362BB4 | C0 A2 81 F0 */	lfs f5, lbl_816945F0@sda21(r0)
/* 81362BB8 | C0 C2 81 F4 */	lfs f6, lbl_816945F4@sda21(r0)
/* 81362BBC | EC 42 18 24 */	fdivs f2, f2, f3
/* 81362BC0 | EC 00 18 24 */	fdivs f0, f0, f3
/* 81362BC4 | EC 41 10 28 */	fsubs f2, f1, f2
/* 81362BC8 | EC 88 48 2A */	fadds f4, f8, f9
/* 81362BCC | EC 68 38 2A */	fadds f3, f8, f7
/* 81362BD0 | EC 21 00 28 */	fsubs f1, f1, f0
/* 81362BD4 | 48 1D EA 29 */	bl fn_815415FC
/* 81362BD8 | 38 7F 97 C0 */	addi r3, r31, mArg__Q33ipl7utility8Graphics@l
/* 81362BDC | 38 80 00 01 */	li r4, 0x1
/* 81362BE0 | 48 1E 50 51 */	bl GXSetProjection
/* 81362BE4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81362BE8 | 48 29 69 2D */	bl _restgpr_29
/* 81362BEC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81362BF0 | 7C 08 03 A6 */	mtlr r0
/* 81362BF4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81362BF8 | 4E 80 00 20 */	blr
.endfn setOrthoProjection__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3RCQ33ipl4math4VEC2

# .text:0x1FC | 0x81362BFC | size: 0xEC
.fn iplGraphics_81362BFC, global
/* 81362BFC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81362C00 | 7C 08 02 A6 */	mflr r0
/* 81362C04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81362C08 | 3C 00 43 30 */	lis r0, 0x4330
/* 81362C0C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81362C10 | 7C 7F 1B 78 */	mr r31, r3
/* 81362C14 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81362C18 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81362C1C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81362C20 | 4B FD 2D 75 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 81362C24 | A0 83 00 04 */	lhz r4, 0x4(r3)
/* 81362C28 | 3F C0 81 09 */	lis r30, mArg__Q33ipl7utility8Graphics@ha
/* 81362C2C | A0 E3 00 06 */	lhz r7, 0x6(r3)
/* 81362C30 | 38 7E 97 C0 */	addi r3, r30, mArg__Q33ipl7utility8Graphics@l
/* 81362C34 | 7C 04 00 D0 */	neg r0, r4
/* 81362C38 | 54 85 F8 7E */	srwi r5, r4, 1
/* 81362C3C | 7C 04 0E 70 */	srawi r4, r0, 1
/* 81362C40 | C8 C2 81 F8 */	lfd f6, lbl_816945F8@sda21(r0)
/* 81362C44 | 7C 84 01 94 */	addze r4, r4
/* 81362C48 | 6C A6 80 00 */	xoris r6, r5, 0x8000
/* 81362C4C | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 81362C50 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 81362C54 | 7C 87 00 D0 */	neg r4, r7
/* 81362C58 | 54 E0 F8 7E */	srwi r0, r7, 1
/* 81362C5C | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 81362C60 | 7C 84 0E 70 */	srawi r4, r4, 1
/* 81362C64 | 7C 84 01 94 */	addze r4, r4
/* 81362C68 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81362C6C | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 81362C70 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81362C74 | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 81362C78 | EC 80 30 28 */	fsubs f4, f0, f6
/* 81362C7C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81362C80 | EC 62 30 28 */	fsubs f3, f2, f6
/* 81362C84 | C0 A2 81 F0 */	lfs f5, lbl_816945F0@sda21(r0)
/* 81362C88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81362C8C | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 81362C90 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81362C94 | EC 41 30 28 */	fsubs f2, f1, f6
/* 81362C98 | EC 20 30 28 */	fsubs f1, f0, f6
/* 81362C9C | C0 C2 81 F4 */	lfs f6, lbl_816945F4@sda21(r0)
/* 81362CA0 | 48 1D E9 5D */	bl fn_815415FC
/* 81362CA4 | 38 7E 97 C0 */	addi r3, r30, mArg__Q33ipl7utility8Graphics@l
/* 81362CA8 | 38 80 00 01 */	li r4, 0x1
/* 81362CAC | 48 1E 4F 85 */	bl GXSetProjection
/* 81362CB0 | 3B DE 97 C0 */	addi r30, r30, mArg__Q33ipl7utility8Graphics@l
/* 81362CB4 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 81362CB8 | 48 1D E1 79 */	bl fn_81540E30
/* 81362CBC | 7F E4 FB 78 */	mr r4, r31
/* 81362CC0 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 81362CC4 | 48 1E 50 5D */	bl GXLoadPosMtxImm
/* 81362CC8 | 7F E3 FB 78 */	mr r3, r31
/* 81362CCC | 48 1E 50 FD */	bl GXSetCurrentMtx
/* 81362CD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81362CD4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81362CD8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81362CDC | 7C 08 03 A6 */	mtlr r0
/* 81362CE0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81362CE4 | 4E 80 00 20 */	blr
.endfn iplGraphics_81362BFC

# .text:0x2E8 | 0x81362CE8 | size: 0x10
# ipl::utility::Graphics::calcOrthoCamera()
.fn calcOrthoCamera__Q33ipl7utility8GraphicsFv, global
/* 81362CE8 | 3C 60 81 09 */	lis r3, mArg__Q33ipl7utility8Graphics@ha
/* 81362CEC | 38 63 97 C0 */	addi r3, r3, mArg__Q33ipl7utility8Graphics@l
/* 81362CF0 | 38 63 00 40 */	addi r3, r3, 0x40
/* 81362CF4 | 48 1D E1 3C */	b fn_81540E30
.endfn calcOrthoCamera__Q33ipl7utility8GraphicsFv

# .text:0x2F8 | 0x81362CF8 | size: 0x44
# ipl::utility::Graphics::setCamera(unsigned long)
.fn setCamera__Q33ipl7utility8GraphicsFUl, global
/* 81362CF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81362CFC | 7C 08 02 A6 */	mflr r0
/* 81362D00 | 3C A0 81 09 */	lis r5, mArg__Q33ipl7utility8Graphics@ha
/* 81362D04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81362D08 | 38 A5 97 C0 */	addi r5, r5, mArg__Q33ipl7utility8Graphics@l
/* 81362D0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81362D10 | 7C 7F 1B 78 */	mr r31, r3
/* 81362D14 | 7F E4 FB 78 */	mr r4, r31
/* 81362D18 | 38 65 00 40 */	addi r3, r5, 0x40
/* 81362D1C | 48 1E 50 05 */	bl GXLoadPosMtxImm
/* 81362D20 | 7F E3 FB 78 */	mr r3, r31
/* 81362D24 | 48 1E 50 A5 */	bl GXSetCurrentMtx
/* 81362D28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81362D2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81362D30 | 7C 08 03 A6 */	mtlr r0
/* 81362D34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81362D38 | 4E 80 00 20 */	blr
.endfn setCamera__Q33ipl7utility8GraphicsFUl

# .text:0x33C | 0x81362D3C | size: 0x26C
# ipl::utility::Graphics::drawPolygon(const nw4r::ut::Rect&, _GXColor)
.fn drawPolygon__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4Rect8_GXColor, global
/* 81362D3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81362D40 | 7C 08 02 A6 */	mflr r0
/* 81362D44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81362D48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81362D4C | 48 29 67 7D */	bl _savegpr_29
/* 81362D50 | 7C 7D 1B 78 */	mr r29, r3
/* 81362D54 | 7C 9E 23 78 */	mr r30, r4
/* 81362D58 | 48 1E 0B 75 */	bl GXClearVtxDesc
/* 81362D5C | 48 1E 0F C9 */	bl GXInvalidateVtxCache
/* 81362D60 | 48 1E 36 31 */	bl GXInvalidateTexAll
/* 81362D64 | 38 60 00 09 */	li r3, 0x9
/* 81362D68 | 38 80 00 01 */	li r4, 0x1
/* 81362D6C | 48 1E 07 21 */	bl GXSetVtxDesc
/* 81362D70 | 38 60 00 0B */	li r3, 0xb
/* 81362D74 | 38 80 00 01 */	li r4, 0x1
/* 81362D78 | 48 1E 07 15 */	bl GXSetVtxDesc
/* 81362D7C | 38 60 00 00 */	li r3, 0x0
/* 81362D80 | 38 80 00 09 */	li r4, 0x9
/* 81362D84 | 38 A0 00 01 */	li r5, 0x1
/* 81362D88 | 38 C0 00 04 */	li r6, 0x4
/* 81362D8C | 38 E0 00 00 */	li r7, 0x0
/* 81362D90 | 48 1E 0B 71 */	bl GXSetVtxAttrFmt
/* 81362D94 | 38 60 00 00 */	li r3, 0x0
/* 81362D98 | 38 80 00 0B */	li r4, 0xb
/* 81362D9C | 38 A0 00 01 */	li r5, 0x1
/* 81362DA0 | 38 C0 00 05 */	li r6, 0x5
/* 81362DA4 | 38 E0 00 00 */	li r7, 0x0
/* 81362DA8 | 48 1E 0B 59 */	bl GXSetVtxAttrFmt
/* 81362DAC | 38 60 00 01 */	li r3, 0x1
/* 81362DB0 | 48 1E 2C 15 */	bl GXSetNumChans
/* 81362DB4 | 38 60 00 00 */	li r3, 0x0
/* 81362DB8 | 48 1E 11 A5 */	bl GXSetNumTexGens
/* 81362DBC | 38 60 00 00 */	li r3, 0x0
/* 81362DC0 | 48 1E 3F 19 */	bl GXSetNumIndStages
/* 81362DC4 | 38 60 00 01 */	li r3, 0x1
/* 81362DC8 | 48 1E 46 2D */	bl GXSetNumTevStages
/* 81362DCC | 38 60 00 00 */	li r3, 0x0
/* 81362DD0 | 48 1E 3F 29 */	bl GXSetTevDirect
/* 81362DD4 | 38 60 00 00 */	li r3, 0x0
/* 81362DD8 | 38 80 00 0F */	li r4, 0xf
/* 81362DDC | 38 A0 00 02 */	li r5, 0x2
/* 81362DE0 | 38 C0 00 0A */	li r6, 0xa
/* 81362DE4 | 38 E0 00 0F */	li r7, 0xf
/* 81362DE8 | 48 1E 40 45 */	bl GXSetTevColorIn
/* 81362DEC | 38 60 00 00 */	li r3, 0x0
/* 81362DF0 | 38 80 00 07 */	li r4, 0x7
/* 81362DF4 | 38 A0 00 01 */	li r5, 0x1
/* 81362DF8 | 38 C0 00 05 */	li r6, 0x5
/* 81362DFC | 38 E0 00 07 */	li r7, 0x7
/* 81362E00 | 48 1E 40 6D */	bl GXSetTevAlphaIn
/* 81362E04 | 38 60 00 00 */	li r3, 0x0
/* 81362E08 | 38 80 00 00 */	li r4, 0x0
/* 81362E0C | 38 A0 00 00 */	li r5, 0x0
/* 81362E10 | 38 C0 00 00 */	li r6, 0x0
/* 81362E14 | 38 E0 00 01 */	li r7, 0x1
/* 81362E18 | 39 00 00 00 */	li r8, 0x0
/* 81362E1C | 48 1E 40 91 */	bl GXSetTevColorOp
/* 81362E20 | 38 60 00 00 */	li r3, 0x0
/* 81362E24 | 38 80 00 00 */	li r4, 0x0
/* 81362E28 | 38 A0 00 00 */	li r5, 0x0
/* 81362E2C | 38 C0 00 00 */	li r6, 0x0
/* 81362E30 | 38 E0 00 01 */	li r7, 0x1
/* 81362E34 | 39 00 00 00 */	li r8, 0x0
/* 81362E38 | 48 1E 40 CD */	bl GXSetTevAlphaOp
/* 81362E3C | 38 60 00 00 */	li r3, 0x0
/* 81362E40 | 38 80 00 FF */	li r4, 0xff
/* 81362E44 | 38 A0 00 FF */	li r5, 0xff
/* 81362E48 | 38 C0 00 04 */	li r6, 0x4
/* 81362E4C | 48 1E 44 4D */	bl GXSetTevOrder
/* 81362E50 | 38 60 00 04 */	li r3, 0x4
/* 81362E54 | 38 80 00 00 */	li r4, 0x0
/* 81362E58 | 38 A0 00 01 */	li r5, 0x1
/* 81362E5C | 38 C0 00 01 */	li r6, 0x1
/* 81362E60 | 38 E0 00 00 */	li r7, 0x0
/* 81362E64 | 39 00 00 02 */	li r8, 0x2
/* 81362E68 | 39 20 00 02 */	li r9, 0x2
/* 81362E6C | 48 1E 2B 7D */	bl GXSetChanCtrl
/* 81362E70 | 38 60 00 01 */	li r3, 0x1
/* 81362E74 | 48 1E 49 45 */	bl GXSetColorUpdate
/* 81362E78 | 38 60 00 01 */	li r3, 0x1
/* 81362E7C | 48 1E 49 69 */	bl GXSetAlphaUpdate
/* 81362E80 | 38 60 00 01 */	li r3, 0x1
/* 81362E84 | 38 80 00 04 */	li r4, 0x4
/* 81362E88 | 38 A0 00 05 */	li r5, 0x5
/* 81362E8C | 38 C0 00 0F */	li r6, 0xf
/* 81362E90 | 48 1E 48 D9 */	bl GXSetBlendMode
/* 81362E94 | 38 60 00 00 */	li r3, 0x0
/* 81362E98 | 38 80 00 07 */	li r4, 0x7
/* 81362E9C | 38 A0 00 00 */	li r5, 0x0
/* 81362EA0 | 48 1E 49 71 */	bl GXSetZMode
/* 81362EA4 | 38 60 00 07 */	li r3, 0x7
/* 81362EA8 | 38 80 00 00 */	li r4, 0x0
/* 81362EAC | 38 A0 00 01 */	li r5, 0x1
/* 81362EB0 | 38 C0 00 07 */	li r6, 0x7
/* 81362EB4 | 38 E0 00 00 */	li r7, 0x0
/* 81362EB8 | 48 1E 43 1D */	bl GXSetAlphaCompare
/* 81362EBC | 38 60 00 00 */	li r3, 0x0
/* 81362EC0 | 48 1E 1D FD */	bl GXSetCullMode
/* 81362EC4 | 38 60 00 00 */	li r3, 0x0
/* 81362EC8 | 48 1E 51 CD */	bl GXSetClipMode
/* 81362ECC | 88 FE 00 00 */	lbz r7, 0x0(r30)
/* 81362ED0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81362ED4 | 88 DE 00 01 */	lbz r6, 0x1(r30)
/* 81362ED8 | 38 60 00 01 */	li r3, 0x1
/* 81362EDC | 88 BE 00 02 */	lbz r5, 0x2(r30)
/* 81362EE0 | 88 1E 00 03 */	lbz r0, 0x3(r30)
/* 81362EE4 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 81362EE8 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 81362EEC | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 81362EF0 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81362EF4 | 48 1E 40 69 */	bl GXSetTevColor
/* 81362EF8 | 38 60 00 80 */	li r3, 0x80
/* 81362EFC | 38 80 00 00 */	li r4, 0x0
/* 81362F00 | 38 A0 00 04 */	li r5, 0x4
/* 81362F04 | 48 1E 1A F1 */	bl GXBegin
/* 81362F08 | C0 3D 00 00 */	lfs f1, 0x0(r29)
/* 81362F0C | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 81362F10 | C0 62 81 E8 */	lfs f3, lbl_816945E8@sda21(r0)
/* 81362F14 | 48 00 00 95 */	bl iplGraphics_81362FA8
/* 81362F18 | 3B C0 00 FF */	li r30, 0xff
/* 81362F1C | 3F E0 CC 01 */	lis r31, 0xcc01
/* 81362F20 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F24 | C0 3D 00 00 */	lfs f1, 0x0(r29)
/* 81362F28 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F2C | C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 81362F30 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F34 | C0 62 81 E8 */	lfs f3, lbl_816945E8@sda21(r0)
/* 81362F38 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F3C | 48 00 00 6D */	bl iplGraphics_81362FA8
/* 81362F40 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F44 | C0 3D 00 08 */	lfs f1, 0x8(r29)
/* 81362F48 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F4C | C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 81362F50 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F54 | C0 62 81 E8 */	lfs f3, lbl_816945E8@sda21(r0)
/* 81362F58 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F5C | 48 00 00 4D */	bl iplGraphics_81362FA8
/* 81362F60 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F64 | C0 3D 00 08 */	lfs f1, 0x8(r29)
/* 81362F68 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F6C | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 81362F70 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F74 | C0 62 81 E8 */	lfs f3, lbl_816945E8@sda21(r0)
/* 81362F78 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F7C | 48 00 00 2D */	bl iplGraphics_81362FA8
/* 81362F80 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F84 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F88 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F8C | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 81362F90 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81362F94 | 48 29 65 81 */	bl _restgpr_29
/* 81362F98 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81362F9C | 7C 08 03 A6 */	mtlr r0
/* 81362FA0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81362FA4 | 4E 80 00 20 */	blr
.endfn drawPolygon__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4Rect8_GXColor

# .text:0x5A8 | 0x81362FA8 | size: 0x14
.fn iplGraphics_81362FA8, local
/* 81362FA8 | 3C 60 CC 01 */	lis r3, 0xcc01
/* 81362FAC | D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 81362FB0 | D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 81362FB4 | D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 81362FB8 | 4E 80 00 20 */	blr
.endfn iplGraphics_81362FA8

# .text:0x5BC | 0x81362FBC | size: 0x2E0
# ipl::utility::Graphics::drawTexture(const nw4r::ut::Rect&, const _GXTexObj&, _GXColor, unsigned char, ipl::utility::Graphics::Orientation)
.fn drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation, global
/* 81362FBC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81362FC0 | 7C 08 02 A6 */	mflr r0
/* 81362FC4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81362FC8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81362FCC | 48 29 64 DD */	bl _savegpr_21
/* 81362FD0 | 2C 07 00 01 */	cmpwi r7, 0x1
/* 81362FD4 | 7C 75 1B 78 */	mr r21, r3
/* 81362FD8 | 7C 96 23 78 */	mr r22, r4
/* 81362FDC | 7C BF 2B 78 */	mr r31, r5
/* 81362FE0 | 41 82 00 44 */	beq .L_81363024
/* 81362FE4 | 40 80 00 10 */	bge .L_81362FF4
/* 81362FE8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81362FEC | 40 80 00 14 */	bge .L_81363000
/* 81362FF0 | 48 00 00 78 */	b .L_81363068
.L_81362FF4:
/* 81362FF4 | 2C 07 00 03 */	cmpwi r7, 0x3
/* 81362FF8 | 40 80 00 70 */	bge .L_81363068
/* 81362FFC | 48 00 00 4C */	b .L_81363048
.L_81363000:
/* 81363000 | 7C DB 33 78 */	mr r27, r6
/* 81363004 | 7C DA 33 78 */	mr r26, r6
/* 81363008 | 7C D9 33 78 */	mr r25, r6
/* 8136300C | 7C D8 33 78 */	mr r24, r6
/* 81363010 | 3B C0 00 00 */	li r30, 0x0
/* 81363014 | 3B A0 00 00 */	li r29, 0x0
/* 81363018 | 3B 80 00 00 */	li r28, 0x0
/* 8136301C | 3A E0 00 00 */	li r23, 0x0
/* 81363020 | 48 00 00 48 */	b .L_81363068
.L_81363024:
/* 81363024 | 7C DD 33 78 */	mr r29, r6
/* 81363028 | 7C DC 33 78 */	mr r28, r6
/* 8136302C | 7C DB 33 78 */	mr r27, r6
/* 81363030 | 7C DA 33 78 */	mr r26, r6
/* 81363034 | 3B C0 00 00 */	li r30, 0x0
/* 81363038 | 3B 20 00 00 */	li r25, 0x0
/* 8136303C | 3B 00 00 00 */	li r24, 0x0
/* 81363040 | 3A E0 00 00 */	li r23, 0x0
/* 81363044 | 48 00 00 24 */	b .L_81363068
.L_81363048:
/* 81363048 | 7C DE 33 78 */	mr r30, r6
/* 8136304C | 7C D9 33 78 */	mr r25, r6
/* 81363050 | 7C D8 33 78 */	mr r24, r6
/* 81363054 | 7C D7 33 78 */	mr r23, r6
/* 81363058 | 3B A0 00 00 */	li r29, 0x0
/* 8136305C | 3B 80 00 00 */	li r28, 0x0
/* 81363060 | 3B 60 00 00 */	li r27, 0x0
/* 81363064 | 3B 40 00 00 */	li r26, 0x0
.L_81363068:
/* 81363068 | 48 1E 08 65 */	bl GXClearVtxDesc
/* 8136306C | 48 1E 0C B9 */	bl GXInvalidateVtxCache
/* 81363070 | 48 1E 33 21 */	bl GXInvalidateTexAll
/* 81363074 | 38 60 00 09 */	li r3, 0x9
/* 81363078 | 38 80 00 01 */	li r4, 0x1
/* 8136307C | 48 1E 04 11 */	bl GXSetVtxDesc
/* 81363080 | 38 60 00 0D */	li r3, 0xd
/* 81363084 | 38 80 00 01 */	li r4, 0x1
/* 81363088 | 48 1E 04 05 */	bl GXSetVtxDesc
/* 8136308C | 38 60 00 00 */	li r3, 0x0
/* 81363090 | 38 80 00 09 */	li r4, 0x9
/* 81363094 | 38 A0 00 01 */	li r5, 0x1
/* 81363098 | 38 C0 00 04 */	li r6, 0x4
/* 8136309C | 38 E0 00 00 */	li r7, 0x0
/* 813630A0 | 48 1E 08 61 */	bl GXSetVtxAttrFmt
/* 813630A4 | 38 60 00 00 */	li r3, 0x0
/* 813630A8 | 38 80 00 0D */	li r4, 0xd
/* 813630AC | 38 A0 00 01 */	li r5, 0x1
/* 813630B0 | 38 C0 00 00 */	li r6, 0x0
/* 813630B4 | 38 E0 00 00 */	li r7, 0x0
/* 813630B8 | 48 1E 08 49 */	bl GXSetVtxAttrFmt
/* 813630BC | 38 60 00 00 */	li r3, 0x0
/* 813630C0 | 48 1E 29 05 */	bl GXSetNumChans
/* 813630C4 | 38 60 00 01 */	li r3, 0x1
/* 813630C8 | 48 1E 0E 95 */	bl GXSetNumTexGens
/* 813630CC | 38 60 00 00 */	li r3, 0x0
/* 813630D0 | 48 1E 3C 09 */	bl GXSetNumIndStages
/* 813630D4 | 38 60 00 01 */	li r3, 0x1
/* 813630D8 | 48 1E 43 1D */	bl GXSetNumTevStages
/* 813630DC | 38 60 00 00 */	li r3, 0x0
/* 813630E0 | 48 1E 3C 19 */	bl GXSetTevDirect
/* 813630E4 | 38 60 00 00 */	li r3, 0x0
/* 813630E8 | 38 80 00 0F */	li r4, 0xf
/* 813630EC | 38 A0 00 02 */	li r5, 0x2
/* 813630F0 | 38 C0 00 08 */	li r6, 0x8
/* 813630F4 | 38 E0 00 0F */	li r7, 0xf
/* 813630F8 | 48 1E 3D 35 */	bl GXSetTevColorIn
/* 813630FC | 38 60 00 00 */	li r3, 0x0
/* 81363100 | 38 80 00 07 */	li r4, 0x7
/* 81363104 | 38 A0 00 01 */	li r5, 0x1
/* 81363108 | 38 C0 00 04 */	li r6, 0x4
/* 8136310C | 38 E0 00 07 */	li r7, 0x7
/* 81363110 | 48 1E 3D 5D */	bl GXSetTevAlphaIn
/* 81363114 | 38 60 00 00 */	li r3, 0x0
/* 81363118 | 38 80 00 00 */	li r4, 0x0
/* 8136311C | 38 A0 00 00 */	li r5, 0x0
/* 81363120 | 38 C0 00 00 */	li r6, 0x0
/* 81363124 | 38 E0 00 01 */	li r7, 0x1
/* 81363128 | 39 00 00 00 */	li r8, 0x0
/* 8136312C | 48 1E 3D 81 */	bl GXSetTevColorOp
/* 81363130 | 38 60 00 00 */	li r3, 0x0
/* 81363134 | 38 80 00 00 */	li r4, 0x0
/* 81363138 | 38 A0 00 00 */	li r5, 0x0
/* 8136313C | 38 C0 00 00 */	li r6, 0x0
/* 81363140 | 38 E0 00 01 */	li r7, 0x1
/* 81363144 | 39 00 00 00 */	li r8, 0x0
/* 81363148 | 48 1E 3D BD */	bl GXSetTevAlphaOp
/* 8136314C | 38 60 00 00 */	li r3, 0x0
/* 81363150 | 38 80 00 00 */	li r4, 0x0
/* 81363154 | 38 A0 00 00 */	li r5, 0x0
/* 81363158 | 38 C0 00 FF */	li r6, 0xff
/* 8136315C | 48 1E 41 3D */	bl GXSetTevOrder
/* 81363160 | 38 60 00 00 */	li r3, 0x0
/* 81363164 | 38 80 00 01 */	li r4, 0x1
/* 81363168 | 38 A0 00 04 */	li r5, 0x4
/* 8136316C | 38 C0 00 3C */	li r6, 0x3c
/* 81363170 | 38 E0 00 00 */	li r7, 0x0
/* 81363174 | 39 00 00 7D */	li r8, 0x7d
/* 81363178 | 48 1E 0B BD */	bl GXSetTexCoordGen2
/* 8136317C | 38 60 00 01 */	li r3, 0x1
/* 81363180 | 48 1E 46 39 */	bl GXSetColorUpdate
/* 81363184 | 38 60 00 01 */	li r3, 0x1
/* 81363188 | 48 1E 46 5D */	bl GXSetAlphaUpdate
/* 8136318C | 38 60 00 01 */	li r3, 0x1
/* 81363190 | 38 80 00 04 */	li r4, 0x4
/* 81363194 | 38 A0 00 05 */	li r5, 0x5
/* 81363198 | 38 C0 00 0F */	li r6, 0xf
/* 8136319C | 48 1E 45 CD */	bl GXSetBlendMode
/* 813631A0 | 38 60 00 00 */	li r3, 0x0
/* 813631A4 | 38 80 00 07 */	li r4, 0x7
/* 813631A8 | 38 A0 00 00 */	li r5, 0x0
/* 813631AC | 48 1E 46 65 */	bl GXSetZMode
/* 813631B0 | 38 60 00 07 */	li r3, 0x7
/* 813631B4 | 38 80 00 00 */	li r4, 0x0
/* 813631B8 | 38 A0 00 01 */	li r5, 0x1
/* 813631BC | 38 C0 00 07 */	li r6, 0x7
/* 813631C0 | 38 E0 00 00 */	li r7, 0x0
/* 813631C4 | 48 1E 40 11 */	bl GXSetAlphaCompare
/* 813631C8 | 38 60 00 00 */	li r3, 0x0
/* 813631CC | 48 1E 1A F1 */	bl GXSetCullMode
/* 813631D0 | 38 60 00 00 */	li r3, 0x0
/* 813631D4 | 48 1E 4E C1 */	bl GXSetClipMode
/* 813631D8 | 7E C3 B3 78 */	mr r3, r22
/* 813631DC | 38 80 00 00 */	li r4, 0x0
/* 813631E0 | 48 1E 2F CD */	bl GXLoadTexObj
/* 813631E4 | 88 FF 00 00 */	lbz r7, 0x0(r31)
/* 813631E8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813631EC | 88 DF 00 01 */	lbz r6, 0x1(r31)
/* 813631F0 | 38 60 00 01 */	li r3, 0x1
/* 813631F4 | 88 BF 00 02 */	lbz r5, 0x2(r31)
/* 813631F8 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 813631FC | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 81363200 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 81363204 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 81363208 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8136320C | 48 1E 3D 51 */	bl GXSetTevColor
/* 81363210 | 38 60 00 80 */	li r3, 0x80
/* 81363214 | 38 80 00 00 */	li r4, 0x0
/* 81363218 | 38 A0 00 04 */	li r5, 0x4
/* 8136321C | 48 1E 17 D9 */	bl GXBegin
/* 81363220 | C0 35 00 00 */	lfs f1, 0x0(r21)
/* 81363224 | C0 55 00 04 */	lfs f2, 0x4(r21)
/* 81363228 | C0 62 81 E8 */	lfs f3, lbl_816945E8@sda21(r0)
/* 8136322C | 4B FF FD 7D */	bl iplGraphics_81362FA8
/* 81363230 | 3F E0 CC 01 */	lis r31, 0xcc01
/* 81363234 | C0 35 00 00 */	lfs f1, 0x0(r21)
/* 81363238 | 9B DF 80 00 */	stb r30, -0x8000(r31)
/* 8136323C | C0 55 00 0C */	lfs f2, 0xc(r21)
/* 81363240 | 9B BF 80 00 */	stb r29, -0x8000(r31)
/* 81363244 | C0 62 81 E8 */	lfs f3, lbl_816945E8@sda21(r0)
/* 81363248 | 4B FF FD 61 */	bl iplGraphics_81362FA8
/* 8136324C | 9B 9F 80 00 */	stb r28, -0x8000(r31)
/* 81363250 | C0 35 00 08 */	lfs f1, 0x8(r21)
/* 81363254 | 9B 7F 80 00 */	stb r27, -0x8000(r31)
/* 81363258 | C0 55 00 0C */	lfs f2, 0xc(r21)
/* 8136325C | C0 62 81 E8 */	lfs f3, lbl_816945E8@sda21(r0)
/* 81363260 | 4B FF FD 49 */	bl iplGraphics_81362FA8
/* 81363264 | 9B 5F 80 00 */	stb r26, -0x8000(r31)
/* 81363268 | C0 35 00 08 */	lfs f1, 0x8(r21)
/* 8136326C | 9B 3F 80 00 */	stb r25, -0x8000(r31)
/* 81363270 | C0 55 00 04 */	lfs f2, 0x4(r21)
/* 81363274 | C0 62 81 E8 */	lfs f3, lbl_816945E8@sda21(r0)
/* 81363278 | 4B FF FD 31 */	bl iplGraphics_81362FA8
/* 8136327C | 9B 1F 80 00 */	stb r24, -0x8000(r31)
/* 81363280 | 9A FF 80 00 */	stb r23, -0x8000(r31)
/* 81363284 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81363288 | 48 29 62 6D */	bl _restgpr_21
/* 8136328C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81363290 | 7C 08 03 A6 */	mtlr r0
/* 81363294 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81363298 | 4E 80 00 20 */	blr
.endfn drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation

# .text:0x89C | 0x8136329C | size: 0xC
.fn "__sinit_\\iplGraphics_cpp", local
/* 8136329C | 3C 60 81 09 */	lis r3, mArg__Q33ipl7utility8Graphics@ha
/* 813632A0 | 38 63 97 C0 */	addi r3, r3, mArg__Q33ipl7utility8Graphics@l
/* 813632A4 | 4B FF F7 5C */	b __ct__Q43ipl7utility8Graphics3ArgFv
.endfn "__sinit_\\iplGraphics_cpp"

# 0x8160D1D4..0x8160D1D8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\iplGraphics_cpp"

# 0x816945E8..0x81694600 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816945E8 | size: 0x4
.obj lbl_816945E8, global
	.float 0
.endobj lbl_816945E8

# .sdata2:0x4 | 0x816945EC | size: 0x4
.obj lbl_816945EC, global
	.float 1
.endobj lbl_816945EC

# .sdata2:0x8 | 0x816945F0 | size: 0x4
.obj lbl_816945F0, global
	.float -100
.endobj lbl_816945F0

# .sdata2:0xC | 0x816945F4 | size: 0x4
.obj lbl_816945F4, global
	.float 100
.endobj lbl_816945F4

# .sdata2:0x10 | 0x816945F8 | size: 0x8
.obj lbl_816945F8, global
	.double 4503601774854144
.endobj lbl_816945F8
