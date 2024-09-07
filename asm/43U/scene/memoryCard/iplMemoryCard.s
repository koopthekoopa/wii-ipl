.include "macros.inc"
.file "iplMemoryCard.cpp"

# 0x813C9DCC..0x813CC1FC | size: 0x2430
.text
.balign 4

# .text:0x0 | 0x813C9DCC | size: 0xE4
# ipl::scene::MemoryCard::MemoryCard(EGG::Heap*)
.fn __ct__Q33ipl5scene10MemoryCardFPQ23EGG4Heap, global
/* 813C9DCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9DD0 | 7C 08 02 A6 */	mflr r0
/* 813C9DD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9DD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9DDC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C9DE0 | 7C 7E 1B 78 */	mr r30, r3
/* 813C9DE4 | 48 03 FE 09 */	bl fn_81409BEC
/* 813C9DE8 | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene10MemoryBase@ha
/* 813C9DEC | 3B E0 00 00 */	li r31, 0x0
/* 813C9DF0 | 38 A5 26 40 */	addi r5, r5, __vt__Q33ipl5scene10MemoryBase@l
/* 813C9DF4 | 93 FE 00 58 */	stw r31, 0x58(r30)
/* 813C9DF8 | 38 7E 00 64 */	addi r3, r30, 0x64
/* 813C9DFC | 38 80 00 08 */	li r4, 0x8
/* 813C9E00 | 90 BE 00 54 */	stw r5, 0x54(r30)
/* 813C9E04 | 93 FE 00 5C */	stw r31, 0x5c(r30)
/* 813C9E08 | 48 14 82 55 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C9E0C | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813C9E10 | 38 80 00 0C */	li r4, 0xc
/* 813C9E14 | 48 14 82 49 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C9E18 | 38 7E 00 7C */	addi r3, r30, 0x7c
/* 813C9E1C | 38 80 00 1C */	li r4, 0x1c
/* 813C9E20 | 48 14 82 3D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C9E24 | 3C E0 81 65 */	lis r7, __vt__Q33ipl5scene10MemoryCard@ha
/* 813C9E28 | 38 80 00 02 */	li r4, 0x2
/* 813C9E2C | 38 E7 24 F8 */	addi r7, r7, __vt__Q33ipl5scene10MemoryCard@l
/* 813C9E30 | 38 00 FF F1 */	li r0, -0xf
/* 813C9E34 | 38 C7 00 1C */	addi r6, r7, 0x1c
/* 813C9E38 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C9E3C | 38 A7 00 4C */	addi r5, r7, 0x4c
/* 813C9E40 | 90 FE 00 00 */	stw r7, 0x0(r30)
/* 813C9E44 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C9E48 | 90 DE 00 14 */	stw r6, 0x14(r30)
/* 813C9E4C | 90 BE 00 54 */	stw r5, 0x54(r30)
/* 813C9E50 | 90 9E 00 88 */	stw r4, 0x88(r30)
/* 813C9E54 | 90 9E 00 8C */	stw r4, 0x8c(r30)
/* 813C9E58 | 9B FE 00 90 */	stb r31, 0x90(r30)
/* 813C9E5C | B0 1E 00 9C */	sth r0, 0x9c(r30)
/* 813C9E60 | B3 FE 00 9E */	sth r31, 0x9e(r30)
/* 813C9E64 | 9B FE 00 A0 */	stb r31, 0xa0(r30)
/* 813C9E68 | 9B FE 00 A1 */	stb r31, 0xa1(r30)
/* 813C9E6C | 93 FE 00 A8 */	stw r31, 0xa8(r30)
/* 813C9E70 | 93 FE 00 C8 */	stw r31, 0xc8(r30)
/* 813C9E74 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813C9E78 | 48 22 E1 C1 */	bl fn_815F8038
/* 813C9E7C | 38 7E 00 AC */	addi r3, r30, 0xac
/* 813C9E80 | 38 80 00 40 */	li r4, 0x40
/* 813C9E84 | 48 14 81 D9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C9E88 | 38 7E 00 BC */	addi r3, r30, 0xbc
/* 813C9E8C | 38 80 00 00 */	li r4, 0x0
/* 813C9E90 | 48 14 81 CD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C9E94 | 7F C3 F3 78 */	mr r3, r30
/* 813C9E98 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9E9C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C9EA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9EA4 | 7C 08 03 A6 */	mtlr r0
/* 813C9EA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9EAC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene10MemoryCardFPQ23EGG4Heap

# .text:0xE4 | 0x813C9EB0 | size: 0x40
# ipl::scene::MemoryBase::~MemoryBase()
.fn __dt__Q33ipl5scene10MemoryBaseFv, global
/* 813C9EB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9EB4 | 7C 08 02 A6 */	mflr r0
/* 813C9EB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C9EBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9EC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9EC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C9EC8 | 41 82 00 10 */	beq .L_813C9ED8
/* 813C9ECC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C9ED0 | 40 81 00 08 */	ble .L_813C9ED8
/* 813C9ED4 | 48 22 E2 11 */	bl __dl__FPv
.L_813C9ED8:
/* 813C9ED8 | 7F E3 FB 78 */	mr r3, r31
/* 813C9EDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9EE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9EE4 | 7C 08 03 A6 */	mtlr r0
/* 813C9EE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9EEC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene10MemoryBaseFv

# .text:0x124 | 0x813C9EF0 | size: 0x78
# ipl::scene::MemoryCard::prepare()
.fn prepare__Q33ipl5scene10MemoryCardFv, global
/* 813C9EF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9EF4 | 7C 08 02 A6 */	mflr r0
/* 813C9EF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9EFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9F00 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813C9F04 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813C9F08 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C9F0C | 7C 7E 1B 78 */	mr r30, r3
/* 813C9F10 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813C9F14 | 4B F9 6B C5 */	bl abort__Q33ipl3bs27ManagerFv
/* 813C9F18 | 3C A0 81 65 */	lis r5, lbl_81652394@ha
/* 813C9F1C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813C9F20 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813C9F24 | 38 A5 23 94 */	addi r5, r5, lbl_81652394@l
/* 813C9F28 | 38 C0 00 00 */	li r6, 0x0
/* 813C9F2C | 4B F7 39 89 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813C9F30 | 90 7E 00 5C */	stw r3, 0x5c(r30)
/* 813C9F34 | 3C A0 81 65 */	lis r5, lbl_8165239E@ha
/* 813C9F38 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813C9F3C | 38 A5 23 9E */	addi r5, r5, lbl_8165239E@l
/* 813C9F40 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813C9F44 | 38 C0 00 00 */	li r6, 0x0
/* 813C9F48 | 4B F7 39 6D */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813C9F4C | 90 7E 00 B8 */	stw r3, 0xb8(r30)
/* 813C9F50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9F54 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C9F58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9F5C | 7C 08 03 A6 */	mtlr r0
/* 813C9F60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9F64 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene10MemoryCardFv

# .text:0x19C | 0x813C9F68 | size: 0x820
# ipl::scene::MemoryCard::create()
.fn create__Q33ipl5scene10MemoryCardFv, global
/* 813C9F68 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813C9F6C | 7C 08 02 A6 */	mflr r0
/* 813C9F70 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813C9F74 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 813C9F78 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 813C9F7C | 39 61 00 50 */	addi r11, r1, 0x50
/* 813C9F80 | 48 22 F5 35 */	bl _savegpr_24
/* 813C9F84 | 3F E0 81 65 */	lis r31, lbl_81651D30@ha
/* 813C9F88 | 7C 7E 1B 78 */	mr r30, r3
/* 813C9F8C | 3B FF 1D 30 */	addi r31, r31, lbl_81651D30@l
/* 813C9F90 | 48 16 BD 09 */	bl fn_81535C98
/* 813C9F94 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813C9F98 | 7C 7C 1B 78 */	mr r28, r3
/* 813C9F9C | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813C9FA0 | 48 00 00 18 */	b .L_813C9FB8
.L_813C9FA4:
/* 813C9FA4 | 4B F9 68 F5 */	bl update__Q33ipl3bs27ManagerFv
/* 813C9FA8 | 38 7F 06 7A */	addi r3, r31, 0x67a
/* 813C9FAC | 4C C6 31 82 */	crclr cr1eq
/* 813C9FB0 | 48 16 46 F1 */	bl OSReport
/* 813C9FB4 | 48 17 30 35 */	bl VIWaitForRetrace
.L_813C9FB8:
/* 813C9FB8 | 80 7B 00 A8 */	lwz r3, 0xa8(r27)
/* 813C9FBC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813C9FC0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813C9FC4 | 40 82 FF E0 */	bne .L_813C9FA4
/* 813C9FC8 | 48 16 BC D1 */	bl fn_81535C98
/* 813C9FCC | 3C 80 80 00 */	lis r4, 0x8000
/* 813C9FD0 | 7C BC 18 50 */	subf r5, r28, r3
/* 813C9FD4 | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813C9FD8 | 38 00 03 E8 */	li r0, 0x3e8
/* 813C9FDC | 38 7F 06 93 */	addi r3, r31, 0x693
/* 813C9FE0 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813C9FE4 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813C9FE8 | 7C 85 03 96 */	divwu r4, r5, r0
/* 813C9FEC | 4C C6 31 82 */	crclr cr1eq
/* 813C9FF0 | 48 16 46 B1 */	bl OSReport
/* 813C9FF4 | 38 80 00 02 */	li r4, 0x2
/* 813C9FF8 | 38 60 00 01 */	li r3, 0x1
/* 813C9FFC | 48 1F 4E BD */	bl fn_815BEEB8
/* 813CA000 | 38 60 05 80 */	li r3, 0x580
/* 813CA004 | 48 22 E0 99 */	bl __nw__FUl
/* 813CA008 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA00C | 41 82 00 18 */	beq .L_813CA024
/* 813CA010 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813CA014 | 38 FF 06 AE */	addi r7, r31, 0x6ae
/* 813CA018 | 80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 813CA01C | 38 CD 8C 4C */	li r6, lbl_81696C8C@sda21
/* 813CA020 | 4B FA 00 05 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813CA024:
/* 813CA024 | 90 7E 00 58 */	stw r3, 0x58(r30)
/* 813CA028 | 3C 80 81 61 */	lis r4, lbl_81610368@ha
/* 813CA02C | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA030 | 38 A0 00 1B */	li r5, 0x1b
/* 813CA034 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA038 | 38 84 03 68 */	addi r4, r4, lbl_81610368@l
/* 813CA03C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 813CA040 | 7D 89 03 A6 */	mtctr r12
/* 813CA044 | 4E 80 04 21 */	bctrl
/* 813CA048 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA04C | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA050 | 38 80 00 07 */	li r4, 0x7
/* 813CA054 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA058 | 7D 89 03 A6 */	mtctr r12
/* 813CA05C | 4E 80 04 21 */	bctrl
/* 813CA060 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813CA064 | 3B 60 00 01 */	li r27, 0x1
/* 813CA068 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA06C | 38 80 00 0A */	li r4, 0xa
/* 813CA070 | 93 65 00 18 */	stw r27, 0x18(r5)
/* 813CA074 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA078 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA07C | 7D 89 03 A6 */	mtctr r12
/* 813CA080 | 4E 80 04 21 */	bctrl
/* 813CA084 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CA088 | 93 63 00 18 */	stw r27, 0x18(r3)
/* 813CA08C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CA090 | 4B FA 05 A5 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813CA094 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA098 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA09C | 38 80 00 00 */	li r4, 0x0
/* 813CA0A0 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CA0A4 | 7D 89 03 A6 */	mtctr r12
/* 813CA0A8 | 4E 80 04 21 */	bctrl
/* 813CA0AC | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA0B0 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA0B4 | 38 80 00 01 */	li r4, 0x1
/* 813CA0B8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CA0BC | 7D 89 03 A6 */	mtctr r12
/* 813CA0C0 | 4E 80 04 21 */	bctrl
/* 813CA0C4 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA0C8 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA0CC | 38 80 00 14 */	li r4, 0x14
/* 813CA0D0 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CA0D4 | 7D 89 03 A6 */	mtctr r12
/* 813CA0D8 | 4E 80 04 21 */	bctrl
/* 813CA0DC | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA0E0 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA0E4 | 38 80 00 17 */	li r4, 0x17
/* 813CA0E8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CA0EC | 7D 89 03 A6 */	mtctr r12
/* 813CA0F0 | 4E 80 04 21 */	bctrl
/* 813CA0F4 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA0F8 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA0FC | 38 80 00 18 */	li r4, 0x18
/* 813CA100 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CA104 | 7D 89 03 A6 */	mtctr r12
/* 813CA108 | 4E 80 04 21 */	bctrl
/* 813CA10C | 80 BE 00 88 */	lwz r5, 0x88(r30)
/* 813CA110 | 38 00 00 00 */	li r0, 0x0
/* 813CA114 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CA118 | 38 8D 8C 50 */	li r4, lbl_81696C90@sda21
/* 813CA11C | 90 BE 00 8C */	stw r5, 0x8c(r30)
/* 813CA120 | 38 A0 00 01 */	li r5, 0x1
/* 813CA124 | 90 1E 00 88 */	stw r0, 0x88(r30)
/* 813CA128 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CA12C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CA130 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CA134 | 7D 89 03 A6 */	mtctr r12
/* 813CA138 | 4E 80 04 21 */	bctrl
/* 813CA13C | 38 80 00 00 */	li r4, 0x0
/* 813CA140 | 4B F7 A2 D5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813CA144 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CA148 | 38 8D 8C 57 */	li r4, lbl_81696C97@sda21
/* 813CA14C | 38 A0 00 01 */	li r5, 0x1
/* 813CA150 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CA154 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CA158 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CA15C | 7D 89 03 A6 */	mtctr r12
/* 813CA160 | 4E 80 04 21 */	bctrl
/* 813CA164 | 38 80 00 00 */	li r4, 0x0
/* 813CA168 | 4B F7 A2 AD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813CA16C | 38 60 00 10 */	li r3, 0x10
/* 813CA170 | 48 22 DF 2D */	bl __nw__FUl
/* 813CA174 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA178 | 41 82 00 2C */	beq .L_813CA1A4
/* 813CA17C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813CA180 | 7F C5 F3 78 */	mr r5, r30
/* 813CA184 | 41 82 00 08 */	beq .L_813CA18C
/* 813CA188 | 38 BE 00 54 */	addi r5, r30, 0x54
.L_813CA18C:
/* 813CA18C | 38 00 00 00 */	li r0, 0x0
/* 813CA190 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene15MemoryBaseEvent@ha
/* 813CA194 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813CA198 | 38 84 26 B4 */	addi r4, r4, __vt__Q33ipl5scene15MemoryBaseEvent@l
/* 813CA19C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813CA1A0 | 90 A3 00 0C */	stw r5, 0xc(r3)
.L_813CA1A4:
/* 813CA1A4 | 90 7E 00 A8 */	stw r3, 0xa8(r30)
/* 813CA1A8 | 38 60 00 34 */	li r3, 0x34
/* 813CA1AC | 48 22 DE F1 */	bl __nw__FUl
/* 813CA1B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA1B4 | 7C 7B 1B 78 */	mr r27, r3
/* 813CA1B8 | 41 82 00 8C */	beq .L_813CA244
/* 813CA1BC | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 813CA1C0 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813CA1C4 | 80 DE 00 A8 */	lwz r6, 0xa8(r30)
/* 813CA1C8 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813CA1CC | 38 00 00 00 */	li r0, 0x0
/* 813CA1D0 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813CA1D4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813CA1D8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813CA1DC | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813CA1E0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813CA1E4 | 41 82 00 1C */	beq .L_813CA200
/* 813CA1E8 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813CA1EC | 7C C3 33 78 */	mr r3, r6
/* 813CA1F0 | 7F 64 DB 78 */	mr r4, r27
/* 813CA1F4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CA1F8 | 7D 89 03 A6 */	mtctr r12
/* 813CA1FC | 4E 80 04 21 */	bctrl
.L_813CA200:
/* 813CA200 | 38 7B 00 08 */	addi r3, r27, 0x8
/* 813CA204 | 38 80 00 08 */	li r4, 0x8
/* 813CA208 | 48 14 7E 55 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CA20C | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813CA210 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 813CA214 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813CA218 | 38 80 00 08 */	li r4, 0x8
/* 813CA21C | 90 BB 00 00 */	stw r5, 0x0(r27)
/* 813CA220 | 93 9B 00 24 */	stw r28, 0x24(r27)
/* 813CA224 | 48 14 7E 39 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CA228 | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813CA22C | 38 60 00 00 */	li r3, 0x0
/* 813CA230 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813CA234 | 38 00 00 01 */	li r0, 0x1
/* 813CA238 | 90 9B 00 00 */	stw r4, 0x0(r27)
/* 813CA23C | 90 7B 00 2C */	stw r3, 0x2c(r27)
/* 813CA240 | 98 1B 00 30 */	stb r0, 0x30(r27)
.L_813CA244:
/* 813CA244 | 93 7E 00 60 */	stw r27, 0x60(r30)
/* 813CA248 | 7F 63 DB 78 */	mr r3, r27
/* 813CA24C | 80 9E 00 58 */	lwz r4, 0x58(r30)
/* 813CA250 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813CA254 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813CA258 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CA25C | 7D 89 03 A6 */	mtctr r12
/* 813CA260 | 4E 80 04 21 */	bctrl
/* 813CA264 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813CA268 | 38 80 00 00 */	li r4, 0x0
/* 813CA26C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CA270 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA274 | 7D 89 03 A6 */	mtctr r12
/* 813CA278 | 4E 80 04 21 */	bctrl
/* 813CA27C | 3B 7F 06 54 */	addi r27, r31, 0x654
/* 813CA280 | 3B 20 00 00 */	li r25, 0x0
/* 813CA284 | 3B A0 00 00 */	li r29, 0x0
.L_813CA288:
/* 813CA288 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CA28C | 38 A0 00 01 */	li r5, 0x1
/* 813CA290 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 813CA294 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CA298 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CA29C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CA2A0 | 7D 89 03 A6 */	mtctr r12
/* 813CA2A4 | 4E 80 04 21 */	bctrl
/* 813CA2A8 | 7C 64 1B 78 */	mr r4, r3
/* 813CA2AC | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813CA2B0 | 38 A0 00 01 */	li r5, 0x1
/* 813CA2B4 | 4B FA 0F 19 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813CA2B8 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813CA2BC | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813CA2C0 | 2C 19 00 04 */	cmpwi r25, 0x4
/* 813CA2C4 | 41 80 FF C4 */	blt .L_813CA288
/* 813CA2C8 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA2CC | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA2D0 | 38 80 00 08 */	li r4, 0x8
/* 813CA2D4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA2D8 | 7D 89 03 A6 */	mtctr r12
/* 813CA2DC | 4E 80 04 21 */	bctrl
/* 813CA2E0 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA2E4 | 7C 7C 1B 78 */	mr r28, r3
/* 813CA2E8 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA2EC | 38 80 00 07 */	li r4, 0x7
/* 813CA2F0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA2F4 | 7D 89 03 A6 */	mtctr r12
/* 813CA2F8 | 4E 80 04 21 */	bctrl
/* 813CA2FC | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA300 | 7C 7B 1B 78 */	mr r27, r3
/* 813CA304 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA308 | 38 80 00 06 */	li r4, 0x6
/* 813CA30C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA310 | 7D 89 03 A6 */	mtctr r12
/* 813CA314 | 4E 80 04 21 */	bctrl
/* 813CA318 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA31C | 3B BF 06 54 */	addi r29, r31, 0x654
/* 813CA320 | 7C 65 1B 78 */	mr r5, r3
/* 813CA324 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA328 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813CA32C | 7F 66 DB 78 */	mr r6, r27
/* 813CA330 | 7F 87 E3 78 */	mr r7, r28
/* 813CA334 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 813CA338 | 7D 89 03 A6 */	mtctr r12
/* 813CA33C | 4E 80 04 21 */	bctrl
/* 813CA340 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA344 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA348 | 38 80 00 0B */	li r4, 0xb
/* 813CA34C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA350 | 7D 89 03 A6 */	mtctr r12
/* 813CA354 | 4E 80 04 21 */	bctrl
/* 813CA358 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA35C | 7C 7C 1B 78 */	mr r28, r3
/* 813CA360 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA364 | 38 80 00 0A */	li r4, 0xa
/* 813CA368 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA36C | 7D 89 03 A6 */	mtctr r12
/* 813CA370 | 4E 80 04 21 */	bctrl
/* 813CA374 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA378 | 7C 7B 1B 78 */	mr r27, r3
/* 813CA37C | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA380 | 38 80 00 09 */	li r4, 0x9
/* 813CA384 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA388 | 7D 89 03 A6 */	mtctr r12
/* 813CA38C | 4E 80 04 21 */	bctrl
/* 813CA390 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA394 | 7C 65 1B 78 */	mr r5, r3
/* 813CA398 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA39C | 7F 66 DB 78 */	mr r6, r27
/* 813CA3A0 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813CA3A4 | 7F 87 E3 78 */	mr r7, r28
/* 813CA3A8 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813CA3AC | 7D 89 03 A6 */	mtctr r12
/* 813CA3B0 | 4E 80 04 21 */	bctrl
/* 813CA3B4 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA3B8 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA3BC | 38 80 00 0C */	li r4, 0xc
/* 813CA3C0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA3C4 | 7D 89 03 A6 */	mtctr r12
/* 813CA3C8 | 4E 80 04 21 */	bctrl
/* 813CA3CC | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA3D0 | 7C 7C 1B 78 */	mr r28, r3
/* 813CA3D4 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA3D8 | 38 80 00 12 */	li r4, 0x12
/* 813CA3DC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA3E0 | 7D 89 03 A6 */	mtctr r12
/* 813CA3E4 | 4E 80 04 21 */	bctrl
/* 813CA3E8 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA3EC | 7C 7B 1B 78 */	mr r27, r3
/* 813CA3F0 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA3F4 | 38 80 00 10 */	li r4, 0x10
/* 813CA3F8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA3FC | 7D 89 03 A6 */	mtctr r12
/* 813CA400 | 4E 80 04 21 */	bctrl
/* 813CA404 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA408 | 7C 65 1B 78 */	mr r5, r3
/* 813CA40C | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA410 | 7F 66 DB 78 */	mr r6, r27
/* 813CA414 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813CA418 | 7F 87 E3 78 */	mr r7, r28
/* 813CA41C | 80 9F 06 54 */	lwz r4, 0x654(r31)
/* 813CA420 | 7D 89 03 A6 */	mtctr r12
/* 813CA424 | 4E 80 04 21 */	bctrl
/* 813CA428 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA42C | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA430 | 38 80 00 0D */	li r4, 0xd
/* 813CA434 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA438 | 7D 89 03 A6 */	mtctr r12
/* 813CA43C | 4E 80 04 21 */	bctrl
/* 813CA440 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA444 | 7C 7C 1B 78 */	mr r28, r3
/* 813CA448 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA44C | 38 80 00 13 */	li r4, 0x13
/* 813CA450 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA454 | 7D 89 03 A6 */	mtctr r12
/* 813CA458 | 4E 80 04 21 */	bctrl
/* 813CA45C | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA460 | 7C 7B 1B 78 */	mr r27, r3
/* 813CA464 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA468 | 38 80 00 11 */	li r4, 0x11
/* 813CA46C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CA470 | 7D 89 03 A6 */	mtctr r12
/* 813CA474 | 4E 80 04 21 */	bctrl
/* 813CA478 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA47C | 7C 65 1B 78 */	mr r5, r3
/* 813CA480 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA484 | 7F 66 DB 78 */	mr r6, r27
/* 813CA488 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813CA48C | 7F 87 E3 78 */	mr r7, r28
/* 813CA490 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 813CA494 | 7D 89 03 A6 */	mtctr r12
/* 813CA498 | 4E 80 04 21 */	bctrl
/* 813CA49C | 3F 60 81 61 */	lis r27, lbl_81610440@ha
/* 813CA4A0 | 3B 20 00 00 */	li r25, 0x0
/* 813CA4A4 | 3B 7B 04 40 */	addi r27, r27, lbl_81610440@l
/* 813CA4A8 | 3B A0 00 00 */	li r29, 0x0
.L_813CA4AC:
/* 813CA4AC | 7C BB EA 14 */	add r5, r27, r29
/* 813CA4B0 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 813CA4B4 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 813CA4B8 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA4BC | 48 00 23 71 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CA4C0 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813CA4C4 | 3B BD 00 08 */	addi r29, r29, 0x8
/* 813CA4C8 | 2C 19 00 05 */	cmpwi r25, 0x5
/* 813CA4CC | 41 80 FF E0 */	blt .L_813CA4AC
/* 813CA4D0 | 38 60 00 98 */	li r3, 0x98
/* 813CA4D4 | 48 22 DB C9 */	bl __nw__FUl
/* 813CA4D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA4DC | 41 82 00 18 */	beq .L_813CA4F4
/* 813CA4E0 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813CA4E4 | 38 FF 06 C5 */	addi r7, r31, 0x6c5
/* 813CA4E8 | 80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 813CA4EC | 38 CD 8C 4C */	li r6, lbl_81696C8C@sda21
/* 813CA4F0 | 48 00 48 31 */	bl __ct__Q33ipl5scene8GCWindowFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813CA4F4:
/* 813CA4F4 | 90 7E 00 CC */	stw r3, 0xcc(r30)
/* 813CA4F8 | 38 80 00 00 */	li r4, 0x0
/* 813CA4FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CA500 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CA504 | 7D 89 03 A6 */	mtctr r12
/* 813CA508 | 4E 80 04 21 */	bctrl
/* 813CA50C | 3C 60 00 01 */	lis r3, 0x1
/* 813CA510 | 38 63 69 40 */	addi r3, r3, 0x6940
/* 813CA514 | 48 22 DB 89 */	bl __nw__FUl
/* 813CA518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA51C | 7C 7A 1B 78 */	mr r26, r3
/* 813CA520 | 41 82 00 70 */	beq .L_813CA590
/* 813CA524 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene17MemoryCardManager@ha
/* 813CA528 | 3F 83 00 01 */	addis r28, r3, 0x1
/* 813CA52C | 38 84 25 A0 */	addi r4, r4, __vt__Q33ipl5scene17MemoryCardManager@l
/* 813CA530 | 3B 23 0F E8 */	addi r25, r3, 0xfe8
/* 813CA534 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813CA538 | 3B 7C 69 30 */	addi r27, r28, 0x6930
/* 813CA53C | 3B A0 00 00 */	li r29, 0x0
.L_813CA540:
/* 813CA540 | B3 B9 01 00 */	sth r29, 0x100(r25)
/* 813CA544 | 7F 23 CB 78 */	mr r3, r25
/* 813CA548 | 38 80 00 00 */	li r4, 0x0
/* 813CA54C | 38 A0 00 40 */	li r5, 0x40
/* 813CA550 | 48 23 BF 19 */	bl fn_81606468
/* 813CA554 | 3B 39 01 5C */	addi r25, r25, 0x15c
/* 813CA558 | 7C 19 D8 40 */	cmplw r25, r27
/* 813CA55C | 41 80 FF E4 */	blt .L_813CA540
/* 813CA560 | 38 00 00 00 */	li r0, 0x0
/* 813CA564 | 38 60 00 00 */	li r3, 0x0
/* 813CA568 | 90 1C 69 30 */	stw r0, 0x6930(r28)
/* 813CA56C | 90 1C 69 34 */	stw r0, 0x6934(r28)
/* 813CA570 | 48 19 43 11 */	bl fn_8155E880
/* 813CA574 | 48 00 80 ED */	bl initCardThread__Q23ipl10memorycardFv
/* 813CA578 | 7F 43 D3 78 */	mr r3, r26
/* 813CA57C | 38 80 00 00 */	li r4, 0x0
/* 813CA580 | 48 00 2C C5 */	bl sort_file_array__Q33ipl5scene17MemoryCardManagerFUc
/* 813CA584 | 7F 43 D3 78 */	mr r3, r26
/* 813CA588 | 38 80 00 01 */	li r4, 0x1
/* 813CA58C | 48 00 2C B9 */	bl sort_file_array__Q33ipl5scene17MemoryCardManagerFUc
.L_813CA590:
/* 813CA590 | 80 9E 00 CC */	lwz r4, 0xcc(r30)
/* 813CA594 | 93 5E 00 A4 */	stw r26, 0xa4(r30)
/* 813CA598 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CA59C | 41 82 00 08 */	beq .L_813CA5A4
/* 813CA5A0 | 38 84 00 34 */	addi r4, r4, 0x34
.L_813CA5A4:
/* 813CA5A4 | 80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 813CA5A8 | 3B 7F 02 1C */	addi r27, r31, 0x21c
/* 813CA5AC | C3 E2 86 6C */	lfs f31, lbl_81694A6C@sda21(r0)
/* 813CA5B0 | 3B 00 00 00 */	li r24, 0x0
/* 813CA5B4 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813CA5B8 | 3B A0 00 00 */	li r29, 0x0
/* 813CA5BC | 90 83 69 3C */	stw r4, 0x693c(r3)
/* 813CA5C0 | 80 1E 00 A4 */	lwz r0, 0xa4(r30)
/* 813CA5C4 | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813CA5C8 | 90 03 00 40 */	stw r0, 0x40(r3)
.L_813CA5CC:
/* 813CA5CC | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CA5D0 | 38 A0 00 01 */	li r5, 0x1
/* 813CA5D4 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 813CA5D8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CA5DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CA5E0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CA5E4 | 7D 89 03 A6 */	mtctr r12
/* 813CA5E8 | 4E 80 04 21 */	bctrl
/* 813CA5EC | C0 22 86 68 */	lfs f1, lbl_81694A68@sda21(r0)
/* 813CA5F0 | 7C 7C 1B 78 */	mr r28, r3
/* 813CA5F4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813CA5F8 | FC 40 08 90 */	fmr f2, f1
/* 813CA5FC | FC 60 08 90 */	fmr f3, f1
/* 813CA600 | 4B FA A2 85 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813CA604 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813CA608 | 38 7C 00 84 */	addi r3, r28, 0x84
/* 813CA60C | 7C 85 23 78 */	mr r5, r4
/* 813CA610 | 48 17 6E AD */	bl fn_815414BC
/* 813CA614 | 38 60 00 48 */	li r3, 0x48
/* 813CA618 | 48 22 DA 85 */	bl __nw__FUl
/* 813CA61C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA620 | 7C 79 1B 78 */	mr r25, r3
/* 813CA624 | 41 82 00 34 */	beq .L_813CA658
/* 813CA628 | 83 5E 00 24 */	lwz r26, 0x24(r30)
/* 813CA62C | 38 61 00 14 */	addi r3, r1, 0x14
/* 813CA630 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813CA634 | 4B FC CF 71 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813CA638 | 80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 813CA63C | 7C 68 1B 78 */	mr r8, r3
/* 813CA640 | 7F 23 CB 78 */	mr r3, r25
/* 813CA644 | 7F 44 D3 78 */	mr r4, r26
/* 813CA648 | 38 FF 06 DB */	addi r7, r31, 0x6db
/* 813CA64C | 38 CD 8C 4C */	li r6, lbl_81696C8C@sda21
/* 813CA650 | 48 00 3E F9 */	bl __ct__Q33ipl5scene10GCSaveDataFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcQ33ipl4math4VEC3
/* 813CA654 | 7C 79 1B 78 */	mr r25, r3
.L_813CA658:
/* 813CA658 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 813CA65C | 7F 23 CB 78 */	mr r3, r25
/* 813CA660 | 38 9F 06 F2 */	addi r4, r31, 0x6f2
/* 813CA664 | 38 A0 00 00 */	li r5, 0x0
/* 813CA668 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CA66C | 7D 89 03 A6 */	mtctr r12
/* 813CA670 | 4E 80 04 21 */	bctrl
/* 813CA674 | 7F 24 CB 78 */	mr r4, r25
/* 813CA678 | 38 7E 00 AC */	addi r3, r30, 0xac
/* 813CA67C | 48 14 79 F9 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813CA680 | 2C 18 00 0F */	cmpwi r24, 0xf
/* 813CA684 | 41 80 00 7C */	blt .L_813CA700
/* 813CA688 | 2C 18 00 1E */	cmpwi r24, 0x1e
/* 813CA68C | 40 80 00 74 */	bge .L_813CA700
/* 813CA690 | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 813CA694 | 38 60 00 3C */	li r3, 0x3c
/* 813CA698 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 813CA69C | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 813CA6A0 | 48 22 D9 FD */	bl __nw__FUl
/* 813CA6A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA6A8 | 7C 7A 1B 78 */	mr r26, r3
/* 813CA6AC | 41 82 00 3C */	beq .L_813CA6E8
/* 813CA6B0 | 83 9E 00 24 */	lwz r28, 0x24(r30)
/* 813CA6B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813CA6B8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813CA6BC | 4B FC CE E9 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813CA6C0 | 80 BE 00 B8 */	lwz r5, 0xb8(r30)
/* 813CA6C4 | 7C 68 1B 78 */	mr r8, r3
/* 813CA6C8 | C0 22 86 70 */	lfs f1, lbl_81694A70@sda21(r0)
/* 813CA6CC | 7F 43 D3 78 */	mr r3, r26
/* 813CA6D0 | C0 42 86 74 */	lfs f2, lbl_81694A74@sda21(r0)
/* 813CA6D4 | 7F 84 E3 78 */	mr r4, r28
/* 813CA6D8 | 38 FF 06 FC */	addi r7, r31, 0x6fc
/* 813CA6DC | 38 CD 8C 4C */	li r6, lbl_81696C8C@sda21
/* 813CA6E0 | 48 00 6D 2D */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
/* 813CA6E4 | 7C 7A 1B 78 */	mr r26, r3
.L_813CA6E8:
/* 813CA6E8 | 7F 44 D3 78 */	mr r4, r26
/* 813CA6EC | 38 7E 00 BC */	addi r3, r30, 0xbc
/* 813CA6F0 | 48 14 79 85 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813CA6F4 | 7F 23 CB 78 */	mr r3, r25
/* 813CA6F8 | 7F 44 D3 78 */	mr r4, r26
/* 813CA6FC | 48 00 45 DD */	bl setBalloon__Q33ipl5scene10GCSaveDataFPQ33ipl5scene11TextBalloon
.L_813CA700:
/* 813CA700 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 813CA704 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813CA708 | 2C 18 00 2D */	cmpwi r24, 0x2d
/* 813CA70C | 41 80 FE C0 */	blt .L_813CA5CC
/* 813CA710 | 38 00 00 02 */	li r0, 0x2
/* 813CA714 | 38 60 00 00 */	li r3, 0x0
/* 813CA718 | 38 A0 00 00 */	li r5, 0x0
/* 813CA71C | 7C 09 03 A6 */	mtctr r0
.L_813CA720:
/* 813CA720 | 7C 9E 1A 14 */	add r4, r30, r3
/* 813CA724 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813CA728 | 90 A4 00 94 */	stw r5, 0x94(r4)
/* 813CA72C | 42 00 FF F4 */	bdnz .L_813CA720
/* 813CA730 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA734 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA738 | 38 9F 07 15 */	addi r4, r31, 0x715
/* 813CA73C | 38 A0 00 00 */	li r5, 0x0
/* 813CA740 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CA744 | 7D 89 03 A6 */	mtctr r12
/* 813CA748 | 4E 80 04 21 */	bctrl
/* 813CA74C | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA750 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA754 | 38 9F 07 1F */	addi r4, r31, 0x71f
/* 813CA758 | 38 A0 00 00 */	li r5, 0x0
/* 813CA75C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CA760 | 7D 89 03 A6 */	mtctr r12
/* 813CA764 | 4E 80 04 21 */	bctrl
/* 813CA768 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 813CA76C | 39 61 00 50 */	addi r11, r1, 0x50
/* 813CA770 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 813CA774 | 48 22 ED 8D */	bl _restgpr_24
/* 813CA778 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813CA77C | 7C 08 03 A6 */	mtlr r0
/* 813CA780 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813CA784 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene10MemoryCardFv

# .text:0x9BC | 0x813CA788 | size: 0x1F8
# ipl::scene::MemoryCard::calc()
.fn calc__Q33ipl5scene10MemoryCardFv, global
/* 813CA788 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CA78C | 7C 08 02 A6 */	mflr r0
/* 813CA790 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CA794 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CA798 | 48 22 ED 31 */	bl _savegpr_29
/* 813CA79C | 7C 7D 1B 78 */	mr r29, r3
/* 813CA7A0 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CA7A4 | 48 00 29 09 */	bl calc__Q33ipl5scene17MemoryCardManagerFv
/* 813CA7A8 | 81 9D 00 54 */	lwz r12, 0x54(r29)
/* 813CA7AC | 38 7D 00 54 */	addi r3, r29, 0x54
/* 813CA7B0 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813CA7B4 | 7D 89 03 A6 */	mtctr r12
/* 813CA7B8 | 4E 80 04 21 */	bctrl
/* 813CA7BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA7C0 | 41 82 01 A8 */	beq .L_813CA968
/* 813CA7C4 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813CA7C8 | 4B F9 FF 3D */	bl calc__Q33ipl6layout6ObjectFv
/* 813CA7CC | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 813CA7D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CA7D4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813CA7D8 | 7D 89 03 A6 */	mtctr r12
/* 813CA7DC | 4E 80 04 21 */	bctrl
/* 813CA7E0 | 38 00 00 00 */	li r0, 0x0
/* 813CA7E4 | AB FD 00 9C */	lha r31, 0x9c(r29)
/* 813CA7E8 | B0 1D 00 9E */	sth r0, 0x9e(r29)
/* 813CA7EC | 3B C0 00 00 */	li r30, 0x0
/* 813CA7F0 | 48 00 00 48 */	b .L_813CA838
.L_813CA7F4:
/* 813CA7F4 | 80 7D 00 A4 */	lwz r3, 0xa4(r29)
/* 813CA7F8 | 7F E5 07 34 */	extsh r5, r31
/* 813CA7FC | 88 9D 00 90 */	lbz r4, 0x90(r29)
/* 813CA800 | 48 00 30 F1 */	bl isIconValidate__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CA804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA808 | 40 82 00 0C */	bne .L_813CA814
/* 813CA80C | 7F E0 07 35 */	extsh. r0, r31
/* 813CA810 | 40 80 00 10 */	bge .L_813CA820
.L_813CA814:
/* 813CA814 | A8 7D 00 9E */	lha r3, 0x9e(r29)
/* 813CA818 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813CA81C | B0 1D 00 9E */	sth r0, 0x9e(r29)
.L_813CA820:
/* 813CA820 | 88 1D 00 90 */	lbz r0, 0x90(r29)
/* 813CA824 | 7F C3 F3 78 */	mr r3, r30
/* 813CA828 | 98 1E 00 3C */	stb r0, 0x3c(r30)
/* 813CA82C | B3 FE 00 3E */	sth r31, 0x3e(r30)
/* 813CA830 | 48 00 3F 91 */	bl calc__Q33ipl5scene10GCSaveDataFv
/* 813CA834 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813CA838:
/* 813CA838 | 7F C4 F3 78 */	mr r4, r30
/* 813CA83C | 38 7D 00 AC */	addi r3, r29, 0xac
/* 813CA840 | 48 14 7A 9D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CA844 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA848 | 7C 7E 1B 78 */	mr r30, r3
/* 813CA84C | 40 82 FF A8 */	bne .L_813CA7F4
/* 813CA850 | 3B C0 00 00 */	li r30, 0x0
/* 813CA854 | 48 00 00 0C */	b .L_813CA860
.L_813CA858:
/* 813CA858 | 7F C3 F3 78 */	mr r3, r30
/* 813CA85C | 48 00 24 E1 */	bl calc__Q43ipl5scene10MemoryBase9AnmButtonFv
.L_813CA860:
/* 813CA860 | 7F C4 F3 78 */	mr r4, r30
/* 813CA864 | 38 7D 00 7C */	addi r3, r29, 0x7c
/* 813CA868 | 48 14 7A 75 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CA86C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA870 | 7C 7E 1B 78 */	mr r30, r3
/* 813CA874 | 40 82 FF E4 */	bne .L_813CA858
/* 813CA878 | 3B C0 00 00 */	li r30, 0x0
/* 813CA87C | 48 00 00 0C */	b .L_813CA888
.L_813CA880:
/* 813CA880 | 7F C3 F3 78 */	mr r3, r30
/* 813CA884 | 48 00 6D 29 */	bl calc__Q33ipl5scene11TextBalloonFv
.L_813CA888:
/* 813CA888 | 7F C4 F3 78 */	mr r4, r30
/* 813CA88C | 38 7D 00 BC */	addi r3, r29, 0xbc
/* 813CA890 | 48 14 7A 4D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CA894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA898 | 7C 7E 1B 78 */	mr r30, r3
/* 813CA89C | 40 82 FF E4 */	bne .L_813CA880
/* 813CA8A0 | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 813CA8A4 | 28 00 00 0C */	cmplwi r0, 0xc
/* 813CA8A8 | 41 81 00 C0 */	bgt .L_813CA968
/* 813CA8AC | 3C 60 81 65 */	lis r3, jumptable_8165245C@ha
/* 813CA8B0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813CA8B4 | 38 63 24 5C */	addi r3, r3, jumptable_8165245C@l
/* 813CA8B8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813CA8BC | 7C 69 03 A6 */	mtctr r3
/* 813CA8C0 | 4E 80 04 20 */	bctr
.L_813CA8C4:
/* 813CA8C4 | 7F A3 EB 78 */	mr r3, r29
/* 813CA8C8 | 48 00 00 B9 */	bl on_fadein1st__Q33ipl5scene10MemoryCardFv
/* 813CA8CC | 48 00 00 9C */	b .L_813CA968
.L_813CA8D0:
/* 813CA8D0 | 7F A3 EB 78 */	mr r3, r29
/* 813CA8D4 | 48 00 01 BD */	bl on_fadein2nd__Q33ipl5scene10MemoryCardFv
/* 813CA8D8 | 48 00 00 90 */	b .L_813CA968
.L_813CA8DC:
/* 813CA8DC | 7F A3 EB 78 */	mr r3, r29
/* 813CA8E0 | 48 00 02 41 */	bl on_normal__Q33ipl5scene10MemoryCardFv
/* 813CA8E4 | 48 00 00 84 */	b .L_813CA968
.L_813CA8E8:
/* 813CA8E8 | 7F A3 EB 78 */	mr r3, r29
/* 813CA8EC | 48 00 03 B5 */	bl on_scroll_r__Q33ipl5scene10MemoryCardFv
/* 813CA8F0 | 48 00 00 78 */	b .L_813CA968
.L_813CA8F4:
/* 813CA8F4 | 7F A3 EB 78 */	mr r3, r29
/* 813CA8F8 | 48 00 04 35 */	bl on_scroll_l__Q33ipl5scene10MemoryCardFv
/* 813CA8FC | 48 00 00 6C */	b .L_813CA968
.L_813CA900:
/* 813CA900 | 7F A3 EB 78 */	mr r3, r29
/* 813CA904 | 48 00 04 B5 */	bl on_change_tag1st__Q33ipl5scene10MemoryCardFv
/* 813CA908 | 48 00 00 60 */	b .L_813CA968
.L_813CA90C:
/* 813CA90C | 7F A3 EB 78 */	mr r3, r29
/* 813CA910 | 48 00 05 75 */	bl on_change_tag2nd__Q33ipl5scene10MemoryCardFv
/* 813CA914 | 48 00 00 54 */	b .L_813CA968
.L_813CA918:
/* 813CA918 | 7F A3 EB 78 */	mr r3, r29
/* 813CA91C | 48 00 05 E5 */	bl on_fadeout1st__Q33ipl5scene10MemoryCardFv
/* 813CA920 | 48 00 00 48 */	b .L_813CA968
.L_813CA924:
/* 813CA924 | 7F A3 EB 78 */	mr r3, r29
/* 813CA928 | 48 00 06 75 */	bl on_fadeout2nd__Q33ipl5scene10MemoryCardFv
/* 813CA92C | 48 00 00 3C */	b .L_813CA968
.L_813CA930:
/* 813CA930 | 80 7D 00 CC */	lwz r3, 0xcc(r29)
/* 813CA934 | 48 00 4B 4D */	bl calc__Q33ipl5scene8GCWindowFv
/* 813CA938 | 88 9D 00 90 */	lbz r4, 0x90(r29)
/* 813CA93C | 7F A3 EB 78 */	mr r3, r29
/* 813CA940 | 48 00 0D BD */	bl show_capacity__Q33ipl5scene10MemoryCardFUc
/* 813CA944 | 48 00 00 24 */	b .L_813CA968
.L_813CA948:
/* 813CA948 | 7F A3 EB 78 */	mr r3, r29
/* 813CA94C | 48 00 06 D5 */	bl on_error__Q33ipl5scene10MemoryCardFv
/* 813CA950 | 48 00 00 18 */	b .L_813CA968
.L_813CA954:
/* 813CA954 | 7F A3 EB 78 */	mr r3, r29
/* 813CA958 | 48 00 07 21 */	bl on_insert_card__Q33ipl5scene10MemoryCardFv
/* 813CA95C | 48 00 00 0C */	b .L_813CA968
.L_813CA960:
/* 813CA960 | 7F A3 EB 78 */	mr r3, r29
/* 813CA964 | 48 00 07 75 */	bl on_detach_card__Q33ipl5scene10MemoryCardFv
.L_813CA968:
/* 813CA968 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CA96C | 48 22 EB A9 */	bl _restgpr_29
/* 813CA970 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CA974 | 7C 08 03 A6 */	mtlr r0
/* 813CA978 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CA97C | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene10MemoryCardFv

# .text:0xBB4 | 0x813CA980 | size: 0x110
# ipl::scene::MemoryCard::on_fadein1st()
.fn on_fadein1st__Q33ipl5scene10MemoryCardFv, global
/* 813CA980 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CA984 | 7C 08 02 A6 */	mflr r0
/* 813CA988 | 38 80 00 01 */	li r4, 0x1
/* 813CA98C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CA990 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CA994 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CA998 | 7C 7E 1B 78 */	mr r30, r3
/* 813CA99C | 81 83 00 54 */	lwz r12, 0x54(r3)
/* 813CA9A0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CA9A4 | 7D 89 03 A6 */	mtctr r12
/* 813CA9A8 | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CA9AC | 4E 80 04 21 */	bctrl
/* 813CA9B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CA9B4 | 40 82 00 C4 */	bne .L_813CAA78
/* 813CA9B8 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CA9BC | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CA9C0 | 38 80 00 05 */	li r4, 0x5
/* 813CA9C4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CA9C8 | 7D 89 03 A6 */	mtctr r12
/* 813CA9CC | 4E 80 04 21 */	bctrl
/* 813CA9D0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CA9D4 | 38 8D 8C 50 */	li r4, lbl_81696C90@sda21
/* 813CA9D8 | 38 A0 00 01 */	li r5, 0x1
/* 813CA9DC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CA9E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CA9E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CA9E8 | 7D 89 03 A6 */	mtctr r12
/* 813CA9EC | 4E 80 04 21 */	bctrl
/* 813CA9F0 | 38 80 00 01 */	li r4, 0x1
/* 813CA9F4 | 4B F7 9A 21 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813CA9F8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CA9FC | 38 8D 8C 57 */	li r4, lbl_81696C97@sda21
/* 813CAA00 | 38 A0 00 01 */	li r5, 0x1
/* 813CAA04 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CAA08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CAA0C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CAA10 | 7D 89 03 A6 */	mtctr r12
/* 813CAA14 | 4E 80 04 21 */	bctrl
/* 813CAA18 | 38 80 00 01 */	li r4, 0x1
/* 813CAA1C | 4B F7 99 F9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813CAA20 | 80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 813CAA24 | 88 9E 00 90 */	lbz r4, 0x90(r30)
/* 813CAA28 | 48 00 26 D1 */	bl isSlotReady__Q33ipl5scene17MemoryCardManagerFUc
/* 813CAA2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAA30 | 41 82 00 30 */	beq .L_813CAA60
/* 813CAA34 | 88 1E 00 90 */	lbz r0, 0x90(r30)
/* 813CAA38 | 3B E0 00 01 */	li r31, 0x1
/* 813CAA3C | 7F C3 F3 78 */	mr r3, r30
/* 813CAA40 | 54 00 10 3A */	slwi r0, r0, 2
/* 813CAA44 | 7C 9E 02 14 */	add r4, r30, r0
/* 813CAA48 | 93 E4 00 94 */	stw r31, 0x94(r4)
/* 813CAA4C | 48 00 07 3D */	bl start_savedata_fadein__Q33ipl5scene10MemoryCardFv
/* 813CAA50 | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 813CAA54 | 90 1E 00 8C */	stw r0, 0x8c(r30)
/* 813CAA58 | 93 FE 00 88 */	stw r31, 0x88(r30)
/* 813CAA5C | 48 00 00 1C */	b .L_813CAA78
.L_813CAA60:
/* 813CAA60 | 7F C3 F3 78 */	mr r3, r30
/* 813CAA64 | 48 00 08 35 */	bl start_errormessage_fadein__Q33ipl5scene10MemoryCardFv
/* 813CAA68 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813CAA6C | 38 00 00 0A */	li r0, 0xa
/* 813CAA70 | 90 7E 00 8C */	stw r3, 0x8c(r30)
/* 813CAA74 | 90 1E 00 88 */	stw r0, 0x88(r30)
.L_813CAA78:
/* 813CAA78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CAA7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CAA80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CAA84 | 7C 08 03 A6 */	mtlr r0
/* 813CAA88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CAA8C | 4E 80 00 20 */	blr
.endfn on_fadein1st__Q33ipl5scene10MemoryCardFv

# .text:0xCC4 | 0x813CAA90 | size: 0x90
# ipl::scene::MemoryCard::on_fadein2nd()
.fn on_fadein2nd__Q33ipl5scene10MemoryCardFv, global
/* 813CAA90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CAA94 | 7C 08 02 A6 */	mflr r0
/* 813CAA98 | 38 80 00 00 */	li r4, 0x0
/* 813CAA9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CAAA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CAAA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CAAA8 | 7C 7E 1B 78 */	mr r30, r3
/* 813CAAAC | 38 63 00 AC */	addi r3, r3, 0xac
/* 813CAAB0 | 48 14 78 2D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CAAB4 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CAAB8 | 7C 7F 1B 78 */	mr r31, r3
/* 813CAABC | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CAAC0 | 38 80 00 05 */	li r4, 0x5
/* 813CAAC4 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CAAC8 | 7D 89 03 A6 */	mtctr r12
/* 813CAACC | 4E 80 04 21 */	bctrl
/* 813CAAD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAAD4 | 40 82 00 34 */	bne .L_813CAB08
/* 813CAAD8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CAADC | 7F E3 FB 78 */	mr r3, r31
/* 813CAAE0 | 38 80 00 00 */	li r4, 0x0
/* 813CAAE4 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CAAE8 | 7D 89 03 A6 */	mtctr r12
/* 813CAAEC | 4E 80 04 21 */	bctrl
/* 813CAAF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAAF4 | 40 82 00 14 */	bne .L_813CAB08
/* 813CAAF8 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813CAAFC | 38 00 00 02 */	li r0, 0x2
/* 813CAB00 | 90 7E 00 8C */	stw r3, 0x8c(r30)
/* 813CAB04 | 90 1E 00 88 */	stw r0, 0x88(r30)
.L_813CAB08:
/* 813CAB08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CAB0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CAB10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CAB14 | 7C 08 03 A6 */	mtlr r0
/* 813CAB18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CAB1C | 4E 80 00 20 */	blr
.endfn on_fadein2nd__Q33ipl5scene10MemoryCardFv

# .text:0xD54 | 0x813CAB20 | size: 0x180
# ipl::scene::MemoryCard::on_normal()
.fn on_normal__Q33ipl5scene10MemoryCardFv, global
/* 813CAB20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CAB24 | 7C 08 02 A6 */	mflr r0
/* 813CAB28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CAB2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CAB30 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CAB34 | 7C 7E 1B 78 */	mr r30, r3
/* 813CAB38 | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CAB3C | 48 00 1F F1 */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813CAB40 | 48 03 CC 29 */	bl update__Q33ipl5scene13SettingButtonFv
/* 813CAB44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAB48 | 41 82 00 3C */	beq .L_813CAB84
/* 813CAB4C | 80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 813CAB50 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813CAB54 | 40 82 00 1C */	bne .L_813CAB70
/* 813CAB58 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CAB5C | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CAB60 | 38 80 00 1A */	li r4, 0x1a
/* 813CAB64 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CAB68 | 7D 89 03 A6 */	mtctr r12
/* 813CAB6C | 4E 80 04 21 */	bctrl
.L_813CAB70:
/* 813CAB70 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813CAB74 | 38 00 00 07 */	li r0, 0x7
/* 813CAB78 | 90 7E 00 8C */	stw r3, 0x8c(r30)
/* 813CAB7C | 90 1E 00 88 */	stw r0, 0x88(r30)
/* 813CAB80 | 48 00 01 08 */	b .L_813CAC88
.L_813CAB84:
/* 813CAB84 | 7F C3 F3 78 */	mr r3, r30
/* 813CAB88 | 48 00 09 D5 */	bl show_arw__Q33ipl5scene10MemoryCardFv
/* 813CAB8C | 88 9E 00 90 */	lbz r4, 0x90(r30)
/* 813CAB90 | 7F C3 F3 78 */	mr r3, r30
/* 813CAB94 | 48 00 0B 69 */	bl show_capacity__Q33ipl5scene10MemoryCardFUc
/* 813CAB98 | 7F C3 F3 78 */	mr r3, r30
/* 813CAB9C | 48 00 07 DD */	bl update_slot__Q33ipl5scene10MemoryCardFv
/* 813CABA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CABA4 | 40 82 00 E4 */	bne .L_813CAC88
/* 813CABA8 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813CABAC | 4B FA 03 E1 */	bl update__Q33ipl3gui11PaneManagerFv
/* 813CABB0 | 3B E0 00 00 */	li r31, 0x0
/* 813CABB4 | 48 00 00 0C */	b .L_813CABC0
.L_813CABB8:
/* 813CABB8 | 7F E3 FB 78 */	mr r3, r31
/* 813CABBC | 48 00 3D A5 */	bl update__Q33ipl5scene10GCSaveDataFv
.L_813CABC0:
/* 813CABC0 | 7F E4 FB 78 */	mr r4, r31
/* 813CABC4 | 38 7E 00 AC */	addi r3, r30, 0xac
/* 813CABC8 | 48 14 77 15 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CABCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CABD0 | 7C 7F 1B 78 */	mr r31, r3
/* 813CABD4 | 40 82 FF E4 */	bne .L_813CABB8
/* 813CABD8 | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813CABDC | 48 00 48 A5 */	bl calc__Q33ipl5scene8GCWindowFv
/* 813CABE0 | A8 1E 00 9E */	lha r0, 0x9e(r30)
/* 813CABE4 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813CABE8 | 41 81 00 38 */	bgt .L_813CAC20
/* 813CABEC | A8 1E 00 9C */	lha r0, 0x9c(r30)
/* 813CABF0 | 38 60 00 00 */	li r3, 0x0
/* 813CABF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CABF8 | 41 80 00 14 */	blt .L_813CAC0C
/* 813CABFC | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 813CAC00 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CAC04 | 40 82 00 08 */	bne .L_813CAC0C
/* 813CAC08 | 38 60 00 01 */	li r3, 0x1
.L_813CAC0C:
/* 813CAC0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAC10 | 41 82 00 10 */	beq .L_813CAC20
/* 813CAC14 | 7F C3 F3 78 */	mr r3, r30
/* 813CAC18 | 48 00 0E 79 */	bl start_scroll_l__Q33ipl5scene10MemoryCardFv
/* 813CAC1C | 48 00 00 6C */	b .L_813CAC88
.L_813CAC20:
/* 813CAC20 | 4B F6 AD 99 */	bl getYoungController__Q23ipl6SystemFv
/* 813CAC24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAC28 | 7C 7F 1B 78 */	mr r31, r3
/* 813CAC2C | 41 82 00 5C */	beq .L_813CAC88
/* 813CAC30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CAC34 | 3C 80 30 00 */	lis r4, 0x3000
/* 813CAC38 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 813CAC3C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813CAC40 | 7D 89 03 A6 */	mtctr r12
/* 813CAC44 | 4E 80 04 21 */	bctrl
/* 813CAC48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAC4C | 41 82 00 10 */	beq .L_813CAC5C
/* 813CAC50 | 7F C3 F3 78 */	mr r3, r30
/* 813CAC54 | 48 00 0E 3D */	bl start_scroll_l__Q33ipl5scene10MemoryCardFv
/* 813CAC58 | 48 00 00 30 */	b .L_813CAC88
.L_813CAC5C:
/* 813CAC5C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CAC60 | 3C 80 06 00 */	lis r4, 0x600
/* 813CAC64 | 7F E3 FB 78 */	mr r3, r31
/* 813CAC68 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813CAC6C | 38 84 00 10 */	addi r4, r4, 0x10
/* 813CAC70 | 7D 89 03 A6 */	mtctr r12
/* 813CAC74 | 4E 80 04 21 */	bctrl
/* 813CAC78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAC7C | 41 82 00 0C */	beq .L_813CAC88
/* 813CAC80 | 7F C3 F3 78 */	mr r3, r30
/* 813CAC84 | 48 00 0D 5D */	bl start_scroll_r__Q33ipl5scene10MemoryCardFv
.L_813CAC88:
/* 813CAC88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CAC8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CAC90 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CAC94 | 7C 08 03 A6 */	mtlr r0
/* 813CAC98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CAC9C | 4E 80 00 20 */	blr
.endfn on_normal__Q33ipl5scene10MemoryCardFv

# .text:0xED4 | 0x813CACA0 | size: 0x8C
# ipl::scene::MemoryCard::on_scroll_r()
.fn on_scroll_r__Q33ipl5scene10MemoryCardFv, global
/* 813CACA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CACA4 | 7C 08 02 A6 */	mflr r0
/* 813CACA8 | 38 80 00 0C */	li r4, 0xc
/* 813CACAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CACB0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CACB4 | 7C 7F 1B 78 */	mr r31, r3
/* 813CACB8 | 81 83 00 54 */	lwz r12, 0x54(r3)
/* 813CACBC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CACC0 | 7D 89 03 A6 */	mtctr r12
/* 813CACC4 | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CACC8 | 4E 80 04 21 */	bctrl
/* 813CACCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CACD0 | 40 82 00 40 */	bne .L_813CAD10
/* 813CACD4 | 81 9F 00 54 */	lwz r12, 0x54(r31)
/* 813CACD8 | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CACDC | 38 80 00 0C */	li r4, 0xc
/* 813CACE0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CACE4 | 7D 89 03 A6 */	mtctr r12
/* 813CACE8 | 4E 80 04 21 */	bctrl
/* 813CACEC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CACF0 | 4B F9 EF 35 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813CACF4 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813CACF8 | 4B F9 FA 0D */	bl calc__Q33ipl6layout6ObjectFv
/* 813CACFC | A8 7F 00 9C */	lha r3, 0x9c(r31)
/* 813CAD00 | 38 00 00 02 */	li r0, 0x2
/* 813CAD04 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813CAD08 | 38 03 00 0F */	addi r0, r3, 0xf
/* 813CAD0C | B0 1F 00 9C */	sth r0, 0x9c(r31)
.L_813CAD10:
/* 813CAD10 | 7F E3 FB 78 */	mr r3, r31
/* 813CAD14 | 48 00 0C 15 */	bl scroll_common__Q33ipl5scene10MemoryCardFv
/* 813CAD18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CAD1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CAD20 | 7C 08 03 A6 */	mtlr r0
/* 813CAD24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CAD28 | 4E 80 00 20 */	blr
.endfn on_scroll_r__Q33ipl5scene10MemoryCardFv

# .text:0xF60 | 0x813CAD2C | size: 0x8C
# ipl::scene::MemoryCard::on_scroll_l()
.fn on_scroll_l__Q33ipl5scene10MemoryCardFv, global
/* 813CAD2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CAD30 | 7C 08 02 A6 */	mflr r0
/* 813CAD34 | 38 80 00 0D */	li r4, 0xd
/* 813CAD38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CAD3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CAD40 | 7C 7F 1B 78 */	mr r31, r3
/* 813CAD44 | 81 83 00 54 */	lwz r12, 0x54(r3)
/* 813CAD48 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CAD4C | 7D 89 03 A6 */	mtctr r12
/* 813CAD50 | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CAD54 | 4E 80 04 21 */	bctrl
/* 813CAD58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAD5C | 40 82 00 40 */	bne .L_813CAD9C
/* 813CAD60 | 81 9F 00 54 */	lwz r12, 0x54(r31)
/* 813CAD64 | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CAD68 | 38 80 00 0C */	li r4, 0xc
/* 813CAD6C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CAD70 | 7D 89 03 A6 */	mtctr r12
/* 813CAD74 | 4E 80 04 21 */	bctrl
/* 813CAD78 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CAD7C | 4B F9 EE A9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813CAD80 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813CAD84 | 4B F9 F9 81 */	bl calc__Q33ipl6layout6ObjectFv
/* 813CAD88 | A8 7F 00 9C */	lha r3, 0x9c(r31)
/* 813CAD8C | 38 00 00 02 */	li r0, 0x2
/* 813CAD90 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813CAD94 | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813CAD98 | B0 1F 00 9C */	sth r0, 0x9c(r31)
.L_813CAD9C:
/* 813CAD9C | 7F E3 FB 78 */	mr r3, r31
/* 813CADA0 | 48 00 0B 89 */	bl scroll_common__Q33ipl5scene10MemoryCardFv
/* 813CADA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CADA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CADAC | 7C 08 03 A6 */	mtlr r0
/* 813CADB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CADB4 | 4E 80 00 20 */	blr
.endfn on_scroll_l__Q33ipl5scene10MemoryCardFv

# .text:0xFEC | 0x813CADB8 | size: 0xCC
# ipl::scene::MemoryCard::on_change_tag1st()
.fn on_change_tag1st__Q33ipl5scene10MemoryCardFv, global
/* 813CADB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CADBC | 7C 08 02 A6 */	mflr r0
/* 813CADC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CADC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CADC8 | 48 22 E7 01 */	bl _savegpr_29
/* 813CADCC | 7C 7D 1B 78 */	mr r29, r3
/* 813CADD0 | 38 80 00 00 */	li r4, 0x0
/* 813CADD4 | 38 63 00 AC */	addi r3, r3, 0xac
/* 813CADD8 | 48 14 75 05 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CADDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CADE0 | 38 80 00 01 */	li r4, 0x1
/* 813CADE4 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CADE8 | 7D 89 03 A6 */	mtctr r12
/* 813CADEC | 4E 80 04 21 */	bctrl
/* 813CADF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CADF4 | 40 82 00 78 */	bne .L_813CAE6C
/* 813CADF8 | 3B C0 00 00 */	li r30, 0x0
/* 813CADFC | 3F E0 81 65 */	lis r31, lbl_81652422@ha
/* 813CAE00 | 48 00 00 20 */	b .L_813CAE20
.L_813CAE04:
/* 813CAE04 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CAE08 | 7F C3 F3 78 */	mr r3, r30
/* 813CAE0C | 38 9F 24 22 */	addi r4, r31, lbl_81652422@l
/* 813CAE10 | 38 A0 00 00 */	li r5, 0x0
/* 813CAE14 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CAE18 | 7D 89 03 A6 */	mtctr r12
/* 813CAE1C | 4E 80 04 21 */	bctrl
.L_813CAE20:
/* 813CAE20 | 7F C4 F3 78 */	mr r4, r30
/* 813CAE24 | 38 7D 00 AC */	addi r3, r29, 0xac
/* 813CAE28 | 48 14 74 B5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CAE2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAE30 | 7C 7E 1B 78 */	mr r30, r3
/* 813CAE34 | 40 82 FF D0 */	bne .L_813CAE04
/* 813CAE38 | 88 7D 00 90 */	lbz r3, 0x90(r29)
/* 813CAE3C | 38 A0 00 00 */	li r5, 0x0
/* 813CAE40 | 38 80 FF F1 */	li r4, -0xf
/* 813CAE44 | 38 00 00 02 */	li r0, 0x2
/* 813CAE48 | 68 66 00 01 */	xori r6, r3, 0x1
/* 813CAE4C | 54 C3 10 3A */	slwi r3, r6, 2
/* 813CAE50 | 98 DD 00 90 */	stb r6, 0x90(r29)
/* 813CAE54 | 7C 7D 1A 14 */	add r3, r29, r3
/* 813CAE58 | 90 A3 00 94 */	stw r5, 0x94(r3)
/* 813CAE5C | 80 7D 00 88 */	lwz r3, 0x88(r29)
/* 813CAE60 | B0 9D 00 9C */	sth r4, 0x9c(r29)
/* 813CAE64 | 90 7D 00 8C */	stw r3, 0x8c(r29)
/* 813CAE68 | 90 1D 00 88 */	stw r0, 0x88(r29)
.L_813CAE6C:
/* 813CAE6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CAE70 | 48 22 E6 A5 */	bl _restgpr_29
/* 813CAE74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CAE78 | 7C 08 03 A6 */	mtlr r0
/* 813CAE7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CAE80 | 4E 80 00 20 */	blr
.endfn on_change_tag1st__Q33ipl5scene10MemoryCardFv

# .text:0x10B8 | 0x813CAE84 | size: 0x7C
# ipl::scene::MemoryCard::on_change_tag2nd()
.fn on_change_tag2nd__Q33ipl5scene10MemoryCardFv, global
/* 813CAE84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CAE88 | 7C 08 02 A6 */	mflr r0
/* 813CAE8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CAE90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CAE94 | 3B E0 00 00 */	li r31, 0x0
/* 813CAE98 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CAE9C | 7C 7E 1B 78 */	mr r30, r3
/* 813CAEA0 | 48 00 00 30 */	b .L_813CAED0
.L_813CAEA4:
/* 813CAEA4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CAEA8 | 7F E3 FB 78 */	mr r3, r31
/* 813CAEAC | 38 80 00 00 */	li r4, 0x0
/* 813CAEB0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CAEB4 | 7D 89 03 A6 */	mtctr r12
/* 813CAEB8 | 4E 80 04 21 */	bctrl
/* 813CAEBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAEC0 | 40 82 00 10 */	bne .L_813CAED0
/* 813CAEC4 | 38 00 00 02 */	li r0, 0x2
/* 813CAEC8 | 90 1E 00 88 */	stw r0, 0x88(r30)
/* 813CAECC | 48 00 00 1C */	b .L_813CAEE8
.L_813CAED0:
/* 813CAED0 | 7F E4 FB 78 */	mr r4, r31
/* 813CAED4 | 38 7E 00 AC */	addi r3, r30, 0xac
/* 813CAED8 | 48 14 74 05 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CAEDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAEE0 | 7C 7F 1B 78 */	mr r31, r3
/* 813CAEE4 | 40 82 FF C0 */	bne .L_813CAEA4
.L_813CAEE8:
/* 813CAEE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CAEEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CAEF0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CAEF4 | 7C 08 03 A6 */	mtlr r0
/* 813CAEF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CAEFC | 4E 80 00 20 */	blr
.endfn on_change_tag2nd__Q33ipl5scene10MemoryCardFv

# .text:0x1134 | 0x813CAF00 | size: 0x9C
# ipl::scene::MemoryCard::on_fadeout1st()
.fn on_fadeout1st__Q33ipl5scene10MemoryCardFv, global
/* 813CAF00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CAF04 | 7C 08 02 A6 */	mflr r0
/* 813CAF08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CAF0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CAF10 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CAF14 | 7C 7E 1B 78 */	mr r30, r3
/* 813CAF18 | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CAF1C | 48 00 1C 11 */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813CAF20 | 48 03 CB 2D */	bl isPlaying__Q33ipl5scene13SettingButtonCFv
/* 813CAF24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAF28 | 40 82 00 5C */	bne .L_813CAF84
/* 813CAF2C | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CAF30 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CAF34 | 38 80 00 04 */	li r4, 0x4
/* 813CAF38 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CAF3C | 7D 89 03 A6 */	mtctr r12
/* 813CAF40 | 4E 80 04 21 */	bctrl
/* 813CAF44 | 3B E0 00 00 */	li r31, 0x0
/* 813CAF48 | 48 00 00 1C */	b .L_813CAF64
.L_813CAF4C:
/* 813CAF4C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CAF50 | 7F E3 FB 78 */	mr r3, r31
/* 813CAF54 | 38 80 00 01 */	li r4, 0x1
/* 813CAF58 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CAF5C | 7D 89 03 A6 */	mtctr r12
/* 813CAF60 | 4E 80 04 21 */	bctrl
.L_813CAF64:
/* 813CAF64 | 7F E4 FB 78 */	mr r4, r31
/* 813CAF68 | 38 7E 00 AC */	addi r3, r30, 0xac
/* 813CAF6C | 48 14 73 71 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CAF70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAF74 | 7C 7F 1B 78 */	mr r31, r3
/* 813CAF78 | 40 82 FF D4 */	bne .L_813CAF4C
/* 813CAF7C | 38 00 00 08 */	li r0, 0x8
/* 813CAF80 | 90 1E 00 88 */	stw r0, 0x88(r30)
.L_813CAF84:
/* 813CAF84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CAF88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CAF8C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CAF90 | 7C 08 03 A6 */	mtlr r0
/* 813CAF94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CAF98 | 4E 80 00 20 */	blr
.endfn on_fadeout1st__Q33ipl5scene10MemoryCardFv

# .text:0x11D0 | 0x813CAF9C | size: 0x84
# ipl::scene::MemoryCard::on_fadeout2nd()
.fn on_fadeout2nd__Q33ipl5scene10MemoryCardFv, global
/* 813CAF9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CAFA0 | 7C 08 02 A6 */	mflr r0
/* 813CAFA4 | 38 80 00 04 */	li r4, 0x4
/* 813CAFA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CAFAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CAFB0 | 7C 7F 1B 78 */	mr r31, r3
/* 813CAFB4 | 81 83 00 54 */	lwz r12, 0x54(r3)
/* 813CAFB8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CAFBC | 7D 89 03 A6 */	mtctr r12
/* 813CAFC0 | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CAFC4 | 4E 80 04 21 */	bctrl
/* 813CAFC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CAFCC | 40 82 00 40 */	bne .L_813CB00C
/* 813CAFD0 | 48 00 79 2D */	bl shutdownCardThread__Q23ipl10memorycardFv
/* 813CAFD4 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813CAFD8 | 7C 00 19 11 */	subfe. r0, r0, r3
/* 813CAFDC | 41 82 00 30 */	beq .L_813CB00C
/* 813CAFE0 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 813CAFE4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813CAFE8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813CAFEC | 60 00 00 02 */	ori r0, r0, 0x2
/* 813CAFF0 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813CAFF4 | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 813CAFF8 | 4B F9 5A F5 */	bl restart__Q33ipl3bs27ManagerFv
/* 813CAFFC | 3C 60 81 65 */	lis r3, lbl_81652490@ha
/* 813CB000 | 38 63 24 90 */	addi r3, r3, lbl_81652490@l
/* 813CB004 | 4C C6 31 82 */	crclr cr1eq
/* 813CB008 | 48 16 36 99 */	bl OSReport
.L_813CB00C:
/* 813CB00C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CB010 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CB014 | 7C 08 03 A6 */	mtlr r0
/* 813CB018 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CB01C | 4E 80 00 20 */	blr
.endfn on_fadeout2nd__Q33ipl5scene10MemoryCardFv

# .text:0x1254 | 0x813CB020 | size: 0x58
# ipl::scene::MemoryCard::on_error()
.fn on_error__Q33ipl5scene10MemoryCardFv, global
/* 813CB020 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CB024 | 7C 08 02 A6 */	mflr r0
/* 813CB028 | 38 80 00 19 */	li r4, 0x19
/* 813CB02C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CB030 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CB034 | 7C 7F 1B 78 */	mr r31, r3
/* 813CB038 | 81 83 00 54 */	lwz r12, 0x54(r3)
/* 813CB03C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CB040 | 7D 89 03 A6 */	mtctr r12
/* 813CB044 | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CB048 | 4E 80 04 21 */	bctrl
/* 813CB04C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB050 | 40 82 00 14 */	bne .L_813CB064
/* 813CB054 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813CB058 | 38 00 00 02 */	li r0, 0x2
/* 813CB05C | 90 7F 00 8C */	stw r3, 0x8c(r31)
/* 813CB060 | 90 1F 00 88 */	stw r0, 0x88(r31)
.L_813CB064:
/* 813CB064 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CB068 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CB06C | 7C 08 03 A6 */	mtlr r0
/* 813CB070 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CB074 | 4E 80 00 20 */	blr
.endfn on_error__Q33ipl5scene10MemoryCardFv

# .text:0x12AC | 0x813CB078 | size: 0x60
# ipl::scene::MemoryCard::on_insert_card()
.fn on_insert_card__Q33ipl5scene10MemoryCardFv, global
/* 813CB078 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CB07C | 7C 08 02 A6 */	mflr r0
/* 813CB080 | 38 80 00 1A */	li r4, 0x1a
/* 813CB084 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CB088 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CB08C | 7C 7F 1B 78 */	mr r31, r3
/* 813CB090 | 81 83 00 54 */	lwz r12, 0x54(r3)
/* 813CB094 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CB098 | 7D 89 03 A6 */	mtctr r12
/* 813CB09C | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CB0A0 | 4E 80 04 21 */	bctrl
/* 813CB0A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB0A8 | 40 82 00 1C */	bne .L_813CB0C4
/* 813CB0AC | 7F E3 FB 78 */	mr r3, r31
/* 813CB0B0 | 48 00 00 D9 */	bl start_savedata_fadein__Q33ipl5scene10MemoryCardFv
/* 813CB0B4 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813CB0B8 | 38 00 00 01 */	li r0, 0x1
/* 813CB0BC | 90 7F 00 8C */	stw r3, 0x8c(r31)
/* 813CB0C0 | 90 1F 00 88 */	stw r0, 0x88(r31)
.L_813CB0C4:
/* 813CB0C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CB0C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CB0CC | 7C 08 03 A6 */	mtlr r0
/* 813CB0D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CB0D4 | 4E 80 00 20 */	blr
.endfn on_insert_card__Q33ipl5scene10MemoryCardFv

# .text:0x130C | 0x813CB0D8 | size: 0xB0
# ipl::scene::MemoryCard::on_detach_card()
.fn on_detach_card__Q33ipl5scene10MemoryCardFv, global
/* 813CB0D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CB0DC | 7C 08 02 A6 */	mflr r0
/* 813CB0E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CB0E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CB0E8 | 48 22 E3 E1 */	bl _savegpr_29
/* 813CB0EC | 7C 7D 1B 78 */	mr r29, r3
/* 813CB0F0 | 38 80 00 00 */	li r4, 0x0
/* 813CB0F4 | 38 63 00 AC */	addi r3, r3, 0xac
/* 813CB0F8 | 48 14 71 E5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CB0FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CB100 | 38 80 00 01 */	li r4, 0x1
/* 813CB104 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CB108 | 7D 89 03 A6 */	mtctr r12
/* 813CB10C | 4E 80 04 21 */	bctrl
/* 813CB110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB114 | 40 82 00 5C */	bne .L_813CB170
/* 813CB118 | 7F A3 EB 78 */	mr r3, r29
/* 813CB11C | 48 00 01 7D */	bl start_errormessage_fadein__Q33ipl5scene10MemoryCardFv
/* 813CB120 | 80 7D 00 88 */	lwz r3, 0x88(r29)
/* 813CB124 | 38 00 00 0A */	li r0, 0xa
/* 813CB128 | 3B C0 00 00 */	li r30, 0x0
/* 813CB12C | 3F E0 81 65 */	lis r31, lbl_81652422@ha
/* 813CB130 | 90 7D 00 8C */	stw r3, 0x8c(r29)
/* 813CB134 | 90 1D 00 88 */	stw r0, 0x88(r29)
/* 813CB138 | 48 00 00 20 */	b .L_813CB158
.L_813CB13C:
/* 813CB13C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CB140 | 7F C3 F3 78 */	mr r3, r30
/* 813CB144 | 38 9F 24 22 */	addi r4, r31, lbl_81652422@l
/* 813CB148 | 38 A0 00 00 */	li r5, 0x0
/* 813CB14C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CB150 | 7D 89 03 A6 */	mtctr r12
/* 813CB154 | 4E 80 04 21 */	bctrl
.L_813CB158:
/* 813CB158 | 7F C4 F3 78 */	mr r4, r30
/* 813CB15C | 38 7D 00 AC */	addi r3, r29, 0xac
/* 813CB160 | 48 14 71 7D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CB164 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB168 | 7C 7E 1B 78 */	mr r30, r3
/* 813CB16C | 40 82 FF D0 */	bne .L_813CB13C
.L_813CB170:
/* 813CB170 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CB174 | 48 22 E3 A1 */	bl _restgpr_29
/* 813CB178 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CB17C | 7C 08 03 A6 */	mtlr r0
/* 813CB180 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CB184 | 4E 80 00 20 */	blr
.endfn on_detach_card__Q33ipl5scene10MemoryCardFv

# .text:0x13BC | 0x813CB188 | size: 0x88
# ipl::scene::MemoryCard::start_savedata_fadein()
.fn start_savedata_fadein__Q33ipl5scene10MemoryCardFv, global
/* 813CB188 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CB18C | 7C 08 02 A6 */	mflr r0
/* 813CB190 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CB194 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CB198 | 48 22 E3 31 */	bl _savegpr_29
/* 813CB19C | 7C 7D 1B 78 */	mr r29, r3
/* 813CB1A0 | 3B C0 00 00 */	li r30, 0x0
/* 813CB1A4 | 3F E0 81 65 */	lis r31, lbl_81652422@ha
/* 813CB1A8 | 48 00 00 38 */	b .L_813CB1E0
.L_813CB1AC:
/* 813CB1AC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CB1B0 | 7F C3 F3 78 */	mr r3, r30
/* 813CB1B4 | 38 9F 24 22 */	addi r4, r31, lbl_81652422@l
/* 813CB1B8 | 38 A0 00 01 */	li r5, 0x1
/* 813CB1BC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CB1C0 | 7D 89 03 A6 */	mtctr r12
/* 813CB1C4 | 4E 80 04 21 */	bctrl
/* 813CB1C8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CB1CC | 7F C3 F3 78 */	mr r3, r30
/* 813CB1D0 | 38 80 00 00 */	li r4, 0x0
/* 813CB1D4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB1D8 | 7D 89 03 A6 */	mtctr r12
/* 813CB1DC | 4E 80 04 21 */	bctrl
.L_813CB1E0:
/* 813CB1E0 | 7F C4 F3 78 */	mr r4, r30
/* 813CB1E4 | 38 7D 00 AC */	addi r3, r29, 0xac
/* 813CB1E8 | 48 14 70 F5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CB1EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB1F0 | 7C 7E 1B 78 */	mr r30, r3
/* 813CB1F4 | 40 82 FF B8 */	bne .L_813CB1AC
/* 813CB1F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CB1FC | 48 22 E3 19 */	bl _restgpr_29
/* 813CB200 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CB204 | 7C 08 03 A6 */	mtlr r0
/* 813CB208 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CB20C | 4E 80 00 20 */	blr
.endfn start_savedata_fadein__Q33ipl5scene10MemoryCardFv

# .text:0x1444 | 0x813CB210 | size: 0x88
# ipl::scene::MemoryCard::start_savedata_fadeout()
.fn start_savedata_fadeout__Q33ipl5scene10MemoryCardFv, global
/* 813CB210 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CB214 | 7C 08 02 A6 */	mflr r0
/* 813CB218 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CB21C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CB220 | 3B E0 00 00 */	li r31, 0x0
/* 813CB224 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CB228 | 7C 7E 1B 78 */	mr r30, r3
/* 813CB22C | 48 00 00 1C */	b .L_813CB248
.L_813CB230:
/* 813CB230 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CB234 | 7F E3 FB 78 */	mr r3, r31
/* 813CB238 | 38 80 00 01 */	li r4, 0x1
/* 813CB23C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB240 | 7D 89 03 A6 */	mtctr r12
/* 813CB244 | 4E 80 04 21 */	bctrl
.L_813CB248:
/* 813CB248 | 7F E4 FB 78 */	mr r4, r31
/* 813CB24C | 38 7E 00 AC */	addi r3, r30, 0xac
/* 813CB250 | 48 14 70 8D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CB254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB258 | 7C 7F 1B 78 */	mr r31, r3
/* 813CB25C | 40 82 FF D4 */	bne .L_813CB230
/* 813CB260 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CB264 | 3C 80 81 65 */	lis r4, lbl_81652445@ha
/* 813CB268 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CB26C | 38 A0 00 00 */	li r5, 0x0
/* 813CB270 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CB274 | 38 84 24 45 */	addi r4, r4, lbl_81652445@l
/* 813CB278 | 7D 89 03 A6 */	mtctr r12
/* 813CB27C | 4E 80 04 21 */	bctrl
/* 813CB280 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CB284 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CB288 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CB28C | 7C 08 03 A6 */	mtlr r0
/* 813CB290 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CB294 | 4E 80 00 20 */	blr
.endfn start_savedata_fadeout__Q33ipl5scene10MemoryCardFv

# .text:0x14CC | 0x813CB298 | size: 0xE0
# ipl::scene::MemoryCard::start_errormessage_fadein()
.fn start_errormessage_fadein__Q33ipl5scene10MemoryCardFv, global
/* 813CB298 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CB29C | 7C 08 02 A6 */	mflr r0
/* 813CB2A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CB2A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CB2A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813CB2AC | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CB2B0 | 88 9F 00 90 */	lbz r4, 0x90(r31)
/* 813CB2B4 | 48 00 1E C9 */	bl isSlotWrongDevice__Q33ipl5scene17MemoryCardManagerFUc
/* 813CB2B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB2BC | 41 82 00 3C */	beq .L_813CB2F8
/* 813CB2C0 | 88 1F 00 90 */	lbz r0, 0x90(r31)
/* 813CB2C4 | 3C 80 81 65 */	lis r4, lbl_8165244F@ha
/* 813CB2C8 | 38 C0 00 03 */	li r6, 0x3
/* 813CB2CC | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CB2D0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813CB2D4 | 38 84 24 4F */	addi r4, r4, lbl_8165244F@l
/* 813CB2D8 | 7C BF 02 14 */	add r5, r31, r0
/* 813CB2DC | 90 C5 00 94 */	stw r6, 0x94(r5)
/* 813CB2E0 | 88 1F 00 90 */	lbz r0, 0x90(r31)
/* 813CB2E4 | 30 00 FF FF */	subic r0, r0, 0x1
/* 813CB2E8 | 7C A0 01 10 */	subfe r5, r0, r0
/* 813CB2EC | 38 A5 00 E9 */	addi r5, r5, 0xe9
/* 813CB2F0 | 48 00 15 3D */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CB2F4 | 48 00 00 38 */	b .L_813CB32C
.L_813CB2F8:
/* 813CB2F8 | 88 1F 00 90 */	lbz r0, 0x90(r31)
/* 813CB2FC | 3C 80 81 65 */	lis r4, lbl_8165244F@ha
/* 813CB300 | 38 C0 00 02 */	li r6, 0x2
/* 813CB304 | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CB308 | 54 00 10 3A */	slwi r0, r0, 2
/* 813CB30C | 38 84 24 4F */	addi r4, r4, lbl_8165244F@l
/* 813CB310 | 7C BF 02 14 */	add r5, r31, r0
/* 813CB314 | 90 C5 00 94 */	stw r6, 0x94(r5)
/* 813CB318 | 88 1F 00 90 */	lbz r0, 0x90(r31)
/* 813CB31C | 30 00 FF FF */	subic r0, r0, 0x1
/* 813CB320 | 7C A0 01 10 */	subfe r5, r0, r0
/* 813CB324 | 38 A5 00 E7 */	addi r5, r5, 0xe7
/* 813CB328 | 48 00 15 05 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
.L_813CB32C:
/* 813CB32C | 81 9F 00 54 */	lwz r12, 0x54(r31)
/* 813CB330 | 3C 80 81 65 */	lis r4, lbl_8165244F@ha
/* 813CB334 | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CB338 | 38 A0 00 01 */	li r5, 0x1
/* 813CB33C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CB340 | 38 84 24 4F */	addi r4, r4, lbl_8165244F@l
/* 813CB344 | 7D 89 03 A6 */	mtctr r12
/* 813CB348 | 4E 80 04 21 */	bctrl
/* 813CB34C | 81 9F 00 54 */	lwz r12, 0x54(r31)
/* 813CB350 | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CB354 | 38 80 00 19 */	li r4, 0x19
/* 813CB358 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB35C | 7D 89 03 A6 */	mtctr r12
/* 813CB360 | 4E 80 04 21 */	bctrl
/* 813CB364 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CB368 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CB36C | 7C 08 03 A6 */	mtlr r0
/* 813CB370 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CB374 | 4E 80 00 20 */	blr
.endfn start_errormessage_fadein__Q33ipl5scene10MemoryCardFv

# .text:0x15AC | 0x813CB378 | size: 0x1E4
# ipl::scene::MemoryCard::update_slot()
.fn update_slot__Q33ipl5scene10MemoryCardFv, global
/* 813CB378 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CB37C | 7C 08 02 A6 */	mflr r0
/* 813CB380 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CB384 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CB388 | 7C 7F 1B 78 */	mr r31, r3
/* 813CB38C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CB390 | 88 83 00 90 */	lbz r4, 0x90(r3)
/* 813CB394 | 54 80 10 3A */	slwi r0, r4, 2
/* 813CB398 | 7C A3 02 14 */	add r5, r3, r0
/* 813CB39C | 80 05 00 94 */	lwz r0, 0x94(r5)
/* 813CB3A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813CB3A4 | 41 82 00 84 */	beq .L_813CB428
/* 813CB3A8 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CB3AC | 48 00 1D 4D */	bl isSlotReady__Q33ipl5scene17MemoryCardManagerFUc
/* 813CB3B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB3B4 | 41 82 00 74 */	beq .L_813CB428
/* 813CB3B8 | 3B C0 00 0F */	li r30, 0xf
.L_813CB3BC:
/* 813CB3BC | 38 7F 00 AC */	addi r3, r31, 0xac
/* 813CB3C0 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 813CB3C4 | 48 14 6F 55 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813CB3C8 | 48 00 38 C5 */	bl init__Q33ipl5scene10GCSaveDataFv
/* 813CB3CC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813CB3D0 | 28 1E 00 1E */	cmplwi r30, 0x1e
/* 813CB3D4 | 41 80 FF E8 */	blt .L_813CB3BC
/* 813CB3D8 | 88 1F 00 90 */	lbz r0, 0x90(r31)
/* 813CB3DC | 38 80 00 01 */	li r4, 0x1
/* 813CB3E0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813CB3E4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813CB3E8 | 90 83 00 94 */	stw r4, 0x94(r3)
/* 813CB3EC | 80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 813CB3F0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813CB3F4 | 40 82 00 1C */	bne .L_813CB410
/* 813CB3F8 | 81 9F 00 54 */	lwz r12, 0x54(r31)
/* 813CB3FC | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CB400 | 38 80 00 1A */	li r4, 0x1a
/* 813CB404 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB408 | 7D 89 03 A6 */	mtctr r12
/* 813CB40C | 4E 80 04 21 */	bctrl
.L_813CB410:
/* 813CB410 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 813CB414 | 38 00 00 0B */	li r0, 0xb
/* 813CB418 | 38 60 00 01 */	li r3, 0x1
/* 813CB41C | 90 9F 00 8C */	stw r4, 0x8c(r31)
/* 813CB420 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813CB424 | 48 00 01 20 */	b .L_813CB544
.L_813CB428:
/* 813CB428 | 88 9F 00 90 */	lbz r4, 0x90(r31)
/* 813CB42C | 54 80 10 3A */	slwi r0, r4, 2
/* 813CB430 | 7C 7F 02 14 */	add r3, r31, r0
/* 813CB434 | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 813CB438 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CB43C | 41 82 00 70 */	beq .L_813CB4AC
/* 813CB440 | 80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 813CB444 | 48 00 1C F9 */	bl isSlotNoCard__Q33ipl5scene17MemoryCardManagerFUc
/* 813CB448 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB44C | 41 82 00 60 */	beq .L_813CB4AC
/* 813CB450 | 3B C0 00 0F */	li r30, 0xf
.L_813CB454:
/* 813CB454 | 38 7F 00 AC */	addi r3, r31, 0xac
/* 813CB458 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 813CB45C | 48 14 6E BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813CB460 | 48 00 38 2D */	bl init__Q33ipl5scene10GCSaveDataFv
/* 813CB464 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813CB468 | 28 1E 00 1E */	cmplwi r30, 0x1e
/* 813CB46C | 41 80 FF E8 */	blt .L_813CB454
/* 813CB470 | 88 9F 00 90 */	lbz r4, 0x90(r31)
/* 813CB474 | 38 A0 00 02 */	li r5, 0x2
/* 813CB478 | 38 00 FF F1 */	li r0, -0xf
/* 813CB47C | 7F E3 FB 78 */	mr r3, r31
/* 813CB480 | 54 84 10 3A */	slwi r4, r4, 2
/* 813CB484 | 7C 9F 22 14 */	add r4, r31, r4
/* 813CB488 | 90 A4 00 94 */	stw r5, 0x94(r4)
/* 813CB48C | B0 1F 00 9C */	sth r0, 0x9c(r31)
/* 813CB490 | 4B FF FD 81 */	bl start_savedata_fadeout__Q33ipl5scene10MemoryCardFv
/* 813CB494 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 813CB498 | 38 00 00 0C */	li r0, 0xc
/* 813CB49C | 38 60 00 01 */	li r3, 0x1
/* 813CB4A0 | 90 9F 00 8C */	stw r4, 0x8c(r31)
/* 813CB4A4 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813CB4A8 | 48 00 00 9C */	b .L_813CB544
.L_813CB4AC:
/* 813CB4AC | 88 9F 00 90 */	lbz r4, 0x90(r31)
/* 813CB4B0 | 54 80 10 3A */	slwi r0, r4, 2
/* 813CB4B4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813CB4B8 | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 813CB4BC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813CB4C0 | 41 82 00 14 */	beq .L_813CB4D4
/* 813CB4C4 | 80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 813CB4C8 | 48 00 1C B5 */	bl isSlotWrongDevice__Q33ipl5scene17MemoryCardManagerFUc
/* 813CB4CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB4D0 | 40 82 00 1C */	bne .L_813CB4EC
.L_813CB4D4:
/* 813CB4D4 | 88 1F 00 90 */	lbz r0, 0x90(r31)
/* 813CB4D8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813CB4DC | 7C 7F 02 14 */	add r3, r31, r0
/* 813CB4E0 | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 813CB4E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CB4E8 | 40 82 00 58 */	bne .L_813CB540
.L_813CB4EC:
/* 813CB4EC | 3B C0 00 0F */	li r30, 0xf
.L_813CB4F0:
/* 813CB4F0 | 38 7F 00 AC */	addi r3, r31, 0xac
/* 813CB4F4 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 813CB4F8 | 48 14 6E 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813CB4FC | 48 00 37 91 */	bl init__Q33ipl5scene10GCSaveDataFv
/* 813CB500 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813CB504 | 28 1E 00 1E */	cmplwi r30, 0x1e
/* 813CB508 | 41 80 FF E8 */	blt .L_813CB4F0
/* 813CB50C | 88 1F 00 90 */	lbz r0, 0x90(r31)
/* 813CB510 | 38 A0 00 03 */	li r5, 0x3
/* 813CB514 | 7F E3 FB 78 */	mr r3, r31
/* 813CB518 | 54 00 10 3A */	slwi r0, r0, 2
/* 813CB51C | 7C 9F 02 14 */	add r4, r31, r0
/* 813CB520 | 90 A4 00 94 */	stw r5, 0x94(r4)
/* 813CB524 | 4B FF FC ED */	bl start_savedata_fadeout__Q33ipl5scene10MemoryCardFv
/* 813CB528 | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 813CB52C | 38 00 00 0C */	li r0, 0xc
/* 813CB530 | 38 60 00 01 */	li r3, 0x1
/* 813CB534 | 90 9F 00 8C */	stw r4, 0x8c(r31)
/* 813CB538 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813CB53C | 48 00 00 08 */	b .L_813CB544
.L_813CB540:
/* 813CB540 | 38 60 00 00 */	li r3, 0x0
.L_813CB544:
/* 813CB544 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CB548 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CB54C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CB550 | 7C 08 03 A6 */	mtlr r0
/* 813CB554 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CB558 | 4E 80 00 20 */	blr
.endfn update_slot__Q33ipl5scene10MemoryCardFv

# .text:0x1790 | 0x813CB55C | size: 0x1A0
# ipl::scene::MemoryCard::show_arw()
.fn show_arw__Q33ipl5scene10MemoryCardFv, global
/* 813CB55C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CB560 | 7C 08 02 A6 */	mflr r0
/* 813CB564 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CB568 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CB56C | 7C 7F 1B 78 */	mr r31, r3
/* 813CB570 | 88 A3 00 A0 */	lbz r5, 0xa0(r3)
/* 813CB574 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813CB578 | 40 82 00 64 */	bne .L_813CB5DC
/* 813CB57C | A8 03 00 9E */	lha r0, 0x9e(r3)
/* 813CB580 | 38 80 00 00 */	li r4, 0x0
/* 813CB584 | 2C 00 00 1E */	cmpwi r0, 0x1e
/* 813CB588 | 40 81 00 14 */	ble .L_813CB59C
/* 813CB58C | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813CB590 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CB594 | 40 82 00 08 */	bne .L_813CB59C
/* 813CB598 | 38 80 00 01 */	li r4, 0x1
.L_813CB59C:
/* 813CB59C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CB5A0 | 41 82 00 3C */	beq .L_813CB5DC
/* 813CB5A4 | 85 83 00 54 */	lwzu r12, 0x54(r3)
/* 813CB5A8 | 38 80 00 15 */	li r4, 0x15
/* 813CB5AC | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB5B0 | 7D 89 03 A6 */	mtctr r12
/* 813CB5B4 | 4E 80 04 21 */	bctrl
/* 813CB5B8 | 81 9F 00 54 */	lwz r12, 0x54(r31)
/* 813CB5BC | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CB5C0 | 38 80 00 12 */	li r4, 0x12
/* 813CB5C4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB5C8 | 7D 89 03 A6 */	mtctr r12
/* 813CB5CC | 4E 80 04 21 */	bctrl
/* 813CB5D0 | 38 00 00 01 */	li r0, 0x1
/* 813CB5D4 | 98 1F 00 A0 */	stb r0, 0xa0(r31)
/* 813CB5D8 | 48 00 00 50 */	b .L_813CB628
.L_813CB5DC:
/* 813CB5DC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813CB5E0 | 41 82 00 48 */	beq .L_813CB628
/* 813CB5E4 | A8 03 00 9E */	lha r0, 0x9e(r3)
/* 813CB5E8 | 38 80 00 00 */	li r4, 0x0
/* 813CB5EC | 2C 00 00 1E */	cmpwi r0, 0x1e
/* 813CB5F0 | 40 81 00 14 */	ble .L_813CB604
/* 813CB5F4 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813CB5F8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CB5FC | 40 82 00 08 */	bne .L_813CB604
/* 813CB600 | 38 80 00 01 */	li r4, 0x1
.L_813CB604:
/* 813CB604 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CB608 | 40 82 00 20 */	bne .L_813CB628
/* 813CB60C | 85 83 00 54 */	lwzu r12, 0x54(r3)
/* 813CB610 | 38 80 00 17 */	li r4, 0x17
/* 813CB614 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB618 | 7D 89 03 A6 */	mtctr r12
/* 813CB61C | 4E 80 04 21 */	bctrl
/* 813CB620 | 38 00 00 00 */	li r0, 0x0
/* 813CB624 | 98 1F 00 A0 */	stb r0, 0xa0(r31)
.L_813CB628:
/* 813CB628 | 88 9F 00 A1 */	lbz r4, 0xa1(r31)
/* 813CB62C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CB630 | 40 82 00 68 */	bne .L_813CB698
/* 813CB634 | A8 1F 00 9C */	lha r0, 0x9c(r31)
/* 813CB638 | 38 60 00 00 */	li r3, 0x0
/* 813CB63C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CB640 | 41 80 00 14 */	blt .L_813CB654
/* 813CB644 | 80 1F 00 88 */	lwz r0, 0x88(r31)
/* 813CB648 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CB64C | 40 82 00 08 */	bne .L_813CB654
/* 813CB650 | 38 60 00 01 */	li r3, 0x1
.L_813CB654:
/* 813CB654 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB658 | 41 82 00 40 */	beq .L_813CB698
/* 813CB65C | 81 9F 00 54 */	lwz r12, 0x54(r31)
/* 813CB660 | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CB664 | 38 80 00 16 */	li r4, 0x16
/* 813CB668 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB66C | 7D 89 03 A6 */	mtctr r12
/* 813CB670 | 4E 80 04 21 */	bctrl
/* 813CB674 | 81 9F 00 54 */	lwz r12, 0x54(r31)
/* 813CB678 | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CB67C | 38 80 00 13 */	li r4, 0x13
/* 813CB680 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB684 | 7D 89 03 A6 */	mtctr r12
/* 813CB688 | 4E 80 04 21 */	bctrl
/* 813CB68C | 38 00 00 01 */	li r0, 0x1
/* 813CB690 | 98 1F 00 A1 */	stb r0, 0xa1(r31)
/* 813CB694 | 48 00 00 54 */	b .L_813CB6E8
.L_813CB698:
/* 813CB698 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CB69C | 41 82 00 4C */	beq .L_813CB6E8
/* 813CB6A0 | A8 1F 00 9C */	lha r0, 0x9c(r31)
/* 813CB6A4 | 38 60 00 00 */	li r3, 0x0
/* 813CB6A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CB6AC | 41 80 00 14 */	blt .L_813CB6C0
/* 813CB6B0 | 80 1F 00 88 */	lwz r0, 0x88(r31)
/* 813CB6B4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CB6B8 | 40 82 00 08 */	bne .L_813CB6C0
/* 813CB6BC | 38 60 00 01 */	li r3, 0x1
.L_813CB6C0:
/* 813CB6C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB6C4 | 40 82 00 24 */	bne .L_813CB6E8
/* 813CB6C8 | 81 9F 00 54 */	lwz r12, 0x54(r31)
/* 813CB6CC | 38 7F 00 54 */	addi r3, r31, 0x54
/* 813CB6D0 | 38 80 00 18 */	li r4, 0x18
/* 813CB6D4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CB6D8 | 7D 89 03 A6 */	mtctr r12
/* 813CB6DC | 4E 80 04 21 */	bctrl
/* 813CB6E0 | 38 00 00 00 */	li r0, 0x0
/* 813CB6E4 | 98 1F 00 A1 */	stb r0, 0xa1(r31)
.L_813CB6E8:
/* 813CB6E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CB6EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CB6F0 | 7C 08 03 A6 */	mtlr r0
/* 813CB6F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CB6F8 | 4E 80 00 20 */	blr
.endfn show_arw__Q33ipl5scene10MemoryCardFv

# .text:0x1930 | 0x813CB6FC | size: 0x22C
# ipl::scene::MemoryCard::show_capacity(unsigned char)
.fn show_capacity__Q33ipl5scene10MemoryCardFUc, global
/* 813CB6FC | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 813CB700 | 7C 08 02 A6 */	mflr r0
/* 813CB704 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 813CB708 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813CB70C | 48 22 DD AD */	bl _savegpr_25
/* 813CB710 | 7C 7E 1B 78 */	mr r30, r3
/* 813CB714 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CB718 | 7C 99 23 78 */	mr r25, r4
/* 813CB71C | 48 00 19 DD */	bl isSlotReady__Q33ipl5scene17MemoryCardManagerFUc
/* 813CB720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CB724 | 40 82 00 28 */	bne .L_813CB74C
/* 813CB728 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CB72C | 3C 80 81 65 */	lis r4, lbl_81652445@ha
/* 813CB730 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CB734 | 38 A0 00 00 */	li r5, 0x0
/* 813CB738 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CB73C | 38 84 24 45 */	addi r4, r4, lbl_81652445@l
/* 813CB740 | 7D 89 03 A6 */	mtctr r12
/* 813CB744 | 4E 80 04 21 */	bctrl
/* 813CB748 | 48 00 01 C8 */	b .L_813CB910
.L_813CB74C:
/* 813CB74C | 80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 813CB750 | 7F 24 CB 78 */	mr r4, r25
/* 813CB754 | 48 00 2D BD */	bl getFreeBlocks__Q33ipl5scene17MemoryCardManagerFUc
/* 813CB758 | 3C 80 81 61 */	lis r4, lbl_81610468@ha
/* 813CB75C | 38 00 00 05 */	li r0, 0x5
/* 813CB760 | 38 84 04 68 */	addi r4, r4, lbl_81610468@l
/* 813CB764 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 813CB768 | 38 A4 FF FE */	subi r5, r4, 0x2
/* 813CB76C | 7C 09 03 A6 */	mtctr r0
.L_813CB770:
/* 813CB770 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813CB774 | A4 05 00 04 */	lhzu r0, 0x4(r5)
/* 813CB778 | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813CB77C | B4 06 00 04 */	sthu r0, 0x4(r6)
/* 813CB780 | 42 00 FF F0 */	bdnz .L_813CB770
/* 813CB784 | 38 A0 00 00 */	li r5, 0x0
/* 813CB788 | 38 00 00 20 */	li r0, 0x20
/* 813CB78C | B0 A1 00 08 */	sth r5, 0x8(r1)
/* 813CB790 | 38 81 00 24 */	addi r4, r1, 0x24
/* 813CB794 | B0 A1 00 0A */	sth r5, 0xa(r1)
/* 813CB798 | B0 A1 00 0C */	sth r5, 0xc(r1)
/* 813CB79C | B0 A1 00 0E */	sth r5, 0xe(r1)
/* 813CB7A0 | B0 A1 00 10 */	sth r5, 0x10(r1)
/* 813CB7A4 | 7C 09 03 A6 */	mtctr r0
.L_813CB7A8:
/* 813CB7A8 | B0 A4 00 02 */	sth r5, 0x2(r4)
/* 813CB7AC | B4 A4 00 04 */	sthu r5, 0x4(r4)
/* 813CB7B0 | 42 00 FF F8 */	bdnz .L_813CB7A8
/* 813CB7B4 | 54 7C 04 3E */	clrlwi r28, r3, 16
/* 813CB7B8 | 38 A0 00 64 */	li r5, 0x64
/* 813CB7BC | 7D 5C 2B D6 */	divw r10, r28, r5
/* 813CB7C0 | 39 20 00 0A */	li r9, 0xa
/* 813CB7C4 | 39 00 03 E8 */	li r8, 0x3e8
/* 813CB7C8 | 39 61 00 12 */	addi r11, r1, 0x12
/* 813CB7CC | 38 00 00 03 */	li r0, 0x3
/* 813CB7D0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813CB7D4 | 7C FC 4B D6 */	divw r7, r28, r9
/* 813CB7D8 | 3B E0 00 00 */	li r31, 0x0
/* 813CB7DC | 38 60 00 00 */	li r3, 0x0
/* 813CB7E0 | 7C CA 4B D6 */	divw r6, r10, r9
/* 813CB7E4 | 7D 9C 43 D6 */	divw r12, r28, r8
/* 813CB7E8 | 7D 06 49 D6 */	mullw r8, r6, r9
/* 813CB7EC | 55 86 08 3C */	slwi r6, r12, 1
/* 813CB7F0 | 7C CB 32 2E */	lhzx r6, r11, r6
/* 813CB7F4 | B0 C1 00 08 */	sth r6, 0x8(r1)
/* 813CB7F8 | 7C A7 4B D6 */	divw r5, r7, r9
/* 813CB7FC | 7C C5 49 D6 */	mullw r6, r5, r9
/* 813CB800 | 7C A8 50 50 */	subf r5, r8, r10
/* 813CB804 | 54 A5 08 3C */	slwi r5, r5, 1
/* 813CB808 | 7D 0B 2A 2E */	lhzx r8, r11, r5
/* 813CB80C | 7C A7 49 D6 */	mullw r5, r7, r9
/* 813CB810 | 7C C6 38 50 */	subf r6, r6, r7
/* 813CB814 | B1 01 00 0A */	sth r8, 0xa(r1)
/* 813CB818 | 54 C6 08 3C */	slwi r6, r6, 1
/* 813CB81C | 7C CB 32 2E */	lhzx r6, r11, r6
/* 813CB820 | 7C A5 E0 50 */	subf r5, r5, r28
/* 813CB824 | 54 A5 08 3C */	slwi r5, r5, 1
/* 813CB828 | B0 C1 00 0C */	sth r6, 0xc(r1)
/* 813CB82C | 7C AB 2A 2E */	lhzx r5, r11, r5
/* 813CB830 | B0 A1 00 0E */	sth r5, 0xe(r1)
/* 813CB834 | 7C 09 03 A6 */	mtctr r0
.L_813CB838:
/* 813CB838 | 7C 04 1A 2E */	lhzx r0, r4, r3
/* 813CB83C | 28 00 00 30 */	cmplwi r0, 0x30
/* 813CB840 | 40 82 00 10 */	bne .L_813CB850
/* 813CB844 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813CB848 | 38 63 00 02 */	addi r3, r3, 0x2
/* 813CB84C | 42 00 FF EC */	bdnz .L_813CB838
.L_813CB850:
/* 813CB850 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813CB854 | 3B 40 00 00 */	li r26, 0x0
/* 813CB858 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813CB85C | 3B A0 00 00 */	li r29, 0x0
/* 813CB860 | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 813CB864 | 38 80 00 9C */	li r4, 0x9c
/* 813CB868 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813CB86C | 4B F7 2F 51 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813CB870 | 80 BC 00 80 */	lwz r5, 0x80(r28)
/* 813CB874 | 7C 79 1B 78 */	mr r25, r3
/* 813CB878 | 38 80 00 F2 */	li r4, 0xf2
/* 813CB87C | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813CB880 | 4B F7 2F 3D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813CB884 | 7C 7B 1B 78 */	mr r27, r3
/* 813CB888 | 3B 81 00 26 */	addi r28, r1, 0x26
.L_813CB88C:
/* 813CB88C | A0 19 00 00 */	lhz r0, 0x0(r25)
/* 813CB890 | 3B 39 00 02 */	addi r25, r25, 0x2
/* 813CB894 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813CB898 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CB89C | 7C 1C EB 2E */	sthx r0, r28, r29
/* 813CB8A0 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 813CB8A4 | 40 82 FF E8 */	bne .L_813CB88C
/* 813CB8A8 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 813CB8AC | 38 00 00 20 */	li r0, 0x20
/* 813CB8B0 | 57 45 08 3C */	slwi r5, r26, 1
/* 813CB8B4 | 7F 83 E3 78 */	mr r3, r28
/* 813CB8B8 | 7C 1C 2B 2E */	sthx r0, r28, r5
/* 813CB8BC | 57 E0 08 3C */	slwi r0, r31, 1
/* 813CB8C0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813CB8C4 | 7C 63 2A 14 */	add r3, r3, r5
/* 813CB8C8 | 7C 84 02 14 */	add r4, r4, r0
/* 813CB8CC | 48 23 CD FD */	bl fn_816086C8
/* 813CB8D0 | 7F 83 E3 78 */	mr r3, r28
/* 813CB8D4 | 7F 64 DB 78 */	mr r4, r27
/* 813CB8D8 | 48 23 CE 51 */	bl wcscat
/* 813CB8DC | 3C 80 81 65 */	lis r4, lbl_816524AC@ha
/* 813CB8E0 | 7F 85 E3 78 */	mr r5, r28
/* 813CB8E4 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CB8E8 | 38 84 24 AC */	addi r4, r4, lbl_816524AC@l
/* 813CB8EC | 48 00 11 8D */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcPCw
/* 813CB8F0 | 81 9E 00 54 */	lwz r12, 0x54(r30)
/* 813CB8F4 | 3C 80 81 65 */	lis r4, lbl_81652445@ha
/* 813CB8F8 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CB8FC | 38 A0 00 01 */	li r5, 0x1
/* 813CB900 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CB904 | 38 84 24 45 */	addi r4, r4, lbl_81652445@l
/* 813CB908 | 7D 89 03 A6 */	mtctr r12
/* 813CB90C | 4E 80 04 21 */	bctrl
.L_813CB910:
/* 813CB910 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813CB914 | 48 22 DB F1 */	bl _restgpr_25
/* 813CB918 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 813CB91C | 7C 08 03 A6 */	mtlr r0
/* 813CB920 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 813CB924 | 4E 80 00 20 */	blr
.endfn show_capacity__Q33ipl5scene10MemoryCardFUc

# .text:0x1B5C | 0x813CB928 | size: 0xB8
# ipl::scene::MemoryCard::scroll_common()
.fn scroll_common__Q33ipl5scene10MemoryCardFv, global
/* 813CB928 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813CB92C | 7C 08 02 A6 */	mflr r0
/* 813CB930 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813CB934 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CB938 | 48 22 DB 89 */	bl _savegpr_27
/* 813CB93C | 3F C0 81 65 */	lis r30, lbl_81651F4C@ha
/* 813CB940 | 7C 7B 1B 78 */	mr r27, r3
/* 813CB944 | 3B DE 1F 4C */	addi r30, r30, lbl_81651F4C@l
/* 813CB948 | 3B A0 00 00 */	li r29, 0x0
.L_813CB94C:
/* 813CB94C | 80 7B 00 58 */	lwz r3, 0x58(r27)
/* 813CB950 | 57 A0 13 BA */	clrlslwi r0, r29, 16, 2
/* 813CB954 | 7C 9E 00 2E */	lwzx r4, r30, r0
/* 813CB958 | 38 A0 00 01 */	li r5, 0x1
/* 813CB95C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CB960 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CB964 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CB968 | 7D 89 03 A6 */	mtctr r12
/* 813CB96C | 4E 80 04 21 */	bctrl
/* 813CB970 | 7C 7F 1B 78 */	mr r31, r3
/* 813CB974 | 38 7B 00 AC */	addi r3, r27, 0xac
/* 813CB978 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 813CB97C | 48 14 69 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813CB980 | C0 22 86 68 */	lfs f1, lbl_81694A68@sda21(r0)
/* 813CB984 | 7C 7C 1B 78 */	mr r28, r3
/* 813CB988 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813CB98C | FC 40 08 90 */	fmr f2, f1
/* 813CB990 | FC 60 08 90 */	fmr f3, f1
/* 813CB994 | 4B FA 8E F1 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813CB998 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813CB99C | 38 7F 00 84 */	addi r3, r31, 0x84
/* 813CB9A0 | 7C 85 23 78 */	mr r5, r4
/* 813CB9A4 | 48 17 5B 19 */	bl fn_815414BC
/* 813CB9A8 | 7F 83 E3 78 */	mr r3, r28
/* 813CB9AC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813CB9B0 | 48 00 32 35 */	bl setTranslate__Q33ipl5scene10GCSaveDataFRCQ34nw4r4math4VEC3
/* 813CB9B4 | 7F 83 E3 78 */	mr r3, r28
/* 813CB9B8 | 48 00 32 D5 */	bl init__Q33ipl5scene10GCSaveDataFv
/* 813CB9BC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813CB9C0 | 28 1D 00 2D */	cmplwi r29, 0x2d
/* 813CB9C4 | 41 80 FF 88 */	blt .L_813CB94C
/* 813CB9C8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CB9CC | 48 22 DB 41 */	bl _restgpr_27
/* 813CB9D0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813CB9D4 | 7C 08 03 A6 */	mtlr r0
/* 813CB9D8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813CB9DC | 4E 80 00 20 */	blr
.endfn scroll_common__Q33ipl5scene10MemoryCardFv

# .text:0x1C14 | 0x813CB9E0 | size: 0xB0
# ipl::scene::MemoryCard::start_scroll_r()
.fn start_scroll_r__Q33ipl5scene10MemoryCardFv, global
/* 813CB9E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CB9E4 | 7C 08 02 A6 */	mflr r0
/* 813CB9E8 | 38 80 00 00 */	li r4, 0x0
/* 813CB9EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CB9F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CB9F4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CB9F8 | 7C 7E 1B 78 */	mr r30, r3
/* 813CB9FC | A8 03 00 9E */	lha r0, 0x9e(r3)
/* 813CBA00 | 2C 00 00 1E */	cmpwi r0, 0x1e
/* 813CBA04 | 40 81 00 14 */	ble .L_813CBA18
/* 813CBA08 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813CBA0C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CBA10 | 40 82 00 08 */	bne .L_813CBA18
/* 813CBA14 | 38 80 00 01 */	li r4, 0x1
.L_813CBA18:
/* 813CBA18 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CBA1C | 41 82 00 5C */	beq .L_813CBA78
/* 813CBA20 | 85 83 00 54 */	lwzu r12, 0x54(r3)
/* 813CBA24 | 38 80 00 0C */	li r4, 0xc
/* 813CBA28 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBA2C | 7D 89 03 A6 */	mtctr r12
/* 813CBA30 | 4E 80 04 21 */	bctrl
/* 813CBA34 | 38 00 00 03 */	li r0, 0x3
/* 813CBA38 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813CBA3C | 3C 80 81 65 */	lis r4, lbl_816524B6@ha
/* 813CBA40 | 90 1E 00 88 */	stw r0, 0x88(r30)
/* 813CBA44 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813CBA48 | 38 84 24 B6 */	addi r4, r4, lbl_816524B6@l
/* 813CBA4C | 4B F9 FA 21 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813CBA50 | 3B E0 00 00 */	li r31, 0x0
/* 813CBA54 | 48 00 00 0C */	b .L_813CBA60
.L_813CBA58:
/* 813CBA58 | 7F E3 FB 78 */	mr r3, r31
/* 813CBA5C | 48 00 32 31 */	bl init__Q33ipl5scene10GCSaveDataFv
.L_813CBA60:
/* 813CBA60 | 7F E4 FB 78 */	mr r4, r31
/* 813CBA64 | 38 7E 00 AC */	addi r3, r30, 0xac
/* 813CBA68 | 48 14 68 75 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CBA6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBA70 | 7C 7F 1B 78 */	mr r31, r3
/* 813CBA74 | 40 82 FF E4 */	bne .L_813CBA58
.L_813CBA78:
/* 813CBA78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CBA7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CBA80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CBA84 | 7C 08 03 A6 */	mtlr r0
/* 813CBA88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CBA8C | 4E 80 00 20 */	blr
.endfn start_scroll_r__Q33ipl5scene10MemoryCardFv

# .text:0x1CC4 | 0x813CBA90 | size: 0xB0
# ipl::scene::MemoryCard::start_scroll_l()
.fn start_scroll_l__Q33ipl5scene10MemoryCardFv, global
/* 813CBA90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CBA94 | 7C 08 02 A6 */	mflr r0
/* 813CBA98 | 38 80 00 00 */	li r4, 0x0
/* 813CBA9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CBAA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CBAA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CBAA8 | 7C 7E 1B 78 */	mr r30, r3
/* 813CBAAC | A8 03 00 9C */	lha r0, 0x9c(r3)
/* 813CBAB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CBAB4 | 41 80 00 14 */	blt .L_813CBAC8
/* 813CBAB8 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813CBABC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CBAC0 | 40 82 00 08 */	bne .L_813CBAC8
/* 813CBAC4 | 38 80 00 01 */	li r4, 0x1
.L_813CBAC8:
/* 813CBAC8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CBACC | 41 82 00 5C */	beq .L_813CBB28
/* 813CBAD0 | 85 83 00 54 */	lwzu r12, 0x54(r3)
/* 813CBAD4 | 38 80 00 0D */	li r4, 0xd
/* 813CBAD8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBADC | 7D 89 03 A6 */	mtctr r12
/* 813CBAE0 | 4E 80 04 21 */	bctrl
/* 813CBAE4 | 38 00 00 04 */	li r0, 0x4
/* 813CBAE8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813CBAEC | 3C 80 81 65 */	lis r4, lbl_816524B6@ha
/* 813CBAF0 | 90 1E 00 88 */	stw r0, 0x88(r30)
/* 813CBAF4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813CBAF8 | 38 84 24 B6 */	addi r4, r4, lbl_816524B6@l
/* 813CBAFC | 4B F9 F9 71 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813CBB00 | 3B E0 00 00 */	li r31, 0x0
/* 813CBB04 | 48 00 00 0C */	b .L_813CBB10
.L_813CBB08:
/* 813CBB08 | 7F E3 FB 78 */	mr r3, r31
/* 813CBB0C | 48 00 31 81 */	bl init__Q33ipl5scene10GCSaveDataFv
.L_813CBB10:
/* 813CBB10 | 7F E4 FB 78 */	mr r4, r31
/* 813CBB14 | 38 7E 00 AC */	addi r3, r30, 0xac
/* 813CBB18 | 48 14 67 C5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CBB1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBB20 | 7C 7F 1B 78 */	mr r31, r3
/* 813CBB24 | 40 82 FF E4 */	bne .L_813CBB08
.L_813CBB28:
/* 813CBB28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CBB2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CBB30 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CBB34 | 7C 08 03 A6 */	mtlr r0
/* 813CBB38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CBB3C | 4E 80 00 20 */	blr
.endfn start_scroll_l__Q33ipl5scene10MemoryCardFv

# .text:0x1D74 | 0x813CBB40 | size: 0xE0
# ipl::scene::MemoryCard::draw()
.fn draw__Q33ipl5scene10MemoryCardFv, global
/* 813CBB40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CBB44 | 7C 08 02 A6 */	mflr r0
/* 813CBB48 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813CBB4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CBB50 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813CBB54 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CBB58 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CBB5C | 7C 7E 1B 78 */	mr r30, r3
/* 813CBB60 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813CBB64 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813CBB68 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813CBB6C | 40 82 00 9C */	bne .L_813CBC08
/* 813CBB70 | 38 60 00 00 */	li r3, 0x0
/* 813CBB74 | 4B F9 6E F9 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813CBB78 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CBB7C | 4B F9 EC 21 */	bl draw__Q33ipl6layout6ObjectFv
/* 813CBB80 | 3B E0 00 00 */	li r31, 0x0
/* 813CBB84 | 48 00 00 0C */	b .L_813CBB90
.L_813CBB88:
/* 813CBB88 | 7F E3 FB 78 */	mr r3, r31
/* 813CBB8C | 48 00 2C 95 */	bl draw__Q33ipl5scene10GCSaveDataFv
.L_813CBB90:
/* 813CBB90 | 7F E4 FB 78 */	mr r4, r31
/* 813CBB94 | 38 7E 00 AC */	addi r3, r30, 0xac
/* 813CBB98 | 48 14 67 45 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CBB9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBBA0 | 7C 7F 1B 78 */	mr r31, r3
/* 813CBBA4 | 40 82 FF E4 */	bne .L_813CBB88
/* 813CBBA8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CBBAC | 38 8D 8C 50 */	li r4, lbl_81696C90@sda21
/* 813CBBB0 | 4B F9 EC 59 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813CBBB4 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813CBBB8 | 38 8D 8C 57 */	li r4, lbl_81696C97@sda21
/* 813CBBBC | 4B F9 EC 4D */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813CBBC0 | 80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 813CBBC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CBBC8 | 41 82 00 0C */	beq .L_813CBBD4
/* 813CBBCC | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813CBBD0 | 48 00 3A B9 */	bl draw__Q33ipl5scene8GCWindowFv
.L_813CBBD4:
/* 813CBBD4 | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 813CBBD8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CBBDC | 40 82 00 2C */	bne .L_813CBC08
/* 813CBBE0 | 3B E0 00 00 */	li r31, 0x0
/* 813CBBE4 | 48 00 00 0C */	b .L_813CBBF0
.L_813CBBE8:
/* 813CBBE8 | 7F E3 FB 78 */	mr r3, r31
/* 813CBBEC | 48 00 5A 0D */	bl draw__Q33ipl5scene11TextBalloonFv
.L_813CBBF0:
/* 813CBBF0 | 7F E4 FB 78 */	mr r4, r31
/* 813CBBF4 | 38 7E 00 BC */	addi r3, r30, 0xbc
/* 813CBBF8 | 48 14 66 E5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CBBFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBC00 | 7C 7F 1B 78 */	mr r31, r3
/* 813CBC04 | 40 82 FF E4 */	bne .L_813CBBE8
.L_813CBC08:
/* 813CBC08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CBC0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CBC10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CBC14 | 7C 08 03 A6 */	mtlr r0
/* 813CBC18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CBC1C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene10MemoryCardFv

# .text:0x1E54 | 0x813CBC20 | size: 0x100
# ipl::scene::MemoryCard::onPoint(const char*, ipl::controller::Interface*)
.fn onPoint__Q33ipl5scene10MemoryCardFPCcPQ33ipl10controller9Interface, global
/* 813CBC20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CBC24 | 7C 08 02 A6 */	mflr r0
/* 813CBC28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CBC2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CBC30 | 48 22 D8 95 */	bl _savegpr_28
/* 813CBC34 | 81 83 00 54 */	lwz r12, 0x54(r3)
/* 813CBC38 | 7C 7C 1B 78 */	mr r28, r3
/* 813CBC3C | 7C 9D 23 78 */	mr r29, r4
/* 813CBC40 | 7C BE 2B 78 */	mr r30, r5
/* 813CBC44 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CBC48 | 7D 89 03 A6 */	mtctr r12
/* 813CBC4C | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CBC50 | 4E 80 04 21 */	bctrl
/* 813CBC54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBC58 | 7C 7F 1B 78 */	mr r31, r3
/* 813CBC5C | 41 82 00 AC */	beq .L_813CBD08
/* 813CBC60 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813CBC64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CBC68 | 40 82 00 94 */	bne .L_813CBCFC
/* 813CBC6C | 3C 80 81 65 */	lis r4, lbl_81652384@ha
/* 813CBC70 | 7F A3 EB 78 */	mr r3, r29
/* 813CBC74 | 38 84 23 84 */	addi r4, r4, lbl_81652384@l
/* 813CBC78 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813CBC7C | 48 23 68 05 */	bl strcmp
/* 813CBC80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBC84 | 40 82 00 10 */	bne .L_813CBC94
/* 813CBC88 | 88 1C 00 90 */	lbz r0, 0x90(r28)
/* 813CBC8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CBC90 | 41 82 00 6C */	beq .L_813CBCFC
.L_813CBC94:
/* 813CBC94 | 3C 80 81 65 */	lis r4, lbl_81652384@ha
/* 813CBC98 | 7F A3 EB 78 */	mr r3, r29
/* 813CBC9C | 38 84 23 84 */	addi r4, r4, lbl_81652384@l
/* 813CBCA0 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 813CBCA4 | 48 23 67 DD */	bl strcmp
/* 813CBCA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBCAC | 40 82 00 10 */	bne .L_813CBCBC
/* 813CBCB0 | 88 1C 00 90 */	lbz r0, 0x90(r28)
/* 813CBCB4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813CBCB8 | 41 82 00 44 */	beq .L_813CBCFC
.L_813CBCBC:
/* 813CBCBC | 7F E3 FB 78 */	mr r3, r31
/* 813CBCC0 | 38 80 00 01 */	li r4, 0x1
/* 813CBCC4 | 48 00 10 D9 */	bl onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi
/* 813CBCC8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813CBCCC | 3C 80 81 65 */	lis r4, lbl_816524C1@ha
/* 813CBCD0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813CBCD4 | 38 84 24 C1 */	addi r4, r4, lbl_816524C1@l
/* 813CBCD8 | 4B F9 F7 95 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813CBCDC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813CBCE0 | 41 82 00 1C */	beq .L_813CBCFC
/* 813CBCE4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CBCE8 | 7F C3 F3 78 */	mr r3, r30
/* 813CBCEC | 38 80 00 00 */	li r4, 0x0
/* 813CBCF0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CBCF4 | 7D 89 03 A6 */	mtctr r12
/* 813CBCF8 | 4E 80 04 21 */	bctrl
.L_813CBCFC:
/* 813CBCFC | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813CBD00 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813CBD04 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_813CBD08:
/* 813CBD08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CBD0C | 48 22 D8 05 */	bl _restgpr_28
/* 813CBD10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CBD14 | 7C 08 03 A6 */	mtlr r0
/* 813CBD18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CBD1C | 4E 80 00 20 */	blr
.endfn onPoint__Q33ipl5scene10MemoryCardFPCcPQ33ipl10controller9Interface

# .text:0x1F54 | 0x813CBD20 | size: 0xC8
# ipl::scene::MemoryCard::onLeft(const char*)
.fn onLeft__Q33ipl5scene10MemoryCardFPCc, global
/* 813CBD20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CBD24 | 7C 08 02 A6 */	mflr r0
/* 813CBD28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CBD2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CBD30 | 48 22 D7 99 */	bl _savegpr_29
/* 813CBD34 | 81 83 00 54 */	lwz r12, 0x54(r3)
/* 813CBD38 | 7C 7D 1B 78 */	mr r29, r3
/* 813CBD3C | 7C 9E 23 78 */	mr r30, r4
/* 813CBD40 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CBD44 | 7D 89 03 A6 */	mtctr r12
/* 813CBD48 | 38 63 00 54 */	addi r3, r3, 0x54
/* 813CBD4C | 4E 80 04 21 */	bctrl
/* 813CBD50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBD54 | 7C 7F 1B 78 */	mr r31, r3
/* 813CBD58 | 41 82 00 78 */	beq .L_813CBDD0
/* 813CBD5C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813CBD60 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813CBD64 | 40 82 00 60 */	bne .L_813CBDC4
/* 813CBD68 | 3C 80 81 65 */	lis r4, lbl_81652384@ha
/* 813CBD6C | 7F C3 F3 78 */	mr r3, r30
/* 813CBD70 | 38 84 23 84 */	addi r4, r4, lbl_81652384@l
/* 813CBD74 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813CBD78 | 48 23 67 09 */	bl strcmp
/* 813CBD7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBD80 | 40 82 00 10 */	bne .L_813CBD90
/* 813CBD84 | 88 1D 00 90 */	lbz r0, 0x90(r29)
/* 813CBD88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CBD8C | 41 82 00 38 */	beq .L_813CBDC4
.L_813CBD90:
/* 813CBD90 | 3C 80 81 65 */	lis r4, lbl_81652384@ha
/* 813CBD94 | 7F C3 F3 78 */	mr r3, r30
/* 813CBD98 | 38 84 23 84 */	addi r4, r4, lbl_81652384@l
/* 813CBD9C | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 813CBDA0 | 48 23 66 E1 */	bl strcmp
/* 813CBDA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBDA8 | 40 82 00 10 */	bne .L_813CBDB8
/* 813CBDAC | 88 1D 00 90 */	lbz r0, 0x90(r29)
/* 813CBDB0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813CBDB4 | 41 82 00 10 */	beq .L_813CBDC4
.L_813CBDB8:
/* 813CBDB8 | 7F E3 FB 78 */	mr r3, r31
/* 813CBDBC | 38 80 00 02 */	li r4, 0x2
/* 813CBDC0 | 48 00 0F DD */	bl onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi
.L_813CBDC4:
/* 813CBDC4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813CBDC8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813CBDCC | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_813CBDD0:
/* 813CBDD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CBDD4 | 48 22 D7 41 */	bl _restgpr_29
/* 813CBDD8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CBDDC | 7C 08 03 A6 */	mtlr r0
/* 813CBDE0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CBDE4 | 4E 80 00 20 */	blr
.endfn onLeft__Q33ipl5scene10MemoryCardFPCc

# .text:0x201C | 0x813CBDE8 | size: 0x234
# ipl::scene::MemoryCard::onTrig(const char*)
.fn onTrig__Q33ipl5scene10MemoryCardFPCc, global
/* 813CBDE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CBDEC | 7C 08 02 A6 */	mflr r0
/* 813CBDF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CBDF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CBDF8 | 48 22 D6 D1 */	bl _savegpr_29
/* 813CBDFC | 80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 813CBE00 | 7C 7D 1B 78 */	mr r29, r3
/* 813CBE04 | 7C 9E 23 78 */	mr r30, r4
/* 813CBE08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CBE0C | 40 82 01 F8 */	bne .L_813CC004
/* 813CBE10 | 85 83 00 54 */	lwzu r12, 0x54(r3)
/* 813CBE14 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CBE18 | 7D 89 03 A6 */	mtctr r12
/* 813CBE1C | 4E 80 04 21 */	bctrl
/* 813CBE20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBE24 | 41 82 01 E0 */	beq .L_813CC004
/* 813CBE28 | 3F E0 81 65 */	lis r31, lbl_81652384@ha
/* 813CBE2C | 7F C3 F3 78 */	mr r3, r30
/* 813CBE30 | 80 9F 23 84 */	lwz r4, lbl_81652384@l(r31)
/* 813CBE34 | 48 23 66 4D */	bl strcmp
/* 813CBE38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBE3C | 40 82 00 28 */	bne .L_813CBE64
/* 813CBE40 | 81 9D 00 54 */	lwz r12, 0x54(r29)
/* 813CBE44 | 38 7D 00 54 */	addi r3, r29, 0x54
/* 813CBE48 | 38 80 00 0E */	li r4, 0xe
/* 813CBE4C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBE50 | 7D 89 03 A6 */	mtctr r12
/* 813CBE54 | 4E 80 04 21 */	bctrl
/* 813CBE58 | 7F A3 EB 78 */	mr r3, r29
/* 813CBE5C | 4B FF FB 85 */	bl start_scroll_r__Q33ipl5scene10MemoryCardFv
/* 813CBE60 | 48 00 01 A4 */	b .L_813CC004
.L_813CBE64:
/* 813CBE64 | 3B FF 23 84 */	addi r31, r31, lbl_81652384@l
/* 813CBE68 | 7F C3 F3 78 */	mr r3, r30
/* 813CBE6C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 813CBE70 | 48 23 66 11 */	bl strcmp
/* 813CBE74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBE78 | 40 82 00 28 */	bne .L_813CBEA0
/* 813CBE7C | 81 9D 00 54 */	lwz r12, 0x54(r29)
/* 813CBE80 | 38 7D 00 54 */	addi r3, r29, 0x54
/* 813CBE84 | 38 80 00 0F */	li r4, 0xf
/* 813CBE88 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBE8C | 7D 89 03 A6 */	mtctr r12
/* 813CBE90 | 4E 80 04 21 */	bctrl
/* 813CBE94 | 7F A3 EB 78 */	mr r3, r29
/* 813CBE98 | 4B FF FB F9 */	bl start_scroll_l__Q33ipl5scene10MemoryCardFv
/* 813CBE9C | 48 00 01 68 */	b .L_813CC004
.L_813CBEA0:
/* 813CBEA0 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 813CBEA4 | 7F C3 F3 78 */	mr r3, r30
/* 813CBEA8 | 48 23 65 D9 */	bl strcmp
/* 813CBEAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBEB0 | 40 82 00 A4 */	bne .L_813CBF54
/* 813CBEB4 | 88 1D 00 90 */	lbz r0, 0x90(r29)
/* 813CBEB8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813CBEBC | 40 82 01 48 */	bne .L_813CC004
/* 813CBEC0 | 81 9D 00 54 */	lwz r12, 0x54(r29)
/* 813CBEC4 | 38 7D 00 54 */	addi r3, r29, 0x54
/* 813CBEC8 | 38 80 00 0B */	li r4, 0xb
/* 813CBECC | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBED0 | 7D 89 03 A6 */	mtctr r12
/* 813CBED4 | 4E 80 04 21 */	bctrl
/* 813CBED8 | 3B E0 00 00 */	li r31, 0x0
/* 813CBEDC | 48 00 00 1C */	b .L_813CBEF8
.L_813CBEE0:
/* 813CBEE0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CBEE4 | 7F E3 FB 78 */	mr r3, r31
/* 813CBEE8 | 38 80 00 01 */	li r4, 0x1
/* 813CBEEC | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBEF0 | 7D 89 03 A6 */	mtctr r12
/* 813CBEF4 | 4E 80 04 21 */	bctrl
.L_813CBEF8:
/* 813CBEF8 | 7F E4 FB 78 */	mr r4, r31
/* 813CBEFC | 38 7D 00 AC */	addi r3, r29, 0xac
/* 813CBF00 | 48 14 63 DD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CBF04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBF08 | 7C 7F 1B 78 */	mr r31, r3
/* 813CBF0C | 40 82 FF D4 */	bne .L_813CBEE0
/* 813CBF10 | 80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 813CBF14 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813CBF18 | 40 82 00 1C */	bne .L_813CBF34
/* 813CBF1C | 81 9D 00 54 */	lwz r12, 0x54(r29)
/* 813CBF20 | 38 7D 00 54 */	addi r3, r29, 0x54
/* 813CBF24 | 38 80 00 1A */	li r4, 0x1a
/* 813CBF28 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBF2C | 7D 89 03 A6 */	mtctr r12
/* 813CBF30 | 4E 80 04 21 */	bctrl
.L_813CBF34:
/* 813CBF34 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813CBF38 | 3C 80 81 65 */	lis r4, lbl_816524D7@ha
/* 813CBF3C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813CBF40 | 38 84 24 D7 */	addi r4, r4, lbl_816524D7@l
/* 813CBF44 | 4B F9 F5 29 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813CBF48 | 38 00 00 05 */	li r0, 0x5
/* 813CBF4C | 90 1D 00 88 */	stw r0, 0x88(r29)
/* 813CBF50 | 48 00 00 B4 */	b .L_813CC004
.L_813CBF54:
/* 813CBF54 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813CBF58 | 7F C3 F3 78 */	mr r3, r30
/* 813CBF5C | 48 23 65 25 */	bl strcmp
/* 813CBF60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBF64 | 40 82 00 A0 */	bne .L_813CC004
/* 813CBF68 | 88 1D 00 90 */	lbz r0, 0x90(r29)
/* 813CBF6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CBF70 | 40 82 00 94 */	bne .L_813CC004
/* 813CBF74 | 81 9D 00 54 */	lwz r12, 0x54(r29)
/* 813CBF78 | 38 7D 00 54 */	addi r3, r29, 0x54
/* 813CBF7C | 38 80 00 08 */	li r4, 0x8
/* 813CBF80 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBF84 | 7D 89 03 A6 */	mtctr r12
/* 813CBF88 | 4E 80 04 21 */	bctrl
/* 813CBF8C | 3B E0 00 00 */	li r31, 0x0
/* 813CBF90 | 48 00 00 1C */	b .L_813CBFAC
.L_813CBF94:
/* 813CBF94 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CBF98 | 7F E3 FB 78 */	mr r3, r31
/* 813CBF9C | 38 80 00 01 */	li r4, 0x1
/* 813CBFA0 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBFA4 | 7D 89 03 A6 */	mtctr r12
/* 813CBFA8 | 4E 80 04 21 */	bctrl
.L_813CBFAC:
/* 813CBFAC | 7F E4 FB 78 */	mr r4, r31
/* 813CBFB0 | 38 7D 00 AC */	addi r3, r29, 0xac
/* 813CBFB4 | 48 14 63 29 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CBFB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CBFBC | 7C 7F 1B 78 */	mr r31, r3
/* 813CBFC0 | 40 82 FF D4 */	bne .L_813CBF94
/* 813CBFC4 | 80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 813CBFC8 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813CBFCC | 40 82 00 1C */	bne .L_813CBFE8
/* 813CBFD0 | 81 9D 00 54 */	lwz r12, 0x54(r29)
/* 813CBFD4 | 38 7D 00 54 */	addi r3, r29, 0x54
/* 813CBFD8 | 38 80 00 1A */	li r4, 0x1a
/* 813CBFDC | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CBFE0 | 7D 89 03 A6 */	mtctr r12
/* 813CBFE4 | 4E 80 04 21 */	bctrl
.L_813CBFE8:
/* 813CBFE8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813CBFEC | 3C 80 81 65 */	lis r4, lbl_816524D7@ha
/* 813CBFF0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813CBFF4 | 38 84 24 D7 */	addi r4, r4, lbl_816524D7@l
/* 813CBFF8 | 4B F9 F4 75 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813CBFFC | 38 00 00 05 */	li r0, 0x5
/* 813CC000 | 90 1D 00 88 */	stw r0, 0x88(r29)
.L_813CC004:
/* 813CC004 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC008 | 48 22 D5 0D */	bl _restgpr_29
/* 813CC00C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CC010 | 7C 08 03 A6 */	mtlr r0
/* 813CC014 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CC018 | 4E 80 00 20 */	blr
.endfn onTrig__Q33ipl5scene10MemoryCardFPCc

# .text:0x2250 | 0x813CC01C | size: 0x9C
# ipl::scene::MemoryCard::onFocus(void*)
.fn onFocus__Q33ipl5scene10MemoryCardFPv, global
/* 813CC01C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CC020 | 7C 08 02 A6 */	mflr r0
/* 813CC024 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CC028 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813CC02C | 7C 9F 23 78 */	mr r31, r4
/* 813CC030 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813CC034 | 7C 7E 1B 78 */	mr r30, r3
/* 813CC038 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813CC03C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CC040 | 40 82 00 60 */	bne .L_813CC0A0
/* 813CC044 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CC048 | 41 82 00 50 */	beq .L_813CC098
/* 813CC04C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813CC050 | 3C 80 81 65 */	lis r4, lbl_816524E7@ha
/* 813CC054 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813CC058 | 38 84 24 E7 */	addi r4, r4, lbl_816524E7@l
/* 813CC05C | 4B F9 F4 11 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813CC060 | 93 FE 00 C8 */	stw r31, 0xc8(r30)
/* 813CC064 | 7F E3 FB 78 */	mr r3, r31
/* 813CC068 | 48 00 2B E1 */	bl getTranslate__Q33ipl5scene10GCSaveDataFv
/* 813CC06C | 7C 64 1B 78 */	mr r4, r3
/* 813CC070 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813CC074 | 4B FC B5 31 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813CC078 | 7C 64 1B 78 */	mr r4, r3
/* 813CC07C | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813CC080 | 80 BE 00 A4 */	lwz r5, 0xa4(r30)
/* 813CC084 | 88 DF 00 3C */	lbz r6, 0x3c(r31)
/* 813CC088 | A8 FF 00 3E */	lha r7, 0x3e(r31)
/* 813CC08C | 48 00 30 DD */	bl init__Q33ipl5scene8GCWindowFRCQ33ipl4math4VEC3PQ33ipl5scene17MemoryCardManagerUcs
/* 813CC090 | 38 7E 00 54 */	addi r3, r30, 0x54
/* 813CC094 | 48 00 0A AD */	bl change_button_text_close__Q33ipl5scene10MemoryBaseFv
.L_813CC098:
/* 813CC098 | 38 00 00 09 */	li r0, 0x9
/* 813CC09C | 90 1E 00 88 */	stw r0, 0x88(r30)
.L_813CC0A0:
/* 813CC0A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CC0A4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813CC0A8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813CC0AC | 7C 08 03 A6 */	mtlr r0
/* 813CC0B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CC0B4 | 4E 80 00 20 */	blr
.endfn onFocus__Q33ipl5scene10MemoryCardFPv

# .text:0x22EC | 0x813CC0B8 | size: 0x54
# ipl::scene::MemoryCard::onRelease()
.fn onRelease__Q33ipl5scene10MemoryCardFv, global
/* 813CC0B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC0BC | 7C 08 02 A6 */	mflr r0
/* 813CC0C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC0C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CC0C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813CC0CC | 80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 813CC0D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CC0D4 | 41 82 00 14 */	beq .L_813CC0E8
/* 813CC0D8 | 80 64 00 38 */	lwz r3, 0x38(r4)
/* 813CC0DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CC0E0 | 41 82 00 08 */	beq .L_813CC0E8
/* 813CC0E4 | 48 00 55 85 */	bl terminate__Q33ipl5scene11TextBalloonFv
.L_813CC0E8:
/* 813CC0E8 | 38 60 00 00 */	li r3, 0x0
/* 813CC0EC | 38 00 00 02 */	li r0, 0x2
/* 813CC0F0 | 90 7F 00 C8 */	stw r3, 0xc8(r31)
/* 813CC0F4 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813CC0F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CC0FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC100 | 7C 08 03 A6 */	mtlr r0
/* 813CC104 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC108 | 4E 80 00 20 */	blr
.endfn onRelease__Q33ipl5scene10MemoryCardFv

# .text:0x2340 | 0x813CC10C | size: 0x2C
# ipl::scene::MemoryCard::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene10MemoryCardCFv, global
/* 813CC10C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC110 | 7C 08 02 A6 */	mflr r0
/* 813CC114 | 80 63 00 CC */	lwz r3, 0xcc(r3)
/* 813CC118 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC11C | 48 00 4C E5 */	bl isProcess__Q33ipl5scene8GCWindowFv
/* 813CC120 | 7C 60 00 34 */	cntlzw r0, r3
/* 813CC124 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813CC128 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC12C | 7C 08 03 A6 */	mtlr r0
/* 813CC130 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC134 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene10MemoryCardCFv

# .text:0x236C | 0x813CC138 | size: 0x4
# ipl::scene::MemoryBase::onMove(const char*)
.fn onMove__Q33ipl5scene10MemoryBaseFPCc, global
/* 813CC138 | 4E 80 00 20 */	blr
.endfn onMove__Q33ipl5scene10MemoryBaseFPCc

# .text:0x2370 | 0x813CC13C | size: 0x40
# ipl::scene::MemoryCardManager::~MemoryCardManager()
.fn __dt__Q33ipl5scene17MemoryCardManagerFv, global
/* 813CC13C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC140 | 7C 08 02 A6 */	mflr r0
/* 813CC144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CC148 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC14C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CC150 | 7C 7F 1B 78 */	mr r31, r3
/* 813CC154 | 41 82 00 10 */	beq .L_813CC164
/* 813CC158 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CC15C | 40 81 00 08 */	ble .L_813CC164
/* 813CC160 | 48 22 BF 85 */	bl __dl__FPv
.L_813CC164:
/* 813CC164 | 7F E3 FB 78 */	mr r3, r31
/* 813CC168 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CC16C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC170 | 7C 08 03 A6 */	mtlr r0
/* 813CC174 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC178 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene17MemoryCardManagerFv

# .text:0x23B0 | 0x813CC17C | size: 0x58
# ipl::scene::MemoryCard::~MemoryCard()
.fn __dt__Q33ipl5scene10MemoryCardFv, global
/* 813CC17C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC180 | 7C 08 02 A6 */	mflr r0
/* 813CC184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CC188 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC18C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CC190 | 7C 9F 23 78 */	mr r31, r4
/* 813CC194 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CC198 | 7C 7E 1B 78 */	mr r30, r3
/* 813CC19C | 41 82 00 1C */	beq .L_813CC1B8
/* 813CC1A0 | 38 80 00 00 */	li r4, 0x0
/* 813CC1A4 | 48 03 DA C1 */	bl fn_81409C64
/* 813CC1A8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813CC1AC | 40 81 00 0C */	ble .L_813CC1B8
/* 813CC1B0 | 7F C3 F3 78 */	mr r3, r30
/* 813CC1B4 | 48 22 BF 31 */	bl __dl__FPv
.L_813CC1B8:
/* 813CC1B8 | 7F C3 F3 78 */	mr r3, r30
/* 813CC1BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CC1C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CC1C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC1C8 | 7C 08 03 A6 */	mtlr r0
/* 813CC1CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC1D0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene10MemoryCardFv

# .text:0x2408 | 0x813CC1D4 | size: 0x8
.fn "@20@__dt__Q33ipl5scene10MemoryCardFv", global
/* 813CC1D4 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813CC1D8 | 4B FF FF A4 */	b __dt__Q33ipl5scene10MemoryCardFv
.endfn "@20@__dt__Q33ipl5scene10MemoryCardFv"

# .text:0x2410 | 0x813CC1DC | size: 0x8
# ipl::scene::MemoryCard::@84@onTrig(const char*)
.fn "@84@onTrig__Q33ipl5scene10MemoryCardFPCc", global
/* 813CC1DC | 38 63 FF AC */	subi r3, r3, 0x54
/* 813CC1E0 | 4B FF FC 08 */	b onTrig__Q33ipl5scene10MemoryCardFPCc
.endfn "@84@onTrig__Q33ipl5scene10MemoryCardFPCc"

# .text:0x2418 | 0x813CC1E4 | size: 0x8
# ipl::scene::MemoryCard::@84@onLeft(const char*)
.fn "@84@onLeft__Q33ipl5scene10MemoryCardFPCc", global
/* 813CC1E4 | 38 63 FF AC */	subi r3, r3, 0x54
/* 813CC1E8 | 4B FF FB 38 */	b onLeft__Q33ipl5scene10MemoryCardFPCc
.endfn "@84@onLeft__Q33ipl5scene10MemoryCardFPCc"

# .text:0x2420 | 0x813CC1EC | size: 0x8
# ipl::scene::MemoryCard::@84@onPoint(const char*, ipl::controller::Interface*)
.fn "@84@onPoint__Q33ipl5scene10MemoryCardFPCcPQ33ipl10controller9Interface", global
/* 813CC1EC | 38 63 FF AC */	subi r3, r3, 0x54
/* 813CC1F0 | 4B FF FA 30 */	b onPoint__Q33ipl5scene10MemoryCardFPCcPQ33ipl10controller9Interface
.endfn "@84@onPoint__Q33ipl5scene10MemoryCardFPCcPQ33ipl10controller9Interface"

# .text:0x2428 | 0x813CC1F4 | size: 0x8
.fn "@84@__dt__Q33ipl5scene10MemoryCardFv", global
/* 813CC1F4 | 38 63 FF AC */	subi r3, r3, 0x54
/* 813CC1F8 | 4B FF FF 84 */	b __dt__Q33ipl5scene10MemoryCardFv
.endfn "@84@__dt__Q33ipl5scene10MemoryCardFv"

# 0x81610368..0x81610480 | size: 0x118
.rodata
.balign 8

# .rodata:0x0 | 0x81610368 | size: 0xD8
.obj lbl_81610368, global
	.4byte lbl_81652000
	.4byte lbl_81652022
	.4byte lbl_8165202B
	.4byte lbl_81652049
	.4byte lbl_81652053
	.4byte lbl_81652073
	.4byte lbl_81652053
	.4byte lbl_8165207F
	.4byte lbl_8165208A
	.4byte lbl_81652049
	.4byte lbl_81652053
	.4byte lbl_816520A9
	.4byte lbl_816520B2
	.4byte lbl_81652073
	.4byte lbl_816520DB
	.4byte lbl_81652073
	.4byte lbl_81652105
	.4byte lbl_816520A9
	.4byte lbl_8165212B
	.4byte lbl_8165207F
	.4byte lbl_8165214D
	.4byte lbl_8165207F
	.4byte lbl_81652170
	.4byte lbl_816520A9
	.4byte lbl_81652195
	.4byte lbl_81696C78
	.4byte lbl_816521B2
	.4byte lbl_81696C78
	.4byte lbl_816521CF
	.4byte lbl_816521ED
	.4byte lbl_816521CF
	.4byte lbl_816521F7
	.4byte lbl_81652201
	.4byte lbl_81652220
	.4byte lbl_81652201
	.4byte lbl_8165222D
	.4byte lbl_8165223A
	.4byte lbl_81652220
	.4byte lbl_8165223A
	.4byte lbl_8165222D
	.4byte lbl_8165225A
	.4byte lbl_81652276
	.4byte lbl_81652280
	.4byte lbl_8165229E
	.4byte lbl_81652280
	.4byte lbl_816522A9
	.4byte lbl_816522B4
	.4byte lbl_8165229E
	.4byte lbl_816522B4
	.4byte lbl_816522A9
	.4byte lbl_816522D0
	.4byte lbl_816522F2
	.4byte lbl_816522FD
	.4byte lbl_816522F2
.endobj lbl_81610368

# .rodata:0xD8 | 0x81610440 | size: 0x28
.obj lbl_81610440, global
	.4byte lbl_81652320
	.4byte 0x0000013F
	.4byte lbl_8165232F
	.4byte 0x0000013F
	.4byte lbl_8165233E
	.4byte 0x00000140
	.4byte lbl_8165234C
	.4byte 0x00000140
	.4byte lbl_8165235A
	.4byte 0x000000E6
.endobj lbl_81610440

# .rodata:0x100 | 0x81610468 | size: 0x18
.obj lbl_81610468, global
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
	.2byte 0x0000
	.2byte 0x0000
.endobj lbl_81610468

# 0x81651D30..0x81652640 | size: 0x910
.data
.balign 8

# .data:0x0 | 0x81651D30 | size: 0xC
.obj lbl_81651D30, global
	.string "N_Data_a_00"
.endobj lbl_81651D30

# .data:0xC | 0x81651D3C | size: 0xC
.obj lbl_81651D3C, global
	.string "N_Data_a_01"
.endobj lbl_81651D3C

# .data:0x18 | 0x81651D48 | size: 0xC
.obj lbl_81651D48, global
	.string "N_Data_a_02"
.endobj lbl_81651D48

# .data:0x24 | 0x81651D54 | size: 0xC
.obj lbl_81651D54, global
	.string "N_Data_a_03"
.endobj lbl_81651D54

# .data:0x30 | 0x81651D60 | size: 0xC
.obj lbl_81651D60, global
	.string "N_Data_a_04"
.endobj lbl_81651D60

# .data:0x3C | 0x81651D6C | size: 0xC
.obj lbl_81651D6C, global
	.string "N_Data_a_05"
.endobj lbl_81651D6C

# .data:0x48 | 0x81651D78 | size: 0xC
.obj lbl_81651D78, global
	.string "N_Data_a_06"
.endobj lbl_81651D78

# .data:0x54 | 0x81651D84 | size: 0xC
.obj lbl_81651D84, global
	.string "N_Data_a_07"
.endobj lbl_81651D84

# .data:0x60 | 0x81651D90 | size: 0xC
.obj lbl_81651D90, global
	.string "N_Data_a_08"
.endobj lbl_81651D90

# .data:0x6C | 0x81651D9C | size: 0xC
.obj lbl_81651D9C, global
	.string "N_Data_a_09"
.endobj lbl_81651D9C

# .data:0x78 | 0x81651DA8 | size: 0xC
.obj lbl_81651DA8, global
	.string "N_Data_a_10"
.endobj lbl_81651DA8

# .data:0x84 | 0x81651DB4 | size: 0xC
.obj lbl_81651DB4, global
	.string "N_Data_a_11"
.endobj lbl_81651DB4

# .data:0x90 | 0x81651DC0 | size: 0xC
.obj lbl_81651DC0, global
	.string "N_Data_a_12"
.endobj lbl_81651DC0

# .data:0x9C | 0x81651DCC | size: 0xC
.obj lbl_81651DCC, global
	.string "N_Data_a_13"
.endobj lbl_81651DCC

# .data:0xA8 | 0x81651DD8 | size: 0xC
.obj lbl_81651DD8, global
	.string "N_Data_a_14"
.endobj lbl_81651DD8

# .data:0xB4 | 0x81651DE4 | size: 0xC
.obj lbl_81651DE4, global
	.string "N_Data_b_00"
.endobj lbl_81651DE4

# .data:0xC0 | 0x81651DF0 | size: 0xC
.obj lbl_81651DF0, global
	.string "N_Data_b_01"
.endobj lbl_81651DF0

# .data:0xCC | 0x81651DFC | size: 0xC
.obj lbl_81651DFC, global
	.string "N_Data_b_02"
.endobj lbl_81651DFC

# .data:0xD8 | 0x81651E08 | size: 0xC
.obj lbl_81651E08, global
	.string "N_Data_b_03"
.endobj lbl_81651E08

# .data:0xE4 | 0x81651E14 | size: 0xC
.obj lbl_81651E14, global
	.string "N_Data_b_04"
.endobj lbl_81651E14

# .data:0xF0 | 0x81651E20 | size: 0xC
.obj lbl_81651E20, global
	.string "N_Data_b_05"
.endobj lbl_81651E20

# .data:0xFC | 0x81651E2C | size: 0xC
.obj lbl_81651E2C, global
	.string "N_Data_b_06"
.endobj lbl_81651E2C

# .data:0x108 | 0x81651E38 | size: 0xC
.obj lbl_81651E38, global
	.string "N_Data_b_07"
.endobj lbl_81651E38

# .data:0x114 | 0x81651E44 | size: 0xC
.obj lbl_81651E44, global
	.string "N_Data_b_08"
.endobj lbl_81651E44

# .data:0x120 | 0x81651E50 | size: 0xC
.obj lbl_81651E50, global
	.string "N_Data_b_09"
.endobj lbl_81651E50

# .data:0x12C | 0x81651E5C | size: 0xC
.obj lbl_81651E5C, global
	.string "N_Data_b_10"
.endobj lbl_81651E5C

# .data:0x138 | 0x81651E68 | size: 0xC
.obj lbl_81651E68, global
	.string "N_Data_b_11"
.endobj lbl_81651E68

# .data:0x144 | 0x81651E74 | size: 0xC
.obj lbl_81651E74, global
	.string "N_Data_b_12"
.endobj lbl_81651E74

# .data:0x150 | 0x81651E80 | size: 0xC
.obj lbl_81651E80, global
	.string "N_Data_b_13"
.endobj lbl_81651E80

# .data:0x15C | 0x81651E8C | size: 0xC
.obj lbl_81651E8C, global
	.string "N_Data_b_14"
.endobj lbl_81651E8C

# .data:0x168 | 0x81651E98 | size: 0xC
.obj lbl_81651E98, global
	.string "N_Data_c_00"
.endobj lbl_81651E98

# .data:0x174 | 0x81651EA4 | size: 0xC
.obj lbl_81651EA4, global
	.string "N_Data_c_01"
.endobj lbl_81651EA4

# .data:0x180 | 0x81651EB0 | size: 0xC
.obj lbl_81651EB0, global
	.string "N_Data_c_02"
.endobj lbl_81651EB0

# .data:0x18C | 0x81651EBC | size: 0xC
.obj lbl_81651EBC, global
	.string "N_Data_c_03"
.endobj lbl_81651EBC

# .data:0x198 | 0x81651EC8 | size: 0xC
.obj lbl_81651EC8, global
	.string "N_Data_c_04"
.endobj lbl_81651EC8

# .data:0x1A4 | 0x81651ED4 | size: 0xC
.obj lbl_81651ED4, global
	.string "N_Data_c_05"
.endobj lbl_81651ED4

# .data:0x1B0 | 0x81651EE0 | size: 0xC
.obj lbl_81651EE0, global
	.string "N_Data_c_06"
.endobj lbl_81651EE0

# .data:0x1BC | 0x81651EEC | size: 0xC
.obj lbl_81651EEC, global
	.string "N_Data_c_07"
.endobj lbl_81651EEC

# .data:0x1C8 | 0x81651EF8 | size: 0xC
.obj lbl_81651EF8, global
	.string "N_Data_c_08"
.endobj lbl_81651EF8

# .data:0x1D4 | 0x81651F04 | size: 0xC
.obj lbl_81651F04, global
	.string "N_Data_c_09"
.endobj lbl_81651F04

# .data:0x1E0 | 0x81651F10 | size: 0xC
.obj lbl_81651F10, global
	.string "N_Data_c_10"
.endobj lbl_81651F10

# .data:0x1EC | 0x81651F1C | size: 0xC
.obj lbl_81651F1C, global
	.string "N_Data_c_11"
.endobj lbl_81651F1C

# .data:0x1F8 | 0x81651F28 | size: 0xC
.obj lbl_81651F28, global
	.string "N_Data_c_12"
.endobj lbl_81651F28

# .data:0x204 | 0x81651F34 | size: 0xC
.obj lbl_81651F34, global
	.string "N_Data_c_13"
.endobj lbl_81651F34

# .data:0x210 | 0x81651F40 | size: 0xC
.obj lbl_81651F40, global
	.string "N_Data_c_14"
.endobj lbl_81651F40

# .data:0x21C | 0x81651F4C | size: 0xB4
.obj lbl_81651F4C, global
	.4byte lbl_81651D30
	.4byte lbl_81651D3C
	.4byte lbl_81651D48
	.4byte lbl_81651D54
	.4byte lbl_81651D60
	.4byte lbl_81651D6C
	.4byte lbl_81651D78
	.4byte lbl_81651D84
	.4byte lbl_81651D90
	.4byte lbl_81651D9C
	.4byte lbl_81651DA8
	.4byte lbl_81651DB4
	.4byte lbl_81651DC0
	.4byte lbl_81651DCC
	.4byte lbl_81651DD8
	.4byte lbl_81651DE4
	.4byte lbl_81651DF0
	.4byte lbl_81651DFC
	.4byte lbl_81651E08
	.4byte lbl_81651E14
	.4byte lbl_81651E20
	.4byte lbl_81651E2C
	.4byte lbl_81651E38
	.4byte lbl_81651E44
	.4byte lbl_81651E50
	.4byte lbl_81651E5C
	.4byte lbl_81651E68
	.4byte lbl_81651E74
	.4byte lbl_81651E80
	.4byte lbl_81651E8C
	.4byte lbl_81651E98
	.4byte lbl_81651EA4
	.4byte lbl_81651EB0
	.4byte lbl_81651EBC
	.4byte lbl_81651EC8
	.4byte lbl_81651ED4
	.4byte lbl_81651EE0
	.4byte lbl_81651EEC
	.4byte lbl_81651EF8
	.4byte lbl_81651F04
	.4byte lbl_81651F10
	.4byte lbl_81651F1C
	.4byte lbl_81651F28
	.4byte lbl_81651F34
	.4byte lbl_81651F40
.endobj lbl_81651F4C

# .data:0x2D0 | 0x81652000 | size: 0x22
.obj lbl_81652000, global
	.string "it_ObjCubeEdit_a_CubeSwitch.brlan"
.endobj lbl_81652000

# .data:0x2F2 | 0x81652022 | size: 0x9
.obj lbl_81652022, global
	.string "G_Switch"
.endobj lbl_81652022

# .data:0x2FB | 0x8165202B | size: 0x1E
.obj lbl_8165202B, global
	.string "it_ObjCubeEdit_a_DataIn.brlan"
.endobj lbl_8165202B

# .data:0x319 | 0x81652049 | size: 0xA
.obj lbl_81652049, global
	.string "G_DataAll"
.endobj lbl_81652049

# .data:0x323 | 0x81652053 | size: 0x20
.obj lbl_81652053, global
	.string "it_ObjCubeEdit_a_SelectIn.brlan"
.endobj lbl_81652053

# .data:0x343 | 0x81652073 | size: 0xC
.obj lbl_81652073, global
	.string "G_SelectWii"
.endobj lbl_81652073

# .data:0x34F | 0x8165207F | size: 0xB
.obj lbl_8165207F, global
	.string "G_SelectSd"
.endobj lbl_8165207F

# .data:0x35A | 0x8165208A | size: 0x1F
.obj lbl_8165208A, global
	.string "it_ObjCubeEdit_a_DataOut.brlan"
.endobj lbl_8165208A

# .data:0x379 | 0x816520A9 | size: 0x9
.obj lbl_816520A9, global
	.string "G_Select"
.endobj lbl_816520A9

# .data:0x382 | 0x816520B2 | size: 0x29
.obj lbl_816520B2, global
	.string "it_ObjCubeEdit_a_SelectWiiFoucusIn.brlan"
.endobj lbl_816520B2

# .data:0x3AB | 0x816520DB | size: 0x2A
.obj lbl_816520DB, global
	.string "it_ObjCubeEdit_a_SelectWiiFoucusOut.brlan"
.endobj lbl_816520DB

# .data:0x3D5 | 0x81652105 | size: 0x26
.obj lbl_81652105, global
	.string "it_ObjCubeEdit_a_SelectWiiFlash.brlan"
.endobj lbl_81652105

# .data:0x3FB | 0x8165212B | size: 0x22
.obj lbl_8165212B, global
	.string "it_ObjCubeEdit_a_SelectSdIn.brlan"
.endobj lbl_8165212B

# .data:0x41D | 0x8165214D | size: 0x23
.obj lbl_8165214D, global
	.string "it_ObjCubeEdit_a_SelectSdOut.brlan"
.endobj lbl_8165214D

# .data:0x440 | 0x81652170 | size: 0x25
.obj lbl_81652170, global
	.string "it_ObjCubeEdit_a_SelectSdFlash.brlan"
.endobj lbl_81652170

# .data:0x465 | 0x81652195 | size: 0x1D
.obj lbl_81652195, global
	.string "it_ObjCubeEdit_a_ArwL1.brlan"
.endobj lbl_81652195

# .data:0x482 | 0x816521B2 | size: 0x1D
.obj lbl_816521B2, global
	.string "it_ObjCubeEdit_a_AwrR1.brlan"
.endobj lbl_816521B2

# .data:0x49F | 0x816521CF | size: 0x1E
.obj lbl_816521CF, global
	.string "it_ObjCubeEdit_a_Select.brlan"
.endobj lbl_816521CF

# .data:0x4BD | 0x816521ED | size: 0xA
.obj lbl_816521ED, global
	.string "G_ArwR_Ac"
.endobj lbl_816521ED

# .data:0x4C7 | 0x816521F7 | size: 0xA
.obj lbl_816521F7, global
	.string "G_ArwL_Ac"
.endobj lbl_816521F7

# .data:0x4D1 | 0x81652201 | size: 0x1F
.obj lbl_81652201, global
	.string "it_ObjCubeEdit_a_FocusOn.brlan"
.endobj lbl_81652201

# .data:0x4F0 | 0x81652220 | size: 0xD
.obj lbl_81652220, global
	.string "G_ArwR_Focus"
.endobj lbl_81652220

# .data:0x4FD | 0x8165222D | size: 0xD
.obj lbl_8165222D, global
	.string "G_ArwL_Focus"
.endobj lbl_8165222D

# .data:0x50A | 0x8165223A | size: 0x20
.obj lbl_8165223A, global
	.string "it_ObjCubeEdit_a_FocusOff.brlan"
.endobj lbl_8165223A

# .data:0x52A | 0x8165225A | size: 0x1C
.obj lbl_8165225A, global
	.string "it_ObjCubeEdit_a_Loop.brlan"
.endobj lbl_8165225A

# .data:0x546 | 0x81652276 | size: 0xA
.obj lbl_81652276, global
	.string "G_ArwRoop"
.endobj lbl_81652276

# .data:0x550 | 0x81652280 | size: 0x1E
.obj lbl_81652280, global
	.string "it_ObjCubeEdit_a_Appear.brlan"
.endobj lbl_81652280

# .data:0x56E | 0x8165229E | size: 0xB
.obj lbl_8165229E, global
	.string "G_ArwR_End"
.endobj lbl_8165229E

# .data:0x579 | 0x816522A9 | size: 0xB
.obj lbl_816522A9, global
	.string "G_ArwL_End"
.endobj lbl_816522A9

# .data:0x584 | 0x816522B4 | size: 0x1C
.obj lbl_816522B4, global
	.string "it_ObjCubeEdit_a_Lost.brlan"
.endobj lbl_816522B4

# .data:0x5A0 | 0x816522D0 | size: 0x22
.obj lbl_816522D0, global
	.string "it_ObjCubeEdit_a_ErrorTxtIn.brlan"
.endobj lbl_816522D0

# .data:0x5C2 | 0x816522F2 | size: 0xB
.obj lbl_816522F2, global
	.string "G_ErrorTxt"
.endobj lbl_816522F2

# .data:0x5CD | 0x816522FD | size: 0x23
.obj lbl_816522FD, global
	.string "it_ObjCubeEdit_a_ErrorTxtOut.brlan"
.endobj lbl_816522FD

# .data:0x5F0 | 0x81652320 | size: 0xF
.obj lbl_81652320, global
	.string "T_SelectWii_00"
.endobj lbl_81652320

# .data:0x5FF | 0x8165232F | size: 0xF
.obj lbl_8165232F, global
	.string "T_SelectWii_01"
.endobj lbl_8165232F

# .data:0x60E | 0x8165233E | size: 0xE
.obj lbl_8165233E, global
	.string "T_SelectSd_00"
.endobj lbl_8165233E

# .data:0x61C | 0x8165234C | size: 0xE
.obj lbl_8165234C, global
	.string "T_SelectSd_01"
.endobj lbl_8165234C

# .data:0x62A | 0x8165235A | size: 0xB
.obj lbl_8165235A, global
	.string "T_Error_00"
.endobj lbl_8165235A

# .data:0x635 | 0x81652365 | size: 0xF
.obj lbl_81652365, global
	.string "B_SelectWii_00"
.endobj lbl_81652365

# .data:0x644 | 0x81652374 | size: 0x10
.obj lbl_81652374, global
	.4byte 0x425F5365
	.4byte 0x6C656374
	.4byte 0x53645F30
	.4byte 0x30000000
.endobj lbl_81652374

# .data:0x654 | 0x81652384 | size: 0x10
.obj lbl_81652384, global
	.4byte lbl_81696C7E
	.4byte lbl_81696C85
	.4byte lbl_81652365
	.4byte lbl_81652374
.endobj lbl_81652384

# .data:0x664 | 0x81652394 | size: 0xA
.obj lbl_81652394, global
	.string "gcMem.ash"
.endobj lbl_81652394

# .data:0x66E | 0x8165239E | size: 0x84
.obj lbl_8165239E, global
	.4byte 0x62616C6C
	.4byte 0x6F6F6E2E
	.4byte 0x61736800
	.4byte 0x202E2E2E
	.4byte 0x20776169
	.4byte 0x7420666F
	.4byte 0x72206273
	.4byte 0x32206162
	.4byte 0x6F72640A
	.4byte 0x002A2A2A
	.4byte 0x20425332
	.4byte 0x2061626F
	.4byte 0x72742063
	.4byte 0x6F737473
	.4byte 0x3A202564
	.4byte 0x6D730A00
	.4byte 0x69745F4F
	.4byte 0x626A4375
	.4byte 0x62654564
	.4byte 0x69745F61
	.4byte 0x2E62726C
	.4byte 0x79740069
	.4byte 0x745F4375
	.4byte 0x62654465
	.4byte 0x7461696C
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x75626545
	.4byte 0x6469745F
	.4byte 0x622E6272
	.4byte 0x6C797400
.endobj lbl_8165239E

# .data:0x6F2 | 0x81652422 | size: 0x23
.obj lbl_81652422, global
	.4byte 0x4E5F4461
	.4byte 0x74615F30
	.4byte 0x30006D79
	.4byte 0x5F49706C
	.4byte 0x546F7042
	.4byte 0x616C6C6F
	.4byte 0x6F6E5F61
	.4byte 0x2E62726C
	.byte 0x79, 0x74, 0x00
.endobj lbl_81652422

# .data:0x715 | 0x81652445 | size: 0xA
.obj lbl_81652445, global
	.string "N_Capa_00"
.endobj lbl_81652445

# .data:0x71F | 0x8165244F | size: 0xD
.obj lbl_8165244F, global
	.4byte 0x545F4572
	.4byte 0x726F725F
	.4byte 0x30300000
	.byte 0x00
.endobj lbl_8165244F

# .data:0x72C | 0x8165245C | size: 0x34
.obj jumptable_8165245C, local
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA8C4
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA8D0
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA8DC
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA8E8
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA8F4
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA900
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA90C
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA918
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA924
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA930
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA948
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA954
	.rel calc__Q33ipl5scene10MemoryCardFv, .L_813CA960
.endobj jumptable_8165245C

# .data:0x760 | 0x81652490 | size: 0x1C
.obj lbl_81652490, global
	.string " ... bs2 manager restarted\n"
.endobj lbl_81652490

# .data:0x77C | 0x816524AC | size: 0xA
.obj lbl_816524AC, global
	.string "T_Capa_00"
.endobj lbl_816524AC

# .data:0x786 | 0x816524B6 | size: 0xB
.obj lbl_816524B6, global
	.string "WSD_SELECT"
.endobj lbl_816524B6

# .data:0x791 | 0x816524C1 | size: 0x16
.obj lbl_816524C1, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_816524C1

# .data:0x7A7 | 0x816524D7 | size: 0x10
.obj lbl_816524D7, global
	.string "WIPL_SE_BT_PUSH"
.endobj lbl_816524D7

# .data:0x7B7 | 0x816524E7 | size: 0x11
.obj lbl_816524E7, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x44450000
	.byte 0x00
.endobj lbl_816524E7

# .data:0x7C8 | 0x816524F8 | size: 0xA8
# ipl::scene::MemoryCard::__vtable
.obj __vt__Q33ipl5scene10MemoryCard, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene10MemoryCardFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene10MemoryCardFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene10MemoryCardCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene10MemoryCardFv
	.4byte create__Q33ipl5scene10MemoryCardFv
	.4byte calc__Q33ipl5scene10MemoryCardFv
	.4byte draw__Q33ipl5scene10MemoryCardFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@84@__dt__Q33ipl5scene10MemoryCardFv"
	.4byte "@84@onPoint__Q33ipl5scene10MemoryCardFPCcPQ33ipl10controller9Interface"
	.4byte "@84@onLeft__Q33ipl5scene10MemoryCardFPCc"
	.4byte onMove__Q33ipl5scene10MemoryBaseFPCc
	.4byte "@84@onTrig__Q33ipl5scene10MemoryCardFPCc"
	.4byte add_button__Q33ipl5scene10MemoryBaseFPPCci
	.4byte add_anmbutton__Q33ipl5scene10MemoryBaseFPCcPQ43ipl5scene10MemoryBase3AnmPQ43ipl5scene10MemoryBase3AnmPQ43ipl5scene10MemoryBase3Anm
	.4byte get_button__Q33ipl5scene10MemoryBaseFPCc
	.4byte get_anmbutton__Q33ipl5scene10MemoryBaseFPCc
	.4byte clear_button__Q33ipl5scene10MemoryBaseFPCc
	.4byte add_animation__Q33ipl5scene10MemoryBaseFPCQ43ipl5scene10MemoryBase7AnmNamei
	.4byte get_animation__Q33ipl5scene10MemoryBaseFi
	.4byte do_animation__Q33ipl5scene10MemoryBaseFi
	.4byte do_animation__Q33ipl5scene10MemoryBaseFib
	.4byte stop_animation__Q33ipl5scene10MemoryBaseFi
	.4byte is_animation__Q33ipl5scene10MemoryBaseFi
	.4byte is_fadein_enable__Q33ipl5scene10MemoryBaseFv
	.4byte set_visible__Q33ipl5scene10MemoryBaseFPCcb
	.4byte onPoint__Q33ipl5scene10MemoryCardFPCcPQ33ipl10controller9Interface
	.4byte onLeft__Q33ipl5scene10MemoryCardFPCc
	.4byte onTrig__Q33ipl5scene10MemoryCardFPCc
.endobj __vt__Q33ipl5scene10MemoryCard

# .data:0x870 | 0x816525A0 | size: 0xA0
# ipl::scene::MemoryCardManager::__vtable
.obj __vt__Q33ipl5scene17MemoryCardManager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene17MemoryCardManagerFv
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
.endobj __vt__Q33ipl5scene17MemoryCardManager

# 0x81694A68..0x81694A80 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694A68 | size: 0x4
.obj lbl_81694A68, global
	.float 0
.endobj lbl_81694A68

# .sdata2:0x4 | 0x81694A6C | size: 0x4
.obj lbl_81694A6C, global
	.float 55
.endobj lbl_81694A6C

# .sdata2:0x8 | 0x81694A70 | size: 0x4
.obj lbl_81694A70, global
	.float 90
.endobj lbl_81694A70

# .sdata2:0xC | 0x81694A74 | size: 0x4
.obj lbl_81694A74, global
	.float 60
.endobj lbl_81694A74

# .sdata2:0x10 | 0x81694A78 | size: 0x8
.obj lbl_81694A78, global
	.double 4503601774854144
.endobj lbl_81694A78

# 0x81696C78..0x81696CA0 | size: 0x28
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696C78 | size: 0x6
.obj lbl_81696C78, global
	.string "G_Arw"
.endobj lbl_81696C78

# .sdata:0x6 | 0x81696C7E | size: 0x7
.obj lbl_81696C7E, global
	.string "B_ArwR"
.endobj lbl_81696C7E

# .sdata:0xD | 0x81696C85 | size: 0x7
.obj lbl_81696C85, global
	.string "B_ArwL"
.endobj lbl_81696C85

# .sdata:0x14 | 0x81696C8C | size: 0x4
.obj lbl_81696C8C, global
	.string "arc"
.endobj lbl_81696C8C

# .sdata:0x18 | 0x81696C90 | size: 0x7
.obj lbl_81696C90, global
	.string "N_ArwR"
.endobj lbl_81696C90

# .sdata:0x1F | 0x81696C97 | size: 0x9
.obj lbl_81696C97, global
	.4byte 0x4E5F4172
	.4byte 0x774C0000
	.byte 0x00
.endobj lbl_81696C97
