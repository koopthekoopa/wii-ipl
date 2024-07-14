.include "macros.inc"
.file "iplTree.cpp"

# 0x813626EC - 0x81362850
.text
.balign 4

# ipl::utility::RangeCheckGELTS32(long, long, long)
.fn RangeCheckGELTS32__Q23ipl7utilityFlll, global
/* 813626EC 00030AEC  7C 03 20 00 */	cmpw r3, r4
/* 813626F0 00030AF0  38 00 00 00 */	li r0, 0x0
/* 813626F4 00030AF4  41 80 00 10 */	blt .L_81362704
/* 813626F8 00030AF8  7C 03 28 00 */	cmpw r3, r5
/* 813626FC 00030AFC  40 80 00 08 */	bge .L_81362704
/* 81362700 00030B00  38 00 00 01 */	li r0, 0x1
.L_81362704:
/* 81362704 00030B04  7C 03 03 78 */	mr r3, r0
/* 81362708 00030B08  4E 80 00 20 */	blr
.endfn RangeCheckGELTS32__Q23ipl7utilityFlll

# ipl::utility::Tree::Tree()
.fn __ct__Q33ipl7utility4TreeFv, global
/* 8136270C 00030B0C  3C 80 81 64 */	lis r4, lbl_816411E8@ha
/* 81362710 00030B10  38 00 00 00 */	li r0, 0x0
/* 81362714 00030B14  38 84 11 E8 */	addi r4, r4, lbl_816411E8@l
/* 81362718 00030B18  90 03 00 04 */	stw r0, 0x4(r3)
/* 8136271C 00030B1C  90 83 00 00 */	stw r4, 0x0(r3)
/* 81362720 00030B20  90 03 00 08 */	stw r0, 0x8(r3)
/* 81362724 00030B24  90 03 00 0C */	stw r0, 0xc(r3)
/* 81362728 00030B28  90 03 00 10 */	stw r0, 0x10(r3)
/* 8136272C 00030B2C  4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility4TreeFv

# ipl::utility::Tree::attach(ipl::utility::Tree*)
.fn attach__Q33ipl7utility4TreeFPQ33ipl7utility4Tree, global
/* 81362730 00030B30  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81362734 00030B34  2C 05 00 00 */	cmpwi r5, 0x0
/* 81362738 00030B38  40 82 00 18 */	bne .L_81362750
/* 8136273C 00030B3C  90 83 00 08 */	stw r4, 0x8(r3)
/* 81362740 00030B40  90 64 00 04 */	stw r3, 0x4(r4)
/* 81362744 00030B44  4E 80 00 20 */	blr
/* 81362748 00030B48  48 00 00 08 */	b .L_81362750
.L_8136274C:
/* 8136274C 00030B4C  7C 05 03 78 */	mr r5, r0
.L_81362750:
/* 81362750 00030B50  80 05 00 0C */	lwz r0, 0xc(r5)
/* 81362754 00030B54  2C 00 00 00 */	cmpwi r0, 0x0
/* 81362758 00030B58  40 82 FF F4 */	bne .L_8136274C
/* 8136275C 00030B5C  90 85 00 0C */	stw r4, 0xc(r5)
/* 81362760 00030B60  90 A4 00 10 */	stw r5, 0x10(r4)
/* 81362764 00030B64  90 64 00 04 */	stw r3, 0x4(r4)
/* 81362768 00030B68  4E 80 00 20 */	blr
.endfn attach__Q33ipl7utility4TreeFPQ33ipl7utility4Tree

# ipl::utility::Tree::insert(ipl::utility::Tree*, ipl::utility::Tree*)
.fn insert__Q33ipl7utility4TreeFPQ33ipl7utility4TreePQ33ipl7utility4Tree, global
/* 8136276C 00030B6C  90 64 00 04 */	stw r3, 0x4(r4)
/* 81362770 00030B70  80 05 00 10 */	lwz r0, 0x10(r5)
/* 81362774 00030B74  90 04 00 10 */	stw r0, 0x10(r4)
/* 81362778 00030B78  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8136277C 00030B7C  80 C5 00 10 */	lwz r6, 0x10(r5)
/* 81362780 00030B80  2C 06 00 00 */	cmpwi r6, 0x0
/* 81362784 00030B84  41 82 00 08 */	beq .L_8136278C
/* 81362788 00030B88  90 86 00 0C */	stw r4, 0xc(r6)
.L_8136278C:
/* 8136278C 00030B8C  90 85 00 10 */	stw r4, 0x10(r5)
/* 81362790 00030B90  80 03 00 08 */	lwz r0, 0x8(r3)
/* 81362794 00030B94  7C 00 28 40 */	cmplw r0, r5
/* 81362798 00030B98  4C 82 00 20 */	bnelr
/* 8136279C 00030B9C  90 83 00 08 */	stw r4, 0x8(r3)
/* 813627A0 00030BA0  4E 80 00 20 */	blr
.endfn insert__Q33ipl7utility4TreeFPQ33ipl7utility4TreePQ33ipl7utility4Tree

# ipl::utility::Tree::detach()
.fn detach__Q33ipl7utility4TreeFv, global
/* 813627A4 00030BA4  80 83 00 04 */	lwz r4, 0x4(r3)
/* 813627A8 00030BA8  2C 04 00 00 */	cmpwi r4, 0x0
/* 813627AC 00030BAC  41 82 00 18 */	beq .L_813627C4
/* 813627B0 00030BB0  80 04 00 08 */	lwz r0, 0x8(r4)
/* 813627B4 00030BB4  7C 00 18 40 */	cmplw r0, r3
/* 813627B8 00030BB8  40 82 00 0C */	bne .L_813627C4
/* 813627BC 00030BBC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 813627C0 00030BC0  90 04 00 08 */	stw r0, 0x8(r4)
.L_813627C4:
/* 813627C4 00030BC4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 813627C8 00030BC8  2C 04 00 00 */	cmpwi r4, 0x0
/* 813627CC 00030BCC  41 82 00 0C */	beq .L_813627D8
/* 813627D0 00030BD0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 813627D4 00030BD4  90 04 00 10 */	stw r0, 0x10(r4)
.L_813627D8:
/* 813627D8 00030BD8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 813627DC 00030BDC  2C 04 00 00 */	cmpwi r4, 0x0
/* 813627E0 00030BE0  4D 82 00 20 */	beqlr
/* 813627E4 00030BE4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 813627E8 00030BE8  90 04 00 0C */	stw r0, 0xc(r4)
/* 813627EC 00030BEC  4E 80 00 20 */	blr
.endfn detach__Q33ipl7utility4TreeFv

# ipl::utility::Tree::getPrev()
.fn getPrev__Q33ipl7utility4TreeFv, global
/* 813627F0 00030BF0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 813627F4 00030BF4  4E 80 00 20 */	blr
.endfn getPrev__Q33ipl7utility4TreeFv

# ipl::utility::Tree::getNext()
.fn getNext__Q33ipl7utility4TreeFv, global
/* 813627F8 00030BF8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 813627FC 00030BFC  4E 80 00 20 */	blr
.endfn getNext__Q33ipl7utility4TreeFv

# ipl::utility::Tree::getChild()
.fn getChild__Q33ipl7utility4TreeFv, global
/* 81362800 00030C00  80 63 00 08 */	lwz r3, 0x8(r3)
/* 81362804 00030C04  4E 80 00 20 */	blr
.endfn getChild__Q33ipl7utility4TreeFv

# ipl::utility::Tree::getParent()
.fn getParent__Q33ipl7utility4TreeFv, global
/* 81362808 00030C08  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8136280C 00030C0C  4E 80 00 20 */	blr
.endfn getParent__Q33ipl7utility4TreeFv

# ipl::utility::Tree::~Tree()
.fn __dt__Q33ipl7utility4TreeFv, global
/* 81362810 00030C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81362814 00030C14  7C 08 02 A6 */	mflr r0
/* 81362818 00030C18  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136281C 00030C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81362820 00030C20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81362824 00030C24  7C 7F 1B 78 */	mr r31, r3
/* 81362828 00030C28  41 82 00 10 */	beq .L_81362838
/* 8136282C 00030C2C  2C 04 00 00 */	cmpwi r4, 0x0
/* 81362830 00030C30  40 81 00 08 */	ble .L_81362838
/* 81362834 00030C34  48 29 58 B1 */	bl __dl__FPv
.L_81362838:
/* 81362838 00030C38  7F E3 FB 78 */	mr r3, r31
/* 8136283C 00030C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81362840 00030C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81362844 00030C44  7C 08 03 A6 */	mtlr r0
/* 81362848 00030C48  38 21 00 10 */	addi r1, r1, 0x10
/* 8136284C 00030C4C  4E 80 00 20 */	blr
.endfn __dt__Q33ipl7utility4TreeFv

# 0x816411E8 - 0x81641208
.data
.balign 8

.obj lbl_816411E8, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl7utility4TreeFv
	.4byte getParent__Q33ipl7utility4TreeFv
	.4byte getChild__Q33ipl7utility4TreeFv
	.4byte getNext__Q33ipl7utility4TreeFv
	.4byte getPrev__Q33ipl7utility4TreeFv
	.4byte 0x00000000
.endobj lbl_816411E8
