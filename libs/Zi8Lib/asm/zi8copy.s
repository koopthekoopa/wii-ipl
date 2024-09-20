.include "macros.inc"
.file "zi8copy.c"

# 0x81330590..0x813305A0 | size: 0x10
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330590 | size: 0x8
.obj "@etb_81330590", local
.hidden "@etb_81330590"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330590"

# extab:0x8 | 0x81330598 | size: 0x8
.obj "@etb_81330598", local
.hidden "@etb_81330598"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330598"

# 0x813311E8..0x81331200 | size: 0x18
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x813311E8 | size: 0xC
.obj "@eti_813311E8", local
.hidden "@eti_813311E8"
	.4byte Zi8CopyWordListW
	.4byte 0x00000134
	.4byte "@etb_81330590"
.endobj "@eti_813311E8"

# extabindex:0xC | 0x813311F4 | size: 0xC
.obj "@eti_813311F4", local
.hidden "@eti_813311F4"
	.4byte Zi8CopyW
	.4byte 0x00000050
	.4byte "@etb_81330598"
.endobj "@eti_813311F4"

# 0x814790A8..0x8147922C | size: 0x184
.text
.balign 4

# .text:0x0 | 0x814790A8 | size: 0x134
.fn Zi8CopyWordListW, global
/* 814790A8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814790AC | 7C 08 02 A6 */	mflr r0
/* 814790B0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814790B4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814790B8 | 48 18 04 09 */	bl _savegpr_27
/* 814790BC | 7C 7C 1B 78 */	mr r28, r3
/* 814790C0 | 98 81 00 08 */	stb r4, 0x8(r1)
/* 814790C4 | 7C BF 2B 78 */	mr r31, r5
/* 814790C8 | 7C DB 33 78 */	mr r27, r6
/* 814790CC | 7C FD 3B 78 */	mr r29, r7
/* 814790D0 | 3B C0 00 00 */	li r30, 0x0
.L_814790D4:
/* 814790D4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 814790D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814790DC | 40 82 00 8C */	bne .L_81479168
/* 814790E0 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814790E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814790E8 | 40 82 00 1C */	bne .L_81479104
/* 814790EC | 38 60 01 32 */	li r3, 0x132
/* 814790F0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814790F4 | 7F A4 EB 78 */	mr r4, r29
/* 814790F8 | 48 00 B3 85 */	bl Zi8LogError
/* 814790FC | 38 60 00 00 */	li r3, 0x0
/* 81479100 | 48 00 00 C4 */	b .L_814791C4
.L_81479104:
/* 81479104 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81479108 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8147910C | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 81479110 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81479114 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81479118 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147911C | 7C 03 00 40 */	cmplw r3, r0
/* 81479120 | 41 80 00 1C */	blt .L_8147913C
/* 81479124 | 38 60 03 20 */	li r3, 0x320
/* 81479128 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147912C | 7F A4 EB 78 */	mr r4, r29
/* 81479130 | 48 00 B3 4D */	bl Zi8LogError
/* 81479134 | 7F C3 F3 78 */	mr r3, r30
/* 81479138 | 48 00 00 8C */	b .L_814791C4
.L_8147913C:
/* 8147913C | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 81479140 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 81479144 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81479148 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147914C | 40 82 FF B8 */	bne .L_81479104
/* 81479150 | 38 60 00 64 */	li r3, 0x64
/* 81479154 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81479158 | 7F A4 EB 78 */	mr r4, r29
/* 8147915C | 48 00 B3 21 */	bl Zi8LogError
/* 81479160 | 7F C3 F3 78 */	mr r3, r30
/* 81479164 | 48 00 00 60 */	b .L_814791C4
.L_81479168:
/* 81479168 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147916C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81479170 | 40 82 00 1C */	bne .L_8147918C
/* 81479174 | 38 60 01 32 */	li r3, 0x132
/* 81479178 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147917C | 7F A4 EB 78 */	mr r4, r29
/* 81479180 | 48 00 B2 FD */	bl Zi8LogError
/* 81479184 | 38 60 00 00 */	li r3, 0x0
/* 81479188 | 48 00 00 3C */	b .L_814791C4
.L_8147918C:
/* 8147918C | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81479190 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 81479194 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81479198 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147919C | 40 82 FF F0 */	bne .L_8147918C
/* 814791A0 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 814791A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814791A8 | 3B 7B FF FF */	subi r27, r27, 0x1
/* 814791AC | 40 82 FF 28 */	bne .L_814790D4
/* 814791B0 | 38 60 01 32 */	li r3, 0x132
/* 814791B4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814791B8 | 7F A4 EB 78 */	mr r4, r29
/* 814791BC | 48 00 B2 C1 */	bl Zi8LogError
/* 814791C0 | 38 60 00 00 */	li r3, 0x0
.L_814791C4:
/* 814791C4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814791C8 | 48 18 03 45 */	bl _restgpr_27
/* 814791CC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814791D0 | 7C 08 03 A6 */	mtlr r0
/* 814791D4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814791D8 | 4E 80 00 20 */	blr
.endfn Zi8CopyWordListW

# .text:0x134 | 0x814791DC | size: 0x50
.fn Zi8CopyW, global
/* 814791DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814791E0 | 7C 08 02 A6 */	mflr r0
/* 814791E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814791E8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814791EC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814791F0 | 7C 9F 23 78 */	mr r31, r4
/* 814791F4 | 98 A1 00 0C */	stb r5, 0xc(r1)
/* 814791F8 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 814791FC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81479200 | 38 80 00 FF */	li r4, 0xff
/* 81479204 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81479208 | 80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8147920C | 88 C1 00 0C */	lbz r6, 0xc(r1)
/* 81479210 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 81479214 | 4B FF FE 95 */	bl Zi8CopyWordListW
/* 81479218 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8147921C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81479220 | 7C 08 03 A6 */	mtlr r0
/* 81479224 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81479228 | 4E 80 00 20 */	blr
.endfn Zi8CopyW
