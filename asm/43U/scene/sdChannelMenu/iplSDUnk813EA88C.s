.include "macros.inc"
.file "iplSDUnk813EA88C.cpp"

# 0x813EA88C..0x813EA9BC | size: 0x130
.text
.balign 4

# .text:0x0 | 0x813EA88C | size: 0xD0
# ipl::scene::SDChannelUnk0::draw()
.fn draw__Q33ipl5scene13SDChannelUnk0Fv, global
/* 813EA88C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EA890 | 7C 08 02 A6 */	mflr r0
/* 813EA894 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EA898 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA89C | 48 20 EC 21 */	bl _savegpr_26
/* 813EA8A0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813EA8A4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813EA8A8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813EA8AC | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813EA8B0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813EA8B4 | 40 82 00 90 */	bne .L_813EA944
/* 813EA8B8 | 38 80 00 24 */	li r4, 0x24
/* 813EA8BC | 48 02 08 7D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813EA8C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA8C4 | 7C 7B 1B 78 */	mr r27, r3
/* 813EA8C8 | 41 82 00 7C */	beq .L_813EA944
/* 813EA8CC | 38 60 00 00 */	li r3, 0x0
/* 813EA8D0 | 4B F7 81 FD */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813EA8D4 | 3B 40 00 00 */	li r26, 0x0
/* 813EA8D8 | 3B E0 00 00 */	li r31, 0x0
/* 813EA8DC | 3B CD 8E D0 */	li r30, lbl_81696F10@sda21
.L_813EA8E0:
/* 813EA8E0 | 83 BB 00 58 */	lwz r29, 0x58(r27)
/* 813EA8E4 | 38 A0 00 01 */	li r5, 0x1
/* 813EA8E8 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813EA8EC | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 813EA8F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EA8F4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EA8F8 | 7D 89 03 A6 */	mtctr r12
/* 813EA8FC | 4E 80 04 21 */	bctrl
/* 813EA900 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813EA904 | 7C 7C 1B 78 */	mr r28, r3
/* 813EA908 | 7F 84 E3 78 */	mr r4, r28
/* 813EA90C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813EA910 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813EA914 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813EA918 | 7F A3 EB 78 */	mr r3, r29
/* 813EA91C | 4B F7 FF 71 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 813EA920 | 88 1C 00 CF */	lbz r0, 0xcf(r28)
/* 813EA924 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813EA928 | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 813EA92C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813EA930 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813EA934 | 98 1C 00 CF */	stb r0, 0xcf(r28)
/* 813EA938 | 41 80 FF A8 */	blt .L_813EA8E0
/* 813EA93C | 7F 63 DB 78 */	mr r3, r27
/* 813EA940 | 4B FF F2 1D */	bl iplSDChannelButton_813E9B5C
.L_813EA944:
/* 813EA944 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EA948 | 48 20 EB C1 */	bl _restgpr_26
/* 813EA94C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EA950 | 7C 08 03 A6 */	mtlr r0
/* 813EA954 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EA958 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene13SDChannelUnk0Fv

# .text:0xD0 | 0x813EA95C | size: 0x58
# ipl::scene::SDChannelUnk0::~SDChannelUnk0()
.fn __dt__Q33ipl5scene13SDChannelUnk0Fv, global
/* 813EA95C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EA960 | 7C 08 02 A6 */	mflr r0
/* 813EA964 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA968 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EA96C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EA970 | 7C 9F 23 78 */	mr r31, r4
/* 813EA974 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813EA978 | 7C 7E 1B 78 */	mr r30, r3
/* 813EA97C | 41 82 00 1C */	beq .L_813EA998
/* 813EA980 | 38 80 00 00 */	li r4, 0x0
/* 813EA984 | 48 01 F2 E1 */	bl __dt__Q33ipl5scene4BaseFv
/* 813EA988 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813EA98C | 40 81 00 0C */	ble .L_813EA998
/* 813EA990 | 7F C3 F3 78 */	mr r3, r30
/* 813EA994 | 48 20 D7 51 */	bl __dl__FPv
.L_813EA998:
/* 813EA998 | 7F C3 F3 78 */	mr r3, r30
/* 813EA99C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EA9A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813EA9A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EA9A8 | 7C 08 03 A6 */	mtlr r0
/* 813EA9AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EA9B0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene13SDChannelUnk0Fv

# .text:0x128 | 0x813EA9B4 | size: 0x8
.fn "@20@__dt__Q33ipl5scene13SDChannelUnk0Fv", global
/* 813EA9B4 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813EA9B8 | 4B FF FF A4 */	b __dt__Q33ipl5scene13SDChannelUnk0Fv
.endfn "@20@__dt__Q33ipl5scene13SDChannelUnk0Fv"

# 0x81655A70..0x81655AC0 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x81655A70 | size: 0x50
.obj lbl_81655A70, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene13SDChannelUnk0Fv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene13SDChannelUnk0Fv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene4BaseFv
	.4byte create__Q33ipl5scene4BaseFv
	.4byte calc__Q33ipl5scene4BaseFv
	.4byte draw__Q33ipl5scene13SDChannelUnk0Fv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte 0x00000000
.endobj lbl_81655A70

# 0x81696EF0..0x81696F30 | size: 0x40
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696EF0 | size: 0x7
.obj lbl_81696EF0, global
	.string "B_Help"
.endobj lbl_81696EF0

# .sdata:0x7 | 0x81696EF7 | size: 0x7
.obj lbl_81696EF7, global
	.string "B_ArwR"
.endobj lbl_81696EF7

# .sdata:0xE | 0x81696EFE | size: 0x7
.obj lbl_81696EFE, global
	.string "B_ArwL"
.endobj lbl_81696EFE

# .sdata:0x15 | 0x81696F05 | size: 0x5
.obj lbl_81696F05, global
	.string "ArwR"
.endobj lbl_81696F05

# .sdata:0x1A | 0x81696F0A | size: 0x6
.obj lbl_81696F0A, global
	.4byte 0x4172774C
	.2byte 0x0000
.endobj lbl_81696F0A

# .sdata:0x20 | 0x81696F10 | size: 0x8
.obj lbl_81696F10, global
	.4byte lbl_81696F05
	.4byte lbl_81696F0A
.endobj lbl_81696F10

# .sdata:0x28 | 0x81696F18 | size: 0x4
.obj lbl_81696F18, global
	.string "arc"
.endobj lbl_81696F18

# .sdata:0x2C | 0x81696F1C | size: 0x5
.obj lbl_81696F1C, global
	.string "G_BL"
.endobj lbl_81696F1C

# .sdata:0x31 | 0x81696F21 | size: 0x5
.obj lbl_81696F21, global
	.string "G_BR"
.endobj lbl_81696F21

# .sdata:0x36 | 0x81696F26 | size: 0xA
.obj lbl_81696F26, global
	.4byte 0x545F7061
	.4byte 0x67650000
	.2byte 0x0000
.endobj lbl_81696F26
