.include "macros.inc"
.file "iplMessageManager.cpp"

# 0x8133E7D4..0x8133E984 | size: 0x1B0
.text
.balign 4

# .text:0x0 | 0x8133E7D4 | size: 0x50
# ipl::message::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl7message7ManagerFPQ23EGG4Heap, global
/* 8133E7D4 0000CBD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133E7D8 0000CBD8  7C 08 02 A6 */	mflr r0
/* 8133E7DC 0000CBDC  38 A0 00 04 */	li r5, 0x4
/* 8133E7E0 0000CBE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133E7E4 0000CBE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133E7E8 0000CBE8  7C 7F 1B 78 */	mr r31, r3
/* 8133E7EC 0000CBEC  38 60 00 0C */	li r3, 0xc
/* 8133E7F0 0000CBF0  48 2B 98 C1 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133E7F4 0000CBF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133E7F8 0000CBF8  41 82 00 08 */	beq .L_8133E800
/* 8133E7FC 0000CBFC  4B FF FF 01 */	bl __ct__Q33ipl7message7MessageFv
.L_8133E800:
/* 8133E800 0000CC00  90 7F 00 00 */	stw r3, 0x0(r31)
/* 8133E804 0000CC04  7F E3 FB 78 */	mr r3, r31
/* 8133E808 0000CC08  48 00 00 1D */	bl initMessage__Q33ipl7message7ManagerFv
/* 8133E80C 0000CC0C  7F E3 FB 78 */	mr r3, r31
/* 8133E810 0000CC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133E814 0000CC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133E818 0000CC18  7C 08 03 A6 */	mtlr r0
/* 8133E81C 0000CC1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8133E820 0000CC20  4E 80 00 20 */	blr
.endfn __ct__Q33ipl7message7ManagerFPQ23EGG4Heap

# .text:0x50 | 0x8133E824 | size: 0x160
# ipl::message::Manager::initMessage()
.fn initMessage__Q33ipl7message7ManagerFv, global
/* 8133E824 0000CC24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133E828 0000CC28  7C 08 02 A6 */	mflr r0
/* 8133E82C 0000CC2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133E830 0000CC30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133E834 0000CC34  7C 7F 1B 78 */	mr r31, r3
/* 8133E838 0000CC38  4B FF 71 B5 */	bl getLanguage__Q23ipl6SystemFv
/* 8133E83C 0000CC3C  28 03 00 09 */	cmplwi r3, 0x9
/* 8133E840 0000CC40  41 81 01 18 */	bgt .L_8133E958
/* 8133E844 0000CC44  3C 80 81 63 */	lis r4, jumptable_816350D8@ha
/* 8133E848 0000CC48  54 60 10 3A */	slwi r0, r3, 2
/* 8133E84C 0000CC4C  38 84 50 D8 */	addi r4, r4, jumptable_816350D8@l
/* 8133E850 0000CC50  7C 84 00 2E */	lwzx r4, r4, r0
/* 8133E854 0000CC54  7C 89 03 A6 */	mtctr r4
/* 8133E858 0000CC58  4E 80 04 20 */	bctr
.L_8133E85C:
/* 8133E85C 0000CC5C  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E860 0000CC60  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E864 0000CC64  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E868 0000CC68  80 84 01 30 */	lwz r4, 0x130(r4)
/* 8133E86C 0000CC6C  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E870 0000CC70  4B FF FE E1 */	bl setResource__Q33ipl7message7MessageFPUc
/* 8133E874 0000CC74  48 00 00 FC */	b .L_8133E970
.L_8133E878:
/* 8133E878 0000CC78  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E87C 0000CC7C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E880 0000CC80  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E884 0000CC84  80 84 01 34 */	lwz r4, 0x134(r4)
/* 8133E888 0000CC88  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E88C 0000CC8C  4B FF FE C5 */	bl setResource__Q33ipl7message7MessageFPUc
/* 8133E890 0000CC90  48 00 00 E0 */	b .L_8133E970
.L_8133E894:
/* 8133E894 0000CC94  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E898 0000CC98  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E89C 0000CC9C  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E8A0 0000CCA0  80 84 01 38 */	lwz r4, 0x138(r4)
/* 8133E8A4 0000CCA4  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E8A8 0000CCA8  4B FF FE A9 */	bl setResource__Q33ipl7message7MessageFPUc
/* 8133E8AC 0000CCAC  48 00 00 C4 */	b .L_8133E970
.L_8133E8B0:
/* 8133E8B0 0000CCB0  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E8B4 0000CCB4  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E8B8 0000CCB8  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E8BC 0000CCBC  80 84 01 3C */	lwz r4, 0x13c(r4)
/* 8133E8C0 0000CCC0  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E8C4 0000CCC4  4B FF FE 8D */	bl setResource__Q33ipl7message7MessageFPUc
/* 8133E8C8 0000CCC8  48 00 00 A8 */	b .L_8133E970
.L_8133E8CC:
/* 8133E8CC 0000CCCC  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E8D0 0000CCD0  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E8D4 0000CCD4  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E8D8 0000CCD8  80 84 01 40 */	lwz r4, 0x140(r4)
/* 8133E8DC 0000CCDC  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E8E0 0000CCE0  4B FF FE 71 */	bl setResource__Q33ipl7message7MessageFPUc
/* 8133E8E4 0000CCE4  48 00 00 8C */	b .L_8133E970
.L_8133E8E8:
/* 8133E8E8 0000CCE8  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E8EC 0000CCEC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E8F0 0000CCF0  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E8F4 0000CCF4  80 84 01 44 */	lwz r4, 0x144(r4)
/* 8133E8F8 0000CCF8  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E8FC 0000CCFC  4B FF FE 55 */	bl setResource__Q33ipl7message7MessageFPUc
/* 8133E900 0000CD00  48 00 00 70 */	b .L_8133E970
.L_8133E904:
/* 8133E904 0000CD04  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E908 0000CD08  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E90C 0000CD0C  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E910 0000CD10  80 84 01 48 */	lwz r4, 0x148(r4)
/* 8133E914 0000CD14  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E918 0000CD18  4B FF FE 39 */	bl setResource__Q33ipl7message7MessageFPUc
/* 8133E91C 0000CD1C  48 00 00 54 */	b .L_8133E970
.L_8133E920:
/* 8133E920 0000CD20  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E924 0000CD24  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E928 0000CD28  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E92C 0000CD2C  80 84 01 4C */	lwz r4, 0x14c(r4)
/* 8133E930 0000CD30  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E934 0000CD34  4B FF FE 1D */	bl setResource__Q33ipl7message7MessageFPUc
/* 8133E938 0000CD38  48 00 00 38 */	b .L_8133E970
.L_8133E93C:
/* 8133E93C 0000CD3C  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E940 0000CD40  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E944 0000CD44  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E948 0000CD48  80 84 01 54 */	lwz r4, 0x154(r4)
/* 8133E94C 0000CD4C  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E950 0000CD50  4B FF FE 01 */	bl setResource__Q33ipl7message7MessageFPUc
/* 8133E954 0000CD54  48 00 00 1C */	b .L_8133E970
.L_8133E958:
/* 8133E958 0000CD58  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133E95C 0000CD5C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E960 0000CD60  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133E964 0000CD64  80 84 01 30 */	lwz r4, 0x130(r4)
/* 8133E968 0000CD68  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8133E96C 0000CD6C  4B FF FD E5 */	bl setResource__Q33ipl7message7MessageFPUc
.L_8133E970:
/* 8133E970 0000CD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133E974 0000CD74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133E978 0000CD78  7C 08 03 A6 */	mtlr r0
/* 8133E97C 0000CD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8133E980 0000CD80  4E 80 00 20 */	blr
.endfn initMessage__Q33ipl7message7ManagerFv

# 0x816350D8..0x81635100 | size: 0x28
.data
.balign 8

# .data:0x0 | 0x816350D8 | size: 0x28
.obj jumptable_816350D8, local
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E8CC
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E85C
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E894
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E878
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E904
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E8B0
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E8E8
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E920
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E958
	.rel initMessage__Q33ipl7message7ManagerFv, .L_8133E93C
.endobj jumptable_816350D8
