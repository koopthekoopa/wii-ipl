.include "macros.inc"
.file "iplAddress.cpp"

# 0x81381660..0x81387414 | size: 0x5DB4
.text
.balign 4

# .text:0x0 | 0x81381660 | size: 0x13C
# ipl::scene::Address::Address(EGG::Heap*, int)
.fn __ct__Q33ipl5scene7AddressFPQ23EGG4Heapi, global
/* 81381660 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81381664 | 7C 08 02 A6 */	mflr r0
/* 81381668 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138166C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81381670 | 48 27 7E 51 */	bl _savegpr_27
/* 81381674 | 7C 7F 1B 78 */	mr r31, r3
/* 81381678 | 7C BB 2B 78 */	mr r27, r5
/* 8138167C | 48 08 9B 8D */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 81381680 | 3C A0 81 64 */	lis r5, __vt__Q33ipl5scene7Address@ha
/* 81381684 | 3B 80 00 00 */	li r28, 0x0
/* 81381688 | 38 A5 7B 70 */	addi r5, r5, __vt__Q33ipl5scene7Address@l
/* 8138168C | 39 00 00 01 */	li r8, 0x1
/* 81381690 | 39 45 00 1C */	addi r10, r5, 0x1c
/* 81381694 | 38 00 00 14 */	li r0, 0x14
/* 81381698 | 39 25 00 68 */	addi r9, r5, 0x68
/* 8138169C | 3F A0 81 38 */	lis r29, __ct__Q43ipl5scene7Address6MiiObjFv@ha
/* 813816A0 | 3F C0 81 38 */	lis r30, __dt__Q43ipl5scene7Address6MiiObjFv@ha
/* 813816A4 | 90 BF 00 00 */	stw r5, 0x0(r31)
/* 813816A8 | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 813816AC | 38 9D 68 B4 */	addi r4, r29, __ct__Q43ipl5scene7Address6MiiObjFv@l
/* 813816B0 | 93 9F 00 60 */	stw r28, 0x60(r31)
/* 813816B4 | 38 BE 68 C0 */	addi r5, r30, __dt__Q43ipl5scene7Address6MiiObjFv@l
/* 813816B8 | 38 C0 00 28 */	li r6, 0x28
/* 813816BC | 38 E0 00 05 */	li r7, 0x5
/* 813816C0 | 91 5F 00 14 */	stw r10, 0x14(r31)
/* 813816C4 | 91 3F 00 58 */	stw r9, 0x58(r31)
/* 813816C8 | 93 7F 00 88 */	stw r27, 0x88(r31)
/* 813816CC | 93 9F 00 8C */	stw r28, 0x8c(r31)
/* 813816D0 | 93 9F 00 90 */	stw r28, 0x90(r31)
/* 813816D4 | 93 9F 00 94 */	stw r28, 0x94(r31)
/* 813816D8 | 93 9F 00 98 */	stw r28, 0x98(r31)
/* 813816DC | 93 9F 00 9C */	stw r28, 0x9c(r31)
/* 813816E0 | 91 1F 00 A4 */	stw r8, 0xa4(r31)
/* 813816E4 | 93 9F 00 A8 */	stw r28, 0xa8(r31)
/* 813816E8 | 91 1F 00 AC */	stw r8, 0xac(r31)
/* 813816EC | 93 9F 00 B0 */	stw r28, 0xb0(r31)
/* 813816F0 | 90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 813816F4 | 93 9F 00 B8 */	stw r28, 0xb8(r31)
/* 813816F8 | 93 9F 00 BC */	stw r28, 0xbc(r31)
/* 813816FC | 93 9F 00 C0 */	stw r28, 0xc0(r31)
/* 81381700 | 9B 9F 00 E0 */	stb r28, 0xe0(r31)
/* 81381704 | 48 27 7A FD */	bl __construct_array
/* 81381708 | 38 7F 01 AC */	addi r3, r31, 0x1ac
/* 8138170C | 38 9D 68 B4 */	addi r4, r29, __ct__Q43ipl5scene7Address6MiiObjFv@l
/* 81381710 | 38 BE 68 C0 */	addi r5, r30, __dt__Q43ipl5scene7Address6MiiObjFv@l
/* 81381714 | 38 C0 00 28 */	li r6, 0x28
/* 81381718 | 38 E0 00 05 */	li r7, 0x5
/* 8138171C | 48 27 7A E5 */	bl __construct_array
/* 81381720 | 38 80 00 03 */	li r4, 0x3
/* 81381724 | 38 00 00 05 */	li r0, 0x5
/* 81381728 | 7F 83 E3 78 */	mr r3, r28
/* 8138172C | 90 9F 00 28 */	stw r4, 0x28(r31)
/* 81381730 | 7C 09 03 A6 */	mtctr r0
.L_81381734:
/* 81381734 | 7C 9F 1A 14 */	add r4, r31, r3
/* 81381738 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8138173C | 93 84 00 CC */	stw r28, 0xcc(r4)
/* 81381740 | 42 00 FF F4 */	bdnz .L_81381734
/* 81381744 | 38 00 00 05 */	li r0, 0x5
/* 81381748 | 38 A0 00 00 */	li r5, 0x0
/* 8138174C | 38 80 00 00 */	li r4, 0x0
/* 81381750 | 7C 09 03 A6 */	mtctr r0
.L_81381754:
/* 81381754 | 7C 7F 2A 14 */	add r3, r31, r5
/* 81381758 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8138175C | 98 83 00 C4 */	stb r4, 0xc4(r3)
/* 81381760 | 42 00 FF F4 */	bdnz .L_81381754
/* 81381764 | 38 7F 00 64 */	addi r3, r31, 0x64
/* 81381768 | 38 80 00 00 */	li r4, 0x0
/* 8138176C | 38 A0 00 24 */	li r5, 0x24
/* 81381770 | 4B FA EB C5 */	bl memset
/* 81381774 | 38 00 FF FF */	li r0, -0x1
/* 81381778 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138177C | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 81381780 | 7F E3 FB 78 */	mr r3, r31
/* 81381784 | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 81381788 | 48 27 7D 85 */	bl _restgpr_27
/* 8138178C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81381790 | 7C 08 03 A6 */	mtlr r0
/* 81381794 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81381798 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene7AddressFPQ23EGG4Heapi

# .text:0x13C | 0x8138179C | size: 0x58
# ipl::scene::FaderSceneBase::~FaderSceneBase()
.fn __dt__Q33ipl5scene14FaderSceneBaseFv, global
/* 8138179C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813817A0 | 7C 08 02 A6 */	mflr r0
/* 813817A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813817A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813817AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813817B0 | 7C 9F 23 78 */	mr r31, r4
/* 813817B4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813817B8 | 7C 7E 1B 78 */	mr r30, r3
/* 813817BC | 41 82 00 1C */	beq .L_813817D8
/* 813817C0 | 38 80 00 00 */	li r4, 0x0
/* 813817C4 | 48 08 84 A1 */	bl __dt__Q33ipl5scene4BaseFv
/* 813817C8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813817CC | 40 81 00 0C */	ble .L_813817D8
/* 813817D0 | 7F C3 F3 78 */	mr r3, r30
/* 813817D4 | 48 27 69 11 */	bl __dl__FPv
.L_813817D8:
/* 813817D8 | 7F C3 F3 78 */	mr r3, r30
/* 813817DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813817E0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813817E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813817E8 | 7C 08 03 A6 */	mtlr r0
/* 813817EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813817F0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene14FaderSceneBaseFv

# .text:0x194 | 0x813817F4 | size: 0xC0
# ipl::scene::Address::~Address()
.fn __dt__Q33ipl5scene7AddressFv, global
/* 813817F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813817F8 | 7C 08 02 A6 */	mflr r0
/* 813817FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81381800 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81381804 | 48 27 7C C5 */	bl _savegpr_29
/* 81381808 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138180C | 7C 7D 1B 78 */	mr r29, r3
/* 81381810 | 7C 9E 23 78 */	mr r30, r4
/* 81381814 | 41 82 00 84 */	beq .L_81381898
/* 81381818 | 80 C3 02 74 */	lwz r6, 0x274(r3)
/* 8138181C | 3C A0 81 64 */	lis r5, __vt__Q33ipl5scene7Address@ha
/* 81381820 | 38 A5 7B 70 */	addi r5, r5, __vt__Q33ipl5scene7Address@l
/* 81381824 | 38 85 00 1C */	addi r4, r5, 0x1c
/* 81381828 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8138182C | 38 05 00 68 */	addi r0, r5, 0x68
/* 81381830 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81381834 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 81381838 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 8138183C | 41 82 00 0C */	beq .L_81381848
/* 81381840 | 7C C3 33 78 */	mr r3, r6
/* 81381844 | 48 27 68 A1 */	bl __dl__FPv
.L_81381848:
/* 81381848 | 3F E0 81 38 */	lis r31, __dt__Q43ipl5scene7Address6MiiObjFv@ha
/* 8138184C | 38 7D 01 AC */	addi r3, r29, 0x1ac
/* 81381850 | 38 9F 68 C0 */	addi r4, r31, __dt__Q43ipl5scene7Address6MiiObjFv@l
/* 81381854 | 38 A0 00 28 */	li r5, 0x28
/* 81381858 | 38 C0 00 05 */	li r6, 0x5
/* 8138185C | 48 27 7A 9D */	bl __destroy_arr
/* 81381860 | 38 7D 00 E4 */	addi r3, r29, 0xe4
/* 81381864 | 38 9F 68 C0 */	addi r4, r31, __dt__Q43ipl5scene7Address6MiiObjFv@l
/* 81381868 | 38 A0 00 28 */	li r5, 0x28
/* 8138186C | 38 C0 00 05 */	li r6, 0x5
/* 81381870 | 48 27 7A 89 */	bl __destroy_arr
/* 81381874 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81381878 | 41 82 00 10 */	beq .L_81381888
/* 8138187C | 7F A3 EB 78 */	mr r3, r29
/* 81381880 | 38 80 00 00 */	li r4, 0x0
/* 81381884 | 48 08 83 E1 */	bl __dt__Q33ipl5scene4BaseFv
.L_81381888:
/* 81381888 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138188C | 40 81 00 0C */	ble .L_81381898
/* 81381890 | 7F A3 EB 78 */	mr r3, r29
/* 81381894 | 48 27 68 51 */	bl __dl__FPv
.L_81381898:
/* 81381898 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138189C | 7F A3 EB 78 */	mr r3, r29
/* 813818A0 | 48 27 7C 75 */	bl _restgpr_29
/* 813818A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813818A8 | 7C 08 03 A6 */	mtlr r0
/* 813818AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813818B0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene7AddressFv

# .text:0x254 | 0x813818B4 | size: 0x4
# ipl::scene::Address::prepare()
.fn prepare__Q33ipl5scene7AddressFv, global
/* 813818B4 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene7AddressFv

# .text:0x258 | 0x813818B8 | size: 0x6D0
# ipl::scene::Address::create()
.fn create__Q33ipl5scene7AddressFv, global
/* 813818B8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813818BC | 7C 08 02 A6 */	mflr r0
/* 813818C0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813818C4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813818C8 | 48 27 7B F5 */	bl _savegpr_26
/* 813818CC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813818D0 | 3F E0 81 64 */	lis r31, lbl_81647538@ha
/* 813818D4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813818D8 | 7C 7D 1B 78 */	mr r29, r3
/* 813818DC | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813818E0 | 3B FF 75 38 */	addi r31, r31, lbl_81647538@l
/* 813818E4 | 38 80 00 04 */	li r4, 0x4
/* 813818E8 | 48 08 98 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813818EC | 83 C3 0D 20 */	lwz r30, 0xd20(r3)
/* 813818F0 | 38 00 00 01 */	li r0, 0x1
/* 813818F4 | 38 60 05 80 */	li r3, 0x580
/* 813818F8 | 98 1D 00 E1 */	stb r0, 0xe1(r29)
/* 813818FC | 48 27 67 A1 */	bl __nw__FUl
/* 81381900 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81381904 | 41 82 00 18 */	beq .L_8138191C
/* 81381908 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 8138190C | 7F C5 F3 78 */	mr r5, r30
/* 81381910 | 38 FF 01 D4 */	addi r7, r31, 0x1d4
/* 81381914 | 38 CD 85 80 */	li r6, lbl_816965C0@sda21
/* 81381918 | 4B FE 87 0D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8138191C:
/* 8138191C | 90 7D 00 8C */	stw r3, 0x8c(r29)
/* 81381920 | 38 9F 01 E6 */	addi r4, r31, 0x1e6
/* 81381924 | 38 BF 02 04 */	addi r5, r31, 0x204
/* 81381928 | 38 C0 00 00 */	li r6, 0x0
/* 8138192C | 38 E0 00 01 */	li r7, 0x1
/* 81381930 | 4B FE 8B B1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381934 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381938 | 38 9F 02 0F */	addi r4, r31, 0x20f
/* 8138193C | 38 BF 02 04 */	addi r5, r31, 0x204
/* 81381940 | 38 C0 00 00 */	li r6, 0x0
/* 81381944 | 38 E0 00 00 */	li r7, 0x0
/* 81381948 | 4B FE 8B 99 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138194C | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381950 | 38 9F 02 2E */	addi r4, r31, 0x22e
/* 81381954 | 38 BF 02 04 */	addi r5, r31, 0x204
/* 81381958 | 38 C0 00 00 */	li r6, 0x0
/* 8138195C | 38 E0 00 00 */	li r7, 0x0
/* 81381960 | 4B FE 8B 81 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381964 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381968 | 38 9F 02 4D */	addi r4, r31, 0x24d
/* 8138196C | 38 BF 02 04 */	addi r5, r31, 0x204
/* 81381970 | 38 C0 00 00 */	li r6, 0x0
/* 81381974 | 38 E0 00 00 */	li r7, 0x0
/* 81381978 | 4B FE 8B 69 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8138197C | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381980 | 38 9F 02 6D */	addi r4, r31, 0x26d
/* 81381984 | 88 FD 00 E1 */	lbz r7, 0xe1(r29)
/* 81381988 | 38 BF 02 8A */	addi r5, r31, 0x28a
/* 8138198C | 38 C0 00 00 */	li r6, 0x0
/* 81381990 | 4B FE 8B 51 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381994 | 88 1D 00 E1 */	lbz r0, 0xe1(r29)
/* 81381998 | 38 9F 02 97 */	addi r4, r31, 0x297
/* 8138199C | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 813819A0 | 38 BF 02 B4 */	addi r5, r31, 0x2b4
/* 813819A4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813819A8 | 38 C0 00 00 */	li r6, 0x0
/* 813819AC | 54 07 D9 7E */	srwi r7, r0, 5
/* 813819B0 | 4B FE 8B 31 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813819B4 | 3B 7F 01 70 */	addi r27, r31, 0x170
/* 813819B8 | 3B 40 00 00 */	li r26, 0x0
/* 813819BC | 3B 80 00 00 */	li r28, 0x0
.L_813819C0:
/* 813819C0 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 813819C4 | 38 9F 02 BF */	addi r4, r31, 0x2bf
/* 813819C8 | 7C BB E0 2E */	lwzx r5, r27, r28
/* 813819CC | 38 C0 00 00 */	li r6, 0x0
/* 813819D0 | 38 E0 00 00 */	li r7, 0x0
/* 813819D4 | 4B FE 8B 0D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813819D8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813819DC | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813819E0 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 813819E4 | 41 80 FF DC */	blt .L_813819C0
/* 813819E8 | 3B 7F 01 70 */	addi r27, r31, 0x170
/* 813819EC | 3B 40 00 00 */	li r26, 0x0
/* 813819F0 | 3B 80 00 00 */	li r28, 0x0
.L_813819F4:
/* 813819F4 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 813819F8 | 38 9F 02 D9 */	addi r4, r31, 0x2d9
/* 813819FC | 7C BB E0 2E */	lwzx r5, r27, r28
/* 81381A00 | 38 C0 00 00 */	li r6, 0x0
/* 81381A04 | 38 E0 00 00 */	li r7, 0x0
/* 81381A08 | 4B FE 8A D9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381A0C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381A10 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81381A14 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81381A18 | 41 80 FF DC */	blt .L_813819F4
/* 81381A1C | 3B 7F 01 70 */	addi r27, r31, 0x170
/* 81381A20 | 3B 40 00 00 */	li r26, 0x0
/* 81381A24 | 3B 80 00 00 */	li r28, 0x0
.L_81381A28:
/* 81381A28 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381A2C | 38 9F 02 F4 */	addi r4, r31, 0x2f4
/* 81381A30 | 7C BB E0 2E */	lwzx r5, r27, r28
/* 81381A34 | 38 C0 00 00 */	li r6, 0x0
/* 81381A38 | 38 E0 00 00 */	li r7, 0x0
/* 81381A3C | 4B FE 8A A5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381A40 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381A44 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81381A48 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81381A4C | 41 80 FF DC */	blt .L_81381A28
/* 81381A50 | 3B 7F 01 70 */	addi r27, r31, 0x170
/* 81381A54 | 3B 40 00 00 */	li r26, 0x0
/* 81381A58 | 3B 80 00 00 */	li r28, 0x0
.L_81381A5C:
/* 81381A5C | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381A60 | 38 9F 03 0F */	addi r4, r31, 0x30f
/* 81381A64 | 7C BB E0 2E */	lwzx r5, r27, r28
/* 81381A68 | 38 C0 00 00 */	li r6, 0x0
/* 81381A6C | 38 E0 00 00 */	li r7, 0x0
/* 81381A70 | 4B FE 8A 71 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381A74 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381A78 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81381A7C | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81381A80 | 41 80 FF DC */	blt .L_81381A5C
/* 81381A84 | 3B 7F 01 70 */	addi r27, r31, 0x170
/* 81381A88 | 3B 40 00 00 */	li r26, 0x0
/* 81381A8C | 3B 80 00 00 */	li r28, 0x0
.L_81381A90:
/* 81381A90 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381A94 | 38 9F 03 2D */	addi r4, r31, 0x32d
/* 81381A98 | 7C BB E0 2E */	lwzx r5, r27, r28
/* 81381A9C | 38 C0 00 00 */	li r6, 0x0
/* 81381AA0 | 38 E0 00 00 */	li r7, 0x0
/* 81381AA4 | 4B FE 8A 3D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381AA8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381AAC | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81381AB0 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81381AB4 | 41 80 FF DC */	blt .L_81381A90
/* 81381AB8 | 3B 7F 01 70 */	addi r27, r31, 0x170
/* 81381ABC | 3B 40 00 00 */	li r26, 0x0
/* 81381AC0 | 3B 80 00 00 */	li r28, 0x0
.L_81381AC4:
/* 81381AC4 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381AC8 | 38 9F 03 4C */	addi r4, r31, 0x34c
/* 81381ACC | 7C BB E0 2E */	lwzx r5, r27, r28
/* 81381AD0 | 38 C0 00 00 */	li r6, 0x0
/* 81381AD4 | 38 E0 00 00 */	li r7, 0x0
/* 81381AD8 | 4B FE 8A 09 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381ADC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381AE0 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81381AE4 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81381AE8 | 41 80 FF DC */	blt .L_81381AC4
/* 81381AEC | 3B 7F 01 C0 */	addi r27, r31, 0x1c0
/* 81381AF0 | 3B 40 00 00 */	li r26, 0x0
/* 81381AF4 | 3B 80 00 00 */	li r28, 0x0
.L_81381AF8:
/* 81381AF8 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381AFC | 38 9F 03 6B */	addi r4, r31, 0x36b
/* 81381B00 | 7C BB E0 2E */	lwzx r5, r27, r28
/* 81381B04 | 38 C0 00 00 */	li r6, 0x0
/* 81381B08 | 38 E0 00 00 */	li r7, 0x0
/* 81381B0C | 4B FE 89 D5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381B10 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381B14 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81381B18 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81381B1C | 41 80 FF DC */	blt .L_81381AF8
/* 81381B20 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381B24 | 4B FE 8B 11 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81381B28 | 38 60 05 80 */	li r3, 0x580
/* 81381B2C | 48 27 65 71 */	bl __nw__FUl
/* 81381B30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81381B34 | 41 82 00 18 */	beq .L_81381B4C
/* 81381B38 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 81381B3C | 7F C5 F3 78 */	mr r5, r30
/* 81381B40 | 38 FF 03 88 */	addi r7, r31, 0x388
/* 81381B44 | 38 CD 85 80 */	li r6, lbl_816965C0@sda21
/* 81381B48 | 4B FE 84 DD */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81381B4C:
/* 81381B4C | 90 7D 00 9C */	stw r3, 0x9c(r29)
/* 81381B50 | 38 9F 03 98 */	addi r4, r31, 0x398
/* 81381B54 | 38 BF 03 AE */	addi r5, r31, 0x3ae
/* 81381B58 | 38 C0 00 00 */	li r6, 0x0
/* 81381B5C | 38 E0 00 01 */	li r7, 0x1
/* 81381B60 | 4B FE 88 1D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381B64 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81381B68 | 38 9F 03 B9 */	addi r4, r31, 0x3b9
/* 81381B6C | 38 BF 03 AE */	addi r5, r31, 0x3ae
/* 81381B70 | 38 C0 00 00 */	li r6, 0x0
/* 81381B74 | 38 E0 00 00 */	li r7, 0x0
/* 81381B78 | 4B FE 88 05 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381B7C | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81381B80 | 4B FE 8A B5 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81381B84 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81381B88 | 38 80 00 00 */	li r4, 0x0
/* 81381B8C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81381B90 | 48 19 07 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81381B94 | 4B FE 80 91 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81381B98 | 38 60 05 80 */	li r3, 0x580
/* 81381B9C | 48 27 65 01 */	bl __nw__FUl
/* 81381BA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81381BA4 | 41 82 00 18 */	beq .L_81381BBC
/* 81381BA8 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 81381BAC | 7F C5 F3 78 */	mr r5, r30
/* 81381BB0 | 38 FF 03 CE */	addi r7, r31, 0x3ce
/* 81381BB4 | 38 CD 85 80 */	li r6, lbl_816965C0@sda21
/* 81381BB8 | 4B FE 84 6D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81381BBC:
/* 81381BBC | 90 7D 00 A0 */	stw r3, 0xa0(r29)
/* 81381BC0 | 38 9F 03 E0 */	addi r4, r31, 0x3e0
/* 81381BC4 | 38 AD 85 84 */	li r5, lbl_816965C4@sda21
/* 81381BC8 | 38 C0 00 00 */	li r6, 0x0
/* 81381BCC | 38 E0 00 01 */	li r7, 0x1
/* 81381BD0 | 4B FE 87 AD */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381BD4 | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 81381BD8 | 38 9F 03 FB */	addi r4, r31, 0x3fb
/* 81381BDC | 38 AD 85 84 */	li r5, lbl_816965C4@sda21
/* 81381BE0 | 38 C0 00 00 */	li r6, 0x0
/* 81381BE4 | 38 E0 00 00 */	li r7, 0x0
/* 81381BE8 | 4B FE 87 95 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 81381BEC | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 81381BF0 | 4B FE 8A 45 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81381BF4 | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 81381BF8 | 38 9F 04 17 */	addi r4, r31, 0x417
/* 81381BFC | 38 A0 00 01 */	li r5, 0x1
/* 81381C00 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81381C04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81381C08 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81381C0C | 7D 89 03 A6 */	mtctr r12
/* 81381C10 | 4E 80 04 21 */	bctrl
/* 81381C14 | 4B FC 42 51 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81381C18 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81381C1C | 7C 7A 1B 78 */	mr r26, r3
/* 81381C20 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81381C24 | 38 80 00 4E */	li r4, 0x4e
/* 81381C28 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 81381C2C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81381C30 | 4B FB CB 8D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81381C34 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81381C38 | 7C 64 1B 78 */	mr r4, r3
/* 81381C3C | 7F 43 D3 78 */	mr r3, r26
/* 81381C40 | 38 A0 00 00 */	li r5, 0x0
/* 81381C44 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81381C48 | 7D 89 03 A6 */	mtctr r12
/* 81381C4C | 4E 80 04 21 */	bctrl
/* 81381C50 | 38 60 00 14 */	li r3, 0x14
/* 81381C54 | 48 27 64 49 */	bl __nw__FUl
/* 81381C58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81381C5C | 41 82 00 1C */	beq .L_81381C78
/* 81381C60 | 38 00 00 00 */	li r0, 0x0
/* 81381C64 | 3C 80 81 64 */	lis r4, __vt__Q33ipl5scene12AddressEvent@ha
/* 81381C68 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81381C6C | 38 84 7B 58 */	addi r4, r4, __vt__Q33ipl5scene12AddressEvent@l
/* 81381C70 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81381C74 | 93 A3 00 0C */	stw r29, 0xc(r3)
.L_81381C78:
/* 81381C78 | 90 7D 00 94 */	stw r3, 0x94(r29)
/* 81381C7C | 38 60 00 34 */	li r3, 0x34
/* 81381C80 | 48 27 64 1D */	bl __nw__FUl
/* 81381C84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81381C88 | 7C 7B 1B 78 */	mr r27, r3
/* 81381C8C | 41 82 00 88 */	beq .L_81381D14
/* 81381C90 | 80 BD 00 8C */	lwz r5, 0x8c(r29)
/* 81381C94 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 81381C98 | 80 DD 00 94 */	lwz r6, 0x94(r29)
/* 81381C9C | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 81381CA0 | 38 00 00 00 */	li r0, 0x0
/* 81381CA4 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 81381CA8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81381CAC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81381CB0 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 81381CB4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81381CB8 | 41 82 00 1C */	beq .L_81381CD4
/* 81381CBC | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 81381CC0 | 7C C3 33 78 */	mr r3, r6
/* 81381CC4 | 7F 64 DB 78 */	mr r4, r27
/* 81381CC8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81381CCC | 7D 89 03 A6 */	mtctr r12
/* 81381CD0 | 4E 80 04 21 */	bctrl
.L_81381CD4:
/* 81381CD4 | 38 7B 00 08 */	addi r3, r27, 0x8
/* 81381CD8 | 38 80 00 08 */	li r4, 0x8
/* 81381CDC | 48 19 03 81 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81381CE0 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 81381CE4 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 81381CE8 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 81381CEC | 38 80 00 08 */	li r4, 0x8
/* 81381CF0 | 90 BB 00 00 */	stw r5, 0x0(r27)
/* 81381CF4 | 93 9B 00 24 */	stw r28, 0x24(r27)
/* 81381CF8 | 48 19 03 65 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81381CFC | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 81381D00 | 38 00 00 00 */	li r0, 0x0
/* 81381D04 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 81381D08 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 81381D0C | 90 1B 00 2C */	stw r0, 0x2c(r27)
/* 81381D10 | 98 1B 00 30 */	stb r0, 0x30(r27)
.L_81381D14:
/* 81381D14 | 93 7D 00 98 */	stw r27, 0x98(r29)
/* 81381D18 | 7F 63 DB 78 */	mr r3, r27
/* 81381D1C | 80 9D 00 8C */	lwz r4, 0x8c(r29)
/* 81381D20 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81381D24 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81381D28 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81381D2C | 7D 89 03 A6 */	mtctr r12
/* 81381D30 | 4E 80 04 21 */	bctrl
/* 81381D34 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81381D38 | 38 80 00 00 */	li r4, 0x0
/* 81381D3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81381D40 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81381D44 | 7D 89 03 A6 */	mtctr r12
/* 81381D48 | 4E 80 04 21 */	bctrl
/* 81381D4C | 3B 9F 00 DC */	addi r28, r31, 0xdc
/* 81381D50 | 3B 40 00 00 */	li r26, 0x0
/* 81381D54 | 3B C0 00 00 */	li r30, 0x0
.L_81381D58:
/* 81381D58 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381D5C | 38 A0 00 01 */	li r5, 0x1
/* 81381D60 | 7C 9C F0 2E */	lwzx r4, r28, r30
/* 81381D64 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81381D68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81381D6C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81381D70 | 7D 89 03 A6 */	mtctr r12
/* 81381D74 | 4E 80 04 21 */	bctrl
/* 81381D78 | 7C 64 1B 78 */	mr r4, r3
/* 81381D7C | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81381D80 | 38 A0 00 01 */	li r5, 0x1
/* 81381D84 | 4B FE 94 49 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81381D88 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381D8C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81381D90 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81381D94 | 41 80 FF C4 */	blt .L_81381D58
/* 81381D98 | 3B 9F 01 2C */	addi r28, r31, 0x12c
/* 81381D9C | 3B 40 00 00 */	li r26, 0x0
/* 81381DA0 | 3B C0 00 00 */	li r30, 0x0
.L_81381DA4:
/* 81381DA4 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381DA8 | 38 A0 00 01 */	li r5, 0x1
/* 81381DAC | 7C 9C F0 2E */	lwzx r4, r28, r30
/* 81381DB0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81381DB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81381DB8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81381DBC | 7D 89 03 A6 */	mtctr r12
/* 81381DC0 | 4E 80 04 21 */	bctrl
/* 81381DC4 | 7C 64 1B 78 */	mr r4, r3
/* 81381DC8 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81381DCC | 38 A0 00 01 */	li r5, 0x1
/* 81381DD0 | 4B FE 93 FD */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81381DD4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381DD8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81381DDC | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 81381DE0 | 41 80 FF C4 */	blt .L_81381DA4
/* 81381DE4 | 3B 40 00 00 */	li r26, 0x0
/* 81381DE8 | 3B C0 00 00 */	li r30, 0x0
.L_81381DEC:
/* 81381DEC | 7F 45 D3 78 */	mr r5, r26
/* 81381DF0 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81381DF4 | 38 9F 04 20 */	addi r4, r31, 0x420
/* 81381DF8 | 4C C6 31 82 */	crclr cr1eq
/* 81381DFC | 48 27 EC 85 */	bl sprintf
/* 81381E00 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381E04 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81381E08 | 38 A0 00 01 */	li r5, 0x1
/* 81381E0C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81381E10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81381E14 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81381E18 | 7D 89 03 A6 */	mtctr r12
/* 81381E1C | 4E 80 04 21 */	bctrl
/* 81381E20 | 7C BD F2 14 */	add r5, r29, r30
/* 81381E24 | 7C 64 1B 78 */	mr r4, r3
/* 81381E28 | 38 65 00 E4 */	addi r3, r5, 0xe4
/* 81381E2C | 48 00 4A F9 */	bl init__Q43ipl5scene7Address6MiiObjFPQ34nw4r3lyt4Pane
/* 81381E30 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381E34 | 3B DE 00 28 */	addi r30, r30, 0x28
/* 81381E38 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81381E3C | 41 80 FF B0 */	blt .L_81381DEC
/* 81381E40 | 3B 40 00 00 */	li r26, 0x0
/* 81381E44 | 3B C0 00 00 */	li r30, 0x0
.L_81381E48:
/* 81381E48 | 7F 45 D3 78 */	mr r5, r26
/* 81381E4C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81381E50 | 38 9F 04 2B */	addi r4, r31, 0x42b
/* 81381E54 | 4C C6 31 82 */	crclr cr1eq
/* 81381E58 | 48 27 EC 29 */	bl sprintf
/* 81381E5C | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381E60 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81381E64 | 38 A0 00 01 */	li r5, 0x1
/* 81381E68 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81381E6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81381E70 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81381E74 | 7D 89 03 A6 */	mtctr r12
/* 81381E78 | 4E 80 04 21 */	bctrl
/* 81381E7C | 7C BD F2 14 */	add r5, r29, r30
/* 81381E80 | 7C 64 1B 78 */	mr r4, r3
/* 81381E84 | 38 65 01 AC */	addi r3, r5, 0x1ac
/* 81381E88 | 48 00 4A 9D */	bl init__Q43ipl5scene7Address6MiiObjFPQ34nw4r3lyt4Pane
/* 81381E8C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81381E90 | 3B DE 00 28 */	addi r30, r30, 0x28
/* 81381E94 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81381E98 | 41 80 FF B0 */	blt .L_81381E48
/* 81381E9C | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 81381EA0 | 3B 7F 04 36 */	addi r27, r31, 0x436
/* 81381EA4 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 81381EA8 | 38 80 00 86 */	li r4, 0x86
/* 81381EAC | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 81381EB0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81381EB4 | 4B FB C9 09 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81381EB8 | 7C 65 1B 78 */	mr r5, r3
/* 81381EBC | 7F A3 EB 78 */	mr r3, r29
/* 81381EC0 | 7F 64 DB 78 */	mr r4, r27
/* 81381EC4 | 48 00 25 7D */	bl set_textbox__Q33ipl5scene7AddressFPCcPCw
/* 81381EC8 | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 81381ECC | 3B 7F 04 40 */	addi r27, r31, 0x440
/* 81381ED0 | 38 80 00 42 */	li r4, 0x42
/* 81381ED4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81381ED8 | 4B FB C8 E5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81381EDC | 7C 65 1B 78 */	mr r5, r3
/* 81381EE0 | 7F A3 EB 78 */	mr r3, r29
/* 81381EE4 | 7F 64 DB 78 */	mr r4, r27
/* 81381EE8 | 48 00 25 59 */	bl set_textbox__Q33ipl5scene7AddressFPCcPCw
/* 81381EEC | 3C 60 00 01 */	lis r3, 0x1
/* 81381EF0 | 38 80 00 20 */	li r4, 0x20
/* 81381EF4 | 38 63 9D 80 */	subi r3, r3, 0x6280
/* 81381EF8 | 48 27 61 B1 */	bl __nw__FUli
/* 81381EFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81381F00 | 41 82 00 10 */	beq .L_81381F10
/* 81381F04 | 3C 83 00 01 */	addis r4, r3, 0x1
/* 81381F08 | 38 00 00 00 */	li r0, 0x0
/* 81381F0C | 98 04 9D 78 */	stb r0, -0x6288(r4)
.L_81381F10:
/* 81381F10 | 90 7D 02 74 */	stw r3, 0x274(r29)
/* 81381F14 | 48 00 4E 25 */	bl init__Q33ipl5scene15FriendListCacheFv
/* 81381F18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81381F1C | 41 82 00 18 */	beq .L_81381F34
/* 81381F20 | 7F A3 EB 78 */	mr r3, r29
/* 81381F24 | 48 00 08 E1 */	bl onInitFriendList__Q33ipl5scene7AddressFv
/* 81381F28 | 38 00 00 01 */	li r0, 0x1
/* 81381F2C | 90 1D 00 A4 */	stw r0, 0xa4(r29)
/* 81381F30 | 48 00 00 0C */	b .L_81381F3C
.L_81381F34:
/* 81381F34 | 38 00 00 00 */	li r0, 0x0
/* 81381F38 | 90 1D 00 A4 */	stw r0, 0xa4(r29)
.L_81381F3C:
/* 81381F3C | 38 60 2D 20 */	li r3, 0x2d20
/* 81381F40 | 48 27 61 81 */	bl __nwa__FUl
/* 81381F44 | 90 7D 02 98 */	stw r3, 0x298(r29)
/* 81381F48 | 38 9F 04 4A */	addi r4, r31, 0x44a
/* 81381F4C | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81381F50 | 38 A0 00 01 */	li r5, 0x1
/* 81381F54 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81381F58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81381F5C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81381F60 | 7D 89 03 A6 */	mtctr r12
/* 81381F64 | 4E 80 04 21 */	bctrl
/* 81381F68 | 38 80 00 00 */	li r4, 0x0
/* 81381F6C | 4B FC 24 A9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81381F70 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81381F74 | 48 27 75 95 */	bl _restgpr_26
/* 81381F78 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81381F7C | 7C 08 03 A6 */	mtlr r0
/* 81381F80 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81381F84 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene7AddressFv

# .text:0x928 | 0x81381F88 | size: 0x60
# ipl::scene::Address::calcFadein()
.fn calcFadein__Q33ipl5scene7AddressFv, global
/* 81381F88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81381F8C | 7C 08 02 A6 */	mflr r0
/* 81381F90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81381F94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81381F98 | 7C 7F 1B 78 */	mr r31, r3
/* 81381F9C | 80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 81381FA0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81381FA4 | 41 82 00 1C */	beq .L_81381FC0
/* 81381FA8 | 40 80 00 1C */	bge .L_81381FC4
/* 81381FAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81381FB0 | 40 80 00 08 */	bge .L_81381FB8
/* 81381FB4 | 48 00 00 10 */	b .L_81381FC4
.L_81381FB8:
/* 81381FB8 | 48 00 07 3D */	bl fistt_wait_open__Q33ipl5scene7AddressFv
/* 81381FBC | 48 00 00 08 */	b .L_81381FC4
.L_81381FC0:
/* 81381FC0 | 48 00 07 C1 */	bl fistt_fadein__Q33ipl5scene7AddressFv
.L_81381FC4:
/* 81381FC4 | 80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 81381FC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81381FCC | 38 03 FF FE */	subi r0, r3, 0x2
/* 81381FD0 | 7C 00 00 34 */	cntlzw r0, r0
/* 81381FD4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81381FD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81381FDC | 7C 08 03 A6 */	mtlr r0
/* 81381FE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81381FE4 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene7AddressFv

# .text:0x988 | 0x81381FE8 | size: 0x54
# ipl::scene::Address::initCalcNormal()
.fn initCalcNormal__Q33ipl5scene7AddressFv, global
/* 81381FE8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81381FEC | 7C 08 02 A6 */	mflr r0
/* 81381FF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81381FF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81381FF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81381FFC | 7C 7F 1B 78 */	mr r31, r3
/* 81382000 | 41 82 00 08 */	beq .L_81382008
/* 81382004 | 3B E3 00 58 */	addi r31, r3, 0x58
.L_81382008:
/* 81382008 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138200C | 38 80 00 05 */	li r4, 0x5
/* 81382010 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81382014 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81382018 | 48 08 91 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138201C | 7F E4 FB 78 */	mr r4, r31
/* 81382020 | 38 A0 00 00 */	li r5, 0x0
/* 81382024 | 48 01 A9 19 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81382028 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138202C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81382030 | 7C 08 03 A6 */	mtlr r0
/* 81382034 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81382038 | 4E 80 00 20 */	blr
.endfn initCalcNormal__Q33ipl5scene7AddressFv

# .text:0x9DC | 0x8138203C | size: 0x140
# ipl::scene::Address::calcNormal()
.fn calcNormal__Q33ipl5scene7AddressFv, global
/* 8138203C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81382040 | 7C 08 02 A6 */	mflr r0
/* 81382044 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382048 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138204C | 7C 7F 1B 78 */	mr r31, r3
/* 81382050 | 80 03 00 AC */	lwz r0, 0xac(r3)
/* 81382054 | 28 00 00 19 */	cmplwi r0, 0x19
/* 81382058 | 41 81 01 00 */	bgt .L_81382158
/* 8138205C | 3C 80 81 64 */	lis r4, jumptable_816479A4@ha
/* 81382060 | 54 00 10 3A */	slwi r0, r0, 2
/* 81382064 | 38 84 79 A4 */	addi r4, r4, jumptable_816479A4@l
/* 81382068 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8138206C | 7C 89 03 A6 */	mtctr r4
/* 81382070 | 4E 80 04 20 */	bctr
.L_81382074:
/* 81382074 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81382078 | 3C 80 81 64 */	lis r4, lbl_8164798E@ha
/* 8138207C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81382080 | 38 84 79 8E */	addi r4, r4, lbl_8164798E@l
/* 81382084 | 4B FE 93 E9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81382088 | 7F E3 FB 78 */	mr r3, r31
/* 8138208C | 48 00 38 B5 */	bl onNextPage__Q33ipl5scene7AddressFv
/* 81382090 | 48 00 00 C8 */	b .L_81382158
.L_81382094:
/* 81382094 | 48 00 0A 6D */	bl stt_cover_normal__Q33ipl5scene7AddressFv
/* 81382098 | 48 00 00 C0 */	b .L_81382158
.L_8138209C:
/* 8138209C | 48 00 0B 65 */	bl stt_cover_forward__Q33ipl5scene7AddressFv
/* 813820A0 | 48 00 00 B8 */	b .L_81382158
.L_813820A4:
/* 813820A4 | 48 00 0B E1 */	bl stt_cover_backward__Q33ipl5scene7AddressFv
/* 813820A8 | 48 00 00 B0 */	b .L_81382158
.L_813820AC:
/* 813820AC | 48 00 0C BD */	bl stt_normal__Q33ipl5scene7AddressFv
/* 813820B0 | 48 00 00 A8 */	b .L_81382158
.L_813820B4:
/* 813820B4 | 48 00 0D A9 */	bl stt_forward__Q33ipl5scene7AddressFv
/* 813820B8 | 48 00 00 A0 */	b .L_81382158
.L_813820BC:
/* 813820BC | 48 00 0E 29 */	bl stt_backward__Q33ipl5scene7AddressFv
/* 813820C0 | 48 00 00 98 */	b .L_81382158
.L_813820C4:
/* 813820C4 | 48 00 0F 85 */	bl stt_loop_forward__Q33ipl5scene7AddressFv
/* 813820C8 | 48 00 00 90 */	b .L_81382158
.L_813820CC:
/* 813820CC | 48 00 11 09 */	bl stt_loop_backward__Q33ipl5scene7AddressFv
/* 813820D0 | 48 00 00 88 */	b .L_81382158
.L_813820D4:
/* 813820D4 | 48 00 11 8D */	bl stt_decide__Q33ipl5scene7AddressFv
/* 813820D8 | 48 00 00 80 */	b .L_81382158
.L_813820DC:
/* 813820DC | 48 00 13 35 */	bl stt_drag__Q33ipl5scene7AddressFv
/* 813820E0 | 48 00 00 78 */	b .L_81382158
.L_813820E4:
/* 813820E4 | 48 00 13 71 */	bl stt_release__Q33ipl5scene7AddressFv
/* 813820E8 | 48 00 00 70 */	b .L_81382158
.L_813820EC:
/* 813820EC | 48 00 14 61 */	bl stt_wait_child_cst__Q33ipl5scene7AddressFv
/* 813820F0 | 48 00 00 68 */	b .L_81382158
.L_813820F4:
/* 813820F4 | 48 00 14 F1 */	bl stt_wait_child_dst__Q33ipl5scene7AddressFv
/* 813820F8 | 48 00 00 60 */	b .L_81382158
.L_813820FC:
/* 813820FC | 48 00 15 A1 */	bl stt_wait_child_fadeout__Q33ipl5scene7AddressFv
/* 81382100 | 48 00 00 58 */	b .L_81382158
.L_81382104:
/* 81382104 | 48 00 16 45 */	bl stt_msg_net__Q33ipl5scene7AddressFv
/* 81382108 | 48 00 00 50 */	b .L_81382158
.L_8138210C:
/* 8138210C | 48 00 17 91 */	bl stt_wait_parental__Q33ipl5scene7AddressFv
/* 81382110 | 48 00 00 48 */	b .L_81382158
.L_81382114:
/* 81382114 | 48 00 18 0D */	bl stt_wait_parental_dst__Q33ipl5scene7AddressFv
/* 81382118 | 48 00 00 40 */	b .L_81382158
.L_8138211C:
/* 8138211C | 48 00 19 2D */	bl stt_msg_wc__Q33ipl5scene7AddressFv
/* 81382120 | 48 00 00 38 */	b .L_81382158
.L_81382124:
/* 81382124 | 48 00 1A 79 */	bl stt_wait_parental_wc__Q33ipl5scene7AddressFv
/* 81382128 | 48 00 00 30 */	b .L_81382158
.L_8138212C:
/* 8138212C | 48 00 1A F5 */	bl stt_wait_parental_dst_wc__Q33ipl5scene7AddressFv
/* 81382130 | 48 00 00 28 */	b .L_81382158
.L_81382134:
/* 81382134 | 48 00 1C 15 */	bl stt_msg_nwc24_error__Q33ipl5scene7AddressFv
/* 81382138 | 48 00 00 20 */	b .L_81382158
.L_8138213C:
/* 8138213C | 48 00 1C 9D */	bl stt_msg_fi_full__Q33ipl5scene7AddressFv
/* 81382140 | 48 00 00 18 */	b .L_81382158
.L_81382144:
/* 81382144 | 48 00 1D 25 */	bl stt_msg_parental__Q33ipl5scene7AddressFv
/* 81382148 | 48 00 00 10 */	b .L_81382158
.L_8138214C:
/* 8138214C | 48 00 1D AD */	bl stt_msg_open_failure__Q33ipl5scene7AddressFv
/* 81382150 | 48 00 00 08 */	b .L_81382158
.L_81382154:
/* 81382154 | 48 00 1E D1 */	bl stt_wait_dialog__Q33ipl5scene7AddressFv
.L_81382158:
/* 81382158 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8138215C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81382160 | 38 03 FF E6 */	subi r0, r3, 0x1a
/* 81382164 | 7C 00 00 34 */	cntlzw r0, r0
/* 81382168 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8138216C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81382170 | 7C 08 03 A6 */	mtlr r0
/* 81382174 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81382178 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene7AddressFv

# .text:0xB1C | 0x8138217C | size: 0x3C
# ipl::scene::Address::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene7AddressFv, global
/* 8138217C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81382180 | 7C 08 02 A6 */	mflr r0
/* 81382184 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81382188 | 38 80 00 05 */	li r4, 0x5
/* 8138218C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382190 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81382194 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81382198 | 48 08 8F A1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138219C | 38 80 00 00 */	li r4, 0x0
/* 813821A0 | 38 A0 00 00 */	li r5, 0x0
/* 813821A4 | 48 01 A7 99 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813821A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813821AC | 7C 08 03 A6 */	mtlr r0
/* 813821B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813821B4 | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene7AddressFv

# .text:0xB58 | 0x813821B8 | size: 0xE4
# ipl::scene::Address::calcFadeout()
.fn calcFadeout__Q33ipl5scene7AddressFv, global
/* 813821B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813821BC | 7C 08 02 A6 */	mflr r0
/* 813821C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813821C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813821C8 | 48 27 73 01 */	bl _savegpr_29
/* 813821CC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813821D0 | 7C 7D 1B 78 */	mr r29, r3
/* 813821D4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813821D8 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813821DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813821E0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813821E4 | 7D 89 03 A6 */	mtctr r12
/* 813821E8 | 4E 80 04 21 */	bctrl
/* 813821EC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813821F0 | 40 82 00 74 */	bne .L_81382264
/* 813821F4 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 813821F8 | 3B C0 00 00 */	li r30, 0x0
/* 813821FC | 3B E0 00 00 */	li r31, 0x0
/* 81382200 | 38 80 00 01 */	li r4, 0x1
/* 81382204 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81382208 | 48 19 01 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138220C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81382210 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81382214 | 41 82 00 24 */	beq .L_81382238
/* 81382218 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 8138221C | 38 80 00 03 */	li r4, 0x3
/* 81382220 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81382224 | 48 19 00 F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81382228 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138222C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81382230 | 41 82 00 08 */	beq .L_81382238
/* 81382234 | 3B E0 00 01 */	li r31, 0x1
.L_81382238:
/* 81382238 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8138223C | 41 82 00 44 */	beq .L_81382280
/* 81382240 | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 81382244 | 38 80 00 01 */	li r4, 0x1
/* 81382248 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138224C | 48 19 00 CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81382250 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81382254 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81382258 | 41 82 00 28 */	beq .L_81382280
/* 8138225C | 3B C0 00 01 */	li r30, 0x1
/* 81382260 | 48 00 00 20 */	b .L_81382280
.L_81382264:
/* 81382264 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 81382268 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138226C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81382270 | 7D 89 03 A6 */	mtctr r12
/* 81382274 | 4E 80 04 21 */	bctrl
/* 81382278 | 7C 60 00 34 */	cntlzw r0, r3
/* 8138227C | 54 1E D9 7E */	srwi r30, r0, 5
.L_81382280:
/* 81382280 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81382284 | 7F C3 F3 78 */	mr r3, r30
/* 81382288 | 48 27 72 8D */	bl _restgpr_29
/* 8138228C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81382290 | 7C 08 03 A6 */	mtlr r0
/* 81382294 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81382298 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene7AddressFv

# .text:0xC3C | 0x8138229C | size: 0x40
# ipl::scene::Address::calcCommonAfter()
.fn calcCommonAfter__Q33ipl5scene7AddressFv, global
/* 8138229C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813822A0 | 7C 08 02 A6 */	mflr r0
/* 813822A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813822A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813822AC | 7C 7F 1B 78 */	mr r31, r3
/* 813822B0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 813822B4 | 4B FE 84 51 */	bl calc__Q33ipl6layout6ObjectFv
/* 813822B8 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 813822BC | 4B FE 84 49 */	bl calc__Q33ipl6layout6ObjectFv
/* 813822C0 | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 813822C4 | 4B FE 84 41 */	bl calc__Q33ipl6layout6ObjectFv
/* 813822C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813822CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813822D0 | 7C 08 03 A6 */	mtlr r0
/* 813822D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813822D8 | 4E 80 00 20 */	blr
.endfn calcCommonAfter__Q33ipl5scene7AddressFv

# .text:0xC7C | 0x813822DC | size: 0x3AC
# ipl::scene::Address::draw()
.fn draw__Q33ipl5scene7AddressFv, global
/* 813822DC | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813822E0 | 7C 08 02 A6 */	mflr r0
/* 813822E4 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813822E8 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 813822EC | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 813822F0 | 39 61 00 80 */	addi r11, r1, 0x80
/* 813822F4 | 48 27 71 CD */	bl _savegpr_27
/* 813822F8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813822FC | 3C 00 43 30 */	lis r0, 0x4330
/* 81382300 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81382304 | 3F E0 81 64 */	lis r31, lbl_81647538@ha
/* 81382308 | 80 84 00 64 */	lwz r4, 0x64(r4)
/* 8138230C | 7C 7E 1B 78 */	mr r30, r3
/* 81382310 | 90 01 00 50 */	stw r0, 0x50(r1)
/* 81382314 | 3B FF 75 38 */	addi r31, r31, lbl_81647538@l
/* 81382318 | 80 64 01 00 */	lwz r3, 0x100(r4)
/* 8138231C | 90 01 00 58 */	stw r0, 0x58(r1)
/* 81382320 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81382324 | 40 82 02 F8 */	bne .L_8138261C
/* 81382328 | 38 60 00 00 */	li r3, 0x0
/* 8138232C | 4B FE 07 41 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 81382330 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81382334 | 38 9F 04 D4 */	addi r4, r31, 0x4d4
/* 81382338 | 38 A0 00 01 */	li r5, 0x1
/* 8138233C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81382340 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81382344 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81382348 | 7D 89 03 A6 */	mtctr r12
/* 8138234C | 4E 80 04 21 */	bctrl
/* 81382350 | 83 7E 00 B4 */	lwz r27, 0xb4(r30)
/* 81382354 | 7C 7C 1B 78 */	mr r28, r3
/* 81382358 | CB E2 83 D0 */	lfd f31, lbl_816947D0@sda21(r0)
/* 8138235C | 3B AD AB 10 */	li r29, lbl_81698B50@sda21
/* 81382360 | 48 00 00 88 */	b .L_813823E8
.L_81382364:
/* 81382364 | 6F 60 80 00 */	xoris r0, r27, 0x8000
/* 81382368 | C0 5D 00 04 */	lfs f2, 0x4(r29)
/* 8138236C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81382370 | 7F 83 E3 78 */	mr r3, r28
/* 81382374 | C0 0D AB 10 */	lfs f0, lbl_81698B50@sda21(r0)
/* 81382378 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8138237C | 90 01 00 5C */	stw r0, 0x5c(r1)
/* 81382380 | C8 61 00 50 */	lfd f3, 0x50(r1)
/* 81382384 | C8 21 00 58 */	lfd f1, 0x58(r1)
/* 81382388 | EC 63 F8 28 */	fsubs f3, f3, f31
/* 8138238C | EC 21 F8 28 */	fsubs f1, f1, f31
/* 81382390 | EC 42 00 F2 */	fmuls f2, f2, f3
/* 81382394 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81382398 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8138239C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813823A0 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813823A4 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813823A8 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813823AC | 90 A1 00 28 */	stw r5, 0x28(r1)
/* 813823B0 | 90 A1 00 48 */	stw r5, 0x48(r1)
/* 813823B4 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 813823B8 | 4B FC 20 2D */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 813823BC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813823C0 | 7F 83 E3 78 */	mr r3, r28
/* 813823C4 | 80 9E 00 8C */	lwz r4, 0x8c(r30)
/* 813823C8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813823CC | 38 84 02 98 */	addi r4, r4, 0x298
/* 813823D0 | 7D 89 03 A6 */	mtctr r12
/* 813823D4 | 4E 80 04 21 */	bctrl
/* 813823D8 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813823DC | 7F 84 E3 78 */	mr r4, r28
/* 813823E0 | 4B FE 84 AD */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 813823E4 | 3B 7B FF FF */	subi r27, r27, 0x1
.L_813823E8:
/* 813823E8 | 2C 1B 00 01 */	cmpwi r27, 0x1
/* 813823EC | 40 80 FF 78 */	bge .L_81382364
/* 813823F0 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813823F4 | 38 9F 04 DD */	addi r4, r31, 0x4dd
/* 813823F8 | 4B FE 84 11 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813823FC | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 81382400 | 38 03 FF FB */	subi r0, r3, 0x5
/* 81382404 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81382408 | 41 81 00 10 */	bgt .L_81382418
/* 8138240C | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81382410 | 38 9F 04 E6 */	addi r4, r31, 0x4e6
/* 81382414 | 4B FE 83 F5 */	bl draw__Q33ipl6layout6ObjectFPCc
.L_81382418:
/* 81382418 | 80 1E 00 AC */	lwz r0, 0xac(r30)
/* 8138241C | 3B 60 00 00 */	li r27, 0x0
/* 81382420 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81382424 | 41 82 00 20 */	beq .L_81382444
/* 81382428 | 40 80 00 10 */	bge .L_81382438
/* 8138242C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81382430 | 40 80 00 10 */	bge .L_81382440
/* 81382434 | 48 00 00 10 */	b .L_81382444
.L_81382438:
/* 81382438 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 8138243C | 40 80 00 08 */	bge .L_81382444
.L_81382440:
/* 81382440 | 3B 60 00 01 */	li r27, 0x1
.L_81382444:
/* 81382444 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81382448 | 38 9F 04 EF */	addi r4, r31, 0x4ef
/* 8138244C | 38 A0 00 01 */	li r5, 0x1
/* 81382450 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81382454 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81382458 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138245C | 7D 89 03 A6 */	mtctr r12
/* 81382460 | 4E 80 04 21 */	bctrl
/* 81382464 | CB E2 83 D0 */	lfd f31, lbl_816947D0@sda21(r0)
/* 81382468 | 7C 7C 1B 78 */	mr r28, r3
/* 8138246C | 7F 7D DB 78 */	mr r29, r27
/* 81382470 | 48 00 00 68 */	b .L_813824D8
.L_81382474:
/* 81382474 | 7C 1D 00 D0 */	neg r0, r29
/* 81382478 | 38 6D AB 10 */	li r3, lbl_81698B50@sda21
/* 8138247C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81382480 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81382484 | C8 01 00 50 */	lfd f0, 0x50(r1)
/* 81382488 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 8138248C | 48 00 01 FD */	bl __ml__Q33ipl4math4VEC2CFf
/* 81382490 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 81382494 | 90 81 00 44 */	stw r4, 0x44(r1)
/* 81382498 | 38 81 00 40 */	addi r4, r1, 0x40
/* 8138249C | 90 61 00 20 */	stw r3, 0x20(r1)
/* 813824A0 | 90 61 00 40 */	stw r3, 0x40(r1)
/* 813824A4 | 7F 83 E3 78 */	mr r3, r28
/* 813824A8 | 4B FC 1F 3D */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 813824AC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813824B0 | 7F 83 E3 78 */	mr r3, r28
/* 813824B4 | 80 9E 00 8C */	lwz r4, 0x8c(r30)
/* 813824B8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813824BC | 38 84 02 98 */	addi r4, r4, 0x298
/* 813824C0 | 7D 89 03 A6 */	mtctr r12
/* 813824C4 | 4E 80 04 21 */	bctrl
/* 813824C8 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813824CC | 7F 84 E3 78 */	mr r4, r28
/* 813824D0 | 4B FE 83 BD */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 813824D4 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_813824D8:
/* 813824D8 | 80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 813824DC | 7C 00 DA 14 */	add r0, r0, r27
/* 813824E0 | 7C 1D 00 00 */	cmpw r29, r0
/* 813824E4 | 41 80 FF 90 */	blt .L_81382474
/* 813824E8 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813824EC | 38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 813824F0 | 38 A0 00 01 */	li r5, 0x1
/* 813824F4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813824F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813824FC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81382500 | 7D 89 03 A6 */	mtctr r12
/* 81382504 | 4E 80 04 21 */	bctrl
/* 81382508 | 80 1E 00 AC */	lwz r0, 0xac(r30)
/* 8138250C | 7C 7C 1B 78 */	mr r28, r3
/* 81382510 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81382514 | 40 80 00 88 */	bge .L_8138259C
/* 81382518 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 8138251C | 40 80 00 08 */	bge .L_81382524
/* 81382520 | 48 00 00 7C */	b .L_8138259C
.L_81382524:
/* 81382524 | CB E2 83 D0 */	lfd f31, lbl_816947D0@sda21(r0)
/* 81382528 | 3B 60 00 01 */	li r27, 0x1
.L_8138252C:
/* 8138252C | 7C 1B 00 D0 */	neg r0, r27
/* 81382530 | 38 6D AB 10 */	li r3, lbl_81698B50@sda21
/* 81382534 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81382538 | 90 01 00 5C */	stw r0, 0x5c(r1)
/* 8138253C | C8 01 00 58 */	lfd f0, 0x58(r1)
/* 81382540 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 81382544 | 48 00 01 45 */	bl __ml__Q33ipl4math4VEC2CFf
/* 81382548 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 8138254C | 90 81 00 3C */	stw r4, 0x3c(r1)
/* 81382550 | 38 81 00 38 */	addi r4, r1, 0x38
/* 81382554 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81382558 | 90 61 00 38 */	stw r3, 0x38(r1)
/* 8138255C | 7F 83 E3 78 */	mr r3, r28
/* 81382560 | 4B FC 1E 85 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 81382564 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81382568 | 7F 83 E3 78 */	mr r3, r28
/* 8138256C | 80 9E 00 8C */	lwz r4, 0x8c(r30)
/* 81382570 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81382574 | 38 84 02 98 */	addi r4, r4, 0x298
/* 81382578 | 7D 89 03 A6 */	mtctr r12
/* 8138257C | 4E 80 04 21 */	bctrl
/* 81382580 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81382584 | 7F 84 E3 78 */	mr r4, r28
/* 81382588 | 4B FE 83 05 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 8138258C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81382590 | 2C 1B 00 14 */	cmpwi r27, 0x14
/* 81382594 | 41 80 FF 98 */	blt .L_8138252C
/* 81382598 | 48 00 00 70 */	b .L_81382608
.L_8138259C:
/* 8138259C | 80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 813825A0 | 38 6D AB 10 */	li r3, lbl_81698B50@sda21
/* 813825A4 | C8 22 83 D0 */	lfd f1, lbl_816947D0@sda21(r0)
/* 813825A8 | 7C 00 DA 14 */	add r0, r0, r27
/* 813825AC | 7C 00 00 D0 */	neg r0, r0
/* 813825B0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813825B4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813825B8 | C8 01 00 50 */	lfd f0, 0x50(r1)
/* 813825BC | EC 20 08 28 */	fsubs f1, f0, f1
/* 813825C0 | 48 00 00 C9 */	bl __ml__Q33ipl4math4VEC2CFf
/* 813825C4 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813825C8 | 90 81 00 34 */	stw r4, 0x34(r1)
/* 813825CC | 38 81 00 30 */	addi r4, r1, 0x30
/* 813825D0 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813825D4 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 813825D8 | 7F 83 E3 78 */	mr r3, r28
/* 813825DC | 4B FC 1E 09 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 813825E0 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813825E4 | 7F 83 E3 78 */	mr r3, r28
/* 813825E8 | 80 9E 00 8C */	lwz r4, 0x8c(r30)
/* 813825EC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813825F0 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813825F4 | 7D 89 03 A6 */	mtctr r12
/* 813825F8 | 4E 80 04 21 */	bctrl
/* 813825FC | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81382600 | 38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 81382604 | 4B FE 82 05 */	bl draw__Q33ipl6layout6ObjectFPCc
.L_81382608:
/* 81382608 | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 8138260C | 4B FE 81 91 */	bl draw__Q33ipl6layout6ObjectFv
/* 81382610 | 80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 81382614 | 4B FE 81 89 */	bl draw__Q33ipl6layout6ObjectFv
/* 81382618 | 48 00 00 50 */	b .L_81382668
.L_8138261C:
/* 8138261C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81382620 | 40 82 00 48 */	bne .L_81382668
/* 81382624 | 38 60 00 00 */	li r3, 0x0
/* 81382628 | 4B FE 04 45 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 8138262C | 80 1E 00 AC */	lwz r0, 0xac(r30)
/* 81382630 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81382634 | 41 82 00 34 */	beq .L_81382668
/* 81382638 | 40 80 00 1C */	bge .L_81382654
/* 8138263C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81382640 | 41 82 00 28 */	beq .L_81382668
/* 81382644 | 40 80 00 18 */	bge .L_8138265C
/* 81382648 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138264C | 40 80 00 10 */	bge .L_8138265C
/* 81382650 | 48 00 00 18 */	b .L_81382668
.L_81382654:
/* 81382654 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 81382658 | 40 80 00 10 */	bge .L_81382668
.L_8138265C:
/* 8138265C | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81382660 | 38 9F 04 4A */	addi r4, r31, 0x44a
/* 81382664 | 4B FE 81 A5 */	bl draw__Q33ipl6layout6ObjectFPCc
.L_81382668:
/* 81382668 | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 8138266C | 39 61 00 80 */	addi r11, r1, 0x80
/* 81382670 | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 81382674 | 48 27 6E 99 */	bl _restgpr_27
/* 81382678 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 8138267C | 7C 08 03 A6 */	mtlr r0
/* 81382680 | 38 21 00 90 */	addi r1, r1, 0x90
/* 81382684 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene7AddressFv

# .text:0x1028 | 0x81382688 | size: 0x48
# ipl::math::VEC2::operator*(float) const
.fn __ml__Q33ipl4math4VEC2CFf, global
/* 81382688 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138268C | 7C 08 02 A6 */	mflr r0
/* 81382690 | 7C 64 1B 78 */	mr r4, r3
/* 81382694 | C0 43 00 00 */	lfs f2, 0x0(r3)
/* 81382698 | FC 60 08 90 */	fmr f3, f1
/* 8138269C | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 813826A0 | EC 22 00 72 */	fmuls f1, f2, f1
/* 813826A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813826A8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813826AC | EC 40 00 F2 */	fmuls f2, f0, f3
/* 813826B0 | 4B FB 3E B9 */	bl __ct__Q33ipl4math4VEC2Fff
/* 813826B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813826B8 | 7C 64 1B 78 */	mr r4, r3
/* 813826BC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813826C0 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813826C4 | 7C 08 03 A6 */	mtlr r0
/* 813826C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813826CC | 4E 80 00 20 */	blr
.endfn __ml__Q33ipl4math4VEC2CFf

# .text:0x1070 | 0x813826D0 | size: 0x1C
# nw4r::lyt::Pane::SetTranslate(const nw4r::math::VEC3&)
.fn SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3, weak
/* 813826D0 | C0 44 00 00 */	lfs f2, 0x0(r4)
/* 813826D4 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 813826D8 | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 813826DC | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 813826E0 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 813826E4 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 813826E8 | 4E 80 00 20 */	blr
.endfn SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3

# .text:0x108C | 0x813826EC | size: 0x8
# ipl::scene::Address::destroy()
.fn destroy__Q33ipl5scene7AddressFv, global
/* 813826EC | 80 63 02 74 */	lwz r3, 0x274(r3)
/* 813826F0 | 48 00 47 30 */	b fin__Q33ipl5scene15FriendListCacheFv
.endfn destroy__Q33ipl5scene7AddressFv

# .text:0x1094 | 0x813826F4 | size: 0x8C
# ipl::scene::Address::fistt_wait_open()
.fn fistt_wait_open__Q33ipl5scene7AddressFv, global
/* 813826F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813826F8 | 7C 08 02 A6 */	mflr r0
/* 813826FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382700 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81382704 | 7C 7F 1B 78 */	mr r31, r3
/* 81382708 | 80 63 02 74 */	lwz r3, 0x274(r3)
/* 8138270C | 48 00 46 2D */	bl init__Q33ipl5scene15FriendListCacheFv
/* 81382710 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81382714 | 41 82 00 18 */	beq .L_8138272C
/* 81382718 | 7F E3 FB 78 */	mr r3, r31
/* 8138271C | 48 00 00 E9 */	bl onInitFriendList__Q33ipl5scene7AddressFv
/* 81382720 | 38 00 00 01 */	li r0, 0x1
/* 81382724 | 90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 81382728 | 48 00 00 38 */	b .L_81382760
.L_8138272C:
/* 8138272C | 80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 81382730 | 2C 00 01 2C */	cmpwi r0, 0x12c
/* 81382734 | 41 80 00 2C */	blt .L_81382760
/* 81382738 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138273C | 38 80 01 C6 */	li r4, 0x1c6
/* 81382740 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81382744 | 38 A0 00 2E */	li r5, 0x2e
/* 81382748 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8138274C | 4B FC 3F AD */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 81382750 | 38 60 00 18 */	li r3, 0x18
/* 81382754 | 38 00 00 02 */	li r0, 0x2
/* 81382758 | 90 7F 00 AC */	stw r3, 0xac(r31)
/* 8138275C | 90 1F 00 A4 */	stw r0, 0xa4(r31)
.L_81382760:
/* 81382760 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 81382764 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81382768 | 90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 8138276C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81382770 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81382774 | 7C 08 03 A6 */	mtlr r0
/* 81382778 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138277C | 4E 80 00 20 */	blr
.endfn fistt_wait_open__Q33ipl5scene7AddressFv

# .text:0x1120 | 0x81382780 | size: 0x84
# ipl::scene::Address::fistt_fadein()
.fn fistt_fadein__Q33ipl5scene7AddressFv, global
/* 81382780 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81382784 | 7C 08 02 A6 */	mflr r0
/* 81382788 | 38 80 00 00 */	li r4, 0x0
/* 8138278C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382790 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81382794 | 7C 7F 1B 78 */	mr r31, r3
/* 81382798 | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 8138279C | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813827A0 | 48 18 FB 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813827A4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813827A8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813827AC | 41 82 00 44 */	beq .L_813827F0
/* 813827B0 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 813827B4 | 38 80 00 02 */	li r4, 0x2
/* 813827B8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813827BC | 48 18 FB 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813827C0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813827C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813827C8 | 41 82 00 28 */	beq .L_813827F0
/* 813827CC | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 813827D0 | 38 80 00 00 */	li r4, 0x0
/* 813827D4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813827D8 | 48 18 FB 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813827DC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813827E0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813827E4 | 41 82 00 0C */	beq .L_813827F0
/* 813827E8 | 38 00 00 02 */	li r0, 0x2
/* 813827EC | 90 1F 00 A4 */	stw r0, 0xa4(r31)
.L_813827F0:
/* 813827F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813827F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813827F8 | 7C 08 03 A6 */	mtlr r0
/* 813827FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81382800 | 4E 80 00 20 */	blr
.endfn fistt_fadein__Q33ipl5scene7AddressFv

# .text:0x11A4 | 0x81382804 | size: 0x2FC
# ipl::scene::Address::onInitFriendList()
.fn onInitFriendList__Q33ipl5scene7AddressFv, global
/* 81382804 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81382808 | 7C 08 02 A6 */	mflr r0
/* 8138280C | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81382810 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81382814 | 48 27 6C AD */	bl _savegpr_27
/* 81382818 | 3F E0 81 64 */	lis r31, lbl_81647538@ha
/* 8138281C | 7C 7E 1B 78 */	mr r30, r3
/* 81382820 | 3B FF 75 38 */	addi r31, r31, lbl_81647538@l
/* 81382824 | 38 61 00 38 */	addi r3, r1, 0x38
/* 81382828 | 38 80 00 00 */	li r4, 0x0
/* 8138282C | 38 A0 00 30 */	li r5, 0x30
/* 81382830 | 4B FA DB 05 */	bl memset
/* 81382834 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81382838 | 38 80 00 00 */	li r4, 0x0
/* 8138283C | 38 A0 00 30 */	li r5, 0x30
/* 81382840 | 4B FA DA F5 */	bl memset
/* 81382844 | 80 9E 02 74 */	lwz r4, 0x274(r30)
/* 81382848 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8138284C | 80 A4 7D 68 */	lwz r5, 0x7d68(r4)
/* 81382850 | 80 C4 7D 6C */	lwz r6, 0x7d6c(r4)
/* 81382854 | 4B FE 1B 85 */	bl WiiIdToUTF16__Q33ipl7utility13CharacterCodeFPwUx
/* 81382858 | 38 00 00 04 */	li r0, 0x4
/* 8138285C | 38 E1 00 38 */	addi r7, r1, 0x38
/* 81382860 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81382864 | 38 60 00 00 */	li r3, 0x0
/* 81382868 | 38 A0 00 00 */	li r5, 0x0
/* 8138286C | 38 80 00 00 */	li r4, 0x0
/* 81382870 | 7C 09 03 A6 */	mtctr r0
.L_81382874:
/* 81382874 | 7C 07 22 2E */	lhzx r0, r7, r4
/* 81382878 | 38 84 00 02 */	addi r4, r4, 0x2
/* 8138287C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81382880 | 7C 06 2B 2E */	sthx r0, r6, r5
/* 81382884 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 81382888 | 42 00 FF EC */	bdnz .L_81382874
/* 8138288C | 54 60 08 3C */	slwi r0, r3, 1
/* 81382890 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81382894 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81382898 | 38 80 00 20 */	li r4, 0x20
/* 8138289C | 7C 87 03 2E */	sthx r4, r7, r0
/* 813828A0 | 39 00 00 04 */	li r8, 0x4
/* 813828A4 | 38 C1 00 38 */	addi r6, r1, 0x38
/* 813828A8 | 54 65 08 3C */	slwi r5, r3, 1
/* 813828AC | 38 80 00 08 */	li r4, 0x8
/* 813828B0 | 7D 09 03 A6 */	mtctr r8
.L_813828B4:
/* 813828B4 | 7C 06 22 2E */	lhzx r0, r6, r4
/* 813828B8 | 38 84 00 02 */	addi r4, r4, 0x2
/* 813828BC | 38 63 00 01 */	addi r3, r3, 0x1
/* 813828C0 | 7C 07 2B 2E */	sthx r0, r7, r5
/* 813828C4 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 813828C8 | 42 00 FF EC */	bdnz .L_813828B4
/* 813828CC | 54 64 08 3C */	slwi r4, r3, 1
/* 813828D0 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813828D4 | 38 A0 00 20 */	li r5, 0x20
/* 813828D8 | 38 00 00 04 */	li r0, 0x4
/* 813828DC | 7C A7 23 2E */	sthx r5, r7, r4
/* 813828E0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813828E4 | 38 C1 00 38 */	addi r6, r1, 0x38
/* 813828E8 | 38 80 00 10 */	li r4, 0x10
/* 813828EC | 54 65 08 3C */	slwi r5, r3, 1
/* 813828F0 | 7C 09 03 A6 */	mtctr r0
.L_813828F4:
/* 813828F4 | 7C 06 22 2E */	lhzx r0, r6, r4
/* 813828F8 | 38 84 00 02 */	addi r4, r4, 0x2
/* 813828FC | 38 63 00 01 */	addi r3, r3, 0x1
/* 81382900 | 7C 07 2B 2E */	sthx r0, r7, r5
/* 81382904 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 81382908 | 42 00 FF EC */	bdnz .L_813828F4
/* 8138290C | 54 64 08 3C */	slwi r4, r3, 1
/* 81382910 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81382914 | 38 A0 00 20 */	li r5, 0x20
/* 81382918 | 38 00 00 04 */	li r0, 0x4
/* 8138291C | 7C A6 23 2E */	sthx r5, r6, r4
/* 81382920 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81382924 | 54 64 08 3C */	slwi r4, r3, 1
/* 81382928 | 38 A1 00 38 */	addi r5, r1, 0x38
/* 8138292C | 38 60 00 18 */	li r3, 0x18
/* 81382930 | 7C 09 03 A6 */	mtctr r0
.L_81382934:
/* 81382934 | 7C 05 1A 2E */	lhzx r0, r5, r3
/* 81382938 | 38 63 00 02 */	addi r3, r3, 0x2
/* 8138293C | 7C 06 23 2E */	sthx r0, r6, r4
/* 81382940 | 38 84 00 02 */	addi r4, r4, 0x2
/* 81382944 | 42 00 FF F0 */	bdnz .L_81382934
/* 81382948 | 7F C3 F3 78 */	mr r3, r30
/* 8138294C | 38 9F 05 01 */	addi r4, r31, 0x501
/* 81382950 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81382954 | 48 00 1A ED */	bl set_textbox__Q33ipl5scene7AddressFPCcPCw
/* 81382958 | 80 BE 00 B0 */	lwz r5, 0xb0(r30)
/* 8138295C | 7F C3 F3 78 */	mr r3, r30
/* 81382960 | 38 9F 05 0C */	addi r4, r31, 0x50c
/* 81382964 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81382968 | 48 00 19 CD */	bl set_page_text__Q33ipl5scene7AddressFPCci
/* 8138296C | 3B 9F 00 3C */	addi r28, r31, 0x3c
/* 81382970 | 3B 60 00 00 */	li r27, 0x0
/* 81382974 | 3B E0 00 00 */	li r31, 0x0
/* 81382978 | 3B A0 00 00 */	li r29, 0x0
.L_8138297C:
/* 8138297C | 7C FE FA 14 */	add r7, r30, r31
/* 81382980 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 81382984 | 7F C3 F3 78 */	mr r3, r30
/* 81382988 | 7F 65 DB 78 */	mr r5, r27
/* 8138298C | 7F 66 DB 78 */	mr r6, r27
/* 81382990 | 38 E7 00 E4 */	addi r7, r7, 0xe4
/* 81382994 | 39 00 00 00 */	li r8, 0x0
/* 81382998 | 48 00 17 8D */	bl set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb
/* 8138299C | 7C 7E DA 14 */	add r3, r30, r27
/* 813829A0 | 88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 813829A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813829A8 | 41 82 00 20 */	beq .L_813829C8
/* 813829AC | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813829B0 | 38 1B 00 06 */	addi r0, r27, 0x6
/* 813829B4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813829B8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813829BC | 48 18 F9 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813829C0 | 4B FE 72 65 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813829C4 | 48 00 00 1C */	b .L_813829E0
.L_813829C8:
/* 813829C8 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813829CC | 38 1B 00 15 */	addi r0, r27, 0x15
/* 813829D0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813829D4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813829D8 | 48 18 F9 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813829DC | 4B FE 72 49 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_813829E0:
/* 813829E0 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813829E4 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813829E8 | 28 1B 00 05 */	cmplwi r27, 0x5
/* 813829EC | 3B FF 00 28 */	addi r31, r31, 0x28
/* 813829F0 | 41 80 FF 8C */	blt .L_8138297C
/* 813829F4 | 3B A0 00 00 */	li r29, 0x0
/* 813829F8 | 38 00 00 14 */	li r0, 0x14
/* 813829FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81382A00 | 93 BE 00 B0 */	stw r29, 0xb0(r30)
/* 81382A04 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81382A08 | 38 80 00 05 */	li r4, 0x5
/* 81382A0C | 93 BE 00 B8 */	stw r29, 0xb8(r30)
/* 81382A10 | 90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 81382A14 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81382A18 | 48 08 87 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81382A1C | 7C 7C 1B 78 */	mr r28, r3
/* 81382A20 | 38 80 00 17 */	li r4, 0x17
/* 81382A24 | 48 01 A1 35 */	bl iplButton_8139CB58
/* 81382A28 | 7F 83 E3 78 */	mr r3, r28
/* 81382A2C | 38 80 00 18 */	li r4, 0x18
/* 81382A30 | 48 01 A1 29 */	bl iplButton_8139CB58
/* 81382A34 | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 81382A38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81382A3C | 40 82 00 10 */	bne .L_81382A4C
/* 81382A40 | 38 00 00 01 */	li r0, 0x1
/* 81382A44 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81382A48 | 48 00 00 24 */	b .L_81382A6C
.L_81382A4C:
/* 81382A4C | 80 7E 02 74 */	lwz r3, 0x274(r30)
/* 81382A50 | 80 03 7D 70 */	lwz r0, 0x7d70(r3)
/* 81382A54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81382A58 | 40 82 00 10 */	bne .L_81382A68
/* 81382A5C | 38 00 00 01 */	li r0, 0x1
/* 81382A60 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81382A64 | 48 00 00 08 */	b .L_81382A6C
.L_81382A68:
/* 81382A68 | 93 BE 00 AC */	stw r29, 0xac(r30)
.L_81382A6C:
/* 81382A6C | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 81382A70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81382A74 | 41 82 00 14 */	beq .L_81382A88
/* 81382A78 | 41 80 00 70 */	blt .L_81382AE8
/* 81382A7C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81382A80 | 40 80 00 68 */	bge .L_81382AE8
/* 81382A84 | 48 00 00 28 */	b .L_81382AAC
.L_81382A88:
/* 81382A88 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81382A8C | 38 80 00 00 */	li r4, 0x0
/* 81382A90 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81382A94 | 48 18 F8 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81382A98 | 7C 7C 1B 78 */	mr r28, r3
/* 81382A9C | 4B FD FD D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81382AA0 | 38 00 00 01 */	li r0, 0x1
/* 81382AA4 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 81382AA8 | 48 00 00 40 */	b .L_81382AE8
.L_81382AAC:
/* 81382AAC | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81382AB0 | 38 80 00 02 */	li r4, 0x2
/* 81382AB4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81382AB8 | 48 18 F8 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81382ABC | 7C 7C 1B 78 */	mr r28, r3
/* 81382AC0 | 4B FD FD B1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81382AC4 | 3B A0 00 01 */	li r29, 0x1
/* 81382AC8 | 38 80 00 00 */	li r4, 0x0
/* 81382ACC | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 81382AD0 | 80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 81382AD4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81382AD8 | 48 18 F8 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81382ADC | 7C 7C 1B 78 */	mr r28, r3
/* 81382AE0 | 4B FD FD 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81382AE4 | 93 BC 00 14 */	stw r29, 0x14(r28)
.L_81382AE8:
/* 81382AE8 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81382AEC | 48 27 6A 21 */	bl _restgpr_27
/* 81382AF0 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 81382AF4 | 7C 08 03 A6 */	mtlr r0
/* 81382AF8 | 38 21 00 80 */	addi r1, r1, 0x80
/* 81382AFC | 4E 80 00 20 */	blr
.endfn onInitFriendList__Q33ipl5scene7AddressFv

# .text:0x14A0 | 0x81382B00 | size: 0x100
# ipl::scene::Address::stt_cover_normal()
.fn stt_cover_normal__Q33ipl5scene7AddressFv, global
/* 81382B00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81382B04 | 7C 08 02 A6 */	mflr r0
/* 81382B08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382B0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81382B10 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81382B14 | 7C 7E 1B 78 */	mr r30, r3
/* 81382B18 | 88 03 00 84 */	lbz r0, 0x84(r3)
/* 81382B1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81382B20 | 41 82 00 0C */	beq .L_81382B2C
/* 81382B24 | 48 00 37 F1 */	bl changePage_onDrag__Q33ipl5scene7AddressFv
/* 81382B28 | 48 00 00 30 */	b .L_81382B58
.L_81382B2C:
/* 81382B2C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81382B30 | 38 80 00 05 */	li r4, 0x5
/* 81382B34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81382B38 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81382B3C | 48 08 85 FD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81382B40 | 7C 7F 1B 78 */	mr r31, r3
/* 81382B44 | 48 01 9D D1 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81382B48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81382B4C | 41 82 00 0C */	beq .L_81382B58
/* 81382B50 | 7F E3 FB 78 */	mr r3, r31
/* 81382B54 | 48 01 9A 19 */	bl update__Q33ipl5scene6ButtonFv
.L_81382B58:
/* 81382B58 | 80 1E 00 AC */	lwz r0, 0xac(r30)
/* 81382B5C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81382B60 | 40 82 00 88 */	bne .L_81382BE8
/* 81382B64 | 4B FB 2E 45 */	bl getMasterController__Q23ipl6SystemFv
/* 81382B68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81382B6C | 3C 80 06 00 */	lis r4, 0x600
/* 81382B70 | 38 84 00 10 */	addi r4, r4, 0x10
/* 81382B74 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81382B78 | 7D 89 03 A6 */	mtctr r12
/* 81382B7C | 4E 80 04 21 */	bctrl
/* 81382B80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81382B84 | 41 82 00 24 */	beq .L_81382BA8
/* 81382B88 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81382B8C | 3C 80 81 64 */	lis r4, lbl_8164798E@ha
/* 81382B90 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81382B94 | 38 84 79 8E */	addi r4, r4, lbl_8164798E@l
/* 81382B98 | 4B FE 88 D5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81382B9C | 7F C3 F3 78 */	mr r3, r30
/* 81382BA0 | 48 00 2D A1 */	bl onNextPage__Q33ipl5scene7AddressFv
/* 81382BA4 | 48 00 00 44 */	b .L_81382BE8
.L_81382BA8:
/* 81382BA8 | 4B FB 2E 01 */	bl getMasterController__Q23ipl6SystemFv
/* 81382BAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81382BB0 | 3C 80 30 00 */	lis r4, 0x3000
/* 81382BB4 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 81382BB8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81382BBC | 7D 89 03 A6 */	mtctr r12
/* 81382BC0 | 4E 80 04 21 */	bctrl
/* 81382BC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81382BC8 | 41 82 00 20 */	beq .L_81382BE8
/* 81382BCC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81382BD0 | 3C 80 81 64 */	lis r4, lbl_81647A4D@ha
/* 81382BD4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81382BD8 | 38 84 7A 4D */	addi r4, r4, lbl_81647A4D@l
/* 81382BDC | 4B FE 88 91 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81382BE0 | 7F C3 F3 78 */	mr r3, r30
/* 81382BE4 | 48 00 30 31 */	bl onPreviousPage__Q33ipl5scene7AddressFv
.L_81382BE8:
/* 81382BE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81382BEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81382BF0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81382BF4 | 7C 08 03 A6 */	mtlr r0
/* 81382BF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81382BFC | 4E 80 00 20 */	blr
.endfn stt_cover_normal__Q33ipl5scene7AddressFv

# .text:0x15A0 | 0x81382C00 | size: 0x84
# ipl::scene::Address::stt_cover_forward()
.fn stt_cover_forward__Q33ipl5scene7AddressFv, global
/* 81382C00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81382C04 | 7C 08 02 A6 */	mflr r0
/* 81382C08 | 38 80 00 04 */	li r4, 0x4
/* 81382C0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382C10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81382C14 | 7C 7F 1B 78 */	mr r31, r3
/* 81382C18 | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 81382C1C | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81382C20 | 48 18 F6 F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81382C24 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81382C28 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81382C2C | 41 82 00 30 */	beq .L_81382C5C
/* 81382C30 | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81382C34 | 38 60 00 00 */	li r3, 0x0
/* 81382C38 | 98 7F 00 E1 */	stb r3, 0xe1(r31)
/* 81382C3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81382C40 | 40 82 00 10 */	bne .L_81382C50
/* 81382C44 | 38 00 00 04 */	li r0, 0x4
/* 81382C48 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81382C4C | 48 00 00 24 */	b .L_81382C70
.L_81382C50:
/* 81382C50 | 38 00 00 0A */	li r0, 0xa
/* 81382C54 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81382C58 | 48 00 00 18 */	b .L_81382C70
.L_81382C5C:
/* 81382C5C | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81382C60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81382C64 | 41 82 00 0C */	beq .L_81382C70
/* 81382C68 | 7F E3 FB 78 */	mr r3, r31
/* 81382C6C | 48 00 36 A9 */	bl changePage_onDrag__Q33ipl5scene7AddressFv
.L_81382C70:
/* 81382C70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81382C74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81382C78 | 7C 08 03 A6 */	mtlr r0
/* 81382C7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81382C80 | 4E 80 00 20 */	blr
.endfn stt_cover_forward__Q33ipl5scene7AddressFv

# .text:0x1624 | 0x81382C84 | size: 0xE4
# ipl::scene::Address::stt_cover_backward()
.fn stt_cover_backward__Q33ipl5scene7AddressFv, global
/* 81382C84 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81382C88 | 7C 08 02 A6 */	mflr r0
/* 81382C8C | 38 80 00 04 */	li r4, 0x4
/* 81382C90 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81382C94 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81382C98 | 7C 7F 1B 78 */	mr r31, r3
/* 81382C9C | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 81382CA0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81382CA4 | 48 18 F6 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81382CA8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81382CAC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81382CB0 | 41 82 00 90 */	beq .L_81382D40
/* 81382CB4 | 38 6D AB 10 */	li r3, lbl_81698B50@sda21
/* 81382CB8 | C0 0D AB 10 */	lfs f0, lbl_81698B50@sda21(r0)
/* 81382CBC | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 81382CC0 | 3C 80 81 64 */	lis r4, lbl_81647A61@ha
/* 81382CC4 | FC 00 00 50 */	fneg f0, f0
/* 81382CC8 | 38 84 7A 61 */	addi r4, r4, lbl_81647A61@l
/* 81382CCC | FC 20 08 50 */	fneg f1, f1
/* 81382CD0 | 38 A0 00 01 */	li r5, 0x1
/* 81382CD4 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81382CD8 | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 81382CDC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81382CE0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81382CE4 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81382CE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382CEC | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81382CF0 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81382CF4 | D0 21 00 18 */	stfs f1, 0x18(r1)
/* 81382CF8 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81382CFC | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 81382D00 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81382D04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81382D08 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81382D0C | 7D 89 03 A6 */	mtctr r12
/* 81382D10 | 4E 80 04 21 */	bctrl
/* 81382D14 | 7C 64 1B 78 */	mr r4, r3
/* 81382D18 | 7F E3 FB 78 */	mr r3, r31
/* 81382D1C | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81382D20 | 48 00 13 55 */	bl add_translate__Q33ipl5scene7AddressFPQ34nw4r3lyt4PaneRCQ33ipl4math4VEC2
/* 81382D24 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 81382D28 | 38 80 00 01 */	li r4, 0x1
/* 81382D2C | 98 9F 00 E1 */	stb r4, 0xe1(r31)
/* 81382D30 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81382D34 | 90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 81382D38 | 90 9F 00 AC */	stw r4, 0xac(r31)
/* 81382D3C | 48 00 00 18 */	b .L_81382D54
.L_81382D40:
/* 81382D40 | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81382D44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81382D48 | 41 82 00 0C */	beq .L_81382D54
/* 81382D4C | 7F E3 FB 78 */	mr r3, r31
/* 81382D50 | 48 00 35 C5 */	bl changePage_onDrag__Q33ipl5scene7AddressFv
.L_81382D54:
/* 81382D54 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81382D58 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81382D5C | 7C 08 03 A6 */	mtlr r0
/* 81382D60 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81382D64 | 4E 80 00 20 */	blr
.endfn stt_cover_backward__Q33ipl5scene7AddressFv

# .text:0x1708 | 0x81382D68 | size: 0xF4
# ipl::scene::Address::stt_normal()
.fn stt_normal__Q33ipl5scene7AddressFv, global
/* 81382D68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81382D6C | 7C 08 02 A6 */	mflr r0
/* 81382D70 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81382D74 | 38 80 00 05 */	li r4, 0x5
/* 81382D78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382D7C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81382D80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81382D84 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81382D88 | 7C 7E 1B 78 */	mr r30, r3
/* 81382D8C | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81382D90 | 48 08 83 A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81382D94 | 7C 7F 1B 78 */	mr r31, r3
/* 81382D98 | 48 01 9B 7D */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81382D9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81382DA0 | 41 82 00 0C */	beq .L_81382DAC
/* 81382DA4 | 7F E3 FB 78 */	mr r3, r31
/* 81382DA8 | 48 01 97 C5 */	bl update__Q33ipl5scene6ButtonFv
.L_81382DAC:
/* 81382DAC | 80 1E 00 AC */	lwz r0, 0xac(r30)
/* 81382DB0 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81382DB4 | 40 82 00 90 */	bne .L_81382E44
/* 81382DB8 | 80 7E 00 98 */	lwz r3, 0x98(r30)
/* 81382DBC | 4B FE 81 D1 */	bl update__Q33ipl3gui11PaneManagerFv
/* 81382DC0 | 4B FB 2B E9 */	bl getMasterController__Q23ipl6SystemFv
/* 81382DC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81382DC8 | 3C 80 06 00 */	lis r4, 0x600
/* 81382DCC | 38 84 00 10 */	addi r4, r4, 0x10
/* 81382DD0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81382DD4 | 7D 89 03 A6 */	mtctr r12
/* 81382DD8 | 4E 80 04 21 */	bctrl
/* 81382DDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81382DE0 | 41 82 00 24 */	beq .L_81382E04
/* 81382DE4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81382DE8 | 3C 80 81 64 */	lis r4, lbl_8164798E@ha
/* 81382DEC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81382DF0 | 38 84 79 8E */	addi r4, r4, lbl_8164798E@l
/* 81382DF4 | 4B FE 86 79 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81382DF8 | 7F C3 F3 78 */	mr r3, r30
/* 81382DFC | 48 00 2B 45 */	bl onNextPage__Q33ipl5scene7AddressFv
/* 81382E00 | 48 00 00 44 */	b .L_81382E44
.L_81382E04:
/* 81382E04 | 4B FB 2B A5 */	bl getMasterController__Q23ipl6SystemFv
/* 81382E08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81382E0C | 3C 80 30 00 */	lis r4, 0x3000
/* 81382E10 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 81382E14 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81382E18 | 7D 89 03 A6 */	mtctr r12
/* 81382E1C | 4E 80 04 21 */	bctrl
/* 81382E20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81382E24 | 41 82 00 20 */	beq .L_81382E44
/* 81382E28 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81382E2C | 3C 80 81 64 */	lis r4, lbl_81647A4D@ha
/* 81382E30 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81382E34 | 38 84 7A 4D */	addi r4, r4, lbl_81647A4D@l
/* 81382E38 | 4B FE 86 35 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81382E3C | 7F C3 F3 78 */	mr r3, r30
/* 81382E40 | 48 00 2D D5 */	bl onPreviousPage__Q33ipl5scene7AddressFv
.L_81382E44:
/* 81382E44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81382E48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81382E4C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81382E50 | 7C 08 03 A6 */	mtlr r0
/* 81382E54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81382E58 | 4E 80 00 20 */	blr
.endfn stt_normal__Q33ipl5scene7AddressFv

# .text:0x17FC | 0x81382E5C | size: 0x88
# ipl::scene::Address::stt_forward()
.fn stt_forward__Q33ipl5scene7AddressFv, global
/* 81382E5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81382E60 | 7C 08 02 A6 */	mflr r0
/* 81382E64 | 38 80 00 05 */	li r4, 0x5
/* 81382E68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382E6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81382E70 | 7C 7F 1B 78 */	mr r31, r3
/* 81382E74 | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 81382E78 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81382E7C | 48 18 F4 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81382E80 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81382E84 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81382E88 | 41 82 00 34 */	beq .L_81382EBC
/* 81382E8C | 80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 81382E90 | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81382E94 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81382E98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81382E9C | 90 7F 00 B8 */	stw r3, 0xb8(r31)
/* 81382EA0 | 40 82 00 10 */	bne .L_81382EB0
/* 81382EA4 | 38 00 00 04 */	li r0, 0x4
/* 81382EA8 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81382EAC | 48 00 00 24 */	b .L_81382ED0
.L_81382EB0:
/* 81382EB0 | 38 00 00 0A */	li r0, 0xa
/* 81382EB4 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81382EB8 | 48 00 00 18 */	b .L_81382ED0
.L_81382EBC:
/* 81382EBC | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81382EC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81382EC4 | 41 82 00 0C */	beq .L_81382ED0
/* 81382EC8 | 7F E3 FB 78 */	mr r3, r31
/* 81382ECC | 48 00 34 49 */	bl changePage_onDrag__Q33ipl5scene7AddressFv
.L_81382ED0:
/* 81382ED0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81382ED4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81382ED8 | 7C 08 03 A6 */	mtlr r0
/* 81382EDC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81382EE0 | 4E 80 00 20 */	blr
.endfn stt_forward__Q33ipl5scene7AddressFv

# .text:0x1884 | 0x81382EE4 | size: 0x164
# ipl::scene::Address::stt_backward()
.fn stt_backward__Q33ipl5scene7AddressFv, global
/* 81382EE4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81382EE8 | 7C 08 02 A6 */	mflr r0
/* 81382EEC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81382EF0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81382EF4 | 48 27 65 CD */	bl _savegpr_27
/* 81382EF8 | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 81382EFC | 3F 80 81 64 */	lis r28, lbl_81647538@ha
/* 81382F00 | 7C 7F 1B 78 */	mr r31, r3
/* 81382F04 | 38 80 00 05 */	li r4, 0x5
/* 81382F08 | 3B 9C 75 38 */	addi r28, r28, lbl_81647538@l
/* 81382F0C | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81382F10 | 48 18 F4 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81382F14 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81382F18 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81382F1C | 41 82 01 00 */	beq .L_8138301C
/* 81382F20 | 80 DF 00 B4 */	lwz r6, 0xb4(r31)
/* 81382F24 | 38 6D AB 10 */	li r3, lbl_81698B50@sda21
/* 81382F28 | 38 9C 05 29 */	addi r4, r28, 0x529
/* 81382F2C | 38 A0 00 01 */	li r5, 0x1
/* 81382F30 | 38 06 00 01 */	addi r0, r6, 0x1
/* 81382F34 | 90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 81382F38 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 81382F3C | C0 0D AB 10 */	lfs f0, lbl_81698B50@sda21(r0)
/* 81382F40 | FC 20 08 50 */	fneg f1, f1
/* 81382F44 | FC 00 00 50 */	fneg f0, f0
/* 81382F48 | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 81382F4C | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81382F50 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81382F54 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81382F58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81382F5C | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81382F60 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81382F64 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81382F68 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81382F6C | D0 21 00 18 */	stfs f1, 0x18(r1)
/* 81382F70 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 81382F74 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81382F78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81382F7C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81382F80 | 7D 89 03 A6 */	mtctr r12
/* 81382F84 | 4E 80 04 21 */	bctrl
/* 81382F88 | 7C 64 1B 78 */	mr r4, r3
/* 81382F8C | 7F E3 FB 78 */	mr r3, r31
/* 81382F90 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81382F94 | 48 00 10 E1 */	bl add_translate__Q33ipl5scene7AddressFPQ34nw4r3lyt4PaneRCQ33ipl4math4VEC2
/* 81382F98 | 80 BF 00 B0 */	lwz r5, 0xb0(r31)
/* 81382F9C | 7F E3 FB 78 */	mr r3, r31
/* 81382FA0 | 38 9C 05 0C */	addi r4, r28, 0x50c
/* 81382FA4 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81382FA8 | 48 00 13 8D */	bl set_page_text__Q33ipl5scene7AddressFPCci
/* 81382FAC | 3B 9C 00 3C */	addi r28, r28, 0x3c
/* 81382FB0 | 3B 60 00 00 */	li r27, 0x0
/* 81382FB4 | 3B C0 00 00 */	li r30, 0x0
/* 81382FB8 | 3B A0 00 00 */	li r29, 0x0
.L_81382FBC:
/* 81382FBC | 80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 81382FC0 | 7C BF F2 14 */	add r5, r31, r30
/* 81382FC4 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 81382FC8 | 7F E3 FB 78 */	mr r3, r31
/* 81382FCC | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81382FD0 | 38 E5 00 E4 */	addi r7, r5, 0xe4
/* 81382FD4 | 7F 66 DB 78 */	mr r6, r27
/* 81382FD8 | 39 00 00 00 */	li r8, 0x0
/* 81382FDC | 7C BB 02 14 */	add r5, r27, r0
/* 81382FE0 | 48 00 11 45 */	bl set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb
/* 81382FE4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81382FE8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81382FEC | 28 1B 00 05 */	cmplwi r27, 0x5
/* 81382FF0 | 3B DE 00 28 */	addi r30, r30, 0x28
/* 81382FF4 | 41 80 FF C8 */	blt .L_81382FBC
/* 81382FF8 | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81382FFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383000 | 40 82 00 10 */	bne .L_81383010
/* 81383004 | 38 00 00 04 */	li r0, 0x4
/* 81383008 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 8138300C | 48 00 00 24 */	b .L_81383030
.L_81383010:
/* 81383010 | 38 00 00 0A */	li r0, 0xa
/* 81383014 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81383018 | 48 00 00 18 */	b .L_81383030
.L_8138301C:
/* 8138301C | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81383020 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383024 | 41 82 00 0C */	beq .L_81383030
/* 81383028 | 7F E3 FB 78 */	mr r3, r31
/* 8138302C | 48 00 32 E9 */	bl changePage_onDrag__Q33ipl5scene7AddressFv
.L_81383030:
/* 81383030 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81383034 | 48 27 64 D9 */	bl _restgpr_27
/* 81383038 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8138303C | 7C 08 03 A6 */	mtlr r0
/* 81383040 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81383044 | 4E 80 00 20 */	blr
.endfn stt_backward__Q33ipl5scene7AddressFv

# .text:0x19E8 | 0x81383048 | size: 0x18C
# ipl::scene::Address::stt_loop_forward()
.fn stt_loop_forward__Q33ipl5scene7AddressFv, global
/* 81383048 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8138304C | 7C 08 02 A6 */	mflr r0
/* 81383050 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81383054 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81383058 | 48 27 64 69 */	bl _savegpr_27
/* 8138305C | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 81383060 | 3F 80 81 64 */	lis r28, lbl_81647538@ha
/* 81383064 | 7C 7F 1B 78 */	mr r31, r3
/* 81383068 | 38 80 00 04 */	li r4, 0x4
/* 8138306C | 3B 9C 75 38 */	addi r28, r28, lbl_81647538@l
/* 81383070 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81383074 | 48 18 F2 A5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81383078 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138307C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383080 | 41 82 01 28 */	beq .L_813831A8
/* 81383084 | 38 6D AB 10 */	li r3, lbl_81698B50@sda21
/* 81383088 | C0 0D AB 10 */	lfs f0, lbl_81698B50@sda21(r0)
/* 8138308C | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 81383090 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81383094 | FC 00 00 50 */	fneg f0, f0
/* 81383098 | C0 42 83 DC */	lfs f2, lbl_816947DC@sda21(r0)
/* 8138309C | FC 20 08 50 */	fneg f1, f1
/* 813830A0 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813830A4 | D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 813830A8 | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 813830AC | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 813830B0 | 90 81 00 20 */	stw r4, 0x20(r1)
/* 813830B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813830B8 | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 813830BC | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 813830C0 | EC 22 00 72 */	fmuls f1, f2, f1
/* 813830C4 | EC 42 00 32 */	fmuls f2, f2, f0
/* 813830C8 | 4B FE F4 15 */	bl __ct__Q34nw4r4math4VEC2Fff
/* 813830CC | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 813830D0 | 38 9C 05 29 */	addi r4, r28, 0x529
/* 813830D4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813830D8 | 38 A0 00 01 */	li r5, 0x1
/* 813830DC | 90 C1 00 28 */	stw r6, 0x28(r1)
/* 813830E0 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813830E4 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 813830E8 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 813830EC | D0 21 00 30 */	stfs f1, 0x30(r1)
/* 813830F0 | D0 01 00 34 */	stfs f0, 0x34(r1)
/* 813830F4 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 813830F8 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 813830FC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81383100 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81383104 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383108 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138310C | 7D 89 03 A6 */	mtctr r12
/* 81383110 | 4E 80 04 21 */	bctrl
/* 81383114 | 7C 64 1B 78 */	mr r4, r3
/* 81383118 | 7F E3 FB 78 */	mr r3, r31
/* 8138311C | 38 A1 00 30 */	addi r5, r1, 0x30
/* 81383120 | 48 00 0F 55 */	bl add_translate__Q33ipl5scene7AddressFPQ34nw4r3lyt4PaneRCQ33ipl4math4VEC2
/* 81383124 | 80 BF 00 B0 */	lwz r5, 0xb0(r31)
/* 81383128 | 7F E3 FB 78 */	mr r3, r31
/* 8138312C | 38 9C 05 0C */	addi r4, r28, 0x50c
/* 81383130 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81383134 | 48 00 12 01 */	bl set_page_text__Q33ipl5scene7AddressFPCci
/* 81383138 | 7F E3 FB 78 */	mr r3, r31
/* 8138313C | 38 80 00 00 */	li r4, 0x0
/* 81383140 | 48 00 20 39 */	bl reset_gui__Q33ipl5scene7AddressFb
/* 81383144 | 3B 9C 00 3C */	addi r28, r28, 0x3c
/* 81383148 | 3B 60 00 00 */	li r27, 0x0
/* 8138314C | 3B C0 00 00 */	li r30, 0x0
/* 81383150 | 3B A0 00 00 */	li r29, 0x0
.L_81383154:
/* 81383154 | 80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 81383158 | 7C BF F2 14 */	add r5, r31, r30
/* 8138315C | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 81383160 | 7F E3 FB 78 */	mr r3, r31
/* 81383164 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81383168 | 38 E5 00 E4 */	addi r7, r5, 0xe4
/* 8138316C | 7F 66 DB 78 */	mr r6, r27
/* 81383170 | 39 00 00 00 */	li r8, 0x0
/* 81383174 | 7C BB 02 14 */	add r5, r27, r0
/* 81383178 | 48 00 0F AD */	bl set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb
/* 8138317C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81383180 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81383184 | 28 1B 00 05 */	cmplwi r27, 0x5
/* 81383188 | 3B DE 00 28 */	addi r30, r30, 0x28
/* 8138318C | 41 80 FF C8 */	blt .L_81383154
/* 81383190 | 38 60 00 01 */	li r3, 0x1
/* 81383194 | 38 00 00 14 */	li r0, 0x14
/* 81383198 | 98 7F 00 E1 */	stb r3, 0xe1(r31)
/* 8138319C | 90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 813831A0 | 90 7F 00 AC */	stw r3, 0xac(r31)
/* 813831A4 | 48 00 00 18 */	b .L_813831BC
.L_813831A8:
/* 813831A8 | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 813831AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813831B0 | 41 82 00 0C */	beq .L_813831BC
/* 813831B4 | 7F E3 FB 78 */	mr r3, r31
/* 813831B8 | 48 00 31 5D */	bl changePage_onDrag__Q33ipl5scene7AddressFv
.L_813831BC:
/* 813831BC | 39 61 00 50 */	addi r11, r1, 0x50
/* 813831C0 | 48 27 63 4D */	bl _restgpr_27
/* 813831C4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813831C8 | 7C 08 03 A6 */	mtlr r0
/* 813831CC | 38 21 00 50 */	addi r1, r1, 0x50
/* 813831D0 | 4E 80 00 20 */	blr
.endfn stt_loop_forward__Q33ipl5scene7AddressFv

# .text:0x1B74 | 0x813831D4 | size: 0x8C
# ipl::scene::Address::stt_loop_backward()
.fn stt_loop_backward__Q33ipl5scene7AddressFv, global
/* 813831D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813831D8 | 7C 08 02 A6 */	mflr r0
/* 813831DC | 38 80 00 04 */	li r4, 0x4
/* 813831E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813831E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813831E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813831EC | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 813831F0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813831F4 | 48 18 F1 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813831F8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813831FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383200 | 41 82 00 38 */	beq .L_81383238
/* 81383204 | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81383208 | 38 80 00 00 */	li r4, 0x0
/* 8138320C | 38 60 00 13 */	li r3, 0x13
/* 81383210 | 98 9F 00 E1 */	stb r4, 0xe1(r31)
/* 81383214 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383218 | 90 7F 00 B8 */	stw r3, 0xb8(r31)
/* 8138321C | 40 82 00 10 */	bne .L_8138322C
/* 81383220 | 38 00 00 04 */	li r0, 0x4
/* 81383224 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81383228 | 48 00 00 24 */	b .L_8138324C
.L_8138322C:
/* 8138322C | 38 00 00 0A */	li r0, 0xa
/* 81383230 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81383234 | 48 00 00 18 */	b .L_8138324C
.L_81383238:
/* 81383238 | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 8138323C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383240 | 41 82 00 0C */	beq .L_8138324C
/* 81383244 | 7F E3 FB 78 */	mr r3, r31
/* 81383248 | 48 00 30 CD */	bl changePage_onDrag__Q33ipl5scene7AddressFv
.L_8138324C:
/* 8138324C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383250 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383254 | 7C 08 03 A6 */	mtlr r0
/* 81383258 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138325C | 4E 80 00 20 */	blr
.endfn stt_loop_backward__Q33ipl5scene7AddressFv

# .text:0x1C00 | 0x81383260 | size: 0x15C
# ipl::scene::Address::stt_decide()
.fn stt_decide__Q33ipl5scene7AddressFv, global
/* 81383260 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81383264 | 7C 08 02 A6 */	mflr r0
/* 81383268 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138326C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81383270 | 48 27 62 59 */	bl _savegpr_29
/* 81383274 | 7C 7F 1B 78 */	mr r31, r3
/* 81383278 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8138327C | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 81383280 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81383284 | 38 04 00 10 */	addi r0, r4, 0x10
/* 81383288 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138328C | 48 18 F0 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81383290 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81383294 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383298 | 41 82 01 0C */	beq .L_813833A4
/* 8138329C | 80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 813832A0 | 80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 813832A4 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 813832A8 | 38 64 02 8C */	addi r3, r4, 0x28c
/* 813832AC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813832B0 | 48 18 F0 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813832B4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813832B8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813832BC | 41 82 00 E8 */	beq .L_813833A4
/* 813832C0 | 7F E3 FB 78 */	mr r3, r31
/* 813832C4 | 38 80 00 01 */	li r4, 0x1
/* 813832C8 | 48 00 1E B1 */	bl reset_gui__Q33ipl5scene7AddressFb
/* 813832CC | 80 1F 00 88 */	lwz r0, 0x88(r31)
/* 813832D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813832D4 | 41 82 00 14 */	beq .L_813832E8
/* 813832D8 | 41 80 00 CC */	blt .L_813833A4
/* 813832DC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813832E0 | 40 80 00 C4 */	bge .L_813833A4
/* 813832E4 | 48 00 00 48 */	b .L_8138332C
.L_813832E8:
/* 813832E8 | 7F E3 FB 78 */	mr r3, r31
/* 813832EC | 7F E5 FB 78 */	mr r5, r31
/* 813832F0 | 38 80 00 17 */	li r4, 0x17
/* 813832F4 | 38 C0 00 00 */	li r6, 0x0
/* 813832F8 | 38 E0 00 00 */	li r7, 0x0
/* 813832FC | 48 08 6B 8D */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 81383300 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 81383304 | 38 80 00 00 */	li r4, 0x0
/* 81383308 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138330C | 48 18 F0 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81383310 | 7C 7E 1B 78 */	mr r30, r3
/* 81383314 | 4B FD F5 5D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81383318 | 38 60 00 01 */	li r3, 0x1
/* 8138331C | 38 00 00 0C */	li r0, 0xc
/* 81383320 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 81383324 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81383328 | 48 00 00 7C */	b .L_813833A4
.L_8138332C:
/* 8138332C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383330 | 38 80 00 0B */	li r4, 0xb
/* 81383334 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81383338 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138333C | 48 08 7D FD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383340 | 80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 81383344 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383348 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 8138334C | 80 9F 02 74 */	lwz r4, 0x274(r31)
/* 81383350 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 81383354 | 7C 84 02 14 */	add r4, r4, r0
/* 81383358 | 7D 89 03 A6 */	mtctr r12
/* 8138335C | 4E 80 04 21 */	bctrl
/* 81383360 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 81383364 | 38 80 00 03 */	li r4, 0x3
/* 81383368 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138336C | 48 18 EF AD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81383370 | 7C 7D 1B 78 */	mr r29, r3
/* 81383374 | 4B FD F4 FD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81383378 | 3B C0 00 01 */	li r30, 0x1
/* 8138337C | 38 80 00 01 */	li r4, 0x1
/* 81383380 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81383384 | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 81383388 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138338C | 48 18 EF 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81383390 | 7C 7D 1B 78 */	mr r29, r3
/* 81383394 | 4B FD F4 DD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81383398 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 8138339C | 38 00 00 1A */	li r0, 0x1a
/* 813833A0 | 90 1F 00 AC */	stw r0, 0xac(r31)
.L_813833A4:
/* 813833A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813833A8 | 48 27 61 6D */	bl _restgpr_29
/* 813833AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813833B0 | 7C 08 03 A6 */	mtlr r0
/* 813833B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813833B8 | 4E 80 00 20 */	blr
.endfn stt_decide__Q33ipl5scene7AddressFv

# .text:0x1D5C | 0x813833BC | size: 0x54
# ipl::scene::LetterWriter::setFriendInfo(const NWC24FriendInfo&)
.fn setFriendInfo__Q33ipl5scene12LetterWriterFRC15NWC24FriendInfo, weak
/* 813833BC | 38 A0 00 01 */	li r5, 0x1
/* 813833C0 | 38 00 00 08 */	li r0, 0x8
/* 813833C4 | 98 A3 01 E0 */	stb r5, 0x1e0(r3)
/* 813833C8 | 38 E3 00 9C */	addi r7, r3, 0x9c
/* 813833CC | 38 C4 FF FC */	subi r6, r4, 0x4
/* 813833D0 | 7C 09 03 A6 */	mtctr r0
.L_813833D4:
/* 813833D4 | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 813833D8 | 84 06 00 08 */	lwzu r0, 0x8(r6)
/* 813833DC | 90 A7 00 04 */	stw r5, 0x4(r7)
/* 813833E0 | 94 07 00 08 */	stwu r0, 0x8(r7)
/* 813833E4 | 42 00 FF F0 */	bdnz .L_813833D4
/* 813833E8 | 38 00 00 20 */	li r0, 0x20
/* 813833EC | 38 A3 00 DC */	addi r5, r3, 0xdc
/* 813833F0 | 38 84 00 3C */	addi r4, r4, 0x3c
/* 813833F4 | 7C 09 03 A6 */	mtctr r0
.L_813833F8:
/* 813833F8 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813833FC | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 81383400 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 81383404 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 81383408 | 42 00 FF F0 */	bdnz .L_813833F8
/* 8138340C | 4E 80 00 20 */	blr
.endfn setFriendInfo__Q33ipl5scene12LetterWriterFRC15NWC24FriendInfo

# .text:0x1DB0 | 0x81383410 | size: 0x44
# ipl::scene::Address::stt_drag()
.fn stt_drag__Q33ipl5scene7AddressFv, global
/* 81383410 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81383414 | 7C 08 02 A6 */	mflr r0
/* 81383418 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138341C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81383420 | 7C 7F 1B 78 */	mr r31, r3
/* 81383424 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 81383428 | 4B FE 7B 65 */	bl update__Q33ipl3gui11PaneManagerFv
/* 8138342C | 80 1F 00 AC */	lwz r0, 0xac(r31)
/* 81383430 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81383434 | 40 82 00 0C */	bne .L_81383440
/* 81383438 | 7F E3 FB 78 */	mr r3, r31
/* 8138343C | 48 00 2E D9 */	bl changePage_onDrag__Q33ipl5scene7AddressFv
.L_81383440:
/* 81383440 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383444 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383448 | 7C 08 03 A6 */	mtlr r0
/* 8138344C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81383450 | 4E 80 00 20 */	blr
.endfn stt_drag__Q33ipl5scene7AddressFv

# .text:0x1DF4 | 0x81383454 | size: 0xF8
# ipl::scene::Address::stt_release()
.fn stt_release__Q33ipl5scene7AddressFv, global
/* 81383454 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81383458 | 7C 08 02 A6 */	mflr r0
/* 8138345C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81383460 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81383464 | 48 27 60 61 */	bl _savegpr_28
/* 81383468 | 7C 7C 1B 78 */	mr r28, r3
/* 8138346C | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 81383470 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383474 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81383478 | 7D 89 03 A6 */	mtctr r12
/* 8138347C | 4E 80 04 21 */	bctrl
/* 81383480 | 3B A0 00 00 */	li r29, 0x0
/* 81383484 | 3B E0 00 00 */	li r31, 0x0
/* 81383488 | 7F BE EB 78 */	mr r30, r29
.L_8138348C:
/* 8138348C | 7C 7C EA 14 */	add r3, r28, r29
/* 81383490 | 88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 81383494 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383498 | 41 82 00 20 */	beq .L_813834B8
/* 8138349C | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813834A0 | 38 1D 00 06 */	addi r0, r29, 0x6
/* 813834A4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813834A8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813834AC | 48 18 EE 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813834B0 | 4B FE 67 75 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813834B4 | 48 00 00 1C */	b .L_813834D0
.L_813834B8:
/* 813834B8 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813834BC | 38 1D 00 15 */	addi r0, r29, 0x15
/* 813834C0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813834C4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813834C8 | 48 18 EE 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813834CC | 4B FE 67 59 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_813834D0:
/* 813834D0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813834D4 | 7C 7C FA 14 */	add r3, r28, r31
/* 813834D8 | 2C 1D 00 05 */	cmpwi r29, 0x5
/* 813834DC | 93 C3 00 CC */	stw r30, 0xcc(r3)
/* 813834E0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813834E4 | 41 80 FF A8 */	blt .L_8138348C
/* 813834E8 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813834EC | 3C 80 81 64 */	lis r4, lbl_81647982@ha
/* 813834F0 | 38 84 79 82 */	addi r4, r4, lbl_81647982@l
/* 813834F4 | 38 A0 00 01 */	li r5, 0x1
/* 813834F8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813834FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383500 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81383504 | 7D 89 03 A6 */	mtctr r12
/* 81383508 | 4E 80 04 21 */	bctrl
/* 8138350C | 38 80 00 00 */	li r4, 0x0
/* 81383510 | 4B FC 0F 05 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81383514 | 88 1C 00 E1 */	lbz r0, 0xe1(r28)
/* 81383518 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138351C | 41 82 00 10 */	beq .L_8138352C
/* 81383520 | 38 00 00 01 */	li r0, 0x1
/* 81383524 | 90 1C 00 AC */	stw r0, 0xac(r28)
/* 81383528 | 48 00 00 0C */	b .L_81383534
.L_8138352C:
/* 8138352C | 38 00 00 04 */	li r0, 0x4
/* 81383530 | 90 1C 00 AC */	stw r0, 0xac(r28)
.L_81383534:
/* 81383534 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81383538 | 48 27 5F D9 */	bl _restgpr_28
/* 8138353C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81383540 | 7C 08 03 A6 */	mtlr r0
/* 81383544 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81383548 | 4E 80 00 20 */	blr
.endfn stt_release__Q33ipl5scene7AddressFv

# .text:0x1EEC | 0x8138354C | size: 0x90
# ipl::scene::Address::stt_wait_child_cst()
.fn stt_wait_child_cst__Q33ipl5scene7AddressFv, global
/* 8138354C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81383550 | 7C 08 02 A6 */	mflr r0
/* 81383554 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81383558 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138355C | 7C 7F 1B 78 */	mr r31, r3
/* 81383560 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383564 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81383568 | 7D 89 03 A6 */	mtctr r12
/* 8138356C | 4E 80 04 21 */	bctrl
/* 81383570 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81383574 | 41 82 00 54 */	beq .L_813835C8
/* 81383578 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8138357C | 38 80 00 00 */	li r4, 0x0
/* 81383580 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81383584 | 48 18 ED 95 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81383588 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8138358C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383590 | 41 82 00 38 */	beq .L_813835C8
/* 81383594 | 38 00 00 0D */	li r0, 0xd
/* 81383598 | 7F E3 FB 78 */	mr r3, r31
/* 8138359C | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 813835A0 | 38 80 00 01 */	li r4, 0x1
/* 813835A4 | 48 00 1B D5 */	bl reset_gui__Q33ipl5scene7AddressFb
/* 813835A8 | 38 00 00 05 */	li r0, 0x5
/* 813835AC | 38 A0 00 00 */	li r5, 0x0
/* 813835B0 | 38 60 00 00 */	li r3, 0x0
/* 813835B4 | 7C 09 03 A6 */	mtctr r0
.L_813835B8:
/* 813835B8 | 7C 9F 1A 14 */	add r4, r31, r3
/* 813835BC | 38 63 00 04 */	addi r3, r3, 0x4
/* 813835C0 | 90 A4 00 CC */	stw r5, 0xcc(r4)
/* 813835C4 | 42 00 FF F4 */	bdnz .L_813835B8
.L_813835C8:
/* 813835C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813835CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813835D0 | 7C 08 03 A6 */	mtlr r0
/* 813835D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813835D8 | 4E 80 00 20 */	blr
.endfn stt_wait_child_cst__Q33ipl5scene7AddressFv

# .text:0x1F7C | 0x813835DC | size: 0x8
# ipl::scene::Base::getChild()
.fn getChild__Q33ipl5scene4BaseFv, weak
/* 813835DC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813835E0 | 4E 80 00 20 */	blr
.endfn getChild__Q33ipl5scene4BaseFv

# .text:0x1F84 | 0x813835E4 | size: 0xB8
# ipl::scene::Address::stt_wait_child_dst()
.fn stt_wait_child_dst__Q33ipl5scene7AddressFv, global
/* 813835E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813835E8 | 7C 08 02 A6 */	mflr r0
/* 813835EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813835F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813835F4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813835F8 | 7C 7E 1B 78 */	mr r30, r3
/* 813835FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383600 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81383604 | 7D 89 03 A6 */	mtctr r12
/* 81383608 | 4E 80 04 21 */	bctrl
/* 8138360C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81383610 | 40 82 00 74 */	bne .L_81383684
/* 81383614 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383618 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138361C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81383620 | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 81383624 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383628 | 40 82 00 5C */	bne .L_81383684
/* 8138362C | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 81383630 | 38 80 00 01 */	li r4, 0x1
/* 81383634 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81383638 | 48 18 EC E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138363C | 7C 7F 1B 78 */	mr r31, r3
/* 81383640 | 4B FD F2 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81383644 | 38 00 00 01 */	li r0, 0x1
/* 81383648 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8138364C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81383650 | 7F DF F3 78 */	mr r31, r30
/* 81383654 | 41 82 00 08 */	beq .L_8138365C
/* 81383658 | 3B FE 00 58 */	addi r31, r30, 0x58
.L_8138365C:
/* 8138365C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383660 | 38 80 00 05 */	li r4, 0x5
/* 81383664 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81383668 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138366C | 48 08 7A CD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383670 | 7F E4 FB 78 */	mr r4, r31
/* 81383674 | 38 A0 00 00 */	li r5, 0x0
/* 81383678 | 48 01 92 C5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8138367C | 38 00 00 0E */	li r0, 0xe
/* 81383680 | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81383684:
/* 81383684 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383688 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138368C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81383690 | 7C 08 03 A6 */	mtlr r0
/* 81383694 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81383698 | 4E 80 00 20 */	blr
.endfn stt_wait_child_dst__Q33ipl5scene7AddressFv

# .text:0x203C | 0x8138369C | size: 0xAC
# ipl::scene::Address::stt_wait_child_fadeout()
.fn stt_wait_child_fadeout__Q33ipl5scene7AddressFv, global
/* 8138369C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813836A0 | 7C 08 02 A6 */	mflr r0
/* 813836A4 | 38 80 00 01 */	li r4, 0x1
/* 813836A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813836AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813836B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813836B4 | 7C 7E 1B 78 */	mr r30, r3
/* 813836B8 | 80 A3 00 9C */	lwz r5, 0x9c(r3)
/* 813836BC | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813836C0 | 48 18 EC 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813836C4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813836C8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813836CC | 41 82 00 64 */	beq .L_81383730
/* 813836D0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813836D4 | 38 80 00 05 */	li r4, 0x5
/* 813836D8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813836DC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813836E0 | 48 08 7A 59 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813836E4 | 3C 80 81 64 */	lis r4, lbl_81647A6D@ha
/* 813836E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813836EC | 38 84 7A 6D */	addi r4, r4, lbl_81647A6D@l
/* 813836F0 | 38 A0 00 29 */	li r5, 0x29
/* 813836F4 | 48 01 92 A9 */	bl setText__Q33ipl5scene6ButtonFPCcUl
/* 813836F8 | 7F E3 FB 78 */	mr r3, r31
/* 813836FC | 38 80 00 17 */	li r4, 0x17
/* 81383700 | 48 01 94 59 */	bl iplButton_8139CB58
/* 81383704 | 7F E3 FB 78 */	mr r3, r31
/* 81383708 | 38 80 00 18 */	li r4, 0x18
/* 8138370C | 48 01 94 4D */	bl iplButton_8139CB58
/* 81383710 | 88 1E 00 E1 */	lbz r0, 0xe1(r30)
/* 81383714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383718 | 41 82 00 10 */	beq .L_81383728
/* 8138371C | 38 00 00 01 */	li r0, 0x1
/* 81383720 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81383724 | 48 00 00 0C */	b .L_81383730
.L_81383728:
/* 81383728 | 38 00 00 04 */	li r0, 0x4
/* 8138372C | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81383730:
/* 81383730 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383734 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383738 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138373C | 7C 08 03 A6 */	mtlr r0
/* 81383740 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81383744 | 4E 80 00 20 */	blr
.endfn stt_wait_child_fadeout__Q33ipl5scene7AddressFv

# .text:0x20E8 | 0x81383748 | size: 0x154
# ipl::scene::Address::stt_msg_net()
.fn stt_msg_net__Q33ipl5scene7AddressFv, global
/* 81383748 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8138374C | 7C 08 02 A6 */	mflr r0
/* 81383750 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81383754 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 81383758 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138375C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81383760 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 81383764 | 7C 7E 1B 78 */	mr r30, r3
/* 81383768 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 8138376C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81383770 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81383774 | 41 82 00 14 */	beq .L_81383788
/* 81383778 | 40 80 01 0C */	bge .L_81383884
/* 8138377C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383780 | 40 80 00 5C */	bge .L_813837DC
/* 81383784 | 48 00 01 00 */	b .L_81383884
.L_81383788:
/* 81383788 | 88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 8138378C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383790 | 41 82 00 10 */	beq .L_813837A0
/* 81383794 | 38 00 00 01 */	li r0, 0x1
/* 81383798 | 90 03 00 AC */	stw r0, 0xac(r3)
/* 8138379C | 48 00 00 0C */	b .L_813837A8
.L_813837A0:
/* 813837A0 | 38 00 00 04 */	li r0, 0x4
/* 813837A4 | 90 03 00 AC */	stw r0, 0xac(r3)
.L_813837A8:
/* 813837A8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813837AC | 38 80 00 05 */	li r4, 0x5
/* 813837B0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813837B4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813837B8 | 48 08 79 81 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813837BC | 38 80 00 17 */	li r4, 0x17
/* 813837C0 | 48 01 93 99 */	bl iplButton_8139CB58
/* 813837C4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813837C8 | 38 80 00 05 */	li r4, 0x5
/* 813837CC | 48 08 79 6D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813837D0 | 38 80 00 18 */	li r4, 0x18
/* 813837D4 | 48 01 93 85 */	bl iplButton_8139CB58
/* 813837D8 | 48 00 00 AC */	b .L_81383884
.L_813837DC:
/* 813837DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813837E0 | 48 1E 69 99 */	bl SCGetParentalControl
/* 813837E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813837E8 | 41 82 00 68 */	beq .L_81383850
/* 813837EC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813837F0 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813837F4 | 41 82 00 5C */	beq .L_81383850
/* 813837F8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813837FC | 38 80 00 05 */	li r4, 0x5
/* 81383800 | 48 08 79 39 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383804 | 38 80 00 00 */	li r4, 0x0
/* 81383808 | 38 A0 00 00 */	li r5, 0x0
/* 8138380C | 48 01 91 31 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81383810 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383814 | 38 80 00 05 */	li r4, 0x5
/* 81383818 | 48 08 79 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8138381C | 38 80 00 10 */	li r4, 0x10
/* 81383820 | 48 01 93 39 */	bl iplButton_8139CB58
/* 81383824 | 7F C3 F3 78 */	mr r3, r30
/* 81383828 | 7F C5 F3 78 */	mr r5, r30
/* 8138382C | 38 80 00 1B */	li r4, 0x1b
/* 81383830 | 38 C0 00 00 */	li r6, 0x0
/* 81383834 | 38 E0 00 01 */	li r7, 0x1
/* 81383838 | 48 08 66 51 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 8138383C | 38 60 00 00 */	li r3, 0x0
/* 81383840 | 38 00 00 10 */	li r0, 0x10
/* 81383844 | 98 7E 00 E0 */	stb r3, 0xe0(r30)
/* 81383848 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 8138384C | 48 00 00 38 */	b .L_81383884
.L_81383850:
/* 81383850 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383854 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81383858 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8138385C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383860 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81383864 | 7D 89 03 A6 */	mtctr r12
/* 81383868 | 4E 80 04 21 */	bctrl
/* 8138386C | 7F C3 F3 78 */	mr r3, r30
/* 81383870 | 38 80 00 12 */	li r4, 0x12
/* 81383874 | 38 A0 00 01 */	li r5, 0x1
/* 81383878 | 48 08 67 1D */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 8138387C | 38 00 00 1A */	li r0, 0x1a
/* 81383880 | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81383884:
/* 81383884 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81383888 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8138388C | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 81383890 | 7C 08 03 A6 */	mtlr r0
/* 81383894 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81383898 | 4E 80 00 20 */	blr
.endfn stt_msg_net__Q33ipl5scene7AddressFv

# .text:0x223C | 0x8138389C | size: 0x84
# ipl::scene::Address::stt_wait_parental()
.fn stt_wait_parental__Q33ipl5scene7AddressFv, global
/* 8138389C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813838A0 | 7C 08 02 A6 */	mflr r0
/* 813838A4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813838A8 | 38 80 00 1B */	li r4, 0x1b
/* 813838AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813838B0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813838B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813838B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813838BC | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813838C0 | 48 08 78 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813838C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813838C8 | 41 82 00 44 */	beq .L_8138390C
/* 813838CC | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813838D0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813838D4 | 41 82 00 14 */	beq .L_813838E8
/* 813838D8 | 41 80 00 34 */	blt .L_8138390C
/* 813838DC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813838E0 | 40 80 00 2C */	bge .L_8138390C
/* 813838E4 | 48 00 00 18 */	b .L_813838FC
.L_813838E8:
/* 813838E8 | 38 60 00 01 */	li r3, 0x1
/* 813838EC | 38 00 00 11 */	li r0, 0x11
/* 813838F0 | 98 7F 00 E0 */	stb r3, 0xe0(r31)
/* 813838F4 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 813838F8 | 48 00 00 14 */	b .L_8138390C
.L_813838FC:
/* 813838FC | 38 60 00 00 */	li r3, 0x0
/* 81383900 | 38 00 00 11 */	li r0, 0x11
/* 81383904 | 98 7F 00 E0 */	stb r3, 0xe0(r31)
/* 81383908 | 90 1F 00 AC */	stw r0, 0xac(r31)
.L_8138390C:
/* 8138390C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383910 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383914 | 7C 08 03 A6 */	mtlr r0
/* 81383918 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138391C | 4E 80 00 20 */	blr
.endfn stt_wait_parental__Q33ipl5scene7AddressFv

# .text:0x22C0 | 0x81383920 | size: 0x128
# ipl::scene::Address::stt_wait_parental_dst()
.fn stt_wait_parental_dst__Q33ipl5scene7AddressFv, global
/* 81383920 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81383924 | 7C 08 02 A6 */	mflr r0
/* 81383928 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138392C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81383930 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81383934 | 7C 7E 1B 78 */	mr r30, r3
/* 81383938 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138393C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81383940 | 7D 89 03 A6 */	mtctr r12
/* 81383944 | 4E 80 04 21 */	bctrl
/* 81383948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138394C | 40 82 00 E4 */	bne .L_81383A30
/* 81383950 | 88 1E 00 E0 */	lbz r0, 0xe0(r30)
/* 81383954 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383958 | 41 82 00 3C */	beq .L_81383994
/* 8138395C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383960 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81383964 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81383968 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138396C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81383970 | 7D 89 03 A6 */	mtctr r12
/* 81383974 | 4E 80 04 21 */	bctrl
/* 81383978 | 7F C3 F3 78 */	mr r3, r30
/* 8138397C | 38 80 00 12 */	li r4, 0x12
/* 81383980 | 38 A0 00 01 */	li r5, 0x1
/* 81383984 | 48 08 66 11 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 81383988 | 38 00 00 1A */	li r0, 0x1a
/* 8138398C | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81383990 | 48 00 00 A0 */	b .L_81383A30
.L_81383994:
/* 81383994 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383998 | 38 80 00 05 */	li r4, 0x5
/* 8138399C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813839A0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813839A4 | 48 08 77 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813839A8 | 38 80 00 0F */	li r4, 0xf
/* 813839AC | 48 01 91 AD */	bl iplButton_8139CB58
/* 813839B0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813839B4 | 7F DF F3 78 */	mr r31, r30
/* 813839B8 | 41 82 00 08 */	beq .L_813839C0
/* 813839BC | 3B FE 00 58 */	addi r31, r30, 0x58
.L_813839C0:
/* 813839C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813839C4 | 38 80 00 05 */	li r4, 0x5
/* 813839C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813839CC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813839D0 | 48 08 77 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813839D4 | 7F E4 FB 78 */	mr r4, r31
/* 813839D8 | 38 A0 00 00 */	li r5, 0x0
/* 813839DC | 48 01 8F 61 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813839E0 | 88 1E 00 E1 */	lbz r0, 0xe1(r30)
/* 813839E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813839E8 | 41 82 00 10 */	beq .L_813839F8
/* 813839EC | 38 00 00 01 */	li r0, 0x1
/* 813839F0 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 813839F4 | 48 00 00 0C */	b .L_81383A00
.L_813839F8:
/* 813839F8 | 38 00 00 04 */	li r0, 0x4
/* 813839FC | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81383A00:
/* 81383A00 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81383A04 | 38 80 00 05 */	li r4, 0x5
/* 81383A08 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81383A0C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383A10 | 48 08 77 29 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383A14 | 38 80 00 17 */	li r4, 0x17
/* 81383A18 | 48 01 91 41 */	bl iplButton_8139CB58
/* 81383A1C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383A20 | 38 80 00 05 */	li r4, 0x5
/* 81383A24 | 48 08 77 15 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383A28 | 38 80 00 18 */	li r4, 0x18
/* 81383A2C | 48 01 91 2D */	bl iplButton_8139CB58
.L_81383A30:
/* 81383A30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383A34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383A38 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81383A3C | 7C 08 03 A6 */	mtlr r0
/* 81383A40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81383A44 | 4E 80 00 20 */	blr
.endfn stt_wait_parental_dst__Q33ipl5scene7AddressFv

# .text:0x23E8 | 0x81383A48 | size: 0x154
# ipl::scene::Address::stt_msg_wc()
.fn stt_msg_wc__Q33ipl5scene7AddressFv, global
/* 81383A48 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81383A4C | 7C 08 02 A6 */	mflr r0
/* 81383A50 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81383A54 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 81383A58 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81383A5C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81383A60 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 81383A64 | 7C 7E 1B 78 */	mr r30, r3
/* 81383A68 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 81383A6C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81383A70 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81383A74 | 41 82 00 14 */	beq .L_81383A88
/* 81383A78 | 40 80 01 0C */	bge .L_81383B84
/* 81383A7C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383A80 | 40 80 00 5C */	bge .L_81383ADC
/* 81383A84 | 48 00 01 00 */	b .L_81383B84
.L_81383A88:
/* 81383A88 | 88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 81383A8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383A90 | 41 82 00 10 */	beq .L_81383AA0
/* 81383A94 | 38 00 00 01 */	li r0, 0x1
/* 81383A98 | 90 03 00 AC */	stw r0, 0xac(r3)
/* 81383A9C | 48 00 00 0C */	b .L_81383AA8
.L_81383AA0:
/* 81383AA0 | 38 00 00 04 */	li r0, 0x4
/* 81383AA4 | 90 03 00 AC */	stw r0, 0xac(r3)
.L_81383AA8:
/* 81383AA8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81383AAC | 38 80 00 05 */	li r4, 0x5
/* 81383AB0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81383AB4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383AB8 | 48 08 76 81 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383ABC | 38 80 00 17 */	li r4, 0x17
/* 81383AC0 | 48 01 90 99 */	bl iplButton_8139CB58
/* 81383AC4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383AC8 | 38 80 00 05 */	li r4, 0x5
/* 81383ACC | 48 08 76 6D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383AD0 | 38 80 00 18 */	li r4, 0x18
/* 81383AD4 | 48 01 90 85 */	bl iplButton_8139CB58
/* 81383AD8 | 48 00 00 AC */	b .L_81383B84
.L_81383ADC:
/* 81383ADC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81383AE0 | 48 1E 66 99 */	bl SCGetParentalControl
/* 81383AE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81383AE8 | 41 82 00 68 */	beq .L_81383B50
/* 81383AEC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81383AF0 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81383AF4 | 41 82 00 5C */	beq .L_81383B50
/* 81383AF8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383AFC | 38 80 00 05 */	li r4, 0x5
/* 81383B00 | 48 08 76 39 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383B04 | 38 80 00 00 */	li r4, 0x0
/* 81383B08 | 38 A0 00 00 */	li r5, 0x0
/* 81383B0C | 48 01 8E 31 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81383B10 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383B14 | 38 80 00 05 */	li r4, 0x5
/* 81383B18 | 48 08 76 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383B1C | 38 80 00 10 */	li r4, 0x10
/* 81383B20 | 48 01 90 39 */	bl iplButton_8139CB58
/* 81383B24 | 7F C3 F3 78 */	mr r3, r30
/* 81383B28 | 7F C5 F3 78 */	mr r5, r30
/* 81383B2C | 38 80 00 1B */	li r4, 0x1b
/* 81383B30 | 38 C0 00 00 */	li r6, 0x0
/* 81383B34 | 38 E0 00 01 */	li r7, 0x1
/* 81383B38 | 48 08 63 51 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 81383B3C | 38 60 00 00 */	li r3, 0x0
/* 81383B40 | 38 00 00 13 */	li r0, 0x13
/* 81383B44 | 98 7E 00 E0 */	stb r3, 0xe0(r30)
/* 81383B48 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81383B4C | 48 00 00 38 */	b .L_81383B84
.L_81383B50:
/* 81383B50 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383B54 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81383B58 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81383B5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383B60 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81383B64 | 7D 89 03 A6 */	mtctr r12
/* 81383B68 | 4E 80 04 21 */	bctrl
/* 81383B6C | 7F C3 F3 78 */	mr r3, r30
/* 81383B70 | 38 80 00 12 */	li r4, 0x12
/* 81383B74 | 38 A0 00 04 */	li r5, 0x4
/* 81383B78 | 48 08 64 1D */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 81383B7C | 38 00 00 1A */	li r0, 0x1a
/* 81383B80 | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81383B84:
/* 81383B84 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81383B88 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 81383B8C | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 81383B90 | 7C 08 03 A6 */	mtlr r0
/* 81383B94 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81383B98 | 4E 80 00 20 */	blr
.endfn stt_msg_wc__Q33ipl5scene7AddressFv

# .text:0x253C | 0x81383B9C | size: 0x84
# ipl::scene::Address::stt_wait_parental_wc()
.fn stt_wait_parental_wc__Q33ipl5scene7AddressFv, global
/* 81383B9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81383BA0 | 7C 08 02 A6 */	mflr r0
/* 81383BA4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81383BA8 | 38 80 00 1B */	li r4, 0x1b
/* 81383BAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81383BB0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81383BB4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81383BB8 | 7C 7F 1B 78 */	mr r31, r3
/* 81383BBC | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81383BC0 | 48 08 75 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383BC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81383BC8 | 41 82 00 44 */	beq .L_81383C0C
/* 81383BCC | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 81383BD0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383BD4 | 41 82 00 14 */	beq .L_81383BE8
/* 81383BD8 | 41 80 00 34 */	blt .L_81383C0C
/* 81383BDC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81383BE0 | 40 80 00 2C */	bge .L_81383C0C
/* 81383BE4 | 48 00 00 18 */	b .L_81383BFC
.L_81383BE8:
/* 81383BE8 | 38 60 00 01 */	li r3, 0x1
/* 81383BEC | 38 00 00 14 */	li r0, 0x14
/* 81383BF0 | 98 7F 00 E0 */	stb r3, 0xe0(r31)
/* 81383BF4 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81383BF8 | 48 00 00 14 */	b .L_81383C0C
.L_81383BFC:
/* 81383BFC | 38 60 00 00 */	li r3, 0x0
/* 81383C00 | 38 00 00 14 */	li r0, 0x14
/* 81383C04 | 98 7F 00 E0 */	stb r3, 0xe0(r31)
/* 81383C08 | 90 1F 00 AC */	stw r0, 0xac(r31)
.L_81383C0C:
/* 81383C0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383C10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383C14 | 7C 08 03 A6 */	mtlr r0
/* 81383C18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81383C1C | 4E 80 00 20 */	blr
.endfn stt_wait_parental_wc__Q33ipl5scene7AddressFv

# .text:0x25C0 | 0x81383C20 | size: 0x128
# ipl::scene::Address::stt_wait_parental_dst_wc()
.fn stt_wait_parental_dst_wc__Q33ipl5scene7AddressFv, global
/* 81383C20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81383C24 | 7C 08 02 A6 */	mflr r0
/* 81383C28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81383C2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81383C30 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81383C34 | 7C 7E 1B 78 */	mr r30, r3
/* 81383C38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383C3C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81383C40 | 7D 89 03 A6 */	mtctr r12
/* 81383C44 | 4E 80 04 21 */	bctrl
/* 81383C48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81383C4C | 40 82 00 E4 */	bne .L_81383D30
/* 81383C50 | 88 1E 00 E0 */	lbz r0, 0xe0(r30)
/* 81383C54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383C58 | 41 82 00 3C */	beq .L_81383C94
/* 81383C5C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383C60 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81383C64 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81383C68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81383C6C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81383C70 | 7D 89 03 A6 */	mtctr r12
/* 81383C74 | 4E 80 04 21 */	bctrl
/* 81383C78 | 7F C3 F3 78 */	mr r3, r30
/* 81383C7C | 38 80 00 12 */	li r4, 0x12
/* 81383C80 | 38 A0 00 04 */	li r5, 0x4
/* 81383C84 | 48 08 63 11 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 81383C88 | 38 00 00 1A */	li r0, 0x1a
/* 81383C8C | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81383C90 | 48 00 00 A0 */	b .L_81383D30
.L_81383C94:
/* 81383C94 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383C98 | 38 80 00 05 */	li r4, 0x5
/* 81383C9C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81383CA0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81383CA4 | 48 08 74 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383CA8 | 38 80 00 0F */	li r4, 0xf
/* 81383CAC | 48 01 8E AD */	bl iplButton_8139CB58
/* 81383CB0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81383CB4 | 7F DF F3 78 */	mr r31, r30
/* 81383CB8 | 41 82 00 08 */	beq .L_81383CC0
/* 81383CBC | 3B FE 00 58 */	addi r31, r30, 0x58
.L_81383CC0:
/* 81383CC0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81383CC4 | 38 80 00 05 */	li r4, 0x5
/* 81383CC8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81383CCC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81383CD0 | 48 08 74 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383CD4 | 7F E4 FB 78 */	mr r4, r31
/* 81383CD8 | 38 A0 00 00 */	li r5, 0x0
/* 81383CDC | 48 01 8C 61 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81383CE0 | 88 1E 00 E1 */	lbz r0, 0xe1(r30)
/* 81383CE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383CE8 | 41 82 00 10 */	beq .L_81383CF8
/* 81383CEC | 38 00 00 01 */	li r0, 0x1
/* 81383CF0 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81383CF4 | 48 00 00 0C */	b .L_81383D00
.L_81383CF8:
/* 81383CF8 | 38 00 00 04 */	li r0, 0x4
/* 81383CFC | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81383D00:
/* 81383D00 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81383D04 | 38 80 00 05 */	li r4, 0x5
/* 81383D08 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81383D0C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383D10 | 48 08 74 29 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383D14 | 38 80 00 17 */	li r4, 0x17
/* 81383D18 | 48 01 8E 41 */	bl iplButton_8139CB58
/* 81383D1C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383D20 | 38 80 00 05 */	li r4, 0x5
/* 81383D24 | 48 08 74 15 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383D28 | 38 80 00 18 */	li r4, 0x18
/* 81383D2C | 48 01 8E 2D */	bl iplButton_8139CB58
.L_81383D30:
/* 81383D30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383D34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383D38 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81383D3C | 7C 08 03 A6 */	mtlr r0
/* 81383D40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81383D44 | 4E 80 00 20 */	blr
.endfn stt_wait_parental_dst_wc__Q33ipl5scene7AddressFv

# .text:0x26E8 | 0x81383D48 | size: 0x90
# ipl::scene::Address::stt_msg_nwc24_error()
.fn stt_msg_nwc24_error__Q33ipl5scene7AddressFv, global
/* 81383D48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81383D4C | 7C 08 02 A6 */	mflr r0
/* 81383D50 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81383D54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81383D58 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81383D5C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81383D60 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 81383D64 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81383D68 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383D6C | 41 82 00 08 */	beq .L_81383D74
/* 81383D70 | 48 00 00 54 */	b .L_81383DC4
.L_81383D74:
/* 81383D74 | 88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 81383D78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383D7C | 41 82 00 10 */	beq .L_81383D8C
/* 81383D80 | 38 00 00 01 */	li r0, 0x1
/* 81383D84 | 90 03 00 AC */	stw r0, 0xac(r3)
/* 81383D88 | 48 00 00 0C */	b .L_81383D94
.L_81383D8C:
/* 81383D8C | 38 00 00 04 */	li r0, 0x4
/* 81383D90 | 90 03 00 AC */	stw r0, 0xac(r3)
.L_81383D94:
/* 81383D94 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81383D98 | 38 80 00 05 */	li r4, 0x5
/* 81383D9C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81383DA0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383DA4 | 48 08 73 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383DA8 | 38 80 00 17 */	li r4, 0x17
/* 81383DAC | 48 01 8D AD */	bl iplButton_8139CB58
/* 81383DB0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383DB4 | 38 80 00 05 */	li r4, 0x5
/* 81383DB8 | 48 08 73 81 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383DBC | 38 80 00 18 */	li r4, 0x18
/* 81383DC0 | 48 01 8D 99 */	bl iplButton_8139CB58
.L_81383DC4:
/* 81383DC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383DC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383DCC | 7C 08 03 A6 */	mtlr r0
/* 81383DD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81383DD4 | 4E 80 00 20 */	blr
.endfn stt_msg_nwc24_error__Q33ipl5scene7AddressFv

# .text:0x2778 | 0x81383DD8 | size: 0x90
# ipl::scene::Address::stt_msg_fi_full()
.fn stt_msg_fi_full__Q33ipl5scene7AddressFv, global
/* 81383DD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81383DDC | 7C 08 02 A6 */	mflr r0
/* 81383DE0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81383DE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81383DE8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81383DEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81383DF0 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 81383DF4 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81383DF8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383DFC | 41 82 00 08 */	beq .L_81383E04
/* 81383E00 | 48 00 00 54 */	b .L_81383E54
.L_81383E04:
/* 81383E04 | 88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 81383E08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383E0C | 41 82 00 10 */	beq .L_81383E1C
/* 81383E10 | 38 00 00 01 */	li r0, 0x1
/* 81383E14 | 90 03 00 AC */	stw r0, 0xac(r3)
/* 81383E18 | 48 00 00 0C */	b .L_81383E24
.L_81383E1C:
/* 81383E1C | 38 00 00 04 */	li r0, 0x4
/* 81383E20 | 90 03 00 AC */	stw r0, 0xac(r3)
.L_81383E24:
/* 81383E24 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81383E28 | 38 80 00 05 */	li r4, 0x5
/* 81383E2C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81383E30 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383E34 | 48 08 73 05 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383E38 | 38 80 00 17 */	li r4, 0x17
/* 81383E3C | 48 01 8D 1D */	bl iplButton_8139CB58
/* 81383E40 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383E44 | 38 80 00 05 */	li r4, 0x5
/* 81383E48 | 48 08 72 F1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383E4C | 38 80 00 18 */	li r4, 0x18
/* 81383E50 | 48 01 8D 09 */	bl iplButton_8139CB58
.L_81383E54:
/* 81383E54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383E58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383E5C | 7C 08 03 A6 */	mtlr r0
/* 81383E60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81383E64 | 4E 80 00 20 */	blr
.endfn stt_msg_fi_full__Q33ipl5scene7AddressFv

# .text:0x2808 | 0x81383E68 | size: 0x90
# ipl::scene::Address::stt_msg_parental()
.fn stt_msg_parental__Q33ipl5scene7AddressFv, global
/* 81383E68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81383E6C | 7C 08 02 A6 */	mflr r0
/* 81383E70 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81383E74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81383E78 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81383E7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81383E80 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 81383E84 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81383E88 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383E8C | 41 82 00 08 */	beq .L_81383E94
/* 81383E90 | 48 00 00 54 */	b .L_81383EE4
.L_81383E94:
/* 81383E94 | 88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 81383E98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383E9C | 41 82 00 10 */	beq .L_81383EAC
/* 81383EA0 | 38 00 00 01 */	li r0, 0x1
/* 81383EA4 | 90 03 00 AC */	stw r0, 0xac(r3)
/* 81383EA8 | 48 00 00 0C */	b .L_81383EB4
.L_81383EAC:
/* 81383EAC | 38 00 00 04 */	li r0, 0x4
/* 81383EB0 | 90 03 00 AC */	stw r0, 0xac(r3)
.L_81383EB4:
/* 81383EB4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81383EB8 | 38 80 00 05 */	li r4, 0x5
/* 81383EBC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81383EC0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383EC4 | 48 08 72 75 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383EC8 | 38 80 00 17 */	li r4, 0x17
/* 81383ECC | 48 01 8C 8D */	bl iplButton_8139CB58
/* 81383ED0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383ED4 | 38 80 00 05 */	li r4, 0x5
/* 81383ED8 | 48 08 72 61 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383EDC | 38 80 00 18 */	li r4, 0x18
/* 81383EE0 | 48 01 8C 79 */	bl iplButton_8139CB58
.L_81383EE4:
/* 81383EE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81383EE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81383EEC | 7C 08 03 A6 */	mtlr r0
/* 81383EF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81383EF4 | 4E 80 00 20 */	blr
.endfn stt_msg_parental__Q33ipl5scene7AddressFv

# .text:0x2898 | 0x81383EF8 | size: 0x12C
# ipl::scene::Address::stt_msg_open_failure()
.fn stt_msg_open_failure__Q33ipl5scene7AddressFv, global
/* 81383EF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81383EFC | 7C 08 02 A6 */	mflr r0
/* 81383F00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81383F04 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81383F08 | 48 27 55 C1 */	bl _savegpr_29
/* 81383F0C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81383F10 | 7C 7D 1B 78 */	mr r29, r3
/* 81383F14 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81383F18 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 81383F1C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 81383F20 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383F24 | 41 82 00 08 */	beq .L_81383F2C
/* 81383F28 | 48 00 00 E4 */	b .L_8138400C
.L_81383F2C:
/* 81383F2C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383F30 | 38 80 00 05 */	li r4, 0x5
/* 81383F34 | 48 08 72 05 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383F38 | 7C 7E 1B 78 */	mr r30, r3
/* 81383F3C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81383F40 | 38 80 00 08 */	li r4, 0x8
/* 81383F44 | 48 08 71 F5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81383F48 | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 81383F4C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81383F50 | 41 82 00 48 */	beq .L_81383F98
/* 81383F54 | 40 80 00 10 */	bge .L_81383F64
/* 81383F58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81383F5C | 40 80 00 14 */	bge .L_81383F70
/* 81383F60 | 48 00 00 8C */	b .L_81383FEC
.L_81383F64:
/* 81383F64 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81383F68 | 40 80 00 84 */	bge .L_81383FEC
/* 81383F6C | 48 00 00 48 */	b .L_81383FB4
.L_81383F70:
/* 81383F70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81383F74 | 41 82 00 08 */	beq .L_81383F7C
/* 81383F78 | 48 03 F5 4D */	bl finishAddress__Q33ipl5scene17MailAddressSelectFv
.L_81383F7C:
/* 81383F7C | 7F C3 F3 78 */	mr r3, r30
/* 81383F80 | 38 80 00 10 */	li r4, 0x10
/* 81383F84 | 48 01 94 A5 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81383F88 | 7F C3 F3 78 */	mr r3, r30
/* 81383F8C | 38 80 00 0B */	li r4, 0xb
/* 81383F90 | 48 01 94 99 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81383F94 | 48 00 00 58 */	b .L_81383FEC
.L_81383F98:
/* 81383F98 | 7F C3 F3 78 */	mr r3, r30
/* 81383F9C | 38 80 00 0C */	li r4, 0xc
/* 81383FA0 | 48 01 94 89 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81383FA4 | 7F C3 F3 78 */	mr r3, r30
/* 81383FA8 | 38 80 00 0B */	li r4, 0xb
/* 81383FAC | 48 01 94 7D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81383FB0 | 48 00 00 3C */	b .L_81383FEC
.L_81383FB4:
/* 81383FB4 | 7F C3 F3 78 */	mr r3, r30
/* 81383FB8 | 38 80 00 0C */	li r4, 0xc
/* 81383FBC | 48 01 94 6D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81383FC0 | 7F C3 F3 78 */	mr r3, r30
/* 81383FC4 | 38 80 00 00 */	li r4, 0x0
/* 81383FC8 | 38 A0 01 3B */	li r5, 0x13b
/* 81383FCC | 48 01 94 91 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81383FD0 | 7F C3 F3 78 */	mr r3, r30
/* 81383FD4 | 38 80 00 01 */	li r4, 0x1
/* 81383FD8 | 38 A0 00 33 */	li r5, 0x33
/* 81383FDC | 48 01 94 81 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81383FE0 | 7F C3 F3 78 */	mr r3, r30
/* 81383FE4 | 38 80 00 0F */	li r4, 0xf
/* 81383FE8 | 48 01 94 41 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_81383FEC:
/* 81383FEC | 7F C3 F3 78 */	mr r3, r30
/* 81383FF0 | 38 80 00 19 */	li r4, 0x19
/* 81383FF4 | 48 01 8B 65 */	bl iplButton_8139CB58
/* 81383FF8 | 7F C3 F3 78 */	mr r3, r30
/* 81383FFC | 38 80 00 1A */	li r4, 0x1a
/* 81384000 | 48 01 8B 59 */	bl iplButton_8139CB58
/* 81384004 | 38 00 00 1A */	li r0, 0x1a
/* 81384008 | 90 1D 00 AC */	stw r0, 0xac(r29)
.L_8138400C:
/* 8138400C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384010 | 48 27 55 05 */	bl _restgpr_29
/* 81384014 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81384018 | 7C 08 03 A6 */	mtlr r0
/* 8138401C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81384020 | 4E 80 00 20 */	blr
.endfn stt_msg_open_failure__Q33ipl5scene7AddressFv

# .text:0x29C4 | 0x81384024 | size: 0x50
# ipl::scene::Address::stt_wait_dialog()
.fn stt_wait_dialog__Q33ipl5scene7AddressFv, global
/* 81384024 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81384028 | 7C 08 02 A6 */	mflr r0
/* 8138402C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81384030 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81384034 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81384038 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138403C | 7C 7F 1B 78 */	mr r31, r3
/* 81384040 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 81384044 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81384048 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138404C | 41 80 00 14 */	blt .L_81384060
/* 81384050 | 38 80 00 01 */	li r4, 0x1
/* 81384054 | 48 00 11 25 */	bl reset_gui__Q33ipl5scene7AddressFb
/* 81384058 | 38 00 00 04 */	li r0, 0x4
/* 8138405C | 90 1F 00 AC */	stw r0, 0xac(r31)
.L_81384060:
/* 81384060 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81384064 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81384068 | 7C 08 03 A6 */	mtlr r0
/* 8138406C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81384070 | 4E 80 00 20 */	blr
.endfn stt_wait_dialog__Q33ipl5scene7AddressFv

# .text:0x2A14 | 0x81384074 | size: 0xB0
# ipl::scene::Address::add_translate(nw4r::lyt::Pane*, const ipl::math::VEC2&)
.fn add_translate__Q33ipl5scene7AddressFPQ34nw4r3lyt4PaneRCQ33ipl4math4VEC2, global
/* 81384074 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81384078 | 7C 08 02 A6 */	mflr r0
/* 8138407C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81384080 | 38 61 00 24 */	addi r3, r1, 0x24
/* 81384084 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81384088 | 7C BF 2B 78 */	mr r31, r5
/* 8138408C | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81384090 | 7C 9E 23 78 */	mr r30, r4
/* 81384094 | 4B FB 23 95 */	bl __ct__Q34nw4r2ut4RectFv
/* 81384098 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8138409C | 4B FB 23 8D */	bl __ct__Q34nw4r2ut4RectFv
/* 813840A0 | 38 61 00 24 */	addi r3, r1, 0x24
/* 813840A4 | 4B FB 18 75 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813840A8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813840AC | 4B FB 18 A1 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813840B0 | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 813840B4 | 7F C3 F3 78 */	mr r3, r30
/* 813840B8 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 813840BC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813840C0 | C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 813840C4 | EC 21 00 28 */	fsubs f1, f1, f0
/* 813840C8 | C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 813840CC | C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 813840D0 | C0 41 00 24 */	lfs f2, 0x24(r1)
/* 813840D4 | EC 20 00 72 */	fmuls f1, f0, f1
/* 813840D8 | D0 81 00 08 */	stfs f4, 0x8(r1)
/* 813840DC | EC 43 10 28 */	fsubs f2, f3, f2
/* 813840E0 | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 813840E4 | C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 813840E8 | EC 21 10 24 */	fdivs f1, f1, f2
/* 813840EC | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 813840F0 | C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 813840F4 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 813840F8 | EC 24 08 2A */	fadds f1, f4, f1
/* 813840FC | EC 03 00 2A */	fadds f0, f3, f0
/* 81384100 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 81384104 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81384108 | 4B FF E5 C9 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3
/* 8138410C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81384110 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81384114 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81384118 | 7C 08 03 A6 */	mtlr r0
/* 8138411C | 38 21 00 40 */	addi r1, r1, 0x40
/* 81384120 | 4E 80 00 20 */	blr
.endfn add_translate__Q33ipl5scene7AddressFPQ34nw4r3lyt4PaneRCQ33ipl4math4VEC2

# .text:0x2AC4 | 0x81384124 | size: 0x210
# ipl::scene::Address::set_friend(const char*, unsigned long, unsigned long, ipl::scene::Address::MiiObj&, bool)
.fn set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb, global
/* 81384124 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81384128 | 7C 08 02 A6 */	mflr r0
/* 8138412C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81384130 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81384134 | 48 27 53 81 */	bl _savegpr_24
/* 81384138 | 39 20 00 00 */	li r9, 0x0
/* 8138413C | 7C 9A 23 78 */	mr r26, r4
/* 81384140 | B1 21 00 08 */	sth r9, 0x8(r1)
/* 81384144 | 7C 79 1B 78 */	mr r25, r3
/* 81384148 | 7C BB 2B 78 */	mr r27, r5
/* 8138414C | 7C DC 33 78 */	mr r28, r6
/* 81384150 | 81 43 02 74 */	lwz r10, 0x274(r3)
/* 81384154 | 7C FD 3B 78 */	mr r29, r7
/* 81384158 | 3B C1 00 08 */	addi r30, r1, 0x8
/* 8138415C | 7C 8A 2A 14 */	add r4, r10, r5
/* 81384160 | 88 04 7D 00 */	lbz r0, 0x7d00(r4)
/* 81384164 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81384168 | 41 82 01 14 */	beq .L_8138427C
/* 8138416C | 1C 85 01 40 */	mulli r4, r5, 0x140
/* 81384170 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 81384174 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81384178 | 7F EA 22 14 */	add r31, r10, r4
/* 8138417C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81384180 | 3B DF 00 08 */	addi r30, r31, 0x8
/* 81384184 | 38 04 FF FE */	subi r0, r4, 0x2
/* 81384188 | 7C 00 00 34 */	cntlzw r0, r0
/* 8138418C | 54 18 D9 7E */	srwi r24, r0, 5
/* 81384190 | 40 82 00 20 */	bne .L_813841B0
/* 81384194 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81384198 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8138419C | 7C 00 00 34 */	cntlzw r0, r0
/* 813841A0 | 54 00 D9 7E */	srwi r0, r0, 5
/* 813841A4 | 7F 04 00 38 */	and r4, r24, r0
/* 813841A8 | 30 04 FF FF */	subic r0, r4, 0x1
/* 813841AC | 7F 00 21 10 */	subfe r24, r0, r4
.L_813841B0:
/* 813841B0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 813841B4 | 41 82 00 4C */	beq .L_81384200
/* 813841B8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 813841BC | 41 82 00 24 */	beq .L_813841E0
/* 813841C0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 813841C4 | 38 06 00 24 */	addi r0, r6, 0x24
/* 813841C8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813841CC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813841D0 | 48 18 E1 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813841D4 | C0 22 83 D8 */	lfs f1, lbl_816947D8@sda21(r0)
/* 813841D8 | 4B FE 5A 89 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 813841DC | 48 00 00 68 */	b .L_81384244
.L_813841E0:
/* 813841E0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 813841E4 | 38 06 00 24 */	addi r0, r6, 0x24
/* 813841E8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813841EC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813841F0 | 48 18 E1 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813841F4 | C0 22 83 E0 */	lfs f1, lbl_816947E0@sda21(r0)
/* 813841F8 | 4B FE 5A 69 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 813841FC | 48 00 00 48 */	b .L_81384244
.L_81384200:
/* 81384200 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81384204 | 41 82 00 20 */	beq .L_81384224
/* 81384208 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8138420C | 38 06 00 06 */	addi r0, r6, 0x6
/* 81384210 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384214 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81384218 | 48 18 E1 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138421C | 4B FE 5A 09 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81384220 | 48 00 00 1C */	b .L_8138423C
.L_81384224:
/* 81384224 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 81384228 | 38 06 00 15 */	addi r0, r6, 0x15
/* 8138422C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384230 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81384234 | 48 18 E0 E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81384238 | 4B FE 59 ED */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_8138423C:
/* 8138423C | 7C 79 E2 14 */	add r3, r25, r28
/* 81384240 | 9B 03 00 C4 */	stb r24, 0xc4(r3)
.L_81384244:
/* 81384244 | 88 19 00 84 */	lbz r0, 0x84(r25)
/* 81384248 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138424C | 41 82 00 1C */	beq .L_81384268
/* 81384250 | 80 19 00 70 */	lwz r0, 0x70(r25)
/* 81384254 | 80 79 00 74 */	lwz r3, 0x74(r25)
/* 81384258 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 8138425C | 7C 03 02 14 */	add r0, r3, r0
/* 81384260 | 7C 1B 00 40 */	cmplw r27, r0
/* 81384264 | 41 82 00 68 */	beq .L_813842CC
.L_81384268:
/* 81384268 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 8138426C | 7F A3 EB 78 */	mr r3, r29
/* 81384270 | 80 DF 00 24 */	lwz r6, 0x24(r31)
/* 81384274 | 48 00 26 FD */	bl set__Q43ipl5scene7Address6MiiObjFUx
/* 81384278 | 48 00 00 54 */	b .L_813842CC
.L_8138427C:
/* 8138427C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81384280 | 41 82 00 24 */	beq .L_813842A4
/* 81384284 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 81384288 | 38 06 00 24 */	addi r0, r6, 0x24
/* 8138428C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384290 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81384294 | 48 18 E0 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81384298 | C0 22 83 D8 */	lfs f1, lbl_816947D8@sda21(r0)
/* 8138429C | 4B FE 59 C5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 813842A0 | 48 00 00 24 */	b .L_813842C4
.L_813842A4:
/* 813842A4 | 7C 83 32 14 */	add r4, r3, r6
/* 813842A8 | 38 06 00 15 */	addi r0, r6, 0x15
/* 813842AC | 99 24 00 C4 */	stb r9, 0xc4(r4)
/* 813842B0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813842B4 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 813842B8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813842BC | 48 18 E0 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813842C0 | 4B FE 59 65 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_813842C4:
/* 813842C4 | 7F A3 EB 78 */	mr r3, r29
/* 813842C8 | 48 00 27 35 */	bl reset__Q43ipl5scene7Address6MiiObjFv
.L_813842CC:
/* 813842CC | 88 19 00 84 */	lbz r0, 0x84(r25)
/* 813842D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813842D4 | 41 82 00 1C */	beq .L_813842F0
/* 813842D8 | 80 19 00 70 */	lwz r0, 0x70(r25)
/* 813842DC | 80 79 00 74 */	lwz r3, 0x74(r25)
/* 813842E0 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 813842E4 | 7C 03 02 14 */	add r0, r3, r0
/* 813842E8 | 7C 1B 00 40 */	cmplw r27, r0
/* 813842EC | 41 82 00 18 */	beq .L_81384304
.L_813842F0:
/* 813842F0 | 7F 23 CB 78 */	mr r3, r25
/* 813842F4 | 7F 44 D3 78 */	mr r4, r26
/* 813842F8 | 7F C5 F3 78 */	mr r5, r30
/* 813842FC | 48 00 01 45 */	bl set_textbox__Q33ipl5scene7AddressFPCcPCw
/* 81384300 | 48 00 00 1C */	b .L_8138431C
.L_81384304:
/* 81384304 | 7F 23 CB 78 */	mr r3, r25
/* 81384308 | 7F 44 D3 78 */	mr r4, r26
/* 8138430C | 38 AD 85 8A */	li r5, lbl_816965CA@sda21
/* 81384310 | 48 00 01 31 */	bl set_textbox__Q33ipl5scene7AddressFPCcPCw
/* 81384314 | 7F A3 EB 78 */	mr r3, r29
/* 81384318 | 48 00 26 E5 */	bl reset__Q43ipl5scene7Address6MiiObjFv
.L_8138431C:
/* 8138431C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81384320 | 48 27 51 E1 */	bl _restgpr_24
/* 81384324 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81384328 | 7C 08 03 A6 */	mtlr r0
/* 8138432C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81384330 | 4E 80 00 20 */	blr
.endfn set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb

# .text:0x2CD4 | 0x81384334 | size: 0x10C
# ipl::scene::Address::set_page_text(const char*, int)
.fn set_page_text__Q33ipl5scene7AddressFPCci, global
/* 81384334 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81384338 | 7C 08 02 A6 */	mflr r0
/* 8138433C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81384340 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81384344 | 48 27 51 85 */	bl _savegpr_29
/* 81384348 | 3C C0 81 61 */	lis r6, lbl_8160F650@ha
/* 8138434C | 38 00 00 05 */	li r0, 0x5
/* 81384350 | 38 C6 F6 50 */	addi r6, r6, lbl_8160F650@l
/* 81384354 | 39 01 00 12 */	addi r8, r1, 0x12
/* 81384358 | 38 E6 FF FE */	subi r7, r6, 0x2
/* 8138435C | 7C 09 03 A6 */	mtctr r0
.L_81384360:
/* 81384360 | A0 C7 00 02 */	lhz r6, 0x2(r7)
/* 81384364 | A4 07 00 04 */	lhzu r0, 0x4(r7)
/* 81384368 | B0 C8 00 02 */	sth r6, 0x2(r8)
/* 8138436C | B4 08 00 04 */	sthu r0, 0x4(r8)
/* 81384370 | 42 00 FF F0 */	bdnz .L_81384360
/* 81384374 | 38 00 00 00 */	li r0, 0x0
/* 81384378 | 2C 05 00 0A */	cmpwi r5, 0xa
/* 8138437C | B0 01 00 08 */	sth r0, 0x8(r1)
/* 81384380 | 3B A0 00 00 */	li r29, 0x0
/* 81384384 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81384388 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8138438C | B0 01 00 0E */	sth r0, 0xe(r1)
/* 81384390 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81384394 | B0 01 00 12 */	sth r0, 0x12(r1)
/* 81384398 | 41 80 00 20 */	blt .L_813843B8
/* 8138439C | 38 00 00 0A */	li r0, 0xa
/* 813843A0 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 813843A4 | 7C 05 03 D6 */	divw r0, r5, r0
/* 813843A8 | 3B A0 00 01 */	li r29, 0x1
/* 813843AC | 54 00 08 3C */	slwi r0, r0, 1
/* 813843B0 | 7C 06 02 2E */	lhzx r0, r6, r0
/* 813843B4 | B0 01 00 08 */	sth r0, 0x8(r1)
.L_813843B8:
/* 813843B8 | 38 E0 00 0A */	li r7, 0xa
/* 813843BC | 57 BE 08 3C */	slwi r30, r29, 1
/* 813843C0 | 7C 05 3B D6 */	divw r0, r5, r7
/* 813843C4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813843C8 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 813843CC | A1 41 00 18 */	lhz r10, 0x18(r1)
/* 813843D0 | 57 AB 08 3C */	slwi r11, r29, 1
/* 813843D4 | A1 01 00 14 */	lhz r8, 0x14(r1)
/* 813843D8 | 7C 00 39 D6 */	mullw r0, r0, r7
/* 813843DC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813843E0 | 3B E1 00 08 */	addi r31, r1, 0x8
/* 813843E4 | 57 A9 08 3C */	slwi r9, r29, 1
/* 813843E8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813843EC | 39 80 00 2F */	li r12, 0x2f
/* 813843F0 | 7C 00 28 50 */	subf r0, r0, r5
/* 813843F4 | 57 A7 08 3C */	slwi r7, r29, 1
/* 813843F8 | 54 00 08 3C */	slwi r0, r0, 1
/* 813843FC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81384400 | 7C A6 02 2E */	lhzx r5, r6, r0
/* 81384404 | 57 A0 08 3C */	slwi r0, r29, 1
/* 81384408 | 38 C0 00 00 */	li r6, 0x0
/* 8138440C | 7C BF F3 2E */	sthx r5, r31, r30
/* 81384410 | 7F E5 FB 78 */	mr r5, r31
/* 81384414 | 7D 9F 5B 2E */	sthx r12, r31, r11
/* 81384418 | 7D 5F 4B 2E */	sthx r10, r31, r9
/* 8138441C | 7D 1F 3B 2E */	sthx r8, r31, r7
/* 81384420 | 7C DF 03 2E */	sthx r6, r31, r0
/* 81384424 | 48 00 00 1D */	bl set_textbox__Q33ipl5scene7AddressFPCcPCw
/* 81384428 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8138442C | 48 27 50 E9 */	bl _restgpr_29
/* 81384430 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81384434 | 7C 08 03 A6 */	mtlr r0
/* 81384438 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8138443C | 4E 80 00 20 */	blr
.endfn set_page_text__Q33ipl5scene7AddressFPCci

# .text:0x2DE0 | 0x81384440 | size: 0x60
# ipl::scene::Address::set_textbox(const char*, const wchar_t*)
.fn set_textbox__Q33ipl5scene7AddressFPCcPCw, global
/* 81384440 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81384444 | 7C 08 02 A6 */	mflr r0
/* 81384448 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138444C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81384450 | 7C BF 2B 78 */	mr r31, r5
/* 81384454 | 38 A0 00 01 */	li r5, 0x1
/* 81384458 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8138445C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81384460 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81384464 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81384468 | 7D 89 03 A6 */	mtctr r12
/* 8138446C | 4E 80 04 21 */	bctrl
/* 81384470 | 4B FC 19 F5 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81384474 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81384478 | 7F E4 FB 78 */	mr r4, r31
/* 8138447C | 38 A0 00 00 */	li r5, 0x0
/* 81384480 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81384484 | 7D 89 03 A6 */	mtctr r12
/* 81384488 | 4E 80 04 21 */	bctrl
/* 8138448C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81384490 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81384494 | 7C 08 03 A6 */	mtlr r0
/* 81384498 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138449C | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene7AddressFPCcPCw

# .text:0x2E40 | 0x813844A0 | size: 0x80
# ipl::scene::Address::reset_friend()
.fn reset_friend__Q33ipl5scene7AddressFv, global
/* 813844A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813844A4 | 7C 08 02 A6 */	mflr r0
/* 813844A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813844AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813844B0 | 48 27 50 11 */	bl _savegpr_27
/* 813844B4 | 3F A0 81 64 */	lis r29, lbl_81647574@ha
/* 813844B8 | 7C 7B 1B 78 */	mr r27, r3
/* 813844BC | 3B BD 75 74 */	addi r29, r29, lbl_81647574@l
/* 813844C0 | 3B 80 00 00 */	li r28, 0x0
/* 813844C4 | 3B E0 00 00 */	li r31, 0x0
/* 813844C8 | 3B C0 00 00 */	li r30, 0x0
.L_813844CC:
/* 813844CC | 80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 813844D0 | 7C BB FA 14 */	add r5, r27, r31
/* 813844D4 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813844D8 | 7F 63 DB 78 */	mr r3, r27
/* 813844DC | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 813844E0 | 38 E5 00 E4 */	addi r7, r5, 0xe4
/* 813844E4 | 7F 86 E3 78 */	mr r6, r28
/* 813844E8 | 39 00 00 00 */	li r8, 0x0
/* 813844EC | 7C BC 02 14 */	add r5, r28, r0
/* 813844F0 | 4B FF FC 35 */	bl set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb
/* 813844F4 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813844F8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813844FC | 28 1C 00 05 */	cmplwi r28, 0x5
/* 81384500 | 3B FF 00 28 */	addi r31, r31, 0x28
/* 81384504 | 41 80 FF C8 */	blt .L_813844CC
/* 81384508 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138450C | 48 27 50 01 */	bl _restgpr_27
/* 81384510 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81384514 | 7C 08 03 A6 */	mtlr r0
/* 81384518 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138451C | 4E 80 00 20 */	blr
.endfn reset_friend__Q33ipl5scene7AddressFv

# .text:0x2EC0 | 0x81384520 | size: 0x84
# ipl::scene::Address::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene7AddressFPCcPQ33ipl10controller9Interface, global
/* 81384520 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81384524 | 7C 08 02 A6 */	mflr r0
/* 81384528 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138452C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384530 | 48 27 4F 99 */	bl _savegpr_29
/* 81384534 | 7C 7D 1B 78 */	mr r29, r3
/* 81384538 | 7C BE 2B 78 */	mr r30, r5
/* 8138453C | 48 00 0B 55 */	bl get_button_no__Q33ipl5scene7AddressFPCc
/* 81384540 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81384544 | 7C 7F 1B 78 */	mr r31, r3
/* 81384548 | 41 82 00 44 */	beq .L_8138458C
/* 8138454C | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 81384550 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81384554 | 41 82 00 28 */	beq .L_8138457C
/* 81384558 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138455C | 40 82 00 30 */	bne .L_8138458C
/* 81384560 | 80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 81384564 | 7F A3 EB 78 */	mr r3, r29
/* 81384568 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 8138456C | 7C 9F 02 14 */	add r4, r31, r0
/* 81384570 | 48 00 0E D9 */	bl is_selectable__Q33ipl5scene7AddressFUl
/* 81384574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81384578 | 41 82 00 14 */	beq .L_8138458C
.L_8138457C:
/* 8138457C | 7F A3 EB 78 */	mr r3, r29
/* 81384580 | 7F E4 FB 78 */	mr r4, r31
/* 81384584 | 7F C5 F3 78 */	mr r5, r30
/* 81384588 | 48 00 09 81 */	bl on_point_event__Q33ipl5scene7AddressFiPQ33ipl10controller9Interface
.L_8138458C:
/* 8138458C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384590 | 48 27 4F 85 */	bl _restgpr_29
/* 81384594 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81384598 | 7C 08 03 A6 */	mtlr r0
/* 8138459C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813845A0 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene7AddressFPCcPQ33ipl10controller9Interface

# .text:0x2F44 | 0x813845A4 | size: 0x7C
# ipl::scene::Address::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene7AddressFPCc, global
/* 813845A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813845A8 | 7C 08 02 A6 */	mflr r0
/* 813845AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813845B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813845B4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813845B8 | 7C 7E 1B 78 */	mr r30, r3
/* 813845BC | 48 00 0A D5 */	bl get_button_no__Q33ipl5scene7AddressFPCc
/* 813845C0 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813845C4 | 7C 7F 1B 78 */	mr r31, r3
/* 813845C8 | 41 82 00 40 */	beq .L_81384608
/* 813845CC | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 813845D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813845D4 | 41 82 00 28 */	beq .L_813845FC
/* 813845D8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813845DC | 40 82 00 2C */	bne .L_81384608
/* 813845E0 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 813845E4 | 7F C3 F3 78 */	mr r3, r30
/* 813845E8 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 813845EC | 7C 9F 02 14 */	add r4, r31, r0
/* 813845F0 | 48 00 0E 59 */	bl is_selectable__Q33ipl5scene7AddressFUl
/* 813845F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813845F8 | 41 82 00 10 */	beq .L_81384608
.L_813845FC:
/* 813845FC | 7F C3 F3 78 */	mr r3, r30
/* 81384600 | 7F E4 FB 78 */	mr r4, r31
/* 81384604 | 48 00 09 DD */	bl left_point_event__Q33ipl5scene7AddressFi
.L_81384608:
/* 81384608 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138460C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81384610 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81384614 | 7C 08 03 A6 */	mtlr r0
/* 81384618 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138461C | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene7AddressFPCc

# .text:0x2FC0 | 0x81384620 | size: 0x330
# ipl::scene::Address::start_trig_event(const char*)
.fn start_trig_event__Q33ipl5scene7AddressFPCc, global
/* 81384620 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81384624 | 7C 08 02 A6 */	mflr r0
/* 81384628 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138462C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384630 | 48 27 4E 99 */	bl _savegpr_29
/* 81384634 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81384638 | 7C 9F 23 78 */	mr r31, r4
/* 8138463C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81384640 | 7C 7E 1B 78 */	mr r30, r3
/* 81384644 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81384648 | 38 80 00 05 */	li r4, 0x5
/* 8138464C | 48 08 6A ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 81384650 | 7C 7D 1B 78 */	mr r29, r3
/* 81384654 | 7F C3 F3 78 */	mr r3, r30
/* 81384658 | 7F E4 FB 78 */	mr r4, r31
/* 8138465C | 48 00 0A 35 */	bl get_button_no__Q33ipl5scene7AddressFPCc
/* 81384660 | 80 1E 00 AC */	lwz r0, 0xac(r30)
/* 81384664 | 7C 7F 1B 78 */	mr r31, r3
/* 81384668 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8138466C | 41 82 00 08 */	beq .L_81384674
/* 81384670 | 48 00 02 C8 */	b .L_81384938
.L_81384674:
/* 81384674 | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 81384678 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138467C | 41 82 00 14 */	beq .L_81384690
/* 81384680 | 41 80 02 B8 */	blt .L_81384938
/* 81384684 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81384688 | 40 80 02 B0 */	bge .L_81384938
/* 8138468C | 48 00 01 44 */	b .L_813847D0
.L_81384690:
/* 81384690 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81384694 | 41 82 01 14 */	beq .L_813847A8
/* 81384698 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8138469C | 7F C3 F3 78 */	mr r3, r30
/* 813846A0 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 813846A4 | 7C 9F 02 14 */	add r4, r31, r0
/* 813846A8 | 48 00 0D A1 */	bl is_selectable__Q33ipl5scene7AddressFUl
/* 813846AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813846B0 | 41 82 00 F8 */	beq .L_813847A8
/* 813846B4 | 7F A3 EB 78 */	mr r3, r29
/* 813846B8 | 38 80 00 19 */	li r4, 0x19
/* 813846BC | 48 01 84 9D */	bl iplButton_8139CB58
/* 813846C0 | 7F A3 EB 78 */	mr r3, r29
/* 813846C4 | 38 80 00 1A */	li r4, 0x1a
/* 813846C8 | 48 01 84 91 */	bl iplButton_8139CB58
/* 813846CC | 7F A3 EB 78 */	mr r3, r29
/* 813846D0 | 38 80 00 10 */	li r4, 0x10
/* 813846D4 | 48 01 84 85 */	bl iplButton_8139CB58
/* 813846D8 | 7F A3 EB 78 */	mr r3, r29
/* 813846DC | 38 80 00 00 */	li r4, 0x0
/* 813846E0 | 38 A0 01 3B */	li r5, 0x13b
/* 813846E4 | 48 01 8D 79 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813846E8 | 7F A3 EB 78 */	mr r3, r29
/* 813846EC | 38 80 00 0B */	li r4, 0xb
/* 813846F0 | 48 01 8D 39 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813846F4 | 7F A3 EB 78 */	mr r3, r29
/* 813846F8 | 38 80 00 00 */	li r4, 0x0
/* 813846FC | 38 A0 00 00 */	li r5, 0x0
/* 81384700 | 48 01 82 3D */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81384704 | 7C 7E FA 14 */	add r3, r30, r31
/* 81384708 | 88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 8138470C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81384710 | 41 82 00 2C */	beq .L_8138473C
/* 81384714 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81384718 | 38 1F 00 10 */	addi r0, r31, 0x10
/* 8138471C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384720 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81384724 | 48 18 DB F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81384728 | 7C 7D 1B 78 */	mr r29, r3
/* 8138472C | 4B FD E1 45 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81384730 | 38 00 00 01 */	li r0, 0x1
/* 81384734 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81384738 | 48 00 00 28 */	b .L_81384760
.L_8138473C:
/* 8138473C | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81384740 | 38 1F 00 1F */	addi r0, r31, 0x1f
/* 81384744 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384748 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138474C | 48 18 DB CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81384750 | 7C 7D 1B 78 */	mr r29, r3
/* 81384754 | 4B FD E1 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81384758 | 38 00 00 01 */	li r0, 0x1
/* 8138475C | 90 1D 00 14 */	stw r0, 0x14(r29)
.L_81384760:
/* 81384760 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 81384764 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81384768 | 3C 80 81 64 */	lis r4, lbl_81647A78@ha
/* 8138476C | 93 FE 00 BC */	stw r31, 0xbc(r30)
/* 81384770 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81384774 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81384778 | 38 84 7A 78 */	addi r4, r4, lbl_81647A78@l
/* 8138477C | 7C 1F 02 14 */	add r0, r31, r0
/* 81384780 | 90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 81384784 | 4B FE 6C E9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81384788 | 57 E3 10 3A */	slwi r3, r31, 2
/* 8138478C | 38 00 00 09 */	li r0, 0x9
/* 81384790 | 7C 9E 1A 14 */	add r4, r30, r3
/* 81384794 | 80 64 00 CC */	lwz r3, 0xcc(r4)
/* 81384798 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8138479C | 90 64 00 CC */	stw r3, 0xcc(r4)
/* 813847A0 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 813847A4 | 48 00 01 94 */	b .L_81384938
.L_813847A8:
/* 813847A8 | 2C 1F FF FF */	cmpwi r31, -0x1
/* 813847AC | 41 82 01 8C */	beq .L_81384938
/* 813847B0 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 813847B4 | 7F C3 F3 78 */	mr r3, r30
/* 813847B8 | 93 FE 00 BC */	stw r31, 0xbc(r30)
/* 813847BC | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 813847C0 | 7C 1F 02 14 */	add r0, r31, r0
/* 813847C4 | 90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 813847C8 | 48 00 18 21 */	bl entry_friend__Q33ipl5scene7AddressFv
/* 813847CC | 48 00 01 6C */	b .L_81384938
.L_813847D0:
/* 813847D0 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813847D4 | 41 82 00 C8 */	beq .L_8138489C
/* 813847D8 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 813847DC | 7F C3 F3 78 */	mr r3, r30
/* 813847E0 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 813847E4 | 7C 9F 02 14 */	add r4, r31, r0
/* 813847E8 | 48 00 0C 61 */	bl is_selectable__Q33ipl5scene7AddressFUl
/* 813847EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813847F0 | 41 82 00 AC */	beq .L_8138489C
/* 813847F4 | 7F A3 EB 78 */	mr r3, r29
/* 813847F8 | 38 80 00 0C */	li r4, 0xc
/* 813847FC | 48 01 83 5D */	bl iplButton_8139CB58
/* 81384800 | 7F A3 EB 78 */	mr r3, r29
/* 81384804 | 38 80 00 00 */	li r4, 0x0
/* 81384808 | 38 A0 00 25 */	li r5, 0x25
/* 8138480C | 48 01 8C 51 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81384810 | 7F A3 EB 78 */	mr r3, r29
/* 81384814 | 38 80 00 01 */	li r4, 0x1
/* 81384818 | 38 A0 00 33 */	li r5, 0x33
/* 8138481C | 48 01 8C 41 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81384820 | 7F A3 EB 78 */	mr r3, r29
/* 81384824 | 38 80 00 0F */	li r4, 0xf
/* 81384828 | 48 01 8C 01 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8138482C | 7F A3 EB 78 */	mr r3, r29
/* 81384830 | 38 80 00 19 */	li r4, 0x19
/* 81384834 | 48 01 83 25 */	bl iplButton_8139CB58
/* 81384838 | 7F A3 EB 78 */	mr r3, r29
/* 8138483C | 38 80 00 1A */	li r4, 0x1a
/* 81384840 | 48 01 83 19 */	bl iplButton_8139CB58
/* 81384844 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81384848 | 38 1F 00 10 */	addi r0, r31, 0x10
/* 8138484C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384850 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81384854 | 48 18 DA C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81384858 | 7C 7D 1B 78 */	mr r29, r3
/* 8138485C | 4B FD E0 15 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81384860 | 38 00 00 01 */	li r0, 0x1
/* 81384864 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81384868 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 8138486C | 3C 80 81 64 */	lis r4, lbl_81647A78@ha
/* 81384870 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81384874 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 81384878 | 38 84 7A 78 */	addi r4, r4, lbl_81647A78@l
/* 8138487C | 93 FE 00 BC */	stw r31, 0xbc(r30)
/* 81384880 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81384884 | 7C 1F 02 14 */	add r0, r31, r0
/* 81384888 | 90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 8138488C | 4B FE 6B E1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81384890 | 38 00 00 09 */	li r0, 0x9
/* 81384894 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81384898 | 48 00 00 A0 */	b .L_81384938
.L_8138489C:
/* 8138489C | 2C 1F FF FF */	cmpwi r31, -0x1
/* 813848A0 | 41 82 00 98 */	beq .L_81384938
/* 813848A4 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 813848A8 | 80 9E 02 74 */	lwz r4, 0x274(r30)
/* 813848AC | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 813848B0 | 7C BF 02 14 */	add r5, r31, r0
/* 813848B4 | 7C 64 2A 14 */	add r3, r4, r5
/* 813848B8 | 88 03 7D 00 */	lbz r0, 0x7d00(r3)
/* 813848BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813848C0 | 41 82 00 78 */	beq .L_81384938
/* 813848C4 | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 813848C8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813848CC | 40 82 00 20 */	bne .L_813848EC
/* 813848D0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813848D4 | 38 80 00 57 */	li r4, 0x57
/* 813848D8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813848DC | 38 A0 00 2E */	li r5, 0x2e
/* 813848E0 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813848E4 | 4B FC 1E 15 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813848E8 | 48 00 00 48 */	b .L_81384930
.L_813848EC:
/* 813848EC | 1C 05 01 40 */	mulli r0, r5, 0x140
/* 813848F0 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 813848F4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813848F8 | 40 82 00 20 */	bne .L_81384918
/* 813848FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81384900 | 38 80 00 57 */	li r4, 0x57
/* 81384904 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81384908 | 38 A0 00 2E */	li r5, 0x2e
/* 8138490C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81384910 | 4B FC 1D E9 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 81384914 | 48 00 00 1C */	b .L_81384930
.L_81384918:
/* 81384918 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138491C | 38 80 00 22 */	li r4, 0x22
/* 81384920 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81384924 | 38 A0 00 2E */	li r5, 0x2e
/* 81384928 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8138492C | 4B FC 1D CD */	bl callBtn1__Q23ipl12DialogWindowFUlUl
.L_81384930:
/* 81384930 | 38 00 00 19 */	li r0, 0x19
/* 81384934 | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81384938:
/* 81384938 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138493C | 48 27 4B D9 */	bl _restgpr_29
/* 81384940 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81384944 | 7C 08 03 A6 */	mtlr r0
/* 81384948 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8138494C | 4E 80 00 20 */	blr
.endfn start_trig_event__Q33ipl5scene7AddressFPCc

# .text:0x32F0 | 0x81384950 | size: 0x37C
# ipl::scene::Address::start_drag_event(const char*, const ipl::controller::Interface*)
.fn start_drag_event__Q33ipl5scene7AddressFPCcPCQ33ipl10controller9Interface, global
/* 81384950 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81384954 | 7C 08 02 A6 */	mflr r0
/* 81384958 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8138495C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81384960 | 48 27 4B 5D */	bl _savegpr_26
/* 81384964 | 3F C0 81 64 */	lis r30, lbl_81647538@ha
/* 81384968 | 7C 7C 1B 78 */	mr r28, r3
/* 8138496C | 7C BD 2B 78 */	mr r29, r5
/* 81384970 | 3B DE 75 38 */	addi r30, r30, lbl_81647538@l
/* 81384974 | 48 00 07 1D */	bl get_button_no__Q33ipl5scene7AddressFPCc
/* 81384978 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8138497C | 7C 7F 1B 78 */	mr r31, r3
/* 81384980 | 41 82 03 34 */	beq .L_81384CB4
/* 81384984 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81384988 | 7F A3 EB 78 */	mr r3, r29
/* 8138498C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81384990 | 7D 89 03 A6 */	mtctr r12
/* 81384994 | 4E 80 04 21 */	bctrl
/* 81384998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138499C | 41 80 03 18 */	blt .L_81384CB4
/* 813849A0 | 80 1C 00 AC */	lwz r0, 0xac(r28)
/* 813849A4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813849A8 | 41 82 00 08 */	beq .L_813849B0
/* 813849AC | 48 00 03 08 */	b .L_81384CB4
.L_813849B0:
/* 813849B0 | 80 1C 00 88 */	lwz r0, 0x88(r28)
/* 813849B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813849B8 | 41 82 00 08 */	beq .L_813849C0
/* 813849BC | 48 00 02 F8 */	b .L_81384CB4
.L_813849C0:
/* 813849C0 | 80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 813849C4 | 80 7C 02 74 */	lwz r3, 0x274(r28)
/* 813849C8 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 813849CC | 7C 1F 02 14 */	add r0, r31, r0
/* 813849D0 | 7C 60 1A 14 */	add r3, r0, r3
/* 813849D4 | 88 03 7D 00 */	lbz r0, 0x7d00(r3)
/* 813849D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813849DC | 41 82 02 D8 */	beq .L_81384CB4
/* 813849E0 | 38 00 00 01 */	li r0, 0x1
/* 813849E4 | 7F A3 EB 78 */	mr r3, r29
/* 813849E8 | 98 1C 00 84 */	stb r0, 0x84(r28)
/* 813849EC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813849F0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813849F4 | 7D 89 03 A6 */	mtctr r12
/* 813849F8 | 4E 80 04 21 */	bctrl
/* 813849FC | 90 7C 00 6C */	stw r3, 0x6c(r28)
/* 81384A00 | 7F A3 EB 78 */	mr r3, r29
/* 81384A04 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81384A08 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81384A0C | 7D 89 03 A6 */	mtctr r12
/* 81384A10 | 4E 80 04 21 */	bctrl
/* 81384A14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81384A18 | 41 82 00 40 */	beq .L_81384A58
/* 81384A1C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81384A20 | 80 9C 00 6C */	lwz r4, 0x6c(r28)
/* 81384A24 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81384A28 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81384A2C | 4B FB 2E 5D */	bl getController__Q33ipl10controller7ManagerFi
/* 81384A30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81384A34 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81384A38 | 7D 89 03 A6 */	mtctr r12
/* 81384A3C | 4E 80 04 21 */	bctrl
/* 81384A40 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 81384A44 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81384A48 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81384A4C | 38 7C 00 64 */	addi r3, r28, 0x64
/* 81384A50 | 4B FE 63 89 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 81384A54 | 48 00 00 1C */	b .L_81384A70
.L_81384A58:
/* 81384A58 | C0 02 83 D8 */	lfs f0, lbl_816947D8@sda21(r0)
/* 81384A5C | 38 7C 00 64 */	addi r3, r28, 0x64
/* 81384A60 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81384A64 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81384A68 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81384A6C | 4B FE 63 6D */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
.L_81384A70:
/* 81384A70 | 80 7C 00 B0 */	lwz r3, 0xb0(r28)
/* 81384A74 | 38 00 FF FF */	li r0, -0x1
/* 81384A78 | 3B 40 00 00 */	li r26, 0x0
/* 81384A7C | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 81384A80 | 90 7C 00 70 */	stw r3, 0x70(r28)
/* 81384A84 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 81384A88 | 7F A3 EB 78 */	mr r3, r29
/* 81384A8C | 93 FC 00 74 */	stw r31, 0x74(r28)
/* 81384A90 | 90 1C 00 78 */	stw r0, 0x78(r28)
/* 81384A94 | 90 1C 00 7C */	stw r0, 0x7c(r28)
/* 81384A98 | 93 5C 00 80 */	stw r26, 0x80(r28)
/* 81384A9C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81384AA0 | 83 BB 00 B0 */	lwz r29, 0xb0(r27)
/* 81384AA4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81384AA8 | 7D 89 03 A6 */	mtctr r12
/* 81384AAC | 4E 80 04 21 */	bctrl
/* 81384AB0 | 7C 64 1B 78 */	mr r4, r3
/* 81384AB4 | 7F A3 EB 78 */	mr r3, r29
/* 81384AB8 | 38 A0 00 01 */	li r5, 0x1
/* 81384ABC | 4B FB F9 C5 */	bl changeType__Q23ipl7PointerFii
/* 81384AC0 | 80 7B 00 64 */	lwz r3, 0x64(r27)
/* 81384AC4 | 38 80 00 05 */	li r4, 0x5
/* 81384AC8 | 48 08 66 71 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81384ACC | 48 01 88 21 */	bl disableBtn__Q33ipl5scene6ButtonFv
/* 81384AD0 | B3 41 00 08 */	sth r26, 0x8(r1)
/* 81384AD4 | 38 9E 00 3C */	addi r4, r30, 0x3c
/* 81384AD8 | 38 A0 00 01 */	li r5, 0x1
/* 81384ADC | B3 41 00 0A */	sth r26, 0xa(r1)
/* 81384AE0 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81384AE4 | 80 1C 00 74 */	lwz r0, 0x74(r28)
/* 81384AE8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81384AEC | 54 00 10 3A */	slwi r0, r0, 2
/* 81384AF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81384AF4 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81384AF8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81384AFC | 7D 89 03 A6 */	mtctr r12
/* 81384B00 | 4E 80 04 21 */	bctrl
/* 81384B04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81384B08 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81384B0C | 38 A0 00 00 */	li r5, 0x0
/* 81384B10 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81384B14 | 7D 89 03 A6 */	mtctr r12
/* 81384B18 | 4E 80 04 21 */	bctrl
/* 81384B1C | 1F 7F 00 28 */	mulli r27, r31, 0x28
/* 81384B20 | 7C 7C DA 14 */	add r3, r28, r27
/* 81384B24 | 83 43 01 04 */	lwz r26, 0x104(r3)
/* 81384B28 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81384B2C | 41 82 00 C0 */	beq .L_81384BEC
/* 81384B30 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81384B34 | 38 9E 05 4F */	addi r4, r30, 0x54f
/* 81384B38 | 38 A0 00 01 */	li r5, 0x1
/* 81384B3C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81384B40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81384B44 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81384B48 | 7D 89 03 A6 */	mtctr r12
/* 81384B4C | 4E 80 04 21 */	bctrl
/* 81384B50 | 88 83 00 CF */	lbz r4, 0xcf(r3)
/* 81384B54 | 38 00 00 04 */	li r0, 0x4
/* 81384B58 | 7C 7D 1B 78 */	mr r29, r3
/* 81384B5C | 38 BC 02 74 */	addi r5, r28, 0x274
/* 81384B60 | 54 86 06 3C */	rlwinm r6, r4, 0, 24, 30
/* 81384B64 | 38 9A 00 14 */	addi r4, r26, 0x14
/* 81384B68 | 60 C6 00 01 */	ori r6, r6, 0x1
/* 81384B6C | 98 C3 00 CF */	stb r6, 0xcf(r3)
/* 81384B70 | 7C 09 03 A6 */	mtctr r0
.L_81384B74:
/* 81384B74 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81384B78 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 81384B7C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 81384B80 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 81384B84 | 42 00 FF F0 */	bdnz .L_81384B74
/* 81384B88 | 80 7C 02 98 */	lwz r3, 0x298(r28)
/* 81384B8C | 38 A0 2D 20 */	li r5, 0x2d20
/* 81384B90 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 81384B94 | 4B FA B6 9D */	bl memcpy
/* 81384B98 | 80 9C 02 98 */	lwz r4, 0x298(r28)
/* 81384B9C | 38 7C 02 78 */	addi r3, r28, 0x278
/* 81384BA0 | 38 A0 00 4C */	li r5, 0x4c
/* 81384BA4 | 38 C0 00 4C */	li r6, 0x4c
/* 81384BA8 | 38 E0 00 05 */	li r7, 0x5
/* 81384BAC | 39 00 00 00 */	li r8, 0x0
/* 81384BB0 | 39 20 00 00 */	li r9, 0x0
/* 81384BB4 | 39 40 00 00 */	li r10, 0x0
/* 81384BB8 | 48 1C 10 B9 */	bl GXInitTexObj
/* 81384BBC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81384BC0 | 7F A3 EB 78 */	mr r3, r29
/* 81384BC4 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81384BC8 | 7D 89 03 A6 */	mtctr r12
/* 81384BCC | 4E 80 04 21 */	bctrl
/* 81384BD0 | 38 BC 02 78 */	addi r5, r28, 0x278
/* 81384BD4 | 38 80 00 00 */	li r4, 0x0
/* 81384BD8 | 48 1A 32 45 */	bl fn_81527E1C
/* 81384BDC | 7C 7C DA 14 */	add r3, r28, r27
/* 81384BE0 | 38 63 00 E4 */	addi r3, r3, 0xe4
/* 81384BE4 | 48 00 1E 19 */	bl reset__Q43ipl5scene7Address6MiiObjFv
/* 81384BE8 | 48 00 00 2C */	b .L_81384C14
.L_81384BEC:
/* 81384BEC | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81384BF0 | 38 9E 05 4F */	addi r4, r30, 0x54f
/* 81384BF4 | 38 A0 00 01 */	li r5, 0x1
/* 81384BF8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81384BFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81384C00 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81384C04 | 7D 89 03 A6 */	mtctr r12
/* 81384C08 | 4E 80 04 21 */	bctrl
/* 81384C0C | 38 80 00 00 */	li r4, 0x0
/* 81384C10 | 4B FB F8 05 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_81384C14:
/* 81384C14 | 80 7C 00 98 */	lwz r3, 0x98(r28)
/* 81384C18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81384C1C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81384C20 | 7D 89 03 A6 */	mtctr r12
/* 81384C24 | 4E 80 04 21 */	bctrl
/* 81384C28 | 3B 40 00 00 */	li r26, 0x0
/* 81384C2C | 3B A0 00 00 */	li r29, 0x0
/* 81384C30 | 7F 5F D3 78 */	mr r31, r26
.L_81384C34:
/* 81384C34 | 7C 9C EA 14 */	add r4, r28, r29
/* 81384C38 | 7C 7C D2 14 */	add r3, r28, r26
/* 81384C3C | 93 E4 00 CC */	stw r31, 0xcc(r4)
/* 81384C40 | 88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 81384C44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81384C48 | 41 82 00 20 */	beq .L_81384C68
/* 81384C4C | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81384C50 | 38 1A 00 06 */	addi r0, r26, 0x6
/* 81384C54 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384C58 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81384C5C | 48 18 D6 BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81384C60 | 4B FE 4F C5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81384C64 | 48 00 00 1C */	b .L_81384C80
.L_81384C68:
/* 81384C68 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81384C6C | 38 1A 00 15 */	addi r0, r26, 0x15
/* 81384C70 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384C74 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81384C78 | 48 18 D6 A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81384C7C | 4B FE 4F A9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_81384C80:
/* 81384C80 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81384C84 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81384C88 | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 81384C8C | 41 80 FF A8 */	blt .L_81384C34
/* 81384C90 | 7F 83 E3 78 */	mr r3, r28
/* 81384C94 | 48 00 19 B5 */	bl movePane_onDrag__Q33ipl5scene7AddressFv
/* 81384C98 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81384C9C | C0 3C 00 64 */	lfs f1, 0x64(r28)
/* 81384CA0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81384CA4 | 38 9E 05 58 */	addi r4, r30, 0x558
/* 81384CA8 | 4B FE 69 F9 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 81384CAC | 38 00 00 0A */	li r0, 0xa
/* 81384CB0 | 90 1C 00 AC */	stw r0, 0xac(r28)
.L_81384CB4:
/* 81384CB4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81384CB8 | 48 27 48 51 */	bl _restgpr_26
/* 81384CBC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81384CC0 | 7C 08 03 A6 */	mtlr r0
/* 81384CC4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81384CC8 | 4E 80 00 20 */	blr
.endfn start_drag_event__Q33ipl5scene7AddressFPCcPCQ33ipl10controller9Interface

# .text:0x366C | 0x81384CCC | size: 0x74
# ipl::scene::Address::start_drag_point_event(const char*, ipl::controller::Interface*)
.fn start_drag_point_event__Q33ipl5scene7AddressFPCcPQ33ipl10controller9Interface, global
/* 81384CCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81384CD0 | 7C 08 02 A6 */	mflr r0
/* 81384CD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81384CD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384CDC | 48 27 47 ED */	bl _savegpr_29
/* 81384CE0 | 7C 7D 1B 78 */	mr r29, r3
/* 81384CE4 | 7C BE 2B 78 */	mr r30, r5
/* 81384CE8 | 48 00 03 A9 */	bl get_button_no__Q33ipl5scene7AddressFPCc
/* 81384CEC | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81384CF0 | 7C 7F 1B 78 */	mr r31, r3
/* 81384CF4 | 41 82 00 34 */	beq .L_81384D28
/* 81384CF8 | 80 9D 00 B0 */	lwz r4, 0xb0(r29)
/* 81384CFC | 7F A3 EB 78 */	mr r3, r29
/* 81384D00 | 7F E5 FB 78 */	mr r5, r31
/* 81384D04 | 48 00 15 75 */	bl isReleasableArea__Q33ipl5scene7AddressFii
/* 81384D08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81384D0C | 41 82 00 1C */	beq .L_81384D28
/* 81384D10 | 7F A3 EB 78 */	mr r3, r29
/* 81384D14 | 7F E4 FB 78 */	mr r4, r31
/* 81384D18 | 7F C5 F3 78 */	mr r5, r30
/* 81384D1C | 48 00 01 ED */	bl on_point_event__Q33ipl5scene7AddressFiPQ33ipl10controller9Interface
/* 81384D20 | 38 00 00 01 */	li r0, 0x1
/* 81384D24 | 98 1D 00 84 */	stb r0, 0x84(r29)
.L_81384D28:
/* 81384D28 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384D2C | 48 27 47 E9 */	bl _restgpr_29
/* 81384D30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81384D34 | 7C 08 03 A6 */	mtlr r0
/* 81384D38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81384D3C | 4E 80 00 20 */	blr
.endfn start_drag_point_event__Q33ipl5scene7AddressFPCcPQ33ipl10controller9Interface

# .text:0x36E0 | 0x81384D40 | size: 0x48
# ipl::scene::Address::start_drag_left_event(const char*)
.fn start_drag_left_event__Q33ipl5scene7AddressFPCc, global
/* 81384D40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81384D44 | 7C 08 02 A6 */	mflr r0
/* 81384D48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81384D4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81384D50 | 7C 7F 1B 78 */	mr r31, r3
/* 81384D54 | 48 00 03 3D */	bl get_button_no__Q33ipl5scene7AddressFPCc
/* 81384D58 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81384D5C | 7C 64 1B 78 */	mr r4, r3
/* 81384D60 | 41 82 00 14 */	beq .L_81384D74
/* 81384D64 | 7F E3 FB 78 */	mr r3, r31
/* 81384D68 | 48 00 02 79 */	bl left_point_event__Q33ipl5scene7AddressFi
/* 81384D6C | 38 00 00 01 */	li r0, 0x1
/* 81384D70 | 98 1F 00 84 */	stb r0, 0x84(r31)
.L_81384D74:
/* 81384D74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81384D78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81384D7C | 7C 08 03 A6 */	mtlr r0
/* 81384D80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81384D84 | 4E 80 00 20 */	blr
.endfn start_drag_left_event__Q33ipl5scene7AddressFPCc

# .text:0x3728 | 0x81384D88 | size: 0x180
# ipl::scene::Address::start_release_event(const char*)
.fn start_release_event__Q33ipl5scene7AddressFPCc, global
/* 81384D88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81384D8C | 7C 08 02 A6 */	mflr r0
/* 81384D90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81384D94 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384D98 | 48 27 47 2D */	bl _savegpr_28
/* 81384D9C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81384DA0 | 3F A0 81 64 */	lis r29, lbl_81647538@ha
/* 81384DA4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81384DA8 | 7C 7F 1B 78 */	mr r31, r3
/* 81384DAC | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81384DB0 | 7C 9C 23 78 */	mr r28, r4
/* 81384DB4 | 3B BD 75 38 */	addi r29, r29, lbl_81647538@l
/* 81384DB8 | 38 80 00 05 */	li r4, 0x5
/* 81384DBC | 48 08 63 7D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81384DC0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81384DC4 | 3B C0 FF FF */	li r30, -0x1
/* 81384DC8 | 41 82 00 2C */	beq .L_81384DF4
/* 81384DCC | 7F E3 FB 78 */	mr r3, r31
/* 81384DD0 | 7F 84 E3 78 */	mr r4, r28
/* 81384DD4 | 48 00 02 BD */	bl get_button_no__Q33ipl5scene7AddressFPCc
/* 81384DD8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81384DDC | 7C 7E 1B 78 */	mr r30, r3
/* 81384DE0 | 40 82 00 14 */	bne .L_81384DF4
/* 81384DE4 | 7F E3 FB 78 */	mr r3, r31
/* 81384DE8 | 7F 84 E3 78 */	mr r4, r28
/* 81384DEC | 48 00 03 19 */	bl get_button_space_no__Q33ipl5scene7AddressFPCc
/* 81384DF0 | 7C 7E 1B 78 */	mr r30, r3
.L_81384DF4:
/* 81384DF4 | 80 1F 00 88 */	lwz r0, 0x88(r31)
/* 81384DF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81384DFC | 41 82 00 08 */	beq .L_81384E04
/* 81384E00 | 48 00 00 F0 */	b .L_81384EF0
.L_81384E04:
/* 81384E04 | 80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 81384E08 | 7F E3 FB 78 */	mr r3, r31
/* 81384E0C | 7F C5 F3 78 */	mr r5, r30
/* 81384E10 | 48 00 14 69 */	bl isReleasableArea__Q33ipl5scene7AddressFii
/* 81384E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81384E18 | 41 82 00 50 */	beq .L_81384E68
/* 81384E1C | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 81384E20 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 81384E24 | 1C 83 00 05 */	mulli r4, r3, 0x5
/* 81384E28 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81384E2C | 93 DF 00 BC */	stw r30, 0xbc(r31)
/* 81384E30 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81384E34 | 7C 9E 22 14 */	add r4, r30, r4
/* 81384E38 | 90 9F 00 C0 */	stw r4, 0xc0(r31)
/* 81384E3C | 7C A3 02 14 */	add r5, r3, r0
/* 81384E40 | 7C 04 28 40 */	cmplw r4, r5
/* 81384E44 | 41 82 00 0C */	beq .L_81384E50
/* 81384E48 | 80 7F 02 74 */	lwz r3, 0x274(r31)
/* 81384E4C | 48 00 21 75 */	bl swap__Q33ipl5scene15FriendListCacheFUlUl
.L_81384E50:
/* 81384E50 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81384E54 | C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 81384E58 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81384E5C | 38 9D 05 68 */	addi r4, r29, 0x568
/* 81384E60 | 4B FE 68 41 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
/* 81384E64 | 48 00 00 18 */	b .L_81384E7C
.L_81384E68:
/* 81384E68 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81384E6C | C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 81384E70 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81384E74 | 38 9D 05 77 */	addi r4, r29, 0x577
/* 81384E78 | 4B FE 68 29 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
.L_81384E7C:
/* 81384E7C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81384E80 | 80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 81384E84 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81384E88 | 38 A0 00 00 */	li r5, 0x0
/* 81384E8C | 80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 81384E90 | 4B FB F5 F1 */	bl changeType__Q23ipl7PointerFii
/* 81384E94 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81384E98 | 38 80 00 05 */	li r4, 0x5
/* 81384E9C | 48 08 62 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81384EA0 | 48 01 83 61 */	bl enableBtn__Q33ipl5scene6ButtonFv
/* 81384EA4 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 81384EA8 | 38 9D 00 3C */	addi r4, r29, 0x3c
/* 81384EAC | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 81384EB0 | 38 A0 00 01 */	li r5, 0x1
/* 81384EB4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81384EB8 | 54 00 10 3A */	slwi r0, r0, 2
/* 81384EBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81384EC0 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81384EC4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81384EC8 | 7D 89 03 A6 */	mtctr r12
/* 81384ECC | 4E 80 04 21 */	bctrl
/* 81384ED0 | 38 80 00 01 */	li r4, 0x1
/* 81384ED4 | 4B FB F5 41 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81384ED8 | 38 60 00 00 */	li r3, 0x0
/* 81384EDC | 38 00 00 0B */	li r0, 0xb
/* 81384EE0 | 98 7F 00 84 */	stb r3, 0x84(r31)
/* 81384EE4 | 7F E3 FB 78 */	mr r3, r31
/* 81384EE8 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81384EEC | 4B FF F5 B5 */	bl reset_friend__Q33ipl5scene7AddressFv
.L_81384EF0:
/* 81384EF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384EF4 | 48 27 46 1D */	bl _restgpr_28
/* 81384EF8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81384EFC | 7C 08 03 A6 */	mtlr r0
/* 81384F00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81384F04 | 4E 80 00 20 */	blr
.endfn start_release_event__Q33ipl5scene7AddressFPCc

# .text:0x38A8 | 0x81384F08 | size: 0xD8
# ipl::scene::Address::on_point_event(int, ipl::controller::Interface*)
.fn on_point_event__Q33ipl5scene7AddressFiPQ33ipl10controller9Interface, global
/* 81384F08 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81384F0C | 7C 08 02 A6 */	mflr r0
/* 81384F10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81384F14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384F18 | 48 27 45 B1 */	bl _savegpr_29
/* 81384F1C | 54 80 10 3A */	slwi r0, r4, 2
/* 81384F20 | 7C BD 2B 78 */	mr r29, r5
/* 81384F24 | 7F E3 02 14 */	add r31, r3, r0
/* 81384F28 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 81384F2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81384F30 | 40 82 00 8C */	bne .L_81384FBC
/* 81384F34 | 7C A3 22 14 */	add r5, r3, r4
/* 81384F38 | 88 05 00 C4 */	lbz r0, 0xc4(r5)
/* 81384F3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81384F40 | 41 82 00 2C */	beq .L_81384F6C
/* 81384F44 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 81384F48 | 38 04 00 06 */	addi r0, r4, 0x6
/* 81384F4C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384F50 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81384F54 | 48 18 D3 C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81384F58 | 7C 7E 1B 78 */	mr r30, r3
/* 81384F5C | 4B FD D9 15 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81384F60 | 38 00 00 01 */	li r0, 0x1
/* 81384F64 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81384F68 | 48 00 00 28 */	b .L_81384F90
.L_81384F6C:
/* 81384F6C | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 81384F70 | 38 04 00 15 */	addi r0, r4, 0x15
/* 81384F74 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81384F78 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81384F7C | 48 18 D3 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81384F80 | 7C 7E 1B 78 */	mr r30, r3
/* 81384F84 | 4B FD D8 ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81384F88 | 38 00 00 01 */	li r0, 0x1
/* 81384F8C | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_81384F90:
/* 81384F90 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81384F94 | 3C 80 81 64 */	lis r4, lbl_81647AC3@ha
/* 81384F98 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81384F9C | 38 84 7A C3 */	addi r4, r4, lbl_81647AC3@l
/* 81384FA0 | 4B FE 64 CD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81384FA4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81384FA8 | 7F A3 EB 78 */	mr r3, r29
/* 81384FAC | 38 80 00 01 */	li r4, 0x1
/* 81384FB0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81384FB4 | 7D 89 03 A6 */	mtctr r12
/* 81384FB8 | 4E 80 04 21 */	bctrl
.L_81384FBC:
/* 81384FBC | 80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 81384FC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81384FC4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81384FC8 | 90 1F 00 CC */	stw r0, 0xcc(r31)
/* 81384FCC | 48 27 45 49 */	bl _restgpr_29
/* 81384FD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81384FD4 | 7C 08 03 A6 */	mtlr r0
/* 81384FD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81384FDC | 4E 80 00 20 */	blr
.endfn on_point_event__Q33ipl5scene7AddressFiPQ33ipl10controller9Interface

# .text:0x3980 | 0x81384FE0 | size: 0xB0
# ipl::scene::Address::left_point_event(int)
.fn left_point_event__Q33ipl5scene7AddressFi, global
/* 81384FE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81384FE4 | 7C 08 02 A6 */	mflr r0
/* 81384FE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81384FEC | 54 80 10 3A */	slwi r0, r4, 2
/* 81384FF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81384FF4 | 7F E3 02 14 */	add r31, r3, r0
/* 81384FF8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81384FFC | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 81385000 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81385004 | 40 82 00 60 */	bne .L_81385064
/* 81385008 | 7C A3 22 14 */	add r5, r3, r4
/* 8138500C | 88 05 00 C4 */	lbz r0, 0xc4(r5)
/* 81385010 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81385014 | 41 82 00 2C */	beq .L_81385040
/* 81385018 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8138501C | 38 04 00 0B */	addi r0, r4, 0xb
/* 81385020 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385024 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385028 | 48 18 D2 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138502C | 7C 7E 1B 78 */	mr r30, r3
/* 81385030 | 4B FD D8 41 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385034 | 38 00 00 01 */	li r0, 0x1
/* 81385038 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8138503C | 48 00 00 28 */	b .L_81385064
.L_81385040:
/* 81385040 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 81385044 | 38 04 00 1A */	addi r0, r4, 0x1a
/* 81385048 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138504C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385050 | 48 18 D2 C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385054 | 7C 7E 1B 78 */	mr r30, r3
/* 81385058 | 4B FD D8 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8138505C | 38 00 00 01 */	li r0, 0x1
/* 81385060 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_81385064:
/* 81385064 | 80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 81385068 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138506C | 40 81 00 0C */	ble .L_81385078
/* 81385070 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81385074 | 90 1F 00 CC */	stw r0, 0xcc(r31)
.L_81385078:
/* 81385078 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138507C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81385080 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81385084 | 7C 08 03 A6 */	mtlr r0
/* 81385088 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138508C | 4E 80 00 20 */	blr
.endfn left_point_event__Q33ipl5scene7AddressFi

# .text:0x3A30 | 0x81385090 | size: 0x74
# ipl::scene::Address::get_button_no(const char*)
.fn get_button_no__Q33ipl5scene7AddressFPCc, global
/* 81385090 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81385094 | 7C 08 02 A6 */	mflr r0
/* 81385098 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138509C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813850A0 | 48 27 44 21 */	bl _savegpr_27
/* 813850A4 | 3F C0 81 64 */	lis r30, lbl_81647614@ha
/* 813850A8 | 7C 9B 23 78 */	mr r27, r4
/* 813850AC | 3B DE 76 14 */	addi r30, r30, lbl_81647614@l
/* 813850B0 | 3B A0 FF FF */	li r29, -0x1
/* 813850B4 | 3B 80 00 00 */	li r28, 0x0
/* 813850B8 | 3B E0 00 00 */	li r31, 0x0
.L_813850BC:
/* 813850BC | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 813850C0 | 7F 64 DB 78 */	mr r4, r27
/* 813850C4 | 48 27 D3 BD */	bl strcmp
/* 813850C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813850CC | 40 82 00 0C */	bne .L_813850D8
/* 813850D0 | 7F 9D E3 78 */	mr r29, r28
/* 813850D4 | 48 00 00 14 */	b .L_813850E8
.L_813850D8:
/* 813850D8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813850DC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813850E0 | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 813850E4 | 41 80 FF D8 */	blt .L_813850BC
.L_813850E8:
/* 813850E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813850EC | 7F A3 EB 78 */	mr r3, r29
/* 813850F0 | 48 27 44 1D */	bl _restgpr_27
/* 813850F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813850F8 | 7C 08 03 A6 */	mtlr r0
/* 813850FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81385100 | 4E 80 00 20 */	blr
.endfn get_button_no__Q33ipl5scene7AddressFPCc

# .text:0x3AA4 | 0x81385104 | size: 0x74
# ipl::scene::Address::get_button_space_no(const char*)
.fn get_button_space_no__Q33ipl5scene7AddressFPCc, global
/* 81385104 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81385108 | 7C 08 02 A6 */	mflr r0
/* 8138510C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81385110 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81385114 | 48 27 43 AD */	bl _savegpr_27
/* 81385118 | 3F C0 81 64 */	lis r30, lbl_81647664@ha
/* 8138511C | 7C 9B 23 78 */	mr r27, r4
/* 81385120 | 3B DE 76 64 */	addi r30, r30, lbl_81647664@l
/* 81385124 | 3B A0 FF FF */	li r29, -0x1
/* 81385128 | 3B 80 00 00 */	li r28, 0x0
/* 8138512C | 3B E0 00 00 */	li r31, 0x0
.L_81385130:
/* 81385130 | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 81385134 | 7F 64 DB 78 */	mr r4, r27
/* 81385138 | 48 27 D3 49 */	bl strcmp
/* 8138513C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81385140 | 40 82 00 0C */	bne .L_8138514C
/* 81385144 | 7F 9D E3 78 */	mr r29, r28
/* 81385148 | 48 00 00 14 */	b .L_8138515C
.L_8138514C:
/* 8138514C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81385150 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81385154 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81385158 | 41 80 FF D8 */	blt .L_81385130
.L_8138515C:
/* 8138515C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81385160 | 7F A3 EB 78 */	mr r3, r29
/* 81385164 | 48 27 43 A9 */	bl _restgpr_27
/* 81385168 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8138516C | 7C 08 03 A6 */	mtlr r0
/* 81385170 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81385174 | 4E 80 00 20 */	blr
.endfn get_button_space_no__Q33ipl5scene7AddressFPCc

# .text:0x3B18 | 0x81385178 | size: 0x2D0
# ipl::scene::Address::reset_gui(bool)
.fn reset_gui__Q33ipl5scene7AddressFb, global
/* 81385178 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8138517C | 7C 08 02 A6 */	mflr r0
/* 81385180 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81385184 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81385188 | 48 27 43 2D */	bl _savegpr_24
/* 8138518C | 7C 7C 1B 78 */	mr r28, r3
/* 81385190 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 81385194 | 7C 9D 23 78 */	mr r29, r4
/* 81385198 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138519C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813851A0 | 7D 89 03 A6 */	mtctr r12
/* 813851A4 | 4E 80 04 21 */	bctrl
/* 813851A8 | 3B C0 00 00 */	li r30, 0x0
/* 813851AC | 3B 60 00 00 */	li r27, 0x0
/* 813851B0 | 7F DA F3 78 */	mr r26, r30
/* 813851B4 | 3B 20 00 01 */	li r25, 0x1
.L_813851B8:
/* 813851B8 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813851BC | 38 1E 00 06 */	addi r0, r30, 0x6
/* 813851C0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813851C4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813851C8 | 48 18 D1 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813851CC | 4B FE 4A 59 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813851D0 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813851D4 | 38 1E 00 06 */	addi r0, r30, 0x6
/* 813851D8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813851DC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813851E0 | 48 18 D1 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813851E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813851E8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813851EC | 7D 89 03 A6 */	mtctr r12
/* 813851F0 | 4E 80 04 21 */	bctrl
/* 813851F4 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813851F8 | 38 1E 00 0B */	addi r0, r30, 0xb
/* 813851FC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385200 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385204 | 48 18 D1 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385208 | 4B FE 4A 1D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 8138520C | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81385210 | 38 1E 00 0B */	addi r0, r30, 0xb
/* 81385214 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385218 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138521C | 48 18 D0 FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385220 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81385224 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81385228 | 7D 89 03 A6 */	mtctr r12
/* 8138522C | 4E 80 04 21 */	bctrl
/* 81385230 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81385234 | 38 1E 00 10 */	addi r0, r30, 0x10
/* 81385238 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8138523C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385240 | 48 18 D0 D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385244 | 4B FE 49 E1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81385248 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 8138524C | 38 1E 00 10 */	addi r0, r30, 0x10
/* 81385250 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385254 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385258 | 48 18 D0 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138525C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81385260 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81385264 | 7D 89 03 A6 */	mtctr r12
/* 81385268 | 4E 80 04 21 */	bctrl
/* 8138526C | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81385270 | 38 1E 00 15 */	addi r0, r30, 0x15
/* 81385274 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385278 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138527C | 48 18 D0 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385280 | 4B FE 49 A5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81385284 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81385288 | 38 1E 00 15 */	addi r0, r30, 0x15
/* 8138528C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385290 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385294 | 48 18 D0 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385298 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138529C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813852A0 | 7D 89 03 A6 */	mtctr r12
/* 813852A4 | 4E 80 04 21 */	bctrl
/* 813852A8 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813852AC | 38 1E 00 1A */	addi r0, r30, 0x1a
/* 813852B0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813852B4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813852B8 | 48 18 D0 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813852BC | 4B FE 49 69 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813852C0 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813852C4 | 38 1E 00 1A */	addi r0, r30, 0x1a
/* 813852C8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813852CC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813852D0 | 48 18 D0 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813852D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813852D8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813852DC | 7D 89 03 A6 */	mtctr r12
/* 813852E0 | 4E 80 04 21 */	bctrl
/* 813852E4 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813852E8 | 38 1E 00 1F */	addi r0, r30, 0x1f
/* 813852EC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813852F0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813852F4 | 48 18 D0 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813852F8 | 4B FE 49 2D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813852FC | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81385300 | 38 1E 00 1F */	addi r0, r30, 0x1f
/* 81385304 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385308 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138530C | 48 18 D0 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385310 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81385314 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81385318 | 7D 89 03 A6 */	mtctr r12
/* 8138531C | 4E 80 04 21 */	bctrl
/* 81385320 | 7F FC DA 14 */	add r31, r28, r27
/* 81385324 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 81385328 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138532C | 41 82 00 64 */	beq .L_81385390
/* 81385330 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81385334 | 41 82 00 5C */	beq .L_81385390
/* 81385338 | 7C 7C F2 14 */	add r3, r28, r30
/* 8138533C | 88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 81385340 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81385344 | 41 82 00 28 */	beq .L_8138536C
/* 81385348 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 8138534C | 38 1E 00 0B */	addi r0, r30, 0xb
/* 81385350 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385354 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385358 | 48 18 CF C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138535C | 7C 78 1B 78 */	mr r24, r3
/* 81385360 | 4B FD D5 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385364 | 93 38 00 14 */	stw r25, 0x14(r24)
/* 81385368 | 48 00 00 B4 */	b .L_8138541C
.L_8138536C:
/* 8138536C | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81385370 | 38 1E 00 1A */	addi r0, r30, 0x1a
/* 81385374 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385378 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138537C | 48 18 CF 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385380 | 7C 78 1B 78 */	mr r24, r3
/* 81385384 | 4B FD D4 ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385388 | 93 38 00 14 */	stw r25, 0x14(r24)
/* 8138538C | 48 00 00 90 */	b .L_8138541C
.L_81385390:
/* 81385390 | 7C 7C F2 14 */	add r3, r28, r30
/* 81385394 | 88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 81385398 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138539C | 41 82 00 44 */	beq .L_813853E0
/* 813853A0 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813853A4 | 38 1E 00 06 */	addi r0, r30, 0x6
/* 813853A8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813853AC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813853B0 | 48 18 CF 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813853B4 | 4B FE 48 71 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813853B8 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813853BC | 38 1E 00 06 */	addi r0, r30, 0x6
/* 813853C0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813853C4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813853C8 | 48 18 CF 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813853CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813853D0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813853D4 | 7D 89 03 A6 */	mtctr r12
/* 813853D8 | 4E 80 04 21 */	bctrl
/* 813853DC | 48 00 00 40 */	b .L_8138541C
.L_813853E0:
/* 813853E0 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813853E4 | 38 1E 00 15 */	addi r0, r30, 0x15
/* 813853E8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813853EC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813853F0 | 48 18 CF 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813853F4 | 4B FE 48 31 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813853F8 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 813853FC | 38 1E 00 15 */	addi r0, r30, 0x15
/* 81385400 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81385404 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385408 | 48 18 CF 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138540C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81385410 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81385414 | 7D 89 03 A6 */	mtctr r12
/* 81385418 | 4E 80 04 21 */	bctrl
.L_8138541C:
/* 8138541C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81385420 | 93 5F 00 CC */	stw r26, 0xcc(r31)
/* 81385424 | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 81385428 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 8138542C | 41 80 FD 8C */	blt .L_813851B8
/* 81385430 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81385434 | 48 27 40 CD */	bl _restgpr_24
/* 81385438 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8138543C | 7C 08 03 A6 */	mtlr r0
/* 81385440 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81385444 | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene7AddressFb

# .text:0x3DE8 | 0x81385448 | size: 0xC0
# ipl::scene::Address::is_selectable(unsigned long)
.fn is_selectable__Q33ipl5scene7AddressFUl, global
/* 81385448 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 8138544C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81385450 | 41 82 00 30 */	beq .L_81385480
/* 81385454 | 40 80 00 10 */	bge .L_81385464
/* 81385458 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138545C | 40 80 00 14 */	bge .L_81385470
/* 81385460 | 48 00 00 A0 */	b .L_81385500
.L_81385464:
/* 81385464 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81385468 | 40 80 00 98 */	bge .L_81385500
/* 8138546C | 48 00 00 4C */	b .L_813854B8
.L_81385470:
/* 81385470 | 80 03 02 74 */	lwz r0, 0x274(r3)
/* 81385474 | 7C 60 22 14 */	add r3, r0, r4
/* 81385478 | 88 63 7D 00 */	lbz r3, 0x7d00(r3)
/* 8138547C | 4E 80 00 20 */	blr
.L_81385480:
/* 81385480 | 80 A3 02 74 */	lwz r5, 0x274(r3)
/* 81385484 | 7C 65 22 14 */	add r3, r5, r4
/* 81385488 | 88 03 7D 00 */	lbz r0, 0x7d00(r3)
/* 8138548C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81385490 | 41 82 00 20 */	beq .L_813854B0
/* 81385494 | 1C 04 01 40 */	mulli r0, r4, 0x140
/* 81385498 | 7C 65 02 14 */	add r3, r5, r0
/* 8138549C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813854A0 | 38 03 FF FE */	subi r0, r3, 0x2
/* 813854A4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813854A8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813854AC | 4E 80 00 20 */	blr
.L_813854B0:
/* 813854B0 | 38 60 00 00 */	li r3, 0x0
/* 813854B4 | 4E 80 00 20 */	blr
.L_813854B8:
/* 813854B8 | 80 A3 02 74 */	lwz r5, 0x274(r3)
/* 813854BC | 7C 65 22 14 */	add r3, r5, r4
/* 813854C0 | 88 03 7D 00 */	lbz r0, 0x7d00(r3)
/* 813854C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813854C8 | 41 82 00 30 */	beq .L_813854F8
/* 813854CC | 1C 04 01 40 */	mulli r0, r4, 0x140
/* 813854D0 | 38 60 00 00 */	li r3, 0x0
/* 813854D4 | 7C 85 02 14 */	add r4, r5, r0
/* 813854D8 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 813854DC | 28 00 00 02 */	cmplwi r0, 0x2
/* 813854E0 | 4C 82 00 20 */	bnelr
/* 813854E4 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813854E8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813854EC | 4C 82 00 20 */	bnelr
/* 813854F0 | 38 60 00 01 */	li r3, 0x1
/* 813854F4 | 4E 80 00 20 */	blr
.L_813854F8:
/* 813854F8 | 38 60 00 00 */	li r3, 0x0
/* 813854FC | 4E 80 00 20 */	blr
.L_81385500:
/* 81385500 | 38 60 00 00 */	li r3, 0x0
/* 81385504 | 4E 80 00 20 */	blr
.endfn is_selectable__Q33ipl5scene7AddressFUl

# .text:0x3EA8 | 0x81385508 | size: 0x438
# ipl::scene::Address::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene7AddressFUlUlPCQ33ipl10controller9Interface, global
/* 81385508 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8138550C | 7C 08 02 A6 */	mflr r0
/* 81385510 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81385514 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81385518 | 48 27 3F A1 */	bl _savegpr_25
/* 8138551C | 7C 7D 1B 78 */	mr r29, r3
/* 81385520 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 81385524 | 3F 60 81 64 */	lis r27, lbl_81647538@ha
/* 81385528 | 7C B9 2B 78 */	mr r25, r5
/* 8138552C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81385530 | 7C DE 33 78 */	mr r30, r6
/* 81385534 | 3B 7B 75 38 */	addi r27, r27, lbl_81647538@l
/* 81385538 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8138553C | 7D 89 03 A6 */	mtctr r12
/* 81385540 | 4E 80 04 21 */	bctrl
/* 81385544 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81385548 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8138554C | 7D 89 03 A6 */	mtctr r12
/* 81385550 | 4E 80 04 21 */	bctrl
/* 81385554 | 2C 19 00 01 */	cmpwi r25, 0x1
/* 81385558 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 8138555C | 41 82 02 C8 */	beq .L_81385824
/* 81385560 | 40 80 00 10 */	bge .L_81385570
/* 81385564 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81385568 | 40 80 00 14 */	bge .L_8138557C
/* 8138556C | 48 00 03 BC */	b .L_81385928
.L_81385570:
/* 81385570 | 2C 19 00 03 */	cmpwi r25, 0x3
/* 81385574 | 40 80 03 B4 */	bge .L_81385928
/* 81385578 | 48 00 03 3C */	b .L_813858B4
.L_8138557C:
/* 8138557C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81385580 | 41 82 03 A8 */	beq .L_81385928
/* 81385584 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81385588 | 3C 80 00 10 */	lis r4, 0x10
/* 8138558C | 7F C3 F3 78 */	mr r3, r30
/* 81385590 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81385594 | 38 84 08 00 */	addi r4, r4, 0x800
/* 81385598 | 7D 89 03 A6 */	mtctr r12
/* 8138559C | 4E 80 04 21 */	bctrl
/* 813855A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813855A4 | 41 82 02 80 */	beq .L_81385824
/* 813855A8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813855AC | 38 80 00 05 */	li r4, 0x5
/* 813855B0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813855B4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813855B8 | 48 08 5B 81 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813855BC | 80 1D 00 AC */	lwz r0, 0xac(r29)
/* 813855C0 | 7C 7A 1B 78 */	mr r26, r3
/* 813855C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813855C8 | 41 82 00 0C */	beq .L_813855D4
/* 813855CC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813855D0 | 40 82 02 54 */	bne .L_81385824
.L_813855D4:
/* 813855D4 | 3F 80 81 65 */	lis r28, mscButtonName__Q33ipl5scene6Button@ha
/* 813855D8 | 7F E3 FB 78 */	mr r3, r31
/* 813855DC | 3B 9C BF 5C */	addi r28, r28, mscButtonName__Q33ipl5scene6Button@l
/* 813855E0 | 80 9C 00 14 */	lwz r4, 0x14(r28)
/* 813855E4 | 48 27 CE 9D */	bl strcmp
/* 813855E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813855EC | 40 82 01 9C */	bne .L_81385788
/* 813855F0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813855F4 | 38 80 00 08 */	li r4, 0x8
/* 813855F8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813855FC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81385600 | 48 08 5B 39 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81385604 | 7C 79 1B 78 */	mr r25, r3
/* 81385608 | 7F 43 D3 78 */	mr r3, r26
/* 8138560C | 38 80 00 1B */	li r4, 0x1b
/* 81385610 | 48 01 75 49 */	bl iplButton_8139CB58
/* 81385614 | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 81385618 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138561C | 41 82 00 6C */	beq .L_81385688
/* 81385620 | 40 80 00 10 */	bge .L_81385630
/* 81385624 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81385628 | 40 80 00 14 */	bge .L_8138563C
/* 8138562C | 48 00 01 28 */	b .L_81385754
.L_81385630:
/* 81385630 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81385634 | 40 80 01 20 */	bge .L_81385754
/* 81385638 | 48 00 00 A8 */	b .L_813856E0
.L_8138563C:
/* 8138563C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81385640 | 41 82 00 0C */	beq .L_8138564C
/* 81385644 | 7F 23 CB 78 */	mr r3, r25
/* 81385648 | 48 03 DE 7D */	bl finishAddress__Q33ipl5scene17MailAddressSelectFv
.L_8138564C:
/* 8138564C | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 81385650 | 38 80 00 01 */	li r4, 0x1
/* 81385654 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385658 | 48 18 CC C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8138565C | 7C 7C 1B 78 */	mr r28, r3
/* 81385660 | 4B FD D2 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385664 | 38 00 00 01 */	li r0, 0x1
/* 81385668 | 7F 43 D3 78 */	mr r3, r26
/* 8138566C | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 81385670 | 38 80 00 10 */	li r4, 0x10
/* 81385674 | 48 01 7D B5 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81385678 | 7F 43 D3 78 */	mr r3, r26
/* 8138567C | 38 80 00 0B */	li r4, 0xb
/* 81385680 | 48 01 7D A9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81385684 | 48 00 00 D0 */	b .L_81385754
.L_81385688:
/* 81385688 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 8138568C | 38 80 00 03 */	li r4, 0x3
/* 81385690 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385694 | 48 18 CC 85 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385698 | 7C 79 1B 78 */	mr r25, r3
/* 8138569C | 4B FD D1 D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813856A0 | 3B 80 00 01 */	li r28, 0x1
/* 813856A4 | 38 80 00 01 */	li r4, 0x1
/* 813856A8 | 93 99 00 14 */	stw r28, 0x14(r25)
/* 813856AC | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 813856B0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813856B4 | 48 18 CC 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813856B8 | 7C 79 1B 78 */	mr r25, r3
/* 813856BC | 4B FD D1 B5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813856C0 | 93 99 00 14 */	stw r28, 0x14(r25)
/* 813856C4 | 7F 43 D3 78 */	mr r3, r26
/* 813856C8 | 38 80 00 0C */	li r4, 0xc
/* 813856CC | 48 01 7D 5D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813856D0 | 7F 43 D3 78 */	mr r3, r26
/* 813856D4 | 38 80 00 0B */	li r4, 0xb
/* 813856D8 | 48 01 7D 51 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813856DC | 48 00 00 78 */	b .L_81385754
.L_813856E0:
/* 813856E0 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 813856E4 | 38 80 00 03 */	li r4, 0x3
/* 813856E8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813856EC | 48 18 CC 2D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813856F0 | 7C 79 1B 78 */	mr r25, r3
/* 813856F4 | 4B FD D1 7D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813856F8 | 3B 80 00 01 */	li r28, 0x1
/* 813856FC | 38 80 00 01 */	li r4, 0x1
/* 81385700 | 93 99 00 14 */	stw r28, 0x14(r25)
/* 81385704 | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 81385708 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138570C | 48 18 CC 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385710 | 7C 79 1B 78 */	mr r25, r3
/* 81385714 | 4B FD D1 5D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385718 | 93 99 00 14 */	stw r28, 0x14(r25)
/* 8138571C | 7F 43 D3 78 */	mr r3, r26
/* 81385720 | 38 80 00 0C */	li r4, 0xc
/* 81385724 | 48 01 7D 05 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81385728 | 7F 43 D3 78 */	mr r3, r26
/* 8138572C | 38 80 00 00 */	li r4, 0x0
/* 81385730 | 38 A0 01 3B */	li r5, 0x13b
/* 81385734 | 48 01 7D 29 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81385738 | 7F 43 D3 78 */	mr r3, r26
/* 8138573C | 38 80 00 01 */	li r4, 0x1
/* 81385740 | 38 A0 00 33 */	li r5, 0x33
/* 81385744 | 48 01 7D 19 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81385748 | 7F 43 D3 78 */	mr r3, r26
/* 8138574C | 38 80 00 0F */	li r4, 0xf
/* 81385750 | 48 01 7C D9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_81385754:
/* 81385754 | 7F 43 D3 78 */	mr r3, r26
/* 81385758 | 38 80 00 19 */	li r4, 0x19
/* 8138575C | 48 01 73 FD */	bl iplButton_8139CB58
/* 81385760 | 7F 43 D3 78 */	mr r3, r26
/* 81385764 | 38 80 00 1A */	li r4, 0x1a
/* 81385768 | 48 01 73 F1 */	bl iplButton_8139CB58
/* 8138576C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81385770 | 38 9B 05 A1 */	addi r4, r27, 0x5a1
/* 81385774 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81385778 | 4B FE 5C F5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138577C | 38 00 00 1A */	li r0, 0x1a
/* 81385780 | 90 1D 00 AC */	stw r0, 0xac(r29)
/* 81385784 | 48 00 00 A0 */	b .L_81385824
.L_81385788:
/* 81385788 | 80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8138578C | 7F E3 FB 78 */	mr r3, r31
/* 81385790 | 48 27 CC F1 */	bl strcmp
/* 81385794 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81385798 | 40 82 00 18 */	bne .L_813857B0
/* 8138579C | 38 00 FF FF */	li r0, -0x1
/* 813857A0 | 7F A3 EB 78 */	mr r3, r29
/* 813857A4 | 90 1D 00 C0 */	stw r0, 0xc0(r29)
/* 813857A8 | 48 00 08 41 */	bl entry_friend__Q33ipl5scene7AddressFv
/* 813857AC | 48 00 00 78 */	b .L_81385824
.L_813857B0:
/* 813857B0 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 813857B4 | 7F E3 FB 78 */	mr r3, r31
/* 813857B8 | 48 27 CC C9 */	bl strcmp
/* 813857BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813857C0 | 40 82 00 2C */	bne .L_813857EC
/* 813857C4 | 7F 43 D3 78 */	mr r3, r26
/* 813857C8 | 38 80 00 13 */	li r4, 0x13
/* 813857CC | 48 01 73 8D */	bl iplButton_8139CB58
/* 813857D0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813857D4 | 38 9B 04 56 */	addi r4, r27, 0x456
/* 813857D8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813857DC | 4B FE 5C 91 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813857E0 | 7F A3 EB 78 */	mr r3, r29
/* 813857E4 | 48 00 01 5D */	bl onNextPage__Q33ipl5scene7AddressFv
/* 813857E8 | 48 00 00 3C */	b .L_81385824
.L_813857EC:
/* 813857EC | 80 9C 00 28 */	lwz r4, 0x28(r28)
/* 813857F0 | 7F E3 FB 78 */	mr r3, r31
/* 813857F4 | 48 27 CC 8D */	bl strcmp
/* 813857F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813857FC | 40 82 00 28 */	bne .L_81385824
/* 81385800 | 7F 43 D3 78 */	mr r3, r26
/* 81385804 | 38 80 00 14 */	li r4, 0x14
/* 81385808 | 48 01 73 51 */	bl iplButton_8139CB58
/* 8138580C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81385810 | 38 9B 05 15 */	addi r4, r27, 0x515
/* 81385814 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81385818 | 4B FE 5C 55 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138581C | 7F A3 EB 78 */	mr r3, r29
/* 81385820 | 48 00 03 F5 */	bl onPreviousPage__Q33ipl5scene7AddressFv
.L_81385824:
/* 81385824 | 88 1D 00 84 */	lbz r0, 0x84(r29)
/* 81385828 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138582C | 41 82 00 FC */	beq .L_81385928
/* 81385830 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81385834 | 41 82 00 20 */	beq .L_81385854
/* 81385838 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138583C | 80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 81385840 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81385844 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81385848 | 4B FB 20 41 */	bl getController__Q33ipl10controller7ManagerFi
/* 8138584C | 7C 1E 18 40 */	cmplw r30, r3
/* 81385850 | 40 82 00 D8 */	bne .L_81385928
.L_81385854:
/* 81385854 | 3F C0 81 65 */	lis r30, mscButtonName__Q33ipl5scene6Button@ha
/* 81385858 | 7F E3 FB 78 */	mr r3, r31
/* 8138585C | 3B DE BF 5C */	addi r30, r30, mscButtonName__Q33ipl5scene6Button@l
/* 81385860 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 81385864 | 48 27 CC 1D */	bl strcmp
/* 81385868 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138586C | 40 82 00 1C */	bne .L_81385888
/* 81385870 | 80 1D 00 7C */	lwz r0, 0x7c(r29)
/* 81385874 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81385878 | 40 80 00 B0 */	bge .L_81385928
/* 8138587C | 38 00 00 00 */	li r0, 0x0
/* 81385880 | 90 1D 00 7C */	stw r0, 0x7c(r29)
/* 81385884 | 48 00 00 A4 */	b .L_81385928
.L_81385888:
/* 81385888 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8138588C | 7F E3 FB 78 */	mr r3, r31
/* 81385890 | 48 27 CB F1 */	bl strcmp
/* 81385894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81385898 | 40 82 00 90 */	bne .L_81385928
/* 8138589C | 80 1D 00 78 */	lwz r0, 0x78(r29)
/* 813858A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813858A4 | 40 80 00 84 */	bge .L_81385928
/* 813858A8 | 38 00 00 00 */	li r0, 0x0
/* 813858AC | 90 1D 00 78 */	stw r0, 0x78(r29)
/* 813858B0 | 48 00 00 78 */	b .L_81385928
.L_813858B4:
/* 813858B4 | 88 1D 00 84 */	lbz r0, 0x84(r29)
/* 813858B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813858BC | 41 82 00 6C */	beq .L_81385928
/* 813858C0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813858C4 | 41 82 00 20 */	beq .L_813858E4
/* 813858C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813858CC | 80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 813858D0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813858D4 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813858D8 | 4B FB 1F B1 */	bl getController__Q33ipl10controller7ManagerFi
/* 813858DC | 7C 1E 18 40 */	cmplw r30, r3
/* 813858E0 | 40 82 00 48 */	bne .L_81385928
.L_813858E4:
/* 813858E4 | 3F C0 81 65 */	lis r30, mscButtonName__Q33ipl5scene6Button@ha
/* 813858E8 | 7F E3 FB 78 */	mr r3, r31
/* 813858EC | 3B DE BF 5C */	addi r30, r30, mscButtonName__Q33ipl5scene6Button@l
/* 813858F0 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 813858F4 | 48 27 CB 8D */	bl strcmp
/* 813858F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813858FC | 40 82 00 10 */	bne .L_8138590C
/* 81385900 | 38 00 FF FF */	li r0, -0x1
/* 81385904 | 90 1D 00 7C */	stw r0, 0x7c(r29)
/* 81385908 | 48 00 00 20 */	b .L_81385928
.L_8138590C:
/* 8138590C | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 81385910 | 7F E3 FB 78 */	mr r3, r31
/* 81385914 | 48 27 CB 6D */	bl strcmp
/* 81385918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138591C | 40 82 00 0C */	bne .L_81385928
/* 81385920 | 38 00 FF FF */	li r0, -0x1
/* 81385924 | 90 1D 00 78 */	stw r0, 0x78(r29)
.L_81385928:
/* 81385928 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8138592C | 48 27 3B D9 */	bl _restgpr_25
/* 81385930 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81385934 | 7C 08 03 A6 */	mtlr r0
/* 81385938 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8138593C | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene7AddressFUlUlPCQ33ipl10controller9Interface

# .text:0x42E0 | 0x81385940 | size: 0x2D4
# ipl::scene::Address::onNextPage()
.fn onNextPage__Q33ipl5scene7AddressFv, global
/* 81385940 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81385944 | 7C 08 02 A6 */	mflr r0
/* 81385948 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8138594C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81385950 | 48 27 3B 6D */	bl _savegpr_26
/* 81385954 | 80 03 00 AC */	lwz r0, 0xac(r3)
/* 81385958 | 3F E0 81 64 */	lis r31, lbl_81647538@ha
/* 8138595C | 7C 7E 1B 78 */	mr r30, r3
/* 81385960 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81385964 | 3B FF 75 38 */	addi r31, r31, lbl_81647538@l
/* 81385968 | 41 82 00 28 */	beq .L_81385990
/* 8138596C | 40 80 00 18 */	bge .L_81385984
/* 81385970 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81385974 | 40 80 02 88 */	bge .L_81385BFC
/* 81385978 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138597C | 40 80 01 AC */	bge .L_81385B28
/* 81385980 | 48 00 02 7C */	b .L_81385BFC
.L_81385984:
/* 81385984 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81385988 | 41 82 00 08 */	beq .L_81385990
/* 8138598C | 48 00 02 70 */	b .L_81385BFC
.L_81385990:
/* 81385990 | 80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 81385994 | 2C 04 00 13 */	cmpwi r4, 0x13
/* 81385998 | 40 80 01 34 */	bge .L_81385ACC
/* 8138599C | 80 A3 00 B4 */	lwz r5, 0xb4(r3)
/* 813859A0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813859A4 | 90 03 00 B0 */	stw r0, 0xb0(r3)
/* 813859A8 | 38 9F 05 29 */	addi r4, r31, 0x529
/* 813859AC | 38 05 FF FF */	subi r0, r5, 0x1
/* 813859B0 | 80 C3 00 8C */	lwz r6, 0x8c(r3)
/* 813859B4 | 90 03 00 B4 */	stw r0, 0xb4(r3)
/* 813859B8 | 38 A0 00 01 */	li r5, 0x1
/* 813859BC | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813859C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813859C4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813859C8 | 7D 89 03 A6 */	mtctr r12
/* 813859CC | 4E 80 04 21 */	bctrl
/* 813859D0 | 7C 64 1B 78 */	mr r4, r3
/* 813859D4 | 7F C3 F3 78 */	mr r3, r30
/* 813859D8 | 38 AD AB 10 */	li r5, lbl_81698B50@sda21
/* 813859DC | 4B FF E6 99 */	bl add_translate__Q33ipl5scene7AddressFPQ34nw4r3lyt4PaneRCQ33ipl4math4VEC2
/* 813859E0 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 813859E4 | 38 80 00 05 */	li r4, 0x5
/* 813859E8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813859EC | 48 18 C9 2D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813859F0 | 3B 40 00 00 */	li r26, 0x0
/* 813859F4 | 38 80 00 05 */	li r4, 0x5
/* 813859F8 | 93 43 00 18 */	stw r26, 0x18(r3)
/* 813859FC | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81385A00 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385A04 | 48 18 C9 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385A08 | 7C 7B 1B 78 */	mr r27, r3
/* 81385A0C | 4B FD CE 65 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385A10 | 38 00 00 01 */	li r0, 0x1
/* 81385A14 | 7F C3 F3 78 */	mr r3, r30
/* 81385A18 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81385A1C | 38 9F 05 0C */	addi r4, r31, 0x50c
/* 81385A20 | 80 BE 00 B0 */	lwz r5, 0xb0(r30)
/* 81385A24 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81385A28 | 4B FF E9 0D */	bl set_page_text__Q33ipl5scene7AddressFPCci
/* 81385A2C | 80 BE 00 B0 */	lwz r5, 0xb0(r30)
/* 81385A30 | 7F C3 F3 78 */	mr r3, r30
/* 81385A34 | 38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 81385A38 | 4B FF E8 FD */	bl set_page_text__Q33ipl5scene7AddressFPCci
/* 81385A3C | 7F C3 F3 78 */	mr r3, r30
/* 81385A40 | 38 80 00 00 */	li r4, 0x0
/* 81385A44 | 4B FF F7 35 */	bl reset_gui__Q33ipl5scene7AddressFb
/* 81385A48 | 3B 7F 00 3C */	addi r27, r31, 0x3c
/* 81385A4C | 3B 9F 00 8C */	addi r28, r31, 0x8c
/* 81385A50 | 3B E0 00 00 */	li r31, 0x0
/* 81385A54 | 3B A0 00 00 */	li r29, 0x0
.L_81385A58:
/* 81385A58 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 81385A5C | 7C BE EA 14 */	add r5, r30, r29
/* 81385A60 | 7C 9B D0 2E */	lwzx r4, r27, r26
/* 81385A64 | 7F C3 F3 78 */	mr r3, r30
/* 81385A68 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81385A6C | 38 E5 00 E4 */	addi r7, r5, 0xe4
/* 81385A70 | 7F E6 FB 78 */	mr r6, r31
/* 81385A74 | 39 00 00 00 */	li r8, 0x0
/* 81385A78 | 7C BF 02 14 */	add r5, r31, r0
/* 81385A7C | 4B FF E6 A9 */	bl set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb
/* 81385A80 | 80 DE 00 B0 */	lwz r6, 0xb0(r30)
/* 81385A84 | 7C BE EA 14 */	add r5, r30, r29
/* 81385A88 | 7C 9C D0 2E */	lwzx r4, r28, r26
/* 81385A8C | 7F C3 F3 78 */	mr r3, r30
/* 81385A90 | 38 06 FF FF */	subi r0, r6, 0x1
/* 81385A94 | 7F E6 FB 78 */	mr r6, r31
/* 81385A98 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81385A9C | 38 E5 01 AC */	addi r7, r5, 0x1ac
/* 81385AA0 | 39 00 00 01 */	li r8, 0x1
/* 81385AA4 | 7C BF 02 14 */	add r5, r31, r0
/* 81385AA8 | 4B FF E6 7D */	bl set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb
/* 81385AAC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81385AB0 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 81385AB4 | 28 1F 00 05 */	cmplwi r31, 0x5
/* 81385AB8 | 3B BD 00 28 */	addi r29, r29, 0x28
/* 81385ABC | 41 80 FF 9C */	blt .L_81385A58
/* 81385AC0 | 38 00 00 05 */	li r0, 0x5
/* 81385AC4 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81385AC8 | 48 00 01 34 */	b .L_81385BFC
.L_81385ACC:
/* 81385ACC | 38 00 00 00 */	li r0, 0x0
/* 81385AD0 | 3B 80 00 01 */	li r28, 0x1
/* 81385AD4 | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 81385AD8 | 38 80 00 04 */	li r4, 0x4
/* 81385ADC | 90 03 00 B0 */	stw r0, 0xb0(r3)
/* 81385AE0 | 90 03 00 B8 */	stw r0, 0xb8(r3)
/* 81385AE4 | 9B 83 00 E1 */	stb r28, 0xe1(r3)
/* 81385AE8 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81385AEC | 48 18 C8 2D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385AF0 | 93 83 00 18 */	stw r28, 0x18(r3)
/* 81385AF4 | 38 80 00 04 */	li r4, 0x4
/* 81385AF8 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81385AFC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385B00 | 48 18 C8 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385B04 | 7C 7A 1B 78 */	mr r26, r3
/* 81385B08 | 4B FD CD 69 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385B0C | 93 9A 00 14 */	stw r28, 0x14(r26)
/* 81385B10 | 7F C3 F3 78 */	mr r3, r30
/* 81385B14 | 38 80 00 01 */	li r4, 0x1
/* 81385B18 | 4B FF F6 61 */	bl reset_gui__Q33ipl5scene7AddressFb
/* 81385B1C | 38 00 00 07 */	li r0, 0x7
/* 81385B20 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81385B24 | 48 00 00 D8 */	b .L_81385BFC
.L_81385B28:
/* 81385B28 | 80 E3 00 B4 */	lwz r7, 0xb4(r3)
/* 81385B2C | 38 9F 05 29 */	addi r4, r31, 0x529
/* 81385B30 | 80 C3 00 8C */	lwz r6, 0x8c(r3)
/* 81385B34 | 38 A0 00 01 */	li r5, 0x1
/* 81385B38 | 38 07 FF FF */	subi r0, r7, 0x1
/* 81385B3C | 90 03 00 B4 */	stw r0, 0xb4(r3)
/* 81385B40 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 81385B44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81385B48 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81385B4C | 7D 89 03 A6 */	mtctr r12
/* 81385B50 | 4E 80 04 21 */	bctrl
/* 81385B54 | 7C 64 1B 78 */	mr r4, r3
/* 81385B58 | 7F C3 F3 78 */	mr r3, r30
/* 81385B5C | 38 AD AB 10 */	li r5, lbl_81698B50@sda21
/* 81385B60 | 4B FF E5 15 */	bl add_translate__Q33ipl5scene7AddressFPQ34nw4r3lyt4PaneRCQ33ipl4math4VEC2
/* 81385B64 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81385B68 | 38 80 00 04 */	li r4, 0x4
/* 81385B6C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385B70 | 48 18 C7 A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385B74 | 38 00 00 00 */	li r0, 0x0
/* 81385B78 | 38 80 00 04 */	li r4, 0x4
/* 81385B7C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81385B80 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81385B84 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385B88 | 48 18 C7 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385B8C | 7C 7A 1B 78 */	mr r26, r3
/* 81385B90 | 4B FD CC E1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385B94 | 38 00 00 01 */	li r0, 0x1
/* 81385B98 | 7F C3 F3 78 */	mr r3, r30
/* 81385B9C | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 81385BA0 | 38 80 00 01 */	li r4, 0x1
/* 81385BA4 | 4B FF F5 D5 */	bl reset_gui__Q33ipl5scene7AddressFb
/* 81385BA8 | 3B 9F 00 3C */	addi r28, r31, 0x3c
/* 81385BAC | 3B 40 00 00 */	li r26, 0x0
/* 81385BB0 | 3B E0 00 00 */	li r31, 0x0
/* 81385BB4 | 3B A0 00 00 */	li r29, 0x0
.L_81385BB8:
/* 81385BB8 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 81385BBC | 7C BE FA 14 */	add r5, r30, r31
/* 81385BC0 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 81385BC4 | 7F C3 F3 78 */	mr r3, r30
/* 81385BC8 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81385BCC | 38 E5 00 E4 */	addi r7, r5, 0xe4
/* 81385BD0 | 7F 46 D3 78 */	mr r6, r26
/* 81385BD4 | 39 00 00 00 */	li r8, 0x0
/* 81385BD8 | 7C BA 02 14 */	add r5, r26, r0
/* 81385BDC | 4B FF E5 49 */	bl set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb
/* 81385BE0 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81385BE4 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81385BE8 | 28 1A 00 05 */	cmplwi r26, 0x5
/* 81385BEC | 3B FF 00 28 */	addi r31, r31, 0x28
/* 81385BF0 | 41 80 FF C8 */	blt .L_81385BB8
/* 81385BF4 | 38 00 00 02 */	li r0, 0x2
/* 81385BF8 | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81385BFC:
/* 81385BFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81385C00 | 48 27 39 09 */	bl _restgpr_26
/* 81385C04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81385C08 | 7C 08 03 A6 */	mtlr r0
/* 81385C0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81385C10 | 4E 80 00 20 */	blr
.endfn onNextPage__Q33ipl5scene7AddressFv

# .text:0x45B4 | 0x81385C14 | size: 0x294
# ipl::scene::Address::onPreviousPage()
.fn onPreviousPage__Q33ipl5scene7AddressFv, global
/* 81385C14 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81385C18 | 7C 08 02 A6 */	mflr r0
/* 81385C1C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81385C20 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81385C24 | 48 27 38 9D */	bl _savegpr_27
/* 81385C28 | 80 03 00 AC */	lwz r0, 0xac(r3)
/* 81385C2C | 3F E0 81 64 */	lis r31, lbl_81647538@ha
/* 81385C30 | 7C 7E 1B 78 */	mr r30, r3
/* 81385C34 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81385C38 | 3B FF 75 38 */	addi r31, r31, lbl_81647538@l
/* 81385C3C | 41 82 00 20 */	beq .L_81385C5C
/* 81385C40 | 40 80 00 10 */	bge .L_81385C50
/* 81385C44 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81385C48 | 41 82 01 2C */	beq .L_81385D74
/* 81385C4C | 48 00 02 44 */	b .L_81385E90
.L_81385C50:
/* 81385C50 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81385C54 | 41 82 00 08 */	beq .L_81385C5C
/* 81385C58 | 48 00 02 38 */	b .L_81385E90
.L_81385C5C:
/* 81385C5C | 80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 81385C60 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81385C64 | 40 81 00 C4 */	ble .L_81385D28
/* 81385C68 | 80 C3 00 B8 */	lwz r6, 0xb8(r3)
/* 81385C6C | 38 E4 FF FF */	subi r7, r4, 0x1
/* 81385C70 | 80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 81385C74 | 38 80 00 05 */	li r4, 0x5
/* 81385C78 | 38 06 FF FF */	subi r0, r6, 0x1
/* 81385C7C | 90 E3 00 B0 */	stw r7, 0xb0(r3)
/* 81385C80 | 90 03 00 B8 */	stw r0, 0xb8(r3)
/* 81385C84 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81385C88 | 48 18 C6 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385C8C | 3B 80 00 01 */	li r28, 0x1
/* 81385C90 | 38 80 00 05 */	li r4, 0x5
/* 81385C94 | 93 83 00 18 */	stw r28, 0x18(r3)
/* 81385C98 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81385C9C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385CA0 | 48 18 C6 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385CA4 | 7C 7D 1B 78 */	mr r29, r3
/* 81385CA8 | 4B FD CB C9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385CAC | 93 9D 00 14 */	stw r28, 0x14(r29)
/* 81385CB0 | 7F C3 F3 78 */	mr r3, r30
/* 81385CB4 | 38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 81385CB8 | 80 BE 00 B0 */	lwz r5, 0xb0(r30)
/* 81385CBC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81385CC0 | 4B FF E6 75 */	bl set_page_text__Q33ipl5scene7AddressFPCci
/* 81385CC4 | 7F C3 F3 78 */	mr r3, r30
/* 81385CC8 | 38 80 00 01 */	li r4, 0x1
/* 81385CCC | 4B FF F4 AD */	bl reset_gui__Q33ipl5scene7AddressFb
/* 81385CD0 | 3B 9F 00 8C */	addi r28, r31, 0x8c
/* 81385CD4 | 3B 60 00 00 */	li r27, 0x0
/* 81385CD8 | 3B A0 00 00 */	li r29, 0x0
/* 81385CDC | 3B E0 00 00 */	li r31, 0x0
.L_81385CE0:
/* 81385CE0 | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 81385CE4 | 7C BE EA 14 */	add r5, r30, r29
/* 81385CE8 | 7C 9C F8 2E */	lwzx r4, r28, r31
/* 81385CEC | 7F C3 F3 78 */	mr r3, r30
/* 81385CF0 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81385CF4 | 38 E5 01 AC */	addi r7, r5, 0x1ac
/* 81385CF8 | 7F 66 DB 78 */	mr r6, r27
/* 81385CFC | 39 00 00 01 */	li r8, 0x1
/* 81385D00 | 7C BB 02 14 */	add r5, r27, r0
/* 81385D04 | 4B FF E4 21 */	bl set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb
/* 81385D08 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81385D0C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81385D10 | 28 1B 00 05 */	cmplwi r27, 0x5
/* 81385D14 | 3B BD 00 28 */	addi r29, r29, 0x28
/* 81385D18 | 41 80 FF C8 */	blt .L_81385CE0
/* 81385D1C | 38 00 00 06 */	li r0, 0x6
/* 81385D20 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81385D24 | 48 00 01 6C */	b .L_81385E90
.L_81385D28:
/* 81385D28 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 81385D2C | 38 80 00 04 */	li r4, 0x4
/* 81385D30 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385D34 | 48 18 C5 E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385D38 | 3B 80 00 01 */	li r28, 0x1
/* 81385D3C | 38 80 00 04 */	li r4, 0x4
/* 81385D40 | 93 83 00 18 */	stw r28, 0x18(r3)
/* 81385D44 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81385D48 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385D4C | 48 18 C5 CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385D50 | 7C 7D 1B 78 */	mr r29, r3
/* 81385D54 | 4B FD CB 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385D58 | 93 9D 00 14 */	stw r28, 0x14(r29)
/* 81385D5C | 7F C3 F3 78 */	mr r3, r30
/* 81385D60 | 38 80 00 01 */	li r4, 0x1
/* 81385D64 | 4B FF F4 15 */	bl reset_gui__Q33ipl5scene7AddressFb
/* 81385D68 | 38 00 00 03 */	li r0, 0x3
/* 81385D6C | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81385D70 | 48 00 01 20 */	b .L_81385E90
.L_81385D74:
/* 81385D74 | 3B 80 00 00 */	li r28, 0x0
/* 81385D78 | 38 00 00 13 */	li r0, 0x13
/* 81385D7C | 90 03 00 B0 */	stw r0, 0xb0(r3)
/* 81385D80 | 38 CD AB 10 */	li r6, lbl_81698B50@sda21
/* 81385D84 | C0 22 83 DC */	lfs f1, lbl_816947DC@sda21(r0)
/* 81385D88 | 38 9F 05 29 */	addi r4, r31, 0x529
/* 81385D8C | 93 83 00 B4 */	stw r28, 0xb4(r3)
/* 81385D90 | 38 A0 00 01 */	li r5, 0x1
/* 81385D94 | 9B 83 00 E1 */	stb r28, 0xe1(r3)
/* 81385D98 | C0 46 00 04 */	lfs f2, 0x4(r6)
/* 81385D9C | C0 0D AB 10 */	lfs f0, lbl_81698B50@sda21(r0)
/* 81385DA0 | EC 42 00 72 */	fmuls f2, f2, f1
/* 81385DA4 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81385DA8 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 81385DAC | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81385DB0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81385DB4 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81385DB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81385DBC | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 81385DC0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
/* 81385DC4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81385DC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81385DCC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81385DD0 | 7D 89 03 A6 */	mtctr r12
/* 81385DD4 | 4E 80 04 21 */	bctrl
/* 81385DD8 | 7C 64 1B 78 */	mr r4, r3
/* 81385DDC | 7F C3 F3 78 */	mr r3, r30
/* 81385DE0 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81385DE4 | 4B FF E2 91 */	bl add_translate__Q33ipl5scene7AddressFPQ34nw4r3lyt4PaneRCQ33ipl4math4VEC2
/* 81385DE8 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81385DEC | 38 80 00 04 */	li r4, 0x4
/* 81385DF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385DF4 | 48 18 C5 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385DF8 | 93 83 00 18 */	stw r28, 0x18(r3)
/* 81385DFC | 38 80 00 04 */	li r4, 0x4
/* 81385E00 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 81385E04 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81385E08 | 48 18 C5 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81385E0C | 7C 7C 1B 78 */	mr r28, r3
/* 81385E10 | 4B FD CA 61 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81385E14 | 38 00 00 01 */	li r0, 0x1
/* 81385E18 | 7F C3 F3 78 */	mr r3, r30
/* 81385E1C | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 81385E20 | 38 9F 05 0C */	addi r4, r31, 0x50c
/* 81385E24 | 80 BE 00 B0 */	lwz r5, 0xb0(r30)
/* 81385E28 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81385E2C | 4B FF E5 09 */	bl set_page_text__Q33ipl5scene7AddressFPCci
/* 81385E30 | 7F C3 F3 78 */	mr r3, r30
/* 81385E34 | 38 80 00 00 */	li r4, 0x0
/* 81385E38 | 4B FF F3 41 */	bl reset_gui__Q33ipl5scene7AddressFb
/* 81385E3C | 3B 9F 00 3C */	addi r28, r31, 0x3c
/* 81385E40 | 3B 60 00 00 */	li r27, 0x0
/* 81385E44 | 3B E0 00 00 */	li r31, 0x0
/* 81385E48 | 3B A0 00 00 */	li r29, 0x0
.L_81385E4C:
/* 81385E4C | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 81385E50 | 7C BE FA 14 */	add r5, r30, r31
/* 81385E54 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 81385E58 | 7F C3 F3 78 */	mr r3, r30
/* 81385E5C | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81385E60 | 38 E5 00 E4 */	addi r7, r5, 0xe4
/* 81385E64 | 7F 66 DB 78 */	mr r6, r27
/* 81385E68 | 39 00 00 00 */	li r8, 0x0
/* 81385E6C | 7C BB 02 14 */	add r5, r27, r0
/* 81385E70 | 4B FF E2 B5 */	bl set_friend__Q33ipl5scene7AddressFPCcUlUlRQ43ipl5scene7Address6MiiObjb
/* 81385E74 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81385E78 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81385E7C | 28 1B 00 05 */	cmplwi r27, 0x5
/* 81385E80 | 3B FF 00 28 */	addi r31, r31, 0x28
/* 81385E84 | 41 80 FF C8 */	blt .L_81385E4C
/* 81385E88 | 38 00 00 08 */	li r0, 0x8
/* 81385E8C | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81385E90:
/* 81385E90 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81385E94 | 48 27 36 79 */	bl _restgpr_27
/* 81385E98 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81385E9C | 7C 08 03 A6 */	mtlr r0
/* 81385EA0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81385EA4 | 4E 80 00 20 */	blr
.endfn onPreviousPage__Q33ipl5scene7AddressFv

# .text:0x4848 | 0x81385EA8 | size: 0x140
# ipl::scene::Address::set_err_msg(wchar_t*, unsigned long, NWC24Err)
.fn set_err_msg__Q33ipl5scene7AddressFPwUl8NWC24Err, global
/* 81385EA8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81385EAC | 7C 08 02 A6 */	mflr r0
/* 81385EB0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81385EB4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81385EB8 | 48 27 36 09 */	bl _savegpr_27
/* 81385EBC | 7C 9B 23 78 */	mr r27, r4
/* 81385EC0 | 7C BC 2B 78 */	mr r28, r5
/* 81385EC4 | 7C DD 33 78 */	mr r29, r6
/* 81385EC8 | 54 A5 08 3C */	slwi r5, r5, 1
/* 81385ECC | 7F 63 DB 78 */	mr r3, r27
/* 81385ED0 | 38 80 00 00 */	li r4, 0x0
/* 81385ED4 | 4B FA A4 61 */	bl memset
/* 81385ED8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81385EDC | 38 80 01 90 */	li r4, 0x190
/* 81385EE0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81385EE4 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 81385EE8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81385EEC | 4B FB 88 D1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81385EF0 | 7C 7E 1B 78 */	mr r30, r3
/* 81385EF4 | 7F 63 DB 78 */	mr r3, r27
/* 81385EF8 | 48 28 27 B5 */	bl fn_816086AC
/* 81385EFC | 7C A3 E0 50 */	subf r5, r3, r28
/* 81385F00 | 7F 63 DB 78 */	mr r3, r27
/* 81385F04 | 7F C4 F3 78 */	mr r4, r30
/* 81385F08 | 48 28 28 4D */	bl fn_81608754
/* 81385F0C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81385F10 | 38 80 00 00 */	li r4, 0x0
/* 81385F14 | 38 A0 00 40 */	li r5, 0x40
/* 81385F18 | 4B FA A4 1D */	bl memset
/* 81385F1C | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 81385F20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81385F24 | 41 82 00 0C */	beq .L_81385F30
/* 81385F28 | 38 60 00 00 */	li r3, 0x0
/* 81385F2C | 48 00 00 08 */	b .L_81385F34
.L_81385F30:
/* 81385F30 | 80 7F 00 8C */	lwz r3, 0x8c(r31)
.L_81385F34:
/* 81385F34 | 4B FB E0 F9 */	bl getErrCode__Q33ipl5nwc247ManagerFv
/* 81385F38 | 3C A0 81 64 */	lis r5, lbl_81647AF2@ha
/* 81385F3C | 7C 66 1B 78 */	mr r6, r3
/* 81385F40 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81385F44 | 38 80 00 20 */	li r4, 0x20
/* 81385F48 | 38 A5 7A F2 */	addi r5, r5, lbl_81647AF2@l
/* 81385F4C | 4C C6 31 82 */	crclr cr1eq
/* 81385F50 | 48 28 26 81 */	bl swprintf
/* 81385F54 | 7F 63 DB 78 */	mr r3, r27
/* 81385F58 | 48 28 27 55 */	bl fn_816086AC
/* 81385F5C | 7C A3 E0 50 */	subf r5, r3, r28
/* 81385F60 | 7F 63 DB 78 */	mr r3, r27
/* 81385F64 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81385F68 | 48 28 27 ED */	bl fn_81608754
/* 81385F6C | 2C 1D FF E1 */	cmpwi r29, -0x1f
/* 81385F70 | 41 82 00 20 */	beq .L_81385F90
/* 81385F74 | 40 80 00 10 */	bge .L_81385F84
/* 81385F78 | 2C 1D FF E0 */	cmpwi r29, -0x20
/* 81385F7C | 40 80 00 1C */	bge .L_81385F98
/* 81385F80 | 48 00 00 1C */	b .L_81385F9C
.L_81385F84:
/* 81385F84 | 2C 1D FF FA */	cmpwi r29, -0x6
/* 81385F88 | 41 82 00 10 */	beq .L_81385F98
/* 81385F8C | 48 00 00 10 */	b .L_81385F9C
.L_81385F90:
/* 81385F90 | 3B C0 01 9A */	li r30, 0x19a
/* 81385F94 | 48 00 00 08 */	b .L_81385F9C
.L_81385F98:
/* 81385F98 | 3B C0 01 C5 */	li r30, 0x1c5
.L_81385F9C:
/* 81385F9C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81385FA0 | 7F C4 F3 78 */	mr r4, r30
/* 81385FA4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81385FA8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 81385FAC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81385FB0 | 4B FB 88 0D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81385FB4 | 7C 7E 1B 78 */	mr r30, r3
/* 81385FB8 | 7F 63 DB 78 */	mr r3, r27
/* 81385FBC | 48 28 26 F1 */	bl fn_816086AC
/* 81385FC0 | 7C A3 E0 50 */	subf r5, r3, r28
/* 81385FC4 | 7F 63 DB 78 */	mr r3, r27
/* 81385FC8 | 7F C4 F3 78 */	mr r4, r30
/* 81385FCC | 48 28 27 89 */	bl fn_81608754
/* 81385FD0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81385FD4 | 48 27 35 39 */	bl _restgpr_27
/* 81385FD8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81385FDC | 7C 08 03 A6 */	mtlr r0
/* 81385FE0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81385FE4 | 4E 80 00 20 */	blr
.endfn set_err_msg__Q33ipl5scene7AddressFPwUl8NWC24Err

# .text:0x4988 | 0x81385FE8 | size: 0x290
# ipl::scene::Address::entry_friend()
.fn entry_friend__Q33ipl5scene7AddressFv, global
/* 81385FE8 | 94 21 F7 90 */	stwu r1, -0x870(r1)
/* 81385FEC | 7C 08 02 A6 */	mflr r0
/* 81385FF0 | 90 01 08 74 */	stw r0, 0x874(r1)
/* 81385FF4 | 39 61 08 70 */	addi r11, r1, 0x870
/* 81385FF8 | 48 27 34 CD */	bl _savegpr_28
/* 81385FFC | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 81386000 | 7C 7E 1B 78 */	mr r30, r3
/* 81386004 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386008 | 40 82 02 58 */	bne .L_81386260
/* 8138600C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81386010 | 38 80 00 05 */	li r4, 0x5
/* 81386014 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81386018 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8138601C | 48 08 51 1D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81386020 | 7C 7F 1B 78 */	mr r31, r3
/* 81386024 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81386028 | 48 1E 41 51 */	bl SCGetParentalControl
/* 8138602C | 80 DE 02 74 */	lwz r6, 0x274(r30)
/* 81386030 | 3C 80 81 64 */	lis r4, lbl_81647A78@ha
/* 81386034 | 3C A0 81 09 */	lis r5, sSystem__Q23ipl3snd@ha
/* 81386038 | 7C 7D 1B 78 */	mr r29, r3
/* 8138603C | 83 86 7D 70 */	lwz r28, 0x7d70(r6)
/* 81386040 | 38 65 99 2C */	addi r3, r5, sSystem__Q23ipl3snd@l
/* 81386044 | 38 84 7A 78 */	addi r4, r4, lbl_81647A78@l
/* 81386048 | 4B FE 54 25 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8138604C | 80 7E 00 C0 */	lwz r3, 0xc0(r30)
/* 81386050 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 81386054 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81386058 | 40 82 00 10 */	bne .L_81386068
/* 8138605C | 7F E3 FB 78 */	mr r3, r31
/* 81386060 | 38 80 00 1D */	li r4, 0x1d
/* 81386064 | 48 01 6A F5 */	bl iplButton_8139CB58
.L_81386068:
/* 81386068 | 48 07 58 85 */	bl getConnectEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 8138606C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386070 | 40 82 00 30 */	bne .L_813860A0
/* 81386074 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81386078 | 38 80 01 45 */	li r4, 0x145
/* 8138607C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81386080 | 38 A0 01 46 */	li r5, 0x146
/* 81386084 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81386088 | 38 C0 00 25 */	li r6, 0x25
/* 8138608C | 38 E0 00 00 */	li r7, 0x0
/* 81386090 | 4B FC 0A 45 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 81386094 | 38 00 00 0F */	li r0, 0xf
/* 81386098 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 8138609C | 48 00 01 AC */	b .L_81386248
.L_813860A0:
/* 813860A0 | 48 1E 47 81 */	bl SCGetWCFlags
/* 813860A4 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 813860A8 | 40 82 00 30 */	bne .L_813860D8
/* 813860AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813860B0 | 38 80 01 7E */	li r4, 0x17e
/* 813860B4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813860B8 | 38 A0 01 46 */	li r5, 0x146
/* 813860BC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813860C0 | 38 C0 00 25 */	li r6, 0x25
/* 813860C4 | 38 E0 00 00 */	li r7, 0x0
/* 813860C8 | 4B FC 0A 0D */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813860CC | 38 00 00 12 */	li r0, 0x12
/* 813860D0 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 813860D4 | 48 00 01 74 */	b .L_81386248
.L_813860D8:
/* 813860D8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813860DC | 41 82 00 40 */	beq .L_8138611C
/* 813860E0 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813860E4 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813860E8 | 41 82 00 34 */	beq .L_8138611C
/* 813860EC | 48 1E 45 C1 */	bl SCGetNetContentRestrictions
/* 813860F0 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 813860F4 | 41 82 00 28 */	beq .L_8138611C
/* 813860F8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813860FC | 38 80 01 4C */	li r4, 0x14c
/* 81386100 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81386104 | 38 A0 00 2E */	li r5, 0x2e
/* 81386108 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8138610C | 4B FC 05 ED */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 81386110 | 38 00 00 17 */	li r0, 0x17
/* 81386114 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 81386118 | 48 00 01 30 */	b .L_81386248
.L_8138611C:
/* 8138611C | 80 7E 02 74 */	lwz r3, 0x274(r30)
/* 81386120 | 48 00 12 21 */	bl check__Q33ipl5scene15FriendListCacheFv
/* 81386124 | 2C 03 FF E1 */	cmpwi r3, -0x1f
/* 81386128 | 41 82 00 20 */	beq .L_81386148
/* 8138612C | 80 7E 02 74 */	lwz r3, 0x274(r30)
/* 81386130 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81386134 | 80 03 9D 74 */	lwz r0, -0x628c(r3)
/* 81386138 | 2C 00 FF E0 */	cmpwi r0, -0x20
/* 8138613C | 41 82 00 0C */	beq .L_81386148
/* 81386140 | 2C 00 FF FA */	cmpwi r0, -0x6
/* 81386144 | 40 82 00 60 */	bne .L_813861A4
.L_81386148:
/* 81386148 | 38 00 02 00 */	li r0, 0x200
/* 8138614C | 38 81 00 50 */	addi r4, r1, 0x50
/* 81386150 | 38 60 00 00 */	li r3, 0x0
/* 81386154 | 7C 09 03 A6 */	mtctr r0
.L_81386158:
/* 81386158 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 8138615C | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 81386160 | 42 00 FF F8 */	bdnz .L_81386158
/* 81386164 | 80 DE 02 74 */	lwz r6, 0x274(r30)
/* 81386168 | 7F C3 F3 78 */	mr r3, r30
/* 8138616C | 38 81 00 52 */	addi r4, r1, 0x52
/* 81386170 | 38 A0 04 00 */	li r5, 0x400
/* 81386174 | 3C C6 00 01 */	addis r6, r6, 0x1
/* 81386178 | 80 C6 9D 74 */	lwz r6, -0x628c(r6)
/* 8138617C | 4B FF FD 2D */	bl set_err_msg__Q33ipl5scene7AddressFPwUl8NWC24Err
/* 81386180 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81386184 | 38 81 00 52 */	addi r4, r1, 0x52
/* 81386188 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138618C | 38 A0 00 2E */	li r5, 0x2e
/* 81386190 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81386194 | 4B FC 07 11 */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 81386198 | 38 00 00 15 */	li r0, 0x15
/* 8138619C | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 813861A0 | 48 00 00 A8 */	b .L_81386248
.L_813861A4:
/* 813861A4 | 28 1C 00 64 */	cmplwi r28, 0x64
/* 813861A8 | 41 80 00 28 */	blt .L_813861D0
/* 813861AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813861B0 | 38 80 00 50 */	li r4, 0x50
/* 813861B4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813861B8 | 38 A0 00 2E */	li r5, 0x2e
/* 813861BC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813861C0 | 4B FC 05 39 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813861C4 | 38 00 00 16 */	li r0, 0x16
/* 813861C8 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 813861CC | 48 00 00 7C */	b .L_81386248
.L_813861D0:
/* 813861D0 | 7F C3 F3 78 */	mr r3, r30
/* 813861D4 | 7F C5 F3 78 */	mr r5, r30
/* 813861D8 | 38 80 00 18 */	li r4, 0x18
/* 813861DC | 38 C0 00 00 */	li r6, 0x0
/* 813861E0 | 38 E0 00 00 */	li r7, 0x0
/* 813861E4 | 48 08 3C A5 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813861E8 | 7F E3 FB 78 */	mr r3, r31
/* 813861EC | 38 80 00 10 */	li r4, 0x10
/* 813861F0 | 48 01 72 39 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813861F4 | 7F E3 FB 78 */	mr r3, r31
/* 813861F8 | 38 80 00 00 */	li r4, 0x0
/* 813861FC | 38 A0 01 3B */	li r5, 0x13b
/* 81386200 | 48 01 72 5D */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81386204 | 7F E3 FB 78 */	mr r3, r31
/* 81386208 | 38 80 00 0B */	li r4, 0xb
/* 8138620C | 48 01 72 1D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81386210 | 7F E3 FB 78 */	mr r3, r31
/* 81386214 | 38 80 00 00 */	li r4, 0x0
/* 81386218 | 38 A0 00 00 */	li r5, 0x0
/* 8138621C | 48 01 67 21 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81386220 | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 81386224 | 38 80 00 00 */	li r4, 0x0
/* 81386228 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8138622C | 48 18 C0 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81386230 | 7C 7C 1B 78 */	mr r28, r3
/* 81386234 | 4B FD C6 3D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81386238 | 38 60 00 01 */	li r3, 0x1
/* 8138623C | 38 00 00 0C */	li r0, 0xc
/* 81386240 | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 81386244 | 90 1E 00 AC */	stw r0, 0xac(r30)
.L_81386248:
/* 81386248 | 7F E3 FB 78 */	mr r3, r31
/* 8138624C | 38 80 00 19 */	li r4, 0x19
/* 81386250 | 48 01 69 09 */	bl iplButton_8139CB58
/* 81386254 | 7F E3 FB 78 */	mr r3, r31
/* 81386258 | 38 80 00 1A */	li r4, 0x1a
/* 8138625C | 48 01 68 FD */	bl iplButton_8139CB58
.L_81386260:
/* 81386260 | 39 61 08 70 */	addi r11, r1, 0x870
/* 81386264 | 48 27 32 AD */	bl _restgpr_28
/* 81386268 | 80 01 08 74 */	lwz r0, 0x874(r1)
/* 8138626C | 7C 08 03 A6 */	mtlr r0
/* 81386270 | 38 21 08 70 */	addi r1, r1, 0x870
/* 81386274 | 4E 80 00 20 */	blr
.endfn entry_friend__Q33ipl5scene7AddressFv

# .text:0x4C18 | 0x81386278 | size: 0x9C
# ipl::scene::Address::isReleasableArea(int, int)
.fn isReleasableArea__Q33ipl5scene7AddressFii, global
/* 81386278 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8138627C | 41 80 00 0C */	blt .L_81386288
/* 81386280 | 2C 04 00 14 */	cmpwi r4, 0x14
/* 81386284 | 41 80 00 0C */	blt .L_81386290
.L_81386288:
/* 81386288 | 38 60 00 00 */	li r3, 0x0
/* 8138628C | 4E 80 00 20 */	blr
.L_81386290:
/* 81386290 | 88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 81386294 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386298 | 41 82 00 0C */	beq .L_813862A4
/* 8138629C | 38 60 00 00 */	li r3, 0x0
/* 813862A0 | 4E 80 00 20 */	blr
.L_813862A4:
/* 813862A4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813862A8 | 41 80 00 0C */	blt .L_813862B4
/* 813862AC | 2C 05 00 05 */	cmpwi r5, 0x5
/* 813862B0 | 41 80 00 0C */	blt .L_813862BC
.L_813862B4:
/* 813862B4 | 38 60 00 00 */	li r3, 0x0
/* 813862B8 | 4E 80 00 20 */	blr
.L_813862BC:
/* 813862BC | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813862C0 | 7C 04 00 00 */	cmpw r4, r0
/* 813862C4 | 40 82 00 18 */	bne .L_813862DC
/* 813862C8 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 813862CC | 7C 05 00 00 */	cmpw r5, r0
/* 813862D0 | 40 82 00 0C */	bne .L_813862DC
/* 813862D4 | 38 60 00 01 */	li r3, 0x1
/* 813862D8 | 4E 80 00 20 */	blr
.L_813862DC:
/* 813862DC | 1C 04 00 05 */	mulli r0, r4, 0x5
/* 813862E0 | 80 83 02 74 */	lwz r4, 0x274(r3)
/* 813862E4 | 7C 05 02 14 */	add r0, r5, r0
/* 813862E8 | 7C 80 22 14 */	add r4, r0, r4
/* 813862EC | 88 04 7D 00 */	lbz r0, 0x7d00(r4)
/* 813862F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813862F4 | 41 82 00 0C */	beq .L_81386300
/* 813862F8 | 38 60 00 00 */	li r3, 0x0
/* 813862FC | 4E 80 00 20 */	blr
.L_81386300:
/* 81386300 | 88 63 00 84 */	lbz r3, 0x84(r3)
/* 81386304 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81386308 | 7C 00 00 34 */	cntlzw r0, r0
/* 8138630C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81386310 | 4E 80 00 20 */	blr
.endfn isReleasableArea__Q33ipl5scene7AddressFii

# .text:0x4CB4 | 0x81386314 | size: 0x334
# ipl::scene::Address::changePage_onDrag()
.fn changePage_onDrag__Q33ipl5scene7AddressFv, global
/* 81386314 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81386318 | 7C 08 02 A6 */	mflr r0
/* 8138631C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81386320 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 81386324 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 81386328 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8138632C | 48 27 31 99 */	bl _savegpr_28
/* 81386330 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81386334 | 3F E0 81 64 */	lis r31, lbl_81647538@ha
/* 81386338 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138633C | 7C 7D 1B 78 */	mr r29, r3
/* 81386340 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 81386344 | 3B FF 75 38 */	addi r31, r31, lbl_81647538@l
/* 81386348 | 38 80 00 05 */	li r4, 0x5
/* 8138634C | 48 08 4D ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 81386350 | 7C 7E 1B 78 */	mr r30, r3
/* 81386354 | 48 01 65 C1 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81386358 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138635C | 41 82 00 0C */	beq .L_81386368
/* 81386360 | 7F C3 F3 78 */	mr r3, r30
/* 81386364 | 48 01 62 09 */	bl update__Q33ipl5scene6ButtonFv
.L_81386368:
/* 81386368 | 80 1D 00 AC */	lwz r0, 0xac(r29)
/* 8138636C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81386370 | 41 82 00 0C */	beq .L_8138637C
/* 81386374 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81386378 | 40 82 00 5C */	bne .L_813863D4
.L_8138637C:
/* 8138637C | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 81386380 | 80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 81386384 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 81386388 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 8138638C | 4B FB 14 FD */	bl getController__Q33ipl10controller7ManagerFi
/* 81386390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386394 | 41 82 00 28 */	beq .L_813863BC
/* 81386398 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 8138639C | 80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 813863A0 | 4B FB 14 E9 */	bl getController__Q33ipl10controller7ManagerFi
/* 813863A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813863A8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813863AC | 7D 89 03 A6 */	mtctr r12
/* 813863B0 | 4E 80 04 21 */	bctrl
/* 813863B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813863B8 | 40 82 00 1C */	bne .L_813863D4
.L_813863BC:
/* 813863BC | 38 00 00 01 */	li r0, 0x1
/* 813863C0 | 7F A3 EB 78 */	mr r3, r29
/* 813863C4 | 98 1D 00 84 */	stb r0, 0x84(r29)
/* 813863C8 | 38 80 00 00 */	li r4, 0x0
/* 813863CC | 4B FF E9 BD */	bl start_release_event__Q33ipl5scene7AddressFPCc
/* 813863D0 | 48 00 02 58 */	b .L_81386628
.L_813863D4:
/* 813863D4 | 80 1D 00 70 */	lwz r0, 0x70(r29)
/* 813863D8 | 7F A3 EB 78 */	mr r3, r29
/* 813863DC | 80 BD 00 74 */	lwz r5, 0x74(r29)
/* 813863E0 | 38 9F 05 C6 */	addi r4, r31, 0x5c6
/* 813863E4 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 813863E8 | 80 DD 02 74 */	lwz r6, 0x274(r29)
/* 813863EC | 7C 05 02 14 */	add r0, r5, r0
/* 813863F0 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 813863F4 | 7C A6 02 14 */	add r5, r6, r0
/* 813863F8 | 38 A5 00 08 */	addi r5, r5, 0x8
/* 813863FC | 4B FF E0 45 */	bl set_textbox__Q33ipl5scene7AddressFPCcPCw
/* 81386400 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 81386404 | 80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 81386408 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 8138640C | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81386410 | 4B FB 14 79 */	bl getController__Q33ipl10controller7ManagerFi
/* 81386414 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81386418 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8138641C | 7D 89 03 A6 */	mtctr r12
/* 81386420 | 4E 80 04 21 */	bctrl
/* 81386424 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81386428 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8138642C | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 81386430 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81386434 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81386438 | 80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 8138643C | 4B FB 14 4D */	bl getController__Q33ipl10controller7ManagerFi
/* 81386440 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386444 | 41 82 00 9C */	beq .L_813864E0
/* 81386448 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 8138644C | 80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 81386450 | 4B FB 14 39 */	bl getController__Q33ipl10controller7ManagerFi
/* 81386454 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81386458 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8138645C | 7D 89 03 A6 */	mtctr r12
/* 81386460 | 4E 80 04 21 */	bctrl
/* 81386464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386468 | 41 82 00 78 */	beq .L_813864E0
/* 8138646C | C0 61 00 18 */	lfs f3, 0x18(r1)
/* 81386470 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81386474 | C0 3D 00 64 */	lfs f1, 0x64(r29)
/* 81386478 | C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8138647C | C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 81386480 | EC 23 08 28 */	fsubs f1, f3, f1
/* 81386484 | EC 42 00 28 */	fsubs f2, f2, f0
/* 81386488 | 4B FE C0 55 */	bl __ct__Q34nw4r4math4VEC2Fff
/* 8138648C | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81386490 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81386494 | EC 21 00 72 */	fmuls f1, f1, f1
/* 81386498 | C0 42 83 D8 */	lfs f2, lbl_816947D8@sda21(r0)
/* 8138649C | EC 00 00 32 */	fmuls f0, f0, f0
/* 813864A0 | EF E1 00 2A */	fadds f31, f1, f0
/* 813864A4 | FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 813864A8 | 4C 40 13 82 */	cror eq, lt, eq
/* 813864AC | 40 82 00 08 */	bne .L_813864B4
/* 813864B0 | 48 00 00 10 */	b .L_813864C0
.L_813864B4:
/* 813864B4 | FC 20 F8 90 */	fmr f1, f31
/* 813864B8 | 48 19 80 81 */	bl fn_8151E538
/* 813864BC | EC 5F 00 72 */	fmuls f2, f31, f1
.L_813864C0:
/* 813864C0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813864C4 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 813864C8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813864CC | 38 9F 05 D2 */	addi r4, r31, 0x5d2
/* 813864D0 | 4B FE 53 D1 */	bl holdSEwithPosDis__Q33ipl3snd6SystemFPCcff
/* 813864D4 | 38 7D 00 64 */	addi r3, r29, 0x64
/* 813864D8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813864DC | 4B FE 48 FD */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
.L_813864E0:
/* 813864E0 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813864E4 | 4B FA FF 45 */	bl __ct__Q34nw4r2ut4RectFv
/* 813864E8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813864EC | 4B FA FF 3D */	bl __ct__Q34nw4r2ut4RectFv
/* 813864F0 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813864F4 | 4B FA F4 25 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813864F8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813864FC | 4B FA F4 51 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81386500 | C0 61 00 38 */	lfs f3, 0x38(r1)
/* 81386504 | 38 9F 04 4A */	addi r4, r31, 0x44a
/* 81386508 | C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8138650C | 38 A0 00 01 */	li r5, 0x1
/* 81386510 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 81386514 | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 81386518 | EC 63 00 28 */	fsubs f3, f3, f0
/* 8138651C | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81386520 | EC 42 08 28 */	fsubs f2, f2, f1
/* 81386524 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81386528 | FC 00 00 50 */	fneg f0, f0
/* 8138652C | EC 42 18 24 */	fdivs f2, f2, f3
/* 81386530 | EC 41 00 B2 */	fmuls f2, f1, f2
/* 81386534 | D0 41 00 18 */	stfs f2, 0x18(r1)
/* 81386538 | C0 3D 02 9C */	lfs f1, 0x29c(r29)
/* 8138653C | EC 22 08 2A */	fadds f1, f2, f1
/* 81386540 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81386544 | D0 21 00 18 */	stfs f1, 0x18(r1)
/* 81386548 | 80 7D 00 8C */	lwz r3, 0x8c(r29)
/* 8138654C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81386550 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81386554 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81386558 | 7D 89 03 A6 */	mtctr r12
/* 8138655C | 4E 80 04 21 */	bctrl
/* 81386560 | 7C 7C 1B 78 */	mr r28, r3
/* 81386564 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81386568 | 4B FB DE 7D */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 8138656C | 88 1C 00 CF */	lbz r0, 0xcf(r28)
/* 81386570 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81386574 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81386578 | 98 1C 00 CF */	stb r0, 0xcf(r28)
/* 8138657C | 80 7D 00 7C */	lwz r3, 0x7c(r29)
/* 81386580 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386584 | 41 80 00 0C */	blt .L_81386590
/* 81386588 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8138658C | 90 1D 00 7C */	stw r0, 0x7c(r29)
.L_81386590:
/* 81386590 | 80 7D 00 78 */	lwz r3, 0x78(r29)
/* 81386594 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386598 | 41 80 00 0C */	blt .L_813865A4
/* 8138659C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813865A0 | 90 1D 00 78 */	stw r0, 0x78(r29)
.L_813865A4:
/* 813865A4 | 80 1D 00 7C */	lwz r0, 0x7c(r29)
/* 813865A8 | 2C 00 00 1E */	cmpwi r0, 0x1e
/* 813865AC | 41 80 00 3C */	blt .L_813865E8
/* 813865B0 | 7F C3 F3 78 */	mr r3, r30
/* 813865B4 | 38 80 00 14 */	li r4, 0x14
/* 813865B8 | 48 01 65 A1 */	bl iplButton_8139CB58
/* 813865BC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813865C0 | 38 9F 05 15 */	addi r4, r31, 0x515
/* 813865C4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813865C8 | 4B FE 4E A5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813865CC | 7F A3 EB 78 */	mr r3, r29
/* 813865D0 | 4B FF F6 45 */	bl onPreviousPage__Q33ipl5scene7AddressFv
/* 813865D4 | 38 60 00 00 */	li r3, 0x0
/* 813865D8 | 38 00 FF FF */	li r0, -0x1
/* 813865DC | 90 7D 00 7C */	stw r3, 0x7c(r29)
/* 813865E0 | 90 1D 00 78 */	stw r0, 0x78(r29)
/* 813865E4 | 48 00 00 44 */	b .L_81386628
.L_813865E8:
/* 813865E8 | 80 1D 00 78 */	lwz r0, 0x78(r29)
/* 813865EC | 2C 00 00 1E */	cmpwi r0, 0x1e
/* 813865F0 | 41 80 00 38 */	blt .L_81386628
/* 813865F4 | 7F C3 F3 78 */	mr r3, r30
/* 813865F8 | 38 80 00 13 */	li r4, 0x13
/* 813865FC | 48 01 65 5D */	bl iplButton_8139CB58
/* 81386600 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81386604 | 38 9F 04 56 */	addi r4, r31, 0x456
/* 81386608 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8138660C | 4B FE 4E 61 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81386610 | 7F A3 EB 78 */	mr r3, r29
/* 81386614 | 4B FF F3 2D */	bl onNextPage__Q33ipl5scene7AddressFv
/* 81386618 | 38 60 FF FF */	li r3, -0x1
/* 8138661C | 38 00 00 00 */	li r0, 0x0
/* 81386620 | 90 7D 00 7C */	stw r3, 0x7c(r29)
/* 81386624 | 90 1D 00 78 */	stw r0, 0x78(r29)
.L_81386628:
/* 81386628 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 8138662C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81386630 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 81386634 | 48 27 2E DD */	bl _restgpr_28
/* 81386638 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8138663C | 7C 08 03 A6 */	mtlr r0
/* 81386640 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81386644 | 4E 80 00 20 */	blr
.endfn changePage_onDrag__Q33ipl5scene7AddressFv

# .text:0x4FE8 | 0x81386648 | size: 0x26C
# ipl::scene::Address::movePane_onDrag()
.fn movePane_onDrag__Q33ipl5scene7AddressFv, global
/* 81386648 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8138664C | 7C 08 02 A6 */	mflr r0
/* 81386650 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81386654 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 81386658 | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 8138665C | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 81386660 | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 81386664 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81386668 | 48 27 2E 59 */	bl _savegpr_27
/* 8138666C | 80 C3 00 8C */	lwz r6, 0x8c(r3)
/* 81386670 | 7C 7F 1B 78 */	mr r31, r3
/* 81386674 | 3C 80 81 64 */	lis r4, lbl_81647B1A@ha
/* 81386678 | 38 A0 00 01 */	li r5, 0x1
/* 8138667C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 81386680 | 38 84 7B 1A */	addi r4, r4, lbl_81647B1A@l
/* 81386684 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81386688 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8138668C | 7D 89 03 A6 */	mtctr r12
/* 81386690 | 4E 80 04 21 */	bctrl
/* 81386694 | 80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 81386698 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138669C | 80 A3 00 30 */	lwz r5, 0x30(r3)
/* 813866A0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813866A4 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813866A8 | 80 64 00 68 */	lwz r3, 0x68(r4)
/* 813866AC | 90 C1 00 38 */	stw r6, 0x38(r1)
/* 813866B0 | 80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 813866B4 | 90 A1 00 3C */	stw r5, 0x3c(r1)
/* 813866B8 | 90 01 00 40 */	stw r0, 0x40(r1)
/* 813866BC | 4B FB 11 CD */	bl getController__Q33ipl10controller7ManagerFi
/* 813866C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813866C4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813866C8 | 7D 89 03 A6 */	mtctr r12
/* 813866CC | 4E 80 04 21 */	bctrl
/* 813866D0 | 80 FF 00 8C */	lwz r7, 0x8c(r31)
/* 813866D4 | 3C C0 81 64 */	lis r6, lbl_81647AFE@ha
/* 813866D8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813866DC | 38 A0 00 01 */	li r5, 0x1
/* 813866E0 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813866E4 | 80 67 00 14 */	lwz r3, 0x14(r7)
/* 813866E8 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813866EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813866F0 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813866F4 | 38 86 7A FE */	addi r4, r6, lbl_81647AFE@l
/* 813866F8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813866FC | 7D 89 03 A6 */	mtctr r12
/* 81386700 | 4E 80 04 21 */	bctrl
/* 81386704 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 81386708 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138670C | 80 9F 00 74 */	lwz r4, 0x74(r31)
/* 81386710 | 7C 7B 1B 78 */	mr r27, r3
/* 81386714 | 1C 00 00 05 */	mulli r0, r0, 0x5
/* 81386718 | 80 BF 02 74 */	lwz r5, 0x274(r31)
/* 8138671C | C3 C2 83 D8 */	lfs f30, lbl_816947D8@sda21(r0)
/* 81386720 | 7C 04 02 14 */	add r0, r4, r0
/* 81386724 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 81386728 | 7C 05 02 14 */	add r0, r5, r0
/* 8138672C | 40 82 00 08 */	bne .L_81386734
/* 81386730 | 48 00 00 7C */	b .L_813867AC
.L_81386734:
/* 81386734 | 37 A0 00 08 */	addic. r29, r0, 0x8
/* 81386738 | 40 82 00 08 */	bne .L_81386740
/* 8138673C | 48 00 00 70 */	b .L_813867AC
.L_81386740:
/* 81386740 | 48 19 C2 29 */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 81386744 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81386748 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138674C | 7D 89 03 A6 */	mtctr r12
/* 81386750 | 4E 80 04 21 */	bctrl
/* 81386754 | CB E2 83 D0 */	lfd f31, lbl_816947D0@sda21(r0)
/* 81386758 | 3F C0 43 30 */	lis r30, 0x4330
/* 8138675C | 48 00 00 3C */	b .L_81386798
.L_81386760:
/* 81386760 | 7F 63 DB 78 */	mr r3, r27
/* 81386764 | 48 19 C2 05 */	bl GetFont__Q34nw4r3lyt7TextBoxCFv
/* 81386768 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138676C | 7F 84 E3 78 */	mr r4, r28
/* 81386770 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81386774 | 7D 89 03 A6 */	mtctr r12
/* 81386778 | 4E 80 04 21 */	bctrl
/* 8138677C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 81386780 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 81386784 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 81386788 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 8138678C | C8 01 00 48 */	lfd f0, 0x48(r1)
/* 81386790 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 81386794 | EF DE 00 2A */	fadds f30, f30, f0
.L_81386798:
/* 81386798 | A3 9D 00 00 */	lhz r28, 0x0(r29)
/* 8138679C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813867A0 | 40 82 FF C0 */	bne .L_81386760
/* 813867A4 | C0 02 83 E4 */	lfs f0, lbl_816947E4@sda21(r0)
/* 813867A8 | EF C0 F0 2A */	fadds f30, f0, f30
.L_813867AC:
/* 813867AC | 38 61 00 28 */	addi r3, r1, 0x28
/* 813867B0 | 4B FA FC 79 */	bl __ct__Q34nw4r2ut4RectFv
/* 813867B4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813867B8 | 4B FA FC 71 */	bl __ct__Q34nw4r2ut4RectFv
/* 813867BC | 38 61 00 28 */	addi r3, r1, 0x28
/* 813867C0 | 4B FA F1 59 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813867C4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813867C8 | 4B FA F1 85 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813867CC | C0 01 00 38 */	lfs f0, 0x38(r1)
/* 813867D0 | C0 81 00 10 */	lfs f4, 0x10(r1)
/* 813867D4 | EC A0 F0 2A */	fadds f5, f0, f30
/* 813867D8 | FC 05 20 40 */	fcmpo cr0, f5, f4
/* 813867DC | 40 80 00 30 */	bge .L_8138680C
/* 813867E0 | C0 61 00 30 */	lfs f3, 0x30(r1)
/* 813867E4 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 813867E8 | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 813867EC | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 813867F0 | EC 43 10 28 */	fsubs f2, f3, f2
/* 813867F4 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813867F8 | EC 00 10 24 */	fdivs f0, f0, f2
/* 813867FC | EC A5 00 32 */	fmuls f5, f5, f0
/* 81386800 | FC 00 28 50 */	fneg f0, f5
/* 81386804 | D0 1F 02 9C */	stfs f0, 0x29c(r31)
/* 81386808 | 48 00 00 84 */	b .L_8138688C
.L_8138680C:
/* 8138680C | C0 61 00 30 */	lfs f3, 0x30(r1)
/* 81386810 | 3C 00 43 30 */	lis r0, 0x4330
/* 81386814 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 81386818 | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8138681C | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 81386820 | EC 43 10 28 */	fsubs f2, f3, f2
/* 81386824 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 81386828 | EC 01 00 28 */	fsubs f0, f1, f0
/* 8138682C | 90 01 00 48 */	stw r0, 0x48(r1)
/* 81386830 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 81386834 | C8 22 83 D0 */	lfd f1, lbl_816947D0@sda21(r0)
/* 81386838 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 8138683C | EC 40 10 24 */	fdivs f2, f0, f2
/* 81386840 | C8 01 00 48 */	lfd f0, 0x48(r1)
/* 81386844 | EC 64 00 B2 */	fmuls f3, f4, f2
/* 81386848 | EC 40 08 28 */	fsubs f2, f0, f1
/* 8138684C | FC 00 18 50 */	fneg f0, f3
/* 81386850 | D0 61 00 10 */	stfs f3, 0x10(r1)
/* 81386854 | D0 1F 02 9C */	stfs f0, 0x29c(r31)
/* 81386858 | FC 00 00 18 */	frsp f0, f0
/* 8138685C | C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 81386860 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 81386864 | C0 81 00 20 */	lfs f4, 0x20(r1)
/* 81386868 | C0 61 00 18 */	lfs f3, 0x18(r1)
/* 8138686C | EC A5 08 28 */	fsubs f5, f5, f1
/* 81386870 | C0 2D AB 10 */	lfs f1, lbl_81698B50@sda21(r0)
/* 81386874 | EC 64 18 28 */	fsubs f3, f4, f3
/* 81386878 | EC 42 00 72 */	fmuls f2, f2, f1
/* 8138687C | EC 23 28 24 */	fdivs f1, f3, f5
/* 81386880 | EC 22 00 72 */	fmuls f1, f2, f1
/* 81386884 | EC 00 08 2A */	fadds f0, f0, f1
/* 81386888 | D0 1F 02 9C */	stfs f0, 0x29c(r31)
.L_8138688C:
/* 8138688C | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 81386890 | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 81386894 | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 81386898 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8138689C | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 813868A0 | 48 27 2C 6D */	bl _restgpr_27
/* 813868A4 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813868A8 | 7C 08 03 A6 */	mtlr r0
/* 813868AC | 38 21 00 90 */	addi r1, r1, 0x90
/* 813868B0 | 4E 80 00 20 */	blr
.endfn movePane_onDrag__Q33ipl5scene7AddressFv

# .text:0x5254 | 0x813868B4 | size: 0xC
# ipl::scene::Address::MiiObj::MiiObj()
.fn __ct__Q43ipl5scene7Address6MiiObjFv, global
/* 813868B4 | 38 00 00 00 */	li r0, 0x0
/* 813868B8 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 813868BC | 4E 80 00 20 */	blr
.endfn __ct__Q43ipl5scene7Address6MiiObjFv

# .text:0x5260 | 0x813868C0 | size: 0x64
# ipl::scene::Address::MiiObj::~MiiObj()
.fn __dt__Q43ipl5scene7Address6MiiObjFv, global
/* 813868C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813868C4 | 7C 08 02 A6 */	mflr r0
/* 813868C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813868CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813868D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813868D4 | 7C 9F 23 78 */	mr r31, r4
/* 813868D8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813868DC | 7C 7E 1B 78 */	mr r30, r3
/* 813868E0 | 41 82 00 28 */	beq .L_81386908
/* 813868E4 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 813868E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813868EC | 41 82 00 0C */	beq .L_813868F8
/* 813868F0 | 38 80 00 01 */	li r4, 0x1
/* 813868F4 | 4B FB 86 1D */	bl __dt__Q33ipl6nigaoe6ObjectFv
.L_813868F8:
/* 813868F8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813868FC | 40 81 00 0C */	ble .L_81386908
/* 81386900 | 7F C3 F3 78 */	mr r3, r30
/* 81386904 | 48 27 17 E1 */	bl __dl__FPv
.L_81386908:
/* 81386908 | 7F C3 F3 78 */	mr r3, r30
/* 8138690C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81386910 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81386914 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81386918 | 7C 08 03 A6 */	mtlr r0
/* 8138691C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81386920 | 4E 80 00 20 */	blr
.endfn __dt__Q43ipl5scene7Address6MiiObjFv

# .text:0x52C4 | 0x81386924 | size: 0x4C
# ipl::scene::Address::MiiObj::init(nw4r::lyt::Pane*)
.fn init__Q43ipl5scene7Address6MiiObjFPQ34nw4r3lyt4Pane, global
/* 81386924 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81386928 | 7C 08 02 A6 */	mflr r0
/* 8138692C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81386930 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81386934 | 7C 7F 1B 78 */	mr r31, r3
/* 81386938 | 7C 83 23 78 */	mr r3, r4
/* 8138693C | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 81386940 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81386944 | 7D 89 03 A6 */	mtctr r12
/* 81386948 | 4E 80 04 21 */	bctrl
/* 8138694C | 90 7F 00 24 */	stw r3, 0x24(r31)
/* 81386950 | 7F E4 FB 78 */	mr r4, r31
/* 81386954 | 38 A0 00 00 */	li r5, 0x0
/* 81386958 | 48 1A 13 D5 */	bl fn_81527D2C
/* 8138695C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81386960 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81386964 | 7C 08 03 A6 */	mtlr r0
/* 81386968 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138696C | 4E 80 00 20 */	blr
.endfn init__Q43ipl5scene7Address6MiiObjFPQ34nw4r3lyt4Pane

# .text:0x5310 | 0x81386970 | size: 0x8C
# ipl::scene::Address::MiiObj::set(unsigned long long)
.fn set__Q43ipl5scene7Address6MiiObjFUx, global
/* 81386970 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81386974 | 7C 08 02 A6 */	mflr r0
/* 81386978 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8138697C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81386980 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81386984 | 7C 7F 1B 78 */	mr r31, r3
/* 81386988 | 38 61 00 12 */	addi r3, r1, 0x12
/* 8138698C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81386990 | 38 A0 00 08 */	li r5, 0x8
/* 81386994 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 81386998 | 4B FA 98 99 */	bl memcpy
/* 8138699C | 38 61 00 12 */	addi r3, r1, 0x12
/* 813869A0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813869A4 | 48 15 FB 2D */	bl RFLSearchOfficialData
/* 813869A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813869AC | 41 82 00 34 */	beq .L_813869E0
/* 813869B0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813869B4 | 3D 00 81 38 */	lis r8, create_callback__Q43ipl5scene7Address6MiiObjFPQ33ipl6nigaoe6ObjectPv@ha
/* 813869B8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813869BC | A8 E1 00 10 */	lha r7, 0x10(r1)
/* 813869C0 | 80 64 00 70 */	lwz r3, 0x70(r4)
/* 813869C4 | 7F E9 FB 78 */	mr r9, r31
/* 813869C8 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813869CC | 39 08 6A 54 */	addi r8, r8, create_callback__Q43ipl5scene7Address6MiiObjFPQ33ipl6nigaoe6ObjectPv@l
/* 813869D0 | 38 A0 00 4C */	li r5, 0x4c
/* 813869D4 | 38 C0 00 4C */	li r6, 0x4c
/* 813869D8 | 4B FB 80 BD */	bl create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv
/* 813869DC | 48 00 00 0C */	b .L_813869E8
.L_813869E0:
/* 813869E0 | 7F E3 FB 78 */	mr r3, r31
/* 813869E4 | 48 00 00 19 */	bl reset__Q43ipl5scene7Address6MiiObjFv
.L_813869E8:
/* 813869E8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813869EC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813869F0 | 7C 08 03 A6 */	mtlr r0
/* 813869F4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813869F8 | 4E 80 00 20 */	blr
.endfn set__Q43ipl5scene7Address6MiiObjFUx

# .text:0x539C | 0x813869FC | size: 0x58
# ipl::scene::Address::MiiObj::reset()
.fn reset__Q43ipl5scene7Address6MiiObjFv, global
/* 813869FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81386A00 | 7C 08 02 A6 */	mflr r0
/* 81386A04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81386A08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81386A0C | 7C 7F 1B 78 */	mr r31, r3
/* 81386A10 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81386A14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386A18 | 41 82 00 28 */	beq .L_81386A40
/* 81386A1C | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81386A20 | 7F E5 FB 78 */	mr r5, r31
/* 81386A24 | 38 80 00 00 */	li r4, 0x0
/* 81386A28 | 48 1A 13 F5 */	bl fn_81527E1C
/* 81386A2C | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 81386A30 | 38 80 00 01 */	li r4, 0x1
/* 81386A34 | 4B FB 84 DD */	bl __dt__Q33ipl6nigaoe6ObjectFv
/* 81386A38 | 38 00 00 00 */	li r0, 0x0
/* 81386A3C | 90 1F 00 20 */	stw r0, 0x20(r31)
.L_81386A40:
/* 81386A40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81386A44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81386A48 | 7C 08 03 A6 */	mtlr r0
/* 81386A4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81386A50 | 4E 80 00 20 */	blr
.endfn reset__Q43ipl5scene7Address6MiiObjFv

# .text:0x53F4 | 0x81386A54 | size: 0x60
# ipl::scene::Address::MiiObj::create_callback(ipl::nigaoe::Object*, void*)
.fn create_callback__Q43ipl5scene7Address6MiiObjFPQ33ipl6nigaoe6ObjectPv, global
/* 81386A54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81386A58 | 7C 08 02 A6 */	mflr r0
/* 81386A5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81386A60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81386A64 | 7C 9F 23 78 */	mr r31, r4
/* 81386A68 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81386A6C | 7C 7E 1B 78 */	mr r30, r3
/* 81386A70 | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 81386A74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386A78 | 41 82 00 10 */	beq .L_81386A88
/* 81386A7C | 7C 03 03 78 */	mr r3, r0
/* 81386A80 | 38 80 00 01 */	li r4, 0x1
/* 81386A84 | 4B FB 84 8D */	bl __dt__Q33ipl6nigaoe6ObjectFv
.L_81386A88:
/* 81386A88 | 93 DF 00 20 */	stw r30, 0x20(r31)
/* 81386A8C | 38 BE 00 18 */	addi r5, r30, 0x18
/* 81386A90 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81386A94 | 38 80 00 00 */	li r4, 0x0
/* 81386A98 | 48 1A 13 85 */	bl fn_81527E1C
/* 81386A9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81386AA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81386AA4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81386AA8 | 7C 08 03 A6 */	mtlr r0
/* 81386AAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81386AB0 | 4E 80 00 20 */	blr
.endfn create_callback__Q43ipl5scene7Address6MiiObjFPQ33ipl6nigaoe6ObjectPv

# .text:0x5454 | 0x81386AB4 | size: 0x284
# ipl::scene::AddressEvent::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene12AddressEventFUlUlPv, global
/* 81386AB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81386AB8 | 7C 08 02 A6 */	mflr r0
/* 81386ABC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81386AC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81386AC4 | 48 27 2A 01 */	bl _savegpr_28
/* 81386AC8 | 7C 7D 1B 78 */	mr r29, r3
/* 81386ACC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81386AD0 | 7C BC 2B 78 */	mr r28, r5
/* 81386AD4 | 7C DE 33 78 */	mr r30, r6
/* 81386AD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81386ADC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81386AE0 | 7D 89 03 A6 */	mtctr r12
/* 81386AE4 | 4E 80 04 21 */	bctrl
/* 81386AE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81386AEC | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81386AF0 | 7D 89 03 A6 */	mtctr r12
/* 81386AF4 | 4E 80 04 21 */	bctrl
/* 81386AF8 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 81386AFC | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 81386B00 | 41 82 02 20 */	beq .L_81386D20
/* 81386B04 | 40 80 00 1C */	bge .L_81386B20
/* 81386B08 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 81386B0C | 41 82 00 24 */	beq .L_81386B30
/* 81386B10 | 40 80 00 B4 */	bge .L_81386BC4
/* 81386B14 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81386B18 | 40 80 01 4C */	bge .L_81386C64
/* 81386B1C | 48 00 02 04 */	b .L_81386D20
.L_81386B20:
/* 81386B20 | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 81386B24 | 41 82 01 A0 */	beq .L_81386CC4
/* 81386B28 | 40 80 01 F8 */	bge .L_81386D20
/* 81386B2C | 48 00 00 E8 */	b .L_81386C14
.L_81386B30:
/* 81386B30 | 2C 9E 00 00 */	cmpwi cr1, r30, 0x0
/* 81386B34 | 41 86 01 EC */	beq cr1, .L_81386D20
/* 81386B38 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81386B3C | 88 04 00 84 */	lbz r0, 0x84(r4)
/* 81386B40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386B44 | 41 82 00 38 */	beq .L_81386B7C
/* 81386B48 | 41 86 00 20 */	beq cr1, .L_81386B68
/* 81386B4C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81386B50 | 80 84 00 6C */	lwz r4, 0x6c(r4)
/* 81386B54 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81386B58 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81386B5C | 4B FB 0D 2D */	bl getController__Q33ipl10controller7ManagerFi
/* 81386B60 | 7C 1E 18 40 */	cmplw r30, r3
/* 81386B64 | 40 82 01 BC */	bne .L_81386D20
.L_81386B68:
/* 81386B68 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81386B6C | 7F E4 FB 78 */	mr r4, r31
/* 81386B70 | 7F C5 F3 78 */	mr r5, r30
/* 81386B74 | 4B FF E1 59 */	bl start_drag_point_event__Q33ipl5scene7AddressFPCcPQ33ipl10controller9Interface
/* 81386B78 | 48 00 01 A8 */	b .L_81386D20
.L_81386B7C:
/* 81386B7C | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81386B80 | 2C 00 00 42 */	cmpwi r0, 0x42
/* 81386B84 | 40 82 00 2C */	bne .L_81386BB0
/* 81386B88 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81386B8C | 7F C3 F3 78 */	mr r3, r30
/* 81386B90 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81386B94 | 7D 89 03 A6 */	mtctr r12
/* 81386B98 | 4E 80 04 21 */	bctrl
/* 81386B9C | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 81386BA0 | 7C 00 18 00 */	cmpw r0, r3
/* 81386BA4 | 40 82 00 0C */	bne .L_81386BB0
/* 81386BA8 | 38 00 FF FF */	li r0, -0x1
/* 81386BAC | 90 1D 00 10 */	stw r0, 0x10(r29)
.L_81386BB0:
/* 81386BB0 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81386BB4 | 7F E4 FB 78 */	mr r4, r31
/* 81386BB8 | 7F C5 F3 78 */	mr r5, r30
/* 81386BBC | 4B FF D9 65 */	bl start_point_event__Q33ipl5scene7AddressFPCcPQ33ipl10controller9Interface
/* 81386BC0 | 48 00 01 60 */	b .L_81386D20
.L_81386BC4:
/* 81386BC4 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81386BC8 | 88 03 00 84 */	lbz r0, 0x84(r3)
/* 81386BCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386BD0 | 41 82 00 38 */	beq .L_81386C08
/* 81386BD4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81386BD8 | 41 82 00 20 */	beq .L_81386BF8
/* 81386BDC | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81386BE0 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 81386BE4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81386BE8 | 80 65 00 68 */	lwz r3, 0x68(r5)
/* 81386BEC | 4B FB 0C 9D */	bl getController__Q33ipl10controller7ManagerFi
/* 81386BF0 | 7C 1E 18 40 */	cmplw r30, r3
/* 81386BF4 | 40 82 01 2C */	bne .L_81386D20
.L_81386BF8:
/* 81386BF8 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81386BFC | 7F E4 FB 78 */	mr r4, r31
/* 81386C00 | 4B FF E1 41 */	bl start_drag_left_event__Q33ipl5scene7AddressFPCc
/* 81386C04 | 48 00 01 1C */	b .L_81386D20
.L_81386C08:
/* 81386C08 | 7F E4 FB 78 */	mr r4, r31
/* 81386C0C | 4B FF D9 99 */	bl start_left_event__Q33ipl5scene7AddressFPCc
/* 81386C10 | 48 00 01 10 */	b .L_81386D20
.L_81386C14:
/* 81386C14 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81386C18 | 80 03 00 AC */	lwz r0, 0xac(r3)
/* 81386C1C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81386C20 | 40 82 01 00 */	bne .L_81386D20
/* 81386C24 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81386C28 | 41 82 00 F8 */	beq .L_81386D20
/* 81386C2C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81386C30 | 7F C3 F3 78 */	mr r3, r30
/* 81386C34 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81386C38 | 7D 89 03 A6 */	mtctr r12
/* 81386C3C | 4E 80 04 21 */	bctrl
/* 81386C40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386C44 | 41 82 00 DC */	beq .L_81386D20
/* 81386C48 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 81386C4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386C50 | 41 80 00 D0 */	blt .L_81386D20
/* 81386C54 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81386C58 | 7F E4 FB 78 */	mr r4, r31
/* 81386C5C | 4B FF D9 C5 */	bl start_trig_event__Q33ipl5scene7AddressFPCc
/* 81386C60 | 48 00 00 C0 */	b .L_81386D20
.L_81386C64:
/* 81386C64 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81386C68 | 80 03 00 AC */	lwz r0, 0xac(r3)
/* 81386C6C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81386C70 | 40 82 00 B0 */	bne .L_81386D20
/* 81386C74 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81386C78 | 41 82 00 A8 */	beq .L_81386D20
/* 81386C7C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81386C80 | 7F C3 F3 78 */	mr r3, r30
/* 81386C84 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81386C88 | 7D 89 03 A6 */	mtctr r12
/* 81386C8C | 4E 80 04 21 */	bctrl
/* 81386C90 | 90 7D 00 10 */	stw r3, 0x10(r29)
/* 81386C94 | 7F C3 F3 78 */	mr r3, r30
/* 81386C98 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81386C9C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81386CA0 | 7D 89 03 A6 */	mtctr r12
/* 81386CA4 | 4E 80 04 21 */	bctrl
/* 81386CA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386CAC | 41 82 00 74 */	beq .L_81386D20
/* 81386CB0 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81386CB4 | 7F E4 FB 78 */	mr r4, r31
/* 81386CB8 | 7F C5 F3 78 */	mr r5, r30
/* 81386CBC | 4B FF DC 95 */	bl start_drag_event__Q33ipl5scene7AddressFPCcPCQ33ipl10controller9Interface
/* 81386CC0 | 48 00 00 60 */	b .L_81386D20
.L_81386CC4:
/* 81386CC4 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81386CC8 | 88 04 00 84 */	lbz r0, 0x84(r4)
/* 81386CCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386CD0 | 41 82 00 50 */	beq .L_81386D20
/* 81386CD4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81386CD8 | 41 82 00 20 */	beq .L_81386CF8
/* 81386CDC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81386CE0 | 80 84 00 6C */	lwz r4, 0x6c(r4)
/* 81386CE4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81386CE8 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 81386CEC | 4B FB 0B 9D */	bl getController__Q33ipl10controller7ManagerFi
/* 81386CF0 | 7C 1E 18 40 */	cmplw r30, r3
/* 81386CF4 | 40 82 00 2C */	bne .L_81386D20
.L_81386CF8:
/* 81386CF8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81386CFC | 7F C3 F3 78 */	mr r3, r30
/* 81386D00 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81386D04 | 7D 89 03 A6 */	mtctr r12
/* 81386D08 | 4E 80 04 21 */	bctrl
/* 81386D0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386D10 | 40 82 00 10 */	bne .L_81386D20
/* 81386D14 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81386D18 | 7F E4 FB 78 */	mr r4, r31
/* 81386D1C | 4B FF E0 6D */	bl start_release_event__Q33ipl5scene7AddressFPCc
.L_81386D20:
/* 81386D20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81386D24 | 48 27 27 ED */	bl _restgpr_28
/* 81386D28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81386D2C | 7C 08 03 A6 */	mtlr r0
/* 81386D30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81386D34 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene12AddressEventFUlUlPv

# .text:0x56D8 | 0x81386D38 | size: 0xE8
# ipl::scene::FriendListCache::init()
.fn init__Q33ipl5scene15FriendListCacheFv, global
/* 81386D38 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81386D3C | 7C 08 02 A6 */	mflr r0
/* 81386D40 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81386D44 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81386D48 | 48 27 27 79 */	bl _savegpr_27
/* 81386D4C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81386D50 | 7C 7B 1B 78 */	mr r27, r3
/* 81386D54 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81386D58 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81386D5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386D60 | 41 82 00 0C */	beq .L_81386D6C
/* 81386D64 | 3B A0 00 00 */	li r29, 0x0
/* 81386D68 | 48 00 00 08 */	b .L_81386D70
.L_81386D6C:
/* 81386D6C | 83 A4 00 8C */	lwz r29, 0x8c(r4)
.L_81386D70:
/* 81386D70 | 7F A3 EB 78 */	mr r3, r29
/* 81386D74 | 4B FB AC CD */	bl open__Q33ipl5nwc247ManagerFv
/* 81386D78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81386D7C | 40 82 00 0C */	bne .L_81386D88
/* 81386D80 | 38 60 00 00 */	li r3, 0x0
/* 81386D84 | 48 00 00 84 */	b .L_81386E08
.L_81386D88:
/* 81386D88 | 7F A3 EB 78 */	mr r3, r29
/* 81386D8C | 38 9B 7D 68 */	addi r4, r27, 0x7d68
/* 81386D90 | 4B FB B0 11 */	bl getMyUserId__Q33ipl5nwc247ManagerFPUx
/* 81386D94 | 7F A3 EB 78 */	mr r3, r29
/* 81386D98 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81386D9C | 4B FB B2 C1 */	bl getNumFriendInfos__Q33ipl5nwc247ManagerFPUl
/* 81386DA0 | 7F A3 EB 78 */	mr r3, r29
/* 81386DA4 | 38 9B 7D 70 */	addi r4, r27, 0x7d70
/* 81386DA8 | 4B FB B2 75 */	bl getNumRegFriendInfos__Q33ipl5nwc247ManagerFPUl
/* 81386DAC | 3B 80 00 00 */	li r28, 0x0
/* 81386DB0 | 3B E0 00 00 */	li r31, 0x0
.L_81386DB4:
/* 81386DB4 | 7F A3 EB 78 */	mr r3, r29
/* 81386DB8 | 7F 84 E3 78 */	mr r4, r28
/* 81386DBC | 7F DB E2 14 */	add r30, r27, r28
/* 81386DC0 | 4B FB B0 21 */	bl isFriendInfoThere__Q33ipl5nwc247ManagerFUl
/* 81386DC4 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 81386DC8 | 98 7E 7D 00 */	stb r3, 0x7d00(r30)
/* 81386DCC | 41 82 00 14 */	beq .L_81386DE0
/* 81386DD0 | 7F A3 EB 78 */	mr r3, r29
/* 81386DD4 | 7F 85 E3 78 */	mr r5, r28
/* 81386DD8 | 7C 9B FA 14 */	add r4, r27, r31
/* 81386DDC | 4B FB B0 F1 */	bl readFriendInfo__Q33ipl5nwc247ManagerFP15NWC24FriendInfoUl
.L_81386DE0:
/* 81386DE0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81386DE4 | 3B FF 01 40 */	addi r31, r31, 0x140
/* 81386DE8 | 28 1C 00 64 */	cmplwi r28, 0x64
/* 81386DEC | 41 80 FF C8 */	blt .L_81386DB4
/* 81386DF0 | 3C 9B 00 01 */	addis r4, r27, 0x1
/* 81386DF4 | 38 60 00 00 */	li r3, 0x0
/* 81386DF8 | 38 00 00 01 */	li r0, 0x1
/* 81386DFC | 90 64 9D 74 */	stw r3, -0x628c(r4)
/* 81386E00 | 38 60 00 01 */	li r3, 0x1
/* 81386E04 | 98 04 9D 78 */	stb r0, -0x6288(r4)
.L_81386E08:
/* 81386E08 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81386E0C | 48 27 27 01 */	bl _restgpr_27
/* 81386E10 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81386E14 | 7C 08 03 A6 */	mtlr r0
/* 81386E18 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81386E1C | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene15FriendListCacheFv

# .text:0x57C0 | 0x81386E20 | size: 0x38
# ipl::scene::FriendListCache::fin()
.fn fin__Q33ipl5scene15FriendListCacheFv, global
/* 81386E20 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81386E24 | 88 03 9D 78 */	lbz r0, -0x6288(r3)
/* 81386E28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386E2C | 4D 82 00 20 */	beqlr
/* 81386E30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81386E34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81386E38 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81386E3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386E40 | 41 82 00 0C */	beq .L_81386E4C
/* 81386E44 | 38 60 00 00 */	li r3, 0x0
/* 81386E48 | 48 00 00 08 */	b .L_81386E50
.L_81386E4C:
/* 81386E4C | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81386E50:
/* 81386E50 | 4B FB AC 64 */	b close__Q33ipl5nwc247ManagerFv
/* 81386E54 | 4E 80 00 20 */	blr
.endfn fin__Q33ipl5scene15FriendListCacheFv

# .text:0x57F8 | 0x81386E58 | size: 0x8C
# ipl::scene::FriendListCache::add(unsigned long, const NWC24FriendInfo&)
.fn add__Q33ipl5scene15FriendListCacheFUlRC15NWC24FriendInfo, global
/* 81386E58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81386E5C | 7C 08 02 A6 */	mflr r0
/* 81386E60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81386E64 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81386E68 | 48 27 26 61 */	bl _savegpr_29
/* 81386E6C | 7C 9E 23 78 */	mr r30, r4
/* 81386E70 | 7C A4 2B 78 */	mr r4, r5
/* 81386E74 | 1F FE 01 40 */	mulli r31, r30, 0x140
/* 81386E78 | 7C 7D 1B 78 */	mr r29, r3
/* 81386E7C | 38 A0 01 40 */	li r5, 0x140
/* 81386E80 | 7C 63 FA 14 */	add r3, r3, r31
/* 81386E84 | 4B FA 93 AD */	bl memcpy
/* 81386E88 | 7C 7D F2 14 */	add r3, r29, r30
/* 81386E8C | 38 00 00 01 */	li r0, 0x1
/* 81386E90 | 98 03 7D 00 */	stb r0, 0x7d00(r3)
/* 81386E94 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81386E98 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81386E9C | 80 9D 7D 70 */	lwz r4, 0x7d70(r29)
/* 81386EA0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81386EA4 | 90 1D 7D 70 */	stw r0, 0x7d70(r29)
/* 81386EA8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81386EAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386EB0 | 41 82 00 0C */	beq .L_81386EBC
/* 81386EB4 | 38 60 00 00 */	li r3, 0x0
/* 81386EB8 | 48 00 00 08 */	b .L_81386EC0
.L_81386EBC:
/* 81386EBC | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81386EC0:
/* 81386EC0 | 7F C5 F3 78 */	mr r5, r30
/* 81386EC4 | 7C 9D FA 14 */	add r4, r29, r31
/* 81386EC8 | 4B FB B0 49 */	bl writeFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl
/* 81386ECC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81386ED0 | 48 27 26 45 */	bl _restgpr_29
/* 81386ED4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81386ED8 | 7C 08 03 A6 */	mtlr r0
/* 81386EDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81386EE0 | 4E 80 00 20 */	blr
.endfn add__Q33ipl5scene15FriendListCacheFUlRC15NWC24FriendInfo

# .text:0x5884 | 0x81386EE4 | size: 0xA0
# ipl::scene::FriendListCache::update(unsigned long, const wchar_t*, unsigned long long)
.fn update__Q33ipl5scene15FriendListCacheFUlPCwUx, global
/* 81386EE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81386EE8 | 7C 08 02 A6 */	mflr r0
/* 81386EEC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81386EF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81386EF4 | 48 27 25 D5 */	bl _savegpr_29
/* 81386EF8 | 1C 04 01 40 */	mulli r0, r4, 0x140
/* 81386EFC | 7C 7D 1B 78 */	mr r29, r3
/* 81386F00 | 7C 9E 23 78 */	mr r30, r4
/* 81386F04 | 7C BF 2B 78 */	mr r31, r5
/* 81386F08 | 7C 63 02 14 */	add r3, r3, r0
/* 81386F0C | 38 80 00 00 */	li r4, 0x0
/* 81386F10 | 91 03 00 24 */	stw r8, 0x24(r3)
/* 81386F14 | 38 A0 00 18 */	li r5, 0x18
/* 81386F18 | 90 E3 00 20 */	stw r7, 0x20(r3)
/* 81386F1C | 38 63 00 08 */	addi r3, r3, 0x8
/* 81386F20 | 4B FA 94 15 */	bl memset
/* 81386F24 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 81386F28 | 7F E4 FB 78 */	mr r4, r31
/* 81386F2C | 38 A0 00 0A */	li r5, 0xa
/* 81386F30 | 7C 7D 02 14 */	add r3, r29, r0
/* 81386F34 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81386F38 | 48 28 17 AD */	bl fn_816086E4
/* 81386F3C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81386F40 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81386F44 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81386F48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386F4C | 41 82 00 0C */	beq .L_81386F58
/* 81386F50 | 38 60 00 00 */	li r3, 0x0
/* 81386F54 | 48 00 00 08 */	b .L_81386F5C
.L_81386F58:
/* 81386F58 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81386F5C:
/* 81386F5C | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 81386F60 | 7F C5 F3 78 */	mr r5, r30
/* 81386F64 | 7C 9D 02 14 */	add r4, r29, r0
/* 81386F68 | 4B FB AF ED */	bl updateFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl
/* 81386F6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81386F70 | 48 27 25 A5 */	bl _restgpr_29
/* 81386F74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81386F78 | 7C 08 03 A6 */	mtlr r0
/* 81386F7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81386F80 | 4E 80 00 20 */	blr
.endfn update__Q33ipl5scene15FriendListCacheFUlPCwUx

# .text:0x5924 | 0x81386F84 | size: 0x3C
# ipl::scene::FriendListCache::del(unsigned long)
.fn del__Q33ipl5scene15FriendListCacheFUl, global
/* 81386F84 | 7C A3 22 14 */	add r5, r3, r4
/* 81386F88 | 38 00 00 00 */	li r0, 0x0
/* 81386F8C | 98 05 7D 00 */	stb r0, 0x7d00(r5)
/* 81386F90 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81386F94 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81386F98 | 80 C3 7D 70 */	lwz r6, 0x7d70(r3)
/* 81386F9C | 38 06 FF FF */	subi r0, r6, 0x1
/* 81386FA0 | 90 03 7D 70 */	stw r0, 0x7d70(r3)
/* 81386FA4 | 88 05 02 BC */	lbz r0, 0x2bc(r5)
/* 81386FA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81386FAC | 41 82 00 0C */	beq .L_81386FB8
/* 81386FB0 | 38 60 00 00 */	li r3, 0x0
/* 81386FB4 | 48 00 00 08 */	b .L_81386FBC
.L_81386FB8:
/* 81386FB8 | 80 65 00 8C */	lwz r3, 0x8c(r5)
.L_81386FBC:
/* 81386FBC | 4B FB AF DC */	b deleteFriendInfo__Q33ipl5nwc247ManagerFUl
.endfn del__Q33ipl5scene15FriendListCacheFUl

# .text:0x5960 | 0x81386FC0 | size: 0xCC
# ipl::scene::FriendListCache::swap(unsigned long, unsigned long)
.fn swap__Q33ipl5scene15FriendListCacheFUlUl, global
/* 81386FC0 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81386FC4 | 7C 2C 0B 78 */	mr r12, r1
/* 81386FC8 | 21 6B FE 80 */	subfic r11, r11, -0x180
/* 81386FCC | 7C 21 59 6E */	stwux r1, r1, r11
/* 81386FD0 | 7C 08 02 A6 */	mflr r0
/* 81386FD4 | 7D 8B 63 78 */	mr r11, r12
/* 81386FD8 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81386FDC | 48 27 24 ED */	bl _savegpr_29
/* 81386FE0 | 1C 04 01 40 */	mulli r0, r4, 0x140
/* 81386FE4 | 7C 7D 1B 78 */	mr r29, r3
/* 81386FE8 | 7C 9E 23 78 */	mr r30, r4
/* 81386FEC | 7C BF 2B 78 */	mr r31, r5
/* 81386FF0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81386FF4 | 38 A0 01 40 */	li r5, 0x140
/* 81386FF8 | 7C 9D 02 14 */	add r4, r29, r0
/* 81386FFC | 4B FA 92 35 */	bl memcpy
/* 81387000 | 1C 7E 01 40 */	mulli r3, r30, 0x140
/* 81387004 | 38 A0 01 40 */	li r5, 0x140
/* 81387008 | 1C 1F 01 40 */	mulli r0, r31, 0x140
/* 8138700C | 7C 7D 1A 14 */	add r3, r29, r3
/* 81387010 | 7C 9D 02 14 */	add r4, r29, r0
/* 81387014 | 4B FA 92 1D */	bl memcpy
/* 81387018 | 1C 1F 01 40 */	mulli r0, r31, 0x140
/* 8138701C | 38 81 00 20 */	addi r4, r1, 0x20
/* 81387020 | 38 A0 01 40 */	li r5, 0x140
/* 81387024 | 7C 7D 02 14 */	add r3, r29, r0
/* 81387028 | 4B FA 92 09 */	bl memcpy
/* 8138702C | 7C BD F2 14 */	add r5, r29, r30
/* 81387030 | 7C 9D FA 14 */	add r4, r29, r31
/* 81387034 | 88 C5 7D 00 */	lbz r6, 0x7d00(r5)
/* 81387038 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138703C | 88 04 7D 00 */	lbz r0, 0x7d00(r4)
/* 81387040 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81387044 | 98 05 7D 00 */	stb r0, 0x7d00(r5)
/* 81387048 | 98 C4 7D 00 */	stb r6, 0x7d00(r4)
/* 8138704C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81387050 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81387054 | 41 82 00 0C */	beq .L_81387060
/* 81387058 | 38 60 00 00 */	li r3, 0x0
/* 8138705C | 48 00 00 08 */	b .L_81387064
.L_81387060:
/* 81387060 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81387064:
/* 81387064 | 7F C4 F3 78 */	mr r4, r30
/* 81387068 | 7F E5 FB 78 */	mr r5, r31
/* 8138706C | 4B FB AF 6D */	bl swapFriendInfo__Q33ipl5nwc247ManagerFUlUl
/* 81387070 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81387074 | 7D 4B 53 78 */	mr r11, r10
/* 81387078 | 48 27 24 9D */	bl _restgpr_29
/* 8138707C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81387080 | 7C 08 03 A6 */	mtlr r0
/* 81387084 | 7D 41 53 78 */	mr r1, r10
/* 81387088 | 4E 80 00 20 */	blr
.endfn swap__Q33ipl5scene15FriendListCacheFUlUl

# .text:0x5A2C | 0x8138708C | size: 0x2C
# ipl::scene::FriendListCache::isValidId(const unsigned long long&)
.fn isValidId__Q33ipl5scene15FriendListCacheFRCUx, global
/* 8138708C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81387090 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81387094 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81387098 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138709C | 41 82 00 0C */	beq .L_813870A8
/* 813870A0 | 38 60 00 00 */	li r3, 0x0
/* 813870A4 | 48 00 00 08 */	b .L_813870AC
.L_813870A8:
/* 813870A8 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813870AC:
/* 813870AC | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 813870B0 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 813870B4 | 4B FB AF E8 */	b checkUserId__Q33ipl5nwc247ManagerFUx
.endfn isValidId__Q33ipl5scene15FriendListCacheFRCUx

# .text:0x5A58 | 0x813870B8 | size: 0x6C
# ipl::scene::FriendListCache::isDupId(const unsigned long long&)
.fn isDupId__Q33ipl5scene15FriendListCacheFRCUx, global
/* 813870B8 | 38 00 00 64 */	li r0, 0x64
/* 813870BC | 39 20 00 00 */	li r9, 0x0
/* 813870C0 | 38 A0 00 00 */	li r5, 0x0
/* 813870C4 | 7C 09 03 A6 */	mtctr r0
.L_813870C8:
/* 813870C8 | 7C C3 4A 14 */	add r6, r3, r9
/* 813870CC | 88 06 7D 00 */	lbz r0, 0x7d00(r6)
/* 813870D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813870D4 | 41 82 00 3C */	beq .L_81387110
/* 813870D8 | 7C 03 28 2E */	lwzx r0, r3, r5
/* 813870DC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813870E0 | 40 82 00 30 */	bne .L_81387110
/* 813870E4 | 7C C3 2A 14 */	add r6, r3, r5
/* 813870E8 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 813870EC | 80 06 00 40 */	lwz r0, 0x40(r6)
/* 813870F0 | 81 04 00 04 */	lwz r8, 0x4(r4)
/* 813870F4 | 80 C6 00 44 */	lwz r6, 0x44(r6)
/* 813870F8 | 7C E0 02 78 */	xor r0, r7, r0
/* 813870FC | 7D 06 32 78 */	xor r6, r8, r6
/* 81387100 | 7C C0 03 79 */	or. r0, r6, r0
/* 81387104 | 40 82 00 0C */	bne .L_81387110
/* 81387108 | 38 60 00 01 */	li r3, 0x1
/* 8138710C | 4E 80 00 20 */	blr
.L_81387110:
/* 81387110 | 39 29 00 01 */	addi r9, r9, 0x1
/* 81387114 | 38 A5 01 40 */	addi r5, r5, 0x140
/* 81387118 | 42 00 FF B0 */	bdnz .L_813870C8
/* 8138711C | 38 60 00 00 */	li r3, 0x0
/* 81387120 | 4E 80 00 20 */	blr
.endfn isDupId__Q33ipl5scene15FriendListCacheFRCUx

# .text:0x5AC4 | 0x81387124 | size: 0x8C
# ipl::scene::FriendListCache::isDupMail(const char*)
.fn isDupMail__Q33ipl5scene15FriendListCacheFPCc, global
/* 81387124 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81387128 | 7C 08 02 A6 */	mflr r0
/* 8138712C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81387130 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81387134 | 48 27 23 91 */	bl _savegpr_28
/* 81387138 | 7C 7C 1B 78 */	mr r28, r3
/* 8138713C | 7C 9D 23 78 */	mr r29, r4
/* 81387140 | 3B C0 00 00 */	li r30, 0x0
/* 81387144 | 3B E0 00 00 */	li r31, 0x0
.L_81387148:
/* 81387148 | 7C 7C F2 14 */	add r3, r28, r30
/* 8138714C | 88 03 7D 00 */	lbz r0, 0x7d00(r3)
/* 81387150 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81387154 | 41 82 00 30 */	beq .L_81387184
/* 81387158 | 7C 1C F8 2E */	lwzx r0, r28, r31
/* 8138715C | 28 00 00 02 */	cmplwi r0, 0x2
/* 81387160 | 40 82 00 24 */	bne .L_81387184
/* 81387164 | 7C 7C FA 14 */	add r3, r28, r31
/* 81387168 | 7F A4 EB 78 */	mr r4, r29
/* 8138716C | 38 63 00 40 */	addi r3, r3, 0x40
/* 81387170 | 48 27 B3 11 */	bl strcmp
/* 81387174 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81387178 | 40 82 00 0C */	bne .L_81387184
/* 8138717C | 38 60 00 01 */	li r3, 0x1
/* 81387180 | 48 00 00 18 */	b .L_81387198
.L_81387184:
/* 81387184 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81387188 | 3B FF 01 40 */	addi r31, r31, 0x140
/* 8138718C | 2C 1E 00 64 */	cmpwi r30, 0x64
/* 81387190 | 41 80 FF B8 */	blt .L_81387148
/* 81387194 | 38 60 00 00 */	li r3, 0x0
.L_81387198:
/* 81387198 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8138719C | 48 27 23 75 */	bl _restgpr_28
/* 813871A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813871A4 | 7C 08 03 A6 */	mtlr r0
/* 813871A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813871AC | 4E 80 00 20 */	blr
.endfn isDupMail__Q33ipl5scene15FriendListCacheFPCc

# .text:0x5B50 | 0x813871B0 | size: 0x190
# ipl::scene::FriendListCache::sendRegisterMail(unsigned long)
.fn sendRegisterMail__Q33ipl5scene15FriendListCacheFUl, global
/* 813871B0 | 94 21 F6 B0 */	stwu r1, -0x950(r1)
/* 813871B4 | 7C 08 02 A6 */	mflr r0
/* 813871B8 | 90 01 09 54 */	stw r0, 0x954(r1)
/* 813871BC | 39 61 09 50 */	addi r11, r1, 0x950
/* 813871C0 | 48 27 22 FD */	bl _savegpr_26
/* 813871C4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813871C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813871CC | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813871D0 | 88 05 02 BC */	lbz r0, 0x2bc(r5)
/* 813871D4 | 1C 84 01 40 */	mulli r4, r4, 0x140
/* 813871D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813871DC | 7F A3 22 14 */	add r29, r3, r4
/* 813871E0 | 41 82 00 0C */	beq .L_813871EC
/* 813871E4 | 3B 80 00 00 */	li r28, 0x0
/* 813871E8 | 48 00 00 08 */	b .L_813871F0
.L_813871EC:
/* 813871EC | 83 85 00 8C */	lwz r28, 0x8c(r5)
.L_813871F0:
/* 813871F0 | 7F 83 E3 78 */	mr r3, r28
/* 813871F4 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813871F8 | 38 A0 00 04 */	li r5, 0x4
/* 813871FC | 4B FB A9 0D */	bl initMsgObj__Q33ipl5nwc247ManagerFP11NWC24MsgObj12NWC24MsgType
/* 81387200 | 38 7D 00 40 */	addi r3, r29, 0x40
/* 81387204 | 48 27 1C F9 */	bl strlen
/* 81387208 | 7C 66 1B 78 */	mr r6, r3
/* 8138720C | 7F 83 E3 78 */	mr r3, r28
/* 81387210 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81387214 | 38 BD 00 40 */	addi r5, r29, 0x40
/* 81387218 | 4B FB A9 75 */	bl setMsgToAddr__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl
/* 8138721C | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81387220 | 38 80 01 81 */	li r4, 0x181
/* 81387224 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81387228 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 8138722C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81387230 | 4B FB 75 8D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81387234 | 80 BD 00 80 */	lwz r5, 0x80(r29)
/* 81387238 | 7C 7B 1B 78 */	mr r27, r3
/* 8138723C | 38 80 01 82 */	li r4, 0x182
/* 81387240 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 81387244 | 4B FB 75 79 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81387248 | 7C 64 1B 78 */	mr r4, r3
/* 8138724C | 38 61 01 2C */	addi r3, r1, 0x12c
/* 81387250 | 48 28 14 79 */	bl fn_816086C8
/* 81387254 | 3C 60 00 04 */	lis r3, 0x4
/* 81387258 | 3C 80 3C 8B */	lis r4, 0x3c8b
/* 8138725C | 38 03 62 D5 */	addi r0, r3, 0x62d5
/* 81387260 | 80 FF 7D 68 */	lwz r7, 0x7d68(r31)
/* 81387264 | 81 1F 7D 6C */	lwz r8, 0x7d6c(r31)
/* 81387268 | 38 64 BA C0 */	subi r3, r4, 0x4540
/* 8138726C | 7C E0 02 78 */	xor r0, r7, r0
/* 81387270 | 7D 03 1A 78 */	xor r3, r8, r3
/* 81387274 | 7C 60 03 79 */	or. r0, r3, r0
/* 81387278 | 41 82 00 5C */	beq .L_813872D4
/* 8138727C | 3F 40 81 64 */	lis r26, lbl_81647B26@ha
/* 81387280 | 3C A0 81 64 */	lis r5, lbl_81647B48@ha
/* 81387284 | 3B 5A 7B 26 */	addi r26, r26, lbl_81647B26@l
/* 81387288 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8138728C | 38 A5 7B 48 */	addi r5, r5, lbl_81647B48@l
/* 81387290 | 38 80 00 11 */	li r4, 0x11
/* 81387294 | 4C C6 31 82 */	crclr cr1eq
/* 81387298 | 48 28 13 39 */	bl swprintf
/* 8138729C | 3B A1 00 08 */	addi r29, r1, 0x8
/* 813872A0 | 3B C0 00 10 */	li r30, 0x10
/* 813872A4 | 48 00 00 1C */	b .L_813872C0
.L_813872A8:
/* 813872A8 | 38 80 00 00 */	li r4, 0x0
/* 813872AC | 7F C9 03 A6 */	mtctr r30
.L_813872B0:
/* 813872B0 | 7C 1D 22 2E */	lhzx r0, r29, r4
/* 813872B4 | 7C 03 23 2E */	sthx r0, r3, r4
/* 813872B8 | 38 84 00 02 */	addi r4, r4, 0x2
/* 813872BC | 42 00 FF F4 */	bdnz .L_813872B0
.L_813872C0:
/* 813872C0 | 7F 44 D3 78 */	mr r4, r26
/* 813872C4 | 38 61 01 2C */	addi r3, r1, 0x12c
/* 813872C8 | 48 28 15 45 */	bl fn_8160880C
/* 813872CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813872D0 | 40 82 FF D8 */	bne .L_813872A8
.L_813872D4:
/* 813872D4 | 38 7F 7D 74 */	addi r3, r31, 0x7d74
/* 813872D8 | 38 80 00 00 */	li r4, 0x0
/* 813872DC | 38 A0 20 00 */	li r5, 0x2000
/* 813872E0 | 4B FA 90 55 */	bl memset
/* 813872E4 | 38 61 01 2C */	addi r3, r1, 0x12c
/* 813872E8 | 48 28 13 C5 */	bl fn_816086AC
/* 813872EC | 7C 7E 1B 78 */	mr r30, r3
/* 813872F0 | 7F 63 DB 78 */	mr r3, r27
/* 813872F4 | 48 28 13 B9 */	bl fn_816086AC
/* 813872F8 | 7C 66 1B 78 */	mr r6, r3
/* 813872FC | 7F 83 E3 78 */	mr r3, r28
/* 81387300 | 7F 65 DB 78 */	mr r5, r27
/* 81387304 | 7F C8 F3 78 */	mr r8, r30
/* 81387308 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 8138730C | 38 E1 01 2C */	addi r7, r1, 0x12c
/* 81387310 | 39 3F 7D 74 */	addi r9, r31, 0x7d74
/* 81387314 | 39 40 20 00 */	li r10, 0x2000
/* 81387318 | 4B FB A9 0D */	bl setMsgSubjectAndTextPublic__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCUsUlPCUsUlPUcUl
/* 8138731C | 7F 83 E3 78 */	mr r3, r28
/* 81387320 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81387324 | 4B FB AA 3D */	bl commitMsg__Q33ipl5nwc247ManagerFP11NWC24MsgObj
/* 81387328 | 39 61 09 50 */	addi r11, r1, 0x950
/* 8138732C | 48 27 21 DD */	bl _restgpr_26
/* 81387330 | 80 01 09 54 */	lwz r0, 0x954(r1)
/* 81387334 | 7C 08 03 A6 */	mtlr r0
/* 81387338 | 38 21 09 50 */	addi r1, r1, 0x950
/* 8138733C | 4E 80 00 20 */	blr
.endfn sendRegisterMail__Q33ipl5scene15FriendListCacheFUl

# .text:0x5CE0 | 0x81387340 | size: 0x58
# ipl::scene::FriendListCache::check()
.fn check__Q33ipl5scene15FriendListCacheFv, global
/* 81387340 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81387344 | 7C 08 02 A6 */	mflr r0
/* 81387348 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138734C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81387350 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81387354 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81387358 | 7C 7F 1B 78 */	mr r31, r3
/* 8138735C | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81387360 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81387364 | 41 82 00 0C */	beq .L_81387370
/* 81387368 | 38 60 00 00 */	li r3, 0x0
/* 8138736C | 48 00 00 08 */	b .L_81387374
.L_81387370:
/* 81387370 | 80 64 00 8C */	lwz r3, 0x8c(r4)
.L_81387374:
/* 81387374 | 38 80 00 01 */	li r4, 0x1
/* 81387378 | 4B FB B2 A9 */	bl check__Q33ipl5nwc247ManagerFUl
/* 8138737C | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 81387380 | 90 64 9D 74 */	stw r3, -0x628c(r4)
/* 81387384 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81387388 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138738C | 7C 08 03 A6 */	mtlr r0
/* 81387390 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81387394 | 4E 80 00 20 */	blr
.endfn check__Q33ipl5scene15FriendListCacheFv

# .text:0x5D38 | 0x81387398 | size: 0x24
# ipl::scene::FriendListCache::getErrCode() const
.fn getErrCode__Q33ipl5scene15FriendListCacheCFv, global
/* 81387398 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138739C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813873A0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813873A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813873A8 | 41 82 00 0C */	beq .L_813873B4
/* 813873AC | 38 60 00 00 */	li r3, 0x0
/* 813873B0 | 48 00 00 08 */	b .L_813873B8
.L_813873B4:
/* 813873B4 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813873B8:
/* 813873B8 | 4B FB CC 74 */	b getErrCode__Q33ipl5nwc247ManagerFv
.endfn getErrCode__Q33ipl5scene15FriendListCacheCFv

# .text:0x5D5C | 0x813873BC | size: 0x8
# ipl::scene::Base::getPrev()
.fn getPrev__Q33ipl5scene4BaseFv, global
/* 813873BC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813873C0 | 4E 80 00 20 */	blr
.endfn getPrev__Q33ipl5scene4BaseFv

# .text:0x5D64 | 0x813873C4 | size: 0x8
# ipl::scene::Base::getNext()
.fn getNext__Q33ipl5scene4BaseFv, global
/* 813873C4 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813873C8 | 4E 80 00 20 */	blr
.endfn getNext__Q33ipl5scene4BaseFv

# .text:0x5D6C | 0x813873CC | size: 0x8
# ipl::scene::Base::getParent()
.fn getParent__Q33ipl5scene4BaseFv, global
/* 813873CC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813873D0 | 4E 80 00 20 */	blr
.endfn getParent__Q33ipl5scene4BaseFv

# .text:0x5D74 | 0x813873D4 | size: 0x8
# ipl::scene::Base::isResetProcessDone()
.fn isResetProcessDone__Q33ipl5scene4BaseFv, global
/* 813873D4 | 38 60 00 01 */	li r3, 0x1
/* 813873D8 | 4E 80 00 20 */	blr
.endfn isResetProcessDone__Q33ipl5scene4BaseFv

# .text:0x5D7C | 0x813873DC | size: 0x4
# ipl::scene::Base::startResetting()
.fn startResetting__Q33ipl5scene4BaseFv, global
/* 813873DC | 4E 80 00 20 */	blr
.endfn startResetting__Q33ipl5scene4BaseFv

# .text:0x5D80 | 0x813873E0 | size: 0x8
# ipl::scene::Base::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene4BaseCFv, global
/* 813873E0 | 38 60 00 01 */	li r3, 0x1
/* 813873E4 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene4BaseCFv

# .text:0x5D88 | 0x813873E8 | size: 0x8
# ipl::scene::Base::isReady() const
.fn isReady__Q33ipl5scene4BaseCFv, global
/* 813873E8 | 38 60 00 00 */	li r3, 0x0
/* 813873EC | 4E 80 00 20 */	blr
.endfn isReady__Q33ipl5scene4BaseCFv

# .text:0x5D90 | 0x813873F0 | size: 0x4
# ipl::scene::FaderSceneBase::calcCommon()
.fn calcCommon__Q33ipl5scene14FaderSceneBaseFv, global
/* 813873F0 | 4E 80 00 20 */	blr
.endfn calcCommon__Q33ipl5scene14FaderSceneBaseFv

# .text:0x5D94 | 0x813873F4 | size: 0x10
.fn "__sinit_\\iplAddress_cpp", global
/* 813873F4 | C0 22 83 E8 */	lfs f1, lbl_816947E8@sda21(r0)
/* 813873F8 | 38 6D AB 10 */	li r3, lbl_81698B50@sda21
/* 813873FC | FC 40 08 90 */	fmr f2, f1
/* 81387400 | 4B FA F1 68 */	b __ct__Q33ipl4math4VEC2Fff
.endfn "__sinit_\\iplAddress_cpp"

# .text:0x5DA4 | 0x81387404 | size: 0x8
.fn "@20@__dt__Q33ipl5scene7AddressFv", global
/* 81387404 | 38 63 FF EC */	subi r3, r3, 0x14
/* 81387408 | 4B FF A3 EC */	b __dt__Q33ipl5scene7AddressFv
.endfn "@20@__dt__Q33ipl5scene7AddressFv"

# .text:0x5DAC | 0x8138740C | size: 0x8
# ipl::scene::Address::@88@onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn "@88@onEventDerived__Q33ipl5scene7AddressFUlUlPCQ33ipl10controller9Interface", global
/* 8138740C | 38 63 FF A8 */	subi r3, r3, 0x58
/* 81387410 | 4B FF E0 F8 */	b onEventDerived__Q33ipl5scene7AddressFUlUlPCQ33ipl10controller9Interface
.endfn "@88@onEventDerived__Q33ipl5scene7AddressFUlUlPCQ33ipl10controller9Interface"

# 0x8160D1DC..0x8160D1E0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\iplAddress_cpp"

# 0x8160F650..0x8160F668 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x8160F650 | size: 0x16
.obj lbl_8160F650, global
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
.endobj lbl_8160F650

# .rodata:0x16 | 0x8160F666 | size: 0x2
.obj gap_07_8160F666_rodata, global
.hidden gap_07_8160F666_rodata
	.2byte 0x0000
.endobj gap_07_8160F666_rodata

# 0x81647538..0x81647C90 | size: 0x758
.data
.balign 8

# .data:0x0 | 0x81647538 | size: 0xC
.obj lbl_81647538, global
	.string "T_name_b_00"
.endobj lbl_81647538

# .data:0xC | 0x81647544 | size: 0xC
.obj lbl_81647544, global
	.string "T_name_b_01"
.endobj lbl_81647544

# .data:0x18 | 0x81647550 | size: 0xC
.obj lbl_81647550, global
	.string "T_name_b_02"
.endobj lbl_81647550

# .data:0x24 | 0x8164755C | size: 0xC
.obj lbl_8164755C, global
	.string "T_name_b_03"
.endobj lbl_8164755C

# .data:0x30 | 0x81647568 | size: 0xC
.obj lbl_81647568, global
	.string "T_name_b_04"
.endobj lbl_81647568

# .data:0x3C | 0x81647574 | size: 0x14
.obj lbl_81647574, global
	.4byte lbl_81647538
	.4byte lbl_81647544
	.4byte lbl_81647550
	.4byte lbl_8164755C
	.4byte lbl_81647568
.endobj lbl_81647574

# .data:0x50 | 0x81647588 | size: 0xC
.obj lbl_81647588, global
	.string "T_name_c_00"
.endobj lbl_81647588

# .data:0x5C | 0x81647594 | size: 0xC
.obj lbl_81647594, global
	.string "T_name_c_01"
.endobj lbl_81647594

# .data:0x68 | 0x816475A0 | size: 0xC
.obj lbl_816475A0, global
	.string "T_name_c_02"
.endobj lbl_816475A0

# .data:0x74 | 0x816475AC | size: 0xC
.obj lbl_816475AC, global
	.string "T_name_c_03"
.endobj lbl_816475AC

# .data:0x80 | 0x816475B8 | size: 0x20
.obj lbl_816475B8, global
	.4byte 0x545F6E61
	.4byte 0x6D655F63
	.4byte 0x5F303400
	.4byte lbl_81647588
	.4byte lbl_81647594
	.4byte lbl_816475A0
	.4byte lbl_816475AC
	.4byte lbl_816475B8
.endobj lbl_816475B8

# .data:0xA0 | 0x816475D8 | size: 0xC
.obj lbl_816475D8, global
	.string "B_name_b_00"
.endobj lbl_816475D8

# .data:0xAC | 0x816475E4 | size: 0xC
.obj lbl_816475E4, global
	.string "B_name_b_01"
.endobj lbl_816475E4

# .data:0xB8 | 0x816475F0 | size: 0xC
.obj lbl_816475F0, global
	.string "B_name_b_02"
.endobj lbl_816475F0

# .data:0xC4 | 0x816475FC | size: 0xC
.obj lbl_816475FC, global
	.string "B_name_b_03"
.endobj lbl_816475FC

# .data:0xD0 | 0x81647608 | size: 0xC
.obj lbl_81647608, global
	.string "B_name_b_04"
.endobj lbl_81647608

# .data:0xDC | 0x81647614 | size: 0x14
.obj lbl_81647614, global
	.4byte lbl_816475D8
	.4byte lbl_816475E4
	.4byte lbl_816475F0
	.4byte lbl_816475FC
	.4byte lbl_81647608
.endobj lbl_81647614

# .data:0xF0 | 0x81647628 | size: 0xF
.obj lbl_81647628, global
	.string "B_name_b_00_01"
.endobj lbl_81647628

# .data:0xFF | 0x81647637 | size: 0xF
.obj lbl_81647637, global
	.string "B_name_b_01_02"
.endobj lbl_81647637

# .data:0x10E | 0x81647646 | size: 0xF
.obj lbl_81647646, global
	.string "B_name_b_02_03"
.endobj lbl_81647646

# .data:0x11D | 0x81647655 | size: 0xF
.obj lbl_81647655, global
	.string "B_name_b_03_04"
.endobj lbl_81647655

# .data:0x12C | 0x81647664 | size: 0x10
.obj lbl_81647664, global
	.4byte lbl_81647628
	.4byte lbl_81647637
	.4byte lbl_81647646
	.4byte lbl_81647655
.endobj lbl_81647664

# .data:0x13C | 0x81647674 | size: 0xA
.obj lbl_81647674, global
	.string "name_b_00"
.endobj lbl_81647674

# .data:0x146 | 0x8164767E | size: 0xA
.obj lbl_8164767E, global
	.string "name_b_01"
.endobj lbl_8164767E

# .data:0x150 | 0x81647688 | size: 0xA
.obj lbl_81647688, global
	.string "name_b_02"
.endobj lbl_81647688

# .data:0x15A | 0x81647692 | size: 0xA
.obj lbl_81647692, global
	.string "name_b_03"
.endobj lbl_81647692

# .data:0x164 | 0x8164769C | size: 0x20
.obj lbl_8164769C, global
	.4byte 0x6E616D65
	.4byte 0x5F625F30
	.4byte 0x34000000
	.4byte lbl_81647674
	.4byte lbl_8164767E
	.4byte lbl_81647688
	.4byte lbl_81647692
	.4byte lbl_8164769C
.endobj lbl_8164769C

# .data:0x184 | 0x816476BC | size: 0xC
.obj lbl_816476BC, global
	.string "G_name_c_00"
.endobj lbl_816476BC

# .data:0x190 | 0x816476C8 | size: 0xC
.obj lbl_816476C8, global
	.string "G_name_c_01"
.endobj lbl_816476C8

# .data:0x19C | 0x816476D4 | size: 0xC
.obj lbl_816476D4, global
	.string "G_name_c_02"
.endobj lbl_816476D4

# .data:0x1A8 | 0x816476E0 | size: 0xC
.obj lbl_816476E0, global
	.string "G_name_c_03"
.endobj lbl_816476E0

# .data:0x1B4 | 0x816476EC | size: 0x296
.obj lbl_816476EC, global
	.4byte 0x475F6E61
	.4byte 0x6D655F63
	.4byte 0x5F303400
	.4byte lbl_816476BC
	.4byte lbl_816476C8
	.4byte lbl_816476D4
	.4byte lbl_816476E0
	.4byte lbl_816476EC
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F612E
	.4byte 0x62726C79
	.4byte 0x74007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x615F6E6F
	.4byte 0x74655F61
	.4byte 0x6C705F69
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F6E6F
	.4byte 0x74655F61
	.4byte 0x6C6C0074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F615F6E
	.4byte 0x6F74655F
	.4byte 0x616C705F
	.4byte 0x6F75742E
	.4byte 0x62726C61
	.4byte 0x6E007468
	.4byte 0x5F416472
	.4byte 0x6573735F
	.4byte 0x615F6E6F
	.4byte 0x74655F74
	.4byte 0x726E735F
	.4byte 0x696E2E62
	.4byte 0x726C616E
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F61
	.4byte 0x5F6E6F74
	.4byte 0x655F7472
	.4byte 0x6E735F6F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F61
	.4byte 0x5F6E6F74
	.4byte 0x655F655F
	.4byte 0x7274742E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x6E6F7465
	.4byte 0x5F655F72
	.4byte 0x74740074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F615F6E
	.4byte 0x6F74655F
	.4byte 0x635F7274
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6E6F7465
	.4byte 0x5F635F72
	.4byte 0x74740074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F615F6E
	.4byte 0x616D655F
	.4byte 0x696E2E62
	.4byte 0x726C616E
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F61
	.4byte 0x5F6E616D
	.4byte 0x655F6F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F615F
	.4byte 0x6E616D65
	.4byte 0x5F707368
	.4byte 0x2E62726C
	.4byte 0x616E0074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F615F67
	.4byte 0x72795F6E
	.4byte 0x616D655F
	.4byte 0x696E2E62
	.4byte 0x726C616E
	.4byte 0x0074685F
	.4byte 0x41647265
	.4byte 0x73735F61
	.4byte 0x5F677279
	.4byte 0x5F6E616D
	.4byte 0x655F6F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x74685F41
	.4byte 0x64726573
	.4byte 0x735F615F
	.4byte 0x6772795F
	.4byte 0x6E616D65
	.4byte 0x5F707368
	.4byte 0x2E62726C
	.4byte 0x616E0074
	.4byte 0x685F4164
	.4byte 0x72657373
	.4byte 0x5F615F6E
	.4byte 0x616D655F
	.4byte 0x635F6772
	.4byte 0x792E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F42
	.4byte 0x61636B5F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x6D795F42
	.4byte 0x61636B5F
	.4byte 0x615F4170
	.4byte 0x6561722E
	.4byte 0x62726C61
	.4byte 0x6E005069
	.4byte 0x63747572
	.4byte 0x655F3030
	.4byte 0x006D795F
	.4byte 0x4261636B
	.4byte 0x5F615F4C
	.4byte 0x6F73742E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F446961
	.4byte 0x6C6F675F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x6D795F44
	.4byte 0x69616C6F
	.4byte 0x675F615F
	.4byte 0x4469616C
	.4byte 0x6F67496E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F4469
	.4byte 0x616C6F67
	.4byte 0x5F615F44
	.4byte 0x69616C6F
	.4byte 0x674F7574
	.4byte 0x2E62726C
	.4byte 0x616E0054
	.4byte 0x5F446961
	.4byte 0x6C6F6700
	.4byte 0x6D69695F
	.4byte 0x625F2530
	.4byte 0x3264006D
	.4byte 0x69695F63
	.4byte 0x5F253032
	.4byte 0x6400545F
	.4byte 0x61647273
	.4byte 0x5F303000
	.4byte 0x545F7769
	.4byte 0x695F6D73
	.2byte 0x6700
.endobj lbl_816476EC

# .data:0x44A | 0x81647982 | size: 0xC
.obj lbl_81647982, global
	.string "N_note_move"
.endobj lbl_81647982

# .data:0x456 | 0x8164798E | size: 0x16
.obj lbl_8164798E, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x464C5F50
	.4byte 0x4147455F
	.4byte 0x494E4300
	.2byte 0x0000
.endobj lbl_8164798E

# .data:0x46C | 0x816479A4 | size: 0x68
.obj jumptable_816479A4, local
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_81382074
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_81382094
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_8138209C
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820A4
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820AC
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820B4
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820BC
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820C4
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820CC
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820D4
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820DC
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820E4
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820EC
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820F4
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_813820FC
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_81382104
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_8138210C
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_81382114
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_8138211C
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_81382124
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_8138212C
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_81382134
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_8138213C
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_81382144
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_8138214C
	.rel calcNormal__Q33ipl5scene7AddressFv, .L_81382154
.endobj jumptable_816479A4

# .data:0x4D4 | 0x81647A0C | size: 0x41
.obj gap_08_81647A0C_data, global
.hidden gap_08_81647A0C_data
	.4byte 0x4E5F6E6F
	.4byte 0x74655F61
	.4byte 0x004E5F6E
	.4byte 0x6F74655F
	.4byte 0x62004E5F
	.4byte 0x6E6F7465
	.4byte 0x5F63004E
	.4byte 0x5F6E6F74
	.4byte 0x655F6400
	.4byte 0x4E5F6E6F
	.4byte 0x74655F65
	.4byte 0x00545F77
	.4byte 0x69695F6E
	.4byte 0x616D6500
	.4byte 0x545F6E6D
	.4byte 0x62725F62
	.byte 0x00
.endobj gap_08_81647A0C_data

# .data:0x515 | 0x81647A4D | size: 0x14
.obj lbl_81647A4D, global
	.string "WIPL_SE_FL_PAGE_DEC"
.endobj lbl_81647A4D

# .data:0x529 | 0x81647A61 | size: 0xC
.obj lbl_81647A61, global
	.string "N_note_base"
.endobj lbl_81647A61

# .data:0x535 | 0x81647A6D | size: 0xB
.obj lbl_81647A6D, global
	.string "T_CalAdd_R"
.endobj lbl_81647A6D

# .data:0x540 | 0x81647A78 | size: 0x4B
.obj lbl_81647A78, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x4445006D
	.4byte 0x69695F6D
	.4byte 0x6F766500
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43485F48
	.4byte 0x4F4C4400
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43485F53
	.4byte 0x45540057
	.4byte 0x49504C5F
	.4byte 0x53455F43
	.4byte 0x485F4E4F
	.4byte 0x545F4D4F
	.byte 0x56, 0x45, 0x00
.endobj lbl_81647A78

# .data:0x58B | 0x81647AC3 | size: 0x2F
.obj lbl_81647AC3, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F54
	.4byte 0x41524745
	.4byte 0x5454494E
	.4byte 0x47005749
	.4byte 0x504C5F53
	.4byte 0x455F4341
	.4byte 0x4E43454C
	.4byte 0x00545F6E
	.4byte 0x6D62725F
	.byte 0x63, 0x00, 0x00
.endobj lbl_81647AC3

# .data:0x5BA | 0x81647AF2 | size: 0xC
.obj lbl_81647AF2, global
	.string16 "%06d\n"
.endobj lbl_81647AF2

# .data:0x5C6 | 0x81647AFE | size: 0x1C
.obj lbl_81647AFE, global
	.4byte 0x545F6E61
	.4byte 0x6D655F6D
	.4byte 0x6F766500
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43485F44
	.4byte 0x52414700
.endobj lbl_81647AFE

# .data:0x5E2 | 0x81647B1A | size: 0xC
.obj lbl_81647B1A, global
	.string "N_base_move"
.endobj lbl_81647B1A

# .data:0x5EE | 0x81647B26 | size: 0x22
.obj lbl_81647B26, global
	.string16 "1234567890123456"
.endobj lbl_81647B26

# .data:0x610 | 0x81647B48 | size: 0x10
.obj lbl_81647B48, global
	.string16 "%016lld"
.endobj lbl_81647B48

# .data:0x620 | 0x81647B58 | size: 0x18
# ipl::scene::AddressEvent::__vtable
.obj __vt__Q33ipl5scene12AddressEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene12AddressEventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene12AddressEvent

# .data:0x638 | 0x81647B70 | size: 0x120
# ipl::scene::Address::__vtable
.obj __vt__Q33ipl5scene7Address, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene7AddressFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene7AddressFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene7AddressFv
	.4byte create__Q33ipl5scene7AddressFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene7AddressFv
	.4byte destroy__Q33ipl5scene7AddressFv
	.4byte initCalcNormal__Q33ipl5scene7AddressFv
	.4byte initCalcFadeout__Q33ipl5scene7AddressFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene7AddressFv
	.4byte calcNormal__Q33ipl5scene7AddressFv
	.4byte calcFadeout__Q33ipl5scene7AddressFv
	.4byte calcCommonAfter__Q33ipl5scene7AddressFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte "@88@onEventDerived__Q33ipl5scene7AddressFUlUlPCQ33ipl10controller9Interface"
	.4byte onEventDerived__Q33ipl5scene7AddressFUlUlPCQ33ipl10controller9Interface
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene7Address

# 0x816947D0..0x816947F0 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816947D0 | size: 0x8
.obj lbl_816947D0, global
	.double 4503601774854144
.endobj lbl_816947D0

# .sdata2:0x8 | 0x816947D8 | size: 0x4
.obj lbl_816947D8, global
	.float 0
.endobj lbl_816947D8

# .sdata2:0xC | 0x816947DC | size: 0x4
.obj lbl_816947DC, global
	.float 20
.endobj lbl_816947DC

# .sdata2:0x10 | 0x816947E0 | size: 0x4
.obj lbl_816947E0, global
	.float 1
.endobj lbl_816947E0

# .sdata2:0x14 | 0x816947E4 | size: 0x4
.obj lbl_816947E4, global
	.float 0.01
.endobj lbl_816947E4

# .sdata2:0x18 | 0x816947E8 | size: 0x4
.obj lbl_816947E8, global
	.float -1
.endobj lbl_816947E8

# .sdata2:0x1C | 0x816947EC | size: 0x4
.obj gap_09_816947EC_sdata2, global
.hidden gap_09_816947EC_sdata2
	.4byte 0x00000000
.endobj gap_09_816947EC_sdata2

# 0x816965C0..0x816965D0 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816965C0 | size: 0x4
.obj lbl_816965C0, global
	.string "arc"
.endobj lbl_816965C0

# .sdata:0x4 | 0x816965C4 | size: 0x6
.obj lbl_816965C4, global
	.string "N_Top"
.endobj lbl_816965C4

# .sdata:0xA | 0x816965CA | size: 0x4
.obj lbl_816965CA, global
	.4byte 0x00000000
.endobj lbl_816965CA

# .sdata:0xE | 0x816965CE | size: 0x2
.obj gap_11_816965CE_sdata, global
.hidden gap_11_816965CE_sdata
	.2byte 0x0000
.endobj gap_11_816965CE_sdata

# 0x81698B50..0x81698B58 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698B50 | size: 0x4
.obj lbl_81698B50, global
	.skip 0x4
.endobj lbl_81698B50

# .sbss:0x4 | 0x81698B54 | size: 0x4
.obj lbl_81698B54, global
	.skip 0x4
.endobj lbl_81698B54
