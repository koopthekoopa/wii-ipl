.include "macros.inc"
.file "NHTTP_control.c"

# 0x81495BB8..0x81495D5C | size: 0x1A4
.text
.balign 4

# .text:0x0 | 0x81495BB8 | size: 0x13C
.fn addHdrList, global
/* 81495BB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81495BBC | 7C 08 02 A6 */	mflr r0
/* 81495BC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81495BC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81495BC8 | 48 16 38 F5 */	bl _savegpr_26
/* 81495BCC | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 81495BD0 | 7C 7A 1B 78 */	mr r26, r3
/* 81495BD4 | 7C 9B 23 78 */	mr r27, r4
/* 81495BD8 | 7C BC 2B 78 */	mr r28, r5
/* 81495BDC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81495BE0 | 7C DD 33 78 */	mr r29, r6
/* 81495BE4 | 3B E0 00 00 */	li r31, 0x0
/* 81495BE8 | 41 82 00 54 */	beq .L_81495C3C
/* 81495BEC | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81495BF0 | 7F 83 E3 78 */	mr r3, r28
/* 81495BF4 | 48 00 28 61 */	bl NHTTPi_compareToken
/* 81495BF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81495BFC | 41 82 00 3C */	beq .L_81495C38
/* 81495C00 | 83 DE 00 04 */	lwz r30, 0x4(r30)
/* 81495C04 | 48 00 00 24 */	b .L_81495C28
.L_81495C08:
/* 81495C08 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81495C0C | 7F 83 E3 78 */	mr r3, r28
/* 81495C10 | 48 00 28 45 */	bl NHTTPi_compareToken
/* 81495C14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81495C18 | 40 82 00 0C */	bne .L_81495C24
/* 81495C1C | 3B E0 00 01 */	li r31, 0x1
/* 81495C20 | 48 00 00 1C */	b .L_81495C3C
.L_81495C24:
/* 81495C24 | 83 DE 00 04 */	lwz r30, 0x4(r30)
.L_81495C28:
/* 81495C28 | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 81495C2C | 7C 1E 00 40 */	cmplw r30, r0
/* 81495C30 | 40 82 FF D8 */	bne .L_81495C08
/* 81495C34 | 48 00 00 08 */	b .L_81495C3C
.L_81495C38:
/* 81495C38 | 3B E0 00 01 */	li r31, 0x1
.L_81495C3C:
/* 81495C3C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81495C40 | 41 82 00 0C */	beq .L_81495C4C
/* 81495C44 | 93 BE 00 0C */	stw r29, 0xc(r30)
/* 81495C48 | 48 00 00 90 */	b .L_81495CD8
.L_81495C4C:
/* 81495C4C | 38 60 00 18 */	li r3, 0x18
/* 81495C50 | 38 80 00 04 */	li r4, 0x4
/* 81495C54 | 4B FF FC 25 */	bl NHTTPi_alloc
/* 81495C58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81495C5C | 40 82 00 28 */	bne .L_81495C84
/* 81495C60 | 3C 60 81 67 */	lis r3, lbl_8166D0E0@ha
/* 81495C64 | 38 63 D0 E0 */	addi r3, r3, lbl_8166D0E0@l
/* 81495C68 | 4C C6 31 82 */	crclr cr1eq
/* 81495C6C | 48 16 AA 35 */	bl printf
/* 81495C70 | 7F 63 DB 78 */	mr r3, r27
/* 81495C74 | 38 80 00 01 */	li r4, 0x1
/* 81495C78 | 4B FF FC A1 */	bl NHTTPi_SetError
/* 81495C7C | 38 60 00 00 */	li r3, 0x0
/* 81495C80 | 48 00 00 5C */	b .L_81495CDC
.L_81495C84:
/* 81495C84 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 81495C88 | 38 00 00 00 */	li r0, 0x0
/* 81495C8C | 93 A3 00 0C */	stw r29, 0xc(r3)
/* 81495C90 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81495C94 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81495C98 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 81495C9C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81495CA0 | 41 82 00 2C */	beq .L_81495CCC
/* 81495CA4 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 81495CA8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81495CAC | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 81495CB0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81495CB4 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 81495CB8 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81495CBC | 90 64 00 04 */	stw r3, 0x4(r4)
/* 81495CC0 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 81495CC4 | 90 64 00 00 */	stw r3, 0x0(r4)
/* 81495CC8 | 48 00 00 10 */	b .L_81495CD8
.L_81495CCC:
/* 81495CCC | 90 63 00 04 */	stw r3, 0x4(r3)
/* 81495CD0 | 90 63 00 00 */	stw r3, 0x0(r3)
/* 81495CD4 | 90 7A 00 00 */	stw r3, 0x0(r26)
.L_81495CD8:
/* 81495CD8 | 38 60 00 01 */	li r3, 0x1
.L_81495CDC:
/* 81495CDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81495CE0 | 48 16 38 29 */	bl _restgpr_26
/* 81495CE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81495CE8 | 7C 08 03 A6 */	mtlr r0
/* 81495CEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81495CF0 | 4E 80 00 20 */	blr
.endfn addHdrList

# .text:0x13C | 0x81495CF4 | size: 0x48
.fn NHTTPi_getHdrFromList, global
/* 81495CF4 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81495CF8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81495CFC | 41 82 00 38 */	beq .L_81495D34
/* 81495D00 | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 81495D04 | 7C 05 20 40 */	cmplw r5, r4
/* 81495D08 | 41 82 00 24 */	beq .L_81495D2C
/* 81495D0C | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81495D10 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 81495D14 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81495D18 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 81495D1C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 81495D20 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81495D24 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81495D28 | 48 00 00 0C */	b .L_81495D34
.L_81495D2C:
/* 81495D2C | 38 00 00 00 */	li r0, 0x0
/* 81495D30 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_81495D34:
/* 81495D34 | 7C A3 2B 78 */	mr r3, r5
/* 81495D38 | 4E 80 00 20 */	blr
.endfn NHTTPi_getHdrFromList

# .text:0x184 | 0x81495D3C | size: 0x20
.fn NHTTP_AddHeaderField, global
/* 81495D3C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81495D40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81495D44 | 41 82 00 0C */	beq .L_81495D50
/* 81495D48 | 38 60 00 00 */	li r3, 0x0
/* 81495D4C | 4E 80 00 20 */	blr
.L_81495D50:
/* 81495D50 | 38 63 00 30 */	addi r3, r3, 0x30
/* 81495D54 | 4B FF FE 64 */	b addHdrList
/* 81495D58 | 4E 80 00 20 */	blr
.endfn NHTTP_AddHeaderField

# 0x8166D0E0..0x8166D100 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166D0E0 | size: 0x20
.obj lbl_8166D0E0, global
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F20616C
	.4byte 0x6C6F6361
	.4byte 0x7465206D
	.4byte 0x656D6F72
	.4byte 0x790A0000
	.4byte 0x00000000
.endobj lbl_8166D0E0
