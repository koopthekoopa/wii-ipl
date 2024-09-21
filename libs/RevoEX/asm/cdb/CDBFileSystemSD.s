.include "macros.inc"
.file "CDBFileSystemSD.c"

# 0x810C89D0..0x810C8A80 | size: 0xB0
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C89D0 | size: 0x18
.obj lbl_810C89D0, global
	.skip 0x18
.endobj lbl_810C89D0

# .bss:0x18 | 0x810C89E8 | size: 0x20
.obj CDB_SD_ROOT_PATH_CD, global
	.skip 0x20
.endobj CDB_SD_ROOT_PATH_CD

# .bss:0x38 | 0x810C8A08 | size: 0x20
.obj CDB_SD_ROOT_PATH_LS, global
	.skip 0x20
.endobj CDB_SD_ROOT_PATH_LS

# .bss:0x58 | 0x810C8A28 | size: 0x58
.obj CDB_SD_VFF_FILE_NAME, global
	.skip 0x58
.endobj CDB_SD_VFF_FILE_NAME

# 0x8148B744..0x8148BF5C | size: 0x818
.text
.balign 4

# .text:0x0 | 0x8148B744 | size: 0xA0
.fn CDBFSIsExistFileSD, global
/* 8148B744 | 94 21 FA A0 */	stwu r1, -0x560(r1)
/* 8148B748 | 7C 08 02 A6 */	mflr r0
/* 8148B74C | 7C 64 1B 78 */	mr r4, r3
/* 8148B750 | 90 01 05 64 */	stw r0, 0x564(r1)
/* 8148B754 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148B758 | 93 E1 05 5C */	stw r31, 0x55c(r1)
/* 8148B75C | 48 17 6B A9 */	bl strcpy
/* 8148B760 | 38 61 01 08 */	addi r3, r1, 0x108
/* 8148B764 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B768 | 38 A0 00 80 */	li r5, 0x80
/* 8148B76C | 48 04 59 ED */	bl fn_814D1158
/* 8148B770 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B774 | 7C 7F 1B 78 */	mr r31, r3
/* 8148B778 | 40 82 00 0C */	bne .L_8148B784
/* 8148B77C | 38 60 00 01 */	li r3, 0x1
/* 8148B780 | 48 00 00 50 */	b .L_8148B7D0
.L_8148B784:
/* 8148B784 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148B788 | 40 82 00 0C */	bne .L_8148B794
/* 8148B78C | 38 60 00 00 */	li r3, 0x0
/* 8148B790 | 48 00 00 40 */	b .L_8148B7D0
.L_8148B794:
/* 8148B794 | 38 60 00 04 */	li r3, 0x4
/* 8148B798 | 48 00 4D F9 */	bl CDBIsPrintDebugMessage
/* 8148B79C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B7A0 | 41 82 00 2C */	beq .L_8148B7CC
/* 8148B7A4 | 38 60 00 04 */	li r3, 0x4
/* 8148B7A8 | 48 00 4E 01 */	bl CDBReport_
/* 8148B7AC | 7F E3 FB 78 */	mr r3, r31
/* 8148B7B0 | 48 04 5C ED */	bl fn_814D149C
/* 8148B7B4 | 3C 80 81 67 */	lis r4, lbl_8166BA30@ha
/* 8148B7B8 | 7C 65 1B 78 */	mr r5, r3
/* 8148B7BC | 38 64 BA 30 */	addi r3, r4, lbl_8166BA30@l
/* 8148B7C0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B7C4 | 4C C6 31 82 */	crclr cr1eq
/* 8148B7C8 | 48 0A 2E D9 */	bl OSReport
.L_8148B7CC:
/* 8148B7CC | 38 60 00 00 */	li r3, 0x0
.L_8148B7D0:
/* 8148B7D0 | 80 01 05 64 */	lwz r0, 0x564(r1)
/* 8148B7D4 | 83 E1 05 5C */	lwz r31, 0x55c(r1)
/* 8148B7D8 | 7C 08 03 A6 */	mtlr r0
/* 8148B7DC | 38 21 05 60 */	addi r1, r1, 0x560
/* 8148B7E0 | 4E 80 00 20 */	blr
.endfn CDBFSIsExistFileSD

# .text:0xA0 | 0x8148B7E4 | size: 0xF4
.fn CDBFSFindFirstSD, global
/* 8148B7E4 | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8148B7E8 | 7C 08 02 A6 */	mflr r0
/* 8148B7EC | 90 01 01 14 */	stw r0, 0x114(r1)
/* 8148B7F0 | 93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8148B7F4 | 93 C1 01 08 */	stw r30, 0x108(r1)
/* 8148B7F8 | 7C 7E 1B 78 */	mr r30, r3
/* 8148B7FC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148B800 | 48 17 6B 05 */	bl strcpy
/* 8148B804 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148B808 | 38 8D 99 D8 */	li r4, lbl_81697A18@sda21
/* 8148B80C | 4B FF EB 0D */	bl CDBFSConcatenatePath
/* 8148B810 | 7F C3 F3 78 */	mr r3, r30
/* 8148B814 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B818 | 38 A0 00 80 */	li r5, 0x80
/* 8148B81C | 48 04 59 3D */	bl fn_814D1158
/* 8148B820 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B824 | 7C 7F 1B 78 */	mr r31, r3
/* 8148B828 | 40 82 00 10 */	bne .L_8148B838
/* 8148B82C | 38 00 00 00 */	li r0, 0x0
/* 8148B830 | 90 1E 04 44 */	stw r0, 0x444(r30)
/* 8148B834 | 48 00 00 8C */	b .L_8148B8C0
.L_8148B838:
/* 8148B838 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148B83C | 40 82 00 10 */	bne .L_8148B84C
/* 8148B840 | 38 00 00 01 */	li r0, 0x1
/* 8148B844 | 90 1E 04 44 */	stw r0, 0x444(r30)
/* 8148B848 | 48 00 00 78 */	b .L_8148B8C0
.L_8148B84C:
/* 8148B84C | 2C 03 00 16 */	cmpwi r3, 0x16
/* 8148B850 | 40 82 00 10 */	bne .L_8148B860
/* 8148B854 | 38 00 00 01 */	li r0, 0x1
/* 8148B858 | 90 1E 04 44 */	stw r0, 0x444(r30)
/* 8148B85C | 48 00 00 64 */	b .L_8148B8C0
.L_8148B860:
/* 8148B860 | 3C 60 81 0D */	lis r3, lbl_810C89D0@ha
/* 8148B864 | 38 63 89 D0 */	addi r3, r3, lbl_810C89D0@l
/* 8148B868 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8148B86C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148B870 | 41 82 00 10 */	beq .L_8148B880
/* 8148B874 | 38 00 00 01 */	li r0, 0x1
/* 8148B878 | 90 1E 04 44 */	stw r0, 0x444(r30)
/* 8148B87C | 48 00 00 44 */	b .L_8148B8C0
.L_8148B880:
/* 8148B880 | 38 60 00 04 */	li r3, 0x4
/* 8148B884 | 48 00 4D 0D */	bl CDBIsPrintDebugMessage
/* 8148B888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B88C | 41 82 00 2C */	beq .L_8148B8B8
/* 8148B890 | 38 60 00 04 */	li r3, 0x4
/* 8148B894 | 48 00 4D 15 */	bl CDBReport_
/* 8148B898 | 7F E3 FB 78 */	mr r3, r31
/* 8148B89C | 48 04 5C 01 */	bl fn_814D149C
/* 8148B8A0 | 3C 80 81 67 */	lis r4, lbl_8166BA60@ha
/* 8148B8A4 | 7C 65 1B 78 */	mr r5, r3
/* 8148B8A8 | 38 64 BA 60 */	addi r3, r4, lbl_8166BA60@l
/* 8148B8AC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B8B0 | 4C C6 31 82 */	crclr cr1eq
/* 8148B8B4 | 48 0A 2D ED */	bl OSReport
.L_8148B8B8:
/* 8148B8B8 | 38 00 00 01 */	li r0, 0x1
/* 8148B8BC | 90 1E 04 44 */	stw r0, 0x444(r30)
.L_8148B8C0:
/* 8148B8C0 | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 8148B8C4 | 83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8148B8C8 | 83 C1 01 08 */	lwz r30, 0x108(r1)
/* 8148B8CC | 7C 08 03 A6 */	mtlr r0
/* 8148B8D0 | 38 21 01 10 */	addi r1, r1, 0x110
/* 8148B8D4 | 4E 80 00 20 */	blr
.endfn CDBFSFindFirstSD

# .text:0x194 | 0x8148B8D8 | size: 0x48
.fn CDBFSFindNextSD, global
/* 8148B8D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148B8DC | 7C 08 02 A6 */	mflr r0
/* 8148B8E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148B8E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148B8E8 | 7C 7F 1B 78 */	mr r31, r3
/* 8148B8EC | 48 04 59 3D */	bl fn_814D1228
/* 8148B8F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B8F4 | 40 82 00 10 */	bne .L_8148B904
/* 8148B8F8 | 38 00 00 00 */	li r0, 0x0
/* 8148B8FC | 90 1F 04 44 */	stw r0, 0x444(r31)
/* 8148B900 | 48 00 00 0C */	b .L_8148B90C
.L_8148B904:
/* 8148B904 | 38 00 00 01 */	li r0, 0x1
/* 8148B908 | 90 1F 04 44 */	stw r0, 0x444(r31)
.L_8148B90C:
/* 8148B90C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148B910 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148B914 | 7C 08 03 A6 */	mtlr r0
/* 8148B918 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148B91C | 4E 80 00 20 */	blr
.endfn CDBFSFindNextSD

# .text:0x1DC | 0x8148B920 | size: 0xC
.fn CDBFSFindCloseSD, global
/* 8148B920 | 38 00 00 00 */	li r0, 0x0
/* 8148B924 | 90 03 04 44 */	stw r0, 0x444(r3)
/* 8148B928 | 4E 80 00 20 */	blr
.endfn CDBFSFindCloseSD

# .text:0x1E8 | 0x8148B92C | size: 0x1C
.fn CDBFindDataGetNameSD, global
/* 8148B92C | 88 03 02 3A */	lbz r0, 0x23a(r3)
/* 8148B930 | 7C 00 07 75 */	extsb. r0, r0
/* 8148B934 | 40 82 00 0C */	bne .L_8148B940
/* 8148B938 | 38 63 02 2D */	addi r3, r3, 0x22d
/* 8148B93C | 4E 80 00 20 */	blr
.L_8148B940:
/* 8148B940 | 38 63 02 3A */	addi r3, r3, 0x23a
/* 8148B944 | 4E 80 00 20 */	blr
.endfn CDBFindDataGetNameSD

# .text:0x204 | 0x8148B948 | size: 0xC
.fn CDBFindDataIsDirectorySD, global
/* 8148B948 | 88 03 02 2C */	lbz r0, 0x22c(r3)
/* 8148B94C | 54 03 E7 FE */	extrwi r3, r0, 1, 27
/* 8148B950 | 4E 80 00 20 */	blr
.endfn CDBFindDataIsDirectorySD

# .text:0x210 | 0x8148B954 | size: 0x8
.fn CDBFindDataIsEndSD, global
/* 8148B954 | 80 63 04 44 */	lwz r3, 0x444(r3)
/* 8148B958 | 4E 80 00 20 */	blr
.endfn CDBFindDataIsEndSD

# .text:0x218 | 0x8148B95C | size: 0x178
.fn CDBFSCreateDirForceSD, global
/* 8148B95C | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8148B960 | 7C 08 02 A6 */	mflr r0
/* 8148B964 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 8148B968 | 39 61 01 30 */	addi r11, r1, 0x130
/* 8148B96C | 48 16 DB 49 */	bl _savegpr_24
/* 8148B970 | 7C 78 1B 78 */	mr r24, r3
/* 8148B974 | 48 16 D5 89 */	bl strlen
/* 8148B978 | 3B 61 00 10 */	addi r27, r1, 0x10
/* 8148B97C | 7C 7C 1B 78 */	mr r28, r3
/* 8148B980 | 7F 7E DB 78 */	mr r30, r27
/* 8148B984 | 7F 1F C3 78 */	mr r31, r24
/* 8148B988 | 3B 40 00 00 */	li r26, 0x0
/* 8148B98C | 3B A0 00 00 */	li r29, 0x0
/* 8148B990 | 48 00 01 20 */	b .L_8148BAB0
.L_8148B994:
/* 8148B994 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8148B998 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 8148B99C | 40 82 01 08 */	bne .L_8148BAA4
/* 8148B9A0 | 7F 04 C3 78 */	mr r4, r24
/* 8148B9A4 | 7F 45 D3 78 */	mr r5, r26
/* 8148B9A8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148B9AC | 48 17 6A 19 */	bl strncpy
/* 8148B9B0 | 80 62 8C 28 */	lwz r3, lbl_81695028@sda21(r0)
/* 8148B9B4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8148B9B8 | 9B BB 00 00 */	stb r29, 0x0(r27)
/* 8148B9BC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8148B9C0 | 48 17 6A C1 */	bl strcmp
/* 8148B9C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B9C8 | 40 82 00 0C */	bne .L_8148B9D4
/* 8148B9CC | 38 00 00 00 */	li r0, 0x0
/* 8148B9D0 | 48 00 00 28 */	b .L_8148B9F8
.L_8148B9D4:
/* 8148B9D4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148B9D8 | 48 16 D5 25 */	bl strlen
/* 8148B9DC | 7C 7E 1A 14 */	add r3, r30, r3
/* 8148B9E0 | 88 03 FF FF */	lbz r0, -0x1(r3)
/* 8148B9E4 | 7C 04 07 74 */	extsb r4, r0
/* 8148B9E8 | 20 64 00 3A */	subfic r3, r4, 0x3a
/* 8148B9EC | 38 04 FF C6 */	subi r0, r4, 0x3a
/* 8148B9F0 | 7C 60 03 78 */	or r0, r3, r0
/* 8148B9F4 | 54 00 0F FE */	srwi r0, r0, 31
.L_8148B9F8:
/* 8148B9F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148B9FC | 41 82 00 A8 */	beq .L_8148BAA4
/* 8148BA00 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148BA04 | 48 04 52 49 */	bl fn_814D0C4C
/* 8148BA08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BA0C | 7C 79 1B 78 */	mr r25, r3
/* 8148BA10 | 41 82 00 94 */	beq .L_8148BAA4
/* 8148BA14 | 2C 03 00 11 */	cmpwi r3, 0x11
/* 8148BA18 | 41 82 00 8C */	beq .L_8148BAA4
/* 8148BA1C | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 8148BA20 | 40 82 00 0C */	bne .L_8148BA2C
/* 8148BA24 | 38 60 00 17 */	li r3, 0x17
/* 8148BA28 | 48 00 00 94 */	b .L_8148BABC
.L_8148BA2C:
/* 8148BA2C | 2C 03 00 0D */	cmpwi r3, 0xd
/* 8148BA30 | 40 82 00 0C */	bne .L_8148BA3C
/* 8148BA34 | 38 60 00 1D */	li r3, 0x1d
/* 8148BA38 | 48 00 00 84 */	b .L_8148BABC
.L_8148BA3C:
/* 8148BA3C | 3C 60 81 0D */	lis r3, lbl_810C89D0@ha
/* 8148BA40 | 38 63 89 D0 */	addi r3, r3, lbl_810C89D0@l
/* 8148BA44 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8148BA48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148BA4C | 41 82 00 0C */	beq .L_8148BA58
/* 8148BA50 | 38 60 00 1F */	li r3, 0x1f
/* 8148BA54 | 48 00 00 68 */	b .L_8148BABC
.L_8148BA58:
/* 8148BA58 | 38 60 00 04 */	li r3, 0x4
/* 8148BA5C | 48 00 4B 35 */	bl CDBIsPrintDebugMessage
/* 8148BA60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BA64 | 41 82 00 2C */	beq .L_8148BA90
/* 8148BA68 | 38 60 00 04 */	li r3, 0x4
/* 8148BA6C | 48 00 4B 3D */	bl CDBReport_
/* 8148BA70 | 7F 23 CB 78 */	mr r3, r25
/* 8148BA74 | 48 04 5A 29 */	bl fn_814D149C
/* 8148BA78 | 3C 80 81 67 */	lis r4, lbl_8166BA7C@ha
/* 8148BA7C | 7C 65 1B 78 */	mr r5, r3
/* 8148BA80 | 38 64 BA 7C */	addi r3, r4, lbl_8166BA7C@l
/* 8148BA84 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8148BA88 | 4C C6 31 82 */	crclr cr1eq
/* 8148BA8C | 48 0A 2C 15 */	bl OSReport
.L_8148BA90:
/* 8148BA90 | 7F 23 CB 78 */	mr r3, r25
/* 8148BA94 | 38 8D 99 E0 */	li r4, lbl_81697A20@sda21
/* 8148BA98 | 38 A0 00 00 */	li r5, 0x0
/* 8148BA9C | 48 00 41 31 */	bl _CDBOnVFErrorOccured
/* 8148BAA0 | 48 00 00 1C */	b .L_8148BABC
.L_8148BAA4:
/* 8148BAA4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8148BAA8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8148BAAC | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8148BAB0:
/* 8148BAB0 | 7C 1A E0 40 */	cmplw r26, r28
/* 8148BAB4 | 41 80 FE E0 */	blt .L_8148B994
/* 8148BAB8 | 38 60 00 00 */	li r3, 0x0
.L_8148BABC:
/* 8148BABC | 39 61 01 30 */	addi r11, r1, 0x130
/* 8148BAC0 | 48 16 DA 41 */	bl _restgpr_24
/* 8148BAC4 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 8148BAC8 | 7C 08 03 A6 */	mtlr r0
/* 8148BACC | 38 21 01 30 */	addi r1, r1, 0x130
/* 8148BAD0 | 4E 80 00 20 */	blr
.endfn CDBFSCreateDirForceSD

# .text:0x390 | 0x8148BAD4 | size: 0xA0
.fn CDBFSDeleteDirSD, global
/* 8148BAD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148BAD8 | 7C 08 02 A6 */	mflr r0
/* 8148BADC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148BAE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148BAE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148BAE8 | 7C 7E 1B 78 */	mr r30, r3
/* 8148BAEC | 48 04 52 B1 */	bl fn_814D0D9C
/* 8148BAF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BAF4 | 7C 7F 1B 78 */	mr r31, r3
/* 8148BAF8 | 41 82 00 60 */	beq .L_8148BB58
/* 8148BAFC | 2C 03 00 0D */	cmpwi r3, 0xd
/* 8148BB00 | 40 82 00 0C */	bne .L_8148BB0C
/* 8148BB04 | 38 60 00 1D */	li r3, 0x1d
/* 8148BB08 | 48 00 00 54 */	b .L_8148BB5C
.L_8148BB0C:
/* 8148BB0C | 38 60 00 04 */	li r3, 0x4
/* 8148BB10 | 48 00 4A 81 */	bl CDBIsPrintDebugMessage
/* 8148BB14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BB18 | 41 82 00 2C */	beq .L_8148BB44
/* 8148BB1C | 38 60 00 04 */	li r3, 0x4
/* 8148BB20 | 48 00 4A 89 */	bl CDBReport_
/* 8148BB24 | 7F E3 FB 78 */	mr r3, r31
/* 8148BB28 | 48 04 59 75 */	bl fn_814D149C
/* 8148BB2C | 3C C0 81 67 */	lis r6, lbl_8166BAA0@ha
/* 8148BB30 | 7C 65 1B 78 */	mr r5, r3
/* 8148BB34 | 7F C4 F3 78 */	mr r4, r30
/* 8148BB38 | 38 66 BA A0 */	addi r3, r6, lbl_8166BAA0@l
/* 8148BB3C | 4C C6 31 82 */	crclr cr1eq
/* 8148BB40 | 48 0A 2B 61 */	bl OSReport
.L_8148BB44:
/* 8148BB44 | 7F E3 FB 78 */	mr r3, r31
/* 8148BB48 | 38 8D 99 E0 */	li r4, lbl_81697A20@sda21
/* 8148BB4C | 38 A0 00 00 */	li r5, 0x0
/* 8148BB50 | 48 00 40 7D */	bl _CDBOnVFErrorOccured
/* 8148BB54 | 48 00 00 08 */	b .L_8148BB5C
.L_8148BB58:
/* 8148BB58 | 38 60 00 00 */	li r3, 0x0
.L_8148BB5C:
/* 8148BB5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148BB60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148BB64 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148BB68 | 7C 08 03 A6 */	mtlr r0
/* 8148BB6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148BB70 | 4E 80 00 20 */	blr
.endfn CDBFSDeleteDirSD

# .text:0x430 | 0x8148BB74 | size: 0xCC
.fn CDBFSSDInit, global
/* 8148BB74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148BB78 | 7C 08 02 A6 */	mflr r0
/* 8148BB7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148BB80 | 38 00 00 00 */	li r0, 0x0
/* 8148BB84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148BB88 | 3F E0 81 0D */	lis r31, lbl_810C89D0@ha
/* 8148BB8C | 3B FF 89 D0 */	addi r31, r31, lbl_810C89D0@l
/* 8148BB90 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148BB94 | 3B CD 99 E4 */	li r30, lbl_81697A24@sda21
/* 8148BB98 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8148BB9C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8148BBA0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8148BBA4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8148BBA8 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8148BBAC | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8148BBB0 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8148BBB4 | 41 82 00 74 */	beq .L_8148BC28
/* 8148BBB8 | 7F C3 F3 78 */	mr r3, r30
/* 8148BBBC | 38 8D 99 E0 */	li r4, lbl_81697A20@sda21
/* 8148BBC0 | 48 17 68 C1 */	bl strcmp
/* 8148BBC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BBC8 | 41 82 00 60 */	beq .L_8148BC28
/* 8148BBCC | 7F C3 F3 78 */	mr r3, r30
/* 8148BBD0 | 48 16 D3 2D */	bl strlen
/* 8148BBD4 | 28 03 00 07 */	cmplwi r3, 0x7
/* 8148BBD8 | 41 81 00 50 */	bgt .L_8148BC28
/* 8148BBDC | 7F C4 F3 78 */	mr r4, r30
/* 8148BBE0 | 38 6D AD 30 */	li r3, CDB_SD_VF_DRIVE_LETTER@sda21
/* 8148BBE4 | 48 17 67 21 */	bl strcpy
/* 8148BBE8 | 3C E0 81 67 */	lis r7, lbl_8166BAB8@ha
/* 8148BBEC | 7F C6 F3 78 */	mr r6, r30
/* 8148BBF0 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 8148BBF4 | 38 8D 99 E8 */	li r4, lbl_81697A28@sda21
/* 8148BBF8 | 38 E7 BA B8 */	addi r7, r7, lbl_8166BAB8@l
/* 8148BBFC | 38 AD 99 E0 */	li r5, lbl_81697A20@sda21
/* 8148BC00 | 4C C6 31 82 */	crclr cr1eq
/* 8148BC04 | 48 17 4E 7D */	bl sprintf
/* 8148BC08 | 3C E0 81 67 */	lis r7, lbl_8166BAD4@ha
/* 8148BC0C | 7F C6 F3 78 */	mr r6, r30
/* 8148BC10 | 38 7F 00 38 */	addi r3, r31, 0x38
/* 8148BC14 | 38 8D 99 E8 */	li r4, lbl_81697A28@sda21
/* 8148BC18 | 38 E7 BA D4 */	addi r7, r7, lbl_8166BAD4@l
/* 8148BC1C | 38 AD 99 E0 */	li r5, lbl_81697A20@sda21
/* 8148BC20 | 4C C6 31 82 */	crclr cr1eq
/* 8148BC24 | 48 17 4E 5D */	bl sprintf
.L_8148BC28:
/* 8148BC28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148BC2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148BC30 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148BC34 | 7C 08 03 A6 */	mtlr r0
/* 8148BC38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148BC3C | 4E 80 00 20 */	blr
.endfn CDBFSSDInit

# .text:0x4FC | 0x8148BC40 | size: 0xC8
.fn CDBFSSDEjectedCallback, global
/* 8148BC40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148BC44 | 7C 08 02 A6 */	mflr r0
/* 8148BC48 | 3C 80 81 0D */	lis r4, lbl_810C89D0@ha
/* 8148BC4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148BC50 | 38 84 89 D0 */	addi r4, r4, lbl_810C89D0@l
/* 8148BC54 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148BC58 | 7C 7F 1B 78 */	mr r31, r3
/* 8148BC5C | 81 84 00 10 */	lwz r12, 0x10(r4)
/* 8148BC60 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8148BC64 | 41 82 00 0C */	beq .L_8148BC70
/* 8148BC68 | 7D 89 03 A6 */	mtctr r12
/* 8148BC6C | 4E 80 04 21 */	bctrl
.L_8148BC70:
/* 8148BC70 | 28 1F 00 02 */	cmplwi r31, 0x2
/* 8148BC74 | 40 82 00 40 */	bne .L_8148BCB4
/* 8148BC78 | 38 60 00 04 */	li r3, 0x4
/* 8148BC7C | 48 00 49 15 */	bl CDBIsPrintDebugMessage
/* 8148BC80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BC84 | 41 82 00 1C */	beq .L_8148BCA0
/* 8148BC88 | 38 60 00 04 */	li r3, 0x4
/* 8148BC8C | 48 00 49 1D */	bl CDBReport_
/* 8148BC90 | 3C 60 81 67 */	lis r3, lbl_8166BAF0@ha
/* 8148BC94 | 38 63 BA F0 */	addi r3, r3, lbl_8166BAF0@l
/* 8148BC98 | 4C C6 31 82 */	crclr cr1eq
/* 8148BC9C | 48 0A 2A 05 */	bl OSReport
.L_8148BCA0:
/* 8148BCA0 | 3C 60 81 0D */	lis r3, lbl_810C89D0@ha
/* 8148BCA4 | 38 00 00 01 */	li r0, 0x1
/* 8148BCA8 | 38 63 89 D0 */	addi r3, r3, lbl_810C89D0@l
/* 8148BCAC | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8148BCB0 | 48 00 00 44 */	b .L_8148BCF4
.L_8148BCB4:
/* 8148BCB4 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 8148BCB8 | 40 82 00 3C */	bne .L_8148BCF4
/* 8148BCBC | 38 60 00 04 */	li r3, 0x4
/* 8148BCC0 | 48 00 48 D1 */	bl CDBIsPrintDebugMessage
/* 8148BCC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BCC8 | 41 82 00 1C */	beq .L_8148BCE4
/* 8148BCCC | 38 60 00 04 */	li r3, 0x4
/* 8148BCD0 | 48 00 48 D9 */	bl CDBReport_
/* 8148BCD4 | 3C 60 81 67 */	lis r3, lbl_8166BB0C@ha
/* 8148BCD8 | 38 63 BB 0C */	addi r3, r3, lbl_8166BB0C@l
/* 8148BCDC | 4C C6 31 82 */	crclr cr1eq
/* 8148BCE0 | 48 0A 29 C1 */	bl OSReport
.L_8148BCE4:
/* 8148BCE4 | 3C 60 81 0D */	lis r3, lbl_810C89D0@ha
/* 8148BCE8 | 38 00 00 01 */	li r0, 0x1
/* 8148BCEC | 38 63 89 D0 */	addi r3, r3, lbl_810C89D0@l
/* 8148BCF0 | 90 03 00 0C */	stw r0, 0xc(r3)
.L_8148BCF4:
/* 8148BCF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148BCF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148BCFC | 7C 08 03 A6 */	mtlr r0
/* 8148BD00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148BD04 | 4E 80 00 20 */	blr
.endfn CDBFSSDEjectedCallback

# .text:0x5C4 | 0x8148BD08 | size: 0x120
.fn CDBFSSDMount, global
/* 8148BD08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148BD0C | 7C 08 02 A6 */	mflr r0
/* 8148BD10 | 3C 60 81 0D */	lis r3, lbl_810C89D0@ha
/* 8148BD14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148BD18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148BD1C | 3F E0 81 67 */	lis r31, lbl_8166BA30@ha
/* 8148BD20 | 3B FF BA 30 */	addi r31, r31, lbl_8166BA30@l
/* 8148BD24 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148BD28 | 80 03 89 D0 */	lwz r0, lbl_810C89D0@l(r3)
/* 8148BD2C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148BD30 | 40 82 00 0C */	bne .L_8148BD3C
/* 8148BD34 | 38 60 00 02 */	li r3, 0x2
/* 8148BD38 | 48 00 00 D8 */	b .L_8148BE10
.L_8148BD3C:
/* 8148BD3C | 38 C3 89 D0 */	addi r6, r3, lbl_810C89D0@l
/* 8148BD40 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8148BD44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148BD48 | 41 82 00 0C */	beq .L_8148BD54
/* 8148BD4C | 38 60 00 0A */	li r3, 0xa
/* 8148BD50 | 48 00 00 C0 */	b .L_8148BE10
.L_8148BD54:
/* 8148BD54 | 38 00 00 00 */	li r0, 0x0
/* 8148BD58 | 3C A0 81 49 */	lis r5, CDBFSSDEjectedCallback@ha
/* 8148BD5C | 90 06 00 04 */	stw r0, 0x4(r6)
/* 8148BD60 | 38 A5 BC 40 */	addi r5, r5, CDBFSSDEjectedCallback@l
/* 8148BD64 | 38 6D AD 30 */	li r3, CDB_SD_VF_DRIVE_LETTER@sda21
/* 8148BD68 | 38 80 00 00 */	li r4, 0x0
/* 8148BD6C | 90 06 00 08 */	stw r0, 0x8(r6)
/* 8148BD70 | 90 06 00 0C */	stw r0, 0xc(r6)
/* 8148BD74 | 48 04 46 B1 */	bl fn_814D0424
/* 8148BD78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BD7C | 7C 7E 1B 78 */	mr r30, r3
/* 8148BD80 | 41 82 00 4C */	beq .L_8148BDCC
/* 8148BD84 | 38 60 00 04 */	li r3, 0x4
/* 8148BD88 | 48 00 48 09 */	bl CDBIsPrintDebugMessage
/* 8148BD8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BD90 | 41 82 00 28 */	beq .L_8148BDB8
/* 8148BD94 | 38 60 00 04 */	li r3, 0x4
/* 8148BD98 | 48 00 48 11 */	bl CDBReport_
/* 8148BD9C | 7F C3 F3 78 */	mr r3, r30
/* 8148BDA0 | 48 04 56 FD */	bl fn_814D149C
/* 8148BDA4 | 7C 65 1B 78 */	mr r5, r3
/* 8148BDA8 | 7F C4 F3 78 */	mr r4, r30
/* 8148BDAC | 38 7F 00 F8 */	addi r3, r31, 0xf8
/* 8148BDB0 | 4C C6 31 82 */	crclr cr1eq
/* 8148BDB4 | 48 0A 28 ED */	bl OSReport
.L_8148BDB8:
/* 8148BDB8 | 7F C3 F3 78 */	mr r3, r30
/* 8148BDBC | 38 8D 99 E0 */	li r4, lbl_81697A20@sda21
/* 8148BDC0 | 38 A0 00 00 */	li r5, 0x0
/* 8148BDC4 | 48 00 3E 09 */	bl _CDBOnVFErrorOccured
/* 8148BDC8 | 48 00 00 48 */	b .L_8148BE10
.L_8148BDCC:
/* 8148BDCC | 38 60 00 04 */	li r3, 0x4
/* 8148BDD0 | 48 00 47 C1 */	bl CDBIsPrintDebugMessage
/* 8148BDD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BDD8 | 41 82 00 20 */	beq .L_8148BDF8
/* 8148BDDC | 38 60 00 04 */	li r3, 0x4
/* 8148BDE0 | 48 00 47 C9 */	bl CDBReport_
/* 8148BDE4 | 38 7F 01 18 */	addi r3, r31, 0x118
/* 8148BDE8 | 38 9F 01 44 */	addi r4, r31, 0x144
/* 8148BDEC | 38 AD AD 30 */	li r5, CDB_SD_VF_DRIVE_LETTER@sda21
/* 8148BDF0 | 4C C6 31 82 */	crclr cr1eq
/* 8148BDF4 | 48 0A 28 AD */	bl OSReport
.L_8148BDF8:
/* 8148BDF8 | 3C 60 81 0D */	lis r3, lbl_810C89D0@ha
/* 8148BDFC | 38 00 00 01 */	li r0, 0x1
/* 8148BE00 | 38 83 89 D0 */	addi r4, r3, lbl_810C89D0@l
/* 8148BE04 | 90 03 89 D0 */	stw r0, lbl_810C89D0@l(r3)
/* 8148BE08 | 38 60 00 00 */	li r3, 0x0
/* 8148BE0C | 90 04 00 04 */	stw r0, 0x4(r4)
.L_8148BE10:
/* 8148BE10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148BE14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148BE18 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148BE1C | 7C 08 03 A6 */	mtlr r0
/* 8148BE20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148BE24 | 4E 80 00 20 */	blr
.endfn CDBFSSDMount

# .text:0x6E4 | 0x8148BE28 | size: 0x114
.fn CDBFSSDUnmount, global
/* 8148BE28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148BE2C | 7C 08 02 A6 */	mflr r0
/* 8148BE30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148BE34 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148BE38 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148BE3C | 3F C0 81 0D */	lis r30, lbl_810C89D0@ha
/* 8148BE40 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148BE44 | 3F A0 81 67 */	lis r29, lbl_8166BA30@ha
/* 8148BE48 | 3B BD BA 30 */	addi r29, r29, lbl_8166BA30@l
/* 8148BE4C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8148BE50 | 80 1E 89 D0 */	lwz r0, lbl_810C89D0@l(r30)
/* 8148BE54 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148BE58 | 40 82 00 0C */	bne .L_8148BE64
/* 8148BE5C | 38 60 00 02 */	li r3, 0x2
/* 8148BE60 | 48 00 00 BC */	b .L_8148BF1C
.L_8148BE64:
/* 8148BE64 | 3B FE 89 D0 */	addi r31, r30, lbl_810C89D0@l
/* 8148BE68 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8148BE6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148BE70 | 40 82 00 0C */	bne .L_8148BE7C
/* 8148BE74 | 38 60 00 0B */	li r3, 0xb
/* 8148BE78 | 48 00 00 A4 */	b .L_8148BF1C
.L_8148BE7C:
/* 8148BE7C | 38 6D AD 30 */	li r3, CDB_SD_VF_DRIVE_LETTER@sda21
/* 8148BE80 | 48 04 48 B5 */	bl VFUnmountDriveForce
/* 8148BE84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BE88 | 7C 7C 1B 78 */	mr r28, r3
/* 8148BE8C | 41 82 00 4C */	beq .L_8148BED8
/* 8148BE90 | 38 60 00 01 */	li r3, 0x1
/* 8148BE94 | 48 00 46 FD */	bl CDBIsPrintDebugMessage
/* 8148BE98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BE9C | 41 82 00 28 */	beq .L_8148BEC4
/* 8148BEA0 | 38 60 00 01 */	li r3, 0x1
/* 8148BEA4 | 48 00 47 05 */	bl CDBReport_
/* 8148BEA8 | 7F 83 E3 78 */	mr r3, r28
/* 8148BEAC | 48 04 55 F1 */	bl fn_814D149C
/* 8148BEB0 | 7C 65 1B 78 */	mr r5, r3
/* 8148BEB4 | 7F 84 E3 78 */	mr r4, r28
/* 8148BEB8 | 38 7D 01 50 */	addi r3, r29, 0x150
/* 8148BEBC | 4C C6 31 82 */	crclr cr1eq
/* 8148BEC0 | 48 0A 27 E1 */	bl OSReport
.L_8148BEC4:
/* 8148BEC4 | 7F 83 E3 78 */	mr r3, r28
/* 8148BEC8 | 38 8D 99 E0 */	li r4, lbl_81697A20@sda21
/* 8148BECC | 38 A0 00 00 */	li r5, 0x0
/* 8148BED0 | 48 00 3C FD */	bl _CDBOnVFErrorOccured
/* 8148BED4 | 48 00 00 48 */	b .L_8148BF1C
.L_8148BED8:
/* 8148BED8 | 38 00 00 00 */	li r0, 0x0
/* 8148BEDC | 38 60 00 04 */	li r3, 0x4
/* 8148BEE0 | 90 1E 89 D0 */	stw r0, lbl_810C89D0@l(r30)
/* 8148BEE4 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8148BEE8 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8148BEEC | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 8148BEF0 | 48 00 46 A1 */	bl CDBIsPrintDebugMessage
/* 8148BEF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148BEF8 | 41 82 00 20 */	beq .L_8148BF18
/* 8148BEFC | 38 60 00 04 */	li r3, 0x4
/* 8148BF00 | 48 00 46 A9 */	bl CDBReport_
/* 8148BF04 | 38 7D 01 6C */	addi r3, r29, 0x16c
/* 8148BF08 | 38 9D 01 44 */	addi r4, r29, 0x144
/* 8148BF0C | 38 AD AD 30 */	li r5, CDB_SD_VF_DRIVE_LETTER@sda21
/* 8148BF10 | 4C C6 31 82 */	crclr cr1eq
/* 8148BF14 | 48 0A 27 8D */	bl OSReport
.L_8148BF18:
/* 8148BF18 | 38 60 00 00 */	li r3, 0x0
.L_8148BF1C:
/* 8148BF1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148BF20 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148BF24 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148BF28 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148BF2C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8148BF30 | 7C 08 03 A6 */	mtlr r0
/* 8148BF34 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148BF38 | 4E 80 00 20 */	blr
.endfn CDBFSSDUnmount

# .text:0x7F8 | 0x8148BF3C | size: 0x10
.fn CDBFSSDIsMounted, global
/* 8148BF3C | 3C 60 81 0D */	lis r3, lbl_810C89D0@ha
/* 8148BF40 | 38 63 89 D0 */	addi r3, r3, lbl_810C89D0@l
/* 8148BF44 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8148BF48 | 4E 80 00 20 */	blr
.endfn CDBFSSDIsMounted

# .text:0x808 | 0x8148BF4C | size: 0x10
.fn CDBFSSDIsEjected, global
/* 8148BF4C | 3C 60 81 0D */	lis r3, lbl_810C89D0@ha
/* 8148BF50 | 38 63 89 D0 */	addi r3, r3, lbl_810C89D0@l
/* 8148BF54 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148BF58 | 4E 80 00 20 */	blr
.endfn CDBFSSDIsEjected

# 0x8166BA30..0x8166BBC0 | size: 0x190
.data
.balign 8

# .data:0x0 | 0x8166BA30 | size: 0x30
.obj lbl_8166BA30, global
	.4byte 0x56464669
	.4byte 0x6C655365
	.4byte 0x61726368
	.4byte 0x46697273
	.4byte 0x7420696E
	.4byte 0x20434442
	.4byte 0x46534973
	.4byte 0x45786973
	.4byte 0x7446696C
	.4byte 0x65282920
	.4byte 0x25732025
	.4byte 0x730A0000
.endobj lbl_8166BA30

# .data:0x30 | 0x8166BA60 | size: 0x1C
.obj lbl_8166BA60, global
	.4byte 0x56464669
	.4byte 0x6C655365
	.4byte 0x61726368
	.4byte 0x46697273
	.4byte 0x74202573
	.4byte 0x2025730A
	.4byte 0x00000000
.endobj lbl_8166BA60

# .data:0x4C | 0x8166BA7C | size: 0x24
.obj lbl_8166BA7C, global
	.4byte 0x43444246
	.4byte 0x53437265
	.4byte 0x61746544
	.4byte 0x6972466F
	.4byte 0x72636553
	.4byte 0x44202573
	.4byte 0x2025730A
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8166BA7C

# .data:0x70 | 0x8166BAA0 | size: 0x18
.obj lbl_8166BAA0, global
	.string "CDBFSDeleteDirSD %s %s\n"
.endobj lbl_8166BAA0

# .data:0x88 | 0x8166BAB8 | size: 0x1C
.obj lbl_8166BAB8, global
	.4byte 0x3A2F7072
	.4byte 0x69766174
	.4byte 0x652F7769
	.4byte 0x692F7469
	.4byte 0x746C652F
	.4byte 0x48414541
	.4byte 0x2F000000
.endobj lbl_8166BAB8

# .data:0xA4 | 0x8166BAD4 | size: 0x1C
.obj lbl_8166BAD4, global
	.4byte 0x3A2F7072
	.4byte 0x69766174
	.4byte 0x652F7769
	.4byte 0x692F7469
	.4byte 0x746C652F
	.4byte 0x48414541
	.4byte 0x00000000
.endobj lbl_8166BAD4

# .data:0xC0 | 0x8166BAF0 | size: 0x1C
.obj lbl_8166BAF0, global
	.4byte 0x5344456A
	.4byte 0x65637465
	.4byte 0x6443616C
	.4byte 0x6C626163
	.4byte 0x6B20454A
	.4byte 0x45435445
	.4byte 0x440A0000
.endobj lbl_8166BAF0

# .data:0xDC | 0x8166BB0C | size: 0xB4
.obj lbl_8166BB0C, global
	.4byte 0x5344456A
	.4byte 0x65637465
	.4byte 0x6443616C
	.4byte 0x6C626163
	.4byte 0x6B20494E
	.4byte 0x53455254
	.4byte 0x45440A00
	.4byte 0x56464D6F
	.4byte 0x756E7444
	.4byte 0x72697665
	.4byte 0x53444469
	.4byte 0x72656374
	.4byte 0x20657272
	.4byte 0x3D25643A
	.4byte 0x25730A00
	.4byte 0x56464D6F
	.4byte 0x756E7444
	.4byte 0x72697665
	.4byte 0x53444469
	.4byte 0x72656374
	.4byte 0x2025732D
	.4byte 0x3E5B2573
	.4byte 0x5D207375
	.4byte 0x63636565
	.4byte 0x6465640A
	.4byte 0x00000000
	.4byte 0x53442053
	.4byte 0x6C6F7430
	.4byte 0x00000000
	.4byte 0x5646556E
	.4byte 0x6D6F7574
	.4byte 0x44726976
	.4byte 0x65206572
	.4byte 0x723D2564
	.4byte 0x3A25730A
	.4byte 0x00000000
	.4byte 0x5646556E
	.4byte 0x6D6F756E
	.4byte 0x74447269
	.4byte 0x7665466F
	.4byte 0x72636520
	.4byte 0x25732073
	.4byte 0x75636365
	.4byte 0x65646564
	.4byte 0x0A000000
.endobj lbl_8166BB0C

# 0x81695028..0x81695030 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695028 | size: 0x8
.obj lbl_81695028, global
	.4byte lbl_81697A1C
	.4byte 0x00000000
.endobj lbl_81695028

# 0x81697A18..0x81697A30 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697A18 | size: 0x4
.obj lbl_81697A18, global
	.4byte 0x2A000000
.endobj lbl_81697A18

# .sdata:0x4 | 0x81697A1C | size: 0x4
.obj lbl_81697A1C, global
	.string "SD:"
.endobj lbl_81697A1C

# .sdata:0x8 | 0x81697A20 | size: 0x4
.obj lbl_81697A20, global
	.4byte 0x00000000
.endobj lbl_81697A20

# .sdata:0xC | 0x81697A24 | size: 0x4
.obj lbl_81697A24, global
	.4byte 0x53440000
.endobj lbl_81697A24

# .sdata:0x10 | 0x81697A28 | size: 0x8
.obj lbl_81697A28, global
	.4byte 0x25732573
	.4byte 0x25730000
.endobj lbl_81697A28
