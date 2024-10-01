.include "macros.inc"
.file "CDBFileSystemVF.c"

# 0x8148B350..0x8148B744 | size: 0x3F4
.text
.balign 4

# .text:0x0 | 0x8148B350 | size: 0x1C
.fn CDBFindDataGetNameVF, global
/* 8148B350 | 88 03 02 3A */	lbz r0, 0x23a(r3)
/* 8148B354 | 7C 00 07 75 */	extsb. r0, r0
/* 8148B358 | 40 82 00 0C */	bne .L_8148B364
/* 8148B35C | 38 63 02 2D */	addi r3, r3, 0x22d
/* 8148B360 | 4E 80 00 20 */	blr
.L_8148B364:
/* 8148B364 | 38 63 02 3A */	addi r3, r3, 0x23a
/* 8148B368 | 4E 80 00 20 */	blr
.endfn CDBFindDataGetNameVF

# .text:0x1C | 0x8148B36C | size: 0xC
.fn CDBFindDataIsDirectoryVF, global
/* 8148B36C | 88 03 02 2C */	lbz r0, 0x22c(r3)
/* 8148B370 | 54 03 E7 FE */	extrwi r3, r0, 1, 27
/* 8148B374 | 4E 80 00 20 */	blr
.endfn CDBFindDataIsDirectoryVF

# .text:0x28 | 0x8148B378 | size: 0x8
.fn CDBFindDataIsEndVF, global
/* 8148B378 | 80 63 04 44 */	lwz r3, 0x444(r3)
/* 8148B37C | 4E 80 00 20 */	blr
.endfn CDBFindDataIsEndVF

# .text:0x30 | 0x8148B380 | size: 0xA0
.fn CDBFSIsExistFileVF, global
/* 8148B380 | 94 21 FA A0 */	stwu r1, -0x560(r1)
/* 8148B384 | 7C 08 02 A6 */	mflr r0
/* 8148B388 | 7C 64 1B 78 */	mr r4, r3
/* 8148B38C | 90 01 05 64 */	stw r0, 0x564(r1)
/* 8148B390 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148B394 | 93 E1 05 5C */	stw r31, 0x55c(r1)
/* 8148B398 | 48 17 6F 6D */	bl strcpy
/* 8148B39C | 38 61 01 08 */	addi r3, r1, 0x108
/* 8148B3A0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B3A4 | 38 A0 00 80 */	li r5, 0x80
/* 8148B3A8 | 48 04 5D B1 */	bl VFFileSearchFirst
/* 8148B3AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B3B0 | 7C 7F 1B 78 */	mr r31, r3
/* 8148B3B4 | 40 82 00 0C */	bne .L_8148B3C0
/* 8148B3B8 | 38 60 00 01 */	li r3, 0x1
/* 8148B3BC | 48 00 00 50 */	b .L_8148B40C
.L_8148B3C0:
/* 8148B3C0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148B3C4 | 40 82 00 0C */	bne .L_8148B3D0
/* 8148B3C8 | 38 60 00 00 */	li r3, 0x0
/* 8148B3CC | 48 00 00 40 */	b .L_8148B40C
.L_8148B3D0:
/* 8148B3D0 | 38 60 00 04 */	li r3, 0x4
/* 8148B3D4 | 48 00 51 BD */	bl CDBIsPrintDebugMessage
/* 8148B3D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B3DC | 41 82 00 2C */	beq .L_8148B408
/* 8148B3E0 | 38 60 00 04 */	li r3, 0x4
/* 8148B3E4 | 48 00 51 C5 */	bl CDBReport_
/* 8148B3E8 | 7F E3 FB 78 */	mr r3, r31
/* 8148B3EC | 48 04 60 B1 */	bl VFGetApiErrorString
/* 8148B3F0 | 3C 80 81 67 */	lis r4, lbl_8166B980@ha
/* 8148B3F4 | 7C 65 1B 78 */	mr r5, r3
/* 8148B3F8 | 38 64 B9 80 */	addi r3, r4, lbl_8166B980@l
/* 8148B3FC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B400 | 4C C6 31 82 */	crclr cr1eq
/* 8148B404 | 48 0A 32 9D */	bl OSReport
.L_8148B408:
/* 8148B408 | 38 60 00 00 */	li r3, 0x0
.L_8148B40C:
/* 8148B40C | 80 01 05 64 */	lwz r0, 0x564(r1)
/* 8148B410 | 83 E1 05 5C */	lwz r31, 0x55c(r1)
/* 8148B414 | 7C 08 03 A6 */	mtlr r0
/* 8148B418 | 38 21 05 60 */	addi r1, r1, 0x560
/* 8148B41C | 4E 80 00 20 */	blr
.endfn CDBFSIsExistFileVF

# .text:0xD0 | 0x8148B420 | size: 0xEC
.fn CDBFSFindFirstVF, global
/* 8148B420 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8148B424 | 7C 08 02 A6 */	mflr r0
/* 8148B428 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 8148B42C | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8148B430 | 3F E0 81 67 */	lis r31, lbl_8166B980@ha
/* 8148B434 | 3B FF B9 80 */	addi r31, r31, lbl_8166B980@l
/* 8148B438 | 93 C1 01 18 */	stw r30, 0x118(r1)
/* 8148B43C | 93 A1 01 14 */	stw r29, 0x114(r1)
/* 8148B440 | 7C 7D 1B 78 */	mr r29, r3
/* 8148B444 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148B448 | 48 17 6E BD */	bl strcpy
/* 8148B44C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148B450 | 38 8D 99 C0 */	li r4, lbl_81697A00@sda21
/* 8148B454 | 4B FF EE C5 */	bl CDBFSConcatenatePath
/* 8148B458 | 7F A3 EB 78 */	mr r3, r29
/* 8148B45C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B460 | 38 A0 00 80 */	li r5, 0x80
/* 8148B464 | 48 04 5C F5 */	bl VFFileSearchFirst
/* 8148B468 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B46C | 7C 7E 1B 78 */	mr r30, r3
/* 8148B470 | 40 82 00 10 */	bne .L_8148B480
/* 8148B474 | 38 00 00 00 */	li r0, 0x0
/* 8148B478 | 90 1D 04 44 */	stw r0, 0x444(r29)
/* 8148B47C | 48 00 00 74 */	b .L_8148B4F0
.L_8148B480:
/* 8148B480 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148B484 | 40 82 00 10 */	bne .L_8148B494
/* 8148B488 | 38 00 00 01 */	li r0, 0x1
/* 8148B48C | 90 1D 04 44 */	stw r0, 0x444(r29)
/* 8148B490 | 48 00 00 60 */	b .L_8148B4F0
.L_8148B494:
/* 8148B494 | 2C 03 00 16 */	cmpwi r3, 0x16
/* 8148B498 | 40 82 00 10 */	bne .L_8148B4A8
/* 8148B49C | 38 00 00 01 */	li r0, 0x1
/* 8148B4A0 | 90 1D 04 44 */	stw r0, 0x444(r29)
/* 8148B4A4 | 48 00 00 4C */	b .L_8148B4F0
.L_8148B4A8:
/* 8148B4A8 | 38 60 00 04 */	li r3, 0x4
/* 8148B4AC | 48 00 50 E5 */	bl CDBIsPrintDebugMessage
/* 8148B4B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B4B4 | 41 82 00 28 */	beq .L_8148B4DC
/* 8148B4B8 | 38 60 00 04 */	li r3, 0x4
/* 8148B4BC | 48 00 50 ED */	bl CDBReport_
/* 8148B4C0 | 7F C3 F3 78 */	mr r3, r30
/* 8148B4C4 | 48 04 5F D9 */	bl VFGetApiErrorString
/* 8148B4C8 | 7C 65 1B 78 */	mr r5, r3
/* 8148B4CC | 38 7F 00 30 */	addi r3, r31, 0x30
/* 8148B4D0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B4D4 | 4C C6 31 82 */	crclr cr1eq
/* 8148B4D8 | 48 0A 31 C9 */	bl OSReport
.L_8148B4DC:
/* 8148B4DC | 38 7F 00 4C */	addi r3, r31, 0x4c
/* 8148B4E0 | 38 BF 00 60 */	addi r5, r31, 0x60
/* 8148B4E4 | 38 80 00 CF */	li r4, 0xcf
/* 8148B4E8 | 4C C6 31 82 */	crclr cr1eq
/* 8148B4EC | 48 0A 32 45 */	bl OSPanic
.L_8148B4F0:
/* 8148B4F0 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8148B4F4 | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8148B4F8 | 83 C1 01 18 */	lwz r30, 0x118(r1)
/* 8148B4FC | 83 A1 01 14 */	lwz r29, 0x114(r1)
/* 8148B500 | 7C 08 03 A6 */	mtlr r0
/* 8148B504 | 38 21 01 20 */	addi r1, r1, 0x120
/* 8148B508 | 4E 80 00 20 */	blr
.endfn CDBFSFindFirstVF

# .text:0x1BC | 0x8148B50C | size: 0x48
.fn CDBFSFindNextVF, global
/* 8148B50C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148B510 | 7C 08 02 A6 */	mflr r0
/* 8148B514 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148B518 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148B51C | 7C 7F 1B 78 */	mr r31, r3
/* 8148B520 | 48 04 5D 09 */	bl VFFileSearchNext
/* 8148B524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B528 | 40 82 00 10 */	bne .L_8148B538
/* 8148B52C | 38 00 00 00 */	li r0, 0x0
/* 8148B530 | 90 1F 04 44 */	stw r0, 0x444(r31)
/* 8148B534 | 48 00 00 0C */	b .L_8148B540
.L_8148B538:
/* 8148B538 | 38 00 00 01 */	li r0, 0x1
/* 8148B53C | 90 1F 04 44 */	stw r0, 0x444(r31)
.L_8148B540:
/* 8148B540 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148B544 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148B548 | 7C 08 03 A6 */	mtlr r0
/* 8148B54C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148B550 | 4E 80 00 20 */	blr
.endfn CDBFSFindNextVF

# .text:0x204 | 0x8148B554 | size: 0xC
.fn CDBFSFindCloseVF, global
/* 8148B554 | 38 00 00 00 */	li r0, 0x0
/* 8148B558 | 90 03 04 44 */	stw r0, 0x444(r3)
/* 8148B55C | 4E 80 00 20 */	blr
.endfn CDBFSFindCloseVF

# .text:0x210 | 0x8148B560 | size: 0x150
.fn CDBFSCreateDirForceVF, global
/* 8148B560 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8148B564 | 7C 08 02 A6 */	mflr r0
/* 8148B568 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 8148B56C | 39 61 01 30 */	addi r11, r1, 0x130
/* 8148B570 | 48 16 DF 45 */	bl _savegpr_24
/* 8148B574 | 7C 78 1B 78 */	mr r24, r3
/* 8148B578 | 48 16 D9 85 */	bl strlen
/* 8148B57C | 7C 7D 1B 78 */	mr r29, r3
/* 8148B580 | 7F 1F C3 78 */	mr r31, r24
/* 8148B584 | 3B 61 00 10 */	addi r27, r1, 0x10
/* 8148B588 | 3B 20 00 00 */	li r25, 0x0
/* 8148B58C | 3B C0 00 00 */	li r30, 0x0
/* 8148B590 | 48 00 00 FC */	b .L_8148B68C
.L_8148B594:
/* 8148B594 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8148B598 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 8148B59C | 40 82 00 E4 */	bne .L_8148B680
/* 8148B5A0 | 7F 04 C3 78 */	mr r4, r24
/* 8148B5A4 | 7F 25 CB 78 */	mr r5, r25
/* 8148B5A8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148B5AC | 48 17 6E 19 */	bl strncpy
/* 8148B5B0 | 80 62 8C 20 */	lwz r3, lbl_81695020@sda21(r0)
/* 8148B5B4 | 3B 41 00 08 */	addi r26, r1, 0x8
/* 8148B5B8 | 80 02 8C 24 */	lwz r0, lbl_81695024@sda21(r0)
/* 8148B5BC | 3B 80 00 00 */	li r28, 0x0
/* 8148B5C0 | 9B DB 00 00 */	stb r30, 0x0(r27)
/* 8148B5C4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8148B5C8 | 90 01 00 0C */	stw r0, 0xc(r1)
.L_8148B5CC:
/* 8148B5CC | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8148B5D0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8148B5D4 | 48 17 6E AD */	bl strcmp
/* 8148B5D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B5DC | 40 82 00 0C */	bne .L_8148B5E8
/* 8148B5E0 | 38 00 00 00 */	li r0, 0x0
/* 8148B5E4 | 48 00 00 18 */	b .L_8148B5FC
.L_8148B5E8:
/* 8148B5E8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8148B5EC | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 8148B5F0 | 28 1C 00 02 */	cmplwi r28, 0x2
/* 8148B5F4 | 41 80 FF D8 */	blt .L_8148B5CC
/* 8148B5F8 | 38 00 00 01 */	li r0, 0x1
.L_8148B5FC:
/* 8148B5FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148B600 | 41 82 00 80 */	beq .L_8148B680
/* 8148B604 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148B608 | 48 04 56 45 */	bl VFCreateDir
/* 8148B60C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B610 | 7C 7A 1B 78 */	mr r26, r3
/* 8148B614 | 41 82 00 6C */	beq .L_8148B680
/* 8148B618 | 2C 03 00 11 */	cmpwi r3, 0x11
/* 8148B61C | 41 82 00 64 */	beq .L_8148B680
/* 8148B620 | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 8148B624 | 40 82 00 0C */	bne .L_8148B630
/* 8148B628 | 38 60 00 17 */	li r3, 0x17
/* 8148B62C | 48 00 00 6C */	b .L_8148B698
.L_8148B630:
/* 8148B630 | 38 60 00 01 */	li r3, 0x1
/* 8148B634 | 48 00 4F 5D */	bl CDBIsPrintDebugMessage
/* 8148B638 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B63C | 41 82 00 2C */	beq .L_8148B668
/* 8148B640 | 38 60 00 01 */	li r3, 0x1
/* 8148B644 | 48 00 4F 65 */	bl CDBReport_
/* 8148B648 | 7F 43 D3 78 */	mr r3, r26
/* 8148B64C | 48 04 5E 51 */	bl VFGetApiErrorString
/* 8148B650 | 3C 80 81 67 */	lis r4, lbl_8166B9FC@ha
/* 8148B654 | 7C 65 1B 78 */	mr r5, r3
/* 8148B658 | 38 64 B9 FC */	addi r3, r4, lbl_8166B9FC@l
/* 8148B65C | 38 81 00 10 */	addi r4, r1, 0x10
/* 8148B660 | 4C C6 31 82 */	crclr cr1eq
/* 8148B664 | 48 0A 30 3D */	bl OSReport
.L_8148B668:
/* 8148B668 | 48 00 45 95 */	bl CDBSetFatalVFErrorFlag
/* 8148B66C | 7F 43 D3 78 */	mr r3, r26
/* 8148B670 | 38 8D 99 D0 */	li r4, lbl_81697A10@sda21
/* 8148B674 | 38 A0 00 00 */	li r5, 0x0
/* 8148B678 | 48 00 45 55 */	bl _CDBOnVFErrorOccured
/* 8148B67C | 48 00 00 1C */	b .L_8148B698
.L_8148B680:
/* 8148B680 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8148B684 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8148B688 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8148B68C:
/* 8148B68C | 7C 19 E8 40 */	cmplw r25, r29
/* 8148B690 | 41 80 FF 04 */	blt .L_8148B594
/* 8148B694 | 38 60 00 00 */	li r3, 0x0
.L_8148B698:
/* 8148B698 | 39 61 01 30 */	addi r11, r1, 0x130
/* 8148B69C | 48 16 DE 65 */	bl _restgpr_24
/* 8148B6A0 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 8148B6A4 | 7C 08 03 A6 */	mtlr r0
/* 8148B6A8 | 38 21 01 30 */	addi r1, r1, 0x130
/* 8148B6AC | 4E 80 00 20 */	blr
.endfn CDBFSCreateDirForceVF

# .text:0x360 | 0x8148B6B0 | size: 0x94
.fn CDBFSDeleteDirVF, global
/* 8148B6B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148B6B4 | 7C 08 02 A6 */	mflr r0
/* 8148B6B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148B6BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148B6C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148B6C4 | 7C 7E 1B 78 */	mr r30, r3
/* 8148B6C8 | 48 04 56 D5 */	bl VFDeleteDir
/* 8148B6CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B6D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8148B6D4 | 41 82 00 54 */	beq .L_8148B728
/* 8148B6D8 | 38 60 00 02 */	li r3, 0x2
/* 8148B6DC | 48 00 4E B5 */	bl CDBIsPrintDebugMessage
/* 8148B6E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B6E4 | 41 82 00 2C */	beq .L_8148B710
/* 8148B6E8 | 38 60 00 02 */	li r3, 0x2
/* 8148B6EC | 48 00 4E BD */	bl CDBReport_
/* 8148B6F0 | 7F E3 FB 78 */	mr r3, r31
/* 8148B6F4 | 48 04 5D A9 */	bl VFGetApiErrorString
/* 8148B6F8 | 3C C0 81 67 */	lis r6, lbl_8166BA18@ha
/* 8148B6FC | 7C 65 1B 78 */	mr r5, r3
/* 8148B700 | 7F C4 F3 78 */	mr r4, r30
/* 8148B704 | 38 66 BA 18 */	addi r3, r6, lbl_8166BA18@l
/* 8148B708 | 4C C6 31 82 */	crclr cr1eq
/* 8148B70C | 48 0A 2F 95 */	bl OSReport
.L_8148B710:
/* 8148B710 | 48 00 44 ED */	bl CDBSetFatalVFErrorFlag
/* 8148B714 | 7F E3 FB 78 */	mr r3, r31
/* 8148B718 | 38 8D 99 D0 */	li r4, lbl_81697A10@sda21
/* 8148B71C | 38 A0 00 00 */	li r5, 0x0
/* 8148B720 | 48 00 44 AD */	bl _CDBOnVFErrorOccured
/* 8148B724 | 48 00 00 08 */	b .L_8148B72C
.L_8148B728:
/* 8148B728 | 38 60 00 00 */	li r3, 0x0
.L_8148B72C:
/* 8148B72C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148B730 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148B734 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148B738 | 7C 08 03 A6 */	mtlr r0
/* 8148B73C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148B740 | 4E 80 00 20 */	blr
.endfn CDBFSDeleteDirVF

# 0x8166B980..0x8166BA30 | size: 0xB0
.data
.balign 8

# .data:0x0 | 0x8166B980 | size: 0x7C
.obj lbl_8166B980, global
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
	.4byte 0x56464669
	.4byte 0x6C655365
	.4byte 0x61726368
	.4byte 0x46697273
	.4byte 0x74202573
	.4byte 0x2025730A
	.4byte 0x00000000
	.4byte 0x43444246
	.4byte 0x696C6553
	.4byte 0x79737465
	.4byte 0x6D56462E
	.4byte 0x63000000
	.4byte 0x6661696C
	.4byte 0x65642056
	.4byte 0x4646696C
	.4byte 0x65536561
	.4byte 0x72636846
	.4byte 0x69727374
	.4byte 0x00000000
.endobj lbl_8166B980

# .data:0x7C | 0x8166B9FC | size: 0x1C
.obj lbl_8166B9FC, global
	.4byte 0x43444246
	.4byte 0x53437265
	.4byte 0x61746544
	.4byte 0x69722025
	.4byte 0x73202573
	.4byte 0x0A000000
	.4byte 0x00000000
.endobj lbl_8166B9FC

# .data:0x98 | 0x8166BA18 | size: 0x18
.obj lbl_8166BA18, global
	.string "CDBFSDeleteDirVF %s %s\n"
.endobj lbl_8166BA18

# 0x81695020..0x81695028 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695020 | size: 0x4
.obj lbl_81695020, global
	.4byte lbl_81697A04
.endobj lbl_81695020

# .sdata2:0x4 | 0x81695024 | size: 0x4
.obj lbl_81695024, global
	.4byte lbl_81697A0C
.endobj lbl_81695024

# 0x81697A00..0x81697A18 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697A00 | size: 0x4
.obj lbl_81697A00, global
	.4byte 0x2A000000
.endobj lbl_81697A00

# .sdata:0x4 | 0x81697A04 | size: 0x8
.obj lbl_81697A04, global
	.4byte 0x4344423A
	.4byte 0x00000000
.endobj lbl_81697A04

# .sdata:0xC | 0x81697A0C | size: 0x4
.obj lbl_81697A0C, global
	.string "SD:"
.endobj lbl_81697A0C

# .sdata:0x10 | 0x81697A10 | size: 0x8
.obj lbl_81697A10, global
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81697A10
