.include "macros.inc"
.file "RIPL_BoardRecord.c"

# 0x81332B48 - 0x81332C24
.text
.balign 4

.fn RBRGetPicture, global
/* 81332B48 00000F48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81332B4C 00000F4C  7C 08 02 A6 */	mflr r0
/* 81332B50 00000F50  90 01 00 24 */	stw r0, 0x24(r1)
/* 81332B54 00000F54  39 61 00 20 */	addi r11, r1, 0x20
/* 81332B58 00000F58  48 2C 69 71 */	bl _savegpr_29
/* 81332B5C 00000F5C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81332B60 00000F60  7C 7D 1B 78 */	mr r29, r3
/* 81332B64 00000F64  7C 9E 23 78 */	mr r30, r4
/* 81332B68 00000F68  3B E0 00 00 */	li r31, 0x0
/* 81332B6C 00000F6C  3C 05 AD B7 */	subis r0, r5, 0x5249
/* 81332B70 00000F70  28 00 5F 35 */	cmplwi r0, 0x5f35
/* 81332B74 00000F74  40 82 00 50 */	bne .L_81332BC4
/* 81332B78 00000F78  38 80 01 40 */	li r4, 0x140
/* 81332B7C 00000F7C  48 16 0B 45 */	bl NETCalcCRC32
/* 81332B80 00000F80  80 1D 01 40 */	lwz r0, 0x140(r29)
/* 81332B84 00000F84  7C 00 18 40 */	cmplw r0, r3
/* 81332B88 00000F88  40 82 00 3C */	bne .L_81332BC4
/* 81332B8C 00000F8C  38 00 00 02 */	li r0, 0x2
/* 81332B90 00000F90  38 60 00 00 */	li r3, 0x0
/* 81332B94 00000F94  7C 09 03 A6 */	mtctr r0
.L_81332B98:
/* 81332B98 00000F98  7C 9D 1A 14 */	add r4, r29, r3
/* 81332B9C 00000F9C  80 04 01 28 */	lwz r0, 0x128(r4)
/* 81332BA0 00000FA0  2C 00 00 01 */	cmpwi r0, 0x1
/* 81332BA4 00000FA4  40 82 00 18 */	bne .L_81332BBC
/* 81332BA8 00000FA8  80 64 01 2C */	lwz r3, 0x12c(r4)
/* 81332BAC 00000FAC  80 04 01 30 */	lwz r0, 0x130(r4)
/* 81332BB0 00000FB0  7F FD 1A 14 */	add r31, r29, r3
/* 81332BB4 00000FB4  90 1E 00 00 */	stw r0, 0x0(r30)
/* 81332BB8 00000FB8  48 00 00 0C */	b .L_81332BC4
.L_81332BBC:
/* 81332BBC 00000FBC  38 63 00 0C */	addi r3, r3, 0xc
/* 81332BC0 00000FC0  42 00 FF D8 */	bdnz .L_81332B98
.L_81332BC4:
/* 81332BC4 00000FC4  39 61 00 20 */	addi r11, r1, 0x20
/* 81332BC8 00000FC8  7F E3 FB 78 */	mr r3, r31
/* 81332BCC 00000FCC  48 2C 69 49 */	bl _restgpr_29
/* 81332BD0 00000FD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81332BD4 00000FD4  7C 08 03 A6 */	mtlr r0
/* 81332BD8 00000FD8  38 21 00 20 */	addi r1, r1, 0x20
/* 81332BDC 00000FDC  4E 80 00 20 */	blr
.endfn RBRGetPicture

.fn RBRGetPosRect, global
/* 81332BE0 00000FE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 81332BE4 00000FE4  41 82 00 0C */	beq .L_81332BF0
/* 81332BE8 00000FE8  C0 02 80 00 */	lfs f0, lbl_81694400@sda21(r0)
/* 81332BEC 00000FEC  D0 03 00 00 */	stfs f0, 0x0(r3)
.L_81332BF0:
/* 81332BF0 00000FF0  2C 04 00 00 */	cmpwi r4, 0x0
/* 81332BF4 00000FF4  41 82 00 0C */	beq .L_81332C00
/* 81332BF8 00000FF8  C0 02 80 04 */	lfs f0, lbl_81694404@sda21(r0)
/* 81332BFC 00000FFC  D0 04 00 00 */	stfs f0, 0x0(r4)
.L_81332C00:
/* 81332C00 00001000  2C 05 00 00 */	cmpwi r5, 0x0
/* 81332C04 00001004  41 82 00 0C */	beq .L_81332C10
/* 81332C08 00001008  C0 02 80 08 */	lfs f0, lbl_81694408@sda21(r0)
/* 81332C0C 0000100C  D0 05 00 00 */	stfs f0, 0x0(r5)
.L_81332C10:
/* 81332C10 00001010  2C 06 00 00 */	cmpwi r6, 0x0
/* 81332C14 00001014  4D 82 00 20 */	beqlr
/* 81332C18 00001018  C0 02 80 0C */	lfs f0, lbl_8169440C@sda21(r0)
/* 81332C1C 0000101C  D0 06 00 00 */	stfs f0, 0x0(r6)
/* 81332C20 00001020  4E 80 00 20 */	blr
.endfn RBRGetPosRect

# 0x81694400 - 0x81694410
.section .sdata2, "a"
.balign 8

.obj lbl_81694400, global
	.float -230
.endobj lbl_81694400

.obj lbl_81694404, global
	.float 230
.endobj lbl_81694404

.obj lbl_81694408, global
	.float 180
.endobj lbl_81694408

.obj lbl_8169440C, global
	.float -80
.endobj lbl_8169440C

# 0x81696040 - 0x81696060
.section .sdata, "wa"
.balign 8

.obj RBRFileType_Txt, global
	.string "txt"
.endobj RBRFileType_Txt

.obj RBRFileType_Txt_Ptr, global
	.4byte RBRFileType_Txt
.endobj RBRFileType_Txt_Ptr

.obj RBRFileType_Odh, global
	.string "odh"
.endobj RBRFileType_Odh

.obj RBRFileType_Odh_Ptr, global
	.4byte RBRFileType_Odh
.endobj RBRFileType_Odh_Ptr

.obj RBRFileType_Dat, global
	.string "dat"
.endobj RBRFileType_Dat

.obj RBRFileType_Dat_Ptr, global
	.4byte RBRFileType_Dat
.endobj RBRFileType_Dat_Ptr

.obj RBRFileType_Log, global
	.string "log"
.endobj RBRFileType_Log

.obj RBRFileType_Log_Ptr, global
	.4byte RBRFileType_Log
.endobj RBRFileType_Log_Ptr
