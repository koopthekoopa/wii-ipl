.include "macros.inc"
.file "iplGCSaveData.cpp"

# 0x813CE548..0x813CED20 | size: 0x7D8
.text
.balign 4

# .text:0x0 | 0x813CE548 | size: 0x278
# ipl::scene::GCSaveData::GCSaveData(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*, ipl::math::VEC3)
.fn __ct__Q33ipl5scene10GCSaveDataFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcQ33ipl4math4VEC3, global
/* 813CE548 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813CE54C | 7C 08 02 A6 */	mflr r0
/* 813CE550 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813CE554 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CE558 | 48 22 AF 61 */	bl _savegpr_25
/* 813CE55C | 3D 20 81 65 */	lis r9, __vt__Q33ipl5scene10MemoryBase@ha
/* 813CE560 | 3B A0 00 00 */	li r29, 0x0
/* 813CE564 | 39 29 26 40 */	addi r9, r9, __vt__Q33ipl5scene10MemoryBase@l
/* 813CE568 | 7C 99 23 78 */	mr r25, r4
/* 813CE56C | 91 23 00 00 */	stw r9, 0x0(r3)
/* 813CE570 | 7C 7E 1B 78 */	mr r30, r3
/* 813CE574 | 7C BA 2B 78 */	mr r26, r5
/* 813CE578 | 7C DB 33 78 */	mr r27, r6
/* 813CE57C | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 813CE580 | 7C FC 3B 78 */	mr r28, r7
/* 813CE584 | 7D 1F 43 78 */	mr r31, r8
/* 813CE588 | 38 80 00 08 */	li r4, 0x8
/* 813CE58C | 93 A3 00 08 */	stw r29, 0x8(r3)
/* 813CE590 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813CE594 | 48 14 3A C9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CE598 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 813CE59C | 38 80 00 0C */	li r4, 0xc
/* 813CE5A0 | 48 14 3A BD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CE5A4 | 38 7E 00 28 */	addi r3, r30, 0x28
/* 813CE5A8 | 38 80 00 1C */	li r4, 0x1c
/* 813CE5AC | 48 14 3A B1 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CE5B0 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene10GCSaveData@ha
/* 813CE5B4 | 93 BE 00 38 */	stw r29, 0x38(r30)
/* 813CE5B8 | 38 63 27 D0 */	addi r3, r3, __vt__Q33ipl5scene10GCSaveData@l
/* 813CE5BC | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813CE5C0 | 38 60 05 80 */	li r3, 0x580
/* 813CE5C4 | 48 22 9A D9 */	bl __nw__FUl
/* 813CE5C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CE5CC | 41 82 00 18 */	beq .L_813CE5E4
/* 813CE5D0 | 7F 24 CB 78 */	mr r4, r25
/* 813CE5D4 | 7F 45 D3 78 */	mr r5, r26
/* 813CE5D8 | 7F 66 DB 78 */	mr r6, r27
/* 813CE5DC | 7F 87 E3 78 */	mr r7, r28
/* 813CE5E0 | 4B F9 BA 45 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813CE5E4:
/* 813CE5E4 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 813CE5E8 | 3C 80 81 61 */	lis r4, lbl_81610480@ha
/* 813CE5EC | 7F C3 F3 78 */	mr r3, r30
/* 813CE5F0 | 38 A0 00 05 */	li r5, 0x5
/* 813CE5F4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CE5F8 | 38 84 04 80 */	addi r4, r4, lbl_81610480@l
/* 813CE5FC | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 813CE600 | 7D 89 03 A6 */	mtctr r12
/* 813CE604 | 4E 80 04 21 */	bctrl
/* 813CE608 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813CE60C | 4B F9 C0 29 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813CE610 | 38 60 00 10 */	li r3, 0x10
/* 813CE614 | 48 22 9A 89 */	bl __nw__FUl
/* 813CE618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CE61C | 41 82 00 1C */	beq .L_813CE638
/* 813CE620 | 38 00 00 00 */	li r0, 0x0
/* 813CE624 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene15MemoryBaseEvent@ha
/* 813CE628 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813CE62C | 38 84 26 B4 */	addi r4, r4, __vt__Q33ipl5scene15MemoryBaseEvent@l
/* 813CE630 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813CE634 | 93 C3 00 0C */	stw r30, 0xc(r3)
.L_813CE638:
/* 813CE638 | 90 7E 00 34 */	stw r3, 0x34(r30)
/* 813CE63C | 38 60 00 34 */	li r3, 0x34
/* 813CE640 | 48 22 9A 5D */	bl __nw__FUl
/* 813CE644 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CE648 | 7C 7D 1B 78 */	mr r29, r3
/* 813CE64C | 41 82 00 8C */	beq .L_813CE6D8
/* 813CE650 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 813CE654 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813CE658 | 80 DE 00 34 */	lwz r6, 0x34(r30)
/* 813CE65C | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813CE660 | 38 00 00 00 */	li r0, 0x0
/* 813CE664 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813CE668 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813CE66C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813CE670 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813CE674 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813CE678 | 41 82 00 1C */	beq .L_813CE694
/* 813CE67C | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813CE680 | 7C C3 33 78 */	mr r3, r6
/* 813CE684 | 7F A4 EB 78 */	mr r4, r29
/* 813CE688 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CE68C | 7D 89 03 A6 */	mtctr r12
/* 813CE690 | 4E 80 04 21 */	bctrl
.L_813CE694:
/* 813CE694 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813CE698 | 38 80 00 08 */	li r4, 0x8
/* 813CE69C | 48 14 39 C1 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CE6A0 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813CE6A4 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813CE6A8 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813CE6AC | 38 80 00 08 */	li r4, 0x8
/* 813CE6B0 | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 813CE6B4 | 93 9D 00 24 */	stw r28, 0x24(r29)
/* 813CE6B8 | 48 14 39 A5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813CE6BC | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813CE6C0 | 38 60 00 00 */	li r3, 0x0
/* 813CE6C4 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813CE6C8 | 38 00 00 01 */	li r0, 0x1
/* 813CE6CC | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 813CE6D0 | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 813CE6D4 | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_813CE6D8:
/* 813CE6D8 | 93 BE 00 0C */	stw r29, 0xc(r30)
/* 813CE6DC | 7F A3 EB 78 */	mr r3, r29
/* 813CE6E0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813CE6E4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813CE6E8 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813CE6EC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813CE6F0 | 7D 89 03 A6 */	mtctr r12
/* 813CE6F4 | 4E 80 04 21 */	bctrl
/* 813CE6F8 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813CE6FC | 38 80 00 00 */	li r4, 0x0
/* 813CE700 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CE704 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CE708 | 7D 89 03 A6 */	mtctr r12
/* 813CE70C | 4E 80 04 21 */	bctrl
/* 813CE710 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813CE714 | 38 A0 00 01 */	li r5, 0x1
/* 813CE718 | 80 8D 8C 68 */	lwz r4, lbl_81696CA8@sda21(r0)
/* 813CE71C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CE720 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CE724 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CE728 | 7D 89 03 A6 */	mtctr r12
/* 813CE72C | 4E 80 04 21 */	bctrl
/* 813CE730 | 7C 64 1B 78 */	mr r4, r3
/* 813CE734 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813CE738 | 38 A0 00 01 */	li r5, 0x1
/* 813CE73C | 4B F9 CA 91 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813CE740 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CE744 | 7F C3 F3 78 */	mr r3, r30
/* 813CE748 | 38 80 00 03 */	li r4, 0x3
/* 813CE74C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CE750 | 7D 89 03 A6 */	mtctr r12
/* 813CE754 | 4E 80 04 21 */	bctrl
/* 813CE758 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CE75C | 7C 7D 1B 78 */	mr r29, r3
/* 813CE760 | 7F C3 F3 78 */	mr r3, r30
/* 813CE764 | 38 80 00 02 */	li r4, 0x2
/* 813CE768 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CE76C | 7D 89 03 A6 */	mtctr r12
/* 813CE770 | 4E 80 04 21 */	bctrl
/* 813CE774 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CE778 | 7C 65 1B 78 */	mr r5, r3
/* 813CE77C | 7F C3 F3 78 */	mr r3, r30
/* 813CE780 | 7F A6 EB 78 */	mr r6, r29
/* 813CE784 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813CE788 | 38 E0 00 00 */	li r7, 0x0
/* 813CE78C | 80 8D 8C 68 */	lwz r4, lbl_81696CA8@sda21(r0)
/* 813CE790 | 7D 89 03 A6 */	mtctr r12
/* 813CE794 | 4E 80 04 21 */	bctrl
/* 813CE798 | 7F C3 F3 78 */	mr r3, r30
/* 813CE79C | 7F E4 FB 78 */	mr r4, r31
/* 813CE7A0 | 48 00 04 45 */	bl setTranslate__Q33ipl5scene10GCSaveDataFRCQ34nw4r4math4VEC3
/* 813CE7A4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CE7A8 | 7F C3 F3 78 */	mr r3, r30
/* 813CE7AC | 48 22 AD 59 */	bl _restgpr_25
/* 813CE7B0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813CE7B4 | 7C 08 03 A6 */	mtlr r0
/* 813CE7B8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813CE7BC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene10GCSaveDataFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcQ33ipl4math4VEC3

# .text:0x278 | 0x813CE7C0 | size: 0x60
# ipl::scene::GCSaveData::calc()
.fn calc__Q33ipl5scene10GCSaveDataFv, global
/* 813CE7C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CE7C4 | 7C 08 02 A6 */	mflr r0
/* 813CE7C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CE7CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CE7D0 | 7C 7F 1B 78 */	mr r31, r3
/* 813CE7D4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CE7D8 | 4B F9 BF 2D */	bl calc__Q33ipl6layout6ObjectFv
/* 813CE7DC | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813CE7E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CE7E4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813CE7E8 | 7D 89 03 A6 */	mtctr r12
/* 813CE7EC | 4E 80 04 21 */	bctrl
/* 813CE7F0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CE7F4 | 7F E3 FB 78 */	mr r3, r31
/* 813CE7F8 | 80 8D 8C 68 */	lwz r4, lbl_81696CA8@sda21(r0)
/* 813CE7FC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CE800 | 7D 89 03 A6 */	mtctr r12
/* 813CE804 | 4E 80 04 21 */	bctrl
/* 813CE808 | 4B FF E5 35 */	bl calc__Q43ipl5scene10MemoryBase9AnmButtonFv
/* 813CE80C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CE810 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CE814 | 7C 08 03 A6 */	mtlr r0
/* 813CE818 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CE81C | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene10GCSaveDataFv

# .text:0x2D8 | 0x813CE820 | size: 0x140
# ipl::scene::GCSaveData::draw()
.fn draw__Q33ipl5scene10GCSaveDataFv, global
/* 813CE820 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CE824 | 7C 08 02 A6 */	mflr r0
/* 813CE828 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CE82C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CE830 | 48 22 AC 95 */	bl _savegpr_28
/* 813CE834 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813CE838 | 7C 7C 1B 78 */	mr r28, r3
/* 813CE83C | 3F E0 81 65 */	lis r31, lbl_816527A1@ha
/* 813CE840 | 38 A0 00 01 */	li r5, 0x1
/* 813CE844 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 813CE848 | 38 9F 27 A1 */	addi r4, r31, lbl_816527A1@l
/* 813CE84C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CE850 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CE854 | 7D 89 03 A6 */	mtctr r12
/* 813CE858 | 4E 80 04 21 */	bctrl
/* 813CE85C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CE860 | 7C 7E 1B 78 */	mr r30, r3
/* 813CE864 | 38 9F 27 A1 */	addi r4, r31, lbl_816527A1@l
/* 813CE868 | 38 A0 00 01 */	li r5, 0x1
/* 813CE86C | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813CE870 | 7D 89 03 A6 */	mtctr r12
/* 813CE874 | 4E 80 04 21 */	bctrl
/* 813CE878 | 88 1E 00 CF */	lbz r0, 0xcf(r30)
/* 813CE87C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813CE880 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813CE884 | 7C 7D 1B 78 */	mr r29, r3
/* 813CE888 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813CE88C | 38 80 00 0E */	li r4, 0xe
/* 813CE890 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813CE894 | 98 1E 00 CF */	stb r0, 0xcf(r30)
/* 813CE898 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CE89C | 48 03 C8 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CE8A0 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CE8A4 | 88 9C 00 3C */	lbz r4, 0x3c(r28)
/* 813CE8A8 | A8 BC 00 3E */	lha r5, 0x3e(r28)
/* 813CE8AC | 4B FF F0 45 */	bl isIconValidate__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CE8B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CE8B4 | 41 82 00 58 */	beq .L_813CE90C
/* 813CE8B8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CE8BC | 38 80 00 0E */	li r4, 0xe
/* 813CE8C0 | 48 03 C8 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CE8C4 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CE8C8 | 88 9C 00 3C */	lbz r4, 0x3c(r28)
/* 813CE8CC | A8 BC 00 3E */	lha r5, 0x3e(r28)
/* 813CE8D0 | 4B FF F5 89 */	bl create_icon__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CE8D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CE8D8 | 41 82 00 34 */	beq .L_813CE90C
/* 813CE8DC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CE8E0 | 38 80 00 0E */	li r4, 0xe
/* 813CE8E4 | 48 03 C8 55 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CE8E8 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CE8EC | 88 9C 00 3C */	lbz r4, 0x3c(r28)
/* 813CE8F0 | A8 BC 00 3E */	lha r5, 0x3e(r28)
/* 813CE8F4 | 4B FF F5 65 */	bl create_icon__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CE8F8 | 7C 65 1B 78 */	mr r5, r3
/* 813CE8FC | 7F A3 EB 78 */	mr r3, r29
/* 813CE900 | 38 80 00 00 */	li r4, 0x0
/* 813CE904 | 48 15 95 19 */	bl fn_81527E1C
/* 813CE908 | 48 00 00 10 */	b .L_813CE918
.L_813CE90C:
/* 813CE90C | 88 1E 00 CF */	lbz r0, 0xcf(r30)
/* 813CE910 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813CE914 | 98 1E 00 CF */	stb r0, 0xcf(r30)
.L_813CE918:
/* 813CE918 | A8 1C 00 3E */	lha r0, 0x3e(r28)
/* 813CE91C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CE920 | 41 80 00 18 */	blt .L_813CE938
/* 813CE924 | 2C 00 00 7F */	cmpwi r0, 0x7f
/* 813CE928 | 40 80 00 10 */	bge .L_813CE938
/* 813CE92C | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813CE930 | 4B F9 BE 6D */	bl draw__Q33ipl6layout6ObjectFv
/* 813CE934 | 48 00 00 14 */	b .L_813CE948
.L_813CE938:
/* 813CE938 | 80 7C 00 38 */	lwz r3, 0x38(r28)
/* 813CE93C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CE940 | 41 82 00 08 */	beq .L_813CE948
/* 813CE944 | 48 00 2D 25 */	bl terminate__Q33ipl5scene11TextBalloonFv
.L_813CE948:
/* 813CE948 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CE94C | 48 22 AB C5 */	bl _restgpr_28
/* 813CE950 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CE954 | 7C 08 03 A6 */	mtlr r0
/* 813CE958 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CE95C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene10GCSaveDataFv

# .text:0x418 | 0x813CE960 | size: 0x20
# ipl::scene::GCSaveData::update()
.fn update__Q33ipl5scene10GCSaveDataFv, global
/* 813CE960 | A8 03 00 3E */	lha r0, 0x3e(r3)
/* 813CE964 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CE968 | 4D 80 00 20 */	bltlr
/* 813CE96C | 2C 00 00 7F */	cmpwi r0, 0x7f
/* 813CE970 | 4C 80 00 20 */	bgelr
/* 813CE974 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813CE978 | 4B F9 C6 14 */	b update__Q33ipl3gui11PaneManagerFv
/* 813CE97C | 4E 80 00 20 */	blr
.endfn update__Q33ipl5scene10GCSaveDataFv

# .text:0x438 | 0x813CE980 | size: 0x15C
# ipl::scene::GCSaveData::onPoint(const char*, ipl::controller::Interface*)
.fn onPoint__Q33ipl5scene10GCSaveDataFPCcPQ33ipl10controller9Interface, global
/* 813CE980 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CE984 | 7C 08 02 A6 */	mflr r0
/* 813CE988 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CE98C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CE990 | 48 22 AB 35 */	bl _savegpr_28
/* 813CE994 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CE998 | 7C 7C 1B 78 */	mr r28, r3
/* 813CE99C | 7C BD 2B 78 */	mr r29, r5
/* 813CE9A0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CE9A4 | 7D 89 03 A6 */	mtctr r12
/* 813CE9A8 | 4E 80 04 21 */	bctrl
/* 813CE9AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CE9B0 | 7C 7E 1B 78 */	mr r30, r3
/* 813CE9B4 | 41 82 01 10 */	beq .L_813CEAC4
/* 813CE9B8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813CE9BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CE9C0 | 40 82 00 F8 */	bne .L_813CEAB8
/* 813CE9C4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813CE9C8 | 38 80 00 0E */	li r4, 0xe
/* 813CE9CC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813CE9D0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CE9D4 | 48 03 C7 65 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CE9D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CE9DC | 41 82 00 9C */	beq .L_813CEA78
/* 813CE9E0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CE9E4 | 38 80 00 0E */	li r4, 0xe
/* 813CE9E8 | 48 03 C7 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CE9EC | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CE9F0 | 88 9C 00 3C */	lbz r4, 0x3c(r28)
/* 813CE9F4 | A8 BC 00 3E */	lha r5, 0x3e(r28)
/* 813CE9F8 | 4B FF EE F9 */	bl isIconValidate__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CE9FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CEA00 | 41 82 00 58 */	beq .L_813CEA58
/* 813CEA04 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CEA08 | 38 80 00 0E */	li r4, 0xe
/* 813CEA0C | 48 03 C7 2D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CEA10 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CEA14 | 38 C0 00 00 */	li r6, 0x0
/* 813CEA18 | 88 9C 00 3C */	lbz r4, 0x3c(r28)
/* 813CEA1C | A8 BC 00 3E */	lha r5, 0x3e(r28)
/* 813CEA20 | 4B FF F6 F9 */	bl getComment__Q33ipl5scene17MemoryCardManagerFUcsi
/* 813CEA24 | 7C 64 1B 78 */	mr r4, r3
/* 813CEA28 | 80 7C 00 38 */	lwz r3, 0x38(r28)
/* 813CEA2C | 38 A0 00 00 */	li r5, 0x0
/* 813CEA30 | 48 00 2B D1 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813CEA34 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813CEA38 | 7F 83 E3 78 */	mr r3, r28
/* 813CEA3C | 80 8D 8C 68 */	lwz r4, lbl_81696CA8@sda21(r0)
/* 813CEA40 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CEA44 | 7D 89 03 A6 */	mtctr r12
/* 813CEA48 | 4E 80 04 21 */	bctrl
/* 813CEA4C | 80 9C 00 38 */	lwz r4, 0x38(r28)
/* 813CEA50 | 4B FF E4 DD */	bl setBalloon__Q43ipl5scene10MemoryBase9AnmButtonFPQ33ipl5scene11TextBalloon
/* 813CEA54 | 48 00 00 24 */	b .L_813CEA78
.L_813CEA58:
/* 813CEA58 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813CEA5C | 7F 83 E3 78 */	mr r3, r28
/* 813CEA60 | 80 8D 8C 68 */	lwz r4, lbl_81696CA8@sda21(r0)
/* 813CEA64 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CEA68 | 7D 89 03 A6 */	mtctr r12
/* 813CEA6C | 4E 80 04 21 */	bctrl
/* 813CEA70 | 38 80 00 00 */	li r4, 0x0
/* 813CEA74 | 4B FF E4 B9 */	bl setBalloon__Q43ipl5scene10MemoryBase9AnmButtonFPQ33ipl5scene11TextBalloon
.L_813CEA78:
/* 813CEA78 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813CEA7C | 3C 80 81 65 */	lis r4, lbl_816527AF@ha
/* 813CEA80 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813CEA84 | 38 84 27 AF */	addi r4, r4, lbl_816527AF@l
/* 813CEA88 | 4B F9 C9 E5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813CEA8C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813CEA90 | 41 82 00 1C */	beq .L_813CEAAC
/* 813CEA94 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813CEA98 | 7F A3 EB 78 */	mr r3, r29
/* 813CEA9C | 38 80 00 00 */	li r4, 0x0
/* 813CEAA0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CEAA4 | 7D 89 03 A6 */	mtctr r12
/* 813CEAA8 | 4E 80 04 21 */	bctrl
.L_813CEAAC:
/* 813CEAAC | 7F C3 F3 78 */	mr r3, r30
/* 813CEAB0 | 38 80 00 01 */	li r4, 0x1
/* 813CEAB4 | 4B FF E2 E9 */	bl onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi
.L_813CEAB8:
/* 813CEAB8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813CEABC | 38 03 00 01 */	addi r0, r3, 0x1
/* 813CEAC0 | 90 1E 00 04 */	stw r0, 0x4(r30)
.L_813CEAC4:
/* 813CEAC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CEAC8 | 48 22 AA 49 */	bl _restgpr_28
/* 813CEACC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CEAD0 | 7C 08 03 A6 */	mtlr r0
/* 813CEAD4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CEAD8 | 4E 80 00 20 */	blr
.endfn onPoint__Q33ipl5scene10GCSaveDataFPCcPQ33ipl10controller9Interface

# .text:0x594 | 0x813CEADC | size: 0x60
# ipl::scene::GCSaveData::onLeft(const char*)
.fn onLeft__Q33ipl5scene10GCSaveDataFPCc, global
/* 813CEADC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CEAE0 | 7C 08 02 A6 */	mflr r0
/* 813CEAE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CEAE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CEAEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CEAF0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CEAF4 | 7D 89 03 A6 */	mtctr r12
/* 813CEAF8 | 4E 80 04 21 */	bctrl
/* 813CEAFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CEB00 | 7C 7F 1B 78 */	mr r31, r3
/* 813CEB04 | 41 82 00 24 */	beq .L_813CEB28
/* 813CEB08 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813CEB0C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813CEB10 | 40 82 00 0C */	bne .L_813CEB1C
/* 813CEB14 | 38 80 00 02 */	li r4, 0x2
/* 813CEB18 | 4B FF E2 85 */	bl onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi
.L_813CEB1C:
/* 813CEB1C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813CEB20 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813CEB24 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_813CEB28:
/* 813CEB28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CEB2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CEB30 | 7C 08 03 A6 */	mtlr r0
/* 813CEB34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CEB38 | 4E 80 00 20 */	blr
.endfn onLeft__Q33ipl5scene10GCSaveDataFPCc

# .text:0x5F4 | 0x813CEB3C | size: 0xA8
# ipl::scene::GCSaveData::onTrig(const char*)
.fn onTrig__Q33ipl5scene10GCSaveDataFPCc, global
/* 813CEB3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CEB40 | 7C 08 02 A6 */	mflr r0
/* 813CEB44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CEB48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CEB4C | 48 22 A9 7D */	bl _savegpr_29
/* 813CEB50 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813CEB54 | 7C 9E 23 78 */	mr r30, r4
/* 813CEB58 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813CEB5C | 7C 7D 1B 78 */	mr r29, r3
/* 813CEB60 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CEB64 | 38 80 00 0E */	li r4, 0xe
/* 813CEB68 | 48 03 C5 D1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CEB6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CEB70 | 41 82 00 5C */	beq .L_813CEBCC
/* 813CEB74 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CEB78 | 38 80 00 0E */	li r4, 0xe
/* 813CEB7C | 48 03 C5 BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CEB80 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813CEB84 | 88 9D 00 3C */	lbz r4, 0x3c(r29)
/* 813CEB88 | A8 BD 00 3E */	lha r5, 0x3e(r29)
/* 813CEB8C | 4B FF ED 65 */	bl isIconValidate__Q33ipl5scene17MemoryCardManagerFUcs
/* 813CEB90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CEB94 | 41 82 00 38 */	beq .L_813CEBCC
/* 813CEB98 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813CEB9C | 7F A3 EB 78 */	mr r3, r29
/* 813CEBA0 | 7F C4 F3 78 */	mr r4, r30
/* 813CEBA4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CEBA8 | 7D 89 03 A6 */	mtctr r12
/* 813CEBAC | 4E 80 04 21 */	bctrl
/* 813CEBB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CEBB4 | 41 82 00 18 */	beq .L_813CEBCC
/* 813CEBB8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CEBBC | 38 80 00 0E */	li r4, 0xe
/* 813CEBC0 | 48 03 C5 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CEBC4 | 7F A4 EB 78 */	mr r4, r29
/* 813CEBC8 | 4B FF D4 55 */	bl onFocus__Q33ipl5scene10MemoryCardFPv
.L_813CEBCC:
/* 813CEBCC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CEBD0 | 48 22 A9 45 */	bl _restgpr_29
/* 813CEBD4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CEBD8 | 7C 08 03 A6 */	mtlr r0
/* 813CEBDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CEBE0 | 4E 80 00 20 */	blr
.endfn onTrig__Q33ipl5scene10GCSaveDataFPCc

# .text:0x69C | 0x813CEBE4 | size: 0x64
# ipl::scene::GCSaveData::setTranslate(const nw4r::math::VEC3&)
.fn setTranslate__Q33ipl5scene10GCSaveDataFRCQ34nw4r4math4VEC3, global
/* 813CEBE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CEBE8 | 7C 08 02 A6 */	mflr r0
/* 813CEBEC | 3C C0 81 65 */	lis r6, lbl_816527C5@ha
/* 813CEBF0 | 38 A0 00 01 */	li r5, 0x1
/* 813CEBF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CEBF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CEBFC | 7C 9F 23 78 */	mr r31, r4
/* 813CEC00 | 38 86 27 C5 */	addi r4, r6, lbl_816527C5@l
/* 813CEC04 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CEC08 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CEC0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CEC10 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CEC14 | 7D 89 03 A6 */	mtctr r12
/* 813CEC18 | 4E 80 04 21 */	bctrl
/* 813CEC1C | C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 813CEC20 | C0 3F 00 04 */	lfs f1, 0x4(r31)
/* 813CEC24 | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 813CEC28 | C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 813CEC2C | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 813CEC30 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 813CEC34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CEC38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CEC3C | 7C 08 03 A6 */	mtlr r0
/* 813CEC40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CEC44 | 4E 80 00 20 */	blr
.endfn setTranslate__Q33ipl5scene10GCSaveDataFRCQ34nw4r4math4VEC3

# .text:0x700 | 0x813CEC48 | size: 0x44
# ipl::scene::GCSaveData::getTranslate()
.fn getTranslate__Q33ipl5scene10GCSaveDataFv, global
/* 813CEC48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CEC4C | 7C 08 02 A6 */	mflr r0
/* 813CEC50 | 3C 80 81 65 */	lis r4, lbl_816527C5@ha
/* 813CEC54 | 38 A0 00 01 */	li r5, 0x1
/* 813CEC58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CEC5C | 38 84 27 C5 */	addi r4, r4, lbl_816527C5@l
/* 813CEC60 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CEC64 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CEC68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CEC6C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CEC70 | 7D 89 03 A6 */	mtctr r12
/* 813CEC74 | 4E 80 04 21 */	bctrl
/* 813CEC78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CEC7C | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813CEC80 | 7C 08 03 A6 */	mtlr r0
/* 813CEC84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CEC88 | 4E 80 00 20 */	blr
.endfn getTranslate__Q33ipl5scene10GCSaveDataFv

# .text:0x744 | 0x813CEC8C | size: 0x4C
# ipl::scene::GCSaveData::init()
.fn init__Q33ipl5scene10GCSaveDataFv, global
/* 813CEC8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CEC90 | 7C 08 02 A6 */	mflr r0
/* 813CEC94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CEC98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CEC9C | 7C 7F 1B 78 */	mr r31, r3
/* 813CECA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CECA4 | 80 8D 8C 68 */	lwz r4, lbl_81696CA8@sda21(r0)
/* 813CECA8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813CECAC | 7D 89 03 A6 */	mtctr r12
/* 813CECB0 | 4E 80 04 21 */	bctrl
/* 813CECB4 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 813CECB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CECBC | 41 82 00 08 */	beq .L_813CECC4
/* 813CECC0 | 48 00 29 A9 */	bl terminate__Q33ipl5scene11TextBalloonFv
.L_813CECC4:
/* 813CECC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CECC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CECCC | 7C 08 03 A6 */	mtlr r0
/* 813CECD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CECD4 | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene10GCSaveDataFv

# .text:0x790 | 0x813CECD8 | size: 0x8
# ipl::scene::GCSaveData::setBalloon(ipl::scene::TextBalloon*)
.fn setBalloon__Q33ipl5scene10GCSaveDataFPQ33ipl5scene11TextBalloon, global
/* 813CECD8 | 90 83 00 38 */	stw r4, 0x38(r3)
/* 813CECDC | 4E 80 00 20 */	blr
.endfn setBalloon__Q33ipl5scene10GCSaveDataFPQ33ipl5scene11TextBalloon

# .text:0x798 | 0x813CECE0 | size: 0x40
# ipl::scene::GCSaveData::~GCSaveData()
.fn __dt__Q33ipl5scene10GCSaveDataFv, global
/* 813CECE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CECE4 | 7C 08 02 A6 */	mflr r0
/* 813CECE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CECEC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CECF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CECF4 | 7C 7F 1B 78 */	mr r31, r3
/* 813CECF8 | 41 82 00 10 */	beq .L_813CED08
/* 813CECFC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CED00 | 40 81 00 08 */	ble .L_813CED08
/* 813CED04 | 48 22 93 E1 */	bl __dl__FPv
.L_813CED08:
/* 813CED08 | 7F E3 FB 78 */	mr r3, r31
/* 813CED0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CED10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CED14 | 7C 08 03 A6 */	mtlr r0
/* 813CED18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CED1C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene10GCSaveDataFv

# 0x81610480..0x816104A8 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x81610480 | size: 0x28
.obj lbl_81610480, global
	.4byte lbl_816526D0
	.4byte lbl_81696CA0
	.4byte lbl_816526F2
	.4byte lbl_81696CA0
	.4byte lbl_81652715
	.4byte lbl_81696CA0
	.4byte lbl_8165273D
	.4byte lbl_81696CA0
	.4byte lbl_81652766
	.4byte lbl_8165278B
.endobj lbl_81610480

# 0x816526D0..0x81652820 | size: 0x150
.data
.balign 8

# .data:0x0 | 0x816526D0 | size: 0x22
.obj lbl_816526D0, global
	.string "it_ObjCubeEdit_b_SaveDataIn.brlan"
.endobj lbl_816526D0

# .data:0x22 | 0x816526F2 | size: 0x23
.obj lbl_816526F2, global
	.string "it_ObjCubeEdit_b_SaveDataOut.brlan"
.endobj lbl_816526F2

# .data:0x45 | 0x81652715 | size: 0x28
.obj lbl_81652715, global
	.string "it_ObjCubeEdit_b_SaveDataFoucusIn.brlan"
.endobj lbl_81652715

# .data:0x6D | 0x8165273D | size: 0x29
.obj lbl_8165273D, global
	.string "it_ObjCubeEdit_b_SaveDataFoucusOut.brlan"
.endobj lbl_8165273D

# .data:0x96 | 0x81652766 | size: 0x25
.obj lbl_81652766, global
	.string "it_ObjCubeEdit_b_SaveDataFlash.brlan"
.endobj lbl_81652766

# .data:0xBB | 0x8165278B | size: 0xC
.obj lbl_8165278B, global
	.string "G_DataFlash"
.endobj lbl_8165278B

# .data:0xC7 | 0x81652797 | size: 0xA
.obj lbl_81652797, global
	.string "B_Data_00"
.endobj lbl_81652797

# .data:0xD1 | 0x816527A1 | size: 0xE
.obj lbl_816527A1, global
	.string "DataBanner_00"
.endobj lbl_816527A1

# .data:0xDF | 0x816527AF | size: 0x16
.obj lbl_816527AF, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_816527AF

# .data:0xF5 | 0x816527C5 | size: 0xB
.obj lbl_816527C5, global
	.4byte 0x4E5F4461
	.4byte 0x74615F30
	.byte 0x30, 0x00, 0x00
.endobj lbl_816527C5

# .data:0x100 | 0x816527D0 | size: 0x50
# ipl::scene::GCSaveData::__vtable
.obj __vt__Q33ipl5scene10GCSaveData, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene10GCSaveDataFv
	.4byte onPoint__Q33ipl5scene10GCSaveDataFPCcPQ33ipl10controller9Interface
	.4byte onLeft__Q33ipl5scene10GCSaveDataFPCc
	.4byte onMove__Q33ipl5scene10MemoryBaseFPCc
	.4byte onTrig__Q33ipl5scene10GCSaveDataFPCc
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
.endobj __vt__Q33ipl5scene10GCSaveData

# 0x81696CA0..0x81696CB0 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696CA0 | size: 0x8
.obj lbl_81696CA0, global
	.4byte 0x475F4461
	.4byte 0x74610000
.endobj lbl_81696CA0

# .sdata:0x8 | 0x81696CA8 | size: 0x8
.obj lbl_81696CA8, global
	.4byte lbl_81652797
	.4byte 0x00000000
.endobj lbl_81696CA8
