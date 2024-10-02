.include "macros.inc"
.file "RFL_Icon.c"

# 0x81330A00..0x81330A18 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330A00 | size: 0x8
.obj "@etb_81330A00", local
.hidden "@etb_81330A00"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330A00"

# extab:0x8 | 0x81330A08 | size: 0x8
.obj "@etb_81330A08", local
.hidden "@etb_81330A08"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330A08"

# extab:0x10 | 0x81330A10 | size: 0x8
.obj "@etb_81330A10", local
.hidden "@etb_81330A10"
	.4byte 0x404A0000
	.4byte 0x00000000
.endobj "@etb_81330A10"

# 0x81331890..0x813318B4 | size: 0x24
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331890 | size: 0xC
.obj "@eti_81331890", local
.hidden "@eti_81331890"
	.4byte RFLMakeIcon
	.4byte 0x00000074
	.4byte "@etb_81330A00"
.endobj "@eti_81331890"

# extabindex:0xC | 0x8133189C | size: 0xC
.obj "@eti_8133189C", local
.hidden "@eti_8133189C"
	.4byte RFLiMakeIconFromData
	.4byte 0x00000060
	.4byte "@etb_81330A08"
.endobj "@eti_8133189C"

# extabindex:0x18 | 0x813318A8 | size: 0xC
.obj "@eti_813318A8", local
.hidden "@eti_813318A8"
	.4byte RFLiMakeIcon
	.4byte 0x00000520
	.4byte "@etb_81330A10"
.endobj "@eti_813318A8"

# 0x814E3B64..0x814E4158 | size: 0x5F4
.text
.balign 4

# .text:0x0 | 0x814E3B64 | size: 0x74
.fn RFLMakeIcon, global
/* 814E3B64 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814E3B68 | 7C 08 02 A6 */	mflr r0
/* 814E3B6C | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814E3B70 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 814E3B74 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 814E3B78 | 7D 1E 43 78 */	mr r30, r8
/* 814E3B7C | 93 A1 00 64 */	stw r29, 0x64(r1)
/* 814E3B80 | 7C FD 3B 78 */	mr r29, r7
/* 814E3B84 | 93 81 00 60 */	stw r28, 0x60(r1)
/* 814E3B88 | 7C 7C 1B 78 */	mr r28, r3
/* 814E3B8C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E3B90 | 48 00 54 A5 */	bl RFLiPickupCharInfo
/* 814E3B94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E3B98 | 7C 7F 1B 78 */	mr r31, r3
/* 814E3B9C | 40 82 00 18 */	bne .L_814E3BB4
/* 814E3BA0 | 7F 83 E3 78 */	mr r3, r28
/* 814E3BA4 | 7F A5 EB 78 */	mr r5, r29
/* 814E3BA8 | 7F C6 F3 78 */	mr r6, r30
/* 814E3BAC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E3BB0 | 48 00 00 89 */	bl RFLiMakeIcon
.L_814E3BB4:
/* 814E3BB4 | 7F E3 FB 78 */	mr r3, r31
/* 814E3BB8 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 814E3BBC | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 814E3BC0 | 83 A1 00 64 */	lwz r29, 0x64(r1)
/* 814E3BC4 | 83 81 00 60 */	lwz r28, 0x60(r1)
/* 814E3BC8 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814E3BCC | 7C 08 03 A6 */	mtlr r0
/* 814E3BD0 | 38 21 00 70 */	addi r1, r1, 0x70
/* 814E3BD4 | 4E 80 00 20 */	blr
.endfn RFLMakeIcon

# .text:0x74 | 0x814E3BD8 | size: 0x60
.fn RFLiMakeIconFromData, global
/* 814E3BD8 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814E3BDC | 7C 08 02 A6 */	mflr r0
/* 814E3BE0 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814E3BE4 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 814E3BE8 | 7C DF 33 78 */	mr r31, r6
/* 814E3BEC | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 814E3BF0 | 7C BE 2B 78 */	mr r30, r5
/* 814E3BF4 | 93 A1 00 64 */	stw r29, 0x64(r1)
/* 814E3BF8 | 7C 7D 1B 78 */	mr r29, r3
/* 814E3BFC | 7C 83 23 78 */	mr r3, r4
/* 814E3C00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E3C04 | 48 00 1E 55 */	bl RFLiConvertRaw2Info
/* 814E3C08 | 7F A3 EB 78 */	mr r3, r29
/* 814E3C0C | 7F C5 F3 78 */	mr r5, r30
/* 814E3C10 | 7F E6 FB 78 */	mr r6, r31
/* 814E3C14 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E3C18 | 48 00 00 21 */	bl RFLiMakeIcon
/* 814E3C1C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814E3C20 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 814E3C24 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 814E3C28 | 83 A1 00 64 */	lwz r29, 0x64(r1)
/* 814E3C2C | 7C 08 03 A6 */	mtlr r0
/* 814E3C30 | 38 21 00 70 */	addi r1, r1, 0x70
/* 814E3C34 | 4E 80 00 20 */	blr
.endfn RFLiMakeIconFromData

# .text:0xD4 | 0x814E3C38 | size: 0x520
.fn RFLiMakeIcon, global
/* 814E3C38 | 94 21 FD E0 */	stwu r1, -0x220(r1)
/* 814E3C3C | 7C 08 02 A6 */	mflr r0
/* 814E3C40 | 90 01 02 24 */	stw r0, 0x224(r1)
/* 814E3C44 | DB E1 02 10 */	stfd f31, 0x210(r1)
/* 814E3C48 | F3 E1 02 18 */	psq_st f31, 0x218(r1), 0, qr0
/* 814E3C4C | 39 61 02 10 */	addi r11, r1, 0x210
/* 814E3C50 | 48 11 58 65 */	bl _savegpr_24
/* 814E3C54 | 3F E0 81 62 */	lis r31, lbl_8161D418@ha
/* 814E3C58 | 3F C0 43 30 */	lis r30, 0x4330
/* 814E3C5C | 3B FF D4 18 */	addi r31, r31, lbl_8161D418@l
/* 814E3C60 | 3F 20 81 67 */	lis r25, coordinateData@ha
/* 814E3C64 | 85 99 EA 90 */	lwzu r12, coordinateData@l(r25)
/* 814E3C68 | 38 FF 00 00 */	addi r7, r31, 0x0
/* 814E3C6C | A0 06 00 00 */	lhz r0, 0x0(r6)
/* 814E3C70 | 7C 7A 1B 78 */	mr r26, r3
/* 814E3C74 | 81 79 00 04 */	lwz r11, 0x4(r25)
/* 814E3C78 | 7C 9B 23 78 */	mr r27, r4
/* 814E3C7C | 28 00 00 80 */	cmplwi r0, 0x80
/* 814E3C80 | 81 59 00 08 */	lwz r10, 0x8(r25)
/* 814E3C84 | 81 39 00 0C */	lwz r9, 0xc(r25)
/* 814E3C88 | 7C BC 2B 78 */	mr r28, r5
/* 814E3C8C | 81 1F 00 00 */	lwz r8, 0x0(r31)
/* 814E3C90 | 7C DD 33 78 */	mr r29, r6
/* 814E3C94 | 80 87 00 04 */	lwz r4, 0x4(r7)
/* 814E3C98 | 80 67 00 08 */	lwz r3, 0x8(r7)
/* 814E3C9C | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 814E3CA0 | 93 C1 01 D0 */	stw r30, 0x1d0(r1)
/* 814E3CA4 | 93 C1 01 D8 */	stw r30, 0x1d8(r1)
/* 814E3CA8 | 91 81 00 58 */	stw r12, 0x58(r1)
/* 814E3CAC | 91 61 00 5C */	stw r11, 0x5c(r1)
/* 814E3CB0 | 91 41 00 60 */	stw r10, 0x60(r1)
/* 814E3CB4 | 91 21 00 64 */	stw r9, 0x64(r1)
/* 814E3CB8 | 91 19 00 00 */	stw r8, 0x0(r25)
/* 814E3CBC | 90 99 00 04 */	stw r4, 0x4(r25)
/* 814E3CC0 | 90 79 00 08 */	stw r3, 0x8(r25)
/* 814E3CC4 | 90 19 00 0C */	stw r0, 0xc(r25)
/* 814E3CC8 | 41 81 00 10 */	bgt .L_814E3CD8
/* 814E3CCC | A0 06 00 02 */	lhz r0, 0x2(r6)
/* 814E3CD0 | 28 00 00 80 */	cmplwi r0, 0x80
/* 814E3CD4 | 40 81 00 18 */	ble .L_814E3CEC
.L_814E3CD8:
/* 814E3CD8 | 4B FF 71 B9 */	bl RFLiGetUseDeluxTex
/* 814E3CDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E3CE0 | 41 82 00 0C */	beq .L_814E3CEC
/* 814E3CE4 | 3B 20 01 00 */	li r25, 0x100
/* 814E3CE8 | 48 00 00 28 */	b .L_814E3D10
.L_814E3CEC:
/* 814E3CEC | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814E3CF0 | 28 00 00 40 */	cmplwi r0, 0x40
/* 814E3CF4 | 41 81 00 10 */	bgt .L_814E3D04
/* 814E3CF8 | A0 1D 00 02 */	lhz r0, 0x2(r29)
/* 814E3CFC | 28 00 00 40 */	cmplwi r0, 0x40
/* 814E3D00 | 40 81 00 0C */	ble .L_814E3D0C
.L_814E3D04:
/* 814E3D04 | 3B 20 00 80 */	li r25, 0x80
/* 814E3D08 | 48 00 00 08 */	b .L_814E3D10
.L_814E3D0C:
/* 814E3D0C | 3B 20 00 40 */	li r25, 0x40
.L_814E3D10:
/* 814E3D10 | 38 00 00 01 */	li r0, 0x1
/* 814E3D14 | 7F 23 CB 78 */	mr r3, r25
/* 814E3D18 | 7C 18 E0 30 */	slw r24, r0, r28
/* 814E3D1C | 7F 04 C3 78 */	mr r4, r24
/* 814E3D20 | 4B FF B7 3D */	bl RFLGetModelBufferSize
/* 814E3D24 | 4B FF 6F 39 */	bl RFLiAlloc32
/* 814E3D28 | 7C 7E 1B 78 */	mr r30, r3
/* 814E3D2C | 7F 64 DB 78 */	mr r4, r27
/* 814E3D30 | 7F C5 F3 78 */	mr r5, r30
/* 814E3D34 | 7F 26 CB 78 */	mr r6, r25
/* 814E3D38 | 7F 07 C3 78 */	mr r7, r24
/* 814E3D3C | 38 61 01 48 */	addi r3, r1, 0x148
/* 814E3D40 | 4B FF B7 F9 */	bl RFLiInitCharModel
/* 814E3D44 | 7F 84 E3 78 */	mr r4, r28
/* 814E3D48 | 38 61 01 48 */	addi r3, r1, 0x148
/* 814E3D4C | 4B FF BB AD */	bl RFLSetExpression
/* 814E3D50 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 814E3D54 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814E3D58 | 40 82 00 28 */	bne .L_814E3D80
/* 814E3D5C | 88 BD 00 08 */	lbz r5, 0x8(r29)
/* 814E3D60 | 88 9D 00 09 */	lbz r4, 0x9(r29)
/* 814E3D64 | 88 7D 00 0A */	lbz r3, 0xa(r29)
/* 814E3D68 | 88 1D 00 0B */	lbz r0, 0xb(r29)
/* 814E3D6C | 98 A1 01 E0 */	stb r5, 0x1e0(r1)
/* 814E3D70 | 98 81 01 E1 */	stb r4, 0x1e1(r1)
/* 814E3D74 | 98 61 01 E2 */	stb r3, 0x1e2(r1)
/* 814E3D78 | 98 01 01 E3 */	stb r0, 0x1e3(r1)
/* 814E3D7C | 48 00 00 2C */	b .L_814E3DA8
.L_814E3D80:
/* 814E3D80 | A0 1B 00 44 */	lhz r0, 0x44(r27)
/* 814E3D84 | 54 03 F7 3E */	extrwi r3, r0, 4, 26
/* 814E3D88 | 4B FF BB 79 */	bl RFLGetFavoriteColor
/* 814E3D8C | 54 60 46 3E */	srwi r0, r3, 24
/* 814E3D90 | 98 61 01 E3 */	stb r3, 0x1e3(r1)
/* 814E3D94 | 98 01 01 E0 */	stb r0, 0x1e0(r1)
/* 814E3D98 | 54 60 86 3E */	extrwi r0, r3, 8, 8
/* 814E3D9C | 98 01 01 E1 */	stb r0, 0x1e1(r1)
/* 814E3DA0 | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 814E3DA4 | 98 01 01 E2 */	stb r0, 0x1e2(r1)
.L_814E3DA8:
/* 814E3DA8 | 80 A1 01 E0 */	lwz r5, 0x1e0(r1)
/* 814E3DAC | 38 00 00 00 */	li r0, 0x0
/* 814E3DB0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814E3DB4 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 814E3DB8 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814E3DBC | 38 A1 00 18 */	addi r5, r1, 0x18
/* 814E3DC0 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 814E3DC4 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 814E3DC8 | 48 06 42 49 */	bl GXGetScissor
/* 814E3DCC | A0 BD 00 00 */	lhz r5, 0x0(r29)
/* 814E3DD0 | 38 60 00 00 */	li r3, 0x0
/* 814E3DD4 | A0 DD 00 02 */	lhz r6, 0x2(r29)
/* 814E3DD8 | 38 80 00 00 */	li r4, 0x0
/* 814E3DDC | 48 06 41 CD */	bl GXSetScissor
/* 814E3DE0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814E3DE4 | 7F 46 D3 78 */	mr r6, r26
/* 814E3DE8 | A0 9D 00 00 */	lhz r4, 0x0(r29)
/* 814E3DEC | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814E3DF0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814E3DF4 | 38 60 00 05 */	li r3, 0x5
/* 814E3DF8 | A0 BD 00 02 */	lhz r5, 0x2(r29)
/* 814E3DFC | 4B FF D4 CD */	bl RFLiSetupCopyTex
/* 814E3E00 | 38 61 00 80 */	addi r3, r1, 0x80
/* 814E3E04 | 48 06 41 55 */	bl GXGetViewportv
/* 814E3E08 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814E3E0C | A0 1D 00 02 */	lhz r0, 0x2(r29)
/* 814E3E10 | 90 61 01 D4 */	stw r3, 0x1d4(r1)
/* 814E3E14 | C0 22 8D 78 */	lfs f1, lbl_81695178@sda21(r0)
/* 814E3E18 | 90 01 01 DC */	stw r0, 0x1dc(r1)
/* 814E3E1C | C8 82 8D A8 */	lfd f4, lbl_816951A8@sda21(r0)
/* 814E3E20 | FC 40 08 90 */	fmr f2, f1
/* 814E3E24 | C8 61 01 D0 */	lfd f3, 0x1d0(r1)
/* 814E3E28 | FC A0 08 90 */	fmr f5, f1
/* 814E3E2C | C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 814E3E30 | EC 63 20 28 */	fsubs f3, f3, f4
/* 814E3E34 | C0 C2 8D 7C */	lfs f6, lbl_8169517C@sda21(r0)
/* 814E3E38 | EC 80 20 28 */	fsubs f4, f0, f4
/* 814E3E3C | 48 06 40 F1 */	bl GXSetViewport
/* 814E3E40 | A0 1D 00 02 */	lhz r0, 0x2(r29)
/* 814E3E44 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814E3E48 | 90 01 01 DC */	stw r0, 0x1dc(r1)
/* 814E3E4C | C8 42 8D A8 */	lfd f2, lbl_816951A8@sda21(r0)
/* 814E3E50 | 7C 03 00 40 */	cmplw r3, r0
/* 814E3E54 | 90 61 01 D4 */	stw r3, 0x1d4(r1)
/* 814E3E58 | C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 814E3E5C | C8 21 01 D0 */	lfd f1, 0x1d0(r1)
/* 814E3E60 | EC 00 10 28 */	fsubs f0, f0, f2
/* 814E3E64 | EC 21 10 28 */	fsubs f1, f1, f2
/* 814E3E68 | EF E1 00 24 */	fdivs f31, f1, f0
/* 814E3E6C | 40 80 00 2C */	bge .L_814E3E98
/* 814E3E70 | C0 02 8D 80 */	lfs f0, lbl_81695180@sda21(r0)
/* 814E3E74 | C8 42 8D 88 */	lfd f2, lbl_81695188@sda21(r0)
/* 814E3E78 | EC 20 F8 24 */	fdivs f1, f0, f31
/* 814E3E7C | 48 12 8E A5 */	bl atan2
/* 814E3E80 | FC 40 08 18 */	frsp f2, f1
/* 814E3E84 | C0 22 8D 94 */	lfs f1, lbl_81695194@sda21(r0)
/* 814E3E88 | C0 02 8D 90 */	lfs f0, lbl_81695190@sda21(r0)
/* 814E3E8C | EC 21 00 B2 */	fmuls f1, f1, f2
/* 814E3E90 | EC 20 00 72 */	fmuls f1, f0, f1
/* 814E3E94 | 48 00 00 24 */	b .L_814E3EB8
.L_814E3E98:
/* 814E3E98 | C8 22 8D 98 */	lfd f1, lbl_81695198@sda21(r0)
/* 814E3E9C | C8 42 8D 88 */	lfd f2, lbl_81695188@sda21(r0)
/* 814E3EA0 | 48 12 8E 81 */	bl atan2
/* 814E3EA4 | FC 40 08 18 */	frsp f2, f1
/* 814E3EA8 | C0 22 8D 94 */	lfs f1, lbl_81695194@sda21(r0)
/* 814E3EAC | C0 02 8D 90 */	lfs f0, lbl_81695190@sda21(r0)
/* 814E3EB0 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 814E3EB4 | EC 20 00 72 */	fmuls f1, f0, f1
.L_814E3EB8:
/* 814E3EB8 | FC 40 F8 90 */	fmr f2, f31
/* 814E3EBC | C0 62 8D A0 */	lfs f3, lbl_816951A0@sda21(r0)
/* 814E3EC0 | C0 82 8D A4 */	lfs f4, lbl_816951A4@sda21(r0)
/* 814E3EC4 | 38 61 00 D8 */	addi r3, r1, 0xd8
/* 814E3EC8 | 48 05 D6 49 */	bl fn_81541510
/* 814E3ECC | 38 61 00 D8 */	addi r3, r1, 0xd8
/* 814E3ED0 | 38 80 00 00 */	li r4, 0x0
/* 814E3ED4 | 48 06 3D 5D */	bl GXSetProjection
/* 814E3ED8 | 38 9F 00 10 */	addi r4, r31, 0x10
/* 814E3EDC | 39 1F 00 1C */	addi r8, r31, 0x1c
/* 814E3EE0 | 38 FF 00 28 */	addi r7, r31, 0x28
/* 814E3EE4 | 83 3F 00 10 */	lwz r25, 0x10(r31)
/* 814E3EE8 | 83 84 00 04 */	lwz r28, 0x4(r4)
/* 814E3EEC | 38 61 01 18 */	addi r3, r1, 0x118
/* 814E3EF0 | 83 64 00 08 */	lwz r27, 0x8(r4)
/* 814E3EF4 | 38 81 00 48 */	addi r4, r1, 0x48
/* 814E3EF8 | 81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 814E3EFC | 38 A1 00 30 */	addi r5, r1, 0x30
/* 814E3F00 | 81 68 00 04 */	lwz r11, 0x4(r8)
/* 814E3F04 | 38 C1 00 3C */	addi r6, r1, 0x3c
/* 814E3F08 | 81 48 00 08 */	lwz r10, 0x8(r8)
/* 814E3F0C | 81 3F 00 28 */	lwz r9, 0x28(r31)
/* 814E3F10 | 81 07 00 04 */	lwz r8, 0x4(r7)
/* 814E3F14 | 80 07 00 08 */	lwz r0, 0x8(r7)
/* 814E3F18 | 93 21 00 48 */	stw r25, 0x48(r1)
/* 814E3F1C | 93 81 00 4C */	stw r28, 0x4c(r1)
/* 814E3F20 | 93 61 00 50 */	stw r27, 0x50(r1)
/* 814E3F24 | 91 81 00 3C */	stw r12, 0x3c(r1)
/* 814E3F28 | 91 61 00 40 */	stw r11, 0x40(r1)
/* 814E3F2C | 91 41 00 44 */	stw r10, 0x44(r1)
/* 814E3F30 | 91 21 00 30 */	stw r9, 0x30(r1)
/* 814E3F34 | 91 01 00 34 */	stw r8, 0x34(r1)
/* 814E3F38 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 814E3F3C | 48 05 D4 0D */	bl fn_81541348
/* 814E3F40 | 88 E2 8D 70 */	lbz r7, lbl_81695170@sda21(r0)
/* 814E3F44 | 38 61 00 98 */	addi r3, r1, 0x98
/* 814E3F48 | 88 C2 8D 71 */	lbz r6, lbl_81695171@sda21(r0)
/* 814E3F4C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E3F50 | 88 A2 8D 72 */	lbz r5, lbl_81695172@sda21(r0)
/* 814E3F54 | 88 02 8D 73 */	lbz r0, lbl_81695173@sda21(r0)
/* 814E3F58 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 814E3F5C | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 814E3F60 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 814E3F64 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814E3F68 | 48 06 18 25 */	bl GXInitLightColor
/* 814E3F6C | 38 7F 00 34 */	addi r3, r31, 0x34
/* 814E3F70 | 80 FF 00 34 */	lwz r7, 0x34(r31)
/* 814E3F74 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814E3F78 | 38 81 00 24 */	addi r4, r1, 0x24
/* 814E3F7C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814E3F80 | 7C 85 23 78 */	mr r5, r4
/* 814E3F84 | 90 E1 00 24 */	stw r7, 0x24(r1)
/* 814E3F88 | 38 61 01 18 */	addi r3, r1, 0x118
/* 814E3F8C | 90 C1 00 28 */	stw r6, 0x28(r1)
/* 814E3F90 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 814E3F94 | 48 05 D5 29 */	bl fn_815414BC
/* 814E3F98 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 814E3F9C | 38 61 00 98 */	addi r3, r1, 0x98
/* 814E3FA0 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 814E3FA4 | C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 814E3FA8 | 48 06 17 D5 */	bl GXInitLightPos
/* 814E3FAC | 38 61 00 98 */	addi r3, r1, 0x98
/* 814E3FB0 | 38 80 00 01 */	li r4, 0x1
/* 814E3FB4 | 48 06 17 E5 */	bl GXLoadLightObjImm
/* 814E3FB8 | 38 61 01 48 */	addi r3, r1, 0x148
/* 814E3FBC | 38 81 01 18 */	addi r4, r1, 0x118
/* 814E3FC0 | 4B FF B8 ED */	bl RFLSetMtx
/* 814E3FC4 | 88 E2 8D 74 */	lbz r7, lbl_81695174@sda21(r0)
/* 814E3FC8 | 39 20 00 01 */	li r9, 0x1
/* 814E3FCC | 39 00 00 02 */	li r8, 0x2
/* 814E3FD0 | 88 C2 8D 75 */	lbz r6, lbl_81695175@sda21(r0)
/* 814E3FD4 | 88 A2 8D 76 */	lbz r5, lbl_81695176@sda21(r0)
/* 814E3FD8 | 38 00 00 00 */	li r0, 0x0
/* 814E3FDC | 88 82 8D 77 */	lbz r4, lbl_81695177@sda21(r0)
/* 814E3FE0 | 38 61 00 68 */	addi r3, r1, 0x68
/* 814E3FE4 | 99 21 00 68 */	stb r9, 0x68(r1)
/* 814E3FE8 | 91 21 00 6C */	stw r9, 0x6c(r1)
/* 814E3FEC | 91 01 00 70 */	stw r8, 0x70(r1)
/* 814E3FF0 | 91 01 00 74 */	stw r8, 0x74(r1)
/* 814E3FF4 | 98 E1 00 78 */	stb r7, 0x78(r1)
/* 814E3FF8 | 98 C1 00 79 */	stb r6, 0x79(r1)
/* 814E3FFC | 98 A1 00 7A */	stb r5, 0x7a(r1)
/* 814E4000 | 98 81 00 7B */	stb r4, 0x7b(r1)
/* 814E4004 | 98 01 00 7C */	stb r0, 0x7c(r1)
/* 814E4008 | 4B FF B9 39 */	bl RFLLoadDrawSetting
/* 814E400C | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 814E4010 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E4014 | 40 82 00 30 */	bne .L_814E4044
/* 814E4018 | 38 60 00 01 */	li r3, 0x1
/* 814E401C | 48 06 37 9D */	bl GXSetColorUpdate
/* 814E4020 | 38 60 00 01 */	li r3, 0x1
/* 814E4024 | 48 06 37 C1 */	bl GXSetAlphaUpdate
/* 814E4028 | 38 60 00 01 */	li r3, 0x1
/* 814E402C | 38 80 00 04 */	li r4, 0x4
/* 814E4030 | 38 A0 00 05 */	li r5, 0x5
/* 814E4034 | 38 C0 00 03 */	li r6, 0x3
/* 814E4038 | 48 06 37 31 */	bl GXSetBlendMode
/* 814E403C | 38 61 01 48 */	addi r3, r1, 0x148
/* 814E4040 | 4B FF BB E5 */	bl RFLDrawOpa
.L_814E4044:
/* 814E4044 | 38 60 00 01 */	li r3, 0x1
/* 814E4048 | 38 80 00 03 */	li r4, 0x3
/* 814E404C | 38 A0 00 00 */	li r5, 0x0
/* 814E4050 | 48 06 37 C1 */	bl GXSetZMode
/* 814E4054 | 38 60 00 01 */	li r3, 0x1
/* 814E4058 | 38 80 00 04 */	li r4, 0x4
/* 814E405C | 38 A0 00 05 */	li r5, 0x5
/* 814E4060 | 38 C0 00 03 */	li r6, 0x3
/* 814E4064 | 48 06 37 05 */	bl GXSetBlendMode
/* 814E4068 | 38 60 00 01 */	li r3, 0x1
/* 814E406C | 48 06 37 4D */	bl GXSetColorUpdate
/* 814E4070 | 38 60 00 00 */	li r3, 0x0
/* 814E4074 | 48 06 37 71 */	bl GXSetAlphaUpdate
/* 814E4078 | 38 61 01 48 */	addi r3, r1, 0x148
/* 814E407C | 4B FF BB B5 */	bl RFLDrawXlu
/* 814E4080 | 38 60 00 01 */	li r3, 0x1
/* 814E4084 | 38 80 00 01 */	li r4, 0x1
/* 814E4088 | 38 A0 00 05 */	li r5, 0x5
/* 814E408C | 38 C0 00 03 */	li r6, 0x3
/* 814E4090 | 48 06 36 D9 */	bl GXSetBlendMode
/* 814E4094 | 38 60 00 01 */	li r3, 0x1
/* 814E4098 | 48 06 37 4D */	bl GXSetAlphaUpdate
/* 814E409C | 38 60 00 00 */	li r3, 0x0
/* 814E40A0 | 48 06 37 19 */	bl GXSetColorUpdate
/* 814E40A4 | 38 61 01 48 */	addi r3, r1, 0x148
/* 814E40A8 | 4B FF BB 89 */	bl RFLDrawXlu
/* 814E40AC | 38 60 00 01 */	li r3, 0x1
/* 814E40B0 | 38 80 00 03 */	li r4, 0x3
/* 814E40B4 | 38 A0 00 01 */	li r5, 0x1
/* 814E40B8 | 48 06 37 59 */	bl GXSetZMode
/* 814E40BC | 38 60 00 01 */	li r3, 0x1
/* 814E40C0 | 48 06 36 F9 */	bl GXSetColorUpdate
/* 814E40C4 | 48 06 02 F1 */	bl GXDrawDone
/* 814E40C8 | 7F 43 D3 78 */	mr r3, r26
/* 814E40CC | 38 80 00 01 */	li r4, 0x1
/* 814E40D0 | 48 06 15 1D */	bl GXCopyTex
/* 814E40D4 | 48 06 02 E1 */	bl GXDrawDone
/* 814E40D8 | 48 06 03 9D */	bl GXPixModeSync
/* 814E40DC | 7F C3 F3 78 */	mr r3, r30
/* 814E40E0 | 4B FF 6B 91 */	bl RFLiFree
/* 814E40E4 | C0 21 00 80 */	lfs f1, 0x80(r1)
/* 814E40E8 | C0 41 00 84 */	lfs f2, 0x84(r1)
/* 814E40EC | C0 61 00 88 */	lfs f3, 0x88(r1)
/* 814E40F0 | C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 814E40F4 | C0 A1 00 90 */	lfs f5, 0x90(r1)
/* 814E40F8 | C0 C1 00 94 */	lfs f6, 0x94(r1)
/* 814E40FC | 48 06 3E 31 */	bl GXSetViewport
/* 814E4100 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814E4104 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 814E4108 | 80 A1 00 18 */	lwz r5, 0x18(r1)
/* 814E410C | 80 C1 00 14 */	lwz r6, 0x14(r1)
/* 814E4110 | 48 06 3E 99 */	bl GXSetScissor
/* 814E4114 | 80 A1 00 58 */	lwz r5, 0x58(r1)
/* 814E4118 | 3C C0 81 67 */	lis r6, coordinateData@ha
/* 814E411C | 80 81 00 5C */	lwz r4, 0x5c(r1)
/* 814E4120 | 94 A6 EA 90 */	stwu r5, coordinateData@l(r6)
/* 814E4124 | 80 61 00 60 */	lwz r3, 0x60(r1)
/* 814E4128 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814E412C | 90 86 00 04 */	stw r4, 0x4(r6)
/* 814E4130 | 90 66 00 08 */	stw r3, 0x8(r6)
/* 814E4134 | 90 06 00 0C */	stw r0, 0xc(r6)
/* 814E4138 | E3 E1 02 18 */	psq_l f31, 0x218(r1), 0, qr0
/* 814E413C | CB E1 02 10 */	lfd f31, 0x210(r1)
/* 814E4140 | 39 61 02 10 */	addi r11, r1, 0x210
/* 814E4144 | 48 11 53 BD */	bl _restgpr_24
/* 814E4148 | 80 01 02 24 */	lwz r0, 0x224(r1)
/* 814E414C | 7C 08 03 A6 */	mtlr r0
/* 814E4150 | 38 21 02 20 */	addi r1, r1, 0x220
/* 814E4154 | 4E 80 00 20 */	blr
.endfn RFLiMakeIcon

# 0x8161D418..0x8161D458 | size: 0x40
.rodata
.balign 8

# .rodata:0x0 | 0x8161D418 | size: 0x10
.obj lbl_8161D418, local
	.4byte 0x01020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8161D418

# .rodata:0x10 | 0x8161D428 | size: 0xC
.obj lbl_8161D428, local
	.4byte 0x00000000
	.4byte 0x420A0000
	.4byte 0x44160000
.endobj lbl_8161D428

# .rodata:0x1C | 0x8161D434 | size: 0xC
.obj lbl_8161D434, local
	.4byte 0x00000000
	.4byte 0x420A0000
	.4byte 0x00000000
.endobj lbl_8161D434

# .rodata:0x28 | 0x8161D440 | size: 0xC
.obj lbl_8161D440, local
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj lbl_8161D440

# .rodata:0x34 | 0x8161D44C | size: 0xC
.obj lbl_8161D44C, local
	.4byte 0x44C80000
	.4byte 0x44BB8000
	.4byte 0x45BB8000
.endobj lbl_8161D44C

# 0x81695170..0x816951B0 | size: 0x40
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695170 | size: 0x1
.obj lbl_81695170, global
	.byte 0xFF
.endobj lbl_81695170

# .sdata2:0x1 | 0x81695171 | size: 0x1
.obj lbl_81695171, global
	.byte 0xFF
.endobj lbl_81695171

# .sdata2:0x2 | 0x81695172 | size: 0x1
.obj lbl_81695172, global
	.byte 0xFF
.endobj lbl_81695172

# .sdata2:0x3 | 0x81695173 | size: 0x1
.obj lbl_81695173, global
	.byte 0xFF
.endobj lbl_81695173

# .sdata2:0x4 | 0x81695174 | size: 0x1
.obj lbl_81695174, global
	.byte 0xA0
.endobj lbl_81695174

# .sdata2:0x5 | 0x81695175 | size: 0x1
.obj lbl_81695175, global
	.byte 0xA0
.endobj lbl_81695175

# .sdata2:0x6 | 0x81695176 | size: 0x1
.obj lbl_81695176, global
	.byte 0xA0
.endobj lbl_81695176

# .sdata2:0x7 | 0x81695177 | size: 0x1
.obj lbl_81695177, global
	.byte 0xFF
.endobj lbl_81695177

# .sdata2:0x8 | 0x81695178 | size: 0x4
.obj lbl_81695178, global
	.float 0
.endobj lbl_81695178

# .sdata2:0xC | 0x8169517C | size: 0x4
.obj lbl_8169517C, global
	.float 1
.endobj lbl_8169517C

# .sdata2:0x10 | 0x81695180 | size: 0x4
.obj lbl_81695180, global
	.float 43.2
.endobj lbl_81695180

# .sdata2:0x14 | 0x81695184 | size: 0x4
.obj gap_09_81695184_sdata2, global
.hidden gap_09_81695184_sdata2
	.4byte 0x00000000
.endobj gap_09_81695184_sdata2

# .sdata2:0x18 | 0x81695188 | size: 0x8
.obj lbl_81695188, global
	.double 500
.endobj lbl_81695188

# .sdata2:0x20 | 0x81695190 | size: 0x4
.obj lbl_81695190, global
	.float 2
.endobj lbl_81695190

# .sdata2:0x24 | 0x81695194 | size: 0x4
.obj lbl_81695194, global
	.float 57.29578
.endobj lbl_81695194

# .sdata2:0x28 | 0x81695198 | size: 0x8
.obj lbl_81695198, global
	.double 43.20000076293945
.endobj lbl_81695198

# .sdata2:0x30 | 0x816951A0 | size: 0x4
.obj lbl_816951A0, global
	.float 500
.endobj lbl_816951A0

# .sdata2:0x34 | 0x816951A4 | size: 0x4
.obj lbl_816951A4, global
	.float 700
.endobj lbl_816951A4

# .sdata2:0x38 | 0x816951A8 | size: 0x8
.obj lbl_816951A8, global
	.double 4503599627370496
.endobj lbl_816951A8
