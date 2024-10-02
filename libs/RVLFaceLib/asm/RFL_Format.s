.include "macros.inc"
.file "RFL_Format.c"

# 0x81330C78..0x81330CC8 | size: 0x50
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330C78 | size: 0x8
.obj "@etb_81330C78", local
.hidden "@etb_81330C78"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330C78"

# extab:0x8 | 0x81330C80 | size: 0x8
.obj "@etb_81330C80", local
.hidden "@etb_81330C80"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330C80"

# extab:0x10 | 0x81330C88 | size: 0x8
.obj "@etb_81330C88", local
.hidden "@etb_81330C88"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330C88"

# extab:0x18 | 0x81330C90 | size: 0x8
.obj "@etb_81330C90", local
.hidden "@etb_81330C90"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330C90"

# extab:0x20 | 0x81330C98 | size: 0x8
.obj "@etb_81330C98", local
.hidden "@etb_81330C98"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330C98"

# extab:0x28 | 0x81330CA0 | size: 0x8
.obj "@etb_81330CA0", local
.hidden "@etb_81330CA0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330CA0"

# extab:0x30 | 0x81330CA8 | size: 0x8
.obj "@etb_81330CA8", local
.hidden "@etb_81330CA8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330CA8"

# extab:0x38 | 0x81330CB0 | size: 0x8
.obj "@etb_81330CB0", local
.hidden "@etb_81330CB0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330CB0"

# extab:0x40 | 0x81330CB8 | size: 0x8
.obj "@etb_81330CB8", local
.hidden "@etb_81330CB8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330CB8"

# extab:0x48 | 0x81330CC0 | size: 0x8
.obj "@etb_81330CC0", local
.hidden "@etb_81330CC0"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330CC0"

# 0x81331C44..0x81331CBC | size: 0x78
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331C44 | size: 0xC
.obj "@eti_81331C44", local
.hidden "@eti_81331C44"
	.4byte RFLiClearTableData
	.4byte 0x0000004C
	.4byte "@etb_81330C78"
.endobj "@eti_81331C44"

# extabindex:0xC | 0x81331C50 | size: 0xC
.obj "@eti_81331C50", local
.hidden "@eti_81331C50"
	.4byte RFLiClearDBBuffer
	.4byte 0x000000BC
	.4byte "@etb_81330C80"
.endobj "@eti_81331C50"

# extabindex:0x18 | 0x81331C5C | size: 0xC
.obj "@eti_81331C5C", local
.hidden "@eti_81331C5C"
	.4byte formatCloseCallback_
	.4byte 0x00000034
	.4byte "@etb_81330C88"
.endobj "@eti_81331C5C"

# extabindex:0x24 | 0x81331C68 | size: 0xC
.obj "@eti_81331C68", local
.hidden "@eti_81331C68"
	.4byte maxblockCloseCallback_
	.4byte 0x00000030
	.4byte "@etb_81330C90"
.endobj "@eti_81331C68"

# extabindex:0x30 | 0x81331C74 | size: 0xC
.obj "@eti_81331C74", local
.hidden "@eti_81331C74"
	.4byte formatWriteCallback_
	.4byte 0x00000158
	.4byte "@etb_81330C98"
.endobj "@eti_81331C74"

# extabindex:0x3C | 0x81331C80 | size: 0xC
.obj "@eti_81331C80", local
.hidden "@eti_81331C80"
	.4byte formatCalcCRCCb_
	.4byte 0x00000040
	.4byte "@etb_81330CA0"
.endobj "@eti_81331C80"

# extabindex:0x48 | 0x81331C8C | size: 0xC
.obj "@eti_81331C8C", local
.hidden "@eti_81331C8C"
	.4byte formatOpenCallback_
	.4byte 0x00000094
	.4byte "@etb_81330CA8"
.endobj "@eti_81331C8C"

# extabindex:0x54 | 0x81331C98 | size: 0xC
.obj "@eti_81331C98", local
.hidden "@eti_81331C98"
	.4byte formatDeleteCallback_
	.4byte 0x0000003C
	.4byte "@etb_81330CB0"
.endobj "@eti_81331C98"

# extabindex:0x60 | 0x81331CA4 | size: 0xC
.obj "@eti_81331CA4", local
.hidden "@eti_81331CA4"
	.4byte formatCreateDirCallback_
	.4byte 0x00000064
	.4byte "@etb_81330CB8"
.endobj "@eti_81331CA4"

# extabindex:0x6C | 0x81331CB0 | size: 0xC
.obj "@eti_81331CB0", local
.hidden "@eti_81331CB0"
	.4byte RFLiFormatAsync
	.4byte 0x00000108
	.4byte "@etb_81330CC0"
.endobj "@eti_81331CB0"

# 0x814E9F08..0x814EA448 | size: 0x540
.text
.balign 4

# .text:0x0 | 0x814E9F08 | size: 0x4C
.fn RFLiClearTableData, global
/* 814E9F08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E9F0C | 7C 08 02 A6 */	mflr r0
/* 814E9F10 | 38 80 00 00 */	li r4, 0x0
/* 814E9F14 | 38 A0 00 0C */	li r5, 0xc
/* 814E9F18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E9F1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814E9F20 | 7C 7F 1B 78 */	mr r31, r3
/* 814E9F24 | 4B E4 64 11 */	bl memset
/* 814E9F28 | A8 7F 00 08 */	lha r3, 0x8(r31)
/* 814E9F2C | A8 1F 00 0A */	lha r0, 0xa(r31)
/* 814E9F30 | 60 63 7F FF */	ori r3, r3, 0x7fff
/* 814E9F34 | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814E9F38 | B0 7F 00 08 */	sth r3, 0x8(r31)
/* 814E9F3C | B0 1F 00 0A */	sth r0, 0xa(r31)
/* 814E9F40 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814E9F44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E9F48 | 7C 08 03 A6 */	mtlr r0
/* 814E9F4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E9F50 | 4E 80 00 20 */	blr
.endfn RFLiClearTableData

# .text:0x4C | 0x814E9F54 | size: 0xBC
.fn RFLiClearDBBuffer, global
/* 814E9F54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E9F58 | 7C 08 02 A6 */	mflr r0
/* 814E9F5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E9F60 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E9F64 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E9F68 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E9F6C | 4B FF 0D 15 */	bl RFLiGetDBManager
/* 814E9F70 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 814E9F74 | 3C 60 00 02 */	lis r3, 0x2
/* 814E9F78 | 38 A3 F1 E0 */	subi r5, r3, 0xe20
/* 814E9F7C | 38 80 00 00 */	li r4, 0x0
/* 814E9F80 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 814E9F84 | 4B E4 63 B1 */	bl memset
/* 814E9F88 | 3C 60 52 4E */	lis r3, 0x524e
/* 814E9F8C | 38 00 FF FF */	li r0, -0x1
/* 814E9F90 | 38 83 4F 44 */	addi r4, r3, 0x4f44
/* 814E9F94 | 3B FE 1D 08 */	addi r31, r30, 0x1d08
/* 814E9F98 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 814E9F9C | 38 63 48 44 */	addi r3, r3, 0x4844
/* 814E9FA0 | 3B A0 00 00 */	li r29, 0x0
/* 814E9FA4 | 80 9E 1C EC */	lwz r4, 0x1cec(r30)
/* 814E9FA8 | 64 84 80 00 */	oris r4, r4, 0x8000
/* 814E9FAC | 90 9E 1C EC */	stw r4, 0x1cec(r30)
/* 814E9FB0 | 90 7E 1D 00 */	stw r3, 0x1d00(r30)
/* 814E9FB4 | B0 1E 1D 04 */	sth r0, 0x1d04(r30)
/* 814E9FB8 | B0 1E 1D 06 */	sth r0, 0x1d06(r30)
.L_814E9FBC:
/* 814E9FBC | 7F E3 FB 78 */	mr r3, r31
/* 814E9FC0 | 38 80 00 00 */	li r4, 0x0
/* 814E9FC4 | 38 A0 00 0C */	li r5, 0xc
/* 814E9FC8 | 4B E4 63 6D */	bl memset
/* 814E9FCC | A8 1F 00 08 */	lha r0, 0x8(r31)
/* 814E9FD0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814E9FD4 | 2C 1D 27 10 */	cmpwi r29, 0x2710
/* 814E9FD8 | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814E9FDC | B0 1F 00 08 */	sth r0, 0x8(r31)
/* 814E9FE0 | A8 1F 00 0A */	lha r0, 0xa(r31)
/* 814E9FE4 | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814E9FE8 | B0 1F 00 0A */	sth r0, 0xa(r31)
/* 814E9FEC | 3B FF 00 0C */	addi r31, r31, 0xc
/* 814E9FF0 | 41 80 FF CC */	blt .L_814E9FBC
/* 814E9FF4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E9FF8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E9FFC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814EA000 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814EA004 | 7C 08 03 A6 */	mtlr r0
/* 814EA008 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EA00C | 4E 80 00 20 */	blr
.endfn RFLiClearDBBuffer

# .text:0x108 | 0x814EA010 | size: 0x34
.fn formatCloseCallback_, local
/* 814EA010 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EA014 | 7C 08 02 A6 */	mflr r0
/* 814EA018 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EA01C | 4B FF 0C E9 */	bl RFLGetAsyncStatus
/* 814EA020 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA024 | 40 82 00 10 */	bne .L_814EA034
/* 814EA028 | 4B FF 0C 59 */	bl RFLiGetDBManager
/* 814EA02C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814EA030 | 4B FF B1 A1 */	bl RFLiBootLoadDatabaseAsync
.L_814EA034:
/* 814EA034 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EA038 | 7C 08 03 A6 */	mtlr r0
/* 814EA03C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EA040 | 4E 80 00 20 */	blr
.endfn formatCloseCallback_

# .text:0x13C | 0x814EA044 | size: 0x30
.fn maxblockCloseCallback_, local
/* 814EA044 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EA048 | 7C 08 02 A6 */	mflr r0
/* 814EA04C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EA050 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EA054 | 3B E0 00 0E */	li r31, 0xe
/* 814EA058 | 4B FF 0C A5 */	bl RFLiGetManager
/* 814EA05C | 93 E3 1B 40 */	stw r31, 0x1b40(r3)
/* 814EA060 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EA064 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EA068 | 7C 08 03 A6 */	mtlr r0
/* 814EA06C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EA070 | 4E 80 00 20 */	blr
.endfn maxblockCloseCallback_

# .text:0x16C | 0x814EA074 | size: 0x158
.fn formatWriteCallback_, local
/* 814EA074 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EA078 | 7C 08 02 A6 */	mflr r0
/* 814EA07C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EA080 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814EA084 | 48 10 F4 3D */	bl _savegpr_27
/* 814EA088 | 4B FF 0C 15 */	bl RFLiGetHDBManager
/* 814EA08C | 7C 7F 1B 78 */	mr r31, r3
/* 814EA090 | 3B A0 00 00 */	li r29, 0x0
/* 814EA094 | 4B FF 0C 71 */	bl RFLGetAsyncStatus
/* 814EA098 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA09C | 40 82 00 BC */	bne .L_814EA158
/* 814EA0A0 | A8 7F 00 1C */	lha r3, 0x1c(r31)
/* 814EA0A4 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814EA0A8 | 40 82 00 10 */	bne .L_814EA0B8
/* 814EA0AC | 38 00 00 00 */	li r0, 0x0
/* 814EA0B0 | B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 814EA0B4 | 48 00 00 0C */	b .L_814EA0C0
.L_814EA0B8:
/* 814EA0B8 | 38 03 04 E2 */	addi r0, r3, 0x4e2
/* 814EA0BC | B0 1F 00 1C */	sth r0, 0x1c(r31)
.L_814EA0C0:
/* 814EA0C0 | A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 814EA0C4 | 2C 00 27 10 */	cmpwi r0, 0x2710
/* 814EA0C8 | 40 80 00 78 */	bge .L_814EA140
/* 814EA0CC | 54 1C 30 32 */	slwi r28, r0, 6
/* 814EA0D0 | 3B 60 00 00 */	li r27, 0x0
/* 814EA0D4 | 3B C0 00 00 */	li r30, 0x0
.L_814EA0D8:
/* 814EA0D8 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 814EA0DC | 38 80 00 00 */	li r4, 0x0
/* 814EA0E0 | 38 A0 00 40 */	li r5, 0x40
/* 814EA0E4 | 7C 60 F2 14 */	add r3, r0, r30
/* 814EA0E8 | 4B E4 62 4D */	bl memset
/* 814EA0EC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814EA0F0 | 3B DE 00 40 */	addi r30, r30, 0x40
/* 814EA0F4 | 2C 1B 04 E2 */	cmpwi r27, 0x4e2
/* 814EA0F8 | 41 80 FF E0 */	blt .L_814EA0D8
/* 814EA0FC | 3C FC 00 02 */	addis r7, r28, 0x2
/* 814EA100 | 3C 60 00 01 */	lis r3, 0x1
/* 814EA104 | 3C C0 81 4F */	lis r6, formatWriteCallback_@ha
/* 814EA108 | 80 9F 00 14 */	lwz r4, 0x14(r31)
/* 814EA10C | 38 A3 69 60 */	addi r5, r3, 0x6960
/* 814EA110 | 38 60 00 00 */	li r3, 0x0
/* 814EA114 | 38 C6 A0 74 */	addi r6, r6, formatWriteCallback_@l
/* 814EA118 | 38 E7 F1 E0 */	subi r7, r7, 0xe20
/* 814EA11C | 4B FF 40 61 */	bl RFLiWriteAsync
/* 814EA120 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814EA124 | 41 82 00 14 */	beq .L_814EA138
/* 814EA128 | 40 80 00 64 */	bge .L_814EA18C
/* 814EA12C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA130 | 41 82 00 08 */	beq .L_814EA138
/* 814EA134 | 48 00 00 58 */	b .L_814EA18C
.L_814EA138:
/* 814EA138 | 3B A0 00 01 */	li r29, 0x1
/* 814EA13C | 48 00 00 50 */	b .L_814EA18C
.L_814EA140:
/* 814EA140 | 4B FF AC ED */	bl RFLiIsCachedHDB
/* 814EA144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA148 | 41 82 00 44 */	beq .L_814EA18C
/* 814EA14C | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814EA150 | 4B FF AC CD */	bl RFLiClearCacheHDB
/* 814EA154 | 48 00 00 38 */	b .L_814EA18C
.L_814EA158:
/* 814EA158 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814EA15C | 40 82 00 30 */	bne .L_814EA18C
/* 814EA160 | 4B FF 0D 4D */	bl RFLiGetLastReason
/* 814EA164 | 2C 03 FF F7 */	cmpwi r3, -0x9
/* 814EA168 | 40 82 00 18 */	bne .L_814EA180
/* 814EA16C | 3C 80 81 4F */	lis r4, maxblockCloseCallback_@ha
/* 814EA170 | 38 60 00 00 */	li r3, 0x0
/* 814EA174 | 38 84 A0 44 */	addi r4, r4, maxblockCloseCallback_@l
/* 814EA178 | 4B FF 43 DD */	bl RFLiCloseAsync
/* 814EA17C | 48 00 00 10 */	b .L_814EA18C
.L_814EA180:
/* 814EA180 | 38 60 00 00 */	li r3, 0x0
/* 814EA184 | 38 80 00 00 */	li r4, 0x0
/* 814EA188 | 4B FF 43 CD */	bl RFLiCloseAsync
.L_814EA18C:
/* 814EA18C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814EA190 | 40 82 00 24 */	bne .L_814EA1B4
/* 814EA194 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 814EA198 | 4B FF 0A D9 */	bl RFLiFree
/* 814EA19C | 38 00 00 00 */	li r0, 0x0
/* 814EA1A0 | 3C 80 81 4F */	lis r4, formatCloseCallback_@ha
/* 814EA1A4 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 814EA1A8 | 38 84 A0 10 */	addi r4, r4, formatCloseCallback_@l
/* 814EA1AC | 38 60 00 00 */	li r3, 0x0
/* 814EA1B0 | 4B FF 43 A5 */	bl RFLiCloseAsync
.L_814EA1B4:
/* 814EA1B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814EA1B8 | 48 10 F3 55 */	bl _restgpr_27
/* 814EA1BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EA1C0 | 7C 08 03 A6 */	mtlr r0
/* 814EA1C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EA1C8 | 4E 80 00 20 */	blr
.endfn formatWriteCallback_

# .text:0x2C4 | 0x814EA1CC | size: 0x40
.fn formatCalcCRCCb_, local
/* 814EA1CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EA1D0 | 7C 08 02 A6 */	mflr r0
/* 814EA1D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EA1D8 | 4B FF 0A A9 */	bl RFLiGetDBManager
/* 814EA1DC | 3C A0 00 02 */	lis r5, 0x2
/* 814EA1E0 | 3C C0 81 4F */	lis r6, formatWriteCallback_@ha
/* 814EA1E4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814EA1E8 | 38 A5 F1 E0 */	subi r5, r5, 0xe20
/* 814EA1EC | 38 60 00 00 */	li r3, 0x0
/* 814EA1F0 | 38 C6 A0 74 */	addi r6, r6, formatWriteCallback_@l
/* 814EA1F4 | 38 E0 00 00 */	li r7, 0x0
/* 814EA1F8 | 4B FF 3F 85 */	bl RFLiWriteAsync
/* 814EA1FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EA200 | 7C 08 03 A6 */	mtlr r0
/* 814EA204 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EA208 | 4E 80 00 20 */	blr
.endfn formatCalcCRCCb_

# .text:0x304 | 0x814EA20C | size: 0x94
.fn formatOpenCallback_, local
/* 814EA20C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EA210 | 7C 08 02 A6 */	mflr r0
/* 814EA214 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EA218 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EA21C | 4B FF 0A E9 */	bl RFLGetAsyncStatus
/* 814EA220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA224 | 40 82 00 34 */	bne .L_814EA258
/* 814EA228 | 4B FF 0A 75 */	bl RFLiGetHDBManager
/* 814EA22C | 38 00 FF FF */	li r0, -0x1
/* 814EA230 | 3C 80 00 01 */	lis r4, 0x1
/* 814EA234 | B0 03 00 1C */	sth r0, 0x1c(r3)
/* 814EA238 | 7C 7F 1B 78 */	mr r31, r3
/* 814EA23C | 38 64 69 60 */	addi r3, r4, 0x6960
/* 814EA240 | 4B FF 0A 1D */	bl RFLiAlloc32
/* 814EA244 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 814EA248 | 3C 60 81 4F */	lis r3, formatCalcCRCCb_@ha
/* 814EA24C | 38 63 A1 CC */	addi r3, r3, formatCalcCRCCb_@l
/* 814EA250 | 4B FF C7 15 */	bl RFLiCreateHeaderCRCAsync
/* 814EA254 | 48 00 00 38 */	b .L_814EA28C
.L_814EA258:
/* 814EA258 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814EA25C | 40 82 00 20 */	bne .L_814EA27C
/* 814EA260 | 4B FF 0C 4D */	bl RFLiGetLastReason
/* 814EA264 | 2C 03 FF F5 */	cmpwi r3, -0xb
/* 814EA268 | 40 82 00 24 */	bne .L_814EA28C
/* 814EA26C | 3B E0 00 0D */	li r31, 0xd
/* 814EA270 | 4B FF 0A 8D */	bl RFLiGetManager
/* 814EA274 | 93 E3 1B 40 */	stw r31, 0x1b40(r3)
/* 814EA278 | 48 00 00 14 */	b .L_814EA28C
.L_814EA27C:
/* 814EA27C | 3C 80 81 4F */	lis r4, formatCloseCallback_@ha
/* 814EA280 | 38 60 00 00 */	li r3, 0x0
/* 814EA284 | 38 84 A0 10 */	addi r4, r4, formatCloseCallback_@l
/* 814EA288 | 4B FF 42 CD */	bl RFLiCloseAsync
.L_814EA28C:
/* 814EA28C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EA290 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EA294 | 7C 08 03 A6 */	mtlr r0
/* 814EA298 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EA29C | 4E 80 00 20 */	blr
.endfn formatOpenCallback_

# .text:0x398 | 0x814EA2A0 | size: 0x3C
.fn formatDeleteCallback_, local
/* 814EA2A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EA2A4 | 7C 08 02 A6 */	mflr r0
/* 814EA2A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EA2AC | 4B FF 0A 59 */	bl RFLGetAsyncStatus
/* 814EA2B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA2B4 | 40 82 00 18 */	bne .L_814EA2CC
/* 814EA2B8 | 3C A0 81 4F */	lis r5, formatOpenCallback_@ha
/* 814EA2BC | 38 60 00 00 */	li r3, 0x0
/* 814EA2C0 | 38 A5 A2 0C */	addi r5, r5, formatOpenCallback_@l
/* 814EA2C4 | 38 80 00 02 */	li r4, 0x2
/* 814EA2C8 | 4B FF 27 E9 */	bl RFLiOpenAsync
.L_814EA2CC:
/* 814EA2CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EA2D0 | 7C 08 03 A6 */	mtlr r0
/* 814EA2D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EA2D8 | 4E 80 00 20 */	blr
.endfn formatDeleteCallback_

# .text:0x3D4 | 0x814EA2DC | size: 0x64
.fn formatCreateDirCallback_, local
/* 814EA2DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814EA2E0 | 7C 08 02 A6 */	mflr r0
/* 814EA2E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814EA2E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814EA2EC | 4B FF 0A 19 */	bl RFLGetAsyncStatus
/* 814EA2F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA2F4 | 40 82 00 18 */	bne .L_814EA30C
/* 814EA2F8 | 3C 80 81 4F */	lis r4, formatDeleteCallback_@ha
/* 814EA2FC | 38 60 00 00 */	li r3, 0x0
/* 814EA300 | 38 84 A2 A0 */	addi r4, r4, formatDeleteCallback_@l
/* 814EA304 | 4B FF 49 01 */	bl RFLiDeleteAsync
/* 814EA308 | 48 00 00 24 */	b .L_814EA32C
.L_814EA30C:
/* 814EA30C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814EA310 | 40 82 00 1C */	bne .L_814EA32C
/* 814EA314 | 4B FF 0B 99 */	bl RFLiGetLastReason
/* 814EA318 | 2C 03 FF F5 */	cmpwi r3, -0xb
/* 814EA31C | 40 82 00 10 */	bne .L_814EA32C
/* 814EA320 | 3B E0 00 0D */	li r31, 0xd
/* 814EA324 | 4B FF 09 D9 */	bl RFLiGetManager
/* 814EA328 | 93 E3 1B 40 */	stw r31, 0x1b40(r3)
.L_814EA32C:
/* 814EA32C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814EA330 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814EA334 | 7C 08 03 A6 */	mtlr r0
/* 814EA338 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814EA33C | 4E 80 00 20 */	blr
.endfn formatCreateDirCallback_

# .text:0x438 | 0x814EA340 | size: 0x108
.fn RFLiFormatAsync, global
/* 814EA340 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814EA344 | 7C 08 02 A6 */	mflr r0
/* 814EA348 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814EA34C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814EA350 | 48 10 F1 71 */	bl _savegpr_27
/* 814EA354 | 7C 7B 1B 78 */	mr r27, r3
/* 814EA358 | 4B FF 08 DD */	bl RFLAvailable
/* 814EA35C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA360 | 40 82 00 0C */	bne .L_814EA36C
/* 814EA364 | 38 60 00 01 */	li r3, 0x1
/* 814EA368 | 48 00 00 C8 */	b .L_814EA430
.L_814EA36C:
/* 814EA36C | 4B FF 09 15 */	bl RFLiGetDBManager
/* 814EA370 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814EA374 | 7C 7E 1B 78 */	mr r30, r3
/* 814EA378 | 40 82 00 0C */	bne .L_814EA384
/* 814EA37C | 38 60 00 01 */	li r3, 0x1
/* 814EA380 | 48 00 00 B0 */	b .L_814EA430
.L_814EA384:
/* 814EA384 | 4B FF 08 FD */	bl RFLiGetDBManager
/* 814EA388 | 83 A3 00 00 */	lwz r29, 0x0(r3)
/* 814EA38C | 3C 60 00 02 */	lis r3, 0x2
/* 814EA390 | 38 A3 F1 E0 */	subi r5, r3, 0xe20
/* 814EA394 | 38 80 00 00 */	li r4, 0x0
/* 814EA398 | 38 7D 00 04 */	addi r3, r29, 0x4
/* 814EA39C | 4B E4 5F 99 */	bl memset
/* 814EA3A0 | 3C 60 52 4E */	lis r3, 0x524e
/* 814EA3A4 | 38 00 FF FF */	li r0, -0x1
/* 814EA3A8 | 38 83 4F 44 */	addi r4, r3, 0x4f44
/* 814EA3AC | 3B 9D 1D 08 */	addi r28, r29, 0x1d08
/* 814EA3B0 | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 814EA3B4 | 38 63 48 44 */	addi r3, r3, 0x4844
/* 814EA3B8 | 3B E0 00 00 */	li r31, 0x0
/* 814EA3BC | 80 9D 1C EC */	lwz r4, 0x1cec(r29)
/* 814EA3C0 | 64 84 80 00 */	oris r4, r4, 0x8000
/* 814EA3C4 | 90 9D 1C EC */	stw r4, 0x1cec(r29)
/* 814EA3C8 | 90 7D 1D 00 */	stw r3, 0x1d00(r29)
/* 814EA3CC | B0 1D 1D 04 */	sth r0, 0x1d04(r29)
/* 814EA3D0 | B0 1D 1D 06 */	sth r0, 0x1d06(r29)
.L_814EA3D4:
/* 814EA3D4 | 7F 83 E3 78 */	mr r3, r28
/* 814EA3D8 | 38 80 00 00 */	li r4, 0x0
/* 814EA3DC | 38 A0 00 0C */	li r5, 0xc
/* 814EA3E0 | 4B E4 5F 55 */	bl memset
/* 814EA3E4 | A8 1C 00 08 */	lha r0, 0x8(r28)
/* 814EA3E8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814EA3EC | 2C 1F 27 10 */	cmpwi r31, 0x2710
/* 814EA3F0 | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814EA3F4 | B0 1C 00 08 */	sth r0, 0x8(r28)
/* 814EA3F8 | A8 1C 00 0A */	lha r0, 0xa(r28)
/* 814EA3FC | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814EA400 | B0 1C 00 0A */	sth r0, 0xa(r28)
/* 814EA404 | 3B 9C 00 0C */	addi r28, r28, 0xc
/* 814EA408 | 41 80 FF CC */	blt .L_814EA3D4
/* 814EA40C | 4B FF 08 F1 */	bl RFLiGetManager
/* 814EA410 | 88 03 1B 3C */	lbz r0, 0x1b3c(r3)
/* 814EA414 | 54 1F 07 BC */	rlwinm r31, r0, 0, 30, 30
/* 814EA418 | 4B FF 08 E5 */	bl RFLiGetManager
/* 814EA41C | 9B E3 1B 3C */	stb r31, 0x1b3c(r3)
/* 814EA420 | 3C 60 81 4F */	lis r3, formatCreateDirCallback_@ha
/* 814EA424 | 38 63 A2 DC */	addi r3, r3, formatCreateDirCallback_@l
/* 814EA428 | 93 7E 00 08 */	stw r27, 0x8(r30)
/* 814EA42C | 4B FF 4E 59 */	bl RFLiCreateSaveDirAsync
.L_814EA430:
/* 814EA430 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814EA434 | 48 10 F0 D9 */	bl _restgpr_27
/* 814EA438 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814EA43C | 7C 08 03 A6 */	mtlr r0
/* 814EA440 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814EA444 | 4E 80 00 20 */	blr
.endfn RFLiFormatAsync
