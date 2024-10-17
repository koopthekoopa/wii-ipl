.include "macros.inc"
.file "iplBoard.cpp"

# 0x8138EDE8..0x81393D1C | size: 0x4F34
.text
.balign 4

# .text:0x0 | 0x8138EDE8 | size: 0x108
# ipl::scene::Board::Board(EGG::Heap*)
.fn __ct__Q33ipl5scene5BoardFPQ23EGG4Heap, global
/* 8138EDE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138EDEC | 7C 08 02 A6 */	mflr r0
/* 8138EDF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138EDF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138EDF8 | 48 26 A6 CD */	bl _savegpr_28
/* 8138EDFC | 7C 7C 1B 78 */	mr r28, r3
/* 8138EE00 | 7C BD 2B 78 */	mr r29, r5
/* 8138EE04 | 48 07 AD E9 */	bl __ct__Q33ipl5scene4BaseFPQ23EGG4Heap
/* 8138EE08 | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene5Board@ha
/* 8138EE0C | 3B C0 00 00 */	li r30, 0x0
/* 8138EE10 | 38 A5 B1 64 */	addi r5, r5, __vt__Q33ipl5scene5Board@l
/* 8138EE14 | 93 DC 00 5C */	stw r30, 0x5c(r28)
/* 8138EE18 | 38 85 00 1C */	addi r4, r5, 0x1c
/* 8138EE1C | 38 7C 00 68 */	addi r3, r28, 0x68
/* 8138EE20 | 38 05 00 4C */	addi r0, r5, 0x4c
/* 8138EE24 | 90 BC 00 00 */	stw r5, 0x0(r28)
/* 8138EE28 | 90 9C 00 14 */	stw r4, 0x14(r28)
/* 8138EE2C | 90 1C 00 54 */	stw r0, 0x54(r28)
/* 8138EE30 | 93 DC 00 60 */	stw r30, 0x60(r28)
/* 8138EE34 | 48 00 4D DD */	bl __ct__Q43ipl5scene5Board7ObjListFv
/* 8138EE38 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138EE3C | 9B DC 0D 00 */	stb r30, 0xd00(r28)
/* 8138EE40 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138EE44 | 38 7C 0D 08 */	addi r3, r28, 0xd08
/* 8138EE48 | 9B DC 0D 01 */	stb r30, 0xd01(r28)
/* 8138EE4C | 38 9F 00 3C */	addi r4, r31, 0x3c
/* 8138EE50 | 9B DC 0D 02 */	stb r30, 0xd02(r28)
/* 8138EE54 | 9B DC 0D 03 */	stb r30, 0xd03(r28)
/* 8138EE58 | 9B DC 0D 04 */	stb r30, 0xd04(r28)
/* 8138EE5C | 48 00 01 3D */	bl __ct__Q33ipl7utility4DateFRC14OSCalendarTime
/* 8138EE60 | 38 7C 0D 14 */	addi r3, r28, 0xd14
/* 8138EE64 | 38 9F 00 3C */	addi r4, r31, 0x3c
/* 8138EE68 | 48 00 01 31 */	bl __ct__Q33ipl7utility4DateFRC14OSCalendarTime
/* 8138EE6C | 38 00 FF FF */	li r0, -0x1
/* 8138EE70 | 93 DC 0D 20 */	stw r30, 0xd20(r28)
/* 8138EE74 | 38 7C 0F AC */	addi r3, r28, 0xfac
/* 8138EE78 | 93 DC 0D 24 */	stw r30, 0xd24(r28)
/* 8138EE7C | 93 DC 0D 28 */	stw r30, 0xd28(r28)
/* 8138EE80 | 9B DC 0F 98 */	stb r30, 0xf98(r28)
/* 8138EE84 | 9B DC 0F 99 */	stb r30, 0xf99(r28)
/* 8138EE88 | 9B DC 0F 9A */	stb r30, 0xf9a(r28)
/* 8138EE8C | 9B DC 0F 9B */	stb r30, 0xf9b(r28)
/* 8138EE90 | 93 DC 0F A0 */	stw r30, 0xfa0(r28)
/* 8138EE94 | 90 1C 0F A4 */	stw r0, 0xfa4(r28)
/* 8138EE98 | 90 1C 0F A8 */	stw r0, 0xfa8(r28)
/* 8138EE9C | 48 00 72 61 */	bl __ct__Q33ipl5scene7BoardSDFv
/* 8138EEA0 | 38 80 00 03 */	li r4, 0x3
/* 8138EEA4 | 38 00 00 04 */	li r0, 0x4
/* 8138EEA8 | 7F C3 F3 78 */	mr r3, r30
/* 8138EEAC | 9B DC 0F B4 */	stb r30, 0xfb4(r28)
/* 8138EEB0 | 93 BC 0F B8 */	stw r29, 0xfb8(r28)
/* 8138EEB4 | 90 9C 00 28 */	stw r4, 0x28(r28)
/* 8138EEB8 | 7C 09 03 A6 */	mtctr r0
.L_8138EEBC:
/* 8138EEBC | 7C 9C 1A 14 */	add r4, r28, r3
/* 8138EEC0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8138EEC4 | 93 C4 0D 30 */	stw r30, 0xd30(r4)
/* 8138EEC8 | 42 00 FF F4 */	bdnz .L_8138EEBC
/* 8138EECC | 7F 83 E3 78 */	mr r3, r28
/* 8138EED0 | 48 00 3D 6D */	bl init_search_condition__Q33ipl5scene5BoardFv
/* 8138EED4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138EED8 | 7F 83 E3 78 */	mr r3, r28
/* 8138EEDC | 48 26 A6 35 */	bl _restgpr_28
/* 8138EEE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138EEE4 | 7C 08 03 A6 */	mtlr r0
/* 8138EEE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138EEEC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene5BoardFPQ23EGG4Heap

# .text:0x108 | 0x8138EEF0 | size: 0x68
# ipl::scene::Board::ObjList::~ObjList()
.fn __dt__Q43ipl5scene5Board7ObjListFv, global
/* 8138EEF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EEF4 | 7C 08 02 A6 */	mflr r0
/* 8138EEF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138EEFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EF00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138EF04 | 7C 9F 23 78 */	mr r31, r4
/* 8138EF08 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138EF0C | 7C 7E 1B 78 */	mr r30, r3
/* 8138EF10 | 41 82 00 2C */	beq .L_8138EF3C
/* 8138EF14 | 3C 80 81 39 */	lis r4, __dt__Q33ipl5scene11BoardObjectFv@ha
/* 8138EF18 | 38 A0 01 40 */	li r5, 0x140
/* 8138EF1C | 38 84 EF 58 */	addi r4, r4, __dt__Q33ipl5scene11BoardObjectFv@l
/* 8138EF20 | 38 C0 00 0A */	li r6, 0xa
/* 8138EF24 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8138EF28 | 48 26 A3 D1 */	bl __destroy_arr
/* 8138EF2C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8138EF30 | 40 81 00 0C */	ble .L_8138EF3C
/* 8138EF34 | 7F C3 F3 78 */	mr r3, r30
/* 8138EF38 | 48 26 91 AD */	bl __dl__FPv
.L_8138EF3C:
/* 8138EF3C | 7F C3 F3 78 */	mr r3, r30
/* 8138EF40 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138EF44 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138EF48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EF4C | 7C 08 03 A6 */	mtlr r0
/* 8138EF50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138EF54 | 4E 80 00 20 */	blr
.endfn __dt__Q43ipl5scene5Board7ObjListFv

# .text:0x170 | 0x8138EF58 | size: 0x40
# ipl::scene::BoardObject::~BoardObject()
.fn __dt__Q33ipl5scene11BoardObjectFv, global
/* 8138EF58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EF5C | 7C 08 02 A6 */	mflr r0
/* 8138EF60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138EF64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EF68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138EF6C | 7C 7F 1B 78 */	mr r31, r3
/* 8138EF70 | 41 82 00 10 */	beq .L_8138EF80
/* 8138EF74 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8138EF78 | 40 81 00 08 */	ble .L_8138EF80
/* 8138EF7C | 48 26 91 69 */	bl __dl__FPv
.L_8138EF80:
/* 8138EF80 | 7F E3 FB 78 */	mr r3, r31
/* 8138EF84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138EF88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EF8C | 7C 08 03 A6 */	mtlr r0
/* 8138EF90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138EF94 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene11BoardObjectFv

# .text:0x1B0 | 0x8138EF98 | size: 0x20
# ipl::utility::Date::Date(const OSCalendarTime&)
.fn __ct__Q33ipl7utility4DateFRC14OSCalendarTime, weak
/* 8138EF98 | 80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8138EF9C | 80 C4 00 14 */	lwz r6, 0x14(r4)
/* 8138EFA0 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 8138EFA4 | 38 85 00 01 */	addi r4, r5, 0x1
/* 8138EFA8 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 8138EFAC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8138EFB0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8138EFB4 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility4DateFRC14OSCalendarTime

# .text:0x1D0 | 0x8138EFB8 | size: 0x74
# ipl::scene::Board::prepare()
.fn prepare__Q33ipl5scene5BoardFv, global
/* 8138EFB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EFBC | 7C 08 02 A6 */	mflr r0
/* 8138EFC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EFC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138EFC8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138EFCC | 7C 7E 1B 78 */	mr r30, r3
/* 8138EFD0 | 4B FA 4F 11 */	bl checkNandOverFlowFlagAsync__Q23ipl6SystemFv
/* 8138EFD4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138EFD8 | 3C A0 81 65 */	lis r5, lbl_8164AF2C@ha
/* 8138EFDC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138EFE0 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8138EFE4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8138EFE8 | 38 A5 AF 2C */	addi r5, r5, lbl_8164AF2C@l
/* 8138EFEC | 38 C0 00 00 */	li r6, 0x0
/* 8138EFF0 | 4B FA E8 C5 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 8138EFF4 | 90 7E 0D 20 */	stw r3, 0xd20(r30)
/* 8138EFF8 | 3C A0 81 65 */	lis r5, lbl_8164AF36@ha
/* 8138EFFC | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8138F000 | 38 A5 AF 36 */	addi r5, r5, lbl_8164AF36@l
/* 8138F004 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8138F008 | 38 C0 00 00 */	li r6, 0x0
/* 8138F00C | 4B FA E8 A9 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 8138F010 | 90 7E 0D 2C */	stw r3, 0xd2c(r30)
/* 8138F014 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138F018 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138F01C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138F020 | 7C 08 03 A6 */	mtlr r0
/* 8138F024 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138F028 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene5BoardFv

# .text:0x244 | 0x8138F02C | size: 0x13C
# ipl::scene::Board::create()
.fn create__Q33ipl5scene5BoardFv, global
/* 8138F02C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138F030 | 7C 08 02 A6 */	mflr r0
/* 8138F034 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138F038 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138F03C | 3F E0 81 65 */	lis r31, lbl_8164AF00@ha
/* 8138F040 | 3B FF AF 00 */	addi r31, r31, lbl_8164AF00@l
/* 8138F044 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138F048 | 7C 7E 1B 78 */	mr r30, r3
/* 8138F04C | 38 60 05 80 */	li r3, 0x580
/* 8138F050 | 48 26 90 4D */	bl __nw__FUl
/* 8138F054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F058 | 41 82 00 18 */	beq .L_8138F070
/* 8138F05C | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8138F060 | 38 FF 00 42 */	addi r7, r31, 0x42
/* 8138F064 | 80 BE 0D 20 */	lwz r5, 0xd20(r30)
/* 8138F068 | 38 CD 85 C0 */	li r6, lbl_81696600@sda21
/* 8138F06C | 4B FD AF B9 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8138F070:
/* 8138F070 | 90 7E 0D 24 */	stw r3, 0xd24(r30)
/* 8138F074 | 38 9F 00 54 */	addi r4, r31, 0x54
/* 8138F078 | 38 A0 00 01 */	li r5, 0x1
/* 8138F07C | 4B FD B2 F1 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 8138F080 | 80 7E 0D 24 */	lwz r3, 0xd24(r30)
/* 8138F084 | 4B FD B5 B1 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8138F088 | 38 60 05 80 */	li r3, 0x580
/* 8138F08C | 48 26 90 11 */	bl __nw__FUl
/* 8138F090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F094 | 41 82 00 18 */	beq .L_8138F0AC
/* 8138F098 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8138F09C | 38 FF 00 66 */	addi r7, r31, 0x66
/* 8138F0A0 | 80 BE 0D 20 */	lwz r5, 0xd20(r30)
/* 8138F0A4 | 38 CD 85 C0 */	li r6, lbl_81696600@sda21
/* 8138F0A8 | 4B FD AF 7D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8138F0AC:
/* 8138F0AC | 90 7E 0D 28 */	stw r3, 0xd28(r30)
/* 8138F0B0 | 38 9F 00 79 */	addi r4, r31, 0x79
/* 8138F0B4 | 38 A0 00 01 */	li r5, 0x1
/* 8138F0B8 | 4B FD B2 B5 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 8138F0BC | 80 7E 0D 28 */	lwz r3, 0xd28(r30)
/* 8138F0C0 | 38 9F 00 93 */	addi r4, r31, 0x93
/* 8138F0C4 | 38 A0 00 00 */	li r5, 0x0
/* 8138F0C8 | 4B FD B2 A5 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 8138F0CC | 80 7E 0D 28 */	lwz r3, 0xd28(r30)
/* 8138F0D0 | 4B FD B5 65 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8138F0D4 | 7F C3 F3 78 */	mr r3, r30
/* 8138F0D8 | 48 00 2E AD */	bl set_text_date__Q33ipl5scene5BoardFv
/* 8138F0DC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F0E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F0E4 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F0E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F0EC | 41 82 00 0C */	beq .L_8138F0F8
/* 8138F0F0 | 38 00 00 00 */	li r0, 0x0
/* 8138F0F4 | 48 00 00 08 */	b .L_8138F0FC
.L_8138F0F8:
/* 8138F0F8 | 80 03 00 7C */	lwz r0, 0x7c(r3)
.L_8138F0FC:
/* 8138F0FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F100 | 41 82 00 50 */	beq .L_8138F150
/* 8138F104 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F108 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F10C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F110 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F114 | 41 82 00 0C */	beq .L_8138F120
/* 8138F118 | 38 60 00 00 */	li r3, 0x0
/* 8138F11C | 48 00 00 08 */	b .L_8138F124
.L_8138F120:
/* 8138F120 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8138F124:
/* 8138F124 | 4B FB 10 69 */	bl startSDProc__Q33ipl3cdb7ManagerFv
/* 8138F128 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F12C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F130 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F134 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F138 | 41 82 00 0C */	beq .L_8138F144
/* 8138F13C | 38 60 00 00 */	li r3, 0x0
/* 8138F140 | 48 00 00 08 */	b .L_8138F148
.L_8138F144:
/* 8138F144 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8138F148:
/* 8138F148 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8138F14C | 4B FC FF 91 */	bl mount_sd_async__Q23ipl10SDVFWorkerFv
.L_8138F150:
/* 8138F150 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138F154 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138F158 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138F15C | 7C 08 03 A6 */	mtlr r0
/* 8138F160 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138F164 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene5BoardFv

# .text:0x380 | 0x8138F168 | size: 0x3AC
# ipl::scene::Board::calc()
.fn calc__Q33ipl5scene5BoardFv, global
/* 8138F168 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138F16C | 7C 08 02 A6 */	mflr r0
/* 8138F170 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138F174 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138F178 | 48 26 A3 51 */	bl _savegpr_29
/* 8138F17C | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 8138F180 | 7C 7D 1B 78 */	mr r29, r3
/* 8138F184 | 28 00 00 10 */	cmplwi r0, 0x10
/* 8138F188 | 41 81 01 FC */	bgt .L_8138F384
/* 8138F18C | 3C 80 81 65 */	lis r4, jumptable_8164AFBC@ha
/* 8138F190 | 54 00 10 3A */	slwi r0, r0, 2
/* 8138F194 | 38 84 AF BC */	addi r4, r4, jumptable_8164AFBC@l
/* 8138F198 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8138F19C | 7C 89 03 A6 */	mtctr r4
/* 8138F1A0 | 4E 80 04 20 */	bctr
.L_8138F1A4:
/* 8138F1A4 | 48 00 11 51 */	bl stt_wait_cdb_init__Q33ipl5scene5BoardFv
/* 8138F1A8 | 48 00 01 DC */	b .L_8138F384
.L_8138F1AC:
/* 8138F1AC | 48 00 12 CD */	bl stt_wait_init__Q33ipl5scene5BoardFv
/* 8138F1B0 | 48 00 01 D4 */	b .L_8138F384
.L_8138F1B4:
/* 8138F1B4 | 48 00 14 F1 */	bl stt_wait_child_dst__Q33ipl5scene5BoardFv
/* 8138F1B8 | 48 00 01 CC */	b .L_8138F384
.L_8138F1BC:
/* 8138F1BC | 48 00 17 95 */	bl stt_wait_child_cst__Q33ipl5scene5BoardFv
/* 8138F1C0 | 48 00 01 C4 */	b .L_8138F384
.L_8138F1C4:
/* 8138F1C4 | 48 00 18 0D */	bl stt_wait_scroll__Q33ipl5scene5BoardFv
/* 8138F1C8 | 48 00 01 BC */	b .L_8138F384
.L_8138F1CC:
/* 8138F1CC | 48 00 19 11 */	bl stt_normal__Q33ipl5scene5BoardFv
/* 8138F1D0 | 48 00 01 B4 */	b .L_8138F384
.L_8138F1D4:
/* 8138F1D4 | 48 00 1E AD */	bl stt_focus__Q33ipl5scene5BoardFv
/* 8138F1D8 | 48 00 01 AC */	b .L_8138F384
.L_8138F1DC:
/* 8138F1DC | 48 00 22 01 */	bl stt_after_del__Q33ipl5scene5BoardFv
/* 8138F1E0 | 48 00 01 A4 */	b .L_8138F384
.L_8138F1E4:
/* 8138F1E4 | 48 00 23 99 */	bl stt_init_lfadeaway__Q33ipl5scene5BoardFv
/* 8138F1E8 | 48 00 01 9C */	b .L_8138F384
.L_8138F1EC:
/* 8138F1EC | 48 00 24 4D */	bl stt_init_rfadeaway__Q33ipl5scene5BoardFv
/* 8138F1F0 | 48 00 01 94 */	b .L_8138F384
.L_8138F1F4:
/* 8138F1F4 | 48 00 25 01 */	bl stt_wait_fadeaway__Q33ipl5scene5BoardFv
/* 8138F1F8 | 48 00 01 8C */	b .L_8138F384
.L_8138F1FC:
/* 8138F1FC | 38 00 00 05 */	li r0, 0x5
/* 8138F200 | 90 03 00 60 */	stw r0, 0x60(r3)
/* 8138F204 | 48 00 01 80 */	b .L_8138F384
.L_8138F208:
/* 8138F208 | 48 00 26 81 */	bl stt_wait_stand__Q33ipl5scene5BoardFv
/* 8138F20C | 48 00 01 78 */	b .L_8138F384
.L_8138F210:
/* 8138F210 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138F214 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138F218 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8138F21C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F220 | 41 82 00 0C */	beq .L_8138F22C
/* 8138F224 | 38 00 00 00 */	li r0, 0x0
/* 8138F228 | 48 00 00 08 */	b .L_8138F230
.L_8138F22C:
/* 8138F22C | 80 04 00 7C */	lwz r0, 0x7c(r4)
.L_8138F230:
/* 8138F230 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F234 | 41 82 00 64 */	beq .L_8138F298
/* 8138F238 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F23C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F240 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F244 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F248 | 41 82 00 0C */	beq .L_8138F254
/* 8138F24C | 38 60 00 00 */	li r3, 0x0
/* 8138F250 | 48 00 00 08 */	b .L_8138F258
.L_8138F254:
/* 8138F254 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8138F258:
/* 8138F258 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8138F25C | 4B FC FD 91 */	bl is_working__Q23ipl10SDVFWorkerFv
/* 8138F260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F264 | 40 82 01 20 */	bne .L_8138F384
/* 8138F268 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F26C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F270 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F274 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F278 | 41 82 00 0C */	beq .L_8138F284
/* 8138F27C | 38 60 00 00 */	li r3, 0x0
/* 8138F280 | 48 00 00 08 */	b .L_8138F288
.L_8138F284:
/* 8138F284 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8138F288:
/* 8138F288 | 4B FB 0F 15 */	bl terminateSDProc__Q33ipl3cdb7ManagerFv
/* 8138F28C | 38 00 00 10 */	li r0, 0x10
/* 8138F290 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 8138F294 | 48 00 00 F0 */	b .L_8138F384
.L_8138F298:
/* 8138F298 | 38 00 00 10 */	li r0, 0x10
/* 8138F29C | 90 03 00 60 */	stw r0, 0x60(r3)
/* 8138F2A0 | 48 00 00 E4 */	b .L_8138F384
.L_8138F2A4:
/* 8138F2A4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F2A8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F2AC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F2B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F2B4 | 41 82 00 0C */	beq .L_8138F2C0
/* 8138F2B8 | 38 00 00 00 */	li r0, 0x0
/* 8138F2BC | 48 00 00 08 */	b .L_8138F2C4
.L_8138F2C0:
/* 8138F2C0 | 80 03 00 7C */	lwz r0, 0x7c(r3)
.L_8138F2C4:
/* 8138F2C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F2C8 | 41 82 00 BC */	beq .L_8138F384
/* 8138F2CC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F2D0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F2D4 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F2D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F2DC | 41 82 00 0C */	beq .L_8138F2E8
/* 8138F2E0 | 38 60 00 00 */	li r3, 0x0
/* 8138F2E4 | 48 00 00 08 */	b .L_8138F2EC
.L_8138F2E8:
/* 8138F2E8 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8138F2EC:
/* 8138F2EC | 38 63 00 18 */	addi r3, r3, 0x18
/* 8138F2F0 | 4B FC FC ED */	bl is_terminated__Q23ipl10SDVFWorkerFv
/* 8138F2F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F2F8 | 41 82 00 8C */	beq .L_8138F384
/* 8138F2FC | 38 00 00 10 */	li r0, 0x10
/* 8138F300 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 8138F304 | 48 00 00 80 */	b .L_8138F384
.L_8138F308:
/* 8138F308 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8138F30C | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8138F310 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 8138F314 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138F318 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138F31C | 7D 89 03 A6 */	mtctr r12
/* 8138F320 | 4E 80 04 21 */	bctrl
/* 8138F324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F328 | 40 82 01 D4 */	bne .L_8138F4FC
/* 8138F32C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8138F330 | 7F A3 EB 78 */	mr r3, r29
/* 8138F334 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8138F338 | 7D 89 03 A6 */	mtctr r12
/* 8138F33C | 4E 80 04 21 */	bctrl
/* 8138F340 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F344 | 41 82 01 B8 */	beq .L_8138F4FC
/* 8138F348 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8138F34C | 38 80 00 03 */	li r4, 0x3
/* 8138F350 | 48 07 BD E9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138F354 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F358 | 41 82 00 1C */	beq .L_8138F374
/* 8138F35C | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8138F360 | 38 80 00 03 */	li r4, 0x3
/* 8138F364 | 48 07 BD D5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138F368 | 48 02 6B A9 */	bl isInLaunching__Q33ipl5scene12ChannelTitleCFv
/* 8138F36C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F370 | 40 82 01 8C */	bne .L_8138F4FC
.L_8138F374:
/* 8138F374 | 80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8138F378 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8138F37C | 90 1D 00 2C */	stw r0, 0x2c(r29)
/* 8138F380 | 48 00 01 7C */	b .L_8138F4FC
.L_8138F384:
/* 8138F384 | 80 1D 00 60 */	lwz r0, 0x60(r29)
/* 8138F388 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F38C | 41 82 01 70 */	beq .L_8138F4FC
/* 8138F390 | 80 7D 0D 24 */	lwz r3, 0xd24(r29)
/* 8138F394 | 4B FD B3 71 */	bl calc__Q33ipl6layout6ObjectFv
/* 8138F398 | 80 7D 0D 28 */	lwz r3, 0xd28(r29)
/* 8138F39C | 4B FD B3 69 */	bl calc__Q33ipl6layout6ObjectFv
/* 8138F3A0 | 80 1D 00 60 */	lwz r0, 0x60(r29)
/* 8138F3A4 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 8138F3A8 | 41 82 01 54 */	beq .L_8138F4FC
/* 8138F3AC | 2C 00 00 0E */	cmpwi r0, 0xe
/* 8138F3B0 | 41 82 01 4C */	beq .L_8138F4FC
/* 8138F3B4 | 2C 00 00 10 */	cmpwi r0, 0x10
/* 8138F3B8 | 40 82 00 08 */	bne .L_8138F3C0
/* 8138F3BC | 48 00 01 40 */	b .L_8138F4FC
.L_8138F3C0:
/* 8138F3C0 | 7F A3 EB 78 */	mr r3, r29
/* 8138F3C4 | 48 00 39 D5 */	bl calc_board_object__Q33ipl5scene5BoardFv
/* 8138F3C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F3CC | 38 80 00 05 */	li r4, 0x5
/* 8138F3D0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F3D4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138F3D8 | 48 07 BD 61 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138F3DC | 88 1D 0D 04 */	lbz r0, 0xd04(r29)
/* 8138F3E0 | 7C 7F 1B 78 */	mr r31, r3
/* 8138F3E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F3E8 | 41 82 00 D8 */	beq .L_8138F4C0
/* 8138F3EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F3F0 | 41 82 00 D0 */	beq .L_8138F4C0
/* 8138F3F4 | 38 00 00 00 */	li r0, 0x0
/* 8138F3F8 | 39 20 00 00 */	li r9, 0x0
/* 8138F3FC | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8138F400 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8138F404 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8138F408 | 80 1D 0F A4 */	lwz r0, 0xfa4(r29)
/* 8138F40C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F410 | 41 80 00 18 */	blt .L_8138F428
/* 8138F414 | 2C 00 00 63 */	cmpwi r0, 0x63
/* 8138F418 | 3B C0 00 63 */	li r30, 0x63
/* 8138F41C | 41 81 00 10 */	bgt .L_8138F42C
/* 8138F420 | 7C 1E 03 78 */	mr r30, r0
/* 8138F424 | 48 00 00 08 */	b .L_8138F42C
.L_8138F428:
/* 8138F428 | 3B C0 00 00 */	li r30, 0x0
.L_8138F42C:
/* 8138F42C | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 8138F430 | 41 80 00 30 */	blt .L_8138F460
/* 8138F434 | 38 A0 00 0A */	li r5, 0xa
/* 8138F438 | 3C 60 81 61 */	lis r3, scNumber__Q23ipl5scene@ha
/* 8138F43C | 7C 9E 2B D6 */	divw r4, r30, r5
/* 8138F440 | 39 20 00 01 */	li r9, 0x1
/* 8138F444 | 38 63 F6 C8 */	addi r3, r3, scNumber__Q23ipl5scene@l
/* 8138F448 | 7C 04 2B D6 */	divw r0, r4, r5
/* 8138F44C | 7C 00 29 D6 */	mullw r0, r0, r5
/* 8138F450 | 7C 00 20 50 */	subf r0, r0, r4
/* 8138F454 | 54 00 08 3C */	slwi r0, r0, 1
/* 8138F458 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8138F45C | B0 01 00 08 */	sth r0, 0x8(r1)
.L_8138F460:
/* 8138F460 | 39 00 00 0A */	li r8, 0xa
/* 8138F464 | 3C C0 81 61 */	lis r6, scNumber__Q23ipl5scene@ha
/* 8138F468 | 7C FE 43 D6 */	divw r7, r30, r8
/* 8138F46C | 3C 80 81 65 */	lis r4, lbl_8164AFAE@ha
/* 8138F470 | 38 C6 F6 C8 */	addi r6, r6, scNumber__Q23ipl5scene@l
/* 8138F474 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8138F478 | 55 20 08 3C */	slwi r0, r9, 1
/* 8138F47C | 7F E3 FB 78 */	mr r3, r31
/* 8138F480 | 7C E7 41 D6 */	mullw r7, r7, r8
/* 8138F484 | 38 84 AF AE */	addi r4, r4, lbl_8164AFAE@l
/* 8138F488 | 7C E7 F0 50 */	subf r7, r7, r30
/* 8138F48C | 54 E7 08 3C */	slwi r7, r7, 1
/* 8138F490 | 7C C6 3A 2E */	lhzx r6, r6, r7
/* 8138F494 | 7C C5 03 2E */	sthx r6, r5, r0
/* 8138F498 | 48 00 D5 61 */	bl setText__Q33ipl5scene6ButtonFPCcPCw
/* 8138F49C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138F4A0 | 41 82 00 10 */	beq .L_8138F4B0
/* 8138F4A4 | 7F E3 FB 78 */	mr r3, r31
/* 8138F4A8 | 48 00 DB 5D */	bl startMailNumAnm__Q33ipl5scene6ButtonFv
/* 8138F4AC | 48 00 00 0C */	b .L_8138F4B8
.L_8138F4B0:
/* 8138F4B0 | 7F E3 FB 78 */	mr r3, r31
/* 8138F4B4 | 48 00 DB BD */	bl stopMailNumAnm__Q33ipl5scene6ButtonFv
.L_8138F4B8:
/* 8138F4B8 | 38 00 00 00 */	li r0, 0x0
/* 8138F4BC | 98 1D 0D 04 */	stb r0, 0xd04(r29)
.L_8138F4C0:
/* 8138F4C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F4C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F4C8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F4CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F4D0 | 41 82 00 0C */	beq .L_8138F4DC
/* 8138F4D4 | 38 00 00 00 */	li r0, 0x0
/* 8138F4D8 | 48 00 00 08 */	b .L_8138F4E0
.L_8138F4DC:
/* 8138F4DC | 80 03 00 7C */	lwz r0, 0x7c(r3)
.L_8138F4E0:
/* 8138F4E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F4E4 | 41 82 00 18 */	beq .L_8138F4FC
/* 8138F4E8 | 80 1D 00 60 */	lwz r0, 0x60(r29)
/* 8138F4EC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138F4F0 | 41 82 00 0C */	beq .L_8138F4FC
/* 8138F4F4 | 38 7D 0F AC */	addi r3, r29, 0xfac
/* 8138F4F8 | 48 00 6C 15 */	bl update__Q33ipl5scene7BoardSDFv
.L_8138F4FC:
/* 8138F4FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138F500 | 48 26 A0 15 */	bl _restgpr_29
/* 8138F504 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138F508 | 7C 08 03 A6 */	mtlr r0
/* 8138F50C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138F510 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene5BoardFv

# .text:0x72C | 0x8138F514 | size: 0x100
# ipl::scene::Board::draw()
.fn draw__Q33ipl5scene5BoardFv, global
/* 8138F514 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138F518 | 7C 08 02 A6 */	mflr r0
/* 8138F51C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138F520 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138F524 | 48 26 9F A5 */	bl _savegpr_29
/* 8138F528 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 8138F52C | 7C 7D 1B 78 */	mr r29, r3
/* 8138F530 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F534 | 41 82 00 C8 */	beq .L_8138F5FC
/* 8138F538 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F53C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F540 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138F544 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 8138F548 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F54C | 40 82 00 30 */	bne .L_8138F57C
/* 8138F550 | 3B E0 00 00 */	li r31, 0x0
/* 8138F554 | 48 00 00 0C */	b .L_8138F560
.L_8138F558:
/* 8138F558 | 7F E3 FB 78 */	mr r3, r31
/* 8138F55C | 48 00 5C 95 */	bl capture__Q33ipl5scene11BoardObjectFv
.L_8138F560:
/* 8138F560 | 7F E4 FB 78 */	mr r4, r31
/* 8138F564 | 38 7D 00 68 */	addi r3, r29, 0x68
/* 8138F568 | 48 18 2D 75 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8138F56C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F570 | 7C 7F 1B 78 */	mr r31, r3
/* 8138F574 | 40 82 FF E4 */	bne .L_8138F558
/* 8138F578 | 48 00 00 84 */	b .L_8138F5FC
.L_8138F57C:
/* 8138F57C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138F580 | 40 82 00 7C */	bne .L_8138F5FC
/* 8138F584 | 38 60 00 00 */	li r3, 0x0
/* 8138F588 | 4B FD 34 E5 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 8138F58C | 80 7D 0D 24 */	lwz r3, 0xd24(r29)
/* 8138F590 | 4B FD B2 0D */	bl draw__Q33ipl6layout6ObjectFv
/* 8138F594 | 3B E0 00 00 */	li r31, 0x0
/* 8138F598 | 3B C0 00 00 */	li r30, 0x0
/* 8138F59C | 48 00 00 20 */	b .L_8138F5BC
.L_8138F5A0:
/* 8138F5A0 | 80 03 01 2C */	lwz r0, 0x12c(r3)
/* 8138F5A4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8138F5A8 | 41 82 00 10 */	beq .L_8138F5B8
/* 8138F5AC | 7F C3 F3 78 */	mr r3, r30
/* 8138F5B0 | 48 00 5C 1D */	bl draw__Q33ipl5scene11BoardObjectFv
/* 8138F5B4 | 48 00 00 08 */	b .L_8138F5BC
.L_8138F5B8:
/* 8138F5B8 | 7F DF F3 78 */	mr r31, r30
.L_8138F5BC:
/* 8138F5BC | 7F C4 F3 78 */	mr r4, r30
/* 8138F5C0 | 38 7D 00 68 */	addi r3, r29, 0x68
/* 8138F5C4 | 48 18 2D 19 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8138F5C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F5CC | 7C 7E 1B 78 */	mr r30, r3
/* 8138F5D0 | 40 82 FF D0 */	bne .L_8138F5A0
/* 8138F5D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8138F5D8 | 41 82 00 0C */	beq .L_8138F5E4
/* 8138F5DC | 7F E3 FB 78 */	mr r3, r31
/* 8138F5E0 | 48 00 5B ED */	bl draw__Q33ipl5scene11BoardObjectFv
.L_8138F5E4:
/* 8138F5E4 | 80 7D 0D 28 */	lwz r3, 0xd28(r29)
/* 8138F5E8 | 4B FD B1 B5 */	bl draw__Q33ipl6layout6ObjectFv
/* 8138F5EC | 80 7D 0F A0 */	lwz r3, 0xfa0(r29)
/* 8138F5F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F5F4 | 41 82 00 08 */	beq .L_8138F5FC
/* 8138F5F8 | 48 00 93 F9 */	bl draw__Q33ipl5scene12focus_objectFv
.L_8138F5FC:
/* 8138F5FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138F600 | 48 26 9F 15 */	bl _restgpr_29
/* 8138F604 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138F608 | 7C 08 03 A6 */	mtlr r0
/* 8138F60C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138F610 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene5BoardFv

# .text:0x82C | 0x8138F614 | size: 0x250
# ipl::scene::Board::destroy()
.fn destroy__Q33ipl5scene5BoardFv, global
/* 8138F614 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138F618 | 7C 08 02 A6 */	mflr r0
/* 8138F61C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138F620 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138F624 | 48 26 9E 99 */	bl _savegpr_26
/* 8138F628 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 8138F62C | 7C 7F 1B 78 */	mr r31, r3
/* 8138F630 | 2C 00 00 10 */	cmpwi r0, 0x10
/* 8138F634 | 41 82 00 D4 */	beq .L_8138F708
/* 8138F638 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F63C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F640 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F644 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F648 | 41 82 00 0C */	beq .L_8138F654
/* 8138F64C | 38 00 00 00 */	li r0, 0x0
/* 8138F650 | 48 00 00 08 */	b .L_8138F658
.L_8138F654:
/* 8138F654 | 80 03 00 7C */	lwz r0, 0x7c(r3)
.L_8138F658:
/* 8138F658 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F65C | 41 82 00 AC */	beq .L_8138F708
/* 8138F660 | 38 00 00 00 */	li r0, 0x0
/* 8138F664 | 3B A0 00 64 */	li r29, 0x64
/* 8138F668 | 7F 80 E9 D6 */	mullw r28, r0, r29
/* 8138F66C | 3C 60 00 02 */	lis r3, 0x2
/* 8138F670 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 8138F674 | 3B C3 E8 48 */	subi r30, r3, 0x17b8
/* 8138F678 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 8138F67C | 3F 40 80 00 */	lis r26, 0x8000
/* 8138F680 | 48 00 00 3C */	b .L_8138F6BC
.L_8138F684:
/* 8138F684 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 8138F688 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8138F68C | 7C 60 F3 96 */	divwu r3, r0, r30
/* 8138F690 | 7C 03 E8 16 */	mulhwu r0, r3, r29
/* 8138F694 | 1C 63 00 64 */	mulli r3, r3, 0x64
/* 8138F698 | 7C 80 E2 14 */	add r4, r0, r28
/* 8138F69C | 7C 80 23 78 */	mr r0, r4
/* 8138F6A0 | 50 60 07 7E */	rlwimi r0, r3, 0, 29, 31
/* 8138F6A4 | 54 63 E8 3E */	rotrwi r3, r3, 3
/* 8138F6A8 | 50 83 E8 04 */	rlwimi r3, r4, 29, 0, 2
/* 8138F6AC | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8138F6B0 | 7C 83 01 94 */	addze r4, r3
/* 8138F6B4 | 7C 60 01 94 */	addze r3, r0
/* 8138F6B8 | 48 1A 65 15 */	bl OSSleepTicks
.L_8138F6BC:
/* 8138F6BC | 88 1B 02 BC */	lbz r0, 0x2bc(r27)
/* 8138F6C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F6C4 | 40 82 00 0C */	bne .L_8138F6D0
/* 8138F6C8 | 80 7B 00 7C */	lwz r3, 0x7c(r27)
/* 8138F6CC | 48 00 00 08 */	b .L_8138F6D4
.L_8138F6D0:
/* 8138F6D0 | 38 60 00 00 */	li r3, 0x0
.L_8138F6D4:
/* 8138F6D4 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8138F6D8 | 4B FC F9 15 */	bl is_working__Q23ipl10SDVFWorkerFv
/* 8138F6DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F6E0 | 40 82 FF A4 */	bne .L_8138F684
/* 8138F6E4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F6E8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F6EC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F6F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F6F4 | 41 82 00 0C */	beq .L_8138F700
/* 8138F6F8 | 38 60 00 00 */	li r3, 0x0
/* 8138F6FC | 48 00 00 08 */	b .L_8138F704
.L_8138F700:
/* 8138F700 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8138F704:
/* 8138F704 | 4B FB 0A 99 */	bl terminateSDProc__Q33ipl3cdb7ManagerFv
.L_8138F708:
/* 8138F708 | 80 7F 0F A0 */	lwz r3, 0xfa0(r31)
/* 8138F70C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F710 | 41 82 00 14 */	beq .L_8138F724
/* 8138F714 | 38 80 00 01 */	li r4, 0x1
/* 8138F718 | 48 00 78 ED */	bl __dt__Q33ipl5scene12focus_objectFv
/* 8138F71C | 38 00 00 00 */	li r0, 0x0
/* 8138F720 | 90 1F 0F A0 */	stw r0, 0xfa0(r31)
.L_8138F724:
/* 8138F724 | 7F E3 FB 78 */	mr r3, r31
/* 8138F728 | 48 00 33 71 */	bl return_to_freelist__Q33ipl5scene5BoardFv
/* 8138F72C | 3B 40 00 00 */	li r26, 0x0
/* 8138F730 | 48 00 00 0C */	b .L_8138F73C
.L_8138F734:
/* 8138F734 | 7F 43 D3 78 */	mr r3, r26
/* 8138F738 | 48 00 5D 09 */	bl destroy_heap__Q33ipl5scene11BoardObjectFv
.L_8138F73C:
/* 8138F73C | 7F 44 D3 78 */	mr r4, r26
/* 8138F740 | 38 7F 00 74 */	addi r3, r31, 0x74
/* 8138F744 | 48 18 2B 99 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8138F748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F74C | 7C 7A 1B 78 */	mr r26, r3
/* 8138F750 | 40 82 FF E4 */	bne .L_8138F734
/* 8138F754 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F758 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F75C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F760 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F764 | 41 82 00 0C */	beq .L_8138F770
/* 8138F768 | 38 00 00 00 */	li r0, 0x0
/* 8138F76C | 48 00 00 08 */	b .L_8138F774
.L_8138F770:
/* 8138F770 | 80 03 00 7C */	lwz r0, 0x7c(r3)
.L_8138F774:
/* 8138F774 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F778 | 41 82 00 B8 */	beq .L_8138F830
/* 8138F77C | 38 00 00 00 */	li r0, 0x0
/* 8138F780 | 3B A0 00 64 */	li r29, 0x64
/* 8138F784 | 7F C0 E9 D6 */	mullw r30, r0, r29
/* 8138F788 | 3C 60 00 02 */	lis r3, 0x2
/* 8138F78C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138F790 | 3B 83 E8 48 */	subi r28, r3, 0x17b8
/* 8138F794 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138F798 | 3F 60 80 00 */	lis r27, 0x8000
/* 8138F79C | 48 00 00 3C */	b .L_8138F7D8
.L_8138F7A0:
/* 8138F7A0 | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 8138F7A4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8138F7A8 | 7C 60 E3 96 */	divwu r3, r0, r28
/* 8138F7AC | 7C 03 E8 16 */	mulhwu r0, r3, r29
/* 8138F7B0 | 1C 63 00 64 */	mulli r3, r3, 0x64
/* 8138F7B4 | 7C 80 F2 14 */	add r4, r0, r30
/* 8138F7B8 | 7C 80 23 78 */	mr r0, r4
/* 8138F7BC | 50 60 07 7E */	rlwimi r0, r3, 0, 29, 31
/* 8138F7C0 | 54 63 E8 3E */	rotrwi r3, r3, 3
/* 8138F7C4 | 50 83 E8 04 */	rlwimi r3, r4, 29, 0, 2
/* 8138F7C8 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8138F7CC | 7C 83 01 94 */	addze r4, r3
/* 8138F7D0 | 7C 60 01 94 */	addze r3, r0
/* 8138F7D4 | 48 1A 63 F9 */	bl OSSleepTicks
.L_8138F7D8:
/* 8138F7D8 | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8138F7DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F7E0 | 40 82 00 0C */	bne .L_8138F7EC
/* 8138F7E4 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8138F7E8 | 48 00 00 08 */	b .L_8138F7F0
.L_8138F7EC:
/* 8138F7EC | 38 60 00 00 */	li r3, 0x0
.L_8138F7F0:
/* 8138F7F0 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8138F7F4 | 4B FC F7 E9 */	bl is_terminated__Q23ipl10SDVFWorkerFv
/* 8138F7F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F7FC | 41 82 FF A4 */	beq .L_8138F7A0
/* 8138F800 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F804 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F808 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138F80C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F810 | 41 82 00 0C */	beq .L_8138F81C
/* 8138F814 | 38 60 00 00 */	li r3, 0x0
/* 8138F818 | 48 00 00 08 */	b .L_8138F820
.L_8138F81C:
/* 8138F81C | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8138F820:
/* 8138F820 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 8138F824 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F828 | 41 82 00 08 */	beq .L_8138F830
/* 8138F82C | 4B FB 09 E9 */	bl unmountSD__Q33ipl3cdb7ManagerFv
.L_8138F830:
/* 8138F830 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138F834 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138F838 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138F83C | 80 03 01 28 */	lwz r0, 0x128(r3)
/* 8138F840 | 2C 00 00 24 */	cmpwi r0, 0x24
/* 8138F844 | 41 82 00 08 */	beq .L_8138F84C
/* 8138F848 | 4B FA 44 41 */	bl stopReceiveSchedule__Q23ipl6SystemFv
.L_8138F84C:
/* 8138F84C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138F850 | 48 26 9C B9 */	bl _restgpr_26
/* 8138F854 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138F858 | 7C 08 03 A6 */	mtlr r0
/* 8138F85C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138F860 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene5BoardFv

# .text:0xA7C | 0x8138F864 | size: 0x60
# ipl::scene::Board::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene5BoardCFv, global
/* 8138F864 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138F868 | 7C 08 02 A6 */	mflr r0
/* 8138F86C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138F870 | 88 03 0D 02 */	lbz r0, 0xd02(r3)
/* 8138F874 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138F878 | 3B E0 00 00 */	li r31, 0x0
/* 8138F87C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F880 | 40 82 00 2C */	bne .L_8138F8AC
/* 8138F884 | 88 03 0D 00 */	lbz r0, 0xd00(r3)
/* 8138F888 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F88C | 40 82 00 20 */	bne .L_8138F8AC
/* 8138F890 | 88 03 0D 03 */	lbz r0, 0xd03(r3)
/* 8138F894 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138F898 | 40 82 00 14 */	bne .L_8138F8AC
/* 8138F89C | 48 00 38 E9 */	bl is_wait_to_clean_task__Q33ipl5scene5BoardCFv
/* 8138F8A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F8A4 | 40 82 00 08 */	bne .L_8138F8AC
/* 8138F8A8 | 3B E0 00 01 */	li r31, 0x1
.L_8138F8AC:
/* 8138F8AC | 7F E3 FB 78 */	mr r3, r31
/* 8138F8B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138F8B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138F8B8 | 7C 08 03 A6 */	mtlr r0
/* 8138F8BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138F8C0 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene5BoardCFv

# .text:0xADC | 0x8138F8C4 | size: 0xDC
# ipl::scene::Board::updateDate(const ipl::utility::Date&)
.fn updateDate__Q33ipl5scene5BoardFRCQ33ipl7utility4Date, global
/* 8138F8C4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8138F8C8 | 7C 08 02 A6 */	mflr r0
/* 8138F8CC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8138F8D0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8138F8D4 | 7C 9F 23 78 */	mr r31, r4
/* 8138F8D8 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8138F8DC | 7C 7E 1B 78 */	mr r30, r3
/* 8138F8E0 | 38 63 0D 08 */	addi r3, r3, 0xd08
/* 8138F8E4 | 48 00 00 BD */	bl __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 8138F8E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F8EC | 41 82 00 9C */	beq .L_8138F988
/* 8138F8F0 | 7F E4 FB 78 */	mr r4, r31
/* 8138F8F4 | 38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8138F8F8 | 48 00 00 E9 */	bl __gt__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 8138F8FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F900 | 41 82 00 48 */	beq .L_8138F948
/* 8138F904 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8138F908 | 48 00 01 31 */	bl __ct__Q33ipl7utility4DateFv
/* 8138F90C | 38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8138F910 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8138F914 | 48 00 01 3D */	bl getYesterday__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 8138F918 | 7F E4 FB 78 */	mr r4, r31
/* 8138F91C | 38 61 00 14 */	addi r3, r1, 0x14
/* 8138F920 | 48 00 02 65 */	bl __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 8138F924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F928 | 41 82 00 10 */	beq .L_8138F938
/* 8138F92C | 7F C3 F3 78 */	mr r3, r30
/* 8138F930 | 48 00 36 65 */	bl cmn_start_scroll_l__Q33ipl5scene5BoardFv
/* 8138F934 | 48 00 00 54 */	b .L_8138F988
.L_8138F938:
/* 8138F938 | 7F C3 F3 78 */	mr r3, r30
/* 8138F93C | 7F E4 FB 78 */	mr r4, r31
/* 8138F940 | 48 00 37 2D */	bl cmn_start_scroll_l_hi__Q33ipl5scene5BoardFRCQ33ipl7utility4Date
/* 8138F944 | 48 00 00 44 */	b .L_8138F988
.L_8138F948:
/* 8138F948 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138F94C | 48 00 00 ED */	bl __ct__Q33ipl7utility4DateFv
/* 8138F950 | 38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8138F954 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8138F958 | 48 00 02 6D */	bl getTomorrow__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 8138F95C | 7F E4 FB 78 */	mr r4, r31
/* 8138F960 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138F964 | 48 00 02 21 */	bl __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 8138F968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138F96C | 41 82 00 10 */	beq .L_8138F97C
/* 8138F970 | 7F C3 F3 78 */	mr r3, r30
/* 8138F974 | 48 00 35 B9 */	bl cmn_start_scroll_r__Q33ipl5scene5BoardFv
/* 8138F978 | 48 00 00 10 */	b .L_8138F988
.L_8138F97C:
/* 8138F97C | 7F C3 F3 78 */	mr r3, r30
/* 8138F980 | 7F E4 FB 78 */	mr r4, r31
/* 8138F984 | 48 00 36 79 */	bl cmn_start_scroll_r_hi__Q33ipl5scene5BoardFRCQ33ipl7utility4Date
.L_8138F988:
/* 8138F988 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8138F98C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8138F990 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8138F994 | 7C 08 03 A6 */	mtlr r0
/* 8138F998 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8138F99C | 4E 80 00 20 */	blr
.endfn updateDate__Q33ipl5scene5BoardFRCQ33ipl7utility4Date

# .text:0xBB8 | 0x8138F9A0 | size: 0x40
# ipl::utility::Date::operator!=(const ipl::utility::Date&) const
.fn __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date, global
/* 8138F9A0 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8138F9A4 | 38 C0 00 00 */	li r6, 0x0
/* 8138F9A8 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8138F9AC | 7C 05 00 00 */	cmpw r5, r0
/* 8138F9B0 | 40 82 00 24 */	bne .L_8138F9D4
/* 8138F9B4 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8138F9B8 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8138F9BC | 7C 05 00 00 */	cmpw r5, r0
/* 8138F9C0 | 40 82 00 14 */	bne .L_8138F9D4
/* 8138F9C4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8138F9C8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8138F9CC | 7C 03 00 00 */	cmpw r3, r0
/* 8138F9D0 | 41 82 00 08 */	beq .L_8138F9D8
.L_8138F9D4:
/* 8138F9D4 | 38 C0 00 01 */	li r6, 0x1
.L_8138F9D8:
/* 8138F9D8 | 7C C3 33 78 */	mr r3, r6
/* 8138F9DC | 4E 80 00 20 */	blr
.endfn __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date

# .text:0xBF8 | 0x8138F9E0 | size: 0x58
# ipl::utility::Date::operator>(const ipl::utility::Date&) const
.fn __gt__Q33ipl7utility4DateCFRCQ33ipl7utility4Date, global
/* 8138F9E0 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8138F9E4 | 38 C0 00 00 */	li r6, 0x0
/* 8138F9E8 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8138F9EC | 7C 05 00 00 */	cmpw r5, r0
/* 8138F9F0 | 40 81 00 0C */	ble .L_8138F9FC
/* 8138F9F4 | 38 C0 00 01 */	li r6, 0x1
/* 8138F9F8 | 48 00 00 38 */	b .L_8138FA30
.L_8138F9FC:
/* 8138F9FC | 40 82 00 34 */	bne .L_8138FA30
/* 8138FA00 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8138FA04 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8138FA08 | 7C 05 00 00 */	cmpw r5, r0
/* 8138FA0C | 40 81 00 0C */	ble .L_8138FA18
/* 8138FA10 | 38 C0 00 01 */	li r6, 0x1
/* 8138FA14 | 48 00 00 1C */	b .L_8138FA30
.L_8138FA18:
/* 8138FA18 | 40 82 00 18 */	bne .L_8138FA30
/* 8138FA1C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8138FA20 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8138FA24 | 7C 03 00 00 */	cmpw r3, r0
/* 8138FA28 | 40 81 00 08 */	ble .L_8138FA30
/* 8138FA2C | 38 C0 00 01 */	li r6, 0x1
.L_8138FA30:
/* 8138FA30 | 7C C3 33 78 */	mr r3, r6
/* 8138FA34 | 4E 80 00 20 */	blr
.endfn __gt__Q33ipl7utility4DateCFRCQ33ipl7utility4Date

# .text:0xC50 | 0x8138FA38 | size: 0x18
# ipl::utility::Date::Date()
.fn __ct__Q33ipl7utility4DateFv, global
/* 8138FA38 | 38 00 00 01 */	li r0, 0x1
/* 8138FA3C | 38 80 07 D0 */	li r4, 0x7d0
/* 8138FA40 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8138FA44 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8138FA48 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8138FA4C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility4DateFv

# .text:0xC68 | 0x8138FA50 | size: 0x7C
# ipl::utility::Calendar::getYesterday(const ipl::utility::Date&, ipl::utility::Date*)
.fn getYesterday__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date, global
/* 8138FA50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138FA54 | 7C 08 02 A6 */	mflr r0
/* 8138FA58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138FA5C | 7C 60 1B 78 */	mr r0, r3
/* 8138FA60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138FA64 | 7C 9F 23 78 */	mr r31, r4
/* 8138FA68 | 7F E3 FB 78 */	mr r3, r31
/* 8138FA6C | 7C 04 03 78 */	mr r4, r0
/* 8138FA70 | 48 00 00 5D */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 8138FA74 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8138FA78 | 34 03 FF FF */	subic. r0, r3, 0x1
/* 8138FA7C | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8138FA80 | 41 81 00 38 */	bgt .L_8138FAB8
/* 8138FA84 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8138FA88 | 34 03 FF FF */	subic. r0, r3, 0x1
/* 8138FA8C | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8138FA90 | 41 81 00 18 */	bgt .L_8138FAA8
/* 8138FA94 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8138FA98 | 38 00 00 0C */	li r0, 0xc
/* 8138FA9C | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8138FAA0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8138FAA4 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8138FAA8:
/* 8138FAA8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8138FAAC | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8138FAB0 | 48 00 00 39 */	bl getDays__Q33ipl7utility8CalendarFii
/* 8138FAB4 | 90 7F 00 08 */	stw r3, 0x8(r31)
.L_8138FAB8:
/* 8138FAB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138FABC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138FAC0 | 7C 08 03 A6 */	mtlr r0
/* 8138FAC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138FAC8 | 4E 80 00 20 */	blr
.endfn getYesterday__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date

# .text:0xCE4 | 0x8138FACC | size: 0x1C
# ipl::utility::Date::operator=(const ipl::utility::Date&)
.fn __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date, global
/* 8138FACC | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8138FAD0 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8138FAD4 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8138FAD8 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 8138FADC | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8138FAE0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8138FAE4 | 4E 80 00 20 */	blr
.endfn __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date

# .text:0xD00 | 0x8138FAE8 | size: 0x9C
# ipl::utility::Calendar::getDays(int, int)
.fn getDays__Q33ipl7utility8CalendarFii, global
/* 8138FAE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138FAEC | 3C A0 81 61 */	lis r5, lbl_8160F690@ha
/* 8138FAF0 | 38 A5 F6 90 */	addi r5, r5, lbl_8160F690@l
/* 8138FAF4 | 38 00 00 06 */	li r0, 0x6
/* 8138FAF8 | 38 E1 00 06 */	addi r7, r1, 0x6
/* 8138FAFC | 38 C5 FF FE */	subi r6, r5, 0x2
/* 8138FB00 | 7C 09 03 A6 */	mtctr r0
.L_8138FB04:
/* 8138FB04 | A0 A6 00 02 */	lhz r5, 0x2(r6)
/* 8138FB08 | A4 06 00 04 */	lhzu r0, 0x4(r6)
/* 8138FB0C | B0 A7 00 02 */	sth r5, 0x2(r7)
/* 8138FB10 | B4 07 00 04 */	sthu r0, 0x4(r7)
/* 8138FB14 | 42 00 FF F0 */	bdnz .L_8138FB04
/* 8138FB18 | 7C 60 16 70 */	srawi r0, r3, 2
/* 8138FB1C | 38 C0 00 00 */	li r6, 0x0
/* 8138FB20 | 7C 00 01 94 */	addze r0, r0
/* 8138FB24 | 54 00 10 3A */	slwi r0, r0, 2
/* 8138FB28 | 7C 00 18 51 */	subf. r0, r0, r3
/* 8138FB2C | 40 82 00 18 */	bne .L_8138FB44
/* 8138FB30 | 38 A0 00 64 */	li r5, 0x64
/* 8138FB34 | 7C 03 2B D6 */	divw r0, r3, r5
/* 8138FB38 | 7C 00 29 D6 */	mullw r0, r0, r5
/* 8138FB3C | 7C 00 18 51 */	subf. r0, r0, r3
/* 8138FB40 | 40 82 00 18 */	bne .L_8138FB58
.L_8138FB44:
/* 8138FB44 | 38 A0 01 90 */	li r5, 0x190
/* 8138FB48 | 7C 03 2B D6 */	divw r0, r3, r5
/* 8138FB4C | 7C 00 29 D6 */	mullw r0, r0, r5
/* 8138FB50 | 7C 00 18 51 */	subf. r0, r0, r3
/* 8138FB54 | 40 82 00 08 */	bne .L_8138FB5C
.L_8138FB58:
/* 8138FB58 | 38 C0 00 01 */	li r6, 0x1
.L_8138FB5C:
/* 8138FB5C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8138FB60 | 41 82 00 0C */	beq .L_8138FB6C
/* 8138FB64 | 38 00 00 1D */	li r0, 0x1d
/* 8138FB68 | B0 01 00 0A */	sth r0, 0xa(r1)
.L_8138FB6C:
/* 8138FB6C | 38 04 FF FF */	subi r0, r4, 0x1
/* 8138FB70 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138FB74 | 54 00 08 3C */	slwi r0, r0, 1
/* 8138FB78 | 7C 63 02 2E */	lhzx r3, r3, r0
/* 8138FB7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138FB80 | 4E 80 00 20 */	blr
.endfn getDays__Q33ipl7utility8CalendarFii

# .text:0xD9C | 0x8138FB84 | size: 0x40
# ipl::utility::Date::operator==(const ipl::utility::Date&) const
.fn __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date, global
/* 8138FB84 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8138FB88 | 38 C0 00 00 */	li r6, 0x0
/* 8138FB8C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8138FB90 | 7C 05 00 00 */	cmpw r5, r0
/* 8138FB94 | 40 82 00 28 */	bne .L_8138FBBC
/* 8138FB98 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8138FB9C | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8138FBA0 | 7C 05 00 00 */	cmpw r5, r0
/* 8138FBA4 | 40 82 00 18 */	bne .L_8138FBBC
/* 8138FBA8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8138FBAC | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8138FBB0 | 7C 03 00 00 */	cmpw r3, r0
/* 8138FBB4 | 40 82 00 08 */	bne .L_8138FBBC
/* 8138FBB8 | 38 C0 00 01 */	li r6, 0x1
.L_8138FBBC:
/* 8138FBBC | 7C C3 33 78 */	mr r3, r6
/* 8138FBC0 | 4E 80 00 20 */	blr
.endfn __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date

# .text:0xDDC | 0x8138FBC4 | size: 0x88
# ipl::utility::Calendar::getTomorrow(const ipl::utility::Date&, ipl::utility::Date*)
.fn getTomorrow__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date, global
/* 8138FBC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138FBC8 | 7C 08 02 A6 */	mflr r0
/* 8138FBCC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138FBD0 | 7C 60 1B 78 */	mr r0, r3
/* 8138FBD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138FBD8 | 7C 9F 23 78 */	mr r31, r4
/* 8138FBDC | 7F E3 FB 78 */	mr r3, r31
/* 8138FBE0 | 7C 04 03 78 */	mr r4, r0
/* 8138FBE4 | 4B FF FE E9 */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 8138FBE8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8138FBEC | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8138FBF0 | 4B FF FE F9 */	bl getDays__Q33ipl7utility8CalendarFii
/* 8138FBF4 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8138FBF8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8138FBFC | 7C 00 18 00 */	cmpw r0, r3
/* 8138FC00 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8138FC04 | 40 81 00 34 */	ble .L_8138FC38
/* 8138FC08 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8138FC0C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8138FC10 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 8138FC14 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8138FC18 | 40 81 00 18 */	ble .L_8138FC30
/* 8138FC1C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8138FC20 | 38 00 00 01 */	li r0, 0x1
/* 8138FC24 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8138FC28 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8138FC2C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8138FC30:
/* 8138FC30 | 38 00 00 01 */	li r0, 0x1
/* 8138FC34 | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_8138FC38:
/* 8138FC38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138FC3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138FC40 | 7C 08 03 A6 */	mtlr r0
/* 8138FC44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138FC48 | 4E 80 00 20 */	blr
.endfn getTomorrow__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date

# .text:0xE64 | 0x8138FC4C | size: 0x118
# ipl::scene::Board::focus(ipl::scene::BoardObject*)
.fn focus__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject, global
/* 8138FC4C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8138FC50 | 7C 08 02 A6 */	mflr r0
/* 8138FC54 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138FC58 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138FC5C | 48 26 98 65 */	bl _savegpr_27
/* 8138FC60 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138FC64 | 7C 9C 23 78 */	mr r28, r4
/* 8138FC68 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138FC6C | 7C 7B 1B 78 */	mr r27, r3
/* 8138FC70 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8138FC74 | 38 80 00 05 */	li r4, 0x5
/* 8138FC78 | 48 07 B4 C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138FC7C | 7C 7E 1B 78 */	mr r30, r3
/* 8138FC80 | 38 80 00 00 */	li r4, 0x0
/* 8138FC84 | 38 A0 00 00 */	li r5, 0x0
/* 8138FC88 | 48 00 CC B5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8138FC8C | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8138FC90 | 38 60 02 08 */	li r3, 0x208
/* 8138FC94 | 38 A0 00 04 */	li r5, 0x4
/* 8138FC98 | 48 26 84 19 */	bl __nw__FUlPQ23EGG4Heapi
/* 8138FC9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138FCA0 | 41 82 00 14 */	beq .L_8138FCB4
/* 8138FCA4 | 80 9B 0D 20 */	lwz r4, 0xd20(r27)
/* 8138FCA8 | 7F 86 E3 78 */	mr r6, r28
/* 8138FCAC | 80 BB 0D 2C */	lwz r5, 0xd2c(r27)
/* 8138FCB0 | 48 00 70 79 */	bl __ct__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFilePQ33ipl4nand10LayoutFilePQ33ipl5scene11BoardObject
.L_8138FCB4:
/* 8138FCB4 | 80 BB 0D 28 */	lwz r5, 0xd28(r27)
/* 8138FCB8 | 38 80 00 00 */	li r4, 0x0
/* 8138FCBC | 90 7B 0F A0 */	stw r3, 0xfa0(r27)
/* 8138FCC0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 8138FCC4 | 48 18 26 55 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138FCC8 | 7C 7D 1B 78 */	mr r29, r3
/* 8138FCCC | 4B FD 2B A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138FCD0 | 3B E0 00 01 */	li r31, 0x1
/* 8138FCD4 | 7F 63 DB 78 */	mr r3, r27
/* 8138FCD8 | 93 FD 00 14 */	stw r31, 0x14(r29)
/* 8138FCDC | 9B FB 0F 9A */	stb r31, 0xf9a(r27)
/* 8138FCE0 | 48 00 2C 05 */	bl disappear_arrow__Q33ipl5scene5BoardFv
/* 8138FCE4 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8138FCE8 | 38 80 00 03 */	li r4, 0x3
/* 8138FCEC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138FCF0 | 48 18 26 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138FCF4 | 7C 7D 1B 78 */	mr r29, r3
/* 8138FCF8 | 4B FD 2B 79 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138FCFC | 93 FD 00 14 */	stw r31, 0x14(r29)
/* 8138FD00 | 7F C3 F3 78 */	mr r3, r30
/* 8138FD04 | 38 80 00 09 */	li r4, 0x9
/* 8138FD08 | 48 00 CE 51 */	bl iplButton_8139CB58
/* 8138FD0C | 3C 80 81 65 */	lis r4, lbl_8164B000@ha
/* 8138FD10 | 7F C3 F3 78 */	mr r3, r30
/* 8138FD14 | 38 84 B0 00 */	addi r4, r4, lbl_8164B000@l
/* 8138FD18 | 38 A0 01 3B */	li r5, 0x13b
/* 8138FD1C | 48 00 CC 81 */	bl setText__Q33ipl5scene6ButtonFPCcUl
/* 8138FD20 | 7F C3 F3 78 */	mr r3, r30
/* 8138FD24 | 38 8D 85 C4 */	li r4, lbl_81696604@sda21
/* 8138FD28 | 38 A0 00 28 */	li r5, 0x28
/* 8138FD2C | 48 00 CC 71 */	bl setText__Q33ipl5scene6ButtonFPCcUl
/* 8138FD30 | 38 7E 00 64 */	addi r3, r30, 0x64
/* 8138FD34 | 38 80 00 65 */	li r4, 0x65
/* 8138FD38 | 48 00 D8 E5 */	bl setText__Q33ipl5scene12OptOutButtonFUl
/* 8138FD3C | 80 7B 0F A0 */	lwz r3, 0xfa0(r27)
/* 8138FD40 | 48 00 AD 61 */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 8138FD44 | 38 00 00 06 */	li r0, 0x6
/* 8138FD48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138FD4C | 90 1B 00 60 */	stw r0, 0x60(r27)
/* 8138FD50 | 48 26 97 BD */	bl _restgpr_27
/* 8138FD54 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138FD58 | 7C 08 03 A6 */	mtlr r0
/* 8138FD5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138FD60 | 4E 80 00 20 */	blr
.endfn focus__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject

# .text:0xF7C | 0x8138FD64 | size: 0x6C
# ipl::scene::Board::pinch(ipl::scene::BoardObject*)
.fn pinch__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject, global
/* 8138FD64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138FD68 | 7C 08 02 A6 */	mflr r0
/* 8138FD6C | 7C 86 23 78 */	mr r6, r4
/* 8138FD70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138FD74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138FD78 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138FD7C | 7C 7E 1B 78 */	mr r30, r3
/* 8138FD80 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 8138FD84 | 38 65 FF F8 */	subi r3, r5, 0x8
/* 8138FD88 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8138FD8C | 7F E0 19 11 */	subfe. r31, r0, r3
/* 8138FD90 | 41 82 00 24 */	beq .L_8138FDB4
/* 8138FD94 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8138FD98 | 3C 80 81 65 */	lis r4, lbl_8164B00A@ha
/* 8138FD9C | C0 26 00 34 */	lfs f1, 0x34(r6)
/* 8138FDA0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138FDA4 | 38 84 B0 0A */	addi r4, r4, lbl_8164B00A@l
/* 8138FDA8 | 4B FD B8 F9 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 8138FDAC | 38 00 00 08 */	li r0, 0x8
/* 8138FDB0 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_8138FDB4:
/* 8138FDB4 | 7F E3 FB 78 */	mr r3, r31
/* 8138FDB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138FDBC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138FDC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138FDC4 | 7C 08 03 A6 */	mtlr r0
/* 8138FDC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138FDCC | 4E 80 00 20 */	blr
.endfn pinch__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject

# .text:0xFE8 | 0x8138FDD0 | size: 0x4C
# ipl::scene::Board::pinchOff(ipl::scene::BoardObject*)
.fn pinchOff__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject, global
/* 8138FDD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138FDD4 | 7C 08 02 A6 */	mflr r0
/* 8138FDD8 | 7C 85 23 78 */	mr r5, r4
/* 8138FDDC | 3C 80 81 65 */	lis r4, lbl_8164B01D@ha
/* 8138FDE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138FDE4 | 38 84 B0 1D */	addi r4, r4, lbl_8164B01D@l
/* 8138FDE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138FDEC | 7C 7F 1B 78 */	mr r31, r3
/* 8138FDF0 | C0 25 00 34 */	lfs f1, 0x34(r5)
/* 8138FDF4 | 3C A0 81 09 */	lis r5, sSystem__Q23ipl3snd@ha
/* 8138FDF8 | 38 65 99 2C */	addi r3, r5, sSystem__Q23ipl3snd@l
/* 8138FDFC | 4B FD B8 A5 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 8138FE00 | 38 00 00 05 */	li r0, 0x5
/* 8138FE04 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 8138FE08 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138FE0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138FE10 | 7C 08 03 A6 */	mtlr r0
/* 8138FE14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138FE18 | 4E 80 00 20 */	blr
.endfn pinchOff__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject

# .text:0x1034 | 0x8138FE1C | size: 0x24
# ipl::scene::Board::isOptOut() const
.fn isOptOut__Q33ipl5scene5BoardCFv, global
/* 8138FE1C | 80 83 0F A0 */	lwz r4, 0xfa0(r3)
/* 8138FE20 | 38 60 00 00 */	li r3, 0x0
/* 8138FE24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8138FE28 | 4D 82 00 20 */	beqlr
/* 8138FE2C | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 8138FE30 | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 8138FE34 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8138FE38 | 7C 60 19 10 */	subfe r3, r0, r3
/* 8138FE3C | 4E 80 00 20 */	blr
.endfn isOptOut__Q33ipl5scene5BoardCFv

# .text:0x1058 | 0x8138FE40 | size: 0x48
# ipl::scene::Board::reappend(ipl::scene::BoardObject*)
.fn reappend__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject, global
/* 8138FE40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138FE44 | 7C 08 02 A6 */	mflr r0
/* 8138FE48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138FE4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138FE50 | 7C 9F 23 78 */	mr r31, r4
/* 8138FE54 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138FE58 | 7C 7E 1B 78 */	mr r30, r3
/* 8138FE5C | 38 63 00 68 */	addi r3, r3, 0x68
/* 8138FE60 | 48 18 24 11 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8138FE64 | 7F E4 FB 78 */	mr r4, r31
/* 8138FE68 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 8138FE6C | 48 18 22 09 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8138FE70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138FE74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138FE78 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138FE7C | 7C 08 03 A6 */	mtlr r0
/* 8138FE80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138FE84 | 4E 80 00 20 */	blr
.endfn reappend__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject

# .text:0x10A0 | 0x8138FE88 | size: 0x46C
# ipl::scene::Board::appendRecord(_CDBRecord*)
.fn appendRecord__Q33ipl5scene5BoardFP10_CDBRecord, global
/* 8138FE88 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8138FE8C | 7C 08 02 A6 */	mflr r0
/* 8138FE90 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8138FE94 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 8138FE98 | 48 26 96 21 */	bl _savegpr_25
/* 8138FE9C | 7C 7B 1B 78 */	mr r27, r3
/* 8138FEA0 | 7C 9C 23 78 */	mr r28, r4
/* 8138FEA4 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8138FEA8 | 4B FF FB 91 */	bl __ct__Q33ipl7utility4DateFv
/* 8138FEAC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138FEB0 | 38 00 00 00 */	li r0, 0x0
/* 8138FEB4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138FEB8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138FEBC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8138FEC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138FEC4 | 41 82 00 0C */	beq .L_8138FED0
/* 8138FEC8 | 3B E0 00 00 */	li r31, 0x0
/* 8138FECC | 48 00 00 08 */	b .L_8138FED4
.L_8138FED0:
/* 8138FED0 | 83 E3 00 7C */	lwz r31, 0x7c(r3)
.L_8138FED4:
/* 8138FED4 | 3B 20 00 00 */	li r25, 0x0
/* 8138FED8 | 7F 83 E3 78 */	mr r3, r28
/* 8138FEDC | 9B 21 00 30 */	stb r25, 0x30(r1)
/* 8138FEE0 | 38 81 00 38 */	addi r4, r1, 0x38
/* 8138FEE4 | 38 A1 00 3C */	addi r5, r1, 0x3c
/* 8138FEE8 | 38 C1 00 40 */	addi r6, r1, 0x40
/* 8138FEEC | 9B 21 00 31 */	stb r25, 0x31(r1)
/* 8138FEF0 | 38 E1 00 20 */	addi r7, r1, 0x20
/* 8138FEF4 | 39 01 00 1C */	addi r8, r1, 0x1c
/* 8138FEF8 | 39 21 00 18 */	addi r9, r1, 0x18
/* 8138FEFC | 9B 21 00 32 */	stb r25, 0x32(r1)
/* 8138FF00 | 3B C0 00 01 */	li r30, 0x1
/* 8138FF04 | 9B 21 00 33 */	stb r25, 0x33(r1)
/* 8138FF08 | 9B 21 00 34 */	stb r25, 0x34(r1)
/* 8138FF0C | 9B 21 00 35 */	stb r25, 0x35(r1)
/* 8138FF10 | 9B 21 00 36 */	stb r25, 0x36(r1)
/* 8138FF14 | 9B 21 00 37 */	stb r25, 0x37(r1)
/* 8138FF18 | 48 0F CC E5 */	bl CDBRecordGetCalendarTimeForce
/* 8138FF1C | 7F 83 E3 78 */	mr r3, r28
/* 8138FF20 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8138FF24 | 48 0F CC 91 */	bl CDBRecordGetKeyForce
/* 8138FF28 | 7F 83 E3 78 */	mr r3, r28
/* 8138FF2C | 38 81 00 30 */	addi r4, r1, 0x30
/* 8138FF30 | 48 0F CB E9 */	bl CDBRecordGetTypeForce
/* 8138FF34 | 7F 83 E3 78 */	mr r3, r28
/* 8138FF38 | 38 81 00 24 */	addi r4, r1, 0x24
/* 8138FF3C | 48 0F CC 25 */	bl CDBRecordGetGameCodeForce
/* 8138FF40 | 88 1B 0D 01 */	lbz r0, 0xd01(r27)
/* 8138FF44 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8138FF48 | 40 82 00 1C */	bne .L_8138FF64
/* 8138FF4C | 88 1B 0D 90 */	lbz r0, 0xd90(r27)
/* 8138FF50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138FF54 | 41 82 00 10 */	beq .L_8138FF64
/* 8138FF58 | 9B 3B 0D 01 */	stb r25, 0xd01(r27)
/* 8138FF5C | 38 60 00 00 */	li r3, 0x0
/* 8138FF60 | 48 00 03 7C */	b .L_813902DC
.L_8138FF64:
/* 8138FF64 | 7F E3 FB 78 */	mr r3, r31
/* 8138FF68 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8138FF6C | 4B FA F9 81 */	bl isValidType__Q33ipl3cdb7ManagerFPCc
/* 8138FF70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138FF74 | 40 82 00 0C */	bne .L_8138FF80
/* 8138FF78 | 38 60 00 01 */	li r3, 0x1
/* 8138FF7C | 48 00 03 60 */	b .L_813902DC
.L_8138FF80:
/* 8138FF80 | 7F 63 DB 78 */	mr r3, r27
/* 8138FF84 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8138FF88 | 48 00 32 61 */	bl is_already_read__Q33ipl5scene5BoardCFPCc
/* 8138FF8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138FF90 | 41 82 00 0C */	beq .L_8138FF9C
/* 8138FF94 | 38 60 00 01 */	li r3, 0x1
/* 8138FF98 | 48 00 03 44 */	b .L_813902DC
.L_8138FF9C:
/* 8138FF9C | 7F 63 DB 78 */	mr r3, r27
/* 8138FFA0 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8138FFA4 | 48 00 32 C1 */	bl is_exist_keytbl__Q33ipl5scene5BoardCFPCc
/* 8138FFA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138FFAC | 41 82 00 0C */	beq .L_8138FFB8
/* 8138FFB0 | 38 60 00 01 */	li r3, 0x1
/* 8138FFB4 | 48 00 03 28 */	b .L_813902DC
.L_8138FFB8:
/* 8138FFB8 | 80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8138FFBC | 38 61 00 38 */	addi r3, r1, 0x38
/* 8138FFC0 | 38 9B 0D 08 */	addi r4, r27, 0xd08
/* 8138FFC4 | 38 05 00 01 */	addi r0, r5, 0x1
/* 8138FFC8 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 8138FFCC | 4B FF FB B9 */	bl __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 8138FFD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138FFD4 | 41 82 03 00 */	beq .L_813902D4
/* 8138FFD8 | 48 1A 08 AD */	bl OSDisableInterrupts
/* 8138FFDC | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8138FFE0 | 7F 63 DB 78 */	mr r3, r27
/* 8138FFE4 | 48 00 2D 45 */	bl is_exist_diff_date__Q33ipl5scene5BoardCFv
/* 8138FFE8 | 7C 79 1B 78 */	mr r25, r3
/* 8138FFEC | 38 7B 00 74 */	addi r3, r27, 0x74
/* 8138FFF0 | 38 80 00 00 */	li r4, 0x0
/* 8138FFF4 | 48 18 22 E9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8138FFF8 | 7C 7D 1B 78 */	mr r29, r3
/* 8138FFFC | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 81390000 | 48 1A 08 AD */	bl OSRestoreInterrupts
/* 81390004 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81390008 | 40 82 00 54 */	bne .L_8139005C
/* 8139000C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81390010 | 41 82 00 4C */	beq .L_8139005C
/* 81390014 | 3F 20 80 00 */	lis r25, 0x8000
/* 81390018 | 3B 40 03 E8 */	li r26, 0x3e8
/* 8139001C | 48 00 00 38 */	b .L_81390054
.L_81390020:
/* 81390020 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 81390024 | 38 60 00 00 */	li r3, 0x0
/* 81390028 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8139002C | 7C 80 D3 96 */	divwu r4, r0, r26
/* 81390030 | 48 1A 5B 9D */	bl OSSleepTicks
/* 81390034 | 48 1A 08 51 */	bl OSDisableInterrupts
/* 81390038 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8139003C | 38 7B 00 74 */	addi r3, r27, 0x74
/* 81390040 | 38 80 00 00 */	li r4, 0x0
/* 81390044 | 48 18 22 99 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81390048 | 7C 7D 1B 78 */	mr r29, r3
/* 8139004C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81390050 | 48 1A 08 5D */	bl OSRestoreInterrupts
.L_81390054:
/* 81390054 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81390058 | 41 82 FF C8 */	beq .L_81390020
.L_8139005C:
/* 8139005C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81390060 | 41 82 02 4C */	beq .L_813902AC
/* 81390064 | 3B 3F 00 20 */	addi r25, r31, 0x20
/* 81390068 | 7F 23 CB 78 */	mr r3, r25
/* 8139006C | 48 1A 1B 9D */	bl fn_81531C08
/* 81390070 | 7F 23 CB 78 */	mr r3, r25
/* 81390074 | 48 1A 1C 71 */	bl fn_81531CE4
/* 81390078 | 7F E3 FB 78 */	mr r3, r31
/* 8139007C | 7F 84 E3 78 */	mr r4, r28
/* 81390080 | 4B FA FE D1 */	bl open__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 81390084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390088 | 41 82 02 50 */	beq .L_813902D8
/* 8139008C | 7F E3 FB 78 */	mr r3, r31
/* 81390090 | 7F 84 E3 78 */	mr r4, r28
/* 81390094 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81390098 | 4B FA FD 71 */	bl getDataSize__Q33ipl3cdb7ManagerFP10_CDBRecordPUl
/* 8139009C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813900A0 | 40 82 00 0C */	bne .L_813900AC
/* 813900A4 | 38 60 00 01 */	li r3, 0x1
/* 813900A8 | 48 00 02 34 */	b .L_813902DC
.L_813900AC:
/* 813900AC | 3C 60 00 03 */	lis r3, 0x3
/* 813900B0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813900B4 | 38 03 20 00 */	addi r0, r3, 0x2000
/* 813900B8 | 7C 04 00 40 */	cmplw r4, r0
/* 813900BC | 40 81 00 0C */	ble .L_813900C8
/* 813900C0 | 38 60 00 01 */	li r3, 0x1
/* 813900C4 | 48 00 02 18 */	b .L_813902DC
.L_813900C8:
/* 813900C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813900CC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813900D0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813900D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813900D8 | 41 82 00 0C */	beq .L_813900E4
/* 813900DC | 38 60 00 00 */	li r3, 0x0
/* 813900E0 | 48 00 00 08 */	b .L_813900E8
.L_813900E4:
/* 813900E4 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_813900E8:
/* 813900E8 | 7F 84 E3 78 */	mr r4, r28
/* 813900EC | 38 A1 00 28 */	addi r5, r1, 0x28
/* 813900F0 | 4B FA FD 89 */	bl getCDBId__Q33ipl3cdb7ManagerFP10_CDBRecordP6_CDBId
/* 813900F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813900F8 | 40 82 00 0C */	bne .L_81390104
/* 813900FC | 38 60 00 01 */	li r3, 0x1
/* 81390100 | 48 00 01 DC */	b .L_813902DC
.L_81390104:
/* 81390104 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 81390108 | 38 A0 00 20 */	li r5, 0x20
/* 8139010C | 80 9D 00 C4 */	lwz r4, 0xc4(r29)
/* 81390110 | 48 26 7F C5 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81390114 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390118 | 7C 79 1B 78 */	mr r25, r3
/* 8139011C | 40 82 00 0C */	bne .L_81390128
/* 81390120 | 38 60 00 00 */	li r3, 0x0
/* 81390124 | 48 00 01 B8 */	b .L_813902DC
.L_81390128:
/* 81390128 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8139012C | 7F E3 FB 78 */	mr r3, r31
/* 81390130 | 7F 84 E3 78 */	mr r4, r28
/* 81390134 | 7F 25 CB 78 */	mr r5, r25
/* 81390138 | 4B FA FE 81 */	bl read__Q33ipl3cdb7ManagerFP10_CDBRecordPvUl
/* 8139013C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390140 | 40 82 00 10 */	bne .L_81390150
/* 81390144 | 7F 23 CB 78 */	mr r3, r25
/* 81390148 | 48 26 7F A5 */	bl __dla__FPv
/* 8139014C | 48 00 01 30 */	b .L_8139027C
.L_81390150:
/* 81390150 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 81390154 | 3B C0 00 01 */	li r30, 0x1
/* 81390158 | 3C 03 AD B7 */	subis r0, r3, 0x5249
/* 8139015C | 28 00 5F 35 */	cmplwi r0, 0x5f35
/* 81390160 | 40 82 01 14 */	bne .L_81390274
/* 81390164 | 7F E3 FB 78 */	mr r3, r31
/* 81390168 | 7F 24 CB 78 */	mr r4, r25
/* 8139016C | 4B FA F7 45 */	bl isValidHeader__Q33ipl3cdb7ManagerFPC9RBRHeader
/* 81390170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390174 | 41 82 01 00 */	beq .L_81390274
/* 81390178 | 48 1A 07 0D */	bl OSDisableInterrupts
/* 8139017C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81390180 | 38 61 00 38 */	addi r3, r1, 0x38
/* 81390184 | 38 9B 0D 08 */	addi r4, r27, 0xd08
/* 81390188 | 4B FF F9 FD */	bl __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 8139018C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390190 | 41 82 00 CC */	beq .L_8139025C
/* 81390194 | 88 1B 0D 01 */	lbz r0, 0xd01(r27)
/* 81390198 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8139019C | 40 82 00 30 */	bne .L_813901CC
/* 813901A0 | 88 1B 0D 90 */	lbz r0, 0xd90(r27)
/* 813901A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813901A8 | 41 82 00 24 */	beq .L_813901CC
/* 813901AC | 38 00 00 00 */	li r0, 0x0
/* 813901B0 | 7F 23 CB 78 */	mr r3, r25
/* 813901B4 | 98 1B 0D 01 */	stb r0, 0xd01(r27)
/* 813901B8 | 48 26 7F 35 */	bl __dla__FPv
/* 813901BC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813901C0 | 48 1A 06 ED */	bl OSRestoreInterrupts
/* 813901C4 | 38 60 00 00 */	li r3, 0x0
/* 813901C8 | 48 00 01 14 */	b .L_813902DC
.L_813901CC:
/* 813901CC | 80 9B 0D 20 */	lwz r4, 0xd20(r27)
/* 813901D0 | 7F A3 EB 78 */	mr r3, r29
/* 813901D4 | 80 C1 00 24 */	lwz r6, 0x24(r1)
/* 813901D8 | 7F 25 CB 78 */	mr r5, r25
/* 813901DC | 38 E1 00 28 */	addi r7, r1, 0x28
/* 813901E0 | 39 01 00 48 */	addi r8, r1, 0x48
/* 813901E4 | 39 21 00 38 */	addi r9, r1, 0x38
/* 813901E8 | 48 00 3D 8D */	bl create__Q33ipl5scene11BoardObjectFPQ33ipl4nand10LayoutFilePUcUlRC6_CDBIdRC13_CDBRecordKeyRCQ33ipl7utility4Date
/* 813901EC | 7F A4 EB 78 */	mr r4, r29
/* 813901F0 | 38 7B 00 74 */	addi r3, r27, 0x74
/* 813901F4 | 48 18 20 7D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813901F8 | 7F A4 EB 78 */	mr r4, r29
/* 813901FC | 38 7B 00 68 */	addi r3, r27, 0x68
/* 81390200 | 48 18 1E 75 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81390204 | 7F 83 E3 78 */	mr r3, r28
/* 81390208 | 38 9B 0D 44 */	addi r4, r27, 0xd44
/* 8139020C | 38 BB 0D 48 */	addi r5, r27, 0xd48
/* 81390210 | 38 DB 0D 4C */	addi r6, r27, 0xd4c
/* 81390214 | 38 FB 0D 50 */	addi r7, r27, 0xd50
/* 81390218 | 39 1B 0D 54 */	addi r8, r27, 0xd54
/* 8139021C | 39 3B 0D 58 */	addi r9, r27, 0xd58
/* 81390220 | 48 0F C9 DD */	bl CDBRecordGetCalendarTimeForce
/* 81390224 | 38 7B 0D 60 */	addi r3, r27, 0xd60
/* 81390228 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8139022C | 38 A0 00 30 */	li r5, 0x30
/* 81390230 | 4B FA 00 01 */	bl memcpy
/* 81390234 | 88 1B 0D 90 */	lbz r0, 0xd90(r27)
/* 81390238 | 38 60 00 01 */	li r3, 0x1
/* 8139023C | 98 7B 0D 40 */	stb r3, 0xd40(r27)
/* 81390240 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390244 | 40 82 00 24 */	bne .L_81390268
/* 81390248 | 38 7B 0D 90 */	addi r3, r27, 0xd90
/* 8139024C | 38 9B 0D 40 */	addi r4, r27, 0xd40
/* 81390250 | 38 A0 00 50 */	li r5, 0x50
/* 81390254 | 4B F9 FF DD */	bl memcpy
/* 81390258 | 48 00 00 10 */	b .L_81390268
.L_8139025C:
/* 8139025C | 7F 23 CB 78 */	mr r3, r25
/* 81390260 | 3B C0 00 00 */	li r30, 0x0
/* 81390264 | 48 26 7E 89 */	bl __dla__FPv
.L_81390268:
/* 81390268 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8139026C | 48 1A 06 41 */	bl OSRestoreInterrupts
/* 81390270 | 48 00 00 0C */	b .L_8139027C
.L_81390274:
/* 81390274 | 7F 23 CB 78 */	mr r3, r25
/* 81390278 | 48 26 7E 75 */	bl __dla__FPv
.L_8139027C:
/* 8139027C | 7F E3 FB 78 */	mr r3, r31
/* 81390280 | 7F 84 E3 78 */	mr r4, r28
/* 81390284 | 4B FA FE A1 */	bl close__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 81390288 | 80 1B 0F 9C */	lwz r0, 0xf9c(r27)
/* 8139028C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390290 | 40 82 00 10 */	bne .L_813902A0
/* 81390294 | 7F 63 DB 78 */	mr r3, r27
/* 81390298 | 48 00 23 5D */	bl hide_licon__Q33ipl5scene5BoardFv
/* 8139029C | 48 00 00 3C */	b .L_813902D8
.L_813902A0:
/* 813902A0 | 7F 63 DB 78 */	mr r3, r27
/* 813902A4 | 48 00 21 C1 */	bl hide_ricon__Q33ipl5scene5BoardFv
/* 813902A8 | 48 00 00 30 */	b .L_813902D8
.L_813902AC:
/* 813902AC | 80 1B 0F 9C */	lwz r0, 0xf9c(r27)
/* 813902B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813902B4 | 40 82 00 10 */	bne .L_813902C4
/* 813902B8 | 7F 63 DB 78 */	mr r3, r27
/* 813902BC | 48 00 22 29 */	bl show_licon__Q33ipl5scene5BoardFv
/* 813902C0 | 48 00 00 0C */	b .L_813902CC
.L_813902C4:
/* 813902C4 | 7F 63 DB 78 */	mr r3, r27
/* 813902C8 | 48 00 20 8D */	bl show_ricon__Q33ipl5scene5BoardFv
.L_813902CC:
/* 813902CC | 3B C0 00 00 */	li r30, 0x0
/* 813902D0 | 48 00 00 08 */	b .L_813902D8
.L_813902D4:
/* 813902D4 | 3B C0 00 00 */	li r30, 0x0
.L_813902D8:
/* 813902D8 | 7F C3 F3 78 */	mr r3, r30
.L_813902DC:
/* 813902DC | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813902E0 | 48 26 92 25 */	bl _restgpr_25
/* 813902E4 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 813902E8 | 7C 08 03 A6 */	mtlr r0
/* 813902EC | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 813902F0 | 4E 80 00 20 */	blr
.endfn appendRecord__Q33ipl5scene5BoardFP10_CDBRecord

# .text:0x150C | 0x813902F4 | size: 0x184
# ipl::scene::Board::stt_wait_cdb_init()
.fn stt_wait_cdb_init__Q33ipl5scene5BoardFv, global
/* 813902F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813902F8 | 7C 08 02 A6 */	mflr r0
/* 813902FC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81390300 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81390304 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81390308 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139030C | 7C 7F 1B 78 */	mr r31, r3
/* 81390310 | 38 60 00 00 */	li r3, 0x0
/* 81390314 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81390318 | 88 04 02 B2 */	lbz r0, 0x2b2(r4)
/* 8139031C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390320 | 41 82 00 14 */	beq .L_81390334
/* 81390324 | 88 04 02 B4 */	lbz r0, 0x2b4(r4)
/* 81390328 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139032C | 41 82 00 08 */	beq .L_81390334
/* 81390330 | 38 60 00 01 */	li r3, 0x1
.L_81390334:
/* 81390334 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390338 | 40 82 00 38 */	bne .L_81390370
/* 8139033C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390340 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390344 | 88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 81390348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139034C | 41 82 00 10 */	beq .L_8139035C
/* 81390350 | 88 03 02 BB */	lbz r0, 0x2bb(r3)
/* 81390354 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390358 | 40 82 00 18 */	bne .L_81390370
.L_8139035C:
/* 8139035C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390360 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390364 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390368 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139036C | 41 82 00 F4 */	beq .L_81390460
.L_81390370:
/* 81390370 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81390374 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81390378 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8139037C | 4B FA 79 A1 */	bl isInitialized__Q33ipl7channel7ManagerCFv
/* 81390380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390384 | 41 82 00 DC */	beq .L_81390460
/* 81390388 | 80 9E 00 B4 */	lwz r4, 0xb4(r30)
/* 8139038C | 38 00 00 01 */	li r0, 0x1
/* 81390390 | 7F E3 FB 78 */	mr r3, r31
/* 81390394 | 7F E5 FB 78 */	mr r5, r31
/* 81390398 | 98 04 00 05 */	stb r0, 0x5(r4)
/* 8139039C | 38 80 00 05 */	li r4, 0x5
/* 813903A0 | 38 C0 00 00 */	li r6, 0x0
/* 813903A4 | 38 E0 00 00 */	li r7, 0x0
/* 813903A8 | 48 07 9A E1 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813903AC | 7F E3 FB 78 */	mr r3, r31
/* 813903B0 | 7F E5 FB 78 */	mr r5, r31
/* 813903B4 | 38 80 00 02 */	li r4, 0x2
/* 813903B8 | 38 C0 00 00 */	li r6, 0x0
/* 813903BC | 38 E0 00 00 */	li r7, 0x0
/* 813903C0 | 48 07 9A C9 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813903C4 | 7F E3 FB 78 */	mr r3, r31
/* 813903C8 | 7F E5 FB 78 */	mr r5, r31
/* 813903CC | 38 80 00 06 */	li r4, 0x6
/* 813903D0 | 38 C0 00 00 */	li r6, 0x0
/* 813903D4 | 38 E0 00 00 */	li r7, 0x0
/* 813903D8 | 48 07 9A B1 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813903DC | 88 1E 02 BC */	lbz r0, 0x2bc(r30)
/* 813903E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813903E4 | 41 82 00 0C */	beq .L_813903F0
/* 813903E8 | 38 00 00 00 */	li r0, 0x0
/* 813903EC | 48 00 00 08 */	b .L_813903F4
.L_813903F0:
/* 813903F0 | 80 1E 00 7C */	lwz r0, 0x7c(r30)
.L_813903F4:
/* 813903F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813903F8 | 41 82 00 60 */	beq .L_81390458
/* 813903FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390400 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390404 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390408 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139040C | 41 82 00 0C */	beq .L_81390418
/* 81390410 | 38 60 00 00 */	li r3, 0x0
/* 81390414 | 48 00 00 08 */	b .L_8139041C
.L_81390418:
/* 81390418 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8139041C:
/* 8139041C | 4B FA F6 49 */	bl isOverFlow__Q33ipl3cdb7ManagerCFv
/* 81390420 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390424 | 40 82 00 34 */	bne .L_81390458
/* 81390428 | 7F E3 FB 78 */	mr r3, r31
/* 8139042C | 48 00 16 A9 */	bl exec_count_task__Q33ipl5scene5BoardFv
/* 81390430 | 38 00 00 01 */	li r0, 0x1
/* 81390434 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390438 | 98 1F 0D 00 */	stb r0, 0xd00(r31)
/* 8139043C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390440 | 3C 80 81 39 */	lis r4, read_task___Q23ipl5sceneFPv@ha
/* 81390444 | 7F E5 FB 78 */	mr r5, r31
/* 81390448 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 8139044C | 38 84 1B 64 */	addi r4, r4, read_task___Q23ipl5sceneFPv@l
/* 81390450 | 38 C0 00 00 */	li r6, 0x0
/* 81390454 | 48 26 7D F5 */	bl fn_815F8248
.L_81390458:
/* 81390458 | 38 00 00 01 */	li r0, 0x1
/* 8139045C | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_81390460:
/* 81390460 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81390464 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81390468 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139046C | 7C 08 03 A6 */	mtlr r0
/* 81390470 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81390474 | 4E 80 00 20 */	blr
.endfn stt_wait_cdb_init__Q33ipl5scene5BoardFv

# .text:0x1690 | 0x81390478 | size: 0x22C
# ipl::scene::Board::stt_wait_init()
.fn stt_wait_init__Q33ipl5scene5BoardFv, global
/* 81390478 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139047C | 7C 08 02 A6 */	mflr r0
/* 81390480 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81390484 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81390488 | 48 26 90 41 */	bl _savegpr_29
/* 8139048C | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81390490 | 7C 7F 1B 78 */	mr r31, r3
/* 81390494 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81390498 | 38 80 00 06 */	li r4, 0x6
/* 8139049C | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813904A0 | 48 07 AC 99 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813904A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813904A8 | 41 82 01 E4 */	beq .L_8139068C
/* 813904AC | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 813904B0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 813904B4 | 41 82 01 D8 */	beq .L_8139068C
/* 813904B8 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813904BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813904C0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813904C4 | 7D 89 03 A6 */	mtctr r12
/* 813904C8 | 4E 80 04 21 */	bctrl
/* 813904CC | 88 1D 02 BC */	lbz r0, 0x2bc(r29)
/* 813904D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813904D4 | 41 82 00 6C */	beq .L_81390540
/* 813904D8 | 3B C0 00 10 */	li r30, 0x10
/* 813904DC | 38 80 00 01 */	li r4, 0x1
/* 813904E0 | 93 DF 00 60 */	stw r30, 0x60(r31)
/* 813904E4 | 38 A0 00 1B */	li r5, 0x1b
/* 813904E8 | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 813904EC | 4B FC 68 C5 */	bl set__Q23ipl14WarningHandlerFQ33ipl14WarningHandler4TypeUl
/* 813904F0 | 88 1D 02 BB */	lbz r0, 0x2bb(r29)
/* 813904F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813904F8 | 41 82 01 94 */	beq .L_8139068C
/* 813904FC | 93 DF 00 60 */	stw r30, 0x60(r31)
/* 81390500 | 38 80 00 01 */	li r4, 0x1
/* 81390504 | 38 A0 00 9A */	li r5, 0x9a
/* 81390508 | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8139050C | 4B FC 68 A5 */	bl set__Q23ipl14WarningHandlerFQ33ipl14WarningHandler4TypeUl
/* 81390510 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81390514 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81390518 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8139051C | 7D 89 03 A6 */	mtctr r12
/* 81390520 | 4E 80 04 21 */	bctrl
/* 81390524 | 7F E3 FB 78 */	mr r3, r31
/* 81390528 | 38 80 00 15 */	li r4, 0x15
/* 8139052C | 38 A0 00 00 */	li r5, 0x0
/* 81390530 | 48 07 9A 65 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 81390534 | 38 00 00 0D */	li r0, 0xd
/* 81390538 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 8139053C | 48 00 01 50 */	b .L_8139068C
.L_81390540:
/* 81390540 | 88 1D 02 BB */	lbz r0, 0x2bb(r29)
/* 81390544 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390548 | 41 82 00 4C */	beq .L_81390594
/* 8139054C | 38 00 00 10 */	li r0, 0x10
/* 81390550 | 38 80 00 01 */	li r4, 0x1
/* 81390554 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81390558 | 38 A0 00 9A */	li r5, 0x9a
/* 8139055C | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 81390560 | 4B FC 68 51 */	bl set__Q23ipl14WarningHandlerFQ33ipl14WarningHandler4TypeUl
/* 81390564 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81390568 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139056C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81390570 | 7D 89 03 A6 */	mtctr r12
/* 81390574 | 4E 80 04 21 */	bctrl
/* 81390578 | 7F E3 FB 78 */	mr r3, r31
/* 8139057C | 38 80 00 15 */	li r4, 0x15
/* 81390580 | 38 A0 00 00 */	li r5, 0x0
/* 81390584 | 48 07 9A 11 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 81390588 | 38 00 00 0D */	li r0, 0xd
/* 8139058C | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81390590 | 48 00 00 FC */	b .L_8139068C
.L_81390594:
/* 81390594 | 88 1D 02 BA */	lbz r0, 0x2ba(r29)
/* 81390598 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139059C | 41 82 00 24 */	beq .L_813905C0
/* 813905A0 | 38 00 00 10 */	li r0, 0x10
/* 813905A4 | 38 80 00 01 */	li r4, 0x1
/* 813905A8 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 813905AC | 38 A0 00 0B */	li r5, 0xb
/* 813905B0 | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 813905B4 | 4B FC 67 FD */	bl set__Q23ipl14WarningHandlerFQ33ipl14WarningHandler4TypeUl
/* 813905B8 | 38 00 00 00 */	li r0, 0x0
/* 813905BC | 98 1D 02 BA */	stb r0, 0x2ba(r29)
.L_813905C0:
/* 813905C0 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813905C4 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813905C8 | 80 66 00 70 */	lwz r3, 0x70(r6)
/* 813905CC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813905D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813905D4 | 41 82 00 1C */	beq .L_813905F0
/* 813905D8 | 38 00 00 10 */	li r0, 0x10
/* 813905DC | 38 80 00 01 */	li r4, 0x1
/* 813905E0 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 813905E4 | 38 A0 01 7D */	li r5, 0x17d
/* 813905E8 | 80 66 00 A0 */	lwz r3, 0xa0(r6)
/* 813905EC | 4B FC 67 C5 */	bl set__Q23ipl14WarningHandlerFQ33ipl14WarningHandler4TypeUl
.L_813905F0:
/* 813905F0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813905F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813905F8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813905FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390600 | 41 82 00 0C */	beq .L_8139060C
/* 81390604 | 38 60 00 00 */	li r3, 0x0
/* 81390608 | 48 00 00 08 */	b .L_81390610
.L_8139060C:
/* 8139060C | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_81390610:
/* 81390610 | 4B FA F4 55 */	bl isOverFlow__Q33ipl3cdb7ManagerCFv
/* 81390614 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390618 | 41 82 00 2C */	beq .L_81390644
/* 8139061C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390620 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390624 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81390628 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139062C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81390630 | 7D 89 03 A6 */	mtctr r12
/* 81390634 | 4E 80 04 21 */	bctrl
/* 81390638 | 4B FA 4B 19 */	bl backup_run__Q23ipl6SystemFv
/* 8139063C | 7F E3 FB 78 */	mr r3, r31
/* 81390640 | 48 00 2C 99 */	bl after_backup__Q33ipl5scene5BoardFv
.L_81390644:
/* 81390644 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390648 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139064C | 88 03 02 BD */	lbz r0, 0x2bd(r3)
/* 81390650 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390654 | 41 82 00 14 */	beq .L_81390668
/* 81390658 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139065C | 38 80 00 05 */	li r4, 0x5
/* 81390660 | 48 07 AA D9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81390664 | 48 00 CA 71 */	bl startNewMailAnm__Q33ipl5scene6ButtonFv
.L_81390668:
/* 81390668 | 38 00 00 02 */	li r0, 0x2
/* 8139066C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390670 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81390674 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390678 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139067C | 80 03 01 2C */	lwz r0, 0x12c(r3)
/* 81390680 | 2C 00 00 24 */	cmpwi r0, 0x24
/* 81390684 | 41 82 00 08 */	beq .L_8139068C
/* 81390688 | 4B FA 36 65 */	bl startReceiveSchedule__Q23ipl6SystemFv
.L_8139068C:
/* 8139068C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81390690 | 48 26 8E 85 */	bl _restgpr_29
/* 81390694 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81390698 | 7C 08 03 A6 */	mtlr r0
/* 8139069C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813906A0 | 4E 80 00 20 */	blr
.endfn stt_wait_init__Q33ipl5scene5BoardFv

# .text:0x18BC | 0x813906A4 | size: 0x2AC
# ipl::scene::Board::stt_wait_child_dst()
.fn stt_wait_child_dst__Q33ipl5scene5BoardFv, global
/* 813906A4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813906A8 | 7C 08 02 A6 */	mflr r0
/* 813906AC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813906B0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813906B4 | 48 26 8E 11 */	bl _savegpr_28
/* 813906B8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813906BC | 7C 7E 1B 78 */	mr r30, r3
/* 813906C0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813906C4 | 38 80 00 05 */	li r4, 0x5
/* 813906C8 | 83 85 00 64 */	lwz r28, 0x64(r5)
/* 813906CC | 7F 83 E3 78 */	mr r3, r28
/* 813906D0 | 48 07 AA 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813906D4 | 7C 7F 1B 78 */	mr r31, r3
/* 813906D8 | 7F 83 E3 78 */	mr r3, r28
/* 813906DC | 38 80 00 02 */	li r4, 0x2
/* 813906E0 | 48 07 AA 59 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813906E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813906E8 | 40 82 00 D0 */	bne .L_813907B8
/* 813906EC | 7F 83 E3 78 */	mr r3, r28
/* 813906F0 | 38 80 00 07 */	li r4, 0x7
/* 813906F4 | 48 07 AA 45 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813906F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813906FC | 40 82 00 BC */	bne .L_813907B8
/* 81390700 | 7F 83 E3 78 */	mr r3, r28
/* 81390704 | 38 80 00 08 */	li r4, 0x8
/* 81390708 | 48 07 AA 31 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139070C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390710 | 40 82 00 A8 */	bne .L_813907B8
/* 81390714 | 80 1C 01 04 */	lwz r0, 0x104(r28)
/* 81390718 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139071C | 40 82 00 9C */	bne .L_813907B8
/* 81390720 | 88 1E 0F B4 */	lbz r0, 0xfb4(r30)
/* 81390724 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390728 | 40 82 02 10 */	bne .L_81390938
/* 8139072C | 88 1E 0F 9A */	lbz r0, 0xf9a(r30)
/* 81390730 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390734 | 41 82 00 2C */	beq .L_81390760
/* 81390738 | 80 7E 0D 28 */	lwz r3, 0xd28(r30)
/* 8139073C | 38 80 00 01 */	li r4, 0x1
/* 81390740 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81390744 | 48 18 1B D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81390748 | 7C 7D 1B 78 */	mr r29, r3
/* 8139074C | 4B FD 21 25 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81390750 | 38 60 00 01 */	li r3, 0x1
/* 81390754 | 38 00 00 00 */	li r0, 0x0
/* 81390758 | 90 7D 00 14 */	stw r3, 0x14(r29)
/* 8139075C | 98 1E 0F 9A */	stb r0, 0xf9a(r30)
.L_81390760:
/* 81390760 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81390764 | 7F C4 F3 78 */	mr r4, r30
/* 81390768 | 41 82 00 08 */	beq .L_81390770
/* 8139076C | 38 9E 00 54 */	addi r4, r30, 0x54
.L_81390770:
/* 81390770 | 7F E3 FB 78 */	mr r3, r31
/* 81390774 | 38 A0 00 00 */	li r5, 0x0
/* 81390778 | 48 00 C1 C5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8139077C | 7F C3 F3 78 */	mr r3, r30
/* 81390780 | 48 00 21 CD */	bl edge_arrow__Q33ipl5scene5BoardFv
/* 81390784 | 7F C3 F3 78 */	mr r3, r30
/* 81390788 | 48 00 17 FD */	bl set_text_date__Q33ipl5scene5BoardFv
/* 8139078C | 7F C3 F3 78 */	mr r3, r30
/* 81390790 | 48 00 1E E5 */	bl enable_ricon__Q33ipl5scene5BoardFv
/* 81390794 | 7F C3 F3 78 */	mr r3, r30
/* 81390798 | 48 00 1F E1 */	bl enable_licon__Q33ipl5scene5BoardFv
/* 8139079C | 7F E3 FB 78 */	mr r3, r31
/* 813907A0 | 48 00 C9 E9 */	bl stopNewMailAnm__Q33ipl5scene6ButtonFv
/* 813907A4 | 38 60 00 01 */	li r3, 0x1
/* 813907A8 | 38 00 00 05 */	li r0, 0x5
/* 813907AC | 98 7E 0F 9B */	stb r3, 0xf9b(r30)
/* 813907B0 | 90 1E 00 60 */	stw r0, 0x60(r30)
/* 813907B4 | 48 00 01 84 */	b .L_81390938
.L_813907B8:
/* 813907B8 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813907BC | 38 80 00 03 */	li r4, 0x3
/* 813907C0 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813907C4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813907C8 | 48 07 A9 71 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813907CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813907D0 | 41 82 00 1C */	beq .L_813907EC
/* 813907D4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813907D8 | 38 80 00 03 */	li r4, 0x3
/* 813907DC | 48 07 A9 5D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813907E0 | 48 02 57 31 */	bl isInLaunching__Q33ipl5scene12ChannelTitleCFv
/* 813907E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813907E8 | 40 82 01 50 */	bne .L_81390938
.L_813907EC:
/* 813907EC | 7F 83 E3 78 */	mr r3, r28
/* 813907F0 | 38 80 00 02 */	li r4, 0x2
/* 813907F4 | 48 07 A9 45 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813907F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813907FC | 41 82 00 58 */	beq .L_81390854
/* 81390800 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81390804 | 38 61 00 14 */	addi r3, r1, 0x14
/* 81390808 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8139080C | 38 9D 00 3C */	addi r4, r29, 0x3c
/* 81390810 | 4B FF E7 89 */	bl __ct__Q33ipl7utility4DateFRC14OSCalendarTime
/* 81390814 | 7C 64 1B 78 */	mr r4, r3
/* 81390818 | 38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8139081C | 4B FF F1 85 */	bl __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81390820 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390824 | 41 82 00 30 */	beq .L_81390854
/* 81390828 | 7F C3 F3 78 */	mr r3, r30
/* 8139082C | 48 00 12 A9 */	bl exec_count_task__Q33ipl5scene5BoardFv
/* 81390830 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81390834 | 38 9D 00 3C */	addi r4, r29, 0x3c
/* 81390838 | 4B FF E7 61 */	bl __ct__Q33ipl7utility4DateFRC14OSCalendarTime
/* 8139083C | 7C 64 1B 78 */	mr r4, r3
/* 81390840 | 7F C3 F3 78 */	mr r3, r30
/* 81390844 | 4B FF F0 81 */	bl updateDate__Q33ipl5scene5BoardFRCQ33ipl7utility4Date
/* 81390848 | 7F E3 FB 78 */	mr r3, r31
/* 8139084C | 48 00 C9 3D */	bl stopNewMailAnm__Q33ipl5scene6ButtonFv
/* 81390850 | 48 00 00 E8 */	b .L_81390938
.L_81390854:
/* 81390854 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390858 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139085C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390860 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390864 | 41 82 00 0C */	beq .L_81390870
/* 81390868 | 38 60 00 00 */	li r3, 0x0
/* 8139086C | 48 00 00 08 */	b .L_81390874
.L_81390870:
/* 81390870 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81390874:
/* 81390874 | 88 03 0A 30 */	lbz r0, 0xa30(r3)
/* 81390878 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139087C | 41 82 00 48 */	beq .L_813908C4
/* 81390880 | 7F C3 F3 78 */	mr r3, r30
/* 81390884 | 48 00 12 51 */	bl exec_count_task__Q33ipl5scene5BoardFv
/* 81390888 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139088C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390890 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390894 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390898 | 41 82 00 0C */	beq .L_813908A4
/* 8139089C | 38 80 00 00 */	li r4, 0x0
/* 813908A0 | 48 00 00 08 */	b .L_813908A8
.L_813908A4:
/* 813908A4 | 80 83 00 8C */	lwz r4, 0x8c(r3)
.L_813908A8:
/* 813908A8 | 38 00 00 00 */	li r0, 0x0
/* 813908AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813908B0 | 98 04 0A 30 */	stb r0, 0xa30(r4)
/* 813908B4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813908B8 | 38 00 00 01 */	li r0, 0x1
/* 813908BC | 98 03 02 BD */	stb r0, 0x2bd(r3)
/* 813908C0 | 48 00 00 78 */	b .L_81390938
.L_813908C4:
/* 813908C4 | 7F 83 E3 78 */	mr r3, r28
/* 813908C8 | 38 80 00 02 */	li r4, 0x2
/* 813908CC | 48 07 A8 6D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813908D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813908D4 | 41 82 00 48 */	beq .L_8139091C
/* 813908D8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813908DC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813908E0 | 88 03 02 BD */	lbz r0, 0x2bd(r3)
/* 813908E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813908E8 | 41 82 00 34 */	beq .L_8139091C
/* 813908EC | 80 7E 0F A8 */	lwz r3, 0xfa8(r30)
/* 813908F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813908F4 | 41 80 00 28 */	blt .L_8139091C
/* 813908F8 | 80 1E 0F A4 */	lwz r0, 0xfa4(r30)
/* 813908FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390900 | 40 81 00 1C */	ble .L_8139091C
/* 81390904 | 7C 03 00 00 */	cmpw r3, r0
/* 81390908 | 40 80 00 14 */	bge .L_8139091C
/* 8139090C | 90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 81390910 | 7F E3 FB 78 */	mr r3, r31
/* 81390914 | 48 00 C7 C1 */	bl startNewMailAnm__Q33ipl5scene6ButtonFv
/* 81390918 | 48 00 00 20 */	b .L_81390938
.L_8139091C:
/* 8139091C | 80 1E 0F B8 */	lwz r0, 0xfb8(r30)
/* 81390920 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390924 | 41 82 00 14 */	beq .L_81390938
/* 81390928 | 38 00 00 00 */	li r0, 0x0
/* 8139092C | 7F E3 FB 78 */	mr r3, r31
/* 81390930 | 90 1E 0F B8 */	stw r0, 0xfb8(r30)
/* 81390934 | 48 00 C7 A1 */	bl startNewMailAnm__Q33ipl5scene6ButtonFv
.L_81390938:
/* 81390938 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139093C | 48 26 8B D5 */	bl _restgpr_28
/* 81390940 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81390944 | 7C 08 03 A6 */	mtlr r0
/* 81390948 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139094C | 4E 80 00 20 */	blr
.endfn stt_wait_child_dst__Q33ipl5scene5BoardFv

# .text:0x1B68 | 0x81390950 | size: 0x80
# ipl::scene::Board::stt_wait_child_cst()
.fn stt_wait_child_cst__Q33ipl5scene5BoardFv, global
/* 81390950 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81390954 | 7C 08 02 A6 */	mflr r0
/* 81390958 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139095C | 38 80 00 02 */	li r4, 0x2
/* 81390960 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81390964 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81390968 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139096C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81390970 | 7C 7E 1B 78 */	mr r30, r3
/* 81390974 | 83 E5 00 64 */	lwz r31, 0x64(r5)
/* 81390978 | 7F E3 FB 78 */	mr r3, r31
/* 8139097C | 48 07 A7 BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81390980 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390984 | 40 82 00 2C */	bne .L_813909B0
/* 81390988 | 7F E3 FB 78 */	mr r3, r31
/* 8139098C | 38 80 00 07 */	li r4, 0x7
/* 81390990 | 48 07 A7 A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81390994 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390998 | 40 82 00 18 */	bne .L_813909B0
/* 8139099C | 7F E3 FB 78 */	mr r3, r31
/* 813909A0 | 38 80 00 08 */	li r4, 0x8
/* 813909A4 | 48 07 A7 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813909A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813909AC | 41 82 00 0C */	beq .L_813909B8
.L_813909B0:
/* 813909B0 | 38 00 00 02 */	li r0, 0x2
/* 813909B4 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_813909B8:
/* 813909B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813909BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813909C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813909C4 | 7C 08 03 A6 */	mtlr r0
/* 813909C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813909CC | 4E 80 00 20 */	blr
.endfn stt_wait_child_cst__Q33ipl5scene5BoardFv

# .text:0x1BE8 | 0x813909D0 | size: 0x10C
# ipl::scene::Board::stt_wait_scroll()
.fn stt_wait_scroll__Q33ipl5scene5BoardFv, global
/* 813909D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813909D4 | 7C 08 02 A6 */	mflr r0
/* 813909D8 | 38 80 00 00 */	li r4, 0x0
/* 813909DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813909E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813909E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813909E8 | 7C 7E 1B 78 */	mr r30, r3
/* 813909EC | 80 63 0D 24 */	lwz r3, 0xd24(r3)
/* 813909F0 | 4B FD A0 E1 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813909F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813909F8 | 40 82 00 CC */	bne .L_81390AC4
/* 813909FC | 7F C3 F3 78 */	mr r3, r30
/* 81390A00 | 48 00 27 85 */	bl is_wait_to_clean_task__Q33ipl5scene5BoardCFv
/* 81390A04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390A08 | 40 82 00 BC */	bne .L_81390AC4
/* 81390A0C | 88 1E 0D 02 */	lbz r0, 0xd02(r30)
/* 81390A10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390A14 | 40 82 00 B0 */	bne .L_81390AC4
/* 81390A18 | 80 7E 0D 24 */	lwz r3, 0xd24(r30)
/* 81390A1C | 38 80 00 00 */	li r4, 0x0
/* 81390A20 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81390A24 | 48 18 18 F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81390A28 | 4B FD 91 FD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81390A2C | 7F C3 F3 78 */	mr r3, r30
/* 81390A30 | 48 00 15 55 */	bl set_text_date__Q33ipl5scene5BoardFv
/* 81390A34 | 38 7E 0D 14 */	addi r3, r30, 0xd14
/* 81390A38 | 38 9E 0D 08 */	addi r4, r30, 0xd08
/* 81390A3C | 4B FF F0 91 */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 81390A40 | 7F C3 F3 78 */	mr r3, r30
/* 81390A44 | 48 00 20 BD */	bl return_to_freelist_if_diff_date__Q33ipl5scene5BoardFv
/* 81390A48 | 38 00 00 04 */	li r0, 0x4
/* 81390A4C | 38 A0 00 00 */	li r5, 0x0
/* 81390A50 | 38 60 00 00 */	li r3, 0x0
/* 81390A54 | 7C 09 03 A6 */	mtctr r0
.L_81390A58:
/* 81390A58 | 7C 9E 1A 14 */	add r4, r30, r3
/* 81390A5C | 38 63 00 04 */	addi r3, r3, 0x4
/* 81390A60 | 90 A4 0D 30 */	stw r5, 0xd30(r4)
/* 81390A64 | 42 00 FF F4 */	bdnz .L_81390A58
/* 81390A68 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390A6C | 38 80 00 07 */	li r4, 0x7
/* 81390A70 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390A74 | 83 E3 00 64 */	lwz r31, 0x64(r3)
/* 81390A78 | 7F E3 FB 78 */	mr r3, r31
/* 81390A7C | 48 07 A6 BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81390A80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390A84 | 40 82 00 24 */	bne .L_81390AA8
/* 81390A88 | 7F E3 FB 78 */	mr r3, r31
/* 81390A8C | 38 80 00 02 */	li r4, 0x2
/* 81390A90 | 48 07 A6 A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81390A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390A98 | 40 82 00 10 */	bne .L_81390AA8
/* 81390A9C | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 81390AA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390AA4 | 41 82 00 10 */	beq .L_81390AB4
.L_81390AA8:
/* 81390AA8 | 38 00 00 02 */	li r0, 0x2
/* 81390AAC | 90 1E 00 60 */	stw r0, 0x60(r30)
/* 81390AB0 | 48 00 00 14 */	b .L_81390AC4
.L_81390AB4:
/* 81390AB4 | 7F C3 F3 78 */	mr r3, r30
/* 81390AB8 | 48 00 1E 95 */	bl edge_arrow__Q33ipl5scene5BoardFv
/* 81390ABC | 38 00 00 05 */	li r0, 0x5
/* 81390AC0 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_81390AC4:
/* 81390AC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81390AC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81390ACC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81390AD0 | 7C 08 03 A6 */	mtlr r0
/* 81390AD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81390AD8 | 4E 80 00 20 */	blr
.endfn stt_wait_scroll__Q33ipl5scene5BoardFv

# .text:0x1CF4 | 0x81390ADC | size: 0x570
# ipl::scene::Board::stt_normal()
.fn stt_normal__Q33ipl5scene5BoardFv, global
/* 81390ADC | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81390AE0 | 7C 08 02 A6 */	mflr r0
/* 81390AE4 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81390AE8 | 39 61 00 90 */	addi r11, r1, 0x90
/* 81390AEC | 48 26 89 D1 */	bl _savegpr_26
/* 81390AF0 | 80 03 0F B8 */	lwz r0, 0xfb8(r3)
/* 81390AF4 | 7C 7E 1B 78 */	mr r30, r3
/* 81390AF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390AFC | 41 82 00 0C */	beq .L_81390B08
/* 81390B00 | 38 00 00 00 */	li r0, 0x0
/* 81390B04 | 90 03 0F B8 */	stw r0, 0xfb8(r3)
.L_81390B08:
/* 81390B08 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81390B0C | 38 80 00 05 */	li r4, 0x5
/* 81390B10 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81390B14 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81390B18 | 48 07 A6 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81390B1C | 88 1D 02 BC */	lbz r0, 0x2bc(r29)
/* 81390B20 | 7C 7F 1B 78 */	mr r31, r3
/* 81390B24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390B28 | 41 82 00 0C */	beq .L_81390B34
/* 81390B2C | 38 60 00 00 */	li r3, 0x0
/* 81390B30 | 48 00 00 08 */	b .L_81390B38
.L_81390B34:
/* 81390B34 | 80 7D 00 7C */	lwz r3, 0x7c(r29)
.L_81390B38:
/* 81390B38 | 4B FA EF 2D */	bl isOverFlow__Q33ipl3cdb7ManagerCFv
/* 81390B3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390B40 | 41 82 00 94 */	beq .L_81390BD4
/* 81390B44 | 88 1E 0D 00 */	lbz r0, 0xd00(r30)
/* 81390B48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390B4C | 41 82 00 0C */	beq .L_81390B58
/* 81390B50 | 38 00 00 01 */	li r0, 0x1
/* 81390B54 | 98 1E 0D 01 */	stb r0, 0xd01(r30)
.L_81390B58:
/* 81390B58 | 7F C3 F3 78 */	mr r3, r30
/* 81390B5C | 48 00 1F 3D */	bl return_to_freelist__Q33ipl5scene5BoardFv
/* 81390B60 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390B64 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390B68 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390B6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390B70 | 41 82 00 0C */	beq .L_81390B7C
/* 81390B74 | 38 60 00 00 */	li r3, 0x0
/* 81390B78 | 48 00 00 08 */	b .L_81390B80
.L_81390B7C:
/* 81390B7C | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_81390B80:
/* 81390B80 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 81390B84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390B88 | 41 82 00 2C */	beq .L_81390BB4
/* 81390B8C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390B90 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390B94 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390B98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390B9C | 41 82 00 0C */	beq .L_81390BA8
/* 81390BA0 | 38 60 00 00 */	li r3, 0x0
/* 81390BA4 | 48 00 00 08 */	b .L_81390BAC
.L_81390BA8:
/* 81390BA8 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_81390BAC:
/* 81390BAC | 38 63 00 18 */	addi r3, r3, 0x18
/* 81390BB0 | 4B FC E5 3D */	bl cleanup_cdb_backup_to_sd_async__Q23ipl10SDVFWorkerFv
.L_81390BB4:
/* 81390BB4 | 7F C3 F3 78 */	mr r3, r30
/* 81390BB8 | 48 00 20 85 */	bl init_search_condition__Q33ipl5scene5BoardFv
/* 81390BBC | 38 00 00 0C */	li r0, 0xc
/* 81390BC0 | 90 1E 00 60 */	stw r0, 0x60(r30)
/* 81390BC4 | 4B FA 45 8D */	bl backup_run__Q23ipl6SystemFv
/* 81390BC8 | 7F C3 F3 78 */	mr r3, r30
/* 81390BCC | 48 00 27 0D */	bl after_backup__Q33ipl5scene5BoardFv
/* 81390BD0 | 48 00 04 64 */	b .L_81391034
.L_81390BD4:
/* 81390BD4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390BD8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390BDC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390BE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390BE4 | 41 82 00 0C */	beq .L_81390BF0
/* 81390BE8 | 38 60 00 00 */	li r3, 0x0
/* 81390BEC | 48 00 00 08 */	b .L_81390BF4
.L_81390BF0:
/* 81390BF0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81390BF4:
/* 81390BF4 | 88 03 0A 30 */	lbz r0, 0xa30(r3)
/* 81390BF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390BFC | 40 82 00 18 */	bne .L_81390C14
/* 81390C00 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390C04 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390C08 | 88 03 02 BD */	lbz r0, 0x2bd(r3)
/* 81390C0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390C10 | 41 82 01 F8 */	beq .L_81390E08
.L_81390C14:
/* 81390C14 | 88 1E 0D 00 */	lbz r0, 0xd00(r30)
/* 81390C18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390C1C | 40 82 01 EC */	bne .L_81390E08
/* 81390C20 | 88 1E 0F 98 */	lbz r0, 0xf98(r30)
/* 81390C24 | 2C 80 00 00 */	cmpwi cr1, r0, 0x0
/* 81390C28 | 41 86 00 44 */	beq cr1, .L_81390C6C
/* 81390C2C | 7F C3 F3 78 */	mr r3, r30
/* 81390C30 | 48 00 0E A5 */	bl exec_count_task__Q33ipl5scene5BoardFv
/* 81390C34 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390C38 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390C3C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390C40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390C44 | 41 82 00 0C */	beq .L_81390C50
/* 81390C48 | 38 80 00 00 */	li r4, 0x0
/* 81390C4C | 48 00 00 08 */	b .L_81390C54
.L_81390C50:
/* 81390C50 | 80 83 00 8C */	lwz r4, 0x8c(r3)
.L_81390C54:
/* 81390C54 | 38 00 00 00 */	li r0, 0x0
/* 81390C58 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390C5C | 98 04 0A 30 */	stb r0, 0xa30(r4)
/* 81390C60 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390C64 | 98 03 02 BD */	stb r0, 0x2bd(r3)
/* 81390C68 | 48 00 01 50 */	b .L_81390DB8
.L_81390C6C:
/* 81390C6C | A0 1E 00 7C */	lhz r0, 0x7c(r30)
/* 81390C70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390C74 | 41 82 00 B4 */	beq .L_81390D28
/* 81390C78 | 80 1E 0F 9C */	lwz r0, 0xf9c(r30)
/* 81390C7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390C80 | 40 82 00 34 */	bne .L_81390CB4
/* 81390C84 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81390C88 | 38 9E 0D 90 */	addi r4, r30, 0xd90
/* 81390C8C | 38 A0 00 50 */	li r5, 0x50
/* 81390C90 | 4B F9 F5 A1 */	bl memcpy
/* 81390C94 | 38 7E 0D 90 */	addi r3, r30, 0xd90
/* 81390C98 | 38 9E 0D 40 */	addi r4, r30, 0xd40
/* 81390C9C | 38 A0 00 50 */	li r5, 0x50
/* 81390CA0 | 4B F9 F5 91 */	bl memcpy
/* 81390CA4 | 38 7E 0D 40 */	addi r3, r30, 0xd40
/* 81390CA8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81390CAC | 38 A0 00 50 */	li r5, 0x50
/* 81390CB0 | 4B F9 F5 81 */	bl memcpy
.L_81390CB4:
/* 81390CB4 | 38 7E 0D E0 */	addi r3, r30, 0xde0
/* 81390CB8 | 38 9E 0D 40 */	addi r4, r30, 0xd40
/* 81390CBC | 38 A0 00 50 */	li r5, 0x50
/* 81390CC0 | 4B F9 F5 71 */	bl memcpy
/* 81390CC4 | 38 00 00 01 */	li r0, 0x1
/* 81390CC8 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81390CCC | 90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 81390CD0 | 3C 80 81 39 */	lis r4, read_task___Q23ipl5sceneFPv@ha
/* 81390CD4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81390CD8 | 7F C5 F3 78 */	mr r5, r30
/* 81390CDC | 98 1E 0D 00 */	stb r0, 0xd00(r30)
/* 81390CE0 | 38 84 1B 64 */	addi r4, r4, read_task___Q23ipl5sceneFPv@l
/* 81390CE4 | 38 C0 00 00 */	li r6, 0x0
/* 81390CE8 | 80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 81390CEC | 48 26 75 5D */	bl fn_815F8248
/* 81390CF0 | 7F C3 F3 78 */	mr r3, r30
/* 81390CF4 | 48 00 0D E1 */	bl exec_count_task__Q33ipl5scene5BoardFv
/* 81390CF8 | 88 1D 02 BC */	lbz r0, 0x2bc(r29)
/* 81390CFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390D00 | 41 82 00 0C */	beq .L_81390D0C
/* 81390D04 | 38 80 00 00 */	li r4, 0x0
/* 81390D08 | 48 00 00 08 */	b .L_81390D10
.L_81390D0C:
/* 81390D0C | 80 9D 00 8C */	lwz r4, 0x8c(r29)
.L_81390D10:
/* 81390D10 | 38 00 00 00 */	li r0, 0x0
/* 81390D14 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390D18 | 98 04 0A 30 */	stb r0, 0xa30(r4)
/* 81390D1C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390D20 | 98 03 02 BD */	stb r0, 0x2bd(r3)
/* 81390D24 | 48 00 00 94 */	b .L_81390DB8
.L_81390D28:
/* 81390D28 | 40 86 00 90 */	bne cr1, .L_81390DB8
/* 81390D2C | 80 1E 0F 9C */	lwz r0, 0xf9c(r30)
/* 81390D30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390D34 | 40 82 00 18 */	bne .L_81390D4C
/* 81390D38 | 38 7E 0D E0 */	addi r3, r30, 0xde0
/* 81390D3C | 38 9E 0D 90 */	addi r4, r30, 0xd90
/* 81390D40 | 38 A0 00 50 */	li r5, 0x50
/* 81390D44 | 4B F9 F4 ED */	bl memcpy
/* 81390D48 | 48 00 00 14 */	b .L_81390D5C
.L_81390D4C:
/* 81390D4C | 38 7E 0D E0 */	addi r3, r30, 0xde0
/* 81390D50 | 38 9E 0D 40 */	addi r4, r30, 0xd40
/* 81390D54 | 38 A0 00 50 */	li r5, 0x50
/* 81390D58 | 4B F9 F4 D9 */	bl memcpy
.L_81390D5C:
/* 81390D5C | 38 00 00 01 */	li r0, 0x1
/* 81390D60 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81390D64 | 98 1E 0D 00 */	stb r0, 0xd00(r30)
/* 81390D68 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81390D6C | 3C 80 81 39 */	lis r4, fwd_search_task___Q23ipl5sceneFPv@ha
/* 81390D70 | 38 A0 00 00 */	li r5, 0x0
/* 81390D74 | 80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 81390D78 | 38 84 1E 44 */	addi r4, r4, fwd_search_task___Q23ipl5sceneFPv@l
/* 81390D7C | 38 C0 00 00 */	li r6, 0x0
/* 81390D80 | 48 26 74 C9 */	bl fn_815F8248
/* 81390D84 | 7F C3 F3 78 */	mr r3, r30
/* 81390D88 | 48 00 0D 4D */	bl exec_count_task__Q33ipl5scene5BoardFv
/* 81390D8C | 88 1D 02 BC */	lbz r0, 0x2bc(r29)
/* 81390D90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390D94 | 41 82 00 0C */	beq .L_81390DA0
/* 81390D98 | 38 80 00 00 */	li r4, 0x0
/* 81390D9C | 48 00 00 08 */	b .L_81390DA4
.L_81390DA0:
/* 81390DA0 | 80 9D 00 8C */	lwz r4, 0x8c(r29)
.L_81390DA4:
/* 81390DA4 | 38 00 00 00 */	li r0, 0x0
/* 81390DA8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390DAC | 98 04 0A 30 */	stb r0, 0xa30(r4)
/* 81390DB0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390DB4 | 98 03 02 BD */	stb r0, 0x2bd(r3)
.L_81390DB8:
/* 81390DB8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390DBC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390DC0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390DC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390DC8 | 41 82 00 0C */	beq .L_81390DD4
/* 81390DCC | 38 60 00 00 */	li r3, 0x0
/* 81390DD0 | 48 00 00 08 */	b .L_81390DD8
.L_81390DD4:
/* 81390DD4 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81390DD8:
/* 81390DD8 | 38 80 00 00 */	li r4, 0x0
/* 81390DDC | 4B FB 16 8D */	bl enableLedNotification__Q33ipl5nwc247ManagerFi
/* 81390DE0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81390DE4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81390DE8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81390DEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390DF0 | 41 82 00 0C */	beq .L_81390DFC
/* 81390DF4 | 38 60 00 00 */	li r3, 0x0
/* 81390DF8 | 48 00 00 08 */	b .L_81390E00
.L_81390DFC:
/* 81390DFC | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81390E00:
/* 81390E00 | 38 80 00 01 */	li r4, 0x1
/* 81390E04 | 4B FB 16 65 */	bl enableLedNotification__Q33ipl5nwc247ManagerFi
.L_81390E08:
/* 81390E08 | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 81390E0C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81390E10 | 40 82 00 1C */	bne .L_81390E2C
/* 81390E14 | 7F E3 FB 78 */	mr r3, r31
/* 81390E18 | 48 00 BA FD */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81390E1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390E20 | 41 82 00 0C */	beq .L_81390E2C
/* 81390E24 | 7F E3 FB 78 */	mr r3, r31
/* 81390E28 | 48 00 B7 45 */	bl update__Q33ipl5scene6ButtonFv
.L_81390E2C:
/* 81390E2C | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 81390E30 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81390E34 | 40 82 02 00 */	bne .L_81391034
/* 81390E38 | 4B FA 4B 71 */	bl getMasterController__Q23ipl6SystemFv
/* 81390E3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81390E40 | 3F A0 30 00 */	lis r29, 0x3000
/* 81390E44 | 7C 7C 1B 78 */	mr r28, r3
/* 81390E48 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81390E4C | 38 9D 10 00 */	addi r4, r29, 0x1000
/* 81390E50 | 7D 89 03 A6 */	mtctr r12
/* 81390E54 | 4E 80 04 21 */	bctrl
/* 81390E58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390E5C | 41 82 00 8C */	beq .L_81390EE8
/* 81390E60 | 88 1E 0F 99 */	lbz r0, 0xf99(r30)
/* 81390E64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390E68 | 41 82 00 44 */	beq .L_81390EAC
/* 81390E6C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81390E70 | 7F 83 E3 78 */	mr r3, r28
/* 81390E74 | 38 9D 10 00 */	addi r4, r29, 0x1000
/* 81390E78 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81390E7C | 7D 89 03 A6 */	mtctr r12
/* 81390E80 | 4E 80 04 21 */	bctrl
/* 81390E84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390E88 | 41 82 01 AC */	beq .L_81391034
/* 81390E8C | 88 1E 0D 00 */	lbz r0, 0xd00(r30)
/* 81390E90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390E94 | 41 82 00 0C */	beq .L_81390EA0
/* 81390E98 | 38 00 00 01 */	li r0, 0x1
/* 81390E9C | 98 1E 0D 01 */	stb r0, 0xd01(r30)
.L_81390EA0:
/* 81390EA0 | 38 00 00 09 */	li r0, 0x9
/* 81390EA4 | 90 1E 00 60 */	stw r0, 0x60(r30)
/* 81390EA8 | 48 00 01 8C */	b .L_81391034
.L_81390EAC:
/* 81390EAC | 38 61 00 14 */	addi r3, r1, 0x14
/* 81390EB0 | 48 00 01 9D */	bl getMinDate__Q33ipl7utility4DateFv
/* 81390EB4 | 38 7E 0D 08 */	addi r3, r30, 0xd08
/* 81390EB8 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81390EBC | 4B FF EA E5 */	bl __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81390EC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390EC4 | 41 82 01 70 */	beq .L_81391034
/* 81390EC8 | 7F C3 F3 78 */	mr r3, r30
/* 81390ECC | 48 00 20 C9 */	bl cmn_start_scroll_l__Q33ipl5scene5BoardFv
/* 81390ED0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81390ED4 | 3C 80 81 65 */	lis r4, lbl_8164B033@ha
/* 81390ED8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81390EDC | 38 84 B0 33 */	addi r4, r4, lbl_8164B033@l
/* 81390EE0 | 4B FD A5 8D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81390EE4 | 48 00 01 50 */	b .L_81391034
.L_81390EE8:
/* 81390EE8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81390EEC | 3F A0 06 00 */	lis r29, 0x600
/* 81390EF0 | 7F 83 E3 78 */	mr r3, r28
/* 81390EF4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81390EF8 | 38 9D 00 10 */	addi r4, r29, 0x10
/* 81390EFC | 7D 89 03 A6 */	mtctr r12
/* 81390F00 | 4E 80 04 21 */	bctrl
/* 81390F04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390F08 | 41 82 00 8C */	beq .L_81390F94
/* 81390F0C | 88 1E 0F 98 */	lbz r0, 0xf98(r30)
/* 81390F10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390F14 | 41 82 00 44 */	beq .L_81390F58
/* 81390F18 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81390F1C | 7F 83 E3 78 */	mr r3, r28
/* 81390F20 | 38 9D 00 10 */	addi r4, r29, 0x10
/* 81390F24 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81390F28 | 7D 89 03 A6 */	mtctr r12
/* 81390F2C | 4E 80 04 21 */	bctrl
/* 81390F30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390F34 | 41 82 01 00 */	beq .L_81391034
/* 81390F38 | 88 1E 0D 00 */	lbz r0, 0xd00(r30)
/* 81390F3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390F40 | 41 82 00 0C */	beq .L_81390F4C
/* 81390F44 | 38 00 00 01 */	li r0, 0x1
/* 81390F48 | 98 1E 0D 01 */	stb r0, 0xd01(r30)
.L_81390F4C:
/* 81390F4C | 38 00 00 0A */	li r0, 0xa
/* 81390F50 | 90 1E 00 60 */	stw r0, 0x60(r30)
/* 81390F54 | 48 00 00 E0 */	b .L_81391034
.L_81390F58:
/* 81390F58 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81390F5C | 48 00 01 09 */	bl getMaxDate__Q33ipl7utility4DateFv
/* 81390F60 | 38 7E 0D 08 */	addi r3, r30, 0xd08
/* 81390F64 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81390F68 | 4B FF EA 39 */	bl __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81390F6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390F70 | 41 82 00 C4 */	beq .L_81391034
/* 81390F74 | 7F C3 F3 78 */	mr r3, r30
/* 81390F78 | 48 00 1F B5 */	bl cmn_start_scroll_r__Q33ipl5scene5BoardFv
/* 81390F7C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81390F80 | 3C 80 81 65 */	lis r4, lbl_8164B033@ha
/* 81390F84 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81390F88 | 38 84 B0 33 */	addi r4, r4, lbl_8164B033@l
/* 81390F8C | 4B FD A4 E1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81390F90 | 48 00 00 A4 */	b .L_81391034
.L_81390F94:
/* 81390F94 | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 81390F98 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81390F9C | 40 82 00 98 */	bne .L_81391034
/* 81390FA0 | 3B 60 00 00 */	li r27, 0x0
/* 81390FA4 | 3B E0 00 00 */	li r31, 0x0
/* 81390FA8 | 7F 7D DB 78 */	mr r29, r27
.L_81390FAC:
/* 81390FAC | 7F 9E FA 14 */	add r28, r30, r31
/* 81390FB0 | 3B 40 00 00 */	li r26, 0x0
/* 81390FB4 | 48 00 00 30 */	b .L_81390FE4
.L_81390FB8:
/* 81390FB8 | 80 1C 0D 30 */	lwz r0, 0xd30(r28)
/* 81390FBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81390FC0 | 41 82 00 0C */	beq .L_81390FCC
/* 81390FC4 | 7C 00 18 40 */	cmplw r0, r3
/* 81390FC8 | 40 82 00 1C */	bne .L_81390FE4
.L_81390FCC:
/* 81390FCC | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 81390FD0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81390FD4 | 40 82 00 10 */	bne .L_81390FE4
/* 81390FD8 | 7F 43 D3 78 */	mr r3, r26
/* 81390FDC | 7F 64 DB 78 */	mr r4, r27
/* 81390FE0 | 48 00 48 31 */	bl update__Q33ipl5scene11BoardObjectFi
.L_81390FE4:
/* 81390FE4 | 7F 44 D3 78 */	mr r4, r26
/* 81390FE8 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 81390FEC | 48 18 12 F1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81390FF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81390FF4 | 7C 7A 1B 78 */	mr r26, r3
/* 81390FF8 | 40 82 FF C0 */	bne .L_81390FB8
/* 81390FFC | 7F 63 DB 78 */	mr r3, r27
/* 81391000 | 4B FA 49 C9 */	bl getController__Q23ipl6SystemFi
/* 81391004 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391008 | 40 82 00 1C */	bne .L_81391024
/* 8139100C | 80 7C 0D 30 */	lwz r3, 0xd30(r28)
/* 81391010 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391014 | 41 82 00 10 */	beq .L_81391024
/* 81391018 | 7F 64 DB 78 */	mr r4, r27
/* 8139101C | 48 00 48 E1 */	bl start_left_event__Q33ipl5scene11BoardObjectFi
/* 81391020 | 93 BC 0D 30 */	stw r29, 0xd30(r28)
.L_81391024:
/* 81391024 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81391028 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8139102C | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81391030 | 41 80 FF 7C */	blt .L_81390FAC
.L_81391034:
/* 81391034 | 39 61 00 90 */	addi r11, r1, 0x90
/* 81391038 | 48 26 84 D1 */	bl _restgpr_26
/* 8139103C | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 81391040 | 7C 08 03 A6 */	mtlr r0
/* 81391044 | 38 21 00 90 */	addi r1, r1, 0x90
/* 81391048 | 4E 80 00 20 */	blr
.endfn stt_normal__Q33ipl5scene5BoardFv

# .text:0x2264 | 0x8139104C | size: 0x18
# ipl::utility::Date::getMinDate()
.fn getMinDate__Q33ipl7utility4DateFv, global
/* 8139104C | 38 00 00 01 */	li r0, 0x1
/* 81391050 | 38 80 07 D0 */	li r4, 0x7d0
/* 81391054 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81391058 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8139105C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81391060 | 4E 80 00 20 */	blr
.endfn getMinDate__Q33ipl7utility4DateFv

# .text:0x227C | 0x81391064 | size: 0x1C
# ipl::utility::Date::getMaxDate()
.fn getMaxDate__Q33ipl7utility4DateFv, global
/* 81391064 | 38 A0 07 F3 */	li r5, 0x7f3
/* 81391068 | 38 80 00 0C */	li r4, 0xc
/* 8139106C | 38 00 00 1F */	li r0, 0x1f
/* 81391070 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81391074 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81391078 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8139107C | 4E 80 00 20 */	blr
.endfn getMaxDate__Q33ipl7utility4DateFv

# .text:0x2298 | 0x81391080 | size: 0x35C
# ipl::scene::Board::stt_focus()
.fn stt_focus__Q33ipl5scene5BoardFv, global
/* 81391080 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81391084 | 7C 08 02 A6 */	mflr r0
/* 81391088 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8139108C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81391090 | 48 26 84 39 */	bl _savegpr_29
/* 81391094 | 7C 7F 1B 78 */	mr r31, r3
/* 81391098 | 80 63 0F A0 */	lwz r3, 0xfa0(r3)
/* 8139109C | 48 00 60 91 */	bl calc__Q33ipl5scene12focus_objectFv
/* 813910A0 | 28 03 00 0B */	cmplwi r3, 0xb
/* 813910A4 | 41 81 03 20 */	bgt .L_813913C4
/* 813910A8 | 3C 80 81 65 */	lis r4, jumptable_8164B040@ha
/* 813910AC | 54 60 10 3A */	slwi r0, r3, 2
/* 813910B0 | 38 84 B0 40 */	addi r4, r4, jumptable_8164B040@l
/* 813910B4 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813910B8 | 7C 89 03 A6 */	mtctr r4
/* 813910BC | 4E 80 04 20 */	bctr
.L_813910C0:
/* 813910C0 | 7F E3 FB 78 */	mr r3, r31
/* 813910C4 | 48 00 18 89 */	bl edge_arrow__Q33ipl5scene5BoardFv
/* 813910C8 | 80 7F 0D 28 */	lwz r3, 0xd28(r31)
/* 813910CC | 38 80 00 01 */	li r4, 0x1
/* 813910D0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813910D4 | 48 18 12 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813910D8 | 7C 7E 1B 78 */	mr r30, r3
/* 813910DC | 4B FD 17 95 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813910E0 | 38 60 00 01 */	li r3, 0x1
/* 813910E4 | 38 00 00 00 */	li r0, 0x0
/* 813910E8 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813910EC | 98 1F 0F 9A */	stb r0, 0xf9a(r31)
/* 813910F0 | 48 00 02 D4 */	b .L_813913C4
.L_813910F4:
/* 813910F4 | 38 00 00 04 */	li r0, 0x4
/* 813910F8 | 38 E0 00 00 */	li r7, 0x0
/* 813910FC | 38 60 00 00 */	li r3, 0x0
/* 81391100 | 7C 09 03 A6 */	mtctr r0
.L_81391104:
/* 81391104 | 80 9F 0F A0 */	lwz r4, 0xfa0(r31)
/* 81391108 | 7C DF 1A 14 */	add r6, r31, r3
/* 8139110C | 80 A6 0D 30 */	lwz r5, 0xd30(r6)
/* 81391110 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 81391114 | 7C 05 00 40 */	cmplw r5, r0
/* 81391118 | 40 82 00 08 */	bne .L_81391120
/* 8139111C | 90 E6 0D 30 */	stw r7, 0xd30(r6)
.L_81391120:
/* 81391120 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81391124 | 42 00 FF E0 */	bdnz .L_81391104
/* 81391128 | 7F E3 FB 78 */	mr r3, r31
/* 8139112C | 48 00 18 21 */	bl edge_arrow__Q33ipl5scene5BoardFv
/* 81391130 | 80 7F 0D 28 */	lwz r3, 0xd28(r31)
/* 81391134 | 38 80 00 01 */	li r4, 0x1
/* 81391138 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139113C | 48 18 11 DD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81391140 | 7C 7E 1B 78 */	mr r30, r3
/* 81391144 | 4B FD 17 2D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81391148 | 38 E0 00 01 */	li r7, 0x1
/* 8139114C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391150 | 90 FE 00 14 */	stw r7, 0x14(r30)
/* 81391154 | 38 00 00 00 */	li r0, 0x0
/* 81391158 | 3C 80 81 39 */	lis r4, delete_task___Q23ipl5sceneFPv@ha
/* 8139115C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81391160 | 98 1F 0F 9A */	stb r0, 0xf9a(r31)
/* 81391164 | 38 84 1F 24 */	addi r4, r4, delete_task___Q23ipl5sceneFPv@l
/* 81391168 | 80 BF 0F A0 */	lwz r5, 0xfa0(r31)
/* 8139116C | 38 C0 00 00 */	li r6, 0x0
/* 81391170 | 80 A5 00 14 */	lwz r5, 0x14(r5)
/* 81391174 | 98 FF 0D 02 */	stb r7, 0xd02(r31)
/* 81391178 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 8139117C | 48 26 70 CD */	bl fn_815F8248
/* 81391180 | 48 00 02 44 */	b .L_813913C4
.L_81391184:
/* 81391184 | 7F E3 FB 78 */	mr r3, r31
/* 81391188 | 48 00 15 85 */	bl disable_ricon__Q33ipl5scene5BoardFv
/* 8139118C | 7F E3 FB 78 */	mr r3, r31
/* 81391190 | 48 00 16 81 */	bl disable_licon__Q33ipl5scene5BoardFv
/* 81391194 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391198 | 38 80 00 05 */	li r4, 0x5
/* 8139119C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813911A0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813911A4 | 48 07 9F 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813911A8 | 7C 66 1B 78 */	mr r6, r3
/* 813911AC | 7F E3 FB 78 */	mr r3, r31
/* 813911B0 | 7F E5 FB 78 */	mr r5, r31
/* 813911B4 | 38 80 00 0B */	li r4, 0xb
/* 813911B8 | 38 E0 00 03 */	li r7, 0x3
/* 813911BC | 48 07 8C CD */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813911C0 | 48 00 02 04 */	b .L_813913C4
.L_813911C4:
/* 813911C4 | 7F E3 FB 78 */	mr r3, r31
/* 813911C8 | 48 00 15 45 */	bl disable_ricon__Q33ipl5scene5BoardFv
/* 813911CC | 7F E3 FB 78 */	mr r3, r31
/* 813911D0 | 48 00 16 41 */	bl disable_licon__Q33ipl5scene5BoardFv
/* 813911D4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813911D8 | 38 80 00 05 */	li r4, 0x5
/* 813911DC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813911E0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813911E4 | 48 07 9F 55 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813911E8 | 7C 66 1B 78 */	mr r6, r3
/* 813911EC | 7F E3 FB 78 */	mr r3, r31
/* 813911F0 | 7F E5 FB 78 */	mr r5, r31
/* 813911F4 | 38 80 00 0B */	li r4, 0xb
/* 813911F8 | 38 E0 00 02 */	li r7, 0x2
/* 813911FC | 48 07 8C 8D */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 81391200 | 48 00 01 C4 */	b .L_813913C4
.L_81391204:
/* 81391204 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391208 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139120C | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81391210 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81391214 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81391218 | 7D 89 03 A6 */	mtctr r12
/* 8139121C | 4E 80 04 21 */	bctrl
/* 81391220 | 7F E3 FB 78 */	mr r3, r31
/* 81391224 | 38 80 00 12 */	li r4, 0x12
/* 81391228 | 38 A0 00 01 */	li r5, 0x1
/* 8139122C | 48 07 8D 69 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 81391230 | 38 00 00 0D */	li r0, 0xd
/* 81391234 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81391238 | 48 00 01 8C */	b .L_813913C4
.L_8139123C:
/* 8139123C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391240 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81391244 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81391248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139124C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81391250 | 7D 89 03 A6 */	mtctr r12
/* 81391254 | 4E 80 04 21 */	bctrl
/* 81391258 | 7F E3 FB 78 */	mr r3, r31
/* 8139125C | 38 80 00 12 */	li r4, 0x12
/* 81391260 | 38 A0 00 04 */	li r5, 0x4
/* 81391264 | 48 07 8D 31 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 81391268 | 38 00 00 0D */	li r0, 0xd
/* 8139126C | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81391270 | 48 00 01 54 */	b .L_813913C4
.L_81391274:
/* 81391274 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391278 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139127C | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81391280 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81391284 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81391288 | 7D 89 03 A6 */	mtctr r12
/* 8139128C | 4E 80 04 21 */	bctrl
/* 81391290 | 7F E3 FB 78 */	mr r3, r31
/* 81391294 | 38 80 00 12 */	li r4, 0x12
/* 81391298 | 38 A0 00 03 */	li r5, 0x3
/* 8139129C | 48 07 8C F9 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 813912A0 | 38 00 00 0D */	li r0, 0xd
/* 813912A4 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 813912A8 | 48 00 01 1C */	b .L_813913C4
.L_813912AC:
/* 813912AC | 7F E3 FB 78 */	mr r3, r31
/* 813912B0 | 7F E5 FB 78 */	mr r5, r31
/* 813912B4 | 38 80 00 1B */	li r4, 0x1b
/* 813912B8 | 38 C0 00 00 */	li r6, 0x0
/* 813912BC | 38 E0 00 01 */	li r7, 0x1
/* 813912C0 | 48 07 8B C9 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813912C4 | 48 00 01 00 */	b .L_813913C4
.L_813912C8:
/* 813912C8 | 80 7F 0F A0 */	lwz r3, 0xfa0(r31)
/* 813912CC | 38 80 00 01 */	li r4, 0x1
/* 813912D0 | 48 00 5D 35 */	bl __dt__Q33ipl5scene12focus_objectFv
/* 813912D4 | 38 00 00 00 */	li r0, 0x0
/* 813912D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813912DC | 90 1F 0F A0 */	stw r0, 0xfa0(r31)
/* 813912E0 | 7F FE FB 78 */	mr r30, r31
/* 813912E4 | 41 82 00 08 */	beq .L_813912EC
/* 813912E8 | 3B DF 00 54 */	addi r30, r31, 0x54
.L_813912EC:
/* 813912EC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813912F0 | 38 80 00 05 */	li r4, 0x5
/* 813912F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813912F8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813912FC | 48 07 9E 3D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391300 | 7F C4 F3 78 */	mr r4, r30
/* 81391304 | 38 A0 00 00 */	li r5, 0x0
/* 81391308 | 48 00 B6 35 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8139130C | 38 00 00 05 */	li r0, 0x5
/* 81391310 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81391314 | 48 00 00 B0 */	b .L_813913C4
.L_81391318:
/* 81391318 | 38 00 00 07 */	li r0, 0x7
/* 8139131C | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81391320 | 48 00 00 A4 */	b .L_813913C4
.L_81391324:
/* 81391324 | 80 7F 0F A0 */	lwz r3, 0xfa0(r31)
/* 81391328 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139132C | 48 00 43 45 */	bl reset_gui__Q33ipl5scene11BoardObjectFv
/* 81391330 | 80 7F 0F A0 */	lwz r3, 0xfa0(r31)
/* 81391334 | 38 80 00 01 */	li r4, 0x1
/* 81391338 | 48 00 5C CD */	bl __dt__Q33ipl5scene12focus_objectFv
/* 8139133C | 38 00 00 00 */	li r0, 0x0
/* 81391340 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81391344 | 90 1F 0F A0 */	stw r0, 0xfa0(r31)
/* 81391348 | 7F FD FB 78 */	mr r29, r31
/* 8139134C | 41 82 00 08 */	beq .L_81391354
/* 81391350 | 3B BF 00 54 */	addi r29, r31, 0x54
.L_81391354:
/* 81391354 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81391358 | 38 80 00 05 */	li r4, 0x5
/* 8139135C | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81391360 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81391364 | 48 07 9D D5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391368 | 7F A4 EB 78 */	mr r4, r29
/* 8139136C | 38 A0 00 00 */	li r5, 0x0
/* 81391370 | 48 00 B5 CD */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81391374 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81391378 | 38 80 00 06 */	li r4, 0x6
/* 8139137C | 48 07 9D BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391380 | 7C 66 1B 78 */	mr r6, r3
/* 81391384 | 7F E3 FB 78 */	mr r3, r31
/* 81391388 | 7F E5 FB 78 */	mr r5, r31
/* 8139138C | 38 80 00 02 */	li r4, 0x2
/* 81391390 | 38 E0 00 02 */	li r7, 0x2
/* 81391394 | 48 07 8A F5 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 81391398 | 7F E3 FB 78 */	mr r3, r31
/* 8139139C | 38 80 00 03 */	li r4, 0x3
/* 813913A0 | 48 00 1A F5 */	bl cmn_create_child__Q33ipl5scene5BoardFi
/* 813913A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813913A8 | 38 9E 00 3C */	addi r4, r30, 0x3c
/* 813913AC | 4B FF DB ED */	bl __ct__Q33ipl7utility4DateFRC14OSCalendarTime
/* 813913B0 | 7C 64 1B 78 */	mr r4, r3
/* 813913B4 | 7F E3 FB 78 */	mr r3, r31
/* 813913B8 | 4B FF E5 0D */	bl updateDate__Q33ipl5scene5BoardFRCQ33ipl7utility4Date
/* 813913BC | 7F E3 FB 78 */	mr r3, r31
/* 813913C0 | 48 00 07 15 */	bl exec_count_task__Q33ipl5scene5BoardFv
.L_813913C4:
/* 813913C4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813913C8 | 48 26 81 4D */	bl _restgpr_29
/* 813913CC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813913D0 | 7C 08 03 A6 */	mtlr r0
/* 813913D4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813913D8 | 4E 80 00 20 */	blr
.endfn stt_focus__Q33ipl5scene5BoardFv

# .text:0x25F4 | 0x813913DC | size: 0x1A0
# ipl::scene::Board::stt_after_del()
.fn stt_after_del__Q33ipl5scene5BoardFv, global
/* 813913DC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813913E0 | 7C 08 02 A6 */	mflr r0
/* 813913E4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813913E8 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 813913EC | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 813913F0 | 7C 7E 1B 78 */	mr r30, r3
/* 813913F4 | 88 03 0D 02 */	lbz r0, 0xd02(r3)
/* 813913F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813913FC | 40 82 01 68 */	bne .L_81391564
/* 81391400 | 80 63 0F A0 */	lwz r3, 0xfa0(r3)
/* 81391404 | 83 E3 00 14 */	lwz r31, 0x14(r3)
/* 81391408 | 7F E3 FB 78 */	mr r3, r31
/* 8139140C | 48 00 3E ED */	bl destroy__Q33ipl5scene11BoardObjectFv
/* 81391410 | 7F E4 FB 78 */	mr r4, r31
/* 81391414 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 81391418 | 48 18 0E 59 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8139141C | 7F E4 FB 78 */	mr r4, r31
/* 81391420 | 38 7E 00 74 */	addi r3, r30, 0x74
/* 81391424 | 48 18 0C 51 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81391428 | 80 7E 0F A0 */	lwz r3, 0xfa0(r30)
/* 8139142C | 38 80 00 01 */	li r4, 0x1
/* 81391430 | 48 00 5B D5 */	bl __dt__Q33ipl5scene12focus_objectFv
/* 81391434 | 88 1E 0D 00 */	lbz r0, 0xd00(r30)
/* 81391438 | 38 60 00 00 */	li r3, 0x0
/* 8139143C | 90 7E 0F A0 */	stw r3, 0xfa0(r30)
/* 81391440 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391444 | 40 82 00 E4 */	bne .L_81391528
/* 81391448 | 88 1E 0F 99 */	lbz r0, 0xf99(r30)
/* 8139144C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391450 | 41 82 00 8C */	beq .L_813914DC
/* 81391454 | 80 1E 0F 9C */	lwz r0, 0xf9c(r30)
/* 81391458 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139145C | 40 82 00 34 */	bne .L_81391490
/* 81391460 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81391464 | 38 9E 0D 90 */	addi r4, r30, 0xd90
/* 81391468 | 38 A0 00 50 */	li r5, 0x50
/* 8139146C | 4B F9 ED C5 */	bl memcpy
/* 81391470 | 38 7E 0D 90 */	addi r3, r30, 0xd90
/* 81391474 | 38 9E 0D 40 */	addi r4, r30, 0xd40
/* 81391478 | 38 A0 00 50 */	li r5, 0x50
/* 8139147C | 4B F9 ED B5 */	bl memcpy
/* 81391480 | 38 7E 0D 40 */	addi r3, r30, 0xd40
/* 81391484 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81391488 | 38 A0 00 50 */	li r5, 0x50
/* 8139148C | 4B F9 ED A5 */	bl memcpy
.L_81391490:
/* 81391490 | 38 7E 0D E0 */	addi r3, r30, 0xde0
/* 81391494 | 38 9E 0D 40 */	addi r4, r30, 0xd40
/* 81391498 | 38 A0 00 50 */	li r5, 0x50
/* 8139149C | 4B F9 ED 95 */	bl memcpy
/* 813914A0 | 38 00 00 00 */	li r0, 0x0
/* 813914A4 | 7F C3 F3 78 */	mr r3, r30
/* 813914A8 | 90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 813914AC | 48 00 11 49 */	bl hide_licon__Q33ipl5scene5BoardFv
/* 813914B0 | 38 00 00 01 */	li r0, 0x1
/* 813914B4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813914B8 | 98 1E 0D 00 */	stb r0, 0xd00(r30)
/* 813914BC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813914C0 | 3C 80 81 39 */	lis r4, read_task___Q23ipl5sceneFPv@ha
/* 813914C4 | 7F C5 F3 78 */	mr r5, r30
/* 813914C8 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 813914CC | 38 84 1B 64 */	addi r4, r4, read_task___Q23ipl5sceneFPv@l
/* 813914D0 | 38 C0 00 00 */	li r6, 0x0
/* 813914D4 | 48 26 6D 75 */	bl fn_815F8248
/* 813914D8 | 48 00 00 50 */	b .L_81391528
.L_813914DC:
/* 813914DC | A0 1E 00 70 */	lhz r0, 0x70(r30)
/* 813914E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813914E4 | 40 82 00 44 */	bne .L_81391528
/* 813914E8 | 88 1E 0F 98 */	lbz r0, 0xf98(r30)
/* 813914EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813914F0 | 41 82 00 38 */	beq .L_81391528
/* 813914F4 | 7F C3 F3 78 */	mr r3, r30
/* 813914F8 | 48 00 17 45 */	bl init_search_condition__Q33ipl5scene5BoardFv
/* 813914FC | 38 00 00 01 */	li r0, 0x1
/* 81391500 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391504 | 90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 81391508 | 3C 80 81 39 */	lis r4, read_task___Q23ipl5sceneFPv@ha
/* 8139150C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81391510 | 7F C5 F3 78 */	mr r5, r30
/* 81391514 | 98 1E 0D 00 */	stb r0, 0xd00(r30)
/* 81391518 | 38 84 1B 64 */	addi r4, r4, read_task___Q23ipl5sceneFPv@l
/* 8139151C | 38 C0 00 00 */	li r6, 0x0
/* 81391520 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 81391524 | 48 26 6D 25 */	bl fn_815F8248
.L_81391528:
/* 81391528 | 7F C3 F3 78 */	mr r3, r30
/* 8139152C | 48 00 05 A9 */	bl exec_count_task__Q33ipl5scene5BoardFv
/* 81391530 | 38 00 00 05 */	li r0, 0x5
/* 81391534 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81391538 | 90 1E 00 60 */	stw r0, 0x60(r30)
/* 8139153C | 41 82 00 08 */	beq .L_81391544
/* 81391540 | 3B DE 00 54 */	addi r30, r30, 0x54
.L_81391544:
/* 81391544 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391548 | 38 80 00 05 */	li r4, 0x5
/* 8139154C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81391550 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81391554 | 48 07 9B E5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391558 | 7F C4 F3 78 */	mr r4, r30
/* 8139155C | 38 A0 00 00 */	li r5, 0x0
/* 81391560 | 48 00 B3 DD */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
.L_81391564:
/* 81391564 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81391568 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8139156C | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 81391570 | 7C 08 03 A6 */	mtlr r0
/* 81391574 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81391578 | 4E 80 00 20 */	blr
.endfn stt_after_del__Q33ipl5scene5BoardFv

# .text:0x2794 | 0x8139157C | size: 0xBC
# ipl::scene::Board::stt_init_lfadeaway()
.fn stt_init_lfadeaway__Q33ipl5scene5BoardFv, global
/* 8139157C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81391580 | 7C 08 02 A6 */	mflr r0
/* 81391584 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81391588 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139158C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81391590 | 7C 7E 1B 78 */	mr r30, r3
/* 81391594 | 88 03 0D 00 */	lbz r0, 0xd00(r3)
/* 81391598 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139159C | 40 82 00 84 */	bne .L_81391620
/* 813915A0 | 80 03 0F 9C */	lwz r0, 0xf9c(r3)
/* 813915A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813915A8 | 40 82 00 18 */	bne .L_813915C0
/* 813915AC | 38 83 0D 40 */	addi r4, r3, 0xd40
/* 813915B0 | 38 A0 00 50 */	li r5, 0x50
/* 813915B4 | 38 63 0D E0 */	addi r3, r3, 0xde0
/* 813915B8 | 4B F9 EC 79 */	bl memcpy
/* 813915BC | 48 00 00 14 */	b .L_813915D0
.L_813915C0:
/* 813915C0 | 38 83 0D 90 */	addi r4, r3, 0xd90
/* 813915C4 | 38 A0 00 50 */	li r5, 0x50
/* 813915C8 | 38 63 0D E0 */	addi r3, r3, 0xde0
/* 813915CC | 4B F9 EC 65 */	bl memcpy
.L_813915D0:
/* 813915D0 | 38 00 00 00 */	li r0, 0x0
/* 813915D4 | 3B E0 00 00 */	li r31, 0x0
/* 813915D8 | 90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 813915DC | 48 00 00 0C */	b .L_813915E8
.L_813915E0:
/* 813915E0 | 7F E3 FB 78 */	mr r3, r31
/* 813915E4 | 48 00 47 FD */	bl right_away__Q33ipl5scene11BoardObjectFv
.L_813915E8:
/* 813915E8 | 7F E4 FB 78 */	mr r4, r31
/* 813915EC | 38 7E 00 68 */	addi r3, r30, 0x68
/* 813915F0 | 48 18 0C ED */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813915F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813915F8 | 7C 7F 1B 78 */	mr r31, r3
/* 813915FC | 40 82 FF E4 */	bne .L_813915E0
/* 81391600 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81391604 | 3C 80 81 65 */	lis r4, lbl_8164B070@ha
/* 81391608 | C0 22 84 08 */	lfs f1, lbl_81694808@sda21(r0)
/* 8139160C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81391610 | 38 84 B0 70 */	addi r4, r4, lbl_8164B070@l
/* 81391614 | 4B FD A0 8D */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 81391618 | 38 00 00 0B */	li r0, 0xb
/* 8139161C | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_81391620:
/* 81391620 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81391624 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81391628 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139162C | 7C 08 03 A6 */	mtlr r0
/* 81391630 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81391634 | 4E 80 00 20 */	blr
.endfn stt_init_lfadeaway__Q33ipl5scene5BoardFv

# .text:0x2850 | 0x81391638 | size: 0xBC
# ipl::scene::Board::stt_init_rfadeaway()
.fn stt_init_rfadeaway__Q33ipl5scene5BoardFv, global
/* 81391638 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139163C | 7C 08 02 A6 */	mflr r0
/* 81391640 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81391644 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81391648 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139164C | 7C 7E 1B 78 */	mr r30, r3
/* 81391650 | 88 03 0D 00 */	lbz r0, 0xd00(r3)
/* 81391654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391658 | 40 82 00 84 */	bne .L_813916DC
/* 8139165C | 80 03 0F 9C */	lwz r0, 0xf9c(r3)
/* 81391660 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81391664 | 40 82 00 18 */	bne .L_8139167C
/* 81391668 | 38 83 0D 40 */	addi r4, r3, 0xd40
/* 8139166C | 38 A0 00 50 */	li r5, 0x50
/* 81391670 | 38 63 0D E0 */	addi r3, r3, 0xde0
/* 81391674 | 4B F9 EB BD */	bl memcpy
/* 81391678 | 48 00 00 14 */	b .L_8139168C
.L_8139167C:
/* 8139167C | 38 83 0D 90 */	addi r4, r3, 0xd90
/* 81391680 | 38 A0 00 50 */	li r5, 0x50
/* 81391684 | 38 63 0D E0 */	addi r3, r3, 0xde0
/* 81391688 | 4B F9 EB A9 */	bl memcpy
.L_8139168C:
/* 8139168C | 38 00 00 01 */	li r0, 0x1
/* 81391690 | 3B E0 00 00 */	li r31, 0x0
/* 81391694 | 90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 81391698 | 48 00 00 0C */	b .L_813916A4
.L_8139169C:
/* 8139169C | 7F E3 FB 78 */	mr r3, r31
/* 813916A0 | 48 00 47 35 */	bl left_away__Q33ipl5scene11BoardObjectFv
.L_813916A4:
/* 813916A4 | 7F E4 FB 78 */	mr r4, r31
/* 813916A8 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 813916AC | 48 18 0C 31 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813916B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813916B4 | 7C 7F 1B 78 */	mr r31, r3
/* 813916B8 | 40 82 FF E4 */	bne .L_8139169C
/* 813916BC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813916C0 | 3C 80 81 65 */	lis r4, lbl_8164B070@ha
/* 813916C4 | C0 22 84 0C */	lfs f1, lbl_8169480C@sda21(r0)
/* 813916C8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813916CC | 38 84 B0 70 */	addi r4, r4, lbl_8164B070@l
/* 813916D0 | 4B FD 9F D1 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 813916D4 | 38 00 00 0B */	li r0, 0xb
/* 813916D8 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_813916DC:
/* 813916DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813916E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813916E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813916E8 | 7C 08 03 A6 */	mtlr r0
/* 813916EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813916F0 | 4E 80 00 20 */	blr
.endfn stt_init_rfadeaway__Q33ipl5scene5BoardFv

# .text:0x290C | 0x813916F4 | size: 0x194
# ipl::scene::Board::stt_wait_fadeaway()
.fn stt_wait_fadeaway__Q33ipl5scene5BoardFv, global
/* 813916F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813916F8 | 7C 08 02 A6 */	mflr r0
/* 813916FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81391700 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81391704 | 48 26 7D C1 */	bl _savegpr_28
/* 81391708 | 88 03 0D 00 */	lbz r0, 0xd00(r3)
/* 8139170C | 7C 7E 1B 78 */	mr r30, r3
/* 81391710 | 3B E0 00 00 */	li r31, 0x0
/* 81391714 | 7C 00 00 34 */	cntlzw r0, r0
/* 81391718 | 54 1C D9 7E */	srwi r28, r0, 5
/* 8139171C | 48 00 00 8C */	b .L_813917A8
.L_81391720:
/* 81391720 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81391724 | 3B A0 00 00 */	li r29, 0x0
/* 81391728 | 38 80 00 00 */	li r4, 0x0
/* 8139172C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391730 | 40 82 00 2C */	bne .L_8139175C
/* 81391734 | 88 03 00 D0 */	lbz r0, 0xd0(r3)
/* 81391738 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139173C | 40 82 00 20 */	bne .L_8139175C
/* 81391740 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 81391744 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81391748 | 41 82 00 14 */	beq .L_8139175C
/* 8139174C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81391750 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391754 | 41 82 00 08 */	beq .L_8139175C
/* 81391758 | 38 80 00 01 */	li r4, 0x1
.L_8139175C:
/* 8139175C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81391760 | 41 82 00 24 */	beq .L_81391784
/* 81391764 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81391768 | 38 80 00 05 */	li r4, 0x5
/* 8139176C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81391770 | 48 18 0B A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81391774 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81391778 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139177C | 41 82 00 08 */	beq .L_81391784
/* 81391780 | 3B A0 00 01 */	li r29, 0x1
.L_81391784:
/* 81391784 | 88 1F 00 CC */	lbz r0, 0xcc(r31)
/* 81391788 | 7F 84 E8 38 */	and r4, r28, r29
/* 8139178C | 30 64 FF FF */	subic r3, r4, 0x1
/* 81391790 | 7C 00 00 34 */	cntlzw r0, r0
/* 81391794 | 7C 63 21 10 */	subfe r3, r3, r4
/* 81391798 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8139179C | 7C 63 00 38 */	and r3, r3, r0
/* 813917A0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813917A4 | 7F 80 19 10 */	subfe r28, r0, r3
.L_813917A8:
/* 813917A8 | 7F E4 FB 78 */	mr r4, r31
/* 813917AC | 38 7E 00 68 */	addi r3, r30, 0x68
/* 813917B0 | 48 18 0B 2D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813917B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813917B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813917BC | 40 82 FF 64 */	bne .L_81391720
/* 813917C0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813917C4 | 41 82 00 AC */	beq .L_81391870
/* 813917C8 | 80 1E 0F 9C */	lwz r0, 0xf9c(r30)
/* 813917CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813917D0 | 40 82 00 18 */	bne .L_813917E8
/* 813917D4 | 7F C3 F3 78 */	mr r3, r30
/* 813917D8 | 48 00 0E 1D */	bl hide_licon__Q33ipl5scene5BoardFv
/* 813917DC | 7F C3 F3 78 */	mr r3, r30
/* 813917E0 | 48 00 0B 75 */	bl show_ricon__Q33ipl5scene5BoardFv
/* 813917E4 | 48 00 00 14 */	b .L_813917F8
.L_813917E8:
/* 813917E8 | 7F C3 F3 78 */	mr r3, r30
/* 813917EC | 48 00 0C 79 */	bl hide_ricon__Q33ipl5scene5BoardFv
/* 813917F0 | 7F C3 F3 78 */	mr r3, r30
/* 813917F4 | 48 00 0C F1 */	bl show_licon__Q33ipl5scene5BoardFv
.L_813917F8:
/* 813917F8 | 38 7E 0D 90 */	addi r3, r30, 0xd90
/* 813917FC | 38 80 00 00 */	li r4, 0x0
/* 81391800 | 38 A0 00 50 */	li r5, 0x50
/* 81391804 | 4B F9 EB 31 */	bl memset
/* 81391808 | 38 7E 0D 40 */	addi r3, r30, 0xd40
/* 8139180C | 38 80 00 00 */	li r4, 0x0
/* 81391810 | 38 A0 00 50 */	li r5, 0x50
/* 81391814 | 4B F9 EB 21 */	bl memset
/* 81391818 | 38 00 00 04 */	li r0, 0x4
/* 8139181C | 38 A0 00 00 */	li r5, 0x0
/* 81391820 | 38 60 00 00 */	li r3, 0x0
/* 81391824 | 7C 09 03 A6 */	mtctr r0
.L_81391828:
/* 81391828 | 7C 9E 1A 14 */	add r4, r30, r3
/* 8139182C | 38 63 00 04 */	addi r3, r3, 0x4
/* 81391830 | 90 A4 0D 30 */	stw r5, 0xd30(r4)
/* 81391834 | 42 00 FF F4 */	bdnz .L_81391828
/* 81391838 | 7F C3 F3 78 */	mr r3, r30
/* 8139183C | 48 00 12 5D */	bl return_to_freelist__Q33ipl5scene5BoardFv
/* 81391840 | 38 00 00 01 */	li r0, 0x1
/* 81391844 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391848 | 98 1E 0D 00 */	stb r0, 0xd00(r30)
/* 8139184C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81391850 | 3C 80 81 39 */	lis r4, read_task___Q23ipl5sceneFPv@ha
/* 81391854 | 7F C5 F3 78 */	mr r5, r30
/* 81391858 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 8139185C | 38 84 1B 64 */	addi r4, r4, read_task___Q23ipl5sceneFPv@l
/* 81391860 | 38 C0 00 00 */	li r6, 0x0
/* 81391864 | 48 26 69 E5 */	bl fn_815F8248
/* 81391868 | 38 00 00 05 */	li r0, 0x5
/* 8139186C | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_81391870:
/* 81391870 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81391874 | 48 26 7C 9D */	bl _restgpr_28
/* 81391878 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139187C | 7C 08 03 A6 */	mtlr r0
/* 81391880 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81391884 | 4E 80 00 20 */	blr
.endfn stt_wait_fadeaway__Q33ipl5scene5BoardFv

# .text:0x2AA0 | 0x81391888 | size: 0x7C
# ipl::scene::Board::stt_wait_stand()
.fn stt_wait_stand__Q33ipl5scene5BoardFv, global
/* 81391888 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139188C | 7C 08 02 A6 */	mflr r0
/* 81391890 | 38 80 00 00 */	li r4, 0x0
/* 81391894 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81391898 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139189C | 3B E0 00 01 */	li r31, 0x1
/* 813918A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813918A4 | 7C 7E 1B 78 */	mr r30, r3
/* 813918A8 | 48 00 00 20 */	b .L_813918C8
.L_813918AC:
/* 813918AC | 80 63 01 2C */	lwz r3, 0x12c(r3)
/* 813918B0 | 38 03 FF FD */	subi r0, r3, 0x3
/* 813918B4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813918B8 | 54 00 D9 7E */	srwi r0, r0, 5
/* 813918BC | 7F E3 00 38 */	and r3, r31, r0
/* 813918C0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813918C4 | 7F E0 19 10 */	subfe r31, r0, r3
.L_813918C8:
/* 813918C8 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 813918CC | 48 18 0A 11 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813918D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813918D4 | 7C 64 1B 78 */	mr r4, r3
/* 813918D8 | 40 82 FF D4 */	bne .L_813918AC
/* 813918DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813918E0 | 41 82 00 0C */	beq .L_813918EC
/* 813918E4 | 38 00 00 05 */	li r0, 0x5
/* 813918E8 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_813918EC:
/* 813918EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813918F0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813918F4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813918F8 | 7C 08 03 A6 */	mtlr r0
/* 813918FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81391900 | 4E 80 00 20 */	blr
.endfn stt_wait_stand__Q33ipl5scene5BoardFv

# .text:0x2B1C | 0x81391904 | size: 0xC0
# ipl::scene::count_task_cb_(void*, _CDBRecord*)
.fn count_task_cb___Q23ipl5sceneFPvP10_CDBRecord, global
/* 81391904 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81391908 | 7C 08 02 A6 */	mflr r0
/* 8139190C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81391910 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81391914 | 48 26 7B B1 */	bl _savegpr_28
/* 81391918 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8139191C | 7C 9C 23 78 */	mr r28, r4
/* 81391920 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81391924 | 3B A0 00 00 */	li r29, 0x0
/* 81391928 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8139192C | 38 80 00 04 */	li r4, 0x4
/* 81391930 | 48 07 98 09 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391934 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391938 | 7C 7F 1B 78 */	mr r31, r3
/* 8139193C | 41 82 00 6C */	beq .L_813919A8
/* 81391940 | 38 00 00 00 */	li r0, 0x0
/* 81391944 | 7F 83 E3 78 */	mr r3, r28
/* 81391948 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8139194C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81391950 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81391954 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81391958 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8139195C | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81391960 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81391964 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81391968 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 8139196C | 48 0F B1 AD */	bl CDBRecordGetTypeForce
/* 81391970 | 88 1E 02 BC */	lbz r0, 0x2bc(r30)
/* 81391974 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391978 | 41 82 00 0C */	beq .L_81391984
/* 8139197C | 38 60 00 00 */	li r3, 0x0
/* 81391980 | 48 00 00 08 */	b .L_81391988
.L_81391984:
/* 81391984 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
.L_81391988:
/* 81391988 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139198C | 4B FA DF 61 */	bl isValidType__Q33ipl3cdb7ManagerFPCc
/* 81391990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391994 | 41 82 00 10 */	beq .L_813919A4
/* 81391998 | 80 7F 0F A4 */	lwz r3, 0xfa4(r31)
/* 8139199C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813919A0 | 90 1F 0F A4 */	stw r0, 0xfa4(r31)
.L_813919A4:
/* 813919A4 | 3B A0 00 01 */	li r29, 0x1
.L_813919A8:
/* 813919A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813919AC | 7F A3 EB 78 */	mr r3, r29
/* 813919B0 | 48 26 7B 61 */	bl _restgpr_28
/* 813919B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813919B8 | 7C 08 03 A6 */	mtlr r0
/* 813919BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813919C0 | 4E 80 00 20 */	blr
.endfn count_task_cb___Q23ipl5sceneFPvP10_CDBRecord

# .text:0x2BDC | 0x813919C4 | size: 0x110
# ipl::scene::count_task_(void*)
.fn count_task___Q23ipl5sceneFPv, global
/* 813919C4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813919C8 | 7C 08 02 A6 */	mflr r0
/* 813919CC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813919D0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813919D4 | 48 26 7A F5 */	bl _savegpr_29
/* 813919D8 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813919DC | 7C 7D 1B 78 */	mr r29, r3
/* 813919E0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813919E4 | 38 80 00 04 */	li r4, 0x4
/* 813919E8 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813919EC | 48 07 97 4D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813919F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813919F4 | 7C 7F 1B 78 */	mr r31, r3
/* 813919F8 | 41 82 00 C4 */	beq .L_81391ABC
/* 813919FC | 80 A3 0F A4 */	lwz r5, 0xfa4(r3)
/* 81391A00 | 38 00 00 00 */	li r0, 0x0
/* 81391A04 | 38 9E 00 3C */	addi r4, r30, 0x3c
/* 81391A08 | 90 A3 0F A8 */	stw r5, 0xfa8(r3)
/* 81391A0C | 90 03 0F A4 */	stw r0, 0xfa4(r3)
/* 81391A10 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81391A14 | 4B FF D5 85 */	bl __ct__Q33ipl7utility4DateFRC14OSCalendarTime
/* 81391A18 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 81391A1C | 38 C0 00 00 */	li r6, 0x0
/* 81391A20 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81391A24 | 38 E0 00 00 */	li r7, 0x0
/* 81391A28 | 80 A1 00 18 */	lwz r5, 0x18(r1)
/* 81391A2C | 38 84 FF FF */	subi r4, r4, 0x1
/* 81391A30 | 39 00 00 00 */	li r8, 0x0
/* 81391A34 | 48 0F 48 B5 */	bl CDBMakeCDBDate
/* 81391A38 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 81391A3C | 38 C0 00 17 */	li r6, 0x17
/* 81391A40 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81391A44 | 38 E0 00 3B */	li r7, 0x3b
/* 81391A48 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81391A4C | 38 84 FF FF */	subi r4, r4, 0x1
/* 81391A50 | 80 A1 00 18 */	lwz r5, 0x18(r1)
/* 81391A54 | 39 00 00 3B */	li r8, 0x3b
/* 81391A58 | 48 0F 48 91 */	bl CDBMakeCDBDate
/* 81391A5C | 88 1E 02 BC */	lbz r0, 0x2bc(r30)
/* 81391A60 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81391A64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391A68 | 41 82 00 0C */	beq .L_81391A74
/* 81391A6C | 38 60 00 00 */	li r3, 0x0
/* 81391A70 | 48 00 00 08 */	b .L_81391A78
.L_81391A74:
/* 81391A74 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
.L_81391A78:
/* 81391A78 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 81391A7C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81391A80 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81391A84 | 38 C0 00 01 */	li r6, 0x1
/* 81391A88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391A8C | 38 E0 00 01 */	li r7, 0x1
/* 81391A90 | 41 82 00 08 */	beq .L_81391A98
/* 81391A94 | 38 E0 00 03 */	li r7, 0x3
.L_81391A98:
/* 81391A98 | 3D 20 81 39 */	lis r9, count_task_cb___Q23ipl5sceneFPvP10_CDBRecord@ha
/* 81391A9C | 7F AA EB 78 */	mr r10, r29
/* 81391AA0 | 39 00 00 00 */	li r8, 0x0
/* 81391AA4 | 39 29 19 04 */	addi r9, r9, count_task_cb___Q23ipl5sceneFPvP10_CDBRecord@l
/* 81391AA8 | 4B FA E2 B9 */	bl search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv
/* 81391AAC | 38 60 00 01 */	li r3, 0x1
/* 81391AB0 | 38 00 00 00 */	li r0, 0x0
/* 81391AB4 | 98 7F 0D 04 */	stb r3, 0xd04(r31)
/* 81391AB8 | 98 1F 0D 03 */	stb r0, 0xd03(r31)
.L_81391ABC:
/* 81391ABC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81391AC0 | 48 26 7A 55 */	bl _restgpr_29
/* 81391AC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81391AC8 | 7C 08 03 A6 */	mtlr r0
/* 81391ACC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81391AD0 | 4E 80 00 20 */	blr
.endfn count_task___Q23ipl5sceneFPv

# .text:0x2CEC | 0x81391AD4 | size: 0x30
# ipl::scene::Board::exec_count_task()
.fn exec_count_task__Q33ipl5scene5BoardFv, global
/* 81391AD4 | 38 80 00 00 */	li r4, 0x0
/* 81391AD8 | 38 00 00 01 */	li r0, 0x1
/* 81391ADC | 98 83 0D 04 */	stb r4, 0xd04(r3)
/* 81391AE0 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 81391AE4 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 81391AE8 | 3C 80 81 39 */	lis r4, count_task___Q23ipl5sceneFPv@ha
/* 81391AEC | 98 03 0D 03 */	stb r0, 0xd03(r3)
/* 81391AF0 | 7C 65 1B 78 */	mr r5, r3
/* 81391AF4 | 38 C0 00 00 */	li r6, 0x0
/* 81391AF8 | 38 84 19 C4 */	addi r4, r4, count_task___Q23ipl5sceneFPv@l
/* 81391AFC | 80 67 00 D0 */	lwz r3, 0xd0(r7)
/* 81391B00 | 48 26 67 48 */	b fn_815F8248
.endfn exec_count_task__Q33ipl5scene5BoardFv

# .text:0x2D1C | 0x81391B04 | size: 0x60
.fn iplBoard_81391B04, global
/* 81391B04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81391B08 | 7C 08 02 A6 */	mflr r0
/* 81391B0C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391B10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81391B14 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81391B18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81391B1C | 3B E0 00 00 */	li r31, 0x0
/* 81391B20 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81391B24 | 7C 9E 23 78 */	mr r30, r4
/* 81391B28 | 38 80 00 04 */	li r4, 0x4
/* 81391B2C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81391B30 | 48 07 96 09 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391B34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391B38 | 41 82 00 10 */	beq .L_81391B48
/* 81391B3C | 7F C4 F3 78 */	mr r4, r30
/* 81391B40 | 4B FF E3 49 */	bl appendRecord__Q33ipl5scene5BoardFP10_CDBRecord
/* 81391B44 | 7C 7F 1B 78 */	mr r31, r3
.L_81391B48:
/* 81391B48 | 7F E3 FB 78 */	mr r3, r31
/* 81391B4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81391B50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81391B54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81391B58 | 7C 08 03 A6 */	mtlr r0
/* 81391B5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81391B60 | 4E 80 00 20 */	blr
.endfn iplBoard_81391B04

# .text:0x2D7C | 0x81391B64 | size: 0x1A0
# ipl::scene::read_task_(void*)
.fn read_task___Q23ipl5sceneFPv, global
/* 81391B64 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81391B68 | 7C 08 02 A6 */	mflr r0
/* 81391B6C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81391B70 | 38 80 00 04 */	li r4, 0x4
/* 81391B74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81391B78 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81391B7C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81391B80 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81391B84 | 7C 7E 1B 78 */	mr r30, r3
/* 81391B88 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81391B8C | 48 07 95 AD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391B90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391B94 | 7C 7F 1B 78 */	mr r31, r3
/* 81391B98 | 41 82 01 54 */	beq .L_81391CEC
/* 81391B9C | 88 03 0D E0 */	lbz r0, 0xde0(r3)
/* 81391BA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391BA4 | 41 82 00 28 */	beq .L_81391BCC
/* 81391BA8 | 80 63 0D E4 */	lwz r3, 0xde4(r3)
/* 81391BAC | 80 9F 0D E8 */	lwz r4, 0xde8(r31)
/* 81391BB0 | 80 BF 0D EC */	lwz r5, 0xdec(r31)
/* 81391BB4 | 80 DF 0D F0 */	lwz r6, 0xdf0(r31)
/* 81391BB8 | 80 FF 0D F4 */	lwz r7, 0xdf4(r31)
/* 81391BBC | 81 1F 0D F8 */	lwz r8, 0xdf8(r31)
/* 81391BC0 | 48 0F 47 29 */	bl CDBMakeCDBDate
/* 81391BC4 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81391BC8 | 48 00 00 58 */	b .L_81391C20
.L_81391BCC:
/* 81391BCC | 80 03 0F 9C */	lwz r0, 0xf9c(r3)
/* 81391BD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391BD4 | 40 82 00 28 */	bne .L_81391BFC
/* 81391BD8 | 80 9F 0D 0C */	lwz r4, 0xd0c(r31)
/* 81391BDC | 38 C0 00 17 */	li r6, 0x17
/* 81391BE0 | 80 63 0D 08 */	lwz r3, 0xd08(r3)
/* 81391BE4 | 38 E0 00 3B */	li r7, 0x3b
/* 81391BE8 | 80 BF 0D 10 */	lwz r5, 0xd10(r31)
/* 81391BEC | 38 84 FF FF */	subi r4, r4, 0x1
/* 81391BF0 | 39 00 00 3B */	li r8, 0x3b
/* 81391BF4 | 48 0F 46 F5 */	bl CDBMakeCDBDate
/* 81391BF8 | 48 00 00 24 */	b .L_81391C1C
.L_81391BFC:
/* 81391BFC | 80 9F 0D 0C */	lwz r4, 0xd0c(r31)
/* 81391C00 | 38 C0 00 00 */	li r6, 0x0
/* 81391C04 | 80 63 0D 08 */	lwz r3, 0xd08(r3)
/* 81391C08 | 38 E0 00 00 */	li r7, 0x0
/* 81391C0C | 80 BF 0D 10 */	lwz r5, 0xd10(r31)
/* 81391C10 | 38 84 FF FF */	subi r4, r4, 0x1
/* 81391C14 | 39 00 00 00 */	li r8, 0x0
/* 81391C18 | 48 0F 46 D1 */	bl CDBMakeCDBDate
.L_81391C1C:
/* 81391C1C | 90 61 00 0C */	stw r3, 0xc(r1)
.L_81391C20:
/* 81391C20 | 80 1F 0F 9C */	lwz r0, 0xf9c(r31)
/* 81391C24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391C28 | 40 82 00 28 */	bne .L_81391C50
/* 81391C2C | 80 9F 0D 0C */	lwz r4, 0xd0c(r31)
/* 81391C30 | 38 C0 00 00 */	li r6, 0x0
/* 81391C34 | 80 7F 0D 08 */	lwz r3, 0xd08(r31)
/* 81391C38 | 38 E0 00 00 */	li r7, 0x0
/* 81391C3C | 80 BF 0D 10 */	lwz r5, 0xd10(r31)
/* 81391C40 | 38 84 FF FF */	subi r4, r4, 0x1
/* 81391C44 | 39 00 00 00 */	li r8, 0x0
/* 81391C48 | 48 0F 46 A1 */	bl CDBMakeCDBDate
/* 81391C4C | 48 00 00 24 */	b .L_81391C70
.L_81391C50:
/* 81391C50 | 80 9F 0D 0C */	lwz r4, 0xd0c(r31)
/* 81391C54 | 38 C0 00 17 */	li r6, 0x17
/* 81391C58 | 80 7F 0D 08 */	lwz r3, 0xd08(r31)
/* 81391C5C | 38 E0 00 3B */	li r7, 0x3b
/* 81391C60 | 80 BF 0D 10 */	lwz r5, 0xd10(r31)
/* 81391C64 | 38 84 FF FF */	subi r4, r4, 0x1
/* 81391C68 | 39 00 00 3B */	li r8, 0x3b
/* 81391C6C | 48 0F 46 7D */	bl CDBMakeCDBDate
.L_81391C70:
/* 81391C70 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81391C74 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81391C78 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81391C7C | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81391C80 | 80 DF 0F 9C */	lwz r6, 0xf9c(r31)
/* 81391C84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391C88 | 41 82 00 0C */	beq .L_81391C94
/* 81391C8C | 38 60 00 00 */	li r3, 0x0
/* 81391C90 | 48 00 00 08 */	b .L_81391C98
.L_81391C94:
/* 81391C94 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_81391C98:
/* 81391C98 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 81391C9C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81391CA0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81391CA4 | 38 E0 00 01 */	li r7, 0x1
/* 81391CA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391CAC | 41 82 00 08 */	beq .L_81391CB4
/* 81391CB0 | 38 E0 00 03 */	li r7, 0x3
.L_81391CB4:
/* 81391CB4 | 3D 20 81 39 */	lis r9, iplBoard_81391B04@ha
/* 81391CB8 | 7F CA F3 78 */	mr r10, r30
/* 81391CBC | 39 00 00 00 */	li r8, 0x0
/* 81391CC0 | 39 29 1B 04 */	addi r9, r9, iplBoard_81391B04@l
/* 81391CC4 | 4B FA E0 9D */	bl search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv
/* 81391CC8 | 38 7F 0E 30 */	addi r3, r31, 0xe30
/* 81391CCC | 38 80 00 00 */	li r4, 0x0
/* 81391CD0 | 38 A0 01 68 */	li r5, 0x168
/* 81391CD4 | 4B F9 E6 61 */	bl memset
/* 81391CD8 | 7F E3 FB 78 */	mr r3, r31
/* 81391CDC | 48 00 0F E1 */	bl set_key_table__Q33ipl5scene5BoardFv
/* 81391CE0 | 38 00 00 00 */	li r0, 0x0
/* 81391CE4 | 98 1F 0D 00 */	stb r0, 0xd00(r31)
/* 81391CE8 | 98 1F 0D 01 */	stb r0, 0xd01(r31)
.L_81391CEC:
/* 81391CEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81391CF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81391CF4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81391CF8 | 7C 08 03 A6 */	mtlr r0
/* 81391CFC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81391D00 | 4E 80 00 20 */	blr
.endfn read_task___Q23ipl5sceneFPv

# .text:0x2F1C | 0x81391D04 | size: 0x140
# ipl::scene::fwd_search_task_cb_(void*, _CDBRecord*)
.fn fwd_search_task_cb___Q23ipl5sceneFPvP10_CDBRecord, global
/* 81391D04 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81391D08 | 7C 08 02 A6 */	mflr r0
/* 81391D0C | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81391D10 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81391D14 | 48 26 77 B1 */	bl _savegpr_28
/* 81391D18 | 7C 9C 23 78 */	mr r28, r4
/* 81391D1C | 38 61 00 1C */	addi r3, r1, 0x1c
/* 81391D20 | 4B FF DD 19 */	bl __ct__Q33ipl7utility4DateFv
/* 81391D24 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391D28 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81391D2C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81391D30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391D34 | 41 82 00 0C */	beq .L_81391D40
/* 81391D38 | 3B E0 00 00 */	li r31, 0x0
/* 81391D3C | 48 00 00 08 */	b .L_81391D44
.L_81391D40:
/* 81391D40 | 83 E3 00 7C */	lwz r31, 0x7c(r3)
.L_81391D44:
/* 81391D44 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81391D48 | 38 00 00 00 */	li r0, 0x0
/* 81391D4C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81391D50 | 98 01 00 14 */	stb r0, 0x14(r1)
/* 81391D54 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81391D58 | 3B C0 00 01 */	li r30, 0x1
/* 81391D5C | 98 01 00 15 */	stb r0, 0x15(r1)
/* 81391D60 | 38 80 00 04 */	li r4, 0x4
/* 81391D64 | 98 01 00 16 */	stb r0, 0x16(r1)
/* 81391D68 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 81391D6C | 98 01 00 18 */	stb r0, 0x18(r1)
/* 81391D70 | 98 01 00 19 */	stb r0, 0x19(r1)
/* 81391D74 | 98 01 00 1A */	stb r0, 0x1a(r1)
/* 81391D78 | 98 01 00 1B */	stb r0, 0x1b(r1)
/* 81391D7C | 48 07 93 BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391D80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391D84 | 7C 7D 1B 78 */	mr r29, r3
/* 81391D88 | 41 82 00 A0 */	beq .L_81391E28
/* 81391D8C | 7F 83 E3 78 */	mr r3, r28
/* 81391D90 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 81391D94 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81391D98 | 38 C1 00 24 */	addi r6, r1, 0x24
/* 81391D9C | 38 E1 00 10 */	addi r7, r1, 0x10
/* 81391DA0 | 39 01 00 0C */	addi r8, r1, 0xc
/* 81391DA4 | 39 21 00 08 */	addi r9, r1, 0x8
/* 81391DA8 | 48 0F AE 55 */	bl CDBRecordGetCalendarTimeForce
/* 81391DAC | 7F 83 E3 78 */	mr r3, r28
/* 81391DB0 | 38 81 00 28 */	addi r4, r1, 0x28
/* 81391DB4 | 48 0F AE 01 */	bl CDBRecordGetKeyForce
/* 81391DB8 | 7F 83 E3 78 */	mr r3, r28
/* 81391DBC | 38 81 00 14 */	addi r4, r1, 0x14
/* 81391DC0 | 48 0F AD 59 */	bl CDBRecordGetTypeForce
/* 81391DC4 | 7F E3 FB 78 */	mr r3, r31
/* 81391DC8 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81391DCC | 4B FA DB 21 */	bl isValidType__Q33ipl3cdb7ManagerFPCc
/* 81391DD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391DD4 | 40 82 00 0C */	bne .L_81391DE0
/* 81391DD8 | 38 60 00 01 */	li r3, 0x1
/* 81391DDC | 48 00 00 50 */	b .L_81391E2C
.L_81391DE0:
/* 81391DE0 | 7F A3 EB 78 */	mr r3, r29
/* 81391DE4 | 38 81 00 28 */	addi r4, r1, 0x28
/* 81391DE8 | 48 00 14 01 */	bl is_already_read__Q33ipl5scene5BoardCFPCc
/* 81391DEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391DF0 | 41 82 00 0C */	beq .L_81391DFC
/* 81391DF4 | 38 60 00 01 */	li r3, 0x1
/* 81391DF8 | 48 00 00 34 */	b .L_81391E2C
.L_81391DFC:
/* 81391DFC | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 81391E00 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 81391E04 | 38 9D 0D 08 */	addi r4, r29, 0xd08
/* 81391E08 | 38 05 00 01 */	addi r0, r5, 0x1
/* 81391E0C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81391E10 | 4B FF DD 75 */	bl __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81391E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391E18 | 41 82 00 10 */	beq .L_81391E28
/* 81391E1C | 7F A3 EB 78 */	mr r3, r29
/* 81391E20 | 48 00 05 35 */	bl show_ricon__Q33ipl5scene5BoardFv
/* 81391E24 | 3B C0 00 00 */	li r30, 0x0
.L_81391E28:
/* 81391E28 | 7F C3 F3 78 */	mr r3, r30
.L_81391E2C:
/* 81391E2C | 39 61 00 70 */	addi r11, r1, 0x70
/* 81391E30 | 48 26 76 E1 */	bl _restgpr_28
/* 81391E34 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81391E38 | 7C 08 03 A6 */	mtlr r0
/* 81391E3C | 38 21 00 70 */	addi r1, r1, 0x70
/* 81391E40 | 4E 80 00 20 */	blr
.endfn fwd_search_task_cb___Q23ipl5sceneFPvP10_CDBRecord

# .text:0x305C | 0x81391E44 | size: 0xE0
# ipl::scene::fwd_search_task_(void*)
.fn fwd_search_task___Q23ipl5sceneFPv, global
/* 81391E44 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81391E48 | 7C 08 02 A6 */	mflr r0
/* 81391E4C | 38 80 00 04 */	li r4, 0x4
/* 81391E50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81391E54 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81391E58 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81391E5C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81391E60 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81391E64 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81391E68 | 48 07 92 D1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391E6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391E70 | 7C 7F 1B 78 */	mr r31, r3
/* 81391E74 | 41 82 00 98 */	beq .L_81391F0C
/* 81391E78 | 80 63 0D E4 */	lwz r3, 0xde4(r3)
/* 81391E7C | 80 9F 0D E8 */	lwz r4, 0xde8(r31)
/* 81391E80 | 80 BF 0D EC */	lwz r5, 0xdec(r31)
/* 81391E84 | 80 DF 0D F0 */	lwz r6, 0xdf0(r31)
/* 81391E88 | 80 FF 0D F4 */	lwz r7, 0xdf4(r31)
/* 81391E8C | 81 1F 0D F8 */	lwz r8, 0xdf8(r31)
/* 81391E90 | 48 0F 44 59 */	bl CDBMakeCDBDate
/* 81391E94 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81391E98 | 38 C0 00 17 */	li r6, 0x17
/* 81391E9C | 38 E0 00 3B */	li r7, 0x3b
/* 81391EA0 | 39 00 00 3B */	li r8, 0x3b
/* 81391EA4 | 80 7F 0D E4 */	lwz r3, 0xde4(r31)
/* 81391EA8 | 80 9F 0D E8 */	lwz r4, 0xde8(r31)
/* 81391EAC | 80 BF 0D EC */	lwz r5, 0xdec(r31)
/* 81391EB0 | 48 0F 44 39 */	bl CDBMakeCDBDate
/* 81391EB4 | 88 1E 02 BC */	lbz r0, 0x2bc(r30)
/* 81391EB8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81391EBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391EC0 | 41 82 00 0C */	beq .L_81391ECC
/* 81391EC4 | 38 60 00 00 */	li r3, 0x0
/* 81391EC8 | 48 00 00 08 */	b .L_81391ED0
.L_81391ECC:
/* 81391ECC | 80 7E 00 7C */	lwz r3, 0x7c(r30)
.L_81391ED0:
/* 81391ED0 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 81391ED4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81391ED8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81391EDC | 38 C0 00 01 */	li r6, 0x1
/* 81391EE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81391EE4 | 38 E0 00 01 */	li r7, 0x1
/* 81391EE8 | 41 82 00 08 */	beq .L_81391EF0
/* 81391EEC | 38 E0 00 03 */	li r7, 0x3
.L_81391EF0:
/* 81391EF0 | 3D 20 81 39 */	lis r9, fwd_search_task_cb___Q23ipl5sceneFPvP10_CDBRecord@ha
/* 81391EF4 | 39 00 00 00 */	li r8, 0x0
/* 81391EF8 | 39 29 1D 04 */	addi r9, r9, fwd_search_task_cb___Q23ipl5sceneFPvP10_CDBRecord@l
/* 81391EFC | 39 40 00 00 */	li r10, 0x0
/* 81391F00 | 4B FA DE 61 */	bl search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv
/* 81391F04 | 38 00 00 00 */	li r0, 0x0
/* 81391F08 | 98 1F 0D 00 */	stb r0, 0xd00(r31)
.L_81391F0C:
/* 81391F0C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81391F10 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81391F14 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81391F18 | 7C 08 03 A6 */	mtlr r0
/* 81391F1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81391F20 | 4E 80 00 20 */	blr
.endfn fwd_search_task___Q23ipl5sceneFPv

# .text:0x313C | 0x81391F24 | size: 0x60
# ipl::scene::delete_task_(void*)
.fn delete_task___Q23ipl5sceneFPv, global
/* 81391F24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81391F28 | 7C 08 02 A6 */	mflr r0
/* 81391F2C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81391F30 | 38 80 00 04 */	li r4, 0x4
/* 81391F34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81391F38 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81391F3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81391F40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81391F44 | 7C 7E 1B 78 */	mr r30, r3
/* 81391F48 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81391F4C | 48 07 91 ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 81391F50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81391F54 | 7C 7F 1B 78 */	mr r31, r3
/* 81391F58 | 41 82 00 14 */	beq .L_81391F6C
/* 81391F5C | 7F C3 F3 78 */	mr r3, r30
/* 81391F60 | 48 00 3F 95 */	bl delete_record__Q33ipl5scene11BoardObjectFv
/* 81391F64 | 38 00 00 00 */	li r0, 0x0
/* 81391F68 | 98 1F 0D 02 */	stb r0, 0xd02(r31)
.L_81391F6C:
/* 81391F6C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81391F70 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81391F74 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81391F78 | 7C 08 03 A6 */	mtlr r0
/* 81391F7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81391F80 | 4E 80 00 20 */	blr
.endfn delete_task___Q23ipl5sceneFPv

# .text:0x319C | 0x81391F84 | size: 0x80
# ipl::scene::Board::set_text_date()
.fn set_text_date__Q33ipl5scene5BoardFv, global
/* 81391F84 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81391F88 | 7C 08 02 A6 */	mflr r0
/* 81391F8C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81391F90 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81391F94 | 7C 7F 1B 78 */	mr r31, r3
/* 81391F98 | 38 61 00 14 */	addi r3, r1, 0x14
/* 81391F9C | 4B FF DA 9D */	bl __ct__Q33ipl7utility4DateFv
/* 81391FA0 | 38 7F 0D 08 */	addi r3, r31, 0xd08
/* 81391FA4 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81391FA8 | 4B FF DA A9 */	bl getYesterday__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 81391FAC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81391FB0 | 4B FF DA 89 */	bl __ct__Q33ipl7utility4DateFv
/* 81391FB4 | 38 7F 0D 08 */	addi r3, r31, 0xd08
/* 81391FB8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81391FBC | 4B FF DC 09 */	bl getTomorrow__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 81391FC0 | 7F E3 FB 78 */	mr r3, r31
/* 81391FC4 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81391FC8 | 38 AD 85 CB */	li r5, lbl_8169660B@sda21
/* 81391FCC | 48 00 00 39 */	bl set_text_date__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePCc
/* 81391FD0 | 7F E3 FB 78 */	mr r3, r31
/* 81391FD4 | 38 9F 0D 08 */	addi r4, r31, 0xd08
/* 81391FD8 | 38 AD 85 D3 */	li r5, lbl_81696613@sda21
/* 81391FDC | 48 00 00 29 */	bl set_text_date__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePCc
/* 81391FE0 | 7F E3 FB 78 */	mr r3, r31
/* 81391FE4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81391FE8 | 38 AD 85 DB */	li r5, lbl_8169661B@sda21
/* 81391FEC | 48 00 00 19 */	bl set_text_date__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePCc
/* 81391FF0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81391FF4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81391FF8 | 7C 08 03 A6 */	mtlr r0
/* 81391FFC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81392000 | 4E 80 00 20 */	blr
.endfn set_text_date__Q33ipl5scene5BoardFv

# .text:0x321C | 0x81392004 | size: 0x14C
# ipl::scene::Board::set_text_date(const ipl::utility::Date&, const char*)
.fn set_text_date__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePCc, global
/* 81392004 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81392008 | 7C 08 02 A6 */	mflr r0
/* 8139200C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81392010 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81392014 | 48 26 74 B5 */	bl _savegpr_29
/* 81392018 | 38 00 00 10 */	li r0, 0x10
/* 8139201C | 7C 7D 1B 78 */	mr r29, r3
/* 81392020 | 7C 9F 23 78 */	mr r31, r4
/* 81392024 | 7C BE 2B 78 */	mr r30, r5
/* 81392028 | 38 81 00 06 */	addi r4, r1, 0x6
/* 8139202C | 38 60 00 00 */	li r3, 0x0
/* 81392030 | 7C 09 03 A6 */	mtctr r0
.L_81392034:
/* 81392034 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 81392038 | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 8139203C | 42 00 FF F8 */	bdnz .L_81392034
/* 81392040 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81392044 | 38 80 00 00 */	li r4, 0x0
/* 81392048 | 38 A0 00 40 */	li r5, 0x40
/* 8139204C | 4B F9 E2 E9 */	bl memset
/* 81392050 | 4B FA 39 9D */	bl getLanguage__Q23ipl6SystemFv
/* 81392054 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 81392058 | 41 82 00 2C */	beq .L_81392084
/* 8139205C | 40 80 00 40 */	bge .L_8139209C
/* 81392060 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81392064 | 40 80 00 08 */	bge .L_8139206C
/* 81392068 | 48 00 00 34 */	b .L_8139209C
.L_8139206C:
/* 8139206C | 7F A3 EB 78 */	mr r3, r29
/* 81392070 | 7F E4 FB 78 */	mr r4, r31
/* 81392074 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81392078 | 38 C0 00 20 */	li r6, 0x20
/* 8139207C | 48 00 02 51 */	bl get_text_usafre__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePwUl
/* 81392080 | 48 00 00 30 */	b .L_813920B0
.L_81392084:
/* 81392084 | 7F A3 EB 78 */	mr r3, r29
/* 81392088 | 7F E4 FB 78 */	mr r4, r31
/* 8139208C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81392090 | 38 C0 00 20 */	li r6, 0x20
/* 81392094 | 48 00 01 29 */	bl get_text_spa__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePwUl
/* 81392098 | 48 00 00 18 */	b .L_813920B0
.L_8139209C:
/* 8139209C | 7F A3 EB 78 */	mr r3, r29
/* 813920A0 | 7F E4 FB 78 */	mr r4, r31
/* 813920A4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813920A8 | 38 C0 00 20 */	li r6, 0x20
/* 813920AC | 48 00 01 99 */	bl get_text_usaeng__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePwUl
.L_813920B0:
/* 813920B0 | 80 7D 0D 24 */	lwz r3, 0xd24(r29)
/* 813920B4 | 7F C4 F3 78 */	mr r4, r30
/* 813920B8 | 38 A0 00 01 */	li r5, 0x1
/* 813920BC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813920C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813920C4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813920C8 | 7D 89 03 A6 */	mtctr r12
/* 813920CC | 4E 80 04 21 */	bctrl
/* 813920D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813920D4 | 7C 7E 1B 78 */	mr r30, r3
/* 813920D8 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 813920DC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813920E0 | 7D 89 03 A6 */	mtctr r12
/* 813920E4 | 4E 80 04 21 */	bctrl
/* 813920E8 | 48 00 00 18 */	b .L_81392100
.L_813920EC:
/* 813920EC | 7C 03 F8 40 */	cmplw r3, r31
/* 813920F0 | 40 82 00 0C */	bne .L_813920FC
/* 813920F4 | 38 00 00 01 */	li r0, 0x1
/* 813920F8 | 48 00 00 14 */	b .L_8139210C
.L_813920FC:
/* 813920FC | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81392100:
/* 81392100 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392104 | 40 82 FF E8 */	bne .L_813920EC
/* 81392108 | 38 00 00 00 */	li r0, 0x0
.L_8139210C:
/* 8139210C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81392110 | 41 82 00 0C */	beq .L_8139211C
/* 81392114 | 7F C3 F3 78 */	mr r3, r30
/* 81392118 | 48 00 00 08 */	b .L_81392120
.L_8139211C:
/* 8139211C | 38 60 00 00 */	li r3, 0x0
.L_81392120:
/* 81392120 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81392124 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81392128 | 38 A0 00 00 */	li r5, 0x0
/* 8139212C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81392130 | 7D 89 03 A6 */	mtctr r12
/* 81392134 | 4E 80 04 21 */	bctrl
/* 81392138 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8139213C | 48 26 73 D9 */	bl _restgpr_29
/* 81392140 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81392144 | 7C 08 03 A6 */	mtlr r0
/* 81392148 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8139214C | 4E 80 00 20 */	blr
.endfn set_text_date__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePCc

# .text:0x3368 | 0x81392150 | size: 0x6C
# ipl::utility::Calendar::getWeek(const ipl::utility::Date&)
.fn getWeek__Q33ipl7utility8CalendarFRCQ33ipl7utility4Date, global
/* 81392150 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81392154 | 81 23 00 08 */	lwz r9, 0x8(r3)
/* 81392158 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8139215C | 81 03 00 00 */	lwz r8, 0x0(r3)
/* 81392160 | 41 81 00 0C */	bgt .L_8139216C
/* 81392164 | 39 08 FF FF */	subi r8, r8, 0x1
/* 81392168 | 38 84 00 0C */	addi r4, r4, 0xc
.L_8139216C:
/* 8139216C | 1C 64 00 0D */	mulli r3, r4, 0xd
/* 81392170 | 38 C0 01 90 */	li r6, 0x190
/* 81392174 | 7D 00 16 70 */	srawi r0, r8, 2
/* 81392178 | 38 80 00 64 */	li r4, 0x64
/* 8139217C | 38 A3 00 08 */	addi r5, r3, 0x8
/* 81392180 | 7C 00 01 94 */	addze r0, r0
/* 81392184 | 38 60 00 05 */	li r3, 0x5
/* 81392188 | 7C E5 1B D6 */	divw r7, r5, r3
/* 8139218C | 7C 08 02 14 */	add r0, r8, r0
/* 81392190 | 38 60 00 07 */	li r3, 0x7
/* 81392194 | 7C A8 23 D6 */	divw r5, r8, r4
/* 81392198 | 7C 89 3A 14 */	add r4, r9, r7
/* 8139219C | 7C C8 33 D6 */	divw r6, r8, r6
/* 813921A0 | 7C 05 00 50 */	subf r0, r5, r0
/* 813921A4 | 7C 06 02 14 */	add r0, r6, r0
/* 813921A8 | 7C 84 02 14 */	add r4, r4, r0
/* 813921AC | 7C 04 1B D6 */	divw r0, r4, r3
/* 813921B0 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 813921B4 | 7C 60 20 50 */	subf r3, r0, r4
/* 813921B8 | 4E 80 00 20 */	blr
.endfn getWeek__Q33ipl7utility8CalendarFRCQ33ipl7utility4Date

# .text:0x33D4 | 0x813921BC | size: 0x88
# ipl::scene::Board::get_text_spa(const ipl::utility::Date&, wchar_t*, unsigned long)
.fn get_text_spa__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePwUl, global
/* 813921BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813921C0 | 7C 08 02 A6 */	mflr r0
/* 813921C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813921C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813921CC | 48 26 72 F9 */	bl _savegpr_28
/* 813921D0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813921D4 | 7C 9C 23 78 */	mr r28, r4
/* 813921D8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813921DC | 7C BD 2B 78 */	mr r29, r5
/* 813921E0 | 83 E3 00 80 */	lwz r31, 0x80(r3)
/* 813921E4 | 7C DE 33 78 */	mr r30, r6
/* 813921E8 | 7F 83 E3 78 */	mr r3, r28
/* 813921EC | 4B FF FF 65 */	bl getWeek__Q33ipl7utility8CalendarFRCQ33ipl7utility4Date
/* 813921F0 | 3C 80 81 61 */	lis r4, scWeekMsgId__Q23ipl5scene@ha
/* 813921F4 | 54 60 10 3A */	slwi r0, r3, 2
/* 813921F8 | 38 84 F6 DC */	addi r4, r4, scWeekMsgId__Q23ipl5scene@l
/* 813921FC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81392200 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81392204 | 4B FA C5 B9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81392208 | 3C A0 81 65 */	lis r5, lbl_8164B0D4@ha
/* 8139220C | 80 FC 00 08 */	lwz r7, 0x8(r28)
/* 81392210 | 7C 66 1B 78 */	mr r6, r3
/* 81392214 | 81 1C 00 04 */	lwz r8, 0x4(r28)
/* 81392218 | 7F A3 EB 78 */	mr r3, r29
/* 8139221C | 7F C4 F3 78 */	mr r4, r30
/* 81392220 | 38 A5 B0 D4 */	addi r5, r5, lbl_8164B0D4@l
/* 81392224 | 4C C6 31 82 */	crclr cr1eq
/* 81392228 | 48 27 63 A9 */	bl swprintf
/* 8139222C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392230 | 48 26 72 E1 */	bl _restgpr_28
/* 81392234 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392238 | 7C 08 03 A6 */	mtlr r0
/* 8139223C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392240 | 4E 80 00 20 */	blr
.endfn get_text_spa__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePwUl

# .text:0x345C | 0x81392244 | size: 0x88
# ipl::scene::Board::get_text_usaeng(const ipl::utility::Date&, wchar_t*, unsigned long)
.fn get_text_usaeng__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePwUl, global
/* 81392244 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81392248 | 7C 08 02 A6 */	mflr r0
/* 8139224C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392250 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392254 | 48 26 72 71 */	bl _savegpr_28
/* 81392258 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139225C | 7C 9C 23 78 */	mr r28, r4
/* 81392260 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81392264 | 7C BD 2B 78 */	mr r29, r5
/* 81392268 | 83 E3 00 80 */	lwz r31, 0x80(r3)
/* 8139226C | 7C DE 33 78 */	mr r30, r6
/* 81392270 | 7F 83 E3 78 */	mr r3, r28
/* 81392274 | 4B FF FE DD */	bl getWeek__Q33ipl7utility8CalendarFRCQ33ipl7utility4Date
/* 81392278 | 3C 80 81 61 */	lis r4, scWeekMsgId__Q23ipl5scene@ha
/* 8139227C | 54 60 10 3A */	slwi r0, r3, 2
/* 81392280 | 38 84 F6 DC */	addi r4, r4, scWeekMsgId__Q23ipl5scene@l
/* 81392284 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81392288 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8139228C | 4B FA C5 31 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81392290 | 3C A0 81 65 */	lis r5, lbl_8164B118@ha
/* 81392294 | 80 FC 00 04 */	lwz r7, 0x4(r28)
/* 81392298 | 7C 66 1B 78 */	mr r6, r3
/* 8139229C | 81 1C 00 08 */	lwz r8, 0x8(r28)
/* 813922A0 | 7F A3 EB 78 */	mr r3, r29
/* 813922A4 | 7F C4 F3 78 */	mr r4, r30
/* 813922A8 | 38 A5 B1 18 */	addi r5, r5, lbl_8164B118@l
/* 813922AC | 4C C6 31 82 */	crclr cr1eq
/* 813922B0 | 48 27 63 21 */	bl swprintf
/* 813922B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813922B8 | 48 26 72 59 */	bl _restgpr_28
/* 813922BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813922C0 | 7C 08 03 A6 */	mtlr r0
/* 813922C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813922C8 | 4E 80 00 20 */	blr
.endfn get_text_usaeng__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePwUl

# .text:0x34E4 | 0x813922CC | size: 0x88
# ipl::scene::Board::get_text_usafre(const ipl::utility::Date&, wchar_t*, unsigned long)
.fn get_text_usafre__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePwUl, global
/* 813922CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813922D0 | 7C 08 02 A6 */	mflr r0
/* 813922D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813922D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813922DC | 48 26 71 E9 */	bl _savegpr_28
/* 813922E0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813922E4 | 7C 9C 23 78 */	mr r28, r4
/* 813922E8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813922EC | 7C BD 2B 78 */	mr r29, r5
/* 813922F0 | 83 E3 00 80 */	lwz r31, 0x80(r3)
/* 813922F4 | 7C DE 33 78 */	mr r30, r6
/* 813922F8 | 7F 83 E3 78 */	mr r3, r28
/* 813922FC | 4B FF FE 55 */	bl getWeek__Q33ipl7utility8CalendarFRCQ33ipl7utility4Date
/* 81392300 | 3C 80 81 61 */	lis r4, scWeekMsgId__Q23ipl5scene@ha
/* 81392304 | 54 60 10 3A */	slwi r0, r3, 2
/* 81392308 | 38 84 F6 DC */	addi r4, r4, scWeekMsgId__Q23ipl5scene@l
/* 8139230C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81392310 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81392314 | 4B FA C4 A9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81392318 | 3C A0 81 65 */	lis r5, lbl_8164B0D4@ha
/* 8139231C | 80 FC 00 04 */	lwz r7, 0x4(r28)
/* 81392320 | 7C 66 1B 78 */	mr r6, r3
/* 81392324 | 81 1C 00 08 */	lwz r8, 0x8(r28)
/* 81392328 | 7F A3 EB 78 */	mr r3, r29
/* 8139232C | 7F C4 F3 78 */	mr r4, r30
/* 81392330 | 38 A5 B0 D4 */	addi r5, r5, lbl_8164B0D4@l
/* 81392334 | 4C C6 31 82 */	crclr cr1eq
/* 81392338 | 48 27 62 99 */	bl swprintf
/* 8139233C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392340 | 48 26 71 D1 */	bl _restgpr_28
/* 81392344 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392348 | 7C 08 03 A6 */	mtlr r0
/* 8139234C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392350 | 4E 80 00 20 */	blr
.endfn get_text_usafre__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePwUl

# .text:0x356C | 0x81392354 | size: 0x110
# ipl::scene::Board::show_ricon()
.fn show_ricon__Q33ipl5scene5BoardFv, global
/* 81392354 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81392358 | 7C 08 02 A6 */	mflr r0
/* 8139235C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392360 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392364 | 48 26 71 65 */	bl _savegpr_29
/* 81392368 | 8B C3 0F 98 */	lbz r30, 0xf98(r3)
/* 8139236C | 38 00 00 01 */	li r0, 0x1
/* 81392370 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81392374 | 7C 7D 1B 78 */	mr r29, r3
/* 81392378 | 98 03 0F 98 */	stb r0, 0xf98(r3)
/* 8139237C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81392380 | 38 80 00 02 */	li r4, 0x2
/* 81392384 | 83 E5 00 64 */	lwz r31, 0x64(r5)
/* 81392388 | 7F E3 FB 78 */	mr r3, r31
/* 8139238C | 48 07 8D AD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392394 | 40 82 00 B8 */	bne .L_8139244C
/* 81392398 | 7F E3 FB 78 */	mr r3, r31
/* 8139239C | 38 80 00 07 */	li r4, 0x7
/* 813923A0 | 48 07 8D 99 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813923A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813923A8 | 40 82 00 A4 */	bne .L_8139244C
/* 813923AC | 7F E3 FB 78 */	mr r3, r31
/* 813923B0 | 38 80 00 08 */	li r4, 0x8
/* 813923B4 | 48 07 8D 85 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813923B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813923BC | 40 82 00 90 */	bne .L_8139244C
/* 813923C0 | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 813923C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813923C8 | 40 82 00 84 */	bne .L_8139244C
/* 813923CC | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 813923D0 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813923D4 | 41 82 00 10 */	beq .L_813923E4
/* 813923D8 | 38 03 FF F8 */	subi r0, r3, 0x8
/* 813923DC | 28 00 00 03 */	cmplwi r0, 0x3
/* 813923E0 | 41 81 00 6C */	bgt .L_8139244C
.L_813923E4:
/* 813923E4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813923E8 | 38 80 00 05 */	li r4, 0x5
/* 813923EC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813923F0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813923F4 | 48 07 8D 45 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813923F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813923FC | 41 82 00 50 */	beq .L_8139244C
/* 81392400 | 88 1D 0F 98 */	lbz r0, 0xf98(r29)
/* 81392404 | 7C 1E 00 40 */	cmplw r30, r0
/* 81392408 | 41 82 00 44 */	beq .L_8139244C
/* 8139240C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392410 | 38 80 00 05 */	li r4, 0x5
/* 81392414 | 48 07 8D 25 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392418 | 38 80 00 1E */	li r4, 0x1e
/* 8139241C | 48 00 A7 3D */	bl iplButton_8139CB58
/* 81392420 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392424 | 38 80 00 05 */	li r4, 0x5
/* 81392428 | 48 07 8D 11 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139242C | 88 03 00 D4 */	lbz r0, 0xd4(r3)
/* 81392430 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81392434 | 40 82 00 18 */	bne .L_8139244C
/* 81392438 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139243C | 38 80 00 05 */	li r4, 0x5
/* 81392440 | 48 07 8C F9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392444 | 38 80 00 17 */	li r4, 0x17
/* 81392448 | 48 00 A7 11 */	bl iplButton_8139CB58
.L_8139244C:
/* 8139244C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392450 | 48 26 70 C5 */	bl _restgpr_29
/* 81392454 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392458 | 7C 08 03 A6 */	mtlr r0
/* 8139245C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392460 | 4E 80 00 20 */	blr
.endfn show_ricon__Q33ipl5scene5BoardFv

# .text:0x367C | 0x81392464 | size: 0x80
# ipl::scene::Board::hide_ricon()
.fn hide_ricon__Q33ipl5scene5BoardFv, global
/* 81392464 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81392468 | 7C 08 02 A6 */	mflr r0
/* 8139246C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392470 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392474 | 48 26 70 55 */	bl _savegpr_29
/* 81392478 | 8B C3 0F 98 */	lbz r30, 0xf98(r3)
/* 8139247C | 38 00 00 00 */	li r0, 0x0
/* 81392480 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81392484 | 7C 7D 1B 78 */	mr r29, r3
/* 81392488 | 98 03 0F 98 */	stb r0, 0xf98(r3)
/* 8139248C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81392490 | 38 80 00 05 */	li r4, 0x5
/* 81392494 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392498 | 48 07 8C A1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139249C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813924A0 | 41 82 00 2C */	beq .L_813924CC
/* 813924A4 | 88 1D 0F 98 */	lbz r0, 0xf98(r29)
/* 813924A8 | 7C 1E 00 40 */	cmplw r30, r0
/* 813924AC | 41 82 00 20 */	beq .L_813924CC
/* 813924B0 | 7F A3 EB 78 */	mr r3, r29
/* 813924B4 | 48 00 04 99 */	bl edge_arrow__Q33ipl5scene5BoardFv
/* 813924B8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813924BC | 38 80 00 05 */	li r4, 0x5
/* 813924C0 | 48 07 8C 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813924C4 | 38 80 00 1F */	li r4, 0x1f
/* 813924C8 | 48 00 A6 91 */	bl iplButton_8139CB58
.L_813924CC:
/* 813924CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813924D0 | 48 26 70 45 */	bl _restgpr_29
/* 813924D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813924D8 | 7C 08 03 A6 */	mtlr r0
/* 813924DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813924E0 | 4E 80 00 20 */	blr
.endfn hide_ricon__Q33ipl5scene5BoardFv

# .text:0x36FC | 0x813924E4 | size: 0x110
# ipl::scene::Board::show_licon()
.fn show_licon__Q33ipl5scene5BoardFv, global
/* 813924E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813924E8 | 7C 08 02 A6 */	mflr r0
/* 813924EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813924F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813924F4 | 48 26 6F D5 */	bl _savegpr_29
/* 813924F8 | 8B C3 0F 99 */	lbz r30, 0xf99(r3)
/* 813924FC | 38 00 00 01 */	li r0, 0x1
/* 81392500 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81392504 | 7C 7D 1B 78 */	mr r29, r3
/* 81392508 | 98 03 0F 99 */	stb r0, 0xf99(r3)
/* 8139250C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81392510 | 38 80 00 02 */	li r4, 0x2
/* 81392514 | 83 E5 00 64 */	lwz r31, 0x64(r5)
/* 81392518 | 7F E3 FB 78 */	mr r3, r31
/* 8139251C | 48 07 8C 1D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392524 | 40 82 00 B8 */	bne .L_813925DC
/* 81392528 | 7F E3 FB 78 */	mr r3, r31
/* 8139252C | 38 80 00 07 */	li r4, 0x7
/* 81392530 | 48 07 8C 09 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392534 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392538 | 40 82 00 A4 */	bne .L_813925DC
/* 8139253C | 7F E3 FB 78 */	mr r3, r31
/* 81392540 | 38 80 00 08 */	li r4, 0x8
/* 81392544 | 48 07 8B F5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392548 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139254C | 40 82 00 90 */	bne .L_813925DC
/* 81392550 | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 81392554 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81392558 | 40 82 00 84 */	bne .L_813925DC
/* 8139255C | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 81392560 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81392564 | 41 82 00 10 */	beq .L_81392574
/* 81392568 | 38 03 FF F8 */	subi r0, r3, 0x8
/* 8139256C | 28 00 00 03 */	cmplwi r0, 0x3
/* 81392570 | 41 81 00 6C */	bgt .L_813925DC
.L_81392574:
/* 81392574 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81392578 | 38 80 00 05 */	li r4, 0x5
/* 8139257C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81392580 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392584 | 48 07 8B B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139258C | 41 82 00 50 */	beq .L_813925DC
/* 81392590 | 88 1D 0F 99 */	lbz r0, 0xf99(r29)
/* 81392594 | 7C 1E 00 40 */	cmplw r30, r0
/* 81392598 | 41 82 00 44 */	beq .L_813925DC
/* 8139259C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813925A0 | 38 80 00 05 */	li r4, 0x5
/* 813925A4 | 48 07 8B 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813925A8 | 38 80 00 20 */	li r4, 0x20
/* 813925AC | 48 00 A5 AD */	bl iplButton_8139CB58
/* 813925B0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813925B4 | 38 80 00 05 */	li r4, 0x5
/* 813925B8 | 48 07 8B 81 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813925BC | 88 03 00 D5 */	lbz r0, 0xd5(r3)
/* 813925C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813925C4 | 40 82 00 18 */	bne .L_813925DC
/* 813925C8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813925CC | 38 80 00 05 */	li r4, 0x5
/* 813925D0 | 48 07 8B 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813925D4 | 38 80 00 18 */	li r4, 0x18
/* 813925D8 | 48 00 A5 81 */	bl iplButton_8139CB58
.L_813925DC:
/* 813925DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813925E0 | 48 26 6F 35 */	bl _restgpr_29
/* 813925E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813925E8 | 7C 08 03 A6 */	mtlr r0
/* 813925EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813925F0 | 4E 80 00 20 */	blr
.endfn show_licon__Q33ipl5scene5BoardFv

# .text:0x380C | 0x813925F4 | size: 0x80
# ipl::scene::Board::hide_licon()
.fn hide_licon__Q33ipl5scene5BoardFv, global
/* 813925F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813925F8 | 7C 08 02 A6 */	mflr r0
/* 813925FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392600 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392604 | 48 26 6E C5 */	bl _savegpr_29
/* 81392608 | 8B C3 0F 99 */	lbz r30, 0xf99(r3)
/* 8139260C | 38 00 00 00 */	li r0, 0x0
/* 81392610 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81392614 | 7C 7D 1B 78 */	mr r29, r3
/* 81392618 | 98 03 0F 99 */	stb r0, 0xf99(r3)
/* 8139261C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81392620 | 38 80 00 05 */	li r4, 0x5
/* 81392624 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392628 | 48 07 8B 11 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139262C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392630 | 41 82 00 2C */	beq .L_8139265C
/* 81392634 | 88 1D 0F 99 */	lbz r0, 0xf99(r29)
/* 81392638 | 7C 1E 00 40 */	cmplw r30, r0
/* 8139263C | 41 82 00 20 */	beq .L_8139265C
/* 81392640 | 7F A3 EB 78 */	mr r3, r29
/* 81392644 | 48 00 03 09 */	bl edge_arrow__Q33ipl5scene5BoardFv
/* 81392648 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139264C | 38 80 00 05 */	li r4, 0x5
/* 81392650 | 48 07 8A E9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392654 | 38 80 00 21 */	li r4, 0x21
/* 81392658 | 48 00 A5 01 */	bl iplButton_8139CB58
.L_8139265C:
/* 8139265C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392660 | 48 26 6E B5 */	bl _restgpr_29
/* 81392664 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392668 | 7C 08 03 A6 */	mtlr r0
/* 8139266C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392670 | 4E 80 00 20 */	blr
.endfn hide_licon__Q33ipl5scene5BoardFv

# .text:0x388C | 0x81392674 | size: 0x98
# ipl::scene::Board::enable_ricon()
.fn enable_ricon__Q33ipl5scene5BoardFv, global
/* 81392674 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81392678 | 7C 08 02 A6 */	mflr r0
/* 8139267C | 38 80 00 05 */	li r4, 0x5
/* 81392680 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81392684 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81392688 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8139268C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81392690 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81392694 | 7C 7E 1B 78 */	mr r30, r3
/* 81392698 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139269C | 48 07 8A 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813926A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813926A4 | 41 82 00 50 */	beq .L_813926F4
/* 813926A8 | 88 1E 0F 98 */	lbz r0, 0xf98(r30)
/* 813926AC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813926B0 | 40 82 00 44 */	bne .L_813926F4
/* 813926B4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813926B8 | 38 80 00 05 */	li r4, 0x5
/* 813926BC | 48 07 8A 7D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813926C0 | 38 80 00 1E */	li r4, 0x1e
/* 813926C4 | 48 00 A4 95 */	bl iplButton_8139CB58
/* 813926C8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813926CC | 38 80 00 05 */	li r4, 0x5
/* 813926D0 | 48 07 8A 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813926D4 | 88 03 00 D4 */	lbz r0, 0xd4(r3)
/* 813926D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813926DC | 40 82 00 18 */	bne .L_813926F4
/* 813926E0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813926E4 | 38 80 00 05 */	li r4, 0x5
/* 813926E8 | 48 07 8A 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813926EC | 38 80 00 17 */	li r4, 0x17
/* 813926F0 | 48 00 A4 69 */	bl iplButton_8139CB58
.L_813926F4:
/* 813926F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813926F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813926FC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81392700 | 7C 08 03 A6 */	mtlr r0
/* 81392704 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81392708 | 4E 80 00 20 */	blr
.endfn enable_ricon__Q33ipl5scene5BoardFv

# .text:0x3924 | 0x8139270C | size: 0x6C
# ipl::scene::Board::disable_ricon()
.fn disable_ricon__Q33ipl5scene5BoardFv, global
/* 8139270C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81392710 | 7C 08 02 A6 */	mflr r0
/* 81392714 | 38 80 00 05 */	li r4, 0x5
/* 81392718 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139271C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81392720 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81392724 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81392728 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139272C | 7C 7E 1B 78 */	mr r30, r3
/* 81392730 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392734 | 48 07 8A 05 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392738 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139273C | 41 82 00 24 */	beq .L_81392760
/* 81392740 | 88 1E 0F 98 */	lbz r0, 0xf98(r30)
/* 81392744 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81392748 | 40 82 00 18 */	bne .L_81392760
/* 8139274C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392750 | 38 80 00 05 */	li r4, 0x5
/* 81392754 | 48 07 89 E5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392758 | 38 80 00 1F */	li r4, 0x1f
/* 8139275C | 48 00 A3 FD */	bl iplButton_8139CB58
.L_81392760:
/* 81392760 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81392764 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81392768 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139276C | 7C 08 03 A6 */	mtlr r0
/* 81392770 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81392774 | 4E 80 00 20 */	blr
.endfn disable_ricon__Q33ipl5scene5BoardFv

# .text:0x3990 | 0x81392778 | size: 0x98
# ipl::scene::Board::enable_licon()
.fn enable_licon__Q33ipl5scene5BoardFv, global
/* 81392778 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139277C | 7C 08 02 A6 */	mflr r0
/* 81392780 | 38 80 00 05 */	li r4, 0x5
/* 81392784 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81392788 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139278C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81392790 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81392794 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81392798 | 7C 7E 1B 78 */	mr r30, r3
/* 8139279C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813927A0 | 48 07 89 99 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813927A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813927A8 | 41 82 00 50 */	beq .L_813927F8
/* 813927AC | 88 1E 0F 99 */	lbz r0, 0xf99(r30)
/* 813927B0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813927B4 | 40 82 00 44 */	bne .L_813927F8
/* 813927B8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813927BC | 38 80 00 05 */	li r4, 0x5
/* 813927C0 | 48 07 89 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813927C4 | 38 80 00 20 */	li r4, 0x20
/* 813927C8 | 48 00 A3 91 */	bl iplButton_8139CB58
/* 813927CC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813927D0 | 38 80 00 05 */	li r4, 0x5
/* 813927D4 | 48 07 89 65 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813927D8 | 88 03 00 D5 */	lbz r0, 0xd5(r3)
/* 813927DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813927E0 | 40 82 00 18 */	bne .L_813927F8
/* 813927E4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813927E8 | 38 80 00 05 */	li r4, 0x5
/* 813927EC | 48 07 89 4D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813927F0 | 38 80 00 18 */	li r4, 0x18
/* 813927F4 | 48 00 A3 65 */	bl iplButton_8139CB58
.L_813927F8:
/* 813927F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813927FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81392800 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81392804 | 7C 08 03 A6 */	mtlr r0
/* 81392808 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139280C | 4E 80 00 20 */	blr
.endfn enable_licon__Q33ipl5scene5BoardFv

# .text:0x3A28 | 0x81392810 | size: 0x6C
# ipl::scene::Board::disable_licon()
.fn disable_licon__Q33ipl5scene5BoardFv, global
/* 81392810 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81392814 | 7C 08 02 A6 */	mflr r0
/* 81392818 | 38 80 00 05 */	li r4, 0x5
/* 8139281C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81392820 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81392824 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81392828 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8139282C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81392830 | 7C 7E 1B 78 */	mr r30, r3
/* 81392834 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392838 | 48 07 89 01 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139283C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392840 | 41 82 00 24 */	beq .L_81392864
/* 81392844 | 88 1E 0F 99 */	lbz r0, 0xf99(r30)
/* 81392848 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8139284C | 40 82 00 18 */	bne .L_81392864
/* 81392850 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392854 | 38 80 00 05 */	li r4, 0x5
/* 81392858 | 48 07 88 E1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139285C | 38 80 00 21 */	li r4, 0x21
/* 81392860 | 48 00 A2 F9 */	bl iplButton_8139CB58
.L_81392864:
/* 81392864 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81392868 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139286C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81392870 | 7C 08 03 A6 */	mtlr r0
/* 81392874 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81392878 | 4E 80 00 20 */	blr
.endfn disable_licon__Q33ipl5scene5BoardFv

# .text:0x3A94 | 0x8139287C | size: 0x68
# ipl::scene::Board::appear_arrow()
.fn appear_arrow__Q33ipl5scene5BoardFv, global
/* 8139287C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81392880 | 7C 08 02 A6 */	mflr r0
/* 81392884 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81392888 | 38 80 00 05 */	li r4, 0x5
/* 8139288C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81392890 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81392894 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81392898 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139289C | 48 07 88 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813928A0 | 88 03 00 D4 */	lbz r0, 0xd4(r3)
/* 813928A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813928A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813928AC | 40 82 00 0C */	bne .L_813928B8
/* 813928B0 | 38 80 00 17 */	li r4, 0x17
/* 813928B4 | 48 00 A2 A5 */	bl iplButton_8139CB58
.L_813928B8:
/* 813928B8 | 88 1F 00 D5 */	lbz r0, 0xd5(r31)
/* 813928BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813928C0 | 40 82 00 10 */	bne .L_813928D0
/* 813928C4 | 7F E3 FB 78 */	mr r3, r31
/* 813928C8 | 38 80 00 18 */	li r4, 0x18
/* 813928CC | 48 00 A2 8D */	bl iplButton_8139CB58
.L_813928D0:
/* 813928D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813928D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813928D8 | 7C 08 03 A6 */	mtlr r0
/* 813928DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813928E0 | 4E 80 00 20 */	blr
.endfn appear_arrow__Q33ipl5scene5BoardFv

# .text:0x3AFC | 0x813928E4 | size: 0x68
# ipl::scene::Board::disappear_arrow()
.fn disappear_arrow__Q33ipl5scene5BoardFv, global
/* 813928E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813928E8 | 7C 08 02 A6 */	mflr r0
/* 813928EC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813928F0 | 38 80 00 05 */	li r4, 0x5
/* 813928F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813928F8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813928FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81392900 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81392904 | 48 07 88 35 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392908 | 88 03 00 D4 */	lbz r0, 0xd4(r3)
/* 8139290C | 7C 7F 1B 78 */	mr r31, r3
/* 81392910 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81392914 | 41 82 00 0C */	beq .L_81392920
/* 81392918 | 38 80 00 19 */	li r4, 0x19
/* 8139291C | 48 00 A2 3D */	bl iplButton_8139CB58
.L_81392920:
/* 81392920 | 88 1F 00 D5 */	lbz r0, 0xd5(r31)
/* 81392924 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81392928 | 41 82 00 10 */	beq .L_81392938
/* 8139292C | 7F E3 FB 78 */	mr r3, r31
/* 81392930 | 38 80 00 1A */	li r4, 0x1a
/* 81392934 | 48 00 A2 25 */	bl iplButton_8139CB58
.L_81392938:
/* 81392938 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139293C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81392940 | 7C 08 03 A6 */	mtlr r0
/* 81392944 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81392948 | 4E 80 00 20 */	blr
.endfn disappear_arrow__Q33ipl5scene5BoardFv

# .text:0x3B64 | 0x8139294C | size: 0x14C
# ipl::scene::Board::edge_arrow()
.fn edge_arrow__Q33ipl5scene5BoardFv, global
/* 8139294C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81392950 | 7C 08 02 A6 */	mflr r0
/* 81392954 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81392958 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139295C | 48 26 6B 6D */	bl _savegpr_29
/* 81392960 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81392964 | 7C 7D 1B 78 */	mr r29, r3
/* 81392968 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8139296C | 38 80 00 05 */	li r4, 0x5
/* 81392970 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392974 | 48 07 87 C5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392978 | 7C 7E 1B 78 */	mr r30, r3
/* 8139297C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392980 | 38 80 00 02 */	li r4, 0x2
/* 81392984 | 48 07 87 B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392988 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139298C | 40 82 00 F4 */	bne .L_81392A80
/* 81392990 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81392994 | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 81392998 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139299C | 40 82 00 E4 */	bne .L_81392A80
/* 813929A0 | 80 1D 00 60 */	lwz r0, 0x60(r29)
/* 813929A4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813929A8 | 40 82 00 08 */	bne .L_813929B0
/* 813929AC | 48 00 00 D4 */	b .L_81392A80
.L_813929B0:
/* 813929B0 | 7F A3 EB 78 */	mr r3, r29
/* 813929B4 | 4B FF FD C5 */	bl enable_licon__Q33ipl5scene5BoardFv
/* 813929B8 | 7F A3 EB 78 */	mr r3, r29
/* 813929BC | 4B FF FC B9 */	bl enable_ricon__Q33ipl5scene5BoardFv
/* 813929C0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813929C4 | 4B FF E6 A1 */	bl getMaxDate__Q33ipl7utility4DateFv
/* 813929C8 | 38 7D 0D 08 */	addi r3, r29, 0xd08
/* 813929CC | 38 81 00 14 */	addi r4, r1, 0x14
/* 813929D0 | 4B FF D1 B5 */	bl __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 813929D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813929D8 | 41 82 00 44 */	beq .L_81392A1C
/* 813929DC | 88 1E 00 D4 */	lbz r0, 0xd4(r30)
/* 813929E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813929E4 | 41 82 00 1C */	beq .L_81392A00
/* 813929E8 | 88 1D 0F 98 */	lbz r0, 0xf98(r29)
/* 813929EC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813929F0 | 41 82 00 10 */	beq .L_81392A00
/* 813929F4 | 7F C3 F3 78 */	mr r3, r30
/* 813929F8 | 38 80 00 19 */	li r4, 0x19
/* 813929FC | 48 00 A1 5D */	bl iplButton_8139CB58
.L_81392A00:
/* 81392A00 | 88 1E 00 D5 */	lbz r0, 0xd5(r30)
/* 81392A04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81392A08 | 40 82 00 78 */	bne .L_81392A80
/* 81392A0C | 7F C3 F3 78 */	mr r3, r30
/* 81392A10 | 38 80 00 18 */	li r4, 0x18
/* 81392A14 | 48 00 A1 45 */	bl iplButton_8139CB58
/* 81392A18 | 48 00 00 68 */	b .L_81392A80
.L_81392A1C:
/* 81392A1C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81392A20 | 4B FF E6 2D */	bl getMinDate__Q33ipl7utility4DateFv
/* 81392A24 | 38 7D 0D 08 */	addi r3, r29, 0xd08
/* 81392A28 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81392A2C | 4B FF D1 59 */	bl __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81392A30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392A34 | 41 82 00 44 */	beq .L_81392A78
/* 81392A38 | 88 1E 00 D5 */	lbz r0, 0xd5(r30)
/* 81392A3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81392A40 | 41 82 00 1C */	beq .L_81392A5C
/* 81392A44 | 88 1D 0F 99 */	lbz r0, 0xf99(r29)
/* 81392A48 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81392A4C | 41 82 00 10 */	beq .L_81392A5C
/* 81392A50 | 7F C3 F3 78 */	mr r3, r30
/* 81392A54 | 38 80 00 1A */	li r4, 0x1a
/* 81392A58 | 48 00 A1 01 */	bl iplButton_8139CB58
.L_81392A5C:
/* 81392A5C | 88 1E 00 D4 */	lbz r0, 0xd4(r30)
/* 81392A60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81392A64 | 40 82 00 1C */	bne .L_81392A80
/* 81392A68 | 7F C3 F3 78 */	mr r3, r30
/* 81392A6C | 38 80 00 17 */	li r4, 0x17
/* 81392A70 | 48 00 A0 E9 */	bl iplButton_8139CB58
/* 81392A74 | 48 00 00 0C */	b .L_81392A80
.L_81392A78:
/* 81392A78 | 7F A3 EB 78 */	mr r3, r29
/* 81392A7C | 4B FF FE 01 */	bl appear_arrow__Q33ipl5scene5BoardFv
.L_81392A80:
/* 81392A80 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81392A84 | 48 26 6A 91 */	bl _restgpr_29
/* 81392A88 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81392A8C | 7C 08 03 A6 */	mtlr r0
/* 81392A90 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81392A94 | 4E 80 00 20 */	blr
.endfn edge_arrow__Q33ipl5scene5BoardFv

# .text:0x3CB0 | 0x81392A98 | size: 0x68
# ipl::scene::Board::return_to_freelist()
.fn return_to_freelist__Q33ipl5scene5BoardFv, global
/* 81392A98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81392A9C | 7C 08 02 A6 */	mflr r0
/* 81392AA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81392AA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81392AA8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81392AAC | 7C 7E 1B 78 */	mr r30, r3
.L_81392AB0:
/* 81392AB0 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 81392AB4 | 38 80 00 00 */	li r4, 0x0
/* 81392AB8 | 48 17 F8 25 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81392ABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392AC0 | 7C 7F 1B 78 */	mr r31, r3
/* 81392AC4 | 41 82 00 24 */	beq .L_81392AE8
/* 81392AC8 | 48 00 28 31 */	bl destroy__Q33ipl5scene11BoardObjectFv
/* 81392ACC | 7F E4 FB 78 */	mr r4, r31
/* 81392AD0 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 81392AD4 | 48 17 F7 9D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81392AD8 | 7F E4 FB 78 */	mr r4, r31
/* 81392ADC | 38 7E 00 74 */	addi r3, r30, 0x74
/* 81392AE0 | 48 17 F5 95 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81392AE4 | 4B FF FF CC */	b .L_81392AB0
.L_81392AE8:
/* 81392AE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81392AEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81392AF0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81392AF4 | 7C 08 03 A6 */	mtlr r0
/* 81392AF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81392AFC | 4E 80 00 20 */	blr
.endfn return_to_freelist__Q33ipl5scene5BoardFv

# .text:0x3D18 | 0x81392B00 | size: 0x94
# ipl::scene::Board::return_to_freelist_if_diff_date()
.fn return_to_freelist_if_diff_date__Q33ipl5scene5BoardFv, global
/* 81392B00 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81392B04 | 7C 08 02 A6 */	mflr r0
/* 81392B08 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392B0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392B10 | 48 26 69 B9 */	bl _savegpr_29
/* 81392B14 | 7C 7D 1B 78 */	mr r29, r3
/* 81392B18 | 38 80 00 00 */	li r4, 0x0
/* 81392B1C | 38 63 00 68 */	addi r3, r3, 0x68
/* 81392B20 | 48 17 F7 BD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81392B24 | 7C 7F 1B 78 */	mr r31, r3
/* 81392B28 | 48 00 00 4C */	b .L_81392B74
.L_81392B2C:
/* 81392B2C | 7F E4 FB 78 */	mr r4, r31
/* 81392B30 | 38 7D 00 68 */	addi r3, r29, 0x68
/* 81392B34 | 48 17 F7 A9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81392B38 | 7C 7E 1B 78 */	mr r30, r3
/* 81392B3C | 38 7F 00 B4 */	addi r3, r31, 0xb4
/* 81392B40 | 38 9D 0D 08 */	addi r4, r29, 0xd08
/* 81392B44 | 4B FF CE 5D */	bl __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81392B48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392B4C | 41 82 00 24 */	beq .L_81392B70
/* 81392B50 | 7F E3 FB 78 */	mr r3, r31
/* 81392B54 | 48 00 27 A5 */	bl destroy__Q33ipl5scene11BoardObjectFv
/* 81392B58 | 7F E4 FB 78 */	mr r4, r31
/* 81392B5C | 38 7D 00 68 */	addi r3, r29, 0x68
/* 81392B60 | 48 17 F7 11 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81392B64 | 7F E4 FB 78 */	mr r4, r31
/* 81392B68 | 38 7D 00 74 */	addi r3, r29, 0x74
/* 81392B6C | 48 17 F5 09 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_81392B70:
/* 81392B70 | 7F DF F3 78 */	mr r31, r30
.L_81392B74:
/* 81392B74 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81392B78 | 40 82 FF B4 */	bne .L_81392B2C
/* 81392B7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392B80 | 48 26 69 95 */	bl _restgpr_29
/* 81392B84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392B88 | 7C 08 03 A6 */	mtlr r0
/* 81392B8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392B90 | 4E 80 00 20 */	blr
.endfn return_to_freelist_if_diff_date__Q33ipl5scene5BoardFv

# .text:0x3DAC | 0x81392B94 | size: 0xA8
# ipl::scene::Board::get_date_label(const ipl::utility::Date&)
.fn get_date_label__Q33ipl5scene5BoardFRCQ33ipl7utility4Date, global
/* 81392B94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81392B98 | 7C 08 02 A6 */	mflr r0
/* 81392B9C | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 81392BA0 | 7C 67 1B 78 */	mr r7, r3
/* 81392BA4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81392BA8 | 38 C0 00 00 */	li r6, 0x0
/* 81392BAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81392BB0 | 3B E0 00 01 */	li r31, 0x1
/* 81392BB4 | 80 03 0D 14 */	lwz r0, 0xd14(r3)
/* 81392BB8 | 7C 05 00 00 */	cmpw r5, r0
/* 81392BBC | 40 80 00 0C */	bge .L_81392BC8
/* 81392BC0 | 38 C0 00 01 */	li r6, 0x1
/* 81392BC4 | 48 00 00 38 */	b .L_81392BFC
.L_81392BC8:
/* 81392BC8 | 40 82 00 34 */	bne .L_81392BFC
/* 81392BCC | 80 03 0D 18 */	lwz r0, 0xd18(r3)
/* 81392BD0 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 81392BD4 | 7C 05 00 00 */	cmpw r5, r0
/* 81392BD8 | 40 80 00 0C */	bge .L_81392BE4
/* 81392BDC | 38 C0 00 01 */	li r6, 0x1
/* 81392BE0 | 48 00 00 1C */	b .L_81392BFC
.L_81392BE4:
/* 81392BE4 | 40 82 00 18 */	bne .L_81392BFC
/* 81392BE8 | 80 A4 00 08 */	lwz r5, 0x8(r4)
/* 81392BEC | 80 03 0D 1C */	lwz r0, 0xd1c(r3)
/* 81392BF0 | 7C 05 00 00 */	cmpw r5, r0
/* 81392BF4 | 40 80 00 08 */	bge .L_81392BFC
/* 81392BF8 | 38 C0 00 01 */	li r6, 0x1
.L_81392BFC:
/* 81392BFC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81392C00 | 41 82 00 0C */	beq .L_81392C0C
/* 81392C04 | 3B E0 00 00 */	li r31, 0x0
/* 81392C08 | 48 00 00 1C */	b .L_81392C24
.L_81392C0C:
/* 81392C0C | 7C 83 23 78 */	mr r3, r4
/* 81392C10 | 38 87 0D 14 */	addi r4, r7, 0xd14
/* 81392C14 | 4B FF CD CD */	bl __gt__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81392C18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392C1C | 41 82 00 08 */	beq .L_81392C24
/* 81392C20 | 3B E0 00 02 */	li r31, 0x2
.L_81392C24:
/* 81392C24 | 7F E3 FB 78 */	mr r3, r31
/* 81392C28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81392C2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81392C30 | 7C 08 03 A6 */	mtlr r0
/* 81392C34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81392C38 | 4E 80 00 20 */	blr
.endfn get_date_label__Q33ipl5scene5BoardFRCQ33ipl7utility4Date

# .text:0x3E54 | 0x81392C3C | size: 0x80
# ipl::scene::Board::init_search_condition()
.fn init_search_condition__Q33ipl5scene5BoardFv, global
/* 81392C3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81392C40 | 7C 08 02 A6 */	mflr r0
/* 81392C44 | 38 80 00 00 */	li r4, 0x0
/* 81392C48 | 38 A0 01 68 */	li r5, 0x168
/* 81392C4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81392C50 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81392C54 | 7C 7F 1B 78 */	mr r31, r3
/* 81392C58 | 38 63 0E 30 */	addi r3, r3, 0xe30
/* 81392C5C | 4B F9 D6 D9 */	bl memset
/* 81392C60 | 38 7F 0D 40 */	addi r3, r31, 0xd40
/* 81392C64 | 38 80 00 00 */	li r4, 0x0
/* 81392C68 | 38 A0 00 50 */	li r5, 0x50
/* 81392C6C | 4B F9 D6 C9 */	bl memset
/* 81392C70 | 38 7F 0D 90 */	addi r3, r31, 0xd90
/* 81392C74 | 38 80 00 00 */	li r4, 0x0
/* 81392C78 | 38 A0 00 50 */	li r5, 0x50
/* 81392C7C | 4B F9 D6 B9 */	bl memset
/* 81392C80 | 38 7F 0D E0 */	addi r3, r31, 0xde0
/* 81392C84 | 38 80 00 00 */	li r4, 0x0
/* 81392C88 | 38 A0 00 50 */	li r5, 0x50
/* 81392C8C | 4B F9 D6 A9 */	bl memset
/* 81392C90 | 7F E3 FB 78 */	mr r3, r31
/* 81392C94 | 4B FF F7 D1 */	bl hide_ricon__Q33ipl5scene5BoardFv
/* 81392C98 | 7F E3 FB 78 */	mr r3, r31
/* 81392C9C | 4B FF F9 59 */	bl hide_licon__Q33ipl5scene5BoardFv
/* 81392CA0 | 38 00 00 00 */	li r0, 0x0
/* 81392CA4 | 90 1F 0F 9C */	stw r0, 0xf9c(r31)
/* 81392CA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81392CAC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81392CB0 | 7C 08 03 A6 */	mtlr r0
/* 81392CB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81392CB8 | 4E 80 00 20 */	blr
.endfn init_search_condition__Q33ipl5scene5BoardFv

# .text:0x3ED4 | 0x81392CBC | size: 0x6C
# ipl::scene::Board::set_key_table()
.fn set_key_table__Q33ipl5scene5BoardFv, global
/* 81392CBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81392CC0 | 7C 08 02 A6 */	mflr r0
/* 81392CC4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392CC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392CCC | 48 26 67 FD */	bl _savegpr_29
/* 81392CD0 | 7C 7D 1B 78 */	mr r29, r3
/* 81392CD4 | 3B E0 00 00 */	li r31, 0x0
/* 81392CD8 | 3B C0 00 00 */	li r30, 0x0
/* 81392CDC | 48 00 00 1C */	b .L_81392CF8
.L_81392CE0:
/* 81392CE0 | 7C 7D FA 14 */	add r3, r29, r31
/* 81392CE4 | 38 9E 00 80 */	addi r4, r30, 0x80
/* 81392CE8 | 38 63 0E 30 */	addi r3, r3, 0xe30
/* 81392CEC | 38 A0 00 20 */	li r5, 0x20
/* 81392CF0 | 3B FF 00 24 */	addi r31, r31, 0x24
/* 81392CF4 | 48 26 F6 D1 */	bl strncpy
.L_81392CF8:
/* 81392CF8 | 7F C4 F3 78 */	mr r4, r30
/* 81392CFC | 38 7D 00 68 */	addi r3, r29, 0x68
/* 81392D00 | 48 17 F5 DD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81392D04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392D08 | 7C 7E 1B 78 */	mr r30, r3
/* 81392D0C | 40 82 FF D4 */	bne .L_81392CE0
/* 81392D10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392D14 | 48 26 68 01 */	bl _restgpr_29
/* 81392D18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392D1C | 7C 08 03 A6 */	mtlr r0
/* 81392D20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392D24 | 4E 80 00 20 */	blr
.endfn set_key_table__Q33ipl5scene5BoardFv

# .text:0x3F40 | 0x81392D28 | size: 0x70
# ipl::scene::Board::is_exist_diff_date() const
.fn is_exist_diff_date__Q33ipl5scene5BoardCFv, global
/* 81392D28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81392D2C | 7C 08 02 A6 */	mflr r0
/* 81392D30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392D34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392D38 | 48 26 67 91 */	bl _savegpr_29
/* 81392D3C | 7C 7D 1B 78 */	mr r29, r3
/* 81392D40 | 3B E0 00 00 */	li r31, 0x0
/* 81392D44 | 3B C0 00 00 */	li r30, 0x0
/* 81392D48 | 48 00 00 1C */	b .L_81392D64
.L_81392D4C:
/* 81392D4C | 38 63 00 B4 */	addi r3, r3, 0xb4
/* 81392D50 | 38 9D 0D 08 */	addi r4, r29, 0xd08
/* 81392D54 | 4B FF CC 4D */	bl __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81392D58 | 7F E3 1B 78 */	or r3, r31, r3
/* 81392D5C | 30 03 FF FF */	subic r0, r3, 0x1
/* 81392D60 | 7F E0 19 10 */	subfe r31, r0, r3
.L_81392D64:
/* 81392D64 | 7F C4 F3 78 */	mr r4, r30
/* 81392D68 | 38 7D 00 68 */	addi r3, r29, 0x68
/* 81392D6C | 48 17 F5 71 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81392D70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392D74 | 7C 7E 1B 78 */	mr r30, r3
/* 81392D78 | 40 82 FF D4 */	bne .L_81392D4C
/* 81392D7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392D80 | 7F E3 FB 78 */	mr r3, r31
/* 81392D84 | 48 26 67 91 */	bl _restgpr_29
/* 81392D88 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392D8C | 7C 08 03 A6 */	mtlr r0
/* 81392D90 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392D94 | 4E 80 00 20 */	blr
.endfn is_exist_diff_date__Q33ipl5scene5BoardCFv

# .text:0x3FB0 | 0x81392D98 | size: 0xFC
# ipl::scene::Board::calc_board_object()
.fn calc_board_object__Q33ipl5scene5BoardFv, global
/* 81392D98 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81392D9C | 7C 08 02 A6 */	mflr r0
/* 81392DA0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81392DA4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81392DA8 | 48 26 67 1D */	bl _savegpr_28
/* 81392DAC | 80 C3 0D 24 */	lwz r6, 0xd24(r3)
/* 81392DB0 | 7C 7C 1B 78 */	mr r28, r3
/* 81392DB4 | 3C 80 81 65 */	lis r4, lbl_8164B148@ha
/* 81392DB8 | 38 A0 00 01 */	li r5, 0x1
/* 81392DBC | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 81392DC0 | 38 84 B1 48 */	addi r4, r4, lbl_8164B148@l
/* 81392DC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81392DC8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81392DCC | 7D 89 03 A6 */	mtctr r12
/* 81392DD0 | 4E 80 04 21 */	bctrl
/* 81392DD4 | 3F E0 81 65 */	lis r31, lbl_8164AF20@ha
/* 81392DD8 | 7C 7E 1B 78 */	mr r30, r3
/* 81392DDC | 3B FF AF 20 */	addi r31, r31, lbl_8164AF20@l
/* 81392DE0 | 3B A0 00 00 */	li r29, 0x0
/* 81392DE4 | 48 00 00 80 */	b .L_81392E64
.L_81392DE8:
/* 81392DE8 | 7F 83 E3 78 */	mr r3, r28
/* 81392DEC | 38 9D 00 B4 */	addi r4, r29, 0xb4
/* 81392DF0 | 4B FF FD A5 */	bl get_date_label__Q33ipl5scene5BoardFRCQ33ipl7utility4Date
/* 81392DF4 | 80 DC 0D 24 */	lwz r6, 0xd24(r28)
/* 81392DF8 | 54 60 10 3A */	slwi r0, r3, 2
/* 81392DFC | 7C 9F 00 2E */	lwzx r4, r31, r0
/* 81392E00 | 38 A0 00 01 */	li r5, 0x1
/* 81392E04 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 81392E08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81392E0C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81392E10 | 7D 89 03 A6 */	mtctr r12
/* 81392E14 | 4E 80 04 21 */	bctrl
/* 81392E18 | E0 1E 00 2C */	psq_l f0, 0x2c(r30), 0, qr0
/* 81392E1C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81392E20 | E0 23 00 2C */	psq_l f1, 0x2c(r3), 0, qr0
/* 81392E24 | 10 60 08 2A */	ps_add f3, f0, f1
/* 81392E28 | E0 23 80 34 */	psq_l f1, 0x34(r3), 1, qr0
/* 81392E2C | E0 1E 80 34 */	psq_l f0, 0x34(r30), 1, qr0
/* 81392E30 | 7F A3 EB 78 */	mr r3, r29
/* 81392E34 | F0 61 00 10 */	psq_st f3, 0x10(r1), 0, qr0
/* 81392E38 | 10 60 08 2A */	ps_add f3, f0, f1
/* 81392E3C | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 81392E40 | F0 61 80 18 */	psq_st f3, 0x18(r1), 1, qr0
/* 81392E44 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81392E48 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 81392E4C | D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 81392E50 | D0 21 00 20 */	stfs f1, 0x20(r1)
/* 81392E54 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 81392E58 | D0 41 00 08 */	stfs f2, 0x8(r1)
/* 81392E5C | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 81392E60 | 48 00 12 3D */	bl calc__Q33ipl5scene11BoardObjectFRCQ33ipl4math4VEC2
.L_81392E64:
/* 81392E64 | 7F A4 EB 78 */	mr r4, r29
/* 81392E68 | 38 7C 00 68 */	addi r3, r28, 0x68
/* 81392E6C | 48 17 F4 71 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81392E70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81392E74 | 7C 7D 1B 78 */	mr r29, r3
/* 81392E78 | 40 82 FF 70 */	bne .L_81392DE8
/* 81392E7C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81392E80 | 48 26 66 91 */	bl _restgpr_28
/* 81392E84 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81392E88 | 7C 08 03 A6 */	mtlr r0
/* 81392E8C | 38 21 00 40 */	addi r1, r1, 0x40
/* 81392E90 | 4E 80 00 20 */	blr
.endfn calc_board_object__Q33ipl5scene5BoardFv

# .text:0x40AC | 0x81392E94 | size: 0x98
# ipl::scene::Board::cmn_create_child(int)
.fn cmn_create_child__Q33ipl5scene5BoardFi, global
/* 81392E94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81392E98 | 7C 08 02 A6 */	mflr r0
/* 81392E9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392EA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392EA4 | 48 26 66 25 */	bl _savegpr_29
/* 81392EA8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81392EAC | 7C 9E 23 78 */	mr r30, r4
/* 81392EB0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81392EB4 | 7C 7D 1B 78 */	mr r29, r3
/* 81392EB8 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81392EBC | 38 80 00 05 */	li r4, 0x5
/* 81392EC0 | 48 07 82 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81392EC4 | 7C 7F 1B 78 */	mr r31, r3
/* 81392EC8 | 7F C4 F3 78 */	mr r4, r30
/* 81392ECC | 48 00 A5 5D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81392ED0 | 7F A3 EB 78 */	mr r3, r29
/* 81392ED4 | 4B FF FA 11 */	bl disappear_arrow__Q33ipl5scene5BoardFv
/* 81392ED8 | 7F A3 EB 78 */	mr r3, r29
/* 81392EDC | 4B FF F8 31 */	bl disable_ricon__Q33ipl5scene5BoardFv
/* 81392EE0 | 7F A3 EB 78 */	mr r3, r29
/* 81392EE4 | 4B FF F9 2D */	bl disable_licon__Q33ipl5scene5BoardFv
/* 81392EE8 | 7F E3 FB 78 */	mr r3, r31
/* 81392EEC | 38 80 00 00 */	li r4, 0x0
/* 81392EF0 | 38 A0 00 00 */	li r5, 0x0
/* 81392EF4 | 48 00 9A 49 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81392EF8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81392EFC | 3C 80 81 65 */	lis r4, lbl_8164B152@ha
/* 81392F00 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81392F04 | 38 84 B1 52 */	addi r4, r4, lbl_8164B152@l
/* 81392F08 | 4B FD 85 65 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81392F0C | 38 00 00 03 */	li r0, 0x3
/* 81392F10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81392F14 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 81392F18 | 48 26 65 FD */	bl _restgpr_29
/* 81392F1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392F20 | 7C 08 03 A6 */	mtlr r0
/* 81392F24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392F28 | 4E 80 00 20 */	blr
.endfn cmn_create_child__Q33ipl5scene5BoardFi

# .text:0x4144 | 0x81392F2C | size: 0x68
# ipl::scene::Board::cmn_start_scroll_r()
.fn cmn_start_scroll_r__Q33ipl5scene5BoardFv, global
/* 81392F2C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81392F30 | 7C 08 02 A6 */	mflr r0
/* 81392F34 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392F38 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81392F3C | 7C 7F 1B 78 */	mr r31, r3
/* 81392F40 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81392F44 | 4B FF CA F5 */	bl __ct__Q33ipl7utility4DateFv
/* 81392F48 | 38 7F 0D 08 */	addi r3, r31, 0xd08
/* 81392F4C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81392F50 | 4B FF CC 75 */	bl getTomorrow__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 81392F54 | 38 7F 0D 14 */	addi r3, r31, 0xd14
/* 81392F58 | 38 9F 0D 08 */	addi r4, r31, 0xd08
/* 81392F5C | 4B FF CB 71 */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 81392F60 | 38 7F 0D 08 */	addi r3, r31, 0xd08
/* 81392F64 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81392F68 | 4B FF CB 65 */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 81392F6C | 7F E3 FB 78 */	mr r3, r31
/* 81392F70 | 38 80 00 00 */	li r4, 0x0
/* 81392F74 | 48 00 01 69 */	bl cmn_start_scroll__Q33ipl5scene5BoardFi
/* 81392F78 | 38 00 00 04 */	li r0, 0x4
/* 81392F7C | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81392F80 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81392F84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392F88 | 7C 08 03 A6 */	mtlr r0
/* 81392F8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392F90 | 4E 80 00 20 */	blr
.endfn cmn_start_scroll_r__Q33ipl5scene5BoardFv

# .text:0x41AC | 0x81392F94 | size: 0x68
# ipl::scene::Board::cmn_start_scroll_l()
.fn cmn_start_scroll_l__Q33ipl5scene5BoardFv, global
/* 81392F94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81392F98 | 7C 08 02 A6 */	mflr r0
/* 81392F9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81392FA0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81392FA4 | 7C 7F 1B 78 */	mr r31, r3
/* 81392FA8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81392FAC | 4B FF CA 8D */	bl __ct__Q33ipl7utility4DateFv
/* 81392FB0 | 38 7F 0D 08 */	addi r3, r31, 0xd08
/* 81392FB4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81392FB8 | 4B FF CA 99 */	bl getYesterday__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 81392FBC | 38 7F 0D 14 */	addi r3, r31, 0xd14
/* 81392FC0 | 38 9F 0D 08 */	addi r4, r31, 0xd08
/* 81392FC4 | 4B FF CB 09 */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 81392FC8 | 38 7F 0D 08 */	addi r3, r31, 0xd08
/* 81392FCC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81392FD0 | 4B FF CA FD */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 81392FD4 | 7F E3 FB 78 */	mr r3, r31
/* 81392FD8 | 38 80 00 01 */	li r4, 0x1
/* 81392FDC | 48 00 01 01 */	bl cmn_start_scroll__Q33ipl5scene5BoardFi
/* 81392FE0 | 38 00 00 04 */	li r0, 0x4
/* 81392FE4 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81392FE8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81392FEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81392FF0 | 7C 08 03 A6 */	mtlr r0
/* 81392FF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81392FF8 | 4E 80 00 20 */	blr
.endfn cmn_start_scroll_l__Q33ipl5scene5BoardFv

# .text:0x4214 | 0x81392FFC | size: 0x70
# ipl::scene::Board::cmn_start_scroll_r_hi(const ipl::utility::Date&)
.fn cmn_start_scroll_r_hi__Q33ipl5scene5BoardFRCQ33ipl7utility4Date, global
/* 81392FFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393000 | 7C 08 02 A6 */	mflr r0
/* 81393004 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393008 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139300C | 7C 9F 23 78 */	mr r31, r4
/* 81393010 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81393014 | 7C 7E 1B 78 */	mr r30, r3
/* 81393018 | 38 63 0D 14 */	addi r3, r3, 0xd14
/* 8139301C | 38 9E 0D 08 */	addi r4, r30, 0xd08
/* 81393020 | 4B FF CA AD */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 81393024 | 7F E4 FB 78 */	mr r4, r31
/* 81393028 | 38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8139302C | 4B FF CA A1 */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 81393030 | 7F C3 F3 78 */	mr r3, r30
/* 81393034 | 38 80 00 00 */	li r4, 0x0
/* 81393038 | 48 00 00 A5 */	bl cmn_start_scroll__Q33ipl5scene5BoardFi
/* 8139303C | 7F C3 F3 78 */	mr r3, r30
/* 81393040 | 7F E4 FB 78 */	mr r4, r31
/* 81393044 | 38 AD 85 DB */	li r5, lbl_8169661B@sda21
/* 81393048 | 4B FF EF BD */	bl set_text_date__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePCc
/* 8139304C | 38 00 00 04 */	li r0, 0x4
/* 81393050 | 90 1E 00 60 */	stw r0, 0x60(r30)
/* 81393054 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81393058 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139305C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393060 | 7C 08 03 A6 */	mtlr r0
/* 81393064 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393068 | 4E 80 00 20 */	blr
.endfn cmn_start_scroll_r_hi__Q33ipl5scene5BoardFRCQ33ipl7utility4Date

# .text:0x4284 | 0x8139306C | size: 0x70
# ipl::scene::Board::cmn_start_scroll_l_hi(const ipl::utility::Date&)
.fn cmn_start_scroll_l_hi__Q33ipl5scene5BoardFRCQ33ipl7utility4Date, global
/* 8139306C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393070 | 7C 08 02 A6 */	mflr r0
/* 81393074 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393078 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139307C | 7C 9F 23 78 */	mr r31, r4
/* 81393080 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81393084 | 7C 7E 1B 78 */	mr r30, r3
/* 81393088 | 38 63 0D 14 */	addi r3, r3, 0xd14
/* 8139308C | 38 9E 0D 08 */	addi r4, r30, 0xd08
/* 81393090 | 4B FF CA 3D */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 81393094 | 7F E4 FB 78 */	mr r4, r31
/* 81393098 | 38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8139309C | 4B FF CA 31 */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 813930A0 | 7F C3 F3 78 */	mr r3, r30
/* 813930A4 | 38 80 00 01 */	li r4, 0x1
/* 813930A8 | 48 00 00 35 */	bl cmn_start_scroll__Q33ipl5scene5BoardFi
/* 813930AC | 7F C3 F3 78 */	mr r3, r30
/* 813930B0 | 7F E4 FB 78 */	mr r4, r31
/* 813930B4 | 38 AD 85 CB */	li r5, lbl_8169660B@sda21
/* 813930B8 | 4B FF EF 4D */	bl set_text_date__Q33ipl5scene5BoardFRCQ33ipl7utility4DatePCc
/* 813930BC | 38 00 00 04 */	li r0, 0x4
/* 813930C0 | 90 1E 00 60 */	stw r0, 0x60(r30)
/* 813930C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813930C8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813930CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813930D0 | 7C 08 03 A6 */	mtlr r0
/* 813930D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813930D8 | 4E 80 00 20 */	blr
.endfn cmn_start_scroll_l_hi__Q33ipl5scene5BoardFRCQ33ipl7utility4Date

# .text:0x42F4 | 0x813930DC | size: 0xA8
# ipl::scene::Board::cmn_start_scroll(int)
.fn cmn_start_scroll__Q33ipl5scene5BoardFi, global
/* 813930DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813930E0 | 7C 08 02 A6 */	mflr r0
/* 813930E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813930E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813930EC | 48 26 63 DD */	bl _savegpr_29
/* 813930F0 | 80 A3 0D 24 */	lwz r5, 0xd24(r3)
/* 813930F4 | 7C 7D 1B 78 */	mr r29, r3
/* 813930F8 | 7C 9E 23 78 */	mr r30, r4
/* 813930FC | 38 80 00 00 */	li r4, 0x0
/* 81393100 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81393104 | 48 17 F2 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81393108 | 3C 80 81 61 */	lis r4, scAnmFrame__Q23ipl5scene@ha
/* 8139310C | 57 C5 18 38 */	slwi r5, r30, 3
/* 81393110 | 38 84 F6 A8 */	addi r4, r4, scAnmFrame__Q23ipl5scene@l
/* 81393114 | 38 00 00 00 */	li r0, 0x0
/* 81393118 | 7C 04 2C 2E */	lfsx f0, r4, r5
/* 8139311C | 7C 84 2A 14 */	add r4, r4, r5
/* 81393120 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 81393124 | 7C 7E 1B 78 */	mr r30, r3
/* 81393128 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8139312C | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 81393130 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81393134 | 4B FC F7 3D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81393138 | 3B E0 00 01 */	li r31, 0x1
/* 8139313C | 7F A3 EB 78 */	mr r3, r29
/* 81393140 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81393144 | 4B FF FA F9 */	bl init_search_condition__Q33ipl5scene5BoardFv
/* 81393148 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139314C | 9B FD 0D 00 */	stb r31, 0xd00(r29)
/* 81393150 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81393154 | 3C 80 81 39 */	lis r4, read_task___Q23ipl5sceneFPv@ha
/* 81393158 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 8139315C | 7F A5 EB 78 */	mr r5, r29
/* 81393160 | 38 84 1B 64 */	addi r4, r4, read_task___Q23ipl5sceneFPv@l
/* 81393164 | 38 C0 00 00 */	li r6, 0x0
/* 81393168 | 48 26 50 E1 */	bl fn_815F8248
/* 8139316C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81393170 | 48 26 63 A5 */	bl _restgpr_29
/* 81393174 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81393178 | 7C 08 03 A6 */	mtlr r0
/* 8139317C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81393180 | 4E 80 00 20 */	blr
.endfn cmn_start_scroll__Q33ipl5scene5BoardFi

# .text:0x439C | 0x81393184 | size: 0x64
# ipl::scene::Board::is_wait_to_clean_task() const
.fn is_wait_to_clean_task__Q33ipl5scene5BoardCFv, global
/* 81393184 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393188 | 7C 08 02 A6 */	mflr r0
/* 8139318C | 38 80 00 00 */	li r4, 0x0
/* 81393190 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393194 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81393198 | 3B E0 00 00 */	li r31, 0x0
/* 8139319C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813931A0 | 7C 7E 1B 78 */	mr r30, r3
/* 813931A4 | 48 00 00 14 */	b .L_813931B8
.L_813931A8:
/* 813931A8 | 88 03 00 CD */	lbz r0, 0xcd(r3)
/* 813931AC | 7F E3 03 78 */	or r3, r31, r0
/* 813931B0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813931B4 | 7F E0 19 10 */	subfe r31, r0, r3
.L_813931B8:
/* 813931B8 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 813931BC | 48 17 F1 21 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813931C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813931C4 | 7C 64 1B 78 */	mr r4, r3
/* 813931C8 | 40 82 FF E0 */	bne .L_813931A8
/* 813931CC | 7F E3 FB 78 */	mr r3, r31
/* 813931D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813931D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813931D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813931DC | 7C 08 03 A6 */	mtlr r0
/* 813931E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813931E4 | 4E 80 00 20 */	blr
.endfn is_wait_to_clean_task__Q33ipl5scene5BoardCFv

# .text:0x4400 | 0x813931E8 | size: 0x7C
# ipl::scene::Board::is_already_read(const char*) const
.fn is_already_read__Q33ipl5scene5BoardCFPCc, global
/* 813931E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813931EC | 7C 08 02 A6 */	mflr r0
/* 813931F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813931F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813931F8 | 48 26 62 CD */	bl _savegpr_28
/* 813931FC | 7C 7C 1B 78 */	mr r28, r3
/* 81393200 | 7C 9D 23 78 */	mr r29, r4
/* 81393204 | 3B E0 00 00 */	li r31, 0x0
/* 81393208 | 3B C0 00 00 */	li r30, 0x0
/* 8139320C | 48 00 00 24 */	b .L_81393230
.L_81393210:
/* 81393210 | 7F A4 EB 78 */	mr r4, r29
/* 81393214 | 38 A0 00 20 */	li r5, 0x20
/* 81393218 | 38 63 00 80 */	addi r3, r3, 0x80
/* 8139321C | 48 26 F3 81 */	bl strncmp
/* 81393220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393224 | 40 82 00 0C */	bne .L_81393230
/* 81393228 | 3B E0 00 01 */	li r31, 0x1
/* 8139322C | 48 00 00 1C */	b .L_81393248
.L_81393230:
/* 81393230 | 7F C4 F3 78 */	mr r4, r30
/* 81393234 | 38 7C 00 68 */	addi r3, r28, 0x68
/* 81393238 | 48 17 F0 A5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8139323C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393240 | 7C 7E 1B 78 */	mr r30, r3
/* 81393244 | 40 82 FF CC */	bne .L_81393210
.L_81393248:
/* 81393248 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139324C | 7F E3 FB 78 */	mr r3, r31
/* 81393250 | 48 26 62 C1 */	bl _restgpr_28
/* 81393254 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81393258 | 7C 08 03 A6 */	mtlr r0
/* 8139325C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81393260 | 4E 80 00 20 */	blr
.endfn is_already_read__Q33ipl5scene5BoardCFPCc

# .text:0x447C | 0x81393264 | size: 0x74
# ipl::scene::Board::is_exist_keytbl(const char*) const
.fn is_exist_keytbl__Q33ipl5scene5BoardCFPCc, global
/* 81393264 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81393268 | 7C 08 02 A6 */	mflr r0
/* 8139326C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81393270 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81393274 | 48 26 62 4D */	bl _savegpr_27
/* 81393278 | 7C 7B 1B 78 */	mr r27, r3
/* 8139327C | 7C 9C 23 78 */	mr r28, r4
/* 81393280 | 3B C0 00 00 */	li r30, 0x0
/* 81393284 | 3B A0 00 00 */	li r29, 0x0
/* 81393288 | 3B E0 00 00 */	li r31, 0x0
.L_8139328C:
/* 8139328C | 7C 7B FA 14 */	add r3, r27, r31
/* 81393290 | 7F 84 E3 78 */	mr r4, r28
/* 81393294 | 38 63 0E 30 */	addi r3, r3, 0xe30
/* 81393298 | 38 A0 00 20 */	li r5, 0x20
/* 8139329C | 48 26 F3 01 */	bl strncmp
/* 813932A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813932A4 | 40 82 00 08 */	bne .L_813932AC
/* 813932A8 | 3B C0 00 01 */	li r30, 0x1
.L_813932AC:
/* 813932AC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813932B0 | 3B FF 00 24 */	addi r31, r31, 0x24
/* 813932B4 | 2C 1D 00 0A */	cmpwi r29, 0xa
/* 813932B8 | 41 80 FF D4 */	blt .L_8139328C
/* 813932BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813932C0 | 7F C3 F3 78 */	mr r3, r30
/* 813932C4 | 48 26 62 49 */	bl _restgpr_27
/* 813932C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813932CC | 7C 08 03 A6 */	mtlr r0
/* 813932D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813932D4 | 4E 80 00 20 */	blr
.endfn is_exist_keytbl__Q33ipl5scene5BoardCFPCc

# .text:0x44F0 | 0x813932D8 | size: 0xC0
# ipl::scene::Board::after_backup()
.fn after_backup__Q33ipl5scene5BoardFv, global
/* 813932D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813932DC | 7C 08 02 A6 */	mflr r0
/* 813932E0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813932E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813932E8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813932EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813932F0 | 7C 7F 1B 78 */	mr r31, r3
/* 813932F4 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813932F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813932FC | 41 82 00 0C */	beq .L_81393308
/* 81393300 | 38 80 00 00 */	li r4, 0x0
/* 81393304 | 48 00 00 08 */	b .L_8139330C
.L_81393308:
/* 81393308 | 80 84 00 7C */	lwz r4, 0x7c(r4)
.L_8139330C:
/* 8139330C | 88 04 00 14 */	lbz r0, 0x14(r4)
/* 81393310 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81393314 | 41 82 00 10 */	beq .L_81393324
/* 81393318 | 38 00 00 02 */	li r0, 0x2
/* 8139331C | 90 03 0F AC */	stw r0, 0xfac(r3)
/* 81393320 | 48 00 00 34 */	b .L_81393354
.L_81393324:
/* 81393324 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81393328 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139332C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81393330 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81393334 | 41 82 00 0C */	beq .L_81393340
/* 81393338 | 38 60 00 00 */	li r3, 0x0
/* 8139333C | 48 00 00 08 */	b .L_81393344
.L_81393340:
/* 81393340 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_81393344:
/* 81393344 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81393348 | 4B FC BD 95 */	bl mount_sd_async__Q23ipl10SDVFWorkerFv
/* 8139334C | 38 00 00 00 */	li r0, 0x0
/* 81393350 | 90 1F 0F AC */	stw r0, 0xfac(r31)
.L_81393354:
/* 81393354 | 7F E3 FB 78 */	mr r3, r31
/* 81393358 | 4B FF E7 7D */	bl exec_count_task__Q33ipl5scene5BoardFv
/* 8139335C | 38 00 00 01 */	li r0, 0x1
/* 81393360 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81393364 | 98 1F 0D 00 */	stb r0, 0xd00(r31)
/* 81393368 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139336C | 3C 80 81 39 */	lis r4, read_task___Q23ipl5sceneFPv@ha
/* 81393370 | 7F E5 FB 78 */	mr r5, r31
/* 81393374 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 81393378 | 38 84 1B 64 */	addi r4, r4, read_task___Q23ipl5sceneFPv@l
/* 8139337C | 38 C0 00 00 */	li r6, 0x0
/* 81393380 | 48 26 4E C9 */	bl fn_815F8248
/* 81393384 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393388 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139338C | 7C 08 03 A6 */	mtlr r0
/* 81393390 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393394 | 4E 80 00 20 */	blr
.endfn after_backup__Q33ipl5scene5BoardFv

# .text:0x45B0 | 0x81393398 | size: 0x208
# ipl::scene::Board::getFriendInfo(NWC24FriendInfo*) const
.fn getFriendInfo__Q33ipl5scene5BoardCFP15NWC24FriendInfo, global
/* 81393398 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8139339C | 7C 2C 0B 78 */	mr r12, r1
/* 813933A0 | 21 6B FC 60 */	subfic r11, r11, -0x3a0
/* 813933A4 | 7C 21 59 6E */	stwux r1, r1, r11
/* 813933A8 | 7C 08 02 A6 */	mflr r0
/* 813933AC | 7D 8B 63 78 */	mr r11, r12
/* 813933B0 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 813933B4 | 48 26 61 11 */	bl _savegpr_28
/* 813933B8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813933BC | 7C 7C 1B 78 */	mr r28, r3
/* 813933C0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813933C4 | 7C 9E 23 78 */	mr r30, r4
/* 813933C8 | 88 05 02 BC */	lbz r0, 0x2bc(r5)
/* 813933CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813933D0 | 41 82 00 0C */	beq .L_813933DC
/* 813933D4 | 3B E0 00 00 */	li r31, 0x0
/* 813933D8 | 48 00 00 08 */	b .L_813933E0
.L_813933DC:
/* 813933DC | 83 E5 00 8C */	lwz r31, 0x8c(r5)
.L_813933E0:
/* 813933E0 | 7F E3 FB 78 */	mr r3, r31
/* 813933E4 | 3B A0 00 01 */	li r29, 0x1
/* 813933E8 | 4B FA E6 59 */	bl open__Q33ipl5nwc247ManagerFv
/* 813933EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813933F0 | 41 82 01 90 */	beq .L_81393580
/* 813933F4 | 80 9C 0F A0 */	lwz r4, 0xfa0(r28)
/* 813933F8 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813933FC | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 81393400 | 48 00 2A C9 */	bl get_addr__Q33ipl5scene11BoardObjectCFv
/* 81393404 | 38 00 00 20 */	li r0, 0x20
/* 81393408 | 38 A1 01 24 */	addi r5, r1, 0x124
/* 8139340C | 38 81 00 24 */	addi r4, r1, 0x24
/* 81393410 | 7C 09 03 A6 */	mtctr r0
.L_81393414:
/* 81393414 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81393418 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8139341C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 81393420 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 81393424 | 42 00 FF F0 */	bdnz .L_81393414
/* 81393428 | 80 7C 0F A0 */	lwz r3, 0xfa0(r28)
/* 8139342C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81393430 | 48 00 2A 8D */	bl get_addr_type__Q33ipl5scene11BoardObjectCFv
/* 81393434 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81393438 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139343C | 41 82 00 AC */	beq .L_813934E8
/* 81393440 | 40 80 01 38 */	bge .L_81393578
/* 81393444 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81393448 | 40 80 00 08 */	bge .L_81393450
/* 8139344C | 48 00 01 2C */	b .L_81393578
.L_81393450:
/* 81393450 | 80 A1 01 28 */	lwz r5, 0x128(r1)
/* 81393454 | 7F E3 FB 78 */	mr r3, r31
/* 81393458 | 80 C1 01 2C */	lwz r6, 0x12c(r1)
/* 8139345C | 38 E1 00 20 */	addi r7, r1, 0x20
/* 81393460 | 4B FA EA 25 */	bl searchFriendInfo__Q33ipl5nwc247ManagerFUxPUl
/* 81393464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393468 | 41 82 00 78 */	beq .L_813934E0
/* 8139346C | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 81393470 | 7F E3 FB 78 */	mr r3, r31
/* 81393474 | 38 81 02 40 */	addi r4, r1, 0x240
/* 81393478 | 4B FA EA 55 */	bl readFriendInfo__Q33ipl5nwc247ManagerFP15NWC24FriendInfoUl
/* 8139347C | 38 00 00 08 */	li r0, 0x8
/* 81393480 | 38 BE FF FC */	subi r5, r30, 0x4
/* 81393484 | 38 81 02 3C */	addi r4, r1, 0x23c
/* 81393488 | 7C 09 03 A6 */	mtctr r0
.L_8139348C:
/* 8139348C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81393490 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 81393494 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 81393498 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 8139349C | 42 00 FF F0 */	bdnz .L_8139348C
/* 813934A0 | 38 00 00 20 */	li r0, 0x20
/* 813934A4 | 38 BE 00 3C */	addi r5, r30, 0x3c
/* 813934A8 | 38 81 02 7C */	addi r4, r1, 0x27c
/* 813934AC | 7C 09 03 A6 */	mtctr r0
.L_813934B0:
/* 813934B0 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813934B4 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813934B8 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813934BC | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813934C0 | 42 00 FF F0 */	bdnz .L_813934B0
/* 813934C4 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 813934C8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813934CC | 40 82 00 0C */	bne .L_813934D8
/* 813934D0 | 3B A0 00 00 */	li r29, 0x0
/* 813934D4 | 48 00 00 A4 */	b .L_81393578
.L_813934D8:
/* 813934D8 | 3B A0 00 02 */	li r29, 0x2
/* 813934DC | 48 00 00 9C */	b .L_81393578
.L_813934E0:
/* 813934E0 | 3B A0 00 02 */	li r29, 0x2
/* 813934E4 | 48 00 00 94 */	b .L_81393578
.L_813934E8:
/* 813934E8 | 7F E3 FB 78 */	mr r3, r31
/* 813934EC | 38 81 01 28 */	addi r4, r1, 0x128
/* 813934F0 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 813934F4 | 4B FA E9 4D */	bl searchFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendAddrPUl
/* 813934F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813934FC | 41 82 00 78 */	beq .L_81393574
/* 81393500 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 81393504 | 7F E3 FB 78 */	mr r3, r31
/* 81393508 | 38 81 02 40 */	addi r4, r1, 0x240
/* 8139350C | 4B FA E9 C1 */	bl readFriendInfo__Q33ipl5nwc247ManagerFP15NWC24FriendInfoUl
/* 81393510 | 38 00 00 08 */	li r0, 0x8
/* 81393514 | 38 BE FF FC */	subi r5, r30, 0x4
/* 81393518 | 38 81 02 3C */	addi r4, r1, 0x23c
/* 8139351C | 7C 09 03 A6 */	mtctr r0
.L_81393520:
/* 81393520 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81393524 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 81393528 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8139352C | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 81393530 | 42 00 FF F0 */	bdnz .L_81393520
/* 81393534 | 38 00 00 20 */	li r0, 0x20
/* 81393538 | 38 BE 00 3C */	addi r5, r30, 0x3c
/* 8139353C | 38 81 02 7C */	addi r4, r1, 0x27c
/* 81393540 | 7C 09 03 A6 */	mtctr r0
.L_81393544:
/* 81393544 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81393548 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8139354C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 81393550 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 81393554 | 42 00 FF F0 */	bdnz .L_81393544
/* 81393558 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8139355C | 28 00 00 02 */	cmplwi r0, 0x2
/* 81393560 | 40 82 00 0C */	bne .L_8139356C
/* 81393564 | 3B A0 00 00 */	li r29, 0x0
/* 81393568 | 48 00 00 10 */	b .L_81393578
.L_8139356C:
/* 8139356C | 3B A0 00 02 */	li r29, 0x2
/* 81393570 | 48 00 00 08 */	b .L_81393578
.L_81393574:
/* 81393574 | 3B A0 00 02 */	li r29, 0x2
.L_81393578:
/* 81393578 | 7F E3 FB 78 */	mr r3, r31
/* 8139357C | 4B FA E5 39 */	bl close__Q33ipl5nwc247ManagerFv
.L_81393580:
/* 81393580 | 7F A3 EB 78 */	mr r3, r29
/* 81393584 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81393588 | 7D 4B 53 78 */	mr r11, r10
/* 8139358C | 48 26 5F 85 */	bl _restgpr_28
/* 81393590 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81393594 | 7C 08 03 A6 */	mtlr r0
/* 81393598 | 7D 41 53 78 */	mr r1, r10
/* 8139359C | 4E 80 00 20 */	blr
.endfn getFriendInfo__Q33ipl5scene5BoardCFP15NWC24FriendInfo

# .text:0x47B8 | 0x813935A0 | size: 0xC
# ipl::scene::Board::getPictureTexObj() const
.fn getPictureTexObj__Q33ipl5scene5BoardCFv, global
/* 813935A0 | 80 63 0F A0 */	lwz r3, 0xfa0(r3)
/* 813935A4 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 813935A8 | 4E 80 00 20 */	blr
.endfn getPictureTexObj__Q33ipl5scene5BoardCFv

# .text:0x47C4 | 0x813935AC | size: 0x10
# ipl::scene::Board::getPicture(unsigned long*) const
.fn getPicture__Q33ipl5scene5BoardCFPUl, global
/* 813935AC | 80 63 0F A0 */	lwz r3, 0xfa0(r3)
/* 813935B0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813935B4 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 813935B8 | 4B F9 F5 90 */	b RBRGetPicture
.endfn getPicture__Q33ipl5scene5BoardCFPUl

# .text:0x47D4 | 0x813935BC | size: 0xC
# ipl::scene::Board::getPictureWidth() const
.fn getPictureWidth__Q33ipl5scene5BoardCFv, global
/* 813935BC | 80 63 0F A0 */	lwz r3, 0xfa0(r3)
/* 813935C0 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 813935C4 | 4E 80 00 20 */	blr
.endfn getPictureWidth__Q33ipl5scene5BoardCFv

# .text:0x47E0 | 0x813935C8 | size: 0xC
# ipl::scene::Board::getPictureHeight() const
.fn getPictureHeight__Q33ipl5scene5BoardCFv, global
/* 813935C8 | 80 63 0F A0 */	lwz r3, 0xfa0(r3)
/* 813935CC | 80 63 00 D4 */	lwz r3, 0xd4(r3)
/* 813935D0 | 4E 80 00 20 */	blr
.endfn getPictureHeight__Q33ipl5scene5BoardCFv

# .text:0x47EC | 0x813935D4 | size: 0x39C
# ipl::scene::Board::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene5BoardFUlUlPCQ33ipl10controller9Interface, global
/* 813935D4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813935D8 | 7C 08 02 A6 */	mflr r0
/* 813935DC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813935E0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813935E4 | 48 26 5E D9 */	bl _savegpr_26
/* 813935E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813935EC | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813935F0 | 7C BB 2B 78 */	mr r27, r5
/* 813935F4 | 7C DA 33 78 */	mr r26, r6
/* 813935F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813935FC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81393600 | 7D 89 03 A6 */	mtctr r12
/* 81393604 | 4E 80 04 21 */	bctrl
/* 81393608 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139360C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81393610 | 7D 89 03 A6 */	mtctr r12
/* 81393614 | 4E 80 04 21 */	bctrl
/* 81393618 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8139361C | 3B A3 00 B4 */	addi r29, r3, 0xb4
/* 81393620 | 41 82 00 08 */	beq .L_81393628
/* 81393624 | 48 00 03 34 */	b .L_81393958
.L_81393628:
/* 81393628 | 88 1F 0D 02 */	lbz r0, 0xd02(r31)
/* 8139362C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81393630 | 40 82 03 28 */	bne .L_81393958
/* 81393634 | 7F E3 FB 78 */	mr r3, r31
/* 81393638 | 4B FF FB 4D */	bl is_wait_to_clean_task__Q33ipl5scene5BoardCFv
/* 8139363C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393640 | 40 82 03 18 */	bne .L_81393958
/* 81393644 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81393648 | 3C 80 00 10 */	lis r4, 0x10
/* 8139364C | 7F 43 D3 78 */	mr r3, r26
/* 81393650 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81393654 | 38 84 08 00 */	addi r4, r4, 0x800
/* 81393658 | 7D 89 03 A6 */	mtctr r12
/* 8139365C | 4E 80 04 21 */	bctrl
/* 81393660 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393664 | 41 82 02 F4 */	beq .L_81393958
/* 81393668 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8139366C | 38 80 00 05 */	li r4, 0x5
/* 81393670 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81393674 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81393678 | 48 07 7A C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139367C | 7C 7C 1B 78 */	mr r28, r3
/* 81393680 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81393684 | 38 80 00 06 */	li r4, 0x6
/* 81393688 | 48 07 7A B1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139368C | 83 5F 00 60 */	lwz r26, 0x60(r31)
/* 81393690 | 7C 7B 1B 78 */	mr r27, r3
/* 81393694 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81393698 | 40 82 00 68 */	bne .L_81393700
/* 8139369C | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 813936A0 | 7F A3 EB 78 */	mr r3, r29
/* 813936A4 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 813936A8 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813936AC | 48 26 ED D5 */	bl strcmp
/* 813936B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813936B4 | 40 82 00 4C */	bne .L_81393700
/* 813936B8 | 7F E3 FB 78 */	mr r3, r31
/* 813936BC | 7F E5 FB 78 */	mr r5, r31
/* 813936C0 | 7F 66 DB 78 */	mr r6, r27
/* 813936C4 | 38 80 00 02 */	li r4, 0x2
/* 813936C8 | 38 E0 00 01 */	li r7, 0x1
/* 813936CC | 48 07 67 BD */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813936D0 | 7F E3 FB 78 */	mr r3, r31
/* 813936D4 | 38 80 00 03 */	li r4, 0x3
/* 813936D8 | 4B FF F7 BD */	bl cmn_create_child__Q33ipl5scene5BoardFi
/* 813936DC | 38 61 00 20 */	addi r3, r1, 0x20
/* 813936E0 | 38 9E 00 3C */	addi r4, r30, 0x3c
/* 813936E4 | 4B FF B8 B5 */	bl __ct__Q33ipl7utility4DateFRC14OSCalendarTime
/* 813936E8 | 7C 64 1B 78 */	mr r4, r3
/* 813936EC | 7F E3 FB 78 */	mr r3, r31
/* 813936F0 | 4B FF C1 D5 */	bl updateDate__Q33ipl5scene5BoardFRCQ33ipl7utility4Date
/* 813936F4 | 7F E3 FB 78 */	mr r3, r31
/* 813936F8 | 4B FF E3 DD */	bl exec_count_task__Q33ipl5scene5BoardFv
/* 813936FC | 48 00 02 5C */	b .L_81393958
.L_81393700:
/* 81393700 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81393704 | 40 82 00 80 */	bne .L_81393784
/* 81393708 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 8139370C | 7F A3 EB 78 */	mr r3, r29
/* 81393710 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 81393714 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 81393718 | 48 26 ED 69 */	bl strcmp
/* 8139371C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393720 | 40 82 00 64 */	bne .L_81393784
/* 81393724 | 7F E3 FB 78 */	mr r3, r31
/* 81393728 | 7F E5 FB 78 */	mr r5, r31
/* 8139372C | 7F 86 E3 78 */	mr r6, r28
/* 81393730 | 38 80 00 07 */	li r4, 0x7
/* 81393734 | 38 E0 00 00 */	li r7, 0x0
/* 81393738 | 48 07 67 51 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 8139373C | 7F E3 FB 78 */	mr r3, r31
/* 81393740 | 38 80 00 04 */	li r4, 0x4
/* 81393744 | 4B FF F7 51 */	bl cmn_create_child__Q33ipl5scene5BoardFi
/* 81393748 | 3C 80 81 65 */	lis r4, lbl_8164B000@ha
/* 8139374C | 7F 83 E3 78 */	mr r3, r28
/* 81393750 | 38 84 B0 00 */	addi r4, r4, lbl_8164B000@l
/* 81393754 | 38 A0 00 23 */	li r5, 0x23
/* 81393758 | 48 00 92 45 */	bl setText__Q33ipl5scene6ButtonFPCcUl
/* 8139375C | 80 7F 0D 28 */	lwz r3, 0xd28(r31)
/* 81393760 | 38 80 00 00 */	li r4, 0x0
/* 81393764 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81393768 | 48 17 EB B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139376C | 7C 7B 1B 78 */	mr r27, r3
/* 81393770 | 4B FC F1 01 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81393774 | 38 00 00 01 */	li r0, 0x1
/* 81393778 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8139377C | 98 1F 0F 9A */	stb r0, 0xf9a(r31)
/* 81393780 | 48 00 01 D8 */	b .L_81393958
.L_81393784:
/* 81393784 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81393788 | 40 82 00 8C */	bne .L_81393814
/* 8139378C | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 81393790 | 7F A3 EB 78 */	mr r3, r29
/* 81393794 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 81393798 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 8139379C | 48 26 EC E5 */	bl strcmp
/* 813937A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813937A4 | 40 82 00 70 */	bne .L_81393814
/* 813937A8 | 7F E3 FB 78 */	mr r3, r31
/* 813937AC | 7F E5 FB 78 */	mr r5, r31
/* 813937B0 | 7F 86 E3 78 */	mr r6, r28
/* 813937B4 | 38 80 00 08 */	li r4, 0x8
/* 813937B8 | 38 E0 00 00 */	li r7, 0x0
/* 813937BC | 48 07 66 CD */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813937C0 | 7F E3 FB 78 */	mr r3, r31
/* 813937C4 | 38 80 00 07 */	li r4, 0x7
/* 813937C8 | 4B FF F6 CD */	bl cmn_create_child__Q33ipl5scene5BoardFi
/* 813937CC | 7F 83 E3 78 */	mr r3, r28
/* 813937D0 | 38 80 00 0B */	li r4, 0xb
/* 813937D4 | 48 00 9C 55 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813937D8 | 3C 80 81 65 */	lis r4, lbl_8164B000@ha
/* 813937DC | 7F 83 E3 78 */	mr r3, r28
/* 813937E0 | 38 84 B0 00 */	addi r4, r4, lbl_8164B000@l
/* 813937E4 | 38 A0 00 23 */	li r5, 0x23
/* 813937E8 | 48 00 91 B5 */	bl setText__Q33ipl5scene6ButtonFPCcUl
/* 813937EC | 80 7F 0D 28 */	lwz r3, 0xd28(r31)
/* 813937F0 | 38 80 00 00 */	li r4, 0x0
/* 813937F4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813937F8 | 48 17 EB 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813937FC | 7C 7B 1B 78 */	mr r27, r3
/* 81393800 | 4B FC F0 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81393804 | 38 00 00 01 */	li r0, 0x1
/* 81393808 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8139380C | 98 1F 0F 9A */	stb r0, 0xf9a(r31)
/* 81393810 | 48 00 01 48 */	b .L_81393958
.L_81393814:
/* 81393814 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81393818 | 40 82 00 A0 */	bne .L_813938B8
/* 8139381C | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 81393820 | 7F A3 EB 78 */	mr r3, r29
/* 81393824 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 81393828 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 8139382C | 48 26 EC 55 */	bl strcmp
/* 81393830 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393834 | 40 82 00 84 */	bne .L_813938B8
/* 81393838 | 88 1F 0F 98 */	lbz r0, 0xf98(r31)
/* 8139383C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81393840 | 41 82 00 30 */	beq .L_81393870
/* 81393844 | 88 1F 0D 00 */	lbz r0, 0xd00(r31)
/* 81393848 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139384C | 41 82 00 0C */	beq .L_81393858
/* 81393850 | 38 00 00 01 */	li r0, 0x1
/* 81393854 | 98 1F 0D 01 */	stb r0, 0xd01(r31)
.L_81393858:
/* 81393858 | 38 00 00 0A */	li r0, 0xa
/* 8139385C | 7F 83 E3 78 */	mr r3, r28
/* 81393860 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81393864 | 38 80 00 13 */	li r4, 0x13
/* 81393868 | 48 00 92 F1 */	bl iplButton_8139CB58
/* 8139386C | 48 00 00 EC */	b .L_81393958
.L_81393870:
/* 81393870 | 38 61 00 14 */	addi r3, r1, 0x14
/* 81393874 | 4B FF D7 F1 */	bl getMaxDate__Q33ipl7utility4DateFv
/* 81393878 | 38 7F 0D 08 */	addi r3, r31, 0xd08
/* 8139387C | 38 81 00 14 */	addi r4, r1, 0x14
/* 81393880 | 4B FF C1 21 */	bl __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81393884 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393888 | 41 82 00 D0 */	beq .L_81393958
/* 8139388C | 7F 83 E3 78 */	mr r3, r28
/* 81393890 | 38 80 00 13 */	li r4, 0x13
/* 81393894 | 48 00 92 C5 */	bl iplButton_8139CB58
/* 81393898 | 7F E3 FB 78 */	mr r3, r31
/* 8139389C | 4B FF F6 91 */	bl cmn_start_scroll_r__Q33ipl5scene5BoardFv
/* 813938A0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813938A4 | 3C 80 81 65 */	lis r4, lbl_8164B033@ha
/* 813938A8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813938AC | 38 84 B0 33 */	addi r4, r4, lbl_8164B033@l
/* 813938B0 | 4B FD 7B BD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813938B4 | 48 00 00 A4 */	b .L_81393958
.L_813938B8:
/* 813938B8 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 813938BC | 40 82 00 9C */	bne .L_81393958
/* 813938C0 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 813938C4 | 7F A3 EB 78 */	mr r3, r29
/* 813938C8 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 813938CC | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813938D0 | 48 26 EB B1 */	bl strcmp
/* 813938D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813938D8 | 40 82 00 80 */	bne .L_81393958
/* 813938DC | 88 1F 0F 99 */	lbz r0, 0xf99(r31)
/* 813938E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813938E4 | 41 82 00 30 */	beq .L_81393914
/* 813938E8 | 88 1F 0D 00 */	lbz r0, 0xd00(r31)
/* 813938EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813938F0 | 41 82 00 0C */	beq .L_813938FC
/* 813938F4 | 38 00 00 01 */	li r0, 0x1
/* 813938F8 | 98 1F 0D 01 */	stb r0, 0xd01(r31)
.L_813938FC:
/* 813938FC | 38 00 00 09 */	li r0, 0x9
/* 81393900 | 7F 83 E3 78 */	mr r3, r28
/* 81393904 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81393908 | 38 80 00 14 */	li r4, 0x14
/* 8139390C | 48 00 92 4D */	bl iplButton_8139CB58
/* 81393910 | 48 00 00 48 */	b .L_81393958
.L_81393914:
/* 81393914 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81393918 | 4B FF D7 35 */	bl getMinDate__Q33ipl7utility4DateFv
/* 8139391C | 38 7F 0D 08 */	addi r3, r31, 0xd08
/* 81393920 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81393924 | 4B FF C0 7D */	bl __ne__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 81393928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139392C | 41 82 00 2C */	beq .L_81393958
/* 81393930 | 7F 83 E3 78 */	mr r3, r28
/* 81393934 | 38 80 00 14 */	li r4, 0x14
/* 81393938 | 48 00 92 21 */	bl iplButton_8139CB58
/* 8139393C | 7F E3 FB 78 */	mr r3, r31
/* 81393940 | 4B FF F6 55 */	bl cmn_start_scroll_l__Q33ipl5scene5BoardFv
/* 81393944 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81393948 | 3C 80 81 65 */	lis r4, lbl_8164B033@ha
/* 8139394C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81393950 | 38 84 B0 33 */	addi r4, r4, lbl_8164B033@l
/* 81393954 | 4B FD 7B 19 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_81393958:
/* 81393958 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8139395C | 48 26 5B AD */	bl _restgpr_26
/* 81393960 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81393964 | 7C 08 03 A6 */	mtlr r0
/* 81393968 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8139396C | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene5BoardFUlUlPCQ33ipl10controller9Interface

# .text:0x4B88 | 0x81393970 | size: 0x1DC
# ipl::scene::Board::reopen_log()
.fn reopen_log__Q33ipl5scene5BoardFv, global
/* 81393970 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81393974 | 7C 08 02 A6 */	mflr r0
/* 81393978 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 8139397C | 39 61 00 80 */	addi r11, r1, 0x80
/* 81393980 | 48 26 5B 41 */	bl _savegpr_27
/* 81393984 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81393988 | 7C 7B 1B 78 */	mr r27, r3
/* 8139398C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81393990 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81393994 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81393998 | 41 82 00 0C */	beq .L_813939A4
/* 8139399C | 3B C0 00 00 */	li r30, 0x0
/* 813939A0 | 48 00 00 08 */	b .L_813939A8
.L_813939A4:
/* 813939A4 | 83 C4 00 7C */	lwz r30, 0x7c(r4)
.L_813939A8:
/* 813939A8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813939AC | 38 61 00 14 */	addi r3, r1, 0x14
/* 813939B0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813939B4 | 38 84 00 3C */	addi r4, r4, 0x3c
/* 813939B8 | 4B FF B5 E1 */	bl __ct__Q33ipl7utility4DateFRC14OSCalendarTime
/* 813939BC | 7C 64 1B 78 */	mr r4, r3
/* 813939C0 | 38 7B 0D 08 */	addi r3, r27, 0xd08
/* 813939C4 | 4B FF C1 C1 */	bl __eq__Q33ipl7utility4DateCFRCQ33ipl7utility4Date
/* 813939C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813939CC | 41 82 01 68 */	beq .L_81393B34
/* 813939D0 | 7F 63 DB 78 */	mr r3, r27
/* 813939D4 | 48 00 01 D5 */	bl get_log_obj__Q33ipl5scene5BoardFv
/* 813939D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813939DC | 7C 7D 1B 78 */	mr r29, r3
/* 813939E0 | 41 82 01 54 */	beq .L_81393B34
/* 813939E4 | 48 00 19 15 */	bl destroy__Q33ipl5scene11BoardObjectFv
/* 813939E8 | 88 1B 0D 00 */	lbz r0, 0xd00(r27)
/* 813939EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813939F0 | 40 82 01 44 */	bne .L_81393B34
/* 813939F4 | 7F C3 F3 78 */	mr r3, r30
/* 813939F8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813939FC | 38 BD 00 80 */	addi r5, r29, 0x80
/* 81393A00 | 4B FA C2 ED */	bl findByKey__Q33ipl3cdb7ManagerFP10_CDBRecordP13_CDBRecordKey
/* 81393A04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393A08 | 41 82 01 2C */	beq .L_81393B34
/* 81393A0C | 3B FE 00 20 */	addi r31, r30, 0x20
/* 81393A10 | 7F E3 FB 78 */	mr r3, r31
/* 81393A14 | 48 19 E1 F5 */	bl fn_81531C08
/* 81393A18 | 7F E3 FB 78 */	mr r3, r31
/* 81393A1C | 48 19 E2 C9 */	bl fn_81531CE4
/* 81393A20 | 7F C3 F3 78 */	mr r3, r30
/* 81393A24 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81393A28 | 4B FA C5 29 */	bl open__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 81393A2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393A30 | 41 82 01 04 */	beq .L_81393B34
/* 81393A34 | 3B E1 00 20 */	addi r31, r1, 0x20
/* 81393A38 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 81393A3C | 7F C3 F3 78 */	mr r3, r30
/* 81393A40 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81393A44 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 81393A48 | 7F E4 FB 78 */	mr r4, r31
/* 81393A4C | 4B FA C3 BD */	bl getDataSize__Q33ipl3cdb7ManagerFP10_CDBRecordPUl
/* 81393A50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393A54 | 40 82 00 14 */	bne .L_81393A68
/* 81393A58 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81393A5C | 38 80 FF FF */	li r4, -0x1
/* 81393A60 | 48 00 00 ED */	bl __dt__Q33ipl3cdb11auto_closerFv
/* 81393A64 | 48 00 00 D0 */	b .L_81393B34
.L_81393A68:
/* 81393A68 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81393A6C | 38 A0 00 20 */	li r5, 0x20
/* 81393A70 | 80 9D 00 C4 */	lwz r4, 0xc4(r29)
/* 81393A74 | 48 26 46 61 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81393A78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393A7C | 7C 7C 1B 78 */	mr r28, r3
/* 81393A80 | 40 82 00 34 */	bne .L_81393AB4
/* 81393A84 | 7F A3 EB 78 */	mr r3, r29
/* 81393A88 | 48 00 18 71 */	bl destroy__Q33ipl5scene11BoardObjectFv
/* 81393A8C | 7F A4 EB 78 */	mr r4, r29
/* 81393A90 | 38 7B 00 68 */	addi r3, r27, 0x68
/* 81393A94 | 48 17 E7 DD */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81393A98 | 7F A4 EB 78 */	mr r4, r29
/* 81393A9C | 38 7B 00 74 */	addi r3, r27, 0x74
/* 81393AA0 | 48 17 E5 D5 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81393AA4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81393AA8 | 38 80 FF FF */	li r4, -0x1
/* 81393AAC | 48 00 00 A1 */	bl __dt__Q33ipl3cdb11auto_closerFv
/* 81393AB0 | 48 00 00 84 */	b .L_81393B34
.L_81393AB4:
/* 81393AB4 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81393AB8 | 7F C3 F3 78 */	mr r3, r30
/* 81393ABC | 7F E4 FB 78 */	mr r4, r31
/* 81393AC0 | 7F 85 E3 78 */	mr r5, r28
/* 81393AC4 | 4B FA C4 F5 */	bl read__Q33ipl3cdb7ManagerFP10_CDBRecordPvUl
/* 81393AC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393ACC | 40 82 00 3C */	bne .L_81393B08
/* 81393AD0 | 7F A3 EB 78 */	mr r3, r29
/* 81393AD4 | 48 00 18 25 */	bl destroy__Q33ipl5scene11BoardObjectFv
/* 81393AD8 | 7F A4 EB 78 */	mr r4, r29
/* 81393ADC | 38 7B 00 68 */	addi r3, r27, 0x68
/* 81393AE0 | 48 17 E7 91 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81393AE4 | 7F A4 EB 78 */	mr r4, r29
/* 81393AE8 | 38 7B 00 74 */	addi r3, r27, 0x74
/* 81393AEC | 48 17 E5 89 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81393AF0 | 7F 83 E3 78 */	mr r3, r28
/* 81393AF4 | 48 26 45 F9 */	bl __dla__FPv
/* 81393AF8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81393AFC | 38 80 FF FF */	li r4, -0x1
/* 81393B00 | 48 00 00 4D */	bl __dt__Q33ipl3cdb11auto_closerFv
/* 81393B04 | 48 00 00 30 */	b .L_81393B34
.L_81393B08:
/* 81393B08 | 80 9B 0D 20 */	lwz r4, 0xd20(r27)
/* 81393B0C | 7F A3 EB 78 */	mr r3, r29
/* 81393B10 | 80 DD 00 B0 */	lwz r6, 0xb0(r29)
/* 81393B14 | 7F 85 E3 78 */	mr r5, r28
/* 81393B18 | 38 FD 00 74 */	addi r7, r29, 0x74
/* 81393B1C | 39 1D 00 80 */	addi r8, r29, 0x80
/* 81393B20 | 39 3D 00 B4 */	addi r9, r29, 0xb4
/* 81393B24 | 48 00 04 51 */	bl create__Q33ipl5scene11BoardObjectFPQ33ipl4nand10LayoutFilePUcUlRC6_CDBIdRC13_CDBRecordKeyRCQ33ipl7utility4Date
/* 81393B28 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81393B2C | 38 80 FF FF */	li r4, -0x1
/* 81393B30 | 48 00 00 1D */	bl __dt__Q33ipl3cdb11auto_closerFv
.L_81393B34:
/* 81393B34 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81393B38 | 48 26 59 D5 */	bl _restgpr_27
/* 81393B3C | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 81393B40 | 7C 08 03 A6 */	mtlr r0
/* 81393B44 | 38 21 00 80 */	addi r1, r1, 0x80
/* 81393B48 | 4E 80 00 20 */	blr
.endfn reopen_log__Q33ipl5scene5BoardFv

# .text:0x4D64 | 0x81393B4C | size: 0x5C
# ipl::cdb::auto_closer::~auto_closer()
.fn __dt__Q33ipl3cdb11auto_closerFv, global
/* 81393B4C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393B50 | 7C 08 02 A6 */	mflr r0
/* 81393B54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393B58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393B5C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81393B60 | 7C 9F 23 78 */	mr r31, r4
/* 81393B64 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81393B68 | 7C 7E 1B 78 */	mr r30, r3
/* 81393B6C | 41 82 00 20 */	beq .L_81393B8C
/* 81393B70 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81393B74 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81393B78 | 4B FA C5 AD */	bl close__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 81393B7C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81393B80 | 40 81 00 0C */	ble .L_81393B8C
/* 81393B84 | 7F C3 F3 78 */	mr r3, r30
/* 81393B88 | 48 26 45 5D */	bl __dl__FPv
.L_81393B8C:
/* 81393B8C | 7F C3 F3 78 */	mr r3, r30
/* 81393B90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81393B94 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81393B98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393B9C | 7C 08 03 A6 */	mtlr r0
/* 81393BA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393BA4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl3cdb11auto_closerFv

# .text:0x4DC0 | 0x81393BA8 | size: 0x68
# ipl::scene::Board::get_log_obj()
.fn get_log_obj__Q33ipl5scene5BoardFv, global
/* 81393BA8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393BAC | 7C 08 02 A6 */	mflr r0
/* 81393BB0 | 38 80 00 00 */	li r4, 0x0
/* 81393BB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393BB8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81393BBC | 3B E0 00 00 */	li r31, 0x0
/* 81393BC0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81393BC4 | 7C 7E 1B 78 */	mr r30, r3
/* 81393BC8 | 48 00 00 18 */	b .L_81393BE0
.L_81393BCC:
/* 81393BCC | 80 03 00 DC */	lwz r0, 0xdc(r3)
/* 81393BD0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81393BD4 | 40 82 00 0C */	bne .L_81393BE0
/* 81393BD8 | 7C 9F 23 78 */	mr r31, r4
/* 81393BDC | 48 00 00 18 */	b .L_81393BF4
.L_81393BE0:
/* 81393BE0 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 81393BE4 | 48 17 E6 F9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81393BE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393BEC | 7C 64 1B 78 */	mr r4, r3
/* 81393BF0 | 40 82 FF DC */	bne .L_81393BCC
.L_81393BF4:
/* 81393BF4 | 7F E3 FB 78 */	mr r3, r31
/* 81393BF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81393BFC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81393C00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393C04 | 7C 08 03 A6 */	mtlr r0
/* 81393C08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393C0C | 4E 80 00 20 */	blr
.endfn get_log_obj__Q33ipl5scene5BoardFv

# .text:0x4E28 | 0x81393C10 | size: 0x94
# ipl::scene::Board::ObjList::ObjList()
.fn __ct__Q43ipl5scene5Board7ObjListFv, global
/* 81393C10 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81393C14 | 7C 08 02 A6 */	mflr r0
/* 81393C18 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81393C1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81393C20 | 48 26 58 A9 */	bl _savegpr_29
/* 81393C24 | 3C 80 81 39 */	lis r4, __ct__Q33ipl5scene11BoardObjectFv@ha
/* 81393C28 | 3C A0 81 39 */	lis r5, __dt__Q33ipl5scene11BoardObjectFv@ha
/* 81393C2C | 7C 7D 1B 78 */	mr r29, r3
/* 81393C30 | 38 C0 01 40 */	li r6, 0x140
/* 81393C34 | 38 84 3D 1C */	addi r4, r4, __ct__Q33ipl5scene11BoardObjectFv@l
/* 81393C38 | 38 A5 EF 58 */	addi r5, r5, __dt__Q33ipl5scene11BoardObjectFv@l
/* 81393C3C | 38 E0 00 0A */	li r7, 0xa
/* 81393C40 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81393C44 | 48 26 55 BD */	bl __construct_array
/* 81393C48 | 7F A3 EB 78 */	mr r3, r29
/* 81393C4C | 38 80 00 0C */	li r4, 0xc
/* 81393C50 | 48 17 E4 0D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81393C54 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 81393C58 | 38 80 00 0C */	li r4, 0xc
/* 81393C5C | 48 17 E4 01 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81393C60 | 3B C0 00 00 */	li r30, 0x0
/* 81393C64 | 3B E0 00 00 */	li r31, 0x0
.L_81393C68:
/* 81393C68 | 7C 9D FA 14 */	add r4, r29, r31
/* 81393C6C | 38 7D 00 0C */	addi r3, r29, 0xc
/* 81393C70 | 38 84 00 18 */	addi r4, r4, 0x18
/* 81393C74 | 48 17 E4 01 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81393C78 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81393C7C | 3B FF 01 40 */	addi r31, r31, 0x140
/* 81393C80 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 81393C84 | 41 80 FF E4 */	blt .L_81393C68
/* 81393C88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81393C8C | 7F A3 EB 78 */	mr r3, r29
/* 81393C90 | 48 26 58 85 */	bl _restgpr_29
/* 81393C94 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81393C98 | 7C 08 03 A6 */	mtlr r0
/* 81393C9C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81393CA0 | 4E 80 00 20 */	blr
.endfn __ct__Q43ipl5scene5Board7ObjListFv

# .text:0x4EBC | 0x81393CA4 | size: 0x68
# ipl::scene::Board::~Board()
.fn __dt__Q33ipl5scene5BoardFv, global
/* 81393CA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393CA8 | 7C 08 02 A6 */	mflr r0
/* 81393CAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393CB0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393CB4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81393CB8 | 7C 9F 23 78 */	mr r31, r4
/* 81393CBC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81393CC0 | 7C 7E 1B 78 */	mr r30, r3
/* 81393CC4 | 41 82 00 2C */	beq .L_81393CF0
/* 81393CC8 | 38 80 FF FF */	li r4, -0x1
/* 81393CCC | 38 63 00 68 */	addi r3, r3, 0x68
/* 81393CD0 | 4B FF B2 21 */	bl __dt__Q43ipl5scene5Board7ObjListFv
/* 81393CD4 | 7F C3 F3 78 */	mr r3, r30
/* 81393CD8 | 38 80 00 00 */	li r4, 0x0
/* 81393CDC | 48 07 5F 89 */	bl __dt__Q33ipl5scene4BaseFv
/* 81393CE0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81393CE4 | 40 81 00 0C */	ble .L_81393CF0
/* 81393CE8 | 7F C3 F3 78 */	mr r3, r30
/* 81393CEC | 48 26 43 F9 */	bl __dl__FPv
.L_81393CF0:
/* 81393CF0 | 7F C3 F3 78 */	mr r3, r30
/* 81393CF4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81393CF8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81393CFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393D00 | 7C 08 03 A6 */	mtlr r0
/* 81393D04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393D08 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene5BoardFv

# .text:0x4F24 | 0x81393D0C | size: 0x8
.fn "@20@__dt__Q33ipl5scene5BoardFv", global
/* 81393D0C | 38 63 FF EC */	subi r3, r3, 0x14
/* 81393D10 | 4B FF FF 94 */	b __dt__Q33ipl5scene5BoardFv
.endfn "@20@__dt__Q33ipl5scene5BoardFv"

# .text:0x4F2C | 0x81393D14 | size: 0x8
# ipl::scene::Board::@84@onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn "@84@onEventDerived__Q33ipl5scene5BoardFUlUlPCQ33ipl10controller9Interface", global
/* 81393D14 | 38 63 FF AC */	subi r3, r3, 0x54
/* 81393D18 | 4B FF F8 BC */	b onEventDerived__Q33ipl5scene5BoardFUlUlPCQ33ipl10controller9Interface
.endfn "@84@onEventDerived__Q33ipl5scene5BoardFUlUlPCQ33ipl10controller9Interface"

# 0x8160F690..0x8160F6F8 | size: 0x68
.rodata
.balign 8

# .rodata:0x0 | 0x8160F690 | size: 0x18
.obj lbl_8160F690, global
	.2byte 0x001F
	.2byte 0x001C
	.2byte 0x001F
	.2byte 0x001E
	.2byte 0x001F
	.2byte 0x001E
	.2byte 0x001F
	.2byte 0x001F
	.2byte 0x001E
	.2byte 0x001F
	.2byte 0x001E
	.2byte 0x001F
.endobj lbl_8160F690

# .rodata:0x18 | 0x8160F6A8 | size: 0x20
# ipl::scene::scAnmFrame
.obj scAnmFrame__Q23ipl5scene, local
	.4byte 0x41F00000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x42C80000
	.4byte 0x43030000
	.4byte 0x42700000
	.4byte 0x42B60000
.endobj scAnmFrame__Q23ipl5scene

# .rodata:0x38 | 0x8160F6C8 | size: 0x14
# ipl::scene::scNumber
.obj scNumber__Q23ipl5scene, local
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
.endobj scNumber__Q23ipl5scene

# .rodata:0x4C | 0x8160F6DC | size: 0x1C
# ipl::scene::scWeekMsgId
.obj scWeekMsgId__Q23ipl5scene, local
	.4byte 0x00000074
	.4byte 0x0000006E
	.4byte 0x0000006F
	.4byte 0x00000070
	.4byte 0x00000071
	.4byte 0x00000072
	.4byte 0x00000073
.endobj scWeekMsgId__Q23ipl5scene

# 0x8164AF00..0x8164B1E8 | size: 0x2E8
.data
.balign 8

# .data:0x0 | 0x8164AF00 | size: 0xA
.obj lbl_8164AF00, global
	.string "TopBack_a"
.endobj lbl_8164AF00

# .data:0xA | 0x8164AF0A | size: 0xA
.obj lbl_8164AF0A, global
	.string "TopBack_b"
.endobj lbl_8164AF0A

# .data:0x14 | 0x8164AF14 | size: 0xC
.obj lbl_8164AF14, global
	.4byte 0x546F7042
	.4byte 0x61636B5F
	.4byte 0x63000000
.endobj lbl_8164AF14

# .data:0x20 | 0x8164AF20 | size: 0xC
.obj lbl_8164AF20, global
	.4byte lbl_8164AF00
	.4byte lbl_8164AF0A
	.4byte lbl_8164AF14
.endobj lbl_8164AF20

# .data:0x2C | 0x8164AF2C | size: 0xA
.obj lbl_8164AF2C, global
	.string "board.ash"
.endobj lbl_8164AF2C

# .data:0x36 | 0x8164AF36 | size: 0x78
.obj lbl_8164AF36, global
	.4byte 0x62616C6C
	.4byte 0x6F6F6E2E
	.4byte 0x61736800
	.4byte 0x6D795F49
	.4byte 0x706C546F
	.4byte 0x705F632E
	.4byte 0x62726C79
	.4byte 0x74006D79
	.4byte 0x5F49706C
	.4byte 0x546F705F
	.4byte 0x632E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F42
	.4byte 0x62734D61
	.4byte 0x736B5F61
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x795F4262
	.4byte 0x734D6173
	.4byte 0x6B5F615F
	.4byte 0x4D61736B
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4262734D
	.4byte 0x61736B5F
	.4byte 0x615F4D61
	.4byte 0x736B4F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
.endobj lbl_8164AF36

# .data:0xAE | 0x8164AFAE | size: 0xE
.obj lbl_8164AFAE, global
	.4byte 0x545F4262
	.4byte 0x734D6172
	.4byte 0x6B310000
	.2byte 0x0000
.endobj lbl_8164AFAE

# .data:0xBC | 0x8164AFBC | size: 0x44
.obj jumptable_8164AFBC, local
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1A4
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1AC
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1B4
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1BC
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1C4
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1CC
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1D4
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1DC
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F384
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1E4
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1EC
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1F4
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F1FC
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F210
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F2A4
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F208
	.rel calc__Q33ipl5scene5BoardFv, .L_8138F308
.endobj jumptable_8164AFBC

# .data:0x100 | 0x8164B000 | size: 0xA
.obj lbl_8164B000, global
	.string "T_CalExit"
.endobj lbl_8164B000

# .data:0x10A | 0x8164B00A | size: 0x13
.obj lbl_8164B00A, global
	.string "WIPL_SE_BOARD_HOLD"
.endobj lbl_8164B00A

# .data:0x11D | 0x8164B01D | size: 0x16
.obj lbl_8164B01D, global
	.string "WIPL_SE_BOARD_RELEASE"
.endobj lbl_8164B01D

# .data:0x133 | 0x8164B033 | size: 0xD
.obj lbl_8164B033, global
	.4byte 0x5753445F
	.4byte 0x53454C45
	.4byte 0x43540000
	.byte 0x00
.endobj lbl_8164B033

# .data:0x140 | 0x8164B040 | size: 0x30
.obj jumptable_8164B040, local
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_813913C4
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_813910C0
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_813910F4
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_813912C8
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_81391318
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_81391324
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_81391184
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_813911C4
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_81391204
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_8139123C
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_81391274
	.rel stt_focus__Q33ipl5scene5BoardFv, .L_813912AC
.endobj jumptable_8164B040

# .data:0x170 | 0x8164B070 | size: 0x64
.obj lbl_8164B070, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x4D53475F
	.4byte 0x484F5553
	.4byte 0x45000025
	.4byte 0x00640025
	.4byte 0x006C0073
	.4byte 0x00250064
	.4byte 0x0025006C
	.4byte 0x00730025
	.4byte 0x006C0073
	.4byte 0x0025006C
	.4byte 0x00730025
	.4byte 0x006C0073
	.4byte 0x00000025
	.4byte 0x00640025
	.4byte 0x006C0073
	.4byte 0x00200025
	.4byte 0x00640025
	.4byte 0x006C0073
	.4byte 0x0025006C
	.4byte 0x00730025
	.4byte 0x006C0073
	.4byte 0x0025006C
	.4byte 0x00730000
.endobj lbl_8164B070

# .data:0x1D4 | 0x8164B0D4 | size: 0x44
.obj lbl_8164B0D4, global
	.4byte 0x0025006C
	.4byte 0x00730020
	.4byte 0x00250030
	.4byte 0x00320064
	.4byte 0x002D0025
	.4byte 0x00300032
	.4byte 0x00640000
	.4byte 0x00250030
	.4byte 0x00320064
	.4byte 0x002E0025
	.4byte 0x00300032
	.4byte 0x0064002E
	.4byte 0x0025006C
	.4byte 0x00730025
	.4byte 0x006C0073
	.4byte 0x0025006C
	.4byte 0x00730000
.endobj lbl_8164B0D4

# .data:0x218 | 0x8164B118 | size: 0x30
.obj lbl_8164B118, global
	.4byte 0x0025006C
	.4byte 0x00730020
	.4byte 0x00250064
	.4byte 0x002F0025
	.4byte 0x00640000
	.4byte 0x0025006C
	.4byte 0x00730020
	.4byte 0x00250030
	.4byte 0x00320064
	.4byte 0x002F0025
	.4byte 0x00300032
	.4byte 0x00640000
.endobj lbl_8164B118

# .data:0x248 | 0x8164B148 | size: 0xA
.obj lbl_8164B148, global
	.string "N_TopBack"
.endobj lbl_8164B148

# .data:0x252 | 0x8164B152 | size: 0x12
.obj lbl_8164B152, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x44450000
	.2byte 0x0000
.endobj lbl_8164B152

# .data:0x264 | 0x8164B164 | size: 0x84
# ipl::scene::Board::__vtable
.obj __vt__Q33ipl5scene5Board, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene5BoardFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene5BoardFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene5BoardCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene5BoardFv
	.4byte create__Q33ipl5scene5BoardFv
	.4byte calc__Q33ipl5scene5BoardFv
	.4byte draw__Q33ipl5scene5BoardFv
	.4byte destroy__Q33ipl5scene5BoardFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte "@84@onEventDerived__Q33ipl5scene5BoardFUlUlPCQ33ipl10controller9Interface"
	.4byte onEventDerived__Q33ipl5scene5BoardFUlUlPCQ33ipl10controller9Interface
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene5Board

# 0x81694808..0x81694810 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694808 | size: 0x4
.obj lbl_81694808, global
	.float 300
.endobj lbl_81694808

# .sdata2:0x4 | 0x8169480C | size: 0x4
.obj lbl_8169480C, global
	.float -300
.endobj lbl_8169480C

# 0x81696600..0x81696628 | size: 0x28
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696600 | size: 0x4
.obj lbl_81696600, global
	.string "arc"
.endobj lbl_81696600

# .sdata:0x4 | 0x81696604 | size: 0x7
.obj lbl_81696604, global
	.string "T_Dust"
.endobj lbl_81696604

# .sdata:0xB | 0x8169660B | size: 0x8
.obj lbl_8169660B, global
	.string "T_Day_a"
.endobj lbl_8169660B

# .sdata:0x13 | 0x81696613 | size: 0x8
.obj lbl_81696613, global
	.string "T_Day_b"
.endobj lbl_81696613

# .sdata:0x1B | 0x8169661B | size: 0x8
.obj lbl_8169661B, global
	.string "T_Day_c"
.endobj lbl_8169661B

# .sdata:0x23 | 0x81696623 | size: 0x5
.obj gap_11_81696623_sdata, global
.hidden gap_11_81696623_sdata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_11_81696623_sdata
