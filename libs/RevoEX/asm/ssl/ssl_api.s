.include "macros.inc"
.file "ssl_api.c"

# 0x810C9C00..0x810CCC20 | size: 0x3020
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C9C00 | size: 0x18
.obj l_mutex, local
	.skip 0x18
.endobj l_mutex

# .bss:0x18 | 0x810C9C18 | size: 0x8
.obj gap_00_810C9C18_bss, global
.hidden gap_00_810C9C18_bss
	.skip 0x8
.endobj gap_00_810C9C18_bss

# .bss:0x20 | 0x810C9C20 | size: 0x1000
.obj l_cert_data, local
	.skip 0x1000
.endobj l_cert_data

# .bss:0x1020 | 0x810CAC20 | size: 0x1000
.obj l_private_key_data, local
	.skip 0x1000
.endobj l_private_key_data

# .bss:0x2020 | 0x810CBC20 | size: 0x1000
.obj l_root_ca, local
	.skip 0x1000
.endobj l_root_ca

# 0x814B4A70..0x814B57BC | size: 0xD4C
.text
.balign 4

# .text:0x0 | 0x814B4A70 | size: 0x158
.fn SSLNew, global
/* 814B4A70 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B4A74 | 7C 2C 0B 78 */	mr r12, r1
/* 814B4A78 | 21 6B FE 60 */	subfic r11, r11, -0x1a0
/* 814B4A7C | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B4A80 | 7C 08 02 A6 */	mflr r0
/* 814B4A84 | 3C A0 81 67 */	lis r5, lbl_8166E4E0@ha
/* 814B4A88 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B4A8C | 93 EC FF FC */	stw r31, -0x4(r12)
/* 814B4A90 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 814B4A94 | 93 AC FF F4 */	stw r29, -0xc(r12)
/* 814B4A98 | 7C 9D 23 78 */	mr r29, r4
/* 814B4A9C | 38 80 00 00 */	li r4, 0x0
/* 814B4AA0 | 93 8C FF F0 */	stw r28, -0x10(r12)
/* 814B4AA4 | 7C 7C 1B 78 */	mr r28, r3
/* 814B4AA8 | 38 65 E4 E0 */	addi r3, r5, lbl_8166E4E0@l
/* 814B4AAC | 48 0B E0 65 */	bl IOS_Open
/* 814B4AB0 | 80 0D AE 28 */	lwz r0, sslRegistered@sda21(r0)
/* 814B4AB4 | 7C 7F 1B 78 */	mr r31, r3
/* 814B4AB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B4ABC | 40 82 00 14 */	bne .L_814B4AD0
/* 814B4AC0 | 80 6D 9C A0 */	lwz r3, __SSLVersion@sda21(r0)
/* 814B4AC4 | 48 07 7D 15 */	bl OSRegisterVersion
/* 814B4AC8 | 38 00 00 01 */	li r0, 0x1
/* 814B4ACC | 90 0D AE 28 */	stw r0, sslRegistered@sda21(r0)
.L_814B4AD0:
/* 814B4AD0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B4AD4 | 40 80 00 0C */	bge .L_814B4AE0
/* 814B4AD8 | 38 60 FF FF */	li r3, -0x1
/* 814B4ADC | 48 00 00 C8 */	b .L_814B4BA4
.L_814B4AE0:
/* 814B4AE0 | 7F A3 EB 78 */	mr r3, r29
/* 814B4AE4 | 38 80 00 00 */	li r4, 0x0
/* 814B4AE8 | 48 00 00 0C */	b .L_814B4AF4
.L_814B4AEC:
/* 814B4AEC | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B4AF0 | 38 63 00 01 */	addi r3, r3, 0x1
.L_814B4AF4:
/* 814B4AF4 | 28 04 01 00 */	cmplwi r4, 0x100
/* 814B4AF8 | 40 80 00 10 */	bge .L_814B4B08
/* 814B4AFC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814B4B00 | 7C 00 07 75 */	extsb. r0, r0
/* 814B4B04 | 40 82 FF E8 */	bne .L_814B4AEC
.L_814B4B08:
/* 814B4B08 | 7F DD 18 51 */	subf. r30, r29, r3
/* 814B4B0C | 40 82 00 0C */	bne .L_814B4B18
/* 814B4B10 | 38 60 FF FF */	li r3, -0x1
/* 814B4B14 | 48 00 00 90 */	b .L_814B4BA4
.L_814B4B18:
/* 814B4B18 | 38 61 00 80 */	addi r3, r1, 0x80
/* 814B4B1C | 38 80 00 00 */	li r4, 0x0
/* 814B4B20 | 38 A0 01 00 */	li r5, 0x100
/* 814B4B24 | 4B E7 B8 11 */	bl memset
/* 814B4B28 | 28 1E 01 00 */	cmplwi r30, 0x100
/* 814B4B2C | 40 81 00 08 */	ble .L_814B4B34
/* 814B4B30 | 3B C0 01 00 */	li r30, 0x100
.L_814B4B34:
/* 814B4B34 | 7F A4 EB 78 */	mr r4, r29
/* 814B4B38 | 7F C5 F3 78 */	mr r5, r30
/* 814B4B3C | 38 61 00 80 */	addi r3, r1, 0x80
/* 814B4B40 | 4B E7 B6 F1 */	bl memcpy
/* 814B4B44 | 39 40 00 20 */	li r10, 0x20
/* 814B4B48 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814B4B4C | 39 21 00 20 */	addi r9, r1, 0x20
/* 814B4B50 | 39 01 00 80 */	addi r8, r1, 0x80
/* 814B4B54 | 38 60 FF FF */	li r3, -0x1
/* 814B4B58 | 38 00 01 00 */	li r0, 0x100
/* 814B4B5C | 90 61 00 40 */	stw r3, 0x40(r1)
/* 814B4B60 | 7F E3 FB 78 */	mr r3, r31
/* 814B4B64 | 38 E1 00 60 */	addi r7, r1, 0x60
/* 814B4B68 | 38 80 00 01 */	li r4, 0x1
/* 814B4B6C | 93 81 00 20 */	stw r28, 0x20(r1)
/* 814B4B70 | 38 A0 00 01 */	li r5, 0x1
/* 814B4B74 | 38 C0 00 02 */	li r6, 0x2
/* 814B4B78 | 91 61 00 60 */	stw r11, 0x60(r1)
/* 814B4B7C | 91 41 00 64 */	stw r10, 0x64(r1)
/* 814B4B80 | 91 21 00 68 */	stw r9, 0x68(r1)
/* 814B4B84 | 91 41 00 6C */	stw r10, 0x6c(r1)
/* 814B4B88 | 91 01 00 70 */	stw r8, 0x70(r1)
/* 814B4B8C | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814B4B90 | 48 0B EC 69 */	bl IOS_Ioctlv
/* 814B4B94 | 7F E3 FB 78 */	mr r3, r31
/* 814B4B98 | 48 0B E1 59 */	bl fn_81572CF0
/* 814B4B9C | 80 61 00 60 */	lwz r3, 0x60(r1)
/* 814B4BA0 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_814B4BA4:
/* 814B4BA4 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B4BA8 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B4BAC | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 814B4BB0 | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 814B4BB4 | 83 AA FF F4 */	lwz r29, -0xc(r10)
/* 814B4BB8 | 83 8A FF F0 */	lwz r28, -0x10(r10)
/* 814B4BBC | 7C 08 03 A6 */	mtlr r0
/* 814B4BC0 | 7D 41 53 78 */	mr r1, r10
/* 814B4BC4 | 4E 80 00 20 */	blr
.endfn SSLNew

# .text:0x158 | 0x814B4BC8 | size: 0xC8
.fn SSLConnect, global
/* 814B4BC8 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B4BCC | 7C 2C 0B 78 */	mr r12, r1
/* 814B4BD0 | 21 6B FF 40 */	subfic r11, r11, -0xc0
/* 814B4BD4 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B4BD8 | 7C 08 02 A6 */	mflr r0
/* 814B4BDC | 3C A0 81 67 */	lis r5, lbl_8166E4E0@ha
/* 814B4BE0 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B4BE4 | 93 EC FF FC */	stw r31, -0x4(r12)
/* 814B4BE8 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 814B4BEC | 7C 9E 23 78 */	mr r30, r4
/* 814B4BF0 | 38 80 00 00 */	li r4, 0x0
/* 814B4BF4 | 93 AC FF F4 */	stw r29, -0xc(r12)
/* 814B4BF8 | 7C 7D 1B 78 */	mr r29, r3
/* 814B4BFC | 38 65 E4 E0 */	addi r3, r5, lbl_8166E4E0@l
/* 814B4C00 | 48 0B DF 11 */	bl IOS_Open
/* 814B4C04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B4C08 | 7C 7F 1B 78 */	mr r31, r3
/* 814B4C0C | 40 80 00 0C */	bge .L_814B4C18
/* 814B4C10 | 38 60 FF FF */	li r3, -0x1
/* 814B4C14 | 48 00 00 5C */	b .L_814B4C70
.L_814B4C18:
/* 814B4C18 | 39 20 00 20 */	li r9, 0x20
/* 814B4C1C | 39 41 00 20 */	addi r10, r1, 0x20
/* 814B4C20 | 39 01 00 60 */	addi r8, r1, 0x60
/* 814B4C24 | 38 01 00 40 */	addi r0, r1, 0x40
/* 814B4C28 | 39 60 FF FF */	li r11, -0x1
/* 814B4C2C | 93 A1 00 60 */	stw r29, 0x60(r1)
/* 814B4C30 | 38 E1 00 80 */	addi r7, r1, 0x80
/* 814B4C34 | 38 80 00 02 */	li r4, 0x2
/* 814B4C38 | 93 C1 00 40 */	stw r30, 0x40(r1)
/* 814B4C3C | 38 A0 00 01 */	li r5, 0x1
/* 814B4C40 | 38 C0 00 02 */	li r6, 0x2
/* 814B4C44 | 91 61 00 20 */	stw r11, 0x20(r1)
/* 814B4C48 | 91 41 00 80 */	stw r10, 0x80(r1)
/* 814B4C4C | 91 21 00 84 */	stw r9, 0x84(r1)
/* 814B4C50 | 91 01 00 88 */	stw r8, 0x88(r1)
/* 814B4C54 | 91 21 00 8C */	stw r9, 0x8c(r1)
/* 814B4C58 | 90 01 00 90 */	stw r0, 0x90(r1)
/* 814B4C5C | 91 21 00 94 */	stw r9, 0x94(r1)
/* 814B4C60 | 48 0B EB 99 */	bl IOS_Ioctlv
/* 814B4C64 | 7F E3 FB 78 */	mr r3, r31
/* 814B4C68 | 48 0B E0 89 */	bl fn_81572CF0
/* 814B4C6C | 80 61 00 20 */	lwz r3, 0x20(r1)
.L_814B4C70:
/* 814B4C70 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B4C74 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B4C78 | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 814B4C7C | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 814B4C80 | 83 AA FF F4 */	lwz r29, -0xc(r10)
/* 814B4C84 | 7C 08 03 A6 */	mtlr r0
/* 814B4C88 | 7D 41 53 78 */	mr r1, r10
/* 814B4C8C | 4E 80 00 20 */	blr
.endfn SSLConnect

# .text:0x220 | 0x814B4C90 | size: 0xAC
.fn SSLDoHandshake, global
/* 814B4C90 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B4C94 | 7C 2C 0B 78 */	mr r12, r1
/* 814B4C98 | 21 6B FF 60 */	subfic r11, r11, -0xa0
/* 814B4C9C | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B4CA0 | 7C 08 02 A6 */	mflr r0
/* 814B4CA4 | 3C 80 81 67 */	lis r4, lbl_8166E4E0@ha
/* 814B4CA8 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B4CAC | 93 EC FF FC */	stw r31, -0x4(r12)
/* 814B4CB0 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 814B4CB4 | 7C 7E 1B 78 */	mr r30, r3
/* 814B4CB8 | 38 64 E4 E0 */	addi r3, r4, lbl_8166E4E0@l
/* 814B4CBC | 38 80 00 00 */	li r4, 0x0
/* 814B4CC0 | 48 0B DE 51 */	bl IOS_Open
/* 814B4CC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B4CC8 | 7C 7F 1B 78 */	mr r31, r3
/* 814B4CCC | 40 80 00 0C */	bge .L_814B4CD8
/* 814B4CD0 | 38 60 FF FF */	li r3, -0x1
/* 814B4CD4 | 48 00 00 4C */	b .L_814B4D20
.L_814B4CD8:
/* 814B4CD8 | 39 00 00 20 */	li r8, 0x20
/* 814B4CDC | 39 21 00 20 */	addi r9, r1, 0x20
/* 814B4CE0 | 38 01 00 40 */	addi r0, r1, 0x40
/* 814B4CE4 | 38 C0 FF FF */	li r6, -0x1
/* 814B4CE8 | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 814B4CEC | 38 E1 00 60 */	addi r7, r1, 0x60
/* 814B4CF0 | 38 80 00 03 */	li r4, 0x3
/* 814B4CF4 | 38 A0 00 01 */	li r5, 0x1
/* 814B4CF8 | 93 C1 00 40 */	stw r30, 0x40(r1)
/* 814B4CFC | 38 C0 00 01 */	li r6, 0x1
/* 814B4D00 | 91 21 00 60 */	stw r9, 0x60(r1)
/* 814B4D04 | 91 01 00 64 */	stw r8, 0x64(r1)
/* 814B4D08 | 90 01 00 68 */	stw r0, 0x68(r1)
/* 814B4D0C | 91 01 00 6C */	stw r8, 0x6c(r1)
/* 814B4D10 | 48 0B EA E9 */	bl IOS_Ioctlv
/* 814B4D14 | 7F E3 FB 78 */	mr r3, r31
/* 814B4D18 | 48 0B DF D9 */	bl fn_81572CF0
/* 814B4D1C | 80 61 00 20 */	lwz r3, 0x20(r1)
.L_814B4D20:
/* 814B4D20 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B4D24 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B4D28 | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 814B4D2C | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 814B4D30 | 7C 08 03 A6 */	mtlr r0
/* 814B4D34 | 7D 41 53 78 */	mr r1, r10
/* 814B4D38 | 4E 80 00 20 */	blr
.endfn SSLDoHandshake

# .text:0x2CC | 0x814B4D3C | size: 0x2D0
.fn SSLRead, global
/* 814B4D3C | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B4D40 | 7C 2C 0B 78 */	mr r12, r1
/* 814B4D44 | 21 6B FE 80 */	subfic r11, r11, -0x180
/* 814B4D48 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B4D4C | 7C 08 02 A6 */	mflr r0
/* 814B4D50 | 7D 8B 63 78 */	mr r11, r12
/* 814B4D54 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B4D58 | 48 14 47 5D */	bl _savegpr_24
/* 814B4D5C | 3C C0 81 67 */	lis r6, lbl_8166E4E0@ha
/* 814B4D60 | 7C 7C 1B 78 */	mr r28, r3
/* 814B4D64 | 7C 9D 23 78 */	mr r29, r4
/* 814B4D68 | 7C BE 2B 78 */	mr r30, r5
/* 814B4D6C | 38 66 E4 E0 */	addi r3, r6, lbl_8166E4E0@l
/* 814B4D70 | 38 80 00 00 */	li r4, 0x0
/* 814B4D74 | 48 0B DD 9D */	bl IOS_Open
/* 814B4D78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B4D7C | 7C 7F 1B 78 */	mr r31, r3
/* 814B4D80 | 3B 40 FF FF */	li r26, -0x1
/* 814B4D84 | 40 80 00 0C */	bge .L_814B4D90
/* 814B4D88 | 38 60 FF FF */	li r3, -0x1
/* 814B4D8C | 48 00 02 64 */	b .L_814B4FF0
.L_814B4D90:
/* 814B4D90 | 28 1E 80 00 */	cmplwi r30, 0x8000
/* 814B4D94 | 40 81 00 0C */	ble .L_814B4DA0
/* 814B4D98 | 3C 60 00 01 */	lis r3, 0x1
/* 814B4D9C | 3B C3 80 00 */	addi r30, r3, -0x8000
.L_814B4DA0:
/* 814B4DA0 | 57 A0 06 FF */	clrlwi. r0, r29, 27
/* 814B4DA4 | 41 82 00 0C */	beq .L_814B4DB0
/* 814B4DA8 | 23 20 00 20 */	subfic r25, r0, 0x20
/* 814B4DAC | 48 00 00 08 */	b .L_814B4DB4
.L_814B4DB0:
/* 814B4DB0 | 3B 20 00 00 */	li r25, 0x0
.L_814B4DB4:
/* 814B4DB4 | 38 61 01 40 */	addi r3, r1, 0x140
/* 814B4DB8 | 3B 00 00 00 */	li r24, 0x0
/* 814B4DBC | 38 80 00 00 */	li r4, 0x0
/* 814B4DC0 | 38 A0 00 20 */	li r5, 0x20
/* 814B4DC4 | 4B E7 B5 71 */	bl memset
/* 814B4DC8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814B4DCC | 41 82 00 B0 */	beq .L_814B4E7C
/* 814B4DD0 | 7C 19 F0 40 */	cmplw r25, r30
/* 814B4DD4 | 40 81 00 08 */	ble .L_814B4DDC
/* 814B4DD8 | 7F D9 F3 78 */	mr r25, r30
.L_814B4DDC:
/* 814B4DDC | 39 00 00 20 */	li r8, 0x20
/* 814B4DE0 | 39 21 01 20 */	addi r9, r1, 0x120
/* 814B4DE4 | 3B 61 01 40 */	addi r27, r1, 0x140
/* 814B4DE8 | 38 01 01 00 */	addi r0, r1, 0x100
/* 814B4DEC | 38 80 FF FF */	li r4, -0x1
/* 814B4DF0 | 93 81 01 00 */	stw r28, 0x100(r1)
/* 814B4DF4 | 7F E3 FB 78 */	mr r3, r31
/* 814B4DF8 | 38 E1 00 E0 */	addi r7, r1, 0xe0
/* 814B4DFC | 90 81 01 20 */	stw r4, 0x120(r1)
/* 814B4E00 | 38 80 00 04 */	li r4, 0x4
/* 814B4E04 | 38 A0 00 02 */	li r5, 0x2
/* 814B4E08 | 38 C0 00 01 */	li r6, 0x1
/* 814B4E0C | 91 21 00 E0 */	stw r9, 0xe0(r1)
/* 814B4E10 | 91 01 00 E4 */	stw r8, 0xe4(r1)
/* 814B4E14 | 93 61 00 E8 */	stw r27, 0xe8(r1)
/* 814B4E18 | 93 21 00 EC */	stw r25, 0xec(r1)
/* 814B4E1C | 90 01 00 F0 */	stw r0, 0xf0(r1)
/* 814B4E20 | 91 01 00 F4 */	stw r8, 0xf4(r1)
/* 814B4E24 | 48 0B E9 D5 */	bl IOS_Ioctlv
/* 814B4E28 | 83 41 01 20 */	lwz r26, 0x120(r1)
/* 814B4E2C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B4E30 | 40 81 00 3C */	ble .L_814B4E6C
/* 814B4E34 | 7F 58 D3 78 */	mr r24, r26
/* 814B4E38 | 7F A3 EB 78 */	mr r3, r29
/* 814B4E3C | 7F 64 DB 78 */	mr r4, r27
/* 814B4E40 | 7F 45 D3 78 */	mr r5, r26
/* 814B4E44 | 4B E7 B3 ED */	bl memcpy
/* 814B4E48 | 7C 1A C8 40 */	cmplw r26, r25
/* 814B4E4C | 40 80 00 14 */	bge .L_814B4E60
/* 814B4E50 | 7F E3 FB 78 */	mr r3, r31
/* 814B4E54 | 48 0B DE 9D */	bl fn_81572CF0
/* 814B4E58 | 7F 03 C3 78 */	mr r3, r24
/* 814B4E5C | 48 00 01 94 */	b .L_814B4FF0
.L_814B4E60:
/* 814B4E60 | 7F BD D2 14 */	add r29, r29, r26
/* 814B4E64 | 7F DA F0 50 */	subf r30, r26, r30
/* 814B4E68 | 48 00 00 14 */	b .L_814B4E7C
.L_814B4E6C:
/* 814B4E6C | 7F E3 FB 78 */	mr r3, r31
/* 814B4E70 | 48 0B DE 81 */	bl fn_81572CF0
/* 814B4E74 | 7F 43 D3 78 */	mr r3, r26
/* 814B4E78 | 48 00 01 78 */	b .L_814B4FF0
.L_814B4E7C:
/* 814B4E7C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B4E80 | 41 82 00 A8 */	beq .L_814B4F28
/* 814B4E84 | 57 D9 00 35 */	clrrwi. r25, r30, 5
/* 814B4E88 | 41 82 00 A0 */	beq .L_814B4F28
/* 814B4E8C | 39 00 00 20 */	li r8, 0x20
/* 814B4E90 | 39 21 00 C0 */	addi r9, r1, 0xc0
/* 814B4E94 | 38 01 00 A0 */	addi r0, r1, 0xa0
/* 814B4E98 | 38 A0 FF FF */	li r5, -0x1
/* 814B4E9C | 90 A1 00 C0 */	stw r5, 0xc0(r1)
/* 814B4EA0 | 7F E3 FB 78 */	mr r3, r31
/* 814B4EA4 | 38 E1 00 80 */	addi r7, r1, 0x80
/* 814B4EA8 | 38 80 00 04 */	li r4, 0x4
/* 814B4EAC | 93 81 00 A0 */	stw r28, 0xa0(r1)
/* 814B4EB0 | 38 A0 00 02 */	li r5, 0x2
/* 814B4EB4 | 38 C0 00 01 */	li r6, 0x1
/* 814B4EB8 | 91 21 00 80 */	stw r9, 0x80(r1)
/* 814B4EBC | 91 01 00 84 */	stw r8, 0x84(r1)
/* 814B4EC0 | 93 A1 00 88 */	stw r29, 0x88(r1)
/* 814B4EC4 | 93 21 00 8C */	stw r25, 0x8c(r1)
/* 814B4EC8 | 90 01 00 90 */	stw r0, 0x90(r1)
/* 814B4ECC | 91 01 00 94 */	stw r8, 0x94(r1)
/* 814B4ED0 | 48 0B E9 29 */	bl IOS_Ioctlv
/* 814B4ED4 | 83 41 00 C0 */	lwz r26, 0xc0(r1)
/* 814B4ED8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B4EDC | 40 81 00 2C */	ble .L_814B4F08
/* 814B4EE0 | 7C 1A C8 40 */	cmplw r26, r25
/* 814B4EE4 | 7F 18 D2 14 */	add r24, r24, r26
/* 814B4EE8 | 40 80 00 14 */	bge .L_814B4EFC
/* 814B4EEC | 7F E3 FB 78 */	mr r3, r31
/* 814B4EF0 | 48 0B DE 01 */	bl fn_81572CF0
/* 814B4EF4 | 7F 03 C3 78 */	mr r3, r24
/* 814B4EF8 | 48 00 00 F8 */	b .L_814B4FF0
.L_814B4EFC:
/* 814B4EFC | 7F BD D2 14 */	add r29, r29, r26
/* 814B4F00 | 7F DA F0 50 */	subf r30, r26, r30
/* 814B4F04 | 48 00 00 24 */	b .L_814B4F28
.L_814B4F08:
/* 814B4F08 | 7F E3 FB 78 */	mr r3, r31
/* 814B4F0C | 48 0B DD E5 */	bl fn_81572CF0
/* 814B4F10 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814B4F14 | 40 81 00 0C */	ble .L_814B4F20
/* 814B4F18 | 7F 03 C3 78 */	mr r3, r24
/* 814B4F1C | 48 00 00 D4 */	b .L_814B4FF0
.L_814B4F20:
/* 814B4F20 | 7F 43 D3 78 */	mr r3, r26
/* 814B4F24 | 48 00 00 CC */	b .L_814B4FF0
.L_814B4F28:
/* 814B4F28 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B4F2C | 41 82 00 AC */	beq .L_814B4FD8
/* 814B4F30 | 57 D9 06 FF */	clrlwi. r25, r30, 27
/* 814B4F34 | 41 82 00 A4 */	beq .L_814B4FD8
/* 814B4F38 | 38 61 01 40 */	addi r3, r1, 0x140
/* 814B4F3C | 38 80 00 00 */	li r4, 0x0
/* 814B4F40 | 38 A0 00 20 */	li r5, 0x20
/* 814B4F44 | 4B E7 B3 F1 */	bl memset
/* 814B4F48 | 39 00 00 20 */	li r8, 0x20
/* 814B4F4C | 39 21 00 60 */	addi r9, r1, 0x60
/* 814B4F50 | 3B C1 01 40 */	addi r30, r1, 0x140
/* 814B4F54 | 38 01 00 40 */	addi r0, r1, 0x40
/* 814B4F58 | 38 80 FF FF */	li r4, -0x1
/* 814B4F5C | 93 81 00 40 */	stw r28, 0x40(r1)
/* 814B4F60 | 7F E3 FB 78 */	mr r3, r31
/* 814B4F64 | 38 E1 00 20 */	addi r7, r1, 0x20
/* 814B4F68 | 90 81 00 60 */	stw r4, 0x60(r1)
/* 814B4F6C | 38 80 00 04 */	li r4, 0x4
/* 814B4F70 | 38 A0 00 02 */	li r5, 0x2
/* 814B4F74 | 38 C0 00 01 */	li r6, 0x1
/* 814B4F78 | 91 21 00 20 */	stw r9, 0x20(r1)
/* 814B4F7C | 91 01 00 24 */	stw r8, 0x24(r1)
/* 814B4F80 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814B4F84 | 93 21 00 2C */	stw r25, 0x2c(r1)
/* 814B4F88 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 814B4F8C | 91 01 00 34 */	stw r8, 0x34(r1)
/* 814B4F90 | 48 0B E8 69 */	bl IOS_Ioctlv
/* 814B4F94 | 83 41 00 60 */	lwz r26, 0x60(r1)
/* 814B4F98 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B4F9C | 40 81 00 1C */	ble .L_814B4FB8
/* 814B4FA0 | 7F A3 EB 78 */	mr r3, r29
/* 814B4FA4 | 7F C4 F3 78 */	mr r4, r30
/* 814B4FA8 | 7F 45 D3 78 */	mr r5, r26
/* 814B4FAC | 7F 18 D2 14 */	add r24, r24, r26
/* 814B4FB0 | 4B E7 B2 81 */	bl memcpy
/* 814B4FB4 | 48 00 00 24 */	b .L_814B4FD8
.L_814B4FB8:
/* 814B4FB8 | 7F E3 FB 78 */	mr r3, r31
/* 814B4FBC | 48 0B DD 35 */	bl fn_81572CF0
/* 814B4FC0 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814B4FC4 | 40 81 00 0C */	ble .L_814B4FD0
/* 814B4FC8 | 7F 03 C3 78 */	mr r3, r24
/* 814B4FCC | 48 00 00 24 */	b .L_814B4FF0
.L_814B4FD0:
/* 814B4FD0 | 7F 43 D3 78 */	mr r3, r26
/* 814B4FD4 | 48 00 00 1C */	b .L_814B4FF0
.L_814B4FD8:
/* 814B4FD8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814B4FDC | 40 81 00 08 */	ble .L_814B4FE4
/* 814B4FE0 | 7F 1A C3 78 */	mr r26, r24
.L_814B4FE4:
/* 814B4FE4 | 7F E3 FB 78 */	mr r3, r31
/* 814B4FE8 | 48 0B DD 09 */	bl fn_81572CF0
/* 814B4FEC | 7F 43 D3 78 */	mr r3, r26
.L_814B4FF0:
/* 814B4FF0 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B4FF4 | 7D 4B 53 78 */	mr r11, r10
/* 814B4FF8 | 48 14 45 09 */	bl _restgpr_24
/* 814B4FFC | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B5000 | 7C 08 03 A6 */	mtlr r0
/* 814B5004 | 7D 41 53 78 */	mr r1, r10
/* 814B5008 | 4E 80 00 20 */	blr
.endfn SSLRead

# .text:0x59C | 0x814B500C | size: 0x2C0
.fn SSLWrite, global
/* 814B500C | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B5010 | 7C 2C 0B 78 */	mr r12, r1
/* 814B5014 | 21 6B FE 80 */	subfic r11, r11, -0x180
/* 814B5018 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B501C | 7C 08 02 A6 */	mflr r0
/* 814B5020 | 7D 8B 63 78 */	mr r11, r12
/* 814B5024 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B5028 | 48 14 44 91 */	bl _savegpr_25
/* 814B502C | 3C C0 81 67 */	lis r6, lbl_8166E4E0@ha
/* 814B5030 | 7C 7C 1B 78 */	mr r28, r3
/* 814B5034 | 7C 9D 23 78 */	mr r29, r4
/* 814B5038 | 7C BE 2B 78 */	mr r30, r5
/* 814B503C | 38 66 E4 E0 */	addi r3, r6, lbl_8166E4E0@l
/* 814B5040 | 38 80 00 00 */	li r4, 0x0
/* 814B5044 | 48 0B DA CD */	bl IOS_Open
/* 814B5048 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B504C | 7C 7F 1B 78 */	mr r31, r3
/* 814B5050 | 3B 60 FF FF */	li r27, -0x1
/* 814B5054 | 40 80 00 0C */	bge .L_814B5060
/* 814B5058 | 38 60 FF FF */	li r3, -0x1
/* 814B505C | 48 00 02 54 */	b .L_814B52B0
.L_814B5060:
/* 814B5060 | 57 A0 06 FF */	clrlwi. r0, r29, 27
/* 814B5064 | 41 82 00 0C */	beq .L_814B5070
/* 814B5068 | 23 40 00 20 */	subfic r26, r0, 0x20
/* 814B506C | 48 00 00 08 */	b .L_814B5074
.L_814B5070:
/* 814B5070 | 3B 40 00 00 */	li r26, 0x0
.L_814B5074:
/* 814B5074 | 38 61 01 40 */	addi r3, r1, 0x140
/* 814B5078 | 3B 20 00 00 */	li r25, 0x0
/* 814B507C | 38 80 00 00 */	li r4, 0x0
/* 814B5080 | 38 A0 00 20 */	li r5, 0x20
/* 814B5084 | 4B E7 B2 B1 */	bl memset
/* 814B5088 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B508C | 41 82 00 B0 */	beq .L_814B513C
/* 814B5090 | 7C 1A F0 40 */	cmplw r26, r30
/* 814B5094 | 40 81 00 08 */	ble .L_814B509C
/* 814B5098 | 7F DA F3 78 */	mr r26, r30
.L_814B509C:
/* 814B509C | 7F A4 EB 78 */	mr r4, r29
/* 814B50A0 | 7F 45 D3 78 */	mr r5, r26
/* 814B50A4 | 38 61 01 40 */	addi r3, r1, 0x140
/* 814B50A8 | 4B E7 B1 89 */	bl memcpy
/* 814B50AC | 39 20 00 20 */	li r9, 0x20
/* 814B50B0 | 39 41 01 20 */	addi r10, r1, 0x120
/* 814B50B4 | 39 01 01 00 */	addi r8, r1, 0x100
/* 814B50B8 | 38 01 01 40 */	addi r0, r1, 0x140
/* 814B50BC | 38 80 FF FF */	li r4, -0x1
/* 814B50C0 | 93 81 01 00 */	stw r28, 0x100(r1)
/* 814B50C4 | 7F E3 FB 78 */	mr r3, r31
/* 814B50C8 | 38 E1 00 E0 */	addi r7, r1, 0xe0
/* 814B50CC | 90 81 01 20 */	stw r4, 0x120(r1)
/* 814B50D0 | 38 80 00 05 */	li r4, 0x5
/* 814B50D4 | 38 A0 00 01 */	li r5, 0x1
/* 814B50D8 | 38 C0 00 02 */	li r6, 0x2
/* 814B50DC | 91 41 00 E0 */	stw r10, 0xe0(r1)
/* 814B50E0 | 91 21 00 E4 */	stw r9, 0xe4(r1)
/* 814B50E4 | 91 01 00 E8 */	stw r8, 0xe8(r1)
/* 814B50E8 | 91 21 00 EC */	stw r9, 0xec(r1)
/* 814B50EC | 90 01 00 F0 */	stw r0, 0xf0(r1)
/* 814B50F0 | 93 41 00 F4 */	stw r26, 0xf4(r1)
/* 814B50F4 | 48 0B E7 05 */	bl IOS_Ioctlv
/* 814B50F8 | 83 61 01 20 */	lwz r27, 0x120(r1)
/* 814B50FC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B5100 | 40 81 00 2C */	ble .L_814B512C
/* 814B5104 | 7C 1B D0 40 */	cmplw r27, r26
/* 814B5108 | 7F 79 DB 78 */	mr r25, r27
/* 814B510C | 40 80 00 14 */	bge .L_814B5120
/* 814B5110 | 7F E3 FB 78 */	mr r3, r31
/* 814B5114 | 48 0B DB DD */	bl fn_81572CF0
/* 814B5118 | 7F 63 DB 78 */	mr r3, r27
/* 814B511C | 48 00 01 94 */	b .L_814B52B0
.L_814B5120:
/* 814B5120 | 7F BD DA 14 */	add r29, r29, r27
/* 814B5124 | 7F DB F0 50 */	subf r30, r27, r30
/* 814B5128 | 48 00 00 14 */	b .L_814B513C
.L_814B512C:
/* 814B512C | 7F E3 FB 78 */	mr r3, r31
/* 814B5130 | 48 0B DB C1 */	bl fn_81572CF0
/* 814B5134 | 7F 63 DB 78 */	mr r3, r27
/* 814B5138 | 48 00 01 78 */	b .L_814B52B0
.L_814B513C:
/* 814B513C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B5140 | 41 82 00 A8 */	beq .L_814B51E8
/* 814B5144 | 57 DA 00 35 */	clrrwi. r26, r30, 5
/* 814B5148 | 41 82 00 A0 */	beq .L_814B51E8
/* 814B514C | 39 00 00 20 */	li r8, 0x20
/* 814B5150 | 39 21 00 C0 */	addi r9, r1, 0xc0
/* 814B5154 | 38 01 00 A0 */	addi r0, r1, 0xa0
/* 814B5158 | 38 A0 FF FF */	li r5, -0x1
/* 814B515C | 90 A1 00 C0 */	stw r5, 0xc0(r1)
/* 814B5160 | 7F E3 FB 78 */	mr r3, r31
/* 814B5164 | 38 E1 00 80 */	addi r7, r1, 0x80
/* 814B5168 | 38 80 00 05 */	li r4, 0x5
/* 814B516C | 93 81 00 A0 */	stw r28, 0xa0(r1)
/* 814B5170 | 38 A0 00 01 */	li r5, 0x1
/* 814B5174 | 38 C0 00 02 */	li r6, 0x2
/* 814B5178 | 91 21 00 80 */	stw r9, 0x80(r1)
/* 814B517C | 91 01 00 84 */	stw r8, 0x84(r1)
/* 814B5180 | 90 01 00 88 */	stw r0, 0x88(r1)
/* 814B5184 | 91 01 00 8C */	stw r8, 0x8c(r1)
/* 814B5188 | 93 A1 00 90 */	stw r29, 0x90(r1)
/* 814B518C | 93 41 00 94 */	stw r26, 0x94(r1)
/* 814B5190 | 48 0B E6 69 */	bl IOS_Ioctlv
/* 814B5194 | 83 61 00 C0 */	lwz r27, 0xc0(r1)
/* 814B5198 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B519C | 40 81 00 2C */	ble .L_814B51C8
/* 814B51A0 | 7C 1B D0 40 */	cmplw r27, r26
/* 814B51A4 | 7F 39 DA 14 */	add r25, r25, r27
/* 814B51A8 | 40 80 00 14 */	bge .L_814B51BC
/* 814B51AC | 7F E3 FB 78 */	mr r3, r31
/* 814B51B0 | 48 0B DB 41 */	bl fn_81572CF0
/* 814B51B4 | 7F 23 CB 78 */	mr r3, r25
/* 814B51B8 | 48 00 00 F8 */	b .L_814B52B0
.L_814B51BC:
/* 814B51BC | 7F BD DA 14 */	add r29, r29, r27
/* 814B51C0 | 7F DB F0 50 */	subf r30, r27, r30
/* 814B51C4 | 48 00 00 24 */	b .L_814B51E8
.L_814B51C8:
/* 814B51C8 | 7F E3 FB 78 */	mr r3, r31
/* 814B51CC | 48 0B DB 25 */	bl fn_81572CF0
/* 814B51D0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814B51D4 | 40 81 00 0C */	ble .L_814B51E0
/* 814B51D8 | 7F 23 CB 78 */	mr r3, r25
/* 814B51DC | 48 00 00 D4 */	b .L_814B52B0
.L_814B51E0:
/* 814B51E0 | 7F 63 DB 78 */	mr r3, r27
/* 814B51E4 | 48 00 00 CC */	b .L_814B52B0
.L_814B51E8:
/* 814B51E8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B51EC | 41 82 00 AC */	beq .L_814B5298
/* 814B51F0 | 57 DA 06 FF */	clrlwi. r26, r30, 27
/* 814B51F4 | 41 82 00 A4 */	beq .L_814B5298
/* 814B51F8 | 38 61 01 40 */	addi r3, r1, 0x140
/* 814B51FC | 38 80 00 00 */	li r4, 0x0
/* 814B5200 | 38 A0 00 20 */	li r5, 0x20
/* 814B5204 | 4B E7 B1 31 */	bl memset
/* 814B5208 | 7F A4 EB 78 */	mr r4, r29
/* 814B520C | 7F 45 D3 78 */	mr r5, r26
/* 814B5210 | 38 61 01 40 */	addi r3, r1, 0x140
/* 814B5214 | 4B E7 B0 1D */	bl memcpy
/* 814B5218 | 39 20 00 20 */	li r9, 0x20
/* 814B521C | 39 41 00 60 */	addi r10, r1, 0x60
/* 814B5220 | 39 01 00 40 */	addi r8, r1, 0x40
/* 814B5224 | 38 01 01 40 */	addi r0, r1, 0x140
/* 814B5228 | 38 80 FF FF */	li r4, -0x1
/* 814B522C | 93 81 00 40 */	stw r28, 0x40(r1)
/* 814B5230 | 7F E3 FB 78 */	mr r3, r31
/* 814B5234 | 38 E1 00 20 */	addi r7, r1, 0x20
/* 814B5238 | 90 81 00 60 */	stw r4, 0x60(r1)
/* 814B523C | 38 80 00 05 */	li r4, 0x5
/* 814B5240 | 38 A0 00 01 */	li r5, 0x1
/* 814B5244 | 38 C0 00 02 */	li r6, 0x2
/* 814B5248 | 91 41 00 20 */	stw r10, 0x20(r1)
/* 814B524C | 91 21 00 24 */	stw r9, 0x24(r1)
/* 814B5250 | 91 01 00 28 */	stw r8, 0x28(r1)
/* 814B5254 | 91 21 00 2C */	stw r9, 0x2c(r1)
/* 814B5258 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 814B525C | 93 41 00 34 */	stw r26, 0x34(r1)
/* 814B5260 | 48 0B E5 99 */	bl IOS_Ioctlv
/* 814B5264 | 83 61 00 60 */	lwz r27, 0x60(r1)
/* 814B5268 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B526C | 40 81 00 0C */	ble .L_814B5278
/* 814B5270 | 7F 39 DA 14 */	add r25, r25, r27
/* 814B5274 | 48 00 00 24 */	b .L_814B5298
.L_814B5278:
/* 814B5278 | 7F E3 FB 78 */	mr r3, r31
/* 814B527C | 48 0B DA 75 */	bl fn_81572CF0
/* 814B5280 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814B5284 | 40 81 00 0C */	ble .L_814B5290
/* 814B5288 | 7F 23 CB 78 */	mr r3, r25
/* 814B528C | 48 00 00 24 */	b .L_814B52B0
.L_814B5290:
/* 814B5290 | 7F 63 DB 78 */	mr r3, r27
/* 814B5294 | 48 00 00 1C */	b .L_814B52B0
.L_814B5298:
/* 814B5298 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814B529C | 40 81 00 08 */	ble .L_814B52A4
/* 814B52A0 | 7F 3B CB 78 */	mr r27, r25
.L_814B52A4:
/* 814B52A4 | 7F E3 FB 78 */	mr r3, r31
/* 814B52A8 | 48 0B DA 49 */	bl fn_81572CF0
/* 814B52AC | 7F 63 DB 78 */	mr r3, r27
.L_814B52B0:
/* 814B52B0 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B52B4 | 7D 4B 53 78 */	mr r11, r10
/* 814B52B8 | 48 14 42 4D */	bl _restgpr_25
/* 814B52BC | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B52C0 | 7C 08 03 A6 */	mtlr r0
/* 814B52C4 | 7D 41 53 78 */	mr r1, r10
/* 814B52C8 | 4E 80 00 20 */	blr
.endfn SSLWrite

# .text:0x85C | 0x814B52CC | size: 0xAC
.fn SSLShutdown, global
/* 814B52CC | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B52D0 | 7C 2C 0B 78 */	mr r12, r1
/* 814B52D4 | 21 6B FF 60 */	subfic r11, r11, -0xa0
/* 814B52D8 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B52DC | 7C 08 02 A6 */	mflr r0
/* 814B52E0 | 3C 80 81 67 */	lis r4, lbl_8166E4E0@ha
/* 814B52E4 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B52E8 | 93 EC FF FC */	stw r31, -0x4(r12)
/* 814B52EC | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 814B52F0 | 7C 7E 1B 78 */	mr r30, r3
/* 814B52F4 | 38 64 E4 E0 */	addi r3, r4, lbl_8166E4E0@l
/* 814B52F8 | 38 80 00 00 */	li r4, 0x0
/* 814B52FC | 48 0B D8 15 */	bl IOS_Open
/* 814B5300 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B5304 | 7C 7F 1B 78 */	mr r31, r3
/* 814B5308 | 40 80 00 0C */	bge .L_814B5314
/* 814B530C | 38 60 FF FF */	li r3, -0x1
/* 814B5310 | 48 00 00 4C */	b .L_814B535C
.L_814B5314:
/* 814B5314 | 39 00 00 20 */	li r8, 0x20
/* 814B5318 | 39 21 00 20 */	addi r9, r1, 0x20
/* 814B531C | 38 01 00 40 */	addi r0, r1, 0x40
/* 814B5320 | 38 C0 FF FF */	li r6, -0x1
/* 814B5324 | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 814B5328 | 38 E1 00 60 */	addi r7, r1, 0x60
/* 814B532C | 38 80 00 06 */	li r4, 0x6
/* 814B5330 | 38 A0 00 01 */	li r5, 0x1
/* 814B5334 | 93 C1 00 40 */	stw r30, 0x40(r1)
/* 814B5338 | 38 C0 00 01 */	li r6, 0x1
/* 814B533C | 91 21 00 60 */	stw r9, 0x60(r1)
/* 814B5340 | 91 01 00 64 */	stw r8, 0x64(r1)
/* 814B5344 | 90 01 00 68 */	stw r0, 0x68(r1)
/* 814B5348 | 91 01 00 6C */	stw r8, 0x6c(r1)
/* 814B534C | 48 0B E4 AD */	bl IOS_Ioctlv
/* 814B5350 | 7F E3 FB 78 */	mr r3, r31
/* 814B5354 | 48 0B D9 9D */	bl fn_81572CF0
/* 814B5358 | 80 61 00 20 */	lwz r3, 0x20(r1)
.L_814B535C:
/* 814B535C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B5360 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B5364 | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 814B5368 | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 814B536C | 7C 08 03 A6 */	mtlr r0
/* 814B5370 | 7D 41 53 78 */	mr r1, r10
/* 814B5374 | 4E 80 00 20 */	blr
.endfn SSLShutdown

# .text:0x908 | 0x814B5378 | size: 0x16C
.fn SSLSetClientCert, global
/* 814B5378 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B537C | 7C 2C 0B 78 */	mr r12, r1
/* 814B5380 | 21 6B FF 60 */	subfic r11, r11, -0xa0
/* 814B5384 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B5388 | 7C 08 02 A6 */	mflr r0
/* 814B538C | 7D 8B 63 78 */	mr r11, r12
/* 814B5390 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B5394 | 48 14 41 21 */	bl _savegpr_24
/* 814B5398 | 3F E0 81 0D */	lis r31, l_mutex@ha
/* 814B539C | 3D 00 81 67 */	lis r8, lbl_8166E4E0@ha
/* 814B53A0 | 7C 78 1B 78 */	mr r24, r3
/* 814B53A4 | 7C 99 23 78 */	mr r25, r4
/* 814B53A8 | 7C BA 2B 78 */	mr r26, r5
/* 814B53AC | 7C DB 33 78 */	mr r27, r6
/* 814B53B0 | 7C FC 3B 78 */	mr r28, r7
/* 814B53B4 | 3B FF 9C 00 */	addi r31, r31, l_mutex@l
/* 814B53B8 | 38 68 E4 E0 */	addi r3, r8, lbl_8166E4E0@l
/* 814B53BC | 38 80 00 00 */	li r4, 0x0
/* 814B53C0 | 48 0B D7 51 */	bl IOS_Open
/* 814B53C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B53C8 | 7C 7D 1B 78 */	mr r29, r3
/* 814B53CC | 40 80 00 0C */	bge .L_814B53D8
/* 814B53D0 | 38 60 FF FF */	li r3, -0x1
/* 814B53D4 | 48 00 00 F4 */	b .L_814B54C8
.L_814B53D8:
/* 814B53D8 | 48 07 B4 AD */	bl OSDisableInterrupts
/* 814B53DC | 80 0D AE 2C */	lwz r0, l_initialized@sda21(r0)
/* 814B53E0 | 7C 7E 1B 78 */	mr r30, r3
/* 814B53E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B53E8 | 40 82 00 44 */	bne .L_814B542C
/* 814B53EC | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814B53F0 | 48 00 03 CD */	bl SSL_InitMutex
/* 814B53F4 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 814B53F8 | 38 80 00 00 */	li r4, 0x0
/* 814B53FC | 38 A0 10 00 */	li r5, 0x1000
/* 814B5400 | 4B E7 AF 35 */	bl memset
/* 814B5404 | 38 7F 10 20 */	addi r3, r31, 0x1020
/* 814B5408 | 38 80 00 00 */	li r4, 0x0
/* 814B540C | 38 A0 10 00 */	li r5, 0x1000
/* 814B5410 | 4B E7 AF 25 */	bl memset
/* 814B5414 | 38 7F 20 20 */	addi r3, r31, 0x2020
/* 814B5418 | 38 80 00 00 */	li r4, 0x0
/* 814B541C | 38 A0 10 00 */	li r5, 0x1000
/* 814B5420 | 4B E7 AF 15 */	bl memset
/* 814B5424 | 38 00 00 01 */	li r0, 0x1
/* 814B5428 | 90 0D AE 2C */	stw r0, l_initialized@sda21(r0)
.L_814B542C:
/* 814B542C | 7F C3 F3 78 */	mr r3, r30
/* 814B5430 | 48 07 B4 7D */	bl OSRestoreInterrupts
/* 814B5434 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814B5438 | 48 00 03 89 */	bl SSL_LockMutex
/* 814B543C | 7F 24 CB 78 */	mr r4, r25
/* 814B5440 | 7F 45 D3 78 */	mr r5, r26
/* 814B5444 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 814B5448 | 4B E7 AD E9 */	bl memcpy
/* 814B544C | 7F 64 DB 78 */	mr r4, r27
/* 814B5450 | 7F 85 E3 78 */	mr r5, r28
/* 814B5454 | 38 7F 10 20 */	addi r3, r31, 0x1020
/* 814B5458 | 4B E7 AD D9 */	bl memcpy
/* 814B545C | 39 40 00 20 */	li r10, 0x20
/* 814B5460 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814B5464 | 39 21 00 20 */	addi r9, r1, 0x20
/* 814B5468 | 39 1F 00 20 */	addi r8, r31, 0x20
/* 814B546C | 38 1F 10 20 */	addi r0, r31, 0x1020
/* 814B5470 | 38 60 FF FF */	li r3, -0x1
/* 814B5474 | 90 61 00 40 */	stw r3, 0x40(r1)
/* 814B5478 | 7F A3 EB 78 */	mr r3, r29
/* 814B547C | 38 E1 00 60 */	addi r7, r1, 0x60
/* 814B5480 | 38 80 00 07 */	li r4, 0x7
/* 814B5484 | 93 01 00 20 */	stw r24, 0x20(r1)
/* 814B5488 | 38 A0 00 01 */	li r5, 0x1
/* 814B548C | 38 C0 00 03 */	li r6, 0x3
/* 814B5490 | 91 61 00 60 */	stw r11, 0x60(r1)
/* 814B5494 | 91 41 00 64 */	stw r10, 0x64(r1)
/* 814B5498 | 91 21 00 68 */	stw r9, 0x68(r1)
/* 814B549C | 91 41 00 6C */	stw r10, 0x6c(r1)
/* 814B54A0 | 91 01 00 70 */	stw r8, 0x70(r1)
/* 814B54A4 | 93 41 00 74 */	stw r26, 0x74(r1)
/* 814B54A8 | 90 01 00 78 */	stw r0, 0x78(r1)
/* 814B54AC | 93 81 00 7C */	stw r28, 0x7c(r1)
/* 814B54B0 | 48 0B E3 49 */	bl IOS_Ioctlv
/* 814B54B4 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814B54B8 | 48 00 03 0D */	bl SSL_UnlockMutex
/* 814B54BC | 7F A3 EB 78 */	mr r3, r29
/* 814B54C0 | 48 0B D8 31 */	bl fn_81572CF0
/* 814B54C4 | 80 61 00 40 */	lwz r3, 0x40(r1)
.L_814B54C8:
/* 814B54C8 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B54CC | 7D 4B 53 78 */	mr r11, r10
/* 814B54D0 | 48 14 40 31 */	bl _restgpr_24
/* 814B54D4 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B54D8 | 7C 08 03 A6 */	mtlr r0
/* 814B54DC | 7D 41 53 78 */	mr r1, r10
/* 814B54E0 | 4E 80 00 20 */	blr
.endfn SSLSetClientCert

# .text:0xA74 | 0x814B54E4 | size: 0x148
.fn SSLSetRootCA, global
/* 814B54E4 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B54E8 | 7C 2C 0B 78 */	mr r12, r1
/* 814B54EC | 21 6B FF 60 */	subfic r11, r11, -0xa0
/* 814B54F0 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B54F4 | 7C 08 02 A6 */	mflr r0
/* 814B54F8 | 7D 8B 63 78 */	mr r11, r12
/* 814B54FC | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B5500 | 48 14 3F BD */	bl _savegpr_26
/* 814B5504 | 3F E0 81 0D */	lis r31, l_mutex@ha
/* 814B5508 | 3C C0 81 67 */	lis r6, lbl_8166E4E0@ha
/* 814B550C | 7C 7A 1B 78 */	mr r26, r3
/* 814B5510 | 7C 9B 23 78 */	mr r27, r4
/* 814B5514 | 7C BC 2B 78 */	mr r28, r5
/* 814B5518 | 3B FF 9C 00 */	addi r31, r31, l_mutex@l
/* 814B551C | 38 66 E4 E0 */	addi r3, r6, lbl_8166E4E0@l
/* 814B5520 | 38 80 00 00 */	li r4, 0x0
/* 814B5524 | 48 0B D5 ED */	bl IOS_Open
/* 814B5528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B552C | 7C 7D 1B 78 */	mr r29, r3
/* 814B5530 | 40 80 00 0C */	bge .L_814B553C
/* 814B5534 | 38 60 FF FF */	li r3, -0x1
/* 814B5538 | 48 00 00 D8 */	b .L_814B5610
.L_814B553C:
/* 814B553C | 48 07 B3 49 */	bl OSDisableInterrupts
/* 814B5540 | 80 0D AE 2C */	lwz r0, l_initialized@sda21(r0)
/* 814B5544 | 7C 7E 1B 78 */	mr r30, r3
/* 814B5548 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B554C | 40 82 00 44 */	bne .L_814B5590
/* 814B5550 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814B5554 | 48 00 02 69 */	bl SSL_InitMutex
/* 814B5558 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 814B555C | 38 80 00 00 */	li r4, 0x0
/* 814B5560 | 38 A0 10 00 */	li r5, 0x1000
/* 814B5564 | 4B E7 AD D1 */	bl memset
/* 814B5568 | 38 7F 10 20 */	addi r3, r31, 0x1020
/* 814B556C | 38 80 00 00 */	li r4, 0x0
/* 814B5570 | 38 A0 10 00 */	li r5, 0x1000
/* 814B5574 | 4B E7 AD C1 */	bl memset
/* 814B5578 | 38 7F 20 20 */	addi r3, r31, 0x2020
/* 814B557C | 38 80 00 00 */	li r4, 0x0
/* 814B5580 | 38 A0 10 00 */	li r5, 0x1000
/* 814B5584 | 4B E7 AD B1 */	bl memset
/* 814B5588 | 38 00 00 01 */	li r0, 0x1
/* 814B558C | 90 0D AE 2C */	stw r0, l_initialized@sda21(r0)
.L_814B5590:
/* 814B5590 | 7F C3 F3 78 */	mr r3, r30
/* 814B5594 | 48 07 B3 19 */	bl OSRestoreInterrupts
/* 814B5598 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814B559C | 48 00 02 25 */	bl SSL_LockMutex
/* 814B55A0 | 7F 64 DB 78 */	mr r4, r27
/* 814B55A4 | 7F 85 E3 78 */	mr r5, r28
/* 814B55A8 | 38 7F 20 20 */	addi r3, r31, 0x2020
/* 814B55AC | 4B E7 AC 85 */	bl memcpy
/* 814B55B0 | 39 20 00 20 */	li r9, 0x20
/* 814B55B4 | 39 41 00 40 */	addi r10, r1, 0x40
/* 814B55B8 | 39 01 00 20 */	addi r8, r1, 0x20
/* 814B55BC | 38 1F 20 20 */	addi r0, r31, 0x2020
/* 814B55C0 | 38 80 FF FF */	li r4, -0x1
/* 814B55C4 | 93 41 00 20 */	stw r26, 0x20(r1)
/* 814B55C8 | 7F A3 EB 78 */	mr r3, r29
/* 814B55CC | 38 E1 00 60 */	addi r7, r1, 0x60
/* 814B55D0 | 90 81 00 40 */	stw r4, 0x40(r1)
/* 814B55D4 | 38 80 00 0A */	li r4, 0xa
/* 814B55D8 | 38 A0 00 01 */	li r5, 0x1
/* 814B55DC | 38 C0 00 02 */	li r6, 0x2
/* 814B55E0 | 91 41 00 60 */	stw r10, 0x60(r1)
/* 814B55E4 | 91 21 00 64 */	stw r9, 0x64(r1)
/* 814B55E8 | 91 01 00 68 */	stw r8, 0x68(r1)
/* 814B55EC | 91 21 00 6C */	stw r9, 0x6c(r1)
/* 814B55F0 | 90 01 00 70 */	stw r0, 0x70(r1)
/* 814B55F4 | 93 81 00 74 */	stw r28, 0x74(r1)
/* 814B55F8 | 48 0B E2 01 */	bl IOS_Ioctlv
/* 814B55FC | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814B5600 | 48 00 01 C5 */	bl SSL_UnlockMutex
/* 814B5604 | 7F A3 EB 78 */	mr r3, r29
/* 814B5608 | 48 0B D6 E9 */	bl fn_81572CF0
/* 814B560C | 80 61 00 40 */	lwz r3, 0x40(r1)
.L_814B5610:
/* 814B5610 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B5614 | 7D 4B 53 78 */	mr r11, r10
/* 814B5618 | 48 14 3E F1 */	bl _restgpr_26
/* 814B561C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B5620 | 7C 08 03 A6 */	mtlr r0
/* 814B5624 | 7D 41 53 78 */	mr r1, r10
/* 814B5628 | 4E 80 00 20 */	blr
.endfn SSLSetRootCA

# .text:0xBBC | 0x814B562C | size: 0xC8
.fn SSLSetBuiltinRootCA, global
/* 814B562C | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B5630 | 7C 2C 0B 78 */	mr r12, r1
/* 814B5634 | 21 6B FF 40 */	subfic r11, r11, -0xc0
/* 814B5638 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B563C | 7C 08 02 A6 */	mflr r0
/* 814B5640 | 3C A0 81 67 */	lis r5, lbl_8166E4E0@ha
/* 814B5644 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B5648 | 93 EC FF FC */	stw r31, -0x4(r12)
/* 814B564C | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 814B5650 | 7C 9E 23 78 */	mr r30, r4
/* 814B5654 | 38 80 00 00 */	li r4, 0x0
/* 814B5658 | 93 AC FF F4 */	stw r29, -0xc(r12)
/* 814B565C | 7C 7D 1B 78 */	mr r29, r3
/* 814B5660 | 38 65 E4 E0 */	addi r3, r5, lbl_8166E4E0@l
/* 814B5664 | 48 0B D4 AD */	bl IOS_Open
/* 814B5668 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B566C | 7C 7F 1B 78 */	mr r31, r3
/* 814B5670 | 40 80 00 0C */	bge .L_814B567C
/* 814B5674 | 38 60 FF FF */	li r3, -0x1
/* 814B5678 | 48 00 00 5C */	b .L_814B56D4
.L_814B567C:
/* 814B567C | 39 20 00 20 */	li r9, 0x20
/* 814B5680 | 39 41 00 60 */	addi r10, r1, 0x60
/* 814B5684 | 39 01 00 40 */	addi r8, r1, 0x40
/* 814B5688 | 38 01 00 20 */	addi r0, r1, 0x20
/* 814B568C | 38 A0 FF FF */	li r5, -0x1
/* 814B5690 | 93 A1 00 40 */	stw r29, 0x40(r1)
/* 814B5694 | 38 E1 00 80 */	addi r7, r1, 0x80
/* 814B5698 | 38 80 00 0D */	li r4, 0xd
/* 814B569C | 90 A1 00 60 */	stw r5, 0x60(r1)
/* 814B56A0 | 38 A0 00 01 */	li r5, 0x1
/* 814B56A4 | 38 C0 00 02 */	li r6, 0x2
/* 814B56A8 | 93 C1 00 20 */	stw r30, 0x20(r1)
/* 814B56AC | 91 41 00 80 */	stw r10, 0x80(r1)
/* 814B56B0 | 91 21 00 84 */	stw r9, 0x84(r1)
/* 814B56B4 | 91 01 00 88 */	stw r8, 0x88(r1)
/* 814B56B8 | 91 21 00 8C */	stw r9, 0x8c(r1)
/* 814B56BC | 90 01 00 90 */	stw r0, 0x90(r1)
/* 814B56C0 | 91 21 00 94 */	stw r9, 0x94(r1)
/* 814B56C4 | 48 0B E1 35 */	bl IOS_Ioctlv
/* 814B56C8 | 7F E3 FB 78 */	mr r3, r31
/* 814B56CC | 48 0B D6 25 */	bl fn_81572CF0
/* 814B56D0 | 80 61 00 60 */	lwz r3, 0x60(r1)
.L_814B56D4:
/* 814B56D4 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B56D8 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B56DC | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 814B56E0 | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 814B56E4 | 83 AA FF F4 */	lwz r29, -0xc(r10)
/* 814B56E8 | 7C 08 03 A6 */	mtlr r0
/* 814B56EC | 7D 41 53 78 */	mr r1, r10
/* 814B56F0 | 4E 80 00 20 */	blr
.endfn SSLSetBuiltinRootCA

# .text:0xC84 | 0x814B56F4 | size: 0xC8
.fn SSLSetBuiltinClientCert, global
/* 814B56F4 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814B56F8 | 7C 2C 0B 78 */	mr r12, r1
/* 814B56FC | 21 6B FF 40 */	subfic r11, r11, -0xc0
/* 814B5700 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814B5704 | 7C 08 02 A6 */	mflr r0
/* 814B5708 | 3C A0 81 67 */	lis r5, lbl_8166E4E0@ha
/* 814B570C | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814B5710 | 93 EC FF FC */	stw r31, -0x4(r12)
/* 814B5714 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 814B5718 | 7C 9E 23 78 */	mr r30, r4
/* 814B571C | 38 80 00 00 */	li r4, 0x0
/* 814B5720 | 93 AC FF F4 */	stw r29, -0xc(r12)
/* 814B5724 | 7C 7D 1B 78 */	mr r29, r3
/* 814B5728 | 38 65 E4 E0 */	addi r3, r5, lbl_8166E4E0@l
/* 814B572C | 48 0B D3 E5 */	bl IOS_Open
/* 814B5730 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B5734 | 7C 7F 1B 78 */	mr r31, r3
/* 814B5738 | 40 80 00 0C */	bge .L_814B5744
/* 814B573C | 38 60 FF FF */	li r3, -0x1
/* 814B5740 | 48 00 00 5C */	b .L_814B579C
.L_814B5744:
/* 814B5744 | 39 20 00 20 */	li r9, 0x20
/* 814B5748 | 39 41 00 60 */	addi r10, r1, 0x60
/* 814B574C | 39 01 00 40 */	addi r8, r1, 0x40
/* 814B5750 | 38 01 00 20 */	addi r0, r1, 0x20
/* 814B5754 | 38 A0 FF FF */	li r5, -0x1
/* 814B5758 | 93 A1 00 40 */	stw r29, 0x40(r1)
/* 814B575C | 38 E1 00 80 */	addi r7, r1, 0x80
/* 814B5760 | 38 80 00 0E */	li r4, 0xe
/* 814B5764 | 90 A1 00 60 */	stw r5, 0x60(r1)
/* 814B5768 | 38 A0 00 01 */	li r5, 0x1
/* 814B576C | 38 C0 00 02 */	li r6, 0x2
/* 814B5770 | 93 C1 00 20 */	stw r30, 0x20(r1)
/* 814B5774 | 91 41 00 80 */	stw r10, 0x80(r1)
/* 814B5778 | 91 21 00 84 */	stw r9, 0x84(r1)
/* 814B577C | 91 01 00 88 */	stw r8, 0x88(r1)
/* 814B5780 | 91 21 00 8C */	stw r9, 0x8c(r1)
/* 814B5784 | 90 01 00 90 */	stw r0, 0x90(r1)
/* 814B5788 | 91 21 00 94 */	stw r9, 0x94(r1)
/* 814B578C | 48 0B E0 6D */	bl IOS_Ioctlv
/* 814B5790 | 7F E3 FB 78 */	mr r3, r31
/* 814B5794 | 48 0B D5 5D */	bl fn_81572CF0
/* 814B5798 | 80 61 00 60 */	lwz r3, 0x60(r1)
.L_814B579C:
/* 814B579C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814B57A0 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814B57A4 | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 814B57A8 | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 814B57AC | 83 AA FF F4 */	lwz r29, -0xc(r10)
/* 814B57B0 | 7C 08 03 A6 */	mtlr r0
/* 814B57B4 | 7D 41 53 78 */	mr r1, r10
/* 814B57B8 | 4E 80 00 20 */	blr
.endfn SSLSetBuiltinClientCert

# 0x8166E498..0x8166E4F0 | size: 0x58
.data
.balign 8

# .data:0x0 | 0x8166E498 | size: 0x48
.obj lbl_8166E498, global
	.string "<< RVL_SDK - SSL \trelease build: Jun 21 2007 13:10:10 (0x4199_60726) >>"
.endobj lbl_8166E498

# .data:0x48 | 0x8166E4E0 | size: 0x10
.obj lbl_8166E4E0, global
	.4byte 0x2F646576
	.4byte 0x2F6E6574
	.4byte 0x2F73736C
	.4byte 0x00000000
.endobj lbl_8166E4E0

# 0x81697CE0..0x81697CE8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CE0 | size: 0x4
.obj __SSLVersion, global
	.4byte lbl_8166E498
.endobj __SSLVersion

# .sdata:0x4 | 0x81697CE4 | size: 0x4
.obj gap_11_81697CE4_sdata, global
.hidden gap_11_81697CE4_sdata
	.4byte 0x00000000
.endobj gap_11_81697CE4_sdata

# 0x81698E68..0x81698E70 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E68 | size: 0x4
.obj sslRegistered, local
	.skip 0x4
.endobj sslRegistered

# .sbss:0x4 | 0x81698E6C | size: 0x4
.obj l_initialized, local
	.skip 0x4
.endobj l_initialized
