.include "macros.inc"
.file "iplHomeButtonMenu.cpp"

# 0x81347AD0..0x813483EC | size: 0x91C
.text
.balign 4

# .text:0x0 | 0x81347AD0 | size: 0x9C
# ipl::SECallback(int)
.fn SECallback__3iplFi, local
/* 81347AD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81347AD4 | 7C 08 02 A6 */	mflr r0
/* 81347AD8 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81347ADC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81347AE0 | 41 82 00 60 */	beq .L_81347B40
/* 81347AE4 | 40 80 00 10 */	bge .L_81347AF4
/* 81347AE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347AEC | 41 82 00 18 */	beq .L_81347B04
/* 81347AF0 | 48 00 00 6C */	b .L_81347B5C
.L_81347AF4:
/* 81347AF4 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81347AF8 | 41 82 00 54 */	beq .L_81347B4C
/* 81347AFC | 40 80 00 60 */	bge .L_81347B5C
/* 81347B00 | 48 00 00 14 */	b .L_81347B14
.L_81347B04:
/* 81347B04 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347B08 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81347B0C | 48 02 42 81 */	bl pauseOnBGM__Q33ipl3snd6SystemFv
/* 81347B10 | 48 00 00 4C */	b .L_81347B5C
.L_81347B14:
/* 81347B14 | 88 0D A6 90 */	lbz r0, lbl_816986D0@sda21(r0)
/* 81347B18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347B1C | 41 82 00 14 */	beq .L_81347B30
/* 81347B20 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347B24 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81347B28 | 48 02 40 ED */	bl resetAllSound__Q33ipl3snd6SystemFv
/* 81347B2C | 48 00 00 30 */	b .L_81347B5C
.L_81347B30:
/* 81347B30 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347B34 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81347B38 | 48 02 42 FD */	bl pauseOffBGM__Q33ipl3snd6SystemFv
/* 81347B3C | 48 00 00 20 */	b .L_81347B5C
.L_81347B40:
/* 81347B40 | 38 00 00 01 */	li r0, 0x1
/* 81347B44 | 98 0D A6 90 */	stb r0, lbl_816986D0@sda21(r0)
/* 81347B48 | 48 00 00 14 */	b .L_81347B5C
.L_81347B4C:
/* 81347B4C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81347B50 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81347B54 | 48 02 3A 25 */	bl startSEIndex__Q33ipl3snd6SystemFUl
/* 81347B58 | 38 60 00 01 */	li r3, 0x1
.L_81347B5C:
/* 81347B5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81347B60 | 7C 08 03 A6 */	mtlr r0
/* 81347B64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81347B68 | 4E 80 00 20 */	blr
.endfn SECallback__3iplFi

# .text:0x9C | 0x81347B6C | size: 0x1B4
# ipl::HomeButtonMenu::HomeButtonMenu(EGG::Heap*)
.fn __ct__Q23ipl14HomeButtonMenuFPQ23EGG4Heap, global
/* 81347B6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81347B70 | 7C 08 02 A6 */	mflr r0
/* 81347B74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81347B78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347B7C | 48 2B 19 49 */	bl _savegpr_28
/* 81347B80 | 3B C0 00 00 */	li r30, 0x0
/* 81347B84 | 38 00 00 01 */	li r0, 0x1
/* 81347B88 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81347B8C | 9B C3 00 00 */	stb r30, 0x0(r3)
/* 81347B90 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81347B94 | 7C 7C 1B 78 */	mr r28, r3
/* 81347B98 | 98 03 00 01 */	stb r0, 0x1(r3)
/* 81347B9C | 7C 9D 23 78 */	mr r29, r4
/* 81347BA0 | 38 A0 00 04 */	li r5, 0x4
/* 81347BA4 | 98 03 00 02 */	stb r0, 0x2(r3)
/* 81347BA8 | 9B C3 00 03 */	stb r30, 0x3(r3)
/* 81347BAC | 9B C3 00 04 */	stb r30, 0x4(r3)
/* 81347BB0 | 9B C3 00 05 */	stb r30, 0x5(r3)
/* 81347BB4 | 9B C3 00 68 */	stb r30, 0x68(r3)
/* 81347BB8 | 80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 81347BBC | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81347BC0 | 80 1F 01 60 */	lwz r0, 0x160(r31)
/* 81347BC4 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81347BC8 | 80 1F 01 64 */	lwz r0, 0x164(r31)
/* 81347BCC | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81347BD0 | 80 1F 01 68 */	lwz r0, 0x168(r31)
/* 81347BD4 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81347BD8 | 38 60 00 44 */	li r3, 0x44
/* 81347BDC | 48 2B 04 D5 */	bl __nw__FUlPQ23EGG4Heapi
/* 81347BE0 | 90 7C 00 64 */	stw r3, 0x64(r28)
/* 81347BE4 | 93 C3 00 20 */	stw r30, 0x20(r3)
/* 81347BE8 | 48 22 25 1D */	bl SCGetLanguage
/* 81347BEC | 80 BC 00 64 */	lwz r5, 0x64(r28)
/* 81347BF0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81347BF4 | 3C 80 81 34 */	lis r4, SECallback__3iplFi@ha
/* 81347BF8 | C0 22 81 40 */	lfs f1, lbl_81694540@sda21(r0)
/* 81347BFC | 90 05 00 24 */	stw r0, 0x24(r5)
/* 81347C00 | 38 84 7A D0 */	addi r4, r4, SECallback__3iplFi@l
/* 81347C04 | C0 02 81 44 */	lfs f0, lbl_81694544@sda21(r0)
/* 81347C08 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C0C | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 81347C10 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C14 | 93 C3 00 28 */	stw r30, 0x28(r3)
/* 81347C18 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C1C | D0 23 00 38 */	stfs f1, 0x38(r3)
/* 81347C20 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C24 | D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 81347C28 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C2C | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81347C30 | 80 9F 01 04 */	lwz r4, 0x104(r31)
/* 81347C34 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C38 | 80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 81347C3C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81347C40 | 48 22 24 C5 */	bl SCGetLanguage
/* 81347C44 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81347C48 | 80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347C4C | 38 03 00 07 */	addi r0, r3, 0x7
/* 81347C50 | 3C 80 00 08 */	lis r4, 0x8
/* 81347C54 | 54 00 10 3A */	slwi r0, r0, 2
/* 81347C58 | 7F A3 EB 78 */	mr r3, r29
/* 81347C5C | 7C FF 02 14 */	add r7, r31, r0
/* 81347C60 | 38 A0 00 20 */	li r5, 0x20
/* 81347C64 | 80 E7 00 EC */	lwz r7, 0xec(r7)
/* 81347C68 | 80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 81347C6C | 90 06 00 04 */	stw r0, 0x4(r6)
/* 81347C70 | 80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 81347C74 | 80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347C78 | 90 06 00 08 */	stw r0, 0x8(r6)
/* 81347C7C | 80 FC 00 14 */	lwz r7, 0x14(r28)
/* 81347C80 | 80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347C84 | 80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 81347C88 | 90 06 00 10 */	stw r0, 0x10(r6)
/* 81347C8C | 80 FC 00 18 */	lwz r7, 0x18(r28)
/* 81347C90 | 80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347C94 | 80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 81347C98 | 90 06 00 14 */	stw r0, 0x14(r6)
/* 81347C9C | 80 FC 00 1C */	lwz r7, 0x1c(r28)
/* 81347CA0 | 80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347CA4 | 80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 81347CA8 | 90 06 00 0C */	stw r0, 0xc(r6)
/* 81347CAC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81347CB0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81347CB4 | 7D 89 03 A6 */	mtctr r12
/* 81347CB8 | 4E 80 04 21 */	bctrl
/* 81347CBC | 80 9C 00 64 */	lwz r4, 0x64(r28)
/* 81347CC0 | 3C 00 00 08 */	lis r0, 0x8
/* 81347CC4 | 90 64 00 18 */	stw r3, 0x18(r4)
/* 81347CC8 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347CCC | 90 03 00 30 */	stw r0, 0x30(r3)
/* 81347CD0 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347CD4 | 93 C3 00 40 */	stw r30, 0x40(r3)
/* 81347CD8 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347CDC | 48 02 99 11 */	bl HBMCreate
/* 81347CE0 | 48 22 22 D5 */	bl SCGetAspectRatio
/* 81347CE4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81347CE8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81347CEC | 7C 00 00 34 */	cntlzw r0, r0
/* 81347CF0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81347CF4 | 48 02 9A 5D */	bl HBMSetAdjustFlag
/* 81347CF8 | 80 7C 00 20 */	lwz r3, 0x20(r28)
/* 81347CFC | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81347D00 | 48 27 44 A9 */	bl fn_815BC1A8
/* 81347D04 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347D08 | 7F 83 E3 78 */	mr r3, r28
/* 81347D0C | 48 2B 18 05 */	bl _restgpr_28
/* 81347D10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81347D14 | 7C 08 03 A6 */	mtlr r0
/* 81347D18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81347D1C | 4E 80 00 20 */	blr
.endfn __ct__Q23ipl14HomeButtonMenuFPQ23EGG4Heap

# .text:0x250 | 0x81347D20 | size: 0xB4
# ipl::HomeButtonMenu::DrawBanIcon(unsigned char)
.fn DrawBanIcon__Q23ipl14HomeButtonMenuFUc, global
/* 81347D20 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81347D24 | 7C 08 02 A6 */	mflr r0
/* 81347D28 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81347D2C | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81347D30 | 7C 9F 23 78 */	mr r31, r4
/* 81347D34 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 81347D38 | 7C 7E 1B 78 */	mr r30, r3
/* 81347D3C | 38 60 00 00 */	li r3, 0x0
/* 81347D40 | 48 01 AD 8D */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 81347D44 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 81347D48 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81347D4C | 38 A0 00 00 */	li r5, 0x0
/* 81347D50 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81347D54 | 48 27 45 89 */	bl fn_815BC2DC
/* 81347D58 | 89 22 81 48 */	lbz r9, lbl_81694548@sda21(r0)
/* 81347D5C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81347D60 | 89 02 81 49 */	lbz r8, lbl_81694549@sda21(r0)
/* 81347D64 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81347D68 | 88 02 81 4A */	lbz r0, lbl_8169454A@sda21(r0)
/* 81347D6C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81347D70 | C0 62 81 4C */	lfs f3, lbl_8169454C@sda21(r0)
/* 81347D74 | 38 C0 00 01 */	li r6, 0x1
/* 81347D78 | C0 42 81 50 */	lfs f2, lbl_81694550@sda21(r0)
/* 81347D7C | 38 E0 00 00 */	li r7, 0x0
/* 81347D80 | C0 22 81 54 */	lfs f1, lbl_81694554@sda21(r0)
/* 81347D84 | C0 02 81 58 */	lfs f0, lbl_81694558@sda21(r0)
/* 81347D88 | 99 21 00 0C */	stb r9, 0xc(r1)
/* 81347D8C | 99 01 00 0D */	stb r8, 0xd(r1)
/* 81347D90 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81347D94 | 9B E1 00 0F */	stb r31, 0xf(r1)
/* 81347D98 | D0 61 00 10 */	stfs f3, 0x10(r1)
/* 81347D9C | D0 41 00 14 */	stfs f2, 0x14(r1)
/* 81347DA0 | D0 21 00 18 */	stfs f1, 0x18(r1)
/* 81347DA4 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81347DA8 | 99 21 00 08 */	stb r9, 0x8(r1)
/* 81347DAC | 99 01 00 09 */	stb r8, 0x9(r1)
/* 81347DB0 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81347DB4 | 9B E1 00 0B */	stb r31, 0xb(r1)
/* 81347DB8 | 48 01 B2 05 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 81347DBC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81347DC0 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81347DC4 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81347DC8 | 7C 08 03 A6 */	mtlr r0
/* 81347DCC | 38 21 00 50 */	addi r1, r1, 0x50
/* 81347DD0 | 4E 80 00 20 */	blr
.endfn DrawBanIcon__Q23ipl14HomeButtonMenuFUc

# .text:0x304 | 0x81347DD4 | size: 0xD8
# ipl::HomeButtonMenu::callHBM()
.fn callHBM__Q23ipl14HomeButtonMenuFv, global
/* 81347DD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81347DD8 | 7C 08 02 A6 */	mflr r0
/* 81347DDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81347DE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81347DE4 | 7C 7F 1B 78 */	mr r31, r3
/* 81347DE8 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81347DEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347DF0 | 41 82 00 80 */	beq .L_81347E70
/* 81347DF4 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 81347DF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347DFC | 41 82 00 74 */	beq .L_81347E70
/* 81347E00 | 48 02 98 B5 */	bl HBMDelete
/* 81347E04 | 48 22 23 01 */	bl SCGetLanguage
/* 81347E08 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81347E0C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81347E10 | 38 03 00 07 */	addi r0, r3, 0x7
/* 81347E14 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81347E18 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81347E1C | 54 00 10 3A */	slwi r0, r0, 2
/* 81347E20 | 7C 84 02 14 */	add r4, r4, r0
/* 81347E24 | 80 84 00 EC */	lwz r4, 0xec(r4)
/* 81347E28 | 80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 81347E2C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81347E30 | 48 22 22 D5 */	bl SCGetLanguage
/* 81347E34 | 80 9F 00 64 */	lwz r4, 0x64(r31)
/* 81347E38 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81347E3C | 90 04 00 24 */	stw r0, 0x24(r4)
/* 81347E40 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81347E44 | 48 02 97 A9 */	bl HBMCreate
/* 81347E48 | 48 22 21 6D */	bl SCGetAspectRatio
/* 81347E4C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81347E50 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81347E54 | 7C 00 00 34 */	cntlzw r0, r0
/* 81347E58 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81347E5C | 48 02 98 F5 */	bl HBMSetAdjustFlag
/* 81347E60 | 48 02 98 A9 */	bl HBMInit
/* 81347E64 | 38 00 00 01 */	li r0, 0x1
/* 81347E68 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 81347E6C | 48 00 00 2C */	b .L_81347E98
.L_81347E70:
/* 81347E70 | 88 03 00 68 */	lbz r0, 0x68(r3)
/* 81347E74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347E78 | 40 82 00 20 */	bne .L_81347E98
/* 81347E7C | 38 00 00 01 */	li r0, 0x1
/* 81347E80 | 98 03 00 68 */	stb r0, 0x68(r3)
/* 81347E84 | 48 1E DE 15 */	bl OSGetTick
/* 81347E88 | 38 00 00 00 */	li r0, 0x0
/* 81347E8C | 90 7F 00 6C */	stw r3, 0x6c(r31)
/* 81347E90 | 98 1F 00 70 */	stb r0, 0x70(r31)
/* 81347E94 | 98 1F 00 71 */	stb r0, 0x71(r31)
.L_81347E98:
/* 81347E98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81347E9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81347EA0 | 7C 08 03 A6 */	mtlr r0
/* 81347EA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81347EA8 | 4E 80 00 20 */	blr
.endfn callHBM__Q23ipl14HomeButtonMenuFv

# .text:0x3DC | 0x81347EAC | size: 0xEC
# ipl::HomeButtonMenu::checkStart()
.fn checkStart__Q23ipl14HomeButtonMenuFv, global
/* 81347EAC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81347EB0 | 7C 08 02 A6 */	mflr r0
/* 81347EB4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81347EB8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347EBC | 48 2B 16 09 */	bl _savegpr_28
/* 81347EC0 | 38 00 00 04 */	li r0, 0x4
/* 81347EC4 | 7C 7C 1B 78 */	mr r28, r3
/* 81347EC8 | 38 C0 00 00 */	li r6, 0x0
/* 81347ECC | 38 80 00 00 */	li r4, 0x0
/* 81347ED0 | 7C 09 03 A6 */	mtctr r0
.L_81347ED4:
/* 81347ED4 | 7C A3 22 14 */	add r5, r3, r4
/* 81347ED8 | 38 84 00 10 */	addi r4, r4, 0x10
/* 81347EDC | 90 C5 00 30 */	stw r6, 0x30(r5)
/* 81347EE0 | 42 00 FF F4 */	bdnz .L_81347ED4
/* 81347EE4 | 3B C0 00 00 */	li r30, 0x0
/* 81347EE8 | 3F E0 00 01 */	lis r31, 0x1
.L_81347EEC:
/* 81347EEC | 7F C3 F3 78 */	mr r3, r30
/* 81347EF0 | 4B FE DA D9 */	bl getController__Q23ipl6SystemFi
/* 81347EF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347EF8 | 7C 7D 1B 78 */	mr r29, r3
/* 81347EFC | 41 82 00 78 */	beq .L_81347F74
/* 81347F00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81347F04 | 38 9F 80 00 */	addi r4, r31, -0x8000
/* 81347F08 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81347F0C | 7D 89 03 A6 */	mtctr r12
/* 81347F10 | 4E 80 04 21 */	bctrl
/* 81347F14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347F18 | 41 82 00 20 */	beq .L_81347F38
/* 81347F1C | 57 C0 20 36 */	slwi r0, r30, 4
/* 81347F20 | 38 A0 00 00 */	li r5, 0x0
/* 81347F24 | 7C 9C 02 14 */	add r4, r28, r0
/* 81347F28 | 7F 83 E3 78 */	mr r3, r28
/* 81347F2C | 90 A4 00 30 */	stw r5, 0x30(r4)
/* 81347F30 | 4B FF FE A5 */	bl callHBM__Q23ipl14HomeButtonMenuFv
/* 81347F34 | 48 00 00 4C */	b .L_81347F80
.L_81347F38:
/* 81347F38 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81347F3C | 7F A3 EB 78 */	mr r3, r29
/* 81347F40 | 3C 80 08 00 */	lis r4, 0x800
/* 81347F44 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81347F48 | 7D 89 03 A6 */	mtctr r12
/* 81347F4C | 4E 80 04 21 */	bctrl
/* 81347F50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81347F54 | 41 82 00 20 */	beq .L_81347F74
/* 81347F58 | 57 C0 20 36 */	slwi r0, r30, 4
/* 81347F5C | 38 A0 00 02 */	li r5, 0x2
/* 81347F60 | 7C 9C 02 14 */	add r4, r28, r0
/* 81347F64 | 7F 83 E3 78 */	mr r3, r28
/* 81347F68 | 90 A4 00 30 */	stw r5, 0x30(r4)
/* 81347F6C | 4B FF FE 69 */	bl callHBM__Q23ipl14HomeButtonMenuFv
/* 81347F70 | 48 00 00 10 */	b .L_81347F80
.L_81347F74:
/* 81347F74 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81347F78 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 81347F7C | 41 80 FF 70 */	blt .L_81347EEC
.L_81347F80:
/* 81347F80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81347F84 | 48 2B 15 8D */	bl _restgpr_28
/* 81347F88 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81347F8C | 7C 08 03 A6 */	mtlr r0
/* 81347F90 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81347F94 | 4E 80 00 20 */	blr
.endfn checkStart__Q23ipl14HomeButtonMenuFv

# .text:0x4C8 | 0x81347F98 | size: 0x320
# ipl::HomeButtonMenu::calc()
.fn calc__Q23ipl14HomeButtonMenuFv, global
/* 81347F98 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81347F9C | 7C 08 02 A6 */	mflr r0
/* 81347FA0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81347FA4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81347FA8 | 48 2B 15 0D */	bl _savegpr_24
/* 81347FAC | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 81347FB0 | 7C 7F 1B 78 */	mr r31, r3
/* 81347FB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347FB8 | 41 82 02 E8 */	beq .L_813482A0
/* 81347FBC | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81347FC0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81347FC4 | 80 85 00 9C */	lwz r4, 0x9c(r5)
/* 81347FC8 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81347FCC | 30 04 FF FF */	subic r0, r4, 0x1
/* 81347FD0 | 7C 00 21 11 */	subfe. r0, r0, r4
/* 81347FD4 | 40 82 01 6C */	bne .L_81348140
/* 81347FD8 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81347FDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347FE0 | 40 82 00 34 */	bne .L_81348014
/* 81347FE4 | 88 03 00 68 */	lbz r0, 0x68(r3)
/* 81347FE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81347FEC | 40 82 00 28 */	bne .L_81348014
/* 81347FF0 | 80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 81347FF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81347FF8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81347FFC | 7D 89 03 A6 */	mtctr r12
/* 81348000 | 4E 80 04 21 */	bctrl
/* 81348004 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81348008 | 40 82 00 0C */	bne .L_81348014
/* 8134800C | 7F E3 FB 78 */	mr r3, r31
/* 81348010 | 4B FF FE 9D */	bl checkStart__Q23ipl14HomeButtonMenuFv
.L_81348014:
/* 81348014 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81348018 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134801C | 41 82 01 68 */	beq .L_81348184
/* 81348020 | 3B 20 00 00 */	li r25, 0x0
/* 81348024 | 3B C0 00 00 */	li r30, 0x0
/* 81348028 | 7F 3B CB 78 */	mr r27, r25
/* 8134802C | 3B 80 00 02 */	li r28, 0x2
/* 81348030 | 7F 3D CB 78 */	mr r29, r25
.L_81348034:
/* 81348034 | 7F 23 CB 78 */	mr r3, r25
/* 81348038 | 4B FE D9 91 */	bl getController__Q23ipl6SystemFi
/* 8134803C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348040 | 7C 78 1B 78 */	mr r24, r3
/* 81348044 | 41 82 00 A8 */	beq .L_813480EC
/* 81348048 | 7F 5F F2 14 */	add r26, r31, r30
/* 8134804C | 93 7A 00 30 */	stw r27, 0x30(r26)
/* 81348050 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81348054 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81348058 | 7D 89 03 A6 */	mtctr r12
/* 8134805C | 4E 80 04 21 */	bctrl
/* 81348060 | 90 7A 00 24 */	stw r3, 0x24(r26)
/* 81348064 | 7F 03 C3 78 */	mr r3, r24
/* 81348068 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 8134806C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81348070 | 7D 89 03 A6 */	mtctr r12
/* 81348074 | 4E 80 04 21 */	bctrl
/* 81348078 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8134807C | 7F 03 C3 78 */	mr r3, r24
/* 81348080 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81348084 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81348088 | D0 1A 00 28 */	stfs f0, 0x28(r26)
/* 8134808C | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81348090 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81348094 | 7D 89 03 A6 */	mtctr r12
/* 81348098 | 4E 80 04 21 */	bctrl
/* 8134809C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813480A0 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 813480A4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813480A8 | 7F 03 C3 78 */	mr r3, r24
/* 813480AC | D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 813480B0 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 813480B4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813480B8 | 7D 89 03 A6 */	mtctr r12
/* 813480BC | 4E 80 04 21 */	bctrl
/* 813480C0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813480C4 | 40 82 00 30 */	bne .L_813480F4
/* 813480C8 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 813480CC | 7F 03 C3 78 */	mr r3, r24
/* 813480D0 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 813480D4 | 7D 89 03 A6 */	mtctr r12
/* 813480D8 | 4E 80 04 21 */	bctrl
/* 813480DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813480E0 | 41 82 00 14 */	beq .L_813480F4
/* 813480E4 | 93 9A 00 30 */	stw r28, 0x30(r26)
/* 813480E8 | 48 00 00 0C */	b .L_813480F4
.L_813480EC:
/* 813480EC | 7C 7F F2 14 */	add r3, r31, r30
/* 813480F0 | 93 A3 00 24 */	stw r29, 0x24(r3)
.L_813480F4:
/* 813480F4 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813480F8 | 3B DE 00 10 */	addi r30, r30, 0x10
/* 813480FC | 2C 19 00 04 */	cmpwi r25, 0x4
/* 81348100 | 41 80 FF 34 */	blt .L_81348034
/* 81348104 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 81348108 | 48 02 96 09 */	bl HBMCalc
/* 8134810C | 7F E3 FB 78 */	mr r3, r31
/* 81348110 | 48 00 02 89 */	bl getSelectBtnNum__Q23ipl14HomeButtonMenuFv
/* 81348114 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81348118 | 40 81 00 6C */	ble .L_81348184
/* 8134811C | 3C 60 81 63 */	lis r3, lbl_81635A70@ha
/* 81348120 | 38 63 5A 70 */	addi r3, r3, lbl_81635A70@l
/* 81348124 | 4C C6 31 82 */	crclr cr1eq
/* 81348128 | 48 1E 65 79 */	bl OSReport
/* 8134812C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81348130 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81348134 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81348138 | 48 00 E7 A1 */	bl reset__Q23ipl12ResetHandlerFv
/* 8134813C | 48 00 00 48 */	b .L_81348184
.L_81348140:
/* 81348140 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81348144 | 38 80 00 00 */	li r4, 0x0
/* 81348148 | 98 83 00 01 */	stb r4, 0x1(r3)
/* 8134814C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81348150 | 40 82 00 34 */	bne .L_81348184
/* 81348154 | 88 03 00 68 */	lbz r0, 0x68(r3)
/* 81348158 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134815C | 40 82 00 28 */	bne .L_81348184
/* 81348160 | 80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 81348164 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81348168 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8134816C | 7D 89 03 A6 */	mtctr r12
/* 81348170 | 4E 80 04 21 */	bctrl
/* 81348174 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81348178 | 40 82 00 0C */	bne .L_81348184
/* 8134817C | 7F E3 FB 78 */	mr r3, r31
/* 81348180 | 4B FF FD 2D */	bl checkStart__Q23ipl14HomeButtonMenuFv
.L_81348184:
/* 81348184 | 88 1F 00 68 */	lbz r0, 0x68(r31)
/* 81348188 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134818C | 41 82 01 14 */	beq .L_813482A0
/* 81348190 | 48 1E DB 09 */	bl OSGetTick
/* 81348194 | 3C 80 80 00 */	lis r4, 0x8000
/* 81348198 | 80 FF 00 6C */	lwz r7, 0x6c(r31)
/* 8134819C | 80 C4 00 F8 */	lwz r6, 0xf8(r4)
/* 813481A0 | 3C 80 43 30 */	lis r4, 0x4330
/* 813481A4 | 88 1F 00 70 */	lbz r0, 0x70(r31)
/* 813481A8 | 38 A0 03 E8 */	li r5, 0x3e8
/* 813481AC | 54 C6 F0 BE */	srwi r6, r6, 2
/* 813481B0 | 7C E7 18 50 */	subf r7, r7, r3
/* 813481B4 | 7C 66 2B 96 */	divwu r3, r6, r5
/* 813481B8 | 7C 00 07 74 */	extsb r0, r0
/* 813481BC | 90 81 00 18 */	stw r4, 0x18(r1)
/* 813481C0 | C8 22 81 68 */	lfd f1, lbl_81694568@sda21(r0)
/* 813481C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813481C8 | 7C 67 1B 96 */	divwu r3, r7, r3
/* 813481CC | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 813481D0 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 813481D4 | EC 60 08 28 */	fsubs f3, f0, f1
/* 813481D8 | 41 82 00 68 */	beq .L_81348240
/* 813481DC | 40 80 00 10 */	bge .L_813481EC
/* 813481E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813481E4 | 40 80 00 14 */	bge .L_813481F8
/* 813481E8 | 48 00 00 B8 */	b .L_813482A0
.L_813481EC:
/* 813481EC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813481F0 | 40 80 00 B0 */	bge .L_813482A0
/* 813481F4 | 48 00 00 70 */	b .L_81348264
.L_813481F8:
/* 813481F8 | C0 42 81 60 */	lfs f2, lbl_81694560@sda21(r0)
/* 813481FC | C0 02 81 5C */	lfs f0, lbl_8169455C@sda21(r0)
/* 81348200 | EC 23 10 24 */	fdivs f1, f3, f2
/* 81348204 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81348208 | FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8134820C | FC 00 00 1E */	fctiwz f0, f0
/* 81348210 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 81348214 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81348218 | 98 1F 00 71 */	stb r0, 0x71(r31)
/* 8134821C | 4C 41 13 82 */	cror eq, gt, eq
/* 81348220 | 40 82 00 80 */	bne .L_813482A0
/* 81348224 | 48 1E DA 75 */	bl OSGetTick
/* 81348228 | 38 80 00 01 */	li r4, 0x1
/* 8134822C | 38 00 00 FF */	li r0, 0xff
/* 81348230 | 90 7F 00 6C */	stw r3, 0x6c(r31)
/* 81348234 | 98 9F 00 70 */	stb r4, 0x70(r31)
/* 81348238 | 98 1F 00 71 */	stb r0, 0x71(r31)
/* 8134823C | 48 00 00 64 */	b .L_813482A0
.L_81348240:
/* 81348240 | C0 02 81 64 */	lfs f0, lbl_81694564@sda21(r0)
/* 81348244 | FC 03 00 40 */	fcmpo cr0, f3, f0
/* 81348248 | 4C 41 13 82 */	cror eq, gt, eq
/* 8134824C | 40 82 00 54 */	bne .L_813482A0
/* 81348250 | 48 1E DA 49 */	bl OSGetTick
/* 81348254 | 38 00 00 02 */	li r0, 0x2
/* 81348258 | 90 7F 00 6C */	stw r3, 0x6c(r31)
/* 8134825C | 98 1F 00 70 */	stb r0, 0x70(r31)
/* 81348260 | 48 00 00 40 */	b .L_813482A0
.L_81348264:
/* 81348264 | C0 42 81 60 */	lfs f2, lbl_81694560@sda21(r0)
/* 81348268 | C0 02 81 5C */	lfs f0, lbl_8169455C@sda21(r0)
/* 8134826C | EC 22 18 28 */	fsubs f1, f2, f3
/* 81348270 | FC 03 10 40 */	fcmpo cr0, f3, f2
/* 81348274 | EC 21 10 24 */	fdivs f1, f1, f2
/* 81348278 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8134827C | FC 00 00 1E */	fctiwz f0, f0
/* 81348280 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 81348284 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81348288 | 98 1F 00 71 */	stb r0, 0x71(r31)
/* 8134828C | 4C 41 13 82 */	cror eq, gt, eq
/* 81348290 | 40 82 00 10 */	bne .L_813482A0
/* 81348294 | 38 00 00 00 */	li r0, 0x0
/* 81348298 | 98 1F 00 71 */	stb r0, 0x71(r31)
/* 8134829C | 98 1F 00 68 */	stb r0, 0x68(r31)
.L_813482A0:
/* 813482A0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813482A4 | 48 2B 12 5D */	bl _restgpr_24
/* 813482A8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813482AC | 7C 08 03 A6 */	mtlr r0
/* 813482B0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813482B4 | 4E 80 00 20 */	blr
.endfn calc__Q23ipl14HomeButtonMenuFv

# .text:0x7E8 | 0x813482B8 | size: 0x60
# ipl::HomeButtonMenu::draw()
.fn draw__Q23ipl14HomeButtonMenuFv, global
/* 813482B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813482BC | 7C 08 02 A6 */	mflr r0
/* 813482C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813482C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813482C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813482CC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813482D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813482D4 | 41 82 00 10 */	beq .L_813482E4
/* 813482D8 | 38 60 00 00 */	li r3, 0x0
/* 813482DC | 48 01 A7 F1 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813482E0 | 48 02 94 61 */	bl HBMDraw
.L_813482E4:
/* 813482E4 | 88 1F 00 68 */	lbz r0, 0x68(r31)
/* 813482E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813482EC | 41 82 00 18 */	beq .L_81348304
/* 813482F0 | 38 60 00 00 */	li r3, 0x0
/* 813482F4 | 48 01 A7 D9 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813482F8 | 88 9F 00 71 */	lbz r4, 0x71(r31)
/* 813482FC | 7F E3 FB 78 */	mr r3, r31
/* 81348300 | 4B FF FA 21 */	bl DrawBanIcon__Q23ipl14HomeButtonMenuFUc
.L_81348304:
/* 81348304 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348308 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134830C | 7C 08 03 A6 */	mtlr r0
/* 81348310 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81348314 | 4E 80 00 20 */	blr
.endfn draw__Q23ipl14HomeButtonMenuFv

# .text:0x848 | 0x81348318 | size: 0x2C
# ipl::HomeButtonMenu::disable()
.fn disable__Q23ipl14HomeButtonMenuFv, global
/* 81348318 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8134831C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81348320 | 41 82 00 14 */	beq .L_81348334
/* 81348324 | 38 00 00 01 */	li r0, 0x1
/* 81348328 | 98 03 00 04 */	stb r0, 0x4(r3)
/* 8134832C | 38 60 00 00 */	li r3, 0x0
/* 81348330 | 4E 80 00 20 */	blr
.L_81348334:
/* 81348334 | 38 00 00 00 */	li r0, 0x0
/* 81348338 | 98 03 00 01 */	stb r0, 0x1(r3)
/* 8134833C | 38 60 00 01 */	li r3, 0x1
/* 81348340 | 4E 80 00 20 */	blr
.endfn disable__Q23ipl14HomeButtonMenuFv

# .text:0x874 | 0x81348344 | size: 0x14
# ipl::HomeButtonMenu::enable()
.fn enable__Q23ipl14HomeButtonMenuFv, global
/* 81348344 | 38 80 00 00 */	li r4, 0x0
/* 81348348 | 38 00 00 01 */	li r0, 0x1
/* 8134834C | 98 83 00 04 */	stb r4, 0x4(r3)
/* 81348350 | 98 03 00 01 */	stb r0, 0x1(r3)
/* 81348354 | 4E 80 00 20 */	blr
.endfn enable__Q23ipl14HomeButtonMenuFv

# .text:0x888 | 0x81348358 | size: 0x2C
# ipl::HomeButtonMenu::disable_byTVRC()
.fn disable_byTVRC__Q23ipl14HomeButtonMenuFv, global
/* 81348358 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8134835C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81348360 | 41 82 00 14 */	beq .L_81348374
/* 81348364 | 38 00 00 01 */	li r0, 0x1
/* 81348368 | 98 03 00 03 */	stb r0, 0x3(r3)
/* 8134836C | 38 60 00 00 */	li r3, 0x0
/* 81348370 | 4E 80 00 20 */	blr
.L_81348374:
/* 81348374 | 38 00 00 00 */	li r0, 0x0
/* 81348378 | 98 03 00 02 */	stb r0, 0x2(r3)
/* 8134837C | 38 60 00 01 */	li r3, 0x1
/* 81348380 | 4E 80 00 20 */	blr
.endfn disable_byTVRC__Q23ipl14HomeButtonMenuFv

# .text:0x8B4 | 0x81348384 | size: 0x14
# ipl::HomeButtonMenu::enable_byTVRC()
.fn enable_byTVRC__Q23ipl14HomeButtonMenuFv, global
/* 81348384 | 38 80 00 00 */	li r4, 0x0
/* 81348388 | 38 00 00 01 */	li r0, 0x1
/* 8134838C | 98 83 00 03 */	stb r4, 0x3(r3)
/* 81348390 | 98 03 00 02 */	stb r0, 0x2(r3)
/* 81348394 | 4E 80 00 20 */	blr
.endfn enable_byTVRC__Q23ipl14HomeButtonMenuFv

# .text:0x8C8 | 0x81348398 | size: 0x54
# ipl::HomeButtonMenu::getSelectBtnNum()
.fn getSelectBtnNum__Q23ipl14HomeButtonMenuFv, global
/* 81348398 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134839C | 7C 08 02 A6 */	mflr r0
/* 813483A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813483A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813483A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813483AC | 48 02 93 9D */	bl HBMGetSelectBtnNum
/* 813483B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813483B4 | 41 80 00 24 */	blt .L_813483D8
/* 813483B8 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 813483BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813483C0 | 41 82 00 10 */	beq .L_813483D0
/* 813483C4 | 38 00 00 00 */	li r0, 0x0
/* 813483C8 | 98 1F 00 04 */	stb r0, 0x4(r31)
/* 813483CC | 98 1F 00 01 */	stb r0, 0x1(r31)
.L_813483D0:
/* 813483D0 | 38 00 00 00 */	li r0, 0x0
/* 813483D4 | 98 1F 00 00 */	stb r0, 0x0(r31)
.L_813483D8:
/* 813483D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813483DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813483E0 | 7C 08 03 A6 */	mtlr r0
/* 813483E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813483E8 | 4E 80 00 20 */	blr
.endfn getSelectBtnNum__Q23ipl14HomeButtonMenuFv

# 0x81635A70..0x81635A88 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x81635A70 | size: 0x12
.obj lbl_81635A70, global
	.string "HBM: Start Reset\n"
.endobj lbl_81635A70

# .data:0x12 | 0x81635A82 | size: 0x6
.obj gap_08_81635A82_data, global
.hidden gap_08_81635A82_data
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_08_81635A82_data

# 0x81694540..0x81694570 | size: 0x30
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694540 | size: 0x4
.obj lbl_81694540, global
	.float 1.3684211
.endobj lbl_81694540

# .sdata2:0x4 | 0x81694544 | size: 0x4
.obj lbl_81694544, global
	.float 1
.endobj lbl_81694544

# .sdata2:0x8 | 0x81694548 | size: 0x1
.obj lbl_81694548, global
	.byte 0xFF
.endobj lbl_81694548

# .sdata2:0x9 | 0x81694549 | size: 0x1
.obj lbl_81694549, global
	.byte 0xFF
.endobj lbl_81694549

# .sdata2:0xA | 0x8169454A | size: 0x1
.obj lbl_8169454A, global
	.byte 0xFF
.endobj lbl_8169454A

# .sdata2:0xB | 0x8169454B | size: 0x1
.obj lbl_8169454B, global
	.byte 0x00
.endobj lbl_8169454B

# .sdata2:0xC | 0x8169454C | size: 0x4
.obj lbl_8169454C, global
	.float -256
.endobj lbl_8169454C

# .sdata2:0x10 | 0x81694550 | size: 0x4
.obj lbl_81694550, global
	.float 188
.endobj lbl_81694550

# .sdata2:0x14 | 0x81694554 | size: 0x4
.obj lbl_81694554, global
	.float -200
.endobj lbl_81694554

# .sdata2:0x18 | 0x81694558 | size: 0x4
.obj lbl_81694558, global
	.float 132
.endobj lbl_81694558

# .sdata2:0x1C | 0x8169455C | size: 0x4
.obj lbl_8169455C, global
	.float 255.9
.endobj lbl_8169455C

# .sdata2:0x20 | 0x81694560 | size: 0x4
.obj lbl_81694560, global
	.float 250
.endobj lbl_81694560

# .sdata2:0x24 | 0x81694564 | size: 0x4
.obj lbl_81694564, global
	.float 1000
.endobj lbl_81694564

# .sdata2:0x28 | 0x81694568 | size: 0x8
.obj lbl_81694568, global
	.double 4503599627370496
.endobj lbl_81694568
