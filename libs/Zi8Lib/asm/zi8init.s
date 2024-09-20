.include "macros.inc"
.file "zi8init.c"

# 0x81330638..0x81330640 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330638 | size: 0x8
.obj "@etb_81330638", local
.hidden "@etb_81330638"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330638"

# 0x813312E4..0x813312F0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x813312E4 | size: 0xC
.obj "@eti_813312E4", local
.hidden "@eti_813312E4"
	.4byte Zi8InitializeDynamic
	.4byte 0x00000200
	.4byte "@etb_81330638"
.endobj "@eti_813312E4"

# 0x8147C7C4..0x8147C9C4 | size: 0x200
.text
.balign 4

# .text:0x0 | 0x8147C7C4 | size: 0x200
.fn Zi8InitializeDynamic, global
/* 8147C7C4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147C7C8 | 7C 08 02 A6 */	mflr r0
/* 8147C7CC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147C7D0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8147C7D4 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8147C7D8 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 8147C7DC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8147C7E0 | 7C 9F 23 78 */	mr r31, r4
/* 8147C7E4 | 7F E3 FB 78 */	mr r3, r31
/* 8147C7E8 | 38 80 00 00 */	li r4, 0x0
/* 8147C7EC | 38 A0 1B 44 */	li r5, 0x1b44
/* 8147C7F0 | 4B FF F8 2D */	bl Zi8Memset
/* 8147C7F4 | 38 00 00 01 */	li r0, 0x1
/* 8147C7F8 | 98 1F 00 08 */	stb r0, 0x8(r31)
/* 8147C7FC | 38 00 00 01 */	li r0, 0x1
/* 8147C800 | 98 1F 00 09 */	stb r0, 0x9(r31)
/* 8147C804 | 38 00 00 FF */	li r0, 0xff
/* 8147C808 | 98 1F 00 0A */	stb r0, 0xa(r31)
/* 8147C80C | 38 00 00 64 */	li r0, 0x64
/* 8147C810 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8147C814 | 3C 60 00 01 */	lis r3, 0x1
/* 8147C818 | 38 63 FF FF */	subi r3, r3, 0x1
/* 8147C81C | B0 7F 00 0C */	sth r3, 0xc(r31)
/* 8147C820 | 38 00 00 20 */	li r0, 0x20
/* 8147C824 | B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 8147C828 | 38 00 00 00 */	li r0, 0x0
/* 8147C82C | 98 1F 00 1E */	stb r0, 0x1e(r31)
/* 8147C830 | 38 00 00 00 */	li r0, 0x0
/* 8147C834 | 98 1F 1B 30 */	stb r0, 0x1b30(r31)
/* 8147C838 | 38 00 00 00 */	li r0, 0x0
/* 8147C83C | 98 1F 1B 3A */	stb r0, 0x1b3a(r31)
/* 8147C840 | 38 00 00 00 */	li r0, 0x0
/* 8147C844 | B0 1F 1B 36 */	sth r0, 0x1b36(r31)
/* 8147C848 | 38 00 00 00 */	li r0, 0x0
/* 8147C84C | B0 1F 1B 32 */	sth r0, 0x1b32(r31)
/* 8147C850 | 38 00 00 00 */	li r0, 0x0
/* 8147C854 | B0 1F 1B 34 */	sth r0, 0x1b34(r31)
/* 8147C858 | 38 00 00 00 */	li r0, 0x0
/* 8147C85C | 98 1F 1B 3B */	stb r0, 0x1b3b(r31)
/* 8147C860 | 38 00 00 00 */	li r0, 0x0
/* 8147C864 | 98 1F 1B 3C */	stb r0, 0x1b3c(r31)
/* 8147C868 | 38 00 00 00 */	li r0, 0x0
/* 8147C86C | B0 1F 1B 40 */	sth r0, 0x1b40(r31)
/* 8147C870 | 38 00 00 00 */	li r0, 0x0
/* 8147C874 | B0 1F 1B 38 */	sth r0, 0x1b38(r31)
/* 8147C878 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8147C87C | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8147C880 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8147C884 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C888 | 40 82 00 1C */	bne .L_8147C8A4
/* 8147C88C | 38 60 05 78 */	li r3, 0x578
/* 8147C890 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147C894 | 7F E4 FB 78 */	mr r4, r31
/* 8147C898 | 48 00 7B E5 */	bl Zi8LogError
/* 8147C89C | 38 60 00 00 */	li r3, 0x0
/* 8147C8A0 | 48 00 01 08 */	b .L_8147C9A8
.L_8147C8A4:
/* 8147C8A4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8147C8A8 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8147C8AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C8B0 | 40 82 00 1C */	bne .L_8147C8CC
/* 8147C8B4 | 38 60 05 82 */	li r3, 0x582
/* 8147C8B8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147C8BC | 7F E4 FB 78 */	mr r4, r31
/* 8147C8C0 | 48 00 7B BD */	bl Zi8LogError
/* 8147C8C4 | 38 60 00 00 */	li r3, 0x0
/* 8147C8C8 | 48 00 00 E0 */	b .L_8147C9A8
.L_8147C8CC:
/* 8147C8CC | 38 00 00 2D */	li r0, 0x2d
/* 8147C8D0 | B0 1F 18 74 */	sth r0, 0x1874(r31)
/* 8147C8D4 | 38 00 00 00 */	li r0, 0x0
/* 8147C8D8 | 98 1F 05 38 */	stb r0, 0x538(r31)
/* 8147C8DC | 38 00 00 00 */	li r0, 0x0
/* 8147C8E0 | 98 1F 00 1F */	stb r0, 0x1f(r31)
/* 8147C8E4 | 38 00 01 00 */	li r0, 0x100
/* 8147C8E8 | B0 1F 14 1A */	sth r0, 0x141a(r31)
/* 8147C8EC | 38 60 00 00 */	li r3, 0x0
/* 8147C8F0 | 38 80 00 00 */	li r4, 0x0
/* 8147C8F4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147C8F8 | 7F E5 FB 78 */	mr r5, r31
/* 8147C8FC | 4B FF DC FD */	bl Zi8SetLatinSearchOrder
/* 8147C900 | 38 60 00 01 */	li r3, 0x1
/* 8147C904 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147C908 | 7F E4 FB 78 */	mr r4, r31
/* 8147C90C | 48 00 2D CD */	bl ZADP_Zi8SetPDremoveOpt
/* 8147C910 | 38 00 00 05 */	li r0, 0x5
/* 8147C914 | 98 1F 00 17 */	stb r0, 0x17(r31)
/* 8147C918 | 38 60 00 01 */	li r3, 0x1
/* 8147C91C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147C920 | 7F E4 FB 78 */	mr r4, r31
/* 8147C924 | 4B FE 2B 51 */	bl Zi8GetFormatVersion
/* 8147C928 | 54 60 07 BC */	rlwinm r0, r3, 0, 30, 30
/* 8147C92C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147C930 | 98 1F 00 16 */	stb r0, 0x16(r31)
/* 8147C934 | 38 60 00 01 */	li r3, 0x1
/* 8147C938 | 80 1F 1B 28 */	lwz r0, 0x1b28(r31)
/* 8147C93C | 50 60 F8 00 */	rlwimi r0, r3, 31, 0, 0
/* 8147C940 | 90 1F 1B 28 */	stw r0, 0x1b28(r31)
/* 8147C944 | 38 60 00 01 */	li r3, 0x1
/* 8147C948 | 80 1F 1B 2C */	lwz r0, 0x1b2c(r31)
/* 8147C94C | 50 60 F8 00 */	rlwimi r0, r3, 31, 0, 0
/* 8147C950 | 90 1F 1B 2C */	stw r0, 0x1b2c(r31)
/* 8147C954 | 80 1F 1B 2C */	lwz r0, 0x1b2c(r31)
/* 8147C958 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8147C95C | 3B C1 00 10 */	addi r30, r1, 0x10
/* 8147C960 | 7F C3 F3 78 */	mr r3, r30
/* 8147C964 | 7F E4 FB 78 */	mr r4, r31
/* 8147C968 | 4B FF DC 65 */	bl Zi8ZHsetZYfuzzyPairs
/* 8147C96C | 80 1F 1B 28 */	lwz r0, 0x1b28(r31)
/* 8147C970 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8147C974 | 3B A1 00 0C */	addi r29, r1, 0xc
/* 8147C978 | 7F A3 EB 78 */	mr r3, r29
/* 8147C97C | 7F E4 FB 78 */	mr r4, r31
/* 8147C980 | 4B FF DC 21 */	bl Zi8ZHsetPYfuzzyPairs
/* 8147C984 | 38 60 00 02 */	li r3, 0x2
/* 8147C988 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147C98C | 7F E4 FB 78 */	mr r4, r31
/* 8147C990 | 4B FE 88 3D */	bl Zi8SetParentalControls
/* 8147C994 | 38 60 00 64 */	li r3, 0x64
/* 8147C998 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147C99C | 7F E4 FB 78 */	mr r4, r31
/* 8147C9A0 | 48 00 7A DD */	bl Zi8LogError
/* 8147C9A4 | 38 60 00 01 */	li r3, 0x1
.L_8147C9A8:
/* 8147C9A8 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8147C9AC | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8147C9B0 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8147C9B4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147C9B8 | 7C 08 03 A6 */	mtlr r0
/* 8147C9BC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147C9C0 | 4E 80 00 20 */	blr
.endfn Zi8InitializeDynamic
