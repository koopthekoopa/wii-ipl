.include "macros.inc"
.file "iplChanAppBox.cpp"

# 0x813A4710..0x813A54DC | size: 0xDCC
.text
.balign 4

# .text:0x0 | 0x813A4710 | size: 0x2F0
# ipl::scene::ChanAppBox::ChanAppBox(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl5scene10ChanAppBoxFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 813A4710 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A4714 | 7C 08 02 A6 */	mflr r0
/* 813A4718 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A471C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A4720 | 48 25 4D 99 */	bl _savegpr_25
/* 813A4724 | 3D 00 81 65 */	lis r8, __vt__Q33ipl5scene13AnmController@ha
/* 813A4728 | 3B A0 00 00 */	li r29, 0x0
/* 813A472C | 39 08 D0 F8 */	addi r8, r8, __vt__Q33ipl5scene13AnmController@l
/* 813A4730 | 3F E0 81 65 */	lis r31, lbl_8164D108@ha
/* 813A4734 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 813A4738 | 7C 7E 1B 78 */	mr r30, r3
/* 813A473C | 7C 99 23 78 */	mr r25, r4
/* 813A4740 | 7C BA 2B 78 */	mr r26, r5
/* 813A4744 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 813A4748 | 7C DB 33 78 */	mr r27, r6
/* 813A474C | 7C FC 3B 78 */	mr r28, r7
/* 813A4750 | 3B FF D1 08 */	addi r31, r31, lbl_8164D108@l
/* 813A4754 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 813A4758 | 38 80 00 04 */	li r4, 0x4
/* 813A475C | 38 63 00 0C */	addi r3, r3, 0xc
/* 813A4760 | 48 16 D8 FD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A4764 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813A4768 | 38 80 00 00 */	li r4, 0x0
/* 813A476C | 48 16 D8 F1 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A4770 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene10ChanAppBox@ha
/* 813A4774 | 93 BE 00 30 */	stw r29, 0x30(r30)
/* 813A4778 | 38 63 D2 20 */	addi r3, r3, __vt__Q33ipl5scene10ChanAppBox@l
/* 813A477C | 7F 24 CB 78 */	mr r4, r25
/* 813A4780 | 38 03 00 0C */	addi r0, r3, 0xc
/* 813A4784 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813A4788 | 38 60 05 80 */	li r3, 0x580
/* 813A478C | 38 A0 00 04 */	li r5, 0x4
/* 813A4790 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 813A4794 | 93 BE 00 3C */	stw r29, 0x3c(r30)
/* 813A4798 | 93 BE 00 40 */	stw r29, 0x40(r30)
/* 813A479C | 93 BE 00 44 */	stw r29, 0x44(r30)
/* 813A47A0 | 9B BE 00 48 */	stb r29, 0x48(r30)
/* 813A47A4 | 48 25 39 0D */	bl __nw__FUlPQ23EGG4Heapi
/* 813A47A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A47AC | 41 82 00 18 */	beq .L_813A47C4
/* 813A47B0 | 7F 24 CB 78 */	mr r4, r25
/* 813A47B4 | 7F 45 D3 78 */	mr r5, r26
/* 813A47B8 | 7F 66 DB 78 */	mr r6, r27
/* 813A47BC | 7F 87 E3 78 */	mr r7, r28
/* 813A47C0 | 4B FC 58 65 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813A47C4:
/* 813A47C4 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 813A47C8 | 7F C3 F3 78 */	mr r3, r30
/* 813A47CC | 38 9F 00 00 */	addi r4, r31, 0x0
/* 813A47D0 | 38 AD 88 08 */	li r5, lbl_81696848@sda21
/* 813A47D4 | 48 00 28 C1 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A47D8 | 7F C3 F3 78 */	mr r3, r30
/* 813A47DC | 38 9F 00 25 */	addi r4, r31, 0x25
/* 813A47E0 | 38 AD 88 08 */	li r5, lbl_81696848@sda21
/* 813A47E4 | 48 00 28 B1 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A47E8 | 7F C3 F3 78 */	mr r3, r30
/* 813A47EC | 38 9F 00 4B */	addi r4, r31, 0x4b
/* 813A47F0 | 38 AD 88 08 */	li r5, lbl_81696848@sda21
/* 813A47F4 | 48 00 28 A1 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A47F8 | 7F C3 F3 78 */	mr r3, r30
/* 813A47FC | 38 9F 00 76 */	addi r4, r31, 0x76
/* 813A4800 | 38 AD 88 08 */	li r5, lbl_81696848@sda21
/* 813A4804 | 48 00 28 91 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A4808 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A480C | 4B FC 5E 29 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813A4810 | 7F C3 F3 78 */	mr r3, r30
/* 813A4814 | 38 9F 00 A2 */	addi r4, r31, 0xa2
/* 813A4818 | 38 A0 00 00 */	li r5, 0x0
/* 813A481C | 48 00 2C B9 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A4820 | 7F C3 F3 78 */	mr r3, r30
/* 813A4824 | 38 9F 00 AD */	addi r4, r31, 0xad
/* 813A4828 | 38 A0 00 00 */	li r5, 0x0
/* 813A482C | 48 00 2C A9 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A4830 | 38 60 00 34 */	li r3, 0x34
/* 813A4834 | 48 25 38 69 */	bl __nw__FUl
/* 813A4838 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A483C | 7C 7D 1B 78 */	mr r29, r3
/* 813A4840 | 41 82 00 98 */	beq .L_813A48D8
/* 813A4844 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813A4848 | 7F C6 F3 78 */	mr r6, r30
/* 813A484C | 41 82 00 08 */	beq .L_813A4854
/* 813A4850 | 38 DE 00 28 */	addi r6, r30, 0x28
.L_813A4854:
/* 813A4854 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 813A4858 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813A485C | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813A4860 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813A4864 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813A4868 | 38 00 00 00 */	li r0, 0x0
/* 813A486C | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813A4870 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813A4874 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813A4878 | 41 82 00 1C */	beq .L_813A4894
/* 813A487C | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813A4880 | 7C C3 33 78 */	mr r3, r6
/* 813A4884 | 7F A4 EB 78 */	mr r4, r29
/* 813A4888 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813A488C | 7D 89 03 A6 */	mtctr r12
/* 813A4890 | 4E 80 04 21 */	bctrl
.L_813A4894:
/* 813A4894 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813A4898 | 38 80 00 08 */	li r4, 0x8
/* 813A489C | 48 16 D7 C1 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A48A0 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813A48A4 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813A48A8 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813A48AC | 38 80 00 08 */	li r4, 0x8
/* 813A48B0 | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 813A48B4 | 93 9D 00 24 */	stw r28, 0x24(r29)
/* 813A48B8 | 48 16 D7 A5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A48BC | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813A48C0 | 38 60 00 00 */	li r3, 0x0
/* 813A48C4 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813A48C8 | 38 00 00 01 */	li r0, 0x1
/* 813A48CC | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 813A48D0 | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 813A48D4 | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_813A48D8:
/* 813A48D8 | 93 BE 00 08 */	stw r29, 0x8(r30)
/* 813A48DC | 7F A3 EB 78 */	mr r3, r29
/* 813A48E0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813A48E4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813A48E8 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813A48EC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813A48F0 | 7D 89 03 A6 */	mtctr r12
/* 813A48F4 | 4E 80 04 21 */	bctrl
/* 813A48F8 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A48FC | 38 80 00 00 */	li r4, 0x0
/* 813A4900 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A4904 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813A4908 | 7D 89 03 A6 */	mtctr r12
/* 813A490C | 4E 80 04 21 */	bctrl
/* 813A4910 | 48 1C 56 A5 */	bl SCGetAspectRatio
/* 813A4914 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A4918 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A491C | 40 82 00 68 */	bne .L_813A4984
/* 813A4920 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A4924 | 38 9F 00 B7 */	addi r4, r31, 0xb7
/* 813A4928 | 38 A0 00 01 */	li r5, 0x1
/* 813A492C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A4930 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A4934 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A4938 | 7D 89 03 A6 */	mtctr r12
/* 813A493C | 4E 80 04 21 */	bctrl
/* 813A4940 | 7C 64 1B 78 */	mr r4, r3
/* 813A4944 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A4948 | 38 A0 00 01 */	li r5, 0x1
/* 813A494C | 4B FC 68 81 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813A4950 | 7F C3 F3 78 */	mr r3, r30
/* 813A4954 | 38 80 00 03 */	li r4, 0x3
/* 813A4958 | 48 00 28 89 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A495C | 7C 7D 1B 78 */	mr r29, r3
/* 813A4960 | 7F C3 F3 78 */	mr r3, r30
/* 813A4964 | 38 80 00 02 */	li r4, 0x2
/* 813A4968 | 48 00 28 79 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A496C | 7C 65 1B 78 */	mr r5, r3
/* 813A4970 | 7F C3 F3 78 */	mr r3, r30
/* 813A4974 | 7F A6 EB 78 */	mr r6, r29
/* 813A4978 | 38 9F 00 B7 */	addi r4, r31, 0xb7
/* 813A497C | 48 00 28 71 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813A4980 | 48 00 00 64 */	b .L_813A49E4
.L_813A4984:
/* 813A4984 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A4988 | 38 9F 00 C1 */	addi r4, r31, 0xc1
/* 813A498C | 38 A0 00 01 */	li r5, 0x1
/* 813A4990 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A4994 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A4998 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A499C | 7D 89 03 A6 */	mtctr r12
/* 813A49A0 | 4E 80 04 21 */	bctrl
/* 813A49A4 | 7C 64 1B 78 */	mr r4, r3
/* 813A49A8 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A49AC | 38 A0 00 01 */	li r5, 0x1
/* 813A49B0 | 4B FC 68 1D */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813A49B4 | 7F C3 F3 78 */	mr r3, r30
/* 813A49B8 | 38 80 00 03 */	li r4, 0x3
/* 813A49BC | 48 00 28 25 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A49C0 | 7C 7D 1B 78 */	mr r29, r3
/* 813A49C4 | 7F C3 F3 78 */	mr r3, r30
/* 813A49C8 | 38 80 00 02 */	li r4, 0x2
/* 813A49CC | 48 00 28 15 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A49D0 | 7C 65 1B 78 */	mr r5, r3
/* 813A49D4 | 7F C3 F3 78 */	mr r3, r30
/* 813A49D8 | 7F A6 EB 78 */	mr r6, r29
/* 813A49DC | 38 9F 00 C1 */	addi r4, r31, 0xc1
/* 813A49E0 | 48 00 28 0D */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
.L_813A49E4:
/* 813A49E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A49E8 | 7F C3 F3 78 */	mr r3, r30
/* 813A49EC | 48 25 4B 19 */	bl _restgpr_25
/* 813A49F0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A49F4 | 7C 08 03 A6 */	mtlr r0
/* 813A49F8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A49FC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene10ChanAppBoxFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x2F0 | 0x813A4A00 | size: 0xB4
# ipl::scene::ChanAppBox::~ChanAppBox()
.fn __dt__Q33ipl5scene10ChanAppBoxFv, global
/* 813A4A00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A4A04 | 7C 08 02 A6 */	mflr r0
/* 813A4A08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4A0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A4A10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A4A14 | 7C 9F 23 78 */	mr r31, r4
/* 813A4A18 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A4A1C | 7C 7E 1B 78 */	mr r30, r3
/* 813A4A20 | 41 82 00 78 */	beq .L_813A4A98
/* 813A4A24 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813A4A28 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene10ChanAppBox@ha
/* 813A4A2C | 38 84 D2 20 */	addi r4, r4, __vt__Q33ipl5scene10ChanAppBox@l
/* 813A4A30 | 38 04 00 0C */	addi r0, r4, 0xc
/* 813A4A34 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813A4A38 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813A4A3C | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813A4A40 | 41 82 00 1C */	beq .L_813A4A5C
/* 813A4A44 | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 813A4A48 | 7C A3 2B 78 */	mr r3, r5
/* 813A4A4C | 38 80 00 01 */	li r4, 0x1
/* 813A4A50 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813A4A54 | 7D 89 03 A6 */	mtctr r12
/* 813A4A58 | 4E 80 04 21 */	bctrl
.L_813A4A5C:
/* 813A4A5C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A4A60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4A64 | 41 82 00 18 */	beq .L_813A4A7C
/* 813A4A68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A4A6C | 38 80 00 01 */	li r4, 0x1
/* 813A4A70 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813A4A74 | 7D 89 03 A6 */	mtctr r12
/* 813A4A78 | 4E 80 04 21 */	bctrl
.L_813A4A7C:
/* 813A4A7C | 7F C3 F3 78 */	mr r3, r30
/* 813A4A80 | 38 80 00 00 */	li r4, 0x0
/* 813A4A84 | 4B FF F3 55 */	bl __dt__Q33ipl5scene13AnmControllerFv
/* 813A4A88 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A4A8C | 40 81 00 0C */	ble .L_813A4A98
/* 813A4A90 | 7F C3 F3 78 */	mr r3, r30
/* 813A4A94 | 48 25 36 51 */	bl __dl__FPv
.L_813A4A98:
/* 813A4A98 | 7F C3 F3 78 */	mr r3, r30
/* 813A4A9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A4AA0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A4AA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A4AA8 | 7C 08 03 A6 */	mtlr r0
/* 813A4AAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A4AB0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene10ChanAppBoxFv

# .text:0x3A4 | 0x813A4AB4 | size: 0x24C
# ipl::scene::ChanAppBox::calc()
.fn calc__Q33ipl5scene10ChanAppBoxFv, global
/* 813A4AB4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813A4AB8 | 7C 08 02 A6 */	mflr r0
/* 813A4ABC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813A4AC0 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 813A4AC4 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 813A4AC8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813A4ACC | 48 25 49 FD */	bl _savegpr_29
/* 813A4AD0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A4AD4 | 3F C0 81 65 */	lis r30, lbl_8164D108@ha
/* 813A4AD8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A4ADC | 3B DE D1 08 */	addi r30, r30, lbl_8164D108@l
/* 813A4AE0 | 4B FC 5C 25 */	bl calc__Q33ipl6layout6ObjectFv
/* 813A4AE4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A4AE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A4AEC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813A4AF0 | 7D 89 03 A6 */	mtctr r12
/* 813A4AF4 | 4E 80 04 21 */	bctrl
/* 813A4AF8 | 3B A0 00 00 */	li r29, 0x0
/* 813A4AFC | 48 00 00 0C */	b .L_813A4B08
.L_813A4B00:
/* 813A4B00 | 7F A3 EB 78 */	mr r3, r29
/* 813A4B04 | 48 00 24 01 */	bl calc__Q33ipl5scene7AnmPaneFv
.L_813A4B08:
/* 813A4B08 | 7F A4 EB 78 */	mr r4, r29
/* 813A4B0C | 38 7F 00 18 */	addi r3, r31, 0x18
/* 813A4B10 | 48 16 D7 CD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A4B14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4B18 | 7C 7D 1B 78 */	mr r29, r3
/* 813A4B1C | 40 82 FF E4 */	bne .L_813A4B00
/* 813A4B20 | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 813A4B24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A4B28 | 41 82 01 70 */	beq .L_813A4C98
/* 813A4B2C | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813A4B30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4B34 | 41 82 01 64 */	beq .L_813A4C98
/* 813A4B38 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813A4B3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A4B40 | 41 82 01 58 */	beq .L_813A4C98
/* 813A4B44 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813A4B48 | 4B F9 18 E1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813A4B4C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813A4B50 | 4B F9 0D FD */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813A4B54 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813A4B58 | 4B F9 18 D1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813A4B5C | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813A4B60 | 4B F9 0E 11 */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813A4B64 | C0 61 00 34 */	lfs f3, 0x34(r1)
/* 813A4B68 | 7F E3 FB 78 */	mr r3, r31
/* 813A4B6C | C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 813A4B70 | 38 8D 88 18 */	li r4, lbl_81696858@sda21
/* 813A4B74 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 813A4B78 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813A4B7C | EC 43 10 28 */	fsubs f2, f3, f2
/* 813A4B80 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813A4B84 | EF E0 10 24 */	fdivs f31, f0, f2
/* 813A4B88 | 48 00 2A 3D */	bl get_translate__Q33ipl5scene13AnmControllerFPCc
/* 813A4B8C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813A4B90 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813A4B94 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813A4B98 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 813A4B9C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813A4BA0 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A4BA4 | 48 1C 54 11 */	bl SCGetAspectRatio
/* 813A4BA8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A4BAC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A4BB0 | 40 82 00 10 */	bne .L_813A4BC0
/* 813A4BB4 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 813A4BB8 | EC 00 07 F2 */	fmuls f0, f0, f31
/* 813A4BBC | D0 01 00 10 */	stfs f0, 0x10(r1)
.L_813A4BC0:
/* 813A4BC0 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813A4BC4 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 813A4BC8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A4BCC | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 813A4BD0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A4BD4 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 813A4BD8 | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 813A4BDC | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 813A4BE0 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 813A4BE4 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813A4BE8 | 48 00 57 51 */	bl calc__Q33ipl5scene9ThumbnailFv
/* 813A4BEC | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813A4BF0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A4BF4 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 813A4BF8 | 80 64 00 44 */	lwz r3, 0x44(r4)
/* 813A4BFC | 80 04 00 48 */	lwz r0, 0x48(r4)
/* 813A4C00 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813A4C04 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A4C08 | 48 1C 53 AD */	bl SCGetAspectRatio
/* 813A4C0C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A4C10 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A4C14 | 40 82 00 38 */	bne .L_813A4C4C
/* 813A4C18 | 7F E3 FB 78 */	mr r3, r31
/* 813A4C1C | 38 9E 00 CB */	addi r4, r30, 0xcb
/* 813A4C20 | 48 00 29 E1 */	bl get_scale__Q33ipl5scene13AnmControllerFPCc
/* 813A4C24 | C0 23 00 00 */	lfs f1, 0x0(r3)
/* 813A4C28 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A4C2C | 48 00 00 D5 */	bl __amu__Q34nw4r4math4VEC2Ff
/* 813A4C30 | 7F E3 FB 78 */	mr r3, r31
/* 813A4C34 | 38 9E 00 D7 */	addi r4, r30, 0xd7
/* 813A4C38 | 48 00 29 C9 */	bl get_scale__Q33ipl5scene13AnmControllerFPCc
/* 813A4C3C | C0 23 00 00 */	lfs f1, 0x0(r3)
/* 813A4C40 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A4C44 | 48 00 00 BD */	bl __amu__Q34nw4r4math4VEC2Ff
/* 813A4C48 | 48 00 00 34 */	b .L_813A4C7C
.L_813A4C4C:
/* 813A4C4C | 7F E3 FB 78 */	mr r3, r31
/* 813A4C50 | 38 9E 00 E1 */	addi r4, r30, 0xe1
/* 813A4C54 | 48 00 29 AD */	bl get_scale__Q33ipl5scene13AnmControllerFPCc
/* 813A4C58 | C0 23 00 00 */	lfs f1, 0x0(r3)
/* 813A4C5C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A4C60 | 48 00 00 A1 */	bl __amu__Q34nw4r4math4VEC2Ff
/* 813A4C64 | 7F E3 FB 78 */	mr r3, r31
/* 813A4C68 | 38 9E 00 EC */	addi r4, r30, 0xec
/* 813A4C6C | 48 00 29 95 */	bl get_scale__Q33ipl5scene13AnmControllerFPCc
/* 813A4C70 | C0 23 00 00 */	lfs f1, 0x0(r3)
/* 813A4C74 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A4C78 | 48 00 00 89 */	bl __amu__Q34nw4r4math4VEC2Ff
.L_813A4C7C:
/* 813A4C7C | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813A4C80 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 813A4C84 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A4C88 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A4C8C | D0 03 00 44 */	stfs f0, 0x44(r3)
/* 813A4C90 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 813A4C94 | D0 03 00 48 */	stfs f0, 0x48(r3)
.L_813A4C98:
/* 813A4C98 | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 813A4C9C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A4CA0 | 41 82 00 18 */	beq .L_813A4CB8
/* 813A4CA4 | 40 80 00 08 */	bge .L_813A4CAC
/* 813A4CA8 | 48 00 00 38 */	b .L_813A4CE0
.L_813A4CAC:
/* 813A4CAC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813A4CB0 | 40 80 00 30 */	bge .L_813A4CE0
/* 813A4CB4 | 48 00 00 24 */	b .L_813A4CD8
.L_813A4CB8:
/* 813A4CB8 | 7F E3 FB 78 */	mr r3, r31
/* 813A4CBC | 38 80 00 00 */	li r4, 0x0
/* 813A4CC0 | 48 00 24 E5 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A4CC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4CC8 | 40 82 00 18 */	bne .L_813A4CE0
/* 813A4CCC | 38 00 00 01 */	li r0, 0x1
/* 813A4CD0 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813A4CD4 | 48 00 00 0C */	b .L_813A4CE0
.L_813A4CD8:
/* 813A4CD8 | 7F E3 FB 78 */	mr r3, r31
/* 813A4CDC | 48 00 07 91 */	bl on_fadeout__Q33ipl5scene10ChanAppBoxFv
.L_813A4CE0:
/* 813A4CE0 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 813A4CE4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813A4CE8 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 813A4CEC | 48 25 48 29 */	bl _restgpr_29
/* 813A4CF0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813A4CF4 | 7C 08 03 A6 */	mtlr r0
/* 813A4CF8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813A4CFC | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene10ChanAppBoxFv

# .text:0x5F0 | 0x813A4D00 | size: 0x1C
# nw4r::math::VEC2::operator*=(float)
.fn __amu__Q34nw4r4math4VEC2Ff, weak
/* 813A4D00 | C0 43 00 00 */	lfs f2, 0x0(r3)
/* 813A4D04 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813A4D08 | EC 42 00 72 */	fmuls f2, f2, f1
/* 813A4D0C | EC 00 00 72 */	fmuls f0, f0, f1
/* 813A4D10 | D0 43 00 00 */	stfs f2, 0x0(r3)
/* 813A4D14 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 813A4D18 | 4E 80 00 20 */	blr
.endfn __amu__Q34nw4r4math4VEC2Ff

# .text:0x60C | 0x813A4D1C | size: 0x2D4
# ipl::scene::ChanAppBox::draw()
.fn draw__Q33ipl5scene10ChanAppBoxFv, global
/* 813A4D1C | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813A4D20 | 7C 08 02 A6 */	mflr r0
/* 813A4D24 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 813A4D28 | DB E1 00 70 */	stfd f31, 0x70(r1)
/* 813A4D2C | F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 813A4D30 | DB C1 00 60 */	stfd f30, 0x60(r1)
/* 813A4D34 | F3 C1 00 68 */	psq_st f30, 0x68(r1), 0, qr0
/* 813A4D38 | DB A1 00 50 */	stfd f29, 0x50(r1)
/* 813A4D3C | F3 A1 00 58 */	psq_st f29, 0x58(r1), 0, qr0
/* 813A4D40 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813A4D44 | 48 25 47 7D */	bl _savegpr_27
/* 813A4D48 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813A4D4C | 3C 80 43 30 */	lis r4, 0x4330
/* 813A4D50 | 3F E0 81 65 */	lis r31, lbl_8164D108@ha
/* 813A4D54 | 90 81 00 28 */	stw r4, 0x28(r1)
/* 813A4D58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A4D5C | 7C 7E 1B 78 */	mr r30, r3
/* 813A4D60 | 90 81 00 30 */	stw r4, 0x30(r1)
/* 813A4D64 | 3B FF D1 08 */	addi r31, r31, lbl_8164D108@l
/* 813A4D68 | 41 82 02 58 */	beq .L_813A4FC0
/* 813A4D6C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A4D70 | 4B FC 5A 2D */	bl draw__Q33ipl6layout6ObjectFv
/* 813A4D74 | 7F C3 F3 78 */	mr r3, r30
/* 813A4D78 | 38 9F 00 F6 */	addi r4, r31, 0xf6
/* 813A4D7C | 38 A0 00 00 */	li r5, 0x0
/* 813A4D80 | 48 00 27 55 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A4D84 | 7F C3 F3 78 */	mr r3, r30
/* 813A4D88 | 38 9F 01 07 */	addi r4, r31, 0x107
/* 813A4D8C | 38 A0 00 00 */	li r5, 0x0
/* 813A4D90 | 48 00 27 45 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A4D94 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A4D98 | 38 80 00 0C */	li r4, 0xc
/* 813A4D9C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A4DA0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A4DA4 | 48 06 63 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A4DA8 | 80 63 00 54 */	lwz r3, 0x54(r3)
/* 813A4DAC | 38 03 FF FB */	subi r0, r3, 0x5
/* 813A4DB0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A4DB4 | 40 81 02 0C */	ble .L_813A4FC0
/* 813A4DB8 | 80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 813A4DBC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A4DC0 | 41 82 02 00 */	beq .L_813A4FC0
/* 813A4DC4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813A4DC8 | 41 82 01 F8 */	beq .L_813A4FC0
/* 813A4DCC | 7F C3 F3 78 */	mr r3, r30
/* 813A4DD0 | 38 9F 00 AD */	addi r4, r31, 0xad
/* 813A4DD4 | 48 00 27 55 */	bl get_visible__Q33ipl5scene13AnmControllerFPCc
/* 813A4DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4DDC | 40 82 00 18 */	bne .L_813A4DF4
/* 813A4DE0 | 7F C3 F3 78 */	mr r3, r30
/* 813A4DE4 | 38 9F 00 A2 */	addi r4, r31, 0xa2
/* 813A4DE8 | 48 00 27 41 */	bl get_visible__Q33ipl5scene13AnmControllerFPCc
/* 813A4DEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4DF0 | 41 82 01 D0 */	beq .L_813A4FC0
.L_813A4DF4:
/* 813A4DF4 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813A4DF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4DFC | 41 82 01 C4 */	beq .L_813A4FC0
/* 813A4E00 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813A4E04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A4E08 | 41 82 01 B8 */	beq .L_813A4FC0
/* 813A4E0C | 48 1C 51 A9 */	bl SCGetAspectRatio
/* 813A4E10 | 3F 60 81 61 */	lis r27, lbl_8160FC70@ha
/* 813A4E14 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813A4E18 | 3B 7B FC 70 */	addi r27, r27, lbl_8160FC70@l
/* 813A4E1C | 7F DB 04 2E */	lfsx f30, r27, r0
/* 813A4E20 | 48 1C 51 95 */	bl SCGetAspectRatio
/* 813A4E24 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813A4E28 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813A4E2C | 7C 9B 02 14 */	add r4, r27, r0
/* 813A4E30 | C3 E4 00 04 */	lfs f31, 0x4(r4)
/* 813A4E34 | 4B F9 15 F5 */	bl __ct__Q34nw4r2ut4RectFv
/* 813A4E38 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813A4E3C | 4B F9 0A DD */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813A4E40 | 4B F9 0B 55 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813A4E44 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 813A4E48 | C0 02 85 04 */	lfs f0, lbl_81694904@sda21(r0)
/* 813A4E4C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A4E50 | 80 9E 00 40 */	lwz r4, 0x40(r30)
/* 813A4E54 | EC 20 07 F2 */	fmuls f1, f0, f31
/* 813A4E58 | C8 61 00 30 */	lfd f3, 0x30(r1)
/* 813A4E5C | EC 40 07 B2 */	fmuls f2, f0, f30
/* 813A4E60 | C9 22 85 08 */	lfd f9, lbl_81694908@sda21(r0)
/* 813A4E64 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A4E68 | C0 A1 00 1C */	lfs f5, 0x1c(r1)
/* 813A4E6C | EC 63 48 28 */	fsubs f3, f3, f9
/* 813A4E70 | C0 81 00 14 */	lfs f4, 0x14(r1)
/* 813A4E74 | C8 01 00 30 */	lfd f0, 0x30(r1)
/* 813A4E78 | EC 85 20 28 */	fsubs f4, f5, f4
/* 813A4E7C | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813A4E80 | EC 00 48 28 */	fsubs f0, f0, f9
/* 813A4E84 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813A4E88 | C9 01 00 28 */	lfd f8, 0x28(r1)
/* 813A4E8C | 80 A4 00 14 */	lwz r5, 0x14(r4)
/* 813A4E90 | EC 00 20 24 */	fdivs f0, f0, f4
/* 813A4E94 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 813A4E98 | 80 85 00 2C */	lwz r4, 0x2c(r5)
/* 813A4E9C | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813A4EA0 | 80 65 00 30 */	lwz r3, 0x30(r5)
/* 813A4EA4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A4EA8 | EC A3 20 24 */	fdivs f5, f3, f4
/* 813A4EAC | C0 81 00 08 */	lfs f4, 0x8(r1)
/* 813A4EB0 | 80 05 00 34 */	lwz r0, 0x34(r5)
/* 813A4EB4 | C8 61 00 28 */	lfd f3, 0x28(r1)
/* 813A4EB8 | C0 E2 85 00 */	lfs f7, lbl_81694900@sda21(r0)
/* 813A4EBC | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813A4EC0 | EC C4 F0 28 */	fsubs f6, f4, f30
/* 813A4EC4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A4EC8 | EC 83 48 28 */	fsubs f4, f3, f9
/* 813A4ECC | C0 61 00 0C */	lfs f3, 0xc(r1)
/* 813A4ED0 | ED 08 48 28 */	fsubs f8, f8, f9
/* 813A4ED4 | EC A6 01 72 */	fmuls f5, f6, f5
/* 813A4ED8 | EC 84 01 F2 */	fmuls f4, f4, f7
/* 813A4EDC | EC E8 01 F2 */	fmuls f7, f8, f7
/* 813A4EE0 | EF A2 00 32 */	fmuls f29, f2, f0
/* 813A4EE4 | EC 64 18 28 */	fsubs f3, f4, f3
/* 813A4EE8 | EF C7 28 2A */	fadds f30, f7, f5
/* 813A4EEC | EF E3 F8 28 */	fsubs f31, f3, f31
/* 813A4EF0 | 48 25 44 A9 */	bl __cvt_fp2unsigned
/* 813A4EF4 | FC 20 E8 90 */	fmr f1, f29
/* 813A4EF8 | 7C 7B 1B 78 */	mr r27, r3
/* 813A4EFC | 48 25 44 9D */	bl __cvt_fp2unsigned
/* 813A4F00 | FC 20 F8 90 */	fmr f1, f31
/* 813A4F04 | 7C 7C 1B 78 */	mr r28, r3
/* 813A4F08 | 48 25 44 91 */	bl __cvt_fp2unsigned
/* 813A4F0C | FC 20 F0 90 */	fmr f1, f30
/* 813A4F10 | 7C 7D 1B 78 */	mr r29, r3
/* 813A4F14 | 48 25 44 85 */	bl __cvt_fp2unsigned
/* 813A4F18 | 7F A4 EB 78 */	mr r4, r29
/* 813A4F1C | 7F 85 E3 78 */	mr r5, r28
/* 813A4F20 | 7F 66 DB 78 */	mr r6, r27
/* 813A4F24 | 48 1A 30 85 */	bl GXSetScissor
/* 813A4F28 | 80 9E 00 40 */	lwz r4, 0x40(r30)
/* 813A4F2C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A4F30 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 813A4F34 | 38 83 02 98 */	addi r4, r3, 0x298
/* 813A4F38 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813A4F3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A4F40 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813A4F44 | 7D 89 03 A6 */	mtctr r12
/* 813A4F48 | 4E 80 04 21 */	bctrl
/* 813A4F4C | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813A4F50 | 48 00 53 FD */	bl draw__Q33ipl5scene9ThumbnailFv
/* 813A4F54 | 48 1C 50 61 */	bl SCGetAspectRatio
/* 813A4F58 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A4F5C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A4F60 | 40 82 00 24 */	bne .L_813A4F84
/* 813A4F64 | 7F C3 F3 78 */	mr r3, r30
/* 813A4F68 | 38 9F 01 07 */	addi r4, r31, 0x107
/* 813A4F6C | 38 A0 00 01 */	li r5, 0x1
/* 813A4F70 | 48 00 25 65 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A4F74 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A4F78 | 38 9F 01 07 */	addi r4, r31, 0x107
/* 813A4F7C | 4B FC 58 8D */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813A4F80 | 48 00 00 20 */	b .L_813A4FA0
.L_813A4F84:
/* 813A4F84 | 7F C3 F3 78 */	mr r3, r30
/* 813A4F88 | 38 9F 00 F6 */	addi r4, r31, 0xf6
/* 813A4F8C | 38 A0 00 01 */	li r5, 0x1
/* 813A4F90 | 48 00 25 45 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A4F94 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A4F98 | 38 9F 00 F6 */	addi r4, r31, 0xf6
/* 813A4F9C | 4B FC 58 6D */	bl draw__Q33ipl6layout6ObjectFPCc
.L_813A4FA0:
/* 813A4FA0 | 4B F9 09 F5 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813A4FA4 | A3 C3 00 06 */	lhz r30, 0x6(r3)
/* 813A4FA8 | 4B F9 09 ED */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813A4FAC | A0 A3 00 04 */	lhz r5, 0x4(r3)
/* 813A4FB0 | 7F C6 F3 78 */	mr r6, r30
/* 813A4FB4 | 38 60 00 00 */	li r3, 0x0
/* 813A4FB8 | 38 80 00 00 */	li r4, 0x0
/* 813A4FBC | 48 1A 2F ED */	bl GXSetScissor
.L_813A4FC0:
/* 813A4FC0 | E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 813A4FC4 | CB E1 00 70 */	lfd f31, 0x70(r1)
/* 813A4FC8 | E3 C1 00 68 */	psq_l f30, 0x68(r1), 0, qr0
/* 813A4FCC | CB C1 00 60 */	lfd f30, 0x60(r1)
/* 813A4FD0 | E3 A1 00 58 */	psq_l f29, 0x58(r1), 0, qr0
/* 813A4FD4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813A4FD8 | CB A1 00 50 */	lfd f29, 0x50(r1)
/* 813A4FDC | 48 25 45 31 */	bl _restgpr_27
/* 813A4FE0 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 813A4FE4 | 7C 08 03 A6 */	mtlr r0
/* 813A4FE8 | 38 21 00 80 */	addi r1, r1, 0x80
/* 813A4FEC | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene10ChanAppBoxFv

# .text:0x8E0 | 0x813A4FF0 | size: 0x8
# ipl::scene::ChanAppBox::update()
.fn update__Q33ipl5scene10ChanAppBoxFv, global
/* 813A4FF0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A4FF4 | 4B FC 5F 98 */	b update__Q33ipl3gui11PaneManagerFv
.endfn update__Q33ipl5scene10ChanAppBoxFv

# .text:0x8E8 | 0x813A4FF8 | size: 0xA8
# ipl::scene::ChanAppBox::anmFadein()
.fn anmFadein__Q33ipl5scene10ChanAppBoxFv, global
/* 813A4FF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A4FFC | 7C 08 02 A6 */	mflr r0
/* 813A5000 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A5004 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A5008 | 7C 7F 1B 78 */	mr r31, r3
/* 813A500C | 48 1C 4F A9 */	bl SCGetAspectRatio
/* 813A5010 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A5014 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A5018 | 40 82 00 30 */	bne .L_813A5048
/* 813A501C | 3C 80 81 65 */	lis r4, lbl_8164D1AA@ha
/* 813A5020 | 7F E3 FB 78 */	mr r3, r31
/* 813A5024 | 38 84 D1 AA */	addi r4, r4, lbl_8164D1AA@l
/* 813A5028 | 38 A0 00 01 */	li r5, 0x1
/* 813A502C | 48 00 24 A9 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5030 | 3C 80 81 65 */	lis r4, lbl_8164D1B5@ha
/* 813A5034 | 7F E3 FB 78 */	mr r3, r31
/* 813A5038 | 38 84 D1 B5 */	addi r4, r4, lbl_8164D1B5@l
/* 813A503C | 38 A0 00 00 */	li r5, 0x0
/* 813A5040 | 48 00 24 95 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5044 | 48 00 00 2C */	b .L_813A5070
.L_813A5048:
/* 813A5048 | 3C 80 81 65 */	lis r4, lbl_8164D1AA@ha
/* 813A504C | 7F E3 FB 78 */	mr r3, r31
/* 813A5050 | 38 84 D1 AA */	addi r4, r4, lbl_8164D1AA@l
/* 813A5054 | 38 A0 00 00 */	li r5, 0x0
/* 813A5058 | 48 00 24 7D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A505C | 3C 80 81 65 */	lis r4, lbl_8164D1B5@ha
/* 813A5060 | 7F E3 FB 78 */	mr r3, r31
/* 813A5064 | 38 84 D1 B5 */	addi r4, r4, lbl_8164D1B5@l
/* 813A5068 | 38 A0 00 01 */	li r5, 0x1
/* 813A506C | 48 00 24 69 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
.L_813A5070:
/* 813A5070 | 7F E3 FB 78 */	mr r3, r31
/* 813A5074 | 38 80 00 00 */	li r4, 0x0
/* 813A5078 | 38 A0 00 00 */	li r5, 0x0
/* 813A507C | 38 C0 00 01 */	li r6, 0x1
/* 813A5080 | 48 00 20 81 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A5084 | 38 00 00 02 */	li r0, 0x2
/* 813A5088 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813A508C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A5090 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A5094 | 7C 08 03 A6 */	mtlr r0
/* 813A5098 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A509C | 4E 80 00 20 */	blr
.endfn anmFadein__Q33ipl5scene10ChanAppBoxFv

# .text:0x990 | 0x813A50A0 | size: 0x58
# ipl::scene::ChanAppBox::anmFadeout()
.fn anmFadeout__Q33ipl5scene10ChanAppBoxFv, global
/* 813A50A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A50A4 | 7C 08 02 A6 */	mflr r0
/* 813A50A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A50AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A50B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A50B4 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 813A50B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A50BC | 41 82 00 0C */	beq .L_813A50C8
/* 813A50C0 | 7C 03 03 78 */	mr r3, r0
/* 813A50C4 | 48 02 C5 A5 */	bl terminate__Q33ipl5scene11TextBalloonFv
.L_813A50C8:
/* 813A50C8 | 7F E3 FB 78 */	mr r3, r31
/* 813A50CC | 38 80 00 01 */	li r4, 0x1
/* 813A50D0 | 38 A0 00 00 */	li r5, 0x0
/* 813A50D4 | 38 C0 00 01 */	li r6, 0x1
/* 813A50D8 | 48 00 20 29 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A50DC | 38 00 00 03 */	li r0, 0x3
/* 813A50E0 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813A50E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A50E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A50EC | 7C 08 03 A6 */	mtlr r0
/* 813A50F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A50F4 | 4E 80 00 20 */	blr
.endfn anmFadeout__Q33ipl5scene10ChanAppBoxFv

# .text:0x9E8 | 0x813A50F8 | size: 0x2EC
# ipl::scene::ChanAppBox::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene10ChanAppBoxFUlUlPv, global
/* 813A50F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A50FC | 7C 08 02 A6 */	mflr r0
/* 813A5100 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A5104 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A5108 | 48 25 43 BD */	bl _savegpr_28
/* 813A510C | 7C 7F 1B 78 */	mr r31, r3
/* 813A5110 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813A5114 | 7C BC 2B 78 */	mr r28, r5
/* 813A5118 | 7C DD 33 78 */	mr r29, r6
/* 813A511C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A5120 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813A5124 | 7D 89 03 A6 */	mtctr r12
/* 813A5128 | 4E 80 04 21 */	bctrl
/* 813A512C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A5130 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813A5134 | 7D 89 03 A6 */	mtctr r12
/* 813A5138 | 4E 80 04 21 */	bctrl
/* 813A513C | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 813A5140 | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813A5144 | 41 82 01 C0 */	beq .L_813A5304
/* 813A5148 | 40 80 00 14 */	bge .L_813A515C
/* 813A514C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813A5150 | 41 82 02 1C */	beq .L_813A536C
/* 813A5154 | 40 80 00 14 */	bge .L_813A5168
/* 813A5158 | 48 00 02 74 */	b .L_813A53CC
.L_813A515C:
/* 813A515C | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813A5160 | 40 80 02 6C */	bge .L_813A53CC
/* 813A5164 | 48 00 00 E4 */	b .L_813A5248
.L_813A5168:
/* 813A5168 | 7F E3 FB 78 */	mr r3, r31
/* 813A516C | 7F C4 F3 78 */	mr r4, r30
/* 813A5170 | 48 00 21 01 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A5174 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5178 | 7C 7D 1B 78 */	mr r29, r3
/* 813A517C | 41 82 02 50 */	beq .L_813A53CC
/* 813A5180 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 813A5184 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813A5188 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813A518C | 38 80 00 0C */	li r4, 0xc
/* 813A5190 | 38 05 00 01 */	addi r0, r5, 0x1
/* 813A5194 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813A5198 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813A519C | 48 06 5F 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A51A0 | 7F A4 EB 78 */	mr r4, r29
/* 813A51A4 | 4B FF C7 2D */	bl onPoint__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane
/* 813A51A8 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A51AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A51B0 | 41 82 02 1C */	beq .L_813A53CC
/* 813A51B4 | 80 9F 00 40 */	lwz r4, 0x40(r31)
/* 813A51B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813A51BC | 41 82 02 10 */	beq .L_813A53CC
/* 813A51C0 | 88 1F 00 48 */	lbz r0, 0x48(r31)
/* 813A51C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A51C8 | 40 82 02 04 */	bne .L_813A53CC
/* 813A51CC | 38 00 00 01 */	li r0, 0x1
/* 813A51D0 | 98 1F 00 48 */	stb r0, 0x48(r31)
/* 813A51D4 | 88 04 06 20 */	lbz r0, 0x620(r4)
/* 813A51D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A51DC | 41 82 00 14 */	beq .L_813A51F0
/* 813A51E0 | 38 8D 88 10 */	li r4, lbl_81696850@sda21
/* 813A51E4 | 38 A0 00 00 */	li r5, 0x0
/* 813A51E8 | 48 02 C4 19 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813A51EC | 48 00 00 50 */	b .L_813A523C
.L_813A51F0:
/* 813A51F0 | 88 04 06 21 */	lbz r0, 0x621(r4)
/* 813A51F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A51F8 | 41 82 00 28 */	beq .L_813A5220
/* 813A51FC | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813A5200 | 38 80 01 2F */	li r4, 0x12f
/* 813A5204 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A5208 | 4B F9 95 B5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813A520C | 7C 64 1B 78 */	mr r4, r3
/* 813A5210 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A5214 | 38 A0 00 00 */	li r5, 0x0
/* 813A5218 | 48 02 C3 E9 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813A521C | 48 00 00 20 */	b .L_813A523C
.L_813A5220:
/* 813A5220 | 7C 83 23 78 */	mr r3, r4
/* 813A5224 | 38 80 00 00 */	li r4, 0x0
/* 813A5228 | 48 00 51 C9 */	bl getTitle__Q33ipl5scene9ThumbnailFi
/* 813A522C | 7C 64 1B 78 */	mr r4, r3
/* 813A5230 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A5234 | 38 A0 00 00 */	li r5, 0x0
/* 813A5238 | 48 02 C3 C9 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
.L_813A523C:
/* 813A523C | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A5240 | 48 02 C4 D9 */	bl fadein__Q33ipl5scene11TextBalloonFv
/* 813A5244 | 48 00 01 88 */	b .L_813A53CC
.L_813A5248:
/* 813A5248 | 7F E3 FB 78 */	mr r3, r31
/* 813A524C | 7F C4 F3 78 */	mr r4, r30
/* 813A5250 | 48 00 20 21 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A5254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5258 | 41 82 01 74 */	beq .L_813A53CC
/* 813A525C | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A5260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5264 | 41 82 01 68 */	beq .L_813A53CC
/* 813A5268 | 80 9F 00 40 */	lwz r4, 0x40(r31)
/* 813A526C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813A5270 | 41 82 01 5C */	beq .L_813A53CC
/* 813A5274 | 88 1F 00 48 */	lbz r0, 0x48(r31)
/* 813A5278 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A527C | 40 82 01 50 */	bne .L_813A53CC
/* 813A5280 | 38 00 00 01 */	li r0, 0x1
/* 813A5284 | 98 1F 00 48 */	stb r0, 0x48(r31)
/* 813A5288 | 88 04 06 20 */	lbz r0, 0x620(r4)
/* 813A528C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A5290 | 41 82 00 14 */	beq .L_813A52A4
/* 813A5294 | 38 8D 88 10 */	li r4, lbl_81696850@sda21
/* 813A5298 | 38 A0 00 00 */	li r5, 0x0
/* 813A529C | 48 02 C3 65 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813A52A0 | 48 00 00 58 */	b .L_813A52F8
.L_813A52A4:
/* 813A52A4 | 88 04 06 21 */	lbz r0, 0x621(r4)
/* 813A52A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A52AC | 41 82 00 30 */	beq .L_813A52DC
/* 813A52B0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A52B4 | 38 80 01 2F */	li r4, 0x12f
/* 813A52B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A52BC | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813A52C0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A52C4 | 4B F9 94 F9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813A52C8 | 7C 64 1B 78 */	mr r4, r3
/* 813A52CC | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A52D0 | 38 A0 00 00 */	li r5, 0x0
/* 813A52D4 | 48 02 C3 2D */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813A52D8 | 48 00 00 20 */	b .L_813A52F8
.L_813A52DC:
/* 813A52DC | 7C 83 23 78 */	mr r3, r4
/* 813A52E0 | 38 80 00 00 */	li r4, 0x0
/* 813A52E4 | 48 00 51 0D */	bl getTitle__Q33ipl5scene9ThumbnailFi
/* 813A52E8 | 7C 64 1B 78 */	mr r4, r3
/* 813A52EC | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A52F0 | 38 A0 00 00 */	li r5, 0x0
/* 813A52F4 | 48 02 C3 0D */	bl init__Q33ipl5scene11TextBalloonFPCwUl
.L_813A52F8:
/* 813A52F8 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A52FC | 48 02 C4 1D */	bl fadein__Q33ipl5scene11TextBalloonFv
/* 813A5300 | 48 00 00 CC */	b .L_813A53CC
.L_813A5304:
/* 813A5304 | 7F E3 FB 78 */	mr r3, r31
/* 813A5308 | 7F C4 F3 78 */	mr r4, r30
/* 813A530C | 48 00 1F 65 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A5310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5314 | 7C 7D 1B 78 */	mr r29, r3
/* 813A5318 | 41 82 00 B4 */	beq .L_813A53CC
/* 813A531C | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 813A5320 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813A5324 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813A5328 | 38 80 00 0C */	li r4, 0xc
/* 813A532C | 38 06 FF FF */	subi r0, r6, 0x1
/* 813A5330 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813A5334 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813A5338 | 48 06 5E 01 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A533C | 7F A4 EB 78 */	mr r4, r29
/* 813A5340 | 4B FF C6 51 */	bl onLeft__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane
/* 813A5344 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A5348 | 38 00 00 00 */	li r0, 0x0
/* 813A534C | 98 1F 00 48 */	stb r0, 0x48(r31)
/* 813A5350 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5354 | 41 82 00 78 */	beq .L_813A53CC
/* 813A5358 | 80 1F 00 40 */	lwz r0, 0x40(r31)
/* 813A535C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A5360 | 41 82 00 6C */	beq .L_813A53CC
/* 813A5364 | 48 02 C5 F1 */	bl fadeout__Q33ipl5scene11TextBalloonFv
/* 813A5368 | 48 00 00 64 */	b .L_813A53CC
.L_813A536C:
/* 813A536C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813A5370 | 3C 80 00 10 */	lis r4, 0x10
/* 813A5374 | 7F A3 EB 78 */	mr r3, r29
/* 813A5378 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813A537C | 38 84 08 00 */	addi r4, r4, 0x800
/* 813A5380 | 7D 89 03 A6 */	mtctr r12
/* 813A5384 | 4E 80 04 21 */	bctrl
/* 813A5388 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A538C | 41 82 00 40 */	beq .L_813A53CC
/* 813A5390 | 7F E3 FB 78 */	mr r3, r31
/* 813A5394 | 7F C4 F3 78 */	mr r4, r30
/* 813A5398 | 48 00 1E D9 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A539C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A53A0 | 41 82 00 2C */	beq .L_813A53CC
/* 813A53A4 | 80 1F 00 40 */	lwz r0, 0x40(r31)
/* 813A53A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A53AC | 41 82 00 20 */	beq .L_813A53CC
/* 813A53B0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A53B4 | 38 80 00 0C */	li r4, 0xc
/* 813A53B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A53BC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A53C0 | 48 06 5D 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A53C4 | 7F E4 FB 78 */	mr r4, r31
/* 813A53C8 | 4B FF C8 ED */	bl onTrig__Q33ipl5scene11ChannelEditFPQ33ipl5scene10ChanAppBox
.L_813A53CC:
/* 813A53CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A53D0 | 48 25 41 41 */	bl _restgpr_28
/* 813A53D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A53D8 | 7C 08 03 A6 */	mtlr r0
/* 813A53DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A53E0 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene10ChanAppBoxFUlUlPv

# .text:0xCD4 | 0x813A53E4 | size: 0x74
# ipl::scene::ChanAppBox::clearEvent()
.fn clearEvent__Q33ipl5scene10ChanAppBoxFv, global
/* 813A53E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A53E8 | 7C 08 02 A6 */	mflr r0
/* 813A53EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A53F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A53F4 | 7C 7F 1B 78 */	mr r31, r3
/* 813A53F8 | 48 1C 4B BD */	bl SCGetAspectRatio
/* 813A53FC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A5400 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A5404 | 40 82 00 18 */	bne .L_813A541C
/* 813A5408 | 3C 80 81 65 */	lis r4, lbl_8164D1BF@ha
/* 813A540C | 7F E3 FB 78 */	mr r3, r31
/* 813A5410 | 38 84 D1 BF */	addi r4, r4, lbl_8164D1BF@l
/* 813A5414 | 48 00 1E DD */	bl clear_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A5418 | 48 00 00 14 */	b .L_813A542C
.L_813A541C:
/* 813A541C | 3C 80 81 65 */	lis r4, lbl_8164D1C9@ha
/* 813A5420 | 7F E3 FB 78 */	mr r3, r31
/* 813A5424 | 38 84 D1 C9 */	addi r4, r4, lbl_8164D1C9@l
/* 813A5428 | 48 00 1E C9 */	bl clear_anmpane__Q33ipl5scene13AnmControllerFPCc
.L_813A542C:
/* 813A542C | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813A5430 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5434 | 41 82 00 10 */	beq .L_813A5444
/* 813A5438 | 48 02 C2 31 */	bl terminate__Q33ipl5scene11TextBalloonFv
/* 813A543C | 38 00 00 00 */	li r0, 0x0
/* 813A5440 | 98 1F 00 48 */	stb r0, 0x48(r31)
.L_813A5444:
/* 813A5444 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A5448 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A544C | 7C 08 03 A6 */	mtlr r0
/* 813A5450 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A5454 | 4E 80 00 20 */	blr
.endfn clearEvent__Q33ipl5scene10ChanAppBoxFv

# .text:0xD48 | 0x813A5458 | size: 0x14
# ipl::scene::ChanAppBox::get_channel_edit()
.fn get_channel_edit__Q33ipl5scene10ChanAppBoxFv, global
/* 813A5458 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A545C | 38 80 00 0C */	li r4, 0xc
/* 813A5460 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A5464 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A5468 | 48 06 5C D0 */	b getScene__Q33ipl5scene7ManagerFi
.endfn get_channel_edit__Q33ipl5scene10ChanAppBoxFv

# .text:0xD5C | 0x813A546C | size: 0x68
# ipl::scene::ChanAppBox::on_fadeout()
.fn on_fadeout__Q33ipl5scene10ChanAppBoxFv, global
/* 813A546C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A5470 | 7C 08 02 A6 */	mflr r0
/* 813A5474 | 38 80 00 01 */	li r4, 0x1
/* 813A5478 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A547C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A5480 | 7C 7F 1B 78 */	mr r31, r3
/* 813A5484 | 48 00 1D 21 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A5488 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A548C | 40 82 00 34 */	bne .L_813A54C0
/* 813A5490 | 3C 80 81 65 */	lis r4, lbl_8164D1AA@ha
/* 813A5494 | 7F E3 FB 78 */	mr r3, r31
/* 813A5498 | 38 84 D1 AA */	addi r4, r4, lbl_8164D1AA@l
/* 813A549C | 38 A0 00 00 */	li r5, 0x0
/* 813A54A0 | 48 00 20 35 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A54A4 | 3C 80 81 65 */	lis r4, lbl_8164D1B5@ha
/* 813A54A8 | 7F E3 FB 78 */	mr r3, r31
/* 813A54AC | 38 84 D1 B5 */	addi r4, r4, lbl_8164D1B5@l
/* 813A54B0 | 38 A0 00 00 */	li r5, 0x0
/* 813A54B4 | 48 00 20 21 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A54B8 | 38 00 00 01 */	li r0, 0x1
/* 813A54BC | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813A54C0:
/* 813A54C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A54C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A54C8 | 7C 08 03 A6 */	mtlr r0
/* 813A54CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A54D0 | 4E 80 00 20 */	blr
.endfn on_fadeout__Q33ipl5scene10ChanAppBoxFv

# .text:0xDC4 | 0x813A54D4 | size: 0x8
# ipl::scene::ChanAppBox::@40@onEvent(unsigned long, unsigned long, void*)
.fn "@40@onEvent__Q33ipl5scene10ChanAppBoxFUlUlPv", global
/* 813A54D4 | 38 63 FF D8 */	subi r3, r3, 0x28
/* 813A54D8 | 4B FF FC 20 */	b onEvent__Q33ipl5scene10ChanAppBoxFUlUlPv
.endfn "@40@onEvent__Q33ipl5scene10ChanAppBoxFUlUlPv"

# 0x8160FC70..0x8160FC80 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x8160FC70 | size: 0x10
.obj lbl_8160FC70, global
	.4byte 0x4219999A
	.4byte 0x41E66667
	.4byte 0x424C0001
	.4byte 0x41E66667
.endobj lbl_8160FC70

# 0x8164D108..0x8164D2E8 | size: 0x1E0
.data
.balign 8

# .data:0x0 | 0x8164D108 | size: 0xA2
.obj lbl_8164D108, global
	.4byte 0x69745F4F
	.4byte 0x626A4368
	.4byte 0x616E6E65
	.4byte 0x6C456469
	.4byte 0x745F625F
	.4byte 0x53617665
	.4byte 0x44617461
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F62
	.4byte 0x5F536176
	.4byte 0x65446174
	.4byte 0x614F7574
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4F62
	.4byte 0x6A436861
	.4byte 0x6E6E656C
	.4byte 0x45646974
	.4byte 0x5F625F53
	.4byte 0x61766544
	.4byte 0x61746146
	.4byte 0x6F756375
	.4byte 0x73496E2E
	.4byte 0x62726C61
	.4byte 0x6E006974
	.4byte 0x5F4F626A
	.4byte 0x4368616E
	.4byte 0x6E656C45
	.4byte 0x6469745F
	.4byte 0x625F5361
	.4byte 0x76654461
	.4byte 0x7461466F
	.4byte 0x75637573
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.2byte 0x6E00
.endobj lbl_8164D108

# .data:0xA2 | 0x8164D1AA | size: 0xB
.obj lbl_8164D1AA, global
	.string "N_Data16x9"
.endobj lbl_8164D1AA

# .data:0xAD | 0x8164D1B5 | size: 0xA
.obj lbl_8164D1B5, global
	.string "N_Data4x3"
.endobj lbl_8164D1B5

# .data:0xB7 | 0x8164D1BF | size: 0xA
.obj lbl_8164D1BF, global
	.string "B_Data_01"
.endobj lbl_8164D1BF

# .data:0xC1 | 0x8164D1C9 | size: 0x57
.obj lbl_8164D1C9, global
	.4byte 0x425F4461
	.4byte 0x74615F30
	.4byte 0x30004E5F
	.4byte 0x41746172
	.4byte 0x69313678
	.4byte 0x39004E5F
	.4byte 0x44617461
	.4byte 0x5F303100
	.4byte 0x4E5F4174
	.4byte 0x61726934
	.4byte 0x7833004E
	.4byte 0x5F446174
	.4byte 0x615F3030
	.4byte 0x00446174
	.4byte 0x61426173
	.4byte 0x65436F76
	.4byte 0x65725F30
	.4byte 0x30004461
	.4byte 0x74614261
	.4byte 0x7365436F
	.4byte 0x7665725F
	.byte 0x30, 0x31, 0x00
.endobj lbl_8164D1C9

# .data:0x118 | 0x8164D220 | size: 0xC8
# ipl::scene::ChanAppBox::__vtable
.obj __vt__Q33ipl5scene10ChanAppBox, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene10ChanAppBoxFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@40@onEvent__Q33ipl5scene10ChanAppBoxFUlUlPv"
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEvent__Q33ipl5scene10ChanAppBoxFUlUlPv
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
.endobj __vt__Q33ipl5scene10ChanAppBox

# 0x81694900..0x81694938 | size: 0x38
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694900 | size: 0x4
.obj lbl_81694900, global
	.float 0.5
.endobj lbl_81694900

# .sdata2:0x4 | 0x81694904 | size: 0x4
.obj lbl_81694904, global
	.float 2
.endobj lbl_81694904

# .sdata2:0x8 | 0x81694908 | size: 0x8
.obj lbl_81694908, global
	.double 4503599627370496
.endobj lbl_81694908

# .sdata2:0x10 | 0x81694910 | size: 0x4
.obj lbl_81694910, global
	.float 15
.endobj lbl_81694910

# .sdata2:0x14 | 0x81694914 | size: 0x4
.obj lbl_81694914, global
	.float 0
.endobj lbl_81694914

# .sdata2:0x18 | 0x81694918 | size: 0x4
.obj lbl_81694918, global
	.float 0.5
.endobj lbl_81694918

# .sdata2:0x1C | 0x8169491C | size: 0x4
.obj lbl_8169491C, global
	.float 2
.endobj lbl_8169491C

# .sdata2:0x20 | 0x81694920 | size: 0x8
.obj lbl_81694920, global
	.double 4503599627370496
.endobj lbl_81694920

# .sdata2:0x28 | 0x81694928 | size: 0x4
.obj lbl_81694928, global
	.float 12
.endobj lbl_81694928

# .sdata2:0x2C | 0x8169492C | size: 0x4
.obj lbl_8169492C, global
	.float 1
.endobj lbl_8169492C

# .sdata2:0x30 | 0x81694930 | size: 0x8
.obj lbl_81694930, global
	.float 20
	.float 0
.endobj lbl_81694930

# 0x81696848..0x81696860 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696848 | size: 0x8
.obj lbl_81696848, global
	.4byte 0x475F4461
	.4byte 0x74610000
.endobj lbl_81696848

# .sdata:0x8 | 0x81696850 | size: 0x8
.obj lbl_81696850, global
	.string16 "???"
.endobj lbl_81696850

# .sdata:0x10 | 0x81696858 | size: 0x8
.obj lbl_81696858, global
	.4byte 0x4E5F416C
	.4byte 0x6C000000
.endobj lbl_81696858
