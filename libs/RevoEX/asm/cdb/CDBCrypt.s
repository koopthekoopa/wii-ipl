.include "macros.inc"
.file "CDBCrypt.c"

# 0x814920A8..0x814923A0 | size: 0x2F8
.text
.balign 4

# .text:0x0 | 0x814920A8 | size: 0x1D0
.fn GenCDBIdNumber, global
/* 814920A8 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 814920AC | 7C 08 02 A6 */	mflr r0
/* 814920B0 | 38 8D 9A 40 */	li r4, lbl_81697A80@sda21
/* 814920B4 | 38 AD 9A 48 */	li r5, lbl_81697A88@sda21
/* 814920B8 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 814920BC | 38 CD 9A 50 */	li r6, lbl_81697A90@sda21
/* 814920C0 | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 814920C4 | 93 C1 01 18 */	stw r30, 0x118(r1)
/* 814920C8 | 3F C0 81 67 */	lis r30, lbl_8166CB30@ha
/* 814920CC | 38 FE CB 30 */	addi r7, r30, lbl_8166CB30@l
/* 814920D0 | 93 A1 01 14 */	stw r29, 0x114(r1)
/* 814920D4 | 93 81 01 10 */	stw r28, 0x110(r1)
/* 814920D8 | 7C 7C 1B 78 */	mr r28, r3
/* 814920DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814920E0 | 4C C6 31 82 */	crclr cr1eq
/* 814920E4 | 48 16 E9 9D */	bl sprintf
/* 814920E8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814920EC | 38 8D 9A 54 */	li r4, lbl_81697A94@sda21
/* 814920F0 | 38 A0 00 00 */	li r5, 0x0
/* 814920F4 | 48 03 E7 CD */	bl VFOpenFile
/* 814920F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814920FC | 7C 7D 1B 78 */	mr r29, r3
/* 81492100 | 40 82 00 B0 */	bne .L_814921B0
/* 81492104 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81492108 | 38 80 00 00 */	li r4, 0x0
/* 8149210C | 48 03 E7 05 */	bl VFCreateFile
/* 81492110 | 3B E0 00 00 */	li r31, 0x0
/* 81492114 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81492118 | 93 FC 00 00 */	stw r31, 0x0(r28)
/* 8149211C | 7C 7D 1B 78 */	mr r29, r3
/* 81492120 | 40 82 00 44 */	bne .L_81492164
/* 81492124 | 38 60 00 02 */	li r3, 0x2
/* 81492128 | 4B FF E4 69 */	bl CDBIsPrintDebugMessage
/* 8149212C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81492130 | 41 82 00 20 */	beq .L_81492150
/* 81492134 | 38 60 00 02 */	li r3, 0x2
/* 81492138 | 4B FF E4 71 */	bl CDBReport_
/* 8149213C | 3C 60 81 67 */	lis r3, lbl_8166CB3C@ha
/* 81492140 | 38 9E CB 30 */	addi r4, r30, lbl_8166CB30@l
/* 81492144 | 38 63 CB 3C */	addi r3, r3, lbl_8166CB3C@l
/* 81492148 | 4C C6 31 82 */	crclr cr1eq
/* 8149214C | 48 09 C5 55 */	bl OSReport
.L_81492150:
/* 81492150 | 4B FF DA 95 */	bl CDBGetLastVFError
/* 81492154 | 38 8D 9A 58 */	li r4, lbl_81697A98@sda21
/* 81492158 | 38 A0 00 00 */	li r5, 0x0
/* 8149215C | 4B FF DA 71 */	bl _CDBOnVFErrorOccured
/* 81492160 | 48 00 00 F8 */	b .L_81492258
.L_81492164:
/* 81492164 | 7F 84 E3 78 */	mr r4, r28
/* 81492168 | 38 A0 00 04 */	li r5, 0x4
/* 8149216C | 48 03 E9 AD */	bl VFWriteFile
/* 81492170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81492174 | 41 82 00 14 */	beq .L_81492188
/* 81492178 | 38 8D 9A 58 */	li r4, lbl_81697A98@sda21
/* 8149217C | 38 A0 00 00 */	li r5, 0x0
/* 81492180 | 4B FF DA 4D */	bl _CDBOnVFErrorOccured
/* 81492184 | 48 00 00 D4 */	b .L_81492258
.L_81492188:
/* 81492188 | 7F A3 EB 78 */	mr r3, r29
/* 8149218C | 48 03 E7 F9 */	bl VFCloseFile
/* 81492190 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81492194 | 41 82 00 14 */	beq .L_814921A8
/* 81492198 | 38 8D 9A 58 */	li r4, lbl_81697A98@sda21
/* 8149219C | 38 A0 00 00 */	li r5, 0x0
/* 814921A0 | 4B FF DA 2D */	bl _CDBOnVFErrorOccured
/* 814921A4 | 48 00 00 B4 */	b .L_81492258
.L_814921A8:
/* 814921A8 | 7F E3 FB 78 */	mr r3, r31
/* 814921AC | 48 00 00 AC */	b .L_81492258
.L_814921B0:
/* 814921B0 | 7F 84 E3 78 */	mr r4, r28
/* 814921B4 | 38 A0 00 04 */	li r5, 0x4
/* 814921B8 | 38 C0 00 00 */	li r6, 0x0
/* 814921BC | 48 03 E8 C1 */	bl VFReadFile
/* 814921C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814921C4 | 41 82 00 14 */	beq .L_814921D8
/* 814921C8 | 38 8D 9A 58 */	li r4, lbl_81697A98@sda21
/* 814921CC | 38 A0 00 00 */	li r5, 0x0
/* 814921D0 | 4B FF D9 FD */	bl _CDBOnVFErrorOccured
/* 814921D4 | 48 00 00 84 */	b .L_81492258
.L_814921D8:
/* 814921D8 | 80 DC 00 00 */	lwz r6, 0x0(r28)
/* 814921DC | 7F A3 EB 78 */	mr r3, r29
/* 814921E0 | 38 80 00 00 */	li r4, 0x0
/* 814921E4 | 38 A0 00 00 */	li r5, 0x0
/* 814921E8 | 38 06 00 01 */	addi r0, r6, 0x1
/* 814921EC | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814921F0 | 48 03 E8 01 */	bl VFSeekFile
/* 814921F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814921F8 | 41 82 00 14 */	beq .L_8149220C
/* 814921FC | 38 8D 9A 58 */	li r4, lbl_81697A98@sda21
/* 81492200 | 38 A0 00 00 */	li r5, 0x0
/* 81492204 | 4B FF D9 C9 */	bl _CDBOnVFErrorOccured
/* 81492208 | 48 00 00 50 */	b .L_81492258
.L_8149220C:
/* 8149220C | 7F A3 EB 78 */	mr r3, r29
/* 81492210 | 7F 84 E3 78 */	mr r4, r28
/* 81492214 | 38 A0 00 04 */	li r5, 0x4
/* 81492218 | 48 03 E9 01 */	bl VFWriteFile
/* 8149221C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81492220 | 41 82 00 14 */	beq .L_81492234
/* 81492224 | 38 8D 9A 58 */	li r4, lbl_81697A98@sda21
/* 81492228 | 38 A0 00 00 */	li r5, 0x0
/* 8149222C | 4B FF D9 A1 */	bl _CDBOnVFErrorOccured
/* 81492230 | 48 00 00 28 */	b .L_81492258
.L_81492234:
/* 81492234 | 7F A3 EB 78 */	mr r3, r29
/* 81492238 | 48 03 E7 4D */	bl VFCloseFile
/* 8149223C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81492240 | 41 82 00 14 */	beq .L_81492254
/* 81492244 | 38 8D 9A 58 */	li r4, lbl_81697A98@sda21
/* 81492248 | 38 A0 00 00 */	li r5, 0x0
/* 8149224C | 4B FF D9 81 */	bl _CDBOnVFErrorOccured
/* 81492250 | 48 00 00 08 */	b .L_81492258
.L_81492254:
/* 81492254 | 38 60 00 00 */	li r3, 0x0
.L_81492258:
/* 81492258 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8149225C | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 81492260 | 83 C1 01 18 */	lwz r30, 0x118(r1)
/* 81492264 | 83 A1 01 14 */	lwz r29, 0x114(r1)
/* 81492268 | 83 81 01 10 */	lwz r28, 0x110(r1)
/* 8149226C | 7C 08 03 A6 */	mtlr r0
/* 81492270 | 38 21 01 20 */	addi r1, r1, 0x120
/* 81492274 | 4E 80 00 20 */	blr
.endfn GenCDBIdNumber

# .text:0x1D0 | 0x81492278 | size: 0x14
.fn CDBCryptBufSysInit, global
/* 81492278 | 90 6D AD 60 */	stw r3, lbl_81698DA0@sda21(r0)
/* 8149227C | 3C 63 00 04 */	addis r3, r3, 0x4
/* 81492280 | 38 00 00 00 */	li r0, 0x0
/* 81492284 | 90 03 EC 08 */	stw r0, -0x13f8(r3)
/* 81492288 | 4E 80 00 20 */	blr
.endfn CDBCryptBufSysInit

# .text:0x1E4 | 0x8149228C | size: 0x90
.fn CDBCryptBufAllocate, global
/* 8149228C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81492290 | 7C 08 02 A6 */	mflr r0
/* 81492294 | 38 C0 00 00 */	li r6, 0x0
/* 81492298 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149229C | 80 ED AD 60 */	lwz r7, lbl_81698DA0@sda21(r0)
/* 814922A0 | 3C 87 00 04 */	addis r4, r7, 0x4
/* 814922A4 | 80 04 EC 08 */	lwz r0, -0x13f8(r4)
/* 814922A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814922AC | 40 82 00 34 */	bne .L_814922E0
/* 814922B0 | 3C 80 00 04 */	lis r4, 0x4
/* 814922B4 | 38 A0 00 01 */	li r5, 0x1
/* 814922B8 | 38 04 EC 40 */	subi r0, r4, 0x13c0
/* 814922BC | 7C C6 01 D6 */	mullw r6, r6, r0
/* 814922C0 | 7C 07 32 14 */	add r0, r7, r6
/* 814922C4 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814922C8 | 38 60 00 00 */	li r3, 0x0
/* 814922CC | 80 8D AD 60 */	lwz r4, lbl_81698DA0@sda21(r0)
/* 814922D0 | 3C 04 00 04 */	addis r0, r4, 0x4
/* 814922D4 | 7C 80 32 14 */	add r4, r0, r6
/* 814922D8 | 90 A4 EC 08 */	stw r5, -0x13f8(r4)
/* 814922DC | 48 00 00 30 */	b .L_8149230C
.L_814922E0:
/* 814922E0 | 38 60 00 02 */	li r3, 0x2
/* 814922E4 | 4B FF E2 AD */	bl CDBIsPrintDebugMessage
/* 814922E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814922EC | 41 82 00 1C */	beq .L_81492308
/* 814922F0 | 38 60 00 02 */	li r3, 0x2
/* 814922F4 | 4B FF E2 B5 */	bl CDBReport_
/* 814922F8 | 3C 60 81 67 */	lis r3, lbl_8166CB58@ha
/* 814922FC | 38 63 CB 58 */	addi r3, r3, lbl_8166CB58@l
/* 81492300 | 4C C6 31 82 */	crclr cr1eq
/* 81492304 | 48 09 C3 9D */	bl OSReport
.L_81492308:
/* 81492308 | 38 60 00 16 */	li r3, 0x16
.L_8149230C:
/* 8149230C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81492310 | 7C 08 03 A6 */	mtlr r0
/* 81492314 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81492318 | 4E 80 00 20 */	blr
.endfn CDBCryptBufAllocate

# .text:0x274 | 0x8149231C | size: 0x84
.fn CDBCryptBufFree, global
/* 8149231C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81492320 | 7C 08 02 A6 */	mflr r0
/* 81492324 | 38 E0 00 00 */	li r7, 0x0
/* 81492328 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149232C | 80 AD AD 60 */	lwz r5, lbl_81698DA0@sda21(r0)
/* 81492330 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81492334 | 7C 00 28 40 */	cmplw r0, r5
/* 81492338 | 40 82 00 2C */	bne .L_81492364
/* 8149233C | 3C 80 00 04 */	lis r4, 0x4
/* 81492340 | 3C A5 00 04 */	addis r5, r5, 0x4
/* 81492344 | 38 04 EC 40 */	subi r0, r4, 0x13c0
/* 81492348 | 38 C0 00 00 */	li r6, 0x0
/* 8149234C | 7C 07 01 D6 */	mullw r0, r7, r0
/* 81492350 | 7C 85 02 14 */	add r4, r5, r0
/* 81492354 | 90 C4 EC 08 */	stw r6, -0x13f8(r4)
/* 81492358 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 8149235C | 38 60 00 00 */	li r3, 0x0
/* 81492360 | 48 00 00 30 */	b .L_81492390
.L_81492364:
/* 81492364 | 38 60 00 02 */	li r3, 0x2
/* 81492368 | 4B FF E2 29 */	bl CDBIsPrintDebugMessage
/* 8149236C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81492370 | 41 82 00 1C */	beq .L_8149238C
/* 81492374 | 38 60 00 02 */	li r3, 0x2
/* 81492378 | 4B FF E2 31 */	bl CDBReport_
/* 8149237C | 3C 60 81 67 */	lis r3, lbl_8166CB7C@ha
/* 81492380 | 38 63 CB 7C */	addi r3, r3, lbl_8166CB7C@l
/* 81492384 | 4C C6 31 82 */	crclr cr1eq
/* 81492388 | 48 09 C3 19 */	bl OSReport
.L_8149238C:
/* 8149238C | 38 60 00 01 */	li r3, 0x1
.L_81492390:
/* 81492390 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81492394 | 7C 08 03 A6 */	mtlr r0
/* 81492398 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149239C | 4E 80 00 20 */	blr
.endfn CDBCryptBufFree

# 0x8166CB30..0x8166CBA0 | size: 0x70
.data
.balign 8

# .data:0x0 | 0x8166CB30 | size: 0xC
.obj lbl_8166CB30, global
	.4byte 0x6364622E
	.4byte 0x636F6E66
	.4byte 0x00000000
.endobj lbl_8166CB30

# .data:0xC | 0x8166CB3C | size: 0x1C
.obj lbl_8166CB3C, global
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F206372
	.4byte 0x65617465
	.4byte 0x2025730A
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8166CB3C

# .data:0x28 | 0x8166CB58 | size: 0x24
.obj lbl_8166CB58, global
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F20616C
	.4byte 0x6C6F6361
	.4byte 0x74652063
	.4byte 0x72797074
	.4byte 0x20627566
	.4byte 0x6665720A
	.4byte 0x00000000
.endobj lbl_8166CB58

# .data:0x4C | 0x8166CB7C | size: 0x24
.obj lbl_8166CB7C, global
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F206672
	.4byte 0x65652063
	.4byte 0x72797074
	.4byte 0x20627566
	.4byte 0x6665720A
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8166CB7C

# 0x81697A80..0x81697AA0 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697A80 | size: 0x8
.obj lbl_81697A80, global
	.4byte 0x25732573
	.4byte 0x25730000
.endobj lbl_81697A80

# .sdata:0x8 | 0x81697A88 | size: 0x8
.obj lbl_81697A88, global
	.4byte 0x4344423A
	.4byte 0x00000000
.endobj lbl_81697A88

# .sdata:0x10 | 0x81697A90 | size: 0x4
.obj lbl_81697A90, global
	.4byte 0x2F000000
.endobj lbl_81697A90

# .sdata:0x14 | 0x81697A94 | size: 0x4
.obj lbl_81697A94, global
	.4byte 0x722B0000
.endobj lbl_81697A94

# .sdata:0x18 | 0x81697A98 | size: 0x8
.obj lbl_81697A98, global
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81697A98

# 0x81698DA0..0x81698DA8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698DA0 | size: 0x8
.obj lbl_81698DA0, global
	.skip 0x8
.endobj lbl_81698DA0
