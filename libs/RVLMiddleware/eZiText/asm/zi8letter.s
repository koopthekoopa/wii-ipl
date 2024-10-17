.include "macros.inc"
.file "zi8letter.c"

# 0x81330478..0x813304C8 | size: 0x50
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330478 | size: 0x8
.obj "@etb_81330478", local
.hidden "@etb_81330478"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330478"

# extab:0x8 | 0x81330480 | size: 0x8
.obj "@etb_81330480", local
.hidden "@etb_81330480"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330480"

# extab:0x10 | 0x81330488 | size: 0x8
.obj "@etb_81330488", local
.hidden "@etb_81330488"
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
.endobj "@etb_81330488"

# extab:0x18 | 0x81330490 | size: 0x8
.obj "@etb_81330490", local
.hidden "@etb_81330490"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r17-r31
 */
	.4byte 0x78080000
	.4byte 0x00000000
.endobj "@etb_81330490"

# extab:0x20 | 0x81330498 | size: 0x8
.obj "@etb_81330498", local
.hidden "@etb_81330498"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330498"

# extab:0x28 | 0x813304A0 | size: 0x8
.obj "@etb_813304A0", local
.hidden "@etb_813304A0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_813304A0"

# extab:0x30 | 0x813304A8 | size: 0x8
.obj "@etb_813304A8", local
.hidden "@etb_813304A8"
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
.endobj "@etb_813304A8"

# extab:0x38 | 0x813304B0 | size: 0x8
.obj "@etb_813304B0", local
.hidden "@etb_813304B0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_813304B0"

# extab:0x40 | 0x813304B8 | size: 0x8
.obj "@etb_813304B8", local
.hidden "@etb_813304B8"
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
.endobj "@etb_813304B8"

# extab:0x48 | 0x813304C0 | size: 0x8
.obj "@etb_813304C0", local
.hidden "@etb_813304C0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_813304C0"

# 0x81331044..0x813310BC | size: 0x78
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331044 | size: 0xC
.obj "@eti_81331044", local
.hidden "@eti_81331044"
	.4byte Zi8SpellingZY
	.4byte 0x000001EC
	.4byte "@etb_81330478"
.endobj "@eti_81331044"

# extabindex:0xC | 0x81331050 | size: 0xC
.obj "@eti_81331050", local
.hidden "@eti_81331050"
	.4byte Zi8SpellingPY
	.4byte 0x00000274
	.4byte "@etb_81330480"
.endobj "@eti_81331050"

# extabindex:0x18 | 0x8133105C | size: 0xC
.obj "@eti_8133105C", local
.hidden "@eti_8133105C"
	.4byte Zi8IsMatch1Key
	.4byte 0x00000184
	.4byte "@etb_81330488"
.endobj "@eti_8133105C"

# extabindex:0x24 | 0x81331068 | size: 0xC
.obj "@eti_81331068", local
.hidden "@eti_81331068"
	.4byte MatchAltSound1Key
	.4byte 0x00000554
	.4byte "@etb_81330490"
.endobj "@eti_81331068"

# extabindex:0x30 | 0x81331074 | size: 0xC
.obj "@eti_81331074", local
.hidden "@eti_81331074"
	.4byte Zi8SetFindCand
	.4byte 0x000000C8
	.4byte "@etb_81330498"
.endobj "@eti_81331074"

# extabindex:0x3C | 0x81331080 | size: 0xC
.obj "@eti_81331080", local
.hidden "@eti_81331080"
	.4byte Zi8_814609F8
	.4byte 0x00000144
	.4byte "@etb_813304A0"
.endobj "@eti_81331080"

# extabindex:0x48 | 0x8133108C | size: 0xC
.obj "@eti_8133108C", local
.hidden "@eti_8133108C"
	.4byte Zi8Get1KeyPressSpelling
	.4byte 0x00001A90
	.4byte "@etb_813304A8"
.endobj "@eti_8133108C"

# extabindex:0x54 | 0x81331098 | size: 0xC
.obj "@eti_81331098", local
.hidden "@eti_81331098"
	.4byte Zi8Get1KeyPressCandidates
	.4byte 0x00002574
	.4byte "@etb_813304B0"
.endobj "@eti_81331098"

# extabindex:0x60 | 0x813310A4 | size: 0xC
.obj "@eti_813310A4", local
.hidden "@eti_813310A4"
	.4byte Zi8ZHCheckSpelling
	.4byte 0x0000068C
	.4byte "@etb_813304B8"
.endobj "@eti_813310A4"

# extabindex:0x6C | 0x813310B0 | size: 0xC
.obj "@eti_813310B0", local
.hidden "@eti_813310B0"
	.4byte Zi8SetParentalControls
	.4byte 0x00000034
	.4byte "@etb_813304C0"
.endobj "@eti_813310B0"

# 0x8145FDF8..0x81465200 | size: 0x5408
.text
.balign 4

# .text:0x0 | 0x8145FDF8 | size: 0x1EC
.fn Zi8SpellingZY, global
/* 8145FDF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145FDFC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8145FE00 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8145FE04 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8145FE08 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8145FE0C | 3B E0 00 00 */	li r31, 0x0
/* 8145FE10 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8145FE14 | 54 00 BE BE */	extrwi r0, r0, 6, 17
/* 8145FE18 | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 8145FE1C | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8145FE20 | 54 00 EE BE */	extrwi r0, r0, 6, 23
/* 8145FE24 | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 8145FE28 | 54 80 07 7E */	clrlwi r0, r4, 29
/* 8145FE2C | 54 1C 04 3E */	clrlwi r28, r0, 16
/* 8145FE30 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145FE34 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FE38 | 3C C0 81 61 */	lis r6, zi8ZYinitialSpelling@ha
/* 8145FE3C | 38 C6 79 20 */	addi r6, r6, zi8ZYinitialSpelling@l
/* 8145FE40 | 7C 06 02 2E */	lhzx r0, r6, r0
/* 8145FE44 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FE48 | B0 03 00 00 */	sth r0, 0x0(r3)
/* 8145FE4C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FE50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145FE54 | 41 82 00 08 */	beq .L_8145FE5C
/* 8145FE58 | 3B E0 00 01 */	li r31, 0x1
.L_8145FE5C:
/* 8145FE5C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8145FE60 | 54 00 10 3A */	slwi r0, r0, 2
/* 8145FE64 | 3C C0 81 61 */	lis r6, zi8ZYfinalSpelling@ha
/* 8145FE68 | 38 C6 79 A0 */	addi r6, r6, zi8ZYfinalSpelling@l
/* 8145FE6C | 7C 06 02 2E */	lhzx r0, r6, r0
/* 8145FE70 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 8145FE74 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8145FE78 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FE7C | 7C C3 03 2E */	sthx r6, r3, r0
/* 8145FE80 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8145FE84 | 54 07 10 3A */	slwi r7, r0, 2
/* 8145FE88 | 3C C0 81 61 */	lis r6, zi8ZYfinalSpelling@ha
/* 8145FE8C | 38 06 79 A0 */	addi r0, r6, zi8ZYfinalSpelling@l
/* 8145FE90 | 7C C0 3A 14 */	add r6, r0, r7
/* 8145FE94 | A0 06 00 02 */	lhz r0, 0x2(r6)
/* 8145FE98 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 8145FE9C | 57 E6 06 3E */	clrlwi r6, r31, 24
/* 8145FEA0 | 38 06 00 01 */	addi r0, r6, 0x1
/* 8145FEA4 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FEA8 | 7C E3 03 2E */	sthx r7, r3, r0
/* 8145FEAC | 38 E0 00 00 */	li r7, 0x0
/* 8145FEB0 | 57 E6 06 3E */	clrlwi r6, r31, 24
/* 8145FEB4 | 38 06 00 02 */	addi r0, r6, 0x2
/* 8145FEB8 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FEBC | 7C E3 03 2E */	sthx r7, r3, r0
/* 8145FEC0 | 38 E0 00 00 */	li r7, 0x0
/* 8145FEC4 | 57 E6 06 3E */	clrlwi r6, r31, 24
/* 8145FEC8 | 38 06 00 03 */	addi r0, r6, 0x3
/* 8145FECC | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FED0 | 7C E3 03 2E */	sthx r7, r3, r0
/* 8145FED4 | 48 00 00 08 */	b .L_8145FEDC
.L_8145FED8:
/* 8145FED8 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8145FEDC:
/* 8145FEDC | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8145FEE0 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FEE4 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8145FEE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145FEEC | 40 82 FF EC */	bne .L_8145FED8
/* 8145FEF0 | 54 A0 06 3E */	clrlwi r0, r5, 24
/* 8145FEF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145FEF8 | 41 82 00 D0 */	beq .L_8145FFC8
/* 8145FEFC | 57 80 04 3E */	clrlwi r0, r28, 16
/* 8145FF00 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8145FF04 | 41 82 00 68 */	beq .L_8145FF6C
/* 8145FF08 | 40 80 00 14 */	bge .L_8145FF1C
/* 8145FF0C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8145FF10 | 41 82 00 1C */	beq .L_8145FF2C
/* 8145FF14 | 40 80 00 38 */	bge .L_8145FF4C
/* 8145FF18 | 48 00 00 B0 */	b .L_8145FFC8
.L_8145FF1C:
/* 8145FF1C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8145FF20 | 41 82 00 8C */	beq .L_8145FFAC
/* 8145FF24 | 40 80 00 A4 */	bge .L_8145FFC8
/* 8145FF28 | 48 00 00 64 */	b .L_8145FF8C
.L_8145FF2C:
/* 8145FF2C | 3C C0 00 01 */	lis r6, 0x1
/* 8145FF30 | 38 C6 EF F1 */	subi r6, r6, 0x100f
/* 8145FF34 | 7F E0 FB 78 */	mr r0, r31
/* 8145FF38 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8145FF3C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8145FF40 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FF44 | 7C C3 03 2E */	sthx r6, r3, r0
/* 8145FF48 | 48 00 00 80 */	b .L_8145FFC8
.L_8145FF4C:
/* 8145FF4C | 3C C0 00 01 */	lis r6, 0x1
/* 8145FF50 | 38 C6 EF F2 */	subi r6, r6, 0x100e
/* 8145FF54 | 7F E0 FB 78 */	mr r0, r31
/* 8145FF58 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8145FF5C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8145FF60 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FF64 | 7C C3 03 2E */	sthx r6, r3, r0
/* 8145FF68 | 48 00 00 60 */	b .L_8145FFC8
.L_8145FF6C:
/* 8145FF6C | 3C C0 00 01 */	lis r6, 0x1
/* 8145FF70 | 38 C6 EF F3 */	subi r6, r6, 0x100d
/* 8145FF74 | 7F E0 FB 78 */	mr r0, r31
/* 8145FF78 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8145FF7C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8145FF80 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FF84 | 7C C3 03 2E */	sthx r6, r3, r0
/* 8145FF88 | 48 00 00 40 */	b .L_8145FFC8
.L_8145FF8C:
/* 8145FF8C | 3C C0 00 01 */	lis r6, 0x1
/* 8145FF90 | 38 C6 EF F4 */	subi r6, r6, 0x100c
/* 8145FF94 | 7F E0 FB 78 */	mr r0, r31
/* 8145FF98 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8145FF9C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8145FFA0 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FFA4 | 7C C3 03 2E */	sthx r6, r3, r0
/* 8145FFA8 | 48 00 00 20 */	b .L_8145FFC8
.L_8145FFAC:
/* 8145FFAC | 3C C0 00 01 */	lis r6, 0x1
/* 8145FFB0 | 38 C6 EF F5 */	subi r6, r6, 0x100b
/* 8145FFB4 | 7F E0 FB 78 */	mr r0, r31
/* 8145FFB8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8145FFBC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8145FFC0 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FFC4 | 7C C3 03 2E */	sthx r6, r3, r0
.L_8145FFC8:
/* 8145FFC8 | 7F E3 FB 78 */	mr r3, r31
/* 8145FFCC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8145FFD0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8145FFD4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8145FFD8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8145FFDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145FFE0 | 4E 80 00 20 */	blr
.endfn Zi8SpellingZY

# .text:0x1EC | 0x8145FFE4 | size: 0x274
.fn Zi8SpellingPY, global
/* 8145FFE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145FFE8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8145FFEC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8145FFF0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8145FFF4 | 3B E0 00 00 */	li r31, 0x0
/* 8145FFF8 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8145FFFC | 54 00 BE BE */	extrwi r0, r0, 6, 17
/* 81460000 | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 81460004 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 81460008 | 54 00 EE BE */	extrwi r0, r0, 6, 23
/* 8146000C | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 81460010 | 54 80 07 7E */	clrlwi r0, r4, 29
/* 81460014 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81460018 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8146001C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81460020 | 54 00 10 3A */	slwi r0, r0, 2
/* 81460024 | 3C C0 81 61 */	lis r6, zi8PYinitialSpelling@ha
/* 81460028 | 38 C6 7A A0 */	addi r6, r6, zi8PYinitialSpelling@l
/* 8146002C | 7C 06 02 2E */	lhzx r0, r6, r0
/* 81460030 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81460034 | B0 03 00 00 */	sth r0, 0x0(r3)
/* 81460038 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8146003C | 54 07 10 3A */	slwi r7, r0, 2
/* 81460040 | 3C C0 81 61 */	lis r6, zi8PYinitialSpelling@ha
/* 81460044 | 38 06 7A A0 */	addi r0, r6, zi8PYinitialSpelling@l
/* 81460048 | 7C C0 3A 14 */	add r6, r0, r7
/* 8146004C | A0 06 00 02 */	lhz r0, 0x2(r6)
/* 81460050 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81460054 | B0 03 00 02 */	sth r0, 0x2(r3)
/* 81460058 | 38 00 00 00 */	li r0, 0x0
/* 8146005C | B0 03 00 04 */	sth r0, 0x4(r3)
/* 81460060 | 48 00 00 08 */	b .L_81460068
.L_81460064:
/* 81460064 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81460068:
/* 81460068 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8146006C | 54 00 08 3C */	slwi r0, r0, 1
/* 81460070 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81460074 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460078 | 40 82 FF EC */	bne .L_81460064
/* 8146007C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81460080 | 54 00 18 38 */	slwi r0, r0, 3
/* 81460084 | 3C C0 81 61 */	lis r6, zi8PYfinalSpelling@ha
/* 81460088 | 38 C6 7B A0 */	addi r6, r6, zi8PYfinalSpelling@l
/* 8146008C | 7C 06 02 2E */	lhzx r0, r6, r0
/* 81460090 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 81460094 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81460098 | 54 00 08 3C */	slwi r0, r0, 1
/* 8146009C | 7C C3 03 2E */	sthx r6, r3, r0
/* 814600A0 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 814600A4 | 54 07 18 38 */	slwi r7, r0, 3
/* 814600A8 | 3C C0 81 61 */	lis r6, zi8PYfinalSpelling@ha
/* 814600AC | 38 06 7B A0 */	addi r0, r6, zi8PYfinalSpelling@l
/* 814600B0 | 7C C0 3A 14 */	add r6, r0, r7
/* 814600B4 | A0 06 00 02 */	lhz r0, 0x2(r6)
/* 814600B8 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 814600BC | 57 E6 06 3E */	clrlwi r6, r31, 24
/* 814600C0 | 38 06 00 01 */	addi r0, r6, 0x1
/* 814600C4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814600C8 | 7C E3 03 2E */	sthx r7, r3, r0
/* 814600CC | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 814600D0 | 54 07 18 38 */	slwi r7, r0, 3
/* 814600D4 | 3C C0 81 61 */	lis r6, zi8PYfinalSpelling@ha
/* 814600D8 | 38 06 7B A0 */	addi r0, r6, zi8PYfinalSpelling@l
/* 814600DC | 7C C0 3A 14 */	add r6, r0, r7
/* 814600E0 | A0 06 00 04 */	lhz r0, 0x4(r6)
/* 814600E4 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 814600E8 | 57 E6 06 3E */	clrlwi r6, r31, 24
/* 814600EC | 38 06 00 02 */	addi r0, r6, 0x2
/* 814600F0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814600F4 | 7C E3 03 2E */	sthx r7, r3, r0
/* 814600F8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 814600FC | 54 07 18 38 */	slwi r7, r0, 3
/* 81460100 | 3C C0 81 61 */	lis r6, zi8PYfinalSpelling@ha
/* 81460104 | 38 06 7B A0 */	addi r0, r6, zi8PYfinalSpelling@l
/* 81460108 | 7C C0 3A 14 */	add r6, r0, r7
/* 8146010C | A0 06 00 06 */	lhz r0, 0x6(r6)
/* 81460110 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 81460114 | 57 E6 06 3E */	clrlwi r6, r31, 24
/* 81460118 | 38 06 00 03 */	addi r0, r6, 0x3
/* 8146011C | 54 00 08 3C */	slwi r0, r0, 1
/* 81460120 | 7C E3 03 2E */	sthx r7, r3, r0
/* 81460124 | 38 E0 00 00 */	li r7, 0x0
/* 81460128 | 57 E6 06 3E */	clrlwi r6, r31, 24
/* 8146012C | 38 06 00 04 */	addi r0, r6, 0x4
/* 81460130 | 54 00 08 3C */	slwi r0, r0, 1
/* 81460134 | 7C E3 03 2E */	sthx r7, r3, r0
/* 81460138 | 38 E0 00 00 */	li r7, 0x0
/* 8146013C | 57 E6 06 3E */	clrlwi r6, r31, 24
/* 81460140 | 38 06 00 05 */	addi r0, r6, 0x5
/* 81460144 | 54 00 08 3C */	slwi r0, r0, 1
/* 81460148 | 7C E3 03 2E */	sthx r7, r3, r0
/* 8146014C | 48 00 00 08 */	b .L_81460154
.L_81460150:
/* 81460150 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81460154:
/* 81460154 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81460158 | 54 00 08 3C */	slwi r0, r0, 1
/* 8146015C | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81460160 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460164 | 40 82 FF EC */	bne .L_81460150
/* 81460168 | 54 A0 06 3E */	clrlwi r0, r5, 24
/* 8146016C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460170 | 41 82 00 D0 */	beq .L_81460240
/* 81460174 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 81460178 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8146017C | 41 82 00 68 */	beq .L_814601E4
/* 81460180 | 40 80 00 14 */	bge .L_81460194
/* 81460184 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81460188 | 41 82 00 1C */	beq .L_814601A4
/* 8146018C | 40 80 00 38 */	bge .L_814601C4
/* 81460190 | 48 00 00 B0 */	b .L_81460240
.L_81460194:
/* 81460194 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81460198 | 41 82 00 8C */	beq .L_81460224
/* 8146019C | 40 80 00 A4 */	bge .L_81460240
/* 814601A0 | 48 00 00 64 */	b .L_81460204
.L_814601A4:
/* 814601A4 | 3C C0 00 01 */	lis r6, 0x1
/* 814601A8 | 38 C6 EF F1 */	subi r6, r6, 0x100f
/* 814601AC | 7F E0 FB 78 */	mr r0, r31
/* 814601B0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814601B4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814601B8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814601BC | 7C C3 03 2E */	sthx r6, r3, r0
/* 814601C0 | 48 00 00 80 */	b .L_81460240
.L_814601C4:
/* 814601C4 | 3C C0 00 01 */	lis r6, 0x1
/* 814601C8 | 38 C6 EF F2 */	subi r6, r6, 0x100e
/* 814601CC | 7F E0 FB 78 */	mr r0, r31
/* 814601D0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814601D4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814601D8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814601DC | 7C C3 03 2E */	sthx r6, r3, r0
/* 814601E0 | 48 00 00 60 */	b .L_81460240
.L_814601E4:
/* 814601E4 | 3C C0 00 01 */	lis r6, 0x1
/* 814601E8 | 38 C6 EF F3 */	subi r6, r6, 0x100d
/* 814601EC | 7F E0 FB 78 */	mr r0, r31
/* 814601F0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814601F4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814601F8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814601FC | 7C C3 03 2E */	sthx r6, r3, r0
/* 81460200 | 48 00 00 40 */	b .L_81460240
.L_81460204:
/* 81460204 | 3C C0 00 01 */	lis r6, 0x1
/* 81460208 | 38 C6 EF F4 */	subi r6, r6, 0x100c
/* 8146020C | 7F E0 FB 78 */	mr r0, r31
/* 81460210 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81460214 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81460218 | 54 00 08 3C */	slwi r0, r0, 1
/* 8146021C | 7C C3 03 2E */	sthx r6, r3, r0
/* 81460220 | 48 00 00 20 */	b .L_81460240
.L_81460224:
/* 81460224 | 3C C0 00 01 */	lis r6, 0x1
/* 81460228 | 38 C6 EF F5 */	subi r6, r6, 0x100b
/* 8146022C | 7F E0 FB 78 */	mr r0, r31
/* 81460230 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81460234 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81460238 | 54 00 08 3C */	slwi r0, r0, 1
/* 8146023C | 7C C3 03 2E */	sthx r6, r3, r0
.L_81460240:
/* 81460240 | 7F E3 FB 78 */	mr r3, r31
/* 81460244 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81460248 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8146024C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81460250 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81460254 | 4E 80 00 20 */	blr
.endfn Zi8SpellingPY

# .text:0x460 | 0x81460258 | size: 0x184
.fn Zi8IsMatch1Key, global
/* 81460258 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8146025C | 7C 08 02 A6 */	mflr r0
/* 81460260 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81460264 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81460268 | 48 19 92 59 */	bl _savegpr_27
/* 8146026C | 7C 7D 1B 78 */	mr r29, r3
/* 81460270 | 7C 9E 23 78 */	mr r30, r4
/* 81460274 | 7C BB 2B 78 */	mr r27, r5
/* 81460278 | 98 C1 00 08 */	stb r6, 0x8(r1)
/* 8146027C | 98 E1 00 09 */	stb r7, 0x9(r1)
/* 81460280 | 7D 1C 43 78 */	mr r28, r8
/* 81460284 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 81460288 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146028C | 40 82 00 0C */	bne .L_81460298
/* 81460290 | 38 60 00 00 */	li r3, 0x0
/* 81460294 | 48 00 01 30 */	b .L_814603C4
.L_81460298:
/* 81460298 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8146029C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814602A0 | 40 82 00 0C */	bne .L_814602AC
/* 814602A4 | 38 60 00 01 */	li r3, 0x1
/* 814602A8 | 48 00 01 1C */	b .L_814603C4
.L_814602AC:
/* 814602AC | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 814602B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814602B4 | 41 82 00 1C */	beq .L_814602D0
/* 814602B8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814602BC | 57 64 04 3E */	clrlwi r4, r27, 16
/* 814602C0 | 57 85 06 3E */	clrlwi r5, r28, 24
/* 814602C4 | 4B FF FD 21 */	bl Zi8SpellingPY
/* 814602C8 | 7C 7F 1B 78 */	mr r31, r3
/* 814602CC | 48 00 00 18 */	b .L_814602E4
.L_814602D0:
/* 814602D0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814602D4 | 57 64 04 3E */	clrlwi r4, r27, 16
/* 814602D8 | 57 85 06 3E */	clrlwi r5, r28, 24
/* 814602DC | 4B FF FB 1D */	bl Zi8SpellingZY
/* 814602E0 | 7C 7F 1B 78 */	mr r31, r3
.L_814602E4:
/* 814602E4 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814602E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814602EC | 41 82 00 1C */	beq .L_81460308
/* 814602F0 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 814602F4 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 814602F8 | 7C 03 00 40 */	cmplw r3, r0
/* 814602FC | 41 82 00 0C */	beq .L_81460308
/* 81460300 | 38 60 00 00 */	li r3, 0x0
/* 81460304 | 48 00 00 C0 */	b .L_814603C4
.L_81460308:
/* 81460308 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 8146030C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460310 | 40 82 00 4C */	bne .L_8146035C
/* 81460314 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81460318 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8146031C | 7C 03 00 40 */	cmplw r3, r0
/* 81460320 | 40 81 00 3C */	ble .L_8146035C
/* 81460324 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81460328 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8146032C | 54 00 08 3C */	slwi r0, r0, 1
/* 81460330 | 7C 1D 02 2E */	lhzx r0, r29, r0
/* 81460334 | 3C 60 00 01 */	lis r3, 0x1
/* 81460338 | 38 63 EF F6 */	subi r3, r3, 0x100a
/* 8146033C | 7C 00 18 00 */	cmpw r0, r3
/* 81460340 | 40 80 00 1C */	bge .L_8146035C
/* 81460344 | 3C 60 00 01 */	lis r3, 0x1
/* 81460348 | 38 63 EF F1 */	subi r3, r3, 0x100f
/* 8146034C | 7C 00 18 00 */	cmpw r0, r3
/* 81460350 | 40 80 00 08 */	bge .L_81460358
/* 81460354 | 48 00 00 08 */	b .L_8146035C
.L_81460358:
/* 81460358 | 3B DE FF FF */	subi r30, r30, 0x1
.L_8146035C:
/* 8146035C | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81460360 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81460364 | 7C 03 00 40 */	cmplw r3, r0
/* 81460368 | 40 81 00 0C */	ble .L_81460374
/* 8146036C | 38 60 00 00 */	li r3, 0x0
/* 81460370 | 48 00 00 54 */	b .L_814603C4
.L_81460374:
/* 81460374 | 3B E0 00 00 */	li r31, 0x0
/* 81460378 | 48 00 00 38 */	b .L_814603B0
.L_8146037C:
/* 8146037C | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81460380 | 54 00 08 3C */	slwi r0, r0, 1
/* 81460384 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81460388 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8146038C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81460390 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81460394 | 54 00 08 3C */	slwi r0, r0, 1
/* 81460398 | 7C 1D 02 2E */	lhzx r0, r29, r0
/* 8146039C | 7C 03 00 40 */	cmplw r3, r0
/* 814603A0 | 41 82 00 0C */	beq .L_814603AC
/* 814603A4 | 38 60 00 00 */	li r3, 0x0
/* 814603A8 | 48 00 00 1C */	b .L_814603C4
.L_814603AC:
/* 814603AC | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814603B0:
/* 814603B0 | 57 E3 06 3E */	clrlwi r3, r31, 24
/* 814603B4 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814603B8 | 7C 03 00 40 */	cmplw r3, r0
/* 814603BC | 41 80 FF C0 */	blt .L_8146037C
/* 814603C0 | 38 60 00 01 */	li r3, 0x1
.L_814603C4:
/* 814603C4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814603C8 | 48 19 91 45 */	bl _restgpr_27
/* 814603CC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814603D0 | 7C 08 03 A6 */	mtlr r0
/* 814603D4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814603D8 | 4E 80 00 20 */	blr
.endfn Zi8IsMatch1Key

# .text:0x5E4 | 0x814603DC | size: 0x554
.fn MatchAltSound1Key, global
/* 814603DC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814603E0 | 7C 08 02 A6 */	mflr r0
/* 814603E4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814603E8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814603EC | 48 19 90 AD */	bl _savegpr_17
/* 814603F0 | 7C 71 1B 78 */	mr r17, r3
/* 814603F4 | 7C 92 23 78 */	mr r18, r4
/* 814603F8 | 7C B3 2B 78 */	mr r19, r5
/* 814603FC | 7C DF 33 78 */	mr r31, r6
/* 81460400 | 7C F6 3B 78 */	mr r22, r7
/* 81460404 | 7D 1A 43 78 */	mr r26, r8
/* 81460408 | 7D 38 4B 78 */	mr r24, r9
/* 8146040C | 7D 54 53 78 */	mr r20, r10
/* 81460410 | 8A A1 00 5B */	lbz r21, 0x5b(r1)
/* 81460414 | 8A E1 00 5F */	lbz r23, 0x5f(r1)
/* 81460418 | 83 21 00 60 */	lwz r25, 0x60(r1)
/* 8146041C | 38 60 00 64 */	li r3, 0x64
/* 81460420 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81460424 | 7F 24 CB 78 */	mr r4, r25
/* 81460428 | 48 02 40 55 */	bl Zi8LogError
/* 8146042C | 57 00 04 3E */	clrlwi r0, r24, 16
/* 81460430 | 7C 00 46 70 */	srawi r0, r0, 8
/* 81460434 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81460438 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8146043C | 57 00 06 3E */	clrlwi r0, r24, 24
/* 81460440 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81460444 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 81460448 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8146044C | 54 17 06 3E */	clrlwi r23, r0, 24
/* 81460450 | 56 C0 04 3E */	clrlwi r0, r22, 16
/* 81460454 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460458 | 40 82 00 1C */	bne .L_81460474
/* 8146045C | 38 60 09 64 */	li r3, 0x964
/* 81460460 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81460464 | 7F 24 CB 78 */	mr r4, r25
/* 81460468 | 48 02 40 19 */	bl Zi8ReplaceLastError
/* 8146046C | 38 60 00 00 */	li r3, 0x0
/* 81460470 | 48 00 04 A8 */	b .L_81460918
.L_81460474:
/* 81460474 | 3B A0 00 00 */	li r29, 0x0
/* 81460478 | 56 C3 04 3E */	clrlwi r3, r22, 16
/* 8146047C | 3B C3 FF FF */	subi r30, r3, 0x1
/* 81460480 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81460484 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81460488 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146048C | 7C 7F 02 14 */	add r3, r31, r0
/* 81460490 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81460494 | 7C 04 00 40 */	cmplw r4, r0
/* 81460498 | 40 82 00 24 */	bne .L_814604BC
/* 8146049C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814604A0 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 814604A4 | 57 C0 10 3A */	slwi r0, r30, 2
/* 814604A8 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 814604AC | 7C 03 00 40 */	cmplw r3, r0
/* 814604B0 | 40 82 00 0C */	bne .L_814604BC
/* 814604B4 | 7F DD F3 78 */	mr r29, r30
/* 814604B8 | 48 00 00 38 */	b .L_814604F0
.L_814604BC:
/* 814604BC | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 814604C0 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814604C4 | 57 A0 10 3A */	slwi r0, r29, 2
/* 814604C8 | 7C 7F 02 14 */	add r3, r31, r0
/* 814604CC | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814604D0 | 7C 04 00 40 */	cmplw r4, r0
/* 814604D4 | 40 82 02 A4 */	bne .L_81460778
/* 814604D8 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814604DC | 54 03 06 3E */	clrlwi r3, r0, 24
/* 814604E0 | 57 A0 10 3A */	slwi r0, r29, 2
/* 814604E4 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 814604E8 | 7C 03 00 40 */	cmplw r3, r0
/* 814604EC | 40 82 02 8C */	bne .L_81460778
.L_814604F0:
/* 814604F0 | 7F BE EB 78 */	mr r30, r29
.L_814604F4:
/* 814604F4 | 57 C0 10 3A */	slwi r0, r30, 2
/* 814604F8 | 7C 7F 02 14 */	add r3, r31, r0
/* 814604FC | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 81460500 | 54 00 07 3C */	rlwinm r0, r0, 0, 28, 30
/* 81460504 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460508 | 41 82 00 20 */	beq .L_81460528
/* 8146050C | 56 E4 06 3E */	clrlwi r4, r23, 24
/* 81460510 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460514 | 7C 7F 02 14 */	add r3, r31, r0
/* 81460518 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 8146051C | 7C 80 00 38 */	and r0, r4, r0
/* 81460520 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460524 | 41 82 00 C8 */	beq .L_814605EC
.L_81460528:
/* 81460528 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146052C | 7C 7F 02 14 */	add r3, r31, r0
/* 81460530 | 88 83 00 02 */	lbz r4, 0x2(r3)
/* 81460534 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460538 | 7C 7F 02 14 */	add r3, r31, r0
/* 8146053C | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 81460540 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 81460544 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81460548 | 54 00 40 2E */	slwi r0, r0, 8
/* 8146054C | 7C 80 03 78 */	or r0, r4, r0
/* 81460550 | 54 1C 04 3E */	clrlwi r28, r0, 16
/* 81460554 | 88 19 11 FA */	lbz r0, 0x11fa(r25)
/* 81460558 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146055C | 41 82 00 18 */	beq .L_81460574
/* 81460560 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81460564 | 7C 79 02 14 */	add r3, r25, r0
/* 81460568 | 88 03 0F FA */	lbz r0, 0xffa(r3)
/* 8146056C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460570 | 41 82 00 7C */	beq .L_814605EC
.L_81460574:
/* 81460574 | 57 80 08 3C */	slwi r0, r28, 1
/* 81460578 | 54 1C 04 3E */	clrlwi r28, r0, 16
/* 8146057C | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460580 | 7C 7F 02 14 */	add r3, r31, r0
/* 81460584 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 81460588 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 8146058C | 7C 05 26 70 */	srawi r5, r0, 4
/* 81460590 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81460594 | 7C 9A 00 AE */	lbzx r4, r26, r0
/* 81460598 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 8146059C | 7C 60 D2 14 */	add r3, r0, r26
/* 814605A0 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814605A4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814605A8 | 54 00 40 2E */	slwi r0, r0, 8
/* 814605AC | 7C 80 03 78 */	or r0, r4, r0
/* 814605B0 | 7C A0 03 78 */	or r0, r5, r0
/* 814605B4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814605B8 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814605BC | 7E 23 8B 78 */	mr r3, r17
/* 814605C0 | 56 44 06 3E */	clrlwi r4, r18, 24
/* 814605C4 | A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 814605C8 | 56 66 06 3E */	clrlwi r6, r19, 24
/* 814605CC | 56 87 06 3E */	clrlwi r7, r20, 24
/* 814605D0 | 56 A8 06 3E */	clrlwi r8, r21, 24
/* 814605D4 | 4B FF FC 85 */	bl Zi8IsMatch1Key
/* 814605D8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814605DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814605E0 | 41 82 00 0C */	beq .L_814605EC
/* 814605E4 | 38 60 00 01 */	li r3, 0x1
/* 814605E8 | 48 00 03 30 */	b .L_81460918
.L_814605EC:
/* 814605EC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814605F0 | 56 C0 04 3E */	clrlwi r0, r22, 16
/* 814605F4 | 7C 1E 00 00 */	cmpw r30, r0
/* 814605F8 | 40 80 00 38 */	bge .L_81460630
/* 814605FC | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81460600 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81460604 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460608 | 7C 7F 02 14 */	add r3, r31, r0
/* 8146060C | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81460610 | 7C 04 00 40 */	cmplw r4, r0
/* 81460614 | 40 82 00 1C */	bne .L_81460630
/* 81460618 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8146061C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81460620 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460624 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 81460628 | 7C 03 00 40 */	cmplw r3, r0
/* 8146062C | 41 82 FE C8 */	beq .L_814604F4
.L_81460630:
/* 81460630 | 7F BE EB 78 */	mr r30, r29
/* 81460634 | 48 00 00 FC */	b .L_81460730
.L_81460638:
/* 81460638 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146063C | 7C 7F 02 14 */	add r3, r31, r0
/* 81460640 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 81460644 | 54 00 07 3C */	rlwinm r0, r0, 0, 28, 30
/* 81460648 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146064C | 41 82 00 20 */	beq .L_8146066C
/* 81460650 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 81460654 | 57 C3 10 3A */	slwi r3, r30, 2
/* 81460658 | 7C 7F 1A 14 */	add r3, r31, r3
/* 8146065C | 88 63 00 03 */	lbz r3, 0x3(r3)
/* 81460660 | 7C 00 18 38 */	and r0, r0, r3
/* 81460664 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460668 | 41 82 00 C8 */	beq .L_81460730
.L_8146066C:
/* 8146066C | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460670 | 7C 7F 02 14 */	add r3, r31, r0
/* 81460674 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 81460678 | 57 C3 10 3A */	slwi r3, r30, 2
/* 8146067C | 7C 7F 1A 14 */	add r3, r31, r3
/* 81460680 | 88 63 00 03 */	lbz r3, 0x3(r3)
/* 81460684 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81460688 | 54 63 07 FE */	clrlwi r3, r3, 31
/* 8146068C | 54 63 40 2E */	slwi r3, r3, 8
/* 81460690 | 7C 00 1B 78 */	or r0, r0, r3
/* 81460694 | 54 1C 04 3E */	clrlwi r28, r0, 16
/* 81460698 | 88 19 11 FA */	lbz r0, 0x11fa(r25)
/* 8146069C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814606A0 | 41 82 00 18 */	beq .L_814606B8
/* 814606A4 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814606A8 | 7C 79 02 14 */	add r3, r25, r0
/* 814606AC | 88 03 0F FA */	lbz r0, 0xffa(r3)
/* 814606B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814606B4 | 41 82 00 7C */	beq .L_81460730
.L_814606B8:
/* 814606B8 | 57 80 08 3C */	slwi r0, r28, 1
/* 814606BC | 54 1C 04 3E */	clrlwi r28, r0, 16
/* 814606C0 | 57 C0 10 3A */	slwi r0, r30, 2
/* 814606C4 | 7C 7F 02 14 */	add r3, r31, r0
/* 814606C8 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 814606CC | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 814606D0 | 7C 03 26 70 */	srawi r3, r0, 4
/* 814606D4 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814606D8 | 7C 1A 00 AE */	lbzx r0, r26, r0
/* 814606DC | 57 84 04 3E */	clrlwi r4, r28, 16
/* 814606E0 | 7C 84 D2 14 */	add r4, r4, r26
/* 814606E4 | 88 84 00 01 */	lbz r4, 0x1(r4)
/* 814606E8 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814606EC | 54 84 40 2E */	slwi r4, r4, 8
/* 814606F0 | 7C 00 23 78 */	or r0, r0, r4
/* 814606F4 | 7C 60 03 78 */	or r0, r3, r0
/* 814606F8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814606FC | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81460700 | 7E 23 8B 78 */	mr r3, r17
/* 81460704 | 56 44 06 3E */	clrlwi r4, r18, 24
/* 81460708 | A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 8146070C | 56 66 06 3E */	clrlwi r6, r19, 24
/* 81460710 | 56 87 06 3E */	clrlwi r7, r20, 24
/* 81460714 | 56 A8 06 3E */	clrlwi r8, r21, 24
/* 81460718 | 4B FF FB 41 */	bl Zi8IsMatch1Key
/* 8146071C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81460720 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460724 | 41 82 00 0C */	beq .L_81460730
/* 81460728 | 38 60 00 01 */	li r3, 0x1
/* 8146072C | 48 00 01 EC */	b .L_81460918
.L_81460730:
/* 81460730 | 3B DE FF FF */	subi r30, r30, 0x1
/* 81460734 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81460738 | 41 80 00 38 */	blt .L_81460770
/* 8146073C | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81460740 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81460744 | 57 C3 10 3A */	slwi r3, r30, 2
/* 81460748 | 7C 7F 1A 14 */	add r3, r31, r3
/* 8146074C | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 81460750 | 7C 00 18 40 */	cmplw r0, r3
/* 81460754 | 40 82 00 1C */	bne .L_81460770
/* 81460758 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8146075C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81460760 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460764 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 81460768 | 7C 03 00 40 */	cmplw r3, r0
/* 8146076C | 41 82 FE CC */	beq .L_81460638
.L_81460770:
/* 81460770 | 38 60 00 00 */	li r3, 0x0
/* 81460774 | 48 00 01 A4 */	b .L_81460918
.L_81460778:
/* 81460778 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8146077C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81460780 | 57 A0 10 3A */	slwi r0, r29, 2
/* 81460784 | 7C 7F 02 14 */	add r3, r31, r0
/* 81460788 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8146078C | 7C 04 00 40 */	cmplw r4, r0
/* 81460790 | 40 82 00 1C */	bne .L_814607AC
/* 81460794 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81460798 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8146079C | 57 A0 10 3A */	slwi r0, r29, 2
/* 814607A0 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 814607A4 | 7C 03 00 40 */	cmplw r3, r0
/* 814607A8 | 41 82 FD 48 */	beq .L_814604F0
.L_814607AC:
/* 814607AC | 57 A0 10 3A */	slwi r0, r29, 2
/* 814607B0 | 7C 7F 02 14 */	add r3, r31, r0
/* 814607B4 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814607B8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814607BC | 54 03 40 2E */	slwi r3, r0, 8
/* 814607C0 | 57 A0 10 3A */	slwi r0, r29, 2
/* 814607C4 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 814607C8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814607CC | 7C 60 03 78 */	or r0, r3, r0
/* 814607D0 | 57 03 04 3E */	clrlwi r3, r24, 16
/* 814607D4 | 7C 00 18 00 */	cmpw r0, r3
/* 814607D8 | 40 81 00 0C */	ble .L_814607E4
/* 814607DC | 38 60 00 00 */	li r3, 0x0
/* 814607E0 | 48 00 01 38 */	b .L_81460918
.L_814607E4:
/* 814607E4 | 7C 1D F2 14 */	add r0, r29, r30
/* 814607E8 | 54 03 0F FE */	srwi r3, r0, 31
/* 814607EC | 7C 03 02 14 */	add r0, r3, r0
/* 814607F0 | 7C 1B 0E 70 */	srawi r27, r0, 1
/* 814607F4 | 7C 1B E8 00 */	cmpw r27, r29
/* 814607F8 | 40 82 00 0C */	bne .L_81460804
/* 814607FC | 38 60 00 00 */	li r3, 0x0
/* 81460800 | 48 00 01 18 */	b .L_81460918
.L_81460804:
/* 81460804 | 57 60 10 3A */	slwi r0, r27, 2
/* 81460808 | 7C 7F 02 14 */	add r3, r31, r0
/* 8146080C | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81460810 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81460814 | 54 03 40 2E */	slwi r3, r0, 8
/* 81460818 | 57 60 10 3A */	slwi r0, r27, 2
/* 8146081C | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 81460820 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81460824 | 7C 60 03 78 */	or r0, r3, r0
/* 81460828 | 57 03 04 3E */	clrlwi r3, r24, 16
/* 8146082C | 7C 00 18 00 */	cmpw r0, r3
/* 81460830 | 41 80 00 0C */	blt .L_8146083C
/* 81460834 | 7F 7E DB 78 */	mr r30, r27
/* 81460838 | 48 00 00 0C */	b .L_81460844
.L_8146083C:
/* 8146083C | 7F 7D DB 78 */	mr r29, r27
/* 81460840 | 4B FF FF 38 */	b .L_81460778
.L_81460844:
/* 81460844 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81460848 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 8146084C | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460850 | 7C 7F 02 14 */	add r3, r31, r0
/* 81460854 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81460858 | 7C 04 00 40 */	cmplw r4, r0
/* 8146085C | 40 82 00 24 */	bne .L_81460880
/* 81460860 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81460864 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81460868 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146086C | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 81460870 | 7C 03 00 40 */	cmplw r3, r0
/* 81460874 | 40 82 00 0C */	bne .L_81460880
/* 81460878 | 7F DD F3 78 */	mr r29, r30
/* 8146087C | 4B FF FC 74 */	b .L_814604F0
.L_81460880:
/* 81460880 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460884 | 7C 7F 02 14 */	add r3, r31, r0
/* 81460888 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8146088C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81460890 | 54 03 40 2E */	slwi r3, r0, 8
/* 81460894 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81460898 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 8146089C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814608A0 | 7C 60 03 78 */	or r0, r3, r0
/* 814608A4 | 57 03 04 3E */	clrlwi r3, r24, 16
/* 814608A8 | 7C 00 18 00 */	cmpw r0, r3
/* 814608AC | 40 80 00 0C */	bge .L_814608B8
/* 814608B0 | 38 60 00 00 */	li r3, 0x0
/* 814608B4 | 48 00 00 64 */	b .L_81460918
.L_814608B8:
/* 814608B8 | 7C 1D F2 14 */	add r0, r29, r30
/* 814608BC | 54 03 0F FE */	srwi r3, r0, 31
/* 814608C0 | 7C 03 02 14 */	add r0, r3, r0
/* 814608C4 | 7C 1B 0E 70 */	srawi r27, r0, 1
/* 814608C8 | 7C 1B E8 00 */	cmpw r27, r29
/* 814608CC | 40 82 00 0C */	bne .L_814608D8
/* 814608D0 | 38 60 00 00 */	li r3, 0x0
/* 814608D4 | 48 00 00 44 */	b .L_81460918
.L_814608D8:
/* 814608D8 | 57 60 10 3A */	slwi r0, r27, 2
/* 814608DC | 7C 7F 02 14 */	add r3, r31, r0
/* 814608E0 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814608E4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814608E8 | 54 03 40 2E */	slwi r3, r0, 8
/* 814608EC | 57 60 10 3A */	slwi r0, r27, 2
/* 814608F0 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 814608F4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814608F8 | 7C 60 03 78 */	or r0, r3, r0
/* 814608FC | 57 03 04 3E */	clrlwi r3, r24, 16
/* 81460900 | 7C 00 18 00 */	cmpw r0, r3
/* 81460904 | 41 80 00 0C */	blt .L_81460910
/* 81460908 | 7F 7E DB 78 */	mr r30, r27
/* 8146090C | 4B FF FF 38 */	b .L_81460844
.L_81460910:
/* 81460910 | 7F 7D DB 78 */	mr r29, r27
/* 81460914 | 4B FF FE 64 */	b .L_81460778
.L_81460918:
/* 81460918 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8146091C | 48 19 8B C9 */	bl _restgpr_17
/* 81460920 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81460924 | 7C 08 03 A6 */	mtlr r0
/* 81460928 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8146092C | 4E 80 00 20 */	blr
.endfn MatchAltSound1Key

# .text:0xB38 | 0x81460930 | size: 0xC8
.fn Zi8SetFindCand, global
/* 81460930 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81460934 | 7C 08 02 A6 */	mflr r0
/* 81460938 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8146093C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81460940 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81460944 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81460948 | 7C 7E 1B 78 */	mr r30, r3
/* 8146094C | 7C 9F 23 78 */	mr r31, r4
/* 81460950 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81460954 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81460958 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8146095C | 48 01 EB 39 */	bl Zi8Ord2Ord
/* 81460960 | 7C 7F 1B 78 */	mr r31, r3
/* 81460964 | 38 80 00 01 */	li r4, 0x1
/* 81460968 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8146096C | 54 60 E8 04 */	slwi r0, r3, 29
/* 81460970 | 54 63 0F FE */	srwi r3, r3, 31
/* 81460974 | 7C 03 00 50 */	subf r0, r3, r0
/* 81460978 | 54 00 18 3E */	rotlwi r0, r0, 3
/* 8146097C | 7C 00 1A 14 */	add r0, r0, r3
/* 81460980 | 7C 83 00 30 */	slw r3, r4, r0
/* 81460984 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81460988 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8146098C | 7C 00 01 94 */	addze r0, r0
/* 81460990 | 7C 1E 00 AE */	lbzx r0, r30, r0
/* 81460994 | 7C 60 00 38 */	and r0, r3, r0
/* 81460998 | 54 1D 06 3E */	clrlwi r29, r0, 24
/* 8146099C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814609A0 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 814609A4 | 7C C0 01 94 */	addze r6, r0
/* 814609A8 | 7C BE 30 AE */	lbzx r5, r30, r6
/* 814609AC | 38 80 00 01 */	li r4, 0x1
/* 814609B0 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 814609B4 | 54 60 E8 04 */	slwi r0, r3, 29
/* 814609B8 | 54 63 0F FE */	srwi r3, r3, 31
/* 814609BC | 7C 03 00 50 */	subf r0, r3, r0
/* 814609C0 | 54 00 18 3E */	rotlwi r0, r0, 3
/* 814609C4 | 7C 00 1A 14 */	add r0, r0, r3
/* 814609C8 | 7C 80 00 30 */	slw r0, r4, r0
/* 814609CC | 7C A0 03 78 */	or r0, r5, r0
/* 814609D0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814609D4 | 7C 1E 31 AE */	stbx r0, r30, r6
/* 814609D8 | 7F A3 EB 78 */	mr r3, r29
/* 814609DC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814609E0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814609E4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814609E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814609EC | 7C 08 03 A6 */	mtlr r0
/* 814609F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814609F4 | 4E 80 00 20 */	blr
.endfn Zi8SetFindCand

# .text:0xC00 | 0x814609F8 | size: 0x144
.fn Zi8_814609F8, global
/* 814609F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814609FC | 7C 08 02 A6 */	mflr r0
/* 81460A00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81460A04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81460A08 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81460A0C | 7C 7E 1B 78 */	mr r30, r3
/* 81460A10 | 7C 9F 23 78 */	mr r31, r4
/* 81460A14 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81460A18 | 7F E4 FB 78 */	mr r4, r31
/* 81460A1C | 4B FF E6 61 */	bl Zi8LangSupported_8145F07C
/* 81460A20 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81460A24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460A28 | 41 82 00 0C */	beq .L_81460A34
/* 81460A2C | 38 60 00 01 */	li r3, 0x1
/* 81460A30 | 48 00 00 F4 */	b .L_81460B24
.L_81460A34:
/* 81460A34 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81460A38 | 2C 00 00 7B */	cmpwi r0, 0x7b
/* 81460A3C | 41 82 00 E4 */	beq .L_81460B20
/* 81460A40 | 40 80 00 18 */	bge .L_81460A58
/* 81460A44 | 2C 00 00 79 */	cmpwi r0, 0x79
/* 81460A48 | 40 80 00 7C */	bge .L_81460AC4
/* 81460A4C | 2C 00 00 77 */	cmpwi r0, 0x77
/* 81460A50 | 40 80 00 18 */	bge .L_81460A68
/* 81460A54 | 48 00 00 CC */	b .L_81460B20
.L_81460A58:
/* 81460A58 | 2C 00 00 7D */	cmpwi r0, 0x7d
/* 81460A5C | 41 82 00 68 */	beq .L_81460AC4
/* 81460A60 | 40 80 00 C0 */	bge .L_81460B20
/* 81460A64 | 48 00 00 04 */	b .L_81460A68
.L_81460A68:
/* 81460A68 | 38 60 00 77 */	li r3, 0x77
/* 81460A6C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460A70 | 7F E4 FB 78 */	mr r4, r31
/* 81460A74 | 4B FF E6 09 */	bl Zi8LangSupported_8145F07C
/* 81460A78 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81460A7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460A80 | 40 82 00 3C */	bne .L_81460ABC
/* 81460A84 | 38 60 00 78 */	li r3, 0x78
/* 81460A88 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460A8C | 7F E4 FB 78 */	mr r4, r31
/* 81460A90 | 4B FF E5 ED */	bl Zi8LangSupported_8145F07C
/* 81460A94 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81460A98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460A9C | 40 82 00 20 */	bne .L_81460ABC
/* 81460AA0 | 38 60 00 7C */	li r3, 0x7c
/* 81460AA4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460AA8 | 7F E4 FB 78 */	mr r4, r31
/* 81460AAC | 4B FF E5 D1 */	bl Zi8LangSupported_8145F07C
/* 81460AB0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81460AB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460AB8 | 41 82 00 0C */	beq .L_81460AC4
.L_81460ABC:
/* 81460ABC | 38 60 00 01 */	li r3, 0x1
/* 81460AC0 | 48 00 00 64 */	b .L_81460B24
.L_81460AC4:
/* 81460AC4 | 38 60 00 79 */	li r3, 0x79
/* 81460AC8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460ACC | 7F E4 FB 78 */	mr r4, r31
/* 81460AD0 | 4B FF E5 AD */	bl Zi8LangSupported_8145F07C
/* 81460AD4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81460AD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460ADC | 40 82 00 3C */	bne .L_81460B18
/* 81460AE0 | 38 60 00 7A */	li r3, 0x7a
/* 81460AE4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460AE8 | 7F E4 FB 78 */	mr r4, r31
/* 81460AEC | 4B FF E5 91 */	bl Zi8LangSupported_8145F07C
/* 81460AF0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81460AF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460AF8 | 40 82 00 20 */	bne .L_81460B18
/* 81460AFC | 38 60 00 7D */	li r3, 0x7d
/* 81460B00 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460B04 | 7F E4 FB 78 */	mr r4, r31
/* 81460B08 | 4B FF E5 75 */	bl Zi8LangSupported_8145F07C
/* 81460B0C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81460B10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460B14 | 41 82 00 0C */	beq .L_81460B20
.L_81460B18:
/* 81460B18 | 38 60 00 01 */	li r3, 0x1
/* 81460B1C | 48 00 00 08 */	b .L_81460B24
.L_81460B20:
/* 81460B20 | 38 60 00 00 */	li r3, 0x0
.L_81460B24:
/* 81460B24 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81460B28 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81460B2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81460B30 | 7C 08 03 A6 */	mtlr r0
/* 81460B34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81460B38 | 4E 80 00 20 */	blr
.endfn Zi8_814609F8

# .text:0xD44 | 0x81460B3C | size: 0x1A90
.fn Zi8Get1KeyPressSpelling, global
/* 81460B3C | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81460B40 | 7C 08 02 A6 */	mflr r0
/* 81460B44 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81460B48 | 39 61 00 90 */	addi r11, r1, 0x90
/* 81460B4C | 48 19 89 75 */	bl _savegpr_27
/* 81460B50 | 7C 7E 1B 78 */	mr r30, r3
/* 81460B54 | 7C 9B 23 78 */	mr r27, r4
/* 81460B58 | 7C BC 2B 78 */	mr r28, r5
/* 81460B5C | 38 00 00 00 */	li r0, 0x0
/* 81460B60 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 81460B64 | 38 80 00 00 */	li r4, 0x0
/* 81460B68 | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81460B6C | 88 1E 00 04 */	lbz r0, 0x4(r30)
/* 81460B70 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81460B74 | 38 00 00 00 */	li r0, 0x0
/* 81460B78 | 98 1E 00 21 */	stb r0, 0x21(r30)
/* 81460B7C | 38 00 00 00 */	li r0, 0x0
/* 81460B80 | 98 1E 00 22 */	stb r0, 0x22(r30)
/* 81460B84 | 88 61 00 0B */	lbz r3, 0xb(r1)
/* 81460B88 | 54 60 07 34 */	rlwinm r0, r3, 0, 28, 26
/* 81460B8C | 54 05 06 3E */	clrlwi r5, r0, 24
/* 81460B90 | 98 A1 00 0B */	stb r5, 0xb(r1)
/* 81460B94 | 88 61 00 0B */	lbz r3, 0xb(r1)
/* 81460B98 | 54 60 06 F2 */	rlwinm r0, r3, 0, 27, 25
/* 81460B9C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81460BA0 | 98 81 00 0B */	stb r4, 0xb(r1)
/* 81460BA4 | 88 61 00 0B */	lbz r3, 0xb(r1)
/* 81460BA8 | 54 60 06 B0 */	rlwinm r0, r3, 0, 26, 24
/* 81460BAC | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81460BB0 | 98 81 00 0B */	stb r4, 0xb(r1)
/* 81460BB4 | 88 1B 00 01 */	lbz r0, 0x1(r27)
/* 81460BB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460BBC | 40 82 00 24 */	bne .L_81460BE0
/* 81460BC0 | 38 60 00 00 */	li r3, 0x0
/* 81460BC4 | 98 7E 00 21 */	stb r3, 0x21(r30)
/* 81460BC8 | 38 60 00 64 */	li r3, 0x64
/* 81460BCC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81460BD0 | 7F 84 E3 78 */	mr r4, r28
/* 81460BD4 | 48 02 38 A9 */	bl Zi8LogError
/* 81460BD8 | 38 60 00 00 */	li r3, 0x0
/* 81460BDC | 48 00 19 D8 */	b .L_814625B4
.L_81460BE0:
/* 81460BE0 | 88 1E 00 02 */	lbz r0, 0x2(r30)
/* 81460BE4 | 54 03 06 30 */	rlwinm r3, r0, 0, 24, 24
/* 81460BE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81460BEC | 40 82 00 14 */	bne .L_81460C00
/* 81460BF0 | 88 7E 00 02 */	lbz r3, 0x2(r30)
/* 81460BF4 | 54 66 06 72 */	rlwinm r6, r3, 0, 25, 25
/* 81460BF8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81460BFC | 41 82 00 10 */	beq .L_81460C0C
.L_81460C00:
/* 81460C00 | 38 00 00 01 */	li r0, 0x1
/* 81460C04 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81460C08 | 48 00 00 54 */	b .L_81460C5C
.L_81460C0C:
/* 81460C0C | 88 BE 00 02 */	lbz r5, 0x2(r30)
/* 81460C10 | 54 A4 07 38 */	rlwinm r4, r5, 0, 28, 28
/* 81460C14 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81460C18 | 41 82 00 10 */	beq .L_81460C28
/* 81460C1C | 38 60 00 04 */	li r3, 0x4
/* 81460C20 | 98 61 00 0E */	stb r3, 0xe(r1)
/* 81460C24 | 48 00 00 38 */	b .L_81460C5C
.L_81460C28:
/* 81460C28 | 88 7E 00 02 */	lbz r3, 0x2(r30)
/* 81460C2C | 54 64 06 B4 */	rlwinm r4, r3, 0, 26, 26
/* 81460C30 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81460C34 | 40 82 00 14 */	bne .L_81460C48
/* 81460C38 | 88 7E 00 02 */	lbz r3, 0x2(r30)
/* 81460C3C | 54 60 06 F6 */	rlwinm r0, r3, 0, 27, 27
/* 81460C40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460C44 | 41 82 00 10 */	beq .L_81460C54
.L_81460C48:
/* 81460C48 | 38 00 00 02 */	li r0, 0x2
/* 81460C4C | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81460C50 | 48 00 00 0C */	b .L_81460C5C
.L_81460C54:
/* 81460C54 | 88 BE 00 02 */	lbz r5, 0x2(r30)
/* 81460C58 | 98 A1 00 0E */	stb r5, 0xe(r1)
.L_81460C5C:
/* 81460C5C | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 81460C60 | 54 64 20 36 */	slwi r4, r3, 4
/* 81460C64 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81460C68 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81460C6C | A0 7E 00 1E */	lhz r3, 0x1e(r30)
/* 81460C70 | B0 61 00 12 */	sth r3, 0x12(r1)
/* 81460C74 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 81460C78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460C7C | 41 82 00 10 */	beq .L_81460C8C
/* 81460C80 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81460C84 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81460C88 | 48 00 00 0C */	b .L_81460C94
.L_81460C8C:
/* 81460C8C | 80 1E 00 18 */	lwz r0, 0x18(r30)
/* 81460C90 | 90 01 00 20 */	stw r0, 0x20(r1)
.L_81460C94:
/* 81460C94 | 38 60 00 01 */	li r3, 0x1
/* 81460C98 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460C9C | 38 80 00 0C */	li r4, 0xc
/* 81460CA0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81460CA4 | 7F 85 E3 78 */	mr r5, r28
/* 81460CA8 | 4B FF E7 89 */	bl Zi8GetTableCount
/* 81460CAC | B0 61 00 1A */	sth r3, 0x1a(r1)
/* 81460CB0 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 81460CB4 | 54 00 06 F6 */	rlwinm r0, r0, 0, 27, 27
/* 81460CB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460CBC | 41 82 00 38 */	beq .L_81460CF4
/* 81460CC0 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 81460CC4 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81460CC8 | 40 82 00 2C */	bne .L_81460CF4
/* 81460CCC | 88 9E 00 03 */	lbz r4, 0x3(r30)
/* 81460CD0 | 54 80 06 F6 */	rlwinm r0, r4, 0, 27, 27
/* 81460CD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460CD8 | 41 82 00 1C */	beq .L_81460CF4
/* 81460CDC | 38 60 00 7C */	li r3, 0x7c
/* 81460CE0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460CE4 | 7F 84 E3 78 */	mr r4, r28
/* 81460CE8 | 4B FF FD 11 */	bl Zi8_814609F8
/* 81460CEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81460CF0 | 40 82 00 8C */	bne .L_81460D7C
.L_81460CF4:
/* 81460CF4 | 88 81 00 0E */	lbz r4, 0xe(r1)
/* 81460CF8 | 54 80 06 F6 */	rlwinm r0, r4, 0, 27, 27
/* 81460CFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460D00 | 41 82 00 2C */	beq .L_81460D2C
/* 81460D04 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 81460D08 | 28 00 00 0F */	cmplwi r0, 0xf
/* 81460D0C | 40 82 00 20 */	bne .L_81460D2C
/* 81460D10 | 38 60 00 7B */	li r3, 0x7b
/* 81460D14 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460D18 | 7F 84 E3 78 */	mr r4, r28
/* 81460D1C | 4B FF FC DD */	bl Zi8_814609F8
/* 81460D20 | 7C 64 1B 78 */	mr r4, r3
/* 81460D24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81460D28 | 40 82 00 54 */	bne .L_81460D7C
.L_81460D2C:
/* 81460D2C | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 81460D30 | 54 64 06 B4 */	rlwinm r4, r3, 0, 26, 26
/* 81460D34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81460D38 | 41 82 00 38 */	beq .L_81460D70
/* 81460D3C | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 81460D40 | 28 00 00 04 */	cmplwi r0, 0x4
/* 81460D44 | 40 82 00 2C */	bne .L_81460D70
/* 81460D48 | 88 7E 00 03 */	lbz r3, 0x3(r30)
/* 81460D4C | 54 65 06 F6 */	rlwinm r5, r3, 0, 27, 27
/* 81460D50 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81460D54 | 41 82 00 1C */	beq .L_81460D70
/* 81460D58 | 38 60 00 7D */	li r3, 0x7d
/* 81460D5C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460D60 | 7F 84 E3 78 */	mr r4, r28
/* 81460D64 | 4B FF FC 95 */	bl Zi8_814609F8
/* 81460D68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81460D6C | 40 82 00 10 */	bne .L_81460D7C
.L_81460D70:
/* 81460D70 | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 81460D74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460D78 | 41 82 18 20 */	beq .L_81462598
.L_81460D7C:
/* 81460D7C | 88 9E 00 01 */	lbz r4, 0x1(r30)
/* 81460D80 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81460D84 | 41 82 00 64 */	beq .L_81460DE8
/* 81460D88 | 40 80 00 10 */	bge .L_81460D98
/* 81460D8C | 2C 04 00 03 */	cmpwi r4, 0x3
/* 81460D90 | 40 80 00 14 */	bge .L_81460DA4
/* 81460D94 | 48 00 18 04 */	b .L_81462598
.L_81460D98:
/* 81460D98 | 2C 04 00 0F */	cmpwi r4, 0xf
/* 81460D9C | 41 82 00 08 */	beq .L_81460DA4
/* 81460DA0 | 48 00 17 F8 */	b .L_81462598
.L_81460DA4:
/* 81460DA4 | 38 60 00 01 */	li r3, 0x1
/* 81460DA8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460DAC | 38 80 00 03 */	li r4, 0x3
/* 81460DB0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81460DB4 | 7F 85 E3 78 */	mr r5, r28
/* 81460DB8 | 4B FF E5 F9 */	bl Zi8GetTableAddress
/* 81460DBC | 90 61 00 24 */	stw r3, 0x24(r1)
/* 81460DC0 | 38 60 00 01 */	li r3, 0x1
/* 81460DC4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460DC8 | 38 80 00 03 */	li r4, 0x3
/* 81460DCC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81460DD0 | 7F 85 E3 78 */	mr r5, r28
/* 81460DD4 | 4B FF E6 5D */	bl Zi8GetTableCount
/* 81460DD8 | B0 61 00 14 */	sth r3, 0x14(r1)
/* 81460DDC | 38 00 00 01 */	li r0, 0x1
/* 81460DE0 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 81460DE4 | 48 00 00 48 */	b .L_81460E2C
.L_81460DE8:
/* 81460DE8 | 38 60 00 01 */	li r3, 0x1
/* 81460DEC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460DF0 | 38 80 00 04 */	li r4, 0x4
/* 81460DF4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81460DF8 | 7F 85 E3 78 */	mr r5, r28
/* 81460DFC | 4B FF E5 B5 */	bl Zi8GetTableAddress
/* 81460E00 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 81460E04 | 38 60 00 01 */	li r3, 0x1
/* 81460E08 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81460E0C | 38 80 00 04 */	li r4, 0x4
/* 81460E10 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81460E14 | 7F 85 E3 78 */	mr r5, r28
/* 81460E18 | 4B FF E6 19 */	bl Zi8GetTableCount
/* 81460E1C | 7C 60 1B 78 */	mr r0, r3
/* 81460E20 | B0 01 00 14 */	sth r0, 0x14(r1)
/* 81460E24 | 38 C0 00 00 */	li r6, 0x0
/* 81460E28 | 98 C1 00 0F */	stb r6, 0xf(r1)
.L_81460E2C:
/* 81460E2C | 88 1E 00 0C */	lbz r0, 0xc(r30)
/* 81460E30 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81460E34 | 48 00 00 2C */	b .L_81460E60
.L_81460E38:
/* 81460E38 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 81460E3C | 88 81 00 0C */	lbz r4, 0xc(r1)
/* 81460E40 | 38 64 FF FF */	subi r3, r4, 0x1
/* 81460E44 | 54 60 08 3C */	slwi r0, r3, 1
/* 81460E48 | 7C 65 02 2E */	lhzx r3, r5, r0
/* 81460E4C | 28 03 EF 09 */	cmplwi r3, 0xef09
/* 81460E50 | 40 82 00 1C */	bne .L_81460E6C
/* 81460E54 | 88 81 00 0C */	lbz r4, 0xc(r1)
/* 81460E58 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81460E5C | 98 01 00 0C */	stb r0, 0xc(r1)
.L_81460E60:
/* 81460E60 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81460E64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81460E68 | 40 82 FF D0 */	bne .L_81460E38
.L_81460E6C:
/* 81460E6C | 88 81 00 0C */	lbz r4, 0xc(r1)
/* 81460E70 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81460E74 | 41 82 00 10 */	beq .L_81460E84
/* 81460E78 | 38 00 00 01 */	li r0, 0x1
/* 81460E7C | 98 01 00 10 */	stb r0, 0x10(r1)
/* 81460E80 | 48 00 00 0C */	b .L_81460E8C
.L_81460E84:
/* 81460E84 | 38 A0 00 00 */	li r5, 0x0
/* 81460E88 | 98 A1 00 10 */	stb r5, 0x10(r1)
.L_81460E8C:
/* 81460E8C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81460E90 | A3 A3 00 00 */	lhz r29, 0x0(r3)
/* 81460E94 | 88 81 00 0C */	lbz r4, 0xc(r1)
/* 81460E98 | 28 04 00 01 */	cmplwi r4, 0x1
/* 81460E9C | 40 82 0B E4 */	bne .L_81461A80
/* 81460EA0 | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 81460EA4 | 70 03 00 81 */	andi. r3, r0, 0x81
/* 81460EA8 | 2C 03 00 80 */	cmpwi r3, 0x80
/* 81460EAC | 40 82 0B D4 */	bne .L_81461A80
/* 81460EB0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81460EB4 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 81460EB8 | 41 80 0B C8 */	blt .L_81461A80
/* 81460EBC | 57 A6 04 3E */	clrlwi r6, r29, 16
/* 81460EC0 | 28 06 F0 10 */	cmplwi r6, 0xf010
/* 81460EC4 | 41 81 0B BC */	bgt .L_81461A80
/* 81460EC8 | 3B E0 00 00 */	li r31, 0x0
/* 81460ECC | 88 81 00 0F */	lbz r4, 0xf(r1)
/* 81460ED0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81460ED4 | 41 82 04 80 */	beq .L_81461354
/* 81460ED8 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81460EDC | 28 03 EF F2 */	cmplwi r3, 0xeff2
/* 81460EE0 | 40 82 00 24 */	bne .L_81460F04
/* 81460EE4 | 3C A0 00 01 */	lis r5, 0x1
/* 81460EE8 | 38 A5 F3 61 */	subi r5, r5, 0xc9f
/* 81460EEC | 7F E3 FB 78 */	mr r3, r31
/* 81460EF0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81460EF4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81460EF8 | 54 64 08 3C */	slwi r4, r3, 1
/* 81460EFC | 38 61 00 30 */	addi r3, r1, 0x30
/* 81460F00 | 7C A3 23 2E */	sthx r5, r3, r4
.L_81460F04:
/* 81460F04 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81460F08 | 28 00 EF F2 */	cmplwi r0, 0xeff2
/* 81460F0C | 40 82 00 24 */	bne .L_81460F30
/* 81460F10 | 3C A0 00 01 */	lis r5, 0x1
/* 81460F14 | 38 A5 F3 62 */	subi r5, r5, 0xc9e
/* 81460F18 | 7F E3 FB 78 */	mr r3, r31
/* 81460F1C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81460F20 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81460F24 | 54 03 08 3C */	slwi r3, r0, 1
/* 81460F28 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81460F2C | 7C A4 1B 2E */	sthx r5, r4, r3
.L_81460F30:
/* 81460F30 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81460F34 | 28 00 EF F2 */	cmplwi r0, 0xeff2
/* 81460F38 | 40 82 00 24 */	bne .L_81460F5C
/* 81460F3C | 3C C0 00 01 */	lis r6, 0x1
/* 81460F40 | 38 C6 F3 63 */	subi r6, r6, 0xc9d
/* 81460F44 | 7F E4 FB 78 */	mr r4, r31
/* 81460F48 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81460F4C | 54 80 04 3E */	clrlwi r0, r4, 16
/* 81460F50 | 54 05 08 3C */	slwi r5, r0, 1
/* 81460F54 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81460F58 | 7C C3 2B 2E */	sthx r6, r3, r5
.L_81460F5C:
/* 81460F5C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81460F60 | 28 00 EF F3 */	cmplwi r0, 0xeff3
/* 81460F64 | 40 82 00 24 */	bne .L_81460F88
/* 81460F68 | 3C 80 00 01 */	lis r4, 0x1
/* 81460F6C | 38 84 F3 64 */	subi r4, r4, 0xc9c
/* 81460F70 | 7F E3 FB 78 */	mr r3, r31
/* 81460F74 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81460F78 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81460F7C | 54 06 08 3C */	slwi r6, r0, 1
/* 81460F80 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81460F84 | 7C 83 33 2E */	sthx r4, r3, r6
.L_81460F88:
/* 81460F88 | 57 A5 04 3E */	clrlwi r5, r29, 16
/* 81460F8C | 28 05 EF F3 */	cmplwi r5, 0xeff3
/* 81460F90 | 40 82 00 24 */	bne .L_81460FB4
/* 81460F94 | 3C 80 00 01 */	lis r4, 0x1
/* 81460F98 | 38 84 F3 65 */	subi r4, r4, 0xc9b
/* 81460F9C | 7F E3 FB 78 */	mr r3, r31
/* 81460FA0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81460FA4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81460FA8 | 54 06 08 3C */	slwi r6, r0, 1
/* 81460FAC | 38 61 00 30 */	addi r3, r1, 0x30
/* 81460FB0 | 7C 83 33 2E */	sthx r4, r3, r6
.L_81460FB4:
/* 81460FB4 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81460FB8 | 28 00 EF F3 */	cmplwi r0, 0xeff3
/* 81460FBC | 40 82 00 24 */	bne .L_81460FE0
/* 81460FC0 | 3C A0 00 01 */	lis r5, 0x1
/* 81460FC4 | 38 A5 F3 66 */	subi r5, r5, 0xc9a
/* 81460FC8 | 7F E4 FB 78 */	mr r4, r31
/* 81460FCC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81460FD0 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 81460FD4 | 54 64 08 3C */	slwi r4, r3, 1
/* 81460FD8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81460FDC | 7C A3 23 2E */	sthx r5, r3, r4
.L_81460FE0:
/* 81460FE0 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81460FE4 | 28 03 EF F4 */	cmplwi r3, 0xeff4
/* 81460FE8 | 40 82 00 24 */	bne .L_8146100C
/* 81460FEC | 3C A0 00 01 */	lis r5, 0x1
/* 81460FF0 | 38 A5 F3 67 */	subi r5, r5, 0xc99
/* 81460FF4 | 7F E3 FB 78 */	mr r3, r31
/* 81460FF8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81460FFC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81461000 | 54 66 08 3C */	slwi r6, r3, 1
/* 81461004 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81461008 | 7C A4 33 2E */	sthx r5, r4, r6
.L_8146100C:
/* 8146100C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461010 | 28 00 EF F4 */	cmplwi r0, 0xeff4
/* 81461014 | 40 82 00 24 */	bne .L_81461038
/* 81461018 | 3C A0 00 01 */	lis r5, 0x1
/* 8146101C | 38 A5 F3 68 */	subi r5, r5, 0xc98
/* 81461020 | 7F E3 FB 78 */	mr r3, r31
/* 81461024 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461028 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8146102C | 54 03 08 3C */	slwi r3, r0, 1
/* 81461030 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81461034 | 7C A4 1B 2E */	sthx r5, r4, r3
.L_81461038:
/* 81461038 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8146103C | 28 00 EF F4 */	cmplwi r0, 0xeff4
/* 81461040 | 40 82 00 24 */	bne .L_81461064
/* 81461044 | 3C C0 00 01 */	lis r6, 0x1
/* 81461048 | 38 C6 F3 69 */	subi r6, r6, 0xc97
/* 8146104C | 7F E4 FB 78 */	mr r4, r31
/* 81461050 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461054 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 81461058 | 54 65 08 3C */	slwi r5, r3, 1
/* 8146105C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461060 | 7C C3 2B 2E */	sthx r6, r3, r5
.L_81461064:
/* 81461064 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461068 | 28 00 EF F5 */	cmplwi r0, 0xeff5
/* 8146106C | 40 82 00 24 */	bne .L_81461090
/* 81461070 | 3C 80 00 01 */	lis r4, 0x1
/* 81461074 | 38 84 F3 6A */	subi r4, r4, 0xc96
/* 81461078 | 7F E3 FB 78 */	mr r3, r31
/* 8146107C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461080 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461084 | 54 06 08 3C */	slwi r6, r0, 1
/* 81461088 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8146108C | 7C 83 33 2E */	sthx r4, r3, r6
.L_81461090:
/* 81461090 | 57 A5 04 3E */	clrlwi r5, r29, 16
/* 81461094 | 28 05 EF F5 */	cmplwi r5, 0xeff5
/* 81461098 | 40 82 00 24 */	bne .L_814610BC
/* 8146109C | 3C 80 00 01 */	lis r4, 0x1
/* 814610A0 | 38 84 F3 6B */	subi r4, r4, 0xc95
/* 814610A4 | 7F E3 FB 78 */	mr r3, r31
/* 814610A8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814610AC | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814610B0 | 54 05 08 3C */	slwi r5, r0, 1
/* 814610B4 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814610B8 | 7C 83 2B 2E */	sthx r4, r3, r5
.L_814610BC:
/* 814610BC | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814610C0 | 28 00 EF F5 */	cmplwi r0, 0xeff5
/* 814610C4 | 40 82 00 24 */	bne .L_814610E8
/* 814610C8 | 3C 80 00 01 */	lis r4, 0x1
/* 814610CC | 38 84 F3 6C */	subi r4, r4, 0xc94
/* 814610D0 | 7F E3 FB 78 */	mr r3, r31
/* 814610D4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814610D8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814610DC | 54 05 08 3C */	slwi r5, r0, 1
/* 814610E0 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814610E4 | 7C 83 2B 2E */	sthx r4, r3, r5
.L_814610E8:
/* 814610E8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814610EC | 28 00 EF F6 */	cmplwi r0, 0xeff6
/* 814610F0 | 40 82 00 24 */	bne .L_81461114
/* 814610F4 | 3C 80 00 01 */	lis r4, 0x1
/* 814610F8 | 38 84 F3 6D */	subi r4, r4, 0xc93
/* 814610FC | 7F E3 FB 78 */	mr r3, r31
/* 81461100 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461104 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81461108 | 54 65 08 3C */	slwi r5, r3, 1
/* 8146110C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461110 | 7C 83 2B 2E */	sthx r4, r3, r5
.L_81461114:
/* 81461114 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461118 | 28 00 EF F6 */	cmplwi r0, 0xeff6
/* 8146111C | 40 82 00 24 */	bne .L_81461140
/* 81461120 | 3C 80 00 01 */	lis r4, 0x1
/* 81461124 | 38 84 F3 6E */	subi r4, r4, 0xc92
/* 81461128 | 7F E3 FB 78 */	mr r3, r31
/* 8146112C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461130 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461134 | 54 05 08 3C */	slwi r5, r0, 1
/* 81461138 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8146113C | 7C 83 2B 2E */	sthx r4, r3, r5
.L_81461140:
/* 81461140 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461144 | 28 00 EF F6 */	cmplwi r0, 0xeff6
/* 81461148 | 40 82 00 24 */	bne .L_8146116C
/* 8146114C | 3C 80 00 01 */	lis r4, 0x1
/* 81461150 | 38 84 F3 6F */	subi r4, r4, 0xc91
/* 81461154 | 7F E3 FB 78 */	mr r3, r31
/* 81461158 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8146115C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81461160 | 54 65 08 3C */	slwi r5, r3, 1
/* 81461164 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461168 | 7C 83 2B 2E */	sthx r4, r3, r5
.L_8146116C:
/* 8146116C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461170 | 28 00 EF F7 */	cmplwi r0, 0xeff7
/* 81461174 | 40 82 00 24 */	bne .L_81461198
/* 81461178 | 3C 80 00 01 */	lis r4, 0x1
/* 8146117C | 38 84 F3 70 */	subi r4, r4, 0xc90
/* 81461180 | 7F E3 FB 78 */	mr r3, r31
/* 81461184 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461188 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8146118C | 54 05 08 3C */	slwi r5, r0, 1
/* 81461190 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461194 | 7C 83 2B 2E */	sthx r4, r3, r5
.L_81461198:
/* 81461198 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8146119C | 28 00 EF F7 */	cmplwi r0, 0xeff7
/* 814611A0 | 40 82 00 24 */	bne .L_814611C4
/* 814611A4 | 3C 80 00 01 */	lis r4, 0x1
/* 814611A8 | 38 84 F3 71 */	subi r4, r4, 0xc8f
/* 814611AC | 7F E3 FB 78 */	mr r3, r31
/* 814611B0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814611B4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814611B8 | 54 07 08 3C */	slwi r7, r0, 1
/* 814611BC | 38 C1 00 30 */	addi r6, r1, 0x30
/* 814611C0 | 7C 86 3B 2E */	sthx r4, r6, r7
.L_814611C4:
/* 814611C4 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 814611C8 | 28 04 EF F7 */	cmplwi r4, 0xeff7
/* 814611CC | 40 82 00 24 */	bne .L_814611F0
/* 814611D0 | 3C A0 00 01 */	lis r5, 0x1
/* 814611D4 | 38 A5 F3 72 */	subi r5, r5, 0xc8e
/* 814611D8 | 7F E3 FB 78 */	mr r3, r31
/* 814611DC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814611E0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814611E4 | 54 04 08 3C */	slwi r4, r0, 1
/* 814611E8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814611EC | 7C A3 23 2E */	sthx r5, r3, r4
.L_814611F0:
/* 814611F0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814611F4 | 28 00 EF F7 */	cmplwi r0, 0xeff7
/* 814611F8 | 40 82 00 24 */	bne .L_8146121C
/* 814611FC | 3C C0 00 01 */	lis r6, 0x1
/* 81461200 | 38 C6 F3 73 */	subi r6, r6, 0xc8d
/* 81461204 | 7F E3 FB 78 */	mr r3, r31
/* 81461208 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8146120C | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81461210 | 54 85 08 3C */	slwi r5, r4, 1
/* 81461214 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461218 | 7C C3 2B 2E */	sthx r6, r3, r5
.L_8146121C:
/* 8146121C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461220 | 28 00 EF F8 */	cmplwi r0, 0xeff8
/* 81461224 | 40 82 00 24 */	bne .L_81461248
/* 81461228 | 3C 80 00 01 */	lis r4, 0x1
/* 8146122C | 38 84 F3 74 */	subi r4, r4, 0xc8c
/* 81461230 | 7F E3 FB 78 */	mr r3, r31
/* 81461234 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461238 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8146123C | 54 05 08 3C */	slwi r5, r0, 1
/* 81461240 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461244 | 7C 83 2B 2E */	sthx r4, r3, r5
.L_81461248:
/* 81461248 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8146124C | 28 00 EF F8 */	cmplwi r0, 0xeff8
/* 81461250 | 40 82 00 24 */	bne .L_81461274
/* 81461254 | 3C C0 00 01 */	lis r6, 0x1
/* 81461258 | 38 C6 F3 75 */	subi r6, r6, 0xc8b
/* 8146125C | 7F E4 FB 78 */	mr r4, r31
/* 81461260 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461264 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 81461268 | 54 05 08 3C */	slwi r5, r0, 1
/* 8146126C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461270 | 7C C3 2B 2E */	sthx r6, r3, r5
.L_81461274:
/* 81461274 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461278 | 28 00 EF F8 */	cmplwi r0, 0xeff8
/* 8146127C | 40 82 00 24 */	bne .L_814612A0
/* 81461280 | 3C 80 00 01 */	lis r4, 0x1
/* 81461284 | 38 84 F3 76 */	subi r4, r4, 0xc8a
/* 81461288 | 7F E3 FB 78 */	mr r3, r31
/* 8146128C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461290 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81461294 | 54 65 08 3C */	slwi r5, r3, 1
/* 81461298 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8146129C | 7C 83 2B 2E */	sthx r4, r3, r5
.L_814612A0:
/* 814612A0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814612A4 | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 814612A8 | 40 82 00 24 */	bne .L_814612CC
/* 814612AC | 3C 80 00 01 */	lis r4, 0x1
/* 814612B0 | 38 84 F3 77 */	subi r4, r4, 0xc89
/* 814612B4 | 7F E3 FB 78 */	mr r3, r31
/* 814612B8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814612BC | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814612C0 | 54 05 08 3C */	slwi r5, r0, 1
/* 814612C4 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814612C8 | 7C 83 2B 2E */	sthx r4, r3, r5
.L_814612CC:
/* 814612CC | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814612D0 | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 814612D4 | 40 82 00 24 */	bne .L_814612F8
/* 814612D8 | 3C 60 00 01 */	lis r3, 0x1
/* 814612DC | 38 63 F3 78 */	subi r3, r3, 0xc88
/* 814612E0 | 7F E4 FB 78 */	mr r4, r31
/* 814612E4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814612E8 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 814612EC | 54 05 08 3C */	slwi r5, r0, 1
/* 814612F0 | 38 81 00 30 */	addi r4, r1, 0x30
/* 814612F4 | 7C 64 2B 2E */	sthx r3, r4, r5
.L_814612F8:
/* 814612F8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814612FC | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 81461300 | 40 82 00 24 */	bne .L_81461324
/* 81461304 | 3C 80 00 01 */	lis r4, 0x1
/* 81461308 | 38 84 F3 79 */	subi r4, r4, 0xc87
/* 8146130C | 7F E0 FB 78 */	mr r0, r31
/* 81461310 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461314 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81461318 | 54 00 08 3C */	slwi r0, r0, 1
/* 8146131C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461320 | 7C 83 03 2E */	sthx r4, r3, r0
.L_81461324:
/* 81461324 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461328 | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 8146132C | 40 82 06 84 */	bne .L_814619B0
/* 81461330 | 3C A0 00 01 */	lis r5, 0x1
/* 81461334 | 38 A5 F3 7A */	subi r5, r5, 0xc86
/* 81461338 | 7F E3 FB 78 */	mr r3, r31
/* 8146133C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461340 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461344 | 54 04 08 3C */	slwi r4, r0, 1
/* 81461348 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8146134C | 7C A3 23 2E */	sthx r5, r3, r4
/* 81461350 | 48 00 06 60 */	b .L_814619B0
.L_81461354:
/* 81461354 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461358 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 8146135C | 40 82 00 24 */	bne .L_81461380
/* 81461360 | 3C 80 00 01 */	lis r4, 0x1
/* 81461364 | 38 84 F3 05 */	subi r4, r4, 0xcfb
/* 81461368 | 7F E0 FB 78 */	mr r0, r31
/* 8146136C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461370 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81461374 | 54 60 08 3C */	slwi r0, r3, 1
/* 81461378 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8146137C | 7C 83 03 2E */	sthx r4, r3, r0
.L_81461380:
/* 81461380 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81461384 | 28 03 EF F1 */	cmplwi r3, 0xeff1
/* 81461388 | 40 82 00 24 */	bne .L_814613AC
/* 8146138C | 3C C0 00 01 */	lis r6, 0x1
/* 81461390 | 38 C6 F3 06 */	subi r6, r6, 0xcfa
/* 81461394 | 7F E0 FB 78 */	mr r0, r31
/* 81461398 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8146139C | 54 05 04 3E */	clrlwi r5, r0, 16
/* 814613A0 | 54 A4 08 3C */	slwi r4, r5, 1
/* 814613A4 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814613A8 | 7C C3 23 2E */	sthx r6, r3, r4
.L_814613AC:
/* 814613AC | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 814613B0 | 28 03 EF F1 */	cmplwi r3, 0xeff1
/* 814613B4 | 40 82 00 24 */	bne .L_814613D8
/* 814613B8 | 3C 80 00 01 */	lis r4, 0x1
/* 814613BC | 38 84 F3 07 */	subi r4, r4, 0xcf9
/* 814613C0 | 7F E3 FB 78 */	mr r3, r31
/* 814613C4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814613C8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814613CC | 54 00 08 3C */	slwi r0, r0, 1
/* 814613D0 | 38 A1 00 30 */	addi r5, r1, 0x30
/* 814613D4 | 7C 85 03 2E */	sthx r4, r5, r0
.L_814613D8:
/* 814613D8 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 814613DC | 28 03 EF F1 */	cmplwi r3, 0xeff1
/* 814613E0 | 40 82 00 24 */	bne .L_81461404
/* 814613E4 | 3C 80 00 01 */	lis r4, 0x1
/* 814613E8 | 38 84 F3 08 */	subi r4, r4, 0xcf8
/* 814613EC | 7F E0 FB 78 */	mr r0, r31
/* 814613F0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814613F4 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814613F8 | 54 60 08 3C */	slwi r0, r3, 1
/* 814613FC | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461400 | 7C 83 03 2E */	sthx r4, r3, r0
.L_81461404:
/* 81461404 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461408 | 28 00 EF F2 */	cmplwi r0, 0xeff2
/* 8146140C | 40 82 00 24 */	bne .L_81461430
/* 81461410 | 3C 60 00 01 */	lis r3, 0x1
/* 81461414 | 38 63 F3 09 */	subi r3, r3, 0xcf7
/* 81461418 | 7F E0 FB 78 */	mr r0, r31
/* 8146141C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461420 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81461424 | 54 00 08 3C */	slwi r0, r0, 1
/* 81461428 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8146142C | 7C 64 03 2E */	sthx r3, r4, r0
.L_81461430:
/* 81461430 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461434 | 28 00 EF F2 */	cmplwi r0, 0xeff2
/* 81461438 | 40 82 00 24 */	bne .L_8146145C
/* 8146143C | 3C 60 00 01 */	lis r3, 0x1
/* 81461440 | 38 63 F3 0A */	subi r3, r3, 0xcf6
/* 81461444 | 7F E4 FB 78 */	mr r4, r31
/* 81461448 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8146144C | 54 80 04 3E */	clrlwi r0, r4, 16
/* 81461450 | 54 00 08 3C */	slwi r0, r0, 1
/* 81461454 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81461458 | 7C 64 03 2E */	sthx r3, r4, r0
.L_8146145C:
/* 8146145C | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81461460 | 28 03 EF F2 */	cmplwi r3, 0xeff2
/* 81461464 | 40 82 00 24 */	bne .L_81461488
/* 81461468 | 3C 80 00 01 */	lis r4, 0x1
/* 8146146C | 38 84 F3 0B */	subi r4, r4, 0xcf5
/* 81461470 | 7F E0 FB 78 */	mr r0, r31
/* 81461474 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461478 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8146147C | 54 65 08 3C */	slwi r5, r3, 1
/* 81461480 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461484 | 7C 83 2B 2E */	sthx r4, r3, r5
.L_81461488:
/* 81461488 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8146148C | 28 00 EF F2 */	cmplwi r0, 0xeff2
/* 81461490 | 40 82 00 24 */	bne .L_814614B4
/* 81461494 | 3C 80 00 01 */	lis r4, 0x1
/* 81461498 | 38 84 F3 0C */	subi r4, r4, 0xcf4
/* 8146149C | 7F E3 FB 78 */	mr r3, r31
/* 814614A0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814614A4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814614A8 | 54 60 08 3C */	slwi r0, r3, 1
/* 814614AC | 38 61 00 30 */	addi r3, r1, 0x30
/* 814614B0 | 7C 83 03 2E */	sthx r4, r3, r0
.L_814614B4:
/* 814614B4 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814614B8 | 28 00 EF F3 */	cmplwi r0, 0xeff3
/* 814614BC | 40 82 00 24 */	bne .L_814614E0
/* 814614C0 | 3C C0 00 01 */	lis r6, 0x1
/* 814614C4 | 38 C6 F3 0D */	subi r6, r6, 0xcf3
/* 814614C8 | 7F E0 FB 78 */	mr r0, r31
/* 814614CC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814614D0 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 814614D4 | 54 A4 08 3C */	slwi r4, r5, 1
/* 814614D8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814614DC | 7C C3 23 2E */	sthx r6, r3, r4
.L_814614E0:
/* 814614E0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814614E4 | 28 00 EF F3 */	cmplwi r0, 0xeff3
/* 814614E8 | 40 82 00 24 */	bne .L_8146150C
/* 814614EC | 3C 60 00 01 */	lis r3, 0x1
/* 814614F0 | 38 63 F3 0E */	subi r3, r3, 0xcf2
/* 814614F4 | 7F E4 FB 78 */	mr r4, r31
/* 814614F8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814614FC | 54 80 04 3E */	clrlwi r0, r4, 16
/* 81461500 | 54 00 08 3C */	slwi r0, r0, 1
/* 81461504 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81461508 | 7C 64 03 2E */	sthx r3, r4, r0
.L_8146150C:
/* 8146150C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461510 | 28 00 EF F3 */	cmplwi r0, 0xeff3
/* 81461514 | 40 82 00 24 */	bne .L_81461538
/* 81461518 | 3C A0 00 01 */	lis r5, 0x1
/* 8146151C | 38 A5 F3 0F */	subi r5, r5, 0xcf1
/* 81461520 | 7F E3 FB 78 */	mr r3, r31
/* 81461524 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461528 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 8146152C | 54 80 08 3C */	slwi r0, r4, 1
/* 81461530 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461534 | 7C A3 03 2E */	sthx r5, r3, r0
.L_81461538:
/* 81461538 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8146153C | 28 00 EF F4 */	cmplwi r0, 0xeff4
/* 81461540 | 40 82 00 24 */	bne .L_81461564
/* 81461544 | 3C C0 00 01 */	lis r6, 0x1
/* 81461548 | 38 C6 F3 10 */	subi r6, r6, 0xcf0
/* 8146154C | 7F E4 FB 78 */	mr r4, r31
/* 81461550 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461554 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 81461558 | 54 65 08 3C */	slwi r5, r3, 1
/* 8146155C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461560 | 7C C3 2B 2E */	sthx r6, r3, r5
.L_81461564:
/* 81461564 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81461568 | 28 03 EF F4 */	cmplwi r3, 0xeff4
/* 8146156C | 40 82 00 24 */	bne .L_81461590
/* 81461570 | 3C 80 00 01 */	lis r4, 0x1
/* 81461574 | 38 84 F3 11 */	subi r4, r4, 0xcef
/* 81461578 | 7F E3 FB 78 */	mr r3, r31
/* 8146157C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461580 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461584 | 54 05 08 3C */	slwi r5, r0, 1
/* 81461588 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8146158C | 7C 83 2B 2E */	sthx r4, r3, r5
.L_81461590:
/* 81461590 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461594 | 28 00 EF F4 */	cmplwi r0, 0xeff4
/* 81461598 | 40 82 00 24 */	bne .L_814615BC
/* 8146159C | 3C 60 00 01 */	lis r3, 0x1
/* 814615A0 | 38 63 F3 12 */	subi r3, r3, 0xcee
/* 814615A4 | 7F E4 FB 78 */	mr r4, r31
/* 814615A8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814615AC | 54 80 04 3E */	clrlwi r0, r4, 16
/* 814615B0 | 54 06 08 3C */	slwi r6, r0, 1
/* 814615B4 | 38 81 00 30 */	addi r4, r1, 0x30
/* 814615B8 | 7C 64 33 2E */	sthx r3, r4, r6
.L_814615BC:
/* 814615BC | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814615C0 | 28 00 EF F5 */	cmplwi r0, 0xeff5
/* 814615C4 | 40 82 00 24 */	bne .L_814615E8
/* 814615C8 | 3C A0 00 01 */	lis r5, 0x1
/* 814615CC | 38 A5 F3 13 */	subi r5, r5, 0xced
/* 814615D0 | 7F E3 FB 78 */	mr r3, r31
/* 814615D4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814615D8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814615DC | 54 04 08 3C */	slwi r4, r0, 1
/* 814615E0 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814615E4 | 7C A3 23 2E */	sthx r5, r3, r4
.L_814615E8:
/* 814615E8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814615EC | 28 00 EF F5 */	cmplwi r0, 0xeff5
/* 814615F0 | 40 82 00 24 */	bne .L_81461614
/* 814615F4 | 3C C0 00 01 */	lis r6, 0x1
/* 814615F8 | 38 C6 F3 14 */	subi r6, r6, 0xcec
/* 814615FC | 7F E3 FB 78 */	mr r3, r31
/* 81461600 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461604 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 81461608 | 54 A4 08 3C */	slwi r4, r5, 1
/* 8146160C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461610 | 7C C3 23 2E */	sthx r6, r3, r4
.L_81461614:
/* 81461614 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461618 | 28 00 EF F5 */	cmplwi r0, 0xeff5
/* 8146161C | 40 82 00 24 */	bne .L_81461640
/* 81461620 | 3C C0 00 01 */	lis r6, 0x1
/* 81461624 | 38 C6 F3 15 */	subi r6, r6, 0xceb
/* 81461628 | 7F E3 FB 78 */	mr r3, r31
/* 8146162C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461630 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461634 | 54 05 08 3C */	slwi r5, r0, 1
/* 81461638 | 38 81 00 30 */	addi r4, r1, 0x30
/* 8146163C | 7C C4 2B 2E */	sthx r6, r4, r5
.L_81461640:
/* 81461640 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81461644 | 28 03 EF F5 */	cmplwi r3, 0xeff5
/* 81461648 | 40 82 00 24 */	bne .L_8146166C
/* 8146164C | 3C 80 00 01 */	lis r4, 0x1
/* 81461650 | 38 84 F3 16 */	subi r4, r4, 0xcea
/* 81461654 | 7F E3 FB 78 */	mr r3, r31
/* 81461658 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8146165C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81461660 | 54 65 08 3C */	slwi r5, r3, 1
/* 81461664 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461668 | 7C 83 2B 2E */	sthx r4, r3, r5
.L_8146166C:
/* 8146166C | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81461670 | 28 03 EF F6 */	cmplwi r3, 0xeff6
/* 81461674 | 40 82 00 24 */	bne .L_81461698
/* 81461678 | 3C C0 00 01 */	lis r6, 0x1
/* 8146167C | 38 C6 F3 17 */	subi r6, r6, 0xce9
/* 81461680 | 7F E4 FB 78 */	mr r4, r31
/* 81461684 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461688 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8146168C | 54 05 08 3C */	slwi r5, r0, 1
/* 81461690 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461694 | 7C C3 2B 2E */	sthx r6, r3, r5
.L_81461698:
/* 81461698 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8146169C | 28 00 EF F6 */	cmplwi r0, 0xeff6
/* 814616A0 | 40 82 00 24 */	bne .L_814616C4
/* 814616A4 | 3C 60 00 01 */	lis r3, 0x1
/* 814616A8 | 38 63 F3 18 */	subi r3, r3, 0xce8
/* 814616AC | 7F E4 FB 78 */	mr r4, r31
/* 814616B0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814616B4 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 814616B8 | 54 06 08 3C */	slwi r6, r0, 1
/* 814616BC | 38 81 00 30 */	addi r4, r1, 0x30
/* 814616C0 | 7C 64 33 2E */	sthx r3, r4, r6
.L_814616C4:
/* 814616C4 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 814616C8 | 28 03 EF F6 */	cmplwi r3, 0xeff6
/* 814616CC | 40 82 00 24 */	bne .L_814616F0
/* 814616D0 | 3C A0 00 01 */	lis r5, 0x1
/* 814616D4 | 38 A5 F3 19 */	subi r5, r5, 0xce7
/* 814616D8 | 7F E3 FB 78 */	mr r3, r31
/* 814616DC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814616E0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814616E4 | 54 04 08 3C */	slwi r4, r0, 1
/* 814616E8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814616EC | 7C A3 23 2E */	sthx r5, r3, r4
.L_814616F0:
/* 814616F0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814616F4 | 28 00 EF F7 */	cmplwi r0, 0xeff7
/* 814616F8 | 40 82 00 24 */	bne .L_8146171C
/* 814616FC | 3C C0 00 01 */	lis r6, 0x1
/* 81461700 | 38 C6 F3 1A */	subi r6, r6, 0xce6
/* 81461704 | 7F E3 FB 78 */	mr r3, r31
/* 81461708 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8146170C | 54 65 04 3E */	clrlwi r5, r3, 16
/* 81461710 | 54 A4 08 3C */	slwi r4, r5, 1
/* 81461714 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461718 | 7C C3 23 2E */	sthx r6, r3, r4
.L_8146171C:
/* 8146171C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461720 | 28 00 EF F7 */	cmplwi r0, 0xeff7
/* 81461724 | 40 82 00 24 */	bne .L_81461748
/* 81461728 | 3C A0 00 01 */	lis r5, 0x1
/* 8146172C | 38 A5 F3 1B */	subi r5, r5, 0xce5
/* 81461730 | 7F E3 FB 78 */	mr r3, r31
/* 81461734 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461738 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8146173C | 54 04 08 3C */	slwi r4, r0, 1
/* 81461740 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461744 | 7C A3 23 2E */	sthx r5, r3, r4
.L_81461748:
/* 81461748 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8146174C | 28 00 EF F7 */	cmplwi r0, 0xeff7
/* 81461750 | 40 82 00 24 */	bne .L_81461774
/* 81461754 | 3C A0 00 01 */	lis r5, 0x1
/* 81461758 | 38 A5 F3 1C */	subi r5, r5, 0xce4
/* 8146175C | 7F E3 FB 78 */	mr r3, r31
/* 81461760 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461764 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461768 | 54 04 08 3C */	slwi r4, r0, 1
/* 8146176C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461770 | 7C A3 23 2E */	sthx r5, r3, r4
.L_81461774:
/* 81461774 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81461778 | 28 03 EF F7 */	cmplwi r3, 0xeff7
/* 8146177C | 40 82 00 24 */	bne .L_814617A0
/* 81461780 | 3C A0 00 01 */	lis r5, 0x1
/* 81461784 | 38 A5 F3 1D */	subi r5, r5, 0xce3
/* 81461788 | 7F E3 FB 78 */	mr r3, r31
/* 8146178C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461790 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461794 | 54 04 08 3C */	slwi r4, r0, 1
/* 81461798 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8146179C | 7C A3 23 2E */	sthx r5, r3, r4
.L_814617A0:
/* 814617A0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814617A4 | 28 00 EF F8 */	cmplwi r0, 0xeff8
/* 814617A8 | 40 82 00 24 */	bne .L_814617CC
/* 814617AC | 3C A0 00 01 */	lis r5, 0x1
/* 814617B0 | 38 A5 F3 1E */	subi r5, r5, 0xce2
/* 814617B4 | 7F E3 FB 78 */	mr r3, r31
/* 814617B8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814617BC | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814617C0 | 54 04 08 3C */	slwi r4, r0, 1
/* 814617C4 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814617C8 | 7C A3 23 2E */	sthx r5, r3, r4
.L_814617CC:
/* 814617CC | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 814617D0 | 28 03 EF F8 */	cmplwi r3, 0xeff8
/* 814617D4 | 40 82 00 24 */	bne .L_814617F8
/* 814617D8 | 3C A0 00 01 */	lis r5, 0x1
/* 814617DC | 38 A5 F3 1F */	subi r5, r5, 0xce1
/* 814617E0 | 7F E3 FB 78 */	mr r3, r31
/* 814617E4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814617E8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814617EC | 54 04 08 3C */	slwi r4, r0, 1
/* 814617F0 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814617F4 | 7C A3 23 2E */	sthx r5, r3, r4
.L_814617F8:
/* 814617F8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814617FC | 28 00 EF F8 */	cmplwi r0, 0xeff8
/* 81461800 | 40 82 00 24 */	bne .L_81461824
/* 81461804 | 3C A0 00 01 */	lis r5, 0x1
/* 81461808 | 38 A5 F3 20 */	subi r5, r5, 0xce0
/* 8146180C | 7F E3 FB 78 */	mr r3, r31
/* 81461810 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461814 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461818 | 54 04 08 3C */	slwi r4, r0, 1
/* 8146181C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461820 | 7C A3 23 2E */	sthx r5, r3, r4
.L_81461824:
/* 81461824 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461828 | 28 00 EF F8 */	cmplwi r0, 0xeff8
/* 8146182C | 40 82 00 24 */	bne .L_81461850
/* 81461830 | 3C E0 00 01 */	lis r7, 0x1
/* 81461834 | 38 E7 F3 21 */	subi r7, r7, 0xcdf
/* 81461838 | 7F E6 FB 78 */	mr r6, r31
/* 8146183C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461840 | 54 C4 04 3E */	clrlwi r4, r6, 16
/* 81461844 | 54 85 08 3C */	slwi r5, r4, 1
/* 81461848 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8146184C | 7C E3 2B 2E */	sthx r7, r3, r5
.L_81461850:
/* 81461850 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461854 | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 81461858 | 40 82 00 24 */	bne .L_8146187C
/* 8146185C | 3C 80 00 01 */	lis r4, 0x1
/* 81461860 | 38 84 F3 22 */	subi r4, r4, 0xcde
/* 81461864 | 7F E3 FB 78 */	mr r3, r31
/* 81461868 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8146186C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461870 | 54 06 08 3C */	slwi r6, r0, 1
/* 81461874 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461878 | 7C 83 33 2E */	sthx r4, r3, r6
.L_8146187C:
/* 8146187C | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 81461880 | 28 04 EF F9 */	cmplwi r4, 0xeff9
/* 81461884 | 40 82 00 24 */	bne .L_814618A8
/* 81461888 | 3C A0 00 01 */	lis r5, 0x1
/* 8146188C | 38 A5 F3 23 */	subi r5, r5, 0xcdd
/* 81461890 | 7F E3 FB 78 */	mr r3, r31
/* 81461894 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461898 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8146189C | 54 04 08 3C */	slwi r4, r0, 1
/* 814618A0 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814618A4 | 7C A3 23 2E */	sthx r5, r3, r4
.L_814618A8:
/* 814618A8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814618AC | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 814618B0 | 40 82 00 24 */	bne .L_814618D4
/* 814618B4 | 3C A0 00 01 */	lis r5, 0x1
/* 814618B8 | 38 A5 F3 24 */	subi r5, r5, 0xcdc
/* 814618BC | 7F E3 FB 78 */	mr r3, r31
/* 814618C0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814618C4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814618C8 | 54 06 08 3C */	slwi r6, r0, 1
/* 814618CC | 38 81 00 30 */	addi r4, r1, 0x30
/* 814618D0 | 7C A4 33 2E */	sthx r5, r4, r6
.L_814618D4:
/* 814618D4 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814618D8 | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 814618DC | 40 82 00 24 */	bne .L_81461900
/* 814618E0 | 3C A0 00 01 */	lis r5, 0x1
/* 814618E4 | 38 A5 F3 25 */	subi r5, r5, 0xcdb
/* 814618E8 | 7F E3 FB 78 */	mr r3, r31
/* 814618EC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814618F0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814618F4 | 54 04 08 3C */	slwi r4, r0, 1
/* 814618F8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814618FC | 7C A3 23 2E */	sthx r5, r3, r4
.L_81461900:
/* 81461900 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81461904 | 28 03 EF F9 */	cmplwi r3, 0xeff9
/* 81461908 | 40 82 00 24 */	bne .L_8146192C
/* 8146190C | 3C A0 00 01 */	lis r5, 0x1
/* 81461910 | 38 A5 F3 26 */	subi r5, r5, 0xcda
/* 81461914 | 7F E3 FB 78 */	mr r3, r31
/* 81461918 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8146191C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461920 | 54 04 08 3C */	slwi r4, r0, 1
/* 81461924 | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461928 | 7C A3 23 2E */	sthx r5, r3, r4
.L_8146192C:
/* 8146192C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461930 | 28 00 EF FA */	cmplwi r0, 0xeffa
/* 81461934 | 40 82 00 24 */	bne .L_81461958
/* 81461938 | 3C A0 00 01 */	lis r5, 0x1
/* 8146193C | 38 A5 F3 27 */	subi r5, r5, 0xcd9
/* 81461940 | 7F E3 FB 78 */	mr r3, r31
/* 81461944 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461948 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8146194C | 54 03 08 3C */	slwi r3, r0, 1
/* 81461950 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81461954 | 7C A4 1B 2E */	sthx r5, r4, r3
.L_81461958:
/* 81461958 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8146195C | 28 00 EF FA */	cmplwi r0, 0xeffa
/* 81461960 | 40 82 00 24 */	bne .L_81461984
/* 81461964 | 3C A0 00 01 */	lis r5, 0x1
/* 81461968 | 38 A5 F3 28 */	subi r5, r5, 0xcd8
/* 8146196C | 7F E4 FB 78 */	mr r4, r31
/* 81461970 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81461974 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 81461978 | 54 00 08 3C */	slwi r0, r0, 1
/* 8146197C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81461980 | 7C A3 03 2E */	sthx r5, r3, r0
.L_81461984:
/* 81461984 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81461988 | 28 00 EF FA */	cmplwi r0, 0xeffa
/* 8146198C | 40 82 00 24 */	bne .L_814619B0
/* 81461990 | 3C 80 00 01 */	lis r4, 0x1
/* 81461994 | 38 84 F3 29 */	subi r4, r4, 0xcd7
/* 81461998 | 7F E0 FB 78 */	mr r0, r31
/* 8146199C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814619A0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814619A4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814619A8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814619AC | 7C 83 03 2E */	sthx r4, r3, r0
.L_814619B0:
/* 814619B0 | 38 00 00 00 */	li r0, 0x0
/* 814619B4 | B0 01 00 18 */	sth r0, 0x18(r1)
/* 814619B8 | 48 00 00 B0 */	b .L_81461A68
.L_814619BC:
/* 814619BC | A0 A1 00 12 */	lhz r5, 0x12(r1)
/* 814619C0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814619C4 | 41 82 00 14 */	beq .L_814619D8
/* 814619C8 | A0 61 00 12 */	lhz r3, 0x12(r1)
/* 814619CC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814619D0 | B0 01 00 12 */	sth r0, 0x12(r1)
/* 814619D4 | 48 00 00 88 */	b .L_81461A5C
.L_814619D8:
/* 814619D8 | 80 81 00 2C */	lwz r4, 0x2c(r1)
/* 814619DC | 38 64 00 01 */	addi r3, r4, 0x1
/* 814619E0 | 90 61 00 2C */	stw r3, 0x2c(r1)
/* 814619E4 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814619E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814619EC | 40 82 00 4C */	bne .L_81461A38
/* 814619F0 | A0 81 00 18 */	lhz r4, 0x18(r1)
/* 814619F4 | 54 80 08 3C */	slwi r0, r4, 1
/* 814619F8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814619FC | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81461A00 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 81461A04 | B0 03 00 00 */	sth r0, 0x0(r3)
/* 81461A08 | 38 C3 00 02 */	addi r6, r3, 0x2
/* 81461A0C | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 81461A10 | 38 00 00 00 */	li r0, 0x0
/* 81461A14 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 81461A18 | 7C A4 2B 78 */	mr r4, r5
/* 81461A1C | B0 04 00 00 */	sth r0, 0x0(r4)
/* 81461A20 | 38 65 00 02 */	addi r3, r5, 0x2
/* 81461A24 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81461A28 | 88 61 00 11 */	lbz r3, 0x11(r1)
/* 81461A2C | 38 83 00 01 */	addi r4, r3, 0x1
/* 81461A30 | 98 81 00 11 */	stb r4, 0x11(r1)
/* 81461A34 | 48 00 00 14 */	b .L_81461A48
.L_81461A38:
/* 81461A38 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 81461A3C | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 81461A40 | 7C 03 00 00 */	cmpw r3, r0
/* 81461A44 | 40 80 0B 54 */	bge .L_81462598
.L_81461A48:
/* 81461A48 | 88 01 00 11 */	lbz r0, 0x11(r1)
/* 81461A4C | 54 05 06 3E */	clrlwi r5, r0, 24
/* 81461A50 | 88 7E 00 1C */	lbz r3, 0x1c(r30)
/* 81461A54 | 7C 05 18 40 */	cmplw r5, r3
/* 81461A58 | 40 80 0B 40 */	bge .L_81462598
.L_81461A5C:
/* 81461A5C | A0 81 00 18 */	lhz r4, 0x18(r1)
/* 81461A60 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81461A64 | B0 01 00 18 */	sth r0, 0x18(r1)
.L_81461A68:
/* 81461A68 | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 81461A6C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81461A70 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81461A74 | 7C 00 18 40 */	cmplw r0, r3
/* 81461A78 | 41 80 FF 44 */	blt .L_814619BC
/* 81461A7C | 48 00 0B 1C */	b .L_81462598
.L_81461A80:
/* 81461A80 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 81461A84 | 54 03 06 F6 */	rlwinm r3, r0, 0, 27, 27
/* 81461A88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81461A8C | 41 82 00 3C */	beq .L_81461AC8
/* 81461A90 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 81461A94 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81461A98 | 40 82 00 30 */	bne .L_81461AC8
/* 81461A9C | 88 1E 00 03 */	lbz r0, 0x3(r30)
/* 81461AA0 | 54 00 06 F6 */	rlwinm r0, r0, 0, 27, 27
/* 81461AA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81461AA8 | 41 82 00 20 */	beq .L_81461AC8
/* 81461AAC | 38 60 00 7C */	li r3, 0x7c
/* 81461AB0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461AB4 | 7F 84 E3 78 */	mr r4, r28
/* 81461AB8 | 4B FF EF 41 */	bl Zi8_814609F8
/* 81461ABC | 7C 64 1B 78 */	mr r4, r3
/* 81461AC0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81461AC4 | 40 82 00 80 */	bne .L_81461B44
.L_81461AC8:
/* 81461AC8 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 81461ACC | 54 03 06 F6 */	rlwinm r3, r0, 0, 27, 27
/* 81461AD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81461AD4 | 41 82 00 2C */	beq .L_81461B00
/* 81461AD8 | 88 9E 00 01 */	lbz r4, 0x1(r30)
/* 81461ADC | 28 04 00 0F */	cmplwi r4, 0xf
/* 81461AE0 | 40 82 00 20 */	bne .L_81461B00
/* 81461AE4 | 38 60 00 7B */	li r3, 0x7b
/* 81461AE8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461AEC | 7F 84 E3 78 */	mr r4, r28
/* 81461AF0 | 4B FF EF 09 */	bl Zi8_814609F8
/* 81461AF4 | 7C 60 1B 78 */	mr r0, r3
/* 81461AF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81461AFC | 40 82 00 48 */	bne .L_81461B44
.L_81461B00:
/* 81461B00 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 81461B04 | 54 04 06 B4 */	rlwinm r4, r0, 0, 26, 26
/* 81461B08 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81461B0C | 41 82 06 14 */	beq .L_81462120
/* 81461B10 | 88 7E 00 01 */	lbz r3, 0x1(r30)
/* 81461B14 | 28 03 00 04 */	cmplwi r3, 0x4
/* 81461B18 | 40 82 06 08 */	bne .L_81462120
/* 81461B1C | 88 9E 00 03 */	lbz r4, 0x3(r30)
/* 81461B20 | 54 80 06 F6 */	rlwinm r0, r4, 0, 27, 27
/* 81461B24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81461B28 | 41 82 05 F8 */	beq .L_81462120
/* 81461B2C | 38 60 00 7D */	li r3, 0x7d
/* 81461B30 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461B34 | 7F 84 E3 78 */	mr r4, r28
/* 81461B38 | 4B FF EE C1 */	bl Zi8_814609F8
/* 81461B3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81461B40 | 41 82 05 E0 */	beq .L_81462120
.L_81461B44:
/* 81461B44 | 80 BC 14 10 */	lwz r5, 0x1410(r28)
/* 81461B48 | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 81461B4C | 88 7C 14 18 */	lbz r3, 0x1418(r28)
/* 81461B50 | 98 61 00 0A */	stb r3, 0xa(r1)
/* 81461B54 | 38 00 00 00 */	li r0, 0x0
/* 81461B58 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81461B5C | 88 9C 00 1F */	lbz r4, 0x1f(r28)
/* 81461B60 | 98 81 00 08 */	stb r4, 0x8(r1)
/* 81461B64 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81461B68 | 38 80 00 00 */	li r4, 0x0
/* 81461B6C | 38 A0 00 2C */	li r5, 0x2c
/* 81461B70 | 48 01 A4 AD */	bl Zi8Memset
/* 81461B74 | 38 60 00 00 */	li r3, 0x0
/* 81461B78 | 98 61 00 41 */	stb r3, 0x41(r1)
/* 81461B7C | 38 00 00 80 */	li r0, 0x80
/* 81461B80 | 98 01 00 42 */	stb r0, 0x42(r1)
/* 81461B84 | 38 60 00 01 */	li r3, 0x1
/* 81461B88 | 98 61 00 43 */	stb r3, 0x43(r1)
/* 81461B8C | 38 00 00 81 */	li r0, 0x81
/* 81461B90 | 98 01 00 44 */	stb r0, 0x44(r1)
/* 81461B94 | 88 DE 00 04 */	lbz r6, 0x4(r30)
/* 81461B98 | 54 C0 06 F6 */	rlwinm r0, r6, 0, 27, 27
/* 81461B9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81461BA0 | 40 82 00 14 */	bne .L_81461BB4
/* 81461BA4 | 88 BE 00 04 */	lbz r5, 0x4(r30)
/* 81461BA8 | 54 A4 07 3C */	rlwinm r4, r5, 0, 28, 30
/* 81461BAC | 2C 04 00 02 */	cmpwi r4, 0x2
/* 81461BB0 | 40 82 00 14 */	bne .L_81461BC4
.L_81461BB4:
/* 81461BB4 | 88 61 00 44 */	lbz r3, 0x44(r1)
/* 81461BB8 | 60 60 00 02 */	ori r0, r3, 0x2
/* 81461BBC | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81461BC0 | 98 61 00 44 */	stb r3, 0x44(r1)
.L_81461BC4:
/* 81461BC4 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81461BC8 | 90 81 00 48 */	stw r4, 0x48(r1)
/* 81461BCC | 88 1E 00 0C */	lbz r0, 0xc(r30)
/* 81461BD0 | 98 01 00 4C */	stb r0, 0x4c(r1)
/* 81461BD4 | 80 1E 00 18 */	lwz r0, 0x18(r30)
/* 81461BD8 | 90 01 00 58 */	stw r0, 0x58(r1)
/* 81461BDC | 88 9E 00 1C */	lbz r4, 0x1c(r30)
/* 81461BE0 | 98 81 00 5C */	stb r4, 0x5c(r1)
/* 81461BE4 | A0 1E 00 1E */	lhz r0, 0x1e(r30)
/* 81461BE8 | B0 01 00 5E */	sth r0, 0x5e(r1)
/* 81461BEC | 88 BE 00 01 */	lbz r5, 0x1(r30)
/* 81461BF0 | 28 05 00 0F */	cmplwi r5, 0xf
/* 81461BF4 | 40 82 00 10 */	bne .L_81461C04
/* 81461BF8 | 38 60 00 7B */	li r3, 0x7b
/* 81461BFC | 98 61 00 40 */	stb r3, 0x40(r1)
/* 81461C00 | 48 00 02 D0 */	b .L_81461ED0
.L_81461C04:
/* 81461C04 | 88 9E 00 01 */	lbz r4, 0x1(r30)
/* 81461C08 | 28 04 00 03 */	cmplwi r4, 0x3
/* 81461C0C | 40 82 01 64 */	bne .L_81461D70
/* 81461C10 | 38 00 00 7C */	li r0, 0x7c
/* 81461C14 | 98 01 00 40 */	stb r0, 0x40(r1)
/* 81461C18 | 88 7E 00 03 */	lbz r3, 0x3(r30)
/* 81461C1C | 54 60 07 3E */	clrlwi r0, r3, 28
/* 81461C20 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81461C24 | 41 82 00 14 */	beq .L_81461C38
/* 81461C28 | 88 DE 00 03 */	lbz r6, 0x3(r30)
/* 81461C2C | 54 C4 07 3E */	clrlwi r4, r6, 28
/* 81461C30 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 81461C34 | 40 82 00 50 */	bne .L_81461C84
.L_81461C38:
/* 81461C38 | 38 60 00 77 */	li r3, 0x77
/* 81461C3C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461C40 | 7F 84 E3 78 */	mr r4, r28
/* 81461C44 | 4B FF D4 39 */	bl Zi8LangSupported_8145F07C
/* 81461C48 | 54 65 06 3E */	clrlwi r5, r3, 24
/* 81461C4C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81461C50 | 41 82 00 10 */	beq .L_81461C60
/* 81461C54 | 38 60 00 77 */	li r3, 0x77
/* 81461C58 | 98 61 00 40 */	stb r3, 0x40(r1)
/* 81461C5C | 48 00 00 28 */	b .L_81461C84
.L_81461C60:
/* 81461C60 | 38 60 00 78 */	li r3, 0x78
/* 81461C64 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461C68 | 7F 84 E3 78 */	mr r4, r28
/* 81461C6C | 4B FF D4 11 */	bl Zi8LangSupported_8145F07C
/* 81461C70 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81461C74 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81461C78 | 41 82 00 0C */	beq .L_81461C84
/* 81461C7C | 38 60 00 78 */	li r3, 0x78
/* 81461C80 | 98 61 00 40 */	stb r3, 0x40(r1)
.L_81461C84:
/* 81461C84 | 88 1E 00 03 */	lbz r0, 0x3(r30)
/* 81461C88 | 54 05 07 3E */	clrlwi r5, r0, 28
/* 81461C8C | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81461C90 | 41 82 00 14 */	beq .L_81461CA4
/* 81461C94 | 88 7E 00 03 */	lbz r3, 0x3(r30)
/* 81461C98 | 54 60 07 3E */	clrlwi r0, r3, 28
/* 81461C9C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81461CA0 | 40 82 00 54 */	bne .L_81461CF4
.L_81461CA4:
/* 81461CA4 | 38 60 00 78 */	li r3, 0x78
/* 81461CA8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461CAC | 7F 84 E3 78 */	mr r4, r28
/* 81461CB0 | 4B FF D3 CD */	bl Zi8LangSupported_8145F07C
/* 81461CB4 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81461CB8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81461CBC | 41 82 00 10 */	beq .L_81461CCC
/* 81461CC0 | 38 00 00 78 */	li r0, 0x78
/* 81461CC4 | 98 01 00 42 */	stb r0, 0x42(r1)
/* 81461CC8 | 48 00 00 2C */	b .L_81461CF4
.L_81461CCC:
/* 81461CCC | 38 60 00 77 */	li r3, 0x77
/* 81461CD0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461CD4 | 7F 84 E3 78 */	mr r4, r28
/* 81461CD8 | 4B FF D3 A5 */	bl Zi8LangSupported_8145F07C
/* 81461CDC | 7C 66 1B 78 */	mr r6, r3
/* 81461CE0 | 54 C4 06 3E */	clrlwi r4, r6, 24
/* 81461CE4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81461CE8 | 41 82 00 0C */	beq .L_81461CF4
/* 81461CEC | 38 00 00 77 */	li r0, 0x77
/* 81461CF0 | 98 01 00 42 */	stb r0, 0x42(r1)
.L_81461CF4:
/* 81461CF4 | 88 A1 00 40 */	lbz r5, 0x40(r1)
/* 81461CF8 | 28 05 00 7C */	cmplwi r5, 0x7c
/* 81461CFC | 40 82 00 20 */	bne .L_81461D1C
/* 81461D00 | 88 61 00 42 */	lbz r3, 0x42(r1)
/* 81461D04 | 28 03 00 80 */	cmplwi r3, 0x80
/* 81461D08 | 41 82 00 14 */	beq .L_81461D1C
/* 81461D0C | 88 01 00 42 */	lbz r0, 0x42(r1)
/* 81461D10 | 98 01 00 40 */	stb r0, 0x40(r1)
/* 81461D14 | 38 80 00 80 */	li r4, 0x80
/* 81461D18 | 98 81 00 42 */	stb r4, 0x42(r1)
.L_81461D1C:
/* 81461D1C | 3B E0 00 00 */	li r31, 0x0
/* 81461D20 | 48 00 00 3C */	b .L_81461D5C
.L_81461D24:
/* 81461D24 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81461D28 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81461D2C | 54 06 08 3C */	slwi r6, r0, 1
/* 81461D30 | 7C 63 32 2E */	lhzx r3, r3, r6
/* 81461D34 | 28 03 F3 60 */	cmplwi r3, 0xf360
/* 81461D38 | 40 82 00 20 */	bne .L_81461D58
/* 81461D3C | 38 A0 00 27 */	li r5, 0x27
/* 81461D40 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81461D44 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81461D48 | 54 60 08 3C */	slwi r0, r3, 1
/* 81461D4C | 7C A4 03 2E */	sthx r5, r4, r0
/* 81461D50 | 38 C0 00 01 */	li r6, 0x1
/* 81461D54 | 98 C1 00 09 */	stb r6, 0x9(r1)
.L_81461D58:
/* 81461D58 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81461D5C:
/* 81461D5C | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81461D60 | 88 1E 00 0C */	lbz r0, 0xc(r30)
/* 81461D64 | 7C 03 00 00 */	cmpw r3, r0
/* 81461D68 | 41 80 FF BC */	blt .L_81461D24
/* 81461D6C | 48 00 01 64 */	b .L_81461ED0
.L_81461D70:
/* 81461D70 | 38 A0 00 7D */	li r5, 0x7d
/* 81461D74 | 98 A1 00 40 */	stb r5, 0x40(r1)
/* 81461D78 | 88 9E 00 03 */	lbz r4, 0x3(r30)
/* 81461D7C | 54 83 07 3E */	clrlwi r3, r4, 28
/* 81461D80 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81461D84 | 41 82 00 14 */	beq .L_81461D98
/* 81461D88 | 88 9E 00 03 */	lbz r4, 0x3(r30)
/* 81461D8C | 54 83 07 3E */	clrlwi r3, r4, 28
/* 81461D90 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81461D94 | 40 82 00 50 */	bne .L_81461DE4
.L_81461D98:
/* 81461D98 | 38 60 00 79 */	li r3, 0x79
/* 81461D9C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461DA0 | 7F 84 E3 78 */	mr r4, r28
/* 81461DA4 | 4B FF D2 D9 */	bl Zi8LangSupported_8145F07C
/* 81461DA8 | 54 65 06 3E */	clrlwi r5, r3, 24
/* 81461DAC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81461DB0 | 41 82 00 10 */	beq .L_81461DC0
/* 81461DB4 | 38 60 00 79 */	li r3, 0x79
/* 81461DB8 | 98 61 00 40 */	stb r3, 0x40(r1)
/* 81461DBC | 48 00 00 28 */	b .L_81461DE4
.L_81461DC0:
/* 81461DC0 | 38 60 00 7A */	li r3, 0x7a
/* 81461DC4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461DC8 | 7F 84 E3 78 */	mr r4, r28
/* 81461DCC | 4B FF D2 B1 */	bl Zi8LangSupported_8145F07C
/* 81461DD0 | 54 66 06 3E */	clrlwi r6, r3, 24
/* 81461DD4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81461DD8 | 41 82 00 0C */	beq .L_81461DE4
/* 81461DDC | 38 80 00 7A */	li r4, 0x7a
/* 81461DE0 | 98 81 00 40 */	stb r4, 0x40(r1)
.L_81461DE4:
/* 81461DE4 | 88 1E 00 03 */	lbz r0, 0x3(r30)
/* 81461DE8 | 54 05 07 3E */	clrlwi r5, r0, 28
/* 81461DEC | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81461DF0 | 41 82 00 14 */	beq .L_81461E04
/* 81461DF4 | 88 7E 00 03 */	lbz r3, 0x3(r30)
/* 81461DF8 | 54 60 07 3E */	clrlwi r0, r3, 28
/* 81461DFC | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81461E00 | 40 82 00 54 */	bne .L_81461E54
.L_81461E04:
/* 81461E04 | 38 60 00 7A */	li r3, 0x7a
/* 81461E08 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461E0C | 7F 84 E3 78 */	mr r4, r28
/* 81461E10 | 4B FF D2 6D */	bl Zi8LangSupported_8145F07C
/* 81461E14 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81461E18 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81461E1C | 41 82 00 10 */	beq .L_81461E2C
/* 81461E20 | 38 00 00 7A */	li r0, 0x7a
/* 81461E24 | 98 01 00 42 */	stb r0, 0x42(r1)
/* 81461E28 | 48 00 00 2C */	b .L_81461E54
.L_81461E2C:
/* 81461E2C | 38 60 00 79 */	li r3, 0x79
/* 81461E30 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461E34 | 7F 84 E3 78 */	mr r4, r28
/* 81461E38 | 4B FF D2 45 */	bl Zi8LangSupported_8145F07C
/* 81461E3C | 7C 66 1B 78 */	mr r6, r3
/* 81461E40 | 54 C4 06 3E */	clrlwi r4, r6, 24
/* 81461E44 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81461E48 | 41 82 00 0C */	beq .L_81461E54
/* 81461E4C | 38 60 00 79 */	li r3, 0x79
/* 81461E50 | 98 61 00 42 */	stb r3, 0x42(r1)
.L_81461E54:
/* 81461E54 | 88 A1 00 40 */	lbz r5, 0x40(r1)
/* 81461E58 | 28 05 00 7D */	cmplwi r5, 0x7d
/* 81461E5C | 40 82 00 20 */	bne .L_81461E7C
/* 81461E60 | 88 61 00 42 */	lbz r3, 0x42(r1)
/* 81461E64 | 28 03 00 80 */	cmplwi r3, 0x80
/* 81461E68 | 41 82 00 14 */	beq .L_81461E7C
/* 81461E6C | 88 01 00 42 */	lbz r0, 0x42(r1)
/* 81461E70 | 98 01 00 40 */	stb r0, 0x40(r1)
/* 81461E74 | 38 80 00 80 */	li r4, 0x80
/* 81461E78 | 98 81 00 42 */	stb r4, 0x42(r1)
.L_81461E7C:
/* 81461E7C | 3B E0 00 00 */	li r31, 0x0
/* 81461E80 | 48 00 00 40 */	b .L_81461EC0
.L_81461E84:
/* 81461E84 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81461E88 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81461E8C | 54 06 08 3C */	slwi r6, r0, 1
/* 81461E90 | 7C 63 32 2E */	lhzx r3, r3, r6
/* 81461E94 | 28 03 00 27 */	cmplwi r3, 0x27
/* 81461E98 | 40 82 00 24 */	bne .L_81461EBC
/* 81461E9C | 3C A0 00 01 */	lis r5, 0x1
/* 81461EA0 | 38 A5 F3 60 */	subi r5, r5, 0xca0
/* 81461EA4 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81461EA8 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81461EAC | 54 60 08 3C */	slwi r0, r3, 1
/* 81461EB0 | 7C A4 03 2E */	sthx r5, r4, r0
/* 81461EB4 | 38 A0 00 01 */	li r5, 0x1
/* 81461EB8 | 98 A1 00 09 */	stb r5, 0x9(r1)
.L_81461EBC:
/* 81461EBC | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81461EC0:
/* 81461EC0 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81461EC4 | 88 1E 00 0C */	lbz r0, 0xc(r30)
/* 81461EC8 | 7C 03 00 00 */	cmpw r3, r0
/* 81461ECC | 41 80 FF B8 */	blt .L_81461E84
.L_81461ED0:
/* 81461ED0 | 88 9E 00 0C */	lbz r4, 0xc(r30)
/* 81461ED4 | 28 04 00 01 */	cmplwi r4, 0x1
/* 81461ED8 | 40 82 00 1C */	bne .L_81461EF4
/* 81461EDC | 38 60 00 80 */	li r3, 0x80
/* 81461EE0 | 98 61 00 42 */	stb r3, 0x42(r1)
/* 81461EE4 | 88 01 00 44 */	lbz r0, 0x44(r1)
/* 81461EE8 | 60 05 00 02 */	ori r5, r0, 0x2
/* 81461EEC | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 81461EF0 | 98 61 00 44 */	stb r3, 0x44(r1)
.L_81461EF4:
/* 81461EF4 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 81461EF8 | 28 00 00 0F */	cmplwi r0, 0xf
/* 81461EFC | 40 82 00 24 */	bne .L_81461F20
/* 81461F00 | 88 9E 00 03 */	lbz r4, 0x3(r30)
/* 81461F04 | 54 83 06 F6 */	rlwinm r3, r4, 0, 27, 27
/* 81461F08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81461F0C | 40 82 00 14 */	bne .L_81461F20
/* 81461F10 | 38 60 00 02 */	li r3, 0x2
/* 81461F14 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81461F18 | 7F 84 E3 78 */	mr r4, r28
/* 81461F1C | 48 01 A1 61 */	bl Zi8SetMaxWordLength
.L_81461F20:
/* 81461F20 | 38 A2 8B F8 */	li r5, Zi8SOpinyinArray@sda21
/* 81461F24 | 90 BC 14 10 */	stw r5, 0x1410(r28)
/* 81461F28 | 38 60 00 05 */	li r3, 0x5
/* 81461F2C | 98 7C 14 18 */	stb r3, 0x1418(r28)
/* 81461F30 | 88 1E 00 02 */	lbz r0, 0x2(r30)
/* 81461F34 | 54 04 07 7E */	clrlwi r4, r0, 29
/* 81461F38 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81461F3C | 40 82 00 24 */	bne .L_81461F60
/* 81461F40 | 88 7E 00 02 */	lbz r3, 0x2(r30)
/* 81461F44 | 54 60 06 72 */	rlwinm r0, r3, 0, 25, 25
/* 81461F48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81461F4C | 40 82 00 14 */	bne .L_81461F60
/* 81461F50 | 88 BE 00 02 */	lbz r5, 0x2(r30)
/* 81461F54 | 54 A3 06 B4 */	rlwinm r3, r5, 0, 26, 26
/* 81461F58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81461F5C | 41 82 00 0C */	beq .L_81461F68
.L_81461F60:
/* 81461F60 | 38 00 00 01 */	li r0, 0x1
/* 81461F64 | 98 1C 1B 16 */	stb r0, 0x1b16(r28)
.L_81461F68:
/* 81461F68 | 38 80 00 00 */	li r4, 0x0
/* 81461F6C | 98 9C 00 1F */	stb r4, 0x1f(r28)
/* 81461F70 | 38 60 00 01 */	li r3, 0x1
/* 81461F74 | 98 7C 00 1D */	stb r3, 0x1d(r28)
/* 81461F78 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81461F7C | 7F 84 E3 78 */	mr r4, r28
/* 81461F80 | 48 01 91 C1 */	bl _Zi8GetCandidates
/* 81461F84 | 54 65 06 3E */	clrlwi r5, r3, 24
/* 81461F88 | 90 A1 00 2C */	stw r5, 0x2c(r1)
/* 81461F8C | 38 60 00 00 */	li r3, 0x0
/* 81461F90 | 98 7C 00 1D */	stb r3, 0x1d(r28)
/* 81461F94 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81461F98 | 98 1C 00 1F */	stb r0, 0x1f(r28)
/* 81461F9C | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81461FA0 | 90 9C 14 10 */	stw r4, 0x1410(r28)
/* 81461FA4 | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 81461FA8 | 98 7C 14 18 */	stb r3, 0x1418(r28)
/* 81461FAC | 88 01 00 61 */	lbz r0, 0x61(r1)
/* 81461FB0 | 98 1E 00 21 */	stb r0, 0x21(r30)
/* 81461FB4 | 38 A0 00 00 */	li r5, 0x0
/* 81461FB8 | 98 BC 1B 16 */	stb r5, 0x1b16(r28)
/* 81461FBC | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81461FC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81461FC4 | 41 82 00 A8 */	beq .L_8146206C
/* 81461FC8 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 81461FCC | 28 00 00 03 */	cmplwi r0, 0x3
/* 81461FD0 | 40 82 00 54 */	bne .L_81462024
/* 81461FD4 | 3B E0 00 00 */	li r31, 0x0
/* 81461FD8 | 48 00 00 38 */	b .L_81462010
.L_81461FDC:
/* 81461FDC | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81461FE0 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81461FE4 | 54 60 08 3C */	slwi r0, r3, 1
/* 81461FE8 | 7C E4 02 2E */	lhzx r7, r4, r0
/* 81461FEC | 28 07 00 27 */	cmplwi r7, 0x27
/* 81461FF0 | 40 82 00 1C */	bne .L_8146200C
/* 81461FF4 | 3C C0 00 01 */	lis r6, 0x1
/* 81461FF8 | 38 C6 F3 60 */	subi r6, r6, 0xca0
/* 81461FFC | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81462000 | 57 E5 04 3E */	clrlwi r5, r31, 16
/* 81462004 | 54 A3 08 3C */	slwi r3, r5, 1
/* 81462008 | 7C C4 1B 2E */	sthx r6, r4, r3
.L_8146200C:
/* 8146200C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81462010:
/* 81462010 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81462014 | 88 9E 00 0C */	lbz r4, 0xc(r30)
/* 81462018 | 7C 00 20 00 */	cmpw r0, r4
/* 8146201C | 41 80 FF C0 */	blt .L_81461FDC
/* 81462020 | 48 00 00 4C */	b .L_8146206C
.L_81462024:
/* 81462024 | 3B E0 00 00 */	li r31, 0x0
/* 81462028 | 48 00 00 34 */	b .L_8146205C
.L_8146202C:
/* 8146202C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81462030 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81462034 | 54 06 08 3C */	slwi r6, r0, 1
/* 81462038 | 7C 63 32 2E */	lhzx r3, r3, r6
/* 8146203C | 28 03 F3 60 */	cmplwi r3, 0xf360
/* 81462040 | 40 82 00 18 */	bne .L_81462058
/* 81462044 | 38 80 00 27 */	li r4, 0x27
/* 81462048 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8146204C | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81462050 | 54 60 08 3C */	slwi r0, r3, 1
/* 81462054 | 7C 85 03 2E */	sthx r4, r5, r0
.L_81462058:
/* 81462058 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8146205C:
/* 8146205C | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81462060 | 88 7E 00 0C */	lbz r3, 0xc(r30)
/* 81462064 | 7C 04 18 00 */	cmpw r4, r3
/* 81462068 | 41 80 FF C4 */	blt .L_8146202C
.L_8146206C:
/* 8146206C | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 81462070 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462074 | 40 82 00 94 */	bne .L_81462108
/* 81462078 | 88 BE 00 01 */	lbz r5, 0x1(r30)
/* 8146207C | 28 05 00 03 */	cmplwi r5, 0x3
/* 81462080 | 40 82 00 88 */	bne .L_81462108
/* 81462084 | 3B E0 00 00 */	li r31, 0x0
/* 81462088 | 48 00 00 70 */	b .L_814620F8
.L_8146208C:
/* 8146208C | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 81462090 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 81462094 | 28 00 00 27 */	cmplwi r0, 0x27
/* 81462098 | 41 82 00 28 */	beq .L_814620C0
/* 8146209C | 80 C1 00 20 */	lwz r6, 0x20(r1)
/* 814620A0 | 7C C4 33 78 */	mr r4, r6
/* 814620A4 | 38 06 00 02 */	addi r0, r6, 0x2
/* 814620A8 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 814620AC | A0 A4 00 00 */	lhz r5, 0x0(r4)
/* 814620B0 | 60 A3 F3 00 */	ori r3, r5, 0xf300
/* 814620B4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814620B8 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 814620BC | 48 00 00 1C */	b .L_814620D8
.L_814620C0:
/* 814620C0 | 3C 80 00 01 */	lis r4, 0x1
/* 814620C4 | 38 84 F3 60 */	subi r4, r4, 0xca0
/* 814620C8 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814620CC | B0 83 00 00 */	sth r4, 0x0(r3)
/* 814620D0 | 38 A3 00 02 */	addi r5, r3, 0x2
/* 814620D4 | 90 A1 00 20 */	stw r5, 0x20(r1)
.L_814620D8:
/* 814620D8 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814620DC | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814620E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814620E4 | 40 82 FF A8 */	bne .L_8146208C
/* 814620E8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814620EC | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 814620F0 | 38 64 00 02 */	addi r3, r4, 0x2
/* 814620F4 | 90 61 00 20 */	stw r3, 0x20(r1)
.L_814620F8:
/* 814620F8 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 814620FC | 88 BE 00 21 */	lbz r5, 0x21(r30)
/* 81462100 | 7C 00 28 00 */	cmpw r0, r5
/* 81462104 | 41 80 FF D4 */	blt .L_814620D8
.L_81462108:
/* 81462108 | 38 60 00 64 */	li r3, 0x64
/* 8146210C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81462110 | 7F 84 E3 78 */	mr r4, r28
/* 81462114 | 48 02 23 69 */	bl Zi8LogError
/* 81462118 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8146211C | 48 00 04 98 */	b .L_814625B4
.L_81462120:
/* 81462120 | 88 7E 00 01 */	lbz r3, 0x1(r30)
/* 81462124 | 28 03 00 0F */	cmplwi r3, 0xf
/* 81462128 | 40 82 00 1C */	bne .L_81462144
/* 8146212C | 38 60 03 E8 */	li r3, 0x3e8
/* 81462130 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81462134 | 7F 84 E3 78 */	mr r4, r28
/* 81462138 | 48 02 23 45 */	bl Zi8LogError
/* 8146213C | 38 60 00 00 */	li r3, 0x0
/* 81462140 | 48 00 04 74 */	b .L_814625B4
.L_81462144:
/* 81462144 | 7F 83 E3 78 */	mr r3, r28
/* 81462148 | 48 01 9B A1 */	bl Zi8InitDupWordBuf
.L_8146214C:
/* 8146214C | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 81462150 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462154 | 41 82 04 44 */	beq .L_81462598
/* 81462158 | 38 60 00 01 */	li r3, 0x1
/* 8146215C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462160 | 38 80 00 0C */	li r4, 0xc
/* 81462164 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462168 | 7F 85 E3 78 */	mr r5, r28
/* 8146216C | 4B FF D2 45 */	bl Zi8GetTableAddress
/* 81462170 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81462174 | 3B E0 00 00 */	li r31, 0x0
/* 81462178 | 48 00 03 F8 */	b .L_81462570
.L_8146217C:
/* 8146217C | 80 81 00 28 */	lwz r4, 0x28(r1)
/* 81462180 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81462184 | 88 A1 00 0E */	lbz r5, 0xe(r1)
/* 81462188 | 7C 04 28 38 */	and r4, r0, r5
/* 8146218C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81462190 | 41 82 03 D0 */	beq .L_81462560
/* 81462194 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 81462198 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146219C | 41 82 00 1C */	beq .L_814621B8
/* 814621A0 | 80 81 00 28 */	lwz r4, 0x28(r1)
/* 814621A4 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814621A8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814621AC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814621B0 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 814621B4 | 48 00 00 18 */	b .L_814621CC
.L_814621B8:
/* 814621B8 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 814621BC | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814621C0 | 54 05 07 3E */	clrlwi r5, r0, 28
/* 814621C4 | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 814621C8 | 98 61 00 0D */	stb r3, 0xd(r1)
.L_814621CC:
/* 814621CC | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 814621D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814621D4 | 41 82 00 1C */	beq .L_814621F0
/* 814621D8 | 88 81 00 0D */	lbz r4, 0xd(r1)
/* 814621DC | 54 83 06 3E */	clrlwi r3, r4, 24
/* 814621E0 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 814621E4 | 7C 03 00 40 */	cmplw r3, r0
/* 814621E8 | 40 82 03 78 */	bne .L_81462560
/* 814621EC | 48 00 00 24 */	b .L_81462210
.L_814621F0:
/* 814621F0 | 88 81 00 0C */	lbz r4, 0xc(r1)
/* 814621F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814621F8 | 41 82 00 18 */	beq .L_81462210
/* 814621FC | 88 01 00 0D */	lbz r0, 0xd(r1)
/* 81462200 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81462204 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81462208 | 7C 03 00 40 */	cmplw r3, r0
/* 8146220C | 40 81 03 54 */	ble .L_81462560
.L_81462210:
/* 81462210 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 81462214 | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 81462218 | 54 66 04 3E */	clrlwi r6, r3, 16
/* 8146221C | 54 C0 06 36 */	rlwinm r0, r6, 0, 24, 27
/* 81462220 | 54 05 20 36 */	slwi r5, r0, 4
/* 81462224 | 80 81 00 28 */	lwz r4, 0x28(r1)
/* 81462228 | 88 64 00 02 */	lbz r3, 0x2(r4)
/* 8146222C | 7C A3 1B 78 */	or r3, r5, r3
/* 81462230 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81462234 | B0 81 00 16 */	sth r4, 0x16(r1)
/* 81462238 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 8146223C | A0 01 00 16 */	lhz r0, 0x16(r1)
/* 81462240 | 54 00 08 3C */	slwi r0, r0, 1
/* 81462244 | 7C A3 00 AE */	lbzx r5, r3, r0
/* 81462248 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 8146224C | A0 81 00 16 */	lhz r4, 0x16(r1)
/* 81462250 | 54 80 08 3C */	slwi r0, r4, 1
/* 81462254 | 7C 60 1A 14 */	add r3, r0, r3
/* 81462258 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8146225C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81462260 | 54 60 40 2E */	slwi r0, r3, 8
/* 81462264 | 7C A3 03 78 */	or r3, r5, r0
/* 81462268 | 54 7D 04 3E */	clrlwi r29, r3, 16
/* 8146226C | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 81462270 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462274 | 41 82 00 28 */	beq .L_8146229C
/* 81462278 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 8146227C | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 81462280 | 38 A0 00 00 */	li r5, 0x0
/* 81462284 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 81462288 | 4B FF DD 5D */	bl Zi8SpellingPY
/* 8146228C | 7C 60 1B 78 */	mr r0, r3
/* 81462290 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81462294 | B0 01 00 16 */	sth r0, 0x16(r1)
/* 81462298 | 48 00 00 24 */	b .L_814622BC
.L_8146229C:
/* 8146229C | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814622A0 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 814622A4 | 38 A0 00 00 */	li r5, 0x0
/* 814622A8 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 814622AC | 4B FF DB 4D */	bl Zi8SpellingZY
/* 814622B0 | 7C 64 1B 78 */	mr r4, r3
/* 814622B4 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 814622B8 | B0 01 00 16 */	sth r0, 0x16(r1)
.L_814622BC:
/* 814622BC | 38 60 00 00 */	li r3, 0x0
/* 814622C0 | B0 61 00 18 */	sth r3, 0x18(r1)
/* 814622C4 | 48 00 00 54 */	b .L_81462318
.L_814622C8:
/* 814622C8 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814622CC | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 814622D0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814622D4 | 7C 84 02 2E */	lhzx r4, r4, r0
/* 814622D8 | 28 04 F3 05 */	cmplwi r4, 0xf305
/* 814622DC | 40 80 00 30 */	bge .L_8146230C
/* 814622E0 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814622E4 | A0 81 00 18 */	lhz r4, 0x18(r1)
/* 814622E8 | 54 80 08 3C */	slwi r0, r4, 1
/* 814622EC | 7C 63 02 2E */	lhzx r3, r3, r0
/* 814622F0 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814622F4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814622F8 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 814622FC | 54 04 08 3C */	slwi r4, r0, 1
/* 81462300 | 7C 63 22 2E */	lhzx r3, r3, r4
/* 81462304 | 7C 05 18 40 */	cmplw r5, r3
/* 81462308 | 40 82 00 20 */	bne .L_81462328
.L_8146230C:
/* 8146230C | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 81462310 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81462314 | B0 01 00 18 */	sth r0, 0x18(r1)
.L_81462318:
/* 81462318 | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 8146231C | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81462320 | 7C 03 00 00 */	cmpw r3, r0
/* 81462324 | 41 80 FF A4 */	blt .L_814622C8
.L_81462328:
/* 81462328 | 88 C1 00 0C */	lbz r6, 0xc(r1)
/* 8146232C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81462330 | 41 82 00 14 */	beq .L_81462344
/* 81462334 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81462338 | 88 A1 00 0C */	lbz r5, 0xc(r1)
/* 8146233C | 7C 00 28 00 */	cmpw r0, r5
/* 81462340 | 41 80 02 20 */	blt .L_81462560
.L_81462344:
/* 81462344 | 88 81 00 0F */	lbz r4, 0xf(r1)
/* 81462348 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146234C | 41 82 00 28 */	beq .L_81462374
/* 81462350 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81462354 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 81462358 | 38 A0 00 08 */	li r5, 0x8
/* 8146235C | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 81462360 | 7F 86 E3 78 */	mr r6, r28
/* 81462364 | 48 01 43 E9 */	bl Zi8GetPInfo
/* 81462368 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8146236C | B0 01 00 16 */	sth r0, 0x16(r1)
/* 81462370 | 48 00 00 24 */	b .L_81462394
.L_81462374:
/* 81462374 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81462378 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 8146237C | 38 A0 00 08 */	li r5, 0x8
/* 81462380 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 81462384 | 7F 86 E3 78 */	mr r6, r28
/* 81462388 | 48 01 50 BD */	bl Zi8GetZInfo
/* 8146238C | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81462390 | B0 81 00 16 */	sth r4, 0x16(r1)
.L_81462394:
/* 81462394 | A0 01 00 16 */	lhz r0, 0x16(r1)
/* 81462398 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146239C | 41 82 01 C4 */	beq .L_81462560
/* 814623A0 | 38 00 00 00 */	li r0, 0x0
/* 814623A4 | B0 01 00 18 */	sth r0, 0x18(r1)
/* 814623A8 | 48 00 00 54 */	b .L_814623FC
.L_814623AC:
/* 814623AC | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814623B0 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 814623B4 | 54 05 08 3C */	slwi r5, r0, 1
/* 814623B8 | 7C 64 2A 2E */	lhzx r3, r4, r5
/* 814623BC | 28 03 F3 05 */	cmplwi r3, 0xf305
/* 814623C0 | 41 80 00 30 */	blt .L_814623F0
/* 814623C4 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 814623C8 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 814623CC | 54 03 08 3C */	slwi r3, r0, 1
/* 814623D0 | 7C 04 1A 2E */	lhzx r0, r4, r3
/* 814623D4 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 814623D8 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814623DC | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 814623E0 | 54 65 08 3C */	slwi r5, r3, 1
/* 814623E4 | 7C 64 2A 2E */	lhzx r3, r4, r5
/* 814623E8 | 7C 06 18 40 */	cmplw r6, r3
/* 814623EC | 40 82 00 20 */	bne .L_8146240C
.L_814623F0:
/* 814623F0 | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 814623F4 | 38 83 00 01 */	addi r4, r3, 0x1
/* 814623F8 | B0 81 00 18 */	sth r4, 0x18(r1)
.L_814623FC:
/* 814623FC | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 81462400 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81462404 | 7C 03 00 00 */	cmpw r3, r0
/* 81462408 | 41 80 FF A4 */	blt .L_814623AC
.L_8146240C:
/* 8146240C | 88 A1 00 0C */	lbz r5, 0xc(r1)
/* 81462410 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81462414 | 41 82 00 14 */	beq .L_81462428
/* 81462418 | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 8146241C | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81462420 | 7C 03 00 00 */	cmpw r3, r0
/* 81462424 | 41 80 01 3C */	blt .L_81462560
.L_81462428:
/* 81462428 | A0 61 00 16 */	lhz r3, 0x16(r1)
/* 8146242C | 88 9B 00 01 */	lbz r4, 0x1(r27)
/* 81462430 | 7C 03 20 00 */	cmpw r3, r4
/* 81462434 | 40 81 00 20 */	ble .L_81462454
/* 81462438 | 88 1B 00 01 */	lbz r0, 0x1(r27)
/* 8146243C | B0 01 00 16 */	sth r0, 0x16(r1)
/* 81462440 | 38 C0 00 00 */	li r6, 0x0
/* 81462444 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 81462448 | A0 01 00 16 */	lhz r0, 0x16(r1)
/* 8146244C | 54 05 08 3C */	slwi r5, r0, 1
/* 81462450 | 7C C4 2B 2E */	sthx r6, r4, r5
.L_81462454:
/* 81462454 | 88 7E 00 04 */	lbz r3, 0x4(r30)
/* 81462458 | 54 60 06 F6 */	rlwinm r0, r3, 0, 27, 27
/* 8146245C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462460 | 40 82 00 28 */	bne .L_81462488
/* 81462464 | 88 9E 00 04 */	lbz r4, 0x4(r30)
/* 81462468 | 54 83 07 3C */	rlwinm r3, r4, 0, 28, 30
/* 8146246C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81462470 | 41 82 00 18 */	beq .L_81462488
/* 81462474 | 88 1C 14 0C */	lbz r0, 0x140c(r28)
/* 81462478 | 54 06 06 3E */	clrlwi r6, r0, 24
/* 8146247C | 88 7E 00 0C */	lbz r3, 0xc(r30)
/* 81462480 | 7C 06 18 40 */	cmplw r6, r3
/* 81462484 | 40 81 00 3C */	ble .L_814624C0
.L_81462488:
/* 81462488 | 88 BE 00 0C */	lbz r5, 0xc(r30)
/* 8146248C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81462490 | 41 82 00 30 */	beq .L_814624C0
/* 81462494 | A0 81 00 16 */	lhz r4, 0x16(r1)
/* 81462498 | 88 7E 00 0C */	lbz r3, 0xc(r30)
/* 8146249C | 7C 04 18 00 */	cmpw r4, r3
/* 814624A0 | 40 81 00 20 */	ble .L_814624C0
/* 814624A4 | 88 1E 00 0C */	lbz r0, 0xc(r30)
/* 814624A8 | B0 01 00 16 */	sth r0, 0x16(r1)
/* 814624AC | 38 C0 00 00 */	li r6, 0x0
/* 814624B0 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814624B4 | A0 01 00 16 */	lhz r0, 0x16(r1)
/* 814624B8 | 54 05 08 3C */	slwi r5, r0, 1
/* 814624BC | 7C C3 2B 2E */	sthx r6, r3, r5
.L_814624C0:
/* 814624C0 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814624C4 | A0 81 00 16 */	lhz r4, 0x16(r1)
/* 814624C8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814624CC | 7F 85 E3 78 */	mr r5, r28
/* 814624D0 | 48 01 99 21 */	bl Zi8IsDupWordW
/* 814624D4 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 814624D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814624DC | 40 82 00 84 */	bne .L_81462560
/* 814624E0 | A0 61 00 12 */	lhz r3, 0x12(r1)
/* 814624E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814624E8 | 40 82 00 6C */	bne .L_81462554
/* 814624EC | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 814624F0 | 38 A3 00 01 */	addi r5, r3, 0x1
/* 814624F4 | 90 A1 00 2C */	stw r5, 0x2c(r1)
/* 814624F8 | 88 7B 00 00 */	lbz r3, 0x0(r27)
/* 814624FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81462500 | 40 82 00 2C */	bne .L_8146252C
/* 81462504 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 81462508 | A0 C1 00 16 */	lhz r6, 0x16(r1)
/* 8146250C | 38 86 00 01 */	addi r4, r6, 0x1
/* 81462510 | 54 80 08 3C */	slwi r0, r4, 1
/* 81462514 | 7C A3 02 14 */	add r5, r3, r0
/* 81462518 | 90 A1 00 20 */	stw r5, 0x20(r1)
/* 8146251C | 88 61 00 11 */	lbz r3, 0x11(r1)
/* 81462520 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81462524 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 81462528 | 48 00 00 14 */	b .L_8146253C
.L_8146252C:
/* 8146252C | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 81462530 | 80 9B 00 0C */	lwz r4, 0xc(r27)
/* 81462534 | 7C 03 20 00 */	cmpw r3, r4
/* 81462538 | 40 80 00 60 */	bge .L_81462598
.L_8146253C:
/* 8146253C | 88 01 00 11 */	lbz r0, 0x11(r1)
/* 81462540 | 54 06 06 3E */	clrlwi r6, r0, 24
/* 81462544 | 88 9E 00 1C */	lbz r4, 0x1c(r30)
/* 81462548 | 7C 06 20 40 */	cmplw r6, r4
/* 8146254C | 40 80 00 4C */	bge .L_81462598
/* 81462550 | 48 00 00 10 */	b .L_81462560
.L_81462554:
/* 81462554 | A0 61 00 12 */	lhz r3, 0x12(r1)
/* 81462558 | 38 A3 FF FF */	subi r5, r3, 0x1
/* 8146255C | B0 A1 00 12 */	sth r5, 0x12(r1)
.L_81462560:
/* 81462560 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 81462564 | 38 03 00 03 */	addi r0, r3, 0x3
/* 81462568 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 8146256C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81462570:
/* 81462570 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81462574 | A0 61 00 1A */	lhz r3, 0x1a(r1)
/* 81462578 | 7C 04 18 40 */	cmplw r4, r3
/* 8146257C | 41 80 FC 00 */	blt .L_8146217C
/* 81462580 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 81462584 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462588 | 41 82 00 10 */	beq .L_81462598
/* 8146258C | 38 C0 00 00 */	li r6, 0x0
/* 81462590 | 98 C1 00 10 */	stb r6, 0x10(r1)
/* 81462594 | 4B FF FB B8 */	b .L_8146214C
.L_81462598:
/* 81462598 | 88 61 00 11 */	lbz r3, 0x11(r1)
/* 8146259C | 98 7E 00 21 */	stb r3, 0x21(r30)
/* 814625A0 | 38 60 00 64 */	li r3, 0x64
/* 814625A4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814625A8 | 7F 84 E3 78 */	mr r4, r28
/* 814625AC | 48 02 1E D1 */	bl Zi8LogError
/* 814625B0 | 80 61 00 2C */	lwz r3, 0x2c(r1)
.L_814625B4:
/* 814625B4 | 39 61 00 90 */	addi r11, r1, 0x90
/* 814625B8 | 48 19 6F 55 */	bl _restgpr_27
/* 814625BC | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 814625C0 | 7C 08 03 A6 */	mtlr r0
/* 814625C4 | 38 21 00 90 */	addi r1, r1, 0x90
/* 814625C8 | 4E 80 00 20 */	blr
.endfn Zi8Get1KeyPressSpelling

# .text:0x27D4 | 0x814625CC | size: 0x2574
.fn Zi8Get1KeyPressCandidates, global
/* 814625CC | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 814625D0 | 7C 08 02 A6 */	mflr r0
/* 814625D4 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 814625D8 | 93 E1 01 3C */	stw r31, 0x13c(r1)
/* 814625DC | 93 C1 01 38 */	stw r30, 0x138(r1)
/* 814625E0 | 93 A1 01 34 */	stw r29, 0x134(r1)
/* 814625E4 | 93 81 01 30 */	stw r28, 0x130(r1)
/* 814625E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814625EC | 7C 9C 23 78 */	mr r28, r4
/* 814625F0 | 7C BD 2B 78 */	mr r29, r5
/* 814625F4 | 38 00 00 00 */	li r0, 0x0
/* 814625F8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 814625FC | 38 60 00 00 */	li r3, 0x0
/* 81462600 | 90 61 00 90 */	stw r3, 0x90(r1)
/* 81462604 | 38 A0 00 00 */	li r5, 0x0
/* 81462608 | 98 A1 00 2F */	stb r5, 0x2f(r1)
/* 8146260C | 38 80 00 00 */	li r4, 0x0
/* 81462610 | 98 81 00 2E */	stb r4, 0x2e(r1)
/* 81462614 | 38 80 00 00 */	li r4, 0x0
/* 81462618 | B0 81 00 4E */	sth r4, 0x4e(r1)
/* 8146261C | 38 60 00 00 */	li r3, 0x0
/* 81462620 | 98 61 00 28 */	stb r3, 0x28(r1)
/* 81462624 | 38 00 00 00 */	li r0, 0x0
/* 81462628 | 90 01 00 7C */	stw r0, 0x7c(r1)
/* 8146262C | 38 00 00 00 */	li r0, 0x0
/* 81462630 | B0 01 00 4C */	sth r0, 0x4c(r1)
/* 81462634 | 38 60 00 00 */	li r3, 0x0
/* 81462638 | 98 61 00 27 */	stb r3, 0x27(r1)
/* 8146263C | 38 00 00 01 */	li r0, 0x1
/* 81462640 | 98 01 00 26 */	stb r0, 0x26(r1)
/* 81462644 | 38 60 00 00 */	li r3, 0x0
/* 81462648 | 98 61 00 25 */	stb r3, 0x25(r1)
/* 8146264C | 38 80 00 00 */	li r4, 0x0
/* 81462650 | 98 81 00 22 */	stb r4, 0x22(r1)
/* 81462654 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 81462658 | 98 01 00 21 */	stb r0, 0x21(r1)
/* 8146265C | 38 80 00 00 */	li r4, 0x0
/* 81462660 | 98 81 00 1D */	stb r4, 0x1d(r1)
/* 81462664 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81462668 | 90 81 00 78 */	stw r4, 0x78(r1)
/* 8146266C | 38 C0 00 00 */	li r6, 0x0
/* 81462670 | 90 C1 00 74 */	stw r6, 0x74(r1)
/* 81462674 | A0 BC 00 10 */	lhz r5, 0x10(r28)
/* 81462678 | 38 85 FF C0 */	subi r4, r5, 0x40
/* 8146267C | 90 81 00 70 */	stw r4, 0x70(r1)
/* 81462680 | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 81462684 | 54 60 06 72 */	rlwinm r0, r3, 0, 25, 25
/* 81462688 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8146268C | 98 01 00 20 */	stb r0, 0x20(r1)
/* 81462690 | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 81462694 | 54 60 06 F6 */	rlwinm r0, r3, 0, 27, 27
/* 81462698 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8146269C | 98 61 00 1F */	stb r3, 0x1f(r1)
/* 814626A0 | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 814626A4 | 54 64 06 B4 */	rlwinm r4, r3, 0, 26, 26
/* 814626A8 | 54 86 06 3E */	clrlwi r6, r4, 24
/* 814626AC | 98 C1 00 1E */	stb r6, 0x1e(r1)
/* 814626B0 | 88 A1 00 21 */	lbz r5, 0x21(r1)
/* 814626B4 | 54 A0 07 34 */	rlwinm r0, r5, 0, 28, 26
/* 814626B8 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814626BC | 98 81 00 21 */	stb r4, 0x21(r1)
/* 814626C0 | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 814626C4 | 54 63 06 F2 */	rlwinm r3, r3, 0, 27, 25
/* 814626C8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814626CC | 98 01 00 21 */	stb r0, 0x21(r1)
/* 814626D0 | 89 01 00 21 */	lbz r8, 0x21(r1)
/* 814626D4 | 55 07 06 B0 */	rlwinm r7, r8, 0, 26, 24
/* 814626D8 | 54 E4 06 3E */	clrlwi r4, r7, 24
/* 814626DC | 98 81 00 21 */	stb r4, 0x21(r1)
/* 814626E0 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 814626E4 | 54 60 06 30 */	rlwinm r0, r3, 0, 24, 24
/* 814626E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814626EC | 40 82 00 14 */	bne .L_81462700
/* 814626F0 | 88 DF 00 02 */	lbz r6, 0x2(r31)
/* 814626F4 | 54 C5 06 72 */	rlwinm r5, r6, 0, 25, 25
/* 814626F8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814626FC | 41 82 00 10 */	beq .L_8146270C
.L_81462700:
/* 81462700 | 38 80 00 01 */	li r4, 0x1
/* 81462704 | 98 81 00 2F */	stb r4, 0x2f(r1)
/* 81462708 | 48 00 00 48 */	b .L_81462750
.L_8146270C:
/* 8146270C | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 81462710 | 54 04 07 38 */	rlwinm r4, r0, 0, 28, 28
/* 81462714 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81462718 | 41 82 00 10 */	beq .L_81462728
/* 8146271C | 38 A0 00 04 */	li r5, 0x4
/* 81462720 | 98 A1 00 2F */	stb r5, 0x2f(r1)
/* 81462724 | 48 00 00 2C */	b .L_81462750
.L_81462728:
/* 81462728 | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 8146272C | 54 83 06 B4 */	rlwinm r3, r4, 0, 26, 26
/* 81462730 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81462734 | 40 82 00 14 */	bne .L_81462748
/* 81462738 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 8146273C | 54 63 06 F6 */	rlwinm r3, r3, 0, 27, 27
/* 81462740 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81462744 | 41 82 00 0C */	beq .L_81462750
.L_81462748:
/* 81462748 | 38 00 00 02 */	li r0, 0x2
/* 8146274C | 98 01 00 2F */	stb r0, 0x2f(r1)
.L_81462750:
/* 81462750 | 88 01 00 2F */	lbz r0, 0x2f(r1)
/* 81462754 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462758 | 41 82 01 0C */	beq .L_81462864
/* 8146275C | 38 60 00 01 */	li r3, 0x1
/* 81462760 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462764 | 7F A4 EB 78 */	mr r4, r29
/* 81462768 | 4B FF CD 0D */	bl Zi8GetFormatVersion
/* 8146276C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81462770 | 28 00 00 04 */	cmplwi r0, 0x4
/* 81462774 | 41 80 00 24 */	blt .L_81462798
/* 81462778 | 38 60 00 01 */	li r3, 0x1
/* 8146277C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462780 | 38 80 00 15 */	li r4, 0x15
/* 81462784 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462788 | 7F A5 EB 78 */	mr r5, r29
/* 8146278C | 4B FF CC 25 */	bl Zi8GetTableAddress
/* 81462790 | 90 61 00 90 */	stw r3, 0x90(r1)
/* 81462794 | 48 00 00 0C */	b .L_814627A0
.L_81462798:
/* 81462798 | 38 A0 00 00 */	li r5, 0x0
/* 8146279C | 90 A1 00 90 */	stw r5, 0x90(r1)
.L_814627A0:
/* 814627A0 | 80 01 00 90 */	lwz r0, 0x90(r1)
/* 814627A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814627A8 | 41 82 00 0C */	beq .L_814627B4
/* 814627AC | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 814627B0 | 98 81 00 2E */	stb r4, 0x2e(r1)
.L_814627B4:
/* 814627B4 | 88 01 00 2F */	lbz r0, 0x2f(r1)
/* 814627B8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814627BC | 41 82 00 B0 */	beq .L_8146286C
/* 814627C0 | 40 80 00 14 */	bge .L_814627D4
/* 814627C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814627C8 | 41 82 00 18 */	beq .L_814627E0
/* 814627CC | 40 80 00 48 */	bge .L_81462814
/* 814627D0 | 48 00 00 9C */	b .L_8146286C
.L_814627D4:
/* 814627D4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814627D8 | 40 80 00 94 */	bge .L_8146286C
/* 814627DC | 48 00 00 6C */	b .L_81462848
.L_814627E0:
/* 814627E0 | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 814627E4 | 54 83 06 72 */	rlwinm r3, r4, 0, 25, 25
/* 814627E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814627EC | 40 82 00 1C */	bne .L_81462808
/* 814627F0 | 7F A3 EB 78 */	mr r3, r29
/* 814627F4 | 48 01 A2 91 */	bl Zi8GetZHCharSet
/* 814627F8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814627FC | 54 60 07 FE */	clrlwi r0, r3, 31
/* 81462800 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462804 | 41 82 00 68 */	beq .L_8146286C
.L_81462808:
/* 81462808 | 38 60 00 00 */	li r3, 0x0
/* 8146280C | 90 61 00 90 */	stw r3, 0x90(r1)
/* 81462810 | 48 00 00 5C */	b .L_8146286C
.L_81462814:
/* 81462814 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 81462818 | 54 63 06 F6 */	rlwinm r3, r3, 0, 27, 27
/* 8146281C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81462820 | 40 82 00 1C */	bne .L_8146283C
/* 81462824 | 7F A3 EB 78 */	mr r3, r29
/* 81462828 | 48 01 A2 5D */	bl Zi8GetZHCharSet
/* 8146282C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462830 | 54 65 06 F6 */	rlwinm r5, r3, 0, 27, 27
/* 81462834 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81462838 | 41 82 00 34 */	beq .L_8146286C
.L_8146283C:
/* 8146283C | 38 80 00 00 */	li r4, 0x0
/* 81462840 | 90 81 00 90 */	stw r4, 0x90(r1)
/* 81462844 | 48 00 00 28 */	b .L_8146286C
.L_81462848:
/* 81462848 | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 8146284C | 54 00 06 F6 */	rlwinm r0, r0, 0, 27, 27
/* 81462850 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462854 | 41 82 00 18 */	beq .L_8146286C
/* 81462858 | 38 00 00 00 */	li r0, 0x0
/* 8146285C | 90 01 00 90 */	stw r0, 0x90(r1)
/* 81462860 | 48 00 00 0C */	b .L_8146286C
.L_81462864:
/* 81462864 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 81462868 | 98 61 00 2F */	stb r3, 0x2f(r1)
.L_8146286C:
/* 8146286C | 88 E1 00 2F */	lbz r7, 0x2f(r1)
/* 81462870 | 54 E4 20 36 */	slwi r4, r7, 4
/* 81462874 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81462878 | 98 01 00 2F */	stb r0, 0x2f(r1)
/* 8146287C | A0 9F 00 1E */	lhz r4, 0x1e(r31)
/* 81462880 | B0 81 00 52 */	sth r4, 0x52(r1)
/* 81462884 | 38 C0 00 00 */	li r6, 0x0
/* 81462888 | 98 DF 00 21 */	stb r6, 0x21(r31)
/* 8146288C | 38 A0 00 00 */	li r5, 0x0
/* 81462890 | 98 BF 00 22 */	stb r5, 0x22(r31)
/* 81462894 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 81462898 | 98 81 00 2D */	stb r4, 0x2d(r1)
/* 8146289C | 88 61 00 2D */	lbz r3, 0x2d(r1)
/* 814628A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814628A4 | 41 82 00 3C */	beq .L_814628E0
/* 814628A8 | 48 00 00 2C */	b .L_814628D4
.L_814628AC:
/* 814628AC | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 814628B0 | 88 61 00 2D */	lbz r3, 0x2d(r1)
/* 814628B4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814628B8 | 54 04 08 3C */	slwi r4, r0, 1
/* 814628BC | 7C 65 22 2E */	lhzx r3, r5, r4
/* 814628C0 | 28 03 EF 09 */	cmplwi r3, 0xef09
/* 814628C4 | 40 82 00 1C */	bne .L_814628E0
/* 814628C8 | 88 A1 00 2D */	lbz r5, 0x2d(r1)
/* 814628CC | 38 85 FF FF */	subi r4, r5, 0x1
/* 814628D0 | 98 81 00 2D */	stb r4, 0x2d(r1)
.L_814628D4:
/* 814628D4 | 88 61 00 2D */	lbz r3, 0x2d(r1)
/* 814628D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814628DC | 40 82 FF D0 */	bne .L_814628AC
.L_814628E0:
/* 814628E0 | 8B C1 00 2D */	lbz r30, 0x2d(r1)
/* 814628E4 | 88 61 00 2D */	lbz r3, 0x2d(r1)
/* 814628E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814628EC | 41 82 00 18 */	beq .L_81462904
/* 814628F0 | 7F C3 F3 78 */	mr r3, r30
/* 814628F4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814628F8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814628FC | 98 01 00 2C */	stb r0, 0x2c(r1)
/* 81462900 | 48 00 00 0C */	b .L_8146290C
.L_81462904:
/* 81462904 | 38 60 00 00 */	li r3, 0x0
/* 81462908 | 98 61 00 2C */	stb r3, 0x2c(r1)
.L_8146290C:
/* 8146290C | 38 C0 00 00 */	li r6, 0x0
/* 81462910 | 98 C1 00 29 */	stb r6, 0x29(r1)
/* 81462914 | 48 00 00 2C */	b .L_81462940
.L_81462918:
/* 81462918 | 38 60 00 00 */	li r3, 0x0
/* 8146291C | 88 A1 00 29 */	lbz r5, 0x29(r1)
/* 81462920 | 38 81 00 84 */	addi r4, r1, 0x84
/* 81462924 | 7C 64 29 AE */	stbx r3, r4, r5
/* 81462928 | 88 A1 00 29 */	lbz r5, 0x29(r1)
/* 8146292C | 38 81 00 80 */	addi r4, r1, 0x80
/* 81462930 | 7C 64 29 AE */	stbx r3, r4, r5
/* 81462934 | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462938 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8146293C | 98 61 00 29 */	stb r3, 0x29(r1)
.L_81462940:
/* 81462940 | 88 01 00 29 */	lbz r0, 0x29(r1)
/* 81462944 | 28 00 00 04 */	cmplwi r0, 0x4
/* 81462948 | 41 80 FF D0 */	blt .L_81462918
/* 8146294C | 38 A0 00 01 */	li r5, 0x1
/* 81462950 | 98 A1 00 29 */	stb r5, 0x29(r1)
/* 81462954 | 48 00 02 4C */	b .L_81462BA0
.L_81462958:
/* 81462958 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8146295C | 57 C3 08 3C */	slwi r3, r30, 1
/* 81462960 | 7C 64 1A 2E */	lhzx r3, r4, r3
/* 81462964 | 3C 83 FF FF */	subis r4, r3, 0x1
/* 81462968 | 38 84 10 FF */	addi r4, r4, 0x10ff
/* 8146296C | 28 04 00 0A */	cmplwi r4, 0xa
/* 81462970 | 41 81 00 94 */	bgt .L_81462A04
/* 81462974 | 3C 60 81 67 */	lis r3, jumptable_8166AA28@ha
/* 81462978 | 38 63 AA 28 */	addi r3, r3, jumptable_8166AA28@l
/* 8146297C | 54 84 10 3A */	slwi r4, r4, 2
/* 81462980 | 7C 63 20 2E */	lwzx r3, r3, r4
/* 81462984 | 7C 69 03 A6 */	mtctr r3
/* 81462988 | 4E 80 04 20 */	bctr
/* 8146298C | 38 00 00 00 */	li r0, 0x0
/* 81462990 | 98 01 00 1C */	stb r0, 0x1c(r1)
/* 81462994 | 48 00 00 78 */	b .L_81462A0C
/* 81462998 | 38 60 00 01 */	li r3, 0x1
/* 8146299C | 98 61 00 1C */	stb r3, 0x1c(r1)
/* 814629A0 | 48 00 00 6C */	b .L_81462A0C
/* 814629A4 | 38 60 00 02 */	li r3, 0x2
/* 814629A8 | 98 61 00 1C */	stb r3, 0x1c(r1)
/* 814629AC | 48 00 00 60 */	b .L_81462A0C
/* 814629B0 | 38 80 00 03 */	li r4, 0x3
/* 814629B4 | 98 81 00 1C */	stb r4, 0x1c(r1)
/* 814629B8 | 48 00 00 54 */	b .L_81462A0C
/* 814629BC | 38 00 00 04 */	li r0, 0x4
/* 814629C0 | 98 01 00 1C */	stb r0, 0x1c(r1)
/* 814629C4 | 48 00 00 48 */	b .L_81462A0C
/* 814629C8 | 38 60 00 05 */	li r3, 0x5
/* 814629CC | 98 61 00 1C */	stb r3, 0x1c(r1)
/* 814629D0 | 48 00 00 3C */	b .L_81462A0C
/* 814629D4 | 38 00 00 06 */	li r0, 0x6
/* 814629D8 | 98 01 00 1C */	stb r0, 0x1c(r1)
/* 814629DC | 48 00 00 30 */	b .L_81462A0C
/* 814629E0 | 38 C0 00 07 */	li r6, 0x7
/* 814629E4 | 98 C1 00 1C */	stb r6, 0x1c(r1)
/* 814629E8 | 48 00 00 24 */	b .L_81462A0C
/* 814629EC | 38 A0 00 08 */	li r5, 0x8
/* 814629F0 | 98 A1 00 1C */	stb r5, 0x1c(r1)
/* 814629F4 | 48 00 00 18 */	b .L_81462A0C
/* 814629F8 | 38 80 00 04 */	li r4, 0x4
/* 814629FC | 98 81 00 1C */	stb r4, 0x1c(r1)
/* 81462A00 | 48 00 00 0C */	b .L_81462A0C
.L_81462A04:
/* 81462A04 | 38 00 00 00 */	li r0, 0x0
/* 81462A08 | 98 01 00 1C */	stb r0, 0x1c(r1)
.L_81462A0C:
/* 81462A0C | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462A10 | 54 64 07 FE */	clrlwi r4, r3, 31
/* 81462A14 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81462A18 | 41 82 00 BC */	beq .L_81462AD4
/* 81462A1C | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462A20 | 7C 66 0E 70 */	srawi r6, r3, 1
/* 81462A24 | 38 A1 00 84 */	addi r5, r1, 0x84
/* 81462A28 | 7C 85 30 AE */	lbzx r4, r5, r6
/* 81462A2C | 88 01 00 1C */	lbz r0, 0x1c(r1)
/* 81462A30 | 7C 83 03 78 */	or r3, r4, r0
/* 81462A34 | 7C 65 31 AE */	stbx r3, r5, r6
/* 81462A38 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 81462A3C | 57 C3 08 3C */	slwi r3, r30, 1
/* 81462A40 | 7C 85 1A 2E */	lhzx r4, r5, r3
/* 81462A44 | 28 04 EF 0B */	cmplwi r4, 0xef0b
/* 81462A48 | 40 82 00 24 */	bne .L_81462A6C
/* 81462A4C | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462A50 | 7C 60 0E 70 */	srawi r0, r3, 1
/* 81462A54 | 38 C1 00 80 */	addi r6, r1, 0x80
/* 81462A58 | 7C A6 00 AE */	lbzx r5, r6, r0
/* 81462A5C | 60 A4 00 08 */	ori r4, r5, 0x8
/* 81462A60 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81462A64 | 7C 66 01 AE */	stbx r3, r6, r0
/* 81462A68 | 48 00 01 28 */	b .L_81462B90
.L_81462A6C:
/* 81462A6C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81462A70 | 57 C0 08 3C */	slwi r0, r30, 1
/* 81462A74 | 7C E3 02 2E */	lhzx r7, r3, r0
/* 81462A78 | 28 07 EF 0A */	cmplwi r7, 0xef0a
/* 81462A7C | 40 82 00 24 */	bne .L_81462AA0
/* 81462A80 | 88 81 00 29 */	lbz r4, 0x29(r1)
/* 81462A84 | 7C 86 0E 70 */	srawi r6, r4, 1
/* 81462A88 | 38 61 00 80 */	addi r3, r1, 0x80
/* 81462A8C | 7C 03 30 AE */	lbzx r0, r3, r6
/* 81462A90 | 60 05 00 04 */	ori r5, r0, 0x4
/* 81462A94 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 81462A98 | 7C 83 31 AE */	stbx r4, r3, r6
/* 81462A9C | 48 00 00 F4 */	b .L_81462B90
.L_81462AA0:
/* 81462AA0 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81462AA4 | 57 C0 08 3C */	slwi r0, r30, 1
/* 81462AA8 | 7C 64 02 2E */	lhzx r3, r4, r0
/* 81462AAC | 28 03 EF 00 */	cmplwi r3, 0xef00
/* 81462AB0 | 41 82 00 E0 */	beq .L_81462B90
/* 81462AB4 | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462AB8 | 7C 66 0E 70 */	srawi r6, r3, 1
/* 81462ABC | 38 A1 00 80 */	addi r5, r1, 0x80
/* 81462AC0 | 7C E5 30 AE */	lbzx r7, r5, r6
/* 81462AC4 | 60 E3 00 07 */	ori r3, r7, 0x7
/* 81462AC8 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81462ACC | 7C 85 31 AE */	stbx r4, r5, r6
/* 81462AD0 | 48 00 00 C0 */	b .L_81462B90
.L_81462AD4:
/* 81462AD4 | 88 01 00 29 */	lbz r0, 0x29(r1)
/* 81462AD8 | 7C 06 0E 70 */	srawi r6, r0, 1
/* 81462ADC | 38 A1 00 84 */	addi r5, r1, 0x84
/* 81462AE0 | 7C 65 30 AE */	lbzx r3, r5, r6
/* 81462AE4 | 88 01 00 1C */	lbz r0, 0x1c(r1)
/* 81462AE8 | 54 00 20 36 */	slwi r0, r0, 4
/* 81462AEC | 7C 64 03 78 */	or r4, r3, r0
/* 81462AF0 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81462AF4 | 7C 65 31 AE */	stbx r3, r5, r6
/* 81462AF8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81462AFC | 57 C4 08 3C */	slwi r4, r30, 1
/* 81462B00 | 7C 03 22 2E */	lhzx r0, r3, r4
/* 81462B04 | 28 00 EF 0B */	cmplwi r0, 0xef0b
/* 81462B08 | 40 82 00 24 */	bne .L_81462B2C
/* 81462B0C | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462B10 | 7C 66 0E 70 */	srawi r6, r3, 1
/* 81462B14 | 38 A1 00 80 */	addi r5, r1, 0x80
/* 81462B18 | 7C 65 30 AE */	lbzx r3, r5, r6
/* 81462B1C | 60 64 00 80 */	ori r4, r3, 0x80
/* 81462B20 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81462B24 | 7C 65 31 AE */	stbx r3, r5, r6
/* 81462B28 | 48 00 00 68 */	b .L_81462B90
.L_81462B2C:
/* 81462B2C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81462B30 | 57 C4 08 3C */	slwi r4, r30, 1
/* 81462B34 | 7C 03 22 2E */	lhzx r0, r3, r4
/* 81462B38 | 28 00 EF 0A */	cmplwi r0, 0xef0a
/* 81462B3C | 40 82 00 24 */	bne .L_81462B60
/* 81462B40 | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462B44 | 7C 65 0E 70 */	srawi r5, r3, 1
/* 81462B48 | 38 61 00 80 */	addi r3, r1, 0x80
/* 81462B4C | 7C 83 28 AE */	lbzx r4, r3, r5
/* 81462B50 | 60 80 00 40 */	ori r0, r4, 0x40
/* 81462B54 | 54 06 06 3E */	clrlwi r6, r0, 24
/* 81462B58 | 7C C3 29 AE */	stbx r6, r3, r5
/* 81462B5C | 48 00 00 34 */	b .L_81462B90
.L_81462B60:
/* 81462B60 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 81462B64 | 57 C4 08 3C */	slwi r4, r30, 1
/* 81462B68 | 7C 65 22 2E */	lhzx r3, r5, r4
/* 81462B6C | 28 03 EF 00 */	cmplwi r3, 0xef00
/* 81462B70 | 41 82 00 20 */	beq .L_81462B90
/* 81462B74 | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462B78 | 7C 65 0E 70 */	srawi r5, r3, 1
/* 81462B7C | 38 81 00 80 */	addi r4, r1, 0x80
/* 81462B80 | 7C 64 28 AE */	lbzx r3, r4, r5
/* 81462B84 | 60 60 00 70 */	ori r0, r3, 0x70
/* 81462B88 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81462B8C | 7C 04 29 AE */	stbx r0, r4, r5
.L_81462B90:
/* 81462B90 | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462B94 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81462B98 | 98 61 00 29 */	stb r3, 0x29(r1)
/* 81462B9C | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81462BA0:
/* 81462BA0 | 88 C1 00 2D */	lbz r6, 0x2d(r1)
/* 81462BA4 | 7C 1E 30 00 */	cmpw r30, r6
/* 81462BA8 | 40 80 00 1C */	bge .L_81462BC4
/* 81462BAC | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462BB0 | 54 60 0F FE */	srwi r0, r3, 31
/* 81462BB4 | 7C A0 1A 14 */	add r5, r0, r3
/* 81462BB8 | 7C A4 0E 70 */	srawi r4, r5, 1
/* 81462BBC | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81462BC0 | 41 80 FD 98 */	blt .L_81462958
.L_81462BC4:
/* 81462BC4 | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81462BC8 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81462BCC | 98 61 00 29 */	stb r3, 0x29(r1)
/* 81462BD0 | 38 60 00 01 */	li r3, 0x1
/* 81462BD4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462BD8 | 38 80 00 00 */	li r4, 0x0
/* 81462BDC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462BE0 | 7F A5 EB 78 */	mr r5, r29
/* 81462BE4 | 4B FF C7 CD */	bl Zi8GetTableAddress
/* 81462BE8 | 90 61 00 9C */	stw r3, 0x9c(r1)
/* 81462BEC | 38 60 00 01 */	li r3, 0x1
/* 81462BF0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462BF4 | 38 80 00 00 */	li r4, 0x0
/* 81462BF8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462BFC | 7F A5 EB 78 */	mr r5, r29
/* 81462C00 | 4B FF C8 31 */	bl Zi8GetTableCount
/* 81462C04 | 7C 60 1B 78 */	mr r0, r3
/* 81462C08 | B0 01 00 56 */	sth r0, 0x56(r1)
/* 81462C0C | 38 60 00 01 */	li r3, 0x1
/* 81462C10 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462C14 | 38 80 00 05 */	li r4, 0x5
/* 81462C18 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462C1C | 7F A5 EB 78 */	mr r5, r29
/* 81462C20 | 4B FF C7 91 */	bl Zi8GetTableAddress
/* 81462C24 | 90 61 00 98 */	stw r3, 0x98(r1)
/* 81462C28 | 38 60 00 01 */	li r3, 0x1
/* 81462C2C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462C30 | 38 80 00 05 */	li r4, 0x5
/* 81462C34 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462C38 | 7F A5 EB 78 */	mr r5, r29
/* 81462C3C | 4B FF C7 F5 */	bl Zi8GetTableCount
/* 81462C40 | 7C 66 1B 78 */	mr r6, r3
/* 81462C44 | B0 C1 00 54 */	sth r6, 0x54(r1)
/* 81462C48 | 88 BF 00 03 */	lbz r5, 0x3(r31)
/* 81462C4C | 54 A4 06 72 */	rlwinm r4, r5, 0, 25, 25
/* 81462C50 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81462C54 | 41 82 00 54 */	beq .L_81462CA8
/* 81462C58 | 38 60 00 01 */	li r3, 0x1
/* 81462C5C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462C60 | 7F A4 EB 78 */	mr r4, r29
/* 81462C64 | 4B FF C8 11 */	bl Zi8GetFormatVersion
/* 81462C68 | 7C 64 1B 78 */	mr r4, r3
/* 81462C6C | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81462C70 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81462C74 | 41 80 00 34 */	blt .L_81462CA8
/* 81462C78 | 38 60 00 01 */	li r3, 0x1
/* 81462C7C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462C80 | 38 80 00 0F */	li r4, 0xf
/* 81462C84 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462C88 | 7F A5 EB 78 */	mr r5, r29
/* 81462C8C | 4B FF C7 A5 */	bl Zi8GetTableCount
/* 81462C90 | B0 61 00 44 */	sth r3, 0x44(r1)
/* 81462C94 | A0 C1 00 44 */	lhz r6, 0x44(r1)
/* 81462C98 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81462C9C | 41 82 00 0C */	beq .L_81462CA8
/* 81462CA0 | A0 A1 00 44 */	lhz r5, 0x44(r1)
/* 81462CA4 | B0 A1 00 56 */	sth r5, 0x56(r1)
.L_81462CA8:
/* 81462CA8 | 88 BF 00 03 */	lbz r5, 0x3(r31)
/* 81462CAC | 54 A6 06 30 */	rlwinm r6, r5, 0, 24, 24
/* 81462CB0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81462CB4 | 41 82 00 34 */	beq .L_81462CE8
/* 81462CB8 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 81462CBC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81462CC0 | 41 82 00 28 */	beq .L_81462CE8
/* 81462CC4 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81462CC8 | 38 80 00 00 */	li r4, 0x0
/* 81462CCC | A0 A1 00 56 */	lhz r5, 0x56(r1)
/* 81462CD0 | 38 05 00 07 */	addi r0, r5, 0x7
/* 81462CD4 | 7C 05 1E 70 */	srawi r5, r0, 3
/* 81462CD8 | 7C A5 01 94 */	addze r5, r5
/* 81462CDC | 48 01 93 41 */	bl Zi8Memset
/* 81462CE0 | 38 80 00 01 */	li r4, 0x1
/* 81462CE4 | 98 81 00 25 */	stb r4, 0x25(r1)
.L_81462CE8:
/* 81462CE8 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 81462CEC | 54 04 06 F6 */	rlwinm r4, r0, 0, 27, 27
/* 81462CF0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81462CF4 | 41 82 00 20 */	beq .L_81462D14
/* 81462CF8 | 80 61 00 78 */	lwz r3, 0x78(r1)
/* 81462CFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81462D00 | 41 82 1D D0 */	beq .L_81464AD0
/* 81462D04 | 7F A3 EB 78 */	mr r3, r29
/* 81462D08 | 48 01 8F E1 */	bl Zi8InitDupWordBuf
/* 81462D0C | 38 00 00 01 */	li r0, 0x1
/* 81462D10 | 98 01 00 1D */	stb r0, 0x1d(r1)
.L_81462D14:
/* 81462D14 | 88 9F 00 01 */	lbz r4, 0x1(r31)
/* 81462D18 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81462D1C | 41 82 00 5C */	beq .L_81462D78
/* 81462D20 | 40 80 1D B0 */	bge .L_81464AD0
/* 81462D24 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 81462D28 | 40 80 00 08 */	bge .L_81462D30
/* 81462D2C | 48 00 1D A4 */	b .L_81464AD0
.L_81462D30:
/* 81462D30 | 38 60 00 01 */	li r3, 0x1
/* 81462D34 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462D38 | 38 80 00 03 */	li r4, 0x3
/* 81462D3C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462D40 | 7F A5 EB 78 */	mr r5, r29
/* 81462D44 | 4B FF C6 6D */	bl Zi8GetTableAddress
/* 81462D48 | 90 61 00 8C */	stw r3, 0x8c(r1)
/* 81462D4C | 38 60 00 01 */	li r3, 0x1
/* 81462D50 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462D54 | 38 80 00 03 */	li r4, 0x3
/* 81462D58 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462D5C | 7F A5 EB 78 */	mr r5, r29
/* 81462D60 | 4B FF C6 D1 */	bl Zi8GetTableCount
/* 81462D64 | 7C 60 1B 78 */	mr r0, r3
/* 81462D68 | B0 01 00 58 */	sth r0, 0x58(r1)
/* 81462D6C | 38 00 00 01 */	li r0, 0x1
/* 81462D70 | 98 01 00 2B */	stb r0, 0x2b(r1)
/* 81462D74 | 48 00 00 48 */	b .L_81462DBC
.L_81462D78:
/* 81462D78 | 38 60 00 01 */	li r3, 0x1
/* 81462D7C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462D80 | 38 80 00 04 */	li r4, 0x4
/* 81462D84 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462D88 | 7F A5 EB 78 */	mr r5, r29
/* 81462D8C | 4B FF C6 25 */	bl Zi8GetTableAddress
/* 81462D90 | 90 61 00 8C */	stw r3, 0x8c(r1)
/* 81462D94 | 38 60 00 01 */	li r3, 0x1
/* 81462D98 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462D9C | 38 80 00 04 */	li r4, 0x4
/* 81462DA0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462DA4 | 7F A5 EB 78 */	mr r5, r29
/* 81462DA8 | 4B FF C6 89 */	bl Zi8GetTableCount
/* 81462DAC | 7C 65 1B 78 */	mr r5, r3
/* 81462DB0 | B0 A1 00 58 */	sth r5, 0x58(r1)
/* 81462DB4 | 38 80 00 00 */	li r4, 0x0
/* 81462DB8 | 98 81 00 2B */	stb r4, 0x2b(r1)
.L_81462DBC:
/* 81462DBC | 88 9F 00 03 */	lbz r4, 0x3(r31)
/* 81462DC0 | 54 83 07 3E */	clrlwi r3, r4, 28
/* 81462DC4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81462DC8 | 40 82 00 48 */	bne .L_81462E10
/* 81462DCC | 38 60 00 01 */	li r3, 0x1
/* 81462DD0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462DD4 | 38 80 00 08 */	li r4, 0x8
/* 81462DD8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462DDC | 7F A5 EB 78 */	mr r5, r29
/* 81462DE0 | 4B FF C5 D1 */	bl Zi8GetTableAddress
/* 81462DE4 | 7C 60 1B 78 */	mr r0, r3
/* 81462DE8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81462DEC | 38 60 00 01 */	li r3, 0x1
/* 81462DF0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462DF4 | 38 80 00 08 */	li r4, 0x8
/* 81462DF8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462DFC | 7F A5 EB 78 */	mr r5, r29
/* 81462E00 | 4B FF C6 31 */	bl Zi8GetTableCount
/* 81462E04 | 7C 60 1B 78 */	mr r0, r3
/* 81462E08 | B0 01 00 4E */	sth r0, 0x4e(r1)
/* 81462E0C | 48 00 00 50 */	b .L_81462E5C
.L_81462E10:
/* 81462E10 | 88 7F 00 03 */	lbz r3, 0x3(r31)
/* 81462E14 | 54 60 07 3E */	clrlwi r0, r3, 28
/* 81462E18 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81462E1C | 40 82 00 40 */	bne .L_81462E5C
/* 81462E20 | 38 60 00 01 */	li r3, 0x1
/* 81462E24 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462E28 | 38 80 00 09 */	li r4, 0x9
/* 81462E2C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462E30 | 7F A5 EB 78 */	mr r5, r29
/* 81462E34 | 4B FF C5 7D */	bl Zi8GetTableAddress
/* 81462E38 | 90 61 00 94 */	stw r3, 0x94(r1)
/* 81462E3C | 38 60 00 01 */	li r3, 0x1
/* 81462E40 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81462E44 | 38 80 00 09 */	li r4, 0x9
/* 81462E48 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81462E4C | 7F A5 EB 78 */	mr r5, r29
/* 81462E50 | 4B FF C5 E1 */	bl Zi8GetTableCount
/* 81462E54 | 7C 64 1B 78 */	mr r4, r3
/* 81462E58 | B0 81 00 4E */	sth r4, 0x4e(r1)
.L_81462E5C:
/* 81462E5C | 88 01 00 2C */	lbz r0, 0x2c(r1)
/* 81462E60 | 28 00 00 08 */	cmplwi r0, 0x8
/* 81462E64 | 40 81 00 10 */	ble .L_81462E74
/* 81462E68 | 38 80 00 00 */	li r4, 0x0
/* 81462E6C | 98 9F 00 20 */	stb r4, 0x20(r31)
/* 81462E70 | 48 00 1C 60 */	b .L_81464AD0
.L_81462E74:
/* 81462E74 | 3B C0 00 00 */	li r30, 0x0
/* 81462E78 | 48 00 00 20 */	b .L_81462E98
.L_81462E7C:
/* 81462E7C | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81462E80 | 57 C6 08 3C */	slwi r6, r30, 1
/* 81462E84 | 7C A4 32 2E */	lhzx r5, r4, r6
/* 81462E88 | 57 C4 08 3C */	slwi r4, r30, 1
/* 81462E8C | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81462E90 | 7C A3 23 2E */	sthx r5, r3, r4
/* 81462E94 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81462E98:
/* 81462E98 | 88 01 00 2C */	lbz r0, 0x2c(r1)
/* 81462E9C | 7C 1E 00 00 */	cmpw r30, r0
/* 81462EA0 | 41 80 FF DC */	blt .L_81462E7C
/* 81462EA4 | 38 00 00 00 */	li r0, 0x0
/* 81462EA8 | 98 1D 11 FA */	stb r0, 0x11fa(r29)
/* 81462EAC | 88 61 00 2C */	lbz r3, 0x2c(r1)
/* 81462EB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81462EB4 | 41 82 00 CC */	beq .L_81462F80
/* 81462EB8 | 38 00 00 00 */	li r0, 0x0
/* 81462EBC | 98 01 00 1B */	stb r0, 0x1b(r1)
/* 81462EC0 | 38 60 00 01 */	li r3, 0x1
/* 81462EC4 | 98 7D 11 FA */	stb r3, 0x11fa(r29)
/* 81462EC8 | 38 7D 0F FA */	addi r3, r29, 0xffa
/* 81462ECC | 38 80 00 00 */	li r4, 0x0
/* 81462ED0 | 38 A0 02 00 */	li r5, 0x200
/* 81462ED4 | 48 01 91 49 */	bl Zi8Memset
/* 81462ED8 | 3B C0 00 00 */	li r30, 0x0
/* 81462EDC | 48 00 00 8C */	b .L_81462F68
.L_81462EE0:
/* 81462EE0 | 80 81 00 8C */	lwz r4, 0x8c(r1)
/* 81462EE4 | 57 C6 08 3C */	slwi r6, r30, 1
/* 81462EE8 | 7C A4 30 AE */	lbzx r5, r4, r6
/* 81462EEC | 80 01 00 8C */	lwz r0, 0x8c(r1)
/* 81462EF0 | 57 C4 08 3C */	slwi r4, r30, 1
/* 81462EF4 | 7C 64 02 14 */	add r3, r4, r0
/* 81462EF8 | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 81462EFC | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81462F00 | 54 08 40 2E */	slwi r8, r0, 8
/* 81462F04 | 7C A7 43 78 */	or r7, r5, r8
/* 81462F08 | 54 E4 04 3E */	clrlwi r4, r7, 16
/* 81462F0C | B0 81 00 42 */	sth r4, 0x42(r1)
/* 81462F10 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81462F14 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 81462F18 | A0 A1 00 42 */	lhz r5, 0x42(r1)
/* 81462F1C | 38 C0 00 00 */	li r6, 0x0
/* 81462F20 | 54 C6 06 3E */	clrlwi r6, r6, 24
/* 81462F24 | 88 E1 00 2B */	lbz r7, 0x2b(r1)
/* 81462F28 | 39 00 00 00 */	li r8, 0x0
/* 81462F2C | 55 08 06 3E */	clrlwi r8, r8, 24
/* 81462F30 | 4B FF D3 29 */	bl Zi8IsMatch1Key
/* 81462F34 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81462F38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462F3C | 41 82 00 1C */	beq .L_81462F58
/* 81462F40 | 38 C0 00 01 */	li r6, 0x1
/* 81462F44 | 7C BD F2 14 */	add r5, r29, r30
/* 81462F48 | 98 C5 0F FA */	stb r6, 0xffa(r5)
/* 81462F4C | 38 80 00 01 */	li r4, 0x1
/* 81462F50 | 98 81 00 1B */	stb r4, 0x1b(r1)
/* 81462F54 | 48 00 00 10 */	b .L_81462F64
.L_81462F58:
/* 81462F58 | 38 00 00 00 */	li r0, 0x0
/* 81462F5C | 7C 9D F2 14 */	add r4, r29, r30
/* 81462F60 | 98 04 0F FA */	stb r0, 0xffa(r4)
.L_81462F64:
/* 81462F64 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81462F68:
/* 81462F68 | A0 A1 00 58 */	lhz r5, 0x58(r1)
/* 81462F6C | 7C 1E 28 00 */	cmpw r30, r5
/* 81462F70 | 41 80 FF 70 */	blt .L_81462EE0
/* 81462F74 | 88 81 00 1B */	lbz r4, 0x1b(r1)
/* 81462F78 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81462F7C | 41 82 1B 54 */	beq .L_81464AD0
.L_81462F80:
/* 81462F80 | 88 7C 00 00 */	lbz r3, 0x0(r28)
/* 81462F84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81462F88 | 41 82 00 10 */	beq .L_81462F98
/* 81462F8C | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 81462F90 | 28 03 00 05 */	cmplwi r3, 0x5
/* 81462F94 | 40 82 04 34 */	bne .L_814633C8
.L_81462F98:
/* 81462F98 | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 81462F9C | 28 03 00 05 */	cmplwi r3, 0x5
/* 81462FA0 | 40 82 00 10 */	bne .L_81462FB0
/* 81462FA4 | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 81462FA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462FAC | 41 82 04 1C */	beq .L_814633C8
.L_81462FB0:
/* 81462FB0 | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 81462FB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81462FB8 | 41 82 00 24 */	beq .L_81462FDC
/* 81462FBC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81462FC0 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 81462FC4 | 7F A4 EB 78 */	mr r4, r29
/* 81462FC8 | 48 01 9D AD */	bl Zi8IsCharacter
/* 81462FCC | 7C 60 1B 78 */	mr r0, r3
/* 81462FD0 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81462FD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81462FD8 | 41 82 03 F0 */	beq .L_814633C8
.L_81462FDC:
/* 81462FDC | 38 A0 00 00 */	li r5, 0x0
/* 81462FE0 | 98 A1 00 23 */	stb r5, 0x23(r1)
/* 81462FE4 | 48 00 03 A8 */	b .L_8146338C
.L_81462FE8:
/* 81462FE8 | 38 00 00 01 */	li r0, 0x1
/* 81462FEC | 98 01 00 23 */	stb r0, 0x23(r1)
/* 81462FF0 | 88 9F 00 14 */	lbz r4, 0x14(r31)
/* 81462FF4 | 54 80 08 3C */	slwi r0, r4, 1
/* 81462FF8 | 38 81 00 B0 */	addi r4, r1, 0xb0
/* 81462FFC | 7C 64 02 2E */	lhzx r3, r4, r0
/* 81463000 | B0 61 00 46 */	sth r3, 0x46(r1)
/* 81463004 | A0 61 00 46 */	lhz r3, 0x46(r1)
/* 81463008 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8146300C | A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 81463010 | 7C 03 00 40 */	cmplw r3, r0
/* 81463014 | 41 82 03 78 */	beq .L_8146338C
/* 81463018 | A0 61 00 46 */	lhz r3, 0x46(r1)
/* 8146301C | 7F A4 EB 78 */	mr r4, r29
/* 81463020 | 48 01 9D 55 */	bl Zi8IsCharacter
/* 81463024 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81463028 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146302C | 41 82 03 60 */	beq .L_8146338C
/* 81463030 | A0 61 00 46 */	lhz r3, 0x46(r1)
/* 81463034 | B0 61 00 4C */	sth r3, 0x4c(r1)
/* 81463038 | A0 61 00 46 */	lhz r3, 0x46(r1)
/* 8146303C | 7F A4 EB 78 */	mr r4, r29
/* 81463040 | 48 01 C3 55 */	bl Zi8Uni2Ord
/* 81463044 | B0 61 00 48 */	sth r3, 0x48(r1)
/* 81463048 | 80 61 00 9C */	lwz r3, 0x9c(r1)
/* 8146304C | A0 A1 00 48 */	lhz r5, 0x48(r1)
/* 81463050 | 1C 85 00 0C */	mulli r4, r5, 0xc
/* 81463054 | 7C 03 22 14 */	add r0, r3, r4
/* 81463058 | 90 01 00 88 */	stw r0, 0x88(r1)
/* 8146305C | 38 00 00 00 */	li r0, 0x0
/* 81463060 | 98 01 00 24 */	stb r0, 0x24(r1)
/* 81463064 | 88 01 00 29 */	lbz r0, 0x29(r1)
/* 81463068 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146306C | 41 82 00 48 */	beq .L_814630B4
/* 81463070 | 3B C0 00 00 */	li r30, 0x0
/* 81463074 | 48 00 00 38 */	b .L_814630AC
.L_81463078:
/* 81463078 | 38 61 00 84 */	addi r3, r1, 0x84
/* 8146307C | 7C E3 F0 AE */	lbzx r7, r3, r30
/* 81463080 | 38 81 00 80 */	addi r4, r1, 0x80
/* 81463084 | 7C 04 F0 AE */	lbzx r0, r4, r30
/* 81463088 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 8146308C | 7C C4 F0 AE */	lbzx r6, r4, r30
/* 81463090 | 7C 05 30 38 */	and r5, r0, r6
/* 81463094 | 7C 07 28 00 */	cmpw r7, r5
/* 81463098 | 41 82 00 10 */	beq .L_814630A8
/* 8146309C | 38 80 00 01 */	li r4, 0x1
/* 814630A0 | 98 81 00 24 */	stb r4, 0x24(r1)
/* 814630A4 | 48 00 00 10 */	b .L_814630B4
.L_814630A8:
/* 814630A8 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814630AC:
/* 814630AC | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 814630B0 | 41 80 FF C8 */	blt .L_81463078
.L_814630B4:
/* 814630B4 | 88 61 00 24 */	lbz r3, 0x24(r1)
/* 814630B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814630BC | 40 82 02 D0 */	bne .L_8146338C
/* 814630C0 | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 814630C4 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 814630C8 | 48 01 BE 01 */	bl Zi8GetPCode
/* 814630CC | 7C 65 1B 78 */	mr r5, r3
/* 814630D0 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 814630D4 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 814630D8 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 814630DC | 88 C1 00 27 */	lbz r6, 0x27(r1)
/* 814630E0 | 88 E1 00 2B */	lbz r7, 0x2b(r1)
/* 814630E4 | 89 01 00 26 */	lbz r8, 0x26(r1)
/* 814630E8 | 4B FF D1 71 */	bl Zi8IsMatch1Key
/* 814630EC | 98 61 00 2A */	stb r3, 0x2a(r1)
/* 814630F0 | 88 01 00 2A */	lbz r0, 0x2a(r1)
/* 814630F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814630F8 | 40 82 00 60 */	bne .L_81463158
/* 814630FC | 88 81 00 20 */	lbz r4, 0x20(r1)
/* 81463100 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81463104 | 40 82 00 54 */	bne .L_81463158
/* 81463108 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 8146310C | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 81463110 | 54 A4 06 30 */	rlwinm r4, r5, 0, 24, 24
/* 81463114 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81463118 | 41 82 00 40 */	beq .L_81463158
/* 8146311C | 88 61 00 26 */	lbz r3, 0x26(r1)
/* 81463120 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81463124 | 88 61 00 2F */	lbz r3, 0x2f(r1)
/* 81463128 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8146312C | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 81463130 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81463134 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 81463138 | 88 A1 00 27 */	lbz r5, 0x27(r1)
/* 8146313C | 80 C1 00 98 */	lwz r6, 0x98(r1)
/* 81463140 | A0 E1 00 54 */	lhz r7, 0x54(r1)
/* 81463144 | 81 01 00 8C */	lwz r8, 0x8c(r1)
/* 81463148 | A1 21 00 48 */	lhz r9, 0x48(r1)
/* 8146314C | 89 41 00 2B */	lbz r10, 0x2b(r1)
/* 81463150 | 4B FF D2 8D */	bl MatchAltSound1Key
/* 81463154 | 98 61 00 2A */	stb r3, 0x2a(r1)
.L_81463158:
/* 81463158 | 88 01 00 2A */	lbz r0, 0x2a(r1)
/* 8146315C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463160 | 41 82 02 2C */	beq .L_8146338C
/* 81463164 | 88 61 00 1D */	lbz r3, 0x1d(r1)
/* 81463168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146316C | 40 82 00 70 */	bne .L_814631DC
/* 81463170 | 88 C1 00 25 */	lbz r6, 0x25(r1)
/* 81463174 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81463178 | 41 82 00 20 */	beq .L_81463198
/* 8146317C | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81463180 | A0 81 00 48 */	lhz r4, 0x48(r1)
/* 81463184 | 7F A5 EB 78 */	mr r5, r29
/* 81463188 | 4B FF D7 A9 */	bl Zi8SetFindCand
/* 8146318C | 54 65 06 3E */	clrlwi r5, r3, 24
/* 81463190 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81463194 | 40 82 01 F8 */	bne .L_8146338C
.L_81463198:
/* 81463198 | 3B C0 00 00 */	li r30, 0x0
/* 8146319C | 48 00 00 24 */	b .L_814631C0
.L_814631A0:
/* 814631A0 | A0 81 00 46 */	lhz r4, 0x46(r1)
/* 814631A4 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814631A8 | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 814631AC | 57 C3 08 3C */	slwi r3, r30, 1
/* 814631B0 | 7C 64 1A 2E */	lhzx r3, r4, r3
/* 814631B4 | 7C 05 18 40 */	cmplw r5, r3
/* 814631B8 | 41 82 00 14 */	beq .L_814631CC
/* 814631BC | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814631C0:
/* 814631C0 | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 814631C4 | 7C 1E 00 00 */	cmpw r30, r0
/* 814631C8 | 41 80 FF D8 */	blt .L_814631A0
.L_814631CC:
/* 814631CC | 88 A1 00 28 */	lbz r5, 0x28(r1)
/* 814631D0 | 7C 1E 28 00 */	cmpw r30, r5
/* 814631D4 | 41 80 01 B8 */	blt .L_8146338C
/* 814631D8 | 48 00 00 9C */	b .L_81463274
.L_814631DC:
/* 814631DC | 38 80 00 00 */	li r4, 0x0
/* 814631E0 | 98 81 00 22 */	stb r4, 0x22(r1)
/* 814631E4 | 8B DF 00 14 */	lbz r30, 0x14(r31)
/* 814631E8 | 48 00 00 14 */	b .L_814631FC
.L_814631EC:
/* 814631EC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814631F0 | 88 61 00 22 */	lbz r3, 0x22(r1)
/* 814631F4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814631F8 | 98 61 00 22 */	stb r3, 0x22(r1)
.L_814631FC:
/* 814631FC | 57 C4 08 3C */	slwi r4, r30, 1
/* 81463200 | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 81463204 | 7C 63 22 2E */	lhzx r3, r3, r4
/* 81463208 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146320C | 40 82 FF E0 */	bne .L_814631EC
/* 81463210 | 88 01 00 1F */	lbz r0, 0x1f(r1)
/* 81463214 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463218 | 40 82 00 10 */	bne .L_81463228
/* 8146321C | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 81463220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463224 | 41 82 00 0C */	beq .L_81463230
.L_81463228:
/* 81463228 | 38 60 00 01 */	li r3, 0x1
/* 8146322C | 98 61 00 22 */	stb r3, 0x22(r1)
.L_81463230:
/* 81463230 | 88 9F 00 14 */	lbz r4, 0x14(r31)
/* 81463234 | 54 80 08 3C */	slwi r0, r4, 1
/* 81463238 | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 8146323C | 7C 63 02 14 */	add r3, r3, r0
/* 81463240 | 88 81 00 22 */	lbz r4, 0x22(r1)
/* 81463244 | 7F A5 EB 78 */	mr r5, r29
/* 81463248 | 48 01 8B A9 */	bl Zi8IsDupWordW
/* 8146324C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81463250 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463254 | 40 82 01 38 */	bne .L_8146338C
/* 81463258 | 38 C0 00 00 */	li r6, 0x0
/* 8146325C | 88 BF 00 14 */	lbz r5, 0x14(r31)
/* 81463260 | 88 81 00 22 */	lbz r4, 0x22(r1)
/* 81463264 | 7C 05 22 14 */	add r0, r5, r4
/* 81463268 | 54 03 08 3C */	slwi r3, r0, 1
/* 8146326C | 38 81 00 B0 */	addi r4, r1, 0xb0
/* 81463270 | 7C C4 1B 2E */	sthx r6, r4, r3
.L_81463274:
/* 81463274 | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 81463278 | 28 03 00 05 */	cmplwi r3, 0x5
/* 8146327C | 40 82 00 20 */	bne .L_8146329C
/* 81463280 | 80 C1 00 7C */	lwz r6, 0x7c(r1)
/* 81463284 | 38 A6 00 01 */	addi r5, r6, 0x1
/* 81463288 | 90 A1 00 7C */	stw r5, 0x7c(r1)
/* 8146328C | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 81463290 | 7C 05 20 00 */	cmpw r5, r4
/* 81463294 | 40 80 18 3C */	bge .L_81464AD0
/* 81463298 | 48 00 00 F4 */	b .L_8146338C
.L_8146329C:
/* 8146329C | A0 01 00 52 */	lhz r0, 0x52(r1)
/* 814632A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814632A4 | 40 82 00 DC */	bne .L_81463380
/* 814632A8 | 80 61 00 7C */	lwz r3, 0x7c(r1)
/* 814632AC | 38 A3 00 01 */	addi r5, r3, 0x1
/* 814632B0 | 90 A1 00 7C */	stw r5, 0x7c(r1)
/* 814632B4 | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 814632B8 | 38 83 00 01 */	addi r4, r3, 0x1
/* 814632BC | 98 81 00 28 */	stb r4, 0x28(r1)
/* 814632C0 | 88 61 00 1D */	lbz r3, 0x1d(r1)
/* 814632C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814632C8 | 41 82 00 68 */	beq .L_81463330
/* 814632CC | 8B DF 00 14 */	lbz r30, 0x14(r31)
/* 814632D0 | 48 00 00 2C */	b .L_814632FC
.L_814632D4:
/* 814632D4 | 57 C0 08 3C */	slwi r0, r30, 1
/* 814632D8 | 38 C1 00 B0 */	addi r6, r1, 0xb0
/* 814632DC | 7C A6 02 2E */	lhzx r5, r6, r0
/* 814632E0 | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 814632E4 | 80 61 00 74 */	lwz r3, 0x74(r1)
/* 814632E8 | 54 67 08 3C */	slwi r7, r3, 1
/* 814632EC | 7C A4 3B 2E */	sthx r5, r4, r7
/* 814632F0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814632F4 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814632F8 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814632FC:
/* 814632FC | 57 C4 08 3C */	slwi r4, r30, 1
/* 81463300 | 38 C1 00 B0 */	addi r6, r1, 0xb0
/* 81463304 | 7C 66 22 2E */	lhzx r3, r6, r4
/* 81463308 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146330C | 40 82 FF C8 */	bne .L_814632D4
/* 81463310 | 38 00 00 20 */	li r0, 0x20
/* 81463314 | 80 A1 00 78 */	lwz r5, 0x78(r1)
/* 81463318 | 80 81 00 74 */	lwz r4, 0x74(r1)
/* 8146331C | 54 83 08 3C */	slwi r3, r4, 1
/* 81463320 | 7C 05 1B 2E */	sthx r0, r5, r3
/* 81463324 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81463328 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8146332C | 48 00 00 24 */	b .L_81463350
.L_81463330:
/* 81463330 | A0 61 00 46 */	lhz r3, 0x46(r1)
/* 81463334 | 80 C1 00 78 */	lwz r6, 0x78(r1)
/* 81463338 | 80 A1 00 74 */	lwz r5, 0x74(r1)
/* 8146333C | 7C A7 2B 78 */	mr r7, r5
/* 81463340 | 54 E4 08 3C */	slwi r4, r7, 1
/* 81463344 | 7C 66 23 2E */	sthx r3, r6, r4
/* 81463348 | 38 65 00 01 */	addi r3, r5, 0x1
/* 8146334C | 90 61 00 74 */	stw r3, 0x74(r1)
.L_81463350:
/* 81463350 | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 81463354 | 54 06 06 3E */	clrlwi r6, r0, 24
/* 81463358 | 88 BF 00 1C */	lbz r5, 0x1c(r31)
/* 8146335C | 7C 06 28 40 */	cmplw r6, r5
/* 81463360 | 40 80 00 14 */	bge .L_81463374
/* 81463364 | 80 61 00 74 */	lwz r3, 0x74(r1)
/* 81463368 | 80 01 00 70 */	lwz r0, 0x70(r1)
/* 8146336C | 7C 03 00 00 */	cmpw r3, r0
/* 81463370 | 40 81 00 1C */	ble .L_8146338C
.L_81463374:
/* 81463374 | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 81463378 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 8146337C | 48 00 17 54 */	b .L_81464AD0
.L_81463380:
/* 81463380 | A0 81 00 52 */	lhz r4, 0x52(r1)
/* 81463384 | 38 64 FF FF */	subi r3, r4, 0x1
/* 81463388 | B0 61 00 52 */	sth r3, 0x52(r1)
.L_8146338C:
/* 8146338C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81463390 | 88 9F 00 14 */	lbz r4, 0x14(r31)
/* 81463394 | 38 A0 00 01 */	li r5, 0x1
/* 81463398 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 8146339C | 38 C1 00 B0 */	addi r6, r1, 0xb0
/* 814633A0 | 38 E0 00 40 */	li r7, 0x40
/* 814633A4 | 54 E7 04 3E */	clrlwi r7, r7, 16
/* 814633A8 | 39 00 00 00 */	li r8, 0x0
/* 814633AC | 55 08 06 3E */	clrlwi r8, r8, 24
/* 814633B0 | 89 21 00 23 */	lbz r9, 0x23(r1)
/* 814633B4 | 7F AA EB 78 */	mr r10, r29
/* 814633B8 | 48 02 1A 45 */	bl Zi8MatchOEMdata
/* 814633BC | 54 64 06 3E */	clrlwi r4, r3, 24
/* 814633C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814633C4 | 40 82 FC 24 */	bne .L_81462FE8
.L_814633C8:
/* 814633C8 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 814633CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814633D0 | 41 82 00 10 */	beq .L_814633E0
/* 814633D4 | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 814633D8 | 28 03 00 05 */	cmplwi r3, 0x5
/* 814633DC | 40 82 04 1C */	bne .L_814637F8
.L_814633E0:
/* 814633E0 | 88 DF 00 14 */	lbz r6, 0x14(r31)
/* 814633E4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814633E8 | 41 82 04 10 */	beq .L_814637F8
/* 814633EC | 80 BF 00 10 */	lwz r5, 0x10(r31)
/* 814633F0 | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 814633F4 | 7F A4 EB 78 */	mr r4, r29
/* 814633F8 | 48 01 99 7D */	bl Zi8IsCharacter
/* 814633FC | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81463400 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81463404 | 41 82 03 F4 */	beq .L_814637F8
/* 81463408 | 38 60 00 00 */	li r3, 0x0
/* 8146340C | 98 61 00 23 */	stb r3, 0x23(r1)
/* 81463410 | 48 00 03 A8 */	b .L_814637B8
.L_81463414:
/* 81463414 | 38 60 00 01 */	li r3, 0x1
/* 81463418 | 98 61 00 23 */	stb r3, 0x23(r1)
/* 8146341C | 38 80 00 00 */	li r4, 0x0
/* 81463420 | 57 C0 08 3C */	slwi r0, r30, 1
/* 81463424 | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 81463428 | 7C 83 03 2E */	sthx r4, r3, r0
/* 8146342C | 88 BF 00 14 */	lbz r5, 0x14(r31)
/* 81463430 | 54 A3 08 3C */	slwi r3, r5, 1
/* 81463434 | 38 81 00 B0 */	addi r4, r1, 0xb0
/* 81463438 | 7C 04 1A 2E */	lhzx r0, r4, r3
/* 8146343C | B0 01 00 46 */	sth r0, 0x46(r1)
/* 81463440 | A0 C1 00 46 */	lhz r6, 0x46(r1)
/* 81463444 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 81463448 | A0 81 00 4C */	lhz r4, 0x4c(r1)
/* 8146344C | 7C 05 20 40 */	cmplw r5, r4
/* 81463450 | 41 82 03 68 */	beq .L_814637B8
/* 81463454 | A0 61 00 46 */	lhz r3, 0x46(r1)
/* 81463458 | B0 61 00 4C */	sth r3, 0x4c(r1)
/* 8146345C | A0 61 00 46 */	lhz r3, 0x46(r1)
/* 81463460 | 7F A4 EB 78 */	mr r4, r29
/* 81463464 | 48 01 BF 31 */	bl Zi8Uni2Ord
/* 81463468 | B0 61 00 48 */	sth r3, 0x48(r1)
/* 8146346C | 80 A1 00 9C */	lwz r5, 0x9c(r1)
/* 81463470 | A0 81 00 48 */	lhz r4, 0x48(r1)
/* 81463474 | 1C 64 00 0C */	mulli r3, r4, 0xc
/* 81463478 | 7C 05 1A 14 */	add r0, r5, r3
/* 8146347C | 90 01 00 88 */	stw r0, 0x88(r1)
/* 81463480 | 38 00 00 00 */	li r0, 0x0
/* 81463484 | 98 01 00 24 */	stb r0, 0x24(r1)
/* 81463488 | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 8146348C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463490 | 41 82 00 48 */	beq .L_814634D8
/* 81463494 | 3B C0 00 00 */	li r30, 0x0
/* 81463498 | 48 00 00 38 */	b .L_814634D0
.L_8146349C:
/* 8146349C | 38 61 00 84 */	addi r3, r1, 0x84
/* 814634A0 | 7C C3 F0 AE */	lbzx r6, r3, r30
/* 814634A4 | 38 61 00 80 */	addi r3, r1, 0x80
/* 814634A8 | 7C 03 F0 AE */	lbzx r0, r3, r30
/* 814634AC | 80 A1 00 88 */	lwz r5, 0x88(r1)
/* 814634B0 | 7C 85 F0 AE */	lbzx r4, r5, r30
/* 814634B4 | 7C 03 20 38 */	and r3, r0, r4
/* 814634B8 | 7C 06 18 00 */	cmpw r6, r3
/* 814634BC | 41 82 00 10 */	beq .L_814634CC
/* 814634C0 | 38 60 00 01 */	li r3, 0x1
/* 814634C4 | 98 61 00 24 */	stb r3, 0x24(r1)
/* 814634C8 | 48 00 00 10 */	b .L_814634D8
.L_814634CC:
/* 814634CC | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814634D0:
/* 814634D0 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 814634D4 | 41 80 FF C8 */	blt .L_8146349C
.L_814634D8:
/* 814634D8 | 88 61 00 24 */	lbz r3, 0x24(r1)
/* 814634DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814634E0 | 40 82 02 D8 */	bne .L_814637B8
/* 814634E4 | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 814634E8 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 814634EC | 48 01 B9 DD */	bl Zi8GetPCode
/* 814634F0 | 7C 60 1B 78 */	mr r0, r3
/* 814634F4 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 814634F8 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 814634FC | 54 05 04 3E */	clrlwi r5, r0, 16
/* 81463500 | 88 C1 00 27 */	lbz r6, 0x27(r1)
/* 81463504 | 88 E1 00 2B */	lbz r7, 0x2b(r1)
/* 81463508 | 89 01 00 26 */	lbz r8, 0x26(r1)
/* 8146350C | 4B FF CD 4D */	bl Zi8IsMatch1Key
/* 81463510 | 98 61 00 2A */	stb r3, 0x2a(r1)
/* 81463514 | 88 C1 00 2A */	lbz r6, 0x2a(r1)
/* 81463518 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146351C | 40 82 00 64 */	bne .L_81463580
/* 81463520 | 88 A1 00 20 */	lbz r5, 0x20(r1)
/* 81463524 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81463528 | 40 82 00 58 */	bne .L_81463580
/* 8146352C | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81463530 | 88 84 00 00 */	lbz r4, 0x0(r4)
/* 81463534 | 54 80 06 30 */	rlwinm r0, r4, 0, 24, 24
/* 81463538 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146353C | 41 82 00 44 */	beq .L_81463580
/* 81463540 | 88 61 00 26 */	lbz r3, 0x26(r1)
/* 81463544 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81463548 | 88 C1 00 2F */	lbz r6, 0x2f(r1)
/* 8146354C | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 81463550 | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 81463554 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81463558 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 8146355C | 88 A1 00 27 */	lbz r5, 0x27(r1)
/* 81463560 | 80 C1 00 98 */	lwz r6, 0x98(r1)
/* 81463564 | A0 E1 00 54 */	lhz r7, 0x54(r1)
/* 81463568 | 81 01 00 8C */	lwz r8, 0x8c(r1)
/* 8146356C | A1 21 00 48 */	lhz r9, 0x48(r1)
/* 81463570 | 89 41 00 2B */	lbz r10, 0x2b(r1)
/* 81463574 | 4B FF CE 69 */	bl MatchAltSound1Key
/* 81463578 | 7C 65 1B 78 */	mr r5, r3
/* 8146357C | 98 A1 00 2A */	stb r5, 0x2a(r1)
.L_81463580:
/* 81463580 | 88 A1 00 2A */	lbz r5, 0x2a(r1)
/* 81463584 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81463588 | 41 82 02 30 */	beq .L_814637B8
/* 8146358C | 88 C1 00 1D */	lbz r6, 0x1d(r1)
/* 81463590 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81463594 | 40 82 00 74 */	bne .L_81463608
/* 81463598 | 88 81 00 25 */	lbz r4, 0x25(r1)
/* 8146359C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814635A0 | 41 82 00 24 */	beq .L_814635C4
/* 814635A4 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 814635A8 | A0 81 00 48 */	lhz r4, 0x48(r1)
/* 814635AC | 7F A5 EB 78 */	mr r5, r29
/* 814635B0 | 4B FF D3 81 */	bl Zi8SetFindCand
/* 814635B4 | 7C 65 1B 78 */	mr r5, r3
/* 814635B8 | 54 A0 06 3E */	clrlwi r0, r5, 24
/* 814635BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814635C0 | 40 82 01 F8 */	bne .L_814637B8
.L_814635C4:
/* 814635C4 | 3B C0 00 00 */	li r30, 0x0
/* 814635C8 | 48 00 00 24 */	b .L_814635EC
.L_814635CC:
/* 814635CC | A0 A1 00 46 */	lhz r5, 0x46(r1)
/* 814635D0 | 54 A3 04 3E */	clrlwi r3, r5, 16
/* 814635D4 | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 814635D8 | 57 C0 08 3C */	slwi r0, r30, 1
/* 814635DC | 7C 84 02 2E */	lhzx r4, r4, r0
/* 814635E0 | 7C 03 20 40 */	cmplw r3, r4
/* 814635E4 | 41 82 00 14 */	beq .L_814635F8
/* 814635E8 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814635EC:
/* 814635EC | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 814635F0 | 7C 1E 18 00 */	cmpw r30, r3
/* 814635F4 | 41 80 FF D8 */	blt .L_814635CC
.L_814635F8:
/* 814635F8 | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 814635FC | 7C 1E 00 00 */	cmpw r30, r0
/* 81463600 | 41 80 01 B8 */	blt .L_814637B8
/* 81463604 | 48 00 00 9C */	b .L_814636A0
.L_81463608:
/* 81463608 | 38 80 00 00 */	li r4, 0x0
/* 8146360C | 98 81 00 22 */	stb r4, 0x22(r1)
/* 81463610 | 8B DF 00 14 */	lbz r30, 0x14(r31)
/* 81463614 | 48 00 00 14 */	b .L_81463628
.L_81463618:
/* 81463618 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8146361C | 88 61 00 22 */	lbz r3, 0x22(r1)
/* 81463620 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81463624 | 98 01 00 22 */	stb r0, 0x22(r1)
.L_81463628:
/* 81463628 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8146362C | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 81463630 | 7C A3 02 2E */	lhzx r5, r3, r0
/* 81463634 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81463638 | 40 82 FF E0 */	bne .L_81463618
/* 8146363C | 88 81 00 1F */	lbz r4, 0x1f(r1)
/* 81463640 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81463644 | 40 82 00 10 */	bne .L_81463654
/* 81463648 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 8146364C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81463650 | 41 82 00 0C */	beq .L_8146365C
.L_81463654:
/* 81463654 | 38 60 00 01 */	li r3, 0x1
/* 81463658 | 98 61 00 22 */	stb r3, 0x22(r1)
.L_8146365C:
/* 8146365C | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 81463660 | 54 00 08 3C */	slwi r0, r0, 1
/* 81463664 | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 81463668 | 7C 63 02 14 */	add r3, r3, r0
/* 8146366C | 88 81 00 22 */	lbz r4, 0x22(r1)
/* 81463670 | 7F A5 EB 78 */	mr r5, r29
/* 81463674 | 48 01 87 7D */	bl Zi8IsDupWordW
/* 81463678 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8146367C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463680 | 40 82 01 38 */	bne .L_814637B8
/* 81463684 | 38 60 00 00 */	li r3, 0x0
/* 81463688 | 88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8146368C | 88 01 00 22 */	lbz r0, 0x22(r1)
/* 81463690 | 7C 84 02 14 */	add r4, r4, r0
/* 81463694 | 54 84 08 3C */	slwi r4, r4, 1
/* 81463698 | 38 C1 00 B0 */	addi r6, r1, 0xb0
/* 8146369C | 7C 66 23 2E */	sthx r3, r6, r4
.L_814636A0:
/* 814636A0 | 88 A1 00 21 */	lbz r5, 0x21(r1)
/* 814636A4 | 28 05 00 05 */	cmplwi r5, 0x5
/* 814636A8 | 40 82 00 20 */	bne .L_814636C8
/* 814636AC | 80 81 00 7C */	lwz r4, 0x7c(r1)
/* 814636B0 | 38 64 00 01 */	addi r3, r4, 0x1
/* 814636B4 | 90 61 00 7C */	stw r3, 0x7c(r1)
/* 814636B8 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 814636BC | 7C 03 00 00 */	cmpw r3, r0
/* 814636C0 | 40 80 14 10 */	bge .L_81464AD0
/* 814636C4 | 48 00 00 F4 */	b .L_814637B8
.L_814636C8:
/* 814636C8 | A0 01 00 52 */	lhz r0, 0x52(r1)
/* 814636CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814636D0 | 40 82 00 DC */	bne .L_814637AC
/* 814636D4 | 80 61 00 7C */	lwz r3, 0x7c(r1)
/* 814636D8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814636DC | 90 01 00 7C */	stw r0, 0x7c(r1)
/* 814636E0 | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 814636E4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814636E8 | 98 61 00 28 */	stb r3, 0x28(r1)
/* 814636EC | 88 81 00 1D */	lbz r4, 0x1d(r1)
/* 814636F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814636F4 | 41 82 00 6C */	beq .L_81463760
/* 814636F8 | 8B DF 00 14 */	lbz r30, 0x14(r31)
/* 814636FC | 48 00 00 2C */	b .L_81463728
.L_81463700:
/* 81463700 | 57 C6 08 3C */	slwi r6, r30, 1
/* 81463704 | 38 A1 00 B0 */	addi r5, r1, 0xb0
/* 81463708 | 7C 05 32 2E */	lhzx r0, r5, r6
/* 8146370C | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 81463710 | 80 61 00 74 */	lwz r3, 0x74(r1)
/* 81463714 | 54 68 08 3C */	slwi r8, r3, 1
/* 81463718 | 7C 04 43 2E */	sthx r0, r4, r8
/* 8146371C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81463720 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81463724 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81463728:
/* 81463728 | 57 C7 08 3C */	slwi r7, r30, 1
/* 8146372C | 38 81 00 B0 */	addi r4, r1, 0xb0
/* 81463730 | 7C 64 3A 2E */	lhzx r3, r4, r7
/* 81463734 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463738 | 40 82 FF C8 */	bne .L_81463700
/* 8146373C | 38 00 00 20 */	li r0, 0x20
/* 81463740 | 80 C1 00 78 */	lwz r6, 0x78(r1)
/* 81463744 | 80 A1 00 74 */	lwz r5, 0x74(r1)
/* 81463748 | 7C A4 2B 78 */	mr r4, r5
/* 8146374C | 54 84 08 3C */	slwi r4, r4, 1
/* 81463750 | 7C 06 23 2E */	sthx r0, r6, r4
/* 81463754 | 38 05 00 01 */	addi r0, r5, 0x1
/* 81463758 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8146375C | 48 00 00 20 */	b .L_8146377C
.L_81463760:
/* 81463760 | A0 A1 00 46 */	lhz r5, 0x46(r1)
/* 81463764 | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 81463768 | 80 61 00 74 */	lwz r3, 0x74(r1)
/* 8146376C | 54 60 08 3C */	slwi r0, r3, 1
/* 81463770 | 7C A4 03 2E */	sthx r5, r4, r0
/* 81463774 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81463778 | 90 61 00 74 */	stw r3, 0x74(r1)
.L_8146377C:
/* 8146377C | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 81463780 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81463784 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 81463788 | 7C 03 00 40 */	cmplw r3, r0
/* 8146378C | 40 80 00 14 */	bge .L_814637A0
/* 81463790 | 80 61 00 74 */	lwz r3, 0x74(r1)
/* 81463794 | 80 A1 00 70 */	lwz r5, 0x70(r1)
/* 81463798 | 7C 03 28 00 */	cmpw r3, r5
/* 8146379C | 40 81 00 1C */	ble .L_814637B8
.L_814637A0:
/* 814637A0 | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 814637A4 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 814637A8 | 48 00 13 28 */	b .L_81464AD0
.L_814637AC:
/* 814637AC | A0 81 00 52 */	lhz r4, 0x52(r1)
/* 814637B0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814637B4 | B0 01 00 52 */	sth r0, 0x52(r1)
.L_814637B8:
/* 814637B8 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814637BC | 88 9F 00 14 */	lbz r4, 0x14(r31)
/* 814637C0 | 38 A0 00 01 */	li r5, 0x1
/* 814637C4 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 814637C8 | 38 C1 00 B0 */	addi r6, r1, 0xb0
/* 814637CC | 38 E0 00 40 */	li r7, 0x40
/* 814637D0 | 54 E7 04 3E */	clrlwi r7, r7, 16
/* 814637D4 | 39 00 00 00 */	li r8, 0x0
/* 814637D8 | 55 08 06 3E */	clrlwi r8, r8, 24
/* 814637DC | 89 21 00 23 */	lbz r9, 0x23(r1)
/* 814637E0 | 7F AA EB 78 */	mr r10, r29
/* 814637E4 | 48 01 C4 D1 */	bl Zi8MatchPUDdata
/* 814637E8 | 7C 64 1B 78 */	mr r4, r3
/* 814637EC | 54 9E 06 3E */	clrlwi r30, r4, 24
/* 814637F0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814637F4 | 40 82 FC 20 */	bne .L_81463414
.L_814637F8:
/* 814637F8 | 88 7C 00 00 */	lbz r3, 0x0(r28)
/* 814637FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463800 | 41 82 00 10 */	beq .L_81463810
/* 81463804 | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 81463808 | 28 03 00 05 */	cmplwi r3, 0x5
/* 8146380C | 40 82 07 D0 */	bne .L_81463FDC
.L_81463810:
/* 81463810 | A0 61 00 4E */	lhz r3, 0x4e(r1)
/* 81463814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463818 | 40 82 07 C4 */	bne .L_81463FDC
/* 8146381C | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 81463820 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463824 | 41 82 07 B8 */	beq .L_81463FDC
/* 81463828 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8146382C | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 81463830 | 7F A4 EB 78 */	mr r4, r29
/* 81463834 | 48 01 95 41 */	bl Zi8IsCharacter
/* 81463838 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146383C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463840 | 41 82 07 9C */	beq .L_81463FDC
/* 81463844 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81463848 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 8146384C | 7F A4 EB 78 */	mr r4, r29
/* 81463850 | 48 01 BB 45 */	bl Zi8Uni2Ord
/* 81463854 | B0 61 00 40 */	sth r3, 0x40(r1)
/* 81463858 | A0 A1 00 40 */	lhz r5, 0x40(r1)
/* 8146385C | 28 05 FF FF */	cmplwi r5, 0xffff
/* 81463860 | 41 82 07 90 */	beq .L_81463FF0
/* 81463864 | 80 81 00 9C */	lwz r4, 0x9c(r1)
/* 81463868 | A0 01 00 40 */	lhz r0, 0x40(r1)
/* 8146386C | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 81463870 | 7C 04 02 14 */	add r0, r4, r0
/* 81463874 | 90 01 00 88 */	stw r0, 0x88(r1)
/* 81463878 | 38 60 00 01 */	li r3, 0x1
/* 8146387C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81463880 | 38 80 00 01 */	li r4, 0x1
/* 81463884 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81463888 | 7F A5 EB 78 */	mr r5, r29
/* 8146388C | 4B FF BB 25 */	bl Zi8GetTableAddress
/* 81463890 | 90 61 00 6C */	stw r3, 0x6c(r1)
/* 81463894 | 80 E1 00 6C */	lwz r7, 0x6c(r1)
/* 81463898 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 8146389C | 88 04 00 09 */	lbz r0, 0x9(r4)
/* 814638A0 | 54 04 07 3E */	clrlwi r4, r0, 28
/* 814638A4 | 54 86 80 1E */	slwi r6, r4, 16
/* 814638A8 | 80 A1 00 88 */	lwz r5, 0x88(r1)
/* 814638AC | 88 85 00 0B */	lbz r4, 0xb(r5)
/* 814638B0 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 814638B4 | 88 A3 00 0A */	lbz r5, 0xa(r3)
/* 814638B8 | 54 A3 40 2E */	slwi r3, r5, 8
/* 814638BC | 7C 80 1B 78 */	or r0, r4, r3
/* 814638C0 | 7C C4 03 78 */	or r4, r6, r0
/* 814638C4 | 7C 67 22 14 */	add r3, r7, r4
/* 814638C8 | 90 61 00 6C */	stw r3, 0x6c(r1)
/* 814638CC | 88 BD 00 16 */	lbz r5, 0x16(r29)
/* 814638D0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814638D4 | 41 82 00 68 */	beq .L_8146393C
/* 814638D8 | 80 81 00 6C */	lwz r4, 0x6c(r1)
/* 814638DC | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814638E0 | 54 63 07 7E */	clrlwi r3, r3, 29
/* 814638E4 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 814638E8 | 41 82 00 38 */	beq .L_81463920
/* 814638EC | 40 80 00 44 */	bge .L_81463930
/* 814638F0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814638F4 | 41 82 00 0C */	beq .L_81463900
/* 814638F8 | 40 80 00 18 */	bge .L_81463910
/* 814638FC | 48 00 00 34 */	b .L_81463930
.L_81463900:
/* 81463900 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 81463904 | 38 03 00 02 */	addi r0, r3, 0x2
/* 81463908 | 90 01 00 6C */	stw r0, 0x6c(r1)
/* 8146390C | 48 00 00 30 */	b .L_8146393C
.L_81463910:
/* 81463910 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 81463914 | 38 C3 00 03 */	addi r6, r3, 0x3
/* 81463918 | 90 C1 00 6C */	stw r6, 0x6c(r1)
/* 8146391C | 48 00 00 20 */	b .L_8146393C
.L_81463920:
/* 81463920 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 81463924 | 38 A3 00 04 */	addi r5, r3, 0x4
/* 81463928 | 90 A1 00 6C */	stw r5, 0x6c(r1)
/* 8146392C | 48 00 00 10 */	b .L_8146393C
.L_81463930:
/* 81463930 | 80 81 00 6C */	lwz r4, 0x6c(r1)
/* 81463934 | 38 A4 00 01 */	addi r5, r4, 0x1
/* 81463938 | 90 A1 00 6C */	stw r5, 0x6c(r1)
.L_8146393C:
/* 8146393C | 80 81 00 6C */	lwz r4, 0x6c(r1)
/* 81463940 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 81463944 | 54 63 06 30 */	rlwinm r3, r3, 0, 24, 24
/* 81463948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146394C | 41 82 00 30 */	beq .L_8146397C
/* 81463950 | 38 00 00 00 */	li r0, 0x0
/* 81463954 | 98 01 00 1A */	stb r0, 0x1a(r1)
/* 81463958 | 80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 8146395C | 80 81 00 6C */	lwz r4, 0x6c(r1)
/* 81463960 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 81463964 | 54 63 06 7E */	clrlwi r3, r3, 25
/* 81463968 | 7C 64 26 70 */	srawi r4, r3, 4
/* 8146396C | 7C 64 2A 14 */	add r3, r4, r5
/* 81463970 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81463974 | 90 61 00 6C */	stw r3, 0x6c(r1)
/* 81463978 | 48 00 06 54 */	b .L_81463FCC
.L_8146397C:
/* 8146397C | 38 00 00 80 */	li r0, 0x80
/* 81463980 | 98 01 00 1A */	stb r0, 0x1a(r1)
/* 81463984 | 48 00 06 48 */	b .L_81463FCC
.L_81463988:
/* 81463988 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8146398C | 38 83 00 01 */	addi r4, r3, 0x1
/* 81463990 | 90 81 00 6C */	stw r4, 0x6c(r1)
/* 81463994 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81463998 | 98 01 00 1A */	stb r0, 0x1a(r1)
/* 8146399C | 88 61 00 1A */	lbz r3, 0x1a(r1)
/* 814639A0 | 54 60 07 3E */	clrlwi r0, r3, 28
/* 814639A4 | 54 06 06 3E */	clrlwi r6, r0, 24
/* 814639A8 | 98 C1 00 19 */	stb r6, 0x19(r1)
/* 814639AC | 88 A1 00 1A */	lbz r5, 0x1a(r1)
/* 814639B0 | 88 81 00 2F */	lbz r4, 0x2f(r1)
/* 814639B4 | 7C A0 20 38 */	and r0, r5, r4
/* 814639B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814639BC | 40 82 06 04 */	bne .L_81463FC0
/* 814639C0 | 48 00 00 4C */	b .L_81463A0C
.L_814639C4:
/* 814639C4 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 814639C8 | 38 83 00 01 */	addi r4, r3, 0x1
/* 814639CC | 90 81 00 6C */	stw r4, 0x6c(r1)
/* 814639D0 | 48 00 00 10 */	b .L_814639E0
.L_814639D4:
/* 814639D4 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 814639D8 | 38 C3 00 02 */	addi r6, r3, 0x2
/* 814639DC | 90 C1 00 6C */	stw r6, 0x6c(r1)
.L_814639E0:
/* 814639E0 | 80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 814639E4 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 814639E8 | 54 80 06 30 */	rlwinm r0, r4, 0, 24, 24
/* 814639EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814639F0 | 41 82 FF E4 */	beq .L_814639D4
/* 814639F4 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 814639F8 | 38 A3 00 01 */	addi r5, r3, 0x1
/* 814639FC | 90 A1 00 6C */	stw r5, 0x6c(r1)
/* 81463A00 | 88 61 00 19 */	lbz r3, 0x19(r1)
/* 81463A04 | 38 83 FF FF */	subi r4, r3, 0x1
/* 81463A08 | 98 81 00 19 */	stb r4, 0x19(r1)
.L_81463A0C:
/* 81463A0C | 88 61 00 19 */	lbz r3, 0x19(r1)
/* 81463A10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463A14 | 40 82 FF B0 */	bne .L_814639C4
/* 81463A18 | 48 00 05 A8 */	b .L_81463FC0
.L_81463A1C:
/* 81463A1C | 38 00 00 00 */	li r0, 0x0
/* 81463A20 | B0 01 00 3C */	sth r0, 0x3c(r1)
/* 81463A24 | 80 DF 00 10 */	lwz r6, 0x10(r31)
/* 81463A28 | 90 C1 00 68 */	stw r6, 0x68(r1)
/* 81463A2C | 88 BF 00 14 */	lbz r5, 0x14(r31)
/* 81463A30 | 38 85 FF FF */	subi r4, r5, 0x1
/* 81463A34 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81463A38 | 98 61 00 18 */	stb r3, 0x18(r1)
/* 81463A3C | 48 00 00 78 */	b .L_81463AB4
.L_81463A40:
/* 81463A40 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 81463A44 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81463A48 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 81463A4C | 54 E4 40 2E */	slwi r4, r7, 8
/* 81463A50 | 80 C1 00 6C */	lwz r6, 0x6c(r1)
/* 81463A54 | 88 66 00 00 */	lbz r3, 0x0(r6)
/* 81463A58 | 7C 80 1B 78 */	or r0, r4, r3
/* 81463A5C | 54 05 04 3E */	clrlwi r5, r0, 16
/* 81463A60 | B0 A1 00 3C */	sth r5, 0x3c(r1)
/* 81463A64 | 80 81 00 6C */	lwz r4, 0x6c(r1)
/* 81463A68 | 38 84 00 02 */	addi r4, r4, 0x2
/* 81463A6C | 90 81 00 6C */	stw r4, 0x6c(r1)
/* 81463A70 | A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 81463A74 | 54 03 04 20 */	rlwinm r3, r0, 0, 16, 16
/* 81463A78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463A7C | 40 82 00 44 */	bne .L_81463AC0
/* 81463A80 | A0 61 00 3C */	lhz r3, 0x3c(r1)
/* 81463A84 | 7F A4 EB 78 */	mr r4, r29
/* 81463A88 | 48 01 B9 41 */	bl Zi8Ord2Uni
/* 81463A8C | 54 66 04 3E */	clrlwi r6, r3, 16
/* 81463A90 | 80 A1 00 68 */	lwz r5, 0x68(r1)
/* 81463A94 | 38 E5 00 02 */	addi r7, r5, 0x2
/* 81463A98 | 90 E1 00 68 */	stw r7, 0x68(r1)
/* 81463A9C | A0 67 00 00 */	lhz r3, 0x0(r7)
/* 81463AA0 | 7C 03 30 40 */	cmplw r3, r6
/* 81463AA4 | 40 82 00 1C */	bne .L_81463AC0
/* 81463AA8 | 88 81 00 18 */	lbz r4, 0x18(r1)
/* 81463AAC | 38 04 FF FF */	subi r0, r4, 0x1
/* 81463AB0 | 98 01 00 18 */	stb r0, 0x18(r1)
.L_81463AB4:
/* 81463AB4 | 88 C1 00 18 */	lbz r6, 0x18(r1)
/* 81463AB8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81463ABC | 40 82 FF 84 */	bne .L_81463A40
.L_81463AC0:
/* 81463AC0 | 88 A1 00 18 */	lbz r5, 0x18(r1)
/* 81463AC4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81463AC8 | 40 82 04 A0 */	bne .L_81463F68
/* 81463ACC | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 81463AD0 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81463AD4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81463AD8 | 54 04 40 2E */	slwi r4, r0, 8
/* 81463ADC | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 81463AE0 | 88 63 00 00 */	lbz r3, 0x0(r3)
/* 81463AE4 | 7C 84 1B 78 */	or r4, r4, r3
/* 81463AE8 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 81463AEC | B0 01 00 3C */	sth r0, 0x3c(r1)
/* 81463AF0 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 81463AF4 | 90 61 00 64 */	stw r3, 0x64(r1)
/* 81463AF8 | 80 C1 00 6C */	lwz r6, 0x6c(r1)
/* 81463AFC | 38 A6 00 02 */	addi r5, r6, 0x2
/* 81463B00 | 90 A1 00 6C */	stw r5, 0x6c(r1)
/* 81463B04 | 80 61 00 90 */	lwz r3, 0x90(r1)
/* 81463B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463B0C | 41 82 00 84 */	beq .L_81463B90
/* 81463B10 | 3B C0 00 00 */	li r30, 0x0
.L_81463B14:
/* 81463B14 | 80 81 00 64 */	lwz r4, 0x64(r1)
/* 81463B18 | 7C 7E 22 14 */	add r3, r30, r4
/* 81463B1C | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 81463B20 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81463B24 | 54 80 40 2E */	slwi r0, r4, 8
/* 81463B28 | 80 61 00 64 */	lwz r3, 0x64(r1)
/* 81463B2C | 7C A3 F0 AE */	lbzx r5, r3, r30
/* 81463B30 | 7C 03 2B 78 */	or r3, r0, r5
/* 81463B34 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81463B38 | B0 81 00 3E */	sth r4, 0x3e(r1)
/* 81463B3C | 88 01 00 2E */	lbz r0, 0x2e(r1)
/* 81463B40 | 80 C1 00 90 */	lwz r6, 0x90(r1)
/* 81463B44 | A0 A1 00 3E */	lhz r5, 0x3e(r1)
/* 81463B48 | 54 A4 04 7E */	clrlwi r4, r5, 17
/* 81463B4C | 7C 66 20 AE */	lbzx r3, r6, r4
/* 81463B50 | 7C 03 18 38 */	and r3, r0, r3
/* 81463B54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463B58 | 40 82 00 10 */	bne .L_81463B68
/* 81463B5C | 38 A0 00 00 */	li r5, 0x0
/* 81463B60 | B0 A1 00 3E */	sth r5, 0x3e(r1)
/* 81463B64 | 48 00 00 1C */	b .L_81463B80
.L_81463B68:
/* 81463B68 | A0 81 00 3E */	lhz r4, 0x3e(r1)
/* 81463B6C | 54 83 04 20 */	rlwinm r3, r4, 0, 16, 16
/* 81463B70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463B74 | 40 82 00 0C */	bne .L_81463B80
/* 81463B78 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 81463B7C | 4B FF FF 98 */	b .L_81463B14
.L_81463B80:
/* 81463B80 | A0 01 00 3E */	lhz r0, 0x3e(r1)
/* 81463B84 | 54 00 04 20 */	rlwinm r0, r0, 0, 16, 16
/* 81463B88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463B8C | 41 82 03 DC */	beq .L_81463F68
.L_81463B90:
/* 81463B90 | A0 61 00 3C */	lhz r3, 0x3c(r1)
/* 81463B94 | 54 63 04 7E */	clrlwi r3, r3, 17
/* 81463B98 | 54 66 04 3E */	clrlwi r6, r3, 16
/* 81463B9C | B0 C1 00 3E */	sth r6, 0x3e(r1)
/* 81463BA0 | A0 61 00 3E */	lhz r3, 0x3e(r1)
/* 81463BA4 | 7F A4 EB 78 */	mr r4, r29
/* 81463BA8 | 48 01 B8 21 */	bl Zi8Ord2Uni
/* 81463BAC | B0 61 00 40 */	sth r3, 0x40(r1)
/* 81463BB0 | 80 01 00 9C */	lwz r0, 0x9c(r1)
/* 81463BB4 | A0 A1 00 3E */	lhz r5, 0x3e(r1)
/* 81463BB8 | 1C 85 00 0C */	mulli r4, r5, 0xc
/* 81463BBC | 7C 60 22 14 */	add r3, r0, r4
/* 81463BC0 | 90 61 00 88 */	stw r3, 0x88(r1)
/* 81463BC4 | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81463BC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463BCC | 41 82 00 3C */	beq .L_81463C08
/* 81463BD0 | 3B C0 00 00 */	li r30, 0x0
/* 81463BD4 | 48 00 00 2C */	b .L_81463C00
.L_81463BD8:
/* 81463BD8 | 38 61 00 84 */	addi r3, r1, 0x84
/* 81463BDC | 7C 03 F0 AE */	lbzx r0, r3, r30
/* 81463BE0 | 38 61 00 80 */	addi r3, r1, 0x80
/* 81463BE4 | 7C C3 F0 AE */	lbzx r6, r3, r30
/* 81463BE8 | 80 A1 00 88 */	lwz r5, 0x88(r1)
/* 81463BEC | 7C 85 F0 AE */	lbzx r4, r5, r30
/* 81463BF0 | 7C C4 20 38 */	and r4, r6, r4
/* 81463BF4 | 7C 00 20 00 */	cmpw r0, r4
/* 81463BF8 | 40 82 03 70 */	bne .L_81463F68
/* 81463BFC | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81463C00:
/* 81463C00 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 81463C04 | 41 80 FF D4 */	blt .L_81463BD8
.L_81463C08:
/* 81463C08 | 38 00 00 00 */	li r0, 0x0
/* 81463C0C | 98 01 00 24 */	stb r0, 0x24(r1)
/* 81463C10 | 88 7D 11 FA */	lbz r3, 0x11fa(r29)
/* 81463C14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463C18 | 41 82 00 50 */	beq .L_81463C68
/* 81463C1C | 80 C1 00 88 */	lwz r6, 0x88(r1)
/* 81463C20 | 88 A6 00 08 */	lbz r5, 0x8(r6)
/* 81463C24 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 81463C28 | 54 A6 08 3C */	slwi r6, r5, 1
/* 81463C2C | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81463C30 | 88 A4 00 09 */	lbz r5, 0x9(r4)
/* 81463C34 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 81463C38 | 54 05 06 30 */	rlwinm r5, r0, 0, 24, 24
/* 81463C3C | 7C A3 3E 70 */	srawi r3, r5, 7
/* 81463C40 | 7C C4 1B 78 */	or r4, r6, r3
/* 81463C44 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 81463C48 | B0 01 00 4A */	sth r0, 0x4a(r1)
/* 81463C4C | A0 81 00 4A */	lhz r4, 0x4a(r1)
/* 81463C50 | 7C 7D 22 14 */	add r3, r29, r4
/* 81463C54 | 88 03 0F FA */	lbz r0, 0xffa(r3)
/* 81463C58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463C5C | 40 82 00 0C */	bne .L_81463C68
/* 81463C60 | 38 80 00 01 */	li r4, 0x1
/* 81463C64 | 98 81 00 24 */	stb r4, 0x24(r1)
.L_81463C68:
/* 81463C68 | 88 61 00 24 */	lbz r3, 0x24(r1)
/* 81463C6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463C70 | 40 82 00 38 */	bne .L_81463CA8
/* 81463C74 | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 81463C78 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81463C7C | 48 01 B2 4D */	bl Zi8GetPCode
/* 81463C80 | 7C 60 1B 78 */	mr r0, r3
/* 81463C84 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81463C88 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 81463C8C | 54 05 04 3E */	clrlwi r5, r0, 16
/* 81463C90 | 88 C1 00 27 */	lbz r6, 0x27(r1)
/* 81463C94 | 88 E1 00 2B */	lbz r7, 0x2b(r1)
/* 81463C98 | 89 01 00 26 */	lbz r8, 0x26(r1)
/* 81463C9C | 4B FF C5 BD */	bl Zi8IsMatch1Key
/* 81463CA0 | 98 61 00 2A */	stb r3, 0x2a(r1)
/* 81463CA4 | 48 00 00 0C */	b .L_81463CB0
.L_81463CA8:
/* 81463CA8 | 38 00 00 00 */	li r0, 0x0
/* 81463CAC | 98 01 00 2A */	stb r0, 0x2a(r1)
.L_81463CB0:
/* 81463CB0 | 88 61 00 2A */	lbz r3, 0x2a(r1)
/* 81463CB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463CB8 | 40 82 00 60 */	bne .L_81463D18
/* 81463CBC | 88 A1 00 20 */	lbz r5, 0x20(r1)
/* 81463CC0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81463CC4 | 40 82 00 54 */	bne .L_81463D18
/* 81463CC8 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81463CCC | 88 84 00 00 */	lbz r4, 0x0(r4)
/* 81463CD0 | 54 83 06 30 */	rlwinm r3, r4, 0, 24, 24
/* 81463CD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463CD8 | 41 82 00 40 */	beq .L_81463D18
/* 81463CDC | 88 01 00 26 */	lbz r0, 0x26(r1)
/* 81463CE0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81463CE4 | 88 01 00 2F */	lbz r0, 0x2f(r1)
/* 81463CE8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81463CEC | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 81463CF0 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81463CF4 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 81463CF8 | 88 A1 00 27 */	lbz r5, 0x27(r1)
/* 81463CFC | 80 C1 00 98 */	lwz r6, 0x98(r1)
/* 81463D00 | A0 E1 00 54 */	lhz r7, 0x54(r1)
/* 81463D04 | 81 01 00 8C */	lwz r8, 0x8c(r1)
/* 81463D08 | A1 21 00 3E */	lhz r9, 0x3e(r1)
/* 81463D0C | 89 41 00 2B */	lbz r10, 0x2b(r1)
/* 81463D10 | 4B FF C6 CD */	bl MatchAltSound1Key
/* 81463D14 | 98 61 00 2A */	stb r3, 0x2a(r1)
.L_81463D18:
/* 81463D18 | 88 01 00 2A */	lbz r0, 0x2a(r1)
/* 81463D1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463D20 | 41 82 02 48 */	beq .L_81463F68
/* 81463D24 | 88 61 00 1D */	lbz r3, 0x1d(r1)
/* 81463D28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463D2C | 40 82 00 68 */	bne .L_81463D94
/* 81463D30 | 88 81 00 25 */	lbz r4, 0x25(r1)
/* 81463D34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81463D38 | 41 82 00 24 */	beq .L_81463D5C
/* 81463D3C | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81463D40 | A0 81 00 3E */	lhz r4, 0x3e(r1)
/* 81463D44 | 7F A5 EB 78 */	mr r5, r29
/* 81463D48 | 4B FF CB E9 */	bl Zi8SetFindCand
/* 81463D4C | 7C 60 1B 78 */	mr r0, r3
/* 81463D50 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81463D54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81463D58 | 40 82 02 10 */	bne .L_81463F68
.L_81463D5C:
/* 81463D5C | 3B C0 00 00 */	li r30, 0x0
/* 81463D60 | 48 00 00 24 */	b .L_81463D84
.L_81463D64:
/* 81463D64 | A0 81 00 40 */	lhz r4, 0x40(r1)
/* 81463D68 | 54 86 04 3E */	clrlwi r6, r4, 16
/* 81463D6C | 80 A1 00 78 */	lwz r5, 0x78(r1)
/* 81463D70 | 57 C4 08 3C */	slwi r4, r30, 1
/* 81463D74 | 7C 65 22 2E */	lhzx r3, r5, r4
/* 81463D78 | 7C 06 18 40 */	cmplw r6, r3
/* 81463D7C | 41 82 01 EC */	beq .L_81463F68
/* 81463D80 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81463D84:
/* 81463D84 | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 81463D88 | 7C 1E 00 00 */	cmpw r30, r0
/* 81463D8C | 41 80 FF D8 */	blt .L_81463D64
/* 81463D90 | 48 00 00 F0 */	b .L_81463E80
.L_81463D94:
/* 81463D94 | 38 00 00 00 */	li r0, 0x0
/* 81463D98 | 98 01 00 22 */	stb r0, 0x22(r1)
.L_81463D9C:
/* 81463D9C | 80 61 00 64 */	lwz r3, 0x64(r1)
/* 81463DA0 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81463DA4 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81463DA8 | 54 63 40 2E */	slwi r3, r3, 8
/* 81463DAC | 80 81 00 64 */	lwz r4, 0x64(r1)
/* 81463DB0 | 88 C4 00 00 */	lbz r6, 0x0(r4)
/* 81463DB4 | 7C 65 33 78 */	or r5, r3, r6
/* 81463DB8 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 81463DBC | B0 01 00 3E */	sth r0, 0x3e(r1)
/* 81463DC0 | 80 81 00 64 */	lwz r4, 0x64(r1)
/* 81463DC4 | 38 64 00 02 */	addi r3, r4, 0x2
/* 81463DC8 | 90 61 00 64 */	stw r3, 0x64(r1)
/* 81463DCC | A0 61 00 3E */	lhz r3, 0x3e(r1)
/* 81463DD0 | 54 60 04 7E */	clrlwi r0, r3, 17
/* 81463DD4 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81463DD8 | 7F A4 EB 78 */	mr r4, r29
/* 81463DDC | 48 01 B5 ED */	bl Zi8Ord2Uni
/* 81463DE0 | 7C 68 1B 78 */	mr r8, r3
/* 81463DE4 | 80 E1 00 78 */	lwz r7, 0x78(r1)
/* 81463DE8 | 80 81 00 74 */	lwz r4, 0x74(r1)
/* 81463DEC | 88 61 00 22 */	lbz r3, 0x22(r1)
/* 81463DF0 | 7C 60 1B 78 */	mr r0, r3
/* 81463DF4 | 38 C3 00 01 */	addi r6, r3, 0x1
/* 81463DF8 | 98 C1 00 22 */	stb r6, 0x22(r1)
/* 81463DFC | 54 05 06 3E */	clrlwi r5, r0, 24
/* 81463E00 | 7C 84 2A 14 */	add r4, r4, r5
/* 81463E04 | 54 80 08 3C */	slwi r0, r4, 1
/* 81463E08 | 7D 07 03 2E */	sthx r8, r7, r0
/* 81463E0C | A0 81 00 3E */	lhz r4, 0x3e(r1)
/* 81463E10 | 54 85 04 20 */	rlwinm r5, r4, 0, 16, 16
/* 81463E14 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81463E18 | 41 82 FF 84 */	beq .L_81463D9C
/* 81463E1C | 88 81 00 1F */	lbz r4, 0x1f(r1)
/* 81463E20 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81463E24 | 40 82 00 10 */	bne .L_81463E34
/* 81463E28 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 81463E2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463E30 | 41 82 00 0C */	beq .L_81463E3C
.L_81463E34:
/* 81463E34 | 38 60 00 01 */	li r3, 0x1
/* 81463E38 | 98 61 00 22 */	stb r3, 0x22(r1)
.L_81463E3C:
/* 81463E3C | 80 61 00 78 */	lwz r3, 0x78(r1)
/* 81463E40 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81463E44 | 54 00 08 3C */	slwi r0, r0, 1
/* 81463E48 | 7C 63 02 14 */	add r3, r3, r0
/* 81463E4C | 88 81 00 22 */	lbz r4, 0x22(r1)
/* 81463E50 | 7F A5 EB 78 */	mr r5, r29
/* 81463E54 | 48 01 7F 9D */	bl Zi8IsDupWordW
/* 81463E58 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81463E5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463E60 | 40 82 01 08 */	bne .L_81463F68
/* 81463E64 | 38 60 00 00 */	li r3, 0x0
/* 81463E68 | 80 A1 00 78 */	lwz r5, 0x78(r1)
/* 81463E6C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81463E70 | 88 81 00 22 */	lbz r4, 0x22(r1)
/* 81463E74 | 7C 00 22 14 */	add r0, r0, r4
/* 81463E78 | 54 04 08 3C */	slwi r4, r0, 1
/* 81463E7C | 7C 65 23 2E */	sthx r3, r5, r4
.L_81463E80:
/* 81463E80 | 88 61 00 21 */	lbz r3, 0x21(r1)
/* 81463E84 | 28 03 00 05 */	cmplwi r3, 0x5
/* 81463E88 | 40 82 00 20 */	bne .L_81463EA8
/* 81463E8C | 80 61 00 7C */	lwz r3, 0x7c(r1)
/* 81463E90 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81463E94 | 90 61 00 7C */	stw r3, 0x7c(r1)
/* 81463E98 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 81463E9C | 7C 03 00 00 */	cmpw r3, r0
/* 81463EA0 | 40 80 0C 30 */	bge .L_81464AD0
/* 81463EA4 | 48 00 00 C4 */	b .L_81463F68
.L_81463EA8:
/* 81463EA8 | A0 61 00 52 */	lhz r3, 0x52(r1)
/* 81463EAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463EB0 | 40 82 00 AC */	bne .L_81463F5C
/* 81463EB4 | 80 61 00 7C */	lwz r3, 0x7c(r1)
/* 81463EB8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81463EBC | 90 61 00 7C */	stw r3, 0x7c(r1)
/* 81463EC0 | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 81463EC4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81463EC8 | 98 61 00 28 */	stb r3, 0x28(r1)
/* 81463ECC | 88 A1 00 1D */	lbz r5, 0x1d(r1)
/* 81463ED0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81463ED4 | 41 82 00 38 */	beq .L_81463F0C
/* 81463ED8 | 80 81 00 74 */	lwz r4, 0x74(r1)
/* 81463EDC | 88 01 00 22 */	lbz r0, 0x22(r1)
/* 81463EE0 | 7C 04 02 14 */	add r0, r4, r0
/* 81463EE4 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81463EE8 | 38 00 00 20 */	li r0, 0x20
/* 81463EEC | 80 61 00 78 */	lwz r3, 0x78(r1)
/* 81463EF0 | 80 E1 00 74 */	lwz r7, 0x74(r1)
/* 81463EF4 | 7C E4 3B 78 */	mr r4, r7
/* 81463EF8 | 54 84 08 3C */	slwi r4, r4, 1
/* 81463EFC | 7C 03 23 2E */	sthx r0, r3, r4
/* 81463F00 | 38 07 00 01 */	addi r0, r7, 0x1
/* 81463F04 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81463F08 | 48 00 00 24 */	b .L_81463F2C
.L_81463F0C:
/* 81463F0C | A0 C1 00 40 */	lhz r6, 0x40(r1)
/* 81463F10 | 80 A1 00 78 */	lwz r5, 0x78(r1)
/* 81463F14 | 80 81 00 74 */	lwz r4, 0x74(r1)
/* 81463F18 | 7C 83 23 78 */	mr r3, r4
/* 81463F1C | 54 63 08 3C */	slwi r3, r3, 1
/* 81463F20 | 7C C5 1B 2E */	sthx r6, r5, r3
/* 81463F24 | 38 A4 00 01 */	addi r5, r4, 0x1
/* 81463F28 | 90 A1 00 74 */	stw r5, 0x74(r1)
.L_81463F2C:
/* 81463F2C | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 81463F30 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81463F34 | 88 7F 00 1C */	lbz r3, 0x1c(r31)
/* 81463F38 | 7C 04 18 40 */	cmplw r4, r3
/* 81463F3C | 40 80 00 14 */	bge .L_81463F50
/* 81463F40 | 80 A1 00 74 */	lwz r5, 0x74(r1)
/* 81463F44 | 80 81 00 70 */	lwz r4, 0x70(r1)
/* 81463F48 | 7C 05 20 00 */	cmpw r5, r4
/* 81463F4C | 40 81 00 1C */	ble .L_81463F68
.L_81463F50:
/* 81463F50 | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 81463F54 | 98 7F 00 20 */	stb r3, 0x20(r31)
/* 81463F58 | 48 00 0B 78 */	b .L_81464AD0
.L_81463F5C:
/* 81463F5C | A0 61 00 52 */	lhz r3, 0x52(r1)
/* 81463F60 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81463F64 | B0 61 00 52 */	sth r3, 0x52(r1)
.L_81463F68:
/* 81463F68 | A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 81463F6C | 54 03 04 20 */	rlwinm r3, r0, 0, 16, 16
/* 81463F70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463F74 | 40 82 00 40 */	bne .L_81463FB4
/* 81463F78 | 80 C1 00 6C */	lwz r6, 0x6c(r1)
/* 81463F7C | 38 66 00 01 */	addi r3, r6, 0x1
/* 81463F80 | 90 61 00 6C */	stw r3, 0x6c(r1)
/* 81463F84 | 48 00 00 10 */	b .L_81463F94
.L_81463F88:
/* 81463F88 | 80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 81463F8C | 38 85 00 02 */	addi r4, r5, 0x2
/* 81463F90 | 90 81 00 6C */	stw r4, 0x6c(r1)
.L_81463F94:
/* 81463F94 | 80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 81463F98 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 81463F9C | 54 83 06 30 */	rlwinm r3, r4, 0, 24, 24
/* 81463FA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463FA4 | 41 82 FF E4 */	beq .L_81463F88
/* 81463FA8 | 80 61 00 6C */	lwz r3, 0x6c(r1)
/* 81463FAC | 38 03 00 01 */	addi r0, r3, 0x1
/* 81463FB0 | 90 01 00 6C */	stw r0, 0x6c(r1)
.L_81463FB4:
/* 81463FB4 | 88 A1 00 19 */	lbz r5, 0x19(r1)
/* 81463FB8 | 38 85 FF FF */	subi r4, r5, 0x1
/* 81463FBC | 98 81 00 19 */	stb r4, 0x19(r1)
.L_81463FC0:
/* 81463FC0 | 88 61 00 19 */	lbz r3, 0x19(r1)
/* 81463FC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463FC8 | 40 82 FA 54 */	bne .L_81463A1C
.L_81463FCC:
/* 81463FCC | 88 61 00 1A */	lbz r3, 0x1a(r1)
/* 81463FD0 | 54 64 06 30 */	rlwinm r4, r3, 0, 24, 24
/* 81463FD4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81463FD8 | 41 82 F9 B0 */	beq .L_81463988
.L_81463FDC:
/* 81463FDC | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 81463FE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81463FE4 | 41 82 00 0C */	beq .L_81463FF0
/* 81463FE8 | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 81463FEC | 98 7F 00 20 */	stb r3, 0x20(r31)
.L_81463FF0:
/* 81463FF0 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 81463FF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81463FF8 | 40 82 03 B8 */	bne .L_814643B0
/* 81463FFC | A0 61 00 4E */	lhz r3, 0x4e(r1)
/* 81464000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464004 | 41 82 03 AC */	beq .L_814643B0
/* 81464008 | 38 60 00 00 */	li r3, 0x0
/* 8146400C | B0 61 00 3A */	sth r3, 0x3a(r1)
/* 81464010 | 48 00 03 8C */	b .L_8146439C
.L_81464014:
/* 81464014 | 80 81 00 94 */	lwz r4, 0x94(r1)
/* 81464018 | A0 01 00 3A */	lhz r0, 0x3a(r1)
/* 8146401C | 54 03 08 3C */	slwi r3, r0, 1
/* 81464020 | 7C 04 18 AE */	lbzx r0, r4, r3
/* 81464024 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 81464028 | 54 C5 40 2E */	slwi r5, r6, 8
/* 8146402C | 80 81 00 94 */	lwz r4, 0x94(r1)
/* 81464030 | A0 01 00 3A */	lhz r0, 0x3a(r1)
/* 81464034 | 54 03 08 3C */	slwi r3, r0, 1
/* 81464038 | 7C 83 22 14 */	add r4, r3, r4
/* 8146403C | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 81464040 | 7C C5 1A 14 */	add r6, r5, r3
/* 81464044 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 81464048 | B0 A1 00 50 */	sth r5, 0x50(r1)
/* 8146404C | 80 81 00 9C */	lwz r4, 0x9c(r1)
/* 81464050 | A0 01 00 50 */	lhz r0, 0x50(r1)
/* 81464054 | 1C 60 00 0C */	mulli r3, r0, 0xc
/* 81464058 | 7C A4 1A 14 */	add r5, r4, r3
/* 8146405C | 90 A1 00 88 */	stw r5, 0x88(r1)
/* 81464060 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 81464064 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 81464068 | 88 61 00 2F */	lbz r3, 0x2f(r1)
/* 8146406C | 7C 80 18 38 */	and r0, r4, r3
/* 81464070 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464074 | 41 82 03 1C */	beq .L_81464390
/* 81464078 | 80 C1 00 90 */	lwz r6, 0x90(r1)
/* 8146407C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81464080 | 41 82 00 20 */	beq .L_814640A0
/* 81464084 | 88 A1 00 2E */	lbz r5, 0x2e(r1)
/* 81464088 | 80 81 00 90 */	lwz r4, 0x90(r1)
/* 8146408C | A0 61 00 50 */	lhz r3, 0x50(r1)
/* 81464090 | 7C 64 18 AE */	lbzx r3, r4, r3
/* 81464094 | 7C A0 18 38 */	and r0, r5, r3
/* 81464098 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146409C | 41 82 02 F4 */	beq .L_81464390
.L_814640A0:
/* 814640A0 | 88 E1 00 29 */	lbz r7, 0x29(r1)
/* 814640A4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814640A8 | 41 82 00 44 */	beq .L_814640EC
/* 814640AC | 3B C0 00 00 */	li r30, 0x0
/* 814640B0 | 48 00 00 2C */	b .L_814640DC
.L_814640B4:
/* 814640B4 | 38 81 00 84 */	addi r4, r1, 0x84
/* 814640B8 | 7C C4 F0 AE */	lbzx r6, r4, r30
/* 814640BC | 38 61 00 80 */	addi r3, r1, 0x80
/* 814640C0 | 7C 03 F0 AE */	lbzx r0, r3, r30
/* 814640C4 | 80 A1 00 88 */	lwz r5, 0x88(r1)
/* 814640C8 | 7C 85 F0 AE */	lbzx r4, r5, r30
/* 814640CC | 7C 04 20 38 */	and r4, r0, r4
/* 814640D0 | 7C 06 20 00 */	cmpw r6, r4
/* 814640D4 | 40 82 00 10 */	bne .L_814640E4
/* 814640D8 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814640DC:
/* 814640DC | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 814640E0 | 41 80 FF D4 */	blt .L_814640B4
.L_814640E4:
/* 814640E4 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 814640E8 | 41 80 02 A8 */	blt .L_81464390
.L_814640EC:
/* 814640EC | 38 00 00 00 */	li r0, 0x0
/* 814640F0 | 98 01 00 24 */	stb r0, 0x24(r1)
/* 814640F4 | 88 7D 11 FA */	lbz r3, 0x11fa(r29)
/* 814640F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814640FC | 41 82 00 50 */	beq .L_8146414C
/* 81464100 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 81464104 | 88 C3 00 08 */	lbz r6, 0x8(r3)
/* 81464108 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 8146410C | 54 A7 08 3C */	slwi r7, r5, 1
/* 81464110 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 81464114 | 88 83 00 09 */	lbz r4, 0x9(r3)
/* 81464118 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8146411C | 54 06 06 30 */	rlwinm r6, r0, 0, 24, 24
/* 81464120 | 7C C5 3E 70 */	srawi r5, r6, 7
/* 81464124 | 7C E3 2B 78 */	or r3, r7, r5
/* 81464128 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8146412C | B0 01 00 4A */	sth r0, 0x4a(r1)
/* 81464130 | A0 01 00 4A */	lhz r0, 0x4a(r1)
/* 81464134 | 7C 9D 02 14 */	add r4, r29, r0
/* 81464138 | 88 64 0F FA */	lbz r3, 0xffa(r4)
/* 8146413C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464140 | 40 82 00 0C */	bne .L_8146414C
/* 81464144 | 38 60 00 01 */	li r3, 0x1
/* 81464148 | 98 61 00 24 */	stb r3, 0x24(r1)
.L_8146414C:
/* 8146414C | 88 81 00 24 */	lbz r4, 0x24(r1)
/* 81464150 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81464154 | 40 82 00 38 */	bne .L_8146418C
/* 81464158 | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 8146415C | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81464160 | 48 01 AD 69 */	bl Zi8GetPCode
/* 81464164 | 7C 60 1B 78 */	mr r0, r3
/* 81464168 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 8146416C | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 81464170 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 81464174 | 88 C1 00 27 */	lbz r6, 0x27(r1)
/* 81464178 | 88 E1 00 2B */	lbz r7, 0x2b(r1)
/* 8146417C | 89 01 00 26 */	lbz r8, 0x26(r1)
/* 81464180 | 4B FF C0 D9 */	bl Zi8IsMatch1Key
/* 81464184 | 98 61 00 2A */	stb r3, 0x2a(r1)
/* 81464188 | 48 00 00 0C */	b .L_81464194
.L_8146418C:
/* 8146418C | 38 C0 00 00 */	li r6, 0x0
/* 81464190 | 98 C1 00 2A */	stb r6, 0x2a(r1)
.L_81464194:
/* 81464194 | 88 A1 00 2A */	lbz r5, 0x2a(r1)
/* 81464198 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146419C | 40 82 00 68 */	bne .L_81464204
/* 814641A0 | 88 61 00 20 */	lbz r3, 0x20(r1)
/* 814641A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814641A8 | 40 82 00 5C */	bne .L_81464204
/* 814641AC | 80 81 00 9C */	lwz r4, 0x9c(r1)
/* 814641B0 | A0 61 00 50 */	lhz r3, 0x50(r1)
/* 814641B4 | 1C 63 00 0C */	mulli r3, r3, 0xc
/* 814641B8 | 7C 84 18 AE */	lbzx r4, r4, r3
/* 814641BC | 54 80 06 30 */	rlwinm r0, r4, 0, 24, 24
/* 814641C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814641C4 | 41 82 00 40 */	beq .L_81464204
/* 814641C8 | 88 61 00 26 */	lbz r3, 0x26(r1)
/* 814641CC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814641D0 | 88 A1 00 2F */	lbz r5, 0x2f(r1)
/* 814641D4 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 814641D8 | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 814641DC | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 814641E0 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 814641E4 | 88 A1 00 27 */	lbz r5, 0x27(r1)
/* 814641E8 | 80 C1 00 98 */	lwz r6, 0x98(r1)
/* 814641EC | A0 E1 00 54 */	lhz r7, 0x54(r1)
/* 814641F0 | 81 01 00 8C */	lwz r8, 0x8c(r1)
/* 814641F4 | A1 21 00 50 */	lhz r9, 0x50(r1)
/* 814641F8 | 89 41 00 2B */	lbz r10, 0x2b(r1)
/* 814641FC | 4B FF C1 E1 */	bl MatchAltSound1Key
/* 81464200 | 98 61 00 2A */	stb r3, 0x2a(r1)
.L_81464204:
/* 81464204 | 88 81 00 2A */	lbz r4, 0x2a(r1)
/* 81464208 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146420C | 41 82 01 84 */	beq .L_81464390
/* 81464210 | 88 01 00 1D */	lbz r0, 0x1d(r1)
/* 81464214 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464218 | 40 82 00 84 */	bne .L_8146429C
/* 8146421C | 88 C1 00 25 */	lbz r6, 0x25(r1)
/* 81464220 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81464224 | 41 82 00 24 */	beq .L_81464248
/* 81464228 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8146422C | A0 81 00 50 */	lhz r4, 0x50(r1)
/* 81464230 | 7F A5 EB 78 */	mr r5, r29
/* 81464234 | 4B FF C6 FD */	bl Zi8SetFindCand
/* 81464238 | 7C 65 1B 78 */	mr r5, r3
/* 8146423C | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 81464240 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81464244 | 40 82 01 4C */	bne .L_81464390
.L_81464248:
/* 81464248 | A0 61 00 50 */	lhz r3, 0x50(r1)
/* 8146424C | 7F A4 EB 78 */	mr r4, r29
/* 81464250 | 48 01 B1 79 */	bl Zi8Ord2Uni
/* 81464254 | B0 61 00 50 */	sth r3, 0x50(r1)
/* 81464258 | 3B C0 00 00 */	li r30, 0x0
/* 8146425C | 48 00 00 24 */	b .L_81464280
.L_81464260:
/* 81464260 | A0 61 00 50 */	lhz r3, 0x50(r1)
/* 81464264 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 81464268 | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 8146426C | 57 C3 08 3C */	slwi r3, r30, 1
/* 81464270 | 7C 04 1A 2E */	lhzx r0, r4, r3
/* 81464274 | 7C 05 00 40 */	cmplw r5, r0
/* 81464278 | 41 82 00 14 */	beq .L_8146428C
/* 8146427C | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81464280:
/* 81464280 | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 81464284 | 7C 1E 00 00 */	cmpw r30, r0
/* 81464288 | 41 80 FF D8 */	blt .L_81464260
.L_8146428C:
/* 8146428C | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 81464290 | 7C 1E 18 00 */	cmpw r30, r3
/* 81464294 | 41 80 00 FC */	blt .L_81464390
/* 81464298 | 48 00 00 38 */	b .L_814642D0
.L_8146429C:
/* 8146429C | A0 61 00 50 */	lhz r3, 0x50(r1)
/* 814642A0 | 7F A4 EB 78 */	mr r4, r29
/* 814642A4 | 48 01 B1 25 */	bl Zi8Ord2Uni
/* 814642A8 | B0 61 00 50 */	sth r3, 0x50(r1)
/* 814642AC | 38 61 00 50 */	addi r3, r1, 0x50
/* 814642B0 | 38 80 00 01 */	li r4, 0x1
/* 814642B4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814642B8 | 7F A5 EB 78 */	mr r5, r29
/* 814642BC | 48 01 7B 35 */	bl Zi8IsDupWordW
/* 814642C0 | 7C 66 1B 78 */	mr r6, r3
/* 814642C4 | 54 C3 06 3E */	clrlwi r3, r6, 24
/* 814642C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814642CC | 40 82 00 C4 */	bne .L_81464390
.L_814642D0:
/* 814642D0 | A0 01 00 52 */	lhz r0, 0x52(r1)
/* 814642D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814642D8 | 40 82 00 AC */	bne .L_81464384
/* 814642DC | 80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 814642E0 | 38 85 00 01 */	addi r4, r5, 0x1
/* 814642E4 | 90 81 00 7C */	stw r4, 0x7c(r1)
/* 814642E8 | 88 7C 00 00 */	lbz r3, 0x0(r28)
/* 814642EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814642F0 | 40 82 00 5C */	bne .L_8146434C
/* 814642F4 | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 814642F8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814642FC | 98 61 00 28 */	stb r3, 0x28(r1)
/* 81464300 | A0 01 00 50 */	lhz r0, 0x50(r1)
/* 81464304 | 80 61 00 78 */	lwz r3, 0x78(r1)
/* 81464308 | 80 C1 00 74 */	lwz r6, 0x74(r1)
/* 8146430C | 7C C5 33 78 */	mr r5, r6
/* 81464310 | 54 A4 08 3C */	slwi r4, r5, 1
/* 81464314 | 7C 03 23 2E */	sthx r0, r3, r4
/* 81464318 | 38 86 00 01 */	addi r4, r6, 0x1
/* 8146431C | 90 81 00 74 */	stw r4, 0x74(r1)
/* 81464320 | 88 01 00 1D */	lbz r0, 0x1d(r1)
/* 81464324 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464328 | 41 82 00 34 */	beq .L_8146435C
/* 8146432C | 38 60 00 20 */	li r3, 0x20
/* 81464330 | 80 C1 00 78 */	lwz r6, 0x78(r1)
/* 81464334 | 80 A1 00 74 */	lwz r5, 0x74(r1)
/* 81464338 | 54 A4 08 3C */	slwi r4, r5, 1
/* 8146433C | 7C 66 23 2E */	sthx r3, r6, r4
/* 81464340 | 38 C5 00 01 */	addi r6, r5, 0x1
/* 81464344 | 90 C1 00 74 */	stw r6, 0x74(r1)
/* 81464348 | 48 00 00 14 */	b .L_8146435C
.L_8146434C:
/* 8146434C | 80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 81464350 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 81464354 | 7C 05 00 00 */	cmpw r5, r0
/* 81464358 | 40 80 07 78 */	bge .L_81464AD0
.L_8146435C:
/* 8146435C | 88 A1 00 28 */	lbz r5, 0x28(r1)
/* 81464360 | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 81464364 | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 81464368 | 7C 03 20 40 */	cmplw r3, r4
/* 8146436C | 40 80 07 64 */	bge .L_81464AD0
/* 81464370 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81464374 | 80 81 00 70 */	lwz r4, 0x70(r1)
/* 81464378 | 7C 00 20 00 */	cmpw r0, r4
/* 8146437C | 40 81 00 14 */	ble .L_81464390
/* 81464380 | 48 00 07 50 */	b .L_81464AD0
.L_81464384:
/* 81464384 | A0 61 00 52 */	lhz r3, 0x52(r1)
/* 81464388 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8146438C | B0 01 00 52 */	sth r0, 0x52(r1)
.L_81464390:
/* 81464390 | A0 81 00 3A */	lhz r4, 0x3a(r1)
/* 81464394 | 38 64 00 01 */	addi r3, r4, 0x1
/* 81464398 | B0 61 00 3A */	sth r3, 0x3a(r1)
.L_8146439C:
/* 8146439C | A0 01 00 3A */	lhz r0, 0x3a(r1)
/* 814643A0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814643A4 | A0 01 00 4E */	lhz r0, 0x4e(r1)
/* 814643A8 | 7C 03 00 40 */	cmplw r3, r0
/* 814643AC | 41 80 FC 68 */	blt .L_81464014
.L_814643B0:
/* 814643B0 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 814643B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814643B8 | 40 82 03 90 */	bne .L_81464748
/* 814643BC | 38 61 00 60 */	addi r3, r1, 0x60
/* 814643C0 | 38 81 00 36 */	addi r4, r1, 0x36
/* 814643C4 | 7F A5 EB 78 */	mr r5, r29
/* 814643C8 | 48 01 C8 D5 */	bl Zi8GetZHuwdPtr
/* 814643CC | 54 65 06 3E */	clrlwi r5, r3, 24
/* 814643D0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814643D4 | 41 82 03 74 */	beq .L_81464748
/* 814643D8 | 38 80 00 00 */	li r4, 0x0
/* 814643DC | B0 81 00 38 */	sth r4, 0x38(r1)
/* 814643E0 | 48 00 03 54 */	b .L_81464734
.L_814643E4:
/* 814643E4 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 814643E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814643EC | 41 82 00 18 */	beq .L_81464404
/* 814643F0 | 80 61 00 60 */	lwz r3, 0x60(r1)
/* 814643F4 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814643F8 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 814643FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464400 | 41 82 03 1C */	beq .L_8146471C
.L_81464404:
/* 81464404 | 80 61 00 60 */	lwz r3, 0x60(r1)
/* 81464408 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8146440C | 54 03 06 7E */	clrlwi r3, r0, 25
/* 81464410 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81464414 | 54 80 40 2E */	slwi r0, r4, 8
/* 81464418 | 80 81 00 60 */	lwz r4, 0x60(r1)
/* 8146441C | 88 84 00 02 */	lbz r4, 0x2(r4)
/* 81464420 | 7C 06 23 78 */	or r6, r0, r4
/* 81464424 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 81464428 | B0 A1 00 34 */	sth r5, 0x34(r1)
/* 8146442C | 80 81 00 9C */	lwz r4, 0x9c(r1)
/* 81464430 | A0 61 00 34 */	lhz r3, 0x34(r1)
/* 81464434 | 1C 03 00 0C */	mulli r0, r3, 0xc
/* 81464438 | 7C 04 02 14 */	add r0, r4, r0
/* 8146443C | 90 01 00 88 */	stw r0, 0x88(r1)
/* 81464440 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 81464444 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81464448 | 88 61 00 2F */	lbz r3, 0x2f(r1)
/* 8146444C | 7C 03 18 38 */	and r3, r0, r3
/* 81464450 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464454 | 41 82 02 C8 */	beq .L_8146471C
/* 81464458 | 80 81 00 90 */	lwz r4, 0x90(r1)
/* 8146445C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81464460 | 41 82 00 20 */	beq .L_81464480
/* 81464464 | 88 C1 00 2E */	lbz r6, 0x2e(r1)
/* 81464468 | 80 A1 00 90 */	lwz r5, 0x90(r1)
/* 8146446C | A0 01 00 34 */	lhz r0, 0x34(r1)
/* 81464470 | 7C 85 00 AE */	lbzx r4, r5, r0
/* 81464474 | 7C C3 20 38 */	and r3, r6, r4
/* 81464478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146447C | 41 82 02 A0 */	beq .L_8146471C
.L_81464480:
/* 81464480 | 88 61 00 29 */	lbz r3, 0x29(r1)
/* 81464484 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464488 | 41 82 00 78 */	beq .L_81464500
/* 8146448C | 38 00 00 00 */	li r0, 0x0
/* 81464490 | 98 01 00 24 */	stb r0, 0x24(r1)
/* 81464494 | 39 00 00 00 */	li r8, 0x0
/* 81464498 | 91 01 00 5C */	stw r8, 0x5c(r1)
/* 8146449C | 48 00 00 4C */	b .L_814644E8
.L_814644A0:
/* 814644A0 | 80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 814644A4 | 38 81 00 84 */	addi r4, r1, 0x84
/* 814644A8 | 7C 64 38 AE */	lbzx r3, r4, r7
/* 814644AC | 80 01 00 5C */	lwz r0, 0x5c(r1)
/* 814644B0 | 38 C1 00 80 */	addi r6, r1, 0x80
/* 814644B4 | 7C A6 00 AE */	lbzx r5, r6, r0
/* 814644B8 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 814644BC | 80 01 00 5C */	lwz r0, 0x5c(r1)
/* 814644C0 | 7C 84 00 AE */	lbzx r4, r4, r0
/* 814644C4 | 7C A5 20 38 */	and r5, r5, r4
/* 814644C8 | 7C 03 28 00 */	cmpw r3, r5
/* 814644CC | 41 82 00 10 */	beq .L_814644DC
/* 814644D0 | 38 80 00 01 */	li r4, 0x1
/* 814644D4 | 98 81 00 24 */	stb r4, 0x24(r1)
/* 814644D8 | 48 00 00 1C */	b .L_814644F4
.L_814644DC:
/* 814644DC | 80 61 00 5C */	lwz r3, 0x5c(r1)
/* 814644E0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814644E4 | 90 61 00 5C */	stw r3, 0x5c(r1)
.L_814644E8:
/* 814644E8 | 80 61 00 5C */	lwz r3, 0x5c(r1)
/* 814644EC | 2C 03 00 04 */	cmpwi r3, 0x4
/* 814644F0 | 41 80 FF B0 */	blt .L_814644A0
.L_814644F4:
/* 814644F4 | 88 01 00 24 */	lbz r0, 0x24(r1)
/* 814644F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814644FC | 40 82 02 20 */	bne .L_8146471C
.L_81464500:
/* 81464500 | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 81464504 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81464508 | 48 01 A9 C1 */	bl Zi8GetPCode
/* 8146450C | 7C 60 1B 78 */	mr r0, r3
/* 81464510 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81464514 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 81464518 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 8146451C | 88 C1 00 27 */	lbz r6, 0x27(r1)
/* 81464520 | 88 E1 00 2B */	lbz r7, 0x2b(r1)
/* 81464524 | 89 01 00 26 */	lbz r8, 0x26(r1)
/* 81464528 | 4B FF BD 31 */	bl Zi8IsMatch1Key
/* 8146452C | 98 61 00 2A */	stb r3, 0x2a(r1)
/* 81464530 | 88 01 00 2A */	lbz r0, 0x2a(r1)
/* 81464534 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464538 | 40 82 00 60 */	bne .L_81464598
/* 8146453C | 88 61 00 20 */	lbz r3, 0x20(r1)
/* 81464540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464544 | 40 82 00 54 */	bne .L_81464598
/* 81464548 | 80 A1 00 88 */	lwz r5, 0x88(r1)
/* 8146454C | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 81464550 | 54 04 06 30 */	rlwinm r4, r0, 0, 24, 24
/* 81464554 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81464558 | 41 82 00 40 */	beq .L_81464598
/* 8146455C | 88 01 00 26 */	lbz r0, 0x26(r1)
/* 81464560 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81464564 | 88 81 00 2F */	lbz r4, 0x2f(r1)
/* 81464568 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8146456C | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 81464570 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81464574 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 81464578 | 88 A1 00 27 */	lbz r5, 0x27(r1)
/* 8146457C | 80 C1 00 98 */	lwz r6, 0x98(r1)
/* 81464580 | A0 E1 00 54 */	lhz r7, 0x54(r1)
/* 81464584 | 81 01 00 8C */	lwz r8, 0x8c(r1)
/* 81464588 | A1 21 00 34 */	lhz r9, 0x34(r1)
/* 8146458C | 89 41 00 2B */	lbz r10, 0x2b(r1)
/* 81464590 | 4B FF BE 4D */	bl MatchAltSound1Key
/* 81464594 | 98 61 00 2A */	stb r3, 0x2a(r1)
.L_81464598:
/* 81464598 | 88 61 00 2A */	lbz r3, 0x2a(r1)
/* 8146459C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814645A0 | 41 82 01 7C */	beq .L_8146471C
/* 814645A4 | 88 61 00 1D */	lbz r3, 0x1d(r1)
/* 814645A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814645AC | 40 82 00 98 */	bne .L_81464644
/* 814645B0 | 88 01 00 25 */	lbz r0, 0x25(r1)
/* 814645B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814645B8 | 41 82 00 20 */	beq .L_814645D8
/* 814645BC | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 814645C0 | A0 81 00 34 */	lhz r4, 0x34(r1)
/* 814645C4 | 7F A5 EB 78 */	mr r5, r29
/* 814645C8 | 4B FF C3 69 */	bl Zi8SetFindCand
/* 814645CC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814645D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814645D4 | 40 82 01 48 */	bne .L_8146471C
.L_814645D8:
/* 814645D8 | A0 61 00 34 */	lhz r3, 0x34(r1)
/* 814645DC | 7F A4 EB 78 */	mr r4, r29
/* 814645E0 | 48 01 AD E9 */	bl Zi8Ord2Uni
/* 814645E4 | B0 61 00 32 */	sth r3, 0x32(r1)
/* 814645E8 | 38 60 00 00 */	li r3, 0x0
/* 814645EC | 90 61 00 5C */	stw r3, 0x5c(r1)
/* 814645F0 | 48 00 00 30 */	b .L_81464620
.L_814645F4:
/* 814645F4 | A0 61 00 32 */	lhz r3, 0x32(r1)
/* 814645F8 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814645FC | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 81464600 | 80 01 00 5C */	lwz r0, 0x5c(r1)
/* 81464604 | 54 00 08 3C */	slwi r0, r0, 1
/* 81464608 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 8146460C | 7C 05 00 40 */	cmplw r5, r0
/* 81464610 | 41 82 00 20 */	beq .L_81464630
/* 81464614 | 80 61 00 5C */	lwz r3, 0x5c(r1)
/* 81464618 | 38 E3 00 01 */	addi r7, r3, 0x1
/* 8146461C | 90 E1 00 5C */	stw r7, 0x5c(r1)
.L_81464620:
/* 81464620 | 80 81 00 5C */	lwz r4, 0x5c(r1)
/* 81464624 | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 81464628 | 7C 04 00 00 */	cmpw r4, r0
/* 8146462C | 41 80 FF C8 */	blt .L_814645F4
.L_81464630:
/* 81464630 | 80 81 00 5C */	lwz r4, 0x5c(r1)
/* 81464634 | 88 C1 00 28 */	lbz r6, 0x28(r1)
/* 81464638 | 7C 04 30 00 */	cmpw r4, r6
/* 8146463C | 41 80 00 E0 */	blt .L_8146471C
/* 81464640 | 48 00 00 3C */	b .L_8146467C
.L_81464644:
/* 81464644 | A0 61 00 34 */	lhz r3, 0x34(r1)
/* 81464648 | 7F A4 EB 78 */	mr r4, r29
/* 8146464C | 48 01 AD 7D */	bl Zi8Ord2Uni
/* 81464650 | 7C 65 1B 78 */	mr r5, r3
/* 81464654 | B0 A1 00 32 */	sth r5, 0x32(r1)
/* 81464658 | 38 61 00 32 */	addi r3, r1, 0x32
/* 8146465C | 38 80 00 01 */	li r4, 0x1
/* 81464660 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81464664 | 7F A5 EB 78 */	mr r5, r29
/* 81464668 | 48 01 77 89 */	bl Zi8IsDupWordW
/* 8146466C | 7C 64 1B 78 */	mr r4, r3
/* 81464670 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81464674 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464678 | 40 82 00 A4 */	bne .L_8146471C
.L_8146467C:
/* 8146467C | A0 A1 00 52 */	lhz r5, 0x52(r1)
/* 81464680 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81464684 | 40 82 00 8C */	bne .L_81464710
/* 81464688 | 80 61 00 7C */	lwz r3, 0x7c(r1)
/* 8146468C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81464690 | 90 01 00 7C */	stw r0, 0x7c(r1)
/* 81464694 | 88 81 00 28 */	lbz r4, 0x28(r1)
/* 81464698 | 38 64 00 01 */	addi r3, r4, 0x1
/* 8146469C | 98 61 00 28 */	stb r3, 0x28(r1)
/* 814646A0 | A0 A1 00 32 */	lhz r5, 0x32(r1)
/* 814646A4 | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 814646A8 | 80 61 00 74 */	lwz r3, 0x74(r1)
/* 814646AC | 54 60 08 3C */	slwi r0, r3, 1
/* 814646B0 | 7C A4 03 2E */	sthx r5, r4, r0
/* 814646B4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814646B8 | 90 61 00 74 */	stw r3, 0x74(r1)
/* 814646BC | 88 61 00 1D */	lbz r3, 0x1d(r1)
/* 814646C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814646C4 | 41 82 00 24 */	beq .L_814646E8
/* 814646C8 | 38 C0 00 20 */	li r6, 0x20
/* 814646CC | 80 61 00 78 */	lwz r3, 0x78(r1)
/* 814646D0 | 80 A1 00 74 */	lwz r5, 0x74(r1)
/* 814646D4 | 7C A4 2B 78 */	mr r4, r5
/* 814646D8 | 54 84 08 3C */	slwi r4, r4, 1
/* 814646DC | 7C C3 23 2E */	sthx r6, r3, r4
/* 814646E0 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814646E4 | 90 A1 00 74 */	stw r5, 0x74(r1)
.L_814646E8:
/* 814646E8 | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 814646EC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814646F0 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 814646F4 | 7C 03 00 40 */	cmplw r3, r0
/* 814646F8 | 40 80 03 D8 */	bge .L_81464AD0
/* 814646FC | 80 A1 00 74 */	lwz r5, 0x74(r1)
/* 81464700 | 80 81 00 70 */	lwz r4, 0x70(r1)
/* 81464704 | 7C 05 20 00 */	cmpw r5, r4
/* 81464708 | 40 81 00 14 */	ble .L_8146471C
/* 8146470C | 48 00 03 C4 */	b .L_81464AD0
.L_81464710:
/* 81464710 | A0 61 00 52 */	lhz r3, 0x52(r1)
/* 81464714 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81464718 | B0 61 00 52 */	sth r3, 0x52(r1)
.L_8146471C:
/* 8146471C | A0 81 00 38 */	lhz r4, 0x38(r1)
/* 81464720 | 38 64 00 01 */	addi r3, r4, 0x1
/* 81464724 | B0 61 00 38 */	sth r3, 0x38(r1)
/* 81464728 | 80 61 00 60 */	lwz r3, 0x60(r1)
/* 8146472C | 38 03 00 03 */	addi r0, r3, 0x3
/* 81464730 | 90 01 00 60 */	stw r0, 0x60(r1)
.L_81464734:
/* 81464734 | A0 61 00 38 */	lhz r3, 0x38(r1)
/* 81464738 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8146473C | A0 81 00 36 */	lhz r4, 0x36(r1)
/* 81464740 | 7C 03 20 40 */	cmplw r3, r4
/* 81464744 | 41 80 FC A0 */	blt .L_814643E4
.L_81464748:
/* 81464748 | 80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8146474C | 90 01 00 88 */	stw r0, 0x88(r1)
/* 81464750 | 38 60 00 00 */	li r3, 0x0
/* 81464754 | B0 61 00 4C */	sth r3, 0x4c(r1)
/* 81464758 | 38 00 00 00 */	li r0, 0x0
/* 8146475C | B0 01 00 50 */	sth r0, 0x50(r1)
/* 81464760 | 48 00 03 5C */	b .L_81464ABC
.L_81464764:
/* 81464764 | 80 C1 00 88 */	lwz r6, 0x88(r1)
/* 81464768 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 8146476C | 88 81 00 2F */	lbz r4, 0x2f(r1)
/* 81464770 | 7C A0 20 38 */	and r0, r5, r4
/* 81464774 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464778 | 41 82 03 2C */	beq .L_81464AA4
/* 8146477C | 80 61 00 90 */	lwz r3, 0x90(r1)
/* 81464780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464784 | 41 82 00 20 */	beq .L_814647A4
/* 81464788 | 88 81 00 2E */	lbz r4, 0x2e(r1)
/* 8146478C | 80 61 00 90 */	lwz r3, 0x90(r1)
/* 81464790 | A0 C1 00 50 */	lhz r6, 0x50(r1)
/* 81464794 | 7C A3 30 AE */	lbzx r5, r3, r6
/* 81464798 | 7C 84 28 38 */	and r4, r4, r5
/* 8146479C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814647A0 | 41 82 03 04 */	beq .L_81464AA4
.L_814647A4:
/* 814647A4 | 88 01 00 29 */	lbz r0, 0x29(r1)
/* 814647A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814647AC | 41 82 00 44 */	beq .L_814647F0
/* 814647B0 | 3B C0 00 00 */	li r30, 0x0
/* 814647B4 | 48 00 00 2C */	b .L_814647E0
.L_814647B8:
/* 814647B8 | 38 61 00 84 */	addi r3, r1, 0x84
/* 814647BC | 7C A3 F0 AE */	lbzx r5, r3, r30
/* 814647C0 | 38 61 00 80 */	addi r3, r1, 0x80
/* 814647C4 | 7C 83 F0 AE */	lbzx r4, r3, r30
/* 814647C8 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 814647CC | 7C 03 F0 AE */	lbzx r0, r3, r30
/* 814647D0 | 7C 86 00 38 */	and r6, r4, r0
/* 814647D4 | 7C 05 30 00 */	cmpw r5, r6
/* 814647D8 | 40 82 00 10 */	bne .L_814647E8
/* 814647DC | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814647E0:
/* 814647E0 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 814647E4 | 41 80 FF D4 */	blt .L_814647B8
.L_814647E8:
/* 814647E8 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 814647EC | 41 80 02 B8 */	blt .L_81464AA4
.L_814647F0:
/* 814647F0 | 38 A0 00 00 */	li r5, 0x0
/* 814647F4 | 98 A1 00 24 */	stb r5, 0x24(r1)
/* 814647F8 | 88 9D 11 FA */	lbz r4, 0x11fa(r29)
/* 814647FC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81464800 | 41 82 00 50 */	beq .L_81464850
/* 81464804 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 81464808 | 88 63 00 08 */	lbz r3, 0x8(r3)
/* 8146480C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81464810 | 54 07 08 3C */	slwi r7, r0, 1
/* 81464814 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81464818 | 88 C4 00 09 */	lbz r6, 0x9(r4)
/* 8146481C | 54 C3 04 3E */	clrlwi r3, r6, 16
/* 81464820 | 54 60 06 30 */	rlwinm r0, r3, 0, 24, 24
/* 81464824 | 7C 05 3E 70 */	srawi r5, r0, 7
/* 81464828 | 7C E4 2B 78 */	or r4, r7, r5
/* 8146482C | 54 84 04 3E */	clrlwi r4, r4, 16
/* 81464830 | B0 81 00 4A */	sth r4, 0x4a(r1)
/* 81464834 | A0 01 00 4A */	lhz r0, 0x4a(r1)
/* 81464838 | 7C 7D 02 14 */	add r3, r29, r0
/* 8146483C | 88 63 0F FA */	lbz r3, 0xffa(r3)
/* 81464840 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464844 | 40 82 00 0C */	bne .L_81464850
/* 81464848 | 38 C0 00 01 */	li r6, 0x1
/* 8146484C | 98 C1 00 24 */	stb r6, 0x24(r1)
.L_81464850:
/* 81464850 | 88 A1 00 24 */	lbz r5, 0x24(r1)
/* 81464854 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81464858 | 40 82 00 38 */	bne .L_81464890
/* 8146485C | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 81464860 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81464864 | 48 01 A6 65 */	bl Zi8GetPCode
/* 81464868 | 7C 67 1B 78 */	mr r7, r3
/* 8146486C | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81464870 | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 81464874 | 54 E5 04 3E */	clrlwi r5, r7, 16
/* 81464878 | 88 C1 00 27 */	lbz r6, 0x27(r1)
/* 8146487C | 88 E1 00 2B */	lbz r7, 0x2b(r1)
/* 81464880 | 89 01 00 26 */	lbz r8, 0x26(r1)
/* 81464884 | 4B FF B9 D5 */	bl Zi8IsMatch1Key
/* 81464888 | 98 61 00 2A */	stb r3, 0x2a(r1)
/* 8146488C | 48 00 00 0C */	b .L_81464898
.L_81464890:
/* 81464890 | 38 80 00 00 */	li r4, 0x0
/* 81464894 | 98 81 00 2A */	stb r4, 0x2a(r1)
.L_81464898:
/* 81464898 | 88 01 00 2A */	lbz r0, 0x2a(r1)
/* 8146489C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814648A0 | 40 82 00 60 */	bne .L_81464900
/* 814648A4 | 88 C1 00 20 */	lbz r6, 0x20(r1)
/* 814648A8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814648AC | 40 82 00 54 */	bne .L_81464900
/* 814648B0 | 80 A1 00 88 */	lwz r5, 0x88(r1)
/* 814648B4 | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 814648B8 | 54 60 06 30 */	rlwinm r0, r3, 0, 24, 24
/* 814648BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814648C0 | 41 82 00 40 */	beq .L_81464900
/* 814648C4 | 88 01 00 26 */	lbz r0, 0x26(r1)
/* 814648C8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814648CC | 88 81 00 2F */	lbz r4, 0x2f(r1)
/* 814648D0 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814648D4 | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 814648D8 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 814648DC | 88 81 00 2C */	lbz r4, 0x2c(r1)
/* 814648E0 | 88 A1 00 27 */	lbz r5, 0x27(r1)
/* 814648E4 | 80 C1 00 98 */	lwz r6, 0x98(r1)
/* 814648E8 | A0 E1 00 54 */	lhz r7, 0x54(r1)
/* 814648EC | 81 01 00 8C */	lwz r8, 0x8c(r1)
/* 814648F0 | A1 21 00 50 */	lhz r9, 0x50(r1)
/* 814648F4 | 89 41 00 2B */	lbz r10, 0x2b(r1)
/* 814648F8 | 4B FF BA E5 */	bl MatchAltSound1Key
/* 814648FC | 98 61 00 2A */	stb r3, 0x2a(r1)
.L_81464900:
/* 81464900 | 88 61 00 2A */	lbz r3, 0x2a(r1)
/* 81464904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464908 | 41 82 01 9C */	beq .L_81464AA4
/* 8146490C | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81464910 | 88 04 00 06 */	lbz r0, 0x6(r4)
/* 81464914 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81464918 | 54 66 40 2E */	slwi r6, r3, 8
/* 8146491C | 80 A1 00 88 */	lwz r5, 0x88(r1)
/* 81464920 | 88 65 00 07 */	lbz r3, 0x7(r5)
/* 81464924 | 7C 86 1A 14 */	add r4, r6, r3
/* 81464928 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 8146492C | B0 61 00 30 */	sth r3, 0x30(r1)
/* 81464930 | A0 61 00 30 */	lhz r3, 0x30(r1)
/* 81464934 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81464938 | A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 8146493C | 7C 04 00 40 */	cmplw r4, r0
/* 81464940 | 41 82 01 64 */	beq .L_81464AA4
/* 81464944 | A0 61 00 30 */	lhz r3, 0x30(r1)
/* 81464948 | B0 61 00 4C */	sth r3, 0x4c(r1)
/* 8146494C | 88 A1 00 1D */	lbz r5, 0x1d(r1)
/* 81464950 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81464954 | 40 82 00 74 */	bne .L_814649C8
/* 81464958 | 88 61 00 25 */	lbz r3, 0x25(r1)
/* 8146495C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464960 | 41 82 00 24 */	beq .L_81464984
/* 81464964 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81464968 | A0 81 00 50 */	lhz r4, 0x50(r1)
/* 8146496C | 7F A5 EB 78 */	mr r5, r29
/* 81464970 | 4B FF BF C1 */	bl Zi8SetFindCand
/* 81464974 | 7C 64 1B 78 */	mr r4, r3
/* 81464978 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 8146497C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464980 | 40 82 01 24 */	bne .L_81464AA4
.L_81464984:
/* 81464984 | 3B C0 00 00 */	li r30, 0x0
/* 81464988 | 48 00 00 24 */	b .L_814649AC
.L_8146498C:
/* 8146498C | A0 C1 00 30 */	lhz r6, 0x30(r1)
/* 81464990 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 81464994 | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 81464998 | 57 C3 08 3C */	slwi r3, r30, 1
/* 8146499C | 7C 64 1A 2E */	lhzx r3, r4, r3
/* 814649A0 | 7C 05 18 40 */	cmplw r5, r3
/* 814649A4 | 41 82 00 14 */	beq .L_814649B8
/* 814649A8 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814649AC:
/* 814649AC | 88 A1 00 28 */	lbz r5, 0x28(r1)
/* 814649B0 | 7C 1E 28 00 */	cmpw r30, r5
/* 814649B4 | 41 80 FF D8 */	blt .L_8146498C
.L_814649B8:
/* 814649B8 | 88 81 00 28 */	lbz r4, 0x28(r1)
/* 814649BC | 7C 1E 20 00 */	cmpw r30, r4
/* 814649C0 | 41 80 00 E4 */	blt .L_81464AA4
/* 814649C4 | 48 00 00 24 */	b .L_814649E8
.L_814649C8:
/* 814649C8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814649CC | 38 80 00 01 */	li r4, 0x1
/* 814649D0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814649D4 | 7F A5 EB 78 */	mr r5, r29
/* 814649D8 | 48 01 74 19 */	bl Zi8IsDupWordW
/* 814649DC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814649E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814649E4 | 40 82 00 C0 */	bne .L_81464AA4
.L_814649E8:
/* 814649E8 | A0 01 00 52 */	lhz r0, 0x52(r1)
/* 814649EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814649F0 | 40 82 00 A8 */	bne .L_81464A98
/* 814649F4 | 80 61 00 7C */	lwz r3, 0x7c(r1)
/* 814649F8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814649FC | 90 61 00 7C */	stw r3, 0x7c(r1)
/* 81464A00 | 88 DC 00 00 */	lbz r6, 0x0(r28)
/* 81464A04 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81464A08 | 40 82 00 58 */	bne .L_81464A60
/* 81464A0C | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 81464A10 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81464A14 | 98 01 00 28 */	stb r0, 0x28(r1)
/* 81464A18 | A0 A1 00 30 */	lhz r5, 0x30(r1)
/* 81464A1C | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 81464A20 | 80 61 00 74 */	lwz r3, 0x74(r1)
/* 81464A24 | 54 60 08 3C */	slwi r0, r3, 1
/* 81464A28 | 7C A4 03 2E */	sthx r5, r4, r0
/* 81464A2C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81464A30 | 90 61 00 74 */	stw r3, 0x74(r1)
/* 81464A34 | 88 61 00 1D */	lbz r3, 0x1d(r1)
/* 81464A38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81464A3C | 41 82 00 34 */	beq .L_81464A70
/* 81464A40 | 38 C0 00 20 */	li r6, 0x20
/* 81464A44 | 80 A1 00 78 */	lwz r5, 0x78(r1)
/* 81464A48 | 80 81 00 74 */	lwz r4, 0x74(r1)
/* 81464A4C | 54 83 08 3C */	slwi r3, r4, 1
/* 81464A50 | 7C C5 1B 2E */	sthx r6, r5, r3
/* 81464A54 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81464A58 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81464A5C | 48 00 00 14 */	b .L_81464A70
.L_81464A60:
/* 81464A60 | 80 C1 00 7C */	lwz r6, 0x7c(r1)
/* 81464A64 | 80 BC 00 0C */	lwz r5, 0xc(r28)
/* 81464A68 | 7C 06 28 00 */	cmpw r6, r5
/* 81464A6C | 40 80 00 64 */	bge .L_81464AD0
.L_81464A70:
/* 81464A70 | 88 A1 00 28 */	lbz r5, 0x28(r1)
/* 81464A74 | 54 A6 06 3E */	clrlwi r6, r5, 24
/* 81464A78 | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 81464A7C | 7C 06 20 40 */	cmplw r6, r4
/* 81464A80 | 40 80 00 50 */	bge .L_81464AD0
/* 81464A84 | 80 A1 00 74 */	lwz r5, 0x74(r1)
/* 81464A88 | 80 01 00 70 */	lwz r0, 0x70(r1)
/* 81464A8C | 7C 05 00 00 */	cmpw r5, r0
/* 81464A90 | 40 81 00 14 */	ble .L_81464AA4
/* 81464A94 | 48 00 00 3C */	b .L_81464AD0
.L_81464A98:
/* 81464A98 | A0 A1 00 52 */	lhz r5, 0x52(r1)
/* 81464A9C | 38 65 FF FF */	subi r3, r5, 0x1
/* 81464AA0 | B0 61 00 52 */	sth r3, 0x52(r1)
.L_81464AA4:
/* 81464AA4 | A0 81 00 50 */	lhz r4, 0x50(r1)
/* 81464AA8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81464AAC | B0 01 00 50 */	sth r0, 0x50(r1)
/* 81464AB0 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81464AB4 | 38 64 00 0C */	addi r3, r4, 0xc
/* 81464AB8 | 90 61 00 88 */	stw r3, 0x88(r1)
.L_81464ABC:
/* 81464ABC | A0 01 00 50 */	lhz r0, 0x50(r1)
/* 81464AC0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81464AC4 | A0 61 00 56 */	lhz r3, 0x56(r1)
/* 81464AC8 | 7C 04 18 40 */	cmplw r4, r3
/* 81464ACC | 41 80 FC 98 */	blt .L_81464764
.L_81464AD0:
/* 81464AD0 | 88 01 00 1D */	lbz r0, 0x1d(r1)
/* 81464AD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464AD8 | 41 82 00 2C */	beq .L_81464B04
/* 81464ADC | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81464AE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464AE4 | 41 82 00 20 */	beq .L_81464B04
/* 81464AE8 | 38 60 00 00 */	li r3, 0x0
/* 81464AEC | 80 A1 00 78 */	lwz r5, 0x78(r1)
/* 81464AF0 | 80 81 00 74 */	lwz r4, 0x74(r1)
/* 81464AF4 | 54 80 08 3C */	slwi r0, r4, 1
/* 81464AF8 | 7C 65 03 2E */	sthx r3, r5, r0
/* 81464AFC | 38 64 00 01 */	addi r3, r4, 0x1
/* 81464B00 | 90 61 00 74 */	stw r3, 0x74(r1)
.L_81464B04:
/* 81464B04 | 88 01 00 28 */	lbz r0, 0x28(r1)
/* 81464B08 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 81464B0C | 38 60 00 64 */	li r3, 0x64
/* 81464B10 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81464B14 | 7F A4 EB 78 */	mr r4, r29
/* 81464B18 | 48 01 F9 65 */	bl Zi8LogError
/* 81464B1C | 80 61 00 7C */	lwz r3, 0x7c(r1)
/* 81464B20 | 83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 81464B24 | 83 C1 01 38 */	lwz r30, 0x138(r1)
/* 81464B28 | 83 A1 01 34 */	lwz r29, 0x134(r1)
/* 81464B2C | 83 81 01 30 */	lwz r28, 0x130(r1)
/* 81464B30 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 81464B34 | 7C 08 03 A6 */	mtlr r0
/* 81464B38 | 38 21 01 40 */	addi r1, r1, 0x140
/* 81464B3C | 4E 80 00 20 */	blr
.endfn Zi8Get1KeyPressCandidates

# .text:0x4D48 | 0x81464B40 | size: 0x68C
.fn Zi8ZHCheckSpelling, global
/* 81464B40 | 94 21 FE A0 */	stwu r1, -0x160(r1)
/* 81464B44 | 7C 08 02 A6 */	mflr r0
/* 81464B48 | 90 01 01 64 */	stw r0, 0x164(r1)
/* 81464B4C | 39 61 01 60 */	addi r11, r1, 0x160
/* 81464B50 | 48 19 49 71 */	bl _savegpr_27
/* 81464B54 | 7C 7E 1B 78 */	mr r30, r3
/* 81464B58 | 7C 9C 23 78 */	mr r28, r4
/* 81464B5C | 7C BB 2B 78 */	mr r27, r5
/* 81464B60 | 7C DD 33 78 */	mr r29, r6
/* 81464B64 | 38 00 00 00 */	li r0, 0x0
/* 81464B68 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 81464B6C | 38 00 00 00 */	li r0, 0x0
/* 81464B70 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 81464B74 | 38 60 00 64 */	li r3, 0x64
/* 81464B78 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81464B7C | 7F A4 EB 78 */	mr r4, r29
/* 81464B80 | 48 01 F8 FD */	bl Zi8LogError
/* 81464B84 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 81464B88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464B8C | 40 82 00 18 */	bne .L_81464BA4
/* 81464B90 | 38 60 01 87 */	li r3, 0x187
/* 81464B94 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81464B98 | 7F A4 EB 78 */	mr r4, r29
/* 81464B9C | 48 01 F8 E5 */	bl Zi8ReplaceLastError
/* 81464BA0 | 48 00 06 10 */	b .L_814651B0
.L_81464BA4:
/* 81464BA4 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 81464BA8 | 28 00 F3 05 */	cmplwi r0, 0xf305
/* 81464BAC | 41 80 00 1C */	blt .L_81464BC8
/* 81464BB0 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 81464BB4 | 28 00 F3 29 */	cmplwi r0, 0xf329
/* 81464BB8 | 41 81 00 10 */	bgt .L_81464BC8
/* 81464BBC | 38 00 00 00 */	li r0, 0x0
/* 81464BC0 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 81464BC4 | 48 00 00 0C */	b .L_81464BD0
.L_81464BC8:
/* 81464BC8 | 38 00 00 01 */	li r0, 0x1
/* 81464BCC | 98 01 00 0F */	stb r0, 0xf(r1)
.L_81464BD0:
/* 81464BD0 | 38 60 00 01 */	li r3, 0x1
/* 81464BD4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81464BD8 | 7F A4 EB 78 */	mr r4, r29
/* 81464BDC | 4B FF A8 99 */	bl Zi8GetFormatVersion
/* 81464BE0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81464BE4 | 28 00 00 04 */	cmplwi r0, 0x4
/* 81464BE8 | 41 80 00 28 */	blt .L_81464C10
/* 81464BEC | 38 60 00 01 */	li r3, 0x1
/* 81464BF0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81464BF4 | 38 80 00 1A */	li r4, 0x1a
/* 81464BF8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81464BFC | 7F A5 EB 78 */	mr r5, r29
/* 81464C00 | 4B FF A8 31 */	bl Zi8GetTableCount
/* 81464C04 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81464C08 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81464C0C | 48 00 00 0C */	b .L_81464C18
.L_81464C10:
/* 81464C10 | 38 00 00 00 */	li r0, 0x0
/* 81464C14 | 90 01 00 18 */	stw r0, 0x18(r1)
.L_81464C18:
/* 81464C18 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81464C1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464C20 | 41 82 00 20 */	beq .L_81464C40
/* 81464C24 | 38 60 00 01 */	li r3, 0x1
/* 81464C28 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81464C2C | 38 80 00 1A */	li r4, 0x1a
/* 81464C30 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81464C34 | 7F A5 EB 78 */	mr r5, r29
/* 81464C38 | 4B FF A7 79 */	bl Zi8GetTableAddress
/* 81464C3C | 90 61 00 28 */	stw r3, 0x28(r1)
.L_81464C40:
/* 81464C40 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 81464C44 | 28 00 F3 05 */	cmplwi r0, 0xf305
/* 81464C48 | 41 80 00 54 */	blt .L_81464C9C
/* 81464C4C | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 81464C50 | 28 00 F3 29 */	cmplwi r0, 0xf329
/* 81464C54 | 41 81 00 48 */	bgt .L_81464C9C
/* 81464C58 | 38 00 00 00 */	li r0, 0x0
/* 81464C5C | 98 01 00 0F */	stb r0, 0xf(r1)
/* 81464C60 | 38 60 00 01 */	li r3, 0x1
/* 81464C64 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81464C68 | 38 80 00 04 */	li r4, 0x4
/* 81464C6C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81464C70 | 7F A5 EB 78 */	mr r5, r29
/* 81464C74 | 4B FF A7 3D */	bl Zi8GetTableAddress
/* 81464C78 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 81464C7C | 38 60 00 01 */	li r3, 0x1
/* 81464C80 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81464C84 | 38 80 00 04 */	li r4, 0x4
/* 81464C88 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81464C8C | 7F A5 EB 78 */	mr r5, r29
/* 81464C90 | 4B FF A7 A1 */	bl Zi8GetTableCount
/* 81464C94 | B0 61 00 16 */	sth r3, 0x16(r1)
/* 81464C98 | 48 00 00 44 */	b .L_81464CDC
.L_81464C9C:
/* 81464C9C | 38 00 00 01 */	li r0, 0x1
/* 81464CA0 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 81464CA4 | 38 60 00 01 */	li r3, 0x1
/* 81464CA8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81464CAC | 38 80 00 03 */	li r4, 0x3
/* 81464CB0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81464CB4 | 7F A5 EB 78 */	mr r5, r29
/* 81464CB8 | 4B FF A6 F9 */	bl Zi8GetTableAddress
/* 81464CBC | 90 61 00 24 */	stw r3, 0x24(r1)
/* 81464CC0 | 38 60 00 01 */	li r3, 0x1
/* 81464CC4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81464CC8 | 38 80 00 03 */	li r4, 0x3
/* 81464CCC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81464CD0 | 7F A5 EB 78 */	mr r5, r29
/* 81464CD4 | 4B FF A7 5D */	bl Zi8GetTableCount
/* 81464CD8 | B0 61 00 16 */	sth r3, 0x16(r1)
.L_81464CDC:
/* 81464CDC | 3B E0 00 00 */	li r31, 0x0
/* 81464CE0 | 93 E1 00 20 */	stw r31, 0x20(r1)
/* 81464CE4 | 48 00 02 80 */	b .L_81464F64
.L_81464CE8:
/* 81464CE8 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464CEC | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 81464CF0 | 3C 60 00 01 */	lis r3, 0x1
/* 81464CF4 | 38 63 F3 33 */	subi r3, r3, 0xccd
/* 81464CF8 | 7C 00 18 00 */	cmpw r0, r3
/* 81464CFC | 41 82 00 50 */	beq .L_81464D4C
/* 81464D00 | 40 80 00 1C */	bge .L_81464D1C
/* 81464D04 | 3C 60 00 01 */	lis r3, 0x1
/* 81464D08 | 38 63 F3 31 */	subi r3, r3, 0xccf
/* 81464D0C | 7C 00 18 00 */	cmpw r0, r3
/* 81464D10 | 41 82 00 24 */	beq .L_81464D34
/* 81464D14 | 40 80 00 2C */	bge .L_81464D40
/* 81464D18 | 48 00 02 48 */	b .L_81464F60
.L_81464D1C:
/* 81464D1C | 3C 60 00 01 */	lis r3, 0x1
/* 81464D20 | 38 63 F3 35 */	subi r3, r3, 0xccb
/* 81464D24 | 7C 00 18 00 */	cmpw r0, r3
/* 81464D28 | 41 82 00 3C */	beq .L_81464D64
/* 81464D2C | 40 80 02 34 */	bge .L_81464F60
/* 81464D30 | 48 00 00 28 */	b .L_81464D58
.L_81464D34:
/* 81464D34 | 38 00 00 01 */	li r0, 0x1
/* 81464D38 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81464D3C | 48 00 00 30 */	b .L_81464D6C
.L_81464D40:
/* 81464D40 | 38 00 00 02 */	li r0, 0x2
/* 81464D44 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81464D48 | 48 00 00 24 */	b .L_81464D6C
.L_81464D4C:
/* 81464D4C | 38 00 00 04 */	li r0, 0x4
/* 81464D50 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81464D54 | 48 00 00 18 */	b .L_81464D6C
.L_81464D58:
/* 81464D58 | 38 00 00 08 */	li r0, 0x8
/* 81464D5C | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81464D60 | 48 00 00 0C */	b .L_81464D6C
.L_81464D64:
/* 81464D64 | 38 00 00 10 */	li r0, 0x10
/* 81464D68 | 98 01 00 0D */	stb r0, 0xd(r1)
.L_81464D6C:
/* 81464D6C | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 81464D70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464D74 | 41 82 01 D4 */	beq .L_81464F48
.L_81464D78:
/* 81464D78 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81464D7C | 7C 60 F8 50 */	subf r3, r0, r31
/* 81464D80 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81464D84 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81464D88 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81464D8C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81464D90 | 40 81 04 20 */	ble .L_814651B0
/* 81464D94 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 81464D98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464D9C | 41 82 00 38 */	beq .L_81464DD4
/* 81464DA0 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81464DA4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81464DA8 | 7C 7E 02 14 */	add r3, r30, r0
/* 81464DAC | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81464DB0 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81464DB4 | 38 A1 00 50 */	addi r5, r1, 0x50
/* 81464DB8 | 38 C1 00 30 */	addi r6, r1, 0x30
/* 81464DBC | 38 E1 00 0E */	addi r7, r1, 0xe
/* 81464DC0 | 39 01 00 14 */	addi r8, r1, 0x14
/* 81464DC4 | 39 21 00 12 */	addi r9, r1, 0x12
/* 81464DC8 | 7F AA EB 78 */	mr r10, r29
/* 81464DCC | 48 01 90 1D */	bl Zi8GetPyPhonetic
/* 81464DD0 | 48 00 00 48 */	b .L_81464E18
.L_81464DD4:
/* 81464DD4 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81464DD8 | 54 00 08 3C */	slwi r0, r0, 1
/* 81464DDC | 7C 7E 02 14 */	add r3, r30, r0
/* 81464DE0 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81464DE4 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81464DE8 | 38 A1 00 50 */	addi r5, r1, 0x50
/* 81464DEC | 38 C1 00 30 */	addi r6, r1, 0x30
/* 81464DF0 | 38 E1 00 14 */	addi r7, r1, 0x14
/* 81464DF4 | 39 01 00 12 */	addi r8, r1, 0x12
/* 81464DF8 | 7F A9 EB 78 */	mr r9, r29
/* 81464DFC | 48 01 9B F9 */	bl Zi8GetBpmfPhonetic
/* 81464E00 | 98 61 00 0E */	stb r3, 0xe(r1)
/* 81464E04 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 81464E08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464E0C | 40 82 00 0C */	bne .L_81464E18
/* 81464E10 | 38 00 00 01 */	li r0, 0x1
/* 81464E14 | 98 01 00 0E */	stb r0, 0xe(r1)
.L_81464E18:
/* 81464E18 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81464E1C | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 81464E20 | 7C 03 00 00 */	cmpw r3, r0
/* 81464E24 | 41 82 00 24 */	beq .L_81464E48
/* 81464E28 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 81464E2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464E30 | 41 82 03 80 */	beq .L_814651B0
/* 81464E34 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 81464E38 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 81464E3C | 7C 03 02 14 */	add r0, r3, r0
/* 81464E40 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81464E44 | 4B FF FF 34 */	b .L_81464D78
.L_81464E48:
/* 81464E48 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81464E4C | 54 00 05 F8 */	rlwinm r0, r0, 0, 23, 28
/* 81464E50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464E54 | 41 82 00 10 */	beq .L_81464E64
/* 81464E58 | 38 00 00 00 */	li r0, 0x0
/* 81464E5C | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81464E60 | 48 00 00 0C */	b .L_81464E6C
.L_81464E64:
/* 81464E64 | 38 00 00 01 */	li r0, 0x1
/* 81464E68 | 98 01 00 08 */	stb r0, 0x8(r1)
.L_81464E6C:
/* 81464E6C | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 81464E70 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81464E74 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81464E78 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 81464E7C | 54 00 C6 3E */	extrwi r0, r0, 8, 16
/* 81464E80 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81464E84 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81464E88 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81464E8C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81464E90 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81464E94 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81464E98 | 54 00 C6 3E */	extrwi r0, r0, 8, 16
/* 81464E9C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81464EA0 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81464EA4 | 38 00 00 00 */	li r0, 0x0
/* 81464EA8 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81464EAC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81464EB0 | 48 00 00 88 */	b .L_81464F38
.L_81464EB4:
/* 81464EB4 | 88 A1 00 0B */	lbz r5, 0xb(r1)
/* 81464EB8 | 88 81 00 0C */	lbz r4, 0xc(r1)
/* 81464EBC | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81464EC0 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81464EC4 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 81464EC8 | 7C 80 00 38 */	and r0, r4, r0
/* 81464ECC | 7C 05 00 00 */	cmpw r5, r0
/* 81464ED0 | 40 82 00 50 */	bne .L_81464F20
/* 81464ED4 | 88 A1 00 09 */	lbz r5, 0x9(r1)
/* 81464ED8 | 88 81 00 0A */	lbz r4, 0xa(r1)
/* 81464EDC | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81464EE0 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81464EE4 | 7C 60 1A 14 */	add r3, r0, r3
/* 81464EE8 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81464EEC | 7C 80 00 38 */	and r0, r4, r0
/* 81464EF0 | 7C 05 00 00 */	cmpw r5, r0
/* 81464EF4 | 40 82 00 2C */	bne .L_81464F20
/* 81464EF8 | 88 81 00 0D */	lbz r4, 0xd(r1)
/* 81464EFC | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 81464F00 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81464F04 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 81464F08 | 7C 80 00 38 */	and r0, r4, r0
/* 81464F0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464F10 | 40 82 00 38 */	bne .L_81464F48
/* 81464F14 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81464F18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81464F1C | 41 82 02 94 */	beq .L_814651B0
.L_81464F20:
/* 81464F20 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81464F24 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81464F28 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81464F2C | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81464F30 | 38 03 00 02 */	addi r0, r3, 0x2
/* 81464F34 | 90 01 00 18 */	stw r0, 0x18(r1)
.L_81464F38:
/* 81464F38 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81464F3C | A0 01 00 16 */	lhz r0, 0x16(r1)
/* 81464F40 | 7C 03 00 00 */	cmpw r3, r0
/* 81464F44 | 41 80 FF 70 */	blt .L_81464EB4
.L_81464F48:
/* 81464F48 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464F4C | 7C 7C 02 2E */	lhzx r3, r28, r0
/* 81464F50 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464F54 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81464F58 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 81464F5C | 90 01 00 20 */	stw r0, 0x20(r1)
.L_81464F60:
/* 81464F60 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81464F64:
/* 81464F64 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81464F68 | 7C 1F 00 00 */	cmpw r31, r0
/* 81464F6C | 41 80 FD 7C */	blt .L_81464CE8
/* 81464F70 | 3B E0 00 00 */	li r31, 0x0
/* 81464F74 | 48 00 01 8C */	b .L_81465100
.L_81464F78:
/* 81464F78 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464F7C | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81464F80 | 28 00 00 61 */	cmplwi r0, 0x61
/* 81464F84 | 41 80 00 38 */	blt .L_81464FBC
/* 81464F88 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464F8C | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81464F90 | 28 00 00 7A */	cmplwi r0, 0x7a
/* 81464F94 | 41 81 00 28 */	bgt .L_81464FBC
/* 81464F98 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464F9C | 7C 7E 02 2E */	lhzx r3, r30, r0
/* 81464FA0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81464FA4 | 38 03 F3 00 */	subi r0, r3, 0xd00
/* 81464FA8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81464FAC | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464FB0 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 81464FB4 | 7C 83 03 2E */	sthx r4, r3, r0
/* 81464FB8 | 48 00 01 44 */	b .L_814650FC
.L_81464FBC:
/* 81464FBC | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464FC0 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81464FC4 | 28 00 00 27 */	cmplwi r0, 0x27
/* 81464FC8 | 41 82 00 14 */	beq .L_81464FDC
/* 81464FCC | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464FD0 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81464FD4 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 81464FD8 | 40 82 00 48 */	bne .L_81465020
.L_81464FDC:
/* 81464FDC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81464FE0 | 7C 1F 00 00 */	cmpw r31, r0
/* 81464FE4 | 40 80 00 24 */	bge .L_81465008
/* 81464FE8 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464FEC | 7C 9C 02 2E */	lhzx r4, r28, r0
/* 81464FF0 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464FF4 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81464FF8 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81464FFC | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 81465000 | 7C 83 03 2E */	sthx r4, r3, r0
/* 81465004 | 48 00 00 F8 */	b .L_814650FC
.L_81465008:
/* 81465008 | 3C 80 00 01 */	lis r4, 0x1
/* 8146500C | 38 84 F3 60 */	subi r4, r4, 0xca0
/* 81465010 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81465014 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 81465018 | 7C 83 03 2E */	sthx r4, r3, r0
/* 8146501C | 48 00 00 E0 */	b .L_814650FC
.L_81465020:
/* 81465020 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81465024 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81465028 | 28 00 02 C9 */	cmplwi r0, 0x2c9
/* 8146502C | 40 82 00 1C */	bne .L_81465048
/* 81465030 | 3C 80 00 01 */	lis r4, 0x1
/* 81465034 | 38 84 F3 31 */	subi r4, r4, 0xccf
/* 81465038 | 57 E0 08 3C */	slwi r0, r31, 1
/* 8146503C | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 81465040 | 7C 83 03 2E */	sthx r4, r3, r0
/* 81465044 | 48 00 00 B8 */	b .L_814650FC
.L_81465048:
/* 81465048 | 57 E0 08 3C */	slwi r0, r31, 1
/* 8146504C | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81465050 | 28 00 02 CA */	cmplwi r0, 0x2ca
/* 81465054 | 40 82 00 1C */	bne .L_81465070
/* 81465058 | 3C 80 00 01 */	lis r4, 0x1
/* 8146505C | 38 84 F3 32 */	subi r4, r4, 0xcce
/* 81465060 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81465064 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 81465068 | 7C 83 03 2E */	sthx r4, r3, r0
/* 8146506C | 48 00 00 90 */	b .L_814650FC
.L_81465070:
/* 81465070 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81465074 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81465078 | 28 00 02 C7 */	cmplwi r0, 0x2c7
/* 8146507C | 40 82 00 1C */	bne .L_81465098
/* 81465080 | 3C 80 00 01 */	lis r4, 0x1
/* 81465084 | 38 84 F3 33 */	subi r4, r4, 0xccd
/* 81465088 | 57 E0 08 3C */	slwi r0, r31, 1
/* 8146508C | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 81465090 | 7C 83 03 2E */	sthx r4, r3, r0
/* 81465094 | 48 00 00 68 */	b .L_814650FC
.L_81465098:
/* 81465098 | 57 E0 08 3C */	slwi r0, r31, 1
/* 8146509C | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 814650A0 | 28 00 02 CB */	cmplwi r0, 0x2cb
/* 814650A4 | 40 82 00 1C */	bne .L_814650C0
/* 814650A8 | 3C 80 00 01 */	lis r4, 0x1
/* 814650AC | 38 84 F3 34 */	subi r4, r4, 0xccc
/* 814650B0 | 57 E0 08 3C */	slwi r0, r31, 1
/* 814650B4 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 814650B8 | 7C 83 03 2E */	sthx r4, r3, r0
/* 814650BC | 48 00 00 40 */	b .L_814650FC
.L_814650C0:
/* 814650C0 | 57 E0 08 3C */	slwi r0, r31, 1
/* 814650C4 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 814650C8 | 28 00 02 D9 */	cmplwi r0, 0x2d9
/* 814650CC | 40 82 00 1C */	bne .L_814650E8
/* 814650D0 | 3C 80 00 01 */	lis r4, 0x1
/* 814650D4 | 38 84 F3 35 */	subi r4, r4, 0xccb
/* 814650D8 | 57 E0 08 3C */	slwi r0, r31, 1
/* 814650DC | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 814650E0 | 7C 83 03 2E */	sthx r4, r3, r0
/* 814650E4 | 48 00 00 18 */	b .L_814650FC
.L_814650E8:
/* 814650E8 | 57 E0 08 3C */	slwi r0, r31, 1
/* 814650EC | 7C 9E 02 2E */	lhzx r4, r30, r0
/* 814650F0 | 57 E0 08 3C */	slwi r0, r31, 1
/* 814650F4 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 814650F8 | 7C 83 03 2E */	sthx r4, r3, r0
.L_814650FC:
/* 814650FC | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81465100:
/* 81465100 | 57 E0 08 3C */	slwi r0, r31, 1
/* 81465104 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81465108 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146510C | 40 82 FE 6C */	bne .L_81464F78
/* 81465110 | 38 00 00 01 */	li r0, 0x1
/* 81465114 | 98 01 00 90 */	stb r0, 0x90(r1)
/* 81465118 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 8146511C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81465120 | 41 82 00 18 */	beq .L_81465138
/* 81465124 | 38 00 00 01 */	li r0, 0x1
/* 81465128 | 98 01 00 91 */	stb r0, 0x91(r1)
/* 8146512C | 38 00 00 01 */	li r0, 0x1
/* 81465130 | 98 01 00 92 */	stb r0, 0x92(r1)
/* 81465134 | 48 00 00 14 */	b .L_81465148
.L_81465138:
/* 81465138 | 38 00 00 02 */	li r0, 0x2
/* 8146513C | 98 01 00 91 */	stb r0, 0x91(r1)
/* 81465140 | 38 00 00 02 */	li r0, 0x2
/* 81465144 | 98 01 00 92 */	stb r0, 0x92(r1)
.L_81465148:
/* 81465148 | 38 00 00 11 */	li r0, 0x11
/* 8146514C | 98 01 00 93 */	stb r0, 0x93(r1)
/* 81465150 | 38 00 00 00 */	li r0, 0x0
/* 81465154 | 98 01 00 94 */	stb r0, 0x94(r1)
/* 81465158 | 38 01 00 C0 */	addi r0, r1, 0xc0
/* 8146515C | 90 01 00 98 */	stw r0, 0x98(r1)
/* 81465160 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81465164 | 98 01 00 9C */	stb r0, 0x9c(r1)
/* 81465168 | 38 00 00 00 */	li r0, 0x0
/* 8146516C | 90 01 00 A0 */	stw r0, 0xa0(r1)
/* 81465170 | 38 00 00 00 */	li r0, 0x0
/* 81465174 | 98 01 00 A4 */	stb r0, 0xa4(r1)
/* 81465178 | 38 01 00 70 */	addi r0, r1, 0x70
/* 8146517C | 90 01 00 A8 */	stw r0, 0xa8(r1)
/* 81465180 | 38 00 00 01 */	li r0, 0x1
/* 81465184 | 98 01 00 AC */	stb r0, 0xac(r1)
/* 81465188 | 38 00 00 00 */	li r0, 0x0
/* 8146518C | B0 01 00 AE */	sth r0, 0xae(r1)
/* 81465190 | 38 61 00 90 */	addi r3, r1, 0x90
/* 81465194 | 7F A4 EB 78 */	mr r4, r29
/* 81465198 | 48 01 60 0D */	bl _Zi8CheckCandidates
/* 8146519C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814651A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814651A4 | 41 82 00 0C */	beq .L_814651B0
/* 814651A8 | 38 00 00 01 */	li r0, 0x1
/* 814651AC | 98 01 00 10 */	stb r0, 0x10(r1)
.L_814651B0:
/* 814651B0 | 88 61 00 10 */	lbz r3, 0x10(r1)
/* 814651B4 | 39 61 01 60 */	addi r11, r1, 0x160
/* 814651B8 | 48 19 43 55 */	bl _restgpr_27
/* 814651BC | 80 01 01 64 */	lwz r0, 0x164(r1)
/* 814651C0 | 7C 08 03 A6 */	mtlr r0
/* 814651C4 | 38 21 01 60 */	addi r1, r1, 0x160
/* 814651C8 | 4E 80 00 20 */	blr
.endfn Zi8ZHCheckSpelling

# .text:0x53D4 | 0x814651CC | size: 0x34
.fn Zi8SetParentalControls, global
/* 814651CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814651D0 | 7C 08 02 A6 */	mflr r0
/* 814651D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814651D8 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 814651DC | 38 60 02 C9 */	li r3, 0x2c9
/* 814651E0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814651E4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814651E8 | 48 01 F2 95 */	bl Zi8LogError
/* 814651EC | 38 60 00 00 */	li r3, 0x0
/* 814651F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814651F4 | 7C 08 03 A6 */	mtlr r0
/* 814651F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814651FC | 4E 80 00 20 */	blr
.endfn Zi8SetParentalControls

# 0x81617920..0x81617DA0 | size: 0x480
.rodata
.balign 8

# .rodata:0x0 | 0x81617920 | size: 0x80
.obj zi8ZYinitialSpelling, global
	.4byte 0x00000000
	.4byte 0xEFF20000
	.4byte 0x0000EFF2
	.4byte 0xEFF40000
	.4byte 0x0000EFF4
	.4byte 0xEFF40000
	.4byte 0xEFF10000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF6EFF5
	.4byte 0xEFF6EFF5
	.4byte 0xEFF6EFF5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF20000
	.4byte 0x00000000
	.4byte 0x0000EFF2
	.4byte 0xEFF50000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF30000
	.4byte 0x0000EFF3
	.4byte 0xEFF10000
	.4byte 0x0000EFF3
	.4byte 0xEFF10000
	.4byte 0x0000EFF1
.endobj zi8ZYinitialSpelling

# .rodata:0x80 | 0x816179A0 | size: 0x100
.obj zi8ZYfinalSpelling, global
	.4byte 0x00000000
	.4byte 0xEFF70000
	.4byte 0xEFF70000
	.4byte 0xEFF70000
	.4byte 0xEFF90000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF80000
	.4byte 0xEFF80000
	.4byte 0xEFF80000
	.4byte 0xEFF80000
	.4byte 0xEFF90000
	.4byte 0xEFF90000
	.4byte 0xEFF90000
	.4byte 0xEFF90000
	.4byte 0x00000000
	.4byte 0xEFFAEFF7
	.4byte 0xEFFAEFF7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFFAEFF7
	.4byte 0x00000000
	.4byte 0xEFFA0000
	.4byte 0xEFFAEFF8
	.4byte 0x00000000
	.4byte 0xEFFAEFF8
	.4byte 0xEFFAEFF8
	.4byte 0xEFFAEFF9
	.4byte 0xEFFAEFF9
	.4byte 0xEFFAEFF9
	.4byte 0xEFFAEFF9
	.4byte 0x00000000
	.4byte 0xEFFAEFF7
	.4byte 0xEFFAEFF7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFFAEFF7
	.4byte 0x00000000
	.4byte 0xEFFA0000
	.4byte 0xEFFAEFF8
	.4byte 0xEFFAEFF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFFAEFF9
	.4byte 0xEFFAEFF9
	.4byte 0xEFFAEFF9
	.4byte 0xEFFAEFF9
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFFAEFF7
	.4byte 0x00000000
	.4byte 0xEFFA0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFFAEFF9
	.4byte 0x00000000
	.4byte 0xEFFAEFF9
	.4byte 0xEFFAEFF9
.endobj zi8ZYfinalSpelling

# .rodata:0x180 | 0x81617AA0 | size: 0x100
.obj zi8PYinitialSpelling, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF30000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF80000
	.4byte 0xEFF50000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF70000
	.4byte 0xEFF90000
	.4byte 0x00000000
	.4byte 0xEFF60000
	.4byte 0xEFF90000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF90000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF20000
	.4byte 0xEFF2EFF4
	.4byte 0xEFF70000
	.4byte 0xEFF7EFF4
	.4byte 0xEFF90000
	.4byte 0xEFF9EFF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF60000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF50000
	.4byte 0xEFF70000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF50000
	.4byte 0xEFF30000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF40000
	.4byte 0xEFF20000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF70000
.endobj zi8PYinitialSpelling

# .rodata:0x280 | 0x81617BA0 | size: 0x200
.obj zi8PYfinalSpelling, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF4EFF2
	.4byte 0xEFF60000
	.4byte 0xEFF4EFF2
	.4byte 0xEFF60000
	.4byte 0xEFF4EFF2
	.4byte 0xEFF6EFF4
	.4byte 0xEFF4EFF2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF40000
	.4byte 0x00000000
	.4byte 0xEFF4EFF3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF4EFF8
	.4byte 0x00000000
	.4byte 0xEFF4EFF6
	.4byte 0x00000000
	.4byte 0xEFF4EFF6
	.4byte 0xEFF40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF4EFF6
	.4byte 0xEFF6EFF4
	.4byte 0xEFF8EFF2
	.4byte 0xEFF60000
	.4byte 0xEFF8EFF2
	.4byte 0xEFF6EFF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF8EFF2
	.4byte 0xEFF40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF8EFF2
	.4byte 0x00000000
	.4byte 0xEFF80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF8EFF6
	.4byte 0x00000000
	.4byte 0xEFF8EFF4
	.4byte 0x00000000
	.4byte 0xEFF8EFF6
	.4byte 0x00000000
	.4byte 0xEFF8EFF3
	.4byte 0x00000000
	.4byte 0xEFF2EFF6
	.4byte 0x00000000
	.4byte 0xEFF2EFF6
	.4byte 0xEFF40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF20000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF2EFF4
	.4byte 0x00000000
	.4byte 0xEFF2EFF6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF6EFF6
	.4byte 0xEFF40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF6EFF8
	.4byte 0x00000000
	.4byte 0xEFF60000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF3EFF6
	.4byte 0x00000000
	.4byte 0xEFF3EFF6
	.4byte 0xEFF40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF3EFF7
	.4byte 0x00000000
	.4byte 0xEFF30000
	.4byte 0x00000000
	.4byte 0xEFF3EFF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xEFF80000
	.4byte 0x00000000
	.4byte 0xEFF8EFF2
	.4byte 0xEFF60000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj zi8PYfinalSpelling

# 0x81694FF8..0x81695000 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694FF8 | size: 0x8
.obj Zi8SOpinyinArray, global
	.4byte 0x03030107
	.4byte 0x05000000
.endobj Zi8SOpinyinArray
