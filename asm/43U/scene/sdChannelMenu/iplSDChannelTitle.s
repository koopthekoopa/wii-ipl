.include "macros.inc"
.file "iplSDChannelTitle.cpp"

# 0x813E4BBC..0x813E947C | size: 0x48C0
.text
.balign 4

# .text:0x0 | 0x813E4BBC | size: 0x1F4
# ipl::scene::SDChannelTitle::SDChannelTitle(EGG::Heap*, int)
.fn __ct__Q33ipl5scene14SDChannelTitleFPQ23EGG4Heapi, global
/* 813E4BBC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E4BC0 | 7C 08 02 A6 */	mflr r0
/* 813E4BC4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E4BC8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E4BCC | 48 21 48 FD */	bl _savegpr_29
/* 813E4BD0 | 7C 7F 1B 78 */	mr r31, r3
/* 813E4BD4 | 7C BD 2B 78 */	mr r29, r5
/* 813E4BD8 | 48 02 66 31 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 813E4BDC | 3C 80 81 65 */	lis r4, lbl_816554F8@ha
/* 813E4BE0 | 3B C0 00 00 */	li r30, 0x0
/* 813E4BE4 | 38 84 54 F8 */	addi r4, r4, lbl_816554F8@l
/* 813E4BE8 | 93 DF 00 58 */	stw r30, 0x58(r31)
/* 813E4BEC | 38 04 00 1C */	addi r0, r4, 0x1c
/* 813E4BF0 | 38 60 00 10 */	li r3, 0x10
/* 813E4BF4 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 813E4BF8 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813E4BFC | 93 DF 00 70 */	stw r30, 0x70(r31)
/* 813E4C00 | 93 DF 00 74 */	stw r30, 0x74(r31)
/* 813E4C04 | 93 DF 00 84 */	stw r30, 0x84(r31)
/* 813E4C08 | 93 DF 00 88 */	stw r30, 0x88(r31)
/* 813E4C0C | 9B DF 00 8C */	stb r30, 0x8c(r31)
/* 813E4C10 | 93 BF 01 3C */	stw r29, 0x13c(r31)
/* 813E4C14 | 93 DF 01 4C */	stw r30, 0x14c(r31)
/* 813E4C18 | 93 DF 01 50 */	stw r30, 0x150(r31)
/* 813E4C1C | 93 DF 01 58 */	stw r30, 0x158(r31)
/* 813E4C20 | 93 DF 01 6C */	stw r30, 0x16c(r31)
/* 813E4C24 | 93 DF 01 7C */	stw r30, 0x17c(r31)
/* 813E4C28 | 93 DF 01 80 */	stw r30, 0x180(r31)
/* 813E4C2C | 93 DF 01 84 */	stw r30, 0x184(r31)
/* 813E4C30 | 48 21 34 6D */	bl __nw__FUl
/* 813E4C34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4C38 | 41 82 00 18 */	beq .L_813E4C50
/* 813E4C3C | 3C 80 81 65 */	lis r4, lbl_816554C4@ha
/* 813E4C40 | 93 C3 00 08 */	stw r30, 0x8(r3)
/* 813E4C44 | 38 84 54 C4 */	addi r4, r4, lbl_816554C4@l
/* 813E4C48 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813E4C4C | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_813E4C50:
/* 813E4C50 | 3B C0 00 00 */	li r30, 0x0
/* 813E4C54 | 90 7F 01 90 */	stw r3, 0x190(r31)
/* 813E4C58 | 38 7F 0A 30 */	addi r3, r31, 0xa30
/* 813E4C5C | 93 DF 01 9C */	stw r30, 0x19c(r31)
/* 813E4C60 | 9B DF 01 A0 */	stb r30, 0x1a0(r31)
/* 813E4C64 | 9B DF 01 A4 */	stb r30, 0x1a4(r31)
/* 813E4C68 | 93 DF 01 A8 */	stw r30, 0x1a8(r31)
/* 813E4C6C | 93 DF 01 AC */	stw r30, 0x1ac(r31)
/* 813E4C70 | 9B DF 01 B0 */	stb r30, 0x1b0(r31)
/* 813E4C74 | 93 DF 01 B4 */	stw r30, 0x1b4(r31)
/* 813E4C78 | 93 DF 01 BC */	stw r30, 0x1bc(r31)
/* 813E4C7C | 93 DF 01 C8 */	stw r30, 0x1c8(r31)
/* 813E4C80 | 9B DF 02 14 */	stb r30, 0x214(r31)
/* 813E4C84 | 93 DF 02 18 */	stw r30, 0x218(r31)
/* 813E4C88 | 48 00 69 65 */	bl iplUnk2_813EB5EC
/* 813E4C8C | 38 00 00 01 */	li r0, 0x1
/* 813E4C90 | 93 DF 34 B4 */	stw r30, 0x34b4(r31)
/* 813E4C94 | 7F A3 EB 78 */	mr r3, r29
/* 813E4C98 | 98 1F 34 B1 */	stb r0, 0x34b1(r31)
/* 813E4C9C | 80 9D 00 9C */	lwz r4, 0x9c(r29)
/* 813E4CA0 | 90 9F 00 64 */	stw r4, 0x64(r31)
/* 813E4CA4 | 80 BD 00 A4 */	lwz r5, 0xa4(r29)
/* 813E4CA8 | 90 BF 00 68 */	stw r5, 0x68(r31)
/* 813E4CAC | 4B FF B2 0D */	bl iplSDChannelSelect_813DFEB8
/* 813E4CB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4CB4 | 41 82 00 14 */	beq .L_813E4CC8
/* 813E4CB8 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 813E4CBC | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 813E4CC0 | 90 7F 02 24 */	stw r3, 0x224(r31)
/* 813E4CC4 | 90 1F 02 20 */	stw r0, 0x220(r31)
.L_813E4CC8:
/* 813E4CC8 | 80 9F 01 3C */	lwz r4, 0x13c(r31)
/* 813E4CCC | 38 61 00 14 */	addi r3, r1, 0x14
/* 813E4CD0 | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813E4CD4 | 80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 813E4CD8 | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813E4CDC | 4B FF BB 09 */	bl iplSDChannelSelect_813E07E4
/* 813E4CE0 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 813E4CE4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E4CE8 | 80 9F 01 3C */	lwz r4, 0x13c(r31)
/* 813E4CEC | D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 813E4CF0 | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813E4CF4 | 4B FF BA F1 */	bl iplSDChannelSelect_813E07E4
/* 813E4CF8 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 813E4CFC | 38 A0 00 00 */	li r5, 0x0
/* 813E4D00 | C0 02 87 68 */	lfs f0, lbl_81694B68@sda21(r0)
/* 813E4D04 | 38 00 00 02 */	li r0, 0x2
/* 813E4D08 | 7C A3 2B 78 */	mr r3, r5
/* 813E4D0C | D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 813E4D10 | D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 813E4D14 | 90 BF 01 5C */	stw r5, 0x15c(r31)
/* 813E4D18 | 90 BF 01 60 */	stw r5, 0x160(r31)
/* 813E4D1C | 90 BF 01 64 */	stw r5, 0x164(r31)
/* 813E4D20 | 90 BF 01 68 */	stw r5, 0x168(r31)
/* 813E4D24 | 7C 09 03 A6 */	mtctr r0
.L_813E4D28:
/* 813E4D28 | 7C 9F 1A 14 */	add r4, r31, r3
/* 813E4D2C | 38 63 00 04 */	addi r3, r3, 0x4
/* 813E4D30 | 90 A4 01 88 */	stw r5, 0x188(r4)
/* 813E4D34 | 42 00 FF F4 */	bdnz .L_813E4D28
/* 813E4D38 | 38 00 00 03 */	li r0, 0x3
/* 813E4D3C | 80 DF 01 3C */	lwz r6, 0x13c(r31)
/* 813E4D40 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813E4D44 | 38 7F 01 D4 */	addi r3, r31, 0x1d4
/* 813E4D48 | 38 80 00 00 */	li r4, 0x0
/* 813E4D4C | 38 A0 00 40 */	li r5, 0x40
/* 813E4D50 | 80 06 01 14 */	lwz r0, 0x114(r6)
/* 813E4D54 | 90 1F 01 D0 */	stw r0, 0x1d0(r31)
/* 813E4D58 | 80 06 01 18 */	lwz r0, 0x118(r6)
/* 813E4D5C | 90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 813E4D60 | 4B F4 B5 D5 */	bl memset
/* 813E4D64 | 3C 60 00 05 */	lis r3, 0x5
/* 813E4D68 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813E4D6C | 38 63 80 00 */	addi r3, r3, -0x8000
/* 813E4D70 | 38 A0 00 06 */	li r5, 0x6
/* 813E4D74 | 48 21 29 01 */	bl fn_815F7674
/* 813E4D78 | 90 7F 00 5C */	stw r3, 0x5c(r31)
/* 813E4D7C | 3C 60 00 01 */	lis r3, 0x1
/* 813E4D80 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813E4D84 | 38 63 81 00 */	subi r3, r3, 0x7f00
/* 813E4D88 | 38 A0 00 06 */	li r5, 0x6
/* 813E4D8C | 48 21 28 E9 */	bl fn_815F7674
/* 813E4D90 | 90 7F 01 50 */	stw r3, 0x150(r31)
/* 813E4D94 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E4D98 | 7F E3 FB 78 */	mr r3, r31
/* 813E4D9C | 48 21 47 79 */	bl _restgpr_29
/* 813E4DA0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E4DA4 | 7C 08 03 A6 */	mtlr r0
/* 813E4DA8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E4DAC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene14SDChannelTitleFPQ23EGG4Heapi

# .text:0x1F4 | 0x813E4DB0 | size: 0x70
# ipl::scene::SDChannelTitle::~SDChannelTitle()
.fn __dt__Q33ipl5scene14SDChannelTitleFv, global
/* 813E4DB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E4DB4 | 7C 08 02 A6 */	mflr r0
/* 813E4DB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4DBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E4DC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E4DC4 | 7C 9F 23 78 */	mr r31, r4
/* 813E4DC8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E4DCC | 7C 7E 1B 78 */	mr r30, r3
/* 813E4DD0 | 41 82 00 34 */	beq .L_813E4E04
/* 813E4DD4 | 38 80 FF FF */	li r4, -0x1
/* 813E4DD8 | 38 63 0A 30 */	addi r3, r3, 0xa30
/* 813E4DDC | 48 00 68 59 */	bl ipl_813EB634
/* 813E4DE0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813E4DE4 | 41 82 00 10 */	beq .L_813E4DF4
/* 813E4DE8 | 7F C3 F3 78 */	mr r3, r30
/* 813E4DEC | 38 80 00 00 */	li r4, 0x0
/* 813E4DF0 | 48 02 4E 75 */	bl __dt__Q33ipl5scene4BaseFv
.L_813E4DF4:
/* 813E4DF4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E4DF8 | 40 81 00 0C */	ble .L_813E4E04
/* 813E4DFC | 7F C3 F3 78 */	mr r3, r30
/* 813E4E00 | 48 21 32 E5 */	bl __dl__FPv
.L_813E4E04:
/* 813E4E04 | 7F C3 F3 78 */	mr r3, r30
/* 813E4E08 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E4E0C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E4E10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E4E14 | 7C 08 03 A6 */	mtlr r0
/* 813E4E18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E4E1C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene14SDChannelTitleFv

# .text:0x264 | 0x813E4E20 | size: 0x4C
.fn iplSDChannelTitle_813E4E20, global
/* 813E4E20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E4E24 | 7C 08 02 A6 */	mflr r0
/* 813E4E28 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E4E2C | 3C A0 81 65 */	lis r5, lbl_8165517C@ha
/* 813E4E30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E4E34 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E4E38 | 38 A5 51 7C */	addi r5, r5, lbl_8165517C@l
/* 813E4E3C | 38 C0 00 00 */	li r6, 0x0
/* 813E4E40 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E4E44 | 7C 7F 1B 78 */	mr r31, r3
/* 813E4E48 | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 813E4E4C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813E4E50 | 4B F5 8A 65 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813E4E54 | 90 7F 01 40 */	stw r3, 0x140(r31)
/* 813E4E58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E4E5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E4E60 | 7C 08 03 A6 */	mtlr r0
/* 813E4E64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E4E68 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E4E20

# .text:0x2B0 | 0x813E4E6C | size: 0x828
.fn iplSDChannelTitle_813E4E6C, global
/* 813E4E6C | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813E4E70 | 7C 08 02 A6 */	mflr r0
/* 813E4E74 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813E4E78 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813E4E7C | 48 21 46 31 */	bl _savegpr_22
/* 813E4E80 | 3F E0 81 65 */	lis r31, lbl_81654F98@ha
/* 813E4E84 | 7C 7E 1B 78 */	mr r30, r3
/* 813E4E88 | 3B FF 4F 98 */	addi r31, r31, lbl_81654F98@l
/* 813E4E8C | 38 60 05 80 */	li r3, 0x580
/* 813E4E90 | 48 21 32 0D */	bl __nw__FUl
/* 813E4E94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4E98 | 41 82 00 18 */	beq .L_813E4EB0
/* 813E4E9C | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E4EA0 | 38 FF 01 F2 */	addi r7, r31, 0x1f2
/* 813E4EA4 | 80 BE 01 40 */	lwz r5, 0x140(r30)
/* 813E4EA8 | 38 CD 8E 70 */	li r6, lbl_81696EB0@sda21
/* 813E4EAC | 4B F8 51 79 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E4EB0:
/* 813E4EB0 | 90 7E 01 44 */	stw r3, 0x144(r30)
/* 813E4EB4 | 48 18 51 01 */	bl SCGetAspectRatio
/* 813E4EB8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813E4EBC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E4EC0 | 40 82 01 3C */	bne .L_813E4FFC
/* 813E4EC4 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E4EC8 | 38 9F 02 0F */	addi r4, r31, 0x20f
/* 813E4ECC | 38 A0 00 01 */	li r5, 0x1
/* 813E4ED0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E4ED4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4ED8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E4EDC | 7D 89 03 A6 */	mtctr r12
/* 813E4EE0 | 4E 80 04 21 */	bctrl
/* 813E4EE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4EE8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813E4EEC | 7D 89 03 A6 */	mtctr r12
/* 813E4EF0 | 4E 80 04 21 */	bctrl
/* 813E4EF4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E4EF8 | 38 A0 00 00 */	li r5, 0x0
/* 813E4EFC | 48 14 2E 31 */	bl fn_81527D2C
/* 813E4F00 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E4F04 | 38 9F 02 1A */	addi r4, r31, 0x21a
/* 813E4F08 | 38 A0 00 01 */	li r5, 0x1
/* 813E4F0C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E4F10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4F14 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E4F18 | 7D 89 03 A6 */	mtctr r12
/* 813E4F1C | 4E 80 04 21 */	bctrl
/* 813E4F20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4F24 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813E4F28 | 7D 89 03 A6 */	mtctr r12
/* 813E4F2C | 4E 80 04 21 */	bctrl
/* 813E4F30 | 38 81 00 28 */	addi r4, r1, 0x28
/* 813E4F34 | 38 A0 00 00 */	li r5, 0x0
/* 813E4F38 | 48 14 2D F5 */	bl fn_81527D2C
/* 813E4F3C | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E4F40 | 38 9F 02 25 */	addi r4, r31, 0x225
/* 813E4F44 | 38 A0 00 01 */	li r5, 0x1
/* 813E4F48 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E4F4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4F50 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E4F54 | 7D 89 03 A6 */	mtctr r12
/* 813E4F58 | 4E 80 04 21 */	bctrl
/* 813E4F5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4F60 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813E4F64 | 7D 89 03 A6 */	mtctr r12
/* 813E4F68 | 4E 80 04 21 */	bctrl
/* 813E4F6C | 38 81 00 48 */	addi r4, r1, 0x48
/* 813E4F70 | 38 A0 00 00 */	li r5, 0x0
/* 813E4F74 | 48 14 2D B9 */	bl fn_81527D2C
/* 813E4F78 | 3B 3F 01 B4 */	addi r25, r31, 0x1b4
/* 813E4F7C | 3A E0 00 00 */	li r23, 0x0
/* 813E4F80 | 3B A0 00 00 */	li r29, 0x0
/* 813E4F84 | 3B 80 00 00 */	li r28, 0x0
.L_813E4F88:
/* 813E4F88 | 3B 41 00 08 */	addi r26, r1, 0x8
/* 813E4F8C | 7F 19 E2 14 */	add r24, r25, r28
/* 813E4F90 | 7F 5A EA 14 */	add r26, r26, r29
/* 813E4F94 | 3A C0 00 00 */	li r22, 0x0
/* 813E4F98 | 3B 60 00 00 */	li r27, 0x0
.L_813E4F9C:
/* 813E4F9C | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E4FA0 | 38 A0 00 01 */	li r5, 0x1
/* 813E4FA4 | 7C 98 D8 2E */	lwzx r4, r24, r27
/* 813E4FA8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E4FAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4FB0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E4FB4 | 7D 89 03 A6 */	mtctr r12
/* 813E4FB8 | 4E 80 04 21 */	bctrl
/* 813E4FBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4FC0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813E4FC4 | 7D 89 03 A6 */	mtctr r12
/* 813E4FC8 | 4E 80 04 21 */	bctrl
/* 813E4FCC | 7F 45 D3 78 */	mr r5, r26
/* 813E4FD0 | 38 80 00 00 */	li r4, 0x0
/* 813E4FD4 | 48 14 2E 49 */	bl fn_81527E1C
/* 813E4FD8 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 813E4FDC | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 813E4FE0 | 2C 16 00 04 */	cmpwi r22, 0x4
/* 813E4FE4 | 41 80 FF B8 */	blt .L_813E4F9C
/* 813E4FE8 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813E4FEC | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 813E4FF0 | 2C 17 00 03 */	cmpwi r23, 0x3
/* 813E4FF4 | 3B BD 00 20 */	addi r29, r29, 0x20
/* 813E4FF8 | 41 80 FF 90 */	blt .L_813E4F88
.L_813E4FFC:
/* 813E4FFC | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E5000 | 38 A0 00 01 */	li r5, 0x1
/* 813E5004 | 80 8D 8E 60 */	lwz r4, lbl_81696EA0@sda21(r0)
/* 813E5008 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E500C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5010 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E5014 | 7D 89 03 A6 */	mtctr r12
/* 813E5018 | 4E 80 04 21 */	bctrl
/* 813E501C | 7C 64 1B 78 */	mr r4, r3
/* 813E5020 | 7F C3 F3 78 */	mr r3, r30
/* 813E5024 | 38 A0 00 A2 */	li r5, 0xa2
/* 813E5028 | 38 C0 00 01 */	li r6, 0x1
/* 813E502C | 48 00 3C E9 */	bl iplSDChannelTitle_813E8D14
/* 813E5030 | 80 DE 01 44 */	lwz r6, 0x144(r30)
/* 813E5034 | 38 6D 8E 60 */	li r3, lbl_81696EA0@sda21
/* 813E5038 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813E503C | 38 A0 00 01 */	li r5, 0x1
/* 813E5040 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813E5044 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5048 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E504C | 7D 89 03 A6 */	mtctr r12
/* 813E5050 | 4E 80 04 21 */	bctrl
/* 813E5054 | 7C 64 1B 78 */	mr r4, r3
/* 813E5058 | 7F C3 F3 78 */	mr r3, r30
/* 813E505C | 38 A0 00 02 */	li r5, 0x2
/* 813E5060 | 38 C0 00 01 */	li r6, 0x1
/* 813E5064 | 48 00 3C B1 */	bl iplSDChannelTitle_813E8D14
/* 813E5068 | 38 00 00 01 */	li r0, 0x1
/* 813E506C | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E5070 | 90 1E 00 88 */	stw r0, 0x88(r30)
/* 813E5074 | 38 C0 00 00 */	li r6, 0x0
/* 813E5078 | 38 E0 00 00 */	li r7, 0x0
/* 813E507C | 80 9F 01 5C */	lwz r4, 0x15c(r31)
/* 813E5080 | 80 BF 00 54 */	lwz r5, 0x54(r31)
/* 813E5084 | 4B F8 54 5D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E5088 | 90 7E 00 90 */	stw r3, 0x90(r30)
/* 813E508C | 3B 5F 01 5C */	addi r26, r31, 0x15c
/* 813E5090 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E5094 | 38 C0 00 00 */	li r6, 0x0
/* 813E5098 | 80 9A 00 04 */	lwz r4, 0x4(r26)
/* 813E509C | 38 E0 00 01 */	li r7, 0x1
/* 813E50A0 | 80 BF 00 54 */	lwz r5, 0x54(r31)
/* 813E50A4 | 4B F8 54 3D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E50A8 | 90 7E 00 94 */	stw r3, 0x94(r30)
/* 813E50AC | 3B 3F 00 54 */	addi r25, r31, 0x54
/* 813E50B0 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E50B4 | 38 C0 00 00 */	li r6, 0x0
/* 813E50B8 | 80 9F 01 5C */	lwz r4, 0x15c(r31)
/* 813E50BC | 38 E0 00 00 */	li r7, 0x0
/* 813E50C0 | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 813E50C4 | 4B F8 54 1D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E50C8 | 90 7E 00 A8 */	stw r3, 0xa8(r30)
/* 813E50CC | 38 C0 00 00 */	li r6, 0x0
/* 813E50D0 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E50D4 | 38 E0 00 01 */	li r7, 0x1
/* 813E50D8 | 80 9A 00 04 */	lwz r4, 0x4(r26)
/* 813E50DC | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 813E50E0 | 4B F8 54 01 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E50E4 | 90 7E 00 AC */	stw r3, 0xac(r30)
/* 813E50E8 | 38 C0 00 00 */	li r6, 0x0
/* 813E50EC | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E50F0 | 38 E0 00 00 */	li r7, 0x0
/* 813E50F4 | 80 9A 00 08 */	lwz r4, 0x8(r26)
/* 813E50F8 | 80 B9 00 08 */	lwz r5, 0x8(r25)
/* 813E50FC | 4B F8 53 E5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E5100 | 90 7E 00 C8 */	stw r3, 0xc8(r30)
/* 813E5104 | 38 C0 00 00 */	li r6, 0x0
/* 813E5108 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E510C | 38 E0 00 00 */	li r7, 0x0
/* 813E5110 | 80 9A 00 08 */	lwz r4, 0x8(r26)
/* 813E5114 | 80 B9 00 0C */	lwz r5, 0xc(r25)
/* 813E5118 | 4B F8 53 C9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E511C | 90 7E 00 E0 */	stw r3, 0xe0(r30)
/* 813E5120 | 38 C0 00 00 */	li r6, 0x0
/* 813E5124 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E5128 | 38 E0 00 00 */	li r7, 0x0
/* 813E512C | 80 9A 00 0C */	lwz r4, 0xc(r26)
/* 813E5130 | 80 B9 00 10 */	lwz r5, 0x10(r25)
/* 813E5134 | 4B F8 53 AD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E5138 | 90 7E 00 FC */	stw r3, 0xfc(r30)
/* 813E513C | 38 C0 00 00 */	li r6, 0x0
/* 813E5140 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E5144 | 38 E0 00 00 */	li r7, 0x0
/* 813E5148 | 80 9A 00 0C */	lwz r4, 0xc(r26)
/* 813E514C | 80 B9 00 14 */	lwz r5, 0x14(r25)
/* 813E5150 | 4B F8 53 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E5154 | 90 7E 01 14 */	stw r3, 0x114(r30)
/* 813E5158 | 38 C0 00 00 */	li r6, 0x0
/* 813E515C | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E5160 | 38 E0 00 00 */	li r7, 0x0
/* 813E5164 | 80 9A 00 10 */	lwz r4, 0x10(r26)
/* 813E5168 | 80 B9 00 10 */	lwz r5, 0x10(r25)
/* 813E516C | 4B F8 53 75 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E5170 | 90 7E 01 00 */	stw r3, 0x100(r30)
/* 813E5174 | 38 C0 00 00 */	li r6, 0x0
/* 813E5178 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E517C | 38 E0 00 00 */	li r7, 0x0
/* 813E5180 | 80 9A 00 10 */	lwz r4, 0x10(r26)
/* 813E5184 | 80 B9 00 14 */	lwz r5, 0x14(r25)
/* 813E5188 | 4B F8 53 59 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E518C | 90 7E 01 18 */	stw r3, 0x118(r30)
/* 813E5190 | 38 C0 00 00 */	li r6, 0x0
/* 813E5194 | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E5198 | 38 E0 00 00 */	li r7, 0x0
/* 813E519C | 80 9A 00 14 */	lwz r4, 0x14(r26)
/* 813E51A0 | 80 B9 00 18 */	lwz r5, 0x18(r25)
/* 813E51A4 | 4B F8 53 3D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E51A8 | 90 7E 01 34 */	stw r3, 0x134(r30)
/* 813E51AC | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E51B0 | 4B F8 54 85 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E51B4 | 38 60 00 10 */	li r3, 0x10
/* 813E51B8 | 48 21 2E E5 */	bl __nw__FUl
/* 813E51BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E51C0 | 7C 7B 1B 78 */	mr r27, r3
/* 813E51C4 | 41 82 00 1C */	beq .L_813E51E0
/* 813E51C8 | 38 00 00 00 */	li r0, 0x0
/* 813E51CC | 3C 80 81 65 */	lis r4, lbl_816554E0@ha
/* 813E51D0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813E51D4 | 38 84 54 E0 */	addi r4, r4, lbl_816554E0@l
/* 813E51D8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813E51DC | 93 C3 00 0C */	stw r30, 0xc(r3)
.L_813E51E0:
/* 813E51E0 | 38 60 00 34 */	li r3, 0x34
/* 813E51E4 | 48 21 2E B9 */	bl __nw__FUl
/* 813E51E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E51EC | 7C 79 1B 78 */	mr r25, r3
/* 813E51F0 | 41 82 00 84 */	beq .L_813E5274
/* 813E51F4 | 80 BE 01 44 */	lwz r5, 0x144(r30)
/* 813E51F8 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813E51FC | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813E5200 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813E5204 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813E5208 | 38 00 00 00 */	li r0, 0x0
/* 813E520C | 3B 45 02 98 */	addi r26, r5, 0x298
/* 813E5210 | 93 63 00 04 */	stw r27, 0x4(r3)
/* 813E5214 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813E5218 | 41 82 00 1C */	beq .L_813E5234
/* 813E521C | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813E5220 | 7F 63 DB 78 */	mr r3, r27
/* 813E5224 | 7F 24 CB 78 */	mr r4, r25
/* 813E5228 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E522C | 7D 89 03 A6 */	mtctr r12
/* 813E5230 | 4E 80 04 21 */	bctrl
.L_813E5234:
/* 813E5234 | 38 79 00 08 */	addi r3, r25, 0x8
/* 813E5238 | 38 80 00 08 */	li r4, 0x8
/* 813E523C | 48 12 CE 21 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813E5240 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813E5244 | 38 79 00 18 */	addi r3, r25, 0x18
/* 813E5248 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813E524C | 38 80 00 08 */	li r4, 0x8
/* 813E5250 | 90 B9 00 00 */	stw r5, 0x0(r25)
/* 813E5254 | 93 59 00 24 */	stw r26, 0x24(r25)
/* 813E5258 | 48 12 CE 05 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813E525C | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 813E5260 | 38 00 00 00 */	li r0, 0x0
/* 813E5264 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 813E5268 | 90 79 00 00 */	stw r3, 0x0(r25)
/* 813E526C | 90 19 00 2C */	stw r0, 0x2c(r25)
/* 813E5270 | 98 19 00 30 */	stb r0, 0x30(r25)
.L_813E5274:
/* 813E5274 | 93 3E 01 48 */	stw r25, 0x148(r30)
/* 813E5278 | 7F 23 CB 78 */	mr r3, r25
/* 813E527C | 80 9E 01 44 */	lwz r4, 0x144(r30)
/* 813E5280 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 813E5284 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813E5288 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813E528C | 7D 89 03 A6 */	mtctr r12
/* 813E5290 | 4E 80 04 21 */	bctrl
/* 813E5294 | 80 7E 01 48 */	lwz r3, 0x148(r30)
/* 813E5298 | 38 80 00 00 */	li r4, 0x0
/* 813E529C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E52A0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813E52A4 | 7D 89 03 A6 */	mtctr r12
/* 813E52A8 | 4E 80 04 21 */	bctrl
/* 813E52AC | 80 7E 01 44 */	lwz r3, 0x144(r30)
/* 813E52B0 | 38 A0 00 01 */	li r5, 0x1
/* 813E52B4 | 80 8D 8E 00 */	lwz r4, lbl_81696E40@sda21(r0)
/* 813E52B8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E52BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E52C0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E52C4 | 7D 89 03 A6 */	mtctr r12
/* 813E52C8 | 4E 80 04 21 */	bctrl
/* 813E52CC | 7C 64 1B 78 */	mr r4, r3
/* 813E52D0 | 80 7E 01 48 */	lwz r3, 0x148(r30)
/* 813E52D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E52D8 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813E52DC | 7D 89 03 A6 */	mtctr r12
/* 813E52E0 | 4E 80 04 21 */	bctrl
/* 813E52E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E52E8 | 38 80 00 01 */	li r4, 0x1
/* 813E52EC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813E52F0 | 7D 89 03 A6 */	mtctr r12
/* 813E52F4 | 4E 80 04 21 */	bctrl
/* 813E52F8 | 80 DE 01 44 */	lwz r6, 0x144(r30)
/* 813E52FC | 38 6D 8E 00 */	li r3, lbl_81696E40@sda21
/* 813E5300 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813E5304 | 38 A0 00 01 */	li r5, 0x1
/* 813E5308 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813E530C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5310 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E5314 | 7D 89 03 A6 */	mtctr r12
/* 813E5318 | 4E 80 04 21 */	bctrl
/* 813E531C | 7C 64 1B 78 */	mr r4, r3
/* 813E5320 | 80 7E 01 48 */	lwz r3, 0x148(r30)
/* 813E5324 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5328 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813E532C | 7D 89 03 A6 */	mtctr r12
/* 813E5330 | 4E 80 04 21 */	bctrl
/* 813E5334 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5338 | 38 80 00 01 */	li r4, 0x1
/* 813E533C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813E5340 | 7D 89 03 A6 */	mtctr r12
/* 813E5344 | 4E 80 04 21 */	bctrl
/* 813E5348 | 38 60 05 80 */	li r3, 0x580
/* 813E534C | 48 21 2D 51 */	bl __nw__FUl
/* 813E5350 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5354 | 41 82 00 18 */	beq .L_813E536C
/* 813E5358 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E535C | 38 FF 02 30 */	addi r7, r31, 0x230
/* 813E5360 | 80 BE 01 40 */	lwz r5, 0x140(r30)
/* 813E5364 | 38 CD 8E 70 */	li r6, lbl_81696EB0@sda21
/* 813E5368 | 4B F8 4C BD */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E536C:
/* 813E536C | 90 7E 01 54 */	stw r3, 0x154(r30)
/* 813E5370 | 38 9F 02 4C */	addi r4, r31, 0x24c
/* 813E5374 | 38 A0 00 01 */	li r5, 0x1
/* 813E5378 | 4B F8 4F F5 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E537C | 80 7E 01 54 */	lwz r3, 0x154(r30)
/* 813E5380 | 38 9F 02 6F */	addi r4, r31, 0x26f
/* 813E5384 | 38 BF 02 94 */	addi r5, r31, 0x294
/* 813E5388 | 38 C0 00 00 */	li r6, 0x0
/* 813E538C | 38 E0 00 01 */	li r7, 0x1
/* 813E5390 | 4B F8 51 51 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E5394 | 80 7E 01 54 */	lwz r3, 0x154(r30)
/* 813E5398 | 38 9F 02 9F */	addi r4, r31, 0x29f
/* 813E539C | 38 AD 8E 74 */	li r5, lbl_81696EB4@sda21
/* 813E53A0 | 38 C0 00 00 */	li r6, 0x0
/* 813E53A4 | 38 E0 00 01 */	li r7, 0x1
/* 813E53A8 | 4B F8 51 39 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E53AC | 80 7E 01 54 */	lwz r3, 0x154(r30)
/* 813E53B0 | 38 9F 02 BF */	addi r4, r31, 0x2bf
/* 813E53B4 | 38 AD 8E 7B */	li r5, lbl_81696EBB@sda21
/* 813E53B8 | 38 C0 00 00 */	li r6, 0x0
/* 813E53BC | 38 E0 00 01 */	li r7, 0x1
/* 813E53C0 | 4B F8 51 21 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E53C4 | 80 7E 01 54 */	lwz r3, 0x154(r30)
/* 813E53C8 | 4B F8 52 6D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E53CC | 80 7E 01 54 */	lwz r3, 0x154(r30)
/* 813E53D0 | 38 9F 02 E0 */	addi r4, r31, 0x2e0
/* 813E53D4 | 38 A0 00 01 */	li r5, 0x1
/* 813E53D8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E53DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E53E0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E53E4 | 7D 89 03 A6 */	mtctr r12
/* 813E53E8 | 4E 80 04 21 */	bctrl
/* 813E53EC | 4B F6 0A 79 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813E53F0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813E53F4 | 7C 76 1B 78 */	mr r22, r3
/* 813E53F8 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813E53FC | 38 80 00 AD */	li r4, 0xad
/* 813E5400 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813E5404 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813E5408 | 4B F5 93 B5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813E540C | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 813E5410 | 7C 64 1B 78 */	mr r4, r3
/* 813E5414 | 7E C3 B3 78 */	mr r3, r22
/* 813E5418 | 38 A0 00 00 */	li r5, 0x0
/* 813E541C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813E5420 | 7D 89 03 A6 */	mtctr r12
/* 813E5424 | 4E 80 04 21 */	bctrl
/* 813E5428 | 7F C3 F3 78 */	mr r3, r30
/* 813E542C | 48 00 0E E1 */	bl iplSDChannelTitle_813E630C
/* 813E5430 | 38 60 00 30 */	li r3, 0x30
/* 813E5434 | 48 21 2C 69 */	bl __nw__FUl
/* 813E5438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E543C | 41 82 00 10 */	beq .L_813E544C
/* 813E5440 | 3C 80 81 64 */	lis r4, "__vt__Q33ipl4math14HermiteIntp<f>"@ha
/* 813E5444 | 38 84 12 68 */	addi r4, r4, "__vt__Q33ipl4math14HermiteIntp<f>"@l
/* 813E5448 | 90 83 00 00 */	stw r4, 0x0(r3)
.L_813E544C:
/* 813E544C | C0 42 87 68 */	lfs f2, lbl_81694B68@sda21(r0)
/* 813E5450 | 38 8D 8E 68 */	li r4, lbl_81696EA8@sda21
/* 813E5454 | 90 7E 01 38 */	stw r3, 0x138(r30)
/* 813E5458 | 38 AD 8E 6C */	li r5, lbl_81696EAC@sda21
/* 813E545C | FC 60 10 90 */	fmr f3, f2
/* 813E5460 | C0 22 87 6C */	lfs f1, lbl_81694B6C@sda21(r0)
/* 813E5464 | C0 82 87 70 */	lfs f4, lbl_81694B70@sda21(r0)
/* 813E5468 | 38 C0 00 00 */	li r6, 0x0
/* 813E546C | 4B F7 E7 E5 */	bl "init__Q33ipl4math14HermiteIntp<f>FRCfRCffffif"
/* 813E5470 | 80 9E 01 38 */	lwz r4, 0x138(r30)
/* 813E5474 | 38 00 00 00 */	li r0, 0x0
/* 813E5478 | 3F 20 81 09 */	lis r25, smArg__Q23ipl6System@ha
/* 813E547C | 38 60 00 34 */	li r3, 0x34
/* 813E5480 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 813E5484 | 3B 39 90 08 */	addi r25, r25, smArg__Q23ipl6System@l
/* 813E5488 | 38 A0 00 20 */	li r5, 0x20
/* 813E548C | 80 99 00 2C */	lwz r4, 0x2c(r25)
/* 813E5490 | 48 21 2C 21 */	bl __nw__FUlPQ23EGG4Heapi
/* 813E5494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5498 | 7C 7A 1B 78 */	mr r26, r3
/* 813E549C | 41 82 00 38 */	beq .L_813E54D4
/* 813E54A0 | 83 79 00 2C */	lwz r27, 0x2c(r25)
/* 813E54A4 | 4B F5 04 F1 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813E54A8 | A3 23 00 06 */	lhz r25, 0x6(r3)
/* 813E54AC | 4B F5 04 E9 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813E54B0 | A0 E3 00 04 */	lhz r7, 0x4(r3)
/* 813E54B4 | 7F 43 D3 78 */	mr r3, r26
/* 813E54B8 | 7F 64 DB 78 */	mr r4, r27
/* 813E54BC | 7F 28 CB 78 */	mr r8, r25
/* 813E54C0 | 38 A0 00 00 */	li r5, 0x0
/* 813E54C4 | 38 C0 00 00 */	li r6, 0x0
/* 813E54C8 | 39 20 00 04 */	li r9, 0x4
/* 813E54CC | 4B F7 DD DD */	bl __ct__Q33ipl7utility7CaptureFPQ23EGG4Heapiiii9_GXTexFmt
/* 813E54D0 | 7C 7A 1B 78 */	mr r26, r3
.L_813E54D4:
/* 813E54D4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E54D8 | 93 5E 01 94 */	stw r26, 0x194(r30)
/* 813E54DC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E54E0 | 3C 60 00 02 */	lis r3, 0x2
/* 813E54E4 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813E54E8 | 38 A0 00 06 */	li r5, 0x6
/* 813E54EC | 48 21 21 89 */	bl fn_815F7674
/* 813E54F0 | 90 7E 00 60 */	stw r3, 0x60(r30)
/* 813E54F4 | 7C 64 1B 78 */	mr r4, r3
/* 813E54F8 | 38 60 00 34 */	li r3, 0x34
/* 813E54FC | 38 A0 00 20 */	li r5, 0x20
/* 813E5500 | 48 21 2B B1 */	bl __nw__FUlPQ23EGG4Heapi
/* 813E5504 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5508 | 7C 78 1B 78 */	mr r24, r3
/* 813E550C | 41 82 00 84 */	beq .L_813E5590
/* 813E5510 | 48 18 4A A5 */	bl SCGetAspectRatio
/* 813E5514 | 3F 20 81 61 */	lis r25, lbl_81610918@ha
/* 813E5518 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813E551C | 3B 39 09 18 */	addi r25, r25, lbl_81610918@l
/* 813E5520 | 7F 59 02 14 */	add r26, r25, r0
/* 813E5524 | 48 18 4A 91 */	bl SCGetAspectRatio
/* 813E5528 | 54 7D 1D 78 */	clrlslwi r29, r3, 24, 3
/* 813E552C | 4B F5 04 69 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813E5530 | A3 63 00 06 */	lhz r27, 0x6(r3)
/* 813E5534 | 48 18 4A 81 */	bl SCGetAspectRatio
/* 813E5538 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813E553C | 7C 79 02 14 */	add r3, r25, r0
/* 813E5540 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813E5544 | 7C 00 D8 50 */	subf r0, r0, r27
/* 813E5548 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 813E554C | 7F 80 01 94 */	addze r28, r0
/* 813E5550 | 4B F5 04 45 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813E5554 | A3 63 00 04 */	lhz r27, 0x4(r3)
/* 813E5558 | 48 18 4A 5D */	bl SCGetAspectRatio
/* 813E555C | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813E5560 | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813E5564 | 7C 19 00 2E */	lwzx r0, r25, r0
/* 813E5568 | 7F 03 C3 78 */	mr r3, r24
/* 813E556C | 7C F9 E8 2E */	lwzx r7, r25, r29
/* 813E5570 | 7F 86 E3 78 */	mr r6, r28
/* 813E5574 | 7C 00 D8 50 */	subf r0, r0, r27
/* 813E5578 | 81 1A 00 04 */	lwz r8, 0x4(r26)
/* 813E557C | 7C 00 0E 70 */	srawi r0, r0, 1
/* 813E5580 | 39 20 00 04 */	li r9, 0x4
/* 813E5584 | 7C A0 01 94 */	addze r5, r0
/* 813E5588 | 4B F7 DD 21 */	bl __ct__Q33ipl7utility7CaptureFPQ23EGG4Heapiiii9_GXTexFmt
/* 813E558C | 7C 78 1B 78 */	mr r24, r3
.L_813E5590:
/* 813E5590 | 93 1E 01 98 */	stw r24, 0x198(r30)
/* 813E5594 | 3B 18 00 14 */	addi r24, r24, 0x14
/* 813E5598 | 80 7E 01 54 */	lwz r3, 0x154(r30)
/* 813E559C | 38 9F 02 ED */	addi r4, r31, 0x2ed
/* 813E55A0 | 38 A0 00 01 */	li r5, 0x1
/* 813E55A4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E55A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E55AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E55B0 | 7D 89 03 A6 */	mtctr r12
/* 813E55B4 | 4E 80 04 21 */	bctrl
/* 813E55B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E55BC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813E55C0 | 7D 89 03 A6 */	mtctr r12
/* 813E55C4 | 4E 80 04 21 */	bctrl
/* 813E55C8 | 7F 05 C3 78 */	mr r5, r24
/* 813E55CC | 38 80 00 01 */	li r4, 0x1
/* 813E55D0 | 48 14 28 4D */	bl fn_81527E1C
/* 813E55D4 | 80 7E 01 54 */	lwz r3, 0x154(r30)
/* 813E55D8 | 38 9F 02 F8 */	addi r4, r31, 0x2f8
/* 813E55DC | 80 DE 01 98 */	lwz r6, 0x198(r30)
/* 813E55E0 | 38 A0 00 01 */	li r5, 0x1
/* 813E55E4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E55E8 | 3B 06 00 14 */	addi r24, r6, 0x14
/* 813E55EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E55F0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E55F4 | 7D 89 03 A6 */	mtctr r12
/* 813E55F8 | 4E 80 04 21 */	bctrl
/* 813E55FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5600 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813E5604 | 7D 89 03 A6 */	mtctr r12
/* 813E5608 | 4E 80 04 21 */	bctrl
/* 813E560C | 7F 05 C3 78 */	mr r5, r24
/* 813E5610 | 38 80 00 01 */	li r4, 0x1
/* 813E5614 | 48 14 28 09 */	bl fn_81527E1C
/* 813E5618 | 3C 60 00 01 */	lis r3, 0x1
/* 813E561C | 38 00 00 02 */	li r0, 0x2
/* 813E5620 | 38 83 8C A0 */	subi r4, r3, 0x7360
/* 813E5624 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E5628 | 7F C3 F3 78 */	mr r3, r30
/* 813E562C | 90 9E 01 B8 */	stw r4, 0x1b8(r30)
/* 813E5630 | 90 9E 01 B4 */	stw r4, 0x1b4(r30)
/* 813E5634 | 48 00 23 7D */	bl iplSDChannelTitle_813E79B0
/* 813E5638 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813E563C | 3C 60 00 08 */	lis r3, 0x8
/* 813E5640 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813E5644 | 38 A0 00 06 */	li r5, 0x6
/* 813E5648 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813E564C | 48 21 20 29 */	bl fn_815F7674
/* 813E5650 | 90 7E 01 C0 */	stw r3, 0x1c0(r30)
/* 813E5654 | 3C 60 00 08 */	lis r3, 0x8
/* 813E5658 | 38 A0 00 06 */	li r5, 0x6
/* 813E565C | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813E5660 | 48 21 20 15 */	bl fn_815F7674
/* 813E5664 | 90 7E 01 C4 */	stw r3, 0x1c4(r30)
/* 813E5668 | 38 7E 0A 30 */	addi r3, r30, 0xa30
/* 813E566C | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813E5670 | 80 BE 01 40 */	lwz r5, 0x140(r30)
/* 813E5674 | 80 DE 01 3C */	lwz r6, 0x13c(r30)
/* 813E5678 | 48 00 60 19 */	bl ipl_813EB690
/* 813E567C | 39 61 00 90 */	addi r11, r1, 0x90
/* 813E5680 | 48 21 3E 79 */	bl _restgpr_22
/* 813E5684 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813E5688 | 7C 08 03 A6 */	mtlr r0
/* 813E568C | 38 21 00 90 */	addi r1, r1, 0x90
/* 813E5690 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E4E6C

# .text:0xAD8 | 0x813E5694 | size: 0x150
.fn iplSDChannelTitle_813E5694, global
/* 813E5694 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E5698 | 7C 08 02 A6 */	mflr r0
/* 813E569C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E56A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E56A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813E56A8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E56AC | 80 63 01 48 */	lwz r3, 0x148(r3)
/* 813E56B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E56B4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813E56B8 | 7D 89 03 A6 */	mtctr r12
/* 813E56BC | 4E 80 04 21 */	bctrl
/* 813E56C0 | 80 7F 01 44 */	lwz r3, 0x144(r31)
/* 813E56C4 | 4B F8 50 41 */	bl calc__Q33ipl6layout6ObjectFv
/* 813E56C8 | 80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 813E56CC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E56D0 | 40 82 00 0C */	bne .L_813E56DC
/* 813E56D4 | 7F E3 FB 78 */	mr r3, r31
/* 813E56D8 | 48 00 25 35 */	bl iplSDChannelTitle_813E7C0C
.L_813E56DC:
/* 813E56DC | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813E56E0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813E56E4 | 41 82 00 18 */	beq .L_813E56FC
/* 813E56E8 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 813E56EC | 41 82 00 10 */	beq .L_813E56FC
/* 813E56F0 | 38 03 FF FC */	subi r0, r3, 0x4
/* 813E56F4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E56F8 | 41 81 00 6C */	bgt .L_813E5764
.L_813E56FC:
/* 813E56FC | 88 1F 00 8C */	lbz r0, 0x8c(r31)
/* 813E5700 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E5704 | 40 82 00 60 */	bne .L_813E5764
/* 813E5708 | 80 7F 01 74 */	lwz r3, 0x174(r31)
/* 813E570C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5710 | 41 82 00 54 */	beq .L_813E5764
/* 813E5714 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E5718 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E571C | 41 82 00 48 */	beq .L_813E5764
/* 813E5720 | 83 DF 01 78 */	lwz r30, 0x178(r31)
/* 813E5724 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813E5728 | 41 82 00 18 */	beq .L_813E5740
/* 813E572C | 7F C3 F3 78 */	mr r3, r30
/* 813E5730 | 4B F7 D1 41 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E5734 | 38 00 00 01 */	li r0, 0x1
/* 813E5738 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813E573C | 48 00 00 20 */	b .L_813E575C
.L_813E5740:
/* 813E5740 | 83 DF 01 70 */	lwz r30, 0x170(r31)
/* 813E5744 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813E5748 | 41 82 00 14 */	beq .L_813E575C
/* 813E574C | 7F C3 F3 78 */	mr r3, r30
/* 813E5750 | 4B F7 D1 21 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E5754 | 38 00 00 01 */	li r0, 0x1
/* 813E5758 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813E575C:
/* 813E575C | 38 00 00 00 */	li r0, 0x0
/* 813E5760 | 90 1F 01 74 */	stw r0, 0x174(r31)
.L_813E5764:
/* 813E5764 | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 813E5768 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813E576C | 40 82 00 38 */	bne .L_813E57A4
/* 813E5770 | 88 1F 01 A4 */	lbz r0, 0x1a4(r31)
/* 813E5774 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E5778 | 40 82 00 2C */	bne .L_813E57A4
/* 813E577C | 80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 813E5780 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E5784 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E5788 | 41 82 00 1C */	beq .L_813E57A4
/* 813E578C | 83 DF 00 A8 */	lwz r30, 0xa8(r31)
/* 813E5790 | 7F C3 F3 78 */	mr r3, r30
/* 813E5794 | 4B F7 D0 DD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E5798 | 38 00 00 01 */	li r0, 0x1
/* 813E579C | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813E57A0 | 98 1F 01 A4 */	stb r0, 0x1a4(r31)
.L_813E57A4:
/* 813E57A4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 813E57A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E57AC | 41 82 00 08 */	beq .L_813E57B4
/* 813E57B0 | 4B F8 4F 55 */	bl calc__Q33ipl6layout6ObjectFv
.L_813E57B4:
/* 813E57B4 | 80 7F 01 4C */	lwz r3, 0x14c(r31)
/* 813E57B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E57BC | 41 82 00 08 */	beq .L_813E57C4
/* 813E57C0 | 4B F8 4F 45 */	bl calc__Q33ipl6layout6ObjectFv
.L_813E57C4:
/* 813E57C4 | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E57C8 | 4B F8 4F 3D */	bl calc__Q33ipl6layout6ObjectFv
/* 813E57CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E57D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E57D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E57D8 | 7C 08 03 A6 */	mtlr r0
/* 813E57DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E57E0 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E5694

# .text:0xC28 | 0x813E57E4 | size: 0xBC
.fn iplSDChannelTitle_813E57E4, global
/* 813E57E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E57E8 | 7C 08 02 A6 */	mflr r0
/* 813E57EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E57F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E57F4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E57F8 | 7C 7E 1B 78 */	mr r30, r3
/* 813E57FC | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813E5800 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E5804 | 40 82 00 10 */	bne .L_813E5814
/* 813E5808 | 48 00 21 A9 */	bl iplSDChannelTitle_813E79B0
/* 813E580C | 38 60 00 00 */	li r3, 0x0
/* 813E5810 | 48 00 00 78 */	b .L_813E5888
.L_813E5814:
/* 813E5814 | 80 83 01 38 */	lwz r4, 0x138(r3)
/* 813E5818 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813E581C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E5820 | 41 82 00 50 */	beq .L_813E5870
/* 813E5824 | 48 00 28 11 */	bl iplSDChannelTitle_813E8034
/* 813E5828 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E582C | 38 80 00 24 */	li r4, 0x24
/* 813E5830 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E5834 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813E5838 | 48 02 59 01 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E583C | 80 9E 01 90 */	lwz r4, 0x190(r30)
/* 813E5840 | 7C 7F 1B 78 */	mr r31, r3
/* 813E5844 | 48 00 49 49 */	bl iplSDChannelButton_813EA18C
/* 813E5848 | 7F E3 FB 78 */	mr r3, r31
/* 813E584C | 38 80 00 0D */	li r4, 0xd
/* 813E5850 | 48 00 4A 05 */	bl iplSDChannelButton_813EA254
/* 813E5854 | 7F E3 FB 78 */	mr r3, r31
/* 813E5858 | 38 80 00 0E */	li r4, 0xe
/* 813E585C | 48 00 49 F9 */	bl iplSDChannelButton_813EA254
/* 813E5860 | 38 00 00 01 */	li r0, 0x1
/* 813E5864 | 38 60 00 01 */	li r3, 0x1
/* 813E5868 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E586C | 48 00 00 1C */	b .L_813E5888
.L_813E5870:
/* 813E5870 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 813E5874 | 7C 83 23 78 */	mr r3, r4
/* 813E5878 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E587C | 7D 89 03 A6 */	mtctr r12
/* 813E5880 | 4E 80 04 21 */	bctrl
/* 813E5884 | 38 60 00 00 */	li r3, 0x0
.L_813E5888:
/* 813E5888 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E588C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E5890 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E5894 | 7C 08 03 A6 */	mtlr r0
/* 813E5898 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E589C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E57E4

# .text:0xCE4 | 0x813E58A0 | size: 0x1B0
.fn iplSDChannelTitle_813E58A0, global
/* 813E58A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E58A4 | 7C 08 02 A6 */	mflr r0
/* 813E58A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E58AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E58B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813E58B4 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813E58B8 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813E58BC | 41 81 01 14 */	bgt .L_813E59D0
/* 813E58C0 | 3C 80 81 65 */	lis r4, jumptable_8165529C@ha
/* 813E58C4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E58C8 | 38 84 52 9C */	addi r4, r4, jumptable_8165529C@l
/* 813E58CC | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813E58D0 | 7C 89 03 A6 */	mtctr r4
/* 813E58D4 | 4E 80 04 20 */	bctr
.L_813E58D8:
/* 813E58D8 | 48 00 0C FD */	bl iplSDChannelTitle_813E65D4
/* 813E58DC | 48 00 00 F4 */	b .L_813E59D0
.L_813E58E0:
/* 813E58E0 | 80 83 00 70 */	lwz r4, 0x70(r3)
/* 813E58E4 | 48 00 31 3D */	bl iplSDChannelTitle_813E8A20
/* 813E58E8 | 38 00 00 05 */	li r0, 0x5
/* 813E58EC | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E58F0 | 48 00 00 E0 */	b .L_813E59D0
.L_813E58F4:
/* 813E58F4 | 48 00 0E 6D */	bl iplSDChannelTitle_813E6760
/* 813E58F8 | 48 00 00 D8 */	b .L_813E59D0
.L_813E58FC:
/* 813E58FC | 48 00 10 71 */	bl iplSDChannelTitle_813E696C
/* 813E5900 | 48 00 00 D0 */	b .L_813E59D0
.L_813E5904:
/* 813E5904 | 48 00 21 15 */	bl iplSDChannelTitle_813E7A18
/* 813E5908 | 48 00 00 C8 */	b .L_813E59D0
.L_813E590C:
/* 813E590C | 48 00 10 A9 */	bl iplSDChannelTitle_813E69B4
/* 813E5910 | 48 00 00 C0 */	b .L_813E59D0
.L_813E5914:
/* 813E5914 | 48 00 12 75 */	bl iplSDChannelTitle_813E6B88
/* 813E5918 | 48 00 00 B8 */	b .L_813E59D0
.L_813E591C:
/* 813E591C | 48 00 1F 61 */	bl iplSDChannelTitle_813E787C
/* 813E5920 | 48 00 00 B0 */	b .L_813E59D0
.L_813E5924:
/* 813E5924 | 38 60 00 00 */	li r3, 0x0
/* 813E5928 | 48 00 01 14 */	b .L_813E5A3C
.L_813E592C:
/* 813E592C | 48 00 17 49 */	bl iplSDChannelTitle_813E7074
/* 813E5930 | 48 00 00 A0 */	b .L_813E59D0
.L_813E5934:
/* 813E5934 | 48 00 18 71 */	bl iplSDChannelTitle_813E71A4
/* 813E5938 | 48 00 00 98 */	b .L_813E59D0
.L_813E593C:
/* 813E593C | 80 63 02 20 */	lwz r3, 0x220(r3)
/* 813E5940 | 80 9F 02 24 */	lwz r4, 0x224(r31)
/* 813E5944 | 48 18 4F C9 */	bl fn_8156A90C
/* 813E5948 | 38 60 00 00 */	li r3, 0x0
/* 813E594C | 48 18 40 71 */	bl fn_815699BC
/* 813E5950 | 38 00 00 12 */	li r0, 0x12
/* 813E5954 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E5958 | 48 00 00 78 */	b .L_813E59D0
.L_813E595C:
/* 813E595C | 48 18 29 E9 */	bl fn_81568344
/* 813E5960 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813E5964 | 41 82 00 6C */	beq .L_813E59D0
/* 813E5968 | 38 00 00 15 */	li r0, 0x15
/* 813E596C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E5970 | 48 00 00 60 */	b .L_813E59D0
.L_813E5974:
/* 813E5974 | 48 00 13 59 */	bl iplSDChannelTitle_813E6CCC
/* 813E5978 | 48 00 00 58 */	b .L_813E59D0
.L_813E597C:
/* 813E597C | 48 00 14 A9 */	bl iplSDChannelTitle_813E6E24
/* 813E5980 | 48 00 00 50 */	b .L_813E59D0
.L_813E5984:
/* 813E5984 | 48 00 16 31 */	bl iplSDChannelTitle_813E6FB4
/* 813E5988 | 48 00 00 48 */	b .L_813E59D0
.L_813E598C:
/* 813E598C | 48 00 18 C1 */	bl iplSDChannelTitle_813E724C
/* 813E5990 | 48 00 00 40 */	b .L_813E59D0
.L_813E5994:
/* 813E5994 | 48 00 19 25 */	bl iplSDChannelTitle_813E72B8
/* 813E5998 | 48 00 00 38 */	b .L_813E59D0
.L_813E599C:
/* 813E599C | 48 00 1D 2D */	bl iplSDChannelTitle_813E76C8
/* 813E59A0 | 48 00 00 30 */	b .L_813E59D0
.L_813E59A4:
/* 813E59A4 | 48 00 1D DD */	bl iplSDChannelTitle_813E7780
/* 813E59A8 | 48 00 00 28 */	b .L_813E59D0
.L_813E59AC:
/* 813E59AC | 48 00 1A 6D */	bl iplSDChannelTitle_813E7418
/* 813E59B0 | 48 00 00 20 */	b .L_813E59D0
.L_813E59B4:
/* 813E59B4 | 48 00 1A E5 */	bl iplSDChannelTitle_813E7498
/* 813E59B8 | 48 00 00 18 */	b .L_813E59D0
.L_813E59BC:
/* 813E59BC | 48 00 1E 45 */	bl iplSDChannelTitle_813E7800
/* 813E59C0 | 48 00 00 10 */	b .L_813E59D0
.L_813E59C4:
/* 813E59C4 | 48 00 1B 29 */	bl iplSDChannelTitle_813E74EC
/* 813E59C8 | 48 00 00 08 */	b .L_813E59D0
.L_813E59CC:
/* 813E59CC | 48 00 1C 4D */	bl iplSDChannelTitle_813E7618
.L_813E59D0:
/* 813E59D0 | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 813E59D4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813E59D8 | 40 82 00 38 */	bne .L_813E5A10
/* 813E59DC | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E59E0 | 38 00 00 01 */	li r0, 0x1
/* 813E59E4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E59E8 | 98 1F 01 B0 */	stb r0, 0x1b0(r31)
/* 813E59EC | 38 63 00 01 */	addi r3, r3, 0x1
/* 813E59F0 | 38 00 00 00 */	li r0, 0x0
/* 813E59F4 | 90 7F 00 84 */	stw r3, 0x84(r31)
/* 813E59F8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E59FC | 7F E3 FB 78 */	mr r3, r31
/* 813E5A00 | 80 84 00 B0 */	lwz r4, 0xb0(r4)
/* 813E5A04 | 98 04 00 3D */	stb r0, 0x3d(r4)
/* 813E5A08 | 48 00 31 15 */	bl iplSDChannelTitle_813E8B1C
/* 813E5A0C | 48 00 00 30 */	b .L_813E5A3C
.L_813E5A10:
/* 813E5A10 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813E5A14 | 41 82 00 14 */	beq .L_813E5A28
/* 813E5A18 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813E5A1C | 41 82 00 0C */	beq .L_813E5A28
/* 813E5A20 | 2C 00 00 1F */	cmpwi r0, 0x1f
/* 813E5A24 | 40 82 00 14 */	bne .L_813E5A38
.L_813E5A28:
/* 813E5A28 | 38 00 00 01 */	li r0, 0x1
/* 813E5A2C | 38 60 00 01 */	li r3, 0x1
/* 813E5A30 | 98 1F 01 B0 */	stb r0, 0x1b0(r31)
/* 813E5A34 | 48 00 00 08 */	b .L_813E5A3C
.L_813E5A38:
/* 813E5A38 | 38 60 00 00 */	li r3, 0x0
.L_813E5A3C:
/* 813E5A3C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E5A40 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E5A44 | 7C 08 03 A6 */	mtlr r0
/* 813E5A48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E5A4C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E58A0

# .text:0xE94 | 0x813E5A50 | size: 0xC4
.fn iplSDChannelTitle_813E5A50, global
/* 813E5A50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E5A54 | 7C 08 02 A6 */	mflr r0
/* 813E5A58 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813E5A5C | 38 80 00 24 */	li r4, 0x24
/* 813E5A60 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E5A64 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813E5A68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E5A6C | 7C 7F 1B 78 */	mr r31, r3
/* 813E5A70 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813E5A74 | 48 02 56 C5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E5A78 | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 813E5A7C | 7C 7F 1B 78 */	mr r31, r3
/* 813E5A80 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813E5A84 | 41 82 00 14 */	beq .L_813E5A98
/* 813E5A88 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813E5A8C | 41 82 00 0C */	beq .L_813E5A98
/* 813E5A90 | 2C 00 00 1F */	cmpwi r0, 0x1f
/* 813E5A94 | 40 82 00 44 */	bne .L_813E5AD8
.L_813E5A98:
/* 813E5A98 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E5A9C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E5AA0 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813E5AA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5AA8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813E5AAC | 7D 89 03 A6 */	mtctr r12
/* 813E5AB0 | 4E 80 04 21 */	bctrl
/* 813E5AB4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E5AB8 | 38 80 00 14 */	li r4, 0x14
/* 813E5ABC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E5AC0 | 4B F8 60 51 */	bl stopAllSound__Q33ipl3snd6SystemFi
/* 813E5AC4 | 3C 60 81 65 */	lis r3, lbl_81655318@ha
/* 813E5AC8 | 38 63 53 18 */	addi r3, r3, lbl_81655318@l
/* 813E5ACC | 4C C6 31 82 */	crclr cr1eq
/* 813E5AD0 | 48 14 8B D1 */	bl OSReport
/* 813E5AD4 | 48 00 00 20 */	b .L_813E5AF4
.L_813E5AD8:
/* 813E5AD8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813E5ADC | 40 82 00 18 */	bne .L_813E5AF4
/* 813E5AE0 | 38 80 00 0F */	li r4, 0xf
/* 813E5AE4 | 48 00 47 71 */	bl iplSDChannelButton_813EA254
/* 813E5AE8 | 7F E3 FB 78 */	mr r3, r31
/* 813E5AEC | 38 80 00 10 */	li r4, 0x10
/* 813E5AF0 | 48 00 47 65 */	bl iplSDChannelButton_813EA254
.L_813E5AF4:
/* 813E5AF4 | 7F E3 FB 78 */	mr r3, r31
/* 813E5AF8 | 38 80 00 00 */	li r4, 0x0
/* 813E5AFC | 48 00 46 91 */	bl iplSDChannelButton_813EA18C
/* 813E5B00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E5B04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E5B08 | 7C 08 03 A6 */	mtlr r0
/* 813E5B0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E5B10 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E5A50

# .text:0xF58 | 0x813E5B14 | size: 0x440
.fn iplSDChannelTitle_813E5B14, global
/* 813E5B14 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 813E5B18 | 7C 08 02 A6 */	mflr r0
/* 813E5B1C | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 813E5B20 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813E5B24 | 48 21 39 9D */	bl _savegpr_27
/* 813E5B28 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813E5B2C | 3F E0 81 65 */	lis r31, lbl_81654F98@ha
/* 813E5B30 | 7C 7E 1B 78 */	mr r30, r3
/* 813E5B34 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813E5B38 | 3B FF 4F 98 */	addi r31, r31, lbl_81654F98@l
/* 813E5B3C | 40 82 03 44 */	bne .L_813E5E80
/* 813E5B40 | 80 03 01 84 */	lwz r0, 0x184(r3)
/* 813E5B44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E5B48 | 40 82 00 18 */	bne .L_813E5B60
/* 813E5B4C | 48 19 3C 61 */	bl WPADGetStatus
/* 813E5B50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5B54 | 40 82 00 0C */	bne .L_813E5B60
/* 813E5B58 | 48 15 01 41 */	bl OSGetTick
/* 813E5B5C | 90 7E 01 84 */	stw r3, 0x184(r30)
.L_813E5B60:
/* 813E5B60 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813E5B64 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813E5B68 | 80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 813E5B6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5B70 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E5B74 | 7D 89 03 A6 */	mtctr r12
/* 813E5B78 | 4E 80 04 21 */	bctrl
/* 813E5B7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5B80 | 40 82 03 B8 */	bne .L_813E5F38
/* 813E5B84 | 4B F4 E2 49 */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 813E5B88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5B8C | 41 82 03 AC */	beq .L_813E5F38
/* 813E5B90 | 88 1C 02 BC */	lbz r0, 0x2bc(r28)
/* 813E5B94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E5B98 | 41 82 00 0C */	beq .L_813E5BA4
/* 813E5B9C | 38 00 00 00 */	li r0, 0x0
/* 813E5BA0 | 48 00 00 08 */	b .L_813E5BA8
.L_813E5BA4:
/* 813E5BA4 | 80 1C 00 8C */	lwz r0, 0x8c(r28)
.L_813E5BA8:
/* 813E5BA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E5BAC | 41 82 00 34 */	beq .L_813E5BE0
/* 813E5BB0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E5BB4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E5BB8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813E5BBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E5BC0 | 41 82 00 0C */	beq .L_813E5BCC
/* 813E5BC4 | 38 60 00 00 */	li r3, 0x0
/* 813E5BC8 | 48 00 00 08 */	b .L_813E5BD0
.L_813E5BCC:
/* 813E5BCC | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813E5BD0:
/* 813E5BD0 | 88 03 0A 31 */	lbz r0, 0xa31(r3)
/* 813E5BD4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813E5BD8 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813E5BDC | 41 82 03 5C */	beq .L_813E5F38
.L_813E5BE0:
/* 813E5BE0 | 38 7F 03 8F */	addi r3, r31, 0x38f
/* 813E5BE4 | 4C C6 31 82 */	crclr cr1eq
/* 813E5BE8 | 48 14 8A B9 */	bl OSReport
/* 813E5BEC | 80 1E 00 70 */	lwz r0, 0x70(r30)
/* 813E5BF0 | 80 7E 01 3C */	lwz r3, 0x13c(r30)
/* 813E5BF4 | 2C 00 00 11 */	cmpwi r0, 0x11
/* 813E5BF8 | 83 63 07 18 */	lwz r27, 0x718(r3)
/* 813E5BFC | 40 82 02 4C */	bne .L_813E5E48
/* 813E5C00 | 4B F5 81 61 */	bl checkNandCapacityAppBootable__Q23ipl8nandwallFv
/* 813E5C04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5C08 | 40 82 00 18 */	bne .L_813E5C20
/* 813E5C0C | 38 7F 03 A9 */	addi r3, r31, 0x3a9
/* 813E5C10 | 4C C6 31 82 */	crclr cr1eq
/* 813E5C14 | 48 14 8A 8D */	bl OSReport
/* 813E5C18 | 7F C3 F3 78 */	mr r3, r30
/* 813E5C1C | 48 00 2E 99 */	bl iplSDChannelTitle_813E8AB4
.L_813E5C20:
/* 813E5C20 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E5C24 | 3F 80 81 09 */	lis r28, sSystem__Q23ipl3snd@ha
/* 813E5C28 | 3B A3 90 08 */	addi r29, r3, smArg__Q23ipl6System@l
/* 813E5C2C | 48 00 00 6C */	b .L_813E5C98
.L_813E5C30:
/* 813E5C30 | 38 7C 99 2C */	addi r3, r28, sSystem__Q23ipl3snd@l
/* 813E5C34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5C38 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E5C3C | 7D 89 03 A6 */	mtctr r12
/* 813E5C40 | 4E 80 04 21 */	bctrl
/* 813E5C44 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813E5C48 | 4B F7 AC 51 */	bl update__Q33ipl3bs27ManagerFv
/* 813E5C4C | 48 15 73 9D */	bl VIWaitForRetrace
/* 813E5C50 | 80 1E 01 AC */	lwz r0, 0x1ac(r30)
/* 813E5C54 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E5C58 | 40 82 00 0C */	bne .L_813E5C64
/* 813E5C5C | 7F C3 F3 78 */	mr r3, r30
/* 813E5C60 | 48 00 1F AD */	bl iplSDChannelTitle_813E7C0C
.L_813E5C64:
/* 813E5C64 | 48 19 3B 49 */	bl WPADGetStatus
/* 813E5C68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5C6C | 41 82 00 10 */	beq .L_813E5C7C
/* 813E5C70 | 38 7F 03 C5 */	addi r3, r31, 0x3c5
/* 813E5C74 | 4C C6 31 82 */	crclr cr1eq
/* 813E5C78 | 48 14 8A 29 */	bl OSReport
.L_813E5C7C:
/* 813E5C7C | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813E5C80 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813E5C84 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813E5C88 | 41 82 00 10 */	beq .L_813E5C98
/* 813E5C8C | 38 7F 03 D4 */	addi r3, r31, 0x3d4
/* 813E5C90 | 4C C6 31 82 */	crclr cr1eq
/* 813E5C94 | 48 14 8A 0D */	bl OSReport
.L_813E5C98:
/* 813E5C98 | 48 19 3B 15 */	bl WPADGetStatus
/* 813E5C9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5CA0 | 40 82 FF 90 */	bne .L_813E5C30
/* 813E5CA4 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813E5CA8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813E5CAC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813E5CB0 | 40 82 FF 80 */	bne .L_813E5C30
/* 813E5CB4 | 80 7D 00 94 */	lwz r3, 0x94(r29)
/* 813E5CB8 | 80 9E 01 80 */	lwz r4, 0x180(r30)
/* 813E5CBC | 4B F7 22 21 */	bl isFinished__Q33ipl8savedata7ManagerFPQ33ipl4nand4File
/* 813E5CC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5CC4 | 41 82 FF 6C */	beq .L_813E5C30
/* 813E5CC8 | 80 1E 01 AC */	lwz r0, 0x1ac(r30)
/* 813E5CCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E5CD0 | 41 82 00 10 */	beq .L_813E5CE0
/* 813E5CD4 | 80 1E 01 A8 */	lwz r0, 0x1a8(r30)
/* 813E5CD8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813E5CDC | 40 82 FF 54 */	bne .L_813E5C30
.L_813E5CE0:
/* 813E5CE0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813E5CE4 | 41 82 00 14 */	beq .L_813E5CF8
/* 813E5CE8 | 7F 63 DB 78 */	mr r3, r27
/* 813E5CEC | 4B F6 2B 1D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813E5CF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5CF4 | 40 82 FF 3C */	bne .L_813E5C30
.L_813E5CF8:
/* 813E5CF8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813E5CFC | 41 82 00 48 */	beq .L_813E5D44
/* 813E5D00 | 7F 63 DB 78 */	mr r3, r27
/* 813E5D04 | 4B F6 2F ED */	bl terminate_async__Q23ipl12NandSDWorkerFv
/* 813E5D08 | 3F A0 81 09 */	lis r29, sSystem__Q23ipl3snd@ha
/* 813E5D0C | 48 00 00 1C */	b .L_813E5D28
.L_813E5D10:
/* 813E5D10 | 38 7D 99 2C */	addi r3, r29, sSystem__Q23ipl3snd@l
/* 813E5D14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5D18 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E5D1C | 7D 89 03 A6 */	mtctr r12
/* 813E5D20 | 4E 80 04 21 */	bctrl
/* 813E5D24 | 48 15 72 C5 */	bl VIWaitForRetrace
.L_813E5D28:
/* 813E5D28 | 7F 63 DB 78 */	mr r3, r27
/* 813E5D2C | 4B F6 2A CD */	bl is_terminated__Q23ipl12NandSDWorkerFv
/* 813E5D30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5D34 | 41 82 FF DC */	beq .L_813E5D10
/* 813E5D38 | 38 7F 03 E2 */	addi r3, r31, 0x3e2
/* 813E5D3C | 4C C6 31 82 */	crclr cr1eq
/* 813E5D40 | 48 14 89 61 */	bl OSReport
.L_813E5D44:
/* 813E5D44 | 80 7E 01 80 */	lwz r3, 0x180(r30)
/* 813E5D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5D4C | 41 82 00 18 */	beq .L_813E5D64
/* 813E5D50 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5D54 | 38 80 00 01 */	li r4, 0x1
/* 813E5D58 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E5D5C | 7D 89 03 A6 */	mtctr r12
/* 813E5D60 | 4E 80 04 21 */	bctrl
.L_813E5D64:
/* 813E5D64 | 38 60 00 01 */	li r3, 0x1
/* 813E5D68 | 48 15 83 C1 */	bl VISetBlack
/* 813E5D6C | 48 15 82 35 */	bl VIFlush
/* 813E5D70 | 48 15 72 79 */	bl VIWaitForRetrace
/* 813E5D74 | 38 7F 03 FB */	addi r3, r31, 0x3fb
/* 813E5D78 | 4C C6 31 82 */	crclr cr1eq
/* 813E5D7C | 48 14 89 25 */	bl OSReport
/* 813E5D80 | 48 00 00 10 */	b .L_813E5D90
.L_813E5D84:
/* 813E5D84 | 38 7F 04 05 */	addi r3, r31, 0x405
/* 813E5D88 | 4C C6 31 82 */	crclr cr1eq
/* 813E5D8C | 48 14 89 15 */	bl OSReport
.L_813E5D90:
/* 813E5D90 | 48 14 D2 F1 */	bl __OSSyncSram
/* 813E5D94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5D98 | 41 82 FF EC */	beq .L_813E5D84
/* 813E5D9C | 80 7E 01 3C */	lwz r3, 0x13c(r30)
/* 813E5DA0 | 80 9E 00 64 */	lwz r4, 0x64(r30)
/* 813E5DA4 | 80 BE 00 68 */	lwz r5, 0x68(r30)
/* 813E5DA8 | 4B FF A1 11 */	bl iplSDChannelSelect_813DFEB8
/* 813E5DAC | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 813E5DB0 | 7C 7B 1B 78 */	mr r27, r3
/* 813E5DB4 | 80 A3 00 94 */	lwz r5, 0x94(r3)
/* 813E5DB8 | 38 80 00 00 */	li r4, 0x0
/* 813E5DBC | 90 A1 00 24 */	stw r5, 0x24(r1)
/* 813E5DC0 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813E5DC4 | 4B FF E2 9D */	bl iplSDChannelObj_813E4060
/* 813E5DC8 | 7C 64 1B 78 */	mr r4, r3
/* 813E5DCC | 38 61 00 40 */	addi r3, r1, 0x40
/* 813E5DD0 | 38 A0 00 2A */	li r5, 0x2a
/* 813E5DD4 | 4B F4 A4 5D */	bl memcpy
/* 813E5DD8 | 7F 63 DB 78 */	mr r3, r27
/* 813E5DDC | 38 80 00 01 */	li r4, 0x1
/* 813E5DE0 | 4B FF E2 81 */	bl iplSDChannelObj_813E4060
/* 813E5DE4 | 7C 64 1B 78 */	mr r4, r3
/* 813E5DE8 | 38 61 00 6A */	addi r3, r1, 0x6a
/* 813E5DEC | 38 A0 00 2A */	li r5, 0x2a
/* 813E5DF0 | 4B F4 A4 41 */	bl memcpy
/* 813E5DF4 | 88 1E 01 A2 */	lbz r0, 0x1a2(r30)
/* 813E5DF8 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813E5DFC | 38 81 00 24 */	addi r4, r1, 0x24
/* 813E5E00 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813E5E04 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 813E5E08 | 88 1E 01 A3 */	lbz r0, 0x1a3(r30)
/* 813E5E0C | 98 01 00 09 */	stb r0, 0x9(r1)
/* 813E5E10 | 48 15 0F B5 */	bl fn_81536DC4
/* 813E5E14 | 38 7F 04 10 */	addi r3, r31, 0x410
/* 813E5E18 | 4C C6 31 82 */	crclr cr1eq
/* 813E5E1C | 48 14 88 85 */	bl OSReport
/* 813E5E20 | 4B F9 AB 71 */	bl BS2SetStateFlags
/* 813E5E24 | 38 6D 8E 82 */	li r3, lbl_81696EC2@sda21
/* 813E5E28 | 4C C6 31 82 */	crclr cr1eq
/* 813E5E2C | 48 14 88 75 */	bl OSReport
/* 813E5E30 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 813E5E34 | 38 A0 00 00 */	li r5, 0x0
/* 813E5E38 | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 813E5E3C | 38 C0 00 00 */	li r6, 0x0
/* 813E5E40 | 48 14 9A 4D */	bl fn_8152F88C
/* 813E5E44 | 48 00 00 34 */	b .L_813E5E78
.L_813E5E48:
/* 813E5E48 | C0 22 87 68 */	lfs f1, lbl_81694B68@sda21(r0)
/* 813E5E4C | 38 61 00 34 */	addi r3, r1, 0x34
/* 813E5E50 | FC 40 08 90 */	fmr f2, f1
/* 813E5E54 | FC 60 08 90 */	fmr f3, f1
/* 813E5E58 | 4B F7 CC 05 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E5E5C | C0 02 87 70 */	lfs f0, lbl_81694B70@sda21(r0)
/* 813E5E60 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813E5E64 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 813E5E68 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813E5E6C | 4B FC FB A9 */	bl setOrthoTrans__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3
/* 813E5E70 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813E5E74 | 4B FC FB C5 */	bl setOrthoScale__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC2
.L_813E5E78:
/* 813E5E78 | 38 60 00 01 */	li r3, 0x1
/* 813E5E7C | 48 00 00 C0 */	b .L_813E5F3C
.L_813E5E80:
/* 813E5E80 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813E5E84 | 40 82 00 30 */	bne .L_813E5EB4
/* 813E5E88 | 80 63 01 38 */	lwz r3, 0x138(r3)
/* 813E5E8C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E5E90 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E5E94 | 41 82 00 0C */	beq .L_813E5EA0
/* 813E5E98 | 38 60 00 01 */	li r3, 0x1
/* 813E5E9C | 48 00 00 A0 */	b .L_813E5F3C
.L_813E5EA0:
/* 813E5EA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5EA4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E5EA8 | 7D 89 03 A6 */	mtctr r12
/* 813E5EAC | 4E 80 04 21 */	bctrl
/* 813E5EB0 | 48 00 00 88 */	b .L_813E5F38
.L_813E5EB4:
/* 813E5EB4 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813E5EB8 | 41 82 00 0C */	beq .L_813E5EC4
/* 813E5EBC | 2C 00 00 1F */	cmpwi r0, 0x1f
/* 813E5EC0 | 40 82 00 78 */	bne .L_813E5F38
.L_813E5EC4:
/* 813E5EC4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E5EC8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E5ECC | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813E5ED0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E5ED4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E5ED8 | 7D 89 03 A6 */	mtctr r12
/* 813E5EDC | 4E 80 04 21 */	bctrl
/* 813E5EE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E5EE4 | 40 82 00 54 */	bne .L_813E5F38
/* 813E5EE8 | C0 22 87 68 */	lfs f1, lbl_81694B68@sda21(r0)
/* 813E5EEC | 38 61 00 28 */	addi r3, r1, 0x28
/* 813E5EF0 | FC 40 08 90 */	fmr f2, f1
/* 813E5EF4 | FC 60 08 90 */	fmr f3, f1
/* 813E5EF8 | 4B F7 CB 65 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813E5EFC | 38 61 00 28 */	addi r3, r1, 0x28
/* 813E5F00 | 4B FC FB 15 */	bl setOrthoTrans__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3
/* 813E5F04 | C0 02 87 70 */	lfs f0, lbl_81694B70@sda21(r0)
/* 813E5F08 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813E5F0C | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813E5F10 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 813E5F14 | 4B FC FB 25 */	bl setOrthoScale__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC2
/* 813E5F18 | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
/* 813E5F1C | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813E5F20 | 4B F8 54 5D */	bl initFx__Q33ipl3snd6SystemFv
/* 813E5F24 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813E5F28 | 38 9F 04 24 */	addi r4, r31, 0x424
/* 813E5F2C | 4B F8 54 91 */	bl startBGM__Q33ipl3snd6SystemFPCc
/* 813E5F30 | 38 60 00 01 */	li r3, 0x1
/* 813E5F34 | 48 00 00 08 */	b .L_813E5F3C
.L_813E5F38:
/* 813E5F38 | 38 60 00 00 */	li r3, 0x0
.L_813E5F3C:
/* 813E5F3C | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813E5F40 | 48 21 35 CD */	bl _restgpr_27
/* 813E5F44 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 813E5F48 | 7C 08 03 A6 */	mtlr r0
/* 813E5F4C | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 813E5F50 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E5B14

# .text:0x1398 | 0x813E5F54 | size: 0x220
.fn iplSDChannelTitle_813E5F54, global
/* 813E5F54 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813E5F58 | 7C 08 02 A6 */	mflr r0
/* 813E5F5C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813E5F60 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813E5F64 | 7C 7F 1B 78 */	mr r31, r3
/* 813E5F68 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813E5F6C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E5F70 | 41 82 01 F0 */	beq .L_813E6160
/* 813E5F74 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E5F78 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E5F7C | 80 84 00 64 */	lwz r4, 0x64(r4)
/* 813E5F80 | 80 84 01 00 */	lwz r4, 0x100(r4)
/* 813E5F84 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813E5F88 | 40 82 01 88 */	bne .L_813E6110
/* 813E5F8C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813E5F90 | 41 82 00 0C */	beq .L_813E5F9C
/* 813E5F94 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813E5F98 | 40 82 01 0C */	bne .L_813E60A4
.L_813E5F9C:
/* 813E5F9C | 38 60 00 00 */	li r3, 0x0
/* 813E5FA0 | 4B F7 CA CD */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813E5FA4 | 80 9F 01 3C */	lwz r4, 0x13c(r31)
/* 813E5FA8 | 88 62 87 74 */	lbz r3, lbl_81694B74@sda21(r0)
/* 813E5FAC | C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 813E5FB0 | C0 44 00 AC */	lfs f2, 0xac(r4)
/* 813E5FB4 | C0 04 00 A8 */	lfs f0, 0xa8(r4)
/* 813E5FB8 | EC 83 10 28 */	fsubs f4, f3, f2
/* 813E5FBC | C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 813E5FC0 | EC 43 10 2A */	fadds f2, f3, f2
/* 813E5FC4 | 88 A2 87 75 */	lbz r5, lbl_81694B75@sda21(r0)
/* 813E5FC8 | EC 61 00 2A */	fadds f3, f1, f0
/* 813E5FCC | 88 82 87 76 */	lbz r4, lbl_81694B76@sda21(r0)
/* 813E5FD0 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813E5FD4 | 88 02 87 77 */	lbz r0, lbl_81694B77@sda21(r0)
/* 813E5FD8 | D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 813E5FDC | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813E5FE0 | D0 61 00 20 */	stfs f3, 0x20(r1)
/* 813E5FE4 | D0 81 00 24 */	stfs f4, 0x24(r1)
/* 813E5FE8 | 98 61 00 14 */	stb r3, 0x14(r1)
/* 813E5FEC | 80 7F 01 38 */	lwz r3, 0x138(r31)
/* 813E5FF0 | 98 A1 00 15 */	stb r5, 0x15(r1)
/* 813E5FF4 | 98 81 00 16 */	stb r4, 0x16(r1)
/* 813E5FF8 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 813E5FFC | 4B FC FC 65 */	bl "get__Q33ipl4math14HermiteIntp<f>CFv"
/* 813E6000 | FC 00 08 1E */	fctiwz f0, f1
/* 813E6004 | 89 01 00 14 */	lbz r8, 0x14(r1)
/* 813E6008 | 88 81 00 15 */	lbz r4, 0x15(r1)
/* 813E600C | 38 61 00 18 */	addi r3, r1, 0x18
/* 813E6010 | 88 01 00 16 */	lbz r0, 0x16(r1)
/* 813E6014 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813E6018 | D8 01 00 28 */	stfd f0, 0x28(r1)
/* 813E601C | 38 C0 00 01 */	li r6, 0x1
/* 813E6020 | 38 E0 00 00 */	li r7, 0x0
/* 813E6024 | 81 21 00 2C */	lwz r9, 0x2c(r1)
/* 813E6028 | 99 01 00 0C */	stb r8, 0xc(r1)
/* 813E602C | 98 81 00 0D */	stb r4, 0xd(r1)
/* 813E6030 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 813E6034 | 99 21 00 0F */	stb r9, 0xf(r1)
/* 813E6038 | 80 9F 01 94 */	lwz r4, 0x194(r31)
/* 813E603C | 99 21 00 17 */	stb r9, 0x17(r1)
/* 813E6040 | 38 84 00 14 */	addi r4, r4, 0x14
/* 813E6044 | 4B F7 CF 79 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 813E6048 | 38 00 00 00 */	li r0, 0x0
/* 813E604C | 80 7F 01 38 */	lwz r3, 0x138(r31)
/* 813E6050 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 813E6054 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 813E6058 | 98 01 00 12 */	stb r0, 0x12(r1)
/* 813E605C | 98 01 00 13 */	stb r0, 0x13(r1)
/* 813E6060 | 4B FC FC 01 */	bl "get__Q33ipl4math14HermiteIntp<f>CFv"
/* 813E6064 | FC 00 08 1E */	fctiwz f0, f1
/* 813E6068 | 88 E1 00 10 */	lbz r7, 0x10(r1)
/* 813E606C | 88 C1 00 11 */	lbz r6, 0x11(r1)
/* 813E6070 | 7F E3 FB 78 */	mr r3, r31
/* 813E6074 | 88 01 00 12 */	lbz r0, 0x12(r1)
/* 813E6078 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813E607C | D8 01 00 30 */	stfd f0, 0x30(r1)
/* 813E6080 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813E6084 | 81 01 00 34 */	lwz r8, 0x34(r1)
/* 813E6088 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 813E608C | 99 01 00 13 */	stb r8, 0x13(r1)
/* 813E6090 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 813E6094 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 813E6098 | 99 01 00 0B */	stb r8, 0xb(r1)
/* 813E609C | 48 00 2B 6D */	bl iplSDChannelTitle_813E8C08
/* 813E60A0 | 48 00 00 C0 */	b .L_813E6160
.L_813E60A4:
/* 813E60A4 | 80 03 01 4C */	lwz r0, 0x14c(r3)
/* 813E60A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E60AC | 41 82 00 20 */	beq .L_813E60CC
/* 813E60B0 | 38 60 00 00 */	li r3, 0x0
/* 813E60B4 | 4B F7 CB 49 */	bl iplGraphics_81362BFC
/* 813E60B8 | 80 7F 01 4C */	lwz r3, 0x14c(r31)
/* 813E60BC | 4B F8 46 E1 */	bl draw__Q33ipl6layout6ObjectFv
/* 813E60C0 | 80 7F 01 98 */	lwz r3, 0x198(r31)
/* 813E60C4 | 38 80 00 00 */	li r4, 0x0
/* 813E60C8 | 4B F7 D2 D5 */	bl capture__Q33ipl7utility7CaptureFi
.L_813E60CC:
/* 813E60CC | 38 60 00 00 */	li r3, 0x0
/* 813E60D0 | 4B F7 C9 FD */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813E60D4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 813E60D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E60DC | 41 82 00 0C */	beq .L_813E60E8
/* 813E60E0 | 4B F8 46 BD */	bl draw__Q33ipl6layout6ObjectFv
/* 813E60E4 | 48 00 00 0C */	b .L_813E60F0
.L_813E60E8:
/* 813E60E8 | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E60EC | 4B F8 46 B1 */	bl draw__Q33ipl6layout6ObjectFv
.L_813E60F0:
/* 813E60F0 | 80 7F 01 44 */	lwz r3, 0x144(r31)
/* 813E60F4 | 4B F8 46 A9 */	bl draw__Q33ipl6layout6ObjectFv
/* 813E60F8 | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 813E60FC | 2C 00 00 17 */	cmpwi r0, 0x17
/* 813E6100 | 40 82 00 60 */	bne .L_813E6160
/* 813E6104 | 38 7F 0A 30 */	addi r3, r31, 0xa30
/* 813E6108 | 48 00 8E 29 */	bl ipl_813EEF30
/* 813E610C | 48 00 00 54 */	b .L_813E6160
.L_813E6110:
/* 813E6110 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813E6114 | 40 82 00 4C */	bne .L_813E6160
/* 813E6118 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813E611C | 41 82 00 0C */	beq .L_813E6128
/* 813E6120 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813E6124 | 40 82 00 3C */	bne .L_813E6160
.L_813E6128:
/* 813E6128 | 38 60 00 00 */	li r3, 0x0
/* 813E612C | 4B F7 C9 A1 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813E6130 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 813E6134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6138 | 41 82 00 0C */	beq .L_813E6144
/* 813E613C | 4B F8 46 61 */	bl draw__Q33ipl6layout6ObjectFv
/* 813E6140 | 48 00 00 0C */	b .L_813E614C
.L_813E6144:
/* 813E6144 | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E6148 | 4B F8 46 55 */	bl draw__Q33ipl6layout6ObjectFv
.L_813E614C:
/* 813E614C | 80 7F 01 44 */	lwz r3, 0x144(r31)
/* 813E6150 | 4B F8 46 4D */	bl draw__Q33ipl6layout6ObjectFv
/* 813E6154 | 80 7F 01 94 */	lwz r3, 0x194(r31)
/* 813E6158 | 38 80 00 01 */	li r4, 0x1
/* 813E615C | 4B F7 D2 41 */	bl capture__Q33ipl7utility7CaptureFi
.L_813E6160:
/* 813E6160 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813E6164 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813E6168 | 7C 08 03 A6 */	mtlr r0
/* 813E616C | 38 21 00 40 */	addi r1, r1, 0x40
/* 813E6170 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E5F54

# .text:0x15B8 | 0x813E6174 | size: 0x17C
.fn iplSDChannelTitle_813E6174, global
/* 813E6174 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E6178 | 7C 08 02 A6 */	mflr r0
/* 813E617C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E6180 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E6184 | 7C 7F 1B 78 */	mr r31, r3
/* 813E6188 | 80 03 01 5C */	lwz r0, 0x15c(r3)
/* 813E618C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E6190 | 41 82 00 20 */	beq .L_813E61B0
/* 813E6194 | 41 82 00 1C */	beq .L_813E61B0
/* 813E6198 | 7C 03 03 78 */	mr r3, r0
/* 813E619C | 38 80 00 01 */	li r4, 0x1
/* 813E61A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E61A4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E61A8 | 7D 89 03 A6 */	mtctr r12
/* 813E61AC | 4E 80 04 21 */	bctrl
.L_813E61B0:
/* 813E61B0 | 80 7F 01 60 */	lwz r3, 0x160(r31)
/* 813E61B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E61B8 | 41 82 00 1C */	beq .L_813E61D4
/* 813E61BC | 41 82 00 18 */	beq .L_813E61D4
/* 813E61C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E61C4 | 38 80 00 01 */	li r4, 0x1
/* 813E61C8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E61CC | 7D 89 03 A6 */	mtctr r12
/* 813E61D0 | 4E 80 04 21 */	bctrl
.L_813E61D4:
/* 813E61D4 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 813E61D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E61DC | 41 82 00 08 */	beq .L_813E61E4
/* 813E61E0 | 4B F8 4C 21 */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813E61E4:
/* 813E61E4 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 813E61E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E61EC | 41 82 00 1C */	beq .L_813E6208
/* 813E61F0 | 41 82 00 18 */	beq .L_813E6208
/* 813E61F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E61F8 | 38 80 00 01 */	li r4, 0x1
/* 813E61FC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E6200 | 7D 89 03 A6 */	mtctr r12
/* 813E6204 | 4E 80 04 21 */	bctrl
.L_813E6208:
/* 813E6208 | 80 7F 01 68 */	lwz r3, 0x168(r31)
/* 813E620C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6210 | 41 82 00 1C */	beq .L_813E622C
/* 813E6214 | 41 82 00 18 */	beq .L_813E622C
/* 813E6218 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E621C | 38 80 00 01 */	li r4, 0x1
/* 813E6220 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E6224 | 7D 89 03 A6 */	mtctr r12
/* 813E6228 | 4E 80 04 21 */	bctrl
.L_813E622C:
/* 813E622C | 80 7F 01 94 */	lwz r3, 0x194(r31)
/* 813E6230 | 38 80 00 01 */	li r4, 0x1
/* 813E6234 | 4B F7 D1 11 */	bl __dt__Q33ipl7utility7CaptureFv
/* 813E6238 | 80 7F 01 BC */	lwz r3, 0x1bc(r31)
/* 813E623C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6240 | 41 82 00 1C */	beq .L_813E625C
/* 813E6244 | 41 82 00 18 */	beq .L_813E625C
/* 813E6248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E624C | 38 80 00 01 */	li r4, 0x1
/* 813E6250 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E6254 | 7D 89 03 A6 */	mtctr r12
/* 813E6258 | 4E 80 04 21 */	bctrl
.L_813E625C:
/* 813E625C | 80 7F 01 C0 */	lwz r3, 0x1c0(r31)
/* 813E6260 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E6264 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813E6268 | 7D 89 03 A6 */	mtctr r12
/* 813E626C | 4E 80 04 21 */	bctrl
/* 813E6270 | 80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 813E6274 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E6278 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813E627C | 7D 89 03 A6 */	mtctr r12
/* 813E6280 | 4E 80 04 21 */	bctrl
/* 813E6284 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813E6288 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E628C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813E6290 | 7D 89 03 A6 */	mtctr r12
/* 813E6294 | 4E 80 04 21 */	bctrl
/* 813E6298 | 80 7F 01 4C */	lwz r3, 0x14c(r31)
/* 813E629C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E62A0 | 41 82 00 08 */	beq .L_813E62A8
/* 813E62A4 | 4B F8 4B 5D */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813E62A8:
/* 813E62A8 | 80 7F 01 50 */	lwz r3, 0x150(r31)
/* 813E62AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E62B0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813E62B4 | 7D 89 03 A6 */	mtctr r12
/* 813E62B8 | 4E 80 04 21 */	bctrl
/* 813E62BC | 80 7F 01 98 */	lwz r3, 0x198(r31)
/* 813E62C0 | 38 80 00 01 */	li r4, 0x1
/* 813E62C4 | 4B F7 D0 81 */	bl __dt__Q33ipl7utility7CaptureFv
/* 813E62C8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813E62CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E62D0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813E62D4 | 7D 89 03 A6 */	mtctr r12
/* 813E62D8 | 4E 80 04 21 */	bctrl
/* 813E62DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E62E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E62E4 | 7C 08 03 A6 */	mtlr r0
/* 813E62E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E62EC | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E6174

# .text:0x1734 | 0x813E62F0 | size: 0x1C
.fn iplSDChannelTitle_813E62F0, global
/* 813E62F0 | 88 03 34 00 */	lbz r0, 0x3400(r3)
/* 813E62F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E62F8 | 41 82 00 0C */	beq .L_813E6304
/* 813E62FC | 88 63 34 B1 */	lbz r3, 0x34b1(r3)
/* 813E6300 | 4E 80 00 20 */	blr
.L_813E6304:
/* 813E6304 | 38 60 00 00 */	li r3, 0x0
/* 813E6308 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E62F0

# .text:0x1750 | 0x813E630C | size: 0x3C
.fn iplSDChannelTitle_813E630C, global
/* 813E630C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E6310 | 7C 08 02 A6 */	mflr r0
/* 813E6314 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E6318 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E631C | 7C 7F 1B 78 */	mr r31, r3
/* 813E6320 | 48 00 00 29 */	bl iplSDChannelTitle_813E6348
/* 813E6324 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 813E6328 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E632C | 41 82 00 08 */	beq .L_813E6334
/* 813E6330 | 4B F8 43 05 */	bl finishBinding__Q33ipl6layout6ObjectFv
.L_813E6334:
/* 813E6334 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E6338 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E633C | 7C 08 03 A6 */	mtlr r0
/* 813E6340 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E6344 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E630C

# .text:0x178C | 0x813E6348 | size: 0xDC
.fn iplSDChannelTitle_813E6348, global
/* 813E6348 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E634C | 7C 08 02 A6 */	mflr r0
/* 813E6350 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E6354 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E6358 | 7C 7F 1B 78 */	mr r31, r3
/* 813E635C | 80 03 01 4C */	lwz r0, 0x14c(r3)
/* 813E6360 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E6364 | 41 82 00 14 */	beq .L_813E6378
/* 813E6368 | 7C 03 03 78 */	mr r3, r0
/* 813E636C | 4B F8 4A 95 */	bl destroyHeap__Q33ipl6layout6ObjectFv
/* 813E6370 | 38 00 00 00 */	li r0, 0x0
/* 813E6374 | 90 1F 01 4C */	stw r0, 0x14c(r31)
.L_813E6378:
/* 813E6378 | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E637C | 54 00 10 3A */	slwi r0, r0, 2
/* 813E6380 | 7C 7F 02 14 */	add r3, r31, r0
/* 813E6384 | 80 63 01 5C */	lwz r3, 0x15c(r3)
/* 813E6388 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E638C | 41 82 00 58 */	beq .L_813E63E4
/* 813E6390 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E6394 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813E6398 | 7D 89 03 A6 */	mtctr r12
/* 813E639C | 4E 80 04 21 */	bctrl
/* 813E63A0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813E63A4 | 40 82 00 40 */	bne .L_813E63E4
/* 813E63A8 | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E63AC | 3C E0 81 65 */	lis r7, lbl_816553CA@ha
/* 813E63B0 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813E63B4 | 38 E7 53 CA */	addi r7, r7, lbl_816553CA@l
/* 813E63B8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E63BC | 3C 80 00 04 */	lis r4, 0x4
/* 813E63C0 | 7C BF 02 14 */	add r5, r31, r0
/* 813E63C4 | 38 CD 8E 70 */	li r6, lbl_81696EB0@sda21
/* 813E63C8 | 80 A5 01 5C */	lwz r5, 0x15c(r5)
/* 813E63CC | 4B F8 4A 49 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc
/* 813E63D0 | 90 7F 01 6C */	stw r3, 0x16c(r31)
/* 813E63D4 | 4B FF D1 AD */	bl iplSDChannelObj_813E3580
/* 813E63D8 | 7F E3 FB 78 */	mr r3, r31
/* 813E63DC | 48 00 1E 21 */	bl iplSDChannelTitle_813E81FC
/* 813E63E0 | 48 00 00 30 */	b .L_813E6410
.L_813E63E4:
/* 813E63E4 | 38 A0 00 00 */	li r5, 0x0
/* 813E63E8 | 38 00 00 03 */	li r0, 0x3
/* 813E63EC | 7C A3 2B 78 */	mr r3, r5
/* 813E63F0 | 90 BF 01 6C */	stw r5, 0x16c(r31)
/* 813E63F4 | 7C 09 03 A6 */	mtctr r0
.L_813E63F8:
/* 813E63F8 | 7C 9F 1A 14 */	add r4, r31, r3
/* 813E63FC | 38 63 00 04 */	addi r3, r3, 0x4
/* 813E6400 | 90 A4 01 70 */	stw r5, 0x170(r4)
/* 813E6404 | 42 00 FF F4 */	bdnz .L_813E63F8
/* 813E6408 | 7F E3 FB 78 */	mr r3, r31
/* 813E640C | 48 00 00 19 */	bl iplSDChannelTitle_813E6424
.L_813E6410:
/* 813E6410 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E6414 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E6418 | 7C 08 03 A6 */	mtlr r0
/* 813E641C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E6420 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E6348

# .text:0x1868 | 0x813E6424 | size: 0x1B0
.fn iplSDChannelTitle_813E6424, global
/* 813E6424 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E6428 | 7C 08 02 A6 */	mflr r0
/* 813E642C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E6430 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E6434 | 48 21 30 95 */	bl _savegpr_29
/* 813E6438 | 7C 7D 1B 78 */	mr r29, r3
/* 813E643C | 3F E0 81 65 */	lis r31, lbl_81654F98@ha
/* 813E6440 | 80 63 01 3C */	lwz r3, 0x13c(r3)
/* 813E6444 | 3B FF 4F 98 */	addi r31, r31, lbl_81654F98@l
/* 813E6448 | 80 9D 00 64 */	lwz r4, 0x64(r29)
/* 813E644C | 80 BD 00 68 */	lwz r5, 0x68(r29)
/* 813E6450 | 4B FF 9A 69 */	bl iplSDChannelSelect_813DFEB8
/* 813E6454 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6458 | 7C 7E 1B 78 */	mr r30, r3
/* 813E645C | 41 82 01 60 */	beq .L_813E65BC
/* 813E6460 | 4B FF CC C9 */	bl iplSDChannelObj_813E3128
/* 813E6464 | 7C 65 1B 78 */	mr r5, r3
/* 813E6468 | 3C 80 00 01 */	lis r4, 0x1
/* 813E646C | 80 7D 01 50 */	lwz r3, 0x150(r29)
/* 813E6470 | 38 84 80 00 */	addi r4, r4, -0x8000
/* 813E6474 | 38 FF 04 3F */	addi r7, r31, 0x43f
/* 813E6478 | 38 CD 8E 70 */	li r6, lbl_81696EB0@sda21
/* 813E647C | 4B F8 4A 15 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc
/* 813E6480 | 90 7D 01 4C */	stw r3, 0x14c(r29)
/* 813E6484 | 4B FF D0 FD */	bl iplSDChannelObj_813E3580
/* 813E6488 | 80 7D 01 4C */	lwz r3, 0x14c(r29)
/* 813E648C | 38 9F 04 4A */	addi r4, r31, 0x44a
/* 813E6490 | 4B F8 42 35 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813E6494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6498 | 41 82 00 28 */	beq .L_813E64C0
/* 813E649C | 80 7D 01 4C */	lwz r3, 0x14c(r29)
/* 813E64A0 | 38 9F 04 4A */	addi r4, r31, 0x44a
/* 813E64A4 | 38 A0 00 01 */	li r5, 0x1
/* 813E64A8 | 4B F8 3E C5 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E64AC | 7C 7F 1B 78 */	mr r31, r3
/* 813E64B0 | 4B F7 C3 C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E64B4 | 38 00 00 01 */	li r0, 0x1
/* 813E64B8 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813E64BC | 48 00 00 38 */	b .L_813E64F4
.L_813E64C0:
/* 813E64C0 | 80 7D 01 4C */	lwz r3, 0x14c(r29)
/* 813E64C4 | 38 9F 04 55 */	addi r4, r31, 0x455
/* 813E64C8 | 4B F8 41 FD */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813E64CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E64D0 | 41 82 00 24 */	beq .L_813E64F4
/* 813E64D4 | 80 7D 01 4C */	lwz r3, 0x14c(r29)
/* 813E64D8 | 38 9F 04 55 */	addi r4, r31, 0x455
/* 813E64DC | 38 A0 00 01 */	li r5, 0x1
/* 813E64E0 | 4B F8 3E 8D */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E64E4 | 7C 7F 1B 78 */	mr r31, r3
/* 813E64E8 | 4B F7 C3 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E64EC | 38 00 00 01 */	li r0, 0x1
/* 813E64F0 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813E64F4:
/* 813E64F4 | 80 1E 00 84 */	lwz r0, 0x84(r30)
/* 813E64F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E64FC | 40 82 00 54 */	bne .L_813E6550
/* 813E6500 | 80 7D 01 54 */	lwz r3, 0x154(r29)
/* 813E6504 | 38 8D 8E 8A */	li r4, lbl_81696ECA@sda21
/* 813E6508 | 38 A0 00 01 */	li r5, 0x1
/* 813E650C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E6510 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E6514 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E6518 | 7D 89 03 A6 */	mtctr r12
/* 813E651C | 4E 80 04 21 */	bctrl
/* 813E6520 | 7C 7F 1B 78 */	mr r31, r3
/* 813E6524 | 7F C3 F3 78 */	mr r3, r30
/* 813E6528 | 38 80 00 00 */	li r4, 0x0
/* 813E652C | 4B FF DB 35 */	bl iplSDChannelObj_813E4060
/* 813E6530 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813E6534 | 7C 64 1B 78 */	mr r4, r3
/* 813E6538 | 7F E3 FB 78 */	mr r3, r31
/* 813E653C | 38 A0 00 00 */	li r5, 0x0
/* 813E6540 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813E6544 | 7D 89 03 A6 */	mtctr r12
/* 813E6548 | 4E 80 04 21 */	bctrl
/* 813E654C | 48 00 00 3C */	b .L_813E6588
.L_813E6550:
/* 813E6550 | 80 7D 01 54 */	lwz r3, 0x154(r29)
/* 813E6554 | 38 8D 8E 8A */	li r4, lbl_81696ECA@sda21
/* 813E6558 | 38 A0 00 01 */	li r5, 0x1
/* 813E655C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E6560 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E6564 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E6568 | 7D 89 03 A6 */	mtctr r12
/* 813E656C | 4E 80 04 21 */	bctrl
/* 813E6570 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E6574 | 38 82 87 60 */	li r4, lbl_81694B60@sda21
/* 813E6578 | 38 A0 00 00 */	li r5, 0x0
/* 813E657C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813E6580 | 7D 89 03 A6 */	mtctr r12
/* 813E6584 | 4E 80 04 21 */	bctrl
.L_813E6588:
/* 813E6588 | 80 7D 01 54 */	lwz r3, 0x154(r29)
/* 813E658C | 38 80 00 00 */	li r4, 0x0
/* 813E6590 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E6594 | 48 12 BD 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E6598 | 38 00 00 00 */	li r0, 0x0
/* 813E659C | 38 80 00 00 */	li r4, 0x0
/* 813E65A0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813E65A4 | 80 7D 01 54 */	lwz r3, 0x154(r29)
/* 813E65A8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E65AC | 48 12 BD 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E65B0 | 4B F8 36 75 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E65B4 | 80 7D 01 54 */	lwz r3, 0x154(r29)
/* 813E65B8 | 4B F8 41 4D */	bl calc__Q33ipl6layout6ObjectFv
.L_813E65BC:
/* 813E65BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E65C0 | 48 21 2F 55 */	bl _restgpr_29
/* 813E65C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E65C8 | 7C 08 03 A6 */	mtlr r0
/* 813E65CC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E65D0 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E6424

# .text:0x1A18 | 0x813E65D4 | size: 0x18C
.fn iplSDChannelTitle_813E65D4, global
/* 813E65D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E65D8 | 7C 08 02 A6 */	mflr r0
/* 813E65DC | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813E65E0 | 38 80 00 24 */	li r4, 0x24
/* 813E65E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E65E8 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813E65EC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813E65F0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813E65F4 | 7C 7E 1B 78 */	mr r30, r3
/* 813E65F8 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813E65FC | 48 02 4B 3D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E6600 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6604 | 7C 7F 1B 78 */	mr r31, r3
/* 813E6608 | 41 82 00 18 */	beq .L_813E6620
/* 813E660C | 48 00 3B 75 */	bl iplSDChannelButton_813EA180
/* 813E6610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6614 | 41 82 00 0C */	beq .L_813E6620
/* 813E6618 | 7F E3 FB 78 */	mr r3, r31
/* 813E661C | 48 00 35 9D */	bl iplSDChannelButton_813E9BB8
.L_813E6620:
/* 813E6620 | 80 1E 00 58 */	lwz r0, 0x58(r30)
/* 813E6624 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E6628 | 40 82 01 20 */	bne .L_813E6748
/* 813E662C | 80 7E 01 3C */	lwz r3, 0x13c(r30)
/* 813E6630 | 80 63 07 00 */	lwz r3, 0x700(r3)
/* 813E6634 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813E6638 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E663C | 41 81 00 18 */	bgt .L_813E6654
/* 813E6640 | 38 00 00 0A */	li r0, 0xa
/* 813E6644 | 7F C3 F3 78 */	mr r3, r30
/* 813E6648 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E664C | 48 00 13 CD */	bl iplSDChannelTitle_813E7A18
/* 813E6650 | 48 00 00 F8 */	b .L_813E6748
.L_813E6654:
/* 813E6654 | 4B F4 F3 55 */	bl getMasterController__Q23ipl6SystemFv
/* 813E6658 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E665C | 3C 80 30 00 */	lis r4, 0x3000
/* 813E6660 | 7C 7F 1B 78 */	mr r31, r3
/* 813E6664 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813E6668 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 813E666C | 7D 89 03 A6 */	mtctr r12
/* 813E6670 | 4E 80 04 21 */	bctrl
/* 813E6674 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6678 | 41 82 00 40 */	beq .L_813E66B8
/* 813E667C | 80 7E 01 3C */	lwz r3, 0x13c(r30)
/* 813E6680 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813E6684 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813E6688 | 38 80 00 01 */	li r4, 0x1
/* 813E668C | 4B FF 75 29 */	bl iplSDChannelSelect_813DDBB4
/* 813E6690 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813E6694 | 7F C3 F3 78 */	mr r3, r30
/* 813E6698 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813E669C | 48 00 1F 25 */	bl iplSDChannelTitle_813E85C0
/* 813E66A0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E66A4 | 3C 80 81 65 */	lis r4, lbl_816553FE@ha
/* 813E66A8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E66AC | 38 84 53 FE */	addi r4, r4, lbl_816553FE@l
/* 813E66B0 | 4B F8 4D BD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E66B4 | 48 00 00 94 */	b .L_813E6748
.L_813E66B8:
/* 813E66B8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813E66BC | 3C 80 06 00 */	lis r4, 0x600
/* 813E66C0 | 7F E3 FB 78 */	mr r3, r31
/* 813E66C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813E66C8 | 38 84 00 10 */	addi r4, r4, 0x10
/* 813E66CC | 7D 89 03 A6 */	mtctr r12
/* 813E66D0 | 4E 80 04 21 */	bctrl
/* 813E66D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E66D8 | 41 82 00 40 */	beq .L_813E6718
/* 813E66DC | 80 7E 01 3C */	lwz r3, 0x13c(r30)
/* 813E66E0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813E66E4 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813E66E8 | 38 80 00 00 */	li r4, 0x0
/* 813E66EC | 4B FF 74 C9 */	bl iplSDChannelSelect_813DDBB4
/* 813E66F0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813E66F4 | 7F C3 F3 78 */	mr r3, r30
/* 813E66F8 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813E66FC | 48 00 1E C5 */	bl iplSDChannelTitle_813E85C0
/* 813E6700 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E6704 | 3C 80 81 65 */	lis r4, lbl_816553FE@ha
/* 813E6708 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E670C | 38 84 53 FE */	addi r4, r4, lbl_816553FE@l
/* 813E6710 | 4B F8 4D 5D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E6714 | 48 00 00 34 */	b .L_813E6748
.L_813E6718:
/* 813E6718 | 80 7E 01 48 */	lwz r3, 0x148(r30)
/* 813E671C | 4B F8 48 71 */	bl update__Q33ipl3gui11PaneManagerFv
/* 813E6720 | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 813E6724 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E6728 | 40 82 00 10 */	bne .L_813E6738
/* 813E672C | 38 00 00 01 */	li r0, 0x1
/* 813E6730 | 90 1E 00 88 */	stw r0, 0x88(r30)
/* 813E6734 | 48 00 00 14 */	b .L_813E6748
.L_813E6738:
/* 813E6738 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E673C | 40 82 00 0C */	bne .L_813E6748
/* 813E6740 | 38 00 00 02 */	li r0, 0x2
/* 813E6744 | 90 1E 00 88 */	stw r0, 0x88(r30)
.L_813E6748:
/* 813E6748 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E674C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813E6750 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813E6754 | 7C 08 03 A6 */	mtlr r0
/* 813E6758 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E675C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E65D4

# .text:0x1BA4 | 0x813E6760 | size: 0x20C
.fn iplSDChannelTitle_813E6760, global
/* 813E6760 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E6764 | 7C 08 02 A6 */	mflr r0
/* 813E6768 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E676C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E6770 | 7C 7F 1B 78 */	mr r31, r3
/* 813E6774 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E6778 | 80 A3 01 3C */	lwz r5, 0x13c(r3)
/* 813E677C | 80 85 07 00 */	lwz r4, 0x700(r5)
/* 813E6780 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813E6784 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E6788 | 41 81 00 10 */	bgt .L_813E6798
/* 813E678C | 38 00 00 01 */	li r0, 0x1
/* 813E6790 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813E6794 | 48 00 01 C0 */	b .L_813E6954
.L_813E6798:
/* 813E6798 | 7C A3 2B 78 */	mr r3, r5
/* 813E679C | 80 9F 00 64 */	lwz r4, 0x64(r31)
/* 813E67A0 | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813E67A4 | 4B FF 97 15 */	bl iplSDChannelSelect_813DFEB8
/* 813E67A8 | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E67AC | 7C 7E 1B 78 */	mr r30, r3
/* 813E67B0 | 80 9F 34 AC */	lwz r4, 0x34ac(r31)
/* 813E67B4 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813E67B8 | 38 64 00 01 */	addi r3, r4, 0x1
/* 813E67BC | 90 7F 34 AC */	stw r3, 0x34ac(r31)
/* 813E67C0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E67C4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813E67C8 | 80 63 01 5C */	lwz r3, 0x15c(r3)
/* 813E67CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E67D0 | 41 82 00 1C */	beq .L_813E67EC
/* 813E67D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E67D8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813E67DC | 7D 89 03 A6 */	mtctr r12
/* 813E67E0 | 4E 80 04 21 */	bctrl
/* 813E67E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E67E8 | 41 82 01 6C */	beq .L_813E6954
.L_813E67EC:
/* 813E67EC | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E67F0 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813E67F4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E67F8 | 7C 7F 02 14 */	add r3, r31, r0
/* 813E67FC | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 813E6800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6804 | 41 82 00 1C */	beq .L_813E6820
/* 813E6808 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E680C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813E6810 | 7D 89 03 A6 */	mtctr r12
/* 813E6814 | 4E 80 04 21 */	bctrl
/* 813E6818 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E681C | 41 82 01 38 */	beq .L_813E6954
.L_813E6820:
/* 813E6820 | 7F C3 F3 78 */	mr r3, r30
/* 813E6824 | 4B FF CB 0D */	bl iplSDChannelObj_813E3330
/* 813E6828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E682C | 41 82 01 28 */	beq .L_813E6954
/* 813E6830 | 80 1F 34 AC */	lwz r0, 0x34ac(r31)
/* 813E6834 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813E6838 | 40 81 01 1C */	ble .L_813E6954
/* 813E683C | 80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 813E6840 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E6844 | 41 82 00 10 */	beq .L_813E6854
/* 813E6848 | 80 1F 01 A8 */	lwz r0, 0x1a8(r31)
/* 813E684C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813E6850 | 40 82 01 04 */	bne .L_813E6954
.L_813E6854:
/* 813E6854 | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E6858 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E685C | 7C 7F 02 14 */	add r3, r31, r0
/* 813E6860 | 80 63 01 5C */	lwz r3, 0x15c(r3)
/* 813E6864 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6868 | 41 82 00 2C */	beq .L_813E6894
/* 813E686C | 41 82 00 18 */	beq .L_813E6884
/* 813E6870 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E6874 | 38 80 00 01 */	li r4, 0x1
/* 813E6878 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E687C | 7D 89 03 A6 */	mtctr r12
/* 813E6880 | 4E 80 04 21 */	bctrl
.L_813E6884:
/* 813E6884 | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 813E6888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E688C | 41 82 00 08 */	beq .L_813E6894
/* 813E6890 | 4B F8 45 71 */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813E6894:
/* 813E6894 | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E6898 | 38 80 00 00 */	li r4, 0x0
/* 813E689C | 54 00 10 3A */	slwi r0, r0, 2
/* 813E68A0 | 7C 7F 02 14 */	add r3, r31, r0
/* 813E68A4 | 90 83 01 5C */	stw r4, 0x15c(r3)
/* 813E68A8 | 80 1F 01 C8 */	lwz r0, 0x1c8(r31)
/* 813E68AC | 90 9F 01 6C */	stw r4, 0x16c(r31)
/* 813E68B0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E68B4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813E68B8 | 80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 813E68BC | 48 21 0F A1 */	bl fn_815F785C
/* 813E68C0 | 80 1F 01 C8 */	lwz r0, 0x1c8(r31)
/* 813E68C4 | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
/* 813E68C8 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813E68CC | 38 80 00 00 */	li r4, 0x0
/* 813E68D0 | 68 00 00 01 */	xori r0, r0, 0x1
/* 813E68D4 | 90 1F 01 C8 */	stw r0, 0x1c8(r31)
/* 813E68D8 | 4B F8 59 21 */	bl stopBannerSound__Q33ipl3snd6SystemFi
/* 813E68DC | 80 9F 01 7C */	lwz r4, 0x17c(r31)
/* 813E68E0 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813E68E4 | 38 A0 00 00 */	li r5, 0x0
/* 813E68E8 | 4B F8 51 81 */	bl stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei
/* 813E68EC | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E68F0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E68F4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813E68F8 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 813E68FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6900 | 41 82 00 1C */	beq .L_813E691C
/* 813E6904 | 41 82 00 18 */	beq .L_813E691C
/* 813E6908 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E690C | 38 80 00 01 */	li r4, 0x1
/* 813E6910 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E6914 | 7D 89 03 A6 */	mtctr r12
/* 813E6918 | 4E 80 04 21 */	bctrl
.L_813E691C:
/* 813E691C | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E6920 | 38 A0 00 00 */	li r5, 0x0
/* 813E6924 | 7F E3 FB 78 */	mr r3, r31
/* 813E6928 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E692C | 7C 9F 02 14 */	add r4, r31, r0
/* 813E6930 | 90 A4 01 64 */	stw r5, 0x164(r4)
/* 813E6934 | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E6938 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813E693C | 90 1F 01 58 */	stw r0, 0x158(r31)
/* 813E6940 | 4B FF F9 CD */	bl iplSDChannelTitle_813E630C
/* 813E6944 | 7F E3 FB 78 */	mr r3, r31
/* 813E6948 | 48 00 22 29 */	bl iplSDChannelTitle_813E8B70
/* 813E694C | 38 00 00 09 */	li r0, 0x9
/* 813E6950 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813E6954:
/* 813E6954 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E6958 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E695C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E6960 | 7C 08 03 A6 */	mtlr r0
/* 813E6964 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E6968 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E6760

# .text:0x1DB0 | 0x813E696C | size: 0x48
.fn iplSDChannelTitle_813E696C, global
/* 813E696C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E6970 | 7C 08 02 A6 */	mflr r0
/* 813E6974 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E6978 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E697C | 7C 7F 1B 78 */	mr r31, r3
/* 813E6980 | 80 83 34 AC */	lwz r4, 0x34ac(r3)
/* 813E6984 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813E6988 | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813E698C | 90 03 34 AC */	stw r0, 0x34ac(r3)
/* 813E6990 | 40 81 00 10 */	ble .L_813E69A0
/* 813E6994 | 48 00 16 A1 */	bl iplSDChannelTitle_813E8034
/* 813E6998 | 38 00 00 01 */	li r0, 0x1
/* 813E699C | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813E69A0:
/* 813E69A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E69A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E69A8 | 7C 08 03 A6 */	mtlr r0
/* 813E69AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E69B0 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E696C

# .text:0x1DF8 | 0x813E69B4 | size: 0x1D4
.fn iplSDChannelTitle_813E69B4, global
/* 813E69B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E69B8 | 7C 08 02 A6 */	mflr r0
/* 813E69BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E69C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E69C4 | 48 21 2A FD */	bl _savegpr_27
/* 813E69C8 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813E69CC | 7C 7F 1B 78 */	mr r31, r3
/* 813E69D0 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813E69D4 | 38 80 00 1B */	li r4, 0x1b
/* 813E69D8 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 813E69DC | 48 02 47 5D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E69E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E69E4 | 40 82 01 24 */	bne .L_813E6B08
/* 813E69E8 | 80 9C 00 64 */	lwz r4, 0x64(r28)
/* 813E69EC | 80 04 01 04 */	lwz r0, 0x104(r4)
/* 813E69F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E69F4 | 40 82 01 14 */	bne .L_813E6B08
/* 813E69F8 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813E69FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E6A00 | 40 82 00 50 */	bne .L_813E6A50
/* 813E6A04 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 813E6A08 | 2C 00 00 12 */	cmpwi r0, 0x12
/* 813E6A0C | 40 82 00 20 */	bne .L_813E6A2C
/* 813E6A10 | 7F E3 FB 78 */	mr r3, r31
/* 813E6A14 | 38 80 00 12 */	li r4, 0x12
/* 813E6A18 | 38 A0 00 01 */	li r5, 0x1
/* 813E6A1C | 48 02 35 79 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 813E6A20 | 38 00 00 07 */	li r0, 0x7
/* 813E6A24 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E6A28 | 48 00 01 48 */	b .L_813E6B70
.L_813E6A2C:
/* 813E6A2C | 88 1F 34 B0 */	lbz r0, 0x34b0(r31)
/* 813E6A30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E6A34 | 41 82 00 10 */	beq .L_813E6A44
/* 813E6A38 | 38 00 00 19 */	li r0, 0x19
/* 813E6A3C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E6A40 | 48 00 01 30 */	b .L_813E6B70
.L_813E6A44:
/* 813E6A44 | 38 00 00 0F */	li r0, 0xf
/* 813E6A48 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E6A4C | 48 00 01 24 */	b .L_813E6B70
.L_813E6A50:
/* 813E6A50 | 88 1F 34 B0 */	lbz r0, 0x34b0(r31)
/* 813E6A54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E6A58 | 41 82 00 10 */	beq .L_813E6A68
/* 813E6A5C | 38 00 00 1D */	li r0, 0x1d
/* 813E6A60 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E6A64 | 48 00 01 0C */	b .L_813E6B70
.L_813E6A68:
/* 813E6A68 | 83 BF 00 A8 */	lwz r29, 0xa8(r31)
/* 813E6A6C | 7F A3 EB 78 */	mr r3, r29
/* 813E6A70 | 4B F7 BE 01 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E6A74 | 38 00 00 01 */	li r0, 0x1
/* 813E6A78 | 38 80 00 24 */	li r4, 0x24
/* 813E6A7C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813E6A80 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 813E6A84 | 48 02 46 B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E6A88 | 38 80 00 0D */	li r4, 0xd
/* 813E6A8C | 48 00 37 C9 */	bl iplSDChannelButton_813EA254
/* 813E6A90 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 813E6A94 | 38 80 00 24 */	li r4, 0x24
/* 813E6A98 | 48 02 46 A1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E6A9C | 38 80 00 0E */	li r4, 0xe
/* 813E6AA0 | 48 00 37 B5 */	bl iplSDChannelButton_813EA254
/* 813E6AA4 | 3B 60 00 00 */	li r27, 0x0
/* 813E6AA8 | 3B C0 00 00 */	li r30, 0x0
/* 813E6AAC | 7F 7C DB 78 */	mr r28, r27
/* 813E6AB0 | 3B AD 8E 00 */	li r29, lbl_81696E40@sda21
.L_813E6AB4:
/* 813E6AB4 | 7C 7F F2 14 */	add r3, r31, r30
/* 813E6AB8 | 38 A0 00 01 */	li r5, 0x1
/* 813E6ABC | 93 83 01 88 */	stw r28, 0x188(r3)
/* 813E6AC0 | 80 7F 01 44 */	lwz r3, 0x144(r31)
/* 813E6AC4 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813E6AC8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E6ACC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E6AD0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E6AD4 | 7D 89 03 A6 */	mtctr r12
/* 813E6AD8 | 4E 80 04 21 */	bctrl
/* 813E6ADC | 7C 64 1B 78 */	mr r4, r3
/* 813E6AE0 | 80 7F 01 48 */	lwz r3, 0x148(r31)
/* 813E6AE4 | 4B F8 47 35 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813E6AE8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813E6AEC | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813E6AF0 | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 813E6AF4 | 41 80 FF C0 */	blt .L_813E6AB4
/* 813E6AF8 | 4B F4 D1 F5 */	bl startReceiveSchedule__Q23ipl6SystemFv
/* 813E6AFC | 38 00 00 01 */	li r0, 0x1
/* 813E6B00 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E6B04 | 48 00 00 6C */	b .L_813E6B70
.L_813E6B08:
/* 813E6B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6B0C | 41 82 00 64 */	beq .L_813E6B70
/* 813E6B10 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813E6B14 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E6B18 | 41 82 00 44 */	beq .L_813E6B5C
/* 813E6B1C | 40 80 00 10 */	bge .L_813E6B2C
/* 813E6B20 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E6B24 | 40 80 00 14 */	bge .L_813E6B38
/* 813E6B28 | 48 00 00 48 */	b .L_813E6B70
.L_813E6B2C:
/* 813E6B2C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813E6B30 | 40 80 00 40 */	bge .L_813E6B70
/* 813E6B34 | 48 00 00 34 */	b .L_813E6B68
.L_813E6B38:
/* 813E6B38 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813E6B3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E6B40 | 40 82 00 30 */	bne .L_813E6B70
/* 813E6B44 | 80 9F 00 70 */	lwz r4, 0x70(r31)
/* 813E6B48 | 7F E3 FB 78 */	mr r3, r31
/* 813E6B4C | 48 00 1E 51 */	bl iplSDChannelTitle_813E899C
/* 813E6B50 | 38 00 00 01 */	li r0, 0x1
/* 813E6B54 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813E6B58 | 48 00 00 18 */	b .L_813E6B70
.L_813E6B5C:
/* 813E6B5C | 38 00 00 02 */	li r0, 0x2
/* 813E6B60 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813E6B64 | 48 00 00 0C */	b .L_813E6B70
.L_813E6B68:
/* 813E6B68 | 38 00 00 02 */	li r0, 0x2
/* 813E6B6C | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_813E6B70:
/* 813E6B70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E6B74 | 48 21 29 99 */	bl _restgpr_27
/* 813E6B78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E6B7C | 7C 08 03 A6 */	mtlr r0
/* 813E6B80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E6B84 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E69B4

# .text:0x1FCC | 0x813E6B88 | size: 0x144
.fn iplSDChannelTitle_813E6B88, global
/* 813E6B88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E6B8C | 7C 08 02 A6 */	mflr r0
/* 813E6B90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E6B94 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E6B98 | 48 21 29 29 */	bl _savegpr_27
/* 813E6B9C | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813E6BA0 | 7C 7B 1B 78 */	mr r27, r3
/* 813E6BA4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813E6BA8 | 80 9D 00 AC */	lwz r4, 0xac(r29)
/* 813E6BAC | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813E6BB0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E6BB4 | 41 82 00 14 */	beq .L_813E6BC8
/* 813E6BB8 | 40 80 00 FC */	bge .L_813E6CB4
/* 813E6BBC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E6BC0 | 40 80 00 C0 */	bge .L_813E6C80
/* 813E6BC4 | 48 00 00 F0 */	b .L_813E6CB4
.L_813E6BC8:
/* 813E6BC8 | 88 03 34 B0 */	lbz r0, 0x34b0(r3)
/* 813E6BCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E6BD0 | 41 82 00 10 */	beq .L_813E6BE0
/* 813E6BD4 | 38 00 00 1D */	li r0, 0x1d
/* 813E6BD8 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813E6BDC | 48 00 00 D8 */	b .L_813E6CB4
.L_813E6BE0:
/* 813E6BE0 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813E6BE4 | 38 80 00 24 */	li r4, 0x24
/* 813E6BE8 | 48 02 45 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E6BEC | 38 80 00 0D */	li r4, 0xd
/* 813E6BF0 | 48 00 36 65 */	bl iplSDChannelButton_813EA254
/* 813E6BF4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813E6BF8 | 38 80 00 24 */	li r4, 0x24
/* 813E6BFC | 48 02 45 3D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E6C00 | 38 80 00 0E */	li r4, 0xe
/* 813E6C04 | 48 00 36 51 */	bl iplSDChannelButton_813EA254
/* 813E6C08 | 83 BB 00 A8 */	lwz r29, 0xa8(r27)
/* 813E6C0C | 7F A3 EB 78 */	mr r3, r29
/* 813E6C10 | 4B F7 BC 61 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E6C14 | 38 00 00 01 */	li r0, 0x1
/* 813E6C18 | 3B 80 00 00 */	li r28, 0x0
/* 813E6C1C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813E6C20 | 7F 9D E3 78 */	mr r29, r28
/* 813E6C24 | 3B E0 00 00 */	li r31, 0x0
/* 813E6C28 | 3B CD 8E 00 */	li r30, lbl_81696E40@sda21
.L_813E6C2C:
/* 813E6C2C | 7C 7B FA 14 */	add r3, r27, r31
/* 813E6C30 | 38 A0 00 01 */	li r5, 0x1
/* 813E6C34 | 93 A3 01 88 */	stw r29, 0x188(r3)
/* 813E6C38 | 80 7B 01 44 */	lwz r3, 0x144(r27)
/* 813E6C3C | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813E6C40 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E6C44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E6C48 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E6C4C | 7D 89 03 A6 */	mtctr r12
/* 813E6C50 | 4E 80 04 21 */	bctrl
/* 813E6C54 | 7C 64 1B 78 */	mr r4, r3
/* 813E6C58 | 80 7B 01 48 */	lwz r3, 0x148(r27)
/* 813E6C5C | 4B F8 45 BD */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813E6C60 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813E6C64 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E6C68 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 813E6C6C | 41 80 FF C0 */	blt .L_813E6C2C
/* 813E6C70 | 4B F4 D0 7D */	bl startReceiveSchedule__Q23ipl6SystemFv
/* 813E6C74 | 38 00 00 01 */	li r0, 0x1
/* 813E6C78 | 90 1B 00 58 */	stw r0, 0x58(r27)
/* 813E6C7C | 48 00 00 38 */	b .L_813E6CB4
.L_813E6C80:
/* 813E6C80 | 48 00 18 49 */	bl iplSDChannelTitle_813E84C8
/* 813E6C84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6C88 | 41 82 00 14 */	beq .L_813E6C9C
/* 813E6C8C | 7F 63 DB 78 */	mr r3, r27
/* 813E6C90 | 38 80 00 01 */	li r4, 0x1
/* 813E6C94 | 48 00 18 79 */	bl iplSDChannelTitle_813E850C
/* 813E6C98 | 48 00 00 1C */	b .L_813E6CB4
.L_813E6C9C:
/* 813E6C9C | 7F 63 DB 78 */	mr r3, r27
/* 813E6CA0 | 38 80 00 12 */	li r4, 0x12
/* 813E6CA4 | 38 A0 00 01 */	li r5, 0x1
/* 813E6CA8 | 48 02 32 ED */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 813E6CAC | 38 00 00 07 */	li r0, 0x7
/* 813E6CB0 | 90 1B 00 58 */	stw r0, 0x58(r27)
.L_813E6CB4:
/* 813E6CB4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E6CB8 | 48 21 28 55 */	bl _restgpr_27
/* 813E6CBC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E6CC0 | 7C 08 03 A6 */	mtlr r0
/* 813E6CC4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E6CC8 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E6B88

# .text:0x2110 | 0x813E6CCC | size: 0x158
.fn iplSDChannelTitle_813E6CCC, global
/* 813E6CCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E6CD0 | 7C 08 02 A6 */	mflr r0
/* 813E6CD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E6CD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E6CDC | 48 21 27 E9 */	bl _savegpr_28
/* 813E6CE0 | 80 83 01 3C */	lwz r4, 0x13c(r3)
/* 813E6CE4 | 7C 7F 1B 78 */	mr r31, r3
/* 813E6CE8 | 80 64 07 18 */	lwz r3, 0x718(r4)
/* 813E6CEC | 4B F6 1B 1D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813E6CF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6CF4 | 40 82 01 18 */	bne .L_813E6E0C
/* 813E6CF8 | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E6CFC | 38 80 00 00 */	li r4, 0x0
/* 813E6D00 | 4B F8 3D D1 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E6D04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6D08 | 40 82 01 04 */	bne .L_813E6E0C
/* 813E6D0C | 80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 813E6D10 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E6D14 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E6D18 | 40 82 00 08 */	bne .L_813E6D20
/* 813E6D1C | 48 00 00 F0 */	b .L_813E6E0C
.L_813E6D20:
/* 813E6D20 | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E6D24 | 38 80 00 01 */	li r4, 0x1
/* 813E6D28 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E6D2C | 48 12 B5 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E6D30 | 3B A0 00 00 */	li r29, 0x0
/* 813E6D34 | 38 80 00 01 */	li r4, 0x1
/* 813E6D38 | 93 A3 00 18 */	stw r29, 0x18(r3)
/* 813E6D3C | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E6D40 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E6D44 | 48 12 B5 D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E6D48 | 4B F8 2E DD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E6D4C | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E6D50 | 38 80 00 01 */	li r4, 0x1
/* 813E6D54 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E6D58 | 48 12 B5 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E6D5C | 7C 7C 1B 78 */	mr r28, r3
/* 813E6D60 | 4B F7 BB 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E6D64 | 3B C0 00 01 */	li r30, 0x1
/* 813E6D68 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 813E6D6C | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813E6D70 | 4B F8 2E B5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E6D74 | 83 9F 00 A8 */	lwz r28, 0xa8(r31)
/* 813E6D78 | 7F 83 E3 78 */	mr r3, r28
/* 813E6D7C | 4B F7 BA F5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E6D80 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 813E6D84 | 80 7F 01 34 */	lwz r3, 0x134(r31)
/* 813E6D88 | 93 A3 00 18 */	stw r29, 0x18(r3)
/* 813E6D8C | 80 7F 01 34 */	lwz r3, 0x134(r31)
/* 813E6D90 | 4B F8 2E 95 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E6D94 | 83 9F 01 34 */	lwz r28, 0x134(r31)
/* 813E6D98 | 7F 83 E3 78 */	mr r3, r28
/* 813E6D9C | 4B F7 BA D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E6DA0 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 813E6DA4 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 813E6DA8 | 80 9F 00 64 */	lwz r4, 0x64(r31)
/* 813E6DAC | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813E6DB0 | 4B FF 91 09 */	bl iplSDChannelSelect_813DFEB8
/* 813E6DB4 | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813E6DB8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813E6DBC | 40 82 00 18 */	bne .L_813E6DD4
/* 813E6DC0 | 38 60 00 1A */	li r3, 0x1a
/* 813E6DC4 | 38 00 00 AF */	li r0, 0xaf
/* 813E6DC8 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 813E6DCC | 90 1F 34 A8 */	stw r0, 0x34a8(r31)
/* 813E6DD0 | 48 00 00 3C */	b .L_813E6E0C
.L_813E6DD4:
/* 813E6DD4 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 813E6DD8 | 38 FF 02 28 */	addi r7, r31, 0x228
/* 813E6DDC | 80 BF 02 20 */	lwz r5, 0x220(r31)
/* 813E6DE0 | 80 DF 02 24 */	lwz r6, 0x224(r31)
/* 813E6DE4 | 4B FF 46 39 */	bl iplSDChannelSelect_813DB41C
/* 813E6DE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6DEC | 41 82 00 10 */	beq .L_813E6DFC
/* 813E6DF0 | 38 00 00 14 */	li r0, 0x14
/* 813E6DF4 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E6DF8 | 48 00 00 14 */	b .L_813E6E0C
.L_813E6DFC:
/* 813E6DFC | 38 60 00 1A */	li r3, 0x1a
/* 813E6E00 | 38 00 00 AE */	li r0, 0xae
/* 813E6E04 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 813E6E08 | 90 1F 34 A8 */	stw r0, 0x34a8(r31)
.L_813E6E0C:
/* 813E6E0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E6E10 | 48 21 27 01 */	bl _restgpr_28
/* 813E6E14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E6E18 | 7C 08 03 A6 */	mtlr r0
/* 813E6E1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E6E20 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E6CCC

# .text:0x2268 | 0x813E6E24 | size: 0x17C
.fn iplSDChannelTitle_813E6E24, global
/* 813E6E24 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E6E28 | 7C 08 02 A6 */	mflr r0
/* 813E6E2C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E6E30 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813E6E34 | 7C 7F 1B 78 */	mr r31, r3
/* 813E6E38 | 80 83 01 3C */	lwz r4, 0x13c(r3)
/* 813E6E3C | 80 64 07 18 */	lwz r3, 0x718(r4)
/* 813E6E40 | 4B F6 19 C9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813E6E44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6E48 | 40 82 01 44 */	bne .L_813E6F8C
/* 813E6E4C | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E6E50 | 38 80 00 01 */	li r4, 0x1
/* 813E6E54 | 4B F8 3C 7D */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E6E58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6E5C | 41 82 00 08 */	beq .L_813E6E64
/* 813E6E60 | 48 00 01 2C */	b .L_813E6F8C
.L_813E6E64:
/* 813E6E64 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 813E6E68 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813E6E6C | 4B F6 19 C9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813E6E70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6E74 | 41 82 00 0C */	beq .L_813E6E80
/* 813E6E78 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 813E6E7C | 40 82 00 C4 */	bne .L_813E6F40
.L_813E6E80:
/* 813E6E80 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 813E6E84 | 38 9F 02 28 */	addi r4, r31, 0x228
/* 813E6E88 | 4B FF 60 8D */	bl iplSDChannelSelect_813DCF14
/* 813E6E8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6E90 | 41 82 00 10 */	beq .L_813E6EA0
/* 813E6E94 | 38 00 00 0F */	li r0, 0xf
/* 813E6E98 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E6E9C | 48 00 00 F0 */	b .L_813E6F8C
.L_813E6EA0:
/* 813E6EA0 | 80 7F 02 28 */	lwz r3, 0x228(r31)
/* 813E6EA4 | 3C 00 03 80 */	lis r0, 0x380
/* 813E6EA8 | 7C 03 00 40 */	cmplw r3, r0
/* 813E6EAC | 40 80 00 20 */	bge .L_813E6ECC
/* 813E6EB0 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813E6EB4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813E6EB8 | 38 9F 02 28 */	addi r4, r31, 0x228
/* 813E6EBC | 80 1F 02 2C */	lwz r0, 0x22c(r31)
/* 813E6EC0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813E6EC4 | 48 00 00 DD */	bl iplSDChannelTitle_813E6FA0
/* 813E6EC8 | 48 00 00 1C */	b .L_813E6EE4
.L_813E6ECC:
/* 813E6ECC | 38 61 00 20 */	addi r3, r1, 0x20
/* 813E6ED0 | 38 9F 02 28 */	addi r4, r31, 0x228
/* 813E6ED4 | 48 00 00 CD */	bl iplSDChannelTitle_813E6FA0
/* 813E6ED8 | 7C 64 1B 78 */	mr r4, r3
/* 813E6EDC | 38 61 00 18 */	addi r3, r1, 0x18
/* 813E6EE0 | 48 00 00 C1 */	bl iplSDChannelTitle_813E6FA0
.L_813E6EE4:
/* 813E6EE4 | 81 01 00 18 */	lwz r8, 0x18(r1)
/* 813E6EE8 | 38 7F 0A 30 */	addi r3, r31, 0xa30
/* 813E6EEC | 80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 813E6EF0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813E6EF4 | 80 C1 00 20 */	lwz r6, 0x20(r1)
/* 813E6EF8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813E6EFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E6F00 | 91 01 00 08 */	stw r8, 0x8(r1)
/* 813E6F04 | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 813E6F08 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 813E6F0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E6F10 | 48 00 58 21 */	bl ipl_813EC730
/* 813E6F14 | 38 7F 0A 30 */	addi r3, r31, 0xa30
/* 813E6F18 | 48 00 61 6D */	bl ipl_813ED084
/* 813E6F1C | 38 00 00 01 */	li r0, 0x1
/* 813E6F20 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E6F24 | 98 1F 34 B1 */	stb r0, 0x34b1(r31)
/* 813E6F28 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E6F2C | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813E6F30 | 4B F6 14 15 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813E6F34 | 38 00 00 17 */	li r0, 0x17
/* 813E6F38 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E6F3C | 48 00 00 50 */	b .L_813E6F8C
.L_813E6F40:
/* 813E6F40 | 38 03 00 0F */	addi r0, r3, 0xf
/* 813E6F44 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E6F48 | 41 81 00 18 */	bgt .L_813E6F60
/* 813E6F4C | 38 60 00 1A */	li r3, 0x1a
/* 813E6F50 | 38 00 00 AF */	li r0, 0xaf
/* 813E6F54 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 813E6F58 | 90 1F 34 A8 */	stw r0, 0x34a8(r31)
/* 813E6F5C | 48 00 00 30 */	b .L_813E6F8C
.L_813E6F60:
/* 813E6F60 | 2C 03 FF F0 */	cmpwi r3, -0x10
/* 813E6F64 | 40 82 00 18 */	bne .L_813E6F7C
/* 813E6F68 | 38 60 00 1A */	li r3, 0x1a
/* 813E6F6C | 38 00 00 C7 */	li r0, 0xc7
/* 813E6F70 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 813E6F74 | 90 1F 34 A8 */	stw r0, 0x34a8(r31)
/* 813E6F78 | 48 00 00 14 */	b .L_813E6F8C
.L_813E6F7C:
/* 813E6F7C | 38 60 00 1A */	li r3, 0x1a
/* 813E6F80 | 38 00 00 AE */	li r0, 0xae
/* 813E6F84 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 813E6F88 | 90 1F 34 A8 */	stw r0, 0x34a8(r31)
.L_813E6F8C:
/* 813E6F8C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E6F90 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813E6F94 | 7C 08 03 A6 */	mtlr r0
/* 813E6F98 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E6F9C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E6E24

# .text:0x23E4 | 0x813E6FA0 | size: 0x14
.fn iplSDChannelTitle_813E6FA0, global
/* 813E6FA0 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 813E6FA4 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 813E6FA8 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813E6FAC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813E6FB0 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E6FA0

# .text:0x23F8 | 0x813E6FB4 | size: 0xC0
.fn iplSDChannelTitle_813E6FB4, global
/* 813E6FB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E6FB8 | 7C 08 02 A6 */	mflr r0
/* 813E6FBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E6FC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E6FC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813E6FC8 | 38 63 0A 30 */	addi r3, r3, 0xa30
/* 813E6FCC | 48 00 60 B9 */	bl ipl_813ED084
/* 813E6FD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E6FD4 | 41 82 00 8C */	beq .L_813E7060
/* 813E6FD8 | 80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 813E6FDC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813E6FE0 | 41 82 00 20 */	beq .L_813E7000
/* 813E6FE4 | 40 80 00 10 */	bge .L_813E6FF4
/* 813E6FE8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E6FEC | 40 80 00 30 */	bge .L_813E701C
/* 813E6FF0 | 48 00 00 50 */	b .L_813E7040
.L_813E6FF4:
/* 813E6FF4 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813E6FF8 | 40 80 00 48 */	bge .L_813E7040
/* 813E6FFC | 48 00 00 20 */	b .L_813E701C
.L_813E7000:
/* 813E7000 | 7F E3 FB 78 */	mr r3, r31
/* 813E7004 | 38 80 00 15 */	li r4, 0x15
/* 813E7008 | 38 A0 00 02 */	li r5, 0x2
/* 813E700C | 48 02 2F 89 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 813E7010 | 38 00 00 1F */	li r0, 0x1f
/* 813E7014 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E7018 | 48 00 00 48 */	b .L_813E7060
.L_813E701C:
/* 813E701C | 38 00 00 00 */	li r0, 0x0
/* 813E7020 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E7024 | 98 1F 34 B1 */	stb r0, 0x34b1(r31)
/* 813E7028 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E702C | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813E7030 | 4B F6 12 E9 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813E7034 | 38 00 00 1D */	li r0, 0x1d
/* 813E7038 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E703C | 48 00 00 24 */	b .L_813E7060
.L_813E7040:
/* 813E7040 | 38 00 00 00 */	li r0, 0x0
/* 813E7044 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E7048 | 98 1F 34 B1 */	stb r0, 0x34b1(r31)
/* 813E704C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E7050 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813E7054 | 4B F6 12 C5 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813E7058 | 38 00 00 0F */	li r0, 0xf
/* 813E705C | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813E7060:
/* 813E7060 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E7064 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E7068 | 7C 08 03 A6 */	mtlr r0
/* 813E706C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E7070 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E6FB4

# .text:0x24B8 | 0x813E7074 | size: 0x130
.fn iplSDChannelTitle_813E7074, global
/* 813E7074 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E7078 | 7C 08 02 A6 */	mflr r0
/* 813E707C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E7080 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E7084 | 48 21 24 45 */	bl _savegpr_29
/* 813E7088 | 80 83 01 3C */	lwz r4, 0x13c(r3)
/* 813E708C | 7C 7F 1B 78 */	mr r31, r3
/* 813E7090 | 80 64 07 18 */	lwz r3, 0x718(r4)
/* 813E7094 | 4B F6 17 75 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813E7098 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E709C | 40 82 00 F0 */	bne .L_813E718C
/* 813E70A0 | 88 1F 34 B0 */	lbz r0, 0x34b0(r31)
/* 813E70A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E70A8 | 41 82 00 50 */	beq .L_813E70F8
/* 813E70AC | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E70B0 | 38 80 00 03 */	li r4, 0x3
/* 813E70B4 | 4B F8 3A 1D */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E70B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E70BC | 40 82 00 3C */	bne .L_813E70F8
/* 813E70C0 | 80 7F 01 54 */	lwz r3, 0x154(r31)
/* 813E70C4 | 38 80 00 03 */	li r4, 0x3
/* 813E70C8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E70CC | 48 12 B2 4D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E70D0 | 7C 7E 1B 78 */	mr r30, r3
/* 813E70D4 | 4B F7 B7 9D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E70D8 | 38 00 00 01 */	li r0, 0x1
/* 813E70DC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E70E0 | 3C 80 81 65 */	lis r4, lbl_81655409@ha
/* 813E70E4 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813E70E8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E70EC | 38 84 54 09 */	addi r4, r4, lbl_81655409@l
/* 813E70F0 | 4B F8 43 7D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E70F4 | 90 7F 34 B4 */	stw r3, 0x34b4(r31)
.L_813E70F8:
/* 813E70F8 | 48 18 37 9D */	bl fn_8156A894
/* 813E70FC | 7C 80 1B 79 */	or. r0, r4, r3
/* 813E7100 | 7C 9D 23 78 */	mr r29, r4
/* 813E7104 | 7C 7E 1B 78 */	mr r30, r3
/* 813E7108 | 41 82 00 64 */	beq .L_813E716C
/* 813E710C | 80 1F 02 20 */	lwz r0, 0x220(r31)
/* 813E7110 | 80 BF 02 24 */	lwz r5, 0x224(r31)
/* 813E7114 | 7C 00 1A 78 */	xor r0, r0, r3
/* 813E7118 | 7C A3 22 78 */	xor r3, r5, r4
/* 813E711C | 7C 60 03 79 */	or. r0, r3, r0
/* 813E7120 | 41 82 00 4C */	beq .L_813E716C
/* 813E7124 | 4B F4 CC A9 */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 813E7128 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E712C | 41 82 00 60 */	beq .L_813E718C
/* 813E7130 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 813E7134 | 7F A6 EB 78 */	mr r6, r29
/* 813E7138 | 7F C5 F3 78 */	mr r5, r30
/* 813E713C | 38 E0 00 01 */	li r7, 0x1
/* 813E7140 | 4B FF 43 95 */	bl iplSDChannelSelect_813DB4D4
/* 813E7144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7148 | 41 82 00 10 */	beq .L_813E7158
/* 813E714C | 38 00 00 10 */	li r0, 0x10
/* 813E7150 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E7154 | 48 00 00 38 */	b .L_813E718C
.L_813E7158:
/* 813E7158 | 38 60 00 1A */	li r3, 0x1a
/* 813E715C | 38 00 00 AE */	li r0, 0xae
/* 813E7160 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 813E7164 | 90 1F 34 A8 */	stw r0, 0x34a8(r31)
/* 813E7168 | 48 00 00 24 */	b .L_813E718C
.L_813E716C:
/* 813E716C | 88 1F 34 B0 */	lbz r0, 0x34b0(r31)
/* 813E7170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7174 | 41 82 00 10 */	beq .L_813E7184
/* 813E7178 | 38 00 00 11 */	li r0, 0x11
/* 813E717C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E7180 | 48 00 00 0C */	b .L_813E718C
.L_813E7184:
/* 813E7184 | 38 00 00 18 */	li r0, 0x18
/* 813E7188 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813E718C:
/* 813E718C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E7190 | 48 21 23 85 */	bl _restgpr_29
/* 813E7194 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E7198 | 7C 08 03 A6 */	mtlr r0
/* 813E719C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E71A0 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7074

# .text:0x25E8 | 0x813E71A4 | size: 0xA8
.fn iplSDChannelTitle_813E71A4, global
/* 813E71A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E71A8 | 7C 08 02 A6 */	mflr r0
/* 813E71AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E71B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E71B4 | 7C 7F 1B 78 */	mr r31, r3
/* 813E71B8 | 80 83 01 3C */	lwz r4, 0x13c(r3)
/* 813E71BC | 80 64 07 18 */	lwz r3, 0x718(r4)
/* 813E71C0 | 4B F6 16 49 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813E71C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E71C8 | 40 82 00 70 */	bne .L_813E7238
/* 813E71CC | 38 80 00 00 */	li r4, 0x0
/* 813E71D0 | 38 60 00 00 */	li r3, 0x0
/* 813E71D4 | 48 18 37 39 */	bl fn_8156A90C
/* 813E71D8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E71DC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E71E0 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813E71E4 | 4B F5 38 0D */	bl iplChannelManager_8133A9F0
/* 813E71E8 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 813E71EC | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813E71F0 | 4B F6 16 45 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813E71F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E71F8 | 40 82 00 28 */	bne .L_813E7220
/* 813E71FC | 88 1F 34 B0 */	lbz r0, 0x34b0(r31)
/* 813E7200 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7204 | 41 82 00 10 */	beq .L_813E7214
/* 813E7208 | 38 00 00 11 */	li r0, 0x11
/* 813E720C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E7210 | 48 00 00 28 */	b .L_813E7238
.L_813E7214:
/* 813E7214 | 38 00 00 18 */	li r0, 0x18
/* 813E7218 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E721C | 48 00 00 1C */	b .L_813E7238
.L_813E7220:
/* 813E7220 | 38 60 00 00 */	li r3, 0x0
/* 813E7224 | 48 18 27 99 */	bl fn_815699BC
/* 813E7228 | 38 60 00 1A */	li r3, 0x1a
/* 813E722C | 38 00 00 AE */	li r0, 0xae
/* 813E7230 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 813E7234 | 90 1F 34 A8 */	stw r0, 0x34a8(r31)
.L_813E7238:
/* 813E7238 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E723C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E7240 | 7C 08 03 A6 */	mtlr r0
/* 813E7244 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E7248 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E71A4

# .text:0x2690 | 0x813E724C | size: 0x6C
.fn iplSDChannelTitle_813E724C, global
/* 813E724C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E7250 | 7C 08 02 A6 */	mflr r0
/* 813E7254 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E7258 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E725C | 7C 7F 1B 78 */	mr r31, r3
/* 813E7260 | 80 83 01 3C */	lwz r4, 0x13c(r3)
/* 813E7264 | 80 64 07 18 */	lwz r3, 0x718(r4)
/* 813E7268 | 4B F6 15 A1 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813E726C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7270 | 40 82 00 34 */	bne .L_813E72A4
/* 813E7274 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 813E7278 | 80 9F 02 24 */	lwz r4, 0x224(r31)
/* 813E727C | 4B FF 41 45 */	bl iplSDChannelSelect_813DB3C0
/* 813E7280 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7284 | 41 82 00 10 */	beq .L_813E7294
/* 813E7288 | 38 00 00 16 */	li r0, 0x16
/* 813E728C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E7290 | 48 00 00 14 */	b .L_813E72A4
.L_813E7294:
/* 813E7294 | 38 60 00 1A */	li r3, 0x1a
/* 813E7298 | 38 00 00 AE */	li r0, 0xae
/* 813E729C | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 813E72A0 | 90 1F 34 A8 */	stw r0, 0x34a8(r31)
.L_813E72A4:
/* 813E72A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E72A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E72AC | 7C 08 03 A6 */	mtlr r0
/* 813E72B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E72B4 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E724C

# .text:0x26FC | 0x813E72B8 | size: 0x160
.fn iplSDChannelTitle_813E72B8, global
/* 813E72B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E72BC | 7C 08 02 A6 */	mflr r0
/* 813E72C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E72C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E72C8 | 48 21 21 FD */	bl _savegpr_28
/* 813E72CC | 80 A3 01 54 */	lwz r5, 0x154(r3)
/* 813E72D0 | 7C 7C 1B 78 */	mr r28, r3
/* 813E72D4 | 83 AD A6 9C */	lwz r29, lbl_816986DC@sda21(r0)
/* 813E72D8 | 38 80 00 02 */	li r4, 0x2
/* 813E72DC | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813E72E0 | 48 12 B0 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E72E4 | 6F A4 80 00 */	xoris r4, r29, 0x8000
/* 813E72E8 | 3C 00 43 30 */	lis r0, 0x4330
/* 813E72EC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813E72F0 | C8 22 87 78 */	lfd f1, lbl_81694B78@sda21(r0)
/* 813E72F4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813E72F8 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813E72FC | EC 20 08 28 */	fsubs f1, f0, f1
/* 813E7300 | 4B F8 29 61 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 813E7304 | 80 7C 01 3C */	lwz r3, 0x13c(r28)
/* 813E7308 | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813E730C | 4B F6 14 FD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813E7310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7314 | 40 82 00 EC */	bne .L_813E7400
/* 813E7318 | 80 7C 01 3C */	lwz r3, 0x13c(r28)
/* 813E731C | 80 63 07 18 */	lwz r3, 0x718(r3)
/* 813E7320 | 4B F6 15 15 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813E7324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7328 | 7C 7D 1B 78 */	mr r29, r3
/* 813E732C | 41 82 00 0C */	beq .L_813E7338
/* 813E7330 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 813E7334 | 40 82 00 80 */	bne .L_813E73B4
.L_813E7338:
/* 813E7338 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813E733C | 80 BC 02 20 */	lwz r5, 0x220(r28)
/* 813E7340 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813E7344 | 80 DC 02 24 */	lwz r6, 0x224(r28)
/* 813E7348 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813E734C | 4B F5 1E 75 */	bl iplChannelManager_813391C0
/* 813E7350 | 80 7C 01 54 */	lwz r3, 0x154(r28)
/* 813E7354 | 38 80 00 03 */	li r4, 0x3
/* 813E7358 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E735C | 48 12 AF BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E7360 | 3B C0 00 00 */	li r30, 0x0
/* 813E7364 | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 813E7368 | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 813E736C | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813E7370 | 38 A0 00 00 */	li r5, 0x0
/* 813E7374 | 80 9C 34 B4 */	lwz r4, 0x34b4(r28)
/* 813E7378 | 4B F8 46 F1 */	bl stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei
/* 813E737C | 3C 80 81 65 */	lis r4, lbl_81655419@ha
/* 813E7380 | 93 DC 34 B4 */	stw r30, 0x34b4(r28)
/* 813E7384 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813E7388 | 38 84 54 19 */	addi r4, r4, lbl_81655419@l
/* 813E738C | 4B F8 40 E1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E7390 | 3C 80 81 3F */	lis r4, iplSDChannelTitle_813E8E70@ha
/* 813E7394 | 80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 813E7398 | 7F 85 E3 78 */	mr r5, r28
/* 813E739C | 38 C0 00 00 */	li r6, 0x0
/* 813E73A0 | 38 84 8E 70 */	addi r4, r4, iplSDChannelTitle_813E8E70@l
/* 813E73A4 | 48 21 0E A5 */	bl fn_815F8248
/* 813E73A8 | 38 00 00 18 */	li r0, 0x18
/* 813E73AC | 90 1C 00 58 */	stw r0, 0x58(r28)
/* 813E73B0 | 48 00 00 50 */	b .L_813E7400
.L_813E73B4:
/* 813E73B4 | 38 80 00 00 */	li r4, 0x0
/* 813E73B8 | 38 60 00 00 */	li r3, 0x0
/* 813E73BC | 48 18 35 51 */	bl fn_8156A90C
/* 813E73C0 | 38 60 00 00 */	li r3, 0x0
/* 813E73C4 | 48 18 25 F9 */	bl fn_815699BC
/* 813E73C8 | 38 00 00 1A */	li r0, 0x1a
/* 813E73CC | 2C 1D FF F1 */	cmpwi r29, -0xf
/* 813E73D0 | 90 1C 00 58 */	stw r0, 0x58(r28)
/* 813E73D4 | 40 82 00 10 */	bne .L_813E73E4
/* 813E73D8 | 38 00 00 AF */	li r0, 0xaf
/* 813E73DC | 90 1C 34 A8 */	stw r0, 0x34a8(r28)
/* 813E73E0 | 48 00 00 20 */	b .L_813E7400
.L_813E73E4:
/* 813E73E4 | 2C 1D FF F0 */	cmpwi r29, -0x10
/* 813E73E8 | 40 82 00 10 */	bne .L_813E73F8
/* 813E73EC | 38 00 00 C7 */	li r0, 0xc7
/* 813E73F0 | 90 1C 34 A8 */	stw r0, 0x34a8(r28)
/* 813E73F4 | 48 00 00 0C */	b .L_813E7400
.L_813E73F8:
/* 813E73F8 | 38 00 00 AE */	li r0, 0xae
/* 813E73FC | 90 1C 34 A8 */	stw r0, 0x34a8(r28)
.L_813E7400:
/* 813E7400 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E7404 | 48 21 21 0D */	bl _restgpr_28
/* 813E7408 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E740C | 7C 08 03 A6 */	mtlr r0
/* 813E7410 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E7414 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E72B8

# .text:0x285C | 0x813E7418 | size: 0x80
.fn iplSDChannelTitle_813E7418, global
/* 813E7418 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E741C | 7C 08 02 A6 */	mflr r0
/* 813E7420 | 38 80 00 03 */	li r4, 0x3
/* 813E7424 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E7428 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E742C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E7430 | 7C 7E 1B 78 */	mr r30, r3
/* 813E7434 | 80 A3 01 54 */	lwz r5, 0x154(r3)
/* 813E7438 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813E743C | 48 12 AE DD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E7440 | 3B E0 00 00 */	li r31, 0x0
/* 813E7444 | 3C 80 81 09 */	lis r4, sSystem__Q23ipl3snd@ha
/* 813E7448 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 813E744C | 38 64 99 2C */	addi r3, r4, sSystem__Q23ipl3snd@l
/* 813E7450 | 38 A0 00 00 */	li r5, 0x0
/* 813E7454 | 80 9E 34 B4 */	lwz r4, 0x34b4(r30)
/* 813E7458 | 4B F8 46 11 */	bl stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei
/* 813E745C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E7460 | 93 FE 34 B4 */	stw r31, 0x34b4(r30)
/* 813E7464 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E7468 | 80 9E 34 A8 */	lwz r4, 0x34a8(r30)
/* 813E746C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813E7470 | 38 A0 00 2E */	li r5, 0x2e
/* 813E7474 | 4B F5 F2 85 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813E7478 | 38 00 00 1B */	li r0, 0x1b
/* 813E747C | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E7480 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E7484 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E7488 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E748C | 7C 08 03 A6 */	mtlr r0
/* 813E7490 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E7494 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7418

# .text:0x28DC | 0x813E7498 | size: 0x54
.fn iplSDChannelTitle_813E7498, global
/* 813E7498 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E749C | 7C 08 02 A6 */	mflr r0
/* 813E74A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E74A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E74A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813E74AC | 48 18 0E 99 */	bl fn_81568344
/* 813E74B0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813E74B4 | 41 82 00 24 */	beq .L_813E74D8
/* 813E74B8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E74BC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E74C0 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813E74C4 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813E74C8 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813E74CC | 41 82 00 0C */	beq .L_813E74D8
/* 813E74D0 | 38 00 00 1D */	li r0, 0x1d
/* 813E74D4 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813E74D8:
/* 813E74D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E74DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E74E0 | 7C 08 03 A6 */	mtlr r0
/* 813E74E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E74E8 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7498

# .text:0x2930 | 0x813E74EC | size: 0x12C
.fn iplSDChannelTitle_813E74EC, global
/* 813E74EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E74F0 | 7C 08 02 A6 */	mflr r0
/* 813E74F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E74F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E74FC | 48 21 1F C9 */	bl _savegpr_28
/* 813E7500 | 7C 7C 1B 78 */	mr r28, r3
/* 813E7504 | 80 63 01 54 */	lwz r3, 0x154(r3)
/* 813E7508 | 38 80 00 01 */	li r4, 0x1
/* 813E750C | 4B F8 35 C5 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E7510 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7514 | 40 82 00 EC */	bne .L_813E7600
/* 813E7518 | 80 7C 00 A8 */	lwz r3, 0xa8(r28)
/* 813E751C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E7520 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E7524 | 41 82 00 DC */	beq .L_813E7600
/* 813E7528 | 80 7C 01 34 */	lwz r3, 0x134(r28)
/* 813E752C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E7530 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E7534 | 41 82 00 CC */	beq .L_813E7600
/* 813E7538 | 3B C0 00 01 */	li r30, 0x1
/* 813E753C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E7540 | 9B DC 34 B1 */	stb r30, 0x34b1(r28)
/* 813E7544 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E7548 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813E754C | 4B F6 0D F9 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813E7550 | 80 7C 01 54 */	lwz r3, 0x154(r28)
/* 813E7554 | 38 80 00 01 */	li r4, 0x1
/* 813E7558 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E755C | 48 12 AD BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E7560 | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 813E7564 | 38 80 00 01 */	li r4, 0x1
/* 813E7568 | 80 7C 01 54 */	lwz r3, 0x154(r28)
/* 813E756C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E7570 | 48 12 AD A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E7574 | 4B F8 26 B1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E7578 | 80 7C 01 54 */	lwz r3, 0x154(r28)
/* 813E757C | 38 80 00 01 */	li r4, 0x1
/* 813E7580 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E7584 | 48 12 AD 95 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E7588 | 7C 7D 1B 78 */	mr r29, r3
/* 813E758C | 4B F7 B2 E5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E7590 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813E7594 | 80 7C 01 34 */	lwz r3, 0x134(r28)
/* 813E7598 | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 813E759C | 80 7C 01 34 */	lwz r3, 0x134(r28)
/* 813E75A0 | 4B F8 26 85 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E75A4 | 83 BC 01 34 */	lwz r29, 0x134(r28)
/* 813E75A8 | 7F A3 EB 78 */	mr r3, r29
/* 813E75AC | 4B F7 B2 C5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E75B0 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813E75B4 | 80 7C 00 A8 */	lwz r3, 0xa8(r28)
/* 813E75B8 | 4B F8 26 6D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E75BC | 83 BC 00 A8 */	lwz r29, 0xa8(r28)
/* 813E75C0 | 7F A3 EB 78 */	mr r3, r29
/* 813E75C4 | 4B F7 B2 AD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E75C8 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813E75CC | 38 80 00 24 */	li r4, 0x24
/* 813E75D0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E75D4 | 48 02 3B 65 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E75D8 | 38 80 00 0D */	li r4, 0xd
/* 813E75DC | 48 00 2C 79 */	bl iplSDChannelButton_813EA254
/* 813E75E0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E75E4 | 38 80 00 24 */	li r4, 0x24
/* 813E75E8 | 48 02 3B 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E75EC | 38 80 00 0E */	li r4, 0xe
/* 813E75F0 | 48 00 2C 65 */	bl iplSDChannelButton_813EA254
/* 813E75F4 | 4B F4 C6 F9 */	bl startReceiveSchedule__Q23ipl6SystemFv
/* 813E75F8 | 38 00 00 1E */	li r0, 0x1e
/* 813E75FC | 90 1C 00 58 */	stw r0, 0x58(r28)
.L_813E7600:
/* 813E7600 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E7604 | 48 21 1F 0D */	bl _restgpr_28
/* 813E7608 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E760C | 7C 08 03 A6 */	mtlr r0
/* 813E7610 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E7614 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E74EC

# .text:0x2A5C | 0x813E7618 | size: 0xB0
.fn iplSDChannelTitle_813E7618, global
/* 813E7618 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E761C | 7C 08 02 A6 */	mflr r0
/* 813E7620 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E7624 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E7628 | 48 21 1E 99 */	bl _savegpr_27
/* 813E762C | 7C 7B 1B 78 */	mr r27, r3
/* 813E7630 | 80 63 01 54 */	lwz r3, 0x154(r3)
/* 813E7634 | 38 80 00 01 */	li r4, 0x1
/* 813E7638 | 4B F8 34 99 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E763C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7640 | 40 82 00 70 */	bne .L_813E76B0
/* 813E7644 | 80 7B 01 34 */	lwz r3, 0x134(r27)
/* 813E7648 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E764C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E7650 | 41 82 00 60 */	beq .L_813E76B0
/* 813E7654 | 3B 80 00 00 */	li r28, 0x0
/* 813E7658 | 3B E0 00 00 */	li r31, 0x0
/* 813E765C | 7F 9D E3 78 */	mr r29, r28
/* 813E7660 | 3B CD 8E 00 */	li r30, lbl_81696E40@sda21
.L_813E7664:
/* 813E7664 | 7C 7B FA 14 */	add r3, r27, r31
/* 813E7668 | 38 A0 00 01 */	li r5, 0x1
/* 813E766C | 93 A3 01 88 */	stw r29, 0x188(r3)
/* 813E7670 | 80 7B 01 44 */	lwz r3, 0x144(r27)
/* 813E7674 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813E7678 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E767C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E7680 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E7684 | 7D 89 03 A6 */	mtctr r12
/* 813E7688 | 4E 80 04 21 */	bctrl
/* 813E768C | 7C 64 1B 78 */	mr r4, r3
/* 813E7690 | 80 7B 01 48 */	lwz r3, 0x148(r27)
/* 813E7694 | 4B F8 3B 85 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813E7698 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813E769C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E76A0 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 813E76A4 | 41 80 FF C0 */	blt .L_813E7664
/* 813E76A8 | 38 00 00 01 */	li r0, 0x1
/* 813E76AC | 90 1B 00 58 */	stw r0, 0x58(r27)
.L_813E76B0:
/* 813E76B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E76B4 | 48 21 1E 59 */	bl _restgpr_27
/* 813E76B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E76BC | 7C 08 03 A6 */	mtlr r0
/* 813E76C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E76C4 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7618

# .text:0x2B0C | 0x813E76C8 | size: 0xB8
.fn iplSDChannelTitle_813E76C8, global
/* 813E76C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E76CC | 7C 08 02 A6 */	mflr r0
/* 813E76D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E76D4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813E76D8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E76DC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E76E0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813E76E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813E76E8 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E76EC | 4B F5 07 79 */	bl iplChannelManager_81337E64
/* 813E76F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E76F4 | 40 82 00 24 */	bne .L_813E7718
/* 813E76F8 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E76FC | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813E7700 | 80 BE 02 20 */	lwz r5, 0x220(r30)
/* 813E7704 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813E7708 | 80 DE 02 24 */	lwz r6, 0x224(r30)
/* 813E770C | 4B F5 07 6D */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813E7710 | 7C 80 1B 79 */	or. r0, r4, r3
/* 813E7714 | 41 82 00 54 */	beq .L_813E7768
.L_813E7718:
/* 813E7718 | 80 1E 01 58 */	lwz r0, 0x158(r30)
/* 813E771C | 7F C3 F3 78 */	mr r3, r30
/* 813E7720 | 80 BE 02 20 */	lwz r5, 0x220(r30)
/* 813E7724 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E7728 | 80 DE 02 24 */	lwz r6, 0x224(r30)
/* 813E772C | 7C 9E 02 14 */	add r4, r30, r0
/* 813E7730 | 38 E4 01 64 */	addi r7, r4, 0x164
/* 813E7734 | 48 00 16 99 */	bl iplSDChannelTitle_813E8DCC
/* 813E7738 | 80 1E 01 58 */	lwz r0, 0x158(r30)
/* 813E773C | 54 00 10 3A */	slwi r0, r0, 2
/* 813E7740 | 7C 9E 02 14 */	add r4, r30, r0
/* 813E7744 | 90 64 01 5C */	stw r3, 0x15c(r4)
/* 813E7748 | 88 1E 34 B0 */	lbz r0, 0x34b0(r30)
/* 813E774C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7750 | 41 82 00 10 */	beq .L_813E7760
/* 813E7754 | 38 00 00 0D */	li r0, 0xd
/* 813E7758 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E775C | 48 00 00 0C */	b .L_813E7768
.L_813E7760:
/* 813E7760 | 38 00 00 19 */	li r0, 0x19
/* 813E7764 | 90 1E 00 58 */	stw r0, 0x58(r30)
.L_813E7768:
/* 813E7768 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E776C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813E7770 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813E7774 | 7C 08 03 A6 */	mtlr r0
/* 813E7778 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E777C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E76C8

# .text:0x2BC4 | 0x813E7780 | size: 0x80
.fn iplSDChannelTitle_813E7780, global
/* 813E7780 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E7784 | 7C 08 02 A6 */	mflr r0
/* 813E7788 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E778C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E7790 | 7C 7F 1B 78 */	mr r31, r3
/* 813E7794 | 80 03 01 58 */	lwz r0, 0x158(r3)
/* 813E7798 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E779C | 7C 63 02 14 */	add r3, r3, r0
/* 813E77A0 | 80 63 01 5C */	lwz r3, 0x15c(r3)
/* 813E77A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E77A8 | 41 82 00 1C */	beq .L_813E77C4
/* 813E77AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E77B0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813E77B4 | 7D 89 03 A6 */	mtctr r12
/* 813E77B8 | 4E 80 04 21 */	bctrl
/* 813E77BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E77C0 | 41 82 00 2C */	beq .L_813E77EC
.L_813E77C4:
/* 813E77C4 | 80 BF 02 20 */	lwz r5, 0x220(r31)
/* 813E77C8 | 7F E3 FB 78 */	mr r3, r31
/* 813E77CC | 80 DF 02 24 */	lwz r6, 0x224(r31)
/* 813E77D0 | 48 00 03 61 */	bl iplSDChannelTitle_813E7B30
/* 813E77D4 | 7F E3 FB 78 */	mr r3, r31
/* 813E77D8 | 4B FF EB 35 */	bl iplSDChannelTitle_813E630C
/* 813E77DC | 38 00 00 04 */	li r0, 0x4
/* 813E77E0 | 7F E3 FB 78 */	mr r3, r31
/* 813E77E4 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E77E8 | 48 00 08 4D */	bl iplSDChannelTitle_813E8034
.L_813E77EC:
/* 813E77EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E77F0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E77F4 | 7C 08 03 A6 */	mtlr r0
/* 813E77F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E77FC | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7780

# .text:0x2C44 | 0x813E7800 | size: 0x7C
.fn iplSDChannelTitle_813E7800, global
/* 813E7800 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E7804 | 7C 08 02 A6 */	mflr r0
/* 813E7808 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E780C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E7810 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E7814 | 7C 7E 1B 78 */	mr r30, r3
/* 813E7818 | 80 A3 01 3C */	lwz r5, 0x13c(r3)
/* 813E781C | 80 85 07 00 */	lwz r4, 0x700(r5)
/* 813E7820 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813E7824 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E7828 | 41 81 00 10 */	bgt .L_813E7838
/* 813E782C | 38 00 00 01 */	li r0, 0x1
/* 813E7830 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813E7834 | 48 00 00 30 */	b .L_813E7864
.L_813E7838:
/* 813E7838 | 7C A3 2B 78 */	mr r3, r5
/* 813E783C | 80 9E 00 64 */	lwz r4, 0x64(r30)
/* 813E7840 | 80 BE 00 68 */	lwz r5, 0x68(r30)
/* 813E7844 | 4B FF 86 75 */	bl iplSDChannelSelect_813DFEB8
/* 813E7848 | 7C 7F 1B 78 */	mr r31, r3
/* 813E784C | 4B FF BA E5 */	bl iplSDChannelObj_813E3330
/* 813E7850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7854 | 41 82 00 10 */	beq .L_813E7864
/* 813E7858 | 7F C3 F3 78 */	mr r3, r30
/* 813E785C | 7F E4 FB 78 */	mr r4, r31
/* 813E7860 | 48 00 0E 41 */	bl iplSDChannelTitle_813E86A0
.L_813E7864:
/* 813E7864 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E7868 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E786C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E7870 | 7C 08 03 A6 */	mtlr r0
/* 813E7874 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E7878 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7800

# .text:0x2CC0 | 0x813E787C | size: 0x134
.fn iplSDChannelTitle_813E787C, global
/* 813E787C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E7880 | 7C 08 02 A6 */	mflr r0
/* 813E7884 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E7888 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E788C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E7890 | 7C 7E 1B 78 */	mr r30, r3
/* 813E7894 | 88 03 01 A0 */	lbz r0, 0x1a0(r3)
/* 813E7898 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E789C | 41 82 00 FC */	beq .L_813E7998
/* 813E78A0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E78A4 | 80 BE 02 20 */	lwz r5, 0x220(r30)
/* 813E78A8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E78AC | 80 DE 02 24 */	lwz r6, 0x224(r30)
/* 813E78B0 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E78B4 | 4B F5 2D C5 */	bl iplChannelManager_8133A678
/* 813E78B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E78BC | 40 82 00 30 */	bne .L_813E78EC
/* 813E78C0 | 80 7E 01 9C */	lwz r3, 0x19c(r30)
/* 813E78C4 | 4B F7 E9 DD */	bl CheckTmdCountryCode__Q33ipl7utility6ESMiscFP9ESTmdView
/* 813E78C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E78CC | 40 82 00 20 */	bne .L_813E78EC
/* 813E78D0 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813E78D4 | 38 80 00 01 */	li r4, 0x1
/* 813E78D8 | 38 A0 00 03 */	li r5, 0x3
/* 813E78DC | 38 C0 00 00 */	li r6, 0x0
/* 813E78E0 | 38 E0 00 00 */	li r7, 0x0
/* 813E78E4 | 39 00 FF FF */	li r8, -0x1
/* 813E78E8 | 4B F6 EC 2D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813E78EC:
/* 813E78EC | 80 9E 01 9C */	lwz r4, 0x19c(r30)
/* 813E78F0 | 7F C3 F3 78 */	mr r3, r30
/* 813E78F4 | 80 BE 02 20 */	lwz r5, 0x220(r30)
/* 813E78F8 | A0 04 00 18 */	lhz r0, 0x18(r4)
/* 813E78FC | 80 DE 02 24 */	lwz r6, 0x224(r30)
/* 813E7900 | B0 1E 01 A2 */	sth r0, 0x1a2(r30)
/* 813E7904 | 48 00 0B 79 */	bl iplSDChannelTitle_813E847C
/* 813E7908 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E790C | 40 82 00 1C */	bne .L_813E7928
/* 813E7910 | 7F C3 F3 78 */	mr r3, r30
/* 813E7914 | 38 80 00 00 */	li r4, 0x0
/* 813E7918 | 48 00 0F B5 */	bl iplSDChannelTitle_813E88CC
/* 813E791C | 38 00 00 12 */	li r0, 0x12
/* 813E7920 | 90 1E 00 70 */	stw r0, 0x70(r30)
/* 813E7924 | 48 00 00 54 */	b .L_813E7978
.L_813E7928:
/* 813E7928 | 80 9E 01 9C */	lwz r4, 0x19c(r30)
/* 813E792C | 7F C3 F3 78 */	mr r3, r30
/* 813E7930 | 48 00 15 D5 */	bl iplSDChannelTitle_813E8F04
/* 813E7934 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7938 | 41 82 00 34 */	beq .L_813E796C
/* 813E793C | 80 9E 00 70 */	lwz r4, 0x70(r30)
/* 813E7940 | 7F C3 F3 78 */	mr r3, r30
/* 813E7944 | 48 00 10 59 */	bl iplSDChannelTitle_813E899C
/* 813E7948 | 88 1E 34 B0 */	lbz r0, 0x34b0(r30)
/* 813E794C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7950 | 41 82 00 10 */	beq .L_813E7960
/* 813E7954 | 38 00 00 19 */	li r0, 0x19
/* 813E7958 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E795C | 48 00 00 1C */	b .L_813E7978
.L_813E7960:
/* 813E7960 | 38 00 00 0F */	li r0, 0xf
/* 813E7964 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E7968 | 48 00 00 10 */	b .L_813E7978
.L_813E796C:
/* 813E796C | 7F C3 F3 78 */	mr r3, r30
/* 813E7970 | 38 80 00 00 */	li r4, 0x0
/* 813E7974 | 48 00 0B 99 */	bl iplSDChannelTitle_813E850C
.L_813E7978:
/* 813E7978 | 80 9E 01 9C */	lwz r4, 0x19c(r30)
/* 813E797C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813E7980 | 41 82 00 18 */	beq .L_813E7998
/* 813E7984 | 80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 813E7988 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E798C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813E7990 | 7D 89 03 A6 */	mtctr r12
/* 813E7994 | 4E 80 04 21 */	bctrl
.L_813E7998:
/* 813E7998 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E799C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E79A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E79A4 | 7C 08 03 A6 */	mtlr r0
/* 813E79A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E79AC | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E787C

# .text:0x2DF4 | 0x813E79B0 | size: 0x68
.fn iplSDChannelTitle_813E79B0, global
/* 813E79B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E79B4 | 7C 08 02 A6 */	mflr r0
/* 813E79B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E79BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E79C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E79C4 | 7C 7E 1B 78 */	mr r30, r3
/* 813E79C8 | 80 63 01 3C */	lwz r3, 0x13c(r3)
/* 813E79CC | 4B FF 8B 71 */	bl iplSDChannelSelect_813E053C
/* 813E79D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E79D4 | 40 82 00 0C */	bne .L_813E79E0
/* 813E79D8 | 38 60 00 00 */	li r3, 0x0
/* 813E79DC | 48 00 00 24 */	b .L_813E7A00
.L_813E79E0:
/* 813E79E0 | 83 FE 01 38 */	lwz r31, 0x138(r30)
/* 813E79E4 | 7F E3 FB 78 */	mr r3, r31
/* 813E79E8 | 4B F7 AE 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E79EC | 38 60 00 01 */	li r3, 0x1
/* 813E79F0 | 38 00 00 03 */	li r0, 0x3
/* 813E79F4 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813E79F8 | 38 60 00 01 */	li r3, 0x1
/* 813E79FC | 90 1E 00 58 */	stw r0, 0x58(r30)
.L_813E7A00:
/* 813E7A00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E7A04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E7A08 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E7A0C | 7C 08 03 A6 */	mtlr r0
/* 813E7A10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E7A14 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E79B0

# .text:0x2E5C | 0x813E7A18 | size: 0x118
.fn iplSDChannelTitle_813E7A18, global
/* 813E7A18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E7A1C | 7C 08 02 A6 */	mflr r0
/* 813E7A20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E7A24 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E7A28 | 48 21 1A A1 */	bl _savegpr_29
/* 813E7A2C | 80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 813E7A30 | 7C 7D 1B 78 */	mr r29, r3
/* 813E7A34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7A38 | 41 82 00 10 */	beq .L_813E7A48
/* 813E7A3C | 80 03 01 A8 */	lwz r0, 0x1a8(r3)
/* 813E7A40 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813E7A44 | 40 82 00 CC */	bne .L_813E7B10
.L_813E7A48:
/* 813E7A48 | 80 63 01 3C */	lwz r3, 0x13c(r3)
/* 813E7A4C | 80 9D 00 64 */	lwz r4, 0x64(r29)
/* 813E7A50 | 4B FF 8B 71 */	bl iplSDChannelSelect_813E05C0
/* 813E7A54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7A58 | 41 82 00 C0 */	beq .L_813E7B18
/* 813E7A5C | 80 7D 01 3C */	lwz r3, 0x13c(r29)
/* 813E7A60 | 80 9D 00 64 */	lwz r4, 0x64(r29)
/* 813E7A64 | 80 BD 00 68 */	lwz r5, 0x68(r29)
/* 813E7A68 | 4B FF 8B BD */	bl iplSDChannelSelect_813E0624
/* 813E7A6C | C0 42 87 68 */	lfs f2, lbl_81694B68@sda21(r0)
/* 813E7A70 | 38 8D 8E 94 */	li r4, lbl_81696ED4@sda21
/* 813E7A74 | 80 7D 01 38 */	lwz r3, 0x138(r29)
/* 813E7A78 | 38 AD 8E 98 */	li r5, lbl_81696ED8@sda21
/* 813E7A7C | FC 60 10 90 */	fmr f3, f2
/* 813E7A80 | C0 22 87 6C */	lfs f1, lbl_81694B6C@sda21(r0)
/* 813E7A84 | C0 82 87 70 */	lfs f4, lbl_81694B70@sda21(r0)
/* 813E7A88 | 38 C0 00 00 */	li r6, 0x0
/* 813E7A8C | 4B F7 C1 C5 */	bl "init__Q33ipl4math14HermiteIntp<f>FRCfRCffffif"
/* 813E7A90 | 80 7D 01 38 */	lwz r3, 0x138(r29)
/* 813E7A94 | 3B E0 00 01 */	li r31, 0x1
/* 813E7A98 | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 813E7A9C | 83 DD 01 38 */	lwz r30, 0x138(r29)
/* 813E7AA0 | 7F C3 F3 78 */	mr r3, r30
/* 813E7AA4 | 4B F7 AD CD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E7AA8 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813E7AAC | 38 00 00 06 */	li r0, 0x6
/* 813E7AB0 | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 813E7AB4 | 3C 80 81 65 */	lis r4, lbl_8165542D@ha
/* 813E7AB8 | 90 1D 00 58 */	stw r0, 0x58(r29)
/* 813E7ABC | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813E7AC0 | 38 84 54 2D */	addi r4, r4, lbl_8165542D@l
/* 813E7AC4 | 4B F8 39 A9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E7AC8 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 813E7ACC | 88 03 9F 68 */	lbz r0, sBannerSoundPlayer__Q23ipl3snd@l(r3)
/* 813E7AD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7AD4 | 41 82 00 10 */	beq .L_813E7AE4
/* 813E7AD8 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813E7ADC | 38 80 00 1C */	li r4, 0x1c
/* 813E7AE0 | 4B F8 47 19 */	bl stopBannerSound__Q33ipl3snd6SystemFi
.L_813E7AE4:
/* 813E7AE4 | 80 9D 01 7C */	lwz r4, 0x17c(r29)
/* 813E7AE8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813E7AEC | 41 82 00 2C */	beq .L_813E7B18
/* 813E7AF0 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813E7AF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7AF8 | 41 82 00 20 */	beq .L_813E7B18
/* 813E7AFC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E7B00 | 38 A0 00 1C */	li r5, 0x1c
/* 813E7B04 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E7B08 | 4B F8 3F 61 */	bl stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei
/* 813E7B0C | 48 00 00 0C */	b .L_813E7B18
.L_813E7B10:
/* 813E7B10 | 38 00 00 01 */	li r0, 0x1
/* 813E7B14 | 98 03 01 B0 */	stb r0, 0x1b0(r3)
.L_813E7B18:
/* 813E7B18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E7B1C | 48 21 19 F9 */	bl _restgpr_29
/* 813E7B20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E7B24 | 7C 08 03 A6 */	mtlr r0
/* 813E7B28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E7B2C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7A18

# .text:0x2F74 | 0x813E7B30 | size: 0xDC
.fn iplSDChannelTitle_813E7B30, global
/* 813E7B30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E7B34 | 7C 08 02 A6 */	mflr r0
/* 813E7B38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E7B3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E7B40 | 48 21 19 85 */	bl _savegpr_28
/* 813E7B44 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E7B48 | 7C 7C 1B 78 */	mr r28, r3
/* 813E7B4C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E7B50 | 7C BE 2B 78 */	mr r30, r5
/* 813E7B54 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813E7B58 | 7C DD 33 78 */	mr r29, r6
/* 813E7B5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7B60 | 40 82 00 94 */	bne .L_813E7BF4
/* 813E7B64 | 80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 813E7B68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7B6C | 41 82 00 2C */	beq .L_813E7B98
/* 813E7B70 | 80 63 01 BC */	lwz r3, 0x1bc(r3)
/* 813E7B74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7B78 | 41 82 00 18 */	beq .L_813E7B90
/* 813E7B7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E7B80 | 38 80 00 01 */	li r4, 0x1
/* 813E7B84 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E7B88 | 7D 89 03 A6 */	mtctr r12
/* 813E7B8C | 4E 80 04 21 */	bctrl
.L_813E7B90:
/* 813E7B90 | 38 00 00 00 */	li r0, 0x0
/* 813E7B94 | 90 1C 01 BC */	stw r0, 0x1bc(r28)
.L_813E7B98:
/* 813E7B98 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E7B9C | 7F A6 EB 78 */	mr r6, r29
/* 813E7BA0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E7BA4 | 7F C5 F3 78 */	mr r5, r30
/* 813E7BA8 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E7BAC | 4B F5 29 D1 */	bl iplChannelManager_8133A57C
/* 813E7BB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7BB4 | 41 82 00 34 */	beq .L_813E7BE8
/* 813E7BB8 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E7BBC | 7F A6 EB 78 */	mr r6, r29
/* 813E7BC0 | 80 9C 01 D0 */	lwz r4, 0x1d0(r28)
/* 813E7BC4 | 7F C5 F3 78 */	mr r5, r30
/* 813E7BC8 | 4B F5 2D 5D */	bl iplChannelManager_8133A924
/* 813E7BCC | 38 00 00 01 */	li r0, 0x1
/* 813E7BD0 | 38 80 00 00 */	li r4, 0x0
/* 813E7BD4 | 90 7C 01 BC */	stw r3, 0x1bc(r28)
/* 813E7BD8 | 98 9C 02 14 */	stb r4, 0x214(r28)
/* 813E7BDC | 90 1C 01 AC */	stw r0, 0x1ac(r28)
/* 813E7BE0 | 90 1C 01 A8 */	stw r0, 0x1a8(r28)
/* 813E7BE4 | 48 00 00 10 */	b .L_813E7BF4
.L_813E7BE8:
/* 813E7BE8 | 38 00 00 00 */	li r0, 0x0
/* 813E7BEC | 90 1C 01 AC */	stw r0, 0x1ac(r28)
/* 813E7BF0 | 90 1C 01 A8 */	stw r0, 0x1a8(r28)
.L_813E7BF4:
/* 813E7BF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E7BF8 | 48 21 19 19 */	bl _restgpr_28
/* 813E7BFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E7C00 | 7C 08 03 A6 */	mtlr r0
/* 813E7C04 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E7C08 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7B30

# .text:0x3050 | 0x813E7C0C | size: 0x108
.fn iplSDChannelTitle_813E7C0C, global
/* 813E7C0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E7C10 | 7C 08 02 A6 */	mflr r0
/* 813E7C14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E7C18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E7C1C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E7C20 | 7C 7E 1B 78 */	mr r30, r3
/* 813E7C24 | 80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 813E7C28 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E7C2C | 40 82 00 D0 */	bne .L_813E7CFC
/* 813E7C30 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813E7C34 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E7C38 | 41 82 00 C4 */	beq .L_813E7CFC
/* 813E7C3C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813E7C40 | 41 82 00 BC */	beq .L_813E7CFC
/* 813E7C44 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813E7C48 | 40 82 00 08 */	bne .L_813E7C50
/* 813E7C4C | 48 00 00 B0 */	b .L_813E7CFC
.L_813E7C50:
/* 813E7C50 | 80 03 01 A8 */	lwz r0, 0x1a8(r3)
/* 813E7C54 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E7C58 | 41 82 00 34 */	beq .L_813E7C8C
/* 813E7C5C | 40 80 00 14 */	bge .L_813E7C70
/* 813E7C60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7C64 | 41 82 00 18 */	beq .L_813E7C7C
/* 813E7C68 | 40 80 00 1C */	bge .L_813E7C84
/* 813E7C6C | 48 00 00 90 */	b .L_813E7CFC
.L_813E7C70:
/* 813E7C70 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813E7C74 | 40 80 00 88 */	bge .L_813E7CFC
/* 813E7C78 | 48 00 00 80 */	b .L_813E7CF8
.L_813E7C7C:
/* 813E7C7C | 48 00 00 99 */	bl iplSDChannelTitle_813E7D14
/* 813E7C80 | 48 00 00 7C */	b .L_813E7CFC
.L_813E7C84:
/* 813E7C84 | 48 00 01 4D */	bl iplSDChannelTitle_813E7DD0
/* 813E7C88 | 48 00 00 74 */	b .L_813E7CFC
.L_813E7C8C:
/* 813E7C8C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E7C90 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E7C94 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813E7C98 | 4B F5 32 5D */	bl calc__Q33ipl7channel20ChannelScriptManagerFv
/* 813E7C9C | 80 7E 01 CC */	lwz r3, 0x1cc(r30)
/* 813E7CA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E7CA4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813E7CA8 | 7D 89 03 A6 */	mtctr r12
/* 813E7CAC | 4E 80 04 21 */	bctrl
/* 813E7CB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7CB4 | 41 82 00 48 */	beq .L_813E7CFC
/* 813E7CB8 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813E7CBC | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813E7CC0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E7CC4 | 40 82 00 18 */	bne .L_813E7CDC
/* 813E7CC8 | 7F C3 F3 78 */	mr r3, r30
/* 813E7CCC | 48 00 04 95 */	bl iplSDChannelTitle_813E8160
/* 813E7CD0 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813E7CD4 | 38 00 00 00 */	li r0, 0x0
/* 813E7CD8 | 90 03 00 34 */	stw r0, 0x34(r3)
.L_813E7CDC:
/* 813E7CDC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E7CE0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E7CE4 | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 813E7CE8 | 4B F5 33 3D */	bl finish__Q33ipl7channel20ChannelScriptManagerFv
/* 813E7CEC | 38 00 00 03 */	li r0, 0x3
/* 813E7CF0 | 90 1E 01 A8 */	stw r0, 0x1a8(r30)
/* 813E7CF4 | 48 00 00 08 */	b .L_813E7CFC
.L_813E7CF8:
/* 813E7CF8 | 48 00 02 B9 */	bl iplSDChannelTitle_813E7FB0
.L_813E7CFC:
/* 813E7CFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E7D00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E7D04 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E7D08 | 7C 08 03 A6 */	mtlr r0
/* 813E7D0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E7D10 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7C0C

# .text:0x3158 | 0x813E7D14 | size: 0xBC
.fn iplSDChannelTitle_813E7D14, global
/* 813E7D14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E7D18 | 7C 08 02 A6 */	mflr r0
/* 813E7D1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E7D20 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E7D24 | 7C 7F 1B 78 */	mr r31, r3
/* 813E7D28 | 88 03 01 B0 */	lbz r0, 0x1b0(r3)
/* 813E7D2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7D30 | 41 82 00 1C */	beq .L_813E7D4C
/* 813E7D34 | 38 80 00 00 */	li r4, 0x0
/* 813E7D38 | 38 00 00 04 */	li r0, 0x4
/* 813E7D3C | 98 83 01 B0 */	stb r4, 0x1b0(r3)
/* 813E7D40 | 90 83 01 B4 */	stw r4, 0x1b4(r3)
/* 813E7D44 | 90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 813E7D48 | 48 00 00 74 */	b .L_813E7DBC
.L_813E7D4C:
/* 813E7D4C | 80 83 01 B4 */	lwz r4, 0x1b4(r3)
/* 813E7D50 | 80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 813E7D54 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813E7D58 | 7C 04 00 40 */	cmplw r4, r0
/* 813E7D5C | 90 83 01 B4 */	stw r4, 0x1b4(r3)
/* 813E7D60 | 40 81 00 18 */	ble .L_813E7D78
/* 813E7D64 | 80 83 01 C8 */	lwz r4, 0x1c8(r3)
/* 813E7D68 | 38 00 00 01 */	li r0, 0x1
/* 813E7D6C | 90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 813E7D70 | 68 80 00 01 */	xori r0, r4, 0x1
/* 813E7D74 | 90 03 01 C8 */	stw r0, 0x1c8(r3)
.L_813E7D78:
/* 813E7D78 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E7D7C | 80 BF 02 20 */	lwz r5, 0x220(r31)
/* 813E7D80 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E7D84 | 80 DF 02 24 */	lwz r6, 0x224(r31)
/* 813E7D88 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813E7D8C | 4B F5 28 A9 */	bl iplChannelManager_8133A634
/* 813E7D90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7D94 | 41 82 00 28 */	beq .L_813E7DBC
/* 813E7D98 | 80 7F 01 B8 */	lwz r3, 0x1b8(r31)
/* 813E7D9C | 80 9F 01 B4 */	lwz r4, 0x1b4(r31)
/* 813E7DA0 | 38 03 FF 10 */	subi r0, r3, 0xf0
/* 813E7DA4 | 7C 04 00 40 */	cmplw r4, r0
/* 813E7DA8 | 40 82 00 14 */	bne .L_813E7DBC
/* 813E7DAC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E7DB0 | 38 80 00 B4 */	li r4, 0xb4
/* 813E7DB4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E7DB8 | 4B F8 44 41 */	bl stopBannerSound__Q33ipl3snd6SystemFi
.L_813E7DBC:
/* 813E7DBC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E7DC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E7DC4 | 7C 08 03 A6 */	mtlr r0
/* 813E7DC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E7DCC | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7D14

# .text:0x3214 | 0x813E7DD0 | size: 0x1E0
.fn iplSDChannelTitle_813E7DD0, global
/* 813E7DD0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E7DD4 | 7C 08 02 A6 */	mflr r0
/* 813E7DD8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E7DDC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813E7DE0 | 7C 7F 1B 78 */	mr r31, r3
/* 813E7DE4 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 813E7DE8 | 80 63 01 BC */	lwz r3, 0x1bc(r3)
/* 813E7DEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E7DF0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813E7DF4 | 7D 89 03 A6 */	mtctr r12
/* 813E7DF8 | 4E 80 04 21 */	bctrl
/* 813E7DFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7E00 | 41 82 01 98 */	beq .L_813E7F98
/* 813E7E04 | 80 7F 01 BC */	lwz r3, 0x1bc(r31)
/* 813E7E08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E7E0C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813E7E10 | 7D 89 03 A6 */	mtctr r12
/* 813E7E14 | 4E 80 04 21 */	bctrl
/* 813E7E18 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813E7E1C | 41 82 00 38 */	beq .L_813E7E54
/* 813E7E20 | 80 7F 01 BC */	lwz r3, 0x1bc(r31)
/* 813E7E24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E7E28 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813E7E2C | 7D 89 03 A6 */	mtctr r12
/* 813E7E30 | 4E 80 04 21 */	bctrl
/* 813E7E34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7E38 | 41 82 00 1C */	beq .L_813E7E54
/* 813E7E3C | 38 60 00 00 */	li r3, 0x0
/* 813E7E40 | 38 00 00 01 */	li r0, 0x1
/* 813E7E44 | 90 7F 01 B4 */	stw r3, 0x1b4(r31)
/* 813E7E48 | 98 1F 02 14 */	stb r0, 0x214(r31)
/* 813E7E4C | 90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 813E7E50 | 48 00 01 48 */	b .L_813E7F98
.L_813E7E54:
/* 813E7E54 | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813E7E58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7E5C | 40 82 00 18 */	bne .L_813E7E74
/* 813E7E60 | 80 9F 01 D0 */	lwz r4, 0x1d0(r31)
/* 813E7E64 | 38 60 FF FF */	li r3, -0x1
/* 813E7E68 | 38 A0 00 00 */	li r5, 0x0
/* 813E7E6C | 48 20 F8 09 */	bl fn_815F7674
/* 813E7E70 | 90 7F 02 18 */	stw r3, 0x218(r31)
.L_813E7E74:
/* 813E7E74 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E7E78 | 80 9F 02 18 */	lwz r4, 0x218(r31)
/* 813E7E7C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E7E80 | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 813E7E84 | 4B F5 2C 0D */	bl create__Q33ipl7channel20ChannelScriptManagerFPQ23EGG7ExpHeap
/* 813E7E88 | 3C 60 81 61 */	lis r3, lbl_81610928@ha
/* 813E7E8C | 38 00 00 04 */	li r0, 0x4
/* 813E7E90 | 38 63 09 28 */	addi r3, r3, lbl_81610928@l
/* 813E7E94 | 38 A1 00 04 */	addi r5, r1, 0x4
/* 813E7E98 | 38 83 FF FC */	subi r4, r3, 0x4
/* 813E7E9C | 7C 09 03 A6 */	mtctr r0
.L_813E7EA0:
/* 813E7EA0 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813E7EA4 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813E7EA8 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813E7EAC | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813E7EB0 | 42 00 FF F0 */	bdnz .L_813E7EA0
/* 813E7EB4 | 80 1F 01 C8 */	lwz r0, 0x1c8(r31)
/* 813E7EB8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E7EBC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E7EC0 | 38 9F 01 D4 */	addi r4, r31, 0x1d4
/* 813E7EC4 | 54 05 10 3A */	slwi r5, r0, 2
/* 813E7EC8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813E7ECC | 7C BF 2A 14 */	add r5, r31, r5
/* 813E7ED0 | 80 A5 01 C0 */	lwz r5, 0x1c0(r5)
/* 813E7ED4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7ED8 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813E7EDC | 80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 813E7EE0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813E7EE4 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 813E7EE8 | 80 1F 02 20 */	lwz r0, 0x220(r31)
/* 813E7EEC | 80 9F 02 24 */	lwz r4, 0x224(r31)
/* 813E7EF0 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 813E7EF4 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813E7EF8 | 88 1F 02 14 */	lbz r0, 0x214(r31)
/* 813E7EFC | 98 01 00 20 */	stb r0, 0x20(r1)
/* 813E7F00 | 41 82 00 0C */	beq .L_813E7F0C
/* 813E7F04 | 38 00 00 00 */	li r0, 0x0
/* 813E7F08 | 48 00 00 08 */	b .L_813E7F10
.L_813E7F0C:
/* 813E7F0C | 80 03 00 8C */	lwz r0, 0x8c(r3)
.L_813E7F10:
/* 813E7F10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7F14 | 41 82 00 3C */	beq .L_813E7F50
/* 813E7F18 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E7F1C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E7F20 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813E7F24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E7F28 | 41 82 00 0C */	beq .L_813E7F34
/* 813E7F2C | 38 60 00 00 */	li r3, 0x0
/* 813E7F30 | 48 00 00 08 */	b .L_813E7F38
.L_813E7F34:
/* 813E7F34 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813E7F38:
/* 813E7F38 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 813E7F3C | 38 00 FF FF */	li r0, -0x1
/* 813E7F40 | 7C 84 00 38 */	and r4, r4, r0
/* 813E7F44 | 4B F5 BA 8D */	bl isNewMessageThere__Q33ipl5nwc247ManagerCFUl
/* 813E7F48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7F4C | 40 82 00 0C */	bne .L_813E7F58
.L_813E7F50:
/* 813E7F50 | 38 00 00 00 */	li r0, 0x0
/* 813E7F54 | 98 01 00 22 */	stb r0, 0x22(r1)
.L_813E7F58:
/* 813E7F58 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813E7F5C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E7F60 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813E7F64 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E7F68 | 4B F5 31 21 */	bl setData__Q33ipl7channel20ChannelScriptManagerFRCQ43ipl7channel20ChannelScriptManager6CSData
/* 813E7F6C | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813E7F70 | 80 9F 01 BC */	lwz r4, 0x1bc(r31)
/* 813E7F74 | 80 BF 01 CC */	lwz r5, 0x1cc(r31)
/* 813E7F78 | 4B F5 2B A9 */	bl init__Q33ipl7channel20ChannelScriptManagerFPQ33ipl4nand4FilePQ33ipl7channel9RsoThread
/* 813E7F7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E7F80 | 40 82 00 10 */	bne .L_813E7F90
/* 813E7F84 | 38 00 00 03 */	li r0, 0x3
/* 813E7F88 | 90 1F 01 A8 */	stw r0, 0x1a8(r31)
/* 813E7F8C | 48 00 00 0C */	b .L_813E7F98
.L_813E7F90:
/* 813E7F90 | 38 00 00 02 */	li r0, 0x2
/* 813E7F94 | 90 1F 01 A8 */	stw r0, 0x1a8(r31)
.L_813E7F98:
/* 813E7F98 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E7F9C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813E7FA0 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 813E7FA4 | 7C 08 03 A6 */	mtlr r0
/* 813E7FA8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E7FAC | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7DD0

# .text:0x33F4 | 0x813E7FB0 | size: 0x84
.fn iplSDChannelTitle_813E7FB0, global
/* 813E7FB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E7FB4 | 7C 08 02 A6 */	mflr r0
/* 813E7FB8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E7FBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E7FC0 | 38 00 00 01 */	li r0, 0x1
/* 813E7FC4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E7FC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E7FCC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E7FD0 | 7C 7E 1B 78 */	mr r30, r3
/* 813E7FD4 | 98 03 02 14 */	stb r0, 0x214(r3)
/* 813E7FD8 | 80 64 00 88 */	lwz r3, 0x88(r4)
/* 813E7FDC | 4B F5 30 55 */	bl destroy__Q33ipl7channel20ChannelScriptManagerFv
/* 813E7FE0 | 80 1E 01 C8 */	lwz r0, 0x1c8(r30)
/* 813E7FE4 | 3B E0 00 00 */	li r31, 0x0
/* 813E7FE8 | 93 FE 01 B4 */	stw r31, 0x1b4(r30)
/* 813E7FEC | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813E7FF0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E7FF4 | 7C 7E 02 14 */	add r3, r30, r0
/* 813E7FF8 | 80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 813E7FFC | 48 20 F8 61 */	bl fn_815F785C
/* 813E8000 | 80 7E 02 18 */	lwz r3, 0x218(r30)
/* 813E8004 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E8008 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813E800C | 7D 89 03 A6 */	mtctr r12
/* 813E8010 | 4E 80 04 21 */	bctrl
/* 813E8014 | 93 FE 02 18 */	stw r31, 0x218(r30)
/* 813E8018 | 93 FE 01 A8 */	stw r31, 0x1a8(r30)
/* 813E801C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E8020 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E8024 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E8028 | 7C 08 03 A6 */	mtlr r0
/* 813E802C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E8030 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E7FB0

# .text:0x3478 | 0x813E8034 | size: 0x12C
.fn iplSDChannelTitle_813E8034, global
/* 813E8034 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E8038 | 7C 08 02 A6 */	mflr r0
/* 813E803C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E8040 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E8044 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E8048 | 7C 7E 1B 78 */	mr r30, r3
/* 813E804C | 83 E3 01 74 */	lwz r31, 0x174(r3)
/* 813E8050 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E8054 | 41 82 00 20 */	beq .L_813E8074
/* 813E8058 | 7F E3 FB 78 */	mr r3, r31
/* 813E805C | 4B F7 A8 15 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E8060 | 38 60 00 01 */	li r3, 0x1
/* 813E8064 | 38 00 00 00 */	li r0, 0x0
/* 813E8068 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813E806C | 98 1E 00 8C */	stb r0, 0x8c(r30)
/* 813E8070 | 48 00 00 40 */	b .L_813E80B0
.L_813E8074:
/* 813E8074 | 83 E3 01 78 */	lwz r31, 0x178(r3)
/* 813E8078 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E807C | 41 82 00 18 */	beq .L_813E8094
/* 813E8080 | 7F E3 FB 78 */	mr r3, r31
/* 813E8084 | 4B F7 A7 ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E8088 | 38 00 00 01 */	li r0, 0x1
/* 813E808C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813E8090 | 48 00 00 20 */	b .L_813E80B0
.L_813E8094:
/* 813E8094 | 83 E3 01 70 */	lwz r31, 0x170(r3)
/* 813E8098 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E809C | 41 82 00 14 */	beq .L_813E80B0
/* 813E80A0 | 7F E3 FB 78 */	mr r3, r31
/* 813E80A4 | 4B F7 A7 CD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E80A8 | 38 00 00 01 */	li r0, 0x1
/* 813E80AC | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813E80B0:
/* 813E80B0 | 80 1E 00 58 */	lwz r0, 0x58(r30)
/* 813E80B4 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813E80B8 | 41 82 00 90 */	beq .L_813E8148
/* 813E80BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E80C0 | 80 BE 02 20 */	lwz r5, 0x220(r30)
/* 813E80C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E80C8 | 80 DE 02 24 */	lwz r6, 0x224(r30)
/* 813E80CC | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813E80D0 | 4B F5 25 65 */	bl iplChannelManager_8133A634
/* 813E80D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E80D8 | 41 82 00 10 */	beq .L_813E80E8
/* 813E80DC | 80 1E 01 AC */	lwz r0, 0x1ac(r30)
/* 813E80E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E80E4 | 40 82 00 0C */	bne .L_813E80F0
.L_813E80E8:
/* 813E80E8 | 7F C3 F3 78 */	mr r3, r30
/* 813E80EC | 48 00 00 75 */	bl iplSDChannelTitle_813E8160
.L_813E80F0:
/* 813E80F0 | 80 1E 01 6C */	lwz r0, 0x16c(r30)
/* 813E80F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E80F8 | 40 82 00 50 */	bne .L_813E8148
/* 813E80FC | 80 7E 01 54 */	lwz r3, 0x154(r30)
/* 813E8100 | 38 80 00 00 */	li r4, 0x0
/* 813E8104 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E8108 | 48 12 A2 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E810C | 4B F8 1B 19 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E8110 | 80 7E 01 54 */	lwz r3, 0x154(r30)
/* 813E8114 | 38 80 00 00 */	li r4, 0x0
/* 813E8118 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E811C | 48 12 A1 FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E8120 | 7C 7F 1B 78 */	mr r31, r3
/* 813E8124 | 4B F7 A7 4D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E8128 | 38 00 00 01 */	li r0, 0x1
/* 813E812C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E8130 | 3C 80 81 65 */	lis r4, lbl_81655441@ha
/* 813E8134 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813E8138 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E813C | 38 84 54 41 */	addi r4, r4, lbl_81655441@l
/* 813E8140 | 4B F8 33 2D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E8144 | 90 7E 01 7C */	stw r3, 0x17c(r30)
.L_813E8148:
/* 813E8148 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E814C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E8150 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E8154 | 7C 08 03 A6 */	mtlr r0
/* 813E8158 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E815C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8034

# .text:0x35A4 | 0x813E8160 | size: 0x9C
.fn iplSDChannelTitle_813E8160, global
/* 813E8160 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E8164 | 7C 08 02 A6 */	mflr r0
/* 813E8168 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E816C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E8170 | 7C 7F 1B 78 */	mr r31, r3
/* 813E8174 | 80 03 01 58 */	lwz r0, 0x158(r3)
/* 813E8178 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E817C | 7C 63 02 14 */	add r3, r3, r0
/* 813E8180 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 813E8184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8188 | 41 82 00 60 */	beq .L_813E81E8
/* 813E818C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E8190 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813E8194 | 7D 89 03 A6 */	mtctr r12
/* 813E8198 | 4E 80 04 21 */	bctrl
/* 813E819C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813E81A0 | 40 82 00 48 */	bne .L_813E81E8
/* 813E81A4 | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E81A8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E81AC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E81B0 | 80 BF 02 20 */	lwz r5, 0x220(r31)
/* 813E81B4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E81B8 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813E81BC | 7C 9F 02 14 */	add r4, r31, r0
/* 813E81C0 | 80 DF 02 24 */	lwz r6, 0x224(r31)
/* 813E81C4 | 80 84 01 64 */	lwz r4, 0x164(r4)
/* 813E81C8 | 83 E4 00 A0 */	lwz r31, 0xa0(r4)
/* 813E81CC | 4B F5 23 ED */	bl iplChannelManager_8133A5B8
/* 813E81D0 | 3C E0 81 09 */	lis r7, sSystem__Q23ipl3snd@ha
/* 813E81D4 | 7C 65 1B 78 */	mr r5, r3
/* 813E81D8 | 7F E4 FB 78 */	mr r4, r31
/* 813E81DC | 38 C0 00 00 */	li r6, 0x0
/* 813E81E0 | 38 67 99 2C */	addi r3, r7, sSystem__Q23ipl3snd@l
/* 813E81E4 | 4B F8 3F B5 */	bl startBannerSound__Q33ipl3snd6SystemFPvUlb
.L_813E81E8:
/* 813E81E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E81EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E81F0 | 7C 08 03 A6 */	mtlr r0
/* 813E81F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E81F8 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8160

# .text:0x3640 | 0x813E81FC | size: 0x5C
.fn iplSDChannelTitle_813E81FC, global
/* 813E81FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E8200 | 7C 08 02 A6 */	mflr r0
/* 813E8204 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E8208 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E820C | 7C 7F 1B 78 */	mr r31, r3
/* 813E8210 | 48 00 01 51 */	bl iplSDChannelTitle_813E8360
/* 813E8214 | 80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 813E8218 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E821C | 41 82 00 28 */	beq .L_813E8244
/* 813E8220 | 38 7F 01 D4 */	addi r3, r31, 0x1d4
/* 813E8224 | 38 80 00 00 */	li r4, 0x0
/* 813E8228 | 38 A0 00 40 */	li r5, 0x40
/* 813E822C | 4B F4 81 09 */	bl memset
/* 813E8230 | 80 9F 01 6C */	lwz r4, 0x16c(r31)
/* 813E8234 | 7F E3 FB 78 */	mr r3, r31
/* 813E8238 | 38 BF 01 D4 */	addi r5, r31, 0x1d4
/* 813E823C | 38 CD 8E 9C */	li r6, lbl_81696EDC@sda21
/* 813E8240 | 48 00 00 19 */	bl iplSDChannelTitle_813E8258
.L_813E8244:
/* 813E8244 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E8248 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E824C | 7C 08 03 A6 */	mtlr r0
/* 813E8250 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E8254 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E81FC

# .text:0x369C | 0x813E8258 | size: 0x108
.fn iplSDChannelTitle_813E8258, global
/* 813E8258 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813E825C | 7C 08 02 A6 */	mflr r0
/* 813E8260 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813E8264 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813E8268 | 48 21 12 49 */	bl _savegpr_23
/* 813E826C | 7C 97 23 78 */	mr r23, r4
/* 813E8270 | 7C B8 2B 78 */	mr r24, r5
/* 813E8274 | 7C D9 33 78 */	mr r25, r6
/* 813E8278 | 3B 60 00 00 */	li r27, 0x0
/* 813E827C | 3B E0 00 00 */	li r31, 0x0
/* 813E8280 | 3F 80 81 65 */	lis r28, lbl_81655453@ha
.L_813E8284:
/* 813E8284 | 7F 25 CB 78 */	mr r5, r25
/* 813E8288 | 7F 66 DB 78 */	mr r6, r27
/* 813E828C | 38 61 00 10 */	addi r3, r1, 0x10
/* 813E8290 | 38 9C 54 53 */	addi r4, r28, lbl_81655453@l
/* 813E8294 | 4C C6 31 82 */	crclr cr1eq
/* 813E8298 | 48 21 87 E9 */	bl sprintf
/* 813E829C | 7E E3 BB 78 */	mr r3, r23
/* 813E82A0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813E82A4 | 4B F8 24 21 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813E82A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E82AC | 41 82 00 8C */	beq .L_813E8338
/* 813E82B0 | 7F 65 DB 78 */	mr r5, r27
/* 813E82B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E82B8 | 38 8D 8E A3 */	li r4, lbl_81696EE3@sda21
/* 813E82BC | 4C C6 31 82 */	crclr cr1eq
/* 813E82C0 | 48 21 87 C1 */	bl sprintf
/* 813E82C4 | 80 77 00 18 */	lwz r3, 0x18(r23)
/* 813E82C8 | 3B 40 00 00 */	li r26, 0x0
/* 813E82CC | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 813E82D0 | 3B A3 00 04 */	addi r29, r3, 0x4
/* 813E82D4 | 48 00 00 40 */	b .L_813E8314
.L_813E82D8:
/* 813E82D8 | 38 7E 00 14 */	addi r3, r30, 0x14
/* 813E82DC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E82E0 | 48 21 A1 A1 */	bl strcmp
/* 813E82E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E82E8 | 40 82 00 28 */	bne .L_813E8310
/* 813E82EC | 7E E3 BB 78 */	mr r3, r23
/* 813E82F0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813E82F4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813E82F8 | 38 C0 00 00 */	li r6, 0x0
/* 813E82FC | 38 E0 00 00 */	li r7, 0x0
/* 813E8300 | 4B F8 21 E1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E8304 | 7C 78 F9 2E */	stwx r3, r24, r31
/* 813E8308 | 3B 40 00 01 */	li r26, 0x1
/* 813E830C | 48 00 00 10 */	b .L_813E831C
.L_813E8310:
/* 813E8310 | 83 DE 00 00 */	lwz r30, 0x0(r30)
.L_813E8314:
/* 813E8314 | 7C 1E E8 40 */	cmplw r30, r29
/* 813E8318 | 40 82 FF C0 */	bne .L_813E82D8
.L_813E831C:
/* 813E831C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813E8320 | 40 82 00 18 */	bne .L_813E8338
/* 813E8324 | 7E E3 BB 78 */	mr r3, r23
/* 813E8328 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813E832C | 38 A0 00 00 */	li r5, 0x0
/* 813E8330 | 4B F8 20 3D */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E8334 | 7C 78 F9 2E */	stwx r3, r24, r31
.L_813E8338:
/* 813E8338 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813E833C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E8340 | 2C 1B 00 10 */	cmpwi r27, 0x10
/* 813E8344 | 41 80 FF 40 */	blt .L_813E8284
/* 813E8348 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813E834C | 48 21 11 B1 */	bl _restgpr_23
/* 813E8350 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813E8354 | 7C 08 03 A6 */	mtlr r0
/* 813E8358 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813E835C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8258

# .text:0x37A4 | 0x813E8360 | size: 0x11C
.fn iplSDChannelTitle_813E8360, global
/* 813E8360 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E8364 | 7C 08 02 A6 */	mflr r0
/* 813E8368 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E836C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E8370 | 48 21 11 45 */	bl _savegpr_24
/* 813E8374 | 3B 20 00 00 */	li r25, 0x0
/* 813E8378 | 3F 60 81 65 */	lis r27, lbl_81655140@ha
/* 813E837C | 7C 78 1B 78 */	mr r24, r3
/* 813E8380 | 3B E0 00 00 */	li r31, 0x0
/* 813E8384 | 7F 3E CB 78 */	mr r30, r25
/* 813E8388 | 7F 3C CB 78 */	mr r28, r25
/* 813E838C | 3B 7B 51 40 */	addi r27, r27, lbl_81655140@l
/* 813E8390 | 3B A0 00 02 */	li r29, 0x2
.L_813E8394:
/* 813E8394 | 80 78 01 6C */	lwz r3, 0x16c(r24)
/* 813E8398 | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813E839C | 4B F8 23 29 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813E83A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E83A4 | 41 82 00 A8 */	beq .L_813E844C
/* 813E83A8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813E83AC | 40 82 00 24 */	bne .L_813E83D0
/* 813E83B0 | 80 78 01 6C */	lwz r3, 0x16c(r24)
/* 813E83B4 | 7F 58 FA 14 */	add r26, r24, r31
/* 813E83B8 | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813E83BC | 38 A0 00 01 */	li r5, 0x1
/* 813E83C0 | 4B F8 1F AD */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E83C4 | 90 7A 01 70 */	stw r3, 0x170(r26)
/* 813E83C8 | 93 A3 00 18 */	stw r29, 0x18(r3)
/* 813E83CC | 48 00 00 88 */	b .L_813E8454
.L_813E83D0:
/* 813E83D0 | 2C 19 00 01 */	cmpwi r25, 0x1
/* 813E83D4 | 40 82 00 24 */	bne .L_813E83F8
/* 813E83D8 | 80 78 01 6C */	lwz r3, 0x16c(r24)
/* 813E83DC | 7F 58 FA 14 */	add r26, r24, r31
/* 813E83E0 | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813E83E4 | 38 A0 00 01 */	li r5, 0x1
/* 813E83E8 | 4B F8 1F 85 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E83EC | 90 7A 01 70 */	stw r3, 0x170(r26)
/* 813E83F0 | 93 83 00 18 */	stw r28, 0x18(r3)
/* 813E83F4 | 48 00 00 60 */	b .L_813E8454
.L_813E83F8:
/* 813E83F8 | 80 18 01 74 */	lwz r0, 0x174(r24)
/* 813E83FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E8400 | 40 82 00 24 */	bne .L_813E8424
/* 813E8404 | 7F 58 FA 14 */	add r26, r24, r31
/* 813E8408 | 80 78 01 6C */	lwz r3, 0x16c(r24)
/* 813E840C | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813E8410 | 38 A0 00 01 */	li r5, 0x1
/* 813E8414 | 3B 5A 01 70 */	addi r26, r26, 0x170
/* 813E8418 | 4B F8 1F 55 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E841C | 90 7A 00 00 */	stw r3, 0x0(r26)
/* 813E8420 | 48 00 00 20 */	b .L_813E8440
.L_813E8424:
/* 813E8424 | 7F 58 FA 14 */	add r26, r24, r31
/* 813E8428 | 80 78 01 6C */	lwz r3, 0x16c(r24)
/* 813E842C | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813E8430 | 38 A0 00 00 */	li r5, 0x0
/* 813E8434 | 3B 5A 01 70 */	addi r26, r26, 0x170
/* 813E8438 | 4B F8 1F 35 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E843C | 90 7A 00 00 */	stw r3, 0x0(r26)
.L_813E8440:
/* 813E8440 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 813E8444 | 93 A3 00 18 */	stw r29, 0x18(r3)
/* 813E8448 | 48 00 00 0C */	b .L_813E8454
.L_813E844C:
/* 813E844C | 7C 78 FA 14 */	add r3, r24, r31
/* 813E8450 | 93 C3 01 70 */	stw r30, 0x170(r3)
.L_813E8454:
/* 813E8454 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813E8458 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E845C | 2C 19 00 03 */	cmpwi r25, 0x3
/* 813E8460 | 41 80 FF 34 */	blt .L_813E8394
/* 813E8464 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E8468 | 48 21 10 99 */	bl _restgpr_24
/* 813E846C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E8470 | 7C 08 03 A6 */	mtlr r0
/* 813E8474 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E8478 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8360

# .text:0x38C0 | 0x813E847C | size: 0x4C
.fn iplSDChannelTitle_813E847C, global
/* 813E847C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E8480 | 7C 08 02 A6 */	mflr r0
/* 813E8484 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E8488 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E848C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E8490 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813E8494 | 4B F5 21 5D */	bl iplChannelManager_8133A5F0
/* 813E8498 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E849C | 41 82 00 10 */	beq .L_813E84AC
/* 813E84A0 | 48 01 34 4D */	bl getConnectEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 813E84A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E84A8 | 41 82 00 0C */	beq .L_813E84B4
.L_813E84AC:
/* 813E84AC | 38 60 00 01 */	li r3, 0x1
/* 813E84B0 | 48 00 00 08 */	b .L_813E84B8
.L_813E84B4:
/* 813E84B4 | 38 60 00 00 */	li r3, 0x0
.L_813E84B8:
/* 813E84B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E84BC | 7C 08 03 A6 */	mtlr r0
/* 813E84C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E84C4 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E847C

# .text:0x390C | 0x813E84C8 | size: 0x44
.fn iplSDChannelTitle_813E84C8, global
/* 813E84C8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813E84CC | 7C 08 02 A6 */	mflr r0
/* 813E84D0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813E84D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E84D8 | 48 18 1C A1 */	bl fn_8156A178
/* 813E84DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E84E0 | 41 82 00 18 */	beq .L_813E84F8
/* 813E84E4 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813E84E8 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813E84EC | 41 82 00 0C */	beq .L_813E84F8
/* 813E84F0 | 38 60 00 01 */	li r3, 0x1
/* 813E84F4 | 48 00 00 08 */	b .L_813E84FC
.L_813E84F8:
/* 813E84F8 | 38 60 00 00 */	li r3, 0x0
.L_813E84FC:
/* 813E84FC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813E8500 | 7C 08 03 A6 */	mtlr r0
/* 813E8504 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813E8508 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E84C8

# .text:0x3950 | 0x813E850C | size: 0xB4
.fn iplSDChannelTitle_813E850C, global
/* 813E850C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E8510 | 7C 08 02 A6 */	mflr r0
/* 813E8514 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E8518 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E851C | 48 21 0F AD */	bl _savegpr_29
/* 813E8520 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E8524 | 7C 7D 1B 78 */	mr r29, r3
/* 813E8528 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E852C | 7C 9E 23 78 */	mr r30, r4
/* 813E8530 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813E8534 | 4B F5 FE 11 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813E8538 | 38 00 00 01 */	li r0, 0x1
/* 813E853C | 38 80 00 24 */	li r4, 0x24
/* 813E8540 | 98 1D 34 B1 */	stb r0, 0x34b1(r29)
/* 813E8544 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E8548 | 48 02 2B F1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E854C | 88 03 00 81 */	lbz r0, 0x81(r3)
/* 813E8550 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E8554 | 41 82 00 2C */	beq .L_813E8580
/* 813E8558 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E855C | 38 80 00 24 */	li r4, 0x24
/* 813E8560 | 48 02 2B D9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E8564 | 38 80 00 0F */	li r4, 0xf
/* 813E8568 | 48 00 1C ED */	bl iplSDChannelButton_813EA254
/* 813E856C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E8570 | 38 80 00 24 */	li r4, 0x24
/* 813E8574 | 48 02 2B C5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E8578 | 38 80 00 10 */	li r4, 0x10
/* 813E857C | 48 00 1C D9 */	bl iplSDChannelButton_813EA254
.L_813E8580:
/* 813E8580 | 7F A3 EB 78 */	mr r3, r29
/* 813E8584 | 7F A5 EB 78 */	mr r5, r29
/* 813E8588 | 7F C7 F3 78 */	mr r7, r30
/* 813E858C | 38 80 00 1B */	li r4, 0x1b
/* 813E8590 | 38 C0 00 00 */	li r6, 0x0
/* 813E8594 | 48 02 18 F5 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813E8598 | 38 60 00 00 */	li r3, 0x0
/* 813E859C | 38 00 00 0B */	li r0, 0xb
/* 813E85A0 | 90 7D 00 74 */	stw r3, 0x74(r29)
/* 813E85A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E85A8 | 90 1D 00 58 */	stw r0, 0x58(r29)
/* 813E85AC | 48 21 0F 69 */	bl _restgpr_29
/* 813E85B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E85B4 | 7C 08 03 A6 */	mtlr r0
/* 813E85B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E85BC | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E850C

# .text:0x3A04 | 0x813E85C0 | size: 0xE0
.fn iplSDChannelTitle_813E85C0, global
/* 813E85C0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E85C4 | 7C 08 02 A6 */	mflr r0
/* 813E85C8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E85CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E85D0 | 48 21 0E F9 */	bl _savegpr_29
/* 813E85D4 | 80 03 01 4C */	lwz r0, 0x14c(r3)
/* 813E85D8 | 7C 7D 1B 78 */	mr r29, r3
/* 813E85DC | 7C 9E 23 78 */	mr r30, r4
/* 813E85E0 | 7C BF 2B 78 */	mr r31, r5
/* 813E85E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E85E8 | 38 C0 00 00 */	li r6, 0x0
/* 813E85EC | 41 82 00 18 */	beq .L_813E8604
/* 813E85F0 | 80 63 01 3C */	lwz r3, 0x13c(r3)
/* 813E85F4 | 80 9D 00 64 */	lwz r4, 0x64(r29)
/* 813E85F8 | 80 BD 00 68 */	lwz r5, 0x68(r29)
/* 813E85FC | 4B FF 78 BD */	bl iplSDChannelSelect_813DFEB8
/* 813E8600 | 7C 66 1B 78 */	mr r6, r3
.L_813E8604:
/* 813E8604 | 93 DD 00 64 */	stw r30, 0x64(r29)
/* 813E8608 | 7F C4 F3 78 */	mr r4, r30
/* 813E860C | 80 7D 01 3C */	lwz r3, 0x13c(r29)
/* 813E8610 | 7F E5 FB 78 */	mr r5, r31
/* 813E8614 | 93 FD 00 68 */	stw r31, 0x68(r29)
/* 813E8618 | 4B FF 56 51 */	bl iplSDChannelSelect_813DDC68
/* 813E861C | 80 7D 01 3C */	lwz r3, 0x13c(r29)
/* 813E8620 | 80 9D 00 64 */	lwz r4, 0x64(r29)
/* 813E8624 | 80 BD 00 68 */	lwz r5, 0x68(r29)
/* 813E8628 | 4B FF 78 91 */	bl iplSDChannelSelect_813DFEB8
/* 813E862C | 80 9D 01 3C */	lwz r4, 0x13c(r29)
/* 813E8630 | 7C 7F 1B 78 */	mr r31, r3
/* 813E8634 | 80 BD 00 68 */	lwz r5, 0x68(r29)
/* 813E8638 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813E863C | 4B FF 81 A9 */	bl iplSDChannelSelect_813E07E4
/* 813E8640 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 813E8644 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E8648 | 80 9D 01 3C */	lwz r4, 0x13c(r29)
/* 813E864C | D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 813E8650 | 80 BD 00 68 */	lwz r5, 0x68(r29)
/* 813E8654 | 4B FF 81 91 */	bl iplSDChannelSelect_813E07E4
/* 813E8658 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 813E865C | 7F E3 FB 78 */	mr r3, r31
/* 813E8660 | D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 813E8664 | 4B FF AC CD */	bl iplSDChannelObj_813E3330
/* 813E8668 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E866C | 41 82 00 14 */	beq .L_813E8680
/* 813E8670 | 7F A3 EB 78 */	mr r3, r29
/* 813E8674 | 7F E4 FB 78 */	mr r4, r31
/* 813E8678 | 48 00 00 29 */	bl iplSDChannelTitle_813E86A0
/* 813E867C | 48 00 00 0C */	b .L_813E8688
.L_813E8680:
/* 813E8680 | 38 00 00 1C */	li r0, 0x1c
/* 813E8684 | 90 1D 00 58 */	stw r0, 0x58(r29)
.L_813E8688:
/* 813E8688 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E868C | 48 21 0E 89 */	bl _restgpr_29
/* 813E8690 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E8694 | 7C 08 03 A6 */	mtlr r0
/* 813E8698 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E869C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E85C0

# .text:0x3AE4 | 0x813E86A0 | size: 0x38
.fn iplSDChannelTitle_813E86A0, global
/* 813E86A0 | 80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 813E86A4 | 80 A4 00 90 */	lwz r5, 0x90(r4)
/* 813E86A8 | 80 84 00 94 */	lwz r4, 0x94(r4)
/* 813E86AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E86B0 | 90 83 02 24 */	stw r4, 0x224(r3)
/* 813E86B4 | 90 A3 02 20 */	stw r5, 0x220(r3)
/* 813E86B8 | 41 82 00 0C */	beq .L_813E86C4
/* 813E86BC | 38 00 00 01 */	li r0, 0x1
/* 813E86C0 | 98 03 01 B0 */	stb r0, 0x1b0(r3)
.L_813E86C4:
/* 813E86C4 | 38 80 00 00 */	li r4, 0x0
/* 813E86C8 | 38 00 00 08 */	li r0, 0x8
/* 813E86CC | 90 83 34 AC */	stw r4, 0x34ac(r3)
/* 813E86D0 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813E86D4 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E86A0

# .text:0x3B1C | 0x813E86D8 | size: 0x1F4
.fn iplSDChannelTitle_813E86D8, global
/* 813E86D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E86DC | 7C 08 02 A6 */	mflr r0
/* 813E86E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E86E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E86E8 | 48 21 0D DD */	bl _savegpr_28
/* 813E86EC | 38 00 00 00 */	li r0, 0x0
/* 813E86F0 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813E86F4 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 813E86F8 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813E86FC | 7C 7F 1B 78 */	mr r31, r3
/* 813E8700 | 38 80 00 24 */	li r4, 0x24
/* 813E8704 | 98 03 01 A4 */	stb r0, 0x1a4(r3)
/* 813E8708 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813E870C | 48 02 2A 2D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E8710 | 38 80 00 0F */	li r4, 0xf
/* 813E8714 | 48 00 1B 41 */	bl iplSDChannelButton_813EA254
/* 813E8718 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813E871C | 38 80 00 24 */	li r4, 0x24
/* 813E8720 | 48 02 2A 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E8724 | 38 80 00 10 */	li r4, 0x10
/* 813E8728 | 48 00 1B 2D */	bl iplSDChannelButton_813EA254
/* 813E872C | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E8730 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E8734 | 7C 7F 02 14 */	add r3, r31, r0
/* 813E8738 | 80 63 01 5C */	lwz r3, 0x15c(r3)
/* 813E873C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8740 | 41 82 00 1C */	beq .L_813E875C
/* 813E8744 | 41 82 00 18 */	beq .L_813E875C
/* 813E8748 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E874C | 38 80 00 01 */	li r4, 0x1
/* 813E8750 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E8754 | 7D 89 03 A6 */	mtctr r12
/* 813E8758 | 4E 80 04 21 */	bctrl
.L_813E875C:
/* 813E875C | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E8760 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E8764 | 7C 7F 02 14 */	add r3, r31, r0
/* 813E8768 | 80 63 01 64 */	lwz r3, 0x164(r3)
/* 813E876C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8770 | 41 82 00 1C */	beq .L_813E878C
/* 813E8774 | 41 82 00 18 */	beq .L_813E878C
/* 813E8778 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E877C | 38 80 00 01 */	li r4, 0x1
/* 813E8780 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E8784 | 7D 89 03 A6 */	mtctr r12
/* 813E8788 | 4E 80 04 21 */	bctrl
.L_813E878C:
/* 813E878C | 80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 813E8790 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8794 | 41 82 00 08 */	beq .L_813E879C
/* 813E8798 | 4B F8 26 69 */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813E879C:
/* 813E879C | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E87A0 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813E87A4 | 38 80 00 00 */	li r4, 0x0
/* 813E87A8 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813E87AC | 54 00 10 3A */	slwi r0, r0, 2
/* 813E87B0 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813E87B4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813E87B8 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813E87BC | 90 83 01 5C */	stw r4, 0x15c(r3)
/* 813E87C0 | 80 1F 01 58 */	lwz r0, 0x158(r31)
/* 813E87C4 | 90 9F 01 6C */	stw r4, 0x16c(r31)
/* 813E87C8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E87CC | 7C 7F 02 14 */	add r3, r31, r0
/* 813E87D0 | 90 83 01 64 */	stw r4, 0x164(r3)
/* 813E87D4 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813E87D8 | 80 BF 02 20 */	lwz r5, 0x220(r31)
/* 813E87DC | 80 DF 02 24 */	lwz r6, 0x224(r31)
/* 813E87E0 | 4B F4 F6 99 */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813E87E4 | 7C 9E 1B 78 */	or r30, r4, r3
/* 813E87E8 | 3B 80 00 00 */	li r28, 0x0
/* 813E87EC | 30 1E FF FF */	subic r0, r30, 0x1
/* 813E87F0 | 7F C0 F1 10 */	subfe r30, r0, r30
/* 813E87F4 | 48 18 20 A1 */	bl fn_8156A894
/* 813E87F8 | 80 1F 02 20 */	lwz r0, 0x220(r31)
/* 813E87FC | 80 BF 02 24 */	lwz r5, 0x224(r31)
/* 813E8800 | 7C 00 1A 78 */	xor r0, r0, r3
/* 813E8804 | 7C A3 22 78 */	xor r3, r5, r4
/* 813E8808 | 7C 60 03 79 */	or. r0, r3, r0
/* 813E880C | 40 82 00 18 */	bne .L_813E8824
/* 813E8810 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813E8814 | 4B F4 F6 51 */	bl iplChannelManager_81337E64
/* 813E8818 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E881C | 41 82 00 08 */	beq .L_813E8824
/* 813E8820 | 3B 80 00 01 */	li r28, 0x1
.L_813E8824:
/* 813E8824 | 38 00 00 00 */	li r0, 0x0
/* 813E8828 | 38 80 00 11 */	li r4, 0x11
/* 813E882C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E8830 | 90 9F 00 70 */	stw r4, 0x70(r31)
/* 813E8834 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E8838 | 98 1F 01 A0 */	stb r0, 0x1a0(r31)
/* 813E883C | B0 1F 01 A2 */	sth r0, 0x1a2(r31)
/* 813E8840 | 98 1F 34 B1 */	stb r0, 0x34b1(r31)
/* 813E8844 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813E8848 | 4B F5 FA D1 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813E884C | 4B F4 B4 3D */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 813E8850 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813E8854 | 40 82 00 0C */	bne .L_813E8860
/* 813E8858 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813E885C | 41 82 00 38 */	beq .L_813E8894
.L_813E8860:
/* 813E8860 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E8864 | 3C 80 81 3F */	lis r4, iplSDChannelTitle_813E8E70@ha
/* 813E8868 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E886C | 7F E5 FB 78 */	mr r5, r31
/* 813E8870 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 813E8874 | 38 84 8E 70 */	addi r4, r4, iplSDChannelTitle_813E8E70@l
/* 813E8878 | 38 C0 00 00 */	li r6, 0x0
/* 813E887C | 48 20 F9 CD */	bl fn_815F8248
/* 813E8880 | 38 60 00 00 */	li r3, 0x0
/* 813E8884 | 38 00 00 0D */	li r0, 0xd
/* 813E8888 | 98 7F 34 B0 */	stb r3, 0x34b0(r31)
/* 813E888C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813E8890 | 48 00 00 24 */	b .L_813E88B4
.L_813E8894:
/* 813E8894 | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 813E8898 | 4B FF 2D B5 */	bl iplSDChannelSelect_813DB64C
/* 813E889C | 80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 813E88A0 | 4B FF 2D ED */	bl iplSDChannelSelect_813DB68C
/* 813E88A4 | 38 60 00 01 */	li r3, 0x1
/* 813E88A8 | 38 00 00 13 */	li r0, 0x13
/* 813E88AC | 98 7F 34 B0 */	stb r3, 0x34b0(r31)
/* 813E88B0 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813E88B4:
/* 813E88B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E88B8 | 48 21 0C 59 */	bl _restgpr_28
/* 813E88BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E88C0 | 7C 08 03 A6 */	mtlr r0
/* 813E88C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E88C8 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E86D8

# .text:0x3D10 | 0x813E88CC | size: 0xD0
.fn iplSDChannelTitle_813E88CC, global
/* 813E88CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E88D0 | 7C 08 02 A6 */	mflr r0
/* 813E88D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813E88D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E88DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E88E0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E88E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813E88E8 | 41 82 00 1C */	beq .L_813E8904
/* 813E88EC | 38 80 00 12 */	li r4, 0x12
/* 813E88F0 | 38 A0 00 01 */	li r5, 0x1
/* 813E88F4 | 48 02 16 A1 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 813E88F8 | 38 00 00 07 */	li r0, 0x7
/* 813E88FC | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E8900 | 48 00 00 84 */	b .L_813E8984
.L_813E8904:
/* 813E8904 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E8908 | 38 80 00 24 */	li r4, 0x24
/* 813E890C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E8910 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E8914 | 48 02 28 25 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E8918 | 88 03 00 81 */	lbz r0, 0x81(r3)
/* 813E891C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E8920 | 41 82 00 2C */	beq .L_813E894C
/* 813E8924 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E8928 | 38 80 00 24 */	li r4, 0x24
/* 813E892C | 48 02 28 0D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E8930 | 38 80 00 0F */	li r4, 0xf
/* 813E8934 | 48 00 19 21 */	bl iplSDChannelButton_813EA254
/* 813E8938 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E893C | 38 80 00 24 */	li r4, 0x24
/* 813E8940 | 48 02 27 F9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E8944 | 38 80 00 10 */	li r4, 0x10
/* 813E8948 | 48 00 19 0D */	bl iplSDChannelButton_813EA254
.L_813E894C:
/* 813E894C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E8950 | 38 80 01 43 */	li r4, 0x143
/* 813E8954 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E8958 | 38 A0 01 46 */	li r5, 0x146
/* 813E895C | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813E8960 | 38 C0 00 25 */	li r6, 0x25
/* 813E8964 | 38 E0 00 00 */	li r7, 0x0
/* 813E8968 | 4B F5 E1 6D */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813E896C | 38 00 00 0C */	li r0, 0xc
/* 813E8970 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E8974 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813E8978 | 4B F5 F9 CD */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813E897C | 38 00 00 01 */	li r0, 0x1
/* 813E8980 | 98 1E 34 B1 */	stb r0, 0x34b1(r30)
.L_813E8984:
/* 813E8984 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E8988 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E898C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E8990 | 7C 08 03 A6 */	mtlr r0
/* 813E8994 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E8998 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E88CC

# .text:0x3DE0 | 0x813E899C | size: 0x84
.fn iplSDChannelTitle_813E899C, global
/* 813E899C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E89A0 | 7C 08 02 A6 */	mflr r0
/* 813E89A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E89A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E89AC | 48 21 0B 1D */	bl _savegpr_29
/* 813E89B0 | 7C 7D 1B 78 */	mr r29, r3
/* 813E89B4 | 7C 9E 23 78 */	mr r30, r4
/* 813E89B8 | 3B E0 00 00 */	li r31, 0x0
.L_813E89BC:
/* 813E89BC | 7F E3 FB 78 */	mr r3, r31
/* 813E89C0 | 4B F4 D0 09 */	bl getController__Q23ipl6SystemFi
/* 813E89C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E89C8 | 41 82 00 14 */	beq .L_813E89DC
/* 813E89CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E89D0 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813E89D4 | 7D 89 03 A6 */	mtctr r12
/* 813E89D8 | 4E 80 04 21 */	bctrl
.L_813E89DC:
/* 813E89DC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813E89E0 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 813E89E4 | 41 80 FF D8 */	blt .L_813E89BC
/* 813E89E8 | 2C 1E 00 11 */	cmpwi r30, 0x11
/* 813E89EC | 40 82 00 1C */	bne .L_813E8A08
/* 813E89F0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E89F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E89F8 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813E89FC | 4B F5 F9 1D */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813E8A00 | 38 00 00 00 */	li r0, 0x0
/* 813E8A04 | 98 1D 34 B1 */	stb r0, 0x34b1(r29)
.L_813E8A08:
/* 813E8A08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E8A0C | 48 21 0B 09 */	bl _restgpr_29
/* 813E8A10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E8A14 | 7C 08 03 A6 */	mtlr r0
/* 813E8A18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E8A1C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E899C

# .text:0x3E64 | 0x813E8A20 | size: 0x94
.fn iplSDChannelTitle_813E8A20, global
/* 813E8A20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E8A24 | 7C 08 02 A6 */	mflr r0
/* 813E8A28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E8A2C | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813E8A30 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813E8A34 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813E8A38 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E8A3C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E8A40 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813E8A44 | 7C 7E 1B 78 */	mr r30, r3
/* 813E8A48 | 80 A3 02 20 */	lwz r5, 0x220(r3)
/* 813E8A4C | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E8A50 | 80 DE 02 24 */	lwz r6, 0x224(r30)
/* 813E8A54 | 4B F4 F4 25 */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813E8A58 | 7C 80 1B 79 */	or. r0, r4, r3
/* 813E8A5C | 41 82 00 14 */	beq .L_813E8A70
/* 813E8A60 | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813E8A64 | 80 BE 02 20 */	lwz r5, 0x220(r30)
/* 813E8A68 | 80 DE 02 24 */	lwz r6, 0x224(r30)
/* 813E8A6C | 4B F7 0C 4D */	bl iplSavedata_813596B8
.L_813E8A70:
/* 813E8A70 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E8A74 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 813E8A78 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E8A7C | 80 83 00 94 */	lwz r4, 0x94(r3)
/* 813E8A80 | 90 04 04 C0 */	stw r0, 0x4c0(r4)
/* 813E8A84 | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 813E8A88 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 813E8A8C | 4B F6 F3 A9 */	bl flushAsync__Q33ipl8savedata7ManagerFPQ23EGG4Heap
/* 813E8A90 | 90 7E 01 80 */	stw r3, 0x180(r30)
/* 813E8A94 | 38 60 00 01 */	li r3, 0x1
/* 813E8A98 | 48 19 0C 6D */	bl __WPADReconnect
/* 813E8A9C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E8AA0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813E8AA4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813E8AA8 | 7C 08 03 A6 */	mtlr r0
/* 813E8AAC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E8AB0 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8A20

# .text:0x3EF8 | 0x813E8AB4 | size: 0x68
.fn iplSDChannelTitle_813E8AB4, global
/* 813E8AB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E8AB8 | 7C 08 02 A6 */	mflr r0
/* 813E8ABC | 38 80 00 00 */	li r4, 0x0
/* 813E8AC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E8AC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E8AC8 | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 813E8ACC | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813E8AD0 | 4B F8 30 41 */	bl stopAllSound__Q33ipl3snd6SystemFi
/* 813E8AD4 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813E8AD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E8ADC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E8AE0 | 7D 89 03 A6 */	mtctr r12
/* 813E8AE4 | 4E 80 04 21 */	bctrl
/* 813E8AE8 | 38 60 00 01 */	li r3, 0x1
/* 813E8AEC | 48 15 56 3D */	bl VISetBlack
/* 813E8AF0 | 48 15 54 B1 */	bl VIFlush
/* 813E8AF4 | 48 15 44 F5 */	bl VIWaitForRetrace
.L_813E8AF8:
/* 813E8AF8 | 48 14 A5 89 */	bl __OSSyncSram
/* 813E8AFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8B00 | 41 82 FF F8 */	beq .L_813E8AF8
/* 813E8B04 | 4B F9 7A 39 */	bl OSRebootSystem
/* 813E8B08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E8B0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E8B10 | 7C 08 03 A6 */	mtlr r0
/* 813E8B14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E8B18 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8AB4

# .text:0x3F60 | 0x813E8B1C | size: 0x54
.fn iplSDChannelTitle_813E8B1C, global
/* 813E8B1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E8B20 | 7C 08 02 A6 */	mflr r0
/* 813E8B24 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E8B28 | C0 02 87 80 */	lfs f0, lbl_81694B80@sda21(r0)
/* 813E8B2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E8B30 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E8B34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E8B38 | 7C 7F 1B 78 */	mr r31, r3
/* 813E8B3C | 80 64 00 74 */	lwz r3, 0x74(r4)
/* 813E8B40 | C0 23 00 14 */	lfs f1, 0x14(r3)
/* 813E8B44 | EC 20 08 24 */	fdivs f1, f0, f1
/* 813E8B48 | 48 21 08 51 */	bl __cvt_fp2unsigned
/* 813E8B4C | 80 1F 00 84 */	lwz r0, 0x84(r31)
/* 813E8B50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E8B54 | 7C 00 18 10 */	subfc r0, r0, r3
/* 813E8B58 | 7C 00 01 10 */	subfe r0, r0, r0
/* 813E8B5C | 7C 60 00 D0 */	neg r3, r0
/* 813E8B60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E8B64 | 7C 08 03 A6 */	mtlr r0
/* 813E8B68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E8B6C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8B1C

# .text:0x3FB4 | 0x813E8B70 | size: 0x98
.fn iplSDChannelTitle_813E8B70, global
/* 813E8B70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E8B74 | 7C 08 02 A6 */	mflr r0
/* 813E8B78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E8B7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E8B80 | 48 21 09 49 */	bl _savegpr_29
/* 813E8B84 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813E8B88 | 7C 7D 1B 78 */	mr r29, r3
/* 813E8B8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E8B90 | 40 82 00 58 */	bne .L_813E8BE8
/* 813E8B94 | 80 83 01 14 */	lwz r4, 0x114(r3)
/* 813E8B98 | 3B E0 00 00 */	li r31, 0x0
/* 813E8B9C | 93 E4 00 14 */	stw r31, 0x14(r4)
/* 813E8BA0 | 83 C3 01 18 */	lwz r30, 0x118(r3)
/* 813E8BA4 | 7F C3 F3 78 */	mr r3, r30
/* 813E8BA8 | 4B F7 9C C9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E8BAC | 38 00 00 01 */	li r0, 0x1
/* 813E8BB0 | 38 6D 8E 00 */	li r3, lbl_81696E40@sda21
/* 813E8BB4 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813E8BB8 | 38 A0 00 01 */	li r5, 0x1
/* 813E8BBC | 80 DD 01 44 */	lwz r6, 0x144(r29)
/* 813E8BC0 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813E8BC4 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813E8BC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E8BCC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E8BD0 | 7D 89 03 A6 */	mtctr r12
/* 813E8BD4 | 4E 80 04 21 */	bctrl
/* 813E8BD8 | 7C 64 1B 78 */	mr r4, r3
/* 813E8BDC | 80 7D 01 48 */	lwz r3, 0x148(r29)
/* 813E8BE0 | 4B F8 26 39 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813E8BE4 | 93 FD 01 8C */	stw r31, 0x18c(r29)
.L_813E8BE8:
/* 813E8BE8 | 38 00 00 01 */	li r0, 0x1
/* 813E8BEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E8BF0 | 90 1D 00 88 */	stw r0, 0x88(r29)
/* 813E8BF4 | 48 21 09 21 */	bl _restgpr_29
/* 813E8BF8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E8BFC | 7C 08 03 A6 */	mtlr r0
/* 813E8C00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E8C04 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8B70

# .text:0x404C | 0x813E8C08 | size: 0x10C
.fn iplSDChannelTitle_813E8C08, global
/* 813E8C08 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813E8C0C | 7C 08 02 A6 */	mflr r0
/* 813E8C10 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813E8C14 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813E8C18 | 48 21 08 AD */	bl _savegpr_28
/* 813E8C1C | 7C 9C 23 78 */	mr r28, r4
/* 813E8C20 | 7C BD 2B 78 */	mr r29, r5
/* 813E8C24 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813E8C28 | 4B F4 D8 01 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E8C2C | 38 61 00 0C */	addi r3, r1, 0xc
/* 813E8C30 | 4B F4 CC E9 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813E8C34 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813E8C38 | 4B F4 D7 F1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E8C3C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813E8C40 | 4B F4 D7 E9 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E8C44 | 38 61 00 3C */	addi r3, r1, 0x3c
/* 813E8C48 | 4B F4 D7 E1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E8C4C | 38 61 00 4C */	addi r3, r1, 0x4c
/* 813E8C50 | 4B F4 D7 D9 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E8C54 | C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 813E8C58 | 3B C0 00 00 */	li r30, 0x0
/* 813E8C5C | C0 9C 00 04 */	lfs f4, 0x4(r28)
/* 813E8C60 | 3B E0 00 00 */	li r31, 0x0
/* 813E8C64 | C0 A1 00 14 */	lfs f5, 0x14(r1)
/* 813E8C68 | C0 7C 00 08 */	lfs f3, 0x8(r28)
/* 813E8C6C | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 813E8C70 | C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 813E8C74 | C0 C1 00 18 */	lfs f6, 0x18(r1)
/* 813E8C78 | C0 1C 00 00 */	lfs f0, 0x0(r28)
/* 813E8C7C | D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 813E8C80 | D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 813E8C84 | D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 813E8C88 | D0 81 00 28 */	stfs f4, 0x28(r1)
/* 813E8C8C | D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 813E8C90 | D0 81 00 30 */	stfs f4, 0x30(r1)
/* 813E8C94 | D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 813E8C98 | D0 41 00 38 */	stfs f2, 0x38(r1)
/* 813E8C9C | D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 813E8CA0 | D0 21 00 40 */	stfs f1, 0x40(r1)
/* 813E8CA4 | D0 61 00 44 */	stfs f3, 0x44(r1)
/* 813E8CA8 | D0 41 00 48 */	stfs f2, 0x48(r1)
/* 813E8CAC | D0 E1 00 4C */	stfs f7, 0x4c(r1)
/* 813E8CB0 | D0 81 00 50 */	stfs f4, 0x50(r1)
/* 813E8CB4 | D0 01 00 54 */	stfs f0, 0x54(r1)
/* 813E8CB8 | D0 21 00 58 */	stfs f1, 0x58(r1)
.L_813E8CBC:
/* 813E8CBC | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 813E8CC0 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813E8CC4 | 88 DD 00 01 */	lbz r6, 0x1(r29)
/* 813E8CC8 | 7C 63 FA 14 */	add r3, r3, r31
/* 813E8CCC | 88 BD 00 02 */	lbz r5, 0x2(r29)
/* 813E8CD0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E8CD4 | 88 1D 00 03 */	lbz r0, 0x3(r29)
/* 813E8CD8 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 813E8CDC | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 813E8CE0 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 813E8CE4 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813E8CE8 | 4B F7 A0 55 */	bl drawPolygon__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4Rect8_GXColor
/* 813E8CEC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813E8CF0 | 3B FF 00 10 */	addi r31, r31, 0x10
/* 813E8CF4 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 813E8CF8 | 41 80 FF C4 */	blt .L_813E8CBC
/* 813E8CFC | 39 61 00 70 */	addi r11, r1, 0x70
/* 813E8D00 | 48 21 08 11 */	bl _restgpr_28
/* 813E8D04 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 813E8D08 | 7C 08 03 A6 */	mtlr r0
/* 813E8D0C | 38 21 00 70 */	addi r1, r1, 0x70
/* 813E8D10 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8C08

# .text:0x4158 | 0x813E8D14 | size: 0xB8
.fn iplSDChannelTitle_813E8D14, global
/* 813E8D14 | 94 21 FD F0 */	stwu r1, -0x210(r1)
/* 813E8D18 | 7C 08 02 A6 */	mflr r0
/* 813E8D1C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E8D20 | 90 01 02 14 */	stw r0, 0x214(r1)
/* 813E8D24 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E8D28 | 93 E1 02 0C */	stw r31, 0x20c(r1)
/* 813E8D2C | 7C DF 33 78 */	mr r31, r6
/* 813E8D30 | 93 C1 02 08 */	stw r30, 0x208(r1)
/* 813E8D34 | 7C 9E 23 78 */	mr r30, r4
/* 813E8D38 | 7C A4 2B 78 */	mr r4, r5
/* 813E8D3C | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813E8D40 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813E8D44 | 4B F5 5A 79 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813E8D48 | 7C 64 1B 78 */	mr r4, r3
/* 813E8D4C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E8D50 | 38 A0 01 00 */	li r5, 0x100
/* 813E8D54 | 48 21 F9 91 */	bl fn_816086E4
/* 813E8D58 | 38 00 00 00 */	li r0, 0x0
/* 813E8D5C | 7F C3 F3 78 */	mr r3, r30
/* 813E8D60 | B0 01 02 06 */	sth r0, 0x206(r1)
/* 813E8D64 | 4B F5 D1 01 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813E8D68 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E8D6C | 7C 7F 1B 78 */	mr r31, r3
/* 813E8D70 | 41 82 00 28 */	beq .L_813E8D98
/* 813E8D74 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E8D78 | 48 21 F9 35 */	bl fn_816086AC
/* 813E8D7C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813E8D80 | 7C 60 1B 78 */	mr r0, r3
/* 813E8D84 | 7F E3 FB 78 */	mr r3, r31
/* 813E8D88 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 813E8D8C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813E8D90 | 7D 89 03 A6 */	mtctr r12
/* 813E8D94 | 4E 80 04 21 */	bctrl
.L_813E8D98:
/* 813E8D98 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813E8D9C | 7F E3 FB 78 */	mr r3, r31
/* 813E8DA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E8DA4 | 38 A0 00 00 */	li r5, 0x0
/* 813E8DA8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813E8DAC | 7D 89 03 A6 */	mtctr r12
/* 813E8DB0 | 4E 80 04 21 */	bctrl
/* 813E8DB4 | 80 01 02 14 */	lwz r0, 0x214(r1)
/* 813E8DB8 | 83 E1 02 0C */	lwz r31, 0x20c(r1)
/* 813E8DBC | 83 C1 02 08 */	lwz r30, 0x208(r1)
/* 813E8DC0 | 7C 08 03 A6 */	mtlr r0
/* 813E8DC4 | 38 21 02 10 */	addi r1, r1, 0x210
/* 813E8DC8 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8D14

# .text:0x4210 | 0x813E8DCC | size: 0xA4
.fn iplSDChannelTitle_813E8DCC, global
/* 813E8DCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E8DD0 | 7C 08 02 A6 */	mflr r0
/* 813E8DD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E8DD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E8DDC | 48 21 06 E9 */	bl _savegpr_28
/* 813E8DE0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E8DE4 | 7C BD 2B 78 */	mr r29, r5
/* 813E8DE8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E8DEC | 7C DC 33 78 */	mr r28, r6
/* 813E8DF0 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E8DF4 | 7C FE 3B 78 */	mr r30, r7
/* 813E8DF8 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813E8DFC | 4B F5 1A 61 */	bl iplChannelManager_8133A85C
/* 813E8E00 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813E8E04 | 7F 86 E3 78 */	mr r6, r28
/* 813E8E08 | 7F A5 EB 78 */	mr r5, r29
/* 813E8E0C | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813E8E10 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813E8E14 | 4B F5 19 91 */	bl iplChannelManager_8133A7A4
/* 813E8E18 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813E8E1C | 7C 7F 1B 78 */	mr r31, r3
/* 813E8E20 | 38 60 00 0C */	li r3, 0xc
/* 813E8E24 | 38 A0 00 04 */	li r5, 0x4
/* 813E8E28 | 48 20 F2 89 */	bl __nw__FUlPQ23EGG4Heapi
/* 813E8E2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8E30 | 7C 7E 1B 78 */	mr r30, r3
/* 813E8E34 | 41 82 00 20 */	beq .L_813E8E54
/* 813E8E38 | 4B F5 24 AD */	bl __ct__Q33ipl4nand4BaseFv
/* 813E8E3C | 93 FE 00 04 */	stw r31, 0x4(r30)
/* 813E8E40 | 38 00 00 00 */	li r0, 0x0
/* 813E8E44 | 3C 60 81 63 */	lis r3, __vt__Q33ipl4nand10LayoutFile@ha
/* 813E8E48 | 90 1E 00 08 */	stw r0, 0x8(r30)
/* 813E8E4C | 38 63 4C D8 */	addi r3, r3, __vt__Q33ipl4nand10LayoutFile@l
/* 813E8E50 | 90 7E 00 00 */	stw r3, 0x0(r30)
.L_813E8E54:
/* 813E8E54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E8E58 | 7F C3 F3 78 */	mr r3, r30
/* 813E8E5C | 48 21 06 B5 */	bl _restgpr_28
/* 813E8E60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E8E64 | 7C 08 03 A6 */	mtlr r0
/* 813E8E68 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E8E6C | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8DCC

# .text:0x42B4 | 0x813E8E70 | size: 0x94
.fn iplSDChannelTitle_813E8E70, global
/* 813E8E70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E8E74 | 7C 08 02 A6 */	mflr r0
/* 813E8E78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E8E7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E8E80 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E8E84 | 7C 7E 1B 78 */	mr r30, r3
/* 813E8E88 | 38 FE 01 9C */	addi r7, r30, 0x19c
/* 813E8E8C | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813E8E90 | 80 BE 02 20 */	lwz r5, 0x220(r30)
/* 813E8E94 | 80 DE 02 24 */	lwz r6, 0x224(r30)
/* 813E8E98 | 4B F7 C8 6D */	bl GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView
/* 813E8E9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8EA0 | 41 82 00 44 */	beq .L_813E8EE4
/* 813E8EA4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813E8EA8 | 3C C0 81 65 */	lis r6, lbl_81655462@ha
/* 813E8EAC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813E8EB0 | 7C 65 1B 78 */	mr r5, r3
/* 813E8EB4 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813E8EB8 | 38 C6 54 62 */	addi r6, r6, lbl_81655462@l
/* 813E8EBC | 38 8D 8E A9 */	li r4, lbl_81696EE9@sda21
/* 813E8EC0 | 38 E0 0C 6D */	li r7, 0xc6d
/* 813E8EC4 | 4B F6 D8 35 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813E8EC8 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813E8ECC | 38 80 00 01 */	li r4, 0x1
/* 813E8ED0 | 38 A0 00 02 */	li r5, 0x2
/* 813E8ED4 | 38 C0 00 00 */	li r6, 0x0
/* 813E8ED8 | 38 E0 00 00 */	li r7, 0x0
/* 813E8EDC | 39 00 FF FF */	li r8, -0x1
/* 813E8EE0 | 4B F6 D6 35 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813E8EE4:
/* 813E8EE4 | 38 00 00 01 */	li r0, 0x1
/* 813E8EE8 | 98 1E 01 A0 */	stb r0, 0x1a0(r30)
/* 813E8EEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E8EF0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E8EF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E8EF8 | 7C 08 03 A6 */	mtlr r0
/* 813E8EFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E8F00 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8E70

# .text:0x4348 | 0x813E8F04 | size: 0x100
.fn iplSDChannelTitle_813E8F04, global
/* 813E8F04 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813E8F08 | 7C 08 02 A6 */	mflr r0
/* 813E8F0C | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813E8F10 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813E8F14 | 48 21 05 B1 */	bl _savegpr_28
/* 813E8F18 | 7C 7C 1B 78 */	mr r28, r3
/* 813E8F1C | 7C 9D 23 78 */	mr r29, r4
/* 813E8F20 | 4B F7 D3 85 */	bl __IsPCEnable__Q33ipl7utility6ESMiscFv
/* 813E8F24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8F28 | 40 82 00 0C */	bne .L_813E8F34
/* 813E8F2C | 38 60 00 01 */	li r3, 0x1
/* 813E8F30 | 48 00 00 BC */	b .L_813E8FEC
.L_813E8F34:
/* 813E8F34 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E8F38 | 48 18 12 41 */	bl fn_8156A178
/* 813E8F3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8F40 | 40 82 00 0C */	bne .L_813E8F4C
/* 813E8F44 | 38 60 00 01 */	li r3, 0x1
/* 813E8F48 | 48 00 00 A4 */	b .L_813E8FEC
.L_813E8F4C:
/* 813E8F4C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813E8F50 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813E8F54 | 41 82 00 94 */	beq .L_813E8FE8
/* 813E8F58 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813E8F5C | 80 BC 02 20 */	lwz r5, 0x220(r28)
/* 813E8F60 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813E8F64 | 80 DC 02 24 */	lwz r6, 0x224(r28)
/* 813E8F68 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813E8F6C | 4B F5 17 4D */	bl iplChannelManager_8133A6B8
/* 813E8F70 | 7C 7F 1B 78 */	mr r31, r3
/* 813E8F74 | 48 18 17 39 */	bl fn_8156A6AC
/* 813E8F78 | 7C 60 F8 39 */	and. r0, r3, r31
/* 813E8F7C | 41 82 00 0C */	beq .L_813E8F88
/* 813E8F80 | 38 60 00 00 */	li r3, 0x0
/* 813E8F84 | 48 00 00 68 */	b .L_813E8FEC
.L_813E8F88:
/* 813E8F88 | 48 18 14 15 */	bl fn_8156A39C
/* 813E8F8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8F90 | 41 82 00 24 */	beq .L_813E8FB4
/* 813E8F94 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813E8F98 | 80 BC 02 20 */	lwz r5, 0x220(r28)
/* 813E8F9C | 80 DC 02 24 */	lwz r6, 0x224(r28)
/* 813E8FA0 | 4B F5 17 9D */	bl iplChannelManager_8133A73C
/* 813E8FA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8FA8 | 41 82 00 0C */	beq .L_813E8FB4
/* 813E8FAC | 38 60 00 00 */	li r3, 0x0
/* 813E8FB0 | 48 00 00 3C */	b .L_813E8FEC
.L_813E8FB4:
/* 813E8FB4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E8FB8 | 80 BC 02 20 */	lwz r5, 0x220(r28)
/* 813E8FBC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E8FC0 | 80 DC 02 24 */	lwz r6, 0x224(r28)
/* 813E8FC4 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813E8FC8 | 4B F5 17 75 */	bl iplChannelManager_8133A73C
/* 813E8FCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E8FD0 | 41 82 00 0C */	beq .L_813E8FDC
/* 813E8FD4 | 38 60 00 01 */	li r3, 0x1
/* 813E8FD8 | 48 00 00 14 */	b .L_813E8FEC
.L_813E8FDC:
/* 813E8FDC | 7F A3 EB 78 */	mr r3, r29
/* 813E8FE0 | 4B F7 D3 15 */	bl CheckTmdParentalControl__Q33ipl7utility6ESMiscFP9ESTmdView
/* 813E8FE4 | 48 00 00 08 */	b .L_813E8FEC
.L_813E8FE8:
/* 813E8FE8 | 38 60 00 01 */	li r3, 0x1
.L_813E8FEC:
/* 813E8FEC | 39 61 00 70 */	addi r11, r1, 0x70
/* 813E8FF0 | 48 21 05 21 */	bl _restgpr_28
/* 813E8FF4 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 813E8FF8 | 7C 08 03 A6 */	mtlr r0
/* 813E8FFC | 38 21 00 70 */	addi r1, r1, 0x70
/* 813E9000 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E8F04

# .text:0x4448 | 0x813E9004 | size: 0x2E8
.fn iplSDChannelTitle_813E9004, global
/* 813E9004 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E9008 | 7C 08 02 A6 */	mflr r0
/* 813E900C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E9010 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E9014 | 48 21 04 A5 */	bl _savegpr_25
/* 813E9018 | 7C 7C 1B 78 */	mr r28, r3
/* 813E901C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813E9020 | 3F E0 81 65 */	lis r31, lbl_81654F98@ha
/* 813E9024 | 7C B9 2B 78 */	mr r25, r5
/* 813E9028 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E902C | 7C DD 33 78 */	mr r29, r6
/* 813E9030 | 3B FF 4F 98 */	addi r31, r31, lbl_81654F98@l
/* 813E9034 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813E9038 | 7D 89 03 A6 */	mtctr r12
/* 813E903C | 4E 80 04 21 */	bctrl
/* 813E9040 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E9044 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813E9048 | 7D 89 03 A6 */	mtctr r12
/* 813E904C | 4E 80 04 21 */	bctrl
/* 813E9050 | 2C 19 00 01 */	cmpwi r25, 0x1
/* 813E9054 | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813E9058 | 41 82 01 28 */	beq .L_813E9180
/* 813E905C | 40 80 00 10 */	bge .L_813E906C
/* 813E9060 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813E9064 | 40 80 00 14 */	bge .L_813E9078
/* 813E9068 | 48 00 02 6C */	b .L_813E92D4
.L_813E906C:
/* 813E906C | 2C 19 00 03 */	cmpwi r25, 0x3
/* 813E9070 | 40 80 02 64 */	bge .L_813E92D4
/* 813E9074 | 48 00 01 C8 */	b .L_813E923C
.L_813E9078:
/* 813E9078 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E907C | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813E9080 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E9084 | 40 82 02 50 */	bne .L_813E92D4
/* 813E9088 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813E908C | 3C 80 00 10 */	lis r4, 0x10
/* 813E9090 | 7F A3 EB 78 */	mr r3, r29
/* 813E9094 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813E9098 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813E909C | 7D 89 03 A6 */	mtctr r12
/* 813E90A0 | 4E 80 04 21 */	bctrl
/* 813E90A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E90A8 | 41 82 02 2C */	beq .L_813E92D4
/* 813E90AC | 80 8D 8E 00 */	lwz r4, lbl_81696E40@sda21(r0)
/* 813E90B0 | 7F C3 F3 78 */	mr r3, r30
/* 813E90B4 | 48 21 93 CD */	bl strcmp
/* 813E90B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E90BC | 40 82 00 44 */	bne .L_813E9100
/* 813E90C0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E90C4 | 83 43 00 C8 */	lwz r26, 0xc8(r3)
/* 813E90C8 | 7F 43 D3 78 */	mr r3, r26
/* 813E90CC | 4B F7 97 A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E90D0 | 38 00 00 01 */	li r0, 0x1
/* 813E90D4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E90D8 | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 813E90DC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E90E0 | 38 9F 04 E0 */	addi r4, r31, 0x4e0
/* 813E90E4 | 4B F8 23 89 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E90E8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E90EC | 38 00 00 0A */	li r0, 0xa
/* 813E90F0 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813E90F4 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E90F8 | 4B FF E9 21 */	bl iplSDChannelTitle_813E7A18
/* 813E90FC | 48 00 01 D8 */	b .L_813E92D4
.L_813E9100:
/* 813E9100 | 38 8D 8E 00 */	li r4, lbl_81696E40@sda21
/* 813E9104 | 7F C3 F3 78 */	mr r3, r30
/* 813E9108 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813E910C | 48 21 93 75 */	bl strcmp
/* 813E9110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9114 | 40 82 01 C0 */	bne .L_813E92D4
/* 813E9118 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E911C | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813E9120 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E9124 | 41 82 00 18 */	beq .L_813E913C
/* 813E9128 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E912C | 38 9F 04 F0 */	addi r4, r31, 0x4f0
/* 813E9130 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E9134 | 4B F8 23 39 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E9138 | 48 00 01 9C */	b .L_813E92D4
.L_813E913C:
/* 813E913C | 4B FF F5 9D */	bl iplSDChannelTitle_813E86D8
/* 813E9140 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E9144 | 83 63 00 E0 */	lwz r27, 0xe0(r3)
/* 813E9148 | 7F 63 DB 78 */	mr r3, r27
/* 813E914C | 4B F7 97 25 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E9150 | 38 00 00 01 */	li r0, 0x1
/* 813E9154 | 3F 40 81 09 */	lis r26, sSystem__Q23ipl3snd@ha
/* 813E9158 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 813E915C | 38 7A 99 2C */	addi r3, r26, sSystem__Q23ipl3snd@l
/* 813E9160 | 38 A0 00 1E */	li r5, 0x1e
/* 813E9164 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 813E9168 | 80 84 01 7C */	lwz r4, 0x17c(r4)
/* 813E916C | 4B F8 28 FD */	bl stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei
/* 813E9170 | 38 7A 99 2C */	addi r3, r26, sSystem__Q23ipl3snd@l
/* 813E9174 | 38 9F 05 04 */	addi r4, r31, 0x504
/* 813E9178 | 4B F8 22 F5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E917C | 48 00 01 58 */	b .L_813E92D4
.L_813E9180:
/* 813E9180 | 3B 20 00 00 */	li r25, 0x0
/* 813E9184 | 3B 60 00 00 */	li r27, 0x0
/* 813E9188 | 3B 4D 8E 00 */	li r26, lbl_81696E40@sda21
.L_813E918C:
/* 813E918C | 7C 9A D8 2E */	lwzx r4, r26, r27
/* 813E9190 | 7F C3 F3 78 */	mr r3, r30
/* 813E9194 | 48 21 92 ED */	bl strcmp
/* 813E9198 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E919C | 40 82 00 8C */	bne .L_813E9228
/* 813E91A0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813E91A4 | 41 82 00 14 */	beq .L_813E91B8
/* 813E91A8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E91AC | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813E91B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E91B4 | 40 81 00 74 */	ble .L_813E9228
.L_813E91B8:
/* 813E91B8 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 813E91BC | 7C 80 DA 14 */	add r4, r0, r27
/* 813E91C0 | 80 64 01 88 */	lwz r3, 0x188(r4)
/* 813E91C4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813E91C8 | 90 04 01 88 */	stw r0, 0x188(r4)
/* 813E91CC | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 813E91D0 | 7C 64 DA 14 */	add r3, r4, r27
/* 813E91D4 | 80 03 01 88 */	lwz r0, 0x188(r3)
/* 813E91D8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E91DC | 41 81 00 4C */	bgt .L_813E9228
/* 813E91E0 | 1C 19 00 18 */	mulli r0, r25, 0x18
/* 813E91E4 | 7C 64 02 14 */	add r3, r4, r0
/* 813E91E8 | 83 43 00 94 */	lwz r26, 0x94(r3)
/* 813E91EC | 7F 43 D3 78 */	mr r3, r26
/* 813E91F0 | 4B F7 96 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E91F4 | 38 00 00 01 */	li r0, 0x1
/* 813E91F8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E91FC | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 813E9200 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E9204 | 38 9F 05 13 */	addi r4, r31, 0x513
/* 813E9208 | 4B F8 22 65 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E920C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813E9210 | 7F A3 EB 78 */	mr r3, r29
/* 813E9214 | 38 80 00 00 */	li r4, 0x0
/* 813E9218 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813E921C | 7D 89 03 A6 */	mtctr r12
/* 813E9220 | 4E 80 04 21 */	bctrl
/* 813E9224 | 48 00 00 B0 */	b .L_813E92D4
.L_813E9228:
/* 813E9228 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813E922C | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 813E9230 | 2C 19 00 02 */	cmpwi r25, 0x2
/* 813E9234 | 41 80 FF 58 */	blt .L_813E918C
/* 813E9238 | 48 00 00 9C */	b .L_813E92D4
.L_813E923C:
/* 813E923C | 3B 20 00 00 */	li r25, 0x0
/* 813E9240 | 3B A0 00 00 */	li r29, 0x0
/* 813E9244 | 3B 6D 8E 00 */	li r27, lbl_81696E40@sda21
.L_813E9248:
/* 813E9248 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 813E924C | 7F C3 F3 78 */	mr r3, r30
/* 813E9250 | 48 21 92 31 */	bl strcmp
/* 813E9254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9258 | 40 82 00 6C */	bne .L_813E92C4
/* 813E925C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813E9260 | 41 82 00 14 */	beq .L_813E9274
/* 813E9264 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E9268 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813E926C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E9270 | 40 81 00 54 */	ble .L_813E92C4
.L_813E9274:
/* 813E9274 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 813E9278 | 7C 80 EA 14 */	add r4, r0, r29
/* 813E927C | 80 64 01 88 */	lwz r3, 0x188(r4)
/* 813E9280 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9284 | 40 81 00 50 */	ble .L_813E92D4
/* 813E9288 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813E928C | 90 04 01 88 */	stw r0, 0x188(r4)
/* 813E9290 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 813E9294 | 7C 64 EA 14 */	add r3, r4, r29
/* 813E9298 | 80 03 01 88 */	lwz r0, 0x188(r3)
/* 813E929C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E92A0 | 41 81 00 24 */	bgt .L_813E92C4
/* 813E92A4 | 1C 19 00 18 */	mulli r0, r25, 0x18
/* 813E92A8 | 7C 64 02 14 */	add r3, r4, r0
/* 813E92AC | 83 43 00 90 */	lwz r26, 0x90(r3)
/* 813E92B0 | 7F 43 D3 78 */	mr r3, r26
/* 813E92B4 | 4B F7 95 BD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E92B8 | 38 00 00 01 */	li r0, 0x1
/* 813E92BC | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 813E92C0 | 48 00 00 14 */	b .L_813E92D4
.L_813E92C4:
/* 813E92C4 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813E92C8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813E92CC | 2C 19 00 02 */	cmpwi r25, 0x2
/* 813E92D0 | 41 80 FF 78 */	blt .L_813E9248
.L_813E92D4:
/* 813E92D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E92D8 | 48 21 02 2D */	bl _restgpr_25
/* 813E92DC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E92E0 | 7C 08 03 A6 */	mtlr r0
/* 813E92E4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E92E8 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E9004

# .text:0x4730 | 0x813E92EC | size: 0x17C
.fn iplSDChannelTitle_813E92EC, global
/* 813E92EC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813E92F0 | 7C 08 02 A6 */	mflr r0
/* 813E92F4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813E92F8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E92FC | 48 21 01 C9 */	bl _savegpr_28
/* 813E9300 | 7C 7C 1B 78 */	mr r28, r3
/* 813E9304 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813E9308 | 7C BE 2B 78 */	mr r30, r5
/* 813E930C | 7C DD 33 78 */	mr r29, r6
/* 813E9310 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E9314 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813E9318 | 7D 89 03 A6 */	mtctr r12
/* 813E931C | 4E 80 04 21 */	bctrl
/* 813E9320 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E9324 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813E9328 | 7D 89 03 A6 */	mtctr r12
/* 813E932C | 4E 80 04 21 */	bctrl
/* 813E9330 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813E9334 | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813E9338 | 41 82 00 08 */	beq .L_813E9340
/* 813E933C | 48 00 01 14 */	b .L_813E9450
.L_813E9340:
/* 813E9340 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E9344 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813E9348 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E934C | 40 82 01 04 */	bne .L_813E9450
/* 813E9350 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813E9354 | 3C 80 00 10 */	lis r4, 0x10
/* 813E9358 | 7F A3 EB 78 */	mr r3, r29
/* 813E935C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813E9360 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813E9364 | 7D 89 03 A6 */	mtctr r12
/* 813E9368 | 4E 80 04 21 */	bctrl
/* 813E936C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9370 | 41 82 00 E0 */	beq .L_813E9450
/* 813E9374 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E9378 | 38 80 00 24 */	li r4, 0x24
/* 813E937C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E9380 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813E9384 | 48 02 1D B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813E9388 | 3F E0 81 65 */	lis r31, lbl_81655644@ha
/* 813E938C | 7C 7D 1B 78 */	mr r29, r3
/* 813E9390 | 3B FF 56 44 */	addi r31, r31, lbl_81655644@l
/* 813E9394 | 7F C3 F3 78 */	mr r3, r30
/* 813E9398 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813E939C | 48 21 90 E5 */	bl strcmp
/* 813E93A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E93A4 | 40 82 00 50 */	bne .L_813E93F4
/* 813E93A8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E93AC | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813E93B0 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 813E93B4 | 38 80 00 01 */	li r4, 0x1
/* 813E93B8 | 80 63 01 3C */	lwz r3, 0x13c(r3)
/* 813E93BC | 4B FF 47 F9 */	bl iplSDChannelSelect_813DDBB4
/* 813E93C0 | 7F A3 EB 78 */	mr r3, r29
/* 813E93C4 | 38 80 00 07 */	li r4, 0x7
/* 813E93C8 | 48 00 0E 8D */	bl iplSDChannelButton_813EA254
/* 813E93CC | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E93D0 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 813E93D4 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 813E93D8 | 4B FF F1 E9 */	bl iplSDChannelTitle_813E85C0
/* 813E93DC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E93E0 | 3C 80 81 65 */	lis r4, lbl_816553FE@ha
/* 813E93E4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E93E8 | 38 84 53 FE */	addi r4, r4, lbl_816553FE@l
/* 813E93EC | 4B F8 20 81 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E93F0 | 48 00 00 60 */	b .L_813E9450
.L_813E93F4:
/* 813E93F4 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 813E93F8 | 7F C3 F3 78 */	mr r3, r30
/* 813E93FC | 48 21 90 85 */	bl strcmp
/* 813E9400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E9404 | 40 82 00 4C */	bne .L_813E9450
/* 813E9408 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E940C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813E9410 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813E9414 | 38 80 00 00 */	li r4, 0x0
/* 813E9418 | 80 63 01 3C */	lwz r3, 0x13c(r3)
/* 813E941C | 4B FF 47 99 */	bl iplSDChannelSelect_813DDBB4
/* 813E9420 | 7F A3 EB 78 */	mr r3, r29
/* 813E9424 | 38 80 00 08 */	li r4, 0x8
/* 813E9428 | 48 00 0E 2D */	bl iplSDChannelButton_813EA254
/* 813E942C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813E9430 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813E9434 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813E9438 | 4B FF F1 89 */	bl iplSDChannelTitle_813E85C0
/* 813E943C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E9440 | 3C 80 81 65 */	lis r4, lbl_816553FE@ha
/* 813E9444 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E9448 | 38 84 53 FE */	addi r4, r4, lbl_816553FE@l
/* 813E944C | 4B F8 20 21 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813E9450:
/* 813E9450 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813E9454 | 48 21 00 BD */	bl _restgpr_28
/* 813E9458 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813E945C | 7C 08 03 A6 */	mtlr r0
/* 813E9460 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813E9464 | 4E 80 00 20 */	blr
.endfn iplSDChannelTitle_813E92EC

# .text:0x48AC | 0x813E9468 | size: 0xC
.fn iplSDChannelTitle_813E9468, global
/* 813E9468 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E946C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E9470 | 4B F8 27 A4 */	b resetAllSound__Q33ipl3snd6SystemFv
.endfn iplSDChannelTitle_813E9468

# .text:0x48B8 | 0x813E9474 | size: 0x8
.fn "@20@__dt__Q33ipl5scene15SDChannelSelectFv", global
/* 813E9474 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813E9478 | 4B FF B9 38 */	b __dt__Q33ipl5scene14SDChannelTitleFv
.endfn "@20@__dt__Q33ipl5scene15SDChannelSelectFv"

# 0x81610918..0x81610948 | size: 0x30
.rodata
.balign 8

# .rodata:0x0 | 0x81610918 | size: 0x10
.obj lbl_81610918, global
	.4byte 0x00000080
	.4byte 0x00000060
	.4byte 0x000000B0
	.4byte 0x00000060
.endobj lbl_81610918

# .rodata:0x10 | 0x81610928 | size: 0x20
.obj lbl_81610928, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x00000000
.endobj lbl_81610928

# 0x81654F98..0x81655638 | size: 0x6A0
.data
.balign 8

# .data:0x0 | 0x81654F98 | size: 0xC
.obj lbl_81654F98, global
	.string "G_FocusBtnA"
.endobj lbl_81654F98

# .data:0xC | 0x81654FA4 | size: 0xC
.obj lbl_81654FA4, global
	.string "G_FocusBtnB"
.endobj lbl_81654FA4

# .data:0x18 | 0x81654FB0 | size: 0xD
.obj lbl_81654FB0, global
	.string "G_SelectBtnA"
.endobj lbl_81654FB0

# .data:0x25 | 0x81654FBD | size: 0xD
.obj lbl_81654FBD, global
	.string "G_SelectBtnB"
.endobj lbl_81654FBD

# .data:0x32 | 0x81654FCA | size: 0xC
.obj lbl_81654FCA, global
	.string "G_OnOffBtnA"
.endobj lbl_81654FCA

# .data:0x3E | 0x81654FD6 | size: 0xC
.obj lbl_81654FD6, global
	.string "G_OnOffBtnB"
.endobj lbl_81654FD6

# .data:0x4A | 0x81654FE2 | size: 0x26
.obj lbl_81654FE2, global
	.4byte 0x475F4F75
	.4byte 0x7442746E
	.2byte 0x0000
	.4byte lbl_81654F98
	.4byte lbl_81654FA4
	.4byte lbl_81654FB0
	.4byte lbl_81654FBD
	.4byte lbl_81654FCA
	.4byte lbl_81654FD6
	.4byte lbl_81654FE2
.endobj lbl_81654FE2

# .data:0x70 | 0x81655008 | size: 0x2B
.obj lbl_81655008, global
	.string "mn_SdcardMenuBanner_bc_FocusBtnA_off.brlan"
.endobj lbl_81655008

# .data:0x9B | 0x81655033 | size: 0x29
.obj lbl_81655033, global
	.string "mn_SdcardMenuBanner_bc_FocusBtn_on.brlan"
.endobj lbl_81655033

# .data:0xC4 | 0x8165505C | size: 0x2A
.obj lbl_8165505C, global
	.string "mn_SdcardMenuBanner_bc_SelectBtn_Ac.brlan"
.endobj lbl_8165505C

# .data:0xEE | 0x81655086 | size: 0x24
.obj lbl_81655086, global
	.string "mn_SdcardMenuBanner_bc_OffBtn.brlan"
.endobj lbl_81655086

# .data:0x112 | 0x816550AA | size: 0x23
.obj lbl_816550AA, global
	.string "mn_SdcardMenuBanner_bc_OnBtn.brlan"
.endobj lbl_816550AA

# .data:0x135 | 0x816550CD | size: 0x3F
.obj lbl_816550CD, global
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x644D656E
	.4byte 0x7542616E
	.4byte 0x6E65725F
	.4byte 0x62635F4F
	.4byte 0x75744274
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.byte 0x00, 0x00, 0x00
	.4byte lbl_81655008
	.4byte lbl_81655033
	.4byte lbl_8165505C
	.4byte lbl_81655086
	.4byte lbl_816550AA
	.4byte lbl_816550CD
.endobj lbl_816550CD

# .data:0x174 | 0x8165510C | size: 0xD
.obj lbl_8165510C, global
	.string "banner.brlan"
.endobj lbl_8165510C

# .data:0x181 | 0x81655119 | size: 0x13
.obj lbl_81655119, global
	.string "banner_Start.brlan"
.endobj lbl_81655119

# .data:0x194 | 0x8165512C | size: 0x14
.obj lbl_8165512C, global
	.4byte 0x62616E6E
	.4byte 0x65725F4C
	.4byte 0x6F6F702E
	.4byte 0x62726C61
	.4byte 0x6E000000
.endobj lbl_8165512C

# .data:0x1A8 | 0x81655140 | size: 0x3C
.obj lbl_81655140, global
	.4byte lbl_8165510C
	.4byte lbl_81655119
	.4byte lbl_8165512C
	.4byte lbl_81696E48
	.4byte lbl_81696E4E
	.4byte lbl_81696E54
	.4byte lbl_81696E5A
	.4byte lbl_81696E60
	.4byte lbl_81696E66
	.4byte lbl_81696E6C
	.4byte lbl_81696E72
	.4byte lbl_81696E78
	.4byte lbl_81696E7E
	.4byte lbl_81696E84
	.4byte lbl_81696E8A
.endobj lbl_81655140

# .data:0x1E4 | 0x8165517C | size: 0x120
.obj lbl_8165517C, global
	.4byte 0x73644368
	.4byte 0x616E5474
	.4byte 0x6C2E6173
	.4byte 0x68006D6E
	.4byte 0x5F536463
	.4byte 0x6172644D
	.4byte 0x656E7542
	.4byte 0x616E6E65
	.4byte 0x725F6263
	.4byte 0x2E62726C
	.4byte 0x79740050
	.4byte 0x69637475
	.4byte 0x72655F30
	.4byte 0x34005069
	.4byte 0x63747572
	.4byte 0x655F3035
	.4byte 0x00506963
	.4byte 0x74757265
	.4byte 0x5F303600
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x644D656E
	.4byte 0x7542616E
	.4byte 0x6E65725F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x644D656E
	.4byte 0x7542616E
	.4byte 0x6E65725F
	.4byte 0x615F4368
	.4byte 0x5F46696E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F5364
	.4byte 0x63617264
	.4byte 0x4D656E75
	.4byte 0x42616E6E
	.4byte 0x65725F61
	.4byte 0x5F545F43
	.4byte 0x68616E67
	.4byte 0x652E6272
	.4byte 0x6C616E00
	.4byte 0x475F545F
	.4byte 0x4368616E
	.4byte 0x6765006D
	.4byte 0x6E5F5364
	.4byte 0x63617264
	.4byte 0x4D656E75
	.4byte 0x42616E6E
	.4byte 0x65725F61
	.4byte 0x5F426172
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F5364
	.4byte 0x63617264
	.4byte 0x4D656E75
	.4byte 0x42616E6E
	.4byte 0x65725F61
	.4byte 0x5F576169
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x545F436F
	.4byte 0x6D6D656E
	.4byte 0x745F3032
	.4byte 0x0043685F
	.4byte 0x50696374
	.4byte 0x75726500
	.4byte 0x43686D5F
	.4byte 0x50696374
	.4byte 0x75726500
.endobj lbl_8165517C

# .data:0x304 | 0x8165529C | size: 0x7C
.obj jumptable_8165529C, local
	.rel iplSDChannelTitle_813E58A0, .L_813E59D0
	.rel iplSDChannelTitle_813E58A0, .L_813E58D8
	.rel iplSDChannelTitle_813E58A0, .L_813E59D0
	.rel iplSDChannelTitle_813E58A0, .L_813E59D0
	.rel iplSDChannelTitle_813E58A0, .L_813E58E0
	.rel iplSDChannelTitle_813E58A0, .L_813E59D0
	.rel iplSDChannelTitle_813E58A0, .L_813E59D0
	.rel iplSDChannelTitle_813E58A0, .L_813E59D0
	.rel iplSDChannelTitle_813E58A0, .L_813E58F4
	.rel iplSDChannelTitle_813E58A0, .L_813E58FC
	.rel iplSDChannelTitle_813E58A0, .L_813E5904
	.rel iplSDChannelTitle_813E58A0, .L_813E590C
	.rel iplSDChannelTitle_813E58A0, .L_813E5914
	.rel iplSDChannelTitle_813E58A0, .L_813E591C
	.rel iplSDChannelTitle_813E58A0, .L_813E5924
	.rel iplSDChannelTitle_813E58A0, .L_813E592C
	.rel iplSDChannelTitle_813E58A0, .L_813E5934
	.rel iplSDChannelTitle_813E58A0, .L_813E593C
	.rel iplSDChannelTitle_813E58A0, .L_813E595C
	.rel iplSDChannelTitle_813E58A0, .L_813E5974
	.rel iplSDChannelTitle_813E58A0, .L_813E597C
	.rel iplSDChannelTitle_813E58A0, .L_813E598C
	.rel iplSDChannelTitle_813E58A0, .L_813E5994
	.rel iplSDChannelTitle_813E58A0, .L_813E5984
	.rel iplSDChannelTitle_813E58A0, .L_813E599C
	.rel iplSDChannelTitle_813E58A0, .L_813E59A4
	.rel iplSDChannelTitle_813E58A0, .L_813E59AC
	.rel iplSDChannelTitle_813E58A0, .L_813E59B4
	.rel iplSDChannelTitle_813E58A0, .L_813E59BC
	.rel iplSDChannelTitle_813E58A0, .L_813E59C4
	.rel iplSDChannelTitle_813E58A0, .L_813E59CC
.endobj jumptable_8165529C

# .data:0x380 | 0x81655318 | size: 0xB2
.obj lbl_81655318, global
	.4byte 0x736F756E
	.4byte 0x64207374
	.4byte 0x6F707065
	.4byte 0x640A004E
	.4byte 0x57433234
	.4byte 0x20536368
	.4byte 0x6564756C
	.4byte 0x65722073
	.4byte 0x746F7070
	.4byte 0x65642E0A
	.4byte 0x004E616E
	.4byte 0x64206675
	.4byte 0x6C6C2120
	.4byte 0x4F535265
	.4byte 0x626F6F74
	.4byte 0x53797374
	.4byte 0x656D2E0A
	.4byte 0x00776169
	.4byte 0x7420666F
	.4byte 0x72205750
	.4byte 0x41440A00
	.4byte 0x77616974
	.4byte 0x20666F72
	.4byte 0x20425332
	.4byte 0x0A004E61
	.4byte 0x6E645344
	.4byte 0x576F726B
	.4byte 0x65722074
	.4byte 0x656D696E
	.4byte 0x61746564
	.4byte 0x2E0A0056
	.4byte 0x4920426C
	.4byte 0x61636B0A
	.4byte 0x0073796E
	.4byte 0x63207372
	.4byte 0x616D0A00
	.4byte 0x43726561
	.4byte 0x74652070
	.4byte 0x6C617920
	.4byte 0x7265636F
	.4byte 0x64650A00
	.4byte 0x5749504C
	.4byte 0x5F42474D
	.4byte 0x5F4D454E
	.2byte 0x5500
.endobj lbl_81655318

# .data:0x432 | 0x816553CA | size: 0x34
.obj lbl_816553CA, global
	.4byte 0x62616E6E
	.4byte 0x65722E62
	.4byte 0x726C7974
	.4byte 0x0069636F
	.4byte 0x6E2E6272
	.4byte 0x6C797400
	.4byte 0x69636F6E
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x636F6E5F
	.4byte 0x57686F6C
	.4byte 0x652E6272
	.4byte 0x6C616E00
.endobj lbl_816553CA

# .data:0x466 | 0x816553FE | size: 0xB
.obj lbl_816553FE, global
	.string "WSD_SELECT"
.endobj lbl_816553FE

# .data:0x471 | 0x81655409 | size: 0x10
.obj lbl_81655409, global
	.string "WIPL_SE_COPYING"
.endobj lbl_81655409

# .data:0x481 | 0x81655419 | size: 0x14
.obj lbl_81655419, global
	.string "WIPL_SE_COPY_FINISH"
.endobj lbl_81655419

# .data:0x495 | 0x8165542D | size: 0x14
.obj lbl_8165542D, global
	.string "WIPL_SE_CH_UNSELECT"
.endobj lbl_8165542D

# .data:0x4A9 | 0x81655441 | size: 0x12
.obj lbl_81655441, global
	.string "WIPL_ME_SD_BANNER"
.endobj lbl_81655441

# .data:0x4BB | 0x81655453 | size: 0xF
.obj lbl_81655453, global
	.string "%s_Rso%d.brlan"
.endobj lbl_81655453

# .data:0x4CA | 0x81655462 | size: 0x62
.obj lbl_81655462, global
	.4byte 0x69706C53
	.4byte 0x44436861
	.4byte 0x6E6E656C
	.4byte 0x5469746C
	.4byte 0x652E6370
	.4byte 0x70005749
	.4byte 0x504C5F53
	.4byte 0x455F4254
	.4byte 0x5F505553
	.4byte 0x48005749
	.4byte 0x504C5F53
	.4byte 0x455F4752
	.4byte 0x41595F42
	.4byte 0x5554544F
	.4byte 0x4E005749
	.4byte 0x504C5F53
	.4byte 0x455F4445
	.4byte 0x43494445
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F42545F
	.4byte 0x54415247
	.4byte 0x45545449
	.4byte 0x4E470000
	.2byte 0x0000
.endobj lbl_81655462

# .data:0x52C | 0x816554C4 | size: 0x1C
.obj lbl_816554C4, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte iplSDChannelButton_813EA7B8
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte iplSDChannelTitle_813E92EC
.endobj lbl_816554C4

# .data:0x548 | 0x816554E0 | size: 0x18
.obj lbl_816554E0, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte iplSDChannelTitle_813E9004
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj lbl_816554E0

# .data:0x560 | 0x816554F8 | size: 0x140
.obj lbl_816554F8, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene14SDChannelTitleFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene15SDChannelSelectFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte iplSDChannelTitle_813E62F0
	.4byte iplSDChannelTitle_813E9468
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte iplSDChannelTitle_813E4E20
	.4byte iplSDChannelTitle_813E4E6C
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte iplSDChannelTitle_813E5F54
	.4byte iplSDChannelTitle_813E6174
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte iplSDChannelTitle_813E5A50
	.4byte iplSDChannelTitle_813E5694
	.4byte iplSDChannelTitle_813E57E4
	.4byte iplSDChannelTitle_813E58A0
	.4byte iplSDChannelTitle_813E5B14
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
.endobj lbl_816554F8

# 0x81694B60..0x81694B88 | size: 0x28
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694B60 | size: 0x8
.obj lbl_81694B60, global
	.string16 "???"
.endobj lbl_81694B60

# .sdata2:0x8 | 0x81694B68 | size: 0x4
.obj lbl_81694B68, global
	.float 0
.endobj lbl_81694B68

# .sdata2:0xC | 0x81694B6C | size: 0x4
.obj lbl_81694B6C, global
	.float 28
.endobj lbl_81694B6C

# .sdata2:0x10 | 0x81694B70 | size: 0x4
.obj lbl_81694B70, global
	.float 1
.endobj lbl_81694B70

# .sdata2:0x14 | 0x81694B74 | size: 0x1
.obj lbl_81694B74, global
	.byte 0xFF
.endobj lbl_81694B74

# .sdata2:0x15 | 0x81694B75 | size: 0x1
.obj lbl_81694B75, global
	.byte 0xFF
.endobj lbl_81694B75

# .sdata2:0x16 | 0x81694B76 | size: 0x1
.obj lbl_81694B76, global
	.byte 0xFF
.endobj lbl_81694B76

# .sdata2:0x17 | 0x81694B77 | size: 0x1
.obj lbl_81694B77, global
	.byte 0x00
.endobj lbl_81694B77

# .sdata2:0x18 | 0x81694B78 | size: 0x8
.obj lbl_81694B78, global
	.double 4503601774854144
.endobj lbl_81694B78

# .sdata2:0x20 | 0x81694B80 | size: 0x8
.obj lbl_81694B80, global
	.float 120
	.float 0
.endobj lbl_81694B80

# 0x81696E40..0x81696EF0 | size: 0xB0
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696E40 | size: 0x8
.obj lbl_81696E40, global
	.4byte lbl_81696E30
	.4byte lbl_81696E37
.endobj lbl_81696E40

# .sdata:0x8 | 0x81696E48 | size: 0x6
.obj lbl_81696E48, global
	.string "Fre_a"
.endobj lbl_81696E48

# .sdata:0xE | 0x81696E4E | size: 0x6
.obj lbl_81696E4E, global
	.string "Fre_d"
.endobj lbl_81696E4E

# .sdata:0x14 | 0x81696E54 | size: 0x6
.obj lbl_81696E54, global
	.string "Fre_i"
.endobj lbl_81696E54

# .sdata:0x1A | 0x81696E5A | size: 0x6
.obj lbl_81696E5A, global
	.string "Fre_l"
.endobj lbl_81696E5A

# .sdata:0x20 | 0x81696E60 | size: 0x6
.obj lbl_81696E60, global
	.string "Fre_e"
.endobj lbl_81696E60

# .sdata:0x26 | 0x81696E66 | size: 0x6
.obj lbl_81696E66, global
	.string "Fre_f"
.endobj lbl_81696E66

# .sdata:0x2C | 0x81696E6C | size: 0x6
.obj lbl_81696E6C, global
	.string "Fre_g"
.endobj lbl_81696E6C

# .sdata:0x32 | 0x81696E72 | size: 0x6
.obj lbl_81696E72, global
	.string "Fre_h"
.endobj lbl_81696E72

# .sdata:0x38 | 0x81696E78 | size: 0x6
.obj lbl_81696E78, global
	.string "Fre_b"
.endobj lbl_81696E78

# .sdata:0x3E | 0x81696E7E | size: 0x6
.obj lbl_81696E7E, global
	.string "Fre_c"
.endobj lbl_81696E7E

# .sdata:0x44 | 0x81696E84 | size: 0x6
.obj lbl_81696E84, global
	.string "Fre_j"
.endobj lbl_81696E84

# .sdata:0x4A | 0x81696E8A | size: 0x6
.obj lbl_81696E8A, global
	.string "Fre_k"
.endobj lbl_81696E8A

# .sdata:0x50 | 0x81696E90 | size: 0x7
.obj lbl_81696E90, global
	.string "T_BtnA"
.endobj lbl_81696E90

# .sdata:0x57 | 0x81696E97 | size: 0x9
.obj lbl_81696E97, global
	.4byte 0x545F4274
	.4byte 0x6E420000
	.byte 0x00
.endobj lbl_81696E97

# .sdata:0x60 | 0x81696EA0 | size: 0x8
.obj lbl_81696EA0, global
	.4byte lbl_81696E90
	.4byte lbl_81696E97
.endobj lbl_81696EA0

# .sdata:0x68 | 0x81696EA8 | size: 0x4
.obj lbl_81696EA8, global
	.4byte 0x00000000
.endobj lbl_81696EA8

# .sdata:0x6C | 0x81696EAC | size: 0x4
.obj lbl_81696EAC, global
	.4byte 0x437F0000
.endobj lbl_81696EAC

# .sdata:0x70 | 0x81696EB0 | size: 0x4
.obj lbl_81696EB0, global
	.string "arc"
.endobj lbl_81696EB0

# .sdata:0x74 | 0x81696EB4 | size: 0x7
.obj lbl_81696EB4, global
	.string "G_Prog"
.endobj lbl_81696EB4

# .sdata:0x7B | 0x81696EBB | size: 0x7
.obj lbl_81696EBB, global
	.string "G_Wait"
.endobj lbl_81696EBB

# .sdata:0x82 | 0x81696EC2 | size: 0x8
.obj lbl_81696EC2, global
	.string "Launch\n"
.endobj lbl_81696EC2

# .sdata:0x8A | 0x81696ECA | size: 0xA
.obj lbl_81696ECA, global
	.4byte 0x545F7469
	.4byte 0x746C6500
	.2byte 0x0000
.endobj lbl_81696ECA

# .sdata:0x94 | 0x81696ED4 | size: 0x4
.obj lbl_81696ED4, global
	.4byte 0x00000000
.endobj lbl_81696ED4

# .sdata:0x98 | 0x81696ED8 | size: 0x4
.obj lbl_81696ED8, global
	.4byte 0x437F0000
.endobj lbl_81696ED8

# .sdata:0x9C | 0x81696EDC | size: 0x7
.obj lbl_81696EDC, global
	.string "banner"
.endobj lbl_81696EDC

# .sdata:0xA3 | 0x81696EE3 | size: 0x6
.obj lbl_81696EE3, global
	.string "Rso%d"
.endobj lbl_81696EE3

# .sdata:0xA9 | 0x81696EE9 | size: 0x7
.obj lbl_81696EE9, global
	.4byte 0x45530000
	.byte 0x00, 0x00, 0x00
.endobj lbl_81696EE9
