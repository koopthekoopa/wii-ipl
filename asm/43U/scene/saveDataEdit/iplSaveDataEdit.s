.include "macros.inc"
.file "iplSaveDataEdit.cpp"

# 0x813C8484..0x813C98CC | size: 0x1448
.text
.balign 4

# .text:0x0 | 0x813C8484 | size: 0x4E4
# ipl::scene::SavedataEdit::SavedataEdit(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl5scene12SavedataEditFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 813C8484 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813C8488 | 7C 08 02 A6 */	mflr r0
/* 813C848C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813C8490 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C8494 | 48 23 10 25 */	bl _savegpr_25
/* 813C8498 | 3D 00 81 65 */	lis r8, __vt__Q33ipl5scene13AnmController@ha
/* 813C849C | 3B A0 00 00 */	li r29, 0x0
/* 813C84A0 | 39 08 D0 F8 */	addi r8, r8, __vt__Q33ipl5scene13AnmController@l
/* 813C84A4 | 3F E0 81 65 */	lis r31, lbl_81651860@ha
/* 813C84A8 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 813C84AC | 7C 7E 1B 78 */	mr r30, r3
/* 813C84B0 | 7C 99 23 78 */	mr r25, r4
/* 813C84B4 | 7C BA 2B 78 */	mr r26, r5
/* 813C84B8 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 813C84BC | 7C DB 33 78 */	mr r27, r6
/* 813C84C0 | 7C FC 3B 78 */	mr r28, r7
/* 813C84C4 | 3B FF 18 60 */	addi r31, r31, lbl_81651860@l
/* 813C84C8 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 813C84CC | 38 80 00 04 */	li r4, 0x4
/* 813C84D0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813C84D4 | 48 14 9B 89 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C84D8 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813C84DC | 38 80 00 00 */	li r4, 0x0
/* 813C84E0 | 48 14 9B 7D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C84E4 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene12SavedataEdit@ha
/* 813C84E8 | 3C C0 81 65 */	lis r6, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>"@ha
/* 813C84EC | 38 63 1C 3C */	addi r3, r3, __vt__Q33ipl5scene12SavedataEdit@l
/* 813C84F0 | 93 BE 00 30 */	stw r29, 0x30(r30)
/* 813C84F4 | 38 03 00 0C */	addi r0, r3, 0xc
/* 813C84F8 | 38 C6 BE 40 */	addi r6, r6, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>"@l
/* 813C84FC | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813C8500 | 7F 24 CB 78 */	mr r4, r25
/* 813C8504 | 38 60 05 80 */	li r3, 0x580
/* 813C8508 | 38 A0 00 04 */	li r5, 0x4
/* 813C850C | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 813C8510 | 93 BE 00 3C */	stw r29, 0x3c(r30)
/* 813C8514 | 90 DE 00 40 */	stw r6, 0x40(r30)
/* 813C8518 | 93 BE 00 78 */	stw r29, 0x78(r30)
/* 813C851C | 93 BE 00 7C */	stw r29, 0x7c(r30)
/* 813C8520 | 48 22 FB 91 */	bl __nw__FUlPQ23EGG4Heapi
/* 813C8524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8528 | 41 82 00 18 */	beq .L_813C8540
/* 813C852C | 7F 24 CB 78 */	mr r4, r25
/* 813C8530 | 7F 45 D3 78 */	mr r5, r26
/* 813C8534 | 7F 66 DB 78 */	mr r6, r27
/* 813C8538 | 7F 87 E3 78 */	mr r7, r28
/* 813C853C | 4B FA 1A E9 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813C8540:
/* 813C8540 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 813C8544 | 7F C3 F3 78 */	mr r3, r30
/* 813C8548 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 813C854C | 38 AD 8B F0 */	li r5, lbl_81696C30@sda21
/* 813C8550 | 4B FD EB 45 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C8554 | 7F C3 F3 78 */	mr r3, r30
/* 813C8558 | 38 9F 00 29 */	addi r4, r31, 0x29
/* 813C855C | 38 AD 8B F0 */	li r5, lbl_81696C30@sda21
/* 813C8560 | 4B FD EB 35 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C8564 | 7F C3 F3 78 */	mr r3, r30
/* 813C8568 | 38 9F 00 53 */	addi r4, r31, 0x53
/* 813C856C | 38 AD 8B F7 */	li r5, lbl_81696C37@sda21
/* 813C8570 | 4B FD EB 25 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C8574 | 7F C3 F3 78 */	mr r3, r30
/* 813C8578 | 38 9F 00 82 */	addi r4, r31, 0x82
/* 813C857C | 38 AD 8B F7 */	li r5, lbl_81696C37@sda21
/* 813C8580 | 4B FD EB 15 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C8584 | 7F C3 F3 78 */	mr r3, r30
/* 813C8588 | 38 9F 00 B2 */	addi r4, r31, 0xb2
/* 813C858C | 38 BF 00 DE */	addi r5, r31, 0xde
/* 813C8590 | 4B FD EB 05 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C8594 | 7F C3 F3 78 */	mr r3, r30
/* 813C8598 | 38 9F 00 EA */	addi r4, r31, 0xea
/* 813C859C | 38 AD 8B FE */	li r5, lbl_81696C3E@sda21
/* 813C85A0 | 4B FD EA F5 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C85A4 | 7F C3 F3 78 */	mr r3, r30
/* 813C85A8 | 38 9F 01 18 */	addi r4, r31, 0x118
/* 813C85AC | 38 AD 8B FE */	li r5, lbl_81696C3E@sda21
/* 813C85B0 | 4B FD EA E5 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C85B4 | 7F C3 F3 78 */	mr r3, r30
/* 813C85B8 | 38 9F 01 47 */	addi r4, r31, 0x147
/* 813C85BC | 38 BF 01 72 */	addi r5, r31, 0x172
/* 813C85C0 | 4B FD EA D5 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C85C4 | 7F C3 F3 78 */	mr r3, r30
/* 813C85C8 | 38 9F 01 7D */	addi r4, r31, 0x17d
/* 813C85CC | 38 BF 01 A9 */	addi r5, r31, 0x1a9
/* 813C85D0 | 4B FD EA C5 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C85D4 | 7F C3 F3 78 */	mr r3, r30
/* 813C85D8 | 38 9F 01 B2 */	addi r4, r31, 0x1b2
/* 813C85DC | 38 AD 8B F0 */	li r5, lbl_81696C30@sda21
/* 813C85E0 | 4B FD EA B5 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C85E4 | 7F C3 F3 78 */	mr r3, r30
/* 813C85E8 | 38 9F 01 DF */	addi r4, r31, 0x1df
/* 813C85EC | 38 AD 8B F0 */	li r5, lbl_81696C30@sda21
/* 813C85F0 | 4B FD EA A5 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C85F4 | 7F C3 F3 78 */	mr r3, r30
/* 813C85F8 | 38 9F 02 0E */	addi r4, r31, 0x20e
/* 813C85FC | 38 AD 8C 04 */	li r5, lbl_81696C44@sda21
/* 813C8600 | 4B FD EA 95 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C8604 | 7F C3 F3 78 */	mr r3, r30
/* 813C8608 | 38 9F 02 35 */	addi r4, r31, 0x235
/* 813C860C | 38 AD 8C 0B */	li r5, lbl_81696C4B@sda21
/* 813C8610 | 4B FD EA 85 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C8614 | 7F C3 F3 78 */	mr r3, r30
/* 813C8618 | 38 9F 02 64 */	addi r4, r31, 0x264
/* 813C861C | 38 AD 8C 0B */	li r5, lbl_81696C4B@sda21
/* 813C8620 | 4B FD EA 75 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C8624 | 7F C3 F3 78 */	mr r3, r30
/* 813C8628 | 38 9F 02 94 */	addi r4, r31, 0x294
/* 813C862C | 38 BF 02 C0 */	addi r5, r31, 0x2c0
/* 813C8630 | 4B FD EA 65 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C8634 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C8638 | 4B FA 1F FD */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813C863C | 7F C3 F3 78 */	mr r3, r30
/* 813C8640 | 38 9F 02 CC */	addi r4, r31, 0x2cc
/* 813C8644 | 38 A0 00 A7 */	li r5, 0xa7
/* 813C8648 | 4B FD ED 31 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C864C | 7F C3 F3 78 */	mr r3, r30
/* 813C8650 | 38 9F 02 D6 */	addi r4, r31, 0x2d6
/* 813C8654 | 38 A0 00 B2 */	li r5, 0xb2
/* 813C8658 | 4B FD ED 21 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C865C | 7F C3 F3 78 */	mr r3, r30
/* 813C8660 | 38 9F 02 E0 */	addi r4, r31, 0x2e0
/* 813C8664 | 38 A0 00 BD */	li r5, 0xbd
/* 813C8668 | 4B FD ED 11 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C866C | 7F C3 F3 78 */	mr r3, r30
/* 813C8670 | 38 9F 02 E9 */	addi r4, r31, 0x2e9
/* 813C8674 | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C8678 | 4B FD ED 89 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C867C | 7F C3 F3 78 */	mr r3, r30
/* 813C8680 | 38 9F 02 F4 */	addi r4, r31, 0x2f4
/* 813C8684 | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C8688 | 4B FD ED 79 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C868C | 7F C3 F3 78 */	mr r3, r30
/* 813C8690 | 38 9F 03 01 */	addi r4, r31, 0x301
/* 813C8694 | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C8698 | 4B FD ED 69 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C869C | 7F C3 F3 78 */	mr r3, r30
/* 813C86A0 | 38 9F 03 0C */	addi r4, r31, 0x30c
/* 813C86A4 | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C86A8 | 4B FD ED 59 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C86AC | 7F C3 F3 78 */	mr r3, r30
/* 813C86B0 | 38 8D 8C 16 */	li r4, lbl_81696C56@sda21
/* 813C86B4 | 38 A0 00 01 */	li r5, 0x1
/* 813C86B8 | 4B FD EE 1D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C86BC | 7F C3 F3 78 */	mr r3, r30
/* 813C86C0 | 38 8D 8C 1D */	li r4, lbl_81696C5D@sda21
/* 813C86C4 | 38 A0 00 00 */	li r5, 0x0
/* 813C86C8 | 4B FD EE 0D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C86CC | 7F C3 F3 78 */	mr r3, r30
/* 813C86D0 | 38 9F 03 17 */	addi r4, r31, 0x317
/* 813C86D4 | 38 A0 00 00 */	li r5, 0x0
/* 813C86D8 | 4B FD ED FD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C86DC | 7F C3 F3 78 */	mr r3, r30
/* 813C86E0 | 38 8D 8C 25 */	li r4, lbl_81696C65@sda21
/* 813C86E4 | 38 A0 00 00 */	li r5, 0x0
/* 813C86E8 | 4B FD ED ED */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C86EC | 7F C3 F3 78 */	mr r3, r30
/* 813C86F0 | 38 9F 03 20 */	addi r4, r31, 0x320
/* 813C86F4 | 38 A0 00 00 */	li r5, 0x0
/* 813C86F8 | 4B FD ED DD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C86FC | 7F C3 F3 78 */	mr r3, r30
/* 813C8700 | 38 9F 03 2B */	addi r4, r31, 0x32b
/* 813C8704 | 38 A0 00 00 */	li r5, 0x0
/* 813C8708 | 4B FD ED CD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C870C | 7F C3 F3 78 */	mr r3, r30
/* 813C8710 | 38 9F 03 35 */	addi r4, r31, 0x335
/* 813C8714 | 38 A0 00 00 */	li r5, 0x0
/* 813C8718 | 4B FD ED BD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C871C | 7F C3 F3 78 */	mr r3, r30
/* 813C8720 | 38 9F 03 42 */	addi r4, r31, 0x342
/* 813C8724 | 38 A0 00 00 */	li r5, 0x0
/* 813C8728 | 4B FD ED AD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C872C | 7F C3 F3 78 */	mr r3, r30
/* 813C8730 | 38 9F 03 52 */	addi r4, r31, 0x352
/* 813C8734 | 38 A0 00 00 */	li r5, 0x0
/* 813C8738 | 4B FD ED 9D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C873C | 7F C3 F3 78 */	mr r3, r30
/* 813C8740 | 38 9F 03 5D */	addi r4, r31, 0x35d
/* 813C8744 | 38 A0 00 00 */	li r5, 0x0
/* 813C8748 | 4B FD ED 8D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C874C | 38 60 00 34 */	li r3, 0x34
/* 813C8750 | 48 22 F9 4D */	bl __nw__FUl
/* 813C8754 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8758 | 7C 7D 1B 78 */	mr r29, r3
/* 813C875C | 41 82 00 98 */	beq .L_813C87F4
/* 813C8760 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813C8764 | 7F C6 F3 78 */	mr r6, r30
/* 813C8768 | 41 82 00 08 */	beq .L_813C8770
/* 813C876C | 38 DE 00 28 */	addi r6, r30, 0x28
.L_813C8770:
/* 813C8770 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 813C8774 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813C8778 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813C877C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813C8780 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C8784 | 38 00 00 00 */	li r0, 0x0
/* 813C8788 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813C878C | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813C8790 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813C8794 | 41 82 00 1C */	beq .L_813C87B0
/* 813C8798 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813C879C | 7C C3 33 78 */	mr r3, r6
/* 813C87A0 | 7F A4 EB 78 */	mr r4, r29
/* 813C87A4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C87A8 | 7D 89 03 A6 */	mtctr r12
/* 813C87AC | 4E 80 04 21 */	bctrl
.L_813C87B0:
/* 813C87B0 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813C87B4 | 38 80 00 08 */	li r4, 0x8
/* 813C87B8 | 48 14 98 A5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C87BC | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813C87C0 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813C87C4 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813C87C8 | 38 80 00 08 */	li r4, 0x8
/* 813C87CC | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 813C87D0 | 93 9D 00 24 */	stw r28, 0x24(r29)
/* 813C87D4 | 48 14 98 89 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C87D8 | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813C87DC | 38 60 00 00 */	li r3, 0x0
/* 813C87E0 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813C87E4 | 38 00 00 01 */	li r0, 0x1
/* 813C87E8 | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 813C87EC | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 813C87F0 | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_813C87F4:
/* 813C87F4 | 93 BE 00 08 */	stw r29, 0x8(r30)
/* 813C87F8 | 7F A3 EB 78 */	mr r3, r29
/* 813C87FC | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813C8800 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813C8804 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813C8808 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813C880C | 7D 89 03 A6 */	mtctr r12
/* 813C8810 | 4E 80 04 21 */	bctrl
/* 813C8814 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C8818 | 38 80 00 00 */	li r4, 0x0
/* 813C881C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C8820 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813C8824 | 7D 89 03 A6 */	mtctr r12
/* 813C8828 | 4E 80 04 21 */	bctrl
/* 813C882C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C8830 | 38 9F 03 6B */	addi r4, r31, 0x36b
/* 813C8834 | 38 A0 00 01 */	li r5, 0x1
/* 813C8838 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C883C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C8840 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C8844 | 7D 89 03 A6 */	mtctr r12
/* 813C8848 | 4E 80 04 21 */	bctrl
/* 813C884C | 7C 64 1B 78 */	mr r4, r3
/* 813C8850 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C8854 | 38 A0 00 01 */	li r5, 0x1
/* 813C8858 | 4B FA 29 75 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813C885C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C8860 | 38 9F 03 75 */	addi r4, r31, 0x375
/* 813C8864 | 38 A0 00 01 */	li r5, 0x1
/* 813C8868 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C886C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C8870 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C8874 | 7D 89 03 A6 */	mtctr r12
/* 813C8878 | 4E 80 04 21 */	bctrl
/* 813C887C | 7C 64 1B 78 */	mr r4, r3
/* 813C8880 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C8884 | 38 A0 00 01 */	li r5, 0x1
/* 813C8888 | 4B FA 29 45 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813C888C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C8890 | 38 9F 03 7F */	addi r4, r31, 0x37f
/* 813C8894 | 38 A0 00 01 */	li r5, 0x1
/* 813C8898 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C889C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C88A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C88A4 | 7D 89 03 A6 */	mtctr r12
/* 813C88A8 | 4E 80 04 21 */	bctrl
/* 813C88AC | 7C 64 1B 78 */	mr r4, r3
/* 813C88B0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C88B4 | 38 A0 00 01 */	li r5, 0x1
/* 813C88B8 | 4B FA 29 15 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813C88BC | 7F C3 F3 78 */	mr r3, r30
/* 813C88C0 | 38 80 00 0D */	li r4, 0xd
/* 813C88C4 | 4B FD E9 1D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C88C8 | 7C 7D 1B 78 */	mr r29, r3
/* 813C88CC | 7F C3 F3 78 */	mr r3, r30
/* 813C88D0 | 38 80 00 0C */	li r4, 0xc
/* 813C88D4 | 4B FD E9 0D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C88D8 | 7C 65 1B 78 */	mr r5, r3
/* 813C88DC | 7F C3 F3 78 */	mr r3, r30
/* 813C88E0 | 7F A6 EB 78 */	mr r6, r29
/* 813C88E4 | 38 9F 03 6B */	addi r4, r31, 0x36b
/* 813C88E8 | 4B FD E9 05 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813C88EC | 7F C3 F3 78 */	mr r3, r30
/* 813C88F0 | 38 80 00 03 */	li r4, 0x3
/* 813C88F4 | 4B FD E8 ED */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C88F8 | 7C 7D 1B 78 */	mr r29, r3
/* 813C88FC | 7F C3 F3 78 */	mr r3, r30
/* 813C8900 | 38 80 00 02 */	li r4, 0x2
/* 813C8904 | 4B FD E8 DD */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C8908 | 7C 65 1B 78 */	mr r5, r3
/* 813C890C | 7F C3 F3 78 */	mr r3, r30
/* 813C8910 | 7F A6 EB 78 */	mr r6, r29
/* 813C8914 | 38 9F 03 75 */	addi r4, r31, 0x375
/* 813C8918 | 4B FD E8 D5 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813C891C | 7F C3 F3 78 */	mr r3, r30
/* 813C8920 | 38 80 00 06 */	li r4, 0x6
/* 813C8924 | 4B FD E8 BD */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C8928 | 7C 7D 1B 78 */	mr r29, r3
/* 813C892C | 7F C3 F3 78 */	mr r3, r30
/* 813C8930 | 38 80 00 05 */	li r4, 0x5
/* 813C8934 | 4B FD E8 AD */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C8938 | 7C 65 1B 78 */	mr r5, r3
/* 813C893C | 7F C3 F3 78 */	mr r3, r30
/* 813C8940 | 7F A6 EB 78 */	mr r6, r29
/* 813C8944 | 38 9F 03 7F */	addi r4, r31, 0x37f
/* 813C8948 | 4B FD E8 A5 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813C894C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C8950 | 7F C3 F3 78 */	mr r3, r30
/* 813C8954 | 48 23 0B B1 */	bl _restgpr_25
/* 813C8958 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813C895C | 7C 08 03 A6 */	mtlr r0
/* 813C8960 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813C8964 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12SavedataEditFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x4E4 | 0x813C8968 | size: 0xC0
# ipl::scene::SavedataEdit::~SavedataEdit()
.fn __dt__Q33ipl5scene12SavedataEditFv, global
/* 813C8968 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C896C | 7C 08 02 A6 */	mflr r0
/* 813C8970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8974 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C8978 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C897C | 7C 9F 23 78 */	mr r31, r4
/* 813C8980 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C8984 | 7C 7E 1B 78 */	mr r30, r3
/* 813C8988 | 41 82 00 84 */	beq .L_813C8A0C
/* 813C898C | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813C8990 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene12SavedataEdit@ha
/* 813C8994 | 38 84 1C 3C */	addi r4, r4, __vt__Q33ipl5scene12SavedataEdit@l
/* 813C8998 | 38 04 00 0C */	addi r0, r4, 0xc
/* 813C899C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813C89A0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C89A4 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813C89A8 | 41 82 00 1C */	beq .L_813C89C4
/* 813C89AC | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 813C89B0 | 7C A3 2B 78 */	mr r3, r5
/* 813C89B4 | 38 80 00 01 */	li r4, 0x1
/* 813C89B8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813C89BC | 7D 89 03 A6 */	mtctr r12
/* 813C89C0 | 4E 80 04 21 */	bctrl
.L_813C89C4:
/* 813C89C4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C89C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C89CC | 41 82 00 18 */	beq .L_813C89E4
/* 813C89D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C89D4 | 38 80 00 01 */	li r4, 0x1
/* 813C89D8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813C89DC | 7D 89 03 A6 */	mtctr r12
/* 813C89E0 | 4E 80 04 21 */	bctrl
.L_813C89E4:
/* 813C89E4 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 813C89E8 | 38 80 FF FF */	li r4, -0x1
/* 813C89EC | 4B FC E5 D9 */	bl "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv"
/* 813C89F0 | 7F C3 F3 78 */	mr r3, r30
/* 813C89F4 | 38 80 00 00 */	li r4, 0x0
/* 813C89F8 | 4B FD B3 E1 */	bl __dt__Q33ipl5scene13AnmControllerFv
/* 813C89FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C8A00 | 40 81 00 0C */	ble .L_813C8A0C
/* 813C8A04 | 7F C3 F3 78 */	mr r3, r30
/* 813C8A08 | 48 22 F6 DD */	bl __dl__FPv
.L_813C8A0C:
/* 813C8A0C | 7F C3 F3 78 */	mr r3, r30
/* 813C8A10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C8A14 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C8A18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C8A1C | 7C 08 03 A6 */	mtlr r0
/* 813C8A20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C8A24 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12SavedataEditFv

# .text:0x5A4 | 0x813C8A28 | size: 0x168
# ipl::scene::SavedataEdit::calc()
.fn calc__Q33ipl5scene12SavedataEditFv, global
/* 813C8A28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C8A2C | 7C 08 02 A6 */	mflr r0
/* 813C8A30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C8A34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C8A38 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C8A3C | 7C 7E 1B 78 */	mr r30, r3
/* 813C8A40 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C8A44 | 4B FA 1C C1 */	bl calc__Q33ipl6layout6ObjectFv
/* 813C8A48 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C8A4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C8A50 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813C8A54 | 7D 89 03 A6 */	mtctr r12
/* 813C8A58 | 4E 80 04 21 */	bctrl
/* 813C8A5C | 3B E0 00 00 */	li r31, 0x0
/* 813C8A60 | 48 00 00 0C */	b .L_813C8A6C
.L_813C8A64:
/* 813C8A64 | 7F E3 FB 78 */	mr r3, r31
/* 813C8A68 | 4B FD E4 9D */	bl calc__Q33ipl5scene7AnmPaneFv
.L_813C8A6C:
/* 813C8A6C | 7F E4 FB 78 */	mr r4, r31
/* 813C8A70 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813C8A74 | 48 14 98 69 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C8A78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8A7C | 7C 7F 1B 78 */	mr r31, r3
/* 813C8A80 | 40 82 FF E4 */	bne .L_813C8A64
/* 813C8A84 | 80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 813C8A88 | 28 00 00 0B */	cmplwi r0, 0xb
/* 813C8A8C | 41 81 00 EC */	bgt .L_813C8B78
/* 813C8A90 | 3C 60 81 65 */	lis r3, jumptable_81651BE8@ha
/* 813C8A94 | 54 00 10 3A */	slwi r0, r0, 2
/* 813C8A98 | 38 63 1B E8 */	addi r3, r3, jumptable_81651BE8@l
/* 813C8A9C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813C8AA0 | 7C 69 03 A6 */	mtctr r3
/* 813C8AA4 | 4E 80 04 20 */	bctr
.L_813C8AA8:
/* 813C8AA8 | 7F C3 F3 78 */	mr r3, r30
/* 813C8AAC | 48 00 0B 65 */	bl on_fadein__Q33ipl5scene12SavedataEditFv
/* 813C8AB0 | 48 00 00 C8 */	b .L_813C8B78
.L_813C8AB4:
/* 813C8AB4 | 7F C3 F3 78 */	mr r3, r30
/* 813C8AB8 | 38 80 00 01 */	li r4, 0x1
/* 813C8ABC | 4B FD E6 E9 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C8AC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8AC4 | 40 82 00 B4 */	bne .L_813C8B78
/* 813C8AC8 | 38 00 00 00 */	li r0, 0x0
/* 813C8ACC | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813C8AD0 | 48 00 00 A8 */	b .L_813C8B78
.L_813C8AD4:
/* 813C8AD4 | 7F C3 F3 78 */	mr r3, r30
/* 813C8AD8 | 48 00 0B BD */	bl on_hide_btn0_dialog__Q33ipl5scene12SavedataEditFv
/* 813C8ADC | 48 00 00 9C */	b .L_813C8B78
.L_813C8AE0:
/* 813C8AE0 | 7F C3 F3 78 */	mr r3, r30
/* 813C8AE4 | 48 00 0B DD */	bl on_show_btn2_dialog1st__Q33ipl5scene12SavedataEditFv
/* 813C8AE8 | 48 00 00 90 */	b .L_813C8B78
.L_813C8AEC:
/* 813C8AEC | 7F C3 F3 78 */	mr r3, r30
/* 813C8AF0 | 48 00 0C 3D */	bl on_show_btn2_dialog2nd__Q33ipl5scene12SavedataEditFv
/* 813C8AF4 | 48 00 00 84 */	b .L_813C8B78
.L_813C8AF8:
/* 813C8AF8 | 7F C3 F3 78 */	mr r3, r30
/* 813C8AFC | 38 80 00 08 */	li r4, 0x8
/* 813C8B00 | 4B FD E6 A5 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C8B04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8B08 | 40 82 00 70 */	bne .L_813C8B78
/* 813C8B0C | 38 00 00 00 */	li r0, 0x0
/* 813C8B10 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813C8B14 | 48 00 00 64 */	b .L_813C8B78
.L_813C8B18:
/* 813C8B18 | 7F C3 F3 78 */	mr r3, r30
/* 813C8B1C | 48 00 0C 6D */	bl on_select_fadeout1st__Q33ipl5scene12SavedataEditFv
/* 813C8B20 | 48 00 00 58 */	b .L_813C8B78
.L_813C8B24:
/* 813C8B24 | 7F C3 F3 78 */	mr r3, r30
/* 813C8B28 | 38 80 00 08 */	li r4, 0x8
/* 813C8B2C | 4B FD E6 79 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C8B30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8B34 | 40 82 00 44 */	bne .L_813C8B78
/* 813C8B38 | 38 00 00 00 */	li r0, 0x0
/* 813C8B3C | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813C8B40 | 48 00 00 38 */	b .L_813C8B78
.L_813C8B44:
/* 813C8B44 | 7F C3 F3 78 */	mr r3, r30
/* 813C8B48 | 48 00 0C A1 */	bl on_text_fadein__Q33ipl5scene12SavedataEditFv
/* 813C8B4C | 48 00 00 2C */	b .L_813C8B78
.L_813C8B50:
/* 813C8B50 | 7F C3 F3 78 */	mr r3, r30
/* 813C8B54 | 38 80 00 0A */	li r4, 0xa
/* 813C8B58 | 4B FD E6 4D */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C8B5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8B60 | 40 82 00 18 */	bne .L_813C8B78
/* 813C8B64 | 38 00 00 00 */	li r0, 0x0
/* 813C8B68 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813C8B6C | 48 00 00 0C */	b .L_813C8B78
.L_813C8B70:
/* 813C8B70 | 7F C3 F3 78 */	mr r3, r30
/* 813C8B74 | 48 00 0C F9 */	bl on_trig_del__Q33ipl5scene12SavedataEditFv
.L_813C8B78:
/* 813C8B78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C8B7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C8B80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C8B84 | 7C 08 03 A6 */	mtlr r0
/* 813C8B88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C8B8C | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene12SavedataEditFv

# .text:0x70C | 0x813C8B90 | size: 0x8
# ipl::scene::SavedataEdit::draw()
.fn draw__Q33ipl5scene12SavedataEditFv, global
/* 813C8B90 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C8B94 | 4B FA 1C 08 */	b draw__Q33ipl6layout6ObjectFv
.endfn draw__Q33ipl5scene12SavedataEditFv

# .text:0x714 | 0x813C8B98 | size: 0x8
# ipl::scene::SavedataEdit::update()
.fn update__Q33ipl5scene12SavedataEditFv, global
/* 813C8B98 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C8B9C | 4B FA 23 F0 */	b update__Q33ipl3gui11PaneManagerFv
.endfn update__Q33ipl5scene12SavedataEditFv

# .text:0x71C | 0x813C8BA0 | size: 0x3CC
# ipl::scene::SavedataEdit::anmFadein(ipl::scene::SavedataBox*)
.fn anmFadein__Q33ipl5scene12SavedataEditFPQ33ipl5scene11SavedataBox, global
/* 813C8BA0 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813C8BA4 | 7C 08 02 A6 */	mflr r0
/* 813C8BA8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813C8BAC | 39 61 00 90 */	addi r11, r1, 0x90
/* 813C8BB0 | 48 23 09 11 */	bl _savegpr_27
/* 813C8BB4 | 3F E0 81 65 */	lis r31, lbl_81651860@ha
/* 813C8BB8 | 90 83 00 78 */	stw r4, 0x78(r3)
/* 813C8BBC | 7C 9E 23 78 */	mr r30, r4
/* 813C8BC0 | 7C 7D 1B 78 */	mr r29, r3
/* 813C8BC4 | 3B FF 18 60 */	addi r31, r31, lbl_81651860@l
/* 813C8BC8 | 38 8D 8C 1D */	li r4, lbl_81696C5D@sda21
/* 813C8BCC | 38 A0 00 01 */	li r5, 0x1
/* 813C8BD0 | 4B FD E9 05 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8BD4 | 7F A3 EB 78 */	mr r3, r29
/* 813C8BD8 | 38 9F 03 17 */	addi r4, r31, 0x317
/* 813C8BDC | 38 A0 00 01 */	li r5, 0x1
/* 813C8BE0 | 4B FD E8 F5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8BE4 | 7F A3 EB 78 */	mr r3, r29
/* 813C8BE8 | 38 9F 03 B8 */	addi r4, r31, 0x3b8
/* 813C8BEC | 38 A0 00 01 */	li r5, 0x1
/* 813C8BF0 | 4B FD E8 E5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8BF4 | 7F A3 EB 78 */	mr r3, r29
/* 813C8BF8 | 38 9F 03 C2 */	addi r4, r31, 0x3c2
/* 813C8BFC | 38 A0 00 01 */	li r5, 0x1
/* 813C8C00 | 4B FD E8 D5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8C04 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813C8C08 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813C8C0C | 80 03 F1 A8 */	lwz r0, -0xe58(r3)
/* 813C8C10 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C8C14 | 41 82 00 40 */	beq .L_813C8C54
/* 813C8C18 | 40 80 00 60 */	bge .L_813C8C78
/* 813C8C1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C8C20 | 41 82 00 58 */	beq .L_813C8C78
/* 813C8C24 | 40 80 00 0C */	bge .L_813C8C30
/* 813C8C28 | 48 00 00 50 */	b .L_813C8C78
/* 813C8C2C | 48 00 00 4C */	b .L_813C8C78
.L_813C8C30:
/* 813C8C30 | 7F A3 EB 78 */	mr r3, r29
/* 813C8C34 | 38 9F 03 35 */	addi r4, r31, 0x335
/* 813C8C38 | 38 A0 00 01 */	li r5, 0x1
/* 813C8C3C | 4B FD E8 99 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8C40 | 7F A3 EB 78 */	mr r3, r29
/* 813C8C44 | 38 9F 03 42 */	addi r4, r31, 0x342
/* 813C8C48 | 38 A0 00 01 */	li r5, 0x1
/* 813C8C4C | 4B FD E8 89 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8C50 | 48 00 00 48 */	b .L_813C8C98
.L_813C8C54:
/* 813C8C54 | 7F A3 EB 78 */	mr r3, r29
/* 813C8C58 | 38 9F 03 35 */	addi r4, r31, 0x335
/* 813C8C5C | 38 A0 00 01 */	li r5, 0x1
/* 813C8C60 | 4B FD E8 75 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8C64 | 7F A3 EB 78 */	mr r3, r29
/* 813C8C68 | 38 9F 03 42 */	addi r4, r31, 0x342
/* 813C8C6C | 38 A0 00 00 */	li r5, 0x0
/* 813C8C70 | 4B FD E8 65 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8C74 | 48 00 00 24 */	b .L_813C8C98
.L_813C8C78:
/* 813C8C78 | 7F A3 EB 78 */	mr r3, r29
/* 813C8C7C | 38 9F 03 35 */	addi r4, r31, 0x335
/* 813C8C80 | 38 A0 00 00 */	li r5, 0x0
/* 813C8C84 | 4B FD E8 51 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8C88 | 7F A3 EB 78 */	mr r3, r29
/* 813C8C8C | 38 9F 03 42 */	addi r4, r31, 0x342
/* 813C8C90 | 38 A0 00 00 */	li r5, 0x0
/* 813C8C94 | 4B FD E8 41 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
.L_813C8C98:
/* 813C8C98 | 7F A3 EB 78 */	mr r3, r29
/* 813C8C9C | 38 9F 03 01 */	addi r4, r31, 0x301
/* 813C8CA0 | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C8CA4 | 4B FD E7 5D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C8CA8 | 7F A3 EB 78 */	mr r3, r29
/* 813C8CAC | 38 9F 03 0C */	addi r4, r31, 0x30c
/* 813C8CB0 | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C8CB4 | 4B FD E7 4D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C8CB8 | 80 BE 00 40 */	lwz r5, 0x40(r30)
/* 813C8CBC | 3C 65 00 01 */	addis r3, r5, 0x1
/* 813C8CC0 | 88 03 F1 AC */	lbz r0, -0xe54(r3)
/* 813C8CC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C8CC8 | 40 82 00 2C */	bne .L_813C8CF4
/* 813C8CCC | 7F A3 EB 78 */	mr r3, r29
/* 813C8CD0 | 38 9F 03 01 */	addi r4, r31, 0x301
/* 813C8CD4 | 38 A5 00 10 */	addi r5, r5, 0x10
/* 813C8CD8 | 4B FD E7 29 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C8CDC | 80 BE 00 40 */	lwz r5, 0x40(r30)
/* 813C8CE0 | 7F A3 EB 78 */	mr r3, r29
/* 813C8CE4 | 38 9F 03 0C */	addi r4, r31, 0x30c
/* 813C8CE8 | 38 A5 00 52 */	addi r5, r5, 0x52
/* 813C8CEC | 4B FD E7 15 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C8CF0 | 48 00 00 14 */	b .L_813C8D04
.L_813C8CF4:
/* 813C8CF4 | 7F A3 EB 78 */	mr r3, r29
/* 813C8CF8 | 38 9F 03 01 */	addi r4, r31, 0x301
/* 813C8CFC | 38 AD 8C 2C */	li r5, lbl_81696C6C@sda21
/* 813C8D00 | 4B FD E7 01 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
.L_813C8D04:
/* 813C8D04 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813C8D08 | 3C 83 00 01 */	addis r4, r3, 0x1
/* 813C8D0C | 88 04 F1 AC */	lbz r0, -0xe54(r4)
/* 813C8D10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C8D14 | 40 82 00 1C */	bne .L_813C8D30
/* 813C8D18 | 48 00 0F 31 */	bl loadBannerTexture__Q33ipl5scene17WiiBannerFileInfoFv
/* 813C8D1C | 7C 65 1B 78 */	mr r5, r3
/* 813C8D20 | 7F A3 EB 78 */	mr r3, r29
/* 813C8D24 | 38 9F 03 B8 */	addi r4, r31, 0x3b8
/* 813C8D28 | 4B FD E7 39 */	bl set_texture__Q33ipl5scene13AnmControllerFPCcRC9_GXTexObj
/* 813C8D2C | 48 00 00 30 */	b .L_813C8D5C
.L_813C8D30:
/* 813C8D30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C8D34 | 38 80 00 0D */	li r4, 0xd
/* 813C8D38 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C8D3C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C8D40 | 48 04 23 F9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C8D44 | 38 81 00 54 */	addi r4, r1, 0x54
/* 813C8D48 | 4B FF C9 75 */	bl getCorruptBannerTexture__Q33ipl5scene6MemoryCFP9_GXTexObj
/* 813C8D4C | 7F A3 EB 78 */	mr r3, r29
/* 813C8D50 | 38 9F 03 B8 */	addi r4, r31, 0x3b8
/* 813C8D54 | 38 A1 00 54 */	addi r5, r1, 0x54
/* 813C8D58 | 4B FD E7 09 */	bl set_texture__Q33ipl5scene13AnmControllerFPCcRC9_GXTexObj
.L_813C8D5C:
/* 813C8D5C | 80 BE 00 40 */	lwz r5, 0x40(r30)
/* 813C8D60 | 3C 80 81 61 */	lis r4, scNumber__Q23ipl5scene@ha
/* 813C8D64 | 38 84 03 50 */	addi r4, r4, scNumber__Q23ipl5scene@l
/* 813C8D68 | 38 60 00 05 */	li r3, 0x5
/* 813C8D6C | 80 05 01 04 */	lwz r0, 0x104(r5)
/* 813C8D70 | 38 C1 00 3E */	addi r6, r1, 0x3e
/* 813C8D74 | 38 A4 FF FE */	subi r5, r4, 0x2
/* 813C8D78 | 7C 69 03 A6 */	mtctr r3
.L_813C8D7C:
/* 813C8D7C | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813C8D80 | A4 65 00 04 */	lhzu r3, 0x4(r5)
/* 813C8D84 | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813C8D88 | B4 66 00 04 */	sthu r3, 0x4(r6)
/* 813C8D8C | 42 00 FF F0 */	bdnz .L_813C8D7C
/* 813C8D90 | 38 80 00 64 */	li r4, 0x64
/* 813C8D94 | 38 60 00 00 */	li r3, 0x0
/* 813C8D98 | 7D 80 23 96 */	divwu r12, r0, r4
/* 813C8D9C | 39 60 00 0A */	li r11, 0xa
/* 813C8DA0 | 39 40 03 E8 */	li r10, 0x3e8
/* 813C8DA4 | B0 61 00 36 */	sth r3, 0x36(r1)
/* 813C8DA8 | 3B 81 00 40 */	addi r28, r1, 0x40
/* 813C8DAC | B0 61 00 38 */	sth r3, 0x38(r1)
/* 813C8DB0 | 7D 20 5B 96 */	divwu r9, r0, r11
/* 813C8DB4 | B0 61 00 3A */	sth r3, 0x3a(r1)
/* 813C8DB8 | 38 A0 00 03 */	li r5, 0x3
/* 813C8DBC | B0 61 00 3C */	sth r3, 0x3c(r1)
/* 813C8DC0 | 38 C1 00 36 */	addi r6, r1, 0x36
/* 813C8DC4 | 38 80 00 00 */	li r4, 0x0
/* 813C8DC8 | 7D 0C 5B 96 */	divwu r8, r12, r11
/* 813C8DCC | B0 61 00 3E */	sth r3, 0x3e(r1)
/* 813C8DD0 | B0 61 00 2C */	sth r3, 0x2c(r1)
/* 813C8DD4 | B0 61 00 2E */	sth r3, 0x2e(r1)
/* 813C8DD8 | B0 61 00 30 */	sth r3, 0x30(r1)
/* 813C8DDC | B0 61 00 32 */	sth r3, 0x32(r1)
/* 813C8DE0 | 7F 60 53 96 */	divwu r27, r0, r10
/* 813C8DE4 | B0 61 00 34 */	sth r3, 0x34(r1)
/* 813C8DE8 | 7D 48 59 D6 */	mullw r10, r8, r11
/* 813C8DEC | 57 68 08 3C */	slwi r8, r27, 1
/* 813C8DF0 | 7D 1C 42 2E */	lhzx r8, r28, r8
/* 813C8DF4 | B1 01 00 36 */	sth r8, 0x36(r1)
/* 813C8DF8 | 7C E9 5B 96 */	divwu r7, r9, r11
/* 813C8DFC | 7D 07 59 D6 */	mullw r8, r7, r11
/* 813C8E00 | 7C EA 60 50 */	subf r7, r10, r12
/* 813C8E04 | 54 E7 08 3C */	slwi r7, r7, 1
/* 813C8E08 | 7D 5C 3A 2E */	lhzx r10, r28, r7
/* 813C8E0C | 7C E9 59 D6 */	mullw r7, r9, r11
/* 813C8E10 | 7D 08 48 50 */	subf r8, r8, r9
/* 813C8E14 | B1 41 00 38 */	sth r10, 0x38(r1)
/* 813C8E18 | 55 08 08 3C */	slwi r8, r8, 1
/* 813C8E1C | 7D 1C 42 2E */	lhzx r8, r28, r8
/* 813C8E20 | 7C 07 00 50 */	subf r0, r7, r0
/* 813C8E24 | 54 00 08 3C */	slwi r0, r0, 1
/* 813C8E28 | B1 01 00 3A */	sth r8, 0x3a(r1)
/* 813C8E2C | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 813C8E30 | B0 01 00 3C */	sth r0, 0x3c(r1)
/* 813C8E34 | 7C A9 03 A6 */	mtctr r5
.L_813C8E38:
/* 813C8E38 | 7C 06 1A 2E */	lhzx r0, r6, r3
/* 813C8E3C | 28 00 00 30 */	cmplwi r0, 0x30
/* 813C8E40 | 40 82 00 10 */	bne .L_813C8E50
/* 813C8E44 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813C8E48 | 38 63 00 02 */	addi r3, r3, 0x2
/* 813C8E4C | 42 00 FF EC */	bdnz .L_813C8E38
.L_813C8E50:
/* 813C8E50 | 54 80 08 3C */	slwi r0, r4, 1
/* 813C8E54 | 38 81 00 36 */	addi r4, r1, 0x36
/* 813C8E58 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813C8E5C | 7C 84 02 14 */	add r4, r4, r0
/* 813C8E60 | 48 23 F8 69 */	bl fn_816086C8
/* 813C8E64 | 7F A3 EB 78 */	mr r3, r29
/* 813C8E68 | 38 9F 02 E9 */	addi r4, r31, 0x2e9
/* 813C8E6C | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 813C8E70 | 4B FD E5 91 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C8E74 | C0 22 86 58 */	lfs f1, lbl_81694A58@sda21(r0)
/* 813C8E78 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813C8E7C | FC 40 08 90 */	fmr f2, f1
/* 813C8E80 | FC 60 08 90 */	fmr f3, f1
/* 813C8E84 | 4B F9 9B D9 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813C8E88 | 3C 80 81 65 */	lis r4, "@STRING@getTranslate__Q33ipl5scene11SavedataBoxFv"@ha
/* 813C8E8C | 7F C3 F3 78 */	mr r3, r30
/* 813C8E90 | 38 84 1D 24 */	addi r4, r4, "@STRING@getTranslate__Q33ipl5scene11SavedataBoxFv"@l
/* 813C8E94 | 4B FD E7 31 */	bl get_translate__Q33ipl5scene13AnmControllerFPCc
/* 813C8E98 | 7C 64 1B 78 */	mr r4, r3
/* 813C8E9C | 38 61 00 20 */	addi r3, r1, 0x20
/* 813C8EA0 | 4B FC E7 05 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813C8EA4 | 38 7D 00 60 */	addi r3, r29, 0x60
/* 813C8EA8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813C8EAC | 48 00 00 C1 */	bl __as__Q33ipl4math4VEC3FRCQ33ipl4math4VEC3
/* 813C8EB0 | 38 7D 00 6C */	addi r3, r29, 0x6c
/* 813C8EB4 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813C8EB8 | 48 00 00 B5 */	bl __as__Q33ipl4math4VEC3FRCQ33ipl4math4VEC3
/* 813C8EBC | C0 22 86 5C */	lfs f1, lbl_81694A5C@sda21(r0)
/* 813C8EC0 | 38 7D 00 40 */	addi r3, r29, 0x40
/* 813C8EC4 | C0 42 86 58 */	lfs f2, lbl_81694A58@sda21(r0)
/* 813C8EC8 | 38 80 00 00 */	li r4, 0x0
/* 813C8ECC | C0 62 86 60 */	lfs f3, lbl_81694A60@sda21(r0)
/* 813C8ED0 | 4B F9 99 81 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813C8ED4 | 38 7D 00 40 */	addi r3, r29, 0x40
/* 813C8ED8 | 4B F9 99 99 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813C8EDC | 38 00 00 01 */	li r0, 0x1
/* 813C8EE0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813C8EE4 | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 813C8EE8 | 38 9D 00 40 */	addi r4, r29, 0x40
/* 813C8EEC | 4B FD D4 85 */	bl "get__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>CFv"
/* 813C8EF0 | 7F A3 EB 78 */	mr r3, r29
/* 813C8EF4 | 38 9F 03 17 */	addi r4, r31, 0x317
/* 813C8EF8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813C8EFC | 4B FD E6 6D */	bl set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3
/* 813C8F00 | 7F A3 EB 78 */	mr r3, r29
/* 813C8F04 | 38 80 00 FC */	li r4, 0xfc
/* 813C8F08 | 48 00 06 5D */	bl change_button_text__Q33ipl5scene12SavedataEditFUl
/* 813C8F0C | 3B 60 00 00 */	li r27, 0x0
/* 813C8F10 | 48 00 00 10 */	b .L_813C8F20
.L_813C8F14:
/* 813C8F14 | 80 9B 00 08 */	lwz r4, 0x8(r27)
/* 813C8F18 | 7F A3 EB 78 */	mr r3, r29
/* 813C8F1C | 4B FD E3 D5 */	bl clear_anmpane__Q33ipl5scene13AnmControllerFPCc
.L_813C8F20:
/* 813C8F20 | 7F 64 DB 78 */	mr r4, r27
/* 813C8F24 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813C8F28 | 48 14 93 B5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C8F2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8F30 | 7C 7B 1B 78 */	mr r27, r3
/* 813C8F34 | 40 82 FF E0 */	bne .L_813C8F14
/* 813C8F38 | 7F A3 EB 78 */	mr r3, r29
/* 813C8F3C | 38 80 00 00 */	li r4, 0x0
/* 813C8F40 | 38 A0 00 00 */	li r5, 0x0
/* 813C8F44 | 38 C0 00 01 */	li r6, 0x1
/* 813C8F48 | 4B FD E1 B9 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C8F4C | 38 00 00 01 */	li r0, 0x1
/* 813C8F50 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813C8F54 | 90 1D 00 3C */	stw r0, 0x3c(r29)
/* 813C8F58 | 48 23 05 B5 */	bl _restgpr_27
/* 813C8F5C | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813C8F60 | 7C 08 03 A6 */	mtlr r0
/* 813C8F64 | 38 21 00 90 */	addi r1, r1, 0x90
/* 813C8F68 | 4E 80 00 20 */	blr
.endfn anmFadein__Q33ipl5scene12SavedataEditFPQ33ipl5scene11SavedataBox

# .text:0xAE8 | 0x813C8F6C | size: 0x1C
# ipl::math::VEC3::operator=(const ipl::math::VEC3&)
.fn __as__Q33ipl4math4VEC3FRCQ33ipl4math4VEC3, weak
/* 813C8F6C | C0 44 00 00 */	lfs f2, 0x0(r4)
/* 813C8F70 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 813C8F74 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 813C8F78 | D0 43 00 00 */	stfs f2, 0x0(r3)
/* 813C8F7C | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 813C8F80 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 813C8F84 | 4E 80 00 20 */	blr
.endfn __as__Q33ipl4math4VEC3FRCQ33ipl4math4VEC3

# .text:0xB04 | 0x813C8F88 | size: 0x54
# ipl::scene::SavedataEdit::anmFadeout()
.fn anmFadeout__Q33ipl5scene12SavedataEditFv, global
/* 813C8F88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C8F8C | 7C 08 02 A6 */	mflr r0
/* 813C8F90 | 38 80 01 3B */	li r4, 0x13b
/* 813C8F94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C8F98 | 38 00 00 00 */	li r0, 0x0
/* 813C8F9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C8FA0 | 7C 7F 1B 78 */	mr r31, r3
/* 813C8FA4 | 90 03 00 78 */	stw r0, 0x78(r3)
/* 813C8FA8 | 48 00 05 BD */	bl change_button_text__Q33ipl5scene12SavedataEditFUl
/* 813C8FAC | 7F E3 FB 78 */	mr r3, r31
/* 813C8FB0 | 38 80 00 01 */	li r4, 0x1
/* 813C8FB4 | 38 A0 00 00 */	li r5, 0x0
/* 813C8FB8 | 38 C0 00 01 */	li r6, 0x1
/* 813C8FBC | 4B FD E1 45 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C8FC0 | 38 00 00 02 */	li r0, 0x2
/* 813C8FC4 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813C8FC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C8FCC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C8FD0 | 7C 08 03 A6 */	mtlr r0
/* 813C8FD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C8FD8 | 4E 80 00 20 */	blr
.endfn anmFadeout__Q33ipl5scene12SavedataEditFv

# .text:0xB58 | 0x813C8FDC | size: 0x40
# ipl::scene::SavedataEdit::anmHideBtn0Dialog()
.fn anmHideBtn0Dialog__Q33ipl5scene12SavedataEditFv, global
/* 813C8FDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C8FE0 | 7C 08 02 A6 */	mflr r0
/* 813C8FE4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C8FE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C8FEC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C8FF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C8FF4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C8FF8 | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813C8FFC | 4B F7 E9 09 */	bl terminate__Q23ipl12DialogWindowFv
/* 813C9000 | 38 00 00 03 */	li r0, 0x3
/* 813C9004 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813C9008 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C900C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9010 | 7C 08 03 A6 */	mtlr r0
/* 813C9014 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9018 | 4E 80 00 20 */	blr
.endfn anmHideBtn0Dialog__Q33ipl5scene12SavedataEditFv

# .text:0xB98 | 0x813C901C | size: 0x20
# ipl::scene::SavedataEdit::anmShowBtn0Dialog(unsigned long, bool, bool)
.fn anmShowBtn0Dialog__Q33ipl5scene12SavedataEditFUlbb, global
/* 813C901C | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 813C9020 | 20 65 00 00 */	subfic r3, r5, 0x0
/* 813C9024 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 813C9028 | 38 00 00 B4 */	li r0, 0xb4
/* 813C902C | 7C A3 19 10 */	subfe r5, r3, r3
/* 813C9030 | 80 67 00 AC */	lwz r3, 0xac(r7)
/* 813C9034 | 7C 05 28 78 */	andc r5, r0, r5
/* 813C9038 | 4B F7 D4 14 */	b callBtn0__Q23ipl12DialogWindowFUlUlb
.endfn anmShowBtn0Dialog__Q33ipl5scene12SavedataEditFUlbb

# .text:0xBB8 | 0x813C903C | size: 0x40
# ipl::scene::SavedataEdit::anmShowS2Btn2Dialog(unsigned long)
.fn anmShowS2Btn2Dialog__Q33ipl5scene12SavedataEditFUl, global
/* 813C903C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9040 | 7C 08 02 A6 */	mflr r0
/* 813C9044 | 3C C0 81 65 */	lis r6, lbl_81651B54@ha
/* 813C9048 | 7C 85 23 78 */	mr r5, r4
/* 813C904C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9050 | 38 86 1B 54 */	addi r4, r6, lbl_81651B54@l
/* 813C9054 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9058 | 7C 7F 1B 78 */	mr r31, r3
/* 813C905C | 4B FD E3 1D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C9060 | 38 00 00 04 */	li r0, 0x4
/* 813C9064 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813C9068 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C906C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9070 | 7C 08 03 A6 */	mtlr r0
/* 813C9074 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9078 | 4E 80 00 20 */	blr
.endfn anmShowS2Btn2Dialog__Q33ipl5scene12SavedataEditFUl

# .text:0xBF8 | 0x813C907C | size: 0x94
# ipl::scene::SavedataEdit::anmSelectFadein()
.fn anmSelectFadein__Q33ipl5scene12SavedataEditFv, global
/* 813C907C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9080 | 7C 08 02 A6 */	mflr r0
/* 813C9084 | 3C 80 81 65 */	lis r4, lbl_81651B54@ha
/* 813C9088 | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C908C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9090 | 38 84 1B 54 */	addi r4, r4, lbl_81651B54@l
/* 813C9094 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9098 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C909C | 7C 7E 1B 78 */	mr r30, r3
/* 813C90A0 | 4B FD E3 61 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C90A4 | 7F C3 F3 78 */	mr r3, r30
/* 813C90A8 | 38 80 00 08 */	li r4, 0x8
/* 813C90AC | 38 A0 00 01 */	li r5, 0x1
/* 813C90B0 | 38 C0 00 01 */	li r6, 0x1
/* 813C90B4 | 4B FD E0 4D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C90B8 | 7F C3 F3 78 */	mr r3, r30
/* 813C90BC | 38 80 00 FC */	li r4, 0xfc
/* 813C90C0 | 48 00 04 A5 */	bl change_button_text__Q33ipl5scene12SavedataEditFUl
/* 813C90C4 | 3B E0 00 00 */	li r31, 0x0
/* 813C90C8 | 48 00 00 10 */	b .L_813C90D8
.L_813C90CC:
/* 813C90CC | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 813C90D0 | 7F C3 F3 78 */	mr r3, r30
/* 813C90D4 | 4B FD E2 1D */	bl clear_anmpane__Q33ipl5scene13AnmControllerFPCc
.L_813C90D8:
/* 813C90D8 | 7F E4 FB 78 */	mr r4, r31
/* 813C90DC | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813C90E0 | 48 14 91 FD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C90E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C90E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C90EC | 40 82 FF E0 */	bne .L_813C90CC
/* 813C90F0 | 38 00 00 06 */	li r0, 0x6
/* 813C90F4 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813C90F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C90FC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C9100 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9104 | 7C 08 03 A6 */	mtlr r0
/* 813C9108 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C910C | 4E 80 00 20 */	blr
.endfn anmSelectFadein__Q33ipl5scene12SavedataEditFv

# .text:0xC8C | 0x813C9110 | size: 0x40
# ipl::scene::SavedataEdit::anmSelectFadeout(unsigned long)
.fn anmSelectFadeout__Q33ipl5scene12SavedataEditFUl, global
/* 813C9110 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9114 | 7C 08 02 A6 */	mflr r0
/* 813C9118 | 3C C0 81 65 */	lis r6, lbl_81651B54@ha
/* 813C911C | 7C 85 23 78 */	mr r5, r4
/* 813C9120 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9124 | 38 86 1B 54 */	addi r4, r6, lbl_81651B54@l
/* 813C9128 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C912C | 7C 7F 1B 78 */	mr r31, r3
/* 813C9130 | 4B FD E2 49 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C9134 | 38 00 00 07 */	li r0, 0x7
/* 813C9138 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813C913C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9140 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9144 | 7C 08 03 A6 */	mtlr r0
/* 813C9148 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C914C | 4E 80 00 20 */	blr
.endfn anmSelectFadeout__Q33ipl5scene12SavedataEditFUl

# .text:0xCCC | 0x813C9150 | size: 0x44
# ipl::scene::SavedataEdit::anmTextFadein(unsigned long)
.fn anmTextFadein__Q33ipl5scene12SavedataEditFUl, global
/* 813C9150 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9154 | 7C 08 02 A6 */	mflr r0
/* 813C9158 | 38 A0 00 00 */	li r5, 0x0
/* 813C915C | 38 C0 00 01 */	li r6, 0x1
/* 813C9160 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9164 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9168 | 7C 7F 1B 78 */	mr r31, r3
/* 813C916C | 90 83 00 7C */	stw r4, 0x7c(r3)
/* 813C9170 | 38 80 00 09 */	li r4, 0x9
/* 813C9174 | 4B FD DF 8D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C9178 | 38 00 00 09 */	li r0, 0x9
/* 813C917C | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813C9180 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9184 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9188 | 7C 08 03 A6 */	mtlr r0
/* 813C918C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9190 | 4E 80 00 20 */	blr
.endfn anmTextFadein__Q33ipl5scene12SavedataEditFUl

# .text:0xD10 | 0x813C9194 | size: 0x7C
# ipl::scene::SavedataEdit::anmTextFadeout()
.fn anmTextFadeout__Q33ipl5scene12SavedataEditFv, global
/* 813C9194 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9198 | 7C 08 02 A6 */	mflr r0
/* 813C919C | 38 80 00 0A */	li r4, 0xa
/* 813C91A0 | 38 A0 00 00 */	li r5, 0x0
/* 813C91A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C91A8 | 38 C0 00 01 */	li r6, 0x1
/* 813C91AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C91B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C91B4 | 7C 7E 1B 78 */	mr r30, r3
/* 813C91B8 | 4B FD DF 49 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C91BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C91C0 | 38 80 00 16 */	li r4, 0x16
/* 813C91C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C91C8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C91CC | 48 04 1F 6D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C91D0 | 7C 7F 1B 78 */	mr r31, r3
/* 813C91D4 | 38 80 00 03 */	li r4, 0x3
/* 813C91D8 | 38 A0 01 3B */	li r5, 0x13b
/* 813C91DC | 48 03 E8 1D */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813C91E0 | 7F E3 FB 78 */	mr r3, r31
/* 813C91E4 | 38 80 00 01 */	li r4, 0x1
/* 813C91E8 | 38 A0 00 00 */	li r5, 0x0
/* 813C91EC | 48 03 E8 0D */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813C91F0 | 38 00 00 0A */	li r0, 0xa
/* 813C91F4 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813C91F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C91FC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C9200 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9204 | 7C 08 03 A6 */	mtlr r0
/* 813C9208 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C920C | 4E 80 00 20 */	blr
.endfn anmTextFadeout__Q33ipl5scene12SavedataEditFv

# .text:0xD8C | 0x813C9210 | size: 0x48
# ipl::scene::SavedataEdit::anmStartWaitAnm()
.fn anmStartWaitAnm__Q33ipl5scene12SavedataEditFv, global
/* 813C9210 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9214 | 7C 08 02 A6 */	mflr r0
/* 813C9218 | 38 8D 8C 25 */	li r4, lbl_81696C65@sda21
/* 813C921C | 38 A0 00 01 */	li r5, 0x1
/* 813C9220 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9224 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9228 | 7C 7F 1B 78 */	mr r31, r3
/* 813C922C | 4B FD E2 A9 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C9230 | 7F E3 FB 78 */	mr r3, r31
/* 813C9234 | 38 80 00 0B */	li r4, 0xb
/* 813C9238 | 38 A0 00 02 */	li r5, 0x2
/* 813C923C | 38 C0 00 01 */	li r6, 0x1
/* 813C9240 | 4B FD DE C1 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C9244 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9248 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C924C | 7C 08 03 A6 */	mtlr r0
/* 813C9250 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9254 | 4E 80 00 20 */	blr
.endfn anmStartWaitAnm__Q33ipl5scene12SavedataEditFv

# .text:0xDD4 | 0x813C9258 | size: 0x40
# ipl::scene::SavedataEdit::anmStopWaitAnm()
.fn anmStopWaitAnm__Q33ipl5scene12SavedataEditFv, global
/* 813C9258 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C925C | 7C 08 02 A6 */	mflr r0
/* 813C9260 | 38 8D 8C 25 */	li r4, lbl_81696C65@sda21
/* 813C9264 | 38 A0 00 00 */	li r5, 0x0
/* 813C9268 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C926C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9270 | 7C 7F 1B 78 */	mr r31, r3
/* 813C9274 | 4B FD E2 61 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C9278 | 7F E3 FB 78 */	mr r3, r31
/* 813C927C | 38 80 00 0B */	li r4, 0xb
/* 813C9280 | 4B FD DE F1 */	bl stop_animation__Q33ipl5scene13AnmControllerFi
/* 813C9284 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9288 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C928C | 7C 08 03 A6 */	mtlr r0
/* 813C9290 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9294 | 4E 80 00 20 */	blr
.endfn anmStopWaitAnm__Q33ipl5scene12SavedataEditFv

# .text:0xE14 | 0x813C9298 | size: 0x94
# ipl::scene::SavedataEdit::anmClear()
.fn anmClear__Q33ipl5scene12SavedataEditFv, global
/* 813C9298 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C929C | 7C 08 02 A6 */	mflr r0
/* 813C92A0 | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C92A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C92A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C92AC | 3F E0 81 65 */	lis r31, lbl_81651860@ha
/* 813C92B0 | 3B FF 18 60 */	addi r31, r31, lbl_81651860@l
/* 813C92B4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C92B8 | 7C 7E 1B 78 */	mr r30, r3
/* 813C92BC | 38 9F 03 01 */	addi r4, r31, 0x301
/* 813C92C0 | 4B FD E1 41 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C92C4 | 7F C3 F3 78 */	mr r3, r30
/* 813C92C8 | 38 9F 03 0C */	addi r4, r31, 0x30c
/* 813C92CC | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C92D0 | 4B FD E1 31 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C92D4 | 7F C3 F3 78 */	mr r3, r30
/* 813C92D8 | 38 9F 02 E9 */	addi r4, r31, 0x2e9
/* 813C92DC | 38 AD 8C 12 */	li r5, lbl_81696C52@sda21
/* 813C92E0 | 4B FD E1 21 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C92E4 | 7F C3 F3 78 */	mr r3, r30
/* 813C92E8 | 38 9F 03 B8 */	addi r4, r31, 0x3b8
/* 813C92EC | 38 A0 00 00 */	li r5, 0x0
/* 813C92F0 | 4B FD E1 E5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C92F4 | 7F C3 F3 78 */	mr r3, r30
/* 813C92F8 | 38 9F 03 2B */	addi r4, r31, 0x32b
/* 813C92FC | 38 A0 00 00 */	li r5, 0x0
/* 813C9300 | 4B FD E1 D5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C9304 | 7F C3 F3 78 */	mr r3, r30
/* 813C9308 | 38 9F 03 C2 */	addi r4, r31, 0x3c2
/* 813C930C | 38 A0 00 00 */	li r5, 0x0
/* 813C9310 | 4B FD E1 C5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C9314 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9318 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C931C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C9320 | 7C 08 03 A6 */	mtlr r0
/* 813C9324 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9328 | 4E 80 00 20 */	blr
.endfn anmClear__Q33ipl5scene12SavedataEditFv

# .text:0xEA8 | 0x813C932C | size: 0x238
# ipl::scene::SavedataEdit::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene12SavedataEditFUlUlPv, global
/* 813C932C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C9330 | 7C 08 02 A6 */	mflr r0
/* 813C9334 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C9338 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C933C | 48 23 01 85 */	bl _savegpr_27
/* 813C9340 | 7C 7B 1B 78 */	mr r27, r3
/* 813C9344 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813C9348 | 3F E0 81 65 */	lis r31, lbl_81651860@ha
/* 813C934C | 7C BC 2B 78 */	mr r28, r5
/* 813C9350 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C9354 | 7C DD 33 78 */	mr r29, r6
/* 813C9358 | 3B FF 18 60 */	addi r31, r31, lbl_81651860@l
/* 813C935C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813C9360 | 7D 89 03 A6 */	mtctr r12
/* 813C9364 | 4E 80 04 21 */	bctrl
/* 813C9368 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C936C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813C9370 | 7D 89 03 A6 */	mtctr r12
/* 813C9374 | 4E 80 04 21 */	bctrl
/* 813C9378 | 80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 813C937C | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813C9380 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813C9384 | 41 82 01 C8 */	beq .L_813C954C
/* 813C9388 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 813C938C | 41 82 00 20 */	beq .L_813C93AC
/* 813C9390 | 40 80 00 10 */	bge .L_813C93A0
/* 813C9394 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813C9398 | 40 80 00 84 */	bge .L_813C941C
/* 813C939C | 48 00 01 B0 */	b .L_813C954C
.L_813C93A0:
/* 813C93A0 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813C93A4 | 40 80 01 A8 */	bge .L_813C954C
/* 813C93A8 | 48 00 00 3C */	b .L_813C93E4
.L_813C93AC:
/* 813C93AC | 7F 63 DB 78 */	mr r3, r27
/* 813C93B0 | 7F C4 F3 78 */	mr r4, r30
/* 813C93B4 | 4B FD DE BD */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C93B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C93BC | 7C 7E 1B 78 */	mr r30, r3
/* 813C93C0 | 41 82 01 8C */	beq .L_813C954C
/* 813C93C4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C93C8 | 38 80 00 0D */	li r4, 0xd
/* 813C93CC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C93D0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C93D4 | 48 04 1D 65 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C93D8 | 7F C4 F3 78 */	mr r4, r30
/* 813C93DC | 4B FF BC 71 */	bl onPoint__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane
/* 813C93E0 | 48 00 01 6C */	b .L_813C954C
.L_813C93E4:
/* 813C93E4 | 7F 63 DB 78 */	mr r3, r27
/* 813C93E8 | 7F C4 F3 78 */	mr r4, r30
/* 813C93EC | 4B FD DE 85 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C93F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C93F4 | 7C 7E 1B 78 */	mr r30, r3
/* 813C93F8 | 41 82 01 54 */	beq .L_813C954C
/* 813C93FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C9400 | 38 80 00 0D */	li r4, 0xd
/* 813C9404 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C9408 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C940C | 48 04 1D 2D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C9410 | 7F C4 F3 78 */	mr r4, r30
/* 813C9414 | 4B FF BC F9 */	bl onLeft__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane
/* 813C9418 | 48 00 01 34 */	b .L_813C954C
.L_813C941C:
/* 813C941C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813C9420 | 3C 80 00 10 */	lis r4, 0x10
/* 813C9424 | 7F A3 EB 78 */	mr r3, r29
/* 813C9428 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C942C | 38 84 08 00 */	addi r4, r4, 0x800
/* 813C9430 | 7D 89 03 A6 */	mtctr r12
/* 813C9434 | 4E 80 04 21 */	bctrl
/* 813C9438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C943C | 41 82 01 10 */	beq .L_813C954C
/* 813C9440 | 7F 63 DB 78 */	mr r3, r27
/* 813C9444 | 7F C4 F3 78 */	mr r4, r30
/* 813C9448 | 4B FD DE 29 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C944C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C9450 | 41 82 00 FC */	beq .L_813C954C
/* 813C9454 | 83 C3 00 08 */	lwz r30, 0x8(r3)
/* 813C9458 | 38 9F 03 75 */	addi r4, r31, 0x375
/* 813C945C | 7F C3 F3 78 */	mr r3, r30
/* 813C9460 | 48 23 90 21 */	bl strcmp
/* 813C9464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C9468 | 40 82 00 44 */	bne .L_813C94AC
/* 813C946C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C9470 | 38 9F 03 CC */	addi r4, r31, 0x3cc
/* 813C9474 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C9478 | 4B FA 1F F5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C947C | 7F 63 DB 78 */	mr r3, r27
/* 813C9480 | 38 80 00 04 */	li r4, 0x4
/* 813C9484 | 38 A0 00 00 */	li r5, 0x0
/* 813C9488 | 38 C0 00 01 */	li r6, 0x1
/* 813C948C | 4B FD DC 75 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C9490 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C9494 | 38 80 00 0D */	li r4, 0xd
/* 813C9498 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C949C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C94A0 | 48 04 1C 99 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C94A4 | 4B FF C0 79 */	bl onTrigCopy__Q33ipl5scene6MemoryFv
/* 813C94A8 | 48 00 00 A4 */	b .L_813C954C
.L_813C94AC:
/* 813C94AC | 7F C3 F3 78 */	mr r3, r30
/* 813C94B0 | 38 9F 03 6B */	addi r4, r31, 0x36b
/* 813C94B4 | 48 23 8F CD */	bl strcmp
/* 813C94B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C94BC | 40 82 00 44 */	bne .L_813C9500
/* 813C94C0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C94C4 | 38 9F 03 CC */	addi r4, r31, 0x3cc
/* 813C94C8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C94CC | 4B FA 1F A1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C94D0 | 7F 63 DB 78 */	mr r3, r27
/* 813C94D4 | 38 80 00 0E */	li r4, 0xe
/* 813C94D8 | 38 A0 00 00 */	li r5, 0x0
/* 813C94DC | 38 C0 00 01 */	li r6, 0x1
/* 813C94E0 | 4B FD DC 21 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C94E4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C94E8 | 38 80 00 0D */	li r4, 0xd
/* 813C94EC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C94F0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C94F4 | 48 04 1C 45 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C94F8 | 4B FF C1 51 */	bl iplMemory_813C5648__Q33ipl5scene6MemoryFv
/* 813C94FC | 48 00 00 50 */	b .L_813C954C
.L_813C9500:
/* 813C9500 | 7F C3 F3 78 */	mr r3, r30
/* 813C9504 | 38 9F 03 7F */	addi r4, r31, 0x37f
/* 813C9508 | 48 23 8F 79 */	bl strcmp
/* 813C950C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C9510 | 40 82 00 3C */	bne .L_813C954C
/* 813C9514 | 80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 813C9518 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813C951C | 41 82 00 30 */	beq .L_813C954C
/* 813C9520 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C9524 | 38 9F 03 CC */	addi r4, r31, 0x3cc
/* 813C9528 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C952C | 4B FA 1F 41 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C9530 | 7F 63 DB 78 */	mr r3, r27
/* 813C9534 | 38 80 00 07 */	li r4, 0x7
/* 813C9538 | 38 A0 00 00 */	li r5, 0x0
/* 813C953C | 38 C0 00 01 */	li r6, 0x1
/* 813C9540 | 4B FD DB C1 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C9544 | 38 00 00 0B */	li r0, 0xb
/* 813C9548 | 90 1B 00 3C */	stw r0, 0x3c(r27)
.L_813C954C:
/* 813C954C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C9550 | 48 22 FF BD */	bl _restgpr_27
/* 813C9554 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C9558 | 7C 08 03 A6 */	mtlr r0
/* 813C955C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C9560 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene12SavedataEditFUlUlPv

# .text:0x10E0 | 0x813C9564 | size: 0xAC
# ipl::scene::SavedataEdit::change_button_text(unsigned long)
.fn change_button_text__Q33ipl5scene12SavedataEditFUl, global
/* 813C9564 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9568 | 7C 08 02 A6 */	mflr r0
/* 813C956C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C9570 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9574 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C9578 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C957C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C9580 | 7C 9E 23 78 */	mr r30, r4
/* 813C9584 | 38 80 00 16 */	li r4, 0x16
/* 813C9588 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C958C | 48 04 1B AD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C9590 | 7C 7F 1B 78 */	mr r31, r3
/* 813C9594 | 38 80 00 02 */	li r4, 0x2
/* 813C9598 | 38 A0 00 00 */	li r5, 0x0
/* 813C959C | 48 03 E4 5D */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813C95A0 | 7F E3 FB 78 */	mr r3, r31
/* 813C95A4 | 7F C5 F3 78 */	mr r5, r30
/* 813C95A8 | 38 80 00 03 */	li r4, 0x3
/* 813C95AC | 48 03 E4 4D */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813C95B0 | 7F E3 FB 78 */	mr r3, r31
/* 813C95B4 | 38 80 00 01 */	li r4, 0x1
/* 813C95B8 | 38 A0 00 00 */	li r5, 0x0
/* 813C95BC | 48 03 E4 3D */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813C95C0 | 2C 1E 00 FC */	cmpwi r30, 0xfc
/* 813C95C4 | 41 82 00 20 */	beq .L_813C95E4
/* 813C95C8 | 40 80 00 10 */	bge .L_813C95D8
/* 813C95CC | 2C 1E 00 2E */	cmpwi r30, 0x2e
/* 813C95D0 | 41 82 00 20 */	beq .L_813C95F0
/* 813C95D4 | 48 00 00 24 */	b .L_813C95F8
.L_813C95D8:
/* 813C95D8 | 2C 1E 01 3B */	cmpwi r30, 0x13b
/* 813C95DC | 41 82 00 08 */	beq .L_813C95E4
/* 813C95E0 | 48 00 00 18 */	b .L_813C95F8
.L_813C95E4:
/* 813C95E4 | 38 00 00 00 */	li r0, 0x0
/* 813C95E8 | 90 1F 02 88 */	stw r0, 0x288(r31)
/* 813C95EC | 48 00 00 0C */	b .L_813C95F8
.L_813C95F0:
/* 813C95F0 | 38 00 00 01 */	li r0, 0x1
/* 813C95F4 | 90 1F 02 88 */	stw r0, 0x288(r31)
.L_813C95F8:
/* 813C95F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C95FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9600 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C9604 | 7C 08 03 A6 */	mtlr r0
/* 813C9608 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C960C | 4E 80 00 20 */	blr
.endfn change_button_text__Q33ipl5scene12SavedataEditFUl

# .text:0x118C | 0x813C9610 | size: 0x84
# ipl::scene::SavedataEdit::on_fadein()
.fn on_fadein__Q33ipl5scene12SavedataEditFv, global
/* 813C9610 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C9614 | 7C 08 02 A6 */	mflr r0
/* 813C9618 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C961C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813C9620 | 7C 7F 1B 78 */	mr r31, r3
/* 813C9624 | 81 83 00 40 */	lwz r12, 0x40(r3)
/* 813C9628 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C962C | 7D 89 03 A6 */	mtctr r12
/* 813C9630 | 38 63 00 40 */	addi r3, r3, 0x40
/* 813C9634 | 4E 80 04 21 */	bctrl
/* 813C9638 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813C963C | 38 9F 00 40 */	addi r4, r31, 0x40
/* 813C9640 | 4B FD CD 31 */	bl "get__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>CFv"
/* 813C9644 | 3C 80 81 65 */	lis r4, lbl_81651B77@ha
/* 813C9648 | 7F E3 FB 78 */	mr r3, r31
/* 813C964C | 38 84 1B 77 */	addi r4, r4, lbl_81651B77@l
/* 813C9650 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813C9654 | 4B FD DF 15 */	bl set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3
/* 813C9658 | 7F E3 FB 78 */	mr r3, r31
/* 813C965C | 38 80 00 00 */	li r4, 0x0
/* 813C9660 | 4B FD DB 45 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C9664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C9668 | 40 82 00 18 */	bne .L_813C9680
/* 813C966C | 80 1F 00 54 */	lwz r0, 0x54(r31)
/* 813C9670 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C9674 | 41 82 00 0C */	beq .L_813C9680
/* 813C9678 | 38 00 00 00 */	li r0, 0x0
/* 813C967C | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813C9680:
/* 813C9680 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C9684 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813C9688 | 7C 08 03 A6 */	mtlr r0
/* 813C968C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C9690 | 4E 80 00 20 */	blr
.endfn on_fadein__Q33ipl5scene12SavedataEditFv

# .text:0x1210 | 0x813C9694 | size: 0x2C
# ipl::scene::SavedataEdit::on_hide_btn0_dialog()
.fn on_hide_btn0_dialog__Q33ipl5scene12SavedataEditFv, global
/* 813C9694 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C9698 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C969C | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813C96A0 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813C96A4 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813C96A8 | 41 82 00 0C */	beq .L_813C96B4
/* 813C96AC | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813C96B0 | 4C 82 00 20 */	bnelr
.L_813C96B4:
/* 813C96B4 | 38 00 00 00 */	li r0, 0x0
/* 813C96B8 | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 813C96BC | 4E 80 00 20 */	blr
.endfn on_hide_btn0_dialog__Q33ipl5scene12SavedataEditFv

# .text:0x123C | 0x813C96C0 | size: 0x6C
# ipl::scene::SavedataEdit::on_show_btn2_dialog1st()
.fn on_show_btn2_dialog1st__Q33ipl5scene12SavedataEditFv, global
/* 813C96C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C96C4 | 7C 08 02 A6 */	mflr r0
/* 813C96C8 | 38 80 00 04 */	li r4, 0x4
/* 813C96CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C96D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C96D4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C96D8 | 4B FD DA CD */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C96DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C96E0 | 40 82 00 38 */	bne .L_813C9718
/* 813C96E4 | 7F E3 FB 78 */	mr r3, r31
/* 813C96E8 | 38 80 00 08 */	li r4, 0x8
/* 813C96EC | 38 A0 00 00 */	li r5, 0x0
/* 813C96F0 | 38 C0 00 01 */	li r6, 0x1
/* 813C96F4 | 4B FD DA 0D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C96F8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C96FC | 38 80 00 16 */	li r4, 0x16
/* 813C9700 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C9704 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C9708 | 48 04 1A 31 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C970C | 48 03 E1 C1 */	bl hideBtn__Q33ipl5scene13SettingButtonFv
/* 813C9710 | 38 00 00 05 */	li r0, 0x5
/* 813C9714 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813C9718:
/* 813C9718 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C971C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9720 | 7C 08 03 A6 */	mtlr r0
/* 813C9724 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9728 | 4E 80 00 20 */	blr
.endfn on_show_btn2_dialog1st__Q33ipl5scene12SavedataEditFv

# .text:0x12A8 | 0x813C972C | size: 0x5C
# ipl::scene::SavedataEdit::on_show_btn2_dialog2nd()
.fn on_show_btn2_dialog2nd__Q33ipl5scene12SavedataEditFv, global
/* 813C972C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9730 | 7C 08 02 A6 */	mflr r0
/* 813C9734 | 38 80 00 08 */	li r4, 0x8
/* 813C9738 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C973C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9740 | 7C 7F 1B 78 */	mr r31, r3
/* 813C9744 | 4B FD DA 61 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C9748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C974C | 40 82 00 28 */	bne .L_813C9774
/* 813C9750 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C9754 | 38 80 01 42 */	li r4, 0x142
/* 813C9758 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C975C | 38 A0 01 41 */	li r5, 0x141
/* 813C9760 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813C9764 | 38 C0 00 01 */	li r6, 0x1
/* 813C9768 | 4B F7 D8 25 */	bl callS2Btn2__Q23ipl12DialogWindowFUlUlb
/* 813C976C | 38 00 00 00 */	li r0, 0x0
/* 813C9770 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813C9774:
/* 813C9774 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9778 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C977C | 7C 08 03 A6 */	mtlr r0
/* 813C9780 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9784 | 4E 80 00 20 */	blr
.endfn on_show_btn2_dialog2nd__Q33ipl5scene12SavedataEditFv

# .text:0x1304 | 0x813C9788 | size: 0x60
# ipl::scene::SavedataEdit::on_select_fadeout1st()
.fn on_select_fadeout1st__Q33ipl5scene12SavedataEditFv, global
/* 813C9788 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C978C | 7C 08 02 A6 */	mflr r0
/* 813C9790 | 38 80 00 04 */	li r4, 0x4
/* 813C9794 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9798 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C979C | 7C 7F 1B 78 */	mr r31, r3
/* 813C97A0 | 4B FD DA 05 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C97A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C97A8 | 40 82 00 2C */	bne .L_813C97D4
/* 813C97AC | 7F E3 FB 78 */	mr r3, r31
/* 813C97B0 | 38 80 00 08 */	li r4, 0x8
/* 813C97B4 | 38 A0 00 00 */	li r5, 0x0
/* 813C97B8 | 38 C0 00 01 */	li r6, 0x1
/* 813C97BC | 4B FD D9 45 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C97C0 | 7F E3 FB 78 */	mr r3, r31
/* 813C97C4 | 38 80 00 2E */	li r4, 0x2e
/* 813C97C8 | 4B FF FD 9D */	bl change_button_text__Q33ipl5scene12SavedataEditFUl
/* 813C97CC | 38 00 00 08 */	li r0, 0x8
/* 813C97D0 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813C97D4:
/* 813C97D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C97D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C97DC | 7C 08 03 A6 */	mtlr r0
/* 813C97E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C97E4 | 4E 80 00 20 */	blr
.endfn on_select_fadeout1st__Q33ipl5scene12SavedataEditFv

# .text:0x1364 | 0x813C97E8 | size: 0x84
# ipl::scene::SavedataEdit::on_text_fadein()
.fn on_text_fadein__Q33ipl5scene12SavedataEditFv, global
/* 813C97E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C97EC | 7C 08 02 A6 */	mflr r0
/* 813C97F0 | 38 80 00 09 */	li r4, 0x9
/* 813C97F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C97F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C97FC | 7C 7F 1B 78 */	mr r31, r3
/* 813C9800 | 4B FD D9 E1 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C9804 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C9808 | C0 02 86 64 */	lfs f0, lbl_81694A64@sda21(r0)
/* 813C980C | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 813C9810 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813C9814 | 4C 41 13 82 */	cror eq, gt, eq
/* 813C9818 | 40 82 00 18 */	bne .L_813C9830
/* 813C981C | 3C 80 81 65 */	lis r4, lbl_81651B54@ha
/* 813C9820 | 80 BF 00 7C */	lwz r5, 0x7c(r31)
/* 813C9824 | 7F E3 FB 78 */	mr r3, r31
/* 813C9828 | 38 84 1B 54 */	addi r4, r4, lbl_81651B54@l
/* 813C982C | 4B FD DB 4D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
.L_813C9830:
/* 813C9830 | 7F E3 FB 78 */	mr r3, r31
/* 813C9834 | 38 80 00 09 */	li r4, 0x9
/* 813C9838 | 4B FD D9 6D */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C983C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C9840 | 40 82 00 18 */	bne .L_813C9858
/* 813C9844 | 7F E3 FB 78 */	mr r3, r31
/* 813C9848 | 38 80 00 09 */	li r4, 0x9
/* 813C984C | 4B FD D9 25 */	bl stop_animation__Q33ipl5scene13AnmControllerFi
/* 813C9850 | 38 00 00 00 */	li r0, 0x0
/* 813C9854 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813C9858:
/* 813C9858 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C985C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9860 | 7C 08 03 A6 */	mtlr r0
/* 813C9864 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9868 | 4E 80 00 20 */	blr
.endfn on_text_fadein__Q33ipl5scene12SavedataEditFv

# .text:0x13E8 | 0x813C986C | size: 0x58
# ipl::scene::SavedataEdit::on_trig_del()
.fn on_trig_del__Q33ipl5scene12SavedataEditFv, global
/* 813C986C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9870 | 7C 08 02 A6 */	mflr r0
/* 813C9874 | 38 80 00 07 */	li r4, 0x7
/* 813C9878 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C987C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9880 | 7C 7F 1B 78 */	mr r31, r3
/* 813C9884 | 4B FD D9 21 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C9888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C988C | 40 82 00 24 */	bne .L_813C98B0
/* 813C9890 | 38 00 00 00 */	li r0, 0x0
/* 813C9894 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C9898 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813C989C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C98A0 | 38 80 00 0D */	li r4, 0xd
/* 813C98A4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C98A8 | 48 04 18 91 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C98AC | 4B FF BC D5 */	bl onTrigDel__Q33ipl5scene6MemoryFv
.L_813C98B0:
/* 813C98B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C98B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C98B8 | 7C 08 03 A6 */	mtlr r0
/* 813C98BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C98C0 | 4E 80 00 20 */	blr
.endfn on_trig_del__Q33ipl5scene12SavedataEditFv

# .text:0x1440 | 0x813C98C4 | size: 0x8
# ipl::scene::SavedataEdit::@40@onEvent(unsigned long, unsigned long, void*)
.fn "@40@onEvent__Q33ipl5scene12SavedataEditFUlUlPv", global
/* 813C98C4 | 38 63 FF D8 */	subi r3, r3, 0x28
/* 813C98C8 | 4B FF FA 64 */	b onEvent__Q33ipl5scene12SavedataEditFUlUlPv
.endfn "@40@onEvent__Q33ipl5scene12SavedataEditFUlUlPv"

# 0x81610350..0x81610368 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x81610350 | size: 0x14
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

# .rodata:0x14 | 0x81610364 | size: 0x4
.obj gap_07_81610364_rodata, global
.hidden gap_07_81610364_rodata
	.4byte 0x00000000
.endobj gap_07_81610364_rodata

# 0x81651860..0x81651D30 | size: 0x4D0
.data
.balign 8

# .data:0x0 | 0x81651860 | size: 0x2F4
.obj lbl_81651860, global
	.4byte 0x30383132
	.4byte 0x31305F73
	.4byte 0x7973345F
	.4byte 0x6D6E5F44
	.4byte 0x61746144
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x5365656E
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00303831
	.4byte 0x3231305F
	.4byte 0x73797334
	.4byte 0x5F6D6E5F
	.4byte 0x44617461
	.4byte 0x44657461
	.4byte 0x696C5F61
	.4byte 0x5F536565
	.4byte 0x6E4F7574
	.4byte 0x2E62726C
	.4byte 0x616E0030
	.4byte 0x38313231
	.4byte 0x305F7379
	.4byte 0x73345F6D
	.4byte 0x6E5F4461
	.4byte 0x74614465
	.4byte 0x7461696C
	.4byte 0x5F615F43
	.4byte 0x6F707946
	.4byte 0x6F756375
	.4byte 0x73496E2E
	.4byte 0x62726C61
	.4byte 0x6E003038
	.4byte 0x31323130
	.4byte 0x5F737973
	.4byte 0x345F6D6E
	.4byte 0x5F446174
	.4byte 0x61446574
	.4byte 0x61696C5F
	.4byte 0x615F436F
	.4byte 0x7079466F
	.4byte 0x75637573
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E003038
	.4byte 0x31323130
	.4byte 0x5F737973
	.4byte 0x345F6D6E
	.4byte 0x5F446174
	.4byte 0x61446574
	.4byte 0x61696C5F
	.4byte 0x615F436F
	.4byte 0x7079466C
	.4byte 0x6173682E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x436F7079
	.4byte 0x466C6173
	.4byte 0x68003038
	.4byte 0x31323130
	.4byte 0x5F737973
	.4byte 0x345F6D6E
	.4byte 0x5F446174
	.4byte 0x61446574
	.4byte 0x61696C5F
	.4byte 0x615F4465
	.4byte 0x6C466F75
	.4byte 0x63757349
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x30383132
	.4byte 0x31305F73
	.4byte 0x7973345F
	.4byte 0x6D6E5F44
	.4byte 0x61746144
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x44656C46
	.4byte 0x6F756375
	.4byte 0x734F7574
	.4byte 0x2E62726C
	.4byte 0x616E0030
	.4byte 0x38313231
	.4byte 0x305F7379
	.4byte 0x73345F6D
	.4byte 0x6E5F4461
	.4byte 0x74614465
	.4byte 0x7461696C
	.4byte 0x5F615F44
	.4byte 0x656C466C
	.4byte 0x6173682E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x44656C46
	.4byte 0x6C617368
	.4byte 0x00303831
	.4byte 0x3231305F
	.4byte 0x73797334
	.4byte 0x5F6D6E5F
	.4byte 0x44617461
	.4byte 0x44657461
	.4byte 0x696C5F61
	.4byte 0x5F53656C
	.4byte 0x6563744F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x00475F53
	.4byte 0x656C6563
	.4byte 0x74003038
	.4byte 0x31323130
	.4byte 0x5F737973
	.4byte 0x345F6D6E
	.4byte 0x5F446174
	.4byte 0x61446574
	.4byte 0x61696C5F
	.4byte 0x615F5365
	.4byte 0x656E4F75
	.4byte 0x74596573
	.4byte 0x2E62726C
	.4byte 0x616E0030
	.4byte 0x38313231
	.4byte 0x305F7379
	.4byte 0x73345F6D
	.4byte 0x6E5F4461
	.4byte 0x74614465
	.4byte 0x7461696C
	.4byte 0x5F615F53
	.4byte 0x65656E4F
	.4byte 0x75745965
	.4byte 0x734F6B2E
	.4byte 0x62726C61
	.4byte 0x6E003038
	.4byte 0x31323130
	.4byte 0x5F737973
	.4byte 0x345F6D6E
	.4byte 0x5F446174
	.4byte 0x61446574
	.4byte 0x61696C5F
	.4byte 0x615F5761
	.4byte 0x69742E62
	.4byte 0x726C616E
	.4byte 0x00303831
	.4byte 0x3231305F
	.4byte 0x73797334
	.4byte 0x5F6D6E5F
	.4byte 0x44617461
	.4byte 0x44657461
	.4byte 0x696C5F61
	.4byte 0x5F4D6F76
	.4byte 0x65466F75
	.4byte 0x63757349
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x30383132
	.4byte 0x31305F73
	.4byte 0x7973345F
	.4byte 0x6D6E5F44
	.4byte 0x61746144
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x4D6F7665
	.4byte 0x466F7563
	.4byte 0x75734F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x30383132
	.4byte 0x31305F73
	.4byte 0x7973345F
	.4byte 0x6D6E5F44
	.4byte 0x61746144
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x4D6F7665
	.4byte 0x466C6173
	.4byte 0x682E6272
	.4byte 0x6C616E00
	.4byte 0x475F4D6F
	.4byte 0x7665466C
	.4byte 0x61736800
	.4byte 0x545F4D6F
	.4byte 0x76655F30
	.4byte 0x3000545F
	.4byte 0x436F7079
	.4byte 0x5F303000
	.4byte 0x545F4465
	.4byte 0x6C5F3030
	.4byte 0x00545F42
	.4byte 0x6C6F636B
	.4byte 0x5F303000
.endobj lbl_81651860

# .data:0x2F4 | 0x81651B54 | size: 0x23
.obj lbl_81651B54, global
	.4byte 0x545F4D65
	.4byte 0x73736167
	.4byte 0x655F3030
	.4byte 0x00545F54
	.4byte 0x69746C65
	.4byte 0x5F303000
	.4byte 0x545F5469
	.4byte 0x746C655F
	.byte 0x30, 0x31, 0x00
.endobj lbl_81651B54

# .data:0x317 | 0x81651B77 | size: 0x71
.obj lbl_81651B77, global
	.4byte 0x4E5F5769
	.4byte 0x6E646F77
	.4byte 0x00545F42
	.4byte 0x6C6F636B
	.4byte 0x5F303100
	.4byte 0x42616E6E
	.4byte 0x65725F30
	.4byte 0x31004261
	.4byte 0x73654D6F
	.4byte 0x76655F6F
	.4byte 0x66660042
	.4byte 0x6173654D
	.4byte 0x6F76655F
	.4byte 0x6F66665F
	.4byte 0x30300054
	.4byte 0x5F4D6F76
	.4byte 0x655F6F66
	.4byte 0x6600545F
	.4byte 0x4D6F7665
	.4byte 0x5F6F6666
	.4byte 0x5F303000
	.4byte 0x425F4D6F
	.4byte 0x76655F30
	.4byte 0x3000425F
	.4byte 0x436F7079
	.4byte 0x5F303000
	.4byte 0x425F4465
	.4byte 0x6C5F3030
	.byte 0x00
.endobj lbl_81651B77

# .data:0x388 | 0x81651BE8 | size: 0x30
.obj jumptable_81651BE8, local
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8B78
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8AA8
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8AB4
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8AD4
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8AE0
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8AEC
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8AF8
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8B18
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8B24
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8B44
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8B50
	.rel calc__Q33ipl5scene12SavedataEditFv, .L_813C8B70
.endobj jumptable_81651BE8

# .data:0x3B8 | 0x81651C18 | size: 0x24
.obj gap_08_81651C18_data, global
.hidden gap_08_81651C18_data
	.4byte 0x42616E6E
	.4byte 0x65725F30
	.4byte 0x3000426C
	.4byte 0x6F636B4C
	.4byte 0x696E6500
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x44450000
.endobj gap_08_81651C18_data

# .data:0x3DC | 0x81651C3C | size: 0xE8
# ipl::scene::SavedataEdit::__vtable
.obj __vt__Q33ipl5scene12SavedataEdit, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene12SavedataEditFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@40@onEvent__Q33ipl5scene12SavedataEditFUlUlPv"
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEvent__Q33ipl5scene12SavedataEditFUlUlPv
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
.endobj __vt__Q33ipl5scene12SavedataEdit

# .data:0x4C4 | 0x81651D24 | size: 0xA
# ipl::scene::SavedataBox::@STRING@getTranslate()
.obj "@STRING@getTranslate__Q33ipl5scene11SavedataBoxFv", global
	.string "N_Data_00"
.endobj "@STRING@getTranslate__Q33ipl5scene11SavedataBoxFv"

# .data:0x4CE | 0x81651D2E | size: 0x2
.obj gap_08_81651D2E_data, global
.hidden gap_08_81651D2E_data
	.2byte 0x0000
.endobj gap_08_81651D2E_data

# 0x81694A58..0x81694A68 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694A58 | size: 0x4
.obj lbl_81694A58, global
	.float 0
.endobj lbl_81694A58

# .sdata2:0x4 | 0x81694A5C | size: 0x4
.obj lbl_81694A5C, global
	.float 12
.endobj lbl_81694A5C

# .sdata2:0x8 | 0x81694A60 | size: 0x4
.obj lbl_81694A60, global
	.float 1
.endobj lbl_81694A60

# .sdata2:0xC | 0x81694A64 | size: 0x4
.obj lbl_81694A64, global
	.float 20
.endobj lbl_81694A64

# 0x81696C30..0x81696C78 | size: 0x48
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696C30 | size: 0x7
.obj lbl_81696C30, global
	.string "G_Mask"
.endobj lbl_81696C30

# .sdata:0x7 | 0x81696C37 | size: 0x7
.obj lbl_81696C37, global
	.string "G_Copy"
.endobj lbl_81696C37

# .sdata:0xE | 0x81696C3E | size: 0x6
.obj lbl_81696C3E, global
	.string "G_Del"
.endobj lbl_81696C3E

# .sdata:0x14 | 0x81696C44 | size: 0x7
.obj lbl_81696C44, global
	.string "G_Wait"
.endobj lbl_81696C44

# .sdata:0x1B | 0x81696C4B | size: 0x7
.obj lbl_81696C4B, global
	.string "G_Move"
.endobj lbl_81696C4B

# .sdata:0x22 | 0x81696C52 | size: 0x4
.obj lbl_81696C52, global
	.string16 " "
.endobj lbl_81696C52

# .sdata:0x26 | 0x81696C56 | size: 0x7
.obj lbl_81696C56, global
	.string "N_Copy"
.endobj lbl_81696C56

# .sdata:0x2D | 0x81696C5D | size: 0x8
.obj lbl_81696C5D, global
	.string "Mask_00"
.endobj lbl_81696C5D

# .sdata:0x35 | 0x81696C65 | size: 0x7
.obj lbl_81696C65, global
	.string "N_Wait"
.endobj lbl_81696C65

# .sdata:0x3C | 0x81696C6C | size: 0x8
.obj lbl_81696C6C, global
	.string16 "???"
.endobj lbl_81696C6C

# .sdata:0x44 | 0x81696C74 | size: 0x4
.obj gap_11_81696C74_sdata, global
.hidden gap_11_81696C74_sdata
	.4byte 0x00000000
.endobj gap_11_81696C74_sdata
