.include "macros.inc"
.file "iplGCTextBalloon.cpp"

# 0x813D140C..0x813D2018 | size: 0xC0C
.text
.balign 4

# .text:0x0 | 0x813D140C | size: 0x130
# ipl::scene::TextBalloon::TextBalloon(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*, const ipl::math::VEC3&, float, float)
.fn __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff, global
/* 813D140C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D1410 | 7C 08 02 A6 */	mflr r0
/* 813D1414 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D1418 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D141C | 48 22 80 A1 */	bl _savegpr_26
/* 813D1420 | 81 48 00 00 */	lwz r10, 0x0(r8)
/* 813D1424 | 39 60 00 00 */	li r11, 0x0
/* 813D1428 | 81 28 00 04 */	lwz r9, 0x4(r8)
/* 813D142C | 38 00 00 01 */	li r0, 0x1
/* 813D1430 | 81 08 00 08 */	lwz r8, 0x8(r8)
/* 813D1434 | 3F E0 81 65 */	lis r31, lbl_81652F18@ha
/* 813D1438 | 7C BC 2B 78 */	mr r28, r5
/* 813D143C | 91 63 00 08 */	stw r11, 0x8(r3)
/* 813D1440 | 7C 7A 1B 78 */	mr r26, r3
/* 813D1444 | 7C 9B 23 78 */	mr r27, r4
/* 813D1448 | 91 63 00 14 */	stw r11, 0x14(r3)
/* 813D144C | 7C DD 33 78 */	mr r29, r6
/* 813D1450 | 7C FE 3B 78 */	mr r30, r7
/* 813D1454 | 3B FF 2F 18 */	addi r31, r31, lbl_81652F18@l
/* 813D1458 | 91 63 00 18 */	stw r11, 0x18(r3)
/* 813D145C | 38 A0 00 04 */	li r5, 0x4
/* 813D1460 | 91 43 00 1C */	stw r10, 0x1c(r3)
/* 813D1464 | 91 23 00 20 */	stw r9, 0x20(r3)
/* 813D1468 | 91 03 00 24 */	stw r8, 0x24(r3)
/* 813D146C | 91 63 00 28 */	stw r11, 0x28(r3)
/* 813D1470 | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 813D1474 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 813D1478 | D0 43 00 34 */	stfs f2, 0x34(r3)
/* 813D147C | 91 63 00 38 */	stw r11, 0x38(r3)
/* 813D1480 | 38 60 05 80 */	li r3, 0x580
/* 813D1484 | 48 22 6C 2D */	bl __nw__FUlPQ23EGG4Heapi
/* 813D1488 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D148C | 41 82 00 18 */	beq .L_813D14A4
/* 813D1490 | 7F 64 DB 78 */	mr r4, r27
/* 813D1494 | 7F 85 E3 78 */	mr r5, r28
/* 813D1498 | 7F A6 EB 78 */	mr r6, r29
/* 813D149C | 7F C7 F3 78 */	mr r7, r30
/* 813D14A0 | 4B F9 8B 85 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813D14A4:
/* 813D14A4 | 90 7A 00 0C */	stw r3, 0xc(r26)
/* 813D14A8 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 813D14AC | 38 A0 00 01 */	li r5, 0x1
/* 813D14B0 | 4B F9 8E BD */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813D14B4 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 813D14B8 | 4B F9 91 7D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813D14BC | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 813D14C0 | 38 9F 00 26 */	addi r4, r31, 0x26
/* 813D14C4 | 38 A0 00 01 */	li r5, 0x1
/* 813D14C8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D14CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D14D0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D14D4 | 7D 89 03 A6 */	mtctr r12
/* 813D14D8 | 4E 80 04 21 */	bctrl
/* 813D14DC | 38 80 00 00 */	li r4, 0x0
/* 813D14E0 | 4B F7 2F 35 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813D14E4 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 813D14E8 | 38 9F 00 30 */	addi r4, r31, 0x30
/* 813D14EC | 38 A0 00 01 */	li r5, 0x1
/* 813D14F0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D14F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D14F8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D14FC | 7D 89 03 A6 */	mtctr r12
/* 813D1500 | 4E 80 04 21 */	bctrl
/* 813D1504 | 4B F7 49 61 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813D1508 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D150C | 38 8D 8C A0 */	li r4, lbl_81696CE0@sda21
/* 813D1510 | 38 A0 00 00 */	li r5, 0x0
/* 813D1514 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813D1518 | 7D 89 03 A6 */	mtctr r12
/* 813D151C | 4E 80 04 21 */	bctrl
/* 813D1520 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D1524 | 7F 43 D3 78 */	mr r3, r26
/* 813D1528 | 48 22 7F E1 */	bl _restgpr_26
/* 813D152C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D1530 | 7C 08 03 A6 */	mtlr r0
/* 813D1534 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D1538 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff

# .text:0x130 | 0x813D153C | size: 0x70
# ipl::scene::TextBalloon::~TextBalloon()
.fn __dt__Q33ipl5scene11TextBalloonFv, global
/* 813D153C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D1540 | 7C 08 02 A6 */	mflr r0
/* 813D1544 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D1548 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D154C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D1550 | 7C 9F 23 78 */	mr r31, r4
/* 813D1554 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D1558 | 7C 7E 1B 78 */	mr r30, r3
/* 813D155C | 41 82 00 34 */	beq .L_813D1590
/* 813D1560 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D1564 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D1568 | 41 82 00 18 */	beq .L_813D1580
/* 813D156C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D1570 | 38 80 00 01 */	li r4, 0x1
/* 813D1574 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813D1578 | 7D 89 03 A6 */	mtctr r12
/* 813D157C | 4E 80 04 21 */	bctrl
.L_813D1580:
/* 813D1580 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813D1584 | 40 81 00 0C */	ble .L_813D1590
/* 813D1588 | 7F C3 F3 78 */	mr r3, r30
/* 813D158C | 48 22 6B 59 */	bl __dl__FPv
.L_813D1590:
/* 813D1590 | 7F C3 F3 78 */	mr r3, r30
/* 813D1594 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D1598 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D159C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D15A0 | 7C 08 03 A6 */	mtlr r0
/* 813D15A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D15A8 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene11TextBalloonFv

# .text:0x1A0 | 0x813D15AC | size: 0x4C
# ipl::scene::TextBalloon::calc()
.fn calc__Q33ipl5scene11TextBalloonFv, global
/* 813D15AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D15B0 | 7C 08 02 A6 */	mflr r0
/* 813D15B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D15B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D15BC | 7C 7F 1B 78 */	mr r31, r3
/* 813D15C0 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D15C4 | 4B F9 91 41 */	bl calc__Q33ipl6layout6ObjectFv
/* 813D15C8 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 813D15CC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D15D0 | 41 82 00 0C */	beq .L_813D15DC
/* 813D15D4 | 40 80 00 10 */	bge .L_813D15E4
/* 813D15D8 | 48 00 00 0C */	b .L_813D15E4
.L_813D15DC:
/* 813D15DC | 7F E3 FB 78 */	mr r3, r31
/* 813D15E0 | 48 00 03 19 */	bl on_pre_fadein__Q33ipl5scene11TextBalloonFv
.L_813D15E4:
/* 813D15E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D15E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D15EC | 7C 08 03 A6 */	mtlr r0
/* 813D15F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D15F4 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene11TextBalloonFv

# .text:0x1EC | 0x813D15F8 | size: 0x8
# ipl::scene::TextBalloon::draw()
.fn draw__Q33ipl5scene11TextBalloonFv, global
/* 813D15F8 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D15FC | 4B F9 91 A0 */	b draw__Q33ipl6layout6ObjectFv
.endfn draw__Q33ipl5scene11TextBalloonFv

# .text:0x1F4 | 0x813D1600 | size: 0x68
# ipl::scene::TextBalloon::init(const wchar_t*, unsigned long)
.fn init__Q33ipl5scene11TextBalloonFPCwUl, global
/* 813D1600 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D1604 | 7C 08 02 A6 */	mflr r0
/* 813D1608 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D160C | 38 00 00 00 */	li r0, 0x0
/* 813D1610 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D1614 | 7C 7F 1B 78 */	mr r31, r3
/* 813D1618 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 813D161C | 38 80 00 00 */	li r4, 0x0
/* 813D1620 | 90 A3 00 18 */	stw r5, 0x18(r3)
/* 813D1624 | 38 A0 FF FF */	li r5, -0x1
/* 813D1628 | 90 03 00 38 */	stw r0, 0x38(r3)
/* 813D162C | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D1630 | 4B F9 94 31 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813D1634 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813D1638 | 38 80 00 00 */	li r4, 0x0
/* 813D163C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D1640 | 48 14 0C D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D1644 | C0 22 86 A0 */	lfs f1, lbl_81694AA0@sda21(r0)
/* 813D1648 | 4B F9 86 19 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 813D164C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813D1650 | 4B F9 90 B5 */	bl calc__Q33ipl6layout6ObjectFv
/* 813D1654 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D1658 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D165C | 7C 08 03 A6 */	mtlr r0
/* 813D1660 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D1664 | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene11TextBalloonFPCwUl

# .text:0x25C | 0x813D1668 | size: 0xB0
# ipl::scene::TextBalloon::terminate()
.fn terminate__Q33ipl5scene11TextBalloonFv, global
/* 813D1668 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D166C | 7C 08 02 A6 */	mflr r0
/* 813D1670 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D1674 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D1678 | 48 22 7E 51 */	bl _savegpr_29
/* 813D167C | 7C 7D 1B 78 */	mr r29, r3
/* 813D1680 | 38 8D 8C A2 */	li r4, lbl_81696CE2@sda21
/* 813D1684 | 38 A0 00 00 */	li r5, 0x0
/* 813D1688 | 48 00 06 21 */	bl set_textbox__Q33ipl5scene11TextBalloonFPCw
/* 813D168C | 3B E0 00 00 */	li r31, 0x0
/* 813D1690 | 3C 80 81 65 */	lis r4, lbl_81652F3E@ha
/* 813D1694 | 93 FD 00 14 */	stw r31, 0x14(r29)
/* 813D1698 | 38 84 2F 3E */	addi r4, r4, lbl_81652F3E@l
/* 813D169C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813D16A0 | 38 A0 00 01 */	li r5, 0x1
/* 813D16A4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D16A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D16AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D16B0 | 7D 89 03 A6 */	mtctr r12
/* 813D16B4 | 4E 80 04 21 */	bctrl
/* 813D16B8 | 7C 7E 1B 78 */	mr r30, r3
/* 813D16BC | 93 FD 00 38 */	stw r31, 0x38(r29)
/* 813D16C0 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813D16C4 | 38 80 00 00 */	li r4, 0x0
/* 813D16C8 | 38 A0 FF FF */	li r5, -0x1
/* 813D16CC | 4B F9 93 95 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813D16D0 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813D16D4 | 38 80 00 00 */	li r4, 0x0
/* 813D16D8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D16DC | 48 14 0C 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D16E0 | C0 22 86 A0 */	lfs f1, lbl_81694AA0@sda21(r0)
/* 813D16E4 | 4B F9 85 7D */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 813D16E8 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813D16EC | 4B F9 90 19 */	bl calc__Q33ipl6layout6ObjectFv
/* 813D16F0 | 7F C3 F3 78 */	mr r3, r30
/* 813D16F4 | 38 80 00 00 */	li r4, 0x0
/* 813D16F8 | 4B F7 2D 1D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813D16FC | 93 FD 00 08 */	stw r31, 0x8(r29)
/* 813D1700 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D1704 | 48 22 7E 11 */	bl _restgpr_29
/* 813D1708 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D170C | 7C 08 03 A6 */	mtlr r0
/* 813D1710 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D1714 | 4E 80 00 20 */	blr
.endfn terminate__Q33ipl5scene11TextBalloonFv

# .text:0x30C | 0x813D1718 | size: 0x8C
# ipl::scene::TextBalloon::fadein()
.fn fadein__Q33ipl5scene11TextBalloonFv, global
/* 813D1718 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D171C | 7C 08 02 A6 */	mflr r0
/* 813D1720 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D1724 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D1728 | 7C 7F 1B 78 */	mr r31, r3
/* 813D172C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813D1730 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D1734 | 41 82 00 5C */	beq .L_813D1790
/* 813D1738 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D173C | 3C 80 81 65 */	lis r4, lbl_81652F3E@ha
/* 813D1740 | 38 84 2F 3E */	addi r4, r4, lbl_81652F3E@l
/* 813D1744 | 38 A0 00 01 */	li r5, 0x1
/* 813D1748 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D174C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D1750 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D1754 | 7D 89 03 A6 */	mtctr r12
/* 813D1758 | 4E 80 04 21 */	bctrl
/* 813D175C | 38 80 00 00 */	li r4, 0x0
/* 813D1760 | 4B F7 2C B5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813D1764 | 38 60 00 00 */	li r3, 0x0
/* 813D1768 | 38 00 00 01 */	li r0, 0x1
/* 813D176C | 90 7F 00 38 */	stw r3, 0x38(r31)
/* 813D1770 | 7F E3 FB 78 */	mr r3, r31
/* 813D1774 | 80 9F 00 14 */	lwz r4, 0x14(r31)
/* 813D1778 | 38 A0 00 00 */	li r5, 0x0
/* 813D177C | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 813D1780 | 48 00 05 29 */	bl set_textbox__Q33ipl5scene11TextBalloonFPCw
/* 813D1784 | 7F E3 FB 78 */	mr r3, r31
/* 813D1788 | 38 9F 00 1C */	addi r4, r31, 0x1c
/* 813D178C | 48 00 03 2D */	bl set_translate__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3
.L_813D1790:
/* 813D1790 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D1794 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D1798 | 7C 08 03 A6 */	mtlr r0
/* 813D179C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D17A0 | 4E 80 00 20 */	blr
.endfn fadein__Q33ipl5scene11TextBalloonFv

# .text:0x398 | 0x813D17A4 | size: 0x28
# ipl::scene::TextBalloon::fadeinNoSetTextbox()
.fn fadeinNoSetTextbox__Q33ipl5scene11TextBalloonFv, global
/* 813D17A4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813D17A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D17AC | 4D 82 00 20 */	beqlr
/* 813D17B0 | 38 80 00 00 */	li r4, 0x0
/* 813D17B4 | 38 00 00 01 */	li r0, 0x1
/* 813D17B8 | 90 83 00 38 */	stw r4, 0x38(r3)
/* 813D17BC | 38 83 00 1C */	addi r4, r3, 0x1c
/* 813D17C0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813D17C4 | 48 00 02 F4 */	b set_translate__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3
/* 813D17C8 | 4E 80 00 20 */	blr
.endfn fadeinNoSetTextbox__Q33ipl5scene11TextBalloonFv

# .text:0x3C0 | 0x813D17CC | size: 0x9C
# ipl::scene::TextBalloon::setPos(const ipl::math::VEC3&, bool, int)
.fn setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi, global
/* 813D17CC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813D17D0 | 7C 08 02 A6 */	mflr r0
/* 813D17D4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813D17D8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813D17DC | 48 22 7C ED */	bl _savegpr_29
/* 813D17E0 | 7C 7D 1B 78 */	mr r29, r3
/* 813D17E4 | 7C BE 2B 78 */	mr r30, r5
/* 813D17E8 | 7C DF 33 78 */	mr r31, r6
/* 813D17EC | 38 63 00 1C */	addi r3, r3, 0x1c
/* 813D17F0 | 4B F7 2E 95 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813D17F4 | 93 FD 00 28 */	stw r31, 0x28(r29)
/* 813D17F8 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813D17FC | 9B DD 00 2C */	stb r30, 0x2c(r29)
/* 813D1800 | 4B F6 4C 29 */	bl __ct__Q34nw4r2ut4RectFv
/* 813D1804 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D1808 | 4B F6 4C 21 */	bl __ct__Q34nw4r2ut4RectFv
/* 813D180C | 38 61 00 18 */	addi r3, r1, 0x18
/* 813D1810 | 4B F6 41 09 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813D1814 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D1818 | 4B F6 41 35 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813D181C | 88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 813D1820 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D1824 | 40 82 00 2C */	bne .L_813D1850
/* 813D1828 | C0 61 00 20 */	lfs f3, 0x20(r1)
/* 813D182C | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 813D1830 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 813D1834 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 813D1838 | EC 63 00 28 */	fsubs f3, f3, f0
/* 813D183C | C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 813D1840 | EC 22 08 28 */	fsubs f1, f2, f1
/* 813D1844 | EC 21 18 24 */	fdivs f1, f1, f3
/* 813D1848 | EC 00 00 72 */	fmuls f0, f0, f1
/* 813D184C | D0 1D 00 1C */	stfs f0, 0x1c(r29)
.L_813D1850:
/* 813D1850 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813D1854 | 48 22 7C C1 */	bl _restgpr_29
/* 813D1858 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813D185C | 7C 08 03 A6 */	mtlr r0
/* 813D1860 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813D1864 | 4E 80 00 20 */	blr
.endfn setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi

# .text:0x45C | 0x813D1868 | size: 0x90
# ipl::scene::TextBalloon::updatePos(const ipl::math::VEC3&)
.fn updatePos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3, global
/* 813D1868 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813D186C | 7C 08 02 A6 */	mflr r0
/* 813D1870 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813D1874 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813D1878 | 7C 7F 1B 78 */	mr r31, r3
/* 813D187C | 38 63 00 1C */	addi r3, r3, 0x1c
/* 813D1880 | 4B F7 2E 05 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813D1884 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813D1888 | 4B F6 4B A1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813D188C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D1890 | 4B F6 4B 99 */	bl __ct__Q34nw4r2ut4RectFv
/* 813D1894 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813D1898 | 4B F6 40 81 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813D189C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D18A0 | 4B F6 40 AD */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813D18A4 | 88 1F 00 2C */	lbz r0, 0x2c(r31)
/* 813D18A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D18AC | 40 82 00 2C */	bne .L_813D18D8
/* 813D18B0 | C0 61 00 20 */	lfs f3, 0x20(r1)
/* 813D18B4 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 813D18B8 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 813D18BC | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 813D18C0 | EC 63 00 28 */	fsubs f3, f3, f0
/* 813D18C4 | C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 813D18C8 | EC 22 08 28 */	fsubs f1, f2, f1
/* 813D18CC | EC 21 18 24 */	fdivs f1, f1, f3
/* 813D18D0 | EC 00 00 72 */	fmuls f0, f0, f1
/* 813D18D4 | D0 1F 00 1C */	stfs f0, 0x1c(r31)
.L_813D18D8:
/* 813D18D8 | 7F E3 FB 78 */	mr r3, r31
/* 813D18DC | 38 9F 00 1C */	addi r4, r31, 0x1c
/* 813D18E0 | 48 00 01 D9 */	bl set_translate__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3
/* 813D18E4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813D18E8 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813D18EC | 7C 08 03 A6 */	mtlr r0
/* 813D18F0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813D18F4 | 4E 80 00 20 */	blr
.endfn updatePos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3

# .text:0x4EC | 0x813D18F8 | size: 0x5C
# ipl::scene::TextBalloon::on_pre_fadein()
.fn on_pre_fadein__Q33ipl5scene11TextBalloonFv, global
/* 813D18F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D18FC | 7C 08 02 A6 */	mflr r0
/* 813D1900 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D1904 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D1908 | 7C 7F 1B 78 */	mr r31, r3
/* 813D190C | 80 83 00 38 */	lwz r4, 0x38(r3)
/* 813D1910 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813D1914 | 2C 04 00 0F */	cmpwi r4, 0xf
/* 813D1918 | 90 03 00 38 */	stw r0, 0x38(r3)
/* 813D191C | 40 81 00 24 */	ble .L_813D1940
/* 813D1920 | 48 00 01 29 */	bl anm_fadein__Q33ipl5scene11TextBalloonFv
/* 813D1924 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813D1928 | 3C 80 81 65 */	lis r4, lbl_81652F52@ha
/* 813D192C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813D1930 | 38 84 2F 52 */	addi r4, r4, lbl_81652F52@l
/* 813D1934 | 4B F9 9B 39 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813D1938 | 38 00 00 00 */	li r0, 0x0
/* 813D193C | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_813D1940:
/* 813D1940 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D1944 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D1948 | 7C 08 03 A6 */	mtlr r0
/* 813D194C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D1950 | 4E 80 00 20 */	blr
.endfn on_pre_fadein__Q33ipl5scene11TextBalloonFv

# .text:0x548 | 0x813D1954 | size: 0x58
# ipl::scene::TextBalloon::fadeout()
.fn fadeout__Q33ipl5scene11TextBalloonFv, global
/* 813D1954 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D1958 | 7C 08 02 A6 */	mflr r0
/* 813D195C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D1960 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D1964 | 7C 7F 1B 78 */	mr r31, r3
/* 813D1968 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813D196C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D1970 | 40 82 00 20 */	bne .L_813D1990
/* 813D1974 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D1978 | 38 80 00 01 */	li r4, 0x1
/* 813D197C | 38 A0 FF FF */	li r5, -0x1
/* 813D1980 | 4B F9 90 E1 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813D1984 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813D1988 | 38 80 FF FF */	li r4, -0x1
/* 813D198C | 4B F9 8F 6D */	bl start__Q33ipl6layout6ObjectFi
.L_813D1990:
/* 813D1990 | 38 00 00 00 */	li r0, 0x0
/* 813D1994 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 813D1998 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D199C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D19A0 | 7C 08 03 A6 */	mtlr r0
/* 813D19A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D19A8 | 4E 80 00 20 */	blr
.endfn fadeout__Q33ipl5scene11TextBalloonFv

# .text:0x5A0 | 0x813D19AC | size: 0x9C
# ipl::scene::TextBalloon::fadeoutForce()
.fn fadeoutForce__Q33ipl5scene11TextBalloonFv, global
/* 813D19AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D19B0 | 7C 08 02 A6 */	mflr r0
/* 813D19B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D19B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D19BC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D19C0 | 7C 7E 1B 78 */	mr r30, r3
/* 813D19C4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813D19C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D19CC | 40 82 00 50 */	bne .L_813D1A1C
/* 813D19D0 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D19D4 | 38 80 00 00 */	li r4, 0x0
/* 813D19D8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D19DC | 48 14 09 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D19E0 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813D19E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D19E8 | 40 82 00 48 */	bne .L_813D1A30
/* 813D19EC | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813D19F0 | 38 80 00 00 */	li r4, 0x0
/* 813D19F4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D19F8 | 48 14 09 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D19FC | 3B E0 00 01 */	li r31, 0x1
/* 813D1A00 | 38 80 00 00 */	li r4, 0x0
/* 813D1A04 | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 813D1A08 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813D1A0C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813D1A10 | 48 14 09 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813D1A14 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 813D1A18 | 48 00 00 18 */	b .L_813D1A30
.L_813D1A1C:
/* 813D1A1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D1A20 | 40 82 00 10 */	bne .L_813D1A30
/* 813D1A24 | 38 00 00 00 */	li r0, 0x0
/* 813D1A28 | 90 03 00 38 */	stw r0, 0x38(r3)
/* 813D1A2C | 90 03 00 08 */	stw r0, 0x8(r3)
.L_813D1A30:
/* 813D1A30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D1A34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D1A38 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D1A3C | 7C 08 03 A6 */	mtlr r0
/* 813D1A40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D1A44 | 4E 80 00 20 */	blr
.endfn fadeoutForce__Q33ipl5scene11TextBalloonFv

# .text:0x63C | 0x813D1A48 | size: 0x70
# ipl::scene::TextBalloon::anm_fadein()
.fn anm_fadein__Q33ipl5scene11TextBalloonFv, global
/* 813D1A48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D1A4C | 7C 08 02 A6 */	mflr r0
/* 813D1A50 | 3C 80 81 65 */	lis r4, lbl_81652F3E@ha
/* 813D1A54 | 38 A0 00 01 */	li r5, 0x1
/* 813D1A58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D1A5C | 38 84 2F 3E */	addi r4, r4, lbl_81652F3E@l
/* 813D1A60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D1A64 | 7C 7F 1B 78 */	mr r31, r3
/* 813D1A68 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813D1A6C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813D1A70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D1A74 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D1A78 | 7D 89 03 A6 */	mtctr r12
/* 813D1A7C | 4E 80 04 21 */	bctrl
/* 813D1A80 | 38 80 00 01 */	li r4, 0x1
/* 813D1A84 | 4B F7 29 91 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813D1A88 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813D1A8C | 38 80 00 00 */	li r4, 0x0
/* 813D1A90 | 38 A0 FF FF */	li r5, -0x1
/* 813D1A94 | 4B F9 8F CD */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813D1A98 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813D1A9C | 38 80 FF FF */	li r4, -0x1
/* 813D1AA0 | 4B F9 8E 59 */	bl start__Q33ipl6layout6ObjectFi
/* 813D1AA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D1AA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D1AAC | 7C 08 03 A6 */	mtlr r0
/* 813D1AB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D1AB4 | 4E 80 00 20 */	blr
.endfn anm_fadein__Q33ipl5scene11TextBalloonFv

# .text:0x6AC | 0x813D1AB8 | size: 0x1F0
# ipl::scene::TextBalloon::set_translate(const ipl::math::VEC3&)
.fn set_translate__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3, global
/* 813D1AB8 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813D1ABC | 7C 08 02 A6 */	mflr r0
/* 813D1AC0 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 813D1AC4 | DB E1 00 70 */	stfd f31, 0x70(r1)
/* 813D1AC8 | F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 813D1ACC | DB C1 00 60 */	stfd f30, 0x60(r1)
/* 813D1AD0 | F3 C1 00 68 */	psq_st f30, 0x68(r1), 0, qr0
/* 813D1AD4 | DB A1 00 50 */	stfd f29, 0x50(r1)
/* 813D1AD8 | F3 A1 00 58 */	psq_st f29, 0x58(r1), 0, qr0
/* 813D1ADC | 39 61 00 50 */	addi r11, r1, 0x50
/* 813D1AE0 | 48 22 79 E9 */	bl _savegpr_29
/* 813D1AE4 | 7C 7D 1B 78 */	mr r29, r3
/* 813D1AE8 | 7C 9E 23 78 */	mr r30, r4
/* 813D1AEC | 48 19 84 C9 */	bl SCGetAspectRatio
/* 813D1AF0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813D1AF4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813D1AF8 | 40 82 00 0C */	bne .L_813D1B04
/* 813D1AFC | C3 FD 00 30 */	lfs f31, 0x30(r29)
/* 813D1B00 | 48 00 00 08 */	b .L_813D1B08
.L_813D1B04:
/* 813D1B04 | C3 FD 00 34 */	lfs f31, 0x34(r29)
.L_813D1B08:
/* 813D1B08 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813D1B0C | 3C 80 81 65 */	lis r4, lbl_81652F3E@ha
/* 813D1B10 | 38 84 2F 3E */	addi r4, r4, lbl_81652F3E@l
/* 813D1B14 | 38 A0 00 01 */	li r5, 0x1
/* 813D1B18 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D1B1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D1B20 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D1B24 | 7D 89 03 A6 */	mtctr r12
/* 813D1B28 | 4E 80 04 21 */	bctrl
/* 813D1B2C | C3 C2 86 A0 */	lfs f30, lbl_81694AA0@sda21(r0)
/* 813D1B30 | 7C 7F 1B 78 */	mr r31, r3
/* 813D1B34 | 38 61 00 24 */	addi r3, r1, 0x24
/* 813D1B38 | 4B F6 48 F1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813D1B3C | 38 61 00 14 */	addi r3, r1, 0x14
/* 813D1B40 | 4B F6 48 E9 */	bl __ct__Q34nw4r2ut4RectFv
/* 813D1B44 | 38 61 00 24 */	addi r3, r1, 0x24
/* 813D1B48 | 4B F6 3D D1 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813D1B4C | 38 61 00 14 */	addi r3, r1, 0x14
/* 813D1B50 | 4B F6 3D FD */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813D1B54 | 80 1D 00 28 */	lwz r0, 0x28(r29)
/* 813D1B58 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D1B5C | 41 82 00 30 */	beq .L_813D1B8C
/* 813D1B60 | 40 80 00 48 */	bge .L_813D1BA8
/* 813D1B64 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D1B68 | 40 80 00 08 */	bge .L_813D1B70
/* 813D1B6C | 48 00 00 3C */	b .L_813D1BA8
.L_813D1B70:
/* 813D1B70 | 7F A3 EB 78 */	mr r3, r29
/* 813D1B74 | 38 8D 8C A6 */	li r4, lbl_81696CE6@sda21
/* 813D1B78 | 48 00 04 65 */	bl get_size__Q33ipl5scene11TextBalloonFPCc
/* 813D1B7C | C0 23 00 00 */	lfs f1, 0x0(r3)
/* 813D1B80 | C0 02 86 A4 */	lfs f0, lbl_81694AA4@sda21(r0)
/* 813D1B84 | EF C1 00 32 */	fmuls f30, f1, f0
/* 813D1B88 | 48 00 00 20 */	b .L_813D1BA8
.L_813D1B8C:
/* 813D1B8C | 7F A3 EB 78 */	mr r3, r29
/* 813D1B90 | 38 8D 8C A6 */	li r4, lbl_81696CE6@sda21
/* 813D1B94 | 48 00 04 49 */	bl get_size__Q33ipl5scene11TextBalloonFPCc
/* 813D1B98 | C0 23 00 00 */	lfs f1, 0x0(r3)
/* 813D1B9C | C0 02 86 A4 */	lfs f0, lbl_81694AA4@sda21(r0)
/* 813D1BA0 | FC 20 08 50 */	fneg f1, f1
/* 813D1BA4 | EF C1 00 32 */	fmuls f30, f1, f0
.L_813D1BA8:
/* 813D1BA8 | 88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 813D1BAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D1BB0 | 40 82 00 24 */	bne .L_813D1BD4
/* 813D1BB4 | C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 813D1BB8 | C0 41 00 24 */	lfs f2, 0x24(r1)
/* 813D1BBC | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 813D1BC0 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 813D1BC4 | EC 43 10 28 */	fsubs f2, f3, f2
/* 813D1BC8 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813D1BCC | EC 00 10 24 */	fdivs f0, f0, f2
/* 813D1BD0 | EF DE 00 32 */	fmuls f30, f30, f0
.L_813D1BD4:
/* 813D1BD4 | 7F A3 EB 78 */	mr r3, r29
/* 813D1BD8 | 38 8D 8C A6 */	li r4, lbl_81696CE6@sda21
/* 813D1BDC | 48 00 04 01 */	bl get_size__Q33ipl5scene11TextBalloonFPCc
/* 813D1BE0 | C0 43 00 00 */	lfs f2, 0x0(r3)
/* 813D1BE4 | 7F A3 EB 78 */	mr r3, r29
/* 813D1BE8 | C0 02 86 A4 */	lfs f0, lbl_81694AA4@sda21(r0)
/* 813D1BEC | 38 8D 8C A6 */	li r4, lbl_81696CE6@sda21
/* 813D1BF0 | C0 3E 00 00 */	lfs f1, 0x0(r30)
/* 813D1BF4 | EC 42 00 32 */	fmuls f2, f2, f0
/* 813D1BF8 | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 813D1BFC | EC 21 F0 2A */	fadds f1, f1, f30
/* 813D1C00 | EC 21 10 28 */	fsubs f1, f1, f2
/* 813D1C04 | EF A1 00 28 */	fsubs f29, f1, f0
/* 813D1C08 | 48 00 03 D5 */	bl get_size__Q33ipl5scene11TextBalloonFPCc
/* 813D1C0C | C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 813D1C10 | FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 813D1C14 | C0 63 00 00 */	lfs f3, 0x0(r3)
/* 813D1C18 | C0 42 86 A4 */	lfs f2, lbl_81694AA4@sda21(r0)
/* 813D1C1C | EC 20 F0 2A */	fadds f1, f0, f30
/* 813D1C20 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 813D1C24 | EC 43 00 B2 */	fmuls f2, f3, f2
/* 813D1C28 | C0 62 86 A0 */	lfs f3, lbl_81694AA0@sda21(r0)
/* 813D1C2C | EC 21 10 2A */	fadds f1, f1, f2
/* 813D1C30 | EC 00 08 28 */	fsubs f0, f0, f1
/* 813D1C34 | 40 80 00 0C */	bge .L_813D1C40
/* 813D1C38 | EC 7F E8 28 */	fsubs f3, f31, f29
/* 813D1C3C | 48 00 00 10 */	b .L_813D1C4C
.L_813D1C40:
/* 813D1C40 | FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 813D1C44 | 40 80 00 08 */	bge .L_813D1C4C
/* 813D1C48 | EC 60 F8 28 */	fsubs f3, f0, f31
.L_813D1C4C:
/* 813D1C4C | C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 813D1C50 | 38 7F 00 2C */	addi r3, r31, 0x2c
/* 813D1C54 | C0 5E 00 08 */	lfs f2, 0x8(r30)
/* 813D1C58 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D1C5C | EC 00 18 2A */	fadds f0, f0, f3
/* 813D1C60 | C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 813D1C64 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 813D1C68 | EC 1E 00 2A */	fadds f0, f30, f0
/* 813D1C6C | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 813D1C70 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813D1C74 | 4B F7 2A 11 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813D1C78 | E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 813D1C7C | CB E1 00 70 */	lfd f31, 0x70(r1)
/* 813D1C80 | E3 C1 00 68 */	psq_l f30, 0x68(r1), 0, qr0
/* 813D1C84 | CB C1 00 60 */	lfd f30, 0x60(r1)
/* 813D1C88 | E3 A1 00 58 */	psq_l f29, 0x58(r1), 0, qr0
/* 813D1C8C | 39 61 00 50 */	addi r11, r1, 0x50
/* 813D1C90 | CB A1 00 50 */	lfd f29, 0x50(r1)
/* 813D1C94 | 48 22 78 81 */	bl _restgpr_29
/* 813D1C98 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 813D1C9C | 7C 08 03 A6 */	mtlr r0
/* 813D1CA0 | 38 21 00 80 */	addi r1, r1, 0x80
/* 813D1CA4 | 4E 80 00 20 */	blr
.endfn set_translate__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3

# .text:0x89C | 0x813D1CA8 | size: 0x2E0
# ipl::scene::TextBalloon::set_textbox(const wchar_t*)
.fn set_textbox__Q33ipl5scene11TextBalloonFPCw, global
/* 813D1CA8 | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 813D1CAC | 7C 08 02 A6 */	mflr r0
/* 813D1CB0 | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 813D1CB4 | DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 813D1CB8 | F3 E1 00 D8 */	psq_st f31, 0xd8(r1), 0, qr0
/* 813D1CBC | DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 813D1CC0 | F3 C1 00 C8 */	psq_st f30, 0xc8(r1), 0, qr0
/* 813D1CC4 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 813D1CC8 | 48 22 77 ED */	bl _savegpr_24
/* 813D1CCC | 83 03 00 18 */	lwz r24, 0x18(r3)
/* 813D1CD0 | 7C 7F 1B 78 */	mr r31, r3
/* 813D1CD4 | 7C 9A 23 78 */	mr r26, r4
/* 813D1CD8 | 7C B9 2B 78 */	mr r25, r5
/* 813D1CDC | 2C 18 00 00 */	cmpwi r24, 0x0
/* 813D1CE0 | 40 82 00 10 */	bne .L_813D1CF0
/* 813D1CE4 | 7F 43 D3 78 */	mr r3, r26
/* 813D1CE8 | 48 23 69 C5 */	bl fn_816086AC
/* 813D1CEC | 7C 78 1B 78 */	mr r24, r3
.L_813D1CF0:
/* 813D1CF0 | 28 18 00 20 */	cmplwi r24, 0x20
/* 813D1CF4 | 40 81 00 08 */	ble .L_813D1CFC
/* 813D1CF8 | 3B 00 00 20 */	li r24, 0x20
.L_813D1CFC:
/* 813D1CFC | 38 00 00 11 */	li r0, 0x11
/* 813D1D00 | 38 81 00 4E */	addi r4, r1, 0x4e
/* 813D1D04 | 38 60 00 00 */	li r3, 0x0
/* 813D1D08 | 7C 09 03 A6 */	mtctr r0
.L_813D1D0C:
/* 813D1D0C | B0 64 00 02 */	sth r3, 0x2(r4)
/* 813D1D10 | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 813D1D14 | 42 00 FF F8 */	bdnz .L_813D1D0C
/* 813D1D18 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 813D1D1C | 7F 44 D3 78 */	mr r4, r26
/* 813D1D20 | 38 61 00 50 */	addi r3, r1, 0x50
/* 813D1D24 | 38 A0 00 20 */	li r5, 0x20
/* 813D1D28 | 48 23 69 BD */	bl fn_816086E4
/* 813D1D2C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813D1D30 | 3C 80 81 65 */	lis r4, lbl_81652F48@ha
/* 813D1D34 | 38 84 2F 48 */	addi r4, r4, lbl_81652F48@l
/* 813D1D38 | 38 A0 00 01 */	li r5, 0x1
/* 813D1D3C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D1D40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D1D44 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D1D48 | 7D 89 03 A6 */	mtctr r12
/* 813D1D4C | 4E 80 04 21 */	bctrl
/* 813D1D50 | 4B F7 41 15 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813D1D54 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813D1D58 | 7C 7A 1B 78 */	mr r26, r3
/* 813D1D5C | 40 82 00 F0 */	bne .L_813D1E4C
/* 813D1D60 | C3 C2 86 A0 */	lfs f30, lbl_81694AA0@sda21(r0)
/* 813D1D64 | 57 1E 08 3C */	slwi r30, r24, 1
/* 813D1D68 | C3 E2 86 A8 */	lfs f31, lbl_81694AA8@sda21(r0)
/* 813D1D6C | 3B 20 00 00 */	li r25, 0x0
/* 813D1D70 | 3B 80 00 00 */	li r28, 0x0
/* 813D1D74 | 3B A0 00 2E */	li r29, 0x2e
/* 813D1D78 | 3B 60 20 26 */	li r27, 0x2026
/* 813D1D7C | 48 00 00 C4 */	b .L_813D1E40
.L_813D1D80:
/* 813D1D80 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813D1D84 | 7C 18 CA 14 */	add r0, r24, r25
/* 813D1D88 | 7F 43 D3 78 */	mr r3, r26
/* 813D1D8C | 38 81 00 50 */	addi r4, r1, 0x50
/* 813D1D90 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813D1D94 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 813D1D98 | 38 A0 00 00 */	li r5, 0x0
/* 813D1D9C | 7D 89 03 A6 */	mtctr r12
/* 813D1DA0 | 4E 80 04 21 */	bctrl
/* 813D1DA4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813D1DA8 | 7F 43 D3 78 */	mr r3, r26
/* 813D1DAC | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813D1DB0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813D1DB4 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813D1DB8 | 7D 89 03 A6 */	mtctr r12
/* 813D1DBC | 4E 80 04 21 */	bctrl
/* 813D1DC0 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813D1DC4 | 7F 44 D3 78 */	mr r4, r26
/* 813D1DC8 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813D1DCC | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813D1DD0 | 48 14 FF 25 */	bl fn_81521CF4
/* 813D1DD4 | C0 41 00 48 */	lfs f2, 0x48(r1)
/* 813D1DD8 | EC 1F F0 2A */	fadds f0, f31, f30
/* 813D1DDC | C0 21 00 40 */	lfs f1, 0x40(r1)
/* 813D1DE0 | EC 22 08 28 */	fsubs f1, f2, f1
/* 813D1DE4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813D1DE8 | 4C 40 13 82 */	cror eq, lt, eq
/* 813D1DEC | 40 82 00 0C */	bne .L_813D1DF8
/* 813D1DF0 | 28 18 00 14 */	cmplwi r24, 0x14
/* 813D1DF4 | 40 81 00 9C */	ble .L_813D1E90
.L_813D1DF8:
/* 813D1DF8 | 4B F6 3C 95 */	bl getRegion__Q23ipl6SystemFv
/* 813D1DFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D1E00 | 40 82 00 18 */	bne .L_813D1E18
/* 813D1E04 | 38 61 00 50 */	addi r3, r1, 0x50
/* 813D1E08 | 7C 63 F2 14 */	add r3, r3, r30
/* 813D1E0C | B3 83 FF FE */	sth r28, -0x2(r3)
/* 813D1E10 | B3 63 FF FC */	sth r27, -0x4(r3)
/* 813D1E14 | 48 00 00 24 */	b .L_813D1E38
.L_813D1E18:
/* 813D1E18 | 38 61 00 50 */	addi r3, r1, 0x50
/* 813D1E1C | C3 C2 86 AC */	lfs f30, lbl_81694AAC@sda21(r0)
/* 813D1E20 | 7C 63 F2 14 */	add r3, r3, r30
/* 813D1E24 | 3B 20 00 02 */	li r25, 0x2
/* 813D1E28 | B3 83 00 02 */	sth r28, 0x2(r3)
/* 813D1E2C | B3 A3 00 00 */	sth r29, 0x0(r3)
/* 813D1E30 | B3 A3 FF FE */	sth r29, -0x2(r3)
/* 813D1E34 | B3 A3 FF FC */	sth r29, -0x4(r3)
.L_813D1E38:
/* 813D1E38 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 813D1E3C | 3B DE FF FE */	subi r30, r30, 0x2
.L_813D1E40:
/* 813D1E40 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 813D1E44 | 40 82 FF 3C */	bne .L_813D1D80
/* 813D1E48 | 48 00 00 48 */	b .L_813D1E90
.L_813D1E4C:
/* 813D1E4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D1E50 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 813D1E54 | 7D 89 03 A6 */	mtctr r12
/* 813D1E58 | 4E 80 04 21 */	bctrl
/* 813D1E5C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813D1E60 | 7F 43 D3 78 */	mr r3, r26
/* 813D1E64 | 38 80 00 23 */	li r4, 0x23
/* 813D1E68 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 813D1E6C | 7D 89 03 A6 */	mtctr r12
/* 813D1E70 | 4E 80 04 21 */	bctrl
/* 813D1E74 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813D1E78 | 7F 43 D3 78 */	mr r3, r26
/* 813D1E7C | 38 81 00 50 */	addi r4, r1, 0x50
/* 813D1E80 | 38 A0 00 00 */	li r5, 0x0
/* 813D1E84 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813D1E88 | 7D 89 03 A6 */	mtctr r12
/* 813D1E8C | 4E 80 04 21 */	bctrl
.L_813D1E90:
/* 813D1E90 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813D1E94 | 4B F6 45 95 */	bl __ct__Q34nw4r2ut4RectFv
/* 813D1E98 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813D1E9C | 4B F6 3A B1 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813D1EA0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813D1EA4 | 4B F6 45 85 */	bl __ct__Q34nw4r2ut4RectFv
/* 813D1EA8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813D1EAC | 4B F6 3A C5 */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813D1EB0 | C0 61 00 38 */	lfs f3, 0x38(r1)
/* 813D1EB4 | C0 41 00 30 */	lfs f2, 0x30(r1)
/* 813D1EB8 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 813D1EBC | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 813D1EC0 | EC 43 10 28 */	fsubs f2, f3, f2
/* 813D1EC4 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813D1EC8 | EF C0 10 24 */	fdivs f30, f0, f2
/* 813D1ECC | 48 19 80 E9 */	bl SCGetAspectRatio
/* 813D1ED0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813D1ED4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813D1ED8 | 40 82 00 08 */	bne .L_813D1EE0
/* 813D1EDC | 48 00 00 08 */	b .L_813D1EE4
.L_813D1EE0:
/* 813D1EE0 | C3 C2 86 B0 */	lfs f30, lbl_81694AB0@sda21(r0)
.L_813D1EE4:
/* 813D1EE4 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813D1EE8 | 7F 44 D3 78 */	mr r4, r26
/* 813D1EEC | 38 61 00 10 */	addi r3, r1, 0x10
/* 813D1EF0 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813D1EF4 | 48 14 FE 01 */	bl fn_81521CF4
/* 813D1EF8 | 7F E3 FB 78 */	mr r3, r31
/* 813D1EFC | 38 8D 8C A6 */	li r4, lbl_81696CE6@sda21
/* 813D1F00 | 48 00 00 DD */	bl get_size__Q33ipl5scene11TextBalloonFPCc
/* 813D1F04 | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 813D1F08 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813D1F0C | C0 63 00 00 */	lfs f3, 0x0(r3)
/* 813D1F10 | EC 42 08 28 */	fsubs f2, f2, f1
/* 813D1F14 | C0 02 86 B8 */	lfs f0, lbl_81694AB8@sda21(r0)
/* 813D1F18 | C0 22 86 B4 */	lfs f1, lbl_81694AB4@sda21(r0)
/* 813D1F1C | D0 61 00 08 */	stfs f3, 0x8(r1)
/* 813D1F20 | EC 00 07 B2 */	fmuls f0, f0, f30
/* 813D1F24 | EC 21 10 2A */	fadds f1, f1, f2
/* 813D1F28 | C0 43 00 04 */	lfs f2, 0x4(r3)
/* 813D1F2C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813D1F30 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 813D1F34 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 813D1F38 | 40 80 00 08 */	bge .L_813D1F40
/* 813D1F3C | D0 01 00 08 */	stfs f0, 0x8(r1)
.L_813D1F40:
/* 813D1F40 | 7F E3 FB 78 */	mr r3, r31
/* 813D1F44 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813D1F48 | 38 8D 8C A6 */	li r4, lbl_81696CE6@sda21
/* 813D1F4C | 48 00 00 3D */	bl set_size__Q33ipl5scene11TextBalloonFPCcRCQ34nw4r3lyt4Size
/* 813D1F50 | 7F E3 FB 78 */	mr r3, r31
/* 813D1F54 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813D1F58 | 38 8D 8C AD */	li r4, lbl_81696CED@sda21
/* 813D1F5C | 48 00 00 2D */	bl set_size__Q33ipl5scene11TextBalloonFPCcRCQ34nw4r3lyt4Size
/* 813D1F60 | E3 E1 00 D8 */	psq_l f31, 0xd8(r1), 0, qr0
/* 813D1F64 | CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 813D1F68 | E3 C1 00 C8 */	psq_l f30, 0xc8(r1), 0, qr0
/* 813D1F6C | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 813D1F70 | CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 813D1F74 | 48 22 75 8D */	bl _restgpr_24
/* 813D1F78 | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 813D1F7C | 7C 08 03 A6 */	mtlr r0
/* 813D1F80 | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 813D1F84 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene11TextBalloonFPCw

# .text:0xB7C | 0x813D1F88 | size: 0x54
# ipl::scene::TextBalloon::set_size(const char*, const nw4r::lyt::Size&)
.fn set_size__Q33ipl5scene11TextBalloonFPCcRCQ34nw4r3lyt4Size, global
/* 813D1F88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D1F8C | 7C 08 02 A6 */	mflr r0
/* 813D1F90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D1F94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D1F98 | 7C BF 2B 78 */	mr r31, r5
/* 813D1F9C | 38 A0 00 01 */	li r5, 0x1
/* 813D1FA0 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D1FA4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D1FA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D1FAC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D1FB0 | 7D 89 03 A6 */	mtctr r12
/* 813D1FB4 | 4E 80 04 21 */	bctrl
/* 813D1FB8 | C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 813D1FBC | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 813D1FC0 | D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 813D1FC4 | D0 03 00 50 */	stfs f0, 0x50(r3)
/* 813D1FC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D1FCC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D1FD0 | 7C 08 03 A6 */	mtlr r0
/* 813D1FD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D1FD8 | 4E 80 00 20 */	blr
.endfn set_size__Q33ipl5scene11TextBalloonFPCcRCQ34nw4r3lyt4Size

# .text:0xBD0 | 0x813D1FDC | size: 0x3C
# ipl::scene::TextBalloon::get_size(const char*)
.fn get_size__Q33ipl5scene11TextBalloonFPCc, global
/* 813D1FDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D1FE0 | 7C 08 02 A6 */	mflr r0
/* 813D1FE4 | 38 A0 00 01 */	li r5, 0x1
/* 813D1FE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D1FEC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813D1FF0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D1FF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D1FF8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813D1FFC | 7D 89 03 A6 */	mtctr r12
/* 813D2000 | 4E 80 04 21 */	bctrl
/* 813D2004 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D2008 | 38 63 00 4C */	addi r3, r3, 0x4c
/* 813D200C | 7C 08 03 A6 */	mtlr r0
/* 813D2010 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D2014 | 4E 80 00 20 */	blr
.endfn get_size__Q33ipl5scene11TextBalloonFPCc

# 0x81652F18..0x81652F68 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x81652F18 | size: 0x26
.obj lbl_81652F18, global
	.string "my_IplTopBalloon_a_BalloonInOut.brlan"
.endobj lbl_81652F18

# .data:0x26 | 0x81652F3E | size: 0xA
.obj lbl_81652F3E, global
	.string "N_Balloon"
.endobj lbl_81652F3E

# .data:0x30 | 0x81652F48 | size: 0xA
.obj lbl_81652F48, global
	.string "T_Balloon"
.endobj lbl_81652F48

# .data:0x3A | 0x81652F52 | size: 0x16
.obj lbl_81652F52, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42414C4C
	.4byte 0x4F4F4E00
	.4byte 0x00000000
	.2byte 0x0000
.endobj lbl_81652F52

# 0x81694AA0..0x81694AC0 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694AA0 | size: 0x4
.obj lbl_81694AA0, global
	.float 0
.endobj lbl_81694AA0

# .sdata2:0x4 | 0x81694AA4 | size: 0x4
.obj lbl_81694AA4, global
	.float 0.5
.endobj lbl_81694AA4

# .sdata2:0x8 | 0x81694AA8 | size: 0x4
.obj lbl_81694AA8, global
	.float 391.5
.endobj lbl_81694AA8

# .sdata2:0xC | 0x81694AAC | size: 0x4
.obj lbl_81694AAC, global
	.float -1.179962
.endobj lbl_81694AAC

# .sdata2:0x10 | 0x81694AB0 | size: 0x4
.obj lbl_81694AB0, global
	.float 1
.endobj lbl_81694AB0

# .sdata2:0x14 | 0x81694AB4 | size: 0x4
.obj lbl_81694AB4, global
	.float 40
.endobj lbl_81694AB4

# .sdata2:0x18 | 0x81694AB8 | size: 0x8
.obj lbl_81694AB8, global
	.float 160
	.float 0
.endobj lbl_81694AB8

# 0x81696CE0..0x81696CF8 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696CE0 | size: 0x2
.obj lbl_81696CE0, global
	.2byte 0x0000
.endobj lbl_81696CE0

# .sdata:0x2 | 0x81696CE2 | size: 0x4
.obj lbl_81696CE2, global
	.string16 " "
.endobj lbl_81696CE2

# .sdata:0x6 | 0x81696CE6 | size: 0x7
.obj lbl_81696CE6, global
	.string "W_Base"
.endobj lbl_81696CE6

# .sdata:0xD | 0x81696CED | size: 0xB
.obj lbl_81696CED, global
	.4byte 0x575F5368
	.4byte 0x61646500
	.byte 0x00, 0x00, 0x00
.endobj lbl_81696CED
