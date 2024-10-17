.include "macros.inc"
.file "iplGCWindow.cpp"

# 0x813CED20..0x813D140C | size: 0x26EC
.text
.balign 4

# .text:0x0 | 0x813CED20 | size: 0x374
# ipl::scene::GCWindow::GCWindow(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl5scene8GCWindowFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 813CED20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CED24 | 7C 08 02 A6 */	mflr r0
/* 813CED28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CED2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CED30 | 48 22 A7 8D */	bl _savegpr_26
/* 813CED34 | 7C 7F 1B 78 */	mr r31, r3
/* 813CED38 | 7C 9A 23 78 */	mr r26, r4
/* 813CED3C | 7C BB 2B 78 */	mr r27, r5
/* 813CED40 | 7C DE 33 78 */	mr r30, r6
/* 813CED44 | 7C FD 3B 78 */	mr r29, r7
/* 813CED48 | 48 00 03 4D */	bl __ct__Q33ipl5scene10MemoryBaseFv
/* 813CED4C | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene8GCWindow@ha
/* 813CED50 | 3B 80 00 00 */	li r28, 0x0
/* 813CED54 | 38 84 2D EC */	addi r4, r4, __vt__Q33ipl5scene8GCWindow@l
/* 813CED58 | 93 9F 00 38 */	stw r28, 0x38(r31)
/* 813CED5C | 38 04 00 50 */	addi r0, r4, 0x50
/* 813CED60 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 813CED64 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 813CED68 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813CED6C | 48 00 03 ED */	bl "__ct__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv"
/* 813CED70 | 9B 9F 00 88 */	stb r28, 0x88(r31)
/* 813CED74 | 38 60 05 80 */	li r3, 0x580
/* 813CED78 | B3 9F 00 8A */	sth r28, 0x8a(r31)
/* 813CED7C | 93 9F 00 8C */	stw r28, 0x8c(r31)
/* 813CED80 | 9B 9F 00 90 */	stb r28, 0x90(r31)
/* 813CED84 | 9B 9F 00 91 */	stb r28, 0x91(r31)
/* 813CED88 | 48 22 93 15 */	bl __nw__FUl
/* 813CED8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CED90 | 41 82 00 18 */	beq .L_813CEDA8
/* 813CED94 | 7F 44 D3 78 */	mr r4, r26
/* 813CED98 | 7F 65 DB 78 */	mr r5, r27
/* 813CED9C | 7F C6 F3 78 */	mr r6, r30
/* 813CEDA0 | 7F A7 EB 78 */	mr r7, r29
/* 813CEDA4 | 4B F9 B2 81 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813CEDA8:
/* 813CEDA8 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 813CEDAC | 3C 80 81 61 */	lis r4, scAnmName__Q23ipl5scene@ha
/* 813CEDB0 | 7F E3 FB 78 */	mr r3, r31
/* 813CEDB4 | 38 A0 00 10 */	li r5, 0x10
/* 813CEDB8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEDBC | 38 84 04 A8 */	addi r4, r4, scAnmName__Q23ipl5scene@l
/* 813CEDC0 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 813CEDC4 | 7D 89 03 A6 */	mtctr r12
/* 813CEDC8 | 4E 80 04 21 */	bctrl
/* 813CEDCC | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813CEDD0 | 4B F9 B8 65 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813CEDD4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEDD8 | 7F E3 FB 78 */	mr r3, r31
/* 813CEDDC | 38 8D 8C 92 */	li r4, lbl_81696CD2@sda21
/* 813CEDE0 | 38 A0 00 00 */	li r5, 0x0
/* 813CEDE4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CEDE8 | 7D 89 03 A6 */	mtctr r12
/* 813CEDEC | 4E 80 04 21 */	bctrl
/* 813CEDF0 | 38 60 00 10 */	li r3, 0x10
/* 813CEDF4 | 48 22 92 A9 */	bl __nw__FUl
/* 813CEDF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CEDFC | 41 82 00 0C */	beq .L_813CEE08
/* 813CEE00 | 7F E4 FB 78 */	mr r4, r31
/* 813CEE04 | 48 00 03 39 */	bl __ct__Q33ipl5scene15MemoryBaseEventFPQ33ipl5scene10MemoryBase
.L_813CEE08:
/* 813CEE08 | 90 7F 00 3C */	stw r3, 0x3c(r31)
/* 813CEE0C | 38 60 00 34 */	li r3, 0x34
/* 813CEE10 | 48 22 92 8D */	bl __nw__FUl
/* 813CEE14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CEE18 | 41 82 00 20 */	beq .L_813CEE38
/* 813CEE1C | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 813CEE20 | 38 C0 00 00 */	li r6, 0x0
/* 813CEE24 | 80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 813CEE28 | 38 E0 00 00 */	li r7, 0x0
/* 813CEE2C | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813CEE30 | 39 00 00 01 */	li r8, 0x1
/* 813CEE34 | 4B F7 62 3D */	bl __ct__Q33ipl3gui11PaneManagerFPQ23gui12EventHandlerPCQ34nw4r3lyt8DrawInfoPQ23EGG4HeapPQ23EGG9Allocatorb
.L_813CEE38:
/* 813CEE38 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 813CEE3C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 813CEE40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CEE44 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813CEE48 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CEE4C | 7D 89 03 A6 */	mtctr r12
/* 813CEE50 | 4E 80 04 21 */	bctrl
/* 813CEE54 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813CEE58 | 38 80 00 00 */	li r4, 0x0
/* 813CEE5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CEE60 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEE64 | 7D 89 03 A6 */	mtctr r12
/* 813CEE68 | 4E 80 04 21 */	bctrl
/* 813CEE6C | 3F 80 81 65 */	lis r28, lbl_81652A94@ha
/* 813CEE70 | 3B A0 00 00 */	li r29, 0x0
/* 813CEE74 | 3B 9C 2A 94 */	addi r28, r28, lbl_81652A94@l
/* 813CEE78 | 3B C0 00 00 */	li r30, 0x0
.L_813CEE7C:
/* 813CEE7C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813CEE80 | 38 A0 00 01 */	li r5, 0x1
/* 813CEE84 | 7C 9C F0 2E */	lwzx r4, r28, r30
/* 813CEE88 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CEE8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CEE90 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CEE94 | 7D 89 03 A6 */	mtctr r12
/* 813CEE98 | 4E 80 04 21 */	bctrl
/* 813CEE9C | 7C 64 1B 78 */	mr r4, r3
/* 813CEEA0 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813CEEA4 | 38 A0 00 01 */	li r5, 0x1
/* 813CEEA8 | 4B F9 C3 25 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813CEEAC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813CEEB0 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813CEEB4 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813CEEB8 | 41 80 FF C4 */	blt .L_813CEE7C
/* 813CEEBC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEEC0 | 7F E3 FB 78 */	mr r3, r31
/* 813CEEC4 | 38 80 00 04 */	li r4, 0x4
/* 813CEEC8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEECC | 7D 89 03 A6 */	mtctr r12
/* 813CEED0 | 4E 80 04 21 */	bctrl
/* 813CEED4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEED8 | 7C 7E 1B 78 */	mr r30, r3
/* 813CEEDC | 7F E3 FB 78 */	mr r3, r31
/* 813CEEE0 | 38 80 00 03 */	li r4, 0x3
/* 813CEEE4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEEE8 | 7D 89 03 A6 */	mtctr r12
/* 813CEEEC | 4E 80 04 21 */	bctrl
/* 813CEEF0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEEF4 | 7C 7D 1B 78 */	mr r29, r3
/* 813CEEF8 | 7F E3 FB 78 */	mr r3, r31
/* 813CEEFC | 38 80 00 02 */	li r4, 0x2
/* 813CEF00 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEF04 | 7D 89 03 A6 */	mtctr r12
/* 813CEF08 | 4E 80 04 21 */	bctrl
/* 813CEF0C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEF10 | 3F 80 81 65 */	lis r28, lbl_81652A94@ha
/* 813CEF14 | 7C 65 1B 78 */	mr r5, r3
/* 813CEF18 | 7F E3 FB 78 */	mr r3, r31
/* 813CEF1C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813CEF20 | 7F A6 EB 78 */	mr r6, r29
/* 813CEF24 | 7F C7 F3 78 */	mr r7, r30
/* 813CEF28 | 80 9C 2A 94 */	lwz r4, lbl_81652A94@l(r28)
/* 813CEF2C | 7D 89 03 A6 */	mtctr r12
/* 813CEF30 | 4E 80 04 21 */	bctrl
/* 813CEF34 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEF38 | 7F E3 FB 78 */	mr r3, r31
/* 813CEF3C | 38 80 00 07 */	li r4, 0x7
/* 813CEF40 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEF44 | 7D 89 03 A6 */	mtctr r12
/* 813CEF48 | 4E 80 04 21 */	bctrl
/* 813CEF4C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEF50 | 7C 7E 1B 78 */	mr r30, r3
/* 813CEF54 | 7F E3 FB 78 */	mr r3, r31
/* 813CEF58 | 38 80 00 06 */	li r4, 0x6
/* 813CEF5C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEF60 | 7D 89 03 A6 */	mtctr r12
/* 813CEF64 | 4E 80 04 21 */	bctrl
/* 813CEF68 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEF6C | 7C 7D 1B 78 */	mr r29, r3
/* 813CEF70 | 7F E3 FB 78 */	mr r3, r31
/* 813CEF74 | 38 80 00 05 */	li r4, 0x5
/* 813CEF78 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEF7C | 7D 89 03 A6 */	mtctr r12
/* 813CEF80 | 4E 80 04 21 */	bctrl
/* 813CEF84 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEF88 | 3B 9C 2A 94 */	addi r28, r28, lbl_81652A94@l
/* 813CEF8C | 7C 65 1B 78 */	mr r5, r3
/* 813CEF90 | 7F E3 FB 78 */	mr r3, r31
/* 813CEF94 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813CEF98 | 7F A6 EB 78 */	mr r6, r29
/* 813CEF9C | 7F C7 F3 78 */	mr r7, r30
/* 813CEFA0 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 813CEFA4 | 7D 89 03 A6 */	mtctr r12
/* 813CEFA8 | 4E 80 04 21 */	bctrl
/* 813CEFAC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEFB0 | 7F E3 FB 78 */	mr r3, r31
/* 813CEFB4 | 38 80 00 0A */	li r4, 0xa
/* 813CEFB8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEFBC | 7D 89 03 A6 */	mtctr r12
/* 813CEFC0 | 4E 80 04 21 */	bctrl
/* 813CEFC4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEFC8 | 7C 7E 1B 78 */	mr r30, r3
/* 813CEFCC | 7F E3 FB 78 */	mr r3, r31
/* 813CEFD0 | 38 80 00 09 */	li r4, 0x9
/* 813CEFD4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEFD8 | 7D 89 03 A6 */	mtctr r12
/* 813CEFDC | 4E 80 04 21 */	bctrl
/* 813CEFE0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CEFE4 | 7C 7D 1B 78 */	mr r29, r3
/* 813CEFE8 | 7F E3 FB 78 */	mr r3, r31
/* 813CEFEC | 38 80 00 08 */	li r4, 0x8
/* 813CEFF0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEFF4 | 7D 89 03 A6 */	mtctr r12
/* 813CEFF8 | 4E 80 04 21 */	bctrl
/* 813CEFFC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CF000 | 7C 65 1B 78 */	mr r5, r3
/* 813CF004 | 7F E3 FB 78 */	mr r3, r31
/* 813CF008 | 7F A6 EB 78 */	mr r6, r29
/* 813CF00C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813CF010 | 7F C7 F3 78 */	mr r7, r30
/* 813CF014 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 813CF018 | 7D 89 03 A6 */	mtctr r12
/* 813CF01C | 4E 80 04 21 */	bctrl
/* 813CF020 | 3F A0 81 61 */	lis r29, scTextboxToMessageID__Q23ipl5scene@ha
/* 813CF024 | 3B 80 00 00 */	li r28, 0x0
/* 813CF028 | 3B BD 05 28 */	addi r29, r29, scTextboxToMessageID__Q23ipl5scene@l
/* 813CF02C | 3B C0 00 00 */	li r30, 0x0
.L_813CF030:
/* 813CF030 | 7C BD F2 14 */	add r5, r29, r30
/* 813CF034 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813CF038 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 813CF03C | 7F E3 FB 78 */	mr r3, r31
/* 813CF040 | 4B FF D7 ED */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CF044 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813CF048 | 3B DE 00 08 */	addi r30, r30, 0x8
/* 813CF04C | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813CF050 | 41 80 FF E0 */	blt .L_813CF030
/* 813CF054 | 38 00 00 02 */	li r0, 0x2
/* 813CF058 | 38 A0 00 00 */	li r5, 0x0
/* 813CF05C | 38 60 00 00 */	li r3, 0x0
/* 813CF060 | 7C 09 03 A6 */	mtctr r0
.L_813CF064:
/* 813CF064 | 7C 9F 2A 14 */	add r4, r31, r5
/* 813CF068 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813CF06C | 98 64 00 92 */	stb r3, 0x92(r4)
/* 813CF070 | 98 64 00 94 */	stb r3, 0x94(r4)
/* 813CF074 | 42 00 FF F0 */	bdnz .L_813CF064
/* 813CF078 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CF07C | 7F E3 FB 78 */	mr r3, r31
/* 813CF080 | 48 22 A4 89 */	bl _restgpr_26
/* 813CF084 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CF088 | 7C 08 03 A6 */	mtlr r0
/* 813CF08C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CF090 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene8GCWindowFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x374 | 0x813CF094 | size: 0x68
# ipl::scene::MemoryBase::MemoryBase()
.fn __ct__Q33ipl5scene10MemoryBaseFv, global
/* 813CF094 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CF098 | 7C 08 02 A6 */	mflr r0
/* 813CF09C | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene10MemoryBase@ha
/* 813CF0A0 | 38 80 00 08 */	li r4, 0x8
/* 813CF0A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CF0A8 | 38 00 00 00 */	li r0, 0x0
/* 813CF0AC | 38 A5 26 40 */	addi r5, r5, __vt__Q33ipl5scene10MemoryBase@l
/* 813CF0B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CF0B4 | 7C 7F 1B 78 */	mr r31, r3
/* 813CF0B8 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813CF0BC | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813CF0C0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813CF0C4 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813CF0C8 | 48 14 2F 95 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CF0CC | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 813CF0D0 | 38 80 00 0C */	li r4, 0xc
/* 813CF0D4 | 48 14 2F 89 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CF0D8 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 813CF0DC | 38 80 00 1C */	li r4, 0x1c
/* 813CF0E0 | 48 14 2F 7D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CF0E4 | 7F E3 FB 78 */	mr r3, r31
/* 813CF0E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CF0EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CF0F0 | 7C 08 03 A6 */	mtlr r0
/* 813CF0F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CF0F8 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene10MemoryBaseFv

# .text:0x3DC | 0x813CF0FC | size: 0x40
# ipl::scene::MemCardEventHandler::~MemCardEventHandler()
.fn __dt__Q33ipl5scene19MemCardEventHandlerFv, global
/* 813CF0FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CF100 | 7C 08 02 A6 */	mflr r0
/* 813CF104 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF108 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CF10C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CF110 | 7C 7F 1B 78 */	mr r31, r3
/* 813CF114 | 41 82 00 10 */	beq .L_813CF124
/* 813CF118 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CF11C | 40 81 00 08 */	ble .L_813CF124
/* 813CF120 | 48 22 8F C5 */	bl __dl__FPv
.L_813CF124:
/* 813CF124 | 7F E3 FB 78 */	mr r3, r31
/* 813CF128 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CF12C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CF130 | 7C 08 03 A6 */	mtlr r0
/* 813CF134 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CF138 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene19MemCardEventHandlerFv

# .text:0x41C | 0x813CF13C | size: 0x1C
# ipl::scene::MemoryBaseEvent::MemoryBaseEvent(ipl::scene::MemoryBase*)
.fn __ct__Q33ipl5scene15MemoryBaseEventFPQ33ipl5scene10MemoryBase, global
/* 813CF13C | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene15MemoryBaseEvent@ha
/* 813CF140 | 38 00 00 00 */	li r0, 0x0
/* 813CF144 | 38 A5 26 B4 */	addi r5, r5, __vt__Q33ipl5scene15MemoryBaseEvent@l
/* 813CF148 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813CF14C | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813CF150 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 813CF154 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene15MemoryBaseEventFPQ33ipl5scene10MemoryBase

# .text:0x438 | 0x813CF158 | size: 0x10
# ipl::math::LinearIntp<ipl::math::VEC3>::LinearIntp()
.fn "__ct__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv", weak
/* 813CF158 | 3C 80 81 65 */	lis r4, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>"@ha
/* 813CF15C | 38 84 BE 40 */	addi r4, r4, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>"@l
/* 813CF160 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813CF164 | 4E 80 00 20 */	blr
.endfn "__ct__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv"

# .text:0x448 | 0x813CF168 | size: 0x318
# ipl::scene::GCWindow::init(const ipl::math::VEC3&, ipl::scene::MemoryCardManager*, unsigned char, short)
.fn init__Q33ipl5scene8GCWindowFRCQ33ipl4math4VEC3PQ33ipl5scene17MemoryCardManagerUcs, global
/* 813CF168 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813CF16C | 7C 08 02 A6 */	mflr r0
/* 813CF170 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813CF174 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813CF178 | 48 22 A3 3D */	bl _savegpr_24
/* 813CF17C | 38 00 00 01 */	li r0, 0x1
/* 813CF180 | 7C BA 2B 78 */	mr r26, r5
/* 813CF184 | 98 03 00 90 */	stb r0, 0x90(r3)
/* 813CF188 | 3F E0 81 65 */	lis r31, lbl_81652820@ha
/* 813CF18C | 7C A3 32 14 */	add r5, r3, r6
/* 813CF190 | 38 00 00 00 */	li r0, 0x0
/* 813CF194 | 98 05 00 94 */	stb r0, 0x94(r5)
/* 813CF198 | 3B FF 28 20 */	addi r31, r31, lbl_81652820@l
/* 813CF19C | 7C 9E 23 78 */	mr r30, r4
/* 813CF1A0 | 7C 7D 1B 78 */	mr r29, r3
/* 813CF1A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF1A8 | 7C D8 33 78 */	mr r24, r6
/* 813CF1AC | 7C F9 3B 78 */	mr r25, r7
/* 813CF1B0 | 38 9F 02 80 */	addi r4, r31, 0x280
/* 813CF1B4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813CF1B8 | 38 A0 00 01 */	li r5, 0x1
/* 813CF1BC | 7D 89 03 A6 */	mtctr r12
/* 813CF1C0 | 4E 80 04 21 */	bctrl
/* 813CF1C4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813CF1C8 | 93 5D 00 40 */	stw r26, 0x40(r29)
/* 813CF1CC | 7F A0 EB 78 */	mr r0, r29
/* 813CF1D0 | 41 82 00 08 */	beq .L_813CF1D8
/* 813CF1D4 | 38 1D 00 34 */	addi r0, r29, 0x34
.L_813CF1D8:
/* 813CF1D8 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 813CF1DC | 7F 04 C3 78 */	mr r4, r24
/* 813CF1E0 | 7F 25 CB 78 */	mr r5, r25
/* 813CF1E4 | 38 C0 00 00 */	li r6, 0x0
/* 813CF1E8 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813CF1EC | 90 03 69 3C */	stw r0, 0x693c(r3)
/* 813CF1F0 | 9B 1D 00 88 */	stb r24, 0x88(r29)
/* 813CF1F4 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 813CF1F8 | B3 3D 00 8A */	sth r25, 0x8a(r29)
/* 813CF1FC | 4B FF EF 1D */	bl getComment__Q33ipl5scene17MemoryCardManagerFUcsi
/* 813CF200 | C0 22 86 88 */	lfs f1, lbl_81694A88@sda21(r0)
/* 813CF204 | 7C 65 1B 78 */	mr r5, r3
/* 813CF208 | C0 42 86 8C */	lfs f2, lbl_81694A8C@sda21(r0)
/* 813CF20C | 7F A3 EB 78 */	mr r3, r29
/* 813CF210 | 38 9F 02 89 */	addi r4, r31, 0x289
/* 813CF214 | 4B FF D7 31 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcPCwff
/* 813CF218 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 813CF21C | 7F 04 C3 78 */	mr r4, r24
/* 813CF220 | 7F 25 CB 78 */	mr r5, r25
/* 813CF224 | 38 C0 00 01 */	li r6, 0x1
/* 813CF228 | 4B FF EE F1 */	bl getComment__Q33ipl5scene17MemoryCardManagerFUcsi
/* 813CF22C | C0 22 86 88 */	lfs f1, lbl_81694A88@sda21(r0)
/* 813CF230 | 7C 65 1B 78 */	mr r5, r3
/* 813CF234 | C0 42 86 8C */	lfs f2, lbl_81694A8C@sda21(r0)
/* 813CF238 | 7F A3 EB 78 */	mr r3, r29
/* 813CF23C | 38 9F 02 94 */	addi r4, r31, 0x294
/* 813CF240 | 4B FF D7 05 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcPCwff
/* 813CF244 | 3B 7F 02 74 */	addi r27, r31, 0x274
/* 813CF248 | 3B 40 00 00 */	li r26, 0x0
/* 813CF24C | 3B 80 00 00 */	li r28, 0x0
.L_813CF250:
/* 813CF250 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813CF254 | 38 A0 00 01 */	li r5, 0x1
/* 813CF258 | 7C 9B E0 2E */	lwzx r4, r27, r28
/* 813CF25C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CF260 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF264 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CF268 | 7D 89 03 A6 */	mtctr r12
/* 813CF26C | 4E 80 04 21 */	bctrl
/* 813CF270 | 7C 64 1B 78 */	mr r4, r3
/* 813CF274 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813CF278 | 4B F9 BF A1 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813CF27C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813CF280 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813CF284 | 2C 1A 00 03 */	cmpwi r26, 0x3
/* 813CF288 | 41 80 FF C8 */	blt .L_813CF250
/* 813CF28C | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 813CF290 | 7F 04 C3 78 */	mr r4, r24
/* 813CF294 | 7F 25 CB 78 */	mr r5, r25
/* 813CF298 | 4B FF F2 15 */	bl getBlocks__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CF29C | 3C 80 81 61 */	lis r4, scNumber__Q23ipl5scene@ha
/* 813CF2A0 | 38 00 00 05 */	li r0, 0x5
/* 813CF2A4 | 38 84 05 40 */	addi r4, r4, scNumber__Q23ipl5scene@l
/* 813CF2A8 | 38 C1 00 32 */	addi r6, r1, 0x32
/* 813CF2AC | 38 A4 FF FE */	subi r5, r4, 0x2
/* 813CF2B0 | 7C 09 03 A6 */	mtctr r0
.L_813CF2B4:
/* 813CF2B4 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813CF2B8 | A4 05 00 04 */	lhzu r0, 0x4(r5)
/* 813CF2BC | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813CF2C0 | B4 06 00 04 */	sthu r0, 0x4(r6)
/* 813CF2C4 | 42 00 FF F0 */	bdnz .L_813CF2B4
/* 813CF2C8 | 54 7B 04 3E */	clrlwi r27, r3, 16
/* 813CF2CC | 38 60 00 64 */	li r3, 0x64
/* 813CF2D0 | 7D 7B 1B D6 */	divw r11, r27, r3
/* 813CF2D4 | 3B 80 00 00 */	li r28, 0x0
/* 813CF2D8 | 39 40 00 0A */	li r10, 0xa
/* 813CF2DC | B3 81 00 2A */	sth r28, 0x2a(r1)
/* 813CF2E0 | 39 20 03 E8 */	li r9, 0x3e8
/* 813CF2E4 | B3 81 00 2C */	sth r28, 0x2c(r1)
/* 813CF2E8 | 7D 1B 53 D6 */	divw r8, r27, r10
/* 813CF2EC | B3 81 00 2E */	sth r28, 0x2e(r1)
/* 813CF2F0 | 39 81 00 34 */	addi r12, r1, 0x34
/* 813CF2F4 | B3 81 00 30 */	sth r28, 0x30(r1)
/* 813CF2F8 | 38 00 00 03 */	li r0, 0x3
/* 813CF2FC | 38 A1 00 2A */	addi r5, r1, 0x2a
/* 813CF300 | 7C EB 53 D6 */	divw r7, r11, r10
/* 813CF304 | B3 81 00 32 */	sth r28, 0x32(r1)
/* 813CF308 | 38 60 00 00 */	li r3, 0x0
/* 813CF30C | B3 81 00 20 */	sth r28, 0x20(r1)
/* 813CF310 | 38 80 00 00 */	li r4, 0x0
/* 813CF314 | B3 81 00 22 */	sth r28, 0x22(r1)
/* 813CF318 | B3 81 00 24 */	sth r28, 0x24(r1)
/* 813CF31C | 7C C8 53 D6 */	divw r6, r8, r10
/* 813CF320 | B3 81 00 26 */	sth r28, 0x26(r1)
/* 813CF324 | B3 81 00 28 */	sth r28, 0x28(r1)
/* 813CF328 | 7F 9B 4B D6 */	divw r28, r27, r9
/* 813CF32C | 7D 27 51 D6 */	mullw r9, r7, r10
/* 813CF330 | 57 87 08 3C */	slwi r7, r28, 1
/* 813CF334 | 7C EC 3A 2E */	lhzx r7, r12, r7
/* 813CF338 | B0 E1 00 2A */	sth r7, 0x2a(r1)
/* 813CF33C | 7C E6 51 D6 */	mullw r7, r6, r10
/* 813CF340 | 7C C9 58 50 */	subf r6, r9, r11
/* 813CF344 | 54 C6 08 3C */	slwi r6, r6, 1
/* 813CF348 | 7D 2C 32 2E */	lhzx r9, r12, r6
/* 813CF34C | 7C C8 51 D6 */	mullw r6, r8, r10
/* 813CF350 | 7C E7 40 50 */	subf r7, r7, r8
/* 813CF354 | B1 21 00 2C */	sth r9, 0x2c(r1)
/* 813CF358 | 54 E7 08 3C */	slwi r7, r7, 1
/* 813CF35C | 7C EC 3A 2E */	lhzx r7, r12, r7
/* 813CF360 | 7C C6 D8 50 */	subf r6, r6, r27
/* 813CF364 | 54 C6 08 3C */	slwi r6, r6, 1
/* 813CF368 | B0 E1 00 2E */	sth r7, 0x2e(r1)
/* 813CF36C | 7C CC 32 2E */	lhzx r6, r12, r6
/* 813CF370 | B0 C1 00 30 */	sth r6, 0x30(r1)
/* 813CF374 | 7C 09 03 A6 */	mtctr r0
.L_813CF378:
/* 813CF378 | 7C 05 22 2E */	lhzx r0, r5, r4
/* 813CF37C | 28 00 00 30 */	cmplwi r0, 0x30
/* 813CF380 | 40 82 00 10 */	bne .L_813CF390
/* 813CF384 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813CF388 | 38 84 00 02 */	addi r4, r4, 0x2
/* 813CF38C | 42 00 FF EC */	bdnz .L_813CF378
.L_813CF390:
/* 813CF390 | 54 60 08 3C */	slwi r0, r3, 1
/* 813CF394 | 38 81 00 2A */	addi r4, r1, 0x2a
/* 813CF398 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813CF39C | 7C 84 02 14 */	add r4, r4, r0
/* 813CF3A0 | 48 23 93 29 */	bl fn_816086C8
/* 813CF3A4 | 7F A3 EB 78 */	mr r3, r29
/* 813CF3A8 | 38 9F 02 9F */	addi r4, r31, 0x29f
/* 813CF3AC | 38 A1 00 20 */	addi r5, r1, 0x20
/* 813CF3B0 | 4B FF D6 C9 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcPCw
/* 813CF3B4 | 7F C4 F3 78 */	mr r4, r30
/* 813CF3B8 | 38 7D 00 7C */	addi r3, r29, 0x7c
/* 813CF3BC | 4B F7 52 C9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813CF3C0 | C0 22 86 90 */	lfs f1, lbl_81694A90@sda21(r0)
/* 813CF3C4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813CF3C8 | FC 40 08 90 */	fmr f2, f1
/* 813CF3CC | FC 60 08 90 */	fmr f3, f1
/* 813CF3D0 | 4B F9 36 8D */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813CF3D4 | 38 7D 00 64 */	addi r3, r29, 0x64
/* 813CF3D8 | 38 9D 00 7C */	addi r4, r29, 0x7c
/* 813CF3DC | 4B F7 52 A9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813CF3E0 | 38 7D 00 70 */	addi r3, r29, 0x70
/* 813CF3E4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813CF3E8 | 4B F7 52 9D */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813CF3EC | C0 22 86 94 */	lfs f1, lbl_81694A94@sda21(r0)
/* 813CF3F0 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 813CF3F4 | C0 42 86 90 */	lfs f2, lbl_81694A90@sda21(r0)
/* 813CF3F8 | 38 80 00 00 */	li r4, 0x0
/* 813CF3FC | C0 62 86 98 */	lfs f3, lbl_81694A98@sda21(r0)
/* 813CF400 | 4B F9 34 51 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813CF404 | 38 7D 00 44 */	addi r3, r29, 0x44
/* 813CF408 | 4B F9 34 69 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813CF40C | 3B 80 00 01 */	li r28, 0x1
/* 813CF410 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813CF414 | 93 9D 00 58 */	stw r28, 0x58(r29)
/* 813CF418 | 38 9D 00 44 */	addi r4, r29, 0x44
/* 813CF41C | 4B FD 6F 55 */	bl "get__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>CFv"
/* 813CF420 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813CF424 | 38 9F 02 AA */	addi r4, r31, 0x2aa
/* 813CF428 | 38 A0 00 01 */	li r5, 0x1
/* 813CF42C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CF430 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF434 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CF438 | 7D 89 03 A6 */	mtctr r12
/* 813CF43C | 4E 80 04 21 */	bctrl
/* 813CF440 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813CF444 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813CF448 | 4B F7 52 3D */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813CF44C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813CF450 | 7F A3 EB 78 */	mr r3, r29
/* 813CF454 | 38 80 00 00 */	li r4, 0x0
/* 813CF458 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CF45C | 7D 89 03 A6 */	mtctr r12
/* 813CF460 | 4E 80 04 21 */	bctrl
/* 813CF464 | 93 9D 00 38 */	stw r28, 0x38(r29)
/* 813CF468 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813CF46C | 48 22 A0 95 */	bl _restgpr_24
/* 813CF470 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 813CF474 | 7C 08 03 A6 */	mtlr r0
/* 813CF478 | 38 21 00 70 */	addi r1, r1, 0x70
/* 813CF47C | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene8GCWindowFRCQ33ipl4math4VEC3PQ33ipl5scene17MemoryCardManagerUcs

# .text:0x760 | 0x813CF480 | size: 0x208
# ipl::scene::GCWindow::calc()
.fn calc__Q33ipl5scene8GCWindowFv, global
/* 813CF480 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CF484 | 7C 08 02 A6 */	mflr r0
/* 813CF488 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CF48C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CF490 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CF494 | 7C 7E 1B 78 */	mr r30, r3
/* 813CF498 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CF49C | 4B F9 B2 69 */	bl calc__Q33ipl6layout6ObjectFv
/* 813CF4A0 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813CF4A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF4A8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813CF4AC | 7D 89 03 A6 */	mtctr r12
/* 813CF4B0 | 4E 80 04 21 */	bctrl
/* 813CF4B4 | 3B E0 00 00 */	li r31, 0x0
/* 813CF4B8 | 48 00 00 0C */	b .L_813CF4C4
.L_813CF4BC:
/* 813CF4BC | 7F E3 FB 78 */	mr r3, r31
/* 813CF4C0 | 4B FF D8 7D */	bl calc__Q43ipl5scene10MemoryBase9AnmButtonFv
.L_813CF4C4:
/* 813CF4C4 | 7F E4 FB 78 */	mr r4, r31
/* 813CF4C8 | 38 7E 00 28 */	addi r3, r30, 0x28
/* 813CF4CC | 48 14 2E 11 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CF4D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF4D4 | 7C 7F 1B 78 */	mr r31, r3
/* 813CF4D8 | 40 82 FF E4 */	bne .L_813CF4BC
/* 813CF4DC | 80 1E 00 38 */	lwz r0, 0x38(r30)
/* 813CF4E0 | 28 00 00 16 */	cmplwi r0, 0x16
/* 813CF4E4 | 41 81 01 8C */	bgt .L_813CF670
/* 813CF4E8 | 3C 60 81 65 */	lis r3, jumptable_81652AD4@ha
/* 813CF4EC | 54 00 10 3A */	slwi r0, r0, 2
/* 813CF4F0 | 38 63 2A D4 */	addi r3, r3, jumptable_81652AD4@l
/* 813CF4F4 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813CF4F8 | 7C 69 03 A6 */	mtctr r3
/* 813CF4FC | 4E 80 04 20 */	bctr
.L_813CF500:
/* 813CF500 | 7F C3 F3 78 */	mr r3, r30
/* 813CF504 | 48 00 05 B1 */	bl on_wait__Q33ipl5scene8GCWindowFv
/* 813CF508 | 48 00 01 68 */	b .L_813CF670
.L_813CF50C:
/* 813CF50C | 7F C3 F3 78 */	mr r3, r30
/* 813CF510 | 48 00 06 4D */	bl on_fadein__Q33ipl5scene8GCWindowFv
/* 813CF514 | 48 00 01 5C */	b .L_813CF670
.L_813CF518:
/* 813CF518 | 7F C3 F3 78 */	mr r3, r30
/* 813CF51C | 48 00 06 ED */	bl on_normal__Q33ipl5scene8GCWindowFv
/* 813CF520 | 48 00 01 50 */	b .L_813CF670
.L_813CF524:
/* 813CF524 | 7F C3 F3 78 */	mr r3, r30
/* 813CF528 | 48 00 07 41 */	bl on_fadeout1st__Q33ipl5scene8GCWindowFv
/* 813CF52C | 48 00 01 44 */	b .L_813CF670
.L_813CF530:
/* 813CF530 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CF534 | 7F C3 F3 78 */	mr r3, r30
/* 813CF538 | 38 80 00 01 */	li r4, 0x1
/* 813CF53C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CF540 | 7D 89 03 A6 */	mtctr r12
/* 813CF544 | 4E 80 04 21 */	bctrl
/* 813CF548 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF54C | 40 82 01 24 */	bne .L_813CF670
/* 813CF550 | 7F C3 F3 78 */	mr r3, r30
/* 813CF554 | 48 00 02 9D */	bl destroy__Q33ipl5scene8GCWindowFv
/* 813CF558 | 48 00 01 18 */	b .L_813CF670
.L_813CF55C:
/* 813CF55C | 7F C3 F3 78 */	mr r3, r30
/* 813CF560 | 48 00 07 C1 */	bl on_fadeout_yes1st__Q33ipl5scene8GCWindowFv
/* 813CF564 | 48 00 01 0C */	b .L_813CF670
.L_813CF568:
/* 813CF568 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CF56C | 7F C3 F3 78 */	mr r3, r30
/* 813CF570 | 38 80 00 0D */	li r4, 0xd
/* 813CF574 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CF578 | 7D 89 03 A6 */	mtctr r12
/* 813CF57C | 4E 80 04 21 */	bctrl
/* 813CF580 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF584 | 40 82 00 EC */	bne .L_813CF670
/* 813CF588 | 7F C3 F3 78 */	mr r3, r30
/* 813CF58C | 48 00 02 65 */	bl destroy__Q33ipl5scene8GCWindowFv
/* 813CF590 | 48 00 00 E0 */	b .L_813CF670
.L_813CF594:
/* 813CF594 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CF598 | 7F C3 F3 78 */	mr r3, r30
/* 813CF59C | 38 80 00 0E */	li r4, 0xe
/* 813CF5A0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CF5A4 | 7D 89 03 A6 */	mtctr r12
/* 813CF5A8 | 4E 80 04 21 */	bctrl
/* 813CF5AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF5B0 | 40 82 00 C0 */	bne .L_813CF670
/* 813CF5B4 | 7F C3 F3 78 */	mr r3, r30
/* 813CF5B8 | 48 00 02 39 */	bl destroy__Q33ipl5scene8GCWindowFv
/* 813CF5BC | 48 00 00 B4 */	b .L_813CF670
.L_813CF5C0:
/* 813CF5C0 | 7F C3 F3 78 */	mr r3, r30
/* 813CF5C4 | 48 00 08 31 */	bl on_focus_move__Q33ipl5scene8GCWindowFv
/* 813CF5C8 | 48 00 00 A8 */	b .L_813CF670
.L_813CF5CC:
/* 813CF5CC | 7F C3 F3 78 */	mr r3, r30
/* 813CF5D0 | 48 00 09 B5 */	bl on_focus_copy__Q33ipl5scene8GCWindowFv
/* 813CF5D4 | 48 00 00 9C */	b .L_813CF670
.L_813CF5D8:
/* 813CF5D8 | 7F C3 F3 78 */	mr r3, r30
/* 813CF5DC | 48 00 0B 39 */	bl on_focus_del__Q33ipl5scene8GCWindowFv
/* 813CF5E0 | 48 00 00 90 */	b .L_813CF670
.L_813CF5E4:
/* 813CF5E4 | 7F C3 F3 78 */	mr r3, r30
/* 813CF5E8 | 48 00 0B 9D */	bl on_select_out__Q33ipl5scene8GCWindowFv
/* 813CF5EC | 48 00 00 84 */	b .L_813CF670
.L_813CF5F0:
/* 813CF5F0 | 7F C3 F3 78 */	mr r3, r30
/* 813CF5F4 | 48 00 0C 05 */	bl on_dialog__Q33ipl5scene8GCWindowFv
/* 813CF5F8 | 48 00 00 78 */	b .L_813CF670
.L_813CF5FC:
/* 813CF5FC | 7F C3 F3 78 */	mr r3, r30
/* 813CF600 | 48 00 0F C9 */	bl on_error_message__Q33ipl5scene8GCWindowFv
/* 813CF604 | 48 00 00 6C */	b .L_813CF670
.L_813CF608:
/* 813CF608 | 7F C3 F3 78 */	mr r3, r30
/* 813CF60C | 48 00 10 75 */	bl on_error_message1st__Q33ipl5scene8GCWindowFv
/* 813CF610 | 48 00 00 60 */	b .L_813CF670
.L_813CF614:
/* 813CF614 | 7F C3 F3 78 */	mr r3, r30
/* 813CF618 | 48 00 11 2D */	bl on_error_message2nd__Q33ipl5scene8GCWindowFv
/* 813CF61C | 48 00 00 54 */	b .L_813CF670
.L_813CF620:
/* 813CF620 | 7F C3 F3 78 */	mr r3, r30
/* 813CF624 | 48 00 11 E5 */	bl on_error_message3rd__Q33ipl5scene8GCWindowFv
/* 813CF628 | 48 00 00 48 */	b .L_813CF670
.L_813CF62C:
/* 813CF62C | 7F C3 F3 78 */	mr r3, r30
/* 813CF630 | 48 00 0F B9 */	bl on_process__Q33ipl5scene8GCWindowFv
/* 813CF634 | 48 00 00 3C */	b .L_813CF670
.L_813CF638:
/* 813CF638 | 7F C3 F3 78 */	mr r3, r30
/* 813CF63C | 48 00 12 45 */	bl on_format1st__Q33ipl5scene8GCWindowFv
/* 813CF640 | 48 00 00 30 */	b .L_813CF670
.L_813CF644:
/* 813CF644 | 7F C3 F3 78 */	mr r3, r30
/* 813CF648 | 48 00 12 BD */	bl on_format2nd__Q33ipl5scene8GCWindowFv
/* 813CF64C | 48 00 00 24 */	b .L_813CF670
.L_813CF650:
/* 813CF650 | 7F C3 F3 78 */	mr r3, r30
/* 813CF654 | 48 00 13 4D */	bl on_format3rd__Q33ipl5scene8GCWindowFv
/* 813CF658 | 48 00 00 18 */	b .L_813CF670
.L_813CF65C:
/* 813CF65C | 7F C3 F3 78 */	mr r3, r30
/* 813CF660 | 48 00 13 99 */	bl on_format4th__Q33ipl5scene8GCWindowFv
/* 813CF664 | 48 00 00 0C */	b .L_813CF670
.L_813CF668:
/* 813CF668 | 7F C3 F3 78 */	mr r3, r30
/* 813CF66C | 48 00 13 AD */	bl on_format_error__Q33ipl5scene8GCWindowFv
.L_813CF670:
/* 813CF670 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CF674 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CF678 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CF67C | 7C 08 03 A6 */	mtlr r0
/* 813CF680 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CF684 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene8GCWindowFv

# .text:0x968 | 0x813CF688 | size: 0x168
# ipl::scene::GCWindow::draw()
.fn draw__Q33ipl5scene8GCWindowFv, global
/* 813CF688 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CF68C | 7C 08 02 A6 */	mflr r0
/* 813CF690 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CF694 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CF698 | 48 22 9E 31 */	bl _savegpr_29
/* 813CF69C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813CF6A0 | 7C 7D 1B 78 */	mr r29, r3
/* 813CF6A4 | 3F C0 81 65 */	lis r30, lbl_81652B30@ha
/* 813CF6A8 | 38 A0 00 01 */	li r5, 0x1
/* 813CF6AC | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 813CF6B0 | 38 9E 2B 30 */	addi r4, r30, lbl_81652B30@l
/* 813CF6B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF6B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CF6BC | 7D 89 03 A6 */	mtctr r12
/* 813CF6C0 | 4E 80 04 21 */	bctrl
/* 813CF6C4 | 38 80 00 00 */	li r4, 0x0
/* 813CF6C8 | 4B F7 4D 4D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813CF6CC | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813CF6D0 | 3F E0 81 65 */	lis r31, lbl_81652B3A@ha
/* 813CF6D4 | 38 9F 2B 3A */	addi r4, r31, lbl_81652B3A@l
/* 813CF6D8 | 38 A0 00 01 */	li r5, 0x1
/* 813CF6DC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CF6E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF6E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CF6E8 | 7D 89 03 A6 */	mtctr r12
/* 813CF6EC | 4E 80 04 21 */	bctrl
/* 813CF6F0 | 38 80 00 00 */	li r4, 0x0
/* 813CF6F4 | 4B F7 4D 21 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813CF6F8 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 813CF6FC | 88 9D 00 88 */	lbz r4, 0x88(r29)
/* 813CF700 | A8 BD 00 8A */	lha r5, 0x8a(r29)
/* 813CF704 | 4B FF E1 ED */	bl isIconValidate__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CF708 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF70C | 41 82 00 C4 */	beq .L_813CF7D0
/* 813CF710 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 813CF714 | 88 9D 00 88 */	lbz r4, 0x88(r29)
/* 813CF718 | A8 BD 00 8A */	lha r5, 0x8a(r29)
/* 813CF71C | 4B FF E2 6D */	bl isBannerEnable__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CF720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF724 | 41 82 00 58 */	beq .L_813CF77C
/* 813CF728 | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 813CF72C | 88 9D 00 88 */	lbz r4, 0x88(r29)
/* 813CF730 | A8 BD 00 8A */	lha r5, 0x8a(r29)
/* 813CF734 | 4B FF EB D1 */	bl create_banner__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CF738 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF73C | 7C 65 1B 78 */	mr r5, r3
/* 813CF740 | 41 82 00 90 */	beq .L_813CF7D0
/* 813CF744 | 7F A3 EB 78 */	mr r3, r29
/* 813CF748 | 38 9E 2B 30 */	addi r4, r30, lbl_81652B30@l
/* 813CF74C | 48 00 13 D5 */	bl set_texture__Q33ipl5scene8GCWindowFPCcRC9_GXTexObj
/* 813CF750 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813CF754 | 38 9E 2B 30 */	addi r4, r30, lbl_81652B30@l
/* 813CF758 | 38 A0 00 01 */	li r5, 0x1
/* 813CF75C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CF760 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF764 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CF768 | 7D 89 03 A6 */	mtctr r12
/* 813CF76C | 4E 80 04 21 */	bctrl
/* 813CF770 | 38 80 00 01 */	li r4, 0x1
/* 813CF774 | 4B F7 4C A1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813CF778 | 48 00 00 58 */	b .L_813CF7D0
.L_813CF77C:
/* 813CF77C | 80 7D 00 40 */	lwz r3, 0x40(r29)
/* 813CF780 | 38 C0 00 00 */	li r6, 0x0
/* 813CF784 | 88 9D 00 88 */	lbz r4, 0x88(r29)
/* 813CF788 | A8 BD 00 8A */	lha r5, 0x8a(r29)
/* 813CF78C | 4B FF E7 99 */	bl create_icon__Q33ipl5scene17MemoryCardManagerFUcsl
/* 813CF790 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF794 | 7C 65 1B 78 */	mr r5, r3
/* 813CF798 | 41 82 00 38 */	beq .L_813CF7D0
/* 813CF79C | 7F A3 EB 78 */	mr r3, r29
/* 813CF7A0 | 38 9F 2B 3A */	addi r4, r31, lbl_81652B3A@l
/* 813CF7A4 | 48 00 13 7D */	bl set_texture__Q33ipl5scene8GCWindowFPCcRC9_GXTexObj
/* 813CF7A8 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813CF7AC | 38 9F 2B 3A */	addi r4, r31, lbl_81652B3A@l
/* 813CF7B0 | 38 A0 00 01 */	li r5, 0x1
/* 813CF7B4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CF7B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF7BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CF7C0 | 7D 89 03 A6 */	mtctr r12
/* 813CF7C4 | 4E 80 04 21 */	bctrl
/* 813CF7C8 | 38 80 00 01 */	li r4, 0x1
/* 813CF7CC | 4B F7 4C 49 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813CF7D0:
/* 813CF7D0 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813CF7D4 | 4B F9 AF C9 */	bl draw__Q33ipl6layout6ObjectFv
/* 813CF7D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CF7DC | 48 22 9D 39 */	bl _restgpr_29
/* 813CF7E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CF7E4 | 7C 08 03 A6 */	mtlr r0
/* 813CF7E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CF7EC | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene8GCWindowFv

# .text:0xAD0 | 0x813CF7F0 | size: 0xA8
# ipl::scene::GCWindow::destroy()
.fn destroy__Q33ipl5scene8GCWindowFv, global
/* 813CF7F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CF7F4 | 7C 08 02 A6 */	mflr r0
/* 813CF7F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CF7FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CF800 | 48 22 9C C5 */	bl _savegpr_28
/* 813CF804 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813CF808 | 7C 7C 1B 78 */	mr r28, r3
/* 813CF80C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813CF810 | 38 80 00 0E */	li r4, 0xe
/* 813CF814 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813CF818 | 48 03 B9 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CF81C | 4B FF C8 9D */	bl onRelease__Q33ipl5scene10MemoryCardFv
/* 813CF820 | 3F C0 81 65 */	lis r30, lbl_81652A94@ha
/* 813CF824 | 3B A0 00 00 */	li r29, 0x0
/* 813CF828 | 3B DE 2A 94 */	addi r30, r30, lbl_81652A94@l
/* 813CF82C | 3B E0 00 00 */	li r31, 0x0
.L_813CF830:
/* 813CF830 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813CF834 | 7F 83 E3 78 */	mr r3, r28
/* 813CF838 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813CF83C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813CF840 | 7D 89 03 A6 */	mtctr r12
/* 813CF844 | 4E 80 04 21 */	bctrl
/* 813CF848 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813CF84C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813CF850 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813CF854 | 41 80 FF DC */	blt .L_813CF830
/* 813CF858 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813CF85C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813CF860 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813CF864 | 4B F7 8A E1 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813CF868 | 3B E0 00 00 */	li r31, 0x0
/* 813CF86C | 7F 83 E3 78 */	mr r3, r28
/* 813CF870 | 9B FC 00 91 */	stb r31, 0x91(r28)
/* 813CF874 | 4B FF D4 29 */	bl show_button_return__Q33ipl5scene10MemoryBaseFv
/* 813CF878 | 9B FC 00 90 */	stb r31, 0x90(r28)
/* 813CF87C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CF880 | 93 FC 00 38 */	stw r31, 0x38(r28)
/* 813CF884 | 48 22 9C 8D */	bl _restgpr_28
/* 813CF888 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CF88C | 7C 08 03 A6 */	mtlr r0
/* 813CF890 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CF894 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene8GCWindowFv

# .text:0xB78 | 0x813CF898 | size: 0xA0
# ipl::scene::GCWindow::onPoint(const char*, ipl::controller::Interface*)
.fn onPoint__Q33ipl5scene8GCWindowFPCcPQ33ipl10controller9Interface, global
/* 813CF898 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CF89C | 7C 08 02 A6 */	mflr r0
/* 813CF8A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CF8A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CF8A8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CF8AC | 7C BE 2B 78 */	mr r30, r5
/* 813CF8B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF8B4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CF8B8 | 7D 89 03 A6 */	mtctr r12
/* 813CF8BC | 4E 80 04 21 */	bctrl
/* 813CF8C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF8C4 | 7C 7F 1B 78 */	mr r31, r3
/* 813CF8C8 | 41 82 00 58 */	beq .L_813CF920
/* 813CF8CC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813CF8D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CF8D4 | 40 82 00 40 */	bne .L_813CF914
/* 813CF8D8 | 38 80 00 01 */	li r4, 0x1
/* 813CF8DC | 4B FF D4 C1 */	bl onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi
/* 813CF8E0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813CF8E4 | 3C 80 81 65 */	lis r4, lbl_81652B44@ha
/* 813CF8E8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813CF8EC | 38 84 2B 44 */	addi r4, r4, lbl_81652B44@l
/* 813CF8F0 | 4B F9 BB 7D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813CF8F4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813CF8F8 | 41 82 00 1C */	beq .L_813CF914
/* 813CF8FC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CF900 | 7F C3 F3 78 */	mr r3, r30
/* 813CF904 | 38 80 00 00 */	li r4, 0x0
/* 813CF908 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CF90C | 7D 89 03 A6 */	mtctr r12
/* 813CF910 | 4E 80 04 21 */	bctrl
.L_813CF914:
/* 813CF914 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813CF918 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813CF91C | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_813CF920:
/* 813CF920 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CF924 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CF928 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CF92C | 7C 08 03 A6 */	mtlr r0
/* 813CF930 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CF934 | 4E 80 00 20 */	blr
.endfn onPoint__Q33ipl5scene8GCWindowFPCcPQ33ipl10controller9Interface

# .text:0xC18 | 0x813CF938 | size: 0x60
# ipl::scene::GCWindow::onLeft(const char*)
.fn onLeft__Q33ipl5scene8GCWindowFPCc, global
/* 813CF938 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CF93C | 7C 08 02 A6 */	mflr r0
/* 813CF940 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CF944 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CF948 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF94C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CF950 | 7D 89 03 A6 */	mtctr r12
/* 813CF954 | 4E 80 04 21 */	bctrl
/* 813CF958 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF95C | 7C 7F 1B 78 */	mr r31, r3
/* 813CF960 | 41 82 00 24 */	beq .L_813CF984
/* 813CF964 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813CF968 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813CF96C | 40 82 00 0C */	bne .L_813CF978
/* 813CF970 | 38 80 00 02 */	li r4, 0x2
/* 813CF974 | 4B FF D4 29 */	bl onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi
.L_813CF978:
/* 813CF978 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813CF97C | 38 03 FF FF */	subi r0, r3, 0x1
/* 813CF980 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_813CF984:
/* 813CF984 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CF988 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CF98C | 7C 08 03 A6 */	mtlr r0
/* 813CF990 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CF994 | 4E 80 00 20 */	blr
.endfn onLeft__Q33ipl5scene8GCWindowFPCc

# .text:0xC78 | 0x813CF998 | size: 0x11C
# ipl::scene::GCWindow::onTrig(const char*)
.fn onTrig__Q33ipl5scene8GCWindowFPCc, global
/* 813CF998 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CF99C | 7C 08 02 A6 */	mflr r0
/* 813CF9A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CF9A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CF9A8 | 48 22 9B 1D */	bl _savegpr_28
/* 813CF9AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CF9B0 | 3F C0 81 65 */	lis r30, lbl_81652820@ha
/* 813CF9B4 | 7C 7C 1B 78 */	mr r28, r3
/* 813CF9B8 | 7C 9D 23 78 */	mr r29, r4
/* 813CF9BC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CF9C0 | 3B DE 28 20 */	addi r30, r30, lbl_81652820@l
/* 813CF9C4 | 7D 89 03 A6 */	mtctr r12
/* 813CF9C8 | 4E 80 04 21 */	bctrl
/* 813CF9CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF9D0 | 41 82 00 CC */	beq .L_813CFA9C
/* 813CF9D4 | 80 9E 02 74 */	lwz r4, 0x274(r30)
/* 813CF9D8 | 7F A3 EB 78 */	mr r3, r29
/* 813CF9DC | 48 23 2A A5 */	bl strcmp
/* 813CF9E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CF9E4 | 40 82 00 28 */	bne .L_813CFA0C
/* 813CF9E8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813CF9EC | 7F 83 E3 78 */	mr r3, r28
/* 813CF9F0 | 38 80 00 04 */	li r4, 0x4
/* 813CF9F4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CF9F8 | 7D 89 03 A6 */	mtctr r12
/* 813CF9FC | 4E 80 04 21 */	bctrl
/* 813CFA00 | 38 00 00 08 */	li r0, 0x8
/* 813CFA04 | 90 1C 00 38 */	stw r0, 0x38(r28)
/* 813CFA08 | 48 00 00 84 */	b .L_813CFA8C
.L_813CFA0C:
/* 813CFA0C | 3B FE 02 74 */	addi r31, r30, 0x274
/* 813CFA10 | 7F A3 EB 78 */	mr r3, r29
/* 813CFA14 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 813CFA18 | 48 23 2A 69 */	bl strcmp
/* 813CFA1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFA20 | 40 82 00 28 */	bne .L_813CFA48
/* 813CFA24 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813CFA28 | 7F 83 E3 78 */	mr r3, r28
/* 813CFA2C | 38 80 00 07 */	li r4, 0x7
/* 813CFA30 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CFA34 | 7D 89 03 A6 */	mtctr r12
/* 813CFA38 | 4E 80 04 21 */	bctrl
/* 813CFA3C | 38 00 00 09 */	li r0, 0x9
/* 813CFA40 | 90 1C 00 38 */	stw r0, 0x38(r28)
/* 813CFA44 | 48 00 00 48 */	b .L_813CFA8C
.L_813CFA48:
/* 813CFA48 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 813CFA4C | 7F A3 EB 78 */	mr r3, r29
/* 813CFA50 | 48 23 2A 31 */	bl strcmp
/* 813CFA54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFA58 | 40 82 00 34 */	bne .L_813CFA8C
/* 813CFA5C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813CFA60 | 7F 83 E3 78 */	mr r3, r28
/* 813CFA64 | 38 80 00 0A */	li r4, 0xa
/* 813CFA68 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CFA6C | 7D 89 03 A6 */	mtctr r12
/* 813CFA70 | 4E 80 04 21 */	bctrl
/* 813CFA74 | 7F 83 E3 78 */	mr r3, r28
/* 813CFA78 | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813CFA7C | 38 A0 00 F7 */	li r5, 0xf7
/* 813CFA80 | 4B FF CD AD */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CFA84 | 38 00 00 0A */	li r0, 0xa
/* 813CFA88 | 90 1C 00 38 */	stw r0, 0x38(r28)
.L_813CFA8C:
/* 813CFA8C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813CFA90 | 38 9E 03 47 */	addi r4, r30, 0x347
/* 813CFA94 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813CFA98 | 4B F9 B9 D5 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813CFA9C:
/* 813CFA9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CFAA0 | 48 22 9A 71 */	bl _restgpr_28
/* 813CFAA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CFAA8 | 7C 08 03 A6 */	mtlr r0
/* 813CFAAC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CFAB0 | 4E 80 00 20 */	blr
.endfn onTrig__Q33ipl5scene8GCWindowFPCc

# .text:0xD94 | 0x813CFAB4 | size: 0xA8
# ipl::scene::GCWindow::on_wait()
.fn on_wait__Q33ipl5scene8GCWindowFv, global
/* 813CFAB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CFAB8 | 7C 08 02 A6 */	mflr r0
/* 813CFABC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CFAC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CFAC4 | 48 22 9A 01 */	bl _savegpr_28
/* 813CFAC8 | 38 00 00 02 */	li r0, 0x2
/* 813CFACC | 7C 7C 1B 78 */	mr r28, r3
/* 813CFAD0 | 3B A0 00 00 */	li r29, 0x0
/* 813CFAD4 | 7C 09 03 A6 */	mtctr r0
.L_813CFAD8:
/* 813CFAD8 | 7F C3 EA 14 */	add r30, r3, r29
/* 813CFADC | 88 1E 00 92 */	lbz r0, 0x92(r30)
/* 813CFAE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CFAE4 | 41 82 00 58 */	beq .L_813CFB3C
/* 813CFAE8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813CFAEC | 38 80 00 0E */	li r4, 0xe
/* 813CFAF0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813CFAF4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CFAF8 | 48 03 B6 41 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CFAFC | 38 80 00 00 */	li r4, 0x0
/* 813CFB00 | 4B FF C5 1D */	bl onFocus__Q33ipl5scene10MemoryCardFPv
/* 813CFB04 | 30 1D FF FF */	subic r0, r29, 0x1
/* 813CFB08 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813CFB0C | 7C 80 01 10 */	subfe r4, r0, r0
/* 813CFB10 | 38 A0 01 42 */	li r5, 0x142
/* 813CFB14 | 38 84 00 ED */	addi r4, r4, 0xed
/* 813CFB18 | 38 C0 01 41 */	li r6, 0x141
/* 813CFB1C | 38 E0 00 01 */	li r7, 0x1
/* 813CFB20 | 4B F7 6F B5 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813CFB24 | 38 60 00 00 */	li r3, 0x0
/* 813CFB28 | 38 00 00 12 */	li r0, 0x12
/* 813CFB2C | 98 7E 00 92 */	stb r3, 0x92(r30)
/* 813CFB30 | 9B BC 00 88 */	stb r29, 0x88(r28)
/* 813CFB34 | 90 1C 00 38 */	stw r0, 0x38(r28)
/* 813CFB38 | 48 00 00 0C */	b .L_813CFB44
.L_813CFB3C:
/* 813CFB3C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813CFB40 | 42 00 FF 98 */	bdnz .L_813CFAD8
.L_813CFB44:
/* 813CFB44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CFB48 | 48 22 99 C9 */	bl _restgpr_28
/* 813CFB4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CFB50 | 7C 08 03 A6 */	mtlr r0
/* 813CFB54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CFB58 | 4E 80 00 20 */	blr
.endfn on_wait__Q33ipl5scene8GCWindowFv

# .text:0xE3C | 0x813CFB5C | size: 0xAC
# ipl::scene::GCWindow::on_fadein()
.fn on_fadein__Q33ipl5scene8GCWindowFv, global
/* 813CFB5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CFB60 | 7C 08 02 A6 */	mflr r0
/* 813CFB64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CFB68 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813CFB6C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813CFB70 | 7C 7E 1B 78 */	mr r30, r3
/* 813CFB74 | 81 83 00 44 */	lwz r12, 0x44(r3)
/* 813CFB78 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CFB7C | 7D 89 03 A6 */	mtctr r12
/* 813CFB80 | 38 63 00 44 */	addi r3, r3, 0x44
/* 813CFB84 | 4E 80 04 21 */	bctrl
/* 813CFB88 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813CFB8C | 38 9E 00 44 */	addi r4, r30, 0x44
/* 813CFB90 | 4B FD 67 E1 */	bl "get__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>CFv"
/* 813CFB94 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813CFB98 | 3C 80 81 65 */	lis r4, lbl_81652ACA@ha
/* 813CFB9C | 3B E1 00 08 */	addi r31, r1, 0x8
/* 813CFBA0 | 38 A0 00 01 */	li r5, 0x1
/* 813CFBA4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CFBA8 | 38 84 2A CA */	addi r4, r4, lbl_81652ACA@l
/* 813CFBAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CFBB0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CFBB4 | 7D 89 03 A6 */	mtctr r12
/* 813CFBB8 | 4E 80 04 21 */	bctrl
/* 813CFBBC | 7F E4 FB 78 */	mr r4, r31
/* 813CFBC0 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813CFBC4 | 4B F7 4A C1 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813CFBC8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CFBCC | 7F C3 F3 78 */	mr r3, r30
/* 813CFBD0 | 38 80 00 00 */	li r4, 0x0
/* 813CFBD4 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CFBD8 | 7D 89 03 A6 */	mtctr r12
/* 813CFBDC | 4E 80 04 21 */	bctrl
/* 813CFBE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFBE4 | 40 82 00 0C */	bne .L_813CFBF0
/* 813CFBE8 | 38 00 00 02 */	li r0, 0x2
/* 813CFBEC | 90 1E 00 38 */	stw r0, 0x38(r30)
.L_813CFBF0:
/* 813CFBF0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CFBF4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813CFBF8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813CFBFC | 7C 08 03 A6 */	mtlr r0
/* 813CFC00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CFC04 | 4E 80 00 20 */	blr
.endfn on_fadein__Q33ipl5scene8GCWindowFv

# .text:0xEE8 | 0x813CFC08 | size: 0x60
# ipl::scene::GCWindow::on_normal()
.fn on_normal__Q33ipl5scene8GCWindowFv, global
/* 813CFC08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CFC0C | 7C 08 02 A6 */	mflr r0
/* 813CFC10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CFC14 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CFC18 | 7C 7F 1B 78 */	mr r31, r3
/* 813CFC1C | 88 03 00 90 */	lbz r0, 0x90(r3)
/* 813CFC20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CFC24 | 41 82 00 30 */	beq .L_813CFC54
/* 813CFC28 | 4B FF CF 05 */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813CFC2C | 48 03 7B 3D */	bl update__Q33ipl5scene13SettingButtonFv
/* 813CFC30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFC34 | 41 82 00 18 */	beq .L_813CFC4C
/* 813CFC38 | 7F E3 FB 78 */	mr r3, r31
/* 813CFC3C | 4B FF CF 79 */	bl change_button_text_return__Q33ipl5scene10MemoryBaseFv
/* 813CFC40 | 38 00 00 03 */	li r0, 0x3
/* 813CFC44 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813CFC48 | 48 00 00 0C */	b .L_813CFC54
.L_813CFC4C:
/* 813CFC4C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813CFC50 | 4B F9 B3 3D */	bl update__Q33ipl3gui11PaneManagerFv
.L_813CFC54:
/* 813CFC54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CFC58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CFC5C | 7C 08 03 A6 */	mtlr r0
/* 813CFC60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CFC64 | 4E 80 00 20 */	blr
.endfn on_normal__Q33ipl5scene8GCWindowFv

# .text:0xF48 | 0x813CFC68 | size: 0xB8
# ipl::scene::GCWindow::on_fadeout1st()
.fn on_fadeout1st__Q33ipl5scene8GCWindowFv, global
/* 813CFC68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CFC6C | 7C 08 02 A6 */	mflr r0
/* 813CFC70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CFC74 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813CFC78 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813CFC7C | 7C 7E 1B 78 */	mr r30, r3
/* 813CFC80 | 4B FF CE AD */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813CFC84 | 48 03 7D C9 */	bl isPlaying__Q33ipl5scene13SettingButtonCFv
/* 813CFC88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFC8C | 40 82 00 7C */	bne .L_813CFD08
/* 813CFC90 | C0 22 86 90 */	lfs f1, lbl_81694A90@sda21(r0)
/* 813CFC94 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813CFC98 | FC 40 08 90 */	fmr f2, f1
/* 813CFC9C | FC 60 08 90 */	fmr f3, f1
/* 813CFCA0 | 4B F9 2D BD */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813CFCA4 | 38 7E 00 64 */	addi r3, r30, 0x64
/* 813CFCA8 | 38 9E 00 7C */	addi r4, r30, 0x7c
/* 813CFCAC | 4B F7 49 D9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813CFCB0 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813CFCB4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813CFCB8 | 4B F7 49 CD */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813CFCBC | C0 22 86 9C */	lfs f1, lbl_81694A9C@sda21(r0)
/* 813CFCC0 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 813CFCC4 | C0 42 86 90 */	lfs f2, lbl_81694A90@sda21(r0)
/* 813CFCC8 | 38 80 00 00 */	li r4, 0x0
/* 813CFCCC | C0 62 86 98 */	lfs f3, lbl_81694A98@sda21(r0)
/* 813CFCD0 | 4B F9 2B 81 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813CFCD4 | 3B E0 00 01 */	li r31, 0x1
/* 813CFCD8 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 813CFCDC | 93 FE 00 5C */	stw r31, 0x5c(r30)
/* 813CFCE0 | 4B F9 2B 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813CFCE4 | 93 FE 00 58 */	stw r31, 0x58(r30)
/* 813CFCE8 | 7F C3 F3 78 */	mr r3, r30
/* 813CFCEC | 38 80 00 01 */	li r4, 0x1
/* 813CFCF0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CFCF4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CFCF8 | 7D 89 03 A6 */	mtctr r12
/* 813CFCFC | 4E 80 04 21 */	bctrl
/* 813CFD00 | 38 00 00 04 */	li r0, 0x4
/* 813CFD04 | 90 1E 00 38 */	stw r0, 0x38(r30)
.L_813CFD08:
/* 813CFD08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CFD0C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813CFD10 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813CFD14 | 7C 08 03 A6 */	mtlr r0
/* 813CFD18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CFD1C | 4E 80 00 20 */	blr
.endfn on_fadeout1st__Q33ipl5scene8GCWindowFv

# .text:0x1000 | 0x813CFD20 | size: 0xD4
# ipl::scene::GCWindow::on_fadeout_yes1st()
.fn on_fadeout_yes1st__Q33ipl5scene8GCWindowFv, global
/* 813CFD20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CFD24 | 7C 08 02 A6 */	mflr r0
/* 813CFD28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CFD2C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813CFD30 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813CFD34 | 7C 7E 1B 78 */	mr r30, r3
/* 813CFD38 | 48 00 0D 75 */	bl change_textbox_done__Q33ipl5scene8GCWindowFv
/* 813CFD3C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CFD40 | 7F C3 F3 78 */	mr r3, r30
/* 813CFD44 | 38 80 00 0C */	li r4, 0xc
/* 813CFD48 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CFD4C | 7D 89 03 A6 */	mtctr r12
/* 813CFD50 | 4E 80 04 21 */	bctrl
/* 813CFD54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFD58 | 40 82 00 84 */	bne .L_813CFDDC
/* 813CFD5C | C0 22 86 90 */	lfs f1, lbl_81694A90@sda21(r0)
/* 813CFD60 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813CFD64 | FC 40 08 90 */	fmr f2, f1
/* 813CFD68 | FC 60 08 90 */	fmr f3, f1
/* 813CFD6C | 4B F9 2C F1 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813CFD70 | 38 7E 00 64 */	addi r3, r30, 0x64
/* 813CFD74 | 38 9E 00 7C */	addi r4, r30, 0x7c
/* 813CFD78 | 4B F7 49 0D */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813CFD7C | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813CFD80 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813CFD84 | 4B F7 49 01 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813CFD88 | C0 22 86 9C */	lfs f1, lbl_81694A9C@sda21(r0)
/* 813CFD8C | 38 7E 00 44 */	addi r3, r30, 0x44
/* 813CFD90 | C0 42 86 90 */	lfs f2, lbl_81694A90@sda21(r0)
/* 813CFD94 | 38 80 00 00 */	li r4, 0x0
/* 813CFD98 | C0 62 86 98 */	lfs f3, lbl_81694A98@sda21(r0)
/* 813CFD9C | 4B F9 2A B5 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813CFDA0 | 3B E0 00 01 */	li r31, 0x1
/* 813CFDA4 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 813CFDA8 | 93 FE 00 5C */	stw r31, 0x5c(r30)
/* 813CFDAC | 4B F9 2A C5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813CFDB0 | 93 FE 00 58 */	stw r31, 0x58(r30)
/* 813CFDB4 | 7F C3 F3 78 */	mr r3, r30
/* 813CFDB8 | 4B FF CE E5 */	bl show_button_return__Q33ipl5scene10MemoryBaseFv
/* 813CFDBC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CFDC0 | 7F C3 F3 78 */	mr r3, r30
/* 813CFDC4 | 38 80 00 0D */	li r4, 0xd
/* 813CFDC8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813CFDCC | 7D 89 03 A6 */	mtctr r12
/* 813CFDD0 | 4E 80 04 21 */	bctrl
/* 813CFDD4 | 38 00 00 06 */	li r0, 0x6
/* 813CFDD8 | 90 1E 00 38 */	stw r0, 0x38(r30)
.L_813CFDDC:
/* 813CFDDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CFDE0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813CFDE4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813CFDE8 | 7C 08 03 A6 */	mtlr r0
/* 813CFDEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CFDF0 | 4E 80 00 20 */	blr
.endfn on_fadeout_yes1st__Q33ipl5scene8GCWindowFv

# .text:0x10D4 | 0x813CFDF4 | size: 0x190
# ipl::scene::GCWindow::on_focus_move()
.fn on_focus_move__Q33ipl5scene8GCWindowFv, global
/* 813CFDF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CFDF8 | 7C 08 02 A6 */	mflr r0
/* 813CFDFC | 38 80 00 04 */	li r4, 0x4
/* 813CFE00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CFE04 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813CFE08 | 7C 7F 1B 78 */	mr r31, r3
/* 813CFE0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CFE10 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CFE14 | 7D 89 03 A6 */	mtctr r12
/* 813CFE18 | 4E 80 04 21 */	bctrl
/* 813CFE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFE20 | 40 82 01 50 */	bne .L_813CFF70
/* 813CFE24 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CFE28 | 7F E3 FB 78 */	mr r3, r31
/* 813CFE2C | 38 80 00 0B */	li r4, 0xb
/* 813CFE30 | 38 A0 00 00 */	li r5, 0x0
/* 813CFE34 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CFE38 | 7D 89 03 A6 */	mtctr r12
/* 813CFE3C | 4E 80 04 21 */	bctrl
/* 813CFE40 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813CFE44 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813CFE48 | 88 9F 00 88 */	lbz r4, 0x88(r31)
/* 813CFE4C | A8 BF 00 8A */	lha r5, 0x8a(r31)
/* 813CFE50 | 4B FF D6 F1 */	bl isMoveEnable__Q33ipl5scene17MemoryCardManagerFUcUlPl
/* 813CFE54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFE58 | 41 82 00 3C */	beq .L_813CFE94
/* 813CFE5C | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813CFE60 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813CFE64 | 7F E3 FB 78 */	mr r3, r31
/* 813CFE68 | 38 A0 00 F3 */	li r5, 0xf3
/* 813CFE6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CFE70 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813CFE74 | 40 82 00 08 */	bne .L_813CFE7C
/* 813CFE78 | 38 A0 00 F5 */	li r5, 0xf5
.L_813CFE7C:
/* 813CFE7C | 4B FF C9 B1 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CFE80 | 38 60 00 02 */	li r3, 0x2
/* 813CFE84 | 38 00 00 0B */	li r0, 0xb
/* 813CFE88 | 90 7F 00 8C */	stw r3, 0x8c(r31)
/* 813CFE8C | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813CFE90 | 48 00 00 E0 */	b .L_813CFF70
.L_813CFE94:
/* 813CFE94 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813CFE98 | 38 03 00 1C */	addi r0, r3, 0x1c
/* 813CFE9C | 28 00 00 06 */	cmplwi r0, 0x6
/* 813CFEA0 | 41 81 00 C0 */	bgt .L_813CFF60
/* 813CFEA4 | 3C 60 81 65 */	lis r3, jumptable_81652B78@ha
/* 813CFEA8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813CFEAC | 38 63 2B 78 */	addi r3, r3, jumptable_81652B78@l
/* 813CFEB0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813CFEB4 | 7C 69 03 A6 */	mtctr r3
/* 813CFEB8 | 4E 80 04 20 */	bctr
.L_813CFEBC:
/* 813CFEBC | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813CFEC0 | 7F E3 FB 78 */	mr r3, r31
/* 813CFEC4 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813CFEC8 | 38 A0 00 CD */	li r5, 0xcd
/* 813CFECC | 4B FF C9 61 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CFED0 | 48 00 00 90 */	b .L_813CFF60
.L_813CFED4:
/* 813CFED4 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813CFED8 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813CFEDC | 7F E3 FB 78 */	mr r3, r31
/* 813CFEE0 | 7C 00 00 34 */	cntlzw r0, r0
/* 813CFEE4 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813CFEE8 | 54 05 D9 7E */	srwi r5, r0, 5
/* 813CFEEC | 38 A5 00 CE */	addi r5, r5, 0xce
/* 813CFEF0 | 4B FF C9 3D */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CFEF4 | 48 00 00 6C */	b .L_813CFF60
.L_813CFEF8:
/* 813CFEF8 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813CFEFC | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813CFF00 | 7F E3 FB 78 */	mr r3, r31
/* 813CFF04 | 7C 00 00 34 */	cntlzw r0, r0
/* 813CFF08 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813CFF0C | 54 05 D9 7E */	srwi r5, r0, 5
/* 813CFF10 | 38 A5 00 D0 */	addi r5, r5, 0xd0
/* 813CFF14 | 4B FF C9 19 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CFF18 | 48 00 00 48 */	b .L_813CFF60
.L_813CFF1C:
/* 813CFF1C | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813CFF20 | 7F E3 FB 78 */	mr r3, r31
/* 813CFF24 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813CFF28 | 38 A0 00 D4 */	li r5, 0xd4
/* 813CFF2C | 4B FF C9 01 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CFF30 | 48 00 00 30 */	b .L_813CFF60
.L_813CFF34:
/* 813CFF34 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813CFF38 | 7F E3 FB 78 */	mr r3, r31
/* 813CFF3C | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813CFF40 | 38 A0 00 D5 */	li r5, 0xd5
/* 813CFF44 | 4B FF C8 E9 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813CFF48 | 48 00 00 18 */	b .L_813CFF60
.L_813CFF4C:
/* 813CFF4C | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813CFF50 | 7F E3 FB 78 */	mr r3, r31
/* 813CFF54 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813CFF58 | 38 A0 00 D6 */	li r5, 0xd6
/* 813CFF5C | 4B FF C8 D1 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
.L_813CFF60:
/* 813CFF60 | 7F E3 FB 78 */	mr r3, r31
/* 813CFF64 | 4B FF CC C5 */	bl change_button_text_ok__Q33ipl5scene10MemoryBaseFv
/* 813CFF68 | 38 00 00 0F */	li r0, 0xf
/* 813CFF6C | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_813CFF70:
/* 813CFF70 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CFF74 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813CFF78 | 7C 08 03 A6 */	mtlr r0
/* 813CFF7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CFF80 | 4E 80 00 20 */	blr
.endfn on_focus_move__Q33ipl5scene8GCWindowFv

# .text:0x1264 | 0x813CFF84 | size: 0x190
# ipl::scene::GCWindow::on_focus_copy()
.fn on_focus_copy__Q33ipl5scene8GCWindowFv, global
/* 813CFF84 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CFF88 | 7C 08 02 A6 */	mflr r0
/* 813CFF8C | 38 80 00 07 */	li r4, 0x7
/* 813CFF90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CFF94 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813CFF98 | 7C 7F 1B 78 */	mr r31, r3
/* 813CFF9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CFFA0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CFFA4 | 7D 89 03 A6 */	mtctr r12
/* 813CFFA8 | 4E 80 04 21 */	bctrl
/* 813CFFAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFFB0 | 40 82 01 50 */	bne .L_813D0100
/* 813CFFB4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CFFB8 | 7F E3 FB 78 */	mr r3, r31
/* 813CFFBC | 38 80 00 0B */	li r4, 0xb
/* 813CFFC0 | 38 A0 00 00 */	li r5, 0x0
/* 813CFFC4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CFFC8 | 7D 89 03 A6 */	mtctr r12
/* 813CFFCC | 4E 80 04 21 */	bctrl
/* 813CFFD0 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813CFFD4 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813CFFD8 | 88 9F 00 88 */	lbz r4, 0x88(r31)
/* 813CFFDC | A8 BF 00 8A */	lha r5, 0x8a(r31)
/* 813CFFE0 | 4B FF D7 39 */	bl isCopyEnable__Q33ipl5scene17MemoryCardManagerFUcUlPl
/* 813CFFE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CFFE8 | 41 82 00 3C */	beq .L_813D0024
/* 813CFFEC | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813CFFF0 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813CFFF4 | 7F E3 FB 78 */	mr r3, r31
/* 813CFFF8 | 38 A0 00 F4 */	li r5, 0xf4
/* 813CFFFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D0000 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0004 | 40 82 00 08 */	bne .L_813D000C
/* 813D0008 | 38 A0 00 F6 */	li r5, 0xf6
.L_813D000C:
/* 813D000C | 4B FF C8 21 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0010 | 38 60 00 01 */	li r3, 0x1
/* 813D0014 | 38 00 00 0B */	li r0, 0xb
/* 813D0018 | 90 7F 00 8C */	stw r3, 0x8c(r31)
/* 813D001C | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D0020 | 48 00 00 E0 */	b .L_813D0100
.L_813D0024:
/* 813D0024 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813D0028 | 38 03 00 1C */	addi r0, r3, 0x1c
/* 813D002C | 28 00 00 06 */	cmplwi r0, 0x6
/* 813D0030 | 41 81 00 C0 */	bgt .L_813D00F0
/* 813D0034 | 3C 60 81 65 */	lis r3, jumptable_81652B94@ha
/* 813D0038 | 54 00 10 3A */	slwi r0, r0, 2
/* 813D003C | 38 63 2B 94 */	addi r3, r3, jumptable_81652B94@l
/* 813D0040 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D0044 | 7C 69 03 A6 */	mtctr r3
/* 813D0048 | 4E 80 04 20 */	bctr
.L_813D004C:
/* 813D004C | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0050 | 7F E3 FB 78 */	mr r3, r31
/* 813D0054 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0058 | 38 A0 00 D9 */	li r5, 0xd9
/* 813D005C | 4B FF C7 D1 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0060 | 48 00 00 90 */	b .L_813D00F0
.L_813D0064:
/* 813D0064 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813D0068 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D006C | 7F E3 FB 78 */	mr r3, r31
/* 813D0070 | 7C 00 00 34 */	cntlzw r0, r0
/* 813D0074 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0078 | 54 05 D9 7E */	srwi r5, r0, 5
/* 813D007C | 38 A5 00 DA */	addi r5, r5, 0xda
/* 813D0080 | 4B FF C7 AD */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0084 | 48 00 00 6C */	b .L_813D00F0
.L_813D0088:
/* 813D0088 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813D008C | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0090 | 7F E3 FB 78 */	mr r3, r31
/* 813D0094 | 7C 00 00 34 */	cntlzw r0, r0
/* 813D0098 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D009C | 54 05 D9 7E */	srwi r5, r0, 5
/* 813D00A0 | 38 A5 00 DC */	addi r5, r5, 0xdc
/* 813D00A4 | 4B FF C7 89 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D00A8 | 48 00 00 48 */	b .L_813D00F0
.L_813D00AC:
/* 813D00AC | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D00B0 | 7F E3 FB 78 */	mr r3, r31
/* 813D00B4 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D00B8 | 38 A0 00 E0 */	li r5, 0xe0
/* 813D00BC | 4B FF C7 71 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D00C0 | 48 00 00 30 */	b .L_813D00F0
.L_813D00C4:
/* 813D00C4 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D00C8 | 7F E3 FB 78 */	mr r3, r31
/* 813D00CC | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D00D0 | 38 A0 00 E1 */	li r5, 0xe1
/* 813D00D4 | 4B FF C7 59 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D00D8 | 48 00 00 18 */	b .L_813D00F0
.L_813D00DC:
/* 813D00DC | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D00E0 | 7F E3 FB 78 */	mr r3, r31
/* 813D00E4 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D00E8 | 38 A0 00 E2 */	li r5, 0xe2
/* 813D00EC | 4B FF C7 41 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
.L_813D00F0:
/* 813D00F0 | 7F E3 FB 78 */	mr r3, r31
/* 813D00F4 | 4B FF CB 35 */	bl change_button_text_ok__Q33ipl5scene10MemoryBaseFv
/* 813D00F8 | 38 00 00 0F */	li r0, 0xf
/* 813D00FC | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_813D0100:
/* 813D0100 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D0104 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813D0108 | 7C 08 03 A6 */	mtlr r0
/* 813D010C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D0110 | 4E 80 00 20 */	blr
.endfn on_focus_copy__Q33ipl5scene8GCWindowFv

# .text:0x13F4 | 0x813D0114 | size: 0x70
# ipl::scene::GCWindow::on_focus_del()
.fn on_focus_del__Q33ipl5scene8GCWindowFv, global
/* 813D0114 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D0118 | 7C 08 02 A6 */	mflr r0
/* 813D011C | 38 80 00 0A */	li r4, 0xa
/* 813D0120 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D0124 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D0128 | 7C 7F 1B 78 */	mr r31, r3
/* 813D012C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D0130 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D0134 | 7D 89 03 A6 */	mtctr r12
/* 813D0138 | 4E 80 04 21 */	bctrl
/* 813D013C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D0140 | 40 82 00 30 */	bne .L_813D0170
/* 813D0144 | 38 00 00 03 */	li r0, 0x3
/* 813D0148 | 7F E3 FB 78 */	mr r3, r31
/* 813D014C | 90 1F 00 8C */	stw r0, 0x8c(r31)
/* 813D0150 | 38 80 00 0B */	li r4, 0xb
/* 813D0154 | 38 A0 00 00 */	li r5, 0x0
/* 813D0158 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D015C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D0160 | 7D 89 03 A6 */	mtctr r12
/* 813D0164 | 4E 80 04 21 */	bctrl
/* 813D0168 | 38 00 00 0B */	li r0, 0xb
/* 813D016C | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_813D0170:
/* 813D0170 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D0174 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D0178 | 7C 08 03 A6 */	mtlr r0
/* 813D017C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D0180 | 4E 80 00 20 */	blr
.endfn on_focus_del__Q33ipl5scene8GCWindowFv

# .text:0x1464 | 0x813D0184 | size: 0x74
# ipl::scene::GCWindow::on_select_out()
.fn on_select_out__Q33ipl5scene8GCWindowFv, global
/* 813D0184 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D0188 | 7C 08 02 A6 */	mflr r0
/* 813D018C | 38 80 00 0B */	li r4, 0xb
/* 813D0190 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D0194 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D0198 | 7C 7F 1B 78 */	mr r31, r3
/* 813D019C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D01A0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D01A4 | 7D 89 03 A6 */	mtctr r12
/* 813D01A8 | 4E 80 04 21 */	bctrl
/* 813D01AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D01B0 | 40 82 00 34 */	bne .L_813D01E4
/* 813D01B4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D01B8 | 38 80 01 42 */	li r4, 0x142
/* 813D01BC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D01C0 | 38 A0 01 41 */	li r5, 0x141
/* 813D01C4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813D01C8 | 38 C0 00 01 */	li r6, 0x1
/* 813D01CC | 4B F7 6D C1 */	bl callS2Btn2__Q23ipl12DialogWindowFUlUlb
/* 813D01D0 | 7F E3 FB 78 */	mr r3, r31
/* 813D01D4 | 4B FF C9 59 */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813D01D8 | 48 03 76 F5 */	bl hideBtn__Q33ipl5scene13SettingButtonFv
/* 813D01DC | 38 00 00 0C */	li r0, 0xc
/* 813D01E0 | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_813D01E4:
/* 813D01E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D01E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D01EC | 7C 08 03 A6 */	mtlr r0
/* 813D01F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D01F4 | 4E 80 00 20 */	blr
.endfn on_select_out__Q33ipl5scene8GCWindowFv

# .text:0x14D8 | 0x813D01F8 | size: 0x3D0
# ipl::scene::GCWindow::on_dialog()
.fn on_dialog__Q33ipl5scene8GCWindowFv, global
/* 813D01F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D01FC | 7C 08 02 A6 */	mflr r0
/* 813D0200 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D0204 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D0208 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D020C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813D0210 | 7C 7F 1B 78 */	mr r31, r3
/* 813D0214 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813D0218 | 3F C0 81 65 */	lis r30, lbl_81652820@ha
/* 813D021C | 3B DE 28 20 */	addi r30, r30, lbl_81652820@l
/* 813D0220 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813D0224 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813D0228 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D022C | 41 82 00 20 */	beq .L_813D024C
/* 813D0230 | 40 80 00 10 */	bge .L_813D0240
/* 813D0234 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D0238 | 40 80 03 48 */	bge .L_813D0580
/* 813D023C | 48 00 03 74 */	b .L_813D05B0
.L_813D0240:
/* 813D0240 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813D0244 | 41 82 03 3C */	beq .L_813D0580
/* 813D0248 | 48 00 03 68 */	b .L_813D05B0
.L_813D024C:
/* 813D024C | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813D0250 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D0254 | 41 82 01 88 */	beq .L_813D03DC
/* 813D0258 | 40 80 00 10 */	bge .L_813D0268
/* 813D025C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D0260 | 40 80 00 14 */	bge .L_813D0274
/* 813D0264 | 48 00 02 D0 */	b .L_813D0534
.L_813D0268:
/* 813D0268 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D026C | 40 80 02 C8 */	bge .L_813D0534
/* 813D0270 | 48 00 01 40 */	b .L_813D03B0
.L_813D0274:
/* 813D0274 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813D0278 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813D027C | 88 9F 00 88 */	lbz r4, 0x88(r31)
/* 813D0280 | A8 BF 00 8A */	lha r5, 0x8a(r31)
/* 813D0284 | 4B FF D4 95 */	bl isCopyEnable__Q33ipl5scene17MemoryCardManagerFUcUlPl
/* 813D0288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D028C | 41 82 00 5C */	beq .L_813D02E8
/* 813D0290 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D0294 | 7F E3 FB 78 */	mr r3, r31
/* 813D0298 | 38 8D 8C 92 */	li r4, lbl_81696CD2@sda21
/* 813D029C | 38 A0 00 01 */	li r5, 0x1
/* 813D02A0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813D02A4 | 7D 89 03 A6 */	mtctr r12
/* 813D02A8 | 4E 80 04 21 */	bctrl
/* 813D02AC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D02B0 | 7F E3 FB 78 */	mr r3, r31
/* 813D02B4 | 38 80 00 0F */	li r4, 0xf
/* 813D02B8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813D02BC | 7D 89 03 A6 */	mtctr r12
/* 813D02C0 | 4E 80 04 21 */	bctrl
/* 813D02C4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813D02C8 | 38 9E 03 90 */	addi r4, r30, 0x390
/* 813D02CC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813D02D0 | 4B F9 B1 9D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813D02D4 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813D02D8 | 88 9F 00 88 */	lbz r4, 0x88(r31)
/* 813D02DC | A8 BF 00 8A */	lha r5, 0x8a(r31)
/* 813D02E0 | 4B FF D0 C9 */	bl sendCardCmdCopy__Q33ipl5scene17MemoryCardManagerFUcs
/* 813D02E4 | 48 00 02 50 */	b .L_813D0534
.L_813D02E8:
/* 813D02E8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813D02EC | 38 03 00 1C */	addi r0, r3, 0x1c
/* 813D02F0 | 28 00 00 06 */	cmplwi r0, 0x6
/* 813D02F4 | 41 81 00 A8 */	bgt .L_813D039C
/* 813D02F8 | 3C 60 81 65 */	lis r3, jumptable_81652BDC@ha
/* 813D02FC | 54 00 10 3A */	slwi r0, r0, 2
/* 813D0300 | 38 63 2B DC */	addi r3, r3, jumptable_81652BDC@l
/* 813D0304 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D0308 | 7C 69 03 A6 */	mtctr r3
/* 813D030C | 4E 80 04 20 */	bctr
.L_813D0310:
/* 813D0310 | 7F E3 FB 78 */	mr r3, r31
/* 813D0314 | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D0318 | 38 A0 00 D9 */	li r5, 0xd9
/* 813D031C | 4B FF C5 11 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0320 | 48 00 00 7C */	b .L_813D039C
.L_813D0324:
/* 813D0324 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813D0328 | 7F E3 FB 78 */	mr r3, r31
/* 813D032C | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D0330 | 7C 00 00 34 */	cntlzw r0, r0
/* 813D0334 | 54 05 D9 7E */	srwi r5, r0, 5
/* 813D0338 | 38 A5 00 DA */	addi r5, r5, 0xda
/* 813D033C | 4B FF C4 F1 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0340 | 48 00 00 5C */	b .L_813D039C
.L_813D0344:
/* 813D0344 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813D0348 | 7F E3 FB 78 */	mr r3, r31
/* 813D034C | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D0350 | 7C 00 00 34 */	cntlzw r0, r0
/* 813D0354 | 54 05 D9 7E */	srwi r5, r0, 5
/* 813D0358 | 38 A5 00 DC */	addi r5, r5, 0xdc
/* 813D035C | 4B FF C4 D1 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0360 | 48 00 00 3C */	b .L_813D039C
.L_813D0364:
/* 813D0364 | 7F E3 FB 78 */	mr r3, r31
/* 813D0368 | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D036C | 38 A0 00 E0 */	li r5, 0xe0
/* 813D0370 | 4B FF C4 BD */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0374 | 48 00 00 28 */	b .L_813D039C
.L_813D0378:
/* 813D0378 | 7F E3 FB 78 */	mr r3, r31
/* 813D037C | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D0380 | 38 A0 00 E1 */	li r5, 0xe1
/* 813D0384 | 4B FF C4 A9 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0388 | 48 00 00 14 */	b .L_813D039C
.L_813D038C:
/* 813D038C | 7F E3 FB 78 */	mr r3, r31
/* 813D0390 | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D0394 | 38 A0 00 E2 */	li r5, 0xe2
/* 813D0398 | 4B FF C4 95 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
.L_813D039C:
/* 813D039C | 7F E3 FB 78 */	mr r3, r31
/* 813D03A0 | 4B FF C8 89 */	bl change_button_text_ok__Q33ipl5scene10MemoryBaseFv
/* 813D03A4 | 38 00 00 0F */	li r0, 0xf
/* 813D03A8 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D03AC | 48 00 02 04 */	b .L_813D05B0
.L_813D03B0:
/* 813D03B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D03B4 | 38 9E 02 80 */	addi r4, r30, 0x280
/* 813D03B8 | 38 A0 00 00 */	li r5, 0x0
/* 813D03BC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813D03C0 | 7D 89 03 A6 */	mtctr r12
/* 813D03C4 | 4E 80 04 21 */	bctrl
/* 813D03C8 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813D03CC | 88 9F 00 88 */	lbz r4, 0x88(r31)
/* 813D03D0 | A8 BF 00 8A */	lha r5, 0x8a(r31)
/* 813D03D4 | 4B FF D0 5D */	bl sendCardCmdDelete__Q33ipl5scene17MemoryCardManagerFUcs
/* 813D03D8 | 48 00 01 5C */	b .L_813D0534
.L_813D03DC:
/* 813D03DC | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813D03E0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813D03E4 | 88 9F 00 88 */	lbz r4, 0x88(r31)
/* 813D03E8 | A8 BF 00 8A */	lha r5, 0x8a(r31)
/* 813D03EC | 4B FF D1 55 */	bl isMoveEnable__Q33ipl5scene17MemoryCardManagerFUcUlPl
/* 813D03F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D03F4 | 41 82 00 78 */	beq .L_813D046C
/* 813D03F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D03FC | 7F E3 FB 78 */	mr r3, r31
/* 813D0400 | 38 9E 02 80 */	addi r4, r30, 0x280
/* 813D0404 | 38 A0 00 00 */	li r5, 0x0
/* 813D0408 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813D040C | 7D 89 03 A6 */	mtctr r12
/* 813D0410 | 4E 80 04 21 */	bctrl
/* 813D0414 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D0418 | 7F E3 FB 78 */	mr r3, r31
/* 813D041C | 38 8D 8C 92 */	li r4, lbl_81696CD2@sda21
/* 813D0420 | 38 A0 00 01 */	li r5, 0x1
/* 813D0424 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813D0428 | 7D 89 03 A6 */	mtctr r12
/* 813D042C | 4E 80 04 21 */	bctrl
/* 813D0430 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D0434 | 7F E3 FB 78 */	mr r3, r31
/* 813D0438 | 38 80 00 0F */	li r4, 0xf
/* 813D043C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813D0440 | 7D 89 03 A6 */	mtctr r12
/* 813D0444 | 4E 80 04 21 */	bctrl
/* 813D0448 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813D044C | 38 9E 03 90 */	addi r4, r30, 0x390
/* 813D0450 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813D0454 | 4B F9 B0 19 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813D0458 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813D045C | 88 9F 00 88 */	lbz r4, 0x88(r31)
/* 813D0460 | A8 BF 00 8A */	lha r5, 0x8a(r31)
/* 813D0464 | 4B FF CE AD */	bl sendCardCmdMove__Q33ipl5scene17MemoryCardManagerFUcs
/* 813D0468 | 48 00 00 CC */	b .L_813D0534
.L_813D046C:
/* 813D046C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813D0470 | 38 03 00 1C */	addi r0, r3, 0x1c
/* 813D0474 | 28 00 00 06 */	cmplwi r0, 0x6
/* 813D0478 | 41 81 00 A8 */	bgt .L_813D0520
/* 813D047C | 3C 60 81 65 */	lis r3, jumptable_81652BC0@ha
/* 813D0480 | 54 00 10 3A */	slwi r0, r0, 2
/* 813D0484 | 38 63 2B C0 */	addi r3, r3, jumptable_81652BC0@l
/* 813D0488 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D048C | 7C 69 03 A6 */	mtctr r3
/* 813D0490 | 4E 80 04 20 */	bctr
.L_813D0494:
/* 813D0494 | 7F E3 FB 78 */	mr r3, r31
/* 813D0498 | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D049C | 38 A0 00 CD */	li r5, 0xcd
/* 813D04A0 | 4B FF C3 8D */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D04A4 | 48 00 00 7C */	b .L_813D0520
.L_813D04A8:
/* 813D04A8 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813D04AC | 7F E3 FB 78 */	mr r3, r31
/* 813D04B0 | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D04B4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813D04B8 | 54 05 D9 7E */	srwi r5, r0, 5
/* 813D04BC | 38 A5 00 CE */	addi r5, r5, 0xce
/* 813D04C0 | 4B FF C3 6D */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D04C4 | 48 00 00 5C */	b .L_813D0520
.L_813D04C8:
/* 813D04C8 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813D04CC | 7F E3 FB 78 */	mr r3, r31
/* 813D04D0 | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D04D4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813D04D8 | 54 05 D9 7E */	srwi r5, r0, 5
/* 813D04DC | 38 A5 00 D0 */	addi r5, r5, 0xd0
/* 813D04E0 | 4B FF C3 4D */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D04E4 | 48 00 00 3C */	b .L_813D0520
.L_813D04E8:
/* 813D04E8 | 7F E3 FB 78 */	mr r3, r31
/* 813D04EC | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D04F0 | 38 A0 00 D4 */	li r5, 0xd4
/* 813D04F4 | 4B FF C3 39 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D04F8 | 48 00 00 28 */	b .L_813D0520
.L_813D04FC:
/* 813D04FC | 7F E3 FB 78 */	mr r3, r31
/* 813D0500 | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D0504 | 38 A0 00 D5 */	li r5, 0xd5
/* 813D0508 | 4B FF C3 25 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D050C | 48 00 00 14 */	b .L_813D0520
.L_813D0510:
/* 813D0510 | 7F E3 FB 78 */	mr r3, r31
/* 813D0514 | 38 9E 03 3A */	addi r4, r30, 0x33a
/* 813D0518 | 38 A0 00 D6 */	li r5, 0xd6
/* 813D051C | 4B FF C3 11 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
.L_813D0520:
/* 813D0520 | 7F E3 FB 78 */	mr r3, r31
/* 813D0524 | 4B FF C7 05 */	bl change_button_text_ok__Q33ipl5scene10MemoryBaseFv
/* 813D0528 | 38 00 00 0F */	li r0, 0xf
/* 813D052C | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D0530 | 48 00 00 80 */	b .L_813D05B0
.L_813D0534:
/* 813D0534 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 813D0538 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813D053C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813D0540 | 41 81 00 1C */	bgt .L_813D055C
/* 813D0544 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D0548 | 7F E3 FB 78 */	mr r3, r31
/* 813D054C | 38 80 00 0C */	li r4, 0xc
/* 813D0550 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813D0554 | 7D 89 03 A6 */	mtctr r12
/* 813D0558 | 4E 80 04 21 */	bctrl
.L_813D055C:
/* 813D055C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D0560 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D0564 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813D0568 | 4B F7 7D B1 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813D056C | 38 60 00 01 */	li r3, 0x1
/* 813D0570 | 38 00 00 11 */	li r0, 0x11
/* 813D0574 | 98 7F 00 91 */	stb r3, 0x91(r31)
/* 813D0578 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D057C | 48 00 00 34 */	b .L_813D05B0
.L_813D0580:
/* 813D0580 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D0584 | 7F E3 FB 78 */	mr r3, r31
/* 813D0588 | 38 80 00 0B */	li r4, 0xb
/* 813D058C | 38 A0 00 01 */	li r5, 0x1
/* 813D0590 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D0594 | 7D 89 03 A6 */	mtctr r12
/* 813D0598 | 4E 80 04 21 */	bctrl
/* 813D059C | 38 00 00 02 */	li r0, 0x2
/* 813D05A0 | 7F E3 FB 78 */	mr r3, r31
/* 813D05A4 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D05A8 | 4B FF C5 85 */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813D05AC | 48 03 72 C5 */	bl showBtn__Q33ipl5scene13SettingButtonFv
.L_813D05B0:
/* 813D05B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D05B4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813D05B8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813D05BC | 7C 08 03 A6 */	mtlr r0
/* 813D05C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D05C4 | 4E 80 00 20 */	blr
.endfn on_dialog__Q33ipl5scene8GCWindowFv

# .text:0x18A8 | 0x813D05C8 | size: 0x20
# ipl::scene::GCWindow::on_error_message()
.fn on_error_message__Q33ipl5scene8GCWindowFv, global
/* 813D05C8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D05CC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D05D0 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813D05D4 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813D05D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D05DC | 4D 80 00 20 */	bltlr
/* 813D05E0 | 4B FF F2 10 */	b destroy__Q33ipl5scene8GCWindowFv
/* 813D05E4 | 4E 80 00 20 */	blr
.endfn on_error_message__Q33ipl5scene8GCWindowFv

# .text:0x18C8 | 0x813D05E8 | size: 0x98
# ipl::scene::GCWindow::on_process()
.fn on_process__Q33ipl5scene8GCWindowFv, global
/* 813D05E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D05EC | 7C 08 02 A6 */	mflr r0
/* 813D05F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D05F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D05F8 | 7C 7F 1B 78 */	mr r31, r3
/* 813D05FC | 48 00 04 3D */	bl change_textbox_doing__Q33ipl5scene8GCWindowFv
/* 813D0600 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D0604 | 7F E3 FB 78 */	mr r3, r31
/* 813D0608 | 38 80 00 0C */	li r4, 0xc
/* 813D060C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D0610 | 7D 89 03 A6 */	mtctr r12
/* 813D0614 | 4E 80 04 21 */	bctrl
/* 813D0618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D061C | 40 82 00 50 */	bne .L_813D066C
/* 813D0620 | 88 1F 00 91 */	lbz r0, 0x91(r31)
/* 813D0624 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D0628 | 40 82 00 44 */	bne .L_813D066C
/* 813D062C | 7F E3 FB 78 */	mr r3, r31
/* 813D0630 | 48 00 07 D9 */	bl stop_wait_anim__Q33ipl5scene8GCWindowFv
/* 813D0634 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D0638 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D063C | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813D0640 | 4B F7 7D 05 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813D0644 | 38 00 00 00 */	li r0, 0x0
/* 813D0648 | 7F E3 FB 78 */	mr r3, r31
/* 813D064C | 98 1F 00 91 */	stb r0, 0x91(r31)
/* 813D0650 | 38 80 00 0C */	li r4, 0xc
/* 813D0654 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D0658 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813D065C | 7D 89 03 A6 */	mtctr r12
/* 813D0660 | 4E 80 04 21 */	bctrl
/* 813D0664 | 38 00 00 05 */	li r0, 0x5
/* 813D0668 | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_813D066C:
/* 813D066C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D0670 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D0674 | 7C 08 03 A6 */	mtlr r0
/* 813D0678 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D067C | 4E 80 00 20 */	blr
.endfn on_process__Q33ipl5scene8GCWindowFv

# .text:0x1960 | 0x813D0680 | size: 0xC4
# ipl::scene::GCWindow::on_error_message1st()
.fn on_error_message1st__Q33ipl5scene8GCWindowFv, global
/* 813D0680 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D0684 | 7C 08 02 A6 */	mflr r0
/* 813D0688 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D068C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D0690 | 48 22 8E 35 */	bl _savegpr_28
/* 813D0694 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D0698 | 7C 7C 1B 78 */	mr r28, r3
/* 813D069C | 38 80 00 0B */	li r4, 0xb
/* 813D06A0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D06A4 | 7D 89 03 A6 */	mtctr r12
/* 813D06A8 | 4E 80 04 21 */	bctrl
/* 813D06AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D06B0 | 40 82 00 7C */	bne .L_813D072C
/* 813D06B4 | 7F 83 E3 78 */	mr r3, r28
/* 813D06B8 | 4B FF C4 75 */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813D06BC | 48 03 70 AD */	bl update__Q33ipl5scene13SettingButtonFv
/* 813D06C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D06C4 | 41 82 00 68 */	beq .L_813D072C
/* 813D06C8 | 3F C0 81 65 */	lis r30, lbl_81652A94@ha
/* 813D06CC | 3B A0 00 00 */	li r29, 0x0
/* 813D06D0 | 3B DE 2A 94 */	addi r30, r30, lbl_81652A94@l
/* 813D06D4 | 3B E0 00 00 */	li r31, 0x0
.L_813D06D8:
/* 813D06D8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813D06DC | 7F 83 E3 78 */	mr r3, r28
/* 813D06E0 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813D06E4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813D06E8 | 7D 89 03 A6 */	mtctr r12
/* 813D06EC | 4E 80 04 21 */	bctrl
/* 813D06F0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813D06F4 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813D06F8 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813D06FC | 41 80 FF DC */	blt .L_813D06D8
/* 813D0700 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813D0704 | 7F 83 E3 78 */	mr r3, r28
/* 813D0708 | 38 80 00 0B */	li r4, 0xb
/* 813D070C | 38 A0 00 01 */	li r5, 0x1
/* 813D0710 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D0714 | 7D 89 03 A6 */	mtctr r12
/* 813D0718 | 4E 80 04 21 */	bctrl
/* 813D071C | 38 00 00 10 */	li r0, 0x10
/* 813D0720 | 7F 83 E3 78 */	mr r3, r28
/* 813D0724 | 90 1C 00 38 */	stw r0, 0x38(r28)
/* 813D0728 | 4B FF C4 19 */	bl change_button_text_close__Q33ipl5scene10MemoryBaseFv
.L_813D072C:
/* 813D072C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D0730 | 48 22 8D E1 */	bl _restgpr_28
/* 813D0734 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D0738 | 7C 08 03 A6 */	mtlr r0
/* 813D073C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D0740 | 4E 80 00 20 */	blr
.endfn on_error_message1st__Q33ipl5scene8GCWindowFv

# .text:0x1A24 | 0x813D0744 | size: 0xC4
# ipl::scene::GCWindow::on_error_message2nd()
.fn on_error_message2nd__Q33ipl5scene8GCWindowFv, global
/* 813D0744 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D0748 | 7C 08 02 A6 */	mflr r0
/* 813D074C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D0750 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D0754 | 48 22 8D 71 */	bl _savegpr_28
/* 813D0758 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D075C | 7C 7C 1B 78 */	mr r28, r3
/* 813D0760 | 38 80 00 0B */	li r4, 0xb
/* 813D0764 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D0768 | 7D 89 03 A6 */	mtctr r12
/* 813D076C | 4E 80 04 21 */	bctrl
/* 813D0770 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D0774 | 40 82 00 7C */	bne .L_813D07F0
/* 813D0778 | 7F 83 E3 78 */	mr r3, r28
/* 813D077C | 4B FF C3 B1 */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813D0780 | 48 03 6F E9 */	bl update__Q33ipl5scene13SettingButtonFv
/* 813D0784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D0788 | 41 82 00 68 */	beq .L_813D07F0
/* 813D078C | 3F C0 81 65 */	lis r30, lbl_81652A94@ha
/* 813D0790 | 3B A0 00 00 */	li r29, 0x0
/* 813D0794 | 3B DE 2A 94 */	addi r30, r30, lbl_81652A94@l
/* 813D0798 | 3B E0 00 00 */	li r31, 0x0
.L_813D079C:
/* 813D079C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813D07A0 | 7F 83 E3 78 */	mr r3, r28
/* 813D07A4 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813D07A8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813D07AC | 7D 89 03 A6 */	mtctr r12
/* 813D07B0 | 4E 80 04 21 */	bctrl
/* 813D07B4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813D07B8 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813D07BC | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813D07C0 | 41 80 FF DC */	blt .L_813D079C
/* 813D07C4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813D07C8 | 7F 83 E3 78 */	mr r3, r28
/* 813D07CC | 38 80 00 0B */	li r4, 0xb
/* 813D07D0 | 38 A0 00 01 */	li r5, 0x1
/* 813D07D4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D07D8 | 7D 89 03 A6 */	mtctr r12
/* 813D07DC | 4E 80 04 21 */	bctrl
/* 813D07E0 | 38 00 00 10 */	li r0, 0x10
/* 813D07E4 | 7F 83 E3 78 */	mr r3, r28
/* 813D07E8 | 90 1C 00 38 */	stw r0, 0x38(r28)
/* 813D07EC | 4B FF C3 55 */	bl change_button_text_close__Q33ipl5scene10MemoryBaseFv
.L_813D07F0:
/* 813D07F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D07F4 | 48 22 8D 1D */	bl _restgpr_28
/* 813D07F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D07FC | 7C 08 03 A6 */	mtlr r0
/* 813D0800 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D0804 | 4E 80 00 20 */	blr
.endfn on_error_message2nd__Q33ipl5scene8GCWindowFv

# .text:0x1AE8 | 0x813D0808 | size: 0x78
# ipl::scene::GCWindow::on_error_message3rd()
.fn on_error_message3rd__Q33ipl5scene8GCWindowFv, global
/* 813D0808 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D080C | 7C 08 02 A6 */	mflr r0
/* 813D0810 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D0814 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D0818 | 7C 7F 1B 78 */	mr r31, r3
/* 813D081C | 88 03 00 88 */	lbz r0, 0x88(r3)
/* 813D0820 | 7C 83 02 14 */	add r4, r3, r0
/* 813D0824 | 88 04 00 94 */	lbz r0, 0x94(r4)
/* 813D0828 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D082C | 40 82 00 10 */	bne .L_813D083C
/* 813D0830 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813D0834 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D0838 | 40 82 00 10 */	bne .L_813D0848
.L_813D083C:
/* 813D083C | 38 00 00 03 */	li r0, 0x3
/* 813D0840 | 90 03 00 38 */	stw r0, 0x38(r3)
/* 813D0844 | 48 00 00 28 */	b .L_813D086C
.L_813D0848:
/* 813D0848 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D084C | 38 80 00 0B */	li r4, 0xb
/* 813D0850 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D0854 | 7D 89 03 A6 */	mtctr r12
/* 813D0858 | 4E 80 04 21 */	bctrl
/* 813D085C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D0860 | 40 82 00 0C */	bne .L_813D086C
/* 813D0864 | 38 00 00 02 */	li r0, 0x2
/* 813D0868 | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_813D086C:
/* 813D086C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D0870 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D0874 | 7C 08 03 A6 */	mtlr r0
/* 813D0878 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D087C | 4E 80 00 20 */	blr
.endfn on_error_message3rd__Q33ipl5scene8GCWindowFv

# .text:0x1B60 | 0x813D0880 | size: 0x84
# ipl::scene::GCWindow::on_format1st()
.fn on_format1st__Q33ipl5scene8GCWindowFv, global
/* 813D0880 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D0884 | 7C 08 02 A6 */	mflr r0
/* 813D0888 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D088C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D0890 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D0894 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D0898 | 7C 7F 1B 78 */	mr r31, r3
/* 813D089C | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813D08A0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813D08A4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D08A8 | 41 82 00 2C */	beq .L_813D08D4
/* 813D08AC | 40 80 00 10 */	bge .L_813D08BC
/* 813D08B0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D08B4 | 40 80 00 14 */	bge .L_813D08C8
/* 813D08B8 | 48 00 00 38 */	b .L_813D08F0
.L_813D08BC:
/* 813D08BC | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813D08C0 | 41 82 00 08 */	beq .L_813D08C8
/* 813D08C4 | 48 00 00 2C */	b .L_813D08F0
.L_813D08C8:
/* 813D08C8 | 7F E3 FB 78 */	mr r3, r31
/* 813D08CC | 4B FF EF 25 */	bl destroy__Q33ipl5scene8GCWindowFv
/* 813D08D0 | 48 00 00 20 */	b .L_813D08F0
.L_813D08D4:
/* 813D08D4 | 38 80 00 EE */	li r4, 0xee
/* 813D08D8 | 38 A0 01 42 */	li r5, 0x142
/* 813D08DC | 38 C0 01 41 */	li r6, 0x141
/* 813D08E0 | 38 E0 00 01 */	li r7, 0x1
/* 813D08E4 | 4B F7 61 F1 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813D08E8 | 38 00 00 13 */	li r0, 0x13
/* 813D08EC | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_813D08F0:
/* 813D08F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D08F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D08F8 | 7C 08 03 A6 */	mtlr r0
/* 813D08FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D0900 | 4E 80 00 20 */	blr
.endfn on_format1st__Q33ipl5scene8GCWindowFv

# .text:0x1BE4 | 0x813D0904 | size: 0x9C
# ipl::scene::GCWindow::on_format2nd()
.fn on_format2nd__Q33ipl5scene8GCWindowFv, global
/* 813D0904 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D0908 | 7C 08 02 A6 */	mflr r0
/* 813D090C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D0910 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D0914 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813D0918 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813D091C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D0920 | 7C 7E 1B 78 */	mr r30, r3
/* 813D0924 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 813D0928 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813D092C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D0930 | 41 82 00 2C */	beq .L_813D095C
/* 813D0934 | 40 80 00 10 */	bge .L_813D0944
/* 813D0938 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D093C | 40 80 00 14 */	bge .L_813D0950
/* 813D0940 | 48 00 00 48 */	b .L_813D0988
.L_813D0944:
/* 813D0944 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813D0948 | 41 82 00 08 */	beq .L_813D0950
/* 813D094C | 48 00 00 3C */	b .L_813D0988
.L_813D0950:
/* 813D0950 | 7F C3 F3 78 */	mr r3, r30
/* 813D0954 | 4B FF EE 9D */	bl destroy__Q33ipl5scene8GCWindowFv
/* 813D0958 | 48 00 00 30 */	b .L_813D0988
.L_813D095C:
/* 813D095C | 38 00 00 04 */	li r0, 0x4
/* 813D0960 | 88 9E 00 88 */	lbz r4, 0x88(r30)
/* 813D0964 | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 813D0968 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813D096C | 4B FF CB 21 */	bl sendCardCmdFormat__Q33ipl5scene17MemoryCardManagerFUc
/* 813D0970 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813D0974 | 4B F7 79 A5 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813D0978 | 38 60 00 01 */	li r3, 0x1
/* 813D097C | 38 00 00 14 */	li r0, 0x14
/* 813D0980 | 98 7E 00 91 */	stb r3, 0x91(r30)
/* 813D0984 | 90 1E 00 38 */	stw r0, 0x38(r30)
.L_813D0988:
/* 813D0988 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D098C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D0990 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D0994 | 7C 08 03 A6 */	mtlr r0
/* 813D0998 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D099C | 4E 80 00 20 */	blr
.endfn on_format2nd__Q33ipl5scene8GCWindowFv

# .text:0x1C80 | 0x813D09A0 | size: 0x58
# ipl::scene::GCWindow::on_format3rd()
.fn on_format3rd__Q33ipl5scene8GCWindowFv, global
/* 813D09A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D09A4 | 7C 08 02 A6 */	mflr r0
/* 813D09A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D09AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D09B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813D09B4 | 88 03 00 91 */	lbz r0, 0x91(r3)
/* 813D09B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D09BC | 40 82 00 28 */	bne .L_813D09E4
/* 813D09C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D09C4 | 38 80 00 F0 */	li r4, 0xf0
/* 813D09C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D09CC | 38 A0 00 B4 */	li r5, 0xb4
/* 813D09D0 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813D09D4 | 38 C0 00 00 */	li r6, 0x0
/* 813D09D8 | 4B F7 5A 75 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813D09DC | 38 00 00 15 */	li r0, 0x15
/* 813D09E0 | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_813D09E4:
/* 813D09E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D09E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D09EC | 7C 08 03 A6 */	mtlr r0
/* 813D09F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D09F4 | 4E 80 00 20 */	blr
.endfn on_format3rd__Q33ipl5scene8GCWindowFv

# .text:0x1CD8 | 0x813D09F8 | size: 0x20
# ipl::scene::GCWindow::on_format4th()
.fn on_format4th__Q33ipl5scene8GCWindowFv, global
/* 813D09F8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D09FC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D0A00 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813D0A04 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813D0A08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D0A0C | 4D 80 00 20 */	bltlr
/* 813D0A10 | 4B FF ED E0 */	b destroy__Q33ipl5scene8GCWindowFv
/* 813D0A14 | 4E 80 00 20 */	blr
.endfn on_format4th__Q33ipl5scene8GCWindowFv

# .text:0x1CF8 | 0x813D0A18 | size: 0x20
# ipl::scene::GCWindow::on_format_error()
.fn on_format_error__Q33ipl5scene8GCWindowFv, global
/* 813D0A18 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D0A1C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D0A20 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813D0A24 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813D0A28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D0A2C | 4D 80 00 20 */	bltlr
/* 813D0A30 | 4B FF ED C0 */	b destroy__Q33ipl5scene8GCWindowFv
/* 813D0A34 | 4E 80 00 20 */	blr
.endfn on_format_error__Q33ipl5scene8GCWindowFv

# .text:0x1D18 | 0x813D0A38 | size: 0x74
# ipl::scene::GCWindow::change_textbox_doing()
.fn change_textbox_doing__Q33ipl5scene8GCWindowFv, global
/* 813D0A38 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813D0A3C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D0A40 | 41 82 00 20 */	beq .L_813D0A60
/* 813D0A44 | 40 80 00 10 */	bge .L_813D0A54
/* 813D0A48 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D0A4C | 40 80 00 2C */	bge .L_813D0A78
/* 813D0A50 | 4E 80 00 20 */	blr
.L_813D0A54:
/* 813D0A54 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D0A58 | 4C 80 00 20 */	bgelr
/* 813D0A5C | 48 00 00 34 */	b .L_813D0A90
.L_813D0A60:
/* 813D0A60 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0A64 | 38 A0 00 FA */	li r5, 0xfa
/* 813D0A68 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0A6C | 38 C0 00 0C */	li r6, 0xc
/* 813D0A70 | 38 E0 00 14 */	li r7, 0x14
/* 813D0A74 | 4B FF BE 40 */	b set_textbox__Q33ipl5scene10MemoryBaseFPCcUlii
.L_813D0A78:
/* 813D0A78 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0A7C | 38 A0 00 F9 */	li r5, 0xf9
/* 813D0A80 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0A84 | 38 C0 00 0C */	li r6, 0xc
/* 813D0A88 | 38 E0 00 14 */	li r7, 0x14
/* 813D0A8C | 4B FF BE 28 */	b set_textbox__Q33ipl5scene10MemoryBaseFPCcUlii
.L_813D0A90:
/* 813D0A90 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0A94 | 38 A0 00 FB */	li r5, 0xfb
/* 813D0A98 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0A9C | 38 C0 00 0C */	li r6, 0xc
/* 813D0AA0 | 38 E0 00 14 */	li r7, 0x14
/* 813D0AA4 | 4B FF BE 10 */	b set_textbox__Q33ipl5scene10MemoryBaseFPCcUlii
/* 813D0AA8 | 4E 80 00 20 */	blr
.endfn change_textbox_doing__Q33ipl5scene8GCWindowFv

# .text:0x1D8C | 0x813D0AAC | size: 0x74
# ipl::scene::GCWindow::change_textbox_done()
.fn change_textbox_done__Q33ipl5scene8GCWindowFv, global
/* 813D0AAC | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813D0AB0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D0AB4 | 41 82 00 20 */	beq .L_813D0AD4
/* 813D0AB8 | 40 80 00 10 */	bge .L_813D0AC8
/* 813D0ABC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D0AC0 | 40 80 00 2C */	bge .L_813D0AEC
/* 813D0AC4 | 4E 80 00 20 */	blr
.L_813D0AC8:
/* 813D0AC8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D0ACC | 4C 80 00 20 */	bgelr
/* 813D0AD0 | 48 00 00 34 */	b .L_813D0B04
.L_813D0AD4:
/* 813D0AD4 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0AD8 | 38 A0 01 0D */	li r5, 0x10d
/* 813D0ADC | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0AE0 | 38 C0 00 0C */	li r6, 0xc
/* 813D0AE4 | 38 E0 00 14 */	li r7, 0x14
/* 813D0AE8 | 4B FF BD CC */	b set_textbox__Q33ipl5scene10MemoryBaseFPCcUlii
.L_813D0AEC:
/* 813D0AEC | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0AF0 | 38 A0 01 07 */	li r5, 0x107
/* 813D0AF4 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0AF8 | 38 C0 00 0C */	li r6, 0xc
/* 813D0AFC | 38 E0 00 14 */	li r7, 0x14
/* 813D0B00 | 4B FF BD B4 */	b set_textbox__Q33ipl5scene10MemoryBaseFPCcUlii
.L_813D0B04:
/* 813D0B04 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0B08 | 38 A0 00 F8 */	li r5, 0xf8
/* 813D0B0C | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0B10 | 38 C0 00 0C */	li r6, 0xc
/* 813D0B14 | 38 E0 00 14 */	li r7, 0x14
/* 813D0B18 | 4B FF BD 9C */	b set_textbox__Q33ipl5scene10MemoryBaseFPCcUlii
/* 813D0B1C | 4E 80 00 20 */	blr
.endfn change_textbox_done__Q33ipl5scene8GCWindowFv

# .text:0x1E00 | 0x813D0B20 | size: 0x74
# ipl::scene::GCWindow::set_texture(const char*, const _GXTexObj&)
.fn set_texture__Q33ipl5scene8GCWindowFPCcRC9_GXTexObj, global
/* 813D0B20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D0B24 | 7C 08 02 A6 */	mflr r0
/* 813D0B28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D0B2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D0B30 | 7C BF 2B 78 */	mr r31, r5
/* 813D0B34 | 38 A0 00 01 */	li r5, 0x1
/* 813D0B38 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D0B3C | 7C 9E 23 78 */	mr r30, r4
/* 813D0B40 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813D0B44 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D0B48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D0B4C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D0B50 | 7D 89 03 A6 */	mtctr r12
/* 813D0B54 | 4E 80 04 21 */	bctrl
/* 813D0B58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D0B5C | 7F C4 F3 78 */	mr r4, r30
/* 813D0B60 | 38 A0 00 01 */	li r5, 0x1
/* 813D0B64 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813D0B68 | 7D 89 03 A6 */	mtctr r12
/* 813D0B6C | 4E 80 04 21 */	bctrl
/* 813D0B70 | 7F E5 FB 78 */	mr r5, r31
/* 813D0B74 | 38 80 00 00 */	li r4, 0x0
/* 813D0B78 | 48 15 72 A5 */	bl fn_81527E1C
/* 813D0B7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D0B80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D0B84 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D0B88 | 7C 08 03 A6 */	mtlr r0
/* 813D0B8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D0B90 | 4E 80 00 20 */	blr
.endfn set_texture__Q33ipl5scene8GCWindowFPCcRC9_GXTexObj

# .text:0x1E74 | 0x813D0B94 | size: 0x26C
# ipl::scene::GCWindow::onMemEvent(long, unsigned char)
.fn onMemEvent__Q33ipl5scene8GCWindowFlUc, global
/* 813D0B94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D0B98 | 7C 08 02 A6 */	mflr r0
/* 813D0B9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D0BA0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813D0BA4 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813D0BA8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D0BAC | 7C 7F 1B 78 */	mr r31, r3
/* 813D0BB0 | 41 81 00 20 */	bgt .L_813D0BD0
/* 813D0BB4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D0BB8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D0BBC | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813D0BC0 | 4B F7 77 85 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813D0BC4 | 38 00 00 00 */	li r0, 0x0
/* 813D0BC8 | 98 1F 00 91 */	stb r0, 0x91(r31)
/* 813D0BCC | 48 00 02 20 */	b .L_813D0DEC
.L_813D0BD0:
/* 813D0BD0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D0BD4 | 40 82 00 14 */	bne .L_813D0BE8
/* 813D0BD8 | 7C 63 2A 14 */	add r3, r3, r5
/* 813D0BDC | 38 00 00 01 */	li r0, 0x1
/* 813D0BE0 | 98 03 00 92 */	stb r0, 0x92(r3)
/* 813D0BE4 | 48 00 02 08 */	b .L_813D0DEC
.L_813D0BE8:
/* 813D0BE8 | 2C 04 00 06 */	cmpwi r4, 0x6
/* 813D0BEC | 40 82 02 00 */	bne .L_813D0DEC
/* 813D0BF0 | 7C 83 2A 14 */	add r4, r3, r5
/* 813D0BF4 | 38 00 00 01 */	li r0, 0x1
/* 813D0BF8 | 98 04 00 94 */	stb r0, 0x94(r4)
/* 813D0BFC | 38 00 00 00 */	li r0, 0x0
/* 813D0C00 | 98 04 00 92 */	stb r0, 0x92(r4)
/* 813D0C04 | 80 C3 00 38 */	lwz r6, 0x38(r3)
/* 813D0C08 | 28 06 00 15 */	cmplwi r6, 0x15
/* 813D0C0C | 41 81 01 E0 */	bgt .L_813D0DEC
/* 813D0C10 | 3C 80 81 65 */	lis r4, jumptable_81652BF8@ha
/* 813D0C14 | 54 C0 10 3A */	slwi r0, r6, 2
/* 813D0C18 | 38 84 2B F8 */	addi r4, r4, jumptable_81652BF8@l
/* 813D0C1C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813D0C20 | 7C 89 03 A6 */	mtctr r4
/* 813D0C24 | 4E 80 04 20 */	bctr
.L_813D0C28:
/* 813D0C28 | 88 03 00 88 */	lbz r0, 0x88(r3)
/* 813D0C2C | 7C 00 28 40 */	cmplw r0, r5
/* 813D0C30 | 40 82 01 BC */	bne .L_813D0DEC
/* 813D0C34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D0C38 | 3C 80 81 65 */	lis r4, lbl_81652AA0@ha
/* 813D0C3C | 38 84 2A A0 */	addi r4, r4, lbl_81652AA0@l
/* 813D0C40 | 38 A0 00 00 */	li r5, 0x0
/* 813D0C44 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813D0C48 | 7D 89 03 A6 */	mtctr r12
/* 813D0C4C | 4E 80 04 21 */	bctrl
/* 813D0C50 | 48 00 01 9C */	b .L_813D0DEC
.L_813D0C54:
/* 813D0C54 | 88 03 00 88 */	lbz r0, 0x88(r3)
/* 813D0C58 | 7C 00 28 40 */	cmplw r0, r5
/* 813D0C5C | 40 82 01 90 */	bne .L_813D0DEC
/* 813D0C60 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D0C64 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D0C68 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813D0C6C | 4B F7 6C 99 */	bl terminate__Q23ipl12DialogWindowFv
/* 813D0C70 | 38 00 00 03 */	li r0, 0x3
/* 813D0C74 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D0C78 | 48 00 01 74 */	b .L_813D0DEC
.L_813D0C7C:
/* 813D0C7C | 88 03 00 88 */	lbz r0, 0x88(r3)
/* 813D0C80 | 7C 00 28 40 */	cmplw r0, r5
/* 813D0C84 | 40 82 00 20 */	bne .L_813D0CA4
/* 813D0C88 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D0C8C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D0C90 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813D0C94 | 4B F7 6C 71 */	bl terminate__Q23ipl12DialogWindowFv
/* 813D0C98 | 38 00 00 03 */	li r0, 0x3
/* 813D0C9C | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D0CA0 | 48 00 01 4C */	b .L_813D0DEC
.L_813D0CA4:
/* 813D0CA4 | 38 06 FF FF */	subi r0, r6, 0x1
/* 813D0CA8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813D0CAC | 41 81 01 40 */	bgt .L_813D0DEC
/* 813D0CB0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D0CB4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D0CB8 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813D0CBC | 4B F7 6C 49 */	bl terminate__Q23ipl12DialogWindowFv
/* 813D0CC0 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 813D0CC4 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0CC8 | 7F E3 FB 78 */	mr r3, r31
/* 813D0CCC | 7C 00 00 34 */	cntlzw r0, r0
/* 813D0CD0 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0CD4 | 54 05 D9 7E */	srwi r5, r0, 5
/* 813D0CD8 | 38 A5 00 DA */	addi r5, r5, 0xda
/* 813D0CDC | 4B FF BB 51 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0CE0 | 7F E3 FB 78 */	mr r3, r31
/* 813D0CE4 | 4B FF C0 09 */	bl show_button_ok__Q33ipl5scene10MemoryBaseFv
/* 813D0CE8 | 38 00 00 0E */	li r0, 0xe
/* 813D0CEC | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D0CF0 | 48 00 00 FC */	b .L_813D0DEC
.L_813D0CF4:
/* 813D0CF4 | 88 03 00 88 */	lbz r0, 0x88(r3)
/* 813D0CF8 | 7C 00 28 40 */	cmplw r0, r5
/* 813D0CFC | 40 82 00 F0 */	bne .L_813D0DEC
/* 813D0D00 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D0D04 | 38 80 00 F1 */	li r4, 0xf1
/* 813D0D08 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D0D0C | 38 A0 00 B4 */	li r5, 0xb4
/* 813D0D10 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813D0D14 | 38 C0 00 00 */	li r6, 0x0
/* 813D0D18 | 4B F7 57 35 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813D0D1C | 38 00 00 16 */	li r0, 0x16
/* 813D0D20 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D0D24 | 48 00 00 C8 */	b .L_813D0DEC
.L_813D0D28:
/* 813D0D28 | 88 03 00 88 */	lbz r0, 0x88(r3)
/* 813D0D2C | 7C 00 28 40 */	cmplw r0, r5
/* 813D0D30 | 40 82 00 BC */	bne .L_813D0DEC
/* 813D0D34 | 38 00 00 03 */	li r0, 0x3
/* 813D0D38 | 90 03 00 38 */	stw r0, 0x38(r3)
/* 813D0D3C | 48 00 00 B0 */	b .L_813D0DEC
.L_813D0D40:
/* 813D0D40 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813D0D44 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D0D48 | 41 82 00 20 */	beq .L_813D0D68
/* 813D0D4C | 40 80 00 10 */	bge .L_813D0D5C
/* 813D0D50 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D0D54 | 40 80 00 30 */	bge .L_813D0D84
/* 813D0D58 | 48 00 00 6C */	b .L_813D0DC4
.L_813D0D5C:
/* 813D0D5C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D0D60 | 40 80 00 64 */	bge .L_813D0DC4
/* 813D0D64 | 48 00 00 3C */	b .L_813D0DA0
.L_813D0D68:
/* 813D0D68 | 48 00 00 A1 */	bl stop_wait_anim__Q33ipl5scene8GCWindowFv
/* 813D0D6C | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0D70 | 7F E3 FB 78 */	mr r3, r31
/* 813D0D74 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0D78 | 38 A0 00 D7 */	li r5, 0xd7
/* 813D0D7C | 4B FF BA B1 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0D80 | 48 00 00 44 */	b .L_813D0DC4
.L_813D0D84:
/* 813D0D84 | 48 00 00 85 */	bl stop_wait_anim__Q33ipl5scene8GCWindowFv
/* 813D0D88 | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0D8C | 7F E3 FB 78 */	mr r3, r31
/* 813D0D90 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0D94 | 38 A0 00 E3 */	li r5, 0xe3
/* 813D0D98 | 4B FF BA 95 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0D9C | 48 00 00 28 */	b .L_813D0DC4
.L_813D0DA0:
/* 813D0DA0 | 88 03 00 88 */	lbz r0, 0x88(r3)
/* 813D0DA4 | 7C 00 28 40 */	cmplw r0, r5
/* 813D0DA8 | 40 82 00 44 */	bne .L_813D0DEC
/* 813D0DAC | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D0DB0 | 38 A0 00 E5 */	li r5, 0xe5
/* 813D0DB4 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D0DB8 | 4B FF BA 75 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
/* 813D0DBC | 48 00 00 08 */	b .L_813D0DC4
/* 813D0DC0 | 48 00 00 2C */	b .L_813D0DEC
.L_813D0DC4:
/* 813D0DC4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D0DC8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D0DCC | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813D0DD0 | 4B F7 75 75 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813D0DD4 | 38 00 00 00 */	li r0, 0x0
/* 813D0DD8 | 7F E3 FB 78 */	mr r3, r31
/* 813D0DDC | 98 1F 00 91 */	stb r0, 0x91(r31)
/* 813D0DE0 | 4B FF BF 0D */	bl show_button_ok__Q33ipl5scene10MemoryBaseFv
/* 813D0DE4 | 38 00 00 0E */	li r0, 0xe
/* 813D0DE8 | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_813D0DEC:
/* 813D0DEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D0DF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D0DF4 | 7C 08 03 A6 */	mtlr r0
/* 813D0DF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D0DFC | 4E 80 00 20 */	blr
.endfn onMemEvent__Q33ipl5scene8GCWindowFlUc

# .text:0x20E0 | 0x813D0E00 | size: 0x8
# ipl::scene::GCWindow::isProcess()
.fn isProcess__Q33ipl5scene8GCWindowFv, global
/* 813D0E00 | 88 63 00 91 */	lbz r3, 0x91(r3)
/* 813D0E04 | 4E 80 00 20 */	blr
.endfn isProcess__Q33ipl5scene8GCWindowFv

# .text:0x20E8 | 0x813D0E08 | size: 0x78
# ipl::scene::GCWindow::stop_wait_anim()
.fn stop_wait_anim__Q33ipl5scene8GCWindowFv, global
/* 813D0E08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D0E0C | 7C 08 02 A6 */	mflr r0
/* 813D0E10 | 38 8D 8C 92 */	li r4, lbl_81696CD2@sda21
/* 813D0E14 | 38 A0 00 00 */	li r5, 0x0
/* 813D0E18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D0E1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D0E20 | 7C 7F 1B 78 */	mr r31, r3
/* 813D0E24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D0E28 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813D0E2C | 7D 89 03 A6 */	mtctr r12
/* 813D0E30 | 4E 80 04 21 */	bctrl
/* 813D0E34 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D0E38 | 7F E3 FB 78 */	mr r3, r31
/* 813D0E3C | 38 80 00 0F */	li r4, 0xf
/* 813D0E40 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813D0E44 | 7D 89 03 A6 */	mtctr r12
/* 813D0E48 | 4E 80 04 21 */	bctrl
/* 813D0E4C | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813D0E50 | 38 00 00 00 */	li r0, 0x0
/* 813D0E54 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813D0E58 | 3C 80 81 65 */	lis r4, lbl_81652C50@ha
/* 813D0E5C | 90 05 00 14 */	stw r0, 0x14(r5)
/* 813D0E60 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813D0E64 | 38 84 2C 50 */	addi r4, r4, lbl_81652C50@l
/* 813D0E68 | 4B F9 A6 05 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813D0E6C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D0E70 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D0E74 | 7C 08 03 A6 */	mtlr r0
/* 813D0E78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D0E7C | 4E 80 00 20 */	blr
.endfn stop_wait_anim__Q33ipl5scene8GCWindowFv

# .text:0x2160 | 0x813D0E80 | size: 0x184
# ipl::scene::SavedataEditWindow::calc()
.fn calc__Q33ipl5scene18SavedataEditWindowFv, global
/* 813D0E80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D0E84 | 7C 08 02 A6 */	mflr r0
/* 813D0E88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D0E8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D0E90 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D0E94 | 7C 7E 1B 78 */	mr r30, r3
/* 813D0E98 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813D0E9C | 4B F9 98 69 */	bl calc__Q33ipl6layout6ObjectFv
/* 813D0EA0 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813D0EA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D0EA8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813D0EAC | 7D 89 03 A6 */	mtctr r12
/* 813D0EB0 | 4E 80 04 21 */	bctrl
/* 813D0EB4 | 3B E0 00 00 */	li r31, 0x0
/* 813D0EB8 | 48 00 00 0C */	b .L_813D0EC4
.L_813D0EBC:
/* 813D0EBC | 7F E3 FB 78 */	mr r3, r31
/* 813D0EC0 | 4B FF BE 7D */	bl calc__Q43ipl5scene10MemoryBase9AnmButtonFv
.L_813D0EC4:
/* 813D0EC4 | 7F E4 FB 78 */	mr r4, r31
/* 813D0EC8 | 38 7E 00 28 */	addi r3, r30, 0x28
/* 813D0ECC | 48 14 14 11 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813D0ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D0ED4 | 7C 7F 1B 78 */	mr r31, r3
/* 813D0ED8 | 40 82 FF E4 */	bne .L_813D0EBC
/* 813D0EDC | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 813D0EE0 | 28 00 00 0C */	cmplwi r0, 0xc
/* 813D0EE4 | 41 81 01 08 */	bgt .L_813D0FEC
/* 813D0EE8 | 3C 60 81 65 */	lis r3, jumptable_81652DB8@ha
/* 813D0EEC | 54 00 10 3A */	slwi r0, r0, 2
/* 813D0EF0 | 38 63 2D B8 */	addi r3, r3, jumptable_81652DB8@l
/* 813D0EF4 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D0EF8 | 7C 69 03 A6 */	mtctr r3
/* 813D0EFC | 4E 80 04 20 */	bctr
.L_813D0F00:
/* 813D0F00 | 7F C3 F3 78 */	mr r3, r30
/* 813D0F04 | 48 00 01 01 */	bl on_normal__Q33ipl5scene18SavedataEditWindowFv
/* 813D0F08 | 48 00 00 E4 */	b .L_813D0FEC
.L_813D0F0C:
/* 813D0F0C | 7F C3 F3 78 */	mr r3, r30
/* 813D0F10 | 48 00 01 55 */	bl on_fadein__Q33ipl5scene18SavedataEditWindowFv
/* 813D0F14 | 48 00 00 D8 */	b .L_813D0FEC
.L_813D0F18:
/* 813D0F18 | 7F C3 F3 78 */	mr r3, r30
/* 813D0F1C | 48 00 01 F5 */	bl on_fadeout1st__Q33ipl5scene18SavedataEditWindowFv
/* 813D0F20 | 48 00 00 CC */	b .L_813D0FEC
.L_813D0F24:
/* 813D0F24 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D0F28 | 7F C3 F3 78 */	mr r3, r30
/* 813D0F2C | 38 80 00 01 */	li r4, 0x1
/* 813D0F30 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D0F34 | 7D 89 03 A6 */	mtctr r12
/* 813D0F38 | 4E 80 04 21 */	bctrl
/* 813D0F3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D0F40 | 40 82 00 AC */	bne .L_813D0FEC
/* 813D0F44 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D0F48 | 7F C3 F3 78 */	mr r3, r30
/* 813D0F4C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813D0F50 | 7D 89 03 A6 */	mtctr r12
/* 813D0F54 | 4E 80 04 21 */	bctrl
/* 813D0F58 | 48 00 00 94 */	b .L_813D0FEC
.L_813D0F5C:
/* 813D0F5C | 7F C3 F3 78 */	mr r3, r30
/* 813D0F60 | 48 00 03 45 */	bl on_fadeout_yes1st__Q33ipl5scene18SavedataEditWindowFv
/* 813D0F64 | 48 00 00 88 */	b .L_813D0FEC
.L_813D0F68:
/* 813D0F68 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D0F6C | 7F C3 F3 78 */	mr r3, r30
/* 813D0F70 | 38 80 00 07 */	li r4, 0x7
/* 813D0F74 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D0F78 | 7D 89 03 A6 */	mtctr r12
/* 813D0F7C | 4E 80 04 21 */	bctrl
/* 813D0F80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D0F84 | 40 82 00 68 */	bne .L_813D0FEC
/* 813D0F88 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D0F8C | 7F C3 F3 78 */	mr r3, r30
/* 813D0F90 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813D0F94 | 7D 89 03 A6 */	mtctr r12
/* 813D0F98 | 4E 80 04 21 */	bctrl
/* 813D0F9C | 48 00 00 50 */	b .L_813D0FEC
.L_813D0FA0:
/* 813D0FA0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D0FA4 | 7F C3 F3 78 */	mr r3, r30
/* 813D0FA8 | 38 80 00 08 */	li r4, 0x8
/* 813D0FAC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D0FB0 | 7D 89 03 A6 */	mtctr r12
/* 813D0FB4 | 4E 80 04 21 */	bctrl
/* 813D0FB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D0FBC | 40 82 00 30 */	bne .L_813D0FEC
/* 813D0FC0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D0FC4 | 7F C3 F3 78 */	mr r3, r30
/* 813D0FC8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813D0FCC | 7D 89 03 A6 */	mtctr r12
/* 813D0FD0 | 4E 80 04 21 */	bctrl
/* 813D0FD4 | 48 00 00 18 */	b .L_813D0FEC
.L_813D0FD8:
/* 813D0FD8 | 7F C3 F3 78 */	mr r3, r30
/* 813D0FDC | 48 00 01 ED */	bl on_focus_del__Q33ipl5scene18SavedataEditWindowFv
/* 813D0FE0 | 48 00 00 0C */	b .L_813D0FEC
.L_813D0FE4:
/* 813D0FE4 | 7F C3 F3 78 */	mr r3, r30
/* 813D0FE8 | 48 00 02 49 */	bl on_select_out__Q33ipl5scene18SavedataEditWindowFv
.L_813D0FEC:
/* 813D0FEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D0FF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D0FF4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D0FF8 | 7C 08 03 A6 */	mtlr r0
/* 813D0FFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D1000 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene18SavedataEditWindowFv

# .text:0x22E4 | 0x813D1004 | size: 0x60
# ipl::scene::SavedataEditWindow::on_normal()
.fn on_normal__Q33ipl5scene18SavedataEditWindowFv, global
/* 813D1004 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D1008 | 7C 08 02 A6 */	mflr r0
/* 813D100C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D1010 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D1014 | 7C 7F 1B 78 */	mr r31, r3
/* 813D1018 | 88 03 00 80 */	lbz r0, 0x80(r3)
/* 813D101C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D1020 | 41 82 00 30 */	beq .L_813D1050
/* 813D1024 | 4B FF BB 09 */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813D1028 | 48 03 67 41 */	bl update__Q33ipl5scene13SettingButtonFv
/* 813D102C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D1030 | 41 82 00 18 */	beq .L_813D1048
/* 813D1034 | 7F E3 FB 78 */	mr r3, r31
/* 813D1038 | 4B FF BB 7D */	bl change_button_text_return__Q33ipl5scene10MemoryBaseFv
/* 813D103C | 38 00 00 02 */	li r0, 0x2
/* 813D1040 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813D1044 | 48 00 00 0C */	b .L_813D1050
.L_813D1048:
/* 813D1048 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813D104C | 4B F9 9F 41 */	bl update__Q33ipl3gui11PaneManagerFv
.L_813D1050:
/* 813D1050 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D1054 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D1058 | 7C 08 03 A6 */	mtlr r0
/* 813D105C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D1060 | 4E 80 00 20 */	blr
.endfn on_normal__Q33ipl5scene18SavedataEditWindowFv

# .text:0x2344 | 0x813D1064 | size: 0xAC
# ipl::scene::SavedataEditWindow::on_fadein()
.fn on_fadein__Q33ipl5scene18SavedataEditWindowFv, global
/* 813D1064 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D1068 | 7C 08 02 A6 */	mflr r0
/* 813D106C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D1070 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813D1074 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813D1078 | 7C 7E 1B 78 */	mr r30, r3
/* 813D107C | 81 83 00 3C */	lwz r12, 0x3c(r3)
/* 813D1080 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813D1084 | 7D 89 03 A6 */	mtctr r12
/* 813D1088 | 38 63 00 3C */	addi r3, r3, 0x3c
/* 813D108C | 4E 80 04 21 */	bctrl
/* 813D1090 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D1094 | 38 9E 00 3C */	addi r4, r30, 0x3c
/* 813D1098 | 4B FD 52 D9 */	bl "get__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>CFv"
/* 813D109C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813D10A0 | 3C 80 81 65 */	lis r4, lbl_81652ACA@ha
/* 813D10A4 | 3B E1 00 08 */	addi r31, r1, 0x8
/* 813D10A8 | 38 A0 00 01 */	li r5, 0x1
/* 813D10AC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D10B0 | 38 84 2A CA */	addi r4, r4, lbl_81652ACA@l
/* 813D10B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D10B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D10BC | 7D 89 03 A6 */	mtctr r12
/* 813D10C0 | 4E 80 04 21 */	bctrl
/* 813D10C4 | 7F E4 FB 78 */	mr r4, r31
/* 813D10C8 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813D10CC | 4B F7 35 B9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813D10D0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D10D4 | 7F C3 F3 78 */	mr r3, r30
/* 813D10D8 | 38 80 00 00 */	li r4, 0x0
/* 813D10DC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D10E0 | 7D 89 03 A6 */	mtctr r12
/* 813D10E4 | 4E 80 04 21 */	bctrl
/* 813D10E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D10EC | 40 82 00 0C */	bne .L_813D10F8
/* 813D10F0 | 38 00 00 00 */	li r0, 0x0
/* 813D10F4 | 90 1E 00 34 */	stw r0, 0x34(r30)
.L_813D10F8:
/* 813D10F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D10FC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813D1100 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813D1104 | 7C 08 03 A6 */	mtlr r0
/* 813D1108 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D110C | 4E 80 00 20 */	blr
.endfn on_fadein__Q33ipl5scene18SavedataEditWindowFv

# .text:0x23F0 | 0x813D1110 | size: 0xB8
# ipl::scene::SavedataEditWindow::on_fadeout1st()
.fn on_fadeout1st__Q33ipl5scene18SavedataEditWindowFv, global
/* 813D1110 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D1114 | 7C 08 02 A6 */	mflr r0
/* 813D1118 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D111C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813D1120 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813D1124 | 7C 7E 1B 78 */	mr r30, r3
/* 813D1128 | 4B FF BA 05 */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813D112C | 48 03 69 21 */	bl isPlaying__Q33ipl5scene13SettingButtonCFv
/* 813D1130 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D1134 | 40 82 00 7C */	bne .L_813D11B0
/* 813D1138 | C0 22 86 90 */	lfs f1, lbl_81694A90@sda21(r0)
/* 813D113C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D1140 | FC 40 08 90 */	fmr f2, f1
/* 813D1144 | FC 60 08 90 */	fmr f3, f1
/* 813D1148 | 4B F9 19 15 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813D114C | 38 7E 00 5C */	addi r3, r30, 0x5c
/* 813D1150 | 38 9E 00 74 */	addi r4, r30, 0x74
/* 813D1154 | 4B F7 35 31 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813D1158 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 813D115C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D1160 | 4B F7 35 25 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813D1164 | C0 22 86 9C */	lfs f1, lbl_81694A9C@sda21(r0)
/* 813D1168 | 38 7E 00 3C */	addi r3, r30, 0x3c
/* 813D116C | C0 42 86 90 */	lfs f2, lbl_81694A90@sda21(r0)
/* 813D1170 | 38 80 00 00 */	li r4, 0x0
/* 813D1174 | C0 62 86 98 */	lfs f3, lbl_81694A98@sda21(r0)
/* 813D1178 | 4B F9 16 D9 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813D117C | 3B E0 00 01 */	li r31, 0x1
/* 813D1180 | 38 7E 00 3C */	addi r3, r30, 0x3c
/* 813D1184 | 93 FE 00 54 */	stw r31, 0x54(r30)
/* 813D1188 | 4B F9 16 E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813D118C | 93 FE 00 50 */	stw r31, 0x50(r30)
/* 813D1190 | 7F C3 F3 78 */	mr r3, r30
/* 813D1194 | 38 80 00 01 */	li r4, 0x1
/* 813D1198 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D119C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813D11A0 | 7D 89 03 A6 */	mtctr r12
/* 813D11A4 | 4E 80 04 21 */	bctrl
/* 813D11A8 | 38 00 00 03 */	li r0, 0x3
/* 813D11AC | 90 1E 00 34 */	stw r0, 0x34(r30)
.L_813D11B0:
/* 813D11B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D11B4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813D11B8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813D11BC | 7C 08 03 A6 */	mtlr r0
/* 813D11C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D11C4 | 4E 80 00 20 */	blr
.endfn on_fadeout1st__Q33ipl5scene18SavedataEditWindowFv

# .text:0x24A8 | 0x813D11C8 | size: 0x68
# ipl::scene::SavedataEditWindow::on_focus_del()
.fn on_focus_del__Q33ipl5scene18SavedataEditWindowFv, global
/* 813D11C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D11CC | 7C 08 02 A6 */	mflr r0
/* 813D11D0 | 38 80 00 04 */	li r4, 0x4
/* 813D11D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D11D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D11DC | 7C 7F 1B 78 */	mr r31, r3
/* 813D11E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D11E4 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D11E8 | 7D 89 03 A6 */	mtctr r12
/* 813D11EC | 4E 80 04 21 */	bctrl
/* 813D11F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D11F4 | 40 82 00 28 */	bne .L_813D121C
/* 813D11F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813D11FC | 7F E3 FB 78 */	mr r3, r31
/* 813D1200 | 38 80 00 05 */	li r4, 0x5
/* 813D1204 | 38 A0 00 00 */	li r5, 0x0
/* 813D1208 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D120C | 7D 89 03 A6 */	mtctr r12
/* 813D1210 | 4E 80 04 21 */	bctrl
/* 813D1214 | 38 00 00 08 */	li r0, 0x8
/* 813D1218 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_813D121C:
/* 813D121C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D1220 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D1224 | 7C 08 03 A6 */	mtlr r0
/* 813D1228 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D122C | 4E 80 00 20 */	blr
.endfn on_focus_del__Q33ipl5scene18SavedataEditWindowFv

# .text:0x2510 | 0x813D1230 | size: 0x74
# ipl::scene::SavedataEditWindow::on_select_out()
.fn on_select_out__Q33ipl5scene18SavedataEditWindowFv, global
/* 813D1230 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D1234 | 7C 08 02 A6 */	mflr r0
/* 813D1238 | 38 80 00 05 */	li r4, 0x5
/* 813D123C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D1240 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D1244 | 7C 7F 1B 78 */	mr r31, r3
/* 813D1248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D124C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D1250 | 7D 89 03 A6 */	mtctr r12
/* 813D1254 | 4E 80 04 21 */	bctrl
/* 813D1258 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D125C | 40 82 00 34 */	bne .L_813D1290
/* 813D1260 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D1264 | 38 80 01 42 */	li r4, 0x142
/* 813D1268 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D126C | 38 A0 01 41 */	li r5, 0x141
/* 813D1270 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813D1274 | 38 C0 00 01 */	li r6, 0x1
/* 813D1278 | 4B F7 5D 15 */	bl callS2Btn2__Q23ipl12DialogWindowFUlUlb
/* 813D127C | 7F E3 FB 78 */	mr r3, r31
/* 813D1280 | 4B FF B8 AD */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813D1284 | 48 03 66 49 */	bl hideBtn__Q33ipl5scene13SettingButtonFv
/* 813D1288 | 38 00 00 09 */	li r0, 0x9
/* 813D128C | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_813D1290:
/* 813D1290 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D1294 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D1298 | 7C 08 03 A6 */	mtlr r0
/* 813D129C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D12A0 | 4E 80 00 20 */	blr
.endfn on_select_out__Q33ipl5scene18SavedataEditWindowFv

# .text:0x2584 | 0x813D12A4 | size: 0xFC
# ipl::scene::SavedataEditWindow::on_fadeout_yes1st()
.fn on_fadeout_yes1st__Q33ipl5scene18SavedataEditWindowFv, global
/* 813D12A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D12A8 | 7C 08 02 A6 */	mflr r0
/* 813D12AC | 3C 80 81 65 */	lis r4, lbl_81652B5A@ha
/* 813D12B0 | 38 A0 00 F8 */	li r5, 0xf8
/* 813D12B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D12B8 | 38 84 2B 5A */	addi r4, r4, lbl_81652B5A@l
/* 813D12BC | 38 C0 00 06 */	li r6, 0x6
/* 813D12C0 | 38 E0 00 14 */	li r7, 0x14
/* 813D12C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813D12C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813D12CC | 7C 7E 1B 78 */	mr r30, r3
/* 813D12D0 | 4B FF B5 E5 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUlii
/* 813D12D4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D12D8 | 7F C3 F3 78 */	mr r3, r30
/* 813D12DC | 38 80 00 06 */	li r4, 0x6
/* 813D12E0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813D12E4 | 7D 89 03 A6 */	mtctr r12
/* 813D12E8 | 4E 80 04 21 */	bctrl
/* 813D12EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D12F0 | 40 82 00 98 */	bne .L_813D1388
/* 813D12F4 | C0 22 86 90 */	lfs f1, lbl_81694A90@sda21(r0)
/* 813D12F8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D12FC | FC 40 08 90 */	fmr f2, f1
/* 813D1300 | FC 60 08 90 */	fmr f3, f1
/* 813D1304 | 4B F9 17 59 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813D1308 | 38 7E 00 5C */	addi r3, r30, 0x5c
/* 813D130C | 38 9E 00 74 */	addi r4, r30, 0x74
/* 813D1310 | 4B F7 33 75 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813D1314 | 38 7E 00 68 */	addi r3, r30, 0x68
/* 813D1318 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D131C | 4B F7 33 69 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813D1320 | C0 22 86 9C */	lfs f1, lbl_81694A9C@sda21(r0)
/* 813D1324 | 38 7E 00 3C */	addi r3, r30, 0x3c
/* 813D1328 | C0 42 86 90 */	lfs f2, lbl_81694A90@sda21(r0)
/* 813D132C | 38 80 00 00 */	li r4, 0x0
/* 813D1330 | C0 62 86 98 */	lfs f3, lbl_81694A98@sda21(r0)
/* 813D1334 | 4B F9 15 1D */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813D1338 | 3B E0 00 01 */	li r31, 0x1
/* 813D133C | 38 7E 00 3C */	addi r3, r30, 0x3c
/* 813D1340 | 93 FE 00 54 */	stw r31, 0x54(r30)
/* 813D1344 | 4B F9 15 2D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813D1348 | 93 FE 00 50 */	stw r31, 0x50(r30)
/* 813D134C | 7F C3 F3 78 */	mr r3, r30
/* 813D1350 | 4B FF B7 DD */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813D1354 | 38 80 01 3B */	li r4, 0x13b
/* 813D1358 | 48 03 65 CD */	bl setText__Q33ipl5scene13SettingButtonFUl
/* 813D135C | 7F C3 F3 78 */	mr r3, r30
/* 813D1360 | 4B FF B7 CD */	bl get_setting_button__Q33ipl5scene10MemoryBaseFv
/* 813D1364 | 48 03 65 0D */	bl showBtn__Q33ipl5scene13SettingButtonFv
/* 813D1368 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813D136C | 7F C3 F3 78 */	mr r3, r30
/* 813D1370 | 38 80 00 07 */	li r4, 0x7
/* 813D1374 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813D1378 | 7D 89 03 A6 */	mtctr r12
/* 813D137C | 4E 80 04 21 */	bctrl
/* 813D1380 | 38 00 00 05 */	li r0, 0x5
/* 813D1384 | 90 1E 00 34 */	stw r0, 0x34(r30)
.L_813D1388:
/* 813D1388 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D138C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813D1390 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813D1394 | 7C 08 03 A6 */	mtlr r0
/* 813D1398 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D139C | 4E 80 00 20 */	blr
.endfn on_fadeout_yes1st__Q33ipl5scene18SavedataEditWindowFv

# .text:0x2680 | 0x813D13A0 | size: 0x5C
# ipl::scene::GCWindow::~GCWindow()
.fn __dt__Q33ipl5scene8GCWindowFv, global
/* 813D13A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D13A4 | 7C 08 02 A6 */	mflr r0
/* 813D13A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D13AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D13B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D13B4 | 7C 9F 23 78 */	mr r31, r4
/* 813D13B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D13BC | 7C 7E 1B 78 */	mr r30, r3
/* 813D13C0 | 41 82 00 20 */	beq .L_813D13E0
/* 813D13C4 | 38 80 FF FF */	li r4, -0x1
/* 813D13C8 | 38 63 00 44 */	addi r3, r3, 0x44
/* 813D13CC | 4B FC 5B F9 */	bl "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv"
/* 813D13D0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813D13D4 | 40 81 00 0C */	ble .L_813D13E0
/* 813D13D8 | 7F C3 F3 78 */	mr r3, r30
/* 813D13DC | 48 22 6D 09 */	bl __dl__FPv
.L_813D13E0:
/* 813D13E0 | 7F C3 F3 78 */	mr r3, r30
/* 813D13E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D13E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D13EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D13F0 | 7C 08 03 A6 */	mtlr r0
/* 813D13F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D13F8 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene8GCWindowFv

# .text:0x26DC | 0x813D13FC | size: 0x8
# ipl::scene::GCWindow::@52@onMemEvent(long, unsigned char)
.fn "@52@onMemEvent__Q33ipl5scene8GCWindowFlUc", global
/* 813D13FC | 38 63 FF CC */	subi r3, r3, 0x34
/* 813D1400 | 4B FF F7 94 */	b onMemEvent__Q33ipl5scene8GCWindowFlUc
.endfn "@52@onMemEvent__Q33ipl5scene8GCWindowFlUc"

# .text:0x26E4 | 0x813D1404 | size: 0x8
.fn "@52@__dt__Q33ipl5scene8GCWindowFv", global
/* 813D1404 | 38 63 FF CC */	subi r3, r3, 0x34
/* 813D1408 | 4B FF FF 98 */	b __dt__Q33ipl5scene8GCWindowFv
.endfn "@52@__dt__Q33ipl5scene8GCWindowFv"

# 0x816104A8..0x81610558 | size: 0xB0
.rodata
.balign 8

# .rodata:0x0 | 0x816104A8 | size: 0x80
# ipl::scene::scAnmName
.obj scAnmName__Q23ipl5scene, local
	.4byte lbl_81652820
	.4byte lbl_81696CB0
	.4byte lbl_8165283D
	.4byte lbl_81696CB0
	.4byte lbl_8165285B
	.4byte lbl_81696CB7
	.4byte lbl_8165287E
	.4byte lbl_81696CB7
	.4byte lbl_816528A2
	.4byte lbl_816528C2
	.4byte lbl_816528CE
	.4byte lbl_81696CBE
	.4byte lbl_816528F1
	.4byte lbl_81696CBE
	.4byte lbl_81652915
	.4byte lbl_81652935
	.4byte lbl_81652941
	.4byte lbl_81696CC5
	.4byte lbl_81652963
	.4byte lbl_81696CC5
	.4byte lbl_81652986
	.4byte lbl_816529A5
	.4byte lbl_816529B0
	.4byte lbl_816529D0
	.4byte lbl_816529D9
	.4byte lbl_81696CB0
	.4byte lbl_816529FA
	.4byte lbl_81696CB0
	.4byte lbl_81652A1D
	.4byte lbl_81696CB0
	.4byte lbl_81652A3D
	.4byte lbl_81696CCB
.endobj scAnmName__Q23ipl5scene

# .rodata:0x80 | 0x81610528 | size: 0x18
# ipl::scene::scTextboxToMessageID
.obj scTextboxToMessageID__Q23ipl5scene, local
	.4byte lbl_81652A58
	.4byte 0x000000A7
	.4byte lbl_81652A62
	.4byte 0x000000B2
	.4byte lbl_81652A6C
	.4byte 0x000000BD
.endobj scTextboxToMessageID__Q23ipl5scene

# .rodata:0x98 | 0x81610540 | size: 0x14
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

# .rodata:0xAC | 0x81610554 | size: 0x4
.obj gap_07_81610554_rodata, global
.hidden gap_07_81610554_rodata
	.4byte 0x00000000
.endobj gap_07_81610554_rodata

# 0x81652820..0x81652F18 | size: 0x6F8
.data
.balign 8

# .data:0x0 | 0x81652820 | size: 0x1D
.obj lbl_81652820, global
	.string "it_CubeDetail_a_SeenIn.brlan"
.endobj lbl_81652820

# .data:0x1D | 0x8165283D | size: 0x1E
.obj lbl_8165283D, global
	.string "it_CubeDetail_a_SeenOut.brlan"
.endobj lbl_8165283D

# .data:0x3B | 0x8165285B | size: 0x23
.obj lbl_8165285B, global
	.string "it_CubeDetail_a_MoveFoucusIn.brlan"
.endobj lbl_8165285B

# .data:0x5E | 0x8165287E | size: 0x24
.obj lbl_8165287E, global
	.string "it_CubeDetail_a_MoveFoucusOut.brlan"
.endobj lbl_8165287E

# .data:0x82 | 0x816528A2 | size: 0x20
.obj lbl_816528A2, global
	.string "it_CubeDetail_a_MoveFlash.brlan"
.endobj lbl_816528A2

# .data:0xA2 | 0x816528C2 | size: 0xC
.obj lbl_816528C2, global
	.string "G_MoveFlash"
.endobj lbl_816528C2

# .data:0xAE | 0x816528CE | size: 0x23
.obj lbl_816528CE, global
	.string "it_CubeDetail_a_CopyFoucusIn.brlan"
.endobj lbl_816528CE

# .data:0xD1 | 0x816528F1 | size: 0x24
.obj lbl_816528F1, global
	.string "it_CubeDetail_a_CopyFoucusOut.brlan"
.endobj lbl_816528F1

# .data:0xF5 | 0x81652915 | size: 0x20
.obj lbl_81652915, global
	.string "it_CubeDetail_a_CopyFlash.brlan"
.endobj lbl_81652915

# .data:0x115 | 0x81652935 | size: 0xC
.obj lbl_81652935, global
	.string "G_CopyFlash"
.endobj lbl_81652935

# .data:0x121 | 0x81652941 | size: 0x22
.obj lbl_81652941, global
	.string "it_CubeDetail_a_DelFoucusIn.brlan"
.endobj lbl_81652941

# .data:0x143 | 0x81652963 | size: 0x23
.obj lbl_81652963, global
	.string "it_CubeDetail_a_DelFoucusOut.brlan"
.endobj lbl_81652963

# .data:0x166 | 0x81652986 | size: 0x1F
.obj lbl_81652986, global
	.string "it_CubeDetail_a_DelFlash.brlan"
.endobj lbl_81652986

# .data:0x185 | 0x816529A5 | size: 0xB
.obj lbl_816529A5, global
	.string "G_DelFlash"
.endobj lbl_816529A5

# .data:0x190 | 0x816529B0 | size: 0x20
.obj lbl_816529B0, global
	.string "it_CubeDetail_a_SelectOut.brlan"
.endobj lbl_816529B0

# .data:0x1B0 | 0x816529D0 | size: 0x9
.obj lbl_816529D0, global
	.string "G_Select"
.endobj lbl_816529D0

# .data:0x1B9 | 0x816529D9 | size: 0x21
.obj lbl_816529D9, global
	.string "it_CubeDetail_a_SeenOutYes.brlan"
.endobj lbl_816529D9

# .data:0x1DA | 0x816529FA | size: 0x23
.obj lbl_816529FA, global
	.string "it_CubeDetail_a_SeenOutYesOk.brlan"
.endobj lbl_816529FA

# .data:0x1FD | 0x81652A1D | size: 0x20
.obj lbl_81652A1D, global
	.string "it_CubeDetail_a_SeenOutNo.brlan"
.endobj lbl_81652A1D

# .data:0x21D | 0x81652A3D | size: 0x1B
.obj lbl_81652A3D, global
	.string "it_CubeDetail_a_Wait.brlan"
.endobj lbl_81652A3D

# .data:0x238 | 0x81652A58 | size: 0xA
.obj lbl_81652A58, global
	.string "T_Move_00"
.endobj lbl_81652A58

# .data:0x242 | 0x81652A62 | size: 0xA
.obj lbl_81652A62, global
	.string "T_Copy_00"
.endobj lbl_81652A62

# .data:0x24C | 0x81652A6C | size: 0x9
.obj lbl_81652A6C, global
	.string "T_Del_00"
.endobj lbl_81652A6C

# .data:0x255 | 0x81652A75 | size: 0xA
.obj lbl_81652A75, global
	.string "B_Move_00"
.endobj lbl_81652A75

# .data:0x25F | 0x81652A7F | size: 0xA
.obj lbl_81652A7F, global
	.string "B_Copy_00"
.endobj lbl_81652A7F

# .data:0x269 | 0x81652A89 | size: 0xB
.obj lbl_81652A89, global
	.4byte 0x425F4465
	.4byte 0x6C5F3030
	.byte 0x00, 0x00, 0x00
.endobj lbl_81652A89

# .data:0x274 | 0x81652A94 | size: 0xC
.obj lbl_81652A94, global
	.4byte lbl_81652A75
	.4byte lbl_81652A7F
	.4byte lbl_81652A89
.endobj lbl_81652A94

# .data:0x280 | 0x81652AA0 | size: 0x2A
.obj lbl_81652AA0, global
	.4byte 0x4E5F4261
	.4byte 0x6E6E6572
	.4byte 0x00545F54
	.4byte 0x69746C65
	.4byte 0x5F303000
	.4byte 0x545F5469
	.4byte 0x746C655F
	.4byte 0x30310054
	.4byte 0x5F426C6F
	.4byte 0x636B5F30
	.2byte 0x3000
.endobj lbl_81652AA0

# .data:0x2AA | 0x81652ACA | size: 0xA
.obj lbl_81652ACA, global
	.4byte 0x4E5F5769
	.4byte 0x6E646F77
	.2byte 0x0000
.endobj lbl_81652ACA

# .data:0x2B4 | 0x81652AD4 | size: 0x5C
.obj jumptable_81652AD4, local
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF500
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF50C
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF518
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF524
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF530
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF55C
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF568
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF594
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF5C0
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF5CC
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF5D8
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF5E4
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF5F0
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF5FC
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF608
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF614
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF620
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF62C
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF638
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF644
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF650
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF65C
	.rel calc__Q33ipl5scene8GCWindowFv, .L_813CF668
.endobj jumptable_81652AD4

# .data:0x310 | 0x81652B30 | size: 0xA
.obj lbl_81652B30, global
	.string "Banner_00"
.endobj lbl_81652B30

# .data:0x31A | 0x81652B3A | size: 0xA
.obj lbl_81652B3A, global
	.string "Banner_01"
.endobj lbl_81652B3A

# .data:0x324 | 0x81652B44 | size: 0x16
.obj lbl_81652B44, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_81652B44

# .data:0x33A | 0x81652B5A | size: 0x1E
.obj lbl_81652B5A, global
	.4byte 0x545F4D65
	.4byte 0x73736167
	.4byte 0x655F3030
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F444543
	.4byte 0x49444500
	.2byte 0x0000
.endobj lbl_81652B5A

# .data:0x358 | 0x81652B78 | size: 0x1C
.obj jumptable_81652B78, local
	.rel on_focus_move__Q33ipl5scene8GCWindowFv, .L_813CFEF8
	.rel on_focus_move__Q33ipl5scene8GCWindowFv, .L_813CFF1C
	.rel on_focus_move__Q33ipl5scene8GCWindowFv, .L_813CFEBC
	.rel on_focus_move__Q33ipl5scene8GCWindowFv, .L_813CFF4C
	.rel on_focus_move__Q33ipl5scene8GCWindowFv, .L_813CFF34
	.rel on_focus_move__Q33ipl5scene8GCWindowFv, .L_813CFED4
	.rel on_focus_move__Q33ipl5scene8GCWindowFv, .L_813CFEF8
.endobj jumptable_81652B78

# .data:0x374 | 0x81652B94 | size: 0x1C
.obj jumptable_81652B94, local
	.rel on_focus_copy__Q33ipl5scene8GCWindowFv, .L_813D0088
	.rel on_focus_copy__Q33ipl5scene8GCWindowFv, .L_813D00AC
	.rel on_focus_copy__Q33ipl5scene8GCWindowFv, .L_813D004C
	.rel on_focus_copy__Q33ipl5scene8GCWindowFv, .L_813D00DC
	.rel on_focus_copy__Q33ipl5scene8GCWindowFv, .L_813D00C4
	.rel on_focus_copy__Q33ipl5scene8GCWindowFv, .L_813D0064
	.rel on_focus_copy__Q33ipl5scene8GCWindowFv, .L_813D0088
.endobj jumptable_81652B94

# .data:0x390 | 0x81652BB0 | size: 0x10
.obj gap_08_81652BB0_data, global
.hidden gap_08_81652BB0_data
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x434F5059
	.4byte 0x494E4700
.endobj gap_08_81652BB0_data

# .data:0x3A0 | 0x81652BC0 | size: 0x1C
.obj jumptable_81652BC0, local
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D04C8
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D04E8
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D0494
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D0510
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D04FC
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D04A8
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D04C8
.endobj jumptable_81652BC0

# .data:0x3BC | 0x81652BDC | size: 0x1C
.obj jumptable_81652BDC, local
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D0344
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D0364
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D0310
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D038C
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D0378
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D0324
	.rel on_dialog__Q33ipl5scene8GCWindowFv, .L_813D0344
.endobj jumptable_81652BDC

# .data:0x3D8 | 0x81652BF8 | size: 0x58
.obj jumptable_81652BF8, local
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0D28
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0D28
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0D28
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0D28
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0C7C
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0C28
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0C28
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0D40
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0C54
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0C54
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0CF4
	.rel onMemEvent__Q33ipl5scene8GCWindowFlUc, .L_813D0DEC
.endobj jumptable_81652BF8

# .data:0x430 | 0x81652C50 | size: 0x168
.obj lbl_81652C50, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x434F5059
	.4byte 0x5F46494E
	.4byte 0x49534800
	.4byte 0x69745F44
	.4byte 0x61746144
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x5365656E
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x44617461
	.4byte 0x44657461
	.4byte 0x696C5F61
	.4byte 0x5F536565
	.4byte 0x6E4F7574
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4461
	.4byte 0x74614465
	.4byte 0x7461696C
	.4byte 0x5F615F44
	.4byte 0x656C466F
	.4byte 0x75637573
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x44617461
	.4byte 0x44657461
	.4byte 0x696C5F61
	.4byte 0x5F44656C
	.4byte 0x466F7563
	.4byte 0x75734F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x69745F44
	.4byte 0x61746144
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x44656C46
	.4byte 0x6C617368
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4461
	.4byte 0x74614465
	.4byte 0x7461696C
	.4byte 0x5F615F53
	.4byte 0x656C6563
	.4byte 0x744F7574
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4461
	.4byte 0x74614465
	.4byte 0x7461696C
	.4byte 0x5F615F53
	.4byte 0x65656E4F
	.4byte 0x75745965
	.4byte 0x732E6272
	.4byte 0x6C616E00
	.4byte 0x69745F44
	.4byte 0x61746144
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x5365656E
	.4byte 0x4F757459
	.4byte 0x65734F6B
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4461
	.4byte 0x74614465
	.4byte 0x7461696C
	.4byte 0x5F615F53
	.4byte 0x65656E4F
	.4byte 0x75744E6F
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4461
	.4byte 0x74614465
	.4byte 0x7461696C
	.4byte 0x5F615F57
	.4byte 0x6169742E
	.4byte 0x62726C61
	.4byte 0x6E00545F
	.4byte 0x426C6F63
	.4byte 0x6B5F3031
	.4byte 0x00545F44
	.4byte 0x656C5F30
	.4byte 0x30000000
.endobj lbl_81652C50

# .data:0x598 | 0x81652DB8 | size: 0x34
.obj jumptable_81652DB8, local
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0F00
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0F0C
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0F18
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0F24
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0F5C
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0F68
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0FA0
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0FD8
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0FE4
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0FEC
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0FEC
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0FEC
	.rel calc__Q33ipl5scene18SavedataEditWindowFv, .L_813D0FEC
.endobj jumptable_81652DB8

# .data:0x5CC | 0x81652DEC | size: 0x84
# ipl::scene::GCWindow::__vtable
.obj __vt__Q33ipl5scene8GCWindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene8GCWindowFv
	.4byte onPoint__Q33ipl5scene8GCWindowFPCcPQ33ipl10controller9Interface
	.4byte onLeft__Q33ipl5scene8GCWindowFPCc
	.4byte onMove__Q33ipl5scene10MemoryBaseFPCc
	.4byte onTrig__Q33ipl5scene8GCWindowFPCc
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@52@__dt__Q33ipl5scene8GCWindowFv"
	.4byte "@52@onMemEvent__Q33ipl5scene8GCWindowFlUc"
	.4byte onMemEvent__Q33ipl5scene8GCWindowFlUc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene8GCWindow

# .data:0x650 | 0x81652E70 | size: 0xA8
# ipl::scene::MemCardEventHandler::__vtable
.obj __vt__Q33ipl5scene19MemCardEventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene19MemCardEventHandlerFv
	.4byte onMemEvent__Q33ipl5scene19MemCardEventHandlerFlUc
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
.endobj __vt__Q33ipl5scene19MemCardEventHandler

# 0x81694A88..0x81694AA0 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694A88 | size: 0x4
.obj lbl_81694A88, global
	.float 450
.endobj lbl_81694A88

# .sdata2:0x4 | 0x81694A8C | size: 0x4
.obj lbl_81694A8C, global
	.float 31
.endobj lbl_81694A8C

# .sdata2:0x8 | 0x81694A90 | size: 0x4
.obj lbl_81694A90, global
	.float 0
.endobj lbl_81694A90

# .sdata2:0xC | 0x81694A94 | size: 0x4
.obj lbl_81694A94, global
	.float 12
.endobj lbl_81694A94

# .sdata2:0x10 | 0x81694A98 | size: 0x4
.obj lbl_81694A98, global
	.float 1
.endobj lbl_81694A98

# .sdata2:0x14 | 0x81694A9C | size: 0x4
.obj lbl_81694A9C, global
	.float 20
.endobj lbl_81694A9C

# 0x81696CB0..0x81696CE0 | size: 0x30
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696CB0 | size: 0x7
.obj lbl_81696CB0, global
	.string "G_Mask"
.endobj lbl_81696CB0

# .sdata:0x7 | 0x81696CB7 | size: 0x7
.obj lbl_81696CB7, global
	.string "G_Move"
.endobj lbl_81696CB7

# .sdata:0xE | 0x81696CBE | size: 0x7
.obj lbl_81696CBE, global
	.string "G_Copy"
.endobj lbl_81696CBE

# .sdata:0x15 | 0x81696CC5 | size: 0x6
.obj lbl_81696CC5, global
	.string "G_Del"
.endobj lbl_81696CC5

# .sdata:0x1B | 0x81696CCB | size: 0x7
.obj lbl_81696CCB, global
	.string "G_Wait"
.endobj lbl_81696CCB

# .sdata:0x22 | 0x81696CD2 | size: 0x7
.obj lbl_81696CD2, global
	.string "N_Wait"
.endobj lbl_81696CD2

# .sdata:0x29 | 0x81696CD9 | size: 0x7
.obj gap_11_81696CD9_sdata, global
.hidden gap_11_81696CD9_sdata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_11_81696CD9_sdata
