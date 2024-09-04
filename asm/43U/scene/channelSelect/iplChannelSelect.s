.include "macros.inc"
.file "iplChannelSelect.cpp"

# 0x813AA4CC..0x813B0910 | size: 0x6444
.text
.balign 4

# .text:0x0 | 0x813AA4CC | size: 0x2A8
# ipl::scene::ChannelSelect::ChannelSelect(EGG::Heap*, int)
.fn __ct__Q33ipl5scene13ChannelSelectFPQ23EGG4Heapi, global
/* 813AA4CC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813AA4D0 | 7C 08 02 A6 */	mflr r0
/* 813AA4D4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813AA4D8 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 813AA4DC | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 813AA4E0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813AA4E4 | 48 24 EF E1 */	bl _savegpr_28
/* 813AA4E8 | 7C 7E 1B 78 */	mr r30, r3
/* 813AA4EC | 7C 9F 23 78 */	mr r31, r4
/* 813AA4F0 | 7C BD 2B 78 */	mr r29, r5
/* 813AA4F4 | 48 06 0D 15 */	bl fn_8140B208
/* 813AA4F8 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene13ChannelSelect@ha
/* 813AA4FC | 3B 80 00 00 */	li r28, 0x0
/* 813AA500 | 38 84 E0 B8 */	addi r4, r4, __vt__Q33ipl5scene13ChannelSelect@l
/* 813AA504 | 93 9E 00 90 */	stw r28, 0x90(r30)
/* 813AA508 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 813AA50C | 38 60 00 10 */	li r3, 0x10
/* 813AA510 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 813AA514 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813AA518 | 48 24 DB 85 */	bl __nw__FUl
/* 813AA51C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA520 | 41 82 00 18 */	beq .L_813AA538
/* 813AA524 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene27CsChanSelButtonEventHandler@ha
/* 813AA528 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813AA52C | 38 84 E0 84 */	addi r4, r4, __vt__Q33ipl5scene27CsChanSelButtonEventHandler@l
/* 813AA530 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813AA534 | 93 C3 00 0C */	stw r30, 0xc(r3)
.L_813AA538:
/* 813AA538 | 90 7E 00 B8 */	stw r3, 0xb8(r30)
/* 813AA53C | 38 60 00 10 */	li r3, 0x10
/* 813AA540 | 48 24 DB 5D */	bl __nw__FUl
/* 813AA544 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA548 | 41 82 00 1C */	beq .L_813AA564
/* 813AA54C | 38 00 00 00 */	li r0, 0x0
/* 813AA550 | 3C 80 81 65 */	lis r4, lbl_8164E068@ha
/* 813AA554 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813AA558 | 38 84 E0 68 */	addi r4, r4, lbl_8164E068@l
/* 813AA55C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813AA560 | 93 C3 00 0C */	stw r30, 0xc(r3)
.L_813AA564:
/* 813AA564 | 3B 80 00 00 */	li r28, 0x0
/* 813AA568 | 90 7E 00 BC */	stw r3, 0xbc(r30)
/* 813AA56C | 93 9E 00 C0 */	stw r28, 0xc0(r30)
/* 813AA570 | 93 BE 00 C4 */	stw r29, 0xc4(r30)
/* 813AA574 | 48 1B FA 41 */	bl SCGetAspectRatio
/* 813AA578 | 3F A0 81 61 */	lis r29, lbl_8160FFA8@ha
/* 813AA57C | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813AA580 | 3B BD FF A8 */	addi r29, r29, lbl_8160FFA8@l
/* 813AA584 | 7C 1D 04 2E */	lfsx f0, r29, r0
/* 813AA588 | D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 813AA58C | 48 1B FA 29 */	bl SCGetAspectRatio
/* 813AA590 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813AA594 | 93 9E 00 F0 */	stw r28, 0xf0(r30)
/* 813AA598 | 7C 7D 02 14 */	add r3, r29, r0
/* 813AA59C | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813AA5A0 | 38 7E 01 08 */	addi r3, r30, 0x108
/* 813AA5A4 | 93 9E 00 F8 */	stw r28, 0xf8(r30)
/* 813AA5A8 | D0 1E 00 D4 */	stfs f0, 0xd4(r30)
/* 813AA5AC | 93 9E 00 FC */	stw r28, 0xfc(r30)
/* 813AA5B0 | 48 00 63 61 */	bl __ct__Q33ipl5scene5clockFv
/* 813AA5B4 | 38 80 00 01 */	li r4, 0x1
/* 813AA5B8 | 38 00 00 04 */	li r0, 0x4
/* 813AA5BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AA5C0 | 93 9E 01 68 */	stw r28, 0x168(r30)
/* 813AA5C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AA5C8 | 90 9E 01 80 */	stw r4, 0x180(r30)
/* 813AA5CC | 9B 9E 01 84 */	stb r28, 0x184(r30)
/* 813AA5D0 | 93 9E 01 88 */	stw r28, 0x188(r30)
/* 813AA5D4 | 93 9E 01 8C */	stw r28, 0x18c(r30)
/* 813AA5D8 | 90 1E 00 CC */	stw r0, 0xcc(r30)
/* 813AA5DC | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 813AA5E0 | 80 03 04 E0 */	lwz r0, 0x4e0(r3)
/* 813AA5E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AA5E8 | 90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 813AA5EC | 40 82 00 0C */	bne .L_813AA5F8
/* 813AA5F0 | 9B 9E 01 00 */	stb r28, 0x100(r30)
/* 813AA5F4 | 48 00 00 08 */	b .L_813AA5FC
.L_813AA5F8:
/* 813AA5F8 | 98 9E 01 00 */	stb r4, 0x100(r30)
.L_813AA5FC:
/* 813AA5FC | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813AA600 | 80 9E 00 C8 */	lwz r4, 0xc8(r30)
/* 813AA604 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813AA608 | 7C 04 00 00 */	cmpw r4, r0
/* 813AA60C | 40 82 00 10 */	bne .L_813AA61C
/* 813AA610 | 38 00 00 00 */	li r0, 0x0
/* 813AA614 | 98 1E 01 01 */	stb r0, 0x101(r30)
/* 813AA618 | 48 00 00 0C */	b .L_813AA624
.L_813AA61C:
/* 813AA61C | 38 00 00 01 */	li r0, 0x1
/* 813AA620 | 98 1E 01 01 */	stb r0, 0x101(r30)
.L_813AA624:
/* 813AA624 | C0 22 85 48 */	lfs f1, lbl_81694948@sda21(r0)
/* 813AA628 | 38 00 00 03 */	li r0, 0x3
/* 813AA62C | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 813AA630 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813AA634 | FC 40 08 90 */	fmr f2, f1
/* 813AA638 | FC 60 08 90 */	fmr f3, f1
/* 813AA63C | 4B FB 84 21 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AA640 | 38 7E 00 D8 */	addi r3, r30, 0xd8
/* 813AA644 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813AA648 | 4B F9 A0 3D */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AA64C | C0 02 85 4C */	lfs f0, lbl_8169494C@sda21(r0)
/* 813AA650 | 38 7E 00 E4 */	addi r3, r30, 0xe4
/* 813AA654 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AA658 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813AA65C | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813AA660 | 4B F8 C1 91 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 813AA664 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813AA668 | 4B F8 BD C1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813AA66C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813AA670 | 4B F8 B2 DD */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813AA674 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813AA678 | 4B F8 BD B1 */	bl __ct__Q34nw4r2ut4RectFv
/* 813AA67C | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813AA680 | 4B F8 B2 F1 */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813AA684 | C0 61 00 34 */	lfs f3, 0x34(r1)
/* 813AA688 | C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 813AA68C | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 813AA690 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813AA694 | EC 43 10 28 */	fsubs f2, f3, f2
/* 813AA698 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813AA69C | EF E0 10 24 */	fdivs f31, f0, f2
/* 813AA6A0 | 48 1B F9 15 */	bl SCGetAspectRatio
/* 813AA6A4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813AA6A8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813AA6AC | 40 82 00 08 */	bne .L_813AA6B4
/* 813AA6B0 | 48 00 00 08 */	b .L_813AA6B8
.L_813AA6B4:
/* 813AA6B4 | C3 E2 85 4C */	lfs f31, lbl_8169494C@sda21(r0)
.L_813AA6B8:
/* 813AA6B8 | D3 FE 00 EC */	stfs f31, 0xec(r30)
/* 813AA6BC | 38 7E 02 90 */	addi r3, r30, 0x290
/* 813AA6C0 | 38 80 00 00 */	li r4, 0x0
/* 813AA6C4 | 38 A0 00 34 */	li r5, 0x34
/* 813AA6C8 | 4B F8 5C 6D */	bl memset
/* 813AA6CC | 7F E4 FB 78 */	mr r4, r31
/* 813AA6D0 | 38 60 3D 28 */	li r3, 0x3d28
/* 813AA6D4 | 38 A0 00 06 */	li r5, 0x6
/* 813AA6D8 | 48 24 CF 9D */	bl fn_815F7674
/* 813AA6DC | 90 7E 01 7C */	stw r3, 0x17c(r30)
/* 813AA6E0 | 3F E0 00 02 */	lis r31, 0x2
/* 813AA6E4 | 38 7F 12 B8 */	addi r3, r31, 0x12b8
/* 813AA6E8 | 38 80 00 31 */	li r4, 0x31
/* 813AA6EC | 38 A0 00 20 */	li r5, 0x20
/* 813AA6F0 | 48 24 E5 79 */	bl fn_815F8C68
/* 813AA6F4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813AA6F8 | 38 9F 12 B8 */	addi r4, r31, 0x12b8
/* 813AA6FC | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813AA700 | 38 C0 00 20 */	li r6, 0x20
/* 813AA704 | 80 A5 00 28 */	lwz r5, 0x28(r5)
/* 813AA708 | 38 E0 00 02 */	li r7, 0x2
/* 813AA70C | 48 24 E3 B9 */	bl fn_815F8AC4
/* 813AA710 | 90 7E 01 6C */	stw r3, 0x16c(r30)
/* 813AA714 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813AA718 | 38 80 00 00 */	li r4, 0x0
/* 813AA71C | 48 16 79 41 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813AA720 | 80 9E 00 C8 */	lwz r4, 0xc8(r30)
/* 813AA724 | 7F C3 F3 78 */	mr r3, r30
/* 813AA728 | 38 A0 00 01 */	li r5, 0x1
/* 813AA72C | 48 00 22 A5 */	bl makeChannelList__Q33ipl5scene13ChannelSelectFib
/* 813AA730 | 7F C3 F3 78 */	mr r3, r30
/* 813AA734 | 48 00 27 B9 */	bl setupDiskChanObj__Q33ipl5scene13ChannelSelectFv
/* 813AA738 | 80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 813AA73C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813AA740 | 41 82 00 10 */	beq .L_813AA750
/* 813AA744 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813AA748 | 38 80 00 01 */	li r4, 0x1
/* 813AA74C | 4B FB 76 D5 */	bl setEnable__Q23ipl11TVRCManagerFi
.L_813AA750:
/* 813AA750 | 7F C3 F3 78 */	mr r3, r30
/* 813AA754 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 813AA758 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 813AA75C | 39 61 00 50 */	addi r11, r1, 0x50
/* 813AA760 | 48 24 ED B1 */	bl _restgpr_28
/* 813AA764 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813AA768 | 7C 08 03 A6 */	mtlr r0
/* 813AA76C | 38 21 00 60 */	addi r1, r1, 0x60
/* 813AA770 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene13ChannelSelectFPQ23EGG4Heapi

# .text:0x2A8 | 0x813AA774 | size: 0x40
# ipl::scene::clock::~clock()
.fn __dt__Q33ipl5scene5clockFv, global
/* 813AA774 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AA778 | 7C 08 02 A6 */	mflr r0
/* 813AA77C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA780 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AA784 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AA788 | 7C 7F 1B 78 */	mr r31, r3
/* 813AA78C | 41 82 00 10 */	beq .L_813AA79C
/* 813AA790 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813AA794 | 40 81 00 08 */	ble .L_813AA79C
/* 813AA798 | 48 24 D9 4D */	bl __dl__FPv
.L_813AA79C:
/* 813AA79C | 7F E3 FB 78 */	mr r3, r31
/* 813AA7A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AA7A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AA7A8 | 7C 08 03 A6 */	mtlr r0
/* 813AA7AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AA7B0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene5clockFv

# .text:0x2E8 | 0x813AA7B4 | size: 0x70
# ipl::scene::ChannelSelect::~ChannelSelect()
.fn __dt__Q33ipl5scene13ChannelSelectFv, global
/* 813AA7B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AA7B8 | 7C 08 02 A6 */	mflr r0
/* 813AA7BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA7C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AA7C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AA7C8 | 7C 9F 23 78 */	mr r31, r4
/* 813AA7CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AA7D0 | 7C 7E 1B 78 */	mr r30, r3
/* 813AA7D4 | 41 82 00 34 */	beq .L_813AA808
/* 813AA7D8 | 38 80 FF FF */	li r4, -0x1
/* 813AA7DC | 38 63 01 08 */	addi r3, r3, 0x108
/* 813AA7E0 | 4B FF FF 95 */	bl __dt__Q33ipl5scene5clockFv
/* 813AA7E4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813AA7E8 | 41 82 00 10 */	beq .L_813AA7F8
/* 813AA7EC | 7F C3 F3 78 */	mr r3, r30
/* 813AA7F0 | 38 80 00 00 */	li r4, 0x0
/* 813AA7F4 | 48 05 F4 71 */	bl fn_81409C64
.L_813AA7F8:
/* 813AA7F8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813AA7FC | 40 81 00 0C */	ble .L_813AA808
/* 813AA800 | 7F C3 F3 78 */	mr r3, r30
/* 813AA804 | 48 24 D8 E1 */	bl __dl__FPv
.L_813AA808:
/* 813AA808 | 7F C3 F3 78 */	mr r3, r30
/* 813AA80C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AA810 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AA814 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AA818 | 7C 08 03 A6 */	mtlr r0
/* 813AA81C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AA820 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene13ChannelSelectFv

# .text:0x358 | 0x813AA824 | size: 0x98
# ipl::scene::ChannelSelect::prepare()
.fn prepare__Q33ipl5scene13ChannelSelectFv, global
/* 813AA824 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AA828 | 7C 08 02 A6 */	mflr r0
/* 813AA82C | 3C A0 81 65 */	lis r5, lbl_8164DCB4@ha
/* 813AA830 | 38 C0 00 00 */	li r6, 0x0
/* 813AA834 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AA838 | 38 A5 DC B4 */	addi r5, r5, lbl_8164DCB4@l
/* 813AA83C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AA840 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813AA844 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813AA848 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AA84C | 7C 7E 1B 78 */	mr r30, r3
/* 813AA850 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813AA854 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813AA858 | 4B F9 30 5D */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813AA85C | 90 7E 00 64 */	stw r3, 0x64(r30)
/* 813AA860 | 3C A0 81 65 */	lis r5, lbl_8164DCC0@ha
/* 813AA864 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813AA868 | 38 A5 DC C0 */	addi r5, r5, lbl_8164DCC0@l
/* 813AA86C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813AA870 | 38 C0 00 00 */	li r6, 0x0
/* 813AA874 | 4B F9 30 41 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813AA878 | 90 7E 00 80 */	stw r3, 0x80(r30)
/* 813AA87C | 3B E0 00 00 */	li r31, 0x0
/* 813AA880 | 48 00 00 0C */	b .L_813AA88C
.L_813AA884:
/* 813AA884 | 7F E3 FB 78 */	mr r3, r31
/* 813AA888 | 48 00 6F 49 */	bl prepare__Q33ipl5scene10ChannelObjFv
.L_813AA88C:
/* 813AA88C | 7F E4 FB 78 */	mr r4, r31
/* 813AA890 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813AA894 | 48 16 7A 49 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AA898 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA89C | 7C 7F 1B 78 */	mr r31, r3
/* 813AA8A0 | 40 82 FF E4 */	bne .L_813AA884
/* 813AA8A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AA8A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AA8AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AA8B0 | 7C 08 03 A6 */	mtlr r0
/* 813AA8B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AA8B8 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene13ChannelSelectFv

# .text:0x3F0 | 0x813AA8BC | size: 0x17C
# ipl::scene::ChannelSelect::create()
.fn create__Q33ipl5scene13ChannelSelectFv, global
/* 813AA8BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AA8C0 | 7C 08 02 A6 */	mflr r0
/* 813AA8C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AA8C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AA8CC | 48 24 EB F9 */	bl _savegpr_28
/* 813AA8D0 | 3F E0 00 02 */	lis r31, 0x2
/* 813AA8D4 | 80 83 00 24 */	lwz r4, 0x24(r3)
/* 813AA8D8 | 7C 7C 1B 78 */	mr r28, r3
/* 813AA8DC | 38 A0 00 06 */	li r5, 0x6
/* 813AA8E0 | 38 7F 91 00 */	subi r3, r31, 0x6f00
/* 813AA8E4 | 48 24 CD 91 */	bl fn_815F7674
/* 813AA8E8 | 90 7C 01 70 */	stw r3, 0x170(r28)
/* 813AA8EC | 38 7F 59 00 */	addi r3, r31, 0x5900
/* 813AA8F0 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 813AA8F4 | 38 A0 00 06 */	li r5, 0x6
/* 813AA8F8 | 48 24 CD 7D */	bl fn_815F7674
/* 813AA8FC | 90 7C 01 74 */	stw r3, 0x174(r28)
/* 813AA900 | 3C 60 00 03 */	lis r3, 0x3
/* 813AA904 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 813AA908 | 38 63 21 00 */	addi r3, r3, 0x2100
/* 813AA90C | 38 A0 00 06 */	li r5, 0x6
/* 813AA910 | 48 24 CD 65 */	bl fn_815F7674
/* 813AA914 | 90 7C 01 78 */	stw r3, 0x178(r28)
/* 813AA918 | 7F 83 E3 78 */	mr r3, r28
/* 813AA91C | 48 00 0D 21 */	bl createChannelModulesHeap__Q33ipl5scene13ChannelSelectFv
/* 813AA920 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813AA924 | 3B C0 00 00 */	li r30, 0x0
/* 813AA928 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813AA92C | 48 00 00 28 */	b .L_813AA954
.L_813AA930:
/* 813AA930 | 3B A0 00 00 */	li r29, 0x0
.L_813AA934:
/* 813AA934 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813AA938 | 7F C4 F3 78 */	mr r4, r30
/* 813AA93C | 7F A5 EB 78 */	mr r5, r29
/* 813AA940 | 4B F8 E6 E1 */	bl clearRsoExBuf__Q33ipl7channel7ManagerFii
/* 813AA944 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813AA948 | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813AA94C | 41 80 FF E8 */	blt .L_813AA934
/* 813AA950 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_813AA954:
/* 813AA954 | 80 1C 00 CC */	lwz r0, 0xcc(r28)
/* 813AA958 | 7C 1E 00 00 */	cmpw r30, r0
/* 813AA95C | 41 80 FF D4 */	blt .L_813AA930
/* 813AA960 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813AA964 | 38 60 03 60 */	li r3, 0x360
/* 813AA968 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813AA96C | 38 A0 00 20 */	li r5, 0x20
/* 813AA970 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813AA974 | 48 24 D7 3D */	bl __nw__FUlPQ23EGG4Heapi
/* 813AA978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA97C | 41 82 00 0C */	beq .L_813AA988
/* 813AA980 | 80 9C 01 90 */	lwz r4, 0x190(r28)
/* 813AA984 | 4B FA EF 39 */	bl __ct__Q33ipl7channel9RsoThreadFPQ23EGG4Heap
.L_813AA988:
/* 813AA988 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813AA98C | 90 7C 01 94 */	stw r3, 0x194(r28)
/* 813AA990 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813AA994 | 80 64 00 84 */	lwz r3, 0x84(r4)
/* 813AA998 | 4B F8 E4 2D */	bl setDiskChannelName__Q33ipl7channel7ManagerFv
/* 813AA99C | 7F 83 E3 78 */	mr r3, r28
/* 813AA9A0 | 48 00 0D 25 */	bl createBaseLayout__Q33ipl5scene13ChannelSelectFv
/* 813AA9A4 | 7F 83 E3 78 */	mr r3, r28
/* 813AA9A8 | 48 00 10 7D */	bl createDiskLayout__Q33ipl5scene13ChannelSelectFv
/* 813AA9AC | 80 7C 00 CC */	lwz r3, 0xcc(r28)
/* 813AA9B0 | 80 9C 00 C8 */	lwz r4, 0xc8(r28)
/* 813AA9B4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813AA9B8 | 7C 04 00 00 */	cmpw r4, r0
/* 813AA9BC | 40 80 00 14 */	bge .L_813AA9D0
/* 813AA9C0 | 7F 83 E3 78 */	mr r3, r28
/* 813AA9C4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813AA9C8 | 38 A0 00 00 */	li r5, 0x0
/* 813AA9CC | 48 00 20 05 */	bl makeChannelList__Q33ipl5scene13ChannelSelectFib
.L_813AA9D0:
/* 813AA9D0 | 80 9C 00 C8 */	lwz r4, 0xc8(r28)
/* 813AA9D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813AA9D8 | 40 81 00 14 */	ble .L_813AA9EC
/* 813AA9DC | 7F 83 E3 78 */	mr r3, r28
/* 813AA9E0 | 38 84 FF FF */	subi r4, r4, 0x1
/* 813AA9E4 | 38 A0 00 00 */	li r5, 0x0
/* 813AA9E8 | 48 00 1F E9 */	bl makeChannelList__Q33ipl5scene13ChannelSelectFib
.L_813AA9EC:
/* 813AA9EC | 7F 83 E3 78 */	mr r3, r28
/* 813AA9F0 | 48 00 12 D5 */	bl createChannelThumbnails__Q33ipl5scene13ChannelSelectFv
/* 813AA9F4 | 7F 83 E3 78 */	mr r3, r28
/* 813AA9F8 | 48 00 15 71 */	bl calcDiskLayout__Q33ipl5scene13ChannelSelectFv
/* 813AA9FC | 7F 83 E3 78 */	mr r3, r28
/* 813AAA00 | 48 00 41 21 */	bl createChanMoveLayout__Q33ipl5scene13ChannelSelectFv
/* 813AAA04 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 813AAA08 | 38 7C 01 08 */	addi r3, r28, 0x108
/* 813AAA0C | 80 BC 00 64 */	lwz r5, 0x64(r28)
/* 813AAA10 | 48 00 5F 0D */	bl init__Q33ipl5scene5clockFPQ23EGG4HeapPQ33ipl4nand10LayoutFile
/* 813AAA14 | 38 00 00 02 */	li r0, 0x2
/* 813AAA18 | 90 1C 00 C0 */	stw r0, 0xc0(r28)
/* 813AAA1C | 4B FB DC 35 */	bl UpdateFlagsFile__Q33ipl7utility7CSFlagsFv
/* 813AAA20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AAA24 | 48 24 EA ED */	bl _restgpr_28
/* 813AAA28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AAA2C | 7C 08 03 A6 */	mtlr r0
/* 813AAA30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AAA34 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene13ChannelSelectFv

# .text:0x56C | 0x813AAA38 | size: 0x3D4
# ipl::scene::ChannelSelect::calcCommon()
.fn calcCommon__Q33ipl5scene13ChannelSelectFv, global
/* 813AAA38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AAA3C | 7C 08 02 A6 */	mflr r0
/* 813AAA40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AAA44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AAA48 | 48 24 EA 7D */	bl _savegpr_28
/* 813AAA4C | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813AAA50 | 3F E0 81 65 */	lis r31, lbl_8164D978@ha
/* 813AAA54 | 7C 7E 1B 78 */	mr r30, r3
/* 813AAA58 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813AAA5C | 3B FF D9 78 */	addi r31, r31, lbl_8164D978@l
/* 813AAA60 | 40 82 01 C4 */	bne .L_813AAC24
/* 813AAA64 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813AAA68 | 38 80 00 00 */	li r4, 0x0
/* 813AAA6C | 4B FC 00 65 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813AAA70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AAA74 | 40 82 01 B0 */	bne .L_813AAC24
/* 813AAA78 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813AAA7C | 38 80 00 05 */	li r4, 0x5
/* 813AAA80 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813AAA84 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813AAA88 | 48 06 06 B1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AAA8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AAA90 | 7C 7C 1B 78 */	mr r28, r3
/* 813AAA94 | 41 82 01 90 */	beq .L_813AAC24
/* 813AAA98 | 80 9E 00 B8 */	lwz r4, 0xb8(r30)
/* 813AAA9C | 38 A0 00 00 */	li r5, 0x0
/* 813AAAA0 | 4B FF 1E 9D */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813AAAA4 | 88 1D 02 BC */	lbz r0, 0x2bc(r29)
/* 813AAAA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AAAAC | 40 82 00 10 */	bne .L_813AAABC
/* 813AAAB0 | 80 9E 00 BC */	lwz r4, 0xbc(r30)
/* 813AAAB4 | 38 7C 00 70 */	addi r3, r28, 0x70
/* 813AAAB8 | 48 04 05 75 */	bl fn_813EB02C
.L_813AAABC:
/* 813AAABC | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813AAAC0 | 38 00 00 03 */	li r0, 0x3
/* 813AAAC4 | 90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 813AAAC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AAACC | 40 82 00 A4 */	bne .L_813AAB70
/* 813AAAD0 | 80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 813AAAD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AAAD8 | 40 81 00 18 */	ble .L_813AAAF0
/* 813AAADC | 7F 83 E3 78 */	mr r3, r28
/* 813AAAE0 | 38 80 00 01 */	li r4, 0x1
/* 813AAAE4 | 38 A0 00 01 */	li r5, 0x1
/* 813AAAE8 | 4B FF 23 41 */	bl initArrowAppearance__Q33ipl5scene6ButtonFib
/* 813AAAEC | 48 00 00 14 */	b .L_813AAB00
.L_813AAAF0:
/* 813AAAF0 | 7F 83 E3 78 */	mr r3, r28
/* 813AAAF4 | 38 80 00 01 */	li r4, 0x1
/* 813AAAF8 | 38 A0 00 00 */	li r5, 0x0
/* 813AAAFC | 4B FF 23 2D */	bl initArrowAppearance__Q33ipl5scene6ButtonFib
.L_813AAB00:
/* 813AAB00 | 80 9E 00 CC */	lwz r4, 0xcc(r30)
/* 813AAB04 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813AAB08 | 40 81 00 28 */	ble .L_813AAB30
/* 813AAB0C | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 813AAB10 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813AAB14 | 7C 03 00 00 */	cmpw r3, r0
/* 813AAB18 | 40 80 00 18 */	bge .L_813AAB30
/* 813AAB1C | 7F 83 E3 78 */	mr r3, r28
/* 813AAB20 | 38 80 00 00 */	li r4, 0x0
/* 813AAB24 | 38 A0 00 01 */	li r5, 0x1
/* 813AAB28 | 4B FF 23 01 */	bl initArrowAppearance__Q33ipl5scene6ButtonFib
/* 813AAB2C | 48 00 00 14 */	b .L_813AAB40
.L_813AAB30:
/* 813AAB30 | 7F 83 E3 78 */	mr r3, r28
/* 813AAB34 | 38 80 00 00 */	li r4, 0x0
/* 813AAB38 | 38 A0 00 00 */	li r5, 0x0
/* 813AAB3C | 4B FF 22 ED */	bl initArrowAppearance__Q33ipl5scene6ButtonFib
.L_813AAB40:
/* 813AAB40 | 80 0D AB 18 */	lwz r0, msInitFlag__Q33ipl5scene13ChannelSelect@sda21(r0)
/* 813AAB44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AAB48 | 40 82 00 DC */	bne .L_813AAC24
/* 813AAB4C | 3F A0 81 09 */	lis r29, sSystem__Q23ipl3snd@ha
/* 813AAB50 | 38 9F 03 55 */	addi r4, r31, 0x355
/* 813AAB54 | 38 7D 99 2C */	addi r3, r29, sSystem__Q23ipl3snd@l
/* 813AAB58 | 4B FC 09 15 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813AAB5C | 38 7D 99 2C */	addi r3, r29, sSystem__Q23ipl3snd@l
/* 813AAB60 | 38 9F 03 67 */	addi r4, r31, 0x367
/* 813AAB64 | 4B FC 08 59 */	bl startBGM__Q33ipl3snd6SystemFPCc
/* 813AAB68 | 90 6D AB 18 */	stw r3, msInitFlag__Q33ipl5scene13ChannelSelect@sda21(r0)
/* 813AAB6C | 48 00 00 B8 */	b .L_813AAC24
.L_813AAB70:
/* 813AAB70 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813AAB74 | 40 82 00 9C */	bne .L_813AAC10
/* 813AAB78 | 80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 813AAB7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AAB80 | 40 81 00 10 */	ble .L_813AAB90
/* 813AAB84 | 7F 83 E3 78 */	mr r3, r28
/* 813AAB88 | 38 80 00 18 */	li r4, 0x18
/* 813AAB8C | 4B FF 1F CD */	bl iplButton_8139CB58
.L_813AAB90:
/* 813AAB90 | 80 9E 00 CC */	lwz r4, 0xcc(r30)
/* 813AAB94 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813AAB98 | 40 81 00 20 */	ble .L_813AABB8
/* 813AAB9C | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 813AABA0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813AABA4 | 7C 03 00 00 */	cmpw r3, r0
/* 813AABA8 | 40 80 00 10 */	bge .L_813AABB8
/* 813AABAC | 7F 83 E3 78 */	mr r3, r28
/* 813AABB0 | 38 80 00 17 */	li r4, 0x17
/* 813AABB4 | 4B FF 1F A5 */	bl iplButton_8139CB58
.L_813AABB8:
/* 813AABB8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AABBC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AABC0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813AABC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AABC8 | 40 82 00 5C */	bne .L_813AAC24
/* 813AABCC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813AABD0 | 38 80 00 04 */	li r4, 0x4
/* 813AABD4 | 48 06 05 65 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AABD8 | 80 03 0F B0 */	lwz r0, 0xfb0(r3)
/* 813AABDC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AABE0 | 40 82 00 14 */	bne .L_813AABF4
/* 813AABE4 | 38 7C 00 70 */	addi r3, r28, 0x70
/* 813AABE8 | 38 80 00 01 */	li r4, 0x1
/* 813AABEC | 48 04 07 45 */	bl fn_813EB330
/* 813AABF0 | 48 00 00 10 */	b .L_813AAC00
.L_813AABF4:
/* 813AABF4 | 38 7C 00 70 */	addi r3, r28, 0x70
/* 813AABF8 | 38 80 00 00 */	li r4, 0x0
/* 813AABFC | 48 04 07 35 */	bl fn_813EB330
.L_813AAC00:
/* 813AAC00 | 7F 83 E3 78 */	mr r3, r28
/* 813AAC04 | 38 80 00 28 */	li r4, 0x28
/* 813AAC08 | 4B FF 1F 51 */	bl iplButton_8139CB58
/* 813AAC0C | 48 00 00 18 */	b .L_813AAC24
.L_813AAC10:
/* 813AAC10 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813AAC14 | 40 82 00 10 */	bne .L_813AAC24
/* 813AAC18 | 38 00 00 00 */	li r0, 0x0
/* 813AAC1C | 98 1E 01 00 */	stb r0, 0x100(r30)
/* 813AAC20 | 98 1E 01 01 */	stb r0, 0x101(r30)
.L_813AAC24:
/* 813AAC24 | 80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 813AAC28 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813AAC2C | 40 82 00 30 */	bne .L_813AAC5C
/* 813AAC30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AAC34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AAC38 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813AAC3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AAC40 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813AAC44 | 7D 89 03 A6 */	mtctr r12
/* 813AAC48 | 4E 80 04 21 */	bctrl
/* 813AAC4C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813AAC50 | 40 82 00 0C */	bne .L_813AAC5C
/* 813AAC54 | 38 00 00 01 */	li r0, 0x1
/* 813AAC58 | 90 1E 00 C0 */	stw r0, 0xc0(r30)
.L_813AAC5C:
/* 813AAC5C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AAC60 | 4B FB FA A5 */	bl calc__Q33ipl6layout6ObjectFv
/* 813AAC64 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813AAC68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AAC6C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813AAC70 | 7D 89 03 A6 */	mtctr r12
/* 813AAC74 | 4E 80 04 21 */	bctrl
/* 813AAC78 | 7F C3 F3 78 */	mr r3, r30
/* 813AAC7C | 48 00 22 CD */	bl updateDiskState__Q33ipl5scene13ChannelSelectFv
/* 813AAC80 | 7F C3 F3 78 */	mr r3, r30
/* 813AAC84 | 48 00 11 49 */	bl calcChannelModules__Q33ipl5scene13ChannelSelectFv
/* 813AAC88 | 7F C3 F3 78 */	mr r3, r30
/* 813AAC8C | 48 00 12 6D */	bl calcChannelThumbnails__Q33ipl5scene13ChannelSelectFv
/* 813AAC90 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813AAC94 | 4B FB FA 71 */	bl calc__Q33ipl6layout6ObjectFv
/* 813AAC98 | 80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 813AAC9C | 4B FB FA 69 */	bl calc__Q33ipl6layout6ObjectFv
/* 813AACA0 | 80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 813AACA4 | 4B FB FA 61 */	bl calc__Q33ipl6layout6ObjectFv
/* 813AACA8 | 80 7E 02 C4 */	lwz r3, 0x2c4(r30)
/* 813AACAC | 4B FB FA 59 */	bl calc__Q33ipl6layout6ObjectFv
/* 813AACB0 | 38 7E 01 08 */	addi r3, r30, 0x108
/* 813AACB4 | 48 00 60 A1 */	bl calc__Q33ipl5scene5clockFv
/* 813AACB8 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813AACBC | 38 80 00 04 */	li r4, 0x4
/* 813AACC0 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813AACC4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813AACC8 | 48 06 04 71 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AACCC | 83 83 0F B0 */	lwz r28, 0xfb0(r3)
/* 813AACD0 | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 813AACD4 | 7C 1C 00 00 */	cmpw r28, r0
/* 813AACD8 | 41 82 01 18 */	beq .L_813AADF0
/* 813AACDC | 88 1D 02 BC */	lbz r0, 0x2bc(r29)
/* 813AACE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AACE4 | 40 82 01 0C */	bne .L_813AADF0
/* 813AACE8 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 813AACEC | 40 82 00 20 */	bne .L_813AAD0C
/* 813AACF0 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813AACF4 | 38 80 00 05 */	li r4, 0x5
/* 813AACF8 | 48 06 04 41 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AACFC | 38 80 00 01 */	li r4, 0x1
/* 813AAD00 | 38 63 00 70 */	addi r3, r3, 0x70
/* 813AAD04 | 48 04 06 2D */	bl fn_813EB330
/* 813AAD08 | 48 00 00 1C */	b .L_813AAD24
.L_813AAD0C:
/* 813AAD0C | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813AAD10 | 38 80 00 05 */	li r4, 0x5
/* 813AAD14 | 48 06 04 25 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AAD18 | 38 80 00 00 */	li r4, 0x0
/* 813AAD1C | 38 63 00 70 */	addi r3, r3, 0x70
/* 813AAD20 | 48 04 06 11 */	bl fn_813EB330
.L_813AAD24:
/* 813AAD24 | 80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 813AAD28 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813AAD2C | 40 80 00 1C */	bge .L_813AAD48
/* 813AAD30 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AAD34 | 41 82 00 40 */	beq .L_813AAD74
/* 813AAD38 | 40 80 00 30 */	bge .L_813AAD68
/* 813AAD3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AAD40 | 40 80 00 B0 */	bge .L_813AADF0
/* 813AAD44 | 48 00 00 30 */	b .L_813AAD74
.L_813AAD48:
/* 813AAD48 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 813AAD4C | 40 80 00 10 */	bge .L_813AAD5C
/* 813AAD50 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813AAD54 | 40 80 00 20 */	bge .L_813AAD74
/* 813AAD58 | 48 00 00 98 */	b .L_813AADF0
.L_813AAD5C:
/* 813AAD5C | 2C 00 00 11 */	cmpwi r0, 0x11
/* 813AAD60 | 40 80 00 14 */	bge .L_813AAD74
/* 813AAD64 | 48 00 00 8C */	b .L_813AADF0
.L_813AAD68:
/* 813AAD68 | 80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 813AAD6C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AAD70 | 41 82 00 80 */	beq .L_813AADF0
.L_813AAD74:
/* 813AAD74 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 813AAD78 | 40 82 00 5C */	bne .L_813AADD4
/* 813AAD7C | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 813AAD80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AAD84 | 41 82 00 50 */	beq .L_813AADD4
/* 813AAD88 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813AAD8C | 38 80 00 05 */	li r4, 0x5
/* 813AAD90 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813AAD94 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813AAD98 | 48 06 03 A1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AAD9C | 38 80 00 28 */	li r4, 0x28
/* 813AADA0 | 4B FF 1C B9 */	bl animation__Q33ipl5scene6ButtonFi
/* 813AADA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AADA8 | 40 82 00 48 */	bne .L_813AADF0
/* 813AADAC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813AADB0 | 38 9F 03 75 */	addi r4, r31, 0x375
/* 813AADB4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813AADB8 | 4B FC 06 B5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813AADBC | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813AADC0 | 38 80 00 05 */	li r4, 0x5
/* 813AADC4 | 48 06 03 75 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AADC8 | 38 80 00 2A */	li r4, 0x2a
/* 813AADCC | 4B FF 1D 8D */	bl iplButton_8139CB58
/* 813AADD0 | 48 00 00 20 */	b .L_813AADF0
.L_813AADD4:
/* 813AADD4 | 80 1E 01 68 */	lwz r0, 0x168(r30)
/* 813AADD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AADDC | 41 82 00 14 */	beq .L_813AADF0
/* 813AADE0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813AADE4 | 38 9F 03 87 */	addi r4, r31, 0x387
/* 813AADE8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813AADEC | 4B FC 06 81 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813AADF0:
/* 813AADF0 | 93 9E 01 68 */	stw r28, 0x168(r30)
/* 813AADF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AADF8 | 48 24 E7 19 */	bl _restgpr_28
/* 813AADFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AAE00 | 7C 08 03 A6 */	mtlr r0
/* 813AAE04 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AAE08 | 4E 80 00 20 */	blr
.endfn calcCommon__Q33ipl5scene13ChannelSelectFv

# .text:0x940 | 0x813AAE0C | size: 0x30
# ipl::scene::ChannelSelect::calcFadein()
.fn calcFadein__Q33ipl5scene13ChannelSelectFv, global
/* 813AAE0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AAE10 | 7C 08 02 A6 */	mflr r0
/* 813AAE14 | 38 80 00 00 */	li r4, 0x0
/* 813AAE18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AAE1C | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813AAE20 | 4B FB FC B1 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813AAE24 | 7C 60 00 34 */	cntlzw r0, r3
/* 813AAE28 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813AAE2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AAE30 | 7C 08 03 A6 */	mtlr r0
/* 813AAE34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AAE38 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene13ChannelSelectFv

# .text:0x970 | 0x813AAE3C | size: 0x1C8
# ipl::scene::ChannelSelect::calcNormal()
.fn calcNormal__Q33ipl5scene13ChannelSelectFv, global
/* 813AAE3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AAE40 | 7C 08 02 A6 */	mflr r0
/* 813AAE44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AAE48 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813AAE4C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813AAE50 | 7C 7E 1B 78 */	mr r30, r3
/* 813AAE54 | 83 E3 00 C0 */	lwz r31, 0xc0(r3)
/* 813AAE58 | 2C 1F 00 0F */	cmpwi r31, 0xf
/* 813AAE5C | 40 82 00 0C */	bne .L_813AAE68
/* 813AAE60 | 38 60 00 00 */	li r3, 0x0
/* 813AAE64 | 48 00 01 88 */	b .L_813AAFEC
.L_813AAE68:
/* 813AAE68 | 28 1F 00 1A */	cmplwi r31, 0x1a
/* 813AAE6C | 41 81 00 A4 */	bgt .L_813AAF10
/* 813AAE70 | 3C 80 81 65 */	lis r4, jumptable_8164DD14@ha
/* 813AAE74 | 57 E0 10 3A */	slwi r0, r31, 2
/* 813AAE78 | 38 84 DD 14 */	addi r4, r4, jumptable_8164DD14@l
/* 813AAE7C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813AAE80 | 7C 89 03 A6 */	mtctr r4
/* 813AAE84 | 4E 80 04 20 */	bctr
.L_813AAE88:
/* 813AAE88 | 48 00 15 75 */	bl calcNormalNormal__Q33ipl5scene13ChannelSelectFv
/* 813AAE8C | 48 00 00 84 */	b .L_813AAF10
.L_813AAE90:
/* 813AAE90 | 48 00 16 99 */	bl calcNormalWaitScrl__Q33ipl5scene13ChannelSelectFv
/* 813AAE94 | 48 00 00 7C */	b .L_813AAF10
.L_813AAE98:
/* 813AAE98 | 48 00 17 51 */	bl calcNormalScrl__Q33ipl5scene13ChannelSelectFv
/* 813AAE9C | 48 00 00 74 */	b .L_813AAF10
.L_813AAEA0:
/* 813AAEA0 | 48 00 2A E1 */	bl tryToStartBoardScene__Q33ipl5scene13ChannelSelectFv
/* 813AAEA4 | 48 00 00 6C */	b .L_813AAF10
.L_813AAEA8:
/* 813AAEA8 | 48 00 18 51 */	bl calcNormalWaitLoading__Q33ipl5scene13ChannelSelectFv
/* 813AAEAC | 48 00 00 64 */	b .L_813AAF10
.L_813AAEB0:
/* 813AAEB0 | 48 00 18 CD */	bl calcNormalFadeOutZoom__Q33ipl5scene13ChannelSelectFv
/* 813AAEB4 | 48 00 00 5C */	b .L_813AAF10
.L_813AAEB8:
/* 813AAEB8 | 38 00 00 0F */	li r0, 0xf
/* 813AAEBC | 90 03 00 C0 */	stw r0, 0xc0(r3)
/* 813AAEC0 | 48 00 00 50 */	b .L_813AAF10
.L_813AAEC4:
/* 813AAEC4 | 48 00 19 15 */	bl calcNormalRestart__Q33ipl5scene13ChannelSelectFv
/* 813AAEC8 | 48 00 00 48 */	b .L_813AAF10
.L_813AAECC:
/* 813AAECC | 48 00 1A 59 */	bl calcNormalSafeModeDialog__Q33ipl5scene13ChannelSelectFv
/* 813AAED0 | 48 00 00 40 */	b .L_813AAF10
.L_813AAED4:
/* 813AAED4 | 48 00 3F 61 */	bl calcNormalGrab__Q33ipl5scene13ChannelSelectFv
/* 813AAED8 | 48 00 00 38 */	b .L_813AAF10
.L_813AAEDC:
/* 813AAEDC | 48 00 40 7D */	bl calcNormalDrag__Q33ipl5scene13ChannelSelectFv
/* 813AAEE0 | 48 00 00 30 */	b .L_813AAF10
.L_813AAEE4:
/* 813AAEE4 | 48 00 43 AD */	bl calcNormalReleaseWait__Q33ipl5scene13ChannelSelectFv
/* 813AAEE8 | 48 00 00 28 */	b .L_813AAF10
.L_813AAEEC:
/* 813AAEEC | 48 00 44 11 */	bl calcNormalRelease__Q33ipl5scene13ChannelSelectFv
/* 813AAEF0 | 48 00 00 20 */	b .L_813AAF10
.L_813AAEF4:
/* 813AAEF4 | 48 00 44 79 */	bl calcNormalMoveChanIn__Q33ipl5scene13ChannelSelectFv
/* 813AAEF8 | 48 00 00 18 */	b .L_813AAF10
.L_813AAEFC:
/* 813AAEFC | 48 00 46 55 */	bl calcNormalMoveChanSave__Q33ipl5scene13ChannelSelectFv
/* 813AAF00 | 48 00 00 10 */	b .L_813AAF10
.L_813AAF04:
/* 813AAF04 | 48 00 47 D1 */	bl calcNormalMoveChanOut__Q33ipl5scene13ChannelSelectFv
/* 813AAF08 | 48 00 00 08 */	b .L_813AAF10
.L_813AAF0C:
/* 813AAF0C | 48 00 48 95 */	bl calcNormalDragScrl__Q33ipl5scene13ChannelSelectFv
.L_813AAF10:
/* 813AAF10 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 813AAF14 | 40 82 00 B0 */	bne .L_813AAFC4
/* 813AAF18 | 80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 813AAF1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AAF20 | 41 82 00 A4 */	beq .L_813AAFC4
/* 813AAF24 | 2C 00 00 12 */	cmpwi r0, 0x12
/* 813AAF28 | 41 82 00 9C */	beq .L_813AAFC4
/* 813AAF2C | 38 61 00 0C */	addi r3, r1, 0xc
/* 813AAF30 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AAF34 | 48 00 00 D1 */	bl getCurrentChannel__Q33ipl7channel7ManagerFPiPi
/* 813AAF38 | 3B E0 00 00 */	li r31, 0x0
/* 813AAF3C | 48 00 00 48 */	b .L_813AAF84
.L_813AAF40:
/* 813AAF40 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 813AAF44 | 80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 813AAF48 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 813AAF4C | 7C 04 00 00 */	cmpw r4, r0
/* 813AAF50 | 40 82 00 34 */	bne .L_813AAF84
/* 813AAF54 | 80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 813AAF58 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813AAF5C | 40 82 00 10 */	bne .L_813AAF6C
/* 813AAF60 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813AAF64 | 7C 03 00 00 */	cmpw r3, r0
/* 813AAF68 | 41 82 00 10 */	beq .L_813AAF78
.L_813AAF6C:
/* 813AAF6C | 7F E3 FB 78 */	mr r3, r31
/* 813AAF70 | 38 80 00 01 */	li r4, 0x1
/* 813AAF74 | 48 00 74 A5 */	bl initCursorAnim__Q33ipl5scene10ChannelObjFb
.L_813AAF78:
/* 813AAF78 | 7F E3 FB 78 */	mr r3, r31
/* 813AAF7C | 38 80 00 01 */	li r4, 0x1
/* 813AAF80 | 48 00 74 E5 */	bl initBalloonAnim__Q33ipl5scene10ChannelObjFb
.L_813AAF84:
/* 813AAF84 | 7F E4 FB 78 */	mr r4, r31
/* 813AAF88 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813AAF8C | 48 16 73 51 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AAF90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AAF94 | 7C 7F 1B 78 */	mr r31, r3
/* 813AAF98 | 40 82 FF A8 */	bne .L_813AAF40
/* 813AAF9C | 3B E0 00 00 */	li r31, 0x0
.L_813AAFA0:
/* 813AAFA0 | 7F C3 F3 78 */	mr r3, r30
/* 813AAFA4 | 7F E4 FB 78 */	mr r4, r31
/* 813AAFA8 | 48 00 2F A1 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectFi
/* 813AAFAC | 7C 64 1B 78 */	mr r4, r3
/* 813AAFB0 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813AAFB4 | 4B FC 02 65 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813AAFB8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813AAFBC | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813AAFC0 | 41 80 FF E0 */	blt .L_813AAFA0
.L_813AAFC4:
/* 813AAFC4 | 80 7E 00 C0 */	lwz r3, 0xc0(r30)
/* 813AAFC8 | 38 03 FF FB */	subi r0, r3, 0x5
/* 813AAFCC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813AAFD0 | 41 81 00 18 */	bgt .L_813AAFE8
/* 813AAFD4 | 38 00 00 01 */	li r0, 0x1
/* 813AAFD8 | 38 60 00 01 */	li r3, 0x1
/* 813AAFDC | 98 1E 01 84 */	stb r0, 0x184(r30)
/* 813AAFE0 | 98 1E 01 85 */	stb r0, 0x185(r30)
/* 813AAFE4 | 48 00 00 08 */	b .L_813AAFEC
.L_813AAFE8:
/* 813AAFE8 | 38 60 00 00 */	li r3, 0x0
.L_813AAFEC:
/* 813AAFEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AAFF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813AAFF4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813AAFF8 | 7C 08 03 A6 */	mtlr r0
/* 813AAFFC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AB000 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene13ChannelSelectFv

# .text:0xB38 | 0x813AB004 | size: 0x14
# ipl::channel::Manager::getCurrentChannel(int*, int*)
.fn getCurrentChannel__Q33ipl7channel7ManagerFPiPi, global
/* 813AB004 | 80 0D A6 5C */	lwz r0, lbl_8169869C@sda21(r0)
/* 813AB008 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813AB00C | 80 0D A6 60 */	lwz r0, lbl_816986A0@sda21(r0)
/* 813AB010 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 813AB014 | 4E 80 00 20 */	blr
.endfn getCurrentChannel__Q33ipl7channel7ManagerFPiPi

# .text:0xB4C | 0x813AB018 | size: 0x4
# ipl::scene::ChannelSelect::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene13ChannelSelectFv, global
/* 813AB018 | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene13ChannelSelectFv

# .text:0xB50 | 0x813AB01C | size: 0xCC
# ipl::scene::ChannelSelect::calcFadeout()
.fn calcFadeout__Q33ipl5scene13ChannelSelectFv, global
/* 813AB01C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AB020 | 7C 08 02 A6 */	mflr r0
/* 813AB024 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AB028 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AB02C | 3B E0 00 00 */	li r31, 0x0
/* 813AB030 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AB034 | 7C 7E 1B 78 */	mr r30, r3
/* 813AB038 | 80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 813AB03C | 48 00 27 E1 */	bl isPageCreatedAllDone__Q33ipl5scene13ChannelSelectCFi
/* 813AB040 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AB044 | 41 82 00 58 */	beq .L_813AB09C
/* 813AB048 | 80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 813AB04C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813AB050 | 40 82 00 1C */	bne .L_813AB06C
/* 813AB054 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AB058 | 38 80 00 00 */	li r4, 0x0
/* 813AB05C | 4B FB FA 75 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813AB060 | 7C 60 00 34 */	cntlzw r0, r3
/* 813AB064 | 54 1F D9 7E */	srwi r31, r0, 5
/* 813AB068 | 48 00 00 38 */	b .L_813AB0A0
.L_813AB06C:
/* 813AB06C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813AB070 | 40 82 00 30 */	bne .L_813AB0A0
/* 813AB074 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AB078 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AB07C | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813AB080 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB084 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813AB088 | 7D 89 03 A6 */	mtctr r12
/* 813AB08C | 4E 80 04 21 */	bctrl
/* 813AB090 | 7C 60 00 34 */	cntlzw r0, r3
/* 813AB094 | 54 1F D9 7E */	srwi r31, r0, 5
/* 813AB098 | 48 00 00 08 */	b .L_813AB0A0
.L_813AB09C:
/* 813AB09C | 3B E0 00 00 */	li r31, 0x0
.L_813AB0A0:
/* 813AB0A0 | 88 1E 01 85 */	lbz r0, 0x185(r30)
/* 813AB0A4 | 38 60 00 00 */	li r3, 0x0
/* 813AB0A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AB0AC | 41 82 00 10 */	beq .L_813AB0BC
/* 813AB0B0 | 80 1E 01 80 */	lwz r0, 0x180(r30)
/* 813AB0B4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813AB0B8 | 40 82 00 08 */	bne .L_813AB0C0
.L_813AB0BC:
/* 813AB0BC | 38 60 00 01 */	li r3, 0x1
.L_813AB0C0:
/* 813AB0C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AB0C4 | 40 82 00 08 */	bne .L_813AB0CC
/* 813AB0C8 | 3B E0 00 00 */	li r31, 0x0
.L_813AB0CC:
/* 813AB0CC | 7F E3 FB 78 */	mr r3, r31
/* 813AB0D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AB0D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AB0D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AB0DC | 7C 08 03 A6 */	mtlr r0
/* 813AB0E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AB0E4 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene13ChannelSelectFv

# .text:0xC1C | 0x813AB0E8 | size: 0x26C
# ipl::scene::ChannelSelect::draw()
.fn draw__Q33ipl5scene13ChannelSelectFv, global
/* 813AB0E8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813AB0EC | 7C 08 02 A6 */	mflr r0
/* 813AB0F0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813AB0F4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813AB0F8 | 48 24 E3 C9 */	bl _savegpr_27
/* 813AB0FC | 80 83 00 C0 */	lwz r4, 0xc0(r3)
/* 813AB100 | 7C 7F 1B 78 */	mr r31, r3
/* 813AB104 | 2C 04 00 0F */	cmpwi r4, 0xf
/* 813AB108 | 41 82 01 B0 */	beq .L_813AB2B8
/* 813AB10C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AB110 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AB114 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813AB118 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813AB11C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AB120 | 40 82 01 98 */	bne .L_813AB2B8
/* 813AB124 | 2C 04 00 09 */	cmpwi r4, 0x9
/* 813AB128 | 41 82 00 14 */	beq .L_813AB13C
/* 813AB12C | 2C 04 00 0E */	cmpwi r4, 0xe
/* 813AB130 | 41 82 00 0C */	beq .L_813AB13C
/* 813AB134 | 2C 04 00 10 */	cmpwi r4, 0x10
/* 813AB138 | 40 82 00 24 */	bne .L_813AB15C
.L_813AB13C:
/* 813AB13C | 3F A0 81 09 */	lis r29, mArg__Q33ipl7utility8Graphics@ha
/* 813AB140 | 38 9F 00 D8 */	addi r4, r31, 0xd8
/* 813AB144 | 3B BD 97 C0 */	addi r29, r29, mArg__Q33ipl7utility8Graphics@l
/* 813AB148 | 38 7D 00 70 */	addi r3, r29, 0x70
/* 813AB14C | 4B F9 95 39 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AB150 | 38 7D 00 7C */	addi r3, r29, 0x7c
/* 813AB154 | 38 9F 00 E4 */	addi r4, r31, 0xe4
/* 813AB158 | 4B F8 B6 99 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
.L_813AB15C:
/* 813AB15C | 38 60 00 00 */	li r3, 0x0
/* 813AB160 | 4B FB 79 0D */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813AB164 | 3F A0 81 65 */	lis r29, lbl_8164DC18@ha
/* 813AB168 | 3B 60 00 00 */	li r27, 0x0
/* 813AB16C | 3B BD DC 18 */	addi r29, r29, lbl_8164DC18@l
/* 813AB170 | 3B C0 00 00 */	li r30, 0x0
.L_813AB174:
/* 813AB174 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB178 | 38 A0 00 01 */	li r5, 0x1
/* 813AB17C | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813AB180 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AB184 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB188 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AB18C | 7D 89 03 A6 */	mtctr r12
/* 813AB190 | 4E 80 04 21 */	bctrl
/* 813AB194 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813AB198 | 7C 7C 1B 78 */	mr r28, r3
/* 813AB19C | 7F 84 E3 78 */	mr r4, r28
/* 813AB1A0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813AB1A4 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813AB1A8 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813AB1AC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB1B0 | 4B FB F6 DD */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 813AB1B4 | 7F 83 E3 78 */	mr r3, r28
/* 813AB1B8 | 38 80 00 00 */	li r4, 0x0
/* 813AB1BC | 4B F9 92 59 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813AB1C0 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813AB1C4 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813AB1C8 | 2C 1B 00 05 */	cmpwi r27, 0x5
/* 813AB1CC | 41 80 FF A8 */	blt .L_813AB174
/* 813AB1D0 | 7F E3 FB 78 */	mr r3, r31
/* 813AB1D4 | 48 00 0F 65 */	bl drawChannelThumbnails__Q33ipl5scene13ChannelSelectFv
/* 813AB1D8 | 7F E3 FB 78 */	mr r3, r31
/* 813AB1DC | 48 00 21 C1 */	bl setChanFrameVisibility__Q33ipl5scene13ChannelSelectFv
/* 813AB1E0 | 4B F8 A7 B5 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813AB1E4 | A3 A3 00 06 */	lhz r29, 0x6(r3)
/* 813AB1E8 | 4B F8 A7 AD */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813AB1EC | A0 A3 00 04 */	lhz r5, 0x4(r3)
/* 813AB1F0 | 7F A6 EB 78 */	mr r6, r29
/* 813AB1F4 | 38 60 00 00 */	li r3, 0x0
/* 813AB1F8 | 38 80 00 00 */	li r4, 0x0
/* 813AB1FC | 48 19 CD AD */	bl GXSetScissor
/* 813AB200 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB204 | 38 A0 00 01 */	li r5, 0x1
/* 813AB208 | 80 8D 88 98 */	lwz r4, lbl_816968D8@sda21(r0)
/* 813AB20C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AB210 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB214 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AB218 | 7D 89 03 A6 */	mtctr r12
/* 813AB21C | 4E 80 04 21 */	bctrl
/* 813AB220 | 7C 7C 1B 78 */	mr r28, r3
/* 813AB224 | 38 80 00 00 */	li r4, 0x0
/* 813AB228 | 4B F9 91 ED */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813AB22C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB230 | 4B FB F5 6D */	bl draw__Q33ipl6layout6ObjectFv
/* 813AB234 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 813AB238 | 4B FB F5 65 */	bl draw__Q33ipl6layout6ObjectFv
/* 813AB23C | 3F A0 81 65 */	lis r29, lbl_8164DCA8@ha
/* 813AB240 | 3B 60 00 00 */	li r27, 0x0
/* 813AB244 | 3B BD DC A8 */	addi r29, r29, lbl_8164DCA8@l
/* 813AB248 | 3B C0 00 00 */	li r30, 0x0
.L_813AB24C:
/* 813AB24C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB250 | 38 A0 00 01 */	li r5, 0x1
/* 813AB254 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813AB258 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AB25C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB260 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AB264 | 7D 89 03 A6 */	mtctr r12
/* 813AB268 | 4E 80 04 21 */	bctrl
/* 813AB26C | 7C 64 1B 78 */	mr r4, r3
/* 813AB270 | 38 7F 01 08 */	addi r3, r31, 0x108
/* 813AB274 | 48 00 5B 59 */	bl draw__Q33ipl5scene5clockFPQ34nw4r3lyt4Pane
/* 813AB278 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813AB27C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813AB280 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 813AB284 | 41 80 FF C8 */	blt .L_813AB24C
/* 813AB288 | 7F E3 FB 78 */	mr r3, r31
/* 813AB28C | 48 00 10 C1 */	bl drawChannelOthers__Q33ipl5scene13ChannelSelectFv
/* 813AB290 | 88 1C 00 CF */	lbz r0, 0xcf(r28)
/* 813AB294 | 7F 84 E3 78 */	mr r4, r28
/* 813AB298 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813AB29C | 60 00 00 01 */	ori r0, r0, 0x1
/* 813AB2A0 | 98 1C 00 CF */	stb r0, 0xcf(r28)
/* 813AB2A4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB2A8 | 4B FB F5 E5 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 813AB2AC | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AB2B0 | 4B FB F4 ED */	bl draw__Q33ipl6layout6ObjectFv
/* 813AB2B4 | 48 00 00 88 */	b .L_813AB33C
.L_813AB2B8:
/* 813AB2B8 | 2C 04 00 0F */	cmpwi r4, 0xf
/* 813AB2BC | 40 82 00 80 */	bne .L_813AB33C
/* 813AB2C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AB2C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AB2C8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813AB2CC | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813AB2D0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AB2D4 | 40 82 00 68 */	bne .L_813AB33C
/* 813AB2D8 | 38 60 00 00 */	li r3, 0x0
/* 813AB2DC | 4B FB 77 91 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813AB2E0 | 88 C2 85 50 */	lbz r6, lbl_81694950@sda21(r0)
/* 813AB2E4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813AB2E8 | 88 A2 85 51 */	lbz r5, lbl_81694951@sda21(r0)
/* 813AB2EC | 88 82 85 52 */	lbz r4, lbl_81694952@sda21(r0)
/* 813AB2F0 | 88 02 85 53 */	lbz r0, lbl_81694953@sda21(r0)
/* 813AB2F4 | 98 C1 00 0C */	stb r6, 0xc(r1)
/* 813AB2F8 | 98 A1 00 0D */	stb r5, 0xd(r1)
/* 813AB2FC | 98 81 00 0E */	stb r4, 0xe(r1)
/* 813AB300 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 813AB304 | 4B F8 B1 25 */	bl __ct__Q34nw4r2ut4RectFv
/* 813AB308 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813AB30C | 4B F8 A6 0D */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813AB310 | 88 E1 00 0C */	lbz r7, 0xc(r1)
/* 813AB314 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813AB318 | 88 C1 00 0D */	lbz r6, 0xd(r1)
/* 813AB31C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AB320 | 88 A1 00 0E */	lbz r5, 0xe(r1)
/* 813AB324 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 813AB328 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 813AB32C | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 813AB330 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 813AB334 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813AB338 | 4B FB 7A 05 */	bl drawPolygon__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4Rect8_GXColor
.L_813AB33C:
/* 813AB33C | 39 61 00 40 */	addi r11, r1, 0x40
/* 813AB340 | 48 24 E1 CD */	bl _restgpr_27
/* 813AB344 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813AB348 | 7C 08 03 A6 */	mtlr r0
/* 813AB34C | 38 21 00 40 */	addi r1, r1, 0x40
/* 813AB350 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene13ChannelSelectFv

# .text:0xE88 | 0x813AB354 | size: 0x144
# ipl::scene::ChannelSelect::destroy()
.fn destroy__Q33ipl5scene13ChannelSelectFv, global
/* 813AB354 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AB358 | 7C 08 02 A6 */	mflr r0
/* 813AB35C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AB360 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AB364 | 48 24 E1 65 */	bl _savegpr_29
/* 813AB368 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813AB36C | 80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 813AB370 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813AB374 | 7C 7D 1B 78 */	mr r29, r3
/* 813AB378 | 80 64 00 94 */	lwz r3, 0x94(r4)
/* 813AB37C | 38 80 00 00 */	li r4, 0x0
/* 813AB380 | 90 03 04 E0 */	stw r0, 0x4e0(r3)
/* 813AB384 | 48 00 00 20 */	b .L_813AB3A4
.L_813AB388:
/* 813AB388 | 7F E4 FB 78 */	mr r4, r31
/* 813AB38C | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813AB390 | 48 16 6E E1 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813AB394 | 7F A3 EB 78 */	mr r3, r29
/* 813AB398 | 7F E4 FB 78 */	mr r4, r31
/* 813AB39C | 48 00 18 1D */	bl destroyChannelObj__Q33ipl5scene13ChannelSelectFPQ33ipl5scene10ChannelObj
/* 813AB3A0 | 38 80 00 00 */	li r4, 0x0
.L_813AB3A4:
/* 813AB3A4 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813AB3A8 | 48 16 6F 35 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AB3AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AB3B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813AB3B4 | 40 82 FF D4 */	bne .L_813AB388
/* 813AB3B8 | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 813AB3BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB3C0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813AB3C4 | 7D 89 03 A6 */	mtctr r12
/* 813AB3C8 | 4E 80 04 21 */	bctrl
/* 813AB3CC | 3B C0 00 00 */	li r30, 0x0
/* 813AB3D0 | 3B E0 00 00 */	li r31, 0x0
.L_813AB3D4:
/* 813AB3D4 | 7C 7D FA 14 */	add r3, r29, r31
/* 813AB3D8 | 80 63 01 98 */	lwz r3, 0x198(r3)
/* 813AB3DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB3E0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813AB3E4 | 7D 89 03 A6 */	mtctr r12
/* 813AB3E8 | 4E 80 04 21 */	bctrl
/* 813AB3EC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813AB3F0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813AB3F4 | 2C 1E 00 31 */	cmpwi r30, 0x31
/* 813AB3F8 | 41 80 FF DC */	blt .L_813AB3D4
/* 813AB3FC | 80 7D 01 94 */	lwz r3, 0x194(r29)
/* 813AB400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AB404 | 41 82 00 18 */	beq .L_813AB41C
/* 813AB408 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB40C | 38 80 00 01 */	li r4, 0x1
/* 813AB410 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813AB414 | 7D 89 03 A6 */	mtctr r12
/* 813AB418 | 4E 80 04 21 */	bctrl
.L_813AB41C:
/* 813AB41C | 80 7D 01 90 */	lwz r3, 0x190(r29)
/* 813AB420 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB424 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813AB428 | 7D 89 03 A6 */	mtctr r12
/* 813AB42C | 4E 80 04 21 */	bctrl
/* 813AB430 | 80 7D 01 7C */	lwz r3, 0x17c(r29)
/* 813AB434 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB438 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813AB43C | 7D 89 03 A6 */	mtctr r12
/* 813AB440 | 4E 80 04 21 */	bctrl
/* 813AB444 | 80 7D 01 70 */	lwz r3, 0x170(r29)
/* 813AB448 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB44C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813AB450 | 7D 89 03 A6 */	mtctr r12
/* 813AB454 | 4E 80 04 21 */	bctrl
/* 813AB458 | 80 7D 01 74 */	lwz r3, 0x174(r29)
/* 813AB45C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB460 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813AB464 | 7D 89 03 A6 */	mtctr r12
/* 813AB468 | 4E 80 04 21 */	bctrl
/* 813AB46C | 80 7D 01 78 */	lwz r3, 0x178(r29)
/* 813AB470 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB474 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813AB478 | 7D 89 03 A6 */	mtctr r12
/* 813AB47C | 4E 80 04 21 */	bctrl
/* 813AB480 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AB484 | 48 24 E0 91 */	bl _restgpr_29
/* 813AB488 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AB48C | 7C 08 03 A6 */	mtlr r0
/* 813AB490 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AB494 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene13ChannelSelectFv

# .text:0xFCC | 0x813AB498 | size: 0x14
# ipl::scene::ChannelSelect::isFirstCall() const
.fn isFirstCall__Q33ipl5scene13ChannelSelectCFv, global
/* 813AB498 | 80 63 01 88 */	lwz r3, 0x188(r3)
/* 813AB49C | 88 03 00 E4 */	lbz r0, 0xe4(r3)
/* 813AB4A0 | 7C 00 00 34 */	cntlzw r0, r0
/* 813AB4A4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813AB4A8 | 4E 80 00 20 */	blr
.endfn isFirstCall__Q33ipl5scene13ChannelSelectCFv

# .text:0xFE0 | 0x813AB4AC | size: 0x38
# ipl::scene::ChannelSelect::getRsoExBufData(void*) const
.fn getRsoExBufData__Q33ipl5scene13ChannelSelectCFPv, global
/* 813AB4AC | 80 E3 01 88 */	lwz r7, 0x188(r3)
/* 813AB4B0 | 7C 83 23 78 */	mr r3, r4
/* 813AB4B4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813AB4B8 | 80 87 00 1C */	lwz r4, 0x1c(r7)
/* 813AB4BC | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813AB4C0 | 80 07 00 20 */	lwz r0, 0x20(r7)
/* 813AB4C4 | 1C 84 05 40 */	mulli r4, r4, 0x540
/* 813AB4C8 | 80 C5 00 84 */	lwz r6, 0x84(r5)
/* 813AB4CC | 38 A0 00 20 */	li r5, 0x20
/* 813AB4D0 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 813AB4D4 | 7C 86 22 14 */	add r4, r6, r4
/* 813AB4D8 | 7C 84 02 14 */	add r4, r4, r0
/* 813AB4DC | 38 84 00 5C */	addi r4, r4, 0x5c
/* 813AB4E0 | 4B F8 4D 50 */	b memcpy
.endfn getRsoExBufData__Q33ipl5scene13ChannelSelectCFPv

# .text:0x1018 | 0x813AB4E4 | size: 0x34
# ipl::scene::ChannelSelect::setRsoExBufData(const void*)
.fn setRsoExBufData__Q33ipl5scene13ChannelSelectFPCv, global
/* 813AB4E4 | 80 E3 01 88 */	lwz r7, 0x188(r3)
/* 813AB4E8 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813AB4EC | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813AB4F0 | 38 A0 00 20 */	li r5, 0x20
/* 813AB4F4 | 80 67 00 1C */	lwz r3, 0x1c(r7)
/* 813AB4F8 | 80 07 00 20 */	lwz r0, 0x20(r7)
/* 813AB4FC | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 813AB500 | 80 C6 00 84 */	lwz r6, 0x84(r6)
/* 813AB504 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 813AB508 | 7C 66 1A 14 */	add r3, r6, r3
/* 813AB50C | 7C 63 02 14 */	add r3, r3, r0
/* 813AB510 | 38 63 00 5C */	addi r3, r3, 0x5c
/* 813AB514 | 4B F8 4D 1C */	b memcpy
.endfn setRsoExBufData__Q33ipl5scene13ChannelSelectFPCv

# .text:0x104C | 0x813AB518 | size: 0x8C
# ipl::scene::ChannelSelect::getRsoTitleDataPath(char*) const
.fn getRsoTitleDataPath__Q33ipl5scene13ChannelSelectCFPc, global
/* 813AB518 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AB51C | 7C 08 02 A6 */	mflr r0
/* 813AB520 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AB524 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AB528 | 48 24 DF 99 */	bl _savegpr_27
/* 813AB52C | 80 A3 01 88 */	lwz r5, 0x188(r3)
/* 813AB530 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AB534 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AB538 | 7C 9B 23 78 */	mr r27, r4
/* 813AB53C | 83 A5 00 1C */	lwz r29, 0x1c(r5)
/* 813AB540 | 83 85 00 20 */	lwz r28, 0x20(r5)
/* 813AB544 | 83 E3 00 84 */	lwz r31, 0x84(r3)
/* 813AB548 | 7F A4 EB 78 */	mr r4, r29
/* 813AB54C | 7F 85 E3 78 */	mr r5, r28
/* 813AB550 | 7F E3 FB 78 */	mr r3, r31
/* 813AB554 | 4B F8 CD 55 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813AB558 | 3B C0 FF FF */	li r30, -0x1
/* 813AB55C | 7F E3 FB 78 */	mr r3, r31
/* 813AB560 | 7C 9F F0 38 */	and r31, r4, r30
/* 813AB564 | 7F A4 EB 78 */	mr r4, r29
/* 813AB568 | 7F 85 E3 78 */	mr r5, r28
/* 813AB56C | 4B F8 CD 3D */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813AB570 | 3C 80 81 65 */	lis r4, lbl_8164DD80@ha
/* 813AB574 | 7C 65 F0 38 */	and r5, r3, r30
/* 813AB578 | 7F 63 DB 78 */	mr r3, r27
/* 813AB57C | 7F E6 FB 78 */	mr r6, r31
/* 813AB580 | 38 84 DD 80 */	addi r4, r4, lbl_8164DD80@l
/* 813AB584 | 4C C6 31 82 */	crclr cr1eq
/* 813AB588 | 48 25 54 F9 */	bl sprintf
/* 813AB58C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AB590 | 48 24 DF 7D */	bl _restgpr_27
/* 813AB594 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AB598 | 7C 08 03 A6 */	mtlr r0
/* 813AB59C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AB5A0 | 4E 80 00 20 */	blr
.endfn getRsoTitleDataPath__Q33ipl5scene13ChannelSelectCFPc

# .text:0x10D8 | 0x813AB5A4 | size: 0x14
# ipl::scene::ChannelSelect::getRsoAnimator(int) const
.fn getRsoAnimator__Q33ipl5scene13ChannelSelectCFi, global
/* 813AB5A4 | 80 63 01 88 */	lwz r3, 0x188(r3)
/* 813AB5A8 | 54 80 10 3A */	slwi r0, r4, 2
/* 813AB5AC | 7C 63 02 14 */	add r3, r3, r0
/* 813AB5B0 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 813AB5B4 | 4E 80 00 20 */	blr
.endfn getRsoAnimator__Q33ipl5scene13ChannelSelectCFi

# .text:0x10EC | 0x813AB5B8 | size: 0x28
# ipl::scene::ChannelSelect::isStartAnimFinished() const
.fn isStartAnimFinished__Q33ipl5scene13ChannelSelectCFv, global
/* 813AB5B8 | 80 83 01 88 */	lwz r4, 0x188(r3)
/* 813AB5BC | 38 60 00 01 */	li r3, 0x1
/* 813AB5C0 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 813AB5C4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813AB5C8 | 4D 82 00 20 */	beqlr
/* 813AB5CC | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813AB5D0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AB5D4 | 4C 82 00 20 */	bnelr
/* 813AB5D8 | 38 60 00 00 */	li r3, 0x0
/* 813AB5DC | 4E 80 00 20 */	blr
.endfn isStartAnimFinished__Q33ipl5scene13ChannelSelectCFv

# .text:0x1114 | 0x813AB5E0 | size: 0x18
# ipl::scene::ChannelSelect::allocFromRsoExHeap(unsigned long, int)
.fn allocFromRsoExHeap__Q33ipl5scene13ChannelSelectFUli, global
/* 813AB5E0 | 80 63 01 88 */	lwz r3, 0x188(r3)
/* 813AB5E4 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 813AB5E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB5EC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813AB5F0 | 7D 89 03 A6 */	mtctr r12
/* 813AB5F4 | 4E 80 04 20 */	bctr
.endfn allocFromRsoExHeap__Q33ipl5scene13ChannelSelectFUli

# .text:0x112C | 0x813AB5F8 | size: 0x24
# ipl::scene::ChannelSelect::freeToRsoExHeap(void*)
.fn freeToRsoExHeap__Q33ipl5scene13ChannelSelectFPv, global
/* 813AB5F8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813AB5FC | 4D 82 00 20 */	beqlr
/* 813AB600 | 80 63 01 88 */	lwz r3, 0x188(r3)
/* 813AB604 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 813AB608 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB60C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813AB610 | 7D 89 03 A6 */	mtctr r12
/* 813AB614 | 4E 80 04 20 */	bctr
/* 813AB618 | 4E 80 00 20 */	blr
.endfn freeToRsoExHeap__Q33ipl5scene13ChannelSelectFPv

# .text:0x1150 | 0x813AB61C | size: 0x1C
# ipl::scene::ChannelSelect::getAllocatableSizeForRsoExHeap() const
.fn getAllocatableSizeForRsoExHeap__Q33ipl5scene13ChannelSelectCFv, global
/* 813AB61C | 80 63 01 88 */	lwz r3, 0x188(r3)
/* 813AB620 | 38 80 00 04 */	li r4, 0x4
/* 813AB624 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 813AB628 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB62C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813AB630 | 7D 89 03 A6 */	mtctr r12
/* 813AB634 | 4E 80 04 20 */	bctr
.endfn getAllocatableSizeForRsoExHeap__Q33ipl5scene13ChannelSelectCFv

# .text:0x116C | 0x813AB638 | size: 0x4
# ipl::scene::ChannelSelect::setDebugRsoInterval(unsigned long)
.fn setDebugRsoInterval__Q33ipl5scene13ChannelSelectFUl, global
/* 813AB638 | 4E 80 00 20 */	blr
.endfn setDebugRsoInterval__Q33ipl5scene13ChannelSelectFUl

# .text:0x1170 | 0x813AB63C | size: 0x88
# ipl::scene::ChannelSelect::createChannelModulesHeap()
.fn createChannelModulesHeap__Q33ipl5scene13ChannelSelectFv, global
/* 813AB63C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AB640 | 7C 08 02 A6 */	mflr r0
/* 813AB644 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AB648 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AB64C | 48 24 DE 75 */	bl _savegpr_27
/* 813AB650 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813AB654 | 7C 7B 1B 78 */	mr r27, r3
/* 813AB658 | 3B A4 90 08 */	addi r29, r4, smArg__Q23ipl6System@l
/* 813AB65C | 38 A0 00 00 */	li r5, 0x0
/* 813AB660 | 80 7D 00 30 */	lwz r3, 0x30(r29)
/* 813AB664 | 3C 80 00 20 */	lis r4, 0x20
/* 813AB668 | 48 24 BF 75 */	bl fn_815F75DC
/* 813AB66C | 3B 80 00 00 */	li r28, 0x0
/* 813AB670 | 90 7B 01 90 */	stw r3, 0x190(r27)
/* 813AB674 | 3B E0 00 00 */	li r31, 0x0
/* 813AB678 | 7F 9E E3 78 */	mr r30, r28
.L_813AB67C:
/* 813AB67C | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 813AB680 | 3C 60 00 01 */	lis r3, 0x1
/* 813AB684 | 38 A0 00 06 */	li r5, 0x6
/* 813AB688 | 48 24 BF ED */	bl fn_815F7674
/* 813AB68C | 7C BB FA 14 */	add r5, r27, r31
/* 813AB690 | 7C 9B E2 14 */	add r4, r27, r28
/* 813AB694 | 90 65 01 98 */	stw r3, 0x198(r5)
/* 813AB698 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813AB69C | 2C 1C 00 31 */	cmpwi r28, 0x31
/* 813AB6A0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813AB6A4 | 9B C4 02 5C */	stb r30, 0x25c(r4)
/* 813AB6A8 | 41 80 FF D4 */	blt .L_813AB67C
/* 813AB6AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AB6B0 | 48 24 DE 5D */	bl _restgpr_27
/* 813AB6B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AB6B8 | 7C 08 03 A6 */	mtlr r0
/* 813AB6BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AB6C0 | 4E 80 00 20 */	blr
.endfn createChannelModulesHeap__Q33ipl5scene13ChannelSelectFv

# .text:0x11F8 | 0x813AB6C4 | size: 0x360
# ipl::scene::ChannelSelect::createBaseLayout()
.fn createBaseLayout__Q33ipl5scene13ChannelSelectFv, global
/* 813AB6C4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813AB6C8 | 7C 08 02 A6 */	mflr r0
/* 813AB6CC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813AB6D0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813AB6D4 | 48 24 DD E9 */	bl _savegpr_26
/* 813AB6D8 | 3F 60 81 65 */	lis r27, lbl_8164D978@ha
/* 813AB6DC | 7C 7F 1B 78 */	mr r31, r3
/* 813AB6E0 | 3B 7B D9 78 */	addi r27, r27, lbl_8164D978@l
/* 813AB6E4 | 38 60 05 80 */	li r3, 0x580
/* 813AB6E8 | 48 24 C9 B5 */	bl __nw__FUl
/* 813AB6EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AB6F0 | 41 82 00 18 */	beq .L_813AB708
/* 813AB6F4 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813AB6F8 | 38 FB 04 1F */	addi r7, r27, 0x41f
/* 813AB6FC | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813AB700 | 38 CD 88 9C */	li r6, lbl_816968DC@sda21
/* 813AB704 | 4B FB E9 21 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813AB708:
/* 813AB708 | 90 7F 00 68 */	stw r3, 0x68(r31)
/* 813AB70C | 48 1B E8 A9 */	bl SCGetAspectRatio
/* 813AB710 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813AB714 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813AB718 | 40 82 01 14 */	bne .L_813AB82C
/* 813AB71C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB720 | 38 9B 04 31 */	addi r4, r27, 0x431
/* 813AB724 | 38 A0 00 01 */	li r5, 0x1
/* 813AB728 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AB72C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB730 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AB734 | 7D 89 03 A6 */	mtctr r12
/* 813AB738 | 4E 80 04 21 */	bctrl
/* 813AB73C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB740 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813AB744 | 7D 89 03 A6 */	mtctr r12
/* 813AB748 | 4E 80 04 21 */	bctrl
/* 813AB74C | 38 81 00 28 */	addi r4, r1, 0x28
/* 813AB750 | 38 A0 00 00 */	li r5, 0x0
/* 813AB754 | 48 17 C5 D9 */	bl fn_81527D2C
/* 813AB758 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB75C | 38 9B 04 3F */	addi r4, r27, 0x43f
/* 813AB760 | 38 A0 00 01 */	li r5, 0x1
/* 813AB764 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AB768 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB76C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AB770 | 7D 89 03 A6 */	mtctr r12
/* 813AB774 | 4E 80 04 21 */	bctrl
/* 813AB778 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB77C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813AB780 | 7D 89 03 A6 */	mtctr r12
/* 813AB784 | 4E 80 04 21 */	bctrl
/* 813AB788 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AB78C | 38 A0 00 00 */	li r5, 0x0
/* 813AB790 | 48 17 C5 9D */	bl fn_81527D2C
/* 813AB794 | 3B 9B 02 EC */	addi r28, r27, 0x2ec
/* 813AB798 | 3B BB 03 00 */	addi r29, r27, 0x300
/* 813AB79C | 3B 40 00 00 */	li r26, 0x0
/* 813AB7A0 | 3B C0 00 00 */	li r30, 0x0
.L_813AB7A4:
/* 813AB7A4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB7A8 | 38 A0 00 01 */	li r5, 0x1
/* 813AB7AC | 7C 9C F0 2E */	lwzx r4, r28, r30
/* 813AB7B0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AB7B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB7B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AB7BC | 7D 89 03 A6 */	mtctr r12
/* 813AB7C0 | 4E 80 04 21 */	bctrl
/* 813AB7C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB7C8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813AB7CC | 7D 89 03 A6 */	mtctr r12
/* 813AB7D0 | 4E 80 04 21 */	bctrl
/* 813AB7D4 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 813AB7D8 | 38 80 00 00 */	li r4, 0x0
/* 813AB7DC | 48 17 C6 41 */	bl fn_81527E1C
/* 813AB7E0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB7E4 | 38 A0 00 01 */	li r5, 0x1
/* 813AB7E8 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813AB7EC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AB7F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB7F4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AB7F8 | 7D 89 03 A6 */	mtctr r12
/* 813AB7FC | 4E 80 04 21 */	bctrl
/* 813AB800 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB804 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813AB808 | 7D 89 03 A6 */	mtctr r12
/* 813AB80C | 4E 80 04 21 */	bctrl
/* 813AB810 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813AB814 | 38 80 00 00 */	li r4, 0x0
/* 813AB818 | 48 17 C6 05 */	bl fn_81527E1C
/* 813AB81C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813AB820 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813AB824 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 813AB828 | 41 80 FF 7C */	blt .L_813AB7A4
.L_813AB82C:
/* 813AB82C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB830 | 38 9B 04 4A */	addi r4, r27, 0x44a
/* 813AB834 | 38 A0 00 01 */	li r5, 0x1
/* 813AB838 | 4B FB EB 35 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813AB83C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813AB840 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813AB844 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813AB848 | 41 81 00 40 */	bgt .L_813AB888
/* 813AB84C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB850 | 38 80 FF FF */	li r4, -0x1
/* 813AB854 | C0 22 85 54 */	lfs f1, lbl_81694954@sda21(r0)
/* 813AB858 | 4B FB F1 99 */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813AB85C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB860 | 38 80 FF FF */	li r4, -0x1
/* 813AB864 | C0 22 85 58 */	lfs f1, lbl_81694958@sda21(r0)
/* 813AB868 | 4B FB F1 19 */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813AB86C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB870 | 38 80 00 00 */	li r4, 0x0
/* 813AB874 | 38 A0 FF FF */	li r5, -0x1
/* 813AB878 | 4B FB F1 E9 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813AB87C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB880 | 38 80 FF FF */	li r4, -0x1
/* 813AB884 | 4B FB F0 75 */	bl start__Q33ipl6layout6ObjectFi
.L_813AB888:
/* 813AB888 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AB88C | 4B FB ED A9 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813AB890 | 38 60 00 10 */	li r3, 0x10
/* 813AB894 | 48 24 C8 09 */	bl __nw__FUl
/* 813AB898 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AB89C | 7C 7D 1B 78 */	mr r29, r3
/* 813AB8A0 | 41 82 00 1C */	beq .L_813AB8BC
/* 813AB8A4 | 38 00 00 00 */	li r0, 0x0
/* 813AB8A8 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene25ChannelSelectEventHandler@ha
/* 813AB8AC | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813AB8B0 | 38 84 E0 A0 */	addi r4, r4, __vt__Q33ipl5scene25ChannelSelectEventHandler@l
/* 813AB8B4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813AB8B8 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_813AB8BC:
/* 813AB8BC | 38 60 00 34 */	li r3, 0x34
/* 813AB8C0 | 48 24 C7 DD */	bl __nw__FUl
/* 813AB8C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AB8C8 | 7C 7B 1B 78 */	mr r27, r3
/* 813AB8CC | 41 82 00 84 */	beq .L_813AB950
/* 813AB8D0 | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813AB8D4 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813AB8D8 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813AB8DC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813AB8E0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813AB8E4 | 38 00 00 00 */	li r0, 0x0
/* 813AB8E8 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813AB8EC | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 813AB8F0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813AB8F4 | 41 82 00 1C */	beq .L_813AB910
/* 813AB8F8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813AB8FC | 7F A3 EB 78 */	mr r3, r29
/* 813AB900 | 7F 64 DB 78 */	mr r4, r27
/* 813AB904 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813AB908 | 7D 89 03 A6 */	mtctr r12
/* 813AB90C | 4E 80 04 21 */	bctrl
.L_813AB910:
/* 813AB910 | 38 7B 00 08 */	addi r3, r27, 0x8
/* 813AB914 | 38 80 00 08 */	li r4, 0x8
/* 813AB918 | 48 16 67 45 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813AB91C | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813AB920 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 813AB924 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813AB928 | 38 80 00 08 */	li r4, 0x8
/* 813AB92C | 90 BB 00 00 */	stw r5, 0x0(r27)
/* 813AB930 | 93 9B 00 24 */	stw r28, 0x24(r27)
/* 813AB934 | 48 16 67 29 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813AB938 | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 813AB93C | 38 00 00 00 */	li r0, 0x0
/* 813AB940 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 813AB944 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 813AB948 | 90 1B 00 2C */	stw r0, 0x2c(r27)
/* 813AB94C | 98 1B 00 30 */	stb r0, 0x30(r27)
.L_813AB950:
/* 813AB950 | 93 7F 00 7C */	stw r27, 0x7c(r31)
/* 813AB954 | 7F 63 DB 78 */	mr r3, r27
/* 813AB958 | 80 9F 00 68 */	lwz r4, 0x68(r31)
/* 813AB95C | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813AB960 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813AB964 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813AB968 | 7D 89 03 A6 */	mtctr r12
/* 813AB96C | 4E 80 04 21 */	bctrl
/* 813AB970 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813AB974 | 38 80 00 00 */	li r4, 0x0
/* 813AB978 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB97C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813AB980 | 7D 89 03 A6 */	mtctr r12
/* 813AB984 | 4E 80 04 21 */	bctrl
/* 813AB988 | 3B 40 00 00 */	li r26, 0x0
.L_813AB98C:
/* 813AB98C | 7F E3 FB 78 */	mr r3, r31
/* 813AB990 | 7F 44 D3 78 */	mr r4, r26
/* 813AB994 | 48 00 25 B5 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectFi
/* 813AB998 | 7C 64 1B 78 */	mr r4, r3
/* 813AB99C | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813AB9A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB9A4 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813AB9A8 | 7D 89 03 A6 */	mtctr r12
/* 813AB9AC | 4E 80 04 21 */	bctrl
/* 813AB9B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AB9B4 | 38 80 00 01 */	li r4, 0x1
/* 813AB9B8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813AB9BC | 7D 89 03 A6 */	mtctr r12
/* 813AB9C0 | 4E 80 04 21 */	bctrl
/* 813AB9C4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813AB9C8 | 2C 1A 00 0C */	cmpwi r26, 0xc
/* 813AB9CC | 41 80 FF C0 */	blt .L_813AB98C
/* 813AB9D0 | 3F A0 81 65 */	lis r29, "__vt__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>"@ha
/* 813AB9D4 | 3B 40 00 00 */	li r26, 0x0
/* 813AB9D8 | 3B BD E0 48 */	addi r29, r29, "__vt__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>"@l
/* 813AB9DC | 3B C0 00 00 */	li r30, 0x0
.L_813AB9E0:
/* 813AB9E0 | 38 60 00 40 */	li r3, 0x40
/* 813AB9E4 | 48 24 C6 B9 */	bl __nw__FUl
/* 813AB9E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AB9EC | 41 82 00 08 */	beq .L_813AB9F4
/* 813AB9F0 | 93 A3 00 00 */	stw r29, 0x0(r3)
.L_813AB9F4:
/* 813AB9F4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813AB9F8 | 7C 9F F2 14 */	add r4, r31, r30
/* 813AB9FC | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813ABA00 | 90 64 00 6C */	stw r3, 0x6c(r4)
/* 813ABA04 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813ABA08 | 41 80 FF D8 */	blt .L_813AB9E0
/* 813ABA0C | 39 61 00 60 */	addi r11, r1, 0x60
/* 813ABA10 | 48 24 DA F9 */	bl _restgpr_26
/* 813ABA14 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813ABA18 | 7C 08 03 A6 */	mtlr r0
/* 813ABA1C | 38 21 00 60 */	addi r1, r1, 0x60
/* 813ABA20 | 4E 80 00 20 */	blr
.endfn createBaseLayout__Q33ipl5scene13ChannelSelectFv

# .text:0x1558 | 0x813ABA24 | size: 0x2A0
# ipl::scene::ChannelSelect::createDiskLayout()
.fn createDiskLayout__Q33ipl5scene13ChannelSelectFv, global
/* 813ABA24 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813ABA28 | 7C 08 02 A6 */	mflr r0
/* 813ABA2C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813ABA30 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813ABA34 | 48 24 DA 95 */	bl _savegpr_29
/* 813ABA38 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813ABA3C | 3F E0 81 65 */	lis r31, lbl_8164D978@ha
/* 813ABA40 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813ABA44 | 7C 7E 1B 78 */	mr r30, r3
/* 813ABA48 | 80 84 00 A8 */	lwz r4, 0xa8(r4)
/* 813ABA4C | 3B FF D9 78 */	addi r31, r31, lbl_8164D978@l
/* 813ABA50 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 813ABA54 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813ABA58 | 41 82 00 14 */	beq .L_813ABA6C
/* 813ABA5C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813ABA60 | 41 82 00 0C */	beq .L_813ABA6C
/* 813ABA64 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813ABA68 | 40 82 00 10 */	bne .L_813ABA78
.L_813ABA6C:
/* 813ABA6C | 38 00 00 01 */	li r0, 0x1
/* 813ABA70 | 98 03 00 F4 */	stb r0, 0xf4(r3)
/* 813ABA74 | 48 00 00 0C */	b .L_813ABA80
.L_813ABA78:
/* 813ABA78 | 38 00 00 00 */	li r0, 0x0
/* 813ABA7C | 98 03 00 F4 */	stb r0, 0xf4(r3)
.L_813ABA80:
/* 813ABA80 | 38 60 05 80 */	li r3, 0x580
/* 813ABA84 | 48 24 C6 19 */	bl __nw__FUl
/* 813ABA88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABA8C | 41 82 00 18 */	beq .L_813ABAA4
/* 813ABA90 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813ABA94 | 38 FF 04 5C */	addi r7, r31, 0x45c
/* 813ABA98 | 80 BE 00 80 */	lwz r5, 0x80(r30)
/* 813ABA9C | 38 CD 88 9C */	li r6, lbl_816968DC@sda21
/* 813ABAA0 | 4B FB E5 85 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813ABAA4:
/* 813ABAA4 | 90 7E 00 84 */	stw r3, 0x84(r30)
/* 813ABAA8 | 38 9F 04 6E */	addi r4, r31, 0x46e
/* 813ABAAC | 38 A0 00 01 */	li r5, 0x1
/* 813ABAB0 | 4B FB E8 BD */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813ABAB4 | 90 7E 00 88 */	stw r3, 0x88(r30)
/* 813ABAB8 | 38 80 00 02 */	li r4, 0x2
/* 813ABABC | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813ABAC0 | 38 A0 FF FF */	li r5, -0x1
/* 813ABAC4 | 4B FB EF 9D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813ABAC8 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813ABACC | 38 80 FF FF */	li r4, -0x1
/* 813ABAD0 | 4B FB EE 29 */	bl start__Q33ipl6layout6ObjectFi
/* 813ABAD4 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813ABAD8 | 88 03 02 E8 */	lbz r0, 0x2e8(r3)
/* 813ABADC | 60 00 00 40 */	ori r0, r0, 0x40
/* 813ABAE0 | 98 03 02 E8 */	stb r0, 0x2e8(r3)
/* 813ABAE4 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813ABAE8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ABAEC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813ABAF0 | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 813ABAF4 | 60 00 00 02 */	ori r0, r0, 0x2
/* 813ABAF8 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813ABAFC | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813ABB00 | 4B FB EB 35 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813ABB04 | 38 60 00 30 */	li r3, 0x30
/* 813ABB08 | 48 24 C5 95 */	bl __nw__FUl
/* 813ABB0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABB10 | 7C 7D 1B 78 */	mr r29, r3
/* 813ABB14 | 41 82 00 10 */	beq .L_813ABB24
/* 813ABB18 | 3C 80 81 64 */	lis r4, "__vt__Q33ipl4math14HermiteIntp<f>"@ha
/* 813ABB1C | 38 84 12 68 */	addi r4, r4, "__vt__Q33ipl4math14HermiteIntp<f>"@l
/* 813ABB20 | 90 83 00 00 */	stw r4, 0x0(r3)
.L_813ABB24:
/* 813ABB24 | 90 7E 00 8C */	stw r3, 0x8c(r30)
/* 813ABB28 | 38 80 00 00 */	li r4, 0x0
/* 813ABB2C | C0 22 85 5C */	lfs f1, lbl_8169495C@sda21(r0)
/* 813ABB30 | C0 0D 88 A0 */	lfs f0, lbl_816968E0@sda21(r0)
/* 813ABB34 | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813ABB38 | D0 03 00 20 */	stfs f0, 0x20(r3)
/* 813ABB3C | C0 62 85 4C */	lfs f3, lbl_8169494C@sda21(r0)
/* 813ABB40 | C0 0D 88 A4 */	lfs f0, lbl_816968E4@sda21(r0)
/* 813ABB44 | D0 03 00 24 */	stfs f0, 0x24(r3)
/* 813ABB48 | 7F A3 EB 78 */	mr r3, r29
/* 813ABB4C | 4B FB 6D 05 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813ABB50 | C0 02 85 48 */	lfs f0, lbl_81694948@sda21(r0)
/* 813ABB54 | D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 813ABB58 | D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 813ABB5C | 88 1E 00 F4 */	lbz r0, 0xf4(r30)
/* 813ABB60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ABB64 | 41 82 00 10 */	beq .L_813ABB74
/* 813ABB68 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813ABB6C | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813ABB70 | D0 03 00 0C */	stfs f0, 0xc(r3)
.L_813ABB74:
/* 813ABB74 | 38 60 05 80 */	li r3, 0x580
/* 813ABB78 | 48 24 C5 25 */	bl __nw__FUl
/* 813ABB7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABB80 | 41 82 00 18 */	beq .L_813ABB98
/* 813ABB84 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813ABB88 | 38 FF 04 80 */	addi r7, r31, 0x480
/* 813ABB8C | 80 BE 00 80 */	lwz r5, 0x80(r30)
/* 813ABB90 | 38 CD 88 9C */	li r6, lbl_816968DC@sda21
/* 813ABB94 | 4B FB E4 91 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813ABB98:
/* 813ABB98 | 90 7E 00 94 */	stw r3, 0x94(r30)
/* 813ABB9C | 38 9F 04 92 */	addi r4, r31, 0x492
/* 813ABBA0 | 38 A0 00 01 */	li r5, 0x1
/* 813ABBA4 | 4B FB E7 C9 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813ABBA8 | 90 7E 00 98 */	stw r3, 0x98(r30)
/* 813ABBAC | 7C 7D 1B 78 */	mr r29, r3
/* 813ABBB0 | 4B FB 6C C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813ABBB4 | 38 00 00 01 */	li r0, 0x1
/* 813ABBB8 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813ABBBC | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 813ABBC0 | 4B FB EA 75 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813ABBC4 | 38 60 05 80 */	li r3, 0x580
/* 813ABBC8 | 48 24 C4 D5 */	bl __nw__FUl
/* 813ABBCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABBD0 | 41 82 00 18 */	beq .L_813ABBE8
/* 813ABBD4 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813ABBD8 | 38 FF 04 A4 */	addi r7, r31, 0x4a4
/* 813ABBDC | 80 BE 00 80 */	lwz r5, 0x80(r30)
/* 813ABBE0 | 38 CD 88 9C */	li r6, lbl_816968DC@sda21
/* 813ABBE4 | 4B FB E4 41 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813ABBE8:
/* 813ABBE8 | 90 7E 00 9C */	stw r3, 0x9c(r30)
/* 813ABBEC | 48 1B E3 C9 */	bl SCGetAspectRatio
/* 813ABBF0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813ABBF4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813ABBF8 | 40 82 00 7C */	bne .L_813ABC74
/* 813ABBFC | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 813ABC00 | 38 8D 88 A8 */	li r4, lbl_816968E8@sda21
/* 813ABC04 | 38 A0 00 01 */	li r5, 0x1
/* 813ABC08 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ABC0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ABC10 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ABC14 | 7D 89 03 A6 */	mtctr r12
/* 813ABC18 | 4E 80 04 21 */	bctrl
/* 813ABC1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ABC20 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813ABC24 | 7D 89 03 A6 */	mtctr r12
/* 813ABC28 | 4E 80 04 21 */	bctrl
/* 813ABC2C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813ABC30 | 38 A0 00 00 */	li r5, 0x0
/* 813ABC34 | 48 17 C0 F9 */	bl fn_81527D2C
/* 813ABC38 | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 813ABC3C | 38 8D 88 AD */	li r4, lbl_816968ED@sda21
/* 813ABC40 | 38 A0 00 01 */	li r5, 0x1
/* 813ABC44 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ABC48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ABC4C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ABC50 | 7D 89 03 A6 */	mtctr r12
/* 813ABC54 | 4E 80 04 21 */	bctrl
/* 813ABC58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ABC5C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813ABC60 | 7D 89 03 A6 */	mtctr r12
/* 813ABC64 | 4E 80 04 21 */	bctrl
/* 813ABC68 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813ABC6C | 38 80 00 00 */	li r4, 0x0
/* 813ABC70 | 48 17 C1 AD */	bl fn_81527E1C
.L_813ABC74:
/* 813ABC74 | 88 1E 00 F4 */	lbz r0, 0xf4(r30)
/* 813ABC78 | 38 9F 04 B7 */	addi r4, r31, 0x4b7
/* 813ABC7C | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 813ABC80 | 7C 00 00 34 */	cntlzw r0, r0
/* 813ABC84 | 54 05 D9 7E */	srwi r5, r0, 5
/* 813ABC88 | 4B FB E6 E5 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813ABC8C | 90 7E 00 A0 */	stw r3, 0xa0(r30)
/* 813ABC90 | 38 9F 04 D1 */	addi r4, r31, 0x4d1
/* 813ABC94 | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 813ABC98 | 88 BE 00 F4 */	lbz r5, 0xf4(r30)
/* 813ABC9C | 4B FB E6 D1 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813ABCA0 | 90 7E 00 A4 */	stw r3, 0xa4(r30)
/* 813ABCA4 | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 813ABCA8 | 4B FB E9 8D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813ABCAC | 39 61 00 40 */	addi r11, r1, 0x40
/* 813ABCB0 | 48 24 D8 65 */	bl _restgpr_29
/* 813ABCB4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813ABCB8 | 7C 08 03 A6 */	mtlr r0
/* 813ABCBC | 38 21 00 40 */	addi r1, r1, 0x40
/* 813ABCC0 | 4E 80 00 20 */	blr
.endfn createDiskLayout__Q33ipl5scene13ChannelSelectFv

# .text:0x17F8 | 0x813ABCC4 | size: 0x5C
# ipl::scene::ChannelSelect::createChannelThumbnails()
.fn createChannelThumbnails__Q33ipl5scene13ChannelSelectFv, global
/* 813ABCC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ABCC8 | 7C 08 02 A6 */	mflr r0
/* 813ABCCC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ABCD0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ABCD4 | 3B E0 00 00 */	li r31, 0x0
/* 813ABCD8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ABCDC | 7C 7E 1B 78 */	mr r30, r3
/* 813ABCE0 | 48 00 00 10 */	b .L_813ABCF0
.L_813ABCE4:
/* 813ABCE4 | 7F C3 F3 78 */	mr r3, r30
/* 813ABCE8 | 7F E4 FB 78 */	mr r4, r31
/* 813ABCEC | 48 00 00 35 */	bl createChannelThumbnail__Q33ipl5scene13ChannelSelectFPQ33ipl5scene10ChannelObj
.L_813ABCF0:
/* 813ABCF0 | 7F E4 FB 78 */	mr r4, r31
/* 813ABCF4 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813ABCF8 | 48 16 65 E5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813ABCFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABD00 | 7C 7F 1B 78 */	mr r31, r3
/* 813ABD04 | 40 82 FF E0 */	bne .L_813ABCE4
/* 813ABD08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ABD0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ABD10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ABD14 | 7C 08 03 A6 */	mtlr r0
/* 813ABD18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ABD1C | 4E 80 00 20 */	blr
.endfn createChannelThumbnails__Q33ipl5scene13ChannelSelectFv

# .text:0x1854 | 0x813ABD20 | size: 0xAC
# ipl::scene::ChannelSelect::createChannelThumbnail(ipl::scene::ChannelObj*)
.fn createChannelThumbnail__Q33ipl5scene13ChannelSelectFPQ33ipl5scene10ChannelObj, global
/* 813ABD20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ABD24 | 7C 08 02 A6 */	mflr r0
/* 813ABD28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ABD2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ABD30 | 7C 9F 23 78 */	mr r31, r4
/* 813ABD34 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ABD38 | 7C 7E 1B 78 */	mr r30, r3
/* 813ABD3C | 7F E3 FB 78 */	mr r3, r31
/* 813ABD40 | 48 00 5A 91 */	bl prepare__Q33ipl5scene10ChannelObjFv
/* 813ABD44 | 80 9E 01 74 */	lwz r4, 0x174(r30)
/* 813ABD48 | 7F E3 FB 78 */	mr r3, r31
/* 813ABD4C | 80 BE 01 78 */	lwz r5, 0x178(r30)
/* 813ABD50 | 48 00 5A BD */	bl setHeaps__Q33ipl5scene10ChannelObjFPQ23EGG4HeapPQ23EGG4Heap
/* 813ABD54 | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 813ABD58 | 7F C3 F3 78 */	mr r3, r30
/* 813ABD5C | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813ABD60 | 80 DE 00 C8 */	lwz r6, 0xc8(r30)
/* 813ABD64 | 48 00 21 09 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectCFiii
/* 813ABD68 | 7C 64 1B 78 */	mr r4, r3
/* 813ABD6C | 7F E3 FB 78 */	mr r3, r31
/* 813ABD70 | 48 00 5A B9 */	bl setBasePane__Q33ipl5scene10ChannelObjFPCQ34nw4r3lyt4Pane
/* 813ABD74 | 7F E3 FB 78 */	mr r3, r31
/* 813ABD78 | 48 00 64 4D */	bl isDiskChannel__Q33ipl5scene10ChannelObjCFv
/* 813ABD7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABD80 | 41 82 00 18 */	beq .L_813ABD98
/* 813ABD84 | 80 9E 00 94 */	lwz r4, 0x94(r30)
/* 813ABD88 | 7F E3 FB 78 */	mr r3, r31
/* 813ABD8C | 80 BE 00 98 */	lwz r5, 0x98(r30)
/* 813ABD90 | 80 DE 01 70 */	lwz r6, 0x170(r30)
/* 813ABD94 | 48 00 5A 85 */	bl setDiskLayouts__Q33ipl5scene10ChannelObjFPQ33ipl6layout6ObjectPQ33ipl6layout8AnimatorPQ23EGG4Heap
.L_813ABD98:
/* 813ABD98 | 80 9E 01 90 */	lwz r4, 0x190(r30)
/* 813ABD9C | 7F E3 FB 78 */	mr r3, r31
/* 813ABDA0 | 80 BE 01 94 */	lwz r5, 0x194(r30)
/* 813ABDA4 | 48 00 5A 8D */	bl initExtModule__Q33ipl5scene10ChannelObjFPQ23EGG4HeapPQ33ipl7channel9RsoThread
/* 813ABDA8 | 80 9E 00 64 */	lwz r4, 0x64(r30)
/* 813ABDAC | 7F E3 FB 78 */	mr r3, r31
/* 813ABDB0 | 48 00 5A 8D */	bl create__Q33ipl5scene10ChannelObjFPQ33ipl4nand10LayoutFile
/* 813ABDB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ABDB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ABDBC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ABDC0 | 7C 08 03 A6 */	mtlr r0
/* 813ABDC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ABDC8 | 4E 80 00 20 */	blr
.endfn createChannelThumbnail__Q33ipl5scene13ChannelSelectFPQ33ipl5scene10ChannelObj

# .text:0x1900 | 0x813ABDCC | size: 0x12C
# ipl::scene::ChannelSelect::calcChannelModules()
.fn calcChannelModules__Q33ipl5scene13ChannelSelectFv, global
/* 813ABDCC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813ABDD0 | 7C 08 02 A6 */	mflr r0
/* 813ABDD4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813ABDD8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ABDDC | 48 24 D6 DD */	bl _savegpr_25
/* 813ABDE0 | 80 03 01 80 */	lwz r0, 0x180(r3)
/* 813ABDE4 | 7C 79 1B 78 */	mr r25, r3
/* 813ABDE8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813ABDEC | 41 82 00 F4 */	beq .L_813ABEE0
/* 813ABDF0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813ABDF4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813ABDF8 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813ABDFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ABE00 | 40 82 00 B4 */	bne .L_813ABEB4
/* 813ABE04 | 3B 80 00 01 */	li r28, 0x1
/* 813ABE08 | 48 00 2C 0D */	bl getFreeModuleExHeap__Q33ipl5scene13ChannelSelectFv
/* 813ABE0C | 7C 7B 1B 78 */	mr r27, r3
/* 813ABE10 | 3B 40 00 00 */	li r26, 0x0
/* 813ABE14 | 3B E0 00 02 */	li r31, 0x2
/* 813ABE18 | 3B A0 00 00 */	li r29, 0x0
/* 813ABE1C | 3B C0 00 01 */	li r30, 0x1
/* 813ABE20 | 48 00 00 7C */	b .L_813ABE9C
.L_813ABE24:
/* 813ABE24 | 80 19 01 8C */	lwz r0, 0x18c(r25)
/* 813ABE28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ABE2C | 41 82 00 0C */	beq .L_813ABE38
/* 813ABE30 | 7C 03 00 40 */	cmplw r3, r0
/* 813ABE34 | 40 82 00 68 */	bne .L_813ABE9C
.L_813ABE38:
/* 813ABE38 | 80 19 01 80 */	lwz r0, 0x180(r25)
/* 813ABE3C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813ABE40 | 40 82 00 08 */	bne .L_813ABE48
/* 813ABE44 | 3B 80 00 00 */	li r28, 0x0
.L_813ABE48:
/* 813ABE48 | 88 D9 01 84 */	lbz r6, 0x184(r25)
/* 813ABE4C | 7F 43 D3 78 */	mr r3, r26
/* 813ABE50 | 7F 64 DB 78 */	mr r4, r27
/* 813ABE54 | 7F 85 E3 78 */	mr r5, r28
/* 813ABE58 | 48 00 5B 4D */	bl calcExtModule__Q33ipl5scene10ChannelObjFPQ23EGG7ExpHeapbb
/* 813ABE5C | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813ABE60 | 40 82 00 20 */	bne .L_813ABE80
/* 813ABE64 | 80 9A 00 A0 */	lwz r4, 0xa0(r26)
/* 813ABE68 | 7F 23 CB 78 */	mr r3, r25
/* 813ABE6C | 7F 65 DB 78 */	mr r5, r27
/* 813ABE70 | 48 00 2B D9 */	bl updateModuleExHeap__Q33ipl5scene13ChannelSelectFPQ23EGG7ExpHeapPQ23EGG7ExpHeap
/* 813ABE74 | 93 B9 01 88 */	stw r29, 0x188(r25)
/* 813ABE78 | 93 D9 01 80 */	stw r30, 0x180(r25)
/* 813ABE7C | 48 00 00 20 */	b .L_813ABE9C
.L_813ABE80:
/* 813ABE80 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813ABE84 | 40 82 00 18 */	bne .L_813ABE9C
/* 813ABE88 | 80 19 01 80 */	lwz r0, 0x180(r25)
/* 813ABE8C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813ABE90 | 40 82 00 0C */	bne .L_813ABE9C
/* 813ABE94 | 93 F9 01 80 */	stw r31, 0x180(r25)
/* 813ABE98 | 93 59 01 88 */	stw r26, 0x188(r25)
.L_813ABE9C:
/* 813ABE9C | 7F 44 D3 78 */	mr r4, r26
/* 813ABEA0 | 38 79 00 58 */	addi r3, r25, 0x58
/* 813ABEA4 | 48 16 64 39 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813ABEA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABEAC | 7C 7A 1B 78 */	mr r26, r3
/* 813ABEB0 | 40 82 FF 74 */	bne .L_813ABE24
.L_813ABEB4:
/* 813ABEB4 | 88 19 01 84 */	lbz r0, 0x184(r25)
/* 813ABEB8 | 38 60 00 00 */	li r3, 0x0
/* 813ABEBC | 90 79 01 8C */	stw r3, 0x18c(r25)
/* 813ABEC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ABEC4 | 41 82 00 1C */	beq .L_813ABEE0
/* 813ABEC8 | 80 19 01 80 */	lwz r0, 0x180(r25)
/* 813ABECC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813ABED0 | 40 82 00 10 */	bne .L_813ABEE0
/* 813ABED4 | 38 00 00 03 */	li r0, 0x3
/* 813ABED8 | 98 79 01 84 */	stb r3, 0x184(r25)
/* 813ABEDC | 90 19 01 80 */	stw r0, 0x180(r25)
.L_813ABEE0:
/* 813ABEE0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ABEE4 | 48 24 D6 21 */	bl _restgpr_25
/* 813ABEE8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813ABEEC | 7C 08 03 A6 */	mtlr r0
/* 813ABEF0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813ABEF4 | 4E 80 00 20 */	blr
.endfn calcChannelModules__Q33ipl5scene13ChannelSelectFv

# .text:0x1A2C | 0x813ABEF8 | size: 0x70
# ipl::scene::ChannelSelect::calcChannelThumbnails()
.fn calcChannelThumbnails__Q33ipl5scene13ChannelSelectFv, global
/* 813ABEF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ABEFC | 7C 08 02 A6 */	mflr r0
/* 813ABF00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ABF04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ABF08 | 3B E0 00 00 */	li r31, 0x0
/* 813ABF0C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ABF10 | 7C 7E 1B 78 */	mr r30, r3
/* 813ABF14 | 48 00 00 0C */	b .L_813ABF20
.L_813ABF18:
/* 813ABF18 | 7F E3 FB 78 */	mr r3, r31
/* 813ABF1C | 48 00 59 ED */	bl calc__Q33ipl5scene10ChannelObjFv
.L_813ABF20:
/* 813ABF20 | 7F E4 FB 78 */	mr r4, r31
/* 813ABF24 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813ABF28 | 48 16 63 B5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813ABF2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABF30 | 7C 7F 1B 78 */	mr r31, r3
/* 813ABF34 | 40 82 FF E4 */	bne .L_813ABF18
/* 813ABF38 | 80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 813ABF3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABF40 | 41 82 00 08 */	beq .L_813ABF48
/* 813ABF44 | 48 00 59 C5 */	bl calc__Q33ipl5scene10ChannelObjFv
.L_813ABF48:
/* 813ABF48 | 7F C3 F3 78 */	mr r3, r30
/* 813ABF4C | 48 00 00 1D */	bl calcDiskLayout__Q33ipl5scene13ChannelSelectFv
/* 813ABF50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ABF54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ABF58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ABF5C | 7C 08 03 A6 */	mtlr r0
/* 813ABF60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ABF64 | 4E 80 00 20 */	blr
.endfn calcChannelThumbnails__Q33ipl5scene13ChannelSelectFv

# .text:0x1A9C | 0x813ABF68 | size: 0x1D0
# ipl::scene::ChannelSelect::calcDiskLayout()
.fn calcDiskLayout__Q33ipl5scene13ChannelSelectFv, global
/* 813ABF68 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813ABF6C | 7C 08 02 A6 */	mflr r0
/* 813ABF70 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813ABF74 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ABF78 | 48 24 D5 51 */	bl _savegpr_29
/* 813ABF7C | 80 83 00 90 */	lwz r4, 0x90(r3)
/* 813ABF80 | 7C 7D 1B 78 */	mr r29, r3
/* 813ABF84 | 80 C3 00 C8 */	lwz r6, 0xc8(r3)
/* 813ABF88 | 83 C4 00 20 */	lwz r30, 0x20(r4)
/* 813ABF8C | 83 E4 00 1C */	lwz r31, 0x1c(r4)
/* 813ABF90 | 7F C5 F3 78 */	mr r5, r30
/* 813ABF94 | 7F E4 FB 78 */	mr r4, r31
/* 813ABF98 | 48 00 17 05 */	bl isChannelInCalc__Q33ipl5scene13ChannelSelectCFiii
/* 813ABF9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ABFA0 | 41 82 00 88 */	beq .L_813AC028
/* 813ABFA4 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813ABFA8 | 38 80 00 01 */	li r4, 0x1
/* 813ABFAC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ABFB0 | 4B F9 84 65 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813ABFB4 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 813ABFB8 | 38 80 00 01 */	li r4, 0x1
/* 813ABFBC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ABFC0 | 4B F9 84 55 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813ABFC4 | C0 22 85 48 */	lfs f1, lbl_81694948@sda21(r0)
/* 813ABFC8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813ABFCC | FC 40 08 90 */	fmr f2, f1
/* 813ABFD0 | FC 60 08 90 */	fmr f3, f1
/* 813ABFD4 | 4B FC 88 B1 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813ABFD8 | 80 DD 00 C8 */	lwz r6, 0xc8(r29)
/* 813ABFDC | 7F A3 EB 78 */	mr r3, r29
/* 813ABFE0 | 7F E4 FB 78 */	mr r4, r31
/* 813ABFE4 | 7F C5 F3 78 */	mr r5, r30
/* 813ABFE8 | 48 00 1E 85 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectCFiii
/* 813ABFEC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813ABFF0 | 38 63 00 84 */	addi r3, r3, 0x84
/* 813ABFF4 | 7C 85 23 78 */	mr r5, r4
/* 813ABFF8 | 48 19 54 C5 */	bl fn_815414BC
/* 813ABFFC | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813AC000 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AC004 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AC008 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813AC00C | 4B F9 86 79 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AC010 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 813AC014 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AC018 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AC01C | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813AC020 | 4B F9 86 65 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AC024 | 48 00 00 24 */	b .L_813AC048
.L_813AC028:
/* 813AC028 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813AC02C | 38 80 00 00 */	li r4, 0x0
/* 813AC030 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AC034 | 4B F9 83 E1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813AC038 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 813AC03C | 38 80 00 00 */	li r4, 0x0
/* 813AC040 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AC044 | 4B F9 83 D1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813AC048:
/* 813AC048 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 813AC04C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AC050 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813AC054 | 7D 89 03 A6 */	mtctr r12
/* 813AC058 | 4E 80 04 21 */	bctrl
/* 813AC05C | 80 9D 00 8C */	lwz r4, 0x8c(r29)
/* 813AC060 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813AC064 | C1 62 85 4C */	lfs f11, lbl_8169494C@sda21(r0)
/* 813AC068 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 813AC06C | C1 A4 00 0C */	lfs f13, 0xc(r4)
/* 813AC070 | ED 8B 00 24 */	fdivs f12, f11, f0
/* 813AC074 | C0 62 85 60 */	lfs f3, lbl_81694960@sda21(r0)
/* 813AC078 | C0 22 85 64 */	lfs f1, lbl_81694964@sda21(r0)
/* 813AC07C | C0 44 00 28 */	lfs f2, 0x28(r4)
/* 813AC080 | C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 813AC084 | C0 E4 00 20 */	lfs f7, 0x20(r4)
/* 813AC088 | EC 83 03 72 */	fmuls f4, f3, f13
/* 813AC08C | C0 C4 00 24 */	lfs f6, 0x24(r4)
/* 813AC090 | EC 61 03 72 */	fmuls f3, f1, f13
/* 813AC094 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AC098 | EC AD 03 72 */	fmuls f5, f13, f13
/* 813AC09C | ED 44 03 72 */	fmuls f10, f4, f13
/* 813AC0A0 | EC 63 03 72 */	fmuls f3, f3, f13
/* 813AC0A4 | EC 2D 01 72 */	fmuls f1, f13, f5
/* 813AC0A8 | ED 2D 02 B2 */	fmuls f9, f13, f10
/* 813AC0AC | ED 0C 00 F2 */	fmuls f8, f12, f3
/* 813AC0B0 | EC 2C 00 72 */	fmuls f1, f12, f1
/* 813AC0B4 | ED 2C 02 72 */	fmuls f9, f12, f9
/* 813AC0B8 | EC 6C 02 B2 */	fmuls f3, f12, f10
/* 813AC0BC | EC 8C 00 72 */	fmuls f4, f12, f1
/* 813AC0C0 | EC 2C 01 72 */	fmuls f1, f12, f5
/* 813AC0C4 | EC AC 02 72 */	fmuls f5, f12, f9
/* 813AC0C8 | EC 64 18 28 */	fsubs f3, f4, f3
/* 813AC0CC | EC 24 08 28 */	fsubs f1, f4, f1
/* 813AC0D0 | EC AC 01 72 */	fmuls f5, f12, f5
/* 813AC0D4 | EC 8C 02 32 */	fmuls f4, f12, f8
/* 813AC0D8 | EC 6D 18 2A */	fadds f3, f13, f3
/* 813AC0DC | EC 00 00 72 */	fmuls f0, f0, f1
/* 813AC0E0 | EC 85 20 28 */	fsubs f4, f5, f4
/* 813AC0E4 | EC 22 00 F2 */	fmuls f1, f2, f3
/* 813AC0E8 | EC 6B 20 2A */	fadds f3, f11, f4
/* 813AC0EC | EC 01 00 2A */	fadds f0, f1, f0
/* 813AC0F0 | EC 46 01 32 */	fmuls f2, f6, f4
/* 813AC0F4 | EC 27 00 F2 */	fmuls f1, f7, f3
/* 813AC0F8 | EC 21 10 28 */	fsubs f1, f1, f2
/* 813AC0FC | EC 21 00 2A */	fadds f1, f1, f0
/* 813AC100 | FC 00 08 1E */	fctiwz f0, f1
/* 813AC104 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 813AC108 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 813AC10C | 98 03 00 CD */	stb r0, 0xcd(r3)
/* 813AC110 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813AC114 | 4B FB E5 F1 */	bl calc__Q33ipl6layout6ObjectFv
/* 813AC118 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 813AC11C | 4B FB E5 E9 */	bl calc__Q33ipl6layout6ObjectFv
/* 813AC120 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813AC124 | 48 24 D3 F1 */	bl _restgpr_29
/* 813AC128 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813AC12C | 7C 08 03 A6 */	mtlr r0
/* 813AC130 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813AC134 | 4E 80 00 20 */	blr
.endfn calcDiskLayout__Q33ipl5scene13ChannelSelectFv

# .text:0x1C6C | 0x813AC138 | size: 0x214
# ipl::scene::ChannelSelect::drawChannelThumbnails()
.fn drawChannelThumbnails__Q33ipl5scene13ChannelSelectFv, global
/* 813AC138 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813AC13C | 7C 08 02 A6 */	mflr r0
/* 813AC140 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813AC144 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813AC148 | 48 24 D3 7D */	bl _savegpr_28
/* 813AC14C | 7C 7C 1B 78 */	mr r28, r3
/* 813AC150 | 3B E0 00 00 */	li r31, 0x0
/* 813AC154 | 48 00 01 C8 */	b .L_813AC31C
.L_813AC158:
/* 813AC158 | 83 C3 00 1C */	lwz r30, 0x1c(r3)
/* 813AC15C | 83 A3 00 20 */	lwz r29, 0x20(r3)
/* 813AC160 | 7F 83 E3 78 */	mr r3, r28
/* 813AC164 | 7F C4 F3 78 */	mr r4, r30
/* 813AC168 | 7F A5 EB 78 */	mr r5, r29
/* 813AC16C | 48 00 13 F1 */	bl isChannelInView__Q33ipl5scene13ChannelSelectCFii
/* 813AC170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC174 | 41 82 01 A8 */	beq .L_813AC31C
/* 813AC178 | 7F 83 E3 78 */	mr r3, r28
/* 813AC17C | 7F E4 FB 78 */	mr r4, r31
/* 813AC180 | 48 00 1E 5D */	bl setChannelScissor__Q33ipl5scene13ChannelSelectCFPCQ33ipl5scene10ChannelObj
/* 813AC184 | 7F E3 FB 78 */	mr r3, r31
/* 813AC188 | 48 00 5D B9 */	bl drawThumbnail__Q33ipl5scene10ChannelObjFv
/* 813AC18C | 7F E3 FB 78 */	mr r3, r31
/* 813AC190 | 48 00 60 35 */	bl isDiskChannel__Q33ipl5scene10ChannelObjCFv
/* 813AC194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC198 | 41 82 00 0C */	beq .L_813AC1A4
/* 813AC19C | 80 7C 00 84 */	lwz r3, 0x84(r28)
/* 813AC1A0 | 4B FB E5 FD */	bl draw__Q33ipl6layout6ObjectFv
.L_813AC1A4:
/* 813AC1A4 | 7F E3 FB 78 */	mr r3, r31
/* 813AC1A8 | 48 00 60 A9 */	bl isValid__Q33ipl5scene10ChannelObjCFv
/* 813AC1AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC1B0 | 41 82 00 8C */	beq .L_813AC23C
/* 813AC1B4 | 80 1C 00 C0 */	lwz r0, 0xc0(r28)
/* 813AC1B8 | 2C 00 00 1B */	cmpwi r0, 0x1b
/* 813AC1BC | 40 80 00 80 */	bge .L_813AC23C
/* 813AC1C0 | 2C 00 00 12 */	cmpwi r0, 0x12
/* 813AC1C4 | 40 80 00 08 */	bge .L_813AC1CC
/* 813AC1C8 | 48 00 00 74 */	b .L_813AC23C
.L_813AC1CC:
/* 813AC1CC | 80 1C 02 9C */	lwz r0, 0x29c(r28)
/* 813AC1D0 | 7C 1E 00 00 */	cmpw r30, r0
/* 813AC1D4 | 40 82 00 10 */	bne .L_813AC1E4
/* 813AC1D8 | 80 1C 02 A0 */	lwz r0, 0x2a0(r28)
/* 813AC1DC | 7C 1D 00 00 */	cmpw r29, r0
/* 813AC1E0 | 41 82 00 5C */	beq .L_813AC23C
.L_813AC1E4:
/* 813AC1E4 | 7F E3 FB 78 */	mr r3, r31
/* 813AC1E8 | 48 00 5F CD */	bl getTranslate__Q33ipl5scene10ChannelObjCFv
/* 813AC1EC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813AC1F0 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813AC1F4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813AC1F8 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 813AC1FC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813AC200 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813AC204 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813AC208 | 80 7C 00 AC */	lwz r3, 0xac(r28)
/* 813AC20C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AC210 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813AC214 | 4B F9 84 71 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AC218 | 80 9C 00 AC */	lwz r4, 0xac(r28)
/* 813AC21C | 38 64 00 04 */	addi r3, r4, 0x4
/* 813AC220 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813AC224 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AC228 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813AC22C | 7D 89 03 A6 */	mtctr r12
/* 813AC230 | 4E 80 04 21 */	bctrl
/* 813AC234 | 80 7C 00 AC */	lwz r3, 0xac(r28)
/* 813AC238 | 4B FB E5 65 */	bl draw__Q33ipl6layout6ObjectFv
.L_813AC23C:
/* 813AC23C | 80 1C 00 C0 */	lwz r0, 0xc0(r28)
/* 813AC240 | 2C 00 00 18 */	cmpwi r0, 0x18
/* 813AC244 | 41 82 00 A0 */	beq .L_813AC2E4
/* 813AC248 | 40 80 00 24 */	bge .L_813AC26C
/* 813AC24C | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813AC250 | 40 80 00 10 */	bge .L_813AC260
/* 813AC254 | 2C 00 00 12 */	cmpwi r0, 0x12
/* 813AC258 | 40 80 00 1C */	bge .L_813AC274
/* 813AC25C | 48 00 00 88 */	b .L_813AC2E4
.L_813AC260:
/* 813AC260 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813AC264 | 40 80 00 10 */	bge .L_813AC274
/* 813AC268 | 48 00 00 7C */	b .L_813AC2E4
.L_813AC26C:
/* 813AC26C | 2C 00 00 1B */	cmpwi r0, 0x1b
/* 813AC270 | 40 80 00 74 */	bge .L_813AC2E4
.L_813AC274:
/* 813AC274 | 80 1C 02 9C */	lwz r0, 0x29c(r28)
/* 813AC278 | 7C 1E 00 00 */	cmpw r30, r0
/* 813AC27C | 40 82 00 68 */	bne .L_813AC2E4
/* 813AC280 | 80 1C 02 A0 */	lwz r0, 0x2a0(r28)
/* 813AC284 | 7C 1D 00 00 */	cmpw r29, r0
/* 813AC288 | 40 82 00 5C */	bne .L_813AC2E4
/* 813AC28C | 7F E3 FB 78 */	mr r3, r31
/* 813AC290 | 48 00 5F 25 */	bl getTranslate__Q33ipl5scene10ChannelObjCFv
/* 813AC294 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813AC298 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AC29C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813AC2A0 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813AC2A4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813AC2A8 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813AC2AC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813AC2B0 | 80 7C 02 C4 */	lwz r3, 0x2c4(r28)
/* 813AC2B4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AC2B8 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813AC2BC | 4B F9 83 C9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AC2C0 | 80 9C 02 C4 */	lwz r4, 0x2c4(r28)
/* 813AC2C4 | 38 64 00 04 */	addi r3, r4, 0x4
/* 813AC2C8 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813AC2CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AC2D0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813AC2D4 | 7D 89 03 A6 */	mtctr r12
/* 813AC2D8 | 4E 80 04 21 */	bctrl
/* 813AC2DC | 80 7C 02 C4 */	lwz r3, 0x2c4(r28)
/* 813AC2E0 | 4B FB E4 BD */	bl draw__Q33ipl6layout6ObjectFv
.L_813AC2E4:
/* 813AC2E4 | 80 1C 00 C0 */	lwz r0, 0xc0(r28)
/* 813AC2E8 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 813AC2EC | 40 80 00 30 */	bge .L_813AC31C
/* 813AC2F0 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813AC2F4 | 40 80 00 08 */	bge .L_813AC2FC
/* 813AC2F8 | 48 00 00 24 */	b .L_813AC31C
.L_813AC2FC:
/* 813AC2FC | 80 1C 02 A4 */	lwz r0, 0x2a4(r28)
/* 813AC300 | 7C 1E 00 00 */	cmpw r30, r0
/* 813AC304 | 40 82 00 18 */	bne .L_813AC31C
/* 813AC308 | 80 1C 02 A8 */	lwz r0, 0x2a8(r28)
/* 813AC30C | 7C 1D 00 00 */	cmpw r29, r0
/* 813AC310 | 40 82 00 0C */	bne .L_813AC31C
/* 813AC314 | 80 7C 00 B4 */	lwz r3, 0xb4(r28)
/* 813AC318 | 4B FB E4 85 */	bl draw__Q33ipl6layout6ObjectFv
.L_813AC31C:
/* 813AC31C | 7F E4 FB 78 */	mr r4, r31
/* 813AC320 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813AC324 | 48 16 5F B9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AC328 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC32C | 7C 7F 1B 78 */	mr r31, r3
/* 813AC330 | 40 82 FE 28 */	bne .L_813AC158
/* 813AC334 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813AC338 | 48 24 D1 D9 */	bl _restgpr_28
/* 813AC33C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813AC340 | 7C 08 03 A6 */	mtlr r0
/* 813AC344 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813AC348 | 4E 80 00 20 */	blr
.endfn drawChannelThumbnails__Q33ipl5scene13ChannelSelectFv

# .text:0x1E80 | 0x813AC34C | size: 0xB0
# ipl::scene::ChannelSelect::drawChannelOthers()
.fn drawChannelOthers__Q33ipl5scene13ChannelSelectFv, global
/* 813AC34C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AC350 | 7C 08 02 A6 */	mflr r0
/* 813AC354 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AC358 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AC35C | 3B E0 00 00 */	li r31, 0x0
/* 813AC360 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AC364 | 7C 7E 1B 78 */	mr r30, r3
/* 813AC368 | 48 00 00 24 */	b .L_813AC38C
.L_813AC36C:
/* 813AC36C | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 813AC370 | 7F C3 F3 78 */	mr r3, r30
/* 813AC374 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813AC378 | 48 00 11 E5 */	bl isChannelInView__Q33ipl5scene13ChannelSelectCFii
/* 813AC37C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC380 | 41 82 00 0C */	beq .L_813AC38C
/* 813AC384 | 7F E3 FB 78 */	mr r3, r31
/* 813AC388 | 48 00 5B F5 */	bl drawCursor__Q33ipl5scene10ChannelObjFv
.L_813AC38C:
/* 813AC38C | 7F E4 FB 78 */	mr r4, r31
/* 813AC390 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813AC394 | 48 16 5F 49 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AC398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC39C | 7C 7F 1B 78 */	mr r31, r3
/* 813AC3A0 | 40 82 FF CC */	bne .L_813AC36C
/* 813AC3A4 | 3B E0 00 00 */	li r31, 0x0
/* 813AC3A8 | 48 00 00 24 */	b .L_813AC3CC
.L_813AC3AC:
/* 813AC3AC | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 813AC3B0 | 7F C3 F3 78 */	mr r3, r30
/* 813AC3B4 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813AC3B8 | 48 00 11 A5 */	bl isChannelInView__Q33ipl5scene13ChannelSelectCFii
/* 813AC3BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC3C0 | 41 82 00 0C */	beq .L_813AC3CC
/* 813AC3C4 | 7F E3 FB 78 */	mr r3, r31
/* 813AC3C8 | 48 00 5B BD */	bl drawBalloon__Q33ipl5scene10ChannelObjFv
.L_813AC3CC:
/* 813AC3CC | 7F E4 FB 78 */	mr r4, r31
/* 813AC3D0 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813AC3D4 | 48 16 5F 09 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AC3D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC3DC | 7C 7F 1B 78 */	mr r31, r3
/* 813AC3E0 | 40 82 FF CC */	bne .L_813AC3AC
/* 813AC3E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AC3E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AC3EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AC3F0 | 7C 08 03 A6 */	mtlr r0
/* 813AC3F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AC3F8 | 4E 80 00 20 */	blr
.endfn drawChannelOthers__Q33ipl5scene13ChannelSelectFv

# .text:0x1F30 | 0x813AC3FC | size: 0x12C
# ipl::scene::ChannelSelect::calcNormalNormal()
.fn calcNormalNormal__Q33ipl5scene13ChannelSelectFv, global
/* 813AC3FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AC400 | 7C 08 02 A6 */	mflr r0
/* 813AC404 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AC408 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AC40C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AC410 | 7C 7E 1B 78 */	mr r30, r3
/* 813AC414 | 80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 813AC418 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813AC41C | 40 82 00 20 */	bne .L_813AC43C
/* 813AC420 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813AC424 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813AC428 | 80 A4 00 84 */	lwz r5, 0x84(r4)
/* 813AC42C | 80 85 1B 98 */	lwz r4, 0x1b98(r5)
/* 813AC430 | 80 A5 1B 9C */	lwz r5, 0x1b9c(r5)
/* 813AC434 | 48 00 16 61 */	bl startChanTtlScene__Q33ipl5scene13ChannelSelectFii
/* 813AC438 | 48 00 00 D8 */	b .L_813AC510
.L_813AC43C:
/* 813AC43C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AC440 | 38 80 00 05 */	li r4, 0x5
/* 813AC444 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AC448 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813AC44C | 48 05 EC ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AC450 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC454 | 7C 7F 1B 78 */	mr r31, r3
/* 813AC458 | 41 82 00 18 */	beq .L_813AC470
/* 813AC45C | 4B FF 04 B9 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 813AC460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC464 | 41 82 00 0C */	beq .L_813AC470
/* 813AC468 | 7F E3 FB 78 */	mr r3, r31
/* 813AC46C | 4B FF 01 01 */	bl update__Q33ipl5scene6ButtonFv
.L_813AC470:
/* 813AC470 | 80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 813AC474 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AC478 | 40 82 00 90 */	bne .L_813AC508
/* 813AC47C | 4B F8 95 2D */	bl getMasterController__Q23ipl6SystemFv
/* 813AC480 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AC484 | 3C 80 30 00 */	lis r4, 0x3000
/* 813AC488 | 7C 7F 1B 78 */	mr r31, r3
/* 813AC48C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813AC490 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 813AC494 | 7D 89 03 A6 */	mtctr r12
/* 813AC498 | 4E 80 04 21 */	bctrl
/* 813AC49C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC4A0 | 41 82 00 20 */	beq .L_813AC4C0
/* 813AC4A4 | 80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 813AC4A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AC4AC | 40 81 00 5C */	ble .L_813AC508
/* 813AC4B0 | 7F C3 F3 78 */	mr r3, r30
/* 813AC4B4 | 38 80 00 0A */	li r4, 0xa
/* 813AC4B8 | 48 00 14 01 */	bl preparePageScrolling__Q33ipl5scene13ChannelSelectFi
/* 813AC4BC | 48 00 00 54 */	b .L_813AC510
.L_813AC4C0:
/* 813AC4C0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813AC4C4 | 3C 80 06 00 */	lis r4, 0x600
/* 813AC4C8 | 7F E3 FB 78 */	mr r3, r31
/* 813AC4CC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813AC4D0 | 38 84 00 10 */	addi r4, r4, 0x10
/* 813AC4D4 | 7D 89 03 A6 */	mtctr r12
/* 813AC4D8 | 4E 80 04 21 */	bctrl
/* 813AC4DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC4E0 | 41 82 00 28 */	beq .L_813AC508
/* 813AC4E4 | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813AC4E8 | 80 9E 00 C8 */	lwz r4, 0xc8(r30)
/* 813AC4EC | 38 03 FF FF */	subi r0, r3, 0x1
/* 813AC4F0 | 7C 04 00 00 */	cmpw r4, r0
/* 813AC4F4 | 40 80 00 14 */	bge .L_813AC508
/* 813AC4F8 | 7F C3 F3 78 */	mr r3, r30
/* 813AC4FC | 38 80 00 0B */	li r4, 0xb
/* 813AC500 | 48 00 13 B9 */	bl preparePageScrolling__Q33ipl5scene13ChannelSelectFi
/* 813AC504 | 48 00 00 0C */	b .L_813AC510
.L_813AC508:
/* 813AC508 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813AC50C | 4B FB EA 81 */	bl update__Q33ipl3gui11PaneManagerFv
.L_813AC510:
/* 813AC510 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AC514 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AC518 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AC51C | 7C 08 03 A6 */	mtlr r0
/* 813AC520 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AC524 | 4E 80 00 20 */	blr
.endfn calcNormalNormal__Q33ipl5scene13ChannelSelectFv

# .text:0x205C | 0x813AC528 | size: 0xC0
# ipl::scene::ChannelSelect::calcNormalWaitScrl()
.fn calcNormalWaitScrl__Q33ipl5scene13ChannelSelectFv, global
/* 813AC528 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AC52C | 7C 08 02 A6 */	mflr r0
/* 813AC530 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AC534 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AC538 | 7C 7F 1B 78 */	mr r31, r3
/* 813AC53C | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813AC540 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813AC544 | 40 82 00 4C */	bne .L_813AC590
/* 813AC548 | 80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 813AC54C | 48 00 12 D1 */	bl isPageCreatedAllDone__Q33ipl5scene13ChannelSelectCFi
/* 813AC550 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC554 | 41 82 00 80 */	beq .L_813AC5D4
/* 813AC558 | 88 1F 01 85 */	lbz r0, 0x185(r31)
/* 813AC55C | 38 60 00 00 */	li r3, 0x0
/* 813AC560 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AC564 | 41 82 00 10 */	beq .L_813AC574
/* 813AC568 | 80 1F 01 80 */	lwz r0, 0x180(r31)
/* 813AC56C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813AC570 | 40 82 00 08 */	bne .L_813AC578
.L_813AC574:
/* 813AC574 | 38 60 00 01 */	li r3, 0x1
.L_813AC578:
/* 813AC578 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC57C | 41 82 00 58 */	beq .L_813AC5D4
/* 813AC580 | 7F E3 FB 78 */	mr r3, r31
/* 813AC584 | 38 80 00 0C */	li r4, 0xc
/* 813AC588 | 48 00 13 59 */	bl startPageScroll__Q33ipl5scene13ChannelSelectFi
/* 813AC58C | 48 00 00 48 */	b .L_813AC5D4
.L_813AC590:
/* 813AC590 | 80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 813AC594 | 48 00 12 89 */	bl isPageCreatedAllDone__Q33ipl5scene13ChannelSelectCFi
/* 813AC598 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC59C | 41 82 00 38 */	beq .L_813AC5D4
/* 813AC5A0 | 88 1F 01 85 */	lbz r0, 0x185(r31)
/* 813AC5A4 | 38 60 00 00 */	li r3, 0x0
/* 813AC5A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AC5AC | 41 82 00 10 */	beq .L_813AC5BC
/* 813AC5B0 | 80 1F 01 80 */	lwz r0, 0x180(r31)
/* 813AC5B4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813AC5B8 | 40 82 00 08 */	bne .L_813AC5C0
.L_813AC5BC:
/* 813AC5BC | 38 60 00 01 */	li r3, 0x1
.L_813AC5C0:
/* 813AC5C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC5C4 | 41 82 00 10 */	beq .L_813AC5D4
/* 813AC5C8 | 7F E3 FB 78 */	mr r3, r31
/* 813AC5CC | 38 80 00 0D */	li r4, 0xd
/* 813AC5D0 | 48 00 13 11 */	bl startPageScroll__Q33ipl5scene13ChannelSelectFi
.L_813AC5D4:
/* 813AC5D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AC5D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AC5DC | 7C 08 03 A6 */	mtlr r0
/* 813AC5E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AC5E4 | 4E 80 00 20 */	blr
.endfn calcNormalWaitScrl__Q33ipl5scene13ChannelSelectFv

# .text:0x211C | 0x813AC5E8 | size: 0x110
# ipl::scene::ChannelSelect::calcNormalScrl()
.fn calcNormalScrl__Q33ipl5scene13ChannelSelectFv, global
/* 813AC5E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AC5EC | 7C 08 02 A6 */	mflr r0
/* 813AC5F0 | 38 80 00 00 */	li r4, 0x0
/* 813AC5F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AC5F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AC5FC | 7C 7F 1B 78 */	mr r31, r3
/* 813AC600 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813AC604 | 4B FB E4 CD */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813AC608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC60C | 40 82 00 D8 */	bne .L_813AC6E4
/* 813AC610 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AC614 | 38 80 00 05 */	li r4, 0x5
/* 813AC618 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AC61C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813AC620 | 48 05 EB 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AC624 | 80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 813AC628 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 813AC62C | 40 82 00 48 */	bne .L_813AC674
/* 813AC630 | 80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 813AC634 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 813AC638 | 90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 813AC63C | 40 82 00 18 */	bne .L_813AC654
/* 813AC640 | 38 80 00 1A */	li r4, 0x1a
/* 813AC644 | 4B FF 05 15 */	bl iplButton_8139CB58
/* 813AC648 | 38 00 00 00 */	li r0, 0x0
/* 813AC64C | 98 1F 01 00 */	stb r0, 0x100(r31)
/* 813AC650 | 48 00 00 70 */	b .L_813AC6C0
.L_813AC654:
/* 813AC654 | 88 1F 01 01 */	lbz r0, 0x101(r31)
/* 813AC658 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AC65C | 40 82 00 64 */	bne .L_813AC6C0
/* 813AC660 | 38 80 00 17 */	li r4, 0x17
/* 813AC664 | 4B FF 04 F5 */	bl iplButton_8139CB58
/* 813AC668 | 38 00 00 01 */	li r0, 0x1
/* 813AC66C | 98 1F 01 01 */	stb r0, 0x101(r31)
/* 813AC670 | 48 00 00 50 */	b .L_813AC6C0
.L_813AC674:
/* 813AC674 | 80 BF 00 C8 */	lwz r5, 0xc8(r31)
/* 813AC678 | 80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 813AC67C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813AC680 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813AC684 | 90 BF 00 C8 */	stw r5, 0xc8(r31)
/* 813AC688 | 7C 05 00 00 */	cmpw r5, r0
/* 813AC68C | 40 82 00 18 */	bne .L_813AC6A4
/* 813AC690 | 38 80 00 19 */	li r4, 0x19
/* 813AC694 | 4B FF 04 C5 */	bl iplButton_8139CB58
/* 813AC698 | 38 00 00 00 */	li r0, 0x0
/* 813AC69C | 98 1F 01 01 */	stb r0, 0x101(r31)
/* 813AC6A0 | 48 00 00 20 */	b .L_813AC6C0
.L_813AC6A4:
/* 813AC6A4 | 88 1F 01 00 */	lbz r0, 0x100(r31)
/* 813AC6A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AC6AC | 40 82 00 14 */	bne .L_813AC6C0
/* 813AC6B0 | 38 80 00 18 */	li r4, 0x18
/* 813AC6B4 | 4B FF 04 A5 */	bl iplButton_8139CB58
/* 813AC6B8 | 38 00 00 01 */	li r0, 0x1
/* 813AC6BC | 98 1F 01 00 */	stb r0, 0x100(r31)
.L_813AC6C0:
/* 813AC6C0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AC6C4 | 4B FB DF 71 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813AC6C8 | 80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 813AC6CC | 7F E3 FB 78 */	mr r3, r31
/* 813AC6D0 | 48 00 02 79 */	bl refreshChannelList__Q33ipl5scene13ChannelSelectFi
/* 813AC6D4 | 7F E3 FB 78 */	mr r3, r31
/* 813AC6D8 | 48 00 24 21 */	bl restartChannelModules__Q33ipl5scene13ChannelSelectFv
/* 813AC6DC | 38 00 00 01 */	li r0, 0x1
/* 813AC6E0 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_813AC6E4:
/* 813AC6E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AC6E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AC6EC | 7C 08 03 A6 */	mtlr r0
/* 813AC6F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AC6F4 | 4E 80 00 20 */	blr
.endfn calcNormalScrl__Q33ipl5scene13ChannelSelectFv

# .text:0x222C | 0x813AC6F8 | size: 0x84
# ipl::scene::ChannelSelect::calcNormalWaitLoading()
.fn calcNormalWaitLoading__Q33ipl5scene13ChannelSelectFv, global
/* 813AC6F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AC6FC | 7C 08 02 A6 */	mflr r0
/* 813AC700 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AC704 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813AC708 | 7C 7F 1B 78 */	mr r31, r3
/* 813AC70C | 80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 813AC710 | 48 00 11 0D */	bl isPageCreatedAllDone__Q33ipl5scene13ChannelSelectCFi
/* 813AC714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC718 | 41 82 00 50 */	beq .L_813AC768
/* 813AC71C | 88 1F 01 85 */	lbz r0, 0x185(r31)
/* 813AC720 | 38 60 00 00 */	li r3, 0x0
/* 813AC724 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AC728 | 41 82 00 10 */	beq .L_813AC738
/* 813AC72C | 80 1F 01 80 */	lwz r0, 0x180(r31)
/* 813AC730 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813AC734 | 40 82 00 08 */	bne .L_813AC73C
.L_813AC738:
/* 813AC738 | 38 60 00 01 */	li r3, 0x1
.L_813AC73C:
/* 813AC73C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC740 | 41 82 00 28 */	beq .L_813AC768
/* 813AC744 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813AC748 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AC74C | 4B FF E8 B9 */	bl getCurrentChannel__Q33ipl7channel7ManagerFPiPi
/* 813AC750 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813AC754 | 7F E3 FB 78 */	mr r3, r31
/* 813AC758 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813AC75C | 48 00 14 59 */	bl reserveSceneChangeDerived__Q33ipl5scene13ChannelSelectFii
/* 813AC760 | 38 00 00 08 */	li r0, 0x8
/* 813AC764 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_813AC768:
/* 813AC768 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AC76C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813AC770 | 7C 08 03 A6 */	mtlr r0
/* 813AC774 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AC778 | 4E 80 00 20 */	blr
.endfn calcNormalWaitLoading__Q33ipl5scene13ChannelSelectFv

# .text:0x22B0 | 0x813AC77C | size: 0x5C
# ipl::scene::ChannelSelect::calcNormalFadeOutZoom()
.fn calcNormalFadeOutZoom__Q33ipl5scene13ChannelSelectFv, global
/* 813AC77C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AC780 | 7C 08 02 A6 */	mflr r0
/* 813AC784 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AC788 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AC78C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813AC790 | 7C 7F 1B 78 */	mr r31, r3
/* 813AC794 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813AC798 | 4B FF E8 6D */	bl getCurrentChannel__Q33ipl7channel7ManagerFPiPi
/* 813AC79C | 7F E3 FB 78 */	mr r3, r31
/* 813AC7A0 | 48 00 1F 31 */	bl calcChanZoomParam__Q33ipl5scene13ChannelSelectFv
/* 813AC7A4 | 7F E3 FB 78 */	mr r3, r31
/* 813AC7A8 | 48 00 1F 89 */	bl setChanZoomOrtho__Q33ipl5scene13ChannelSelectFv
/* 813AC7AC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813AC7B0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AC7B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AC7B8 | 41 82 00 0C */	beq .L_813AC7C4
/* 813AC7BC | 38 00 00 0E */	li r0, 0xe
/* 813AC7C0 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_813AC7C4:
/* 813AC7C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AC7C8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813AC7CC | 7C 08 03 A6 */	mtlr r0
/* 813AC7D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AC7D4 | 4E 80 00 20 */	blr
.endfn calcNormalFadeOutZoom__Q33ipl5scene13ChannelSelectFv

# .text:0x230C | 0x813AC7D8 | size: 0x14C
# ipl::scene::ChannelSelect::calcNormalRestart()
.fn calcNormalRestart__Q33ipl5scene13ChannelSelectFv, global
/* 813AC7D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AC7DC | 7C 08 02 A6 */	mflr r0
/* 813AC7E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AC7E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AC7E8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AC7EC | 7C 7E 1B 78 */	mr r30, r3
/* 813AC7F0 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813AC7F4 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813AC7F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AC7FC | 41 82 01 00 */	beq .L_813AC8FC
/* 813AC800 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813AC804 | 38 80 00 03 */	li r4, 0x3
/* 813AC808 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813AC80C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813AC810 | 48 05 E9 29 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AC814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AC818 | 40 82 00 E4 */	bne .L_813AC8FC
/* 813AC81C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813AC820 | 38 80 00 05 */	li r4, 0x5
/* 813AC824 | 48 05 E9 15 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AC828 | 7C 7F 1B 78 */	mr r31, r3
/* 813AC82C | 4B FF 09 D5 */	bl enableBtn__Q33ipl5scene6ButtonFv
/* 813AC830 | 80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 813AC834 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AC838 | 40 81 00 1C */	ble .L_813AC854
/* 813AC83C | 7F E3 FB 78 */	mr r3, r31
/* 813AC840 | 38 80 00 18 */	li r4, 0x18
/* 813AC844 | 4B FF 03 15 */	bl iplButton_8139CB58
/* 813AC848 | 38 00 00 01 */	li r0, 0x1
/* 813AC84C | 98 1E 01 00 */	stb r0, 0x100(r30)
/* 813AC850 | 48 00 00 0C */	b .L_813AC85C
.L_813AC854:
/* 813AC854 | 38 00 00 00 */	li r0, 0x0
/* 813AC858 | 98 1E 01 00 */	stb r0, 0x100(r30)
.L_813AC85C:
/* 813AC85C | 80 9E 00 CC */	lwz r4, 0xcc(r30)
/* 813AC860 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813AC864 | 40 81 00 2C */	ble .L_813AC890
/* 813AC868 | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 813AC86C | 38 04 FF FF */	subi r0, r4, 0x1
/* 813AC870 | 7C 03 00 00 */	cmpw r3, r0
/* 813AC874 | 40 80 00 1C */	bge .L_813AC890
/* 813AC878 | 7F E3 FB 78 */	mr r3, r31
/* 813AC87C | 38 80 00 17 */	li r4, 0x17
/* 813AC880 | 4B FF 02 D9 */	bl iplButton_8139CB58
/* 813AC884 | 38 00 00 01 */	li r0, 0x1
/* 813AC888 | 98 1E 01 01 */	stb r0, 0x101(r30)
/* 813AC88C | 48 00 00 0C */	b .L_813AC898
.L_813AC890:
/* 813AC890 | 38 00 00 00 */	li r0, 0x0
/* 813AC894 | 98 1E 01 01 */	stb r0, 0x101(r30)
.L_813AC898:
/* 813AC898 | 80 9E 00 B8 */	lwz r4, 0xb8(r30)
/* 813AC89C | 7F E3 FB 78 */	mr r3, r31
/* 813AC8A0 | 38 A0 00 00 */	li r5, 0x0
/* 813AC8A4 | 4B FF 00 99 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813AC8A8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AC8AC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AC8B0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813AC8B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AC8B8 | 40 82 00 10 */	bne .L_813AC8C8
/* 813AC8BC | 80 9E 00 BC */	lwz r4, 0xbc(r30)
/* 813AC8C0 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 813AC8C4 | 48 03 E7 69 */	bl fn_813EB02C
.L_813AC8C8:
/* 813AC8C8 | 7F C3 F3 78 */	mr r3, r30
/* 813AC8CC | 48 00 22 2D */	bl restartChannelModules__Q33ipl5scene13ChannelSelectFv
/* 813AC8D0 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813AC8D4 | 38 80 00 01 */	li r4, 0x1
/* 813AC8D8 | 4B FB 55 49 */	bl setEnable__Q23ipl11TVRCManagerFi
/* 813AC8DC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813AC8E0 | 3C 80 81 65 */	lis r4, lbl_8164DCDF@ha
/* 813AC8E4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813AC8E8 | 38 84 DC DF */	addi r4, r4, lbl_8164DCDF@l
/* 813AC8EC | 4B FB EA D1 */	bl startBGM__Q33ipl3snd6SystemFPCc
/* 813AC8F0 | 38 00 00 01 */	li r0, 0x1
/* 813AC8F4 | 90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 813AC8F8 | 48 00 00 14 */	b .L_813AC90C
.L_813AC8FC:
/* 813AC8FC | 7F C3 F3 78 */	mr r3, r30
/* 813AC900 | 48 00 1D D1 */	bl calcChanZoomParam__Q33ipl5scene13ChannelSelectFv
/* 813AC904 | 7F C3 F3 78 */	mr r3, r30
/* 813AC908 | 48 00 1E 29 */	bl setChanZoomOrtho__Q33ipl5scene13ChannelSelectFv
.L_813AC90C:
/* 813AC90C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AC910 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AC914 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AC918 | 7C 08 03 A6 */	mtlr r0
/* 813AC91C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AC920 | 4E 80 00 20 */	blr
.endfn calcNormalRestart__Q33ipl5scene13ChannelSelectFv

# .text:0x2458 | 0x813AC924 | size: 0x24
# ipl::scene::ChannelSelect::calcNormalSafeModeDialog()
.fn calcNormalSafeModeDialog__Q33ipl5scene13ChannelSelectFv, global
/* 813AC924 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813AC928 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813AC92C | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813AC930 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813AC934 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AC938 | 4C 82 00 20 */	bnelr
/* 813AC93C | 38 00 00 01 */	li r0, 0x1
/* 813AC940 | 90 03 00 C0 */	stw r0, 0xc0(r3)
/* 813AC944 | 4E 80 00 20 */	blr
.endfn calcNormalSafeModeDialog__Q33ipl5scene13ChannelSelectFv

# .text:0x247C | 0x813AC948 | size: 0x88
# ipl::scene::ChannelSelect::refreshChannelList(int)
.fn refreshChannelList__Q33ipl5scene13ChannelSelectFi, global
/* 813AC948 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AC94C | 7C 08 02 A6 */	mflr r0
/* 813AC950 | 38 A0 00 00 */	li r5, 0x0
/* 813AC954 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AC958 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AC95C | 7C 9F 23 78 */	mr r31, r4
/* 813AC960 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AC964 | 7C 7E 1B 78 */	mr r30, r3
/* 813AC968 | 48 00 00 69 */	bl makeChannelList__Q33ipl5scene13ChannelSelectFib
/* 813AC96C | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813AC970 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813AC974 | 7C 1F 00 00 */	cmpw r31, r0
/* 813AC978 | 40 80 00 14 */	bge .L_813AC98C
/* 813AC97C | 7F C3 F3 78 */	mr r3, r30
/* 813AC980 | 38 9F 00 01 */	addi r4, r31, 0x1
/* 813AC984 | 38 A0 00 00 */	li r5, 0x0
/* 813AC988 | 48 00 00 49 */	bl makeChannelList__Q33ipl5scene13ChannelSelectFib
.L_813AC98C:
/* 813AC98C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813AC990 | 40 81 00 14 */	ble .L_813AC9A4
/* 813AC994 | 7F C3 F3 78 */	mr r3, r30
/* 813AC998 | 38 9F FF FF */	subi r4, r31, 0x1
/* 813AC99C | 38 A0 00 00 */	li r5, 0x0
/* 813AC9A0 | 48 00 00 31 */	bl makeChannelList__Q33ipl5scene13ChannelSelectFib
.L_813AC9A4:
/* 813AC9A4 | 7F C3 F3 78 */	mr r3, r30
/* 813AC9A8 | 7F E4 FB 78 */	mr r4, r31
/* 813AC9AC | 48 00 02 5D */	bl sortChannelList__Q33ipl5scene13ChannelSelectFi
/* 813AC9B0 | 7F C3 F3 78 */	mr r3, r30
/* 813AC9B4 | 4B FF F3 11 */	bl createChannelThumbnails__Q33ipl5scene13ChannelSelectFv
/* 813AC9B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AC9BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AC9C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AC9C4 | 7C 08 03 A6 */	mtlr r0
/* 813AC9C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AC9CC | 4E 80 00 20 */	blr
.endfn refreshChannelList__Q33ipl5scene13ChannelSelectFi

# .text:0x2504 | 0x813AC9D0 | size: 0x110
# ipl::scene::ChannelSelect::makeChannelList(int, bool)
.fn makeChannelList__Q33ipl5scene13ChannelSelectFib, global
/* 813AC9D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AC9D4 | 7C 08 02 A6 */	mflr r0
/* 813AC9D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AC9DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AC9E0 | 48 24 CA E5 */	bl _savegpr_28
/* 813AC9E4 | 7C 7C 1B 78 */	mr r28, r3
/* 813AC9E8 | 7C 9D 23 78 */	mr r29, r4
/* 813AC9EC | 7C BE 2B 78 */	mr r30, r5
/* 813AC9F0 | 3B E0 00 00 */	li r31, 0x0
.L_813AC9F4:
/* 813AC9F4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813AC9F8 | 40 82 00 1C */	bne .L_813ACA14
/* 813AC9FC | 7F 83 E3 78 */	mr r3, r28
/* 813ACA00 | 7F A4 EB 78 */	mr r4, r29
/* 813ACA04 | 7F E5 FB 78 */	mr r5, r31
/* 813ACA08 | 48 00 04 71 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813ACA0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ACA10 | 40 82 00 14 */	bne .L_813ACA24
.L_813ACA14:
/* 813ACA14 | 7F 83 E3 78 */	mr r3, r28
/* 813ACA18 | 7F A4 EB 78 */	mr r4, r29
/* 813ACA1C | 7F E5 FB 78 */	mr r5, r31
/* 813ACA20 | 48 00 00 C1 */	bl appendToChannelList__Q33ipl5scene13ChannelSelectFii
.L_813ACA24:
/* 813ACA24 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813ACA28 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813ACA2C | 41 80 FF C8 */	blt .L_813AC9F4
/* 813ACA30 | 80 7C 00 CC */	lwz r3, 0xcc(r28)
/* 813ACA34 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813ACA38 | 7C 1D 00 00 */	cmpw r29, r0
/* 813ACA3C | 40 80 00 44 */	bge .L_813ACA80
/* 813ACA40 | 3B E0 00 00 */	li r31, 0x0
.L_813ACA44:
/* 813ACA44 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813ACA48 | 40 82 00 1C */	bne .L_813ACA64
/* 813ACA4C | 7F 83 E3 78 */	mr r3, r28
/* 813ACA50 | 7F E5 FB 78 */	mr r5, r31
/* 813ACA54 | 38 9D 00 01 */	addi r4, r29, 0x1
/* 813ACA58 | 48 00 04 21 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813ACA5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ACA60 | 40 82 00 14 */	bne .L_813ACA74
.L_813ACA64:
/* 813ACA64 | 7F 83 E3 78 */	mr r3, r28
/* 813ACA68 | 7F E5 FB 78 */	mr r5, r31
/* 813ACA6C | 38 9D 00 01 */	addi r4, r29, 0x1
/* 813ACA70 | 48 00 00 71 */	bl appendToChannelList__Q33ipl5scene13ChannelSelectFii
.L_813ACA74:
/* 813ACA74 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813ACA78 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813ACA7C | 41 80 FF C8 */	blt .L_813ACA44
.L_813ACA80:
/* 813ACA80 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813ACA84 | 40 81 00 44 */	ble .L_813ACAC8
/* 813ACA88 | 3B E0 00 03 */	li r31, 0x3
.L_813ACA8C:
/* 813ACA8C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813ACA90 | 40 82 00 1C */	bne .L_813ACAAC
/* 813ACA94 | 7F 83 E3 78 */	mr r3, r28
/* 813ACA98 | 7F E5 FB 78 */	mr r5, r31
/* 813ACA9C | 38 9D FF FF */	subi r4, r29, 0x1
/* 813ACAA0 | 48 00 03 D9 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813ACAA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ACAA8 | 40 82 00 14 */	bne .L_813ACABC
.L_813ACAAC:
/* 813ACAAC | 7F 83 E3 78 */	mr r3, r28
/* 813ACAB0 | 7F E5 FB 78 */	mr r5, r31
/* 813ACAB4 | 38 9D FF FF */	subi r4, r29, 0x1
/* 813ACAB8 | 48 00 00 29 */	bl appendToChannelList__Q33ipl5scene13ChannelSelectFii
.L_813ACABC:
/* 813ACABC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813ACAC0 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813ACAC4 | 41 80 FF C8 */	blt .L_813ACA8C
.L_813ACAC8:
/* 813ACAC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ACACC | 48 24 CA 45 */	bl _restgpr_28
/* 813ACAD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ACAD4 | 7C 08 03 A6 */	mtlr r0
/* 813ACAD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ACADC | 4E 80 00 20 */	blr
.endfn makeChannelList__Q33ipl5scene13ChannelSelectFib

# .text:0x2614 | 0x813ACAE0 | size: 0xD8
# ipl::scene::ChannelSelect::appendToChannelList(int, int)
.fn appendToChannelList__Q33ipl5scene13ChannelSelectFii, global
/* 813ACAE0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813ACAE4 | 7C 08 02 A6 */	mflr r0
/* 813ACAE8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813ACAEC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ACAF0 | 48 24 C9 CD */	bl _savegpr_26
/* 813ACAF4 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813ACAF8 | 7C 9B 23 78 */	mr r27, r4
/* 813ACAFC | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813ACB00 | 7C 7A 1B 78 */	mr r26, r3
/* 813ACB04 | 80 66 00 84 */	lwz r3, 0x84(r6)
/* 813ACB08 | 7C BC 2B 78 */	mr r28, r5
/* 813ACB0C | 38 81 00 0C */	addi r4, r1, 0xc
/* 813ACB10 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813ACB14 | 3B C0 00 00 */	li r30, 0x0
/* 813ACB18 | 4B F8 C3 39 */	bl getDiskChannelLocation__Q33ipl7channel7ManagerFPiPi
/* 813ACB1C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813ACB20 | 7C 00 D8 00 */	cmpw r0, r27
/* 813ACB24 | 40 82 00 1C */	bne .L_813ACB40
/* 813ACB28 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813ACB2C | 7C 00 E0 00 */	cmpw r0, r28
/* 813ACB30 | 40 82 00 10 */	bne .L_813ACB40
/* 813ACB34 | 3B C0 00 01 */	li r30, 0x1
/* 813ACB38 | 3B A0 00 00 */	li r29, 0x0
/* 813ACB3C | 48 00 00 1C */	b .L_813ACB58
.L_813ACB40:
/* 813ACB40 | 3C 60 00 02 */	lis r3, 0x2
/* 813ACB44 | 80 9A 01 6C */	lwz r4, 0x16c(r26)
/* 813ACB48 | 38 63 12 B8 */	addi r3, r3, 0x12b8
/* 813ACB4C | 38 A0 00 02 */	li r5, 0x2
/* 813ACB50 | 48 24 AE 95 */	bl fn_815F79E4
/* 813ACB54 | 7C 7D 1B 78 */	mr r29, r3
.L_813ACB58:
/* 813ACB58 | 80 9A 01 7C */	lwz r4, 0x17c(r26)
/* 813ACB5C | 38 60 01 14 */	li r3, 0x114
/* 813ACB60 | 38 A0 00 04 */	li r5, 0x4
/* 813ACB64 | 48 24 B5 4D */	bl __nw__FUlPQ23EGG4Heapi
/* 813ACB68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ACB6C | 7C 7F 1B 78 */	mr r31, r3
/* 813ACB70 | 41 82 00 18 */	beq .L_813ACB88
/* 813ACB74 | 7F A4 EB 78 */	mr r4, r29
/* 813ACB78 | 7F 65 DB 78 */	mr r5, r27
/* 813ACB7C | 7F 86 E3 78 */	mr r6, r28
/* 813ACB80 | 48 00 4A 05 */	bl __ct__Q33ipl5scene10ChannelObjFPQ23EGG4Heapii
/* 813ACB84 | 7C 7F 1B 78 */	mr r31, r3
.L_813ACB88:
/* 813ACB88 | 7F E4 FB 78 */	mr r4, r31
/* 813ACB8C | 38 7A 00 58 */	addi r3, r26, 0x58
/* 813ACB90 | 48 16 54 E5 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813ACB94 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813ACB98 | 41 82 00 08 */	beq .L_813ACBA0
/* 813ACB9C | 93 FA 00 90 */	stw r31, 0x90(r26)
.L_813ACBA0:
/* 813ACBA0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ACBA4 | 48 24 C9 65 */	bl _restgpr_26
/* 813ACBA8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813ACBAC | 7C 08 03 A6 */	mtlr r0
/* 813ACBB0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813ACBB4 | 4E 80 00 20 */	blr
.endfn appendToChannelList__Q33ipl5scene13ChannelSelectFii

# .text:0x26EC | 0x813ACBB8 | size: 0x50
# ipl::scene::ChannelSelect::destroyChannelObj(ipl::scene::ChannelObj*)
.fn destroyChannelObj__Q33ipl5scene13ChannelSelectFPQ33ipl5scene10ChannelObj, global
/* 813ACBB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ACBBC | 7C 08 02 A6 */	mflr r0
/* 813ACBC0 | 7C 83 23 78 */	mr r3, r4
/* 813ACBC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ACBC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ACBCC | 83 E4 00 10 */	lwz r31, 0x10(r4)
/* 813ACBD0 | 38 80 00 01 */	li r4, 0x1
/* 813ACBD4 | 48 00 4B 1D */	bl __dt__Q33ipl5scene10ChannelObjFv
/* 813ACBD8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813ACBDC | 41 82 00 18 */	beq .L_813ACBF4
/* 813ACBE0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813ACBE4 | 7F E3 FB 78 */	mr r3, r31
/* 813ACBE8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813ACBEC | 7D 89 03 A6 */	mtctr r12
/* 813ACBF0 | 4E 80 04 21 */	bctrl
.L_813ACBF4:
/* 813ACBF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ACBF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ACBFC | 7C 08 03 A6 */	mtlr r0
/* 813ACC00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ACC04 | 4E 80 00 20 */	blr
.endfn destroyChannelObj__Q33ipl5scene13ChannelSelectFPQ33ipl5scene10ChannelObj

# .text:0x273C | 0x813ACC08 | size: 0x134
# ipl::scene::ChannelSelect::sortChannelList(int)
.fn sortChannelList__Q33ipl5scene13ChannelSelectFi, global
/* 813ACC08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ACC0C | 7C 08 02 A6 */	mflr r0
/* 813ACC10 | 38 A0 00 00 */	li r5, 0x0
/* 813ACC14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ACC18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ACC1C | 7C 9F 23 78 */	mr r31, r4
/* 813ACC20 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ACC24 | 7C 7E 1B 78 */	mr r30, r3
/* 813ACC28 | 48 00 01 15 */	bl sortChannelListByPage__Q33ipl5scene13ChannelSelectFii
/* 813ACC2C | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813ACC30 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813ACC34 | 7C 1F 00 00 */	cmpw r31, r0
/* 813ACC38 | 40 80 00 14 */	bge .L_813ACC4C
/* 813ACC3C | 7F C3 F3 78 */	mr r3, r30
/* 813ACC40 | 38 9F 00 01 */	addi r4, r31, 0x1
/* 813ACC44 | 38 A0 FF FF */	li r5, -0x1
/* 813ACC48 | 48 00 00 F5 */	bl sortChannelListByPage__Q33ipl5scene13ChannelSelectFii
.L_813ACC4C:
/* 813ACC4C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813ACC50 | 40 81 00 14 */	ble .L_813ACC64
/* 813ACC54 | 7F C3 F3 78 */	mr r3, r30
/* 813ACC58 | 38 9F FF FF */	subi r4, r31, 0x1
/* 813ACC5C | 38 A0 00 01 */	li r5, 0x1
/* 813ACC60 | 48 00 00 DD */	bl sortChannelListByPage__Q33ipl5scene13ChannelSelectFii
.L_813ACC64:
/* 813ACC64 | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813ACC68 | 38 03 FF FE */	subi r0, r3, 0x2
/* 813ACC6C | 7C 1F 00 00 */	cmpw r31, r0
/* 813ACC70 | 40 80 00 28 */	bge .L_813ACC98
/* 813ACC74 | 7F C3 F3 78 */	mr r3, r30
/* 813ACC78 | 38 9F 00 02 */	addi r4, r31, 0x2
/* 813ACC7C | 48 00 0A 89 */	bl isPageCreated__Q33ipl5scene13ChannelSelectCFi
/* 813ACC80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ACC84 | 41 82 00 14 */	beq .L_813ACC98
/* 813ACC88 | 7F C3 F3 78 */	mr r3, r30
/* 813ACC8C | 38 9F 00 02 */	addi r4, r31, 0x2
/* 813ACC90 | 38 A0 FF FF */	li r5, -0x1
/* 813ACC94 | 48 00 00 A9 */	bl sortChannelListByPage__Q33ipl5scene13ChannelSelectFii
.L_813ACC98:
/* 813ACC98 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 813ACC9C | 40 81 00 28 */	ble .L_813ACCC4
/* 813ACCA0 | 7F C3 F3 78 */	mr r3, r30
/* 813ACCA4 | 38 9F FF FE */	subi r4, r31, 0x2
/* 813ACCA8 | 48 00 0A 5D */	bl isPageCreated__Q33ipl5scene13ChannelSelectCFi
/* 813ACCAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ACCB0 | 41 82 00 14 */	beq .L_813ACCC4
/* 813ACCB4 | 7F C3 F3 78 */	mr r3, r30
/* 813ACCB8 | 38 9F FF FE */	subi r4, r31, 0x2
/* 813ACCBC | 38 A0 00 01 */	li r5, 0x1
/* 813ACCC0 | 48 00 00 7D */	bl sortChannelListByPage__Q33ipl5scene13ChannelSelectFii
.L_813ACCC4:
/* 813ACCC4 | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813ACCC8 | 38 03 FF FD */	subi r0, r3, 0x3
/* 813ACCCC | 7C 1F 00 00 */	cmpw r31, r0
/* 813ACCD0 | 40 80 00 28 */	bge .L_813ACCF8
/* 813ACCD4 | 7F C3 F3 78 */	mr r3, r30
/* 813ACCD8 | 38 9F 00 03 */	addi r4, r31, 0x3
/* 813ACCDC | 48 00 0A 29 */	bl isPageCreated__Q33ipl5scene13ChannelSelectCFi
/* 813ACCE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ACCE4 | 41 82 00 14 */	beq .L_813ACCF8
/* 813ACCE8 | 7F C3 F3 78 */	mr r3, r30
/* 813ACCEC | 38 9F 00 03 */	addi r4, r31, 0x3
/* 813ACCF0 | 38 A0 FF FF */	li r5, -0x1
/* 813ACCF4 | 48 00 00 49 */	bl sortChannelListByPage__Q33ipl5scene13ChannelSelectFii
.L_813ACCF8:
/* 813ACCF8 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 813ACCFC | 40 81 00 28 */	ble .L_813ACD24
/* 813ACD00 | 7F C3 F3 78 */	mr r3, r30
/* 813ACD04 | 38 9F FF FD */	subi r4, r31, 0x3
/* 813ACD08 | 48 00 09 FD */	bl isPageCreated__Q33ipl5scene13ChannelSelectCFi
/* 813ACD0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ACD10 | 41 82 00 14 */	beq .L_813ACD24
/* 813ACD14 | 7F C3 F3 78 */	mr r3, r30
/* 813ACD18 | 38 9F FF FD */	subi r4, r31, 0x3
/* 813ACD1C | 38 A0 00 01 */	li r5, 0x1
/* 813ACD20 | 48 00 00 1D */	bl sortChannelListByPage__Q33ipl5scene13ChannelSelectFii
.L_813ACD24:
/* 813ACD24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ACD28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ACD2C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ACD30 | 7C 08 03 A6 */	mtlr r0
/* 813ACD34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ACD38 | 4E 80 00 20 */	blr
.endfn sortChannelList__Q33ipl5scene13ChannelSelectFi

# .text:0x2870 | 0x813ACD3C | size: 0x13C
# ipl::scene::ChannelSelect::sortChannelListByPage(int, int)
.fn sortChannelListByPage__Q33ipl5scene13ChannelSelectFii, global
/* 813ACD3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813ACD40 | 7C 08 02 A6 */	mflr r0
/* 813ACD44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813ACD48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ACD4C | 48 24 C7 75 */	bl _savegpr_27
/* 813ACD50 | 7C 7B 1B 78 */	mr r27, r3
/* 813ACD54 | 7C 9C 23 78 */	mr r28, r4
/* 813ACD58 | 7C BD 2B 78 */	mr r29, r5
/* 813ACD5C | 3B E0 00 00 */	li r31, 0x0
.L_813ACD60:
/* 813ACD60 | 2C 1D FF FF */	cmpwi r29, -0x1
/* 813ACD64 | 40 82 00 10 */	bne .L_813ACD74
/* 813ACD68 | 57 E0 07 BF */	clrlwi. r0, r31, 30
/* 813ACD6C | 41 82 00 48 */	beq .L_813ACDB4
/* 813ACD70 | 48 00 00 18 */	b .L_813ACD88
.L_813ACD74:
/* 813ACD74 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813ACD78 | 40 82 00 10 */	bne .L_813ACD88
/* 813ACD7C | 57 E0 07 BE */	clrlwi r0, r31, 30
/* 813ACD80 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813ACD84 | 41 82 00 30 */	beq .L_813ACDB4
.L_813ACD88:
/* 813ACD88 | 7F 63 DB 78 */	mr r3, r27
/* 813ACD8C | 7F 84 E3 78 */	mr r4, r28
/* 813ACD90 | 7F E5 FB 78 */	mr r5, r31
/* 813ACD94 | 48 00 00 E5 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813ACD98 | 7C 7E 1B 78 */	mr r30, r3
/* 813ACD9C | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813ACDA0 | 7F C4 F3 78 */	mr r4, r30
/* 813ACDA4 | 48 16 54 CD */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813ACDA8 | 7F C4 F3 78 */	mr r4, r30
/* 813ACDAC | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813ACDB0 | 48 16 52 C5 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_813ACDB4:
/* 813ACDB4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813ACDB8 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813ACDBC | 41 80 FF A4 */	blt .L_813ACD60
/* 813ACDC0 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813ACDC4 | 41 82 00 50 */	beq .L_813ACE14
/* 813ACDC8 | 80 1B 00 CC */	lwz r0, 0xcc(r27)
/* 813ACDCC | 38 7C 00 01 */	addi r3, r28, 0x1
/* 813ACDD0 | 7C 03 00 00 */	cmpw r3, r0
/* 813ACDD4 | 40 80 00 40 */	bge .L_813ACE14
/* 813ACDD8 | 3B C0 00 00 */	li r30, 0x0
.L_813ACDDC:
/* 813ACDDC | 7F 63 DB 78 */	mr r3, r27
/* 813ACDE0 | 7F C5 F3 78 */	mr r5, r30
/* 813ACDE4 | 38 9C 00 01 */	addi r4, r28, 0x1
/* 813ACDE8 | 48 00 00 91 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813ACDEC | 7C 7F 1B 78 */	mr r31, r3
/* 813ACDF0 | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813ACDF4 | 7F E4 FB 78 */	mr r4, r31
/* 813ACDF8 | 48 16 54 79 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813ACDFC | 7F E4 FB 78 */	mr r4, r31
/* 813ACE00 | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813ACE04 | 48 16 52 71 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813ACE08 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813ACE0C | 2C 1E 00 0C */	cmpwi r30, 0xc
/* 813ACE10 | 41 80 FF CC */	blt .L_813ACDDC
.L_813ACE14:
/* 813ACE14 | 2C 1D FF FF */	cmpwi r29, -0x1
/* 813ACE18 | 41 82 00 48 */	beq .L_813ACE60
/* 813ACE1C | 34 1C FF FF */	subic. r0, r28, 0x1
/* 813ACE20 | 41 80 00 40 */	blt .L_813ACE60
/* 813ACE24 | 3B C0 00 03 */	li r30, 0x3
.L_813ACE28:
/* 813ACE28 | 7F 63 DB 78 */	mr r3, r27
/* 813ACE2C | 7F C5 F3 78 */	mr r5, r30
/* 813ACE30 | 38 9C FF FF */	subi r4, r28, 0x1
/* 813ACE34 | 48 00 00 45 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813ACE38 | 7C 7F 1B 78 */	mr r31, r3
/* 813ACE3C | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813ACE40 | 7F E4 FB 78 */	mr r4, r31
/* 813ACE44 | 48 16 54 2D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813ACE48 | 7F E4 FB 78 */	mr r4, r31
/* 813ACE4C | 38 7B 00 58 */	addi r3, r27, 0x58
/* 813ACE50 | 48 16 52 25 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813ACE54 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813ACE58 | 2C 1E 00 0C */	cmpwi r30, 0xc
/* 813ACE5C | 41 80 FF CC */	blt .L_813ACE28
.L_813ACE60:
/* 813ACE60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ACE64 | 48 24 C6 A9 */	bl _restgpr_27
/* 813ACE68 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ACE6C | 7C 08 03 A6 */	mtlr r0
/* 813ACE70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ACE74 | 4E 80 00 20 */	blr
.endfn sortChannelListByPage__Q33ipl5scene13ChannelSelectFii

# .text:0x29AC | 0x813ACE78 | size: 0x74
# ipl::scene::ChannelSelect::searchList(int, int) const
.fn searchList__Q33ipl5scene13ChannelSelectCFii, global
/* 813ACE78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813ACE7C | 7C 08 02 A6 */	mflr r0
/* 813ACE80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813ACE84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ACE88 | 48 24 C6 41 */	bl _savegpr_29
/* 813ACE8C | 7C 7D 1B 78 */	mr r29, r3
/* 813ACE90 | 7C 9E 23 78 */	mr r30, r4
/* 813ACE94 | 7C BF 2B 78 */	mr r31, r5
/* 813ACE98 | 38 60 00 00 */	li r3, 0x0
/* 813ACE9C | 48 00 00 20 */	b .L_813ACEBC
.L_813ACEA0:
/* 813ACEA0 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 813ACEA4 | 80 83 00 20 */	lwz r4, 0x20(r3)
/* 813ACEA8 | 7C 00 F0 00 */	cmpw r0, r30
/* 813ACEAC | 40 82 00 10 */	bne .L_813ACEBC
/* 813ACEB0 | 7C 04 F8 00 */	cmpw r4, r31
/* 813ACEB4 | 40 82 00 08 */	bne .L_813ACEBC
/* 813ACEB8 | 48 00 00 1C */	b .L_813ACED4
.L_813ACEBC:
/* 813ACEBC | 7C 64 1B 78 */	mr r4, r3
/* 813ACEC0 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813ACEC4 | 48 16 54 19 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813ACEC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ACECC | 40 82 FF D4 */	bne .L_813ACEA0
/* 813ACED0 | 38 60 00 00 */	li r3, 0x0
.L_813ACED4:
/* 813ACED4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ACED8 | 48 24 C6 3D */	bl _restgpr_29
/* 813ACEDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ACEE0 | 7C 08 03 A6 */	mtlr r0
/* 813ACEE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ACEE8 | 4E 80 00 20 */	blr
.endfn searchList__Q33ipl5scene13ChannelSelectCFii

# .text:0x2A20 | 0x813ACEEC | size: 0x5C
# ipl::scene::ChannelSelect::setupDiskChanObj()
.fn setupDiskChanObj__Q33ipl5scene13ChannelSelectFv, global
/* 813ACEEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813ACEF0 | 7C 08 02 A6 */	mflr r0
/* 813ACEF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813ACEF8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813ACEFC | 7C 7F 1B 78 */	mr r31, r3
/* 813ACF00 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 813ACF04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ACF08 | 40 82 00 2C */	bne .L_813ACF34
/* 813ACF0C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813ACF10 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813ACF14 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813ACF18 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813ACF1C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813ACF20 | 4B F8 BF 31 */	bl getDiskChannelLocation__Q33ipl7channel7ManagerFPiPi
/* 813ACF24 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813ACF28 | 7F E3 FB 78 */	mr r3, r31
/* 813ACF2C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813ACF30 | 4B FF FB B1 */	bl appendToChannelList__Q33ipl5scene13ChannelSelectFii
.L_813ACF34:
/* 813ACF34 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ACF38 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813ACF3C | 7C 08 03 A6 */	mtlr r0
/* 813ACF40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ACF44 | 4E 80 00 20 */	blr
.endfn setupDiskChanObj__Q33ipl5scene13ChannelSelectFv

# .text:0x2A7C | 0x813ACF48 | size: 0x398
# ipl::scene::ChannelSelect::updateDiskState()
.fn updateDiskState__Q33ipl5scene13ChannelSelectFv, global
/* 813ACF48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813ACF4C | 7C 08 02 A6 */	mflr r0
/* 813ACF50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813ACF54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ACF58 | 48 24 C5 69 */	bl _savegpr_27
/* 813ACF5C | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813ACF60 | 80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 813ACF64 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813ACF68 | 7C 7F 1B 78 */	mr r31, r3
/* 813ACF6C | 80 9C 00 A8 */	lwz r4, 0xa8(r28)
/* 813ACF70 | 28 00 00 06 */	cmplwi r0, 0x6
/* 813ACF74 | 83 64 00 04 */	lwz r27, 0x4(r4)
/* 813ACF78 | 41 81 03 50 */	bgt .L_813AD2C8
/* 813ACF7C | 3C 80 81 65 */	lis r4, jumptable_8164DE80@ha
/* 813ACF80 | 54 00 10 3A */	slwi r0, r0, 2
/* 813ACF84 | 38 84 DE 80 */	addi r4, r4, jumptable_8164DE80@l
/* 813ACF88 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813ACF8C | 7C 89 03 A6 */	mtctr r4
/* 813ACF90 | 4E 80 04 20 */	bctr
.L_813ACF94:
/* 813ACF94 | 80 83 00 A4 */	lwz r4, 0xa4(r3)
/* 813ACF98 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813ACF9C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813ACFA0 | 41 82 03 28 */	beq .L_813AD2C8
/* 813ACFA4 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 813ACFA8 | 3F A0 81 65 */	lis r29, lbl_8164DE64@ha
/* 813ACFAC | 38 9D DE 64 */	addi r4, r29, lbl_8164DE64@l
/* 813ACFB0 | 38 A0 00 01 */	li r5, 0x1
/* 813ACFB4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ACFB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ACFBC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ACFC0 | 7D 89 03 A6 */	mtctr r12
/* 813ACFC4 | 4E 80 04 21 */	bctrl
/* 813ACFC8 | 38 80 00 01 */	li r4, 0x1
/* 813ACFCC | 4B F9 74 49 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813ACFD0 | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813ACFD4 | 3F C0 81 65 */	lis r30, lbl_8164DE6D@ha
/* 813ACFD8 | 38 9E DE 6D */	addi r4, r30, lbl_8164DE6D@l
/* 813ACFDC | 38 A0 00 01 */	li r5, 0x1
/* 813ACFE0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ACFE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ACFE8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ACFEC | 7D 89 03 A6 */	mtctr r12
/* 813ACFF0 | 4E 80 04 21 */	bctrl
/* 813ACFF4 | 38 80 00 00 */	li r4, 0x0
/* 813ACFF8 | 4B F9 74 1D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813ACFFC | 2C 1B 00 05 */	cmpwi r27, 0x5
/* 813AD000 | 40 82 00 78 */	bne .L_813AD078
/* 813AD004 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813AD008 | 80 7C 00 84 */	lwz r3, 0x84(r28)
/* 813AD00C | 38 84 FF F1 */	subi r4, r4, 0xf
/* 813AD010 | 30 04 FF FF */	subic r0, r4, 0x1
/* 813AD014 | 7C 80 21 10 */	subfe r4, r0, r4
/* 813AD018 | 4B F8 B1 31 */	bl getDiskThumbnail__Q33ipl7channel7ManagerFb
/* 813AD01C | 80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 813AD020 | 7C 7B 1B 78 */	mr r27, r3
/* 813AD024 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813AD028 | 40 82 00 14 */	bne .L_813AD03C
/* 813AD02C | 80 7C 00 A8 */	lwz r3, 0xa8(r28)
/* 813AD030 | 38 9F 00 F8 */	addi r4, r31, 0xf8
/* 813AD034 | 38 BF 00 FC */	addi r5, r31, 0xfc
/* 813AD038 | 4B FB 3A F1 */	bl getDiskInfo__Q33ipl3bs27ManagerFPPcPPc
.L_813AD03C:
/* 813AD03C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813AD040 | 41 82 00 10 */	beq .L_813AD050
/* 813AD044 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 813AD048 | 7F 64 DB 78 */	mr r4, r27
/* 813AD04C | 48 00 4F 4D */	bl createDiskLayout__Q33ipl5scene10ChannelObjFPv
.L_813AD050:
/* 813AD050 | 88 1F 00 F4 */	lbz r0, 0xf4(r31)
/* 813AD054 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AD058 | 40 82 00 0C */	bne .L_813AD064
/* 813AD05C | 7F E3 FB 78 */	mr r3, r31
/* 813AD060 | 48 00 02 81 */	bl startDiskInEvent__Q33ipl5scene13ChannelSelectFv
.L_813AD064:
/* 813AD064 | 38 60 00 00 */	li r3, 0x0
/* 813AD068 | 38 00 00 01 */	li r0, 0x1
/* 813AD06C | 98 7F 00 F4 */	stb r3, 0xf4(r31)
/* 813AD070 | 90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 813AD074 | 48 00 02 54 */	b .L_813AD2C8
.L_813AD078:
/* 813AD078 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 813AD07C | 40 82 00 B8 */	bne .L_813AD134
/* 813AD080 | 80 7C 00 84 */	lwz r3, 0x84(r28)
/* 813AD084 | 38 00 00 00 */	li r0, 0x0
/* 813AD088 | 38 9D DE 64 */	addi r4, r29, lbl_8164DE64@l
/* 813AD08C | 38 A0 00 01 */	li r5, 0x1
/* 813AD090 | 98 03 1B 81 */	stb r0, 0x1b81(r3)
/* 813AD094 | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813AD098 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AD09C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AD0A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AD0A4 | 7D 89 03 A6 */	mtctr r12
/* 813AD0A8 | 4E 80 04 21 */	bctrl
/* 813AD0AC | 38 80 00 00 */	li r4, 0x0
/* 813AD0B0 | 4B F9 73 65 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813AD0B4 | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813AD0B8 | 38 9E DE 6D */	addi r4, r30, lbl_8164DE6D@l
/* 813AD0BC | 38 A0 00 01 */	li r5, 0x1
/* 813AD0C0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AD0C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AD0C8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AD0CC | 7D 89 03 A6 */	mtctr r12
/* 813AD0D0 | 4E 80 04 21 */	bctrl
/* 813AD0D4 | 38 80 00 01 */	li r4, 0x1
/* 813AD0D8 | 4B F9 73 3D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813AD0DC | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813AD0E0 | 48 00 53 E1 */	bl setLangPane__Q33ipl5scene10ChannelObjFPCQ33ipl6layout6Object
/* 813AD0E4 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813AD0E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD0EC | 41 82 00 20 */	beq .L_813AD10C
/* 813AD0F0 | 38 00 00 02 */	li r0, 0x2
/* 813AD0F4 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 813AD0F8 | 83 9F 00 98 */	lwz r28, 0x98(r31)
/* 813AD0FC | 7F 83 E3 78 */	mr r3, r28
/* 813AD100 | 4B FB 57 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AD104 | 38 00 00 01 */	li r0, 0x1
/* 813AD108 | 90 1C 00 14 */	stw r0, 0x14(r28)
.L_813AD10C:
/* 813AD10C | 88 1F 00 F4 */	lbz r0, 0xf4(r31)
/* 813AD110 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AD114 | 40 82 00 0C */	bne .L_813AD120
/* 813AD118 | 7F E3 FB 78 */	mr r3, r31
/* 813AD11C | 48 00 01 C5 */	bl startDiskInEvent__Q33ipl5scene13ChannelSelectFv
.L_813AD120:
/* 813AD120 | 38 60 00 00 */	li r3, 0x0
/* 813AD124 | 38 00 00 01 */	li r0, 0x1
/* 813AD128 | 98 7F 00 F4 */	stb r3, 0xf4(r31)
/* 813AD12C | 90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 813AD130 | 48 00 01 98 */	b .L_813AD2C8
.L_813AD134:
/* 813AD134 | 2C 1B 00 06 */	cmpwi r27, 0x6
/* 813AD138 | 40 82 01 90 */	bne .L_813AD2C8
/* 813AD13C | 88 1F 00 F4 */	lbz r0, 0xf4(r31)
/* 813AD140 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AD144 | 40 82 00 0C */	bne .L_813AD150
/* 813AD148 | 7F E3 FB 78 */	mr r3, r31
/* 813AD14C | 48 00 01 95 */	bl startDiskInEvent__Q33ipl5scene13ChannelSelectFv
.L_813AD150:
/* 813AD150 | 38 60 00 00 */	li r3, 0x0
/* 813AD154 | 38 00 00 04 */	li r0, 0x4
/* 813AD158 | 98 7F 00 F4 */	stb r3, 0xf4(r31)
/* 813AD15C | 90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 813AD160 | 48 00 01 68 */	b .L_813AD2C8
.L_813AD164:
/* 813AD164 | 80 83 00 8C */	lwz r4, 0x8c(r3)
/* 813AD168 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813AD16C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AD170 | 41 82 01 58 */	beq .L_813AD2C8
/* 813AD174 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 813AD178 | 48 00 4F AD */	bl resetDiskTitleName__Q33ipl5scene10ChannelObjFv
/* 813AD17C | 2C 1B 00 05 */	cmpwi r27, 0x5
/* 813AD180 | 40 82 00 40 */	bne .L_813AD1C0
/* 813AD184 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 813AD188 | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 813AD18C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD190 | 41 82 00 24 */	beq .L_813AD1B4
/* 813AD194 | 38 00 00 02 */	li r0, 0x2
/* 813AD198 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 813AD19C | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 813AD1A0 | 83 63 00 34 */	lwz r27, 0x34(r3)
/* 813AD1A4 | 7F 63 DB 78 */	mr r3, r27
/* 813AD1A8 | 4B FB 56 C9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AD1AC | 38 00 00 01 */	li r0, 0x1
/* 813AD1B0 | 90 1B 00 14 */	stw r0, 0x14(r27)
.L_813AD1B4:
/* 813AD1B4 | 38 00 00 02 */	li r0, 0x2
/* 813AD1B8 | 90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 813AD1BC | 48 00 01 0C */	b .L_813AD2C8
.L_813AD1C0:
/* 813AD1C0 | 38 00 00 03 */	li r0, 0x3
/* 813AD1C4 | 90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 813AD1C8 | 48 00 01 00 */	b .L_813AD2C8
.L_813AD1CC:
/* 813AD1CC | 2C 1B 00 05 */	cmpwi r27, 0x5
/* 813AD1D0 | 40 82 00 14 */	bne .L_813AD1E4
/* 813AD1D4 | 80 9C 00 84 */	lwz r4, 0x84(r28)
/* 813AD1D8 | 88 04 1B 81 */	lbz r0, 0x1b81(r4)
/* 813AD1DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AD1E0 | 41 82 00 E8 */	beq .L_813AD2C8
.L_813AD1E4:
/* 813AD1E4 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813AD1E8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AD1EC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AD1F0 | 41 82 00 D8 */	beq .L_813AD2C8
/* 813AD1F4 | 7F E3 FB 78 */	mr r3, r31
/* 813AD1F8 | 48 00 01 49 */	bl startDiskOutEvent__Q33ipl5scene13ChannelSelectFv
/* 813AD1FC | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 813AD200 | 48 00 4E C9 */	bl changeDisk__Q33ipl5scene10ChannelObjFv
/* 813AD204 | 38 00 00 06 */	li r0, 0x6
/* 813AD208 | 90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 813AD20C | 48 00 00 BC */	b .L_813AD2C8
.L_813AD210:
/* 813AD210 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 813AD214 | 40 82 00 14 */	bne .L_813AD228
/* 813AD218 | 80 9C 00 84 */	lwz r4, 0x84(r28)
/* 813AD21C | 88 04 1B 81 */	lbz r0, 0x1b81(r4)
/* 813AD220 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AD224 | 41 82 00 A4 */	beq .L_813AD2C8
.L_813AD228:
/* 813AD228 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813AD22C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AD230 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AD234 | 41 82 00 94 */	beq .L_813AD2C8
/* 813AD238 | 7F E3 FB 78 */	mr r3, r31
/* 813AD23C | 48 00 01 05 */	bl startDiskOutEvent__Q33ipl5scene13ChannelSelectFv
/* 813AD240 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 813AD244 | 48 00 4E 85 */	bl changeDisk__Q33ipl5scene10ChannelObjFv
/* 813AD248 | 38 00 00 06 */	li r0, 0x6
/* 813AD24C | 90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 813AD250 | 48 00 00 78 */	b .L_813AD2C8
.L_813AD254:
/* 813AD254 | 80 83 00 8C */	lwz r4, 0x8c(r3)
/* 813AD258 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813AD25C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AD260 | 41 82 00 68 */	beq .L_813AD2C8
/* 813AD264 | 38 00 00 05 */	li r0, 0x5
/* 813AD268 | 90 03 00 F0 */	stw r0, 0xf0(r3)
/* 813AD26C | 48 00 00 5C */	b .L_813AD2C8
.L_813AD270:
/* 813AD270 | 2C 1B 00 06 */	cmpwi r27, 0x6
/* 813AD274 | 41 82 00 54 */	beq .L_813AD2C8
/* 813AD278 | 80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 813AD27C | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813AD280 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AD284 | 41 82 00 44 */	beq .L_813AD2C8
/* 813AD288 | 48 00 00 B9 */	bl startDiskOutEvent__Q33ipl5scene13ChannelSelectFv
/* 813AD28C | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 813AD290 | 48 00 4E 39 */	bl changeDisk__Q33ipl5scene10ChannelObjFv
/* 813AD294 | 38 00 00 06 */	li r0, 0x6
/* 813AD298 | 90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 813AD29C | 48 00 00 2C */	b .L_813AD2C8
.L_813AD2A0:
/* 813AD2A0 | 80 83 00 8C */	lwz r4, 0x8c(r3)
/* 813AD2A4 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813AD2A8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AD2AC | 41 82 00 1C */	beq .L_813AD2C8
/* 813AD2B0 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 813AD2B4 | 48 00 4D C5 */	bl destroyDiskLayout__Q33ipl5scene10ChannelObjFv
/* 813AD2B8 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 813AD2BC | 48 00 4E 69 */	bl resetDiskTitleName__Q33ipl5scene10ChannelObjFv
/* 813AD2C0 | 38 00 00 00 */	li r0, 0x0
/* 813AD2C4 | 90 1F 00 F0 */	stw r0, 0xf0(r31)
.L_813AD2C8:
/* 813AD2C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AD2CC | 48 24 C2 41 */	bl _restgpr_27
/* 813AD2D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AD2D4 | 7C 08 03 A6 */	mtlr r0
/* 813AD2D8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AD2DC | 4E 80 00 20 */	blr
.endfn updateDiskState__Q33ipl5scene13ChannelSelectFv

# .text:0x2E14 | 0x813AD2E0 | size: 0x60
# ipl::scene::ChannelSelect::startDiskInEvent()
.fn startDiskInEvent__Q33ipl5scene13ChannelSelectFv, global
/* 813AD2E0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AD2E4 | 7C 08 02 A6 */	mflr r0
/* 813AD2E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AD2EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AD2F0 | 48 24 C1 D9 */	bl _savegpr_29
/* 813AD2F4 | 80 83 00 8C */	lwz r4, 0x8c(r3)
/* 813AD2F8 | 38 00 00 00 */	li r0, 0x0
/* 813AD2FC | 7C 7D 1B 78 */	mr r29, r3
/* 813AD300 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 813AD304 | 83 C3 00 8C */	lwz r30, 0x8c(r3)
/* 813AD308 | 7F C3 F3 78 */	mr r3, r30
/* 813AD30C | 4B FB 55 65 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AD310 | 3B E0 00 01 */	li r31, 0x1
/* 813AD314 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813AD318 | 83 DD 00 A0 */	lwz r30, 0xa0(r29)
/* 813AD31C | 7F C3 F3 78 */	mr r3, r30
/* 813AD320 | 4B FB 55 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AD324 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813AD328 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AD32C | 48 24 C1 E9 */	bl _restgpr_29
/* 813AD330 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AD334 | 7C 08 03 A6 */	mtlr r0
/* 813AD338 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AD33C | 4E 80 00 20 */	blr
.endfn startDiskInEvent__Q33ipl5scene13ChannelSelectFv

# .text:0x2E74 | 0x813AD340 | size: 0x5C
# ipl::scene::ChannelSelect::startDiskOutEvent()
.fn startDiskOutEvent__Q33ipl5scene13ChannelSelectFv, global
/* 813AD340 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AD344 | 7C 08 02 A6 */	mflr r0
/* 813AD348 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AD34C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AD350 | 48 24 C1 79 */	bl _savegpr_29
/* 813AD354 | 80 83 00 8C */	lwz r4, 0x8c(r3)
/* 813AD358 | 3B E0 00 01 */	li r31, 0x1
/* 813AD35C | 7C 7D 1B 78 */	mr r29, r3
/* 813AD360 | 93 E4 00 18 */	stw r31, 0x18(r4)
/* 813AD364 | 83 C3 00 8C */	lwz r30, 0x8c(r3)
/* 813AD368 | 7F C3 F3 78 */	mr r3, r30
/* 813AD36C | 4B FB 55 05 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AD370 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813AD374 | 83 DD 00 A4 */	lwz r30, 0xa4(r29)
/* 813AD378 | 7F C3 F3 78 */	mr r3, r30
/* 813AD37C | 4B FB 54 F5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AD380 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813AD384 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AD388 | 48 24 C1 8D */	bl _restgpr_29
/* 813AD38C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AD390 | 7C 08 03 A6 */	mtlr r0
/* 813AD394 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AD398 | 4E 80 00 20 */	blr
.endfn startDiskOutEvent__Q33ipl5scene13ChannelSelectFv

# .text:0x2ED0 | 0x813AD39C | size: 0x1C0
# ipl::scene::ChannelSelect::setChanFrameVisibility()
.fn setChanFrameVisibility__Q33ipl5scene13ChannelSelectFv, global
/* 813AD39C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AD3A0 | 7C 08 02 A6 */	mflr r0
/* 813AD3A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AD3A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AD3AC | 7C 7F 1B 78 */	mr r31, r3
/* 813AD3B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AD3B4 | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813AD3B8 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 813AD3BC | 41 82 00 0C */	beq .L_813AD3C8
/* 813AD3C0 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 813AD3C4 | 40 82 00 0C */	bne .L_813AD3D0
.L_813AD3C8:
/* 813AD3C8 | 38 A0 00 01 */	li r5, 0x1
/* 813AD3CC | 48 00 00 08 */	b .L_813AD3D4
.L_813AD3D0:
/* 813AD3D0 | 38 A0 00 00 */	li r5, 0x0
.L_813AD3D4:
/* 813AD3D4 | 80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 813AD3D8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813AD3DC | 7C 05 00 51 */	subf. r0, r5, r0
/* 813AD3E0 | 41 80 00 60 */	blt .L_813AD440
/* 813AD3E4 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813AD3E8 | 3F C0 81 65 */	lis r30, lbl_8164DC78@ha
/* 813AD3EC | 80 9E DC 78 */	lwz r4, lbl_8164DC78@l(r30)
/* 813AD3F0 | 38 A0 00 01 */	li r5, 0x1
/* 813AD3F4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AD3F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AD3FC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AD400 | 7D 89 03 A6 */	mtctr r12
/* 813AD404 | 4E 80 04 21 */	bctrl
/* 813AD408 | 38 80 00 01 */	li r4, 0x1
/* 813AD40C | 4B F9 70 09 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813AD410 | 80 DF 00 68 */	lwz r6, 0x68(r31)
/* 813AD414 | 38 7E DC 78 */	addi r3, r30, lbl_8164DC78@l
/* 813AD418 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813AD41C | 38 A0 00 01 */	li r5, 0x1
/* 813AD420 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813AD424 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AD428 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AD42C | 7D 89 03 A6 */	mtctr r12
/* 813AD430 | 4E 80 04 21 */	bctrl
/* 813AD434 | 38 80 00 01 */	li r4, 0x1
/* 813AD438 | 4B F9 6F DD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813AD43C | 48 00 00 3C */	b .L_813AD478
.L_813AD440:
/* 813AD440 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813AD444 | 20 05 00 01 */	subfic r0, r5, 0x1
/* 813AD448 | 3C 80 81 65 */	lis r4, lbl_8164DC78@ha
/* 813AD44C | 38 A0 00 01 */	li r5, 0x1
/* 813AD450 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AD454 | 54 00 10 3A */	slwi r0, r0, 2
/* 813AD458 | 38 84 DC 78 */	addi r4, r4, lbl_8164DC78@l
/* 813AD45C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AD460 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813AD464 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AD468 | 7D 89 03 A6 */	mtctr r12
/* 813AD46C | 4E 80 04 21 */	bctrl
/* 813AD470 | 38 80 00 00 */	li r4, 0x0
/* 813AD474 | 4B F9 6F A1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813AD478:
/* 813AD478 | 80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 813AD47C | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813AD480 | 41 82 00 0C */	beq .L_813AD48C
/* 813AD484 | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 813AD488 | 40 82 00 0C */	bne .L_813AD494
.L_813AD48C:
/* 813AD48C | 38 80 00 01 */	li r4, 0x1
/* 813AD490 | 48 00 00 08 */	b .L_813AD498
.L_813AD494:
/* 813AD494 | 38 80 00 00 */	li r4, 0x0
.L_813AD498:
/* 813AD498 | 80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 813AD49C | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813AD4A0 | 7C 64 1A 14 */	add r3, r4, r3
/* 813AD4A4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813AD4A8 | 7C 03 00 00 */	cmpw r3, r0
/* 813AD4AC | 40 80 00 60 */	bge .L_813AD50C
/* 813AD4B0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AD4B4 | 3F C0 81 65 */	lis r30, lbl_8164DC78@ha
/* 813AD4B8 | 3B DE DC 78 */	addi r30, r30, lbl_8164DC78@l
/* 813AD4BC | 38 A0 00 01 */	li r5, 0x1
/* 813AD4C0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AD4C4 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 813AD4C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AD4CC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AD4D0 | 7D 89 03 A6 */	mtctr r12
/* 813AD4D4 | 4E 80 04 21 */	bctrl
/* 813AD4D8 | 38 80 00 01 */	li r4, 0x1
/* 813AD4DC | 4B F9 6F 39 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813AD4E0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AD4E4 | 38 A0 00 01 */	li r5, 0x1
/* 813AD4E8 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 813AD4EC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AD4F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AD4F4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AD4F8 | 7D 89 03 A6 */	mtctr r12
/* 813AD4FC | 4E 80 04 21 */	bctrl
/* 813AD500 | 38 80 00 01 */	li r4, 0x1
/* 813AD504 | 4B F9 6F 11 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813AD508 | 48 00 00 3C */	b .L_813AD544
.L_813AD50C:
/* 813AD50C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AD510 | 38 04 00 03 */	addi r0, r4, 0x3
/* 813AD514 | 3C 80 81 65 */	lis r4, lbl_8164DC78@ha
/* 813AD518 | 38 A0 00 01 */	li r5, 0x1
/* 813AD51C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AD520 | 54 00 10 3A */	slwi r0, r0, 2
/* 813AD524 | 38 84 DC 78 */	addi r4, r4, lbl_8164DC78@l
/* 813AD528 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AD52C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813AD530 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AD534 | 7D 89 03 A6 */	mtctr r12
/* 813AD538 | 4E 80 04 21 */	bctrl
/* 813AD53C | 38 80 00 00 */	li r4, 0x0
/* 813AD540 | 4B F9 6E D5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813AD544:
/* 813AD544 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AD548 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AD54C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AD550 | 7C 08 03 A6 */	mtlr r0
/* 813AD554 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AD558 | 4E 80 00 20 */	blr
.endfn setChanFrameVisibility__Q33ipl5scene13ChannelSelectFv

# .text:0x3090 | 0x813AD55C | size: 0x140
# ipl::scene::ChannelSelect::isChannelInView(int, int) const
.fn isChannelInView__Q33ipl5scene13ChannelSelectCFii, global
/* 813AD55C | 80 C3 00 C8 */	lwz r6, 0xc8(r3)
/* 813AD560 | 7C 04 30 00 */	cmpw r4, r6
/* 813AD564 | 40 82 00 0C */	bne .L_813AD570
/* 813AD568 | 38 60 00 01 */	li r3, 0x1
/* 813AD56C | 4E 80 00 20 */	blr
.L_813AD570:
/* 813AD570 | 38 06 FF FF */	subi r0, r6, 0x1
/* 813AD574 | 7C 04 00 00 */	cmpw r4, r0
/* 813AD578 | 40 82 00 44 */	bne .L_813AD5BC
/* 813AD57C | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813AD580 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 813AD584 | 41 82 00 0C */	beq .L_813AD590
/* 813AD588 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 813AD58C | 40 82 00 0C */	bne .L_813AD598
.L_813AD590:
/* 813AD590 | 38 60 00 01 */	li r3, 0x1
/* 813AD594 | 4E 80 00 20 */	blr
.L_813AD598:
/* 813AD598 | 38 60 00 03 */	li r3, 0x3
/* 813AD59C | 7C 69 03 A6 */	mtctr r3
.L_813AD5A0:
/* 813AD5A0 | 7C 03 28 00 */	cmpw r3, r5
/* 813AD5A4 | 40 82 00 0C */	bne .L_813AD5B0
/* 813AD5A8 | 38 60 00 01 */	li r3, 0x1
/* 813AD5AC | 4E 80 00 20 */	blr
.L_813AD5B0:
/* 813AD5B0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813AD5B4 | 42 00 FF EC */	bdnz .L_813AD5A0
/* 813AD5B8 | 48 00 00 DC */	b .L_813AD694
.L_813AD5BC:
/* 813AD5BC | 38 06 FF FE */	subi r0, r6, 0x2
/* 813AD5C0 | 7C 04 00 00 */	cmpw r4, r0
/* 813AD5C4 | 40 82 00 3C */	bne .L_813AD600
/* 813AD5C8 | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813AD5CC | 2C 00 00 0C */	cmpwi r0, 0xc
/* 813AD5D0 | 41 82 00 0C */	beq .L_813AD5DC
/* 813AD5D4 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 813AD5D8 | 40 82 00 BC */	bne .L_813AD694
.L_813AD5DC:
/* 813AD5DC | 38 60 00 03 */	li r3, 0x3
/* 813AD5E0 | 7C 69 03 A6 */	mtctr r3
.L_813AD5E4:
/* 813AD5E4 | 7C 03 28 00 */	cmpw r3, r5
/* 813AD5E8 | 40 82 00 0C */	bne .L_813AD5F4
/* 813AD5EC | 38 60 00 01 */	li r3, 0x1
/* 813AD5F0 | 4E 80 00 20 */	blr
.L_813AD5F4:
/* 813AD5F4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813AD5F8 | 42 00 FF EC */	bdnz .L_813AD5E4
/* 813AD5FC | 48 00 00 98 */	b .L_813AD694
.L_813AD600:
/* 813AD600 | 38 06 00 01 */	addi r0, r6, 0x1
/* 813AD604 | 7C 04 00 00 */	cmpw r4, r0
/* 813AD608 | 40 82 00 48 */	bne .L_813AD650
/* 813AD60C | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813AD610 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813AD614 | 41 82 00 0C */	beq .L_813AD620
/* 813AD618 | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 813AD61C | 40 82 00 0C */	bne .L_813AD628
.L_813AD620:
/* 813AD620 | 38 60 00 01 */	li r3, 0x1
/* 813AD624 | 4E 80 00 20 */	blr
.L_813AD628:
/* 813AD628 | 38 00 00 03 */	li r0, 0x3
/* 813AD62C | 38 60 00 00 */	li r3, 0x0
/* 813AD630 | 7C 09 03 A6 */	mtctr r0
.L_813AD634:
/* 813AD634 | 7C 03 28 00 */	cmpw r3, r5
/* 813AD638 | 40 82 00 0C */	bne .L_813AD644
/* 813AD63C | 38 60 00 01 */	li r3, 0x1
/* 813AD640 | 4E 80 00 20 */	blr
.L_813AD644:
/* 813AD644 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813AD648 | 42 00 FF EC */	bdnz .L_813AD634
/* 813AD64C | 48 00 00 48 */	b .L_813AD694
.L_813AD650:
/* 813AD650 | 38 06 00 02 */	addi r0, r6, 0x2
/* 813AD654 | 7C 04 00 00 */	cmpw r4, r0
/* 813AD658 | 40 82 00 3C */	bne .L_813AD694
/* 813AD65C | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813AD660 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813AD664 | 41 82 00 0C */	beq .L_813AD670
/* 813AD668 | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 813AD66C | 40 82 00 28 */	bne .L_813AD694
.L_813AD670:
/* 813AD670 | 38 00 00 03 */	li r0, 0x3
/* 813AD674 | 38 60 00 00 */	li r3, 0x0
/* 813AD678 | 7C 09 03 A6 */	mtctr r0
.L_813AD67C:
/* 813AD67C | 7C 03 28 00 */	cmpw r3, r5
/* 813AD680 | 40 82 00 0C */	bne .L_813AD68C
/* 813AD684 | 38 60 00 01 */	li r3, 0x1
/* 813AD688 | 4E 80 00 20 */	blr
.L_813AD68C:
/* 813AD68C | 38 63 00 04 */	addi r3, r3, 0x4
/* 813AD690 | 42 00 FF EC */	bdnz .L_813AD67C
.L_813AD694:
/* 813AD694 | 38 60 00 00 */	li r3, 0x0
/* 813AD698 | 4E 80 00 20 */	blr
.endfn isChannelInView__Q33ipl5scene13ChannelSelectCFii

# .text:0x31D0 | 0x813AD69C | size: 0x68
# ipl::scene::ChannelSelect::isChannelInCalc(int, int, int) const
.fn isChannelInCalc__Q33ipl5scene13ChannelSelectCFiii, global
/* 813AD69C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AD6A0 | 7C 08 02 A6 */	mflr r0
/* 813AD6A4 | 7C 66 20 50 */	subf r3, r6, r4
/* 813AD6A8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 813AD6AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AD6B0 | 40 81 00 38 */	ble .L_813AD6E8
/* 813AD6B4 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813AD6B8 | 40 80 00 30 */	bge .L_813AD6E8
/* 813AD6BC | 38 03 00 02 */	addi r0, r3, 0x2
/* 813AD6C0 | 3C C0 81 65 */	lis r6, lbl_8164DAF4@ha
/* 813AD6C4 | 1C 00 00 30 */	mulli r0, r0, 0x30
/* 813AD6C8 | 54 A3 10 3A */	slwi r3, r5, 2
/* 813AD6CC | 38 C6 DA F4 */	addi r6, r6, lbl_8164DAF4@l
/* 813AD6D0 | 38 8D 88 B4 */	li r4, lbl_816968F4@sda21
/* 813AD6D4 | 7C 06 02 14 */	add r0, r6, r0
/* 813AD6D8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813AD6DC | 48 25 4D A5 */	bl strcmp
/* 813AD6E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD6E4 | 40 82 00 0C */	bne .L_813AD6F0
.L_813AD6E8:
/* 813AD6E8 | 38 60 00 00 */	li r3, 0x0
/* 813AD6EC | 48 00 00 08 */	b .L_813AD6F4
.L_813AD6F0:
/* 813AD6F0 | 38 60 00 01 */	li r3, 0x1
.L_813AD6F4:
/* 813AD6F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AD6F8 | 7C 08 03 A6 */	mtlr r0
/* 813AD6FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AD700 | 4E 80 00 20 */	blr
.endfn isChannelInCalc__Q33ipl5scene13ChannelSelectCFiii

# .text:0x3238 | 0x813AD704 | size: 0x104
# ipl::scene::ChannelSelect::isPageCreated(int) const
.fn isPageCreated__Q33ipl5scene13ChannelSelectCFi, global
/* 813AD704 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AD708 | 7C 08 02 A6 */	mflr r0
/* 813AD70C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AD710 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AD714 | 48 24 BD B5 */	bl _savegpr_29
/* 813AD718 | 7C 7D 1B 78 */	mr r29, r3
/* 813AD71C | 7C 9E 23 78 */	mr r30, r4
/* 813AD720 | 3B E0 00 00 */	li r31, 0x0
.L_813AD724:
/* 813AD724 | 7F A3 EB 78 */	mr r3, r29
/* 813AD728 | 7F C4 F3 78 */	mr r4, r30
/* 813AD72C | 7F E5 FB 78 */	mr r5, r31
/* 813AD730 | 4B FF F7 49 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AD734 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD738 | 41 82 00 10 */	beq .L_813AD748
/* 813AD73C | 48 00 00 CD */	bl isLayoutCreated__Q33ipl5scene10ChannelObjCFv
/* 813AD740 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD744 | 40 82 00 0C */	bne .L_813AD750
.L_813AD748:
/* 813AD748 | 38 60 00 00 */	li r3, 0x0
/* 813AD74C | 48 00 00 A4 */	b .L_813AD7F0
.L_813AD750:
/* 813AD750 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813AD754 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813AD758 | 41 80 FF CC */	blt .L_813AD724
/* 813AD75C | 80 1D 00 CC */	lwz r0, 0xcc(r29)
/* 813AD760 | 38 7E 00 01 */	addi r3, r30, 0x1
/* 813AD764 | 7C 03 00 00 */	cmpw r3, r0
/* 813AD768 | 40 80 00 40 */	bge .L_813AD7A8
/* 813AD76C | 3B E0 00 00 */	li r31, 0x0
.L_813AD770:
/* 813AD770 | 7F A3 EB 78 */	mr r3, r29
/* 813AD774 | 7F E5 FB 78 */	mr r5, r31
/* 813AD778 | 38 9E 00 01 */	addi r4, r30, 0x1
/* 813AD77C | 4B FF F6 FD */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AD780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD784 | 41 82 00 10 */	beq .L_813AD794
/* 813AD788 | 48 00 00 81 */	bl isLayoutCreated__Q33ipl5scene10ChannelObjCFv
/* 813AD78C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD790 | 40 82 00 0C */	bne .L_813AD79C
.L_813AD794:
/* 813AD794 | 38 60 00 00 */	li r3, 0x0
/* 813AD798 | 48 00 00 58 */	b .L_813AD7F0
.L_813AD79C:
/* 813AD79C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813AD7A0 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813AD7A4 | 41 80 FF CC */	blt .L_813AD770
.L_813AD7A8:
/* 813AD7A8 | 34 1E FF FF */	subic. r0, r30, 0x1
/* 813AD7AC | 41 80 00 40 */	blt .L_813AD7EC
/* 813AD7B0 | 3B E0 00 03 */	li r31, 0x3
.L_813AD7B4:
/* 813AD7B4 | 7F A3 EB 78 */	mr r3, r29
/* 813AD7B8 | 7F E5 FB 78 */	mr r5, r31
/* 813AD7BC | 38 9E FF FF */	subi r4, r30, 0x1
/* 813AD7C0 | 4B FF F6 B9 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AD7C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD7C8 | 41 82 00 10 */	beq .L_813AD7D8
/* 813AD7CC | 48 00 00 3D */	bl isLayoutCreated__Q33ipl5scene10ChannelObjCFv
/* 813AD7D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD7D4 | 40 82 00 0C */	bne .L_813AD7E0
.L_813AD7D8:
/* 813AD7D8 | 38 60 00 00 */	li r3, 0x0
/* 813AD7DC | 48 00 00 14 */	b .L_813AD7F0
.L_813AD7E0:
/* 813AD7E0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813AD7E4 | 2C 1F 00 0C */	cmpwi r31, 0xc
/* 813AD7E8 | 41 80 FF CC */	blt .L_813AD7B4
.L_813AD7EC:
/* 813AD7EC | 38 60 00 01 */	li r3, 0x1
.L_813AD7F0:
/* 813AD7F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AD7F4 | 48 24 BD 21 */	bl _restgpr_29
/* 813AD7F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AD7FC | 7C 08 03 A6 */	mtlr r0
/* 813AD800 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AD804 | 4E 80 00 20 */	blr
.endfn isPageCreated__Q33ipl5scene13ChannelSelectCFi

# .text:0x333C | 0x813AD808 | size: 0x14
# ipl::scene::ChannelObj::isLayoutCreated() const
.fn isLayoutCreated__Q33ipl5scene10ChannelObjCFv, global
/* 813AD808 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 813AD80C | 38 03 FF FD */	subi r0, r3, 0x3
/* 813AD810 | 7C 00 00 34 */	cntlzw r0, r0
/* 813AD814 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813AD818 | 4E 80 00 20 */	blr
.endfn isLayoutCreated__Q33ipl5scene10ChannelObjCFv

# .text:0x3350 | 0x813AD81C | size: 0x9C
# ipl::scene::ChannelSelect::isPageCreatedAllDone(int) const
.fn isPageCreatedAllDone__Q33ipl5scene13ChannelSelectCFi, global
/* 813AD81C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AD820 | 7C 08 02 A6 */	mflr r0
/* 813AD824 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AD828 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AD82C | 7C 9F 23 78 */	mr r31, r4
/* 813AD830 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AD834 | 7C 7E 1B 78 */	mr r30, r3
/* 813AD838 | 4B FF FE CD */	bl isPageCreated__Q33ipl5scene13ChannelSelectCFi
/* 813AD83C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD840 | 40 82 00 0C */	bne .L_813AD84C
/* 813AD844 | 38 60 00 00 */	li r3, 0x0
/* 813AD848 | 48 00 00 58 */	b .L_813AD8A0
.L_813AD84C:
/* 813AD84C | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813AD850 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813AD854 | 7C 1F 00 00 */	cmpw r31, r0
/* 813AD858 | 40 80 00 20 */	bge .L_813AD878
/* 813AD85C | 7F C3 F3 78 */	mr r3, r30
/* 813AD860 | 38 9F 00 01 */	addi r4, r31, 0x1
/* 813AD864 | 4B FF FE A1 */	bl isPageCreated__Q33ipl5scene13ChannelSelectCFi
/* 813AD868 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD86C | 40 82 00 0C */	bne .L_813AD878
/* 813AD870 | 38 60 00 00 */	li r3, 0x0
/* 813AD874 | 48 00 00 2C */	b .L_813AD8A0
.L_813AD878:
/* 813AD878 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813AD87C | 40 81 00 20 */	ble .L_813AD89C
/* 813AD880 | 7F C3 F3 78 */	mr r3, r30
/* 813AD884 | 38 9F FF FF */	subi r4, r31, 0x1
/* 813AD888 | 4B FF FE 7D */	bl isPageCreated__Q33ipl5scene13ChannelSelectCFi
/* 813AD88C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AD890 | 40 82 00 0C */	bne .L_813AD89C
/* 813AD894 | 38 60 00 00 */	li r3, 0x0
/* 813AD898 | 48 00 00 08 */	b .L_813AD8A0
.L_813AD89C:
/* 813AD89C | 38 60 00 01 */	li r3, 0x1
.L_813AD8A0:
/* 813AD8A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AD8A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AD8A8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AD8AC | 7C 08 03 A6 */	mtlr r0
/* 813AD8B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AD8B4 | 4E 80 00 20 */	blr
.endfn isPageCreatedAllDone__Q33ipl5scene13ChannelSelectCFi

# .text:0x33EC | 0x813AD8B8 | size: 0x28
# ipl::scene::ChannelSelect::preparePageScrolling(int)
.fn preparePageScrolling__Q33ipl5scene13ChannelSelectFi, global
/* 813AD8B8 | 38 A0 00 01 */	li r5, 0x1
/* 813AD8BC | 38 00 00 00 */	li r0, 0x0
/* 813AD8C0 | 98 A3 01 84 */	stb r5, 0x184(r3)
/* 813AD8C4 | 3C C0 81 09 */	lis r6, sSystem__Q23ipl3snd@ha
/* 813AD8C8 | 3C A0 81 65 */	lis r5, lbl_8164DE9C@ha
/* 813AD8CC | 90 83 00 C0 */	stw r4, 0xc0(r3)
/* 813AD8D0 | 38 85 DE 9C */	addi r4, r5, lbl_8164DE9C@l
/* 813AD8D4 | 98 03 01 85 */	stb r0, 0x185(r3)
/* 813AD8D8 | 38 66 99 2C */	addi r3, r6, sSystem__Q23ipl3snd@l
/* 813AD8DC | 4B FB DB 90 */	b startSE__Q33ipl3snd6SystemFPCc
.endfn preparePageScrolling__Q33ipl5scene13ChannelSelectFi

# .text:0x3414 | 0x813AD8E0 | size: 0xA0
# ipl::scene::ChannelSelect::startPageScroll(int)
.fn startPageScroll__Q33ipl5scene13ChannelSelectFi, global
/* 813AD8E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AD8E4 | 7C 08 02 A6 */	mflr r0
/* 813AD8E8 | 2C 04 00 0C */	cmpwi r4, 0xc
/* 813AD8EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AD8F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AD8F4 | 7C 9F 23 78 */	mr r31, r4
/* 813AD8F8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AD8FC | 7C 7E 1B 78 */	mr r30, r3
/* 813AD900 | 40 82 00 28 */	bne .L_813AD928
/* 813AD904 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813AD908 | 38 80 FF FF */	li r4, -0x1
/* 813AD90C | C0 22 85 48 */	lfs f1, lbl_81694948@sda21(r0)
/* 813AD910 | 4B FB D0 E1 */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813AD914 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AD918 | 38 80 FF FF */	li r4, -0x1
/* 813AD91C | C0 22 85 68 */	lfs f1, lbl_81694968@sda21(r0)
/* 813AD920 | 4B FB D0 61 */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813AD924 | 48 00 00 24 */	b .L_813AD948
.L_813AD928:
/* 813AD928 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813AD92C | 38 80 FF FF */	li r4, -0x1
/* 813AD930 | C0 22 85 6C */	lfs f1, lbl_8169496C@sda21(r0)
/* 813AD934 | 4B FB D0 BD */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813AD938 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AD93C | 38 80 FF FF */	li r4, -0x1
/* 813AD940 | C0 22 85 70 */	lfs f1, lbl_81694970@sda21(r0)
/* 813AD944 | 4B FB D0 3D */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
.L_813AD948:
/* 813AD948 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AD94C | 38 80 00 00 */	li r4, 0x0
/* 813AD950 | 38 A0 FF FF */	li r5, -0x1
/* 813AD954 | 4B FB D1 0D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813AD958 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AD95C | 38 80 FF FF */	li r4, -0x1
/* 813AD960 | 4B FB CF 99 */	bl start__Q33ipl6layout6ObjectFi
/* 813AD964 | 93 FE 00 C0 */	stw r31, 0xc0(r30)
/* 813AD968 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AD96C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AD970 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AD974 | 7C 08 03 A6 */	mtlr r0
/* 813AD978 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AD97C | 4E 80 00 20 */	blr
.endfn startPageScroll__Q33ipl5scene13ChannelSelectFi

# .text:0x34B4 | 0x813AD980 | size: 0x114
# ipl::scene::ChannelSelect::tryToStartBoardScene()
.fn tryToStartBoardScene__Q33ipl5scene13ChannelSelectFv, global
/* 813AD980 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AD984 | 7C 08 02 A6 */	mflr r0
/* 813AD988 | 38 80 00 00 */	li r4, 0x0
/* 813AD98C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AD990 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AD994 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AD998 | 7C 7E 1B 78 */	mr r30, r3
/* 813AD99C | 88 03 01 85 */	lbz r0, 0x185(r3)
/* 813AD9A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AD9A4 | 41 82 00 10 */	beq .L_813AD9B4
/* 813AD9A8 | 80 03 01 80 */	lwz r0, 0x180(r3)
/* 813AD9AC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813AD9B0 | 40 82 00 08 */	bne .L_813AD9B8
.L_813AD9B4:
/* 813AD9B4 | 38 80 00 01 */	li r4, 0x1
.L_813AD9B8:
/* 813AD9B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813AD9BC | 41 82 00 C0 */	beq .L_813ADA7C
/* 813AD9C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AD9C4 | 38 80 00 05 */	li r4, 0x5
/* 813AD9C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AD9CC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813AD9D0 | 48 05 D7 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AD9D4 | 7C 7F 1B 78 */	mr r31, r3
/* 813AD9D8 | 38 80 00 00 */	li r4, 0x0
/* 813AD9DC | 4B FE F1 7D */	bl iplButton_8139CB58
/* 813AD9E0 | 88 1E 01 00 */	lbz r0, 0x100(r30)
/* 813AD9E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AD9E8 | 41 82 00 10 */	beq .L_813AD9F8
/* 813AD9EC | 7F E3 FB 78 */	mr r3, r31
/* 813AD9F0 | 38 80 00 1A */	li r4, 0x1a
/* 813AD9F4 | 4B FE F1 65 */	bl iplButton_8139CB58
.L_813AD9F8:
/* 813AD9F8 | 88 1E 01 01 */	lbz r0, 0x101(r30)
/* 813AD9FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ADA00 | 41 82 00 10 */	beq .L_813ADA10
/* 813ADA04 | 7F E3 FB 78 */	mr r3, r31
/* 813ADA08 | 38 80 00 19 */	li r4, 0x19
/* 813ADA0C | 4B FE F1 4D */	bl iplButton_8139CB58
.L_813ADA10:
/* 813ADA10 | 7F E3 FB 78 */	mr r3, r31
/* 813ADA14 | 38 80 00 29 */	li r4, 0x29
/* 813ADA18 | 4B FE F1 41 */	bl iplButton_8139CB58
/* 813ADA1C | 7F E3 FB 78 */	mr r3, r31
/* 813ADA20 | 38 80 00 00 */	li r4, 0x0
/* 813ADA24 | 38 A0 00 00 */	li r5, 0x0
/* 813ADA28 | 4B FE EF 15 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813ADA2C | 38 7F 00 70 */	addi r3, r31, 0x70
/* 813ADA30 | 38 80 00 00 */	li r4, 0x0
/* 813ADA34 | 48 03 D5 F9 */	bl fn_813EB02C
/* 813ADA38 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813ADA3C | 38 80 FF FF */	li r4, -0x1
/* 813ADA40 | C0 22 85 74 */	lfs f1, lbl_81694974@sda21(r0)
/* 813ADA44 | 4B FB CF AD */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813ADA48 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813ADA4C | 38 80 FF FF */	li r4, -0x1
/* 813ADA50 | C0 22 85 78 */	lfs f1, lbl_81694978@sda21(r0)
/* 813ADA54 | 4B FB CF 2D */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813ADA58 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813ADA5C | 38 80 00 00 */	li r4, 0x0
/* 813ADA60 | 38 A0 FF FF */	li r5, -0x1
/* 813ADA64 | 4B FB CF FD */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813ADA68 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813ADA6C | 38 80 FF FF */	li r4, -0x1
/* 813ADA70 | 4B FB CE 89 */	bl start__Q33ipl6layout6ObjectFi
/* 813ADA74 | 38 00 00 05 */	li r0, 0x5
/* 813ADA78 | 90 1E 00 C0 */	stw r0, 0xc0(r30)
.L_813ADA7C:
/* 813ADA7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ADA80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ADA84 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ADA88 | 7C 08 03 A6 */	mtlr r0
/* 813ADA8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ADA90 | 4E 80 00 20 */	blr
.endfn tryToStartBoardScene__Q33ipl5scene13ChannelSelectFv

# .text:0x35C8 | 0x813ADA94 | size: 0x114
# ipl::scene::ChannelSelect::startChanTtlScene(int, int)
.fn startChanTtlScene__Q33ipl5scene13ChannelSelectFii, global
/* 813ADA94 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813ADA98 | 7C 08 02 A6 */	mflr r0
/* 813ADA9C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813ADAA0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ADAA4 | 48 24 BA 21 */	bl _savegpr_28
/* 813ADAA8 | 7C 7C 1B 78 */	mr r28, r3
/* 813ADAAC | 7C 9D 23 78 */	mr r29, r4
/* 813ADAB0 | 7C BE 2B 78 */	mr r30, r5
/* 813ADAB4 | 4B FF F3 C5 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813ADAB8 | 7C 7F 1B 78 */	mr r31, r3
/* 813ADABC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813ADAC0 | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 813ADAC4 | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 813ADAC8 | 38 84 00 2C */	addi r4, r4, 0x2c
/* 813ADACC | 4B FE 9A D9 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813ADAD0 | 7C 64 1B 78 */	mr r4, r3
/* 813ADAD4 | 7F 83 E3 78 */	mr r3, r28
/* 813ADAD8 | 38 A0 00 00 */	li r5, 0x0
/* 813ADADC | 48 00 08 A5 */	bl initChanZoomParam__Q33ipl5scene13ChannelSelectFRCQ33ipl4math4VEC3i
/* 813ADAE0 | 7F E3 FB 78 */	mr r3, r31
/* 813ADAE4 | 48 00 49 2D */	bl setCursorDecideAnim__Q33ipl5scene10ChannelObjFv
/* 813ADAE8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813ADAEC | 38 80 00 05 */	li r4, 0x5
/* 813ADAF0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813ADAF4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813ADAF8 | 48 05 D6 41 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813ADAFC | 88 1C 01 00 */	lbz r0, 0x100(r28)
/* 813ADB00 | 7C 7F 1B 78 */	mr r31, r3
/* 813ADB04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ADB08 | 41 82 00 0C */	beq .L_813ADB14
/* 813ADB0C | 38 80 00 1A */	li r4, 0x1a
/* 813ADB10 | 4B FE F0 49 */	bl iplButton_8139CB58
.L_813ADB14:
/* 813ADB14 | 88 1C 01 01 */	lbz r0, 0x101(r28)
/* 813ADB18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ADB1C | 41 82 00 10 */	beq .L_813ADB2C
/* 813ADB20 | 7F E3 FB 78 */	mr r3, r31
/* 813ADB24 | 38 80 00 19 */	li r4, 0x19
/* 813ADB28 | 4B FE F0 31 */	bl iplButton_8139CB58
.L_813ADB2C:
/* 813ADB2C | 7F E3 FB 78 */	mr r3, r31
/* 813ADB30 | 4B FE F7 BD */	bl disableBtn__Q33ipl5scene6ButtonFv
/* 813ADB34 | 7F E3 FB 78 */	mr r3, r31
/* 813ADB38 | 38 80 00 00 */	li r4, 0x0
/* 813ADB3C | 38 A0 00 00 */	li r5, 0x0
/* 813ADB40 | 4B FE ED FD */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813ADB44 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 813ADB48 | 38 80 00 00 */	li r4, 0x0
/* 813ADB4C | 48 03 D4 E1 */	bl fn_813EB02C
/* 813ADB50 | 7F A3 EB 78 */	mr r3, r29
/* 813ADB54 | 7F C4 F3 78 */	mr r4, r30
/* 813ADB58 | 48 00 00 51 */	bl setCurrentChannel__Q33ipl7channel7ManagerFii
/* 813ADB5C | 38 00 00 01 */	li r0, 0x1
/* 813ADB60 | 38 60 00 07 */	li r3, 0x7
/* 813ADB64 | 3C 80 81 65 */	lis r4, lbl_8164DEA7@ha
/* 813ADB68 | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 813ADB6C | 90 7C 00 C0 */	stw r3, 0xc0(r28)
/* 813ADB70 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813ADB74 | 38 84 DE A7 */	addi r4, r4, lbl_8164DEA7@l
/* 813ADB78 | 98 1C 01 84 */	stb r0, 0x184(r28)
/* 813ADB7C | 98 1C 01 85 */	stb r0, 0x185(r28)
/* 813ADB80 | 4B FB D8 ED */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813ADB84 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813ADB88 | 38 80 00 05 */	li r4, 0x5
/* 813ADB8C | 4B FB DE A9 */	bl stopBGM__Q33ipl3snd6SystemFi
/* 813ADB90 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813ADB94 | 48 24 B9 7D */	bl _restgpr_28
/* 813ADB98 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813ADB9C | 7C 08 03 A6 */	mtlr r0
/* 813ADBA0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813ADBA4 | 4E 80 00 20 */	blr
.endfn startChanTtlScene__Q33ipl5scene13ChannelSelectFii

# .text:0x36DC | 0x813ADBA8 | size: 0xC
# ipl::channel::Manager::setCurrentChannel(int, int)
.fn setCurrentChannel__Q33ipl7channel7ManagerFii, global
/* 813ADBA8 | 90 6D A6 5C */	stw r3, lbl_8169869C@sda21(r0)
/* 813ADBAC | 90 8D A6 60 */	stw r4, lbl_816986A0@sda21(r0)
/* 813ADBB0 | 4E 80 00 20 */	blr
.endfn setCurrentChannel__Q33ipl7channel7ManagerFii

# .text:0x36E8 | 0x813ADBB4 | size: 0x54
# ipl::scene::ChannelSelect::reserveSceneChangeDerived(int, int)
.fn reserveSceneChangeDerived__Q33ipl5scene13ChannelSelectFii, global
/* 813ADBB4 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813ADBB8 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813ADBBC | 1C E4 05 40 */	mulli r7, r4, 0x540
/* 813ADBC0 | 80 06 00 84 */	lwz r0, 0x84(r6)
/* 813ADBC4 | 1C 85 00 70 */	mulli r4, r5, 0x70
/* 813ADBC8 | 7C 00 3A 14 */	add r0, r0, r7
/* 813ADBCC | 7C 80 22 14 */	add r4, r0, r4
/* 813ADBD0 | 88 04 00 24 */	lbz r0, 0x24(r4)
/* 813ADBD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ADBD8 | 41 82 00 0C */	beq .L_813ADBE4
/* 813ADBDC | 80 04 00 48 */	lwz r0, 0x48(r4)
/* 813ADBE0 | 48 00 00 08 */	b .L_813ADBE8
.L_813ADBE4:
/* 813ADBE4 | 38 00 00 00 */	li r0, 0x0
.L_813ADBE8:
/* 813ADBE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ADBEC | 4D 82 00 20 */	beqlr
/* 813ADBF0 | 7C 65 1B 78 */	mr r5, r3
/* 813ADBF4 | 7C 67 1B 78 */	mr r7, r3
/* 813ADBF8 | 38 80 00 03 */	li r4, 0x3
/* 813ADBFC | 38 C0 00 00 */	li r6, 0x0
/* 813ADC00 | 48 05 C2 88 */	b fn_81409E88
/* 813ADC04 | 4E 80 00 20 */	blr
.endfn reserveSceneChangeDerived__Q33ipl5scene13ChannelSelectFii

# .text:0x373C | 0x813ADC08 | size: 0x84
# ipl::scene::ChannelSelect::tellStartingZoomAnm()
.fn tellStartingZoomAnm__Q33ipl5scene13ChannelSelectFv, global
/* 813ADC08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ADC0C | 7C 08 02 A6 */	mflr r0
/* 813ADC10 | C0 22 85 7C */	lfs f1, lbl_8169497C@sda21(r0)
/* 813ADC14 | 38 80 FF FF */	li r4, -0x1
/* 813ADC18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ADC1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ADC20 | 7C 7F 1B 78 */	mr r31, r3
/* 813ADC24 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813ADC28 | 4B FB CD C9 */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813ADC2C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813ADC30 | 38 80 FF FF */	li r4, -0x1
/* 813ADC34 | C0 22 85 80 */	lfs f1, lbl_81694980@sda21(r0)
/* 813ADC38 | 4B FB CD 49 */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813ADC3C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813ADC40 | 38 80 00 00 */	li r4, 0x0
/* 813ADC44 | 38 A0 FF FF */	li r5, -0x1
/* 813ADC48 | 4B FB CE 19 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813ADC4C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813ADC50 | 38 80 FF FF */	li r4, -0x1
/* 813ADC54 | 4B FB CC A5 */	bl start__Q33ipl6layout6ObjectFi
/* 813ADC58 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813ADC5C | 3C 80 81 65 */	lis r4, lbl_8164DEB7@ha
/* 813ADC60 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813ADC64 | 38 84 DE B7 */	addi r4, r4, lbl_8164DEB7@l
/* 813ADC68 | 4B FB D8 05 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813ADC6C | 38 00 00 09 */	li r0, 0x9
/* 813ADC70 | 38 60 00 01 */	li r3, 0x1
/* 813ADC74 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 813ADC78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ADC7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ADC80 | 7C 08 03 A6 */	mtlr r0
/* 813ADC84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ADC88 | 4E 80 00 20 */	blr
.endfn tellStartingZoomAnm__Q33ipl5scene13ChannelSelectFv

# .text:0x37C0 | 0x813ADC8C | size: 0x5C
# ipl::scene::ChannelSelect::prepareRestarting(int)
.fn prepareRestarting__Q33ipl5scene13ChannelSelectFi, global
/* 813ADC8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813ADC90 | 7C 08 02 A6 */	mflr r0
/* 813ADC94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813ADC98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813ADC9C | 7C 9F 23 78 */	mr r31, r4
/* 813ADCA0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813ADCA4 | 7C 7E 1B 78 */	mr r30, r3
/* 813ADCA8 | 80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 813ADCAC | 7C 04 00 00 */	cmpw r4, r0
/* 813ADCB0 | 40 82 00 0C */	bne .L_813ADCBC
/* 813ADCB4 | 4B FF FA 51 */	bl isPageCreated__Q33ipl5scene13ChannelSelectCFi
/* 813ADCB8 | 48 00 00 18 */	b .L_813ADCD0
.L_813ADCBC:
/* 813ADCBC | 90 83 00 C8 */	stw r4, 0xc8(r3)
/* 813ADCC0 | 4B FF EC 89 */	bl refreshChannelList__Q33ipl5scene13ChannelSelectFi
/* 813ADCC4 | 7F C3 F3 78 */	mr r3, r30
/* 813ADCC8 | 7F E4 FB 78 */	mr r4, r31
/* 813ADCCC | 4B FF FA 39 */	bl isPageCreated__Q33ipl5scene13ChannelSelectCFi
.L_813ADCD0:
/* 813ADCD0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813ADCD4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813ADCD8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813ADCDC | 7C 08 03 A6 */	mtlr r0
/* 813ADCE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813ADCE4 | 4E 80 00 20 */	blr
.endfn prepareRestarting__Q33ipl5scene13ChannelSelectFi

# .text:0x381C | 0x813ADCE8 | size: 0x184
# ipl::scene::ChannelSelect::restart(int, int)
.fn restart__Q33ipl5scene13ChannelSelectFii, global
/* 813ADCE8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813ADCEC | 7C 08 02 A6 */	mflr r0
/* 813ADCF0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813ADCF4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813ADCF8 | 48 24 B7 D1 */	bl _savegpr_29
/* 813ADCFC | 7C 7D 1B 78 */	mr r29, r3
/* 813ADD00 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813ADD04 | 7C 9E 23 78 */	mr r30, r4
/* 813ADD08 | 7C BF 2B 78 */	mr r31, r5
/* 813ADD0C | 38 80 00 01 */	li r4, 0x1
/* 813ADD10 | 38 A0 FF FF */	li r5, -0x1
/* 813ADD14 | 4B FB CD 4D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813ADD18 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813ADD1C | 38 80 FF FF */	li r4, -0x1
/* 813ADD20 | 4B FB CB D9 */	bl start__Q33ipl6layout6ObjectFi
/* 813ADD24 | C0 22 85 48 */	lfs f1, lbl_81694948@sda21(r0)
/* 813ADD28 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813ADD2C | FC 40 08 90 */	fmr f2, f1
/* 813ADD30 | FC 60 08 90 */	fmr f3, f1
/* 813ADD34 | 4B FC 6B 51 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813ADD38 | 7F A3 EB 78 */	mr r3, r29
/* 813ADD3C | 7F E4 FB 78 */	mr r4, r31
/* 813ADD40 | 48 00 01 D9 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectCFi
/* 813ADD44 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813ADD48 | 38 63 00 84 */	addi r3, r3, 0x84
/* 813ADD4C | 7C 85 23 78 */	mr r5, r4
/* 813ADD50 | 48 19 37 6D */	bl fn_815414BC
/* 813ADD54 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813ADD58 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813ADD5C | 4B FE 98 49 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813ADD60 | 7F A3 EB 78 */	mr r3, r29
/* 813ADD64 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 813ADD68 | 38 A0 00 01 */	li r5, 0x1
/* 813ADD6C | 48 00 06 15 */	bl initChanZoomParam__Q33ipl5scene13ChannelSelectFRCQ33ipl4math4VEC3i
/* 813ADD70 | 7F A3 EB 78 */	mr r3, r29
/* 813ADD74 | 48 00 09 BD */	bl setChanZoomOrtho__Q33ipl5scene13ChannelSelectFv
/* 813ADD78 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813ADD7C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813ADD80 | 80 64 00 84 */	lwz r3, 0x84(r4)
/* 813ADD84 | 88 03 1B 81 */	lbz r0, 0x1b81(r3)
/* 813ADD88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ADD8C | 41 82 00 84 */	beq .L_813ADE10
/* 813ADD90 | 80 64 00 A8 */	lwz r3, 0xa8(r4)
/* 813ADD94 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813ADD98 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813ADD9C | 41 82 00 0C */	beq .L_813ADDA8
/* 813ADDA0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813ADDA4 | 40 82 00 6C */	bne .L_813ADE10
.L_813ADDA8:
/* 813ADDA8 | 80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 813ADDAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ADDB0 | 41 82 00 60 */	beq .L_813ADE10
/* 813ADDB4 | 80 1D 00 FC */	lwz r0, 0xfc(r29)
/* 813ADDB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813ADDBC | 41 82 00 54 */	beq .L_813ADE10
/* 813ADDC0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813ADDC4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813ADDC8 | 4B FB 2D 61 */	bl getDiskInfo__Q33ipl3bs27ManagerFPPcPPc
/* 813ADDCC | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 813ADDD0 | 38 A0 00 04 */	li r5, 0x4
/* 813ADDD4 | 80 9D 00 F8 */	lwz r4, 0xf8(r29)
/* 813ADDD8 | 48 25 47 C5 */	bl strncmp
/* 813ADDDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ADDE0 | 40 82 00 30 */	bne .L_813ADE10
/* 813ADDE4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813ADDE8 | 38 A0 00 02 */	li r5, 0x2
/* 813ADDEC | 80 9D 00 FC */	lwz r4, 0xfc(r29)
/* 813ADDF0 | 48 25 47 AD */	bl strncmp
/* 813ADDF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ADDF8 | 40 82 00 18 */	bne .L_813ADE10
/* 813ADDFC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813ADE00 | 38 00 00 00 */	li r0, 0x0
/* 813ADE04 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813ADE08 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813ADE0C | 98 03 1B 81 */	stb r0, 0x1b81(r3)
.L_813ADE10:
/* 813ADE10 | 7F A3 EB 78 */	mr r3, r29
/* 813ADE14 | 7F C4 F3 78 */	mr r4, r30
/* 813ADE18 | 7F E5 FB 78 */	mr r5, r31
/* 813ADE1C | 4B FF F0 5D */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813ADE20 | 90 7D 01 8C */	stw r3, 0x18c(r29)
/* 813ADE24 | 3B E0 00 00 */	li r31, 0x0
/* 813ADE28 | 48 00 00 0C */	b .L_813ADE34
.L_813ADE2C:
/* 813ADE2C | 7F E3 FB 78 */	mr r3, r31
/* 813ADE30 | 48 00 46 81 */	bl FillModuleCount__Q33ipl5scene10ChannelObjFv
.L_813ADE34:
/* 813ADE34 | 7F E4 FB 78 */	mr r4, r31
/* 813ADE38 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813ADE3C | 48 16 44 A1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813ADE40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ADE44 | 7C 7F 1B 78 */	mr r31, r3
/* 813ADE48 | 40 82 FF E4 */	bne .L_813ADE2C
/* 813ADE4C | 38 00 00 10 */	li r0, 0x10
/* 813ADE50 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813ADE54 | 90 1D 00 C0 */	stw r0, 0xc0(r29)
/* 813ADE58 | 48 24 B6 BD */	bl _restgpr_29
/* 813ADE5C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813ADE60 | 7C 08 03 A6 */	mtlr r0
/* 813ADE64 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813ADE68 | 4E 80 00 20 */	blr
.endfn restart__Q33ipl5scene13ChannelSelectFii

# .text:0x39A0 | 0x813ADE6C | size: 0xAC
# ipl::scene::ChannelSelect::getChannelBasePane(int, int, int) const
.fn getChannelBasePane__Q33ipl5scene13ChannelSelectCFiii, global
/* 813ADE6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813ADE70 | 7C 08 02 A6 */	mflr r0
/* 813ADE74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813ADE78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ADE7C | 48 24 B6 49 */	bl _savegpr_28
/* 813ADE80 | 7C 7C 1B 78 */	mr r28, r3
/* 813ADE84 | 7C 9D 23 78 */	mr r29, r4
/* 813ADE88 | 7C BE 2B 78 */	mr r30, r5
/* 813ADE8C | 7C DF 33 78 */	mr r31, r6
/* 813ADE90 | 4B FF F8 0D */	bl isChannelInCalc__Q33ipl5scene13ChannelSelectCFiii
/* 813ADE94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813ADE98 | 41 82 00 44 */	beq .L_813ADEDC
/* 813ADE9C | 80 9C 00 68 */	lwz r4, 0x68(r28)
/* 813ADEA0 | 7C 7F E8 50 */	subf r3, r31, r29
/* 813ADEA4 | 38 03 00 02 */	addi r0, r3, 0x2
/* 813ADEA8 | 3C A0 81 65 */	lis r5, lbl_8164DAF4@ha
/* 813ADEAC | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 813ADEB0 | 1C 00 00 30 */	mulli r0, r0, 0x30
/* 813ADEB4 | 38 A5 DA F4 */	addi r5, r5, lbl_8164DAF4@l
/* 813ADEB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ADEBC | 57 C4 10 3A */	slwi r4, r30, 2
/* 813ADEC0 | 7C 05 02 14 */	add r0, r5, r0
/* 813ADEC4 | 38 A0 00 01 */	li r5, 0x1
/* 813ADEC8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ADECC | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813ADED0 | 7D 89 03 A6 */	mtctr r12
/* 813ADED4 | 4E 80 04 21 */	bctrl
/* 813ADED8 | 48 00 00 28 */	b .L_813ADF00
.L_813ADEDC:
/* 813ADEDC | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 813ADEE0 | 3C 80 81 65 */	lis r4, lbl_8164DDB7@ha
/* 813ADEE4 | 38 84 DD B7 */	addi r4, r4, lbl_8164DDB7@l
/* 813ADEE8 | 38 A0 00 01 */	li r5, 0x1
/* 813ADEEC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ADEF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ADEF4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ADEF8 | 7D 89 03 A6 */	mtctr r12
/* 813ADEFC | 4E 80 04 21 */	bctrl
.L_813ADF00:
/* 813ADF00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ADF04 | 48 24 B6 0D */	bl _restgpr_28
/* 813ADF08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ADF0C | 7C 08 03 A6 */	mtlr r0
/* 813ADF10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ADF14 | 4E 80 00 20 */	blr
.endfn getChannelBasePane__Q33ipl5scene13ChannelSelectCFiii

# .text:0x3A4C | 0x813ADF18 | size: 0x30
# ipl::scene::ChannelSelect::getChannelBasePane(int) const
.fn getChannelBasePane__Q33ipl5scene13ChannelSelectCFi, global
/* 813ADF18 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813ADF1C | 3C A0 81 65 */	lis r5, lbl_8164DAF4@ha
/* 813ADF20 | 38 A5 DA F4 */	addi r5, r5, lbl_8164DAF4@l
/* 813ADF24 | 54 80 10 3A */	slwi r0, r4, 2
/* 813ADF28 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ADF2C | 7C 85 02 14 */	add r4, r5, r0
/* 813ADF30 | 80 84 00 60 */	lwz r4, 0x60(r4)
/* 813ADF34 | 38 A0 00 01 */	li r5, 0x1
/* 813ADF38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ADF3C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ADF40 | 7D 89 03 A6 */	mtctr r12
/* 813ADF44 | 4E 80 04 20 */	bctr
.endfn getChannelBasePane__Q33ipl5scene13ChannelSelectCFi

# .text:0x3A7C | 0x813ADF48 | size: 0x30
# ipl::scene::ChannelSelect::getChannelBasePane(int)
.fn getChannelBasePane__Q33ipl5scene13ChannelSelectFi, global
/* 813ADF48 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813ADF4C | 3C A0 81 65 */	lis r5, lbl_8164DAF4@ha
/* 813ADF50 | 38 A5 DA F4 */	addi r5, r5, lbl_8164DAF4@l
/* 813ADF54 | 54 80 10 3A */	slwi r0, r4, 2
/* 813ADF58 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813ADF5C | 7C 85 02 14 */	add r4, r5, r0
/* 813ADF60 | 80 84 00 60 */	lwz r4, 0x60(r4)
/* 813ADF64 | 38 A0 00 01 */	li r5, 0x1
/* 813ADF68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813ADF6C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813ADF70 | 7D 89 03 A6 */	mtctr r12
/* 813ADF74 | 4E 80 04 20 */	bctr
.endfn getChannelBasePane__Q33ipl5scene13ChannelSelectFi

# .text:0x3AAC | 0x813ADF78 | size: 0x64
# ipl::scene::ChannelSelect::getDispChanTrans(int) const
.fn getDispChanTrans__Q33ipl5scene13ChannelSelectCFi, global
/* 813ADF78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813ADF7C | 7C 08 02 A6 */	mflr r0
/* 813ADF80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813ADF84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ADF88 | 48 24 B5 41 */	bl _savegpr_29
/* 813ADF8C | C0 22 85 48 */	lfs f1, lbl_81694948@sda21(r0)
/* 813ADF90 | 7C 7D 1B 78 */	mr r29, r3
/* 813ADF94 | 7C 9E 23 78 */	mr r30, r4
/* 813ADF98 | 7C BF 2B 78 */	mr r31, r5
/* 813ADF9C | FC 40 08 90 */	fmr f2, f1
/* 813ADFA0 | FC 60 08 90 */	fmr f3, f1
/* 813ADFA4 | 4B FC 68 E1 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813ADFA8 | 7F C3 F3 78 */	mr r3, r30
/* 813ADFAC | 7F E4 FB 78 */	mr r4, r31
/* 813ADFB0 | 4B FF FF 69 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectCFi
/* 813ADFB4 | 7F A4 EB 78 */	mr r4, r29
/* 813ADFB8 | 7F A5 EB 78 */	mr r5, r29
/* 813ADFBC | 38 63 00 84 */	addi r3, r3, 0x84
/* 813ADFC0 | 48 19 34 FD */	bl fn_815414BC
/* 813ADFC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813ADFC8 | 48 24 B5 4D */	bl _restgpr_29
/* 813ADFCC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813ADFD0 | 7C 08 03 A6 */	mtlr r0
/* 813ADFD4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813ADFD8 | 4E 80 00 20 */	blr
.endfn getDispChanTrans__Q33ipl5scene13ChannelSelectCFi

# .text:0x3B10 | 0x813ADFDC | size: 0x3A4
# ipl::scene::ChannelSelect::setChannelScissor(const ipl::scene::ChannelObj*) const
.fn setChannelScissor__Q33ipl5scene13ChannelSelectCFPCQ33ipl5scene10ChannelObj, global
/* 813ADFDC | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 813ADFE0 | 7C 08 02 A6 */	mflr r0
/* 813ADFE4 | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 813ADFE8 | DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 813ADFEC | F3 E1 00 D8 */	psq_st f31, 0xd8(r1), 0, qr0
/* 813ADFF0 | DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 813ADFF4 | F3 C1 00 C8 */	psq_st f30, 0xc8(r1), 0, qr0
/* 813ADFF8 | DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 813ADFFC | F3 A1 00 B8 */	psq_st f29, 0xb8(r1), 0, qr0
/* 813AE000 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813AE004 | 48 24 B4 C5 */	bl _savegpr_29
/* 813AE008 | 3C 00 43 30 */	lis r0, 0x4330
/* 813AE00C | 7C 7E 1B 78 */	mr r30, r3
/* 813AE010 | 90 01 00 88 */	stw r0, 0x88(r1)
/* 813AE014 | 7C 83 23 78 */	mr r3, r4
/* 813AE018 | 90 01 00 90 */	stw r0, 0x90(r1)
/* 813AE01C | 48 00 41 99 */	bl getTranslate__Q33ipl5scene10ChannelObjCFv
/* 813AE020 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813AE024 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813AE028 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813AE02C | 38 61 00 28 */	addi r3, r1, 0x28
/* 813AE030 | 90 A1 00 38 */	stw r5, 0x38(r1)
/* 813AE034 | 90 81 00 3C */	stw r4, 0x3c(r1)
/* 813AE038 | 90 01 00 40 */	stw r0, 0x40(r1)
/* 813AE03C | 4B F8 83 ED */	bl __ct__Q34nw4r2ut4RectFv
/* 813AE040 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813AE044 | 4B F8 78 D5 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813AE048 | 4B F8 79 4D */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813AE04C | 80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 813AE050 | 7C 7D 1B 78 */	mr r29, r3
/* 813AE054 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813AE058 | 41 82 00 14 */	beq .L_813AE06C
/* 813AE05C | 2C 00 00 0E */	cmpwi r0, 0xe
/* 813AE060 | 41 82 00 0C */	beq .L_813AE06C
/* 813AE064 | 2C 00 00 10 */	cmpwi r0, 0x10
/* 813AE068 | 40 82 01 44 */	bne .L_813AE1AC
.L_813AE06C:
/* 813AE06C | C0 01 00 30 */	lfs f0, 0x30(r1)
/* 813AE070 | 38 61 00 44 */	addi r3, r1, 0x44
/* 813AE074 | C0 DE 00 E4 */	lfs f6, 0xe4(r30)
/* 813AE078 | C0 81 00 28 */	lfs f4, 0x28(r1)
/* 813AE07C | ED 20 30 24 */	fdivs f9, f0, f6
/* 813AE080 | C0 41 00 34 */	lfs f2, 0x34(r1)
/* 813AE084 | C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 813AE088 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 813AE08C | C1 1E 00 D8 */	lfs f8, 0xd8(r30)
/* 813AE090 | C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 813AE094 | EC E4 30 24 */	fdivs f7, f4, f6
/* 813AE098 | C0 A2 85 84 */	lfs f5, lbl_81694984@sda21(r0)
/* 813AE09C | C0 C2 85 54 */	lfs f6, lbl_81694954@sda21(r0)
/* 813AE0A0 | EC 42 18 24 */	fdivs f2, f2, f3
/* 813AE0A4 | EC 00 18 24 */	fdivs f0, f0, f3
/* 813AE0A8 | EC 41 10 28 */	fsubs f2, f1, f2
/* 813AE0AC | EC 88 48 2A */	fadds f4, f8, f9
/* 813AE0B0 | EC 68 38 2A */	fadds f3, f8, f7
/* 813AE0B4 | EC 21 00 28 */	fsubs f1, f1, f0
/* 813AE0B8 | 48 19 35 45 */	bl fn_815415FC
/* 813AE0BC | C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 813AE0C0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813AE0C4 | C0 41 00 38 */	lfs f2, 0x38(r1)
/* 813AE0C8 | 38 81 00 44 */	addi r4, r1, 0x44
/* 813AE0CC | C0 22 85 48 */	lfs f1, lbl_81694948@sda21(r0)
/* 813AE0D0 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 813AE0D4 | C0 02 85 4C */	lfs f0, lbl_8169494C@sda21(r0)
/* 813AE0D8 | D0 41 00 18 */	stfs f2, 0x18(r1)
/* 813AE0DC | D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 813AE0E0 | D0 21 00 20 */	stfs f1, 0x20(r1)
/* 813AE0E4 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 813AE0E8 | 48 17 07 71 */	bl fn_8151E858
/* 813AE0EC | A0 1D 00 04 */	lhz r0, 0x4(r29)
/* 813AE0F0 | A0 7D 00 06 */	lhz r3, 0x6(r29)
/* 813AE0F4 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 813AE0F8 | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 813AE0FC | C8 41 00 88 */	lfd f2, 0x88(r1)
/* 813AE100 | C0 01 00 28 */	lfs f0, 0x28(r1)
/* 813AE104 | 90 61 00 8C */	stw r3, 0x8c(r1)
/* 813AE108 | EF A1 00 28 */	fsubs f29, f1, f0
/* 813AE10C | C9 62 85 90 */	lfd f11, lbl_81694990@sda21(r0)
/* 813AE110 | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813AE114 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813AE118 | ED 22 58 28 */	fsubs f9, f2, f11
/* 813AE11C | EC C0 58 28 */	fsubs f6, f0, f11
/* 813AE120 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 813AE124 | C8 21 00 90 */	lfd f1, 0x90(r1)
/* 813AE128 | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813AE12C | EC 21 58 28 */	fsubs f1, f1, f11
/* 813AE130 | 90 61 00 94 */	stw r3, 0x94(r1)
/* 813AE134 | EC 00 58 28 */	fsubs f0, f0, f11
/* 813AE138 | C1 A2 85 4C */	lfs f13, lbl_8169494C@sda21(r0)
/* 813AE13C | C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 813AE140 | EC E1 E8 24 */	fdivs f7, f1, f29
/* 813AE144 | C8 81 00 90 */	lfd f4, 0x90(r1)
/* 813AE148 | C0 61 00 08 */	lfs f3, 0x8(r1)
/* 813AE14C | C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 813AE150 | C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 813AE154 | C1 42 85 88 */	lfs f10, lbl_81694988@sda21(r0)
/* 813AE158 | ED 02 00 72 */	fmuls f8, f2, f1
/* 813AE15C | C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 813AE160 | ED 8D 18 2A */	fadds f12, f13, f3
/* 813AE164 | C0 7E 00 D4 */	lfs f3, 0xd4(r30)
/* 813AE168 | EC 00 E8 24 */	fdivs f0, f0, f29
/* 813AE16C | C0 42 85 60 */	lfs f2, lbl_81694960@sda21(r0)
/* 813AE170 | EC 63 00 72 */	fmuls f3, f3, f1
/* 813AE174 | EC 22 02 32 */	fmuls f1, f2, f8
/* 813AE178 | ED 2C 02 72 */	fmuls f9, f12, f9
/* 813AE17C | EC AD 28 2A */	fadds f5, f13, f5
/* 813AE180 | EC 84 58 28 */	fsubs f4, f4, f11
/* 813AE184 | EF A1 00 32 */	fmuls f29, f1, f0
/* 813AE188 | ED 29 02 B2 */	fmuls f9, f9, f10
/* 813AE18C | EC 85 01 32 */	fmuls f4, f5, f4
/* 813AE190 | EC E8 01 F2 */	fmuls f7, f8, f7
/* 813AE194 | EC 22 00 F2 */	fmuls f1, f2, f3
/* 813AE198 | EC 04 02 B2 */	fmuls f0, f4, f10
/* 813AE19C | EF E9 38 28 */	fsubs f31, f9, f7
/* 813AE1A0 | EC 06 00 28 */	fsubs f0, f6, f0
/* 813AE1A4 | EF C0 18 28 */	fsubs f30, f0, f3
/* 813AE1A8 | 48 00 00 94 */	b .L_813AE23C
.L_813AE1AC:
/* 813AE1AC | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 813AE1B0 | C0 41 00 30 */	lfs f2, 0x30(r1)
/* 813AE1B4 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 813AE1B8 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 813AE1BC | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813AE1C0 | C9 22 85 90 */	lfd f9, lbl_81694990@sda21(r0)
/* 813AE1C4 | ED 42 08 28 */	fsubs f10, f2, f1
/* 813AE1C8 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 813AE1CC | EC 20 48 28 */	fsubs f1, f0, f9
/* 813AE1D0 | A0 63 00 06 */	lhz r3, 0x6(r3)
/* 813AE1D4 | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813AE1D8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813AE1DC | EC 00 48 28 */	fsubs f0, f0, f9
/* 813AE1E0 | C1 02 85 88 */	lfs f8, lbl_81694988@sda21(r0)
/* 813AE1E4 | EC A1 50 24 */	fdivs f5, f1, f10
/* 813AE1E8 | C8 61 00 90 */	lfd f3, 0x90(r1)
/* 813AE1EC | C0 C1 00 38 */	lfs f6, 0x38(r1)
/* 813AE1F0 | 90 61 00 94 */	stw r3, 0x94(r1)
/* 813AE1F4 | C0 FE 00 D0 */	lfs f7, 0xd0(r30)
/* 813AE1F8 | C8 21 00 90 */	lfd f1, 0x90(r1)
/* 813AE1FC | EC 81 48 28 */	fsubs f4, f1, f9
/* 813AE200 | C0 42 85 60 */	lfs f2, lbl_81694960@sda21(r0)
/* 813AE204 | ED 23 48 28 */	fsubs f9, f3, f9
/* 813AE208 | C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 813AE20C | EC C6 38 28 */	fsubs f6, f6, f7
/* 813AE210 | C0 7E 00 D4 */	lfs f3, 0xd4(r30)
/* 813AE214 | EC 84 02 32 */	fmuls f4, f4, f8
/* 813AE218 | EC 00 50 24 */	fdivs f0, f0, f10
/* 813AE21C | EC 84 08 28 */	fsubs f4, f4, f1
/* 813AE220 | EC 22 01 F2 */	fmuls f1, f2, f7
/* 813AE224 | EC E9 02 32 */	fmuls f7, f9, f8
/* 813AE228 | EC A6 01 72 */	fmuls f5, f6, f5
/* 813AE22C | EF A1 00 32 */	fmuls f29, f1, f0
/* 813AE230 | EF C4 18 28 */	fsubs f30, f4, f3
/* 813AE234 | EF E7 28 2A */	fadds f31, f7, f5
/* 813AE238 | EC 22 00 F2 */	fmuls f1, f2, f3
.L_813AE23C:
/* 813AE23C | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813AE240 | C0 82 85 4C */	lfs f4, lbl_8169494C@sda21(r0)
/* 813AE244 | C8 62 85 90 */	lfd f3, lbl_81694990@sda21(r0)
/* 813AE248 | C8 01 00 90 */	lfd f0, 0x90(r1)
/* 813AE24C | EF FF 20 28 */	fsubs f31, f31, f4
/* 813AE250 | C0 42 85 60 */	lfs f2, lbl_81694960@sda21(r0)
/* 813AE254 | EF DE 20 28 */	fsubs f30, f30, f4
/* 813AE258 | EC 00 18 28 */	fsubs f0, f0, f3
/* 813AE25C | EF BD 10 2A */	fadds f29, f29, f2
/* 813AE260 | EC 21 10 2A */	fadds f1, f1, f2
/* 813AE264 | FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 813AE268 | 4C 41 13 82 */	cror eq, gt, eq
/* 813AE26C | 41 82 00 40 */	beq .L_813AE2AC
/* 813AE270 | EC 1F E8 2A */	fadds f0, f31, f29
/* 813AE274 | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE278 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 813AE27C | 4C 40 13 82 */	cror eq, lt, eq
/* 813AE280 | 41 82 00 2C */	beq .L_813AE2AC
/* 813AE284 | 90 61 00 8C */	stw r3, 0x8c(r1)
/* 813AE288 | C8 01 00 88 */	lfd f0, 0x88(r1)
/* 813AE28C | EC 00 18 28 */	fsubs f0, f0, f3
/* 813AE290 | FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 813AE294 | 4C 41 13 82 */	cror eq, gt, eq
/* 813AE298 | 41 82 00 14 */	beq .L_813AE2AC
/* 813AE29C | EC 1E 08 2A */	fadds f0, f30, f1
/* 813AE2A0 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 813AE2A4 | 4C 40 13 82 */	cror eq, lt, eq
/* 813AE2A8 | 40 82 00 1C */	bne .L_813AE2C4
.L_813AE2AC:
/* 813AE2AC | 38 60 00 00 */	li r3, 0x0
/* 813AE2B0 | 38 80 00 00 */	li r4, 0x0
/* 813AE2B4 | 38 A0 00 00 */	li r5, 0x0
/* 813AE2B8 | 38 C0 00 00 */	li r6, 0x0
/* 813AE2BC | 48 19 9C ED */	bl GXSetScissor
/* 813AE2C0 | 48 00 00 90 */	b .L_813AE350
.L_813AE2C4:
/* 813AE2C4 | FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 813AE2C8 | 40 80 00 0C */	bge .L_813AE2D4
/* 813AE2CC | EF BD F8 2A */	fadds f29, f29, f31
/* 813AE2D0 | FF E0 10 90 */	fmr f31, f2
.L_813AE2D4:
/* 813AE2D4 | C0 02 85 48 */	lfs f0, lbl_81694948@sda21(r0)
/* 813AE2D8 | FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 813AE2DC | 40 80 00 0C */	bge .L_813AE2E8
/* 813AE2E0 | EC 21 F0 2A */	fadds f1, f1, f30
/* 813AE2E4 | FF C0 00 90 */	fmr f30, f0
.L_813AE2E8:
/* 813AE2E8 | EC 5F E8 2A */	fadds f2, f31, f29
/* 813AE2EC | C0 02 85 8C */	lfs f0, lbl_8169498C@sda21(r0)
/* 813AE2F0 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 813AE2F4 | 40 81 00 0C */	ble .L_813AE300
/* 813AE2F8 | EC 02 00 28 */	fsubs f0, f2, f0
/* 813AE2FC | EF BD 00 28 */	fsubs f29, f29, f0
.L_813AE300:
/* 813AE300 | EC 5E 08 2A */	fadds f2, f30, f1
/* 813AE304 | C0 02 85 8C */	lfs f0, lbl_8169498C@sda21(r0)
/* 813AE308 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 813AE30C | 40 81 00 0C */	ble .L_813AE318
/* 813AE310 | EC 02 00 28 */	fsubs f0, f2, f0
/* 813AE314 | EC 21 00 28 */	fsubs f1, f1, f0
.L_813AE318:
/* 813AE318 | 48 24 B0 81 */	bl __cvt_fp2unsigned
/* 813AE31C | FC 20 E8 90 */	fmr f1, f29
/* 813AE320 | 7C 7D 1B 78 */	mr r29, r3
/* 813AE324 | 48 24 B0 75 */	bl __cvt_fp2unsigned
/* 813AE328 | FC 20 F0 90 */	fmr f1, f30
/* 813AE32C | 7C 7E 1B 78 */	mr r30, r3
/* 813AE330 | 48 24 B0 69 */	bl __cvt_fp2unsigned
/* 813AE334 | FC 20 F8 90 */	fmr f1, f31
/* 813AE338 | 7C 7F 1B 78 */	mr r31, r3
/* 813AE33C | 48 24 B0 5D */	bl __cvt_fp2unsigned
/* 813AE340 | 7F E4 FB 78 */	mr r4, r31
/* 813AE344 | 7F C5 F3 78 */	mr r5, r30
/* 813AE348 | 7F A6 EB 78 */	mr r6, r29
/* 813AE34C | 48 19 9C 5D */	bl GXSetScissor
.L_813AE350:
/* 813AE350 | E3 E1 00 D8 */	psq_l f31, 0xd8(r1), 0, qr0
/* 813AE354 | CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 813AE358 | E3 C1 00 C8 */	psq_l f30, 0xc8(r1), 0, qr0
/* 813AE35C | CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 813AE360 | E3 A1 00 B8 */	psq_l f29, 0xb8(r1), 0, qr0
/* 813AE364 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813AE368 | CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 813AE36C | 48 24 B1 A9 */	bl _restgpr_29
/* 813AE370 | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 813AE374 | 7C 08 03 A6 */	mtlr r0
/* 813AE378 | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 813AE37C | 4E 80 00 20 */	blr
.endfn setChannelScissor__Q33ipl5scene13ChannelSelectCFPCQ33ipl5scene10ChannelObj

# .text:0x3EB4 | 0x813AE380 | size: 0x294
# ipl::scene::ChannelSelect::initChanZoomParam(const ipl::math::VEC3&, int)
.fn initChanZoomParam__Q33ipl5scene13ChannelSelectFRCQ33ipl4math4VEC3i, global
/* 813AE380 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813AE384 | 7C 08 02 A6 */	mflr r0
/* 813AE388 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813AE38C | 39 61 00 90 */	addi r11, r1, 0x90
/* 813AE390 | 48 24 B1 31 */	bl _savegpr_27
/* 813AE394 | 7C 7B 1B 78 */	mr r27, r3
/* 813AE398 | 7C 9D 23 78 */	mr r29, r4
/* 813AE39C | 7C BC 2B 78 */	mr r28, r5
/* 813AE3A0 | 38 61 00 68 */	addi r3, r1, 0x68
/* 813AE3A4 | 4B F8 80 85 */	bl __ct__Q34nw4r2ut4RectFv
/* 813AE3A8 | 38 61 00 68 */	addi r3, r1, 0x68
/* 813AE3AC | 4B F8 75 6D */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813AE3B0 | C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 813AE3B4 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813AE3B8 | C0 21 00 68 */	lfs f1, 0x68(r1)
/* 813AE3BC | FC 40 00 50 */	fneg f2, f0
/* 813AE3C0 | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813AE3C4 | 4B FB 46 99 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AE3C8 | C0 7D 00 00 */	lfs f3, 0x0(r29)
/* 813AE3CC | 38 61 00 50 */	addi r3, r1, 0x50
/* 813AE3D0 | C0 3B 00 D0 */	lfs f1, 0xd0(r27)
/* 813AE3D4 | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 813AE3D8 | C0 1B 00 D4 */	lfs f0, 0xd4(r27)
/* 813AE3DC | EC 23 08 28 */	fsubs f1, f3, f1
/* 813AE3E0 | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813AE3E4 | EC 42 00 2A */	fadds f2, f2, f0
/* 813AE3E8 | 4B FB 46 75 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AE3EC | C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 813AE3F0 | 38 61 00 44 */	addi r3, r1, 0x44
/* 813AE3F4 | C0 21 00 70 */	lfs f1, 0x70(r1)
/* 813AE3F8 | FC 40 00 50 */	fneg f2, f0
/* 813AE3FC | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813AE400 | 4B FB 46 5D */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AE404 | C0 7D 00 00 */	lfs f3, 0x0(r29)
/* 813AE408 | 38 61 00 38 */	addi r3, r1, 0x38
/* 813AE40C | C0 3B 00 D0 */	lfs f1, 0xd0(r27)
/* 813AE410 | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 813AE414 | C0 1B 00 D4 */	lfs f0, 0xd4(r27)
/* 813AE418 | EC 23 08 2A */	fadds f1, f3, f1
/* 813AE41C | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813AE420 | EC 42 00 2A */	fadds f2, f2, f0
/* 813AE424 | 4B FB 46 39 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AE428 | C0 01 00 74 */	lfs f0, 0x74(r1)
/* 813AE42C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813AE430 | C0 21 00 68 */	lfs f1, 0x68(r1)
/* 813AE434 | FC 40 00 50 */	fneg f2, f0
/* 813AE438 | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813AE43C | 4B FB 46 21 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AE440 | C0 7D 00 00 */	lfs f3, 0x0(r29)
/* 813AE444 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813AE448 | C0 3B 00 D0 */	lfs f1, 0xd0(r27)
/* 813AE44C | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 813AE450 | C0 1B 00 D4 */	lfs f0, 0xd4(r27)
/* 813AE454 | EC 23 08 28 */	fsubs f1, f3, f1
/* 813AE458 | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813AE45C | EC 42 00 28 */	fsubs f2, f2, f0
/* 813AE460 | 4B FB 45 FD */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AE464 | C0 01 00 74 */	lfs f0, 0x74(r1)
/* 813AE468 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813AE46C | C0 21 00 70 */	lfs f1, 0x70(r1)
/* 813AE470 | FC 40 00 50 */	fneg f2, f0
/* 813AE474 | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813AE478 | 4B FB 45 E5 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AE47C | C0 7D 00 00 */	lfs f3, 0x0(r29)
/* 813AE480 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813AE484 | C0 3B 00 D0 */	lfs f1, 0xd0(r27)
/* 813AE488 | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 813AE48C | C0 1B 00 D4 */	lfs f0, 0xd4(r27)
/* 813AE490 | EC 23 08 2A */	fadds f1, f3, f1
/* 813AE494 | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813AE498 | EC 42 00 28 */	fsubs f2, f2, f0
/* 813AE49C | 4B FB 45 C1 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AE4A0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813AE4A4 | 40 82 00 98 */	bne .L_813AE53C
/* 813AE4A8 | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE4AC | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813AE4B0 | 80 7B 00 6C */	lwz r3, 0x6c(r27)
/* 813AE4B4 | 38 A1 00 50 */	addi r5, r1, 0x50
/* 813AE4B8 | FC 60 10 90 */	fmr f3, f2
/* 813AE4BC | C0 22 85 5C */	lfs f1, lbl_8169495C@sda21(r0)
/* 813AE4C0 | C0 82 85 4C */	lfs f4, lbl_8169494C@sda21(r0)
/* 813AE4C4 | 38 C0 00 00 */	li r6, 0x0
/* 813AE4C8 | 48 00 01 4D */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813AE4CC | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE4D0 | 38 81 00 44 */	addi r4, r1, 0x44
/* 813AE4D4 | 80 7B 00 70 */	lwz r3, 0x70(r27)
/* 813AE4D8 | 38 A1 00 38 */	addi r5, r1, 0x38
/* 813AE4DC | FC 60 10 90 */	fmr f3, f2
/* 813AE4E0 | C0 22 85 5C */	lfs f1, lbl_8169495C@sda21(r0)
/* 813AE4E4 | C0 82 85 4C */	lfs f4, lbl_8169494C@sda21(r0)
/* 813AE4E8 | 38 C0 00 00 */	li r6, 0x0
/* 813AE4EC | 48 00 01 29 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813AE4F0 | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE4F4 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813AE4F8 | 80 7B 00 74 */	lwz r3, 0x74(r27)
/* 813AE4FC | 38 A1 00 20 */	addi r5, r1, 0x20
/* 813AE500 | FC 60 10 90 */	fmr f3, f2
/* 813AE504 | C0 22 85 5C */	lfs f1, lbl_8169495C@sda21(r0)
/* 813AE508 | C0 82 85 4C */	lfs f4, lbl_8169494C@sda21(r0)
/* 813AE50C | 38 C0 00 00 */	li r6, 0x0
/* 813AE510 | 48 00 01 05 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813AE514 | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE518 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813AE51C | 80 7B 00 78 */	lwz r3, 0x78(r27)
/* 813AE520 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813AE524 | FC 60 10 90 */	fmr f3, f2
/* 813AE528 | C0 22 85 5C */	lfs f1, lbl_8169495C@sda21(r0)
/* 813AE52C | C0 82 85 4C */	lfs f4, lbl_8169494C@sda21(r0)
/* 813AE530 | 38 C0 00 00 */	li r6, 0x0
/* 813AE534 | 48 00 00 E1 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813AE538 | 48 00 00 94 */	b .L_813AE5CC
.L_813AE53C:
/* 813AE53C | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE540 | 38 81 00 50 */	addi r4, r1, 0x50
/* 813AE544 | 80 7B 00 6C */	lwz r3, 0x6c(r27)
/* 813AE548 | 38 A1 00 5C */	addi r5, r1, 0x5c
/* 813AE54C | FC 60 10 90 */	fmr f3, f2
/* 813AE550 | C0 22 85 5C */	lfs f1, lbl_8169495C@sda21(r0)
/* 813AE554 | C0 82 85 4C */	lfs f4, lbl_8169494C@sda21(r0)
/* 813AE558 | 38 C0 00 00 */	li r6, 0x0
/* 813AE55C | 48 00 00 B9 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813AE560 | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE564 | 38 81 00 38 */	addi r4, r1, 0x38
/* 813AE568 | 80 7B 00 70 */	lwz r3, 0x70(r27)
/* 813AE56C | 38 A1 00 44 */	addi r5, r1, 0x44
/* 813AE570 | FC 60 10 90 */	fmr f3, f2
/* 813AE574 | C0 22 85 5C */	lfs f1, lbl_8169495C@sda21(r0)
/* 813AE578 | C0 82 85 4C */	lfs f4, lbl_8169494C@sda21(r0)
/* 813AE57C | 38 C0 00 00 */	li r6, 0x0
/* 813AE580 | 48 00 00 95 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813AE584 | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE588 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813AE58C | 80 7B 00 74 */	lwz r3, 0x74(r27)
/* 813AE590 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 813AE594 | FC 60 10 90 */	fmr f3, f2
/* 813AE598 | C0 22 85 5C */	lfs f1, lbl_8169495C@sda21(r0)
/* 813AE59C | C0 82 85 4C */	lfs f4, lbl_8169494C@sda21(r0)
/* 813AE5A0 | 38 C0 00 00 */	li r6, 0x0
/* 813AE5A4 | 48 00 00 71 */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
/* 813AE5A8 | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE5AC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AE5B0 | 80 7B 00 78 */	lwz r3, 0x78(r27)
/* 813AE5B4 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813AE5B8 | FC 60 10 90 */	fmr f3, f2
/* 813AE5BC | C0 22 85 5C */	lfs f1, lbl_8169495C@sda21(r0)
/* 813AE5C0 | C0 82 85 4C */	lfs f4, lbl_8169494C@sda21(r0)
/* 813AE5C4 | 38 C0 00 00 */	li r6, 0x0
/* 813AE5C8 | 48 00 00 4D */	bl "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"
.L_813AE5CC:
/* 813AE5CC | 3B 80 00 00 */	li r28, 0x0
/* 813AE5D0 | 3B E0 00 00 */	li r31, 0x0
/* 813AE5D4 | 3B C0 00 01 */	li r30, 0x1
.L_813AE5D8:
/* 813AE5D8 | 7C 7B FA 14 */	add r3, r27, r31
/* 813AE5DC | 83 A3 00 6C */	lwz r29, 0x6c(r3)
/* 813AE5E0 | 7F A3 EB 78 */	mr r3, r29
/* 813AE5E4 | 4B FB 42 8D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AE5E8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813AE5EC | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813AE5F0 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813AE5F4 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813AE5F8 | 41 80 FF E0 */	blt .L_813AE5D8
/* 813AE5FC | 39 61 00 90 */	addi r11, r1, 0x90
/* 813AE600 | 48 24 AF 0D */	bl _restgpr_27
/* 813AE604 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813AE608 | 7C 08 03 A6 */	mtlr r0
/* 813AE60C | 38 21 00 90 */	addi r1, r1, 0x90
/* 813AE610 | 4E 80 00 20 */	blr
.endfn initChanZoomParam__Q33ipl5scene13ChannelSelectFRCQ33ipl4math4VEC3i

# .text:0x4148 | 0x813AE614 | size: 0xBC
# ipl::math::HermiteIntp<ipl::math::VEC3>::init(const ipl::math::VEC3&, const ipl::math::VEC3&, float, float, float, int, float)
.fn "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif", global
/* 813AE614 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813AE618 | 7C 08 02 A6 */	mflr r0
/* 813AE61C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813AE620 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 813AE624 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 813AE628 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 813AE62C | F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 813AE630 | DB A1 00 30 */	stfd f29, 0x30(r1)
/* 813AE634 | F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 813AE638 | DB 81 00 20 */	stfd f28, 0x20(r1)
/* 813AE63C | F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 813AE640 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AE644 | 48 24 AE 85 */	bl _savegpr_29
/* 813AE648 | FF 80 08 90 */	fmr f28, f1
/* 813AE64C | 7C 7D 1B 78 */	mr r29, r3
/* 813AE650 | FF A0 10 90 */	fmr f29, f2
/* 813AE654 | 7C BE 2B 78 */	mr r30, r5
/* 813AE658 | FF C0 18 90 */	fmr f30, f3
/* 813AE65C | 7C DF 33 78 */	mr r31, r6
/* 813AE660 | FF E0 20 90 */	fmr f31, f4
/* 813AE664 | 38 63 00 20 */	addi r3, r3, 0x20
/* 813AE668 | 4B F9 60 1D */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AE66C | 7F C4 F3 78 */	mr r4, r30
/* 813AE670 | 38 7D 00 2C */	addi r3, r29, 0x2c
/* 813AE674 | 4B F9 60 11 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AE678 | FC 20 E0 90 */	fmr f1, f28
/* 813AE67C | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813AE680 | FC 60 F8 90 */	fmr f3, f31
/* 813AE684 | 7F A3 EB 78 */	mr r3, r29
/* 813AE688 | 7F E4 FB 78 */	mr r4, r31
/* 813AE68C | 4B FB 41 C5 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813AE690 | D3 BD 00 38 */	stfs f29, 0x38(r29)
/* 813AE694 | D3 DD 00 3C */	stfs f30, 0x3c(r29)
/* 813AE698 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 813AE69C | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 813AE6A0 | E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 813AE6A4 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 813AE6A8 | E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 813AE6AC | CB A1 00 30 */	lfd f29, 0x30(r1)
/* 813AE6B0 | E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 813AE6B4 | CB 81 00 20 */	lfd f28, 0x20(r1)
/* 813AE6B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AE6BC | 48 24 AE 59 */	bl _restgpr_29
/* 813AE6C0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813AE6C4 | 7C 08 03 A6 */	mtlr r0
/* 813AE6C8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813AE6CC | 4E 80 00 20 */	blr
.endfn "init__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>FRCQ33ipl4math4VEC3RCQ33ipl4math4VEC3fffif"

# .text:0x4204 | 0x813AE6D0 | size: 0x60
# ipl::scene::ChannelSelect::calcChanZoomParam()
.fn calcChanZoomParam__Q33ipl5scene13ChannelSelectFv, global
/* 813AE6D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AE6D4 | 7C 08 02 A6 */	mflr r0
/* 813AE6D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AE6DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AE6E0 | 48 24 AD E9 */	bl _savegpr_29
/* 813AE6E4 | 7C 7D 1B 78 */	mr r29, r3
/* 813AE6E8 | 3B C0 00 00 */	li r30, 0x0
/* 813AE6EC | 3B E0 00 00 */	li r31, 0x0
.L_813AE6F0:
/* 813AE6F0 | 7C 7D FA 14 */	add r3, r29, r31
/* 813AE6F4 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 813AE6F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AE6FC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813AE700 | 7D 89 03 A6 */	mtctr r12
/* 813AE704 | 4E 80 04 21 */	bctrl
/* 813AE708 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813AE70C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813AE710 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 813AE714 | 41 80 FF DC */	blt .L_813AE6F0
/* 813AE718 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AE71C | 48 24 AD F9 */	bl _restgpr_29
/* 813AE720 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AE724 | 7C 08 03 A6 */	mtlr r0
/* 813AE728 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AE72C | 4E 80 00 20 */	blr
.endfn calcChanZoomParam__Q33ipl5scene13ChannelSelectFv

# .text:0x4264 | 0x813AE730 | size: 0x26C
# ipl::scene::ChannelSelect::setChanZoomOrtho()
.fn setChanZoomOrtho__Q33ipl5scene13ChannelSelectFv, global
/* 813AE730 | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 813AE734 | 7C 08 02 A6 */	mflr r0
/* 813AE738 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 813AE73C | DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 813AE740 | F3 E1 00 E8 */	psq_st f31, 0xe8(r1), 0, qr0
/* 813AE744 | DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 813AE748 | F3 C1 00 D8 */	psq_st f30, 0xd8(r1), 0, qr0
/* 813AE74C | DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 813AE750 | F3 A1 00 C8 */	psq_st f29, 0xc8(r1), 0, qr0
/* 813AE754 | DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 813AE758 | F3 81 00 B8 */	psq_st f28, 0xb8(r1), 0, qr0
/* 813AE75C | DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 813AE760 | F3 61 00 A8 */	psq_st f27, 0xa8(r1), 0, qr0
/* 813AE764 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813AE768 | 48 24 AD 59 */	bl _savegpr_27
/* 813AE76C | C3 A2 85 4C */	lfs f29, lbl_8169494C@sda21(r0)
/* 813AE770 | 7C 7B 1B 78 */	mr r27, r3
/* 813AE774 | C3 C2 85 60 */	lfs f30, lbl_81694960@sda21(r0)
/* 813AE778 | 3B 80 00 00 */	li r28, 0x0
/* 813AE77C | C3 E2 85 64 */	lfs f31, lbl_81694964@sda21(r0)
/* 813AE780 | 3B E0 00 00 */	li r31, 0x0
/* 813AE784 | 3B C0 00 00 */	li r30, 0x0
.L_813AE788:
/* 813AE788 | 7C 9B F2 14 */	add r4, r27, r30
/* 813AE78C | 38 61 00 28 */	addi r3, r1, 0x28
/* 813AE790 | 83 A4 00 6C */	lwz r29, 0x6c(r4)
/* 813AE794 | C0 1D 00 04 */	lfs f0, 0x4(r29)
/* 813AE798 | 38 9D 00 2C */	addi r4, r29, 0x2c
/* 813AE79C | C3 7D 00 0C */	lfs f27, 0xc(r29)
/* 813AE7A0 | EF 9D 00 24 */	fdivs f28, f29, f0
/* 813AE7A4 | EC 3E 06 F2 */	fmuls f1, f30, f27
/* 813AE7A8 | EC 1F 06 F2 */	fmuls f0, f31, f27
/* 813AE7AC | EC 21 06 F2 */	fmuls f1, f1, f27
/* 813AE7B0 | EC 00 06 F2 */	fmuls f0, f0, f27
/* 813AE7B4 | EC 3B 00 72 */	fmuls f1, f27, f1
/* 813AE7B8 | EC 1C 00 32 */	fmuls f0, f28, f0
/* 813AE7BC | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813AE7C0 | EC 1C 00 32 */	fmuls f0, f28, f0
/* 813AE7C4 | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813AE7C8 | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813AE7CC | EC 21 00 28 */	fsubs f1, f1, f0
/* 813AE7D0 | 4B FE 8D F1 */	bl __ml__Q33ipl4math4VEC3CFf
/* 813AE7D4 | EC 3E 06 F2 */	fmuls f1, f30, f27
/* 813AE7D8 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813AE7DC | EC 1F 06 F2 */	fmuls f0, f31, f27
/* 813AE7E0 | 38 9D 00 20 */	addi r4, r29, 0x20
/* 813AE7E4 | EC 21 06 F2 */	fmuls f1, f1, f27
/* 813AE7E8 | EC 00 06 F2 */	fmuls f0, f0, f27
/* 813AE7EC | EC 3B 00 72 */	fmuls f1, f27, f1
/* 813AE7F0 | EC 1C 00 32 */	fmuls f0, f28, f0
/* 813AE7F4 | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813AE7F8 | EC 1C 00 32 */	fmuls f0, f28, f0
/* 813AE7FC | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813AE800 | EC 3C 00 72 */	fmuls f1, f28, f1
/* 813AE804 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813AE808 | EC 3D 00 2A */	fadds f1, f29, f0
/* 813AE80C | 4B FE 8D B5 */	bl __ml__Q33ipl4math4VEC3CFf
/* 813AE810 | E0 41 00 1C */	psq_l f2, 0x1c(r1), 0, qr0
/* 813AE814 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813AE818 | E0 21 00 28 */	psq_l f1, 0x28(r1), 0, qr0
/* 813AE81C | 38 81 00 10 */	addi r4, r1, 0x10
/* 813AE820 | 10 02 08 28 */	ps_sub f0, f2, f1
/* 813AE824 | E0 41 80 24 */	psq_l f2, 0x24(r1), 1, qr0
/* 813AE828 | E0 21 80 30 */	psq_l f1, 0x30(r1), 1, qr0
/* 813AE82C | F0 01 00 10 */	psq_st f0, 0x10(r1), 0, qr0
/* 813AE830 | 10 02 08 28 */	ps_sub f0, f2, f1
/* 813AE834 | F0 01 80 18 */	psq_st f0, 0x18(r1), 1, qr0
/* 813AE838 | 4B FE 8D 6D */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813AE83C | EC 9B 06 F2 */	fmuls f4, f27, f27
/* 813AE840 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813AE844 | EC 1E 06 F2 */	fmuls f0, f30, f27
/* 813AE848 | C0 BD 00 38 */	lfs f5, 0x38(r29)
/* 813AE84C | C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 813AE850 | 7C 63 FA 14 */	add r3, r3, r31
/* 813AE854 | EC FB 01 32 */	fmuls f7, f27, f4
/* 813AE858 | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 813AE85C | EC C0 06 F2 */	fmuls f6, f0, f27
/* 813AE860 | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 813AE864 | EC 9C 01 32 */	fmuls f4, f28, f4
/* 813AE868 | C0 01 00 48 */	lfs f0, 0x48(r1)
/* 813AE86C | EC FC 01 F2 */	fmuls f7, f28, f7
/* 813AE870 | 38 81 00 40 */	addi r4, r1, 0x40
/* 813AE874 | EC DC 01 B2 */	fmuls f6, f28, f6
/* 813AE878 | EC FC 01 F2 */	fmuls f7, f28, f7
/* 813AE87C | EC C7 30 28 */	fsubs f6, f7, f6
/* 813AE880 | EC 87 20 28 */	fsubs f4, f7, f4
/* 813AE884 | EC DB 30 2A */	fadds f6, f27, f6
/* 813AE888 | EC 63 01 32 */	fmuls f3, f3, f4
/* 813AE88C | EC 85 01 B2 */	fmuls f4, f5, f6
/* 813AE890 | EC 64 18 2A */	fadds f3, f4, f3
/* 813AE894 | EC 42 18 2A */	fadds f2, f2, f3
/* 813AE898 | EC 21 18 2A */	fadds f1, f1, f3
/* 813AE89C | EC 00 18 2A */	fadds f0, f0, f3
/* 813AE8A0 | D0 41 00 40 */	stfs f2, 0x40(r1)
/* 813AE8A4 | D0 21 00 44 */	stfs f1, 0x44(r1)
/* 813AE8A8 | D0 01 00 48 */	stfs f0, 0x48(r1)
/* 813AE8AC | 4B F9 5D D9 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AE8B0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813AE8B4 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813AE8B8 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 813AE8BC | 3B FF 00 0C */	addi r31, r31, 0xc
/* 813AE8C0 | 41 80 FE C8 */	blt .L_813AE788
/* 813AE8C4 | 38 61 00 4C */	addi r3, r1, 0x4c
/* 813AE8C8 | 4B F8 7B 61 */	bl __ct__Q34nw4r2ut4RectFv
/* 813AE8CC | 38 61 00 4C */	addi r3, r1, 0x4c
/* 813AE8D0 | 4B F8 70 49 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813AE8D4 | C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 813AE8D8 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813AE8DC | C0 41 00 68 */	lfs f2, 0x68(r1)
/* 813AE8E0 | C0 21 00 60 */	lfs f1, 0x60(r1)
/* 813AE8E4 | EC 83 10 2A */	fadds f4, f3, f2
/* 813AE8E8 | C0 01 00 78 */	lfs f0, 0x78(r1)
/* 813AE8EC | C0 42 85 88 */	lfs f2, lbl_81694988@sda21(r0)
/* 813AE8F0 | EC 01 00 2A */	fadds f0, f1, f0
/* 813AE8F4 | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813AE8F8 | EC 24 00 B2 */	fmuls f1, f4, f2
/* 813AE8FC | EC 40 00 B2 */	fmuls f2, f0, f2
/* 813AE900 | 4B FB 41 5D */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813AE904 | 38 7B 00 D8 */	addi r3, r27, 0xd8
/* 813AE908 | 38 81 00 34 */	addi r4, r1, 0x34
/* 813AE90C | 4B F9 5D 79 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AE910 | C0 61 00 58 */	lfs f3, 0x58(r1)
/* 813AE914 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813AE918 | C0 41 00 50 */	lfs f2, 0x50(r1)
/* 813AE91C | C0 21 00 54 */	lfs f1, 0x54(r1)
/* 813AE920 | EC 83 10 28 */	fsubs f4, f3, f2
/* 813AE924 | C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 813AE928 | C0 61 00 68 */	lfs f3, 0x68(r1)
/* 813AE92C | EC A1 00 28 */	fsubs f5, f1, f0
/* 813AE930 | C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 813AE934 | C0 21 00 60 */	lfs f1, 0x60(r1)
/* 813AE938 | C0 01 00 78 */	lfs f0, 0x78(r1)
/* 813AE93C | EC 43 10 28 */	fsubs f2, f3, f2
/* 813AE940 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813AE944 | EC 25 10 24 */	fdivs f1, f5, f2
/* 813AE948 | EC 44 00 24 */	fdivs f2, f4, f0
/* 813AE94C | 4B F8 7C 1D */	bl __ct__Q33ipl4math4VEC2Fff
/* 813AE950 | 7C 64 1B 78 */	mr r4, r3
/* 813AE954 | 38 7B 00 E4 */	addi r3, r27, 0xe4
/* 813AE958 | 4B F8 7E 99 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 813AE95C | E3 E1 00 E8 */	psq_l f31, 0xe8(r1), 0, qr0
/* 813AE960 | CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 813AE964 | E3 C1 00 D8 */	psq_l f30, 0xd8(r1), 0, qr0
/* 813AE968 | CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 813AE96C | E3 A1 00 C8 */	psq_l f29, 0xc8(r1), 0, qr0
/* 813AE970 | CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 813AE974 | E3 81 00 B8 */	psq_l f28, 0xb8(r1), 0, qr0
/* 813AE978 | CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 813AE97C | E3 61 00 A8 */	psq_l f27, 0xa8(r1), 0, qr0
/* 813AE980 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813AE984 | CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 813AE988 | 48 24 AB 85 */	bl _restgpr_27
/* 813AE98C | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 813AE990 | 7C 08 03 A6 */	mtlr r0
/* 813AE994 | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 813AE998 | 4E 80 00 20 */	blr
.endfn setChanZoomOrtho__Q33ipl5scene13ChannelSelectFv

# .text:0x44D0 | 0x813AE99C | size: 0x78
# ipl::scene::ChannelSelect::isInChannelPaneNames(const char*) const
.fn isInChannelPaneNames__Q33ipl5scene13ChannelSelectCFPCc, global
/* 813AE99C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AE9A0 | 7C 08 02 A6 */	mflr r0
/* 813AE9A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AE9A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AE9AC | 48 24 AB 19 */	bl _savegpr_28
/* 813AE9B0 | 3F C0 81 65 */	lis r30, lbl_8164DAF4@ha
/* 813AE9B4 | 7C 9C 23 78 */	mr r28, r4
/* 813AE9B8 | 3B DE DA F4 */	addi r30, r30, lbl_8164DAF4@l
/* 813AE9BC | 3B A0 00 00 */	li r29, 0x0
/* 813AE9C0 | 3B E0 00 00 */	li r31, 0x0
.L_813AE9C4:
/* 813AE9C4 | 7C 9E FA 14 */	add r4, r30, r31
/* 813AE9C8 | 7F 83 E3 78 */	mr r3, r28
/* 813AE9CC | 80 84 00 60 */	lwz r4, 0x60(r4)
/* 813AE9D0 | 48 25 3A B1 */	bl strcmp
/* 813AE9D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AE9D8 | 41 82 00 14 */	beq .L_813AE9EC
/* 813AE9DC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813AE9E0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813AE9E4 | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813AE9E8 | 41 80 FF DC */	blt .L_813AE9C4
.L_813AE9EC:
/* 813AE9EC | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813AE9F0 | 38 60 FF FF */	li r3, -0x1
/* 813AE9F4 | 40 80 00 08 */	bge .L_813AE9FC
/* 813AE9F8 | 7F A3 EB 78 */	mr r3, r29
.L_813AE9FC:
/* 813AE9FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AEA00 | 48 24 AB 11 */	bl _restgpr_28
/* 813AEA04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AEA08 | 7C 08 03 A6 */	mtlr r0
/* 813AEA0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AEA10 | 4E 80 00 20 */	blr
.endfn isInChannelPaneNames__Q33ipl5scene13ChannelSelectCFPCc

# .text:0x4548 | 0x813AEA14 | size: 0x34
# ipl::scene::ChannelSelect::getFreeModuleExHeap()
.fn getFreeModuleExHeap__Q33ipl5scene13ChannelSelectFv, global
/* 813AEA14 | 38 00 00 31 */	li r0, 0x31
/* 813AEA18 | 38 A0 00 00 */	li r5, 0x0
/* 813AEA1C | 7C 09 03 A6 */	mtctr r0
.L_813AEA20:
/* 813AEA20 | 7C 83 2A 14 */	add r4, r3, r5
/* 813AEA24 | 88 04 02 5C */	lbz r0, 0x25c(r4)
/* 813AEA28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AEA2C | 41 82 00 0C */	beq .L_813AEA38
/* 813AEA30 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813AEA34 | 42 00 FF EC */	bdnz .L_813AEA20
.L_813AEA38:
/* 813AEA38 | 54 A0 10 3A */	slwi r0, r5, 2
/* 813AEA3C | 7C 63 02 14 */	add r3, r3, r0
/* 813AEA40 | 80 63 01 98 */	lwz r3, 0x198(r3)
/* 813AEA44 | 4E 80 00 20 */	blr
.endfn getFreeModuleExHeap__Q33ipl5scene13ChannelSelectFv

# .text:0x457C | 0x813AEA48 | size: 0xB0
# ipl::scene::ChannelSelect::updateModuleExHeap(EGG::ExpHeap*, EGG::ExpHeap*)
.fn updateModuleExHeap__Q33ipl5scene13ChannelSelectFPQ23EGG7ExpHeapPQ23EGG7ExpHeap, global
/* 813AEA48 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813AEA4C | 7C 08 02 A6 */	mflr r0
/* 813AEA50 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813AEA54 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813AEA58 | 48 24 AA 61 */	bl _savegpr_25
/* 813AEA5C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813AEA60 | 7C 79 1B 78 */	mr r25, r3
/* 813AEA64 | 7C 9A 23 78 */	mr r26, r4
/* 813AEA68 | 7C BB 2B 78 */	mr r27, r5
/* 813AEA6C | 40 82 00 0C */	bne .L_813AEA78
/* 813AEA70 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813AEA74 | 41 82 00 6C */	beq .L_813AEAE0
.L_813AEA78:
/* 813AEA78 | 3B 80 00 00 */	li r28, 0x0
/* 813AEA7C | 3B E0 00 00 */	li r31, 0x0
/* 813AEA80 | 7F 9D E3 78 */	mr r29, r28
/* 813AEA84 | 3B C0 00 01 */	li r30, 0x1
.L_813AEA88:
/* 813AEA88 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813AEA8C | 41 82 00 24 */	beq .L_813AEAB0
/* 813AEA90 | 7C 79 FA 14 */	add r3, r25, r31
/* 813AEA94 | 80 03 01 98 */	lwz r0, 0x198(r3)
/* 813AEA98 | 7C 00 D0 40 */	cmplw r0, r26
/* 813AEA9C | 40 82 00 14 */	bne .L_813AEAB0
/* 813AEAA0 | 7C 99 E2 14 */	add r4, r25, r28
/* 813AEAA4 | 7F 43 D3 78 */	mr r3, r26
/* 813AEAA8 | 9B A4 02 5C */	stb r29, 0x25c(r4)
/* 813AEAAC | 48 24 8D B1 */	bl fn_815F785C
.L_813AEAB0:
/* 813AEAB0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813AEAB4 | 41 82 00 1C */	beq .L_813AEAD0
/* 813AEAB8 | 7C 79 FA 14 */	add r3, r25, r31
/* 813AEABC | 80 03 01 98 */	lwz r0, 0x198(r3)
/* 813AEAC0 | 7C 00 D8 40 */	cmplw r0, r27
/* 813AEAC4 | 40 82 00 0C */	bne .L_813AEAD0
/* 813AEAC8 | 7C 79 E2 14 */	add r3, r25, r28
/* 813AEACC | 9B C3 02 5C */	stb r30, 0x25c(r3)
.L_813AEAD0:
/* 813AEAD0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813AEAD4 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813AEAD8 | 2C 1C 00 31 */	cmpwi r28, 0x31
/* 813AEADC | 41 80 FF AC */	blt .L_813AEA88
.L_813AEAE0:
/* 813AEAE0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813AEAE4 | 48 24 AA 21 */	bl _restgpr_25
/* 813AEAE8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813AEAEC | 7C 08 03 A6 */	mtlr r0
/* 813AEAF0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813AEAF4 | 4E 80 00 20 */	blr
.endfn updateModuleExHeap__Q33ipl5scene13ChannelSelectFPQ23EGG7ExpHeapPQ23EGG7ExpHeap

# .text:0x462C | 0x813AEAF8 | size: 0x28
# ipl::scene::ChannelSelect::restartChannelModules()
.fn restartChannelModules__Q33ipl5scene13ChannelSelectFv, global
/* 813AEAF8 | 88 03 01 84 */	lbz r0, 0x184(r3)
/* 813AEAFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AEB00 | 40 82 00 0C */	bne .L_813AEB0C
/* 813AEB04 | 38 00 00 01 */	li r0, 0x1
/* 813AEB08 | 90 03 01 80 */	stw r0, 0x180(r3)
.L_813AEB0C:
/* 813AEB0C | 38 80 00 00 */	li r4, 0x0
/* 813AEB10 | 38 00 00 01 */	li r0, 0x1
/* 813AEB14 | 98 83 01 84 */	stb r4, 0x184(r3)
/* 813AEB18 | 98 03 01 85 */	stb r0, 0x185(r3)
/* 813AEB1C | 4E 80 00 20 */	blr
.endfn restartChannelModules__Q33ipl5scene13ChannelSelectFv

# .text:0x4654 | 0x813AEB20 | size: 0x2F0
# ipl::scene::ChannelSelect::createChanMoveLayout()
.fn createChanMoveLayout__Q33ipl5scene13ChannelSelectFv, global
/* 813AEB20 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813AEB24 | 7C 08 02 A6 */	mflr r0
/* 813AEB28 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813AEB2C | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813AEB30 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813AEB34 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813AEB38 | 48 24 A9 91 */	bl _savegpr_29
/* 813AEB3C | 3F C0 81 65 */	lis r30, lbl_8164D978@ha
/* 813AEB40 | 7C 7F 1B 78 */	mr r31, r3
/* 813AEB44 | 3B DE D9 78 */	addi r30, r30, lbl_8164D978@l
/* 813AEB48 | 38 60 05 80 */	li r3, 0x580
/* 813AEB4C | 48 24 95 51 */	bl __nw__FUl
/* 813AEB50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEB54 | 41 82 00 18 */	beq .L_813AEB6C
/* 813AEB58 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813AEB5C | 38 FE 05 51 */	addi r7, r30, 0x551
/* 813AEB60 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813AEB64 | 38 CD 88 9C */	li r6, lbl_816968DC@sda21
/* 813AEB68 | 4B FB B4 BD */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813AEB6C:
/* 813AEB6C | 90 7F 02 C4 */	stw r3, 0x2c4(r31)
/* 813AEB70 | 38 9E 05 63 */	addi r4, r30, 0x563
/* 813AEB74 | 38 A0 00 01 */	li r5, 0x1
/* 813AEB78 | 4B FB B7 F5 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813AEB7C | 90 7F 02 C8 */	stw r3, 0x2c8(r31)
/* 813AEB80 | 4B F8 6E 5D */	bl getRndm__Q23ipl6SystemFv
/* 813AEB84 | 48 00 02 8D */	bl get_u16__Q33ipl4math6RandomFv
/* 813AEB88 | 54 66 04 3E */	clrlwi r6, r3, 16
/* 813AEB8C | 38 A0 07 D0 */	li r5, 0x7d0
/* 813AEB90 | 7C 86 2B D6 */	divw r4, r6, r5
/* 813AEB94 | 3C 00 43 30 */	lis r0, 0x4330
/* 813AEB98 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813AEB9C | 83 BF 02 C8 */	lwz r29, 0x2c8(r31)
/* 813AEBA0 | C8 22 85 98 */	lfd f1, lbl_81694998@sda21(r0)
/* 813AEBA4 | 7F A3 EB 78 */	mr r3, r29
/* 813AEBA8 | 7C 04 29 D6 */	mullw r0, r4, r5
/* 813AEBAC | 7C 00 30 50 */	subf r0, r0, r6
/* 813AEBB0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813AEBB4 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813AEBB8 | C8 01 00 28 */	lfd f0, 0x28(r1)
/* 813AEBBC | EF E0 08 28 */	fsubs f31, f0, f1
/* 813AEBC0 | 4B FB 3C B1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AEBC4 | 38 00 00 01 */	li r0, 0x1
/* 813AEBC8 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813AEBCC | 80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 813AEBD0 | 4B FB BA 65 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813AEBD4 | 80 9F 02 C8 */	lwz r4, 0x2c8(r31)
/* 813AEBD8 | 38 60 05 80 */	li r3, 0x580
/* 813AEBDC | D3 E4 00 0C */	stfs f31, 0xc(r4)
/* 813AEBE0 | 48 24 94 BD */	bl __nw__FUl
/* 813AEBE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEBE8 | 41 82 00 18 */	beq .L_813AEC00
/* 813AEBEC | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813AEBF0 | 38 FE 05 75 */	addi r7, r30, 0x575
/* 813AEBF4 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813AEBF8 | 38 CD 88 9C */	li r6, lbl_816968DC@sda21
/* 813AEBFC | 4B FB B4 29 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813AEC00:
/* 813AEC00 | 90 7F 00 AC */	stw r3, 0xac(r31)
/* 813AEC04 | 38 9E 05 87 */	addi r4, r30, 0x587
/* 813AEC08 | 38 BE 05 9F */	addi r5, r30, 0x59f
/* 813AEC0C | 38 C0 00 00 */	li r6, 0x0
/* 813AEC10 | 38 E0 00 01 */	li r7, 0x1
/* 813AEC14 | 4B FB B7 69 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813AEC18 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813AEC1C | 38 9E 05 AA */	addi r4, r30, 0x5aa
/* 813AEC20 | 38 BE 05 9F */	addi r5, r30, 0x59f
/* 813AEC24 | 38 C0 00 00 */	li r6, 0x0
/* 813AEC28 | 38 E0 00 00 */	li r7, 0x0
/* 813AEC2C | 4B FB B7 51 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813AEC30 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813AEC34 | 4B FB BA 01 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813AEC38 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813AEC3C | 38 80 00 00 */	li r4, 0x0
/* 813AEC40 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AEC44 | 48 16 36 D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AEC48 | 4B FB AF DD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813AEC4C | 38 60 05 80 */	li r3, 0x580
/* 813AEC50 | 48 24 94 4D */	bl __nw__FUl
/* 813AEC54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEC58 | 41 82 00 18 */	beq .L_813AEC70
/* 813AEC5C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813AEC60 | 38 FE 05 C1 */	addi r7, r30, 0x5c1
/* 813AEC64 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813AEC68 | 38 CD 88 9C */	li r6, lbl_816968DC@sda21
/* 813AEC6C | 4B FB B3 B9 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813AEC70:
/* 813AEC70 | 90 7F 00 B0 */	stw r3, 0xb0(r31)
/* 813AEC74 | 38 9E 05 D4 */	addi r4, r30, 0x5d4
/* 813AEC78 | 38 AD 88 B5 */	li r5, lbl_816968F5@sda21
/* 813AEC7C | 38 C0 00 01 */	li r6, 0x1
/* 813AEC80 | 38 E0 00 01 */	li r7, 0x1
/* 813AEC84 | 4B FB B6 F9 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813AEC88 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AEC8C | 38 9E 05 ED */	addi r4, r30, 0x5ed
/* 813AEC90 | 38 AD 88 B5 */	li r5, lbl_816968F5@sda21
/* 813AEC94 | 38 C0 00 01 */	li r6, 0x1
/* 813AEC98 | 38 E0 00 00 */	li r7, 0x0
/* 813AEC9C | 4B FB B6 E1 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813AECA0 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AECA4 | 4B FB B9 91 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813AECA8 | 48 1B B3 0D */	bl SCGetAspectRatio
/* 813AECAC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813AECB0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813AECB4 | 40 82 00 B8 */	bne .L_813AED6C
/* 813AECB8 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AECBC | 38 8D 88 A8 */	li r4, lbl_816968E8@sda21
/* 813AECC0 | 38 A0 00 01 */	li r5, 0x1
/* 813AECC4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AECC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AECCC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AECD0 | 7D 89 03 A6 */	mtctr r12
/* 813AECD4 | 4E 80 04 21 */	bctrl
/* 813AECD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AECDC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813AECE0 | 7D 89 03 A6 */	mtctr r12
/* 813AECE4 | 4E 80 04 21 */	bctrl
/* 813AECE8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AECEC | 38 A0 00 00 */	li r5, 0x0
/* 813AECF0 | 48 17 90 3D */	bl fn_81527D2C
/* 813AECF4 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AECF8 | 38 8D 88 B5 */	li r4, lbl_816968F5@sda21
/* 813AECFC | 38 A0 00 01 */	li r5, 0x1
/* 813AED00 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AED04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AED08 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AED0C | 7D 89 03 A6 */	mtctr r12
/* 813AED10 | 4E 80 04 21 */	bctrl
/* 813AED14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AED18 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813AED1C | 7D 89 03 A6 */	mtctr r12
/* 813AED20 | 4E 80 04 21 */	bctrl
/* 813AED24 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813AED28 | 38 80 00 00 */	li r4, 0x0
/* 813AED2C | 48 17 90 F1 */	bl fn_81527E1C
/* 813AED30 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AED34 | 38 9E 06 05 */	addi r4, r30, 0x605
/* 813AED38 | 38 A0 00 01 */	li r5, 0x1
/* 813AED3C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AED40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AED44 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813AED48 | 7D 89 03 A6 */	mtctr r12
/* 813AED4C | 4E 80 04 21 */	bctrl
/* 813AED50 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AED54 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813AED58 | 7D 89 03 A6 */	mtctr r12
/* 813AED5C | 4E 80 04 21 */	bctrl
/* 813AED60 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813AED64 | 38 80 00 00 */	li r4, 0x0
/* 813AED68 | 48 17 90 B5 */	bl fn_81527E1C
.L_813AED6C:
/* 813AED6C | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AED70 | 38 80 00 00 */	li r4, 0x0
/* 813AED74 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AED78 | 48 16 35 A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AED7C | 4B FB AE A9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813AED80 | 38 60 05 80 */	li r3, 0x580
/* 813AED84 | 48 24 93 19 */	bl __nw__FUl
/* 813AED88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AED8C | 41 82 00 18 */	beq .L_813AEDA4
/* 813AED90 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813AED94 | 38 FE 06 0F */	addi r7, r30, 0x60f
/* 813AED98 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813AED9C | 38 CD 88 9C */	li r6, lbl_816968DC@sda21
/* 813AEDA0 | 4B FB B2 85 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813AEDA4:
/* 813AEDA4 | 90 7F 00 B4 */	stw r3, 0xb4(r31)
/* 813AEDA8 | 38 9E 06 22 */	addi r4, r30, 0x622
/* 813AEDAC | 38 BE 05 9F */	addi r5, r30, 0x59f
/* 813AEDB0 | 38 C0 00 00 */	li r6, 0x0
/* 813AEDB4 | 38 E0 00 01 */	li r7, 0x1
/* 813AEDB8 | 4B FB B5 C5 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813AEDBC | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813AEDC0 | 38 9E 06 3B */	addi r4, r30, 0x63b
/* 813AEDC4 | 38 BE 05 9F */	addi r5, r30, 0x59f
/* 813AEDC8 | 38 C0 00 00 */	li r6, 0x0
/* 813AEDCC | 38 E0 00 00 */	li r7, 0x0
/* 813AEDD0 | 4B FB B5 AD */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813AEDD4 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813AEDD8 | 4B FB B8 5D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813AEDDC | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813AEDE0 | 38 80 00 00 */	li r4, 0x0
/* 813AEDE4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AEDE8 | 48 16 35 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AEDEC | 4B FB AE 39 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813AEDF0 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813AEDF4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813AEDF8 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813AEDFC | 48 24 A7 19 */	bl _restgpr_29
/* 813AEE00 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813AEE04 | 7C 08 03 A6 */	mtlr r0
/* 813AEE08 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813AEE0C | 4E 80 00 20 */	blr
.endfn createChanMoveLayout__Q33ipl5scene13ChannelSelectFv

# .text:0x4944 | 0x813AEE10 | size: 0x24
# ipl::math::Random::get_u16()
.fn get_u16__Q33ipl4math6RandomFv, weak
/* 813AEE10 | 3C 80 00 19 */	lis r4, 0x19
/* 813AEE14 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813AEE18 | 38 04 66 0D */	addi r0, r4, 0x660d
/* 813AEE1C | 7C 85 01 D6 */	mullw r4, r5, r0
/* 813AEE20 | 3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 813AEE24 | 38 04 F3 5F */	subi r0, r4, 0xca1
/* 813AEE28 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813AEE2C | 54 03 84 3E */	srwi r3, r0, 16
/* 813AEE30 | 4E 80 00 20 */	blr
.endfn get_u16__Q33ipl4math6RandomFv

# .text:0x4968 | 0x813AEE34 | size: 0x124
# ipl::scene::ChannelSelect::calcNormalGrab()
.fn calcNormalGrab__Q33ipl5scene13ChannelSelectFv, global
/* 813AEE34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AEE38 | 7C 08 02 A6 */	mflr r0
/* 813AEE3C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813AEE40 | 38 80 00 05 */	li r4, 0x5
/* 813AEE44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AEE48 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813AEE4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AEE50 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AEE54 | 7C 7E 1B 78 */	mr r30, r3
/* 813AEE58 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813AEE5C | 48 05 C2 DD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AEE60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEE64 | 7C 7F 1B 78 */	mr r31, r3
/* 813AEE68 | 41 82 00 18 */	beq .L_813AEE80
/* 813AEE6C | 4B FE DA A9 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 813AEE70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEE74 | 41 82 00 0C */	beq .L_813AEE80
/* 813AEE78 | 7F E3 FB 78 */	mr r3, r31
/* 813AEE7C | 4B FE D6 F1 */	bl update__Q33ipl5scene6ButtonFv
.L_813AEE80:
/* 813AEE80 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813AEE84 | 4B FB C1 09 */	bl update__Q33ipl3gui11PaneManagerFv
/* 813AEE88 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813AEE8C | 80 9E 02 98 */	lwz r4, 0x298(r30)
/* 813AEE90 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813AEE94 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AEE98 | 4B F8 89 F1 */	bl getController__Q33ipl10controller7ManagerFi
/* 813AEE9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEEA0 | 41 82 00 28 */	beq .L_813AEEC8
/* 813AEEA4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AEEA8 | 80 9E 02 98 */	lwz r4, 0x298(r30)
/* 813AEEAC | 4B F8 89 DD */	bl getController__Q33ipl10controller7ManagerFi
/* 813AEEB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AEEB4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813AEEB8 | 7D 89 03 A6 */	mtctr r12
/* 813AEEBC | 4E 80 04 21 */	bctrl
/* 813AEEC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEEC4 | 40 82 00 0C */	bne .L_813AEED0
.L_813AEEC8:
/* 813AEEC8 | 38 00 00 01 */	li r0, 0x1
/* 813AEECC | 98 1E 02 B8 */	stb r0, 0x2b8(r30)
.L_813AEED0:
/* 813AEED0 | 80 7E 02 B0 */	lwz r3, 0x2b0(r30)
/* 813AEED4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEED8 | 41 80 00 0C */	blt .L_813AEEE4
/* 813AEEDC | 38 03 00 01 */	addi r0, r3, 0x1
/* 813AEEE0 | 90 1E 02 B0 */	stw r0, 0x2b0(r30)
.L_813AEEE4:
/* 813AEEE4 | 80 7E 02 AC */	lwz r3, 0x2ac(r30)
/* 813AEEE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEEEC | 41 80 00 0C */	blt .L_813AEEF8
/* 813AEEF0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813AEEF4 | 90 1E 02 AC */	stw r0, 0x2ac(r30)
.L_813AEEF8:
/* 813AEEF8 | 7F C3 F3 78 */	mr r3, r30
/* 813AEEFC | 48 00 11 59 */	bl moveDrag__Q33ipl5scene13ChannelSelectFv
/* 813AEF00 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813AEF04 | 38 80 00 00 */	li r4, 0x0
/* 813AEF08 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AEF0C | 48 16 34 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AEF10 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AEF14 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AEF18 | 41 82 00 28 */	beq .L_813AEF40
/* 813AEF1C | 80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 813AEF20 | 38 80 00 00 */	li r4, 0x0
/* 813AEF24 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AEF28 | 48 16 33 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AEF2C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AEF30 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AEF34 | 41 82 00 0C */	beq .L_813AEF40
/* 813AEF38 | 38 00 00 13 */	li r0, 0x13
/* 813AEF3C | 90 1E 00 C0 */	stw r0, 0xc0(r30)
.L_813AEF40:
/* 813AEF40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AEF44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AEF48 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AEF4C | 7C 08 03 A6 */	mtlr r0
/* 813AEF50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AEF54 | 4E 80 00 20 */	blr
.endfn calcNormalGrab__Q33ipl5scene13ChannelSelectFv

# .text:0x4A8C | 0x813AEF58 | size: 0x338
# ipl::scene::ChannelSelect::calcNormalDrag()
.fn calcNormalDrag__Q33ipl5scene13ChannelSelectFv, global
/* 813AEF58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AEF5C | 7C 08 02 A6 */	mflr r0
/* 813AEF60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AEF64 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AEF68 | 48 24 A5 61 */	bl _savegpr_29
/* 813AEF6C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813AEF70 | 7C 7E 1B 78 */	mr r30, r3
/* 813AEF74 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813AEF78 | 38 80 00 05 */	li r4, 0x5
/* 813AEF7C | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813AEF80 | 48 05 C1 B9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AEF84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEF88 | 7C 7F 1B 78 */	mr r31, r3
/* 813AEF8C | 41 82 00 18 */	beq .L_813AEFA4
/* 813AEF90 | 4B FE D9 85 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 813AEF94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEF98 | 41 82 00 0C */	beq .L_813AEFA4
/* 813AEF9C | 7F E3 FB 78 */	mr r3, r31
/* 813AEFA0 | 4B FE D5 CD */	bl update__Q33ipl5scene6ButtonFv
.L_813AEFA4:
/* 813AEFA4 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813AEFA8 | 4B FB BF E5 */	bl update__Q33ipl3gui11PaneManagerFv
/* 813AEFAC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813AEFB0 | 80 9E 02 98 */	lwz r4, 0x298(r30)
/* 813AEFB4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813AEFB8 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813AEFBC | 4B F8 88 CD */	bl getController__Q33ipl10controller7ManagerFi
/* 813AEFC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEFC4 | 41 82 00 28 */	beq .L_813AEFEC
/* 813AEFC8 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813AEFCC | 80 9E 02 98 */	lwz r4, 0x298(r30)
/* 813AEFD0 | 4B F8 88 B9 */	bl getController__Q33ipl10controller7ManagerFi
/* 813AEFD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AEFD8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813AEFDC | 7D 89 03 A6 */	mtctr r12
/* 813AEFE0 | 4E 80 04 21 */	bctrl
/* 813AEFE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEFE8 | 40 82 00 0C */	bne .L_813AEFF4
.L_813AEFEC:
/* 813AEFEC | 38 00 00 01 */	li r0, 0x1
/* 813AEFF0 | 98 1E 02 B8 */	stb r0, 0x2b8(r30)
.L_813AEFF4:
/* 813AEFF4 | 80 7E 02 B0 */	lwz r3, 0x2b0(r30)
/* 813AEFF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AEFFC | 41 80 00 0C */	blt .L_813AF008
/* 813AF000 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813AF004 | 90 1E 02 B0 */	stw r0, 0x2b0(r30)
.L_813AF008:
/* 813AF008 | 80 7E 02 AC */	lwz r3, 0x2ac(r30)
/* 813AF00C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF010 | 41 80 00 0C */	blt .L_813AF01C
/* 813AF014 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813AF018 | 90 1E 02 AC */	stw r0, 0x2ac(r30)
.L_813AF01C:
/* 813AF01C | 7F C3 F3 78 */	mr r3, r30
/* 813AF020 | 48 00 10 35 */	bl moveDrag__Q33ipl5scene13ChannelSelectFv
/* 813AF024 | 88 1E 02 B8 */	lbz r0, 0x2b8(r30)
/* 813AF028 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AF02C | 41 82 00 10 */	beq .L_813AF03C
/* 813AF030 | 7F C3 F3 78 */	mr r3, r30
/* 813AF034 | 48 00 0D F9 */	bl finishDrag__Q33ipl5scene13ChannelSelectFv
/* 813AF038 | 48 00 02 40 */	b .L_813AF278
.L_813AF03C:
/* 813AF03C | 80 9E 00 C8 */	lwz r4, 0xc8(r30)
/* 813AF040 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813AF044 | 40 81 01 14 */	ble .L_813AF158
/* 813AF048 | 80 1E 02 B0 */	lwz r0, 0x2b0(r30)
/* 813AF04C | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813AF050 | 41 80 01 08 */	blt .L_813AF158
/* 813AF054 | 7F C3 F3 78 */	mr r3, r30
/* 813AF058 | 4B FF E7 C5 */	bl isPageCreatedAllDone__Q33ipl5scene13ChannelSelectCFi
/* 813AF05C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF060 | 41 82 00 F8 */	beq .L_813AF158
/* 813AF064 | 88 1E 01 85 */	lbz r0, 0x185(r30)
/* 813AF068 | 38 60 00 00 */	li r3, 0x0
/* 813AF06C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AF070 | 41 82 00 10 */	beq .L_813AF080
/* 813AF074 | 80 1E 01 80 */	lwz r0, 0x180(r30)
/* 813AF078 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813AF07C | 40 82 00 08 */	bne .L_813AF084
.L_813AF080:
/* 813AF080 | 38 60 00 01 */	li r3, 0x1
.L_813AF084:
/* 813AF084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF088 | 41 82 00 D0 */	beq .L_813AF158
/* 813AF08C | 7F E3 FB 78 */	mr r3, r31
/* 813AF090 | 38 80 00 14 */	li r4, 0x14
/* 813AF094 | 4B FE DA C5 */	bl iplButton_8139CB58
/* 813AF098 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF09C | 38 80 FF FF */	li r4, -0x1
/* 813AF0A0 | C0 22 85 48 */	lfs f1, lbl_81694948@sda21(r0)
/* 813AF0A4 | 4B FB B9 4D */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813AF0A8 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF0AC | 38 80 FF FF */	li r4, -0x1
/* 813AF0B0 | C0 22 85 68 */	lfs f1, lbl_81694968@sda21(r0)
/* 813AF0B4 | 4B FB B8 CD */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813AF0B8 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF0BC | 38 80 00 00 */	li r4, 0x0
/* 813AF0C0 | 38 A0 FF FF */	li r5, -0x1
/* 813AF0C4 | 4B FB B9 9D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813AF0C8 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF0CC | 38 80 FF FF */	li r4, -0x1
/* 813AF0D0 | 4B FB B8 29 */	bl start__Q33ipl6layout6ObjectFi
/* 813AF0D4 | 38 80 00 19 */	li r4, 0x19
/* 813AF0D8 | 38 60 00 00 */	li r3, 0x0
/* 813AF0DC | 38 00 FF FF */	li r0, -0x1
/* 813AF0E0 | 90 9E 00 C0 */	stw r4, 0xc0(r30)
/* 813AF0E4 | 3B A0 00 00 */	li r29, 0x0
/* 813AF0E8 | 90 7E 02 B0 */	stw r3, 0x2b0(r30)
/* 813AF0EC | 90 1E 02 AC */	stw r0, 0x2ac(r30)
/* 813AF0F0 | 48 00 00 10 */	b .L_813AF100
.L_813AF0F4:
/* 813AF0F4 | 7F A3 EB 78 */	mr r3, r29
/* 813AF0F8 | 38 80 00 01 */	li r4, 0x1
/* 813AF0FC | 48 00 33 1D */	bl initCursorAnim__Q33ipl5scene10ChannelObjFb
.L_813AF100:
/* 813AF100 | 7F A4 EB 78 */	mr r4, r29
/* 813AF104 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813AF108 | 48 16 31 D5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AF10C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF110 | 7C 7D 1B 78 */	mr r29, r3
/* 813AF114 | 40 82 FF E0 */	bne .L_813AF0F4
/* 813AF118 | 3B A0 00 00 */	li r29, 0x0
.L_813AF11C:
/* 813AF11C | 7F C3 F3 78 */	mr r3, r30
/* 813AF120 | 7F A4 EB 78 */	mr r4, r29
/* 813AF124 | 4B FF EE 25 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectFi
/* 813AF128 | 7C 64 1B 78 */	mr r4, r3
/* 813AF12C | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813AF130 | 4B FB C0 E9 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813AF134 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813AF138 | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813AF13C | 41 80 FF E0 */	blt .L_813AF11C
/* 813AF140 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813AF144 | 3C 80 81 65 */	lis r4, lbl_8164DE9C@ha
/* 813AF148 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813AF14C | 38 84 DE 9C */	addi r4, r4, lbl_8164DE9C@l
/* 813AF150 | 4B FB C3 1D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813AF154 | 48 00 01 24 */	b .L_813AF278
.L_813AF158:
/* 813AF158 | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813AF15C | 80 9E 00 C8 */	lwz r4, 0xc8(r30)
/* 813AF160 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813AF164 | 7C 04 00 00 */	cmpw r4, r0
/* 813AF168 | 40 80 01 10 */	bge .L_813AF278
/* 813AF16C | 80 1E 02 AC */	lwz r0, 0x2ac(r30)
/* 813AF170 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813AF174 | 41 80 01 04 */	blt .L_813AF278
/* 813AF178 | 7F C3 F3 78 */	mr r3, r30
/* 813AF17C | 4B FF E6 A1 */	bl isPageCreatedAllDone__Q33ipl5scene13ChannelSelectCFi
/* 813AF180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF184 | 41 82 00 F4 */	beq .L_813AF278
/* 813AF188 | 88 1E 01 85 */	lbz r0, 0x185(r30)
/* 813AF18C | 38 60 00 00 */	li r3, 0x0
/* 813AF190 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AF194 | 41 82 00 10 */	beq .L_813AF1A4
/* 813AF198 | 80 1E 01 80 */	lwz r0, 0x180(r30)
/* 813AF19C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813AF1A0 | 40 82 00 08 */	bne .L_813AF1A8
.L_813AF1A4:
/* 813AF1A4 | 38 60 00 01 */	li r3, 0x1
.L_813AF1A8:
/* 813AF1A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF1AC | 41 82 00 CC */	beq .L_813AF278
/* 813AF1B0 | 7F E3 FB 78 */	mr r3, r31
/* 813AF1B4 | 38 80 00 13 */	li r4, 0x13
/* 813AF1B8 | 4B FE D9 A1 */	bl iplButton_8139CB58
/* 813AF1BC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF1C0 | 38 80 FF FF */	li r4, -0x1
/* 813AF1C4 | C0 22 85 6C */	lfs f1, lbl_8169496C@sda21(r0)
/* 813AF1C8 | 4B FB B8 29 */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813AF1CC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF1D0 | 38 80 FF FF */	li r4, -0x1
/* 813AF1D4 | C0 22 85 70 */	lfs f1, lbl_81694970@sda21(r0)
/* 813AF1D8 | 4B FB B7 A9 */	bl setMaxFrame__Q33ipl6layout6ObjectFfi
/* 813AF1DC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF1E0 | 38 80 00 00 */	li r4, 0x0
/* 813AF1E4 | 38 A0 FF FF */	li r5, -0x1
/* 813AF1E8 | 4B FB B8 79 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813AF1EC | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF1F0 | 38 80 FF FF */	li r4, -0x1
/* 813AF1F4 | 4B FB B7 05 */	bl start__Q33ipl6layout6ObjectFi
/* 813AF1F8 | 38 80 00 1A */	li r4, 0x1a
/* 813AF1FC | 38 60 FF FF */	li r3, -0x1
/* 813AF200 | 38 00 00 00 */	li r0, 0x0
/* 813AF204 | 90 9E 00 C0 */	stw r4, 0xc0(r30)
/* 813AF208 | 3B A0 00 00 */	li r29, 0x0
/* 813AF20C | 90 7E 02 B0 */	stw r3, 0x2b0(r30)
/* 813AF210 | 90 1E 02 AC */	stw r0, 0x2ac(r30)
/* 813AF214 | 48 00 00 10 */	b .L_813AF224
.L_813AF218:
/* 813AF218 | 7F A3 EB 78 */	mr r3, r29
/* 813AF21C | 38 80 00 01 */	li r4, 0x1
/* 813AF220 | 48 00 31 F9 */	bl initCursorAnim__Q33ipl5scene10ChannelObjFb
.L_813AF224:
/* 813AF224 | 7F A4 EB 78 */	mr r4, r29
/* 813AF228 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813AF22C | 48 16 30 B1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AF230 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF234 | 7C 7D 1B 78 */	mr r29, r3
/* 813AF238 | 40 82 FF E0 */	bne .L_813AF218
/* 813AF23C | 3B A0 00 00 */	li r29, 0x0
.L_813AF240:
/* 813AF240 | 7F C3 F3 78 */	mr r3, r30
/* 813AF244 | 7F A4 EB 78 */	mr r4, r29
/* 813AF248 | 4B FF ED 01 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectFi
/* 813AF24C | 7C 64 1B 78 */	mr r4, r3
/* 813AF250 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 813AF254 | 4B FB BF C5 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813AF258 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813AF25C | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813AF260 | 41 80 FF E0 */	blt .L_813AF240
/* 813AF264 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813AF268 | 3C 80 81 65 */	lis r4, lbl_8164DE9C@ha
/* 813AF26C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813AF270 | 38 84 DE 9C */	addi r4, r4, lbl_8164DE9C@l
/* 813AF274 | 4B FB C1 F9 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813AF278:
/* 813AF278 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AF27C | 48 24 A2 99 */	bl _restgpr_29
/* 813AF280 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AF284 | 7C 08 03 A6 */	mtlr r0
/* 813AF288 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AF28C | 4E 80 00 20 */	blr
.endfn calcNormalDrag__Q33ipl5scene13ChannelSelectFv

# .text:0x4DC4 | 0x813AF290 | size: 0x6C
# ipl::scene::ChannelSelect::calcNormalReleaseWait()
.fn calcNormalReleaseWait__Q33ipl5scene13ChannelSelectFv, global
/* 813AF290 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AF294 | 7C 08 02 A6 */	mflr r0
/* 813AF298 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AF29C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AF2A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AF2A4 | 7C 7E 1B 78 */	mr r30, r3
/* 813AF2A8 | 80 83 02 B4 */	lwz r4, 0x2b4(r3)
/* 813AF2AC | 38 04 00 01 */	addi r0, r4, 0x1
/* 813AF2B0 | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813AF2B4 | 90 03 02 B4 */	stw r0, 0x2b4(r3)
/* 813AF2B8 | 40 81 00 2C */	ble .L_813AF2E4
/* 813AF2BC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813AF2C0 | 38 80 00 01 */	li r4, 0x1
/* 813AF2C4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AF2C8 | 48 16 30 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AF2CC | 7C 7F 1B 78 */	mr r31, r3
/* 813AF2D0 | 4B FB 35 A1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AF2D4 | 38 60 00 01 */	li r3, 0x1
/* 813AF2D8 | 38 00 00 15 */	li r0, 0x15
/* 813AF2DC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813AF2E0 | 90 1E 00 C0 */	stw r0, 0xc0(r30)
.L_813AF2E4:
/* 813AF2E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AF2E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AF2EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AF2F0 | 7C 08 03 A6 */	mtlr r0
/* 813AF2F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AF2F8 | 4E 80 00 20 */	blr
.endfn calcNormalReleaseWait__Q33ipl5scene13ChannelSelectFv

# .text:0x4E30 | 0x813AF2FC | size: 0x70
# ipl::scene::ChannelSelect::calcNormalRelease()
.fn calcNormalRelease__Q33ipl5scene13ChannelSelectFv, global
/* 813AF2FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AF300 | 7C 08 02 A6 */	mflr r0
/* 813AF304 | 38 80 00 01 */	li r4, 0x1
/* 813AF308 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AF30C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AF310 | 7C 7F 1B 78 */	mr r31, r3
/* 813AF314 | 80 A3 00 AC */	lwz r5, 0xac(r3)
/* 813AF318 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813AF31C | 48 16 2F FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AF320 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AF324 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AF328 | 41 82 00 30 */	beq .L_813AF358
/* 813AF32C | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AF330 | 38 80 00 01 */	li r4, 0x1
/* 813AF334 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AF338 | 48 16 2F E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AF33C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AF340 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AF344 | 41 82 00 14 */	beq .L_813AF358
/* 813AF348 | 7F E3 FB 78 */	mr r3, r31
/* 813AF34C | 4B FF F7 AD */	bl restartChannelModules__Q33ipl5scene13ChannelSelectFv
/* 813AF350 | 38 00 00 01 */	li r0, 0x1
/* 813AF354 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_813AF358:
/* 813AF358 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AF35C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AF360 | 7C 08 03 A6 */	mtlr r0
/* 813AF364 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AF368 | 4E 80 00 20 */	blr
.endfn calcNormalRelease__Q33ipl5scene13ChannelSelectFv

# .text:0x4EA0 | 0x813AF36C | size: 0x1E4
# ipl::scene::ChannelSelect::calcNormalMoveChanIn()
.fn calcNormalMoveChanIn__Q33ipl5scene13ChannelSelectFv, global
/* 813AF36C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AF370 | 7C 08 02 A6 */	mflr r0
/* 813AF374 | 38 80 00 00 */	li r4, 0x0
/* 813AF378 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AF37C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AF380 | 7C 7F 1B 78 */	mr r31, r3
/* 813AF384 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AF388 | 80 A3 00 B4 */	lwz r5, 0xb4(r3)
/* 813AF38C | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813AF390 | 48 16 2F 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AF394 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AF398 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AF39C | 41 82 01 9C */	beq .L_813AF538
/* 813AF3A0 | 80 DF 02 A4 */	lwz r6, 0x2a4(r31)
/* 813AF3A4 | 80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 813AF3A8 | 7C 04 30 00 */	cmpw r4, r6
/* 813AF3AC | 40 82 00 40 */	bne .L_813AF3EC
/* 813AF3B0 | 80 7F 02 A0 */	lwz r3, 0x2a0(r31)
/* 813AF3B4 | 80 1F 02 A8 */	lwz r0, 0x2a8(r31)
/* 813AF3B8 | 7C 03 00 00 */	cmpw r3, r0
/* 813AF3BC | 40 82 00 30 */	bne .L_813AF3EC
/* 813AF3C0 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813AF3C4 | 38 80 00 01 */	li r4, 0x1
/* 813AF3C8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AF3CC | 48 16 2F 4D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AF3D0 | 7C 7E 1B 78 */	mr r30, r3
/* 813AF3D4 | 4B FB 34 9D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AF3D8 | 38 60 00 01 */	li r3, 0x1
/* 813AF3DC | 38 00 00 18 */	li r0, 0x18
/* 813AF3E0 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813AF3E4 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 813AF3E8 | 48 00 01 50 */	b .L_813AF538
.L_813AF3EC:
/* 813AF3EC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AF3F0 | 80 BF 02 A0 */	lwz r5, 0x2a0(r31)
/* 813AF3F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AF3F8 | 80 FF 02 A8 */	lwz r7, 0x2a8(r31)
/* 813AF3FC | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813AF400 | 4B F8 95 A5 */	bl moveChannelInfo__Q33ipl7channel7ManagerFiiii
/* 813AF404 | 80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 813AF408 | 7F E3 FB 78 */	mr r3, r31
/* 813AF40C | 80 BF 02 A0 */	lwz r5, 0x2a0(r31)
/* 813AF410 | 4B FF DA 69 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AF414 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF418 | 90 7F 02 C0 */	stw r3, 0x2c0(r31)
/* 813AF41C | 40 82 00 5C */	bne .L_813AF478
/* 813AF420 | 3C 60 00 02 */	lis r3, 0x2
/* 813AF424 | 80 9F 01 6C */	lwz r4, 0x16c(r31)
/* 813AF428 | 38 63 12 B8 */	addi r3, r3, 0x12b8
/* 813AF42C | 38 A0 00 02 */	li r5, 0x2
/* 813AF430 | 48 24 85 B5 */	bl fn_815F79E4
/* 813AF434 | 80 9F 01 7C */	lwz r4, 0x17c(r31)
/* 813AF438 | 7C 7E 1B 78 */	mr r30, r3
/* 813AF43C | 38 60 01 14 */	li r3, 0x114
/* 813AF440 | 38 A0 00 04 */	li r5, 0x4
/* 813AF444 | 48 24 8C 6D */	bl __nw__FUlPQ23EGG4Heapi
/* 813AF448 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF44C | 7C 64 1B 78 */	mr r4, r3
/* 813AF450 | 41 82 00 18 */	beq .L_813AF468
/* 813AF454 | 80 BF 02 A4 */	lwz r5, 0x2a4(r31)
/* 813AF458 | 7F C4 F3 78 */	mr r4, r30
/* 813AF45C | 80 DF 02 A8 */	lwz r6, 0x2a8(r31)
/* 813AF460 | 48 00 21 25 */	bl __ct__Q33ipl5scene10ChannelObjFPQ23EGG4Heapii
/* 813AF464 | 7C 64 1B 78 */	mr r4, r3
.L_813AF468:
/* 813AF468 | 90 9F 02 C0 */	stw r4, 0x2c0(r31)
/* 813AF46C | 7F E3 FB 78 */	mr r3, r31
/* 813AF470 | 4B FF C8 B1 */	bl createChannelThumbnail__Q33ipl5scene13ChannelSelectFPQ33ipl5scene10ChannelObj
/* 813AF474 | 48 00 00 A4 */	b .L_813AF518
.L_813AF478:
/* 813AF478 | 80 9F 02 A4 */	lwz r4, 0x2a4(r31)
/* 813AF47C | 7F E3 FB 78 */	mr r3, r31
/* 813AF480 | 80 BF 02 A8 */	lwz r5, 0x2a8(r31)
/* 813AF484 | 4B FF D9 F5 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AF488 | 80 9F 02 A4 */	lwz r4, 0x2a4(r31)
/* 813AF48C | 7C 7E 1B 78 */	mr r30, r3
/* 813AF490 | 80 BF 02 A8 */	lwz r5, 0x2a8(r31)
/* 813AF494 | 7F E3 FB 78 */	mr r3, r31
/* 813AF498 | 80 DF 00 C8 */	lwz r6, 0xc8(r31)
/* 813AF49C | 4B FF E9 D1 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectCFiii
/* 813AF4A0 | 7C 64 1B 78 */	mr r4, r3
/* 813AF4A4 | 80 7F 02 C0 */	lwz r3, 0x2c0(r31)
/* 813AF4A8 | 48 00 23 81 */	bl setBasePane__Q33ipl5scene10ChannelObjFPCQ34nw4r3lyt4Pane
/* 813AF4AC | 80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 813AF4B0 | 7F E3 FB 78 */	mr r3, r31
/* 813AF4B4 | 80 BF 02 A0 */	lwz r5, 0x2a0(r31)
/* 813AF4B8 | 80 DF 00 C8 */	lwz r6, 0xc8(r31)
/* 813AF4BC | 4B FF E9 B1 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectCFiii
/* 813AF4C0 | 7C 64 1B 78 */	mr r4, r3
/* 813AF4C4 | 7F C3 F3 78 */	mr r3, r30
/* 813AF4C8 | 48 00 23 61 */	bl setBasePane__Q33ipl5scene10ChannelObjFPCQ34nw4r3lyt4Pane
/* 813AF4CC | 80 9F 02 A8 */	lwz r4, 0x2a8(r31)
/* 813AF4D0 | 80 7F 02 C0 */	lwz r3, 0x2c0(r31)
/* 813AF4D4 | 80 1F 02 A4 */	lwz r0, 0x2a4(r31)
/* 813AF4D8 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 813AF4DC | 90 83 00 20 */	stw r4, 0x20(r3)
/* 813AF4E0 | 80 7F 02 A0 */	lwz r3, 0x2a0(r31)
/* 813AF4E4 | 80 1F 02 9C */	lwz r0, 0x29c(r31)
/* 813AF4E8 | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 813AF4EC | 90 7E 00 20 */	stw r3, 0x20(r30)
/* 813AF4F0 | 80 7F 02 C0 */	lwz r3, 0x2c0(r31)
/* 813AF4F4 | 48 00 24 15 */	bl calc__Q33ipl5scene10ChannelObjFv
/* 813AF4F8 | 7F C3 F3 78 */	mr r3, r30
/* 813AF4FC | 48 00 24 0D */	bl calc__Q33ipl5scene10ChannelObjFv
/* 813AF500 | 38 00 00 00 */	li r0, 0x0
/* 813AF504 | 80 7F 02 C8 */	lwz r3, 0x2c8(r31)
/* 813AF508 | 90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 813AF50C | C0 03 00 0C */	lfs f0, 0xc(r3)
/* 813AF510 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 813AF514 | D0 03 00 0C */	stfs f0, 0xc(r3)
.L_813AF518:
/* 813AF518 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813AF51C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813AF520 | 80 64 00 94 */	lwz r3, 0x94(r4)
/* 813AF524 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813AF528 | 4B FA 89 0D */	bl flushAsync__Q33ipl8savedata7ManagerFPQ23EGG4Heap
/* 813AF52C | 38 00 00 17 */	li r0, 0x17
/* 813AF530 | 90 7F 02 BC */	stw r3, 0x2bc(r31)
/* 813AF534 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_813AF538:
/* 813AF538 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AF53C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AF540 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AF544 | 7C 08 03 A6 */	mtlr r0
/* 813AF548 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AF54C | 4E 80 00 20 */	blr
.endfn calcNormalMoveChanIn__Q33ipl5scene13ChannelSelectFv

# .text:0x5084 | 0x813AF550 | size: 0x184
# ipl::scene::ChannelSelect::calcNormalMoveChanSave()
.fn calcNormalMoveChanSave__Q33ipl5scene13ChannelSelectFv, global
/* 813AF550 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AF554 | 7C 08 02 A6 */	mflr r0
/* 813AF558 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AF55C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AF560 | 48 24 9F 65 */	bl _savegpr_28
/* 813AF564 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813AF568 | 7C 7C 1B 78 */	mr r28, r3
/* 813AF56C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813AF570 | 80 83 02 BC */	lwz r4, 0x2bc(r3)
/* 813AF574 | 80 65 00 94 */	lwz r3, 0x94(r5)
/* 813AF578 | 4B FA 89 65 */	bl isFinished__Q33ipl8savedata7ManagerFPQ33ipl4nand4File
/* 813AF57C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF580 | 41 82 01 3C */	beq .L_813AF6BC
/* 813AF584 | 80 7C 02 C0 */	lwz r3, 0x2c0(r28)
/* 813AF588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF58C | 41 82 00 10 */	beq .L_813AF59C
/* 813AF590 | 4B FF E2 79 */	bl isLayoutCreated__Q33ipl5scene10ChannelObjCFv
/* 813AF594 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF598 | 41 82 01 24 */	beq .L_813AF6BC
.L_813AF59C:
/* 813AF59C | 80 1C 02 C0 */	lwz r0, 0x2c0(r28)
/* 813AF5A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AF5A4 | 41 82 00 4C */	beq .L_813AF5F0
/* 813AF5A8 | 80 9C 02 A4 */	lwz r4, 0x2a4(r28)
/* 813AF5AC | 7F 83 E3 78 */	mr r3, r28
/* 813AF5B0 | 80 BC 02 A8 */	lwz r5, 0x2a8(r28)
/* 813AF5B4 | 4B FF D8 C5 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AF5B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813AF5BC | 80 BC 02 C0 */	lwz r5, 0x2c0(r28)
/* 813AF5C0 | 7F E4 FB 78 */	mr r4, r31
/* 813AF5C4 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813AF5C8 | 48 16 2B 89 */	bl List_Insert__Q24nw4r2utFPQ34nw4r2ut4ListPvPv
/* 813AF5CC | 7F E4 FB 78 */	mr r4, r31
/* 813AF5D0 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813AF5D4 | 48 16 2C 9D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813AF5D8 | 7F 83 E3 78 */	mr r3, r28
/* 813AF5DC | 7F E4 FB 78 */	mr r4, r31
/* 813AF5E0 | 4B FF D5 D9 */	bl destroyChannelObj__Q33ipl5scene13ChannelSelectFPQ33ipl5scene10ChannelObj
/* 813AF5E4 | 38 00 00 00 */	li r0, 0x0
/* 813AF5E8 | 90 1C 02 C0 */	stw r0, 0x2c0(r28)
/* 813AF5EC | 48 00 00 80 */	b .L_813AF66C
.L_813AF5F0:
/* 813AF5F0 | 80 9C 02 9C */	lwz r4, 0x29c(r28)
/* 813AF5F4 | 7F 83 E3 78 */	mr r3, r28
/* 813AF5F8 | 80 BC 02 A0 */	lwz r5, 0x2a0(r28)
/* 813AF5FC | 4B FF D8 7D */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AF600 | 80 9C 02 A4 */	lwz r4, 0x2a4(r28)
/* 813AF604 | 7C 7F 1B 78 */	mr r31, r3
/* 813AF608 | 80 BC 02 A8 */	lwz r5, 0x2a8(r28)
/* 813AF60C | 7F 83 E3 78 */	mr r3, r28
/* 813AF610 | 4B FF D8 69 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AF614 | 7C 7E 1B 78 */	mr r30, r3
/* 813AF618 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813AF61C | 7F C4 F3 78 */	mr r4, r30
/* 813AF620 | 48 16 2C BD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AF624 | 7C 03 F8 40 */	cmplw r3, r31
/* 813AF628 | 7C 7D 1B 78 */	mr r29, r3
/* 813AF62C | 40 82 00 08 */	bne .L_813AF634
/* 813AF630 | 7F DD F3 78 */	mr r29, r30
.L_813AF634:
/* 813AF634 | 7F C4 F3 78 */	mr r4, r30
/* 813AF638 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813AF63C | 48 16 2C 35 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813AF640 | 7F E4 FB 78 */	mr r4, r31
/* 813AF644 | 7F C5 F3 78 */	mr r5, r30
/* 813AF648 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813AF64C | 48 16 2B 05 */	bl List_Insert__Q24nw4r2utFPQ34nw4r2ut4ListPvPv
/* 813AF650 | 7F E4 FB 78 */	mr r4, r31
/* 813AF654 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813AF658 | 48 16 2C 19 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813AF65C | 7F A4 EB 78 */	mr r4, r29
/* 813AF660 | 7F E5 FB 78 */	mr r5, r31
/* 813AF664 | 38 7C 00 58 */	addi r3, r28, 0x58
/* 813AF668 | 48 16 2A E9 */	bl List_Insert__Q24nw4r2utFPQ34nw4r2ut4ListPvPv
.L_813AF66C:
/* 813AF66C | 80 7C 02 BC */	lwz r3, 0x2bc(r28)
/* 813AF670 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF674 | 41 82 00 18 */	beq .L_813AF68C
/* 813AF678 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AF67C | 38 80 00 01 */	li r4, 0x1
/* 813AF680 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813AF684 | 7D 89 03 A6 */	mtctr r12
/* 813AF688 | 4E 80 04 21 */	bctrl
.L_813AF68C:
/* 813AF68C | 80 7C 00 B4 */	lwz r3, 0xb4(r28)
/* 813AF690 | 38 00 00 00 */	li r0, 0x0
/* 813AF694 | 90 1C 02 BC */	stw r0, 0x2bc(r28)
/* 813AF698 | 38 80 00 01 */	li r4, 0x1
/* 813AF69C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AF6A0 | 48 16 2C 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AF6A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813AF6A8 | 4B FB 31 C9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AF6AC | 38 60 00 01 */	li r3, 0x1
/* 813AF6B0 | 38 00 00 18 */	li r0, 0x18
/* 813AF6B4 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813AF6B8 | 90 1C 00 C0 */	stw r0, 0xc0(r28)
.L_813AF6BC:
/* 813AF6BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AF6C0 | 48 24 9E 51 */	bl _restgpr_28
/* 813AF6C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AF6C8 | 7C 08 03 A6 */	mtlr r0
/* 813AF6CC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AF6D0 | 4E 80 00 20 */	blr
.endfn calcNormalMoveChanSave__Q33ipl5scene13ChannelSelectFv

# .text:0x5208 | 0x813AF6D4 | size: 0xCC
# ipl::scene::ChannelSelect::calcNormalMoveChanOut()
.fn calcNormalMoveChanOut__Q33ipl5scene13ChannelSelectFv, global
/* 813AF6D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AF6D8 | 7C 08 02 A6 */	mflr r0
/* 813AF6DC | 38 80 00 01 */	li r4, 0x1
/* 813AF6E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AF6E4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813AF6E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813AF6EC | 80 A3 00 AC */	lwz r5, 0xac(r3)
/* 813AF6F0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813AF6F4 | 48 16 2C 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AF6F8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AF6FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AF700 | 41 82 00 8C */	beq .L_813AF78C
/* 813AF704 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AF708 | 38 80 00 01 */	li r4, 0x1
/* 813AF70C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AF710 | 48 16 2C 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AF714 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AF718 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AF71C | 41 82 00 70 */	beq .L_813AF78C
/* 813AF720 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813AF724 | 38 80 00 01 */	li r4, 0x1
/* 813AF728 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AF72C | 48 16 2B ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AF730 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813AF734 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813AF738 | 41 82 00 54 */	beq .L_813AF78C
/* 813AF73C | 4B F8 62 A1 */	bl getRndm__Q23ipl6SystemFv
/* 813AF740 | 4B FF F6 D1 */	bl get_u16__Q33ipl4math6RandomFv
/* 813AF744 | 54 67 04 3E */	clrlwi r7, r3, 16
/* 813AF748 | 38 C0 07 D0 */	li r6, 0x7d0
/* 813AF74C | 7C A7 33 D6 */	divw r5, r7, r6
/* 813AF750 | 3C 00 43 30 */	lis r0, 0x4330
/* 813AF754 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813AF758 | 7F E3 FB 78 */	mr r3, r31
/* 813AF75C | C8 22 85 98 */	lfd f1, lbl_81694998@sda21(r0)
/* 813AF760 | 80 9F 02 C8 */	lwz r4, 0x2c8(r31)
/* 813AF764 | 7C 05 31 D6 */	mullw r0, r5, r6
/* 813AF768 | 7C 00 38 50 */	subf r0, r0, r7
/* 813AF76C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813AF770 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813AF774 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813AF778 | EC 00 08 28 */	fsubs f0, f0, f1
/* 813AF77C | D0 04 00 0C */	stfs f0, 0xc(r4)
/* 813AF780 | 4B FF F3 79 */	bl restartChannelModules__Q33ipl5scene13ChannelSelectFv
/* 813AF784 | 38 00 00 01 */	li r0, 0x1
/* 813AF788 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_813AF78C:
/* 813AF78C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AF790 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813AF794 | 7C 08 03 A6 */	mtlr r0
/* 813AF798 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AF79C | 4E 80 00 20 */	blr
.endfn calcNormalMoveChanOut__Q33ipl5scene13ChannelSelectFv

# .text:0x52D4 | 0x813AF7A0 | size: 0x194
# ipl::scene::ChannelSelect::calcNormalDragScrl()
.fn calcNormalDragScrl__Q33ipl5scene13ChannelSelectFv, global
/* 813AF7A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AF7A4 | 7C 08 02 A6 */	mflr r0
/* 813AF7A8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813AF7AC | 38 80 00 05 */	li r4, 0x5
/* 813AF7B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AF7B4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813AF7B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AF7BC | 7C 7F 1B 78 */	mr r31, r3
/* 813AF7C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AF7C4 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813AF7C8 | 48 05 B9 71 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AF7CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF7D0 | 7C 7E 1B 78 */	mr r30, r3
/* 813AF7D4 | 41 82 00 18 */	beq .L_813AF7EC
/* 813AF7D8 | 4B FE D1 3D */	bl isActive__Q33ipl5scene6ButtonCFv
/* 813AF7DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF7E0 | 41 82 00 0C */	beq .L_813AF7EC
/* 813AF7E4 | 7F C3 F3 78 */	mr r3, r30
/* 813AF7E8 | 4B FE CD 85 */	bl update__Q33ipl5scene6ButtonFv
.L_813AF7EC:
/* 813AF7EC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813AF7F0 | 80 9F 02 98 */	lwz r4, 0x298(r31)
/* 813AF7F4 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813AF7F8 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF7FC | 4B F8 80 8D */	bl getController__Q33ipl10controller7ManagerFi
/* 813AF800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF804 | 41 82 00 28 */	beq .L_813AF82C
/* 813AF808 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813AF80C | 80 9F 02 98 */	lwz r4, 0x298(r31)
/* 813AF810 | 4B F8 80 79 */	bl getController__Q33ipl10controller7ManagerFi
/* 813AF814 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813AF818 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813AF81C | 7D 89 03 A6 */	mtctr r12
/* 813AF820 | 4E 80 04 21 */	bctrl
/* 813AF824 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF828 | 40 82 00 0C */	bne .L_813AF834
.L_813AF82C:
/* 813AF82C | 38 00 00 01 */	li r0, 0x1
/* 813AF830 | 98 1F 02 B8 */	stb r0, 0x2b8(r31)
.L_813AF834:
/* 813AF834 | 7F E3 FB 78 */	mr r3, r31
/* 813AF838 | 48 00 08 1D */	bl moveDrag__Q33ipl5scene13ChannelSelectFv
/* 813AF83C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AF840 | 38 80 00 00 */	li r4, 0x0
/* 813AF844 | 4B FB B2 8D */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813AF848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF84C | 40 82 00 D0 */	bne .L_813AF91C
/* 813AF850 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AF854 | 38 80 00 05 */	li r4, 0x5
/* 813AF858 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AF85C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813AF860 | 48 05 B8 D9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AF864 | 80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 813AF868 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 813AF86C | 40 82 00 48 */	bne .L_813AF8B4
/* 813AF870 | 80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 813AF874 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 813AF878 | 90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 813AF87C | 40 82 00 18 */	bne .L_813AF894
/* 813AF880 | 38 80 00 1A */	li r4, 0x1a
/* 813AF884 | 4B FE D2 D5 */	bl iplButton_8139CB58
/* 813AF888 | 38 00 00 00 */	li r0, 0x0
/* 813AF88C | 98 1F 01 00 */	stb r0, 0x100(r31)
/* 813AF890 | 48 00 00 70 */	b .L_813AF900
.L_813AF894:
/* 813AF894 | 88 1F 01 01 */	lbz r0, 0x101(r31)
/* 813AF898 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AF89C | 40 82 00 64 */	bne .L_813AF900
/* 813AF8A0 | 38 80 00 17 */	li r4, 0x17
/* 813AF8A4 | 4B FE D2 B5 */	bl iplButton_8139CB58
/* 813AF8A8 | 38 00 00 01 */	li r0, 0x1
/* 813AF8AC | 98 1F 01 01 */	stb r0, 0x101(r31)
/* 813AF8B0 | 48 00 00 50 */	b .L_813AF900
.L_813AF8B4:
/* 813AF8B4 | 80 BF 00 C8 */	lwz r5, 0xc8(r31)
/* 813AF8B8 | 80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 813AF8BC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813AF8C0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813AF8C4 | 90 BF 00 C8 */	stw r5, 0xc8(r31)
/* 813AF8C8 | 7C 05 00 00 */	cmpw r5, r0
/* 813AF8CC | 40 82 00 18 */	bne .L_813AF8E4
/* 813AF8D0 | 38 80 00 19 */	li r4, 0x19
/* 813AF8D4 | 4B FE D2 85 */	bl iplButton_8139CB58
/* 813AF8D8 | 38 00 00 00 */	li r0, 0x0
/* 813AF8DC | 98 1F 01 01 */	stb r0, 0x101(r31)
/* 813AF8E0 | 48 00 00 20 */	b .L_813AF900
.L_813AF8E4:
/* 813AF8E4 | 88 1F 01 00 */	lbz r0, 0x100(r31)
/* 813AF8E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AF8EC | 40 82 00 14 */	bne .L_813AF900
/* 813AF8F0 | 38 80 00 18 */	li r4, 0x18
/* 813AF8F4 | 4B FE D2 65 */	bl iplButton_8139CB58
/* 813AF8F8 | 38 00 00 01 */	li r0, 0x1
/* 813AF8FC | 98 1F 01 00 */	stb r0, 0x100(r31)
.L_813AF900:
/* 813AF900 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813AF904 | 4B FB AD 31 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813AF908 | 80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 813AF90C | 7F E3 FB 78 */	mr r3, r31
/* 813AF910 | 4B FF D0 39 */	bl refreshChannelList__Q33ipl5scene13ChannelSelectFi
/* 813AF914 | 38 00 00 13 */	li r0, 0x13
/* 813AF918 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_813AF91C:
/* 813AF91C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AF920 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AF924 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AF928 | 7C 08 03 A6 */	mtlr r0
/* 813AF92C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AF930 | 4E 80 00 20 */	blr
.endfn calcNormalDragScrl__Q33ipl5scene13ChannelSelectFv

# .text:0x5468 | 0x813AF934 | size: 0x1A4
# ipl::scene::ChannelSelect::onEventDrag(const char*, unsigned long, ipl::controller::Interface*)
.fn onEventDrag__Q33ipl5scene13ChannelSelectFPCcUlPQ33ipl10controller9Interface, global
/* 813AF934 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AF938 | 7C 08 02 A6 */	mflr r0
/* 813AF93C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AF940 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AF944 | 48 24 9B 81 */	bl _savegpr_28
/* 813AF948 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813AF94C | 7C 7C 1B 78 */	mr r28, r3
/* 813AF950 | 7C 9F 23 78 */	mr r31, r4
/* 813AF954 | 7C BD 2B 78 */	mr r29, r5
/* 813AF958 | 7C DE 33 78 */	mr r30, r6
/* 813AF95C | 41 82 00 28 */	beq .L_813AF984
/* 813AF960 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AF964 | 80 9C 02 98 */	lwz r4, 0x298(r28)
/* 813AF968 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AF96C | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813AF970 | 4B F8 7F 19 */	bl getController__Q33ipl10controller7ManagerFi
/* 813AF974 | 7C 1E 18 40 */	cmplw r30, r3
/* 813AF978 | 41 82 00 0C */	beq .L_813AF984
/* 813AF97C | 38 60 00 01 */	li r3, 0x1
/* 813AF980 | 48 00 01 40 */	b .L_813AFAC0
.L_813AF984:
/* 813AF984 | 7F 83 E3 78 */	mr r3, r28
/* 813AF988 | 7F E4 FB 78 */	mr r4, r31
/* 813AF98C | 4B FF F0 11 */	bl isInChannelPaneNames__Q33ipl5scene13ChannelSelectCFPCc
/* 813AF990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF994 | 7C 7F 1B 78 */	mr r31, r3
/* 813AF998 | 41 80 01 24 */	blt .L_813AFABC
/* 813AF99C | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813AF9A0 | 41 82 00 D0 */	beq .L_813AFA70
/* 813AF9A4 | 40 80 00 10 */	bge .L_813AF9B4
/* 813AF9A8 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813AF9AC | 40 80 00 48 */	bge .L_813AF9F4
/* 813AF9B0 | 48 00 01 0C */	b .L_813AFABC
.L_813AF9B4:
/* 813AF9B4 | 2C 1D 00 05 */	cmpwi r29, 0x5
/* 813AF9B8 | 41 82 00 08 */	beq .L_813AF9C0
/* 813AF9BC | 48 00 01 00 */	b .L_813AFABC
.L_813AF9C0:
/* 813AF9C0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813AF9C4 | 7F C3 F3 78 */	mr r3, r30
/* 813AF9C8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813AF9CC | 7D 89 03 A6 */	mtctr r12
/* 813AF9D0 | 4E 80 04 21 */	bctrl
/* 813AF9D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AF9D8 | 40 82 00 E4 */	bne .L_813AFABC
/* 813AF9DC | 80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 813AF9E0 | 38 00 00 01 */	li r0, 0x1
/* 813AF9E4 | 93 FC 02 A8 */	stw r31, 0x2a8(r28)
/* 813AF9E8 | 90 7C 02 A4 */	stw r3, 0x2a4(r28)
/* 813AF9EC | 98 1C 02 B8 */	stb r0, 0x2b8(r28)
/* 813AF9F0 | 48 00 00 CC */	b .L_813AFABC
.L_813AF9F4:
/* 813AF9F4 | 80 9C 00 C8 */	lwz r4, 0xc8(r28)
/* 813AF9F8 | 7F 83 E3 78 */	mr r3, r28
/* 813AF9FC | 7F E5 FB 78 */	mr r5, r31
/* 813AFA00 | 48 00 05 D5 */	bl isReleasableArea__Q33ipl5scene13ChannelSelectFii
/* 813AFA04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFA08 | 40 82 00 20 */	bne .L_813AFA28
/* 813AFA0C | 80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 813AFA10 | 80 1C 02 9C */	lwz r0, 0x29c(r28)
/* 813AFA14 | 7C 03 00 00 */	cmpw r3, r0
/* 813AFA18 | 40 82 00 A4 */	bne .L_813AFABC
/* 813AFA1C | 80 1C 02 A0 */	lwz r0, 0x2a0(r28)
/* 813AFA20 | 7C 1F 00 00 */	cmpw r31, r0
/* 813AFA24 | 40 82 00 98 */	bne .L_813AFABC
.L_813AFA28:
/* 813AFA28 | 80 9C 00 C8 */	lwz r4, 0xc8(r28)
/* 813AFA2C | 7F 83 E3 78 */	mr r3, r28
/* 813AFA30 | 7F E5 FB 78 */	mr r5, r31
/* 813AFA34 | 4B FF D4 45 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AFA38 | 38 80 00 02 */	li r4, 0x2
/* 813AFA3C | 48 00 28 49 */	bl onPoint__Q33ipl5scene10ChannelObjFi
/* 813AFA40 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813AFA44 | 3C 80 81 65 */	lis r4, lbl_8164DFCB@ha
/* 813AFA48 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813AFA4C | 38 84 DF CB */	addi r4, r4, lbl_8164DFCB@l
/* 813AFA50 | 4B FB BA 1D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813AFA54 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813AFA58 | 7F C3 F3 78 */	mr r3, r30
/* 813AFA5C | 38 80 00 01 */	li r4, 0x1
/* 813AFA60 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813AFA64 | 7D 89 03 A6 */	mtctr r12
/* 813AFA68 | 4E 80 04 21 */	bctrl
/* 813AFA6C | 48 00 00 50 */	b .L_813AFABC
.L_813AFA70:
/* 813AFA70 | 80 9C 00 C8 */	lwz r4, 0xc8(r28)
/* 813AFA74 | 7F 83 E3 78 */	mr r3, r28
/* 813AFA78 | 7F E5 FB 78 */	mr r5, r31
/* 813AFA7C | 48 00 05 59 */	bl isReleasableArea__Q33ipl5scene13ChannelSelectFii
/* 813AFA80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFA84 | 40 82 00 20 */	bne .L_813AFAA4
/* 813AFA88 | 80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 813AFA8C | 80 1C 02 9C */	lwz r0, 0x29c(r28)
/* 813AFA90 | 7C 03 00 00 */	cmpw r3, r0
/* 813AFA94 | 40 82 00 28 */	bne .L_813AFABC
/* 813AFA98 | 80 1C 02 A0 */	lwz r0, 0x2a0(r28)
/* 813AFA9C | 7C 1F 00 00 */	cmpw r31, r0
/* 813AFAA0 | 40 82 00 1C */	bne .L_813AFABC
.L_813AFAA4:
/* 813AFAA4 | 80 9C 00 C8 */	lwz r4, 0xc8(r28)
/* 813AFAA8 | 7F 83 E3 78 */	mr r3, r28
/* 813AFAAC | 7F E5 FB 78 */	mr r5, r31
/* 813AFAB0 | 4B FF D3 C9 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AFAB4 | 38 80 00 02 */	li r4, 0x2
/* 813AFAB8 | 48 00 28 65 */	bl onLeft__Q33ipl5scene10ChannelObjFi
.L_813AFABC:
/* 813AFABC | 38 60 00 01 */	li r3, 0x1
.L_813AFAC0:
/* 813AFAC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AFAC4 | 48 24 9A 4D */	bl _restgpr_28
/* 813AFAC8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AFACC | 7C 08 03 A6 */	mtlr r0
/* 813AFAD0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AFAD4 | 4E 80 00 20 */	blr
.endfn onEventDrag__Q33ipl5scene13ChannelSelectFPCcUlPQ33ipl10controller9Interface

# .text:0x560C | 0x813AFAD8 | size: 0x16C
# ipl::scene::ChannelSelect::onEventDerivedDrag(const char*, unsigned long, const ipl::controller::Interface*)
.fn onEventDerivedDrag__Q33ipl5scene13ChannelSelectFPCcUlPCQ33ipl10controller9Interface, global
/* 813AFAD8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813AFADC | 7C 08 02 A6 */	mflr r0
/* 813AFAE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813AFAE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AFAE8 | 48 24 99 DD */	bl _savegpr_28
/* 813AFAEC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813AFAF0 | 7C 7F 1B 78 */	mr r31, r3
/* 813AFAF4 | 7C 9C 23 78 */	mr r28, r4
/* 813AFAF8 | 7C BD 2B 78 */	mr r29, r5
/* 813AFAFC | 7C DE 33 78 */	mr r30, r6
/* 813AFB00 | 41 82 00 20 */	beq .L_813AFB20
/* 813AFB04 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AFB08 | 80 9F 02 98 */	lwz r4, 0x298(r31)
/* 813AFB0C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AFB10 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813AFB14 | 4B F8 7D 75 */	bl getController__Q33ipl10controller7ManagerFi
/* 813AFB18 | 7C 1E 18 40 */	cmplw r30, r3
/* 813AFB1C | 40 82 01 10 */	bne .L_813AFC2C
.L_813AFB20:
/* 813AFB20 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813AFB24 | 41 82 00 14 */	beq .L_813AFB38
/* 813AFB28 | 40 80 01 04 */	bge .L_813AFC2C
/* 813AFB2C | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813AFB30 | 40 80 00 78 */	bge .L_813AFBA8
/* 813AFB34 | 48 00 00 F8 */	b .L_813AFC2C
.L_813AFB38:
/* 813AFB38 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 813AFB3C | 7F 83 E3 78 */	mr r3, r28
/* 813AFB40 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 813AFB44 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813AFB48 | 48 25 29 39 */	bl strcmp
/* 813AFB4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFB50 | 40 82 00 1C */	bne .L_813AFB6C
/* 813AFB54 | 80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 813AFB58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AFB5C | 40 81 00 10 */	ble .L_813AFB6C
/* 813AFB60 | 38 00 FF FF */	li r0, -0x1
/* 813AFB64 | 90 1F 02 B0 */	stw r0, 0x2b0(r31)
/* 813AFB68 | 48 00 00 C4 */	b .L_813AFC2C
.L_813AFB6C:
/* 813AFB6C | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 813AFB70 | 7F 83 E3 78 */	mr r3, r28
/* 813AFB74 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 813AFB78 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 813AFB7C | 48 25 29 05 */	bl strcmp
/* 813AFB80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFB84 | 40 82 00 A8 */	bne .L_813AFC2C
/* 813AFB88 | 80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 813AFB8C | 80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 813AFB90 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813AFB94 | 7C 04 00 00 */	cmpw r4, r0
/* 813AFB98 | 40 80 00 94 */	bge .L_813AFC2C
/* 813AFB9C | 38 00 FF FF */	li r0, -0x1
/* 813AFBA0 | 90 1F 02 AC */	stw r0, 0x2ac(r31)
/* 813AFBA4 | 48 00 00 88 */	b .L_813AFC2C
.L_813AFBA8:
/* 813AFBA8 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 813AFBAC | 7F 83 E3 78 */	mr r3, r28
/* 813AFBB0 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 813AFBB4 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813AFBB8 | 48 25 28 C9 */	bl strcmp
/* 813AFBBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFBC0 | 40 82 00 28 */	bne .L_813AFBE8
/* 813AFBC4 | 80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 813AFBC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AFBCC | 40 81 00 1C */	ble .L_813AFBE8
/* 813AFBD0 | 80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 813AFBD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AFBD8 | 40 80 00 54 */	bge .L_813AFC2C
/* 813AFBDC | 38 00 00 00 */	li r0, 0x0
/* 813AFBE0 | 90 1F 02 B0 */	stw r0, 0x2b0(r31)
/* 813AFBE4 | 48 00 00 48 */	b .L_813AFC2C
.L_813AFBE8:
/* 813AFBE8 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 813AFBEC | 7F 83 E3 78 */	mr r3, r28
/* 813AFBF0 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 813AFBF4 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 813AFBF8 | 48 25 28 89 */	bl strcmp
/* 813AFBFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFC00 | 40 82 00 2C */	bne .L_813AFC2C
/* 813AFC04 | 80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 813AFC08 | 80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 813AFC0C | 38 03 FF FF */	subi r0, r3, 0x1
/* 813AFC10 | 7C 04 00 00 */	cmpw r4, r0
/* 813AFC14 | 40 80 00 18 */	bge .L_813AFC2C
/* 813AFC18 | 80 1F 02 AC */	lwz r0, 0x2ac(r31)
/* 813AFC1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AFC20 | 40 80 00 0C */	bge .L_813AFC2C
/* 813AFC24 | 38 00 00 00 */	li r0, 0x0
/* 813AFC28 | 90 1F 02 AC */	stw r0, 0x2ac(r31)
.L_813AFC2C:
/* 813AFC2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813AFC30 | 48 24 98 E1 */	bl _restgpr_28
/* 813AFC34 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813AFC38 | 7C 08 03 A6 */	mtlr r0
/* 813AFC3C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813AFC40 | 4E 80 00 20 */	blr
.endfn onEventDerivedDrag__Q33ipl5scene13ChannelSelectFPCcUlPCQ33ipl10controller9Interface

# .text:0x5778 | 0x813AFC44 | size: 0x1E8
# ipl::scene::ChannelSelect::startDrag(const ipl::controller::Interface*, int, int)
.fn startDrag__Q33ipl5scene13ChannelSelectFPCQ33ipl10controller9Interfaceii, global
/* 813AFC44 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813AFC48 | 7C 08 02 A6 */	mflr r0
/* 813AFC4C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813AFC50 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813AFC54 | 48 24 98 69 */	bl _savegpr_26
/* 813AFC58 | 7C 9C 23 78 */	mr r28, r4
/* 813AFC5C | 7C 7F 1B 78 */	mr r31, r3
/* 813AFC60 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813AFC64 | 7F 83 E3 78 */	mr r3, r28
/* 813AFC68 | 7C BA 2B 78 */	mr r26, r5
/* 813AFC6C | 7C DB 33 78 */	mr r27, r6
/* 813AFC70 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813AFC74 | 7D 89 03 A6 */	mtctr r12
/* 813AFC78 | 4E 80 04 21 */	bctrl
/* 813AFC7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFC80 | 41 80 01 94 */	blt .L_813AFE14
/* 813AFC84 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813AFC88 | 7F 83 E3 78 */	mr r3, r28
/* 813AFC8C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813AFC90 | 7D 89 03 A6 */	mtctr r12
/* 813AFC94 | 4E 80 04 21 */	bctrl
/* 813AFC98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFC9C | 41 82 00 30 */	beq .L_813AFCCC
/* 813AFCA0 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813AFCA4 | 7F 83 E3 78 */	mr r3, r28
/* 813AFCA8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813AFCAC | 7D 89 03 A6 */	mtctr r12
/* 813AFCB0 | 4E 80 04 21 */	bctrl
/* 813AFCB4 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813AFCB8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813AFCBC | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813AFCC0 | 38 7F 02 90 */	addi r3, r31, 0x290
/* 813AFCC4 | 4B FB B1 15 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 813AFCC8 | 48 00 00 1C */	b .L_813AFCE4
.L_813AFCCC:
/* 813AFCCC | C0 02 85 48 */	lfs f0, lbl_81694948@sda21(r0)
/* 813AFCD0 | 38 7F 02 90 */	addi r3, r31, 0x290
/* 813AFCD4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AFCD8 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813AFCDC | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813AFCE0 | 4B FB B0 F9 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
.L_813AFCE4:
/* 813AFCE4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813AFCE8 | 7F 83 E3 78 */	mr r3, r28
/* 813AFCEC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813AFCF0 | 7D 89 03 A6 */	mtctr r12
/* 813AFCF4 | 4E 80 04 21 */	bctrl
/* 813AFCF8 | 38 80 FF FF */	li r4, -0x1
/* 813AFCFC | 38 00 00 00 */	li r0, 0x0
/* 813AFD00 | 90 7F 02 98 */	stw r3, 0x298(r31)
/* 813AFD04 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813AFD08 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813AFD0C | 7F 83 E3 78 */	mr r3, r28
/* 813AFD10 | 93 5F 02 9C */	stw r26, 0x29c(r31)
/* 813AFD14 | 93 7F 02 A0 */	stw r27, 0x2a0(r31)
/* 813AFD18 | 90 9F 02 A4 */	stw r4, 0x2a4(r31)
/* 813AFD1C | 90 9F 02 A8 */	stw r4, 0x2a8(r31)
/* 813AFD20 | 90 9F 02 AC */	stw r4, 0x2ac(r31)
/* 813AFD24 | 90 9F 02 B0 */	stw r4, 0x2b0(r31)
/* 813AFD28 | 90 1F 02 B4 */	stw r0, 0x2b4(r31)
/* 813AFD2C | 98 1F 02 B8 */	stb r0, 0x2b8(r31)
/* 813AFD30 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813AFD34 | 83 DD 00 B0 */	lwz r30, 0xb0(r29)
/* 813AFD38 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813AFD3C | 7D 89 03 A6 */	mtctr r12
/* 813AFD40 | 4E 80 04 21 */	bctrl
/* 813AFD44 | 7C 64 1B 78 */	mr r4, r3
/* 813AFD48 | 7F C3 F3 78 */	mr r3, r30
/* 813AFD4C | 38 A0 00 01 */	li r5, 0x1
/* 813AFD50 | 4B F9 47 31 */	bl changeType__Q23ipl7PointerFii
/* 813AFD54 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813AFD58 | 38 80 00 00 */	li r4, 0x0
/* 813AFD5C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AFD60 | 48 16 25 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AFD64 | 7C 7C 1B 78 */	mr r28, r3
/* 813AFD68 | 4B FB 2B 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AFD6C | 3B C0 00 01 */	li r30, 0x1
/* 813AFD70 | 38 80 00 00 */	li r4, 0x0
/* 813AFD74 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 813AFD78 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AFD7C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AFD80 | 48 16 25 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AFD84 | 7C 7C 1B 78 */	mr r28, r3
/* 813AFD88 | 4B FB 2A E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AFD8C | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 813AFD90 | 38 80 00 05 */	li r4, 0x5
/* 813AFD94 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813AFD98 | 48 05 B3 A1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AFD9C | 4B FE D5 51 */	bl disableBtn__Q33ipl5scene6ButtonFv
/* 813AFDA0 | 3B 80 00 00 */	li r28, 0x0
/* 813AFDA4 | 48 00 00 2C */	b .L_813AFDD0
.L_813AFDA8:
/* 813AFDA8 | 80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 813AFDAC | 38 80 00 00 */	li r4, 0x0
/* 813AFDB0 | 80 A3 00 20 */	lwz r5, 0x20(r3)
/* 813AFDB4 | 7F 83 E3 78 */	mr r3, r28
/* 813AFDB8 | 7C 00 D0 00 */	cmpw r0, r26
/* 813AFDBC | 40 82 00 10 */	bne .L_813AFDCC
/* 813AFDC0 | 7C 05 D8 00 */	cmpw r5, r27
/* 813AFDC4 | 40 82 00 08 */	bne .L_813AFDCC
/* 813AFDC8 | 38 80 00 01 */	li r4, 0x1
.L_813AFDCC:
/* 813AFDCC | 48 00 25 E5 */	bl onPinch__Q33ipl5scene10ChannelObjFb
.L_813AFDD0:
/* 813AFDD0 | 7F 84 E3 78 */	mr r4, r28
/* 813AFDD4 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813AFDD8 | 48 16 25 05 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AFDDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFDE0 | 7C 7C 1B 78 */	mr r28, r3
/* 813AFDE4 | 40 82 FF C4 */	bne .L_813AFDA8
/* 813AFDE8 | 38 00 00 01 */	li r0, 0x1
/* 813AFDEC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813AFDF0 | 3C 80 81 65 */	lis r4, lbl_8164DFE1@ha
/* 813AFDF4 | 98 1F 01 84 */	stb r0, 0x184(r31)
/* 813AFDF8 | C0 3F 02 90 */	lfs f1, 0x290(r31)
/* 813AFDFC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813AFE00 | 98 1F 01 85 */	stb r0, 0x185(r31)
/* 813AFE04 | 38 84 DF E1 */	addi r4, r4, lbl_8164DFE1@l
/* 813AFE08 | 4B FB B8 99 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 813AFE0C | 38 00 00 12 */	li r0, 0x12
/* 813AFE10 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_813AFE14:
/* 813AFE14 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813AFE18 | 48 24 96 F1 */	bl _restgpr_26
/* 813AFE1C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813AFE20 | 7C 08 03 A6 */	mtlr r0
/* 813AFE24 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813AFE28 | 4E 80 00 20 */	blr
.endfn startDrag__Q33ipl5scene13ChannelSelectFPCQ33ipl10controller9Interfaceii

# .text:0x5960 | 0x813AFE2C | size: 0x1A8
# ipl::scene::ChannelSelect::finishDrag()
.fn finishDrag__Q33ipl5scene13ChannelSelectFv, global
/* 813AFE2C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813AFE30 | 7C 08 02 A6 */	mflr r0
/* 813AFE34 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813AFE38 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813AFE3C | 48 24 96 8D */	bl _savegpr_29
/* 813AFE40 | 80 83 02 A4 */	lwz r4, 0x2a4(r3)
/* 813AFE44 | 7C 7F 1B 78 */	mr r31, r3
/* 813AFE48 | 80 A3 02 A8 */	lwz r5, 0x2a8(r3)
/* 813AFE4C | 48 00 01 89 */	bl isReleasableArea__Q33ipl5scene13ChannelSelectFii
/* 813AFE50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFE54 | 41 82 00 A4 */	beq .L_813AFEF8
/* 813AFE58 | 80 9F 02 A4 */	lwz r4, 0x2a4(r31)
/* 813AFE5C | 7F E3 FB 78 */	mr r3, r31
/* 813AFE60 | 80 BF 02 A8 */	lwz r5, 0x2a8(r31)
/* 813AFE64 | 4B FF D0 15 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813AFE68 | 48 00 23 4D */	bl getTranslate__Q33ipl5scene10ChannelObjCFv
/* 813AFE6C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813AFE70 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AFE74 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813AFE78 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813AFE7C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813AFE80 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813AFE84 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813AFE88 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813AFE8C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813AFE90 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813AFE94 | 4B F9 47 F1 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813AFE98 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 813AFE9C | 38 80 00 00 */	li r4, 0x0
/* 813AFEA0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AFEA4 | 48 16 24 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AFEA8 | 7C 7D 1B 78 */	mr r29, r3
/* 813AFEAC | 4B FB 29 C5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AFEB0 | 3B C0 00 01 */	li r30, 0x1
/* 813AFEB4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813AFEB8 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813AFEBC | 3C 80 81 65 */	lis r4, lbl_8164DFF1@ha
/* 813AFEC0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813AFEC4 | C0 3F 02 90 */	lfs f1, 0x290(r31)
/* 813AFEC8 | 38 84 DF F1 */	addi r4, r4, lbl_8164DFF1@l
/* 813AFECC | 4B FB B7 D5 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 813AFED0 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813AFED4 | 38 80 00 01 */	li r4, 0x1
/* 813AFED8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AFEDC | 48 16 24 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AFEE0 | 7C 7D 1B 78 */	mr r29, r3
/* 813AFEE4 | 4B FB 29 8D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AFEE8 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813AFEEC | 38 00 00 16 */	li r0, 0x16
/* 813AFEF0 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 813AFEF4 | 48 00 00 24 */	b .L_813AFF18
.L_813AFEF8:
/* 813AFEF8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813AFEFC | 3C 80 81 65 */	lis r4, lbl_8164E000@ha
/* 813AFF00 | C0 3F 02 90 */	lfs f1, 0x290(r31)
/* 813AFF04 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813AFF08 | 38 84 E0 00 */	addi r4, r4, lbl_8164E000@l
/* 813AFF0C | 4B FB B7 95 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 813AFF10 | 38 00 00 14 */	li r0, 0x14
/* 813AFF14 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_813AFF18:
/* 813AFF18 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813AFF1C | 80 9F 02 98 */	lwz r4, 0x298(r31)
/* 813AFF20 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813AFF24 | 38 A0 00 00 */	li r5, 0x0
/* 813AFF28 | 80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 813AFF2C | 4B F9 45 55 */	bl changeType__Q23ipl7PointerFii
/* 813AFF30 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813AFF34 | 38 80 00 01 */	li r4, 0x1
/* 813AFF38 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813AFF3C | 48 16 23 DD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813AFF40 | 7C 7D 1B 78 */	mr r29, r3
/* 813AFF44 | 4B FB 29 2D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AFF48 | 38 00 00 01 */	li r0, 0x1
/* 813AFF4C | 38 80 00 05 */	li r4, 0x5
/* 813AFF50 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813AFF54 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813AFF58 | 48 05 B1 E1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813AFF5C | 4B FE D2 A5 */	bl enableBtn__Q33ipl5scene6ButtonFv
/* 813AFF60 | 38 00 00 00 */	li r0, 0x0
/* 813AFF64 | 3B A0 00 00 */	li r29, 0x0
/* 813AFF68 | 98 1F 02 B8 */	stb r0, 0x2b8(r31)
/* 813AFF6C | 48 00 00 10 */	b .L_813AFF7C
.L_813AFF70:
/* 813AFF70 | 7F A3 EB 78 */	mr r3, r29
/* 813AFF74 | 38 80 00 01 */	li r4, 0x1
/* 813AFF78 | 48 00 24 A1 */	bl initCursorAnim__Q33ipl5scene10ChannelObjFb
.L_813AFF7C:
/* 813AFF7C | 7F A4 EB 78 */	mr r4, r29
/* 813AFF80 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813AFF84 | 48 16 23 59 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813AFF88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AFF8C | 7C 7D 1B 78 */	mr r29, r3
/* 813AFF90 | 40 82 FF E0 */	bne .L_813AFF70
/* 813AFF94 | 3B A0 00 00 */	li r29, 0x0
.L_813AFF98:
/* 813AFF98 | 7F E3 FB 78 */	mr r3, r31
/* 813AFF9C | 7F A4 EB 78 */	mr r4, r29
/* 813AFFA0 | 4B FF DF A9 */	bl getChannelBasePane__Q33ipl5scene13ChannelSelectFi
/* 813AFFA4 | 7C 64 1B 78 */	mr r4, r3
/* 813AFFA8 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 813AFFAC | 4B FB B2 6D */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813AFFB0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813AFFB4 | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 813AFFB8 | 41 80 FF E0 */	blt .L_813AFF98
/* 813AFFBC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813AFFC0 | 48 24 95 55 */	bl _restgpr_29
/* 813AFFC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813AFFC8 | 7C 08 03 A6 */	mtlr r0
/* 813AFFCC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813AFFD0 | 4E 80 00 20 */	blr
.endfn finishDrag__Q33ipl5scene13ChannelSelectFv

# .text:0x5B08 | 0x813AFFD4 | size: 0x80
# ipl::scene::ChannelSelect::isReleasableArea(int, int)
.fn isReleasableArea__Q33ipl5scene13ChannelSelectFii, global
/* 813AFFD4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813AFFD8 | 41 80 00 10 */	blt .L_813AFFE8
/* 813AFFDC | 80 03 00 CC */	lwz r0, 0xcc(r3)
/* 813AFFE0 | 7C 04 00 00 */	cmpw r4, r0
/* 813AFFE4 | 41 80 00 0C */	blt .L_813AFFF0
.L_813AFFE8:
/* 813AFFE8 | 38 60 00 00 */	li r3, 0x0
/* 813AFFEC | 4E 80 00 20 */	blr
.L_813AFFF0:
/* 813AFFF0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813AFFF4 | 41 80 00 0C */	blt .L_813B0000
/* 813AFFF8 | 2C 05 00 0C */	cmpwi r5, 0xc
/* 813AFFFC | 41 80 00 0C */	blt .L_813B0008
.L_813B0000:
/* 813B0000 | 38 60 00 00 */	li r3, 0x0
/* 813B0004 | 4E 80 00 20 */	blr
.L_813B0008:
/* 813B0008 | 80 03 02 9C */	lwz r0, 0x29c(r3)
/* 813B000C | 7C 04 00 00 */	cmpw r4, r0
/* 813B0010 | 40 82 00 18 */	bne .L_813B0028
/* 813B0014 | 80 03 02 A0 */	lwz r0, 0x2a0(r3)
/* 813B0018 | 7C 05 00 00 */	cmpw r5, r0
/* 813B001C | 40 82 00 0C */	bne .L_813B0028
/* 813B0020 | 38 60 00 01 */	li r3, 0x1
/* 813B0024 | 4E 80 00 20 */	blr
.L_813B0028:
/* 813B0028 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813B002C | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813B0030 | 1C 64 05 40 */	mulli r3, r4, 0x540
/* 813B0034 | 80 86 00 84 */	lwz r4, 0x84(r6)
/* 813B0038 | 1C 05 00 70 */	mulli r0, r5, 0x70
/* 813B003C | 7C 64 1A 14 */	add r3, r4, r3
/* 813B0040 | 7C 63 02 14 */	add r3, r3, r0
/* 813B0044 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 813B0048 | 7C 00 00 34 */	cntlzw r0, r0
/* 813B004C | 54 03 D9 7E */	srwi r3, r0, 5
/* 813B0050 | 4E 80 00 20 */	blr
.endfn isReleasableArea__Q33ipl5scene13ChannelSelectFii

# .text:0x5B88 | 0x813B0054 | size: 0x164
# ipl::scene::ChannelSelect::moveDrag()
.fn moveDrag__Q33ipl5scene13ChannelSelectFv, global
/* 813B0054 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813B0058 | 7C 08 02 A6 */	mflr r0
/* 813B005C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813B0060 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813B0064 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813B0068 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813B006C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B0070 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B0074 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 813B0078 | 7C 7E 1B 78 */	mr r30, r3
/* 813B007C | 80 83 02 98 */	lwz r4, 0x298(r3)
/* 813B0080 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813B0084 | 4B F8 78 05 */	bl getController__Q33ipl10controller7ManagerFi
/* 813B0088 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B008C | 41 82 01 0C */	beq .L_813B0198
/* 813B0090 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813B0094 | 80 9E 02 98 */	lwz r4, 0x298(r30)
/* 813B0098 | 4B F8 77 F1 */	bl getController__Q33ipl10controller7ManagerFi
/* 813B009C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B00A0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813B00A4 | 7D 89 03 A6 */	mtctr r12
/* 813B00A8 | 4E 80 04 21 */	bctrl
/* 813B00AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B00B0 | 41 82 00 E8 */	beq .L_813B0198
/* 813B00B4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813B00B8 | 80 9E 02 98 */	lwz r4, 0x298(r30)
/* 813B00BC | 4B F8 77 CD */	bl getController__Q33ipl10controller7ManagerFi
/* 813B00C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B00C4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813B00C8 | 7D 89 03 A6 */	mtctr r12
/* 813B00CC | 4E 80 04 21 */	bctrl
/* 813B00D0 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 813B00D4 | C0 62 85 48 */	lfs f3, lbl_81694948@sda21(r0)
/* 813B00D8 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813B00DC | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813B00E0 | FC 40 00 50 */	fneg f2, f0
/* 813B00E4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813B00E8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813B00EC | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 813B00F0 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813B00F4 | 4B FC 47 91 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813B00F8 | 80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 813B00FC | 38 81 00 20 */	addi r4, r1, 0x20
/* 813B0100 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B0104 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813B0108 | 4B F9 45 7D */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813B010C | 80 9E 00 B0 */	lwz r4, 0xb0(r30)
/* 813B0110 | 38 64 00 04 */	addi r3, r4, 0x4
/* 813B0114 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813B0118 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B011C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813B0120 | 7D 89 03 A6 */	mtctr r12
/* 813B0124 | 4E 80 04 21 */	bctrl
/* 813B0128 | C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 813B012C | C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 813B0130 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 813B0134 | EC 82 00 28 */	fsubs f4, f2, f0
/* 813B0138 | C0 1E 02 90 */	lfs f0, 0x290(r30)
/* 813B013C | C0 42 85 48 */	lfs f2, lbl_81694948@sda21(r0)
/* 813B0140 | EC 61 00 28 */	fsubs f3, f1, f0
/* 813B0144 | EC 04 01 32 */	fmuls f0, f4, f4
/* 813B0148 | D0 81 00 14 */	stfs f4, 0x14(r1)
/* 813B014C | EC 23 00 F2 */	fmuls f1, f3, f3
/* 813B0150 | D0 61 00 10 */	stfs f3, 0x10(r1)
/* 813B0154 | EF E1 00 2A */	fadds f31, f1, f0
/* 813B0158 | FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 813B015C | 4C 40 13 82 */	cror eq, lt, eq
/* 813B0160 | 40 82 00 08 */	bne .L_813B0168
/* 813B0164 | 48 00 00 10 */	b .L_813B0174
.L_813B0168:
/* 813B0168 | FC 20 F8 90 */	fmr f1, f31
/* 813B016C | 48 16 E3 CD */	bl fn_8151E538
/* 813B0170 | EC 5F 00 72 */	fmuls f2, f31, f1
.L_813B0174:
/* 813B0174 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B0178 | 3C 80 81 65 */	lis r4, lbl_8164E014@ha
/* 813B017C | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 813B0180 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B0184 | 38 84 E0 14 */	addi r4, r4, lbl_8164E014@l
/* 813B0188 | 4B FB B7 19 */	bl holdSEwithPosDis__Q33ipl3snd6SystemFPCcff
/* 813B018C | 38 7E 02 90 */	addi r3, r30, 0x290
/* 813B0190 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813B0194 | 4B FB AC 45 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
.L_813B0198:
/* 813B0198 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813B019C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813B01A0 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813B01A4 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813B01A8 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 813B01AC | 7C 08 03 A6 */	mtlr r0
/* 813B01B0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813B01B4 | 4E 80 00 20 */	blr
.endfn moveDrag__Q33ipl5scene13ChannelSelectFv

# .text:0x5CEC | 0x813B01B8 | size: 0x28C
# ipl::scene::ChannelSelectEventHandler::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene25ChannelSelectEventHandlerFUlUlPv, global
/* 813B01B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B01BC | 7C 08 02 A6 */	mflr r0
/* 813B01C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B01C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B01C8 | 48 24 92 F9 */	bl _savegpr_27
/* 813B01CC | 7C 7D 1B 78 */	mr r29, r3
/* 813B01D0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813B01D4 | 7C BB 2B 78 */	mr r27, r5
/* 813B01D8 | 7C DE 33 78 */	mr r30, r6
/* 813B01DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B01E0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813B01E4 | 7D 89 03 A6 */	mtctr r12
/* 813B01E8 | 4E 80 04 21 */	bctrl
/* 813B01EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B01F0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813B01F4 | 7D 89 03 A6 */	mtctr r12
/* 813B01F8 | 4E 80 04 21 */	bctrl
/* 813B01FC | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813B0200 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813B0204 | 38 60 00 00 */	li r3, 0x0
/* 813B0208 | 80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 813B020C | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813B0210 | 40 80 00 24 */	bge .L_813B0234
/* 813B0214 | 2C 00 00 12 */	cmpwi r0, 0x12
/* 813B0218 | 40 80 00 08 */	bge .L_813B0220
/* 813B021C | 48 00 00 18 */	b .L_813B0234
.L_813B0220:
/* 813B0220 | 7C 83 23 78 */	mr r3, r4
/* 813B0224 | 7F E4 FB 78 */	mr r4, r31
/* 813B0228 | 7F 65 DB 78 */	mr r5, r27
/* 813B022C | 7F C6 F3 78 */	mr r6, r30
/* 813B0230 | 4B FF F7 05 */	bl onEventDrag__Q33ipl5scene13ChannelSelectFPCcUlPQ33ipl10controller9Interface
.L_813B0234:
/* 813B0234 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0238 | 40 82 01 F4 */	bne .L_813B042C
/* 813B023C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813B0240 | 7F E4 FB 78 */	mr r4, r31
/* 813B0244 | 4B FF E7 59 */	bl isInChannelPaneNames__Q33ipl5scene13ChannelSelectCFPCc
/* 813B0248 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B024C | 7C 7F 1B 78 */	mr r31, r3
/* 813B0250 | 41 80 01 DC */	blt .L_813B042C
/* 813B0254 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813B0258 | 7F E5 FB 78 */	mr r5, r31
/* 813B025C | 80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 813B0260 | 4B FF CC 19 */	bl searchList__Q33ipl5scene13ChannelSelectCFii
/* 813B0264 | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 813B0268 | 7C 7C 1B 78 */	mr r28, r3
/* 813B026C | 41 82 01 98 */	beq .L_813B0404
/* 813B0270 | 40 80 00 14 */	bge .L_813B0284
/* 813B0274 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813B0278 | 41 82 00 18 */	beq .L_813B0290
/* 813B027C | 40 80 01 30 */	bge .L_813B03AC
/* 813B0280 | 48 00 01 AC */	b .L_813B042C
.L_813B0284:
/* 813B0284 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 813B0288 | 41 82 00 C0 */	beq .L_813B0348
/* 813B028C | 48 00 01 A0 */	b .L_813B042C
.L_813B0290:
/* 813B0290 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813B0294 | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813B0298 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B029C | 40 82 01 90 */	bne .L_813B042C
/* 813B02A0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B02A4 | 41 82 01 88 */	beq .L_813B042C
/* 813B02A8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813B02AC | 7F C3 F3 78 */	mr r3, r30
/* 813B02B0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813B02B4 | 7D 89 03 A6 */	mtctr r12
/* 813B02B8 | 4E 80 04 21 */	bctrl
/* 813B02BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B02C0 | 41 82 01 6C */	beq .L_813B042C
/* 813B02C4 | 83 9D 00 0C */	lwz r28, 0xc(r29)
/* 813B02C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B02CC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B02D0 | 38 80 00 00 */	li r4, 0x0
/* 813B02D4 | 80 1C 00 C8 */	lwz r0, 0xc8(r28)
/* 813B02D8 | 1C BF 00 70 */	mulli r5, r31, 0x70
/* 813B02DC | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B02E0 | 1C 00 05 40 */	mulli r0, r0, 0x540
/* 813B02E4 | 7C 03 02 14 */	add r0, r3, r0
/* 813B02E8 | 7C 60 2A 14 */	add r3, r0, r5
/* 813B02EC | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 813B02F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B02F4 | 41 82 00 14 */	beq .L_813B0308
/* 813B02F8 | 80 03 00 48 */	lwz r0, 0x48(r3)
/* 813B02FC | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813B0300 | 41 82 00 08 */	beq .L_813B0308
/* 813B0304 | 38 80 00 01 */	li r4, 0x1
.L_813B0308:
/* 813B0308 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B030C | 41 82 01 20 */	beq .L_813B042C
/* 813B0310 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B0314 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B0318 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 813B031C | 4B FA 7D 65 */	bl getNumValidChannel__Q33ipl8savedata7ManagerCFv
/* 813B0320 | 80 1C 00 CC */	lwz r0, 0xcc(r28)
/* 813B0324 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 813B0328 | 7C 00 18 40 */	cmplw r0, r3
/* 813B032C | 41 82 01 00 */	beq .L_813B042C
/* 813B0330 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813B0334 | 7F C4 F3 78 */	mr r4, r30
/* 813B0338 | 7F E6 FB 78 */	mr r6, r31
/* 813B033C | 80 A3 00 C8 */	lwz r5, 0xc8(r3)
/* 813B0340 | 4B FF F9 05 */	bl startDrag__Q33ipl5scene13ChannelSelectFPCQ33ipl10controller9Interfaceii
/* 813B0344 | 48 00 00 E8 */	b .L_813B042C
.L_813B0348:
/* 813B0348 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813B034C | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813B0350 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B0354 | 40 82 00 D8 */	bne .L_813B042C
/* 813B0358 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B035C | 41 82 00 D0 */	beq .L_813B042C
/* 813B0360 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813B0364 | 7F C3 F3 78 */	mr r3, r30
/* 813B0368 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813B036C | 7D 89 03 A6 */	mtctr r12
/* 813B0370 | 4E 80 04 21 */	bctrl
/* 813B0374 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0378 | 41 82 00 B4 */	beq .L_813B042C
/* 813B037C | 7F 83 E3 78 */	mr r3, r28
/* 813B0380 | 48 00 1E D1 */	bl isValid__Q33ipl5scene10ChannelObjCFv
/* 813B0384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0388 | 41 82 00 A4 */	beq .L_813B042C
/* 813B038C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813B0390 | 80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 813B0394 | 80 BC 00 20 */	lwz r5, 0x20(r28)
/* 813B0398 | 4B FF D6 FD */	bl startChanTtlScene__Q33ipl5scene13ChannelSelectFii
/* 813B039C | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813B03A0 | 38 80 00 00 */	li r4, 0x0
/* 813B03A4 | 4B FB 1A 7D */	bl setEnable__Q23ipl11TVRCManagerFi
/* 813B03A8 | 48 00 00 84 */	b .L_813B042C
.L_813B03AC:
/* 813B03AC | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813B03B0 | 80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 813B03B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B03B8 | 40 82 00 74 */	bne .L_813B042C
/* 813B03BC | 48 00 1E 95 */	bl isValid__Q33ipl5scene10ChannelObjCFv
/* 813B03C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B03C4 | 41 82 00 68 */	beq .L_813B042C
/* 813B03C8 | 7F 83 E3 78 */	mr r3, r28
/* 813B03CC | 38 80 00 00 */	li r4, 0x0
/* 813B03D0 | 48 00 1E B5 */	bl onPoint__Q33ipl5scene10ChannelObjFi
/* 813B03D4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B03D8 | 3C 80 81 65 */	lis r4, lbl_8164DFCB@ha
/* 813B03DC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B03E0 | 38 84 DF CB */	addi r4, r4, lbl_8164DFCB@l
/* 813B03E4 | 4B FB B0 89 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B03E8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813B03EC | 7F C3 F3 78 */	mr r3, r30
/* 813B03F0 | 38 80 00 01 */	li r4, 0x1
/* 813B03F4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813B03F8 | 7D 89 03 A6 */	mtctr r12
/* 813B03FC | 4E 80 04 21 */	bctrl
/* 813B0400 | 48 00 00 2C */	b .L_813B042C
.L_813B0404:
/* 813B0404 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813B0408 | 80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 813B040C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B0410 | 40 82 00 1C */	bne .L_813B042C
/* 813B0414 | 48 00 1E 3D */	bl isValid__Q33ipl5scene10ChannelObjCFv
/* 813B0418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B041C | 41 82 00 10 */	beq .L_813B042C
/* 813B0420 | 7F 83 E3 78 */	mr r3, r28
/* 813B0424 | 38 80 00 00 */	li r4, 0x0
/* 813B0428 | 48 00 1E F5 */	bl onLeft__Q33ipl5scene10ChannelObjFi
.L_813B042C:
/* 813B042C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B0430 | 48 24 90 DD */	bl _restgpr_27
/* 813B0434 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B0438 | 7C 08 03 A6 */	mtlr r0
/* 813B043C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B0440 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene25ChannelSelectEventHandlerFUlUlPv

# .text:0x5F78 | 0x813B0444 | size: 0x2E4
# ipl::scene::CsChanSelButtonEventHandler::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene27CsChanSelButtonEventHandlerFUlUlPCQ33ipl10controller9Interface, global
/* 813B0444 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B0448 | 7C 08 02 A6 */	mflr r0
/* 813B044C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B0450 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B0454 | 48 24 90 6D */	bl _savegpr_27
/* 813B0458 | 7C 7F 1B 78 */	mr r31, r3
/* 813B045C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813B0460 | 7C BD 2B 78 */	mr r29, r5
/* 813B0464 | 7C DB 33 78 */	mr r27, r6
/* 813B0468 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B046C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813B0470 | 7D 89 03 A6 */	mtctr r12
/* 813B0474 | 4E 80 04 21 */	bctrl
/* 813B0478 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B047C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813B0480 | 7D 89 03 A6 */	mtctr r12
/* 813B0484 | 4E 80 04 21 */	bctrl
/* 813B0488 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813B048C | 3B 83 00 B4 */	addi r28, r3, 0xb4
/* 813B0490 | 80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 813B0494 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 813B0498 | 40 80 00 18 */	bge .L_813B04B0
/* 813B049C | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813B04A0 | 40 80 00 30 */	bge .L_813B04D0
/* 813B04A4 | 2C 00 00 12 */	cmpwi r0, 0x12
/* 813B04A8 | 40 80 00 10 */	bge .L_813B04B8
/* 813B04AC | 48 00 00 24 */	b .L_813B04D0
.L_813B04B0:
/* 813B04B0 | 2C 00 00 1B */	cmpwi r0, 0x1b
/* 813B04B4 | 40 80 00 1C */	bge .L_813B04D0
.L_813B04B8:
/* 813B04B8 | 7C 83 23 78 */	mr r3, r4
/* 813B04BC | 7F 84 E3 78 */	mr r4, r28
/* 813B04C0 | 7F A5 EB 78 */	mr r5, r29
/* 813B04C4 | 7F 66 DB 78 */	mr r6, r27
/* 813B04C8 | 4B FF F6 11 */	bl onEventDerivedDrag__Q33ipl5scene13ChannelSelectFPCcUlPCQ33ipl10controller9Interface
/* 813B04CC | 48 00 02 44 */	b .L_813B0710
.L_813B04D0:
/* 813B04D0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813B04D4 | 41 82 00 08 */	beq .L_813B04DC
/* 813B04D8 | 48 00 02 38 */	b .L_813B0710
.L_813B04DC:
/* 813B04DC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B04E0 | 40 82 02 30 */	bne .L_813B0710
/* 813B04E4 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813B04E8 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813B04EC | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813B04F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B04F4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B04F8 | 7D 89 03 A6 */	mtctr r12
/* 813B04FC | 4E 80 04 21 */	bctrl
/* 813B0500 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B0504 | 40 82 02 0C */	bne .L_813B0710
/* 813B0508 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813B050C | 41 82 02 04 */	beq .L_813B0710
/* 813B0510 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813B0514 | 3C 80 00 10 */	lis r4, 0x10
/* 813B0518 | 7F 63 DB 78 */	mr r3, r27
/* 813B051C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B0520 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813B0524 | 7D 89 03 A6 */	mtctr r12
/* 813B0528 | 4E 80 04 21 */	bctrl
/* 813B052C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0530 | 41 82 01 E0 */	beq .L_813B0710
/* 813B0534 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813B0538 | 38 80 00 05 */	li r4, 0x5
/* 813B053C | 48 05 AB FD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B0540 | 3F C0 81 65 */	lis r30, mscButtonName__Q33ipl5scene6Button@ha
/* 813B0544 | 7C 7B 1B 78 */	mr r27, r3
/* 813B0548 | 80 9E BF 5C */	lwz r4, mscButtonName__Q33ipl5scene6Button@l(r30)
/* 813B054C | 7F 83 E3 78 */	mr r3, r28
/* 813B0550 | 48 25 1F 31 */	bl strcmp
/* 813B0554 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0558 | 40 82 00 90 */	bne .L_813B05E8
/* 813B055C | 88 1D 02 BC */	lbz r0, 0x2bc(r29)
/* 813B0560 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B0564 | 41 82 00 3C */	beq .L_813B05A0
/* 813B0568 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 813B056C | 38 80 00 1B */	li r4, 0x1b
/* 813B0570 | 38 A0 00 B4 */	li r5, 0xb4
/* 813B0574 | 38 C0 00 00 */	li r6, 0x0
/* 813B0578 | 4B F9 5E D5 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813B057C | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813B0580 | 38 00 00 11 */	li r0, 0x11
/* 813B0584 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B0588 | 3C 80 81 65 */	lis r4, lbl_8164E024@ha
/* 813B058C | 90 05 00 C0 */	stw r0, 0xc0(r5)
/* 813B0590 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B0594 | 38 84 E0 24 */	addi r4, r4, lbl_8164E024@l
/* 813B0598 | 4B FB AE D5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B059C | 48 00 01 74 */	b .L_813B0710
.L_813B05A0:
/* 813B05A0 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813B05A4 | 38 60 00 01 */	li r3, 0x1
/* 813B05A8 | 38 00 00 04 */	li r0, 0x4
/* 813B05AC | 98 64 01 84 */	stb r3, 0x184(r4)
/* 813B05B0 | 98 64 01 85 */	stb r3, 0x185(r4)
/* 813B05B4 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813B05B8 | 90 03 00 C0 */	stw r0, 0xc0(r3)
/* 813B05BC | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813B05C0 | 4B FF D3 C1 */	bl tryToStartBoardScene__Q33ipl5scene13ChannelSelectFv
/* 813B05C4 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813B05C8 | 38 80 00 00 */	li r4, 0x0
/* 813B05CC | 4B FB 18 55 */	bl setEnable__Q23ipl11TVRCManagerFi
/* 813B05D0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B05D4 | 3C 80 81 65 */	lis r4, lbl_8164E038@ha
/* 813B05D8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B05DC | 38 84 E0 38 */	addi r4, r4, lbl_8164E038@l
/* 813B05E0 | 4B FB AE 8D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B05E4 | 48 00 01 2C */	b .L_813B0710
.L_813B05E8:
/* 813B05E8 | 3B DE BF 5C */	addi r30, r30, mscButtonName__Q33ipl5scene6Button@l
/* 813B05EC | 7F 83 E3 78 */	mr r3, r28
/* 813B05F0 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 813B05F4 | 48 25 1E 8D */	bl strcmp
/* 813B05F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B05FC | 40 82 00 88 */	bne .L_813B0684
/* 813B0600 | 7F 63 DB 78 */	mr r3, r27
/* 813B0604 | 38 80 00 00 */	li r4, 0x0
/* 813B0608 | 38 A0 00 00 */	li r5, 0x0
/* 813B060C | 4B FE C3 31 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813B0610 | 38 7B 00 70 */	addi r3, r27, 0x70
/* 813B0614 | 38 80 00 00 */	li r4, 0x0
/* 813B0618 | 48 03 AA 15 */	bl fn_813EB02C
/* 813B061C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813B0620 | 38 80 00 15 */	li r4, 0x15
/* 813B0624 | 38 A0 00 00 */	li r5, 0x0
/* 813B0628 | 48 05 99 6D */	bl fn_81409F94
/* 813B062C | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813B0630 | 38 80 00 04 */	li r4, 0x4
/* 813B0634 | 48 05 AB 05 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B0638 | 38 00 00 01 */	li r0, 0x1
/* 813B063C | 98 03 0F B4 */	stb r0, 0xfb4(r3)
/* 813B0640 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813B0644 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0648 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B064C | 7D 89 03 A6 */	mtctr r12
/* 813B0650 | 4E 80 04 21 */	bctrl
/* 813B0654 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813B0658 | 38 80 00 00 */	li r4, 0x0
/* 813B065C | 4B FB 17 C5 */	bl setEnable__Q23ipl11TVRCManagerFi
/* 813B0660 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813B0664 | 38 00 00 06 */	li r0, 0x6
/* 813B0668 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B066C | 3C 80 81 65 */	lis r4, lbl_8164E038@ha
/* 813B0670 | 90 05 00 C0 */	stw r0, 0xc0(r5)
/* 813B0674 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B0678 | 38 84 E0 38 */	addi r4, r4, lbl_8164E038@l
/* 813B067C | 4B FB AD F1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B0680 | 48 00 00 90 */	b .L_813B0710
.L_813B0684:
/* 813B0684 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 813B0688 | 7F 83 E3 78 */	mr r3, r28
/* 813B068C | 48 25 1D F5 */	bl strcmp
/* 813B0690 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0694 | 40 82 00 30 */	bne .L_813B06C4
/* 813B0698 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813B069C | 80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 813B06A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B06A4 | 40 81 00 20 */	ble .L_813B06C4
/* 813B06A8 | 7F 63 DB 78 */	mr r3, r27
/* 813B06AC | 38 80 00 14 */	li r4, 0x14
/* 813B06B0 | 4B FE C4 A9 */	bl iplButton_8139CB58
/* 813B06B4 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813B06B8 | 38 80 00 0A */	li r4, 0xa
/* 813B06BC | 4B FF D1 FD */	bl preparePageScrolling__Q33ipl5scene13ChannelSelectFi
/* 813B06C0 | 48 00 00 50 */	b .L_813B0710
.L_813B06C4:
/* 813B06C4 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 813B06C8 | 7F 83 E3 78 */	mr r3, r28
/* 813B06CC | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 813B06D0 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 813B06D4 | 48 25 1D AD */	bl strcmp
/* 813B06D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B06DC | 40 82 00 34 */	bne .L_813B0710
/* 813B06E0 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813B06E4 | 80 64 00 CC */	lwz r3, 0xcc(r4)
/* 813B06E8 | 80 84 00 C8 */	lwz r4, 0xc8(r4)
/* 813B06EC | 38 03 FF FF */	subi r0, r3, 0x1
/* 813B06F0 | 7C 04 00 00 */	cmpw r4, r0
/* 813B06F4 | 40 80 00 1C */	bge .L_813B0710
/* 813B06F8 | 7F 63 DB 78 */	mr r3, r27
/* 813B06FC | 38 80 00 13 */	li r4, 0x13
/* 813B0700 | 4B FE C4 59 */	bl iplButton_8139CB58
/* 813B0704 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813B0708 | 38 80 00 0B */	li r4, 0xb
/* 813B070C | 4B FF D1 AD */	bl preparePageScrolling__Q33ipl5scene13ChannelSelectFi
.L_813B0710:
/* 813B0710 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B0714 | 48 24 8D F9 */	bl _restgpr_27
/* 813B0718 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B071C | 7C 08 03 A6 */	mtlr r0
/* 813B0720 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B0724 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene27CsChanSelButtonEventHandlerFUlUlPCQ33ipl10controller9Interface

# .text:0x625C | 0x813B0728 | size: 0x184
.fn iplChannelSelect_813B0728, global
/* 813B0728 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B072C | 7C 08 02 A6 */	mflr r0
/* 813B0730 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B0734 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B0738 | 48 24 8D 8D */	bl _savegpr_28
/* 813B073C | 7C 7C 1B 78 */	mr r28, r3
/* 813B0740 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813B0744 | 7C BE 2B 78 */	mr r30, r5
/* 813B0748 | 7C DD 33 78 */	mr r29, r6
/* 813B074C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0750 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813B0754 | 7D 89 03 A6 */	mtctr r12
/* 813B0758 | 4E 80 04 21 */	bctrl
/* 813B075C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0760 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813B0764 | 7D 89 03 A6 */	mtctr r12
/* 813B0768 | 4E 80 04 21 */	bctrl
/* 813B076C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B0770 | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813B0774 | 41 82 00 08 */	beq .L_813B077C
/* 813B0778 | 48 00 01 1C */	b .L_813B0894
.L_813B077C:
/* 813B077C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813B0780 | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 813B0784 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B0788 | 40 82 01 0C */	bne .L_813B0894
/* 813B078C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B0790 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B0794 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813B0798 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B079C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B07A0 | 7D 89 03 A6 */	mtctr r12
/* 813B07A4 | 4E 80 04 21 */	bctrl
/* 813B07A8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B07AC | 40 82 00 E8 */	bne .L_813B0894
/* 813B07B0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813B07B4 | 41 82 00 E0 */	beq .L_813B0894
/* 813B07B8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813B07BC | 3C 80 00 10 */	lis r4, 0x10
/* 813B07C0 | 7F A3 EB 78 */	mr r3, r29
/* 813B07C4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B07C8 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813B07CC | 7D 89 03 A6 */	mtctr r12
/* 813B07D0 | 4E 80 04 21 */	bctrl
/* 813B07D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B07D8 | 41 82 00 BC */	beq .L_813B0894
/* 813B07DC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B07E0 | 38 80 00 05 */	li r4, 0x5
/* 813B07E4 | 48 05 A9 55 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B07E8 | 7C 7D 1B 78 */	mr r29, r3
/* 813B07EC | 38 60 00 00 */	li r3, 0x0
/* 813B07F0 | 48 00 00 BD */	bl iplChannelSelect_813B08AC
/* 813B07F4 | 7C 64 1B 78 */	mr r4, r3
/* 813B07F8 | 7F C3 F3 78 */	mr r3, r30
/* 813B07FC | 48 25 1C 85 */	bl strcmp
/* 813B0800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0804 | 40 82 00 90 */	bne .L_813B0894
/* 813B0808 | 7F A3 EB 78 */	mr r3, r29
/* 813B080C | 38 80 00 2B */	li r4, 0x2b
/* 813B0810 | 4B FE C3 49 */	bl iplButton_8139CB58
/* 813B0814 | 7F A3 EB 78 */	mr r3, r29
/* 813B0818 | 38 80 00 00 */	li r4, 0x0
/* 813B081C | 38 A0 00 00 */	li r5, 0x0
/* 813B0820 | 4B FE C1 1D */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813B0824 | 38 7D 00 70 */	addi r3, r29, 0x70
/* 813B0828 | 38 80 00 00 */	li r4, 0x0
/* 813B082C | 48 03 A8 01 */	bl fn_813EB02C
/* 813B0830 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813B0834 | 38 80 00 24 */	li r4, 0x24
/* 813B0838 | 38 A0 00 00 */	li r5, 0x0
/* 813B083C | 48 05 97 59 */	bl fn_81409F94
/* 813B0840 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B0844 | 38 80 00 04 */	li r4, 0x4
/* 813B0848 | 48 05 A8 F1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B084C | 38 00 00 01 */	li r0, 0x1
/* 813B0850 | 98 03 0F B4 */	stb r0, 0xfb4(r3)
/* 813B0854 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813B0858 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B085C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B0860 | 7D 89 03 A6 */	mtctr r12
/* 813B0864 | 4E 80 04 21 */	bctrl
/* 813B0868 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813B086C | 38 80 00 00 */	li r4, 0x0
/* 813B0870 | 4B FB 15 B1 */	bl setEnable__Q23ipl11TVRCManagerFi
/* 813B0874 | 80 BC 00 0C */	lwz r5, 0xc(r28)
/* 813B0878 | 38 00 00 06 */	li r0, 0x6
/* 813B087C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B0880 | 3C 80 81 65 */	lis r4, lbl_8164E038@ha
/* 813B0884 | 90 05 00 C0 */	stw r0, 0xc0(r5)
/* 813B0888 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B088C | 38 84 E0 38 */	addi r4, r4, lbl_8164E038@l
/* 813B0890 | 4B FB AB DD */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813B0894:
/* 813B0894 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B0898 | 48 24 8C 79 */	bl _restgpr_28
/* 813B089C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B08A0 | 7C 08 03 A6 */	mtlr r0
/* 813B08A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B08A8 | 4E 80 00 20 */	blr
.endfn iplChannelSelect_813B0728

# .text:0x63E0 | 0x813B08AC | size: 0x10
.fn iplChannelSelect_813B08AC, global
/* 813B08AC | 54 60 10 3A */	slwi r0, r3, 2
/* 813B08B0 | 38 6D 8E F4 */	li r3, lbl_81696F34@sda21
/* 813B08B4 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813B08B8 | 4E 80 00 20 */	blr
.endfn iplChannelSelect_813B08AC

# .text:0x63F0 | 0x813B08BC | size: 0xC
# ipl::scene::ChannelSelect::startResetting()
.fn startResetting__Q33ipl5scene13ChannelSelectFv, global
/* 813B08BC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B08C0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B08C4 | 4B FB B3 50 */	b resetAllSound__Q33ipl3snd6SystemFv
.endfn startResetting__Q33ipl5scene13ChannelSelectFv

# .text:0x63FC | 0x813B08C8 | size: 0x40
# ipl::math::HermiteIntp<ipl::math::VEC3>::~HermiteIntp()
.fn "__dt__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>Fv", weak
/* 813B08C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B08CC | 7C 08 02 A6 */	mflr r0
/* 813B08D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B08D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B08D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B08DC | 7C 7F 1B 78 */	mr r31, r3
/* 813B08E0 | 41 82 00 10 */	beq .L_813B08F0
/* 813B08E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B08E8 | 40 81 00 08 */	ble .L_813B08F0
/* 813B08EC | 48 24 77 F9 */	bl __dl__FPv
.L_813B08F0:
/* 813B08F0 | 7F E3 FB 78 */	mr r3, r31
/* 813B08F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B08F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B08FC | 7C 08 03 A6 */	mtlr r0
/* 813B0900 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B0904 | 4E 80 00 20 */	blr
.endfn "__dt__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>Fv"

# .text:0x643C | 0x813B0908 | size: 0x8
.fn "@20@__dt__Q33ipl5scene13ChannelSelectFv", global
/* 813B0908 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813B090C | 4B FF 9E A8 */	b __dt__Q33ipl5scene13ChannelSelectFv
.endfn "@20@__dt__Q33ipl5scene13ChannelSelectFv"

# 0x8160FFA8..0x8160FFB8 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x8160FFA8 | size: 0x10
.obj lbl_8160FFA8, global
	.4byte 0x42800000
	.4byte 0x42400000
	.4byte 0x42AA0000
	.4byte 0x42400000
.endobj lbl_8160FFA8

# 0x8164D978..0x8164E1D8 | size: 0x860
.data
.balign 8

# .data:0x0 | 0x8164D978 | size: 0x9
.obj lbl_8164D978, global
	.string "N_Ch_a04"
.endobj lbl_8164D978

# .data:0x9 | 0x8164D981 | size: 0x9
.obj lbl_8164D981, global
	.string "N_Ch_a08"
.endobj lbl_8164D981

# .data:0x12 | 0x8164D98A | size: 0x9
.obj lbl_8164D98A, global
	.string "N_Ch_a12"
.endobj lbl_8164D98A

# .data:0x1B | 0x8164D993 | size: 0x9
.obj lbl_8164D993, global
	.string "N_Ch_b01"
.endobj lbl_8164D993

# .data:0x24 | 0x8164D99C | size: 0x9
.obj lbl_8164D99C, global
	.string "N_Ch_b02"
.endobj lbl_8164D99C

# .data:0x2D | 0x8164D9A5 | size: 0x9
.obj lbl_8164D9A5, global
	.string "N_Ch_b03"
.endobj lbl_8164D9A5

# .data:0x36 | 0x8164D9AE | size: 0x9
.obj lbl_8164D9AE, global
	.string "N_Ch_b04"
.endobj lbl_8164D9AE

# .data:0x3F | 0x8164D9B7 | size: 0x9
.obj lbl_8164D9B7, global
	.string "N_Ch_b05"
.endobj lbl_8164D9B7

# .data:0x48 | 0x8164D9C0 | size: 0x9
.obj lbl_8164D9C0, global
	.string "N_Ch_b06"
.endobj lbl_8164D9C0

# .data:0x51 | 0x8164D9C9 | size: 0x9
.obj lbl_8164D9C9, global
	.string "N_Ch_b07"
.endobj lbl_8164D9C9

# .data:0x5A | 0x8164D9D2 | size: 0x9
.obj lbl_8164D9D2, global
	.string "N_Ch_b08"
.endobj lbl_8164D9D2

# .data:0x63 | 0x8164D9DB | size: 0x9
.obj lbl_8164D9DB, global
	.string "N_Ch_b09"
.endobj lbl_8164D9DB

# .data:0x6C | 0x8164D9E4 | size: 0x9
.obj lbl_8164D9E4, global
	.string "N_Ch_b10"
.endobj lbl_8164D9E4

# .data:0x75 | 0x8164D9ED | size: 0x9
.obj lbl_8164D9ED, global
	.string "N_Ch_b11"
.endobj lbl_8164D9ED

# .data:0x7E | 0x8164D9F6 | size: 0x9
.obj lbl_8164D9F6, global
	.string "N_Ch_b12"
.endobj lbl_8164D9F6

# .data:0x87 | 0x8164D9FF | size: 0x9
.obj lbl_8164D9FF, global
	.string "N_Ch_c01"
.endobj lbl_8164D9FF

# .data:0x90 | 0x8164DA08 | size: 0x9
.obj lbl_8164DA08, global
	.string "N_Ch_c02"
.endobj lbl_8164DA08

# .data:0x99 | 0x8164DA11 | size: 0x9
.obj lbl_8164DA11, global
	.string "N_Ch_c03"
.endobj lbl_8164DA11

# .data:0xA2 | 0x8164DA1A | size: 0x9
.obj lbl_8164DA1A, global
	.string "N_Ch_c04"
.endobj lbl_8164DA1A

# .data:0xAB | 0x8164DA23 | size: 0x9
.obj lbl_8164DA23, global
	.string "N_Ch_c05"
.endobj lbl_8164DA23

# .data:0xB4 | 0x8164DA2C | size: 0x9
.obj lbl_8164DA2C, global
	.string "N_Ch_c06"
.endobj lbl_8164DA2C

# .data:0xBD | 0x8164DA35 | size: 0x9
.obj lbl_8164DA35, global
	.string "N_Ch_c07"
.endobj lbl_8164DA35

# .data:0xC6 | 0x8164DA3E | size: 0x9
.obj lbl_8164DA3E, global
	.string "N_Ch_c08"
.endobj lbl_8164DA3E

# .data:0xCF | 0x8164DA47 | size: 0x9
.obj lbl_8164DA47, global
	.string "N_Ch_c09"
.endobj lbl_8164DA47

# .data:0xD8 | 0x8164DA50 | size: 0x9
.obj lbl_8164DA50, global
	.string "N_Ch_c10"
.endobj lbl_8164DA50

# .data:0xE1 | 0x8164DA59 | size: 0x9
.obj lbl_8164DA59, global
	.string "N_Ch_c11"
.endobj lbl_8164DA59

# .data:0xEA | 0x8164DA62 | size: 0x9
.obj lbl_8164DA62, global
	.string "N_Ch_c12"
.endobj lbl_8164DA62

# .data:0xF3 | 0x8164DA6B | size: 0x9
.obj lbl_8164DA6B, global
	.string "N_Ch_d01"
.endobj lbl_8164DA6B

# .data:0xFC | 0x8164DA74 | size: 0x9
.obj lbl_8164DA74, global
	.string "N_Ch_d02"
.endobj lbl_8164DA74

# .data:0x105 | 0x8164DA7D | size: 0x9
.obj lbl_8164DA7D, global
	.string "N_Ch_d03"
.endobj lbl_8164DA7D

# .data:0x10E | 0x8164DA86 | size: 0x9
.obj lbl_8164DA86, global
	.string "N_Ch_d04"
.endobj lbl_8164DA86

# .data:0x117 | 0x8164DA8F | size: 0x9
.obj lbl_8164DA8F, global
	.string "N_Ch_d05"
.endobj lbl_8164DA8F

# .data:0x120 | 0x8164DA98 | size: 0x9
.obj lbl_8164DA98, global
	.string "N_Ch_d06"
.endobj lbl_8164DA98

# .data:0x129 | 0x8164DAA1 | size: 0x9
.obj lbl_8164DAA1, global
	.string "N_Ch_d07"
.endobj lbl_8164DAA1

# .data:0x132 | 0x8164DAAA | size: 0x9
.obj lbl_8164DAAA, global
	.string "N_Ch_d08"
.endobj lbl_8164DAAA

# .data:0x13B | 0x8164DAB3 | size: 0x9
.obj lbl_8164DAB3, global
	.string "N_Ch_d09"
.endobj lbl_8164DAB3

# .data:0x144 | 0x8164DABC | size: 0x9
.obj lbl_8164DABC, global
	.string "N_Ch_d10"
.endobj lbl_8164DABC

# .data:0x14D | 0x8164DAC5 | size: 0x9
.obj lbl_8164DAC5, global
	.string "N_Ch_d11"
.endobj lbl_8164DAC5

# .data:0x156 | 0x8164DACE | size: 0x9
.obj lbl_8164DACE, global
	.string "N_Ch_d12"
.endobj lbl_8164DACE

# .data:0x15F | 0x8164DAD7 | size: 0x9
.obj lbl_8164DAD7, global
	.string "N_Ch_e01"
.endobj lbl_8164DAD7

# .data:0x168 | 0x8164DAE0 | size: 0x9
.obj lbl_8164DAE0, global
	.string "N_Ch_e05"
.endobj lbl_8164DAE0

# .data:0x171 | 0x8164DAE9 | size: 0xB
.obj lbl_8164DAE9, global
	.4byte 0x4E5F4368
	.4byte 0x5F653039
	.byte 0x00, 0x00, 0x00
.endobj lbl_8164DAE9

# .data:0x17C | 0x8164DAF4 | size: 0xF0
.obj lbl_8164DAF4, global
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_8164D978
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_8164D981
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_8164D98A
	.4byte lbl_8164D993
	.4byte lbl_8164D99C
	.4byte lbl_8164D9A5
	.4byte lbl_8164D9AE
	.4byte lbl_8164D9B7
	.4byte lbl_8164D9C0
	.4byte lbl_8164D9C9
	.4byte lbl_8164D9D2
	.4byte lbl_8164D9DB
	.4byte lbl_8164D9E4
	.4byte lbl_8164D9ED
	.4byte lbl_8164D9F6
	.4byte lbl_8164D9FF
	.4byte lbl_8164DA08
	.4byte lbl_8164DA11
	.4byte lbl_8164DA1A
	.4byte lbl_8164DA23
	.4byte lbl_8164DA2C
	.4byte lbl_8164DA35
	.4byte lbl_8164DA3E
	.4byte lbl_8164DA47
	.4byte lbl_8164DA50
	.4byte lbl_8164DA59
	.4byte lbl_8164DA62
	.4byte lbl_8164DA6B
	.4byte lbl_8164DA74
	.4byte lbl_8164DA7D
	.4byte lbl_8164DA86
	.4byte lbl_8164DA8F
	.4byte lbl_8164DA98
	.4byte lbl_8164DAA1
	.4byte lbl_8164DAAA
	.4byte lbl_8164DAB3
	.4byte lbl_8164DABC
	.4byte lbl_8164DAC5
	.4byte lbl_8164DACE
	.4byte lbl_8164DAD7
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_8164DAE0
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_8164DAE9
	.4byte lbl_816968B0
	.4byte lbl_816968B0
	.4byte lbl_816968B0
.endobj lbl_8164DAF4

# .data:0x26C | 0x8164DBE4 | size: 0xA
.obj lbl_8164DBE4, global
	.string "BaseMask0"
.endobj lbl_8164DBE4

# .data:0x276 | 0x8164DBEE | size: 0xA
.obj lbl_8164DBEE, global
	.string "BaseMask1"
.endobj lbl_8164DBEE

# .data:0x280 | 0x8164DBF8 | size: 0xA
.obj lbl_8164DBF8, global
	.string "BaseMask2"
.endobj lbl_8164DBF8

# .data:0x28A | 0x8164DC02 | size: 0xA
.obj lbl_8164DC02, global
	.string "BaseMask3"
.endobj lbl_8164DC02

# .data:0x294 | 0x8164DC0C | size: 0xC
.obj lbl_8164DC0C, global
	.4byte 0x42617365
	.4byte 0x4D61736B
	.4byte 0x34000000
.endobj lbl_8164DC0C

# .data:0x2A0 | 0x8164DC18 | size: 0x14
.obj lbl_8164DC18, global
	.4byte lbl_8164DBE4
	.4byte lbl_8164DBEE
	.4byte lbl_8164DBF8
	.4byte lbl_8164DC02
	.4byte lbl_8164DC0C
.endobj lbl_8164DC18

# .data:0x2B4 | 0x8164DC2C | size: 0xB
.obj lbl_8164DC2C, global
	.string "Picture_00"
.endobj lbl_8164DC2C

# .data:0x2BF | 0x8164DC37 | size: 0xB
.obj lbl_8164DC37, global
	.string "Picture_01"
.endobj lbl_8164DC37

# .data:0x2CA | 0x8164DC42 | size: 0xB
.obj lbl_8164DC42, global
	.string "Picture_02"
.endobj lbl_8164DC42

# .data:0x2D5 | 0x8164DC4D | size: 0xB
.obj lbl_8164DC4D, global
	.string "Picture_03"
.endobj lbl_8164DC4D

# .data:0x2E0 | 0x8164DC58 | size: 0x20
.obj lbl_8164DC58, global
	.4byte 0x50696374
	.4byte 0x7572655F
	.4byte 0x30340000
	.4byte lbl_8164DC2C
	.4byte lbl_8164DC37
	.4byte lbl_8164DC42
	.4byte lbl_8164DC4D
	.4byte lbl_8164DC58
.endobj lbl_8164DC58

# .data:0x300 | 0x8164DC78 | size: 0x14
.obj lbl_8164DC78, global
	.4byte lbl_816968B1
	.4byte lbl_816968B7
	.4byte lbl_816968BD
	.4byte lbl_816968C3
	.4byte lbl_816968C9
.endobj lbl_8164DC78

# .data:0x314 | 0x8164DC8C | size: 0x9
.obj lbl_8164DC8C, global
	.string "N_Clock0"
.endobj lbl_8164DC8C

# .data:0x31D | 0x8164DC95 | size: 0x9
.obj lbl_8164DC95, global
	.string "N_Clock1"
.endobj lbl_8164DC95

# .data:0x326 | 0x8164DC9E | size: 0xA
.obj lbl_8164DC9E, global
	.4byte 0x4E5F436C
	.4byte 0x6F636B32
	.2byte 0x0000
.endobj lbl_8164DC9E

# .data:0x330 | 0x8164DCA8 | size: 0xC
.obj lbl_8164DCA8, global
	.4byte lbl_8164DC8C
	.4byte lbl_8164DC95
	.4byte lbl_8164DC9E
.endobj lbl_8164DCA8

# .data:0x33C | 0x8164DCB4 | size: 0xC
.obj lbl_8164DCB4, global
	.string "chanSel.ash"
.endobj lbl_8164DCB4

# .data:0x348 | 0x8164DCC0 | size: 0x1F
.obj lbl_8164DCC0, global
	.4byte 0x6469736B
	.4byte 0x5468756D
	.4byte 0x2E617368
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F574949
	.4byte 0x5F535441
	.byte 0x52, 0x54, 0x00
.endobj lbl_8164DCC0

# .data:0x367 | 0x8164DCDF | size: 0x35
.obj lbl_8164DCDF, global
	.4byte 0x5749504C
	.4byte 0x5F42474D
	.4byte 0x5F4D454E
	.4byte 0x55005749
	.4byte 0x504C5F53
	.4byte 0x455F5344
	.4byte 0x43415244
	.4byte 0x5F494E00
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x53444341
	.4byte 0x52445F4F
	.4byte 0x55540000
	.byte 0x00
.endobj lbl_8164DCDF

# .data:0x39C | 0x8164DD14 | size: 0x6C
.obj jumptable_8164DD14, local
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF10
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAE88
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF10
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF10
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEA0
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF10
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF10
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEA8
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF10
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEB0
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAE90
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAE90
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAE98
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAE98
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEB8
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF10
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEC4
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAECC
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAED4
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEDC
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEE4
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEEC
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEF4
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAEFC
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF04
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF0C
	.rel calcNormal__Q33ipl5scene13ChannelSelectFv, .L_813AAF0C
.endobj jumptable_8164DD14

# .data:0x408 | 0x8164DD80 | size: 0x37
.obj lbl_8164DD80, global
	.4byte 0x2F746974
	.4byte 0x6C652F25
	.4byte 0x3038782F
	.4byte 0x25303878
	.4byte 0x2F646174
	.4byte 0x612F006D
	.4byte 0x795F4970
	.4byte 0x6C546F70
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x00436861
	.4byte 0x6E676554
	.4byte 0x65783136
	.byte 0x78, 0x39, 0x00
.endobj lbl_8164DD80

# .data:0x43F | 0x8164DDB7 | size: 0xAD
.obj lbl_8164DDB7, global
	.4byte 0x50696374
	.4byte 0x7572655F
	.4byte 0x3136006D
	.4byte 0x795F4970
	.4byte 0x6C546F70
	.4byte 0x5F612E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4469736B
	.4byte 0x43685F62
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x795F4469
	.4byte 0x736B4368
	.4byte 0x5F622E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x47434963
	.4byte 0x6F6E5F61
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x795F4743
	.4byte 0x49636F6E
	.4byte 0x5F612E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4469736B
	.4byte 0x43685F49
	.4byte 0x6E2E6272
	.4byte 0x6C797400
	.4byte 0x6D795F44
	.4byte 0x69736B43
	.4byte 0x685F496E
	.4byte 0x5F446973
	.4byte 0x6B496E2E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F446973
	.4byte 0x6B43685F
	.4byte 0x496E5F44
	.4byte 0x69736B4F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.byte 0x00
.endobj lbl_8164DDB7

# .data:0x4EC | 0x8164DE64 | size: 0x9
.obj lbl_8164DE64, global
	.string "N_GCIcon"
.endobj lbl_8164DE64

# .data:0x4F5 | 0x8164DE6D | size: 0x13
.obj lbl_8164DE6D, global
	.4byte 0x4E5F4469
	.4byte 0x73635570
	.4byte 0x64617465
	.4byte 0x49636F6E
	.byte 0x00, 0x00, 0x00
.endobj lbl_8164DE6D

# .data:0x508 | 0x8164DE80 | size: 0x1C
.obj jumptable_8164DE80, local
	.rel updateDiskState__Q33ipl5scene13ChannelSelectFv, .L_813ACF94
	.rel updateDiskState__Q33ipl5scene13ChannelSelectFv, .L_813AD164
	.rel updateDiskState__Q33ipl5scene13ChannelSelectFv, .L_813AD1CC
	.rel updateDiskState__Q33ipl5scene13ChannelSelectFv, .L_813AD210
	.rel updateDiskState__Q33ipl5scene13ChannelSelectFv, .L_813AD254
	.rel updateDiskState__Q33ipl5scene13ChannelSelectFv, .L_813AD270
	.rel updateDiskState__Q33ipl5scene13ChannelSelectFv, .L_813AD2A0
.endobj jumptable_8164DE80

# .data:0x524 | 0x8164DE9C | size: 0xB
.obj lbl_8164DE9C, global
	.string "WSD_SELECT"
.endobj lbl_8164DE9C

# .data:0x52F | 0x8164DEA7 | size: 0x10
.obj lbl_8164DEA7, global
	.string "WIPL_SE_BT_PUSH"
.endobj lbl_8164DEA7

# .data:0x53F | 0x8164DEB7 | size: 0x114
.obj lbl_8164DEB7, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43485F53
	.4byte 0x454C4543
	.4byte 0x54006D79
	.4byte 0x5F49706C
	.4byte 0x546F705F
	.4byte 0x622E6272
	.4byte 0x6C797400
	.4byte 0x6D795F49
	.4byte 0x706C546F
	.4byte 0x705F622E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F54564D
	.4byte 0x61736B5F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x6D795F54
	.4byte 0x564D6173
	.4byte 0x6B5F615F
	.4byte 0x41706561
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x50696374
	.4byte 0x7572655F
	.4byte 0x3030006D
	.4byte 0x795F5456
	.4byte 0x4D61736B
	.4byte 0x5F615F4C
	.4byte 0x6F73742E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F545653
	.4byte 0x68616465
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x006D795F
	.4byte 0x54565368
	.4byte 0x6164655F
	.4byte 0x615F4170
	.4byte 0x6561722E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F545653
	.4byte 0x68616465
	.4byte 0x5F615F4C
	.4byte 0x6F73742E
	.4byte 0x62726C61
	.4byte 0x6E003478
	.4byte 0x335F6475
	.4byte 0x6D6D7900
	.4byte 0x6D795F54
	.4byte 0x56417065
	.4byte 0x61725F61
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x795F5456
	.4byte 0x41706561
	.4byte 0x725F615F
	.4byte 0x41706561
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F54
	.4byte 0x56417065
	.4byte 0x61725F61
	.4byte 0x5F4C6F73
	.4byte 0x742E6272
	.4byte 0x6C616E00
.endobj lbl_8164DEB7

# .data:0x653 | 0x8164DFCB | size: 0x16
.obj lbl_8164DFCB, global
	.string "WIPL_SE_CH_TARGETTING"
.endobj lbl_8164DFCB

# .data:0x669 | 0x8164DFE1 | size: 0x10
.obj lbl_8164DFE1, global
	.string "WIPL_SE_CH_HOLD"
.endobj lbl_8164DFE1

# .data:0x679 | 0x8164DFF1 | size: 0xF
.obj lbl_8164DFF1, global
	.string "WIPL_SE_CH_SET"
.endobj lbl_8164DFF1

# .data:0x688 | 0x8164E000 | size: 0x14
.obj lbl_8164E000, global
	.string "WIPL_SE_CH_NOT_MOVE"
.endobj lbl_8164E000

# .data:0x69C | 0x8164E014 | size: 0x10
.obj lbl_8164E014, global
	.string "WIPL_SE_CH_DRAG"
.endobj lbl_8164E014

# .data:0x6AC | 0x8164E024 | size: 0x14
.obj lbl_8164E024, global
	.string "WIPL_SE_GRAY_BUTTON"
.endobj lbl_8164E024

# .data:0x6C0 | 0x8164E038 | size: 0x10
.obj lbl_8164E038, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x44450000
.endobj lbl_8164E038

# .data:0x6D0 | 0x8164E048 | size: 0x20
# ipl::math::HermiteIntp<ipl::math::VEC3>::__vtable
.obj "__vt__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>Fv"
	.4byte calc__Q33ipl7utility15FrameControllerFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj "__vt__Q33ipl4math29HermiteIntp<Q33ipl4math4VEC3>"

# .data:0x6F0 | 0x8164E068 | size: 0x1C
.obj lbl_8164E068, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte fn_813EB51C
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte iplChannelSelect_813B0728
.endobj lbl_8164E068

# .data:0x70C | 0x8164E084 | size: 0x1C
# ipl::scene::CsChanSelButtonEventHandler::__vtable
.obj __vt__Q33ipl5scene27CsChanSelButtonEventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEventDerived__Q33ipl5scene27CsChanSelButtonEventHandlerFUlUlPCQ33ipl10controller9Interface
.endobj __vt__Q33ipl5scene27CsChanSelButtonEventHandler

# .data:0x728 | 0x8164E0A0 | size: 0x18
# ipl::scene::ChannelSelectEventHandler::__vtable
.obj __vt__Q33ipl5scene25ChannelSelectEventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene25ChannelSelectEventHandlerFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene25ChannelSelectEventHandler

# .data:0x740 | 0x8164E0B8 | size: 0x120
# ipl::scene::ChannelSelect::__vtable
.obj __vt__Q33ipl5scene13ChannelSelect, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene13ChannelSelectFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene13ChannelSelectFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene13ChannelSelectFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene13ChannelSelectFv
	.4byte create__Q33ipl5scene13ChannelSelectFv
	.4byte fn_8140B254
	.4byte draw__Q33ipl5scene13ChannelSelectFv
	.4byte destroy__Q33ipl5scene13ChannelSelectFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene13ChannelSelectFv
	.4byte calcCommon__Q33ipl5scene13ChannelSelectFv
	.4byte calcFadein__Q33ipl5scene13ChannelSelectFv
	.4byte calcNormal__Q33ipl5scene13ChannelSelectFv
	.4byte calcFadeout__Q33ipl5scene13ChannelSelectFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene13ChannelSelect

# 0x81694948..0x816949A0 | size: 0x58
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694948 | size: 0x4
.obj lbl_81694948, global
	.float 0
.endobj lbl_81694948

# .sdata2:0x4 | 0x8169494C | size: 0x4
.obj lbl_8169494C, global
	.float 1
.endobj lbl_8169494C

# .sdata2:0x8 | 0x81694950 | size: 0x1
.obj lbl_81694950, global
	.byte 0x00
.endobj lbl_81694950

# .sdata2:0x9 | 0x81694951 | size: 0x1
.obj lbl_81694951, global
	.byte 0x00
.endobj lbl_81694951

# .sdata2:0xA | 0x81694952 | size: 0x1
.obj lbl_81694952, global
	.byte 0x00
.endobj lbl_81694952

# .sdata2:0xB | 0x81694953 | size: 0x1
.obj lbl_81694953, global
	.byte 0xFF
.endobj lbl_81694953

# .sdata2:0xC | 0x81694954 | size: 0x4
.obj lbl_81694954, global
	.float 100
.endobj lbl_81694954

# .sdata2:0x10 | 0x81694958 | size: 0x4
.obj lbl_81694958, global
	.float 120
.endobj lbl_81694958

# .sdata2:0x14 | 0x8169495C | size: 0x4
.obj lbl_8169495C, global
	.float 28
.endobj lbl_8169495C

# .sdata2:0x18 | 0x81694960 | size: 0x4
.obj lbl_81694960, global
	.float 2
.endobj lbl_81694960

# .sdata2:0x1C | 0x81694964 | size: 0x4
.obj lbl_81694964, global
	.float 3
.endobj lbl_81694964

# .sdata2:0x20 | 0x81694968 | size: 0x4
.obj lbl_81694968, global
	.float 20
.endobj lbl_81694968

# .sdata2:0x24 | 0x8169496C | size: 0x4
.obj lbl_8169496C, global
	.float 40
.endobj lbl_8169496C

# .sdata2:0x28 | 0x81694970 | size: 0x4
.obj lbl_81694970, global
	.float 60
.endobj lbl_81694970

# .sdata2:0x2C | 0x81694974 | size: 0x4
.obj lbl_81694974, global
	.float 70
.endobj lbl_81694974

# .sdata2:0x30 | 0x81694978 | size: 0x4
.obj lbl_81694978, global
	.float 90
.endobj lbl_81694978

# .sdata2:0x34 | 0x8169497C | size: 0x4
.obj lbl_8169497C, global
	.float 200
.endobj lbl_8169497C

# .sdata2:0x38 | 0x81694980 | size: 0x4
.obj lbl_81694980, global
	.float 228
.endobj lbl_81694980

# .sdata2:0x3C | 0x81694984 | size: 0x4
.obj lbl_81694984, global
	.float -100
.endobj lbl_81694984

# .sdata2:0x40 | 0x81694988 | size: 0x4
.obj lbl_81694988, global
	.float 0.5
.endobj lbl_81694988

# .sdata2:0x44 | 0x8169498C | size: 0x4
.obj lbl_8169498C, global
	.float 1705
.endobj lbl_8169498C

# .sdata2:0x48 | 0x81694990 | size: 0x8
.obj lbl_81694990, global
	.double 4503599627370496
.endobj lbl_81694990

# .sdata2:0x50 | 0x81694998 | size: 0x8
.obj lbl_81694998, global
	.double 4503601774854144
.endobj lbl_81694998

# 0x816968B0..0x81696900 | size: 0x50
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816968B0 | size: 0x1
.obj lbl_816968B0, global
	.byte 0x00
.endobj lbl_816968B0

# .sdata:0x1 | 0x816968B1 | size: 0x6
.obj lbl_816968B1, global
	.string "Edge0"
.endobj lbl_816968B1

# .sdata:0x7 | 0x816968B7 | size: 0x6
.obj lbl_816968B7, global
	.string "Edge1"
.endobj lbl_816968B7

# .sdata:0xD | 0x816968BD | size: 0x6
.obj lbl_816968BD, global
	.string "Edge2"
.endobj lbl_816968BD

# .sdata:0x13 | 0x816968C3 | size: 0x6
.obj lbl_816968C3, global
	.string "Edge3"
.endobj lbl_816968C3

# .sdata:0x19 | 0x816968C9 | size: 0x6
.obj lbl_816968C9, global
	.string "Edge4"
.endobj lbl_816968C9

# .sdata:0x1F | 0x816968CF | size: 0x9
.obj lbl_816968CF, global
	.4byte 0x43684D61
	.4byte 0x736B0000
	.byte 0x00
.endobj lbl_816968CF

# .sdata:0x28 | 0x816968D8 | size: 0x4
.obj lbl_816968D8, global
	.4byte lbl_816968CF
.endobj lbl_816968D8

# .sdata:0x2C | 0x816968DC | size: 0x4
.obj lbl_816968DC, global
	.string "arc"
.endobj lbl_816968DC

# .sdata:0x30 | 0x816968E0 | size: 0x4
.obj lbl_816968E0, global
	.float 255
.endobj lbl_816968E0

# .sdata:0x34 | 0x816968E4 | size: 0x4
.obj lbl_816968E4, global
	.float 0
.endobj lbl_816968E4

# .sdata:0x38 | 0x816968E8 | size: 0x5
.obj lbl_816968E8, global
	.string "16x9"
.endobj lbl_816968E8

# .sdata:0x3D | 0x816968ED | size: 0x7
.obj lbl_816968ED, global
	.string "DiskIn"
.endobj lbl_816968ED

# .sdata:0x44 | 0x816968F4 | size: 0x1
.obj lbl_816968F4, global
	.byte 0x00
.endobj lbl_816968F4

# .sdata:0x45 | 0x816968F5 | size: 0xB
.obj lbl_816968F5, global
	.4byte 0x34783300
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj lbl_816968F5

# 0x81698B58..0x81698B60 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698B58 | size: 0x8
# ipl::scene::ChannelSelect::msInitFlag
.obj msInitFlag__Q33ipl5scene13ChannelSelect, global
	.skip 0x8
.endobj msInitFlag__Q33ipl5scene13ChannelSelect
