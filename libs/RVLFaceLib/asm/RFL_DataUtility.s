.include "macros.inc"
.file "RFL_DataUtility.c"

# 0x81330C30..0x81330C58 | size: 0x28
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330C30 | size: 0x8
.obj "@etb_81330C30", local
.hidden "@etb_81330C30"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330C30"

# extab:0x8 | 0x81330C38 | size: 0x8
.obj "@etb_81330C38", local
.hidden "@etb_81330C38"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330C38"

# extab:0x10 | 0x81330C40 | size: 0x8
.obj "@etb_81330C40", local
.hidden "@etb_81330C40"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330C40"

# extab:0x18 | 0x81330C48 | size: 0x8
.obj "@etb_81330C48", local
.hidden "@etb_81330C48"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330C48"

# extab:0x20 | 0x81330C50 | size: 0x8
.obj "@etb_81330C50", local
.hidden "@etb_81330C50"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330C50"

# 0x81331BD8..0x81331C14 | size: 0x3C
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331BD8 | size: 0xC
.obj "@eti_81331BD8", local
.hidden "@eti_81331BD8"
	.4byte RFLiCheckValidInfo
	.4byte 0x00000464
	.4byte "@etb_81330C30"
.endobj "@eti_81331BD8"

# extabindex:0xC | 0x81331BE4 | size: 0xC
.obj "@eti_81331BE4", local
.hidden "@eti_81331BE4"
	.4byte RFLiIsValidOnNAND
	.4byte 0x0000002C
	.4byte "@etb_81330C38"
.endobj "@eti_81331BE4"

# extabindex:0x18 | 0x81331BF0 | size: 0xC
.obj "@eti_81331BF0", local
.hidden "@eti_81331BF0"
	.4byte RFLiPickupCharInfo
	.4byte 0x00000140
	.4byte "@etb_81330C40"
.endobj "@eti_81331BF0"

# extabindex:0x24 | 0x81331BFC | size: 0xC
.obj "@eti_81331BFC", local
.hidden "@eti_81331BFC"
	.4byte copyChar2Additional_
	.4byte 0x00000190
	.4byte "@etb_81330C48"
.endobj "@eti_81331BFC"

# extabindex:0x30 | 0x81331C08 | size: 0xC
.obj "@eti_81331C08", local
.hidden "@eti_81331C08"
	.4byte RFLGetAdditionalInfo
	.4byte 0x00000054
	.4byte "@etb_81330C50"
.endobj "@eti_81331C08"

# 0x814E8A94..0x814E9358 | size: 0x8C4
.text
.balign 4

# .text:0x0 | 0x814E8A94 | size: 0x464
.fn RFLiCheckValidInfo, global
/* 814E8A94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E8A98 | 7C 08 02 A6 */	mflr r0
/* 814E8A9C | A0 83 00 00 */	lhz r4, 0x0(r3)
/* 814E8AA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E8AA4 | 54 80 9F 7E */	extrwi r0, r4, 3, 16
/* 814E8AA8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814E8AAC | 28 00 00 07 */	cmplwi r0, 0x7
/* 814E8AB0 | 7C 7F 1B 78 */	mr r31, r3
/* 814E8AB4 | 40 81 00 0C */	ble .L_814E8AC0
/* 814E8AB8 | 38 60 00 00 */	li r3, 0x0
/* 814E8ABC | 48 00 04 28 */	b .L_814E8EE4
.L_814E8AC0:
/* 814E8AC0 | 54 80 B7 7E */	extrwi r0, r4, 3, 19
/* 814E8AC4 | 28 00 00 05 */	cmplwi r0, 0x5
/* 814E8AC8 | 40 81 00 0C */	ble .L_814E8AD4
/* 814E8ACC | 38 60 00 00 */	li r3, 0x0
/* 814E8AD0 | 48 00 04 14 */	b .L_814E8EE4
.L_814E8AD4:
/* 814E8AD4 | 54 80 D7 3E */	extrwi r0, r4, 4, 22
/* 814E8AD8 | 28 00 00 0B */	cmplwi r0, 0xb
/* 814E8ADC | 40 81 00 0C */	ble .L_814E8AE8
/* 814E8AE0 | 38 60 00 00 */	li r3, 0x0
/* 814E8AE4 | 48 00 04 00 */	b .L_814E8EE4
.L_814E8AE8:
/* 814E8AE8 | A0 83 00 02 */	lhz r4, 0x2(r3)
/* 814E8AEC | 54 80 BE 7E */	extrwi r0, r4, 7, 16
/* 814E8AF0 | 28 00 00 47 */	cmplwi r0, 0x47
/* 814E8AF4 | 40 81 00 0C */	ble .L_814E8B00
/* 814E8AF8 | 38 60 00 00 */	li r3, 0x0
/* 814E8AFC | 48 00 03 E8 */	b .L_814E8EE4
.L_814E8B00:
/* 814E8B00 | 54 80 D7 7E */	extrwi r0, r4, 3, 23
/* 814E8B04 | 28 00 00 07 */	cmplwi r0, 0x7
/* 814E8B08 | 40 81 00 0C */	ble .L_814E8B14
/* 814E8B0C | 38 60 00 00 */	li r3, 0x0
/* 814E8B10 | 48 00 03 D4 */	b .L_814E8EE4
.L_814E8B14:
/* 814E8B14 | 54 80 DF FE */	extrwi r0, r4, 1, 26
/* 814E8B18 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814E8B1C | 40 81 00 0C */	ble .L_814E8B28
/* 814E8B20 | 38 60 00 00 */	li r3, 0x0
/* 814E8B24 | 48 00 03 C0 */	b .L_814E8EE4
.L_814E8B28:
/* 814E8B28 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814E8B2C | 54 80 36 BE */	srwi r0, r4, 26
/* 814E8B30 | 28 00 00 2F */	cmplwi r0, 0x2f
/* 814E8B34 | 40 81 00 0C */	ble .L_814E8B40
/* 814E8B38 | 38 60 00 00 */	li r3, 0x0
/* 814E8B3C | 48 00 03 A8 */	b .L_814E8EE4
.L_814E8B40:
/* 814E8B40 | 54 80 4F 7E */	extrwi r0, r4, 3, 6
/* 814E8B44 | 28 00 00 05 */	cmplwi r0, 0x5
/* 814E8B48 | 40 81 00 0C */	ble .L_814E8B54
/* 814E8B4C | 38 60 00 00 */	li r3, 0x0
/* 814E8B50 | 48 00 03 94 */	b .L_814E8EE4
.L_814E8B54:
/* 814E8B54 | 54 80 6F 3E */	extrwi r0, r4, 4, 9
/* 814E8B58 | 28 00 00 07 */	cmplwi r0, 0x7
/* 814E8B5C | 40 81 00 0C */	ble .L_814E8B68
/* 814E8B60 | 38 60 00 00 */	li r3, 0x0
/* 814E8B64 | 48 00 03 80 */	b .L_814E8EE4
.L_814E8B68:
/* 814E8B68 | 54 80 96 FE */	extrwi r0, r4, 5, 13
/* 814E8B6C | 28 00 00 07 */	cmplwi r0, 0x7
/* 814E8B70 | 40 81 00 0C */	ble .L_814E8B7C
/* 814E8B74 | 38 60 00 00 */	li r3, 0x0
/* 814E8B78 | 48 00 03 6C */	b .L_814E8EE4
.L_814E8B7C:
/* 814E8B7C | 54 80 B7 3E */	extrwi r0, r4, 4, 18
/* 814E8B80 | 28 00 00 0C */	cmplwi r0, 0xc
/* 814E8B84 | 40 81 00 0C */	ble .L_814E8B90
/* 814E8B88 | 38 60 00 00 */	li r3, 0x0
/* 814E8B8C | 48 00 03 58 */	b .L_814E8EE4
.L_814E8B90:
/* 814E8B90 | 54 80 DE FE */	extrwi r0, r4, 5, 22
/* 814E8B94 | 28 00 00 12 */	cmplwi r0, 0x12
/* 814E8B98 | 40 81 00 0C */	ble .L_814E8BA4
/* 814E8B9C | 38 60 00 00 */	li r3, 0x0
/* 814E8BA0 | 48 00 03 44 */	b .L_814E8EE4
.L_814E8BA4:
/* 814E8BA4 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814E8BA8 | 54 80 2E FE */	srwi r0, r4, 27
/* 814E8BAC | 28 00 00 17 */	cmplwi r0, 0x17
/* 814E8BB0 | 40 81 00 0C */	ble .L_814E8BBC
/* 814E8BB4 | 38 60 00 00 */	li r3, 0x0
/* 814E8BB8 | 48 00 03 2C */	b .L_814E8EE4
.L_814E8BBC:
/* 814E8BBC | 54 80 47 7E */	extrwi r0, r4, 3, 5
/* 814E8BC0 | 28 00 00 07 */	cmplwi r0, 0x7
/* 814E8BC4 | 40 81 00 0C */	ble .L_814E8BD0
/* 814E8BC8 | 38 60 00 00 */	li r3, 0x0
/* 814E8BCC | 48 00 03 18 */	b .L_814E8EE4
.L_814E8BD0:
/* 814E8BD0 | 54 80 67 3E */	extrwi r0, r4, 4, 8
/* 814E8BD4 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814E8BD8 | 40 81 00 0C */	ble .L_814E8BE4
/* 814E8BDC | 38 60 00 00 */	li r3, 0x0
/* 814E8BE0 | 48 00 03 04 */	b .L_814E8EE4
.L_814E8BE4:
/* 814E8BE4 | 54 80 8E FE */	extrwi r0, r4, 5, 12
/* 814E8BE8 | 28 00 00 0B */	cmplwi r0, 0xb
/* 814E8BEC | 40 81 00 0C */	ble .L_814E8BF8
/* 814E8BF0 | 38 60 00 00 */	li r3, 0x0
/* 814E8BF4 | 48 00 02 F0 */	b .L_814E8EE4
.L_814E8BF8:
/* 814E8BF8 | 54 80 AF 3E */	extrwi r0, r4, 4, 17
/* 814E8BFC | 28 00 00 0C */	cmplwi r0, 0xc
/* 814E8C00 | 40 81 00 0C */	ble .L_814E8C0C
/* 814E8C04 | 38 60 00 00 */	li r3, 0x0
/* 814E8C08 | 48 00 02 DC */	b .L_814E8EE4
.L_814E8C0C:
/* 814E8C0C | 54 80 D6 FE */	extrwi r0, r4, 5, 21
/* 814E8C10 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814E8C14 | 40 80 00 0C */	bge .L_814E8C20
/* 814E8C18 | 38 60 00 00 */	li r3, 0x0
/* 814E8C1C | 48 00 02 C8 */	b .L_814E8EE4
.L_814E8C20:
/* 814E8C20 | 28 00 00 12 */	cmplwi r0, 0x12
/* 814E8C24 | 40 81 00 0C */	ble .L_814E8C30
/* 814E8C28 | 38 60 00 00 */	li r3, 0x0
/* 814E8C2C | 48 00 02 B8 */	b .L_814E8EE4
.L_814E8C30:
/* 814E8C30 | A0 83 00 0C */	lhz r4, 0xc(r3)
/* 814E8C34 | 54 80 A7 3E */	extrwi r0, r4, 4, 16
/* 814E8C38 | 28 00 00 0B */	cmplwi r0, 0xb
/* 814E8C3C | 40 81 00 0C */	ble .L_814E8C48
/* 814E8C40 | 38 60 00 00 */	li r3, 0x0
/* 814E8C44 | 48 00 02 A0 */	b .L_814E8EE4
.L_814E8C48:
/* 814E8C48 | 54 80 C7 3E */	extrwi r0, r4, 4, 20
/* 814E8C4C | 28 00 00 08 */	cmplwi r0, 0x8
/* 814E8C50 | 40 81 00 0C */	ble .L_814E8C5C
/* 814E8C54 | 38 60 00 00 */	li r3, 0x0
/* 814E8C58 | 48 00 02 8C */	b .L_814E8EE4
.L_814E8C5C:
/* 814E8C5C | 54 80 EE FE */	extrwi r0, r4, 5, 24
/* 814E8C60 | 28 00 00 12 */	cmplwi r0, 0x12
/* 814E8C64 | 40 81 00 0C */	ble .L_814E8C70
/* 814E8C68 | 38 60 00 00 */	li r3, 0x0
/* 814E8C6C | 48 00 02 78 */	b .L_814E8EE4
.L_814E8C70:
/* 814E8C70 | A0 83 00 0E */	lhz r4, 0xe(r3)
/* 814E8C74 | 54 80 AE FE */	extrwi r0, r4, 5, 16
/* 814E8C78 | 28 00 00 17 */	cmplwi r0, 0x17
/* 814E8C7C | 40 81 00 0C */	ble .L_814E8C88
/* 814E8C80 | 38 60 00 00 */	li r3, 0x0
/* 814E8C84 | 48 00 02 60 */	b .L_814E8EE4
.L_814E8C88:
/* 814E8C88 | 54 80 BF BE */	extrwi r0, r4, 2, 21
/* 814E8C8C | 28 00 00 02 */	cmplwi r0, 0x2
/* 814E8C90 | 40 81 00 0C */	ble .L_814E8C9C
/* 814E8C94 | 38 60 00 00 */	li r3, 0x0
/* 814E8C98 | 48 00 02 4C */	b .L_814E8EE4
.L_814E8C9C:
/* 814E8C9C | 54 80 DF 3E */	extrwi r0, r4, 4, 23
/* 814E8CA0 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814E8CA4 | 40 81 00 0C */	ble .L_814E8CB0
/* 814E8CA8 | 38 60 00 00 */	li r3, 0x0
/* 814E8CAC | 48 00 02 38 */	b .L_814E8EE4
.L_814E8CB0:
/* 814E8CB0 | 54 80 06 FE */	clrlwi r0, r4, 27
/* 814E8CB4 | 28 00 00 12 */	cmplwi r0, 0x12
/* 814E8CB8 | 40 81 00 0C */	ble .L_814E8CC4
/* 814E8CBC | 38 60 00 00 */	li r3, 0x0
/* 814E8CC0 | 48 00 02 24 */	b .L_814E8EE4
.L_814E8CC4:
/* 814E8CC4 | A0 83 00 10 */	lhz r4, 0x10(r3)
/* 814E8CC8 | 54 80 97 BE */	extrwi r0, r4, 2, 16
/* 814E8CCC | 28 00 00 03 */	cmplwi r0, 0x3
/* 814E8CD0 | 40 81 00 0C */	ble .L_814E8CDC
/* 814E8CD4 | 38 60 00 00 */	li r3, 0x0
/* 814E8CD8 | 48 00 02 0C */	b .L_814E8EE4
.L_814E8CDC:
/* 814E8CDC | 54 80 A7 BE */	extrwi r0, r4, 2, 18
/* 814E8CE0 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814E8CE4 | 40 81 00 0C */	ble .L_814E8CF0
/* 814E8CE8 | 38 60 00 00 */	li r3, 0x0
/* 814E8CEC | 48 00 01 F8 */	b .L_814E8EE4
.L_814E8CF0:
/* 814E8CF0 | 54 80 BF 7E */	extrwi r0, r4, 3, 20
/* 814E8CF4 | 28 00 00 07 */	cmplwi r0, 0x7
/* 814E8CF8 | 40 81 00 0C */	ble .L_814E8D04
/* 814E8CFC | 38 60 00 00 */	li r3, 0x0
/* 814E8D00 | 48 00 01 E4 */	b .L_814E8EE4
.L_814E8D04:
/* 814E8D04 | 54 80 DF 3E */	extrwi r0, r4, 4, 23
/* 814E8D08 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814E8D0C | 40 81 00 0C */	ble .L_814E8D18
/* 814E8D10 | 38 60 00 00 */	li r3, 0x0
/* 814E8D14 | 48 00 01 D0 */	b .L_814E8EE4
.L_814E8D18:
/* 814E8D18 | 54 80 06 FE */	clrlwi r0, r4, 27
/* 814E8D1C | 28 00 00 10 */	cmplwi r0, 0x10
/* 814E8D20 | 40 81 00 0C */	ble .L_814E8D2C
/* 814E8D24 | 38 60 00 00 */	li r3, 0x0
/* 814E8D28 | 48 00 01 BC */	b .L_814E8EE4
.L_814E8D2C:
/* 814E8D2C | A0 83 00 12 */	lhz r4, 0x12(r3)
/* 814E8D30 | 54 80 A7 3E */	extrwi r0, r4, 4, 16
/* 814E8D34 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814E8D38 | 40 81 00 0C */	ble .L_814E8D44
/* 814E8D3C | 38 60 00 00 */	li r3, 0x0
/* 814E8D40 | 48 00 01 A4 */	b .L_814E8EE4
.L_814E8D44:
/* 814E8D44 | 54 80 BF 7E */	extrwi r0, r4, 3, 20
/* 814E8D48 | 28 00 00 05 */	cmplwi r0, 0x5
/* 814E8D4C | 40 81 00 0C */	ble .L_814E8D58
/* 814E8D50 | 38 60 00 00 */	li r3, 0x0
/* 814E8D54 | 48 00 01 90 */	b .L_814E8EE4
.L_814E8D58:
/* 814E8D58 | 54 80 DF 3E */	extrwi r0, r4, 4, 23
/* 814E8D5C | 28 00 00 07 */	cmplwi r0, 0x7
/* 814E8D60 | 40 81 00 0C */	ble .L_814E8D6C
/* 814E8D64 | 38 60 00 00 */	li r3, 0x0
/* 814E8D68 | 48 00 01 7C */	b .L_814E8EE4
.L_814E8D6C:
/* 814E8D6C | 54 80 06 FE */	clrlwi r0, r4, 27
/* 814E8D70 | 28 00 00 14 */	cmplwi r0, 0x14
/* 814E8D74 | 40 81 00 0C */	ble .L_814E8D80
/* 814E8D78 | 38 60 00 00 */	li r3, 0x0
/* 814E8D7C | 48 00 01 68 */	b .L_814E8EE4
.L_814E8D80:
/* 814E8D80 | A0 83 00 14 */	lhz r4, 0x14(r3)
/* 814E8D84 | 54 80 8F FE */	extrwi r0, r4, 1, 16
/* 814E8D88 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814E8D8C | 40 81 00 0C */	ble .L_814E8D98
/* 814E8D90 | 38 60 00 00 */	li r3, 0x0
/* 814E8D94 | 48 00 01 50 */	b .L_814E8EE4
.L_814E8D98:
/* 814E8D98 | 54 80 AF 3E */	extrwi r0, r4, 4, 17
/* 814E8D9C | 28 00 00 08 */	cmplwi r0, 0x8
/* 814E8DA0 | 40 81 00 0C */	ble .L_814E8DAC
/* 814E8DA4 | 38 60 00 00 */	li r3, 0x0
/* 814E8DA8 | 48 00 01 3C */	b .L_814E8EE4
.L_814E8DAC:
/* 814E8DAC | 54 80 D6 FE */	extrwi r0, r4, 5, 21
/* 814E8DB0 | 28 00 00 10 */	cmplwi r0, 0x10
/* 814E8DB4 | 40 81 00 0C */	ble .L_814E8DC0
/* 814E8DB8 | 38 60 00 00 */	li r3, 0x0
/* 814E8DBC | 48 00 01 28 */	b .L_814E8EE4
.L_814E8DC0:
/* 814E8DC0 | 54 80 FE FE */	extrwi r0, r4, 5, 26
/* 814E8DC4 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 814E8DC8 | 40 81 00 0C */	ble .L_814E8DD4
/* 814E8DCC | 38 60 00 00 */	li r3, 0x0
/* 814E8DD0 | 48 00 01 14 */	b .L_814E8EE4
.L_814E8DD4:
/* 814E8DD4 | 4B FF D7 F1 */	bl RFLiIsValidName2
/* 814E8DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E8DDC | 40 82 00 0C */	bne .L_814E8DE8
/* 814E8DE0 | 38 60 00 00 */	li r3, 0x0
/* 814E8DE4 | 48 00 01 00 */	b .L_814E8EE4
.L_814E8DE8:
/* 814E8DE8 | 88 1F 00 16 */	lbz r0, 0x16(r31)
/* 814E8DEC | 28 00 00 80 */	cmplwi r0, 0x80
/* 814E8DF0 | 40 81 00 0C */	ble .L_814E8DFC
/* 814E8DF4 | 38 60 00 00 */	li r3, 0x0
/* 814E8DF8 | 48 00 00 EC */	b .L_814E8EE4
.L_814E8DFC:
/* 814E8DFC | 88 1F 00 17 */	lbz r0, 0x17(r31)
/* 814E8E00 | 28 00 00 80 */	cmplwi r0, 0x80
/* 814E8E04 | 40 81 00 0C */	ble .L_814E8E10
/* 814E8E08 | 38 60 00 00 */	li r3, 0x0
/* 814E8E0C | 48 00 00 D8 */	b .L_814E8EE4
.L_814E8E10:
/* 814E8E10 | A0 7F 00 44 */	lhz r3, 0x44(r31)
/* 814E8E14 | 54 60 8F FE */	extrwi r0, r3, 1, 16
/* 814E8E18 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814E8E1C | 40 81 00 0C */	ble .L_814E8E28
/* 814E8E20 | 38 60 00 00 */	li r3, 0x0
/* 814E8E24 | 48 00 00 C0 */	b .L_814E8EE4
.L_814E8E28:
/* 814E8E28 | 54 60 AF 3F */	extrwi. r0, r3, 4, 17
/* 814E8E2C | 54 64 D6 FE */	extrwi r4, r3, 5, 21
/* 814E8E30 | 40 82 00 14 */	bne .L_814E8E44
/* 814E8E34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E8E38 | 41 82 00 0C */	beq .L_814E8E44
/* 814E8E3C | 38 00 00 00 */	li r0, 0x0
/* 814E8E40 | 48 00 00 54 */	b .L_814E8E94
.L_814E8E44:
/* 814E8E44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E8E48 | 41 82 00 14 */	beq .L_814E8E5C
/* 814E8E4C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E8E50 | 40 82 00 0C */	bne .L_814E8E5C
/* 814E8E54 | 38 00 00 00 */	li r0, 0x0
/* 814E8E58 | 48 00 00 3C */	b .L_814E8E94
.L_814E8E5C:
/* 814E8E5C | 28 00 00 0C */	cmplwi r0, 0xc
/* 814E8E60 | 41 81 00 0C */	bgt .L_814E8E6C
/* 814E8E64 | 28 04 00 1F */	cmplwi r4, 0x1f
/* 814E8E68 | 40 81 00 0C */	ble .L_814E8E74
.L_814E8E6C:
/* 814E8E6C | 38 00 00 00 */	li r0, 0x0
/* 814E8E70 | 48 00 00 24 */	b .L_814E8E94
.L_814E8E74:
/* 814E8E74 | 3C 60 81 62 */	lis r3, scDayMax$3750@ha
/* 814E8E78 | 38 63 E0 70 */	addi r3, r3, scDayMax$3750@l
/* 814E8E7C | 7C 63 00 AE */	lbzx r3, r3, r0
/* 814E8E80 | 7C 04 18 50 */	subf r0, r4, r3
/* 814E8E84 | 7C 63 23 38 */	orc r3, r3, r4
/* 814E8E88 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814E8E8C | 7C 00 18 50 */	subf r0, r0, r3
/* 814E8E90 | 54 00 0F FE */	srwi r0, r0, 31
.L_814E8E94:
/* 814E8E94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E8E98 | 40 82 00 0C */	bne .L_814E8EA4
/* 814E8E9C | 38 60 00 00 */	li r3, 0x0
/* 814E8EA0 | 48 00 00 44 */	b .L_814E8EE4
.L_814E8EA4:
/* 814E8EA4 | A0 1F 00 44 */	lhz r0, 0x44(r31)
/* 814E8EA8 | 54 00 F7 3E */	extrwi r0, r0, 4, 26
/* 814E8EAC | 28 00 00 0C */	cmplwi r0, 0xc
/* 814E8EB0 | 41 80 00 0C */	blt .L_814E8EBC
/* 814E8EB4 | 38 60 00 00 */	li r3, 0x0
/* 814E8EB8 | 48 00 00 2C */	b .L_814E8EE4
.L_814E8EBC:
/* 814E8EBC | 38 7F 00 46 */	addi r3, r31, 0x46
/* 814E8EC0 | 4B FF D4 F9 */	bl RFLiIsSpecialID
/* 814E8EC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E8EC8 | 41 82 00 18 */	beq .L_814E8EE0
/* 814E8ECC | A0 1F 00 44 */	lhz r0, 0x44(r31)
/* 814E8ED0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814E8ED4 | 40 82 00 0C */	bne .L_814E8EE0
/* 814E8ED8 | 38 60 00 00 */	li r3, 0x0
/* 814E8EDC | 48 00 00 08 */	b .L_814E8EE4
.L_814E8EE0:
/* 814E8EE0 | 38 60 00 01 */	li r3, 0x1
.L_814E8EE4:
/* 814E8EE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E8EE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814E8EEC | 7C 08 03 A6 */	mtlr r0
/* 814E8EF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E8EF4 | 4E 80 00 20 */	blr
.endfn RFLiCheckValidInfo

# .text:0x464 | 0x814E8EF8 | size: 0x2C
.fn RFLiIsValidOnNAND, global
/* 814E8EF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E8EFC | 7C 08 02 A6 */	mflr r0
/* 814E8F00 | 38 63 00 46 */	addi r3, r3, 0x46
/* 814E8F04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E8F08 | 4B FF D5 71 */	bl RFLiIsTemporaryID
/* 814E8F0C | 7C 60 00 34 */	cntlzw r0, r3
/* 814E8F10 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814E8F14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E8F18 | 7C 08 03 A6 */	mtlr r0
/* 814E8F1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E8F20 | 4E 80 00 20 */	blr
.endfn RFLiIsValidOnNAND

# .text:0x490 | 0x814E8F24 | size: 0x110
.fn RFLiIsSameFaceCore, global
/* 814E8F24 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814E8F28 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814E8F2C | 54 A5 00 34 */	clrrwi r5, r5, 5
/* 814E8F30 | 54 00 00 34 */	clrrwi r0, r0, 5
/* 814E8F34 | 7C 05 00 40 */	cmplw r5, r0
/* 814E8F38 | 41 82 00 0C */	beq .L_814E8F44
/* 814E8F3C | 38 60 00 00 */	li r3, 0x0
/* 814E8F40 | 4E 80 00 20 */	blr
.L_814E8F44:
/* 814E8F44 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814E8F48 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814E8F4C | 54 A5 00 32 */	clrrwi r5, r5, 6
/* 814E8F50 | 54 00 00 32 */	clrrwi r0, r0, 6
/* 814E8F54 | 7C 05 00 40 */	cmplw r5, r0
/* 814E8F58 | 41 82 00 0C */	beq .L_814E8F64
/* 814E8F5C | 38 60 00 00 */	li r3, 0x0
/* 814E8F60 | 4E 80 00 20 */	blr
.L_814E8F64:
/* 814E8F64 | A0 A3 00 0E */	lhz r5, 0xe(r3)
/* 814E8F68 | A0 04 00 0E */	lhz r0, 0xe(r4)
/* 814E8F6C | 7C 05 00 00 */	cmpw r5, r0
/* 814E8F70 | 41 82 00 0C */	beq .L_814E8F7C
/* 814E8F74 | 38 60 00 00 */	li r3, 0x0
/* 814E8F78 | 4E 80 00 20 */	blr
.L_814E8F7C:
/* 814E8F7C | A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 814E8F80 | A0 04 00 10 */	lhz r0, 0x10(r4)
/* 814E8F84 | 7C 05 00 00 */	cmpw r5, r0
/* 814E8F88 | 41 82 00 0C */	beq .L_814E8F94
/* 814E8F8C | 38 60 00 00 */	li r3, 0x0
/* 814E8F90 | 4E 80 00 20 */	blr
.L_814E8F94:
/* 814E8F94 | A0 A3 00 12 */	lhz r5, 0x12(r3)
/* 814E8F98 | A0 04 00 12 */	lhz r0, 0x12(r4)
/* 814E8F9C | 54 A5 04 3C */	rlwinm r5, r5, 0, 16, 30
/* 814E8FA0 | 54 00 04 3C */	rlwinm r0, r0, 0, 16, 30
/* 814E8FA4 | 7C 05 00 00 */	cmpw r5, r0
/* 814E8FA8 | 41 82 00 0C */	beq .L_814E8FB4
/* 814E8FAC | 38 60 00 00 */	li r3, 0x0
/* 814E8FB0 | 4E 80 00 20 */	blr
.L_814E8FB4:
/* 814E8FB4 | A0 A3 00 14 */	lhz r5, 0x14(r3)
/* 814E8FB8 | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 814E8FBC | 54 A5 04 3C */	rlwinm r5, r5, 0, 16, 30
/* 814E8FC0 | 54 00 04 3C */	rlwinm r0, r0, 0, 16, 30
/* 814E8FC4 | 7C 05 00 00 */	cmpw r5, r0
/* 814E8FC8 | 41 82 00 0C */	beq .L_814E8FD4
/* 814E8FCC | 38 60 00 00 */	li r3, 0x0
/* 814E8FD0 | 4E 80 00 20 */	blr
.L_814E8FD4:
/* 814E8FD4 | A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 814E8FD8 | A0 04 00 0C */	lhz r0, 0xc(r4)
/* 814E8FDC | 54 A5 04 38 */	rlwinm r5, r5, 0, 16, 28
/* 814E8FE0 | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 814E8FE4 | 7C 05 00 00 */	cmpw r5, r0
/* 814E8FE8 | 41 82 00 0C */	beq .L_814E8FF4
/* 814E8FEC | 38 60 00 00 */	li r3, 0x0
/* 814E8FF0 | 4E 80 00 20 */	blr
.L_814E8FF4:
/* 814E8FF4 | A0 A3 00 02 */	lhz r5, 0x2(r3)
/* 814E8FF8 | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 814E8FFC | 54 A5 04 34 */	rlwinm r5, r5, 0, 16, 26
/* 814E9000 | 54 00 04 34 */	rlwinm r0, r0, 0, 16, 26
/* 814E9004 | 7C 05 00 00 */	cmpw r5, r0
/* 814E9008 | 41 82 00 0C */	beq .L_814E9014
/* 814E900C | 38 60 00 00 */	li r3, 0x0
/* 814E9010 | 4E 80 00 20 */	blr
.L_814E9014:
/* 814E9014 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 814E9018 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814E901C | 54 63 04 32 */	rlwinm r3, r3, 0, 16, 25
/* 814E9020 | 54 00 04 32 */	rlwinm r0, r0, 0, 16, 25
/* 814E9024 | 7C 03 00 50 */	subf r0, r3, r0
/* 814E9028 | 7C 00 00 34 */	cntlzw r0, r0
/* 814E902C | 54 03 D9 7E */	srwi r3, r0, 5
/* 814E9030 | 4E 80 00 20 */	blr
.endfn RFLiIsSameFaceCore

# .text:0x5A0 | 0x814E9034 | size: 0x140
.fn RFLiPickupCharInfo, global
/* 814E9034 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E9038 | 7C 08 02 A6 */	mflr r0
/* 814E903C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E9040 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E9044 | 7C DF 33 78 */	mr r31, r6
/* 814E9048 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E904C | 7C BE 2B 78 */	mr r30, r5
/* 814E9050 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E9054 | 7C 9D 23 78 */	mr r29, r4
/* 814E9058 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814E905C | 7C 7C 1B 78 */	mr r28, r3
/* 814E9060 | 4B FF 1B D5 */	bl RFLAvailable
/* 814E9064 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9068 | 40 82 00 0C */	bne .L_814E9074
/* 814E906C | 38 60 00 01 */	li r3, 0x1
/* 814E9070 | 48 00 00 E4 */	b .L_814E9154
.L_814E9074:
/* 814E9074 | 2C 1D 00 06 */	cmpwi r29, 0x6
/* 814E9078 | 41 82 00 94 */	beq .L_814E910C
/* 814E907C | 40 80 00 1C */	bge .L_814E9098
/* 814E9080 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 814E9084 | 41 82 00 98 */	beq .L_814E911C
/* 814E9088 | 40 80 00 30 */	bge .L_814E90B8
/* 814E908C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814E9090 | 40 80 00 14 */	bge .L_814E90A4
/* 814E9094 | 48 00 00 88 */	b .L_814E911C
.L_814E9098:
/* 814E9098 | 2C 1D 00 08 */	cmpwi r29, 0x8
/* 814E909C | 40 80 00 80 */	bge .L_814E911C
/* 814E90A0 | 48 00 00 44 */	b .L_814E90E4
.L_814E90A4:
/* 814E90A4 | 7F 83 E3 78 */	mr r3, r28
/* 814E90A8 | 7F E4 FB 78 */	mr r4, r31
/* 814E90AC | 4B FF CD AD */	bl RFLiGetCharInfo
/* 814E90B0 | 7C 7F 1B 78 */	mr r31, r3
/* 814E90B4 | 48 00 00 68 */	b .L_814E911C
.L_814E90B8:
/* 814E90B8 | 7F 83 E3 78 */	mr r3, r28
/* 814E90BC | 38 9D FF FE */	subi r4, r29, 0x2
/* 814E90C0 | 57 E5 06 3E */	clrlwi r5, r31, 24
/* 814E90C4 | 38 C0 00 00 */	li r6, 0x0
/* 814E90C8 | 4B FF DC A9 */	bl RFLiGetControllerData
/* 814E90CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E90D0 | 41 82 00 0C */	beq .L_814E90DC
/* 814E90D4 | 3B E0 00 00 */	li r31, 0x0
/* 814E90D8 | 48 00 00 44 */	b .L_814E911C
.L_814E90DC:
/* 814E90DC | 3B E0 00 07 */	li r31, 0x7
/* 814E90E0 | 48 00 00 3C */	b .L_814E911C
.L_814E90E4:
/* 814E90E4 | 7F 83 E3 78 */	mr r3, r28
/* 814E90E8 | 7F C4 F3 78 */	mr r4, r30
/* 814E90EC | 7F E5 FB 78 */	mr r5, r31
/* 814E90F0 | 4B FF EB 19 */	bl RFLiGetCharInfoMiddleDB
/* 814E90F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E90F8 | 41 82 00 0C */	beq .L_814E9104
/* 814E90FC | 3B E0 00 00 */	li r31, 0x0
/* 814E9100 | 48 00 00 1C */	b .L_814E911C
.L_814E9104:
/* 814E9104 | 3B E0 00 07 */	li r31, 0x7
/* 814E9108 | 48 00 00 14 */	b .L_814E911C
.L_814E910C:
/* 814E910C | 7F 83 E3 78 */	mr r3, r28
/* 814E9110 | 7F E4 FB 78 */	mr r4, r31
/* 814E9114 | 4B FF F9 69 */	bl RFLiGetDefaultData
/* 814E9118 | 3B E0 00 00 */	li r31, 0x0
.L_814E911C:
/* 814E911C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814E9120 | 40 82 00 30 */	bne .L_814E9150
/* 814E9124 | 38 7C 00 46 */	addi r3, r28, 0x46
/* 814E9128 | 4B FF D2 59 */	bl RFLiIsValidID
/* 814E912C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9130 | 40 82 00 0C */	bne .L_814E913C
/* 814E9134 | 3B E0 00 07 */	li r31, 0x7
/* 814E9138 | 48 00 00 18 */	b .L_814E9150
.L_814E913C:
/* 814E913C | 7F 83 E3 78 */	mr r3, r28
/* 814E9140 | 4B FF F9 55 */	bl RFLiCheckValidInfo
/* 814E9144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9148 | 40 82 00 08 */	bne .L_814E9150
/* 814E914C | 3B E0 00 07 */	li r31, 0x7
.L_814E9150:
/* 814E9150 | 7F E3 FB 78 */	mr r3, r31
.L_814E9154:
/* 814E9154 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E9158 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E915C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E9160 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E9164 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814E9168 | 7C 08 03 A6 */	mtlr r0
/* 814E916C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E9170 | 4E 80 00 20 */	blr
.endfn RFLiPickupCharInfo

# .text:0x6E0 | 0x814E9174 | size: 0x190
.fn copyChar2Additional_, local
/* 814E9174 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E9178 | 7C 08 02 A6 */	mflr r0
/* 814E917C | 38 A0 00 14 */	li r5, 0x14
/* 814E9180 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E9184 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E9188 | 7C 9F 23 78 */	mr r31, r4
/* 814E918C | 38 84 00 18 */	addi r4, r4, 0x18
/* 814E9190 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E9194 | 7C 7E 1B 78 */	mr r30, r3
/* 814E9198 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E919C | 4B E4 70 95 */	bl memcpy
/* 814E91A0 | 3B A0 00 00 */	li r29, 0x0
/* 814E91A4 | 38 7E 00 16 */	addi r3, r30, 0x16
/* 814E91A8 | B3 BE 00 14 */	sth r29, 0x14(r30)
/* 814E91AC | 38 9F 00 2E */	addi r4, r31, 0x2e
/* 814E91B0 | 38 A0 00 14 */	li r5, 0x14
/* 814E91B4 | 4B E4 70 7D */	bl memcpy
/* 814E91B8 | A0 7F 00 44 */	lhz r3, 0x44(r31)
/* 814E91BC | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 814E91C0 | 50 60 80 00 */	rlwimi r0, r3, 16, 0, 0
/* 814E91C4 | 54 65 AF 3F */	extrwi. r5, r3, 4, 17
/* 814E91C8 | B3 BE 00 14 */	sth r29, 0x14(r30)
/* 814E91CC | 54 64 D6 FE */	extrwi r4, r3, 5, 21
/* 814E91D0 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 814E91D4 | 40 82 00 14 */	bne .L_814E91E8
/* 814E91D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E91DC | 41 82 00 0C */	beq .L_814E91E8
/* 814E91E0 | 38 00 00 00 */	li r0, 0x0
/* 814E91E4 | 48 00 00 54 */	b .L_814E9238
.L_814E91E8:
/* 814E91E8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814E91EC | 41 82 00 14 */	beq .L_814E9200
/* 814E91F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814E91F4 | 40 82 00 0C */	bne .L_814E9200
/* 814E91F8 | 38 00 00 00 */	li r0, 0x0
/* 814E91FC | 48 00 00 3C */	b .L_814E9238
.L_814E9200:
/* 814E9200 | 28 05 00 0C */	cmplwi r5, 0xc
/* 814E9204 | 41 81 00 0C */	bgt .L_814E9210
/* 814E9208 | 28 04 00 1F */	cmplwi r4, 0x1f
/* 814E920C | 40 81 00 0C */	ble .L_814E9218
.L_814E9210:
/* 814E9210 | 38 00 00 00 */	li r0, 0x0
/* 814E9214 | 48 00 00 24 */	b .L_814E9238
.L_814E9218:
/* 814E9218 | 3C 60 81 62 */	lis r3, scDayMax$3750@ha
/* 814E921C | 38 63 E0 70 */	addi r3, r3, scDayMax$3750@l
/* 814E9220 | 7C 63 28 AE */	lbzx r3, r3, r5
/* 814E9224 | 7C 04 18 50 */	subf r0, r4, r3
/* 814E9228 | 7C 63 23 38 */	orc r3, r3, r4
/* 814E922C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814E9230 | 7C 00 18 50 */	subf r0, r0, r3
/* 814E9234 | 54 00 0F FE */	srwi r0, r0, 31
.L_814E9238:
/* 814E9238 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E923C | 41 82 00 1C */	beq .L_814E9258
/* 814E9240 | A0 1F 00 44 */	lhz r0, 0x44(r31)
/* 814E9244 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 814E9248 | 50 A3 D8 48 */	rlwimi r3, r5, 27, 1, 4
/* 814E924C | 50 03 81 52 */	rlwimi r3, r0, 16, 5, 9
/* 814E9250 | 90 7E 00 34 */	stw r3, 0x34(r30)
/* 814E9254 | 48 00 00 10 */	b .L_814E9264
.L_814E9258:
/* 814E9258 | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 814E925C | 54 00 02 80 */	rlwinm r0, r0, 0, 10, 0
/* 814E9260 | 90 1E 00 34 */	stw r0, 0x34(r30)
.L_814E9264:
/* 814E9264 | 88 9F 00 16 */	lbz r4, 0x16(r31)
/* 814E9268 | A0 7F 00 44 */	lhz r3, 0x44(r31)
/* 814E926C | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 814E9270 | 28 04 00 7F */	cmplwi r4, 0x7f
/* 814E9274 | 50 60 82 9A */	rlwimi r0, r3, 16, 10, 13
/* 814E9278 | 88 DF 00 17 */	lbz r6, 0x17(r31)
/* 814E927C | 50 60 83 9C */	rlwimi r0, r3, 16, 14, 14
/* 814E9280 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 814E9284 | 40 81 00 08 */	ble .L_814E928C
/* 814E9288 | 38 80 00 7F */	li r4, 0x7f
.L_814E928C:
/* 814E928C | 28 06 00 7F */	cmplwi r6, 0x7f
/* 814E9290 | 40 81 00 08 */	ble .L_814E9298
/* 814E9294 | 38 C0 00 7F */	li r6, 0x7f
.L_814E9298:
/* 814E9298 | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 814E929C | 50 80 53 EA */	rlwimi r0, r4, 10, 15, 21
/* 814E92A0 | 50 C0 1D B8 */	rlwimi r0, r6, 3, 22, 28
/* 814E92A4 | 38 7E 00 2C */	addi r3, r30, 0x2c
/* 814E92A8 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 814E92AC | 38 9F 00 46 */	addi r4, r31, 0x46
/* 814E92B0 | 38 A0 00 08 */	li r5, 0x8
/* 814E92B4 | 4B E4 6F 7D */	bl memcpy
/* 814E92B8 | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 814E92BC | 7F E3 FB 78 */	mr r3, r31
/* 814E92C0 | 54 00 00 38 */	clrrwi r0, r0, 3
/* 814E92C4 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 814E92C8 | 4B FF 66 4D */	bl RFLiGetFacelineColor
/* 814E92CC | 54 60 46 3E */	srwi r0, r3, 24
/* 814E92D0 | 98 7E 00 3B */	stb r3, 0x3b(r30)
/* 814E92D4 | 98 1E 00 38 */	stb r0, 0x38(r30)
/* 814E92D8 | 54 60 86 3E */	extrwi r0, r3, 8, 8
/* 814E92DC | 98 1E 00 39 */	stb r0, 0x39(r30)
/* 814E92E0 | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 814E92E4 | 98 1E 00 3A */	stb r0, 0x3a(r30)
/* 814E92E8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E92EC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E92F0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E92F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E92F8 | 7C 08 03 A6 */	mtlr r0
/* 814E92FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E9300 | 4E 80 00 20 */	blr
.endfn copyChar2Additional_

# .text:0x870 | 0x814E9304 | size: 0x54
.fn RFLGetAdditionalInfo, global
/* 814E9304 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814E9308 | 7C 08 02 A6 */	mflr r0
/* 814E930C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814E9310 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 814E9314 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 814E9318 | 7C 7E 1B 78 */	mr r30, r3
/* 814E931C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E9320 | 4B FF FD 15 */	bl RFLiPickupCharInfo
/* 814E9324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E9328 | 7C 7F 1B 78 */	mr r31, r3
/* 814E932C | 40 82 00 10 */	bne .L_814E933C
/* 814E9330 | 7F C3 F3 78 */	mr r3, r30
/* 814E9334 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E9338 | 4B FF FE 3D */	bl copyChar2Additional_
.L_814E933C:
/* 814E933C | 7F E3 FB 78 */	mr r3, r31
/* 814E9340 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 814E9344 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 814E9348 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814E934C | 7C 08 03 A6 */	mtlr r0
/* 814E9350 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814E9354 | 4E 80 00 20 */	blr
.endfn RFLGetAdditionalInfo

# 0x8161E070..0x8161E080 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x8161E070 | size: 0xD
.obj scDayMax$3750, local
	.4byte 0x001F1D1F
	.4byte 0x1E1F1E1F
	.4byte 0x1F1E1F1E
	.byte 0x1F
.endobj scDayMax$3750

# .rodata:0xD | 0x8161E07D | size: 0x3
.obj gap_07_8161E07D_rodata, global
.hidden gap_07_8161E07D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_07_8161E07D_rodata
