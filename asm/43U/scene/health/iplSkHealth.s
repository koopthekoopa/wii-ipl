.include "macros.inc"
.file "iplSkHealth.cpp"

# 0x813BD5D8..0x813BE010 | size: 0xA38
.text
.balign 4

# .text:0x0 | 0x813BD5D8 | size: 0x74
# ipl::scene::skHealth::skHealth(EGG::Heap*)
.fn __ct__Q33ipl5scene8skHealthFPQ23EGG4Heap, global
/* 813BD5D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BD5DC | 7C 08 02 A6 */	mflr r0
/* 813BD5E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BD5E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BD5E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813BD5EC | 48 04 DC 1D */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 813BD5F0 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene8skHealth@ha
/* 813BD5F4 | 38 80 00 00 */	li r4, 0x0
/* 813BD5F8 | 38 63 FA A0 */	addi r3, r3, __vt__Q33ipl5scene8skHealth@l
/* 813BD5FC | 38 00 00 02 */	li r0, 0x2
/* 813BD600 | 38 A3 00 1C */	addi r5, r3, 0x1c
/* 813BD604 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 813BD608 | 7F E3 FB 78 */	mr r3, r31
/* 813BD60C | 90 BF 00 14 */	stw r5, 0x14(r31)
/* 813BD610 | 90 9F 00 60 */	stw r4, 0x60(r31)
/* 813BD614 | 90 9F 00 64 */	stw r4, 0x64(r31)
/* 813BD618 | 90 9F 00 68 */	stw r4, 0x68(r31)
/* 813BD61C | 90 9F 00 6C */	stw r4, 0x6c(r31)
/* 813BD620 | 98 9F 00 70 */	stb r4, 0x70(r31)
/* 813BD624 | 90 9F 00 74 */	stw r4, 0x74(r31)
/* 813BD628 | 90 9F 00 78 */	stw r4, 0x78(r31)
/* 813BD62C | 98 9F 00 7C */	stb r4, 0x7c(r31)
/* 813BD630 | 98 9F 00 7D */	stb r4, 0x7d(r31)
/* 813BD634 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813BD638 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BD63C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BD640 | 7C 08 03 A6 */	mtlr r0
/* 813BD644 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BD648 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene8skHealthFPQ23EGG4Heap

# .text:0x74 | 0x813BD64C | size: 0x5C
# ipl::scene::skHealth::~skHealth()
.fn __dt__Q33ipl5scene8skHealthFv, global
/* 813BD64C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BD650 | 7C 08 02 A6 */	mflr r0
/* 813BD654 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD658 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BD65C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BD660 | 7C 9F 23 78 */	mr r31, r4
/* 813BD664 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BD668 | 7C 7E 1B 78 */	mr r30, r3
/* 813BD66C | 41 82 00 20 */	beq .L_813BD68C
/* 813BD670 | 41 82 00 0C */	beq .L_813BD67C
/* 813BD674 | 38 80 00 00 */	li r4, 0x0
/* 813BD678 | 48 04 C5 ED */	bl __dt__Q33ipl5scene4BaseFv
.L_813BD67C:
/* 813BD67C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813BD680 | 40 81 00 0C */	ble .L_813BD68C
/* 813BD684 | 7F C3 F3 78 */	mr r3, r30
/* 813BD688 | 48 23 AA 5D */	bl __dl__FPv
.L_813BD68C:
/* 813BD68C | 7F C3 F3 78 */	mr r3, r30
/* 813BD690 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BD694 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BD698 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BD69C | 7C 08 03 A6 */	mtlr r0
/* 813BD6A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BD6A4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene8skHealthFv

# .text:0xD0 | 0x813BD6A8 | size: 0x4C
# ipl::scene::skHealth::prepare()
.fn prepare__Q33ipl5scene8skHealthFv, global
/* 813BD6A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BD6AC | 7C 08 02 A6 */	mflr r0
/* 813BD6B0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813BD6B4 | 3C A0 81 65 */	lis r5, lbl_8164FA04@ha
/* 813BD6B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BD6BC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813BD6C0 | 38 A5 FA 04 */	addi r5, r5, lbl_8164FA04@l
/* 813BD6C4 | 38 C0 00 01 */	li r6, 0x1
/* 813BD6C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BD6CC | 7C 7F 1B 78 */	mr r31, r3
/* 813BD6D0 | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 813BD6D4 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813BD6D8 | 4B F8 01 DD */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813BD6DC | 90 7F 00 5C */	stw r3, 0x5c(r31)
/* 813BD6E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BD6E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BD6E8 | 7C 08 03 A6 */	mtlr r0
/* 813BD6EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BD6F0 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene8skHealthFv

# .text:0x11C | 0x813BD6F4 | size: 0x24
# ipl::scene::skHealth::destroy()
.fn destroy__Q33ipl5scene8skHealthFv, global
/* 813BD6F4 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813BD6F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD6FC | 4D 82 00 20 */	beqlr
/* 813BD700 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD704 | 38 80 00 01 */	li r4, 0x1
/* 813BD708 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813BD70C | 7D 89 03 A6 */	mtctr r12
/* 813BD710 | 4E 80 04 20 */	bctr
/* 813BD714 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene8skHealthFv

# .text:0x140 | 0x813BD718 | size: 0x14
# ipl::scene::skHealth::isReady() const
.fn isReady__Q33ipl5scene8skHealthCFv, global
/* 813BD718 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813BD71C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD720 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BD724 | 7D 89 03 A6 */	mtctr r12
/* 813BD728 | 4E 80 04 20 */	bctr
.endfn isReady__Q33ipl5scene8skHealthCFv

# .text:0x154 | 0x813BD72C | size: 0x114
# ipl::scene::skHealth::getCountryIndex_()
.fn getCountryIndex___Q33ipl5scene8skHealthFv, global
/* 813BD72C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BD730 | 7C 08 02 A6 */	mflr r0
/* 813BD734 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BD738 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BD73C | 3B E0 00 01 */	li r31, 0x1
/* 813BD740 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BD744 | 48 1A C9 C1 */	bl SCGetLanguage
/* 813BD748 | 54 7E 06 3E */	clrlwi r30, r3, 24
/* 813BD74C | 4B F7 83 41 */	bl getRegion__Q23ipl6SystemFv
/* 813BD750 | 28 03 00 0B */	cmplwi r3, 0xb
/* 813BD754 | 41 81 00 D0 */	bgt .L_813BD824
/* 813BD758 | 3C 80 81 65 */	lis r4, jumptable_8164FA10@ha
/* 813BD75C | 54 60 10 3A */	slwi r0, r3, 2
/* 813BD760 | 38 84 FA 10 */	addi r4, r4, jumptable_8164FA10@l
/* 813BD764 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813BD768 | 7C 89 03 A6 */	mtctr r4
/* 813BD76C | 4E 80 04 20 */	bctr
.L_813BD770:
/* 813BD770 | 3B E0 00 00 */	li r31, 0x0
/* 813BD774 | 48 00 00 B0 */	b .L_813BD824
.L_813BD778:
/* 813BD778 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 813BD77C | 41 82 00 28 */	beq .L_813BD7A4
/* 813BD780 | 40 80 00 10 */	bge .L_813BD790
/* 813BD784 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 813BD788 | 41 82 00 14 */	beq .L_813BD79C
/* 813BD78C | 48 00 00 98 */	b .L_813BD824
.L_813BD790:
/* 813BD790 | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 813BD794 | 40 80 00 90 */	bge .L_813BD824
/* 813BD798 | 48 00 00 14 */	b .L_813BD7AC
.L_813BD79C:
/* 813BD79C | 3B E0 00 01 */	li r31, 0x1
/* 813BD7A0 | 48 00 00 84 */	b .L_813BD824
.L_813BD7A4:
/* 813BD7A4 | 3B E0 00 02 */	li r31, 0x2
/* 813BD7A8 | 48 00 00 7C */	b .L_813BD824
.L_813BD7AC:
/* 813BD7AC | 3B E0 00 03 */	li r31, 0x3
/* 813BD7B0 | 48 00 00 74 */	b .L_813BD824
.L_813BD7B4:
/* 813BD7B4 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 813BD7B8 | 41 82 00 50 */	beq .L_813BD808
/* 813BD7BC | 40 80 00 1C */	bge .L_813BD7D8
/* 813BD7C0 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 813BD7C4 | 41 82 00 34 */	beq .L_813BD7F8
/* 813BD7C8 | 40 80 00 28 */	bge .L_813BD7F0
/* 813BD7CC | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 813BD7D0 | 40 80 00 18 */	bge .L_813BD7E8
/* 813BD7D4 | 48 00 00 50 */	b .L_813BD824
.L_813BD7D8:
/* 813BD7D8 | 2C 1E 00 06 */	cmpwi r30, 0x6
/* 813BD7DC | 41 82 00 34 */	beq .L_813BD810
/* 813BD7E0 | 40 80 00 44 */	bge .L_813BD824
/* 813BD7E4 | 48 00 00 1C */	b .L_813BD800
.L_813BD7E8:
/* 813BD7E8 | 3B E0 00 04 */	li r31, 0x4
/* 813BD7EC | 48 00 00 38 */	b .L_813BD824
.L_813BD7F0:
/* 813BD7F0 | 3B E0 00 05 */	li r31, 0x5
/* 813BD7F4 | 48 00 00 30 */	b .L_813BD824
.L_813BD7F8:
/* 813BD7F8 | 3B E0 00 06 */	li r31, 0x6
/* 813BD7FC | 48 00 00 28 */	b .L_813BD824
.L_813BD800:
/* 813BD800 | 3B E0 00 07 */	li r31, 0x7
/* 813BD804 | 48 00 00 20 */	b .L_813BD824
.L_813BD808:
/* 813BD808 | 3B E0 00 08 */	li r31, 0x8
/* 813BD80C | 48 00 00 18 */	b .L_813BD824
.L_813BD810:
/* 813BD810 | 3B E0 00 09 */	li r31, 0x9
/* 813BD814 | 48 00 00 10 */	b .L_813BD824
.L_813BD818:
/* 813BD818 | 3B E0 00 0A */	li r31, 0xa
/* 813BD81C | 48 00 00 08 */	b .L_813BD824
.L_813BD820:
/* 813BD820 | 3B E0 00 0B */	li r31, 0xb
.L_813BD824:
/* 813BD824 | 7F E3 FB 78 */	mr r3, r31
/* 813BD828 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BD82C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BD830 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BD834 | 7C 08 03 A6 */	mtlr r0
/* 813BD838 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BD83C | 4E 80 00 20 */	blr
.endfn getCountryIndex___Q33ipl5scene8skHealthFv

# .text:0x268 | 0x813BD840 | size: 0x21C
# ipl::scene::skHealth::create()
.fn create__Q33ipl5scene8skHealthFv, global
/* 813BD840 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813BD844 | 7C 08 02 A6 */	mflr r0
/* 813BD848 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813BD84C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BD850 | 48 23 BC 65 */	bl _savegpr_24
/* 813BD854 | 3F 80 81 65 */	lis r28, lbl_8164F8B8@ha
/* 813BD858 | 7C 78 1B 78 */	mr r24, r3
/* 813BD85C | 3B 9C F8 B8 */	addi r28, r28, lbl_8164F8B8@l
/* 813BD860 | 38 60 05 80 */	li r3, 0x580
/* 813BD864 | 48 23 A8 39 */	bl __nw__FUl
/* 813BD868 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD86C | 41 82 00 18 */	beq .L_813BD884
/* 813BD870 | 80 98 00 24 */	lwz r4, 0x24(r24)
/* 813BD874 | 38 FC 01 88 */	addi r7, r28, 0x188
/* 813BD878 | 80 B8 00 5C */	lwz r5, 0x5c(r24)
/* 813BD87C | 38 CD 8B 08 */	li r6, lbl_81696B48@sda21
/* 813BD880 | 4B FA C7 A5 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813BD884:
/* 813BD884 | 90 78 00 58 */	stw r3, 0x58(r24)
/* 813BD888 | 3B BC 00 64 */	addi r29, r28, 0x64
/* 813BD88C | 3B DC 01 1C */	addi r30, r28, 0x11c
/* 813BD890 | 3B 20 00 00 */	li r25, 0x0
/* 813BD894 | 3B E0 00 00 */	li r31, 0x0
.L_813BD898:
/* 813BD898 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BD89C | 38 A0 00 01 */	li r5, 0x1
/* 813BD8A0 | 7C 9D F8 2E */	lwzx r4, r29, r31
/* 813BD8A4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BD8A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD8AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BD8B0 | 7D 89 03 A6 */	mtctr r12
/* 813BD8B4 | 4E 80 04 21 */	bctrl
/* 813BD8B8 | 80 D8 00 58 */	lwz r6, 0x58(r24)
/* 813BD8BC | 7C 7B 1B 78 */	mr r27, r3
/* 813BD8C0 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813BD8C4 | 38 A0 00 01 */	li r5, 0x1
/* 813BD8C8 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813BD8CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD8D0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BD8D4 | 7D 89 03 A6 */	mtctr r12
/* 813BD8D8 | 4E 80 04 21 */	bctrl
/* 813BD8DC | 7C 7A 1B 78 */	mr r26, r3
/* 813BD8E0 | 7F 63 DB 78 */	mr r3, r27
/* 813BD8E4 | 38 80 00 00 */	li r4, 0x0
/* 813BD8E8 | 4B F8 6B 2D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BD8EC | 7F 43 D3 78 */	mr r3, r26
/* 813BD8F0 | 38 80 00 00 */	li r4, 0x0
/* 813BD8F4 | 4B F8 6B 21 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BD8F8 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813BD8FC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813BD900 | 28 19 00 0C */	cmplwi r25, 0xc
/* 813BD904 | 41 80 FF 94 */	blt .L_813BD898
/* 813BD908 | 7F 03 C3 78 */	mr r3, r24
/* 813BD90C | 4B FF FE 21 */	bl getCountryIndex___Q33ipl5scene8skHealthFv
/* 813BD910 | 80 D8 00 58 */	lwz r6, 0x58(r24)
/* 813BD914 | 54 7A 10 3A */	slwi r26, r3, 2
/* 813BD918 | 38 9C 00 64 */	addi r4, r28, 0x64
/* 813BD91C | 38 A0 00 01 */	li r5, 0x1
/* 813BD920 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813BD924 | 7C 84 D0 2E */	lwzx r4, r4, r26
/* 813BD928 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD92C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BD930 | 7D 89 03 A6 */	mtctr r12
/* 813BD934 | 4E 80 04 21 */	bctrl
/* 813BD938 | 90 78 00 60 */	stw r3, 0x60(r24)
/* 813BD93C | 38 7C 01 1C */	addi r3, r28, 0x11c
/* 813BD940 | 80 D8 00 58 */	lwz r6, 0x58(r24)
/* 813BD944 | 38 A0 00 01 */	li r5, 0x1
/* 813BD948 | 7C 83 D0 2E */	lwzx r4, r3, r26
/* 813BD94C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813BD950 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD954 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BD958 | 7D 89 03 A6 */	mtctr r12
/* 813BD95C | 4E 80 04 21 */	bctrl
/* 813BD960 | 90 78 00 64 */	stw r3, 0x64(r24)
/* 813BD964 | 38 80 00 01 */	li r4, 0x1
/* 813BD968 | 80 78 00 60 */	lwz r3, 0x60(r24)
/* 813BD96C | 4B F8 6A A9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BD970 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BD974 | 38 9C 01 97 */	addi r4, r28, 0x197
/* 813BD978 | 38 AD 8B 0C */	li r5, lbl_81696B4C@sda21
/* 813BD97C | 38 C0 00 01 */	li r6, 0x1
/* 813BD980 | 38 E0 00 01 */	li r7, 0x1
/* 813BD984 | 4B FA CB 5D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BD988 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BD98C | 38 9C 01 AD */	addi r4, r28, 0x1ad
/* 813BD990 | 38 AD 8B 12 */	li r5, lbl_81696B52@sda21
/* 813BD994 | 38 C0 00 01 */	li r6, 0x1
/* 813BD998 | 38 E0 00 01 */	li r7, 0x1
/* 813BD99C | 4B FA CB 45 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BD9A0 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BD9A4 | 38 9C 01 C1 */	addi r4, r28, 0x1c1
/* 813BD9A8 | 38 AD 8B 0C */	li r5, lbl_81696B4C@sda21
/* 813BD9AC | 38 C0 00 01 */	li r6, 0x1
/* 813BD9B0 | 38 E0 00 01 */	li r7, 0x1
/* 813BD9B4 | 4B FA CB 2D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BD9B8 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BD9BC | 38 80 00 00 */	li r4, 0x0
/* 813BD9C0 | 38 A0 00 00 */	li r5, 0x0
/* 813BD9C4 | 4B FA D0 9D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813BD9C8 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BD9CC | 38 80 00 02 */	li r4, 0x2
/* 813BD9D0 | 38 A0 00 01 */	li r5, 0x1
/* 813BD9D4 | 4B FA D0 8D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813BD9D8 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BD9DC | 38 80 00 00 */	li r4, 0x0
/* 813BD9E0 | 38 A0 00 02 */	li r5, 0x2
/* 813BD9E4 | 4B FA D0 7D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813BD9E8 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BD9EC | 4B FA CC 49 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813BD9F0 | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BD9F4 | 38 80 00 00 */	li r4, 0x0
/* 813BD9F8 | 4B FA CF 01 */	bl start__Q33ipl6layout6ObjectFi
/* 813BD9FC | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BDA00 | 4B FA CD 05 */	bl calc__Q33ipl6layout6ObjectFv
/* 813BDA04 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BDA08 | 38 80 00 01 */	li r4, 0x1
/* 813BDA0C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BDA10 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813BDA14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDA18 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813BDA1C | 7D 89 03 A6 */	mtctr r12
/* 813BDA20 | 4E 80 04 21 */	bctrl
/* 813BDA24 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813BDA28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDA2C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BDA30 | 7D 89 03 A6 */	mtctr r12
/* 813BDA34 | 4E 80 04 21 */	bctrl
/* 813BDA38 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 813BDA3C | 38 00 00 00 */	li r0, 0x0
/* 813BDA40 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BDA44 | 98 03 00 3D */	stb r0, 0x3d(r3)
/* 813BDA48 | 48 23 BA B9 */	bl _restgpr_24
/* 813BDA4C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813BDA50 | 7C 08 03 A6 */	mtlr r0
/* 813BDA54 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813BDA58 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene8skHealthFv

# .text:0x484 | 0x813BDA5C | size: 0x138
# ipl::scene::skHealth::calcFadein()
.fn calcFadein__Q33ipl5scene8skHealthFv, global
/* 813BDA5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BDA60 | 7C 08 02 A6 */	mflr r0
/* 813BDA64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BDA68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BDA6C | 3B E0 00 00 */	li r31, 0x0
/* 813BDA70 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BDA74 | 7C 7E 1B 78 */	mr r30, r3
/* 813BDA78 | 48 00 03 ED */	bl check_safe_mode__Q33ipl5scene8skHealthFv
/* 813BDA7C | 88 1E 00 70 */	lbz r0, 0x70(r30)
/* 813BDA80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDA84 | 40 82 00 28 */	bne .L_813BDAAC
/* 813BDA88 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BDA8C | 38 80 00 00 */	li r4, 0x0
/* 813BDA90 | 4B FA D0 41 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813BDA94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDA98 | 40 82 00 14 */	bne .L_813BDAAC
/* 813BDA9C | 38 00 00 01 */	li r0, 0x1
/* 813BDAA0 | 98 1E 00 70 */	stb r0, 0x70(r30)
/* 813BDAA4 | 48 17 81 F5 */	bl OSGetTick
/* 813BDAA8 | 90 7E 00 68 */	stw r3, 0x68(r30)
.L_813BDAAC:
/* 813BDAAC | 88 1E 00 70 */	lbz r0, 0x70(r30)
/* 813BDAB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDAB4 | 41 82 00 BC */	beq .L_813BDB70
/* 813BDAB8 | 48 17 81 E1 */	bl OSGetTick
/* 813BDABC | 3C 80 80 00 */	lis r4, 0x8000
/* 813BDAC0 | 80 BE 00 68 */	lwz r5, 0x68(r30)
/* 813BDAC4 | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813BDAC8 | 38 00 03 E8 */	li r0, 0x3e8
/* 813BDACC | 7C A5 18 50 */	subf r5, r5, r3
/* 813BDAD0 | 54 83 F0 BE */	srwi r3, r4, 2
/* 813BDAD4 | 7C 03 03 96 */	divwu r0, r3, r0
/* 813BDAD8 | 7C 05 03 96 */	divwu r0, r5, r0
/* 813BDADC | 28 00 03 E8 */	cmplwi r0, 0x3e8
/* 813BDAE0 | 40 81 00 90 */	ble .L_813BDB70
/* 813BDAE4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BDAE8 | 38 A0 00 00 */	li r5, 0x0
/* 813BDAEC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BDAF0 | 38 80 00 00 */	li r4, 0x0
/* 813BDAF4 | 88 03 02 B0 */	lbz r0, 0x2b0(r3)
/* 813BDAF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDAFC | 41 82 00 20 */	beq .L_813BDB1C
/* 813BDB00 | 88 03 02 B6 */	lbz r0, 0x2b6(r3)
/* 813BDB04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDB08 | 41 82 00 14 */	beq .L_813BDB1C
/* 813BDB0C | 88 03 02 B7 */	lbz r0, 0x2b7(r3)
/* 813BDB10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDB14 | 41 82 00 08 */	beq .L_813BDB1C
/* 813BDB18 | 38 80 00 01 */	li r4, 0x1
.L_813BDB1C:
/* 813BDB1C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813BDB20 | 41 82 00 1C */	beq .L_813BDB3C
/* 813BDB24 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BDB28 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BDB2C | 88 03 02 B8 */	lbz r0, 0x2b8(r3)
/* 813BDB30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDB34 | 41 82 00 08 */	beq .L_813BDB3C
/* 813BDB38 | 38 A0 00 01 */	li r5, 0x1
.L_813BDB3C:
/* 813BDB3C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813BDB40 | 41 82 00 30 */	beq .L_813BDB70
/* 813BDB44 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813BDB48 | 38 80 00 01 */	li r4, 0x1
/* 813BDB4C | 4B F8 68 C9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BDB50 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BDB54 | 38 80 00 01 */	li r4, 0x1
/* 813BDB58 | 4B FA CD A1 */	bl start__Q33ipl6layout6ObjectFi
/* 813BDB5C | 48 17 81 3D */	bl OSGetTick
/* 813BDB60 | 90 7E 00 6C */	stw r3, 0x6c(r30)
/* 813BDB64 | 4B FA 6F B5 */	bl getWpadConnectedMask__Q33ipl7utility4wpadFv
/* 813BDB68 | 90 7E 00 74 */	stw r3, 0x74(r30)
/* 813BDB6C | 3B E0 00 01 */	li r31, 0x1
.L_813BDB70:
/* 813BDB70 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BDB74 | 4B FA CB 91 */	bl calc__Q33ipl6layout6ObjectFv
/* 813BDB78 | 7F E3 FB 78 */	mr r3, r31
/* 813BDB7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BDB80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BDB84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BDB88 | 7C 08 03 A6 */	mtlr r0
/* 813BDB8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BDB90 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene8skHealthFv

# .text:0x5BC | 0x813BDB94 | size: 0x140
# ipl::scene::skHealth::calcNormal()
.fn calcNormal__Q33ipl5scene8skHealthFv, global
/* 813BDB94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BDB98 | 7C 08 02 A6 */	mflr r0
/* 813BDB9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BDBA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BDBA4 | 48 23 B9 25 */	bl _savegpr_29
/* 813BDBA8 | 7C 7D 1B 78 */	mr r29, r3
/* 813BDBAC | 3B E0 00 00 */	li r31, 0x0
/* 813BDBB0 | 4B FA 6F 69 */	bl getWpadConnectedMask__Q33ipl7utility4wpadFv
/* 813BDBB4 | 7C 7E 1B 78 */	mr r30, r3
/* 813BDBB8 | 7F A3 EB 78 */	mr r3, r29
/* 813BDBBC | 48 00 02 A9 */	bl check_safe_mode__Q33ipl5scene8skHealthFv
/* 813BDBC0 | 48 17 80 D9 */	bl OSGetTick
/* 813BDBC4 | 3C 80 80 00 */	lis r4, 0x8000
/* 813BDBC8 | 80 BD 00 6C */	lwz r5, 0x6c(r29)
/* 813BDBCC | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813BDBD0 | 38 00 03 E8 */	li r0, 0x3e8
/* 813BDBD4 | 7C A5 18 50 */	subf r5, r5, r3
/* 813BDBD8 | 54 83 F0 BE */	srwi r3, r4, 2
/* 813BDBDC | 7C 03 03 96 */	divwu r0, r3, r0
/* 813BDBE0 | 7C 05 03 96 */	divwu r0, r5, r0
/* 813BDBE4 | 28 00 07 D0 */	cmplwi r0, 0x7d0
/* 813BDBE8 | 40 80 00 08 */	bge .L_813BDBF0
/* 813BDBEC | 93 DD 00 74 */	stw r30, 0x74(r29)
.L_813BDBF0:
/* 813BDBF0 | 7F A3 EB 78 */	mr r3, r29
/* 813BDBF4 | 48 00 03 89 */	bl finish_safe_mode_check__Q33ipl5scene8skHealthCFv
/* 813BDBF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDBFC | 41 82 00 B4 */	beq .L_813BDCB0
/* 813BDC00 | 4B F7 7D A9 */	bl getMasterController__Q23ipl6SystemFv
/* 813BDC04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDC08 | 3C 80 00 50 */	lis r4, 0x50
/* 813BDC0C | 38 84 0C 00 */	addi r4, r4, 0xc00
/* 813BDC10 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BDC14 | 7D 89 03 A6 */	mtctr r12
/* 813BDC18 | 4E 80 04 21 */	bctrl
/* 813BDC1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDC20 | 40 82 00 48 */	bne .L_813BDC68
/* 813BDC24 | 80 1D 00 74 */	lwz r0, 0x74(r29)
/* 813BDC28 | 7C 00 F0 40 */	cmplw r0, r30
/* 813BDC2C | 40 82 00 3C */	bne .L_813BDC68
/* 813BDC30 | 48 17 80 69 */	bl OSGetTick
/* 813BDC34 | 3C 80 80 00 */	lis r4, 0x8000
/* 813BDC38 | 80 BD 00 6C */	lwz r5, 0x6c(r29)
/* 813BDC3C | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813BDC40 | 38 00 03 E8 */	li r0, 0x3e8
/* 813BDC44 | 7C A5 18 50 */	subf r5, r5, r3
/* 813BDC48 | 54 83 F0 BE */	srwi r3, r4, 2
/* 813BDC4C | 7C 03 03 96 */	divwu r0, r3, r0
/* 813BDC50 | 7C 05 03 96 */	divwu r0, r5, r0
/* 813BDC54 | 28 00 EA 60 */	cmplwi r0, 0xea60
/* 813BDC58 | 41 81 00 10 */	bgt .L_813BDC68
/* 813BDC5C | 88 1D 00 7D */	lbz r0, 0x7d(r29)
/* 813BDC60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDC64 | 41 82 00 4C */	beq .L_813BDCB0
.L_813BDC68:
/* 813BDC68 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813BDC6C | 7C 03 F0 40 */	cmplw r3, r30
/* 813BDC70 | 41 82 00 1C */	beq .L_813BDC8C
/* 813BDC74 | 7F C4 F3 78 */	mr r4, r30
/* 813BDC78 | 4B FA 6E 69 */	bl isIncreaseConnectedWpad__Q33ipl7utility4wpadFUlUl
/* 813BDC7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDC80 | 40 82 00 0C */	bne .L_813BDC8C
/* 813BDC84 | 93 DD 00 74 */	stw r30, 0x74(r29)
/* 813BDC88 | 48 00 00 28 */	b .L_813BDCB0
.L_813BDC8C:
/* 813BDC8C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BDC90 | 3C 80 81 65 */	lis r4, lbl_8164FA90@ha
/* 813BDC94 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BDC98 | 38 84 FA 90 */	addi r4, r4, lbl_8164FA90@l
/* 813BDC9C | 4B FA D7 D1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BDCA0 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BDCA4 | 38 80 00 02 */	li r4, 0x2
/* 813BDCA8 | 4B FA CC 51 */	bl start__Q33ipl6layout6ObjectFi
/* 813BDCAC | 3B E0 00 01 */	li r31, 0x1
.L_813BDCB0:
/* 813BDCB0 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BDCB4 | 4B FA CA 51 */	bl calc__Q33ipl6layout6ObjectFv
/* 813BDCB8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BDCBC | 7F E3 FB 78 */	mr r3, r31
/* 813BDCC0 | 48 23 B8 55 */	bl _restgpr_29
/* 813BDCC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BDCC8 | 7C 08 03 A6 */	mtlr r0
/* 813BDCCC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BDCD0 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene8skHealthFv

# .text:0x6FC | 0x813BDCD4 | size: 0x140
# ipl::scene::skHealth::calcFadeout()
.fn calcFadeout__Q33ipl5scene8skHealthFv, global
/* 813BDCD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BDCD8 | 7C 08 02 A6 */	mflr r0
/* 813BDCDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BDCE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BDCE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BDCE8 | 7C 7E 1B 78 */	mr r30, r3
/* 813BDCEC | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813BDCF0 | 4B FA CA 15 */	bl calc__Q33ipl6layout6ObjectFv
/* 813BDCF4 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BDCF8 | 38 80 00 02 */	li r4, 0x2
/* 813BDCFC | 4B FA CD D5 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813BDD00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDD04 | 40 82 00 40 */	bne .L_813BDD44
/* 813BDD08 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BDD0C | 38 80 00 01 */	li r4, 0x1
/* 813BDD10 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BDD14 | 98 83 02 BE */	stb r4, 0x2be(r3)
/* 813BDD18 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813BDD1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDD20 | 40 82 00 08 */	bne .L_813BDD28
/* 813BDD24 | 98 83 02 BF */	stb r4, 0x2bf(r3)
.L_813BDD28:
/* 813BDD28 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BDD2C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BDD30 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813BDD34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDD38 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BDD3C | 7D 89 03 A6 */	mtctr r12
/* 813BDD40 | 4E 80 04 21 */	bctrl
.L_813BDD44:
/* 813BDD44 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BDD48 | 38 80 00 00 */	li r4, 0x0
/* 813BDD4C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BDD50 | 88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 813BDD54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDD58 | 41 82 00 14 */	beq .L_813BDD6C
/* 813BDD5C | 88 03 02 B4 */	lbz r0, 0x2b4(r3)
/* 813BDD60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDD64 | 41 82 00 08 */	beq .L_813BDD6C
/* 813BDD68 | 38 80 00 01 */	li r4, 0x1
.L_813BDD6C:
/* 813BDD6C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813BDD70 | 40 82 00 38 */	bne .L_813BDDA8
/* 813BDD74 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BDD78 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BDD7C | 88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 813BDD80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDD84 | 41 82 00 10 */	beq .L_813BDD94
/* 813BDD88 | 88 03 02 BB */	lbz r0, 0x2bb(r3)
/* 813BDD8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDD90 | 40 82 00 18 */	bne .L_813BDDA8
.L_813BDD94:
/* 813BDD94 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BDD98 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BDD9C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813BDDA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDDA4 | 41 82 00 54 */	beq .L_813BDDF8
.L_813BDDA8:
/* 813BDDA8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BDDAC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BDDB0 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813BDDB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDDB8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813BDDBC | 7D 89 03 A6 */	mtctr r12
/* 813BDDC0 | 4E 80 04 21 */	bctrl
/* 813BDDC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDDC8 | 40 82 00 30 */	bne .L_813BDDF8
/* 813BDDCC | 80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 813BDDD0 | 38 00 00 01 */	li r0, 0x1
/* 813BDDD4 | 7F C3 F3 78 */	mr r3, r30
/* 813BDDD8 | 38 A0 00 00 */	li r5, 0x0
/* 813BDDDC | 98 04 00 3D */	stb r0, 0x3d(r4)
/* 813BDDE0 | 38 80 00 04 */	li r4, 0x4
/* 813BDDE4 | 80 DF 00 9C */	lwz r6, 0x9c(r31)
/* 813BDDE8 | 90 06 00 08 */	stw r0, 0x8(r6)
/* 813BDDEC | 48 04 C1 A9 */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 813BDDF0 | 38 60 00 01 */	li r3, 0x1
/* 813BDDF4 | 48 00 00 08 */	b .L_813BDDFC
.L_813BDDF8:
/* 813BDDF8 | 38 60 00 00 */	li r3, 0x0
.L_813BDDFC:
/* 813BDDFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BDE00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BDE04 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BDE08 | 7C 08 03 A6 */	mtlr r0
/* 813BDE0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BDE10 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene8skHealthFv

# .text:0x83C | 0x813BDE14 | size: 0x50
# ipl::scene::skHealth::draw()
.fn draw__Q33ipl5scene8skHealthFv, global
/* 813BDE14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BDE18 | 7C 08 02 A6 */	mflr r0
/* 813BDE1C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813BDE20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BDE24 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813BDE28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BDE2C | 7C 7F 1B 78 */	mr r31, r3
/* 813BDE30 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813BDE34 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813BDE38 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BDE3C | 40 82 00 14 */	bne .L_813BDE50
/* 813BDE40 | 38 60 00 00 */	li r3, 0x0
/* 813BDE44 | 4B FA 4C 29 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813BDE48 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BDE4C | 4B FA C9 51 */	bl draw__Q33ipl6layout6ObjectFv
.L_813BDE50:
/* 813BDE50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BDE54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BDE58 | 7C 08 03 A6 */	mtlr r0
/* 813BDE5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BDE60 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene8skHealthFv

# .text:0x88C | 0x813BDE64 | size: 0x118
# ipl::scene::skHealth::check_safe_mode()
.fn check_safe_mode__Q33ipl5scene8skHealthFv, global
/* 813BDE64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BDE68 | 7C 08 02 A6 */	mflr r0
/* 813BDE6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BDE70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BDE74 | 7C 7F 1B 78 */	mr r31, r3
/* 813BDE78 | 88 03 00 7C */	lbz r0, 0x7c(r3)
/* 813BDE7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDE80 | 40 82 00 58 */	bne .L_813BDED8
/* 813BDE84 | 4B F7 7B 25 */	bl getMasterController__Q23ipl6SystemFv
/* 813BDE88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDE8C | 38 80 00 10 */	li r4, 0x10
/* 813BDE90 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BDE94 | 7D 89 03 A6 */	mtctr r12
/* 813BDE98 | 4E 80 04 21 */	bctrl
/* 813BDE9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDEA0 | 41 82 00 C8 */	beq .L_813BDF68
/* 813BDEA4 | 4B F7 7B 05 */	bl getMasterController__Q23ipl6SystemFv
/* 813BDEA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDEAC | 38 80 10 00 */	li r4, 0x1000
/* 813BDEB0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BDEB4 | 7D 89 03 A6 */	mtctr r12
/* 813BDEB8 | 4E 80 04 21 */	bctrl
/* 813BDEBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDEC0 | 41 82 00 A8 */	beq .L_813BDF68
/* 813BDEC4 | 48 17 7D D5 */	bl OSGetTick
/* 813BDEC8 | 38 00 00 01 */	li r0, 0x1
/* 813BDECC | 90 7F 00 78 */	stw r3, 0x78(r31)
/* 813BDED0 | 98 1F 00 7C */	stb r0, 0x7c(r31)
/* 813BDED4 | 48 00 00 94 */	b .L_813BDF68
.L_813BDED8:
/* 813BDED8 | 4B F7 7A D1 */	bl getMasterController__Q23ipl6SystemFv
/* 813BDEDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDEE0 | 38 80 00 10 */	li r4, 0x10
/* 813BDEE4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BDEE8 | 7D 89 03 A6 */	mtctr r12
/* 813BDEEC | 4E 80 04 21 */	bctrl
/* 813BDEF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDEF4 | 41 82 00 24 */	beq .L_813BDF18
/* 813BDEF8 | 4B F7 7A B1 */	bl getMasterController__Q23ipl6SystemFv
/* 813BDEFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDF00 | 38 80 10 00 */	li r4, 0x1000
/* 813BDF04 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BDF08 | 7D 89 03 A6 */	mtctr r12
/* 813BDF0C | 4E 80 04 21 */	bctrl
/* 813BDF10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDF14 | 40 82 00 14 */	bne .L_813BDF28
.L_813BDF18:
/* 813BDF18 | 38 00 00 00 */	li r0, 0x0
/* 813BDF1C | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 813BDF20 | 98 1F 00 7C */	stb r0, 0x7c(r31)
/* 813BDF24 | 48 00 00 44 */	b .L_813BDF68
.L_813BDF28:
/* 813BDF28 | 48 17 7D 71 */	bl OSGetTick
/* 813BDF2C | 3C 80 80 00 */	lis r4, 0x8000
/* 813BDF30 | 80 BF 00 78 */	lwz r5, 0x78(r31)
/* 813BDF34 | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813BDF38 | 38 00 03 E8 */	li r0, 0x3e8
/* 813BDF3C | 7C A5 18 50 */	subf r5, r5, r3
/* 813BDF40 | 54 83 F0 BE */	srwi r3, r4, 2
/* 813BDF44 | 7C 03 03 96 */	divwu r0, r3, r0
/* 813BDF48 | 7C 05 03 96 */	divwu r0, r5, r0
/* 813BDF4C | 28 00 0B B8 */	cmplwi r0, 0xbb8
/* 813BDF50 | 40 81 00 18 */	ble .L_813BDF68
/* 813BDF54 | 38 00 00 01 */	li r0, 0x1
/* 813BDF58 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BDF5C | 98 1F 00 7D */	stb r0, 0x7d(r31)
/* 813BDF60 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BDF64 | 98 03 02 BC */	stb r0, 0x2bc(r3)
.L_813BDF68:
/* 813BDF68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BDF6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BDF70 | 7C 08 03 A6 */	mtlr r0
/* 813BDF74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BDF78 | 4E 80 00 20 */	blr
.endfn check_safe_mode__Q33ipl5scene8skHealthFv

# .text:0x9A4 | 0x813BDF7C | size: 0x88
# ipl::scene::skHealth::finish_safe_mode_check() const
.fn finish_safe_mode_check__Q33ipl5scene8skHealthCFv, global
/* 813BDF7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BDF80 | 7C 08 02 A6 */	mflr r0
/* 813BDF84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BDF88 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BDF8C | 3B E0 00 00 */	li r31, 0x0
/* 813BDF90 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BDF94 | 7C 7E 1B 78 */	mr r30, r3
/* 813BDF98 | 4B F7 7A 11 */	bl getMasterController__Q23ipl6SystemFv
/* 813BDF9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDFA0 | 38 80 00 10 */	li r4, 0x10
/* 813BDFA4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BDFA8 | 7D 89 03 A6 */	mtctr r12
/* 813BDFAC | 4E 80 04 21 */	bctrl
/* 813BDFB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDFB4 | 40 82 00 24 */	bne .L_813BDFD8
/* 813BDFB8 | 4B F7 79 F1 */	bl getMasterController__Q23ipl6SystemFv
/* 813BDFBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BDFC0 | 38 80 10 00 */	li r4, 0x1000
/* 813BDFC4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BDFC8 | 7D 89 03 A6 */	mtctr r12
/* 813BDFCC | 4E 80 04 21 */	bctrl
/* 813BDFD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BDFD4 | 41 82 00 10 */	beq .L_813BDFE4
.L_813BDFD8:
/* 813BDFD8 | 88 1E 00 7D */	lbz r0, 0x7d(r30)
/* 813BDFDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BDFE0 | 41 82 00 08 */	beq .L_813BDFE8
.L_813BDFE4:
/* 813BDFE4 | 3B E0 00 01 */	li r31, 0x1
.L_813BDFE8:
/* 813BDFE8 | 7F E3 FB 78 */	mr r3, r31
/* 813BDFEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BDFF0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BDFF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BDFF8 | 7C 08 03 A6 */	mtlr r0
/* 813BDFFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BE000 | 4E 80 00 20 */	blr
.endfn finish_safe_mode_check__Q33ipl5scene8skHealthCFv

# .text:0xA2C | 0x813BE004 | size: 0x4
# ipl::scene::FaderSceneBase::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene14FaderSceneBaseFv, global
/* 813BE004 | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene14FaderSceneBaseFv

# .text:0xA30 | 0x813BE008 | size: 0x8
.fn "@20@__dt__Q33ipl5scene8skHealthFv", global
/* 813BE008 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813BE00C | 4B FF F6 40 */	b __dt__Q33ipl5scene8skHealthFv
.endfn "@20@__dt__Q33ipl5scene8skHealthFv"

# 0x8164F8B8..0x8164FB08 | size: 0x250
.data
.balign 8

# .data:0x0 | 0x8164F8B8 | size: 0xB
.obj lbl_8164F8B8, global
	.string "Has_US_ENG"
.endobj lbl_8164F8B8

# .data:0xB | 0x8164F8C3 | size: 0xB
.obj lbl_8164F8C3, global
	.string "Has_US_FRA"
.endobj lbl_8164F8C3

# .data:0x16 | 0x8164F8CE | size: 0xB
.obj lbl_8164F8CE, global
	.string "Has_US_SPA"
.endobj lbl_8164F8CE

# .data:0x21 | 0x8164F8D9 | size: 0xB
.obj lbl_8164F8D9, global
	.string "Has_EU_ENG"
.endobj lbl_8164F8D9

# .data:0x2C | 0x8164F8E4 | size: 0xB
.obj lbl_8164F8E4, global
	.string "Has_EU_FRA"
.endobj lbl_8164F8E4

# .data:0x37 | 0x8164F8EF | size: 0xB
.obj lbl_8164F8EF, global
	.string "Has_EU_GER"
.endobj lbl_8164F8EF

# .data:0x42 | 0x8164F8FA | size: 0xB
.obj lbl_8164F8FA, global
	.string "Has_EU_ITA"
.endobj lbl_8164F8FA

# .data:0x4D | 0x8164F905 | size: 0xB
.obj lbl_8164F905, global
	.string "Has_EU_SPA"
.endobj lbl_8164F905

# .data:0x58 | 0x8164F910 | size: 0xC
.obj lbl_8164F910, global
	.4byte 0x4861735F
	.4byte 0x45555F4E
	.4byte 0x45440000
.endobj lbl_8164F910

# .data:0x64 | 0x8164F91C | size: 0x30
# ipl::scene::has_pane_name
.obj has_pane_name__Q23ipl5scene, global
	.4byte lbl_81696B30
	.4byte lbl_8164F8B8
	.4byte lbl_8164F8C3
	.4byte lbl_8164F8CE
	.4byte lbl_8164F8D9
	.4byte lbl_8164F8E4
	.4byte lbl_8164F8EF
	.4byte lbl_8164F8FA
	.4byte lbl_8164F905
	.4byte lbl_8164F910
	.4byte lbl_81696B38
	.4byte lbl_81696B40
.endobj has_pane_name__Q23ipl5scene

# .data:0x94 | 0x8164F94C | size: 0x9
.obj lbl_8164F94C, global
	.string "Push_JPN"
.endobj lbl_8164F94C

# .data:0x9D | 0x8164F955 | size: 0xC
.obj lbl_8164F955, global
	.string "Push_US_ENG"
.endobj lbl_8164F955

# .data:0xA9 | 0x8164F961 | size: 0xC
.obj lbl_8164F961, global
	.string "Push_US_FRA"
.endobj lbl_8164F961

# .data:0xB5 | 0x8164F96D | size: 0xC
.obj lbl_8164F96D, global
	.string "Push_US_SPA"
.endobj lbl_8164F96D

# .data:0xC1 | 0x8164F979 | size: 0xC
.obj lbl_8164F979, global
	.string "Push_EU_ENG"
.endobj lbl_8164F979

# .data:0xCD | 0x8164F985 | size: 0xC
.obj lbl_8164F985, global
	.string "Push_EU_FRA"
.endobj lbl_8164F985

# .data:0xD9 | 0x8164F991 | size: 0xC
.obj lbl_8164F991, global
	.string "Push_EU_GER"
.endobj lbl_8164F991

# .data:0xE5 | 0x8164F99D | size: 0xC
.obj lbl_8164F99D, global
	.string "Push_EU_ITA"
.endobj lbl_8164F99D

# .data:0xF1 | 0x8164F9A9 | size: 0xC
.obj lbl_8164F9A9, global
	.string "Push_EU_SPA"
.endobj lbl_8164F9A9

# .data:0xFD | 0x8164F9B5 | size: 0xC
.obj lbl_8164F9B5, global
	.string "Push_EU_NED"
.endobj lbl_8164F9B5

# .data:0x109 | 0x8164F9C1 | size: 0x9
.obj lbl_8164F9C1, global
	.string "Push_KOR"
.endobj lbl_8164F9C1

# .data:0x112 | 0x8164F9CA | size: 0xA
.obj lbl_8164F9CA, global
	.4byte 0x50757368
	.4byte 0x5F43484E
	.2byte 0x0000
.endobj lbl_8164F9CA

# .data:0x11C | 0x8164F9D4 | size: 0x30
# ipl::scene::push_pane_name
.obj push_pane_name__Q23ipl5scene, global
	.4byte lbl_8164F94C
	.4byte lbl_8164F955
	.4byte lbl_8164F961
	.4byte lbl_8164F96D
	.4byte lbl_8164F979
	.4byte lbl_8164F985
	.4byte lbl_8164F991
	.4byte lbl_8164F99D
	.4byte lbl_8164F9A9
	.4byte lbl_8164F9B5
	.4byte lbl_8164F9C1
	.4byte lbl_8164F9CA
.endobj push_pane_name__Q23ipl5scene

# .data:0x14C | 0x8164FA04 | size: 0xC
.obj lbl_8164FA04, global
	.4byte 0x6865616C
	.4byte 0x74682E61
	.4byte 0x73680000
.endobj lbl_8164FA04

# .data:0x158 | 0x8164FA10 | size: 0x30
.obj jumptable_8164FA10, local
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD770
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD778
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD7B4
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD824
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD824
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD824
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD818
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD824
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD824
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD824
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD824
	.rel getCountryIndex___Q33ipl5scene8skHealthFv, .L_813BD820
.endobj jumptable_8164FA10

# .data:0x188 | 0x8164FA40 | size: 0x50
.obj gap_08_8164FA40_data, global
.hidden gap_08_8164FA40_data
	.4byte 0x69745F48
	.4byte 0x61735F61
	.4byte 0x2E62726C
	.4byte 0x79740069
	.4byte 0x745F4861
	.4byte 0x735F615F
	.4byte 0x5365656E
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4861735F
	.4byte 0x615F5075
	.4byte 0x73682E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4861735F
	.4byte 0x615F5365
	.4byte 0x656E4F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
.endobj gap_08_8164FA40_data

# .data:0x1D8 | 0x8164FA90 | size: 0x10
.obj lbl_8164FA90, global
	.string "WIPL_SE_BT_PUSH"
.endobj lbl_8164FA90

# .data:0x1E8 | 0x8164FAA0 | size: 0x68
# ipl::scene::skHealth::__vtable
.obj __vt__Q33ipl5scene8skHealth, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene8skHealthFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene8skHealthFv"
	.4byte isReady__Q33ipl5scene8skHealthCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene8skHealthFv
	.4byte create__Q33ipl5scene8skHealthFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene8skHealthFv
	.4byte destroy__Q33ipl5scene8skHealthFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene8skHealthFv
	.4byte calcNormal__Q33ipl5scene8skHealthFv
	.4byte calcFadeout__Q33ipl5scene8skHealthFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
.endobj __vt__Q33ipl5scene8skHealth

# 0x81696B30..0x81696B60 | size: 0x30
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696B30 | size: 0x8
.obj lbl_81696B30, global
	.string "Has_JPN"
.endobj lbl_81696B30

# .sdata:0x8 | 0x81696B38 | size: 0x8
.obj lbl_81696B38, global
	.string "Has_KOR"
.endobj lbl_81696B38

# .sdata:0x10 | 0x81696B40 | size: 0x8
.obj lbl_81696B40, global
	.string "Has_CHN"
.endobj lbl_81696B40

# .sdata:0x18 | 0x81696B48 | size: 0x4
.obj lbl_81696B48, global
	.string "arc"
.endobj lbl_81696B48

# .sdata:0x1C | 0x81696B4C | size: 0x6
.obj lbl_81696B4C, global
	.string "G_All"
.endobj lbl_81696B4C

# .sdata:0x22 | 0x81696B52 | size: 0x7
.obj lbl_81696B52, global
	.string "G_Push"
.endobj lbl_81696B52

# .sdata:0x29 | 0x81696B59 | size: 0x7
.obj gap_11_81696B59_sdata, global
.hidden gap_11_81696B59_sdata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_11_81696B59_sdata
