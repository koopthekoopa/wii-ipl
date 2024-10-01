.include "macros.inc"
.file "wd_init.c"

# 0x814D9A88..0x814D9BD8 | size: 0x150
.text
.balign 4

# .text:0x0 | 0x814D9A88 | size: 0xE4
.fn WD_Startup, global
/* 814D9A88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D9A8C | 7C 08 02 A6 */	mflr r0
/* 814D9A90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D9A94 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D9A98 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D9A9C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D9AA0 | 7C 7D 1B 78 */	mr r29, r3
/* 814D9AA4 | 48 05 6D E1 */	bl OSDisableInterrupts
/* 814D9AA8 | 7C 7E 1B 78 */	mr r30, r3
/* 814D9AAC | 4B FF FD 31 */	bl WDi_GetWork
/* 814D9AB0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814D9AB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D9AB8 | 41 80 00 10 */	blt .L_814D9AC8
/* 814D9ABC | 3C 60 80 01 */	lis r3, 0x8001
/* 814D9AC0 | 3B E3 80 06 */	subi r31, r3, 0x7ffa
/* 814D9AC4 | 48 00 00 80 */	b .L_814D9B44
.L_814D9AC8:
/* 814D9AC8 | 4B FF FD 15 */	bl WDi_GetWork
/* 814D9ACC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814D9AD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D9AD4 | 40 82 00 2C */	bne .L_814D9B00
/* 814D9AD8 | 4B FF FD 05 */	bl WDi_GetWork
/* 814D9ADC | 38 80 00 00 */	li r4, 0x0
/* 814D9AE0 | 38 A0 00 0C */	li r5, 0xc
/* 814D9AE4 | 4B E5 68 51 */	bl memset
/* 814D9AE8 | 3B E0 00 01 */	li r31, 0x1
/* 814D9AEC | 4B FF FC F1 */	bl WDi_GetWork
/* 814D9AF0 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 814D9AF4 | 3B E0 FF FF */	li r31, -0x1
/* 814D9AF8 | 4B FF FC E5 */	bl WDi_GetWork
/* 814D9AFC | 93 E3 00 08 */	stw r31, 0x8(r3)
.L_814D9B00:
/* 814D9B00 | 3C 60 81 67 */	lis r3, lbl_8166E990@ha
/* 814D9B04 | 67 A4 00 01 */	oris r4, r29, 0x1
/* 814D9B08 | 38 63 E9 90 */	addi r3, r3, lbl_8166E990@l
/* 814D9B0C | 48 09 90 05 */	bl IOS_Open
/* 814D9B10 | 7C 7F 1B 78 */	mr r31, r3
/* 814D9B14 | 4B FF FC C9 */	bl WDi_GetWork
/* 814D9B18 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 814D9B1C | 4B FF FC C1 */	bl WDi_GetWork
/* 814D9B20 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814D9B24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D9B28 | 40 80 00 10 */	bge .L_814D9B38
/* 814D9B2C | 4B FF FC B1 */	bl WDi_GetWork
/* 814D9B30 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D9B34 | 48 00 00 0C */	b .L_814D9B40
.L_814D9B38:
/* 814D9B38 | 38 60 10 00 */	li r3, 0x1000
/* 814D9B3C | 4B FF FC F1 */	bl WDi_SetupHeap
.L_814D9B40:
/* 814D9B40 | 7C 7F 1B 78 */	mr r31, r3
.L_814D9B44:
/* 814D9B44 | 7F C3 F3 78 */	mr r3, r30
/* 814D9B48 | 48 05 6D 65 */	bl OSRestoreInterrupts
/* 814D9B4C | 7F E3 FB 78 */	mr r3, r31
/* 814D9B50 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D9B54 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D9B58 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D9B5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D9B60 | 7C 08 03 A6 */	mtlr r0
/* 814D9B64 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D9B68 | 4E 80 00 20 */	blr
.endfn WD_Startup

# .text:0xE4 | 0x814D9B6C | size: 0x6C
.fn WD_Cleanup, global
/* 814D9B6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D9B70 | 7C 08 02 A6 */	mflr r0
/* 814D9B74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D9B78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D9B7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D9B80 | 48 05 6D 05 */	bl OSDisableInterrupts
/* 814D9B84 | 7C 7E 1B 78 */	mr r30, r3
/* 814D9B88 | 4B FF FC 55 */	bl WDi_GetWork
/* 814D9B8C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D9B90 | 48 09 91 61 */	bl fn_81572CF0
/* 814D9B94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9B98 | 7C 7F 1B 78 */	mr r31, r3
/* 814D9B9C | 41 80 00 18 */	blt .L_814D9BB4
/* 814D9BA0 | 3B E0 FF FF */	li r31, -0x1
/* 814D9BA4 | 4B FF FC 39 */	bl WDi_GetWork
/* 814D9BA8 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 814D9BAC | 4B FF FD 1D */	bl WDi_CleanupHeap
/* 814D9BB0 | 7C 7F 1B 78 */	mr r31, r3
.L_814D9BB4:
/* 814D9BB4 | 7F C3 F3 78 */	mr r3, r30
/* 814D9BB8 | 48 05 6C F5 */	bl OSRestoreInterrupts
/* 814D9BBC | 7F E3 FB 78 */	mr r3, r31
/* 814D9BC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D9BC4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D9BC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D9BCC | 7C 08 03 A6 */	mtlr r0
/* 814D9BD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D9BD4 | 4E 80 00 20 */	blr
.endfn WD_Cleanup

# 0x8166E990..0x8166E9A8 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x8166E990 | size: 0x18
.obj lbl_8166E990, global
	.4byte 0x2F646576
	.4byte 0x2F6E6574
	.4byte 0x2F77642F
	.4byte 0x636F6D6D
	.4byte 0x616E6400
	.4byte 0x00000000
.endobj lbl_8166E990
