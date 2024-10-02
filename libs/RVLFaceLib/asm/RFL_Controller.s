.include "macros.inc"
.file "RFL_Controller.c"

# 0x81330BB0..0x81330BC0 | size: 0x10
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330BB0 | size: 0x8
.obj "@etb_81330BB0", local
.hidden "@etb_81330BB0"
	.4byte 0x40080000
	.4byte 0x00000000
.endobj "@etb_81330BB0"

# extab:0x8 | 0x81330BB8 | size: 0x8
.obj "@etb_81330BB8", local
.hidden "@etb_81330BB8"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330BB8"

# 0x81331B18..0x81331B30 | size: 0x18
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331B18 | size: 0xC
.obj "@eti_81331B18", local
.hidden "@eti_81331B18"
	.4byte RFLiInitCtrlBuf
	.4byte 0x000001A8
	.4byte "@etb_81330BB0"
.endobj "@eti_81331B18"

# extabindex:0xC | 0x81331B24 | size: 0xC
.obj "@eti_81331B24", local
.hidden "@eti_81331B24"
	.4byte RFLiGetControllerData
	.4byte 0x000000F4
	.4byte "@etb_81330BB8"
.endobj "@eti_81331B24"

# 0x814E6BC8..0x814E6E64 | size: 0x29C
.text
.balign 4

# .text:0x0 | 0x814E6BC8 | size: 0x1A8
.fn RFLiInitCtrlBuf, global
/* 814E6BC8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814E6BCC | 7C 08 02 A6 */	mflr r0
/* 814E6BD0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814E6BD4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814E6BD8 | 48 11 28 DD */	bl _savegpr_24
/* 814E6BDC | 7C 7E 1B 78 */	mr r30, r3
/* 814E6BE0 | 4B FF 42 95 */	bl RFLiGetCtrlBufManager
/* 814E6BE4 | 7C 7F 1B 78 */	mr r31, r3
/* 814E6BE8 | 3C 60 52 4E */	lis r3, 0x524e
/* 814E6BEC | 7F FA FB 78 */	mr r26, r31
/* 814E6BF0 | 3B 00 00 00 */	li r24, 0x0
/* 814E6BF4 | 3B 83 43 44 */	addi r28, r3, 0x4344
/* 814E6BF8 | 3B A0 00 00 */	li r29, 0x0
.L_814E6BFC:
/* 814E6BFC | 7F C3 F3 78 */	mr r3, r30
/* 814E6C00 | 38 80 02 F0 */	li r4, 0x2f0
/* 814E6C04 | 38 A0 00 20 */	li r5, 0x20
/* 814E6C08 | 48 07 3B 4D */	bl fn_8155A754
/* 814E6C0C | 90 7A 00 00 */	stw r3, 0x0(r26)
/* 814E6C10 | 3B 23 00 08 */	addi r25, r3, 0x8
/* 814E6C14 | 3B 60 00 00 */	li r27, 0x0
/* 814E6C18 | 93 83 00 00 */	stw r28, 0x0(r3)
/* 814E6C1C | B3 A3 00 04 */	sth r29, 0x4(r3)
/* 814E6C20 | B3 A3 02 EC */	sth r29, 0x2ec(r3)
/* 814E6C24 | B3 A3 02 EE */	sth r29, 0x2ee(r3)
.L_814E6C28:
/* 814E6C28 | 7F 23 CB 78 */	mr r3, r25
/* 814E6C2C | 38 80 00 00 */	li r4, 0x0
/* 814E6C30 | 38 A0 00 4A */	li r5, 0x4a
/* 814E6C34 | 4B E4 97 01 */	bl memset
/* 814E6C38 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814E6C3C | 3B 39 00 4A */	addi r25, r25, 0x4a
/* 814E6C40 | 2C 1B 00 0A */	cmpwi r27, 0xa
/* 814E6C44 | 41 80 FF E4 */	blt .L_814E6C28
/* 814E6C48 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814E6C4C | 93 BA 00 10 */	stw r29, 0x10(r26)
/* 814E6C50 | 2C 18 00 04 */	cmpwi r24, 0x4
/* 814E6C54 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 814E6C58 | 41 80 FF A4 */	blt .L_814E6BFC
/* 814E6C5C | 7F C3 F3 78 */	mr r3, r30
/* 814E6C60 | 38 80 02 F0 */	li r4, 0x2f0
/* 814E6C64 | 38 A0 00 20 */	li r5, 0x20
/* 814E6C68 | 48 07 3A ED */	bl fn_8155A754
/* 814E6C6C | 3C 80 52 4E */	lis r4, 0x524e
/* 814E6C70 | 90 7F 00 20 */	stw r3, 0x20(r31)
/* 814E6C74 | 38 84 43 44 */	addi r4, r4, 0x4344
/* 814E6C78 | 38 00 00 00 */	li r0, 0x0
/* 814E6C7C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814E6C80 | 3B 83 00 08 */	addi r28, r3, 0x8
/* 814E6C84 | 3B 60 00 00 */	li r27, 0x0
/* 814E6C88 | B0 03 00 04 */	sth r0, 0x4(r3)
/* 814E6C8C | B0 03 02 EC */	sth r0, 0x2ec(r3)
/* 814E6C90 | B0 03 02 EE */	sth r0, 0x2ee(r3)
.L_814E6C94:
/* 814E6C94 | 7F 83 E3 78 */	mr r3, r28
/* 814E6C98 | 38 80 00 00 */	li r4, 0x0
/* 814E6C9C | 38 A0 00 4A */	li r5, 0x4a
/* 814E6CA0 | 4B E4 96 95 */	bl memset
/* 814E6CA4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814E6CA8 | 3B 9C 00 4A */	addi r28, r28, 0x4a
/* 814E6CAC | 2C 1B 00 0A */	cmpwi r27, 0xa
/* 814E6CB0 | 41 80 FF E4 */	blt .L_814E6C94
/* 814E6CB4 | 7F C3 F3 78 */	mr r3, r30
/* 814E6CB8 | 38 80 02 F0 */	li r4, 0x2f0
/* 814E6CBC | 38 A0 00 20 */	li r5, 0x20
/* 814E6CC0 | 48 07 3A 95 */	bl fn_8155A754
/* 814E6CC4 | 3C 80 52 4E */	lis r4, 0x524e
/* 814E6CC8 | 90 7F 00 24 */	stw r3, 0x24(r31)
/* 814E6CCC | 38 84 43 44 */	addi r4, r4, 0x4344
/* 814E6CD0 | 38 00 00 00 */	li r0, 0x0
/* 814E6CD4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814E6CD8 | 3B 83 00 08 */	addi r28, r3, 0x8
/* 814E6CDC | 3B 60 00 00 */	li r27, 0x0
/* 814E6CE0 | B0 03 00 04 */	sth r0, 0x4(r3)
/* 814E6CE4 | B0 03 02 EC */	sth r0, 0x2ec(r3)
/* 814E6CE8 | B0 03 02 EE */	sth r0, 0x2ee(r3)
.L_814E6CEC:
/* 814E6CEC | 7F 83 E3 78 */	mr r3, r28
/* 814E6CF0 | 38 80 00 00 */	li r4, 0x0
/* 814E6CF4 | 38 A0 00 4A */	li r5, 0x4a
/* 814E6CF8 | 4B E4 96 3D */	bl memset
/* 814E6CFC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814E6D00 | 3B 9C 00 4A */	addi r28, r28, 0x4a
/* 814E6D04 | 2C 1B 00 0A */	cmpwi r27, 0xa
/* 814E6D08 | 41 80 FF E4 */	blt .L_814E6CEC
/* 814E6D0C | 38 A0 00 00 */	li r5, 0x0
/* 814E6D10 | 38 80 FF FF */	li r4, -0x1
/* 814E6D14 | 90 BF 00 44 */	stw r5, 0x44(r31)
/* 814E6D18 | 38 00 00 01 */	li r0, 0x1
/* 814E6D1C | 38 60 00 0A */	li r3, 0xa
/* 814E6D20 | 90 BF 00 48 */	stw r5, 0x48(r31)
/* 814E6D24 | 90 9F 00 54 */	stw r4, 0x54(r31)
/* 814E6D28 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814E6D2C | 90 BF 00 6C */	stw r5, 0x6c(r31)
/* 814E6D30 | 48 00 01 35 */	bl RFLGetMiddleDBBufferSize
/* 814E6D34 | 7C 64 1B 78 */	mr r4, r3
/* 814E6D38 | 7F C3 F3 78 */	mr r3, r30
/* 814E6D3C | 38 A0 00 20 */	li r5, 0x20
/* 814E6D40 | 48 07 3A 15 */	bl fn_8155A754
/* 814E6D44 | 7C 65 1B 78 */	mr r5, r3
/* 814E6D48 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 814E6D4C | 38 80 00 00 */	li r4, 0x0
/* 814E6D50 | 38 C0 00 0A */	li r6, 0xa
/* 814E6D54 | 48 00 01 19 */	bl RFLInitMiddleDB
/* 814E6D58 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814E6D5C | 48 11 27 A5 */	bl _restgpr_24
/* 814E6D60 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814E6D64 | 7C 08 03 A6 */	mtlr r0
/* 814E6D68 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814E6D6C | 4E 80 00 20 */	blr
.endfn RFLiInitCtrlBuf

# .text:0x1A8 | 0x814E6D70 | size: 0xF4
.fn RFLiGetControllerData, global
/* 814E6D70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E6D74 | 7C 08 02 A6 */	mflr r0
/* 814E6D78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E6D7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814E6D80 | 48 11 27 41 */	bl _savegpr_27
/* 814E6D84 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E6D88 | 7C 7B 1B 78 */	mr r27, r3
/* 814E6D8C | 7C 9E 23 78 */	mr r30, r4
/* 814E6D90 | 7C BD 2B 78 */	mr r29, r5
/* 814E6D94 | 7C DC 33 78 */	mr r28, r6
/* 814E6D98 | 41 80 00 0C */	blt .L_814E6DA4
/* 814E6D9C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814E6DA0 | 41 80 00 0C */	blt .L_814E6DAC
.L_814E6DA4:
/* 814E6DA4 | 38 60 00 00 */	li r3, 0x0
/* 814E6DA8 | 48 00 00 A4 */	b .L_814E6E4C
.L_814E6DAC:
/* 814E6DAC | 28 05 00 0A */	cmplwi r5, 0xa
/* 814E6DB0 | 41 80 00 0C */	blt .L_814E6DBC
/* 814E6DB4 | 38 60 00 00 */	li r3, 0x0
/* 814E6DB8 | 48 00 00 94 */	b .L_814E6E4C
.L_814E6DBC:
/* 814E6DBC | 4B FF 40 B9 */	bl RFLiGetCtrlBufManager
/* 814E6DC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E6DC4 | 40 82 00 0C */	bne .L_814E6DD0
/* 814E6DC8 | 38 60 00 00 */	li r3, 0x0
/* 814E6DCC | 48 00 00 80 */	b .L_814E6E4C
.L_814E6DD0:
/* 814E6DD0 | 57 C5 10 3A */	slwi r5, r30, 2
/* 814E6DD4 | 7C 83 2A 14 */	add r4, r3, r5
/* 814E6DD8 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814E6DDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E6DE0 | 40 82 00 0C */	bne .L_814E6DEC
/* 814E6DE4 | 38 60 00 00 */	li r3, 0x0
/* 814E6DE8 | 48 00 00 64 */	b .L_814E6E4C
.L_814E6DEC:
/* 814E6DEC | 1F FD 00 4A */	mulli r31, r29, 0x4a
/* 814E6DF0 | 7F C3 28 2E */	lwzx r30, r3, r5
/* 814E6DF4 | 38 00 00 01 */	li r0, 0x1
/* 814E6DF8 | 7C 00 E8 30 */	slw r0, r0, r29
/* 814E6DFC | 7C 7E FA 14 */	add r3, r30, r31
/* 814E6E00 | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 814E6E04 | 38 63 00 20 */	addi r3, r3, 0x20
/* 814E6E08 | 4B FF F5 79 */	bl RFLiIsValidID
/* 814E6E0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E6E10 | 40 82 00 0C */	bne .L_814E6E1C
/* 814E6E14 | 38 60 00 00 */	li r3, 0x0
/* 814E6E18 | 48 00 00 34 */	b .L_814E6E4C
.L_814E6E1C:
/* 814E6E1C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814E6E20 | 40 82 00 18 */	bne .L_814E6E38
/* 814E6E24 | A0 1E 00 04 */	lhz r0, 0x4(r30)
/* 814E6E28 | 7C 00 E8 39 */	and. r0, r0, r29
/* 814E6E2C | 41 82 00 0C */	beq .L_814E6E38
/* 814E6E30 | 38 60 00 00 */	li r3, 0x0
/* 814E6E34 | 48 00 00 18 */	b .L_814E6E4C
.L_814E6E38:
/* 814E6E38 | 7C 7E FA 14 */	add r3, r30, r31
/* 814E6E3C | 7F 64 DB 78 */	mr r4, r27
/* 814E6E40 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814E6E44 | 4B FF EC 15 */	bl RFLiConvertRaw2Info
/* 814E6E48 | 38 60 00 01 */	li r3, 0x1
.L_814E6E4C:
/* 814E6E4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814E6E50 | 48 11 26 BD */	bl _restgpr_27
/* 814E6E54 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E6E58 | 7C 08 03 A6 */	mtlr r0
/* 814E6E5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E6E60 | 4E 80 00 20 */	blr
.endfn RFLiGetControllerData
