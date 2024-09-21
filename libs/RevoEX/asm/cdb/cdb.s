.include "macros.inc"
.file "cdb.c"

# 0x81485FAC..0x8148615C | size: 0x1B0
.text
.balign 4

# .text:0x0 | 0x81485FAC | size: 0xC
.fn CDBInit, global
/* 81485FAC | 38 80 00 00 */	li r4, 0x0
/* 81485FB0 | 38 A0 00 00 */	li r5, 0x0
/* 81485FB4 | 48 00 00 04 */	b CDBInitEx
.endfn CDBInit

# .text:0xC | 0x81485FB8 | size: 0xE8
.fn CDBInitEx, global
/* 81485FB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81485FBC | 7C 08 02 A6 */	mflr r0
/* 81485FC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81485FC4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81485FC8 | 7C BF 2B 78 */	mr r31, r5
/* 81485FCC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81485FD0 | 7C 9E 23 78 */	mr r30, r4
/* 81485FD4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81485FD8 | 7C 7D 1B 78 */	mr r29, r3
/* 81485FDC | 48 04 9E 25 */	bl VFIsAvailable
/* 81485FE0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81485FE4 | 41 82 00 34 */	beq .L_81486018
/* 81485FE8 | 38 60 00 01 */	li r3, 0x1
/* 81485FEC | 48 00 A5 A5 */	bl CDBIsPrintDebugMessage
/* 81485FF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81485FF4 | 41 82 00 1C */	beq .L_81486010
/* 81485FF8 | 38 60 00 01 */	li r3, 0x1
/* 81485FFC | 48 00 A5 AD */	bl CDBReport_
/* 81486000 | 3C 60 81 67 */	lis r3, lbl_8166B400@ha
/* 81486004 | 38 63 B4 00 */	addi r3, r3, lbl_8166B400@l
/* 81486008 | 4C C6 31 82 */	crclr cr1eq
/* 8148600C | 48 0A 86 95 */	bl OSReport
.L_81486010:
/* 81486010 | 38 60 00 18 */	li r3, 0x18
/* 81486014 | 48 00 00 70 */	b .L_81486084
.L_81486018:
/* 81486018 | 7F C3 F3 78 */	mr r3, r30
/* 8148601C | 7F E4 FB 78 */	mr r4, r31
/* 81486020 | 48 00 4C A9 */	bl CDBFSInit
/* 81486024 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486028 | 41 82 00 08 */	beq .L_81486030
/* 8148602C | 48 00 00 58 */	b .L_81486084
.L_81486030:
/* 81486030 | 7F A3 EB 78 */	mr r3, r29
/* 81486034 | 48 00 92 61 */	bl CDBDatabaseInstancePoolInit
/* 81486038 | 7F A3 EB 78 */	mr r3, r29
/* 8148603C | 48 00 93 15 */	bl CDBRecordPoolInit
/* 81486040 | 48 00 5B 35 */	bl CDBFSSDInit
/* 81486044 | 48 00 92 2D */	bl MutexInitialized
/* 81486048 | 48 00 9C F5 */	bl CDBInitHashedMacAddr
/* 8148604C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486050 | 41 82 00 08 */	beq .L_81486058
/* 81486054 | 48 00 00 30 */	b .L_81486084
.L_81486058:
/* 81486058 | 38 60 00 04 */	li r3, 0x4
/* 8148605C | 48 00 A5 35 */	bl CDBIsPrintDebugMessage
/* 81486060 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486064 | 41 82 00 1C */	beq .L_81486080
/* 81486068 | 38 60 00 04 */	li r3, 0x4
/* 8148606C | 48 00 A5 3D */	bl CDBReport_
/* 81486070 | 3C 60 81 67 */	lis r3, lbl_8166B418@ha
/* 81486074 | 38 63 B4 18 */	addi r3, r3, lbl_8166B418@l
/* 81486078 | 4C C6 31 82 */	crclr cr1eq
/* 8148607C | 48 0A 86 25 */	bl OSReport
.L_81486080:
/* 81486080 | 38 60 00 00 */	li r3, 0x0
.L_81486084:
/* 81486084 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81486088 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148608C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81486090 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81486094 | 7C 08 03 A6 */	mtlr r0
/* 81486098 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148609C | 4E 80 00 20 */	blr
.endfn CDBInitEx

# .text:0xF4 | 0x814860A0 | size: 0xB4
.fn CDBUninit, global
/* 814860A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814860A4 | 7C 08 02 A6 */	mflr r0
/* 814860A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814860AC | 48 00 5E 91 */	bl CDBFSSDIsMounted
/* 814860B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814860B4 | 41 82 00 34 */	beq .L_814860E8
/* 814860B8 | 38 60 00 03 */	li r3, 0x3
/* 814860BC | 48 00 A4 D5 */	bl CDBIsPrintDebugMessage
/* 814860C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814860C4 | 41 82 00 1C */	beq .L_814860E0
/* 814860C8 | 38 60 00 03 */	li r3, 0x3
/* 814860CC | 48 00 A4 DD */	bl CDBReport_
/* 814860D0 | 3C 60 81 67 */	lis r3, lbl_8166B438@ha
/* 814860D4 | 38 63 B4 38 */	addi r3, r3, lbl_8166B438@l
/* 814860D8 | 4C C6 31 82 */	crclr cr1eq
/* 814860DC | 48 0A 85 C5 */	bl OSReport
.L_814860E0:
/* 814860E0 | 38 60 00 0A */	li r3, 0xa
/* 814860E4 | 48 00 00 60 */	b .L_81486144
.L_814860E8:
/* 814860E8 | 48 00 97 4D */	bl CDBDatabaseCheckOpenRecord
/* 814860EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814860F0 | 41 82 00 08 */	beq .L_814860F8
/* 814860F4 | 48 00 00 50 */	b .L_81486144
.L_814860F8:
/* 814860F8 | 48 00 96 85 */	bl CDBDatabaseCheckOpenDatabase
/* 814860FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486100 | 41 82 00 08 */	beq .L_81486108
/* 81486104 | 48 00 00 40 */	b .L_81486144
.L_81486108:
/* 81486108 | 48 00 4F B9 */	bl CDBFSUninit
/* 8148610C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486110 | 41 82 00 08 */	beq .L_81486118
/* 81486114 | 48 00 00 30 */	b .L_81486144
.L_81486118:
/* 81486118 | 38 60 00 04 */	li r3, 0x4
/* 8148611C | 48 00 A4 75 */	bl CDBIsPrintDebugMessage
/* 81486120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81486124 | 41 82 00 1C */	beq .L_81486140
/* 81486128 | 38 60 00 04 */	li r3, 0x4
/* 8148612C | 48 00 A4 7D */	bl CDBReport_
/* 81486130 | 3C 60 81 67 */	lis r3, lbl_8166B450@ha
/* 81486134 | 38 63 B4 50 */	addi r3, r3, lbl_8166B450@l
/* 81486138 | 4C C6 31 82 */	crclr cr1eq
/* 8148613C | 48 0A 85 65 */	bl OSReport
.L_81486140:
/* 81486140 | 38 60 00 00 */	li r3, 0x0
.L_81486144:
/* 81486144 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81486148 | 7C 08 03 A6 */	mtlr r0
/* 8148614C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81486150 | 4E 80 00 20 */	blr
.endfn CDBUninit

# .text:0x1A8 | 0x81486154 | size: 0x8
.fn CDBGetFreeSize, global
/* 81486154 | 38 6D 99 68 */	li r3, lbl_816979A8@sda21
/* 81486158 | 48 04 AE 98 */	b fn_814D0FF0
.endfn CDBGetFreeSize

# 0x8166B400..0x8166B478 | size: 0x78
.data
.balign 8

# .data:0x0 | 0x8166B400 | size: 0x18
.obj lbl_8166B400, global
	.4byte 0x56462069
	.4byte 0x73206E6F
	.4byte 0x7420696E
	.4byte 0x69746961
	.4byte 0x6C697A65
	.4byte 0x640A0000
.endobj lbl_8166B400

# .data:0x18 | 0x8166B418 | size: 0x20
.obj lbl_8166B418, global
	.string "CDBSystem has been initialized\n"
.endobj lbl_8166B418

# .data:0x38 | 0x8166B438 | size: 0x18
.obj lbl_8166B438, global
	.4byte 0x53442069
	.4byte 0x73206D6F
	.4byte 0x756E7465
	.4byte 0x6420746F
	.4byte 0x20434442
	.4byte 0x0A000000
.endobj lbl_8166B438

# .data:0x50 | 0x8166B450 | size: 0x28
.obj lbl_8166B450, global
	.4byte 0x43444253
	.4byte 0x79737465
	.4byte 0x6D206861
	.4byte 0x73206265
	.4byte 0x656E2075
	.4byte 0x6E696E69
	.4byte 0x7469616C
	.4byte 0x697A6564
	.4byte 0x0A000000
	.4byte 0x00000000
.endobj lbl_8166B450

# 0x816979A8..0x816979B0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816979A8 | size: 0x8
.obj lbl_816979A8, global
	.4byte 0x43444200
	.4byte 0x00000000
.endobj lbl_816979A8
