.include "macros.inc"
.file "iplDate.cpp"

# 0x810B7318..0x810B7340 | size: 0x28
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B7318 | size: 0xC
# ipl::scene::Date::mscMinDate
.obj mscMinDate__Q33ipl5scene4Date, global
	.skip 0xC
.endobj mscMinDate__Q33ipl5scene4Date

# .bss:0xC | 0x810B7324 | size: 0x1C
# ipl::scene::Date::mscMaxDate
.obj mscMaxDate__Q33ipl5scene4Date, global
	.skip 0x1C
.endobj mscMaxDate__Q33ipl5scene4Date

# 0x8139F8CC..0x813A0400 | size: 0xB34
.text
.balign 4

# .text:0x0 | 0x8139F8CC | size: 0x208
# ipl::scene::Date::Date(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl5scene4DateFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 8139F8CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139F8D0 | 7C 08 02 A6 */	mflr r0
/* 8139F8D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139F8D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139F8DC | 48 25 9B E5 */	bl _savegpr_27
/* 8139F8E0 | 3D 00 81 65 */	lis r8, __vt__Q33ipl5scene4Date@ha
/* 8139F8E4 | 38 00 00 00 */	li r0, 0x0
/* 8139F8E8 | 39 08 C6 70 */	addi r8, r8, __vt__Q33ipl5scene4Date@l
/* 8139F8EC | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8139F8F0 | 7C 7F 1B 78 */	mr r31, r3
/* 8139F8F4 | 7C 9E 23 78 */	mr r30, r4
/* 8139F8F8 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 8139F8FC | 7C BD 2B 78 */	mr r29, r5
/* 8139F900 | 7C DC 33 78 */	mr r28, r6
/* 8139F904 | 7C FB 3B 78 */	mr r27, r7
/* 8139F908 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8139F90C | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8139F910 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8139F914 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8139F918 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 8139F91C | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 8139F920 | 38 60 05 80 */	li r3, 0x580
/* 8139F924 | 48 25 87 79 */	bl __nw__FUl
/* 8139F928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139F92C | 41 82 00 18 */	beq .L_8139F944
/* 8139F930 | 7F C4 F3 78 */	mr r4, r30
/* 8139F934 | 7F A5 EB 78 */	mr r5, r29
/* 8139F938 | 7F 86 E3 78 */	mr r6, r28
/* 8139F93C | 7F 67 DB 78 */	mr r7, r27
/* 8139F940 | 4B FC A6 E5 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8139F944:
/* 8139F944 | 3F A0 81 65 */	lis r29, lbl_8164C62C@ha
/* 8139F948 | 90 7F 00 18 */	stw r3, 0x18(r31)
/* 8139F94C | 3B BD C6 2C */	addi r29, r29, lbl_8164C62C@l
/* 8139F950 | 3B 60 00 00 */	li r27, 0x0
/* 8139F954 | 3B C0 00 00 */	li r30, 0x0
/* 8139F958 | 3F 80 81 65 */	lis r28, lbl_8164C640@ha
.L_8139F95C:
/* 8139F95C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8139F960 | 38 9C C6 40 */	addi r4, r28, lbl_8164C640@l
/* 8139F964 | 7C BD F0 2E */	lwzx r5, r29, r30
/* 8139F968 | 38 C0 00 00 */	li r6, 0x0
/* 8139F96C | 38 E0 00 01 */	li r7, 0x1
/* 8139F970 | 4B FC AA 0D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139F974 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8139F978 | 7C 9F F2 14 */	add r4, r31, r30
/* 8139F97C | 2C 1B 00 05 */	cmpwi r27, 0x5
/* 8139F980 | 90 64 00 24 */	stw r3, 0x24(r4)
/* 8139F984 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8139F988 | 41 80 FF D4 */	blt .L_8139F95C
/* 8139F98C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8139F990 | 4B FC AC A5 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8139F994 | 38 60 00 34 */	li r3, 0x34
/* 8139F998 | 48 25 87 05 */	bl __nw__FUl
/* 8139F99C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139F9A0 | 7C 7C 1B 78 */	mr r28, r3
/* 8139F9A4 | 41 82 00 84 */	beq .L_8139FA28
/* 8139F9A8 | 80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8139F9AC | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 8139F9B0 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 8139F9B4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8139F9B8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8139F9BC | 38 00 00 00 */	li r0, 0x0
/* 8139F9C0 | 3B A5 02 98 */	addi r29, r5, 0x298
/* 8139F9C4 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 8139F9C8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8139F9CC | 41 82 00 1C */	beq .L_8139F9E8
/* 8139F9D0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139F9D4 | 7F E3 FB 78 */	mr r3, r31
/* 8139F9D8 | 7F 84 E3 78 */	mr r4, r28
/* 8139F9DC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8139F9E0 | 7D 89 03 A6 */	mtctr r12
/* 8139F9E4 | 4E 80 04 21 */	bctrl
.L_8139F9E8:
/* 8139F9E8 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 8139F9EC | 38 80 00 08 */	li r4, 0x8
/* 8139F9F0 | 48 17 26 6D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8139F9F4 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 8139F9F8 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 8139F9FC | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 8139FA00 | 38 80 00 08 */	li r4, 0x8
/* 8139FA04 | 90 BC 00 00 */	stw r5, 0x0(r28)
/* 8139FA08 | 93 BC 00 24 */	stw r29, 0x24(r28)
/* 8139FA0C | 48 17 26 51 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8139FA10 | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 8139FA14 | 38 00 00 00 */	li r0, 0x0
/* 8139FA18 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 8139FA1C | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 8139FA20 | 90 1C 00 2C */	stw r0, 0x2c(r28)
/* 8139FA24 | 98 1C 00 30 */	stb r0, 0x30(r28)
.L_8139FA28:
/* 8139FA28 | 93 9F 00 1C */	stw r28, 0x1c(r31)
/* 8139FA2C | 7F 83 E3 78 */	mr r3, r28
/* 8139FA30 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8139FA34 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8139FA38 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8139FA3C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8139FA40 | 7D 89 03 A6 */	mtctr r12
/* 8139FA44 | 4E 80 04 21 */	bctrl
/* 8139FA48 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8139FA4C | 38 80 00 00 */	li r4, 0x0
/* 8139FA50 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139FA54 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8139FA58 | 7D 89 03 A6 */	mtctr r12
/* 8139FA5C | 4E 80 04 21 */	bctrl
/* 8139FA60 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8139FA64 | 38 8D 87 B2 */	li r4, lbl_816967F2@sda21
/* 8139FA68 | 38 A0 00 01 */	li r5, 0x1
/* 8139FA6C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139FA70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139FA74 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139FA78 | 7D 89 03 A6 */	mtctr r12
/* 8139FA7C | 4E 80 04 21 */	bctrl
/* 8139FA80 | 7C 64 1B 78 */	mr r4, r3
/* 8139FA84 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8139FA88 | 38 A0 00 01 */	li r5, 0x1
/* 8139FA8C | 4B FC B7 41 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 8139FA90 | 38 60 00 0C */	li r3, 0xc
/* 8139FA94 | 48 25 86 09 */	bl __nw__FUl
/* 8139FA98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139FA9C | 41 82 00 18 */	beq .L_8139FAB4
/* 8139FAA0 | 38 80 07 D0 */	li r4, 0x7d0
/* 8139FAA4 | 38 00 00 01 */	li r0, 0x1
/* 8139FAA8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8139FAAC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8139FAB0 | 90 03 00 08 */	stw r0, 0x8(r3)
.L_8139FAB4:
/* 8139FAB4 | 90 7F 00 38 */	stw r3, 0x38(r31)
/* 8139FAB8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139FABC | 7F E3 FB 78 */	mr r3, r31
/* 8139FAC0 | 48 25 9A 4D */	bl _restgpr_27
/* 8139FAC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139FAC8 | 7C 08 03 A6 */	mtlr r0
/* 8139FACC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139FAD0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene4DateFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x208 | 0x8139FAD4 | size: 0x98
# ipl::scene::Date::calc()
.fn calc__Q33ipl5scene4DateFv, global
/* 8139FAD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139FAD8 | 7C 08 02 A6 */	mflr r0
/* 8139FADC | 38 80 00 0B */	li r4, 0xb
/* 8139FAE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139FAE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139FAE8 | 7C 7F 1B 78 */	mr r31, r3
/* 8139FAEC | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8139FAF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139FAF4 | 41 82 00 08 */	beq .L_8139FAFC
/* 8139FAF8 | 38 80 00 0A */	li r4, 0xa
.L_8139FAFC:
/* 8139FAFC | 7F E3 FB 78 */	mr r3, r31
/* 8139FB00 | 48 00 00 A1 */	bl doAnim__Q33ipl5scene4DateFi
/* 8139FB04 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8139FB08 | 4B FC AB FD */	bl calc__Q33ipl6layout6ObjectFv
/* 8139FB0C | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8139FB10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139FB14 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8139FB18 | 7D 89 03 A6 */	mtctr r12
/* 8139FB1C | 4E 80 04 21 */	bctrl
/* 8139FB20 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8139FB24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139FB28 | 41 82 00 24 */	beq .L_8139FB4C
/* 8139FB2C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8139FB30 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139FB34 | 41 82 00 18 */	beq .L_8139FB4C
/* 8139FB38 | 38 00 00 00 */	li r0, 0x0
/* 8139FB3C | 7F E3 FB 78 */	mr r3, r31
/* 8139FB40 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 8139FB44 | 38 80 00 03 */	li r4, 0x3
/* 8139FB48 | 48 00 07 1D */	bl onCmdRecv__Q33ipl5scene4DateFi
.L_8139FB4C:
/* 8139FB4C | 80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8139FB50 | 7F E3 FB 78 */	mr r3, r31
/* 8139FB54 | 48 00 07 11 */	bl onCmdRecv__Q33ipl5scene4DateFi
/* 8139FB58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139FB5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139FB60 | 7C 08 03 A6 */	mtlr r0
/* 8139FB64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139FB68 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene4DateFv

# .text:0x2A0 | 0x8139FB6C | size: 0x34
# ipl::scene::Date::draw(bool)
.fn draw__Q33ipl5scene4DateFb, global
/* 8139FB6C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139FB70 | 41 82 00 18 */	beq .L_8139FB88
/* 8139FB74 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8139FB78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139FB7C | 4D 82 00 20 */	beqlr
/* 8139FB80 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139FB84 | 4B FC AC 18 */	b draw__Q33ipl6layout6ObjectFv
.L_8139FB88:
/* 8139FB88 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8139FB8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139FB90 | 4C 82 00 20 */	bnelr
/* 8139FB94 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139FB98 | 4B FC AC 04 */	b draw__Q33ipl6layout6ObjectFv
/* 8139FB9C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene4DateFb

# .text:0x2D4 | 0x8139FBA0 | size: 0x78
# ipl::scene::Date::doAnim(int)
.fn doAnim__Q33ipl5scene4DateFi, global
/* 8139FBA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139FBA4 | 7C 08 02 A6 */	mflr r0
/* 8139FBA8 | 1C C4 00 0C */	mulli r6, r4, 0xc
/* 8139FBAC | 3C 80 81 61 */	lis r4, scAnmFrame__Q23ipl5scene@ha
/* 8139FBB0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139FBB4 | 38 00 00 00 */	li r0, 0x0
/* 8139FBB8 | 38 84 FB A0 */	addi r4, r4, scAnmFrame__Q23ipl5scene@l
/* 8139FBBC | 7C A4 30 2E */	lwzx r5, r4, r6
/* 8139FBC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139FBC4 | 7C 84 32 14 */	add r4, r4, r6
/* 8139FBC8 | 54 A5 10 3A */	slwi r5, r5, 2
/* 8139FBCC | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 8139FBD0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139FBD4 | 7F E3 2A 14 */	add r31, r3, r5
/* 8139FBD8 | C0 24 00 08 */	lfs f1, 0x8(r4)
/* 8139FBDC | 83 DF 00 24 */	lwz r30, 0x24(r31)
/* 8139FBE0 | D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 8139FBE4 | 7F C3 F3 78 */	mr r3, r30
/* 8139FBE8 | D0 3E 00 04 */	stfs f1, 0x4(r30)
/* 8139FBEC | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 8139FBF0 | 4B FC 2C 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139FBF4 | 38 00 00 01 */	li r0, 0x1
/* 8139FBF8 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8139FBFC | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8139FC00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139FC04 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139FC08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139FC0C | 7C 08 03 A6 */	mtlr r0
/* 8139FC10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139FC14 | 4E 80 00 20 */	blr
.endfn doAnim__Q33ipl5scene4DateFi

# .text:0x34C | 0x8139FC18 | size: 0x58
# ipl::scene::Date::setRotate(const nw4r::math::VEC3&)
.fn setRotate__Q33ipl5scene4DateFRCQ34nw4r4math4VEC3, global
/* 8139FC18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139FC1C | 7C 08 02 A6 */	mflr r0
/* 8139FC20 | 3C C0 81 65 */	lis r6, lbl_8164C652@ha
/* 8139FC24 | 38 A0 00 01 */	li r5, 0x1
/* 8139FC28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139FC2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139FC30 | 7C 9F 23 78 */	mr r31, r4
/* 8139FC34 | 38 86 C6 52 */	addi r4, r6, lbl_8164C652@l
/* 8139FC38 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139FC3C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139FC40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139FC44 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139FC48 | 7D 89 03 A6 */	mtctr r12
/* 8139FC4C | 4E 80 04 21 */	bctrl
/* 8139FC50 | 7F E4 FB 78 */	mr r4, r31
/* 8139FC54 | 38 63 00 38 */	addi r3, r3, 0x38
/* 8139FC58 | 4B FA 4A 2D */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 8139FC5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139FC60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139FC64 | 7C 08 03 A6 */	mtlr r0
/* 8139FC68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139FC6C | 4E 80 00 20 */	blr
.endfn setRotate__Q33ipl5scene4DateFRCQ34nw4r4math4VEC3

# .text:0x3A4 | 0x8139FC70 | size: 0x58
# ipl::scene::Date::setTranslate(const nw4r::math::VEC3&)
.fn setTranslate__Q33ipl5scene4DateFRCQ34nw4r4math4VEC3, global
/* 8139FC70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139FC74 | 7C 08 02 A6 */	mflr r0
/* 8139FC78 | 3C C0 81 65 */	lis r6, lbl_8164C652@ha
/* 8139FC7C | 38 A0 00 01 */	li r5, 0x1
/* 8139FC80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139FC84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139FC88 | 7C 9F 23 78 */	mr r31, r4
/* 8139FC8C | 38 86 C6 52 */	addi r4, r6, lbl_8164C652@l
/* 8139FC90 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139FC94 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139FC98 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139FC9C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139FCA0 | 7D 89 03 A6 */	mtctr r12
/* 8139FCA4 | 4E 80 04 21 */	bctrl
/* 8139FCA8 | 7F E4 FB 78 */	mr r4, r31
/* 8139FCAC | 38 63 00 2C */	addi r3, r3, 0x2c
/* 8139FCB0 | 4B FA 49 D5 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 8139FCB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139FCB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139FCBC | 7C 08 03 A6 */	mtlr r0
/* 8139FCC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139FCC4 | 4E 80 00 20 */	blr
.endfn setTranslate__Q33ipl5scene4DateFRCQ34nw4r4math4VEC3

# .text:0x3FC | 0x8139FCC8 | size: 0x5C
# ipl::scene::Date::setVisible(bool)
.fn setVisible__Q33ipl5scene4DateFb, global
/* 8139FCC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139FCCC | 7C 08 02 A6 */	mflr r0
/* 8139FCD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139FCD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139FCD8 | 7C 9F 23 78 */	mr r31, r4
/* 8139FCDC | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8139FCE0 | 3C 60 81 65 */	lis r3, lbl_8164C62C@ha
/* 8139FCE4 | 80 83 C6 2C */	lwz r4, lbl_8164C62C@l(r3)
/* 8139FCE8 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 8139FCEC | 38 A0 00 01 */	li r5, 0x1
/* 8139FCF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139FCF4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139FCF8 | 7D 89 03 A6 */	mtctr r12
/* 8139FCFC | 4E 80 04 21 */	bctrl
/* 8139FD00 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8139FD04 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8139FD08 | 7C 00 FB 78 */	or r0, r0, r31
/* 8139FD0C | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8139FD10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139FD14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139FD18 | 7C 08 03 A6 */	mtlr r0
/* 8139FD1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139FD20 | 4E 80 00 20 */	blr
.endfn setVisible__Q33ipl5scene4DateFb

# .text:0x458 | 0x8139FD24 | size: 0x48
# ipl::scene::Date::getVisible()
.fn getVisible__Q33ipl5scene4DateFv, global
/* 8139FD24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139FD28 | 7C 08 02 A6 */	mflr r0
/* 8139FD2C | 38 A0 00 01 */	li r5, 0x1
/* 8139FD30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139FD34 | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8139FD38 | 3C 60 81 65 */	lis r3, lbl_8164C62C@ha
/* 8139FD3C | 80 83 C6 2C */	lwz r4, lbl_8164C62C@l(r3)
/* 8139FD40 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 8139FD44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139FD48 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139FD4C | 7D 89 03 A6 */	mtctr r12
/* 8139FD50 | 4E 80 04 21 */	bctrl
/* 8139FD54 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8139FD58 | 54 03 07 FE */	clrlwi r3, r0, 31
/* 8139FD5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139FD60 | 7C 08 03 A6 */	mtlr r0
/* 8139FD64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139FD68 | 4E 80 00 20 */	blr
.endfn getVisible__Q33ipl5scene4DateFv

# .text:0x4A0 | 0x8139FD6C | size: 0xE0
# ipl::scene::Date::setAttribute(int)
.fn setAttribute__Q33ipl5scene4DateFi, global
/* 8139FD6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139FD70 | 7C 08 02 A6 */	mflr r0
/* 8139FD74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139FD78 | 54 80 07 BC */	rlwinm r0, r4, 0, 30, 30
/* 8139FD7C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139FD80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139FD84 | 7C 9F 23 78 */	mr r31, r4
/* 8139FD88 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139FD8C | 7C 7E 1B 78 */	mr r30, r3
/* 8139FD90 | 40 82 00 68 */	bne .L_8139FDF8
/* 8139FD94 | 54 80 07 38 */	rlwinm r0, r4, 0, 28, 28
/* 8139FD98 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8139FD9C | 40 82 00 10 */	bne .L_8139FDAC
/* 8139FDA0 | 38 80 00 04 */	li r4, 0x4
/* 8139FDA4 | 4B FF FD FD */	bl doAnim__Q33ipl5scene4DateFi
/* 8139FDA8 | 48 00 00 24 */	b .L_8139FDCC
.L_8139FDAC:
/* 8139FDAC | 54 80 07 7A */	rlwinm r0, r4, 0, 29, 29
/* 8139FDB0 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8139FDB4 | 40 82 00 10 */	bne .L_8139FDC4
/* 8139FDB8 | 38 80 00 05 */	li r4, 0x5
/* 8139FDBC | 4B FF FD E5 */	bl doAnim__Q33ipl5scene4DateFi
/* 8139FDC0 | 48 00 00 0C */	b .L_8139FDCC
.L_8139FDC4:
/* 8139FDC4 | 38 80 00 06 */	li r4, 0x6
/* 8139FDC8 | 4B FF FD D9 */	bl doAnim__Q33ipl5scene4DateFi
.L_8139FDCC:
/* 8139FDCC | 57 E0 07 FE */	clrlwi r0, r31, 31
/* 8139FDD0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139FDD4 | 40 82 00 14 */	bne .L_8139FDE8
/* 8139FDD8 | 7F C3 F3 78 */	mr r3, r30
/* 8139FDDC | 38 80 00 03 */	li r4, 0x3
/* 8139FDE0 | 4B FF FD C1 */	bl doAnim__Q33ipl5scene4DateFi
/* 8139FDE4 | 48 00 00 28 */	b .L_8139FE0C
.L_8139FDE8:
/* 8139FDE8 | 7F C3 F3 78 */	mr r3, r30
/* 8139FDEC | 38 80 00 07 */	li r4, 0x7
/* 8139FDF0 | 4B FF FD B1 */	bl doAnim__Q33ipl5scene4DateFi
/* 8139FDF4 | 48 00 00 18 */	b .L_8139FE0C
.L_8139FDF8:
/* 8139FDF8 | 38 80 00 08 */	li r4, 0x8
/* 8139FDFC | 4B FF FD A5 */	bl doAnim__Q33ipl5scene4DateFi
/* 8139FE00 | 7F C3 F3 78 */	mr r3, r30
/* 8139FE04 | 38 80 00 09 */	li r4, 0x9
/* 8139FE08 | 4B FF FD 99 */	bl doAnim__Q33ipl5scene4DateFi
.L_8139FE0C:
/* 8139FE0C | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8139FE10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139FE14 | 41 82 00 14 */	beq .L_8139FE28
/* 8139FE18 | 7F C3 F3 78 */	mr r3, r30
/* 8139FE1C | 38 80 00 0A */	li r4, 0xa
/* 8139FE20 | 4B FF FD 81 */	bl doAnim__Q33ipl5scene4DateFi
/* 8139FE24 | 48 00 00 10 */	b .L_8139FE34
.L_8139FE28:
/* 8139FE28 | 7F C3 F3 78 */	mr r3, r30
/* 8139FE2C | 38 80 00 0B */	li r4, 0xb
/* 8139FE30 | 4B FF FD 71 */	bl doAnim__Q33ipl5scene4DateFi
.L_8139FE34:
/* 8139FE34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139FE38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139FE3C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139FE40 | 7C 08 03 A6 */	mtlr r0
/* 8139FE44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139FE48 | 4E 80 00 20 */	blr
.endfn setAttribute__Q33ipl5scene4DateFi

# .text:0x580 | 0x8139FE4C | size: 0x28
# ipl::scene::Date::setDate(const ipl::utility::Date&)
.fn setDate__Q33ipl5scene4DateFRCQ33ipl7utility4Date, global
/* 8139FE4C | 80 C3 00 38 */	lwz r6, 0x38(r3)
/* 8139FE50 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8139FE54 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8139FE58 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 8139FE5C | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8139FE60 | 90 A6 00 04 */	stw r5, 0x4(r6)
/* 8139FE64 | 90 06 00 08 */	stw r0, 0x8(r6)
/* 8139FE68 | 80 83 00 38 */	lwz r4, 0x38(r3)
/* 8139FE6C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8139FE70 | 48 00 02 B4 */	b set_textbox__Q33ipl5scene4DateFi
.endfn setDate__Q33ipl5scene4DateFRCQ33ipl7utility4Date

# .text:0x5A8 | 0x8139FE74 | size: 0x8
# ipl::scene::Date::update()
.fn update__Q33ipl5scene4DateFv, global
/* 8139FE74 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8139FE78 | 4B FC B1 14 */	b update__Q33ipl3gui11PaneManagerFv
.endfn update__Q33ipl5scene4DateFv

# .text:0x5B0 | 0x8139FE7C | size: 0x14C
# ipl::scene::Date::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene4DateFUlUlPv, global
/* 8139FE7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139FE80 | 7C 08 02 A6 */	mflr r0
/* 8139FE84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139FE88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139FE8C | 48 25 96 39 */	bl _savegpr_28
/* 8139FE90 | 7C 7C 1B 78 */	mr r28, r3
/* 8139FE94 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8139FE98 | 7C 9F 23 78 */	mr r31, r4
/* 8139FE9C | 7C BD 2B 78 */	mr r29, r5
/* 8139FEA0 | 7C DE 33 78 */	mr r30, r6
/* 8139FEA4 | 48 00 02 51 */	bl isValidDate__Q33ipl5scene4DateFRCQ33ipl7utility4Date
/* 8139FEA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139FEAC | 41 82 01 04 */	beq .L_8139FFB0
/* 8139FEB0 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8139FEB4 | 7F E4 FB 78 */	mr r4, r31
/* 8139FEB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139FEBC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8139FEC0 | 7D 89 03 A6 */	mtctr r12
/* 8139FEC4 | 4E 80 04 21 */	bctrl
/* 8139FEC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139FECC | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8139FED0 | 7D 89 03 A6 */	mtctr r12
/* 8139FED4 | 4E 80 04 21 */	bctrl
/* 8139FED8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139FEDC | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 8139FEE0 | 41 82 00 1C */	beq .L_8139FEFC
/* 8139FEE4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8139FEE8 | 7F C3 F3 78 */	mr r3, r30
/* 8139FEEC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8139FEF0 | 7D 89 03 A6 */	mtctr r12
/* 8139FEF4 | 4E 80 04 21 */	bctrl
/* 8139FEF8 | 48 00 00 18 */	b .L_8139FF10
.L_8139FEFC:
/* 8139FEFC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8139FF00 | 7F 83 E3 78 */	mr r3, r28
/* 8139FF04 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8139FF08 | 7D 89 03 A6 */	mtctr r12
/* 8139FF0C | 4E 80 04 21 */	bctrl
.L_8139FF10:
/* 8139FF10 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8139FF14 | 41 82 00 20 */	beq .L_8139FF34
/* 8139FF18 | 40 80 00 10 */	bge .L_8139FF28
/* 8139FF1C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8139FF20 | 40 80 00 38 */	bge .L_8139FF58
/* 8139FF24 | 48 00 00 8C */	b .L_8139FFB0
.L_8139FF28:
/* 8139FF28 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 8139FF2C | 40 80 00 84 */	bge .L_8139FFB0
/* 8139FF30 | 48 00 00 18 */	b .L_8139FF48
.L_8139FF34:
/* 8139FF34 | 7F 83 E3 78 */	mr r3, r28
/* 8139FF38 | 7F E4 FB 78 */	mr r4, r31
/* 8139FF3C | 7F C5 F3 78 */	mr r5, r30
/* 8139FF40 | 48 00 00 89 */	bl start_point_event__Q33ipl5scene4DateFPCcPQ33ipl10controller9Interface
/* 8139FF44 | 48 00 00 6C */	b .L_8139FFB0
.L_8139FF48:
/* 8139FF48 | 7F 83 E3 78 */	mr r3, r28
/* 8139FF4C | 7F E4 FB 78 */	mr r4, r31
/* 8139FF50 | 48 00 01 45 */	bl start_left_event__Q33ipl5scene4DateFPCc
/* 8139FF54 | 48 00 00 5C */	b .L_8139FFB0
.L_8139FF58:
/* 8139FF58 | 7F 83 E3 78 */	mr r3, r28
/* 8139FF5C | 4B FF FD C9 */	bl getVisible__Q33ipl5scene4DateFv
/* 8139FF60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139FF64 | 41 82 00 4C */	beq .L_8139FFB0
/* 8139FF68 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139FF6C | 41 82 00 44 */	beq .L_8139FFB0
/* 8139FF70 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8139FF74 | 3C 80 00 10 */	lis r4, 0x10
/* 8139FF78 | 7F C3 F3 78 */	mr r3, r30
/* 8139FF7C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8139FF80 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8139FF84 | 7D 89 03 A6 */	mtctr r12
/* 8139FF88 | 4E 80 04 21 */	bctrl
/* 8139FF8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139FF90 | 41 82 00 20 */	beq .L_8139FFB0
/* 8139FF94 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139FF98 | 38 80 00 07 */	li r4, 0x7
/* 8139FF9C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139FFA0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139FFA4 | 48 06 B1 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139FFA8 | 7F 84 E3 78 */	mr r4, r28
/* 8139FFAC | 4B FF E4 B1 */	bl onTrigDate__Q33ipl5scene8CalendarFPQ33ipl5scene4Date
.L_8139FFB0:
/* 8139FFB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139FFB4 | 48 25 95 5D */	bl _restgpr_28
/* 8139FFB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139FFBC | 7C 08 03 A6 */	mtlr r0
/* 8139FFC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139FFC4 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene4DateFUlUlPv

# .text:0x6FC | 0x8139FFC8 | size: 0xCC
# ipl::scene::Date::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene4DateFPCcPQ33ipl10controller9Interface, global
/* 8139FFC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139FFCC | 7C 08 02 A6 */	mflr r0
/* 8139FFD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139FFD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139FFD8 | 7C BF 2B 78 */	mr r31, r5
/* 8139FFDC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139FFE0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139FFE4 | 7C 83 23 78 */	mr r3, r4
/* 8139FFE8 | 38 8D 87 B2 */	li r4, lbl_816967F2@sda21
/* 8139FFEC | 48 26 24 95 */	bl strcmp
/* 8139FFF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139FFF4 | 40 82 00 88 */	bne .L_813A007C
/* 8139FFF8 | 80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 8139FFFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A0000 | 40 82 00 70 */	bne .L_813A0070
/* 813A0004 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A0008 | 38 80 00 07 */	li r4, 0x7
/* 813A000C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A0010 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A0014 | 48 06 B1 25 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A0018 | 7F C4 F3 78 */	mr r4, r30
/* 813A001C | 4B FF E3 F9 */	bl onPointDate__Q33ipl5scene8CalendarFPQ33ipl5scene4Date
/* 813A0020 | 7F C3 F3 78 */	mr r3, r30
/* 813A0024 | 38 80 00 01 */	li r4, 0x1
/* 813A0028 | 48 00 02 3D */	bl onCmdRecv__Q33ipl5scene4DateFi
/* 813A002C | 7F C3 F3 78 */	mr r3, r30
/* 813A0030 | 4B FF FC F5 */	bl getVisible__Q33ipl5scene4DateFv
/* 813A0034 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0038 | 41 82 00 38 */	beq .L_813A0070
/* 813A003C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A0040 | 3C 80 81 65 */	lis r4, lbl_8164C65D@ha
/* 813A0044 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A0048 | 38 84 C6 5D */	addi r4, r4, lbl_8164C65D@l
/* 813A004C | 4B FC B4 21 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A0050 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A0054 | 41 82 00 1C */	beq .L_813A0070
/* 813A0058 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813A005C | 7F E3 FB 78 */	mr r3, r31
/* 813A0060 | 38 80 00 01 */	li r4, 0x1
/* 813A0064 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813A0068 | 7D 89 03 A6 */	mtctr r12
/* 813A006C | 4E 80 04 21 */	bctrl
.L_813A0070:
/* 813A0070 | 80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 813A0074 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813A0078 | 90 1E 00 3C */	stw r0, 0x3c(r30)
.L_813A007C:
/* 813A007C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A0080 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A0084 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A0088 | 7C 08 03 A6 */	mtlr r0
/* 813A008C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A0090 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene4DateFPCcPQ33ipl10controller9Interface

# .text:0x7C8 | 0x813A0094 | size: 0x60
# ipl::scene::Date::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene4DateFPCc, global
/* 813A0094 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A0098 | 7C 08 02 A6 */	mflr r0
/* 813A009C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A00A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A00A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813A00A8 | 7C 83 23 78 */	mr r3, r4
/* 813A00AC | 38 8D 87 B2 */	li r4, lbl_816967F2@sda21
/* 813A00B0 | 48 26 23 D1 */	bl strcmp
/* 813A00B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A00B8 | 40 82 00 28 */	bne .L_813A00E0
/* 813A00BC | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 813A00C0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A00C4 | 40 82 00 10 */	bne .L_813A00D4
/* 813A00C8 | 7F E3 FB 78 */	mr r3, r31
/* 813A00CC | 38 80 00 02 */	li r4, 0x2
/* 813A00D0 | 48 00 01 95 */	bl onCmdRecv__Q33ipl5scene4DateFi
.L_813A00D4:
/* 813A00D4 | 80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 813A00D8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813A00DC | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813A00E0:
/* 813A00E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A00E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A00E8 | 7C 08 03 A6 */	mtlr r0
/* 813A00EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A00F0 | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene4DateFPCc

# .text:0x828 | 0x813A00F4 | size: 0x30
# ipl::scene::Date::isValidDate(const ipl::utility::Date&)
.fn isValidDate__Q33ipl5scene4DateFRCQ33ipl7utility4Date, global
/* 813A00F4 | 3C 80 81 0B */	lis r4, mscMinDate__Q33ipl5scene4Date@ha
/* 813A00F8 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813A00FC | 80 04 73 18 */	lwz r0, mscMinDate__Q33ipl5scene4Date@l(r4)
/* 813A0100 | 38 60 00 00 */	li r3, 0x0
/* 813A0104 | 7C 05 00 00 */	cmpw r5, r0
/* 813A0108 | 4D 80 00 20 */	bltlr
/* 813A010C | 3C 80 81 0B */	lis r4, mscMaxDate__Q33ipl5scene4Date@ha
/* 813A0110 | 80 04 73 24 */	lwz r0, mscMaxDate__Q33ipl5scene4Date@l(r4)
/* 813A0114 | 7C 05 00 00 */	cmpw r5, r0
/* 813A0118 | 4D 81 00 20 */	bgtlr
/* 813A011C | 38 60 00 01 */	li r3, 0x1
/* 813A0120 | 4E 80 00 20 */	blr
.endfn isValidDate__Q33ipl5scene4DateFRCQ33ipl7utility4Date

# .text:0x858 | 0x813A0124 | size: 0x140
# ipl::scene::Date::set_textbox(int)
.fn set_textbox__Q33ipl5scene4DateFi, global
/* 813A0124 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A0128 | 7C 08 02 A6 */	mflr r0
/* 813A012C | 2C 04 00 0A */	cmpwi r4, 0xa
/* 813A0130 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A0134 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813A0138 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813A013C | 41 80 00 20 */	blt .L_813A015C
/* 813A0140 | 38 00 00 0A */	li r0, 0xa
/* 813A0144 | 3C A0 81 61 */	lis r5, scNumber__Q23ipl5scene@ha
/* 813A0148 | 7C 04 03 D6 */	divw r0, r4, r0
/* 813A014C | 38 A5 FC 30 */	addi r5, r5, scNumber__Q23ipl5scene@l
/* 813A0150 | 54 00 08 3C */	slwi r0, r0, 1
/* 813A0154 | 7C 05 02 2E */	lhzx r0, r5, r0
/* 813A0158 | 48 00 00 24 */	b .L_813A017C
.L_813A015C:
/* 813A015C | 38 C0 00 0A */	li r6, 0xa
/* 813A0160 | 3C A0 81 61 */	lis r5, scNumber__Q23ipl5scene@ha
/* 813A0164 | 7C 04 33 D6 */	divw r0, r4, r6
/* 813A0168 | 38 A5 FC 30 */	addi r5, r5, scNumber__Q23ipl5scene@l
/* 813A016C | 7C 00 31 D6 */	mullw r0, r0, r6
/* 813A0170 | 7C 00 20 50 */	subf r0, r0, r4
/* 813A0174 | 54 00 08 3C */	slwi r0, r0, 1
/* 813A0178 | 7C 05 02 2E */	lhzx r0, r5, r0
.L_813A017C:
/* 813A017C | 2C 04 00 0A */	cmpwi r4, 0xa
/* 813A0180 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 813A0184 | 41 80 00 28 */	blt .L_813A01AC
/* 813A0188 | 38 C0 00 0A */	li r6, 0xa
/* 813A018C | 3C A0 81 61 */	lis r5, scNumber__Q23ipl5scene@ha
/* 813A0190 | 7C 04 33 D6 */	divw r0, r4, r6
/* 813A0194 | 38 A5 FC 30 */	addi r5, r5, scNumber__Q23ipl5scene@l
/* 813A0198 | 7C 00 31 D6 */	mullw r0, r0, r6
/* 813A019C | 7C 00 20 50 */	subf r0, r0, r4
/* 813A01A0 | 54 00 08 3C */	slwi r0, r0, 1
/* 813A01A4 | 7C A5 02 2E */	lhzx r5, r5, r0
/* 813A01A8 | 48 00 00 08 */	b .L_813A01B0
.L_813A01AC:
/* 813A01AC | 38 A0 00 00 */	li r5, 0x0
.L_813A01B0:
/* 813A01B0 | 38 00 00 00 */	li r0, 0x0
/* 813A01B4 | B0 A1 00 0A */	sth r5, 0xa(r1)
/* 813A01B8 | 3C 80 81 65 */	lis r4, lbl_8164C62C@ha
/* 813A01BC | 38 A0 00 01 */	li r5, 0x1
/* 813A01C0 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 813A01C4 | 38 84 C6 2C */	addi r4, r4, lbl_8164C62C@l
/* 813A01C8 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813A01CC | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 813A01D0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A01D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A01D8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A01DC | 7D 89 03 A6 */	mtctr r12
/* 813A01E0 | 4E 80 04 21 */	bctrl
/* 813A01E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A01E8 | 7C 7E 1B 78 */	mr r30, r3
/* 813A01EC | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 813A01F0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813A01F4 | 7D 89 03 A6 */	mtctr r12
/* 813A01F8 | 4E 80 04 21 */	bctrl
/* 813A01FC | 48 00 00 18 */	b .L_813A0214
.L_813A0200:
/* 813A0200 | 7C 03 F8 40 */	cmplw r3, r31
/* 813A0204 | 40 82 00 0C */	bne .L_813A0210
/* 813A0208 | 38 00 00 01 */	li r0, 0x1
/* 813A020C | 48 00 00 14 */	b .L_813A0220
.L_813A0210:
/* 813A0210 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_813A0214:
/* 813A0214 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A0218 | 40 82 FF E8 */	bne .L_813A0200
/* 813A021C | 38 00 00 00 */	li r0, 0x0
.L_813A0220:
/* 813A0220 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A0224 | 41 82 00 0C */	beq .L_813A0230
/* 813A0228 | 7F C3 F3 78 */	mr r3, r30
/* 813A022C | 48 00 00 08 */	b .L_813A0234
.L_813A0230:
/* 813A0230 | 38 60 00 00 */	li r3, 0x0
.L_813A0234:
/* 813A0234 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A0238 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A023C | 38 A0 00 00 */	li r5, 0x0
/* 813A0240 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813A0244 | 7D 89 03 A6 */	mtctr r12
/* 813A0248 | 4E 80 04 21 */	bctrl
/* 813A024C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A0250 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813A0254 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813A0258 | 7C 08 03 A6 */	mtlr r0
/* 813A025C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A0260 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene4DateFi

# .text:0x998 | 0x813A0264 | size: 0xF4
# ipl::scene::Date::onCmdRecv(int)
.fn onCmdRecv__Q33ipl5scene4DateFi, global
/* 813A0264 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A0268 | 7C 08 02 A6 */	mflr r0
/* 813A026C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A0270 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813A0274 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A0278 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A027C | 7C 7F 1B 78 */	mr r31, r3
/* 813A0280 | 41 81 00 08 */	bgt .L_813A0288
/* 813A0284 | 90 83 00 14 */	stw r4, 0x14(r3)
.L_813A0288:
/* 813A0288 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 813A028C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A0290 | 41 82 00 68 */	beq .L_813A02F8
/* 813A0294 | 40 80 00 10 */	bge .L_813A02A4
/* 813A0298 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A029C | 40 80 00 14 */	bge .L_813A02B0
/* 813A02A0 | 48 00 00 A4 */	b .L_813A0344
.L_813A02A4:
/* 813A02A4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813A02A8 | 40 80 00 9C */	bge .L_813A0344
/* 813A02AC | 48 00 00 74 */	b .L_813A0320
.L_813A02B0:
/* 813A02B0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813A02B4 | 40 82 00 20 */	bne .L_813A02D4
/* 813A02B8 | 7F E3 FB 78 */	mr r3, r31
/* 813A02BC | 38 80 00 00 */	li r4, 0x0
/* 813A02C0 | 4B FF F8 E1 */	bl doAnim__Q33ipl5scene4DateFi
/* 813A02C4 | 38 00 00 01 */	li r0, 0x1
/* 813A02C8 | 90 7F 00 20 */	stw r3, 0x20(r31)
/* 813A02CC | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 813A02D0 | 48 00 00 74 */	b .L_813A0344
.L_813A02D4:
/* 813A02D4 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813A02D8 | 40 82 00 6C */	bne .L_813A0344
/* 813A02DC | 7F E3 FB 78 */	mr r3, r31
/* 813A02E0 | 38 80 00 01 */	li r4, 0x1
/* 813A02E4 | 4B FF F8 BD */	bl doAnim__Q33ipl5scene4DateFi
/* 813A02E8 | 38 00 00 02 */	li r0, 0x2
/* 813A02EC | 90 7F 00 20 */	stw r3, 0x20(r31)
/* 813A02F0 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 813A02F4 | 48 00 00 50 */	b .L_813A0344
.L_813A02F8:
/* 813A02F8 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813A02FC | 40 82 00 48 */	bne .L_813A0344
/* 813A0300 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813A0304 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A0308 | 40 82 00 0C */	bne .L_813A0314
/* 813A030C | 38 00 00 00 */	li r0, 0x0
/* 813A0310 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813A0314:
/* 813A0314 | 38 00 00 00 */	li r0, 0x0
/* 813A0318 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 813A031C | 48 00 00 28 */	b .L_813A0344
.L_813A0320:
/* 813A0320 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813A0324 | 40 82 00 20 */	bne .L_813A0344
/* 813A0328 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813A032C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A0330 | 40 82 00 0C */	bne .L_813A033C
/* 813A0334 | 38 00 00 00 */	li r0, 0x0
/* 813A0338 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813A033C:
/* 813A033C | 38 00 00 00 */	li r0, 0x0
/* 813A0340 | 90 03 00 10 */	stw r0, 0x10(r3)
.L_813A0344:
/* 813A0344 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A0348 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A034C | 7C 08 03 A6 */	mtlr r0
/* 813A0350 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A0354 | 4E 80 00 20 */	blr
.endfn onCmdRecv__Q33ipl5scene4DateFi

# .text:0xA8C | 0x813A0358 | size: 0x5C
# ipl::scene::Date::initEvent()
.fn initEvent__Q33ipl5scene4DateFv, global
/* 813A0358 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A035C | 7C 08 02 A6 */	mflr r0
/* 813A0360 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A0364 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A0368 | 7C 7F 1B 78 */	mr r31, r3
/* 813A036C | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 813A0370 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A0374 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813A0378 | 7D 89 03 A6 */	mtctr r12
/* 813A037C | 4E 80 04 21 */	bctrl
/* 813A0380 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 813A0384 | C0 22 84 E8 */	lfs f1, lbl_816948E8@sda21(r0)
/* 813A0388 | 4B FC 98 D9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 813A038C | 38 00 00 00 */	li r0, 0x0
/* 813A0390 | 7F E3 FB 78 */	mr r3, r31
/* 813A0394 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813A0398 | 38 80 00 03 */	li r4, 0x3
/* 813A039C | 4B FF FE C9 */	bl onCmdRecv__Q33ipl5scene4DateFi
/* 813A03A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A03A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A03A8 | 7C 08 03 A6 */	mtlr r0
/* 813A03AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A03B0 | 4E 80 00 20 */	blr
.endfn initEvent__Q33ipl5scene4DateFv

# .text:0xAE8 | 0x813A03B4 | size: 0x4C
.fn "__sinit_\\iplDate_cpp", global
/* 813A03B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A03B8 | 7C 08 02 A6 */	mflr r0
/* 813A03BC | 3C 60 81 0B */	lis r3, mscMinDate__Q33ipl5scene4Date@ha
/* 813A03C0 | 38 80 07 D0 */	li r4, 0x7d0
/* 813A03C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A03C8 | 38 63 73 18 */	addi r3, r3, mscMinDate__Q33ipl5scene4Date@l
/* 813A03CC | 38 A0 00 01 */	li r5, 0x1
/* 813A03D0 | 38 C0 00 01 */	li r6, 0x1
/* 813A03D4 | 4B FF EF CD */	bl __ct__Q33ipl7utility4DateFiii
/* 813A03D8 | 3C 60 81 0B */	lis r3, mscMaxDate__Q33ipl5scene4Date@ha
/* 813A03DC | 38 80 07 F3 */	li r4, 0x7f3
/* 813A03E0 | 38 63 73 24 */	addi r3, r3, mscMaxDate__Q33ipl5scene4Date@l
/* 813A03E4 | 38 A0 00 0C */	li r5, 0xc
/* 813A03E8 | 38 C0 00 1F */	li r6, 0x1f
/* 813A03EC | 4B FF EF B5 */	bl __ct__Q33ipl7utility4DateFiii
/* 813A03F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A03F4 | 7C 08 03 A6 */	mtlr r0
/* 813A03F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A03FC | 4E 80 00 20 */	blr
.endfn "__sinit_\\iplDate_cpp"

# 0x8160D1E4..0x8160D1E8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\iplDate_cpp"

# 0x8160FBA0..0x8160FC48 | size: 0xA8
.rodata
.balign 8

# .rodata:0x0 | 0x8160FBA0 | size: 0x90
# ipl::scene::scAnmFrame
.obj scAnmFrame__Q23ipl5scene, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40C00000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x41900000
	.4byte 0x00000003
	.4byte 0x42480000
	.4byte 0x42A00000
	.4byte 0x00000001
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000002
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000002
	.4byte 0x40000000
	.4byte 0x40000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x40400000
	.4byte 0x40400000
	.4byte 0x00000001
	.4byte 0x40400000
	.4byte 0x40400000
	.4byte 0x00000004
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
.endobj scAnmFrame__Q23ipl5scene

# .rodata:0x90 | 0x8160FC30 | size: 0x14
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

# .rodata:0xA4 | 0x8160FC44 | size: 0x4
.obj gap_07_8160FC44_rodata, global
.hidden gap_07_8160FC44_rodata
	.4byte 0x00000000
.endobj gap_07_8160FC44_rodata

# 0x8164C620..0x8164C688 | size: 0x68
.data
.balign 8

# .data:0x0 | 0x8164C620 | size: 0xC
.obj lbl_8164C620, global
	.4byte 0x4E5F4361
	.4byte 0x6C446179
	.4byte 0x5F720000
.endobj lbl_8164C620

# .data:0xC | 0x8164C62C | size: 0x14
.obj lbl_8164C62C, global
	.4byte lbl_8164C620
	.4byte lbl_816967D8
	.4byte lbl_816967DE
	.4byte lbl_816967E4
	.4byte lbl_816967EB
.endobj lbl_8164C62C

# .data:0x20 | 0x8164C640 | size: 0x12
.obj lbl_8164C640, global
	.string "my_IplTop_f.brlan"
.endobj lbl_8164C640

# .data:0x32 | 0x8164C652 | size: 0xB
.obj lbl_8164C652, global
	.string "N_CalDay_t"
.endobj lbl_8164C652

# .data:0x3D | 0x8164C65D | size: 0x13
.obj lbl_8164C65D, global
	.string "WIPL_SE_DATE_FOCUS"
.endobj lbl_8164C65D

# .data:0x50 | 0x8164C670 | size: 0x18
# ipl::scene::Date::__vtable
.obj __vt__Q33ipl5scene4Date, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene4DateFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene4Date

# 0x816948E8..0x816948F0 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816948E8 | size: 0x8
.obj lbl_816948E8, global
	.float 0
	.float 0
.endobj lbl_816948E8

# 0x816967D8..0x816967F8 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816967D8 | size: 0x6
.obj lbl_816967D8, global
	.string "W_Cal"
.endobj lbl_816967D8

# .sdata:0x6 | 0x816967DE | size: 0x6
.obj lbl_816967DE, global
	.string "T_Cal"
.endobj lbl_816967DE

# .sdata:0xC | 0x816967E4 | size: 0x7
.obj lbl_816967E4, global
	.string "Cal_Ac"
.endobj lbl_816967E4

# .sdata:0x13 | 0x816967EB | size: 0x7
.obj lbl_816967EB, global
	.string "Info_a"
.endobj lbl_816967EB

# .sdata:0x1A | 0x816967F2 | size: 0x6
.obj lbl_816967F2, global
	.string "B_Cal"
.endobj lbl_816967F2
