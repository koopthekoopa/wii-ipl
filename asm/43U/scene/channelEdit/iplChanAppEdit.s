.include "macros.inc"
.file "iplChanAppEdit.cpp"

# 0x813A54DC..0x813A6F04 | size: 0x1A28
.text
.balign 4

# .text:0x0 | 0x813A54DC | size: 0x53C
# ipl::scene::ChanAppEdit::ChanAppEdit(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl5scene11ChanAppEditFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 813A54DC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A54E0 | 7C 08 02 A6 */	mflr r0
/* 813A54E4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A54E8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A54EC | 48 25 3F CD */	bl _savegpr_25
/* 813A54F0 | 3D 00 81 65 */	lis r8, __vt__Q33ipl5scene13AnmController@ha
/* 813A54F4 | 3B A0 00 00 */	li r29, 0x0
/* 813A54F8 | 39 08 D0 F8 */	addi r8, r8, __vt__Q33ipl5scene13AnmController@l
/* 813A54FC | 3F E0 81 65 */	lis r31, lbl_8164D2E8@ha
/* 813A5500 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 813A5504 | 7C 7E 1B 78 */	mr r30, r3
/* 813A5508 | 7C 99 23 78 */	mr r25, r4
/* 813A550C | 7C BA 2B 78 */	mr r26, r5
/* 813A5510 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 813A5514 | 7C DB 33 78 */	mr r27, r6
/* 813A5518 | 7C FC 3B 78 */	mr r28, r7
/* 813A551C | 3B FF D2 E8 */	addi r31, r31, lbl_8164D2E8@l
/* 813A5520 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 813A5524 | 38 80 00 04 */	li r4, 0x4
/* 813A5528 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813A552C | 48 16 CB 31 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A5530 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813A5534 | 38 80 00 00 */	li r4, 0x0
/* 813A5538 | 48 16 CB 25 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A553C | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene11ChanAppEdit@ha
/* 813A5540 | 3C C0 81 65 */	lis r6, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>"@ha
/* 813A5544 | 38 63 D6 D8 */	addi r3, r3, __vt__Q33ipl5scene11ChanAppEdit@l
/* 813A5548 | 93 BE 00 30 */	stw r29, 0x30(r30)
/* 813A554C | 38 03 00 0C */	addi r0, r3, 0xc
/* 813A5550 | 38 C6 BE 40 */	addi r6, r6, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>"@l
/* 813A5554 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813A5558 | 7F 24 CB 78 */	mr r4, r25
/* 813A555C | 38 60 05 80 */	li r3, 0x580
/* 813A5560 | 38 A0 00 04 */	li r5, 0x4
/* 813A5564 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 813A5568 | 93 BE 00 3C */	stw r29, 0x3c(r30)
/* 813A556C | 90 DE 00 40 */	stw r6, 0x40(r30)
/* 813A5570 | 93 BE 00 78 */	stw r29, 0x78(r30)
/* 813A5574 | 93 BE 00 7C */	stw r29, 0x7c(r30)
/* 813A5578 | 93 BE 00 80 */	stw r29, 0x80(r30)
/* 813A557C | 48 25 2B 35 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A5580 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5584 | 41 82 00 18 */	beq .L_813A559C
/* 813A5588 | 7F 24 CB 78 */	mr r4, r25
/* 813A558C | 7F 45 D3 78 */	mr r5, r26
/* 813A5590 | 7F 66 DB 78 */	mr r6, r27
/* 813A5594 | 7F 87 E3 78 */	mr r7, r28
/* 813A5598 | 4B FC 4A 8D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813A559C:
/* 813A559C | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 813A55A0 | 7F C3 F3 78 */	mr r3, r30
/* 813A55A4 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 813A55A8 | 38 AD 88 20 */	li r5, lbl_81696860@sda21
/* 813A55AC | 48 00 1A E9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A55B0 | 7F C3 F3 78 */	mr r3, r30
/* 813A55B4 | 38 9F 00 20 */	addi r4, r31, 0x20
/* 813A55B8 | 38 AD 88 20 */	li r5, lbl_81696860@sda21
/* 813A55BC | 48 00 1A D9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A55C0 | 7F C3 F3 78 */	mr r3, r30
/* 813A55C4 | 38 9F 00 41 */	addi r4, r31, 0x41
/* 813A55C8 | 38 AD 88 27 */	li r5, lbl_81696867@sda21
/* 813A55CC | 48 00 1A C9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A55D0 | 7F C3 F3 78 */	mr r3, r30
/* 813A55D4 | 38 9F 00 67 */	addi r4, r31, 0x67
/* 813A55D8 | 38 AD 88 27 */	li r5, lbl_81696867@sda21
/* 813A55DC | 48 00 1A B9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A55E0 | 7F C3 F3 78 */	mr r3, r30
/* 813A55E4 | 38 9F 00 8E */	addi r4, r31, 0x8e
/* 813A55E8 | 38 BF 00 B1 */	addi r5, r31, 0xb1
/* 813A55EC | 48 00 1A A9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A55F0 | 7F C3 F3 78 */	mr r3, r30
/* 813A55F4 | 38 9F 00 BD */	addi r4, r31, 0xbd
/* 813A55F8 | 38 AD 88 2E */	li r5, lbl_8169686E@sda21
/* 813A55FC | 48 00 1A 99 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5600 | 7F C3 F3 78 */	mr r3, r30
/* 813A5604 | 38 9F 00 E2 */	addi r4, r31, 0xe2
/* 813A5608 | 38 AD 88 2E */	li r5, lbl_8169686E@sda21
/* 813A560C | 48 00 1A 89 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5610 | 7F C3 F3 78 */	mr r3, r30
/* 813A5614 | 38 9F 01 08 */	addi r4, r31, 0x108
/* 813A5618 | 38 BF 01 2A */	addi r5, r31, 0x12a
/* 813A561C | 48 00 1A 79 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5620 | 7F C3 F3 78 */	mr r3, r30
/* 813A5624 | 38 9F 01 35 */	addi r4, r31, 0x135
/* 813A5628 | 38 BF 01 58 */	addi r5, r31, 0x158
/* 813A562C | 48 00 1A 69 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5630 | 7F C3 F3 78 */	mr r3, r30
/* 813A5634 | 38 9F 01 61 */	addi r4, r31, 0x161
/* 813A5638 | 38 AD 88 20 */	li r5, lbl_81696860@sda21
/* 813A563C | 48 00 1A 59 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5640 | 7F C3 F3 78 */	mr r3, r30
/* 813A5644 | 38 9F 01 85 */	addi r4, r31, 0x185
/* 813A5648 | 38 AD 88 20 */	li r5, lbl_81696860@sda21
/* 813A564C | 48 00 1A 49 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5650 | 7F C3 F3 78 */	mr r3, r30
/* 813A5654 | 38 9F 01 AB */	addi r4, r31, 0x1ab
/* 813A5658 | 38 AD 88 34 */	li r5, lbl_81696874@sda21
/* 813A565C | 48 00 1A 39 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5660 | 7F C3 F3 78 */	mr r3, r30
/* 813A5664 | 38 9F 01 C9 */	addi r4, r31, 0x1c9
/* 813A5668 | 38 AD 88 3B */	li r5, lbl_8169687B@sda21
/* 813A566C | 48 00 1A 29 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5670 | 7F C3 F3 78 */	mr r3, r30
/* 813A5674 | 38 9F 01 EF */	addi r4, r31, 0x1ef
/* 813A5678 | 38 AD 88 43 */	li r5, lbl_81696883@sda21
/* 813A567C | 48 00 1A 19 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5680 | 7F C3 F3 78 */	mr r3, r30
/* 813A5684 | 38 9F 02 15 */	addi r4, r31, 0x215
/* 813A5688 | 38 AD 88 43 */	li r5, lbl_81696883@sda21
/* 813A568C | 48 00 1A 09 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A5690 | 7F C3 F3 78 */	mr r3, r30
/* 813A5694 | 38 9F 02 3C */	addi r4, r31, 0x23c
/* 813A5698 | 38 BF 02 5F */	addi r5, r31, 0x25f
/* 813A569C | 48 00 19 F9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A56A0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A56A4 | 4B FC 4F 91 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813A56A8 | 7F C3 F3 78 */	mr r3, r30
/* 813A56AC | 38 9F 02 6B */	addi r4, r31, 0x26b
/* 813A56B0 | 38 A0 00 A7 */	li r5, 0xa7
/* 813A56B4 | 48 00 1C C5 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A56B8 | 7F C3 F3 78 */	mr r3, r30
/* 813A56BC | 38 9F 02 75 */	addi r4, r31, 0x275
/* 813A56C0 | 38 A0 00 B2 */	li r5, 0xb2
/* 813A56C4 | 48 00 1C B5 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A56C8 | 7F C3 F3 78 */	mr r3, r30
/* 813A56CC | 38 9F 02 7F */	addi r4, r31, 0x27f
/* 813A56D0 | 38 A0 00 BD */	li r5, 0xbd
/* 813A56D4 | 48 00 1C A5 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A56D8 | 7F C3 F3 78 */	mr r3, r30
/* 813A56DC | 38 9F 02 88 */	addi r4, r31, 0x288
/* 813A56E0 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A56E4 | 48 00 1D 1D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A56E8 | 7F C3 F3 78 */	mr r3, r30
/* 813A56EC | 38 9F 02 93 */	addi r4, r31, 0x293
/* 813A56F0 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A56F4 | 48 00 1D 0D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A56F8 | 7F C3 F3 78 */	mr r3, r30
/* 813A56FC | 38 9F 02 9E */	addi r4, r31, 0x29e
/* 813A5700 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A5704 | 48 00 1C FD */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A5708 | 7F C3 F3 78 */	mr r3, r30
/* 813A570C | 38 9F 02 AB */	addi r4, r31, 0x2ab
/* 813A5710 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A5714 | 48 00 1C ED */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A5718 | 7F C3 F3 78 */	mr r3, r30
/* 813A571C | 38 9F 02 B6 */	addi r4, r31, 0x2b6
/* 813A5720 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A5724 | 48 00 1C DD */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A5728 | 7F C3 F3 78 */	mr r3, r30
/* 813A572C | 38 9F 02 C1 */	addi r4, r31, 0x2c1
/* 813A5730 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A5734 | 48 00 1C CD */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A5738 | 7F C3 F3 78 */	mr r3, r30
/* 813A573C | 38 9F 02 CC */	addi r4, r31, 0x2cc
/* 813A5740 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A5744 | 48 00 1C BD */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A5748 | 7F C3 F3 78 */	mr r3, r30
/* 813A574C | 38 8D 88 4E */	li r4, lbl_8169688E@sda21
/* 813A5750 | 38 A0 00 00 */	li r5, 0x0
/* 813A5754 | 48 00 1D 81 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5758 | 7F C3 F3 78 */	mr r3, r30
/* 813A575C | 38 9F 02 D7 */	addi r4, r31, 0x2d7
/* 813A5760 | 38 A0 00 00 */	li r5, 0x0
/* 813A5764 | 48 00 1D 71 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5768 | 7F C3 F3 78 */	mr r3, r30
/* 813A576C | 38 8D 88 56 */	li r4, lbl_81696896@sda21
/* 813A5770 | 38 A0 00 00 */	li r5, 0x0
/* 813A5774 | 48 00 1D 61 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5778 | 7F C3 F3 78 */	mr r3, r30
/* 813A577C | 38 9F 02 E0 */	addi r4, r31, 0x2e0
/* 813A5780 | 38 A0 00 00 */	li r5, 0x0
/* 813A5784 | 48 00 1D 51 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5788 | 7F C3 F3 78 */	mr r3, r30
/* 813A578C | 38 9F 02 EB */	addi r4, r31, 0x2eb
/* 813A5790 | 38 A0 00 00 */	li r5, 0x0
/* 813A5794 | 48 00 1D 41 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5798 | 48 1C 48 1D */	bl SCGetAspectRatio
/* 813A579C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A57A0 | 38 9F 03 00 */	addi r4, r31, 0x300
/* 813A57A4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A57A8 | 40 82 00 08 */	bne .L_813A57B0
/* 813A57AC | 38 9F 02 F6 */	addi r4, r31, 0x2f6
.L_813A57B0:
/* 813A57B0 | 7F C3 F3 78 */	mr r3, r30
/* 813A57B4 | 38 A0 00 00 */	li r5, 0x0
/* 813A57B8 | 48 00 1D 1D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A57BC | 7F C3 F3 78 */	mr r3, r30
/* 813A57C0 | 38 9F 03 0B */	addi r4, r31, 0x30b
/* 813A57C4 | 38 A0 00 00 */	li r5, 0x0
/* 813A57C8 | 48 00 1D 0D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A57CC | 7F C3 F3 78 */	mr r3, r30
/* 813A57D0 | 38 9F 03 18 */	addi r4, r31, 0x318
/* 813A57D4 | 38 A0 00 00 */	li r5, 0x0
/* 813A57D8 | 48 00 1C FD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A57DC | 7F C3 F3 78 */	mr r3, r30
/* 813A57E0 | 38 9F 03 28 */	addi r4, r31, 0x328
/* 813A57E4 | 38 A0 00 00 */	li r5, 0x0
/* 813A57E8 | 48 00 1C ED */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A57EC | 7F C3 F3 78 */	mr r3, r30
/* 813A57F0 | 38 9F 03 33 */	addi r4, r31, 0x333
/* 813A57F4 | 38 A0 00 00 */	li r5, 0x0
/* 813A57F8 | 48 00 1C DD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A57FC | 38 60 00 34 */	li r3, 0x34
/* 813A5800 | 48 25 28 9D */	bl __nw__FUl
/* 813A5804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5808 | 7C 7D 1B 78 */	mr r29, r3
/* 813A580C | 41 82 00 98 */	beq .L_813A58A4
/* 813A5810 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813A5814 | 7F C6 F3 78 */	mr r6, r30
/* 813A5818 | 41 82 00 08 */	beq .L_813A5820
/* 813A581C | 38 DE 00 28 */	addi r6, r30, 0x28
.L_813A5820:
/* 813A5820 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 813A5824 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813A5828 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813A582C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813A5830 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813A5834 | 38 00 00 00 */	li r0, 0x0
/* 813A5838 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813A583C | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813A5840 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813A5844 | 41 82 00 1C */	beq .L_813A5860
/* 813A5848 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813A584C | 7C C3 33 78 */	mr r3, r6
/* 813A5850 | 7F A4 EB 78 */	mr r4, r29
/* 813A5854 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813A5858 | 7D 89 03 A6 */	mtctr r12
/* 813A585C | 4E 80 04 21 */	bctrl
.L_813A5860:
/* 813A5860 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813A5864 | 38 80 00 08 */	li r4, 0x8
/* 813A5868 | 48 16 C7 F5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A586C | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813A5870 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813A5874 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813A5878 | 38 80 00 08 */	li r4, 0x8
/* 813A587C | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 813A5880 | 93 9D 00 24 */	stw r28, 0x24(r29)
/* 813A5884 | 48 16 C7 D9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A5888 | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813A588C | 38 60 00 00 */	li r3, 0x0
/* 813A5890 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813A5894 | 38 00 00 01 */	li r0, 0x1
/* 813A5898 | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 813A589C | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 813A58A0 | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_813A58A4:
/* 813A58A4 | 93 BE 00 08 */	stw r29, 0x8(r30)
/* 813A58A8 | 7F A3 EB 78 */	mr r3, r29
/* 813A58AC | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813A58B0 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813A58B4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813A58B8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813A58BC | 7D 89 03 A6 */	mtctr r12
/* 813A58C0 | 4E 80 04 21 */	bctrl
/* 813A58C4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A58C8 | 38 80 00 00 */	li r4, 0x0
/* 813A58CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A58D0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813A58D4 | 7D 89 03 A6 */	mtctr r12
/* 813A58D8 | 4E 80 04 21 */	bctrl
/* 813A58DC | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A58E0 | 38 9F 03 41 */	addi r4, r31, 0x341
/* 813A58E4 | 38 A0 00 01 */	li r5, 0x1
/* 813A58E8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A58EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A58F0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A58F4 | 7D 89 03 A6 */	mtctr r12
/* 813A58F8 | 4E 80 04 21 */	bctrl
/* 813A58FC | 7C 64 1B 78 */	mr r4, r3
/* 813A5900 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A5904 | 38 A0 00 01 */	li r5, 0x1
/* 813A5908 | 4B FC 58 C5 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813A590C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A5910 | 38 9F 03 4B */	addi r4, r31, 0x34b
/* 813A5914 | 38 A0 00 01 */	li r5, 0x1
/* 813A5918 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A591C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A5920 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A5924 | 7D 89 03 A6 */	mtctr r12
/* 813A5928 | 4E 80 04 21 */	bctrl
/* 813A592C | 7C 64 1B 78 */	mr r4, r3
/* 813A5930 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A5934 | 38 A0 00 01 */	li r5, 0x1
/* 813A5938 | 4B FC 58 95 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813A593C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A5940 | 38 9F 03 55 */	addi r4, r31, 0x355
/* 813A5944 | 38 A0 00 01 */	li r5, 0x1
/* 813A5948 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A594C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A5950 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A5954 | 7D 89 03 A6 */	mtctr r12
/* 813A5958 | 4E 80 04 21 */	bctrl
/* 813A595C | 7C 64 1B 78 */	mr r4, r3
/* 813A5960 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A5964 | 38 A0 00 01 */	li r5, 0x1
/* 813A5968 | 4B FC 58 65 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813A596C | 7F C3 F3 78 */	mr r3, r30
/* 813A5970 | 38 80 00 0E */	li r4, 0xe
/* 813A5974 | 48 00 18 6D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A5978 | 7C 7D 1B 78 */	mr r29, r3
/* 813A597C | 7F C3 F3 78 */	mr r3, r30
/* 813A5980 | 38 80 00 0D */	li r4, 0xd
/* 813A5984 | 48 00 18 5D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A5988 | 7C 65 1B 78 */	mr r5, r3
/* 813A598C | 7F C3 F3 78 */	mr r3, r30
/* 813A5990 | 7F A6 EB 78 */	mr r6, r29
/* 813A5994 | 38 9F 03 41 */	addi r4, r31, 0x341
/* 813A5998 | 48 00 18 55 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813A599C | 7F C3 F3 78 */	mr r3, r30
/* 813A59A0 | 38 80 00 03 */	li r4, 0x3
/* 813A59A4 | 48 00 18 3D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A59A8 | 7C 7D 1B 78 */	mr r29, r3
/* 813A59AC | 7F C3 F3 78 */	mr r3, r30
/* 813A59B0 | 38 80 00 02 */	li r4, 0x2
/* 813A59B4 | 48 00 18 2D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A59B8 | 7C 65 1B 78 */	mr r5, r3
/* 813A59BC | 7F C3 F3 78 */	mr r3, r30
/* 813A59C0 | 7F A6 EB 78 */	mr r6, r29
/* 813A59C4 | 38 9F 03 4B */	addi r4, r31, 0x34b
/* 813A59C8 | 48 00 18 25 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813A59CC | 7F C3 F3 78 */	mr r3, r30
/* 813A59D0 | 38 80 00 06 */	li r4, 0x6
/* 813A59D4 | 48 00 18 0D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A59D8 | 7C 7D 1B 78 */	mr r29, r3
/* 813A59DC | 7F C3 F3 78 */	mr r3, r30
/* 813A59E0 | 38 80 00 05 */	li r4, 0x5
/* 813A59E4 | 48 00 17 FD */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A59E8 | 7C 65 1B 78 */	mr r5, r3
/* 813A59EC | 7F C3 F3 78 */	mr r3, r30
/* 813A59F0 | 7F A6 EB 78 */	mr r6, r29
/* 813A59F4 | 38 9F 03 55 */	addi r4, r31, 0x355
/* 813A59F8 | 48 00 17 F5 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813A59FC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A5A00 | 7F C3 F3 78 */	mr r3, r30
/* 813A5A04 | 48 25 3B 01 */	bl _restgpr_25
/* 813A5A08 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A5A0C | 7C 08 03 A6 */	mtlr r0
/* 813A5A10 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A5A14 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene11ChanAppEditFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x53C | 0x813A5A18 | size: 0xC0
# ipl::scene::ChanAppEdit::~ChanAppEdit()
.fn __dt__Q33ipl5scene11ChanAppEditFv, global
/* 813A5A18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A5A1C | 7C 08 02 A6 */	mflr r0
/* 813A5A20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5A24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A5A28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A5A2C | 7C 9F 23 78 */	mr r31, r4
/* 813A5A30 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A5A34 | 7C 7E 1B 78 */	mr r30, r3
/* 813A5A38 | 41 82 00 84 */	beq .L_813A5ABC
/* 813A5A3C | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813A5A40 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene11ChanAppEdit@ha
/* 813A5A44 | 38 84 D6 D8 */	addi r4, r4, __vt__Q33ipl5scene11ChanAppEdit@l
/* 813A5A48 | 38 04 00 0C */	addi r0, r4, 0xc
/* 813A5A4C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813A5A50 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813A5A54 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813A5A58 | 41 82 00 1C */	beq .L_813A5A74
/* 813A5A5C | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 813A5A60 | 7C A3 2B 78 */	mr r3, r5
/* 813A5A64 | 38 80 00 01 */	li r4, 0x1
/* 813A5A68 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813A5A6C | 7D 89 03 A6 */	mtctr r12
/* 813A5A70 | 4E 80 04 21 */	bctrl
.L_813A5A74:
/* 813A5A74 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A5A78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5A7C | 41 82 00 18 */	beq .L_813A5A94
/* 813A5A80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A5A84 | 38 80 00 01 */	li r4, 0x1
/* 813A5A88 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813A5A8C | 7D 89 03 A6 */	mtctr r12
/* 813A5A90 | 4E 80 04 21 */	bctrl
.L_813A5A94:
/* 813A5A94 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 813A5A98 | 38 80 FF FF */	li r4, -0x1
/* 813A5A9C | 4B FF 15 29 */	bl "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv"
/* 813A5AA0 | 7F C3 F3 78 */	mr r3, r30
/* 813A5AA4 | 38 80 00 00 */	li r4, 0x0
/* 813A5AA8 | 4B FF E3 31 */	bl __dt__Q33ipl5scene13AnmControllerFv
/* 813A5AAC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A5AB0 | 40 81 00 0C */	ble .L_813A5ABC
/* 813A5AB4 | 7F C3 F3 78 */	mr r3, r30
/* 813A5AB8 | 48 25 26 2D */	bl __dl__FPv
.L_813A5ABC:
/* 813A5ABC | 7F C3 F3 78 */	mr r3, r30
/* 813A5AC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A5AC4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A5AC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A5ACC | 7C 08 03 A6 */	mtlr r0
/* 813A5AD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A5AD4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene11ChanAppEditFv

# .text:0x5FC | 0x813A5AD8 | size: 0x184
# ipl::scene::ChanAppEdit::calc()
.fn calc__Q33ipl5scene11ChanAppEditFv, global
/* 813A5AD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A5ADC | 7C 08 02 A6 */	mflr r0
/* 813A5AE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A5AE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A5AE8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A5AEC | 7C 7E 1B 78 */	mr r30, r3
/* 813A5AF0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A5AF4 | 4B FC 4C 11 */	bl calc__Q33ipl6layout6ObjectFv
/* 813A5AF8 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A5AFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A5B00 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813A5B04 | 7D 89 03 A6 */	mtctr r12
/* 813A5B08 | 4E 80 04 21 */	bctrl
/* 813A5B0C | 3B E0 00 00 */	li r31, 0x0
/* 813A5B10 | 48 00 00 0C */	b .L_813A5B1C
.L_813A5B14:
/* 813A5B14 | 7F E3 FB 78 */	mr r3, r31
/* 813A5B18 | 48 00 13 ED */	bl calc__Q33ipl5scene7AnmPaneFv
.L_813A5B1C:
/* 813A5B1C | 7F E4 FB 78 */	mr r4, r31
/* 813A5B20 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813A5B24 | 48 16 C7 B9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A5B28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5B2C | 7C 7F 1B 78 */	mr r31, r3
/* 813A5B30 | 40 82 FF E4 */	bne .L_813A5B14
/* 813A5B34 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813A5B38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5B3C | 41 82 00 08 */	beq .L_813A5B44
/* 813A5B40 | 48 00 47 F9 */	bl calc__Q33ipl5scene9ThumbnailFv
.L_813A5B44:
/* 813A5B44 | 80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 813A5B48 | 28 00 00 0C */	cmplwi r0, 0xc
/* 813A5B4C | 41 81 00 F8 */	bgt .L_813A5C44
/* 813A5B50 | 3C 60 81 65 */	lis r3, jumptable_8164D648@ha
/* 813A5B54 | 54 00 10 3A */	slwi r0, r0, 2
/* 813A5B58 | 38 63 D6 48 */	addi r3, r3, jumptable_8164D648@l
/* 813A5B5C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813A5B60 | 7C 69 03 A6 */	mtctr r3
/* 813A5B64 | 4E 80 04 20 */	bctr
.L_813A5B68:
/* 813A5B68 | 7F C3 F3 78 */	mr r3, r30
/* 813A5B6C | 48 00 10 81 */	bl on_fadein__Q33ipl5scene11ChanAppEditFv
/* 813A5B70 | 48 00 00 D4 */	b .L_813A5C44
.L_813A5B74:
/* 813A5B74 | 7F C3 F3 78 */	mr r3, r30
/* 813A5B78 | 38 80 00 01 */	li r4, 0x1
/* 813A5B7C | 48 00 16 29 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A5B80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5B84 | 40 82 00 C0 */	bne .L_813A5C44
/* 813A5B88 | 38 00 00 00 */	li r0, 0x0
/* 813A5B8C | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813A5B90 | 48 00 00 B4 */	b .L_813A5C44
.L_813A5B94:
/* 813A5B94 | 7F C3 F3 78 */	mr r3, r30
/* 813A5B98 | 48 00 10 D9 */	bl on_hide_btn0_dialog__Q33ipl5scene11ChanAppEditFv
/* 813A5B9C | 48 00 00 A8 */	b .L_813A5C44
.L_813A5BA0:
/* 813A5BA0 | 7F C3 F3 78 */	mr r3, r30
/* 813A5BA4 | 48 00 10 F9 */	bl on_show_btn2_dialog1st__Q33ipl5scene11ChanAppEditFv
/* 813A5BA8 | 48 00 00 9C */	b .L_813A5C44
.L_813A5BAC:
/* 813A5BAC | 7F C3 F3 78 */	mr r3, r30
/* 813A5BB0 | 48 00 11 59 */	bl on_show_btn2_dialog2nd__Q33ipl5scene11ChanAppEditFv
/* 813A5BB4 | 48 00 00 90 */	b .L_813A5C44
.L_813A5BB8:
/* 813A5BB8 | 7F C3 F3 78 */	mr r3, r30
/* 813A5BBC | 38 80 00 08 */	li r4, 0x8
/* 813A5BC0 | 48 00 15 E5 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A5BC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5BC8 | 40 82 00 7C */	bne .L_813A5C44
/* 813A5BCC | 38 00 00 00 */	li r0, 0x0
/* 813A5BD0 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813A5BD4 | 48 00 00 70 */	b .L_813A5C44
.L_813A5BD8:
/* 813A5BD8 | 7F C3 F3 78 */	mr r3, r30
/* 813A5BDC | 48 00 11 89 */	bl on_select_fadeout1st__Q33ipl5scene11ChanAppEditFv
/* 813A5BE0 | 48 00 00 64 */	b .L_813A5C44
.L_813A5BE4:
/* 813A5BE4 | 7F C3 F3 78 */	mr r3, r30
/* 813A5BE8 | 38 80 00 08 */	li r4, 0x8
/* 813A5BEC | 48 00 15 B9 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A5BF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5BF4 | 40 82 00 50 */	bne .L_813A5C44
/* 813A5BF8 | 38 00 00 00 */	li r0, 0x0
/* 813A5BFC | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813A5C00 | 48 00 00 44 */	b .L_813A5C44
.L_813A5C04:
/* 813A5C04 | 7F C3 F3 78 */	mr r3, r30
/* 813A5C08 | 48 00 11 BD */	bl on_text_fadein__Q33ipl5scene11ChanAppEditFv
/* 813A5C0C | 48 00 00 38 */	b .L_813A5C44
.L_813A5C10:
/* 813A5C10 | 7F C3 F3 78 */	mr r3, r30
/* 813A5C14 | 38 80 00 0A */	li r4, 0xa
/* 813A5C18 | 48 00 15 8D */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A5C1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5C20 | 40 82 00 24 */	bne .L_813A5C44
/* 813A5C24 | 38 00 00 00 */	li r0, 0x0
/* 813A5C28 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813A5C2C | 48 00 00 18 */	b .L_813A5C44
.L_813A5C30:
/* 813A5C30 | 7F C3 F3 78 */	mr r3, r30
/* 813A5C34 | 48 00 12 15 */	bl on_trig_del__Q33ipl5scene11ChanAppEditFv
/* 813A5C38 | 48 00 00 0C */	b .L_813A5C44
.L_813A5C3C:
/* 813A5C3C | 7F C3 F3 78 */	mr r3, r30
/* 813A5C40 | 48 00 12 61 */	bl on_clear__Q33ipl5scene11ChanAppEditFv
.L_813A5C44:
/* 813A5C44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A5C48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A5C4C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A5C50 | 7C 08 03 A6 */	mtlr r0
/* 813A5C54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A5C58 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene11ChanAppEditFv

# .text:0x780 | 0x813A5C5C | size: 0x254
# ipl::scene::ChanAppEdit::draw()
.fn draw__Q33ipl5scene11ChanAppEditFv, global
/* 813A5C5C | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813A5C60 | 7C 08 02 A6 */	mflr r0
/* 813A5C64 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 813A5C68 | DB E1 00 70 */	stfd f31, 0x70(r1)
/* 813A5C6C | F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 813A5C70 | DB C1 00 60 */	stfd f30, 0x60(r1)
/* 813A5C74 | F3 C1 00 68 */	psq_st f30, 0x68(r1), 0, qr0
/* 813A5C78 | DB A1 00 50 */	stfd f29, 0x50(r1)
/* 813A5C7C | F3 A1 00 58 */	psq_st f29, 0x58(r1), 0, qr0
/* 813A5C80 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813A5C84 | 48 25 38 41 */	bl _savegpr_28
/* 813A5C88 | 3C 00 43 30 */	lis r0, 0x4330
/* 813A5C8C | 7C 7F 1B 78 */	mr r31, r3
/* 813A5C90 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813A5C94 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A5C98 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 813A5C9C | 4B FC 4B 01 */	bl draw__Q33ipl6layout6ObjectFv
/* 813A5CA0 | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 813A5CA4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A5CA8 | 40 82 00 24 */	bne .L_813A5CCC
/* 813A5CAC | 7F E3 FB 78 */	mr r3, r31
/* 813A5CB0 | 38 80 00 00 */	li r4, 0x0
/* 813A5CB4 | 48 00 15 2D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A5CB8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A5CBC | C0 02 85 10 */	lfs f0, lbl_81694910@sda21(r0)
/* 813A5CC0 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 813A5CC4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813A5CC8 | 40 81 01 B8 */	ble .L_813A5E80
.L_813A5CCC:
/* 813A5CCC | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813A5CD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A5CD4 | 41 82 01 AC */	beq .L_813A5E80
/* 813A5CD8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813A5CDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A5CE0 | 41 82 01 A0 */	beq .L_813A5E80
/* 813A5CE4 | 48 1C 42 D1 */	bl SCGetAspectRatio
/* 813A5CE8 | 3F 80 81 61 */	lis r28, lbl_8160FC80@ha
/* 813A5CEC | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813A5CF0 | 3B 9C FC 80 */	addi r28, r28, lbl_8160FC80@l
/* 813A5CF4 | 7F DC 04 2E */	lfsx f30, r28, r0
/* 813A5CF8 | 48 1C 42 BD */	bl SCGetAspectRatio
/* 813A5CFC | C0 02 85 14 */	lfs f0, lbl_81694914@sda21(r0)
/* 813A5D00 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813A5D04 | 7C 9C 02 14 */	add r4, r28, r0
/* 813A5D08 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813A5D0C | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 813A5D10 | C3 E4 00 04 */	lfs f31, 0x4(r4)
/* 813A5D14 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813A5D18 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 813A5D1C | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 813A5D20 | 4B F8 FB F9 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813A5D24 | 4B F8 FC 71 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813A5D28 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 813A5D2C | C0 02 85 1C */	lfs f0, lbl_8169491C@sda21(r0)
/* 813A5D30 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A5D34 | 80 9F 00 80 */	lwz r4, 0x80(r31)
/* 813A5D38 | EC 20 07 F2 */	fmuls f1, f0, f31
/* 813A5D3C | C8 61 00 30 */	lfd f3, 0x30(r1)
/* 813A5D40 | EC 40 07 B2 */	fmuls f2, f0, f30
/* 813A5D44 | C9 22 85 20 */	lfd f9, lbl_81694920@sda21(r0)
/* 813A5D48 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A5D4C | C0 A1 00 1C */	lfs f5, 0x1c(r1)
/* 813A5D50 | EC 63 48 28 */	fsubs f3, f3, f9
/* 813A5D54 | C0 81 00 14 */	lfs f4, 0x14(r1)
/* 813A5D58 | C8 01 00 30 */	lfd f0, 0x30(r1)
/* 813A5D5C | EC 85 20 28 */	fsubs f4, f5, f4
/* 813A5D60 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813A5D64 | EC 00 48 28 */	fsubs f0, f0, f9
/* 813A5D68 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813A5D6C | C9 01 00 28 */	lfd f8, 0x28(r1)
/* 813A5D70 | 80 A4 00 14 */	lwz r5, 0x14(r4)
/* 813A5D74 | EC 00 20 24 */	fdivs f0, f0, f4
/* 813A5D78 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 813A5D7C | 80 85 00 2C */	lwz r4, 0x2c(r5)
/* 813A5D80 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813A5D84 | 80 65 00 30 */	lwz r3, 0x30(r5)
/* 813A5D88 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A5D8C | EC A3 20 24 */	fdivs f5, f3, f4
/* 813A5D90 | C0 81 00 08 */	lfs f4, 0x8(r1)
/* 813A5D94 | 80 05 00 34 */	lwz r0, 0x34(r5)
/* 813A5D98 | C8 61 00 28 */	lfd f3, 0x28(r1)
/* 813A5D9C | C0 E2 85 18 */	lfs f7, lbl_81694918@sda21(r0)
/* 813A5DA0 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813A5DA4 | EC C4 F0 28 */	fsubs f6, f4, f30
/* 813A5DA8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A5DAC | EC 83 48 28 */	fsubs f4, f3, f9
/* 813A5DB0 | C0 61 00 0C */	lfs f3, 0xc(r1)
/* 813A5DB4 | ED 08 48 28 */	fsubs f8, f8, f9
/* 813A5DB8 | EC A6 01 72 */	fmuls f5, f6, f5
/* 813A5DBC | EC 84 01 F2 */	fmuls f4, f4, f7
/* 813A5DC0 | EC E8 01 F2 */	fmuls f7, f8, f7
/* 813A5DC4 | EF A2 00 32 */	fmuls f29, f2, f0
/* 813A5DC8 | EC 64 18 28 */	fsubs f3, f4, f3
/* 813A5DCC | EF C7 28 2A */	fadds f30, f7, f5
/* 813A5DD0 | EF E3 F8 28 */	fsubs f31, f3, f31
/* 813A5DD4 | 48 25 35 C5 */	bl __cvt_fp2unsigned
/* 813A5DD8 | FC 20 E8 90 */	fmr f1, f29
/* 813A5DDC | 7C 7C 1B 78 */	mr r28, r3
/* 813A5DE0 | 48 25 35 B9 */	bl __cvt_fp2unsigned
/* 813A5DE4 | FC 20 F8 90 */	fmr f1, f31
/* 813A5DE8 | 7C 7D 1B 78 */	mr r29, r3
/* 813A5DEC | 48 25 35 AD */	bl __cvt_fp2unsigned
/* 813A5DF0 | FC 20 F0 90 */	fmr f1, f30
/* 813A5DF4 | 7C 7E 1B 78 */	mr r30, r3
/* 813A5DF8 | 48 25 35 A1 */	bl __cvt_fp2unsigned
/* 813A5DFC | 7F C4 F3 78 */	mr r4, r30
/* 813A5E00 | 7F A5 EB 78 */	mr r5, r29
/* 813A5E04 | 7F 86 E3 78 */	mr r6, r28
/* 813A5E08 | 48 1A 21 A1 */	bl GXSetScissor
/* 813A5E0C | 80 9F 00 80 */	lwz r4, 0x80(r31)
/* 813A5E10 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813A5E14 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 813A5E18 | 38 83 02 98 */	addi r4, r3, 0x298
/* 813A5E1C | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813A5E20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A5E24 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813A5E28 | 7D 89 03 A6 */	mtctr r12
/* 813A5E2C | 4E 80 04 21 */	bctrl
/* 813A5E30 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813A5E34 | 48 00 45 19 */	bl draw__Q33ipl5scene9ThumbnailFv
/* 813A5E38 | 4B F8 FB 5D */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813A5E3C | A3 C3 00 06 */	lhz r30, 0x6(r3)
/* 813A5E40 | 4B F8 FB 55 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813A5E44 | A0 A3 00 04 */	lhz r5, 0x4(r3)
/* 813A5E48 | 7F C6 F3 78 */	mr r6, r30
/* 813A5E4C | 38 60 00 00 */	li r3, 0x0
/* 813A5E50 | 38 80 00 00 */	li r4, 0x0
/* 813A5E54 | 48 1A 21 55 */	bl GXSetScissor
/* 813A5E58 | 48 1C 41 5D */	bl SCGetAspectRatio
/* 813A5E5C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A5E60 | 3C 80 81 65 */	lis r4, lbl_8164D5DE@ha
/* 813A5E64 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A5E68 | 38 84 D5 DE */	addi r4, r4, lbl_8164D5DE@l
/* 813A5E6C | 40 82 00 0C */	bne .L_813A5E78
/* 813A5E70 | 3C 80 81 65 */	lis r4, lbl_8164D5E8@ha
/* 813A5E74 | 38 84 D5 E8 */	addi r4, r4, lbl_8164D5E8@l
.L_813A5E78:
/* 813A5E78 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813A5E7C | 4B FC 49 8D */	bl draw__Q33ipl6layout6ObjectFPCc
.L_813A5E80:
/* 813A5E80 | E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 813A5E84 | CB E1 00 70 */	lfd f31, 0x70(r1)
/* 813A5E88 | E3 C1 00 68 */	psq_l f30, 0x68(r1), 0, qr0
/* 813A5E8C | CB C1 00 60 */	lfd f30, 0x60(r1)
/* 813A5E90 | E3 A1 00 58 */	psq_l f29, 0x58(r1), 0, qr0
/* 813A5E94 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813A5E98 | CB A1 00 50 */	lfd f29, 0x50(r1)
/* 813A5E9C | 48 25 36 75 */	bl _restgpr_28
/* 813A5EA0 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 813A5EA4 | 7C 08 03 A6 */	mtlr r0
/* 813A5EA8 | 38 21 00 80 */	addi r1, r1, 0x80
/* 813A5EAC | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene11ChanAppEditFv

# .text:0x9D4 | 0x813A5EB0 | size: 0x8
# ipl::scene::ChanAppEdit::update()
.fn update__Q33ipl5scene11ChanAppEditFv, global
/* 813A5EB0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A5EB4 | 4B FC 50 D8 */	b update__Q33ipl3gui11PaneManagerFv
.endfn update__Q33ipl5scene11ChanAppEditFv

# .text:0x9DC | 0x813A5EB8 | size: 0x4B8
# ipl::scene::ChanAppEdit::anmFadein(ipl::scene::ChanAppBox*)
.fn anmFadein__Q33ipl5scene11ChanAppEditFPQ33ipl5scene10ChanAppBox, global
/* 813A5EB8 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813A5EBC | 7C 08 02 A6 */	mflr r0
/* 813A5EC0 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813A5EC4 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813A5EC8 | 48 25 35 F9 */	bl _savegpr_27
/* 813A5ECC | 3F E0 81 65 */	lis r31, lbl_8164D2E8@ha
/* 813A5ED0 | 90 83 00 78 */	stw r4, 0x78(r3)
/* 813A5ED4 | 7C 9E 23 78 */	mr r30, r4
/* 813A5ED8 | 7C 7D 1B 78 */	mr r29, r3
/* 813A5EDC | 3B FF D2 E8 */	addi r31, r31, lbl_8164D2E8@l
/* 813A5EE0 | 38 8D 88 4E */	li r4, lbl_8169688E@sda21
/* 813A5EE4 | 38 A0 00 01 */	li r5, 0x1
/* 813A5EE8 | 48 00 15 ED */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5EEC | 7F A3 EB 78 */	mr r3, r29
/* 813A5EF0 | 38 9F 02 D7 */	addi r4, r31, 0x2d7
/* 813A5EF4 | 38 A0 00 01 */	li r5, 0x1
/* 813A5EF8 | 48 00 15 DD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5EFC | 7F A3 EB 78 */	mr r3, r29
/* 813A5F00 | 38 9F 03 94 */	addi r4, r31, 0x394
/* 813A5F04 | 38 A0 00 00 */	li r5, 0x0
/* 813A5F08 | 48 00 15 CD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5F0C | 7F A3 EB 78 */	mr r3, r29
/* 813A5F10 | 38 9F 03 A3 */	addi r4, r31, 0x3a3
/* 813A5F14 | 38 A0 00 00 */	li r5, 0x0
/* 813A5F18 | 48 00 15 BD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5F1C | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813A5F20 | 88 03 06 21 */	lbz r0, 0x621(r3)
/* 813A5F24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A5F28 | 41 82 00 28 */	beq .L_813A5F50
/* 813A5F2C | 7F A3 EB 78 */	mr r3, r29
/* 813A5F30 | 38 9F 03 0B */	addi r4, r31, 0x30b
/* 813A5F34 | 38 A0 00 01 */	li r5, 0x1
/* 813A5F38 | 48 00 15 9D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5F3C | 7F A3 EB 78 */	mr r3, r29
/* 813A5F40 | 38 9F 03 18 */	addi r4, r31, 0x318
/* 813A5F44 | 38 A0 00 01 */	li r5, 0x1
/* 813A5F48 | 48 00 15 8D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5F4C | 48 00 00 24 */	b .L_813A5F70
.L_813A5F50:
/* 813A5F50 | 7F A3 EB 78 */	mr r3, r29
/* 813A5F54 | 38 9F 03 0B */	addi r4, r31, 0x30b
/* 813A5F58 | 38 A0 00 00 */	li r5, 0x0
/* 813A5F5C | 48 00 15 79 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5F60 | 7F A3 EB 78 */	mr r3, r29
/* 813A5F64 | 38 9F 03 18 */	addi r4, r31, 0x318
/* 813A5F68 | 38 A0 00 00 */	li r5, 0x0
/* 813A5F6C | 48 00 15 69 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
.L_813A5F70:
/* 813A5F70 | 7F A3 EB 78 */	mr r3, r29
/* 813A5F74 | 38 9F 02 AB */	addi r4, r31, 0x2ab
/* 813A5F78 | 3B 6D 88 5E */	li r27, lbl_8169689E@sda21
/* 813A5F7C | 3B 8D 88 4A */	li r28, lbl_8169688A@sda21
/* 813A5F80 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A5F84 | 48 00 14 7D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A5F88 | 7F A3 EB 78 */	mr r3, r29
/* 813A5F8C | 38 9F 02 B6 */	addi r4, r31, 0x2b6
/* 813A5F90 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A5F94 | 48 00 14 6D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A5F98 | 7F A3 EB 78 */	mr r3, r29
/* 813A5F9C | 38 9F 02 C1 */	addi r4, r31, 0x2c1
/* 813A5FA0 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A5FA4 | 48 00 14 5D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A5FA8 | 7F A3 EB 78 */	mr r3, r29
/* 813A5FAC | 38 9F 02 CC */	addi r4, r31, 0x2cc
/* 813A5FB0 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A5FB4 | 48 00 14 4D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A5FB8 | 7F A3 EB 78 */	mr r3, r29
/* 813A5FBC | 38 9F 03 B1 */	addi r4, r31, 0x3b1
/* 813A5FC0 | 38 A0 00 00 */	li r5, 0x0
/* 813A5FC4 | 48 00 15 11 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5FC8 | 7F A3 EB 78 */	mr r3, r29
/* 813A5FCC | 38 9F 03 BB */	addi r4, r31, 0x3bb
/* 813A5FD0 | 38 A0 00 00 */	li r5, 0x0
/* 813A5FD4 | 48 00 15 01 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A5FD8 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813A5FDC | 88 03 06 21 */	lbz r0, 0x621(r3)
/* 813A5FE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A5FE4 | 41 82 00 34 */	beq .L_813A6018
/* 813A5FE8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A5FEC | 38 80 01 2F */	li r4, 0x12f
/* 813A5FF0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A5FF4 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813A5FF8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A5FFC | 4B F9 87 C1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813A6000 | 7C 7B 1B 78 */	mr r27, r3
/* 813A6004 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813A6008 | 38 80 00 00 */	li r4, 0x0
/* 813A600C | 48 00 43 E5 */	bl getTitle__Q33ipl5scene9ThumbnailFi
/* 813A6010 | 7C 7C 1B 78 */	mr r28, r3
/* 813A6014 | 48 00 00 2C */	b .L_813A6040
.L_813A6018:
/* 813A6018 | 88 03 06 20 */	lbz r0, 0x620(r3)
/* 813A601C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A6020 | 40 82 00 20 */	bne .L_813A6040
/* 813A6024 | 38 80 00 00 */	li r4, 0x0
/* 813A6028 | 48 00 43 C9 */	bl getTitle__Q33ipl5scene9ThumbnailFi
/* 813A602C | 7C 7B 1B 78 */	mr r27, r3
/* 813A6030 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813A6034 | 38 80 00 01 */	li r4, 0x1
/* 813A6038 | 48 00 43 B9 */	bl getTitle__Q33ipl5scene9ThumbnailFi
/* 813A603C | 7C 7C 1B 78 */	mr r28, r3
.L_813A6040:
/* 813A6040 | 48 1C 3F 75 */	bl SCGetAspectRatio
/* 813A6044 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A6048 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A604C | 40 82 00 38 */	bne .L_813A6084
/* 813A6050 | 7F A3 EB 78 */	mr r3, r29
/* 813A6054 | 7F 65 DB 78 */	mr r5, r27
/* 813A6058 | 38 9F 02 C1 */	addi r4, r31, 0x2c1
/* 813A605C | 48 00 13 A5 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A6060 | 7F A3 EB 78 */	mr r3, r29
/* 813A6064 | 7F 85 E3 78 */	mr r5, r28
/* 813A6068 | 38 9F 02 CC */	addi r4, r31, 0x2cc
/* 813A606C | 48 00 13 95 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A6070 | 7F A3 EB 78 */	mr r3, r29
/* 813A6074 | 38 9F 03 BB */	addi r4, r31, 0x3bb
/* 813A6078 | 38 A0 00 01 */	li r5, 0x1
/* 813A607C | 48 00 14 59 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A6080 | 48 00 00 34 */	b .L_813A60B4
.L_813A6084:
/* 813A6084 | 7F A3 EB 78 */	mr r3, r29
/* 813A6088 | 7F 65 DB 78 */	mr r5, r27
/* 813A608C | 38 9F 02 AB */	addi r4, r31, 0x2ab
/* 813A6090 | 48 00 13 71 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A6094 | 7F A3 EB 78 */	mr r3, r29
/* 813A6098 | 7F 85 E3 78 */	mr r5, r28
/* 813A609C | 38 9F 02 B6 */	addi r4, r31, 0x2b6
/* 813A60A0 | 48 00 13 61 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A60A4 | 7F A3 EB 78 */	mr r3, r29
/* 813A60A8 | 38 9F 03 B1 */	addi r4, r31, 0x3b1
/* 813A60AC | 38 A0 00 01 */	li r5, 0x1
/* 813A60B0 | 48 00 14 25 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
.L_813A60B4:
/* 813A60B4 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813A60B8 | 38 60 06 28 */	li r3, 0x628
/* 813A60BC | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813A60C0 | 38 A0 00 04 */	li r5, 0x4
/* 813A60C4 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813A60C8 | 48 25 1F E9 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A60CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A60D0 | 7C 7C 1B 78 */	mr r28, r3
/* 813A60D4 | 41 82 00 34 */	beq .L_813A6108
/* 813A60D8 | 38 00 00 00 */	li r0, 0x0
/* 813A60DC | 3C 80 00 02 */	lis r4, 0x2
/* 813A60E0 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813A60E4 | 38 A0 00 20 */	li r5, 0x20
/* 813A60E8 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813A60EC | 98 03 06 20 */	stb r0, 0x620(r3)
/* 813A60F0 | 38 64 90 00 */	subi r3, r4, 0x7000
/* 813A60F4 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813A60F8 | 48 25 1F DD */	bl __nwa__FUlPQ23EGG4Heapi
/* 813A60FC | 90 7C 00 08 */	stw r3, 0x8(r28)
/* 813A6100 | 7F 83 E3 78 */	mr r3, r28
/* 813A6104 | 48 00 42 5D */	bl init__Q33ipl5scene9ThumbnailFv
.L_813A6108:
/* 813A6108 | 93 9D 00 80 */	stw r28, 0x80(r29)
/* 813A610C | 7F 83 E3 78 */	mr r3, r28
/* 813A6110 | 80 9E 00 40 */	lwz r4, 0x40(r30)
/* 813A6114 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813A6118 | 48 00 41 25 */	bl create__Q33ipl5scene9ThumbnailFPUc
/* 813A611C | 48 1C 3E 99 */	bl SCGetAspectRatio
/* 813A6120 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A6124 | 38 9F 03 D3 */	addi r4, r31, 0x3d3
/* 813A6128 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A612C | 40 82 00 08 */	bne .L_813A6134
/* 813A6130 | 38 9F 03 C7 */	addi r4, r31, 0x3c7
.L_813A6134:
/* 813A6134 | 7F A3 EB 78 */	mr r3, r29
/* 813A6138 | 48 00 14 8D */	bl get_translate__Q33ipl5scene13AnmControllerFPCc
/* 813A613C | 80 BD 00 80 */	lwz r5, 0x80(r29)
/* 813A6140 | 7C 64 1B 78 */	mr r4, r3
/* 813A6144 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813A6148 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A614C | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813A6150 | 4B F9 E5 35 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813A6154 | 80 BE 00 40 */	lwz r5, 0x40(r30)
/* 813A6158 | 3C 80 81 61 */	lis r4, lbl_8160FC90@ha
/* 813A615C | 38 84 FC 90 */	addi r4, r4, lbl_8160FC90@l
/* 813A6160 | 38 60 00 05 */	li r3, 0x5
/* 813A6164 | 80 05 06 1C */	lwz r0, 0x61c(r5)
/* 813A6168 | 38 C1 00 3E */	addi r6, r1, 0x3e
/* 813A616C | 38 A4 FF FE */	subi r5, r4, 0x2
/* 813A6170 | 7C 69 03 A6 */	mtctr r3
.L_813A6174:
/* 813A6174 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813A6178 | A4 65 00 04 */	lhzu r3, 0x4(r5)
/* 813A617C | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813A6180 | B4 66 00 04 */	sthu r3, 0x4(r6)
/* 813A6184 | 42 00 FF F0 */	bdnz .L_813A6174
/* 813A6188 | 38 80 00 64 */	li r4, 0x64
/* 813A618C | 38 60 00 00 */	li r3, 0x0
/* 813A6190 | 7D 80 23 96 */	divwu r12, r0, r4
/* 813A6194 | 39 60 00 0A */	li r11, 0xa
/* 813A6198 | 39 40 03 E8 */	li r10, 0x3e8
/* 813A619C | B0 61 00 36 */	sth r3, 0x36(r1)
/* 813A61A0 | 3B 81 00 40 */	addi r28, r1, 0x40
/* 813A61A4 | B0 61 00 38 */	sth r3, 0x38(r1)
/* 813A61A8 | 7D 20 5B 96 */	divwu r9, r0, r11
/* 813A61AC | B0 61 00 3A */	sth r3, 0x3a(r1)
/* 813A61B0 | 38 A0 00 03 */	li r5, 0x3
/* 813A61B4 | B0 61 00 3C */	sth r3, 0x3c(r1)
/* 813A61B8 | 38 C1 00 36 */	addi r6, r1, 0x36
/* 813A61BC | 38 80 00 00 */	li r4, 0x0
/* 813A61C0 | 7D 0C 5B 96 */	divwu r8, r12, r11
/* 813A61C4 | B0 61 00 3E */	sth r3, 0x3e(r1)
/* 813A61C8 | B0 61 00 2C */	sth r3, 0x2c(r1)
/* 813A61CC | B0 61 00 2E */	sth r3, 0x2e(r1)
/* 813A61D0 | B0 61 00 30 */	sth r3, 0x30(r1)
/* 813A61D4 | B0 61 00 32 */	sth r3, 0x32(r1)
/* 813A61D8 | 7F 60 53 96 */	divwu r27, r0, r10
/* 813A61DC | B0 61 00 34 */	sth r3, 0x34(r1)
/* 813A61E0 | 7D 48 59 D6 */	mullw r10, r8, r11
/* 813A61E4 | 57 68 08 3C */	slwi r8, r27, 1
/* 813A61E8 | 7D 1C 42 2E */	lhzx r8, r28, r8
/* 813A61EC | B1 01 00 36 */	sth r8, 0x36(r1)
/* 813A61F0 | 7C E9 5B 96 */	divwu r7, r9, r11
/* 813A61F4 | 7D 07 59 D6 */	mullw r8, r7, r11
/* 813A61F8 | 7C EA 60 50 */	subf r7, r10, r12
/* 813A61FC | 54 E7 08 3C */	slwi r7, r7, 1
/* 813A6200 | 7D 5C 3A 2E */	lhzx r10, r28, r7
/* 813A6204 | 7C E9 59 D6 */	mullw r7, r9, r11
/* 813A6208 | 7D 08 48 50 */	subf r8, r8, r9
/* 813A620C | B1 41 00 38 */	sth r10, 0x38(r1)
/* 813A6210 | 55 08 08 3C */	slwi r8, r8, 1
/* 813A6214 | 7D 1C 42 2E */	lhzx r8, r28, r8
/* 813A6218 | 7C 07 00 50 */	subf r0, r7, r0
/* 813A621C | 54 00 08 3C */	slwi r0, r0, 1
/* 813A6220 | B1 01 00 3A */	sth r8, 0x3a(r1)
/* 813A6224 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 813A6228 | B0 01 00 3C */	sth r0, 0x3c(r1)
/* 813A622C | 7C A9 03 A6 */	mtctr r5
.L_813A6230:
/* 813A6230 | 7C 06 1A 2E */	lhzx r0, r6, r3
/* 813A6234 | 28 00 00 30 */	cmplwi r0, 0x30
/* 813A6238 | 40 82 00 10 */	bne .L_813A6248
/* 813A623C | 38 84 00 01 */	addi r4, r4, 0x1
/* 813A6240 | 38 63 00 02 */	addi r3, r3, 0x2
/* 813A6244 | 42 00 FF EC */	bdnz .L_813A6230
.L_813A6248:
/* 813A6248 | 54 80 08 3C */	slwi r0, r4, 1
/* 813A624C | 38 81 00 36 */	addi r4, r1, 0x36
/* 813A6250 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813A6254 | 7C 84 02 14 */	add r4, r4, r0
/* 813A6258 | 48 26 24 71 */	bl fn_816086C8
/* 813A625C | 7F A3 EB 78 */	mr r3, r29
/* 813A6260 | 38 9F 02 88 */	addi r4, r31, 0x288
/* 813A6264 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 813A6268 | 48 00 11 99 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A626C | 7F A3 EB 78 */	mr r3, r29
/* 813A6270 | 38 9F 02 93 */	addi r4, r31, 0x293
/* 813A6274 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 813A6278 | 48 00 11 89 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A627C | C0 22 85 14 */	lfs f1, lbl_81694914@sda21(r0)
/* 813A6280 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813A6284 | FC 40 08 90 */	fmr f2, f1
/* 813A6288 | FC 60 08 90 */	fmr f3, f1
/* 813A628C | 4B FB C7 D1 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813A6290 | 7F C3 F3 78 */	mr r3, r30
/* 813A6294 | 38 8D 88 18 */	li r4, lbl_81696858@sda21
/* 813A6298 | 48 00 13 2D */	bl get_translate__Q33ipl5scene13AnmControllerFPCc
/* 813A629C | 7C 64 1B 78 */	mr r4, r3
/* 813A62A0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813A62A4 | 4B FF 13 01 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813A62A8 | 38 7D 00 60 */	addi r3, r29, 0x60
/* 813A62AC | 38 81 00 20 */	addi r4, r1, 0x20
/* 813A62B0 | 4B F9 E3 D5 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813A62B4 | 38 7D 00 6C */	addi r3, r29, 0x6c
/* 813A62B8 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813A62BC | 4B F9 E3 C9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813A62C0 | C0 22 85 28 */	lfs f1, lbl_81694928@sda21(r0)
/* 813A62C4 | 38 7D 00 40 */	addi r3, r29, 0x40
/* 813A62C8 | C0 42 85 14 */	lfs f2, lbl_81694914@sda21(r0)
/* 813A62CC | 38 80 00 00 */	li r4, 0x0
/* 813A62D0 | C0 62 85 2C */	lfs f3, lbl_8169492C@sda21(r0)
/* 813A62D4 | 4B FB C5 7D */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813A62D8 | 38 7D 00 40 */	addi r3, r29, 0x40
/* 813A62DC | 4B FB C5 95 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813A62E0 | 38 00 00 01 */	li r0, 0x1
/* 813A62E4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A62E8 | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 813A62EC | 38 9D 00 40 */	addi r4, r29, 0x40
/* 813A62F0 | 48 00 00 81 */	bl "get__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>CFv"
/* 813A62F4 | 7F A3 EB 78 */	mr r3, r29
/* 813A62F8 | 38 9F 02 D7 */	addi r4, r31, 0x2d7
/* 813A62FC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813A6300 | 48 00 12 69 */	bl set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3
/* 813A6304 | 7F A3 EB 78 */	mr r3, r29
/* 813A6308 | 38 80 00 FC */	li r4, 0xfc
/* 813A630C | 48 00 08 35 */	bl change_button_text__Q33ipl5scene11ChanAppEditFUl
/* 813A6310 | 3B 60 00 00 */	li r27, 0x0
/* 813A6314 | 48 00 00 10 */	b .L_813A6324
.L_813A6318:
/* 813A6318 | 80 9B 00 08 */	lwz r4, 0x8(r27)
/* 813A631C | 7F A3 EB 78 */	mr r3, r29
/* 813A6320 | 48 00 0F D1 */	bl clear_anmpane__Q33ipl5scene13AnmControllerFPCc
.L_813A6324:
/* 813A6324 | 7F 64 DB 78 */	mr r4, r27
/* 813A6328 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813A632C | 48 16 BF B1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A6330 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6334 | 7C 7B 1B 78 */	mr r27, r3
/* 813A6338 | 40 82 FF E0 */	bne .L_813A6318
/* 813A633C | 7F A3 EB 78 */	mr r3, r29
/* 813A6340 | 38 80 00 00 */	li r4, 0x0
/* 813A6344 | 38 A0 00 00 */	li r5, 0x0
/* 813A6348 | 38 C0 00 01 */	li r6, 0x1
/* 813A634C | 48 00 0D B5 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A6350 | 38 00 00 01 */	li r0, 0x1
/* 813A6354 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813A6358 | 90 1D 00 3C */	stw r0, 0x3c(r29)
/* 813A635C | 48 25 31 B1 */	bl _restgpr_27
/* 813A6360 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 813A6364 | 7C 08 03 A6 */	mtlr r0
/* 813A6368 | 38 21 00 70 */	addi r1, r1, 0x70
/* 813A636C | 4E 80 00 20 */	blr
.endfn anmFadein__Q33ipl5scene11ChanAppEditFPQ33ipl5scene10ChanAppBox

# .text:0xE94 | 0x813A6370 | size: 0xA8
# ipl::math::LinearIntp<ipl::math::VEC3>::get() const
.fn "get__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>CFv", weak
/* 813A6370 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813A6374 | 7C 08 02 A6 */	mflr r0
/* 813A6378 | C0 24 00 0C */	lfs f1, 0xc(r4)
/* 813A637C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813A6380 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813A6384 | 7C 9F 23 78 */	mr r31, r4
/* 813A6388 | 38 84 00 2C */	addi r4, r4, 0x2c
/* 813A638C | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 813A6390 | 7C 7E 1B 78 */	mr r30, r3
/* 813A6394 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A6398 | 4B FF 12 29 */	bl __ml__Q33ipl4math4VEC3CFf
/* 813A639C | C0 3F 00 04 */	lfs f1, 0x4(r31)
/* 813A63A0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813A63A4 | C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 813A63A8 | 38 9F 00 20 */	addi r4, r31, 0x20
/* 813A63AC | EC 21 00 28 */	fsubs f1, f1, f0
/* 813A63B0 | 4B FF 12 11 */	bl __ml__Q33ipl4math4VEC3CFf
/* 813A63B4 | C0 5F 00 04 */	lfs f2, 0x4(r31)
/* 813A63B8 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813A63BC | C0 02 85 2C */	lfs f0, lbl_8169492C@sda21(r0)
/* 813A63C0 | 7F C3 F3 78 */	mr r3, r30
/* 813A63C4 | E0 21 00 14 */	psq_l f1, 0x14(r1), 0, qr0
/* 813A63C8 | EC 60 10 24 */	fdivs f3, f0, f2
/* 813A63CC | E0 01 00 08 */	psq_l f0, 0x8(r1), 0, qr0
/* 813A63D0 | 10 41 00 2A */	ps_add f2, f1, f0
/* 813A63D4 | E0 21 80 1C */	psq_l f1, 0x1c(r1), 1, qr0
/* 813A63D8 | E0 01 80 10 */	psq_l f0, 0x10(r1), 1, qr0
/* 813A63DC | F0 41 00 20 */	psq_st f2, 0x20(r1), 0, qr0
/* 813A63E0 | 10 41 00 2A */	ps_add f2, f1, f0
/* 813A63E4 | E0 01 00 20 */	psq_l f0, 0x20(r1), 0, qr0
/* 813A63E8 | F0 41 80 28 */	psq_st f2, 0x28(r1), 1, qr0
/* 813A63EC | 10 00 00 D8 */	ps_muls0 f0, f0, f3
/* 813A63F0 | F0 04 00 00 */	psq_st f0, 0x0(r4), 0, qr0
/* 813A63F4 | 10 02 00 D8 */	ps_muls0 f0, f2, f3
/* 813A63F8 | F0 04 80 08 */	psq_st f0, 0x8(r4), 1, qr0
/* 813A63FC | 4B FF 11 A9 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813A6400 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813A6404 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813A6408 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 813A640C | 7C 08 03 A6 */	mtlr r0
/* 813A6410 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813A6414 | 4E 80 00 20 */	blr
.endfn "get__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>CFv"

# .text:0xF3C | 0x813A6418 | size: 0x74
# ipl::scene::ChanAppEdit::anmFadeout()
.fn anmFadeout__Q33ipl5scene11ChanAppEditFv, global
/* 813A6418 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A641C | 7C 08 02 A6 */	mflr r0
/* 813A6420 | 38 80 01 3B */	li r4, 0x13b
/* 813A6424 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6428 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A642C | 3B E0 00 00 */	li r31, 0x0
/* 813A6430 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A6434 | 7C 7E 1B 78 */	mr r30, r3
/* 813A6438 | 93 E3 00 78 */	stw r31, 0x78(r3)
/* 813A643C | 48 00 07 05 */	bl change_button_text__Q33ipl5scene11ChanAppEditFUl
/* 813A6440 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813A6444 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6448 | 41 82 00 10 */	beq .L_813A6458
/* 813A644C | 38 80 00 01 */	li r4, 0x1
/* 813A6450 | 48 00 00 3D */	bl __dt__Q33ipl5scene9ThumbnailFv
/* 813A6454 | 93 FE 00 80 */	stw r31, 0x80(r30)
.L_813A6458:
/* 813A6458 | 7F C3 F3 78 */	mr r3, r30
/* 813A645C | 38 80 00 01 */	li r4, 0x1
/* 813A6460 | 38 A0 00 00 */	li r5, 0x0
/* 813A6464 | 38 C0 00 01 */	li r6, 0x1
/* 813A6468 | 48 00 0C 99 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A646C | 38 00 00 02 */	li r0, 0x2
/* 813A6470 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813A6474 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6478 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A647C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6480 | 7C 08 03 A6 */	mtlr r0
/* 813A6484 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6488 | 4E 80 00 20 */	blr
.endfn anmFadeout__Q33ipl5scene11ChanAppEditFv

# .text:0xFB0 | 0x813A648C | size: 0x68
# ipl::scene::Thumbnail::~Thumbnail()
.fn __dt__Q33ipl5scene9ThumbnailFv, global
/* 813A648C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6490 | 7C 08 02 A6 */	mflr r0
/* 813A6494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6498 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A649C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A64A0 | 7C 9F 23 78 */	mr r31, r4
/* 813A64A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A64A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813A64AC | 41 82 00 2C */	beq .L_813A64D8
/* 813A64B0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A64B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A64B8 | 41 82 00 08 */	beq .L_813A64C0
/* 813A64BC | 4B FC 49 45 */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813A64C0:
/* 813A64C0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A64C4 | 48 25 1C 21 */	bl __dl__FPv
/* 813A64C8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A64CC | 40 81 00 0C */	ble .L_813A64D8
/* 813A64D0 | 7F C3 F3 78 */	mr r3, r30
/* 813A64D4 | 48 25 1C 11 */	bl __dl__FPv
.L_813A64D8:
/* 813A64D8 | 7F C3 F3 78 */	mr r3, r30
/* 813A64DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A64E0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A64E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A64E8 | 7C 08 03 A6 */	mtlr r0
/* 813A64EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A64F0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene9ThumbnailFv

# .text:0x1018 | 0x813A64F4 | size: 0x40
# ipl::scene::ChanAppEdit::anmHideBtn0Dialog()
.fn anmHideBtn0Dialog__Q33ipl5scene11ChanAppEditFv, global
/* 813A64F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A64F8 | 7C 08 02 A6 */	mflr r0
/* 813A64FC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A6500 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6504 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A6508 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A650C | 7C 7F 1B 78 */	mr r31, r3
/* 813A6510 | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813A6514 | 4B FA 13 F1 */	bl terminate__Q23ipl12DialogWindowFv
/* 813A6518 | 38 00 00 03 */	li r0, 0x3
/* 813A651C | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813A6520 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6524 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6528 | 7C 08 03 A6 */	mtlr r0
/* 813A652C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6530 | 4E 80 00 20 */	blr
.endfn anmHideBtn0Dialog__Q33ipl5scene11ChanAppEditFv

# .text:0x1058 | 0x813A6534 | size: 0x20
# ipl::scene::ChanAppEdit::anmShowBtn0Dialog(unsigned long, bool, bool)
.fn anmShowBtn0Dialog__Q33ipl5scene11ChanAppEditFUlbb, global
/* 813A6534 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 813A6538 | 20 65 00 00 */	subfic r3, r5, 0x0
/* 813A653C | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 813A6540 | 38 00 00 B4 */	li r0, 0xb4
/* 813A6544 | 7C A3 19 10 */	subfe r5, r3, r3
/* 813A6548 | 80 67 00 AC */	lwz r3, 0xac(r7)
/* 813A654C | 7C 05 28 78 */	andc r5, r0, r5
/* 813A6550 | 4B F9 FE FC */	b callBtn0__Q23ipl12DialogWindowFUlUlb
.endfn anmShowBtn0Dialog__Q33ipl5scene11ChanAppEditFUlbb

# .text:0x1078 | 0x813A6554 | size: 0x40
# ipl::scene::ChanAppEdit::anmShowS2Btn2Dialog(unsigned long)
.fn anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl, global
/* 813A6554 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6558 | 7C 08 02 A6 */	mflr r0
/* 813A655C | 3C C0 81 65 */	lis r6, lbl_8164D586@ha
/* 813A6560 | 7C 85 23 78 */	mr r5, r4
/* 813A6564 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6568 | 38 86 D5 86 */	addi r4, r6, lbl_8164D586@l
/* 813A656C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6570 | 7C 7F 1B 78 */	mr r31, r3
/* 813A6574 | 48 00 0E 05 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A6578 | 38 00 00 04 */	li r0, 0x4
/* 813A657C | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813A6580 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6584 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6588 | 7C 08 03 A6 */	mtlr r0
/* 813A658C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6590 | 4E 80 00 20 */	blr
.endfn anmShowS2Btn2Dialog__Q33ipl5scene11ChanAppEditFUl

# .text:0x10B8 | 0x813A6594 | size: 0x94
# ipl::scene::ChanAppEdit::anmSelectFadein()
.fn anmSelectFadein__Q33ipl5scene11ChanAppEditFv, global
/* 813A6594 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6598 | 7C 08 02 A6 */	mflr r0
/* 813A659C | 3C 80 81 65 */	lis r4, lbl_8164D586@ha
/* 813A65A0 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A65A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A65A8 | 38 84 D5 86 */	addi r4, r4, lbl_8164D586@l
/* 813A65AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A65B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A65B4 | 7C 7E 1B 78 */	mr r30, r3
/* 813A65B8 | 48 00 0E 49 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A65BC | 7F C3 F3 78 */	mr r3, r30
/* 813A65C0 | 38 80 00 08 */	li r4, 0x8
/* 813A65C4 | 38 A0 00 01 */	li r5, 0x1
/* 813A65C8 | 38 C0 00 01 */	li r6, 0x1
/* 813A65CC | 48 00 0B 35 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A65D0 | 7F C3 F3 78 */	mr r3, r30
/* 813A65D4 | 38 80 00 FC */	li r4, 0xfc
/* 813A65D8 | 48 00 05 69 */	bl change_button_text__Q33ipl5scene11ChanAppEditFUl
/* 813A65DC | 3B E0 00 00 */	li r31, 0x0
/* 813A65E0 | 48 00 00 10 */	b .L_813A65F0
.L_813A65E4:
/* 813A65E4 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 813A65E8 | 7F C3 F3 78 */	mr r3, r30
/* 813A65EC | 48 00 0D 05 */	bl clear_anmpane__Q33ipl5scene13AnmControllerFPCc
.L_813A65F0:
/* 813A65F0 | 7F E4 FB 78 */	mr r4, r31
/* 813A65F4 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813A65F8 | 48 16 BC E5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A65FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6600 | 7C 7F 1B 78 */	mr r31, r3
/* 813A6604 | 40 82 FF E0 */	bne .L_813A65E4
/* 813A6608 | 38 00 00 06 */	li r0, 0x6
/* 813A660C | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813A6610 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6614 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A6618 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A661C | 7C 08 03 A6 */	mtlr r0
/* 813A6620 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6624 | 4E 80 00 20 */	blr
.endfn anmSelectFadein__Q33ipl5scene11ChanAppEditFv

# .text:0x114C | 0x813A6628 | size: 0x40
# ipl::scene::ChanAppEdit::anmSelectFadeout(unsigned long)
.fn anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl, global
/* 813A6628 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A662C | 7C 08 02 A6 */	mflr r0
/* 813A6630 | 3C C0 81 65 */	lis r6, lbl_8164D586@ha
/* 813A6634 | 7C 85 23 78 */	mr r5, r4
/* 813A6638 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A663C | 38 86 D5 86 */	addi r4, r6, lbl_8164D586@l
/* 813A6640 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6644 | 7C 7F 1B 78 */	mr r31, r3
/* 813A6648 | 48 00 0D 31 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A664C | 38 00 00 07 */	li r0, 0x7
/* 813A6650 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813A6654 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6658 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A665C | 7C 08 03 A6 */	mtlr r0
/* 813A6660 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6664 | 4E 80 00 20 */	blr
.endfn anmSelectFadeout__Q33ipl5scene11ChanAppEditFUl

# .text:0x118C | 0x813A6668 | size: 0x44
# ipl::scene::ChanAppEdit::anmTextFadein(unsigned long)
.fn anmTextFadein__Q33ipl5scene11ChanAppEditFUl, global
/* 813A6668 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A666C | 7C 08 02 A6 */	mflr r0
/* 813A6670 | 38 A0 00 00 */	li r5, 0x0
/* 813A6674 | 38 C0 00 01 */	li r6, 0x1
/* 813A6678 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A667C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6680 | 7C 7F 1B 78 */	mr r31, r3
/* 813A6684 | 90 83 00 7C */	stw r4, 0x7c(r3)
/* 813A6688 | 38 80 00 09 */	li r4, 0x9
/* 813A668C | 48 00 0A 75 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A6690 | 38 00 00 09 */	li r0, 0x9
/* 813A6694 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813A6698 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A669C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A66A0 | 7C 08 03 A6 */	mtlr r0
/* 813A66A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A66A8 | 4E 80 00 20 */	blr
.endfn anmTextFadein__Q33ipl5scene11ChanAppEditFUl

# .text:0x11D0 | 0x813A66AC | size: 0x98
# ipl::scene::ChanAppEdit::anmTextFadeout()
.fn anmTextFadeout__Q33ipl5scene11ChanAppEditFv, global
/* 813A66AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A66B0 | 7C 08 02 A6 */	mflr r0
/* 813A66B4 | 38 80 00 0A */	li r4, 0xa
/* 813A66B8 | 38 A0 00 00 */	li r5, 0x0
/* 813A66BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A66C0 | 38 C0 00 01 */	li r6, 0x1
/* 813A66C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A66C8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A66CC | 7C 7E 1B 78 */	mr r30, r3
/* 813A66D0 | 48 00 0A 31 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A66D4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A66D8 | 38 80 00 16 */	li r4, 0x16
/* 813A66DC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A66E0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A66E4 | 48 06 4A 55 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A66E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813A66EC | 38 80 00 03 */	li r4, 0x3
/* 813A66F0 | 38 A0 01 3B */	li r5, 0x13b
/* 813A66F4 | 48 06 13 05 */	bl fn_814079F8
/* 813A66F8 | 7F E3 FB 78 */	mr r3, r31
/* 813A66FC | 38 80 00 01 */	li r4, 0x1
/* 813A6700 | 38 A0 00 00 */	li r5, 0x0
/* 813A6704 | 48 06 12 F5 */	bl fn_814079F8
/* 813A6708 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813A670C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6710 | 41 82 00 14 */	beq .L_813A6724
/* 813A6714 | 38 80 00 01 */	li r4, 0x1
/* 813A6718 | 4B FF FD 75 */	bl __dt__Q33ipl5scene9ThumbnailFv
/* 813A671C | 38 00 00 00 */	li r0, 0x0
/* 813A6720 | 90 1E 00 80 */	stw r0, 0x80(r30)
.L_813A6724:
/* 813A6724 | 38 00 00 0A */	li r0, 0xa
/* 813A6728 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813A672C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6730 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A6734 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6738 | 7C 08 03 A6 */	mtlr r0
/* 813A673C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6740 | 4E 80 00 20 */	blr
.endfn anmTextFadeout__Q33ipl5scene11ChanAppEditFv

# .text:0x1268 | 0x813A6744 | size: 0x48
# ipl::scene::ChanAppEdit::anmStartWaitAnm()
.fn anmStartWaitAnm__Q33ipl5scene11ChanAppEditFv, global
/* 813A6744 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6748 | 7C 08 02 A6 */	mflr r0
/* 813A674C | 38 8D 88 56 */	li r4, lbl_81696896@sda21
/* 813A6750 | 38 A0 00 01 */	li r5, 0x1
/* 813A6754 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6758 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A675C | 7C 7F 1B 78 */	mr r31, r3
/* 813A6760 | 48 00 0D 75 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A6764 | 7F E3 FB 78 */	mr r3, r31
/* 813A6768 | 38 80 00 0B */	li r4, 0xb
/* 813A676C | 38 A0 00 02 */	li r5, 0x2
/* 813A6770 | 38 C0 00 01 */	li r6, 0x1
/* 813A6774 | 48 00 09 8D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A6778 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A677C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6780 | 7C 08 03 A6 */	mtlr r0
/* 813A6784 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6788 | 4E 80 00 20 */	blr
.endfn anmStartWaitAnm__Q33ipl5scene11ChanAppEditFv

# .text:0x12B0 | 0x813A678C | size: 0x40
# ipl::scene::ChanAppEdit::anmStopWaitAnm()
.fn anmStopWaitAnm__Q33ipl5scene11ChanAppEditFv, global
/* 813A678C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6790 | 7C 08 02 A6 */	mflr r0
/* 813A6794 | 38 8D 88 56 */	li r4, lbl_81696896@sda21
/* 813A6798 | 38 A0 00 00 */	li r5, 0x0
/* 813A679C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A67A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A67A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813A67A8 | 48 00 0D 2D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A67AC | 7F E3 FB 78 */	mr r3, r31
/* 813A67B0 | 38 80 00 0B */	li r4, 0xb
/* 813A67B4 | 48 00 09 BD */	bl stop_animation__Q33ipl5scene13AnmControllerFi
/* 813A67B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A67BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A67C0 | 7C 08 03 A6 */	mtlr r0
/* 813A67C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A67C8 | 4E 80 00 20 */	blr
.endfn anmStopWaitAnm__Q33ipl5scene11ChanAppEditFv

# .text:0x12F0 | 0x813A67CC | size: 0xF4
# ipl::scene::ChanAppEdit::anmClear()
.fn anmClear__Q33ipl5scene11ChanAppEditFv, global
/* 813A67CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A67D0 | 7C 08 02 A6 */	mflr r0
/* 813A67D4 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A67D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A67DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A67E0 | 3F E0 81 65 */	lis r31, lbl_8164D2E8@ha
/* 813A67E4 | 3B FF D2 E8 */	addi r31, r31, lbl_8164D2E8@l
/* 813A67E8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A67EC | 7C 7E 1B 78 */	mr r30, r3
/* 813A67F0 | 38 9F 02 AB */	addi r4, r31, 0x2ab
/* 813A67F4 | 48 00 0C 0D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A67F8 | 7F C3 F3 78 */	mr r3, r30
/* 813A67FC | 38 9F 02 B6 */	addi r4, r31, 0x2b6
/* 813A6800 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A6804 | 48 00 0B FD */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A6808 | 7F C3 F3 78 */	mr r3, r30
/* 813A680C | 38 9F 02 C1 */	addi r4, r31, 0x2c1
/* 813A6810 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A6814 | 48 00 0B ED */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A6818 | 7F C3 F3 78 */	mr r3, r30
/* 813A681C | 38 9F 02 CC */	addi r4, r31, 0x2cc
/* 813A6820 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A6824 | 48 00 0B DD */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A6828 | 7F C3 F3 78 */	mr r3, r30
/* 813A682C | 38 9F 02 88 */	addi r4, r31, 0x288
/* 813A6830 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A6834 | 48 00 0B CD */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A6838 | 7F C3 F3 78 */	mr r3, r30
/* 813A683C | 38 9F 02 93 */	addi r4, r31, 0x293
/* 813A6840 | 38 AD 88 4A */	li r5, lbl_8169688A@sda21
/* 813A6844 | 48 00 0B BD */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A6848 | 7F C3 F3 78 */	mr r3, r30
/* 813A684C | 38 9F 03 B1 */	addi r4, r31, 0x3b1
/* 813A6850 | 38 A0 00 00 */	li r5, 0x0
/* 813A6854 | 48 00 0C 81 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A6858 | 7F C3 F3 78 */	mr r3, r30
/* 813A685C | 38 9F 03 BB */	addi r4, r31, 0x3bb
/* 813A6860 | 38 A0 00 00 */	li r5, 0x0
/* 813A6864 | 48 00 0C 71 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A6868 | 48 1C 37 4D */	bl SCGetAspectRatio
/* 813A686C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813A6870 | 38 9F 03 A3 */	addi r4, r31, 0x3a3
/* 813A6874 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A6878 | 40 82 00 08 */	bne .L_813A6880
/* 813A687C | 38 9F 03 94 */	addi r4, r31, 0x394
.L_813A6880:
/* 813A6880 | 7F C3 F3 78 */	mr r3, r30
/* 813A6884 | 38 A0 00 01 */	li r5, 0x1
/* 813A6888 | 48 00 0C 4D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A688C | 7F C3 F3 78 */	mr r3, r30
/* 813A6890 | 38 80 00 0C */	li r4, 0xc
/* 813A6894 | 38 A0 00 00 */	li r5, 0x0
/* 813A6898 | 38 C0 00 01 */	li r6, 0x1
/* 813A689C | 48 00 08 65 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A68A0 | 38 00 00 0C */	li r0, 0xc
/* 813A68A4 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813A68A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A68AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A68B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A68B4 | 7C 08 03 A6 */	mtlr r0
/* 813A68B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A68BC | 4E 80 00 20 */	blr
.endfn anmClear__Q33ipl5scene11ChanAppEditFv

# .text:0x13E4 | 0x813A68C0 | size: 0x48
.fn iplChanApp_813A68C0, global
/* 813A68C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A68C4 | 7C 08 02 A6 */	mflr r0
/* 813A68C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A68CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A68D0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A68D4 | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 813A68D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A68DC | 41 82 00 18 */	beq .L_813A68F4
/* 813A68E0 | 7C 03 03 78 */	mr r3, r0
/* 813A68E4 | 38 80 00 01 */	li r4, 0x1
/* 813A68E8 | 4B FF FB A5 */	bl __dt__Q33ipl5scene9ThumbnailFv
/* 813A68EC | 38 00 00 00 */	li r0, 0x0
/* 813A68F0 | 90 1F 00 80 */	stw r0, 0x80(r31)
.L_813A68F4:
/* 813A68F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A68F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A68FC | 7C 08 03 A6 */	mtlr r0
/* 813A6900 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6904 | 4E 80 00 20 */	blr
.endfn iplChanApp_813A68C0

# .text:0x142C | 0x813A6908 | size: 0x238
# ipl::scene::ChanAppEdit::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene11ChanAppEditFUlUlPv, global
/* 813A6908 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A690C | 7C 08 02 A6 */	mflr r0
/* 813A6910 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A6914 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A6918 | 48 25 2B A9 */	bl _savegpr_27
/* 813A691C | 7C 7B 1B 78 */	mr r27, r3
/* 813A6920 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813A6924 | 3F E0 81 65 */	lis r31, lbl_8164D2E8@ha
/* 813A6928 | 7C BC 2B 78 */	mr r28, r5
/* 813A692C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A6930 | 7C DD 33 78 */	mr r29, r6
/* 813A6934 | 3B FF D2 E8 */	addi r31, r31, lbl_8164D2E8@l
/* 813A6938 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813A693C | 7D 89 03 A6 */	mtctr r12
/* 813A6940 | 4E 80 04 21 */	bctrl
/* 813A6944 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A6948 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813A694C | 7D 89 03 A6 */	mtctr r12
/* 813A6950 | 4E 80 04 21 */	bctrl
/* 813A6954 | 80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 813A6958 | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813A695C | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813A6960 | 41 82 01 C8 */	beq .L_813A6B28
/* 813A6964 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 813A6968 | 41 82 00 20 */	beq .L_813A6988
/* 813A696C | 40 80 00 10 */	bge .L_813A697C
/* 813A6970 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813A6974 | 40 80 00 84 */	bge .L_813A69F8
/* 813A6978 | 48 00 01 B0 */	b .L_813A6B28
.L_813A697C:
/* 813A697C | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813A6980 | 40 80 01 A8 */	bge .L_813A6B28
/* 813A6984 | 48 00 00 3C */	b .L_813A69C0
.L_813A6988:
/* 813A6988 | 7F 63 DB 78 */	mr r3, r27
/* 813A698C | 7F C4 F3 78 */	mr r4, r30
/* 813A6990 | 48 00 08 E1 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A6994 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6998 | 7C 7E 1B 78 */	mr r30, r3
/* 813A699C | 41 82 01 8C */	beq .L_813A6B28
/* 813A69A0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A69A4 | 38 80 00 0C */	li r4, 0xc
/* 813A69A8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A69AC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A69B0 | 48 06 47 89 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A69B4 | 7F C4 F3 78 */	mr r4, r30
/* 813A69B8 | 4B FF AF 19 */	bl onPoint__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane
/* 813A69BC | 48 00 01 6C */	b .L_813A6B28
.L_813A69C0:
/* 813A69C0 | 7F 63 DB 78 */	mr r3, r27
/* 813A69C4 | 7F C4 F3 78 */	mr r4, r30
/* 813A69C8 | 48 00 08 A9 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A69CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A69D0 | 7C 7E 1B 78 */	mr r30, r3
/* 813A69D4 | 41 82 01 54 */	beq .L_813A6B28
/* 813A69D8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A69DC | 38 80 00 0C */	li r4, 0xc
/* 813A69E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A69E4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A69E8 | 48 06 47 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A69EC | 7F C4 F3 78 */	mr r4, r30
/* 813A69F0 | 4B FF AF A1 */	bl onLeft__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane
/* 813A69F4 | 48 00 01 34 */	b .L_813A6B28
.L_813A69F8:
/* 813A69F8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813A69FC | 3C 80 00 10 */	lis r4, 0x10
/* 813A6A00 | 7F A3 EB 78 */	mr r3, r29
/* 813A6A04 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813A6A08 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813A6A0C | 7D 89 03 A6 */	mtctr r12
/* 813A6A10 | 4E 80 04 21 */	bctrl
/* 813A6A14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6A18 | 41 82 01 10 */	beq .L_813A6B28
/* 813A6A1C | 7F 63 DB 78 */	mr r3, r27
/* 813A6A20 | 7F C4 F3 78 */	mr r4, r30
/* 813A6A24 | 48 00 08 4D */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A6A28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6A2C | 41 82 00 FC */	beq .L_813A6B28
/* 813A6A30 | 83 C3 00 08 */	lwz r30, 0x8(r3)
/* 813A6A34 | 38 9F 03 4B */	addi r4, r31, 0x34b
/* 813A6A38 | 7F C3 F3 78 */	mr r3, r30
/* 813A6A3C | 48 25 BA 45 */	bl strcmp
/* 813A6A40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6A44 | 40 82 00 44 */	bne .L_813A6A88
/* 813A6A48 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A6A4C | 38 9F 03 DE */	addi r4, r31, 0x3de
/* 813A6A50 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A6A54 | 4B FC 4A 19 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A6A58 | 7F 63 DB 78 */	mr r3, r27
/* 813A6A5C | 38 80 00 04 */	li r4, 0x4
/* 813A6A60 | 38 A0 00 00 */	li r5, 0x0
/* 813A6A64 | 38 C0 00 01 */	li r6, 0x1
/* 813A6A68 | 48 00 06 99 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A6A6C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A6A70 | 38 80 00 0C */	li r4, 0xc
/* 813A6A74 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A6A78 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A6A7C | 48 06 46 BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A6A80 | 4B FF B3 21 */	bl onTrigCopy__Q33ipl5scene11ChannelEditFv
/* 813A6A84 | 48 00 00 A4 */	b .L_813A6B28
.L_813A6A88:
/* 813A6A88 | 7F C3 F3 78 */	mr r3, r30
/* 813A6A8C | 38 9F 03 41 */	addi r4, r31, 0x341
/* 813A6A90 | 48 25 B9 F1 */	bl strcmp
/* 813A6A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6A98 | 40 82 00 44 */	bne .L_813A6ADC
/* 813A6A9C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A6AA0 | 38 9F 03 DE */	addi r4, r31, 0x3de
/* 813A6AA4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A6AA8 | 4B FC 49 C5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A6AAC | 7F 63 DB 78 */	mr r3, r27
/* 813A6AB0 | 38 80 00 0F */	li r4, 0xf
/* 813A6AB4 | 38 A0 00 00 */	li r5, 0x0
/* 813A6AB8 | 38 C0 00 01 */	li r6, 0x1
/* 813A6ABC | 48 00 06 45 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A6AC0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A6AC4 | 38 80 00 0C */	li r4, 0xc
/* 813A6AC8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A6ACC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A6AD0 | 48 06 46 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A6AD4 | 4B FF B3 F9 */	bl iplChannelEdit_813A1ECC__Q33ipl5scene11ChannelEditFv
/* 813A6AD8 | 48 00 00 50 */	b .L_813A6B28
.L_813A6ADC:
/* 813A6ADC | 7F C3 F3 78 */	mr r3, r30
/* 813A6AE0 | 38 9F 03 55 */	addi r4, r31, 0x355
/* 813A6AE4 | 48 25 B9 9D */	bl strcmp
/* 813A6AE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6AEC | 40 82 00 3C */	bne .L_813A6B28
/* 813A6AF0 | 80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 813A6AF4 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813A6AF8 | 41 82 00 30 */	beq .L_813A6B28
/* 813A6AFC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813A6B00 | 38 9F 03 DE */	addi r4, r31, 0x3de
/* 813A6B04 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813A6B08 | 4B FC 49 65 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813A6B0C | 7F 63 DB 78 */	mr r3, r27
/* 813A6B10 | 38 80 00 07 */	li r4, 0x7
/* 813A6B14 | 38 A0 00 00 */	li r5, 0x0
/* 813A6B18 | 38 C0 00 01 */	li r6, 0x1
/* 813A6B1C | 48 00 05 E5 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A6B20 | 38 00 00 0B */	li r0, 0xb
/* 813A6B24 | 90 1B 00 3C */	stw r0, 0x3c(r27)
.L_813A6B28:
/* 813A6B28 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A6B2C | 48 25 29 E1 */	bl _restgpr_27
/* 813A6B30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A6B34 | 7C 08 03 A6 */	mtlr r0
/* 813A6B38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A6B3C | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene11ChanAppEditFUlUlPv

# .text:0x1664 | 0x813A6B40 | size: 0xAC
# ipl::scene::ChanAppEdit::change_button_text(unsigned long)
.fn change_button_text__Q33ipl5scene11ChanAppEditFUl, global
/* 813A6B40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6B44 | 7C 08 02 A6 */	mflr r0
/* 813A6B48 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A6B4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6B50 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A6B54 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6B58 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A6B5C | 7C 9E 23 78 */	mr r30, r4
/* 813A6B60 | 38 80 00 16 */	li r4, 0x16
/* 813A6B64 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A6B68 | 48 06 45 D1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A6B6C | 7C 7F 1B 78 */	mr r31, r3
/* 813A6B70 | 38 80 00 02 */	li r4, 0x2
/* 813A6B74 | 38 A0 00 00 */	li r5, 0x0
/* 813A6B78 | 48 06 0E 81 */	bl fn_814079F8
/* 813A6B7C | 7F E3 FB 78 */	mr r3, r31
/* 813A6B80 | 7F C5 F3 78 */	mr r5, r30
/* 813A6B84 | 38 80 00 03 */	li r4, 0x3
/* 813A6B88 | 48 06 0E 71 */	bl fn_814079F8
/* 813A6B8C | 7F E3 FB 78 */	mr r3, r31
/* 813A6B90 | 38 80 00 01 */	li r4, 0x1
/* 813A6B94 | 38 A0 00 00 */	li r5, 0x0
/* 813A6B98 | 48 06 0E 61 */	bl fn_814079F8
/* 813A6B9C | 2C 1E 00 FC */	cmpwi r30, 0xfc
/* 813A6BA0 | 41 82 00 20 */	beq .L_813A6BC0
/* 813A6BA4 | 40 80 00 10 */	bge .L_813A6BB4
/* 813A6BA8 | 2C 1E 00 2E */	cmpwi r30, 0x2e
/* 813A6BAC | 41 82 00 20 */	beq .L_813A6BCC
/* 813A6BB0 | 48 00 00 24 */	b .L_813A6BD4
.L_813A6BB4:
/* 813A6BB4 | 2C 1E 01 3B */	cmpwi r30, 0x13b
/* 813A6BB8 | 41 82 00 08 */	beq .L_813A6BC0
/* 813A6BBC | 48 00 00 18 */	b .L_813A6BD4
.L_813A6BC0:
/* 813A6BC0 | 38 00 00 00 */	li r0, 0x0
/* 813A6BC4 | 90 1F 02 88 */	stw r0, 0x288(r31)
/* 813A6BC8 | 48 00 00 0C */	b .L_813A6BD4
.L_813A6BCC:
/* 813A6BCC | 38 00 00 01 */	li r0, 0x1
/* 813A6BD0 | 90 1F 02 88 */	stw r0, 0x288(r31)
.L_813A6BD4:
/* 813A6BD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6BD8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6BDC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A6BE0 | 7C 08 03 A6 */	mtlr r0
/* 813A6BE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6BE8 | 4E 80 00 20 */	blr
.endfn change_button_text__Q33ipl5scene11ChanAppEditFUl

# .text:0x1710 | 0x813A6BEC | size: 0x84
# ipl::scene::ChanAppEdit::on_fadein()
.fn on_fadein__Q33ipl5scene11ChanAppEditFv, global
/* 813A6BEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A6BF0 | 7C 08 02 A6 */	mflr r0
/* 813A6BF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A6BF8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813A6BFC | 7C 7F 1B 78 */	mr r31, r3
/* 813A6C00 | 81 83 00 40 */	lwz r12, 0x40(r3)
/* 813A6C04 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813A6C08 | 7D 89 03 A6 */	mtctr r12
/* 813A6C0C | 38 63 00 40 */	addi r3, r3, 0x40
/* 813A6C10 | 4E 80 04 21 */	bctrl
/* 813A6C14 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813A6C18 | 38 9F 00 40 */	addi r4, r31, 0x40
/* 813A6C1C | 4B FF F7 55 */	bl "get__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>CFv"
/* 813A6C20 | 3C 80 81 65 */	lis r4, lbl_8164D5BF@ha
/* 813A6C24 | 7F E3 FB 78 */	mr r3, r31
/* 813A6C28 | 38 84 D5 BF */	addi r4, r4, lbl_8164D5BF@l
/* 813A6C2C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813A6C30 | 48 00 09 39 */	bl set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3
/* 813A6C34 | 7F E3 FB 78 */	mr r3, r31
/* 813A6C38 | 38 80 00 00 */	li r4, 0x0
/* 813A6C3C | 48 00 05 69 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A6C40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6C44 | 40 82 00 18 */	bne .L_813A6C5C
/* 813A6C48 | 80 1F 00 54 */	lwz r0, 0x54(r31)
/* 813A6C4C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A6C50 | 41 82 00 0C */	beq .L_813A6C5C
/* 813A6C54 | 38 00 00 00 */	li r0, 0x0
/* 813A6C58 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813A6C5C:
/* 813A6C5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A6C60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813A6C64 | 7C 08 03 A6 */	mtlr r0
/* 813A6C68 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A6C6C | 4E 80 00 20 */	blr
.endfn on_fadein__Q33ipl5scene11ChanAppEditFv

# .text:0x1794 | 0x813A6C70 | size: 0x2C
# ipl::scene::ChanAppEdit::on_hide_btn0_dialog()
.fn on_hide_btn0_dialog__Q33ipl5scene11ChanAppEditFv, global
/* 813A6C70 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A6C74 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A6C78 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813A6C7C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813A6C80 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813A6C84 | 41 82 00 0C */	beq .L_813A6C90
/* 813A6C88 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813A6C8C | 4C 82 00 20 */	bnelr
.L_813A6C90:
/* 813A6C90 | 38 00 00 00 */	li r0, 0x0
/* 813A6C94 | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 813A6C98 | 4E 80 00 20 */	blr
.endfn on_hide_btn0_dialog__Q33ipl5scene11ChanAppEditFv

# .text:0x17C0 | 0x813A6C9C | size: 0x6C
# ipl::scene::ChanAppEdit::on_show_btn2_dialog1st()
.fn on_show_btn2_dialog1st__Q33ipl5scene11ChanAppEditFv, global
/* 813A6C9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6CA0 | 7C 08 02 A6 */	mflr r0
/* 813A6CA4 | 38 80 00 04 */	li r4, 0x4
/* 813A6CA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6CAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6CB0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A6CB4 | 48 00 04 F1 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A6CB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6CBC | 40 82 00 38 */	bne .L_813A6CF4
/* 813A6CC0 | 7F E3 FB 78 */	mr r3, r31
/* 813A6CC4 | 38 80 00 08 */	li r4, 0x8
/* 813A6CC8 | 38 A0 00 00 */	li r5, 0x0
/* 813A6CCC | 38 C0 00 01 */	li r6, 0x1
/* 813A6CD0 | 48 00 04 31 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A6CD4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A6CD8 | 38 80 00 16 */	li r4, 0x16
/* 813A6CDC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A6CE0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A6CE4 | 48 06 44 55 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A6CE8 | 48 06 0B E5 */	bl fn_814078CC
/* 813A6CEC | 38 00 00 05 */	li r0, 0x5
/* 813A6CF0 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813A6CF4:
/* 813A6CF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6CF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6CFC | 7C 08 03 A6 */	mtlr r0
/* 813A6D00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6D04 | 4E 80 00 20 */	blr
.endfn on_show_btn2_dialog1st__Q33ipl5scene11ChanAppEditFv

# .text:0x182C | 0x813A6D08 | size: 0x5C
# ipl::scene::ChanAppEdit::on_show_btn2_dialog2nd()
.fn on_show_btn2_dialog2nd__Q33ipl5scene11ChanAppEditFv, global
/* 813A6D08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6D0C | 7C 08 02 A6 */	mflr r0
/* 813A6D10 | 38 80 00 08 */	li r4, 0x8
/* 813A6D14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6D18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6D1C | 7C 7F 1B 78 */	mr r31, r3
/* 813A6D20 | 48 00 04 85 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A6D24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6D28 | 40 82 00 28 */	bne .L_813A6D50
/* 813A6D2C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A6D30 | 38 80 01 42 */	li r4, 0x142
/* 813A6D34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A6D38 | 38 A0 01 41 */	li r5, 0x141
/* 813A6D3C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813A6D40 | 38 C0 00 01 */	li r6, 0x1
/* 813A6D44 | 4B FA 02 49 */	bl callS2Btn2__Q23ipl12DialogWindowFUlUlb
/* 813A6D48 | 38 00 00 00 */	li r0, 0x0
/* 813A6D4C | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813A6D50:
/* 813A6D50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6D54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6D58 | 7C 08 03 A6 */	mtlr r0
/* 813A6D5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6D60 | 4E 80 00 20 */	blr
.endfn on_show_btn2_dialog2nd__Q33ipl5scene11ChanAppEditFv

# .text:0x1888 | 0x813A6D64 | size: 0x60
# ipl::scene::ChanAppEdit::on_select_fadeout1st()
.fn on_select_fadeout1st__Q33ipl5scene11ChanAppEditFv, global
/* 813A6D64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6D68 | 7C 08 02 A6 */	mflr r0
/* 813A6D6C | 38 80 00 04 */	li r4, 0x4
/* 813A6D70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6D74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6D78 | 7C 7F 1B 78 */	mr r31, r3
/* 813A6D7C | 48 00 04 29 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A6D80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6D84 | 40 82 00 2C */	bne .L_813A6DB0
/* 813A6D88 | 7F E3 FB 78 */	mr r3, r31
/* 813A6D8C | 38 80 00 08 */	li r4, 0x8
/* 813A6D90 | 38 A0 00 00 */	li r5, 0x0
/* 813A6D94 | 38 C0 00 01 */	li r6, 0x1
/* 813A6D98 | 48 00 03 69 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A6D9C | 7F E3 FB 78 */	mr r3, r31
/* 813A6DA0 | 38 80 00 2E */	li r4, 0x2e
/* 813A6DA4 | 4B FF FD 9D */	bl change_button_text__Q33ipl5scene11ChanAppEditFUl
/* 813A6DA8 | 38 00 00 08 */	li r0, 0x8
/* 813A6DAC | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813A6DB0:
/* 813A6DB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6DB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6DB8 | 7C 08 03 A6 */	mtlr r0
/* 813A6DBC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6DC0 | 4E 80 00 20 */	blr
.endfn on_select_fadeout1st__Q33ipl5scene11ChanAppEditFv

# .text:0x18E8 | 0x813A6DC4 | size: 0x84
# ipl::scene::ChanAppEdit::on_text_fadein()
.fn on_text_fadein__Q33ipl5scene11ChanAppEditFv, global
/* 813A6DC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6DC8 | 7C 08 02 A6 */	mflr r0
/* 813A6DCC | 38 80 00 09 */	li r4, 0x9
/* 813A6DD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6DD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6DD8 | 7C 7F 1B 78 */	mr r31, r3
/* 813A6DDC | 48 00 04 05 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A6DE0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A6DE4 | C0 02 85 30 */	lfs f0, lbl_81694930@sda21(r0)
/* 813A6DE8 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 813A6DEC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813A6DF0 | 4C 41 13 82 */	cror eq, gt, eq
/* 813A6DF4 | 40 82 00 18 */	bne .L_813A6E0C
/* 813A6DF8 | 3C 80 81 65 */	lis r4, lbl_8164D586@ha
/* 813A6DFC | 80 BF 00 7C */	lwz r5, 0x7c(r31)
/* 813A6E00 | 7F E3 FB 78 */	mr r3, r31
/* 813A6E04 | 38 84 D5 86 */	addi r4, r4, lbl_8164D586@l
/* 813A6E08 | 48 00 05 71 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
.L_813A6E0C:
/* 813A6E0C | 7F E3 FB 78 */	mr r3, r31
/* 813A6E10 | 38 80 00 09 */	li r4, 0x9
/* 813A6E14 | 48 00 03 91 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A6E18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6E1C | 40 82 00 18 */	bne .L_813A6E34
/* 813A6E20 | 7F E3 FB 78 */	mr r3, r31
/* 813A6E24 | 38 80 00 09 */	li r4, 0x9
/* 813A6E28 | 48 00 03 49 */	bl stop_animation__Q33ipl5scene13AnmControllerFi
/* 813A6E2C | 38 00 00 00 */	li r0, 0x0
/* 813A6E30 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813A6E34:
/* 813A6E34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6E38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6E3C | 7C 08 03 A6 */	mtlr r0
/* 813A6E40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6E44 | 4E 80 00 20 */	blr
.endfn on_text_fadein__Q33ipl5scene11ChanAppEditFv

# .text:0x196C | 0x813A6E48 | size: 0x58
# ipl::scene::ChanAppEdit::on_trig_del()
.fn on_trig_del__Q33ipl5scene11ChanAppEditFv, global
/* 813A6E48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6E4C | 7C 08 02 A6 */	mflr r0
/* 813A6E50 | 38 80 00 07 */	li r4, 0x7
/* 813A6E54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6E58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6E5C | 7C 7F 1B 78 */	mr r31, r3
/* 813A6E60 | 48 00 03 45 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A6E64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6E68 | 40 82 00 24 */	bne .L_813A6E8C
/* 813A6E6C | 38 00 00 00 */	li r0, 0x0
/* 813A6E70 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A6E74 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813A6E78 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A6E7C | 38 80 00 0C */	li r4, 0xc
/* 813A6E80 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A6E84 | 48 06 42 B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A6E88 | 4B FF AF 7D */	bl onTrigDel__Q33ipl5scene11ChannelEditFv
.L_813A6E8C:
/* 813A6E8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6E90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6E94 | 7C 08 03 A6 */	mtlr r0
/* 813A6E98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6E9C | 4E 80 00 20 */	blr
.endfn on_trig_del__Q33ipl5scene11ChanAppEditFv

# .text:0x19C4 | 0x813A6EA0 | size: 0x5C
# ipl::scene::ChanAppEdit::on_clear()
.fn on_clear__Q33ipl5scene11ChanAppEditFv, global
/* 813A6EA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6EA4 | 7C 08 02 A6 */	mflr r0
/* 813A6EA8 | 38 80 00 0C */	li r4, 0xc
/* 813A6EAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6EB0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6EB4 | 7C 7F 1B 78 */	mr r31, r3
/* 813A6EB8 | 48 00 02 ED */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A6EBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6EC0 | 40 82 00 28 */	bne .L_813A6EE8
/* 813A6EC4 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813A6EC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A6ECC | 41 82 00 14 */	beq .L_813A6EE0
/* 813A6ED0 | 38 80 00 01 */	li r4, 0x1
/* 813A6ED4 | 4B FF F5 B9 */	bl __dt__Q33ipl5scene9ThumbnailFv
/* 813A6ED8 | 38 00 00 00 */	li r0, 0x0
/* 813A6EDC | 90 1F 00 80 */	stw r0, 0x80(r31)
.L_813A6EE0:
/* 813A6EE0 | 38 00 00 00 */	li r0, 0x0
/* 813A6EE4 | 90 1F 00 3C */	stw r0, 0x3c(r31)
.L_813A6EE8:
/* 813A6EE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6EEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6EF0 | 7C 08 03 A6 */	mtlr r0
/* 813A6EF4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6EF8 | 4E 80 00 20 */	blr
.endfn on_clear__Q33ipl5scene11ChanAppEditFv

# .text:0x1A20 | 0x813A6EFC | size: 0x8
# ipl::scene::ChanAppEdit::@40@onEvent(unsigned long, unsigned long, void*)
.fn "@40@onEvent__Q33ipl5scene11ChanAppEditFUlUlPv", global
/* 813A6EFC | 38 63 FF D8 */	subi r3, r3, 0x28
/* 813A6F00 | 4B FF FA 08 */	b onEvent__Q33ipl5scene11ChanAppEditFUlUlPv
.endfn "@40@onEvent__Q33ipl5scene11ChanAppEditFUlUlPv"

# 0x8160FC80..0x8160FCA8 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x8160FC80 | size: 0x10
.obj lbl_8160FC80, global
	.4byte 0x42800000
	.4byte 0x42400000
	.4byte 0x42AA0000
	.4byte 0x42400000
.endobj lbl_8160FC80

# .rodata:0x10 | 0x8160FC90 | size: 0x18
.obj lbl_8160FC90, global
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
.endobj lbl_8160FC90

# 0x8164D2E8..0x8164D7C0 | size: 0x4D8
.data
.balign 8

# .data:0x0 | 0x8164D2E8 | size: 0x29E
.obj lbl_8164D2E8, global
	.4byte 0x6D6E5F43
	.4byte 0x68616E6E
	.4byte 0x656C4465
	.4byte 0x7461696C
	.4byte 0x5F615F53
	.4byte 0x65656E49
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F43
	.4byte 0x68616E6E
	.4byte 0x656C4465
	.4byte 0x7461696C
	.4byte 0x5F615F53
	.4byte 0x65656E4F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4368616E
	.4byte 0x6E656C44
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x436F7079
	.4byte 0x466F7563
	.4byte 0x7573496E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4368
	.4byte 0x616E6E65
	.4byte 0x6C446574
	.4byte 0x61696C5F
	.4byte 0x615F436F
	.4byte 0x7079466F
	.4byte 0x75637573
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F436861
	.4byte 0x6E6E656C
	.4byte 0x44657461
	.4byte 0x696C5F61
	.4byte 0x5F436F70
	.4byte 0x79466C61
	.4byte 0x73682E62
	.4byte 0x726C616E
	.4byte 0x00475F43
	.4byte 0x6F707946
	.4byte 0x6C617368
	.4byte 0x006D6E5F
	.4byte 0x4368616E
	.4byte 0x6E656C44
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x44656C46
	.4byte 0x6F756375
	.4byte 0x73496E2E
	.4byte 0x62726C61
	.4byte 0x6E006D6E
	.4byte 0x5F436861
	.4byte 0x6E6E656C
	.4byte 0x44657461
	.4byte 0x696C5F61
	.4byte 0x5F44656C
	.4byte 0x466F7563
	.4byte 0x75734F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F43
	.4byte 0x68616E6E
	.4byte 0x656C4465
	.4byte 0x7461696C
	.4byte 0x5F615F44
	.4byte 0x656C466C
	.4byte 0x6173682E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x44656C46
	.4byte 0x6C617368
	.4byte 0x006D6E5F
	.4byte 0x4368616E
	.4byte 0x6E656C44
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x53656C65
	.4byte 0x63744F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x475F5365
	.4byte 0x6C656374
	.4byte 0x006D6E5F
	.4byte 0x4368616E
	.4byte 0x6E656C44
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x5365656E
	.4byte 0x4F757459
	.4byte 0x65732E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4368616E
	.4byte 0x6E656C44
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x5365656E
	.4byte 0x4F757459
	.4byte 0x65734F6B
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4368
	.4byte 0x616E6E65
	.4byte 0x6C446574
	.4byte 0x61696C5F
	.4byte 0x615F5761
	.4byte 0x69742E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4368616E
	.4byte 0x6E656C44
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x436F7665
	.4byte 0x72416C70
	.4byte 0x6861496E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x6E5F4368
	.4byte 0x616E6E65
	.4byte 0x6C446574
	.4byte 0x61696C5F
	.4byte 0x615F4D6F
	.4byte 0x7665466F
	.4byte 0x75637573
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x4368616E
	.4byte 0x6E656C44
	.4byte 0x65746169
	.4byte 0x6C5F615F
	.4byte 0x4D6F7665
	.4byte 0x466F7563
	.4byte 0x75734F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F43
	.4byte 0x68616E6E
	.4byte 0x656C4465
	.4byte 0x7461696C
	.4byte 0x5F615F4D
	.4byte 0x6F766546
	.4byte 0x6C617368
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F4D6F76
	.4byte 0x65466C61
	.4byte 0x73680054
	.4byte 0x5F4D6F76
	.4byte 0x655F3030
	.4byte 0x00545F43
	.4byte 0x6F70795F
	.4byte 0x30300054
	.4byte 0x5F44656C
	.4byte 0x5F303000
	.4byte 0x545F426C
	.4byte 0x6F636B5F
	.4byte 0x30300054
	.4byte 0x5F426C6F
	.4byte 0x636B5F30
	.2byte 0x3200
.endobj lbl_8164D2E8

# .data:0x29E | 0x8164D586 | size: 0x39
.obj lbl_8164D586, global
	.4byte 0x545F4D65
	.4byte 0x73736167
	.4byte 0x655F3030
	.4byte 0x00545F54
	.4byte 0x69746C65
	.4byte 0x5F303000
	.4byte 0x545F5469
	.4byte 0x746C655F
	.4byte 0x30310054
	.4byte 0x5F546974
	.4byte 0x6C655F30
	.4byte 0x3200545F
	.4byte 0x5469746C
	.4byte 0x655F3033
	.byte 0x00
.endobj lbl_8164D586

# .data:0x2D7 | 0x8164D5BF | size: 0x1F
.obj lbl_8164D5BF, global
	.4byte 0x4E5F5769
	.4byte 0x6E646F77
	.4byte 0x00545F42
	.4byte 0x6C6F636B
	.4byte 0x5F303100
	.4byte 0x545F426C
	.4byte 0x6F636B5F
	.byte 0x30, 0x33, 0x00
.endobj lbl_8164D5BF

# .data:0x2F6 | 0x8164D5DE | size: 0xA
.obj lbl_8164D5DE, global
	.string "N_Mask4x3"
.endobj lbl_8164D5DE

# .data:0x300 | 0x8164D5E8 | size: 0x60
.obj lbl_8164D5E8, global
	.4byte 0x4E5F4D61
	.4byte 0x736B3136
	.4byte 0x78390042
	.4byte 0x6173654D
	.4byte 0x6F76655F
	.4byte 0x6F666600
	.4byte 0x42617365
	.4byte 0x4D6F7665
	.4byte 0x5F6F6666
	.4byte 0x5F303000
	.4byte 0x545F4D6F
	.4byte 0x76655F6F
	.4byte 0x66660054
	.4byte 0x5F4D6F76
	.4byte 0x655F6F66
	.4byte 0x665F3030
	.4byte 0x00425F4D
	.4byte 0x6F76655F
	.4byte 0x30300042
	.4byte 0x5F436F70
	.4byte 0x795F3030
	.4byte 0x00425F44
	.4byte 0x656C5F30
	.4byte 0x30000000
.endobj lbl_8164D5E8

# .data:0x360 | 0x8164D648 | size: 0x34
.obj jumptable_8164D648, local
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5C44
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5B68
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5B74
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5B94
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5BA0
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5BAC
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5BB8
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5BD8
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5BE4
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5C04
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5C10
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5C30
	.rel calc__Q33ipl5scene11ChanAppEditFv, .L_813A5C3C
.endobj jumptable_8164D648

# .data:0x394 | 0x8164D67C | size: 0x5C
.obj gap_08_8164D67C_data, global
.hidden gap_08_8164D67C_data
	.4byte 0x436F7665
	.4byte 0x725F3136
	.4byte 0x78395F64
	.4byte 0x656C0043
	.4byte 0x6F766572
	.4byte 0x5F347833
	.4byte 0x5F64656C
	.4byte 0x00426C6F
	.4byte 0x636B4C69
	.4byte 0x6E650042
	.4byte 0x6C6F636B
	.4byte 0x4C696E65
	.4byte 0x3031004E
	.4byte 0x5F417461
	.4byte 0x72693136
	.4byte 0x7839004E
	.4byte 0x5F417461
	.4byte 0x72693478
	.4byte 0x33005749
	.4byte 0x504C5F53
	.4byte 0x455F4445
	.4byte 0x43494445
	.4byte 0x00000000
.endobj gap_08_8164D67C_data

# .data:0x3F0 | 0x8164D6D8 | size: 0xE8
# ipl::scene::ChanAppEdit::__vtable
.obj __vt__Q33ipl5scene11ChanAppEdit, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene11ChanAppEditFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@40@onEvent__Q33ipl5scene11ChanAppEditFUlUlPv"
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEvent__Q33ipl5scene11ChanAppEditFUlUlPv
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
.endobj __vt__Q33ipl5scene11ChanAppEdit

# 0x81696860..0x816968A8 | size: 0x48
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696860 | size: 0x7
.obj lbl_81696860, global
	.string "G_Mask"
.endobj lbl_81696860

# .sdata:0x7 | 0x81696867 | size: 0x7
.obj lbl_81696867, global
	.string "G_Copy"
.endobj lbl_81696867

# .sdata:0xE | 0x8169686E | size: 0x6
.obj lbl_8169686E, global
	.string "G_Del"
.endobj lbl_8169686E

# .sdata:0x14 | 0x81696874 | size: 0x7
.obj lbl_81696874, global
	.string "G_Wait"
.endobj lbl_81696874

# .sdata:0x1B | 0x8169687B | size: 0x8
.obj lbl_8169687B, global
	.string "G_Cover"
.endobj lbl_8169687B

# .sdata:0x23 | 0x81696883 | size: 0x7
.obj lbl_81696883, global
	.string "G_Move"
.endobj lbl_81696883

# .sdata:0x2A | 0x8169688A | size: 0x4
.obj lbl_8169688A, global
	.string16 " "
.endobj lbl_8169688A

# .sdata:0x2E | 0x8169688E | size: 0x8
.obj lbl_8169688E, global
	.string "Mask_00"
.endobj lbl_8169688E

# .sdata:0x36 | 0x81696896 | size: 0x8
.obj lbl_81696896, global
	.4byte 0x4E5F5761
	.4byte 0x69740000
.endobj lbl_81696896

# .sdata:0x3E | 0x8169689E | size: 0xA
.obj lbl_8169689E, global
	.4byte 0x003F003F
	.4byte 0x003F0000
	.2byte 0x0000
.endobj lbl_8169689E
