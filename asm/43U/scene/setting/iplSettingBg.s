.include "macros.inc"
.file "iplSettingBg.cpp"

# 0x81406CC0..0x81406ED0 | size: 0x210
.text
.balign 4

# .text:0x0 | 0x81406CC0 | size: 0x68
# ipl::scene::SettingBg::SettingBg(EGG::Heap*, int)
.fn __ct__Q33ipl5scene9SettingBgFPQ23EGG4Heapi, global
/* 81406CC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81406CC4 | 7C 08 02 A6 */	mflr r0
/* 81406CC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81406CCC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81406CD0 | 7C BF 2B 78 */	mr r31, r5
/* 81406CD4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81406CD8 | 7C 7E 1B 78 */	mr r30, r3
/* 81406CDC | 48 00 2F 11 */	bl fn_81409BEC
/* 81406CE0 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene9SettingBg@ha
/* 81406CE4 | 38 80 00 00 */	li r4, 0x0
/* 81406CE8 | 38 63 7E F0 */	addi r3, r3, __vt__Q33ipl5scene9SettingBg@l
/* 81406CEC | 38 00 00 03 */	li r0, 0x3
/* 81406CF0 | 38 A3 00 1C */	addi r5, r3, 0x1c
/* 81406CF4 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 81406CF8 | 7F C3 F3 78 */	mr r3, r30
/* 81406CFC | 90 BE 00 14 */	stw r5, 0x14(r30)
/* 81406D00 | 93 FE 00 54 */	stw r31, 0x54(r30)
/* 81406D04 | 90 9E 00 58 */	stw r4, 0x58(r30)
/* 81406D08 | 90 9E 00 5C */	stw r4, 0x5c(r30)
/* 81406D0C | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 81406D10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81406D14 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81406D18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81406D1C | 7C 08 03 A6 */	mtlr r0
/* 81406D20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81406D24 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene9SettingBgFPQ23EGG4Heapi

# .text:0x68 | 0x81406D28 | size: 0x4C
# ipl::scene::SettingBg::prepare()
.fn prepare__Q33ipl5scene9SettingBgFv, global
/* 81406D28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81406D2C | 7C 08 02 A6 */	mflr r0
/* 81406D30 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81406D34 | 3C A0 81 65 */	lis r5, lbl_81657ED0@ha
/* 81406D38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81406D3C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81406D40 | 38 A5 7E D0 */	addi r5, r5, lbl_81657ED0@l
/* 81406D44 | 38 C0 00 00 */	li r6, 0x0
/* 81406D48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81406D4C | 7C 7F 1B 78 */	mr r31, r3
/* 81406D50 | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 81406D54 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 81406D58 | 4B F3 6B 5D */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 81406D5C | 90 7F 00 5C */	stw r3, 0x5c(r31)
/* 81406D60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81406D64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81406D68 | 7C 08 03 A6 */	mtlr r0
/* 81406D6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81406D70 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene9SettingBgFv

# .text:0xB4 | 0x81406D74 | size: 0xA4
# ipl::scene::SettingBg::create()
.fn create__Q33ipl5scene9SettingBgFv, global
/* 81406D74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81406D78 | 7C 08 02 A6 */	mflr r0
/* 81406D7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81406D80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81406D84 | 7C 7F 1B 78 */	mr r31, r3
/* 81406D88 | 38 60 05 80 */	li r3, 0x580
/* 81406D8C | 48 1F 13 11 */	bl __nw__FUl
/* 81406D90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81406D94 | 41 82 00 1C */	beq .L_81406DB0
/* 81406D98 | 3C E0 81 65 */	lis r7, lbl_81657EDC@ha
/* 81406D9C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 81406DA0 | 80 BF 00 5C */	lwz r5, 0x5c(r31)
/* 81406DA4 | 38 E7 7E DC */	addi r7, r7, lbl_81657EDC@l
/* 81406DA8 | 38 CD 92 10 */	li r6, lbl_81697250@sda21
/* 81406DAC | 4B F6 32 79 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81406DB0:
/* 81406DB0 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 81406DB4 | 4B F6 38 81 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81406DB8 | 80 FF 00 54 */	lwz r7, 0x54(r31)
/* 81406DBC | 7F E3 FB 78 */	mr r3, r31
/* 81406DC0 | 7F E5 FB 78 */	mr r5, r31
/* 81406DC4 | 38 80 00 16 */	li r4, 0x16
/* 81406DC8 | 38 C0 00 00 */	li r6, 0x0
/* 81406DCC | 48 00 30 BD */	bl fn_81409E88
/* 81406DD0 | 80 FF 00 54 */	lwz r7, 0x54(r31)
/* 81406DD4 | 7F E3 FB 78 */	mr r3, r31
/* 81406DD8 | 7F E5 FB 78 */	mr r5, r31
/* 81406DDC | 38 80 00 13 */	li r4, 0x13
/* 81406DE0 | 38 C0 00 00 */	li r6, 0x0
/* 81406DE4 | 48 00 30 A5 */	bl fn_81409E88
/* 81406DE8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81406DEC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81406DF0 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81406DF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81406DF8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81406DFC | 7D 89 03 A6 */	mtctr r12
/* 81406E00 | 4E 80 04 21 */	bctrl
/* 81406E04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81406E08 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81406E0C | 7C 08 03 A6 */	mtlr r0
/* 81406E10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81406E14 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene9SettingBgFv

# .text:0x158 | 0x81406E18 | size: 0x8
# ipl::scene::SettingBg::calc()
.fn calc__Q33ipl5scene9SettingBgFv, global
/* 81406E18 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 81406E1C | 4B F6 38 E8 */	b calc__Q33ipl6layout6ObjectFv
.endfn calc__Q33ipl5scene9SettingBgFv

# .text:0x160 | 0x81406E20 | size: 0x50
# ipl::scene::SettingBg::draw()
.fn draw__Q33ipl5scene9SettingBgFv, global
/* 81406E20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81406E24 | 7C 08 02 A6 */	mflr r0
/* 81406E28 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81406E2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81406E30 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81406E34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81406E38 | 7C 7F 1B 78 */	mr r31, r3
/* 81406E3C | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 81406E40 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 81406E44 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81406E48 | 40 82 00 14 */	bne .L_81406E5C
/* 81406E4C | 38 60 00 00 */	li r3, 0x0
/* 81406E50 | 4B F5 BC 1D */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 81406E54 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 81406E58 | 4B F6 39 45 */	bl draw__Q33ipl6layout6ObjectFv
.L_81406E5C:
/* 81406E5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81406E60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81406E64 | 7C 08 03 A6 */	mtlr r0
/* 81406E68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81406E6C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene9SettingBgFv

# .text:0x1B0 | 0x81406E70 | size: 0x58
# ipl::scene::SettingBg::~SettingBg()
.fn __dt__Q33ipl5scene9SettingBgFv, global
/* 81406E70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81406E74 | 7C 08 02 A6 */	mflr r0
/* 81406E78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81406E7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81406E80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81406E84 | 7C 9F 23 78 */	mr r31, r4
/* 81406E88 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81406E8C | 7C 7E 1B 78 */	mr r30, r3
/* 81406E90 | 41 82 00 1C */	beq .L_81406EAC
/* 81406E94 | 38 80 00 00 */	li r4, 0x0
/* 81406E98 | 48 00 2D CD */	bl fn_81409C64
/* 81406E9C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81406EA0 | 40 81 00 0C */	ble .L_81406EAC
/* 81406EA4 | 7F C3 F3 78 */	mr r3, r30
/* 81406EA8 | 48 1F 12 3D */	bl __dl__FPv
.L_81406EAC:
/* 81406EAC | 7F C3 F3 78 */	mr r3, r30
/* 81406EB0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81406EB4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81406EB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81406EBC | 7C 08 03 A6 */	mtlr r0
/* 81406EC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81406EC4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene9SettingBgFv

# .text:0x208 | 0x81406EC8 | size: 0x8
.fn "@20@__dt__Q33ipl5scene9SettingBgFv", global
/* 81406EC8 | 38 63 FF EC */	subi r3, r3, 0x14
/* 81406ECC | 4B FF FF A4 */	b __dt__Q33ipl5scene9SettingBgFv
.endfn "@20@__dt__Q33ipl5scene9SettingBgFv"

# 0x81657ED0..0x81657F40 | size: 0x70
.data
.balign 8

# .data:0x0 | 0x81657ED0 | size: 0xC
.obj lbl_81657ED0, global
	.string "setupBg.ash"
.endobj lbl_81657ED0

# .data:0xC | 0x81657EDC | size: 0x14
.obj lbl_81657EDC, global
	.4byte 0x69745F42
	.4byte 0x67536574
	.4byte 0x55705F61
	.4byte 0x2E62726C
	.4byte 0x79740000
.endobj lbl_81657EDC

# .data:0x20 | 0x81657EF0 | size: 0x50
# ipl::scene::SettingBg::__vtable
.obj __vt__Q33ipl5scene9SettingBg, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene9SettingBgFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene9SettingBgFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene9SettingBgFv
	.4byte create__Q33ipl5scene9SettingBgFv
	.4byte calc__Q33ipl5scene9SettingBgFv
	.4byte draw__Q33ipl5scene9SettingBgFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene9SettingBg

# 0x81697250..0x81697258 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697250 | size: 0x8
.obj lbl_81697250, global
	.4byte 0x61726300
	.4byte 0x00000000
.endobj lbl_81697250
