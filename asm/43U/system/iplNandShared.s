.include "macros.inc"
.file "iplNandShared.cpp"

# 0x8133C6D8..0x8133CC34 | size: 0x55C
.text
.balign 4

# .text:0x0 | 0x8133C6D8 | size: 0x90
# ipl::nand::SharedFile::SharedFile(EGG::Heap*, const char*, unsigned long, int, unsigned long, unsigned long long, int)
.fn __ct__Q33ipl4nand10SharedFileFPQ23EGG4HeapPCcUliUlUxi, global
/* 8133C6D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133C6DC | 7C 08 02 A6 */	mflr r0
/* 8133C6E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133C6E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133C6E8 | 48 2B CD D9 */	bl _savegpr_27
/* 8133C6EC | 7D 00 43 78 */	mr r0, r8
/* 8133C6F0 | 83 E1 00 28 */	lwz r31, 0x28(r1)
/* 8133C6F4 | 7C DC 33 78 */	mr r28, r6
/* 8133C6F8 | 7D 3E 4B 78 */	mr r30, r9
/* 8133C6FC | 7D 5D 53 78 */	mr r29, r10
/* 8133C700 | 7C E8 3B 78 */	mr r8, r7
/* 8133C704 | 7C 7B 1B 78 */	mr r27, r3
/* 8133C708 | 7C 09 03 78 */	mr r9, r0
/* 8133C70C | 38 C0 00 00 */	li r6, 0x0
/* 8133C710 | 38 E0 00 00 */	li r7, 0x0
/* 8133C714 | 39 40 00 00 */	li r10, 0x0
/* 8133C718 | 4B FF EC 1D */	bl __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcP9ARCHandlePCciUlb
/* 8133C71C | 3C 60 81 63 */	lis r3, __vt__Q33ipl4nand10SharedFile@ha
/* 8133C720 | 38 00 00 00 */	li r0, 0x0
/* 8133C724 | 38 63 4D B8 */	addi r3, r3, __vt__Q33ipl4nand10SharedFile@l
/* 8133C728 | 38 80 FF FF */	li r4, -0x1
/* 8133C72C | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 8133C730 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133C734 | 7F 63 DB 78 */	mr r3, r27
/* 8133C738 | 93 9B 01 90 */	stw r28, 0x190(r27)
/* 8133C73C | 90 9B 01 94 */	stw r4, 0x194(r27)
/* 8133C740 | 93 BB 01 9C */	stw r29, 0x19c(r27)
/* 8133C744 | 93 DB 01 98 */	stw r30, 0x198(r27)
/* 8133C748 | 90 1B 01 A0 */	stw r0, 0x1a0(r27)
/* 8133C74C | 93 FB 01 A4 */	stw r31, 0x1a4(r27)
/* 8133C750 | 90 1B 01 A8 */	stw r0, 0x1a8(r27)
/* 8133C754 | 48 2B CD B9 */	bl _restgpr_27
/* 8133C758 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133C75C | 7C 08 03 A6 */	mtlr r0
/* 8133C760 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133C764 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4nand10SharedFileFPQ23EGG4HeapPCcUliUlUxi

# .text:0x90 | 0x8133C768 | size: 0x58
# ipl::nand::SharedFile::~SharedFile()
.fn __dt__Q33ipl4nand10SharedFileFv, global
/* 8133C768 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133C76C | 7C 08 02 A6 */	mflr r0
/* 8133C770 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C774 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133C778 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133C77C | 7C 9F 23 78 */	mr r31, r4
/* 8133C780 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133C784 | 7C 7E 1B 78 */	mr r30, r3
/* 8133C788 | 41 82 00 1C */	beq .L_8133C7A4
/* 8133C78C | 38 80 00 00 */	li r4, 0x0
/* 8133C790 | 4B FF ED 25 */	bl __dt__Q33ipl4nand4FileFv
/* 8133C794 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133C798 | 40 81 00 0C */	ble .L_8133C7A4
/* 8133C79C | 7F C3 F3 78 */	mr r3, r30
/* 8133C7A0 | 48 2B B9 45 */	bl __dl__FPv
.L_8133C7A4:
/* 8133C7A4 | 7F C3 F3 78 */	mr r3, r30
/* 8133C7A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133C7AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133C7B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133C7B4 | 7C 08 03 A6 */	mtlr r0
/* 8133C7B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133C7BC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl4nand10SharedFileFv

# .text:0xE8 | 0x8133C7C0 | size: 0x2D0
# ipl::nand::SharedFile::openTicketFile_()
.fn openTicketFile___Q33ipl4nand10SharedFileFv, global
/* 8133C7C0 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8133C7C4 | 7C 2C 0B 78 */	mr r12, r1
/* 8133C7C8 | 21 6B FE E0 */	subfic r11, r11, -0x120
/* 8133C7CC | 7C 21 59 6E */	stwux r1, r1, r11
/* 8133C7D0 | 7C 08 02 A6 */	mflr r0
/* 8133C7D4 | 7D 8B 63 78 */	mr r11, r12
/* 8133C7D8 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8133C7DC | 48 2B CC D5 */	bl _savegpr_23
/* 8133C7E0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8133C7E4 | 7C 7F 1B 78 */	mr r31, r3
/* 8133C7E8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8133C7EC | 3B A0 00 00 */	li r29, 0x0
/* 8133C7F0 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8133C7F4 | 3B 80 00 00 */	li r28, 0x0
/* 8133C7F8 | 3B 40 00 00 */	li r26, 0x0
/* 8133C7FC | 3B 60 00 00 */	li r27, 0x0
/* 8133C800 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C804 | 3B 00 00 00 */	li r24, 0x0
/* 8133C808 | 3B 20 00 00 */	li r25, 0x0
/* 8133C80C | 3A E0 00 00 */	li r23, 0x0
/* 8133C810 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133C814 | 38 80 00 E0 */	li r4, 0xe0
/* 8133C818 | 38 A0 FF E0 */	li r5, -0x20
/* 8133C81C | 7D 89 03 A6 */	mtctr r12
/* 8133C820 | 4E 80 04 21 */	bctrl
/* 8133C824 | 81 1F 01 A4 */	lwz r8, 0x1a4(r31)
/* 8133C828 | 7C 67 1B 78 */	mr r7, r3
/* 8133C82C | 90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8133C830 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8133C834 | 41 80 00 24 */	blt .L_8133C858
/* 8133C838 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8133C83C | 80 BF 01 98 */	lwz r5, 0x198(r31)
/* 8133C840 | 80 DF 01 9C */	lwz r6, 0x19c(r31)
/* 8133C844 | 48 02 91 05 */	bl GetTicketView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewi
/* 8133C848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C84C | 40 80 00 94 */	bge .L_8133C8E0
/* 8133C850 | 3B A0 00 64 */	li r29, 0x64
/* 8133C854 | 48 00 01 B0 */	b .L_8133CA04
.L_8133C858:
/* 8133C858 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8133C85C | 38 E1 00 20 */	addi r7, r1, 0x20
/* 8133C860 | 80 BF 01 98 */	lwz r5, 0x198(r31)
/* 8133C864 | 39 01 00 24 */	addi r8, r1, 0x24
/* 8133C868 | 80 DF 01 9C */	lwz r6, 0x19c(r31)
/* 8133C86C | 48 02 8F A9 */	bl GetTicketViewList__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP12ESTicketViewPUl
/* 8133C870 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C874 | 41 82 00 08 */	beq .L_8133C87C
/* 8133C878 | 48 00 01 8C */	b .L_8133CA04
.L_8133C87C:
/* 8133C87C | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8133C880 | 80 BF 01 98 */	lwz r5, 0x198(r31)
/* 8133C884 | 80 DF 01 9C */	lwz r6, 0x19c(r31)
/* 8133C888 | 80 E1 00 20 */	lwz r7, 0x20(r1)
/* 8133C88C | 81 01 00 24 */	lwz r8, 0x24(r1)
/* 8133C890 | 48 02 96 4D */	bl GetValidTicketIndex__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewUl
/* 8133C894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C898 | 41 80 01 6C */	blt .L_8133CA04
/* 8133C89C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133C8A0 | 7C 03 00 40 */	cmplw r3, r0
/* 8133C8A4 | 41 80 00 08 */	blt .L_8133C8AC
/* 8133C8A8 | 48 00 01 5C */	b .L_8133CA04
.L_8133C8AC:
/* 8133C8AC | 90 7F 01 A4 */	stw r3, 0x1a4(r31)
/* 8133C8B0 | 1C 03 00 D8 */	mulli r0, r3, 0xd8
/* 8133C8B4 | 80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 8133C8B8 | 38 A0 00 D8 */	li r5, 0xd8
/* 8133C8BC | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 8133C8C0 | 7C 84 02 14 */	add r4, r4, r0
/* 8133C8C4 | 4B FF 39 6D */	bl memcpy
/* 8133C8C8 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8133C8CC | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 8133C8D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C8D4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133C8D8 | 7D 89 03 A6 */	mtctr r12
/* 8133C8DC | 4E 80 04 21 */	bctrl
.L_8133C8E0:
/* 8133C8E0 | 80 7F 01 98 */	lwz r3, 0x198(r31)
/* 8133C8E4 | 80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 8133C8E8 | 80 BF 01 A0 */	lwz r5, 0x1a0(r31)
/* 8133C8EC | 80 DF 01 90 */	lwz r6, 0x190(r31)
/* 8133C8F0 | 48 28 18 C9 */	bl ES_OpenTitleContentFile
/* 8133C8F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C8F8 | 90 7F 01 94 */	stw r3, 0x194(r31)
/* 8133C8FC | 40 80 00 30 */	bge .L_8133C92C
/* 8133C900 | 80 9F 01 A0 */	lwz r4, 0x1a0(r31)
/* 8133C904 | 7C 7C 1B 78 */	mr r28, r3
/* 8133C908 | 83 7F 01 98 */	lwz r27, 0x198(r31)
/* 8133C90C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133C910 | 83 5F 01 9C */	lwz r26, 0x19c(r31)
/* 8133C914 | 41 82 00 0C */	beq .L_8133C920
/* 8133C918 | 83 24 00 04 */	lwz r25, 0x4(r4)
/* 8133C91C | 83 04 00 08 */	lwz r24, 0x8(r4)
.L_8133C920:
/* 8133C920 | 82 FF 01 90 */	lwz r23, 0x190(r31)
/* 8133C924 | 3B A0 01 90 */	li r29, 0x190
/* 8133C928 | 48 00 00 DC */	b .L_8133CA04
.L_8133C92C:
/* 8133C92C | 38 81 00 40 */	addi r4, r1, 0x40
/* 8133C930 | 38 A0 00 20 */	li r5, 0x20
/* 8133C934 | 48 28 19 1D */	bl ES_ReadContentFile
/* 8133C938 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C93C | 40 80 00 0C */	bge .L_8133C948
/* 8133C940 | 3B A0 01 F4 */	li r29, 0x1f4
/* 8133C944 | 48 00 00 C0 */	b .L_8133CA04
.L_8133C948:
/* 8133C948 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133C94C | 80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8133C950 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133C954 | 38 A0 FF E0 */	li r5, -0x20
/* 8133C958 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8133C95C | 38 04 00 1F */	addi r0, r4, 0x1f
/* 8133C960 | 54 1E 00 34 */	clrrwi r30, r0, 5
/* 8133C964 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C968 | 7F C4 F3 78 */	mr r4, r30
/* 8133C96C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133C970 | 7D 89 03 A6 */	mtctr r12
/* 8133C974 | 4E 80 04 21 */	bctrl
/* 8133C978 | 90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8133C97C | 38 80 00 00 */	li r4, 0x0
/* 8133C980 | 80 7F 01 94 */	lwz r3, 0x194(r31)
/* 8133C984 | 38 A0 00 00 */	li r5, 0x0
/* 8133C988 | 48 28 19 69 */	bl ES_SeekContentFile
/* 8133C98C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C990 | 41 80 00 30 */	blt .L_8133C9C0
/* 8133C994 | 80 7F 01 94 */	lwz r3, 0x194(r31)
/* 8133C998 | 7F C5 F3 78 */	mr r5, r30
/* 8133C99C | 80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8133C9A0 | 48 28 18 B1 */	bl ES_ReadContentFile
/* 8133C9A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C9A8 | 41 80 00 18 */	blt .L_8133C9C0
/* 8133C9AC | 80 7F 01 A8 */	lwz r3, 0x1a8(r31)
/* 8133C9B0 | 38 9F 01 AC */	addi r4, r31, 0x1ac
/* 8133C9B4 | 48 23 43 ED */	bl ARCInitHandle
/* 8133C9B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C9BC | 40 82 00 0C */	bne .L_8133C9C8
.L_8133C9C0:
/* 8133C9C0 | 3B A0 02 58 */	li r29, 0x258
/* 8133C9C4 | 48 00 00 40 */	b .L_8133CA04
.L_8133C9C8:
/* 8133C9C8 | 38 7F 01 AC */	addi r3, r31, 0x1ac
/* 8133C9CC | 38 9F 00 08 */	addi r4, r31, 0x8
/* 8133C9D0 | 38 BF 00 B0 */	addi r5, r31, 0xb0
/* 8133C9D4 | 48 23 44 6D */	bl ARCOpen
/* 8133C9D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C9DC | 7C 7E 1B 78 */	mr r30, r3
/* 8133C9E0 | 40 82 00 14 */	bne .L_8133C9F4
/* 8133C9E4 | 80 7F 01 94 */	lwz r3, 0x194(r31)
/* 8133C9E8 | 48 28 19 95 */	bl ES_CloseContentFile
/* 8133C9EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C9F0 | 41 80 00 14 */	blt .L_8133CA04
.L_8133C9F4:
/* 8133C9F4 | 38 1E FF FF */	subi r0, r30, 0x1
/* 8133C9F8 | 7C 00 00 34 */	cntlzw r0, r0
/* 8133C9FC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8133CA00 | 48 00 00 74 */	b .L_8133CA74
.L_8133CA04:
/* 8133CA04 | 3C 80 81 63 */	lis r4, lbl_81634D90@ha
/* 8133CA08 | 92 E1 00 08 */	stw r23, 0x8(r1)
/* 8133CA0C | 7F 85 E3 78 */	mr r5, r28
/* 8133CA10 | 7F 48 D3 78 */	mr r8, r26
/* 8133CA14 | 7F 67 DB 78 */	mr r7, r27
/* 8133CA18 | 7F 0A C3 78 */	mr r10, r24
/* 8133CA1C | 7F 29 CB 78 */	mr r9, r25
/* 8133CA20 | 38 61 00 60 */	addi r3, r1, 0x60
/* 8133CA24 | 38 84 4D 90 */	addi r4, r4, lbl_81634D90@l
/* 8133CA28 | 4C C6 31 82 */	crclr cr1eq
/* 8133CA2C | 48 2C 40 55 */	bl sprintf
/* 8133CA30 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133CA34 | 3C C0 81 63 */	lis r6, lbl_81634DA6@ha
/* 8133CA38 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133CA3C | 7F A5 EB 78 */	mr r5, r29
/* 8133CA40 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133CA44 | 38 81 00 60 */	addi r4, r1, 0x60
/* 8133CA48 | 38 C6 4D A6 */	addi r6, r6, lbl_81634DA6@l
/* 8133CA4C | 38 E0 00 9E */	li r7, 0x9e
/* 8133CA50 | 48 01 9C A9 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133CA54 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133CA58 | 38 80 00 01 */	li r4, 0x1
/* 8133CA5C | 38 A0 00 02 */	li r5, 0x2
/* 8133CA60 | 38 C0 00 00 */	li r6, 0x0
/* 8133CA64 | 38 E0 00 00 */	li r7, 0x0
/* 8133CA68 | 39 00 FF FF */	li r8, -0x1
/* 8133CA6C | 48 01 9A A9 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8133CA70 | 38 60 00 00 */	li r3, 0x0
.L_8133CA74:
/* 8133CA74 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8133CA78 | 7D 4B 53 78 */	mr r11, r10
/* 8133CA7C | 48 2B CA 81 */	bl _restgpr_23
/* 8133CA80 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8133CA84 | 7C 08 03 A6 */	mtlr r0
/* 8133CA88 | 7D 41 53 78 */	mr r1, r10
/* 8133CA8C | 4E 80 00 20 */	blr
.endfn openTicketFile___Q33ipl4nand10SharedFileFv

# .text:0x3B8 | 0x8133CA90 | size: 0xDC
# ipl::nand::SharedFile::closeTicketFile_()
.fn closeTicketFile___Q33ipl4nand10SharedFileFv, global
/* 8133CA90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133CA94 | 7C 08 02 A6 */	mflr r0
/* 8133CA98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133CA9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133CAA0 | 7C 7F 1B 78 */	mr r31, r3
/* 8133CAA4 | 80 63 01 94 */	lwz r3, 0x194(r3)
/* 8133CAA8 | 48 28 18 D5 */	bl ES_CloseContentFile
/* 8133CAAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CAB0 | 41 80 00 64 */	blt .L_8133CB14
/* 8133CAB4 | 80 9F 01 A0 */	lwz r4, 0x1a0(r31)
/* 8133CAB8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133CABC | 41 82 00 20 */	beq .L_8133CADC
/* 8133CAC0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133CAC4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133CAC8 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8133CACC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133CAD0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133CAD4 | 7D 89 03 A6 */	mtctr r12
/* 8133CAD8 | 4E 80 04 21 */	bctrl
.L_8133CADC:
/* 8133CADC | 80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8133CAE0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133CAE4 | 41 82 00 28 */	beq .L_8133CB0C
/* 8133CAE8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133CAEC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133CAF0 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8133CAF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133CAF8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133CAFC | 7D 89 03 A6 */	mtctr r12
/* 8133CB00 | 4E 80 04 21 */	bctrl
/* 8133CB04 | 38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8133CB08 | 48 23 4A 9D */	bl ARCClose
.L_8133CB0C:
/* 8133CB0C | 38 60 00 01 */	li r3, 0x1
/* 8133CB10 | 48 00 00 48 */	b .L_8133CB58
.L_8133CB14:
/* 8133CB14 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133CB18 | 3C C0 81 63 */	lis r6, lbl_81634DA6@ha
/* 8133CB1C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133CB20 | 38 8D 80 68 */	li r4, lbl_816960A8@sda21
/* 8133CB24 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133CB28 | 38 C6 4D A6 */	addi r6, r6, lbl_81634DA6@l
/* 8133CB2C | 38 A0 00 00 */	li r5, 0x0
/* 8133CB30 | 38 E0 00 BD */	li r7, 0xbd
/* 8133CB34 | 48 01 9B C5 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133CB38 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133CB3C | 38 80 00 01 */	li r4, 0x1
/* 8133CB40 | 38 A0 00 02 */	li r5, 0x2
/* 8133CB44 | 38 C0 00 00 */	li r6, 0x0
/* 8133CB48 | 38 E0 00 00 */	li r7, 0x0
/* 8133CB4C | 39 00 FF FF */	li r8, -0x1
/* 8133CB50 | 48 01 99 C5 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8133CB54 | 38 60 00 00 */	li r3, 0x0
.L_8133CB58:
/* 8133CB58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133CB5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133CB60 | 7C 08 03 A6 */	mtlr r0
/* 8133CB64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133CB68 | 4E 80 00 20 */	blr
.endfn closeTicketFile___Q33ipl4nand10SharedFileFv

# .text:0x494 | 0x8133CB6C | size: 0x4
# ipl::nand::SharedFile::open_(unsigned char)
.fn open___Q33ipl4nand10SharedFileFUc, global
/* 8133CB6C | 4B FF FC 54 */	b openTicketFile___Q33ipl4nand10SharedFileFv
.endfn open___Q33ipl4nand10SharedFileFUc

# .text:0x498 | 0x8133CB70 | size: 0x4
# ipl::nand::SharedFile::close_()
.fn close___Q33ipl4nand10SharedFileFv, global
/* 8133CB70 | 4B FF FF 20 */	b closeTicketFile___Q33ipl4nand10SharedFileFv
.endfn close___Q33ipl4nand10SharedFileFv

# .text:0x49C | 0x8133CB74 | size: 0x8
# ipl::nand::SharedFile::getRawSize_()
.fn getRawSize___Q33ipl4nand10SharedFileFv, global
/* 8133CB74 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133CB78 | 48 23 4A 24 */	b ARCGetLength
.endfn getRawSize___Q33ipl4nand10SharedFileFv

# .text:0x4A4 | 0x8133CB7C | size: 0xB8
# ipl::nand::SharedFile::readBlock_(void*, int, int)
.fn readBlock___Q33ipl4nand10SharedFileFPvii, global
/* 8133CB7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133CB80 | 7C 08 02 A6 */	mflr r0
/* 8133CB84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133CB88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133CB8C | 48 2B C9 39 */	bl _savegpr_28
/* 8133CB90 | 7C 7C 1B 78 */	mr r28, r3
/* 8133CB94 | 7C 9D 23 78 */	mr r29, r4
/* 8133CB98 | 7C BE 2B 78 */	mr r30, r5
/* 8133CB9C | 7C DF 33 78 */	mr r31, r6
/* 8133CBA0 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133CBA4 | 48 23 49 F1 */	bl ARCGetStartOffset
/* 8133CBA8 | 7C 60 1B 78 */	mr r0, r3
/* 8133CBAC | 80 7C 01 94 */	lwz r3, 0x194(r28)
/* 8133CBB0 | 7C 80 FA 14 */	add r4, r0, r31
/* 8133CBB4 | 38 A0 00 00 */	li r5, 0x0
/* 8133CBB8 | 48 28 17 39 */	bl ES_SeekContentFile
/* 8133CBBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CBC0 | 41 80 00 1C */	blt .L_8133CBDC
/* 8133CBC4 | 80 7C 01 94 */	lwz r3, 0x194(r28)
/* 8133CBC8 | 7F A4 EB 78 */	mr r4, r29
/* 8133CBCC | 7F C5 F3 78 */	mr r5, r30
/* 8133CBD0 | 48 28 16 81 */	bl ES_ReadContentFile
/* 8133CBD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133CBD8 | 40 80 00 44 */	bge .L_8133CC1C
.L_8133CBDC:
/* 8133CBDC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133CBE0 | 3C C0 81 63 */	lis r6, lbl_81634DA6@ha
/* 8133CBE4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133CBE8 | 38 8D 80 68 */	li r4, lbl_816960A8@sda21
/* 8133CBEC | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133CBF0 | 38 C6 4D A6 */	addi r6, r6, lbl_81634DA6@l
/* 8133CBF4 | 38 A0 00 00 */	li r5, 0x0
/* 8133CBF8 | 38 E0 01 66 */	li r7, 0x166
/* 8133CBFC | 48 01 9A FD */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133CC00 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133CC04 | 38 80 00 01 */	li r4, 0x1
/* 8133CC08 | 38 A0 00 02 */	li r5, 0x2
/* 8133CC0C | 38 C0 00 00 */	li r6, 0x0
/* 8133CC10 | 38 E0 00 00 */	li r7, 0x0
/* 8133CC14 | 39 00 FF FF */	li r8, -0x1
/* 8133CC18 | 48 01 98 FD */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133CC1C:
/* 8133CC1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133CC20 | 48 2B C8 F1 */	bl _restgpr_28
/* 8133CC24 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133CC28 | 7C 08 03 A6 */	mtlr r0
/* 8133CC2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133CC30 | 4E 80 00 20 */	blr
.endfn readBlock___Q33ipl4nand10SharedFileFPvii

# 0x81634D90..0x81634E10 | size: 0x80
.data
.balign 8

# .data:0x0 | 0x81634D90 | size: 0x16
.obj lbl_81634D90, global
	.string "ES %d, %llx, %llx, %x"
.endobj lbl_81634D90

# .data:0x16 | 0x81634DA6 | size: 0x12
.obj lbl_81634DA6, global
	.string "iplNandShared.cpp"
.endobj lbl_81634DA6

# .data:0x28 | 0x81634DB8 | size: 0x54
# ipl::nand::SharedFile::__vtable
.obj __vt__Q33ipl4nand10SharedFile, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl4nand10SharedFileFv
	.4byte read__Q33ipl4nand4FileFv
	.4byte write__Q33ipl4nand4FileFv
	.4byte isFinished__Q33ipl4nand4FileFv
	.4byte checkData__Q33ipl4nand4FileFv
	.4byte isFatalError__Q33ipl4nand4FileFv
	.4byte open___Q33ipl4nand10SharedFileFUc
	.4byte close___Q33ipl4nand10SharedFileFv
	.4byte readBlock___Q33ipl4nand10SharedFileFPvii
	.4byte getRawSize___Q33ipl4nand10SharedFileFv
	.4byte getDecodeSize___Q33ipl4nand4FileFPCUc
	.4byte getBuffer___Q33ipl4nand4FileFUl
	.4byte uncompressLz7__Q33ipl4nand4FileFPCUcPUc
	.4byte isCompressed__Q33ipl4nand4FileFPCUc
	.4byte isSliCompressed__Q33ipl4nand4FileFPCUc
	.4byte isAsrCompressed__Q33ipl4nand4FileFPCUc
	.4byte isAshCompressed__Q33ipl4nand4FileFPCUc
	.4byte isLz7Compressed__Q33ipl4nand4FileFPCUc
	.4byte callback___Q33ipl4nand4FileFv
.endobj __vt__Q33ipl4nand10SharedFile

# .data:0x7C | 0x81634E0C | size: 0x4
.obj gap_08_81634E0C_data, global
.hidden gap_08_81634E0C_data
	.4byte 0x00000000
.endobj gap_08_81634E0C_data

# 0x816960A8..0x816960B0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816960A8 | size: 0x4
.obj lbl_816960A8, global
	.4byte 0x45530000
.endobj lbl_816960A8

# .sdata:0x4 | 0x816960AC | size: 0x4
.obj gap_11_816960AC_sdata, global
.hidden gap_11_816960AC_sdata
	.4byte 0x00000000
.endobj gap_11_816960AC_sdata
