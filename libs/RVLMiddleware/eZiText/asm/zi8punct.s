.include "macros.inc"
.file "zi8punct.c"

# 0x813306F0..0x813306F8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x813306F0 | size: 0x8
.obj "@etb_813306F0", local
.hidden "@etb_813306F0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_813306F0"

# 0x813313F8..0x81331404 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x813313F8 | size: 0xC
.obj "@eti_813313F8", local
.hidden "@eti_813313F8"
	.4byte Zi8Punctuation
	.4byte 0x0000012C
	.4byte "@etb_813306F0"
.endobj "@eti_813313F8"

# 0x8147FDF0..0x8147FF1C | size: 0x12C
.text
.balign 4

# .text:0x0 | 0x8147FDF0 | size: 0x12C
.fn Zi8Punctuation, global
/* 8147FDF0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8147FDF4 | 7C 08 02 A6 */	mflr r0
/* 8147FDF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147FDFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8147FE00 | 48 17 96 C1 */	bl _savegpr_27
/* 8147FE04 | A0 A4 00 10 */	lhz r5, 0x10(r4)
/* 8147FE08 | 3B 65 FF FF */	subi r27, r5, 0x1
/* 8147FE0C | 3B E0 00 00 */	li r31, 0x0
/* 8147FE10 | 3B C0 00 00 */	li r30, 0x0
/* 8147FE14 | A3 83 00 1E */	lhz r28, 0x1e(r3)
/* 8147FE18 | 3B A0 00 00 */	li r29, 0x0
.L_8147FE1C:
/* 8147FE1C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8147FE20 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147FE24 | 3C A0 81 62 */	lis r5, Zi8PunctTable@ha
/* 8147FE28 | 38 A5 81 30 */	addi r5, r5, Zi8PunctTable@l
/* 8147FE2C | 7C 05 02 2E */	lhzx r0, r5, r0
/* 8147FE30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FE34 | 41 82 00 B8 */	beq .L_8147FEEC
/* 8147FE38 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 8147FE3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FE40 | 40 82 00 A0 */	bne .L_8147FEE0
/* 8147FE44 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147FE48 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8147FE4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FE50 | 40 82 00 7C */	bne .L_8147FECC
/* 8147FE54 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8147FE58 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147FE5C | 3C A0 81 62 */	lis r5, Zi8PunctTable@ha
/* 8147FE60 | 38 A5 81 30 */	addi r5, r5, Zi8PunctTable@l
/* 8147FE64 | 7C 05 02 2E */	lhzx r0, r5, r0
/* 8147FE68 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 8147FE6C | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8147FE70 | 7F C0 F3 78 */	mr r0, r30
/* 8147FE74 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147FE78 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147FE7C | 54 00 08 3C */	slwi r0, r0, 1
/* 8147FE80 | 7C C5 03 2E */	sthx r6, r5, r0
/* 8147FE84 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 8147FE88 | 54 00 06 F6 */	rlwinm r0, r0, 0, 27, 27
/* 8147FE8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FE90 | 41 82 00 2C */	beq .L_8147FEBC
/* 8147FE94 | 38 C0 00 20 */	li r6, 0x20
/* 8147FE98 | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8147FE9C | 7F C0 F3 78 */	mr r0, r30
/* 8147FEA0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147FEA4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147FEA8 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147FEAC | 7C C5 03 2E */	sthx r6, r5, r0
/* 8147FEB0 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147FEB4 | 7C 00 D8 00 */	cmpw r0, r27
/* 8147FEB8 | 40 80 00 34 */	bge .L_8147FEEC
.L_8147FEBC:
/* 8147FEBC | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8147FEC0 | 7C 1F 00 00 */	cmpw r31, r0
/* 8147FEC4 | 40 80 00 28 */	bge .L_8147FEEC
/* 8147FEC8 | 48 00 00 1C */	b .L_8147FEE4
.L_8147FECC:
/* 8147FECC | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 8147FED0 | 7C 1F 00 00 */	cmpw r31, r0
/* 8147FED4 | 41 80 00 10 */	blt .L_8147FEE4
/* 8147FED8 | 7F E3 FB 78 */	mr r3, r31
/* 8147FEDC | 48 00 00 28 */	b .L_8147FF04
.L_8147FEE0:
/* 8147FEE0 | 3B 9C FF FF */	subi r28, r28, 0x1
.L_8147FEE4:
/* 8147FEE4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8147FEE8 | 4B FF FF 34 */	b .L_8147FE1C
.L_8147FEEC:
/* 8147FEEC | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8147FEF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FEF4 | 40 82 00 0C */	bne .L_8147FF00
/* 8147FEF8 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8147FEFC | 98 03 00 21 */	stb r0, 0x21(r3)
.L_8147FF00:
/* 8147FF00 | 7F E3 FB 78 */	mr r3, r31
.L_8147FF04:
/* 8147FF04 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8147FF08 | 48 17 96 05 */	bl _restgpr_27
/* 8147FF0C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147FF10 | 7C 08 03 A6 */	mtlr r0
/* 8147FF14 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8147FF18 | 4E 80 00 20 */	blr
.endfn Zi8Punctuation

# 0x81618130..0x81618180 | size: 0x50
.rodata
.balign 8

# .rodata:0x0 | 0x81618130 | size: 0x50
.obj Zi8PunctTable, global
	.4byte 0xFF0C3002
	.4byte 0x3001FF1A
	.4byte 0xFF1FFF01
	.4byte 0x30052026
	.4byte 0x2015FF1B
	.4byte 0xFF0E30FB
	.4byte 0x201C201D
	.4byte 0xFF08FF09
	.4byte 0x300C300D
	.4byte 0xFF10FF11
	.4byte 0xFF12FF13
	.4byte 0xFF14FF15
	.4byte 0xFF16FF17
	.4byte 0xFF18FF19
	.4byte 0xFF0FFF05
	.4byte 0xFFE5FF04
	.4byte 0xFFE120AC
	.4byte 0x203BFF20
	.4byte 0x00000000
	.4byte 0x00000000
.endobj Zi8PunctTable
