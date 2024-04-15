.include "macros.inc"
.file "iplMessage.cpp"

# 0x8133E6FC - 0x8133E7D4
.text
.balign 4

# ipl::message::Message::Message()
.fn __ct__Q33ipl7message7MessageFv, global
/* 8133E6FC 0000CAFC  38 00 00 00 */	li r0, 0x0
/* 8133E700 0000CB00  90 03 00 00 */	stw r0, 0x0(r3)
/* 8133E704 0000CB04  90 03 00 04 */	stw r0, 0x4(r3)
/* 8133E708 0000CB08  90 03 00 08 */	stw r0, 0x8(r3)
/* 8133E70C 0000CB0C  4E 80 00 20 */	blr
.endfn __ct__Q33ipl7message7MessageFv

# ipl::message::Message::~Message()
.fn __dt__Q33ipl7message7MessageFv, global
/* 8133E710 0000CB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133E714 0000CB14  7C 08 02 A6 */	mflr r0
/* 8133E718 0000CB18  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133E71C 0000CB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133E720 0000CB20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133E724 0000CB24  7C 7F 1B 78 */	mr r31, r3
/* 8133E728 0000CB28  41 82 00 10 */	beq .L_8133E738
/* 8133E72C 0000CB2C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8133E730 0000CB30  40 81 00 08 */	ble .L_8133E738
/* 8133E734 0000CB34  48 2B 99 B1 */	bl fn_815F80E4
.L_8133E738:
/* 8133E738 0000CB38  7F E3 FB 78 */	mr r3, r31
/* 8133E73C 0000CB3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133E740 0000CB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133E744 0000CB44  7C 08 03 A6 */	mtlr r0
/* 8133E748 0000CB48  38 21 00 10 */	addi r1, r1, 0x10
/* 8133E74C 0000CB4C  4E 80 00 20 */	blr
.endfn __dt__Q33ipl7message7MessageFv

# ipl::message::Message::setResource(unsigned char*)
.fn setResource__Q33ipl7message7MessageFPUc, global
/* 8133E750 0000CB50  3C C0 49 4E */	lis r6, 0x494e
/* 8133E754 0000CB54  3C A0 44 41 */	lis r5, 0x4441
/* 8133E758 0000CB58  38 E0 00 00 */	li r7, 0x0
/* 8133E75C 0000CB5C  39 04 00 20 */	addi r8, r4, 0x20
/* 8133E760 0000CB60  38 C6 46 31 */	addi r6, r6, 0x4631
/* 8133E764 0000CB64  38 A5 54 31 */	addi r5, r5, 0x5431
/* 8133E768 0000CB68  48 00 00 44 */	b .L_8133E7AC
.L_8133E76C:
/* 8133E76C 0000CB6C  80 08 00 00 */	lwz r0, 0x0(r8)
/* 8133E770 0000CB70  7C 00 30 00 */	cmpw r0, r6
/* 8133E774 0000CB74  41 82 00 14 */	beq .L_8133E788
/* 8133E778 0000CB78  40 80 00 28 */	bge .L_8133E7A0
/* 8133E77C 0000CB7C  7C 00 28 00 */	cmpw r0, r5
/* 8133E780 0000CB80  41 82 00 18 */	beq .L_8133E798
/* 8133E784 0000CB84  48 00 00 1C */	b .L_8133E7A0
.L_8133E788:
/* 8133E788 0000CB88  38 08 00 10 */	addi r0, r8, 0x10
/* 8133E78C 0000CB8C  91 03 00 00 */	stw r8, 0x0(r3)
/* 8133E790 0000CB90  90 03 00 04 */	stw r0, 0x4(r3)
/* 8133E794 0000CB94  48 00 00 0C */	b .L_8133E7A0
.L_8133E798:
/* 8133E798 0000CB98  38 08 00 08 */	addi r0, r8, 0x8
/* 8133E79C 0000CB9C  90 03 00 08 */	stw r0, 0x8(r3)
.L_8133E7A0:
/* 8133E7A0 0000CBA0  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8133E7A4 0000CBA4  38 E7 00 01 */	addi r7, r7, 0x1
/* 8133E7A8 0000CBA8  7D 08 02 14 */	add r8, r8, r0
.L_8133E7AC:
/* 8133E7AC 0000CBAC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8133E7B0 0000CBB0  7C 07 00 40 */	cmplw r7, r0
/* 8133E7B4 0000CBB4  41 80 FF B8 */	blt .L_8133E76C
/* 8133E7B8 0000CBB8  4E 80 00 20 */	blr
.endfn setResource__Q33ipl7message7MessageFPUc

# ipl::message::Message::getMessage(unsigned long) const
.fn getMessage__Q33ipl7message7MessageCFUl, global
/* 8133E7BC 0000CBBC  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8133E7C0 0000CBC0  54 80 13 BA */	clrlslwi r0, r4, 16, 2
/* 8133E7C4 0000CBC4  80 63 00 08 */	lwz r3, 0x8(r3)
/* 8133E7C8 0000CBC8  7C 05 00 2E */	lwzx r0, r5, r0
/* 8133E7CC 0000CBCC  7C 63 02 14 */	add r3, r3, r0
/* 8133E7D0 0000CBD0  4E 80 00 20 */	blr
.endfn getMessage__Q33ipl7message7MessageCFUl
