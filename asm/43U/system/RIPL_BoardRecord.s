.include "macros.inc"
.file "RIPL_BoardRecord.c"

# 0x81332B48..0x81332C24 | size: 0xDC
.text
.balign 4

# .text:0x0 | 0x81332B48 | size: 0x98
.fn RBRGetPicture, global
/* 81332B48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81332B4C | 7C 08 02 A6 */	mflr r0
/* 81332B50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81332B54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81332B58 | 48 2C 69 71 */	bl _savegpr_29
/* 81332B5C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81332B60 | 7C 7D 1B 78 */	mr r29, r3
/* 81332B64 | 7C 9E 23 78 */	mr r30, r4
/* 81332B68 | 3B E0 00 00 */	li r31, 0x0
/* 81332B6C | 3C 05 AD B7 */	subis r0, r5, 0x5249
/* 81332B70 | 28 00 5F 35 */	cmplwi r0, 0x5f35
/* 81332B74 | 40 82 00 50 */	bne .L_81332BC4
/* 81332B78 | 38 80 01 40 */	li r4, 0x140
/* 81332B7C | 48 16 0B 45 */	bl NETCalcCRC32
/* 81332B80 | 80 1D 01 40 */	lwz r0, 0x140(r29)
/* 81332B84 | 7C 00 18 40 */	cmplw r0, r3
/* 81332B88 | 40 82 00 3C */	bne .L_81332BC4
/* 81332B8C | 38 00 00 02 */	li r0, 0x2
/* 81332B90 | 38 60 00 00 */	li r3, 0x0
/* 81332B94 | 7C 09 03 A6 */	mtctr r0
.L_81332B98:
/* 81332B98 | 7C 9D 1A 14 */	add r4, r29, r3
/* 81332B9C | 80 04 01 28 */	lwz r0, 0x128(r4)
/* 81332BA0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81332BA4 | 40 82 00 18 */	bne .L_81332BBC
/* 81332BA8 | 80 64 01 2C */	lwz r3, 0x12c(r4)
/* 81332BAC | 80 04 01 30 */	lwz r0, 0x130(r4)
/* 81332BB0 | 7F FD 1A 14 */	add r31, r29, r3
/* 81332BB4 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81332BB8 | 48 00 00 0C */	b .L_81332BC4
.L_81332BBC:
/* 81332BBC | 38 63 00 0C */	addi r3, r3, 0xc
/* 81332BC0 | 42 00 FF D8 */	bdnz .L_81332B98
.L_81332BC4:
/* 81332BC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81332BC8 | 7F E3 FB 78 */	mr r3, r31
/* 81332BCC | 48 2C 69 49 */	bl _restgpr_29
/* 81332BD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81332BD4 | 7C 08 03 A6 */	mtlr r0
/* 81332BD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81332BDC | 4E 80 00 20 */	blr
.endfn RBRGetPicture

# .text:0x98 | 0x81332BE0 | size: 0x44
.fn RBRGetPosRect, global
/* 81332BE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81332BE4 | 41 82 00 0C */	beq .L_81332BF0
/* 81332BE8 | C0 02 80 00 */	lfs f0, lbl_81694400@sda21(r0)
/* 81332BEC | D0 03 00 00 */	stfs f0, 0x0(r3)
.L_81332BF0:
/* 81332BF0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81332BF4 | 41 82 00 0C */	beq .L_81332C00
/* 81332BF8 | C0 02 80 04 */	lfs f0, lbl_81694404@sda21(r0)
/* 81332BFC | D0 04 00 00 */	stfs f0, 0x0(r4)
.L_81332C00:
/* 81332C00 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81332C04 | 41 82 00 0C */	beq .L_81332C10
/* 81332C08 | C0 02 80 08 */	lfs f0, lbl_81694408@sda21(r0)
/* 81332C0C | D0 05 00 00 */	stfs f0, 0x0(r5)
.L_81332C10:
/* 81332C10 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81332C14 | 4D 82 00 20 */	beqlr
/* 81332C18 | C0 02 80 0C */	lfs f0, lbl_8169440C@sda21(r0)
/* 81332C1C | D0 06 00 00 */	stfs f0, 0x0(r6)
/* 81332C20 | 4E 80 00 20 */	blr
.endfn RBRGetPosRect

# 0x81694400..0x81694410 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694400 | size: 0x4
.obj lbl_81694400, global
	.float -230
.endobj lbl_81694400

# .sdata2:0x4 | 0x81694404 | size: 0x4
.obj lbl_81694404, global
	.float 230
.endobj lbl_81694404

# .sdata2:0x8 | 0x81694408 | size: 0x4
.obj lbl_81694408, global
	.float 180
.endobj lbl_81694408

# .sdata2:0xC | 0x8169440C | size: 0x4
.obj lbl_8169440C, global
	.float -80
.endobj lbl_8169440C
