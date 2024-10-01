.include "macros.inc"
.file "NWC24MBoxCtrl.c"

# 0x814A1AC0..0x814A35D0 | size: 0x1B10
.text
.balign 4

# .text:0x0 | 0x814A1AC0 | size: 0x84
.fn NWC24GetNumMsgs, global
/* 814A1AC0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A1AC4 | 7C 08 02 A6 */	mflr r0
/* 814A1AC8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A1ACC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A1AD0 | 7C 9F 23 78 */	mr r31, r4
/* 814A1AD4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A1AD8 | 7C 7E 1B 78 */	mr r30, r3
/* 814A1ADC | 4B FF E8 1D */	bl NWC24IsMsgLibOpened
/* 814A1AE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1AE4 | 40 82 00 18 */	bne .L_814A1AFC
/* 814A1AE8 | 4B FF E8 25 */	bl NWC24IsMsgLibOpenedByTool
/* 814A1AEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1AF0 | 40 82 00 0C */	bne .L_814A1AFC
/* 814A1AF4 | 38 60 FF F7 */	li r3, -0x9
/* 814A1AF8 | 48 00 00 34 */	b .L_814A1B2C
.L_814A1AFC:
/* 814A1AFC | 7F C3 F3 78 */	mr r3, r30
/* 814A1B00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A1B04 | 48 00 1E 45 */	bl GetCachedMBCHeader_814A3948
/* 814A1B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1B0C | 41 82 00 10 */	beq .L_814A1B1C
/* 814A1B10 | 38 00 00 00 */	li r0, 0x0
/* 814A1B14 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814A1B18 | 48 00 00 14 */	b .L_814A1B2C
.L_814A1B1C:
/* 814A1B1C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A1B20 | 38 60 00 00 */	li r3, 0x0
/* 814A1B24 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814A1B28 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814A1B2C:
/* 814A1B2C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A1B30 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A1B34 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A1B38 | 7C 08 03 A6 */	mtlr r0
/* 814A1B3C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A1B40 | 4E 80 00 20 */	blr
.endfn NWC24GetNumMsgs

# .text:0x84 | 0x814A1B44 | size: 0x284
.fn NWC24GetMsgObj, global
/* 814A1B44 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 814A1B48 | 7C 08 02 A6 */	mflr r0
/* 814A1B4C | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 814A1B50 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 814A1B54 | 48 15 79 65 */	bl _savegpr_25
/* 814A1B58 | 7C 7F 1B 78 */	mr r31, r3
/* 814A1B5C | 7C 99 23 78 */	mr r25, r4
/* 814A1B60 | 7C BA 2B 78 */	mr r26, r5
/* 814A1B64 | 3B 60 00 00 */	li r27, 0x0
/* 814A1B68 | 4B FF E7 91 */	bl NWC24IsMsgLibOpened
/* 814A1B6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1B70 | 40 82 00 18 */	bne .L_814A1B88
/* 814A1B74 | 4B FF E7 99 */	bl NWC24IsMsgLibOpenedByTool
/* 814A1B78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1B7C | 40 82 00 0C */	bne .L_814A1B88
/* 814A1B80 | 38 60 FF F7 */	li r3, -0x9
/* 814A1B84 | 48 00 02 2C */	b .L_814A1DB0
.L_814A1B88:
/* 814A1B88 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A1B8C | 38 80 00 00 */	li r4, 0x0
/* 814A1B90 | 38 A0 00 80 */	li r5, 0x80
/* 814A1B94 | 3B 83 18 00 */	addi r28, r3, 0x1800
/* 814A1B98 | 7F 83 E3 78 */	mr r3, r28
/* 814A1B9C | 4B E8 E7 99 */	bl memset
/* 814A1BA0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814A1BA4 | 40 82 00 0C */	bne .L_814A1BB0
/* 814A1BA8 | 38 60 FF E4 */	li r3, -0x1c
/* 814A1BAC | 48 00 02 04 */	b .L_814A1DB0
.L_814A1BB0:
/* 814A1BB0 | 7F 23 CB 78 */	mr r3, r25
/* 814A1BB4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A1BB8 | 48 00 1D 91 */	bl GetCachedMBCHeader_814A3948
/* 814A1BBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1BC0 | 41 82 00 08 */	beq .L_814A1BC8
/* 814A1BC4 | 48 00 01 EC */	b .L_814A1DB0
.L_814A1BC8:
/* 814A1BC8 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A1BCC | 3B A3 08 00 */	addi r29, r3, 0x800
/* 814A1BD0 | 4B FF DE 01 */	bl NWC24GetMBoxDir
/* 814A1BD4 | 7C 7E 1B 78 */	mr r30, r3
/* 814A1BD8 | 38 80 00 40 */	li r4, 0x40
/* 814A1BDC | 4B FF B1 C5 */	bl STD_strnlen
/* 814A1BE0 | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A1BE4 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A1BE8 | 40 81 00 0C */	ble .L_814A1BF4
/* 814A1BEC | 38 60 FF F5 */	li r3, -0xb
/* 814A1BF0 | 48 00 00 68 */	b .L_814A1C58
.L_814A1BF4:
/* 814A1BF4 | 2C 19 00 01 */	cmpwi r25, 0x1
/* 814A1BF8 | 41 82 00 34 */	beq .L_814A1C2C
/* 814A1BFC | 40 80 00 50 */	bge .L_814A1C4C
/* 814A1C00 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814A1C04 | 40 80 00 08 */	bge .L_814A1C0C
/* 814A1C08 | 48 00 00 44 */	b .L_814A1C4C
.L_814A1C0C:
/* 814A1C0C | 3C C0 81 67 */	lis r6, lbl_8166D920@ha
/* 814A1C10 | 7F A3 EB 78 */	mr r3, r29
/* 814A1C14 | 7F C5 F3 78 */	mr r5, r30
/* 814A1C18 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A1C1C | 38 C6 D9 20 */	addi r6, r6, lbl_8166D920@l
/* 814A1C20 | 4C C6 31 82 */	crclr cr1eq
/* 814A1C24 | 4B FF BA 2D */	bl Mail_sprintf
/* 814A1C28 | 48 00 00 2C */	b .L_814A1C54
.L_814A1C2C:
/* 814A1C2C | 3C C0 81 67 */	lis r6, lbl_8166D930@ha
/* 814A1C30 | 7F A3 EB 78 */	mr r3, r29
/* 814A1C34 | 7F C5 F3 78 */	mr r5, r30
/* 814A1C38 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A1C3C | 38 C6 D9 30 */	addi r6, r6, lbl_8166D930@l
/* 814A1C40 | 4C C6 31 82 */	crclr cr1eq
/* 814A1C44 | 4B FF BA 0D */	bl Mail_sprintf
/* 814A1C48 | 48 00 00 0C */	b .L_814A1C54
.L_814A1C4C:
/* 814A1C4C | 38 60 FF FD */	li r3, -0x3
/* 814A1C50 | 48 00 00 08 */	b .L_814A1C58
.L_814A1C54:
/* 814A1C54 | 38 60 00 00 */	li r3, 0x0
.L_814A1C58:
/* 814A1C58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1C5C | 41 82 00 08 */	beq .L_814A1C64
/* 814A1C60 | 48 00 01 50 */	b .L_814A1DB0
.L_814A1C64:
/* 814A1C64 | 7F A4 EB 78 */	mr r4, r29
/* 814A1C68 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A1C6C | 38 A0 00 04 */	li r5, 0x4
/* 814A1C70 | 4B FF BF 99 */	bl NWC24FOpen
/* 814A1C74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1C78 | 41 82 00 08 */	beq .L_814A1C80
/* 814A1C7C | 48 00 01 34 */	b .L_814A1DB0
.L_814A1C80:
/* 814A1C80 | 3B A0 FF F3 */	li r29, -0xd
/* 814A1C84 | 3B C0 00 80 */	li r30, 0x80
/* 814A1C88 | 48 00 00 90 */	b .L_814A1D18
.L_814A1C8C:
/* 814A1C8C | 7F C4 F3 78 */	mr r4, r30
/* 814A1C90 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A1C94 | 38 A0 00 00 */	li r5, 0x0
/* 814A1C98 | 4B FF C4 5D */	bl NWC24FSeek
/* 814A1C9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1CA0 | 41 82 00 0C */	beq .L_814A1CAC
/* 814A1CA4 | 7C 7D 1B 78 */	mr r29, r3
/* 814A1CA8 | 48 00 00 80 */	b .L_814A1D28
.L_814A1CAC:
/* 814A1CAC | 7F 83 E3 78 */	mr r3, r28
/* 814A1CB0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A1CB4 | 38 80 00 80 */	li r4, 0x80
/* 814A1CB8 | 4B FF C6 2D */	bl NWC24FRead
/* 814A1CBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1CC0 | 41 82 00 0C */	beq .L_814A1CCC
/* 814A1CC4 | 7C 7D 1B 78 */	mr r29, r3
/* 814A1CC8 | 48 00 00 60 */	b .L_814A1D28
.L_814A1CCC:
/* 814A1CCC | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814A1CD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A1CD4 | 41 82 00 40 */	beq .L_814A1D14
/* 814A1CD8 | 7C 00 D0 40 */	cmplw r0, r26
/* 814A1CDC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814A1CE0 | 40 82 00 34 */	bne .L_814A1D14
/* 814A1CE4 | 3B A0 FF E4 */	li r29, -0x1c
/* 814A1CE8 | 4B FF E6 25 */	bl NWC24IsMsgLibOpenedByTool
/* 814A1CEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1CF0 | 41 82 00 0C */	beq .L_814A1CFC
/* 814A1CF4 | 3B A0 00 00 */	li r29, 0x0
/* 814A1CF8 | 48 00 00 30 */	b .L_814A1D28
.L_814A1CFC:
/* 814A1CFC | 7F 83 E3 78 */	mr r3, r28
/* 814A1D00 | 48 00 00 C9 */	bl NWC24iIsMsgObjReadable
/* 814A1D04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1D08 | 41 82 00 20 */	beq .L_814A1D28
/* 814A1D0C | 3B A0 00 00 */	li r29, 0x0
/* 814A1D10 | 48 00 00 18 */	b .L_814A1D28
.L_814A1D14:
/* 814A1D14 | 3B DE 00 80 */	addi r30, r30, 0x80
.L_814A1D18:
/* 814A1D18 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A1D1C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814A1D20 | 7C 1E 00 40 */	cmplw r30, r0
/* 814A1D24 | 41 80 FF 68 */	blt .L_814A1C8C
.L_814A1D28:
/* 814A1D28 | 2C 1D FF F3 */	cmpwi r29, -0xd
/* 814A1D2C | 40 82 00 44 */	bne .L_814A1D70
/* 814A1D30 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A1D34 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814A1D38 | 7C 00 D8 40 */	cmplw r0, r27
/* 814A1D3C | 41 82 00 34 */	beq .L_814A1D70
/* 814A1D40 | 93 63 00 08 */	stw r27, 0x8(r3)
/* 814A1D44 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A1D48 | 38 80 00 00 */	li r4, 0x0
/* 814A1D4C | 38 A0 00 00 */	li r5, 0x0
/* 814A1D50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814A1D54 | 4B FF C3 A1 */	bl NWC24FSeek
/* 814A1D58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1D5C | 40 82 00 14 */	bne .L_814A1D70
/* 814A1D60 | 7F C3 F3 78 */	mr r3, r30
/* 814A1D64 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A1D68 | 38 80 00 80 */	li r4, 0x80
/* 814A1D6C | 4B FF C7 49 */	bl NWC24FWrite
.L_814A1D70:
/* 814A1D70 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A1D74 | 4B FF C1 E9 */	bl NWC24FClose
/* 814A1D78 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A1D7C | 41 82 00 18 */	beq .L_814A1D94
/* 814A1D80 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814A1D84 | 40 82 00 08 */	bne .L_814A1D8C
/* 814A1D88 | 3B A0 FF FD */	li r29, -0x3
.L_814A1D8C:
/* 814A1D8C | 7F A3 EB 78 */	mr r3, r29
/* 814A1D90 | 48 00 00 20 */	b .L_814A1DB0
.L_814A1D94:
/* 814A1D94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1D98 | 41 82 00 08 */	beq .L_814A1DA0
/* 814A1D9C | 48 00 00 14 */	b .L_814A1DB0
.L_814A1DA0:
/* 814A1DA0 | 7F 83 E3 78 */	mr r3, r28
/* 814A1DA4 | 7F E4 FB 78 */	mr r4, r31
/* 814A1DA8 | 48 00 24 65 */	bl CopyMsgObjToPrvFmt_814A420C
/* 814A1DAC | 7F A3 EB 78 */	mr r3, r29
.L_814A1DB0:
/* 814A1DB0 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 814A1DB4 | 48 15 77 51 */	bl _restgpr_25
/* 814A1DB8 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 814A1DBC | 7C 08 03 A6 */	mtlr r0
/* 814A1DC0 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 814A1DC4 | 4E 80 00 20 */	blr
.endfn NWC24GetMsgObj

# .text:0x308 | 0x814A1DC8 | size: 0xE4
.fn NWC24iIsMsgObjReadable, global
/* 814A1DC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A1DCC | 7C 08 02 A6 */	mflr r0
/* 814A1DD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A1DD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A1DD8 | 7C 7F 1B 78 */	mr r31, r3
/* 814A1DDC | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814A1DE0 | 54 80 02 95 */	rlwinm. r0, r4, 0, 10, 10
/* 814A1DE4 | 40 82 00 0C */	bne .L_814A1DF0
/* 814A1DE8 | 38 60 00 00 */	li r3, 0x0
/* 814A1DEC | 48 00 00 AC */	b .L_814A1E98
.L_814A1DF0:
/* 814A1DF0 | 54 80 00 0D */	clrrwi. r0, r4, 25
/* 814A1DF4 | 41 82 00 0C */	beq .L_814A1E00
/* 814A1DF8 | 38 60 00 00 */	li r3, 0x0
/* 814A1DFC | 48 00 00 9C */	b .L_814A1E98
.L_814A1E00:
/* 814A1E00 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814A1E04 | 54 00 00 19 */	clrrwi. r0, r0, 19
/* 814A1E08 | 41 82 00 0C */	beq .L_814A1E14
/* 814A1E0C | 38 60 00 00 */	li r3, 0x0
/* 814A1E10 | 48 00 00 88 */	b .L_814A1E98
.L_814A1E14:
/* 814A1E14 | 54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 814A1E18 | 41 82 00 38 */	beq .L_814A1E50
/* 814A1E1C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814A1E20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A1E24 | 40 82 00 0C */	bne .L_814A1E30
/* 814A1E28 | 38 60 00 01 */	li r3, 0x1
/* 814A1E2C | 48 00 00 6C */	b .L_814A1E98
.L_814A1E30:
/* 814A1E30 | 4B FF DC 11 */	bl NWC24GetAppId
/* 814A1E34 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814A1E38 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814A1E3C | 54 00 00 2E */	clrrwi r0, r0, 8
/* 814A1E40 | 7C 00 18 50 */	subf r0, r0, r3
/* 814A1E44 | 7C 00 00 34 */	cntlzw r0, r0
/* 814A1E48 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814A1E4C | 48 00 00 4C */	b .L_814A1E98
.L_814A1E50:
/* 814A1E50 | 4B FF DB F1 */	bl NWC24GetAppId
/* 814A1E54 | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 814A1E58 | 28 00 45 41 */	cmplwi r0, 0x4541
/* 814A1E5C | 40 82 00 0C */	bne .L_814A1E68
/* 814A1E60 | 38 60 00 01 */	li r3, 0x1
/* 814A1E64 | 48 00 00 34 */	b .L_814A1E98
.L_814A1E68:
/* 814A1E68 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A1E6C | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814A1E70 | 41 82 00 0C */	beq .L_814A1E7C
/* 814A1E74 | 38 60 00 01 */	li r3, 0x1
/* 814A1E78 | 48 00 00 20 */	b .L_814A1E98
.L_814A1E7C:
/* 814A1E7C | 4B FF DB C5 */	bl NWC24GetAppId
/* 814A1E80 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814A1E84 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814A1E88 | 54 00 00 2E */	clrrwi r0, r0, 8
/* 814A1E8C | 7C 00 18 50 */	subf r0, r0, r3
/* 814A1E90 | 7C 00 00 34 */	cntlzw r0, r0
/* 814A1E94 | 54 03 D9 7E */	srwi r3, r0, 5
.L_814A1E98:
/* 814A1E98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A1E9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A1EA0 | 7C 08 03 A6 */	mtlr r0
/* 814A1EA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A1EA8 | 4E 80 00 20 */	blr
.endfn NWC24iIsMsgObjReadable

# .text:0x3EC | 0x814A1EAC | size: 0x264
.fn NWC24GetMsgIdList, global
/* 814A1EAC | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 814A1EB0 | 7C 08 02 A6 */	mflr r0
/* 814A1EB4 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 814A1EB8 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 814A1EBC | 48 15 75 F9 */	bl _savegpr_24
/* 814A1EC0 | 7C 78 1B 78 */	mr r24, r3
/* 814A1EC4 | 7C 9D 23 78 */	mr r29, r4
/* 814A1EC8 | 7C BE 2B 78 */	mr r30, r5
/* 814A1ECC | 4B FF E4 2D */	bl NWC24IsMsgLibOpened
/* 814A1ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1ED4 | 40 82 00 18 */	bne .L_814A1EEC
/* 814A1ED8 | 4B FF E4 35 */	bl NWC24IsMsgLibOpenedByTool
/* 814A1EDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1EE0 | 40 82 00 0C */	bne .L_814A1EEC
/* 814A1EE4 | 38 60 FF F7 */	li r3, -0x9
/* 814A1EE8 | 48 00 02 10 */	b .L_814A20F8
.L_814A1EEC:
/* 814A1EEC | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814A1EF0 | 7F 03 C3 78 */	mr r3, r24
/* 814A1EF4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A1EF8 | 3B E5 18 00 */	addi r31, r5, 0x1800
/* 814A1EFC | 48 00 1A 4D */	bl GetCachedMBCHeader_814A3948
/* 814A1F00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1F04 | 41 82 00 08 */	beq .L_814A1F0C
/* 814A1F08 | 48 00 01 F0 */	b .L_814A20F8
.L_814A1F0C:
/* 814A1F0C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A1F10 | 3B 43 08 00 */	addi r26, r3, 0x800
/* 814A1F14 | 4B FF DA BD */	bl NWC24GetMBoxDir
/* 814A1F18 | 7C 7C 1B 78 */	mr r28, r3
/* 814A1F1C | 38 80 00 40 */	li r4, 0x40
/* 814A1F20 | 4B FF AE 81 */	bl STD_strnlen
/* 814A1F24 | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A1F28 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A1F2C | 40 81 00 0C */	ble .L_814A1F38
/* 814A1F30 | 38 60 FF F5 */	li r3, -0xb
/* 814A1F34 | 48 00 00 68 */	b .L_814A1F9C
.L_814A1F38:
/* 814A1F38 | 2C 18 00 01 */	cmpwi r24, 0x1
/* 814A1F3C | 41 82 00 34 */	beq .L_814A1F70
/* 814A1F40 | 40 80 00 50 */	bge .L_814A1F90
/* 814A1F44 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814A1F48 | 40 80 00 08 */	bge .L_814A1F50
/* 814A1F4C | 48 00 00 44 */	b .L_814A1F90
.L_814A1F50:
/* 814A1F50 | 3C C0 81 67 */	lis r6, lbl_8166D920@ha
/* 814A1F54 | 7F 43 D3 78 */	mr r3, r26
/* 814A1F58 | 7F 85 E3 78 */	mr r5, r28
/* 814A1F5C | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A1F60 | 38 C6 D9 20 */	addi r6, r6, lbl_8166D920@l
/* 814A1F64 | 4C C6 31 82 */	crclr cr1eq
/* 814A1F68 | 4B FF B6 E9 */	bl Mail_sprintf
/* 814A1F6C | 48 00 00 2C */	b .L_814A1F98
.L_814A1F70:
/* 814A1F70 | 3C C0 81 67 */	lis r6, lbl_8166D930@ha
/* 814A1F74 | 7F 43 D3 78 */	mr r3, r26
/* 814A1F78 | 7F 85 E3 78 */	mr r5, r28
/* 814A1F7C | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A1F80 | 38 C6 D9 30 */	addi r6, r6, lbl_8166D930@l
/* 814A1F84 | 4C C6 31 82 */	crclr cr1eq
/* 814A1F88 | 4B FF B6 C9 */	bl Mail_sprintf
/* 814A1F8C | 48 00 00 0C */	b .L_814A1F98
.L_814A1F90:
/* 814A1F90 | 38 60 FF FD */	li r3, -0x3
/* 814A1F94 | 48 00 00 08 */	b .L_814A1F9C
.L_814A1F98:
/* 814A1F98 | 38 60 00 00 */	li r3, 0x0
.L_814A1F9C:
/* 814A1F9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1FA0 | 41 82 00 08 */	beq .L_814A1FA8
/* 814A1FA4 | 48 00 01 54 */	b .L_814A20F8
.L_814A1FA8:
/* 814A1FA8 | 7F 44 D3 78 */	mr r4, r26
/* 814A1FAC | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A1FB0 | 38 A0 00 02 */	li r5, 0x2
/* 814A1FB4 | 4B FF BC 55 */	bl NWC24FOpen
/* 814A1FB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1FBC | 7C 7A 1B 78 */	mr r26, r3
/* 814A1FC0 | 41 82 00 08 */	beq .L_814A1FC8
/* 814A1FC4 | 48 00 01 34 */	b .L_814A20F8
.L_814A1FC8:
/* 814A1FC8 | 7F BB EB 78 */	mr r27, r29
/* 814A1FCC | 3B 00 00 00 */	li r24, 0x0
/* 814A1FD0 | 3B 20 00 80 */	li r25, 0x80
/* 814A1FD4 | 3F 80 00 0F */	lis r28, 0xf
/* 814A1FD8 | 48 00 00 94 */	b .L_814A206C
.L_814A1FDC:
/* 814A1FDC | 7F 24 CB 78 */	mr r4, r25
/* 814A1FE0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A1FE4 | 38 A0 00 00 */	li r5, 0x0
/* 814A1FE8 | 4B FF C1 0D */	bl NWC24FSeek
/* 814A1FEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A1FF0 | 41 82 00 0C */	beq .L_814A1FFC
/* 814A1FF4 | 7C 7A 1B 78 */	mr r26, r3
/* 814A1FF8 | 48 00 00 84 */	b .L_814A207C
.L_814A1FFC:
/* 814A1FFC | 7F E3 FB 78 */	mr r3, r31
/* 814A2000 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A2004 | 38 80 00 40 */	li r4, 0x40
/* 814A2008 | 4B FF C2 DD */	bl NWC24FRead
/* 814A200C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2010 | 41 82 00 0C */	beq .L_814A201C
/* 814A2014 | 7C 7A 1B 78 */	mr r26, r3
/* 814A2018 | 48 00 00 64 */	b .L_814A207C
.L_814A201C:
/* 814A201C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814A2020 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2024 | 41 82 00 44 */	beq .L_814A2068
/* 814A2028 | 38 1C 42 40 */	addi r0, r28, 0x4240
/* 814A202C | 7C 03 00 40 */	cmplw r3, r0
/* 814A2030 | 41 81 00 38 */	bgt .L_814A2068
/* 814A2034 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 814A2038 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814A203C | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 814A2040 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A2044 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814A2048 | 7C 18 00 40 */	cmplw r24, r0
/* 814A204C | 40 82 00 0C */	bne .L_814A2058
/* 814A2050 | 3B 40 00 00 */	li r26, 0x0
/* 814A2054 | 48 00 00 28 */	b .L_814A207C
.L_814A2058:
/* 814A2058 | 7C 18 F0 40 */	cmplw r24, r30
/* 814A205C | 41 80 00 0C */	blt .L_814A2068
/* 814A2060 | 3B 40 FF FA */	li r26, -0x6
/* 814A2064 | 48 00 00 18 */	b .L_814A207C
.L_814A2068:
/* 814A2068 | 3B 39 00 80 */	addi r25, r25, 0x80
.L_814A206C:
/* 814A206C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A2070 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814A2074 | 7C 19 00 40 */	cmplw r25, r0
/* 814A2078 | 41 80 FF 64 */	blt .L_814A1FDC
.L_814A207C:
/* 814A207C | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A2080 | 4B FF BE DD */	bl NWC24FClose
/* 814A2084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2088 | 41 82 00 08 */	beq .L_814A2090
/* 814A208C | 7C 7A 1B 78 */	mr r26, r3
.L_814A2090:
/* 814A2090 | 7C 18 F0 40 */	cmplw r24, r30
/* 814A2094 | 57 00 10 3A */	slwi r0, r24, 2
/* 814A2098 | 7C BD 02 14 */	add r5, r29, r0
/* 814A209C | 7C 78 F0 50 */	subf r3, r24, r30
/* 814A20A0 | 38 80 00 00 */	li r4, 0x0
/* 814A20A4 | 40 80 00 50 */	bge .L_814A20F4
/* 814A20A8 | 54 60 E8 FF */	srwi. r0, r3, 3
/* 814A20AC | 7C 09 03 A6 */	mtctr r0
/* 814A20B0 | 41 82 00 34 */	beq .L_814A20E4
.L_814A20B4:
/* 814A20B4 | 90 85 00 00 */	stw r4, 0x0(r5)
/* 814A20B8 | 90 85 00 04 */	stw r4, 0x4(r5)
/* 814A20BC | 90 85 00 08 */	stw r4, 0x8(r5)
/* 814A20C0 | 90 85 00 0C */	stw r4, 0xc(r5)
/* 814A20C4 | 90 85 00 10 */	stw r4, 0x10(r5)
/* 814A20C8 | 90 85 00 14 */	stw r4, 0x14(r5)
/* 814A20CC | 90 85 00 18 */	stw r4, 0x18(r5)
/* 814A20D0 | 90 85 00 1C */	stw r4, 0x1c(r5)
/* 814A20D4 | 38 A5 00 20 */	addi r5, r5, 0x20
/* 814A20D8 | 42 00 FF DC */	bdnz .L_814A20B4
/* 814A20DC | 70 63 00 07 */	andi. r3, r3, 0x7
/* 814A20E0 | 41 82 00 14 */	beq .L_814A20F4
.L_814A20E4:
/* 814A20E4 | 7C 69 03 A6 */	mtctr r3
.L_814A20E8:
/* 814A20E8 | 90 85 00 00 */	stw r4, 0x0(r5)
/* 814A20EC | 38 A5 00 04 */	addi r5, r5, 0x4
/* 814A20F0 | 42 00 FF F8 */	bdnz .L_814A20E8
.L_814A20F4:
/* 814A20F4 | 7F 43 D3 78 */	mr r3, r26
.L_814A20F8:
/* 814A20F8 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 814A20FC | 48 15 74 05 */	bl _restgpr_24
/* 814A2100 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 814A2104 | 7C 08 03 A6 */	mtlr r0
/* 814A2108 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 814A210C | 4E 80 00 20 */	blr
.endfn NWC24GetMsgIdList

# .text:0x650 | 0x814A2110 | size: 0x60
.fn NWC24DeleteMsg, global
/* 814A2110 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A2114 | 7C 08 02 A6 */	mflr r0
/* 814A2118 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A211C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A2120 | 3B E0 00 01 */	li r31, 0x1
/* 814A2124 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A2128 | 7C 9E 23 78 */	mr r30, r4
/* 814A212C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A2130 | 7C 7D 1B 78 */	mr r29, r3
/* 814A2134 | 4B FF E1 D9 */	bl NWC24IsMsgLibOpenedByTool
/* 814A2138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A213C | 41 82 00 08 */	beq .L_814A2144
/* 814A2140 | 3B E0 00 00 */	li r31, 0x0
.L_814A2144:
/* 814A2144 | 7F A3 EB 78 */	mr r3, r29
/* 814A2148 | 7F C4 F3 78 */	mr r4, r30
/* 814A214C | 7F E5 FB 78 */	mr r5, r31
/* 814A2150 | 48 00 0F E1 */	bl DeleteMsg
/* 814A2154 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A2158 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A215C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A2160 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A2164 | 7C 08 03 A6 */	mtlr r0
/* 814A2168 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A216C | 4E 80 00 20 */	blr
.endfn NWC24DeleteMsg

# .text:0x6B0 | 0x814A2170 | size: 0x194
.fn NWC24iOpenMBox, global
/* 814A2170 | 94 21 FE B0 */	stwu r1, -0x150(r1)
/* 814A2174 | 7C 08 02 A6 */	mflr r0
/* 814A2178 | 38 80 00 00 */	li r4, 0x0
/* 814A217C | 38 A0 00 80 */	li r5, 0x80
/* 814A2180 | 90 01 01 54 */	stw r0, 0x154(r1)
/* 814A2184 | 93 E1 01 4C */	stw r31, 0x14c(r1)
/* 814A2188 | 93 C1 01 48 */	stw r30, 0x148(r1)
/* 814A218C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A2190 | 3B C3 08 00 */	addi r30, r3, 0x800
/* 814A2194 | 38 63 17 00 */	addi r3, r3, 0x1700
/* 814A2198 | 4B FF AC ED */	bl Mail_memset
/* 814A219C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A21A0 | 38 60 00 00 */	li r3, 0x0
/* 814A21A4 | 48 00 17 A5 */	bl GetCachedMBCHeader_814A3948
/* 814A21A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A21AC | 41 82 00 08 */	beq .L_814A21B4
/* 814A21B0 | 48 00 01 3C */	b .L_814A22EC
.L_814A21B4:
/* 814A21B4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A21B8 | 38 80 00 00 */	li r4, 0x0
/* 814A21BC | 38 A0 00 80 */	li r5, 0x80
/* 814A21C0 | 38 63 17 80 */	addi r3, r3, 0x1780
/* 814A21C4 | 4B FF AC C1 */	bl Mail_memset
/* 814A21C8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A21CC | 38 60 00 01 */	li r3, 0x1
/* 814A21D0 | 48 00 17 79 */	bl GetCachedMBCHeader_814A3948
/* 814A21D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A21D8 | 41 82 00 08 */	beq .L_814A21E0
/* 814A21DC | 48 00 01 10 */	b .L_814A22EC
.L_814A21E0:
/* 814A21E0 | 4B FF D7 F1 */	bl NWC24GetMBoxDir
/* 814A21E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814A21E8 | 38 80 00 40 */	li r4, 0x40
/* 814A21EC | 4B FF AB B5 */	bl STD_strnlen
/* 814A21F0 | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A21F4 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A21F8 | 40 81 00 0C */	ble .L_814A2204
/* 814A21FC | 38 60 FF F5 */	li r3, -0xb
/* 814A2200 | 48 00 00 24 */	b .L_814A2224
.L_814A2204:
/* 814A2204 | 3C C0 81 67 */	lis r6, lbl_8166D940@ha
/* 814A2208 | 7F C3 F3 78 */	mr r3, r30
/* 814A220C | 7F E5 FB 78 */	mr r5, r31
/* 814A2210 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A2214 | 38 C6 D9 40 */	addi r6, r6, lbl_8166D940@l
/* 814A2218 | 4C C6 31 82 */	crclr cr1eq
/* 814A221C | 4B FF B4 35 */	bl Mail_sprintf
/* 814A2220 | 38 60 00 00 */	li r3, 0x0
.L_814A2224:
/* 814A2224 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2228 | 41 82 00 08 */	beq .L_814A2230
/* 814A222C | 48 00 00 C0 */	b .L_814A22EC
.L_814A2230:
/* 814A2230 | 7F C4 F3 78 */	mr r4, r30
/* 814A2234 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 814A2238 | 38 A0 00 02 */	li r5, 0x2
/* 814A223C | 4B FF B9 CD */	bl NWC24FOpen
/* 814A2240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2244 | 40 82 00 0C */	bne .L_814A2250
/* 814A2248 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 814A224C | 4B FF BD 11 */	bl NWC24FClose
.L_814A2250:
/* 814A2250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2254 | 41 82 00 08 */	beq .L_814A225C
/* 814A2258 | 48 00 00 94 */	b .L_814A22EC
.L_814A225C:
/* 814A225C | 4B FF D7 75 */	bl NWC24GetMBoxDir
/* 814A2260 | 7C 7F 1B 78 */	mr r31, r3
/* 814A2264 | 38 80 00 40 */	li r4, 0x40
/* 814A2268 | 4B FF AB 39 */	bl STD_strnlen
/* 814A226C | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A2270 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A2274 | 40 81 00 0C */	ble .L_814A2280
/* 814A2278 | 38 60 FF F5 */	li r3, -0xb
/* 814A227C | 48 00 00 24 */	b .L_814A22A0
.L_814A2280:
/* 814A2280 | 3C C0 81 67 */	lis r6, lbl_8166D950@ha
/* 814A2284 | 7F C3 F3 78 */	mr r3, r30
/* 814A2288 | 7F E5 FB 78 */	mr r5, r31
/* 814A228C | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A2290 | 38 C6 D9 50 */	addi r6, r6, lbl_8166D950@l
/* 814A2294 | 4C C6 31 82 */	crclr cr1eq
/* 814A2298 | 4B FF B3 B9 */	bl Mail_sprintf
/* 814A229C | 38 60 00 00 */	li r3, 0x0
.L_814A22A0:
/* 814A22A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A22A4 | 41 82 00 08 */	beq .L_814A22AC
/* 814A22A8 | 48 00 00 44 */	b .L_814A22EC
.L_814A22AC:
/* 814A22AC | 7F C4 F3 78 */	mr r4, r30
/* 814A22B0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A22B4 | 38 A0 00 02 */	li r5, 0x2
/* 814A22B8 | 4B FF B9 51 */	bl NWC24FOpen
/* 814A22BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A22C0 | 40 82 00 0C */	bne .L_814A22CC
/* 814A22C4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A22C8 | 4B FF BC 95 */	bl NWC24FClose
.L_814A22CC:
/* 814A22CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A22D0 | 41 82 00 08 */	beq .L_814A22D8
/* 814A22D4 | 48 00 00 18 */	b .L_814A22EC
.L_814A22D8:
/* 814A22D8 | 38 00 00 00 */	li r0, 0x0
/* 814A22DC | 38 8D AD B8 */	li r4, MountInfo_81698DF8@sda21
/* 814A22E0 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A22E4 | 38 60 00 00 */	li r3, 0x0
/* 814A22E8 | 90 04 00 04 */	stw r0, 0x4(r4)
.L_814A22EC:
/* 814A22EC | 80 01 01 54 */	lwz r0, 0x154(r1)
/* 814A22F0 | 83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 814A22F4 | 83 C1 01 48 */	lwz r30, 0x148(r1)
/* 814A22F8 | 7C 08 03 A6 */	mtlr r0
/* 814A22FC | 38 21 01 50 */	addi r1, r1, 0x150
/* 814A2300 | 4E 80 00 20 */	blr
.endfn NWC24iOpenMBox

# .text:0x844 | 0x814A2304 | size: 0x1F0
.fn NWC24iInitMBox, global
/* 814A2304 | 94 21 FE A0 */	stwu r1, -0x160(r1)
/* 814A2308 | 7C 08 02 A6 */	mflr r0
/* 814A230C | 90 01 01 64 */	stw r0, 0x164(r1)
/* 814A2310 | 39 61 01 60 */	addi r11, r1, 0x160
/* 814A2314 | 48 15 71 AD */	bl _savegpr_27
/* 814A2318 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A231C | 3F E0 81 67 */	lis r31, lbl_8166D920@ha
/* 814A2320 | 3B FF D9 20 */	addi r31, r31, lbl_8166D920@l
/* 814A2324 | 38 80 00 00 */	li r4, 0x0
/* 814A2328 | 3B 63 08 00 */	addi r27, r3, 0x800
/* 814A232C | 38 63 17 00 */	addi r3, r3, 0x1700
/* 814A2330 | 38 A0 00 80 */	li r5, 0x80
/* 814A2334 | 4B FF AB 51 */	bl Mail_memset
/* 814A2338 | 38 60 00 00 */	li r3, 0x0
/* 814A233C | 38 80 00 00 */	li r4, 0x0
/* 814A2340 | 48 00 0B E1 */	bl CreateCtrlFile
/* 814A2344 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2348 | 7C 7C 1B 78 */	mr r28, r3
/* 814A234C | 40 80 00 08 */	bge .L_814A2354
/* 814A2350 | 48 00 01 8C */	b .L_814A24DC
.L_814A2354:
/* 814A2354 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A2358 | 38 80 00 00 */	li r4, 0x0
/* 814A235C | 38 A0 00 80 */	li r5, 0x80
/* 814A2360 | 38 63 17 80 */	addi r3, r3, 0x1780
/* 814A2364 | 4B FF AB 21 */	bl Mail_memset
/* 814A2368 | 38 60 00 01 */	li r3, 0x1
/* 814A236C | 38 80 00 00 */	li r4, 0x0
/* 814A2370 | 48 00 0B B1 */	bl CreateCtrlFile
/* 814A2374 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2378 | 7C 7D 1B 78 */	mr r29, r3
/* 814A237C | 40 80 00 08 */	bge .L_814A2384
/* 814A2380 | 48 00 01 5C */	b .L_814A24DC
.L_814A2384:
/* 814A2384 | 4B FF D6 4D */	bl NWC24GetMBoxDir
/* 814A2388 | 7C 7E 1B 78 */	mr r30, r3
/* 814A238C | 38 80 00 40 */	li r4, 0x40
/* 814A2390 | 4B FF AA 11 */	bl STD_strnlen
/* 814A2394 | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A2398 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A239C | 40 81 00 0C */	ble .L_814A23A8
/* 814A23A0 | 38 60 FF F5 */	li r3, -0xb
/* 814A23A4 | 48 00 00 20 */	b .L_814A23C4
.L_814A23A8:
/* 814A23A8 | 7F 63 DB 78 */	mr r3, r27
/* 814A23AC | 7F C5 F3 78 */	mr r5, r30
/* 814A23B0 | 38 DF 00 20 */	addi r6, r31, 0x20
/* 814A23B4 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A23B8 | 4C C6 31 82 */	crclr cr1eq
/* 814A23BC | 4B FF B2 95 */	bl Mail_sprintf
/* 814A23C0 | 38 60 00 00 */	li r3, 0x0
.L_814A23C4:
/* 814A23C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A23C8 | 41 82 00 08 */	beq .L_814A23D0
/* 814A23CC | 48 00 01 10 */	b .L_814A24DC
.L_814A23D0:
/* 814A23D0 | 7F 64 DB 78 */	mr r4, r27
/* 814A23D4 | 38 61 00 A4 */	addi r3, r1, 0xa4
/* 814A23D8 | 38 A0 00 02 */	li r5, 0x2
/* 814A23DC | 4B FF B8 2D */	bl NWC24FOpen
/* 814A23E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A23E4 | 40 82 00 0C */	bne .L_814A23F0
/* 814A23E8 | 38 61 00 A4 */	addi r3, r1, 0xa4
/* 814A23EC | 4B FF BB 71 */	bl NWC24FClose
.L_814A23F0:
/* 814A23F0 | 2C 03 FF EC */	cmpwi r3, -0x14
/* 814A23F4 | 41 82 00 0C */	beq .L_814A2400
/* 814A23F8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A23FC | 41 82 00 10 */	beq .L_814A240C
.L_814A2400:
/* 814A2400 | 7F 63 DB 78 */	mr r3, r27
/* 814A2404 | 3C 80 00 70 */	lis r4, 0x70
/* 814A2408 | 4B FF C6 81 */	bl NWC24CreateVF
.L_814A240C:
/* 814A240C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2410 | 41 82 00 08 */	beq .L_814A2418
/* 814A2414 | 48 00 00 C8 */	b .L_814A24DC
.L_814A2418:
/* 814A2418 | 4B FF D5 B9 */	bl NWC24GetMBoxDir
/* 814A241C | 7C 7E 1B 78 */	mr r30, r3
/* 814A2420 | 38 80 00 40 */	li r4, 0x40
/* 814A2424 | 4B FF A9 7D */	bl STD_strnlen
/* 814A2428 | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A242C | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A2430 | 40 81 00 0C */	ble .L_814A243C
/* 814A2434 | 38 60 FF F5 */	li r3, -0xb
/* 814A2438 | 48 00 00 20 */	b .L_814A2458
.L_814A243C:
/* 814A243C | 7F 63 DB 78 */	mr r3, r27
/* 814A2440 | 7F C5 F3 78 */	mr r5, r30
/* 814A2444 | 38 DF 00 30 */	addi r6, r31, 0x30
/* 814A2448 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A244C | 4C C6 31 82 */	crclr cr1eq
/* 814A2450 | 4B FF B2 01 */	bl Mail_sprintf
/* 814A2454 | 38 60 00 00 */	li r3, 0x0
.L_814A2458:
/* 814A2458 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A245C | 41 82 00 08 */	beq .L_814A2464
/* 814A2460 | 48 00 00 7C */	b .L_814A24DC
.L_814A2464:
/* 814A2464 | 7F 64 DB 78 */	mr r4, r27
/* 814A2468 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A246C | 38 A0 00 02 */	li r5, 0x2
/* 814A2470 | 4B FF B7 99 */	bl NWC24FOpen
/* 814A2474 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2478 | 40 82 00 0C */	bne .L_814A2484
/* 814A247C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A2480 | 4B FF BA DD */	bl NWC24FClose
.L_814A2484:
/* 814A2484 | 2C 03 FF EC */	cmpwi r3, -0x14
/* 814A2488 | 7C 7E 1B 78 */	mr r30, r3
/* 814A248C | 41 82 00 0C */	beq .L_814A2498
/* 814A2490 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A2494 | 41 82 00 14 */	beq .L_814A24A8
.L_814A2498:
/* 814A2498 | 7F 63 DB 78 */	mr r3, r27
/* 814A249C | 3C 80 00 20 */	lis r4, 0x20
/* 814A24A0 | 4B FF C5 E9 */	bl NWC24CreateVF
/* 814A24A4 | 7C 7E 1B 78 */	mr r30, r3
.L_814A24A8:
/* 814A24A8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A24AC | 41 82 00 0C */	beq .L_814A24B8
/* 814A24B0 | 7F C3 F3 78 */	mr r3, r30
/* 814A24B4 | 48 00 00 28 */	b .L_814A24DC
.L_814A24B8:
/* 814A24B8 | 38 00 00 00 */	li r0, 0x0
/* 814A24BC | 38 8D AD B8 */	li r4, MountInfo_81698DF8@sda21
/* 814A24C0 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A24C4 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 814A24C8 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 814A24CC | 4B FF C2 7D */	bl NWC24FDelete
/* 814A24D0 | 38 7F 00 60 */	addi r3, r31, 0x60
/* 814A24D4 | 4B FF C2 75 */	bl NWC24FDelete
/* 814A24D8 | 7F C3 F3 78 */	mr r3, r30
.L_814A24DC:
/* 814A24DC | 39 61 01 60 */	addi r11, r1, 0x160
/* 814A24E0 | 48 15 70 2D */	bl _restgpr_27
/* 814A24E4 | 80 01 01 64 */	lwz r0, 0x164(r1)
/* 814A24E8 | 7C 08 03 A6 */	mtlr r0
/* 814A24EC | 38 21 01 60 */	addi r1, r1, 0x160
/* 814A24F0 | 4E 80 00 20 */	blr
.endfn NWC24iInitMBox

# .text:0xA34 | 0x814A24F4 | size: 0x1A4
.fn NWC24iMBoxOpenNewMsg, global
/* 814A24F4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A24F8 | 7C 08 02 A6 */	mflr r0
/* 814A24FC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A2500 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814A2504 | 7C 7F 1B 78 */	mr r31, r3
/* 814A2508 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814A250C | 7C BE 2B 78 */	mr r30, r5
/* 814A2510 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814A2514 | 7C 9D 23 78 */	mr r29, r4
/* 814A2518 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814A251C | 48 00 14 2D */	bl GetCachedMBCHeader_814A3948
/* 814A2520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2524 | 41 82 00 08 */	beq .L_814A252C
/* 814A2528 | 48 00 01 54 */	b .L_814A267C
.L_814A252C:
/* 814A252C | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 814A2530 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 814A2534 | 3C 03 A8 9D */	subis r0, r3, 0x5763
/* 814A2538 | 28 00 54 66 */	cmplwi r0, 0x5466
/* 814A253C | 41 82 00 0C */	beq .L_814A2548
/* 814A2540 | 38 60 FF FD */	li r3, -0x3
/* 814A2544 | 48 00 00 38 */	b .L_814A257C
.L_814A2548:
/* 814A2548 | 3C 60 00 0F */	lis r3, 0xf
/* 814A254C | 80 85 00 18 */	lwz r4, 0x18(r5)
/* 814A2550 | 38 03 42 40 */	addi r0, r3, 0x4240
/* 814A2554 | 7C 04 00 40 */	cmplw r4, r0
/* 814A2558 | 40 81 00 0C */	ble .L_814A2564
/* 814A255C | 38 00 00 01 */	li r0, 0x1
/* 814A2560 | 90 05 00 18 */	stw r0, 0x18(r5)
.L_814A2564:
/* 814A2564 | 80 05 00 18 */	lwz r0, 0x18(r5)
/* 814A2568 | 38 60 00 00 */	li r3, 0x0
/* 814A256C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814A2570 | 80 85 00 18 */	lwz r4, 0x18(r5)
/* 814A2574 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814A2578 | 90 05 00 18 */	stw r0, 0x18(r5)
.L_814A257C:
/* 814A257C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2580 | 41 82 00 08 */	beq .L_814A2588
/* 814A2584 | 48 00 00 F8 */	b .L_814A267C
.L_814A2588:
/* 814A2588 | 7F E3 FB 78 */	mr r3, r31
/* 814A258C | 48 00 19 49 */	bl MountVFMBox_814A3ED4
/* 814A2590 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2594 | 41 82 00 08 */	beq .L_814A259C
/* 814A2598 | 48 00 00 E4 */	b .L_814A267C
.L_814A259C:
/* 814A259C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A25A0 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814A25A4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 814A25A8 | 3B C3 08 00 */	addi r30, r3, 0x800
/* 814A25AC | 41 82 00 2C */	beq .L_814A25D8
/* 814A25B0 | 40 80 00 40 */	bge .L_814A25F0
/* 814A25B4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A25B8 | 40 80 00 08 */	bge .L_814A25C0
/* 814A25BC | 48 00 00 34 */	b .L_814A25F0
.L_814A25C0:
/* 814A25C0 | 3C 80 81 67 */	lis r4, lbl_8166D9A0@ha
/* 814A25C4 | 7F C3 F3 78 */	mr r3, r30
/* 814A25C8 | 38 84 D9 A0 */	addi r4, r4, lbl_8166D9A0@l
/* 814A25CC | 4C C6 31 82 */	crclr cr1eq
/* 814A25D0 | 4B FF B0 81 */	bl Mail_sprintf
/* 814A25D4 | 48 00 00 24 */	b .L_814A25F8
.L_814A25D8:
/* 814A25D8 | 3C 80 81 67 */	lis r4, lbl_8166D9B4@ha
/* 814A25DC | 7F C3 F3 78 */	mr r3, r30
/* 814A25E0 | 38 84 D9 B4 */	addi r4, r4, lbl_8166D9B4@l
/* 814A25E4 | 4C C6 31 82 */	crclr cr1eq
/* 814A25E8 | 4B FF B0 69 */	bl Mail_sprintf
/* 814A25EC | 48 00 00 0C */	b .L_814A25F8
.L_814A25F0:
/* 814A25F0 | 3B E0 FF FD */	li r31, -0x3
/* 814A25F4 | 48 00 00 08 */	b .L_814A25FC
.L_814A25F8:
/* 814A25F8 | 3B E0 00 00 */	li r31, 0x0
.L_814A25FC:
/* 814A25FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A2600 | 40 82 00 18 */	bne .L_814A2618
/* 814A2604 | 7F A3 EB 78 */	mr r3, r29
/* 814A2608 | 7F C4 F3 78 */	mr r4, r30
/* 814A260C | 38 A0 01 09 */	li r5, 0x109
/* 814A2610 | 4B FF B5 F9 */	bl NWC24FOpen
/* 814A2614 | 7C 7F 1B 78 */	mr r31, r3
.L_814A2618:
/* 814A2618 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A261C | 41 82 00 5C */	beq .L_814A2678
/* 814A2620 | 80 6D AD B8 */	lwz r3, MountInfo_81698DF8@sda21(r0)
/* 814A2624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2628 | 41 82 00 50 */	beq .L_814A2678
/* 814A262C | 34 03 FF FF */	subic. r0, r3, 0x1
/* 814A2630 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A2634 | 41 81 00 44 */	bgt .L_814A2678
/* 814A2638 | 38 6D AD B8 */	li r3, MountInfo_81698DF8@sda21
/* 814A263C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A2640 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814A2644 | 48 00 13 05 */	bl GetCachedMBCHeader_814A3948
/* 814A2648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A264C | 40 82 00 2C */	bne .L_814A2678
/* 814A2650 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A2654 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A2658 | 4B FF C3 9D */	bl NWC24CheckSizeVF
/* 814A265C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2660 | 40 82 00 18 */	bne .L_814A2678
/* 814A2664 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814A2668 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A266C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A2670 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814A2674 | 4B FF C3 01 */	bl NWC24UnmountVF
.L_814A2678:
/* 814A2678 | 7F E3 FB 78 */	mr r3, r31
.L_814A267C:
/* 814A267C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A2680 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814A2684 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814A2688 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814A268C | 7C 08 03 A6 */	mtlr r0
/* 814A2690 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A2694 | 4E 80 00 20 */	blr
.endfn NWC24iMBoxOpenNewMsg

# .text:0xBD8 | 0x814A2698 | size: 0x13C
.fn NWC24iMBoxOpenStoredMsg, global
/* 814A2698 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A269C | 7C 08 02 A6 */	mflr r0
/* 814A26A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A26A4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A26A8 | 7C 9F 23 78 */	mr r31, r4
/* 814A26AC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A26B0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A26B4 | 7C BD 2B 78 */	mr r29, r5
/* 814A26B8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814A26BC | 7C 7C 1B 78 */	mr r28, r3
/* 814A26C0 | 48 00 18 15 */	bl MountVFMBox_814A3ED4
/* 814A26C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A26C8 | 41 82 00 08 */	beq .L_814A26D0
/* 814A26CC | 48 00 00 E8 */	b .L_814A27B4
.L_814A26D0:
/* 814A26D0 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A26D4 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814A26D8 | 3B C3 08 00 */	addi r30, r3, 0x800
/* 814A26DC | 41 82 00 30 */	beq .L_814A270C
/* 814A26E0 | 40 80 00 48 */	bge .L_814A2728
/* 814A26E4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A26E8 | 40 80 00 08 */	bge .L_814A26F0
/* 814A26EC | 48 00 00 3C */	b .L_814A2728
.L_814A26F0:
/* 814A26F0 | 3C 80 81 67 */	lis r4, lbl_8166D9A0@ha
/* 814A26F4 | 7F C3 F3 78 */	mr r3, r30
/* 814A26F8 | 7F E5 FB 78 */	mr r5, r31
/* 814A26FC | 38 84 D9 A0 */	addi r4, r4, lbl_8166D9A0@l
/* 814A2700 | 4C C6 31 82 */	crclr cr1eq
/* 814A2704 | 4B FF AF 4D */	bl Mail_sprintf
/* 814A2708 | 48 00 00 28 */	b .L_814A2730
.L_814A270C:
/* 814A270C | 3C 80 81 67 */	lis r4, lbl_8166D9B4@ha
/* 814A2710 | 7F C3 F3 78 */	mr r3, r30
/* 814A2714 | 7F E5 FB 78 */	mr r5, r31
/* 814A2718 | 38 84 D9 B4 */	addi r4, r4, lbl_8166D9B4@l
/* 814A271C | 4C C6 31 82 */	crclr cr1eq
/* 814A2720 | 4B FF AF 31 */	bl Mail_sprintf
/* 814A2724 | 48 00 00 0C */	b .L_814A2730
.L_814A2728:
/* 814A2728 | 3B E0 FF FD */	li r31, -0x3
/* 814A272C | 48 00 00 08 */	b .L_814A2734
.L_814A2730:
/* 814A2730 | 3B E0 00 00 */	li r31, 0x0
.L_814A2734:
/* 814A2734 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A2738 | 40 82 00 18 */	bne .L_814A2750
/* 814A273C | 7F A3 EB 78 */	mr r3, r29
/* 814A2740 | 7F C4 F3 78 */	mr r4, r30
/* 814A2744 | 38 A0 01 0A */	li r5, 0x10a
/* 814A2748 | 4B FF B4 C1 */	bl NWC24FOpen
/* 814A274C | 7C 7F 1B 78 */	mr r31, r3
.L_814A2750:
/* 814A2750 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A2754 | 41 82 00 5C */	beq .L_814A27B0
/* 814A2758 | 80 6D AD B8 */	lwz r3, MountInfo_81698DF8@sda21(r0)
/* 814A275C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2760 | 41 82 00 50 */	beq .L_814A27B0
/* 814A2764 | 34 03 FF FF */	subic. r0, r3, 0x1
/* 814A2768 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A276C | 41 81 00 44 */	bgt .L_814A27B0
/* 814A2770 | 38 6D AD B8 */	li r3, MountInfo_81698DF8@sda21
/* 814A2774 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A2778 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814A277C | 48 00 11 CD */	bl GetCachedMBCHeader_814A3948
/* 814A2780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2784 | 40 82 00 2C */	bne .L_814A27B0
/* 814A2788 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A278C | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A2790 | 4B FF C2 65 */	bl NWC24CheckSizeVF
/* 814A2794 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2798 | 40 82 00 18 */	bne .L_814A27B0
/* 814A279C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814A27A0 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A27A4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A27A8 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814A27AC | 4B FF C1 C9 */	bl NWC24UnmountVF
.L_814A27B0:
/* 814A27B0 | 7F E3 FB 78 */	mr r3, r31
.L_814A27B4:
/* 814A27B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A27B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A27BC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A27C0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A27C4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814A27C8 | 7C 08 03 A6 */	mtlr r0
/* 814A27CC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A27D0 | 4E 80 00 20 */	blr
.endfn NWC24iMBoxOpenStoredMsg

# .text:0xD14 | 0x814A27D4 | size: 0xB4
.fn NWC24iMBoxCloseMsg, global
/* 814A27D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A27D8 | 7C 08 02 A6 */	mflr r0
/* 814A27DC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A27E0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A27E4 | 4B FF B7 79 */	bl NWC24FClose
/* 814A27E8 | 80 8D AD B8 */	lwz r4, MountInfo_81698DF8@sda21(r0)
/* 814A27EC | 7C 7F 1B 78 */	mr r31, r3
/* 814A27F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A27F4 | 40 82 00 0C */	bne .L_814A2800
/* 814A27F8 | 38 60 00 00 */	li r3, 0x0
/* 814A27FC | 48 00 00 60 */	b .L_814A285C
.L_814A2800:
/* 814A2800 | 34 04 FF FF */	subic. r0, r4, 0x1
/* 814A2804 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A2808 | 40 81 00 0C */	ble .L_814A2814
/* 814A280C | 38 60 00 00 */	li r3, 0x0
/* 814A2810 | 48 00 00 4C */	b .L_814A285C
.L_814A2814:
/* 814A2814 | 38 6D AD B8 */	li r3, MountInfo_81698DF8@sda21
/* 814A2818 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A281C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814A2820 | 48 00 11 29 */	bl GetCachedMBCHeader_814A3948
/* 814A2824 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2828 | 41 82 00 08 */	beq .L_814A2830
/* 814A282C | 48 00 00 30 */	b .L_814A285C
.L_814A2830:
/* 814A2830 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A2834 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A2838 | 4B FF C1 BD */	bl NWC24CheckSizeVF
/* 814A283C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2840 | 41 82 00 08 */	beq .L_814A2848
/* 814A2844 | 48 00 00 18 */	b .L_814A285C
.L_814A2848:
/* 814A2848 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814A284C | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A2850 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A2854 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814A2858 | 4B FF C1 1D */	bl NWC24UnmountVF
.L_814A285C:
/* 814A285C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A2860 | 41 82 00 10 */	beq .L_814A2870
/* 814A2864 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2868 | 41 82 00 08 */	beq .L_814A2870
/* 814A286C | 48 00 00 08 */	b .L_814A2874
.L_814A2870:
/* 814A2870 | 7F E3 FB 78 */	mr r3, r31
.L_814A2874:
/* 814A2874 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A2878 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A287C | 7C 08 03 A6 */	mtlr r0
/* 814A2880 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A2884 | 4E 80 00 20 */	blr
.endfn NWC24iMBoxCloseMsg

# .text:0xDC8 | 0x814A2888 | size: 0x204
.fn NWC24iMBoxCancelMsg, global
/* 814A2888 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A288C | 7C 08 02 A6 */	mflr r0
/* 814A2890 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A2894 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814A2898 | 7C BF 2B 78 */	mr r31, r5
/* 814A289C | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814A28A0 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814A28A4 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 814A28A8 | 7C 9C 23 78 */	mr r28, r4
/* 814A28AC | 4B FF B6 B1 */	bl NWC24FClose
/* 814A28B0 | 7C 7D 1B 78 */	mr r29, r3
/* 814A28B4 | 7F 83 E3 78 */	mr r3, r28
/* 814A28B8 | 48 00 16 1D */	bl MountVFMBox_814A3ED4
/* 814A28BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A28C0 | 41 82 00 0C */	beq .L_814A28CC
/* 814A28C4 | 7C 7F 1B 78 */	mr r31, r3
/* 814A28C8 | 48 00 01 00 */	b .L_814A29C8
.L_814A28CC:
/* 814A28CC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A28D0 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814A28D4 | 3B C3 08 00 */	addi r30, r3, 0x800
/* 814A28D8 | 41 82 00 30 */	beq .L_814A2908
/* 814A28DC | 40 80 00 48 */	bge .L_814A2924
/* 814A28E0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A28E4 | 40 80 00 08 */	bge .L_814A28EC
/* 814A28E8 | 48 00 00 3C */	b .L_814A2924
.L_814A28EC:
/* 814A28EC | 3C 80 81 67 */	lis r4, lbl_8166D9A0@ha
/* 814A28F0 | 7F C3 F3 78 */	mr r3, r30
/* 814A28F4 | 7F E5 FB 78 */	mr r5, r31
/* 814A28F8 | 38 84 D9 A0 */	addi r4, r4, lbl_8166D9A0@l
/* 814A28FC | 4C C6 31 82 */	crclr cr1eq
/* 814A2900 | 4B FF AD 51 */	bl Mail_sprintf
/* 814A2904 | 48 00 00 28 */	b .L_814A292C
.L_814A2908:
/* 814A2908 | 3C 80 81 67 */	lis r4, lbl_8166D9B4@ha
/* 814A290C | 7F C3 F3 78 */	mr r3, r30
/* 814A2910 | 7F E5 FB 78 */	mr r5, r31
/* 814A2914 | 38 84 D9 B4 */	addi r4, r4, lbl_8166D9B4@l
/* 814A2918 | 4C C6 31 82 */	crclr cr1eq
/* 814A291C | 4B FF AD 35 */	bl Mail_sprintf
/* 814A2920 | 48 00 00 0C */	b .L_814A292C
.L_814A2924:
/* 814A2924 | 3B E0 FF FD */	li r31, -0x3
/* 814A2928 | 48 00 00 08 */	b .L_814A2930
.L_814A292C:
/* 814A292C | 3B E0 00 00 */	li r31, 0x0
.L_814A2930:
/* 814A2930 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A2934 | 41 82 00 08 */	beq .L_814A293C
/* 814A2938 | 48 00 00 90 */	b .L_814A29C8
.L_814A293C:
/* 814A293C | 7F C3 F3 78 */	mr r3, r30
/* 814A2940 | 4B FF BE 49 */	bl NWC24FDeleteVF
/* 814A2944 | 80 8D AD B8 */	lwz r4, MountInfo_81698DF8@sda21(r0)
/* 814A2948 | 7C 7E 1B 78 */	mr r30, r3
/* 814A294C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A2950 | 40 82 00 0C */	bne .L_814A295C
/* 814A2954 | 38 60 00 00 */	li r3, 0x0
/* 814A2958 | 48 00 00 60 */	b .L_814A29B8
.L_814A295C:
/* 814A295C | 34 04 FF FF */	subic. r0, r4, 0x1
/* 814A2960 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A2964 | 40 81 00 0C */	ble .L_814A2970
/* 814A2968 | 38 60 00 00 */	li r3, 0x0
/* 814A296C | 48 00 00 4C */	b .L_814A29B8
.L_814A2970:
/* 814A2970 | 38 6D AD B8 */	li r3, MountInfo_81698DF8@sda21
/* 814A2974 | 38 81 00 14 */	addi r4, r1, 0x14
/* 814A2978 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814A297C | 48 00 0F CD */	bl GetCachedMBCHeader_814A3948
/* 814A2980 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2984 | 41 82 00 08 */	beq .L_814A298C
/* 814A2988 | 48 00 00 30 */	b .L_814A29B8
.L_814A298C:
/* 814A298C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814A2990 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A2994 | 4B FF C0 61 */	bl NWC24CheckSizeVF
/* 814A2998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A299C | 41 82 00 08 */	beq .L_814A29A4
/* 814A29A0 | 48 00 00 18 */	b .L_814A29B8
.L_814A29A4:
/* 814A29A4 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814A29A8 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A29AC | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 814A29B0 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814A29B4 | 4B FF BF C1 */	bl NWC24UnmountVF
.L_814A29B8:
/* 814A29B8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A29BC | 41 82 00 08 */	beq .L_814A29C4
/* 814A29C0 | 7F C3 F3 78 */	mr r3, r30
.L_814A29C4:
/* 814A29C4 | 7C 7F 1B 78 */	mr r31, r3
.L_814A29C8:
/* 814A29C8 | 38 00 00 01 */	li r0, 0x1
/* 814A29CC | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A29D0 | 48 00 00 08 */	b .L_814A29D8
/* 814A29D4 | 48 00 00 64 */	b .L_814A2A38
.L_814A29D8:
/* 814A29D8 | 38 00 00 00 */	li r0, 0x0
/* 814A29DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A29E0 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A29E4 | 40 81 00 0C */	ble .L_814A29F0
/* 814A29E8 | 38 60 00 00 */	li r3, 0x0
/* 814A29EC | 48 00 00 4C */	b .L_814A2A38
.L_814A29F0:
/* 814A29F0 | 38 6D AD B8 */	li r3, MountInfo_81698DF8@sda21
/* 814A29F4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A29F8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814A29FC | 48 00 0F 4D */	bl GetCachedMBCHeader_814A3948
/* 814A2A00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2A04 | 41 82 00 08 */	beq .L_814A2A0C
/* 814A2A08 | 48 00 00 30 */	b .L_814A2A38
.L_814A2A0C:
/* 814A2A0C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A2A10 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A2A14 | 4B FF BF E1 */	bl NWC24CheckSizeVF
/* 814A2A18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2A1C | 41 82 00 08 */	beq .L_814A2A24
/* 814A2A20 | 48 00 00 18 */	b .L_814A2A38
.L_814A2A24:
/* 814A2A24 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A2A28 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A2A2C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814A2A30 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814A2A34 | 4B FF BF 41 */	bl NWC24UnmountVF
.L_814A2A38:
/* 814A2A38 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A2A3C | 41 82 00 0C */	beq .L_814A2A48
/* 814A2A40 | 7F A3 EB 78 */	mr r3, r29
/* 814A2A44 | 48 00 00 28 */	b .L_814A2A6C
.L_814A2A48:
/* 814A2A48 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A2A4C | 41 82 00 0C */	beq .L_814A2A58
/* 814A2A50 | 7F E3 FB 78 */	mr r3, r31
/* 814A2A54 | 48 00 00 18 */	b .L_814A2A6C
.L_814A2A58:
/* 814A2A58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2A5C | 38 00 00 00 */	li r0, 0x0
/* 814A2A60 | 41 82 00 08 */	beq .L_814A2A68
/* 814A2A64 | 7C 60 1B 78 */	mr r0, r3
.L_814A2A68:
/* 814A2A68 | 7C 03 03 78 */	mr r3, r0
.L_814A2A6C:
/* 814A2A6C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A2A70 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814A2A74 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814A2A78 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814A2A7C | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 814A2A80 | 7C 08 03 A6 */	mtlr r0
/* 814A2A84 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A2A88 | 4E 80 00 20 */	blr
.endfn NWC24iMBoxCancelMsg

# .text:0xFCC | 0x814A2A8C | size: 0x1CC
.fn NWC24iMBoxAddMsgObj, global
/* 814A2A8C | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814A2A90 | 7C 08 02 A6 */	mflr r0
/* 814A2A94 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814A2A98 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814A2A9C | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814A2AA0 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814A2AA4 | 7C 9D 23 78 */	mr r29, r4
/* 814A2AA8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A2AAC | 93 81 00 B0 */	stw r28, 0xb0(r1)
/* 814A2AB0 | 7C 7C 1B 78 */	mr r28, r3
/* 814A2AB4 | 48 00 0E 95 */	bl GetCachedMBCHeader_814A3948
/* 814A2AB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2ABC | 41 82 00 08 */	beq .L_814A2AC4
/* 814A2AC0 | 48 00 01 78 */	b .L_814A2C38
.L_814A2AC4:
/* 814A2AC4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A2AC8 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814A2ACC | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 814A2AD0 | 7C 03 00 40 */	cmplw r3, r0
/* 814A2AD4 | 40 82 00 0C */	bne .L_814A2AE0
/* 814A2AD8 | 38 60 FF FA */	li r3, -0x6
/* 814A2ADC | 48 00 01 5C */	b .L_814A2C38
.L_814A2AE0:
/* 814A2AE0 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A2AE4 | 3B C3 08 00 */	addi r30, r3, 0x800
/* 814A2AE8 | 4B FF CE E9 */	bl NWC24GetMBoxDir
/* 814A2AEC | 7C 7F 1B 78 */	mr r31, r3
/* 814A2AF0 | 38 80 00 40 */	li r4, 0x40
/* 814A2AF4 | 4B FF A2 AD */	bl STD_strnlen
/* 814A2AF8 | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A2AFC | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A2B00 | 40 81 00 0C */	ble .L_814A2B0C
/* 814A2B04 | 38 60 FF F5 */	li r3, -0xb
/* 814A2B08 | 48 00 00 68 */	b .L_814A2B70
.L_814A2B0C:
/* 814A2B0C | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814A2B10 | 41 82 00 34 */	beq .L_814A2B44
/* 814A2B14 | 40 80 00 50 */	bge .L_814A2B64
/* 814A2B18 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A2B1C | 40 80 00 08 */	bge .L_814A2B24
/* 814A2B20 | 48 00 00 44 */	b .L_814A2B64
.L_814A2B24:
/* 814A2B24 | 3C C0 81 67 */	lis r6, lbl_8166D920@ha
/* 814A2B28 | 7F C3 F3 78 */	mr r3, r30
/* 814A2B2C | 7F E5 FB 78 */	mr r5, r31
/* 814A2B30 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A2B34 | 38 C6 D9 20 */	addi r6, r6, lbl_8166D920@l
/* 814A2B38 | 4C C6 31 82 */	crclr cr1eq
/* 814A2B3C | 4B FF AB 15 */	bl Mail_sprintf
/* 814A2B40 | 48 00 00 2C */	b .L_814A2B6C
.L_814A2B44:
/* 814A2B44 | 3C C0 81 67 */	lis r6, lbl_8166D930@ha
/* 814A2B48 | 7F C3 F3 78 */	mr r3, r30
/* 814A2B4C | 7F E5 FB 78 */	mr r5, r31
/* 814A2B50 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A2B54 | 38 C6 D9 30 */	addi r6, r6, lbl_8166D930@l
/* 814A2B58 | 4C C6 31 82 */	crclr cr1eq
/* 814A2B5C | 4B FF AA F5 */	bl Mail_sprintf
/* 814A2B60 | 48 00 00 0C */	b .L_814A2B6C
.L_814A2B64:
/* 814A2B64 | 38 60 FF FD */	li r3, -0x3
/* 814A2B68 | 48 00 00 08 */	b .L_814A2B70
.L_814A2B6C:
/* 814A2B6C | 38 60 00 00 */	li r3, 0x0
.L_814A2B70:
/* 814A2B70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2B74 | 41 82 00 08 */	beq .L_814A2B7C
/* 814A2B78 | 48 00 00 C0 */	b .L_814A2C38
.L_814A2B7C:
/* 814A2B7C | 7F C4 F3 78 */	mr r4, r30
/* 814A2B80 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A2B84 | 38 A0 00 04 */	li r5, 0x4
/* 814A2B88 | 4B FF B0 81 */	bl NWC24FOpen
/* 814A2B8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2B90 | 41 82 00 08 */	beq .L_814A2B98
/* 814A2B94 | 48 00 00 A4 */	b .L_814A2C38
.L_814A2B98:
/* 814A2B98 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A2B9C | 7F A4 EB 78 */	mr r4, r29
/* 814A2BA0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A2BA4 | 48 00 10 F9 */	bl AddMBCEntry_814A3C9C
/* 814A2BA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2BAC | 7C 7F 1B 78 */	mr r31, r3
/* 814A2BB0 | 40 82 00 28 */	bne .L_814A2BD8
/* 814A2BB4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A2BB8 | 7F A4 EB 78 */	mr r4, r29
/* 814A2BBC | 7F 86 E3 78 */	mr r6, r28
/* 814A2BC0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A2BC4 | 48 00 0A 0D */	bl DuplicationCheck_814A35D0
/* 814A2BC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2BCC | 7C 7F 1B 78 */	mr r31, r3
/* 814A2BD0 | 40 82 00 54 */	bne .L_814A2C24
/* 814A2BD4 | 48 00 00 1C */	b .L_814A2BF0
.L_814A2BD8:
/* 814A2BD8 | 2C 03 FF F2 */	cmpwi r3, -0xe
/* 814A2BDC | 40 82 00 48 */	bne .L_814A2C24
/* 814A2BE0 | 3C 80 42 52 */	lis r4, 0x4252
/* 814A2BE4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A2BE8 | 38 04 4B 4E */	addi r0, r4, 0x4b4e
/* 814A2BEC | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814A2BF0:
/* 814A2BF0 | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 814A2BF4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A2BF8 | 38 80 00 00 */	li r4, 0x0
/* 814A2BFC | 38 A0 00 00 */	li r5, 0x0
/* 814A2C00 | 4B FF B4 F5 */	bl NWC24FSeek
/* 814A2C04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2C08 | 41 82 00 08 */	beq .L_814A2C10
/* 814A2C0C | 48 00 00 14 */	b .L_814A2C20
.L_814A2C10:
/* 814A2C10 | 7F E3 FB 78 */	mr r3, r31
/* 814A2C14 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A2C18 | 38 80 00 80 */	li r4, 0x80
/* 814A2C1C | 4B FF B8 99 */	bl NWC24FWrite
.L_814A2C20:
/* 814A2C20 | 7C 7F 1B 78 */	mr r31, r3
.L_814A2C24:
/* 814A2C24 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A2C28 | 4B FF B3 35 */	bl NWC24FClose
/* 814A2C2C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A2C30 | 41 82 00 08 */	beq .L_814A2C38
/* 814A2C34 | 7F E3 FB 78 */	mr r3, r31
.L_814A2C38:
/* 814A2C38 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814A2C3C | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814A2C40 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814A2C44 | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814A2C48 | 83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 814A2C4C | 7C 08 03 A6 */	mtlr r0
/* 814A2C50 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814A2C54 | 4E 80 00 20 */	blr
.endfn NWC24iMBoxAddMsgObj

# .text:0x1198 | 0x814A2C58 | size: 0x150
.fn NWC24iMBoxFlushHeader, global
/* 814A2C58 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814A2C5C | 7C 08 02 A6 */	mflr r0
/* 814A2C60 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814A2C64 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A2C68 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814A2C6C | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814A2C70 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814A2C74 | 7C 7D 1B 78 */	mr r29, r3
/* 814A2C78 | 48 00 0C D1 */	bl GetCachedMBCHeader_814A3948
/* 814A2C7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2C80 | 41 82 00 08 */	beq .L_814A2C88
/* 814A2C84 | 48 00 01 08 */	b .L_814A2D8C
.L_814A2C88:
/* 814A2C88 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A2C8C | 3B C3 08 00 */	addi r30, r3, 0x800
/* 814A2C90 | 4B FF CD 41 */	bl NWC24GetMBoxDir
/* 814A2C94 | 7C 7F 1B 78 */	mr r31, r3
/* 814A2C98 | 38 80 00 40 */	li r4, 0x40
/* 814A2C9C | 4B FF A1 05 */	bl STD_strnlen
/* 814A2CA0 | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A2CA4 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A2CA8 | 40 81 00 0C */	ble .L_814A2CB4
/* 814A2CAC | 38 60 FF F5 */	li r3, -0xb
/* 814A2CB0 | 48 00 00 68 */	b .L_814A2D18
.L_814A2CB4:
/* 814A2CB4 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 814A2CB8 | 41 82 00 34 */	beq .L_814A2CEC
/* 814A2CBC | 40 80 00 50 */	bge .L_814A2D0C
/* 814A2CC0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A2CC4 | 40 80 00 08 */	bge .L_814A2CCC
/* 814A2CC8 | 48 00 00 44 */	b .L_814A2D0C
.L_814A2CCC:
/* 814A2CCC | 3C C0 81 67 */	lis r6, lbl_8166D920@ha
/* 814A2CD0 | 7F C3 F3 78 */	mr r3, r30
/* 814A2CD4 | 7F E5 FB 78 */	mr r5, r31
/* 814A2CD8 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A2CDC | 38 C6 D9 20 */	addi r6, r6, lbl_8166D920@l
/* 814A2CE0 | 4C C6 31 82 */	crclr cr1eq
/* 814A2CE4 | 4B FF A9 6D */	bl Mail_sprintf
/* 814A2CE8 | 48 00 00 2C */	b .L_814A2D14
.L_814A2CEC:
/* 814A2CEC | 3C C0 81 67 */	lis r6, lbl_8166D930@ha
/* 814A2CF0 | 7F C3 F3 78 */	mr r3, r30
/* 814A2CF4 | 7F E5 FB 78 */	mr r5, r31
/* 814A2CF8 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A2CFC | 38 C6 D9 30 */	addi r6, r6, lbl_8166D930@l
/* 814A2D00 | 4C C6 31 82 */	crclr cr1eq
/* 814A2D04 | 4B FF A9 4D */	bl Mail_sprintf
/* 814A2D08 | 48 00 00 0C */	b .L_814A2D14
.L_814A2D0C:
/* 814A2D0C | 38 60 FF FD */	li r3, -0x3
/* 814A2D10 | 48 00 00 08 */	b .L_814A2D18
.L_814A2D14:
/* 814A2D14 | 38 60 00 00 */	li r3, 0x0
.L_814A2D18:
/* 814A2D18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2D1C | 41 82 00 08 */	beq .L_814A2D24
/* 814A2D20 | 48 00 00 6C */	b .L_814A2D8C
.L_814A2D24:
/* 814A2D24 | 7F C4 F3 78 */	mr r4, r30
/* 814A2D28 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A2D2C | 38 A0 00 04 */	li r5, 0x4
/* 814A2D30 | 4B FF AE D9 */	bl NWC24FOpen
/* 814A2D34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2D38 | 41 82 00 08 */	beq .L_814A2D40
/* 814A2D3C | 48 00 00 50 */	b .L_814A2D8C
.L_814A2D40:
/* 814A2D40 | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 814A2D44 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A2D48 | 38 80 00 00 */	li r4, 0x0
/* 814A2D4C | 38 A0 00 00 */	li r5, 0x0
/* 814A2D50 | 4B FF B3 A5 */	bl NWC24FSeek
/* 814A2D54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2D58 | 41 82 00 0C */	beq .L_814A2D64
/* 814A2D5C | 7C 7F 1B 78 */	mr r31, r3
/* 814A2D60 | 48 00 00 18 */	b .L_814A2D78
.L_814A2D64:
/* 814A2D64 | 7F E3 FB 78 */	mr r3, r31
/* 814A2D68 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A2D6C | 38 80 00 80 */	li r4, 0x80
/* 814A2D70 | 4B FF B7 45 */	bl NWC24FWrite
/* 814A2D74 | 7C 7F 1B 78 */	mr r31, r3
.L_814A2D78:
/* 814A2D78 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A2D7C | 4B FF B1 E1 */	bl NWC24FClose
/* 814A2D80 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A2D84 | 41 82 00 08 */	beq .L_814A2D8C
/* 814A2D88 | 7F E3 FB 78 */	mr r3, r31
.L_814A2D8C:
/* 814A2D8C | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814A2D90 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814A2D94 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814A2D98 | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814A2D9C | 7C 08 03 A6 */	mtlr r0
/* 814A2DA0 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814A2DA4 | 4E 80 00 20 */	blr
.endfn NWC24iMBoxFlushHeader

# .text:0x12E8 | 0x814A2DA8 | size: 0x110
.fn NWC24iMBoxCheck, global
/* 814A2DA8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A2DAC | 7C 08 02 A6 */	mflr r0
/* 814A2DB0 | 3C A0 00 03 */	lis r5, 0x3
/* 814A2DB4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A2DB8 | 38 05 1C 00 */	addi r0, r5, 0x1c00
/* 814A2DBC | 7C 04 00 40 */	cmplw r4, r0
/* 814A2DC0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A2DC4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A2DC8 | 7C 7E 1B 78 */	mr r30, r3
/* 814A2DCC | 41 80 00 0C */	blt .L_814A2DD8
/* 814A2DD0 | 38 60 FF F8 */	li r3, -0x8
/* 814A2DD4 | 48 00 00 CC */	b .L_814A2EA0
.L_814A2DD8:
/* 814A2DD8 | 3B E4 40 00 */	addi r31, r4, 0x4000
/* 814A2DDC | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A2DE0 | 48 00 0B 69 */	bl GetCachedMBCHeader_814A3948
/* 814A2DE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2DE8 | 41 82 00 08 */	beq .L_814A2DF0
/* 814A2DEC | 48 00 00 B4 */	b .L_814A2EA0
.L_814A2DF0:
/* 814A2DF0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A2DF4 | 40 82 00 34 */	bne .L_814A2E28
/* 814A2DF8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814A2DFC | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814A2E00 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 814A2E04 | 7C 03 00 40 */	cmplw r3, r0
/* 814A2E08 | 41 80 00 0C */	blt .L_814A2E14
/* 814A2E0C | 38 60 FF FA */	li r3, -0x6
/* 814A2E10 | 48 00 00 90 */	b .L_814A2EA0
.L_814A2E14:
/* 814A2E14 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814A2E18 | 7C 00 F8 40 */	cmplw r0, r31
/* 814A2E1C | 41 81 00 80 */	bgt .L_814A2E9C
/* 814A2E20 | 38 60 FF FA */	li r3, -0x6
/* 814A2E24 | 48 00 00 7C */	b .L_814A2EA0
.L_814A2E28:
/* 814A2E28 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 814A2E2C | 40 82 00 68 */	bne .L_814A2E94
/* 814A2E30 | 48 00 00 40 */	b .L_814A2E70
.L_814A2E34:
/* 814A2E34 | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 814A2E38 | 7F C3 F3 78 */	mr r3, r30
/* 814A2E3C | 38 A0 00 00 */	li r5, 0x0
/* 814A2E40 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814A2E44 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A2E48 | 48 00 02 E9 */	bl DeleteMsg
/* 814A2E4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2E50 | 41 82 00 08 */	beq .L_814A2E58
/* 814A2E54 | 48 00 00 4C */	b .L_814A2EA0
.L_814A2E58:
/* 814A2E58 | 7F C3 F3 78 */	mr r3, r30
/* 814A2E5C | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A2E60 | 48 00 0A E9 */	bl GetCachedMBCHeader_814A3948
/* 814A2E64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2E68 | 41 82 00 08 */	beq .L_814A2E70
/* 814A2E6C | 48 00 00 34 */	b .L_814A2EA0
.L_814A2E70:
/* 814A2E70 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814A2E74 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814A2E78 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 814A2E7C | 7C 03 00 40 */	cmplw r3, r0
/* 814A2E80 | 40 80 FF B4 */	bge .L_814A2E34
/* 814A2E84 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814A2E88 | 7C 00 F8 40 */	cmplw r0, r31
/* 814A2E8C | 40 81 FF A8 */	ble .L_814A2E34
/* 814A2E90 | 48 00 00 0C */	b .L_814A2E9C
.L_814A2E94:
/* 814A2E94 | 38 60 FF FD */	li r3, -0x3
/* 814A2E98 | 48 00 00 08 */	b .L_814A2EA0
.L_814A2E9C:
/* 814A2E9C | 38 60 00 00 */	li r3, 0x0
.L_814A2EA0:
/* 814A2EA0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A2EA4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A2EA8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A2EAC | 7C 08 03 A6 */	mtlr r0
/* 814A2EB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A2EB4 | 4E 80 00 20 */	blr
.endfn NWC24iMBoxCheck

# .text:0x13F8 | 0x814A2EB8 | size: 0x68
.fn NWC24iMBoxSetLastUIDL, global
/* 814A2EB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A2EBC | 7C 08 02 A6 */	mflr r0
/* 814A2EC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A2EC4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A2EC8 | 7C 9F 23 78 */	mr r31, r4
/* 814A2ECC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A2ED0 | 48 00 0A 79 */	bl GetCachedMBCHeader_814A3948
/* 814A2ED4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2ED8 | 41 82 00 08 */	beq .L_814A2EE0
/* 814A2EDC | 48 00 00 30 */	b .L_814A2F0C
.L_814A2EE0:
/* 814A2EE0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A2EE4 | 38 80 00 00 */	li r4, 0x0
/* 814A2EE8 | 38 A0 00 28 */	li r5, 0x28
/* 814A2EEC | 38 63 00 58 */	addi r3, r3, 0x58
/* 814A2EF0 | 4B FF 9F 95 */	bl Mail_memset
/* 814A2EF4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A2EF8 | 7F E4 FB 78 */	mr r4, r31
/* 814A2EFC | 38 A0 00 28 */	li r5, 0x28
/* 814A2F00 | 38 63 00 58 */	addi r3, r3, 0x58
/* 814A2F04 | 4B FF A0 01 */	bl Mail_strncpy
/* 814A2F08 | 38 60 00 00 */	li r3, 0x0
.L_814A2F0C:
/* 814A2F0C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A2F10 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A2F14 | 7C 08 03 A6 */	mtlr r0
/* 814A2F18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A2F1C | 4E 80 00 20 */	blr
.endfn NWC24iMBoxSetLastUIDL

# .text:0x1460 | 0x814A2F20 | size: 0x210
.fn CreateCtrlFile, local
/* 814A2F20 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814A2F24 | 7C 08 02 A6 */	mflr r0
/* 814A2F28 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814A2F2C | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814A2F30 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814A2F34 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814A2F38 | 7C 9D 23 78 */	mr r29, r4
/* 814A2F3C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A2F40 | 93 81 00 B0 */	stw r28, 0xb0(r1)
/* 814A2F44 | 7C 7C 1B 78 */	mr r28, r3
/* 814A2F48 | 48 00 0A 01 */	bl GetCachedMBCHeader_814A3948
/* 814A2F4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A2F50 | 40 82 00 0C */	bne .L_814A2F5C
/* 814A2F54 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A2F58 | 41 82 01 B8 */	beq .L_814A3110
.L_814A2F5C:
/* 814A2F5C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A2F60 | 38 80 00 00 */	li r4, 0x0
/* 814A2F64 | 38 A0 01 00 */	li r5, 0x100
/* 814A2F68 | 3B A3 08 00 */	addi r29, r3, 0x800
/* 814A2F6C | 7F A3 EB 78 */	mr r3, r29
/* 814A2F70 | 4B FF 9F 15 */	bl Mail_memset
/* 814A2F74 | 4B FF CA 5D */	bl NWC24GetMBoxDir
/* 814A2F78 | 7C 7F 1B 78 */	mr r31, r3
/* 814A2F7C | 38 80 00 40 */	li r4, 0x40
/* 814A2F80 | 4B FF 9E 21 */	bl STD_strnlen
/* 814A2F84 | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A2F88 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A2F8C | 40 81 00 0C */	ble .L_814A2F98
/* 814A2F90 | 3B E0 FF F5 */	li r31, -0xb
/* 814A2F94 | 48 00 00 68 */	b .L_814A2FFC
.L_814A2F98:
/* 814A2F98 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814A2F9C | 41 82 00 34 */	beq .L_814A2FD0
/* 814A2FA0 | 40 80 00 50 */	bge .L_814A2FF0
/* 814A2FA4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A2FA8 | 40 80 00 08 */	bge .L_814A2FB0
/* 814A2FAC | 48 00 00 44 */	b .L_814A2FF0
.L_814A2FB0:
/* 814A2FB0 | 3C C0 81 67 */	lis r6, lbl_8166D920@ha
/* 814A2FB4 | 7F A3 EB 78 */	mr r3, r29
/* 814A2FB8 | 7F E5 FB 78 */	mr r5, r31
/* 814A2FBC | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A2FC0 | 38 C6 D9 20 */	addi r6, r6, lbl_8166D920@l
/* 814A2FC4 | 4C C6 31 82 */	crclr cr1eq
/* 814A2FC8 | 4B FF A6 89 */	bl Mail_sprintf
/* 814A2FCC | 48 00 00 2C */	b .L_814A2FF8
.L_814A2FD0:
/* 814A2FD0 | 3C C0 81 67 */	lis r6, lbl_8166D930@ha
/* 814A2FD4 | 7F A3 EB 78 */	mr r3, r29
/* 814A2FD8 | 7F E5 FB 78 */	mr r5, r31
/* 814A2FDC | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A2FE0 | 38 C6 D9 30 */	addi r6, r6, lbl_8166D930@l
/* 814A2FE4 | 4C C6 31 82 */	crclr cr1eq
/* 814A2FE8 | 4B FF A6 69 */	bl Mail_sprintf
/* 814A2FEC | 48 00 00 0C */	b .L_814A2FF8
.L_814A2FF0:
/* 814A2FF0 | 3B E0 FF FD */	li r31, -0x3
/* 814A2FF4 | 48 00 00 08 */	b .L_814A2FFC
.L_814A2FF8:
/* 814A2FF8 | 3B E0 00 00 */	li r31, 0x0
.L_814A2FFC:
/* 814A2FFC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A3000 | 41 82 00 0C */	beq .L_814A300C
/* 814A3004 | 7F E3 FB 78 */	mr r3, r31
/* 814A3008 | 48 00 01 08 */	b .L_814A3110
.L_814A300C:
/* 814A300C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A3010 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A3014 | 3B C3 18 00 */	addi r30, r3, 0x1800
/* 814A3018 | 40 82 00 10 */	bne .L_814A3028
/* 814A301C | 38 03 17 00 */	addi r0, r3, 0x1700
/* 814A3020 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814A3024 | 48 00 00 20 */	b .L_814A3044
.L_814A3028:
/* 814A3028 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814A302C | 40 82 00 10 */	bne .L_814A303C
/* 814A3030 | 38 03 17 80 */	addi r0, r3, 0x1780
/* 814A3034 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814A3038 | 48 00 00 0C */	b .L_814A3044
.L_814A303C:
/* 814A303C | 38 60 FF FD */	li r3, -0x3
/* 814A3040 | 48 00 00 D0 */	b .L_814A3110
.L_814A3044:
/* 814A3044 | 7F A4 EB 78 */	mr r4, r29
/* 814A3048 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A304C | 38 A0 00 01 */	li r5, 0x1
/* 814A3050 | 4B FF AB B9 */	bl NWC24FOpen
/* 814A3054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3058 | 40 82 00 B4 */	bne .L_814A310C
/* 814A305C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A3060 | 7F 84 E3 78 */	mr r4, r28
/* 814A3064 | 48 00 0A DD */	bl InitMBCHeader_814A3B40
/* 814A3068 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A306C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A3070 | 38 80 00 80 */	li r4, 0x80
/* 814A3074 | 4B FF B4 41 */	bl NWC24FWrite
/* 814A3078 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A307C | 41 82 00 08 */	beq .L_814A3084
/* 814A3080 | 7F E3 FB 78 */	mr r3, r31
.L_814A3084:
/* 814A3084 | 7C 7F 1B 78 */	mr r31, r3
/* 814A3088 | 7F C3 F3 78 */	mr r3, r30
/* 814A308C | 38 80 00 00 */	li r4, 0x0
/* 814A3090 | 38 A0 00 80 */	li r5, 0x80
/* 814A3094 | 4B FF 9D F1 */	bl Mail_memset
/* 814A3098 | 3B A0 00 80 */	li r29, 0x80
/* 814A309C | 48 00 00 3C */	b .L_814A30D8
.L_814A30A0:
/* 814A30A0 | 38 DD 00 80 */	addi r6, r29, 0x80
/* 814A30A4 | 7F C3 F3 78 */	mr r3, r30
/* 814A30A8 | 7C 06 3B 96 */	divwu r0, r6, r7
/* 814A30AC | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A30B0 | 38 80 00 80 */	li r4, 0x80
/* 814A30B4 | 7C 00 39 D6 */	mullw r0, r0, r7
/* 814A30B8 | 7C 00 30 50 */	subf r0, r0, r6
/* 814A30BC | 90 1E 00 0C */	stw r0, 0xc(r30)
/* 814A30C0 | 4B FF B3 F5 */	bl NWC24FWrite
/* 814A30C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A30C8 | 41 82 00 08 */	beq .L_814A30D0
/* 814A30CC | 7F E3 FB 78 */	mr r3, r31
.L_814A30D0:
/* 814A30D0 | 7C 7F 1B 78 */	mr r31, r3
/* 814A30D4 | 3B BD 00 80 */	addi r29, r29, 0x80
.L_814A30D8:
/* 814A30D8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A30DC | 80 E3 00 14 */	lwz r7, 0x14(r3)
/* 814A30E0 | 7C 1D 38 40 */	cmplw r29, r7
/* 814A30E4 | 41 80 FF BC */	blt .L_814A30A0
/* 814A30E8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A30EC | 4B FF AE 71 */	bl NWC24FClose
/* 814A30F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A30F4 | 41 82 00 08 */	beq .L_814A30FC
/* 814A30F8 | 7F E3 FB 78 */	mr r3, r31
.L_814A30FC:
/* 814A30FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3100 | 40 82 00 10 */	bne .L_814A3110
/* 814A3104 | 38 60 00 01 */	li r3, 0x1
/* 814A3108 | 48 00 00 08 */	b .L_814A3110
.L_814A310C:
/* 814A310C | 38 60 FF FF */	li r3, -0x1
.L_814A3110:
/* 814A3110 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814A3114 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814A3118 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814A311C | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814A3120 | 83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 814A3124 | 7C 08 03 A6 */	mtlr r0
/* 814A3128 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814A312C | 4E 80 00 20 */	blr
.endfn CreateCtrlFile

# .text:0x1670 | 0x814A3130 | size: 0x4A0
.fn DeleteMsg, local
/* 814A3130 | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 814A3134 | 7C 08 02 A6 */	mflr r0
/* 814A3138 | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 814A313C | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 814A3140 | 48 15 63 65 */	bl _savegpr_20
/* 814A3144 | 3F E0 81 67 */	lis r31, lbl_8166D920@ha
/* 814A3148 | 7C 76 1B 78 */	mr r22, r3
/* 814A314C | 7C 97 23 78 */	mr r23, r4
/* 814A3150 | 7C B8 2B 78 */	mr r24, r5
/* 814A3154 | 3B FF D9 20 */	addi r31, r31, lbl_8166D920@l
/* 814A3158 | 3B A0 00 00 */	li r29, 0x0
/* 814A315C | 3B 60 00 00 */	li r27, 0x0
/* 814A3160 | 3B 40 00 00 */	li r26, 0x0
/* 814A3164 | 4B FF D1 95 */	bl NWC24IsMsgLibOpened
/* 814A3168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A316C | 40 82 00 18 */	bne .L_814A3184
/* 814A3170 | 4B FF D1 9D */	bl NWC24IsMsgLibOpenedByTool
/* 814A3174 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3178 | 40 82 00 0C */	bne .L_814A3184
/* 814A317C | 38 60 FF F7 */	li r3, -0x9
/* 814A3180 | 48 00 04 38 */	b .L_814A35B8
.L_814A3184:
/* 814A3184 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814A3188 | 7E C3 B3 78 */	mr r3, r22
/* 814A318C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814A3190 | 3B 25 18 00 */	addi r25, r5, 0x1800
/* 814A3194 | 48 00 07 B5 */	bl GetCachedMBCHeader_814A3948
/* 814A3198 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A319C | 41 82 00 08 */	beq .L_814A31A4
/* 814A31A0 | 48 00 04 18 */	b .L_814A35B8
.L_814A31A4:
/* 814A31A4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A31A8 | 3A A3 08 00 */	addi r21, r3, 0x800
/* 814A31AC | 4B FF C8 25 */	bl NWC24GetMBoxDir
/* 814A31B0 | 7C 74 1B 78 */	mr r20, r3
/* 814A31B4 | 38 80 00 40 */	li r4, 0x40
/* 814A31B8 | 4B FF 9B E9 */	bl STD_strnlen
/* 814A31BC | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A31C0 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A31C4 | 40 81 00 0C */	ble .L_814A31D0
/* 814A31C8 | 38 60 FF F5 */	li r3, -0xb
/* 814A31CC | 48 00 00 60 */	b .L_814A322C
.L_814A31D0:
/* 814A31D0 | 2C 16 00 01 */	cmpwi r22, 0x1
/* 814A31D4 | 41 82 00 30 */	beq .L_814A3204
/* 814A31D8 | 40 80 00 48 */	bge .L_814A3220
/* 814A31DC | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814A31E0 | 40 80 00 08 */	bge .L_814A31E8
/* 814A31E4 | 48 00 00 3C */	b .L_814A3220
.L_814A31E8:
/* 814A31E8 | 7E A3 AB 78 */	mr r3, r21
/* 814A31EC | 7E 85 A3 78 */	mr r5, r20
/* 814A31F0 | 38 DF 00 00 */	addi r6, r31, 0x0
/* 814A31F4 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A31F8 | 4C C6 31 82 */	crclr cr1eq
/* 814A31FC | 4B FF A4 55 */	bl Mail_sprintf
/* 814A3200 | 48 00 00 28 */	b .L_814A3228
.L_814A3204:
/* 814A3204 | 7E A3 AB 78 */	mr r3, r21
/* 814A3208 | 7E 85 A3 78 */	mr r5, r20
/* 814A320C | 38 DF 00 10 */	addi r6, r31, 0x10
/* 814A3210 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A3214 | 4C C6 31 82 */	crclr cr1eq
/* 814A3218 | 4B FF A4 39 */	bl Mail_sprintf
/* 814A321C | 48 00 00 0C */	b .L_814A3228
.L_814A3220:
/* 814A3220 | 38 60 FF FD */	li r3, -0x3
/* 814A3224 | 48 00 00 08 */	b .L_814A322C
.L_814A3228:
/* 814A3228 | 38 60 00 00 */	li r3, 0x0
.L_814A322C:
/* 814A322C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3230 | 41 82 00 08 */	beq .L_814A3238
/* 814A3234 | 48 00 03 84 */	b .L_814A35B8
.L_814A3238:
/* 814A3238 | 7E A4 AB 78 */	mr r4, r21
/* 814A323C | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A3240 | 38 A0 00 04 */	li r5, 0x4
/* 814A3244 | 4B FF A9 C5 */	bl NWC24FOpen
/* 814A3248 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A324C | 41 82 00 08 */	beq .L_814A3254
/* 814A3250 | 48 00 03 68 */	b .L_814A35B8
.L_814A3254:
/* 814A3254 | 3B C0 FF F3 */	li r30, -0xd
/* 814A3258 | 3B 80 00 80 */	li r28, 0x80
/* 814A325C | 3E A0 00 02 */	lis r21, 0x2
/* 814A3260 | 3E 80 00 0E */	lis r20, 0xe
/* 814A3264 | 48 00 01 54 */	b .L_814A33B8
.L_814A3268:
/* 814A3268 | 7F 84 E3 78 */	mr r4, r28
/* 814A326C | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A3270 | 38 A0 00 00 */	li r5, 0x0
/* 814A3274 | 4B FF AE 81 */	bl NWC24FSeek
/* 814A3278 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A327C | 41 82 00 0C */	beq .L_814A3288
/* 814A3280 | 7C 7E 1B 78 */	mr r30, r3
/* 814A3284 | 48 00 01 44 */	b .L_814A33C8
.L_814A3288:
/* 814A3288 | 7F 23 CB 78 */	mr r3, r25
/* 814A328C | 38 A1 00 14 */	addi r5, r1, 0x14
/* 814A3290 | 38 80 00 80 */	li r4, 0x80
/* 814A3294 | 4B FF B0 51 */	bl NWC24FRead
/* 814A3298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A329C | 41 82 00 0C */	beq .L_814A32A8
/* 814A32A0 | 7C 7E 1B 78 */	mr r30, r3
/* 814A32A4 | 48 00 01 24 */	b .L_814A33C8
.L_814A32A8:
/* 814A32A8 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 814A32AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A32B0 | 41 82 01 04 */	beq .L_814A33B4
/* 814A32B4 | 7C 03 B8 40 */	cmplw r3, r23
/* 814A32B8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814A32BC | 40 82 00 84 */	bne .L_814A3340
/* 814A32C0 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814A32C4 | 41 82 00 70 */	beq .L_814A3334
/* 814A32C8 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814A32CC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814A32D0 | 41 82 00 28 */	beq .L_814A32F8
/* 814A32D4 | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 814A32D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A32DC | 40 82 00 1C */	bne .L_814A32F8
/* 814A32E0 | 4B FF C7 61 */	bl NWC24GetAppId
/* 814A32E4 | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 814A32E8 | 28 00 45 41 */	cmplwi r0, 0x4541
/* 814A32EC | 41 82 00 48 */	beq .L_814A3334
/* 814A32F0 | 3B C0 FF F9 */	li r30, -0x7
/* 814A32F4 | 48 00 00 D4 */	b .L_814A33C8
.L_814A32F8:
/* 814A32F8 | 4B FF C7 49 */	bl NWC24GetAppId
/* 814A32FC | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 814A3300 | 54 63 00 2E */	clrrwi r3, r3, 8
/* 814A3304 | 54 00 00 2E */	clrrwi r0, r0, 8
/* 814A3308 | 7C 00 18 40 */	cmplw r0, r3
/* 814A330C | 41 82 00 28 */	beq .L_814A3334
/* 814A3310 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814A3314 | 54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 814A3318 | 41 82 00 14 */	beq .L_814A332C
/* 814A331C | 4B FF C7 25 */	bl NWC24GetAppId
/* 814A3320 | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 814A3324 | 28 00 45 41 */	cmplwi r0, 0x4541
/* 814A3328 | 41 82 00 0C */	beq .L_814A3334
.L_814A332C:
/* 814A332C | 3B C0 FF F9 */	li r30, -0x7
/* 814A3330 | 48 00 00 98 */	b .L_814A33C8
.L_814A3334:
/* 814A3334 | 7F 9B E3 78 */	mr r27, r28
/* 814A3338 | 3B C0 00 00 */	li r30, 0x0
/* 814A333C | 48 00 00 78 */	b .L_814A33B4
.L_814A3340:
/* 814A3340 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814A3344 | 41 82 00 6C */	beq .L_814A33B0
/* 814A3348 | 7C 1A 18 40 */	cmplw r26, r3
/* 814A334C | 40 82 00 0C */	bne .L_814A3358
/* 814A3350 | 38 00 00 00 */	li r0, 0x0
/* 814A3354 | 48 00 00 54 */	b .L_814A33A8
.L_814A3358:
/* 814A3358 | 38 14 BB A0 */	subi r0, r20, 0x4460
/* 814A335C | 7C 1A 00 40 */	cmplw r26, r0
/* 814A3360 | 40 81 00 18 */	ble .L_814A3378
/* 814A3364 | 38 15 86 A0 */	subi r0, r21, 0x7960
/* 814A3368 | 7C 03 00 40 */	cmplw r3, r0
/* 814A336C | 40 80 00 0C */	bge .L_814A3378
/* 814A3370 | 38 00 FF FF */	li r0, -0x1
/* 814A3374 | 48 00 00 34 */	b .L_814A33A8
.L_814A3378:
/* 814A3378 | 38 15 86 A0 */	subi r0, r21, 0x7960
/* 814A337C | 7C 1A 00 40 */	cmplw r26, r0
/* 814A3380 | 40 80 00 18 */	bge .L_814A3398
/* 814A3384 | 38 14 BB A0 */	subi r0, r20, 0x4460
/* 814A3388 | 7C 03 00 40 */	cmplw r3, r0
/* 814A338C | 40 81 00 0C */	ble .L_814A3398
/* 814A3390 | 38 00 00 01 */	li r0, 0x1
/* 814A3394 | 48 00 00 14 */	b .L_814A33A8
.L_814A3398:
/* 814A3398 | 7C 1A 18 40 */	cmplw r26, r3
/* 814A339C | 38 00 FF FF */	li r0, -0x1
/* 814A33A0 | 40 81 00 08 */	ble .L_814A33A8
/* 814A33A4 | 38 00 00 01 */	li r0, 0x1
.L_814A33A8:
/* 814A33A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A33AC | 40 81 00 08 */	ble .L_814A33B4
.L_814A33B0:
/* 814A33B0 | 7C 7A 1B 78 */	mr r26, r3
.L_814A33B4:
/* 814A33B4 | 3B 9C 00 80 */	addi r28, r28, 0x80
.L_814A33B8:
/* 814A33B8 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814A33BC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814A33C0 | 7C 1C 00 40 */	cmplw r28, r0
/* 814A33C4 | 41 80 FE A4 */	blt .L_814A3268
.L_814A33C8:
/* 814A33C8 | 2C 1E FF F3 */	cmpwi r30, -0xd
/* 814A33CC | 40 82 00 44 */	bne .L_814A3410
/* 814A33D0 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814A33D4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814A33D8 | 7C 00 E8 40 */	cmplw r0, r29
/* 814A33DC | 41 82 00 34 */	beq .L_814A3410
/* 814A33E0 | 93 A3 00 08 */	stw r29, 0x8(r3)
/* 814A33E4 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A33E8 | 38 80 00 00 */	li r4, 0x0
/* 814A33EC | 38 A0 00 00 */	li r5, 0x0
/* 814A33F0 | 82 81 00 10 */	lwz r20, 0x10(r1)
/* 814A33F4 | 4B FF AD 01 */	bl NWC24FSeek
/* 814A33F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A33FC | 40 82 00 14 */	bne .L_814A3410
/* 814A3400 | 7E 83 A3 78 */	mr r3, r20
/* 814A3404 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 814A3408 | 38 80 00 80 */	li r4, 0x80
/* 814A340C | 4B FF B0 A9 */	bl NWC24FWrite
.L_814A3410:
/* 814A3410 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A3414 | 41 82 00 20 */	beq .L_814A3434
/* 814A3418 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A341C | 4B FF AB 41 */	bl NWC24FClose
/* 814A3420 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814A3424 | 40 82 00 08 */	bne .L_814A342C
/* 814A3428 | 3B C0 FF FD */	li r30, -0x3
.L_814A342C:
/* 814A342C | 7F C3 F3 78 */	mr r3, r30
/* 814A3430 | 48 00 01 88 */	b .L_814A35B8
.L_814A3434:
/* 814A3434 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814A3438 | 7F 65 DB 78 */	mr r5, r27
/* 814A343C | 38 81 00 14 */	addi r4, r1, 0x14
/* 814A3440 | 93 43 00 20 */	stw r26, 0x20(r3)
/* 814A3444 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814A3448 | 48 00 09 A1 */	bl ClearMBCEntry_814A3DE8
/* 814A344C | 7C 78 1B 78 */	mr r24, r3
/* 814A3450 | 7E C3 B3 78 */	mr r3, r22
/* 814A3454 | 48 00 0A 81 */	bl MountVFMBox_814A3ED4
/* 814A3458 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A345C | 41 82 00 08 */	beq .L_814A3464
/* 814A3460 | 48 00 00 F4 */	b .L_814A3554
.L_814A3464:
/* 814A3464 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A3468 | 2C 16 00 01 */	cmpwi r22, 0x1
/* 814A346C | 3A 83 08 00 */	addi r20, r3, 0x800
/* 814A3470 | 41 82 00 2C */	beq .L_814A349C
/* 814A3474 | 40 80 00 40 */	bge .L_814A34B4
/* 814A3478 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814A347C | 40 80 00 08 */	bge .L_814A3484
/* 814A3480 | 48 00 00 34 */	b .L_814A34B4
.L_814A3484:
/* 814A3484 | 7E 83 A3 78 */	mr r3, r20
/* 814A3488 | 7E E5 BB 78 */	mr r5, r23
/* 814A348C | 38 9F 00 80 */	addi r4, r31, 0x80
/* 814A3490 | 4C C6 31 82 */	crclr cr1eq
/* 814A3494 | 4B FF A1 BD */	bl Mail_sprintf
/* 814A3498 | 48 00 00 24 */	b .L_814A34BC
.L_814A349C:
/* 814A349C | 7E 83 A3 78 */	mr r3, r20
/* 814A34A0 | 7E E5 BB 78 */	mr r5, r23
/* 814A34A4 | 38 9F 00 94 */	addi r4, r31, 0x94
/* 814A34A8 | 4C C6 31 82 */	crclr cr1eq
/* 814A34AC | 4B FF A1 A5 */	bl Mail_sprintf
/* 814A34B0 | 48 00 00 0C */	b .L_814A34BC
.L_814A34B4:
/* 814A34B4 | 38 60 FF FD */	li r3, -0x3
/* 814A34B8 | 48 00 00 08 */	b .L_814A34C0
.L_814A34BC:
/* 814A34BC | 38 60 00 00 */	li r3, 0x0
.L_814A34C0:
/* 814A34C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A34C4 | 41 82 00 08 */	beq .L_814A34CC
/* 814A34C8 | 48 00 00 8C */	b .L_814A3554
.L_814A34CC:
/* 814A34CC | 7E 83 A3 78 */	mr r3, r20
/* 814A34D0 | 4B FF B2 B9 */	bl NWC24FDeleteVF
/* 814A34D4 | 80 8D AD B8 */	lwz r4, MountInfo_81698DF8@sda21(r0)
/* 814A34D8 | 7C 74 1B 78 */	mr r20, r3
/* 814A34DC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A34E0 | 40 82 00 0C */	bne .L_814A34EC
/* 814A34E4 | 38 60 00 00 */	li r3, 0x0
/* 814A34E8 | 48 00 00 60 */	b .L_814A3548
.L_814A34EC:
/* 814A34EC | 34 04 FF FF */	subic. r0, r4, 0x1
/* 814A34F0 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A34F4 | 40 81 00 0C */	ble .L_814A3500
/* 814A34F8 | 38 60 00 00 */	li r3, 0x0
/* 814A34FC | 48 00 00 4C */	b .L_814A3548
.L_814A3500:
/* 814A3500 | 38 6D AD B8 */	li r3, MountInfo_81698DF8@sda21
/* 814A3504 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A3508 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814A350C | 48 00 04 3D */	bl GetCachedMBCHeader_814A3948
/* 814A3510 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3514 | 41 82 00 08 */	beq .L_814A351C
/* 814A3518 | 48 00 00 30 */	b .L_814A3548
.L_814A351C:
/* 814A351C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A3520 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A3524 | 4B FF B4 D1 */	bl NWC24CheckSizeVF
/* 814A3528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A352C | 41 82 00 08 */	beq .L_814A3534
/* 814A3530 | 48 00 00 18 */	b .L_814A3548
.L_814A3534:
/* 814A3534 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A3538 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A353C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814A3540 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814A3544 | 4B FF B4 31 */	bl NWC24UnmountVF
.L_814A3548:
/* 814A3548 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814A354C | 41 82 00 08 */	beq .L_814A3554
/* 814A3550 | 7E 83 A3 78 */	mr r3, r20
.L_814A3554:
/* 814A3554 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814A3558 | 7C 75 1B 78 */	mr r21, r3
/* 814A355C | 41 82 00 08 */	beq .L_814A3564
/* 814A3560 | 7F 15 C3 78 */	mr r21, r24
.L_814A3564:
/* 814A3564 | 82 81 00 10 */	lwz r20, 0x10(r1)
/* 814A3568 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A356C | 38 80 00 00 */	li r4, 0x0
/* 814A3570 | 38 A0 00 00 */	li r5, 0x0
/* 814A3574 | 4B FF AB 81 */	bl NWC24FSeek
/* 814A3578 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A357C | 41 82 00 08 */	beq .L_814A3584
/* 814A3580 | 48 00 00 14 */	b .L_814A3594
.L_814A3584:
/* 814A3584 | 7E 83 A3 78 */	mr r3, r20
/* 814A3588 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 814A358C | 38 80 00 80 */	li r4, 0x80
/* 814A3590 | 4B FF AF 25 */	bl NWC24FWrite
.L_814A3594:
/* 814A3594 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814A3598 | 7C 76 1B 78 */	mr r22, r3
/* 814A359C | 41 82 00 08 */	beq .L_814A35A4
/* 814A35A0 | 7E B6 AB 78 */	mr r22, r21
.L_814A35A4:
/* 814A35A4 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A35A8 | 4B FF A9 B5 */	bl NWC24FClose
/* 814A35AC | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814A35B0 | 41 82 00 08 */	beq .L_814A35B8
/* 814A35B4 | 7E C3 B3 78 */	mr r3, r22
.L_814A35B8:
/* 814A35B8 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 814A35BC | 48 15 5F 35 */	bl _restgpr_20
/* 814A35C0 | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 814A35C4 | 7C 08 03 A6 */	mtlr r0
/* 814A35C8 | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 814A35CC | 4E 80 00 20 */	blr
.endfn DeleteMsg

# 0x8166D920..0x8166D9C8 | size: 0xA8
.data
.balign 8

# .data:0x0 | 0x8166D920 | size: 0x10
.obj lbl_8166D920, global
	.4byte 0x2F776332
	.4byte 0x3473656E
	.4byte 0x642E6374
	.4byte 0x6C000000
.endobj lbl_8166D920

# .data:0x10 | 0x8166D930 | size: 0x10
.obj lbl_8166D930, global
	.4byte 0x2F776332
	.4byte 0x34726563
	.4byte 0x762E6374
	.4byte 0x6C000000
.endobj lbl_8166D930

# .data:0x20 | 0x8166D940 | size: 0x10
.obj lbl_8166D940, global
	.4byte 0x2F776332
	.4byte 0x34726563
	.4byte 0x762E6D62
	.4byte 0x78000000
.endobj lbl_8166D940

# .data:0x30 | 0x8166D950 | size: 0x50
.obj lbl_8166D950, global
	.4byte 0x2F776332
	.4byte 0x3473656E
	.4byte 0x642E6D62
	.4byte 0x78000000
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F776332
	.4byte 0x342F6D62
	.4byte 0x6F782F72
	.4byte 0x65637674
	.4byte 0x6D702E6D
	.4byte 0x73670000
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F776332
	.4byte 0x342F6D62
	.4byte 0x6F782F64
	.4byte 0x6C636E74
	.4byte 0x2E62696E
	.4byte 0x00000000
.endobj lbl_8166D950

# .data:0x80 | 0x8166D9A0 | size: 0x14
.obj lbl_8166D9A0, global
	.4byte 0x4032343A
	.4byte 0x2F6D622F
	.4byte 0x73253037
	.4byte 0x642E6D73
	.4byte 0x67000000
.endobj lbl_8166D9A0

# .data:0x94 | 0x8166D9B4 | size: 0x14
.obj lbl_8166D9B4, global
	.4byte 0x4032343A
	.4byte 0x2F6D622F
	.4byte 0x72253037
	.4byte 0x642E6D73
	.4byte 0x67000000
.endobj lbl_8166D9B4

# 0x81697B68..0x81697B78 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697B68 | size: 0x8
.obj lbl_81697B68, global
	.4byte 0x25732573
	.4byte 0x00000000
.endobj lbl_81697B68

# .sdata:0x8 | 0x81697B70 | size: 0x8
.obj lbl_81697B70, global
	.4byte 0x40323400
	.4byte 0x00000000
.endobj lbl_81697B70

# 0x81698DF8..0x81698E00 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698DF8 | size: 0x8
.obj MountInfo_81698DF8, global
	.skip 0x8
.endobj MountInfo_81698DF8
