.include "macros.inc"
.file "iplChannelObj.cpp"

# 0x813B1584..0x813B4030 | size: 0x2AAC
.text
.balign 4

# .text:0x0 | 0x813B1584 | size: 0x16C
# ipl::scene::ChannelObj::ChannelObj(EGG::Heap*, int, int)
.fn __ct__Q33ipl5scene10ChannelObjFPQ23EGG4Heapii, global
/* 813B1584 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813B1588 | 7C 08 02 A6 */	mflr r0
/* 813B158C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813B1590 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B1594 | 48 24 7F 35 */	bl _savegpr_29
/* 813B1598 | 3B C0 00 00 */	li r30, 0x0
/* 813B159C | 90 83 00 10 */	stw r4, 0x10(r3)
/* 813B15A0 | 7C 7D 1B 78 */	mr r29, r3
/* 813B15A4 | 93 C3 00 08 */	stw r30, 0x8(r3)
/* 813B15A8 | 93 C3 00 0C */	stw r30, 0xc(r3)
/* 813B15AC | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 813B15B0 | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 813B15B4 | 90 A3 00 1C */	stw r5, 0x1c(r3)
/* 813B15B8 | 90 C3 00 20 */	stw r6, 0x20(r3)
/* 813B15BC | 93 C3 00 28 */	stw r30, 0x28(r3)
/* 813B15C0 | 93 C3 00 38 */	stw r30, 0x38(r3)
/* 813B15C4 | 93 C3 00 3C */	stw r30, 0x3c(r3)
/* 813B15C8 | 93 C3 00 40 */	stw r30, 0x40(r3)
/* 813B15CC | 93 C3 00 44 */	stw r30, 0x44(r3)
/* 813B15D0 | 93 C3 00 48 */	stw r30, 0x48(r3)
/* 813B15D4 | 93 C3 00 58 */	stw r30, 0x58(r3)
/* 813B15D8 | 93 C3 00 5C */	stw r30, 0x5c(r3)
/* 813B15DC | 93 C3 00 60 */	stw r30, 0x60(r3)
/* 813B15E0 | 93 C3 00 68 */	stw r30, 0x68(r3)
/* 813B15E4 | 93 C3 00 6C */	stw r30, 0x6c(r3)
/* 813B15E8 | 93 C3 00 70 */	stw r30, 0x70(r3)
/* 813B15EC | 93 C3 00 74 */	stw r30, 0x74(r3)
/* 813B15F0 | 93 C3 00 78 */	stw r30, 0x78(r3)
/* 813B15F4 | 93 C3 00 7C */	stw r30, 0x7c(r3)
/* 813B15F8 | 9B C3 00 80 */	stb r30, 0x80(r3)
/* 813B15FC | 93 C3 00 84 */	stw r30, 0x84(r3)
/* 813B1600 | 93 C3 00 88 */	stw r30, 0x88(r3)
/* 813B1604 | 48 1B 89 B1 */	bl SCGetAspectRatio
/* 813B1608 | 3F E0 81 61 */	lis r31, lbl_816102D0@ha
/* 813B160C | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813B1610 | 3B FF 02 D0 */	addi r31, r31, lbl_816102D0@l
/* 813B1614 | 7C 1F 04 2E */	lfsx f0, r31, r0
/* 813B1618 | D0 1D 00 8C */	stfs f0, 0x8c(r29)
/* 813B161C | 48 1B 89 99 */	bl SCGetAspectRatio
/* 813B1620 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813B1624 | 3C 60 00 01 */	lis r3, 0x1
/* 813B1628 | 7C 9F 02 14 */	add r4, r31, r0
/* 813B162C | 93 DD 00 98 */	stw r30, 0x98(r29)
/* 813B1630 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 813B1634 | 38 03 8C A0 */	subi r0, r3, 0x7360
/* 813B1638 | 93 DD 00 9C */	stw r30, 0x9c(r29)
/* 813B163C | D0 1D 00 90 */	stfs f0, 0x90(r29)
/* 813B1640 | 93 DD 00 A0 */	stw r30, 0xa0(r29)
/* 813B1644 | 9B DD 00 E4 */	stb r30, 0xe4(r29)
/* 813B1648 | 93 DD 00 E8 */	stw r30, 0xe8(r29)
/* 813B164C | 93 DD 00 EC */	stw r30, 0xec(r29)
/* 813B1650 | 9B DD 00 F4 */	stb r30, 0xf4(r29)
/* 813B1654 | 90 1D 00 F8 */	stw r0, 0xf8(r29)
/* 813B1658 | 90 1D 00 FC */	stw r0, 0xfc(r29)
/* 813B165C | 93 DD 01 00 */	stw r30, 0x100(r29)
/* 813B1660 | 93 DD 01 04 */	stw r30, 0x104(r29)
/* 813B1664 | 93 DD 01 10 */	stw r30, 0x110(r29)
/* 813B1668 | 48 1B 89 4D */	bl SCGetAspectRatio
/* 813B166C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813B1670 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813B1674 | 40 82 00 48 */	bne .L_813B16BC
/* 813B1678 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813B167C | 4B F8 4D AD */	bl __ct__Q34nw4r2ut4RectFv
/* 813B1680 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813B1684 | 4B F8 42 C9 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813B1688 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B168C | 4B F8 4D 9D */	bl __ct__Q34nw4r2ut4RectFv
/* 813B1690 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B1694 | 4B F8 42 DD */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813B1698 | C0 61 00 20 */	lfs f3, 0x20(r1)
/* 813B169C | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 813B16A0 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813B16A4 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 813B16A8 | EC 43 10 28 */	fsubs f2, f3, f2
/* 813B16AC | EC 01 00 28 */	fsubs f0, f1, f0
/* 813B16B0 | EC 00 10 24 */	fdivs f0, f0, f2
/* 813B16B4 | D0 1D 00 94 */	stfs f0, 0x94(r29)
/* 813B16B8 | 48 00 00 0C */	b .L_813B16C4
.L_813B16BC:
/* 813B16BC | C0 02 85 A8 */	lfs f0, lbl_816949A8@sda21(r0)
/* 813B16C0 | D0 1D 00 94 */	stfs f0, 0x94(r29)
.L_813B16C4:
/* 813B16C4 | 38 7D 00 A4 */	addi r3, r29, 0xa4
/* 813B16C8 | 38 80 00 00 */	li r4, 0x0
/* 813B16CC | 38 A0 00 40 */	li r5, 0x40
/* 813B16D0 | 4B F7 EC 65 */	bl memset
/* 813B16D4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B16D8 | 7F A3 EB 78 */	mr r3, r29
/* 813B16DC | 48 24 7E 39 */	bl _restgpr_29
/* 813B16E0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813B16E4 | 7C 08 03 A6 */	mtlr r0
/* 813B16E8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813B16EC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene10ChannelObjFPQ23EGG4Heapii

# .text:0x16C | 0x813B16F0 | size: 0xE0
# ipl::scene::ChannelObj::~ChannelObj()
.fn __dt__Q33ipl5scene10ChannelObjFv, global
/* 813B16F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B16F4 | 7C 08 02 A6 */	mflr r0
/* 813B16F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B16FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B1700 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B1704 | 7C 9F 23 78 */	mr r31, r4
/* 813B1708 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B170C | 7C 7E 1B 78 */	mr r30, r3
/* 813B1710 | 41 82 00 A4 */	beq .L_813B17B4
/* 813B1714 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813B1718 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B171C | 41 82 00 1C */	beq .L_813B1738
/* 813B1720 | 41 82 00 18 */	beq .L_813B1738
/* 813B1724 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1728 | 38 80 00 01 */	li r4, 0x1
/* 813B172C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B1730 | 7D 89 03 A6 */	mtctr r12
/* 813B1734 | 4E 80 04 21 */	bctrl
.L_813B1738:
/* 813B1738 | 7F C3 F3 78 */	mr r3, r30
/* 813B173C | 48 00 0A 89 */	bl isDiskChannel__Q33ipl5scene10ChannelObjCFv
/* 813B1740 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1744 | 41 82 00 10 */	beq .L_813B1754
/* 813B1748 | 7F C3 F3 78 */	mr r3, r30
/* 813B174C | 48 00 09 2D */	bl destroyDiskLayout__Q33ipl5scene10ChannelObjFv
/* 813B1750 | 48 00 00 0C */	b .L_813B175C
.L_813B1754:
/* 813B1754 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B1758 | 4B FB 96 A9 */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813B175C:
/* 813B175C | 80 7E 00 48 */	lwz r3, 0x48(r30)
/* 813B1760 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1764 | 41 82 00 1C */	beq .L_813B1780
/* 813B1768 | 41 82 00 18 */	beq .L_813B1780
/* 813B176C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1770 | 38 80 00 01 */	li r4, 0x1
/* 813B1774 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B1778 | 7D 89 03 A6 */	mtctr r12
/* 813B177C | 4E 80 04 21 */	bctrl
.L_813B1780:
/* 813B1780 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813B1784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1788 | 41 82 00 1C */	beq .L_813B17A4
/* 813B178C | 41 82 00 18 */	beq .L_813B17A4
/* 813B1790 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1794 | 38 80 00 01 */	li r4, 0x1
/* 813B1798 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B179C | 7D 89 03 A6 */	mtctr r12
/* 813B17A0 | 4E 80 04 21 */	bctrl
.L_813B17A4:
/* 813B17A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B17A8 | 40 81 00 0C */	ble .L_813B17B4
/* 813B17AC | 7F C3 F3 78 */	mr r3, r30
/* 813B17B0 | 48 24 69 35 */	bl __dl__FPv
.L_813B17B4:
/* 813B17B4 | 7F C3 F3 78 */	mr r3, r30
/* 813B17B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B17BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B17C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B17C4 | 7C 08 03 A6 */	mtlr r0
/* 813B17C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B17CC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene10ChannelObjFv

# .text:0x24C | 0x813B17D0 | size: 0x3C
# ipl::scene::ChannelObj::prepare()
.fn prepare__Q33ipl5scene10ChannelObjFv, global
/* 813B17D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B17D4 | 7C 08 02 A6 */	mflr r0
/* 813B17D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B17DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B17E0 | 7C 7F 1B 78 */	mr r31, r3
/* 813B17E4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813B17E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B17EC | 40 82 00 0C */	bne .L_813B17F8
/* 813B17F0 | 48 00 11 61 */	bl loadThumbnailAsync__Q33ipl5scene10ChannelObjFv
/* 813B17F4 | 90 7F 00 18 */	stw r3, 0x18(r31)
.L_813B17F8:
/* 813B17F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B17FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B1800 | 7C 08 03 A6 */	mtlr r0
/* 813B1804 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B1808 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene10ChannelObjFv

# .text:0x288 | 0x813B180C | size: 0xC
# ipl::scene::ChannelObj::setHeaps(EGG::Heap*, EGG::Heap*)
.fn setHeaps__Q33ipl5scene10ChannelObjFPQ23EGG4HeapPQ23EGG4Heap, global
/* 813B180C | 90 83 00 08 */	stw r4, 0x8(r3)
/* 813B1810 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 813B1814 | 4E 80 00 20 */	blr
.endfn setHeaps__Q33ipl5scene10ChannelObjFPQ23EGG4HeapPQ23EGG4Heap

# .text:0x294 | 0x813B1818 | size: 0x10
# ipl::scene::ChannelObj::setDiskLayouts(ipl::layout::Object*, ipl::layout::Animator*, EGG::Heap*)
.fn setDiskLayouts__Q33ipl5scene10ChannelObjFPQ33ipl6layout6ObjectPQ33ipl6layout8AnimatorPQ23EGG4Heap, global
/* 813B1818 | 90 83 00 38 */	stw r4, 0x38(r3)
/* 813B181C | 90 A3 00 3C */	stw r5, 0x3c(r3)
/* 813B1820 | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 813B1824 | 4E 80 00 20 */	blr
.endfn setDiskLayouts__Q33ipl5scene10ChannelObjFPQ33ipl6layout6ObjectPQ33ipl6layout8AnimatorPQ23EGG4Heap

# .text:0x2A4 | 0x813B1828 | size: 0x8
# ipl::scene::ChannelObj::setBasePane(const nw4r::lyt::Pane*)
.fn setBasePane__Q33ipl5scene10ChannelObjFPCQ34nw4r3lyt4Pane, global
/* 813B1828 | 90 83 00 28 */	stw r4, 0x28(r3)
/* 813B182C | 4E 80 00 20 */	blr
.endfn setBasePane__Q33ipl5scene10ChannelObjFPCQ34nw4r3lyt4Pane

# .text:0x2AC | 0x813B1830 | size: 0xC
# ipl::scene::ChannelObj::initExtModule(EGG::Heap*, ipl::channel::RsoThread*)
.fn initExtModule__Q33ipl5scene10ChannelObjFPQ23EGG4HeapPQ33ipl7channel9RsoThread, global
/* 813B1830 | 90 83 00 98 */	stw r4, 0x98(r3)
/* 813B1834 | 90 A3 00 E8 */	stw r5, 0xe8(r3)
/* 813B1838 | 4E 80 00 20 */	blr
.endfn initExtModule__Q33ipl5scene10ChannelObjFPQ23EGG4HeapPQ33ipl7channel9RsoThread

# .text:0x2B8 | 0x813B183C | size: 0xCC
# ipl::scene::ChannelObj::create(ipl::nand::LayoutFile*)
.fn create__Q33ipl5scene10ChannelObjFPQ33ipl4nand10LayoutFile, global
/* 813B183C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B1840 | 7C 08 02 A6 */	mflr r0
/* 813B1844 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B1848 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B184C | 7C 9F 23 78 */	mr r31, r4
/* 813B1850 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B1854 | 7C 7E 1B 78 */	mr r30, r3
/* 813B1858 | 4B FF BF B1 */	bl isLayoutCreated__Q33ipl5scene10ChannelObjCFv
/* 813B185C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1860 | 40 82 00 90 */	bne .L_813B18F0
/* 813B1864 | 80 1E 00 48 */	lwz r0, 0x48(r30)
/* 813B1868 | 93 FE 00 24 */	stw r31, 0x24(r30)
/* 813B186C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1870 | 40 82 00 0C */	bne .L_813B187C
/* 813B1874 | 7F C3 F3 78 */	mr r3, r30
/* 813B1878 | 48 00 17 6D */	bl initCursor__Q33ipl5scene10ChannelObjFv
.L_813B187C:
/* 813B187C | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 813B1880 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1884 | 40 82 00 2C */	bne .L_813B18B0
/* 813B1888 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B188C | 80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 813B1890 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B1894 | 80 BE 00 20 */	lwz r5, 0x20(r30)
/* 813B1898 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B189C | 4B F8 65 A5 */	bl isLoaded__Q33ipl7channel7ManagerCFii
/* 813B18A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B18A4 | 41 82 00 0C */	beq .L_813B18B0
/* 813B18A8 | 7F C3 F3 78 */	mr r3, r30
/* 813B18AC | 48 00 1B 0D */	bl initBalloon__Q33ipl5scene10ChannelObjFv
.L_813B18B0:
/* 813B18B0 | 80 1E 00 18 */	lwz r0, 0x18(r30)
/* 813B18B4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B18B8 | 41 82 00 28 */	beq .L_813B18E0
/* 813B18BC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B18C0 | 40 82 00 30 */	bne .L_813B18F0
/* 813B18C4 | 80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 813B18C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B18CC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B18D0 | 7D 89 03 A6 */	mtctr r12
/* 813B18D4 | 4E 80 04 21 */	bctrl
/* 813B18D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B18DC | 41 82 00 14 */	beq .L_813B18F0
.L_813B18E0:
/* 813B18E0 | 7F C3 F3 78 */	mr r3, r30
/* 813B18E4 | 48 00 10 E9 */	bl createThumbnail__Q33ipl5scene10ChannelObjFv
/* 813B18E8 | 38 00 00 03 */	li r0, 0x3
/* 813B18EC | 90 1E 00 18 */	stw r0, 0x18(r30)
.L_813B18F0:
/* 813B18F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B18F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B18F8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B18FC | 7C 08 03 A6 */	mtlr r0
/* 813B1900 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B1904 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene10ChannelObjFPQ33ipl4nand10LayoutFile

# .text:0x384 | 0x813B1908 | size: 0x9C
# ipl::scene::ChannelObj::calc()
.fn calc__Q33ipl5scene10ChannelObjFv, global
/* 813B1908 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B190C | 7C 08 02 A6 */	mflr r0
/* 813B1910 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B1914 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B1918 | 7C 7F 1B 78 */	mr r31, r3
/* 813B191C | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813B1920 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B1924 | 41 82 00 54 */	beq .L_813B1978
/* 813B1928 | 40 80 00 14 */	bge .L_813B193C
/* 813B192C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1930 | 41 82 00 18 */	beq .L_813B1948
/* 813B1934 | 40 80 00 20 */	bge .L_813B1954
/* 813B1938 | 48 00 00 58 */	b .L_813B1990
.L_813B193C:
/* 813B193C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B1940 | 40 80 00 50 */	bge .L_813B1990
/* 813B1944 | 48 00 00 48 */	b .L_813B198C
.L_813B1948:
/* 813B1948 | 48 00 10 09 */	bl loadThumbnailAsync__Q33ipl5scene10ChannelObjFv
/* 813B194C | 90 7F 00 18 */	stw r3, 0x18(r31)
/* 813B1950 | 48 00 00 40 */	b .L_813B1990
.L_813B1954:
/* 813B1954 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813B1958 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B195C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B1960 | 7D 89 03 A6 */	mtctr r12
/* 813B1964 | 4E 80 04 21 */	bctrl
/* 813B1968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B196C | 41 82 00 24 */	beq .L_813B1990
/* 813B1970 | 38 00 00 02 */	li r0, 0x2
/* 813B1974 | 90 1F 00 18 */	stw r0, 0x18(r31)
.L_813B1978:
/* 813B1978 | 7F E3 FB 78 */	mr r3, r31
/* 813B197C | 48 00 10 51 */	bl createThumbnail__Q33ipl5scene10ChannelObjFv
/* 813B1980 | 38 00 00 03 */	li r0, 0x3
/* 813B1984 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 813B1988 | 48 00 00 08 */	b .L_813B1990
.L_813B198C:
/* 813B198C | 48 00 15 99 */	bl calcNormal__Q33ipl5scene10ChannelObjFv
.L_813B1990:
/* 813B1990 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B1994 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B1998 | 7C 08 03 A6 */	mtlr r0
/* 813B199C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B19A0 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene10ChannelObjFv

# .text:0x420 | 0x813B19A4 | size: 0x59C
# ipl::scene::ChannelObj::calcExtModule(EGG::ExpHeap*, bool, bool)
.fn calcExtModule__Q33ipl5scene10ChannelObjFPQ23EGG7ExpHeapbb, global
/* 813B19A4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813B19A8 | 7C 08 02 A6 */	mflr r0
/* 813B19AC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813B19B0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B19B4 | 48 24 7B 09 */	bl _savegpr_26
/* 813B19B8 | 80 03 00 EC */	lwz r0, 0xec(r3)
/* 813B19BC | 3F C0 81 65 */	lis r30, lbl_8164E290@ha
/* 813B19C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813B19C4 | 7C 9A 23 78 */	mr r26, r4
/* 813B19C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B19CC | 7C BB 2B 78 */	mr r27, r5
/* 813B19D0 | 7C DC 33 78 */	mr r28, r6
/* 813B19D4 | 3B DE E2 90 */	addi r30, r30, lbl_8164E290@l
/* 813B19D8 | 3B A0 00 01 */	li r29, 0x1
/* 813B19DC | 40 82 00 0C */	bne .L_813B19E8
/* 813B19E0 | 38 60 00 00 */	li r3, 0x0
/* 813B19E4 | 48 00 05 44 */	b .L_813B1F28
.L_813B19E8:
/* 813B19E8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B19EC | 41 82 03 24 */	beq .L_813B1D10
/* 813B19F0 | 40 80 00 1C */	bge .L_813B1A0C
/* 813B19F4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B19F8 | 41 82 00 D0 */	beq .L_813B1AC8
/* 813B19FC | 40 80 02 38 */	bge .L_813B1C34
/* 813B1A00 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B1A04 | 40 80 00 18 */	bge .L_813B1A1C
/* 813B1A08 | 48 00 05 1C */	b .L_813B1F24
.L_813B1A0C:
/* 813B1A0C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813B1A10 | 41 82 04 F8 */	beq .L_813B1F08
/* 813B1A14 | 40 80 05 10 */	bge .L_813B1F24
/* 813B1A18 | 48 00 04 A4 */	b .L_813B1EBC
.L_813B1A1C:
/* 813B1A1C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B1A20 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B1A24 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813B1A28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1A2C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B1A30 | 7D 89 03 A6 */	mtctr r12
/* 813B1A34 | 4E 80 04 21 */	bctrl
/* 813B1A38 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B1A3C | 40 82 04 E8 */	bne .L_813B1F24
/* 813B1A40 | 80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 813B1A44 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813B1A48 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813B1A4C | 90 7F 00 F8 */	stw r3, 0xf8(r31)
/* 813B1A50 | 41 82 00 70 */	beq .L_813B1AC0
/* 813B1A54 | 80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 813B1A58 | 7C 03 00 40 */	cmplw r3, r0
/* 813B1A5C | 40 81 00 64 */	ble .L_813B1AC0
/* 813B1A60 | 80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 813B1A64 | 80 9F 00 98 */	lwz r4, 0x98(r31)
/* 813B1A68 | 90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 813B1A6C | 80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 813B1A70 | 93 5F 00 9C */	stw r26, 0x9c(r31)
/* 813B1A74 | 80 DF 00 20 */	lwz r6, 0x20(r31)
/* 813B1A78 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B1A7C | 4B F8 6A 01 */	bl loadThumbnailRsoAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii
/* 813B1A80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1A84 | 90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 813B1A88 | 40 82 00 28 */	bne .L_813B1AB0
/* 813B1A8C | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B1A90 | 80 9F 00 98 */	lwz r4, 0x98(r31)
/* 813B1A94 | 80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 813B1A98 | 80 DF 00 20 */	lwz r6, 0x20(r31)
/* 813B1A9C | 4B F8 6B B9 */	bl loadThumbnailCSAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii
/* 813B1AA0 | 38 00 00 04 */	li r0, 0x4
/* 813B1AA4 | 90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 813B1AA8 | 90 1F 00 EC */	stw r0, 0xec(r31)
/* 813B1AAC | 48 00 00 0C */	b .L_813B1AB8
.L_813B1AB0:
/* 813B1AB0 | 38 00 00 02 */	li r0, 0x2
/* 813B1AB4 | 90 1F 00 EC */	stw r0, 0xec(r31)
.L_813B1AB8:
/* 813B1AB8 | 3B A0 00 02 */	li r29, 0x2
/* 813B1ABC | 48 00 04 68 */	b .L_813B1F24
.L_813B1AC0:
/* 813B1AC0 | 3B A0 00 01 */	li r29, 0x1
/* 813B1AC4 | 48 00 04 60 */	b .L_813B1F24
.L_813B1AC8:
/* 813B1AC8 | 80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 813B1ACC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1AD0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B1AD4 | 7D 89 03 A6 */	mtctr r12
/* 813B1AD8 | 4E 80 04 21 */	bctrl
/* 813B1ADC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1AE0 | 41 82 01 4C */	beq .L_813B1C2C
/* 813B1AE4 | 80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 813B1AE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1AEC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B1AF0 | 7D 89 03 A6 */	mtctr r12
/* 813B1AF4 | 4E 80 04 21 */	bctrl
/* 813B1AF8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B1AFC | 41 82 00 30 */	beq .L_813B1B2C
/* 813B1B00 | 80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 813B1B04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1B08 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B1B0C | 7D 89 03 A6 */	mtctr r12
/* 813B1B10 | 4E 80 04 21 */	bctrl
/* 813B1B14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1B18 | 41 82 00 14 */	beq .L_813B1B2C
/* 813B1B1C | 7F E3 FB 78 */	mr r3, r31
/* 813B1B20 | 48 00 20 55 */	bl clearModuleParam__Q33ipl5scene10ChannelObjFv
/* 813B1B24 | 3B A0 00 03 */	li r29, 0x3
/* 813B1B28 | 48 00 03 FC */	b .L_813B1F24
.L_813B1B2C:
/* 813B1B2C | 80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 813B1B30 | 38 00 00 00 */	li r0, 0x0
/* 813B1B34 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813B1B38 | 90 7F 01 00 */	stw r3, 0x100(r31)
/* 813B1B3C | 90 1F 01 04 */	stw r0, 0x104(r31)
/* 813B1B40 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 813B1B44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1B48 | 41 82 00 24 */	beq .L_813B1B6C
/* 813B1B4C | 80 9F 00 98 */	lwz r4, 0x98(r31)
/* 813B1B50 | 38 A0 00 20 */	li r5, 0x20
/* 813B1B54 | 48 24 65 81 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813B1B58 | 90 7F 01 04 */	stw r3, 0x104(r31)
/* 813B1B5C | 38 80 00 00 */	li r4, 0x0
/* 813B1B60 | 80 BF 01 00 */	lwz r5, 0x100(r31)
/* 813B1B64 | 80 A5 00 1C */	lwz r5, 0x1c(r5)
/* 813B1B68 | 4B F7 E7 CD */	bl memset
.L_813B1B6C:
/* 813B1B6C | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 813B1B70 | 80 9F 01 04 */	lwz r4, 0x104(r31)
/* 813B1B74 | 48 20 BB D1 */	bl fn_815BD744
/* 813B1B78 | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 813B1B7C | 48 20 B3 F9 */	bl fn_815BCF74
/* 813B1B80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1B84 | 41 82 00 14 */	beq .L_813B1B98
/* 813B1B88 | 38 7E 03 98 */	addi r3, r30, 0x398
/* 813B1B8C | 4C C6 31 82 */	crclr cr1eq
/* 813B1B90 | 48 17 CB 11 */	bl OSReport
/* 813B1B94 | 48 00 00 1C */	b .L_813B1BB0
.L_813B1B98:
/* 813B1B98 | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 813B1B9C | 48 20 B3 89 */	bl fn_815BCF24
/* 813B1BA0 | 7C 64 1B 78 */	mr r4, r3
/* 813B1BA4 | 38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 813B1BA8 | 4C C6 31 82 */	crclr cr1eq
/* 813B1BAC | 48 17 CA F5 */	bl OSReport
.L_813B1BB0:
/* 813B1BB0 | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 813B1BB4 | 38 8D 89 9C */	li r4, lbl_816969DC@sda21
/* 813B1BB8 | 48 20 B5 FD */	bl fn_815BD1B4
/* 813B1BBC | 90 7F 01 08 */	stw r3, 0x108(r31)
/* 813B1BC0 | 38 9E 03 ED */	addi r4, r30, 0x3ed
/* 813B1BC4 | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 813B1BC8 | 48 20 B5 ED */	bl fn_815BD1B4
/* 813B1BCC | 7C 64 1B 78 */	mr r4, r3
/* 813B1BD0 | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813B1BD4 | 4B FA 7E 89 */	bl setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v
/* 813B1BD8 | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 813B1BDC | 81 83 00 24 */	lwz r12, 0x24(r3)
/* 813B1BE0 | 7D 89 03 A6 */	mtctr r12
/* 813B1BE4 | 4E 80 04 21 */	bctrl
/* 813B1BE8 | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 813B1BEC | 38 8D 89 A1 */	li r4, lbl_816969E1@sda21
/* 813B1BF0 | 48 20 B5 C5 */	bl fn_815BD1B4
/* 813B1BF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1BF8 | 41 82 00 18 */	beq .L_813B1C10
/* 813B1BFC | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 813B1C00 | 7C 6C 1B 78 */	mr r12, r3
/* 813B1C04 | 38 64 00 04 */	addi r3, r4, 0x4
/* 813B1C08 | 7D 89 03 A6 */	mtctr r12
/* 813B1C0C | 4E 80 04 21 */	bctrl
.L_813B1C10:
/* 813B1C10 | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813B1C14 | 4B FA 7D CD */	bl start__Q33ipl7channel9RsoThreadFv
/* 813B1C18 | 38 60 00 00 */	li r3, 0x0
/* 813B1C1C | 38 00 00 03 */	li r0, 0x3
/* 813B1C20 | 98 7F 01 0C */	stb r3, 0x10c(r31)
/* 813B1C24 | 98 7F 01 0D */	stb r3, 0x10d(r31)
/* 813B1C28 | 90 1F 00 EC */	stw r0, 0xec(r31)
.L_813B1C2C:
/* 813B1C2C | 3B A0 00 02 */	li r29, 0x2
/* 813B1C30 | 48 00 02 F4 */	b .L_813B1F24
.L_813B1C34:
/* 813B1C34 | 88 03 01 0D */	lbz r0, 0x10d(r3)
/* 813B1C38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1C3C | 40 82 00 3C */	bne .L_813B1C78
/* 813B1C40 | 80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 813B1C44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1C48 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813B1C4C | 7D 89 03 A6 */	mtctr r12
/* 813B1C50 | 4E 80 04 21 */	bctrl
/* 813B1C54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1C58 | 41 82 00 20 */	beq .L_813B1C78
/* 813B1C5C | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813B1C60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1C64 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813B1C68 | 7D 89 03 A6 */	mtctr r12
/* 813B1C6C | 4E 80 04 21 */	bctrl
/* 813B1C70 | 38 00 00 01 */	li r0, 0x1
/* 813B1C74 | 98 1F 01 0D */	stb r0, 0x10d(r31)
.L_813B1C78:
/* 813B1C78 | 88 1F 01 0C */	lbz r0, 0x10c(r31)
/* 813B1C7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1C80 | 40 82 00 2C */	bne .L_813B1CAC
/* 813B1C84 | 38 1C FF FF */	subi r0, r28, 0x1
/* 813B1C88 | 81 9F 01 08 */	lwz r12, 0x108(r31)
/* 813B1C8C | 7C 00 00 34 */	cntlzw r0, r0
/* 813B1C90 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813B1C94 | 7D 89 03 A6 */	mtctr r12
/* 813B1C98 | 4E 80 04 21 */	bctrl
/* 813B1C9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1CA0 | 41 82 00 0C */	beq .L_813B1CAC
/* 813B1CA4 | 38 00 00 01 */	li r0, 0x1
/* 813B1CA8 | 98 1F 01 0C */	stb r0, 0x10c(r31)
.L_813B1CAC:
/* 813B1CAC | 88 1F 01 0D */	lbz r0, 0x10d(r31)
/* 813B1CB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1CB4 | 41 82 00 54 */	beq .L_813B1D08
/* 813B1CB8 | 88 1F 01 0C */	lbz r0, 0x10c(r31)
/* 813B1CBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1CC0 | 41 82 00 48 */	beq .L_813B1D08
/* 813B1CC4 | 38 00 00 01 */	li r0, 0x1
/* 813B1CC8 | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 813B1CCC | 98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 813B1CD0 | 81 83 00 28 */	lwz r12, 0x28(r3)
/* 813B1CD4 | 7D 89 03 A6 */	mtctr r12
/* 813B1CD8 | 4E 80 04 21 */	bctrl
/* 813B1CDC | 80 7F 01 00 */	lwz r3, 0x100(r31)
/* 813B1CE0 | 48 20 BA 6D */	bl fn_815BD74C
/* 813B1CE4 | 38 00 00 00 */	li r0, 0x0
/* 813B1CE8 | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813B1CEC | 90 1F 01 08 */	stw r0, 0x108(r31)
/* 813B1CF0 | 38 80 00 00 */	li r4, 0x0
/* 813B1CF4 | 4B FA 7D 69 */	bl setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v
/* 813B1CF8 | 7F E3 FB 78 */	mr r3, r31
/* 813B1CFC | 48 00 1E 79 */	bl clearModuleParam__Q33ipl5scene10ChannelObjFv
/* 813B1D00 | 3B A0 00 03 */	li r29, 0x3
/* 813B1D04 | 48 00 02 20 */	b .L_813B1F24
.L_813B1D08:
/* 813B1D08 | 3B A0 00 02 */	li r29, 0x2
/* 813B1D0C | 48 00 02 18 */	b .L_813B1F24
.L_813B1D10:
/* 813B1D10 | 80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 813B1D14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1D18 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B1D1C | 7D 89 03 A6 */	mtctr r12
/* 813B1D20 | 4E 80 04 21 */	bctrl
/* 813B1D24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1D28 | 41 82 01 8C */	beq .L_813B1EB4
/* 813B1D2C | 80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 813B1D30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1D34 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B1D38 | 7D 89 03 A6 */	mtctr r12
/* 813B1D3C | 4E 80 04 21 */	bctrl
/* 813B1D40 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B1D44 | 41 82 00 30 */	beq .L_813B1D74
/* 813B1D48 | 80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 813B1D4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1D50 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B1D54 | 7D 89 03 A6 */	mtctr r12
/* 813B1D58 | 4E 80 04 21 */	bctrl
/* 813B1D5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1D60 | 41 82 00 14 */	beq .L_813B1D74
/* 813B1D64 | 7F E3 FB 78 */	mr r3, r31
/* 813B1D68 | 48 00 1E 0D */	bl clearModuleParam__Q33ipl5scene10ChannelObjFv
/* 813B1D6C | 3B A0 00 03 */	li r29, 0x3
/* 813B1D70 | 48 00 01 B4 */	b .L_813B1F24
.L_813B1D74:
/* 813B1D74 | 80 1F 01 10 */	lwz r0, 0x110(r31)
/* 813B1D78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1D7C | 40 82 00 18 */	bne .L_813B1D94
/* 813B1D80 | 80 9F 00 98 */	lwz r4, 0x98(r31)
/* 813B1D84 | 38 60 FF FF */	li r3, -0x1
/* 813B1D88 | 38 A0 00 00 */	li r5, 0x0
/* 813B1D8C | 48 24 58 E9 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 813B1D90 | 90 7F 01 10 */	stw r3, 0x110(r31)
.L_813B1D94:
/* 813B1D94 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B1D98 | 80 9F 01 10 */	lwz r4, 0x110(r31)
/* 813B1D9C | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B1DA0 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813B1DA4 | 4B F8 8C ED */	bl create__Q33ipl7channel20ChannelScriptManagerFPQ23EGG7ExpHeap
/* 813B1DA8 | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 813B1DAC | 38 1F 00 A4 */	addi r0, r31, 0xa4
/* 813B1DB0 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B1DB4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813B1DB8 | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 813B1DBC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813B1DC0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813B1DC4 | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 813B1DC8 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813B1DCC | 4B F8 64 DD */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813B1DD0 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 813B1DD4 | 38 80 00 01 */	li r4, 0x1
/* 813B1DD8 | 88 1E 02 BC */	lbz r0, 0x2bc(r30)
/* 813B1DDC | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813B1DE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1DE4 | 88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 813B1DE8 | 98 01 00 20 */	stb r0, 0x20(r1)
/* 813B1DEC | 98 81 00 21 */	stb r4, 0x21(r1)
/* 813B1DF0 | 98 81 00 22 */	stb r4, 0x22(r1)
/* 813B1DF4 | 41 82 00 0C */	beq .L_813B1E00
/* 813B1DF8 | 38 00 00 00 */	li r0, 0x0
/* 813B1DFC | 48 00 00 08 */	b .L_813B1E04
.L_813B1E00:
/* 813B1E00 | 80 1E 00 8C */	lwz r0, 0x8c(r30)
.L_813B1E04:
/* 813B1E04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1E08 | 41 82 00 3C */	beq .L_813B1E44
/* 813B1E0C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B1E10 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B1E14 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813B1E18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B1E1C | 41 82 00 0C */	beq .L_813B1E28
/* 813B1E20 | 38 60 00 00 */	li r3, 0x0
/* 813B1E24 | 48 00 00 08 */	b .L_813B1E2C
.L_813B1E28:
/* 813B1E28 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813B1E2C:
/* 813B1E2C | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 813B1E30 | 38 00 FF FF */	li r0, -0x1
/* 813B1E34 | 7C 84 00 38 */	and r4, r4, r0
/* 813B1E38 | 4B F9 1B 99 */	bl isNewMessageThere__Q33ipl5nwc247ManagerCFUl
/* 813B1E3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1E40 | 40 82 00 0C */	bne .L_813B1E4C
.L_813B1E44:
/* 813B1E44 | 38 00 00 00 */	li r0, 0x0
/* 813B1E48 | 98 01 00 22 */	stb r0, 0x22(r1)
.L_813B1E4C:
/* 813B1E4C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B1E50 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B1E54 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B1E58 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813B1E5C | 4B F8 92 2D */	bl setData__Q33ipl7channel20ChannelScriptManagerFRCQ43ipl7channel20ChannelScriptManager6CSData
/* 813B1E60 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813B1E64 | 80 9F 00 F0 */	lwz r4, 0xf0(r31)
/* 813B1E68 | 80 BF 00 E8 */	lwz r5, 0xe8(r31)
/* 813B1E6C | 4B F8 8C B5 */	bl init__Q33ipl7channel20ChannelScriptManagerFPQ33ipl4nand4FilePQ33ipl7channel9RsoThread
/* 813B1E70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1E74 | 40 82 00 10 */	bne .L_813B1E84
/* 813B1E78 | 38 00 00 06 */	li r0, 0x6
/* 813B1E7C | 90 1F 00 EC */	stw r0, 0xec(r31)
/* 813B1E80 | 48 00 00 0C */	b .L_813B1E8C
.L_813B1E84:
/* 813B1E84 | 38 00 00 05 */	li r0, 0x5
/* 813B1E88 | 90 1F 00 EC */	stw r0, 0xec(r31)
.L_813B1E8C:
/* 813B1E8C | 80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 813B1E90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1E94 | 41 82 00 18 */	beq .L_813B1EAC
/* 813B1E98 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1E9C | 38 80 00 01 */	li r4, 0x1
/* 813B1EA0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B1EA4 | 7D 89 03 A6 */	mtctr r12
/* 813B1EA8 | 4E 80 04 21 */	bctrl
.L_813B1EAC:
/* 813B1EAC | 38 00 00 00 */	li r0, 0x0
/* 813B1EB0 | 90 1F 00 F0 */	stw r0, 0xf0(r31)
.L_813B1EB4:
/* 813B1EB4 | 3B A0 00 02 */	li r29, 0x2
/* 813B1EB8 | 48 00 00 6C */	b .L_813B1F24
.L_813B1EBC:
/* 813B1EBC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B1EC0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B1EC4 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813B1EC8 | 4B F8 90 2D */	bl calc__Q33ipl7channel20ChannelScriptManagerFv
/* 813B1ECC | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813B1ED0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1ED4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813B1ED8 | 7D 89 03 A6 */	mtctr r12
/* 813B1EDC | 4E 80 04 21 */	bctrl
/* 813B1EE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1EE4 | 41 82 00 1C */	beq .L_813B1F00
/* 813B1EE8 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813B1EEC | 4B F8 91 39 */	bl finish__Q33ipl7channel20ChannelScriptManagerFv
/* 813B1EF0 | 38 60 00 01 */	li r3, 0x1
/* 813B1EF4 | 38 00 00 06 */	li r0, 0x6
/* 813B1EF8 | 98 7F 00 E4 */	stb r3, 0xe4(r31)
/* 813B1EFC | 90 1F 00 EC */	stw r0, 0xec(r31)
.L_813B1F00:
/* 813B1F00 | 3B A0 00 02 */	li r29, 0x2
/* 813B1F04 | 48 00 00 20 */	b .L_813B1F24
.L_813B1F08:
/* 813B1F08 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B1F0C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B1F10 | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 813B1F14 | 4B F8 91 1D */	bl destroy__Q33ipl7channel20ChannelScriptManagerFv
/* 813B1F18 | 7F E3 FB 78 */	mr r3, r31
/* 813B1F1C | 48 00 1C 59 */	bl clearModuleParam__Q33ipl5scene10ChannelObjFv
/* 813B1F20 | 3B A0 00 03 */	li r29, 0x3
.L_813B1F24:
/* 813B1F24 | 7F A3 EB 78 */	mr r3, r29
.L_813B1F28:
/* 813B1F28 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B1F2C | 48 24 75 DD */	bl _restgpr_26
/* 813B1F30 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813B1F34 | 7C 08 03 A6 */	mtlr r0
/* 813B1F38 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813B1F3C | 4E 80 00 20 */	blr
.endfn calcExtModule__Q33ipl5scene10ChannelObjFPQ23EGG7ExpHeapbb

# .text:0x9BC | 0x813B1F40 | size: 0x3C
# ipl::scene::ChannelObj::drawThumbnail()
.fn drawThumbnail__Q33ipl5scene10ChannelObjFv, global
/* 813B1F40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B1F44 | 7C 08 02 A6 */	mflr r0
/* 813B1F48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B1F4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B1F50 | 7C 7F 1B 78 */	mr r31, r3
/* 813B1F54 | 4B FF B8 B5 */	bl isLayoutCreated__Q33ipl5scene10ChannelObjCFv
/* 813B1F58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1F5C | 41 82 00 0C */	beq .L_813B1F68
/* 813B1F60 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 813B1F64 | 4B FB 88 39 */	bl draw__Q33ipl6layout6ObjectFv
.L_813B1F68:
/* 813B1F68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B1F6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B1F70 | 7C 08 03 A6 */	mtlr r0
/* 813B1F74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B1F78 | 4E 80 00 20 */	blr
.endfn drawThumbnail__Q33ipl5scene10ChannelObjFv

# .text:0x9F8 | 0x813B1F7C | size: 0x8
# ipl::scene::ChannelObj::drawCursor()
.fn drawCursor__Q33ipl5scene10ChannelObjFv, global
/* 813B1F7C | 80 63 00 48 */	lwz r3, 0x48(r3)
/* 813B1F80 | 4B FB 88 1C */	b draw__Q33ipl6layout6ObjectFv
.endfn drawCursor__Q33ipl5scene10ChannelObjFv

# .text:0xA00 | 0x813B1F84 | size: 0x14
# ipl::scene::ChannelObj::drawBalloon()
.fn drawBalloon__Q33ipl5scene10ChannelObjFv, global
/* 813B1F84 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813B1F88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1F8C | 4D 82 00 20 */	beqlr
/* 813B1F90 | 4B FB 88 0C */	b draw__Q33ipl6layout6ObjectFv
/* 813B1F94 | 4E 80 00 20 */	blr
.endfn drawBalloon__Q33ipl5scene10ChannelObjFv

# .text:0xA14 | 0x813B1F98 | size: 0xE0
# ipl::scene::ChannelObj::createDiskLayout(void*)
.fn createDiskLayout__Q33ipl5scene10ChannelObjFPv, global
/* 813B1F98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B1F9C | 7C 08 02 A6 */	mflr r0
/* 813B1FA0 | 3C C0 00 02 */	lis r6, 0x2
/* 813B1FA4 | 7C 85 23 78 */	mr r5, r4
/* 813B1FA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B1FAC | 38 86 90 00 */	subi r4, r6, 0x7000
/* 813B1FB0 | 38 CD 89 A8 */	li r6, lbl_816969E8@sda21
/* 813B1FB4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B1FB8 | 3F E0 81 65 */	lis r31, lbl_8164E290@ha
/* 813B1FBC | 3B FF E2 90 */	addi r31, r31, lbl_8164E290@l
/* 813B1FC0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B1FC4 | 7C 7E 1B 78 */	mr r30, r3
/* 813B1FC8 | 38 FF 03 F8 */	addi r7, r31, 0x3f8
/* 813B1FCC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B1FD0 | 4B FB 8E C1 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc
/* 813B1FD4 | 90 7E 00 40 */	stw r3, 0x40(r30)
/* 813B1FD8 | 48 00 04 E9 */	bl setLangPane__Q33ipl5scene10ChannelObjFPCQ33ipl6layout6Object
/* 813B1FDC | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813B1FE0 | 38 9F 04 03 */	addi r4, r31, 0x403
/* 813B1FE4 | 4B FB 86 E1 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813B1FE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1FEC | 41 82 00 1C */	beq .L_813B2008
/* 813B1FF0 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813B1FF4 | 38 9F 04 03 */	addi r4, r31, 0x403
/* 813B1FF8 | 38 A0 00 01 */	li r5, 0x1
/* 813B1FFC | 4B FB 83 71 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B2000 | 90 7E 00 44 */	stw r3, 0x44(r30)
/* 813B2004 | 48 00 00 38 */	b .L_813B203C
.L_813B2008:
/* 813B2008 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813B200C | 38 9F 04 0E */	addi r4, r31, 0x40e
/* 813B2010 | 4B FB 86 B5 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813B2014 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2018 | 41 82 00 1C */	beq .L_813B2034
/* 813B201C | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813B2020 | 38 9F 04 0E */	addi r4, r31, 0x40e
/* 813B2024 | 38 A0 00 01 */	li r5, 0x1
/* 813B2028 | 4B FB 83 45 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B202C | 90 7E 00 44 */	stw r3, 0x44(r30)
/* 813B2030 | 48 00 00 0C */	b .L_813B203C
.L_813B2034:
/* 813B2034 | 38 00 00 00 */	li r0, 0x0
/* 813B2038 | 90 1E 00 44 */	stw r0, 0x44(r30)
.L_813B203C:
/* 813B203C | 7F C3 F3 78 */	mr r3, r30
/* 813B2040 | 48 00 00 89 */	bl changeDisk__Q33ipl5scene10ChannelObjFv
/* 813B2044 | 80 9E 00 40 */	lwz r4, 0x40(r30)
/* 813B2048 | 7F C3 F3 78 */	mr r3, r30
/* 813B204C | 48 00 1B D9 */	bl bindNewAnm__Q33ipl5scene10ChannelObjFPQ33ipl6layout6Object
/* 813B2050 | 38 00 00 01 */	li r0, 0x1
/* 813B2054 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813B2058 | 90 1E 00 84 */	stw r0, 0x84(r30)
/* 813B205C | 4B FB 85 D9 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813B2060 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B2064 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B2068 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B206C | 7C 08 03 A6 */	mtlr r0
/* 813B2070 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B2074 | 4E 80 00 20 */	blr
.endfn createDiskLayout__Q33ipl5scene10ChannelObjFPv

# .text:0xAF4 | 0x813B2078 | size: 0x50
# ipl::scene::ChannelObj::destroyDiskLayout()
.fn destroyDiskLayout__Q33ipl5scene10ChannelObjFv, global
/* 813B2078 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B207C | 7C 08 02 A6 */	mflr r0
/* 813B2080 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B2084 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B2088 | 7C 7F 1B 78 */	mr r31, r3
/* 813B208C | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 813B2090 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B2094 | 41 82 00 20 */	beq .L_813B20B4
/* 813B2098 | 7C 03 03 78 */	mr r3, r0
/* 813B209C | 4B FB 8D 65 */	bl destroyHeap__Q33ipl6layout6ObjectFv
/* 813B20A0 | 38 00 00 00 */	li r0, 0x0
/* 813B20A4 | 90 1F 00 40 */	stw r0, 0x40(r31)
/* 813B20A8 | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 813B20AC | 98 1F 00 80 */	stb r0, 0x80(r31)
/* 813B20B0 | 90 1F 00 84 */	stw r0, 0x84(r31)
.L_813B20B4:
/* 813B20B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B20B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B20BC | 7C 08 03 A6 */	mtlr r0
/* 813B20C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B20C4 | 4E 80 00 20 */	blr
.endfn destroyDiskLayout__Q33ipl5scene10ChannelObjFv

# .text:0xB44 | 0x813B20C8 | size: 0x5C
# ipl::scene::ChannelObj::changeDisk()
.fn changeDisk__Q33ipl5scene10ChannelObjFv, global
/* 813B20C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B20CC | 7C 08 02 A6 */	mflr r0
/* 813B20D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B20D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B20D8 | 7C 7F 1B 78 */	mr r31, r3
/* 813B20DC | 48 00 00 E9 */	bl isDiskChannel__Q33ipl5scene10ChannelObjCFv
/* 813B20E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B20E4 | 41 82 00 2C */	beq .L_813B2110
/* 813B20E8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813B20EC | 38 03 FF FF */	subi r0, r3, 0x1
/* 813B20F0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813B20F4 | 41 81 00 1C */	bgt .L_813B2110
/* 813B20F8 | 7F E3 FB 78 */	mr r3, r31
/* 813B20FC | 38 80 00 04 */	li r4, 0x4
/* 813B2100 | 48 00 17 B1 */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
/* 813B2104 | 7F E3 FB 78 */	mr r3, r31
/* 813B2108 | 38 80 00 01 */	li r4, 0x1
/* 813B210C | 48 00 17 A5 */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
.L_813B2110:
/* 813B2110 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B2114 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B2118 | 7C 08 03 A6 */	mtlr r0
/* 813B211C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B2120 | 4E 80 00 20 */	blr
.endfn changeDisk__Q33ipl5scene10ChannelObjFv

# .text:0xBA0 | 0x813B2124 | size: 0x90
# ipl::scene::ChannelObj::resetDiskTitleName()
.fn resetDiskTitleName__Q33ipl5scene10ChannelObjFv, global
/* 813B2124 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B2128 | 7C 08 02 A6 */	mflr r0
/* 813B212C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B2130 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B2134 | 7C 7F 1B 78 */	mr r31, r3
/* 813B2138 | 48 00 00 8D */	bl isDiskChannel__Q33ipl5scene10ChannelObjCFv
/* 813B213C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2140 | 41 82 00 60 */	beq .L_813B21A0
/* 813B2144 | 80 1F 00 40 */	lwz r0, 0x40(r31)
/* 813B2148 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B214C | 41 82 00 30 */	beq .L_813B217C
/* 813B2150 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B2154 | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 813B2158 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B215C | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813B2160 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B2164 | 38 C0 00 00 */	li r6, 0x0
/* 813B2168 | 4B F8 69 F5 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813B216C | 7C 64 1B 78 */	mr r4, r3
/* 813B2170 | 7F E3 FB 78 */	mr r3, r31
/* 813B2174 | 48 00 13 0D */	bl setBalloonText__Q33ipl5scene10ChannelObjFPCw
/* 813B2178 | 48 00 00 28 */	b .L_813B21A0
.L_813B217C:
/* 813B217C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B2180 | 38 80 00 00 */	li r4, 0x0
/* 813B2184 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B2188 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813B218C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813B2190 | 4B F8 C6 2D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813B2194 | 7C 64 1B 78 */	mr r4, r3
/* 813B2198 | 7F E3 FB 78 */	mr r3, r31
/* 813B219C | 48 00 12 E5 */	bl setBalloonText__Q33ipl5scene10ChannelObjFPCw
.L_813B21A0:
/* 813B21A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B21A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B21A8 | 7C 08 03 A6 */	mtlr r0
/* 813B21AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B21B0 | 4E 80 00 20 */	blr
.endfn resetDiskTitleName__Q33ipl5scene10ChannelObjFv

# .text:0xC30 | 0x813B21B4 | size: 0x10
# ipl::scene::ChannelObj::getTranslate() const
.fn getTranslate__Q33ipl5scene10ChannelObjCFv, global
/* 813B21B4 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 813B21B8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B21BC | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813B21C0 | 4E 80 00 20 */	blr
.endfn getTranslate__Q33ipl5scene10ChannelObjCFv

# .text:0xC40 | 0x813B21C4 | size: 0x60
# ipl::scene::ChannelObj::isDiskChannel() const
.fn isDiskChannel__Q33ipl5scene10ChannelObjCFv, global
/* 813B21C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B21C8 | 7C 08 02 A6 */	mflr r0
/* 813B21CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B21D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B21D4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B21D8 | 48 00 00 79 */	bl isValid__Q33ipl5scene10ChannelObjCFv
/* 813B21DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B21E0 | 41 82 00 2C */	beq .L_813B220C
/* 813B21E4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B21E8 | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 813B21EC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B21F0 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813B21F4 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B21F8 | 48 00 00 2D */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B21FC | 2C 03 00 0F */	cmpwi r3, 0xf
/* 813B2200 | 40 82 00 0C */	bne .L_813B220C
/* 813B2204 | 38 60 00 01 */	li r3, 0x1
/* 813B2208 | 48 00 00 08 */	b .L_813B2210
.L_813B220C:
/* 813B220C | 38 60 00 00 */	li r3, 0x0
.L_813B2210:
/* 813B2210 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B2214 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B2218 | 7C 08 03 A6 */	mtlr r0
/* 813B221C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B2220 | 4E 80 00 20 */	blr
.endfn isDiskChannel__Q33ipl5scene10ChannelObjCFv

# .text:0xCA0 | 0x813B2224 | size: 0x2C
# ipl::channel::Manager::getSceneID(int, int) const
.fn getSceneID__Q33ipl7channel7ManagerCFii, global
/* 813B2224 | 1C 04 05 40 */	mulli r0, r4, 0x540
/* 813B2228 | 1C 85 00 70 */	mulli r4, r5, 0x70
/* 813B222C | 7C 03 02 14 */	add r0, r3, r0
/* 813B2230 | 7C 60 22 14 */	add r3, r0, r4
/* 813B2234 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 813B2238 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B223C | 41 82 00 0C */	beq .L_813B2248
/* 813B2240 | 80 63 00 48 */	lwz r3, 0x48(r3)
/* 813B2244 | 4E 80 00 20 */	blr
.L_813B2248:
/* 813B2248 | 38 60 00 00 */	li r3, 0x0
/* 813B224C | 4E 80 00 20 */	blr
.endfn getSceneID__Q33ipl7channel7ManagerCFii

# .text:0xCCC | 0x813B2250 | size: 0x34
# ipl::scene::ChannelObj::isValid() const
.fn isValid__Q33ipl5scene10ChannelObjCFv, global
/* 813B2250 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 813B2254 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813B2258 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 813B225C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813B2260 | 1C 64 05 40 */	mulli r3, r4, 0x540
/* 813B2264 | 80 85 00 84 */	lwz r4, 0x84(r5)
/* 813B2268 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 813B226C | 7C 64 1A 14 */	add r3, r4, r3
/* 813B2270 | 7C 63 02 14 */	add r3, r3, r0
/* 813B2274 | 88 63 00 24 */	lbz r3, 0x24(r3)
/* 813B2278 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813B227C | 7C 60 19 10 */	subfe r3, r0, r3
/* 813B2280 | 4E 80 00 20 */	blr
.endfn isValid__Q33ipl5scene10ChannelObjCFv

# .text:0xD00 | 0x813B2284 | size: 0x98
# ipl::scene::ChannelObj::onPoint(int)
.fn onPoint__Q33ipl5scene10ChannelObjFi, global
/* 813B2284 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B2288 | 7C 08 02 A6 */	mflr r0
/* 813B228C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B2290 | 54 80 03 DF */	rlwinm. r0, r4, 0, 15, 15
/* 813B2294 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B2298 | 7C 9F 23 78 */	mr r31, r4
/* 813B229C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B22A0 | 7C 7E 1B 78 */	mr r30, r3
/* 813B22A4 | 41 82 00 10 */	beq .L_813B22B4
/* 813B22A8 | 38 00 00 00 */	li r0, 0x0
/* 813B22AC | 90 03 00 74 */	stw r0, 0x74(r3)
/* 813B22B0 | 48 00 00 2C */	b .L_813B22DC
.L_813B22B4:
/* 813B22B4 | 54 80 03 9D */	rlwinm. r0, r4, 0, 14, 14
/* 813B22B8 | 41 82 00 10 */	beq .L_813B22C8
/* 813B22BC | 38 00 00 01 */	li r0, 0x1
/* 813B22C0 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 813B22C4 | 48 00 00 18 */	b .L_813B22DC
.L_813B22C8:
/* 813B22C8 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 813B22CC | 38 05 00 01 */	addi r0, r5, 0x1
/* 813B22D0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B22D4 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 813B22D8 | 41 81 00 2C */	bgt .L_813B2304
.L_813B22DC:
/* 813B22DC | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 813B22E0 | 40 82 00 10 */	bne .L_813B22F0
/* 813B22E4 | 7F C3 F3 78 */	mr r3, r30
/* 813B22E8 | 38 80 00 01 */	li r4, 0x1
/* 813B22EC | 48 00 0D F5 */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
.L_813B22F0:
/* 813B22F0 | 57 E0 07 BD */	rlwinm. r0, r31, 0, 30, 30
/* 813B22F4 | 40 82 00 10 */	bne .L_813B2304
/* 813B22F8 | 7F C3 F3 78 */	mr r3, r30
/* 813B22FC | 38 80 00 01 */	li r4, 0x1
/* 813B2300 | 48 00 15 B1 */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
.L_813B2304:
/* 813B2304 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B2308 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B230C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B2310 | 7C 08 03 A6 */	mtlr r0
/* 813B2314 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B2318 | 4E 80 00 20 */	blr
.endfn onPoint__Q33ipl5scene10ChannelObjFi

# .text:0xD98 | 0x813B231C | size: 0x94
# ipl::scene::ChannelObj::onLeft(int)
.fn onLeft__Q33ipl5scene10ChannelObjFi, global
/* 813B231C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B2320 | 7C 08 02 A6 */	mflr r0
/* 813B2324 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B2328 | 54 80 03 DF */	rlwinm. r0, r4, 0, 15, 15
/* 813B232C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B2330 | 7C 9F 23 78 */	mr r31, r4
/* 813B2334 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B2338 | 7C 7E 1B 78 */	mr r30, r3
/* 813B233C | 41 82 00 10 */	beq .L_813B234C
/* 813B2340 | 38 00 00 00 */	li r0, 0x0
/* 813B2344 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 813B2348 | 48 00 00 28 */	b .L_813B2370
.L_813B234C:
/* 813B234C | 54 80 03 9D */	rlwinm. r0, r4, 0, 14, 14
/* 813B2350 | 41 82 00 10 */	beq .L_813B2360
/* 813B2354 | 38 00 00 01 */	li r0, 0x1
/* 813B2358 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 813B235C | 48 00 00 14 */	b .L_813B2370
.L_813B2360:
/* 813B2360 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 813B2364 | 34 05 FF FF */	subic. r0, r5, 0x1
/* 813B2368 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 813B236C | 41 81 00 2C */	bgt .L_813B2398
.L_813B2370:
/* 813B2370 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 813B2374 | 40 82 00 10 */	bne .L_813B2384
/* 813B2378 | 7F C3 F3 78 */	mr r3, r30
/* 813B237C | 38 80 00 03 */	li r4, 0x3
/* 813B2380 | 48 00 0D 61 */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
.L_813B2384:
/* 813B2384 | 57 E0 07 BD */	rlwinm. r0, r31, 0, 30, 30
/* 813B2388 | 40 82 00 10 */	bne .L_813B2398
/* 813B238C | 7F C3 F3 78 */	mr r3, r30
/* 813B2390 | 38 80 00 04 */	li r4, 0x4
/* 813B2394 | 48 00 15 1D */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
.L_813B2398:
/* 813B2398 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B239C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B23A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B23A4 | 7C 08 03 A6 */	mtlr r0
/* 813B23A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B23AC | 4E 80 00 20 */	blr
.endfn onLeft__Q33ipl5scene10ChannelObjFi

# .text:0xE2C | 0x813B23B0 | size: 0x60
# ipl::scene::ChannelObj::onPinch(bool)
.fn onPinch__Q33ipl5scene10ChannelObjFb, global
/* 813B23B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B23B4 | 7C 08 02 A6 */	mflr r0
/* 813B23B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B23BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B23C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B23C4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B23C8 | 41 82 00 18 */	beq .L_813B23E0
/* 813B23CC | 38 80 00 01 */	li r4, 0x1
/* 813B23D0 | 48 00 0D 11 */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B23D4 | 38 00 00 01 */	li r0, 0x1
/* 813B23D8 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813B23DC | 48 00 00 14 */	b .L_813B23F0
.L_813B23E0:
/* 813B23E0 | 38 80 00 00 */	li r4, 0x0
/* 813B23E4 | 48 00 0C FD */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B23E8 | 38 00 00 00 */	li r0, 0x0
/* 813B23EC | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_813B23F0:
/* 813B23F0 | 7F E3 FB 78 */	mr r3, r31
/* 813B23F4 | 38 80 00 00 */	li r4, 0x0
/* 813B23F8 | 48 00 14 B9 */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
/* 813B23FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B2400 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B2404 | 7C 08 03 A6 */	mtlr r0
/* 813B2408 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B240C | 4E 80 00 20 */	blr
.endfn onPinch__Q33ipl5scene10ChannelObjFb

# .text:0xE8C | 0x813B2410 | size: 0x8
# ipl::scene::ChannelObj::setCursorDecideAnim()
.fn setCursorDecideAnim__Q33ipl5scene10ChannelObjFv, global
/* 813B2410 | 38 80 00 04 */	li r4, 0x4
/* 813B2414 | 48 00 0C CC */	b setCursorAnim__Q33ipl5scene10ChannelObjFi
.endfn setCursorDecideAnim__Q33ipl5scene10ChannelObjFv

# .text:0xE94 | 0x813B2418 | size: 0x4C
# ipl::scene::ChannelObj::initCursorAnim(bool)
.fn initCursorAnim__Q33ipl5scene10ChannelObjFb, global
/* 813B2418 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B241C | 7C 08 02 A6 */	mflr r0
/* 813B2420 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B2424 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B2428 | 7C 9F 23 78 */	mr r31, r4
/* 813B242C | 38 80 00 00 */	li r4, 0x0
/* 813B2430 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B2434 | 7C 7E 1B 78 */	mr r30, r3
/* 813B2438 | 48 00 0C A9 */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B243C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B2440 | 41 82 00 0C */	beq .L_813B244C
/* 813B2444 | 38 00 00 00 */	li r0, 0x0
/* 813B2448 | 90 1E 00 74 */	stw r0, 0x74(r30)
.L_813B244C:
/* 813B244C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B2450 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B2454 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B2458 | 7C 08 03 A6 */	mtlr r0
/* 813B245C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B2460 | 4E 80 00 20 */	blr
.endfn initCursorAnim__Q33ipl5scene10ChannelObjFb

# .text:0xEE0 | 0x813B2464 | size: 0x4C
# ipl::scene::ChannelObj::initBalloonAnim(bool)
.fn initBalloonAnim__Q33ipl5scene10ChannelObjFb, global
/* 813B2464 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B2468 | 7C 08 02 A6 */	mflr r0
/* 813B246C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B2470 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B2474 | 7C 9F 23 78 */	mr r31, r4
/* 813B2478 | 38 80 00 00 */	li r4, 0x0
/* 813B247C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B2480 | 7C 7E 1B 78 */	mr r30, r3
/* 813B2484 | 48 00 14 2D */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
/* 813B2488 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B248C | 41 82 00 0C */	beq .L_813B2498
/* 813B2490 | 38 00 00 00 */	li r0, 0x0
/* 813B2494 | 90 1E 00 74 */	stw r0, 0x74(r30)
.L_813B2498:
/* 813B2498 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B249C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B24A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B24A4 | 7C 08 03 A6 */	mtlr r0
/* 813B24A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B24AC | 4E 80 00 20 */	blr
.endfn initBalloonAnim__Q33ipl5scene10ChannelObjFb

# .text:0xF2C | 0x813B24B0 | size: 0x10
# ipl::scene::ChannelObj::FillModuleCount()
.fn FillModuleCount__Q33ipl5scene10ChannelObjFv, global
/* 813B24B0 | 3C 80 00 01 */	lis r4, 0x1
/* 813B24B4 | 38 04 8C A0 */	subi r0, r4, 0x7360
/* 813B24B8 | 90 03 00 F8 */	stw r0, 0xf8(r3)
/* 813B24BC | 4E 80 00 20 */	blr
.endfn FillModuleCount__Q33ipl5scene10ChannelObjFv

# .text:0xF3C | 0x813B24C0 | size: 0x30C
# ipl::scene::ChannelObj::setLangPane(const ipl::layout::Object*)
.fn setLangPane__Q33ipl5scene10ChannelObjFPCQ33ipl6layout6Object, global
/* 813B24C0 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813B24C4 | 7C 08 02 A6 */	mflr r0
/* 813B24C8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813B24CC | 39 61 00 90 */	addi r11, r1, 0x90
/* 813B24D0 | 48 24 6F E5 */	bl _savegpr_24
/* 813B24D4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B24D8 | 4B F8 35 15 */	bl getLanguage__Q23ipl6SystemFv
/* 813B24DC | 3C A0 81 65 */	lis r5, lbl_8164E300@ha
/* 813B24E0 | 54 63 10 3A */	slwi r3, r3, 2
/* 813B24E4 | 38 A5 E3 00 */	addi r5, r5, lbl_8164E300@l
/* 813B24E8 | 38 00 00 14 */	li r0, 0x14
/* 813B24EC | 7F 25 18 2E */	lwzx r25, r5, r3
/* 813B24F0 | 38 81 00 3F */	addi r4, r1, 0x3f
/* 813B24F4 | 38 60 00 00 */	li r3, 0x0
/* 813B24F8 | 7C 09 03 A6 */	mtctr r0
.L_813B24FC:
/* 813B24FC | 98 64 00 01 */	stb r3, 0x1(r4)
/* 813B2500 | 9C 64 00 02 */	stbu r3, 0x2(r4)
/* 813B2504 | 42 00 FF F8 */	bdnz .L_813B24FC
/* 813B2508 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 813B250C | 3B 00 00 00 */	li r24, 0x0
/* 813B2510 | 48 00 02 BD */	bl "GetBeginIter__Q34nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>Fv"
/* 813B2514 | 3F 80 81 65 */	lis r28, lbl_8164E300@ha
/* 813B2518 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 813B251C | 3B 9C E3 00 */	addi r28, r28, lbl_8164E300@l
/* 813B2520 | 3B A0 00 00 */	li r29, 0x0
/* 813B2524 | 48 00 01 30 */	b .L_813B2654
.L_813B2528:
/* 813B2528 | 80 61 00 34 */	lwz r3, 0x34(r1)
/* 813B252C | 7F 24 CB 78 */	mr r4, r25
/* 813B2530 | 38 63 00 14 */	addi r3, r3, 0x14
/* 813B2534 | 48 24 FF 4D */	bl strcmp
/* 813B2538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B253C | 40 82 00 0C */	bne .L_813B2548
/* 813B2540 | 3B 00 00 01 */	li r24, 0x1
/* 813B2544 | 48 00 01 04 */	b .L_813B2648
.L_813B2548:
/* 813B2548 | 3B 40 00 01 */	li r26, 0x1
/* 813B254C | 3B C0 00 00 */	li r30, 0x0
.L_813B2550:
/* 813B2550 | 7F C5 F3 78 */	mr r5, r30
/* 813B2554 | 38 61 00 38 */	addi r3, r1, 0x38
/* 813B2558 | 38 8D 89 AC */	li r4, lbl_816969EC@sda21
/* 813B255C | 4C C6 31 82 */	crclr cr1eq
/* 813B2560 | 48 24 E5 21 */	bl sprintf
/* 813B2564 | 83 61 00 34 */	lwz r27, 0x34(r1)
/* 813B2568 | 38 81 00 38 */	addi r4, r1, 0x38
/* 813B256C | 38 A0 00 05 */	li r5, 0x5
/* 813B2570 | 38 7B 00 14 */	addi r3, r27, 0x14
/* 813B2574 | 48 25 00 29 */	bl strncmp
/* 813B2578 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B257C | 40 82 00 0C */	bne .L_813B2588
/* 813B2580 | 3B 40 00 00 */	li r26, 0x0
/* 813B2584 | 48 00 00 10 */	b .L_813B2594
.L_813B2588:
/* 813B2588 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813B258C | 2C 1E 00 10 */	cmpwi r30, 0x10
/* 813B2590 | 41 80 FF C0 */	blt .L_813B2550
.L_813B2594:
/* 813B2594 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813B2598 | 41 82 00 B0 */	beq .L_813B2648
/* 813B259C | 38 7B 00 08 */	addi r3, r27, 0x8
/* 813B25A0 | 4B FB 78 95 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B25A4 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 813B25A8 | 48 00 00 20 */	b .L_813B25C8
.L_813B25AC:
/* 813B25AC | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 813B25B0 | 38 80 00 00 */	li r4, 0x0
/* 813B25B4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813B25B8 | 4B F9 1E 5D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B25BC | 38 61 00 30 */	addi r3, r1, 0x30
/* 813B25C0 | 38 80 00 00 */	li r4, 0x0
/* 813B25C4 | 48 00 02 11 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813B25C8:
/* 813B25C8 | 80 61 00 34 */	lwz r3, 0x34(r1)
/* 813B25CC | 38 63 00 08 */	addi r3, r3, 0x8
/* 813B25D0 | 4B FB 78 6D */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B25D4 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 813B25D8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813B25DC | 90 61 00 20 */	stw r3, 0x20(r1)
/* 813B25E0 | 38 61 00 24 */	addi r3, r1, 0x24
/* 813B25E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B25E8 | 4B FB 78 5D */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813B25EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B25F0 | 40 82 FF BC */	bne .L_813B25AC
/* 813B25F4 | 83 41 00 34 */	lwz r26, 0x34(r1)
/* 813B25F8 | 3B 60 00 00 */	li r27, 0x0
/* 813B25FC | 3B C0 00 00 */	li r30, 0x0
.L_813B2600:
/* 813B2600 | 7C 9C F0 2E */	lwzx r4, r28, r30
/* 813B2604 | 38 7A 00 14 */	addi r3, r26, 0x14
/* 813B2608 | 38 A0 00 03 */	li r5, 0x3
/* 813B260C | 48 24 FF 91 */	bl strncmp
/* 813B2610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2614 | 40 82 00 24 */	bne .L_813B2638
/* 813B2618 | 3B 61 00 40 */	addi r27, r1, 0x40
/* 813B261C | 38 9A 00 14 */	addi r4, r26, 0x14
/* 813B2620 | 7F 7B F2 14 */	add r27, r27, r30
/* 813B2624 | 38 A0 00 03 */	li r5, 0x3
/* 813B2628 | 7F 63 DB 78 */	mr r3, r27
/* 813B262C | 4B F7 DC 05 */	bl memcpy
/* 813B2630 | 9B BB 00 03 */	stb r29, 0x3(r27)
/* 813B2634 | 48 00 00 14 */	b .L_813B2648
.L_813B2638:
/* 813B2638 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813B263C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813B2640 | 2C 1B 00 0A */	cmpwi r27, 0xa
/* 813B2644 | 41 80 FF BC */	blt .L_813B2600
.L_813B2648:
/* 813B2648 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813B264C | 38 80 00 00 */	li r4, 0x0
/* 813B2650 | 48 00 01 99 */	bl "__pp__Q44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8IteratorFi"
.L_813B2654:
/* 813B2654 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 813B2658 | 48 00 01 A5 */	bl "GetEndIter__Q34nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>Fv"
/* 813B265C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813B2660 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813B2664 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813B2668 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813B266C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813B2670 | 48 00 01 95 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8IteratorQ44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8Iterator"
/* 813B2674 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2678 | 40 82 FE B0 */	bne .L_813B2528
/* 813B267C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 813B2680 | 41 82 00 6C */	beq .L_813B26EC
/* 813B2684 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 813B2688 | 7F 24 CB 78 */	mr r4, r25
/* 813B268C | 48 16 D7 B1 */	bl fn_8151FE3C
/* 813B2690 | 7C 7E 1B 78 */	mr r30, r3
/* 813B2694 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813B2698 | 4B FB 77 9D */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B269C | 90 61 00 2C */	stw r3, 0x2c(r1)
/* 813B26A0 | 48 00 00 20 */	b .L_813B26C0
.L_813B26A4:
/* 813B26A4 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 813B26A8 | 38 80 00 01 */	li r4, 0x1
/* 813B26AC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813B26B0 | 4B F9 1D 65 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B26B4 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813B26B8 | 38 80 00 00 */	li r4, 0x0
/* 813B26BC | 48 00 01 19 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813B26C0:
/* 813B26C0 | 38 7E 00 0C */	addi r3, r30, 0xc
/* 813B26C4 | 4B FB 77 79 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B26C8 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 813B26CC | 38 81 00 10 */	addi r4, r1, 0x10
/* 813B26D0 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813B26D4 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813B26D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B26DC | 4B FB 77 69 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813B26E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B26E4 | 40 82 FF C0 */	bne .L_813B26A4
/* 813B26E8 | 48 00 00 CC */	b .L_813B27B4
.L_813B26EC:
/* 813B26EC | 4B F8 33 A1 */	bl getRegion__Q23ipl6SystemFv
/* 813B26F0 | 3C A0 81 65 */	lis r5, lbl_8164E328@ha
/* 813B26F4 | 3C 80 81 61 */	lis r4, lbl_8160FFD0@ha
/* 813B26F8 | 54 60 30 32 */	slwi r0, r3, 6
/* 813B26FC | 3B 00 00 00 */	li r24, 0x0
/* 813B2700 | 38 A5 E3 28 */	addi r5, r5, lbl_8164E328@l
/* 813B2704 | 38 84 FF D0 */	addi r4, r4, lbl_8160FFD0@l
/* 813B2708 | 7F 65 02 14 */	add r27, r5, r0
/* 813B270C | 3B C0 00 00 */	li r30, 0x0
/* 813B2710 | 7F 84 02 14 */	add r28, r4, r0
.L_813B2714:
/* 813B2714 | 7C 7B F0 2E */	lwzx r3, r27, r30
/* 813B2718 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B271C | 41 82 00 98 */	beq .L_813B27B4
/* 813B2720 | 7C 1C F0 2E */	lwzx r0, r28, r30
/* 813B2724 | 38 81 00 40 */	addi r4, r1, 0x40
/* 813B2728 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B272C | 7C 84 02 14 */	add r4, r4, r0
/* 813B2730 | 48 24 FD 51 */	bl strcmp
/* 813B2734 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2738 | 40 82 00 6C */	bne .L_813B27A4
/* 813B273C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 813B2740 | 7C 9B F0 2E */	lwzx r4, r27, r30
/* 813B2744 | 48 16 D6 F9 */	bl fn_8151FE3C
/* 813B2748 | 7C 7E 1B 78 */	mr r30, r3
/* 813B274C | 38 63 00 0C */	addi r3, r3, 0xc
/* 813B2750 | 4B FB 76 E5 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B2754 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 813B2758 | 48 00 00 20 */	b .L_813B2778
.L_813B275C:
/* 813B275C | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 813B2760 | 38 80 00 01 */	li r4, 0x1
/* 813B2764 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813B2768 | 4B F9 1C AD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B276C | 38 61 00 28 */	addi r3, r1, 0x28
/* 813B2770 | 38 80 00 00 */	li r4, 0x0
/* 813B2774 | 48 00 00 61 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813B2778:
/* 813B2778 | 38 7E 00 0C */	addi r3, r30, 0xc
/* 813B277C | 4B FB 76 C1 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B2780 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813B2784 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B2788 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813B278C | 38 61 00 0C */	addi r3, r1, 0xc
/* 813B2790 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813B2794 | 4B FB 76 B1 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813B2798 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B279C | 40 82 FF C0 */	bne .L_813B275C
/* 813B27A0 | 48 00 00 14 */	b .L_813B27B4
.L_813B27A4:
/* 813B27A4 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 813B27A8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813B27AC | 2C 18 00 10 */	cmpwi r24, 0x10
/* 813B27B0 | 41 80 FF 64 */	blt .L_813B2714
.L_813B27B4:
/* 813B27B4 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813B27B8 | 48 24 6D 49 */	bl _restgpr_24
/* 813B27BC | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813B27C0 | 7C 08 03 A6 */	mtlr r0
/* 813B27C4 | 38 21 00 90 */	addi r1, r1, 0x90
/* 813B27C8 | 4E 80 00 20 */	blr
.endfn setLangPane__Q33ipl5scene10ChannelObjFPCQ33ipl6layout6Object

# .text:0x1248 | 0x813B27CC | size: 0x8
# nw4r::ut::LinkList<nw4r::lyt::Group, 4>::GetBeginIter()
.fn "GetBeginIter__Q34nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>Fv", global
/* 813B27CC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813B27D0 | 4E 80 00 20 */	blr
.endfn "GetBeginIter__Q34nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>Fv"

# .text:0x1250 | 0x813B27D4 | size: 0x14
# nw4r::ut::LinkList<nw4r::lyt::detail::PaneLink, 0>::Iterator::operator++(int)
.fn "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi", global
/* 813B27D4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 813B27D8 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813B27DC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813B27E0 | 7C 83 23 78 */	mr r3, r4
/* 813B27E4 | 4E 80 00 20 */	blr
.endfn "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"

# .text:0x1264 | 0x813B27E8 | size: 0x14
# nw4r::ut::LinkList<nw4r::lyt::Group, 4>::Iterator::operator++(int)
.fn "__pp__Q44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8IteratorFi", global
/* 813B27E8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 813B27EC | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813B27F0 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813B27F4 | 7C 83 23 78 */	mr r3, r4
/* 813B27F8 | 4E 80 00 20 */	blr
.endfn "__pp__Q44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8IteratorFi"

# .text:0x1278 | 0x813B27FC | size: 0x8
# nw4r::ut::LinkList<nw4r::lyt::Group, 4>::GetEndIter()
.fn "GetEndIter__Q34nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>Fv", global
/* 813B27FC | 38 63 00 04 */	addi r3, r3, 0x4
/* 813B2800 | 4E 80 00 20 */	blr
.endfn "GetEndIter__Q34nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>Fv"

# .text:0x1280 | 0x813B2804 | size: 0x18
# nw4r::ut::operator!=(nw4r::ut::LinkList<nw4r::lyt::Group, 4>::Iterator, nw4r::ut::LinkList<nw4r::lyt::Group, 4>::Iterator)
.fn "__ne__Q24nw4r2utFQ44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8IteratorQ44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8Iterator", global
/* 813B2804 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813B2808 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813B280C | 7C 60 20 50 */	subf r3, r0, r4
/* 813B2810 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813B2814 | 7C 60 19 10 */	subfe r3, r0, r3
/* 813B2818 | 4E 80 00 20 */	blr
.endfn "__ne__Q24nw4r2utFQ44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8IteratorQ44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8Iterator"

# .text:0x1298 | 0x813B281C | size: 0x134
# ipl::scene::ChannelObj::bindRsoAnm(ipl::layout::Object*, ipl::layout::Animator**, const char*)
.fn bindRsoAnm__Q33ipl5scene10ChannelObjFPQ33ipl6layout6ObjectPPQ33ipl6layout8AnimatorPCc, global
/* 813B281C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813B2820 | 7C 08 02 A6 */	mflr r0
/* 813B2824 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813B2828 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813B282C | 48 24 6C 8D */	bl _savegpr_25
/* 813B2830 | 7C 79 1B 78 */	mr r25, r3
/* 813B2834 | 7C 9A 23 78 */	mr r26, r4
/* 813B2838 | 7C BB 2B 78 */	mr r27, r5
/* 813B283C | 3B A0 00 00 */	li r29, 0x0
/* 813B2840 | 3B E0 00 00 */	li r31, 0x0
/* 813B2844 | 3F C0 81 65 */	lis r30, lbl_8164E6AF@ha
.L_813B2848:
/* 813B2848 | 7F 65 DB 78 */	mr r5, r27
/* 813B284C | 7F A6 EB 78 */	mr r6, r29
/* 813B2850 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813B2854 | 38 9E E6 AF */	addi r4, r30, lbl_8164E6AF@l
/* 813B2858 | 4C C6 31 82 */	crclr cr1eq
/* 813B285C | 48 24 E2 25 */	bl sprintf
/* 813B2860 | 7F 23 CB 78 */	mr r3, r25
/* 813B2864 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 813B2868 | 4B FB 7E 5D */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813B286C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2870 | 41 82 00 B8 */	beq .L_813B2928
/* 813B2874 | 7F A5 EB 78 */	mr r5, r29
/* 813B2878 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813B287C | 38 8D 89 AC */	li r4, lbl_816969EC@sda21
/* 813B2880 | 4C C6 31 82 */	crclr cr1eq
/* 813B2884 | 48 24 E1 FD */	bl sprintf
/* 813B2888 | 80 79 00 18 */	lwz r3, 0x18(r25)
/* 813B288C | 3B 80 00 00 */	li r28, 0x0
/* 813B2890 | 4B FF FF 3D */	bl "GetBeginIter__Q34nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>Fv"
/* 813B2894 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813B2898 | 48 00 00 4C */	b .L_813B28E4
.L_813B289C:
/* 813B289C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813B28A0 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813B28A4 | 38 63 00 14 */	addi r3, r3, 0x14
/* 813B28A8 | 48 24 FB D9 */	bl strcmp
/* 813B28AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B28B0 | 40 82 00 28 */	bne .L_813B28D8
/* 813B28B4 | 7F 23 CB 78 */	mr r3, r25
/* 813B28B8 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 813B28BC | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813B28C0 | 38 C0 00 00 */	li r6, 0x0
/* 813B28C4 | 38 E0 00 00 */	li r7, 0x0
/* 813B28C8 | 4B FB 7C 19 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B28CC | 7C 7A F9 2E */	stwx r3, r26, r31
/* 813B28D0 | 3B 80 00 01 */	li r28, 0x1
/* 813B28D4 | 48 00 00 38 */	b .L_813B290C
.L_813B28D8:
/* 813B28D8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813B28DC | 38 80 00 00 */	li r4, 0x0
/* 813B28E0 | 4B FF FF 09 */	bl "__pp__Q44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8IteratorFi"
.L_813B28E4:
/* 813B28E4 | 80 79 00 18 */	lwz r3, 0x18(r25)
/* 813B28E8 | 4B FF FF 15 */	bl "GetEndIter__Q34nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>Fv"
/* 813B28EC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813B28F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B28F4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813B28F8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813B28FC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813B2900 | 4B FF FF 05 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8IteratorQ44nw4r2ut29LinkList<Q34nw4r3lyt5Group,4>8Iterator"
/* 813B2904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2908 | 40 82 FF 94 */	bne .L_813B289C
.L_813B290C:
/* 813B290C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813B2910 | 40 82 00 18 */	bne .L_813B2928
/* 813B2914 | 7F 23 CB 78 */	mr r3, r25
/* 813B2918 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 813B291C | 38 A0 00 00 */	li r5, 0x0
/* 813B2920 | 4B FB 7A 4D */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B2924 | 7C 7A F9 2E */	stwx r3, r26, r31
.L_813B2928:
/* 813B2928 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813B292C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813B2930 | 2C 1D 00 10 */	cmpwi r29, 0x10
/* 813B2934 | 41 80 FF 14 */	blt .L_813B2848
/* 813B2938 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813B293C | 48 24 6B C9 */	bl _restgpr_25
/* 813B2940 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813B2944 | 7C 08 03 A6 */	mtlr r0
/* 813B2948 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813B294C | 4E 80 00 20 */	blr
.endfn bindRsoAnm__Q33ipl5scene10ChannelObjFPQ33ipl6layout6ObjectPPQ33ipl6layout8AnimatorPCc

# .text:0x13CC | 0x813B2950 | size: 0x7C
# ipl::scene::ChannelObj::loadThumbnailAsync()
.fn loadThumbnailAsync__Q33ipl5scene10ChannelObjFv, global
/* 813B2950 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B2954 | 7C 08 02 A6 */	mflr r0
/* 813B2958 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B295C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B2960 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B2964 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B2968 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B296C | 7C 7E 1B 78 */	mr r30, r3
/* 813B2970 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 813B2974 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813B2978 | 80 BE 00 20 */	lwz r5, 0x20(r30)
/* 813B297C | 4B F8 54 C5 */	bl isLoaded__Q33ipl7channel7ManagerCFii
/* 813B2980 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2984 | 40 82 00 0C */	bne .L_813B2990
/* 813B2988 | 38 60 00 00 */	li r3, 0x0
/* 813B298C | 48 00 00 28 */	b .L_813B29B4
.L_813B2990:
/* 813B2990 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813B2994 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 813B2998 | 80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 813B299C | 80 DE 00 20 */	lwz r6, 0x20(r30)
/* 813B29A0 | 4B F8 58 41 */	bl loadThumbnailAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii
/* 813B29A4 | 7C 60 00 34 */	cntlzw r0, r3
/* 813B29A8 | 90 7E 00 2C */	stw r3, 0x2c(r30)
/* 813B29AC | 54 03 D9 7E */	srwi r3, r0, 5
/* 813B29B0 | 38 63 00 01 */	addi r3, r3, 0x1
.L_813B29B4:
/* 813B29B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B29B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B29BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B29C0 | 7C 08 03 A6 */	mtlr r0
/* 813B29C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B29C8 | 4E 80 00 20 */	blr
.endfn loadThumbnailAsync__Q33ipl5scene10ChannelObjFv

# .text:0x1448 | 0x813B29CC | size: 0x14C
# ipl::scene::ChannelObj::createThumbnail()
.fn createThumbnail__Q33ipl5scene10ChannelObjFv, global
/* 813B29CC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813B29D0 | 7C 08 02 A6 */	mflr r0
/* 813B29D4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813B29D8 | DB E1 00 20 */	stfd f31, 0x20(r1)
/* 813B29DC | F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 813B29E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B29E4 | 48 24 6A E5 */	bl _savegpr_29
/* 813B29E8 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 813B29EC | 7C 7D 1B 78 */	mr r29, r3
/* 813B29F0 | 3B C0 00 00 */	li r30, 0x0
/* 813B29F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B29F8 | 40 82 00 2C */	bne .L_813B2A24
/* 813B29FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B2A00 | 80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 813B2A04 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B2A08 | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 813B2A0C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B2A10 | 4B F8 54 31 */	bl isLoaded__Q33ipl7channel7ManagerCFii
/* 813B2A14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2A18 | 41 82 00 0C */	beq .L_813B2A24
/* 813B2A1C | 7F A3 EB 78 */	mr r3, r29
/* 813B2A20 | 48 00 09 99 */	bl initBalloon__Q33ipl5scene10ChannelObjFv
.L_813B2A24:
/* 813B2A24 | 7F A3 EB 78 */	mr r3, r29
/* 813B2A28 | 4B FF F8 29 */	bl isValid__Q33ipl5scene10ChannelObjCFv
/* 813B2A2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2A30 | 41 82 00 6C */	beq .L_813B2A9C
/* 813B2A34 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B2A38 | 80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 813B2A3C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B2A40 | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 813B2A44 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B2A48 | 4B FF F7 DD */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B2A4C | 2C 03 00 0F */	cmpwi r3, 0xf
/* 813B2A50 | 40 82 00 0C */	bne .L_813B2A5C
/* 813B2A54 | C3 E2 85 AC */	lfs f31, lbl_816949AC@sda21(r0)
/* 813B2A58 | 48 00 00 54 */	b .L_813B2AAC
.L_813B2A5C:
/* 813B2A5C | 80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 813B2A60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B2A64 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B2A68 | 7D 89 03 A6 */	mtctr r12
/* 813B2A6C | 4E 80 04 21 */	bctrl
/* 813B2A70 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B2A74 | 40 82 00 14 */	bne .L_813B2A88
/* 813B2A78 | 7F A3 EB 78 */	mr r3, r29
/* 813B2A7C | 48 00 00 9D */	bl createWadThumbnail__Q33ipl5scene10ChannelObjFv
/* 813B2A80 | FF E0 08 90 */	fmr f31, f1
/* 813B2A84 | 48 00 00 28 */	b .L_813B2AAC
.L_813B2A88:
/* 813B2A88 | 7F A3 EB 78 */	mr r3, r29
/* 813B2A8C | 48 00 03 15 */	bl createWrongThumbnail__Q33ipl5scene10ChannelObjFv
/* 813B2A90 | FF E0 08 90 */	fmr f31, f1
/* 813B2A94 | 3B C0 00 01 */	li r30, 0x1
/* 813B2A98 | 48 00 00 14 */	b .L_813B2AAC
.L_813B2A9C:
/* 813B2A9C | 7F A3 EB 78 */	mr r3, r29
/* 813B2AA0 | 48 00 03 ED */	bl createEmptyThumbnail__Q33ipl5scene10ChannelObjFv
/* 813B2AA4 | 3B C0 00 01 */	li r30, 0x1
/* 813B2AA8 | FF E0 08 90 */	fmr f31, f1
.L_813B2AAC:
/* 813B2AAC | 7F A3 EB 78 */	mr r3, r29
/* 813B2AB0 | 48 00 04 75 */	bl calcNormal__Q33ipl5scene10ChannelObjFv
/* 813B2AB4 | 83 FD 00 34 */	lwz r31, 0x34(r29)
/* 813B2AB8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B2ABC | 41 82 00 14 */	beq .L_813B2AD0
/* 813B2AC0 | 7F E3 FB 78 */	mr r3, r31
/* 813B2AC4 | 4B FA FD AD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B2AC8 | 38 00 00 01 */	li r0, 0x1
/* 813B2ACC | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813B2AD0:
/* 813B2AD0 | 80 7D 00 30 */	lwz r3, 0x30(r29)
/* 813B2AD4 | 4B FB 7B 61 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813B2AD8 | 80 7D 00 34 */	lwz r3, 0x34(r29)
/* 813B2ADC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2AE0 | 41 82 00 08 */	beq .L_813B2AE8
/* 813B2AE4 | D3 E3 00 0C */	stfs f31, 0xc(r3)
.L_813B2AE8:
/* 813B2AE8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B2AEC | 41 82 00 0C */	beq .L_813B2AF8
/* 813B2AF0 | 80 7D 00 30 */	lwz r3, 0x30(r29)
/* 813B2AF4 | 4B FB 82 F9 */	bl adjustHeap__Q33ipl6layout6ObjectFv
.L_813B2AF8:
/* 813B2AF8 | E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 813B2AFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B2B00 | CB E1 00 20 */	lfd f31, 0x20(r1)
/* 813B2B04 | 48 24 6A 11 */	bl _restgpr_29
/* 813B2B08 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813B2B0C | 7C 08 03 A6 */	mtlr r0
/* 813B2B10 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813B2B14 | 4E 80 00 20 */	blr
.endfn createThumbnail__Q33ipl5scene10ChannelObjFv

# .text:0x1594 | 0x813B2B18 | size: 0x288
# ipl::scene::ChannelObj::createWadThumbnail()
.fn createWadThumbnail__Q33ipl5scene10ChannelObjFv, global
/* 813B2B18 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813B2B1C | 7C 08 02 A6 */	mflr r0
/* 813B2B20 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813B2B24 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813B2B28 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813B2B2C | DB C1 00 30 */	stfd f30, 0x30(r1)
/* 813B2B30 | F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 813B2B34 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B2B38 | 48 24 69 8D */	bl _savegpr_28
/* 813B2B3C | 80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 813B2B40 | 3F A0 81 65 */	lis r29, lbl_8164E290@ha
/* 813B2B44 | 7C 7E 1B 78 */	mr r30, r3
/* 813B2B48 | 3C 80 00 01 */	lis r4, 0x1
/* 813B2B4C | 3B BD E2 90 */	addi r29, r29, lbl_8164E290@l
/* 813B2B50 | C3 C2 85 AC */	lfs f30, lbl_816949AC@sda21(r0)
/* 813B2B54 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813B2B58 | 38 84 80 00 */	addi r4, r4, -0x8000
/* 813B2B5C | 80 A5 00 A0 */	lwz r5, 0xa0(r5)
/* 813B2B60 | 38 FD 03 F8 */	addi r7, r29, 0x3f8
/* 813B2B64 | 38 CD 89 A8 */	li r6, lbl_816969E8@sda21
/* 813B2B68 | 4B FB 83 29 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc
/* 813B2B6C | 90 7E 00 30 */	stw r3, 0x30(r30)
/* 813B2B70 | 4B FF F9 51 */	bl setLangPane__Q33ipl5scene10ChannelObjFPCQ33ipl6layout6Object
/* 813B2B74 | 80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 813B2B78 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B2B7C | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 813B2B80 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B2B84 | 1C C4 05 40 */	mulli r6, r4, 0x540
/* 813B2B88 | 80 83 00 84 */	lwz r4, 0x84(r3)
/* 813B2B8C | 1C A0 00 70 */	mulli r5, r0, 0x70
/* 813B2B90 | 7C 04 32 14 */	add r0, r4, r6
/* 813B2B94 | 7C 60 2A 14 */	add r3, r0, r5
/* 813B2B98 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 813B2B9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B2BA0 | 41 82 00 14 */	beq .L_813B2BB4
/* 813B2BA4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813B2BA8 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B2BAC | 54 1F 27 3E */	srwi r31, r0, 28
/* 813B2BB0 | 48 00 00 08 */	b .L_813B2BB8
.L_813B2BB4:
/* 813B2BB4 | 3B E0 00 00 */	li r31, 0x0
.L_813B2BB8:
/* 813B2BB8 | 7C 04 32 14 */	add r0, r4, r6
/* 813B2BBC | 7C 60 2A 14 */	add r3, r0, r5
/* 813B2BC0 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 813B2BC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B2BC8 | 41 82 00 14 */	beq .L_813B2BDC
/* 813B2BCC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813B2BD0 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B2BD4 | 54 1C 67 3E */	extrwi r28, r0, 4, 8
/* 813B2BD8 | 48 00 00 08 */	b .L_813B2BE0
.L_813B2BDC:
/* 813B2BDC | 3B 80 00 00 */	li r28, 0x0
.L_813B2BE0:
/* 813B2BE0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B2BE4 | 41 82 00 3C */	beq .L_813B2C20
/* 813B2BE8 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B2BEC | 38 9D 04 2E */	addi r4, r29, 0x42e
/* 813B2BF0 | 4B FB 7A D5 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813B2BF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2BF8 | 41 82 00 1C */	beq .L_813B2C14
/* 813B2BFC | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B2C00 | 38 9D 04 2E */	addi r4, r29, 0x42e
/* 813B2C04 | 38 A0 00 01 */	li r5, 0x1
/* 813B2C08 | 4B FB 77 65 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B2C0C | 90 7E 00 34 */	stw r3, 0x34(r30)
/* 813B2C10 | 48 00 00 B0 */	b .L_813B2CC0
.L_813B2C14:
/* 813B2C14 | 38 00 00 00 */	li r0, 0x0
/* 813B2C18 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813B2C1C | 48 00 00 A4 */	b .L_813B2CC0
.L_813B2C20:
/* 813B2C20 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813B2C24 | 41 82 00 3C */	beq .L_813B2C60
/* 813B2C28 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B2C2C | 38 9D 04 2E */	addi r4, r29, 0x42e
/* 813B2C30 | 4B FB 7A 95 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813B2C34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2C38 | 41 82 00 1C */	beq .L_813B2C54
/* 813B2C3C | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B2C40 | 38 9D 04 2E */	addi r4, r29, 0x42e
/* 813B2C44 | 38 A0 00 01 */	li r5, 0x1
/* 813B2C48 | 4B FB 77 25 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B2C4C | 90 7E 00 34 */	stw r3, 0x34(r30)
/* 813B2C50 | 48 00 00 70 */	b .L_813B2CC0
.L_813B2C54:
/* 813B2C54 | 38 00 00 00 */	li r0, 0x0
/* 813B2C58 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813B2C5C | 48 00 00 64 */	b .L_813B2CC0
.L_813B2C60:
/* 813B2C60 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B2C64 | 38 9D 04 03 */	addi r4, r29, 0x403
/* 813B2C68 | 4B FB 7A 5D */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813B2C6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2C70 | 41 82 00 1C */	beq .L_813B2C8C
/* 813B2C74 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B2C78 | 38 9D 04 03 */	addi r4, r29, 0x403
/* 813B2C7C | 38 A0 00 01 */	li r5, 0x1
/* 813B2C80 | 4B FB 76 ED */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B2C84 | 90 7E 00 34 */	stw r3, 0x34(r30)
/* 813B2C88 | 48 00 00 38 */	b .L_813B2CC0
.L_813B2C8C:
/* 813B2C8C | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B2C90 | 38 9D 04 0E */	addi r4, r29, 0x40e
/* 813B2C94 | 4B FB 7A 31 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813B2C98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2C9C | 41 82 00 1C */	beq .L_813B2CB8
/* 813B2CA0 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B2CA4 | 38 9D 04 0E */	addi r4, r29, 0x40e
/* 813B2CA8 | 38 A0 00 01 */	li r5, 0x1
/* 813B2CAC | 4B FB 76 C1 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B2CB0 | 90 7E 00 34 */	stw r3, 0x34(r30)
/* 813B2CB4 | 48 00 00 0C */	b .L_813B2CC0
.L_813B2CB8:
/* 813B2CB8 | 38 00 00 00 */	li r0, 0x0
/* 813B2CBC | 90 1E 00 34 */	stw r0, 0x34(r30)
.L_813B2CC0:
/* 813B2CC0 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 813B2CC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2CC8 | 41 82 00 70 */	beq .L_813B2D38
/* 813B2CCC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B2CD0 | 40 82 00 0C */	bne .L_813B2CDC
/* 813B2CD4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813B2CD8 | 41 82 00 0C */	beq .L_813B2CE4
.L_813B2CDC:
/* 813B2CDC | C3 C3 00 08 */	lfs f30, 0x8(r3)
/* 813B2CE0 | 48 00 00 58 */	b .L_813B2D38
.L_813B2CE4:
/* 813B2CE4 | C3 E3 00 08 */	lfs f31, 0x8(r3)
/* 813B2CE8 | C3 C3 00 04 */	lfs f30, 0x4(r3)
/* 813B2CEC | 4B F8 2C F1 */	bl getRndm__Q23ipl6SystemFv
/* 813B2CF0 | 4B FF C1 21 */	bl get_u16__Q33ipl4math6RandomFv
/* 813B2CF4 | EC 1E F8 28 */	fsubs f0, f30, f31
/* 813B2CF8 | 3C 00 43 30 */	lis r0, 0x4330
/* 813B2CFC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813B2D00 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 813B2D04 | C8 22 85 B0 */	lfd f1, lbl_816949B0@sda21(r0)
/* 813B2D08 | FC 00 00 1E */	fctiwz f0, f0
/* 813B2D0C | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 813B2D10 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813B2D14 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 813B2D18 | 7C 04 1B D6 */	divw r0, r4, r3
/* 813B2D1C | 7C 00 19 D6 */	mullw r0, r0, r3
/* 813B2D20 | 7C 00 20 50 */	subf r0, r0, r4
/* 813B2D24 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813B2D28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B2D2C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 813B2D30 | EC 00 08 28 */	fsubs f0, f0, f1
/* 813B2D34 | EF DF 00 2A */	fadds f30, f31, f0
.L_813B2D38:
/* 813B2D38 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B2D3C | 40 82 00 0C */	bne .L_813B2D48
/* 813B2D40 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813B2D44 | 41 82 00 1C */	beq .L_813B2D60
.L_813B2D48:
/* 813B2D48 | 38 00 00 01 */	li r0, 0x1
/* 813B2D4C | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813B2D50 | 90 1E 00 EC */	stw r0, 0xec(r30)
/* 813B2D54 | 38 9E 00 A4 */	addi r4, r30, 0xa4
/* 813B2D58 | 38 AD 89 B2 */	li r5, lbl_816969F2@sda21
/* 813B2D5C | 4B FF FA C1 */	bl bindRsoAnm__Q33ipl5scene10ChannelObjFPQ33ipl6layout6ObjectPPQ33ipl6layout8AnimatorPCc
.L_813B2D60:
/* 813B2D60 | 80 9E 00 30 */	lwz r4, 0x30(r30)
/* 813B2D64 | 7F C3 F3 78 */	mr r3, r30
/* 813B2D68 | 48 00 0E BD */	bl bindNewAnm__Q33ipl5scene10ChannelObjFPQ33ipl6layout6Object
/* 813B2D6C | 38 00 00 01 */	li r0, 0x1
/* 813B2D70 | FC 20 F0 90 */	fmr f1, f30
/* 813B2D74 | 90 1E 00 84 */	stw r0, 0x84(r30)
/* 813B2D78 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813B2D7C | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813B2D80 | E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 813B2D84 | CB C1 00 30 */	lfd f30, 0x30(r1)
/* 813B2D88 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B2D8C | 48 24 67 85 */	bl _restgpr_28
/* 813B2D90 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813B2D94 | 7C 08 03 A6 */	mtlr r0
/* 813B2D98 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813B2D9C | 4E 80 00 20 */	blr
.endfn createWadThumbnail__Q33ipl5scene10ChannelObjFv

# .text:0x181C | 0x813B2DA0 | size: 0xEC
# ipl::scene::ChannelObj::createWrongThumbnail()
.fn createWrongThumbnail__Q33ipl5scene10ChannelObjFv, global
/* 813B2DA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B2DA4 | 7C 08 02 A6 */	mflr r0
/* 813B2DA8 | 3C 80 00 01 */	lis r4, 0x1
/* 813B2DAC | 3C E0 81 65 */	lis r7, lbl_8164E6CF@ha
/* 813B2DB0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B2DB4 | 38 84 80 00 */	addi r4, r4, -0x8000
/* 813B2DB8 | 38 E7 E6 CF */	addi r7, r7, lbl_8164E6CF@l
/* 813B2DBC | 38 CD 89 A8 */	li r6, lbl_816969E8@sda21
/* 813B2DC0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813B2DC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B2DC8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813B2DCC | 80 BF 00 24 */	lwz r5, 0x24(r31)
/* 813B2DD0 | 4B FB 80 45 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc
/* 813B2DD4 | 90 7F 00 30 */	stw r3, 0x30(r31)
/* 813B2DD8 | 38 8D 89 B7 */	li r4, lbl_816969F7@sda21
/* 813B2DDC | 38 A0 00 01 */	li r5, 0x1
/* 813B2DE0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B2DE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B2DE8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B2DEC | 7D 89 03 A6 */	mtctr r12
/* 813B2DF0 | 4E 80 04 21 */	bctrl
/* 813B2DF4 | 38 80 00 00 */	li r4, 0x0
/* 813B2DF8 | 4B F9 16 1D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B2DFC | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 813B2E00 | 38 8D 89 BB */	li r4, lbl_816969FB@sda21
/* 813B2E04 | A1 02 85 B8 */	lhz r8, lbl_816949B8@sda21(r0)
/* 813B2E08 | 38 A0 00 01 */	li r5, 0x1
/* 813B2E0C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B2E10 | A0 E2 85 BA */	lhz r7, lbl_816949BA@sda21(r0)
/* 813B2E14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B2E18 | A0 C2 85 BC */	lhz r6, lbl_816949BC@sda21(r0)
/* 813B2E1C | A0 02 85 BE */	lhz r0, lbl_816949BE@sda21(r0)
/* 813B2E20 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B2E24 | B1 01 00 08 */	sth r8, 0x8(r1)
/* 813B2E28 | B0 E1 00 0A */	sth r7, 0xa(r1)
/* 813B2E2C | B0 C1 00 0C */	sth r6, 0xc(r1)
/* 813B2E30 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 813B2E34 | 7D 89 03 A6 */	mtctr r12
/* 813B2E38 | 4E 80 04 21 */	bctrl
/* 813B2E3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B2E40 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813B2E44 | 7D 89 03 A6 */	mtctr r12
/* 813B2E48 | 4E 80 04 21 */	bctrl
/* 813B2E4C | A8 A1 00 08 */	lha r5, 0x8(r1)
/* 813B2E50 | 38 00 00 00 */	li r0, 0x0
/* 813B2E54 | A8 81 00 0A */	lha r4, 0xa(r1)
/* 813B2E58 | B0 A3 00 24 */	sth r5, 0x24(r3)
/* 813B2E5C | A8 A1 00 0C */	lha r5, 0xc(r1)
/* 813B2E60 | B0 83 00 26 */	sth r4, 0x26(r3)
/* 813B2E64 | A8 81 00 0E */	lha r4, 0xe(r1)
/* 813B2E68 | B0 A3 00 28 */	sth r5, 0x28(r3)
/* 813B2E6C | C0 22 85 AC */	lfs f1, lbl_816949AC@sda21(r0)
/* 813B2E70 | B0 83 00 2A */	sth r4, 0x2a(r3)
/* 813B2E74 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813B2E78 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813B2E7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B2E80 | 7C 08 03 A6 */	mtlr r0
/* 813B2E84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B2E88 | 4E 80 00 20 */	blr
.endfn createWrongThumbnail__Q33ipl5scene10ChannelObjFv

# .text:0x1908 | 0x813B2E8C | size: 0x98
# ipl::scene::ChannelObj::createEmptyThumbnail()
.fn createEmptyThumbnail__Q33ipl5scene10ChannelObjFv, global
/* 813B2E8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B2E90 | 7C 08 02 A6 */	mflr r0
/* 813B2E94 | 3C 80 00 01 */	lis r4, 0x1
/* 813B2E98 | 3C E0 81 65 */	lis r7, lbl_8164E6CF@ha
/* 813B2E9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B2EA0 | 38 84 80 00 */	addi r4, r4, -0x8000
/* 813B2EA4 | 38 E7 E6 CF */	addi r7, r7, lbl_8164E6CF@l
/* 813B2EA8 | 38 CD 89 A8 */	li r6, lbl_816969E8@sda21
/* 813B2EAC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813B2EB0 | 7C 7F 1B 78 */	mr r31, r3
/* 813B2EB4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813B2EB8 | 80 BF 00 24 */	lwz r5, 0x24(r31)
/* 813B2EBC | 4B FB 7F 59 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc
/* 813B2EC0 | 3C 80 81 65 */	lis r4, lbl_8164E6E1@ha
/* 813B2EC4 | 90 7F 00 30 */	stw r3, 0x30(r31)
/* 813B2EC8 | 38 84 E6 E1 */	addi r4, r4, lbl_8164E6E1@l
/* 813B2ECC | 38 A0 00 01 */	li r5, 0x1
/* 813B2ED0 | 4B FB 74 9D */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B2ED4 | 90 7F 00 34 */	stw r3, 0x34(r31)
/* 813B2ED8 | 4B F8 2B 05 */	bl getRndm__Q23ipl6SystemFv
/* 813B2EDC | 4B FF BF 35 */	bl get_u16__Q33ipl4math6RandomFv
/* 813B2EE0 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 813B2EE4 | 38 80 07 D0 */	li r4, 0x7d0
/* 813B2EE8 | 7C 65 23 D6 */	divw r3, r5, r4
/* 813B2EEC | 3C 00 43 30 */	lis r0, 0x4330
/* 813B2EF0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813B2EF4 | C8 22 85 B0 */	lfd f1, lbl_816949B0@sda21(r0)
/* 813B2EF8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813B2EFC | 7C 03 21 D6 */	mullw r0, r3, r4
/* 813B2F00 | 7C 00 28 50 */	subf r0, r0, r5
/* 813B2F04 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813B2F08 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813B2F0C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B2F10 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813B2F14 | EC 20 08 28 */	fsubs f1, f0, f1
/* 813B2F18 | 7C 08 03 A6 */	mtlr r0
/* 813B2F1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B2F20 | 4E 80 00 20 */	blr
.endfn createEmptyThumbnail__Q33ipl5scene10ChannelObjFv

# .text:0x19A0 | 0x813B2F24 | size: 0xC0
# ipl::scene::ChannelObj::calcNormal()
.fn calcNormal__Q33ipl5scene10ChannelObjFv, global
/* 813B2F24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B2F28 | 7C 08 02 A6 */	mflr r0
/* 813B2F2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B2F30 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813B2F34 | 7C 7F 1B 78 */	mr r31, r3
/* 813B2F38 | 4B FF F2 8D */	bl isDiskChannel__Q33ipl5scene10ChannelObjCFv
/* 813B2F3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2F40 | 41 82 00 30 */	beq .L_813B2F70
/* 813B2F44 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 813B2F48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B2F4C | 41 82 00 14 */	beq .L_813B2F60
/* 813B2F50 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 813B2F54 | 90 7F 00 30 */	stw r3, 0x30(r31)
/* 813B2F58 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813B2F5C | 48 00 00 14 */	b .L_813B2F70
.L_813B2F60:
/* 813B2F60 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 813B2F64 | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 813B2F68 | 90 7F 00 30 */	stw r3, 0x30(r31)
/* 813B2F6C | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_813B2F70:
/* 813B2F70 | 7F E3 FB 78 */	mr r3, r31
/* 813B2F74 | 48 00 0E 3D */	bl updateNew__Q33ipl5scene10ChannelObjFv
/* 813B2F78 | C0 22 85 AC */	lfs f1, lbl_816949AC@sda21(r0)
/* 813B2F7C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B2F80 | FC 40 08 90 */	fmr f2, f1
/* 813B2F84 | FC 60 08 90 */	fmr f3, f1
/* 813B2F88 | 4B FC 18 FD */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813B2F8C | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 813B2F90 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B2F94 | 7C 85 23 78 */	mr r5, r4
/* 813B2F98 | 38 63 00 84 */	addi r3, r3, 0x84
/* 813B2F9C | 48 18 E5 21 */	bl fn_815414BC
/* 813B2FA0 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 813B2FA4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B2FA8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B2FAC | 4B FC F7 25 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3
/* 813B2FB0 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 813B2FB4 | 4B FB 77 51 */	bl calc__Q33ipl6layout6ObjectFv
/* 813B2FB8 | 7F E3 FB 78 */	mr r3, r31
/* 813B2FBC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B2FC0 | 48 00 00 DD */	bl calcCursor__Q33ipl5scene10ChannelObjFRCQ34nw4r4math4VEC3
/* 813B2FC4 | 7F E3 FB 78 */	mr r3, r31
/* 813B2FC8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B2FCC | 48 00 07 9D */	bl calcBalloon__Q33ipl5scene10ChannelObjFRCQ34nw4r4math4VEC3
/* 813B2FD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B2FD4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813B2FD8 | 7C 08 03 A6 */	mtlr r0
/* 813B2FDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B2FE0 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene10ChannelObjFv

# .text:0x1A60 | 0x813B2FE4 | size: 0xB8
# ipl::scene::ChannelObj::initCursor()
.fn initCursor__Q33ipl5scene10ChannelObjFv, global
/* 813B2FE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B2FE8 | 7C 08 02 A6 */	mflr r0
/* 813B2FEC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B2FF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B2FF4 | 48 24 64 D1 */	bl _savegpr_28
/* 813B2FF8 | 7C 7C 1B 78 */	mr r28, r3
/* 813B2FFC | 38 60 05 80 */	li r3, 0x580
/* 813B3000 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 813B3004 | 38 A0 00 04 */	li r5, 0x4
/* 813B3008 | 48 24 50 A9 */	bl __nw__FUlPQ23EGG4Heapi
/* 813B300C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3010 | 41 82 00 1C */	beq .L_813B302C
/* 813B3014 | 3C E0 81 65 */	lis r7, lbl_8164E6F3@ha
/* 813B3018 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 813B301C | 80 BC 00 24 */	lwz r5, 0x24(r28)
/* 813B3020 | 38 E7 E6 F3 */	addi r7, r7, lbl_8164E6F3@l
/* 813B3024 | 38 CD 89 A8 */	li r6, lbl_816969E8@sda21
/* 813B3028 | 4B FB 6F FD */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813B302C:
/* 813B302C | 3F C0 81 65 */	lis r30, lbl_8164E2E8@ha
/* 813B3030 | 90 7C 00 48 */	stw r3, 0x48(r28)
/* 813B3034 | 3B DE E2 E8 */	addi r30, r30, lbl_8164E2E8@l
/* 813B3038 | 3B A0 00 00 */	li r29, 0x0
/* 813B303C | 3B E0 00 00 */	li r31, 0x0
.L_813B3040:
/* 813B3040 | 80 7C 00 48 */	lwz r3, 0x48(r28)
/* 813B3044 | 38 C0 00 00 */	li r6, 0x0
/* 813B3048 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813B304C | 38 E0 00 01 */	li r7, 0x1
/* 813B3050 | 80 AD 89 58 */	lwz r5, lbl_81696998@sda21(r0)
/* 813B3054 | 4B FB 73 29 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B3058 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813B305C | 7C 9C FA 14 */	add r4, r28, r31
/* 813B3060 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813B3064 | 90 64 00 4C */	stw r3, 0x4c(r4)
/* 813B3068 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813B306C | 41 80 FF D4 */	blt .L_813B3040
/* 813B3070 | 7F 83 E3 78 */	mr r3, r28
/* 813B3074 | 38 80 00 00 */	li r4, 0x0
/* 813B3078 | 48 00 00 69 */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B307C | 80 7C 00 48 */	lwz r3, 0x48(r28)
/* 813B3080 | 4B FB 75 B5 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813B3084 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B3088 | 48 24 64 89 */	bl _restgpr_28
/* 813B308C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B3090 | 7C 08 03 A6 */	mtlr r0
/* 813B3094 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B3098 | 4E 80 00 20 */	blr
.endfn initCursor__Q33ipl5scene10ChannelObjFv

# .text:0x1B18 | 0x813B309C | size: 0x44
# ipl::scene::ChannelObj::calcCursor(const nw4r::math::VEC3&)
.fn calcCursor__Q33ipl5scene10ChannelObjFRCQ34nw4r4math4VEC3, global
/* 813B309C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B30A0 | 7C 08 02 A6 */	mflr r0
/* 813B30A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B30A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B30AC | 7C 7F 1B 78 */	mr r31, r3
/* 813B30B0 | 80 A3 00 48 */	lwz r5, 0x48(r3)
/* 813B30B4 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813B30B8 | 4B FC F6 19 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3
/* 813B30BC | 7F E3 FB 78 */	mr r3, r31
/* 813B30C0 | 48 00 01 BD */	bl calcCursorAnim__Q33ipl5scene10ChannelObjFv
/* 813B30C4 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813B30C8 | 4B FB 76 3D */	bl calc__Q33ipl6layout6ObjectFv
/* 813B30CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B30D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B30D4 | 7C 08 03 A6 */	mtlr r0
/* 813B30D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B30DC | 4E 80 00 20 */	blr
.endfn calcCursor__Q33ipl5scene10ChannelObjFRCQ34nw4r4math4VEC3

# .text:0x1B5C | 0x813B30E0 | size: 0x19C
# ipl::scene::ChannelObj::setCursorAnim(int)
.fn setCursorAnim__Q33ipl5scene10ChannelObjFi, global
/* 813B30E0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B30E4 | 7C 08 02 A6 */	mflr r0
/* 813B30E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B30EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B30F0 | 48 24 63 D9 */	bl _savegpr_29
/* 813B30F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B30F8 | 7C 7D 1B 78 */	mr r29, r3
/* 813B30FC | 40 82 00 58 */	bne .L_813B3154
/* 813B3100 | 3B E0 00 00 */	li r31, 0x0
/* 813B3104 | 3B C0 00 00 */	li r30, 0x0
/* 813B3108 | 93 E3 00 58 */	stw r31, 0x58(r3)
/* 813B310C | 93 E3 00 5C */	stw r31, 0x5c(r3)
.L_813B3110:
/* 813B3110 | 7C 7D FA 14 */	add r3, r29, r31
/* 813B3114 | 80 63 00 4C */	lwz r3, 0x4c(r3)
/* 813B3118 | 4B FA F7 59 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B311C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813B3120 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813B3124 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 813B3128 | 41 80 FF E8 */	blt .L_813B3110
/* 813B312C | 80 7D 00 48 */	lwz r3, 0x48(r29)
/* 813B3130 | 38 80 00 01 */	li r4, 0x1
/* 813B3134 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B3138 | 48 15 F1 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B313C | 4B FB 6A E9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813B3140 | 80 7D 00 48 */	lwz r3, 0x48(r29)
/* 813B3144 | 38 80 00 00 */	li r4, 0x0
/* 813B3148 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B314C | 4B F9 12 C9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B3150 | 48 00 01 14 */	b .L_813B3264
.L_813B3154:
/* 813B3154 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813B3158 | 40 82 00 34 */	bne .L_813B318C
/* 813B315C | 38 80 00 04 */	li r4, 0x4
/* 813B3160 | 38 00 00 00 */	li r0, 0x0
/* 813B3164 | 90 83 00 58 */	stw r4, 0x58(r3)
/* 813B3168 | 38 80 00 01 */	li r4, 0x1
/* 813B316C | 80 A3 00 48 */	lwz r5, 0x48(r3)
/* 813B3170 | 90 03 00 5C */	stw r0, 0x5c(r3)
/* 813B3174 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813B3178 | 4B F9 12 9D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B317C | 7F A3 EB 78 */	mr r3, r29
/* 813B3180 | 38 80 00 02 */	li r4, 0x2
/* 813B3184 | 48 00 01 E9 */	bl startCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B3188 | 48 00 00 DC */	b .L_813B3264
.L_813B318C:
/* 813B318C | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B3190 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B3194 | 41 82 00 90 */	beq .L_813B3224
/* 813B3198 | 40 80 00 14 */	bge .L_813B31AC
/* 813B319C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B31A0 | 41 82 00 18 */	beq .L_813B31B8
/* 813B31A4 | 40 80 00 44 */	bge .L_813B31E8
/* 813B31A8 | 48 00 00 BC */	b .L_813B3264
.L_813B31AC:
/* 813B31AC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B31B0 | 40 80 00 B4 */	bge .L_813B3264
/* 813B31B4 | 48 00 00 8C */	b .L_813B3240
.L_813B31B8:
/* 813B31B8 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813B31BC | 40 82 00 A8 */	bne .L_813B3264
/* 813B31C0 | 38 00 00 01 */	li r0, 0x1
/* 813B31C4 | 80 A3 00 48 */	lwz r5, 0x48(r3)
/* 813B31C8 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813B31CC | 38 80 00 01 */	li r4, 0x1
/* 813B31D0 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813B31D4 | 4B F9 12 41 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B31D8 | 7F A3 EB 78 */	mr r3, r29
/* 813B31DC | 38 80 00 01 */	li r4, 0x1
/* 813B31E0 | 48 00 01 8D */	bl startCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B31E4 | 48 00 00 80 */	b .L_813B3264
.L_813B31E8:
/* 813B31E8 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813B31EC | 40 82 00 10 */	bne .L_813B31FC
/* 813B31F0 | 38 00 00 02 */	li r0, 0x2
/* 813B31F4 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813B31F8 | 48 00 00 6C */	b .L_813B3264
.L_813B31FC:
/* 813B31FC | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813B3200 | 40 82 00 10 */	bne .L_813B3210
/* 813B3204 | 38 00 00 03 */	li r0, 0x3
/* 813B3208 | 90 03 00 5C */	stw r0, 0x5c(r3)
/* 813B320C | 48 00 00 58 */	b .L_813B3264
.L_813B3210:
/* 813B3210 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813B3214 | 40 82 00 50 */	bne .L_813B3264
/* 813B3218 | 38 00 00 00 */	li r0, 0x0
/* 813B321C | 90 03 00 5C */	stw r0, 0x5c(r3)
/* 813B3220 | 48 00 00 44 */	b .L_813B3264
.L_813B3224:
/* 813B3224 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813B3228 | 40 82 00 3C */	bne .L_813B3264
/* 813B322C | 38 00 00 03 */	li r0, 0x3
/* 813B3230 | 38 80 00 00 */	li r4, 0x0
/* 813B3234 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813B3238 | 48 00 01 35 */	bl startCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B323C | 48 00 00 28 */	b .L_813B3264
.L_813B3240:
/* 813B3240 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813B3244 | 40 82 00 10 */	bne .L_813B3254
/* 813B3248 | 38 00 00 01 */	li r0, 0x1
/* 813B324C | 90 03 00 5C */	stw r0, 0x5c(r3)
/* 813B3250 | 48 00 00 14 */	b .L_813B3264
.L_813B3254:
/* 813B3254 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813B3258 | 40 82 00 0C */	bne .L_813B3264
/* 813B325C | 38 00 00 00 */	li r0, 0x0
/* 813B3260 | 90 03 00 5C */	stw r0, 0x5c(r3)
.L_813B3264:
/* 813B3264 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B3268 | 48 24 62 AD */	bl _restgpr_29
/* 813B326C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B3270 | 7C 08 03 A6 */	mtlr r0
/* 813B3274 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B3278 | 4E 80 00 20 */	blr
.endfn setCursorAnim__Q33ipl5scene10ChannelObjFi

# .text:0x1CF8 | 0x813B327C | size: 0xF0
# ipl::scene::ChannelObj::calcCursorAnim()
.fn calcCursorAnim__Q33ipl5scene10ChannelObjFv, global
/* 813B327C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B3280 | 7C 08 02 A6 */	mflr r0
/* 813B3284 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B3288 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B328C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B3290 | 7C 7E 1B 78 */	mr r30, r3
/* 813B3294 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B3298 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813B329C | 41 82 00 6C */	beq .L_813B3308
/* 813B32A0 | 40 80 00 10 */	bge .L_813B32B0
/* 813B32A4 | 2C 80 00 01 */	cmpwi cr1, r0, 0x1
/* 813B32A8 | 41 86 00 14 */	beq cr1, .L_813B32BC
/* 813B32AC | 48 00 00 A8 */	b .L_813B3354
.L_813B32B0:
/* 813B32B0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813B32B4 | 40 80 00 A0 */	bge .L_813B3354
/* 813B32B8 | 48 00 00 84 */	b .L_813B333C
.L_813B32BC:
/* 813B32BC | 80 83 00 50 */	lwz r4, 0x50(r3)
/* 813B32C0 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813B32C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B32C8 | 41 82 00 8C */	beq .L_813B3354
/* 813B32CC | 80 83 00 5C */	lwz r4, 0x5c(r3)
/* 813B32D0 | 41 86 00 10 */	beq cr1, .L_813B32E0
/* 813B32D4 | 40 84 00 14 */	bge cr1, .L_813B32E8
/* 813B32D8 | 48 00 00 10 */	b .L_813B32E8
/* 813B32DC | 48 00 00 0C */	b .L_813B32E8
.L_813B32E0:
/* 813B32E0 | 38 00 00 02 */	li r0, 0x2
/* 813B32E4 | 90 03 00 58 */	stw r0, 0x58(r3)
.L_813B32E8:
/* 813B32E8 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813B32EC | 40 82 00 68 */	bne .L_813B3354
/* 813B32F0 | 7F C3 F3 78 */	mr r3, r30
/* 813B32F4 | 38 80 00 03 */	li r4, 0x3
/* 813B32F8 | 4B FF FD E9 */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B32FC | 38 00 00 00 */	li r0, 0x0
/* 813B3300 | 90 1E 00 5C */	stw r0, 0x5c(r30)
/* 813B3304 | 48 00 00 50 */	b .L_813B3354
.L_813B3308:
/* 813B3308 | 80 83 00 4C */	lwz r4, 0x4c(r3)
/* 813B330C | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813B3310 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B3314 | 41 82 00 40 */	beq .L_813B3354
/* 813B3318 | 83 E3 00 5C */	lwz r31, 0x5c(r3)
/* 813B331C | 38 80 00 00 */	li r4, 0x0
/* 813B3320 | 4B FF FD C1 */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B3324 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 813B3328 | 40 82 00 2C */	bne .L_813B3354
/* 813B332C | 7F C3 F3 78 */	mr r3, r30
/* 813B3330 | 38 80 00 01 */	li r4, 0x1
/* 813B3334 | 4B FF FD AD */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
/* 813B3338 | 48 00 00 1C */	b .L_813B3354
.L_813B333C:
/* 813B333C | 80 83 00 54 */	lwz r4, 0x54(r3)
/* 813B3340 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813B3344 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B3348 | 41 82 00 0C */	beq .L_813B3354
/* 813B334C | 38 80 00 00 */	li r4, 0x0
/* 813B3350 | 4B FF FD 91 */	bl setCursorAnim__Q33ipl5scene10ChannelObjFi
.L_813B3354:
/* 813B3354 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B3358 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B335C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B3360 | 7C 08 03 A6 */	mtlr r0
/* 813B3364 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B3368 | 4E 80 00 20 */	blr
.endfn calcCursorAnim__Q33ipl5scene10ChannelObjFv

# .text:0x1DE8 | 0x813B336C | size: 0x4C
# ipl::scene::ChannelObj::startCursorAnim(int)
.fn startCursorAnim__Q33ipl5scene10ChannelObjFi, global
/* 813B336C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B3370 | 7C 08 02 A6 */	mflr r0
/* 813B3374 | 54 84 10 3A */	slwi r4, r4, 2
/* 813B3378 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B337C | 7C 83 22 14 */	add r4, r3, r4
/* 813B3380 | 38 00 00 00 */	li r0, 0x0
/* 813B3384 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B3388 | 80 64 00 4C */	lwz r3, 0x4c(r4)
/* 813B338C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 813B3390 | 83 E4 00 4C */	lwz r31, 0x4c(r4)
/* 813B3394 | 7F E3 FB 78 */	mr r3, r31
/* 813B3398 | 4B FA F4 D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B339C | 38 00 00 01 */	li r0, 0x1
/* 813B33A0 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813B33A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B33A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B33AC | 7C 08 03 A6 */	mtlr r0
/* 813B33B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B33B4 | 4E 80 00 20 */	blr
.endfn startCursorAnim__Q33ipl5scene10ChannelObjFi

# .text:0x1E34 | 0x813B33B8 | size: 0xC8
# ipl::scene::ChannelObj::initBalloon()
.fn initBalloon__Q33ipl5scene10ChannelObjFv, global
/* 813B33B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B33BC | 7C 08 02 A6 */	mflr r0
/* 813B33C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B33C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B33C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813B33CC | 4B FF EE 85 */	bl isValid__Q33ipl5scene10ChannelObjCFv
/* 813B33D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B33D4 | 40 82 00 10 */	bne .L_813B33E4
/* 813B33D8 | 38 00 00 00 */	li r0, 0x0
/* 813B33DC | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 813B33E0 | 48 00 00 8C */	b .L_813B346C
.L_813B33E4:
/* 813B33E4 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813B33E8 | 38 60 05 80 */	li r3, 0x580
/* 813B33EC | 38 A0 00 04 */	li r5, 0x4
/* 813B33F0 | 48 24 4C C1 */	bl __nw__FUlPQ23EGG4Heapi
/* 813B33F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B33F8 | 41 82 00 1C */	beq .L_813B3414
/* 813B33FC | 3C E0 81 65 */	lis r7, lbl_8164E705@ha
/* 813B3400 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813B3404 | 80 BF 00 24 */	lwz r5, 0x24(r31)
/* 813B3408 | 38 E7 E7 05 */	addi r7, r7, lbl_8164E705@l
/* 813B340C | 38 CD 89 A8 */	li r6, lbl_816969E8@sda21
/* 813B3410 | 4B FB 6C 15 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813B3414:
/* 813B3414 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813B3418 | 90 7F 00 60 */	stw r3, 0x60(r31)
/* 813B341C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813B3420 | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 813B3424 | 80 65 00 84 */	lwz r3, 0x84(r5)
/* 813B3428 | 38 C0 00 00 */	li r6, 0x0
/* 813B342C | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813B3430 | 4B F8 57 2D */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813B3434 | 7C 64 1B 78 */	mr r4, r3
/* 813B3438 | 7F E3 FB 78 */	mr r3, r31
/* 813B343C | 48 00 00 45 */	bl setBalloonText__Q33ipl5scene10ChannelObjFPCw
/* 813B3440 | 3C 80 81 65 */	lis r4, lbl_8164E71E@ha
/* 813B3444 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813B3448 | 38 84 E7 1E */	addi r4, r4, lbl_8164E71E@l
/* 813B344C | 38 A0 00 01 */	li r5, 0x1
/* 813B3450 | 4B FB 6F 1D */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B3454 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 813B3458 | 7F E3 FB 78 */	mr r3, r31
/* 813B345C | 38 80 00 00 */	li r4, 0x0
/* 813B3460 | 48 00 04 51 */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
/* 813B3464 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813B3468 | 4B FB 71 CD */	bl finishBinding__Q33ipl6layout6ObjectFv
.L_813B346C:
/* 813B346C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B3470 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B3474 | 7C 08 03 A6 */	mtlr r0
/* 813B3478 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B347C | 4E 80 00 20 */	blr
.endfn initBalloon__Q33ipl5scene10ChannelObjFv

# .text:0x1EFC | 0x813B3480 | size: 0x2D4
# ipl::scene::ChannelObj::setBalloonText(const wchar_t*)
.fn setBalloonText__Q33ipl5scene10ChannelObjFPCw, global
/* 813B3480 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 813B3484 | 7C 08 02 A6 */	mflr r0
/* 813B3488 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813B348C | DB E1 00 90 */	stfd f31, 0x90(r1)
/* 813B3490 | F3 E1 00 98 */	psq_st f31, 0x98(r1), 0, qr0
/* 813B3494 | DB C1 00 80 */	stfd f30, 0x80(r1)
/* 813B3498 | F3 C1 00 88 */	psq_st f30, 0x88(r1), 0, qr0
/* 813B349C | 39 61 00 80 */	addi r11, r1, 0x80
/* 813B34A0 | 48 24 60 15 */	bl _savegpr_24
/* 813B34A4 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 813B34A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813B34AC | 7C 98 23 78 */	mr r24, r4
/* 813B34B0 | 80 8D 89 5C */	lwz r4, lbl_8169699C@sda21(r0)
/* 813B34B4 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813B34B8 | 38 A0 00 01 */	li r5, 0x1
/* 813B34BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B34C0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B34C4 | 7D 89 03 A6 */	mtctr r12
/* 813B34C8 | 4E 80 04 21 */	bctrl
/* 813B34CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B34D0 | 7C 7A 1B 78 */	mr r26, r3
/* 813B34D4 | 3B 6D AF 78 */	li r27, lbl_81698FB8@sda21
/* 813B34D8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B34DC | 7D 89 03 A6 */	mtctr r12
/* 813B34E0 | 4E 80 04 21 */	bctrl
/* 813B34E4 | 48 00 00 18 */	b .L_813B34FC
.L_813B34E8:
/* 813B34E8 | 7C 03 D8 40 */	cmplw r3, r27
/* 813B34EC | 40 82 00 0C */	bne .L_813B34F8
/* 813B34F0 | 38 00 00 01 */	li r0, 0x1
/* 813B34F4 | 48 00 00 14 */	b .L_813B3508
.L_813B34F8:
/* 813B34F8 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_813B34FC:
/* 813B34FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3500 | 40 82 FF E8 */	bne .L_813B34E8
/* 813B3504 | 38 00 00 00 */	li r0, 0x0
.L_813B3508:
/* 813B3508 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B350C | 41 82 00 08 */	beq .L_813B3514
/* 813B3510 | 48 00 00 08 */	b .L_813B3518
.L_813B3514:
/* 813B3514 | 3B 40 00 00 */	li r26, 0x0
.L_813B3518:
/* 813B3518 | 38 00 00 0B */	li r0, 0xb
/* 813B351C | 38 81 00 2E */	addi r4, r1, 0x2e
/* 813B3520 | 38 60 00 00 */	li r3, 0x0
/* 813B3524 | 7C 09 03 A6 */	mtctr r0
.L_813B3528:
/* 813B3528 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 813B352C | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 813B3530 | 42 00 FF F8 */	bdnz .L_813B3528
/* 813B3534 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 813B3538 | 7F 04 C3 78 */	mr r4, r24
/* 813B353C | 38 61 00 30 */	addi r3, r1, 0x30
/* 813B3540 | 38 A0 00 14 */	li r5, 0x14
/* 813B3544 | 48 25 51 A1 */	bl fn_816086E4
/* 813B3548 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813B354C | 48 25 51 61 */	bl fn_816086AC
/* 813B3550 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3554 | C3 C2 85 AC */	lfs f30, lbl_816949AC@sda21(r0)
/* 813B3558 | 3B 20 00 00 */	li r25, 0x0
/* 813B355C | 40 82 00 28 */	bne .L_813B3584
/* 813B3560 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813B3564 | 7F 43 D3 78 */	mr r3, r26
/* 813B3568 | 38 81 00 30 */	addi r4, r1, 0x30
/* 813B356C | 38 A0 00 00 */	li r5, 0x0
/* 813B3570 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813B3574 | 38 C0 00 01 */	li r6, 0x1
/* 813B3578 | 7D 89 03 A6 */	mtctr r12
/* 813B357C | 4E 80 04 21 */	bctrl
/* 813B3580 | 48 00 00 E0 */	b .L_813B3660
.L_813B3584:
/* 813B3584 | C3 E2 85 C0 */	lfs f31, lbl_816949C0@sda21(r0)
/* 813B3588 | 7C 78 1B 78 */	mr r24, r3
/* 813B358C | 54 7E 08 3C */	slwi r30, r3, 1
/* 813B3590 | 3B 80 00 00 */	li r28, 0x0
/* 813B3594 | 3B A0 00 2E */	li r29, 0x2e
/* 813B3598 | 3B 60 20 26 */	li r27, 0x2026
/* 813B359C | 48 00 00 BC */	b .L_813B3658
.L_813B35A0:
/* 813B35A0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813B35A4 | 7C 18 CA 14 */	add r0, r24, r25
/* 813B35A8 | 7F 43 D3 78 */	mr r3, r26
/* 813B35AC | 38 81 00 30 */	addi r4, r1, 0x30
/* 813B35B0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813B35B4 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 813B35B8 | 38 A0 00 00 */	li r5, 0x0
/* 813B35BC | 7D 89 03 A6 */	mtctr r12
/* 813B35C0 | 4E 80 04 21 */	bctrl
/* 813B35C4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813B35C8 | 7F 43 D3 78 */	mr r3, r26
/* 813B35CC | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B35D0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813B35D4 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813B35D8 | 7D 89 03 A6 */	mtctr r12
/* 813B35DC | 4E 80 04 21 */	bctrl
/* 813B35E0 | 80 BF 00 60 */	lwz r5, 0x60(r31)
/* 813B35E4 | 7F 44 D3 78 */	mr r4, r26
/* 813B35E8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813B35EC | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813B35F0 | 48 16 E7 05 */	bl fn_81521CF4
/* 813B35F4 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 813B35F8 | EC 1F F0 2A */	fadds f0, f31, f30
/* 813B35FC | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 813B3600 | EC 22 08 28 */	fsubs f1, f2, f1
/* 813B3604 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813B3608 | 4C 40 13 82 */	cror eq, lt, eq
/* 813B360C | 41 82 00 54 */	beq .L_813B3660
/* 813B3610 | 4B F8 24 7D */	bl getRegion__Q23ipl6SystemFv
/* 813B3614 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3618 | 40 82 00 18 */	bne .L_813B3630
/* 813B361C | 38 61 00 30 */	addi r3, r1, 0x30
/* 813B3620 | 7C 63 F2 14 */	add r3, r3, r30
/* 813B3624 | B3 83 FF FE */	sth r28, -0x2(r3)
/* 813B3628 | B3 63 FF FC */	sth r27, -0x4(r3)
/* 813B362C | 48 00 00 24 */	b .L_813B3650
.L_813B3630:
/* 813B3630 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813B3634 | C3 C2 85 C4 */	lfs f30, lbl_816949C4@sda21(r0)
/* 813B3638 | 7C 63 F2 14 */	add r3, r3, r30
/* 813B363C | 3B 20 00 02 */	li r25, 0x2
/* 813B3640 | B3 83 00 02 */	sth r28, 0x2(r3)
/* 813B3644 | B3 A3 00 00 */	sth r29, 0x0(r3)
/* 813B3648 | B3 A3 FF FE */	sth r29, -0x2(r3)
/* 813B364C | B3 A3 FF FC */	sth r29, -0x4(r3)
.L_813B3650:
/* 813B3650 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 813B3654 | 3B DE FF FE */	subi r30, r30, 0x2
.L_813B3658:
/* 813B3658 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 813B365C | 40 82 FF 44 */	bne .L_813B35A0
.L_813B3660:
/* 813B3660 | 80 BF 00 60 */	lwz r5, 0x60(r31)
/* 813B3664 | 7F 44 D3 78 */	mr r4, r26
/* 813B3668 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813B366C | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813B3670 | 48 16 E6 85 */	bl fn_81521CF4
/* 813B3674 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813B3678 | 38 A0 00 01 */	li r5, 0x1
/* 813B367C | 80 8D 89 68 */	lwz r4, lbl_816969A8@sda21(r0)
/* 813B3680 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B3684 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B3688 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B368C | 7D 89 03 A6 */	mtctr r12
/* 813B3690 | 4E 80 04 21 */	bctrl
/* 813B3694 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 813B3698 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 813B369C | C0 63 00 4C */	lfs f3, 0x4c(r3)
/* 813B36A0 | EC 41 00 28 */	fsubs f2, f1, f0
/* 813B36A4 | C0 02 85 C8 */	lfs f0, lbl_816949C8@sda21(r0)
/* 813B36A8 | D0 61 00 08 */	stfs f3, 0x8(r1)
/* 813B36AC | C0 22 85 CC */	lfs f1, lbl_816949CC@sda21(r0)
/* 813B36B0 | C0 63 00 50 */	lfs f3, 0x50(r3)
/* 813B36B4 | EC 40 10 2A */	fadds f2, f0, f2
/* 813B36B8 | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 813B36BC | D0 41 00 08 */	stfs f2, 0x8(r1)
/* 813B36C0 | C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 813B36C4 | EC 01 00 32 */	fmuls f0, f1, f0
/* 813B36C8 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 813B36CC | 40 80 00 08 */	bge .L_813B36D4
/* 813B36D0 | D0 01 00 08 */	stfs f0, 0x8(r1)
.L_813B36D4:
/* 813B36D4 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813B36D8 | 38 A0 00 01 */	li r5, 0x1
/* 813B36DC | 80 8D 89 74 */	lwz r4, lbl_816969B4@sda21(r0)
/* 813B36E0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B36E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B36E8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B36EC | 7D 89 03 A6 */	mtctr r12
/* 813B36F0 | 4E 80 04 21 */	bctrl
/* 813B36F4 | 38 63 00 4C */	addi r3, r3, 0x4c
/* 813B36F8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B36FC | 48 00 00 59 */	bl __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 813B3700 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813B3704 | 38 A0 00 01 */	li r5, 0x1
/* 813B3708 | 80 8D 89 68 */	lwz r4, lbl_816969A8@sda21(r0)
/* 813B370C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B3710 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B3714 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B3718 | 7D 89 03 A6 */	mtctr r12
/* 813B371C | 4E 80 04 21 */	bctrl
/* 813B3720 | 38 63 00 4C */	addi r3, r3, 0x4c
/* 813B3724 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B3728 | 48 00 00 2D */	bl __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 813B372C | E3 E1 00 98 */	psq_l f31, 0x98(r1), 0, qr0
/* 813B3730 | CB E1 00 90 */	lfd f31, 0x90(r1)
/* 813B3734 | E3 C1 00 88 */	psq_l f30, 0x88(r1), 0, qr0
/* 813B3738 | 39 61 00 80 */	addi r11, r1, 0x80
/* 813B373C | CB C1 00 80 */	lfd f30, 0x80(r1)
/* 813B3740 | 48 24 5D C1 */	bl _restgpr_24
/* 813B3744 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 813B3748 | 7C 08 03 A6 */	mtlr r0
/* 813B374C | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 813B3750 | 4E 80 00 20 */	blr
.endfn setBalloonText__Q33ipl5scene10ChannelObjFPCw

# .text:0x21D0 | 0x813B3754 | size: 0x14
# nw4r::lyt::Size::operator=(const nw4r::lyt::Size&)
.fn __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size, global
/* 813B3754 | C0 24 00 00 */	lfs f1, 0x0(r4)
/* 813B3758 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 813B375C | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 813B3760 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 813B3764 | 4E 80 00 20 */	blr
.endfn __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size

# .text:0x21E4 | 0x813B3768 | size: 0x148
# ipl::scene::ChannelObj::calcBalloon(const nw4r::math::VEC3&)
.fn calcBalloon__Q33ipl5scene10ChannelObjFRCQ34nw4r4math4VEC3, global
/* 813B3768 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813B376C | 7C 08 02 A6 */	mflr r0
/* 813B3770 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813B3774 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813B3778 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813B377C | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813B3780 | 7C 9F 23 78 */	mr r31, r4
/* 813B3784 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 813B3788 | 7C 7E 1B 78 */	mr r30, r3
/* 813B378C | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 813B3790 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3794 | 41 82 00 FC */	beq .L_813B3890
/* 813B3798 | C0 02 85 AC */	lfs f0, lbl_816949AC@sda21(r0)
/* 813B379C | 38 A0 00 01 */	li r5, 0x1
/* 813B37A0 | 80 8D 89 68 */	lwz r4, lbl_816969A8@sda21(r0)
/* 813B37A4 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813B37A8 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813B37AC | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813B37B0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B37B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B37B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B37BC | 7D 89 03 A6 */	mtctr r12
/* 813B37C0 | 4E 80 04 21 */	bctrl
/* 813B37C4 | 7C 64 1B 78 */	mr r4, r3
/* 813B37C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B37CC | 38 84 00 4C */	addi r4, r4, 0x4c
/* 813B37D0 | 4B FF FF 85 */	bl __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 813B37D4 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 813B37D8 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813B37DC | C0 02 85 D4 */	lfs f0, lbl_816949D4@sda21(r0)
/* 813B37E0 | C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 813B37E4 | EC 61 00 32 */	fmuls f3, f1, f0
/* 813B37E8 | C0 22 85 D0 */	lfs f1, lbl_816949D0@sda21(r0)
/* 813B37EC | C0 02 85 D8 */	lfs f0, lbl_816949D8@sda21(r0)
/* 813B37F0 | EC 43 10 2A */	fadds f2, f3, f2
/* 813B37F4 | EF E1 10 2A */	fadds f31, f1, f2
/* 813B37F8 | EF FF 00 32 */	fmuls f31, f31, f0
/* 813B37FC | 4B F8 2C 2D */	bl __ct__Q34nw4r2ut4RectFv
/* 813B3800 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813B3804 | 4B F8 21 15 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813B3808 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 813B380C | C0 02 85 D4 */	lfs f0, lbl_816949D4@sda21(r0)
/* 813B3810 | C0 5F 00 00 */	lfs f2, 0x0(r31)
/* 813B3814 | EC A1 00 32 */	fmuls f5, f1, f0
/* 813B3818 | C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 813B381C | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 813B3820 | C0 02 85 DC */	lfs f0, lbl_816949DC@sda21(r0)
/* 813B3824 | EC 82 28 28 */	fsubs f4, f2, f5
/* 813B3828 | C0 C2 85 AC */	lfs f6, lbl_816949AC@sda21(r0)
/* 813B382C | EC 42 28 2A */	fadds f2, f2, f5
/* 813B3830 | EC 64 18 28 */	fsubs f3, f4, f3
/* 813B3834 | EC 21 10 28 */	fsubs f1, f1, f2
/* 813B3838 | FC 03 00 40 */	fcmpo cr0, f3, f0
/* 813B383C | 40 80 00 0C */	bge .L_813B3848
/* 813B3840 | EC C0 18 28 */	fsubs f6, f0, f3
/* 813B3844 | 48 00 00 10 */	b .L_813B3854
.L_813B3848:
/* 813B3848 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813B384C | 40 80 00 08 */	bge .L_813B3854
/* 813B3850 | EC C1 00 28 */	fsubs f6, f1, f0
.L_813B3854:
/* 813B3854 | C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 813B3858 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813B385C | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 813B3860 | EC 21 30 2A */	fadds f1, f1, f6
/* 813B3864 | C0 62 85 AC */	lfs f3, lbl_816949AC@sda21(r0)
/* 813B3868 | EC 40 F8 2A */	fadds f2, f0, f31
/* 813B386C | 4B FC 10 19 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813B3870 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813B3874 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813B3878 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B387C | 4B FC EE 55 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3
/* 813B3880 | 7F C3 F3 78 */	mr r3, r30
/* 813B3884 | 48 00 01 D9 */	bl calcBalloonAnim__Q33ipl5scene10ChannelObjFv
/* 813B3888 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813B388C | 4B FB 6E 79 */	bl calc__Q33ipl6layout6ObjectFv
.L_813B3890:
/* 813B3890 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813B3894 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813B3898 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813B389C | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813B38A0 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 813B38A4 | 7C 08 03 A6 */	mtlr r0
/* 813B38A8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813B38AC | 4E 80 00 20 */	blr
.endfn calcBalloon__Q33ipl5scene10ChannelObjFRCQ34nw4r4math4VEC3

# .text:0x232C | 0x813B38B0 | size: 0x1AC
# ipl::scene::ChannelObj::setBalloonAnim(int)
.fn setBalloonAnim__Q33ipl5scene10ChannelObjFi, global
/* 813B38B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B38B4 | 7C 08 02 A6 */	mflr r0
/* 813B38B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B38BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B38C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813B38C4 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 813B38C8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813B38CC | 41 82 01 7C */	beq .L_813B3A48
/* 813B38D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B38D4 | 40 82 00 34 */	bne .L_813B3908
/* 813B38D8 | 38 00 00 00 */	li r0, 0x0
/* 813B38DC | C0 22 85 AC */	lfs f1, lbl_816949AC@sda21(r0)
/* 813B38E0 | 90 03 00 68 */	stw r0, 0x68(r3)
/* 813B38E4 | 38 80 FF FF */	li r4, -0x1
/* 813B38E8 | 90 03 00 6C */	stw r0, 0x6c(r3)
/* 813B38EC | 7C A3 2B 78 */	mr r3, r5
/* 813B38F0 | 4B FB 71 01 */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813B38F4 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813B38F8 | 38 80 00 00 */	li r4, 0x0
/* 813B38FC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B3900 | 4B F9 0B 15 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B3904 | 48 00 01 44 */	b .L_813B3A48
.L_813B3908:
/* 813B3908 | 80 03 00 68 */	lwz r0, 0x68(r3)
/* 813B390C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B3910 | 41 82 00 A8 */	beq .L_813B39B8
/* 813B3914 | 40 80 00 14 */	bge .L_813B3928
/* 813B3918 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B391C | 41 82 00 1C */	beq .L_813B3938
/* 813B3920 | 40 80 00 34 */	bge .L_813B3954
/* 813B3924 | 48 00 01 24 */	b .L_813B3A48
.L_813B3928:
/* 813B3928 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B392C | 41 82 00 F8 */	beq .L_813B3A24
/* 813B3930 | 40 80 01 18 */	bge .L_813B3A48
/* 813B3934 | 48 00 00 C0 */	b .L_813B39F4
.L_813B3938:
/* 813B3938 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813B393C | 40 82 01 0C */	bne .L_813B3A48
/* 813B3940 | 38 80 00 00 */	li r4, 0x0
/* 813B3944 | 38 00 00 01 */	li r0, 0x1
/* 813B3948 | 90 83 00 70 */	stw r4, 0x70(r3)
/* 813B394C | 90 03 00 68 */	stw r0, 0x68(r3)
/* 813B3950 | 48 00 00 F8 */	b .L_813B3A48
.L_813B3954:
/* 813B3954 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813B3958 | 40 82 00 4C */	bne .L_813B39A4
/* 813B395C | 38 00 00 02 */	li r0, 0x2
/* 813B3960 | 38 80 00 01 */	li r4, 0x1
/* 813B3964 | 90 03 00 68 */	stw r0, 0x68(r3)
/* 813B3968 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813B396C | 4B F9 0A A9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B3970 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813B3974 | 38 80 00 00 */	li r4, 0x0
/* 813B3978 | 38 A0 FF FF */	li r5, -0x1
/* 813B397C | 4B FB 70 E5 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813B3980 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813B3984 | 38 80 FF FF */	li r4, -0x1
/* 813B3988 | 4B FB 6F 71 */	bl start__Q33ipl6layout6ObjectFi
/* 813B398C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B3990 | 3C 80 81 65 */	lis r4, lbl_8164E744@ha
/* 813B3994 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B3998 | 38 84 E7 44 */	addi r4, r4, lbl_8164E744@l
/* 813B399C | 4B FB 7A D1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B39A0 | 48 00 00 A8 */	b .L_813B3A48
.L_813B39A4:
/* 813B39A4 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813B39A8 | 40 82 00 A0 */	bne .L_813B3A48
/* 813B39AC | 38 00 00 00 */	li r0, 0x0
/* 813B39B0 | 90 03 00 68 */	stw r0, 0x68(r3)
/* 813B39B4 | 48 00 00 94 */	b .L_813B3A48
.L_813B39B8:
/* 813B39B8 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813B39BC | 40 82 00 10 */	bne .L_813B39CC
/* 813B39C0 | 38 00 00 03 */	li r0, 0x3
/* 813B39C4 | 90 03 00 68 */	stw r0, 0x68(r3)
/* 813B39C8 | 48 00 00 80 */	b .L_813B3A48
.L_813B39CC:
/* 813B39CC | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813B39D0 | 40 82 00 10 */	bne .L_813B39E0
/* 813B39D4 | 38 00 00 04 */	li r0, 0x4
/* 813B39D8 | 90 03 00 6C */	stw r0, 0x6c(r3)
/* 813B39DC | 48 00 00 6C */	b .L_813B3A48
.L_813B39E0:
/* 813B39E0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813B39E4 | 40 82 00 64 */	bne .L_813B3A48
/* 813B39E8 | 38 00 00 00 */	li r0, 0x0
/* 813B39EC | 90 03 00 6C */	stw r0, 0x6c(r3)
/* 813B39F0 | 48 00 00 58 */	b .L_813B3A48
.L_813B39F4:
/* 813B39F4 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813B39F8 | 40 82 00 50 */	bne .L_813B3A48
/* 813B39FC | 38 00 00 04 */	li r0, 0x4
/* 813B3A00 | 38 80 00 01 */	li r4, 0x1
/* 813B3A04 | 90 03 00 68 */	stw r0, 0x68(r3)
/* 813B3A08 | 7C A3 2B 78 */	mr r3, r5
/* 813B3A0C | 38 A0 FF FF */	li r5, -0x1
/* 813B3A10 | 4B FB 70 51 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813B3A14 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813B3A18 | 38 80 FF FF */	li r4, -0x1
/* 813B3A1C | 4B FB 6E DD */	bl start__Q33ipl6layout6ObjectFi
/* 813B3A20 | 48 00 00 28 */	b .L_813B3A48
.L_813B3A24:
/* 813B3A24 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813B3A28 | 40 82 00 10 */	bne .L_813B3A38
/* 813B3A2C | 38 00 00 01 */	li r0, 0x1
/* 813B3A30 | 90 03 00 6C */	stw r0, 0x6c(r3)
/* 813B3A34 | 48 00 00 14 */	b .L_813B3A48
.L_813B3A38:
/* 813B3A38 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813B3A3C | 40 82 00 0C */	bne .L_813B3A48
/* 813B3A40 | 38 00 00 00 */	li r0, 0x0
/* 813B3A44 | 90 03 00 6C */	stw r0, 0x6c(r3)
.L_813B3A48:
/* 813B3A48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B3A4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B3A50 | 7C 08 03 A6 */	mtlr r0
/* 813B3A54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B3A58 | 4E 80 00 20 */	blr
.endfn setBalloonAnim__Q33ipl5scene10ChannelObjFi

# .text:0x24D8 | 0x813B3A5C | size: 0x118
# ipl::scene::ChannelObj::calcBalloonAnim()
.fn calcBalloonAnim__Q33ipl5scene10ChannelObjFv, global
/* 813B3A5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B3A60 | 7C 08 02 A6 */	mflr r0
/* 813B3A64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B3A68 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813B3A6C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813B3A70 | 7C 7E 1B 78 */	mr r30, r3
/* 813B3A74 | 80 03 00 68 */	lwz r0, 0x68(r3)
/* 813B3A78 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813B3A7C | 41 82 00 E0 */	beq .L_813B3B5C
/* 813B3A80 | 40 80 00 14 */	bge .L_813B3A94
/* 813B3A84 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B3A88 | 41 82 00 18 */	beq .L_813B3AA0
/* 813B3A8C | 40 80 00 54 */	bge .L_813B3AE0
/* 813B3A90 | 48 00 00 CC */	b .L_813B3B5C
.L_813B3A94:
/* 813B3A94 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813B3A98 | 40 80 00 C4 */	bge .L_813B3B5C
/* 813B3A9C | 48 00 00 88 */	b .L_813B3B24
.L_813B3AA0:
/* 813B3AA0 | 80 83 00 70 */	lwz r4, 0x70(r3)
/* 813B3AA4 | 3C 00 43 30 */	lis r0, 0x4330
/* 813B3AA8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813B3AAC | 38 04 00 01 */	addi r0, r4, 0x1
/* 813B3AB0 | C8 42 85 E8 */	lfd f2, lbl_816949E8@sda21(r0)
/* 813B3AB4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813B3AB8 | C0 02 85 E0 */	lfs f0, lbl_816949E0@sda21(r0)
/* 813B3ABC | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 813B3AC0 | 90 03 00 70 */	stw r0, 0x70(r3)
/* 813B3AC4 | EC 21 10 28 */	fsubs f1, f1, f2
/* 813B3AC8 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813B3ACC | 4C 41 13 82 */	cror eq, gt, eq
/* 813B3AD0 | 40 82 00 8C */	bne .L_813B3B5C
/* 813B3AD4 | 38 80 00 02 */	li r4, 0x2
/* 813B3AD8 | 4B FF FD D9 */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
/* 813B3ADC | 48 00 00 80 */	b .L_813B3B5C
.L_813B3AE0:
/* 813B3AE0 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813B3AE4 | 38 80 00 00 */	li r4, 0x0
/* 813B3AE8 | 4B FB 6F E9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813B3AEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3AF0 | 40 82 00 6C */	bne .L_813B3B5C
/* 813B3AF4 | 83 FE 00 6C */	lwz r31, 0x6c(r30)
/* 813B3AF8 | 7F C3 F3 78 */	mr r3, r30
/* 813B3AFC | 38 80 00 03 */	li r4, 0x3
/* 813B3B00 | 4B FF FD B1 */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
/* 813B3B04 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 813B3B08 | 40 82 00 54 */	bne .L_813B3B5C
/* 813B3B0C | 7F C3 F3 78 */	mr r3, r30
/* 813B3B10 | 38 80 00 04 */	li r4, 0x4
/* 813B3B14 | 4B FF FD 9D */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
/* 813B3B18 | 38 00 00 00 */	li r0, 0x0
/* 813B3B1C | 90 1E 00 6C */	stw r0, 0x6c(r30)
/* 813B3B20 | 48 00 00 3C */	b .L_813B3B5C
.L_813B3B24:
/* 813B3B24 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813B3B28 | 38 80 00 00 */	li r4, 0x0
/* 813B3B2C | 4B FB 6F A5 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813B3B30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3B34 | 40 82 00 28 */	bne .L_813B3B5C
/* 813B3B38 | 83 FE 00 6C */	lwz r31, 0x6c(r30)
/* 813B3B3C | 7F C3 F3 78 */	mr r3, r30
/* 813B3B40 | 38 80 00 00 */	li r4, 0x0
/* 813B3B44 | 4B FF FD 6D */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
/* 813B3B48 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 813B3B4C | 40 82 00 10 */	bne .L_813B3B5C
/* 813B3B50 | 7F C3 F3 78 */	mr r3, r30
/* 813B3B54 | 38 80 00 01 */	li r4, 0x1
/* 813B3B58 | 4B FF FD 59 */	bl setBalloonAnim__Q33ipl5scene10ChannelObjFi
.L_813B3B5C:
/* 813B3B5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B3B60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813B3B64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813B3B68 | 7C 08 03 A6 */	mtlr r0
/* 813B3B6C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B3B70 | 4E 80 00 20 */	blr
.endfn calcBalloonAnim__Q33ipl5scene10ChannelObjFv

# .text:0x25F0 | 0x813B3B74 | size: 0xB0
# ipl::scene::ChannelObj::clearModuleParam()
.fn clearModuleParam__Q33ipl5scene10ChannelObjFv, global
/* 813B3B74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B3B78 | 7C 08 02 A6 */	mflr r0
/* 813B3B7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B3B80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B3B84 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B3B88 | 7C 7E 1B 78 */	mr r30, r3
/* 813B3B8C | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 813B3B90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3B94 | 41 82 00 14 */	beq .L_813B3BA8
/* 813B3B98 | 7C 03 03 78 */	mr r3, r0
/* 813B3B9C | 48 24 45 51 */	bl __dla__FPv
/* 813B3BA0 | 38 00 00 00 */	li r0, 0x0
/* 813B3BA4 | 90 1E 01 04 */	stw r0, 0x104(r30)
.L_813B3BA8:
/* 813B3BA8 | 80 7E 01 10 */	lwz r3, 0x110(r30)
/* 813B3BAC | 3B E0 00 00 */	li r31, 0x0
/* 813B3BB0 | 93 FE 01 00 */	stw r31, 0x100(r30)
/* 813B3BB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3BB8 | 41 82 00 18 */	beq .L_813B3BD0
/* 813B3BBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B3BC0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813B3BC4 | 7D 89 03 A6 */	mtctr r12
/* 813B3BC8 | 4E 80 04 21 */	bctrl
/* 813B3BCC | 93 FE 01 10 */	stw r31, 0x110(r30)
.L_813B3BD0:
/* 813B3BD0 | 80 7E 00 F0 */	lwz r3, 0xf0(r30)
/* 813B3BD4 | 38 00 00 00 */	li r0, 0x0
/* 813B3BD8 | 90 1E 00 F8 */	stw r0, 0xf8(r30)
/* 813B3BDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3BE0 | 41 82 00 24 */	beq .L_813B3C04
/* 813B3BE4 | 41 82 00 18 */	beq .L_813B3BFC
/* 813B3BE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B3BEC | 38 80 00 01 */	li r4, 0x1
/* 813B3BF0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B3BF4 | 7D 89 03 A6 */	mtctr r12
/* 813B3BF8 | 4E 80 04 21 */	bctrl
.L_813B3BFC:
/* 813B3BFC | 38 00 00 00 */	li r0, 0x0
/* 813B3C00 | 90 1E 00 F0 */	stw r0, 0xf0(r30)
.L_813B3C04:
/* 813B3C04 | 38 00 00 01 */	li r0, 0x1
/* 813B3C08 | 90 1E 00 EC */	stw r0, 0xec(r30)
/* 813B3C0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B3C10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B3C14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B3C18 | 7C 08 03 A6 */	mtlr r0
/* 813B3C1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B3C20 | 4E 80 00 20 */	blr
.endfn clearModuleParam__Q33ipl5scene10ChannelObjFv

# .text:0x26A0 | 0x813B3C24 | size: 0x18C
# ipl::scene::ChannelObj::bindNewAnm(ipl::layout::Object*)
.fn bindNewAnm__Q33ipl5scene10ChannelObjFPQ33ipl6layout6Object, global
/* 813B3C24 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813B3C28 | 7C 08 02 A6 */	mflr r0
/* 813B3C2C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813B3C30 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B3C34 | 48 24 58 89 */	bl _savegpr_26
/* 813B3C38 | 7C 7A 1B 78 */	mr r26, r3
/* 813B3C3C | 3F C0 81 65 */	lis r30, lbl_8164E290@ha
/* 813B3C40 | 80 64 00 18 */	lwz r3, 0x18(r4)
/* 813B3C44 | 7C 9B 23 78 */	mr r27, r4
/* 813B3C48 | 3B DE E2 90 */	addi r30, r30, lbl_8164E290@l
/* 813B3C4C | 38 8D 89 BF */	li r4, lbl_816969FF@sda21
/* 813B3C50 | 48 16 C1 ED */	bl fn_8151FE3C
/* 813B3C54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3C58 | 7C 7C 1B 78 */	mr r28, r3
/* 813B3C5C | 41 82 00 0C */	beq .L_813B3C68
/* 813B3C60 | 90 7A 00 78 */	stw r3, 0x78(r26)
/* 813B3C64 | 48 00 00 9C */	b .L_813B3D00
.L_813B3C68:
/* 813B3C68 | 4B F8 1D 85 */	bl getLanguage__Q23ipl6SystemFv
/* 813B3C6C | 54 60 10 3A */	slwi r0, r3, 2
/* 813B3C70 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813B3C74 | 7C A3 00 2E */	lwzx r5, r3, r0
/* 813B3C78 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813B3C7C | 38 8D 89 C3 */	li r4, lbl_81696A03@sda21
/* 813B3C80 | 4C C6 31 82 */	crclr cr1eq
/* 813B3C84 | 48 24 CD FD */	bl sprintf
/* 813B3C88 | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 813B3C8C | 38 81 00 14 */	addi r4, r1, 0x14
/* 813B3C90 | 48 16 C1 AD */	bl fn_8151FE3C
/* 813B3C94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3C98 | 7C 7C 1B 78 */	mr r28, r3
/* 813B3C9C | 41 82 00 0C */	beq .L_813B3CA8
/* 813B3CA0 | 90 7A 00 78 */	stw r3, 0x78(r26)
/* 813B3CA4 | 48 00 00 5C */	b .L_813B3D00
.L_813B3CA8:
/* 813B3CA8 | 4B F8 1D E5 */	bl getRegion__Q23ipl6SystemFv
/* 813B3CAC | 54 63 30 32 */	slwi r3, r3, 6
/* 813B3CB0 | 38 1E 00 98 */	addi r0, r30, 0x98
/* 813B3CB4 | 7F A0 1A 14 */	add r29, r0, r3
/* 813B3CB8 | 3B E0 00 00 */	li r31, 0x0
/* 813B3CBC | 48 00 00 38 */	b .L_813B3CF4
.L_813B3CC0:
/* 813B3CC0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813B3CC4 | 38 8D 89 C3 */	li r4, lbl_81696A03@sda21
/* 813B3CC8 | 4C C6 31 82 */	crclr cr1eq
/* 813B3CCC | 48 24 CD B5 */	bl sprintf
/* 813B3CD0 | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 813B3CD4 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813B3CD8 | 48 16 C1 65 */	bl fn_8151FE3C
/* 813B3CDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3CE0 | 7C 7C 1B 78 */	mr r28, r3
/* 813B3CE4 | 41 82 00 0C */	beq .L_813B3CF0
/* 813B3CE8 | 90 7A 00 78 */	stw r3, 0x78(r26)
/* 813B3CEC | 48 00 00 14 */	b .L_813B3D00
.L_813B3CF0:
/* 813B3CF0 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_813B3CF4:
/* 813B3CF4 | 7C BD F8 2E */	lwzx r5, r29, r31
/* 813B3CF8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813B3CFC | 40 82 FF C4 */	bne .L_813B3CC0
.L_813B3D00:
/* 813B3D00 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813B3D04 | 41 82 00 94 */	beq .L_813B3D98
/* 813B3D08 | 38 7C 00 0C */	addi r3, r28, 0xc
/* 813B3D0C | 4B FB 61 29 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B3D10 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813B3D14 | 48 00 00 2C */	b .L_813B3D40
.L_813B3D18:
/* 813B3D18 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813B3D1C | 38 80 00 01 */	li r4, 0x1
/* 813B3D20 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813B3D24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B3D28 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813B3D2C | 7D 89 03 A6 */	mtctr r12
/* 813B3D30 | 4E 80 04 21 */	bctrl
/* 813B3D34 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813B3D38 | 38 80 00 00 */	li r4, 0x0
/* 813B3D3C | 4B FF EA 99 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813B3D40:
/* 813B3D40 | 38 7C 00 0C */	addi r3, r28, 0xc
/* 813B3D44 | 4B FB 60 F9 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B3D48 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813B3D4C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B3D50 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813B3D54 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813B3D58 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813B3D5C | 4B FB 60 E9 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813B3D60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3D64 | 40 82 FF B4 */	bne .L_813B3D18
/* 813B3D68 | 7F 63 DB 78 */	mr r3, r27
/* 813B3D6C | 38 9E 04 C4 */	addi r4, r30, 0x4c4
/* 813B3D70 | 4B FB 69 55 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813B3D74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3D78 | 41 82 00 20 */	beq .L_813B3D98
/* 813B3D7C | 7F 63 DB 78 */	mr r3, r27
/* 813B3D80 | 7F 85 E3 78 */	mr r5, r28
/* 813B3D84 | 38 9E 04 C4 */	addi r4, r30, 0x4c4
/* 813B3D88 | 38 C0 00 01 */	li r6, 0x1
/* 813B3D8C | 38 E0 00 01 */	li r7, 0x1
/* 813B3D90 | 4B FB 67 B1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb
/* 813B3D94 | 90 7A 00 7C */	stw r3, 0x7c(r26)
.L_813B3D98:
/* 813B3D98 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B3D9C | 48 24 57 6D */	bl _restgpr_26
/* 813B3DA0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813B3DA4 | 7C 08 03 A6 */	mtlr r0
/* 813B3DA8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813B3DAC | 4E 80 00 20 */	blr
.endfn bindNewAnm__Q33ipl5scene10ChannelObjFPQ33ipl6layout6Object

# .text:0x282C | 0x813B3DB0 | size: 0xAC
# ipl::scene::ChannelObj::updateNew()
.fn updateNew__Q33ipl5scene10ChannelObjFv, global
/* 813B3DB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B3DB4 | 7C 08 02 A6 */	mflr r0
/* 813B3DB8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B3DBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B3DC0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B3DC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B3DC8 | 7C 7F 1B 78 */	mr r31, r3
/* 813B3DCC | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813B3DD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3DD4 | 41 82 00 0C */	beq .L_813B3DE0
/* 813B3DD8 | 38 00 00 00 */	li r0, 0x0
/* 813B3DDC | 48 00 00 08 */	b .L_813B3DE4
.L_813B3DE0:
/* 813B3DE0 | 80 04 00 8C */	lwz r0, 0x8c(r4)
.L_813B3DE4:
/* 813B3DE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3DE8 | 41 82 00 60 */	beq .L_813B3E48
/* 813B3DEC | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813B3DF0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B3DF4 | 41 82 00 38 */	beq .L_813B3E2C
/* 813B3DF8 | 40 80 00 50 */	bge .L_813B3E48
/* 813B3DFC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B3E00 | 40 80 00 08 */	bge .L_813B3E08
/* 813B3E04 | 48 00 00 44 */	b .L_813B3E48
.L_813B3E08:
/* 813B3E08 | 7F E3 FB 78 */	mr r3, r31
/* 813B3E0C | 48 00 00 51 */	bl setupNew__Q33ipl5scene10ChannelObjFv
/* 813B3E10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3E14 | 41 82 00 34 */	beq .L_813B3E48
/* 813B3E18 | 38 60 00 02 */	li r3, 0x2
/* 813B3E1C | 38 00 00 00 */	li r0, 0x0
/* 813B3E20 | 90 7F 00 84 */	stw r3, 0x84(r31)
/* 813B3E24 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813B3E28 | 48 00 00 20 */	b .L_813B3E48
.L_813B3E2C:
/* 813B3E2C | 80 83 00 88 */	lwz r4, 0x88(r3)
/* 813B3E30 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813B3E34 | 28 00 10 68 */	cmplwi r0, 0x1068
/* 813B3E38 | 90 03 00 88 */	stw r0, 0x88(r3)
/* 813B3E3C | 41 80 00 0C */	blt .L_813B3E48
/* 813B3E40 | 38 00 00 01 */	li r0, 0x1
/* 813B3E44 | 90 03 00 84 */	stw r0, 0x84(r3)
.L_813B3E48:
/* 813B3E48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B3E4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B3E50 | 7C 08 03 A6 */	mtlr r0
/* 813B3E54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B3E58 | 4E 80 00 20 */	blr
.endfn updateNew__Q33ipl5scene10ChannelObjFv

# .text:0x28D8 | 0x813B3E5C | size: 0x1D4
# ipl::scene::ChannelObj::setupNew()
.fn setupNew__Q33ipl5scene10ChannelObjFv, global
/* 813B3E5C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813B3E60 | 7C 08 02 A6 */	mflr r0
/* 813B3E64 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B3E68 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813B3E6C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B3E70 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813B3E74 | 7C 7F 1B 78 */	mr r31, r3
/* 813B3E78 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 813B3E7C | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813B3E80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3E84 | 41 82 00 0C */	beq .L_813B3E90
/* 813B3E88 | 38 00 00 00 */	li r0, 0x0
/* 813B3E8C | 48 00 00 08 */	b .L_813B3E94
.L_813B3E90:
/* 813B3E90 | 80 04 00 8C */	lwz r0, 0x8c(r4)
.L_813B3E94:
/* 813B3E94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3E98 | 41 82 00 34 */	beq .L_813B3ECC
/* 813B3E9C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B3EA0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B3EA4 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813B3EA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3EAC | 41 82 00 0C */	beq .L_813B3EB8
/* 813B3EB0 | 38 60 00 00 */	li r3, 0x0
/* 813B3EB4 | 48 00 00 08 */	b .L_813B3EBC
.L_813B3EB8:
/* 813B3EB8 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813B3EBC:
/* 813B3EBC | 38 80 00 00 */	li r4, 0x0
/* 813B3EC0 | 4B F8 FA 9D */	bl getNewTitleTbl__Q33ipl5nwc247ManagerCFPUl
/* 813B3EC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3EC8 | 40 82 00 0C */	bne .L_813B3ED4
.L_813B3ECC:
/* 813B3ECC | 38 60 00 00 */	li r3, 0x0
/* 813B3ED0 | 48 00 01 48 */	b .L_813B4018
.L_813B3ED4:
/* 813B3ED4 | 7F E3 FB 78 */	mr r3, r31
/* 813B3ED8 | 4B FF E2 ED */	bl isDiskChannel__Q33ipl5scene10ChannelObjCFv
/* 813B3EDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3EE0 | 41 82 00 50 */	beq .L_813B3F30
/* 813B3EE4 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B3EE8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813B3EEC | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B3EF0 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813B3EF4 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 813B3EF8 | 4B FA CC 31 */	bl getDiskInfo__Q33ipl3bs27ManagerFPPcPPc
/* 813B3EFC | 88 1E 02 BC */	lbz r0, 0x2bc(r30)
/* 813B3F00 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 813B3F04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3F08 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 813B3F0C | 41 82 00 0C */	beq .L_813B3F18
/* 813B3F10 | 38 60 00 00 */	li r3, 0x0
/* 813B3F14 | 48 00 00 08 */	b .L_813B3F1C
.L_813B3F18:
/* 813B3F18 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
.L_813B3F1C:
/* 813B3F1C | 4B F8 FA B5 */	bl isNewMessageThere__Q33ipl5nwc247ManagerCFUl
/* 813B3F20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3F24 | 40 82 00 5C */	bne .L_813B3F80
/* 813B3F28 | 38 60 00 01 */	li r3, 0x1
/* 813B3F2C | 48 00 00 EC */	b .L_813B4018
.L_813B3F30:
/* 813B3F30 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B3F34 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B3F38 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813B3F3C | 80 64 00 84 */	lwz r3, 0x84(r4)
/* 813B3F40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3F44 | 41 82 00 0C */	beq .L_813B3F50
/* 813B3F48 | 3B C0 00 00 */	li r30, 0x0
/* 813B3F4C | 48 00 00 08 */	b .L_813B3F54
.L_813B3F50:
/* 813B3F50 | 83 C4 00 8C */	lwz r30, 0x8c(r4)
.L_813B3F54:
/* 813B3F54 | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 813B3F58 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813B3F5C | 4B F8 43 4D */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813B3F60 | 38 00 FF FF */	li r0, -0x1
/* 813B3F64 | 7F C3 F3 78 */	mr r3, r30
/* 813B3F68 | 7C 84 00 38 */	and r4, r4, r0
/* 813B3F6C | 4B F8 FA 65 */	bl isNewMessageThere__Q33ipl5nwc247ManagerCFUl
/* 813B3F70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3F74 | 40 82 00 0C */	bne .L_813B3F80
/* 813B3F78 | 38 60 00 01 */	li r3, 0x1
/* 813B3F7C | 48 00 00 9C */	b .L_813B4018
.L_813B3F80:
/* 813B3F80 | 88 1F 00 80 */	lbz r0, 0x80(r31)
/* 813B3F84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B3F88 | 40 82 00 8C */	bne .L_813B4014
/* 813B3F8C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813B3F90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3F94 | 41 82 00 78 */	beq .L_813B400C
/* 813B3F98 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813B3F9C | 4B FB 5E 99 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B3FA0 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813B3FA4 | 48 00 00 20 */	b .L_813B3FC4
.L_813B3FA8:
/* 813B3FA8 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813B3FAC | 38 80 00 01 */	li r4, 0x1
/* 813B3FB0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813B3FB4 | 4B F9 04 61 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B3FB8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813B3FBC | 38 80 00 00 */	li r4, 0x0
/* 813B3FC0 | 4B FF E8 15 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813B3FC4:
/* 813B3FC4 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813B3FC8 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813B3FCC | 4B FB 5E 71 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B3FD0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813B3FD4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B3FD8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813B3FDC | 38 61 00 0C */	addi r3, r1, 0xc
/* 813B3FE0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813B3FE4 | 4B FB 5E 61 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813B3FE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B3FEC | 40 82 FF BC */	bne .L_813B3FA8
/* 813B3FF0 | 83 DF 00 7C */	lwz r30, 0x7c(r31)
/* 813B3FF4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B3FF8 | 41 82 00 14 */	beq .L_813B400C
/* 813B3FFC | 7F C3 F3 78 */	mr r3, r30
/* 813B4000 | 4B FA E8 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B4004 | 38 00 00 01 */	li r0, 0x1
/* 813B4008 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813B400C:
/* 813B400C | 38 00 00 01 */	li r0, 0x1
/* 813B4010 | 98 1F 00 80 */	stb r0, 0x80(r31)
.L_813B4014:
/* 813B4014 | 38 60 00 01 */	li r3, 0x1
.L_813B4018:
/* 813B4018 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813B401C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813B4020 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 813B4024 | 7C 08 03 A6 */	mtlr r0
/* 813B4028 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813B402C | 4E 80 00 20 */	blr
.endfn setupNew__Q33ipl5scene10ChannelObjFv

# 0x8160FFD0..0x816102E0 | size: 0x310
.rodata
.balign 8

# .rodata:0x0 | 0x8160FFD0 | size: 0x30
.obj lbl_8160FFD0, global
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
.endobj lbl_8160FFD0

# .rodata:0x30 | 0x81610000 | size: 0x2D0
.obj lbl_81610000, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0xFFFFFFFF
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
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
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
	.4byte 0xFFFFFFFF
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
	.4byte 0xFFFFFFFF
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
	.4byte 0xFFFFFFFF
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
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000007
	.4byte 0xFFFFFFFF
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
.endobj lbl_81610000

# .rodata:0x300 | 0x816102D0 | size: 0x10
.obj lbl_816102D0, global
	.4byte 0x42800000
	.4byte 0x42400000
	.4byte 0x42AA0000
	.4byte 0x42400000
.endobj lbl_816102D0

# 0x8164E290..0x8164E768 | size: 0x4D8
.data
.balign 8

# .data:0x0 | 0x8164E290 | size: 0x9
.obj lbl_8164E290, global
	.string "Cursur_a"
.endobj lbl_8164E290

# .data:0x9 | 0x8164E299 | size: 0x1B
.obj lbl_8164E299, global
	.string "my_IplTop_d_FocusOff.brlan"
.endobj lbl_8164E299

# .data:0x24 | 0x8164E2B4 | size: 0x1A
.obj lbl_8164E2B4, global
	.string "my_IplTop_d_FocusOn.brlan"
.endobj lbl_8164E2B4

# .data:0x3E | 0x8164E2CE | size: 0x1A
.obj lbl_8164E2CE, global
	.4byte 0x6D795F49
	.4byte 0x706C546F
	.4byte 0x705F645F
	.4byte 0x53656C65
	.4byte 0x63742E62
	.4byte 0x726C616E
	.2byte 0x0000
.endobj lbl_8164E2CE

# .data:0x58 | 0x8164E2E8 | size: 0xC
.obj lbl_8164E2E8, global
	.4byte lbl_8164E299
	.4byte lbl_8164E2B4
	.4byte lbl_8164E2CE
.endobj lbl_8164E2E8

# .data:0x64 | 0x8164E2F4 | size: 0xC
.obj lbl_8164E2F4, global
	.4byte 0x545F4261
	.4byte 0x6C6C6F6F
	.4byte 0x6E000000
.endobj lbl_8164E2F4

# .data:0x70 | 0x8164E300 | size: 0x28
.obj lbl_8164E300, global
	.4byte lbl_816969B8
	.4byte lbl_816969BC
	.4byte lbl_816969C0
	.4byte lbl_816969C4
	.4byte lbl_816969C8
	.4byte lbl_816969CC
	.4byte lbl_816969D0
	.4byte lbl_816969D4
	.4byte lbl_816969BC
	.4byte lbl_816969D8
.endobj lbl_8164E300

# .data:0x98 | 0x8164E328 | size: 0x387
.obj lbl_8164E328, global
	.4byte lbl_816969B8
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
	.4byte lbl_816969BC
	.4byte lbl_816969C4
	.4byte lbl_816969C8
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
	.4byte lbl_816969BC
	.4byte lbl_816969C4
	.4byte lbl_816969C0
	.4byte lbl_816969C8
	.4byte lbl_816969CC
	.4byte lbl_816969D0
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
	.4byte lbl_816969D8
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
	.4byte lbl_816969D4
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
	.4byte 0x4D6F6475
	.4byte 0x6C652773
	.4byte 0x20496D70
	.4byte 0x6F727453
	.4byte 0x796D626F
	.4byte 0x6C206973
	.4byte 0x20726573
	.4byte 0x6F6C7665
	.4byte 0x6420616C
	.4byte 0x6C2E0A00
	.4byte 0x2564206D
	.4byte 0x6F64756C
	.4byte 0x65277320
	.4byte 0x496D706F
	.4byte 0x72745379
	.4byte 0x6D626F6C
	.4byte 0x73206172
	.4byte 0x65206E6F
	.4byte 0x74207265
	.4byte 0x736F6C76
	.4byte 0x65642E0A
	.4byte 0x00546872
	.4byte 0x65616443
	.4byte 0x616C6300
	.4byte 0x69636F6E
	.4byte 0x2E62726C
	.4byte 0x79740069
	.4byte 0x636F6E2E
	.4byte 0x62726C61
	.4byte 0x6E006963
	.4byte 0x6F6E5F57
	.4byte 0x686F6C65
	.4byte 0x2E62726C
	.byte 0x61, 0x6E, 0x00
.endobj lbl_8164E328

# .data:0x41F | 0x8164E6AF | size: 0x20
.obj lbl_8164E6AF, global
	.4byte 0x25735F52
	.4byte 0x736F2564
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x636F6E5F
	.4byte 0x53746172
	.4byte 0x742E6272
	.4byte 0x6C616E00
.endobj lbl_8164E6AF

# .data:0x43F | 0x8164E6CF | size: 0x12
.obj lbl_8164E6CF, global
	.string "my_IplTop_b.brlyt"
.endobj lbl_8164E6CF

# .data:0x451 | 0x8164E6E1 | size: 0x12
.obj lbl_8164E6E1, global
	.string "my_IplTop_b.brlan"
.endobj lbl_8164E6E1

# .data:0x463 | 0x8164E6F3 | size: 0x12
.obj lbl_8164E6F3, global
	.string "my_IplTop_d.brlyt"
.endobj lbl_8164E6F3

# .data:0x475 | 0x8164E705 | size: 0x19
.obj lbl_8164E705, global
	.string "my_IplTopBalloon_a.brlyt"
.endobj lbl_8164E705

# .data:0x48E | 0x8164E71E | size: 0x26
.obj lbl_8164E71E, global
	.string "my_IplTopBalloon_a_BalloonInOut.brlan"
.endobj lbl_8164E71E

# .data:0x4B4 | 0x8164E744 | size: 0x1F
.obj lbl_8164E744, global
	.string "WIPL_SE_BALLOON\000icon_New.brlan"
.endobj lbl_8164E744

# .data:0x4D3 | 0x8164E763 | size: 0x5
.obj gap_08_8164E763_data, global
.hidden gap_08_8164E763_data
	.4byte 0x00000000
	.byte 0x00
.endobj gap_08_8164E763_data

# 0x816949A8..0x816949F0 | size: 0x48
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816949A8 | size: 0x4
.obj lbl_816949A8, global
	.float 1
.endobj lbl_816949A8

# .sdata2:0x4 | 0x816949AC | size: 0x4
.obj lbl_816949AC, global
	.float 0
.endobj lbl_816949AC

# .sdata2:0x8 | 0x816949B0 | size: 0x8
.obj lbl_816949B0, global
	.double 4503601774854144
.endobj lbl_816949B0

# .sdata2:0x10 | 0x816949B8 | size: 0x2
.obj lbl_816949B8, global
	.2byte 0x0000
.endobj lbl_816949B8

# .sdata2:0x12 | 0x816949BA | size: 0x2
.obj lbl_816949BA, global
	.2byte 0x0000
.endobj lbl_816949BA

# .sdata2:0x14 | 0x816949BC | size: 0x2
.obj lbl_816949BC, global
	.2byte 0x0000
.endobj lbl_816949BC

# .sdata2:0x16 | 0x816949BE | size: 0x2
.obj lbl_816949BE, global
	.2byte 0x00FF
.endobj lbl_816949BE

# .sdata2:0x18 | 0x816949C0 | size: 0x4
.obj lbl_816949C0, global
	.float 391.5
.endobj lbl_816949C0

# .sdata2:0x1C | 0x816949C4 | size: 0x4
.obj lbl_816949C4, global
	.float -1.179962
.endobj lbl_816949C4

# .sdata2:0x20 | 0x816949C8 | size: 0x4
.obj lbl_816949C8, global
	.float 40
.endobj lbl_816949C8

# .sdata2:0x24 | 0x816949CC | size: 0x4
.obj lbl_816949CC, global
	.float 160
.endobj lbl_816949CC

# .sdata2:0x28 | 0x816949D0 | size: 0x4
.obj lbl_816949D0, global
	.float -2
.endobj lbl_816949D0

# .sdata2:0x2C | 0x816949D4 | size: 0x4
.obj lbl_816949D4, global
	.float 0.5
.endobj lbl_816949D4

# .sdata2:0x30 | 0x816949D8 | size: 0x4
.obj lbl_816949D8, global
	.float -1
.endobj lbl_816949D8

# .sdata2:0x34 | 0x816949DC | size: 0x4
.obj lbl_816949DC, global
	.float 60
.endobj lbl_816949DC

# .sdata2:0x38 | 0x816949E0 | size: 0x4
.obj lbl_816949E0, global
	.float 20
.endobj lbl_816949E0

# .sdata2:0x3C | 0x816949E4 | size: 0x4
.obj gap_09_816949E4_sdata2, global
.hidden gap_09_816949E4_sdata2
	.4byte 0x00000000
.endobj gap_09_816949E4_sdata2

# .sdata2:0x40 | 0x816949E8 | size: 0x8
.obj lbl_816949E8, global
	.double 4503599627370496
.endobj lbl_816949E8

# 0x81696998..0x81696A10 | size: 0x78
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696998 | size: 0x4
.obj lbl_81696998, global
	.4byte lbl_8164E290
.endobj lbl_81696998

# .sdata:0x4 | 0x8169699C | size: 0x4
.obj lbl_8169699C, global
	.4byte lbl_8164E2F4
.endobj lbl_8169699C

# .sdata:0x8 | 0x816969A0 | size: 0x8
.obj lbl_816969A0, global
	.4byte 0x575F4261
	.4byte 0x73650000
.endobj lbl_816969A0

# .sdata:0x10 | 0x816969A8 | size: 0x4
.obj lbl_816969A8, global
	.4byte lbl_816969A0
.endobj lbl_816969A8

# .sdata:0x14 | 0x816969AC | size: 0x8
.obj lbl_816969AC, global
	.string "W_Shade"
.endobj lbl_816969AC

# .sdata:0x1C | 0x816969B4 | size: 0x4
.obj lbl_816969B4, global
	.4byte lbl_816969AC
.endobj lbl_816969B4

# .sdata:0x20 | 0x816969B8 | size: 0x4
.obj lbl_816969B8, global
	.string "JPN"
.endobj lbl_816969B8

# .sdata:0x24 | 0x816969BC | size: 0x4
.obj lbl_816969BC, global
	.string "ENG"
.endobj lbl_816969BC

# .sdata:0x28 | 0x816969C0 | size: 0x4
.obj lbl_816969C0, global
	.string "GER"
.endobj lbl_816969C0

# .sdata:0x2C | 0x816969C4 | size: 0x4
.obj lbl_816969C4, global
	.string "FRA"
.endobj lbl_816969C4

# .sdata:0x30 | 0x816969C8 | size: 0x4
.obj lbl_816969C8, global
	.string "SPA"
.endobj lbl_816969C8

# .sdata:0x34 | 0x816969CC | size: 0x4
.obj lbl_816969CC, global
	.string "ITA"
.endobj lbl_816969CC

# .sdata:0x38 | 0x816969D0 | size: 0x4
.obj lbl_816969D0, global
	.string "NED"
.endobj lbl_816969D0

# .sdata:0x3C | 0x816969D4 | size: 0x4
.obj lbl_816969D4, global
	.string "CHN"
.endobj lbl_816969D4

# .sdata:0x40 | 0x816969D8 | size: 0x4
.obj lbl_816969D8, global
	.string "KOR"
.endobj lbl_816969D8

# .sdata:0x44 | 0x816969DC | size: 0x5
.obj lbl_816969DC, global
	.string "Calc"
.endobj lbl_816969DC

# .sdata:0x49 | 0x816969E1 | size: 0x7
.obj lbl_816969E1, global
	.string "Create"
.endobj lbl_816969E1

# .sdata:0x50 | 0x816969E8 | size: 0x4
.obj lbl_816969E8, global
	.string "arc"
.endobj lbl_816969E8

# .sdata:0x54 | 0x816969EC | size: 0x6
.obj lbl_816969EC, global
	.string "Rso%d"
.endobj lbl_816969EC

# .sdata:0x5A | 0x816969F2 | size: 0x5
.obj lbl_816969F2, global
	.string "icon"
.endobj lbl_816969F2

# .sdata:0x5F | 0x816969F7 | size: 0x4
.obj lbl_816969F7, global
	.string "Ch0"
.endobj lbl_816969F7

# .sdata:0x63 | 0x816969FB | size: 0x4
.obj lbl_816969FB, global
	.string "Ch1"
.endobj lbl_816969FB

# .sdata:0x67 | 0x816969FF | size: 0x4
.obj lbl_816969FF, global
	.string "New"
.endobj lbl_816969FF

# .sdata:0x6B | 0x81696A03 | size: 0x7
.obj lbl_81696A03, global
	.string "New_%s"
.endobj lbl_81696A03

# .sdata:0x72 | 0x81696A0A | size: 0x6
.obj gap_11_81696A0A_sdata, global
.hidden gap_11_81696A0A_sdata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_11_81696A0A_sdata

# 0x81698B60..0x81698B68 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698B60 | size: 0x1
# ipl::scene::clock::m_already_shown_wii_menu
.obj m_already_shown_wii_menu__Q33ipl5scene5clock, global
	.skip 0x1
.endobj m_already_shown_wii_menu__Q33ipl5scene5clock

# .sbss:0x1 | 0x81698B61 | size: 0x7
.obj gap_12_81698B61_sbss, global
.hidden gap_12_81698B61_sbss
	.skip 0x7
.endobj gap_12_81698B61_sbss
