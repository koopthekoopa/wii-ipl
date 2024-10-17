.include "macros.inc"
.file "zi8cand.c"

# 0x81330510..0x81330540 | size: 0x30
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330510 | size: 0x8
.obj "@etb_81330510", local
.hidden "@etb_81330510"
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
.endobj "@etb_81330510"

# extab:0x8 | 0x81330518 | size: 0x8
.obj "@etb_81330518", local
.hidden "@etb_81330518"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r22-r31
 */
	.4byte 0x50080000
	.4byte 0x00000000
.endobj "@etb_81330518"

# extab:0x10 | 0x81330520 | size: 0x8
.obj "@etb_81330520", local
.hidden "@etb_81330520"
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
.endobj "@etb_81330520"

# extab:0x18 | 0x81330528 | size: 0x8
.obj "@etb_81330528", local
.hidden "@etb_81330528"
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
.endobj "@etb_81330528"

# extab:0x20 | 0x81330530 | size: 0x8
.obj "@etb_81330530", local
.hidden "@etb_81330530"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r25-r31
 */
	.4byte 0x38080000
	.4byte 0x00000000
.endobj "@etb_81330530"

# extab:0x28 | 0x81330538 | size: 0x8
.obj "@etb_81330538", local
.hidden "@etb_81330538"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_81330538"

# 0x81331128..0x81331170 | size: 0x48
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331128 | size: 0xC
.obj "@eti_81331128", local
.hidden "@eti_81331128"
	.4byte Zi8SetFindCand
	.4byte 0x000000C8
	.4byte "@etb_81330510"
.endobj "@eti_81331128"

# extabindex:0xC | 0x81331134 | size: 0xC
.obj "@eti_81331134", local
.hidden "@eti_81331134"
	.4byte ZiMatchZHSpelling
	.4byte 0x000001E4
	.4byte "@etb_81330518"
.endobj "@eti_81331134"

# extabindex:0x18 | 0x81331140 | size: 0xC
.obj "@eti_81331140", local
.hidden "@eti_81331140"
	.4byte Zi8_8146AF10
	.4byte 0x0000A6D0
	.4byte "@etb_81330520"
.endobj "@eti_81331140"

# extabindex:0x24 | 0x8133114C | size: 0xC
.obj "@eti_8133114C", local
.hidden "@eti_8133114C"
	.4byte Zi8_814755E0
	.4byte 0x00000BCC
	.4byte "@etb_81330528"
.endobj "@eti_8133114C"

# extabindex:0x30 | 0x81331158 | size: 0xC
.obj "@eti_81331158", local
.hidden "@eti_81331158"
	.4byte Zi8GetElementCount
	.4byte 0x000001CC
	.4byte "@etb_81330530"
.endobj "@eti_81331158"

# extabindex:0x3C | 0x81331164 | size: 0xC
.obj "@eti_81331164", local
.hidden "@eti_81331164"
	.4byte Zi8GetChineseCandidates
	.4byte 0x0000026C
	.4byte "@etb_81330538"
.endobj "@eti_81331164"

# 0x8146AB1C..0x814765E4 | size: 0xBAC8
.text
.balign 4

# .text:0x0 | 0x8146AB1C | size: 0xC8
.fn Zi8SetFindCand, global
/* 8146AB1C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8146AB20 | 7C 08 02 A6 */	mflr r0
/* 8146AB24 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8146AB28 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8146AB2C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8146AB30 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8146AB34 | 7C 7E 1B 78 */	mr r30, r3
/* 8146AB38 | 7C 9F 23 78 */	mr r31, r4
/* 8146AB3C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8146AB40 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8146AB44 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8146AB48 | 48 01 49 4D */	bl Zi8Ord2Ord
/* 8146AB4C | 7C 7F 1B 78 */	mr r31, r3
/* 8146AB50 | 38 80 00 01 */	li r4, 0x1
/* 8146AB54 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8146AB58 | 54 60 E8 04 */	slwi r0, r3, 29
/* 8146AB5C | 54 63 0F FE */	srwi r3, r3, 31
/* 8146AB60 | 7C 03 00 50 */	subf r0, r3, r0
/* 8146AB64 | 54 00 18 3E */	rotlwi r0, r0, 3
/* 8146AB68 | 7C 00 1A 14 */	add r0, r0, r3
/* 8146AB6C | 7C 83 00 30 */	slw r3, r4, r0
/* 8146AB70 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8146AB74 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8146AB78 | 7C 00 01 94 */	addze r0, r0
/* 8146AB7C | 7C 1E 00 AE */	lbzx r0, r30, r0
/* 8146AB80 | 7C 60 00 38 */	and r0, r3, r0
/* 8146AB84 | 54 1D 06 3E */	clrlwi r29, r0, 24
/* 8146AB88 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8146AB8C | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8146AB90 | 7C C0 01 94 */	addze r6, r0
/* 8146AB94 | 7C BE 30 AE */	lbzx r5, r30, r6
/* 8146AB98 | 38 80 00 01 */	li r4, 0x1
/* 8146AB9C | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8146ABA0 | 54 60 E8 04 */	slwi r0, r3, 29
/* 8146ABA4 | 54 63 0F FE */	srwi r3, r3, 31
/* 8146ABA8 | 7C 03 00 50 */	subf r0, r3, r0
/* 8146ABAC | 54 00 18 3E */	rotlwi r0, r0, 3
/* 8146ABB0 | 7C 00 1A 14 */	add r0, r0, r3
/* 8146ABB4 | 7C 80 00 30 */	slw r0, r4, r0
/* 8146ABB8 | 7C A0 03 78 */	or r0, r5, r0
/* 8146ABBC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8146ABC0 | 7C 1E 31 AE */	stbx r0, r30, r6
/* 8146ABC4 | 7F A3 EB 78 */	mr r3, r29
/* 8146ABC8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8146ABCC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8146ABD0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8146ABD4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8146ABD8 | 7C 08 03 A6 */	mtlr r0
/* 8146ABDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8146ABE0 | 4E 80 00 20 */	blr
.endfn Zi8SetFindCand

# .text:0xC8 | 0x8146ABE4 | size: 0x7C
.fn ZiGetNextPhonetic, global
/* 8146ABE4 | 48 00 00 08 */	b .L_8146ABEC
.L_8146ABE8:
/* 8146ABE8 | 38 63 00 02 */	addi r3, r3, 0x2
.L_8146ABEC:
/* 8146ABEC | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146ABF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146ABF4 | 41 82 00 2C */	beq .L_8146AC20
/* 8146ABF8 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146ABFC | 54 06 04 3E */	clrlwi r6, r0, 16
/* 8146AC00 | A0 05 00 1A */	lhz r0, 0x1a(r5)
/* 8146AC04 | 7C 06 00 40 */	cmplw r6, r0
/* 8146AC08 | 41 82 00 18 */	beq .L_8146AC20
/* 8146AC0C | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146AC10 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 8146AC14 | 41 82 00 0C */	beq .L_8146AC20
/* 8146AC18 | 7C 03 20 40 */	cmplw r3, r4
/* 8146AC1C | 41 80 FF CC */	blt .L_8146ABE8
.L_8146AC20:
/* 8146AC20 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146AC24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146AC28 | 41 82 00 0C */	beq .L_8146AC34
/* 8146AC2C | 7C 03 20 40 */	cmplw r3, r4
/* 8146AC30 | 40 82 00 0C */	bne .L_8146AC3C
.L_8146AC34:
/* 8146AC34 | 38 60 00 00 */	li r3, 0x0
/* 8146AC38 | 48 00 00 24 */	b .L_8146AC5C
.L_8146AC3C:
/* 8146AC3C | 38 63 00 02 */	addi r3, r3, 0x2
/* 8146AC40 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146AC44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146AC48 | 41 82 00 0C */	beq .L_8146AC54
/* 8146AC4C | 7C 03 20 40 */	cmplw r3, r4
/* 8146AC50 | 40 82 00 0C */	bne .L_8146AC5C
.L_8146AC54:
/* 8146AC54 | 38 60 00 00 */	li r3, 0x0
/* 8146AC58 | 48 00 00 04 */	b .L_8146AC5C
.L_8146AC5C:
/* 8146AC5C | 4E 80 00 20 */	blr
.endfn ZiGetNextPhonetic

# .text:0x144 | 0x8146AC60 | size: 0xCC
.fn ZiPartialMatch, global
/* 8146AC60 | 7C 03 20 40 */	cmplw r3, r4
/* 8146AC64 | 41 82 00 24 */	beq .L_8146AC88
/* 8146AC68 | 7C 05 30 40 */	cmplw r5, r6
/* 8146AC6C | 41 82 00 1C */	beq .L_8146AC88
/* 8146AC70 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146AC74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146AC78 | 41 82 00 10 */	beq .L_8146AC88
/* 8146AC7C | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8146AC80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146AC84 | 40 82 00 80 */	bne .L_8146AD04
.L_8146AC88:
/* 8146AC88 | 38 60 00 01 */	li r3, 0x1
/* 8146AC8C | 48 00 00 9C */	b .L_8146AD28
.L_8146AC90:
/* 8146AC90 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8146AC94 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 8146AC98 | A0 08 00 1A */	lhz r0, 0x1a(r8)
/* 8146AC9C | 7C 07 00 40 */	cmplw r7, r0
/* 8146ACA0 | 41 82 00 84 */	beq .L_8146AD24
/* 8146ACA4 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8146ACA8 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 8146ACAC | 41 82 00 78 */	beq .L_8146AD24
/* 8146ACB0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146ACB4 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 8146ACB8 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8146ACBC | 7C 07 00 40 */	cmplw r7, r0
/* 8146ACC0 | 41 82 00 0C */	beq .L_8146ACCC
/* 8146ACC4 | 38 60 00 00 */	li r3, 0x0
/* 8146ACC8 | 48 00 00 60 */	b .L_8146AD28
.L_8146ACCC:
/* 8146ACCC | 38 63 00 02 */	addi r3, r3, 0x2
/* 8146ACD0 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 8146ACD4 | 7C 03 20 40 */	cmplw r3, r4
/* 8146ACD8 | 41 82 00 24 */	beq .L_8146ACFC
/* 8146ACDC | 7C 05 30 40 */	cmplw r5, r6
/* 8146ACE0 | 41 82 00 1C */	beq .L_8146ACFC
/* 8146ACE4 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146ACE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146ACEC | 41 82 00 10 */	beq .L_8146ACFC
/* 8146ACF0 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8146ACF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146ACF8 | 40 82 00 0C */	bne .L_8146AD04
.L_8146ACFC:
/* 8146ACFC | 38 60 00 01 */	li r3, 0x1
/* 8146AD00 | 48 00 00 28 */	b .L_8146AD28
.L_8146AD04:
/* 8146AD04 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146AD08 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 8146AD0C | A0 08 00 1A */	lhz r0, 0x1a(r8)
/* 8146AD10 | 7C 07 00 40 */	cmplw r7, r0
/* 8146AD14 | 41 82 00 10 */	beq .L_8146AD24
/* 8146AD18 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8146AD1C | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 8146AD20 | 40 82 FF 70 */	bne .L_8146AC90
.L_8146AD24:
/* 8146AD24 | 38 60 00 01 */	li r3, 0x1
.L_8146AD28:
/* 8146AD28 | 4E 80 00 20 */	blr
.endfn ZiPartialMatch

# .text:0x210 | 0x8146AD2C | size: 0x1E4
.fn ZiMatchZHSpelling, global
/* 8146AD2C | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8146AD30 | 7C 08 02 A6 */	mflr r0
/* 8146AD34 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 8146AD38 | 39 61 01 30 */	addi r11, r1, 0x130
/* 8146AD3C | 48 18 E7 71 */	bl _savegpr_22
/* 8146AD40 | 7C 9C 23 78 */	mr r28, r4
/* 8146AD44 | 7C B7 2B 78 */	mr r23, r5
/* 8146AD48 | 7C D8 33 78 */	mr r24, r6
/* 8146AD4C | 7C F9 3B 78 */	mr r25, r7
/* 8146AD50 | 7D 1D 43 78 */	mr r29, r8
/* 8146AD54 | 3B 60 00 01 */	li r27, 0x1
/* 8146AD58 | 7F 83 E3 78 */	mr r3, r28
/* 8146AD5C | 7F A4 EB 78 */	mr r4, r29
/* 8146AD60 | 4B FF 47 59 */	bl Zi8WCharCount
/* 8146AD64 | 7C 76 1B 78 */	mr r22, r3
/* 8146AD68 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8146AD6C | 41 82 00 10 */	beq .L_8146AD7C
/* 8146AD70 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8146AD74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146AD78 | 40 82 00 0C */	bne .L_8146AD84
.L_8146AD7C:
/* 8146AD7C | 7F 63 DB 78 */	mr r3, r27
/* 8146AD80 | 48 00 01 78 */	b .L_8146AEF8
.L_8146AD84:
/* 8146AD84 | 3B C0 00 00 */	li r30, 0x0
/* 8146AD88 | 48 00 00 3C */	b .L_8146ADC4
.L_8146AD8C:
/* 8146AD8C | 57 C0 08 3C */	slwi r0, r30, 1
/* 8146AD90 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8146AD94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146AD98 | 41 82 00 20 */	beq .L_8146ADB8
/* 8146AD9C | 57 C0 08 3C */	slwi r0, r30, 1
/* 8146ADA0 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8146ADA4 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8146ADA8 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8146ADAC | 7C 17 02 2E */	lhzx r0, r23, r0
/* 8146ADB0 | 7C 03 00 40 */	cmplw r3, r0
/* 8146ADB4 | 41 82 00 0C */	beq .L_8146ADC0
.L_8146ADB8:
/* 8146ADB8 | 3B 60 00 00 */	li r27, 0x0
/* 8146ADBC | 48 00 00 14 */	b .L_8146ADD0
.L_8146ADC0:
/* 8146ADC0 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8146ADC4:
/* 8146ADC4 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8146ADC8 | 7C 1E 00 00 */	cmpw r30, r0
/* 8146ADCC | 41 80 FF C0 */	blt .L_8146AD8C
.L_8146ADD0:
/* 8146ADD0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8146ADD4 | 40 82 01 20 */	bne .L_8146AEF4
/* 8146ADD8 | 38 00 00 00 */	li r0, 0x0
/* 8146ADDC | B0 01 00 88 */	sth r0, 0x88(r1)
/* 8146ADE0 | 38 00 00 00 */	li r0, 0x0
/* 8146ADE4 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8146ADE8 | 7E E3 BB 78 */	mr r3, r23
/* 8146ADEC | 57 04 06 3E */	clrlwi r4, r24, 24
/* 8146ADF0 | 38 A1 00 88 */	addi r5, r1, 0x88
/* 8146ADF4 | 38 C0 00 40 */	li r6, 0x40
/* 8146ADF8 | 54 C6 04 3E */	clrlwi r6, r6, 16
/* 8146ADFC | 7F A7 EB 78 */	mr r7, r29
/* 8146AE00 | 48 01 51 1D */	bl Zi8ZHaddSpace
/* 8146AE04 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8146AE08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146AE0C | 40 82 00 0C */	bne .L_8146AE18
/* 8146AE10 | 38 60 00 00 */	li r3, 0x0
/* 8146AE14 | 48 00 00 E4 */	b .L_8146AEF8
.L_8146AE18:
/* 8146AE18 | 7F 83 E3 78 */	mr r3, r28
/* 8146AE1C | 56 C4 06 3E */	clrlwi r4, r22, 24
/* 8146AE20 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8146AE24 | 38 C0 00 40 */	li r6, 0x40
/* 8146AE28 | 54 C6 04 3E */	clrlwi r6, r6, 16
/* 8146AE2C | 7F A7 EB 78 */	mr r7, r29
/* 8146AE30 | 48 01 50 ED */	bl Zi8ZHaddSpace
/* 8146AE34 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8146AE38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146AE3C | 40 82 00 0C */	bne .L_8146AE48
/* 8146AE40 | 38 60 00 00 */	li r3, 0x0
/* 8146AE44 | 48 00 00 B4 */	b .L_8146AEF8
.L_8146AE48:
/* 8146AE48 | 3B 41 00 88 */	addi r26, r1, 0x88
/* 8146AE4C | 3B E1 00 08 */	addi r31, r1, 0x8
/* 8146AE50 | 48 00 00 2C */	b .L_8146AE7C
.L_8146AE54:
/* 8146AE54 | 7F E3 FB 78 */	mr r3, r31
/* 8146AE58 | 38 81 00 88 */	addi r4, r1, 0x88
/* 8146AE5C | 7F A5 EB 78 */	mr r5, r29
/* 8146AE60 | 4B FF FD 85 */	bl ZiGetNextPhonetic
/* 8146AE64 | 7C 7F 1B 78 */	mr r31, r3
/* 8146AE68 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8146AE6C | 40 82 00 0C */	bne .L_8146AE78
/* 8146AE70 | 38 60 00 00 */	li r3, 0x0
/* 8146AE74 | 48 00 00 84 */	b .L_8146AEF8
.L_8146AE78:
/* 8146AE78 | 3B 39 FF FF */	subi r25, r25, 0x1
.L_8146AE7C:
/* 8146AE7C | 57 20 04 3E */	clrlwi r0, r25, 16
/* 8146AE80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146AE84 | 40 82 FF D0 */	bne .L_8146AE54
/* 8146AE88 | 3B 60 00 01 */	li r27, 0x1
/* 8146AE8C | 48 00 00 58 */	b .L_8146AEE4
.L_8146AE90:
/* 8146AE90 | 7F 43 D3 78 */	mr r3, r26
/* 8146AE94 | 38 81 01 08 */	addi r4, r1, 0x108
/* 8146AE98 | 7F E5 FB 78 */	mr r5, r31
/* 8146AE9C | 38 C1 00 88 */	addi r6, r1, 0x88
/* 8146AEA0 | 57 27 04 3E */	clrlwi r7, r25, 16
/* 8146AEA4 | 7F A8 EB 78 */	mr r8, r29
/* 8146AEA8 | 4B FF FD B9 */	bl ZiPartialMatch
/* 8146AEAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146AEB0 | 40 82 00 0C */	bne .L_8146AEBC
/* 8146AEB4 | 38 60 00 00 */	li r3, 0x0
/* 8146AEB8 | 48 00 00 40 */	b .L_8146AEF8
.L_8146AEBC:
/* 8146AEBC | 7F 43 D3 78 */	mr r3, r26
/* 8146AEC0 | 38 81 01 08 */	addi r4, r1, 0x108
/* 8146AEC4 | 7F A5 EB 78 */	mr r5, r29
/* 8146AEC8 | 4B FF FD 1D */	bl ZiGetNextPhonetic
/* 8146AECC | 7C 7A 1B 78 */	mr r26, r3
/* 8146AED0 | 7F E3 FB 78 */	mr r3, r31
/* 8146AED4 | 38 81 00 88 */	addi r4, r1, 0x88
/* 8146AED8 | 7F A5 EB 78 */	mr r5, r29
/* 8146AEDC | 4B FF FD 09 */	bl ZiGetNextPhonetic
/* 8146AEE0 | 7C 7F 1B 78 */	mr r31, r3
.L_8146AEE4:
/* 8146AEE4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8146AEE8 | 41 82 00 0C */	beq .L_8146AEF4
/* 8146AEEC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8146AEF0 | 40 82 FF A0 */	bne .L_8146AE90
.L_8146AEF4:
/* 8146AEF4 | 7F 63 DB 78 */	mr r3, r27
.L_8146AEF8:
/* 8146AEF8 | 39 61 01 30 */	addi r11, r1, 0x130
/* 8146AEFC | 48 18 E5 FD */	bl _restgpr_22
/* 8146AF00 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 8146AF04 | 7C 08 03 A6 */	mtlr r0
/* 8146AF08 | 38 21 01 30 */	addi r1, r1, 0x130
/* 8146AF0C | 4E 80 00 20 */	blr
.endfn ZiMatchZHSpelling

# .text:0x3F4 | 0x8146AF10 | size: 0xA6D0
.fn Zi8_8146AF10, global
/* 8146AF10 | 94 21 FB 20 */	stwu r1, -0x4e0(r1)
/* 8146AF14 | 7C 08 02 A6 */	mflr r0
/* 8146AF18 | 90 01 04 E4 */	stw r0, 0x4e4(r1)
/* 8146AF1C | 39 61 04 E0 */	addi r11, r1, 0x4e0
/* 8146AF20 | 48 18 E5 A1 */	bl _savegpr_27
/* 8146AF24 | 7C 7F 1B 78 */	mr r31, r3
/* 8146AF28 | 7C 9D 23 78 */	mr r29, r4
/* 8146AF2C | 7C BE 2B 78 */	mr r30, r5
/* 8146AF30 | 38 E1 02 D4 */	addi r7, r1, 0x2d4
/* 8146AF34 | 38 C0 00 00 */	li r6, 0x0
/* 8146AF38 | 38 A0 00 3D */	li r5, 0x3d
/* 8146AF3C | 7C A9 03 A6 */	mtctr r5
.L_8146AF40:
/* 8146AF40 | 90 C7 00 04 */	stw r6, 0x4(r7)
/* 8146AF44 | 94 C7 00 08 */	stwu r6, 0x8(r7)
/* 8146AF48 | 42 00 FF F8 */	bdnz .L_8146AF40
/* 8146AF4C | 90 C7 00 04 */	stw r6, 0x4(r7)
/* 8146AF50 | B0 C7 00 08 */	sth r6, 0x8(r7)
/* 8146AF54 | 38 80 00 00 */	li r4, 0x0
/* 8146AF58 | 98 81 00 6E */	stb r4, 0x6e(r1)
/* 8146AF5C | 38 60 00 00 */	li r3, 0x0
/* 8146AF60 | 98 61 00 6D */	stb r3, 0x6d(r1)
/* 8146AF64 | 39 80 00 00 */	li r12, 0x0
/* 8146AF68 | 91 81 01 08 */	stw r12, 0x108(r1)
/* 8146AF6C | 39 60 00 00 */	li r11, 0x0
/* 8146AF70 | 91 61 01 04 */	stw r11, 0x104(r1)
/* 8146AF74 | 38 E0 00 00 */	li r7, 0x0
/* 8146AF78 | B0 E1 00 98 */	sth r7, 0x98(r1)
/* 8146AF7C | 39 40 00 00 */	li r10, 0x0
/* 8146AF80 | B1 41 00 96 */	sth r10, 0x96(r1)
/* 8146AF84 | 39 20 00 00 */	li r9, 0x0
/* 8146AF88 | B1 21 00 94 */	sth r9, 0x94(r1)
/* 8146AF8C | 39 00 00 00 */	li r8, 0x0
/* 8146AF90 | B1 01 00 92 */	sth r8, 0x92(r1)
/* 8146AF94 | 38 60 00 00 */	li r3, 0x0
/* 8146AF98 | B0 61 00 90 */	sth r3, 0x90(r1)
/* 8146AF9C | 38 80 00 00 */	li r4, 0x0
/* 8146AFA0 | B0 81 00 8E */	sth r4, 0x8e(r1)
/* 8146AFA4 | 38 60 00 00 */	li r3, 0x0
/* 8146AFA8 | B0 61 00 8C */	sth r3, 0x8c(r1)
/* 8146AFAC | 39 20 00 00 */	li r9, 0x0
/* 8146AFB0 | B1 21 00 8A */	sth r9, 0x8a(r1)
/* 8146AFB4 | 39 00 00 00 */	li r8, 0x0
/* 8146AFB8 | B1 01 00 88 */	sth r8, 0x88(r1)
/* 8146AFBC | 38 A0 00 00 */	li r5, 0x0
/* 8146AFC0 | B0 A1 00 86 */	sth r5, 0x86(r1)
/* 8146AFC4 | 38 E0 00 00 */	li r7, 0x0
/* 8146AFC8 | B0 E1 00 84 */	sth r7, 0x84(r1)
/* 8146AFCC | 38 C0 00 00 */	li r6, 0x0
/* 8146AFD0 | B0 C1 00 82 */	sth r6, 0x82(r1)
/* 8146AFD4 | 38 A0 00 00 */	li r5, 0x0
/* 8146AFD8 | B0 A1 00 80 */	sth r5, 0x80(r1)
/* 8146AFDC | 38 80 00 00 */	li r4, 0x0
/* 8146AFE0 | B0 81 00 7E */	sth r4, 0x7e(r1)
/* 8146AFE4 | 39 80 00 00 */	li r12, 0x0
/* 8146AFE8 | B1 81 00 7C */	sth r12, 0x7c(r1)
/* 8146AFEC | 38 80 00 00 */	li r4, 0x0
/* 8146AFF0 | B0 81 00 7A */	sth r4, 0x7a(r1)
/* 8146AFF4 | 39 60 00 00 */	li r11, 0x0
/* 8146AFF8 | B1 61 00 78 */	sth r11, 0x78(r1)
/* 8146AFFC | 39 40 00 00 */	li r10, 0x0
/* 8146B000 | B1 41 00 76 */	sth r10, 0x76(r1)
/* 8146B004 | 38 60 00 00 */	li r3, 0x0
/* 8146B008 | B0 61 00 74 */	sth r3, 0x74(r1)
/* 8146B00C | 38 80 00 00 */	li r4, 0x0
/* 8146B010 | 98 81 00 6C */	stb r4, 0x6c(r1)
/* 8146B014 | 39 20 00 00 */	li r9, 0x0
/* 8146B018 | 99 21 00 6B */	stb r9, 0x6b(r1)
/* 8146B01C | 38 A0 00 00 */	li r5, 0x0
/* 8146B020 | 98 A1 00 6A */	stb r5, 0x6a(r1)
/* 8146B024 | 38 E0 00 00 */	li r7, 0x0
/* 8146B028 | 98 E1 00 69 */	stb r7, 0x69(r1)
/* 8146B02C | 39 00 00 00 */	li r8, 0x0
/* 8146B030 | 99 01 00 68 */	stb r8, 0x68(r1)
/* 8146B034 | 38 C0 00 00 */	li r6, 0x0
/* 8146B038 | 98 C1 00 67 */	stb r6, 0x67(r1)
/* 8146B03C | 38 80 00 00 */	li r4, 0x0
/* 8146B040 | 98 81 00 66 */	stb r4, 0x66(r1)
/* 8146B044 | 38 E0 00 00 */	li r7, 0x0
/* 8146B048 | 98 E1 00 65 */	stb r7, 0x65(r1)
/* 8146B04C | 38 60 00 00 */	li r3, 0x0
/* 8146B050 | 90 61 01 00 */	stw r3, 0x100(r1)
/* 8146B054 | 38 A0 00 00 */	li r5, 0x0
/* 8146B058 | 90 A1 00 FC */	stw r5, 0xfc(r1)
/* 8146B05C | 3B 60 00 00 */	li r27, 0x0
/* 8146B060 | 93 61 00 F8 */	stw r27, 0xf8(r1)
/* 8146B064 | 38 80 00 00 */	li r4, 0x0
/* 8146B068 | 90 81 00 F4 */	stw r4, 0xf4(r1)
/* 8146B06C | 38 C0 00 00 */	li r6, 0x0
/* 8146B070 | 90 C1 00 F0 */	stw r6, 0xf0(r1)
/* 8146B074 | 38 60 00 00 */	li r3, 0x0
/* 8146B078 | 90 61 00 EC */	stw r3, 0xec(r1)
/* 8146B07C | 39 00 00 00 */	li r8, 0x0
/* 8146B080 | 91 01 00 E8 */	stw r8, 0xe8(r1)
/* 8146B084 | 38 A0 00 00 */	li r5, 0x0
/* 8146B088 | 90 A1 00 E4 */	stw r5, 0xe4(r1)
/* 8146B08C | 38 80 00 00 */	li r4, 0x0
/* 8146B090 | 90 81 00 E0 */	stw r4, 0xe0(r1)
/* 8146B094 | 38 E0 00 00 */	li r7, 0x0
/* 8146B098 | 90 E1 00 DC */	stw r7, 0xdc(r1)
/* 8146B09C | 38 C0 00 00 */	li r6, 0x0
/* 8146B0A0 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 8146B0A4 | 38 60 00 00 */	li r3, 0x0
/* 8146B0A8 | 90 61 00 D4 */	stw r3, 0xd4(r1)
/* 8146B0AC | 38 A0 00 00 */	li r5, 0x0
/* 8146B0B0 | 90 A1 00 D0 */	stw r5, 0xd0(r1)
/* 8146B0B4 | 3B 80 00 00 */	li r28, 0x0
/* 8146B0B8 | 93 81 00 CC */	stw r28, 0xcc(r1)
/* 8146B0BC | 39 80 00 00 */	li r12, 0x0
/* 8146B0C0 | 99 81 00 64 */	stb r12, 0x64(r1)
/* 8146B0C4 | 38 80 00 00 */	li r4, 0x0
/* 8146B0C8 | 98 81 00 63 */	stb r4, 0x63(r1)
/* 8146B0CC | 39 60 00 00 */	li r11, 0x0
/* 8146B0D0 | 99 61 00 62 */	stb r11, 0x62(r1)
/* 8146B0D4 | 39 40 00 00 */	li r10, 0x0
/* 8146B0D8 | 99 41 00 61 */	stb r10, 0x61(r1)
/* 8146B0DC | 39 20 00 00 */	li r9, 0x0
/* 8146B0E0 | 99 21 00 60 */	stb r9, 0x60(r1)
/* 8146B0E4 | 38 60 00 00 */	li r3, 0x0
/* 8146B0E8 | 98 61 00 5F */	stb r3, 0x5f(r1)
/* 8146B0EC | 39 00 00 00 */	li r8, 0x0
/* 8146B0F0 | 99 01 00 5E */	stb r8, 0x5e(r1)
/* 8146B0F4 | 38 80 00 00 */	li r4, 0x0
/* 8146B0F8 | 98 81 00 5D */	stb r4, 0x5d(r1)
/* 8146B0FC | 38 A0 00 01 */	li r5, 0x1
/* 8146B100 | 98 A1 00 5C */	stb r5, 0x5c(r1)
/* 8146B104 | 38 E0 00 01 */	li r7, 0x1
/* 8146B108 | 98 E1 00 5B */	stb r7, 0x5b(r1)
/* 8146B10C | 38 C0 00 01 */	li r6, 0x1
/* 8146B110 | 98 C1 00 5A */	stb r6, 0x5a(r1)
/* 8146B114 | A0 9D 00 10 */	lhz r4, 0x10(r29)
/* 8146B118 | 38 A4 FF C0 */	subi r5, r4, 0x40
/* 8146B11C | 90 A1 00 C8 */	stw r5, 0xc8(r1)
/* 8146B120 | 38 60 00 00 */	li r3, 0x0
/* 8146B124 | 90 61 00 C4 */	stw r3, 0xc4(r1)
/* 8146B128 | 39 00 00 00 */	li r8, 0x0
/* 8146B12C | 99 01 00 59 */	stb r8, 0x59(r1)
/* 8146B130 | A0 9F 00 1E */	lhz r4, 0x1e(r31)
/* 8146B134 | B0 81 00 72 */	sth r4, 0x72(r1)
/* 8146B138 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8146B13C | 90 61 00 C0 */	stw r3, 0xc0(r1)
/* 8146B140 | 89 3F 00 04 */	lbz r9, 0x4(r31)
/* 8146B144 | 99 21 00 58 */	stb r9, 0x58(r1)
/* 8146B148 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8146B14C | 90 81 00 BC */	stw r4, 0xbc(r1)
/* 8146B150 | 88 DF 00 14 */	lbz r6, 0x14(r31)
/* 8146B154 | 98 C1 00 57 */	stb r6, 0x57(r1)
/* 8146B158 | 88 BF 00 01 */	lbz r5, 0x1(r31)
/* 8146B15C | 98 A1 00 56 */	stb r5, 0x56(r1)
/* 8146B160 | 88 E1 00 58 */	lbz r7, 0x58(r1)
/* 8146B164 | 54 E4 06 72 */	rlwinm r4, r7, 0, 25, 25
/* 8146B168 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8146B16C | 98 61 00 55 */	stb r3, 0x55(r1)
/* 8146B170 | 88 C1 00 58 */	lbz r6, 0x58(r1)
/* 8146B174 | 54 C8 06 F6 */	rlwinm r8, r6, 0, 27, 27
/* 8146B178 | 55 05 06 3E */	clrlwi r5, r8, 24
/* 8146B17C | 98 A1 00 54 */	stb r5, 0x54(r1)
/* 8146B180 | 88 E1 00 58 */	lbz r7, 0x58(r1)
/* 8146B184 | 54 E4 06 B4 */	rlwinm r4, r7, 0, 26, 26
/* 8146B188 | 54 86 06 3E */	clrlwi r6, r4, 24
/* 8146B18C | 98 C1 00 53 */	stb r6, 0x53(r1)
/* 8146B190 | 38 A0 00 01 */	li r5, 0x1
/* 8146B194 | 98 A1 00 52 */	stb r5, 0x52(r1)
/* 8146B198 | 38 60 00 00 */	li r3, 0x0
/* 8146B19C | 90 61 00 B8 */	stw r3, 0xb8(r1)
/* 8146B1A0 | 39 20 00 00 */	li r9, 0x0
/* 8146B1A4 | 91 21 01 40 */	stw r9, 0x140(r1)
/* 8146B1A8 | 91 21 01 44 */	stw r9, 0x144(r1)
/* 8146B1AC | 91 21 01 48 */	stw r9, 0x148(r1)
/* 8146B1B0 | 91 21 01 4C */	stw r9, 0x14c(r1)
/* 8146B1B4 | 91 21 01 50 */	stw r9, 0x150(r1)
/* 8146B1B8 | 91 21 01 54 */	stw r9, 0x154(r1)
/* 8146B1BC | 39 00 00 00 */	li r8, 0x0
/* 8146B1C0 | 91 01 01 28 */	stw r8, 0x128(r1)
/* 8146B1C4 | 91 01 01 2C */	stw r8, 0x12c(r1)
/* 8146B1C8 | 91 01 01 30 */	stw r8, 0x130(r1)
/* 8146B1CC | 91 01 01 34 */	stw r8, 0x134(r1)
/* 8146B1D0 | 91 01 01 38 */	stw r8, 0x138(r1)
/* 8146B1D4 | 91 01 01 3C */	stw r8, 0x13c(r1)
/* 8146B1D8 | 38 E0 00 01 */	li r7, 0x1
/* 8146B1DC | 98 E1 00 51 */	stb r7, 0x51(r1)
/* 8146B1E0 | 38 80 00 00 */	li r4, 0x0
/* 8146B1E4 | 98 81 00 50 */	stb r4, 0x50(r1)
/* 8146B1E8 | 38 C0 00 00 */	li r6, 0x0
/* 8146B1EC | 98 C1 00 4F */	stb r6, 0x4f(r1)
/* 8146B1F0 | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 8146B1F4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146B1F8 | 41 82 00 0C */	beq .L_8146B204
/* 8146B1FC | 38 81 01 D8 */	addi r4, r1, 0x1d8
/* 8146B200 | 90 81 00 BC */	stw r4, 0xbc(r1)
.L_8146B204:
/* 8146B204 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 8146B208 | 28 03 00 10 */	cmplwi r3, 0x10
/* 8146B20C | 40 82 00 10 */	bne .L_8146B21C
/* 8146B210 | 39 40 00 00 */	li r10, 0x0
/* 8146B214 | 99 41 00 56 */	stb r10, 0x56(r1)
/* 8146B218 | 48 00 00 88 */	b .L_8146B2A0
.L_8146B21C:
/* 8146B21C | 89 21 00 56 */	lbz r9, 0x56(r1)
/* 8146B220 | 28 09 00 0C */	cmplwi r9, 0xc
/* 8146B224 | 40 82 00 10 */	bne .L_8146B234
/* 8146B228 | 38 C0 00 01 */	li r6, 0x1
/* 8146B22C | 98 C1 00 56 */	stb r6, 0x56(r1)
/* 8146B230 | 48 00 00 70 */	b .L_8146B2A0
.L_8146B234:
/* 8146B234 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8146B238 | 28 05 00 0D */	cmplwi r5, 0xd
/* 8146B23C | 40 82 00 10 */	bne .L_8146B24C
/* 8146B240 | 38 80 00 02 */	li r4, 0x2
/* 8146B244 | 98 81 00 56 */	stb r4, 0x56(r1)
/* 8146B248 | 48 00 00 58 */	b .L_8146B2A0
.L_8146B24C:
/* 8146B24C | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 8146B250 | 28 08 00 03 */	cmplwi r8, 0x3
/* 8146B254 | 41 82 00 1C */	beq .L_8146B270
/* 8146B258 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146B25C | 28 07 00 0F */	cmplwi r7, 0xf
/* 8146B260 | 41 82 00 10 */	beq .L_8146B270
/* 8146B264 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146B268 | 28 06 00 04 */	cmplwi r6, 0x4
/* 8146B26C | 40 82 00 34 */	bne .L_8146B2A0
.L_8146B270:
/* 8146B270 | 88 BF 00 0C */	lbz r5, 0xc(r31)
/* 8146B274 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146B278 | 41 A2 00 08 */	beq+ .L_8146B280
/* 8146B27C | 48 00 94 CC */	b .L_81474748
.L_8146B280:
/* 8146B280 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 8146B284 | 28 03 00 04 */	cmplwi r3, 0x4
/* 8146B288 | 40 82 00 10 */	bne .L_8146B298
/* 8146B28C | 38 80 00 02 */	li r4, 0x2
/* 8146B290 | 98 81 00 56 */	stb r4, 0x56(r1)
/* 8146B294 | 48 00 00 0C */	b .L_8146B2A0
.L_8146B298:
/* 8146B298 | 39 60 00 01 */	li r11, 0x1
/* 8146B29C | 99 61 00 56 */	stb r11, 0x56(r1)
.L_8146B2A0:
/* 8146B2A0 | 38 60 00 01 */	li r3, 0x1
/* 8146B2A4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146B2A8 | 7F C4 F3 78 */	mr r4, r30
/* 8146B2AC | 4B FF 41 C9 */	bl Zi8GetFormatVersion
/* 8146B2B0 | 54 67 06 3E */	clrlwi r7, r3, 24
/* 8146B2B4 | 28 07 00 08 */	cmplwi r7, 0x8
/* 8146B2B8 | 41 80 00 34 */	blt .L_8146B2EC
/* 8146B2BC | 38 60 00 01 */	li r3, 0x1
/* 8146B2C0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146B2C4 | 38 80 00 1F */	li r4, 0x1f
/* 8146B2C8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146B2CC | 7F C5 F3 78 */	mr r5, r30
/* 8146B2D0 | 4B FF 41 61 */	bl Zi8GetTableCount
/* 8146B2D4 | 7C 6A 1B 78 */	mr r10, r3
/* 8146B2D8 | 55 46 04 3E */	clrlwi r6, r10, 16
/* 8146B2DC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146B2E0 | 41 82 00 0C */	beq .L_8146B2EC
/* 8146B2E4 | 38 A0 00 01 */	li r5, 0x1
/* 8146B2E8 | 98 A1 00 59 */	stb r5, 0x59(r1)
.L_8146B2EC:
/* 8146B2EC | 88 81 00 58 */	lbz r4, 0x58(r1)
/* 8146B2F0 | 54 89 06 72 */	rlwinm r9, r4, 0, 25, 25
/* 8146B2F4 | 55 28 06 3E */	clrlwi r8, r9, 24
/* 8146B2F8 | 99 01 00 55 */	stb r8, 0x55(r1)
/* 8146B2FC | 88 61 00 58 */	lbz r3, 0x58(r1)
/* 8146B300 | 54 66 06 F6 */	rlwinm r6, r3, 0, 27, 27
/* 8146B304 | 54 C4 06 3E */	clrlwi r4, r6, 24
/* 8146B308 | 98 81 00 54 */	stb r4, 0x54(r1)
/* 8146B30C | 88 A1 00 58 */	lbz r5, 0x58(r1)
/* 8146B310 | 54 A7 06 B4 */	rlwinm r7, r5, 0, 26, 26
/* 8146B314 | 54 E4 06 3E */	clrlwi r4, r7, 24
/* 8146B318 | 98 81 00 53 */	stb r4, 0x53(r1)
/* 8146B31C | 88 61 00 58 */	lbz r3, 0x58(r1)
/* 8146B320 | 54 6C 07 34 */	rlwinm r12, r3, 0, 28, 26
/* 8146B324 | 55 86 06 3E */	clrlwi r6, r12, 24
/* 8146B328 | 98 C1 00 58 */	stb r6, 0x58(r1)
/* 8146B32C | 88 A1 00 58 */	lbz r5, 0x58(r1)
/* 8146B330 | 54 A4 06 F2 */	rlwinm r4, r5, 0, 27, 25
/* 8146B334 | 54 88 06 3E */	clrlwi r8, r4, 24
/* 8146B338 | 99 01 00 58 */	stb r8, 0x58(r1)
/* 8146B33C | 89 61 00 58 */	lbz r11, 0x58(r1)
/* 8146B340 | 55 63 06 B0 */	rlwinm r3, r11, 0, 26, 24
/* 8146B344 | 54 67 06 3E */	clrlwi r7, r3, 24
/* 8146B348 | 98 E1 00 58 */	stb r7, 0x58(r1)
/* 8146B34C | 89 5F 00 02 */	lbz r10, 0x2(r31)
/* 8146B350 | 55 49 06 30 */	rlwinm r9, r10, 0, 24, 24
/* 8146B354 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146B358 | 40 82 00 14 */	bne .L_8146B36C
/* 8146B35C | 88 DF 00 02 */	lbz r6, 0x2(r31)
/* 8146B360 | 54 C4 06 72 */	rlwinm r4, r6, 0, 25, 25
/* 8146B364 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146B368 | 41 82 00 10 */	beq .L_8146B378
.L_8146B36C:
/* 8146B36C | 38 A0 00 01 */	li r5, 0x1
/* 8146B370 | 98 A1 00 6E */	stb r5, 0x6e(r1)
/* 8146B374 | 48 00 00 48 */	b .L_8146B3BC
.L_8146B378:
/* 8146B378 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 8146B37C | 54 68 07 38 */	rlwinm r8, r3, 0, 28, 28
/* 8146B380 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146B384 | 41 82 00 10 */	beq .L_8146B394
/* 8146B388 | 38 E0 00 04 */	li r7, 0x4
/* 8146B38C | 98 E1 00 6E */	stb r7, 0x6e(r1)
/* 8146B390 | 48 00 00 2C */	b .L_8146B3BC
.L_8146B394:
/* 8146B394 | 88 DF 00 02 */	lbz r6, 0x2(r31)
/* 8146B398 | 54 C6 06 B4 */	rlwinm r6, r6, 0, 26, 26
/* 8146B39C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146B3A0 | 40 82 00 14 */	bne .L_8146B3B4
/* 8146B3A4 | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 8146B3A8 | 54 89 06 F6 */	rlwinm r9, r4, 0, 27, 27
/* 8146B3AC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146B3B0 | 41 82 00 0C */	beq .L_8146B3BC
.L_8146B3B4:
/* 8146B3B4 | 38 A0 00 02 */	li r5, 0x2
/* 8146B3B8 | 98 A1 00 6E */	stb r5, 0x6e(r1)
.L_8146B3BC:
/* 8146B3BC | 89 01 00 6E */	lbz r8, 0x6e(r1)
/* 8146B3C0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146B3C4 | 41 82 01 84 */	beq .L_8146B548
/* 8146B3C8 | 38 60 00 01 */	li r3, 0x1
/* 8146B3CC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146B3D0 | 7F C4 F3 78 */	mr r4, r30
/* 8146B3D4 | 4B FF 40 A1 */	bl Zi8GetFormatVersion
/* 8146B3D8 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 8146B3DC | 28 04 00 04 */	cmplwi r4, 0x4
/* 8146B3E0 | 41 80 00 28 */	blt .L_8146B408
/* 8146B3E4 | 38 60 00 01 */	li r3, 0x1
/* 8146B3E8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146B3EC | 38 80 00 15 */	li r4, 0x15
/* 8146B3F0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146B3F4 | 7F C5 F3 78 */	mr r5, r30
/* 8146B3F8 | 4B FF 40 39 */	bl Zi8GetTableCount
/* 8146B3FC | 7C 67 1B 78 */	mr r7, r3
/* 8146B400 | B0 E1 00 84 */	sth r7, 0x84(r1)
/* 8146B404 | 48 00 00 0C */	b .L_8146B410
.L_8146B408:
/* 8146B408 | 38 C0 00 00 */	li r6, 0x0
/* 8146B40C | B0 C1 00 84 */	sth r6, 0x84(r1)
.L_8146B410:
/* 8146B410 | A1 21 00 84 */	lhz r9, 0x84(r1)
/* 8146B414 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146B418 | 41 82 00 0C */	beq .L_8146B424
/* 8146B41C | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 8146B420 | 98 61 00 6D */	stb r3, 0x6d(r1)
.L_8146B424:
/* 8146B424 | 88 A1 00 6E */	lbz r5, 0x6e(r1)
/* 8146B428 | 2C 05 00 03 */	cmpwi r5, 0x3
/* 8146B42C | 41 82 00 A4 */	beq .L_8146B4D0
/* 8146B430 | 40 80 00 14 */	bge .L_8146B444
/* 8146B434 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 8146B438 | 41 82 00 18 */	beq .L_8146B450
/* 8146B43C | 40 80 00 48 */	bge .L_8146B484
/* 8146B440 | 48 00 00 90 */	b .L_8146B4D0
.L_8146B444:
/* 8146B444 | 2C 05 00 05 */	cmpwi r5, 0x5
/* 8146B448 | 40 80 00 88 */	bge .L_8146B4D0
/* 8146B44C | 48 00 00 6C */	b .L_8146B4B8
.L_8146B450:
/* 8146B450 | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 8146B454 | 54 8A 06 72 */	rlwinm r10, r4, 0, 25, 25
/* 8146B458 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146B45C | 40 82 00 1C */	bne .L_8146B478
/* 8146B460 | 7F C3 F3 78 */	mr r3, r30
/* 8146B464 | 48 01 16 21 */	bl Zi8GetZHCharSet
/* 8146B468 | 54 6C 06 3E */	clrlwi r12, r3, 24
/* 8146B46C | 55 87 07 FE */	clrlwi r7, r12, 31
/* 8146B470 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146B474 | 41 82 00 5C */	beq .L_8146B4D0
.L_8146B478:
/* 8146B478 | 39 00 00 00 */	li r8, 0x0
/* 8146B47C | B1 01 00 84 */	sth r8, 0x84(r1)
/* 8146B480 | 48 00 00 50 */	b .L_8146B4D0
.L_8146B484:
/* 8146B484 | 88 DF 00 02 */	lbz r6, 0x2(r31)
/* 8146B488 | 54 C5 06 F6 */	rlwinm r5, r6, 0, 27, 27
/* 8146B48C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146B490 | 40 82 00 1C */	bne .L_8146B4AC
/* 8146B494 | 7F C3 F3 78 */	mr r3, r30
/* 8146B498 | 48 01 15 ED */	bl Zi8GetZHCharSet
/* 8146B49C | 54 64 06 3E */	clrlwi r4, r3, 24
/* 8146B4A0 | 54 8B 06 F6 */	rlwinm r11, r4, 0, 27, 27
/* 8146B4A4 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 8146B4A8 | 41 82 00 28 */	beq .L_8146B4D0
.L_8146B4AC:
/* 8146B4AC | 39 20 00 00 */	li r9, 0x0
/* 8146B4B0 | B1 21 00 84 */	sth r9, 0x84(r1)
/* 8146B4B4 | 48 00 00 1C */	b .L_8146B4D0
.L_8146B4B8:
/* 8146B4B8 | 88 FF 00 02 */	lbz r7, 0x2(r31)
/* 8146B4BC | 54 E8 06 F6 */	rlwinm r8, r7, 0, 27, 27
/* 8146B4C0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146B4C4 | 41 82 00 0C */	beq .L_8146B4D0
/* 8146B4C8 | 39 40 00 00 */	li r10, 0x0
/* 8146B4CC | B1 41 00 84 */	sth r10, 0x84(r1)
.L_8146B4D0:
/* 8146B4D0 | A1 01 00 84 */	lhz r8, 0x84(r1)
/* 8146B4D4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146B4D8 | 41 82 00 78 */	beq .L_8146B550
/* 8146B4DC | 38 60 00 01 */	li r3, 0x1
/* 8146B4E0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146B4E4 | 38 80 00 1B */	li r4, 0x1b
/* 8146B4E8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146B4EC | 7F C5 F3 78 */	mr r5, r30
/* 8146B4F0 | 4B FF 3F 41 */	bl Zi8GetTableCount
/* 8146B4F4 | B0 61 00 84 */	sth r3, 0x84(r1)
/* 8146B4F8 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 8146B4FC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146B500 | 41 82 00 24 */	beq .L_8146B524
/* 8146B504 | 38 60 00 01 */	li r3, 0x1
/* 8146B508 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146B50C | 38 80 00 1B */	li r4, 0x1b
/* 8146B510 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146B514 | 7F C5 F3 78 */	mr r5, r30
/* 8146B518 | 4B FF 3E 99 */	bl Zi8GetTableAddress
/* 8146B51C | 7C 66 1B 78 */	mr r6, r3
/* 8146B520 | 90 C1 00 E0 */	stw r6, 0xe0(r1)
.L_8146B524:
/* 8146B524 | 38 60 00 01 */	li r3, 0x1
/* 8146B528 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146B52C | 38 80 00 15 */	li r4, 0x15
/* 8146B530 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146B534 | 7F C5 F3 78 */	mr r5, r30
/* 8146B538 | 4B FF 3E 79 */	bl Zi8GetTableAddress
/* 8146B53C | 7C 69 1B 78 */	mr r9, r3
/* 8146B540 | 91 21 00 E4 */	stw r9, 0xe4(r1)
/* 8146B544 | 48 00 00 0C */	b .L_8146B550
.L_8146B548:
/* 8146B548 | 89 1F 00 02 */	lbz r8, 0x2(r31)
/* 8146B54C | 99 01 00 6E */	stb r8, 0x6e(r1)
.L_8146B550:
/* 8146B550 | 88 A1 00 6E */	lbz r5, 0x6e(r1)
/* 8146B554 | 54 A4 20 36 */	slwi r4, r5, 4
/* 8146B558 | 54 87 06 3E */	clrlwi r7, r4, 24
/* 8146B55C | 98 E1 00 6E */	stb r7, 0x6e(r1)
/* 8146B560 | A0 7F 00 1E */	lhz r3, 0x1e(r31)
/* 8146B564 | B0 61 00 72 */	sth r3, 0x72(r1)
/* 8146B568 | 38 C0 00 00 */	li r6, 0x0
/* 8146B56C | 98 DF 00 21 */	stb r6, 0x21(r31)
/* 8146B570 | 38 80 00 00 */	li r4, 0x0
/* 8146B574 | 98 9F 00 22 */	stb r4, 0x22(r31)
/* 8146B578 | 39 40 00 00 */	li r10, 0x0
/* 8146B57C | 99 5F 00 20 */	stb r10, 0x20(r31)
/* 8146B580 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8146B584 | 28 05 00 07 */	cmplwi r5, 0x7
/* 8146B588 | 41 82 00 48 */	beq .L_8146B5D0
/* 8146B58C | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146B590 | 28 04 00 0A */	cmplwi r4, 0xa
/* 8146B594 | 41 82 00 3C */	beq .L_8146B5D0
/* 8146B598 | 89 21 00 56 */	lbz r9, 0x56(r1)
/* 8146B59C | 28 09 00 08 */	cmplwi r9, 0x8
/* 8146B5A0 | 41 82 00 30 */	beq .L_8146B5D0
/* 8146B5A4 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146B5A8 | 28 07 00 09 */	cmplwi r7, 0x9
/* 8146B5AC | 41 82 00 24 */	beq .L_8146B5D0
/* 8146B5B0 | 7F E3 FB 78 */	mr r3, r31
/* 8146B5B4 | 38 81 02 D8 */	addi r4, r1, 0x2d8
/* 8146B5B8 | 38 A0 00 00 */	li r5, 0x0
/* 8146B5BC | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 8146B5C0 | 7F C6 F3 78 */	mr r6, r30
/* 8146B5C4 | 48 01 9B 39 */	bl Zi8PrepareMatch
/* 8146B5C8 | 7C 66 1B 78 */	mr r6, r3
/* 8146B5CC | 48 00 08 78 */	b .L_8146BE44
.L_8146B5D0:
/* 8146B5D0 | 88 7E 00 16 */	lbz r3, 0x16(r30)
/* 8146B5D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146B5D8 | 41 82 00 10 */	beq .L_8146B5E8
/* 8146B5DC | 89 1F 00 0C */	lbz r8, 0xc(r31)
/* 8146B5E0 | 28 08 00 06 */	cmplwi r8, 0x6
/* 8146B5E4 | 40 81 00 10 */	ble .L_8146B5F4
.L_8146B5E8:
/* 8146B5E8 | 38 A0 00 00 */	li r5, 0x0
/* 8146B5EC | 98 A1 00 52 */	stb r5, 0x52(r1)
/* 8146B5F0 | 48 00 91 58 */	b .L_81474748
.L_8146B5F4:
/* 8146B5F4 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8146B5F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146B5FC | 40 82 00 10 */	bne .L_8146B60C
/* 8146B600 | 38 E0 00 07 */	li r7, 0x7
/* 8146B604 | 98 E1 00 56 */	stb r7, 0x56(r1)
/* 8146B608 | 48 00 05 48 */	b .L_8146BB50
.L_8146B60C:
/* 8146B60C | 88 DF 00 0C */	lbz r6, 0xc(r31)
/* 8146B610 | 28 06 00 01 */	cmplwi r6, 0x1
/* 8146B614 | 41 82 00 20 */	beq .L_8146B634
/* 8146B618 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 8146B61C | 28 04 00 02 */	cmplwi r4, 0x2
/* 8146B620 | 40 82 00 38 */	bne .L_8146B658
/* 8146B624 | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8146B628 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 8146B62C | 28 04 00 20 */	cmplwi r4, 0x20
/* 8146B630 | 40 82 00 28 */	bne .L_8146B658
.L_8146B634:
/* 8146B634 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 8146B638 | 28 03 00 08 */	cmplwi r3, 0x8
/* 8146B63C | 41 82 00 10 */	beq .L_8146B64C
/* 8146B640 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146B644 | 28 07 00 0A */	cmplwi r7, 0xa
/* 8146B648 | 40 82 00 10 */	bne .L_8146B658
.L_8146B64C:
/* 8146B64C | 39 60 00 07 */	li r11, 0x7
/* 8146B650 | 99 61 00 56 */	stb r11, 0x56(r1)
/* 8146B654 | 48 00 04 FC */	b .L_8146BB50
.L_8146B658:
/* 8146B658 | 89 41 00 56 */	lbz r10, 0x56(r1)
/* 8146B65C | 28 0A 00 08 */	cmplwi r10, 0x8
/* 8146B660 | 41 82 00 1C */	beq .L_8146B67C
/* 8146B664 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 8146B668 | 28 08 00 0A */	cmplwi r8, 0xa
/* 8146B66C | 41 82 00 10 */	beq .L_8146B67C
/* 8146B670 | 89 21 00 56 */	lbz r9, 0x56(r1)
/* 8146B674 | 28 09 00 09 */	cmplwi r9, 0x9
/* 8146B678 | 40 82 04 D8 */	bne .L_8146BB50
.L_8146B67C:
/* 8146B67C | 39 00 00 FF */	li r8, 0xff
/* 8146B680 | 99 01 01 28 */	stb r8, 0x128(r1)
/* 8146B684 | 99 01 01 40 */	stb r8, 0x140(r1)
/* 8146B688 | 88 FF 00 0C */	lbz r7, 0xc(r31)
/* 8146B68C | 28 07 00 03 */	cmplwi r7, 0x3
/* 8146B690 | 41 81 00 20 */	bgt .L_8146B6B0
/* 8146B694 | 88 DF 00 0C */	lbz r6, 0xc(r31)
/* 8146B698 | 28 06 00 02 */	cmplwi r6, 0x2
/* 8146B69C | 40 81 00 38 */	ble .L_8146B6D4
/* 8146B6A0 | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8146B6A4 | A1 25 00 04 */	lhz r9, 0x4(r5)
/* 8146B6A8 | 28 09 00 20 */	cmplwi r9, 0x20
/* 8146B6AC | 41 82 00 28 */	beq .L_8146B6D4
.L_8146B6B0:
/* 8146B6B0 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146B6B4 | 28 04 00 09 */	cmplwi r4, 0x9
/* 8146B6B8 | 40 82 00 10 */	bne .L_8146B6C8
/* 8146B6BC | 39 40 00 00 */	li r10, 0x0
/* 8146B6C0 | 99 41 00 52 */	stb r10, 0x52(r1)
/* 8146B6C4 | 48 00 90 84 */	b .L_81474748
.L_8146B6C8:
/* 8146B6C8 | 38 60 00 07 */	li r3, 0x7
/* 8146B6CC | 98 61 00 56 */	stb r3, 0x56(r1)
/* 8146B6D0 | 48 00 04 80 */	b .L_8146BB50
.L_8146B6D4:
/* 8146B6D4 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 8146B6D8 | 28 08 00 0A */	cmplwi r8, 0xa
/* 8146B6DC | 40 82 00 0C */	bne .L_8146B6E8
/* 8146B6E0 | 38 60 00 09 */	li r3, 0x9
/* 8146B6E4 | 98 61 00 56 */	stb r3, 0x56(r1)
.L_8146B6E8:
/* 8146B6E8 | 38 A0 00 00 */	li r5, 0x0
/* 8146B6EC | 90 A1 01 14 */	stw r5, 0x114(r1)
/* 8146B6F0 | 48 00 00 2C */	b .L_8146B71C
.L_8146B6F4:
/* 8146B6F4 | 38 E0 00 00 */	li r7, 0x0
/* 8146B6F8 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146B6FC | 38 C1 02 E5 */	addi r6, r1, 0x2e5
/* 8146B700 | 7C E6 21 AE */	stbx r7, r6, r4
/* 8146B704 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146B708 | 38 81 02 D9 */	addi r4, r1, 0x2d9
/* 8146B70C | 7C E4 29 AE */	stbx r7, r4, r5
/* 8146B710 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146B714 | 39 09 00 01 */	addi r8, r9, 0x1
/* 8146B718 | 91 01 01 14 */	stw r8, 0x114(r1)
.L_8146B71C:
/* 8146B71C | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146B720 | 2C 04 00 06 */	cmpwi r4, 0x6
/* 8146B724 | 41 80 FF D0 */	blt .L_8146B6F4
/* 8146B728 | 80 E1 00 C0 */	lwz r7, 0xc0(r1)
/* 8146B72C | A0 67 00 00 */	lhz r3, 0x0(r7)
/* 8146B730 | 28 03 00 41 */	cmplwi r3, 0x41
/* 8146B734 | 41 80 00 40 */	blt .L_8146B774
/* 8146B738 | 80 C1 00 C0 */	lwz r6, 0xc0(r1)
/* 8146B73C | A0 A6 00 00 */	lhz r5, 0x0(r6)
/* 8146B740 | 28 05 00 59 */	cmplwi r5, 0x59
/* 8146B744 | 41 81 00 30 */	bgt .L_8146B774
/* 8146B748 | 38 80 00 1F */	li r4, 0x1f
/* 8146B74C | 98 81 02 D9 */	stb r4, 0x2d9(r1)
/* 8146B750 | 81 01 00 C0 */	lwz r8, 0xc0(r1)
/* 8146B754 | A0 68 00 00 */	lhz r3, 0x0(r8)
/* 8146B758 | 3C E0 81 61 */	lis r7, zi8CangjieCodes@ha
/* 8146B75C | 38 C7 7E F0 */	addi r6, r7, zi8CangjieCodes@l
/* 8146B760 | 7C A3 32 14 */	add r5, r3, r6
/* 8146B764 | 88 85 FF BF */	lbz r4, -0x41(r5)
/* 8146B768 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8146B76C | 98 61 02 E5 */	stb r3, 0x2e5(r1)
/* 8146B770 | 48 00 00 48 */	b .L_8146B7B8
.L_8146B774:
/* 8146B774 | 81 21 00 C0 */	lwz r9, 0xc0(r1)
/* 8146B778 | A1 09 00 00 */	lhz r8, 0x0(r9)
/* 8146B77C | 28 08 EF F2 */	cmplwi r8, 0xeff2
/* 8146B780 | 41 80 00 38 */	blt .L_8146B7B8
/* 8146B784 | 81 01 00 C0 */	lwz r8, 0xc0(r1)
/* 8146B788 | A0 E8 00 00 */	lhz r7, 0x0(r8)
/* 8146B78C | 28 07 EF F9 */	cmplwi r7, 0xeff9
/* 8146B790 | 41 81 00 28 */	bgt .L_8146B7B8
/* 8146B794 | 38 C0 00 1C */	li r6, 0x1c
/* 8146B798 | 98 C1 02 D9 */	stb r6, 0x2d9(r1)
/* 8146B79C | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8146B7A0 | A0 85 00 00 */	lhz r4, 0x0(r5)
/* 8146B7A4 | 3C 64 FF FF */	subis r3, r4, 0x1
/* 8146B7A8 | 39 83 10 0E */	addi r12, r3, 0x100e
/* 8146B7AC | 55 8B 10 3A */	slwi r11, r12, 2
/* 8146B7B0 | 55 67 06 3E */	clrlwi r7, r11, 24
/* 8146B7B4 | 98 E1 02 E5 */	stb r7, 0x2e5(r1)
.L_8146B7B8:
/* 8146B7B8 | 89 5F 00 0C */	lbz r10, 0xc(r31)
/* 8146B7BC | 28 0A 00 01 */	cmplwi r10, 0x1
/* 8146B7C0 | 40 81 03 14 */	ble .L_8146BAD4
/* 8146B7C4 | 81 21 00 C0 */	lwz r9, 0xc0(r1)
/* 8146B7C8 | A1 09 00 02 */	lhz r8, 0x2(r9)
/* 8146B7CC | 28 08 00 20 */	cmplwi r8, 0x20
/* 8146B7D0 | 41 82 03 04 */	beq .L_8146BAD4
/* 8146B7D4 | 80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 8146B7D8 | A0 83 00 02 */	lhz r4, 0x2(r3)
/* 8146B7DC | 28 04 00 41 */	cmplwi r4, 0x41
/* 8146B7E0 | 41 80 00 40 */	blt .L_8146B820
/* 8146B7E4 | 80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 8146B7E8 | A1 23 00 02 */	lhz r9, 0x2(r3)
/* 8146B7EC | 28 09 00 59 */	cmplwi r9, 0x59
/* 8146B7F0 | 41 81 00 30 */	bgt .L_8146B820
/* 8146B7F4 | 39 00 00 1F */	li r8, 0x1f
/* 8146B7F8 | 99 01 02 DA */	stb r8, 0x2da(r1)
/* 8146B7FC | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8146B800 | A0 E5 00 02 */	lhz r7, 0x2(r5)
/* 8146B804 | 3C C0 81 61 */	lis r6, zi8CangjieCodes@ha
/* 8146B808 | 38 A6 7E F0 */	addi r5, r6, zi8CangjieCodes@l
/* 8146B80C | 7C 87 2A 14 */	add r4, r7, r5
/* 8146B810 | 89 84 FF BF */	lbz r12, -0x41(r4)
/* 8146B814 | 55 84 06 3E */	clrlwi r4, r12, 24
/* 8146B818 | 98 81 02 E6 */	stb r4, 0x2e6(r1)
/* 8146B81C | 48 00 00 48 */	b .L_8146B864
.L_8146B820:
/* 8146B820 | 81 61 00 C0 */	lwz r11, 0xc0(r1)
/* 8146B824 | A1 4B 00 02 */	lhz r10, 0x2(r11)
/* 8146B828 | 28 0A EF F2 */	cmplwi r10, 0xeff2
/* 8146B82C | 41 80 00 38 */	blt .L_8146B864
/* 8146B830 | 80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 8146B834 | A0 83 00 02 */	lhz r4, 0x2(r3)
/* 8146B838 | 28 04 EF F9 */	cmplwi r4, 0xeff9
/* 8146B83C | 41 81 00 28 */	bgt .L_8146B864
/* 8146B840 | 39 20 00 1C */	li r9, 0x1c
/* 8146B844 | 99 21 02 DA */	stb r9, 0x2da(r1)
/* 8146B848 | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8146B84C | A0 E5 00 02 */	lhz r7, 0x2(r5)
/* 8146B850 | 3D 07 FF FF */	subis r8, r7, 0x1
/* 8146B854 | 38 C8 10 0E */	addi r6, r8, 0x100e
/* 8146B858 | 54 C4 10 3A */	slwi r4, r6, 2
/* 8146B85C | 54 87 06 3E */	clrlwi r7, r4, 24
/* 8146B860 | 98 E1 02 E6 */	stb r7, 0x2e6(r1)
.L_8146B864:
/* 8146B864 | 38 60 00 FF */	li r3, 0xff
/* 8146B868 | 98 61 01 2C */	stb r3, 0x12c(r1)
/* 8146B86C | 98 61 01 44 */	stb r3, 0x144(r1)
/* 8146B870 | 88 A1 02 D9 */	lbz r5, 0x2d9(r1)
/* 8146B874 | 54 BB 18 38 */	slwi r27, r5, 3
/* 8146B878 | 88 81 02 DA */	lbz r4, 0x2da(r1)
/* 8146B87C | 54 86 40 2E */	slwi r6, r4, 8
/* 8146B880 | 7F 63 33 78 */	or r3, r27, r6
/* 8146B884 | 60 68 00 07 */	ori r8, r3, 0x7
/* 8146B888 | 91 01 00 CC */	stw r8, 0xcc(r1)
/* 8146B88C | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8146B890 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 8146B894 | 98 81 01 48 */	stb r4, 0x148(r1)
/* 8146B898 | 80 E1 00 CC */	lwz r7, 0xcc(r1)
/* 8146B89C | 54 E6 C6 3E */	extrwi r6, r7, 8, 16
/* 8146B8A0 | 54 C3 06 3E */	clrlwi r3, r6, 24
/* 8146B8A4 | 98 61 01 49 */	stb r3, 0x149(r1)
/* 8146B8A8 | 88 A1 02 E5 */	lbz r5, 0x2e5(r1)
/* 8146B8AC | 54 BC 18 38 */	slwi r28, r5, 3
/* 8146B8B0 | 89 81 02 E6 */	lbz r12, 0x2e6(r1)
/* 8146B8B4 | 55 84 40 2E */	slwi r4, r12, 8
/* 8146B8B8 | 7F 8B 23 78 */	or r11, r28, r4
/* 8146B8BC | 61 6A 00 02 */	ori r10, r11, 0x2
/* 8146B8C0 | 91 41 00 CC */	stw r10, 0xcc(r1)
/* 8146B8C4 | 81 21 00 CC */	lwz r9, 0xcc(r1)
/* 8146B8C8 | 55 23 06 3E */	clrlwi r3, r9, 24
/* 8146B8CC | 98 61 01 30 */	stb r3, 0x130(r1)
/* 8146B8D0 | 81 01 00 CC */	lwz r8, 0xcc(r1)
/* 8146B8D4 | 55 04 C6 3E */	extrwi r4, r8, 8, 16
/* 8146B8D8 | 54 85 06 3E */	clrlwi r5, r4, 24
/* 8146B8DC | 98 A1 01 31 */	stb r5, 0x131(r1)
/* 8146B8E0 | 88 E1 02 D9 */	lbz r7, 0x2d9(r1)
/* 8146B8E4 | 54 E6 18 38 */	slwi r6, r7, 3
/* 8146B8E8 | 88 81 02 DA */	lbz r4, 0x2da(r1)
/* 8146B8EC | 54 85 68 24 */	slwi r5, r4, 13
/* 8146B8F0 | 7C C3 2B 78 */	or r3, r6, r5
/* 8146B8F4 | 60 68 00 07 */	ori r8, r3, 0x7
/* 8146B8F8 | 91 01 00 CC */	stw r8, 0xcc(r1)
/* 8146B8FC | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8146B900 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8146B904 | 98 61 01 4C */	stb r3, 0x14c(r1)
/* 8146B908 | 81 21 00 CC */	lwz r9, 0xcc(r1)
/* 8146B90C | 55 24 C6 3E */	extrwi r4, r9, 8, 16
/* 8146B910 | 54 86 06 3E */	clrlwi r6, r4, 24
/* 8146B914 | 98 C1 01 4D */	stb r6, 0x14d(r1)
/* 8146B918 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8146B91C | 54 A7 86 3E */	extrwi r7, r5, 8, 8
/* 8146B920 | 54 E4 06 3E */	clrlwi r4, r7, 24
/* 8146B924 | 98 81 01 4E */	stb r4, 0x14e(r1)
/* 8146B928 | 88 61 02 E5 */	lbz r3, 0x2e5(r1)
/* 8146B92C | 54 66 18 38 */	slwi r6, r3, 3
/* 8146B930 | 89 01 02 E6 */	lbz r8, 0x2e6(r1)
/* 8146B934 | 55 05 68 24 */	slwi r5, r8, 13
/* 8146B938 | 7C C7 2B 78 */	or r7, r6, r5
/* 8146B93C | 60 E4 00 03 */	ori r4, r7, 0x3
/* 8146B940 | 90 81 00 CC */	stw r4, 0xcc(r1)
/* 8146B944 | 80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 8146B948 | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 8146B94C | 98 A1 01 34 */	stb r5, 0x134(r1)
/* 8146B950 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8146B954 | 54 69 C6 3E */	extrwi r9, r3, 8, 16
/* 8146B958 | 55 28 06 3E */	clrlwi r8, r9, 24
/* 8146B95C | 99 01 01 35 */	stb r8, 0x135(r1)
/* 8146B960 | 80 E1 00 CC */	lwz r7, 0xcc(r1)
/* 8146B964 | 54 E4 86 3E */	extrwi r4, r7, 8, 8
/* 8146B968 | 54 86 06 3E */	clrlwi r6, r4, 24
/* 8146B96C | 98 C1 01 36 */	stb r6, 0x136(r1)
/* 8146B970 | 88 A1 02 D9 */	lbz r5, 0x2d9(r1)
/* 8146B974 | 54 A4 18 38 */	slwi r4, r5, 3
/* 8146B978 | 88 61 02 DA */	lbz r3, 0x2da(r1)
/* 8146B97C | 54 6A 90 1A */	slwi r10, r3, 18
/* 8146B980 | 7C 89 53 78 */	or r9, r4, r10
/* 8146B984 | 61 26 00 07 */	ori r6, r9, 0x7
/* 8146B988 | 90 C1 00 CC */	stw r6, 0xcc(r1)
/* 8146B98C | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8146B990 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 8146B994 | 98 81 01 50 */	stb r4, 0x150(r1)
/* 8146B998 | 81 01 00 CC */	lwz r8, 0xcc(r1)
/* 8146B99C | 55 07 C6 3E */	extrwi r7, r8, 8, 16
/* 8146B9A0 | 54 E6 06 3E */	clrlwi r6, r7, 24
/* 8146B9A4 | 98 C1 01 51 */	stb r6, 0x151(r1)
/* 8146B9A8 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8146B9AC | 54 A3 86 3E */	extrwi r3, r5, 8, 8
/* 8146B9B0 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 8146B9B4 | 98 81 01 52 */	stb r4, 0x152(r1)
/* 8146B9B8 | 81 61 00 CC */	lwz r11, 0xcc(r1)
/* 8146B9BC | 55 63 46 3E */	srwi r3, r11, 24
/* 8146B9C0 | 54 67 06 3E */	clrlwi r7, r3, 24
/* 8146B9C4 | 98 E1 01 53 */	stb r7, 0x153(r1)
/* 8146B9C8 | 89 41 02 E5 */	lbz r10, 0x2e5(r1)
/* 8146B9CC | 55 46 18 38 */	slwi r6, r10, 3
/* 8146B9D0 | 88 A1 02 E6 */	lbz r5, 0x2e6(r1)
/* 8146B9D4 | 54 A4 90 1A */	slwi r4, r5, 18
/* 8146B9D8 | 7C C9 23 78 */	or r9, r6, r4
/* 8146B9DC | 61 28 00 04 */	ori r8, r9, 0x4
/* 8146B9E0 | 91 01 00 CC */	stw r8, 0xcc(r1)
/* 8146B9E4 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8146B9E8 | 54 66 06 3E */	clrlwi r6, r3, 24
/* 8146B9EC | 98 C1 01 38 */	stb r6, 0x138(r1)
/* 8146B9F0 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8146B9F4 | 54 85 C6 3E */	extrwi r5, r4, 8, 16
/* 8146B9F8 | 54 A7 06 3E */	clrlwi r7, r5, 24
/* 8146B9FC | 98 E1 01 39 */	stb r7, 0x139(r1)
/* 8146BA00 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8146BA04 | 54 83 86 3E */	extrwi r3, r4, 8, 8
/* 8146BA08 | 54 6C 06 3E */	clrlwi r12, r3, 24
/* 8146BA0C | 99 81 01 3A */	stb r12, 0x13a(r1)
/* 8146BA10 | 80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 8146BA14 | 54 C5 46 3E */	srwi r5, r6, 24
/* 8146BA18 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 8146BA1C | 98 81 01 3B */	stb r4, 0x13b(r1)
/* 8146BA20 | 89 01 02 D9 */	lbz r8, 0x2d9(r1)
/* 8146BA24 | 55 0B 18 38 */	slwi r11, r8, 3
/* 8146BA28 | 88 61 02 DA */	lbz r3, 0x2da(r1)
/* 8146BA2C | 54 67 B8 10 */	slwi r7, r3, 23
/* 8146BA30 | 7D 6A 3B 78 */	or r10, r11, r7
/* 8146BA34 | 61 49 00 07 */	ori r9, r10, 0x7
/* 8146BA38 | 91 21 00 CC */	stw r9, 0xcc(r1)
/* 8146BA3C | 80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 8146BA40 | 54 C4 06 3E */	clrlwi r4, r6, 24
/* 8146BA44 | 98 81 01 54 */	stb r4, 0x154(r1)
/* 8146BA48 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8146BA4C | 54 A3 C6 3E */	extrwi r3, r5, 8, 16
/* 8146BA50 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 8146BA54 | 99 01 01 55 */	stb r8, 0x155(r1)
/* 8146BA58 | 80 E1 00 CC */	lwz r7, 0xcc(r1)
/* 8146BA5C | 54 E6 86 3E */	extrwi r6, r7, 8, 8
/* 8146BA60 | 54 C6 06 3E */	clrlwi r6, r6, 24
/* 8146BA64 | 98 C1 01 56 */	stb r6, 0x156(r1)
/* 8146BA68 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8146BA6C | 54 89 46 3E */	srwi r9, r4, 24
/* 8146BA70 | 55 25 06 3E */	clrlwi r5, r9, 24
/* 8146BA74 | 98 A1 01 57 */	stb r5, 0x157(r1)
/* 8146BA78 | 89 01 02 E5 */	lbz r8, 0x2e5(r1)
/* 8146BA7C | 55 03 18 38 */	slwi r3, r8, 3
/* 8146BA80 | 88 81 02 E6 */	lbz r4, 0x2e6(r1)
/* 8146BA84 | 54 87 B8 10 */	slwi r7, r4, 23
/* 8146BA88 | 7C 66 3B 78 */	or r6, r3, r7
/* 8146BA8C | 60 C9 00 05 */	ori r9, r6, 0x5
/* 8146BA90 | 91 21 00 CC */	stw r9, 0xcc(r1)
/* 8146BA94 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8146BA98 | 54 65 06 3E */	clrlwi r5, r3, 24
/* 8146BA9C | 98 A1 01 3C */	stb r5, 0x13c(r1)
/* 8146BAA0 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8146BAA4 | 54 8A C6 3E */	extrwi r10, r4, 8, 16
/* 8146BAA8 | 55 43 06 3E */	clrlwi r3, r10, 24
/* 8146BAAC | 98 61 01 3D */	stb r3, 0x13d(r1)
/* 8146BAB0 | 81 81 00 CC */	lwz r12, 0xcc(r1)
/* 8146BAB4 | 55 87 86 3E */	extrwi r7, r12, 8, 8
/* 8146BAB8 | 54 E8 06 3E */	clrlwi r8, r7, 24
/* 8146BABC | 99 01 01 3E */	stb r8, 0x13e(r1)
/* 8146BAC0 | 80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 8146BAC4 | 54 C5 46 3E */	srwi r5, r6, 24
/* 8146BAC8 | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 8146BACC | 98 61 01 3F */	stb r3, 0x13f(r1)
/* 8146BAD0 | 48 00 00 80 */	b .L_8146BB50
.L_8146BAD4:
/* 8146BAD4 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 8146BAD8 | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146BADC | 40 81 00 14 */	ble .L_8146BAF0
/* 8146BAE0 | 39 60 00 07 */	li r11, 0x7
/* 8146BAE4 | 99 61 02 DE */	stb r11, 0x2de(r1)
/* 8146BAE8 | 39 20 00 01 */	li r9, 0x1
/* 8146BAEC | 99 21 02 EA */	stb r9, 0x2ea(r1)
.L_8146BAF0:
/* 8146BAF0 | 88 E1 02 D9 */	lbz r7, 0x2d9(r1)
/* 8146BAF4 | 54 E8 18 38 */	slwi r8, r7, 3
/* 8146BAF8 | 89 41 02 DE */	lbz r10, 0x2de(r1)
/* 8146BAFC | 7D 08 53 78 */	or r8, r8, r10
/* 8146BB00 | 91 01 00 CC */	stw r8, 0xcc(r1)
/* 8146BB04 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8146BB08 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 8146BB0C | 98 81 01 54 */	stb r4, 0x154(r1)
/* 8146BB10 | 98 81 01 50 */	stb r4, 0x150(r1)
/* 8146BB14 | 98 81 01 4C */	stb r4, 0x14c(r1)
/* 8146BB18 | 98 81 01 48 */	stb r4, 0x148(r1)
/* 8146BB1C | 98 81 01 44 */	stb r4, 0x144(r1)
/* 8146BB20 | 88 C1 02 E5 */	lbz r6, 0x2e5(r1)
/* 8146BB24 | 54 C9 18 38 */	slwi r9, r6, 3
/* 8146BB28 | 89 01 02 EA */	lbz r8, 0x2ea(r1)
/* 8146BB2C | 7D 25 43 78 */	or r5, r9, r8
/* 8146BB30 | 90 A1 00 CC */	stw r5, 0xcc(r1)
/* 8146BB34 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8146BB38 | 54 87 06 3E */	clrlwi r7, r4, 24
/* 8146BB3C | 98 E1 01 3C */	stb r7, 0x13c(r1)
/* 8146BB40 | 98 E1 01 38 */	stb r7, 0x138(r1)
/* 8146BB44 | 98 E1 01 34 */	stb r7, 0x134(r1)
/* 8146BB48 | 98 E1 01 30 */	stb r7, 0x130(r1)
/* 8146BB4C | 98 E1 01 2C */	stb r7, 0x12c(r1)
.L_8146BB50:
/* 8146BB50 | 38 60 00 00 */	li r3, 0x0
/* 8146BB54 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 8146BB58 | 48 00 00 2C */	b .L_8146BB84
.L_8146BB5C:
/* 8146BB5C | 38 C0 00 00 */	li r6, 0x0
/* 8146BB60 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146BB64 | 39 41 02 E5 */	addi r10, r1, 0x2e5
/* 8146BB68 | 7C CA 21 AE */	stbx r6, r10, r4
/* 8146BB6C | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146BB70 | 38 81 02 D9 */	addi r4, r1, 0x2d9
/* 8146BB74 | 7C C4 29 AE */	stbx r6, r4, r5
/* 8146BB78 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146BB7C | 38 E9 00 01 */	addi r7, r9, 0x1
/* 8146BB80 | 90 E1 01 14 */	stw r7, 0x114(r1)
.L_8146BB84:
/* 8146BB84 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146BB88 | 2C 06 00 06 */	cmpwi r6, 0x6
/* 8146BB8C | 41 80 FF D0 */	blt .L_8146BB5C
/* 8146BB90 | 38 60 00 00 */	li r3, 0x0
/* 8146BB94 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 8146BB98 | 48 00 01 60 */	b .L_8146BCF8
.L_8146BB9C:
/* 8146BB9C | 81 01 00 C0 */	lwz r8, 0xc0(r1)
/* 8146BBA0 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146BBA4 | 54 A3 08 3C */	slwi r3, r5, 1
/* 8146BBA8 | 7C E8 1A 2E */	lhzx r7, r8, r3
/* 8146BBAC | 28 07 00 41 */	cmplwi r7, 0x41
/* 8146BBB0 | 41 80 00 60 */	blt .L_8146BC10
/* 8146BBB4 | 80 C1 00 C0 */	lwz r6, 0xc0(r1)
/* 8146BBB8 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146BBBC | 54 85 08 3C */	slwi r5, r4, 1
/* 8146BBC0 | 7C 86 2A 2E */	lhzx r4, r6, r5
/* 8146BBC4 | 28 04 00 59 */	cmplwi r4, 0x59
/* 8146BBC8 | 41 81 00 48 */	bgt .L_8146BC10
/* 8146BBCC | 38 60 00 1F */	li r3, 0x1f
/* 8146BBD0 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146BBD4 | 39 61 02 D9 */	addi r11, r1, 0x2d9
/* 8146BBD8 | 7C 6B 39 AE */	stbx r3, r11, r7
/* 8146BBDC | 81 41 00 C0 */	lwz r10, 0xc0(r1)
/* 8146BBE0 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146BBE4 | 55 09 08 3C */	slwi r9, r8, 1
/* 8146BBE8 | 7D 0A 4A 2E */	lhzx r8, r10, r9
/* 8146BBEC | 3C E0 81 61 */	lis r7, zi8CangjieCodes@ha
/* 8146BBF0 | 38 C7 7E F0 */	addi r6, r7, zi8CangjieCodes@l
/* 8146BBF4 | 7C A8 32 14 */	add r5, r8, r6
/* 8146BBF8 | 89 25 FF BF */	lbz r9, -0x41(r5)
/* 8146BBFC | 55 24 06 3E */	clrlwi r4, r9, 24
/* 8146BC00 | 81 41 01 14 */	lwz r10, 0x114(r1)
/* 8146BC04 | 38 61 02 E5 */	addi r3, r1, 0x2e5
/* 8146BC08 | 7C 83 51 AE */	stbx r4, r3, r10
/* 8146BC0C | 48 00 00 E0 */	b .L_8146BCEC
.L_8146BC10:
/* 8146BC10 | 81 01 00 C0 */	lwz r8, 0xc0(r1)
/* 8146BC14 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146BC18 | 54 65 08 3C */	slwi r5, r3, 1
/* 8146BC1C | 7C E8 2A 2E */	lhzx r7, r8, r5
/* 8146BC20 | 28 07 00 2A */	cmplwi r7, 0x2a
/* 8146BC24 | 41 82 00 C8 */	beq .L_8146BCEC
/* 8146BC28 | 80 81 00 C0 */	lwz r4, 0xc0(r1)
/* 8146BC2C | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146BC30 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146BC34 | 7C 84 2A 2E */	lhzx r4, r4, r5
/* 8146BC38 | 28 04 EF F2 */	cmplwi r4, 0xeff2
/* 8146BC3C | 41 80 00 58 */	blt .L_8146BC94
/* 8146BC40 | 81 21 00 C0 */	lwz r9, 0xc0(r1)
/* 8146BC44 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146BC48 | 55 04 08 3C */	slwi r4, r8, 1
/* 8146BC4C | 7C E9 22 2E */	lhzx r7, r9, r4
/* 8146BC50 | 28 07 EF F9 */	cmplwi r7, 0xeff9
/* 8146BC54 | 41 81 00 40 */	bgt .L_8146BC94
/* 8146BC58 | 38 60 00 1C */	li r3, 0x1c
/* 8146BC5C | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146BC60 | 38 A1 02 D9 */	addi r5, r1, 0x2d9
/* 8146BC64 | 7C 65 31 AE */	stbx r3, r5, r6
/* 8146BC68 | 80 81 00 C0 */	lwz r4, 0xc0(r1)
/* 8146BC6C | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146BC70 | 55 03 08 3C */	slwi r3, r8, 1
/* 8146BC74 | 7C E4 1A 2E */	lhzx r7, r4, r3
/* 8146BC78 | 3C C7 FF FF */	subis r6, r7, 0x1
/* 8146BC7C | 38 A6 10 0E */	addi r5, r6, 0x100e
/* 8146BC80 | 54 A4 10 3A */	slwi r4, r5, 2
/* 8146BC84 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8146BC88 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146BC8C | 39 01 02 E5 */	addi r8, r1, 0x2e5
/* 8146BC90 | 7C 68 49 AE */	stbx r3, r8, r9
.L_8146BC94:
/* 8146BC94 | 81 01 00 C0 */	lwz r8, 0xc0(r1)
/* 8146BC98 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146BC9C | 54 E6 08 3C */	slwi r6, r7, 1
/* 8146BCA0 | 7C A8 32 2E */	lhzx r5, r8, r6
/* 8146BCA4 | 28 05 00 20 */	cmplwi r5, 0x20
/* 8146BCA8 | 40 82 00 44 */	bne .L_8146BCEC
/* 8146BCAC | 38 80 00 07 */	li r4, 0x7
/* 8146BCB0 | 98 81 02 DE */	stb r4, 0x2de(r1)
/* 8146BCB4 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146BCB8 | 54 6C 06 3E */	clrlwi r12, r3, 24
/* 8146BCBC | 99 81 02 EA */	stb r12, 0x2ea(r1)
/* 8146BCC0 | 81 61 01 14 */	lwz r11, 0x114(r1)
/* 8146BCC4 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 8146BCC8 | 41 82 00 18 */	beq .L_8146BCE0
/* 8146BCCC | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146BCD0 | 39 47 00 01 */	addi r10, r7, 0x1
/* 8146BCD4 | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8146BCD8 | 7C 0A 48 00 */	cmpw r10, r9
/* 8146BCDC | 41 82 00 2C */	beq .L_8146BD08
.L_8146BCE0:
/* 8146BCE0 | 39 00 00 00 */	li r8, 0x0
/* 8146BCE4 | 99 01 00 52 */	stb r8, 0x52(r1)
/* 8146BCE8 | 48 00 8A 60 */	b .L_81474748
.L_8146BCEC:
/* 8146BCEC | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146BCF0 | 38 83 00 01 */	addi r4, r3, 0x1
/* 8146BCF4 | 90 81 01 14 */	stw r4, 0x114(r1)
.L_8146BCF8:
/* 8146BCF8 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146BCFC | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8146BD00 | 7C 03 48 00 */	cmpw r3, r9
/* 8146BD04 | 41 80 FE 98 */	blt .L_8146BB9C
.L_8146BD08:
/* 8146BD08 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146BD0C | 2C 08 00 06 */	cmpwi r8, 0x6
/* 8146BD10 | 41 80 00 10 */	blt .L_8146BD20
/* 8146BD14 | 38 A0 00 00 */	li r5, 0x0
/* 8146BD18 | 98 A1 00 52 */	stb r5, 0x52(r1)
/* 8146BD1C | 48 00 8A 2C */	b .L_81474748
.L_8146BD20:
/* 8146BD20 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146BD24 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146BD28 | 41 82 00 14 */	beq .L_8146BD3C
/* 8146BD2C | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146BD30 | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 8146BD34 | 98 A1 02 FC */	stb r5, 0x2fc(r1)
/* 8146BD38 | 48 00 00 0C */	b .L_8146BD44
.L_8146BD3C:
/* 8146BD3C | 38 80 00 01 */	li r4, 0x1
/* 8146BD40 | 98 81 02 FC */	stb r4, 0x2fc(r1)
.L_8146BD44:
/* 8146BD44 | 89 81 02 DE */	lbz r12, 0x2de(r1)
/* 8146BD48 | 88 81 02 DD */	lbz r4, 0x2dd(r1)
/* 8146BD4C | 54 8B B8 10 */	slwi r11, r4, 23
/* 8146BD50 | 89 41 02 DC */	lbz r10, 0x2dc(r1)
/* 8146BD54 | 55 43 90 1A */	slwi r3, r10, 18
/* 8146BD58 | 88 81 02 DB */	lbz r4, 0x2db(r1)
/* 8146BD5C | 54 89 68 24 */	slwi r9, r4, 13
/* 8146BD60 | 88 A1 02 D9 */	lbz r5, 0x2d9(r1)
/* 8146BD64 | 54 A7 18 38 */	slwi r7, r5, 3
/* 8146BD68 | 89 01 02 DA */	lbz r8, 0x2da(r1)
/* 8146BD6C | 55 06 40 2E */	slwi r6, r8, 8
/* 8146BD70 | 7C E4 33 78 */	or r4, r7, r6
/* 8146BD74 | 7D 27 23 78 */	or r7, r9, r4
/* 8146BD78 | 7C 63 3B 78 */	or r3, r3, r7
/* 8146BD7C | 7D 65 1B 78 */	or r5, r11, r3
/* 8146BD80 | 7D 9B 2B 78 */	or r27, r12, r5
/* 8146BD84 | 93 61 00 CC */	stw r27, 0xcc(r1)
/* 8146BD88 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8146BD8C | 54 86 06 3E */	clrlwi r6, r4, 24
/* 8146BD90 | 98 C1 02 F1 */	stb r6, 0x2f1(r1)
/* 8146BD94 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8146BD98 | 54 68 C6 3E */	extrwi r8, r3, 8, 16
/* 8146BD9C | 55 05 06 3E */	clrlwi r5, r8, 24
/* 8146BDA0 | 98 A1 02 F2 */	stb r5, 0x2f2(r1)
/* 8146BDA4 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8146BDA8 | 54 87 86 3E */	extrwi r7, r4, 8, 8
/* 8146BDAC | 54 E6 06 3E */	clrlwi r6, r7, 24
/* 8146BDB0 | 98 C1 02 F3 */	stb r6, 0x2f3(r1)
/* 8146BDB4 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8146BDB8 | 54 65 46 3E */	srwi r5, r3, 24
/* 8146BDBC | 54 BC 06 3E */	clrlwi r28, r5, 24
/* 8146BDC0 | 9B 81 02 F4 */	stb r28, 0x2f4(r1)
/* 8146BDC4 | 89 81 02 EA */	lbz r12, 0x2ea(r1)
/* 8146BDC8 | 88 81 02 E9 */	lbz r4, 0x2e9(r1)
/* 8146BDCC | 54 8B B8 10 */	slwi r11, r4, 23
/* 8146BDD0 | 89 41 02 E8 */	lbz r10, 0x2e8(r1)
/* 8146BDD4 | 55 49 90 1A */	slwi r9, r10, 18
/* 8146BDD8 | 88 61 02 E7 */	lbz r3, 0x2e7(r1)
/* 8146BDDC | 54 68 68 24 */	slwi r8, r3, 13
/* 8146BDE0 | 88 81 02 E5 */	lbz r4, 0x2e5(r1)
/* 8146BDE4 | 54 85 18 38 */	slwi r5, r4, 3
/* 8146BDE8 | 88 E1 02 E6 */	lbz r7, 0x2e6(r1)
/* 8146BDEC | 54 E6 40 2E */	slwi r6, r7, 8
/* 8146BDF0 | 7C A4 33 78 */	or r4, r5, r6
/* 8146BDF4 | 7D 05 23 78 */	or r5, r8, r4
/* 8146BDF8 | 7D 23 2B 78 */	or r3, r9, r5
/* 8146BDFC | 7D 68 1B 78 */	or r8, r11, r3
/* 8146BE00 | 7D 84 43 78 */	or r4, r12, r8
/* 8146BE04 | 90 81 00 CC */	stw r4, 0xcc(r1)
/* 8146BE08 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8146BE0C | 54 69 06 3E */	clrlwi r9, r3, 24
/* 8146BE10 | 99 21 02 F5 */	stb r9, 0x2f5(r1)
/* 8146BE14 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8146BE18 | 54 86 C6 3E */	extrwi r6, r4, 8, 16
/* 8146BE1C | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 8146BE20 | 98 A1 02 F6 */	stb r5, 0x2f6(r1)
/* 8146BE24 | 80 E1 00 CC */	lwz r7, 0xcc(r1)
/* 8146BE28 | 54 E4 86 3E */	extrwi r4, r7, 8, 8
/* 8146BE2C | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8146BE30 | 98 61 02 F7 */	stb r3, 0x2f7(r1)
/* 8146BE34 | 80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 8146BE38 | 54 C8 46 3E */	srwi r8, r6, 24
/* 8146BE3C | 55 05 06 3E */	clrlwi r5, r8, 24
/* 8146BE40 | 98 A1 02 F8 */	stb r5, 0x2f8(r1)
.L_8146BE44:
/* 8146BE44 | 38 E0 00 00 */	li r7, 0x0
/* 8146BE48 | 90 E1 00 CC */	stw r7, 0xcc(r1)
/* 8146BE4C | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146BE50 | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146BE54 | 41 82 00 10 */	beq .L_8146BE64
/* 8146BE58 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146BE5C | 28 06 00 02 */	cmplwi r6, 0x2
/* 8146BE60 | 40 82 00 60 */	bne .L_8146BEC0
.L_8146BE64:
/* 8146BE64 | A0 A1 02 FE */	lhz r5, 0x2fe(r1)
/* 8146BE68 | 28 05 FF FF */	cmplwi r5, 0xffff
/* 8146BE6C | 40 82 00 54 */	bne .L_8146BEC0
/* 8146BE70 | A0 61 03 1E */	lhz r3, 0x31e(r1)
/* 8146BE74 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 8146BE78 | 40 82 00 48 */	bne .L_8146BEC0
/* 8146BE7C | 89 21 00 56 */	lbz r9, 0x56(r1)
/* 8146BE80 | 28 09 00 02 */	cmplwi r9, 0x2
/* 8146BE84 | 40 82 00 30 */	bne .L_8146BEB4
/* 8146BE88 | 89 1F 00 0C */	lbz r8, 0xc(r31)
/* 8146BE8C | 28 08 00 01 */	cmplwi r8, 0x1
/* 8146BE90 | 40 82 00 24 */	bne .L_8146BEB4
/* 8146BE94 | 80 E1 00 C0 */	lwz r7, 0xc0(r1)
/* 8146BE98 | A0 87 00 00 */	lhz r4, 0x0(r7)
/* 8146BE9C | 28 04 F3 05 */	cmplwi r4, 0xf305
/* 8146BEA0 | 41 80 00 14 */	blt .L_8146BEB4
/* 8146BEA4 | 80 C1 00 C0 */	lwz r6, 0xc0(r1)
/* 8146BEA8 | A0 A6 00 00 */	lhz r5, 0x0(r6)
/* 8146BEAC | 28 05 F3 29 */	cmplwi r5, 0xf329
/* 8146BEB0 | 40 81 00 10 */	ble .L_8146BEC0
.L_8146BEB4:
/* 8146BEB4 | 38 80 00 00 */	li r4, 0x0
/* 8146BEB8 | 98 81 02 FD */	stb r4, 0x2fd(r1)
/* 8146BEBC | 48 00 88 8C */	b .L_81474748
.L_8146BEC0:
/* 8146BEC0 | 88 61 02 FC */	lbz r3, 0x2fc(r1)
/* 8146BEC4 | 28 03 00 17 */	cmplwi r3, 0x17
/* 8146BEC8 | 40 A1 00 08 */	ble+ .L_8146BED0
/* 8146BECC | 48 00 88 7C */	b .L_81474748
.L_8146BED0:
/* 8146BED0 | 89 41 00 53 */	lbz r10, 0x53(r1)
/* 8146BED4 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146BED8 | 41 82 08 28 */	beq .L_8146C700
/* 8146BEDC | 89 21 00 56 */	lbz r9, 0x56(r1)
/* 8146BEE0 | 28 09 00 01 */	cmplwi r9, 0x1
/* 8146BEE4 | 41 82 00 10 */	beq .L_8146BEF4
/* 8146BEE8 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146BEEC | 28 06 00 02 */	cmplwi r6, 0x2
/* 8146BEF0 | 40 82 08 10 */	bne .L_8146C700
.L_8146BEF4:
/* 8146BEF4 | 38 A0 00 00 */	li r5, 0x0
/* 8146BEF8 | 98 A1 00 53 */	stb r5, 0x53(r1)
/* 8146BEFC | 38 80 00 00 */	li r4, 0x0
/* 8146BF00 | 90 81 01 14 */	stw r4, 0x114(r1)
/* 8146BF04 | 48 00 06 88 */	b .L_8146C58C
.L_8146BF08:
/* 8146BF08 | 39 00 00 00 */	li r8, 0x0
/* 8146BF0C | B1 01 00 A2 */	sth r8, 0xa2(r1)
/* 8146BF10 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146BF14 | 28 07 00 01 */	cmplwi r7, 0x1
/* 8146BF18 | 40 82 01 94 */	bne .L_8146C0AC
/* 8146BF1C | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146BF20 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146BF24 | 38 61 03 1E */	addi r3, r1, 0x31e
/* 8146BF28 | 7C 83 2A 2E */	lhzx r4, r3, r5
/* 8146BF2C | 7C 8B 4E 70 */	srawi r11, r4, 9
/* 8146BF30 | 38 6B FF E8 */	subi r3, r11, 0x18
/* 8146BF34 | 28 03 00 23 */	cmplwi r3, 0x23
/* 8146BF38 | 41 81 04 00 */	bgt .L_8146C338
/* 8146BF3C | 3D 40 81 67 */	lis r10, jumptable_8166AB80@ha
/* 8146BF40 | 38 EA AB 80 */	addi r7, r10, jumptable_8166AB80@l
/* 8146BF44 | 54 63 10 3A */	slwi r3, r3, 2
/* 8146BF48 | 7C E7 18 2E */	lwzx r7, r7, r3
/* 8146BF4C | 7C E9 03 A6 */	mtctr r7
/* 8146BF50 | 4E 80 04 20 */	bctr
.L_8146BF54:
/* 8146BF54 | 80 DE 1B 28 */	lwz r6, 0x1b28(r30)
/* 8146BF58 | 54 C4 08 02 */	extlwi r4, r6, 2, 1
/* 8146BF5C | 7C 85 FE 70 */	srawi r5, r4, 31
/* 8146BF60 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146BF64 | 41 82 03 D4 */	beq .L_8146C338
/* 8146BF68 | 3D 20 00 01 */	lis r9, 0x1
/* 8146BF6C | 39 29 FD FF */	subi r9, r9, 0x201
/* 8146BF70 | B1 21 00 A2 */	sth r9, 0xa2(r1)
/* 8146BF74 | 48 00 03 C4 */	b .L_8146C338
.L_8146BF78:
/* 8146BF78 | 81 1E 1B 28 */	lwz r8, 0x1b28(r30)
/* 8146BF7C | 55 06 10 02 */	extlwi r6, r8, 2, 2
/* 8146BF80 | 7C C3 FE 70 */	srawi r3, r6, 31
/* 8146BF84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146BF88 | 41 82 03 B0 */	beq .L_8146C338
/* 8146BF8C | 3C 80 00 01 */	lis r4, 0x1
/* 8146BF90 | 38 84 FD FF */	subi r4, r4, 0x201
/* 8146BF94 | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146BF98 | 48 00 03 A0 */	b .L_8146C338
.L_8146BF9C:
/* 8146BF9C | 80 BE 1B 28 */	lwz r5, 0x1b28(r30)
/* 8146BFA0 | 54 A4 18 02 */	extlwi r4, r5, 2, 3
/* 8146BFA4 | 7C 87 FE 70 */	srawi r7, r4, 31
/* 8146BFA8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146BFAC | 41 82 03 8C */	beq .L_8146C338
/* 8146BFB0 | 3C 60 00 01 */	lis r3, 0x1
/* 8146BFB4 | 38 63 FD FF */	subi r3, r3, 0x201
/* 8146BFB8 | B0 61 00 A2 */	sth r3, 0xa2(r1)
/* 8146BFBC | 48 00 03 7C */	b .L_8146C338
.L_8146BFC0:
/* 8146BFC0 | 81 9E 1B 28 */	lwz r12, 0x1b28(r30)
/* 8146BFC4 | 55 85 48 02 */	extlwi r5, r12, 2, 9
/* 8146BFC8 | 7C A6 FE 70 */	srawi r6, r5, 31
/* 8146BFCC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146BFD0 | 41 82 03 68 */	beq .L_8146C338
/* 8146BFD4 | 3C 80 00 01 */	lis r4, 0x1
/* 8146BFD8 | 38 84 F9 FF */	subi r4, r4, 0x601
/* 8146BFDC | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146BFE0 | 48 00 03 58 */	b .L_8146C338
.L_8146BFE4:
/* 8146BFE4 | 81 1E 1B 28 */	lwz r8, 0x1b28(r30)
/* 8146BFE8 | 55 03 38 02 */	extlwi r3, r8, 2, 7
/* 8146BFEC | 7C 6B FE 70 */	srawi r11, r3, 31
/* 8146BFF0 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 8146BFF4 | 41 82 03 44 */	beq .L_8146C338
/* 8146BFF8 | 3C E0 00 01 */	lis r7, 0x1
/* 8146BFFC | 38 E7 E5 FF */	subi r7, r7, 0x1a01
/* 8146C000 | B0 E1 00 A2 */	sth r7, 0xa2(r1)
/* 8146C004 | 48 00 03 34 */	b .L_8146C338
.L_8146C008:
/* 8146C008 | 81 5E 1B 28 */	lwz r10, 0x1b28(r30)
/* 8146C00C | 55 46 38 02 */	extlwi r6, r10, 2, 7
/* 8146C010 | 7C C9 FE 70 */	srawi r9, r6, 31
/* 8146C014 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146C018 | 41 82 00 28 */	beq .L_8146C040
/* 8146C01C | 80 9E 1B 28 */	lwz r4, 0x1b28(r30)
/* 8146C020 | 54 83 40 02 */	extlwi r3, r4, 2, 8
/* 8146C024 | 7C 65 FE 70 */	srawi r5, r3, 31
/* 8146C028 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146C02C | 41 82 00 14 */	beq .L_8146C040
/* 8146C030 | 3D 00 00 01 */	lis r8, 0x1
/* 8146C034 | 39 08 E1 FF */	subi r8, r8, 0x1e01
/* 8146C038 | B1 01 00 A2 */	sth r8, 0xa2(r1)
/* 8146C03C | 48 00 02 FC */	b .L_8146C338
.L_8146C040:
/* 8146C040 | 80 FE 1B 28 */	lwz r7, 0x1b28(r30)
/* 8146C044 | 54 E6 40 02 */	extlwi r6, r7, 2, 8
/* 8146C048 | 7C C6 FE 70 */	srawi r6, r6, 31
/* 8146C04C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146C050 | 41 82 00 14 */	beq .L_8146C064
/* 8146C054 | 3C 80 00 01 */	lis r4, 0x1
/* 8146C058 | 38 84 F1 FF */	subi r4, r4, 0xe01
/* 8146C05C | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146C060 | 48 00 02 D8 */	b .L_8146C338
.L_8146C064:
/* 8146C064 | 81 3E 1B 28 */	lwz r9, 0x1b28(r30)
/* 8146C068 | 55 28 38 02 */	extlwi r8, r9, 2, 7
/* 8146C06C | 7D 05 FE 70 */	srawi r5, r8, 31
/* 8146C070 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146C074 | 41 82 02 C4 */	beq .L_8146C338
/* 8146C078 | 3C 60 00 01 */	lis r3, 0x1
/* 8146C07C | 38 63 E5 FF */	subi r3, r3, 0x1a01
/* 8146C080 | B0 61 00 A2 */	sth r3, 0xa2(r1)
/* 8146C084 | 48 00 02 B4 */	b .L_8146C338
.L_8146C088:
/* 8146C088 | 80 9E 1B 28 */	lwz r4, 0x1b28(r30)
/* 8146C08C | 54 86 40 02 */	extlwi r6, r4, 2, 8
/* 8146C090 | 7C C7 FE 70 */	srawi r7, r6, 31
/* 8146C094 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146C098 | 41 82 02 A0 */	beq .L_8146C338
/* 8146C09C | 3D 20 00 01 */	lis r9, 0x1
/* 8146C0A0 | 39 29 F1 FF */	subi r9, r9, 0xe01
/* 8146C0A4 | B1 21 00 A2 */	sth r9, 0xa2(r1)
/* 8146C0A8 | 48 00 02 90 */	b .L_8146C338
.L_8146C0AC:
/* 8146C0AC | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146C0B0 | 54 65 08 3C */	slwi r5, r3, 1
/* 8146C0B4 | 38 81 03 1E */	addi r4, r1, 0x31e
/* 8146C0B8 | 7D 44 2A 2E */	lhzx r10, r4, r5
/* 8146C0BC | 7D 43 4E 70 */	srawi r3, r10, 9
/* 8146C0C0 | 39 83 FF E8 */	subi r12, r3, 0x18
/* 8146C0C4 | 28 0C 00 27 */	cmplwi r12, 0x27
/* 8146C0C8 | 41 81 02 70 */	bgt .L_8146C338
/* 8146C0CC | 3D 00 81 67 */	lis r8, jumptable_8166AAE0@ha
/* 8146C0D0 | 38 E8 AA E0 */	addi r7, r8, jumptable_8166AAE0@l
/* 8146C0D4 | 55 8C 10 3A */	slwi r12, r12, 2
/* 8146C0D8 | 7C E7 60 2E */	lwzx r7, r7, r12
/* 8146C0DC | 7C E9 03 A6 */	mtctr r7
/* 8146C0E0 | 4E 80 04 20 */	bctr
.L_8146C0E4:
/* 8146C0E4 | 80 DE 1B 2C */	lwz r6, 0x1b2c(r30)
/* 8146C0E8 | 54 C3 08 02 */	extlwi r3, r6, 2, 1
/* 8146C0EC | 7C 65 FE 70 */	srawi r5, r3, 31
/* 8146C0F0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146C0F4 | 41 82 02 44 */	beq .L_8146C338
/* 8146C0F8 | 3C 80 00 01 */	lis r4, 0x1
/* 8146C0FC | 38 84 FD FF */	subi r4, r4, 0x201
/* 8146C100 | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146C104 | 48 00 02 34 */	b .L_8146C338
.L_8146C108:
/* 8146C108 | 81 7E 1B 2C */	lwz r11, 0x1b2c(r30)
/* 8146C10C | 55 67 10 02 */	extlwi r7, r11, 2, 2
/* 8146C110 | 7C E9 FE 70 */	srawi r9, r7, 31
/* 8146C114 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146C118 | 41 82 02 20 */	beq .L_8146C338
/* 8146C11C | 3D 00 00 01 */	lis r8, 0x1
/* 8146C120 | 39 08 FD FF */	subi r8, r8, 0x201
/* 8146C124 | B1 01 00 A2 */	sth r8, 0xa2(r1)
/* 8146C128 | 48 00 02 10 */	b .L_8146C338
.L_8146C12C:
/* 8146C12C | 81 5E 1B 2C */	lwz r10, 0x1b2c(r30)
/* 8146C130 | 55 43 18 02 */	extlwi r3, r10, 2, 3
/* 8146C134 | 7C 68 FE 70 */	srawi r8, r3, 31
/* 8146C138 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146C13C | 41 82 01 FC */	beq .L_8146C338
/* 8146C140 | 3C 80 00 01 */	lis r4, 0x1
/* 8146C144 | 38 84 FD FF */	subi r4, r4, 0x201
/* 8146C148 | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146C14C | 48 00 01 EC */	b .L_8146C338
.L_8146C150:
/* 8146C150 | 80 DE 1B 2C */	lwz r6, 0x1b2c(r30)
/* 8146C154 | 54 C8 40 02 */	extlwi r8, r6, 2, 8
/* 8146C158 | 7D 09 FE 70 */	srawi r9, r8, 31
/* 8146C15C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146C160 | 41 82 01 D8 */	beq .L_8146C338
/* 8146C164 | 3C A0 00 01 */	lis r5, 0x1
/* 8146C168 | 38 A5 F9 FF */	subi r5, r5, 0x601
/* 8146C16C | B0 A1 00 A2 */	sth r5, 0xa2(r1)
/* 8146C170 | 48 00 01 C8 */	b .L_8146C338
.L_8146C174:
/* 8146C174 | 80 9E 1B 2C */	lwz r4, 0x1b2c(r30)
/* 8146C178 | 54 83 50 02 */	extlwi r3, r4, 2, 10
/* 8146C17C | 7C 67 FE 70 */	srawi r7, r3, 31
/* 8146C180 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146C184 | 41 82 01 B4 */	beq .L_8146C338
/* 8146C188 | 3C C0 00 01 */	lis r6, 0x1
/* 8146C18C | 38 C6 F9 FF */	subi r6, r6, 0x601
/* 8146C190 | B0 C1 00 A2 */	sth r6, 0xa2(r1)
/* 8146C194 | 48 00 01 A4 */	b .L_8146C338
.L_8146C198:
/* 8146C198 | 80 9E 1B 2C */	lwz r4, 0x1b2c(r30)
/* 8146C19C | 54 85 58 02 */	extlwi r5, r4, 2, 11
/* 8146C1A0 | 7C AA FE 70 */	srawi r10, r5, 31
/* 8146C1A4 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146C1A8 | 41 82 01 90 */	beq .L_8146C338
/* 8146C1AC | 3C 80 00 01 */	lis r4, 0x1
/* 8146C1B0 | 38 84 F9 FF */	subi r4, r4, 0x601
/* 8146C1B4 | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146C1B8 | 48 00 01 80 */	b .L_8146C338
.L_8146C1BC:
/* 8146C1BC | 81 3E 1B 2C */	lwz r9, 0x1b2c(r30)
/* 8146C1C0 | 55 26 30 02 */	extlwi r6, r9, 2, 6
/* 8146C1C4 | 7C C7 FE 70 */	srawi r7, r6, 31
/* 8146C1C8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146C1CC | 41 82 00 28 */	beq .L_8146C1F4
/* 8146C1D0 | 80 7E 1B 2C */	lwz r3, 0x1b2c(r30)
/* 8146C1D4 | 54 65 48 02 */	extlwi r5, r3, 2, 9
/* 8146C1D8 | 7C A8 FE 70 */	srawi r8, r5, 31
/* 8146C1DC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146C1E0 | 41 82 00 14 */	beq .L_8146C1F4
/* 8146C1E4 | 3C 60 00 01 */	lis r3, 0x1
/* 8146C1E8 | 38 63 E1 FF */	subi r3, r3, 0x1e01
/* 8146C1EC | B0 61 00 A2 */	sth r3, 0xa2(r1)
/* 8146C1F0 | 48 00 01 48 */	b .L_8146C338
.L_8146C1F4:
/* 8146C1F4 | 80 FE 1B 2C */	lwz r7, 0x1b2c(r30)
/* 8146C1F8 | 54 E4 30 02 */	extlwi r4, r7, 2, 6
/* 8146C1FC | 7C 86 FE 70 */	srawi r6, r4, 31
/* 8146C200 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146C204 | 41 82 00 14 */	beq .L_8146C218
/* 8146C208 | 3C A0 00 01 */	lis r5, 0x1
/* 8146C20C | 38 A5 E5 FF */	subi r5, r5, 0x1a01
/* 8146C210 | B0 A1 00 A2 */	sth r5, 0xa2(r1)
/* 8146C214 | 48 00 01 24 */	b .L_8146C338
.L_8146C218:
/* 8146C218 | 80 9E 1B 2C */	lwz r4, 0x1b2c(r30)
/* 8146C21C | 54 87 48 02 */	extlwi r7, r4, 2, 9
/* 8146C220 | 7C E3 FE 70 */	srawi r3, r7, 31
/* 8146C224 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146C228 | 41 82 01 10 */	beq .L_8146C338
/* 8146C22C | 3D 60 00 01 */	lis r11, 0x1
/* 8146C230 | 39 6B E3 FF */	subi r11, r11, 0x1c01
/* 8146C234 | B1 61 00 A2 */	sth r11, 0xa2(r1)
/* 8146C238 | 48 00 01 00 */	b .L_8146C338
.L_8146C23C:
/* 8146C23C | 81 5E 1B 2C */	lwz r10, 0x1b2c(r30)
/* 8146C240 | 55 49 30 02 */	extlwi r9, r10, 2, 6
/* 8146C244 | 7D 28 FE 70 */	srawi r8, r9, 31
/* 8146C248 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146C24C | 41 82 00 28 */	beq .L_8146C274
/* 8146C250 | 81 1E 1B 2C */	lwz r8, 0x1b2c(r30)
/* 8146C254 | 55 06 38 02 */	extlwi r6, r8, 2, 7
/* 8146C258 | 7C C7 FE 70 */	srawi r7, r6, 31
/* 8146C25C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146C260 | 41 82 00 14 */	beq .L_8146C274
/* 8146C264 | 3C A0 00 01 */	lis r5, 0x1
/* 8146C268 | 38 A5 E1 FF */	subi r5, r5, 0x1e01
/* 8146C26C | B0 A1 00 A2 */	sth r5, 0xa2(r1)
/* 8146C270 | 48 00 00 C8 */	b .L_8146C338
.L_8146C274:
/* 8146C274 | 81 3E 1B 2C */	lwz r9, 0x1b2c(r30)
/* 8146C278 | 55 2A 38 02 */	extlwi r10, r9, 2, 7
/* 8146C27C | 7D 44 FE 70 */	srawi r4, r10, 31
/* 8146C280 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146C284 | 41 82 00 14 */	beq .L_8146C298
/* 8146C288 | 3C 60 00 01 */	lis r3, 0x1
/* 8146C28C | 38 63 F1 FF */	subi r3, r3, 0xe01
/* 8146C290 | B0 61 00 A2 */	sth r3, 0xa2(r1)
/* 8146C294 | 48 00 00 A4 */	b .L_8146C338
.L_8146C298:
/* 8146C298 | 81 1E 1B 2C */	lwz r8, 0x1b2c(r30)
/* 8146C29C | 55 05 30 02 */	extlwi r5, r8, 2, 6
/* 8146C2A0 | 7C A3 FE 70 */	srawi r3, r5, 31
/* 8146C2A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146C2A8 | 41 82 00 90 */	beq .L_8146C338
/* 8146C2AC | 3C E0 00 01 */	lis r7, 0x1
/* 8146C2B0 | 38 E7 E5 FF */	subi r7, r7, 0x1a01
/* 8146C2B4 | B0 E1 00 A2 */	sth r7, 0xa2(r1)
/* 8146C2B8 | 48 00 00 80 */	b .L_8146C338
.L_8146C2BC:
/* 8146C2BC | 80 9E 1B 2C */	lwz r4, 0x1b2c(r30)
/* 8146C2C0 | 54 85 48 02 */	extlwi r5, r4, 2, 9
/* 8146C2C4 | 7C A6 FE 70 */	srawi r6, r5, 31
/* 8146C2C8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146C2CC | 41 82 00 28 */	beq .L_8146C2F4
/* 8146C2D0 | 80 9E 1B 2C */	lwz r4, 0x1b2c(r30)
/* 8146C2D4 | 54 88 38 02 */	extlwi r8, r4, 2, 7
/* 8146C2D8 | 7D 09 FE 70 */	srawi r9, r8, 31
/* 8146C2DC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146C2E0 | 41 82 00 14 */	beq .L_8146C2F4
/* 8146C2E4 | 3C 80 00 01 */	lis r4, 0x1
/* 8146C2E8 | 38 84 E1 FF */	subi r4, r4, 0x1e01
/* 8146C2EC | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146C2F0 | 48 00 00 48 */	b .L_8146C338
.L_8146C2F4:
/* 8146C2F4 | 80 FE 1B 2C */	lwz r7, 0x1b2c(r30)
/* 8146C2F8 | 54 E6 48 02 */	extlwi r6, r7, 2, 9
/* 8146C2FC | 7C C3 FE 70 */	srawi r3, r6, 31
/* 8146C300 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146C304 | 41 82 00 14 */	beq .L_8146C318
/* 8146C308 | 3C A0 00 01 */	lis r5, 0x1
/* 8146C30C | 38 A5 E3 FF */	subi r5, r5, 0x1c01
/* 8146C310 | B0 A1 00 A2 */	sth r5, 0xa2(r1)
/* 8146C314 | 48 00 00 24 */	b .L_8146C338
.L_8146C318:
/* 8146C318 | 80 9E 1B 2C */	lwz r4, 0x1b2c(r30)
/* 8146C31C | 54 83 38 02 */	extlwi r3, r4, 2, 7
/* 8146C320 | 7C 68 FE 70 */	srawi r8, r3, 31
/* 8146C324 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146C328 | 41 82 00 10 */	beq .L_8146C338
/* 8146C32C | 3C E0 00 01 */	lis r7, 0x1
/* 8146C330 | 38 E7 F1 FF */	subi r7, r7, 0xe01
/* 8146C334 | B0 E1 00 A2 */	sth r7, 0xa2(r1)
.L_8146C338:
/* 8146C338 | A0 C1 00 A2 */	lhz r6, 0xa2(r1)
/* 8146C33C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146C340 | 41 82 00 70 */	beq .L_8146C3B0
/* 8146C344 | 38 A0 00 01 */	li r5, 0x1
/* 8146C348 | 98 A1 00 53 */	stb r5, 0x53(r1)
/* 8146C34C | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146C350 | 54 83 08 3C */	slwi r3, r4, 1
/* 8146C354 | 39 21 03 1E */	addi r9, r1, 0x31e
/* 8146C358 | 7D 09 1A 2E */	lhzx r8, r9, r3
/* 8146C35C | A0 E1 00 A2 */	lhz r7, 0xa2(r1)
/* 8146C360 | 7D 06 38 38 */	and r6, r8, r7
/* 8146C364 | 7C C9 1B 2E */	sthx r6, r9, r3
/* 8146C368 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146C36C | 55 07 08 3C */	slwi r7, r8, 1
/* 8146C370 | 38 C1 02 FE */	addi r6, r1, 0x2fe
/* 8146C374 | 7C A6 3A 2E */	lhzx r5, r6, r7
/* 8146C378 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 8146C37C | 7C A3 20 38 */	and r3, r5, r4
/* 8146C380 | 7C 66 3B 2E */	sthx r3, r6, r7
/* 8146C384 | 81 81 01 14 */	lwz r12, 0x114(r1)
/* 8146C388 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8146C38C | 40 82 00 24 */	bne .L_8146C3B0
/* 8146C390 | A1 61 03 3E */	lhz r11, 0x33e(r1)
/* 8146C394 | A0 E1 00 A2 */	lhz r7, 0xa2(r1)
/* 8146C398 | 7D 6A 38 38 */	and r10, r11, r7
/* 8146C39C | B1 41 03 3E */	sth r10, 0x33e(r1)
/* 8146C3A0 | A1 21 03 40 */	lhz r9, 0x340(r1)
/* 8146C3A4 | A1 01 00 A2 */	lhz r8, 0xa2(r1)
/* 8146C3A8 | 7D 23 40 38 */	and r3, r9, r8
/* 8146C3AC | B0 61 03 40 */	sth r3, 0x340(r1)
.L_8146C3B0:
/* 8146C3B0 | 38 80 00 00 */	li r4, 0x0
/* 8146C3B4 | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146C3B8 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 8146C3BC | 28 03 00 01 */	cmplwi r3, 0x1
/* 8146C3C0 | 40 82 00 C0 */	bne .L_8146C480
/* 8146C3C4 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146C3C8 | 55 28 08 3C */	slwi r8, r9, 1
/* 8146C3CC | 38 A1 03 1E */	addi r5, r1, 0x31e
/* 8146C3D0 | 7C E5 42 2E */	lhzx r7, r5, r8
/* 8146C3D4 | 54 E6 05 F6 */	rlwinm r6, r7, 0, 23, 27
/* 8146C3D8 | 2C 06 00 80 */	cmpwi r6, 0x80
/* 8146C3DC | 41 82 00 38 */	beq .L_8146C414
/* 8146C3E0 | 40 80 00 1C */	bge .L_8146C3FC
/* 8146C3E4 | 2C 06 00 60 */	cmpwi r6, 0x60
/* 8146C3E8 | 41 82 00 74 */	beq .L_8146C45C
/* 8146C3EC | 40 80 01 1C */	bge .L_8146C508
/* 8146C3F0 | 2C 06 00 10 */	cmpwi r6, 0x10
/* 8146C3F4 | 41 82 00 20 */	beq .L_8146C414
/* 8146C3F8 | 48 00 01 10 */	b .L_8146C508
.L_8146C3FC:
/* 8146C3FC | 2C 06 01 80 */	cmpwi r6, 0x180
/* 8146C400 | 41 82 00 38 */	beq .L_8146C438
/* 8146C404 | 40 80 01 04 */	bge .L_8146C508
/* 8146C408 | 2C 06 01 00 */	cmpwi r6, 0x100
/* 8146C40C | 41 82 00 08 */	beq .L_8146C414
/* 8146C410 | 48 00 00 F8 */	b .L_8146C508
.L_8146C414:
/* 8146C414 | 80 BE 1B 28 */	lwz r5, 0x1b28(r30)
/* 8146C418 | 54 AC 20 02 */	extlwi r12, r5, 2, 4
/* 8146C41C | 7D 84 FE 70 */	srawi r4, r12, 31
/* 8146C420 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146C424 | 41 82 00 E4 */	beq .L_8146C508
/* 8146C428 | 3C 80 00 01 */	lis r4, 0x1
/* 8146C42C | 38 84 FF F7 */	subi r4, r4, 0x9
/* 8146C430 | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146C434 | 48 00 00 D4 */	b .L_8146C508
.L_8146C438:
/* 8146C438 | 81 7E 1B 28 */	lwz r11, 0x1b28(r30)
/* 8146C43C | 55 63 28 02 */	extlwi r3, r11, 2, 5
/* 8146C440 | 7C 6A FE 70 */	srawi r10, r3, 31
/* 8146C444 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146C448 | 41 82 00 C0 */	beq .L_8146C508
/* 8146C44C | 3C 80 00 01 */	lis r4, 0x1
/* 8146C450 | 38 84 FF F7 */	subi r4, r4, 0x9
/* 8146C454 | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 8146C458 | 48 00 00 B0 */	b .L_8146C508
.L_8146C45C:
/* 8146C45C | 81 3E 1B 28 */	lwz r9, 0x1b28(r30)
/* 8146C460 | 55 27 30 02 */	extlwi r7, r9, 2, 6
/* 8146C464 | 7C E5 FE 70 */	srawi r5, r7, 31
/* 8146C468 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146C46C | 41 82 00 9C */	beq .L_8146C508
/* 8146C470 | 3D 00 00 01 */	lis r8, 0x1
/* 8146C474 | 39 08 FF F7 */	subi r8, r8, 0x9
/* 8146C478 | B1 01 00 A2 */	sth r8, 0xa2(r1)
/* 8146C47C | 48 00 00 8C */	b .L_8146C508
.L_8146C480:
/* 8146C480 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146C484 | 54 C4 08 3C */	slwi r4, r6, 1
/* 8146C488 | 38 E1 03 1E */	addi r7, r1, 0x31e
/* 8146C48C | 7C 67 22 2E */	lhzx r3, r7, r4
/* 8146C490 | 54 65 05 F6 */	rlwinm r5, r3, 0, 23, 27
/* 8146C494 | 2C 05 00 E0 */	cmpwi r5, 0xe0
/* 8146C498 | 41 82 00 2C */	beq .L_8146C4C4
/* 8146C49C | 40 80 00 1C */	bge .L_8146C4B8
/* 8146C4A0 | 2C 05 00 70 */	cmpwi r5, 0x70
/* 8146C4A4 | 41 82 00 44 */	beq .L_8146C4E8
/* 8146C4A8 | 40 80 00 60 */	bge .L_8146C508
/* 8146C4AC | 2C 05 00 60 */	cmpwi r5, 0x60
/* 8146C4B0 | 41 82 00 14 */	beq .L_8146C4C4
/* 8146C4B4 | 48 00 00 54 */	b .L_8146C508
.L_8146C4B8:
/* 8146C4B8 | 2C 05 01 60 */	cmpwi r5, 0x160
/* 8146C4BC | 41 82 00 08 */	beq .L_8146C4C4
/* 8146C4C0 | 48 00 00 48 */	b .L_8146C508
.L_8146C4C4:
/* 8146C4C4 | 83 7E 1B 2C */	lwz r27, 0x1b2c(r30)
/* 8146C4C8 | 57 66 20 02 */	extlwi r6, r27, 2, 4
/* 8146C4CC | 7C C4 FE 70 */	srawi r4, r6, 31
/* 8146C4D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146C4D4 | 41 82 00 34 */	beq .L_8146C508
/* 8146C4D8 | 3C 60 00 01 */	lis r3, 0x1
/* 8146C4DC | 38 63 FF F7 */	subi r3, r3, 0x9
/* 8146C4E0 | B0 61 00 A2 */	sth r3, 0xa2(r1)
/* 8146C4E4 | 48 00 00 24 */	b .L_8146C508
.L_8146C4E8:
/* 8146C4E8 | 81 1E 1B 2C */	lwz r8, 0x1b2c(r30)
/* 8146C4EC | 55 04 28 02 */	extlwi r4, r8, 2, 5
/* 8146C4F0 | 7C 85 FE 70 */	srawi r5, r4, 31
/* 8146C4F4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146C4F8 | 41 82 00 10 */	beq .L_8146C508
/* 8146C4FC | 3C E0 00 01 */	lis r7, 0x1
/* 8146C500 | 38 E7 FF F7 */	subi r7, r7, 0x9
/* 8146C504 | B0 E1 00 A2 */	sth r7, 0xa2(r1)
.L_8146C508:
/* 8146C508 | A0 C1 00 A2 */	lhz r6, 0xa2(r1)
/* 8146C50C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146C510 | 41 82 00 70 */	beq .L_8146C580
/* 8146C514 | 38 60 00 01 */	li r3, 0x1
/* 8146C518 | 98 61 00 53 */	stb r3, 0x53(r1)
/* 8146C51C | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146C520 | 54 BC 08 3C */	slwi r28, r5, 1
/* 8146C524 | 39 81 03 1E */	addi r12, r1, 0x31e
/* 8146C528 | 7C 8C E2 2E */	lhzx r4, r12, r28
/* 8146C52C | A1 61 00 A2 */	lhz r11, 0xa2(r1)
/* 8146C530 | 7C 8A 58 38 */	and r10, r4, r11
/* 8146C534 | 7D 4C E3 2E */	sthx r10, r12, r28
/* 8146C538 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146C53C | 55 23 08 3C */	slwi r3, r9, 1
/* 8146C540 | 39 01 02 FE */	addi r8, r1, 0x2fe
/* 8146C544 | 7C 88 1A 2E */	lhzx r4, r8, r3
/* 8146C548 | A0 A1 00 A2 */	lhz r5, 0xa2(r1)
/* 8146C54C | 7C 87 28 38 */	and r7, r4, r5
/* 8146C550 | 7C E8 1B 2E */	sthx r7, r8, r3
/* 8146C554 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146C558 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146C55C | 40 82 00 24 */	bne .L_8146C580
/* 8146C560 | A0 81 03 3E */	lhz r4, 0x33e(r1)
/* 8146C564 | A0 A1 00 A2 */	lhz r5, 0xa2(r1)
/* 8146C568 | 7C 83 28 38 */	and r3, r4, r5
/* 8146C56C | B0 61 03 3E */	sth r3, 0x33e(r1)
/* 8146C570 | A1 01 03 40 */	lhz r8, 0x340(r1)
/* 8146C574 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 8146C578 | 7D 03 20 38 */	and r3, r8, r4
/* 8146C57C | B0 61 03 40 */	sth r3, 0x340(r1)
.L_8146C580:
/* 8146C580 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146C584 | 38 89 00 01 */	addi r4, r9, 0x1
/* 8146C588 | 90 81 01 14 */	stw r4, 0x114(r1)
.L_8146C58C:
/* 8146C58C | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146C590 | 88 A1 02 FD */	lbz r5, 0x2fd(r1)
/* 8146C594 | 7C 06 28 00 */	cmpw r6, r5
/* 8146C598 | 41 80 F9 70 */	blt .L_8146BF08
/* 8146C59C | 88 FF 00 0C */	lbz r7, 0xc(r31)
/* 8146C5A0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146C5A4 | 41 82 01 5C */	beq .L_8146C700
/* 8146C5A8 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146C5AC | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146C5B0 | 40 82 00 44 */	bne .L_8146C5F4
/* 8146C5B4 | 38 60 00 01 */	li r3, 0x1
/* 8146C5B8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C5BC | 38 80 00 03 */	li r4, 0x3
/* 8146C5C0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C5C4 | 7F C5 F3 78 */	mr r5, r30
/* 8146C5C8 | 4B FF 2D E9 */	bl Zi8GetTableAddress
/* 8146C5CC | 90 61 00 F0 */	stw r3, 0xf0(r1)
/* 8146C5D0 | 38 60 00 01 */	li r3, 0x1
/* 8146C5D4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C5D8 | 38 80 00 03 */	li r4, 0x3
/* 8146C5DC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C5E0 | 7F C5 F3 78 */	mr r5, r30
/* 8146C5E4 | 4B FF 2E 4D */	bl Zi8GetTableCount
/* 8146C5E8 | 7C 66 1B 78 */	mr r6, r3
/* 8146C5EC | B0 C1 00 A2 */	sth r6, 0xa2(r1)
/* 8146C5F0 | 48 00 00 44 */	b .L_8146C634
.L_8146C5F4:
/* 8146C5F4 | 38 60 00 01 */	li r3, 0x1
/* 8146C5F8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C5FC | 38 80 00 04 */	li r4, 0x4
/* 8146C600 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C604 | 7F C5 F3 78 */	mr r5, r30
/* 8146C608 | 4B FF 2D A9 */	bl Zi8GetTableAddress
/* 8146C60C | 7C 68 1B 78 */	mr r8, r3
/* 8146C610 | 91 01 00 F0 */	stw r8, 0xf0(r1)
/* 8146C614 | 38 60 00 01 */	li r3, 0x1
/* 8146C618 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C61C | 38 80 00 04 */	li r4, 0x4
/* 8146C620 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C624 | 7F C5 F3 78 */	mr r5, r30
/* 8146C628 | 4B FF 2E 09 */	bl Zi8GetTableCount
/* 8146C62C | 7C 65 1B 78 */	mr r5, r3
/* 8146C630 | B0 A1 00 A2 */	sth r5, 0xa2(r1)
.L_8146C634:
/* 8146C634 | 88 E1 02 FD */	lbz r7, 0x2fd(r1)
/* 8146C638 | 38 87 FF FF */	subi r4, r7, 0x1
/* 8146C63C | 54 86 08 3C */	slwi r6, r4, 1
/* 8146C640 | 38 A1 02 FE */	addi r5, r1, 0x2fe
/* 8146C644 | 7C 65 32 2E */	lhzx r3, r5, r6
/* 8146C648 | 54 69 04 38 */	rlwinm r9, r3, 0, 16, 28
/* 8146C64C | 55 28 04 3E */	clrlwi r8, r9, 16
/* 8146C650 | B1 01 00 84 */	sth r8, 0x84(r1)
/* 8146C654 | 88 E1 02 FD */	lbz r7, 0x2fd(r1)
/* 8146C658 | 38 87 FF FF */	subi r4, r7, 0x1
/* 8146C65C | 54 86 08 3C */	slwi r6, r4, 1
/* 8146C660 | 38 A1 03 1E */	addi r5, r1, 0x31e
/* 8146C664 | 7C 85 32 2E */	lhzx r4, r5, r6
/* 8146C668 | 54 83 04 38 */	rlwinm r3, r4, 0, 16, 28
/* 8146C66C | 54 6A 04 3E */	clrlwi r10, r3, 16
/* 8146C670 | B1 41 00 82 */	sth r10, 0x82(r1)
/* 8146C674 | 39 20 00 00 */	li r9, 0x0
/* 8146C678 | 91 21 01 14 */	stw r9, 0x114(r1)
/* 8146C67C | 48 00 00 60 */	b .L_8146C6DC
.L_8146C680:
/* 8146C680 | 80 C1 00 F0 */	lwz r6, 0xf0(r1)
/* 8146C684 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146C688 | 54 A4 08 3C */	slwi r4, r5, 1
/* 8146C68C | 7D 06 20 AE */	lbzx r8, r6, r4
/* 8146C690 | 80 E1 00 F0 */	lwz r7, 0xf0(r1)
/* 8146C694 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146C698 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146C69C | 7C 65 3A 14 */	add r3, r5, r7
/* 8146C6A0 | 88 83 00 01 */	lbz r4, 0x1(r3)
/* 8146C6A4 | 54 8B 04 3E */	clrlwi r11, r4, 16
/* 8146C6A8 | 55 63 40 2E */	slwi r3, r11, 8
/* 8146C6AC | 7D 07 1B 78 */	or r7, r8, r3
/* 8146C6B0 | 54 EA 04 3E */	clrlwi r10, r7, 16
/* 8146C6B4 | B1 41 00 9E */	sth r10, 0x9e(r1)
/* 8146C6B8 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 8146C6BC | A0 A1 00 9E */	lhz r5, 0x9e(r1)
/* 8146C6C0 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 8146C6C4 | 7C A9 20 38 */	and r9, r5, r4
/* 8146C6C8 | 7C 06 48 00 */	cmpw r6, r9
/* 8146C6CC | 41 82 00 20 */	beq .L_8146C6EC
/* 8146C6D0 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146C6D4 | 38 68 00 01 */	addi r3, r8, 0x1
/* 8146C6D8 | 90 61 01 14 */	stw r3, 0x114(r1)
.L_8146C6DC:
/* 8146C6DC | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146C6E0 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 8146C6E4 | 7C 06 20 00 */	cmpw r6, r4
/* 8146C6E8 | 41 80 FF 98 */	blt .L_8146C680
.L_8146C6EC:
/* 8146C6EC | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146C6F0 | A0 E1 00 A2 */	lhz r7, 0xa2(r1)
/* 8146C6F4 | 7C 05 38 00 */	cmpw r5, r7
/* 8146C6F8 | 40 A2 00 08 */	bne+ .L_8146C700
/* 8146C6FC | 48 00 80 4C */	b .L_81474748
.L_8146C700:
/* 8146C700 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 8146C704 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146C708 | 40 82 00 2C */	bne .L_8146C734
/* 8146C70C | 88 61 00 58 */	lbz r3, 0x58(r1)
/* 8146C710 | 28 03 00 02 */	cmplwi r3, 0x2
/* 8146C714 | 41 82 00 20 */	beq .L_8146C734
/* 8146C718 | 89 9F 00 0C */	lbz r12, 0xc(r31)
/* 8146C71C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8146C720 | 41 82 00 14 */	beq .L_8146C734
/* 8146C724 | 80 C1 00 C0 */	lwz r6, 0xc0(r1)
/* 8146C728 | A0 A6 00 00 */	lhz r5, 0x0(r6)
/* 8146C72C | 28 05 EF 09 */	cmplwi r5, 0xef09
/* 8146C730 | 40 82 00 18 */	bne .L_8146C748
.L_8146C734:
/* 8146C734 | 88 81 00 58 */	lbz r4, 0x58(r1)
/* 8146C738 | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146C73C | 41 82 00 0C */	beq .L_8146C748
/* 8146C740 | 39 00 00 00 */	li r8, 0x0
/* 8146C744 | 99 01 00 5C */	stb r8, 0x5c(r1)
.L_8146C748:
/* 8146C748 | 89 61 00 56 */	lbz r11, 0x56(r1)
/* 8146C74C | 28 0B 00 05 */	cmplwi r11, 0x5
/* 8146C750 | 40 82 00 18 */	bne .L_8146C768
/* 8146C754 | 38 60 00 01 */	li r3, 0x1
/* 8146C758 | 98 61 00 5C */	stb r3, 0x5c(r1)
/* 8146C75C | 88 E1 03 44 */	lbz r7, 0x344(r1)
/* 8146C760 | 28 07 00 01 */	cmplwi r7, 0x1
/* 8146C764 | 41 81 7F E4 */	bgt .L_81474748
.L_8146C768:
/* 8146C768 | 89 41 00 56 */	lbz r10, 0x56(r1)
/* 8146C76C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146C770 | 40 82 00 C8 */	bne .L_8146C838
/* 8146C774 | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8146C778 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146C77C | 41 82 00 BC */	beq .L_8146C838
/* 8146C780 | 88 DF 00 03 */	lbz r6, 0x3(r31)
/* 8146C784 | 54 C4 06 F6 */	rlwinm r4, r6, 0, 27, 27
/* 8146C788 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146C78C | 40 82 00 2C */	bne .L_8146C7B8
/* 8146C790 | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8146C794 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8146C798 | 39 03 FF FF */	subi r8, r3, 0x1
/* 8146C79C | 55 07 08 3C */	slwi r7, r8, 1
/* 8146C7A0 | 7C C5 3A 2E */	lhzx r6, r5, r7
/* 8146C7A4 | 28 06 F3 60 */	cmplwi r6, 0xf360
/* 8146C7A8 | 41 82 7F A0 */	beq .L_81474748
/* 8146C7AC | 88 C1 03 44 */	lbz r6, 0x344(r1)
/* 8146C7B0 | 28 06 00 01 */	cmplwi r6, 0x1
/* 8146C7B4 | 41 81 7F 94 */	bgt .L_81474748
.L_8146C7B8:
/* 8146C7B8 | 88 81 03 44 */	lbz r4, 0x344(r1)
/* 8146C7BC | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146C7C0 | 40 81 00 78 */	ble .L_8146C838
/* 8146C7C4 | 39 20 00 00 */	li r9, 0x0
/* 8146C7C8 | 99 21 00 5C */	stb r9, 0x5c(r1)
/* 8146C7CC | 38 A0 00 01 */	li r5, 0x1
/* 8146C7D0 | B0 A1 00 84 */	sth r5, 0x84(r1)
/* 8146C7D4 | 48 00 00 54 */	b .L_8146C828
.L_8146C7D8:
/* 8146C7D8 | 39 00 00 04 */	li r8, 0x4
/* 8146C7DC | B1 01 00 82 */	sth r8, 0x82(r1)
/* 8146C7E0 | 48 00 00 30 */	b .L_8146C810
.L_8146C7E4:
/* 8146C7E4 | A0 61 00 84 */	lhz r3, 0x84(r1)
/* 8146C7E8 | 1C 83 00 0C */	mulli r4, r3, 0xc
/* 8146C7EC | 38 E1 03 45 */	addi r7, r1, 0x345
/* 8146C7F0 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 8146C7F4 | 7D 27 22 14 */	add r9, r7, r4
/* 8146C7F8 | 7C 66 48 AE */	lbzx r3, r6, r9
/* 8146C7FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146C800 | 40 82 7F 48 */	bne .L_81474748
/* 8146C804 | A0 A1 00 82 */	lhz r5, 0x82(r1)
/* 8146C808 | 38 85 00 01 */	addi r4, r5, 0x1
/* 8146C80C | B0 81 00 82 */	sth r4, 0x82(r1)
.L_8146C810:
/* 8146C810 | A1 41 00 82 */	lhz r10, 0x82(r1)
/* 8146C814 | 28 0A 00 0C */	cmplwi r10, 0xc
/* 8146C818 | 41 80 FF CC */	blt .L_8146C7E4
/* 8146C81C | A0 61 00 84 */	lhz r3, 0x84(r1)
/* 8146C820 | 39 83 00 01 */	addi r12, r3, 0x1
/* 8146C824 | B1 81 00 84 */	sth r12, 0x84(r1)
.L_8146C828:
/* 8146C828 | A0 E1 00 84 */	lhz r7, 0x84(r1)
/* 8146C82C | 89 01 03 44 */	lbz r8, 0x344(r1)
/* 8146C830 | 7C 07 40 00 */	cmpw r7, r8
/* 8146C834 | 41 80 FF A4 */	blt .L_8146C7D8
.L_8146C838:
/* 8146C838 | 88 DF 00 03 */	lbz r6, 0x3(r31)
/* 8146C83C | 54 C5 06 F6 */	rlwinm r5, r6, 0, 27, 27
/* 8146C840 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146C844 | 41 82 00 44 */	beq .L_8146C888
/* 8146C848 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 8146C84C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146C850 | 40 82 00 1C */	bne .L_8146C86C
/* 8146C854 | 38 60 01 62 */	li r3, 0x162
/* 8146C858 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8146C85C | 7F C4 F3 78 */	mr r4, r30
/* 8146C860 | 48 01 7C 1D */	bl Zi8LogError
/* 8146C864 | 38 60 00 00 */	li r3, 0x0
/* 8146C868 | 48 00 8D 60 */	b .L_814755C8
.L_8146C86C:
/* 8146C86C | 38 80 00 01 */	li r4, 0x1
/* 8146C870 | 98 81 00 5D */	stb r4, 0x5d(r1)
/* 8146C874 | 89 7F 00 22 */	lbz r11, 0x22(r31)
/* 8146C878 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 8146C87C | 41 82 00 0C */	beq .L_8146C888
/* 8146C880 | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8146C884 | 99 3F 00 22 */	stb r9, 0x22(r31)
.L_8146C888:
/* 8146C888 | 88 FD 00 13 */	lbz r7, 0x13(r29)
/* 8146C88C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146C890 | 40 82 00 0C */	bne .L_8146C89C
/* 8146C894 | 7F C3 F3 78 */	mr r3, r30
/* 8146C898 | 48 00 F4 51 */	bl Zi8InitDupWordBuf
.L_8146C89C:
/* 8146C89C | 38 60 00 01 */	li r3, 0x1
/* 8146C8A0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C8A4 | 38 80 00 00 */	li r4, 0x0
/* 8146C8A8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C8AC | 7F C5 F3 78 */	mr r5, r30
/* 8146C8B0 | 4B FF 2B 01 */	bl Zi8GetTableAddress
/* 8146C8B4 | 7C 68 1B 78 */	mr r8, r3
/* 8146C8B8 | 91 01 00 EC */	stw r8, 0xec(r1)
/* 8146C8BC | 38 60 00 01 */	li r3, 0x1
/* 8146C8C0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C8C4 | 38 80 00 00 */	li r4, 0x0
/* 8146C8C8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C8CC | 7F C5 F3 78 */	mr r5, r30
/* 8146C8D0 | 4B FF 2B 61 */	bl Zi8GetTableCount
/* 8146C8D4 | 7C 6A 1B 78 */	mr r10, r3
/* 8146C8D8 | B1 41 00 7A */	sth r10, 0x7a(r1)
/* 8146C8DC | 38 60 00 01 */	li r3, 0x1
/* 8146C8E0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C8E4 | 38 80 00 01 */	li r4, 0x1
/* 8146C8E8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C8EC | 7F C5 F3 78 */	mr r5, r30
/* 8146C8F0 | 4B FF 2A C1 */	bl Zi8GetTableAddress
/* 8146C8F4 | 7C 68 1B 78 */	mr r8, r3
/* 8146C8F8 | 91 01 00 D4 */	stw r8, 0xd4(r1)
/* 8146C8FC | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 8146C900 | 28 03 00 02 */	cmplwi r3, 0x2
/* 8146C904 | 41 82 00 10 */	beq .L_8146C914
/* 8146C908 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146C90C | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146C910 | 40 82 00 44 */	bne .L_8146C954
.L_8146C914:
/* 8146C914 | 38 60 00 01 */	li r3, 0x1
/* 8146C918 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C91C | 38 80 00 05 */	li r4, 0x5
/* 8146C920 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C924 | 7F C5 F3 78 */	mr r5, r30
/* 8146C928 | 4B FF 2A 89 */	bl Zi8GetTableAddress
/* 8146C92C | 7C 66 1B 78 */	mr r6, r3
/* 8146C930 | 90 C1 00 E8 */	stw r6, 0xe8(r1)
/* 8146C934 | 38 60 00 01 */	li r3, 0x1
/* 8146C938 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C93C | 38 80 00 05 */	li r4, 0x5
/* 8146C940 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C944 | 7F C5 F3 78 */	mr r5, r30
/* 8146C948 | 4B FF 2A E9 */	bl Zi8GetTableCount
/* 8146C94C | 7C 69 1B 78 */	mr r9, r3
/* 8146C950 | B1 21 00 76 */	sth r9, 0x76(r1)
.L_8146C954:
/* 8146C954 | 89 1F 00 03 */	lbz r8, 0x3(r31)
/* 8146C958 | 55 05 06 72 */	rlwinm r5, r8, 0, 25, 25
/* 8146C95C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146C960 | 41 82 00 54 */	beq .L_8146C9B4
/* 8146C964 | 38 60 00 01 */	li r3, 0x1
/* 8146C968 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C96C | 7F C4 F3 78 */	mr r4, r30
/* 8146C970 | 4B FF 2B 05 */	bl Zi8GetFormatVersion
/* 8146C974 | 7C 64 1B 78 */	mr r4, r3
/* 8146C978 | 54 87 06 3E */	clrlwi r7, r4, 24
/* 8146C97C | 28 07 00 01 */	cmplwi r7, 0x1
/* 8146C980 | 41 80 00 34 */	blt .L_8146C9B4
/* 8146C984 | 38 60 00 01 */	li r3, 0x1
/* 8146C988 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146C98C | 38 80 00 0F */	li r4, 0xf
/* 8146C990 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146C994 | 7F C5 F3 78 */	mr r5, r30
/* 8146C998 | 4B FF 2A 99 */	bl Zi8GetTableCount
/* 8146C99C | B0 61 00 70 */	sth r3, 0x70(r1)
/* 8146C9A0 | A0 C1 00 70 */	lhz r6, 0x70(r1)
/* 8146C9A4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146C9A8 | 41 82 00 0C */	beq .L_8146C9B4
/* 8146C9AC | A0 81 00 70 */	lhz r4, 0x70(r1)
/* 8146C9B0 | B0 81 00 7A */	sth r4, 0x7a(r1)
.L_8146C9B4:
/* 8146C9B4 | 89 5F 00 03 */	lbz r10, 0x3(r31)
/* 8146C9B8 | 55 45 06 30 */	rlwinm r5, r10, 0, 24, 24
/* 8146C9BC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146C9C0 | 41 82 00 34 */	beq .L_8146C9F4
/* 8146C9C4 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8146C9C8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146C9CC | 41 82 00 28 */	beq .L_8146C9F4
/* 8146C9D0 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8146C9D4 | 38 80 00 00 */	li r4, 0x0
/* 8146C9D8 | A1 21 00 7A */	lhz r9, 0x7a(r1)
/* 8146C9DC | 38 E9 00 07 */	addi r7, r9, 0x7
/* 8146C9E0 | 7C E6 1E 70 */	srawi r6, r7, 3
/* 8146C9E4 | 7C A6 01 94 */	addze r5, r6
/* 8146C9E8 | 48 00 F6 35 */	bl Zi8Memset
/* 8146C9EC | 39 00 00 01 */	li r8, 0x1
/* 8146C9F0 | 99 01 00 5E */	stb r8, 0x5e(r1)
.L_8146C9F4:
/* 8146C9F4 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8146C9F8 | 2C 05 00 02 */	cmpwi r5, 0x2
/* 8146C9FC | 41 82 00 C4 */	beq .L_8146CAC0
/* 8146CA00 | 40 80 00 14 */	bge .L_8146CA14
/* 8146CA04 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146CA08 | 41 82 01 60 */	beq .L_8146CB68
/* 8146CA0C | 40 80 00 14 */	bge .L_8146CA20
/* 8146CA10 | 48 00 01 F4 */	b .L_8146CC04
.L_8146CA14:
/* 8146CA14 | 2C 05 00 05 */	cmpwi r5, 0x5
/* 8146CA18 | 41 82 01 50 */	beq .L_8146CB68
/* 8146CA1C | 48 00 01 E8 */	b .L_8146CC04
.L_8146CA20:
/* 8146CA20 | 38 60 00 01 */	li r3, 0x1
/* 8146CA24 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CA28 | 38 80 00 03 */	li r4, 0x3
/* 8146CA2C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CA30 | 7F C5 F3 78 */	mr r5, r30
/* 8146CA34 | 4B FF 29 7D */	bl Zi8GetTableAddress
/* 8146CA38 | 90 61 00 F0 */	stw r3, 0xf0(r1)
/* 8146CA3C | 38 60 00 01 */	li r3, 0x1
/* 8146CA40 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CA44 | 7F C4 F3 78 */	mr r4, r30
/* 8146CA48 | 4B FF 2A 2D */	bl Zi8GetFormatVersion
/* 8146CA4C | 7C 67 1B 78 */	mr r7, r3
/* 8146CA50 | 54 E6 06 3E */	clrlwi r6, r7, 24
/* 8146CA54 | 28 06 00 01 */	cmplwi r6, 0x1
/* 8146CA58 | 41 80 01 AC */	blt .L_8146CC04
/* 8146CA5C | 88 81 02 FD */	lbz r4, 0x2fd(r1)
/* 8146CA60 | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146CA64 | 40 82 01 A0 */	bne .L_8146CC04
/* 8146CA68 | 38 60 00 01 */	li r3, 0x1
/* 8146CA6C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CA70 | 38 80 00 0D */	li r4, 0xd
/* 8146CA74 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CA78 | 7F C5 F3 78 */	mr r5, r30
/* 8146CA7C | 4B FF 29 B5 */	bl Zi8GetTableCount
/* 8146CA80 | 7C 65 1B 78 */	mr r5, r3
/* 8146CA84 | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 8146CA88 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146CA8C | 41 82 01 78 */	beq .L_8146CC04
/* 8146CA90 | 38 60 00 01 */	li r3, 0x1
/* 8146CA94 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CA98 | 38 80 00 0E */	li r4, 0xe
/* 8146CA9C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CAA0 | 7F C5 F3 78 */	mr r5, r30
/* 8146CAA4 | 4B FF 29 8D */	bl Zi8GetTableCount
/* 8146CAA8 | 54 67 04 3E */	clrlwi r7, r3, 16
/* 8146CAAC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146CAB0 | 41 82 01 54 */	beq .L_8146CC04
/* 8146CAB4 | 39 60 00 01 */	li r11, 0x1
/* 8146CAB8 | 99 61 00 5F */	stb r11, 0x5f(r1)
/* 8146CABC | 48 00 01 48 */	b .L_8146CC04
.L_8146CAC0:
/* 8146CAC0 | 38 60 00 01 */	li r3, 0x1
/* 8146CAC4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CAC8 | 38 80 00 04 */	li r4, 0x4
/* 8146CACC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CAD0 | 7F C5 F3 78 */	mr r5, r30
/* 8146CAD4 | 4B FF 28 DD */	bl Zi8GetTableAddress
/* 8146CAD8 | 7C 6A 1B 78 */	mr r10, r3
/* 8146CADC | 91 41 00 F0 */	stw r10, 0xf0(r1)
/* 8146CAE0 | 38 60 00 01 */	li r3, 0x1
/* 8146CAE4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CAE8 | 7F C4 F3 78 */	mr r4, r30
/* 8146CAEC | 4B FF 29 89 */	bl Zi8GetFormatVersion
/* 8146CAF0 | 7C 68 1B 78 */	mr r8, r3
/* 8146CAF4 | 55 09 06 3E */	clrlwi r9, r8, 24
/* 8146CAF8 | 28 09 00 01 */	cmplwi r9, 0x1
/* 8146CAFC | 41 80 01 08 */	blt .L_8146CC04
/* 8146CB00 | 89 01 02 FD */	lbz r8, 0x2fd(r1)
/* 8146CB04 | 28 08 00 01 */	cmplwi r8, 0x1
/* 8146CB08 | 40 82 00 FC */	bne .L_8146CC04
/* 8146CB0C | 38 60 00 01 */	li r3, 0x1
/* 8146CB10 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CB14 | 38 80 00 0D */	li r4, 0xd
/* 8146CB18 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CB1C | 7F C5 F3 78 */	mr r5, r30
/* 8146CB20 | 4B FF 29 11 */	bl Zi8GetTableCount
/* 8146CB24 | 7C 67 1B 78 */	mr r7, r3
/* 8146CB28 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 8146CB2C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146CB30 | 41 82 00 D4 */	beq .L_8146CC04
/* 8146CB34 | 38 60 00 01 */	li r3, 0x1
/* 8146CB38 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CB3C | 38 80 00 0E */	li r4, 0xe
/* 8146CB40 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CB44 | 7F C5 F3 78 */	mr r5, r30
/* 8146CB48 | 4B FF 28 E9 */	bl Zi8GetTableCount
/* 8146CB4C | 7C 65 1B 78 */	mr r5, r3
/* 8146CB50 | 54 A9 04 3E */	clrlwi r9, r5, 16
/* 8146CB54 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146CB58 | 41 82 00 AC */	beq .L_8146CC04
/* 8146CB5C | 38 80 00 01 */	li r4, 0x1
/* 8146CB60 | 98 81 00 5F */	stb r4, 0x5f(r1)
/* 8146CB64 | 48 00 00 A0 */	b .L_8146CC04
.L_8146CB68:
/* 8146CB68 | 81 41 00 F8 */	lwz r10, 0xf8(r1)
/* 8146CB6C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146CB70 | 40 82 00 94 */	bne .L_8146CC04
/* 8146CB74 | 38 60 00 01 */	li r3, 0x1
/* 8146CB78 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CB7C | 38 80 00 07 */	li r4, 0x7
/* 8146CB80 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CB84 | 7F C5 F3 78 */	mr r5, r30
/* 8146CB88 | 4B FF 28 A9 */	bl Zi8GetTableCount
/* 8146CB8C | B0 61 00 78 */	sth r3, 0x78(r1)
/* 8146CB90 | 38 60 00 01 */	li r3, 0x1
/* 8146CB94 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CB98 | 38 80 00 07 */	li r4, 0x7
/* 8146CB9C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CBA0 | 7F C5 F3 78 */	mr r5, r30
/* 8146CBA4 | 4B FF 28 0D */	bl Zi8GetTableAddress
/* 8146CBA8 | 7C 68 1B 78 */	mr r8, r3
/* 8146CBAC | 91 01 00 F4 */	stw r8, 0xf4(r1)
/* 8146CBB0 | 38 60 00 01 */	li r3, 0x1
/* 8146CBB4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CBB8 | 38 80 00 02 */	li r4, 0x2
/* 8146CBBC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CBC0 | 7F C5 F3 78 */	mr r5, r30
/* 8146CBC4 | 4B FF 27 ED */	bl Zi8GetTableAddress
/* 8146CBC8 | 90 61 00 FC */	stw r3, 0xfc(r1)
/* 8146CBCC | 80 A1 00 FC */	lwz r5, 0xfc(r1)
/* 8146CBD0 | 90 A1 00 F8 */	stw r5, 0xf8(r1)
/* 8146CBD4 | 80 E1 00 FC */	lwz r7, 0xfc(r1)
/* 8146CBD8 | 38 87 00 08 */	addi r4, r7, 0x8
/* 8146CBDC | 90 81 00 FC */	stw r4, 0xfc(r1)
/* 8146CBE0 | A0 C1 00 78 */	lhz r6, 0x78(r1)
/* 8146CBE4 | 38 A6 FF FF */	subi r5, r6, 0x1
/* 8146CBE8 | B0 A1 00 78 */	sth r5, 0x78(r1)
/* 8146CBEC | A0 81 00 78 */	lhz r4, 0x78(r1)
/* 8146CBF0 | B0 81 00 74 */	sth r4, 0x74(r1)
/* 8146CBF4 | 39 20 00 00 */	li r9, 0x0
/* 8146CBF8 | B1 21 00 96 */	sth r9, 0x96(r1)
/* 8146CBFC | 39 00 00 01 */	li r8, 0x1
/* 8146CC00 | 99 01 00 62 */	stb r8, 0x62(r1)
.L_8146CC04:
/* 8146CC04 | 88 9F 00 03 */	lbz r4, 0x3(r31)
/* 8146CC08 | 54 87 07 BC */	rlwinm r7, r4, 0, 30, 30
/* 8146CC0C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146CC10 | 41 82 00 44 */	beq .L_8146CC54
/* 8146CC14 | 38 60 00 01 */	li r3, 0x1
/* 8146CC18 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CC1C | 38 80 00 08 */	li r4, 0x8
/* 8146CC20 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CC24 | 7F C5 F3 78 */	mr r5, r30
/* 8146CC28 | 4B FF 27 89 */	bl Zi8GetTableAddress
/* 8146CC2C | 90 61 00 DC */	stw r3, 0xdc(r1)
/* 8146CC30 | 38 60 00 01 */	li r3, 0x1
/* 8146CC34 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CC38 | 38 80 00 08 */	li r4, 0x8
/* 8146CC3C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CC40 | 7F C5 F3 78 */	mr r5, r30
/* 8146CC44 | 4B FF 27 ED */	bl Zi8GetTableCount
/* 8146CC48 | 7C 66 1B 78 */	mr r6, r3
/* 8146CC4C | B0 C1 00 8A */	sth r6, 0x8a(r1)
/* 8146CC50 | 48 00 00 50 */	b .L_8146CCA0
.L_8146CC54:
/* 8146CC54 | 88 BF 00 03 */	lbz r5, 0x3(r31)
/* 8146CC58 | 54 A4 07 7A */	rlwinm r4, r5, 0, 29, 29
/* 8146CC5C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146CC60 | 41 82 00 40 */	beq .L_8146CCA0
/* 8146CC64 | 38 60 00 01 */	li r3, 0x1
/* 8146CC68 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CC6C | 38 80 00 09 */	li r4, 0x9
/* 8146CC70 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CC74 | 7F C5 F3 78 */	mr r5, r30
/* 8146CC78 | 4B FF 27 39 */	bl Zi8GetTableAddress
/* 8146CC7C | 7C 68 1B 78 */	mr r8, r3
/* 8146CC80 | 91 01 00 DC */	stw r8, 0xdc(r1)
/* 8146CC84 | 38 60 00 01 */	li r3, 0x1
/* 8146CC88 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146CC8C | 38 80 00 09 */	li r4, 0x9
/* 8146CC90 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CC94 | 7F C5 F3 78 */	mr r5, r30
/* 8146CC98 | 4B FF 27 99 */	bl Zi8GetTableCount
/* 8146CC9C | B0 61 00 8A */	sth r3, 0x8a(r1)
.L_8146CCA0:
/* 8146CCA0 | 88 E1 03 44 */	lbz r7, 0x344(r1)
/* 8146CCA4 | 28 07 00 01 */	cmplwi r7, 0x1
/* 8146CCA8 | 40 81 00 14 */	ble .L_8146CCBC
/* 8146CCAC | 38 C0 00 00 */	li r6, 0x0
/* 8146CCB0 | 90 C1 00 DC */	stw r6, 0xdc(r1)
/* 8146CCB4 | 38 A0 00 00 */	li r5, 0x0
/* 8146CCB8 | B0 A1 00 8A */	sth r5, 0x8a(r1)
.L_8146CCBC:
/* 8146CCBC | A0 81 00 8A */	lhz r4, 0x8a(r1)
/* 8146CCC0 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 8146CCC4 | A1 3E 00 0C */	lhz r9, 0xc(r30)
/* 8146CCC8 | 7C 03 48 40 */	cmplw r3, r9
/* 8146CCCC | 40 81 00 0C */	ble .L_8146CCD8
/* 8146CCD0 | A1 1E 00 0C */	lhz r8, 0xc(r30)
/* 8146CCD4 | B1 01 00 8A */	sth r8, 0x8a(r1)
.L_8146CCD8:
/* 8146CCD8 | A0 E1 00 8A */	lhz r7, 0x8a(r1)
/* 8146CCDC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146CCE0 | 40 82 01 DC */	bne .L_8146CEBC
/* 8146CCE4 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146CCE8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146CCEC | 40 82 01 D0 */	bne .L_8146CEBC
/* 8146CCF0 | 88 BF 00 0C */	lbz r5, 0xc(r31)
/* 8146CCF4 | 28 05 00 01 */	cmplwi r5, 0x1
/* 8146CCF8 | 40 82 01 C4 */	bne .L_8146CEBC
/* 8146CCFC | 80 81 00 C0 */	lwz r4, 0xc0(r1)
/* 8146CD00 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 8146CD04 | 28 03 EF 00 */	cmplwi r3, 0xef00
/* 8146CD08 | 40 82 01 B4 */	bne .L_8146CEBC
/* 8146CD0C | 39 80 00 00 */	li r12, 0x0
/* 8146CD10 | 91 81 01 14 */	stw r12, 0x114(r1)
/* 8146CD14 | 48 00 01 9C */	b .L_8146CEB0
.L_8146CD18:
/* 8146CD18 | 81 61 01 14 */	lwz r11, 0x114(r1)
/* 8146CD1C | 55 67 08 3C */	slwi r7, r11, 1
/* 8146CD20 | 39 42 8C 08 */	li r10, ziPuncts@sda21
/* 8146CD24 | 7D 2A 3A 2E */	lhzx r9, r10, r7
/* 8146CD28 | 55 28 04 3E */	clrlwi r8, r9, 16
/* 8146CD2C | B1 01 00 94 */	sth r8, 0x94(r1)
/* 8146CD30 | 88 61 00 5D */	lbz r3, 0x5d(r1)
/* 8146CD34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146CD38 | 40 82 00 60 */	bne .L_8146CD98
/* 8146CD3C | 38 80 00 00 */	li r4, 0x0
/* 8146CD40 | B0 81 00 84 */	sth r4, 0x84(r1)
/* 8146CD44 | 48 00 00 30 */	b .L_8146CD74
.L_8146CD48:
/* 8146CD48 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146CD4C | 54 69 04 3E */	clrlwi r9, r3, 16
/* 8146CD50 | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 8146CD54 | A0 A1 00 84 */	lhz r5, 0x84(r1)
/* 8146CD58 | 54 A7 08 3C */	slwi r7, r5, 1
/* 8146CD5C | 7C C8 3A 2E */	lhzx r6, r8, r7
/* 8146CD60 | 7C 09 30 40 */	cmplw r9, r6
/* 8146CD64 | 41 82 00 20 */	beq .L_8146CD84
/* 8146CD68 | A0 A1 00 84 */	lhz r5, 0x84(r1)
/* 8146CD6C | 38 85 00 01 */	addi r4, r5, 0x1
/* 8146CD70 | B0 81 00 84 */	sth r4, 0x84(r1)
.L_8146CD74:
/* 8146CD74 | A1 81 00 84 */	lhz r12, 0x84(r1)
/* 8146CD78 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146CD7C | 7C 0C 20 00 */	cmpw r12, r4
/* 8146CD80 | 41 80 FF C8 */	blt .L_8146CD48
.L_8146CD84:
/* 8146CD84 | A1 61 00 84 */	lhz r11, 0x84(r1)
/* 8146CD88 | 89 41 00 67 */	lbz r10, 0x67(r1)
/* 8146CD8C | 7C 0B 50 00 */	cmpw r11, r10
/* 8146CD90 | 41 80 01 14 */	blt .L_8146CEA4
/* 8146CD94 | 48 00 00 24 */	b .L_8146CDB8
.L_8146CD98:
/* 8146CD98 | 38 61 00 94 */	addi r3, r1, 0x94
/* 8146CD9C | 38 80 00 01 */	li r4, 0x1
/* 8146CDA0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146CDA4 | 7F C5 F3 78 */	mr r5, r30
/* 8146CDA8 | 48 00 F0 49 */	bl Zi8IsDupWordW
/* 8146CDAC | 54 64 06 3E */	clrlwi r4, r3, 24
/* 8146CDB0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146CDB4 | 40 82 00 F0 */	bne .L_8146CEA4
.L_8146CDB8:
/* 8146CDB8 | A1 21 00 72 */	lhz r9, 0x72(r1)
/* 8146CDBC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146CDC0 | 41 82 00 14 */	beq .L_8146CDD4
/* 8146CDC4 | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 8146CDC8 | 38 E5 FF FF */	subi r7, r5, 0x1
/* 8146CDCC | B0 E1 00 72 */	sth r7, 0x72(r1)
/* 8146CDD0 | 48 00 00 D4 */	b .L_8146CEA4
.L_8146CDD4:
/* 8146CDD4 | 81 01 00 CC */	lwz r8, 0xcc(r1)
/* 8146CDD8 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 8146CDDC | 90 C1 00 CC */	stw r6, 0xcc(r1)
/* 8146CDE0 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 8146CDE4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146CDE8 | 40 82 00 AC */	bne .L_8146CE94
/* 8146CDEC | 88 E1 00 5D */	lbz r7, 0x5d(r1)
/* 8146CDF0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146CDF4 | 41 82 00 64 */	beq .L_8146CE58
/* 8146CDF8 | 88 61 00 67 */	lbz r3, 0x67(r1)
/* 8146CDFC | 38 A3 00 01 */	addi r5, r3, 0x1
/* 8146CE00 | 98 A1 00 67 */	stb r5, 0x67(r1)
/* 8146CE04 | A3 61 00 94 */	lhz r27, 0x94(r1)
/* 8146CE08 | 80 81 00 BC */	lwz r4, 0xbc(r1)
/* 8146CE0C | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 8146CE10 | 7C C3 33 78 */	mr r3, r6
/* 8146CE14 | 54 65 08 3C */	slwi r5, r3, 1
/* 8146CE18 | 7F 64 2B 2E */	sthx r27, r4, r5
/* 8146CE1C | 39 06 00 01 */	addi r8, r6, 0x1
/* 8146CE20 | 91 01 01 04 */	stw r8, 0x104(r1)
/* 8146CE24 | 38 80 00 20 */	li r4, 0x20
/* 8146CE28 | 80 E1 00 BC */	lwz r7, 0xbc(r1)
/* 8146CE2C | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 8146CE30 | 7C C3 33 78 */	mr r3, r6
/* 8146CE34 | 54 7C 08 3C */	slwi r28, r3, 1
/* 8146CE38 | 7C 87 E3 2E */	sthx r4, r7, r28
/* 8146CE3C | 38 A6 00 01 */	addi r5, r6, 0x1
/* 8146CE40 | 90 A1 01 04 */	stw r5, 0x104(r1)
/* 8146CE44 | 81 81 01 04 */	lwz r12, 0x104(r1)
/* 8146CE48 | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 8146CE4C | 7C 0C 20 00 */	cmpw r12, r4
/* 8146CE50 | 41 81 78 F8 */	bgt .L_81474748
/* 8146CE54 | 48 00 00 28 */	b .L_8146CE7C
.L_8146CE58:
/* 8146CE58 | A1 61 00 94 */	lhz r11, 0x94(r1)
/* 8146CE5C | 81 41 00 BC */	lwz r10, 0xbc(r1)
/* 8146CE60 | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 8146CE64 | 7D 23 4B 78 */	mr r3, r9
/* 8146CE68 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 8146CE6C | 54 85 08 3C */	slwi r5, r4, 1
/* 8146CE70 | 7D 6A 2B 2E */	sthx r11, r10, r5
/* 8146CE74 | 39 09 00 01 */	addi r8, r9, 0x1
/* 8146CE78 | 99 01 00 67 */	stb r8, 0x67(r1)
.L_8146CE7C:
/* 8146CE7C | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 8146CE80 | 54 E6 06 3E */	clrlwi r6, r7, 24
/* 8146CE84 | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 8146CE88 | 7C 06 20 40 */	cmplw r6, r4
/* 8146CE8C | 40 80 78 BC */	bge .L_81474748
/* 8146CE90 | 48 00 00 14 */	b .L_8146CEA4
.L_8146CE94:
/* 8146CE94 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8146CE98 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8146CE9C | 7C 05 18 00 */	cmpw r5, r3
/* 8146CEA0 | 40 80 78 A8 */	bge .L_81474748
.L_8146CEA4:
/* 8146CEA4 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146CEA8 | 38 88 00 01 */	addi r4, r8, 0x1
/* 8146CEAC | 90 81 01 14 */	stw r4, 0x114(r1)
.L_8146CEB0:
/* 8146CEB0 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146CEB4 | 28 03 00 04 */	cmplwi r3, 0x4
/* 8146CEB8 | 41 80 FE 60 */	blt .L_8146CD18
.L_8146CEBC:
/* 8146CEBC | 89 3D 00 00 */	lbz r9, 0x0(r29)
/* 8146CEC0 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146CEC4 | 41 82 00 10 */	beq .L_8146CED4
/* 8146CEC8 | 88 81 00 58 */	lbz r4, 0x58(r1)
/* 8146CECC | 28 04 00 05 */	cmplwi r4, 0x5
/* 8146CED0 | 40 82 0B B4 */	bne .L_8146DA84
.L_8146CED4:
/* 8146CED4 | 88 DF 00 0C */	lbz r6, 0xc(r31)
/* 8146CED8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146CEDC | 41 82 00 24 */	beq .L_8146CF00
/* 8146CEE0 | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8146CEE4 | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 8146CEE8 | 7F C4 F3 78 */	mr r4, r30
/* 8146CEEC | 48 00 FE 61 */	bl Zi8IsComponent
/* 8146CEF0 | 7C 67 1B 78 */	mr r7, r3
/* 8146CEF4 | 54 E4 06 3E */	clrlwi r4, r7, 24
/* 8146CEF8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146CEFC | 40 82 0B 88 */	bne .L_8146DA84
.L_8146CF00:
/* 8146CF00 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 8146CF04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146CF08 | 41 82 00 24 */	beq .L_8146CF2C
/* 8146CF0C | 80 DF 00 10 */	lwz r6, 0x10(r31)
/* 8146CF10 | A0 66 00 00 */	lhz r3, 0x0(r6)
/* 8146CF14 | 7F C4 F3 78 */	mr r4, r30
/* 8146CF18 | 48 00 FE 5D */	bl Zi8IsCharacter
/* 8146CF1C | 7C 68 1B 78 */	mr r8, r3
/* 8146CF20 | 55 05 06 3E */	clrlwi r5, r8, 24
/* 8146CF24 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146CF28 | 41 82 0B 5C */	beq .L_8146DA84
.L_8146CF2C:
/* 8146CF2C | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146CF30 | 28 07 00 05 */	cmplwi r7, 0x5
/* 8146CF34 | 41 82 0B 50 */	beq .L_8146DA84
/* 8146CF38 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146CF3C | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146CF40 | 41 82 00 10 */	beq .L_8146CF50
/* 8146CF44 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146CF48 | 28 06 00 02 */	cmplwi r6, 0x2
/* 8146CF4C | 40 82 00 10 */	bne .L_8146CF5C
.L_8146CF50:
/* 8146CF50 | 88 A1 02 FD */	lbz r5, 0x2fd(r1)
/* 8146CF54 | 28 05 00 01 */	cmplwi r5, 0x1
/* 8146CF58 | 41 81 0B 2C */	bgt .L_8146DA84
.L_8146CF5C:
/* 8146CF5C | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 8146CF60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146CF64 | 40 82 00 10 */	bne .L_8146CF74
/* 8146CF68 | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8146CF6C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146CF70 | 41 82 0B 14 */	beq .L_8146DA84
.L_8146CF74:
/* 8146CF74 | 39 00 00 00 */	li r8, 0x0
/* 8146CF78 | 99 01 00 6F */	stb r8, 0x6f(r1)
/* 8146CF7C | 48 00 0A C8 */	b .L_8146DA44
.L_8146CF80:
/* 8146CF80 | 38 E0 00 01 */	li r7, 0x1
/* 8146CF84 | 98 E1 00 6F */	stb r7, 0x6f(r1)
/* 8146CF88 | 88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8146CF8C | 54 86 08 3C */	slwi r6, r4, 1
/* 8146CF90 | 38 A1 02 58 */	addi r5, r1, 0x258
/* 8146CF94 | 7C 85 32 2E */	lhzx r4, r5, r6
/* 8146CF98 | B0 81 00 94 */	sth r4, 0x94(r1)
/* 8146CF9C | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146CFA0 | 7F C4 F3 78 */	mr r4, r30
/* 8146CFA4 | 48 00 FD D1 */	bl Zi8IsCharacter
/* 8146CFA8 | 54 6A 06 3E */	clrlwi r10, r3, 24
/* 8146CFAC | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146CFB0 | 41 82 0A 94 */	beq .L_8146DA44
/* 8146CFB4 | 89 21 00 5D */	lbz r9, 0x5d(r1)
/* 8146CFB8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146CFBC | 40 82 00 18 */	bne .L_8146CFD4
/* 8146CFC0 | A0 C1 00 94 */	lhz r6, 0x94(r1)
/* 8146CFC4 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 8146CFC8 | A0 81 00 8C */	lhz r4, 0x8c(r1)
/* 8146CFCC | 7C 05 20 40 */	cmplw r5, r4
/* 8146CFD0 | 41 82 0A 74 */	beq .L_8146DA44
.L_8146CFD4:
/* 8146CFD4 | A1 01 00 94 */	lhz r8, 0x94(r1)
/* 8146CFD8 | B1 01 00 8C */	sth r8, 0x8c(r1)
/* 8146CFDC | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146CFE0 | 7F C4 F3 78 */	mr r4, r30
/* 8146CFE4 | 48 01 23 B1 */	bl Zi8Uni2Ord
/* 8146CFE8 | 7C 67 1B 78 */	mr r7, r3
/* 8146CFEC | B0 E1 00 98 */	sth r7, 0x98(r1)
/* 8146CFF0 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 8146CFF4 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 8146CFF8 | 41 82 0A 4C */	beq .L_8146DA44
/* 8146CFFC | 80 A1 00 EC */	lwz r5, 0xec(r1)
/* 8146D000 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 8146D004 | 1C 83 00 0C */	mulli r4, r3, 0xc
/* 8146D008 | 7D 65 22 14 */	add r11, r5, r4
/* 8146D00C | 91 61 01 00 */	stw r11, 0x100(r1)
/* 8146D010 | 38 60 00 00 */	li r3, 0x0
/* 8146D014 | 98 61 00 63 */	stb r3, 0x63(r1)
/* 8146D018 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146D01C | 2C 07 00 07 */	cmpwi r7, 0x7
/* 8146D020 | 40 80 00 1C */	bge .L_8146D03C
/* 8146D024 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146D028 | 41 82 02 38 */	beq .L_8146D260
/* 8146D02C | 41 80 07 40 */	blt .L_8146D76C
/* 8146D030 | 2C 07 00 03 */	cmpwi r7, 0x3
/* 8146D034 | 40 80 07 38 */	bge .L_8146D76C
/* 8146D038 | 48 00 04 BC */	b .L_8146D4F4
.L_8146D03C:
/* 8146D03C | 2C 07 00 09 */	cmpwi r7, 0x9
/* 8146D040 | 41 82 00 E4 */	beq .L_8146D124
/* 8146D044 | 40 80 07 28 */	bge .L_8146D76C
/* 8146D048 | 48 00 00 04 */	b .L_8146D04C
.L_8146D04C:
/* 8146D04C | 81 41 00 D4 */	lwz r10, 0xd4(r1)
/* 8146D050 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 8146D054 | 88 A6 00 09 */	lbz r5, 0x9(r6)
/* 8146D058 | 54 A4 07 3E */	clrlwi r4, r5, 28
/* 8146D05C | 54 89 80 1E */	slwi r9, r4, 16
/* 8146D060 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 8146D064 | 88 68 00 0B */	lbz r3, 0xb(r8)
/* 8146D068 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 8146D06C | 88 86 00 0A */	lbz r4, 0xa(r6)
/* 8146D070 | 54 85 40 2E */	slwi r5, r4, 8
/* 8146D074 | 7C 67 2B 78 */	or r7, r3, r5
/* 8146D078 | 7D 24 3B 78 */	or r4, r9, r7
/* 8146D07C | 7C 6A 22 14 */	add r3, r10, r4
/* 8146D080 | 90 61 00 B8 */	stw r3, 0xb8(r1)
/* 8146D084 | 81 81 00 B8 */	lwz r12, 0xb8(r1)
/* 8146D088 | 88 CC 00 00 */	lbz r6, 0x0(r12)
/* 8146D08C | 54 C5 07 7E */	clrlwi r5, r6, 29
/* 8146D090 | 88 81 02 FC */	lbz r4, 0x2fc(r1)
/* 8146D094 | 7C 05 20 00 */	cmpw r5, r4
/* 8146D098 | 41 80 00 80 */	blt .L_8146D118
/* 8146D09C | 89 01 02 F5 */	lbz r8, 0x2f5(r1)
/* 8146D0A0 | 89 61 02 F1 */	lbz r11, 0x2f1(r1)
/* 8146D0A4 | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 8146D0A8 | 88 E3 00 00 */	lbz r7, 0x0(r3)
/* 8146D0AC | 7D 6A 38 38 */	and r10, r11, r7
/* 8146D0B0 | 7C 08 50 00 */	cmpw r8, r10
/* 8146D0B4 | 40 82 00 64 */	bne .L_8146D118
/* 8146D0B8 | 89 21 02 F6 */	lbz r9, 0x2f6(r1)
/* 8146D0BC | 88 C1 02 F2 */	lbz r6, 0x2f2(r1)
/* 8146D0C0 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 8146D0C4 | 88 A4 00 01 */	lbz r5, 0x1(r4)
/* 8146D0C8 | 7C C3 28 38 */	and r3, r6, r5
/* 8146D0CC | 7C 09 18 00 */	cmpw r9, r3
/* 8146D0D0 | 40 82 00 48 */	bne .L_8146D118
/* 8146D0D4 | 89 01 02 F7 */	lbz r8, 0x2f7(r1)
/* 8146D0D8 | 88 E1 02 F3 */	lbz r7, 0x2f3(r1)
/* 8146D0DC | 80 C1 00 B8 */	lwz r6, 0xb8(r1)
/* 8146D0E0 | 88 C6 00 02 */	lbz r6, 0x2(r6)
/* 8146D0E4 | 7C E4 30 38 */	and r4, r7, r6
/* 8146D0E8 | 7C 08 20 00 */	cmpw r8, r4
/* 8146D0EC | 40 82 00 2C */	bne .L_8146D118
/* 8146D0F0 | 89 21 02 F8 */	lbz r9, 0x2f8(r1)
/* 8146D0F4 | 88 A1 02 F4 */	lbz r5, 0x2f4(r1)
/* 8146D0F8 | 81 01 00 B8 */	lwz r8, 0xb8(r1)
/* 8146D0FC | 88 68 00 03 */	lbz r3, 0x3(r8)
/* 8146D100 | 7C A4 18 38 */	and r4, r5, r3
/* 8146D104 | 7C 09 20 00 */	cmpw r9, r4
/* 8146D108 | 40 82 00 10 */	bne .L_8146D118
/* 8146D10C | 38 E0 00 01 */	li r7, 0x1
/* 8146D110 | 98 E1 00 63 */	stb r7, 0x63(r1)
/* 8146D114 | 48 00 06 58 */	b .L_8146D76C
.L_8146D118:
/* 8146D118 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146D11C | 28 06 00 07 */	cmplwi r6, 0x7
/* 8146D120 | 41 82 06 4C */	beq .L_8146D76C
.L_8146D124:
/* 8146D124 | 81 21 00 D4 */	lwz r9, 0xd4(r1)
/* 8146D128 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146D12C | 88 A3 00 09 */	lbz r5, 0x9(r3)
/* 8146D130 | 54 A4 07 3E */	clrlwi r4, r5, 28
/* 8146D134 | 54 8A 80 1E */	slwi r10, r4, 16
/* 8146D138 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146D13C | 89 83 00 0B */	lbz r12, 0xb(r3)
/* 8146D140 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 8146D144 | 89 07 00 0A */	lbz r8, 0xa(r7)
/* 8146D148 | 55 06 40 2E */	slwi r6, r8, 8
/* 8146D14C | 7D 85 33 78 */	or r5, r12, r6
/* 8146D150 | 7D 43 2B 78 */	or r3, r10, r5
/* 8146D154 | 7C 89 1A 14 */	add r4, r9, r3
/* 8146D158 | 90 81 00 B8 */	stw r4, 0xb8(r1)
/* 8146D15C | 81 61 00 B8 */	lwz r11, 0xb8(r1)
/* 8146D160 | 89 2B 00 00 */	lbz r9, 0x0(r11)
/* 8146D164 | 55 27 07 7E */	clrlwi r7, r9, 29
/* 8146D168 | 90 E1 01 14 */	stw r7, 0x114(r1)
/* 8146D16C | 81 01 00 B8 */	lwz r8, 0xb8(r1)
/* 8146D170 | 89 48 00 00 */	lbz r10, 0x0(r8)
/* 8146D174 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146D178 | 55 03 10 3A */	slwi r3, r8, 2
/* 8146D17C | 38 81 01 40 */	addi r4, r1, 0x140
/* 8146D180 | 7C C4 18 AE */	lbzx r6, r4, r3
/* 8146D184 | 7D 49 30 38 */	and r9, r10, r6
/* 8146D188 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146D18C | 55 05 10 3A */	slwi r5, r8, 2
/* 8146D190 | 38 81 01 28 */	addi r4, r1, 0x128
/* 8146D194 | 7C E4 28 AE */	lbzx r7, r4, r5
/* 8146D198 | 7C 09 38 00 */	cmpw r9, r7
/* 8146D19C | 40 82 05 D0 */	bne .L_8146D76C
/* 8146D1A0 | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 8146D1A4 | 88 C3 00 01 */	lbz r6, 0x1(r3)
/* 8146D1A8 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D1AC | 54 8A 10 3A */	slwi r10, r4, 2
/* 8146D1B0 | 38 A1 01 40 */	addi r5, r1, 0x140
/* 8146D1B4 | 7C 85 52 14 */	add r4, r5, r10
/* 8146D1B8 | 89 24 00 01 */	lbz r9, 0x1(r4)
/* 8146D1BC | 7C C7 48 38 */	and r7, r6, r9
/* 8146D1C0 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146D1C4 | 54 C3 10 3A */	slwi r3, r6, 2
/* 8146D1C8 | 39 01 01 28 */	addi r8, r1, 0x128
/* 8146D1CC | 7C A8 1A 14 */	add r5, r8, r3
/* 8146D1D0 | 88 65 00 01 */	lbz r3, 0x1(r5)
/* 8146D1D4 | 7C 07 18 00 */	cmpw r7, r3
/* 8146D1D8 | 40 82 05 94 */	bne .L_8146D76C
/* 8146D1DC | 80 E1 00 B8 */	lwz r7, 0xb8(r1)
/* 8146D1E0 | 88 C7 00 02 */	lbz r6, 0x2(r7)
/* 8146D1E4 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D1E8 | 54 85 10 3A */	slwi r5, r4, 2
/* 8146D1EC | 38 81 01 40 */	addi r4, r1, 0x140
/* 8146D1F0 | 7C 64 2A 14 */	add r3, r4, r5
/* 8146D1F4 | 88 E3 00 02 */	lbz r7, 0x2(r3)
/* 8146D1F8 | 7C CB 38 38 */	and r11, r6, r7
/* 8146D1FC | 81 41 01 14 */	lwz r10, 0x114(r1)
/* 8146D200 | 55 48 10 3A */	slwi r8, r10, 2
/* 8146D204 | 39 21 01 28 */	addi r9, r1, 0x128
/* 8146D208 | 7D 09 42 14 */	add r8, r9, r8
/* 8146D20C | 88 E8 00 02 */	lbz r7, 0x2(r8)
/* 8146D210 | 7C 0B 38 00 */	cmpw r11, r7
/* 8146D214 | 40 82 05 58 */	bne .L_8146D76C
/* 8146D218 | 80 C1 00 B8 */	lwz r6, 0xb8(r1)
/* 8146D21C | 88 A6 00 03 */	lbz r5, 0x3(r6)
/* 8146D220 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146D224 | 55 24 10 3A */	slwi r4, r9, 2
/* 8146D228 | 39 41 01 40 */	addi r10, r1, 0x140
/* 8146D22C | 7C 6A 22 14 */	add r3, r10, r4
/* 8146D230 | 89 03 00 03 */	lbz r8, 0x3(r3)
/* 8146D234 | 7C A3 40 38 */	and r3, r5, r8
/* 8146D238 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146D23C | 54 A7 10 3A */	slwi r7, r5, 2
/* 8146D240 | 38 81 01 28 */	addi r4, r1, 0x128
/* 8146D244 | 7C C4 3A 14 */	add r6, r4, r7
/* 8146D248 | 88 A6 00 03 */	lbz r5, 0x3(r6)
/* 8146D24C | 7C 03 28 00 */	cmpw r3, r5
/* 8146D250 | 40 82 05 1C */	bne .L_8146D76C
/* 8146D254 | 38 80 00 01 */	li r4, 0x1
/* 8146D258 | 98 81 00 63 */	stb r4, 0x63(r1)
/* 8146D25C | 48 00 05 10 */	b .L_8146D76C
.L_8146D260:
/* 8146D260 | 89 21 02 E5 */	lbz r9, 0x2e5(r1)
/* 8146D264 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 8146D268 | 88 88 00 00 */	lbz r4, 0x0(r8)
/* 8146D26C | 88 E1 02 D9 */	lbz r7, 0x2d9(r1)
/* 8146D270 | 7C 83 38 38 */	and r3, r4, r7
/* 8146D274 | 7C 09 18 00 */	cmpw r9, r3
/* 8146D278 | 40 82 00 90 */	bne .L_8146D308
/* 8146D27C | 88 C1 02 D8 */	lbz r6, 0x2d8(r1)
/* 8146D280 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146D284 | 40 82 00 58 */	bne .L_8146D2DC
/* 8146D288 | 88 A1 02 E8 */	lbz r5, 0x2e8(r1)
/* 8146D28C | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146D290 | 89 04 00 03 */	lbz r8, 0x3(r4)
/* 8146D294 | 88 61 02 DC */	lbz r3, 0x2dc(r1)
/* 8146D298 | 7D 07 18 38 */	and r7, r8, r3
/* 8146D29C | 7C 05 38 00 */	cmpw r5, r7
/* 8146D2A0 | 40 82 00 68 */	bne .L_8146D308
/* 8146D2A4 | 88 C1 02 E7 */	lbz r6, 0x2e7(r1)
/* 8146D2A8 | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 8146D2AC | 88 85 00 02 */	lbz r4, 0x2(r5)
/* 8146D2B0 | 88 61 02 DB */	lbz r3, 0x2db(r1)
/* 8146D2B4 | 7C 89 18 38 */	and r9, r4, r3
/* 8146D2B8 | 7C 06 48 00 */	cmpw r6, r9
/* 8146D2BC | 40 82 00 4C */	bne .L_8146D308
/* 8146D2C0 | 89 01 02 E6 */	lbz r8, 0x2e6(r1)
/* 8146D2C4 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 8146D2C8 | 88 C7 00 01 */	lbz r6, 0x1(r7)
/* 8146D2CC | 88 A1 02 DA */	lbz r5, 0x2da(r1)
/* 8146D2D0 | 7C C4 28 38 */	and r4, r6, r5
/* 8146D2D4 | 7C 08 20 00 */	cmpw r8, r4
/* 8146D2D8 | 40 82 00 30 */	bne .L_8146D308
.L_8146D2DC:
/* 8146D2DC | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146D2E0 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 8146D2E4 | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 8146D2E8 | 38 C0 00 00 */	li r6, 0x0
/* 8146D2EC | 7F C7 F3 78 */	mr r7, r30
/* 8146D2F0 | 48 00 FE 59 */	bl Zi8SecMatchChar
/* 8146D2F4 | 54 6C 06 3E */	clrlwi r12, r3, 24
/* 8146D2F8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8146D2FC | 41 82 00 0C */	beq .L_8146D308
/* 8146D300 | 39 60 00 01 */	li r11, 0x1
/* 8146D304 | 99 61 00 63 */	stb r11, 0x63(r1)
.L_8146D308:
/* 8146D308 | 88 E1 00 63 */	lbz r7, 0x63(r1)
/* 8146D30C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146D310 | 41 82 04 5C */	beq .L_8146D76C
/* 8146D314 | 89 41 00 56 */	lbz r10, 0x56(r1)
/* 8146D318 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146D31C | 40 82 04 50 */	bne .L_8146D76C
/* 8146D320 | 89 21 03 44 */	lbz r9, 0x344(r1)
/* 8146D324 | 28 09 00 01 */	cmplwi r9, 0x1
/* 8146D328 | 40 81 04 44 */	ble .L_8146D76C
/* 8146D32C | 39 00 00 00 */	li r8, 0x0
/* 8146D330 | 99 01 00 65 */	stb r8, 0x65(r1)
/* 8146D334 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 8146D338 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 8146D33C | 48 00 00 1C */	b .L_8146D358
.L_8146D340:
/* 8146D340 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D344 | 38 64 00 01 */	addi r3, r4, 0x1
/* 8146D348 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 8146D34C | 89 21 00 65 */	lbz r9, 0x65(r1)
/* 8146D350 | 39 09 00 01 */	addi r8, r9, 0x1
/* 8146D354 | 99 01 00 65 */	stb r8, 0x65(r1)
.L_8146D358:
/* 8146D358 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146D35C | 54 A7 08 3C */	slwi r7, r5, 1
/* 8146D360 | 38 C1 02 58 */	addi r6, r1, 0x258
/* 8146D364 | 7C A6 3A 2E */	lhzx r5, r6, r7
/* 8146D368 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146D36C | 40 82 FF D4 */	bne .L_8146D340
/* 8146D370 | 88 81 03 44 */	lbz r4, 0x344(r1)
/* 8146D374 | 54 8C 06 3E */	clrlwi r12, r4, 24
/* 8146D378 | 88 81 00 65 */	lbz r4, 0x65(r1)
/* 8146D37C | 7C 0C 20 40 */	cmplw r12, r4
/* 8146D380 | 40 81 00 10 */	ble .L_8146D390
/* 8146D384 | 39 60 00 00 */	li r11, 0x0
/* 8146D388 | 99 61 00 63 */	stb r11, 0x63(r1)
/* 8146D38C | 48 00 03 E0 */	b .L_8146D76C
.L_8146D390:
/* 8146D390 | 39 40 00 01 */	li r10, 0x1
/* 8146D394 | 91 41 01 14 */	stw r10, 0x114(r1)
/* 8146D398 | 48 00 01 30 */	b .L_8146D4C8
.L_8146D39C:
/* 8146D39C | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 8146D3A0 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D3A4 | 7D 23 22 14 */	add r9, r3, r4
/* 8146D3A8 | 55 25 08 3C */	slwi r5, r9, 1
/* 8146D3AC | 38 E1 02 58 */	addi r7, r1, 0x258
/* 8146D3B0 | 7D 07 2A 2E */	lhzx r8, r7, r5
/* 8146D3B4 | B1 01 00 94 */	sth r8, 0x94(r1)
/* 8146D3B8 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146D3BC | 7F C4 F3 78 */	mr r4, r30
/* 8146D3C0 | 48 01 1F D5 */	bl Zi8Uni2Ord
/* 8146D3C4 | 7C 66 1B 78 */	mr r6, r3
/* 8146D3C8 | B0 C1 00 98 */	sth r6, 0x98(r1)
/* 8146D3CC | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 8146D3D0 | 28 04 FF FF */	cmplwi r4, 0xffff
/* 8146D3D4 | 41 82 01 04 */	beq .L_8146D4D8
/* 8146D3D8 | 80 E1 00 EC */	lwz r7, 0xec(r1)
/* 8146D3DC | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 8146D3E0 | 1C A3 00 0C */	mulli r5, r3, 0xc
/* 8146D3E4 | 7F 67 2A 14 */	add r27, r7, r5
/* 8146D3E8 | 93 61 01 00 */	stw r27, 0x100(r1)
/* 8146D3EC | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D3F0 | 1C C4 00 0C */	mulli r6, r4, 0xc
/* 8146D3F4 | 38 61 04 05 */	addi r3, r1, 0x405
/* 8146D3F8 | 7D 03 30 AE */	lbzx r8, r3, r6
/* 8146D3FC | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 8146D400 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 8146D404 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146D408 | 1C C7 00 0C */	mulli r6, r7, 0xc
/* 8146D40C | 38 61 03 45 */	addi r3, r1, 0x345
/* 8146D410 | 7C A3 30 AE */	lbzx r5, r3, r6
/* 8146D414 | 7C 9C 28 38 */	and r28, r4, r5
/* 8146D418 | 7C 08 E0 00 */	cmpw r8, r28
/* 8146D41C | 40 82 00 BC */	bne .L_8146D4D8
/* 8146D420 | 81 81 01 14 */	lwz r12, 0x114(r1)
/* 8146D424 | 1C 8C 00 0C */	mulli r4, r12, 0xc
/* 8146D428 | 39 61 04 06 */	addi r11, r1, 0x406
/* 8146D42C | 7D 4B 20 AE */	lbzx r10, r11, r4
/* 8146D430 | 81 21 01 00 */	lwz r9, 0x100(r1)
/* 8146D434 | 88 69 00 01 */	lbz r3, 0x1(r9)
/* 8146D438 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146D43C | 1C 88 00 0C */	mulli r4, r8, 0xc
/* 8146D440 | 38 A1 03 46 */	addi r5, r1, 0x346
/* 8146D444 | 7C E5 20 AE */	lbzx r7, r5, r4
/* 8146D448 | 7C 66 38 38 */	and r6, r3, r7
/* 8146D44C | 7C 0A 30 00 */	cmpw r10, r6
/* 8146D450 | 40 82 00 88 */	bne .L_8146D4D8
/* 8146D454 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D458 | 1C A4 00 0C */	mulli r5, r4, 0xc
/* 8146D45C | 38 61 04 07 */	addi r3, r1, 0x407
/* 8146D460 | 7D 03 28 AE */	lbzx r8, r3, r5
/* 8146D464 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146D468 | 88 64 00 02 */	lbz r3, 0x2(r4)
/* 8146D46C | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146D470 | 1C 89 00 0C */	mulli r4, r9, 0xc
/* 8146D474 | 38 C1 03 47 */	addi r6, r1, 0x347
/* 8146D478 | 7C A6 20 AE */	lbzx r5, r6, r4
/* 8146D47C | 7C 67 28 38 */	and r7, r3, r5
/* 8146D480 | 7C 08 38 00 */	cmpw r8, r7
/* 8146D484 | 40 82 00 54 */	bne .L_8146D4D8
/* 8146D488 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D48C | 1C 64 00 0C */	mulli r3, r4, 0xc
/* 8146D490 | 38 C1 04 08 */	addi r6, r1, 0x408
/* 8146D494 | 7D 06 18 AE */	lbzx r8, r6, r3
/* 8146D498 | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 8146D49C | 88 E5 00 03 */	lbz r7, 0x3(r5)
/* 8146D4A0 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D4A4 | 1C C4 00 0C */	mulli r6, r4, 0xc
/* 8146D4A8 | 38 A1 03 48 */	addi r5, r1, 0x348
/* 8146D4AC | 7C 65 30 AE */	lbzx r3, r5, r6
/* 8146D4B0 | 7C E9 18 38 */	and r9, r7, r3
/* 8146D4B4 | 7C 08 48 00 */	cmpw r8, r9
/* 8146D4B8 | 40 82 00 20 */	bne .L_8146D4D8
/* 8146D4BC | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146D4C0 | 38 E8 00 01 */	addi r7, r8, 0x1
/* 8146D4C4 | 90 E1 01 14 */	stw r7, 0x114(r1)
.L_8146D4C8:
/* 8146D4C8 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D4CC | 88 C1 03 44 */	lbz r6, 0x344(r1)
/* 8146D4D0 | 7C 04 30 00 */	cmpw r4, r6
/* 8146D4D4 | 41 80 FE C8 */	blt .L_8146D39C
.L_8146D4D8:
/* 8146D4D8 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146D4DC | 88 81 03 44 */	lbz r4, 0x344(r1)
/* 8146D4E0 | 7C 05 20 00 */	cmpw r5, r4
/* 8146D4E4 | 40 80 02 88 */	bge .L_8146D76C
/* 8146D4E8 | 38 60 00 00 */	li r3, 0x0
/* 8146D4EC | 98 61 00 63 */	stb r3, 0x63(r1)
/* 8146D4F0 | 48 00 02 7C */	b .L_8146D76C
.L_8146D4F4:
/* 8146D4F4 | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 8146D4F8 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146D4FC | 48 01 19 CD */	bl Zi8GetPCode
/* 8146D500 | 7C 6A 1B 78 */	mr r10, r3
/* 8146D504 | 55 49 04 3E */	clrlwi r9, r10, 16
/* 8146D508 | A0 C1 02 FE */	lhz r6, 0x2fe(r1)
/* 8146D50C | 7C C5 48 38 */	and r5, r6, r9
/* 8146D510 | A0 81 03 1E */	lhz r4, 0x31e(r1)
/* 8146D514 | 7D 04 28 50 */	subf r8, r4, r5
/* 8146D518 | 7D 07 00 34 */	cntlzw r7, r8
/* 8146D51C | 54 E6 D9 7E */	srwi r6, r7, 5
/* 8146D520 | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 8146D524 | 98 A1 00 63 */	stb r5, 0x63(r1)
/* 8146D528 | 88 61 00 63 */	lbz r3, 0x63(r1)
/* 8146D52C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146D530 | 40 82 00 60 */	bne .L_8146D590
/* 8146D534 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146D538 | 89 64 00 00 */	lbz r11, 0x0(r4)
/* 8146D53C | 55 63 06 30 */	rlwinm r3, r11, 0, 24, 24
/* 8146D540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146D544 | 41 82 00 4C */	beq .L_8146D590
/* 8146D548 | 88 E1 00 55 */	lbz r7, 0x55(r1)
/* 8146D54C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146D550 | 40 82 00 40 */	bne .L_8146D590
/* 8146D554 | 80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 8146D558 | A0 81 00 76 */	lhz r4, 0x76(r1)
/* 8146D55C | 80 A1 00 F0 */	lwz r5, 0xf0(r1)
/* 8146D560 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 8146D564 | A0 E1 02 FE */	lhz r7, 0x2fe(r1)
/* 8146D568 | A1 01 03 1E */	lhz r8, 0x31e(r1)
/* 8146D56C | 89 21 00 6E */	lbz r9, 0x6e(r1)
/* 8146D570 | 7F CA F3 78 */	mr r10, r30
/* 8146D574 | 4B FF D0 F9 */	bl Zi8MatchAltSound
/* 8146D578 | 7C 6A 1B 78 */	mr r10, r3
/* 8146D57C | 55 46 04 3E */	clrlwi r6, r10, 16
/* 8146D580 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146D584 | 41 82 00 0C */	beq .L_8146D590
/* 8146D588 | 38 A0 00 01 */	li r5, 0x1
/* 8146D58C | 98 A1 00 63 */	stb r5, 0x63(r1)
.L_8146D590:
/* 8146D590 | 88 81 00 63 */	lbz r4, 0x63(r1)
/* 8146D594 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146D598 | 41 82 01 D4 */	beq .L_8146D76C
/* 8146D59C | 89 21 02 FD */	lbz r9, 0x2fd(r1)
/* 8146D5A0 | 28 09 00 01 */	cmplwi r9, 0x1
/* 8146D5A4 | 40 81 01 C8 */	ble .L_8146D76C
/* 8146D5A8 | 39 00 00 00 */	li r8, 0x0
/* 8146D5AC | 99 01 00 65 */	stb r8, 0x65(r1)
/* 8146D5B0 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 8146D5B4 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 8146D5B8 | 48 00 00 1C */	b .L_8146D5D4
.L_8146D5BC:
/* 8146D5BC | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146D5C0 | 38 86 00 01 */	addi r4, r6, 0x1
/* 8146D5C4 | 90 81 01 14 */	stw r4, 0x114(r1)
/* 8146D5C8 | 88 A1 00 65 */	lbz r5, 0x65(r1)
/* 8146D5CC | 38 E5 00 01 */	addi r7, r5, 0x1
/* 8146D5D0 | 98 E1 00 65 */	stb r7, 0x65(r1)
.L_8146D5D4:
/* 8146D5D4 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D5D8 | 54 83 08 3C */	slwi r3, r4, 1
/* 8146D5DC | 39 81 02 58 */	addi r12, r1, 0x258
/* 8146D5E0 | 7C CC 1A 2E */	lhzx r6, r12, r3
/* 8146D5E4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146D5E8 | 40 82 FF D4 */	bne .L_8146D5BC
/* 8146D5EC | 88 A1 02 FD */	lbz r5, 0x2fd(r1)
/* 8146D5F0 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 8146D5F4 | 89 01 00 65 */	lbz r8, 0x65(r1)
/* 8146D5F8 | 7C 04 40 40 */	cmplw r4, r8
/* 8146D5FC | 40 81 00 10 */	ble .L_8146D60C
/* 8146D600 | 39 60 00 00 */	li r11, 0x0
/* 8146D604 | 99 61 00 63 */	stb r11, 0x63(r1)
/* 8146D608 | 48 00 01 64 */	b .L_8146D76C
.L_8146D60C:
/* 8146D60C | 38 60 00 01 */	li r3, 0x1
/* 8146D610 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 8146D614 | 48 00 01 30 */	b .L_8146D744
.L_8146D618:
/* 8146D618 | 88 FF 00 14 */	lbz r7, 0x14(r31)
/* 8146D61C | 81 41 01 14 */	lwz r10, 0x114(r1)
/* 8146D620 | 7D 27 52 14 */	add r9, r7, r10
/* 8146D624 | 55 26 08 3C */	slwi r6, r9, 1
/* 8146D628 | 38 81 02 58 */	addi r4, r1, 0x258
/* 8146D62C | 7C A4 32 2E */	lhzx r5, r4, r6
/* 8146D630 | B0 A1 00 94 */	sth r5, 0x94(r1)
/* 8146D634 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146D638 | 7F C4 F3 78 */	mr r4, r30
/* 8146D63C | 48 01 1D 59 */	bl Zi8Uni2Ord
/* 8146D640 | B0 61 00 98 */	sth r3, 0x98(r1)
/* 8146D644 | A1 01 00 98 */	lhz r8, 0x98(r1)
/* 8146D648 | 28 08 FF FF */	cmplwi r8, 0xffff
/* 8146D64C | 41 82 01 08 */	beq .L_8146D754
/* 8146D650 | 80 E1 00 EC */	lwz r7, 0xec(r1)
/* 8146D654 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 8146D658 | 1C C6 00 0C */	mulli r6, r6, 0xc
/* 8146D65C | 7C 87 32 14 */	add r4, r7, r6
/* 8146D660 | 90 81 01 00 */	stw r4, 0x100(r1)
/* 8146D664 | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 8146D668 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146D66C | 48 01 18 5D */	bl Zi8GetPCode
/* 8146D670 | 7C 69 1B 78 */	mr r9, r3
/* 8146D674 | 55 25 04 3E */	clrlwi r5, r9, 16
/* 8146D678 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146D67C | 55 03 08 3C */	slwi r3, r8, 1
/* 8146D680 | 38 81 02 FE */	addi r4, r1, 0x2fe
/* 8146D684 | 7C E4 1A 2E */	lhzx r7, r4, r3
/* 8146D688 | 7C E6 28 38 */	and r6, r7, r5
/* 8146D68C | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146D690 | 55 23 08 3C */	slwi r3, r9, 1
/* 8146D694 | 38 A1 03 1E */	addi r5, r1, 0x31e
/* 8146D698 | 7C 85 1A 2E */	lhzx r4, r5, r3
/* 8146D69C | 7D 44 30 50 */	subf r10, r4, r6
/* 8146D6A0 | 7D 43 00 34 */	cntlzw r3, r10
/* 8146D6A4 | 54 6C D9 7E */	srwi r12, r3, 5
/* 8146D6A8 | 55 87 06 3E */	clrlwi r7, r12, 24
/* 8146D6AC | 98 E1 00 63 */	stb r7, 0x63(r1)
/* 8146D6B0 | 89 01 00 63 */	lbz r8, 0x63(r1)
/* 8146D6B4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146D6B8 | 40 82 00 74 */	bne .L_8146D72C
/* 8146D6BC | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 8146D6C0 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 8146D6C4 | 54 A3 06 30 */	rlwinm r3, r5, 0, 24, 24
/* 8146D6C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146D6CC | 41 82 00 60 */	beq .L_8146D72C
/* 8146D6D0 | 88 81 00 55 */	lbz r4, 0x55(r1)
/* 8146D6D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146D6D8 | 40 82 00 54 */	bne .L_8146D72C
/* 8146D6DC | 80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 8146D6E0 | A0 81 00 76 */	lhz r4, 0x76(r1)
/* 8146D6E4 | 80 A1 00 F0 */	lwz r5, 0xf0(r1)
/* 8146D6E8 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 8146D6EC | 81 61 01 14 */	lwz r11, 0x114(r1)
/* 8146D6F0 | 55 69 08 3C */	slwi r9, r11, 1
/* 8146D6F4 | 38 E1 02 FE */	addi r7, r1, 0x2fe
/* 8146D6F8 | 7C E7 4A 2E */	lhzx r7, r7, r9
/* 8146D6FC | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146D700 | 55 0A 08 3C */	slwi r10, r8, 1
/* 8146D704 | 39 01 03 1E */	addi r8, r1, 0x31e
/* 8146D708 | 7D 08 52 2E */	lhzx r8, r8, r10
/* 8146D70C | 89 21 00 6E */	lbz r9, 0x6e(r1)
/* 8146D710 | 7F CA F3 78 */	mr r10, r30
/* 8146D714 | 4B FF CF 59 */	bl Zi8MatchAltSound
/* 8146D718 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 8146D71C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146D720 | 41 82 00 0C */	beq .L_8146D72C
/* 8146D724 | 38 C0 00 01 */	li r6, 0x1
/* 8146D728 | 98 C1 00 63 */	stb r6, 0x63(r1)
.L_8146D72C:
/* 8146D72C | 89 21 00 63 */	lbz r9, 0x63(r1)
/* 8146D730 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146D734 | 41 82 00 20 */	beq .L_8146D754
/* 8146D738 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146D73C | 38 A8 00 01 */	addi r5, r8, 0x1
/* 8146D740 | 90 A1 01 14 */	stw r5, 0x114(r1)
.L_8146D744:
/* 8146D744 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146D748 | 88 E1 02 FD */	lbz r7, 0x2fd(r1)
/* 8146D74C | 7C 04 38 00 */	cmpw r4, r7
/* 8146D750 | 41 80 FE C8 */	blt .L_8146D618
.L_8146D754:
/* 8146D754 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146D758 | 88 C1 02 FD */	lbz r6, 0x2fd(r1)
/* 8146D75C | 7C 03 30 00 */	cmpw r3, r6
/* 8146D760 | 40 80 00 0C */	bge .L_8146D76C
/* 8146D764 | 38 80 00 00 */	li r4, 0x0
/* 8146D768 | 98 81 00 63 */	stb r4, 0x63(r1)
.L_8146D76C:
/* 8146D76C | 89 41 00 63 */	lbz r10, 0x63(r1)
/* 8146D770 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146D774 | 41 82 02 D0 */	beq .L_8146DA44
/* 8146D778 | 88 A1 00 5D */	lbz r5, 0x5d(r1)
/* 8146D77C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146D780 | 40 82 00 54 */	bne .L_8146D7D4
/* 8146D784 | 88 81 00 5E */	lbz r4, 0x5e(r1)
/* 8146D788 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146D78C | 41 82 00 28 */	beq .L_8146D7B4
/* 8146D790 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8146D794 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 8146D798 | 7F C5 F3 78 */	mr r5, r30
/* 8146D79C | 4B FF D3 81 */	bl Zi8SetFindCand
/* 8146D7A0 | 7C 69 1B 78 */	mr r9, r3
/* 8146D7A4 | 55 27 06 3E */	clrlwi r7, r9, 24
/* 8146D7A8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146D7AC | 40 82 02 98 */	bne .L_8146DA44
/* 8146D7B0 | 48 00 01 48 */	b .L_8146D8F8
.L_8146D7B4:
/* 8146D7B4 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 8146D7B8 | 7F C4 F3 78 */	mr r4, r30
/* 8146D7BC | 48 00 E5 39 */	bl Zi8IsDupWChar
/* 8146D7C0 | 7C 66 1B 78 */	mr r6, r3
/* 8146D7C4 | 54 C3 06 3E */	clrlwi r3, r6, 24
/* 8146D7C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146D7CC | 40 82 02 78 */	bne .L_8146DA44
/* 8146D7D0 | 48 00 01 28 */	b .L_8146D8F8
.L_8146D7D4:
/* 8146D7D4 | 39 00 00 00 */	li r8, 0x0
/* 8146D7D8 | 99 01 00 65 */	stb r8, 0x65(r1)
/* 8146D7DC | 88 BF 00 14 */	lbz r5, 0x14(r31)
/* 8146D7E0 | 90 A1 01 14 */	stw r5, 0x114(r1)
/* 8146D7E4 | 48 00 00 1C */	b .L_8146D800
.L_8146D7E8:
/* 8146D7E8 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146D7EC | 38 E3 00 01 */	addi r7, r3, 0x1
/* 8146D7F0 | 90 E1 01 14 */	stw r7, 0x114(r1)
/* 8146D7F4 | 88 C1 00 65 */	lbz r6, 0x65(r1)
/* 8146D7F8 | 38 86 00 01 */	addi r4, r6, 0x1
/* 8146D7FC | 98 81 00 65 */	stb r4, 0x65(r1)
.L_8146D800:
/* 8146D800 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146D804 | 54 A4 08 3C */	slwi r4, r5, 1
/* 8146D808 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8146D80C | 7C E3 22 2E */	lhzx r7, r3, r4
/* 8146D810 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146D814 | 40 82 FF D4 */	bne .L_8146D7E8
/* 8146D818 | 89 7F 00 0C */	lbz r11, 0xc(r31)
/* 8146D81C | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 8146D820 | 41 82 00 7C */	beq .L_8146D89C
/* 8146D824 | 89 41 00 56 */	lbz r10, 0x56(r1)
/* 8146D828 | 28 0A 00 01 */	cmplwi r10, 0x1
/* 8146D82C | 41 82 00 10 */	beq .L_8146D83C
/* 8146D830 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 8146D834 | 28 08 00 02 */	cmplwi r8, 0x2
/* 8146D838 | 40 82 00 28 */	bne .L_8146D860
.L_8146D83C:
/* 8146D83C | 89 21 02 FD */	lbz r9, 0x2fd(r1)
/* 8146D840 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146D844 | 41 82 00 1C */	beq .L_8146D860
/* 8146D848 | 89 01 00 54 */	lbz r8, 0x54(r1)
/* 8146D84C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146D850 | 41 82 00 60 */	beq .L_8146D8B0
/* 8146D854 | 88 E1 02 FD */	lbz r7, 0x2fd(r1)
/* 8146D858 | 98 E1 00 65 */	stb r7, 0x65(r1)
/* 8146D85C | 48 00 00 54 */	b .L_8146D8B0
.L_8146D860:
/* 8146D860 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146D864 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146D868 | 40 82 00 28 */	bne .L_8146D890
/* 8146D86C | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 8146D870 | 28 05 00 01 */	cmplwi r5, 0x1
/* 8146D874 | 40 81 00 1C */	ble .L_8146D890
/* 8146D878 | 89 21 00 54 */	lbz r9, 0x54(r1)
/* 8146D87C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146D880 | 41 82 00 30 */	beq .L_8146D8B0
/* 8146D884 | 88 81 03 44 */	lbz r4, 0x344(r1)
/* 8146D888 | 98 81 00 65 */	stb r4, 0x65(r1)
/* 8146D88C | 48 00 00 24 */	b .L_8146D8B0
.L_8146D890:
/* 8146D890 | 39 40 00 01 */	li r10, 0x1
/* 8146D894 | 99 41 00 65 */	stb r10, 0x65(r1)
/* 8146D898 | 48 00 00 18 */	b .L_8146D8B0
.L_8146D89C:
/* 8146D89C | 88 61 00 54 */	lbz r3, 0x54(r1)
/* 8146D8A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146D8A4 | 41 82 00 0C */	beq .L_8146D8B0
/* 8146D8A8 | 39 00 00 01 */	li r8, 0x1
/* 8146D8AC | 99 01 00 65 */	stb r8, 0x65(r1)
.L_8146D8B0:
/* 8146D8B0 | 38 60 00 00 */	li r3, 0x0
/* 8146D8B4 | 88 BF 00 14 */	lbz r5, 0x14(r31)
/* 8146D8B8 | 88 E1 00 65 */	lbz r7, 0x65(r1)
/* 8146D8BC | 7C 85 3A 14 */	add r4, r5, r7
/* 8146D8C0 | 54 86 08 3C */	slwi r6, r4, 1
/* 8146D8C4 | 38 A1 02 58 */	addi r5, r1, 0x258
/* 8146D8C8 | 7C 65 33 2E */	sthx r3, r5, r6
/* 8146D8CC | 88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8146D8D0 | 54 89 08 3C */	slwi r9, r4, 1
/* 8146D8D4 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8146D8D8 | 7C 63 4A 14 */	add r3, r3, r9
/* 8146D8DC | 88 81 00 65 */	lbz r4, 0x65(r1)
/* 8146D8E0 | 7F C5 F3 78 */	mr r5, r30
/* 8146D8E4 | 48 00 E5 0D */	bl Zi8IsDupWordW
/* 8146D8E8 | 7C 68 1B 78 */	mr r8, r3
/* 8146D8EC | 55 04 06 3E */	clrlwi r4, r8, 24
/* 8146D8F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146D8F4 | 40 82 01 50 */	bne .L_8146DA44
.L_8146D8F8:
/* 8146D8F8 | A0 E1 00 72 */	lhz r7, 0x72(r1)
/* 8146D8FC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146D900 | 41 82 00 14 */	beq .L_8146D914
/* 8146D904 | A0 61 00 72 */	lhz r3, 0x72(r1)
/* 8146D908 | 38 C3 FF FF */	subi r6, r3, 0x1
/* 8146D90C | B0 C1 00 72 */	sth r6, 0x72(r1)
/* 8146D910 | 48 00 01 34 */	b .L_8146DA44
.L_8146D914:
/* 8146D914 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8146D918 | 38 85 00 01 */	addi r4, r5, 0x1
/* 8146D91C | 90 81 00 CC */	stw r4, 0xcc(r1)
/* 8146D920 | 89 01 00 58 */	lbz r8, 0x58(r1)
/* 8146D924 | 28 08 00 05 */	cmplwi r8, 0x5
/* 8146D928 | 40 82 00 18 */	bne .L_8146D940
/* 8146D92C | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8146D930 | 80 FD 00 0C */	lwz r7, 0xc(r29)
/* 8146D934 | 7C 03 38 00 */	cmpw r3, r7
/* 8146D938 | 40 80 6E 10 */	bge .L_81474748
/* 8146D93C | 48 00 01 08 */	b .L_8146DA44
.L_8146D940:
/* 8146D940 | 88 C1 00 5D */	lbz r6, 0x5d(r1)
/* 8146D944 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146D948 | 41 82 00 B0 */	beq .L_8146D9F8
/* 8146D94C | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 8146D950 | 38 85 00 01 */	addi r4, r5, 0x1
/* 8146D954 | 98 81 00 67 */	stb r4, 0x67(r1)
/* 8146D958 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 8146D95C | 90 61 01 14 */	stw r3, 0x114(r1)
/* 8146D960 | 48 00 00 3C */	b .L_8146D99C
.L_8146D964:
/* 8146D964 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146D968 | 55 28 08 3C */	slwi r8, r9, 1
/* 8146D96C | 38 E1 02 58 */	addi r7, r1, 0x258
/* 8146D970 | 7C C7 42 2E */	lhzx r6, r7, r8
/* 8146D974 | 80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 8146D978 | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 8146D97C | 7C 83 23 78 */	mr r3, r4
/* 8146D980 | 54 60 08 3C */	slwi r0, r3, 1
/* 8146D984 | 7C C5 03 2E */	sthx r6, r5, r0
/* 8146D988 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8146D98C | 90 81 01 04 */	stw r4, 0x104(r1)
/* 8146D990 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146D994 | 38 E8 00 01 */	addi r7, r8, 0x1
/* 8146D998 | 90 E1 01 14 */	stw r7, 0x114(r1)
.L_8146D99C:
/* 8146D99C | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146D9A0 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146D9A4 | 38 81 02 58 */	addi r4, r1, 0x258
/* 8146D9A8 | 7C 64 2A 2E */	lhzx r3, r4, r5
/* 8146D9AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146D9B0 | 40 82 FF B4 */	bne .L_8146D964
/* 8146D9B4 | 39 80 00 20 */	li r12, 0x20
/* 8146D9B8 | 81 61 00 BC */	lwz r11, 0xbc(r1)
/* 8146D9BC | 80 E1 01 04 */	lwz r7, 0x104(r1)
/* 8146D9C0 | 7C EA 3B 78 */	mr r10, r7
/* 8146D9C4 | 55 48 08 3C */	slwi r8, r10, 1
/* 8146D9C8 | 7D 8B 43 2E */	sthx r12, r11, r8
/* 8146D9CC | 39 27 00 01 */	addi r9, r7, 0x1
/* 8146D9D0 | 91 21 01 04 */	stw r9, 0x104(r1)
/* 8146D9D4 | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 8146D9D8 | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 8146D9DC | 7C 03 20 00 */	cmpw r3, r4
/* 8146D9E0 | 40 81 00 3C */	ble .L_8146DA1C
/* 8146D9E4 | 88 61 00 67 */	lbz r3, 0x67(r1)
/* 8146D9E8 | 98 7F 00 21 */	stb r3, 0x21(r31)
/* 8146D9EC | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 8146D9F0 | 99 3F 00 20 */	stb r9, 0x20(r31)
/* 8146D9F4 | 48 00 6D 54 */	b .L_81474748
.L_8146D9F8:
/* 8146D9F8 | A1 01 00 94 */	lhz r8, 0x94(r1)
/* 8146D9FC | 80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 8146DA00 | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 8146DA04 | 7C E6 3B 78 */	mr r6, r7
/* 8146DA08 | 54 C4 06 3E */	clrlwi r4, r6, 24
/* 8146DA0C | 54 8C 08 3C */	slwi r12, r4, 1
/* 8146DA10 | 7D 05 63 2E */	sthx r8, r5, r12
/* 8146DA14 | 38 A7 00 01 */	addi r5, r7, 0x1
/* 8146DA18 | 98 A1 00 67 */	stb r5, 0x67(r1)
.L_8146DA1C:
/* 8146DA1C | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146DA20 | 54 8B 06 3E */	clrlwi r11, r4, 24
/* 8146DA24 | 89 5F 00 1C */	lbz r10, 0x1c(r31)
/* 8146DA28 | 7C 0B 50 40 */	cmplw r11, r10
/* 8146DA2C | 41 80 00 18 */	blt .L_8146DA44
/* 8146DA30 | 88 61 00 67 */	lbz r3, 0x67(r1)
/* 8146DA34 | 98 7F 00 21 */	stb r3, 0x21(r31)
/* 8146DA38 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146DA3C | 98 9F 00 20 */	stb r4, 0x20(r31)
/* 8146DA40 | 48 00 6D 08 */	b .L_81474748
.L_8146DA44:
/* 8146DA44 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8146DA48 | 88 9F 00 14 */	lbz r4, 0x14(r31)
/* 8146DA4C | 38 A0 00 01 */	li r5, 0x1
/* 8146DA50 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 8146DA54 | 38 C1 02 58 */	addi r6, r1, 0x258
/* 8146DA58 | 38 E0 00 20 */	li r7, 0x20
/* 8146DA5C | 54 E7 04 3E */	clrlwi r7, r7, 16
/* 8146DA60 | 39 00 00 00 */	li r8, 0x0
/* 8146DA64 | 55 08 06 3E */	clrlwi r8, r8, 24
/* 8146DA68 | 89 21 00 6F */	lbz r9, 0x6f(r1)
/* 8146DA6C | 7F CA F3 78 */	mr r10, r30
/* 8146DA70 | 48 01 73 8D */	bl Zi8MatchOEMdata
/* 8146DA74 | 7C 69 1B 78 */	mr r9, r3
/* 8146DA78 | 55 25 06 3E */	clrlwi r5, r9, 24
/* 8146DA7C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146DA80 | 40 82 F5 00 */	bne .L_8146CF80
.L_8146DA84:
/* 8146DA84 | 88 FE 01 2D */	lbz r7, 0x12d(r30)
/* 8146DA88 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146DA8C | 41 82 00 1C */	beq .L_8146DAA8
/* 8146DA90 | 89 1E 03 0C */	lbz r8, 0x30c(r30)
/* 8146DA94 | 99 01 00 50 */	stb r8, 0x50(r1)
/* 8146DA98 | 38 C0 00 01 */	li r6, 0x1
/* 8146DA9C | 98 C1 00 4F */	stb r6, 0x4f(r1)
/* 8146DAA0 | 88 9E 01 2D */	lbz r4, 0x12d(r30)
/* 8146DAA4 | 98 9E 03 0C */	stb r4, 0x30c(r30)
.L_8146DAA8:
/* 8146DAA8 | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 8146DAAC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146DAB0 | 41 82 00 10 */	beq .L_8146DAC0
/* 8146DAB4 | 88 61 00 58 */	lbz r3, 0x58(r1)
/* 8146DAB8 | 28 03 00 05 */	cmplwi r3, 0x5
/* 8146DABC | 40 82 00 64 */	bne .L_8146DB20
.L_8146DAC0:
/* 8146DAC0 | 88 A1 00 57 */	lbz r5, 0x57(r1)
/* 8146DAC4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146DAC8 | 41 82 00 58 */	beq .L_8146DB20
/* 8146DACC | 8B 61 00 56 */	lbz r27, 0x56(r1)
/* 8146DAD0 | 28 1B 00 05 */	cmplwi r27, 0x5
/* 8146DAD4 | 41 82 00 4C */	beq .L_8146DB20
/* 8146DAD8 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 8146DADC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146DAE0 | 41 82 00 20 */	beq .L_8146DB00
/* 8146DAE4 | 80 C1 00 C0 */	lwz r6, 0xc0(r1)
/* 8146DAE8 | A0 66 00 00 */	lhz r3, 0x0(r6)
/* 8146DAEC | 7F C4 F3 78 */	mr r4, r30
/* 8146DAF0 | 48 00 F2 5D */	bl Zi8IsComponent
/* 8146DAF4 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 8146DAF8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146DAFC | 40 82 00 24 */	bne .L_8146DB20
.L_8146DB00:
/* 8146DB00 | 80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8146DB04 | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 8146DB08 | 7F C4 F3 78 */	mr r4, r30
/* 8146DB0C | 48 00 F2 69 */	bl Zi8IsCharacter
/* 8146DB10 | 7C 64 1B 78 */	mr r4, r3
/* 8146DB14 | 54 87 06 3E */	clrlwi r7, r4, 24
/* 8146DB18 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146DB1C | 40 82 00 58 */	bne .L_8146DB74
.L_8146DB20:
/* 8146DB20 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146DB24 | 28 06 00 02 */	cmplwi r6, 0x2
/* 8146DB28 | 40 82 00 10 */	bne .L_8146DB38
/* 8146DB2C | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8146DB30 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8146DB34 | 41 81 00 40 */	bgt .L_8146DB74
.L_8146DB38:
/* 8146DB38 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8146DB3C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146DB40 | 40 82 00 10 */	bne .L_8146DB50
/* 8146DB44 | 8B 81 03 44 */	lbz r28, 0x344(r1)
/* 8146DB48 | 28 1C 00 01 */	cmplwi r28, 0x1
/* 8146DB4C | 41 81 00 28 */	bgt .L_8146DB74
.L_8146DB50:
/* 8146DB50 | 89 81 00 56 */	lbz r12, 0x56(r1)
/* 8146DB54 | 28 0C 00 01 */	cmplwi r12, 0x1
/* 8146DB58 | 41 82 00 10 */	beq .L_8146DB68
/* 8146DB5C | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146DB60 | 28 04 00 02 */	cmplwi r4, 0x2
/* 8146DB64 | 40 82 0D E8 */	bne .L_8146E94C
.L_8146DB68:
/* 8146DB68 | 89 61 02 FD */	lbz r11, 0x2fd(r1)
/* 8146DB6C | 28 0B 00 01 */	cmplwi r11, 0x1
/* 8146DB70 | 40 81 0D DC */	ble .L_8146E94C
.L_8146DB74:
/* 8146DB74 | 39 40 00 00 */	li r10, 0x0
/* 8146DB78 | 99 41 00 6F */	stb r10, 0x6f(r1)
/* 8146DB7C | 48 00 0D 7C */	b .L_8146E8F8
.L_8146DB80:
/* 8146DB80 | 39 20 00 01 */	li r9, 0x1
/* 8146DB84 | 99 21 00 6F */	stb r9, 0x6f(r1)
/* 8146DB88 | 38 60 00 00 */	li r3, 0x0
/* 8146DB8C | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146DB90 | 55 04 08 3C */	slwi r4, r8, 1
/* 8146DB94 | 38 A1 02 58 */	addi r5, r1, 0x258
/* 8146DB98 | 7C 65 23 2E */	sthx r3, r5, r4
/* 8146DB9C | 88 FF 00 0C */	lbz r7, 0xc(r31)
/* 8146DBA0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146DBA4 | 41 82 00 2C */	beq .L_8146DBD0
/* 8146DBA8 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146DBAC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146DBB0 | 40 82 00 98 */	bne .L_8146DC48
/* 8146DBB4 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 8146DBB8 | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146DBBC | 40 82 00 8C */	bne .L_8146DC48
/* 8146DBC0 | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8146DBC4 | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 8146DBC8 | 28 03 EF 00 */	cmplwi r3, 0xef00
/* 8146DBCC | 40 82 00 7C */	bne .L_8146DC48
.L_8146DBD0:
/* 8146DBD0 | 89 01 00 57 */	lbz r8, 0x57(r1)
/* 8146DBD4 | 55 04 08 3C */	slwi r4, r8, 1
/* 8146DBD8 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8146DBDC | 7D 23 22 2E */	lhzx r9, r3, r4
/* 8146DBE0 | B1 21 00 94 */	sth r9, 0x94(r1)
/* 8146DBE4 | A0 81 00 94 */	lhz r4, 0x94(r1)
/* 8146DBE8 | 3C C0 00 01 */	lis r6, 0x1
/* 8146DBEC | 38 C6 FF 0C */	subi r6, r6, 0xf4
/* 8146DBF0 | 7C 04 30 00 */	cmpw r4, r6
/* 8146DBF4 | 41 82 00 3C */	beq .L_8146DC30
/* 8146DBF8 | 40 80 00 24 */	bge .L_8146DC1C
/* 8146DBFC | 3C A0 00 01 */	lis r5, 0x1
/* 8146DC00 | 38 A5 FF 01 */	subi r5, r5, 0xff
/* 8146DC04 | 7C 04 28 00 */	cmpw r4, r5
/* 8146DC08 | 41 82 00 28 */	beq .L_8146DC30
/* 8146DC0C | 40 80 00 3C */	bge .L_8146DC48
/* 8146DC10 | 2C 04 30 02 */	cmpwi r4, 0x3002
/* 8146DC14 | 41 82 00 1C */	beq .L_8146DC30
/* 8146DC18 | 48 00 00 30 */	b .L_8146DC48
.L_8146DC1C:
/* 8146DC1C | 3C E0 00 01 */	lis r7, 0x1
/* 8146DC20 | 38 E7 FF 1F */	subi r7, r7, 0xe1
/* 8146DC24 | 7C 04 38 00 */	cmpw r4, r7
/* 8146DC28 | 41 82 00 08 */	beq .L_8146DC30
/* 8146DC2C | 48 00 00 1C */	b .L_8146DC48
.L_8146DC30:
/* 8146DC30 | 38 80 00 01 */	li r4, 0x1
/* 8146DC34 | 98 81 00 63 */	stb r4, 0x63(r1)
/* 8146DC38 | 3C 60 00 01 */	lis r3, 0x1
/* 8146DC3C | 38 63 FF FF */	subi r3, r3, 0x1
/* 8146DC40 | B0 61 00 98 */	sth r3, 0x98(r1)
/* 8146DC44 | 48 00 08 F0 */	b .L_8146E534
.L_8146DC48:
/* 8146DC48 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 8146DC4C | 28 06 00 02 */	cmplwi r6, 0x2
/* 8146DC50 | 40 82 01 D8 */	bne .L_8146DE28
/* 8146DC54 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146DC58 | 88 BF 00 0C */	lbz r5, 0xc(r31)
/* 8146DC5C | 88 E1 00 57 */	lbz r7, 0x57(r1)
/* 8146DC60 | 7C 85 3A 14 */	add r4, r5, r7
/* 8146DC64 | 7C 08 20 00 */	cmpw r8, r4
/* 8146DC68 | 41 80 01 C0 */	blt .L_8146DE28
/* 8146DC6C | 38 C0 00 00 */	li r6, 0x0
/* 8146DC70 | B0 C1 00 84 */	sth r6, 0x84(r1)
/* 8146DC74 | 88 A1 00 57 */	lbz r5, 0x57(r1)
/* 8146DC78 | B0 A1 00 82 */	sth r5, 0x82(r1)
/* 8146DC7C | 48 00 01 3C */	b .L_8146DDB8
.L_8146DC80:
/* 8146DC80 | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 8146DC84 | 54 69 08 3C */	slwi r9, r3, 1
/* 8146DC88 | 39 01 02 58 */	addi r8, r1, 0x258
/* 8146DC8C | 7C E8 4A 2E */	lhzx r7, r8, r9
/* 8146DC90 | 28 07 02 C9 */	cmplwi r7, 0x2c9
/* 8146DC94 | 40 82 00 1C */	bne .L_8146DCB0
/* 8146DC98 | 80 81 00 C0 */	lwz r4, 0xc0(r1)
/* 8146DC9C | A0 C1 00 84 */	lhz r6, 0x84(r1)
/* 8146DCA0 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146DCA4 | 7C 84 2A 2E */	lhzx r4, r4, r5
/* 8146DCA8 | 28 04 F3 31 */	cmplwi r4, 0xf331
/* 8146DCAC | 41 82 00 F4 */	beq .L_8146DDA0
.L_8146DCB0:
/* 8146DCB0 | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 8146DCB4 | 54 6A 08 3C */	slwi r10, r3, 1
/* 8146DCB8 | 39 21 02 58 */	addi r9, r1, 0x258
/* 8146DCBC | 7C C9 52 2E */	lhzx r6, r9, r10
/* 8146DCC0 | 28 06 02 CA */	cmplwi r6, 0x2ca
/* 8146DCC4 | 40 82 00 1C */	bne .L_8146DCE0
/* 8146DCC8 | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 8146DCCC | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 8146DCD0 | 54 88 08 3C */	slwi r8, r4, 1
/* 8146DCD4 | 7C E5 42 2E */	lhzx r7, r5, r8
/* 8146DCD8 | 28 07 F3 32 */	cmplwi r7, 0xf332
/* 8146DCDC | 41 82 00 C4 */	beq .L_8146DDA0
.L_8146DCE0:
/* 8146DCE0 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 8146DCE4 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146DCE8 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8146DCEC | 7C 83 2A 2E */	lhzx r4, r3, r5
/* 8146DCF0 | 28 04 02 C7 */	cmplwi r4, 0x2c7
/* 8146DCF4 | 40 82 00 1C */	bne .L_8146DD10
/* 8146DCF8 | 81 61 00 C0 */	lwz r11, 0xc0(r1)
/* 8146DCFC | A0 61 00 84 */	lhz r3, 0x84(r1)
/* 8146DD00 | 54 67 08 3C */	slwi r7, r3, 1
/* 8146DD04 | 7D 4B 3A 2E */	lhzx r10, r11, r7
/* 8146DD08 | 28 0A F3 33 */	cmplwi r10, 0xf333
/* 8146DD0C | 41 82 00 94 */	beq .L_8146DDA0
.L_8146DD10:
/* 8146DD10 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 8146DD14 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146DD18 | 38 81 02 58 */	addi r4, r1, 0x258
/* 8146DD1C | 7D 24 2A 2E */	lhzx r9, r4, r5
/* 8146DD20 | 28 09 02 CB */	cmplwi r9, 0x2cb
/* 8146DD24 | 40 82 00 1C */	bne .L_8146DD40
/* 8146DD28 | 81 01 00 C0 */	lwz r8, 0xc0(r1)
/* 8146DD2C | A0 61 00 84 */	lhz r3, 0x84(r1)
/* 8146DD30 | 54 66 08 3C */	slwi r6, r3, 1
/* 8146DD34 | 7C 88 32 2E */	lhzx r4, r8, r6
/* 8146DD38 | 28 04 F3 34 */	cmplwi r4, 0xf334
/* 8146DD3C | 41 82 00 64 */	beq .L_8146DDA0
.L_8146DD40:
/* 8146DD40 | A0 A1 00 82 */	lhz r5, 0x82(r1)
/* 8146DD44 | 54 A7 08 3C */	slwi r7, r5, 1
/* 8146DD48 | 38 81 02 58 */	addi r4, r1, 0x258
/* 8146DD4C | 7C 64 3A 2E */	lhzx r3, r4, r7
/* 8146DD50 | 28 03 02 D9 */	cmplwi r3, 0x2d9
/* 8146DD54 | 40 82 00 1C */	bne .L_8146DD70
/* 8146DD58 | 81 81 00 C0 */	lwz r12, 0xc0(r1)
/* 8146DD5C | A0 C1 00 84 */	lhz r6, 0x84(r1)
/* 8146DD60 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146DD64 | 7C 8C 2A 2E */	lhzx r4, r12, r5
/* 8146DD68 | 28 04 F3 35 */	cmplwi r4, 0xf335
/* 8146DD6C | 41 82 00 34 */	beq .L_8146DDA0
.L_8146DD70:
/* 8146DD70 | A1 01 00 82 */	lhz r8, 0x82(r1)
/* 8146DD74 | 55 0B 08 3C */	slwi r11, r8, 1
/* 8146DD78 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8146DD7C | 7C E3 5A 2E */	lhzx r7, r3, r11
/* 8146DD80 | 81 41 00 C0 */	lwz r10, 0xc0(r1)
/* 8146DD84 | A1 21 00 84 */	lhz r9, 0x84(r1)
/* 8146DD88 | 55 26 08 3C */	slwi r6, r9, 1
/* 8146DD8C | 7C 8A 32 2E */	lhzx r4, r10, r6
/* 8146DD90 | 3C A4 FF FF */	subis r5, r4, 0x1
/* 8146DD94 | 38 65 3E 00 */	addi r3, r5, 0x3e00
/* 8146DD98 | 7C 07 18 00 */	cmpw r7, r3
/* 8146DD9C | 40 82 00 2C */	bne .L_8146DDC8
.L_8146DDA0:
/* 8146DDA0 | A1 01 00 82 */	lhz r8, 0x82(r1)
/* 8146DDA4 | 38 E8 00 01 */	addi r7, r8, 0x1
/* 8146DDA8 | B0 E1 00 82 */	sth r7, 0x82(r1)
/* 8146DDAC | A0 C1 00 84 */	lhz r6, 0x84(r1)
/* 8146DDB0 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8146DDB4 | B0 C1 00 84 */	sth r6, 0x84(r1)
.L_8146DDB8:
/* 8146DDB8 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 8146DDBC | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8146DDC0 | 7C 04 48 00 */	cmpw r4, r9
/* 8146DDC4 | 41 80 FE BC */	blt .L_8146DC80
.L_8146DDC8:
/* 8146DDC8 | A0 A1 00 84 */	lhz r5, 0x84(r1)
/* 8146DDCC | 89 1F 00 0C */	lbz r8, 0xc(r31)
/* 8146DDD0 | 7C 05 40 00 */	cmpw r5, r8
/* 8146DDD4 | 40 82 00 48 */	bne .L_8146DE1C
/* 8146DDD8 | 88 7F 00 03 */	lbz r3, 0x3(r31)
/* 8146DDDC | 54 64 06 F6 */	rlwinm r4, r3, 0, 27, 27
/* 8146DDE0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146DDE4 | 40 82 00 0C */	bne .L_8146DDF0
/* 8146DDE8 | 88 FF 00 0C */	lbz r7, 0xc(r31)
/* 8146DDEC | 98 FF 00 22 */	stb r7, 0x22(r31)
.L_8146DDF0:
/* 8146DDF0 | 38 C0 00 01 */	li r6, 0x1
/* 8146DDF4 | 98 C1 00 63 */	stb r6, 0x63(r1)
/* 8146DDF8 | 89 21 00 57 */	lbz r9, 0x57(r1)
/* 8146DDFC | 55 23 08 3C */	slwi r3, r9, 1
/* 8146DE00 | 38 A1 02 58 */	addi r5, r1, 0x258
/* 8146DE04 | 7C 85 1A 2E */	lhzx r4, r5, r3
/* 8146DE08 | B0 81 00 94 */	sth r4, 0x94(r1)
/* 8146DE0C | 3D 40 00 01 */	lis r10, 0x1
/* 8146DE10 | 39 4A FF FF */	subi r10, r10, 0x1
/* 8146DE14 | B1 41 00 98 */	sth r10, 0x98(r1)
/* 8146DE18 | 48 00 07 1C */	b .L_8146E534
.L_8146DE1C:
/* 8146DE1C | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 8146DE20 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8146DE24 | 41 82 0A D4 */	beq .L_8146E8F8
.L_8146DE28:
/* 8146DE28 | 89 81 00 56 */	lbz r12, 0x56(r1)
/* 8146DE2C | 28 0C 00 01 */	cmplwi r12, 0x1
/* 8146DE30 | 41 82 00 10 */	beq .L_8146DE40
/* 8146DE34 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146DE38 | 28 07 00 02 */	cmplwi r7, 0x2
/* 8146DE3C | 40 82 01 88 */	bne .L_8146DFC4
.L_8146DE40:
/* 8146DE40 | 89 01 02 FD */	lbz r8, 0x2fd(r1)
/* 8146DE44 | 28 08 00 01 */	cmplwi r8, 0x1
/* 8146DE48 | 40 81 01 7C */	ble .L_8146DFC4
/* 8146DE4C | 88 C1 02 FD */	lbz r6, 0x2fd(r1)
/* 8146DE50 | 88 A1 00 57 */	lbz r5, 0x57(r1)
/* 8146DE54 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146DE58 | 7C 85 18 50 */	subf r4, r5, r3
/* 8146DE5C | 7C 06 20 00 */	cmpw r6, r4
/* 8146DE60 | 41 81 0A 98 */	bgt .L_8146E8F8
/* 8146DE64 | 39 60 00 01 */	li r11, 0x1
/* 8146DE68 | 91 61 01 14 */	stw r11, 0x114(r1)
/* 8146DE6C | 48 00 01 38 */	b .L_8146DFA4
.L_8146DE70:
/* 8146DE70 | 89 21 00 57 */	lbz r9, 0x57(r1)
/* 8146DE74 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146DE78 | 7D 09 3A 14 */	add r8, r9, r7
/* 8146DE7C | 55 0A 08 3C */	slwi r10, r8, 1
/* 8146DE80 | 39 01 02 58 */	addi r8, r1, 0x258
/* 8146DE84 | 7C 68 52 2E */	lhzx r3, r8, r10
/* 8146DE88 | B0 61 00 94 */	sth r3, 0x94(r1)
/* 8146DE8C | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146DE90 | 7F C4 F3 78 */	mr r4, r30
/* 8146DE94 | 48 01 15 01 */	bl Zi8Uni2Ord
/* 8146DE98 | 7C 64 1B 78 */	mr r4, r3
/* 8146DE9C | B0 81 00 98 */	sth r4, 0x98(r1)
/* 8146DEA0 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 8146DEA4 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 8146DEA8 | 41 82 01 0C */	beq .L_8146DFB4
/* 8146DEAC | 81 21 00 EC */	lwz r9, 0xec(r1)
/* 8146DEB0 | A1 01 00 98 */	lhz r8, 0x98(r1)
/* 8146DEB4 | 1C A8 00 0C */	mulli r5, r8, 0xc
/* 8146DEB8 | 7C 89 2A 14 */	add r4, r9, r5
/* 8146DEBC | 90 81 01 00 */	stw r4, 0x100(r1)
/* 8146DEC0 | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 8146DEC4 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146DEC8 | 48 01 10 01 */	bl Zi8GetPCode
/* 8146DECC | 7C 67 1B 78 */	mr r7, r3
/* 8146DED0 | 54 E3 04 3E */	clrlwi r3, r7, 16
/* 8146DED4 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146DED8 | 54 C4 08 3C */	slwi r4, r6, 1
/* 8146DEDC | 39 41 02 FE */	addi r10, r1, 0x2fe
/* 8146DEE0 | 7C AA 22 2E */	lhzx r5, r10, r4
/* 8146DEE4 | 7C A4 18 38 */	and r4, r5, r3
/* 8146DEE8 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146DEEC | 55 27 08 3C */	slwi r7, r9, 1
/* 8146DEF0 | 38 C1 03 1E */	addi r6, r1, 0x31e
/* 8146DEF4 | 7C 66 3A 2E */	lhzx r3, r6, r7
/* 8146DEF8 | 7D 03 20 50 */	subf r8, r3, r4
/* 8146DEFC | 7D 05 00 34 */	cntlzw r5, r8
/* 8146DF00 | 54 A3 D9 7E */	srwi r3, r5, 5
/* 8146DF04 | 54 67 06 3E */	clrlwi r7, r3, 24
/* 8146DF08 | 98 E1 00 63 */	stb r7, 0x63(r1)
/* 8146DF0C | 88 C1 00 63 */	lbz r6, 0x63(r1)
/* 8146DF10 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146DF14 | 40 82 00 78 */	bne .L_8146DF8C
/* 8146DF18 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146DF1C | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 8146DF20 | 54 A4 06 30 */	rlwinm r4, r5, 0, 24, 24
/* 8146DF24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146DF28 | 41 82 00 64 */	beq .L_8146DF8C
/* 8146DF2C | 88 61 00 55 */	lbz r3, 0x55(r1)
/* 8146DF30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146DF34 | 40 82 00 58 */	bne .L_8146DF8C
/* 8146DF38 | 80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 8146DF3C | A0 81 00 76 */	lhz r4, 0x76(r1)
/* 8146DF40 | 80 A1 00 F0 */	lwz r5, 0xf0(r1)
/* 8146DF44 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 8146DF48 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146DF4C | 54 EB 08 3C */	slwi r11, r7, 1
/* 8146DF50 | 39 41 02 FE */	addi r10, r1, 0x2fe
/* 8146DF54 | 7C EA 5A 2E */	lhzx r7, r10, r11
/* 8146DF58 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146DF5C | 55 09 08 3C */	slwi r9, r8, 1
/* 8146DF60 | 39 01 03 1E */	addi r8, r1, 0x31e
/* 8146DF64 | 7D 08 4A 2E */	lhzx r8, r8, r9
/* 8146DF68 | 89 21 00 6E */	lbz r9, 0x6e(r1)
/* 8146DF6C | 7F CA F3 78 */	mr r10, r30
/* 8146DF70 | 4B FF C6 FD */	bl Zi8MatchAltSound
/* 8146DF74 | 7C 67 1B 78 */	mr r7, r3
/* 8146DF78 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 8146DF7C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146DF80 | 41 82 00 0C */	beq .L_8146DF8C
/* 8146DF84 | 38 A0 00 01 */	li r5, 0x1
/* 8146DF88 | 98 A1 00 63 */	stb r5, 0x63(r1)
.L_8146DF8C:
/* 8146DF8C | 89 21 00 63 */	lbz r9, 0x63(r1)
/* 8146DF90 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146DF94 | 41 82 00 20 */	beq .L_8146DFB4
/* 8146DF98 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146DF9C | 39 44 00 01 */	addi r10, r4, 0x1
/* 8146DFA0 | 91 41 01 14 */	stw r10, 0x114(r1)
.L_8146DFA4:
/* 8146DFA4 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146DFA8 | 89 01 02 FD */	lbz r8, 0x2fd(r1)
/* 8146DFAC | 7C 03 40 00 */	cmpw r3, r8
/* 8146DFB0 | 41 80 FE C0 */	blt .L_8146DE70
.L_8146DFB4:
/* 8146DFB4 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146DFB8 | 88 A1 02 FD */	lbz r5, 0x2fd(r1)
/* 8146DFBC | 7C 03 28 00 */	cmpw r3, r5
/* 8146DFC0 | 41 80 09 38 */	blt .L_8146E8F8
.L_8146DFC4:
/* 8146DFC4 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146DFC8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146DFCC | 40 82 01 80 */	bne .L_8146E14C
/* 8146DFD0 | 88 81 03 44 */	lbz r4, 0x344(r1)
/* 8146DFD4 | 28 04 00 01 */	cmplwi r4, 0x1
/* 8146DFD8 | 40 81 01 74 */	ble .L_8146E14C
/* 8146DFDC | 88 C1 03 44 */	lbz r6, 0x344(r1)
/* 8146DFE0 | 88 A1 00 57 */	lbz r5, 0x57(r1)
/* 8146DFE4 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146DFE8 | 7D 25 20 50 */	subf r9, r5, r4
/* 8146DFEC | 7C 06 48 00 */	cmpw r6, r9
/* 8146DFF0 | 41 81 09 08 */	bgt .L_8146E8F8
/* 8146DFF4 | 39 00 00 01 */	li r8, 0x1
/* 8146DFF8 | 91 01 01 14 */	stw r8, 0x114(r1)
/* 8146DFFC | 48 00 01 30 */	b .L_8146E12C
.L_8146E000:
/* 8146E000 | 88 81 00 57 */	lbz r4, 0x57(r1)
/* 8146E004 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146E008 | 7C 64 3A 14 */	add r3, r4, r7
/* 8146E00C | 54 66 08 3C */	slwi r6, r3, 1
/* 8146E010 | 38 A1 02 58 */	addi r5, r1, 0x258
/* 8146E014 | 7C 85 32 2E */	lhzx r4, r5, r6
/* 8146E018 | B0 81 00 94 */	sth r4, 0x94(r1)
/* 8146E01C | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146E020 | 7F C4 F3 78 */	mr r4, r30
/* 8146E024 | 48 01 13 71 */	bl Zi8Uni2Ord
/* 8146E028 | 7C 68 1B 78 */	mr r8, r3
/* 8146E02C | B1 01 00 98 */	sth r8, 0x98(r1)
/* 8146E030 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 8146E034 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 8146E038 | 41 82 01 04 */	beq .L_8146E13C
/* 8146E03C | 80 E1 00 EC */	lwz r7, 0xec(r1)
/* 8146E040 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 8146E044 | 1C A6 00 0C */	mulli r5, r6, 0xc
/* 8146E048 | 7C 87 2A 14 */	add r4, r7, r5
/* 8146E04C | 90 81 01 00 */	stw r4, 0x100(r1)
/* 8146E050 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146E054 | 1D 23 00 0C */	mulli r9, r3, 0xc
/* 8146E058 | 39 01 04 05 */	addi r8, r1, 0x405
/* 8146E05C | 7C E8 48 AE */	lbzx r7, r8, r9
/* 8146E060 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 8146E064 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 8146E068 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146E06C | 1C 64 00 0C */	mulli r3, r4, 0xc
/* 8146E070 | 38 81 03 45 */	addi r4, r1, 0x345
/* 8146E074 | 7C 04 18 AE */	lbzx r0, r4, r3
/* 8146E078 | 7C A3 00 38 */	and r3, r5, r0
/* 8146E07C | 7C 07 18 00 */	cmpw r7, r3
/* 8146E080 | 40 82 00 BC */	bne .L_8146E13C
/* 8146E084 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146E088 | 1C E8 00 0C */	mulli r7, r8, 0xc
/* 8146E08C | 38 C1 04 06 */	addi r6, r1, 0x406
/* 8146E090 | 7C A6 38 AE */	lbzx r5, r6, r7
/* 8146E094 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146E098 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 8146E09C | 81 81 01 14 */	lwz r12, 0x114(r1)
/* 8146E0A0 | 1D 6C 00 0C */	mulli r11, r12, 0xc
/* 8146E0A4 | 38 E1 03 46 */	addi r7, r1, 0x346
/* 8146E0A8 | 7D 47 58 AE */	lbzx r10, r7, r11
/* 8146E0AC | 7C 69 50 38 */	and r9, r3, r10
/* 8146E0B0 | 7C 05 48 00 */	cmpw r5, r9
/* 8146E0B4 | 40 82 00 88 */	bne .L_8146E13C
/* 8146E0B8 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146E0BC | 1C 68 00 0C */	mulli r3, r8, 0xc
/* 8146E0C0 | 38 81 04 07 */	addi r4, r1, 0x407
/* 8146E0C4 | 7C 64 18 AE */	lbzx r3, r4, r3
/* 8146E0C8 | 81 21 01 00 */	lwz r9, 0x100(r1)
/* 8146E0CC | 89 09 00 02 */	lbz r8, 0x2(r9)
/* 8146E0D0 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146E0D4 | 1C E5 00 0C */	mulli r7, r5, 0xc
/* 8146E0D8 | 38 C1 03 47 */	addi r6, r1, 0x347
/* 8146E0DC | 7C A6 38 AE */	lbzx r5, r6, r7
/* 8146E0E0 | 7D 04 28 38 */	and r4, r8, r5
/* 8146E0E4 | 7C 03 20 00 */	cmpw r3, r4
/* 8146E0E8 | 40 82 00 54 */	bne .L_8146E13C
/* 8146E0EC | 81 81 01 14 */	lwz r12, 0x114(r1)
/* 8146E0F0 | 1C 8C 00 0C */	mulli r4, r12, 0xc
/* 8146E0F4 | 39 61 04 08 */	addi r11, r1, 0x408
/* 8146E0F8 | 7D 4B 20 AE */	lbzx r10, r11, r4
/* 8146E0FC | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146E100 | 88 83 00 03 */	lbz r4, 0x3(r3)
/* 8146E104 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146E108 | 1C A9 00 0C */	mulli r5, r9, 0xc
/* 8146E10C | 38 E1 03 48 */	addi r7, r1, 0x348
/* 8146E110 | 7D 07 28 AE */	lbzx r8, r7, r5
/* 8146E114 | 7C 86 40 38 */	and r6, r4, r8
/* 8146E118 | 7C 0A 30 00 */	cmpw r10, r6
/* 8146E11C | 40 82 00 20 */	bne .L_8146E13C
/* 8146E120 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146E124 | 38 E4 00 01 */	addi r7, r4, 0x1
/* 8146E128 | 90 E1 01 14 */	stw r7, 0x114(r1)
.L_8146E12C:
/* 8146E12C | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146E130 | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 8146E134 | 7C 03 28 00 */	cmpw r3, r5
/* 8146E138 | 41 80 FE C8 */	blt .L_8146E000
.L_8146E13C:
/* 8146E13C | 83 61 01 14 */	lwz r27, 0x114(r1)
/* 8146E140 | 88 81 03 44 */	lbz r4, 0x344(r1)
/* 8146E144 | 7C 1B 20 00 */	cmpw r27, r4
/* 8146E148 | 41 80 07 B0 */	blt .L_8146E8F8
.L_8146E14C:
/* 8146E14C | 88 C1 00 57 */	lbz r6, 0x57(r1)
/* 8146E150 | 54 C3 08 3C */	slwi r3, r6, 1
/* 8146E154 | 39 01 02 58 */	addi r8, r1, 0x258
/* 8146E158 | 7C A8 1A 2E */	lhzx r5, r8, r3
/* 8146E15C | B0 A1 00 94 */	sth r5, 0x94(r1)
/* 8146E160 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146E164 | 7F C4 F3 78 */	mr r4, r30
/* 8146E168 | 48 01 12 2D */	bl Zi8Uni2Ord
/* 8146E16C | 7C 64 1B 78 */	mr r4, r3
/* 8146E170 | B0 81 00 98 */	sth r4, 0x98(r1)
/* 8146E174 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 8146E178 | 28 07 FF FF */	cmplwi r7, 0xffff
/* 8146E17C | 41 82 07 7C */	beq .L_8146E8F8
/* 8146E180 | 80 C1 00 EC */	lwz r6, 0xec(r1)
/* 8146E184 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 8146E188 | 1C A3 00 0C */	mulli r5, r3, 0xc
/* 8146E18C | 7F 86 2A 14 */	add r28, r6, r5
/* 8146E190 | 93 81 01 00 */	stw r28, 0x100(r1)
/* 8146E194 | 39 80 00 00 */	li r12, 0x0
/* 8146E198 | 99 81 00 63 */	stb r12, 0x63(r1)
/* 8146E19C | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146E1A0 | 2C 04 00 07 */	cmpwi r4, 0x7
/* 8146E1A4 | 40 80 00 1C */	bge .L_8146E1C0
/* 8146E1A8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146E1AC | 41 82 02 38 */	beq .L_8146E3E4
/* 8146E1B0 | 41 80 03 78 */	blt .L_8146E528
/* 8146E1B4 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 8146E1B8 | 40 80 03 70 */	bge .L_8146E528
/* 8146E1BC | 48 00 02 D4 */	b .L_8146E490
.L_8146E1C0:
/* 8146E1C0 | 2C 04 00 09 */	cmpwi r4, 0x9
/* 8146E1C4 | 41 82 00 E4 */	beq .L_8146E2A8
/* 8146E1C8 | 40 80 03 60 */	bge .L_8146E528
/* 8146E1CC | 48 00 00 04 */	b .L_8146E1D0
.L_8146E1D0:
/* 8146E1D0 | 81 61 00 D4 */	lwz r11, 0xd4(r1)
/* 8146E1D4 | 81 41 01 00 */	lwz r10, 0x100(r1)
/* 8146E1D8 | 89 2A 00 09 */	lbz r9, 0x9(r10)
/* 8146E1DC | 55 23 07 3E */	clrlwi r3, r9, 28
/* 8146E1E0 | 54 68 80 1E */	slwi r8, r3, 16
/* 8146E1E4 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146E1E8 | 88 A4 00 0B */	lbz r5, 0xb(r4)
/* 8146E1EC | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 8146E1F0 | 88 C7 00 0A */	lbz r6, 0xa(r7)
/* 8146E1F4 | 54 C4 40 2E */	slwi r4, r6, 8
/* 8146E1F8 | 7C A5 23 78 */	or r5, r5, r4
/* 8146E1FC | 7D 03 2B 78 */	or r3, r8, r5
/* 8146E200 | 7D 0B 1A 14 */	add r8, r11, r3
/* 8146E204 | 91 01 00 B8 */	stw r8, 0xb8(r1)
/* 8146E208 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 8146E20C | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 8146E210 | 54 69 07 7E */	clrlwi r9, r3, 29
/* 8146E214 | 88 81 02 FC */	lbz r4, 0x2fc(r1)
/* 8146E218 | 7C 09 20 00 */	cmpw r9, r4
/* 8146E21C | 41 80 00 80 */	blt .L_8146E29C
/* 8146E220 | 88 C1 02 F5 */	lbz r6, 0x2f5(r1)
/* 8146E224 | 88 A1 02 F1 */	lbz r5, 0x2f1(r1)
/* 8146E228 | 80 E1 00 B8 */	lwz r7, 0xb8(r1)
/* 8146E22C | 88 87 00 00 */	lbz r4, 0x0(r7)
/* 8146E230 | 7C A3 20 38 */	and r3, r5, r4
/* 8146E234 | 7C 06 18 00 */	cmpw r6, r3
/* 8146E238 | 40 82 00 64 */	bne .L_8146E29C
/* 8146E23C | 88 C1 02 F6 */	lbz r6, 0x2f6(r1)
/* 8146E240 | 89 01 02 F2 */	lbz r8, 0x2f2(r1)
/* 8146E244 | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 8146E248 | 88 E5 00 01 */	lbz r7, 0x1(r5)
/* 8146E24C | 7D 04 38 38 */	and r4, r8, r7
/* 8146E250 | 7C 06 20 00 */	cmpw r6, r4
/* 8146E254 | 40 82 00 48 */	bne .L_8146E29C
/* 8146E258 | 88 C1 02 F7 */	lbz r6, 0x2f7(r1)
/* 8146E25C | 88 A1 02 F3 */	lbz r5, 0x2f3(r1)
/* 8146E260 | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 8146E264 | 89 23 00 02 */	lbz r9, 0x2(r3)
/* 8146E268 | 7C A8 48 38 */	and r8, r5, r9
/* 8146E26C | 7C 06 40 00 */	cmpw r6, r8
/* 8146E270 | 40 82 00 2C */	bne .L_8146E29C
/* 8146E274 | 88 E1 02 F8 */	lbz r7, 0x2f8(r1)
/* 8146E278 | 88 81 02 F4 */	lbz r4, 0x2f4(r1)
/* 8146E27C | 80 C1 00 B8 */	lwz r6, 0xb8(r1)
/* 8146E280 | 88 A6 00 03 */	lbz r5, 0x3(r6)
/* 8146E284 | 7C 84 28 38 */	and r4, r4, r5
/* 8146E288 | 7C 07 20 00 */	cmpw r7, r4
/* 8146E28C | 40 82 00 10 */	bne .L_8146E29C
/* 8146E290 | 38 60 00 01 */	li r3, 0x1
/* 8146E294 | 98 61 00 63 */	stb r3, 0x63(r1)
/* 8146E298 | 48 00 02 90 */	b .L_8146E528
.L_8146E29C:
/* 8146E29C | 89 41 00 56 */	lbz r10, 0x56(r1)
/* 8146E2A0 | 28 0A 00 07 */	cmplwi r10, 0x7
/* 8146E2A4 | 41 82 02 84 */	beq .L_8146E528
.L_8146E2A8:
/* 8146E2A8 | 81 21 00 D4 */	lwz r9, 0xd4(r1)
/* 8146E2AC | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 8146E2B0 | 88 A6 00 09 */	lbz r5, 0x9(r6)
/* 8146E2B4 | 54 A4 07 3E */	clrlwi r4, r5, 28
/* 8146E2B8 | 54 88 80 1E */	slwi r8, r4, 16
/* 8146E2BC | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 8146E2C0 | 88 C7 00 0B */	lbz r6, 0xb(r7)
/* 8146E2C4 | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 8146E2C8 | 88 65 00 0A */	lbz r3, 0xa(r5)
/* 8146E2CC | 54 64 40 2E */	slwi r4, r3, 8
/* 8146E2D0 | 7C CB 23 78 */	or r11, r6, r4
/* 8146E2D4 | 7D 03 5B 78 */	or r3, r8, r11
/* 8146E2D8 | 7C E9 1A 14 */	add r7, r9, r3
/* 8146E2DC | 90 E1 00 B8 */	stw r7, 0xb8(r1)
/* 8146E2E0 | 81 41 00 B8 */	lwz r10, 0xb8(r1)
/* 8146E2E4 | 88 CA 00 00 */	lbz r6, 0x0(r10)
/* 8146E2E8 | 54 C5 07 7E */	clrlwi r5, r6, 29
/* 8146E2EC | 90 A1 01 14 */	stw r5, 0x114(r1)
/* 8146E2F0 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 8146E2F4 | 89 24 00 00 */	lbz r9, 0x0(r4)
/* 8146E2F8 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146E2FC | 55 03 10 3A */	slwi r3, r8, 2
/* 8146E300 | 38 C1 01 40 */	addi r6, r1, 0x140
/* 8146E304 | 7C 86 18 AE */	lbzx r4, r6, r3
/* 8146E308 | 7D 25 20 38 */	and r5, r9, r4
/* 8146E30C | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146E310 | 54 E4 10 3A */	slwi r4, r7, 2
/* 8146E314 | 38 61 01 28 */	addi r3, r1, 0x128
/* 8146E318 | 7D 83 20 AE */	lbzx r12, r3, r4
/* 8146E31C | 7C 05 60 00 */	cmpw r5, r12
/* 8146E320 | 40 82 02 08 */	bne .L_8146E528
/* 8146E324 | 80 C1 00 B8 */	lwz r6, 0xb8(r1)
/* 8146E328 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 8146E32C | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146E330 | 54 88 10 3A */	slwi r8, r4, 2
/* 8146E334 | 39 61 01 40 */	addi r11, r1, 0x140
/* 8146E338 | 7C 6B 42 14 */	add r3, r11, r8
/* 8146E33C | 88 E3 00 01 */	lbz r7, 0x1(r3)
/* 8146E340 | 7C AA 38 38 */	and r10, r5, r7
/* 8146E344 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146E348 | 55 26 10 3A */	slwi r6, r9, 2
/* 8146E34C | 38 81 01 28 */	addi r4, r1, 0x128
/* 8146E350 | 7C A4 32 14 */	add r5, r4, r6
/* 8146E354 | 88 65 00 01 */	lbz r3, 0x1(r5)
/* 8146E358 | 7C 0A 18 00 */	cmpw r10, r3
/* 8146E35C | 40 82 01 CC */	bne .L_8146E528
/* 8146E360 | 81 01 00 B8 */	lwz r8, 0xb8(r1)
/* 8146E364 | 88 E8 00 02 */	lbz r7, 0x2(r8)
/* 8146E368 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146E36C | 54 C6 10 3A */	slwi r6, r6, 2
/* 8146E370 | 38 81 01 40 */	addi r4, r1, 0x140
/* 8146E374 | 7D 24 32 14 */	add r9, r4, r6
/* 8146E378 | 88 A9 00 02 */	lbz r5, 0x2(r9)
/* 8146E37C | 7C E8 28 38 */	and r8, r7, r5
/* 8146E380 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146E384 | 54 64 10 3A */	slwi r4, r3, 2
/* 8146E388 | 38 E1 01 28 */	addi r7, r1, 0x128
/* 8146E38C | 7C C7 22 14 */	add r6, r7, r4
/* 8146E390 | 89 26 00 02 */	lbz r9, 0x2(r6)
/* 8146E394 | 7C 08 48 00 */	cmpw r8, r9
/* 8146E398 | 40 82 01 90 */	bne .L_8146E528
/* 8146E39C | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 8146E3A0 | 88 A3 00 03 */	lbz r5, 0x3(r3)
/* 8146E3A4 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146E3A8 | 54 8A 10 3A */	slwi r10, r4, 2
/* 8146E3AC | 38 61 01 40 */	addi r3, r1, 0x140
/* 8146E3B0 | 7D 83 52 14 */	add r12, r3, r10
/* 8146E3B4 | 88 EC 00 03 */	lbz r7, 0x3(r12)
/* 8146E3B8 | 7C A8 38 38 */	and r8, r5, r7
/* 8146E3BC | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146E3C0 | 54 C5 10 3A */	slwi r5, r6, 2
/* 8146E3C4 | 38 61 01 28 */	addi r3, r1, 0x128
/* 8146E3C8 | 7C 83 2A 14 */	add r4, r3, r5
/* 8146E3CC | 89 64 00 03 */	lbz r11, 0x3(r4)
/* 8146E3D0 | 7C 08 58 00 */	cmpw r8, r11
/* 8146E3D4 | 40 82 01 54 */	bne .L_8146E528
/* 8146E3D8 | 39 20 00 01 */	li r9, 0x1
/* 8146E3DC | 99 21 00 63 */	stb r9, 0x63(r1)
/* 8146E3E0 | 48 00 01 48 */	b .L_8146E528
.L_8146E3E4:
/* 8146E3E4 | 88 E1 02 E5 */	lbz r7, 0x2e5(r1)
/* 8146E3E8 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 8146E3EC | 89 48 00 00 */	lbz r10, 0x0(r8)
/* 8146E3F0 | 89 01 02 D9 */	lbz r8, 0x2d9(r1)
/* 8146E3F4 | 7D 43 40 38 */	and r3, r10, r8
/* 8146E3F8 | 7C 07 18 00 */	cmpw r7, r3
/* 8146E3FC | 40 82 01 2C */	bne .L_8146E528
/* 8146E400 | 88 81 02 D8 */	lbz r4, 0x2d8(r1)
/* 8146E404 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146E408 | 40 82 00 58 */	bne .L_8146E460
/* 8146E40C | 88 C1 02 E8 */	lbz r6, 0x2e8(r1)
/* 8146E410 | 81 21 01 00 */	lwz r9, 0x100(r1)
/* 8146E414 | 89 09 00 03 */	lbz r8, 0x3(r9)
/* 8146E418 | 88 A1 02 DC */	lbz r5, 0x2dc(r1)
/* 8146E41C | 7D 04 28 38 */	and r4, r8, r5
/* 8146E420 | 7C 06 20 00 */	cmpw r6, r4
/* 8146E424 | 40 82 01 04 */	bne .L_8146E528
/* 8146E428 | 88 E1 02 E7 */	lbz r7, 0x2e7(r1)
/* 8146E42C | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146E430 | 88 C3 00 02 */	lbz r6, 0x2(r3)
/* 8146E434 | 88 81 02 DB */	lbz r4, 0x2db(r1)
/* 8146E438 | 7C CA 20 38 */	and r10, r6, r4
/* 8146E43C | 7C 07 50 00 */	cmpw r7, r10
/* 8146E440 | 40 82 00 E8 */	bne .L_8146E528
/* 8146E444 | 88 A1 02 E6 */	lbz r5, 0x2e6(r1)
/* 8146E448 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146E44C | 89 24 00 01 */	lbz r9, 0x1(r4)
/* 8146E450 | 88 E1 02 DA */	lbz r7, 0x2da(r1)
/* 8146E454 | 7D 26 38 38 */	and r6, r9, r7
/* 8146E458 | 7C 05 30 00 */	cmpw r5, r6
/* 8146E45C | 40 82 00 CC */	bne .L_8146E528
.L_8146E460:
/* 8146E460 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146E464 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 8146E468 | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 8146E46C | 38 C0 00 00 */	li r6, 0x0
/* 8146E470 | 7F C7 F3 78 */	mr r7, r30
/* 8146E474 | 48 00 EC D5 */	bl Zi8SecMatchChar
/* 8146E478 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 8146E47C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146E480 | 41 82 00 A8 */	beq .L_8146E528
/* 8146E484 | 38 A0 00 01 */	li r5, 0x1
/* 8146E488 | 98 A1 00 63 */	stb r5, 0x63(r1)
/* 8146E48C | 48 00 00 9C */	b .L_8146E528
.L_8146E490:
/* 8146E490 | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 8146E494 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146E498 | 48 01 0A 31 */	bl Zi8GetPCode
/* 8146E49C | 54 67 04 3E */	clrlwi r7, r3, 16
/* 8146E4A0 | A0 C1 02 FE */	lhz r6, 0x2fe(r1)
/* 8146E4A4 | 7C C4 38 38 */	and r4, r6, r7
/* 8146E4A8 | A0 A1 03 1E */	lhz r5, 0x31e(r1)
/* 8146E4AC | 7C 85 20 50 */	subf r4, r5, r4
/* 8146E4B0 | 7C 83 00 34 */	cntlzw r3, r4
/* 8146E4B4 | 54 67 D9 7E */	srwi r7, r3, 5
/* 8146E4B8 | 54 EB 06 3E */	clrlwi r11, r7, 24
/* 8146E4BC | 99 61 00 63 */	stb r11, 0x63(r1)
/* 8146E4C0 | 89 41 00 63 */	lbz r10, 0x63(r1)
/* 8146E4C4 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146E4C8 | 40 82 00 60 */	bne .L_8146E528
/* 8146E4CC | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 8146E4D0 | 89 28 00 00 */	lbz r9, 0x0(r8)
/* 8146E4D4 | 55 28 06 30 */	rlwinm r8, r9, 0, 24, 24
/* 8146E4D8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146E4DC | 41 82 00 4C */	beq .L_8146E528
/* 8146E4E0 | 88 E1 00 55 */	lbz r7, 0x55(r1)
/* 8146E4E4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146E4E8 | 40 82 00 40 */	bne .L_8146E528
/* 8146E4EC | 80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 8146E4F0 | A0 81 00 76 */	lhz r4, 0x76(r1)
/* 8146E4F4 | 80 A1 00 F0 */	lwz r5, 0xf0(r1)
/* 8146E4F8 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 8146E4FC | A0 E1 02 FE */	lhz r7, 0x2fe(r1)
/* 8146E500 | A1 01 03 1E */	lhz r8, 0x31e(r1)
/* 8146E504 | 89 21 00 6E */	lbz r9, 0x6e(r1)
/* 8146E508 | 7F CA F3 78 */	mr r10, r30
/* 8146E50C | 4B FF C1 61 */	bl Zi8MatchAltSound
/* 8146E510 | 7C 66 1B 78 */	mr r6, r3
/* 8146E514 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 8146E518 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146E51C | 41 82 00 0C */	beq .L_8146E528
/* 8146E520 | 39 20 00 01 */	li r9, 0x1
/* 8146E524 | 99 21 00 63 */	stb r9, 0x63(r1)
.L_8146E528:
/* 8146E528 | 88 81 00 63 */	lbz r4, 0x63(r1)
/* 8146E52C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146E530 | 41 82 03 C8 */	beq .L_8146E8F8
.L_8146E534:
/* 8146E534 | 89 41 00 5D */	lbz r10, 0x5d(r1)
/* 8146E538 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146E53C | 40 82 00 7C */	bne .L_8146E5B8
/* 8146E540 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146E544 | 54 68 04 3E */	clrlwi r8, r3, 16
/* 8146E548 | A0 61 00 8C */	lhz r3, 0x8c(r1)
/* 8146E54C | 7C 08 18 40 */	cmplw r8, r3
/* 8146E550 | 41 82 03 A8 */	beq .L_8146E8F8
/* 8146E554 | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 8146E558 | B0 A1 00 8C */	sth r5, 0x8c(r1)
/* 8146E55C | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 8146E560 | 28 07 FF FF */	cmplwi r7, 0xffff
/* 8146E564 | 41 82 01 5C */	beq .L_8146E6C0
/* 8146E568 | 88 81 00 5E */	lbz r4, 0x5e(r1)
/* 8146E56C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146E570 | 41 82 00 28 */	beq .L_8146E598
/* 8146E574 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8146E578 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 8146E57C | 7F C5 F3 78 */	mr r5, r30
/* 8146E580 | 4B FF C5 9D */	bl Zi8SetFindCand
/* 8146E584 | 7C 66 1B 78 */	mr r6, r3
/* 8146E588 | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 8146E58C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146E590 | 40 82 03 68 */	bne .L_8146E8F8
/* 8146E594 | 48 00 01 2C */	b .L_8146E6C0
.L_8146E598:
/* 8146E598 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 8146E59C | 7F C4 F3 78 */	mr r4, r30
/* 8146E5A0 | 48 00 D7 55 */	bl Zi8IsDupWChar
/* 8146E5A4 | 7C 64 1B 78 */	mr r4, r3
/* 8146E5A8 | 54 89 06 3E */	clrlwi r9, r4, 24
/* 8146E5AC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146E5B0 | 40 82 03 48 */	bne .L_8146E8F8
/* 8146E5B4 | 48 00 01 0C */	b .L_8146E6C0
.L_8146E5B8:
/* 8146E5B8 | 39 00 00 00 */	li r8, 0x0
/* 8146E5BC | 99 01 00 65 */	stb r8, 0x65(r1)
/* 8146E5C0 | 88 81 00 57 */	lbz r4, 0x57(r1)
/* 8146E5C4 | 90 81 01 14 */	stw r4, 0x114(r1)
/* 8146E5C8 | 48 00 00 1C */	b .L_8146E5E4
.L_8146E5CC:
/* 8146E5CC | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146E5D0 | 38 67 00 01 */	addi r3, r7, 0x1
/* 8146E5D4 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 8146E5D8 | 88 C1 00 65 */	lbz r6, 0x65(r1)
/* 8146E5DC | 38 A6 00 01 */	addi r5, r6, 0x1
/* 8146E5E0 | 98 A1 00 65 */	stb r5, 0x65(r1)
.L_8146E5E4:
/* 8146E5E4 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146E5E8 | 54 88 08 3C */	slwi r8, r4, 1
/* 8146E5EC | 38 61 02 58 */	addi r3, r1, 0x258
/* 8146E5F0 | 7C E3 42 2E */	lhzx r7, r3, r8
/* 8146E5F4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146E5F8 | 40 82 FF D4 */	bne .L_8146E5CC
/* 8146E5FC | 88 DF 00 0C */	lbz r6, 0xc(r31)
/* 8146E600 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146E604 | 41 82 00 64 */	beq .L_8146E668
/* 8146E608 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8146E60C | 28 05 00 01 */	cmplwi r5, 0x1
/* 8146E610 | 41 82 00 10 */	beq .L_8146E620
/* 8146E614 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146E618 | 28 04 00 02 */	cmplwi r4, 0x2
/* 8146E61C | 40 82 00 1C */	bne .L_8146E638
.L_8146E620:
/* 8146E620 | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 8146E624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146E628 | 41 82 00 10 */	beq .L_8146E638
/* 8146E62C | 89 21 02 FD */	lbz r9, 0x2fd(r1)
/* 8146E630 | 99 21 00 65 */	stb r9, 0x65(r1)
/* 8146E634 | 48 00 00 48 */	b .L_8146E67C
.L_8146E638:
/* 8146E638 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 8146E63C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146E640 | 40 82 00 1C */	bne .L_8146E65C
/* 8146E644 | 88 E1 03 44 */	lbz r7, 0x344(r1)
/* 8146E648 | 28 07 00 01 */	cmplwi r7, 0x1
/* 8146E64C | 40 81 00 10 */	ble .L_8146E65C
/* 8146E650 | 88 C1 03 44 */	lbz r6, 0x344(r1)
/* 8146E654 | 98 C1 00 65 */	stb r6, 0x65(r1)
/* 8146E658 | 48 00 00 24 */	b .L_8146E67C
.L_8146E65C:
/* 8146E65C | 38 A0 00 01 */	li r5, 0x1
/* 8146E660 | 98 A1 00 65 */	stb r5, 0x65(r1)
/* 8146E664 | 48 00 00 18 */	b .L_8146E67C
.L_8146E668:
/* 8146E668 | 88 81 00 54 */	lbz r4, 0x54(r1)
/* 8146E66C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146E670 | 41 82 00 0C */	beq .L_8146E67C
/* 8146E674 | 38 60 00 01 */	li r3, 0x1
/* 8146E678 | 98 61 00 65 */	stb r3, 0x65(r1)
.L_8146E67C:
/* 8146E67C | 39 80 00 00 */	li r12, 0x0
/* 8146E680 | 89 61 00 57 */	lbz r11, 0x57(r1)
/* 8146E684 | 88 E1 00 65 */	lbz r7, 0x65(r1)
/* 8146E688 | 7D 4B 3A 14 */	add r10, r11, r7
/* 8146E68C | 55 49 08 3C */	slwi r9, r10, 1
/* 8146E690 | 39 01 02 58 */	addi r8, r1, 0x258
/* 8146E694 | 7D 88 4B 2E */	sthx r12, r8, r9
/* 8146E698 | 88 61 00 57 */	lbz r3, 0x57(r1)
/* 8146E69C | 54 64 08 3C */	slwi r4, r3, 1
/* 8146E6A0 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8146E6A4 | 7C 63 22 14 */	add r3, r3, r4
/* 8146E6A8 | 88 81 00 65 */	lbz r4, 0x65(r1)
/* 8146E6AC | 7F C5 F3 78 */	mr r5, r30
/* 8146E6B0 | 48 00 D7 41 */	bl Zi8IsDupWordW
/* 8146E6B4 | 54 69 06 3E */	clrlwi r9, r3, 24
/* 8146E6B8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146E6BC | 40 82 02 3C */	bne .L_8146E8F8
.L_8146E6C0:
/* 8146E6C0 | 81 01 00 E4 */	lwz r8, 0xe4(r1)
/* 8146E6C4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146E6C8 | 41 82 00 AC */	beq .L_8146E774
/* 8146E6CC | 88 A1 00 4F */	lbz r5, 0x4f(r1)
/* 8146E6D0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146E6D4 | 41 82 00 A0 */	beq .L_8146E774
/* 8146E6D8 | 88 E1 00 57 */	lbz r7, 0x57(r1)
/* 8146E6DC | 90 E1 01 14 */	stw r7, 0x114(r1)
/* 8146E6E0 | 48 00 00 64 */	b .L_8146E744
.L_8146E6E4:
/* 8146E6E4 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146E6E8 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146E6EC | 38 81 02 58 */	addi r4, r1, 0x258
/* 8146E6F0 | 7C 64 2A 2E */	lhzx r3, r4, r5
/* 8146E6F4 | 7F C4 F3 78 */	mr r4, r30
/* 8146E6F8 | 48 01 0C 9D */	bl Zi8Uni2Ord
/* 8146E6FC | 7C 6C 1B 78 */	mr r12, r3
/* 8146E700 | B1 81 00 84 */	sth r12, 0x84(r1)
/* 8146E704 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 8146E708 | 28 04 FF FF */	cmplwi r4, 0xffff
/* 8146E70C | 41 82 00 50 */	beq .L_8146E75C
/* 8146E710 | 81 61 00 E4 */	lwz r11, 0xe4(r1)
/* 8146E714 | A1 41 00 84 */	lhz r10, 0x84(r1)
/* 8146E718 | 7C 6B 52 14 */	add r3, r11, r10
/* 8146E71C | 90 61 00 C4 */	stw r3, 0xc4(r1)
/* 8146E720 | 80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 8146E724 | 89 24 00 00 */	lbz r9, 0x0(r4)
/* 8146E728 | 88 A1 00 6D */	lbz r5, 0x6d(r1)
/* 8146E72C | 7D 27 28 38 */	and r7, r9, r5
/* 8146E730 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146E734 | 41 82 00 28 */	beq .L_8146E75C
/* 8146E738 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146E73C | 38 C8 00 01 */	addi r6, r8, 0x1
/* 8146E740 | 90 C1 01 14 */	stw r6, 0x114(r1)
.L_8146E744:
/* 8146E744 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146E748 | 54 87 08 3C */	slwi r7, r4, 1
/* 8146E74C | 38 61 02 58 */	addi r3, r1, 0x258
/* 8146E750 | 7C A3 3A 2E */	lhzx r5, r3, r7
/* 8146E754 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146E758 | 40 82 FF 8C */	bne .L_8146E6E4
.L_8146E75C:
/* 8146E75C | 83 61 01 14 */	lwz r27, 0x114(r1)
/* 8146E760 | 57 64 08 3C */	slwi r4, r27, 1
/* 8146E764 | 38 C1 02 58 */	addi r6, r1, 0x258
/* 8146E768 | 7C 66 22 2E */	lhzx r3, r6, r4
/* 8146E76C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146E770 | 40 82 01 88 */	bne .L_8146E8F8
.L_8146E774:
/* 8146E774 | A1 01 00 72 */	lhz r8, 0x72(r1)
/* 8146E778 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146E77C | 41 82 00 14 */	beq .L_8146E790
/* 8146E780 | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 8146E784 | 38 85 FF FF */	subi r4, r5, 0x1
/* 8146E788 | B0 81 00 72 */	sth r4, 0x72(r1)
/* 8146E78C | 48 00 01 6C */	b .L_8146E8F8
.L_8146E790:
/* 8146E790 | A0 E1 01 58 */	lhz r7, 0x158(r1)
/* 8146E794 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146E798 | 41 82 00 30 */	beq .L_8146E7C8
/* 8146E79C | 38 61 02 58 */	addi r3, r1, 0x258
/* 8146E7A0 | 38 81 01 58 */	addi r4, r1, 0x158
/* 8146E7A4 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 8146E7A8 | 88 DF 00 0C */	lbz r6, 0xc(r31)
/* 8146E7AC | 88 E1 00 57 */	lbz r7, 0x57(r1)
/* 8146E7B0 | 54 E7 04 3E */	clrlwi r7, r7, 16
/* 8146E7B4 | 7F C8 F3 78 */	mr r8, r30
/* 8146E7B8 | 4B FF C5 75 */	bl ZiMatchZHSpelling
/* 8146E7BC | 7C 66 1B 78 */	mr r6, r3
/* 8146E7C0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146E7C4 | 41 82 01 34 */	beq .L_8146E8F8
.L_8146E7C8:
/* 8146E7C8 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8146E7CC | 38 A3 00 01 */	addi r5, r3, 0x1
/* 8146E7D0 | 90 A1 00 CC */	stw r5, 0xcc(r1)
/* 8146E7D4 | 8B 81 00 58 */	lbz r28, 0x58(r1)
/* 8146E7D8 | 28 1C 00 05 */	cmplwi r28, 0x5
/* 8146E7DC | 40 82 00 18 */	bne .L_8146E7F4
/* 8146E7E0 | 81 81 00 CC */	lwz r12, 0xcc(r1)
/* 8146E7E4 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8146E7E8 | 7C 0C 20 00 */	cmpw r12, r4
/* 8146E7EC | 40 80 5F 5C */	bge .L_81474748
/* 8146E7F0 | 48 00 01 08 */	b .L_8146E8F8
.L_8146E7F4:
/* 8146E7F4 | 89 61 00 5D */	lbz r11, 0x5d(r1)
/* 8146E7F8 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 8146E7FC | 41 82 00 B0 */	beq .L_8146E8AC
/* 8146E800 | 89 41 00 67 */	lbz r10, 0x67(r1)
/* 8146E804 | 39 2A 00 01 */	addi r9, r10, 0x1
/* 8146E808 | 99 21 00 67 */	stb r9, 0x67(r1)
/* 8146E80C | 88 61 00 57 */	lbz r3, 0x57(r1)
/* 8146E810 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 8146E814 | 48 00 00 3C */	b .L_8146E850
.L_8146E818:
/* 8146E818 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146E81C | 55 04 08 3C */	slwi r4, r8, 1
/* 8146E820 | 38 A1 02 58 */	addi r5, r1, 0x258
/* 8146E824 | 7C E5 22 2E */	lhzx r7, r5, r4
/* 8146E828 | 80 C1 00 BC */	lwz r6, 0xbc(r1)
/* 8146E82C | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 8146E830 | 7C 85 23 78 */	mr r5, r4
/* 8146E834 | 54 A8 08 3C */	slwi r8, r5, 1
/* 8146E838 | 7C E6 43 2E */	sthx r7, r6, r8
/* 8146E83C | 38 64 00 01 */	addi r3, r4, 0x1
/* 8146E840 | 90 61 01 04 */	stw r3, 0x104(r1)
/* 8146E844 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146E848 | 38 64 00 01 */	addi r3, r4, 0x1
/* 8146E84C | 90 61 01 14 */	stw r3, 0x114(r1)
.L_8146E850:
/* 8146E850 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146E854 | 55 24 08 3C */	slwi r4, r9, 1
/* 8146E858 | 38 C1 02 58 */	addi r6, r1, 0x258
/* 8146E85C | 7C A6 22 2E */	lhzx r5, r6, r4
/* 8146E860 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146E864 | 40 82 FF B4 */	bne .L_8146E818
/* 8146E868 | 38 E0 00 20 */	li r7, 0x20
/* 8146E86C | 80 81 00 BC */	lwz r4, 0xbc(r1)
/* 8146E870 | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 8146E874 | 7C 66 1B 78 */	mr r6, r3
/* 8146E878 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146E87C | 7C E4 2B 2E */	sthx r7, r4, r5
/* 8146E880 | 39 03 00 01 */	addi r8, r3, 0x1
/* 8146E884 | 91 01 01 04 */	stw r8, 0x104(r1)
/* 8146E888 | 80 E1 01 04 */	lwz r7, 0x104(r1)
/* 8146E88C | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 8146E890 | 7C 07 20 00 */	cmpw r7, r4
/* 8146E894 | 40 81 00 3C */	ble .L_8146E8D0
/* 8146E898 | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 8146E89C | 98 DF 00 21 */	stb r6, 0x21(r31)
/* 8146E8A0 | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 8146E8A4 | 98 BF 00 20 */	stb r5, 0x20(r31)
/* 8146E8A8 | 48 00 5E A0 */	b .L_81474748
.L_8146E8AC:
/* 8146E8AC | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146E8B0 | 81 21 00 BC */	lwz r9, 0xbc(r1)
/* 8146E8B4 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 8146E8B8 | 7D 07 43 78 */	mr r7, r8
/* 8146E8BC | 54 E6 06 3E */	clrlwi r6, r7, 24
/* 8146E8C0 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146E8C4 | 7C 69 2B 2E */	sthx r3, r9, r5
/* 8146E8C8 | 38 88 00 01 */	addi r4, r8, 0x1
/* 8146E8CC | 98 81 00 67 */	stb r4, 0x67(r1)
.L_8146E8D0:
/* 8146E8D0 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146E8D4 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8146E8D8 | 89 5F 00 1C */	lbz r10, 0x1c(r31)
/* 8146E8DC | 7C 03 50 40 */	cmplw r3, r10
/* 8146E8E0 | 41 80 00 18 */	blt .L_8146E8F8
/* 8146E8E4 | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 8146E8E8 | 99 3F 00 21 */	stb r9, 0x21(r31)
/* 8146E8EC | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 8146E8F0 | 98 DF 00 20 */	stb r6, 0x20(r31)
/* 8146E8F4 | 48 00 5E 54 */	b .L_81474748
.L_8146E8F8:
/* 8146E8F8 | 88 A1 00 6F */	lbz r5, 0x6f(r1)
/* 8146E8FC | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8146E900 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 8146E904 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8146E908 | 88 81 00 57 */	lbz r4, 0x57(r1)
/* 8146E90C | 38 A0 00 01 */	li r5, 0x1
/* 8146E910 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 8146E914 | 38 C1 02 58 */	addi r6, r1, 0x258
/* 8146E918 | 38 E0 00 20 */	li r7, 0x20
/* 8146E91C | 54 E7 04 3E */	clrlwi r7, r7, 16
/* 8146E920 | 39 01 01 58 */	addi r8, r1, 0x158
/* 8146E924 | 39 20 00 40 */	li r9, 0x40
/* 8146E928 | 55 29 04 3E */	clrlwi r9, r9, 16
/* 8146E92C | 39 40 00 00 */	li r10, 0x0
/* 8146E930 | 55 4A 06 3E */	clrlwi r10, r10, 24
/* 8146E934 | 48 01 0D F9 */	bl Zi8MatchPUDdata_ZHS
/* 8146E938 | 7C 64 1B 78 */	mr r4, r3
/* 8146E93C | 54 88 06 3E */	clrlwi r8, r4, 24
/* 8146E940 | 91 01 01 14 */	stw r8, 0x114(r1)
/* 8146E944 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146E948 | 40 82 F2 38 */	bne .L_8146DB80
.L_8146E94C:
/* 8146E94C | 88 E1 00 4F */	lbz r7, 0x4f(r1)
/* 8146E950 | 28 07 00 01 */	cmplwi r7, 0x1
/* 8146E954 | 40 82 00 18 */	bne .L_8146E96C
/* 8146E958 | 88 C1 00 50 */	lbz r6, 0x50(r1)
/* 8146E95C | 98 DE 03 0C */	stb r6, 0x30c(r30)
/* 8146E960 | 38 A0 00 00 */	li r5, 0x0
/* 8146E964 | 98 A1 00 4F */	stb r5, 0x4f(r1)
/* 8146E968 | 4B FF F1 40 */	b .L_8146DAA8
.L_8146E96C:
/* 8146E96C | 88 61 00 4F */	lbz r3, 0x4f(r1)
/* 8146E970 | 28 03 00 02 */	cmplwi r3, 0x2
/* 8146E974 | 40 82 00 18 */	bne .L_8146E98C
/* 8146E978 | 88 81 00 50 */	lbz r4, 0x50(r1)
/* 8146E97C | 98 9E 03 0C */	stb r4, 0x30c(r30)
/* 8146E980 | 39 60 00 03 */	li r11, 0x3
/* 8146E984 | 99 61 00 4F */	stb r11, 0x4f(r1)
/* 8146E988 | 4B FF F1 20 */	b .L_8146DAA8
.L_8146E98C:
/* 8146E98C | 88 61 00 4F */	lbz r3, 0x4f(r1)
/* 8146E990 | 28 03 00 03 */	cmplwi r3, 0x3
/* 8146E994 | 41 82 0E 88 */	beq .L_8146F81C
/* 8146E998 | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 8146E99C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146E9A0 | 41 82 00 10 */	beq .L_8146E9B0
/* 8146E9A4 | 89 41 00 58 */	lbz r10, 0x58(r1)
/* 8146E9A8 | 28 0A 00 05 */	cmplwi r10, 0x5
/* 8146E9AC | 40 82 0D D8 */	bne .L_8146F784
.L_8146E9B0:
/* 8146E9B0 | A0 C1 00 8A */	lhz r6, 0x8a(r1)
/* 8146E9B4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146E9B8 | 40 82 0D CC */	bne .L_8146F784
/* 8146E9BC | 88 BF 00 14 */	lbz r5, 0x14(r31)
/* 8146E9C0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146E9C4 | 41 82 0D C0 */	beq .L_8146F784
/* 8146E9C8 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146E9CC | 28 04 00 05 */	cmplwi r4, 0x5
/* 8146E9D0 | 41 82 0D B4 */	beq .L_8146F784
/* 8146E9D4 | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8146E9D8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146E9DC | 41 82 00 20 */	beq .L_8146E9FC
/* 8146E9E0 | 81 01 00 C0 */	lwz r8, 0xc0(r1)
/* 8146E9E4 | A0 68 00 00 */	lhz r3, 0x0(r8)
/* 8146E9E8 | 7F C4 F3 78 */	mr r4, r30
/* 8146E9EC | 48 00 E3 61 */	bl Zi8IsComponent
/* 8146E9F0 | 54 66 06 3E */	clrlwi r6, r3, 24
/* 8146E9F4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146E9F8 | 40 82 0D 8C */	bne .L_8146F784
.L_8146E9FC:
/* 8146E9FC | 88 81 00 59 */	lbz r4, 0x59(r1)
/* 8146EA00 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146EA04 | 41 82 00 18 */	beq .L_8146EA1C
/* 8146EA08 | 38 A0 00 04 */	li r5, 0x4
/* 8146EA0C | 98 A1 00 59 */	stb r5, 0x59(r1)
/* 8146EA10 | 48 00 5F 68 */	b .L_81474978
.L_8146EA14:
/* 8146EA14 | 38 E0 00 01 */	li r7, 0x1
/* 8146EA18 | 98 E1 00 59 */	stb r7, 0x59(r1)
.L_8146EA1C:
/* 8146EA1C | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8146EA20 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 8146EA24 | 7F C4 F3 78 */	mr r4, r30
/* 8146EA28 | 48 01 09 6D */	bl Zi8Uni2Ord
/* 8146EA2C | B0 61 00 A2 */	sth r3, 0xa2(r1)
/* 8146EA30 | A1 81 00 A2 */	lhz r12, 0xa2(r1)
/* 8146EA34 | 28 0C FF FF */	cmplwi r12, 0xffff
/* 8146EA38 | 41 82 0D 4C */	beq .L_8146F784
/* 8146EA3C | 80 C1 00 EC */	lwz r6, 0xec(r1)
/* 8146EA40 | A0 A1 00 A2 */	lhz r5, 0xa2(r1)
/* 8146EA44 | 1C 85 00 0C */	mulli r4, r5, 0xc
/* 8146EA48 | 7D 06 22 14 */	add r8, r6, r4
/* 8146EA4C | 91 01 01 00 */	stw r8, 0x100(r1)
/* 8146EA50 | 81 61 00 D4 */	lwz r11, 0xd4(r1)
/* 8146EA54 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146EA58 | 88 E3 00 09 */	lbz r7, 0x9(r3)
/* 8146EA5C | 54 EA 07 3E */	clrlwi r10, r7, 28
/* 8146EA60 | 55 49 80 1E */	slwi r9, r10, 16
/* 8146EA64 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 8146EA68 | 88 86 00 0B */	lbz r4, 0xb(r6)
/* 8146EA6C | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 8146EA70 | 88 65 00 0A */	lbz r3, 0xa(r5)
/* 8146EA74 | 54 68 40 2E */	slwi r8, r3, 8
/* 8146EA78 | 7C 87 43 78 */	or r7, r4, r8
/* 8146EA7C | 7D 26 3B 78 */	or r6, r9, r7
/* 8146EA80 | 7C CB 32 14 */	add r6, r11, r6
/* 8146EA84 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 8146EA88 | 88 9E 00 16 */	lbz r4, 0x16(r30)
/* 8146EA8C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146EA90 | 41 82 00 68 */	beq .L_8146EAF8
/* 8146EA94 | 81 21 00 D8 */	lwz r9, 0xd8(r1)
/* 8146EA98 | 88 A9 00 00 */	lbz r5, 0x0(r9)
/* 8146EA9C | 54 A8 07 7E */	clrlwi r8, r5, 29
/* 8146EAA0 | 2C 08 00 05 */	cmpwi r8, 0x5
/* 8146EAA4 | 41 82 00 38 */	beq .L_8146EADC
/* 8146EAA8 | 40 80 00 44 */	bge .L_8146EAEC
/* 8146EAAC | 2C 08 00 02 */	cmpwi r8, 0x2
/* 8146EAB0 | 41 82 00 0C */	beq .L_8146EABC
/* 8146EAB4 | 40 80 00 18 */	bge .L_8146EACC
/* 8146EAB8 | 48 00 00 34 */	b .L_8146EAEC
.L_8146EABC:
/* 8146EABC | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 8146EAC0 | 38 83 00 02 */	addi r4, r3, 0x2
/* 8146EAC4 | 90 81 00 D8 */	stw r4, 0xd8(r1)
/* 8146EAC8 | 48 00 00 30 */	b .L_8146EAF8
.L_8146EACC:
/* 8146EACC | 80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 8146EAD0 | 38 C7 00 03 */	addi r6, r7, 0x3
/* 8146EAD4 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 8146EAD8 | 48 00 00 20 */	b .L_8146EAF8
.L_8146EADC:
/* 8146EADC | 81 21 00 D8 */	lwz r9, 0xd8(r1)
/* 8146EAE0 | 38 69 00 04 */	addi r3, r9, 0x4
/* 8146EAE4 | 90 61 00 D8 */	stw r3, 0xd8(r1)
/* 8146EAE8 | 48 00 00 10 */	b .L_8146EAF8
.L_8146EAEC:
/* 8146EAEC | 80 A1 00 D8 */	lwz r5, 0xd8(r1)
/* 8146EAF0 | 38 85 00 01 */	addi r4, r5, 0x1
/* 8146EAF4 | 90 81 00 D8 */	stw r4, 0xd8(r1)
.L_8146EAF8:
/* 8146EAF8 | 81 41 00 D8 */	lwz r10, 0xd8(r1)
/* 8146EAFC | 88 6A 00 00 */	lbz r3, 0x0(r10)
/* 8146EB00 | 54 6C 06 30 */	rlwinm r12, r3, 0, 24, 24
/* 8146EB04 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8146EB08 | 41 82 00 30 */	beq .L_8146EB38
/* 8146EB0C | 38 E0 00 00 */	li r7, 0x0
/* 8146EB10 | 98 E1 00 6B */	stb r7, 0x6b(r1)
/* 8146EB14 | 81 01 00 D8 */	lwz r8, 0xd8(r1)
/* 8146EB18 | 80 C1 00 D8 */	lwz r6, 0xd8(r1)
/* 8146EB1C | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 8146EB20 | 54 A3 06 7E */	clrlwi r3, r5, 25
/* 8146EB24 | 7C 64 26 70 */	srawi r4, r3, 4
/* 8146EB28 | 7D 64 42 14 */	add r11, r4, r8
/* 8146EB2C | 39 2B 00 01 */	addi r9, r11, 0x1
/* 8146EB30 | 91 21 00 D8 */	stw r9, 0xd8(r1)
/* 8146EB34 | 48 00 0C 40 */	b .L_8146F774
.L_8146EB38:
/* 8146EB38 | 38 E0 00 80 */	li r7, 0x80
/* 8146EB3C | 98 E1 00 6B */	stb r7, 0x6b(r1)
/* 8146EB40 | 48 00 0C 34 */	b .L_8146F774
.L_8146EB44:
/* 8146EB44 | 81 01 00 D8 */	lwz r8, 0xd8(r1)
/* 8146EB48 | 7D 0A 43 78 */	mr r10, r8
/* 8146EB4C | 39 08 00 01 */	addi r8, r8, 0x1
/* 8146EB50 | 91 01 00 D8 */	stw r8, 0xd8(r1)
/* 8146EB54 | 88 6A 00 00 */	lbz r3, 0x0(r10)
/* 8146EB58 | 98 61 00 6B */	stb r3, 0x6b(r1)
/* 8146EB5C | 88 81 00 6B */	lbz r4, 0x6b(r1)
/* 8146EB60 | 54 86 07 3E */	clrlwi r6, r4, 28
/* 8146EB64 | 54 C9 06 3E */	clrlwi r9, r6, 24
/* 8146EB68 | 99 21 00 6A */	stb r9, 0x6a(r1)
/* 8146EB6C | 89 01 00 6B */	lbz r8, 0x6b(r1)
/* 8146EB70 | 88 A1 00 6E */	lbz r5, 0x6e(r1)
/* 8146EB74 | 7D 04 28 38 */	and r4, r8, r5
/* 8146EB78 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146EB7C | 40 82 0B EC */	bne .L_8146F768
/* 8146EB80 | 48 00 00 4C */	b .L_8146EBCC
.L_8146EB84:
/* 8146EB84 | 80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 8146EB88 | 38 67 00 01 */	addi r3, r7, 0x1
/* 8146EB8C | 90 61 00 D8 */	stw r3, 0xd8(r1)
/* 8146EB90 | 48 00 00 10 */	b .L_8146EBA0
.L_8146EB94:
/* 8146EB94 | 80 C1 00 D8 */	lwz r6, 0xd8(r1)
/* 8146EB98 | 38 86 00 02 */	addi r4, r6, 0x2
/* 8146EB9C | 90 81 00 D8 */	stw r4, 0xd8(r1)
.L_8146EBA0:
/* 8146EBA0 | 81 41 00 D8 */	lwz r10, 0xd8(r1)
/* 8146EBA4 | 88 AA 00 00 */	lbz r5, 0x0(r10)
/* 8146EBA8 | 54 A4 06 30 */	rlwinm r4, r5, 0, 24, 24
/* 8146EBAC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146EBB0 | 41 82 FF E4 */	beq .L_8146EB94
/* 8146EBB4 | 81 21 00 D8 */	lwz r9, 0xd8(r1)
/* 8146EBB8 | 38 E9 00 01 */	addi r7, r9, 0x1
/* 8146EBBC | 90 E1 00 D8 */	stw r7, 0xd8(r1)
/* 8146EBC0 | 88 C1 00 6A */	lbz r6, 0x6a(r1)
/* 8146EBC4 | 38 66 FF FF */	subi r3, r6, 0x1
/* 8146EBC8 | 98 61 00 6A */	stb r3, 0x6a(r1)
.L_8146EBCC:
/* 8146EBCC | 89 01 00 6A */	lbz r8, 0x6a(r1)
/* 8146EBD0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146EBD4 | 40 82 FF B0 */	bne .L_8146EB84
/* 8146EBD8 | 48 00 0B 90 */	b .L_8146F768
.L_8146EBDC:
/* 8146EBDC | 88 BF 00 14 */	lbz r5, 0x14(r31)
/* 8146EBE0 | 38 65 FF FF */	subi r3, r5, 0x1
/* 8146EBE4 | 54 67 06 3E */	clrlwi r7, r3, 24
/* 8146EBE8 | 98 E1 00 69 */	stb r7, 0x69(r1)
/* 8146EBEC | 80 DF 00 10 */	lwz r6, 0x10(r31)
/* 8146EBF0 | 90 C1 01 10 */	stw r6, 0x110(r1)
/* 8146EBF4 | 48 00 00 7C */	b .L_8146EC70
.L_8146EBF8:
/* 8146EBF8 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 8146EBFC | 88 A4 00 01 */	lbz r5, 0x1(r4)
/* 8146EC00 | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 8146EC04 | 54 83 40 2E */	slwi r3, r4, 8
/* 8146EC08 | 80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 8146EC0C | 89 67 00 00 */	lbz r11, 0x0(r7)
/* 8146EC10 | 7C 6A 5B 78 */	or r10, r3, r11
/* 8146EC14 | 55 48 04 3E */	clrlwi r8, r10, 16
/* 8146EC18 | B1 01 00 98 */	sth r8, 0x98(r1)
/* 8146EC1C | 81 21 00 D8 */	lwz r9, 0xd8(r1)
/* 8146EC20 | 39 09 00 02 */	addi r8, r9, 0x2
/* 8146EC24 | 91 01 00 D8 */	stw r8, 0xd8(r1)
/* 8146EC28 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 8146EC2C | 54 E6 04 20 */	rlwinm r6, r7, 0, 16, 16
/* 8146EC30 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146EC34 | 40 82 00 48 */	bne .L_8146EC7C
/* 8146EC38 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 8146EC3C | 7F C4 F3 78 */	mr r4, r30
/* 8146EC40 | 48 01 07 89 */	bl Zi8Ord2Uni
/* 8146EC44 | 7C 65 1B 78 */	mr r5, r3
/* 8146EC48 | 54 A9 04 3E */	clrlwi r9, r5, 16
/* 8146EC4C | 80 81 01 10 */	lwz r4, 0x110(r1)
/* 8146EC50 | 39 44 00 02 */	addi r10, r4, 0x2
/* 8146EC54 | 91 41 01 10 */	stw r10, 0x110(r1)
/* 8146EC58 | A0 6A 00 00 */	lhz r3, 0x0(r10)
/* 8146EC5C | 7C 03 48 40 */	cmplw r3, r9
/* 8146EC60 | 40 82 00 1C */	bne .L_8146EC7C
/* 8146EC64 | 89 01 00 69 */	lbz r8, 0x69(r1)
/* 8146EC68 | 38 68 FF FF */	subi r3, r8, 0x1
/* 8146EC6C | 98 61 00 69 */	stb r3, 0x69(r1)
.L_8146EC70:
/* 8146EC70 | 88 A1 00 69 */	lbz r5, 0x69(r1)
/* 8146EC74 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146EC78 | 40 82 FF 80 */	bne .L_8146EBF8
.L_8146EC7C:
/* 8146EC7C | 88 E1 00 69 */	lbz r7, 0x69(r1)
/* 8146EC80 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146EC84 | 40 82 0A 8C */	bne .L_8146F710
/* 8146EC88 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 8146EC8C | 88 C4 00 01 */	lbz r6, 0x1(r4)
/* 8146EC90 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 8146EC94 | 54 A4 40 2E */	slwi r4, r5, 8
/* 8146EC98 | 81 21 00 D8 */	lwz r9, 0xd8(r1)
/* 8146EC9C | 89 09 00 00 */	lbz r8, 0x0(r9)
/* 8146ECA0 | 7C 84 43 78 */	or r4, r4, r8
/* 8146ECA4 | 54 87 04 3E */	clrlwi r7, r4, 16
/* 8146ECA8 | B0 E1 00 98 */	sth r7, 0x98(r1)
/* 8146ECAC | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 8146ECB0 | 90 61 00 D0 */	stw r3, 0xd0(r1)
/* 8146ECB4 | 80 C1 00 D8 */	lwz r6, 0xd8(r1)
/* 8146ECB8 | 38 A6 00 02 */	addi r5, r6, 0x2
/* 8146ECBC | 90 A1 00 D8 */	stw r5, 0xd8(r1)
/* 8146ECC0 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 8146ECC4 | 54 88 04 7E */	clrlwi r8, r4, 17
/* 8146ECC8 | 55 03 04 3E */	clrlwi r3, r8, 16
/* 8146ECCC | B0 61 00 94 */	sth r3, 0x94(r1)
/* 8146ECD0 | 38 E0 00 01 */	li r7, 0x1
/* 8146ECD4 | 98 E1 00 63 */	stb r7, 0x63(r1)
/* 8146ECD8 | 88 DF 00 0C */	lbz r6, 0xc(r31)
/* 8146ECDC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146ECE0 | 41 82 06 5C */	beq .L_8146F33C
/* 8146ECE4 | 38 A0 00 00 */	li r5, 0x0
/* 8146ECE8 | 98 A1 00 63 */	stb r5, 0x63(r1)
/* 8146ECEC | 80 81 00 EC */	lwz r4, 0xec(r1)
/* 8146ECF0 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146ECF4 | 1D 23 00 0C */	mulli r9, r3, 0xc
/* 8146ECF8 | 7D 04 4A 14 */	add r8, r4, r9
/* 8146ECFC | 91 01 01 00 */	stw r8, 0x100(r1)
/* 8146ED00 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 8146ED04 | 88 E8 00 06 */	lbz r7, 0x6(r8)
/* 8146ED08 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 8146ED0C | 54 C5 40 2E */	slwi r5, r6, 8
/* 8146ED10 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146ED14 | 88 64 00 07 */	lbz r3, 0x7(r4)
/* 8146ED18 | 7D 85 1A 14 */	add r12, r5, r3
/* 8146ED1C | 55 8B 04 3E */	clrlwi r11, r12, 16
/* 8146ED20 | B1 61 00 90 */	sth r11, 0x90(r1)
/* 8146ED24 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146ED28 | 2C 07 00 07 */	cmpwi r7, 0x7
/* 8146ED2C | 40 80 00 1C */	bge .L_8146ED48
/* 8146ED30 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146ED34 | 41 82 02 38 */	beq .L_8146EF6C
/* 8146ED38 | 41 80 06 18 */	blt .L_8146F350
/* 8146ED3C | 2C 07 00 03 */	cmpwi r7, 0x3
/* 8146ED40 | 40 80 06 10 */	bge .L_8146F350
/* 8146ED44 | 48 00 04 78 */	b .L_8146F1BC
.L_8146ED48:
/* 8146ED48 | 2C 07 00 09 */	cmpwi r7, 0x9
/* 8146ED4C | 41 82 00 E4 */	beq .L_8146EE30
/* 8146ED50 | 40 80 06 00 */	bge .L_8146F350
/* 8146ED54 | 48 00 00 04 */	b .L_8146ED58
.L_8146ED58:
/* 8146ED58 | 81 41 00 D4 */	lwz r10, 0xd4(r1)
/* 8146ED5C | 81 21 01 00 */	lwz r9, 0x100(r1)
/* 8146ED60 | 89 09 00 09 */	lbz r8, 0x9(r9)
/* 8146ED64 | 55 03 07 3E */	clrlwi r3, r8, 28
/* 8146ED68 | 54 64 80 1E */	slwi r4, r3, 16
/* 8146ED6C | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146ED70 | 89 23 00 0B */	lbz r9, 0xb(r3)
/* 8146ED74 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 8146ED78 | 88 A8 00 0A */	lbz r5, 0xa(r8)
/* 8146ED7C | 54 A7 40 2E */	slwi r7, r5, 8
/* 8146ED80 | 7D 26 3B 78 */	or r6, r9, r7
/* 8146ED84 | 7C 85 33 78 */	or r5, r4, r6
/* 8146ED88 | 7C 8A 2A 14 */	add r4, r10, r5
/* 8146ED8C | 90 81 00 B8 */	stw r4, 0xb8(r1)
/* 8146ED90 | 81 81 00 B8 */	lwz r12, 0xb8(r1)
/* 8146ED94 | 88 8C 00 00 */	lbz r4, 0x0(r12)
/* 8146ED98 | 54 8B 07 7E */	clrlwi r11, r4, 29
/* 8146ED9C | 89 41 02 FC */	lbz r10, 0x2fc(r1)
/* 8146EDA0 | 7C 0B 50 00 */	cmpw r11, r10
/* 8146EDA4 | 41 80 00 80 */	blt .L_8146EE24
/* 8146EDA8 | 88 61 02 F5 */	lbz r3, 0x2f5(r1)
/* 8146EDAC | 88 81 02 F1 */	lbz r4, 0x2f1(r1)
/* 8146EDB0 | 81 21 00 B8 */	lwz r9, 0xb8(r1)
/* 8146EDB4 | 88 A9 00 00 */	lbz r5, 0x0(r9)
/* 8146EDB8 | 7C 87 28 38 */	and r7, r4, r5
/* 8146EDBC | 7C 03 38 00 */	cmpw r3, r7
/* 8146EDC0 | 40 82 00 64 */	bne .L_8146EE24
/* 8146EDC4 | 89 01 02 F6 */	lbz r8, 0x2f6(r1)
/* 8146EDC8 | 88 C1 02 F2 */	lbz r6, 0x2f2(r1)
/* 8146EDCC | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 8146EDD0 | 88 E4 00 01 */	lbz r7, 0x1(r4)
/* 8146EDD4 | 7C C3 38 38 */	and r3, r6, r7
/* 8146EDD8 | 7C 08 18 00 */	cmpw r8, r3
/* 8146EDDC | 40 82 00 48 */	bne .L_8146EE24
/* 8146EDE0 | 88 A1 02 F7 */	lbz r5, 0x2f7(r1)
/* 8146EDE4 | 8B 61 02 F3 */	lbz r27, 0x2f3(r1)
/* 8146EDE8 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 8146EDEC | 88 C4 00 02 */	lbz r6, 0x2(r4)
/* 8146EDF0 | 7F 63 30 38 */	and r3, r27, r6
/* 8146EDF4 | 7C 05 18 00 */	cmpw r5, r3
/* 8146EDF8 | 40 82 00 2C */	bne .L_8146EE24
/* 8146EDFC | 89 01 02 F8 */	lbz r8, 0x2f8(r1)
/* 8146EE00 | 88 A1 02 F4 */	lbz r5, 0x2f4(r1)
/* 8146EE04 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 8146EE08 | 88 E4 00 03 */	lbz r7, 0x3(r4)
/* 8146EE0C | 7C A6 38 38 */	and r6, r5, r7
/* 8146EE10 | 7C 08 30 00 */	cmpw r8, r6
/* 8146EE14 | 40 82 00 10 */	bne .L_8146EE24
/* 8146EE18 | 38 60 00 01 */	li r3, 0x1
/* 8146EE1C | 98 61 00 63 */	stb r3, 0x63(r1)
/* 8146EE20 | 48 00 05 30 */	b .L_8146F350
.L_8146EE24:
/* 8146EE24 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8146EE28 | 28 05 00 07 */	cmplwi r5, 0x7
/* 8146EE2C | 41 82 05 24 */	beq .L_8146F350
.L_8146EE30:
/* 8146EE30 | 83 81 00 D4 */	lwz r28, 0xd4(r1)
/* 8146EE34 | 81 81 01 00 */	lwz r12, 0x100(r1)
/* 8146EE38 | 88 8C 00 09 */	lbz r4, 0x9(r12)
/* 8146EE3C | 54 8B 07 3E */	clrlwi r11, r4, 28
/* 8146EE40 | 55 6A 80 1E */	slwi r10, r11, 16
/* 8146EE44 | 81 21 01 00 */	lwz r9, 0x100(r1)
/* 8146EE48 | 88 69 00 0B */	lbz r3, 0xb(r9)
/* 8146EE4C | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 8146EE50 | 88 88 00 0A */	lbz r4, 0xa(r8)
/* 8146EE54 | 54 85 40 2E */	slwi r5, r4, 8
/* 8146EE58 | 7C 67 2B 78 */	or r7, r3, r5
/* 8146EE5C | 7D 46 3B 78 */	or r6, r10, r7
/* 8146EE60 | 7C 9C 32 14 */	add r4, r28, r6
/* 8146EE64 | 90 81 00 B8 */	stw r4, 0xb8(r1)
/* 8146EE68 | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 8146EE6C | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 8146EE70 | 54 68 07 7E */	clrlwi r8, r3, 29
/* 8146EE74 | 91 01 01 14 */	stw r8, 0x114(r1)
/* 8146EE78 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 8146EE7C | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 8146EE80 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146EE84 | 55 24 10 3A */	slwi r4, r9, 2
/* 8146EE88 | 38 C1 01 40 */	addi r6, r1, 0x140
/* 8146EE8C | 7C A6 20 AE */	lbzx r5, r6, r4
/* 8146EE90 | 7C 67 28 38 */	and r7, r3, r5
/* 8146EE94 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146EE98 | 54 83 10 3A */	slwi r3, r4, 2
/* 8146EE9C | 38 C1 01 28 */	addi r6, r1, 0x128
/* 8146EEA0 | 7D 06 18 AE */	lbzx r8, r6, r3
/* 8146EEA4 | 7C 07 40 00 */	cmpw r7, r8
/* 8146EEA8 | 40 82 04 A8 */	bne .L_8146F350
/* 8146EEAC | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 8146EEB0 | 88 E5 00 01 */	lbz r7, 0x1(r5)
/* 8146EEB4 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146EEB8 | 54 86 10 3A */	slwi r6, r4, 2
/* 8146EEBC | 38 A1 01 40 */	addi r5, r1, 0x140
/* 8146EEC0 | 7C 65 32 14 */	add r3, r5, r6
/* 8146EEC4 | 89 23 00 01 */	lbz r9, 0x1(r3)
/* 8146EEC8 | 7C E8 48 38 */	and r8, r7, r9
/* 8146EECC | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146EED0 | 54 E4 10 3A */	slwi r4, r7, 2
/* 8146EED4 | 38 C1 01 28 */	addi r6, r1, 0x128
/* 8146EED8 | 7C A6 22 14 */	add r5, r6, r4
/* 8146EEDC | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 8146EEE0 | 7C 08 20 00 */	cmpw r8, r4
/* 8146EEE4 | 40 82 04 6C */	bne .L_8146F350
/* 8146EEE8 | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 8146EEEC | 89 43 00 02 */	lbz r10, 0x2(r3)
/* 8146EEF0 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146EEF4 | 55 26 10 3A */	slwi r6, r9, 2
/* 8146EEF8 | 38 A1 01 40 */	addi r5, r1, 0x140
/* 8146EEFC | 7C 85 32 14 */	add r4, r5, r6
/* 8146EF00 | 89 04 00 02 */	lbz r8, 0x2(r4)
/* 8146EF04 | 7D 47 40 38 */	and r7, r10, r8
/* 8146EF08 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 8146EF0C | 54 C5 10 3A */	slwi r5, r6, 2
/* 8146EF10 | 38 61 01 28 */	addi r3, r1, 0x128
/* 8146EF14 | 7C 83 2A 14 */	add r4, r3, r5
/* 8146EF18 | 89 64 00 02 */	lbz r11, 0x2(r4)
/* 8146EF1C | 7C 07 58 00 */	cmpw r7, r11
/* 8146EF20 | 40 82 04 30 */	bne .L_8146F350
/* 8146EF24 | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 8146EF28 | 88 E3 00 03 */	lbz r7, 0x3(r3)
/* 8146EF2C | 81 41 01 14 */	lwz r10, 0x114(r1)
/* 8146EF30 | 55 46 10 3A */	slwi r6, r10, 2
/* 8146EF34 | 38 A1 01 40 */	addi r5, r1, 0x140
/* 8146EF38 | 7C 85 32 14 */	add r4, r5, r6
/* 8146EF3C | 89 24 00 03 */	lbz r9, 0x3(r4)
/* 8146EF40 | 7C E8 48 38 */	and r8, r7, r9
/* 8146EF44 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146EF48 | 54 66 10 3A */	slwi r6, r3, 2
/* 8146EF4C | 38 81 01 28 */	addi r4, r1, 0x128
/* 8146EF50 | 7C A4 32 14 */	add r5, r4, r6
/* 8146EF54 | 88 E5 00 03 */	lbz r7, 0x3(r5)
/* 8146EF58 | 7C 08 38 00 */	cmpw r8, r7
/* 8146EF5C | 40 82 03 F4 */	bne .L_8146F350
/* 8146EF60 | 38 80 00 01 */	li r4, 0x1
/* 8146EF64 | 98 81 00 63 */	stb r4, 0x63(r1)
/* 8146EF68 | 48 00 03 E8 */	b .L_8146F350
.L_8146EF6C:
/* 8146EF6C | 88 61 02 E5 */	lbz r3, 0x2e5(r1)
/* 8146EF70 | 81 81 01 00 */	lwz r12, 0x100(r1)
/* 8146EF74 | 88 CC 00 00 */	lbz r6, 0x0(r12)
/* 8146EF78 | 88 A1 02 D9 */	lbz r5, 0x2d9(r1)
/* 8146EF7C | 7C C4 28 38 */	and r4, r6, r5
/* 8146EF80 | 7C 03 20 00 */	cmpw r3, r4
/* 8146EF84 | 40 82 00 94 */	bne .L_8146F018
/* 8146EF88 | 89 01 02 D8 */	lbz r8, 0x2d8(r1)
/* 8146EF8C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146EF90 | 40 82 00 58 */	bne .L_8146EFE8
/* 8146EF94 | 89 61 02 E8 */	lbz r11, 0x2e8(r1)
/* 8146EF98 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146EF9C | 88 E3 00 03 */	lbz r7, 0x3(r3)
/* 8146EFA0 | 89 41 02 DC */	lbz r10, 0x2dc(r1)
/* 8146EFA4 | 7C E9 50 38 */	and r9, r7, r10
/* 8146EFA8 | 7C 0B 48 00 */	cmpw r11, r9
/* 8146EFAC | 40 82 00 6C */	bne .L_8146F018
/* 8146EFB0 | 88 C1 02 E7 */	lbz r6, 0x2e7(r1)
/* 8146EFB4 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146EFB8 | 88 A4 00 02 */	lbz r5, 0x2(r4)
/* 8146EFBC | 88 61 02 DB */	lbz r3, 0x2db(r1)
/* 8146EFC0 | 7C A8 18 38 */	and r8, r5, r3
/* 8146EFC4 | 7C 06 40 00 */	cmpw r6, r8
/* 8146EFC8 | 40 82 00 50 */	bne .L_8146F018
/* 8146EFCC | 88 E1 02 E6 */	lbz r7, 0x2e6(r1)
/* 8146EFD0 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 8146EFD4 | 88 C6 00 01 */	lbz r6, 0x1(r6)
/* 8146EFD8 | 88 81 02 DA */	lbz r4, 0x2da(r1)
/* 8146EFDC | 7C C9 20 38 */	and r9, r6, r4
/* 8146EFE0 | 7C 07 48 00 */	cmpw r7, r9
/* 8146EFE4 | 40 82 00 34 */	bne .L_8146F018
.L_8146EFE8:
/* 8146EFE8 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146EFEC | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 8146EFF0 | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 8146EFF4 | 38 C0 00 00 */	li r6, 0x0
/* 8146EFF8 | 7F C7 F3 78 */	mr r7, r30
/* 8146EFFC | 48 00 E1 4D */	bl Zi8SecMatchChar
/* 8146F000 | 7C 65 1B 78 */	mr r5, r3
/* 8146F004 | 54 A8 06 3E */	clrlwi r8, r5, 24
/* 8146F008 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146F00C | 41 82 00 0C */	beq .L_8146F018
/* 8146F010 | 38 60 00 01 */	li r3, 0x1
/* 8146F014 | 98 61 00 63 */	stb r3, 0x63(r1)
.L_8146F018:
/* 8146F018 | 88 81 00 63 */	lbz r4, 0x63(r1)
/* 8146F01C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F020 | 41 82 03 30 */	beq .L_8146F350
/* 8146F024 | 88 E1 03 44 */	lbz r7, 0x344(r1)
/* 8146F028 | 28 07 00 02 */	cmplwi r7, 0x2
/* 8146F02C | 41 80 03 24 */	blt .L_8146F350
/* 8146F030 | 38 C0 00 00 */	li r6, 0x0
/* 8146F034 | B0 C1 00 8E */	sth r6, 0x8e(r1)
/* 8146F038 | A1 21 00 94 */	lhz r9, 0x94(r1)
/* 8146F03C | B1 21 00 92 */	sth r9, 0x92(r1)
/* 8146F040 | 48 00 01 6C */	b .L_8146F1AC
.L_8146F044:
/* 8146F044 | 80 61 00 EC */	lwz r3, 0xec(r1)
/* 8146F048 | A0 A1 00 92 */	lhz r5, 0x92(r1)
/* 8146F04C | 1C 85 00 0C */	mulli r4, r5, 0xc
/* 8146F050 | 7D 43 22 14 */	add r10, r3, r4
/* 8146F054 | 91 41 01 00 */	stw r10, 0x100(r1)
/* 8146F058 | A0 61 00 8E */	lhz r3, 0x8e(r1)
/* 8146F05C | 1D 83 00 0C */	mulli r12, r3, 0xc
/* 8146F060 | 38 E1 04 05 */	addi r7, r1, 0x405
/* 8146F064 | 7D 07 60 AE */	lbzx r8, r7, r12
/* 8146F068 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 8146F06C | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 8146F070 | A0 61 00 8E */	lhz r3, 0x8e(r1)
/* 8146F074 | 1C 83 00 0C */	mulli r4, r3, 0xc
/* 8146F078 | 39 61 03 45 */	addi r11, r1, 0x345
/* 8146F07C | 7D 2B 20 AE */	lbzx r9, r11, r4
/* 8146F080 | 7C A7 48 38 */	and r7, r5, r9
/* 8146F084 | 7C 08 38 00 */	cmpw r8, r7
/* 8146F088 | 40 82 00 A0 */	bne .L_8146F128
/* 8146F08C | A1 01 00 8E */	lhz r8, 0x8e(r1)
/* 8146F090 | 1D 48 00 0C */	mulli r10, r8, 0xc
/* 8146F094 | 39 01 04 06 */	addi r8, r1, 0x406
/* 8146F098 | 7C 68 50 AE */	lbzx r3, r8, r10
/* 8146F09C | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146F0A0 | 88 C4 00 01 */	lbz r6, 0x1(r4)
/* 8146F0A4 | A1 21 00 8E */	lhz r9, 0x8e(r1)
/* 8146F0A8 | 1D 09 00 0C */	mulli r8, r9, 0xc
/* 8146F0AC | 38 A1 03 46 */	addi r5, r1, 0x346
/* 8146F0B0 | 7C 85 40 AE */	lbzx r4, r5, r8
/* 8146F0B4 | 7C C7 20 38 */	and r7, r6, r4
/* 8146F0B8 | 7C 03 38 00 */	cmpw r3, r7
/* 8146F0BC | 40 82 00 6C */	bne .L_8146F128
/* 8146F0C0 | A0 61 00 8E */	lhz r3, 0x8e(r1)
/* 8146F0C4 | 1C C3 00 0C */	mulli r6, r3, 0xc
/* 8146F0C8 | 38 81 04 07 */	addi r4, r1, 0x407
/* 8146F0CC | 7D 44 30 AE */	lbzx r10, r4, r6
/* 8146F0D0 | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 8146F0D4 | 88 85 00 02 */	lbz r4, 0x2(r5)
/* 8146F0D8 | A1 21 00 8E */	lhz r9, 0x8e(r1)
/* 8146F0DC | 1C E9 00 0C */	mulli r7, r9, 0xc
/* 8146F0E0 | 38 C1 03 47 */	addi r6, r1, 0x347
/* 8146F0E4 | 7C 66 38 AE */	lbzx r3, r6, r7
/* 8146F0E8 | 7C 88 18 38 */	and r8, r4, r3
/* 8146F0EC | 7C 0A 40 00 */	cmpw r10, r8
/* 8146F0F0 | 40 82 00 38 */	bne .L_8146F128
/* 8146F0F4 | A0 A1 00 8E */	lhz r5, 0x8e(r1)
/* 8146F0F8 | 1C 65 00 0C */	mulli r3, r5, 0xc
/* 8146F0FC | 38 E1 04 08 */	addi r7, r1, 0x408
/* 8146F100 | 7C C7 18 AE */	lbzx r6, r7, r3
/* 8146F104 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146F108 | 88 A4 00 03 */	lbz r5, 0x3(r4)
/* 8146F10C | A0 81 00 8E */	lhz r4, 0x8e(r1)
/* 8146F110 | 1C 64 00 0C */	mulli r3, r4, 0xc
/* 8146F114 | 38 E1 03 48 */	addi r7, r1, 0x348
/* 8146F118 | 7D 67 18 AE */	lbzx r11, r7, r3
/* 8146F11C | 7C AA 58 38 */	and r10, r5, r11
/* 8146F120 | 7C 06 50 00 */	cmpw r6, r10
/* 8146F124 | 41 82 00 10 */	beq .L_8146F134
.L_8146F128:
/* 8146F128 | 39 00 00 00 */	li r8, 0x0
/* 8146F12C | 99 01 00 63 */	stb r8, 0x63(r1)
/* 8146F130 | 48 00 02 20 */	b .L_8146F350
.L_8146F134:
/* 8146F134 | A1 21 00 8E */	lhz r9, 0x8e(r1)
/* 8146F138 | 39 09 00 01 */	addi r8, r9, 0x1
/* 8146F13C | B1 01 00 8E */	sth r8, 0x8e(r1)
/* 8146F140 | 55 07 04 3E */	clrlwi r7, r8, 16
/* 8146F144 | 88 C1 03 44 */	lbz r6, 0x344(r1)
/* 8146F148 | 7C 07 30 00 */	cmpw r7, r6
/* 8146F14C | 40 80 02 04 */	bge .L_8146F350
/* 8146F150 | A0 A1 00 98 */	lhz r5, 0x98(r1)
/* 8146F154 | 54 A9 04 20 */	rlwinm r9, r5, 0, 16, 16
/* 8146F158 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146F15C | 41 82 00 10 */	beq .L_8146F16C
/* 8146F160 | 38 80 00 00 */	li r4, 0x0
/* 8146F164 | 98 81 00 63 */	stb r4, 0x63(r1)
/* 8146F168 | 48 00 01 E8 */	b .L_8146F350
.L_8146F16C:
/* 8146F16C | 81 41 00 D8 */	lwz r10, 0xd8(r1)
/* 8146F170 | 88 6A 00 01 */	lbz r3, 0x1(r10)
/* 8146F174 | 54 68 04 3E */	clrlwi r8, r3, 16
/* 8146F178 | 55 03 40 2E */	slwi r3, r8, 8
/* 8146F17C | 80 A1 00 D8 */	lwz r5, 0xd8(r1)
/* 8146F180 | 88 E5 00 00 */	lbz r7, 0x0(r5)
/* 8146F184 | 7C 64 3B 78 */	or r4, r3, r7
/* 8146F188 | 54 86 04 3E */	clrlwi r6, r4, 16
/* 8146F18C | B0 C1 00 98 */	sth r6, 0x98(r1)
/* 8146F190 | 80 A1 00 D8 */	lwz r5, 0xd8(r1)
/* 8146F194 | 38 85 00 02 */	addi r4, r5, 0x2
/* 8146F198 | 90 81 00 D8 */	stw r4, 0xd8(r1)
/* 8146F19C | A1 21 00 98 */	lhz r9, 0x98(r1)
/* 8146F1A0 | 55 28 04 7E */	clrlwi r8, r9, 17
/* 8146F1A4 | 55 04 04 3E */	clrlwi r4, r8, 16
/* 8146F1A8 | B0 81 00 92 */	sth r4, 0x92(r1)
.L_8146F1AC:
/* 8146F1AC | 88 E1 00 63 */	lbz r7, 0x63(r1)
/* 8146F1B0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146F1B4 | 40 82 FE 90 */	bne .L_8146F044
/* 8146F1B8 | 48 00 01 98 */	b .L_8146F350
.L_8146F1BC:
/* 8146F1BC | 38 60 00 00 */	li r3, 0x0
/* 8146F1C0 | B0 61 00 8E */	sth r3, 0x8e(r1)
/* 8146F1C4 | A0 C1 00 94 */	lhz r6, 0x94(r1)
/* 8146F1C8 | B0 C1 00 92 */	sth r6, 0x92(r1)
.L_8146F1CC:
/* 8146F1CC | 80 A1 00 EC */	lwz r5, 0xec(r1)
/* 8146F1D0 | A0 81 00 92 */	lhz r4, 0x92(r1)
/* 8146F1D4 | 1D 04 00 0C */	mulli r8, r4, 0xc
/* 8146F1D8 | 7C 65 42 14 */	add r3, r5, r8
/* 8146F1DC | 90 61 01 00 */	stw r3, 0x100(r1)
/* 8146F1E0 | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 8146F1E4 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 8146F1E8 | 48 00 FC E1 */	bl Zi8GetPCode
/* 8146F1EC | 7C 67 1B 78 */	mr r7, r3
/* 8146F1F0 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 8146F1F4 | A0 A1 00 8E */	lhz r5, 0x8e(r1)
/* 8146F1F8 | 54 A4 08 3C */	slwi r4, r5, 1
/* 8146F1FC | 38 61 02 FE */	addi r3, r1, 0x2fe
/* 8146F200 | 7D 23 22 2E */	lhzx r9, r3, r4
/* 8146F204 | 7D 28 30 38 */	and r8, r9, r6
/* 8146F208 | A0 E1 00 8E */	lhz r7, 0x8e(r1)
/* 8146F20C | 54 E6 08 3C */	slwi r6, r7, 1
/* 8146F210 | 38 A1 03 1E */	addi r5, r1, 0x31e
/* 8146F214 | 7C 85 32 2E */	lhzx r4, r5, r6
/* 8146F218 | 7C 64 40 50 */	subf r3, r4, r8
/* 8146F21C | 7C 64 00 34 */	cntlzw r4, r3
/* 8146F220 | 54 80 D9 7E */	srwi r0, r4, 5
/* 8146F224 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8146F228 | 98 61 00 63 */	stb r3, 0x63(r1)
/* 8146F22C | 89 01 00 63 */	lbz r8, 0x63(r1)
/* 8146F230 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146F234 | 40 82 00 80 */	bne .L_8146F2B4
/* 8146F238 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 8146F23C | 88 C7 00 00 */	lbz r6, 0x0(r7)
/* 8146F240 | 54 C5 06 30 */	rlwinm r5, r6, 0, 24, 24
/* 8146F244 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146F248 | 41 82 00 6C */	beq .L_8146F2B4
/* 8146F24C | 88 81 00 55 */	lbz r4, 0x55(r1)
/* 8146F250 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F254 | 40 82 00 60 */	bne .L_8146F2B4
/* 8146F258 | 88 61 00 59 */	lbz r3, 0x59(r1)
/* 8146F25C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146F260 | 40 82 00 54 */	bne .L_8146F2B4
/* 8146F264 | 80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 8146F268 | A0 81 00 76 */	lhz r4, 0x76(r1)
/* 8146F26C | 80 A1 00 F0 */	lwz r5, 0xf0(r1)
/* 8146F270 | A0 C1 00 92 */	lhz r6, 0x92(r1)
/* 8146F274 | A1 81 00 8E */	lhz r12, 0x8e(r1)
/* 8146F278 | 55 8B 08 3C */	slwi r11, r12, 1
/* 8146F27C | 38 E1 02 FE */	addi r7, r1, 0x2fe
/* 8146F280 | 7C E7 5A 2E */	lhzx r7, r7, r11
/* 8146F284 | A1 41 00 8E */	lhz r10, 0x8e(r1)
/* 8146F288 | 55 49 08 3C */	slwi r9, r10, 1
/* 8146F28C | 39 01 03 1E */	addi r8, r1, 0x31e
/* 8146F290 | 7D 08 4A 2E */	lhzx r8, r8, r9
/* 8146F294 | 89 21 00 6E */	lbz r9, 0x6e(r1)
/* 8146F298 | 7F CA F3 78 */	mr r10, r30
/* 8146F29C | 4B FF B3 D1 */	bl Zi8MatchAltSound
/* 8146F2A0 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 8146F2A4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F2A8 | 41 82 00 0C */	beq .L_8146F2B4
/* 8146F2AC | 38 60 00 01 */	li r3, 0x1
/* 8146F2B0 | 98 61 00 63 */	stb r3, 0x63(r1)
.L_8146F2B4:
/* 8146F2B4 | 89 21 00 63 */	lbz r9, 0x63(r1)
/* 8146F2B8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146F2BC | 41 82 00 94 */	beq .L_8146F350
/* 8146F2C0 | A1 01 00 8E */	lhz r8, 0x8e(r1)
/* 8146F2C4 | 38 A8 00 01 */	addi r5, r8, 0x1
/* 8146F2C8 | B0 A1 00 8E */	sth r5, 0x8e(r1)
/* 8146F2CC | 54 A7 04 3E */	clrlwi r7, r5, 16
/* 8146F2D0 | 88 C1 02 FD */	lbz r6, 0x2fd(r1)
/* 8146F2D4 | 7C 07 30 00 */	cmpw r7, r6
/* 8146F2D8 | 40 80 00 78 */	bge .L_8146F350
/* 8146F2DC | A0 A1 00 98 */	lhz r5, 0x98(r1)
/* 8146F2E0 | 54 A4 04 20 */	rlwinm r4, r5, 0, 16, 16
/* 8146F2E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F2E8 | 41 82 00 10 */	beq .L_8146F2F8
/* 8146F2EC | 39 80 00 00 */	li r12, 0x0
/* 8146F2F0 | 99 81 00 63 */	stb r12, 0x63(r1)
/* 8146F2F4 | 48 00 00 5C */	b .L_8146F350
.L_8146F2F8:
/* 8146F2F8 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 8146F2FC | 89 64 00 01 */	lbz r11, 0x1(r4)
/* 8146F300 | 55 6A 04 3E */	clrlwi r10, r11, 16
/* 8146F304 | 55 43 40 2E */	slwi r3, r10, 8
/* 8146F308 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 8146F30C | 89 24 00 00 */	lbz r9, 0x0(r4)
/* 8146F310 | 7C 65 4B 78 */	or r5, r3, r9
/* 8146F314 | 54 A7 04 3E */	clrlwi r7, r5, 16
/* 8146F318 | B0 E1 00 98 */	sth r7, 0x98(r1)
/* 8146F31C | 81 01 00 D8 */	lwz r8, 0xd8(r1)
/* 8146F320 | 38 C8 00 02 */	addi r6, r8, 0x2
/* 8146F324 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 8146F328 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 8146F32C | 54 87 04 7E */	clrlwi r7, r4, 17
/* 8146F330 | 54 E3 04 3E */	clrlwi r3, r7, 16
/* 8146F334 | B0 61 00 92 */	sth r3, 0x92(r1)
/* 8146F338 | 4B FF FE 94 */	b .L_8146F1CC
.L_8146F33C:
/* 8146F33C | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146F340 | 7F C4 F3 78 */	mr r4, r30
/* 8146F344 | 48 01 00 85 */	bl Zi8Ord2Uni
/* 8146F348 | 7C 65 1B 78 */	mr r5, r3
/* 8146F34C | B0 A1 00 90 */	sth r5, 0x90(r1)
.L_8146F350:
/* 8146F350 | 8B 61 00 5D */	lbz r27, 0x5d(r1)
/* 8146F354 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8146F358 | 40 82 00 18 */	bne .L_8146F370
/* 8146F35C | A0 81 00 90 */	lhz r4, 0x90(r1)
/* 8146F360 | 54 86 04 3E */	clrlwi r6, r4, 16
/* 8146F364 | A0 61 00 8C */	lhz r3, 0x8c(r1)
/* 8146F368 | 7C 06 18 40 */	cmplw r6, r3
/* 8146F36C | 41 82 03 A4 */	beq .L_8146F710
.L_8146F370:
/* 8146F370 | A1 01 00 90 */	lhz r8, 0x90(r1)
/* 8146F374 | B1 01 00 8C */	sth r8, 0x8c(r1)
/* 8146F378 | 88 A1 00 63 */	lbz r5, 0x63(r1)
/* 8146F37C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146F380 | 41 82 03 90 */	beq .L_8146F710
/* 8146F384 | A0 81 00 94 */	lhz r4, 0x94(r1)
/* 8146F388 | 88 FE 01 20 */	lbz r7, 0x120(r30)
/* 8146F38C | 54 E6 08 3C */	slwi r6, r7, 1
/* 8146F390 | 7C 7E 32 14 */	add r3, r30, r6
/* 8146F394 | B0 83 00 A0 */	sth r4, 0xa0(r3)
/* 8146F398 | A0 A1 00 90 */	lhz r5, 0x90(r1)
/* 8146F39C | 8B 9E 01 20 */	lbz r28, 0x120(r30)
/* 8146F3A0 | 57 8C 08 3C */	slwi r12, r28, 1
/* 8146F3A4 | 7C 9E 62 14 */	add r4, r30, r12
/* 8146F3A8 | B0 A4 00 20 */	sth r5, 0x20(r4)
/* 8146F3AC | 81 61 00 E4 */	lwz r11, 0xe4(r1)
/* 8146F3B0 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 8146F3B4 | 41 82 00 AC */	beq .L_8146F460
/* 8146F3B8 | 39 40 00 00 */	li r10, 0x0
/* 8146F3BC | 91 41 01 14 */	stw r10, 0x114(r1)
.L_8146F3C0:
/* 8146F3C0 | 81 21 00 D0 */	lwz r9, 0xd0(r1)
/* 8146F3C4 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146F3C8 | 54 68 08 3C */	slwi r8, r3, 1
/* 8146F3CC | 7C 88 4A 14 */	add r4, r8, r9
/* 8146F3D0 | 88 A4 00 01 */	lbz r5, 0x1(r4)
/* 8146F3D4 | 54 A7 04 3E */	clrlwi r7, r5, 16
/* 8146F3D8 | 54 E6 40 2E */	slwi r6, r7, 8
/* 8146F3DC | 80 81 00 D0 */	lwz r4, 0xd0(r1)
/* 8146F3E0 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146F3E4 | 54 A3 08 3C */	slwi r3, r5, 1
/* 8146F3E8 | 7D 04 18 AE */	lbzx r8, r4, r3
/* 8146F3EC | 7C C4 43 78 */	or r4, r6, r8
/* 8146F3F0 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 8146F3F4 | B0 61 00 90 */	sth r3, 0x90(r1)
/* 8146F3F8 | 81 21 00 E4 */	lwz r9, 0xe4(r1)
/* 8146F3FC | A0 81 00 90 */	lhz r4, 0x90(r1)
/* 8146F400 | 54 86 04 7E */	clrlwi r6, r4, 17
/* 8146F404 | 7C A9 32 14 */	add r5, r9, r6
/* 8146F408 | 90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 8146F40C | 80 E1 00 C4 */	lwz r7, 0xc4(r1)
/* 8146F410 | 88 87 00 00 */	lbz r4, 0x0(r7)
/* 8146F414 | 88 61 00 6D */	lbz r3, 0x6d(r1)
/* 8146F418 | 7C 86 18 38 */	and r6, r4, r3
/* 8146F41C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146F420 | 40 82 00 10 */	bne .L_8146F430
/* 8146F424 | 39 00 00 00 */	li r8, 0x0
/* 8146F428 | B1 01 00 90 */	sth r8, 0x90(r1)
/* 8146F42C | 48 00 00 24 */	b .L_8146F450
.L_8146F430:
/* 8146F430 | A0 A1 00 90 */	lhz r5, 0x90(r1)
/* 8146F434 | 54 A7 04 20 */	rlwinm r7, r5, 0, 16, 16
/* 8146F438 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146F43C | 40 82 00 14 */	bne .L_8146F450
/* 8146F440 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146F444 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 8146F448 | 90 C1 01 14 */	stw r6, 0x114(r1)
/* 8146F44C | 4B FF FF 74 */	b .L_8146F3C0
.L_8146F450:
/* 8146F450 | A0 A1 00 90 */	lhz r5, 0x90(r1)
/* 8146F454 | 54 A3 04 20 */	rlwinm r3, r5, 0, 16, 16
/* 8146F458 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146F45C | 41 82 02 B4 */	beq .L_8146F710
.L_8146F460:
/* 8146F460 | 89 21 00 5D */	lbz r9, 0x5d(r1)
/* 8146F464 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146F468 | 40 82 00 54 */	bne .L_8146F4BC
/* 8146F46C | 89 01 00 5E */	lbz r8, 0x5e(r1)
/* 8146F470 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146F474 | 41 82 00 28 */	beq .L_8146F49C
/* 8146F478 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8146F47C | A0 81 00 94 */	lhz r4, 0x94(r1)
/* 8146F480 | 7F C5 F3 78 */	mr r5, r30
/* 8146F484 | 4B FF B6 99 */	bl Zi8SetFindCand
/* 8146F488 | 7C 67 1B 78 */	mr r7, r3
/* 8146F48C | 54 E4 06 3E */	clrlwi r4, r7, 24
/* 8146F490 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F494 | 40 82 02 7C */	bne .L_8146F710
/* 8146F498 | 48 00 01 58 */	b .L_8146F5F0
.L_8146F49C:
/* 8146F49C | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146F4A0 | 7F C4 F3 78 */	mr r4, r30
/* 8146F4A4 | 48 00 C8 51 */	bl Zi8IsDupWChar
/* 8146F4A8 | 7C 66 1B 78 */	mr r6, r3
/* 8146F4AC | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 8146F4B0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146F4B4 | 40 82 02 5C */	bne .L_8146F710
/* 8146F4B8 | 48 00 01 38 */	b .L_8146F5F0
.L_8146F4BC:
/* 8146F4BC | 38 80 00 00 */	li r4, 0x0
/* 8146F4C0 | 98 81 00 65 */	stb r4, 0x65(r1)
.L_8146F4C4:
/* 8146F4C4 | 80 61 00 D0 */	lwz r3, 0xd0(r1)
/* 8146F4C8 | 89 43 00 01 */	lbz r10, 0x1(r3)
/* 8146F4CC | 55 49 04 3E */	clrlwi r9, r10, 16
/* 8146F4D0 | 55 26 40 2E */	slwi r6, r9, 8
/* 8146F4D4 | 80 A1 00 D0 */	lwz r5, 0xd0(r1)
/* 8146F4D8 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 8146F4DC | 7C C8 23 78 */	or r8, r6, r4
/* 8146F4E0 | 55 07 04 3E */	clrlwi r7, r8, 16
/* 8146F4E4 | B0 E1 00 94 */	sth r7, 0x94(r1)
/* 8146F4E8 | 80 C1 00 D0 */	lwz r6, 0xd0(r1)
/* 8146F4EC | 38 A6 00 02 */	addi r5, r6, 0x2
/* 8146F4F0 | 90 A1 00 D0 */	stw r5, 0xd0(r1)
/* 8146F4F4 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146F4F8 | 54 64 04 7E */	clrlwi r4, r3, 17
/* 8146F4FC | 54 83 04 3E */	clrlwi r3, r4, 16
/* 8146F500 | 7F C4 F3 78 */	mr r4, r30
/* 8146F504 | 48 00 FE C5 */	bl Zi8Ord2Uni
/* 8146F508 | 7C 6B 1B 78 */	mr r11, r3
/* 8146F50C | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 8146F510 | 80 E1 01 04 */	lwz r7, 0x104(r1)
/* 8146F514 | 89 41 00 65 */	lbz r10, 0x65(r1)
/* 8146F518 | 7D 46 53 78 */	mr r6, r10
/* 8146F51C | 38 AA 00 01 */	addi r5, r10, 0x1
/* 8146F520 | 98 A1 00 65 */	stb r5, 0x65(r1)
/* 8146F524 | 54 C4 06 3E */	clrlwi r4, r6, 24
/* 8146F528 | 7D 27 22 14 */	add r9, r7, r4
/* 8146F52C | 55 28 08 3C */	slwi r8, r9, 1
/* 8146F530 | 7D 63 43 2E */	sthx r11, r3, r8
/* 8146F534 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146F538 | 54 66 04 20 */	rlwinm r6, r3, 0, 16, 16
/* 8146F53C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146F540 | 41 82 FF 84 */	beq .L_8146F4C4
/* 8146F544 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 8146F548 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F54C | 41 82 00 64 */	beq .L_8146F5B0
/* 8146F550 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8146F554 | 28 05 00 01 */	cmplwi r5, 0x1
/* 8146F558 | 41 82 00 10 */	beq .L_8146F568
/* 8146F55C | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146F560 | 28 07 00 02 */	cmplwi r7, 0x2
/* 8146F564 | 40 82 00 1C */	bne .L_8146F580
.L_8146F568:
/* 8146F568 | 88 81 02 FD */	lbz r4, 0x2fd(r1)
/* 8146F56C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F570 | 41 82 00 10 */	beq .L_8146F580
/* 8146F574 | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 8146F578 | 98 61 00 65 */	stb r3, 0x65(r1)
/* 8146F57C | 48 00 00 48 */	b .L_8146F5C4
.L_8146F580:
/* 8146F580 | 89 81 00 56 */	lbz r12, 0x56(r1)
/* 8146F584 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8146F588 | 40 82 00 1C */	bne .L_8146F5A4
/* 8146F58C | 88 C1 03 44 */	lbz r6, 0x344(r1)
/* 8146F590 | 28 06 00 01 */	cmplwi r6, 0x1
/* 8146F594 | 40 81 00 10 */	ble .L_8146F5A4
/* 8146F598 | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 8146F59C | 98 A1 00 65 */	stb r5, 0x65(r1)
/* 8146F5A0 | 48 00 00 24 */	b .L_8146F5C4
.L_8146F5A4:
/* 8146F5A4 | 38 80 00 01 */	li r4, 0x1
/* 8146F5A8 | 98 81 00 65 */	stb r4, 0x65(r1)
/* 8146F5AC | 48 00 00 18 */	b .L_8146F5C4
.L_8146F5B0:
/* 8146F5B0 | 89 01 00 54 */	lbz r8, 0x54(r1)
/* 8146F5B4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146F5B8 | 41 82 00 0C */	beq .L_8146F5C4
/* 8146F5BC | 39 60 00 01 */	li r11, 0x1
/* 8146F5C0 | 99 61 00 65 */	stb r11, 0x65(r1)
.L_8146F5C4:
/* 8146F5C4 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 8146F5C8 | 80 E1 01 04 */	lwz r7, 0x104(r1)
/* 8146F5CC | 54 EA 08 3C */	slwi r10, r7, 1
/* 8146F5D0 | 7C 63 52 14 */	add r3, r3, r10
/* 8146F5D4 | 88 81 00 65 */	lbz r4, 0x65(r1)
/* 8146F5D8 | 7F C5 F3 78 */	mr r5, r30
/* 8146F5DC | 48 00 C8 15 */	bl Zi8IsDupWordW
/* 8146F5E0 | 7C 69 1B 78 */	mr r9, r3
/* 8146F5E4 | 55 26 06 3E */	clrlwi r6, r9, 24
/* 8146F5E8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146F5EC | 40 82 01 24 */	bne .L_8146F710
.L_8146F5F0:
/* 8146F5F0 | A0 81 00 72 */	lhz r4, 0x72(r1)
/* 8146F5F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F5F8 | 41 82 00 14 */	beq .L_8146F60C
/* 8146F5FC | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 8146F600 | 38 65 FF FF */	subi r3, r5, 0x1
/* 8146F604 | B0 61 00 72 */	sth r3, 0x72(r1)
/* 8146F608 | 48 00 01 08 */	b .L_8146F710
.L_8146F60C:
/* 8146F60C | 81 01 00 CC */	lwz r8, 0xcc(r1)
/* 8146F610 | 38 E8 00 01 */	addi r7, r8, 0x1
/* 8146F614 | 90 E1 00 CC */	stw r7, 0xcc(r1)
/* 8146F618 | 88 C1 00 58 */	lbz r6, 0x58(r1)
/* 8146F61C | 28 06 00 05 */	cmplwi r6, 0x5
/* 8146F620 | 40 82 00 18 */	bne .L_8146F638
/* 8146F624 | 80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 8146F628 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8146F62C | 7C 06 20 00 */	cmpw r6, r4
/* 8146F630 | 40 80 51 18 */	bge .L_81474748
/* 8146F634 | 48 00 00 DC */	b .L_8146F710
.L_8146F638:
/* 8146F638 | 89 3E 01 20 */	lbz r9, 0x120(r30)
/* 8146F63C | 38 A9 00 01 */	addi r5, r9, 0x1
/* 8146F640 | 98 BE 01 20 */	stb r5, 0x120(r30)
/* 8146F644 | 54 A8 06 3E */	clrlwi r8, r5, 24
/* 8146F648 | 28 08 00 40 */	cmplwi r8, 0x40
/* 8146F64C | 41 80 00 0C */	blt .L_8146F658
/* 8146F650 | 38 60 00 00 */	li r3, 0x0
/* 8146F654 | 98 7E 01 20 */	stb r3, 0x120(r30)
.L_8146F658:
/* 8146F658 | 88 81 00 5D */	lbz r4, 0x5d(r1)
/* 8146F65C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F660 | 41 82 00 64 */	beq .L_8146F6C4
/* 8146F664 | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 8146F668 | 38 C7 00 01 */	addi r6, r7, 0x1
/* 8146F66C | 98 C1 00 67 */	stb r6, 0x67(r1)
/* 8146F670 | 81 21 01 04 */	lwz r9, 0x104(r1)
/* 8146F674 | 88 61 00 65 */	lbz r3, 0x65(r1)
/* 8146F678 | 7C A9 1A 14 */	add r5, r9, r3
/* 8146F67C | 90 A1 01 04 */	stw r5, 0x104(r1)
/* 8146F680 | 38 80 00 20 */	li r4, 0x20
/* 8146F684 | 81 41 00 BC */	lwz r10, 0xbc(r1)
/* 8146F688 | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 8146F68C | 7C 6C 1B 78 */	mr r12, r3
/* 8146F690 | 55 88 08 3C */	slwi r8, r12, 1
/* 8146F694 | 7C 8A 43 2E */	sthx r4, r10, r8
/* 8146F698 | 38 E3 00 01 */	addi r7, r3, 0x1
/* 8146F69C | 90 E1 01 04 */	stw r7, 0x104(r1)
/* 8146F6A0 | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 8146F6A4 | 80 A1 00 C8 */	lwz r5, 0xc8(r1)
/* 8146F6A8 | 7C 06 28 00 */	cmpw r6, r5
/* 8146F6AC | 40 81 00 3C */	ble .L_8146F6E8
/* 8146F6B0 | 88 61 00 67 */	lbz r3, 0x67(r1)
/* 8146F6B4 | 98 7F 00 21 */	stb r3, 0x21(r31)
/* 8146F6B8 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146F6BC | 98 9F 00 20 */	stb r4, 0x20(r31)
/* 8146F6C0 | 48 00 50 88 */	b .L_81474748
.L_8146F6C4:
/* 8146F6C4 | A1 61 00 8C */	lhz r11, 0x8c(r1)
/* 8146F6C8 | 81 21 00 BC */	lwz r9, 0xbc(r1)
/* 8146F6CC | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 8146F6D0 | 7C E8 3B 78 */	mr r8, r7
/* 8146F6D4 | 55 08 06 3E */	clrlwi r8, r8, 24
/* 8146F6D8 | 55 03 08 3C */	slwi r3, r8, 1
/* 8146F6DC | 7D 69 1B 2E */	sthx r11, r9, r3
/* 8146F6E0 | 39 47 00 01 */	addi r10, r7, 0x1
/* 8146F6E4 | 99 41 00 67 */	stb r10, 0x67(r1)
.L_8146F6E8:
/* 8146F6E8 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146F6EC | 54 86 06 3E */	clrlwi r6, r4, 24
/* 8146F6F0 | 89 3F 00 1C */	lbz r9, 0x1c(r31)
/* 8146F6F4 | 7C 06 48 40 */	cmplw r6, r9
/* 8146F6F8 | 41 80 00 18 */	blt .L_8146F710
/* 8146F6FC | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 8146F700 | 99 1F 00 21 */	stb r8, 0x21(r31)
/* 8146F704 | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 8146F708 | 98 BF 00 20 */	stb r5, 0x20(r31)
/* 8146F70C | 48 00 50 3C */	b .L_81474748
.L_8146F710:
/* 8146F710 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 8146F714 | 54 87 04 20 */	rlwinm r7, r4, 0, 16, 16
/* 8146F718 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146F71C | 40 82 00 40 */	bne .L_8146F75C
/* 8146F720 | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 8146F724 | 38 C3 00 01 */	addi r6, r3, 0x1
/* 8146F728 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 8146F72C | 48 00 00 10 */	b .L_8146F73C
.L_8146F730:
/* 8146F730 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 8146F734 | 39 44 00 02 */	addi r10, r4, 0x2
/* 8146F738 | 91 41 00 D8 */	stw r10, 0xd8(r1)
.L_8146F73C:
/* 8146F73C | 80 A1 00 D8 */	lwz r5, 0xd8(r1)
/* 8146F740 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 8146F744 | 54 89 06 30 */	rlwinm r9, r4, 0, 24, 24
/* 8146F748 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146F74C | 41 82 FF E4 */	beq .L_8146F730
/* 8146F750 | 80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 8146F754 | 38 C7 00 01 */	addi r6, r7, 0x1
/* 8146F758 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
.L_8146F75C:
/* 8146F75C | 88 61 00 6A */	lbz r3, 0x6a(r1)
/* 8146F760 | 39 03 FF FF */	subi r8, r3, 0x1
/* 8146F764 | 99 01 00 6A */	stb r8, 0x6a(r1)
.L_8146F768:
/* 8146F768 | 88 A1 00 6A */	lbz r5, 0x6a(r1)
/* 8146F76C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146F770 | 40 82 F4 6C */	bne .L_8146EBDC
.L_8146F774:
/* 8146F774 | 88 61 00 6B */	lbz r3, 0x6b(r1)
/* 8146F778 | 54 67 06 30 */	rlwinm r7, r3, 0, 24, 24
/* 8146F77C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146F780 | 41 82 F3 C4 */	beq .L_8146EB44
.L_8146F784:
/* 8146F784 | 88 DF 00 14 */	lbz r6, 0x14(r31)
/* 8146F788 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146F78C | 41 82 00 0C */	beq .L_8146F798
/* 8146F790 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146F794 | 98 9F 00 20 */	stb r4, 0x20(r31)
.L_8146F798:
/* 8146F798 | 88 A1 00 58 */	lbz r5, 0x58(r1)
/* 8146F79C | 28 05 00 05 */	cmplwi r5, 0x5
/* 8146F7A0 | 41 82 4F A8 */	beq .L_81474748
/* 8146F7A4 | 88 81 00 57 */	lbz r4, 0x57(r1)
/* 8146F7A8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F7AC | 41 82 00 28 */	beq .L_8146F7D4
/* 8146F7B0 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 8146F7B4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8146F7B8 | 41 82 00 10 */	beq .L_8146F7C8
/* 8146F7BC | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 8146F7C0 | 28 07 00 02 */	cmplwi r7, 0x2
/* 8146F7C4 | 40 82 00 10 */	bne .L_8146F7D4
.L_8146F7C8:
/* 8146F7C8 | 89 61 02 FD */	lbz r11, 0x2fd(r1)
/* 8146F7CC | 28 0B 00 01 */	cmplwi r11, 0x1
/* 8146F7D0 | 41 81 00 28 */	bgt .L_8146F7F8
.L_8146F7D4:
/* 8146F7D4 | 89 41 00 57 */	lbz r10, 0x57(r1)
/* 8146F7D8 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146F7DC | 41 82 00 40 */	beq .L_8146F81C
/* 8146F7E0 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 8146F7E4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146F7E8 | 40 82 00 34 */	bne .L_8146F81C
/* 8146F7EC | 89 21 03 44 */	lbz r9, 0x344(r1)
/* 8146F7F0 | 28 09 00 01 */	cmplwi r9, 0x1
/* 8146F7F4 | 40 81 00 28 */	ble .L_8146F81C
.L_8146F7F8:
/* 8146F7F8 | 39 00 00 00 */	li r8, 0x0
/* 8146F7FC | 99 01 00 57 */	stb r8, 0x57(r1)
/* 8146F800 | 88 FE 03 0C */	lbz r7, 0x30c(r30)
/* 8146F804 | 98 E1 00 50 */	stb r7, 0x50(r1)
/* 8146F808 | 38 C0 00 02 */	li r6, 0x2
/* 8146F80C | 98 C1 00 4F */	stb r6, 0x4f(r1)
/* 8146F810 | 88 BE 01 2D */	lbz r5, 0x12d(r30)
/* 8146F814 | 98 BE 03 0C */	stb r5, 0x30c(r30)
/* 8146F818 | 4B FF E2 90 */	b .L_8146DAA8
.L_8146F81C:
/* 8146F81C | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8146F820 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146F824 | 40 82 02 D8 */	bne .L_8146FAFC
/* 8146F828 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 8146F82C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146F830 | 40 82 02 CC */	bne .L_8146FAFC
/* 8146F834 | 89 5F 00 14 */	lbz r10, 0x14(r31)
/* 8146F838 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146F83C | 41 82 02 C0 */	beq .L_8146FAFC
/* 8146F840 | 38 60 00 01 */	li r3, 0x1
/* 8146F844 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146F848 | 7F C4 F3 78 */	mr r4, r30
/* 8146F84C | 4B FE FC 29 */	bl Zi8GetFormatVersion
/* 8146F850 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 8146F854 | 28 08 00 08 */	cmplwi r8, 0x8
/* 8146F858 | 41 80 02 A4 */	blt .L_8146FAFC
/* 8146F85C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8146F860 | 88 BF 00 14 */	lbz r5, 0x14(r31)
/* 8146F864 | 38 E5 FF FF */	subi r7, r5, 0x1
/* 8146F868 | 54 E4 08 3C */	slwi r4, r7, 1
/* 8146F86C | 7C C3 22 2E */	lhzx r6, r3, r4
/* 8146F870 | 54 C5 C6 3E */	extrwi r5, r6, 8, 16
/* 8146F874 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 8146F878 | 98 81 00 4E */	stb r4, 0x4e(r1)
/* 8146F87C | 81 3F 00 10 */	lwz r9, 0x10(r31)
/* 8146F880 | 89 1F 00 14 */	lbz r8, 0x14(r31)
/* 8146F884 | 38 88 FF FF */	subi r4, r8, 0x1
/* 8146F888 | 54 87 08 3C */	slwi r7, r4, 1
/* 8146F88C | 7C 69 3A 2E */	lhzx r3, r9, r7
/* 8146F890 | 54 66 06 3E */	clrlwi r6, r3, 24
/* 8146F894 | 98 C1 00 4D */	stb r6, 0x4d(r1)
/* 8146F898 | 38 60 00 01 */	li r3, 0x1
/* 8146F89C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146F8A0 | 38 80 00 1C */	li r4, 0x1c
/* 8146F8A4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146F8A8 | 7F C5 F3 78 */	mr r5, r30
/* 8146F8AC | 4B FE FB 05 */	bl Zi8GetTableAddress
/* 8146F8B0 | 7C 65 1B 78 */	mr r5, r3
/* 8146F8B4 | 90 A1 00 D8 */	stw r5, 0xd8(r1)
/* 8146F8B8 | 38 60 00 01 */	li r3, 0x1
/* 8146F8BC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146F8C0 | 38 80 00 1C */	li r4, 0x1c
/* 8146F8C4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146F8C8 | 7F C5 F3 78 */	mr r5, r30
/* 8146F8CC | 4B FE FB 65 */	bl Zi8GetTableCount
/* 8146F8D0 | 7C 64 1B 78 */	mr r4, r3
/* 8146F8D4 | B0 81 00 82 */	sth r4, 0x82(r1)
/* 8146F8D8 | 39 00 00 00 */	li r8, 0x0
/* 8146F8DC | B1 01 00 84 */	sth r8, 0x84(r1)
/* 8146F8E0 | 48 00 02 08 */	b .L_8146FAE8
.L_8146F8E4:
/* 8146F8E4 | 88 61 00 4E */	lbz r3, 0x4e(r1)
/* 8146F8E8 | 54 67 06 3E */	clrlwi r7, r3, 24
/* 8146F8EC | 80 C1 00 D8 */	lwz r6, 0xd8(r1)
/* 8146F8F0 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 8146F8F4 | 7C 07 28 40 */	cmplw r7, r5
/* 8146F8F8 | 40 82 01 D8 */	bne .L_8146FAD0
/* 8146F8FC | 88 81 00 4D */	lbz r4, 0x4d(r1)
/* 8146F900 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8146F904 | 81 21 00 D8 */	lwz r9, 0xd8(r1)
/* 8146F908 | 89 09 00 01 */	lbz r8, 0x1(r9)
/* 8146F90C | 7C 03 40 40 */	cmplw r3, r8
/* 8146F910 | 40 82 01 C0 */	bne .L_8146FAD0
/* 8146F914 | 39 00 00 00 */	li r8, 0x0
/* 8146F918 | B1 01 00 84 */	sth r8, 0x84(r1)
/* 8146F91C | 48 00 01 A4 */	b .L_8146FAC0
.L_8146F920:
/* 8146F920 | 80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 8146F924 | 88 C7 00 02 */	lbz r6, 0x2(r7)
/* 8146F928 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 8146F92C | 54 A4 40 2E */	slwi r4, r5, 8
/* 8146F930 | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 8146F934 | 89 83 00 03 */	lbz r12, 0x3(r3)
/* 8146F938 | 7D 64 62 14 */	add r11, r4, r12
/* 8146F93C | 55 67 04 3E */	clrlwi r7, r11, 16
/* 8146F940 | B0 E1 00 94 */	sth r7, 0x94(r1)
/* 8146F944 | A1 41 00 94 */	lhz r10, 0x94(r1)
/* 8146F948 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146F94C | 41 82 01 B0 */	beq .L_8146FAFC
/* 8146F950 | 89 21 00 5D */	lbz r9, 0x5d(r1)
/* 8146F954 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8146F958 | 40 82 00 60 */	bne .L_8146F9B8
/* 8146F95C | 39 00 00 00 */	li r8, 0x0
/* 8146F960 | 91 01 01 14 */	stw r8, 0x114(r1)
/* 8146F964 | 48 00 00 30 */	b .L_8146F994
.L_8146F968:
/* 8146F968 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 8146F96C | 54 64 04 3E */	clrlwi r4, r3, 16
/* 8146F970 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 8146F974 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146F978 | 55 28 08 3C */	slwi r8, r9, 1
/* 8146F97C | 7C A3 42 2E */	lhzx r5, r3, r8
/* 8146F980 | 7C 04 28 40 */	cmplw r4, r5
/* 8146F984 | 41 82 00 20 */	beq .L_8146F9A4
/* 8146F988 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146F98C | 38 C7 00 01 */	addi r6, r7, 0x1
/* 8146F990 | 90 C1 01 14 */	stw r6, 0x114(r1)
.L_8146F994:
/* 8146F994 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 8146F998 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146F99C | 7C 05 20 00 */	cmpw r5, r4
/* 8146F9A0 | 41 80 FF C8 */	blt .L_8146F968
.L_8146F9A4:
/* 8146F9A4 | 81 81 01 14 */	lwz r12, 0x114(r1)
/* 8146F9A8 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146F9AC | 7C 0C 20 00 */	cmpw r12, r4
/* 8146F9B0 | 41 80 00 F8 */	blt .L_8146FAA8
/* 8146F9B4 | 48 00 00 28 */	b .L_8146F9DC
.L_8146F9B8:
/* 8146F9B8 | 38 61 00 94 */	addi r3, r1, 0x94
/* 8146F9BC | 38 80 00 01 */	li r4, 0x1
/* 8146F9C0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146F9C4 | 7F C5 F3 78 */	mr r5, r30
/* 8146F9C8 | 48 00 C4 29 */	bl Zi8IsDupWordW
/* 8146F9CC | 7C 6B 1B 78 */	mr r11, r3
/* 8146F9D0 | 55 6A 06 3E */	clrlwi r10, r11, 24
/* 8146F9D4 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146F9D8 | 40 82 00 D0 */	bne .L_8146FAA8
.L_8146F9DC:
/* 8146F9DC | A0 61 00 72 */	lhz r3, 0x72(r1)
/* 8146F9E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146F9E4 | 41 82 00 14 */	beq .L_8146F9F8
/* 8146F9E8 | A0 81 00 72 */	lhz r4, 0x72(r1)
/* 8146F9EC | 39 24 FF FF */	subi r9, r4, 0x1
/* 8146F9F0 | B1 21 00 72 */	sth r9, 0x72(r1)
/* 8146F9F4 | 48 00 00 B4 */	b .L_8146FAA8
.L_8146F9F8:
/* 8146F9F8 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8146F9FC | 38 E5 00 01 */	addi r7, r5, 0x1
/* 8146FA00 | 90 E1 00 CC */	stw r7, 0xcc(r1)
/* 8146FA04 | 89 01 00 5D */	lbz r8, 0x5d(r1)
/* 8146FA08 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146FA0C | 41 82 00 64 */	beq .L_8146FA70
/* 8146FA10 | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 8146FA14 | 38 86 00 01 */	addi r4, r6, 0x1
/* 8146FA18 | 98 81 00 67 */	stb r4, 0x67(r1)
/* 8146FA1C | A0 E1 00 94 */	lhz r7, 0x94(r1)
/* 8146FA20 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 8146FA24 | 80 A1 01 04 */	lwz r5, 0x104(r1)
/* 8146FA28 | 7C BB 2B 78 */	mr r27, r5
/* 8146FA2C | 57 66 08 3C */	slwi r6, r27, 1
/* 8146FA30 | 7C E3 33 2E */	sthx r7, r3, r6
/* 8146FA34 | 38 85 00 01 */	addi r4, r5, 0x1
/* 8146FA38 | 90 81 01 04 */	stw r4, 0x104(r1)
/* 8146FA3C | 38 60 00 20 */	li r3, 0x20
/* 8146FA40 | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 8146FA44 | 80 A1 01 04 */	lwz r5, 0x104(r1)
/* 8146FA48 | 7C A4 2B 78 */	mr r4, r5
/* 8146FA4C | 54 86 08 3C */	slwi r6, r4, 1
/* 8146FA50 | 7C 68 33 2E */	sthx r3, r8, r6
/* 8146FA54 | 38 E5 00 01 */	addi r7, r5, 0x1
/* 8146FA58 | 90 E1 01 04 */	stw r7, 0x104(r1)
/* 8146FA5C | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 8146FA60 | 80 A1 00 C8 */	lwz r5, 0xc8(r1)
/* 8146FA64 | 7C 03 28 00 */	cmpw r3, r5
/* 8146FA68 | 41 81 4C E0 */	bgt .L_81474748
/* 8146FA6C | 48 00 00 28 */	b .L_8146FA94
.L_8146FA70:
/* 8146FA70 | A3 81 00 94 */	lhz r28, 0x94(r1)
/* 8146FA74 | 81 81 00 BC */	lwz r12, 0xbc(r1)
/* 8146FA78 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 8146FA7C | 7C 8B 23 78 */	mr r11, r4
/* 8146FA80 | 55 69 06 3E */	clrlwi r9, r11, 24
/* 8146FA84 | 55 23 08 3C */	slwi r3, r9, 1
/* 8146FA88 | 7F 8C 1B 2E */	sthx r28, r12, r3
/* 8146FA8C | 39 44 00 01 */	addi r10, r4, 0x1
/* 8146FA90 | 99 41 00 67 */	stb r10, 0x67(r1)
.L_8146FA94:
/* 8146FA94 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 8146FA98 | 55 04 06 3E */	clrlwi r4, r8, 24
/* 8146FA9C | 88 BF 00 1C */	lbz r5, 0x1c(r31)
/* 8146FAA0 | 7C 04 28 40 */	cmplw r4, r5
/* 8146FAA4 | 40 80 4C A4 */	bge .L_81474748
.L_8146FAA8:
/* 8146FAA8 | A0 E1 00 84 */	lhz r7, 0x84(r1)
/* 8146FAAC | 38 C7 00 01 */	addi r6, r7, 0x1
/* 8146FAB0 | B0 C1 00 84 */	sth r6, 0x84(r1)
/* 8146FAB4 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 8146FAB8 | 38 A4 00 02 */	addi r5, r4, 0x2
/* 8146FABC | 90 A1 00 D8 */	stw r5, 0xd8(r1)
.L_8146FAC0:
/* 8146FAC0 | A0 61 00 84 */	lhz r3, 0x84(r1)
/* 8146FAC4 | 28 03 00 04 */	cmplwi r3, 0x4
/* 8146FAC8 | 41 80 FE 58 */	blt .L_8146F920
/* 8146FACC | 48 00 00 30 */	b .L_8146FAFC
.L_8146FAD0:
/* 8146FAD0 | A1 01 00 84 */	lhz r8, 0x84(r1)
/* 8146FAD4 | 38 88 00 01 */	addi r4, r8, 0x1
/* 8146FAD8 | B0 81 00 84 */	sth r4, 0x84(r1)
/* 8146FADC | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 8146FAE0 | 39 23 00 0A */	addi r9, r3, 0xa
/* 8146FAE4 | 91 21 00 D8 */	stw r9, 0xd8(r1)
.L_8146FAE8:
/* 8146FAE8 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 8146FAEC | 54 86 04 3E */	clrlwi r6, r4, 16
/* 8146FAF0 | A0 A1 00 82 */	lhz r5, 0x82(r1)
/* 8146FAF4 | 7C 06 28 40 */	cmplw r6, r5
/* 8146FAF8 | 41 80 FD EC */	blt .L_8146F8E4
.L_8146FAFC:
/* 8146FAFC | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 8146FB00 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146FB04 | 40 82 01 80 */	bne .L_8146FC84
/* 8146FB08 | A0 81 00 8A */	lhz r4, 0x8a(r1)
/* 8146FB0C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8146FB10 | 40 82 01 74 */	bne .L_8146FC84
/* 8146FB14 | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 8146FB18 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8146FB1C | 41 81 01 68 */	bgt .L_8146FC84
/* 8146FB20 | 88 C1 03 44 */	lbz r6, 0x344(r1)
/* 8146FB24 | 28 06 00 01 */	cmplwi r6, 0x1
/* 8146FB28 | 41 81 01 5C */	bgt .L_8146FC84
/* 8146FB2C | 89 1F 00 14 */	lbz r8, 0x14(r31)
/* 8146FB30 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146FB34 | 41 82 01 50 */	beq .L_8146FC84
/* 8146FB38 | 38 60 00 01 */	li r3, 0x1
/* 8146FB3C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146FB40 | 7F C4 F3 78 */	mr r4, r30
/* 8146FB44 | 4B FE F9 31 */	bl Zi8GetFormatVersion
/* 8146FB48 | 7C 65 1B 78 */	mr r5, r3
/* 8146FB4C | 54 A7 06 3E */	clrlwi r7, r5, 24
/* 8146FB50 | 28 07 00 08 */	cmplwi r7, 0x8
/* 8146FB54 | 41 80 01 30 */	blt .L_8146FC84
/* 8146FB58 | 38 60 00 01 */	li r3, 0x1
/* 8146FB5C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146FB60 | 38 80 00 1D */	li r4, 0x1d
/* 8146FB64 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146FB68 | 7F C5 F3 78 */	mr r5, r30
/* 8146FB6C | 4B FE F8 C5 */	bl Zi8GetTableCount
/* 8146FB70 | 7C 64 1B 78 */	mr r4, r3
/* 8146FB74 | B0 81 00 8A */	sth r4, 0x8a(r1)
/* 8146FB78 | 80 DF 00 10 */	lwz r6, 0x10(r31)
/* 8146FB7C | 88 BF 00 14 */	lbz r5, 0x14(r31)
/* 8146FB80 | 38 65 FF FF */	subi r3, r5, 0x1
/* 8146FB84 | 54 69 08 3C */	slwi r9, r3, 1
/* 8146FB88 | 7D 06 4A 2E */	lhzx r8, r6, r9
/* 8146FB8C | B1 01 00 A2 */	sth r8, 0xa2(r1)
/* 8146FB90 | A0 E1 00 8A */	lhz r7, 0x8a(r1)
/* 8146FB94 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146FB98 | 41 82 00 C0 */	beq .L_8146FC58
/* 8146FB9C | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 8146FBA0 | 28 04 00 30 */	cmplwi r4, 0x30
/* 8146FBA4 | 41 80 00 10 */	blt .L_8146FBB4
/* 8146FBA8 | A0 C1 00 A2 */	lhz r6, 0xa2(r1)
/* 8146FBAC | 28 06 00 39 */	cmplwi r6, 0x39
/* 8146FBB0 | 40 81 00 A8 */	ble .L_8146FC58
.L_8146FBB4:
/* 8146FBB4 | A0 A1 00 A2 */	lhz r5, 0xa2(r1)
/* 8146FBB8 | 2C 05 4E 94 */	cmpwi r5, 0x4e94
/* 8146FBBC | 41 82 00 9C */	beq .L_8146FC58
/* 8146FBC0 | 40 80 00 40 */	bge .L_8146FC00
/* 8146FBC4 | 2C 05 4E 09 */	cmpwi r5, 0x4e09
/* 8146FBC8 | 41 82 00 90 */	beq .L_8146FC58
/* 8146FBCC | 40 80 00 1C */	bge .L_8146FBE8
/* 8146FBD0 | 2C 05 4E 03 */	cmpwi r5, 0x4e03
/* 8146FBD4 | 41 82 00 84 */	beq .L_8146FC58
/* 8146FBD8 | 40 80 00 78 */	bge .L_8146FC50
/* 8146FBDC | 2C 05 4E 00 */	cmpwi r5, 0x4e00
/* 8146FBE0 | 41 82 00 78 */	beq .L_8146FC58
/* 8146FBE4 | 48 00 00 6C */	b .L_8146FC50
.L_8146FBE8:
/* 8146FBE8 | 2C 05 4E 8C */	cmpwi r5, 0x4e8c
/* 8146FBEC | 41 82 00 6C */	beq .L_8146FC58
/* 8146FBF0 | 40 80 00 60 */	bge .L_8146FC50
/* 8146FBF4 | 2C 05 4E 5D */	cmpwi r5, 0x4e5d
/* 8146FBF8 | 41 82 00 60 */	beq .L_8146FC58
/* 8146FBFC | 48 00 00 54 */	b .L_8146FC50
.L_8146FC00:
/* 8146FC00 | 2C 05 53 41 */	cmpwi r5, 0x5341
/* 8146FC04 | 41 82 00 54 */	beq .L_8146FC58
/* 8146FC08 | 40 80 00 28 */	bge .L_8146FC30
/* 8146FC0C | 2C 05 51 6C */	cmpwi r5, 0x516c
/* 8146FC10 | 41 82 00 40 */	beq .L_8146FC50
/* 8146FC14 | 40 80 00 10 */	bge .L_8146FC24
/* 8146FC18 | 2C 05 51 6B */	cmpwi r5, 0x516b
/* 8146FC1C | 40 80 00 3C */	bge .L_8146FC58
/* 8146FC20 | 48 00 00 30 */	b .L_8146FC50
.L_8146FC24:
/* 8146FC24 | 2C 05 51 6E */	cmpwi r5, 0x516e
/* 8146FC28 | 40 80 00 28 */	bge .L_8146FC50
/* 8146FC2C | 48 00 00 2C */	b .L_8146FC58
.L_8146FC30:
/* 8146FC30 | 3C 80 00 01 */	lis r4, 0x1
/* 8146FC34 | 38 84 96 F6 */	subi r4, r4, 0x690a
/* 8146FC38 | 7C 05 20 00 */	cmpw r5, r4
/* 8146FC3C | 41 82 00 1C */	beq .L_8146FC58
/* 8146FC40 | 40 80 00 10 */	bge .L_8146FC50
/* 8146FC44 | 2C 05 56 DB */	cmpwi r5, 0x56db
/* 8146FC48 | 41 82 00 10 */	beq .L_8146FC58
/* 8146FC4C | 48 00 00 04 */	b .L_8146FC50
.L_8146FC50:
/* 8146FC50 | 38 60 00 00 */	li r3, 0x0
/* 8146FC54 | B0 61 00 8A */	sth r3, 0x8a(r1)
.L_8146FC58:
/* 8146FC58 | A1 41 00 8A */	lhz r10, 0x8a(r1)
/* 8146FC5C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8146FC60 | 41 82 00 24 */	beq .L_8146FC84
/* 8146FC64 | 38 60 00 01 */	li r3, 0x1
/* 8146FC68 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8146FC6C | 38 80 00 1D */	li r4, 0x1d
/* 8146FC70 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8146FC74 | 7F C5 F3 78 */	mr r5, r30
/* 8146FC78 | 4B FE F7 39 */	bl Zi8GetTableAddress
/* 8146FC7C | 7C 69 1B 78 */	mr r9, r3
/* 8146FC80 | 91 21 00 DC */	stw r9, 0xdc(r1)
.L_8146FC84:
/* 8146FC84 | 88 DF 00 0C */	lbz r6, 0xc(r31)
/* 8146FC88 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8146FC8C | 40 82 00 38 */	bne .L_8146FCC4
/* 8146FC90 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8146FC94 | 28 05 00 07 */	cmplwi r5, 0x7
/* 8146FC98 | 41 82 00 1C */	beq .L_8146FCB4
/* 8146FC9C | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146FCA0 | 28 04 00 08 */	cmplwi r4, 0x8
/* 8146FCA4 | 41 82 00 10 */	beq .L_8146FCB4
/* 8146FCA8 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 8146FCAC | 28 08 00 09 */	cmplwi r8, 0x9
/* 8146FCB0 | 40 82 00 14 */	bne .L_8146FCC4
.L_8146FCB4:
/* 8146FCB4 | 38 E0 00 00 */	li r7, 0x0
/* 8146FCB8 | 98 E1 00 52 */	stb r7, 0x52(r1)
/* 8146FCBC | 38 C0 00 00 */	li r6, 0x0
/* 8146FCC0 | 98 C1 02 FC */	stb r6, 0x2fc(r1)
.L_8146FCC4:
/* 8146FCC4 | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 8146FCC8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146FCCC | 40 82 05 2C */	bne .L_814701F8
/* 8146FCD0 | A0 61 00 8A */	lhz r3, 0x8a(r1)
/* 8146FCD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146FCD8 | 41 82 05 20 */	beq .L_814701F8
/* 8146FCDC | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146FCE0 | 28 04 00 07 */	cmplwi r4, 0x7
/* 8146FCE4 | 41 82 00 1C */	beq .L_8146FD00
/* 8146FCE8 | 89 61 00 56 */	lbz r11, 0x56(r1)
/* 8146FCEC | 28 0B 00 08 */	cmplwi r11, 0x8
/* 8146FCF0 | 41 82 00 10 */	beq .L_8146FD00
/* 8146FCF4 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 8146FCF8 | 28 03 00 09 */	cmplwi r3, 0x9
/* 8146FCFC | 40 82 04 FC */	bne .L_814701F8
.L_8146FD00:
/* 8146FD00 | 38 E0 00 00 */	li r7, 0x0
/* 8146FD04 | B0 E1 00 A2 */	sth r7, 0xa2(r1)
/* 8146FD08 | 48 00 04 DC */	b .L_814701E4
.L_8146FD0C:
/* 8146FD0C | 81 41 00 DC */	lwz r10, 0xdc(r1)
/* 8146FD10 | A0 C1 00 A2 */	lhz r6, 0xa2(r1)
/* 8146FD14 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8146FD18 | 7C 8A 28 AE */	lbzx r4, r10, r5
/* 8146FD1C | 54 89 04 3E */	clrlwi r9, r4, 16
/* 8146FD20 | 55 28 40 2E */	slwi r8, r9, 8
/* 8146FD24 | 80 61 00 DC */	lwz r3, 0xdc(r1)
/* 8146FD28 | A0 C1 00 A2 */	lhz r6, 0xa2(r1)
/* 8146FD2C | 54 C4 08 3C */	slwi r4, r6, 1
/* 8146FD30 | 7C A4 1A 14 */	add r5, r4, r3
/* 8146FD34 | 88 E5 00 01 */	lbz r7, 0x1(r5)
/* 8146FD38 | 7C 88 3A 14 */	add r4, r8, r7
/* 8146FD3C | 54 83 04 3E */	clrlwi r3, r4, 16
/* 8146FD40 | B0 61 00 98 */	sth r3, 0x98(r1)
/* 8146FD44 | 81 81 00 EC */	lwz r12, 0xec(r1)
/* 8146FD48 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 8146FD4C | 1C A6 00 0C */	mulli r5, r6, 0xc
/* 8146FD50 | 7C 8C 2A 14 */	add r4, r12, r5
/* 8146FD54 | 90 81 01 00 */	stw r4, 0x100(r1)
/* 8146FD58 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 8146FD5C | 89 68 00 00 */	lbz r11, 0x0(r8)
/* 8146FD60 | 88 61 00 6E */	lbz r3, 0x6e(r1)
/* 8146FD64 | 7D 67 18 38 */	and r7, r11, r3
/* 8146FD68 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8146FD6C | 41 82 04 6C */	beq .L_814701D8
/* 8146FD70 | 81 41 00 D4 */	lwz r10, 0xd4(r1)
/* 8146FD74 | 81 21 01 00 */	lwz r9, 0x100(r1)
/* 8146FD78 | 88 C9 00 09 */	lbz r6, 0x9(r9)
/* 8146FD7C | 54 C4 07 3E */	clrlwi r4, r6, 28
/* 8146FD80 | 54 85 80 1E */	slwi r5, r4, 16
/* 8146FD84 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8146FD88 | 89 03 00 0B */	lbz r8, 0xb(r3)
/* 8146FD8C | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 8146FD90 | 88 C7 00 0A */	lbz r6, 0xa(r7)
/* 8146FD94 | 54 C6 40 2E */	slwi r6, r6, 8
/* 8146FD98 | 7D 04 33 78 */	or r4, r8, r6
/* 8146FD9C | 7C A9 23 78 */	or r9, r5, r4
/* 8146FDA0 | 7C AA 4A 14 */	add r5, r10, r9
/* 8146FDA4 | 90 A1 00 B8 */	stw r5, 0xb8(r1)
/* 8146FDA8 | 39 00 00 00 */	li r8, 0x0
/* 8146FDAC | 99 01 00 63 */	stb r8, 0x63(r1)
/* 8146FDB0 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 8146FDB4 | 28 03 00 08 */	cmplwi r3, 0x8
/* 8146FDB8 | 41 82 00 10 */	beq .L_8146FDC8
/* 8146FDBC | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 8146FDC0 | 28 04 00 09 */	cmplwi r4, 0x9
/* 8146FDC4 | 40 82 01 5C */	bne .L_8146FF20
.L_8146FDC8:
/* 8146FDC8 | 80 E1 00 B8 */	lwz r7, 0xb8(r1)
/* 8146FDCC | 88 C7 00 00 */	lbz r6, 0x0(r7)
/* 8146FDD0 | 54 C9 07 7E */	clrlwi r9, r6, 29
/* 8146FDD4 | 91 21 01 14 */	stw r9, 0x114(r1)
/* 8146FDD8 | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 8146FDDC | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 8146FDE0 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146FDE4 | 54 8A 10 3A */	slwi r10, r4, 2
/* 8146FDE8 | 38 61 01 40 */	addi r3, r1, 0x140
/* 8146FDEC | 7D 83 50 AE */	lbzx r12, r3, r10
/* 8146FDF0 | 7C A7 60 38 */	and r7, r5, r12
/* 8146FDF4 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 8146FDF8 | 55 06 10 3A */	slwi r6, r8, 2
/* 8146FDFC | 38 A1 01 28 */	addi r5, r1, 0x128
/* 8146FE00 | 7C 65 30 AE */	lbzx r3, r5, r6
/* 8146FE04 | 7C 07 18 00 */	cmpw r7, r3
/* 8146FE08 | 40 82 01 0C */	bne .L_8146FF14
/* 8146FE0C | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 8146FE10 | 89 64 00 01 */	lbz r11, 0x1(r4)
/* 8146FE14 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146FE18 | 55 27 10 3A */	slwi r7, r9, 2
/* 8146FE1C | 39 01 01 40 */	addi r8, r1, 0x140
/* 8146FE20 | 7D 48 3A 14 */	add r10, r8, r7
/* 8146FE24 | 89 0A 00 01 */	lbz r8, 0x1(r10)
/* 8146FE28 | 7D 63 40 38 */	and r3, r11, r8
/* 8146FE2C | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8146FE30 | 54 86 10 3A */	slwi r6, r4, 2
/* 8146FE34 | 39 21 01 28 */	addi r9, r1, 0x128
/* 8146FE38 | 7D 09 32 14 */	add r8, r9, r6
/* 8146FE3C | 88 A8 00 01 */	lbz r5, 0x1(r8)
/* 8146FE40 | 7C 03 28 00 */	cmpw r3, r5
/* 8146FE44 | 40 82 00 D0 */	bne .L_8146FF14
/* 8146FE48 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 8146FE4C | 88 E4 00 02 */	lbz r7, 0x2(r4)
/* 8146FE50 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 8146FE54 | 54 66 10 3A */	slwi r6, r3, 2
/* 8146FE58 | 38 81 01 40 */	addi r4, r1, 0x140
/* 8146FE5C | 7D 44 32 14 */	add r10, r4, r6
/* 8146FE60 | 88 AA 00 02 */	lbz r5, 0x2(r10)
/* 8146FE64 | 7C E4 28 38 */	and r4, r7, r5
/* 8146FE68 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146FE6C | 55 27 10 3A */	slwi r7, r9, 2
/* 8146FE70 | 38 C1 01 28 */	addi r6, r1, 0x128
/* 8146FE74 | 7C 66 3A 14 */	add r3, r6, r7
/* 8146FE78 | 89 03 00 02 */	lbz r8, 0x2(r3)
/* 8146FE7C | 7C 04 40 00 */	cmpw r4, r8
/* 8146FE80 | 40 82 00 94 */	bne .L_8146FF14
/* 8146FE84 | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 8146FE88 | 88 65 00 03 */	lbz r3, 0x3(r5)
/* 8146FE8C | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146FE90 | 54 E6 10 3A */	slwi r6, r7, 2
/* 8146FE94 | 38 81 01 40 */	addi r4, r1, 0x140
/* 8146FE98 | 7C A4 32 14 */	add r5, r4, r6
/* 8146FE9C | 88 85 00 03 */	lbz r4, 0x3(r5)
/* 8146FEA0 | 7C 63 20 38 */	and r3, r3, r4
/* 8146FEA4 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146FEA8 | 54 EB 10 3A */	slwi r11, r7, 2
/* 8146FEAC | 39 41 01 28 */	addi r10, r1, 0x128
/* 8146FEB0 | 7D 0A 5A 14 */	add r8, r10, r11
/* 8146FEB4 | 89 28 00 03 */	lbz r9, 0x3(r8)
/* 8146FEB8 | 7C 03 48 00 */	cmpw r3, r9
/* 8146FEBC | 40 82 00 58 */	bne .L_8146FF14
/* 8146FEC0 | 89 01 00 52 */	lbz r8, 0x52(r1)
/* 8146FEC4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146FEC8 | 41 82 00 14 */	beq .L_8146FEDC
/* 8146FECC | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8146FED0 | 88 C1 02 FC */	lbz r6, 0x2fc(r1)
/* 8146FED4 | 7C 07 30 00 */	cmpw r7, r6
/* 8146FED8 | 41 82 00 20 */	beq .L_8146FEF8
.L_8146FEDC:
/* 8146FEDC | 88 A1 00 52 */	lbz r5, 0x52(r1)
/* 8146FEE0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8146FEE4 | 40 82 00 20 */	bne .L_8146FF04
/* 8146FEE8 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8146FEEC | 88 81 02 FC */	lbz r4, 0x2fc(r1)
/* 8146FEF0 | 7C 09 20 00 */	cmpw r9, r4
/* 8146FEF4 | 40 81 00 10 */	ble .L_8146FF04
.L_8146FEF8:
/* 8146FEF8 | 39 40 00 01 */	li r10, 0x1
/* 8146FEFC | 99 41 00 63 */	stb r10, 0x63(r1)
/* 8146FF00 | 48 00 00 20 */	b .L_8146FF20
.L_8146FF04:
/* 8146FF04 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 8146FF08 | 28 03 00 09 */	cmplwi r3, 0x9
/* 8146FF0C | 41 82 02 CC */	beq .L_814701D8
/* 8146FF10 | 48 00 00 10 */	b .L_8146FF20
.L_8146FF14:
/* 8146FF14 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 8146FF18 | 28 08 00 09 */	cmplwi r8, 0x9
/* 8146FF1C | 41 82 02 BC */	beq .L_814701D8
.L_8146FF20:
/* 8146FF20 | 88 61 00 63 */	lbz r3, 0x63(r1)
/* 8146FF24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146FF28 | 40 82 00 D4 */	bne .L_8146FFFC
/* 8146FF2C | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 8146FF30 | 88 E5 00 00 */	lbz r7, 0x0(r5)
/* 8146FF34 | 54 E4 07 7E */	clrlwi r4, r7, 29
/* 8146FF38 | 88 C1 02 FC */	lbz r6, 0x2fc(r1)
/* 8146FF3C | 7C 04 30 00 */	cmpw r4, r6
/* 8146FF40 | 41 80 02 98 */	blt .L_814701D8
/* 8146FF44 | 88 A1 02 F5 */	lbz r5, 0x2f5(r1)
/* 8146FF48 | 88 81 02 F1 */	lbz r4, 0x2f1(r1)
/* 8146FF4C | 81 21 00 B8 */	lwz r9, 0xb8(r1)
/* 8146FF50 | 89 09 00 00 */	lbz r8, 0x0(r9)
/* 8146FF54 | 7C 84 40 38 */	and r4, r4, r8
/* 8146FF58 | 7C 05 20 00 */	cmpw r5, r4
/* 8146FF5C | 40 82 02 7C */	bne .L_814701D8
/* 8146FF60 | 88 E1 02 F6 */	lbz r7, 0x2f6(r1)
/* 8146FF64 | 88 61 02 F2 */	lbz r3, 0x2f2(r1)
/* 8146FF68 | 80 C1 00 B8 */	lwz r6, 0xb8(r1)
/* 8146FF6C | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 8146FF70 | 7C 64 28 38 */	and r4, r3, r5
/* 8146FF74 | 7C 07 20 00 */	cmpw r7, r4
/* 8146FF78 | 40 82 02 60 */	bne .L_814701D8
/* 8146FF7C | 89 01 02 F7 */	lbz r8, 0x2f7(r1)
/* 8146FF80 | 88 61 02 F3 */	lbz r3, 0x2f3(r1)
/* 8146FF84 | 80 E1 00 B8 */	lwz r7, 0xb8(r1)
/* 8146FF88 | 88 C7 00 02 */	lbz r6, 0x2(r7)
/* 8146FF8C | 7C 65 30 38 */	and r5, r3, r6
/* 8146FF90 | 7C 08 28 00 */	cmpw r8, r5
/* 8146FF94 | 40 82 02 44 */	bne .L_814701D8
/* 8146FF98 | 88 81 02 F8 */	lbz r4, 0x2f8(r1)
/* 8146FF9C | 88 61 02 F4 */	lbz r3, 0x2f4(r1)
/* 8146FFA0 | 81 21 00 B8 */	lwz r9, 0xb8(r1)
/* 8146FFA4 | 89 09 00 03 */	lbz r8, 0x3(r9)
/* 8146FFA8 | 7C 67 40 38 */	and r7, r3, r8
/* 8146FFAC | 7C 04 38 00 */	cmpw r4, r7
/* 8146FFB0 | 40 82 02 28 */	bne .L_814701D8
/* 8146FFB4 | 89 01 00 52 */	lbz r8, 0x52(r1)
/* 8146FFB8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8146FFBC | 41 82 00 1C */	beq .L_8146FFD8
/* 8146FFC0 | 80 E1 00 B8 */	lwz r7, 0xb8(r1)
/* 8146FFC4 | 88 C7 00 00 */	lbz r6, 0x0(r7)
/* 8146FFC8 | 54 C5 07 7E */	clrlwi r5, r6, 29
/* 8146FFCC | 88 81 02 FC */	lbz r4, 0x2fc(r1)
/* 8146FFD0 | 7C 05 20 00 */	cmpw r5, r4
/* 8146FFD4 | 41 82 00 28 */	beq .L_8146FFFC
.L_8146FFD8:
/* 8146FFD8 | 88 61 00 52 */	lbz r3, 0x52(r1)
/* 8146FFDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8146FFE0 | 40 82 01 F8 */	bne .L_814701D8
/* 8146FFE4 | 81 81 00 B8 */	lwz r12, 0xb8(r1)
/* 8146FFE8 | 89 6C 00 00 */	lbz r11, 0x0(r12)
/* 8146FFEC | 55 67 07 7E */	clrlwi r7, r11, 29
/* 8146FFF0 | 89 41 02 FC */	lbz r10, 0x2fc(r1)
/* 8146FFF4 | 7C 07 50 00 */	cmpw r7, r10
/* 8146FFF8 | 40 81 01 E0 */	ble .L_814701D8
.L_8146FFFC:
/* 8146FFFC | 81 21 00 E4 */	lwz r9, 0xe4(r1)
/* 81470000 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81470004 | 41 82 00 2C */	beq .L_81470030
/* 81470008 | 81 01 00 E4 */	lwz r8, 0xe4(r1)
/* 8147000C | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81470010 | 7C 88 1A 14 */	add r4, r8, r3
/* 81470014 | 90 81 00 C4 */	stw r4, 0xc4(r1)
/* 81470018 | 80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 8147001C | 89 23 00 00 */	lbz r9, 0x0(r3)
/* 81470020 | 89 01 00 6D */	lbz r8, 0x6d(r1)
/* 81470024 | 7D 25 40 38 */	and r5, r9, r8
/* 81470028 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8147002C | 41 82 01 AC */	beq .L_814701D8
.L_81470030:
/* 81470030 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81470034 | 7F C4 F3 78 */	mr r4, r30
/* 81470038 | 48 00 F3 91 */	bl Zi8Ord2Uni
/* 8147003C | 7C 67 1B 78 */	mr r7, r3
/* 81470040 | B0 E1 00 94 */	sth r7, 0x94(r1)
/* 81470044 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 81470048 | 88 BE 01 20 */	lbz r5, 0x120(r30)
/* 8147004C | 54 A4 08 3C */	slwi r4, r5, 1
/* 81470050 | 7D 9E 22 14 */	add r12, r30, r4
/* 81470054 | B0 CC 00 A0 */	sth r6, 0xa0(r12)
/* 81470058 | A0 81 00 94 */	lhz r4, 0x94(r1)
/* 8147005C | 89 7E 01 20 */	lbz r11, 0x120(r30)
/* 81470060 | 55 6A 08 3C */	slwi r10, r11, 1
/* 81470064 | 7C 7E 52 14 */	add r3, r30, r10
/* 81470068 | B0 83 00 20 */	sth r4, 0x20(r3)
/* 8147006C | 88 81 00 5D */	lbz r4, 0x5d(r1)
/* 81470070 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81470074 | 40 82 00 54 */	bne .L_814700C8
/* 81470078 | 89 21 00 5E */	lbz r9, 0x5e(r1)
/* 8147007C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81470080 | 41 82 00 28 */	beq .L_814700A8
/* 81470084 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81470088 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 8147008C | 7F C5 F3 78 */	mr r5, r30
/* 81470090 | 4B FF AA 8D */	bl Zi8SetFindCand
/* 81470094 | 7C 65 1B 78 */	mr r5, r3
/* 81470098 | 54 A7 06 3E */	clrlwi r7, r5, 24
/* 8147009C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814700A0 | 40 82 01 38 */	bne .L_814701D8
/* 814700A4 | 48 00 00 48 */	b .L_814700EC
.L_814700A8:
/* 814700A8 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 814700AC | 7F C4 F3 78 */	mr r4, r30
/* 814700B0 | 48 00 BC 45 */	bl Zi8IsDupWChar
/* 814700B4 | 7C 68 1B 78 */	mr r8, r3
/* 814700B8 | 55 06 06 3E */	clrlwi r6, r8, 24
/* 814700BC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814700C0 | 40 82 01 18 */	bne .L_814701D8
/* 814700C4 | 48 00 00 28 */	b .L_814700EC
.L_814700C8:
/* 814700C8 | 38 61 00 94 */	addi r3, r1, 0x94
/* 814700CC | 38 80 00 01 */	li r4, 0x1
/* 814700D0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814700D4 | 7F C5 F3 78 */	mr r5, r30
/* 814700D8 | 48 00 BD 19 */	bl Zi8IsDupWordW
/* 814700DC | 7C 64 1B 78 */	mr r4, r3
/* 814700E0 | 54 87 06 3E */	clrlwi r7, r4, 24
/* 814700E4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814700E8 | 40 82 00 F0 */	bne .L_814701D8
.L_814700EC:
/* 814700EC | A0 61 00 72 */	lhz r3, 0x72(r1)
/* 814700F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814700F4 | 41 82 00 14 */	beq .L_81470108
/* 814700F8 | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 814700FC | 3B 65 FF FF */	subi r27, r5, 0x1
/* 81470100 | B3 61 00 72 */	sth r27, 0x72(r1)
/* 81470104 | 48 00 00 D4 */	b .L_814701D8
.L_81470108:
/* 81470108 | 88 9E 01 20 */	lbz r4, 0x120(r30)
/* 8147010C | 38 C4 00 01 */	addi r6, r4, 0x1
/* 81470110 | 98 DE 01 20 */	stb r6, 0x120(r30)
/* 81470114 | 54 C3 06 3E */	clrlwi r3, r6, 24
/* 81470118 | 28 03 00 40 */	cmplwi r3, 0x40
/* 8147011C | 41 80 00 0C */	blt .L_81470128
/* 81470120 | 39 00 00 00 */	li r8, 0x0
/* 81470124 | 99 1E 01 20 */	stb r8, 0x120(r30)
.L_81470128:
/* 81470128 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8147012C | 38 85 00 01 */	addi r4, r5, 0x1
/* 81470130 | 90 81 00 CC */	stw r4, 0xcc(r1)
/* 81470134 | 88 E1 00 5D */	lbz r7, 0x5d(r1)
/* 81470138 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8147013C | 41 82 00 64 */	beq .L_814701A0
/* 81470140 | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 81470144 | 38 66 00 01 */	addi r3, r6, 0x1
/* 81470148 | 98 61 00 67 */	stb r3, 0x67(r1)
/* 8147014C | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 81470150 | 83 81 00 BC */	lwz r28, 0xbc(r1)
/* 81470154 | 81 81 01 04 */	lwz r12, 0x104(r1)
/* 81470158 | 7D 84 63 78 */	mr r4, r12
/* 8147015C | 54 8A 08 3C */	slwi r10, r4, 1
/* 81470160 | 7C BC 53 2E */	sthx r5, r28, r10
/* 81470164 | 39 6C 00 01 */	addi r11, r12, 0x1
/* 81470168 | 91 61 01 04 */	stw r11, 0x104(r1)
/* 8147016C | 39 20 00 20 */	li r9, 0x20
/* 81470170 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 81470174 | 81 01 01 04 */	lwz r8, 0x104(r1)
/* 81470178 | 7D 04 43 78 */	mr r4, r8
/* 8147017C | 54 87 08 3C */	slwi r7, r4, 1
/* 81470180 | 7D 23 3B 2E */	sthx r9, r3, r7
/* 81470184 | 38 A8 00 01 */	addi r5, r8, 0x1
/* 81470188 | 90 A1 01 04 */	stw r5, 0x104(r1)
/* 8147018C | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 81470190 | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 81470194 | 7C 06 20 00 */	cmpw r6, r4
/* 81470198 | 41 81 45 B0 */	bgt .L_81474748
/* 8147019C | 48 00 00 28 */	b .L_814701C4
.L_814701A0:
/* 814701A0 | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 814701A4 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 814701A8 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 814701AC | 7D 04 43 78 */	mr r4, r8
/* 814701B0 | 54 89 06 3E */	clrlwi r9, r4, 24
/* 814701B4 | 55 24 08 3C */	slwi r4, r9, 1
/* 814701B8 | 7C A3 23 2E */	sthx r5, r3, r4
/* 814701BC | 38 68 00 01 */	addi r3, r8, 0x1
/* 814701C0 | 98 61 00 67 */	stb r3, 0x67(r1)
.L_814701C4:
/* 814701C4 | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 814701C8 | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 814701CC | 88 FF 00 1C */	lbz r7, 0x1c(r31)
/* 814701D0 | 7C 05 38 40 */	cmplw r5, r7
/* 814701D4 | 40 80 45 74 */	bge .L_81474748
.L_814701D8:
/* 814701D8 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 814701DC | 38 64 00 01 */	addi r3, r4, 0x1
/* 814701E0 | B0 61 00 A2 */	sth r3, 0xa2(r1)
.L_814701E4:
/* 814701E4 | A0 C1 00 A2 */	lhz r6, 0xa2(r1)
/* 814701E8 | 54 C8 04 3E */	clrlwi r8, r6, 16
/* 814701EC | A0 A1 00 8A */	lhz r5, 0x8a(r1)
/* 814701F0 | 7C 08 28 40 */	cmplw r8, r5
/* 814701F4 | 41 80 FB 18 */	blt .L_8146FD0C
.L_814701F8:
/* 814701F8 | 80 E1 00 EC */	lwz r7, 0xec(r1)
/* 814701FC | 90 E1 01 00 */	stw r7, 0x100(r1)
/* 81470200 | A0 81 00 7A */	lhz r4, 0x7a(r1)
/* 81470204 | B0 81 00 7C */	sth r4, 0x7c(r1)
/* 81470208 | 88 C1 02 FC */	lbz r6, 0x2fc(r1)
/* 8147020C | 28 06 00 01 */	cmplwi r6, 0x1
/* 81470210 | 40 81 06 9C */	ble .L_814708AC
/* 81470214 | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 81470218 | 28 05 00 02 */	cmplwi r5, 0x2
/* 8147021C | 40 80 06 90 */	bge .L_814708AC
/* 81470220 | 88 7D 00 00 */	lbz r3, 0x0(r29)
/* 81470224 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81470228 | 40 82 06 84 */	bne .L_814708AC
/* 8147022C | 89 21 00 62 */	lbz r9, 0x62(r1)
/* 81470230 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81470234 | 41 82 06 78 */	beq .L_814708AC
/* 81470238 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 8147023C | 28 08 00 05 */	cmplwi r8, 0x5
/* 81470240 | 41 82 06 6C */	beq .L_814708AC
/* 81470244 | 38 E0 00 00 */	li r7, 0x0
/* 81470248 | 90 E1 01 08 */	stw r7, 0x108(r1)
.L_8147024C:
/* 8147024C | 80 81 00 EC */	lwz r4, 0xec(r1)
/* 81470250 | 90 81 01 00 */	stw r4, 0x100(r1)
/* 81470254 | A0 C1 00 7A */	lhz r6, 0x7a(r1)
/* 81470258 | B0 C1 00 7C */	sth r6, 0x7c(r1)
/* 8147025C | 38 A0 00 00 */	li r5, 0x0
/* 81470260 | B0 A1 00 86 */	sth r5, 0x86(r1)
/* 81470264 | 38 60 00 01 */	li r3, 0x1
/* 81470268 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147026C | 38 80 00 10 */	li r4, 0x10
/* 81470270 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81470274 | 7F C5 F3 78 */	mr r5, r30
/* 81470278 | 4B FE F1 B9 */	bl Zi8GetTableCount
/* 8147027C | 7C 64 1B 78 */	mr r4, r3
/* 81470280 | B0 81 00 84 */	sth r4, 0x84(r1)
/* 81470284 | 38 60 00 01 */	li r3, 0x1
/* 81470288 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147028C | 7F C4 F3 78 */	mr r4, r30
/* 81470290 | 4B FE F1 E5 */	bl Zi8GetFormatVersion
/* 81470294 | 54 6A 06 3E */	clrlwi r10, r3, 24
/* 81470298 | 28 0A 00 04 */	cmplwi r10, 0x4
/* 8147029C | 41 80 02 44 */	blt .L_814704E0
/* 814702A0 | A1 21 00 84 */	lhz r9, 0x84(r1)
/* 814702A4 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814702A8 | 41 82 02 38 */	beq .L_814704E0
/* 814702AC | 80 C1 00 C0 */	lwz r6, 0xc0(r1)
/* 814702B0 | A0 A6 00 00 */	lhz r5, 0x0(r6)
/* 814702B4 | 28 05 EF 00 */	cmplwi r5, 0xef00
/* 814702B8 | 41 82 02 28 */	beq .L_814704E0
/* 814702BC | 38 60 00 01 */	li r3, 0x1
/* 814702C0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814702C4 | 38 80 00 10 */	li r4, 0x10
/* 814702C8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814702CC | 7F C5 F3 78 */	mr r5, r30
/* 814702D0 | 4B FE F0 E1 */	bl Zi8GetTableAddress
/* 814702D4 | 7C 64 1B 78 */	mr r4, r3
/* 814702D8 | 90 81 00 D8 */	stw r4, 0xd8(r1)
/* 814702DC | 39 00 00 00 */	li r8, 0x0
/* 814702E0 | B1 01 00 84 */	sth r8, 0x84(r1)
/* 814702E4 | 38 E0 00 00 */	li r7, 0x0
/* 814702E8 | B0 E1 00 82 */	sth r7, 0x82(r1)
/* 814702EC | 80 C1 01 08 */	lwz r6, 0x108(r1)
/* 814702F0 | 2C 06 00 01 */	cmpwi r6, 0x1
/* 814702F4 | 41 82 00 3C */	beq .L_81470330
/* 814702F8 | 40 80 00 10 */	bge .L_81470308
/* 814702FC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81470300 | 40 80 00 14 */	bge .L_81470314
/* 81470304 | 48 00 01 5C */	b .L_81470460
.L_81470308:
/* 81470308 | 2C 06 00 03 */	cmpwi r6, 0x3
/* 8147030C | 40 80 01 54 */	bge .L_81470460
/* 81470310 | 48 00 01 38 */	b .L_81470448
.L_81470314:
/* 81470314 | 38 A0 00 00 */	li r5, 0x0
/* 81470318 | B0 A1 00 84 */	sth r5, 0x84(r1)
/* 8147031C | 38 60 00 02 */	li r3, 0x2
/* 81470320 | B0 61 00 82 */	sth r3, 0x82(r1)
/* 81470324 | 38 80 00 01 */	li r4, 0x1
/* 81470328 | 90 81 01 08 */	stw r4, 0x108(r1)
/* 8147032C | 48 00 01 34 */	b .L_81470460
.L_81470330:
/* 81470330 | A1 61 03 42 */	lhz r11, 0x342(r1)
/* 81470334 | 3C 6B FF FF */	subis r3, r11, 0x1
/* 81470338 | 38 63 10 FF */	addi r3, r3, 0x10ff
/* 8147033C | 28 03 00 0A */	cmplwi r3, 0xa
/* 81470340 | 41 81 00 E0 */	bgt .L_81470420
/* 81470344 | 3D 40 81 67 */	lis r10, jumptable_8166AAB4@ha
/* 81470348 | 38 EA AA B4 */	addi r7, r10, jumptable_8166AAB4@l
/* 8147034C | 54 63 10 3A */	slwi r3, r3, 2
/* 81470350 | 7C E7 18 2E */	lwzx r7, r7, r3
/* 81470354 | 7C E9 03 A6 */	mtctr r7
/* 81470358 | 4E 80 04 20 */	bctr
.L_8147035C:
/* 8147035C | 38 C0 00 08 */	li r6, 0x8
/* 81470360 | B0 C1 00 84 */	sth r6, 0x84(r1)
/* 81470364 | 38 A0 00 0A */	li r5, 0xa
/* 81470368 | B0 A1 00 82 */	sth r5, 0x82(r1)
/* 8147036C | 48 00 00 B4 */	b .L_81470420
.L_81470370:
/* 81470370 | 38 80 00 0C */	li r4, 0xc
/* 81470374 | B0 81 00 84 */	sth r4, 0x84(r1)
/* 81470378 | 39 20 00 0E */	li r9, 0xe
/* 8147037C | B1 21 00 82 */	sth r9, 0x82(r1)
/* 81470380 | 48 00 00 A0 */	b .L_81470420
.L_81470384:
/* 81470384 | 39 00 00 10 */	li r8, 0x10
/* 81470388 | B1 01 00 84 */	sth r8, 0x84(r1)
/* 8147038C | 38 60 00 12 */	li r3, 0x12
/* 81470390 | B0 61 00 82 */	sth r3, 0x82(r1)
/* 81470394 | 48 00 00 8C */	b .L_81470420
.L_81470398:
/* 81470398 | 38 C0 00 14 */	li r6, 0x14
/* 8147039C | B0 C1 00 84 */	sth r6, 0x84(r1)
/* 814703A0 | 38 80 00 16 */	li r4, 0x16
/* 814703A4 | B0 81 00 82 */	sth r4, 0x82(r1)
/* 814703A8 | 48 00 00 78 */	b .L_81470420
.L_814703AC:
/* 814703AC | 38 A0 00 18 */	li r5, 0x18
/* 814703B0 | B0 A1 00 84 */	sth r5, 0x84(r1)
/* 814703B4 | 38 E0 00 1A */	li r7, 0x1a
/* 814703B8 | B0 E1 00 82 */	sth r7, 0x82(r1)
/* 814703BC | 48 00 00 64 */	b .L_81470420
.L_814703C0:
/* 814703C0 | 38 80 00 1C */	li r4, 0x1c
/* 814703C4 | B0 81 00 84 */	sth r4, 0x84(r1)
/* 814703C8 | 38 60 00 1E */	li r3, 0x1e
/* 814703CC | B0 61 00 82 */	sth r3, 0x82(r1)
/* 814703D0 | 48 00 00 50 */	b .L_81470420
.L_814703D4:
/* 814703D4 | 39 80 00 20 */	li r12, 0x20
/* 814703D8 | B1 81 00 84 */	sth r12, 0x84(r1)
/* 814703DC | 38 C0 00 22 */	li r6, 0x22
/* 814703E0 | B0 C1 00 82 */	sth r6, 0x82(r1)
/* 814703E4 | 48 00 00 3C */	b .L_81470420
.L_814703E8:
/* 814703E8 | 38 A0 00 24 */	li r5, 0x24
/* 814703EC | B0 A1 00 84 */	sth r5, 0x84(r1)
/* 814703F0 | 38 80 00 26 */	li r4, 0x26
/* 814703F4 | B0 81 00 82 */	sth r4, 0x82(r1)
/* 814703F8 | 48 00 00 28 */	b .L_81470420
.L_814703FC:
/* 814703FC | 39 00 00 18 */	li r8, 0x18
/* 81470400 | B1 01 00 84 */	sth r8, 0x84(r1)
/* 81470404 | 39 60 00 04 */	li r11, 0x4
/* 81470408 | B1 61 00 82 */	sth r11, 0x82(r1)
/* 8147040C | 48 00 00 14 */	b .L_81470420
.L_81470410:
/* 81470410 | 38 60 00 14 */	li r3, 0x14
/* 81470414 | B0 61 00 84 */	sth r3, 0x84(r1)
/* 81470418 | 38 E0 00 0E */	li r7, 0xe
/* 8147041C | B0 E1 00 82 */	sth r7, 0x82(r1)
.L_81470420:
/* 81470420 | 89 5F 00 03 */	lbz r10, 0x3(r31)
/* 81470424 | 55 49 06 72 */	rlwinm r9, r10, 0, 25, 25
/* 81470428 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8147042C | 41 82 00 10 */	beq .L_8147043C
/* 81470430 | 38 C0 00 FF */	li r6, 0xff
/* 81470434 | 90 C1 01 08 */	stw r6, 0x108(r1)
/* 81470438 | 48 00 00 28 */	b .L_81470460
.L_8147043C:
/* 8147043C | 38 80 00 02 */	li r4, 0x2
/* 81470440 | 90 81 01 08 */	stw r4, 0x108(r1)
/* 81470444 | 48 00 00 1C */	b .L_81470460
.L_81470448:
/* 81470448 | 38 A0 00 04 */	li r5, 0x4
/* 8147044C | B0 A1 00 84 */	sth r5, 0x84(r1)
/* 81470450 | 38 60 00 06 */	li r3, 0x6
/* 81470454 | B0 61 00 82 */	sth r3, 0x82(r1)
/* 81470458 | 39 00 00 FF */	li r8, 0xff
/* 8147045C | 91 01 01 08 */	stw r8, 0x108(r1)
.L_81470460:
/* 81470460 | 80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 81470464 | A0 C1 00 84 */	lhz r6, 0x84(r1)
/* 81470468 | 7C C7 30 AE */	lbzx r6, r7, r6
/* 8147046C | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 81470470 | A1 21 00 84 */	lhz r9, 0x84(r1)
/* 81470474 | 7C A9 22 14 */	add r5, r9, r4
/* 81470478 | 89 05 00 01 */	lbz r8, 0x1(r5)
/* 8147047C | 55 03 04 3E */	clrlwi r3, r8, 16
/* 81470480 | 54 64 40 2E */	slwi r4, r3, 8
/* 81470484 | 7C C7 23 78 */	or r7, r6, r4
/* 81470488 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 8147048C | B0 C1 00 86 */	sth r6, 0x86(r1)
/* 81470490 | 81 21 01 00 */	lwz r9, 0x100(r1)
/* 81470494 | A0 61 00 86 */	lhz r3, 0x86(r1)
/* 81470498 | 1C A3 00 0C */	mulli r5, r3, 0xc
/* 8147049C | 7C 89 2A 14 */	add r4, r9, r5
/* 814704A0 | 90 81 01 00 */	stw r4, 0x100(r1)
/* 814704A4 | A1 41 00 86 */	lhz r10, 0x86(r1)
/* 814704A8 | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 814704AC | A1 81 00 82 */	lhz r12, 0x82(r1)
/* 814704B0 | 7C E3 60 AE */	lbzx r7, r3, r12
/* 814704B4 | 81 01 00 D8 */	lwz r8, 0xd8(r1)
/* 814704B8 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 814704BC | 7C A6 42 14 */	add r5, r6, r8
/* 814704C0 | 88 65 00 01 */	lbz r3, 0x1(r5)
/* 814704C4 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 814704C8 | 54 8B 40 2E */	slwi r11, r4, 8
/* 814704CC | 7C E9 5B 78 */	or r9, r7, r11
/* 814704D0 | 7C EA 48 50 */	subf r7, r10, r9
/* 814704D4 | 54 E8 04 3E */	clrlwi r8, r7, 16
/* 814704D8 | B1 01 00 7C */	sth r8, 0x7c(r1)
/* 814704DC | 48 00 00 0C */	b .L_814704E8
.L_814704E0:
/* 814704E0 | 39 40 00 FF */	li r10, 0xff
/* 814704E4 | 91 41 01 08 */	stw r10, 0x108(r1)
.L_814704E8:
/* 814704E8 | A1 01 00 7C */	lhz r8, 0x7c(r1)
/* 814704EC | B1 01 00 88 */	sth r8, 0x88(r1)
.L_814704F0:
/* 814704F0 | 88 61 02 D8 */	lbz r3, 0x2d8(r1)
/* 814704F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814704F8 | 41 82 00 68 */	beq .L_81470560
/* 814704FC | A0 81 00 7C */	lhz r4, 0x7c(r1)
/* 81470500 | 7C 86 23 78 */	mr r6, r4
/* 81470504 | 39 24 FF FF */	subi r9, r4, 0x1
/* 81470508 | B1 21 00 7C */	sth r9, 0x7c(r1)
/* 8147050C | 54 C8 04 3E */	clrlwi r8, r6, 16
/* 81470510 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81470514 | 41 82 03 8C */	beq .L_814708A0
/* 81470518 | 88 A1 02 F5 */	lbz r5, 0x2f5(r1)
/* 8147051C | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81470520 | 88 E4 00 00 */	lbz r7, 0x0(r4)
/* 81470524 | 88 61 02 F1 */	lbz r3, 0x2f1(r1)
/* 81470528 | 7C E6 18 38 */	and r6, r7, r3
/* 8147052C | 7C 05 30 00 */	cmpw r5, r6
/* 81470530 | 40 82 00 C4 */	bne .L_814705F4
/* 81470534 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81470538 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 8147053C | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 81470540 | 38 C1 00 98 */	addi r6, r1, 0x98
/* 81470544 | 7F C7 F3 78 */	mr r7, r30
/* 81470548 | 48 00 CC 01 */	bl Zi8SecMatchChar
/* 8147054C | 7C 64 1B 78 */	mr r4, r3
/* 81470550 | 54 8A 06 3E */	clrlwi r10, r4, 24
/* 81470554 | 28 0A 00 02 */	cmplwi r10, 0x2
/* 81470558 | 41 82 00 AC */	beq .L_81470604
/* 8147055C | 48 00 00 98 */	b .L_814705F4
.L_81470560:
/* 81470560 | 88 A1 02 F8 */	lbz r5, 0x2f8(r1)
/* 81470564 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81470568 | 38 81 00 7C */	addi r4, r1, 0x7c
/* 8147056C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81470570 | 39 21 01 00 */	addi r9, r1, 0x100
/* 81470574 | 91 21 00 10 */	stw r9, 0x10(r1)
/* 81470578 | 38 E1 00 98 */	addi r7, r1, 0x98
/* 8147057C | 90 E1 00 14 */	stw r7, 0x14(r1)
/* 81470580 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81470584 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81470588 | 88 81 02 F1 */	lbz r4, 0x2f1(r1)
/* 8147058C | 88 A1 02 F5 */	lbz r5, 0x2f5(r1)
/* 81470590 | 88 C1 02 F2 */	lbz r6, 0x2f2(r1)
/* 81470594 | 88 E1 02 F6 */	lbz r7, 0x2f6(r1)
/* 81470598 | 89 01 02 F3 */	lbz r8, 0x2f3(r1)
/* 8147059C | 89 21 02 F7 */	lbz r9, 0x2f7(r1)
/* 814705A0 | 89 41 02 F4 */	lbz r10, 0x2f4(r1)
/* 814705A4 | 48 00 CA 79 */	bl Zi8ExactMatchNextChar
/* 814705A8 | 7C 66 1B 78 */	mr r6, r3
/* 814705AC | 54 C3 06 3E */	clrlwi r3, r6, 24
/* 814705B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814705B4 | 41 82 02 EC */	beq .L_814708A0
/* 814705B8 | A1 01 02 FA */	lhz r8, 0x2fa(r1)
/* 814705BC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814705C0 | 40 82 00 10 */	bne .L_814705D0
/* 814705C4 | 88 A1 02 FC */	lbz r5, 0x2fc(r1)
/* 814705C8 | 28 05 00 08 */	cmplwi r5, 0x8
/* 814705CC | 41 80 00 38 */	blt .L_81470604
.L_814705D0:
/* 814705D0 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 814705D4 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 814705D8 | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 814705DC | 38 C1 00 98 */	addi r6, r1, 0x98
/* 814705E0 | 7F C7 F3 78 */	mr r7, r30
/* 814705E4 | 48 00 CB 65 */	bl Zi8SecMatchChar
/* 814705E8 | 54 67 06 3E */	clrlwi r7, r3, 24
/* 814705EC | 28 07 00 02 */	cmplwi r7, 0x2
/* 814705F0 | 41 82 00 14 */	beq .L_81470604
.L_814705F4:
/* 814705F4 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 814705F8 | 38 86 00 0C */	addi r4, r6, 0xc
/* 814705FC | 90 81 01 00 */	stw r4, 0x100(r1)
/* 81470600 | 4B FF FE F0 */	b .L_814704F0
.L_81470604:
/* 81470604 | A0 A1 00 86 */	lhz r5, 0x86(r1)
/* 81470608 | A0 81 00 7C */	lhz r4, 0x7c(r1)
/* 8147060C | A0 61 00 88 */	lhz r3, 0x88(r1)
/* 81470610 | 7C E4 18 50 */	subf r7, r4, r3
/* 81470614 | 7D 67 2A 14 */	add r11, r7, r5
/* 81470618 | 39 4B FF FF */	subi r10, r11, 0x1
/* 8147061C | 55 48 04 3E */	clrlwi r8, r10, 16
/* 81470620 | B1 01 00 A2 */	sth r8, 0xa2(r1)
/* 81470624 | A1 21 00 A2 */	lhz r9, 0xa2(r1)
/* 81470628 | 89 1E 01 20 */	lbz r8, 0x120(r30)
/* 8147062C | 55 07 08 3C */	slwi r7, r8, 1
/* 81470630 | 7C DE 3A 14 */	add r6, r30, r7
/* 81470634 | B1 26 00 A0 */	sth r9, 0xa0(r6)
/* 81470638 | A0 A1 00 98 */	lhz r5, 0x98(r1)
/* 8147063C | 89 3E 01 20 */	lbz r9, 0x120(r30)
/* 81470640 | 55 24 08 3C */	slwi r4, r9, 1
/* 81470644 | 7D 5E 22 14 */	add r10, r30, r4
/* 81470648 | B0 AA 00 20 */	sth r5, 0x20(r10)
/* 8147064C | 80 61 00 E4 */	lwz r3, 0xe4(r1)
/* 81470650 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81470654 | 41 82 00 2C */	beq .L_81470680
/* 81470658 | 81 01 00 E4 */	lwz r8, 0xe4(r1)
/* 8147065C | A0 61 00 A2 */	lhz r3, 0xa2(r1)
/* 81470660 | 7C A8 1A 14 */	add r5, r8, r3
/* 81470664 | 90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 81470668 | 80 E1 00 C4 */	lwz r7, 0xc4(r1)
/* 8147066C | 88 87 00 00 */	lbz r4, 0x0(r7)
/* 81470670 | 88 C1 00 6D */	lbz r6, 0x6d(r1)
/* 81470674 | 7C 85 30 38 */	and r5, r4, r6
/* 81470678 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8147067C | 41 82 FF 78 */	beq .L_814705F4
.L_81470680:
/* 81470680 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 81470684 | 54 89 04 3E */	clrlwi r9, r4, 16
/* 81470688 | A1 01 00 8C */	lhz r8, 0x8c(r1)
/* 8147068C | 7C 09 40 40 */	cmplw r9, r8
/* 81470690 | 41 82 FF 64 */	beq .L_814705F4
/* 81470694 | 88 81 00 5D */	lbz r4, 0x5d(r1)
/* 81470698 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147069C | 41 82 00 2C */	beq .L_814706C8
/* 814706A0 | 38 61 00 98 */	addi r3, r1, 0x98
/* 814706A4 | 38 80 00 01 */	li r4, 0x1
/* 814706A8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814706AC | 7F C5 F3 78 */	mr r5, r30
/* 814706B0 | 48 00 B7 41 */	bl Zi8IsDupWordW
/* 814706B4 | 7C 67 1B 78 */	mr r7, r3
/* 814706B8 | 54 E3 06 3E */	clrlwi r3, r7, 24
/* 814706BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814706C0 | 40 82 FF 34 */	bne .L_814705F4
/* 814706C4 | 48 00 00 50 */	b .L_81470714
.L_814706C8:
/* 814706C8 | 88 C1 00 5E */	lbz r6, 0x5e(r1)
/* 814706CC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814706D0 | 41 82 00 28 */	beq .L_814706F8
/* 814706D4 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 814706D8 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 814706DC | 7F C5 F3 78 */	mr r5, r30
/* 814706E0 | 4B FF A4 3D */	bl Zi8SetFindCand
/* 814706E4 | 7C 65 1B 78 */	mr r5, r3
/* 814706E8 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 814706EC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814706F0 | 40 82 FF 04 */	bne .L_814705F4
/* 814706F4 | 48 00 00 20 */	b .L_81470714
.L_814706F8:
/* 814706F8 | A0 61 00 A2 */	lhz r3, 0xa2(r1)
/* 814706FC | 7F C4 F3 78 */	mr r4, r30
/* 81470700 | 48 00 B5 F5 */	bl Zi8IsDupWChar
/* 81470704 | 7C 68 1B 78 */	mr r8, r3
/* 81470708 | 55 03 06 3E */	clrlwi r3, r8, 24
/* 8147070C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81470710 | 40 82 FE E4 */	bne .L_814705F4
.L_81470714:
/* 81470714 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 81470718 | B0 E1 00 8C */	sth r7, 0x8c(r1)
/* 8147071C | A0 C1 00 72 */	lhz r6, 0x72(r1)
/* 81470720 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81470724 | 41 82 00 44 */	beq .L_81470768
/* 81470728 | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 8147072C | 38 85 FF FF */	subi r4, r5, 0x1
/* 81470730 | B0 81 00 72 */	sth r4, 0x72(r1)
/* 81470734 | 88 61 00 66 */	lbz r3, 0x66(r1)
/* 81470738 | 28 03 00 05 */	cmplwi r3, 0x5
/* 8147073C | 40 80 FE B8 */	bge .L_814705F4
/* 81470740 | A1 21 00 98 */	lhz r9, 0x98(r1)
/* 81470744 | 89 01 00 66 */	lbz r8, 0x66(r1)
/* 81470748 | 7D 07 43 78 */	mr r7, r8
/* 8147074C | 54 E5 06 3E */	clrlwi r5, r7, 24
/* 81470750 | 54 A4 08 3C */	slwi r4, r5, 1
/* 81470754 | 38 61 01 18 */	addi r3, r1, 0x118
/* 81470758 | 7D 23 23 2E */	sthx r9, r3, r4
/* 8147075C | 38 C8 00 01 */	addi r6, r8, 0x1
/* 81470760 | 98 C1 00 66 */	stb r6, 0x66(r1)
/* 81470764 | 4B FF FE 90 */	b .L_814705F4
.L_81470768:
/* 81470768 | 89 01 00 5D */	lbz r8, 0x5d(r1)
/* 8147076C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81470770 | 41 82 00 64 */	beq .L_814707D4
/* 81470774 | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 81470778 | 38 C7 00 01 */	addi r6, r7, 0x1
/* 8147077C | 98 C1 00 67 */	stb r6, 0x67(r1)
/* 81470780 | A0 A1 00 98 */	lhz r5, 0x98(r1)
/* 81470784 | 80 81 00 BC */	lwz r4, 0xbc(r1)
/* 81470788 | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 8147078C | 7C 6C 1B 78 */	mr r12, r3
/* 81470790 | 55 87 08 3C */	slwi r7, r12, 1
/* 81470794 | 7C A4 3B 2E */	sthx r5, r4, r7
/* 81470798 | 39 63 00 01 */	addi r11, r3, 0x1
/* 8147079C | 91 61 01 04 */	stw r11, 0x104(r1)
/* 814707A0 | 39 40 00 20 */	li r10, 0x20
/* 814707A4 | 81 21 00 BC */	lwz r9, 0xbc(r1)
/* 814707A8 | 81 01 01 04 */	lwz r8, 0x104(r1)
/* 814707AC | 7D 03 43 78 */	mr r3, r8
/* 814707B0 | 54 63 08 3C */	slwi r3, r3, 1
/* 814707B4 | 7D 49 1B 2E */	sthx r10, r9, r3
/* 814707B8 | 38 88 00 01 */	addi r4, r8, 0x1
/* 814707BC | 90 81 01 04 */	stw r4, 0x104(r1)
/* 814707C0 | 81 21 01 04 */	lwz r9, 0x104(r1)
/* 814707C4 | 81 01 00 C8 */	lwz r8, 0xc8(r1)
/* 814707C8 | 7C 09 40 00 */	cmpw r9, r8
/* 814707CC | 41 81 3F 7C */	bgt .L_81474748
/* 814707D0 | 48 00 00 80 */	b .L_81470850
.L_814707D4:
/* 814707D4 | 38 A0 00 00 */	li r5, 0x0
/* 814707D8 | B0 A1 00 8E */	sth r5, 0x8e(r1)
/* 814707DC | 48 00 00 30 */	b .L_8147080C
.L_814707E0:
/* 814707E0 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 814707E4 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 814707E8 | 80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 814707EC | A0 81 00 8E */	lhz r4, 0x8e(r1)
/* 814707F0 | 54 8C 08 3C */	slwi r12, r4, 1
/* 814707F4 | 7C 85 62 2E */	lhzx r4, r5, r12
/* 814707F8 | 7C 06 20 40 */	cmplw r6, r4
/* 814707FC | 41 82 00 20 */	beq .L_8147081C
/* 81470800 | A1 61 00 8E */	lhz r11, 0x8e(r1)
/* 81470804 | 39 4B 00 01 */	addi r10, r11, 0x1
/* 81470808 | B1 41 00 8E */	sth r10, 0x8e(r1)
.L_8147080C:
/* 8147080C | A0 61 00 8E */	lhz r3, 0x8e(r1)
/* 81470810 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81470814 | 7C 03 20 00 */	cmpw r3, r4
/* 81470818 | 41 80 FF C8 */	blt .L_814707E0
.L_8147081C:
/* 8147081C | A1 21 00 8E */	lhz r9, 0x8e(r1)
/* 81470820 | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 81470824 | 7C 09 28 00 */	cmpw r9, r5
/* 81470828 | 41 80 FD CC */	blt .L_814705F4
/* 8147082C | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 81470830 | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 81470834 | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 81470838 | 7C C4 33 78 */	mr r4, r6
/* 8147083C | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81470840 | 54 65 08 3C */	slwi r5, r3, 1
/* 81470844 | 7C E8 2B 2E */	sthx r7, r8, r5
/* 81470848 | 38 E6 00 01 */	addi r7, r6, 0x1
/* 8147084C | 98 E1 00 67 */	stb r7, 0x67(r1)
.L_81470850:
/* 81470850 | 8B 7E 01 20 */	lbz r27, 0x120(r30)
/* 81470854 | 38 9B 00 01 */	addi r4, r27, 0x1
/* 81470858 | 98 9E 01 20 */	stb r4, 0x120(r30)
/* 8147085C | 54 86 06 3E */	clrlwi r6, r4, 24
/* 81470860 | 28 06 00 40 */	cmplwi r6, 0x40
/* 81470864 | 41 80 00 0C */	blt .L_81470870
/* 81470868 | 38 60 00 00 */	li r3, 0x0
/* 8147086C | 98 7E 01 20 */	stb r3, 0x120(r30)
.L_81470870:
/* 81470870 | 81 01 00 CC */	lwz r8, 0xcc(r1)
/* 81470874 | 38 A8 00 01 */	addi r5, r8, 0x1
/* 81470878 | 90 A1 00 CC */	stw r5, 0xcc(r1)
/* 8147087C | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81470880 | 54 87 06 3E */	clrlwi r7, r4, 24
/* 81470884 | 88 DF 00 1C */	lbz r6, 0x1c(r31)
/* 81470888 | 7C 07 30 40 */	cmplw r7, r6
/* 8147088C | 40 80 3E BC */	bge .L_81474748
/* 81470890 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81470894 | 38 A3 00 0C */	addi r5, r3, 0xc
/* 81470898 | 90 A1 01 00 */	stw r5, 0x100(r1)
/* 8147089C | 4B FF FC 54 */	b .L_814704F0
.L_814708A0:
/* 814708A0 | 83 81 01 08 */	lwz r28, 0x108(r1)
/* 814708A4 | 2C 1C 00 FF */	cmpwi r28, 0xff
/* 814708A8 | 40 82 F9 A4 */	bne .L_8147024C
.L_814708AC:
/* 814708AC | 89 9D 00 00 */	lbz r12, 0x0(r29)
/* 814708B0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814708B4 | 40 82 04 2C */	bne .L_81470CE0
/* 814708B8 | 88 81 00 62 */	lbz r4, 0x62(r1)
/* 814708BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814708C0 | 41 82 04 20 */	beq .L_81470CE0
/* 814708C4 | A1 61 00 8A */	lhz r11, 0x8a(r1)
/* 814708C8 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814708CC | 41 82 04 14 */	beq .L_81470CE0
/* 814708D0 | 89 41 00 56 */	lbz r10, 0x56(r1)
/* 814708D4 | 28 0A 00 05 */	cmplwi r10, 0x5
/* 814708D8 | 41 82 04 08 */	beq .L_81470CE0
/* 814708DC | 39 20 00 00 */	li r9, 0x0
/* 814708E0 | B1 21 00 A0 */	sth r9, 0xa0(r1)
/* 814708E4 | 48 00 03 E0 */	b .L_81470CC4
.L_814708E8:
/* 814708E8 | 80 61 00 DC */	lwz r3, 0xdc(r1)
/* 814708EC | A1 01 00 A0 */	lhz r8, 0xa0(r1)
/* 814708F0 | 55 04 08 3C */	slwi r4, r8, 1
/* 814708F4 | 7C A3 20 AE */	lbzx r5, r3, r4
/* 814708F8 | 54 A7 04 3E */	clrlwi r7, r5, 16
/* 814708FC | 54 E6 40 2E */	slwi r6, r7, 8
/* 81470900 | 80 81 00 DC */	lwz r4, 0xdc(r1)
/* 81470904 | A0 A1 00 A0 */	lhz r5, 0xa0(r1)
/* 81470908 | 54 A3 08 3C */	slwi r3, r5, 1
/* 8147090C | 7D 03 22 14 */	add r8, r3, r4
/* 81470910 | 88 88 00 01 */	lbz r4, 0x1(r8)
/* 81470914 | 7C 66 22 14 */	add r3, r6, r4
/* 81470918 | 54 69 04 3E */	clrlwi r9, r3, 16
/* 8147091C | B1 21 00 9E */	sth r9, 0x9e(r1)
/* 81470920 | 80 81 00 EC */	lwz r4, 0xec(r1)
/* 81470924 | A0 C1 00 9E */	lhz r6, 0x9e(r1)
/* 81470928 | 1C A6 00 0C */	mulli r5, r6, 0xc
/* 8147092C | 7C E4 2A 14 */	add r7, r4, r5
/* 81470930 | 90 E1 01 00 */	stw r7, 0x100(r1)
/* 81470934 | 38 80 00 01 */	li r4, 0x1
/* 81470938 | B0 81 00 7C */	sth r4, 0x7c(r1)
/* 8147093C | 88 61 00 5B */	lbz r3, 0x5b(r1)
/* 81470940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81470944 | 41 82 01 C8 */	beq .L_81470B0C
/* 81470948 | 88 C1 02 E8 */	lbz r6, 0x2e8(r1)
/* 8147094C | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 81470950 | 39 01 00 7C */	addi r8, r1, 0x7c
/* 81470954 | 91 01 00 0C */	stw r8, 0xc(r1)
/* 81470958 | 38 A1 01 00 */	addi r5, r1, 0x100
/* 8147095C | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 81470960 | 38 E1 00 98 */	addi r7, r1, 0x98
/* 81470964 | 90 E1 00 14 */	stw r7, 0x14(r1)
/* 81470968 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8147096C | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81470970 | 88 81 02 D9 */	lbz r4, 0x2d9(r1)
/* 81470974 | 88 A1 02 E5 */	lbz r5, 0x2e5(r1)
/* 81470978 | 88 C1 02 DA */	lbz r6, 0x2da(r1)
/* 8147097C | 88 E1 02 E6 */	lbz r7, 0x2e6(r1)
/* 81470980 | 89 01 02 DB */	lbz r8, 0x2db(r1)
/* 81470984 | 89 21 02 E7 */	lbz r9, 0x2e7(r1)
/* 81470988 | 89 41 02 DC */	lbz r10, 0x2dc(r1)
/* 8147098C | 48 00 C5 69 */	bl Zi8PriMatchNextChar
/* 81470990 | 7C 64 1B 78 */	mr r4, r3
/* 81470994 | 54 86 06 3E */	clrlwi r6, r4, 24
/* 81470998 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8147099C | 41 82 00 2C */	beq .L_814709C8
/* 814709A0 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 814709A4 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 814709A8 | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 814709AC | 38 C1 00 98 */	addi r6, r1, 0x98
/* 814709B0 | 7F C7 F3 78 */	mr r7, r30
/* 814709B4 | 48 00 C7 95 */	bl Zi8SecMatchChar
/* 814709B8 | 7C 65 1B 78 */	mr r5, r3
/* 814709BC | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 814709C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814709C4 | 40 82 00 14 */	bne .L_814709D8
.L_814709C8:
/* 814709C8 | A1 21 00 A0 */	lhz r9, 0xa0(r1)
/* 814709CC | 39 09 00 01 */	addi r8, r9, 0x1
/* 814709D0 | B1 01 00 A0 */	sth r8, 0xa0(r1)
/* 814709D4 | 48 00 02 F0 */	b .L_81470CC4
.L_814709D8:
/* 814709D8 | A0 E1 00 9E */	lhz r7, 0x9e(r1)
/* 814709DC | 88 9E 01 20 */	lbz r4, 0x120(r30)
/* 814709E0 | 54 86 08 3C */	slwi r6, r4, 1
/* 814709E4 | 7C BE 32 14 */	add r5, r30, r6
/* 814709E8 | B0 E5 00 A0 */	sth r7, 0xa0(r5)
/* 814709EC | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 814709F0 | 88 7E 01 20 */	lbz r3, 0x120(r30)
/* 814709F4 | 54 6A 08 3C */	slwi r10, r3, 1
/* 814709F8 | 7D 3E 52 14 */	add r9, r30, r10
/* 814709FC | B0 89 00 20 */	sth r4, 0x20(r9)
/* 81470A00 | 80 C1 00 E4 */	lwz r6, 0xe4(r1)
/* 81470A04 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81470A08 | 41 82 00 3C */	beq .L_81470A44
/* 81470A0C | 80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 81470A10 | A0 81 00 9E */	lhz r4, 0x9e(r1)
/* 81470A14 | 7D 05 22 14 */	add r8, r5, r4
/* 81470A18 | 91 01 00 C4 */	stw r8, 0xc4(r1)
/* 81470A1C | 80 E1 00 C4 */	lwz r7, 0xc4(r1)
/* 81470A20 | 88 C7 00 00 */	lbz r6, 0x0(r7)
/* 81470A24 | 88 A1 00 6D */	lbz r5, 0x6d(r1)
/* 81470A28 | 7C C3 28 38 */	and r3, r6, r5
/* 81470A2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81470A30 | 40 82 00 14 */	bne .L_81470A44
/* 81470A34 | A0 81 00 A0 */	lhz r4, 0xa0(r1)
/* 81470A38 | 39 64 00 01 */	addi r11, r4, 0x1
/* 81470A3C | B1 61 00 A0 */	sth r11, 0xa0(r1)
/* 81470A40 | 48 00 02 84 */	b .L_81470CC4
.L_81470A44:
/* 81470A44 | 88 61 00 5D */	lbz r3, 0x5d(r1)
/* 81470A48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81470A4C | 41 82 00 38 */	beq .L_81470A84
/* 81470A50 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81470A54 | 38 80 00 01 */	li r4, 0x1
/* 81470A58 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81470A5C | 7F C5 F3 78 */	mr r5, r30
/* 81470A60 | 48 00 B3 91 */	bl Zi8IsDupWordW
/* 81470A64 | 7C 67 1B 78 */	mr r7, r3
/* 81470A68 | 54 EA 06 3E */	clrlwi r10, r7, 24
/* 81470A6C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81470A70 | 41 82 00 7C */	beq .L_81470AEC
/* 81470A74 | A0 C1 00 A0 */	lhz r6, 0xa0(r1)
/* 81470A78 | 38 A6 00 01 */	addi r5, r6, 0x1
/* 81470A7C | B0 A1 00 A0 */	sth r5, 0xa0(r1)
/* 81470A80 | 48 00 02 44 */	b .L_81470CC4
.L_81470A84:
/* 81470A84 | 88 81 00 5E */	lbz r4, 0x5e(r1)
/* 81470A88 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81470A8C | 41 82 00 34 */	beq .L_81470AC0
/* 81470A90 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81470A94 | A0 81 00 9E */	lhz r4, 0x9e(r1)
/* 81470A98 | 7F C5 F3 78 */	mr r5, r30
/* 81470A9C | 4B FF A0 81 */	bl Zi8SetFindCand
/* 81470AA0 | 7C 69 1B 78 */	mr r9, r3
/* 81470AA4 | 55 28 06 3E */	clrlwi r8, r9, 24
/* 81470AA8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81470AAC | 41 82 00 40 */	beq .L_81470AEC
/* 81470AB0 | A0 61 00 A0 */	lhz r3, 0xa0(r1)
/* 81470AB4 | 38 C3 00 01 */	addi r6, r3, 0x1
/* 81470AB8 | B0 C1 00 A0 */	sth r6, 0xa0(r1)
/* 81470ABC | 48 00 02 08 */	b .L_81470CC4
.L_81470AC0:
/* 81470AC0 | A0 61 00 9E */	lhz r3, 0x9e(r1)
/* 81470AC4 | 7F C4 F3 78 */	mr r4, r30
/* 81470AC8 | 48 00 B2 2D */	bl Zi8IsDupWChar
/* 81470ACC | 7C 64 1B 78 */	mr r4, r3
/* 81470AD0 | 54 85 06 3E */	clrlwi r5, r4, 24
/* 81470AD4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81470AD8 | 41 82 00 14 */	beq .L_81470AEC
/* 81470ADC | A0 E1 00 A0 */	lhz r7, 0xa0(r1)
/* 81470AE0 | 38 87 00 01 */	addi r4, r7, 0x1
/* 81470AE4 | B0 81 00 A0 */	sth r4, 0xa0(r1)
/* 81470AE8 | 48 00 01 DC */	b .L_81470CC4
.L_81470AEC:
/* 81470AEC | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81470AF0 | 89 83 00 04 */	lbz r12, 0x4(r3)
/* 81470AF4 | 55 86 06 3A */	rlwinm r6, r12, 0, 24, 29
/* 81470AF8 | 7C C5 16 70 */	srawi r5, r6, 2
/* 81470AFC | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 81470B00 | 98 81 00 68 */	stb r4, 0x68(r1)
/* 81470B04 | 39 00 00 00 */	li r8, 0x0
/* 81470B08 | 99 01 00 5B */	stb r8, 0x5b(r1)
.L_81470B0C:
/* 81470B0C | 89 61 00 66 */	lbz r11, 0x66(r1)
/* 81470B10 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81470B14 | 41 82 00 74 */	beq .L_81470B88
/* 81470B18 | 38 60 00 00 */	li r3, 0x0
/* 81470B1C | B0 61 00 8E */	sth r3, 0x8e(r1)
/* 81470B20 | 48 00 00 30 */	b .L_81470B50
.L_81470B24:
/* 81470B24 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 81470B28 | 54 EA 04 3E */	clrlwi r10, r7, 16
/* 81470B2C | A1 21 00 8E */	lhz r9, 0x8e(r1)
/* 81470B30 | 55 26 08 3C */	slwi r6, r9, 1
/* 81470B34 | 38 81 01 18 */	addi r4, r1, 0x118
/* 81470B38 | 7C A4 32 2E */	lhzx r5, r4, r6
/* 81470B3C | 7C 0A 28 40 */	cmplw r10, r5
/* 81470B40 | 41 82 00 20 */	beq .L_81470B60
/* 81470B44 | A0 61 00 8E */	lhz r3, 0x8e(r1)
/* 81470B48 | 39 03 00 01 */	addi r8, r3, 0x1
/* 81470B4C | B1 01 00 8E */	sth r8, 0x8e(r1)
.L_81470B50:
/* 81470B50 | A0 E1 00 8E */	lhz r7, 0x8e(r1)
/* 81470B54 | 88 C1 00 66 */	lbz r6, 0x66(r1)
/* 81470B58 | 7C 07 30 00 */	cmpw r7, r6
/* 81470B5C | 41 80 FF C8 */	blt .L_81470B24
.L_81470B60:
/* 81470B60 | A0 C1 00 8E */	lhz r6, 0x8e(r1)
/* 81470B64 | 88 81 00 66 */	lbz r4, 0x66(r1)
/* 81470B68 | 7C 06 20 00 */	cmpw r6, r4
/* 81470B6C | 40 80 00 1C */	bge .L_81470B88
/* 81470B70 | 39 20 00 01 */	li r9, 0x1
/* 81470B74 | 99 21 00 5B */	stb r9, 0x5b(r1)
/* 81470B78 | A0 A1 00 A0 */	lhz r5, 0xa0(r1)
/* 81470B7C | 39 05 00 01 */	addi r8, r5, 0x1
/* 81470B80 | B1 01 00 A0 */	sth r8, 0xa0(r1)
/* 81470B84 | 48 00 01 40 */	b .L_81470CC4
.L_81470B88:
/* 81470B88 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81470B8C | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81470B90 | A0 E1 00 8C */	lhz r7, 0x8c(r1)
/* 81470B94 | 7C 04 38 40 */	cmplw r4, r7
/* 81470B98 | 41 82 01 18 */	beq .L_81470CB0
/* 81470B9C | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 81470BA0 | B0 C1 00 8C */	sth r6, 0x8c(r1)
/* 81470BA4 | A1 21 00 72 */	lhz r9, 0x72(r1)
/* 81470BA8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81470BAC | 40 82 00 F8 */	bne .L_81470CA4
/* 81470BB0 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 81470BB4 | 38 A3 00 01 */	addi r5, r3, 0x1
/* 81470BB8 | 90 A1 00 CC */	stw r5, 0xcc(r1)
/* 81470BBC | 88 9E 01 20 */	lbz r4, 0x120(r30)
/* 81470BC0 | 39 44 00 01 */	addi r10, r4, 0x1
/* 81470BC4 | 99 5E 01 20 */	stb r10, 0x120(r30)
/* 81470BC8 | 55 43 06 3E */	clrlwi r3, r10, 24
/* 81470BCC | 28 03 00 40 */	cmplwi r3, 0x40
/* 81470BD0 | 41 80 00 0C */	blt .L_81470BDC
/* 81470BD4 | 39 80 00 00 */	li r12, 0x0
/* 81470BD8 | 99 9E 01 20 */	stb r12, 0x120(r30)
.L_81470BDC:
/* 81470BDC | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 81470BE0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81470BE4 | 40 82 00 AC */	bne .L_81470C90
/* 81470BE8 | 89 01 00 5D */	lbz r8, 0x5d(r1)
/* 81470BEC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81470BF0 | 41 82 00 64 */	beq .L_81470C54
/* 81470BF4 | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 81470BF8 | 38 A6 00 01 */	addi r5, r6, 0x1
/* 81470BFC | 98 A1 00 67 */	stb r5, 0x67(r1)
/* 81470C00 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81470C04 | 80 81 00 BC */	lwz r4, 0xbc(r1)
/* 81470C08 | 81 61 01 04 */	lwz r11, 0x104(r1)
/* 81470C0C | 7D 69 5B 78 */	mr r9, r11
/* 81470C10 | 55 28 08 3C */	slwi r8, r9, 1
/* 81470C14 | 7C 64 43 2E */	sthx r3, r4, r8
/* 81470C18 | 38 EB 00 01 */	addi r7, r11, 0x1
/* 81470C1C | 90 E1 01 04 */	stw r7, 0x104(r1)
/* 81470C20 | 39 40 00 20 */	li r10, 0x20
/* 81470C24 | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 81470C28 | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 81470C2C | 7C 64 1B 78 */	mr r4, r3
/* 81470C30 | 54 89 08 3C */	slwi r9, r4, 1
/* 81470C34 | 7D 48 4B 2E */	sthx r10, r8, r9
/* 81470C38 | 38 C3 00 01 */	addi r6, r3, 0x1
/* 81470C3C | 90 C1 01 04 */	stw r6, 0x104(r1)
/* 81470C40 | 81 01 01 04 */	lwz r8, 0x104(r1)
/* 81470C44 | 80 A1 00 C8 */	lwz r5, 0xc8(r1)
/* 81470C48 | 7C 08 28 00 */	cmpw r8, r5
/* 81470C4C | 41 81 3A FC */	bgt .L_81474748
/* 81470C50 | 48 00 00 28 */	b .L_81470C78
.L_81470C54:
/* 81470C54 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 81470C58 | 80 E1 00 BC */	lwz r7, 0xbc(r1)
/* 81470C5C | 88 61 00 67 */	lbz r3, 0x67(r1)
/* 81470C60 | 7C 66 1B 78 */	mr r6, r3
/* 81470C64 | 54 CA 06 3E */	clrlwi r10, r6, 24
/* 81470C68 | 55 45 08 3C */	slwi r5, r10, 1
/* 81470C6C | 7C 87 2B 2E */	sthx r4, r7, r5
/* 81470C70 | 38 83 00 01 */	addi r4, r3, 0x1
/* 81470C74 | 98 81 00 67 */	stb r4, 0x67(r1)
.L_81470C78:
/* 81470C78 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81470C7C | 54 89 06 3E */	clrlwi r9, r4, 24
/* 81470C80 | 88 FF 00 1C */	lbz r7, 0x1c(r31)
/* 81470C84 | 7C 09 38 40 */	cmplw r9, r7
/* 81470C88 | 40 80 3A C0 */	bge .L_81474748
/* 81470C8C | 48 00 00 24 */	b .L_81470CB0
.L_81470C90:
/* 81470C90 | 80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 81470C94 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81470C98 | 7C 06 18 00 */	cmpw r6, r3
/* 81470C9C | 40 80 3A AC */	bge .L_81474748
/* 81470CA0 | 48 00 00 10 */	b .L_81470CB0
.L_81470CA4:
/* 81470CA4 | A1 01 00 72 */	lhz r8, 0x72(r1)
/* 81470CA8 | 38 A8 FF FF */	subi r5, r8, 0x1
/* 81470CAC | B0 A1 00 72 */	sth r5, 0x72(r1)
.L_81470CB0:
/* 81470CB0 | 38 60 00 01 */	li r3, 0x1
/* 81470CB4 | 98 61 00 5B */	stb r3, 0x5b(r1)
/* 81470CB8 | A0 E1 00 A0 */	lhz r7, 0xa0(r1)
/* 81470CBC | 38 C7 00 01 */	addi r6, r7, 0x1
/* 81470CC0 | B0 C1 00 A0 */	sth r6, 0xa0(r1)
.L_81470CC4:
/* 81470CC4 | A0 81 00 A0 */	lhz r4, 0xa0(r1)
/* 81470CC8 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 81470CCC | A0 81 00 8A */	lhz r4, 0x8a(r1)
/* 81470CD0 | 7C 05 20 40 */	cmplw r5, r4
/* 81470CD4 | 41 80 FC 14 */	blt .L_814708E8
/* 81470CD8 | 38 60 00 01 */	li r3, 0x1
/* 81470CDC | 98 61 00 5B */	stb r3, 0x5b(r1)
.L_81470CE0:
/* 81470CE0 | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 81470CE4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81470CE8 | 40 82 04 48 */	bne .L_81471130
/* 81470CEC | 89 61 00 62 */	lbz r11, 0x62(r1)
/* 81470CF0 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81470CF4 | 40 82 04 3C */	bne .L_81471130
/* 81470CF8 | A1 41 00 8A */	lhz r10, 0x8a(r1)
/* 81470CFC | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81470D00 | 41 82 04 30 */	beq .L_81471130
/* 81470D04 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 81470D08 | 28 08 00 07 */	cmplwi r8, 0x7
/* 81470D0C | 41 82 04 24 */	beq .L_81471130
/* 81470D10 | 89 21 00 56 */	lbz r9, 0x56(r1)
/* 81470D14 | 28 09 00 08 */	cmplwi r9, 0x8
/* 81470D18 | 41 82 04 18 */	beq .L_81471130
/* 81470D1C | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 81470D20 | 28 08 00 09 */	cmplwi r8, 0x9
/* 81470D24 | 41 82 04 0C */	beq .L_81471130
/* 81470D28 | 88 E1 02 FD */	lbz r7, 0x2fd(r1)
/* 81470D2C | 28 07 00 01 */	cmplwi r7, 0x1
/* 81470D30 | 41 81 04 00 */	bgt .L_81471130
/* 81470D34 | A0 C1 03 3E */	lhz r6, 0x33e(r1)
/* 81470D38 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 81470D3C | A1 21 02 FE */	lhz r9, 0x2fe(r1)
/* 81470D40 | 7C 05 48 40 */	cmplw r5, r9
/* 81470D44 | 40 82 00 24 */	bne .L_81470D68
/* 81470D48 | A0 81 03 40 */	lhz r4, 0x340(r1)
/* 81470D4C | 54 8A 04 3E */	clrlwi r10, r4, 16
/* 81470D50 | A0 61 03 1E */	lhz r3, 0x31e(r1)
/* 81470D54 | 7C 0A 18 40 */	cmplw r10, r3
/* 81470D58 | 40 82 00 10 */	bne .L_81470D68
/* 81470D5C | 39 00 00 00 */	li r8, 0x0
/* 81470D60 | 99 01 00 64 */	stb r8, 0x64(r1)
/* 81470D64 | 48 00 00 3C */	b .L_81470DA0
.L_81470D68:
/* 81470D68 | 38 60 00 01 */	li r3, 0x1
/* 81470D6C | 98 61 00 64 */	stb r3, 0x64(r1)
/* 81470D70 | A0 A1 02 FE */	lhz r5, 0x2fe(r1)
/* 81470D74 | B0 A1 00 80 */	sth r5, 0x80(r1)
/* 81470D78 | A0 E1 03 1E */	lhz r7, 0x31e(r1)
/* 81470D7C | B0 E1 00 7E */	sth r7, 0x7e(r1)
/* 81470D80 | A0 81 03 3E */	lhz r4, 0x33e(r1)
/* 81470D84 | B0 81 02 FE */	sth r4, 0x2fe(r1)
/* 81470D88 | A0 C1 03 40 */	lhz r6, 0x340(r1)
/* 81470D8C | B0 C1 03 1E */	sth r6, 0x31e(r1)
/* 81470D90 | A0 A1 00 80 */	lhz r5, 0x80(r1)
/* 81470D94 | B0 A1 03 3E */	sth r5, 0x33e(r1)
/* 81470D98 | A0 81 00 7E */	lhz r4, 0x7e(r1)
/* 81470D9C | B0 81 03 40 */	sth r4, 0x340(r1)
.L_81470DA0:
/* 81470DA0 | 39 20 00 00 */	li r9, 0x0
/* 81470DA4 | B1 21 00 80 */	sth r9, 0x80(r1)
/* 81470DA8 | 39 00 00 10 */	li r8, 0x10
/* 81470DAC | B1 01 00 7E */	sth r8, 0x7e(r1)
.L_81470DB0:
/* 81470DB0 | 38 80 00 00 */	li r4, 0x0
/* 81470DB4 | B0 81 00 A0 */	sth r4, 0xa0(r1)
/* 81470DB8 | 48 00 03 18 */	b .L_814710D0
.L_81470DBC:
/* 81470DBC | 80 E1 00 DC */	lwz r7, 0xdc(r1)
/* 81470DC0 | A0 61 00 A0 */	lhz r3, 0xa0(r1)
/* 81470DC4 | 54 66 08 3C */	slwi r6, r3, 1
/* 81470DC8 | 7C A7 30 AE */	lbzx r5, r7, r6
/* 81470DCC | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 81470DD0 | 54 88 40 2E */	slwi r8, r4, 8
/* 81470DD4 | 80 61 00 DC */	lwz r3, 0xdc(r1)
/* 81470DD8 | A0 E1 00 A0 */	lhz r7, 0xa0(r1)
/* 81470DDC | 54 E6 08 3C */	slwi r6, r7, 1
/* 81470DE0 | 7C A6 1A 14 */	add r5, r6, r3
/* 81470DE4 | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 81470DE8 | 7C 68 22 14 */	add r3, r8, r4
/* 81470DEC | 54 69 04 3E */	clrlwi r9, r3, 16
/* 81470DF0 | B1 21 00 9E */	sth r9, 0x9e(r1)
/* 81470DF4 | 81 01 00 EC */	lwz r8, 0xec(r1)
/* 81470DF8 | A0 E1 00 9E */	lhz r7, 0x9e(r1)
/* 81470DFC | 1C C7 00 0C */	mulli r6, r7, 0xc
/* 81470E00 | 7C A8 32 14 */	add r5, r8, r6
/* 81470E04 | 90 A1 01 00 */	stw r5, 0x100(r1)
/* 81470E08 | 38 80 00 00 */	li r4, 0x0
/* 81470E0C | B0 81 00 7C */	sth r4, 0x7c(r1)
/* 81470E10 | 38 60 00 00 */	li r3, 0x0
/* 81470E14 | 90 61 00 D8 */	stw r3, 0xd8(r1)
/* 81470E18 | 39 81 00 7C */	addi r12, r1, 0x7c
/* 81470E1C | 91 81 00 08 */	stw r12, 0x8(r1)
/* 81470E20 | 39 61 01 00 */	addi r11, r1, 0x100
/* 81470E24 | 91 61 00 0C */	stw r11, 0xc(r1)
/* 81470E28 | 38 E1 00 D8 */	addi r7, r1, 0xd8
/* 81470E2C | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 81470E30 | 39 40 00 00 */	li r10, 0x0
/* 81470E34 | 55 49 06 3E */	clrlwi r9, r10, 24
/* 81470E38 | 91 21 00 14 */	stw r9, 0x14(r1)
/* 81470E3C | 39 00 00 01 */	li r8, 0x1
/* 81470E40 | 55 03 06 3E */	clrlwi r3, r8, 24
/* 81470E44 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81470E48 | 88 81 02 FD */	lbz r4, 0x2fd(r1)
/* 81470E4C | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81470E50 | A0 61 00 80 */	lhz r3, 0x80(r1)
/* 81470E54 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81470E58 | A1 21 00 7E */	lhz r9, 0x7e(r1)
/* 81470E5C | 91 21 00 24 */	stw r9, 0x24(r1)
/* 81470E60 | 89 01 00 6E */	lbz r8, 0x6e(r1)
/* 81470E64 | 91 01 00 28 */	stw r8, 0x28(r1)
/* 81470E68 | 88 A1 00 55 */	lbz r5, 0x55(r1)
/* 81470E6C | 90 A1 00 2C */	stw r5, 0x2c(r1)
/* 81470E70 | A0 E1 00 9E */	lhz r7, 0x9e(r1)
/* 81470E74 | 90 E1 00 30 */	stw r7, 0x30(r1)
/* 81470E78 | 38 C1 00 98 */	addi r6, r1, 0x98
/* 81470E7C | 90 C1 00 34 */	stw r6, 0x34(r1)
/* 81470E80 | 38 A0 00 00 */	li r5, 0x0
/* 81470E84 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 81470E88 | 90 81 00 38 */	stw r4, 0x38(r1)
/* 81470E8C | 93 C1 00 3C */	stw r30, 0x3c(r1)
/* 81470E90 | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 81470E94 | 80 81 00 EC */	lwz r4, 0xec(r1)
/* 81470E98 | 80 A1 00 E8 */	lwz r5, 0xe8(r1)
/* 81470E9C | A0 C1 00 76 */	lhz r6, 0x76(r1)
/* 81470EA0 | 80 E1 00 D4 */	lwz r7, 0xd4(r1)
/* 81470EA4 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 81470EA8 | 39 21 02 FE */	addi r9, r1, 0x2fe
/* 81470EAC | 39 41 03 1E */	addi r10, r1, 0x31e
/* 81470EB0 | 48 00 C9 8D */	bl Zi8MatchPhonetic
/* 81470EB4 | 7C 6C 1B 78 */	mr r12, r3
/* 81470EB8 | 55 84 06 3E */	clrlwi r4, r12, 24
/* 81470EBC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81470EC0 | 41 82 02 04 */	beq .L_814710C4
/* 81470EC4 | 81 61 00 E4 */	lwz r11, 0xe4(r1)
/* 81470EC8 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81470ECC | 41 82 00 2C */	beq .L_81470EF8
/* 81470ED0 | 81 41 00 E4 */	lwz r10, 0xe4(r1)
/* 81470ED4 | A0 61 00 9E */	lhz r3, 0x9e(r1)
/* 81470ED8 | 7C 8A 1A 14 */	add r4, r10, r3
/* 81470EDC | 90 81 00 C4 */	stw r4, 0xc4(r1)
/* 81470EE0 | 81 21 00 C4 */	lwz r9, 0xc4(r1)
/* 81470EE4 | 88 A9 00 00 */	lbz r5, 0x0(r9)
/* 81470EE8 | 88 E1 00 6D */	lbz r7, 0x6d(r1)
/* 81470EEC | 7C A8 38 38 */	and r8, r5, r7
/* 81470EF0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81470EF4 | 41 82 01 D0 */	beq .L_814710C4
.L_81470EF8:
/* 81470EF8 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 81470EFC | 54 C4 04 3E */	clrlwi r4, r6, 16
/* 81470F00 | A0 E1 00 8C */	lhz r7, 0x8c(r1)
/* 81470F04 | 7C 04 38 40 */	cmplw r4, r7
/* 81470F08 | 41 82 01 BC */	beq .L_814710C4
/* 81470F0C | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81470F10 | B0 61 00 8C */	sth r3, 0x8c(r1)
/* 81470F14 | A0 A1 00 9E */	lhz r5, 0x9e(r1)
/* 81470F18 | 8B 7E 01 20 */	lbz r27, 0x120(r30)
/* 81470F1C | 57 64 08 3C */	slwi r4, r27, 1
/* 81470F20 | 7C DE 22 14 */	add r6, r30, r4
/* 81470F24 | B0 A6 00 A0 */	sth r5, 0xa0(r6)
/* 81470F28 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81470F2C | 89 1E 01 20 */	lbz r8, 0x120(r30)
/* 81470F30 | 55 05 08 3C */	slwi r5, r8, 1
/* 81470F34 | 7C 9E 2A 14 */	add r4, r30, r5
/* 81470F38 | B0 64 00 20 */	sth r3, 0x20(r4)
/* 81470F3C | 88 E1 00 5D */	lbz r7, 0x5d(r1)
/* 81470F40 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81470F44 | 40 82 00 50 */	bne .L_81470F94
/* 81470F48 | 88 C1 00 5E */	lbz r6, 0x5e(r1)
/* 81470F4C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81470F50 | 41 82 00 24 */	beq .L_81470F74
/* 81470F54 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81470F58 | A0 81 00 9E */	lhz r4, 0x9e(r1)
/* 81470F5C | 7F C5 F3 78 */	mr r5, r30
/* 81470F60 | 4B FF 9B BD */	bl Zi8SetFindCand
/* 81470F64 | 54 65 06 3E */	clrlwi r5, r3, 24
/* 81470F68 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81470F6C | 40 82 01 58 */	bne .L_814710C4
/* 81470F70 | 48 00 00 48 */	b .L_81470FB8
.L_81470F74:
/* 81470F74 | A0 61 00 9E */	lhz r3, 0x9e(r1)
/* 81470F78 | 7F C4 F3 78 */	mr r4, r30
/* 81470F7C | 48 00 AD 79 */	bl Zi8IsDupWChar
/* 81470F80 | 7C 7C 1B 78 */	mr r28, r3
/* 81470F84 | 57 8C 06 3E */	clrlwi r12, r28, 24
/* 81470F88 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81470F8C | 40 82 01 38 */	bne .L_814710C4
/* 81470F90 | 48 00 00 28 */	b .L_81470FB8
.L_81470F94:
/* 81470F94 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81470F98 | 38 80 00 01 */	li r4, 0x1
/* 81470F9C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81470FA0 | 7F C5 F3 78 */	mr r5, r30
/* 81470FA4 | 48 00 AE 4D */	bl Zi8IsDupWordW
/* 81470FA8 | 7C 64 1B 78 */	mr r4, r3
/* 81470FAC | 54 8B 06 3E */	clrlwi r11, r4, 24
/* 81470FB0 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81470FB4 | 40 82 01 10 */	bne .L_814710C4
.L_81470FB8:
/* 81470FB8 | A1 41 00 72 */	lhz r10, 0x72(r1)
/* 81470FBC | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81470FC0 | 41 82 00 14 */	beq .L_81470FD4
/* 81470FC4 | A1 21 00 72 */	lhz r9, 0x72(r1)
/* 81470FC8 | 38 69 FF FF */	subi r3, r9, 0x1
/* 81470FCC | B0 61 00 72 */	sth r3, 0x72(r1)
/* 81470FD0 | 48 00 00 F4 */	b .L_814710C4
.L_81470FD4:
/* 81470FD4 | 81 01 00 CC */	lwz r8, 0xcc(r1)
/* 81470FD8 | 38 88 00 01 */	addi r4, r8, 0x1
/* 81470FDC | 90 81 00 CC */	stw r4, 0xcc(r1)
/* 81470FE0 | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 81470FE4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81470FE8 | 40 82 00 CC */	bne .L_814710B4
/* 81470FEC | 88 FE 01 20 */	lbz r7, 0x120(r30)
/* 81470FF0 | 38 C7 00 01 */	addi r6, r7, 0x1
/* 81470FF4 | 98 DE 01 20 */	stb r6, 0x120(r30)
/* 81470FF8 | 54 C4 06 3E */	clrlwi r4, r6, 24
/* 81470FFC | 28 04 00 40 */	cmplwi r4, 0x40
/* 81471000 | 41 80 00 0C */	blt .L_8147100C
/* 81471004 | 38 A0 00 00 */	li r5, 0x0
/* 81471008 | 98 BE 01 20 */	stb r5, 0x120(r30)
.L_8147100C:
/* 8147100C | 88 61 00 5D */	lbz r3, 0x5d(r1)
/* 81471010 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81471014 | 41 82 00 64 */	beq .L_81471078
/* 81471018 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 8147101C | 38 88 00 01 */	addi r4, r8, 0x1
/* 81471020 | 98 81 00 67 */	stb r4, 0x67(r1)
/* 81471024 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81471028 | 81 21 00 BC */	lwz r9, 0xbc(r1)
/* 8147102C | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 81471030 | 7C 86 23 78 */	mr r6, r4
/* 81471034 | 54 C7 08 3C */	slwi r7, r6, 1
/* 81471038 | 7C 69 3B 2E */	sthx r3, r9, r7
/* 8147103C | 38 A4 00 01 */	addi r5, r4, 0x1
/* 81471040 | 90 A1 01 04 */	stw r5, 0x104(r1)
/* 81471044 | 38 80 00 20 */	li r4, 0x20
/* 81471048 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 8147104C | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 81471050 | 7C C8 33 78 */	mr r8, r6
/* 81471054 | 55 07 08 3C */	slwi r7, r8, 1
/* 81471058 | 7C 83 3B 2E */	sthx r4, r3, r7
/* 8147105C | 38 A6 00 01 */	addi r5, r6, 0x1
/* 81471060 | 90 A1 01 04 */	stw r5, 0x104(r1)
/* 81471064 | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 81471068 | 80 C1 00 C8 */	lwz r6, 0xc8(r1)
/* 8147106C | 7C 04 30 00 */	cmpw r4, r6
/* 81471070 | 41 81 36 D8 */	bgt .L_81474748
/* 81471074 | 48 00 00 28 */	b .L_8147109C
.L_81471078:
/* 81471078 | A0 A1 00 98 */	lhz r5, 0x98(r1)
/* 8147107C | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 81471080 | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 81471084 | 7D 28 4B 78 */	mr r8, r9
/* 81471088 | 55 04 06 3E */	clrlwi r4, r8, 24
/* 8147108C | 54 86 08 3C */	slwi r6, r4, 1
/* 81471090 | 7C A3 33 2E */	sthx r5, r3, r6
/* 81471094 | 38 E9 00 01 */	addi r7, r9, 0x1
/* 81471098 | 98 E1 00 67 */	stb r7, 0x67(r1)
.L_8147109C:
/* 8147109C | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 814710A0 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 814710A4 | 88 7F 00 1C */	lbz r3, 0x1c(r31)
/* 814710A8 | 7C 04 18 40 */	cmplw r4, r3
/* 814710AC | 40 80 36 9C */	bge .L_81474748
/* 814710B0 | 48 00 00 14 */	b .L_814710C4
.L_814710B4:
/* 814710B4 | 81 41 00 CC */	lwz r10, 0xcc(r1)
/* 814710B8 | 81 3D 00 0C */	lwz r9, 0xc(r29)
/* 814710BC | 7C 0A 48 00 */	cmpw r10, r9
/* 814710C0 | 40 80 36 88 */	bge .L_81474748
.L_814710C4:
/* 814710C4 | A0 C1 00 A0 */	lhz r6, 0xa0(r1)
/* 814710C8 | 38 A6 00 01 */	addi r5, r6, 0x1
/* 814710CC | B0 A1 00 A0 */	sth r5, 0xa0(r1)
.L_814710D0:
/* 814710D0 | A0 81 00 A0 */	lhz r4, 0xa0(r1)
/* 814710D4 | 54 88 04 3E */	clrlwi r8, r4, 16
/* 814710D8 | A0 E1 00 8A */	lhz r7, 0x8a(r1)
/* 814710DC | 7C 08 38 40 */	cmplw r8, r7
/* 814710E0 | 41 80 FC DC */	blt .L_81470DBC
/* 814710E4 | 88 C1 00 64 */	lbz r6, 0x64(r1)
/* 814710E8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814710EC | 41 82 00 44 */	beq .L_81471130
/* 814710F0 | 38 A0 00 00 */	li r5, 0x0
/* 814710F4 | 98 A1 00 64 */	stb r5, 0x64(r1)
/* 814710F8 | A0 61 02 FE */	lhz r3, 0x2fe(r1)
/* 814710FC | B0 61 00 80 */	sth r3, 0x80(r1)
/* 81471100 | A0 81 03 1E */	lhz r4, 0x31e(r1)
/* 81471104 | B0 81 00 7E */	sth r4, 0x7e(r1)
/* 81471108 | A1 61 03 3E */	lhz r11, 0x33e(r1)
/* 8147110C | B1 61 02 FE */	sth r11, 0x2fe(r1)
/* 81471110 | A0 61 03 40 */	lhz r3, 0x340(r1)
/* 81471114 | B0 61 03 1E */	sth r3, 0x31e(r1)
/* 81471118 | A0 E1 00 80 */	lhz r7, 0x80(r1)
/* 8147111C | B0 E1 03 3E */	sth r7, 0x33e(r1)
/* 81471120 | A1 41 00 7E */	lhz r10, 0x7e(r1)
/* 81471124 | B1 41 03 40 */	sth r10, 0x340(r1)
/* 81471128 | 38 C0 00 01 */	li r6, 0x1
/* 8147112C | 98 C1 00 61 */	stb r6, 0x61(r1)
.L_81471130:
/* 81471130 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 81471134 | 28 05 00 02 */	cmplwi r5, 0x2
/* 81471138 | 40 82 02 14 */	bne .L_8147134C
/* 8147113C | 88 81 00 58 */	lbz r4, 0x58(r1)
/* 81471140 | 28 04 00 06 */	cmplwi r4, 0x6
/* 81471144 | 41 82 02 08 */	beq .L_8147134C
/* 81471148 | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8147114C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81471150 | 40 82 01 FC */	bne .L_8147134C
/* 81471154 | 89 1F 00 14 */	lbz r8, 0x14(r31)
/* 81471158 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8147115C | 41 82 01 F0 */	beq .L_8147134C
/* 81471160 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81471164 | 88 DF 00 14 */	lbz r6, 0x14(r31)
/* 81471168 | 38 86 FF FF */	subi r4, r6, 0x1
/* 8147116C | 54 85 08 3C */	slwi r5, r4, 1
/* 81471170 | 7C E3 2A 2E */	lhzx r7, r3, r5
/* 81471174 | 28 07 31 05 */	cmplwi r7, 0x3105
/* 81471178 | 41 80 01 D4 */	blt .L_8147134C
/* 8147117C | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 81471180 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 81471184 | 39 83 FF FF */	subi r12, r3, 0x1
/* 81471188 | 55 86 08 3C */	slwi r6, r12, 1
/* 8147118C | 7C A4 32 2E */	lhzx r5, r4, r6
/* 81471190 | 28 05 31 29 */	cmplwi r5, 0x3129
/* 81471194 | 41 81 01 B8 */	bgt .L_8147134C
/* 81471198 | 38 80 00 00 */	li r4, 0x0
/* 8147119C | 90 81 01 14 */	stw r4, 0x114(r1)
/* 814711A0 | 48 00 01 A0 */	b .L_81471340
.L_814711A4:
/* 814711A4 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 814711A8 | 55 0B 08 3C */	slwi r11, r8, 1
/* 814711AC | 38 62 8C 00 */	li r3, ziTones@sda21
/* 814711B0 | 7C E3 5A 2E */	lhzx r7, r3, r11
/* 814711B4 | 54 EA 04 3E */	clrlwi r10, r7, 16
/* 814711B8 | B1 41 00 94 */	sth r10, 0x94(r1)
/* 814711BC | 89 21 00 5D */	lbz r9, 0x5d(r1)
/* 814711C0 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814711C4 | 40 82 00 60 */	bne .L_81471224
/* 814711C8 | 38 C0 00 00 */	li r6, 0x0
/* 814711CC | B0 C1 00 84 */	sth r6, 0x84(r1)
/* 814711D0 | 48 00 00 30 */	b .L_81471200
.L_814711D4:
/* 814711D4 | A0 81 00 94 */	lhz r4, 0x94(r1)
/* 814711D8 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814711DC | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 814711E0 | A1 01 00 84 */	lhz r8, 0x84(r1)
/* 814711E4 | 55 07 08 3C */	slwi r7, r8, 1
/* 814711E8 | 7C C3 3A 2E */	lhzx r6, r3, r7
/* 814711EC | 7C 05 30 40 */	cmplw r5, r6
/* 814711F0 | 41 82 00 20 */	beq .L_81471210
/* 814711F4 | A0 C1 00 84 */	lhz r6, 0x84(r1)
/* 814711F8 | 38 86 00 01 */	addi r4, r6, 0x1
/* 814711FC | B0 81 00 84 */	sth r4, 0x84(r1)
.L_81471200:
/* 81471200 | A1 21 00 84 */	lhz r9, 0x84(r1)
/* 81471204 | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 81471208 | 7C 09 28 00 */	cmpw r9, r5
/* 8147120C | 41 80 FF C8 */	blt .L_814711D4
.L_81471210:
/* 81471210 | A1 01 00 84 */	lhz r8, 0x84(r1)
/* 81471214 | 88 61 00 67 */	lbz r3, 0x67(r1)
/* 81471218 | 7C 08 18 00 */	cmpw r8, r3
/* 8147121C | 41 80 01 18 */	blt .L_81471334
/* 81471220 | 48 00 00 28 */	b .L_81471248
.L_81471224:
/* 81471224 | 38 61 00 94 */	addi r3, r1, 0x94
/* 81471228 | 38 80 00 01 */	li r4, 0x1
/* 8147122C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81471230 | 7F C5 F3 78 */	mr r5, r30
/* 81471234 | 48 00 AB BD */	bl Zi8IsDupWordW
/* 81471238 | 7C 64 1B 78 */	mr r4, r3
/* 8147123C | 54 87 06 3E */	clrlwi r7, r4, 24
/* 81471240 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81471244 | 40 82 00 F0 */	bne .L_81471334
.L_81471248:
/* 81471248 | A0 C1 00 72 */	lhz r6, 0x72(r1)
/* 8147124C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81471250 | 41 82 00 14 */	beq .L_81471264
/* 81471254 | A1 21 00 72 */	lhz r9, 0x72(r1)
/* 81471258 | 38 69 FF FF */	subi r3, r9, 0x1
/* 8147125C | B0 61 00 72 */	sth r3, 0x72(r1)
/* 81471260 | 48 00 00 D4 */	b .L_81471334
.L_81471264:
/* 81471264 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 81471268 | 38 85 00 01 */	addi r4, r5, 0x1
/* 8147126C | 90 81 00 CC */	stw r4, 0xcc(r1)
/* 81471270 | 89 5D 00 00 */	lbz r10, 0x0(r29)
/* 81471274 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81471278 | 40 82 00 AC */	bne .L_81471324
/* 8147127C | 88 61 00 5D */	lbz r3, 0x5d(r1)
/* 81471280 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81471284 | 41 82 00 64 */	beq .L_814712E8
/* 81471288 | 89 81 00 67 */	lbz r12, 0x67(r1)
/* 8147128C | 38 EC 00 01 */	addi r7, r12, 0x1
/* 81471290 | 98 E1 00 67 */	stb r7, 0x67(r1)
/* 81471294 | A1 01 00 94 */	lhz r8, 0x94(r1)
/* 81471298 | 80 C1 00 BC */	lwz r6, 0xbc(r1)
/* 8147129C | 80 A1 01 04 */	lwz r5, 0x104(r1)
/* 814712A0 | 7C A3 2B 78 */	mr r3, r5
/* 814712A4 | 54 6B 08 3C */	slwi r11, r3, 1
/* 814712A8 | 7D 06 5B 2E */	sthx r8, r6, r11
/* 814712AC | 38 85 00 01 */	addi r4, r5, 0x1
/* 814712B0 | 90 81 01 04 */	stw r4, 0x104(r1)
/* 814712B4 | 39 20 00 20 */	li r9, 0x20
/* 814712B8 | 80 E1 00 BC */	lwz r7, 0xbc(r1)
/* 814712BC | 81 01 01 04 */	lwz r8, 0x104(r1)
/* 814712C0 | 7D 0A 43 78 */	mr r10, r8
/* 814712C4 | 55 43 08 3C */	slwi r3, r10, 1
/* 814712C8 | 7D 27 1B 2E */	sthx r9, r7, r3
/* 814712CC | 39 08 00 01 */	addi r8, r8, 0x1
/* 814712D0 | 91 01 01 04 */	stw r8, 0x104(r1)
/* 814712D4 | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 814712D8 | 80 C1 00 C8 */	lwz r6, 0xc8(r1)
/* 814712DC | 7C 04 30 00 */	cmpw r4, r6
/* 814712E0 | 41 81 34 68 */	bgt .L_81474748
/* 814712E4 | 48 00 00 28 */	b .L_8147130C
.L_814712E8:
/* 814712E8 | A1 21 00 94 */	lhz r9, 0x94(r1)
/* 814712EC | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 814712F0 | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 814712F4 | 7C A4 2B 78 */	mr r4, r5
/* 814712F8 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 814712FC | 54 66 08 3C */	slwi r6, r3, 1
/* 81471300 | 7D 28 33 2E */	sthx r9, r8, r6
/* 81471304 | 38 E5 00 01 */	addi r7, r5, 0x1
/* 81471308 | 98 E1 00 67 */	stb r7, 0x67(r1)
.L_8147130C:
/* 8147130C | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81471310 | 54 8A 06 3E */	clrlwi r10, r4, 24
/* 81471314 | 88 BF 00 1C */	lbz r5, 0x1c(r31)
/* 81471318 | 7C 0A 28 40 */	cmplw r10, r5
/* 8147131C | 40 80 34 2C */	bge .L_81474748
/* 81471320 | 48 00 00 14 */	b .L_81471334
.L_81471324:
/* 81471324 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 81471328 | 81 3D 00 0C */	lwz r9, 0xc(r29)
/* 8147132C | 7C 04 48 00 */	cmpw r4, r9
/* 81471330 | 40 80 34 18 */	bge .L_81474748
.L_81471334:
/* 81471334 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 81471338 | 38 C7 00 01 */	addi r6, r7, 0x1
/* 8147133C | 90 C1 01 14 */	stw r6, 0x114(r1)
.L_81471340:
/* 81471340 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 81471344 | 28 03 00 04 */	cmplwi r3, 0x4
/* 81471348 | 41 80 FE 5C */	blt .L_814711A4
.L_8147134C:
/* 8147134C | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 81471350 | 28 08 00 02 */	cmplwi r8, 0x2
/* 81471354 | 40 82 04 94 */	bne .L_814717E8
/* 81471358 | 88 BF 00 0C */	lbz r5, 0xc(r31)
/* 8147135C | 28 05 00 01 */	cmplwi r5, 0x1
/* 81471360 | 40 82 04 88 */	bne .L_814717E8
/* 81471364 | 80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 81471368 | A0 E3 00 00 */	lhz r7, 0x0(r3)
/* 8147136C | 28 07 F3 05 */	cmplwi r7, 0xf305
/* 81471370 | 41 80 04 78 */	blt .L_814717E8
/* 81471374 | 80 C1 00 C0 */	lwz r6, 0xc0(r1)
/* 81471378 | A0 86 00 00 */	lhz r4, 0x0(r6)
/* 8147137C | 28 04 F3 29 */	cmplwi r4, 0xf329
/* 81471380 | 41 81 04 68 */	bgt .L_814717E8
/* 81471384 | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 81471388 | A0 85 00 00 */	lhz r4, 0x0(r5)
/* 8147138C | 3C 64 FF FF */	subis r3, r4, 0x1
/* 81471390 | 38 E3 3E 00 */	addi r7, r3, 0x3e00
/* 81471394 | 54 EB 04 3E */	clrlwi r11, r7, 16
/* 81471398 | B1 61 00 94 */	sth r11, 0x94(r1)
/* 8147139C | 89 41 00 58 */	lbz r10, 0x58(r1)
/* 814713A0 | 28 0A 00 06 */	cmplwi r10, 0x6
/* 814713A4 | 41 82 01 EC */	beq .L_81471590
/* 814713A8 | 39 00 00 00 */	li r8, 0x0
/* 814713AC | 91 01 01 14 */	stw r8, 0x114(r1)
/* 814713B0 | 48 00 01 D4 */	b .L_81471584
.L_814713B4:
/* 814713B4 | 89 21 00 5D */	lbz r9, 0x5d(r1)
/* 814713B8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814713BC | 40 82 00 70 */	bne .L_8147142C
/* 814713C0 | 39 00 00 00 */	li r8, 0x0
/* 814713C4 | B1 01 00 84 */	sth r8, 0x84(r1)
/* 814713C8 | 48 00 00 30 */	b .L_814713F8
.L_814713CC:
/* 814713CC | A0 E1 00 94 */	lhz r7, 0x94(r1)
/* 814713D0 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 814713D4 | 80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 814713D8 | A1 21 00 84 */	lhz r9, 0x84(r1)
/* 814713DC | 55 24 08 3C */	slwi r4, r9, 1
/* 814713E0 | 7D 45 22 2E */	lhzx r10, r5, r4
/* 814713E4 | 7C 06 50 40 */	cmplw r6, r10
/* 814713E8 | 41 82 00 20 */	beq .L_81471408
/* 814713EC | A0 61 00 84 */	lhz r3, 0x84(r1)
/* 814713F0 | 39 03 00 01 */	addi r8, r3, 0x1
/* 814713F4 | B1 01 00 84 */	sth r8, 0x84(r1)
.L_814713F8:
/* 814713F8 | A0 61 00 84 */	lhz r3, 0x84(r1)
/* 814713FC | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 81471400 | 7C 03 28 00 */	cmpw r3, r5
/* 81471404 | 41 80 FF C8 */	blt .L_814713CC
.L_81471408:
/* 81471408 | A0 E1 00 84 */	lhz r7, 0x84(r1)
/* 8147140C | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81471410 | 7C 07 20 00 */	cmpw r7, r4
/* 81471414 | 40 80 00 50 */	bge .L_81471464
/* 81471418 | 80 C1 00 C0 */	lwz r6, 0xc0(r1)
/* 8147141C | A0 A6 00 00 */	lhz r5, 0x0(r6)
/* 81471420 | 28 05 F3 05 */	cmplwi r5, 0xf305
/* 81471424 | 40 82 01 6C */	bne .L_81471590
/* 81471428 | 48 00 01 38 */	b .L_81471560
.L_8147142C:
/* 8147142C | 38 61 00 94 */	addi r3, r1, 0x94
/* 81471430 | 38 80 00 01 */	li r4, 0x1
/* 81471434 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81471438 | 7F C5 F3 78 */	mr r5, r30
/* 8147143C | 48 00 A9 B5 */	bl Zi8IsDupWordW
/* 81471440 | 7C 64 1B 78 */	mr r4, r3
/* 81471444 | 54 89 06 3E */	clrlwi r9, r4, 24
/* 81471448 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8147144C | 41 82 00 18 */	beq .L_81471464
/* 81471450 | 81 01 00 C0 */	lwz r8, 0xc0(r1)
/* 81471454 | A0 88 00 00 */	lhz r4, 0x0(r8)
/* 81471458 | 28 04 F3 05 */	cmplwi r4, 0xf305
/* 8147145C | 40 82 01 34 */	bne .L_81471590
/* 81471460 | 48 00 01 00 */	b .L_81471560
.L_81471464:
/* 81471464 | A0 E1 00 72 */	lhz r7, 0x72(r1)
/* 81471468 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8147146C | 41 82 00 14 */	beq .L_81471480
/* 81471470 | A0 61 00 72 */	lhz r3, 0x72(r1)
/* 81471474 | 38 C3 FF FF */	subi r6, r3, 0x1
/* 81471478 | B0 C1 00 72 */	sth r6, 0x72(r1)
/* 8147147C | 48 00 00 D4 */	b .L_81471550
.L_81471480:
/* 81471480 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 81471484 | 38 85 00 01 */	addi r4, r5, 0x1
/* 81471488 | 90 81 00 CC */	stw r4, 0xcc(r1)
/* 8147148C | 89 1D 00 00 */	lbz r8, 0x0(r29)
/* 81471490 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81471494 | 40 82 00 AC */	bne .L_81471540
/* 81471498 | 88 61 00 5D */	lbz r3, 0x5d(r1)
/* 8147149C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814714A0 | 41 82 00 64 */	beq .L_81471504
/* 814714A4 | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 814714A8 | 38 C7 00 01 */	addi r6, r7, 0x1
/* 814714AC | 98 C1 00 67 */	stb r6, 0x67(r1)
/* 814714B0 | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 814714B4 | 80 81 00 BC */	lwz r4, 0xbc(r1)
/* 814714B8 | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 814714BC | 7C 69 1B 78 */	mr r9, r3
/* 814714C0 | 55 27 08 3C */	slwi r7, r9, 1
/* 814714C4 | 7C A4 3B 2E */	sthx r5, r4, r7
/* 814714C8 | 39 03 00 01 */	addi r8, r3, 0x1
/* 814714CC | 91 01 01 04 */	stw r8, 0x104(r1)
/* 814714D0 | 39 00 00 20 */	li r8, 0x20
/* 814714D4 | 80 E1 00 BC */	lwz r7, 0xbc(r1)
/* 814714D8 | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 814714DC | 7C C5 33 78 */	mr r5, r6
/* 814714E0 | 54 A3 08 3C */	slwi r3, r5, 1
/* 814714E4 | 7D 07 1B 2E */	sthx r8, r7, r3
/* 814714E8 | 38 86 00 01 */	addi r4, r6, 0x1
/* 814714EC | 90 81 01 04 */	stw r4, 0x104(r1)
/* 814714F0 | 81 81 01 04 */	lwz r12, 0x104(r1)
/* 814714F4 | 81 61 00 C8 */	lwz r11, 0xc8(r1)
/* 814714F8 | 7C 0C 58 00 */	cmpw r12, r11
/* 814714FC | 41 81 32 4C */	bgt .L_81474748
/* 81471500 | 48 00 00 28 */	b .L_81471528
.L_81471504:
/* 81471504 | A0 E1 00 94 */	lhz r7, 0x94(r1)
/* 81471508 | 81 41 00 BC */	lwz r10, 0xbc(r1)
/* 8147150C | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 81471510 | 7D 28 4B 78 */	mr r8, r9
/* 81471514 | 55 04 06 3E */	clrlwi r4, r8, 24
/* 81471518 | 54 83 08 3C */	slwi r3, r4, 1
/* 8147151C | 7C EA 1B 2E */	sthx r7, r10, r3
/* 81471520 | 38 69 00 01 */	addi r3, r9, 0x1
/* 81471524 | 98 61 00 67 */	stb r3, 0x67(r1)
.L_81471528:
/* 81471528 | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 8147152C | 55 28 06 3E */	clrlwi r8, r9, 24
/* 81471530 | 88 BF 00 1C */	lbz r5, 0x1c(r31)
/* 81471534 | 7C 08 28 40 */	cmplw r8, r5
/* 81471538 | 40 80 32 10 */	bge .L_81474748
/* 8147153C | 48 00 00 14 */	b .L_81471550
.L_81471540:
/* 81471540 | 80 E1 00 CC */	lwz r7, 0xcc(r1)
/* 81471544 | 80 DD 00 0C */	lwz r6, 0xc(r29)
/* 81471548 | 7C 07 30 00 */	cmpw r7, r6
/* 8147154C | 40 80 31 FC */	bge .L_81474748
.L_81471550:
/* 81471550 | 80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 81471554 | A0 85 00 00 */	lhz r4, 0x0(r5)
/* 81471558 | 28 04 F3 05 */	cmplwi r4, 0xf305
/* 8147155C | 40 82 00 34 */	bne .L_81471590
.L_81471560:
/* 81471560 | 81 81 01 14 */	lwz r12, 0x114(r1)
/* 81471564 | 7D 84 63 78 */	mr r4, r12
/* 81471568 | 39 6C 00 01 */	addi r11, r12, 0x1
/* 8147156C | 91 61 01 14 */	stw r11, 0x114(r1)
/* 81471570 | 54 8A 08 3C */	slwi r10, r4, 1
/* 81471574 | 38 62 9B E0 */	li r3, zi8tones@sda21
/* 81471578 | 7C 83 52 2E */	lhzx r4, r3, r10
/* 8147157C | 54 89 04 3E */	clrlwi r9, r4, 16
/* 81471580 | B1 21 00 94 */	sth r9, 0x94(r1)
.L_81471584:
/* 81471584 | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 81471588 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8147158C | 40 82 FE 28 */	bne .L_814713B4
.L_81471590:
/* 81471590 | 3C E0 00 01 */	lis r7, 0x1
/* 81471594 | 38 E7 8A 92 */	subi r7, r7, 0x756e
/* 81471598 | B0 E1 00 94 */	sth r7, 0x94(r1)
/* 8147159C | 89 01 00 5D */	lbz r8, 0x5d(r1)
/* 814715A0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814715A4 | 40 82 00 68 */	bne .L_8147160C
/* 814715A8 | 38 C0 00 00 */	li r6, 0x0
/* 814715AC | B0 C1 00 84 */	sth r6, 0x84(r1)
/* 814715B0 | 48 00 00 30 */	b .L_814715E0
.L_814715B4:
/* 814715B4 | A0 81 00 94 */	lhz r4, 0x94(r1)
/* 814715B8 | 54 87 04 3E */	clrlwi r7, r4, 16
/* 814715BC | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 814715C0 | A0 A1 00 84 */	lhz r5, 0x84(r1)
/* 814715C4 | 54 BB 08 3C */	slwi r27, r5, 1
/* 814715C8 | 7C 83 DA 2E */	lhzx r4, r3, r27
/* 814715CC | 7C 07 20 40 */	cmplw r7, r4
/* 814715D0 | 41 82 00 20 */	beq .L_814715F0
/* 814715D4 | A0 C1 00 84 */	lhz r6, 0x84(r1)
/* 814715D8 | 38 66 00 01 */	addi r3, r6, 0x1
/* 814715DC | B0 61 00 84 */	sth r3, 0x84(r1)
.L_814715E0:
/* 814715E0 | A1 01 00 84 */	lhz r8, 0x84(r1)
/* 814715E4 | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 814715E8 | 7C 08 28 00 */	cmpw r8, r5
/* 814715EC | 41 80 FF C8 */	blt .L_814715B4
.L_814715F0:
/* 814715F0 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 814715F4 | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 814715F8 | 7C 04 38 00 */	cmpw r4, r7
/* 814715FC | 40 80 00 38 */	bge .L_81471634
/* 81471600 | 38 C0 00 00 */	li r6, 0x0
/* 81471604 | B0 C1 00 94 */	sth r6, 0x94(r1)
/* 81471608 | 48 00 00 2C */	b .L_81471634
.L_8147160C:
/* 8147160C | 38 61 00 94 */	addi r3, r1, 0x94
/* 81471610 | 38 80 00 01 */	li r4, 0x1
/* 81471614 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81471618 | 7F C5 F3 78 */	mr r5, r30
/* 8147161C | 48 00 A7 D5 */	bl Zi8IsDupWordW
/* 81471620 | 54 65 06 3E */	clrlwi r5, r3, 24
/* 81471624 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81471628 | 41 82 00 0C */	beq .L_81471634
/* 8147162C | 3B 80 00 00 */	li r28, 0x0
/* 81471630 | B3 81 00 94 */	sth r28, 0x94(r1)
.L_81471634:
/* 81471634 | A1 81 00 94 */	lhz r12, 0x94(r1)
/* 81471638 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8147163C | 41 82 00 A4 */	beq .L_814716E0
/* 81471640 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 81471644 | 7F C4 F3 78 */	mr r4, r30
/* 81471648 | 48 00 DD 4D */	bl Zi8Uni2Ord
/* 8147164C | 7C 64 1B 78 */	mr r4, r3
/* 81471650 | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 81471654 | A1 61 00 A2 */	lhz r11, 0xa2(r1)
/* 81471658 | 28 0B FF FF */	cmplwi r11, 0xffff
/* 8147165C | 41 82 00 7C */	beq .L_814716D8
/* 81471660 | 81 41 00 EC */	lwz r10, 0xec(r1)
/* 81471664 | A1 21 00 A2 */	lhz r9, 0xa2(r1)
/* 81471668 | 1C 69 00 0C */	mulli r3, r9, 0xc
/* 8147166C | 7D 0A 1A 14 */	add r8, r10, r3
/* 81471670 | 91 01 01 00 */	stw r8, 0x100(r1)
/* 81471674 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81471678 | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 8147167C | 88 E1 00 6E */	lbz r7, 0x6e(r1)
/* 81471680 | 7C A6 38 38 */	and r6, r5, r7
/* 81471684 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81471688 | 41 82 00 44 */	beq .L_814716CC
/* 8147168C | 80 81 00 E4 */	lwz r4, 0xe4(r1)
/* 81471690 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81471694 | 41 82 00 4C */	beq .L_814716E0
/* 81471698 | 80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 8147169C | A0 61 00 A2 */	lhz r3, 0xa2(r1)
/* 814716A0 | 7D 05 1A 14 */	add r8, r5, r3
/* 814716A4 | 91 01 00 C4 */	stw r8, 0xc4(r1)
/* 814716A8 | 80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 814716AC | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814716B0 | 89 21 00 6D */	lbz r9, 0x6d(r1)
/* 814716B4 | 7C 64 48 38 */	and r4, r3, r9
/* 814716B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814716BC | 40 82 00 24 */	bne .L_814716E0
/* 814716C0 | 38 C0 00 00 */	li r6, 0x0
/* 814716C4 | B0 C1 00 94 */	sth r6, 0x94(r1)
/* 814716C8 | 48 00 00 18 */	b .L_814716E0
.L_814716CC:
/* 814716CC | 38 A0 00 00 */	li r5, 0x0
/* 814716D0 | B0 A1 00 94 */	sth r5, 0x94(r1)
/* 814716D4 | 48 00 00 0C */	b .L_814716E0
.L_814716D8:
/* 814716D8 | 38 E0 00 00 */	li r7, 0x0
/* 814716DC | B0 E1 00 94 */	sth r7, 0x94(r1)
.L_814716E0:
/* 814716E0 | 80 81 00 C0 */	lwz r4, 0xc0(r1)
/* 814716E4 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814716E8 | 28 03 F3 1D */	cmplwi r3, 0xf31d
/* 814716EC | 40 82 00 FC */	bne .L_814717E8
/* 814716F0 | A0 C1 00 94 */	lhz r6, 0x94(r1)
/* 814716F4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814716F8 | 41 82 00 F0 */	beq .L_814717E8
/* 814716FC | A1 01 00 72 */	lhz r8, 0x72(r1)
/* 81471700 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81471704 | 41 82 00 14 */	beq .L_81471718
/* 81471708 | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 8147170C | 38 E5 FF FF */	subi r7, r5, 0x1
/* 81471710 | B0 E1 00 72 */	sth r7, 0x72(r1)
/* 81471714 | 48 00 00 D4 */	b .L_814717E8
.L_81471718:
/* 81471718 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8147171C | 38 C4 00 01 */	addi r6, r4, 0x1
/* 81471720 | 90 C1 00 CC */	stw r6, 0xcc(r1)
/* 81471724 | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 81471728 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8147172C | 40 82 00 AC */	bne .L_814717D8
/* 81471730 | 88 61 00 5D */	lbz r3, 0x5d(r1)
/* 81471734 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81471738 | 41 82 00 64 */	beq .L_8147179C
/* 8147173C | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 81471740 | 39 09 00 01 */	addi r8, r9, 0x1
/* 81471744 | 99 01 00 67 */	stb r8, 0x67(r1)
/* 81471748 | A0 E1 00 94 */	lhz r7, 0x94(r1)
/* 8147174C | 80 81 00 BC */	lwz r4, 0xbc(r1)
/* 81471750 | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 81471754 | 7C C5 33 78 */	mr r5, r6
/* 81471758 | 54 A3 08 3C */	slwi r3, r5, 1
/* 8147175C | 7C E4 1B 2E */	sthx r7, r4, r3
/* 81471760 | 38 86 00 01 */	addi r4, r6, 0x1
/* 81471764 | 90 81 01 04 */	stw r4, 0x104(r1)
/* 81471768 | 39 40 00 20 */	li r10, 0x20
/* 8147176C | 81 21 00 BC */	lwz r9, 0xbc(r1)
/* 81471770 | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 81471774 | 7C C5 33 78 */	mr r5, r6
/* 81471778 | 54 A8 08 3C */	slwi r8, r5, 1
/* 8147177C | 7D 49 43 2E */	sthx r10, r9, r8
/* 81471780 | 38 86 00 01 */	addi r4, r6, 0x1
/* 81471784 | 90 81 01 04 */	stw r4, 0x104(r1)
/* 81471788 | 80 E1 01 04 */	lwz r7, 0x104(r1)
/* 8147178C | 80 C1 00 C8 */	lwz r6, 0xc8(r1)
/* 81471790 | 7C 07 30 00 */	cmpw r7, r6
/* 81471794 | 41 81 2F B4 */	bgt .L_81474748
/* 81471798 | 48 00 00 28 */	b .L_814717C0
.L_8147179C:
/* 8147179C | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 814717A0 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 814717A4 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 814717A8 | 7C 8B 23 78 */	mr r11, r4
/* 814717AC | 55 67 06 3E */	clrlwi r7, r11, 24
/* 814717B0 | 54 EA 08 3C */	slwi r10, r7, 1
/* 814717B4 | 7C A3 53 2E */	sthx r5, r3, r10
/* 814717B8 | 38 64 00 01 */	addi r3, r4, 0x1
/* 814717BC | 98 61 00 67 */	stb r3, 0x67(r1)
.L_814717C0:
/* 814717C0 | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 814717C4 | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 814717C8 | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 814717CC | 7C 05 20 40 */	cmplw r5, r4
/* 814717D0 | 40 80 2F 78 */	bge .L_81474748
/* 814717D4 | 48 00 00 14 */	b .L_814717E8
.L_814717D8:
/* 814717D8 | 81 21 00 CC */	lwz r9, 0xcc(r1)
/* 814717DC | 81 1D 00 0C */	lwz r8, 0xc(r29)
/* 814717E0 | 7C 09 40 00 */	cmpw r9, r8
/* 814717E4 | 40 80 2F 64 */	bge .L_81474748
.L_814717E8:
/* 814717E8 | 88 7E 01 2C */	lbz r3, 0x12c(r30)
/* 814717EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814717F0 | 41 82 07 40 */	beq .L_81471F30
/* 814717F4 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 814717F8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814717FC | 40 82 00 10 */	bne .L_8147180C
/* 81471800 | 88 81 00 5C */	lbz r4, 0x5c(r1)
/* 81471804 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81471808 | 40 82 07 28 */	bne .L_81471F30
.L_8147180C:
/* 8147180C | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 81471810 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81471814 | 40 82 07 1C */	bne .L_81471F30
/* 81471818 | 88 E1 02 FD */	lbz r7, 0x2fd(r1)
/* 8147181C | 28 07 00 01 */	cmplwi r7, 0x1
/* 81471820 | 40 81 00 1C */	ble .L_8147183C
/* 81471824 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 81471828 | 28 04 00 01 */	cmplwi r4, 0x1
/* 8147182C | 41 82 07 04 */	beq .L_81471F30
/* 81471830 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 81471834 | 28 03 00 02 */	cmplwi r3, 0x2
/* 81471838 | 41 82 06 F8 */	beq .L_81471F30
.L_8147183C:
/* 8147183C | 38 61 01 0C */	addi r3, r1, 0x10c
/* 81471840 | 38 81 00 9A */	addi r4, r1, 0x9a
/* 81471844 | 7F C5 F3 78 */	mr r5, r30
/* 81471848 | 48 00 F4 55 */	bl Zi8GetZHuwdPtr
/* 8147184C | 7C 6C 1B 78 */	mr r12, r3
/* 81471850 | 55 86 06 3E */	clrlwi r6, r12, 24
/* 81471854 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81471858 | 41 82 06 D8 */	beq .L_81471F30
/* 8147185C | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 81471860 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81471864 | 40 82 00 10 */	bne .L_81471874
/* 81471868 | 88 81 03 44 */	lbz r4, 0x344(r1)
/* 8147186C | 28 04 00 01 */	cmplwi r4, 0x1
/* 81471870 | 41 81 06 C0 */	bgt .L_81471F30
.L_81471874:
/* 81471874 | 39 00 00 00 */	li r8, 0x0
/* 81471878 | B1 01 00 9C */	sth r8, 0x9c(r1)
/* 8147187C | 48 00 06 A0 */	b .L_81471F1C
.L_81471880:
/* 81471880 | 81 61 01 0C */	lwz r11, 0x10c(r1)
/* 81471884 | 88 6B 00 01 */	lbz r3, 0x1(r11)
/* 81471888 | 54 67 06 7E */	clrlwi r7, r3, 25
/* 8147188C | 54 EA 04 3E */	clrlwi r10, r7, 16
/* 81471890 | 55 49 40 2E */	slwi r9, r10, 8
/* 81471894 | 80 C1 01 0C */	lwz r6, 0x10c(r1)
/* 81471898 | 88 86 00 02 */	lbz r4, 0x2(r6)
/* 8147189C | 7D 25 23 78 */	or r5, r9, r4
/* 814718A0 | 54 A3 04 3E */	clrlwi r3, r5, 16
/* 814718A4 | B0 61 00 98 */	sth r3, 0x98(r1)
/* 814718A8 | 81 01 00 EC */	lwz r8, 0xec(r1)
/* 814718AC | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 814718B0 | 1C C7 00 0C */	mulli r6, r7, 0xc
/* 814718B4 | 7C C8 32 14 */	add r6, r8, r6
/* 814718B8 | 90 C1 01 00 */	stw r6, 0x100(r1)
/* 814718BC | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 814718C0 | 89 24 00 00 */	lbz r9, 0x0(r4)
/* 814718C4 | 88 A1 00 6E */	lbz r5, 0x6e(r1)
/* 814718C8 | 7D 28 28 38 */	and r8, r9, r5
/* 814718CC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814718D0 | 41 82 06 34 */	beq .L_81471F04
/* 814718D4 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 814718D8 | 88 83 00 06 */	lbz r4, 0x6(r3)
/* 814718DC | 54 87 04 3E */	clrlwi r7, r4, 16
/* 814718E0 | 54 E6 40 2E */	slwi r6, r7, 8
/* 814718E4 | 81 21 01 00 */	lwz r9, 0x100(r1)
/* 814718E8 | 88 69 00 07 */	lbz r3, 0x7(r9)
/* 814718EC | 7C A6 1A 14 */	add r5, r6, r3
/* 814718F0 | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 814718F4 | B0 81 00 94 */	sth r4, 0x94(r1)
/* 814718F8 | 39 40 00 00 */	li r10, 0x0
/* 814718FC | 99 41 00 63 */	stb r10, 0x63(r1)
/* 81471900 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 81471904 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 81471908 | 40 80 00 1C */	bge .L_81471924
/* 8147190C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81471910 | 41 82 02 B8 */	beq .L_81471BC8
/* 81471914 | 41 80 04 24 */	blt .L_81471D38
/* 81471918 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8147191C | 40 80 04 1C */	bge .L_81471D38
/* 81471920 | 48 00 03 54 */	b .L_81471C74
.L_81471924:
/* 81471924 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 81471928 | 41 82 01 2C */	beq .L_81471A54
/* 8147192C | 40 80 04 0C */	bge .L_81471D38
/* 81471930 | 48 00 00 04 */	b .L_81471934
.L_81471934:
/* 81471934 | 81 81 00 D4 */	lwz r12, 0xd4(r1)
/* 81471938 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 8147193C | 89 07 00 09 */	lbz r8, 0x9(r7)
/* 81471940 | 55 06 07 3E */	clrlwi r6, r8, 28
/* 81471944 | 54 C5 80 1E */	slwi r5, r6, 16
/* 81471948 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8147194C | 88 83 00 0B */	lbz r4, 0xb(r3)
/* 81471950 | 81 61 01 00 */	lwz r11, 0x100(r1)
/* 81471954 | 89 2B 00 0A */	lbz r9, 0xa(r11)
/* 81471958 | 55 27 40 2E */	slwi r7, r9, 8
/* 8147195C | 7C 88 3B 78 */	or r8, r4, r7
/* 81471960 | 7C AA 43 78 */	or r10, r5, r8
/* 81471964 | 7D 0C 52 14 */	add r8, r12, r10
/* 81471968 | 91 01 00 B8 */	stw r8, 0xb8(r1)
/* 8147196C | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 81471970 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 81471974 | 54 86 07 7E */	clrlwi r6, r4, 29
/* 81471978 | 89 21 02 FC */	lbz r9, 0x2fc(r1)
/* 8147197C | 7C 06 48 00 */	cmpw r6, r9
/* 81471980 | 41 80 00 C8 */	blt .L_81471A48
/* 81471984 | 89 01 02 F5 */	lbz r8, 0x2f5(r1)
/* 81471988 | 88 A1 02 F1 */	lbz r5, 0x2f1(r1)
/* 8147198C | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 81471990 | 88 E4 00 00 */	lbz r7, 0x0(r4)
/* 81471994 | 7C A3 38 38 */	and r3, r5, r7
/* 81471998 | 7C 08 18 00 */	cmpw r8, r3
/* 8147199C | 40 82 00 AC */	bne .L_81471A48
/* 814719A0 | 88 C1 02 F6 */	lbz r6, 0x2f6(r1)
/* 814719A4 | 88 81 02 F2 */	lbz r4, 0x2f2(r1)
/* 814719A8 | 81 41 00 B8 */	lwz r10, 0xb8(r1)
/* 814719AC | 88 AA 00 01 */	lbz r5, 0x1(r10)
/* 814719B0 | 7C 84 28 38 */	and r4, r4, r5
/* 814719B4 | 7C 06 20 00 */	cmpw r6, r4
/* 814719B8 | 40 82 00 90 */	bne .L_81471A48
/* 814719BC | 89 21 02 F7 */	lbz r9, 0x2f7(r1)
/* 814719C0 | 88 E1 02 F3 */	lbz r7, 0x2f3(r1)
/* 814719C4 | 80 C1 00 B8 */	lwz r6, 0xb8(r1)
/* 814719C8 | 88 66 00 02 */	lbz r3, 0x2(r6)
/* 814719CC | 7C E8 18 38 */	and r8, r7, r3
/* 814719D0 | 7C 09 40 00 */	cmpw r9, r8
/* 814719D4 | 40 82 00 74 */	bne .L_81471A48
/* 814719D8 | 88 A1 02 F8 */	lbz r5, 0x2f8(r1)
/* 814719DC | 88 61 02 F4 */	lbz r3, 0x2f4(r1)
/* 814719E0 | 80 E1 00 B8 */	lwz r7, 0xb8(r1)
/* 814719E4 | 88 C7 00 03 */	lbz r6, 0x3(r7)
/* 814719E8 | 7C 64 30 38 */	and r4, r3, r6
/* 814719EC | 7C 05 20 00 */	cmpw r5, r4
/* 814719F0 | 40 82 00 58 */	bne .L_81471A48
/* 814719F4 | 88 A1 00 52 */	lbz r5, 0x52(r1)
/* 814719F8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814719FC | 41 82 00 1C */	beq .L_81471A18
/* 81471A00 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 81471A04 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 81471A08 | 54 67 07 7E */	clrlwi r7, r3, 29
/* 81471A0C | 89 61 02 FC */	lbz r11, 0x2fc(r1)
/* 81471A10 | 7C 07 58 00 */	cmpw r7, r11
/* 81471A14 | 41 82 00 28 */	beq .L_81471A3C
.L_81471A18:
/* 81471A18 | 89 41 00 52 */	lbz r10, 0x52(r1)
/* 81471A1C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81471A20 | 40 82 00 28 */	bne .L_81471A48
/* 81471A24 | 81 01 00 B8 */	lwz r8, 0xb8(r1)
/* 81471A28 | 89 28 00 00 */	lbz r9, 0x0(r8)
/* 81471A2C | 55 28 07 7E */	clrlwi r8, r9, 29
/* 81471A30 | 88 E1 02 FC */	lbz r7, 0x2fc(r1)
/* 81471A34 | 7C 08 38 00 */	cmpw r8, r7
/* 81471A38 | 40 81 00 10 */	ble .L_81471A48
.L_81471A3C:
/* 81471A3C | 38 C0 00 01 */	li r6, 0x1
/* 81471A40 | 98 C1 00 63 */	stb r6, 0x63(r1)
/* 81471A44 | 48 00 02 F4 */	b .L_81471D38
.L_81471A48:
/* 81471A48 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 81471A4C | 28 05 00 08 */	cmplwi r5, 0x8
/* 81471A50 | 40 82 02 E8 */	bne .L_81471D38
.L_81471A54:
/* 81471A54 | 81 21 00 D4 */	lwz r9, 0xd4(r1)
/* 81471A58 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81471A5C | 89 44 00 09 */	lbz r10, 0x9(r4)
/* 81471A60 | 55 43 07 3E */	clrlwi r3, r10, 28
/* 81471A64 | 54 68 80 1E */	slwi r8, r3, 16
/* 81471A68 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81471A6C | 88 A3 00 0B */	lbz r5, 0xb(r3)
/* 81471A70 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 81471A74 | 88 87 00 0A */	lbz r4, 0xa(r7)
/* 81471A78 | 54 86 40 2E */	slwi r6, r4, 8
/* 81471A7C | 7C A5 33 78 */	or r5, r5, r6
/* 81471A80 | 7D 04 2B 78 */	or r4, r8, r5
/* 81471A84 | 7D 29 22 14 */	add r9, r9, r4
/* 81471A88 | 91 21 00 B8 */	stw r9, 0xb8(r1)
/* 81471A8C | 81 01 00 B8 */	lwz r8, 0xb8(r1)
/* 81471A90 | 88 88 00 00 */	lbz r4, 0x0(r8)
/* 81471A94 | 54 87 07 7E */	clrlwi r7, r4, 29
/* 81471A98 | 90 E1 01 14 */	stw r7, 0x114(r1)
/* 81471A9C | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 81471AA0 | 88 C3 00 00 */	lbz r6, 0x0(r3)
/* 81471AA4 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 81471AA8 | 54 A4 10 3A */	slwi r4, r5, 2
/* 81471AAC | 39 01 01 40 */	addi r8, r1, 0x140
/* 81471AB0 | 7C 68 20 AE */	lbzx r3, r8, r4
/* 81471AB4 | 7C C7 18 38 */	and r7, r6, r3
/* 81471AB8 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 81471ABC | 54 C5 10 3A */	slwi r5, r6, 2
/* 81471AC0 | 38 81 01 28 */	addi r4, r1, 0x128
/* 81471AC4 | 7C 64 28 AE */	lbzx r3, r4, r5
/* 81471AC8 | 7C 07 18 00 */	cmpw r7, r3
/* 81471ACC | 40 82 02 6C */	bne .L_81471D38
/* 81471AD0 | 81 21 00 B8 */	lwz r9, 0xb8(r1)
/* 81471AD4 | 89 09 00 01 */	lbz r8, 0x1(r9)
/* 81471AD8 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 81471ADC | 54 E6 10 3A */	slwi r6, r7, 2
/* 81471AE0 | 38 A1 01 40 */	addi r5, r1, 0x140
/* 81471AE4 | 7C 85 32 14 */	add r4, r5, r6
/* 81471AE8 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 81471AEC | 7D 04 18 38 */	and r4, r8, r3
/* 81471AF0 | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 81471AF4 | 54 03 10 3A */	slwi r3, r0, 2
/* 81471AF8 | 38 01 01 28 */	addi r0, r1, 0x128
/* 81471AFC | 7C 60 1A 14 */	add r3, r0, r3
/* 81471B00 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81471B04 | 7C 04 00 00 */	cmpw r4, r0
/* 81471B08 | 40 82 02 30 */	bne .L_81471D38
/* 81471B0C | 81 01 00 B8 */	lwz r8, 0xb8(r1)
/* 81471B10 | 88 E8 00 02 */	lbz r7, 0x2(r8)
/* 81471B14 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 81471B18 | 54 C5 10 3A */	slwi r5, r6, 2
/* 81471B1C | 38 81 01 40 */	addi r4, r1, 0x140
/* 81471B20 | 7C 64 2A 14 */	add r3, r4, r5
/* 81471B24 | 89 83 00 02 */	lbz r12, 0x2(r3)
/* 81471B28 | 7C EB 60 38 */	and r11, r7, r12
/* 81471B2C | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 81471B30 | 54 EA 10 3A */	slwi r10, r7, 2
/* 81471B34 | 39 21 01 28 */	addi r9, r1, 0x128
/* 81471B38 | 7D 09 52 14 */	add r8, r9, r10
/* 81471B3C | 88 68 00 02 */	lbz r3, 0x2(r8)
/* 81471B40 | 7C 0B 18 00 */	cmpw r11, r3
/* 81471B44 | 40 82 01 F4 */	bne .L_81471D38
/* 81471B48 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 81471B4C | 88 64 00 03 */	lbz r3, 0x3(r4)
/* 81471B50 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 81471B54 | 55 28 10 3A */	slwi r8, r9, 2
/* 81471B58 | 38 A1 01 40 */	addi r5, r1, 0x140
/* 81471B5C | 7C E5 42 14 */	add r7, r5, r8
/* 81471B60 | 88 C7 00 03 */	lbz r6, 0x3(r7)
/* 81471B64 | 7C 65 30 38 */	and r5, r3, r6
/* 81471B68 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 81471B6C | 54 8C 10 3A */	slwi r12, r4, 2
/* 81471B70 | 38 81 01 28 */	addi r4, r1, 0x128
/* 81471B74 | 7D 64 62 14 */	add r11, r4, r12
/* 81471B78 | 89 4B 00 03 */	lbz r10, 0x3(r11)
/* 81471B7C | 7C 05 50 00 */	cmpw r5, r10
/* 81471B80 | 40 82 01 B8 */	bne .L_81471D38
/* 81471B84 | 88 61 00 52 */	lbz r3, 0x52(r1)
/* 81471B88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81471B8C | 41 82 00 14 */	beq .L_81471BA0
/* 81471B90 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 81471B94 | 89 21 02 FC */	lbz r9, 0x2fc(r1)
/* 81471B98 | 7C 04 48 00 */	cmpw r4, r9
/* 81471B9C | 41 82 00 20 */	beq .L_81471BBC
.L_81471BA0:
/* 81471BA0 | 88 A1 00 52 */	lbz r5, 0x52(r1)
/* 81471BA4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81471BA8 | 40 82 01 90 */	bne .L_81471D38
/* 81471BAC | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 81471BB0 | 89 01 02 FC */	lbz r8, 0x2fc(r1)
/* 81471BB4 | 7C 07 40 00 */	cmpw r7, r8
/* 81471BB8 | 40 81 01 80 */	ble .L_81471D38
.L_81471BBC:
/* 81471BBC | 38 C0 00 01 */	li r6, 0x1
/* 81471BC0 | 98 C1 00 63 */	stb r6, 0x63(r1)
/* 81471BC4 | 48 00 01 74 */	b .L_81471D38
.L_81471BC8:
/* 81471BC8 | 88 81 02 E5 */	lbz r4, 0x2e5(r1)
/* 81471BCC | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 81471BD0 | 88 67 00 00 */	lbz r3, 0x0(r7)
/* 81471BD4 | 88 A1 02 D9 */	lbz r5, 0x2d9(r1)
/* 81471BD8 | 7C 7B 28 38 */	and r27, r3, r5
/* 81471BDC | 7C 04 D8 00 */	cmpw r4, r27
/* 81471BE0 | 40 82 01 58 */	bne .L_81471D38
/* 81471BE4 | 88 81 02 D8 */	lbz r4, 0x2d8(r1)
/* 81471BE8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81471BEC | 40 82 00 58 */	bne .L_81471C44
/* 81471BF0 | 88 C1 02 E8 */	lbz r6, 0x2e8(r1)
/* 81471BF4 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81471BF8 | 89 03 00 03 */	lbz r8, 0x3(r3)
/* 81471BFC | 88 A1 02 DC */	lbz r5, 0x2dc(r1)
/* 81471C00 | 7D 04 28 38 */	and r4, r8, r5
/* 81471C04 | 7C 06 20 00 */	cmpw r6, r4
/* 81471C08 | 40 82 01 30 */	bne .L_81471D38
/* 81471C0C | 88 E1 02 E7 */	lbz r7, 0x2e7(r1)
/* 81471C10 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 81471C14 | 88 66 00 02 */	lbz r3, 0x2(r6)
/* 81471C18 | 88 A1 02 DB */	lbz r5, 0x2db(r1)
/* 81471C1C | 7C 7C 28 38 */	and r28, r3, r5
/* 81471C20 | 7C 07 E0 00 */	cmpw r7, r28
/* 81471C24 | 40 82 01 14 */	bne .L_81471D38
/* 81471C28 | 89 81 02 E6 */	lbz r12, 0x2e6(r1)
/* 81471C2C | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81471C30 | 89 64 00 01 */	lbz r11, 0x1(r4)
/* 81471C34 | 89 41 02 DA */	lbz r10, 0x2da(r1)
/* 81471C38 | 7D 69 50 38 */	and r9, r11, r10
/* 81471C3C | 7C 0C 48 00 */	cmpw r12, r9
/* 81471C40 | 40 82 00 F8 */	bne .L_81471D38
.L_81471C44:
/* 81471C44 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81471C48 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 81471C4C | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 81471C50 | 38 C0 00 00 */	li r6, 0x0
/* 81471C54 | 7F C7 F3 78 */	mr r7, r30
/* 81471C58 | 48 00 B4 F1 */	bl Zi8SecMatchChar
/* 81471C5C | 54 68 06 3E */	clrlwi r8, r3, 24
/* 81471C60 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81471C64 | 41 82 00 D4 */	beq .L_81471D38
/* 81471C68 | 38 80 00 01 */	li r4, 0x1
/* 81471C6C | 98 81 00 63 */	stb r4, 0x63(r1)
/* 81471C70 | 48 00 00 C8 */	b .L_81471D38
.L_81471C74:
/* 81471C74 | 88 BF 00 0C */	lbz r5, 0xc(r31)
/* 81471C78 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81471C7C | 41 82 00 24 */	beq .L_81471CA0
/* 81471C80 | 80 E1 01 0C */	lwz r7, 0x10c(r1)
/* 81471C84 | 88 C7 00 01 */	lbz r6, 0x1(r7)
/* 81471C88 | 54 C4 06 30 */	rlwinm r4, r6, 0, 24, 24
/* 81471C8C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81471C90 | 40 82 00 10 */	bne .L_81471CA0
/* 81471C94 | 38 A0 00 00 */	li r5, 0x0
/* 81471C98 | 98 A1 00 63 */	stb r5, 0x63(r1)
/* 81471C9C | 48 00 00 9C */	b .L_81471D38
.L_81471CA0:
/* 81471CA0 | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 81471CA4 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81471CA8 | 48 00 D2 21 */	bl Zi8GetPCode
/* 81471CAC | 54 68 04 3E */	clrlwi r8, r3, 16
/* 81471CB0 | A0 81 03 3E */	lhz r4, 0x33e(r1)
/* 81471CB4 | 7C 83 40 38 */	and r3, r4, r8
/* 81471CB8 | A1 21 03 40 */	lhz r9, 0x340(r1)
/* 81471CBC | 7C 89 18 50 */	subf r4, r9, r3
/* 81471CC0 | 7C 86 00 34 */	cntlzw r6, r4
/* 81471CC4 | 54 C5 D9 7E */	srwi r5, r6, 5
/* 81471CC8 | 54 A7 06 3E */	clrlwi r7, r5, 24
/* 81471CCC | 98 E1 00 63 */	stb r7, 0x63(r1)
/* 81471CD0 | 88 81 00 63 */	lbz r4, 0x63(r1)
/* 81471CD4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81471CD8 | 40 82 00 60 */	bne .L_81471D38
/* 81471CDC | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81471CE0 | 88 C3 00 00 */	lbz r6, 0x0(r3)
/* 81471CE4 | 54 C8 06 30 */	rlwinm r8, r6, 0, 24, 24
/* 81471CE8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81471CEC | 41 82 00 4C */	beq .L_81471D38
/* 81471CF0 | 88 A1 00 55 */	lbz r5, 0x55(r1)
/* 81471CF4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81471CF8 | 40 82 00 40 */	bne .L_81471D38
/* 81471CFC | 80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 81471D00 | A0 81 00 76 */	lhz r4, 0x76(r1)
/* 81471D04 | 80 A1 00 F0 */	lwz r5, 0xf0(r1)
/* 81471D08 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 81471D0C | A0 E1 03 3E */	lhz r7, 0x33e(r1)
/* 81471D10 | A1 01 03 40 */	lhz r8, 0x340(r1)
/* 81471D14 | 89 21 00 6E */	lbz r9, 0x6e(r1)
/* 81471D18 | 7F CA F3 78 */	mr r10, r30
/* 81471D1C | 4B FF 89 51 */	bl Zi8MatchAltSound
/* 81471D20 | 7C 67 1B 78 */	mr r7, r3
/* 81471D24 | 54 E4 04 3E */	clrlwi r4, r7, 16
/* 81471D28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81471D2C | 41 82 00 0C */	beq .L_81471D38
/* 81471D30 | 38 C0 00 01 */	li r6, 0x1
/* 81471D34 | 98 C1 00 63 */	stb r6, 0x63(r1)
.L_81471D38:
/* 81471D38 | 88 A1 00 63 */	lbz r5, 0x63(r1)
/* 81471D3C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81471D40 | 41 82 01 C4 */	beq .L_81471F04
/* 81471D44 | 80 61 00 E4 */	lwz r3, 0xe4(r1)
/* 81471D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81471D4C | 41 82 00 2C */	beq .L_81471D78
/* 81471D50 | 81 21 00 E4 */	lwz r9, 0xe4(r1)
/* 81471D54 | A1 01 00 98 */	lhz r8, 0x98(r1)
/* 81471D58 | 7C E9 42 14 */	add r7, r9, r8
/* 81471D5C | 90 E1 00 C4 */	stw r7, 0xc4(r1)
/* 81471D60 | 80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 81471D64 | 88 C4 00 00 */	lbz r6, 0x0(r4)
/* 81471D68 | 88 A1 00 6D */	lbz r5, 0x6d(r1)
/* 81471D6C | 7C C4 28 38 */	and r4, r6, r5
/* 81471D70 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81471D74 | 41 82 01 90 */	beq .L_81471F04
.L_81471D78:
/* 81471D78 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81471D7C | 89 5E 01 20 */	lbz r10, 0x120(r30)
/* 81471D80 | 55 49 08 3C */	slwi r9, r10, 1
/* 81471D84 | 7C DE 4A 14 */	add r6, r30, r9
/* 81471D88 | B0 66 00 A0 */	sth r3, 0xa0(r6)
/* 81471D8C | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 81471D90 | 88 9E 01 20 */	lbz r4, 0x120(r30)
/* 81471D94 | 54 88 08 3C */	slwi r8, r4, 1
/* 81471D98 | 7C FE 42 14 */	add r7, r30, r8
/* 81471D9C | B0 A7 00 20 */	sth r5, 0x20(r7)
/* 81471DA0 | 88 C1 00 5D */	lbz r6, 0x5d(r1)
/* 81471DA4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81471DA8 | 40 82 00 50 */	bne .L_81471DF8
/* 81471DAC | 88 A1 00 5E */	lbz r5, 0x5e(r1)
/* 81471DB0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81471DB4 | 41 82 00 24 */	beq .L_81471DD8
/* 81471DB8 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81471DBC | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 81471DC0 | 7F C5 F3 78 */	mr r5, r30
/* 81471DC4 | 4B FF 8D 59 */	bl Zi8SetFindCand
/* 81471DC8 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81471DCC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81471DD0 | 40 82 01 34 */	bne .L_81471F04
/* 81471DD4 | 48 00 00 48 */	b .L_81471E1C
.L_81471DD8:
/* 81471DD8 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81471DDC | 7F C4 F3 78 */	mr r4, r30
/* 81471DE0 | 48 00 9F 15 */	bl Zi8IsDupWChar
/* 81471DE4 | 7C 6B 1B 78 */	mr r11, r3
/* 81471DE8 | 55 63 06 3E */	clrlwi r3, r11, 24
/* 81471DEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81471DF0 | 40 82 01 14 */	bne .L_81471F04
/* 81471DF4 | 48 00 00 28 */	b .L_81471E1C
.L_81471DF8:
/* 81471DF8 | 38 61 00 94 */	addi r3, r1, 0x94
/* 81471DFC | 38 80 00 01 */	li r4, 0x1
/* 81471E00 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81471E04 | 7F C5 F3 78 */	mr r5, r30
/* 81471E08 | 48 00 9F E9 */	bl Zi8IsDupWordW
/* 81471E0C | 7C 67 1B 78 */	mr r7, r3
/* 81471E10 | 54 EA 06 3E */	clrlwi r10, r7, 24
/* 81471E14 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81471E18 | 40 82 00 EC */	bne .L_81471F04
.L_81471E1C:
/* 81471E1C | A0 C1 00 72 */	lhz r6, 0x72(r1)
/* 81471E20 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81471E24 | 41 82 00 14 */	beq .L_81471E38
/* 81471E28 | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 81471E2C | 38 85 FF FF */	subi r4, r5, 0x1
/* 81471E30 | B0 81 00 72 */	sth r4, 0x72(r1)
/* 81471E34 | 48 00 00 D0 */	b .L_81471F04
.L_81471E38:
/* 81471E38 | 89 3E 01 20 */	lbz r9, 0x120(r30)
/* 81471E3C | 39 09 00 01 */	addi r8, r9, 0x1
/* 81471E40 | 99 1E 01 20 */	stb r8, 0x120(r30)
/* 81471E44 | 55 03 06 3E */	clrlwi r3, r8, 24
/* 81471E48 | 28 03 00 40 */	cmplwi r3, 0x40
/* 81471E4C | 41 80 00 0C */	blt .L_81471E58
/* 81471E50 | 38 C0 00 00 */	li r6, 0x0
/* 81471E54 | 98 DE 01 20 */	stb r6, 0x120(r30)
.L_81471E58:
/* 81471E58 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 81471E5C | 38 A4 00 01 */	addi r5, r4, 0x1
/* 81471E60 | 90 A1 00 CC */	stw r5, 0xcc(r1)
/* 81471E64 | 88 E1 00 5D */	lbz r7, 0x5d(r1)
/* 81471E68 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81471E6C | 41 82 00 64 */	beq .L_81471ED0
/* 81471E70 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81471E74 | 38 64 00 01 */	addi r3, r4, 0x1
/* 81471E78 | 98 61 00 67 */	stb r3, 0x67(r1)
/* 81471E7C | A1 81 00 94 */	lhz r12, 0x94(r1)
/* 81471E80 | 80 C1 00 BC */	lwz r6, 0xbc(r1)
/* 81471E84 | 80 A1 01 04 */	lwz r5, 0x104(r1)
/* 81471E88 | 7C A4 2B 78 */	mr r4, r5
/* 81471E8C | 54 8B 08 3C */	slwi r11, r4, 1
/* 81471E90 | 7D 86 5B 2E */	sthx r12, r6, r11
/* 81471E94 | 39 05 00 01 */	addi r8, r5, 0x1
/* 81471E98 | 91 01 01 04 */	stw r8, 0x104(r1)
/* 81471E9C | 38 60 00 20 */	li r3, 0x20
/* 81471EA0 | 80 E1 00 BC */	lwz r7, 0xbc(r1)
/* 81471EA4 | 81 41 01 04 */	lwz r10, 0x104(r1)
/* 81471EA8 | 7D 49 53 78 */	mr r9, r10
/* 81471EAC | 55 24 08 3C */	slwi r4, r9, 1
/* 81471EB0 | 7C 67 23 2E */	sthx r3, r7, r4
/* 81471EB4 | 38 CA 00 01 */	addi r6, r10, 0x1
/* 81471EB8 | 90 C1 01 04 */	stw r6, 0x104(r1)
/* 81471EBC | 80 A1 01 04 */	lwz r5, 0x104(r1)
/* 81471EC0 | 80 61 00 C8 */	lwz r3, 0xc8(r1)
/* 81471EC4 | 7C 05 18 00 */	cmpw r5, r3
/* 81471EC8 | 41 81 28 80 */	bgt .L_81474748
/* 81471ECC | 48 00 00 24 */	b .L_81471EF0
.L_81471ED0:
/* 81471ED0 | A1 01 00 94 */	lhz r8, 0x94(r1)
/* 81471ED4 | 80 E1 00 BC */	lwz r7, 0xbc(r1)
/* 81471ED8 | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 81471EDC | 54 C9 06 3E */	clrlwi r9, r6, 24
/* 81471EE0 | 55 25 08 3C */	slwi r5, r9, 1
/* 81471EE4 | 7D 07 2B 2E */	sthx r8, r7, r5
/* 81471EE8 | 38 86 00 01 */	addi r4, r6, 0x1
/* 81471EEC | 98 81 00 67 */	stb r4, 0x67(r1)
.L_81471EF0:
/* 81471EF0 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 81471EF4 | 55 03 06 3E */	clrlwi r3, r8, 24
/* 81471EF8 | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 81471EFC | 7C 03 20 40 */	cmplw r3, r4
/* 81471F00 | 40 80 28 48 */	bge .L_81474748
.L_81471F04:
/* 81471F04 | A0 E1 00 9C */	lhz r7, 0x9c(r1)
/* 81471F08 | 38 C7 00 01 */	addi r6, r7, 0x1
/* 81471F0C | B0 C1 00 9C */	sth r6, 0x9c(r1)
/* 81471F10 | 81 21 01 0C */	lwz r9, 0x10c(r1)
/* 81471F14 | 38 69 00 03 */	addi r3, r9, 0x3
/* 81471F18 | 90 61 01 0C */	stw r3, 0x10c(r1)
.L_81471F1C:
/* 81471F1C | A0 A1 00 9C */	lhz r5, 0x9c(r1)
/* 81471F20 | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 81471F24 | A1 41 00 9A */	lhz r10, 0x9a(r1)
/* 81471F28 | 7C 04 50 40 */	cmplw r4, r10
/* 81471F2C | 41 80 F9 54 */	blt .L_81471880
.L_81471F30:
/* 81471F30 | 88 61 00 51 */	lbz r3, 0x51(r1)
/* 81471F34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81471F38 | 41 82 27 A8 */	beq .L_814746E0
/* 81471F3C | 89 81 00 56 */	lbz r12, 0x56(r1)
/* 81471F40 | 28 0C 00 07 */	cmplwi r12, 0x7
/* 81471F44 | 41 82 00 1C */	beq .L_81471F60
/* 81471F48 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 81471F4C | 28 07 00 08 */	cmplwi r7, 0x8
/* 81471F50 | 41 82 00 10 */	beq .L_81471F60
/* 81471F54 | 89 01 00 56 */	lbz r8, 0x56(r1)
/* 81471F58 | 28 08 00 09 */	cmplwi r8, 0x9
/* 81471F5C | 40 82 05 04 */	bne .L_81472460
.L_81471F60:
/* 81471F60 | 80 C1 00 EC */	lwz r6, 0xec(r1)
/* 81471F64 | 90 C1 01 00 */	stw r6, 0x100(r1)
/* 81471F68 | 38 A0 00 00 */	li r5, 0x0
/* 81471F6C | B0 A1 00 A2 */	sth r5, 0xa2(r1)
/* 81471F70 | 48 00 04 D8 */	b .L_81472448
.L_81471F74:
/* 81471F74 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81471F78 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 81471F7C | 89 61 00 6E */	lbz r11, 0x6e(r1)
/* 81471F80 | 7C 89 58 38 */	and r9, r4, r11
/* 81471F84 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81471F88 | 41 82 04 A8 */	beq .L_81472430
/* 81471F8C | 80 E1 00 E4 */	lwz r7, 0xe4(r1)
/* 81471F90 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81471F94 | 41 82 00 2C */	beq .L_81471FC0
/* 81471F98 | 81 01 00 E4 */	lwz r8, 0xe4(r1)
/* 81471F9C | A1 41 00 A2 */	lhz r10, 0xa2(r1)
/* 81471FA0 | 7D 08 52 14 */	add r8, r8, r10
/* 81471FA4 | 91 01 00 C4 */	stw r8, 0xc4(r1)
/* 81471FA8 | 80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 81471FAC | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 81471FB0 | 88 C1 00 6D */	lbz r6, 0x6d(r1)
/* 81471FB4 | 7C 89 30 38 */	and r9, r4, r6
/* 81471FB8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81471FBC | 41 82 04 74 */	beq .L_81472430
.L_81471FC0:
/* 81471FC0 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 81471FC4 | 88 A8 00 06 */	lbz r5, 0x6(r8)
/* 81471FC8 | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 81471FCC | 54 87 40 2E */	slwi r7, r4, 8
/* 81471FD0 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81471FD4 | 88 C3 00 07 */	lbz r6, 0x7(r3)
/* 81471FD8 | 7C 87 32 14 */	add r4, r7, r6
/* 81471FDC | 54 8A 04 3E */	clrlwi r10, r4, 16
/* 81471FE0 | B1 41 00 94 */	sth r10, 0x94(r1)
/* 81471FE4 | A0 A1 00 A2 */	lhz r5, 0xa2(r1)
/* 81471FE8 | 88 9E 01 20 */	lbz r4, 0x120(r30)
/* 81471FEC | 54 89 08 3C */	slwi r9, r4, 1
/* 81471FF0 | 7C FE 4A 14 */	add r7, r30, r9
/* 81471FF4 | B0 A7 00 A0 */	sth r5, 0xa0(r7)
/* 81471FF8 | A0 C1 00 94 */	lhz r6, 0x94(r1)
/* 81471FFC | 88 7E 01 20 */	lbz r3, 0x120(r30)
/* 81472000 | 54 68 08 3C */	slwi r8, r3, 1
/* 81472004 | 7C BE 42 14 */	add r5, r30, r8
/* 81472008 | B0 C5 00 20 */	sth r6, 0x20(r5)
/* 8147200C | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 81472010 | 54 67 04 3E */	clrlwi r7, r3, 16
/* 81472014 | A0 C1 00 8C */	lhz r6, 0x8c(r1)
/* 81472018 | 7C 07 30 40 */	cmplw r7, r6
/* 8147201C | 41 82 04 14 */	beq .L_81472430
/* 81472020 | A0 81 00 94 */	lhz r4, 0x94(r1)
/* 81472024 | B0 81 00 8C */	sth r4, 0x8c(r1)
/* 81472028 | 38 A0 00 00 */	li r5, 0x0
/* 8147202C | 98 A1 00 63 */	stb r5, 0x63(r1)
/* 81472030 | 80 81 00 D4 */	lwz r4, 0xd4(r1)
/* 81472034 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81472038 | 88 E3 00 09 */	lbz r7, 0x9(r3)
/* 8147203C | 54 EB 07 3E */	clrlwi r11, r7, 28
/* 81472040 | 55 6A 80 1E */	slwi r10, r11, 16
/* 81472044 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 81472048 | 89 28 00 0B */	lbz r9, 0xb(r8)
/* 8147204C | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 81472050 | 88 E8 00 0A */	lbz r7, 0xa(r8)
/* 81472054 | 54 E6 40 2E */	slwi r6, r7, 8
/* 81472058 | 7D 25 33 78 */	or r5, r9, r6
/* 8147205C | 7D 49 2B 78 */	or r9, r10, r5
/* 81472060 | 7C 84 4A 14 */	add r4, r4, r9
/* 81472064 | 90 81 00 B8 */	stw r4, 0xb8(r1)
/* 81472068 | 89 41 00 56 */	lbz r10, 0x56(r1)
/* 8147206C | 28 0A 00 07 */	cmplwi r10, 0x7
/* 81472070 | 41 82 01 5C */	beq .L_814721CC
/* 81472074 | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 81472078 | 89 03 00 00 */	lbz r8, 0x0(r3)
/* 8147207C | 55 03 07 7E */	clrlwi r3, r8, 29
/* 81472080 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 81472084 | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 81472088 | 88 E5 00 00 */	lbz r7, 0x0(r5)
/* 8147208C | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 81472090 | 54 86 10 3A */	slwi r6, r4, 2
/* 81472094 | 38 A1 01 40 */	addi r5, r1, 0x140
/* 81472098 | 7C 85 30 AE */	lbzx r4, r5, r6
/* 8147209C | 7C E9 20 38 */	and r9, r7, r4
/* 814720A0 | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 814720A4 | 55 04 10 3A */	slwi r4, r8, 2
/* 814720A8 | 38 E1 01 28 */	addi r7, r1, 0x128
/* 814720AC | 7C 67 20 AE */	lbzx r3, r7, r4
/* 814720B0 | 7C 09 18 00 */	cmpw r9, r3
/* 814720B4 | 40 82 01 0C */	bne .L_814721C0
/* 814720B8 | 80 C1 00 B8 */	lwz r6, 0xb8(r1)
/* 814720BC | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 814720C0 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 814720C4 | 54 88 10 3A */	slwi r8, r4, 2
/* 814720C8 | 38 61 01 40 */	addi r3, r1, 0x140
/* 814720CC | 7C E3 42 14 */	add r7, r3, r8
/* 814720D0 | 88 C7 00 01 */	lbz r6, 0x1(r7)
/* 814720D4 | 7C A5 30 38 */	and r5, r5, r6
/* 814720D8 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 814720DC | 54 83 10 3A */	slwi r3, r4, 2
/* 814720E0 | 39 21 01 28 */	addi r9, r1, 0x128
/* 814720E4 | 7D 09 1A 14 */	add r8, r9, r3
/* 814720E8 | 88 E8 00 01 */	lbz r7, 0x1(r8)
/* 814720EC | 7C 05 38 00 */	cmpw r5, r7
/* 814720F0 | 40 82 00 D0 */	bne .L_814721C0
/* 814720F4 | 81 01 00 B8 */	lwz r8, 0xb8(r1)
/* 814720F8 | 88 E8 00 02 */	lbz r7, 0x2(r8)
/* 814720FC | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 81472100 | 54 C5 10 3A */	slwi r5, r6, 2
/* 81472104 | 38 81 01 40 */	addi r4, r1, 0x140
/* 81472108 | 7C 64 2A 14 */	add r3, r4, r5
/* 8147210C | 89 83 00 02 */	lbz r12, 0x2(r3)
/* 81472110 | 7C EB 60 38 */	and r11, r7, r12
/* 81472114 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 81472118 | 54 EA 10 3A */	slwi r10, r7, 2
/* 8147211C | 39 21 01 28 */	addi r9, r1, 0x128
/* 81472120 | 7D 09 52 14 */	add r8, r9, r10
/* 81472124 | 88 68 00 02 */	lbz r3, 0x2(r8)
/* 81472128 | 7C 0B 18 00 */	cmpw r11, r3
/* 8147212C | 40 82 00 94 */	bne .L_814721C0
/* 81472130 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 81472134 | 88 64 00 03 */	lbz r3, 0x3(r4)
/* 81472138 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 8147213C | 55 28 10 3A */	slwi r8, r9, 2
/* 81472140 | 38 A1 01 40 */	addi r5, r1, 0x140
/* 81472144 | 7C E5 42 14 */	add r7, r5, r8
/* 81472148 | 88 C7 00 03 */	lbz r6, 0x3(r7)
/* 8147214C | 7C 65 30 38 */	and r5, r3, r6
/* 81472150 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 81472154 | 54 8C 10 3A */	slwi r12, r4, 2
/* 81472158 | 38 81 01 28 */	addi r4, r1, 0x128
/* 8147215C | 7D 64 62 14 */	add r11, r4, r12
/* 81472160 | 89 4B 00 03 */	lbz r10, 0x3(r11)
/* 81472164 | 7C 05 50 00 */	cmpw r5, r10
/* 81472168 | 40 82 00 58 */	bne .L_814721C0
/* 8147216C | 88 61 00 52 */	lbz r3, 0x52(r1)
/* 81472170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81472174 | 41 82 00 14 */	beq .L_81472188
/* 81472178 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 8147217C | 89 21 02 FC */	lbz r9, 0x2fc(r1)
/* 81472180 | 7C 04 48 00 */	cmpw r4, r9
/* 81472184 | 41 82 00 20 */	beq .L_814721A4
.L_81472188:
/* 81472188 | 88 A1 00 52 */	lbz r5, 0x52(r1)
/* 8147218C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81472190 | 40 82 00 20 */	bne .L_814721B0
/* 81472194 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 81472198 | 89 01 02 FC */	lbz r8, 0x2fc(r1)
/* 8147219C | 7C 07 40 00 */	cmpw r7, r8
/* 814721A0 | 40 81 00 10 */	ble .L_814721B0
.L_814721A4:
/* 814721A4 | 38 C0 00 01 */	li r6, 0x1
/* 814721A8 | 98 C1 00 63 */	stb r6, 0x63(r1)
/* 814721AC | 48 00 00 20 */	b .L_814721CC
.L_814721B0:
/* 814721B0 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 814721B4 | 28 04 00 09 */	cmplwi r4, 0x9
/* 814721B8 | 41 82 02 78 */	beq .L_81472430
/* 814721BC | 48 00 00 10 */	b .L_814721CC
.L_814721C0:
/* 814721C0 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 814721C4 | 28 07 00 09 */	cmplwi r7, 0x9
/* 814721C8 | 41 82 02 68 */	beq .L_81472430
.L_814721CC:
/* 814721CC | 88 61 00 63 */	lbz r3, 0x63(r1)
/* 814721D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814721D4 | 40 82 00 D4 */	bne .L_814722A8
/* 814721D8 | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 814721DC | 8B 65 00 00 */	lbz r27, 0x0(r5)
/* 814721E0 | 57 64 07 7E */	clrlwi r4, r27, 29
/* 814721E4 | 88 C1 02 FC */	lbz r6, 0x2fc(r1)
/* 814721E8 | 7C 04 30 00 */	cmpw r4, r6
/* 814721EC | 41 80 02 44 */	blt .L_81472430
/* 814721F0 | 88 61 02 F5 */	lbz r3, 0x2f5(r1)
/* 814721F4 | 89 01 02 F1 */	lbz r8, 0x2f1(r1)
/* 814721F8 | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 814721FC | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 81472200 | 7D 07 20 38 */	and r7, r8, r4
/* 81472204 | 7C 03 38 00 */	cmpw r3, r7
/* 81472208 | 40 82 02 28 */	bne .L_81472430
/* 8147220C | 88 C1 02 F6 */	lbz r6, 0x2f6(r1)
/* 81472210 | 88 61 02 F2 */	lbz r3, 0x2f2(r1)
/* 81472214 | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 81472218 | 8B 85 00 01 */	lbz r28, 0x1(r5)
/* 8147221C | 7C 6C E0 38 */	and r12, r3, r28
/* 81472220 | 7C 06 60 00 */	cmpw r6, r12
/* 81472224 | 40 82 02 0C */	bne .L_81472430
/* 81472228 | 88 81 02 F7 */	lbz r4, 0x2f7(r1)
/* 8147222C | 89 61 02 F3 */	lbz r11, 0x2f3(r1)
/* 81472230 | 81 41 00 B8 */	lwz r10, 0xb8(r1)
/* 81472234 | 89 2A 00 02 */	lbz r9, 0x2(r10)
/* 81472238 | 7D 63 48 38 */	and r3, r11, r9
/* 8147223C | 7C 04 18 00 */	cmpw r4, r3
/* 81472240 | 40 82 01 F0 */	bne .L_81472430
/* 81472244 | 89 01 02 F8 */	lbz r8, 0x2f8(r1)
/* 81472248 | 88 81 02 F4 */	lbz r4, 0x2f4(r1)
/* 8147224C | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 81472250 | 88 E5 00 03 */	lbz r7, 0x3(r5)
/* 81472254 | 7C 86 38 38 */	and r6, r4, r7
/* 81472258 | 7C 08 30 00 */	cmpw r8, r6
/* 8147225C | 40 82 01 D4 */	bne .L_81472430
/* 81472260 | 88 81 00 52 */	lbz r4, 0x52(r1)
/* 81472264 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81472268 | 41 82 00 1C */	beq .L_81472284
/* 8147226C | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 81472270 | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 81472274 | 54 68 07 7E */	clrlwi r8, r3, 29
/* 81472278 | 88 81 02 FC */	lbz r4, 0x2fc(r1)
/* 8147227C | 7C 08 20 00 */	cmpw r8, r4
/* 81472280 | 41 82 00 28 */	beq .L_814722A8
.L_81472284:
/* 81472284 | 88 61 00 52 */	lbz r3, 0x52(r1)
/* 81472288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8147228C | 40 82 01 A4 */	bne .L_81472430
/* 81472290 | 81 21 00 B8 */	lwz r9, 0xb8(r1)
/* 81472294 | 88 89 00 00 */	lbz r4, 0x0(r9)
/* 81472298 | 54 86 07 7E */	clrlwi r6, r4, 29
/* 8147229C | 88 A1 02 FC */	lbz r5, 0x2fc(r1)
/* 814722A0 | 7C 06 28 00 */	cmpw r6, r5
/* 814722A4 | 40 81 01 8C */	ble .L_81472430
.L_814722A8:
/* 814722A8 | 88 E1 00 5D */	lbz r7, 0x5d(r1)
/* 814722AC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814722B0 | 40 82 00 50 */	bne .L_81472300
/* 814722B4 | 88 81 00 5E */	lbz r4, 0x5e(r1)
/* 814722B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814722BC | 41 82 00 24 */	beq .L_814722E0
/* 814722C0 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 814722C4 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 814722C8 | 7F C5 F3 78 */	mr r5, r30
/* 814722CC | 4B FF 88 51 */	bl Zi8SetFindCand
/* 814722D0 | 54 66 06 3E */	clrlwi r6, r3, 24
/* 814722D4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814722D8 | 40 82 01 58 */	bne .L_81472430
/* 814722DC | 48 00 00 48 */	b .L_81472324
.L_814722E0:
/* 814722E0 | A0 61 00 A2 */	lhz r3, 0xa2(r1)
/* 814722E4 | 7F C4 F3 78 */	mr r4, r30
/* 814722E8 | 48 00 9A 0D */	bl Zi8IsDupWChar
/* 814722EC | 7C 68 1B 78 */	mr r8, r3
/* 814722F0 | 55 05 06 3E */	clrlwi r5, r8, 24
/* 814722F4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814722F8 | 40 82 01 38 */	bne .L_81472430
/* 814722FC | 48 00 00 28 */	b .L_81472324
.L_81472300:
/* 81472300 | 38 61 00 94 */	addi r3, r1, 0x94
/* 81472304 | 38 80 00 01 */	li r4, 0x1
/* 81472308 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147230C | 7F C5 F3 78 */	mr r5, r30
/* 81472310 | 48 00 9A E1 */	bl Zi8IsDupWordW
/* 81472314 | 7C 67 1B 78 */	mr r7, r3
/* 81472318 | 54 E4 06 3E */	clrlwi r4, r7, 24
/* 8147231C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81472320 | 40 82 01 10 */	bne .L_81472430
.L_81472324:
/* 81472324 | A0 C1 00 72 */	lhz r6, 0x72(r1)
/* 81472328 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8147232C | 41 82 00 14 */	beq .L_81472340
/* 81472330 | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 81472334 | 38 65 FF FF */	subi r3, r5, 0x1
/* 81472338 | B0 61 00 72 */	sth r3, 0x72(r1)
/* 8147233C | 48 00 00 F4 */	b .L_81472430
.L_81472340:
/* 81472340 | 81 21 00 CC */	lwz r9, 0xcc(r1)
/* 81472344 | 39 09 00 01 */	addi r8, r9, 0x1
/* 81472348 | 91 01 00 CC */	stw r8, 0xcc(r1)
/* 8147234C | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 81472350 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81472354 | 41 82 00 18 */	beq .L_8147236C
/* 81472358 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8147235C | 80 DD 00 0C */	lwz r6, 0xc(r29)
/* 81472360 | 7C 04 30 00 */	cmpw r4, r6
/* 81472364 | 40 80 23 E4 */	bge .L_81474748
/* 81472368 | 48 00 00 C8 */	b .L_81472430
.L_8147236C:
/* 8147236C | 88 BE 01 20 */	lbz r5, 0x120(r30)
/* 81472370 | 38 85 00 01 */	addi r4, r5, 0x1
/* 81472374 | 98 9E 01 20 */	stb r4, 0x120(r30)
/* 81472378 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8147237C | 28 03 00 40 */	cmplwi r3, 0x40
/* 81472380 | 41 80 00 0C */	blt .L_8147238C
/* 81472384 | 39 40 00 00 */	li r10, 0x0
/* 81472388 | 99 5E 01 20 */	stb r10, 0x120(r30)
.L_8147238C:
/* 8147238C | 89 21 00 5D */	lbz r9, 0x5d(r1)
/* 81472390 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81472394 | 41 82 00 64 */	beq .L_814723F8
/* 81472398 | 88 C1 00 67 */	lbz r6, 0x67(r1)
/* 8147239C | 38 A6 00 01 */	addi r5, r6, 0x1
/* 814723A0 | 98 A1 00 67 */	stb r5, 0x67(r1)
/* 814723A4 | A0 81 00 94 */	lhz r4, 0x94(r1)
/* 814723A8 | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 814723AC | 80 E1 01 04 */	lwz r7, 0x104(r1)
/* 814723B0 | 7C E6 3B 78 */	mr r6, r7
/* 814723B4 | 54 C3 08 3C */	slwi r3, r6, 1
/* 814723B8 | 7C 88 1B 2E */	sthx r4, r8, r3
/* 814723BC | 38 A7 00 01 */	addi r5, r7, 0x1
/* 814723C0 | 90 A1 01 04 */	stw r5, 0x104(r1)
/* 814723C4 | 38 80 00 20 */	li r4, 0x20
/* 814723C8 | 81 61 00 BC */	lwz r11, 0xbc(r1)
/* 814723CC | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 814723D0 | 7C 67 1B 78 */	mr r7, r3
/* 814723D4 | 54 E6 08 3C */	slwi r6, r7, 1
/* 814723D8 | 7C 8B 33 2E */	sthx r4, r11, r6
/* 814723DC | 39 43 00 01 */	addi r10, r3, 0x1
/* 814723E0 | 91 41 01 04 */	stw r10, 0x104(r1)
/* 814723E4 | 80 A1 01 04 */	lwz r5, 0x104(r1)
/* 814723E8 | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 814723EC | 7C 05 20 00 */	cmpw r5, r4
/* 814723F0 | 41 81 23 58 */	bgt .L_81474748
/* 814723F4 | 48 00 00 28 */	b .L_8147241C
.L_814723F8:
/* 814723F8 | A1 21 00 94 */	lhz r9, 0x94(r1)
/* 814723FC | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 81472400 | 88 61 00 67 */	lbz r3, 0x67(r1)
/* 81472404 | 7C 66 1B 78 */	mr r6, r3
/* 81472408 | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 8147240C | 54 A7 08 3C */	slwi r7, r5, 1
/* 81472410 | 7D 28 3B 2E */	sthx r9, r8, r7
/* 81472414 | 38 83 00 01 */	addi r4, r3, 0x1
/* 81472418 | 98 81 00 67 */	stb r4, 0x67(r1)
.L_8147241C:
/* 8147241C | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81472420 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81472424 | 89 9F 00 1C */	lbz r12, 0x1c(r31)
/* 81472428 | 7C 03 60 40 */	cmplw r3, r12
/* 8147242C | 40 80 23 1C */	bge .L_81474748
.L_81472430:
/* 81472430 | A0 C1 00 A2 */	lhz r6, 0xa2(r1)
/* 81472434 | 38 A6 00 01 */	addi r5, r6, 0x1
/* 81472438 | B0 A1 00 A2 */	sth r5, 0xa2(r1)
/* 8147243C | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81472440 | 39 04 00 0C */	addi r8, r4, 0xc
/* 81472444 | 91 01 01 00 */	stw r8, 0x100(r1)
.L_81472448:
/* 81472448 | A1 61 00 A2 */	lhz r11, 0xa2(r1)
/* 8147244C | 55 63 04 3E */	clrlwi r3, r11, 16
/* 81472450 | A0 E1 00 7A */	lhz r7, 0x7a(r1)
/* 81472454 | 7C 03 38 40 */	cmplw r3, r7
/* 81472458 | 41 80 FB 1C */	blt .L_81471F74
/* 8147245C | 48 00 22 EC */	b .L_81474748
.L_81472460:
/* 81472460 | 81 41 00 EC */	lwz r10, 0xec(r1)
/* 81472464 | 91 41 01 00 */	stw r10, 0x100(r1)
/* 81472468 | A1 21 00 7A */	lhz r9, 0x7a(r1)
/* 8147246C | B1 21 00 7C */	sth r9, 0x7c(r1)
/* 81472470 | 38 C0 00 00 */	li r6, 0x0
/* 81472474 | 90 C1 01 08 */	stw r6, 0x108(r1)
/* 81472478 | 88 81 00 62 */	lbz r4, 0x62(r1)
/* 8147247C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81472480 | 41 82 00 18 */	beq .L_81472498
/* 81472484 | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 81472488 | 28 05 00 01 */	cmplwi r5, 0x1
/* 8147248C | 40 81 00 0C */	ble .L_81472498
/* 81472490 | 38 60 00 01 */	li r3, 0x1
/* 81472494 | 98 61 00 64 */	stb r3, 0x64(r1)
.L_81472498:
/* 81472498 | 39 00 00 00 */	li r8, 0x0
/* 8147249C | B1 01 00 86 */	sth r8, 0x86(r1)
/* 814724A0 | 88 E1 00 62 */	lbz r7, 0x62(r1)
/* 814724A4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814724A8 | 41 82 02 DC */	beq .L_81472784
/* 814724AC | 88 C1 00 59 */	lbz r6, 0x59(r1)
/* 814724B0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814724B4 | 41 82 00 24 */	beq .L_814724D8
/* 814724B8 | 88 C1 03 44 */	lbz r6, 0x344(r1)
/* 814724BC | 28 06 00 01 */	cmplwi r6, 0x1
/* 814724C0 | 40 81 00 18 */	ble .L_814724D8
/* 814724C4 | 38 80 00 05 */	li r4, 0x5
/* 814724C8 | 98 81 00 59 */	stb r4, 0x59(r1)
/* 814724CC | 48 00 24 AC */	b .L_81474978
.L_814724D0:
/* 814724D0 | 39 20 00 01 */	li r9, 0x1
/* 814724D4 | 99 21 00 59 */	stb r9, 0x59(r1)
.L_814724D8:
/* 814724D8 | 80 A1 00 EC */	lwz r5, 0xec(r1)
/* 814724DC | 90 A1 01 00 */	stw r5, 0x100(r1)
/* 814724E0 | A1 01 00 7A */	lhz r8, 0x7a(r1)
/* 814724E4 | B1 01 00 7C */	sth r8, 0x7c(r1)
/* 814724E8 | 88 61 02 FC */	lbz r3, 0x2fc(r1)
/* 814724EC | 28 03 00 01 */	cmplwi r3, 0x1
/* 814724F0 | 40 81 02 8C */	ble .L_8147277C
/* 814724F4 | 38 60 00 01 */	li r3, 0x1
/* 814724F8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814724FC | 7F C4 F3 78 */	mr r4, r30
/* 81472500 | 4B FE CF 75 */	bl Zi8GetFormatVersion
/* 81472504 | 7C 64 1B 78 */	mr r4, r3
/* 81472508 | 54 87 06 3E */	clrlwi r7, r4, 24
/* 8147250C | 28 07 00 04 */	cmplwi r7, 0x4
/* 81472510 | 41 80 02 6C */	blt .L_8147277C
/* 81472514 | 38 60 00 01 */	li r3, 0x1
/* 81472518 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147251C | 38 80 00 10 */	li r4, 0x10
/* 81472520 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81472524 | 7F C5 F3 78 */	mr r5, r30
/* 81472528 | 4B FE CF 09 */	bl Zi8GetTableCount
/* 8147252C | 7C 66 1B 78 */	mr r6, r3
/* 81472530 | 54 C9 04 3E */	clrlwi r9, r6, 16
/* 81472534 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81472538 | 41 82 02 44 */	beq .L_8147277C
/* 8147253C | 80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 81472540 | A0 A3 00 00 */	lhz r5, 0x0(r3)
/* 81472544 | 28 05 EF 00 */	cmplwi r5, 0xef00
/* 81472548 | 41 82 02 34 */	beq .L_8147277C
/* 8147254C | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 81472550 | 28 04 00 05 */	cmplwi r4, 0x5
/* 81472554 | 41 82 02 28 */	beq .L_8147277C
/* 81472558 | 39 40 00 00 */	li r10, 0x0
/* 8147255C | B1 41 00 84 */	sth r10, 0x84(r1)
/* 81472560 | 38 60 00 00 */	li r3, 0x0
/* 81472564 | B0 61 00 82 */	sth r3, 0x82(r1)
/* 81472568 | 38 60 00 01 */	li r3, 0x1
/* 8147256C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81472570 | 38 80 00 10 */	li r4, 0x10
/* 81472574 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81472578 | 7F C5 F3 78 */	mr r5, r30
/* 8147257C | 4B FE CE 35 */	bl Zi8GetTableAddress
/* 81472580 | 7C 6C 1B 78 */	mr r12, r3
/* 81472584 | 91 81 00 D8 */	stw r12, 0xd8(r1)
/* 81472588 | 80 E1 01 08 */	lwz r7, 0x108(r1)
/* 8147258C | 2C 07 00 01 */	cmpwi r7, 0x1
/* 81472590 | 41 82 00 3C */	beq .L_814725CC
/* 81472594 | 40 80 00 10 */	bge .L_814725A4
/* 81472598 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8147259C | 40 80 00 14 */	bge .L_814725B0
/* 814725A0 | 48 00 01 5C */	b .L_814726FC
.L_814725A4:
/* 814725A4 | 2C 07 00 03 */	cmpwi r7, 0x3
/* 814725A8 | 40 80 01 54 */	bge .L_814726FC
/* 814725AC | 48 00 01 38 */	b .L_814726E4
.L_814725B0:
/* 814725B0 | 39 00 00 00 */	li r8, 0x0
/* 814725B4 | B1 01 00 84 */	sth r8, 0x84(r1)
/* 814725B8 | 38 C0 00 02 */	li r6, 0x2
/* 814725BC | B0 C1 00 82 */	sth r6, 0x82(r1)
/* 814725C0 | 38 A0 00 01 */	li r5, 0x1
/* 814725C4 | 90 A1 01 08 */	stw r5, 0x108(r1)
/* 814725C8 | 48 00 01 34 */	b .L_814726FC
.L_814725CC:
/* 814725CC | A0 61 03 42 */	lhz r3, 0x342(r1)
/* 814725D0 | 3C 83 FF FF */	subis r4, r3, 0x1
/* 814725D4 | 38 84 10 FF */	addi r4, r4, 0x10ff
/* 814725D8 | 28 04 00 0A */	cmplwi r4, 0xa
/* 814725DC | 41 81 00 E0 */	bgt .L_814726BC
/* 814725E0 | 3D 20 81 67 */	lis r9, jumptable_8166AA88@ha
/* 814725E4 | 39 69 AA 88 */	addi r11, r9, jumptable_8166AA88@l
/* 814725E8 | 54 84 10 3A */	slwi r4, r4, 2
/* 814725EC | 7D 6B 20 2E */	lwzx r11, r11, r4
/* 814725F0 | 7D 69 03 A6 */	mtctr r11
/* 814725F4 | 4E 80 04 20 */	bctr
.L_814725F8:
/* 814725F8 | 38 E0 00 08 */	li r7, 0x8
/* 814725FC | B0 E1 00 84 */	sth r7, 0x84(r1)
/* 81472600 | 39 00 00 0A */	li r8, 0xa
/* 81472604 | B1 01 00 82 */	sth r8, 0x82(r1)
/* 81472608 | 48 00 00 B4 */	b .L_814726BC
.L_8147260C:
/* 8147260C | 39 40 00 0C */	li r10, 0xc
/* 81472610 | B1 41 00 84 */	sth r10, 0x84(r1)
/* 81472614 | 39 00 00 0E */	li r8, 0xe
/* 81472618 | B1 01 00 82 */	sth r8, 0x82(r1)
/* 8147261C | 48 00 00 A0 */	b .L_814726BC
.L_81472620:
/* 81472620 | 38 60 00 10 */	li r3, 0x10
/* 81472624 | B0 61 00 84 */	sth r3, 0x84(r1)
/* 81472628 | 38 80 00 12 */	li r4, 0x12
/* 8147262C | B0 81 00 82 */	sth r4, 0x82(r1)
/* 81472630 | 48 00 00 8C */	b .L_814726BC
.L_81472634:
/* 81472634 | 38 C0 00 14 */	li r6, 0x14
/* 81472638 | B0 C1 00 84 */	sth r6, 0x84(r1)
/* 8147263C | 39 20 00 16 */	li r9, 0x16
/* 81472640 | B1 21 00 82 */	sth r9, 0x82(r1)
/* 81472644 | 48 00 00 78 */	b .L_814726BC
.L_81472648:
/* 81472648 | 39 00 00 18 */	li r8, 0x18
/* 8147264C | B1 01 00 84 */	sth r8, 0x84(r1)
/* 81472650 | 38 A0 00 1A */	li r5, 0x1a
/* 81472654 | B0 A1 00 82 */	sth r5, 0x82(r1)
/* 81472658 | 48 00 00 64 */	b .L_814726BC
.L_8147265C:
/* 8147265C | 38 80 00 1C */	li r4, 0x1c
/* 81472660 | B0 81 00 84 */	sth r4, 0x84(r1)
/* 81472664 | 38 E0 00 1E */	li r7, 0x1e
/* 81472668 | B0 E1 00 82 */	sth r7, 0x82(r1)
/* 8147266C | 48 00 00 50 */	b .L_814726BC
.L_81472670:
/* 81472670 | 38 60 00 20 */	li r3, 0x20
/* 81472674 | B0 61 00 84 */	sth r3, 0x84(r1)
/* 81472678 | 38 C0 00 22 */	li r6, 0x22
/* 8147267C | B0 C1 00 82 */	sth r6, 0x82(r1)
/* 81472680 | 48 00 00 3C */	b .L_814726BC
.L_81472684:
/* 81472684 | 38 80 00 24 */	li r4, 0x24
/* 81472688 | B0 81 00 84 */	sth r4, 0x84(r1)
/* 8147268C | 39 40 00 26 */	li r10, 0x26
/* 81472690 | B1 41 00 82 */	sth r10, 0x82(r1)
/* 81472694 | 48 00 00 28 */	b .L_814726BC
.L_81472698:
/* 81472698 | 38 A0 00 18 */	li r5, 0x18
/* 8147269C | B0 A1 00 84 */	sth r5, 0x84(r1)
/* 814726A0 | 38 80 00 04 */	li r4, 0x4
/* 814726A4 | B0 81 00 82 */	sth r4, 0x82(r1)
/* 814726A8 | 48 00 00 14 */	b .L_814726BC
.L_814726AC:
/* 814726AC | 39 20 00 14 */	li r9, 0x14
/* 814726B0 | B1 21 00 84 */	sth r9, 0x84(r1)
/* 814726B4 | 38 E0 00 0E */	li r7, 0xe
/* 814726B8 | B0 E1 00 82 */	sth r7, 0x82(r1)
.L_814726BC:
/* 814726BC | 88 DF 00 03 */	lbz r6, 0x3(r31)
/* 814726C0 | 54 C3 06 72 */	rlwinm r3, r6, 0, 25, 25
/* 814726C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814726C8 | 41 82 00 10 */	beq .L_814726D8
/* 814726CC | 39 00 00 FF */	li r8, 0xff
/* 814726D0 | 91 01 01 08 */	stw r8, 0x108(r1)
/* 814726D4 | 48 00 00 28 */	b .L_814726FC
.L_814726D8:
/* 814726D8 | 38 A0 00 02 */	li r5, 0x2
/* 814726DC | 90 A1 01 08 */	stw r5, 0x108(r1)
/* 814726E0 | 48 00 00 1C */	b .L_814726FC
.L_814726E4:
/* 814726E4 | 38 60 00 04 */	li r3, 0x4
/* 814726E8 | B0 61 00 84 */	sth r3, 0x84(r1)
/* 814726EC | 38 E0 00 06 */	li r7, 0x6
/* 814726F0 | B0 E1 00 82 */	sth r7, 0x82(r1)
/* 814726F4 | 38 C0 00 FF */	li r6, 0xff
/* 814726F8 | 90 C1 01 08 */	stw r6, 0x108(r1)
.L_814726FC:
/* 814726FC | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 81472700 | A0 A1 00 84 */	lhz r5, 0x84(r1)
/* 81472704 | 7C 84 28 AE */	lbzx r4, r4, r5
/* 81472708 | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 8147270C | A0 E1 00 84 */	lhz r7, 0x84(r1)
/* 81472710 | 7D 67 1A 14 */	add r11, r7, r3
/* 81472714 | 89 4B 00 01 */	lbz r10, 0x1(r11)
/* 81472718 | 55 48 04 3E */	clrlwi r8, r10, 16
/* 8147271C | 55 09 40 2E */	slwi r9, r8, 8
/* 81472720 | 7C 88 4B 78 */	or r8, r4, r9
/* 81472724 | 55 07 04 3E */	clrlwi r7, r8, 16
/* 81472728 | B0 E1 00 86 */	sth r7, 0x86(r1)
/* 8147272C | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 81472730 | A0 A1 00 86 */	lhz r5, 0x86(r1)
/* 81472734 | 1D 25 00 0C */	mulli r9, r5, 0xc
/* 81472738 | 7C 86 4A 14 */	add r4, r6, r9
/* 8147273C | 90 81 01 00 */	stw r4, 0x100(r1)
/* 81472740 | A1 41 00 86 */	lhz r10, 0x86(r1)
/* 81472744 | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 81472748 | A1 01 00 82 */	lhz r8, 0x82(r1)
/* 8147274C | 7C 63 40 AE */	lbzx r3, r3, r8
/* 81472750 | 80 A1 00 D8 */	lwz r5, 0xd8(r1)
/* 81472754 | A0 E1 00 82 */	lhz r7, 0x82(r1)
/* 81472758 | 7C 87 2A 14 */	add r4, r7, r5
/* 8147275C | 88 C4 00 01 */	lbz r6, 0x1(r4)
/* 81472760 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 81472764 | 54 A4 40 2E */	slwi r4, r5, 8
/* 81472768 | 7C 69 23 78 */	or r9, r3, r4
/* 8147276C | 7D 0A 48 50 */	subf r8, r10, r9
/* 81472770 | 55 04 04 3E */	clrlwi r4, r8, 16
/* 81472774 | B0 81 00 7C */	sth r4, 0x7c(r1)
/* 81472778 | 48 00 00 0C */	b .L_81472784
.L_8147277C:
/* 8147277C | 38 E0 00 FF */	li r7, 0xff
/* 81472780 | 90 E1 01 08 */	stw r7, 0x108(r1)
.L_81472784:
/* 81472784 | A0 61 00 7C */	lhz r3, 0x7c(r1)
/* 81472788 | B0 61 00 88 */	sth r3, 0x88(r1)
/* 8147278C | 48 00 07 98 */	b .L_81472F24
.L_81472790:
/* 81472790 | 88 C1 02 E8 */	lbz r6, 0x2e8(r1)
/* 81472794 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 81472798 | 38 A1 00 7C */	addi r5, r1, 0x7c
/* 8147279C | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 814727A0 | 38 81 01 00 */	addi r4, r1, 0x100
/* 814727A4 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 814727A8 | 39 01 00 98 */	addi r8, r1, 0x98
/* 814727AC | 91 01 00 14 */	stw r8, 0x14(r1)
/* 814727B0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814727B4 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 814727B8 | 88 81 02 D9 */	lbz r4, 0x2d9(r1)
/* 814727BC | 88 A1 02 E5 */	lbz r5, 0x2e5(r1)
/* 814727C0 | 88 C1 02 DA */	lbz r6, 0x2da(r1)
/* 814727C4 | 88 E1 02 E6 */	lbz r7, 0x2e6(r1)
/* 814727C8 | 89 01 02 DB */	lbz r8, 0x2db(r1)
/* 814727CC | 89 21 02 E7 */	lbz r9, 0x2e7(r1)
/* 814727D0 | 89 41 02 DC */	lbz r10, 0x2dc(r1)
/* 814727D4 | 48 00 A7 21 */	bl Zi8PriMatchNextChar
/* 814727D8 | 54 67 06 3E */	clrlwi r7, r3, 24
/* 814727DC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814727E0 | 40 82 00 7C */	bne .L_8147285C
/* 814727E4 | 80 C1 01 08 */	lwz r6, 0x108(r1)
/* 814727E8 | 2C 06 00 FF */	cmpwi r6, 0xff
/* 814727EC | 40 82 FC AC */	bne .L_81472498
/* 814727F0 | 88 A1 00 64 */	lbz r5, 0x64(r1)
/* 814727F4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814727F8 | 41 82 00 28 */	beq .L_81472820
/* 814727FC | 38 80 00 00 */	li r4, 0x0
/* 81472800 | 98 81 00 64 */	stb r4, 0x64(r1)
/* 81472804 | 80 61 00 EC */	lwz r3, 0xec(r1)
/* 81472808 | 90 61 01 00 */	stw r3, 0x100(r1)
/* 8147280C | A1 21 00 7A */	lhz r9, 0x7a(r1)
/* 81472810 | B1 21 00 7C */	sth r9, 0x7c(r1)
/* 81472814 | 39 00 00 00 */	li r8, 0x0
/* 81472818 | 91 01 01 08 */	stw r8, 0x108(r1)
/* 8147281C | 4B FF FC 7C */	b .L_81472498
.L_81472820:
/* 81472820 | 88 E1 00 5D */	lbz r7, 0x5d(r1)
/* 81472824 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81472828 | 41 82 1F 20 */	beq .L_81474748
/* 8147282C | 88 DF 00 01 */	lbz r6, 0x1(r31)
/* 81472830 | 28 06 00 10 */	cmplwi r6, 0x10
/* 81472834 | 40 82 1F 14 */	bne .L_81474748
/* 81472838 | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 8147283C | 28 05 00 01 */	cmplwi r5, 0x1
/* 81472840 | 40 81 1F 08 */	ble .L_81474748
/* 81472844 | 38 80 00 01 */	li r4, 0x1
/* 81472848 | 98 81 00 54 */	stb r4, 0x54(r1)
/* 8147284C | 88 61 03 44 */	lbz r3, 0x344(r1)
/* 81472850 | 39 83 FF FF */	subi r12, r3, 0x1
/* 81472854 | 99 81 03 44 */	stb r12, 0x344(r1)
/* 81472858 | 4B FF FC 08 */	b .L_81472460
.L_8147285C:
/* 8147285C | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81472860 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 81472864 | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 81472868 | 38 C1 00 98 */	addi r6, r1, 0x98
/* 8147286C | 7F C7 F3 78 */	mr r7, r30
/* 81472870 | 48 00 A8 D9 */	bl Zi8SecMatchChar
/* 81472874 | 7C 6B 1B 78 */	mr r11, r3
/* 81472878 | 55 67 06 3E */	clrlwi r7, r11, 24
/* 8147287C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81472880 | 41 82 06 98 */	beq .L_81472F18
/* 81472884 | A1 41 00 86 */	lhz r10, 0x86(r1)
/* 81472888 | A1 21 00 7C */	lhz r9, 0x7c(r1)
/* 8147288C | A1 01 00 88 */	lhz r8, 0x88(r1)
/* 81472890 | 7C 69 40 50 */	subf r3, r9, r8
/* 81472894 | 7C 83 52 14 */	add r4, r3, r10
/* 81472898 | 38 64 FF FF */	subi r3, r4, 0x1
/* 8147289C | 54 69 04 3E */	clrlwi r9, r3, 16
/* 814728A0 | B1 21 00 A2 */	sth r9, 0xa2(r1)
/* 814728A4 | 81 01 00 E4 */	lwz r8, 0xe4(r1)
/* 814728A8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814728AC | 41 82 00 14 */	beq .L_814728C0
/* 814728B0 | 80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 814728B4 | A0 E1 00 A2 */	lhz r7, 0xa2(r1)
/* 814728B8 | 7C C5 3A 14 */	add r6, r5, r7
/* 814728BC | 90 C1 00 C4 */	stw r6, 0xc4(r1)
.L_814728C0:
/* 814728C0 | 80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 814728C4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814728C8 | 41 82 00 1C */	beq .L_814728E4
/* 814728CC | 80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 814728D0 | 89 84 00 00 */	lbz r12, 0x0(r4)
/* 814728D4 | 88 81 00 6D */	lbz r4, 0x6d(r1)
/* 814728D8 | 7D 8B 20 38 */	and r11, r12, r4
/* 814728DC | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814728E0 | 41 82 06 38 */	beq .L_81472F18
.L_814728E4:
/* 814728E4 | A1 41 00 98 */	lhz r10, 0x98(r1)
/* 814728E8 | 88 7E 01 20 */	lbz r3, 0x120(r30)
/* 814728EC | 54 64 08 3C */	slwi r4, r3, 1
/* 814728F0 | 7D 3E 22 14 */	add r9, r30, r4
/* 814728F4 | B1 49 00 20 */	sth r10, 0x20(r9)
/* 814728F8 | B1 41 02 58 */	sth r10, 0x258(r1)
/* 814728FC | A0 A1 00 A2 */	lhz r5, 0xa2(r1)
/* 81472900 | 88 FE 01 20 */	lbz r7, 0x120(r30)
/* 81472904 | 54 E8 08 3C */	slwi r8, r7, 1
/* 81472908 | 7C DE 42 14 */	add r6, r30, r8
/* 8147290C | B0 A6 00 A0 */	sth r5, 0xa0(r6)
/* 81472910 | 80 81 00 EC */	lwz r4, 0xec(r1)
/* 81472914 | A0 E1 00 A2 */	lhz r7, 0xa2(r1)
/* 81472918 | 1C 67 00 0C */	mulli r3, r7, 0xc
/* 8147291C | 7C A4 1A 14 */	add r5, r4, r3
/* 81472920 | 90 A1 00 B4 */	stw r5, 0xb4(r1)
/* 81472924 | 83 61 00 D4 */	lwz r27, 0xd4(r1)
/* 81472928 | 80 81 00 B4 */	lwz r4, 0xb4(r1)
/* 8147292C | 88 C4 00 09 */	lbz r6, 0x9(r4)
/* 81472930 | 54 C3 07 3E */	clrlwi r3, r6, 28
/* 81472934 | 54 68 80 1E */	slwi r8, r3, 16
/* 81472938 | 80 A1 00 B4 */	lwz r5, 0xb4(r1)
/* 8147293C | 88 85 00 0B */	lbz r4, 0xb(r5)
/* 81472940 | 80 E1 00 B4 */	lwz r7, 0xb4(r1)
/* 81472944 | 88 C7 00 0A */	lbz r6, 0xa(r7)
/* 81472948 | 54 C3 40 2E */	slwi r3, r6, 8
/* 8147294C | 7C 85 1B 78 */	or r5, r4, r3
/* 81472950 | 7D 1C 2B 78 */	or r28, r8, r5
/* 81472954 | 7D 9B E2 14 */	add r12, r27, r28
/* 81472958 | 91 81 00 D8 */	stw r12, 0xd8(r1)
/* 8147295C | 88 9E 00 16 */	lbz r4, 0x16(r30)
/* 81472960 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81472964 | 41 82 00 68 */	beq .L_814729CC
/* 81472968 | 81 61 00 D8 */	lwz r11, 0xd8(r1)
/* 8147296C | 89 4B 00 00 */	lbz r10, 0x0(r11)
/* 81472970 | 55 49 07 7E */	clrlwi r9, r10, 29
/* 81472974 | 2C 09 00 05 */	cmpwi r9, 0x5
/* 81472978 | 41 82 00 38 */	beq .L_814729B0
/* 8147297C | 40 80 00 44 */	bge .L_814729C0
/* 81472980 | 2C 09 00 02 */	cmpwi r9, 0x2
/* 81472984 | 41 82 00 0C */	beq .L_81472990
/* 81472988 | 40 80 00 18 */	bge .L_814729A0
/* 8147298C | 48 00 00 34 */	b .L_814729C0
.L_81472990:
/* 81472990 | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 81472994 | 39 03 00 02 */	addi r8, r3, 0x2
/* 81472998 | 91 01 00 D8 */	stw r8, 0xd8(r1)
/* 8147299C | 48 00 00 30 */	b .L_814729CC
.L_814729A0:
/* 814729A0 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 814729A4 | 38 A4 00 03 */	addi r5, r4, 0x3
/* 814729A8 | 90 A1 00 D8 */	stw r5, 0xd8(r1)
/* 814729AC | 48 00 00 20 */	b .L_814729CC
.L_814729B0:
/* 814729B0 | 80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 814729B4 | 38 C7 00 04 */	addi r6, r7, 0x4
/* 814729B8 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 814729BC | 48 00 00 10 */	b .L_814729CC
.L_814729C0:
/* 814729C0 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 814729C4 | 38 A4 00 01 */	addi r5, r4, 0x1
/* 814729C8 | 90 A1 00 D8 */	stw r5, 0xd8(r1)
.L_814729CC:
/* 814729CC | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 814729D0 | 89 03 00 00 */	lbz r8, 0x0(r3)
/* 814729D4 | 55 04 06 30 */	rlwinm r4, r8, 0, 24, 24
/* 814729D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814729DC | 41 82 00 30 */	beq .L_81472A0C
/* 814729E0 | 38 60 00 00 */	li r3, 0x0
/* 814729E4 | 98 61 00 6B */	stb r3, 0x6b(r1)
/* 814729E8 | 81 21 00 D8 */	lwz r9, 0xd8(r1)
/* 814729EC | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 814729F0 | 88 C4 00 00 */	lbz r6, 0x0(r4)
/* 814729F4 | 54 C5 06 7E */	clrlwi r5, r6, 25
/* 814729F8 | 7C A7 26 70 */	srawi r7, r5, 4
/* 814729FC | 7C 87 4A 14 */	add r4, r7, r9
/* 81472A00 | 38 64 00 01 */	addi r3, r4, 0x1
/* 81472A04 | 90 61 00 D8 */	stw r3, 0xd8(r1)
/* 81472A08 | 48 00 05 00 */	b .L_81472F08
.L_81472A0C:
/* 81472A0C | 38 C0 00 80 */	li r6, 0x80
/* 81472A10 | 98 C1 00 6B */	stb r6, 0x6b(r1)
/* 81472A14 | 48 00 04 F4 */	b .L_81472F08
.L_81472A18:
/* 81472A18 | 81 01 00 D8 */	lwz r8, 0xd8(r1)
/* 81472A1C | 7D 05 43 78 */	mr r5, r8
/* 81472A20 | 38 E8 00 01 */	addi r7, r8, 0x1
/* 81472A24 | 90 E1 00 D8 */	stw r7, 0xd8(r1)
/* 81472A28 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 81472A2C | 98 81 00 6B */	stb r4, 0x6b(r1)
/* 81472A30 | 88 C1 00 6B */	lbz r6, 0x6b(r1)
/* 81472A34 | 54 C5 07 3E */	clrlwi r5, r6, 28
/* 81472A38 | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 81472A3C | 98 61 00 6A */	stb r3, 0x6a(r1)
/* 81472A40 | 89 21 00 6B */	lbz r9, 0x6b(r1)
/* 81472A44 | 89 01 00 6E */	lbz r8, 0x6e(r1)
/* 81472A48 | 7D 27 40 38 */	and r7, r9, r8
/* 81472A4C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81472A50 | 40 82 04 AC */	bne .L_81472EFC
/* 81472A54 | 48 00 00 4C */	b .L_81472AA0
.L_81472A58:
/* 81472A58 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 81472A5C | 38 C4 00 01 */	addi r6, r4, 0x1
/* 81472A60 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 81472A64 | 48 00 00 10 */	b .L_81472A74
.L_81472A68:
/* 81472A68 | 80 A1 00 D8 */	lwz r5, 0xd8(r1)
/* 81472A6C | 38 85 00 02 */	addi r4, r5, 0x2
/* 81472A70 | 90 81 00 D8 */	stw r4, 0xd8(r1)
.L_81472A74:
/* 81472A74 | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 81472A78 | 89 43 00 00 */	lbz r10, 0x0(r3)
/* 81472A7C | 55 49 06 30 */	rlwinm r9, r10, 0, 24, 24
/* 81472A80 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81472A84 | 41 82 FF E4 */	beq .L_81472A68
/* 81472A88 | 80 C1 00 D8 */	lwz r6, 0xd8(r1)
/* 81472A8C | 38 A6 00 01 */	addi r5, r6, 0x1
/* 81472A90 | 90 A1 00 D8 */	stw r5, 0xd8(r1)
/* 81472A94 | 88 81 00 6A */	lbz r4, 0x6a(r1)
/* 81472A98 | 39 04 FF FF */	subi r8, r4, 0x1
/* 81472A9C | 99 01 00 6A */	stb r8, 0x6a(r1)
.L_81472AA0:
/* 81472AA0 | 88 E1 00 6A */	lbz r7, 0x6a(r1)
/* 81472AA4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81472AA8 | 40 82 FF B0 */	bne .L_81472A58
/* 81472AAC | 48 00 04 50 */	b .L_81472EFC
.L_81472AB0:
/* 81472AB0 | 80 C1 00 D8 */	lwz r6, 0xd8(r1)
/* 81472AB4 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81472AB8 | 54 A3 04 3E */	clrlwi r3, r5, 16
/* 81472ABC | 54 64 40 2E */	slwi r4, r3, 8
/* 81472AC0 | 81 61 00 D8 */	lwz r11, 0xd8(r1)
/* 81472AC4 | 88 6B 00 00 */	lbz r3, 0x0(r11)
/* 81472AC8 | 7C 87 1B 78 */	or r7, r4, r3
/* 81472ACC | 54 EA 04 3E */	clrlwi r10, r7, 16
/* 81472AD0 | B1 41 00 98 */	sth r10, 0x98(r1)
/* 81472AD4 | 80 C1 00 D8 */	lwz r6, 0xd8(r1)
/* 81472AD8 | 90 C1 00 D0 */	stw r6, 0xd0(r1)
/* 81472ADC | 80 A1 00 D8 */	lwz r5, 0xd8(r1)
/* 81472AE0 | 38 85 00 02 */	addi r4, r5, 0x2
/* 81472AE4 | 90 81 00 D8 */	stw r4, 0xd8(r1)
/* 81472AE8 | 39 20 00 01 */	li r9, 0x1
/* 81472AEC | B1 21 00 8E */	sth r9, 0x8e(r1)
.L_81472AF0:
/* 81472AF0 | 81 01 00 EC */	lwz r8, 0xec(r1)
/* 81472AF4 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81472AF8 | 54 66 04 7E */	clrlwi r6, r3, 17
/* 81472AFC | 1C 86 00 0C */	mulli r4, r6, 0xc
/* 81472B00 | 7C A8 22 14 */	add r5, r8, r4
/* 81472B04 | 90 A1 00 B4 */	stw r5, 0xb4(r1)
/* 81472B08 | A0 E1 00 8E */	lhz r7, 0x8e(r1)
/* 81472B0C | 88 81 03 44 */	lbz r4, 0x344(r1)
/* 81472B10 | 7C 07 20 00 */	cmpw r7, r4
/* 81472B14 | 40 80 00 D4 */	bge .L_81472BE8
/* 81472B18 | A0 61 00 8E */	lhz r3, 0x8e(r1)
/* 81472B1C | 1D 83 00 0C */	mulli r12, r3, 0xc
/* 81472B20 | 38 C1 04 05 */	addi r6, r1, 0x405
/* 81472B24 | 7C A6 60 AE */	lbzx r5, r6, r12
/* 81472B28 | 80 81 00 B4 */	lwz r4, 0xb4(r1)
/* 81472B2C | 89 04 00 00 */	lbz r8, 0x0(r4)
/* 81472B30 | A1 61 00 8E */	lhz r11, 0x8e(r1)
/* 81472B34 | 1C 6B 00 0C */	mulli r3, r11, 0xc
/* 81472B38 | 38 E1 03 45 */	addi r7, r1, 0x345
/* 81472B3C | 7D 47 18 AE */	lbzx r10, r7, r3
/* 81472B40 | 7D 09 50 38 */	and r9, r8, r10
/* 81472B44 | 7C 05 48 00 */	cmpw r5, r9
/* 81472B48 | 40 82 03 5C */	bne .L_81472EA4
/* 81472B4C | A0 C1 00 8E */	lhz r6, 0x8e(r1)
/* 81472B50 | 1C 86 00 0C */	mulli r4, r6, 0xc
/* 81472B54 | 38 A1 04 06 */	addi r5, r1, 0x406
/* 81472B58 | 7C 65 20 AE */	lbzx r3, r5, r4
/* 81472B5C | 81 01 00 B4 */	lwz r8, 0xb4(r1)
/* 81472B60 | 88 E8 00 01 */	lbz r7, 0x1(r8)
/* 81472B64 | A0 C1 00 8E */	lhz r6, 0x8e(r1)
/* 81472B68 | 1C C6 00 0C */	mulli r6, r6, 0xc
/* 81472B6C | 38 81 03 46 */	addi r4, r1, 0x346
/* 81472B70 | 7D 24 30 AE */	lbzx r9, r4, r6
/* 81472B74 | 7C E5 48 38 */	and r5, r7, r9
/* 81472B78 | 7C 03 28 00 */	cmpw r3, r5
/* 81472B7C | 40 82 03 28 */	bne .L_81472EA4
/* 81472B80 | A1 01 00 8E */	lhz r8, 0x8e(r1)
/* 81472B84 | 1C 68 00 0C */	mulli r3, r8, 0xc
/* 81472B88 | 38 81 04 07 */	addi r4, r1, 0x407
/* 81472B8C | 7C E4 18 AE */	lbzx r7, r4, r3
/* 81472B90 | 80 C1 00 B4 */	lwz r6, 0xb4(r1)
/* 81472B94 | 89 26 00 02 */	lbz r9, 0x2(r6)
/* 81472B98 | A0 61 00 8E */	lhz r3, 0x8e(r1)
/* 81472B9C | 1C A3 00 0C */	mulli r5, r3, 0xc
/* 81472BA0 | 38 81 03 47 */	addi r4, r1, 0x347
/* 81472BA4 | 7D 44 28 AE */	lbzx r10, r4, r5
/* 81472BA8 | 7D 23 50 38 */	and r3, r9, r10
/* 81472BAC | 7C 07 18 00 */	cmpw r7, r3
/* 81472BB0 | 40 82 02 F4 */	bne .L_81472EA4
/* 81472BB4 | A1 81 00 8E */	lhz r12, 0x8e(r1)
/* 81472BB8 | 1C EC 00 0C */	mulli r7, r12, 0xc
/* 81472BBC | 39 01 04 08 */	addi r8, r1, 0x408
/* 81472BC0 | 7C C8 38 AE */	lbzx r6, r8, r7
/* 81472BC4 | 80 A1 00 B4 */	lwz r5, 0xb4(r1)
/* 81472BC8 | 88 65 00 03 */	lbz r3, 0x3(r5)
/* 81472BCC | A0 81 00 8E */	lhz r4, 0x8e(r1)
/* 81472BD0 | 1D 64 00 0C */	mulli r11, r4, 0xc
/* 81472BD4 | 39 21 03 48 */	addi r9, r1, 0x348
/* 81472BD8 | 7C E9 58 AE */	lbzx r7, r9, r11
/* 81472BDC | 7C 68 38 38 */	and r8, r3, r7
/* 81472BE0 | 7C 06 40 00 */	cmpw r6, r8
/* 81472BE4 | 40 82 02 C0 */	bne .L_81472EA4
.L_81472BE8:
/* 81472BE8 | 81 41 00 B4 */	lwz r10, 0xb4(r1)
/* 81472BEC | 89 0A 00 06 */	lbz r8, 0x6(r10)
/* 81472BF0 | 55 03 04 3E */	clrlwi r3, r8, 16
/* 81472BF4 | 54 64 40 2E */	slwi r4, r3, 8
/* 81472BF8 | 80 C1 00 B4 */	lwz r6, 0xb4(r1)
/* 81472BFC | 89 26 00 07 */	lbz r9, 0x7(r6)
/* 81472C00 | 7D 04 4A 14 */	add r8, r4, r9
/* 81472C04 | 55 05 04 3E */	clrlwi r5, r8, 16
/* 81472C08 | A0 81 00 8E */	lhz r4, 0x8e(r1)
/* 81472C0C | 54 87 08 3C */	slwi r7, r4, 1
/* 81472C10 | 38 61 02 58 */	addi r3, r1, 0x258
/* 81472C14 | 7C A3 3B 2E */	sthx r5, r3, r7
/* 81472C18 | A0 C1 00 8E */	lhz r6, 0x8e(r1)
/* 81472C1C | 38 86 00 01 */	addi r4, r6, 0x1
/* 81472C20 | B0 81 00 8E */	sth r4, 0x8e(r1)
/* 81472C24 | 54 8A 04 3E */	clrlwi r10, r4, 16
/* 81472C28 | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 81472C2C | 7C 0A 28 00 */	cmpw r10, r5
/* 81472C30 | 41 80 00 54 */	blt .L_81472C84
/* 81472C34 | 88 81 00 64 */	lbz r4, 0x64(r1)
/* 81472C38 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81472C3C | 41 82 00 18 */	beq .L_81472C54
/* 81472C40 | A1 21 00 98 */	lhz r9, 0x98(r1)
/* 81472C44 | 55 27 04 20 */	rlwinm r7, r9, 0, 16, 16
/* 81472C48 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81472C4C | 41 82 02 58 */	beq .L_81472EA4
/* 81472C50 | 48 00 00 88 */	b .L_81472CD8
.L_81472C54:
/* 81472C54 | A0 C1 00 8E */	lhz r6, 0x8e(r1)
/* 81472C58 | 88 61 03 44 */	lbz r3, 0x344(r1)
/* 81472C5C | 7C 06 18 00 */	cmpw r6, r3
/* 81472C60 | 40 82 00 14 */	bne .L_81472C74
/* 81472C64 | A1 01 00 98 */	lhz r8, 0x98(r1)
/* 81472C68 | 55 05 04 20 */	rlwinm r5, r8, 0, 16, 16
/* 81472C6C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81472C70 | 40 82 02 34 */	bne .L_81472EA4
.L_81472C74:
/* 81472C74 | 88 61 00 54 */	lbz r3, 0x54(r1)
/* 81472C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81472C7C | 40 82 00 5C */	bne .L_81472CD8
/* 81472C80 | 48 00 00 14 */	b .L_81472C94
.L_81472C84:
/* 81472C84 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 81472C88 | 54 E6 04 20 */	rlwinm r6, r7, 0, 16, 16
/* 81472C8C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81472C90 | 40 82 02 14 */	bne .L_81472EA4
.L_81472C94:
/* 81472C94 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 81472C98 | 54 85 04 20 */	rlwinm r5, r4, 0, 16, 16
/* 81472C9C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81472CA0 | 40 82 00 38 */	bne .L_81472CD8
/* 81472CA4 | 80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 81472CA8 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 81472CAC | 54 67 04 3E */	clrlwi r7, r3, 16
/* 81472CB0 | 54 EB 40 2E */	slwi r11, r7, 8
/* 81472CB4 | 81 41 00 D8 */	lwz r10, 0xd8(r1)
/* 81472CB8 | 89 0A 00 00 */	lbz r8, 0x0(r10)
/* 81472CBC | 7D 69 43 78 */	or r9, r11, r8
/* 81472CC0 | 55 28 04 3E */	clrlwi r8, r9, 16
/* 81472CC4 | B1 01 00 98 */	sth r8, 0x98(r1)
/* 81472CC8 | 80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 81472CCC | 38 C7 00 02 */	addi r6, r7, 0x2
/* 81472CD0 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 81472CD4 | 4B FF FE 1C */	b .L_81472AF0
.L_81472CD8:
/* 81472CD8 | 80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 81472CDC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81472CE0 | 41 82 00 AC */	beq .L_81472D8C
/* 81472CE4 | 39 20 00 00 */	li r9, 0x0
/* 81472CE8 | 91 21 01 14 */	stw r9, 0x114(r1)
.L_81472CEC:
/* 81472CEC | 80 81 00 D0 */	lwz r4, 0xd0(r1)
/* 81472CF0 | 81 41 01 14 */	lwz r10, 0x114(r1)
/* 81472CF4 | 55 43 08 3C */	slwi r3, r10, 1
/* 81472CF8 | 7D 03 22 14 */	add r8, r3, r4
/* 81472CFC | 88 68 00 01 */	lbz r3, 0x1(r8)
/* 81472D00 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 81472D04 | 54 A7 40 2E */	slwi r7, r5, 8
/* 81472D08 | 80 81 00 D0 */	lwz r4, 0xd0(r1)
/* 81472D0C | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 81472D10 | 54 C5 08 3C */	slwi r5, r6, 1
/* 81472D14 | 7C 84 28 AE */	lbzx r4, r4, r5
/* 81472D18 | 7C E9 23 78 */	or r9, r7, r4
/* 81472D1C | 55 28 04 3E */	clrlwi r8, r9, 16
/* 81472D20 | B1 01 00 90 */	sth r8, 0x90(r1)
/* 81472D24 | 80 81 00 E4 */	lwz r4, 0xe4(r1)
/* 81472D28 | A0 E1 00 90 */	lhz r7, 0x90(r1)
/* 81472D2C | 54 E3 04 7E */	clrlwi r3, r7, 17
/* 81472D30 | 7C C4 1A 14 */	add r6, r4, r3
/* 81472D34 | 90 C1 00 C4 */	stw r6, 0xc4(r1)
/* 81472D38 | 80 A1 00 C4 */	lwz r5, 0xc4(r1)
/* 81472D3C | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 81472D40 | 89 01 00 6D */	lbz r8, 0x6d(r1)
/* 81472D44 | 7C 83 40 38 */	and r3, r4, r8
/* 81472D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81472D4C | 40 82 00 10 */	bne .L_81472D5C
/* 81472D50 | 38 E0 00 00 */	li r7, 0x0
/* 81472D54 | B0 E1 00 90 */	sth r7, 0x90(r1)
/* 81472D58 | 48 00 00 24 */	b .L_81472D7C
.L_81472D5C:
/* 81472D5C | A0 C1 00 90 */	lhz r6, 0x90(r1)
/* 81472D60 | 54 C5 04 20 */	rlwinm r5, r6, 0, 16, 16
/* 81472D64 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81472D68 | 40 82 00 14 */	bne .L_81472D7C
/* 81472D6C | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 81472D70 | 38 64 00 01 */	addi r3, r4, 0x1
/* 81472D74 | 90 61 01 14 */	stw r3, 0x114(r1)
/* 81472D78 | 4B FF FF 74 */	b .L_81472CEC
.L_81472D7C:
/* 81472D7C | A1 21 00 90 */	lhz r9, 0x90(r1)
/* 81472D80 | 55 28 04 20 */	rlwinm r8, r9, 0, 16, 16
/* 81472D84 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81472D88 | 41 82 01 1C */	beq .L_81472EA4
.L_81472D8C:
/* 81472D8C | 38 61 02 58 */	addi r3, r1, 0x258
/* 81472D90 | A1 01 00 8E */	lhz r8, 0x8e(r1)
/* 81472D94 | 55 04 06 3E */	clrlwi r4, r8, 24
/* 81472D98 | 7F C5 F3 78 */	mr r5, r30
/* 81472D9C | 48 00 90 55 */	bl Zi8IsDupWordW
/* 81472DA0 | 7C 67 1B 78 */	mr r7, r3
/* 81472DA4 | 54 E6 06 3E */	clrlwi r6, r7, 24
/* 81472DA8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81472DAC | 40 82 00 F8 */	bne .L_81472EA4
/* 81472DB0 | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 81472DB4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81472DB8 | 41 82 00 14 */	beq .L_81472DCC
/* 81472DBC | A0 81 00 72 */	lhz r4, 0x72(r1)
/* 81472DC0 | 38 64 FF FF */	subi r3, r4, 0x1
/* 81472DC4 | B0 61 00 72 */	sth r3, 0x72(r1)
/* 81472DC8 | 48 00 00 DC */	b .L_81472EA4
.L_81472DCC:
/* 81472DCC | 81 81 00 CC */	lwz r12, 0xcc(r1)
/* 81472DD0 | 39 6C 00 01 */	addi r11, r12, 0x1
/* 81472DD4 | 91 61 00 CC */	stw r11, 0xcc(r1)
/* 81472DD8 | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 81472DDC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81472DE0 | 41 82 00 18 */	beq .L_81472DF8
/* 81472DE4 | 81 41 00 CC */	lwz r10, 0xcc(r1)
/* 81472DE8 | 81 3D 00 0C */	lwz r9, 0xc(r29)
/* 81472DEC | 7C 0A 48 00 */	cmpw r10, r9
/* 81472DF0 | 40 80 19 58 */	bge .L_81474748
/* 81472DF4 | 48 00 00 B0 */	b .L_81472EA4
.L_81472DF8:
/* 81472DF8 | 89 1E 01 20 */	lbz r8, 0x120(r30)
/* 81472DFC | 38 68 00 01 */	addi r3, r8, 0x1
/* 81472E00 | 98 7E 01 20 */	stb r3, 0x120(r30)
/* 81472E04 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81472E08 | 28 04 00 40 */	cmplwi r4, 0x40
/* 81472E0C | 41 80 00 0C */	blt .L_81472E18
/* 81472E10 | 38 60 00 00 */	li r3, 0x0
/* 81472E14 | 98 7E 01 20 */	stb r3, 0x120(r30)
.L_81472E18:
/* 81472E18 | 39 20 00 20 */	li r9, 0x20
/* 81472E1C | A1 01 00 8E */	lhz r8, 0x8e(r1)
/* 81472E20 | 7D 05 43 78 */	mr r5, r8
/* 81472E24 | 54 A6 04 3E */	clrlwi r6, r5, 16
/* 81472E28 | 54 C5 08 3C */	slwi r5, r6, 1
/* 81472E2C | 38 81 02 58 */	addi r4, r1, 0x258
/* 81472E30 | 7D 24 2B 2E */	sthx r9, r4, r5
/* 81472E34 | 38 E8 00 01 */	addi r7, r8, 0x1
/* 81472E38 | B0 E1 00 8E */	sth r7, 0x8e(r1)
/* 81472E3C | 81 81 01 04 */	lwz r12, 0x104(r1)
/* 81472E40 | A0 81 00 8E */	lhz r4, 0x8e(r1)
/* 81472E44 | 7D 6C 22 14 */	add r11, r12, r4
/* 81472E48 | 81 41 00 C8 */	lwz r10, 0xc8(r1)
/* 81472E4C | 7C 0B 50 00 */	cmpw r11, r10
/* 81472E50 | 40 80 18 F8 */	bge .L_81474748
/* 81472E54 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 81472E58 | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 81472E5C | 54 89 08 3C */	slwi r9, r4, 1
/* 81472E60 | 7C 63 4A 14 */	add r3, r3, r9
/* 81472E64 | 38 81 02 58 */	addi r4, r1, 0x258
/* 81472E68 | A0 A1 00 8E */	lhz r5, 0x8e(r1)
/* 81472E6C | 54 A5 08 3C */	slwi r5, r5, 1
/* 81472E70 | 48 00 91 DD */	bl Zi8Memcpy
/* 81472E74 | 7C 67 1B 78 */	mr r7, r3
/* 81472E78 | 81 01 01 04 */	lwz r8, 0x104(r1)
/* 81472E7C | A0 C1 00 8E */	lhz r6, 0x8e(r1)
/* 81472E80 | 7C 88 32 14 */	add r4, r8, r6
/* 81472E84 | 90 81 01 04 */	stw r4, 0x104(r1)
/* 81472E88 | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 81472E8C | 38 67 00 01 */	addi r3, r7, 0x1
/* 81472E90 | 98 61 00 67 */	stb r3, 0x67(r1)
/* 81472E94 | 54 65 06 3E */	clrlwi r5, r3, 24
/* 81472E98 | 8B 7F 00 1C */	lbz r27, 0x1c(r31)
/* 81472E9C | 7C 05 D8 40 */	cmplw r5, r27
/* 81472EA0 | 40 80 18 A8 */	bge .L_81474748
.L_81472EA4:
/* 81472EA4 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 81472EA8 | 54 86 04 20 */	rlwinm r6, r4, 0, 16, 16
/* 81472EAC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81472EB0 | 40 82 00 40 */	bne .L_81472EF0
/* 81472EB4 | 80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 81472EB8 | 39 03 00 01 */	addi r8, r3, 0x1
/* 81472EBC | 91 01 00 D8 */	stw r8, 0xd8(r1)
/* 81472EC0 | 48 00 00 10 */	b .L_81472ED0
.L_81472EC4:
/* 81472EC4 | 80 A1 00 D8 */	lwz r5, 0xd8(r1)
/* 81472EC8 | 38 85 00 02 */	addi r4, r5, 0x2
/* 81472ECC | 90 81 00 D8 */	stw r4, 0xd8(r1)
.L_81472ED0:
/* 81472ED0 | 80 E1 00 D8 */	lwz r7, 0xd8(r1)
/* 81472ED4 | 88 C7 00 00 */	lbz r6, 0x0(r7)
/* 81472ED8 | 54 C3 06 30 */	rlwinm r3, r6, 0, 24, 24
/* 81472EDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81472EE0 | 41 82 FF E4 */	beq .L_81472EC4
/* 81472EE4 | 80 A1 00 D8 */	lwz r5, 0xd8(r1)
/* 81472EE8 | 3B 85 00 01 */	addi r28, r5, 0x1
/* 81472EEC | 93 81 00 D8 */	stw r28, 0xd8(r1)
.L_81472EF0:
/* 81472EF0 | 89 81 00 6A */	lbz r12, 0x6a(r1)
/* 81472EF4 | 38 8C FF FF */	subi r4, r12, 0x1
/* 81472EF8 | 98 81 00 6A */	stb r4, 0x6a(r1)
.L_81472EFC:
/* 81472EFC | 89 61 00 6A */	lbz r11, 0x6a(r1)
/* 81472F00 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81472F04 | 40 82 FB AC */	bne .L_81472AB0
.L_81472F08:
/* 81472F08 | 89 41 00 6B */	lbz r10, 0x6b(r1)
/* 81472F0C | 55 49 06 30 */	rlwinm r9, r10, 0, 24, 24
/* 81472F10 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81472F14 | 41 82 FB 04 */	beq .L_81472A18
.L_81472F18:
/* 81472F18 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81472F1C | 39 03 00 0C */	addi r8, r3, 0xc
/* 81472F20 | 91 01 01 00 */	stw r8, 0x100(r1)
.L_81472F24:
/* 81472F24 | 88 81 00 62 */	lbz r4, 0x62(r1)
/* 81472F28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81472F2C | 41 82 00 10 */	beq .L_81472F3C
/* 81472F30 | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 81472F34 | 28 05 00 01 */	cmplwi r5, 0x1
/* 81472F38 | 41 81 F8 58 */	bgt .L_81472790
.L_81472F3C:
/* 81472F3C | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 81472F40 | 28 07 00 05 */	cmplwi r7, 0x5
/* 81472F44 | 40 82 06 D0 */	bne .L_81473614
/* 81472F48 | 38 C0 00 00 */	li r6, 0x0
/* 81472F4C | B0 C1 00 98 */	sth r6, 0x98(r1)
/* 81472F50 | 38 80 00 00 */	li r4, 0x0
/* 81472F54 | 98 81 00 68 */	stb r4, 0x68(r1)
/* 81472F58 | 48 00 06 BC */	b .L_81473614
.L_81472F5C:
/* 81472F5C | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 81472F60 | 28 05 00 05 */	cmplwi r5, 0x5
/* 81472F64 | 41 82 03 E8 */	beq .L_8147334C
/* 81472F68 | 48 00 02 9C */	b .L_81473204
.L_81472F6C:
/* 81472F6C | A0 61 00 7C */	lhz r3, 0x7c(r1)
/* 81472F70 | 7C 68 1B 78 */	mr r8, r3
/* 81472F74 | 38 83 FF FF */	subi r4, r3, 0x1
/* 81472F78 | B0 81 00 7C */	sth r4, 0x7c(r1)
/* 81472F7C | 55 03 04 3E */	clrlwi r3, r8, 16
/* 81472F80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81472F84 | 41 82 00 B4 */	beq .L_81473038
/* 81472F88 | 89 21 02 E5 */	lbz r9, 0x2e5(r1)
/* 81472F8C | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81472F90 | 88 C4 00 00 */	lbz r6, 0x0(r4)
/* 81472F94 | 88 A1 02 D9 */	lbz r5, 0x2d9(r1)
/* 81472F98 | 7C C7 28 38 */	and r7, r6, r5
/* 81472F9C | 7C 09 38 00 */	cmpw r9, r7
/* 81472FA0 | 40 82 00 2C */	bne .L_81472FCC
/* 81472FA4 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81472FA8 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 81472FAC | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 81472FB0 | 38 C1 00 98 */	addi r6, r1, 0x98
/* 81472FB4 | 7F C7 F3 78 */	mr r7, r30
/* 81472FB8 | 48 00 A1 91 */	bl Zi8SecMatchChar
/* 81472FBC | 7C 64 1B 78 */	mr r4, r3
/* 81472FC0 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81472FC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81472FC8 | 40 82 00 D0 */	bne .L_81473098
.L_81472FCC:
/* 81472FCC | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 81472FD0 | 39 06 00 0C */	addi r8, r6, 0xc
/* 81472FD4 | 91 01 01 00 */	stw r8, 0x100(r1)
.L_81472FD8:
/* 81472FD8 | 88 A1 02 D8 */	lbz r5, 0x2d8(r1)
/* 81472FDC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81472FE0 | 40 82 FF 8C */	bne .L_81472F6C
/* 81472FE4 | 88 E1 02 E8 */	lbz r7, 0x2e8(r1)
/* 81472FE8 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 81472FEC | 38 81 00 7C */	addi r4, r1, 0x7c
/* 81472FF0 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81472FF4 | 38 C1 01 00 */	addi r6, r1, 0x100
/* 81472FF8 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 81472FFC | 38 A1 00 98 */	addi r5, r1, 0x98
/* 81473000 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 81473004 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81473008 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8147300C | 88 81 02 D9 */	lbz r4, 0x2d9(r1)
/* 81473010 | 88 A1 02 E5 */	lbz r5, 0x2e5(r1)
/* 81473014 | 88 C1 02 DA */	lbz r6, 0x2da(r1)
/* 81473018 | 88 E1 02 E6 */	lbz r7, 0x2e6(r1)
/* 8147301C | 89 01 02 DB */	lbz r8, 0x2db(r1)
/* 81473020 | 89 21 02 E7 */	lbz r9, 0x2e7(r1)
/* 81473024 | 89 41 02 DC */	lbz r10, 0x2dc(r1)
/* 81473028 | 48 00 9E CD */	bl Zi8PriMatchNextChar
/* 8147302C | 54 69 06 3E */	clrlwi r9, r3, 24
/* 81473030 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81473034 | 40 82 00 2C */	bne .L_81473060
.L_81473038:
/* 81473038 | 81 01 01 08 */	lwz r8, 0x108(r1)
/* 8147303C | 2C 08 00 FF */	cmpwi r8, 0xff
/* 81473040 | 40 82 F4 58 */	bne .L_81472498
/* 81473044 | 38 E0 00 00 */	li r7, 0x0
/* 81473048 | B0 E1 00 98 */	sth r7, 0x98(r1)
/* 8147304C | 38 80 00 00 */	li r4, 0x0
/* 81473050 | 98 81 00 68 */	stb r4, 0x68(r1)
/* 81473054 | 38 C0 00 00 */	li r6, 0x0
/* 81473058 | 98 C1 00 5B */	stb r6, 0x5b(r1)
/* 8147305C | 48 00 01 A8 */	b .L_81473204
.L_81473060:
/* 81473060 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81473064 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 81473068 | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 8147306C | 38 C1 00 98 */	addi r6, r1, 0x98
/* 81473070 | 7F C7 F3 78 */	mr r7, r30
/* 81473074 | 48 00 A0 D5 */	bl Zi8SecMatchChar
/* 81473078 | 7C 65 1B 78 */	mr r5, r3
/* 8147307C | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 81473080 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473084 | 40 82 00 14 */	bne .L_81473098
/* 81473088 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 8147308C | 39 43 00 0C */	addi r10, r3, 0xc
/* 81473090 | 91 41 01 00 */	stw r10, 0x100(r1)
/* 81473094 | 48 00 01 70 */	b .L_81473204
.L_81473098:
/* 81473098 | A1 21 00 86 */	lhz r9, 0x86(r1)
/* 8147309C | A0 C1 00 7C */	lhz r6, 0x7c(r1)
/* 814730A0 | A0 A1 00 88 */	lhz r5, 0x88(r1)
/* 814730A4 | 7C 86 28 50 */	subf r4, r6, r5
/* 814730A8 | 7D 04 4A 14 */	add r8, r4, r9
/* 814730AC | 38 E8 FF FF */	subi r7, r8, 0x1
/* 814730B0 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 814730B4 | B0 C1 00 A2 */	sth r6, 0xa2(r1)
/* 814730B8 | 80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 814730BC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814730C0 | 41 82 00 14 */	beq .L_814730D4
/* 814730C4 | 80 61 00 E4 */	lwz r3, 0xe4(r1)
/* 814730C8 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 814730CC | 7D 63 22 14 */	add r11, r3, r4
/* 814730D0 | 91 61 00 C4 */	stw r11, 0xc4(r1)
.L_814730D4:
/* 814730D4 | 80 61 00 E4 */	lwz r3, 0xe4(r1)
/* 814730D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814730DC | 41 82 00 1C */	beq .L_814730F8
/* 814730E0 | 80 E1 00 C4 */	lwz r7, 0xc4(r1)
/* 814730E4 | 89 47 00 00 */	lbz r10, 0x0(r7)
/* 814730E8 | 88 C1 00 6D */	lbz r6, 0x6d(r1)
/* 814730EC | 7D 45 30 38 */	and r5, r10, r6
/* 814730F0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814730F4 | 41 82 01 04 */	beq .L_814731F8
.L_814730F8:
/* 814730F8 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 814730FC | 89 3E 01 20 */	lbz r9, 0x120(r30)
/* 81473100 | 55 28 08 3C */	slwi r8, r9, 1
/* 81473104 | 7C 7E 42 14 */	add r3, r30, r8
/* 81473108 | B0 83 00 A0 */	sth r4, 0xa0(r3)
/* 8147310C | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 81473110 | 88 9E 01 20 */	lbz r4, 0x120(r30)
/* 81473114 | 54 85 08 3C */	slwi r5, r4, 1
/* 81473118 | 7C FE 2A 14 */	add r7, r30, r5
/* 8147311C | B0 C7 00 20 */	sth r6, 0x20(r7)
/* 81473120 | 88 81 00 5D */	lbz r4, 0x5d(r1)
/* 81473124 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473128 | 41 82 00 48 */	beq .L_81473170
/* 8147312C | 38 61 00 98 */	addi r3, r1, 0x98
/* 81473130 | 38 80 00 01 */	li r4, 0x1
/* 81473134 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81473138 | 7F C5 F3 78 */	mr r5, r30
/* 8147313C | 48 00 8C B5 */	bl Zi8IsDupWordW
/* 81473140 | 54 6C 06 3E */	clrlwi r12, r3, 24
/* 81473144 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81473148 | 40 82 00 B0 */	bne .L_814731F8
/* 8147314C | 38 C0 00 00 */	li r6, 0x0
/* 81473150 | 98 C1 00 5B */	stb r6, 0x5b(r1)
/* 81473154 | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 81473158 | 88 85 00 04 */	lbz r4, 0x4(r5)
/* 8147315C | 54 88 06 3A */	rlwinm r8, r4, 0, 24, 29
/* 81473160 | 7D 0B 16 70 */	srawi r11, r8, 2
/* 81473164 | 55 63 06 3E */	clrlwi r3, r11, 24
/* 81473168 | 98 61 00 68 */	stb r3, 0x68(r1)
/* 8147316C | 48 00 00 8C */	b .L_814731F8
.L_81473170:
/* 81473170 | 88 E1 00 5E */	lbz r7, 0x5e(r1)
/* 81473174 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81473178 | 41 82 00 34 */	beq .L_814731AC
/* 8147317C | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81473180 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 81473184 | 7F C5 F3 78 */	mr r5, r30
/* 81473188 | 4B FF 79 95 */	bl Zi8SetFindCand
/* 8147318C | 7C 6A 1B 78 */	mr r10, r3
/* 81473190 | 55 49 06 3E */	clrlwi r9, r10, 24
/* 81473194 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81473198 | 41 82 00 40 */	beq .L_814731D8
/* 8147319C | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 814731A0 | 38 86 00 0C */	addi r4, r6, 0xc
/* 814731A4 | 90 81 01 00 */	stw r4, 0x100(r1)
/* 814731A8 | 48 00 00 5C */	b .L_81473204
.L_814731AC:
/* 814731AC | A0 61 00 A2 */	lhz r3, 0xa2(r1)
/* 814731B0 | 7F C4 F3 78 */	mr r4, r30
/* 814731B4 | 48 00 8B 41 */	bl Zi8IsDupWChar
/* 814731B8 | 7C 65 1B 78 */	mr r5, r3
/* 814731BC | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 814731C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814731C4 | 41 82 00 14 */	beq .L_814731D8
/* 814731C8 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 814731CC | 38 E8 00 0C */	addi r7, r8, 0xc
/* 814731D0 | 90 E1 01 00 */	stw r7, 0x100(r1)
/* 814731D4 | 48 00 00 30 */	b .L_81473204
.L_814731D8:
/* 814731D8 | 38 C0 00 00 */	li r6, 0x0
/* 814731DC | 98 C1 00 5B */	stb r6, 0x5b(r1)
/* 814731E0 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 814731E4 | 88 86 00 04 */	lbz r4, 0x4(r6)
/* 814731E8 | 54 89 06 3A */	rlwinm r9, r4, 0, 24, 29
/* 814731EC | 7D 25 16 70 */	srawi r5, r9, 2
/* 814731F0 | 54 A8 06 3E */	clrlwi r8, r5, 24
/* 814731F4 | 99 01 00 68 */	stb r8, 0x68(r1)
.L_814731F8:
/* 814731F8 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 814731FC | 38 83 00 0C */	addi r4, r3, 0xc
/* 81473200 | 90 81 01 00 */	stw r4, 0x100(r1)
.L_81473204:
/* 81473204 | 88 E1 00 5B */	lbz r7, 0x5b(r1)
/* 81473208 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8147320C | 40 82 FD CC */	bne .L_81472FD8
/* 81473210 | 48 00 01 3C */	b .L_8147334C
.L_81473214:
/* 81473214 | 88 C1 02 E8 */	lbz r6, 0x2e8(r1)
/* 81473218 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 8147321C | 39 21 00 74 */	addi r9, r1, 0x74
/* 81473220 | 91 21 00 0C */	stw r9, 0xc(r1)
/* 81473224 | 38 61 00 FC */	addi r3, r1, 0xfc
/* 81473228 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8147322C | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 81473230 | 80 61 00 FC */	lwz r3, 0xfc(r1)
/* 81473234 | 88 81 02 D9 */	lbz r4, 0x2d9(r1)
/* 81473238 | 88 A1 02 E5 */	lbz r5, 0x2e5(r1)
/* 8147323C | 88 C1 02 DA */	lbz r6, 0x2da(r1)
/* 81473240 | 88 E1 02 E6 */	lbz r7, 0x2e6(r1)
/* 81473244 | 89 01 02 DB */	lbz r8, 0x2db(r1)
/* 81473248 | 89 21 02 E7 */	lbz r9, 0x2e7(r1)
/* 8147324C | 89 41 02 DC */	lbz r10, 0x2dc(r1)
/* 81473250 | 48 00 A3 D5 */	bl Zi8PriMatchNextComp
/* 81473254 | 7C 65 1B 78 */	mr r5, r3
/* 81473258 | 54 A4 06 3E */	clrlwi r4, r5, 24
/* 8147325C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473260 | 40 82 00 20 */	bne .L_81473280
/* 81473264 | 39 40 00 00 */	li r10, 0x0
/* 81473268 | B1 41 00 96 */	sth r10, 0x96(r1)
/* 8147326C | 38 60 00 00 */	li r3, 0x0
/* 81473270 | 98 61 00 6C */	stb r3, 0x6c(r1)
/* 81473274 | 39 80 00 00 */	li r12, 0x0
/* 81473278 | 99 81 00 5C */	stb r12, 0x5c(r1)
/* 8147327C | 48 00 00 D0 */	b .L_8147334C
.L_81473280:
/* 81473280 | 80 61 00 FC */	lwz r3, 0xfc(r1)
/* 81473284 | 38 81 02 D8 */	addi r4, r1, 0x2d8
/* 81473288 | 80 A1 00 F8 */	lwz r5, 0xf8(r1)
/* 8147328C | 7F C6 F3 78 */	mr r6, r30
/* 81473290 | 48 00 A4 9D */	bl Zi8SecMatchComp
/* 81473294 | 7C 67 1B 78 */	mr r7, r3
/* 81473298 | 54 E8 06 3E */	clrlwi r8, r7, 24
/* 8147329C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814732A0 | 41 82 00 A0 */	beq .L_81473340
/* 814732A4 | 80 C1 00 E0 */	lwz r6, 0xe0(r1)
/* 814732A8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814732AC | 41 82 00 28 */	beq .L_814732D4
/* 814732B0 | 88 A1 00 6D */	lbz r5, 0x6d(r1)
/* 814732B4 | 80 61 00 E0 */	lwz r3, 0xe0(r1)
/* 814732B8 | A0 81 00 74 */	lhz r4, 0x74(r1)
/* 814732BC | A1 61 00 78 */	lhz r11, 0x78(r1)
/* 814732C0 | 7D 24 58 50 */	subf r9, r4, r11
/* 814732C4 | 7C E3 48 AE */	lbzx r7, r3, r9
/* 814732C8 | 7C A8 38 38 */	and r8, r5, r7
/* 814732CC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814732D0 | 41 82 00 70 */	beq .L_81473340
.L_814732D4:
/* 814732D4 | A1 41 00 74 */	lhz r10, 0x74(r1)
/* 814732D8 | A1 01 00 78 */	lhz r8, 0x78(r1)
/* 814732DC | 7C 6A 40 50 */	subf r3, r10, r8
/* 814732E0 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 814732E4 | 54 86 08 3C */	slwi r6, r4, 1
/* 814732E8 | 54 C9 04 3E */	clrlwi r9, r6, 16
/* 814732EC | B1 21 00 A2 */	sth r9, 0xa2(r1)
/* 814732F0 | 81 01 00 F4 */	lwz r8, 0xf4(r1)
/* 814732F4 | A0 A1 00 A2 */	lhz r5, 0xa2(r1)
/* 814732F8 | 7C 85 42 14 */	add r4, r5, r8
/* 814732FC | 88 E4 00 01 */	lbz r7, 0x1(r4)
/* 81473300 | 54 E3 04 3E */	clrlwi r3, r7, 16
/* 81473304 | 54 66 40 2E */	slwi r6, r3, 8
/* 81473308 | 80 81 00 F4 */	lwz r4, 0xf4(r1)
/* 8147330C | A1 41 00 A2 */	lhz r10, 0xa2(r1)
/* 81473310 | 7C A4 50 AE */	lbzx r5, r4, r10
/* 81473314 | 7C C4 2B 78 */	or r4, r6, r5
/* 81473318 | 54 89 04 3E */	clrlwi r9, r4, 16
/* 8147331C | B1 21 00 96 */	sth r9, 0x96(r1)
/* 81473320 | 38 E0 00 00 */	li r7, 0x0
/* 81473324 | 98 E1 00 5C */	stb r7, 0x5c(r1)
/* 81473328 | 80 C1 00 FC */	lwz r6, 0xfc(r1)
/* 8147332C | 88 66 00 06 */	lbz r3, 0x6(r6)
/* 81473330 | 54 68 06 3A */	rlwinm r8, r3, 0, 24, 29
/* 81473334 | 7D 05 16 70 */	srawi r5, r8, 2
/* 81473338 | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 8147333C | 98 61 00 6C */	stb r3, 0x6c(r1)
.L_81473340:
/* 81473340 | 80 E1 00 FC */	lwz r7, 0xfc(r1)
/* 81473344 | 38 C7 00 08 */	addi r6, r7, 0x8
/* 81473348 | 90 C1 00 FC */	stw r6, 0xfc(r1)
.L_8147334C:
/* 8147334C | 88 81 00 5C */	lbz r4, 0x5c(r1)
/* 81473350 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473354 | 40 82 FE C0 */	bne .L_81473214
/* 81473358 | A0 A1 00 96 */	lhz r5, 0x96(r1)
/* 8147335C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81473360 | 41 82 00 F8 */	beq .L_81473458
/* 81473364 | 88 81 00 6C */	lbz r4, 0x6c(r1)
/* 81473368 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8147336C | 88 E1 00 68 */	lbz r7, 0x68(r1)
/* 81473370 | 7C 03 38 40 */	cmplw r3, r7
/* 81473374 | 41 80 00 E4 */	blt .L_81473458
/* 81473378 | A1 61 00 72 */	lhz r11, 0x72(r1)
/* 8147337C | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81473380 | 40 82 00 B8 */	bne .L_81473438
/* 81473384 | 81 41 00 CC */	lwz r10, 0xcc(r1)
/* 81473388 | 39 0A 00 01 */	addi r8, r10, 0x1
/* 8147338C | 91 01 00 CC */	stw r8, 0xcc(r1)
/* 81473390 | 89 21 00 5D */	lbz r9, 0x5d(r1)
/* 81473394 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81473398 | 41 82 00 64 */	beq .L_814733FC
/* 8147339C | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 814733A0 | 38 E8 00 01 */	addi r7, r8, 0x1
/* 814733A4 | 98 E1 00 67 */	stb r7, 0x67(r1)
/* 814733A8 | A0 C1 00 96 */	lhz r6, 0x96(r1)
/* 814733AC | 80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 814733B0 | 81 21 01 04 */	lwz r9, 0x104(r1)
/* 814733B4 | 7D 24 4B 78 */	mr r4, r9
/* 814733B8 | 54 83 08 3C */	slwi r3, r4, 1
/* 814733BC | 7C C5 1B 2E */	sthx r6, r5, r3
/* 814733C0 | 39 49 00 01 */	addi r10, r9, 0x1
/* 814733C4 | 91 41 01 04 */	stw r10, 0x104(r1)
/* 814733C8 | 39 00 00 20 */	li r8, 0x20
/* 814733CC | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 814733D0 | 80 A1 01 04 */	lwz r5, 0x104(r1)
/* 814733D4 | 7C A7 2B 78 */	mr r7, r5
/* 814733D8 | 54 E6 08 3C */	slwi r6, r7, 1
/* 814733DC | 7D 03 33 2E */	sthx r8, r3, r6
/* 814733E0 | 38 85 00 01 */	addi r4, r5, 0x1
/* 814733E4 | 90 81 01 04 */	stw r4, 0x104(r1)
/* 814733E8 | 80 A1 01 04 */	lwz r5, 0x104(r1)
/* 814733EC | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 814733F0 | 7C 05 20 00 */	cmpw r5, r4
/* 814733F4 | 41 81 02 2C */	bgt .L_81473620
/* 814733F8 | 48 00 00 28 */	b .L_81473420
.L_814733FC:
/* 814733FC | A1 21 00 96 */	lhz r9, 0x96(r1)
/* 81473400 | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 81473404 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81473408 | 7C 87 23 78 */	mr r7, r4
/* 8147340C | 54 E6 06 3E */	clrlwi r6, r7, 24
/* 81473410 | 54 C5 08 3C */	slwi r5, r6, 1
/* 81473414 | 7D 28 2B 2E */	sthx r9, r8, r5
/* 81473418 | 38 64 00 01 */	addi r3, r4, 0x1
/* 8147341C | 98 61 00 67 */	stb r3, 0x67(r1)
.L_81473420:
/* 81473420 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81473424 | 54 88 06 3E */	clrlwi r8, r4, 24
/* 81473428 | 88 7F 00 1C */	lbz r3, 0x1c(r31)
/* 8147342C | 7C 08 18 40 */	cmplw r8, r3
/* 81473430 | 40 80 01 F0 */	bge .L_81473620
/* 81473434 | 48 00 00 10 */	b .L_81473444
.L_81473438:
/* 81473438 | A0 E1 00 72 */	lhz r7, 0x72(r1)
/* 8147343C | 38 C7 FF FF */	subi r6, r7, 0x1
/* 81473440 | B0 C1 00 72 */	sth r6, 0x72(r1)
.L_81473444:
/* 81473444 | 38 A0 00 00 */	li r5, 0x0
/* 81473448 | B0 A1 00 96 */	sth r5, 0x96(r1)
/* 8147344C | 38 80 00 01 */	li r4, 0x1
/* 81473450 | 98 81 00 5C */	stb r4, 0x5c(r1)
/* 81473454 | 48 00 01 C0 */	b .L_81473614
.L_81473458:
/* 81473458 | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 8147345C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81473460 | 41 82 01 C0 */	beq .L_81473620
/* 81473464 | 89 21 00 66 */	lbz r9, 0x66(r1)
/* 81473468 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8147346C | 41 82 00 70 */	beq .L_814734DC
/* 81473470 | 39 00 00 00 */	li r8, 0x0
/* 81473474 | B1 01 00 8E */	sth r8, 0x8e(r1)
/* 81473478 | 48 00 00 30 */	b .L_814734A8
.L_8147347C:
/* 8147347C | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 81473480 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 81473484 | A0 A1 00 8E */	lhz r5, 0x8e(r1)
/* 81473488 | 54 A4 08 3C */	slwi r4, r5, 1
/* 8147348C | 38 61 01 18 */	addi r3, r1, 0x118
/* 81473490 | 7D 83 22 2E */	lhzx r12, r3, r4
/* 81473494 | 7C 06 60 40 */	cmplw r6, r12
/* 81473498 | 41 82 00 20 */	beq .L_814734B8
/* 8147349C | A1 61 00 8E */	lhz r11, 0x8e(r1)
/* 814734A0 | 38 EB 00 01 */	addi r7, r11, 0x1
/* 814734A4 | B0 E1 00 8E */	sth r7, 0x8e(r1)
.L_814734A8:
/* 814734A8 | A1 41 00 8E */	lhz r10, 0x8e(r1)
/* 814734AC | 89 21 00 66 */	lbz r9, 0x66(r1)
/* 814734B0 | 7C 0A 48 00 */	cmpw r10, r9
/* 814734B4 | 41 80 FF C8 */	blt .L_8147347C
.L_814734B8:
/* 814734B8 | A1 01 00 8E */	lhz r8, 0x8e(r1)
/* 814734BC | 88 61 00 66 */	lbz r3, 0x66(r1)
/* 814734C0 | 7C 08 18 00 */	cmpw r8, r3
/* 814734C4 | 40 80 00 18 */	bge .L_814734DC
/* 814734C8 | 38 80 00 00 */	li r4, 0x0
/* 814734CC | B0 81 00 98 */	sth r4, 0x98(r1)
/* 814734D0 | 38 60 00 01 */	li r3, 0x1
/* 814734D4 | 98 61 00 5B */	stb r3, 0x5b(r1)
/* 814734D8 | 48 00 01 3C */	b .L_81473614
.L_814734DC:
/* 814734DC | A1 21 00 98 */	lhz r9, 0x98(r1)
/* 814734E0 | 55 28 04 3E */	clrlwi r8, r9, 16
/* 814734E4 | A0 A1 00 8C */	lhz r5, 0x8c(r1)
/* 814734E8 | 7C 08 28 40 */	cmplw r8, r5
/* 814734EC | 41 82 01 18 */	beq .L_81473604
/* 814734F0 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 814734F4 | B0 E1 00 8C */	sth r7, 0x8c(r1)
/* 814734F8 | A0 C1 00 72 */	lhz r6, 0x72(r1)
/* 814734FC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81473500 | 40 82 00 F8 */	bne .L_814735F8
/* 81473504 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 81473508 | 38 85 00 01 */	addi r4, r5, 0x1
/* 8147350C | 90 81 00 CC */	stw r4, 0xcc(r1)
/* 81473510 | 89 9D 00 00 */	lbz r12, 0x0(r29)
/* 81473514 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81473518 | 40 82 00 CC */	bne .L_814735E4
/* 8147351C | 88 9E 01 20 */	lbz r4, 0x120(r30)
/* 81473520 | 39 64 00 01 */	addi r11, r4, 0x1
/* 81473524 | 99 7E 01 20 */	stb r11, 0x120(r30)
/* 81473528 | 55 6A 06 3E */	clrlwi r10, r11, 24
/* 8147352C | 28 0A 00 40 */	cmplwi r10, 0x40
/* 81473530 | 41 80 00 0C */	blt .L_8147353C
/* 81473534 | 38 60 00 00 */	li r3, 0x0
/* 81473538 | 98 7E 01 20 */	stb r3, 0x120(r30)
.L_8147353C:
/* 8147353C | 88 81 00 5D */	lbz r4, 0x5d(r1)
/* 81473540 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473544 | 41 82 00 64 */	beq .L_814735A8
/* 81473548 | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 8147354C | 38 A9 00 01 */	addi r5, r9, 0x1
/* 81473550 | 98 A1 00 67 */	stb r5, 0x67(r1)
/* 81473554 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 81473558 | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 8147355C | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 81473560 | 7C C4 33 78 */	mr r4, r6
/* 81473564 | 54 83 08 3C */	slwi r3, r4, 1
/* 81473568 | 7C E8 1B 2E */	sthx r7, r8, r3
/* 8147356C | 38 E6 00 01 */	addi r7, r6, 0x1
/* 81473570 | 90 E1 01 04 */	stw r7, 0x104(r1)
/* 81473574 | 38 A0 00 20 */	li r5, 0x20
/* 81473578 | 83 61 00 BC */	lwz r27, 0xbc(r1)
/* 8147357C | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 81473580 | 7C 86 23 78 */	mr r6, r4
/* 81473584 | 54 C8 08 3C */	slwi r8, r6, 1
/* 81473588 | 7C BB 43 2E */	sthx r5, r27, r8
/* 8147358C | 38 64 00 01 */	addi r3, r4, 0x1
/* 81473590 | 90 61 01 04 */	stw r3, 0x104(r1)
/* 81473594 | 80 A1 01 04 */	lwz r5, 0x104(r1)
/* 81473598 | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 8147359C | 7C 05 20 00 */	cmpw r5, r4
/* 814735A0 | 41 81 11 A8 */	bgt .L_81474748
/* 814735A4 | 48 00 00 28 */	b .L_814735CC
.L_814735A8:
/* 814735A8 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 814735AC | 80 C1 00 BC */	lwz r6, 0xbc(r1)
/* 814735B0 | 88 61 00 67 */	lbz r3, 0x67(r1)
/* 814735B4 | 7C 65 1B 78 */	mr r5, r3
/* 814735B8 | 54 AC 06 3E */	clrlwi r12, r5, 24
/* 814735BC | 55 84 08 3C */	slwi r4, r12, 1
/* 814735C0 | 7C E6 23 2E */	sthx r7, r6, r4
/* 814735C4 | 3B 83 00 01 */	addi r28, r3, 0x1
/* 814735C8 | 9B 81 00 67 */	stb r28, 0x67(r1)
.L_814735CC:
/* 814735CC | 89 61 00 67 */	lbz r11, 0x67(r1)
/* 814735D0 | 55 6A 06 3E */	clrlwi r10, r11, 24
/* 814735D4 | 89 3F 00 1C */	lbz r9, 0x1c(r31)
/* 814735D8 | 7C 0A 48 40 */	cmplw r10, r9
/* 814735DC | 40 80 11 6C */	bge .L_81474748
/* 814735E0 | 48 00 00 24 */	b .L_81473604
.L_814735E4:
/* 814735E4 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 814735E8 | 81 1D 00 0C */	lwz r8, 0xc(r29)
/* 814735EC | 7C 03 40 00 */	cmpw r3, r8
/* 814735F0 | 40 80 11 58 */	bge .L_81474748
/* 814735F4 | 48 00 00 10 */	b .L_81473604
.L_814735F8:
/* 814735F8 | A0 81 00 72 */	lhz r4, 0x72(r1)
/* 814735FC | 38 A4 FF FF */	subi r5, r4, 0x1
/* 81473600 | B0 A1 00 72 */	sth r5, 0x72(r1)
.L_81473604:
/* 81473604 | 38 E0 00 00 */	li r7, 0x0
/* 81473608 | B0 E1 00 98 */	sth r7, 0x98(r1)
/* 8147360C | 38 C0 00 01 */	li r6, 0x1
/* 81473610 | 98 C1 00 5B */	stb r6, 0x5b(r1)
.L_81473614:
/* 81473614 | 88 81 00 62 */	lbz r4, 0x62(r1)
/* 81473618 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147361C | 40 82 F9 40 */	bne .L_81472F5C
.L_81473620:
/* 81473620 | 88 A1 00 62 */	lbz r5, 0x62(r1)
/* 81473624 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81473628 | 41 82 00 CC */	beq .L_814736F4
/* 8147362C | 88 61 00 5D */	lbz r3, 0x5d(r1)
/* 81473630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81473634 | 40 82 11 14 */	bne .L_81474748
/* 81473638 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 8147363C | 55 04 06 3E */	clrlwi r4, r8, 24
/* 81473640 | 88 7F 00 1C */	lbz r3, 0x1c(r31)
/* 81473644 | 7C 04 18 40 */	cmplw r4, r3
/* 81473648 | 40 80 11 00 */	bge .L_81474748
/* 8147364C | 89 21 00 56 */	lbz r9, 0x56(r1)
/* 81473650 | 28 09 00 05 */	cmplwi r9, 0x5
/* 81473654 | 41 82 10 F4 */	beq .L_81474748
/* 81473658 | 38 80 00 00 */	li r4, 0x0
/* 8147365C | B0 81 00 8E */	sth r4, 0x8e(r1)
/* 81473660 | 48 00 00 80 */	b .L_814736E0
.L_81473664:
/* 81473664 | 80 C1 00 BC */	lwz r6, 0xbc(r1)
/* 81473668 | A0 A1 00 8E */	lhz r5, 0x8e(r1)
/* 8147366C | 54 A7 08 3C */	slwi r7, r5, 1
/* 81473670 | 7C 66 3A 2E */	lhzx r3, r6, r7
/* 81473674 | 7F C4 F3 78 */	mr r4, r30
/* 81473678 | 48 00 96 D5 */	bl Zi8IsComponent
/* 8147367C | 7C 64 1B 78 */	mr r4, r3
/* 81473680 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81473684 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81473688 | 41 82 00 4C */	beq .L_814736D4
/* 8147368C | 80 C1 00 BC */	lwz r6, 0xbc(r1)
/* 81473690 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 81473694 | 38 A8 FF FF */	subi r5, r8, 0x1
/* 81473698 | 98 A1 00 67 */	stb r5, 0x67(r1)
/* 8147369C | 54 A7 06 3E */	clrlwi r7, r5, 24
/* 814736A0 | 54 E4 08 3C */	slwi r4, r7, 1
/* 814736A4 | 7C C6 22 2E */	lhzx r6, r6, r4
/* 814736A8 | 80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 814736AC | A0 61 00 8E */	lhz r3, 0x8e(r1)
/* 814736B0 | 7C 69 1B 78 */	mr r9, r3
/* 814736B4 | 55 27 04 3E */	clrlwi r7, r9, 16
/* 814736B8 | 54 E4 08 3C */	slwi r4, r7, 1
/* 814736BC | 7C C5 23 2E */	sthx r6, r5, r4
/* 814736C0 | 39 03 FF FF */	subi r8, r3, 0x1
/* 814736C4 | B1 01 00 8E */	sth r8, 0x8e(r1)
/* 814736C8 | 80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 814736CC | 38 A6 FF FF */	subi r5, r6, 0x1
/* 814736D0 | 90 A1 00 CC */	stw r5, 0xcc(r1)
.L_814736D4:
/* 814736D4 | A0 81 00 8E */	lhz r4, 0x8e(r1)
/* 814736D8 | 38 64 00 01 */	addi r3, r4, 0x1
/* 814736DC | B0 61 00 8E */	sth r3, 0x8e(r1)
.L_814736E0:
/* 814736E0 | A1 41 00 8E */	lhz r10, 0x8e(r1)
/* 814736E4 | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 814736E8 | 7C 0A 48 00 */	cmpw r10, r9
/* 814736EC | 41 80 FF 78 */	blt .L_81473664
/* 814736F0 | 48 00 10 58 */	b .L_81474748
.L_814736F4:
/* 814736F4 | 88 C1 00 60 */	lbz r6, 0x60(r1)
/* 814736F8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814736FC | 40 82 00 98 */	bne .L_81473794
/* 81473700 | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 81473704 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81473708 | 40 82 00 38 */	bne .L_81473740
/* 8147370C | 88 81 02 FD */	lbz r4, 0x2fd(r1)
/* 81473710 | 28 04 00 01 */	cmplwi r4, 0x1
/* 81473714 | 41 81 00 2C */	bgt .L_81473740
/* 81473718 | A1 01 03 3E */	lhz r8, 0x33e(r1)
/* 8147371C | 55 07 04 3E */	clrlwi r7, r8, 16
/* 81473720 | A0 C1 02 FE */	lhz r6, 0x2fe(r1)
/* 81473724 | 7C 07 30 40 */	cmplw r7, r6
/* 81473728 | 40 82 00 24 */	bne .L_8147374C
/* 8147372C | A0 A1 03 40 */	lhz r5, 0x340(r1)
/* 81473730 | 54 A3 04 3E */	clrlwi r3, r5, 16
/* 81473734 | A0 81 03 1E */	lhz r4, 0x31e(r1)
/* 81473738 | 7C 03 20 40 */	cmplw r3, r4
/* 8147373C | 40 82 00 10 */	bne .L_8147374C
.L_81473740:
/* 81473740 | 39 60 00 00 */	li r11, 0x0
/* 81473744 | 99 61 00 64 */	stb r11, 0x64(r1)
/* 81473748 | 48 00 00 3C */	b .L_81473784
.L_8147374C:
/* 8147374C | 38 60 00 01 */	li r3, 0x1
/* 81473750 | 98 61 00 64 */	stb r3, 0x64(r1)
/* 81473754 | A0 E1 02 FE */	lhz r7, 0x2fe(r1)
/* 81473758 | B0 E1 00 A2 */	sth r7, 0xa2(r1)
/* 8147375C | A1 41 03 3E */	lhz r10, 0x33e(r1)
/* 81473760 | B1 41 02 FE */	sth r10, 0x2fe(r1)
/* 81473764 | A0 C1 00 A2 */	lhz r6, 0xa2(r1)
/* 81473768 | B0 C1 03 3E */	sth r6, 0x33e(r1)
/* 8147376C | A0 A1 03 1E */	lhz r5, 0x31e(r1)
/* 81473770 | B0 A1 00 A2 */	sth r5, 0xa2(r1)
/* 81473774 | A0 81 03 40 */	lhz r4, 0x340(r1)
/* 81473778 | B0 81 03 1E */	sth r4, 0x31e(r1)
/* 8147377C | A1 21 00 A2 */	lhz r9, 0xa2(r1)
/* 81473780 | B1 21 03 40 */	sth r9, 0x340(r1)
.L_81473784:
/* 81473784 | 39 00 00 00 */	li r8, 0x0
/* 81473788 | B1 01 00 80 */	sth r8, 0x80(r1)
/* 8147378C | 38 60 00 10 */	li r3, 0x10
/* 81473790 | B0 61 00 7E */	sth r3, 0x7e(r1)
.L_81473794:
/* 81473794 | 88 C1 00 59 */	lbz r6, 0x59(r1)
/* 81473798 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8147379C | 41 82 00 30 */	beq .L_814737CC
/* 814737A0 | 88 81 00 5A */	lbz r4, 0x5a(r1)
/* 814737A4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814737A8 | 41 82 00 24 */	beq .L_814737CC
/* 814737AC | 88 A1 02 FD */	lbz r5, 0x2fd(r1)
/* 814737B0 | 28 05 00 02 */	cmplwi r5, 0x2
/* 814737B4 | 40 82 00 18 */	bne .L_814737CC
/* 814737B8 | 38 E0 00 03 */	li r7, 0x3
/* 814737BC | 98 E1 00 59 */	stb r7, 0x59(r1)
/* 814737C0 | 48 00 11 B8 */	b .L_81474978
.L_814737C4:
/* 814737C4 | 38 80 00 01 */	li r4, 0x1
/* 814737C8 | 98 81 00 59 */	stb r4, 0x59(r1)
.L_814737CC:
/* 814737CC | 38 60 00 01 */	li r3, 0x1
/* 814737D0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814737D4 | 7F C4 F3 78 */	mr r4, r30
/* 814737D8 | 4B FE BC 9D */	bl Zi8GetFormatVersion
/* 814737DC | 54 6C 06 3E */	clrlwi r12, r3, 24
/* 814737E0 | 28 0C 00 04 */	cmplwi r12, 0x4
/* 814737E4 | 41 80 00 28 */	blt .L_8147380C
/* 814737E8 | 38 60 00 01 */	li r3, 0x1
/* 814737EC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814737F0 | 38 80 00 17 */	li r4, 0x17
/* 814737F4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814737F8 | 7F C5 F3 78 */	mr r5, r30
/* 814737FC | 4B FE BC 35 */	bl Zi8GetTableCount
/* 81473800 | 7C 66 1B 78 */	mr r6, r3
/* 81473804 | B0 C1 00 82 */	sth r6, 0x82(r1)
/* 81473808 | 48 00 00 0C */	b .L_81473814
.L_8147380C:
/* 8147380C | 38 A0 00 00 */	li r5, 0x0
/* 81473810 | B0 A1 00 82 */	sth r5, 0x82(r1)
.L_81473814:
/* 81473814 | A0 81 00 82 */	lhz r4, 0x82(r1)
/* 81473818 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147381C | 41 82 07 E0 */	beq .L_81473FFC
/* 81473820 | 89 01 02 FD */	lbz r8, 0x2fd(r1)
/* 81473824 | 28 08 00 02 */	cmplwi r8, 0x2
/* 81473828 | 40 82 07 D4 */	bne .L_81473FFC
/* 8147382C | 89 61 00 5D */	lbz r11, 0x5d(r1)
/* 81473830 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81473834 | 41 82 07 C8 */	beq .L_81473FFC
/* 81473838 | 38 60 00 01 */	li r3, 0x1
/* 8147383C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81473840 | 38 80 00 18 */	li r4, 0x18
/* 81473844 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81473848 | 7F C5 F3 78 */	mr r5, r30
/* 8147384C | 4B FE BB 65 */	bl Zi8GetTableAddress
/* 81473850 | 90 61 00 AC */	stw r3, 0xac(r1)
/* 81473854 | 80 E1 00 AC */	lwz r7, 0xac(r1)
/* 81473858 | 90 E1 00 A4 */	stw r7, 0xa4(r1)
/* 8147385C | 38 60 00 01 */	li r3, 0x1
/* 81473860 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81473864 | 38 80 00 18 */	li r4, 0x18
/* 81473868 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147386C | 7F C5 F3 78 */	mr r5, r30
/* 81473870 | 4B FE BB C1 */	bl Zi8GetTableCount
/* 81473874 | 7C 6A 1B 78 */	mr r10, r3
/* 81473878 | B1 41 00 8E */	sth r10, 0x8e(r1)
/* 8147387C | A1 21 00 8E */	lhz r9, 0x8e(r1)
/* 81473880 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81473884 | 40 82 00 10 */	bne .L_81473894
/* 81473888 | 38 C0 00 01 */	li r6, 0x1
/* 8147388C | B0 C1 00 90 */	sth r6, 0x90(r1)
/* 81473890 | 48 00 00 14 */	b .L_814738A4
.L_81473894:
/* 81473894 | 38 80 00 00 */	li r4, 0x0
/* 81473898 | B0 81 00 82 */	sth r4, 0x82(r1)
/* 8147389C | 38 A0 00 00 */	li r5, 0x0
/* 814738A0 | B0 A1 00 90 */	sth r5, 0x90(r1)
.L_814738A4:
/* 814738A4 | A0 61 03 1E */	lhz r3, 0x31e(r1)
/* 814738A8 | 54 68 07 7E */	clrlwi r8, r3, 29
/* 814738AC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814738B0 | 40 82 00 14 */	bne .L_814738C4
/* 814738B4 | A0 E1 03 20 */	lhz r7, 0x320(r1)
/* 814738B8 | 54 E6 07 7E */	clrlwi r6, r7, 29
/* 814738BC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814738C0 | 41 82 00 0C */	beq .L_814738CC
.L_814738C4:
/* 814738C4 | 38 C0 00 01 */	li r6, 0x1
/* 814738C8 | B0 C1 00 90 */	sth r6, 0x90(r1)
.L_814738CC:
/* 814738CC | A0 81 03 1E */	lhz r4, 0x31e(r1)
/* 814738D0 | 54 89 04 6C */	rlwinm r9, r4, 0, 17, 22
/* 814738D4 | 2C 09 02 00 */	cmpwi r9, 0x200
/* 814738D8 | 41 82 00 48 */	beq .L_81473920
/* 814738DC | A0 A1 03 1E */	lhz r5, 0x31e(r1)
/* 814738E0 | 54 A8 BE BE */	extrwi r8, r5, 6, 17
/* 814738E4 | 61 03 00 80 */	ori r3, r8, 0x80
/* 814738E8 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 814738EC | 98 81 00 4C */	stb r4, 0x4c(r1)
/* 814738F0 | A0 E1 02 FE */	lhz r7, 0x2fe(r1)
/* 814738F4 | 54 E6 BE BE */	extrwi r6, r7, 6, 17
/* 814738F8 | 60 C9 00 80 */	ori r9, r6, 0x80
/* 814738FC | 55 23 06 3E */	clrlwi r3, r9, 24
/* 81473900 | 98 61 00 4A */	stb r3, 0x4a(r1)
/* 81473904 | A0 A1 02 FE */	lhz r5, 0x2fe(r1)
/* 81473908 | 54 A4 05 F8 */	rlwinm r4, r5, 0, 23, 28
/* 8147390C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473910 | 41 82 00 34 */	beq .L_81473944
/* 81473914 | 39 40 00 01 */	li r10, 0x1
/* 81473918 | B1 41 00 90 */	sth r10, 0x90(r1)
/* 8147391C | 48 00 00 28 */	b .L_81473944
.L_81473920:
/* 81473920 | A0 61 03 1E */	lhz r3, 0x31e(r1)
/* 81473924 | 54 6C EE BE */	extrwi r12, r3, 6, 23
/* 81473928 | 55 87 06 3E */	clrlwi r7, r12, 24
/* 8147392C | 98 E1 00 4C */	stb r7, 0x4c(r1)
/* 81473930 | A1 01 02 FE */	lhz r8, 0x2fe(r1)
/* 81473934 | 55 06 EE BE */	extrwi r6, r8, 6, 23
/* 81473938 | 60 C5 00 80 */	ori r5, r6, 0x80
/* 8147393C | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 81473940 | 98 61 00 4A */	stb r3, 0x4a(r1)
.L_81473944:
/* 81473944 | A0 81 03 20 */	lhz r4, 0x320(r1)
/* 81473948 | 54 8B 04 6C */	rlwinm r11, r4, 0, 17, 22
/* 8147394C | 2C 0B 02 00 */	cmpwi r11, 0x200
/* 81473950 | 41 82 00 48 */	beq .L_81473998
/* 81473954 | A1 21 03 20 */	lhz r9, 0x320(r1)
/* 81473958 | 55 27 BE BE */	extrwi r7, r9, 6, 17
/* 8147395C | 60 E8 00 80 */	ori r8, r7, 0x80
/* 81473960 | 55 0A 06 3E */	clrlwi r10, r8, 24
/* 81473964 | 99 41 00 4B */	stb r10, 0x4b(r1)
/* 81473968 | A1 01 03 00 */	lhz r8, 0x300(r1)
/* 8147396C | 55 03 BE BE */	extrwi r3, r8, 6, 17
/* 81473970 | 60 64 00 80 */	ori r4, r3, 0x80
/* 81473974 | 54 86 06 3E */	clrlwi r6, r4, 24
/* 81473978 | 98 C1 00 49 */	stb r6, 0x49(r1)
/* 8147397C | A1 21 03 00 */	lhz r9, 0x300(r1)
/* 81473980 | 55 28 05 F8 */	rlwinm r8, r9, 0, 23, 28
/* 81473984 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81473988 | 41 82 00 34 */	beq .L_814739BC
/* 8147398C | 38 A0 00 01 */	li r5, 0x1
/* 81473990 | B0 A1 00 90 */	sth r5, 0x90(r1)
/* 81473994 | 48 00 00 28 */	b .L_814739BC
.L_81473998:
/* 81473998 | A0 81 03 20 */	lhz r4, 0x320(r1)
/* 8147399C | 54 87 EE BE */	extrwi r7, r4, 6, 23
/* 814739A0 | 54 E3 06 3E */	clrlwi r3, r7, 24
/* 814739A4 | 98 61 00 4B */	stb r3, 0x4b(r1)
/* 814739A8 | A0 C1 03 00 */	lhz r6, 0x300(r1)
/* 814739AC | 54 C4 EE BE */	extrwi r4, r6, 6, 23
/* 814739B0 | 60 8A 00 80 */	ori r10, r4, 0x80
/* 814739B4 | 55 45 06 3E */	clrlwi r5, r10, 24
/* 814739B8 | 98 A1 00 49 */	stb r5, 0x49(r1)
.L_814739BC:
/* 814739BC | 38 80 00 00 */	li r4, 0x0
/* 814739C0 | B0 81 00 A2 */	sth r4, 0xa2(r1)
/* 814739C4 | B0 81 00 84 */	sth r4, 0x84(r1)
/* 814739C8 | 48 00 06 20 */	b .L_81473FE8
.L_814739CC:
/* 814739CC | 81 21 00 AC */	lwz r9, 0xac(r1)
/* 814739D0 | 91 21 00 A4 */	stw r9, 0xa4(r1)
/* 814739D4 | 38 E0 00 00 */	li r7, 0x0
/* 814739D8 | 98 E1 00 48 */	stb r7, 0x48(r1)
/* 814739DC | A0 C1 00 8E */	lhz r6, 0x8e(r1)
/* 814739E0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814739E4 | 41 82 01 34 */	beq .L_81473B18
/* 814739E8 | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 814739EC | B0 61 00 84 */	sth r3, 0x84(r1)
/* 814739F0 | A1 01 00 82 */	lhz r8, 0x82(r1)
/* 814739F4 | 80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 814739F8 | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 814739FC | 7C E8 1A 14 */	add r7, r8, r3
/* 81473A00 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 81473A04 | B0 C1 00 82 */	sth r6, 0x82(r1)
/* 81473A08 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 81473A0C | 28 04 00 01 */	cmplwi r4, 0x1
/* 81473A10 | 40 82 00 88 */	bne .L_81473A98
/* 81473A14 | 80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 81473A18 | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 81473A1C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473A20 | 41 82 00 20 */	beq .L_81473A40
/* 81473A24 | 88 61 00 4C */	lbz r3, 0x4c(r1)
/* 81473A28 | 80 E1 00 A4 */	lwz r7, 0xa4(r1)
/* 81473A2C | 89 67 00 01 */	lbz r11, 0x1(r7)
/* 81473A30 | 89 41 00 4A */	lbz r10, 0x4a(r1)
/* 81473A34 | 7D 68 50 38 */	and r8, r11, r10
/* 81473A38 | 7C 03 40 00 */	cmpw r3, r8
/* 81473A3C | 40 82 05 94 */	bne .L_81473FD0
.L_81473A40:
/* 81473A40 | 81 21 00 A4 */	lwz r9, 0xa4(r1)
/* 81473A44 | 89 09 00 02 */	lbz r8, 0x2(r9)
/* 81473A48 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81473A4C | 41 82 00 20 */	beq .L_81473A6C
/* 81473A50 | 88 E1 00 4B */	lbz r7, 0x4b(r1)
/* 81473A54 | 80 C1 00 A4 */	lwz r6, 0xa4(r1)
/* 81473A58 | 88 A6 00 02 */	lbz r5, 0x2(r6)
/* 81473A5C | 89 21 00 49 */	lbz r9, 0x49(r1)
/* 81473A60 | 7C A4 48 38 */	and r4, r5, r9
/* 81473A64 | 7C 07 20 00 */	cmpw r7, r4
/* 81473A68 | 40 82 05 68 */	bne .L_81473FD0
.L_81473A6C:
/* 81473A6C | 81 41 00 A4 */	lwz r10, 0xa4(r1)
/* 81473A70 | 88 6A 00 01 */	lbz r3, 0x1(r10)
/* 81473A74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81473A78 | 41 82 00 14 */	beq .L_81473A8C
/* 81473A7C | 81 01 00 A4 */	lwz r8, 0xa4(r1)
/* 81473A80 | 88 68 00 02 */	lbz r3, 0x2(r8)
/* 81473A84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81473A88 | 40 82 00 90 */	bne .L_81473B18
.L_81473A8C:
/* 81473A8C | 38 A0 00 01 */	li r5, 0x1
/* 81473A90 | 98 A1 00 48 */	stb r5, 0x48(r1)
/* 81473A94 | 48 00 00 84 */	b .L_81473B18
.L_81473A98:
/* 81473A98 | 80 E1 00 A4 */	lwz r7, 0xa4(r1)
/* 81473A9C | 88 87 00 03 */	lbz r4, 0x3(r7)
/* 81473AA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473AA4 | 41 82 00 20 */	beq .L_81473AC4
/* 81473AA8 | 88 C1 00 4C */	lbz r6, 0x4c(r1)
/* 81473AAC | 80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 81473AB0 | 88 85 00 03 */	lbz r4, 0x3(r5)
/* 81473AB4 | 89 21 00 4A */	lbz r9, 0x4a(r1)
/* 81473AB8 | 7C 88 48 38 */	and r8, r4, r9
/* 81473ABC | 7C 06 40 00 */	cmpw r6, r8
/* 81473AC0 | 40 82 05 10 */	bne .L_81473FD0
.L_81473AC4:
/* 81473AC4 | 80 81 00 A4 */	lwz r4, 0xa4(r1)
/* 81473AC8 | 88 E4 00 04 */	lbz r7, 0x4(r4)
/* 81473ACC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81473AD0 | 41 82 00 20 */	beq .L_81473AF0
/* 81473AD4 | 88 61 00 4B */	lbz r3, 0x4b(r1)
/* 81473AD8 | 80 C1 00 A4 */	lwz r6, 0xa4(r1)
/* 81473ADC | 88 A6 00 04 */	lbz r5, 0x4(r6)
/* 81473AE0 | 88 81 00 49 */	lbz r4, 0x49(r1)
/* 81473AE4 | 7C A8 20 38 */	and r8, r5, r4
/* 81473AE8 | 7C 03 40 00 */	cmpw r3, r8
/* 81473AEC | 40 82 04 E4 */	bne .L_81473FD0
.L_81473AF0:
/* 81473AF0 | 80 61 00 A4 */	lwz r3, 0xa4(r1)
/* 81473AF4 | 88 E3 00 03 */	lbz r7, 0x3(r3)
/* 81473AF8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81473AFC | 41 82 00 14 */	beq .L_81473B10
/* 81473B00 | 80 C1 00 A4 */	lwz r6, 0xa4(r1)
/* 81473B04 | 88 A6 00 04 */	lbz r5, 0x4(r6)
/* 81473B08 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81473B0C | 40 82 00 0C */	bne .L_81473B18
.L_81473B10:
/* 81473B10 | 38 80 00 01 */	li r4, 0x1
/* 81473B14 | 98 81 00 48 */	stb r4, 0x48(r1)
.L_81473B18:
/* 81473B18 | 38 60 00 01 */	li r3, 0x1
/* 81473B1C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81473B20 | 38 80 00 17 */	li r4, 0x17
/* 81473B24 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81473B28 | 7F C5 F3 78 */	mr r5, r30
/* 81473B2C | 4B FE B8 85 */	bl Zi8GetTableAddress
/* 81473B30 | 90 61 00 B0 */	stw r3, 0xb0(r1)
/* 81473B34 | 81 21 00 B0 */	lwz r9, 0xb0(r1)
/* 81473B38 | A1 01 00 84 */	lhz r8, 0x84(r1)
/* 81473B3C | 55 07 10 3A */	slwi r7, r8, 2
/* 81473B40 | 7C C9 3A 14 */	add r6, r9, r7
/* 81473B44 | 90 C1 00 B0 */	stw r6, 0xb0(r1)
/* 81473B48 | 81 01 00 B0 */	lwz r8, 0xb0(r1)
/* 81473B4C | 91 01 00 A8 */	stw r8, 0xa8(r1)
/* 81473B50 | A0 E1 00 84 */	lhz r7, 0x84(r1)
/* 81473B54 | 90 E1 01 14 */	stw r7, 0x114(r1)
/* 81473B58 | 48 00 04 68 */	b .L_81473FC0
.L_81473B5C:
/* 81473B5C | 80 C1 00 B0 */	lwz r6, 0xb0(r1)
/* 81473B60 | 90 C1 00 A8 */	stw r6, 0xa8(r1)
/* 81473B64 | 80 A1 00 A8 */	lwz r5, 0xa8(r1)
/* 81473B68 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 81473B6C | 54 83 06 30 */	rlwinm r3, r4, 0, 24, 24
/* 81473B70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81473B74 | 41 82 00 14 */	beq .L_81473B88
/* 81473B78 | 89 81 00 6E */	lbz r12, 0x6e(r1)
/* 81473B7C | 55 8B 06 F6 */	rlwinm r11, r12, 0, 27, 27
/* 81473B80 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81473B84 | 40 82 00 28 */	bne .L_81473BAC
.L_81473B88:
/* 81473B88 | 80 E1 00 A8 */	lwz r7, 0xa8(r1)
/* 81473B8C | 89 47 00 02 */	lbz r10, 0x2(r7)
/* 81473B90 | 55 49 06 30 */	rlwinm r9, r10, 0, 24, 24
/* 81473B94 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81473B98 | 41 82 04 10 */	beq .L_81473FA8
/* 81473B9C | 89 01 00 6E */	lbz r8, 0x6e(r1)
/* 81473BA0 | 55 03 06 74 */	rlwinm r3, r8, 0, 25, 26
/* 81473BA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81473BA8 | 41 82 04 00 */	beq .L_81473FA8
.L_81473BAC:
/* 81473BAC | 80 81 00 A8 */	lwz r4, 0xa8(r1)
/* 81473BB0 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 81473BB4 | 54 69 06 7E */	clrlwi r9, r3, 25
/* 81473BB8 | 55 28 04 3E */	clrlwi r8, r9, 16
/* 81473BBC | 55 05 40 2E */	slwi r5, r8, 8
/* 81473BC0 | 80 E1 00 A8 */	lwz r7, 0xa8(r1)
/* 81473BC4 | 88 C7 00 01 */	lbz r6, 0x1(r7)
/* 81473BC8 | 7C A5 33 78 */	or r5, r5, r6
/* 81473BCC | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 81473BD0 | B0 81 00 94 */	sth r4, 0x94(r1)
/* 81473BD4 | 81 81 00 A8 */	lwz r12, 0xa8(r1)
/* 81473BD8 | 88 8C 00 02 */	lbz r4, 0x2(r12)
/* 81473BDC | 54 8B 06 7E */	clrlwi r11, r4, 25
/* 81473BE0 | 55 6A 04 3E */	clrlwi r10, r11, 16
/* 81473BE4 | 55 43 40 2E */	slwi r3, r10, 8
/* 81473BE8 | 80 81 00 A8 */	lwz r4, 0xa8(r1)
/* 81473BEC | 89 24 00 03 */	lbz r9, 0x3(r4)
/* 81473BF0 | 7C 65 4B 78 */	or r5, r3, r9
/* 81473BF4 | 54 A7 04 3E */	clrlwi r7, r5, 16
/* 81473BF8 | B0 E1 00 92 */	sth r7, 0x92(r1)
/* 81473BFC | 81 01 00 E4 */	lwz r8, 0xe4(r1)
/* 81473C00 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81473C04 | 41 82 00 58 */	beq .L_81473C5C
/* 81473C08 | 80 C1 00 E4 */	lwz r6, 0xe4(r1)
/* 81473C0C | A0 81 00 94 */	lhz r4, 0x94(r1)
/* 81473C10 | 7C E6 22 14 */	add r7, r6, r4
/* 81473C14 | 90 E1 00 C4 */	stw r7, 0xc4(r1)
/* 81473C18 | 80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 81473C1C | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 81473C20 | 8B 61 00 6D */	lbz r27, 0x6d(r1)
/* 81473C24 | 7C A4 D8 38 */	and r4, r5, r27
/* 81473C28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473C2C | 41 82 03 7C */	beq .L_81473FA8
/* 81473C30 | 80 C1 00 E4 */	lwz r6, 0xe4(r1)
/* 81473C34 | A0 61 00 92 */	lhz r3, 0x92(r1)
/* 81473C38 | 7D 06 1A 14 */	add r8, r6, r3
/* 81473C3C | 91 01 00 C4 */	stw r8, 0xc4(r1)
/* 81473C40 | 80 A1 00 C4 */	lwz r5, 0xc4(r1)
/* 81473C44 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 81473C48 | 88 E1 00 6D */	lbz r7, 0x6d(r1)
/* 81473C4C | 7C 86 38 38 */	and r6, r4, r7
/* 81473C50 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81473C54 | 41 82 03 54 */	beq .L_81473FA8
/* 81473C58 | 48 00 00 5C */	b .L_81473CB4
.L_81473C5C:
/* 81473C5C | 80 61 00 EC */	lwz r3, 0xec(r1)
/* 81473C60 | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 81473C64 | 1F 85 00 0C */	mulli r28, r5, 0xc
/* 81473C68 | 7D 83 E2 14 */	add r12, r3, r28
/* 81473C6C | 91 81 01 00 */	stw r12, 0x100(r1)
/* 81473C70 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81473C74 | 89 64 00 00 */	lbz r11, 0x0(r4)
/* 81473C78 | 89 41 00 6E */	lbz r10, 0x6e(r1)
/* 81473C7C | 7D 69 50 38 */	and r9, r11, r10
/* 81473C80 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81473C84 | 41 82 03 24 */	beq .L_81473FA8
/* 81473C88 | 80 61 00 EC */	lwz r3, 0xec(r1)
/* 81473C8C | A1 01 00 92 */	lhz r8, 0x92(r1)
/* 81473C90 | 1C 88 00 0C */	mulli r4, r8, 0xc
/* 81473C94 | 7C A3 22 14 */	add r5, r3, r4
/* 81473C98 | 90 A1 01 00 */	stw r5, 0x100(r1)
/* 81473C9C | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 81473CA0 | 88 C7 00 00 */	lbz r6, 0x0(r7)
/* 81473CA4 | 88 81 00 6E */	lbz r4, 0x6e(r1)
/* 81473CA8 | 7C C5 20 38 */	and r5, r6, r4
/* 81473CAC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81473CB0 | 41 82 02 F8 */	beq .L_81473FA8
.L_81473CB4:
/* 81473CB4 | A0 61 00 90 */	lhz r3, 0x90(r1)
/* 81473CB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81473CBC | 40 82 00 10 */	bne .L_81473CCC
/* 81473CC0 | 89 01 00 48 */	lbz r8, 0x48(r1)
/* 81473CC4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81473CC8 | 41 82 01 7C */	beq .L_81473E44
.L_81473CCC:
/* 81473CCC | 80 81 00 EC */	lwz r4, 0xec(r1)
/* 81473CD0 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 81473CD4 | 1D 23 00 0C */	mulli r9, r3, 0xc
/* 81473CD8 | 7C 84 4A 14 */	add r4, r4, r9
/* 81473CDC | 90 81 01 00 */	stw r4, 0x100(r1)
/* 81473CE0 | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 81473CE4 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81473CE8 | 48 00 B1 E1 */	bl Zi8GetPCode
/* 81473CEC | 7C 66 1B 78 */	mr r6, r3
/* 81473CF0 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 81473CF4 | A0 E1 02 FE */	lhz r7, 0x2fe(r1)
/* 81473CF8 | 7C E4 28 38 */	and r4, r7, r5
/* 81473CFC | A0 61 03 1E */	lhz r3, 0x31e(r1)
/* 81473D00 | 7C C3 20 50 */	subf r6, r3, r4
/* 81473D04 | 7C C8 00 34 */	cntlzw r8, r6
/* 81473D08 | 55 05 D9 7E */	srwi r5, r8, 5
/* 81473D0C | 54 A7 06 3E */	clrlwi r7, r5, 24
/* 81473D10 | 98 E1 00 63 */	stb r7, 0x63(r1)
/* 81473D14 | 88 81 00 63 */	lbz r4, 0x63(r1)
/* 81473D18 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473D1C | 40 82 00 60 */	bne .L_81473D7C
/* 81473D20 | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 81473D24 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 81473D28 | 54 A3 06 30 */	rlwinm r3, r5, 0, 24, 24
/* 81473D2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81473D30 | 41 82 00 4C */	beq .L_81473D7C
/* 81473D34 | 89 21 00 55 */	lbz r9, 0x55(r1)
/* 81473D38 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81473D3C | 40 82 00 40 */	bne .L_81473D7C
/* 81473D40 | 80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 81473D44 | A0 81 00 76 */	lhz r4, 0x76(r1)
/* 81473D48 | 80 A1 00 F0 */	lwz r5, 0xf0(r1)
/* 81473D4C | A0 C1 00 94 */	lhz r6, 0x94(r1)
/* 81473D50 | A0 E1 02 FE */	lhz r7, 0x2fe(r1)
/* 81473D54 | A1 01 03 1E */	lhz r8, 0x31e(r1)
/* 81473D58 | 89 21 00 6E */	lbz r9, 0x6e(r1)
/* 81473D5C | 7F CA F3 78 */	mr r10, r30
/* 81473D60 | 4B FF 69 0D */	bl Zi8MatchAltSound
/* 81473D64 | 7C 68 1B 78 */	mr r8, r3
/* 81473D68 | 55 07 04 3E */	clrlwi r7, r8, 16
/* 81473D6C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81473D70 | 41 82 00 0C */	beq .L_81473D7C
/* 81473D74 | 38 80 00 01 */	li r4, 0x1
/* 81473D78 | 98 81 00 63 */	stb r4, 0x63(r1)
.L_81473D7C:
/* 81473D7C | 88 C1 00 63 */	lbz r6, 0x63(r1)
/* 81473D80 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81473D84 | 41 82 02 24 */	beq .L_81473FA8
/* 81473D88 | 80 A1 00 EC */	lwz r5, 0xec(r1)
/* 81473D8C | A0 81 00 92 */	lhz r4, 0x92(r1)
/* 81473D90 | 1C 64 00 0C */	mulli r3, r4, 0xc
/* 81473D94 | 7D 45 1A 14 */	add r10, r5, r3
/* 81473D98 | 91 41 01 00 */	stw r10, 0x100(r1)
/* 81473D9C | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 81473DA0 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81473DA4 | 48 00 B1 25 */	bl Zi8GetPCode
/* 81473DA8 | 7C 69 1B 78 */	mr r9, r3
/* 81473DAC | 55 26 04 3E */	clrlwi r6, r9, 16
/* 81473DB0 | A0 A1 03 00 */	lhz r5, 0x300(r1)
/* 81473DB4 | 7C A4 30 38 */	and r4, r5, r6
/* 81473DB8 | A1 01 03 20 */	lhz r8, 0x320(r1)
/* 81473DBC | 7C E8 20 50 */	subf r7, r8, r4
/* 81473DC0 | 7C E6 00 34 */	cntlzw r6, r7
/* 81473DC4 | 54 C5 D9 7E */	srwi r5, r6, 5
/* 81473DC8 | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 81473DCC | 98 61 00 63 */	stb r3, 0x63(r1)
/* 81473DD0 | 88 81 00 63 */	lbz r4, 0x63(r1)
/* 81473DD4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473DD8 | 40 82 00 60 */	bne .L_81473E38
/* 81473DDC | 81 61 01 00 */	lwz r11, 0x100(r1)
/* 81473DE0 | 88 6B 00 00 */	lbz r3, 0x0(r11)
/* 81473DE4 | 54 67 06 30 */	rlwinm r7, r3, 0, 24, 24
/* 81473DE8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81473DEC | 41 82 00 4C */	beq .L_81473E38
/* 81473DF0 | 89 41 00 55 */	lbz r10, 0x55(r1)
/* 81473DF4 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81473DF8 | 40 82 00 40 */	bne .L_81473E38
/* 81473DFC | 80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 81473E00 | A0 81 00 76 */	lhz r4, 0x76(r1)
/* 81473E04 | 80 A1 00 F0 */	lwz r5, 0xf0(r1)
/* 81473E08 | A0 C1 00 92 */	lhz r6, 0x92(r1)
/* 81473E0C | A0 E1 03 00 */	lhz r7, 0x300(r1)
/* 81473E10 | A1 01 03 20 */	lhz r8, 0x320(r1)
/* 81473E14 | 89 21 00 6E */	lbz r9, 0x6e(r1)
/* 81473E18 | 7F CA F3 78 */	mr r10, r30
/* 81473E1C | 4B FF 68 51 */	bl Zi8MatchAltSound
/* 81473E20 | 7C 66 1B 78 */	mr r6, r3
/* 81473E24 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 81473E28 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81473E2C | 41 82 00 0C */	beq .L_81473E38
/* 81473E30 | 38 80 00 01 */	li r4, 0x1
/* 81473E34 | 98 81 00 63 */	stb r4, 0x63(r1)
.L_81473E38:
/* 81473E38 | 89 21 00 63 */	lbz r9, 0x63(r1)
/* 81473E3C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81473E40 | 41 82 01 68 */	beq .L_81473FA8
.L_81473E44:
/* 81473E44 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 81473E48 | 7F C4 F3 78 */	mr r4, r30
/* 81473E4C | 48 00 B5 7D */	bl Zi8Ord2Uni
/* 81473E50 | 7C 68 1B 78 */	mr r8, r3
/* 81473E54 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 81473E58 | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 81473E5C | 54 C4 08 3C */	slwi r4, r6, 1
/* 81473E60 | 7D 03 23 2E */	sthx r8, r3, r4
/* 81473E64 | A0 61 00 92 */	lhz r3, 0x92(r1)
/* 81473E68 | 7F C4 F3 78 */	mr r4, r30
/* 81473E6C | 48 00 B5 5D */	bl Zi8Ord2Uni
/* 81473E70 | 7C 65 1B 78 */	mr r5, r3
/* 81473E74 | 80 E1 00 BC */	lwz r7, 0xbc(r1)
/* 81473E78 | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 81473E7C | 38 64 00 01 */	addi r3, r4, 0x1
/* 81473E80 | 54 6C 08 3C */	slwi r12, r3, 1
/* 81473E84 | 7C A7 63 2E */	sthx r5, r7, r12
/* 81473E88 | 38 C0 00 20 */	li r6, 0x20
/* 81473E8C | 80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 81473E90 | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 81473E94 | 39 04 00 02 */	addi r8, r4, 0x2
/* 81473E98 | 55 0B 08 3C */	slwi r11, r8, 1
/* 81473E9C | 7C C5 5B 2E */	sthx r6, r5, r11
/* 81473EA0 | 80 61 00 BC */	lwz r3, 0xbc(r1)
/* 81473EA4 | 80 E1 01 04 */	lwz r7, 0x104(r1)
/* 81473EA8 | 54 EA 08 3C */	slwi r10, r7, 1
/* 81473EAC | 7C 63 52 14 */	add r3, r3, r10
/* 81473EB0 | 38 80 00 02 */	li r4, 0x2
/* 81473EB4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81473EB8 | 7F C5 F3 78 */	mr r5, r30
/* 81473EBC | 48 00 7F 35 */	bl Zi8IsDupWordW
/* 81473EC0 | 7C 69 1B 78 */	mr r9, r3
/* 81473EC4 | 55 26 06 3E */	clrlwi r6, r9, 24
/* 81473EC8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81473ECC | 40 82 00 DC */	bne .L_81473FA8
/* 81473ED0 | A0 81 00 72 */	lhz r4, 0x72(r1)
/* 81473ED4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81473ED8 | 41 82 00 14 */	beq .L_81473EEC
/* 81473EDC | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 81473EE0 | 38 65 FF FF */	subi r3, r5, 0x1
/* 81473EE4 | B0 61 00 72 */	sth r3, 0x72(r1)
/* 81473EE8 | 48 00 00 C0 */	b .L_81473FA8
.L_81473EEC:
/* 81473EEC | 81 01 00 CC */	lwz r8, 0xcc(r1)
/* 81473EF0 | 38 E8 00 01 */	addi r7, r8, 0x1
/* 81473EF4 | 90 E1 00 CC */	stw r7, 0xcc(r1)
/* 81473EF8 | 88 DD 00 00 */	lbz r6, 0x0(r29)
/* 81473EFC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81473F00 | 40 82 00 98 */	bne .L_81473F98
/* 81473F04 | A0 C1 00 94 */	lhz r6, 0x94(r1)
/* 81473F08 | 88 9E 01 20 */	lbz r4, 0x120(r30)
/* 81473F0C | 54 89 08 3C */	slwi r9, r4, 1
/* 81473F10 | 7C BE 4A 14 */	add r5, r30, r9
/* 81473F14 | B0 C5 00 A0 */	sth r6, 0xa0(r5)
/* 81473F18 | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 81473F1C | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 81473F20 | 54 64 08 3C */	slwi r4, r3, 1
/* 81473F24 | 7C E8 22 2E */	lhzx r7, r8, r4
/* 81473F28 | 88 DE 01 20 */	lbz r6, 0x120(r30)
/* 81473F2C | 54 C9 08 3C */	slwi r9, r6, 1
/* 81473F30 | 7C 7E 4A 14 */	add r3, r30, r9
/* 81473F34 | B0 E3 00 20 */	sth r7, 0x20(r3)
/* 81473F38 | 88 BE 01 20 */	lbz r5, 0x120(r30)
/* 81473F3C | 38 85 00 01 */	addi r4, r5, 0x1
/* 81473F40 | 98 9E 01 20 */	stb r4, 0x120(r30)
/* 81473F44 | 54 8A 06 3E */	clrlwi r10, r4, 24
/* 81473F48 | 28 0A 00 40 */	cmplwi r10, 0x40
/* 81473F4C | 41 80 00 0C */	blt .L_81473F58
/* 81473F50 | 38 60 00 00 */	li r3, 0x0
/* 81473F54 | 98 7E 01 20 */	stb r3, 0x120(r30)
.L_81473F58:
/* 81473F58 | 81 81 01 04 */	lwz r12, 0x104(r1)
/* 81473F5C | 38 EC 00 03 */	addi r7, r12, 0x3
/* 81473F60 | 90 E1 01 04 */	stw r7, 0x104(r1)
/* 81473F64 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 81473F68 | 38 C8 00 01 */	addi r6, r8, 0x1
/* 81473F6C | 98 C1 00 67 */	stb r6, 0x67(r1)
/* 81473F70 | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 81473F74 | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 81473F78 | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 81473F7C | 7C 03 20 40 */	cmplw r3, r4
/* 81473F80 | 40 80 07 C8 */	bge .L_81474748
/* 81473F84 | 81 61 01 04 */	lwz r11, 0x104(r1)
/* 81473F88 | 81 21 00 C8 */	lwz r9, 0xc8(r1)
/* 81473F8C | 7C 0B 48 00 */	cmpw r11, r9
/* 81473F90 | 40 81 00 18 */	ble .L_81473FA8
/* 81473F94 | 48 00 07 B4 */	b .L_81474748
.L_81473F98:
/* 81473F98 | 80 E1 00 CC */	lwz r7, 0xcc(r1)
/* 81473F9C | 81 1D 00 0C */	lwz r8, 0xc(r29)
/* 81473FA0 | 7C 07 40 00 */	cmpw r7, r8
/* 81473FA4 | 40 80 07 A4 */	bge .L_81474748
.L_81473FA8:
/* 81473FA8 | 81 41 01 14 */	lwz r10, 0x114(r1)
/* 81473FAC | 39 0A 00 01 */	addi r8, r10, 0x1
/* 81473FB0 | 91 01 01 14 */	stw r8, 0x114(r1)
/* 81473FB4 | 80 61 00 B0 */	lwz r3, 0xb0(r1)
/* 81473FB8 | 38 83 00 04 */	addi r4, r3, 0x4
/* 81473FBC | 90 81 00 B0 */	stw r4, 0xb0(r1)
.L_81473FC0:
/* 81473FC0 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 81473FC4 | A1 21 00 82 */	lhz r9, 0x82(r1)
/* 81473FC8 | 7C 06 48 00 */	cmpw r6, r9
/* 81473FCC | 41 80 FB 90 */	blt .L_81473B5C
.L_81473FD0:
/* 81473FD0 | A1 01 00 A2 */	lhz r8, 0xa2(r1)
/* 81473FD4 | 38 A8 00 01 */	addi r5, r8, 0x1
/* 81473FD8 | B0 A1 00 A2 */	sth r5, 0xa2(r1)
/* 81473FDC | 80 81 00 AC */	lwz r4, 0xac(r1)
/* 81473FE0 | 38 E4 00 05 */	addi r7, r4, 0x5
/* 81473FE4 | 90 E1 00 AC */	stw r7, 0xac(r1)
.L_81473FE8:
/* 81473FE8 | A0 61 00 A2 */	lhz r3, 0xa2(r1)
/* 81473FEC | 54 66 04 3E */	clrlwi r6, r3, 16
/* 81473FF0 | A0 81 00 8E */	lhz r4, 0x8e(r1)
/* 81473FF4 | 7C 06 20 40 */	cmplw r6, r4
/* 81473FF8 | 40 81 F9 D4 */	ble .L_814739CC
.L_81473FFC:
/* 81473FFC | 89 41 00 5F */	lbz r10, 0x5f(r1)
/* 81474000 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81474004 | 41 82 00 E0 */	beq .L_814740E4
/* 81474008 | 88 A1 00 53 */	lbz r5, 0x53(r1)
/* 8147400C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81474010 | 40 82 00 D4 */	bne .L_814740E4
/* 81474014 | A0 81 00 80 */	lhz r4, 0x80(r1)
/* 81474018 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8147401C | A1 21 00 7E */	lhz r9, 0x7e(r1)
/* 81474020 | 91 21 00 0C */	stw r9, 0xc(r1)
/* 81474024 | 88 E1 00 6E */	lbz r7, 0x6e(r1)
/* 81474028 | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 8147402C | A0 C1 00 7A */	lhz r6, 0x7a(r1)
/* 81474030 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 81474034 | 38 61 00 72 */	addi r3, r1, 0x72
/* 81474038 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8147403C | 39 01 00 CC */	addi r8, r1, 0xcc
/* 81474040 | 91 01 00 1C */	stw r8, 0x1c(r1)
/* 81474044 | 38 A1 00 67 */	addi r5, r1, 0x67
/* 81474048 | 90 A1 00 20 */	stw r5, 0x20(r1)
/* 8147404C | 38 61 01 04 */	addi r3, r1, 0x104
/* 81474050 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 81474054 | 88 E1 00 5D */	lbz r7, 0x5d(r1)
/* 81474058 | 90 E1 00 28 */	stw r7, 0x28(r1)
/* 8147405C | 88 C1 00 5E */	lbz r6, 0x5e(r1)
/* 81474060 | 90 C1 00 2C */	stw r6, 0x2c(r1)
/* 81474064 | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 81474068 | 54 85 06 3E */	clrlwi r5, r4, 24
/* 8147406C | 38 80 00 01 */	li r4, 0x1
/* 81474070 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81474074 | 7C E3 28 50 */	subf r7, r3, r5
/* 81474078 | 7C EB 00 34 */	cntlzw r11, r7
/* 8147407C | 55 6A D9 7E */	srwi r10, r11, 5
/* 81474080 | 55 48 06 3E */	clrlwi r8, r10, 24
/* 81474084 | 91 01 00 30 */	stw r8, 0x30(r1)
/* 81474088 | 81 21 00 E4 */	lwz r9, 0xe4(r1)
/* 8147408C | 91 21 00 34 */	stw r9, 0x34(r1)
/* 81474090 | 81 01 00 C4 */	lwz r8, 0xc4(r1)
/* 81474094 | 91 01 00 38 */	stw r8, 0x38(r1)
/* 81474098 | 88 E1 00 6D */	lbz r7, 0x6d(r1)
/* 8147409C | 90 E1 00 3C */	stw r7, 0x3c(r1)
/* 814740A0 | 80 C1 00 BC */	lwz r6, 0xbc(r1)
/* 814740A4 | 90 C1 00 40 */	stw r6, 0x40(r1)
/* 814740A8 | 93 C1 00 44 */	stw r30, 0x44(r1)
/* 814740AC | 7F E3 FB 78 */	mr r3, r31
/* 814740B0 | 80 81 00 EC */	lwz r4, 0xec(r1)
/* 814740B4 | 80 A1 00 E8 */	lwz r5, 0xe8(r1)
/* 814740B8 | A0 C1 00 76 */	lhz r6, 0x76(r1)
/* 814740BC | 80 E1 00 D4 */	lwz r7, 0xd4(r1)
/* 814740C0 | 7F A8 EB 78 */	mr r8, r29
/* 814740C4 | A1 21 02 FE */	lhz r9, 0x2fe(r1)
/* 814740C8 | A1 41 03 1E */	lhz r10, 0x31e(r1)
/* 814740CC | 48 00 15 15 */	bl Zi8_814755E0
/* 814740D0 | 7C 65 1B 78 */	mr r5, r3
/* 814740D4 | 54 A9 06 3E */	clrlwi r9, r5, 24
/* 814740D8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814740DC | 41 82 06 6C */	beq .L_81474748
/* 814740E0 | 48 00 05 C8 */	b .L_814746A8
.L_814740E4:
/* 814740E4 | 88 81 00 59 */	lbz r4, 0x59(r1)
/* 814740E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814740EC | 41 82 00 3C */	beq .L_81474128
/* 814740F0 | 89 41 02 FD */	lbz r10, 0x2fd(r1)
/* 814740F4 | 28 0A 00 01 */	cmplwi r10, 0x1
/* 814740F8 | 40 81 00 30 */	ble .L_81474128
/* 814740FC | 88 61 00 5A */	lbz r3, 0x5a(r1)
/* 81474100 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81474104 | 41 82 00 10 */	beq .L_81474114
/* 81474108 | 89 01 02 FD */	lbz r8, 0x2fd(r1)
/* 8147410C | 28 08 00 02 */	cmplwi r8, 0x2
/* 81474110 | 41 82 00 18 */	beq .L_81474128
.L_81474114:
/* 81474114 | 38 60 00 02 */	li r3, 0x2
/* 81474118 | 98 61 00 59 */	stb r3, 0x59(r1)
/* 8147411C | 48 00 08 5C */	b .L_81474978
.L_81474120:
/* 81474120 | 38 A0 00 01 */	li r5, 0x1
/* 81474124 | 98 A1 00 59 */	stb r5, 0x59(r1)
.L_81474128:
/* 81474128 | 80 E1 00 EC */	lwz r7, 0xec(r1)
/* 8147412C | 90 E1 01 00 */	stw r7, 0x100(r1)
/* 81474130 | A0 81 00 7A */	lhz r4, 0x7a(r1)
/* 81474134 | B0 81 00 7C */	sth r4, 0x7c(r1)
/* 81474138 | 38 C0 00 00 */	li r6, 0x0
/* 8147413C | 90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 81474140 | 48 00 04 B4 */	b .L_814745F4
.L_81474144:
/* 81474144 | 38 A1 00 7C */	addi r5, r1, 0x7c
/* 81474148 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8147414C | 38 81 01 00 */	addi r4, r1, 0x100
/* 81474150 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81474154 | 39 21 00 D8 */	addi r9, r1, 0xd8
/* 81474158 | 91 21 00 10 */	stw r9, 0x10(r1)
/* 8147415C | 89 01 00 5D */	lbz r8, 0x5d(r1)
/* 81474160 | 91 01 00 14 */	stw r8, 0x14(r1)
/* 81474164 | 88 81 00 5A */	lbz r4, 0x5a(r1)
/* 81474168 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 8147416C | 88 E1 02 FD */	lbz r7, 0x2fd(r1)
/* 81474170 | 90 E1 00 1C */	stw r7, 0x1c(r1)
/* 81474174 | A0 61 00 80 */	lhz r3, 0x80(r1)
/* 81474178 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 8147417C | A0 C1 00 7E */	lhz r6, 0x7e(r1)
/* 81474180 | 90 C1 00 24 */	stw r6, 0x24(r1)
/* 81474184 | 88 A1 00 6E */	lbz r5, 0x6e(r1)
/* 81474188 | 90 A1 00 28 */	stw r5, 0x28(r1)
/* 8147418C | 88 81 00 55 */	lbz r4, 0x55(r1)
/* 81474190 | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81474194 | A1 01 00 7A */	lhz r8, 0x7a(r1)
/* 81474198 | 91 01 00 30 */	stw r8, 0x30(r1)
/* 8147419C | 38 61 00 98 */	addi r3, r1, 0x98
/* 814741A0 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 814741A4 | 88 E1 00 59 */	lbz r7, 0x59(r1)
/* 814741A8 | 90 E1 00 38 */	stw r7, 0x38(r1)
/* 814741AC | 93 C1 00 3C */	stw r30, 0x3c(r1)
/* 814741B0 | 80 61 00 F0 */	lwz r3, 0xf0(r1)
/* 814741B4 | 80 81 00 EC */	lwz r4, 0xec(r1)
/* 814741B8 | 80 A1 00 E8 */	lwz r5, 0xe8(r1)
/* 814741BC | A0 C1 00 76 */	lhz r6, 0x76(r1)
/* 814741C0 | 80 E1 00 D4 */	lwz r7, 0xd4(r1)
/* 814741C4 | 81 01 01 00 */	lwz r8, 0x100(r1)
/* 814741C8 | 39 21 02 FE */	addi r9, r1, 0x2fe
/* 814741CC | 39 41 03 1E */	addi r10, r1, 0x31e
/* 814741D0 | 48 00 96 6D */	bl Zi8MatchPhonetic
/* 814741D4 | 7C 66 1B 78 */	mr r6, r3
/* 814741D8 | 54 C5 06 3E */	clrlwi r5, r6, 24
/* 814741DC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814741E0 | 41 82 04 34 */	beq .L_81474614
/* 814741E4 | A0 81 00 7C */	lhz r4, 0x7c(r1)
/* 814741E8 | A0 61 00 7A */	lhz r3, 0x7a(r1)
/* 814741EC | 7D 24 18 50 */	subf r9, r4, r3
/* 814741F0 | 39 09 FF FF */	subi r8, r9, 0x1
/* 814741F4 | 55 07 04 3E */	clrlwi r7, r8, 16
/* 814741F8 | B0 E1 00 A2 */	sth r7, 0xa2(r1)
/* 814741FC | A1 01 00 A2 */	lhz r8, 0xa2(r1)
/* 81474200 | 88 FE 01 20 */	lbz r7, 0x120(r30)
/* 81474204 | 54 E6 08 3C */	slwi r6, r7, 1
/* 81474208 | 7C BE 32 14 */	add r5, r30, r6
/* 8147420C | B1 05 00 A0 */	sth r8, 0xa0(r5)
/* 81474210 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 81474214 | 88 7E 01 20 */	lbz r3, 0x120(r30)
/* 81474218 | 54 6C 08 3C */	slwi r12, r3, 1
/* 8147421C | 7D 7E 62 14 */	add r11, r30, r12
/* 81474220 | B0 8B 00 20 */	sth r4, 0x20(r11)
/* 81474224 | 88 E1 00 5D */	lbz r7, 0x5d(r1)
/* 81474228 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8147422C | 41 82 00 10 */	beq .L_8147423C
/* 81474230 | 89 41 02 FD */	lbz r10, 0x2fd(r1)
/* 81474234 | 28 0A 00 01 */	cmplwi r10, 0x1
/* 81474238 | 41 81 00 14 */	bgt .L_8147424C
.L_8147423C:
/* 8147423C | 39 20 00 00 */	li r9, 0x0
/* 81474240 | 91 21 00 D8 */	stw r9, 0xd8(r1)
/* 81474244 | 91 21 00 D0 */	stw r9, 0xd0(r1)
/* 81474248 | 48 00 00 24 */	b .L_8147426C
.L_8147424C:
/* 8147424C | 81 01 00 D8 */	lwz r8, 0xd8(r1)
/* 81474250 | 91 01 00 D0 */	stw r8, 0xd0(r1)
/* 81474254 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81474258 | 38 83 FF F4 */	subi r4, r3, 0xc
/* 8147425C | 90 81 01 00 */	stw r4, 0x100(r1)
/* 81474260 | A0 61 00 7C */	lhz r3, 0x7c(r1)
/* 81474264 | 39 23 00 01 */	addi r9, r3, 0x1
/* 81474268 | B1 21 00 7C */	sth r9, 0x7c(r1)
.L_8147426C:
/* 8147426C | 81 01 00 E4 */	lwz r8, 0xe4(r1)
/* 81474270 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81474274 | 41 82 00 2C */	beq .L_814742A0
/* 81474278 | 80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 8147427C | A0 E1 00 A2 */	lhz r7, 0xa2(r1)
/* 81474280 | 7C C5 3A 14 */	add r6, r5, r7
/* 81474284 | 90 C1 00 C4 */	stw r6, 0xc4(r1)
/* 81474288 | 80 A1 00 C4 */	lwz r5, 0xc4(r1)
/* 8147428C | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 81474290 | 89 81 00 6D */	lbz r12, 0x6d(r1)
/* 81474294 | 7C 84 60 38 */	and r4, r4, r12
/* 81474298 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147429C | 41 82 03 4C */	beq .L_814745E8
.L_814742A0:
/* 814742A0 | 81 61 00 E4 */	lwz r11, 0xe4(r1)
/* 814742A4 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814742A8 | 41 82 00 B8 */	beq .L_81474360
/* 814742AC | 81 41 00 D0 */	lwz r10, 0xd0(r1)
/* 814742B0 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814742B4 | 41 82 00 AC */	beq .L_81474360
/* 814742B8 | 38 60 00 00 */	li r3, 0x0
/* 814742BC | 90 61 01 14 */	stw r3, 0x114(r1)
.L_814742C0:
/* 814742C0 | 80 81 00 D0 */	lwz r4, 0xd0(r1)
/* 814742C4 | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 814742C8 | 55 25 08 3C */	slwi r5, r9, 1
/* 814742CC | 7C E5 22 14 */	add r7, r5, r4
/* 814742D0 | 89 07 00 01 */	lbz r8, 0x1(r7)
/* 814742D4 | 55 06 04 3E */	clrlwi r6, r8, 16
/* 814742D8 | 54 C4 40 2E */	slwi r4, r6, 8
/* 814742DC | 80 E1 00 D0 */	lwz r7, 0xd0(r1)
/* 814742E0 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 814742E4 | 54 65 08 3C */	slwi r5, r3, 1
/* 814742E8 | 7F 67 28 AE */	lbzx r27, r7, r5
/* 814742EC | 7C 84 DB 78 */	or r4, r4, r27
/* 814742F0 | 54 86 04 3E */	clrlwi r6, r4, 16
/* 814742F4 | B0 C1 00 90 */	sth r6, 0x90(r1)
/* 814742F8 | 80 61 00 E4 */	lwz r3, 0xe4(r1)
/* 814742FC | A1 01 00 90 */	lhz r8, 0x90(r1)
/* 81474300 | 55 05 04 7E */	clrlwi r5, r8, 17
/* 81474304 | 7C 83 2A 14 */	add r4, r3, r5
/* 81474308 | 90 81 00 C4 */	stw r4, 0xc4(r1)
/* 8147430C | 80 E1 00 C4 */	lwz r7, 0xc4(r1)
/* 81474310 | 88 C7 00 00 */	lbz r6, 0x0(r7)
/* 81474314 | 88 61 00 6D */	lbz r3, 0x6d(r1)
/* 81474318 | 7C C5 18 38 */	and r5, r6, r3
/* 8147431C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81474320 | 40 82 00 10 */	bne .L_81474330
/* 81474324 | 3B 80 00 00 */	li r28, 0x0
/* 81474328 | B3 81 00 90 */	sth r28, 0x90(r1)
/* 8147432C | 48 00 00 24 */	b .L_81474350
.L_81474330:
/* 81474330 | A1 81 00 90 */	lhz r12, 0x90(r1)
/* 81474334 | 55 84 04 20 */	rlwinm r4, r12, 0, 16, 16
/* 81474338 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147433C | 40 82 00 14 */	bne .L_81474350
/* 81474340 | 81 61 01 14 */	lwz r11, 0x114(r1)
/* 81474344 | 39 4B 00 01 */	addi r10, r11, 0x1
/* 81474348 | 91 41 01 14 */	stw r10, 0x114(r1)
/* 8147434C | 4B FF FF 74 */	b .L_814742C0
.L_81474350:
/* 81474350 | A1 21 00 90 */	lhz r9, 0x90(r1)
/* 81474354 | 55 23 04 20 */	rlwinm r3, r9, 0, 16, 16
/* 81474358 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8147435C | 41 82 02 8C */	beq .L_814745E8
.L_81474360:
/* 81474360 | 89 01 00 5D */	lbz r8, 0x5d(r1)
/* 81474364 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81474368 | 40 82 00 70 */	bne .L_814743D8
/* 8147436C | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 81474370 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 81474374 | A0 E1 00 8C */	lhz r7, 0x8c(r1)
/* 81474378 | 7C 05 38 40 */	cmplw r5, r7
/* 8147437C | 41 82 02 6C */	beq .L_814745E8
/* 81474380 | A0 C1 00 98 */	lhz r6, 0x98(r1)
/* 81474384 | B0 C1 00 8C */	sth r6, 0x8c(r1)
/* 81474388 | 88 81 00 5E */	lbz r4, 0x5e(r1)
/* 8147438C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81474390 | 41 82 00 28 */	beq .L_814743B8
/* 81474394 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81474398 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 8147439C | 7F C5 F3 78 */	mr r5, r30
/* 814743A0 | 4B FF 67 7D */	bl Zi8SetFindCand
/* 814743A4 | 7C 65 1B 78 */	mr r5, r3
/* 814743A8 | 54 A3 06 3E */	clrlwi r3, r5, 24
/* 814743AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814743B0 | 40 82 02 38 */	bne .L_814745E8
/* 814743B4 | 48 00 01 38 */	b .L_814744EC
.L_814743B8:
/* 814743B8 | A0 61 00 A2 */	lhz r3, 0xa2(r1)
/* 814743BC | 7F C4 F3 78 */	mr r4, r30
/* 814743C0 | 48 00 79 35 */	bl Zi8IsDupWChar
/* 814743C4 | 7C 68 1B 78 */	mr r8, r3
/* 814743C8 | 55 04 06 3E */	clrlwi r4, r8, 24
/* 814743CC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814743D0 | 40 82 02 18 */	bne .L_814745E8
/* 814743D4 | 48 00 01 18 */	b .L_814744EC
.L_814743D8:
/* 814743D8 | 38 60 00 00 */	li r3, 0x0
/* 814743DC | 98 61 00 65 */	stb r3, 0x65(r1)
/* 814743E0 | A1 21 00 98 */	lhz r9, 0x98(r1)
/* 814743E4 | 80 81 00 BC */	lwz r4, 0xbc(r1)
/* 814743E8 | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 814743EC | 88 A1 00 65 */	lbz r5, 0x65(r1)
/* 814743F0 | 7C A7 2B 78 */	mr r7, r5
/* 814743F4 | 54 E3 06 3E */	clrlwi r3, r7, 24
/* 814743F8 | 7C C6 1A 14 */	add r6, r6, r3
/* 814743FC | 54 C8 08 3C */	slwi r8, r6, 1
/* 81474400 | 7D 24 43 2E */	sthx r9, r4, r8
/* 81474404 | 38 85 00 01 */	addi r4, r5, 0x1
/* 81474408 | 98 81 00 65 */	stb r4, 0x65(r1)
/* 8147440C | 88 A1 02 FD */	lbz r5, 0x2fd(r1)
/* 81474410 | 28 05 00 01 */	cmplwi r5, 0x1
/* 81474414 | 40 81 00 80 */	ble .L_81474494
.L_81474418:
/* 81474418 | 80 E1 00 D0 */	lwz r7, 0xd0(r1)
/* 8147441C | 88 87 00 01 */	lbz r4, 0x1(r7)
/* 81474420 | 54 86 04 3E */	clrlwi r6, r4, 16
/* 81474424 | 54 C5 40 2E */	slwi r5, r6, 8
/* 81474428 | 80 61 00 D0 */	lwz r3, 0xd0(r1)
/* 8147442C | 89 23 00 00 */	lbz r9, 0x0(r3)
/* 81474430 | 7C A8 4B 78 */	or r8, r5, r9
/* 81474434 | 55 07 04 3E */	clrlwi r7, r8, 16
/* 81474438 | B0 E1 00 94 */	sth r7, 0x94(r1)
/* 8147443C | 80 81 00 D0 */	lwz r4, 0xd0(r1)
/* 81474440 | 38 C4 00 02 */	addi r6, r4, 0x2
/* 81474444 | 90 C1 00 D0 */	stw r6, 0xd0(r1)
/* 81474448 | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 8147444C | 54 A4 04 7E */	clrlwi r4, r5, 17
/* 81474450 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 81474454 | 7F C4 F3 78 */	mr r4, r30
/* 81474458 | 48 00 AF 71 */	bl Zi8Ord2Uni
/* 8147445C | 81 41 00 BC */	lwz r10, 0xbc(r1)
/* 81474460 | 81 21 01 04 */	lwz r9, 0x104(r1)
/* 81474464 | 88 C1 00 65 */	lbz r6, 0x65(r1)
/* 81474468 | 7C C5 33 78 */	mr r5, r6
/* 8147446C | 38 86 00 01 */	addi r4, r6, 0x1
/* 81474470 | 98 81 00 65 */	stb r4, 0x65(r1)
/* 81474474 | 54 A8 06 3E */	clrlwi r8, r5, 24
/* 81474478 | 7C E9 42 14 */	add r7, r9, r8
/* 8147447C | 54 E6 08 3C */	slwi r6, r7, 1
/* 81474480 | 7C 6A 33 2E */	sthx r3, r10, r6
/* 81474484 | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 81474488 | 54 A3 04 20 */	rlwinm r3, r5, 0, 16, 16
/* 8147448C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81474490 | 41 82 FF 88 */	beq .L_81474418
.L_81474494:
/* 81474494 | 88 81 00 54 */	lbz r4, 0x54(r1)
/* 81474498 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147449C | 41 82 00 24 */	beq .L_814744C0
/* 814744A0 | 89 7F 00 0C */	lbz r11, 0xc(r31)
/* 814744A4 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814744A8 | 41 82 00 10 */	beq .L_814744B8
/* 814744AC | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 814744B0 | 98 61 00 65 */	stb r3, 0x65(r1)
/* 814744B4 | 48 00 00 0C */	b .L_814744C0
.L_814744B8:
/* 814744B8 | 38 E0 00 01 */	li r7, 0x1
/* 814744BC | 98 E1 00 65 */	stb r7, 0x65(r1)
.L_814744C0:
/* 814744C0 | 81 41 00 BC */	lwz r10, 0xbc(r1)
/* 814744C4 | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 814744C8 | 54 C5 08 3C */	slwi r5, r6, 1
/* 814744CC | 7C 6A 2A 14 */	add r3, r10, r5
/* 814744D0 | 88 81 00 65 */	lbz r4, 0x65(r1)
/* 814744D4 | 7F C5 F3 78 */	mr r5, r30
/* 814744D8 | 48 00 79 19 */	bl Zi8IsDupWordW
/* 814744DC | 7C 64 1B 78 */	mr r4, r3
/* 814744E0 | 54 89 06 3E */	clrlwi r9, r4, 24
/* 814744E4 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814744E8 | 40 82 01 00 */	bne .L_814745E8
.L_814744EC:
/* 814744EC | A1 01 00 72 */	lhz r8, 0x72(r1)
/* 814744F0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814744F4 | 41 82 00 14 */	beq .L_81474508
/* 814744F8 | A0 61 00 72 */	lhz r3, 0x72(r1)
/* 814744FC | 38 C3 FF FF */	subi r6, r3, 0x1
/* 81474500 | B0 C1 00 72 */	sth r6, 0x72(r1)
/* 81474504 | 48 00 00 E4 */	b .L_814745E8
.L_81474508:
/* 81474508 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8147450C | 38 A4 00 01 */	addi r5, r4, 0x1
/* 81474510 | 90 A1 00 CC */	stw r5, 0xcc(r1)
/* 81474514 | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 81474518 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8147451C | 40 82 00 BC */	bne .L_814745D8
/* 81474520 | 88 9E 01 20 */	lbz r4, 0x120(r30)
/* 81474524 | 38 64 00 01 */	addi r3, r4, 0x1
/* 81474528 | 98 7E 01 20 */	stb r3, 0x120(r30)
/* 8147452C | 54 6C 06 3E */	clrlwi r12, r3, 24
/* 81474530 | 28 0C 00 40 */	cmplwi r12, 0x40
/* 81474534 | 41 80 00 0C */	blt .L_81474540
/* 81474538 | 38 C0 00 00 */	li r6, 0x0
/* 8147453C | 98 DE 01 20 */	stb r6, 0x120(r30)
.L_81474540:
/* 81474540 | 88 A1 00 5D */	lbz r5, 0x5d(r1)
/* 81474544 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81474548 | 41 82 00 68 */	beq .L_814745B0
/* 8147454C | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 81474550 | 39 04 00 01 */	addi r8, r4, 0x1
/* 81474554 | 99 01 00 67 */	stb r8, 0x67(r1)
/* 81474558 | 81 61 01 04 */	lwz r11, 0x104(r1)
/* 8147455C | 88 61 00 65 */	lbz r3, 0x65(r1)
/* 81474560 | 7C EB 1A 14 */	add r7, r11, r3
/* 81474564 | 90 E1 01 04 */	stw r7, 0x104(r1)
/* 81474568 | 39 40 00 20 */	li r10, 0x20
/* 8147456C | 81 21 00 BC */	lwz r9, 0xbc(r1)
/* 81474570 | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 81474574 | 7C C4 33 78 */	mr r4, r6
/* 81474578 | 54 83 08 3C */	slwi r3, r4, 1
/* 8147457C | 7D 49 1B 2E */	sthx r10, r9, r3
/* 81474580 | 38 A6 00 01 */	addi r5, r6, 0x1
/* 81474584 | 90 A1 01 04 */	stw r5, 0x104(r1)
/* 81474588 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 8147458C | 55 07 06 3E */	clrlwi r7, r8, 24
/* 81474590 | 88 DF 00 1C */	lbz r6, 0x1c(r31)
/* 81474594 | 7C 07 30 40 */	cmplw r7, r6
/* 81474598 | 40 80 01 B0 */	bge .L_81474748
/* 8147459C | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 814745A0 | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 814745A4 | 7C 06 20 00 */	cmpw r6, r4
/* 814745A8 | 40 81 00 40 */	ble .L_814745E8
/* 814745AC | 48 00 01 9C */	b .L_81474748
.L_814745B0:
/* 814745B0 | A1 21 00 98 */	lhz r9, 0x98(r1)
/* 814745B4 | 80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 814745B8 | 89 01 00 67 */	lbz r8, 0x67(r1)
/* 814745BC | 7D 03 43 78 */	mr r3, r8
/* 814745C0 | 54 67 06 3E */	clrlwi r7, r3, 24
/* 814745C4 | 54 E6 08 3C */	slwi r6, r7, 1
/* 814745C8 | 7D 25 33 2E */	sthx r9, r5, r6
/* 814745CC | 38 88 00 01 */	addi r4, r8, 0x1
/* 814745D0 | 98 81 00 67 */	stb r4, 0x67(r1)
/* 814745D4 | 48 00 00 14 */	b .L_814745E8
.L_814745D8:
/* 814745D8 | 81 21 00 CC */	lwz r9, 0xcc(r1)
/* 814745DC | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 814745E0 | 7C 09 18 00 */	cmpw r9, r3
/* 814745E4 | 40 80 01 64 */	bge .L_81474748
.L_814745E8:
/* 814745E8 | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 814745EC | 38 85 00 0C */	addi r4, r5, 0xc
/* 814745F0 | 90 81 01 00 */	stw r4, 0x100(r1)
.L_814745F4:
/* 814745F4 | 89 41 00 67 */	lbz r10, 0x67(r1)
/* 814745F8 | 55 43 06 3E */	clrlwi r3, r10, 24
/* 814745FC | 89 9F 00 1C */	lbz r12, 0x1c(r31)
/* 81474600 | 7C 03 60 40 */	cmplw r3, r12
/* 81474604 | 40 80 00 10 */	bge .L_81474614
/* 81474608 | A0 E1 00 7C */	lhz r7, 0x7c(r1)
/* 8147460C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81474610 | 40 82 FB 34 */	bne .L_81474144
.L_81474614:
/* 81474614 | 89 01 00 5D */	lbz r8, 0x5d(r1)
/* 81474618 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8147461C | 41 82 00 40 */	beq .L_8147465C
/* 81474620 | 88 DF 00 01 */	lbz r6, 0x1(r31)
/* 81474624 | 28 06 00 0C */	cmplwi r6, 0xc
/* 81474628 | 41 82 00 34 */	beq .L_8147465C
/* 8147462C | 88 BF 00 01 */	lbz r5, 0x1(r31)
/* 81474630 | 28 05 00 0D */	cmplwi r5, 0xd
/* 81474634 | 41 82 00 28 */	beq .L_8147465C
/* 81474638 | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 8147463C | 28 03 00 01 */	cmplwi r3, 0x1
/* 81474640 | 40 81 00 1C */	ble .L_8147465C
/* 81474644 | 88 81 00 5A */	lbz r4, 0x5a(r1)
/* 81474648 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147464C | 41 82 00 10 */	beq .L_8147465C
/* 81474650 | 39 60 00 00 */	li r11, 0x0
/* 81474654 | 99 61 00 5A */	stb r11, 0x5a(r1)
/* 81474658 | 4B FF FA 8C */	b .L_814740E4
.L_8147465C:
/* 8147465C | 89 21 00 5D */	lbz r9, 0x5d(r1)
/* 81474660 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81474664 | 41 82 00 44 */	beq .L_814746A8
/* 81474668 | 88 FF 00 01 */	lbz r7, 0x1(r31)
/* 8147466C | 28 07 00 0C */	cmplwi r7, 0xc
/* 81474670 | 41 82 00 10 */	beq .L_81474680
/* 81474674 | 89 1F 00 01 */	lbz r8, 0x1(r31)
/* 81474678 | 28 08 00 0D */	cmplwi r8, 0xd
/* 8147467C | 40 82 00 2C */	bne .L_814746A8
.L_81474680:
/* 81474680 | 89 41 02 FD */	lbz r10, 0x2fd(r1)
/* 81474684 | 28 0A 00 01 */	cmplwi r10, 0x1
/* 81474688 | 40 81 00 20 */	ble .L_814746A8
/* 8147468C | 89 01 00 5A */	lbz r8, 0x5a(r1)
/* 81474690 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81474694 | 41 82 00 14 */	beq .L_814746A8
/* 81474698 | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 8147469C | 38 83 FF FF */	subi r4, r3, 0x1
/* 814746A0 | 98 81 02 FD */	stb r4, 0x2fd(r1)
/* 814746A4 | 4B FF FA 40 */	b .L_814740E4
.L_814746A8:
/* 814746A8 | 88 C1 00 64 */	lbz r6, 0x64(r1)
/* 814746AC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814746B0 | 41 82 00 98 */	beq .L_81474748
/* 814746B4 | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 814746B8 | 55 28 06 3E */	clrlwi r8, r9, 24
/* 814746BC | 88 BF 00 1C */	lbz r5, 0x1c(r31)
/* 814746C0 | 7C 08 28 40 */	cmplw r8, r5
/* 814746C4 | 40 80 00 84 */	bge .L_81474748
/* 814746C8 | 88 81 00 51 */	lbz r4, 0x51(r1)
/* 814746CC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814746D0 | 41 82 00 10 */	beq .L_814746E0
/* 814746D4 | 38 E0 00 00 */	li r7, 0x0
/* 814746D8 | 98 E1 00 51 */	stb r7, 0x51(r1)
/* 814746DC | 4B FF D1 0C */	b .L_814717E8
.L_814746E0:
/* 814746E0 | 38 60 00 00 */	li r3, 0x0
/* 814746E4 | 98 61 00 64 */	stb r3, 0x64(r1)
/* 814746E8 | 80 C1 00 EC */	lwz r6, 0xec(r1)
/* 814746EC | 90 C1 01 00 */	stw r6, 0x100(r1)
/* 814746F0 | A0 81 00 7A */	lhz r4, 0x7a(r1)
/* 814746F4 | B0 81 00 7C */	sth r4, 0x7c(r1)
/* 814746F8 | A1 41 02 FE */	lhz r10, 0x2fe(r1)
/* 814746FC | B1 41 00 80 */	sth r10, 0x80(r1)
/* 81474700 | A0 A1 03 1E */	lhz r5, 0x31e(r1)
/* 81474704 | B0 A1 00 7E */	sth r5, 0x7e(r1)
/* 81474708 | A0 81 03 3E */	lhz r4, 0x33e(r1)
/* 8147470C | B0 81 02 FE */	sth r4, 0x2fe(r1)
/* 81474710 | A1 21 03 40 */	lhz r9, 0x340(r1)
/* 81474714 | B1 21 03 1E */	sth r9, 0x31e(r1)
/* 81474718 | A0 E1 00 80 */	lhz r7, 0x80(r1)
/* 8147471C | B0 E1 03 3E */	sth r7, 0x33e(r1)
/* 81474720 | A0 C1 00 7E */	lhz r6, 0x7e(r1)
/* 81474724 | B0 C1 03 40 */	sth r6, 0x340(r1)
/* 81474728 | 88 61 00 61 */	lbz r3, 0x61(r1)
/* 8147472C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81474730 | 41 82 F8 CC */	beq .L_81473FFC
/* 81474734 | 39 00 00 00 */	li r8, 0x0
/* 81474738 | 99 01 00 61 */	stb r8, 0x61(r1)
/* 8147473C | 38 A0 00 01 */	li r5, 0x1
/* 81474740 | 98 A1 00 60 */	stb r5, 0x60(r1)
/* 81474744 | 4B FF C6 6C */	b .L_81470DB0
.L_81474748:
/* 81474748 | 88 61 00 52 */	lbz r3, 0x52(r1)
/* 8147474C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81474750 | 41 82 00 7C */	beq .L_814747CC
/* 81474754 | 88 FF 00 0C */	lbz r7, 0xc(r31)
/* 81474758 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8147475C | 41 82 00 70 */	beq .L_814747CC
/* 81474760 | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 81474764 | 28 06 00 07 */	cmplwi r6, 0x7
/* 81474768 | 41 82 00 1C */	beq .L_81474784
/* 8147476C | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 81474770 | 28 04 00 08 */	cmplwi r4, 0x8
/* 81474774 | 41 82 00 10 */	beq .L_81474784
/* 81474778 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8147477C | 28 05 00 09 */	cmplwi r5, 0x9
/* 81474780 | 40 82 00 4C */	bne .L_814747CC
.L_81474784:
/* 81474784 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 81474788 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147478C | 41 82 00 14 */	beq .L_814747A0
/* 81474790 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 81474794 | 80 FD 00 0C */	lwz r7, 0xc(r29)
/* 81474798 | 7C 03 38 00 */	cmpw r3, r7
/* 8147479C | 41 80 00 24 */	blt .L_814747C0
.L_814747A0:
/* 814747A0 | 89 7D 00 00 */	lbz r11, 0x0(r29)
/* 814747A4 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814747A8 | 40 82 00 24 */	bne .L_814747CC
/* 814747AC | 89 41 00 67 */	lbz r10, 0x67(r1)
/* 814747B0 | 55 48 06 3E */	clrlwi r8, r10, 24
/* 814747B4 | 89 3F 00 1C */	lbz r9, 0x1c(r31)
/* 814747B8 | 7C 08 48 40 */	cmplw r8, r9
/* 814747BC | 40 80 00 10 */	bge .L_814747CC
.L_814747C0:
/* 814747C0 | 39 00 00 00 */	li r8, 0x0
/* 814747C4 | 99 01 00 52 */	stb r8, 0x52(r1)
/* 814747C8 | 4B FF B4 FC */	b .L_8146FCC4
.L_814747CC:
/* 814747CC | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 814747D0 | 28 07 00 09 */	cmplwi r7, 0x9
/* 814747D4 | 40 82 00 74 */	bne .L_81474848
/* 814747D8 | 88 DF 00 01 */	lbz r6, 0x1(r31)
/* 814747DC | 28 06 00 0A */	cmplwi r6, 0xa
/* 814747E0 | 40 82 00 68 */	bne .L_81474848
/* 814747E4 | 88 BF 00 0C */	lbz r5, 0xc(r31)
/* 814747E8 | 28 05 00 03 */	cmplwi r5, 0x3
/* 814747EC | 40 82 00 14 */	bne .L_81474800
/* 814747F0 | 81 21 00 C0 */	lwz r9, 0xc0(r1)
/* 814747F4 | A0 89 00 04 */	lhz r4, 0x4(r9)
/* 814747F8 | 28 04 00 20 */	cmplwi r4, 0x20
/* 814747FC | 41 82 00 4C */	beq .L_81474848
.L_81474800:
/* 81474800 | 89 5D 00 00 */	lbz r10, 0x0(r29)
/* 81474804 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81474808 | 41 82 00 14 */	beq .L_8147481C
/* 8147480C | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 81474810 | 81 1D 00 0C */	lwz r8, 0xc(r29)
/* 81474814 | 7C 03 40 00 */	cmpw r3, r8
/* 81474818 | 41 80 00 24 */	blt .L_8147483C
.L_8147481C:
/* 8147481C | 88 7D 00 00 */	lbz r3, 0x0(r29)
/* 81474820 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81474824 | 40 82 00 24 */	bne .L_81474848
/* 81474828 | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 8147482C | 54 A7 06 3E */	clrlwi r7, r5, 24
/* 81474830 | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 81474834 | 7C 07 20 40 */	cmplw r7, r4
/* 81474838 | 40 80 00 10 */	bge .L_81474848
.L_8147483C:
/* 8147483C | 38 C0 00 07 */	li r6, 0x7
/* 81474840 | 98 C1 00 56 */	stb r6, 0x56(r1)
/* 81474844 | 4B FF B4 80 */	b .L_8146FCC4
.L_81474848:
/* 81474848 | 88 A1 00 5D */	lbz r5, 0x5d(r1)
/* 8147484C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81474850 | 41 82 00 30 */	beq .L_81474880
/* 81474854 | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 81474858 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147485C | 41 82 00 24 */	beq .L_81474880
/* 81474860 | 39 20 00 00 */	li r9, 0x0
/* 81474864 | 81 01 00 BC */	lwz r8, 0xbc(r1)
/* 81474868 | 80 81 01 04 */	lwz r4, 0x104(r1)
/* 8147486C | 7C 87 23 78 */	mr r7, r4
/* 81474870 | 54 E6 08 3C */	slwi r6, r7, 1
/* 81474874 | 7D 28 33 2E */	sthx r9, r8, r6
/* 81474878 | 38 64 00 01 */	addi r3, r4, 0x1
/* 8147487C | 90 61 01 04 */	stw r3, 0x104(r1)
.L_81474880:
/* 81474880 | 88 A1 00 67 */	lbz r5, 0x67(r1)
/* 81474884 | 98 BF 00 21 */	stb r5, 0x21(r31)
/* 81474888 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8147488C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81474890 | 40 82 00 BC */	bne .L_8147494C
/* 81474894 | A1 1F 00 1E */	lhz r8, 0x1e(r31)
/* 81474898 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8147489C | 40 82 00 B0 */	bne .L_8147494C
/* 814748A0 | 88 61 00 56 */	lbz r3, 0x56(r1)
/* 814748A4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814748A8 | 40 82 00 A4 */	bne .L_8147494C
/* 814748AC | 88 E1 02 FD */	lbz r7, 0x2fd(r1)
/* 814748B0 | 28 07 00 01 */	cmplwi r7, 0x1
/* 814748B4 | 40 81 00 98 */	ble .L_8147494C
/* 814748B8 | 88 C1 02 FD */	lbz r6, 0x2fd(r1)
/* 814748BC | 38 A6 FF FF */	subi r5, r6, 0x1
/* 814748C0 | 54 A4 08 3C */	slwi r4, r5, 1
/* 814748C4 | 38 61 03 1E */	addi r3, r1, 0x31e
/* 814748C8 | 7D 23 22 2E */	lhzx r9, r3, r4
/* 814748CC | 55 28 04 38 */	rlwinm r8, r9, 0, 16, 28
/* 814748D0 | 2C 08 76 00 */	cmpwi r8, 0x7600
/* 814748D4 | 40 82 00 78 */	bne .L_8147494C
/* 814748D8 | 89 01 02 FD */	lbz r8, 0x2fd(r1)
/* 814748DC | 38 E8 FF FF */	subi r7, r8, 0x1
/* 814748E0 | 54 E6 08 3C */	slwi r6, r7, 1
/* 814748E4 | 38 A1 02 FE */	addi r5, r1, 0x2fe
/* 814748E8 | 7C 85 32 2E */	lhzx r4, r5, r6
/* 814748EC | 54 83 07 7E */	clrlwi r3, r4, 29
/* 814748F0 | 39 83 7F F8 */	addi r12, r3, 0x7ff8
/* 814748F4 | 55 8B 04 3E */	clrlwi r11, r12, 16
/* 814748F8 | 88 E1 02 FD */	lbz r7, 0x2fd(r1)
/* 814748FC | 39 47 FF FF */	subi r10, r7, 0x1
/* 81474900 | 55 49 08 3C */	slwi r9, r10, 1
/* 81474904 | 39 01 02 FE */	addi r8, r1, 0x2fe
/* 81474908 | 7D 68 4B 2E */	sthx r11, r8, r9
/* 8147490C | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 81474910 | 38 83 FF FF */	subi r4, r3, 0x1
/* 81474914 | 54 83 08 3C */	slwi r3, r4, 1
/* 81474918 | 39 21 03 1E */	addi r9, r1, 0x31e
/* 8147491C | 7D 09 1A 2E */	lhzx r8, r9, r3
/* 81474920 | 55 05 07 7E */	clrlwi r5, r8, 29
/* 81474924 | 38 E5 03 98 */	addi r7, r5, 0x398
/* 81474928 | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 8147492C | 88 A1 02 FD */	lbz r5, 0x2fd(r1)
/* 81474930 | 38 85 FF FF */	subi r4, r5, 0x1
/* 81474934 | 54 8C 08 3C */	slwi r12, r4, 1
/* 81474938 | 38 81 03 1E */	addi r4, r1, 0x31e
/* 8147493C | 7C C4 63 2E */	sthx r6, r4, r12
/* 81474940 | 39 60 00 01 */	li r11, 0x1
/* 81474944 | 99 61 00 5A */	stb r11, 0x5a(r1)
/* 81474948 | 4B FF 85 74 */	b .L_8146CEBC
.L_8147494C:
/* 8147494C | 89 41 00 50 */	lbz r10, 0x50(r1)
/* 81474950 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81474954 | 41 82 00 0C */	beq .L_81474960
/* 81474958 | 88 61 00 50 */	lbz r3, 0x50(r1)
/* 8147495C | 98 7E 03 0C */	stb r3, 0x30c(r30)
.L_81474960:
/* 81474960 | 38 60 00 64 */	li r3, 0x64
/* 81474964 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81474968 | 7F C4 F3 78 */	mr r4, r30
/* 8147496C | 48 00 FB 11 */	bl Zi8LogError
/* 81474970 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 81474974 | 48 00 0C 54 */	b .L_814755C8
.L_81474978:
/* 81474978 | 38 60 00 01 */	li r3, 0x1
/* 8147497C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81474980 | 38 80 00 1F */	li r4, 0x1f
/* 81474984 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81474988 | 7F C5 F3 78 */	mr r5, r30
/* 8147498C | 4B FE AA A5 */	bl Zi8GetTableCount
/* 81474990 | 7C 64 1B 78 */	mr r4, r3
/* 81474994 | B0 81 00 9C */	sth r4, 0x9c(r1)
/* 81474998 | 38 60 00 01 */	li r3, 0x1
/* 8147499C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814749A0 | 38 80 00 1F */	li r4, 0x1f
/* 814749A4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814749A8 | 7F C5 F3 78 */	mr r5, r30
/* 814749AC | 4B FE AA 05 */	bl Zi8GetTableAddress
/* 814749B0 | 7C 69 1B 78 */	mr r9, r3
/* 814749B4 | 91 21 00 D0 */	stw r9, 0xd0(r1)
/* 814749B8 | 48 00 0B D8 */	b .L_81475590
.L_814749BC:
/* 814749BC | 80 A1 00 D0 */	lwz r5, 0xd0(r1)
/* 814749C0 | 88 E5 00 00 */	lbz r7, 0x0(r5)
/* 814749C4 | 54 E8 07 3E */	clrlwi r8, r7, 28
/* 814749C8 | 91 01 01 14 */	stw r8, 0x114(r1)
/* 814749CC | 80 C1 00 D0 */	lwz r6, 0xd0(r1)
/* 814749D0 | 7C C4 33 78 */	mr r4, r6
/* 814749D4 | 38 E6 00 01 */	addi r7, r6, 0x1
/* 814749D8 | 90 E1 00 D0 */	stw r7, 0xd0(r1)
/* 814749DC | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814749E0 | 88 A1 00 6E */	lbz r5, 0x6e(r1)
/* 814749E4 | 7C 7B 28 38 */	and r27, r3, r5
/* 814749E8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814749EC | 41 82 0B 84 */	beq .L_81475570
/* 814749F0 | 38 80 00 00 */	li r4, 0x0
/* 814749F4 | B0 81 00 84 */	sth r4, 0x84(r1)
/* 814749F8 | 88 C1 00 59 */	lbz r6, 0x59(r1)
/* 814749FC | 28 06 00 04 */	cmplwi r6, 0x4
/* 81474A00 | 40 82 01 44 */	bne .L_81474B44
/* 81474A04 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 81474A08 | B0 61 00 84 */	sth r3, 0x84(r1)
/* 81474A0C | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 81474A10 | A0 A1 00 84 */	lhz r5, 0x84(r1)
/* 81474A14 | 7C 08 28 00 */	cmpw r8, r5
/* 81474A18 | 40 81 0B 58 */	ble .L_81475570
/* 81474A1C | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 81474A20 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81474A24 | 41 82 00 54 */	beq .L_81474A78
/* 81474A28 | 88 E1 00 56 */	lbz r7, 0x56(r1)
/* 81474A2C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81474A30 | 41 82 00 14 */	beq .L_81474A44
/* 81474A34 | 41 80 00 44 */	blt .L_81474A78
/* 81474A38 | 2C 07 00 03 */	cmpwi r7, 0x3
/* 81474A3C | 40 80 00 3C */	bge .L_81474A78
/* 81474A40 | 48 00 00 20 */	b .L_81474A60
.L_81474A44:
/* 81474A44 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 81474A48 | A0 61 00 84 */	lhz r3, 0x84(r1)
/* 81474A4C | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 81474A50 | 7F 83 2A 14 */	add r28, r3, r5
/* 81474A54 | 7C 06 E0 00 */	cmpw r6, r28
/* 81474A58 | 41 80 0B 18 */	blt .L_81475570
/* 81474A5C | 48 00 00 1C */	b .L_81474A78
.L_81474A60:
/* 81474A60 | 81 81 01 14 */	lwz r12, 0x114(r1)
/* 81474A64 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 81474A68 | 89 61 02 FD */	lbz r11, 0x2fd(r1)
/* 81474A6C | 7D 44 5A 14 */	add r10, r4, r11
/* 81474A70 | 7C 0C 50 00 */	cmpw r12, r10
/* 81474A74 | 41 80 0A FC */	blt .L_81475570
.L_81474A78:
/* 81474A78 | 39 20 00 00 */	li r9, 0x0
/* 81474A7C | B1 21 00 82 */	sth r9, 0x82(r1)
/* 81474A80 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81474A84 | 90 61 01 10 */	stw r3, 0x110(r1)
/* 81474A88 | 48 00 00 A4 */	b .L_81474B2C
.L_81474A8C:
/* 81474A8C | 81 01 00 D0 */	lwz r8, 0xd0(r1)
/* 81474A90 | A0 81 00 82 */	lhz r4, 0x82(r1)
/* 81474A94 | 54 85 08 3C */	slwi r5, r4, 1
/* 81474A98 | 7C E8 28 AE */	lbzx r7, r8, r5
/* 81474A9C | 80 C1 00 D0 */	lwz r6, 0xd0(r1)
/* 81474AA0 | A0 81 00 82 */	lhz r4, 0x82(r1)
/* 81474AA4 | 54 85 08 3C */	slwi r5, r4, 1
/* 81474AA8 | 7C 65 32 14 */	add r3, r5, r6
/* 81474AAC | 89 03 00 01 */	lbz r8, 0x1(r3)
/* 81474AB0 | 55 04 04 3E */	clrlwi r4, r8, 16
/* 81474AB4 | 54 83 40 2E */	slwi r3, r4, 8
/* 81474AB8 | 7D 27 1A 14 */	add r9, r7, r3
/* 81474ABC | 55 24 04 3E */	clrlwi r4, r9, 16
/* 81474AC0 | B0 81 00 94 */	sth r4, 0x94(r1)
/* 81474AC4 | 80 C1 00 EC */	lwz r6, 0xec(r1)
/* 81474AC8 | A0 A1 00 94 */	lhz r5, 0x94(r1)
/* 81474ACC | 1C E5 00 0C */	mulli r7, r5, 0xc
/* 81474AD0 | 7C 86 3A 14 */	add r4, r6, r7
/* 81474AD4 | 90 81 01 00 */	stw r4, 0x100(r1)
/* 81474AD8 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81474ADC | 88 C3 00 06 */	lbz r6, 0x6(r3)
/* 81474AE0 | 54 C8 04 3E */	clrlwi r8, r6, 16
/* 81474AE4 | 55 05 40 2E */	slwi r5, r8, 8
/* 81474AE8 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 81474AEC | 88 87 00 07 */	lbz r4, 0x7(r7)
/* 81474AF0 | 7C C5 22 14 */	add r6, r5, r4
/* 81474AF4 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 81474AF8 | B0 A1 00 98 */	sth r5, 0x98(r1)
/* 81474AFC | A0 61 00 98 */	lhz r3, 0x98(r1)
/* 81474B00 | 54 69 04 3E */	clrlwi r9, r3, 16
/* 81474B04 | 81 01 01 10 */	lwz r8, 0x110(r1)
/* 81474B08 | 7D 07 43 78 */	mr r7, r8
/* 81474B0C | 38 88 00 02 */	addi r4, r8, 0x2
/* 81474B10 | 90 81 01 10 */	stw r4, 0x110(r1)
/* 81474B14 | A0 C7 00 00 */	lhz r6, 0x0(r7)
/* 81474B18 | 7C 09 30 40 */	cmplw r9, r6
/* 81474B1C | 40 82 0A 54 */	bne .L_81475570
/* 81474B20 | A0 A1 00 82 */	lhz r5, 0x82(r1)
/* 81474B24 | 38 85 00 01 */	addi r4, r5, 0x1
/* 81474B28 | B0 81 00 82 */	sth r4, 0x82(r1)
.L_81474B2C:
/* 81474B2C | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 81474B30 | 54 6A 04 3E */	clrlwi r10, r3, 16
/* 81474B34 | A1 21 00 84 */	lhz r9, 0x84(r1)
/* 81474B38 | 7C 0A 48 40 */	cmplw r10, r9
/* 81474B3C | 41 80 FF 50 */	blt .L_81474A8C
/* 81474B40 | 48 00 00 BC */	b .L_81474BFC
.L_81474B44:
/* 81474B44 | 88 C1 00 59 */	lbz r6, 0x59(r1)
/* 81474B48 | 28 06 00 02 */	cmplwi r6, 0x2
/* 81474B4C | 41 82 00 10 */	beq .L_81474B5C
/* 81474B50 | 88 A1 00 59 */	lbz r5, 0x59(r1)
/* 81474B54 | 28 05 00 03 */	cmplwi r5, 0x3
/* 81474B58 | 40 82 00 50 */	bne .L_81474BA8
.L_81474B5C:
/* 81474B5C | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 81474B60 | 89 01 02 FD */	lbz r8, 0x2fd(r1)
/* 81474B64 | 7C 04 40 00 */	cmpw r4, r8
/* 81474B68 | 41 80 0A 08 */	blt .L_81475570
/* 81474B6C | 88 E1 00 5A */	lbz r7, 0x5a(r1)
/* 81474B70 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81474B74 | 41 82 00 14 */	beq .L_81474B88
/* 81474B78 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 81474B7C | 88 A1 02 FD */	lbz r5, 0x2fd(r1)
/* 81474B80 | 7C 06 28 00 */	cmpw r6, r5
/* 81474B84 | 40 82 09 EC */	bne .L_81475570
.L_81474B88:
/* 81474B88 | 88 61 00 5A */	lbz r3, 0x5a(r1)
/* 81474B8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81474B90 | 40 82 00 6C */	bne .L_81474BFC
/* 81474B94 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 81474B98 | 89 61 02 FD */	lbz r11, 0x2fd(r1)
/* 81474B9C | 7C 04 58 00 */	cmpw r4, r11
/* 81474BA0 | 41 81 00 5C */	bgt .L_81474BFC
/* 81474BA4 | 48 00 09 CC */	b .L_81475570
.L_81474BA8:
/* 81474BA8 | 88 61 00 59 */	lbz r3, 0x59(r1)
/* 81474BAC | 28 03 00 05 */	cmplwi r3, 0x5
/* 81474BB0 | 40 82 00 4C */	bne .L_81474BFC
/* 81474BB4 | 80 E1 01 14 */	lwz r7, 0x114(r1)
/* 81474BB8 | 89 41 03 44 */	lbz r10, 0x344(r1)
/* 81474BBC | 7C 07 50 00 */	cmpw r7, r10
/* 81474BC0 | 41 80 09 B0 */	blt .L_81475570
/* 81474BC4 | 88 C1 00 5A */	lbz r6, 0x5a(r1)
/* 81474BC8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81474BCC | 41 82 00 14 */	beq .L_81474BE0
/* 81474BD0 | 80 A1 01 14 */	lwz r5, 0x114(r1)
/* 81474BD4 | 88 81 03 44 */	lbz r4, 0x344(r1)
/* 81474BD8 | 7C 05 20 00 */	cmpw r5, r4
/* 81474BDC | 40 82 09 94 */	bne .L_81475570
.L_81474BE0:
/* 81474BE0 | 89 21 00 5A */	lbz r9, 0x5a(r1)
/* 81474BE4 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81474BE8 | 40 82 00 14 */	bne .L_81474BFC
/* 81474BEC | 81 01 01 14 */	lwz r8, 0x114(r1)
/* 81474BF0 | 88 61 03 44 */	lbz r3, 0x344(r1)
/* 81474BF4 | 7C 08 18 00 */	cmpw r8, r3
/* 81474BF8 | 40 81 09 78 */	ble .L_81475570
.L_81474BFC:
/* 81474BFC | 80 C1 00 D0 */	lwz r6, 0xd0(r1)
/* 81474C00 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 81474C04 | 54 85 08 3C */	slwi r5, r4, 1
/* 81474C08 | 7C E6 28 AE */	lbzx r7, r6, r5
/* 81474C0C | 80 81 00 D0 */	lwz r4, 0xd0(r1)
/* 81474C10 | A0 61 00 84 */	lhz r3, 0x84(r1)
/* 81474C14 | 54 6C 08 3C */	slwi r12, r3, 1
/* 81474C18 | 7C CC 22 14 */	add r6, r12, r4
/* 81474C1C | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81474C20 | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 81474C24 | 54 88 40 2E */	slwi r8, r4, 8
/* 81474C28 | 7D 67 42 14 */	add r11, r7, r8
/* 81474C2C | 55 63 04 3E */	clrlwi r3, r11, 16
/* 81474C30 | B0 61 00 A2 */	sth r3, 0xa2(r1)
/* 81474C34 | 80 E1 00 EC */	lwz r7, 0xec(r1)
/* 81474C38 | A1 41 00 A2 */	lhz r10, 0xa2(r1)
/* 81474C3C | 1D 2A 00 0C */	mulli r9, r10, 0xc
/* 81474C40 | 7C C7 4A 14 */	add r6, r7, r9
/* 81474C44 | 90 C1 01 00 */	stw r6, 0x100(r1)
/* 81474C48 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81474C4C | 88 A4 00 06 */	lbz r5, 0x6(r4)
/* 81474C50 | 54 A3 04 3E */	clrlwi r3, r5, 16
/* 81474C54 | 54 68 40 2E */	slwi r8, r3, 8
/* 81474C58 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 81474C5C | 88 C7 00 07 */	lbz r6, 0x7(r7)
/* 81474C60 | 7C C8 32 14 */	add r6, r8, r6
/* 81474C64 | 54 C4 04 3E */	clrlwi r4, r6, 16
/* 81474C68 | B0 81 00 98 */	sth r4, 0x98(r1)
/* 81474C6C | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 81474C70 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81474C74 | 41 82 04 D0 */	beq .L_81475144
/* 81474C78 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 81474C7C | 2C 05 00 07 */	cmpwi r5, 0x7
/* 81474C80 | 40 80 00 1C */	bge .L_81474C9C
/* 81474C84 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81474C88 | 41 82 02 28 */	beq .L_81474EB0
/* 81474C8C | 41 80 04 B8 */	blt .L_81475144
/* 81474C90 | 2C 05 00 03 */	cmpwi r5, 0x3
/* 81474C94 | 40 80 04 B0 */	bge .L_81475144
/* 81474C98 | 48 00 04 10 */	b .L_814750A8
.L_81474C9C:
/* 81474C9C | 2C 05 00 09 */	cmpwi r5, 0x9
/* 81474CA0 | 41 82 00 D8 */	beq .L_81474D78
/* 81474CA4 | 40 80 04 A0 */	bge .L_81475144
/* 81474CA8 | 48 00 00 04 */	b .L_81474CAC
.L_81474CAC:
/* 81474CAC | 81 01 00 D4 */	lwz r8, 0xd4(r1)
/* 81474CB0 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81474CB4 | 88 83 00 09 */	lbz r4, 0x9(r3)
/* 81474CB8 | 54 87 07 3E */	clrlwi r7, r4, 28
/* 81474CBC | 54 E6 80 1E */	slwi r6, r7, 16
/* 81474CC0 | 81 21 01 00 */	lwz r9, 0x100(r1)
/* 81474CC4 | 88 69 00 0B */	lbz r3, 0xb(r9)
/* 81474CC8 | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 81474CCC | 88 85 00 0A */	lbz r4, 0xa(r5)
/* 81474CD0 | 54 8A 40 2E */	slwi r10, r4, 8
/* 81474CD4 | 7C 63 53 78 */	or r3, r3, r10
/* 81474CD8 | 7C CC 1B 78 */	or r12, r6, r3
/* 81474CDC | 7C E8 62 14 */	add r7, r8, r12
/* 81474CE0 | 90 E1 00 B8 */	stw r7, 0xb8(r1)
/* 81474CE4 | 81 01 00 B8 */	lwz r8, 0xb8(r1)
/* 81474CE8 | 88 C8 00 00 */	lbz r6, 0x0(r8)
/* 81474CEC | 54 C5 07 7E */	clrlwi r5, r6, 29
/* 81474CF0 | 88 61 02 FC */	lbz r3, 0x2fc(r1)
/* 81474CF4 | 7C 05 18 00 */	cmpw r5, r3
/* 81474CF8 | 41 80 00 74 */	blt .L_81474D6C
/* 81474CFC | 88 81 02 F5 */	lbz r4, 0x2f5(r1)
/* 81474D00 | 89 61 02 F1 */	lbz r11, 0x2f1(r1)
/* 81474D04 | 81 21 00 B8 */	lwz r9, 0xb8(r1)
/* 81474D08 | 88 E9 00 00 */	lbz r7, 0x0(r9)
/* 81474D0C | 7D 68 38 38 */	and r8, r11, r7
/* 81474D10 | 7C 04 40 00 */	cmpw r4, r8
/* 81474D14 | 40 82 00 58 */	bne .L_81474D6C
/* 81474D18 | 89 41 02 F6 */	lbz r10, 0x2f6(r1)
/* 81474D1C | 89 01 02 F2 */	lbz r8, 0x2f2(r1)
/* 81474D20 | 80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 81474D24 | 88 83 00 01 */	lbz r4, 0x1(r3)
/* 81474D28 | 7D 06 20 38 */	and r6, r8, r4
/* 81474D2C | 7C 0A 30 00 */	cmpw r10, r6
/* 81474D30 | 40 82 00 3C */	bne .L_81474D6C
/* 81474D34 | 89 21 02 F7 */	lbz r9, 0x2f7(r1)
/* 81474D38 | 89 01 02 F3 */	lbz r8, 0x2f3(r1)
/* 81474D3C | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 81474D40 | 88 85 00 02 */	lbz r4, 0x2(r5)
/* 81474D44 | 7D 07 20 38 */	and r7, r8, r4
/* 81474D48 | 7C 09 38 00 */	cmpw r9, r7
/* 81474D4C | 40 82 00 20 */	bne .L_81474D6C
/* 81474D50 | 88 61 02 F8 */	lbz r3, 0x2f8(r1)
/* 81474D54 | 88 C1 02 F4 */	lbz r6, 0x2f4(r1)
/* 81474D58 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 81474D5C | 89 44 00 03 */	lbz r10, 0x3(r4)
/* 81474D60 | 7C C5 50 38 */	and r5, r6, r10
/* 81474D64 | 7C 03 28 00 */	cmpw r3, r5
/* 81474D68 | 41 82 03 DC */	beq .L_81475144
.L_81474D6C:
/* 81474D6C | 88 81 00 56 */	lbz r4, 0x56(r1)
/* 81474D70 | 28 04 00 07 */	cmplwi r4, 0x7
/* 81474D74 | 41 82 07 FC */	beq .L_81475570
.L_81474D78:
/* 81474D78 | 81 21 00 D4 */	lwz r9, 0xd4(r1)
/* 81474D7C | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 81474D80 | 88 C7 00 09 */	lbz r6, 0x9(r7)
/* 81474D84 | 54 C3 07 3E */	clrlwi r3, r6, 28
/* 81474D88 | 54 68 80 1E */	slwi r8, r3, 16
/* 81474D8C | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 81474D90 | 88 65 00 0B */	lbz r3, 0xb(r5)
/* 81474D94 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 81474D98 | 88 C7 00 0A */	lbz r6, 0xa(r7)
/* 81474D9C | 54 C4 40 2E */	slwi r4, r6, 8
/* 81474DA0 | 7C 65 23 78 */	or r5, r3, r4
/* 81474DA4 | 7D 04 2B 78 */	or r4, r8, r5
/* 81474DA8 | 7C 69 22 14 */	add r3, r9, r4
/* 81474DAC | 90 61 00 B8 */	stw r3, 0xb8(r1)
/* 81474DB0 | 80 E1 00 B8 */	lwz r7, 0xb8(r1)
/* 81474DB4 | 89 67 00 00 */	lbz r11, 0x0(r7)
/* 81474DB8 | 55 6A 07 7E */	clrlwi r10, r11, 29
/* 81474DBC | 55 48 04 3E */	clrlwi r8, r10, 16
/* 81474DC0 | B1 01 00 82 */	sth r8, 0x82(r1)
/* 81474DC4 | 81 21 00 B8 */	lwz r9, 0xb8(r1)
/* 81474DC8 | 89 09 00 00 */	lbz r8, 0x0(r9)
/* 81474DCC | A0 E1 00 82 */	lhz r7, 0x82(r1)
/* 81474DD0 | 54 E6 10 3A */	slwi r6, r7, 2
/* 81474DD4 | 38 A1 01 40 */	addi r5, r1, 0x140
/* 81474DD8 | 7D 25 30 AE */	lbzx r9, r5, r6
/* 81474DDC | 7D 04 48 38 */	and r4, r8, r9
/* 81474DE0 | A1 41 00 82 */	lhz r10, 0x82(r1)
/* 81474DE4 | 55 43 10 3A */	slwi r3, r10, 2
/* 81474DE8 | 39 01 01 28 */	addi r8, r1, 0x128
/* 81474DEC | 7C 68 18 AE */	lbzx r3, r8, r3
/* 81474DF0 | 7C 04 18 00 */	cmpw r4, r3
/* 81474DF4 | 40 82 07 7C */	bne .L_81475570
/* 81474DF8 | 80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 81474DFC | 88 E5 00 01 */	lbz r7, 0x1(r5)
/* 81474E00 | A0 81 00 82 */	lhz r4, 0x82(r1)
/* 81474E04 | 54 86 10 3A */	slwi r6, r4, 2
/* 81474E08 | 38 A1 01 40 */	addi r5, r1, 0x140
/* 81474E0C | 7C 85 32 14 */	add r4, r5, r6
/* 81474E10 | 89 24 00 01 */	lbz r9, 0x1(r4)
/* 81474E14 | 7C E8 48 38 */	and r8, r7, r9
/* 81474E18 | A0 81 00 82 */	lhz r4, 0x82(r1)
/* 81474E1C | 54 87 10 3A */	slwi r7, r4, 2
/* 81474E20 | 38 61 01 28 */	addi r3, r1, 0x128
/* 81474E24 | 7C C3 3A 14 */	add r6, r3, r7
/* 81474E28 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81474E2C | 7C 08 28 00 */	cmpw r8, r5
/* 81474E30 | 40 82 07 40 */	bne .L_81475570
/* 81474E34 | 80 81 00 B8 */	lwz r4, 0xb8(r1)
/* 81474E38 | 89 04 00 02 */	lbz r8, 0x2(r4)
/* 81474E3C | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 81474E40 | 54 67 10 3A */	slwi r7, r3, 2
/* 81474E44 | 38 C1 01 40 */	addi r6, r1, 0x140
/* 81474E48 | 7C A6 3A 14 */	add r5, r6, r7
/* 81474E4C | 88 85 00 02 */	lbz r4, 0x2(r5)
/* 81474E50 | 7D 03 20 38 */	and r3, r8, r4
/* 81474E54 | A1 21 00 82 */	lhz r9, 0x82(r1)
/* 81474E58 | 55 28 10 3A */	slwi r8, r9, 2
/* 81474E5C | 38 E1 01 28 */	addi r7, r1, 0x128
/* 81474E60 | 7C C7 42 14 */	add r6, r7, r8
/* 81474E64 | 88 A6 00 02 */	lbz r5, 0x2(r6)
/* 81474E68 | 7C 03 28 00 */	cmpw r3, r5
/* 81474E6C | 40 82 07 04 */	bne .L_81475570
/* 81474E70 | 81 01 00 B8 */	lwz r8, 0xb8(r1)
/* 81474E74 | 88 E8 00 03 */	lbz r7, 0x3(r8)
/* 81474E78 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 81474E7C | 54 C5 10 3A */	slwi r5, r6, 2
/* 81474E80 | 38 81 01 40 */	addi r4, r1, 0x140
/* 81474E84 | 7C 64 2A 14 */	add r3, r4, r5
/* 81474E88 | 89 83 00 03 */	lbz r12, 0x3(r3)
/* 81474E8C | 7C EB 60 38 */	and r11, r7, r12
/* 81474E90 | A0 E1 00 82 */	lhz r7, 0x82(r1)
/* 81474E94 | 54 EA 10 3A */	slwi r10, r7, 2
/* 81474E98 | 39 21 01 28 */	addi r9, r1, 0x128
/* 81474E9C | 7D 09 52 14 */	add r8, r9, r10
/* 81474EA0 | 88 68 00 03 */	lbz r3, 0x3(r8)
/* 81474EA4 | 7C 0B 18 00 */	cmpw r11, r3
/* 81474EA8 | 41 82 02 9C */	beq .L_81475144
/* 81474EAC | 48 00 06 C4 */	b .L_81475570
.L_81474EB0:
/* 81474EB0 | 88 81 02 E5 */	lbz r4, 0x2e5(r1)
/* 81474EB4 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81474EB8 | 89 23 00 00 */	lbz r9, 0x0(r3)
/* 81474EBC | 89 01 02 D9 */	lbz r8, 0x2d9(r1)
/* 81474EC0 | 7D 25 40 38 */	and r5, r9, r8
/* 81474EC4 | 7C 04 28 00 */	cmpw r4, r5
/* 81474EC8 | 40 82 06 A8 */	bne .L_81475570
/* 81474ECC | 88 E1 02 D8 */	lbz r7, 0x2d8(r1)
/* 81474ED0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81474ED4 | 40 82 00 58 */	bne .L_81474F2C
/* 81474ED8 | 88 C1 02 E8 */	lbz r6, 0x2e8(r1)
/* 81474EDC | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 81474EE0 | 88 85 00 03 */	lbz r4, 0x3(r5)
/* 81474EE4 | 89 81 02 DC */	lbz r12, 0x2dc(r1)
/* 81474EE8 | 7C 84 60 38 */	and r4, r4, r12
/* 81474EEC | 7C 06 20 00 */	cmpw r6, r4
/* 81474EF0 | 40 82 06 80 */	bne .L_81475570
/* 81474EF4 | 89 61 02 E7 */	lbz r11, 0x2e7(r1)
/* 81474EF8 | 81 41 01 00 */	lwz r10, 0x100(r1)
/* 81474EFC | 88 6A 00 02 */	lbz r3, 0x2(r10)
/* 81474F00 | 88 81 02 DB */	lbz r4, 0x2db(r1)
/* 81474F04 | 7C 69 20 38 */	and r9, r3, r4
/* 81474F08 | 7C 0B 48 00 */	cmpw r11, r9
/* 81474F0C | 40 82 06 64 */	bne .L_81475570
/* 81474F10 | 88 A1 02 E6 */	lbz r5, 0x2e6(r1)
/* 81474F14 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 81474F18 | 89 07 00 01 */	lbz r8, 0x1(r7)
/* 81474F1C | 88 C1 02 DA */	lbz r6, 0x2da(r1)
/* 81474F20 | 7D 04 30 38 */	and r4, r8, r6
/* 81474F24 | 7C 05 20 00 */	cmpw r5, r4
/* 81474F28 | 40 82 06 48 */	bne .L_81475570
.L_81474F2C:
/* 81474F2C | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81474F30 | 80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 81474F34 | 38 A1 02 D8 */	addi r5, r1, 0x2d8
/* 81474F38 | 38 C0 00 00 */	li r6, 0x0
/* 81474F3C | 7F C7 F3 78 */	mr r7, r30
/* 81474F40 | 48 00 82 09 */	bl Zi8SecMatchChar
/* 81474F44 | 7C 67 1B 78 */	mr r7, r3
/* 81474F48 | 54 E3 06 3E */	clrlwi r3, r7, 24
/* 81474F4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81474F50 | 41 82 06 20 */	beq .L_81475570
/* 81474F54 | 38 A0 00 01 */	li r5, 0x1
/* 81474F58 | B0 A1 00 82 */	sth r5, 0x82(r1)
/* 81474F5C | 48 00 01 38 */	b .L_81475094
.L_81474F60:
/* 81474F60 | 83 61 00 EC */	lwz r27, 0xec(r1)
/* 81474F64 | 80 81 00 D0 */	lwz r4, 0xd0(r1)
/* 81474F68 | A0 C1 00 84 */	lhz r6, 0x84(r1)
/* 81474F6C | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 81474F70 | 7D 06 1A 14 */	add r8, r6, r3
/* 81474F74 | 55 05 08 3C */	slwi r5, r8, 1
/* 81474F78 | 7C 84 28 AE */	lbzx r4, r4, r5
/* 81474F7C | 54 87 04 3E */	clrlwi r7, r4, 16
/* 81474F80 | 1C C7 00 0C */	mulli r6, r7, 0xc
/* 81474F84 | 80 61 00 D0 */	lwz r3, 0xd0(r1)
/* 81474F88 | A0 A1 00 84 */	lhz r5, 0x84(r1)
/* 81474F8C | A3 81 00 82 */	lhz r28, 0x82(r1)
/* 81474F90 | 7D 85 E2 14 */	add r12, r5, r28
/* 81474F94 | 55 84 08 3C */	slwi r4, r12, 1
/* 81474F98 | 7D 64 1A 14 */	add r11, r4, r3
/* 81474F9C | 89 4B 00 01 */	lbz r10, 0x1(r11)
/* 81474FA0 | 55 49 04 3E */	clrlwi r9, r10, 16
/* 81474FA4 | 55 23 40 2E */	slwi r3, r9, 8
/* 81474FA8 | 1D 03 00 0C */	mulli r8, r3, 0xc
/* 81474FAC | 7C 9B 32 14 */	add r4, r27, r6
/* 81474FB0 | 7C A8 22 14 */	add r5, r8, r4
/* 81474FB4 | 90 A1 01 00 */	stw r5, 0x100(r1)
/* 81474FB8 | A0 E1 00 82 */	lhz r7, 0x82(r1)
/* 81474FBC | 1C C7 00 0C */	mulli r6, r7, 0xc
/* 81474FC0 | 38 81 04 05 */	addi r4, r1, 0x405
/* 81474FC4 | 7C A4 30 AE */	lbzx r5, r4, r6
/* 81474FC8 | 80 61 01 00 */	lwz r3, 0x100(r1)
/* 81474FCC | 89 03 00 00 */	lbz r8, 0x0(r3)
/* 81474FD0 | A0 81 00 82 */	lhz r4, 0x82(r1)
/* 81474FD4 | 1C 64 00 0C */	mulli r3, r4, 0xc
/* 81474FD8 | 39 21 03 45 */	addi r9, r1, 0x345
/* 81474FDC | 7C 89 18 AE */	lbzx r4, r9, r3
/* 81474FE0 | 7D 06 20 38 */	and r6, r8, r4
/* 81474FE4 | 7C 05 30 00 */	cmpw r5, r6
/* 81474FE8 | 40 82 05 88 */	bne .L_81475570
/* 81474FEC | A0 A1 00 82 */	lhz r5, 0x82(r1)
/* 81474FF0 | 1C E5 00 0C */	mulli r7, r5, 0xc
/* 81474FF4 | 38 81 04 06 */	addi r4, r1, 0x406
/* 81474FF8 | 7C 64 38 AE */	lbzx r3, r4, r7
/* 81474FFC | 80 C1 01 00 */	lwz r6, 0x100(r1)
/* 81475000 | 89 06 00 01 */	lbz r8, 0x1(r6)
/* 81475004 | A0 A1 00 82 */	lhz r5, 0x82(r1)
/* 81475008 | 1C E5 00 0C */	mulli r7, r5, 0xc
/* 8147500C | 38 81 03 46 */	addi r4, r1, 0x346
/* 81475010 | 7C C4 38 AE */	lbzx r6, r4, r7
/* 81475014 | 7D 05 30 38 */	and r5, r8, r6
/* 81475018 | 7C 03 28 00 */	cmpw r3, r5
/* 8147501C | 40 82 05 54 */	bne .L_81475570
/* 81475020 | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 81475024 | 1D 23 00 0C */	mulli r9, r3, 0xc
/* 81475028 | 39 01 04 07 */	addi r8, r1, 0x407
/* 8147502C | 7C E8 48 AE */	lbzx r7, r8, r9
/* 81475030 | 80 81 01 00 */	lwz r4, 0x100(r1)
/* 81475034 | 88 C4 00 02 */	lbz r6, 0x2(r4)
/* 81475038 | A0 A1 00 82 */	lhz r5, 0x82(r1)
/* 8147503C | 1C 85 00 0C */	mulli r4, r5, 0xc
/* 81475040 | 38 61 03 47 */	addi r3, r1, 0x347
/* 81475044 | 7D 43 20 AE */	lbzx r10, r3, r4
/* 81475048 | 7C C9 50 38 */	and r9, r6, r10
/* 8147504C | 7C 07 48 00 */	cmpw r7, r9
/* 81475050 | 40 82 05 20 */	bne .L_81475570
/* 81475054 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 81475058 | 1C A6 00 0C */	mulli r5, r6, 0xc
/* 8147505C | 38 81 04 08 */	addi r4, r1, 0x408
/* 81475060 | 7D 04 28 AE */	lbzx r8, r4, r5
/* 81475064 | 80 E1 01 00 */	lwz r7, 0x100(r1)
/* 81475068 | 88 C7 00 03 */	lbz r6, 0x3(r7)
/* 8147506C | A0 A1 00 82 */	lhz r5, 0x82(r1)
/* 81475070 | 1C 65 00 0C */	mulli r3, r5, 0xc
/* 81475074 | 38 81 03 48 */	addi r4, r1, 0x348
/* 81475078 | 7D 64 18 AE */	lbzx r11, r4, r3
/* 8147507C | 7C C3 58 38 */	and r3, r6, r11
/* 81475080 | 7C 08 18 00 */	cmpw r8, r3
/* 81475084 | 40 82 04 EC */	bne .L_81475570
/* 81475088 | A0 E1 00 82 */	lhz r7, 0x82(r1)
/* 8147508C | 39 47 00 01 */	addi r10, r7, 0x1
/* 81475090 | B1 41 00 82 */	sth r10, 0x82(r1)
.L_81475094:
/* 81475094 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 81475098 | 88 A1 03 44 */	lbz r5, 0x344(r1)
/* 8147509C | 7C 06 28 00 */	cmpw r6, r5
/* 814750A0 | 41 80 FE C0 */	blt .L_81474F60
/* 814750A4 | 48 00 00 A0 */	b .L_81475144
.L_814750A8:
/* 814750A8 | 80 81 00 D0 */	lwz r4, 0xd0(r1)
/* 814750AC | 81 21 01 14 */	lwz r9, 0x114(r1)
/* 814750B0 | A1 01 00 84 */	lhz r8, 0x84(r1)
/* 814750B4 | 7C 69 42 14 */	add r3, r9, r8
/* 814750B8 | 54 66 08 3C */	slwi r6, r3, 1
/* 814750BC | 7C 84 32 14 */	add r4, r4, r6
/* 814750C0 | 90 81 00 D8 */	stw r4, 0xd8(r1)
/* 814750C4 | 38 A0 00 00 */	li r5, 0x0
/* 814750C8 | B0 A1 00 82 */	sth r5, 0x82(r1)
/* 814750CC | 48 00 00 68 */	b .L_81475134
.L_814750D0:
/* 814750D0 | A0 E1 00 82 */	lhz r7, 0x82(r1)
/* 814750D4 | 54 E4 08 3C */	slwi r4, r7, 1
/* 814750D8 | 38 61 03 1E */	addi r3, r1, 0x31e
/* 814750DC | 7D 83 22 2E */	lhzx r12, r3, r4
/* 814750E0 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 814750E4 | 54 C5 08 3C */	slwi r5, r6, 1
/* 814750E8 | 38 81 02 FE */	addi r4, r1, 0x2fe
/* 814750EC | 7D 04 2A 2E */	lhzx r8, r4, r5
/* 814750F0 | 81 61 00 D8 */	lwz r11, 0xd8(r1)
/* 814750F4 | 88 6B 00 00 */	lbz r3, 0x0(r11)
/* 814750F8 | 54 67 04 3E */	clrlwi r7, r3, 16
/* 814750FC | 81 41 00 D8 */	lwz r10, 0xd8(r1)
/* 81475100 | 89 2A 00 01 */	lbz r9, 0x1(r10)
/* 81475104 | 55 26 04 3E */	clrlwi r6, r9, 16
/* 81475108 | 54 C4 40 2E */	slwi r4, r6, 8
/* 8147510C | 7C A7 22 14 */	add r5, r7, r4
/* 81475110 | 7D 03 28 38 */	and r3, r8, r5
/* 81475114 | 7C 0C 18 00 */	cmpw r12, r3
/* 81475118 | 40 82 04 58 */	bne .L_81475570
/* 8147511C | A1 01 00 82 */	lhz r8, 0x82(r1)
/* 81475120 | 38 E8 00 01 */	addi r7, r8, 0x1
/* 81475124 | B0 E1 00 82 */	sth r7, 0x82(r1)
/* 81475128 | 80 C1 00 D8 */	lwz r6, 0xd8(r1)
/* 8147512C | 38 C6 00 02 */	addi r6, r6, 0x2
/* 81475130 | 90 C1 00 D8 */	stw r6, 0xd8(r1)
.L_81475134:
/* 81475134 | A0 81 00 82 */	lhz r4, 0x82(r1)
/* 81475138 | 89 21 02 FD */	lbz r9, 0x2fd(r1)
/* 8147513C | 7C 04 48 00 */	cmpw r4, r9
/* 81475140 | 41 80 FF 90 */	blt .L_814750D0
.L_81475144:
/* 81475144 | A0 A1 00 A2 */	lhz r5, 0xa2(r1)
/* 81475148 | 89 1E 01 20 */	lbz r8, 0x120(r30)
/* 8147514C | 55 03 08 3C */	slwi r3, r8, 1
/* 81475150 | 7C 9E 1A 14 */	add r4, r30, r3
/* 81475154 | B0 A4 00 A0 */	sth r5, 0xa0(r4)
/* 81475158 | A0 E1 00 98 */	lhz r7, 0x98(r1)
/* 8147515C | 88 DE 01 20 */	lbz r6, 0x120(r30)
/* 81475160 | 54 C9 08 3C */	slwi r9, r6, 1
/* 81475164 | 7C 7E 4A 14 */	add r3, r30, r9
/* 81475168 | B0 E3 00 20 */	sth r7, 0x20(r3)
/* 8147516C | 80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 81475170 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81475174 | 41 82 00 8C */	beq .L_81475200
/* 81475178 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 8147517C | B0 81 00 82 */	sth r4, 0x82(r1)
/* 81475180 | 48 00 00 70 */	b .L_814751F0
.L_81475184:
/* 81475184 | 81 41 00 D0 */	lwz r10, 0xd0(r1)
/* 81475188 | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 8147518C | 54 6C 08 3C */	slwi r12, r3, 1
/* 81475190 | 7C EA 60 AE */	lbzx r7, r10, r12
/* 81475194 | 81 01 00 D0 */	lwz r8, 0xd0(r1)
/* 81475198 | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 8147519C | 54 C5 08 3C */	slwi r5, r6, 1
/* 814751A0 | 7C 65 42 14 */	add r3, r5, r8
/* 814751A4 | 88 83 00 01 */	lbz r4, 0x1(r3)
/* 814751A8 | 54 8B 04 3E */	clrlwi r11, r4, 16
/* 814751AC | 55 69 40 2E */	slwi r9, r11, 8
/* 814751B0 | 7C E7 4A 14 */	add r7, r7, r9
/* 814751B4 | 54 E8 04 3E */	clrlwi r8, r7, 16
/* 814751B8 | B1 01 00 94 */	sth r8, 0x94(r1)
/* 814751BC | 81 41 00 E4 */	lwz r10, 0xe4(r1)
/* 814751C0 | A1 01 00 94 */	lhz r8, 0x94(r1)
/* 814751C4 | 7C 6A 42 14 */	add r3, r10, r8
/* 814751C8 | 90 61 00 C4 */	stw r3, 0xc4(r1)
/* 814751CC | 80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 814751D0 | 88 C4 00 00 */	lbz r6, 0x0(r4)
/* 814751D4 | 89 21 00 6D */	lbz r9, 0x6d(r1)
/* 814751D8 | 7C C8 48 38 */	and r8, r6, r9
/* 814751DC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814751E0 | 41 82 03 90 */	beq .L_81475570
/* 814751E4 | A0 A1 00 82 */	lhz r5, 0x82(r1)
/* 814751E8 | 38 85 00 01 */	addi r4, r5, 0x1
/* 814751EC | B0 81 00 82 */	sth r4, 0x82(r1)
.L_814751F0:
/* 814751F0 | A0 E1 00 82 */	lhz r7, 0x82(r1)
/* 814751F4 | 80 61 01 14 */	lwz r3, 0x114(r1)
/* 814751F8 | 7C 07 18 00 */	cmpw r7, r3
/* 814751FC | 41 80 FF 88 */	blt .L_81475184
.L_81475200:
/* 81475200 | 88 C1 00 5D */	lbz r6, 0x5d(r1)
/* 81475204 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81475208 | 40 82 00 74 */	bne .L_8147527C
/* 8147520C | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 81475210 | 54 8A 04 3E */	clrlwi r10, r4, 16
/* 81475214 | A0 A1 00 8C */	lhz r5, 0x8c(r1)
/* 81475218 | 7C 0A 28 40 */	cmplw r10, r5
/* 8147521C | 41 82 03 54 */	beq .L_81475570
/* 81475220 | A0 81 00 98 */	lhz r4, 0x98(r1)
/* 81475224 | B0 81 00 8C */	sth r4, 0x8c(r1)
/* 81475228 | 89 21 00 5E */	lbz r9, 0x5e(r1)
/* 8147522C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81475230 | 41 82 00 28 */	beq .L_81475258
/* 81475234 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81475238 | A0 81 00 A2 */	lhz r4, 0xa2(r1)
/* 8147523C | 7F C5 F3 78 */	mr r5, r30
/* 81475240 | 4B FF 58 DD */	bl Zi8SetFindCand
/* 81475244 | 7C 67 1B 78 */	mr r7, r3
/* 81475248 | 54 E6 06 3E */	clrlwi r6, r7, 24
/* 8147524C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81475250 | 40 82 03 20 */	bne .L_81475570
/* 81475254 | 48 00 00 1C */	b .L_81475270
.L_81475258:
/* 81475258 | A0 61 00 A2 */	lhz r3, 0xa2(r1)
/* 8147525C | 7F C4 F3 78 */	mr r4, r30
/* 81475260 | 48 00 6A 95 */	bl Zi8IsDupWChar
/* 81475264 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 81475268 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8147526C | 40 82 03 04 */	bne .L_81475570
.L_81475270:
/* 81475270 | 38 A0 00 01 */	li r5, 0x1
/* 81475274 | B0 A1 00 82 */	sth r5, 0x82(r1)
/* 81475278 | 48 00 01 B4 */	b .L_8147542C
.L_8147527C:
/* 8147527C | 38 60 00 00 */	li r3, 0x0
/* 81475280 | B0 61 00 82 */	sth r3, 0x82(r1)
/* 81475284 | 48 00 00 A4 */	b .L_81475328
.L_81475288:
/* 81475288 | 80 E1 00 D0 */	lwz r7, 0xd0(r1)
/* 8147528C | A0 C1 00 82 */	lhz r6, 0x82(r1)
/* 81475290 | A0 81 00 84 */	lhz r4, 0x84(r1)
/* 81475294 | 7C A6 22 14 */	add r5, r6, r4
/* 81475298 | 54 A4 08 3C */	slwi r4, r5, 1
/* 8147529C | 7C 67 20 AE */	lbzx r3, r7, r4
/* 814752A0 | 80 E1 00 D0 */	lwz r7, 0xd0(r1)
/* 814752A4 | A1 61 00 82 */	lhz r11, 0x82(r1)
/* 814752A8 | A1 41 00 84 */	lhz r10, 0x84(r1)
/* 814752AC | 7D 0B 52 14 */	add r8, r11, r10
/* 814752B0 | 55 09 08 3C */	slwi r9, r8, 1
/* 814752B4 | 7D 09 3A 14 */	add r8, r9, r7
/* 814752B8 | 88 E8 00 01 */	lbz r7, 0x1(r8)
/* 814752BC | 54 E6 04 3E */	clrlwi r6, r7, 16
/* 814752C0 | 54 C5 40 2E */	slwi r5, r6, 8
/* 814752C4 | 7D 23 2A 14 */	add r9, r3, r5
/* 814752C8 | 55 24 04 3E */	clrlwi r4, r9, 16
/* 814752CC | B0 81 00 94 */	sth r4, 0x94(r1)
/* 814752D0 | 81 41 00 EC */	lwz r10, 0xec(r1)
/* 814752D4 | A0 61 00 94 */	lhz r3, 0x94(r1)
/* 814752D8 | 1D 03 00 0C */	mulli r8, r3, 0xc
/* 814752DC | 7C 6A 42 14 */	add r3, r10, r8
/* 814752E0 | 90 61 01 00 */	stw r3, 0x100(r1)
/* 814752E4 | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 814752E8 | 88 E5 00 06 */	lbz r7, 0x6(r5)
/* 814752EC | 54 E4 04 3E */	clrlwi r4, r7, 16
/* 814752F0 | 54 86 40 2E */	slwi r6, r4, 8
/* 814752F4 | 80 A1 01 00 */	lwz r5, 0x100(r1)
/* 814752F8 | 88 85 00 07 */	lbz r4, 0x7(r5)
/* 814752FC | 7D 26 22 14 */	add r9, r6, r4
/* 81475300 | 55 28 04 3E */	clrlwi r8, r9, 16
/* 81475304 | 80 81 00 BC */	lwz r4, 0xbc(r1)
/* 81475308 | 80 E1 01 04 */	lwz r7, 0x104(r1)
/* 8147530C | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 81475310 | 7C C7 1A 14 */	add r6, r7, r3
/* 81475314 | 54 C5 08 3C */	slwi r5, r6, 1
/* 81475318 | 7D 04 2B 2E */	sthx r8, r4, r5
/* 8147531C | A0 81 00 82 */	lhz r4, 0x82(r1)
/* 81475320 | 39 04 00 01 */	addi r8, r4, 0x1
/* 81475324 | B1 01 00 82 */	sth r8, 0x82(r1)
.L_81475328:
/* 81475328 | A0 61 00 82 */	lhz r3, 0x82(r1)
/* 8147532C | A0 E1 00 84 */	lhz r7, 0x84(r1)
/* 81475330 | 80 C1 01 14 */	lwz r6, 0x114(r1)
/* 81475334 | 7C A7 30 50 */	subf r5, r7, r6
/* 81475338 | 7C 03 28 00 */	cmpw r3, r5
/* 8147533C | 41 80 FF 4C */	blt .L_81475288
/* 81475340 | 88 81 00 54 */	lbz r4, 0x54(r1)
/* 81475344 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81475348 | 40 82 00 10 */	bne .L_81475358
/* 8147534C | 88 61 00 59 */	lbz r3, 0x59(r1)
/* 81475350 | 28 03 00 04 */	cmplwi r3, 0x4
/* 81475354 | 40 82 00 A8 */	bne .L_814753FC
.L_81475358:
/* 81475358 | 89 3F 00 0C */	lbz r9, 0xc(r31)
/* 8147535C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81475360 | 40 82 00 10 */	bne .L_81475370
/* 81475364 | 39 00 00 01 */	li r8, 0x1
/* 81475368 | B1 01 00 82 */	sth r8, 0x82(r1)
/* 8147536C | 48 00 00 90 */	b .L_814753FC
.L_81475370:
/* 81475370 | 88 E1 00 59 */	lbz r7, 0x59(r1)
/* 81475374 | 28 07 00 04 */	cmplwi r7, 0x4
/* 81475378 | 40 82 00 64 */	bne .L_814753DC
/* 8147537C | 88 C1 00 56 */	lbz r6, 0x56(r1)
/* 81475380 | 28 06 00 01 */	cmplwi r6, 0x1
/* 81475384 | 41 82 00 10 */	beq .L_81475394
/* 81475388 | 88 A1 00 56 */	lbz r5, 0x56(r1)
/* 8147538C | 28 05 00 02 */	cmplwi r5, 0x2
/* 81475390 | 40 82 00 1C */	bne .L_814753AC
.L_81475394:
/* 81475394 | 88 81 02 FD */	lbz r4, 0x2fd(r1)
/* 81475398 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147539C | 41 82 00 10 */	beq .L_814753AC
/* 814753A0 | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 814753A4 | B0 61 00 82 */	sth r3, 0x82(r1)
/* 814753A8 | 48 00 00 54 */	b .L_814753FC
.L_814753AC:
/* 814753AC | 89 81 00 56 */	lbz r12, 0x56(r1)
/* 814753B0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814753B4 | 40 82 00 1C */	bne .L_814753D0
/* 814753B8 | 89 61 03 44 */	lbz r11, 0x344(r1)
/* 814753BC | 28 0B 00 01 */	cmplwi r11, 0x1
/* 814753C0 | 40 81 00 10 */	ble .L_814753D0
/* 814753C4 | 88 E1 03 44 */	lbz r7, 0x344(r1)
/* 814753C8 | B0 E1 00 82 */	sth r7, 0x82(r1)
/* 814753CC | 48 00 00 30 */	b .L_814753FC
.L_814753D0:
/* 814753D0 | 39 40 00 01 */	li r10, 0x1
/* 814753D4 | B1 41 00 82 */	sth r10, 0x82(r1)
/* 814753D8 | 48 00 00 24 */	b .L_814753FC
.L_814753DC:
/* 814753DC | 89 21 00 59 */	lbz r9, 0x59(r1)
/* 814753E0 | 28 09 00 05 */	cmplwi r9, 0x5
/* 814753E4 | 40 82 00 10 */	bne .L_814753F4
/* 814753E8 | 89 01 03 44 */	lbz r8, 0x344(r1)
/* 814753EC | B1 01 00 82 */	sth r8, 0x82(r1)
/* 814753F0 | 48 00 00 0C */	b .L_814753FC
.L_814753F4:
/* 814753F4 | 88 61 02 FD */	lbz r3, 0x2fd(r1)
/* 814753F8 | B0 61 00 82 */	sth r3, 0x82(r1)
.L_814753FC:
/* 814753FC | 80 81 00 BC */	lwz r4, 0xbc(r1)
/* 81475400 | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 81475404 | 54 69 08 3C */	slwi r9, r3, 1
/* 81475408 | 7C 64 4A 14 */	add r3, r4, r9
/* 8147540C | A1 01 00 82 */	lhz r8, 0x82(r1)
/* 81475410 | 55 04 06 3E */	clrlwi r4, r8, 24
/* 81475414 | 7F C5 F3 78 */	mr r5, r30
/* 81475418 | 48 00 69 D9 */	bl Zi8IsDupWordW
/* 8147541C | 7C 65 1B 78 */	mr r5, r3
/* 81475420 | 54 A7 06 3E */	clrlwi r7, r5, 24
/* 81475424 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81475428 | 40 82 01 48 */	bne .L_81475570
.L_8147542C:
/* 8147542C | A0 C1 00 72 */	lhz r6, 0x72(r1)
/* 81475430 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81475434 | 41 82 00 14 */	beq .L_81475448
/* 81475438 | A0 A1 00 72 */	lhz r5, 0x72(r1)
/* 8147543C | 38 85 FF FF */	subi r4, r5, 0x1
/* 81475440 | B0 81 00 72 */	sth r4, 0x72(r1)
/* 81475444 | 48 00 01 2C */	b .L_81475570
.L_81475448:
/* 81475448 | 81 81 00 CC */	lwz r12, 0xcc(r1)
/* 8147544C | 38 8C 00 01 */	addi r4, r12, 0x1
/* 81475450 | 90 81 00 CC */	stw r4, 0xcc(r1)
/* 81475454 | 89 61 00 59 */	lbz r11, 0x59(r1)
/* 81475458 | 28 0B 00 04 */	cmplwi r11, 0x4
/* 8147545C | 40 82 00 24 */	bne .L_81475480
/* 81475460 | 89 41 00 58 */	lbz r10, 0x58(r1)
/* 81475464 | 28 0A 00 05 */	cmplwi r10, 0x5
/* 81475468 | 40 82 00 18 */	bne .L_81475480
/* 8147546C | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 81475470 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81475474 | 7C 03 20 00 */	cmpw r3, r4
/* 81475478 | 40 80 F2 D0 */	bge .L_81474748
/* 8147547C | 48 00 00 F4 */	b .L_81475570
.L_81475480:
/* 81475480 | 89 3D 00 00 */	lbz r9, 0x0(r29)
/* 81475484 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81475488 | 40 82 00 D8 */	bne .L_81475560
/* 8147548C | 88 BE 01 20 */	lbz r5, 0x120(r30)
/* 81475490 | 38 E5 00 01 */	addi r7, r5, 0x1
/* 81475494 | 98 FE 01 20 */	stb r7, 0x120(r30)
/* 81475498 | 54 E8 06 3E */	clrlwi r8, r7, 24
/* 8147549C | 28 08 00 40 */	cmplwi r8, 0x40
/* 814754A0 | 41 80 00 0C */	blt .L_814754AC
/* 814754A4 | 38 C0 00 00 */	li r6, 0x0
/* 814754A8 | 98 DE 01 20 */	stb r6, 0x120(r30)
.L_814754AC:
/* 814754AC | 88 81 00 59 */	lbz r4, 0x59(r1)
/* 814754B0 | 28 04 00 04 */	cmplwi r4, 0x4
/* 814754B4 | 40 82 00 14 */	bne .L_814754C8
/* 814754B8 | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 814754BC | 38 67 00 01 */	addi r3, r7, 0x1
/* 814754C0 | 54 65 06 3E */	clrlwi r5, r3, 24
/* 814754C4 | 98 BF 00 20 */	stb r5, 0x20(r31)
.L_814754C8:
/* 814754C8 | 8B 61 00 5D */	lbz r27, 0x5d(r1)
/* 814754CC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814754D0 | 41 82 00 54 */	beq .L_81475524
/* 814754D4 | 88 81 00 67 */	lbz r4, 0x67(r1)
/* 814754D8 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 814754DC | 98 C1 00 67 */	stb r6, 0x67(r1)
/* 814754E0 | 80 61 01 04 */	lwz r3, 0x104(r1)
/* 814754E4 | A1 01 00 82 */	lhz r8, 0x82(r1)
/* 814754E8 | 7C A3 42 14 */	add r5, r3, r8
/* 814754EC | 90 A1 01 04 */	stw r5, 0x104(r1)
/* 814754F0 | 38 80 00 20 */	li r4, 0x20
/* 814754F4 | 80 E1 00 BC */	lwz r7, 0xbc(r1)
/* 814754F8 | 80 C1 01 04 */	lwz r6, 0x104(r1)
/* 814754FC | 7C C3 33 78 */	mr r3, r6
/* 81475500 | 54 7C 08 3C */	slwi r28, r3, 1
/* 81475504 | 7C 87 E3 2E */	sthx r4, r7, r28
/* 81475508 | 38 A6 00 01 */	addi r5, r6, 0x1
/* 8147550C | 90 A1 01 04 */	stw r5, 0x104(r1)
/* 81475510 | 81 81 01 04 */	lwz r12, 0x104(r1)
/* 81475514 | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 81475518 | 7C 0C 20 00 */	cmpw r12, r4
/* 8147551C | 41 81 F2 2C */	bgt .L_81474748
/* 81475520 | 48 00 00 28 */	b .L_81475548
.L_81475524:
/* 81475524 | A1 61 00 98 */	lhz r11, 0x98(r1)
/* 81475528 | 81 41 00 BC */	lwz r10, 0xbc(r1)
/* 8147552C | 89 21 00 67 */	lbz r9, 0x67(r1)
/* 81475530 | 7D 23 4B 78 */	mr r3, r9
/* 81475534 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81475538 | 54 85 08 3C */	slwi r5, r4, 1
/* 8147553C | 7D 6A 2B 2E */	sthx r11, r10, r5
/* 81475540 | 39 09 00 01 */	addi r8, r9, 0x1
/* 81475544 | 99 01 00 67 */	stb r8, 0x67(r1)
.L_81475548:
/* 81475548 | 88 E1 00 67 */	lbz r7, 0x67(r1)
/* 8147554C | 54 E6 06 3E */	clrlwi r6, r7, 24
/* 81475550 | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 81475554 | 7C 06 20 40 */	cmplw r6, r4
/* 81475558 | 40 80 F1 F0 */	bge .L_81474748
/* 8147555C | 48 00 00 14 */	b .L_81475570
.L_81475560:
/* 81475560 | 80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 81475564 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81475568 | 7C 05 18 00 */	cmpw r5, r3
/* 8147556C | 40 80 F1 DC */	bge .L_81474748
.L_81475570:
/* 81475570 | 81 01 00 D0 */	lwz r8, 0xd0(r1)
/* 81475574 | 80 81 01 14 */	lwz r4, 0x114(r1)
/* 81475578 | 54 83 10 3A */	slwi r3, r4, 2
/* 8147557C | 7D 28 1A 14 */	add r9, r8, r3
/* 81475580 | 91 21 00 D0 */	stw r9, 0xd0(r1)
/* 81475584 | A0 81 00 9C */	lhz r4, 0x9c(r1)
/* 81475588 | 38 C4 FF FF */	subi r6, r4, 0x1
/* 8147558C | B0 C1 00 9C */	sth r6, 0x9c(r1)
.L_81475590:
/* 81475590 | A0 A1 00 9C */	lhz r5, 0x9c(r1)
/* 81475594 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81475598 | 40 82 F4 24 */	bne .L_814749BC
/* 8147559C | 88 E1 00 59 */	lbz r7, 0x59(r1)
/* 814755A0 | 2C 07 00 04 */	cmpwi r7, 0x4
/* 814755A4 | 41 82 94 70 */	beq .L_8146EA14
/* 814755A8 | 40 80 00 14 */	bge .L_814755BC
/* 814755AC | 2C 07 00 02 */	cmpwi r7, 0x2
/* 814755B0 | 41 82 EB 70 */	beq .L_81474120
/* 814755B4 | 40 80 E2 10 */	bge .L_814737C4
/* 814755B8 | 4B FF F1 90 */	b .L_81474748
.L_814755BC:
/* 814755BC | 2C 07 00 06 */	cmpwi r7, 0x6
/* 814755C0 | 40 80 F1 88 */	bge .L_81474748
/* 814755C4 | 4B FF CF 0C */	b .L_814724D0
.L_814755C8:
/* 814755C8 | 39 61 04 E0 */	addi r11, r1, 0x4e0
/* 814755CC | 48 18 3F 41 */	bl _restgpr_27
/* 814755D0 | 80 01 04 E4 */	lwz r0, 0x4e4(r1)
/* 814755D4 | 7C 08 03 A6 */	mtlr r0
/* 814755D8 | 38 21 04 E0 */	addi r1, r1, 0x4e0
/* 814755DC | 4E 80 00 20 */	blr
.endfn Zi8_8146AF10

# .text:0xAAC4 | 0x814755E0 | size: 0xBCC
.fn Zi8_814755E0, global
/* 814755E0 | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 814755E4 | 7C 08 02 A6 */	mflr r0
/* 814755E8 | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 814755EC | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 814755F0 | 48 18 3E A9 */	bl _savegpr_17
/* 814755F4 | 7C 78 1B 78 */	mr r24, r3
/* 814755F8 | 7C 95 23 78 */	mr r21, r4
/* 814755FC | 90 A1 00 40 */	stw r5, 0x40(r1)
/* 81475600 | B0 C1 00 44 */	sth r6, 0x44(r1)
/* 81475604 | 90 E1 00 48 */	stw r7, 0x48(r1)
/* 81475608 | 7D 19 43 78 */	mr r25, r8
/* 8147560C | B1 21 00 4C */	sth r9, 0x4c(r1)
/* 81475610 | B1 41 00 4E */	sth r10, 0x4e(r1)
/* 81475614 | A2 21 00 EA */	lhz r17, 0xea(r1)
/* 81475618 | A2 41 00 EE */	lhz r18, 0xee(r1)
/* 8147561C | 8A 61 00 F3 */	lbz r19, 0xf3(r1)
/* 81475620 | 83 61 00 F8 */	lwz r27, 0xf8(r1)
/* 81475624 | 83 81 00 FC */	lwz r28, 0xfc(r1)
/* 81475628 | 83 A1 01 00 */	lwz r29, 0x100(r1)
/* 8147562C | 83 C1 01 04 */	lwz r30, 0x104(r1)
/* 81475630 | 8A E1 01 0B */	lbz r23, 0x10b(r1)
/* 81475634 | 82 81 01 14 */	lwz r20, 0x114(r1)
/* 81475638 | 82 C1 01 18 */	lwz r22, 0x118(r1)
/* 8147563C | 83 41 01 20 */	lwz r26, 0x120(r1)
/* 81475640 | 83 E1 01 24 */	lwz r31, 0x124(r1)
/* 81475644 | 38 00 00 00 */	li r0, 0x0
/* 81475648 | B0 01 00 62 */	sth r0, 0x62(r1)
/* 8147564C | A0 7B 00 00 */	lhz r3, 0x0(r27)
/* 81475650 | B0 61 00 60 */	sth r3, 0x60(r1)
/* 81475654 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 81475658 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 8147565C | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81475660 | 98 01 00 51 */	stb r0, 0x51(r1)
/* 81475664 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81475668 | 90 01 00 88 */	stw r0, 0x88(r1)
/* 8147566C | 38 00 00 00 */	li r0, 0x0
/* 81475670 | 98 01 00 50 */	stb r0, 0x50(r1)
/* 81475674 | 38 00 00 00 */	li r0, 0x0
/* 81475678 | 90 01 00 80 */	stw r0, 0x80(r1)
/* 8147567C | 38 00 00 00 */	li r0, 0x0
/* 81475680 | 90 01 00 7C */	stw r0, 0x7c(r1)
/* 81475684 | A0 79 00 10 */	lhz r3, 0x10(r25)
/* 81475688 | 38 63 FF C0 */	subi r3, r3, 0x40
/* 8147568C | 90 61 00 74 */	stw r3, 0x74(r1)
/* 81475690 | 38 60 00 64 */	li r3, 0x64
/* 81475694 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81475698 | 7F E4 FB 78 */	mr r4, r31
/* 8147569C | 48 00 ED E1 */	bl Zi8LogError
/* 814756A0 | A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 814756A4 | 54 00 07 7E */	clrlwi r0, r0, 29
/* 814756A8 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 814756AC | 40 82 00 14 */	bne .L_814756C0
/* 814756B0 | A0 01 00 4E */	lhz r0, 0x4e(r1)
/* 814756B4 | 54 00 07 7E */	clrlwi r0, r0, 29
/* 814756B8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 814756BC | 98 61 00 50 */	stb r3, 0x50(r1)
.L_814756C0:
/* 814756C0 | 38 60 00 01 */	li r3, 0x1
/* 814756C4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814756C8 | 38 80 00 0D */	li r4, 0xd
/* 814756CC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814756D0 | 7F E5 FB 78 */	mr r5, r31
/* 814756D4 | 4B FE 9C DD */	bl Zi8GetTableAddress
/* 814756D8 | 90 61 00 98 */	stw r3, 0x98(r1)
/* 814756DC | 38 60 00 01 */	li r3, 0x1
/* 814756E0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814756E4 | 38 80 00 0E */	li r4, 0xe
/* 814756E8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814756EC | 7F E5 FB 78 */	mr r5, r31
/* 814756F0 | 4B FE 9C C1 */	bl Zi8GetTableAddress
/* 814756F4 | 7C 60 1B 78 */	mr r0, r3
/* 814756F8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 814756FC | 88 01 01 13 */	lbz r0, 0x113(r1)
/* 81475700 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475704 | 41 82 00 9C */	beq .L_814757A0
/* 81475708 | 38 60 00 01 */	li r3, 0x1
/* 8147570C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81475710 | 38 80 00 03 */	li r4, 0x3
/* 81475714 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81475718 | 7F E5 FB 78 */	mr r5, r31
/* 8147571C | 4B FE 9C 95 */	bl Zi8GetTableAddress
/* 81475720 | 7C 60 1B 78 */	mr r0, r3
/* 81475724 | 90 01 00 90 */	stw r0, 0x90(r1)
/* 81475728 | 38 60 00 01 */	li r3, 0x1
/* 8147572C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81475730 | 38 80 00 03 */	li r4, 0x3
/* 81475734 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81475738 | 7F E5 FB 78 */	mr r5, r31
/* 8147573C | 4B FE 9C F5 */	bl Zi8GetTableCount
/* 81475740 | B0 61 00 6E */	sth r3, 0x6e(r1)
/* 81475744 | 38 60 00 01 */	li r3, 0x1
/* 81475748 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147574C | 38 80 00 11 */	li r4, 0x11
/* 81475750 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81475754 | 7F E5 FB 78 */	mr r5, r31
/* 81475758 | 4B FE 9C 59 */	bl Zi8GetTableAddress
/* 8147575C | 90 61 00 80 */	stw r3, 0x80(r1)
/* 81475760 | 38 60 00 01 */	li r3, 0x1
/* 81475764 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81475768 | 38 80 00 11 */	li r4, 0x11
/* 8147576C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81475770 | 7F E5 FB 78 */	mr r5, r31
/* 81475774 | 4B FE 9C BD */	bl Zi8GetTableCount
/* 81475778 | B0 61 00 58 */	sth r3, 0x58(r1)
/* 8147577C | 38 60 00 01 */	li r3, 0x1
/* 81475780 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81475784 | 38 80 00 12 */	li r4, 0x12
/* 81475788 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147578C | 7F E5 FB 78 */	mr r5, r31
/* 81475790 | 4B FE 9C 21 */	bl Zi8GetTableAddress
/* 81475794 | 7C 60 1B 78 */	mr r0, r3
/* 81475798 | 90 01 00 7C */	stw r0, 0x7c(r1)
/* 8147579C | 48 00 00 90 */	b .L_8147582C
.L_814757A0:
/* 814757A0 | 38 60 00 01 */	li r3, 0x1
/* 814757A4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814757A8 | 38 80 00 04 */	li r4, 0x4
/* 814757AC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814757B0 | 7F E5 FB 78 */	mr r5, r31
/* 814757B4 | 4B FE 9B FD */	bl Zi8GetTableAddress
/* 814757B8 | 90 61 00 90 */	stw r3, 0x90(r1)
/* 814757BC | 38 60 00 01 */	li r3, 0x1
/* 814757C0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814757C4 | 38 80 00 04 */	li r4, 0x4
/* 814757C8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814757CC | 7F E5 FB 78 */	mr r5, r31
/* 814757D0 | 4B FE 9C 61 */	bl Zi8GetTableCount
/* 814757D4 | B0 61 00 6E */	sth r3, 0x6e(r1)
/* 814757D8 | 38 60 00 01 */	li r3, 0x1
/* 814757DC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814757E0 | 38 80 00 13 */	li r4, 0x13
/* 814757E4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814757E8 | 7F E5 FB 78 */	mr r5, r31
/* 814757EC | 4B FE 9B C5 */	bl Zi8GetTableAddress
/* 814757F0 | 90 61 00 80 */	stw r3, 0x80(r1)
/* 814757F4 | 38 60 00 01 */	li r3, 0x1
/* 814757F8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814757FC | 38 80 00 13 */	li r4, 0x13
/* 81475800 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81475804 | 7F E5 FB 78 */	mr r5, r31
/* 81475808 | 4B FE 9C 29 */	bl Zi8GetTableCount
/* 8147580C | B0 61 00 58 */	sth r3, 0x58(r1)
/* 81475810 | 38 60 00 01 */	li r3, 0x1
/* 81475814 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81475818 | 38 80 00 14 */	li r4, 0x14
/* 8147581C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81475820 | 7F E5 FB 78 */	mr r5, r31
/* 81475824 | 4B FE 9B 8D */	bl Zi8GetTableAddress
/* 81475828 | 90 61 00 7C */	stw r3, 0x7c(r1)
.L_8147582C:
/* 8147582C | A0 01 00 58 */	lhz r0, 0x58(r1)
/* 81475830 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475834 | 41 82 04 24 */	beq .L_81475C58
/* 81475838 | 38 00 00 00 */	li r0, 0x0
/* 8147583C | B0 01 00 54 */	sth r0, 0x54(r1)
/* 81475840 | A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 81475844 | 60 00 00 07 */	ori r0, r0, 0x7
/* 81475848 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147584C | B0 01 00 5E */	sth r0, 0x5e(r1)
/* 81475850 | A0 01 00 4E */	lhz r0, 0x4e(r1)
/* 81475854 | B0 01 00 5C */	sth r0, 0x5c(r1)
/* 81475858 | 38 00 00 00 */	li r0, 0x0
/* 8147585C | B0 01 00 6C */	sth r0, 0x6c(r1)
/* 81475860 | 48 00 03 E4 */	b .L_81475C44
.L_81475864:
/* 81475864 | 80 61 00 80 */	lwz r3, 0x80(r1)
/* 81475868 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 8147586C | 80 61 00 80 */	lwz r3, 0x80(r1)
/* 81475870 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81475874 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475878 | 54 00 40 2E */	slwi r0, r0, 8
/* 8147587C | 7C 80 03 78 */	or r0, r4, r0
/* 81475880 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475884 | B0 01 00 68 */	sth r0, 0x68(r1)
/* 81475888 | 80 61 00 80 */	lwz r3, 0x80(r1)
/* 8147588C | 88 83 00 02 */	lbz r4, 0x2(r3)
/* 81475890 | 80 61 00 80 */	lwz r3, 0x80(r1)
/* 81475894 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 81475898 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147589C | 54 03 40 2E */	slwi r3, r0, 8
/* 814758A0 | 7C 80 1B 78 */	or r0, r4, r3
/* 814758A4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814758A8 | B0 01 00 52 */	sth r0, 0x52(r1)
/* 814758AC | 56 40 04 3E */	clrlwi r0, r18, 16
/* 814758B0 | A0 61 00 68 */	lhz r3, 0x68(r1)
/* 814758B4 | 56 24 04 3E */	clrlwi r4, r17, 16
/* 814758B8 | 7C 63 20 38 */	and r3, r3, r4
/* 814758BC | 7C 00 18 00 */	cmpw r0, r3
/* 814758C0 | 41 82 00 1C */	beq .L_814758DC
/* 814758C4 | A0 61 00 5C */	lhz r3, 0x5c(r1)
/* 814758C8 | A0 A1 00 68 */	lhz r5, 0x68(r1)
/* 814758CC | A0 01 00 5E */	lhz r0, 0x5e(r1)
/* 814758D0 | 7C A0 00 38 */	and r0, r5, r0
/* 814758D4 | 7C 03 00 00 */	cmpw r3, r0
/* 814758D8 | 41 82 00 24 */	beq .L_814758FC
.L_814758DC:
/* 814758DC | A0 81 00 54 */	lhz r4, 0x54(r1)
/* 814758E0 | A0 61 00 52 */	lhz r3, 0x52(r1)
/* 814758E4 | 7C 04 1A 14 */	add r0, r4, r3
/* 814758E8 | B0 01 00 54 */	sth r0, 0x54(r1)
/* 814758EC | 80 61 00 80 */	lwz r3, 0x80(r1)
/* 814758F0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814758F4 | 90 61 00 80 */	stw r3, 0x80(r1)
/* 814758F8 | 48 00 03 40 */	b .L_81475C38
.L_814758FC:
/* 814758FC | 80 61 00 7C */	lwz r3, 0x7c(r1)
/* 81475900 | A0 01 00 54 */	lhz r0, 0x54(r1)
/* 81475904 | 54 00 08 3C */	slwi r0, r0, 1
/* 81475908 | 7C 63 02 14 */	add r3, r3, r0
/* 8147590C | 90 61 00 70 */	stw r3, 0x70(r1)
/* 81475910 | 38 00 00 00 */	li r0, 0x0
/* 81475914 | B0 01 00 6A */	sth r0, 0x6a(r1)
/* 81475918 | 48 00 02 E4 */	b .L_81475BFC
.L_8147591C:
/* 8147591C | 80 61 00 70 */	lwz r3, 0x70(r1)
/* 81475920 | 88 63 00 00 */	lbz r3, 0x0(r3)
/* 81475924 | 80 81 00 70 */	lwz r4, 0x70(r1)
/* 81475928 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 8147592C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81475930 | 54 80 40 2E */	slwi r0, r4, 8
/* 81475934 | 7C 63 03 78 */	or r3, r3, r0
/* 81475938 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147593C | B0 01 00 68 */	sth r0, 0x68(r1)
/* 81475940 | 56 64 06 3E */	clrlwi r4, r19, 24
/* 81475944 | A0 61 00 68 */	lhz r3, 0x68(r1)
/* 81475948 | 1C 03 00 0C */	mulli r0, r3, 0xc
/* 8147594C | 7C 15 00 AE */	lbzx r0, r21, r0
/* 81475950 | 7C 80 00 38 */	and r0, r4, r0
/* 81475954 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475958 | 41 82 02 8C */	beq .L_81475BE4
/* 8147595C | 2C 14 00 00 */	cmpwi r20, 0x0
/* 81475960 | 41 82 00 20 */	beq .L_81475980
/* 81475964 | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475968 | 7E D4 02 14 */	add r22, r20, r0
/* 8147596C | 88 76 00 00 */	lbz r3, 0x0(r22)
/* 81475970 | 88 01 01 1F */	lbz r0, 0x11f(r1)
/* 81475974 | 7C 60 00 38 */	and r0, r3, r0
/* 81475978 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147597C | 41 82 02 68 */	beq .L_81475BE4
.L_81475980:
/* 81475980 | 56 E3 06 3E */	clrlwi r3, r23, 24
/* 81475984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81475988 | 40 82 00 48 */	bne .L_814759D0
/* 8147598C | 88 61 01 0F */	lbz r3, 0x10f(r1)
/* 81475990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81475994 | 41 82 00 24 */	beq .L_814759B8
/* 81475998 | 80 78 00 24 */	lwz r3, 0x24(r24)
/* 8147599C | A0 81 00 68 */	lhz r4, 0x68(r1)
/* 814759A0 | 7F E5 FB 78 */	mr r5, r31
/* 814759A4 | 4B FF 51 79 */	bl Zi8SetFindCand
/* 814759A8 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 814759AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814759B0 | 40 82 02 34 */	bne .L_81475BE4
/* 814759B4 | 48 00 00 1C */	b .L_814759D0
.L_814759B8:
/* 814759B8 | A0 61 00 68 */	lhz r3, 0x68(r1)
/* 814759BC | 7F E4 FB 78 */	mr r4, r31
/* 814759C0 | 48 00 63 35 */	bl Zi8IsDupWChar
/* 814759C4 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 814759C8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814759CC | 40 82 02 18 */	bne .L_81475BE4
.L_814759D0:
/* 814759D0 | A0 81 00 68 */	lhz r4, 0x68(r1)
/* 814759D4 | 88 1F 01 20 */	lbz r0, 0x120(r31)
/* 814759D8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814759DC | 7C BF 02 14 */	add r5, r31, r0
/* 814759E0 | B0 85 00 A0 */	sth r4, 0xa0(r5)
/* 814759E4 | A0 61 00 68 */	lhz r3, 0x68(r1)
/* 814759E8 | 7F E4 FB 78 */	mr r4, r31
/* 814759EC | 48 00 99 DD */	bl Zi8Ord2Uni
/* 814759F0 | B0 61 00 68 */	sth r3, 0x68(r1)
/* 814759F4 | A0 81 00 68 */	lhz r4, 0x68(r1)
/* 814759F8 | 88 1F 01 20 */	lbz r0, 0x120(r31)
/* 814759FC | 54 00 08 3C */	slwi r0, r0, 1
/* 81475A00 | 7C 7F 02 14 */	add r3, r31, r0
/* 81475A04 | B0 83 00 20 */	sth r4, 0x20(r3)
/* 81475A08 | A0 A1 00 68 */	lhz r5, 0x68(r1)
/* 81475A0C | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 81475A10 | A0 01 00 62 */	lhz r0, 0x62(r1)
/* 81475A14 | 7C 04 00 40 */	cmplw r4, r0
/* 81475A18 | 41 82 01 CC */	beq .L_81475BE4
/* 81475A1C | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475A20 | B0 01 00 62 */	sth r0, 0x62(r1)
/* 81475A24 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 81475A28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475A2C | 41 82 00 24 */	beq .L_81475A50
/* 81475A30 | 38 61 00 68 */	addi r3, r1, 0x68
/* 81475A34 | 38 80 00 01 */	li r4, 0x1
/* 81475A38 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81475A3C | 7F E5 FB 78 */	mr r5, r31
/* 81475A40 | 48 00 63 B1 */	bl Zi8IsDupWordW
/* 81475A44 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81475A48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475A4C | 40 82 01 98 */	bne .L_81475BE4
.L_81475A50:
/* 81475A50 | A0 01 00 60 */	lhz r0, 0x60(r1)
/* 81475A54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475A58 | 41 82 00 14 */	beq .L_81475A6C
/* 81475A5C | A0 61 00 60 */	lhz r3, 0x60(r1)
/* 81475A60 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81475A64 | B0 01 00 60 */	sth r0, 0x60(r1)
/* 81475A68 | 48 00 01 7C */	b .L_81475BE4
.L_81475A6C:
/* 81475A6C | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 81475A70 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475A74 | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 81475A78 | 88 19 00 00 */	lbz r0, 0x0(r25)
/* 81475A7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475A80 | 40 82 01 1C */	bne .L_81475B9C
/* 81475A84 | 88 7F 01 20 */	lbz r3, 0x120(r31)
/* 81475A88 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475A8C | 98 1F 01 20 */	stb r0, 0x120(r31)
/* 81475A90 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81475A94 | 28 00 00 40 */	cmplwi r0, 0x40
/* 81475A98 | 41 80 00 0C */	blt .L_81475AA4
/* 81475A9C | 38 00 00 00 */	li r0, 0x0
/* 81475AA0 | 98 1F 01 20 */	stb r0, 0x120(r31)
.L_81475AA4:
/* 81475AA4 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 81475AA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475AAC | 41 82 00 88 */	beq .L_81475B34
/* 81475AB0 | 88 61 00 51 */	lbz r3, 0x51(r1)
/* 81475AB4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81475AB8 | 98 61 00 51 */	stb r3, 0x51(r1)
/* 81475ABC | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475AC0 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 81475AC4 | 54 64 08 3C */	slwi r4, r3, 1
/* 81475AC8 | 7C 1A 23 2E */	sthx r0, r26, r4
/* 81475ACC | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475AD0 | 90 01 00 88 */	stw r0, 0x88(r1)
/* 81475AD4 | 38 00 00 20 */	li r0, 0x20
/* 81475AD8 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 81475ADC | 54 64 08 3C */	slwi r4, r3, 1
/* 81475AE0 | 7C 1A 23 2E */	sthx r0, r26, r4
/* 81475AE4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475AE8 | 90 01 00 88 */	stw r0, 0x88(r1)
/* 81475AEC | 80 01 00 88 */	lwz r0, 0x88(r1)
/* 81475AF0 | 80 61 00 74 */	lwz r3, 0x74(r1)
/* 81475AF4 | 7C 00 18 00 */	cmpw r0, r3
/* 81475AF8 | 40 81 00 58 */	ble .L_81475B50
/* 81475AFC | A0 01 00 60 */	lhz r0, 0x60(r1)
/* 81475B00 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 81475B04 | 80 01 00 8C */	lwz r0, 0x8c(r1)
/* 81475B08 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81475B0C | 88 01 00 51 */	lbz r0, 0x51(r1)
/* 81475B10 | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 81475B14 | 80 01 00 88 */	lwz r0, 0x88(r1)
/* 81475B18 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81475B1C | 38 60 0B 54 */	li r3, 0xb54
/* 81475B20 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81475B24 | 7F E4 FB 78 */	mr r4, r31
/* 81475B28 | 48 00 E9 59 */	bl Zi8ReplaceLastError
/* 81475B2C | 38 60 00 00 */	li r3, 0x0
/* 81475B30 | 48 00 06 64 */	b .L_81476194
.L_81475B34:
/* 81475B34 | A0 81 00 68 */	lhz r4, 0x68(r1)
/* 81475B38 | 88 61 00 51 */	lbz r3, 0x51(r1)
/* 81475B3C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81475B40 | 54 00 08 3C */	slwi r0, r0, 1
/* 81475B44 | 7C 9A 03 2E */	sthx r4, r26, r0
/* 81475B48 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475B4C | 98 01 00 51 */	stb r0, 0x51(r1)
.L_81475B50:
/* 81475B50 | 88 01 00 51 */	lbz r0, 0x51(r1)
/* 81475B54 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81475B58 | 88 78 00 1C */	lbz r3, 0x1c(r24)
/* 81475B5C | 7C 00 18 40 */	cmplw r0, r3
/* 81475B60 | 41 80 00 84 */	blt .L_81475BE4
/* 81475B64 | A0 01 00 60 */	lhz r0, 0x60(r1)
/* 81475B68 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 81475B6C | 80 01 00 8C */	lwz r0, 0x8c(r1)
/* 81475B70 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81475B74 | 88 01 00 51 */	lbz r0, 0x51(r1)
/* 81475B78 | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 81475B7C | 80 01 00 88 */	lwz r0, 0x88(r1)
/* 81475B80 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81475B84 | 38 60 0B 55 */	li r3, 0xb55
/* 81475B88 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81475B8C | 7F E4 FB 78 */	mr r4, r31
/* 81475B90 | 48 00 E8 F1 */	bl Zi8ReplaceLastError
/* 81475B94 | 38 60 00 00 */	li r3, 0x0
/* 81475B98 | 48 00 05 FC */	b .L_81476194
.L_81475B9C:
/* 81475B9C | 80 01 00 8C */	lwz r0, 0x8c(r1)
/* 81475BA0 | 80 79 00 0C */	lwz r3, 0xc(r25)
/* 81475BA4 | 7C 00 18 00 */	cmpw r0, r3
/* 81475BA8 | 41 80 00 3C */	blt .L_81475BE4
/* 81475BAC | A0 01 00 60 */	lhz r0, 0x60(r1)
/* 81475BB0 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 81475BB4 | 80 01 00 8C */	lwz r0, 0x8c(r1)
/* 81475BB8 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81475BBC | 88 01 00 51 */	lbz r0, 0x51(r1)
/* 81475BC0 | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 81475BC4 | 80 01 00 88 */	lwz r0, 0x88(r1)
/* 81475BC8 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81475BCC | 38 60 0B 56 */	li r3, 0xb56
/* 81475BD0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81475BD4 | 7F E4 FB 78 */	mr r4, r31
/* 81475BD8 | 48 00 E8 A9 */	bl Zi8ReplaceLastError
/* 81475BDC | 38 60 00 00 */	li r3, 0x0
/* 81475BE0 | 48 00 05 B4 */	b .L_81476194
.L_81475BE4:
/* 81475BE4 | A0 61 00 6A */	lhz r3, 0x6a(r1)
/* 81475BE8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475BEC | B0 01 00 6A */	sth r0, 0x6a(r1)
/* 81475BF0 | 80 61 00 70 */	lwz r3, 0x70(r1)
/* 81475BF4 | 38 03 00 02 */	addi r0, r3, 0x2
/* 81475BF8 | 90 01 00 70 */	stw r0, 0x70(r1)
.L_81475BFC:
/* 81475BFC | A0 01 00 6A */	lhz r0, 0x6a(r1)
/* 81475C00 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475C04 | A0 61 00 52 */	lhz r3, 0x52(r1)
/* 81475C08 | 7C 00 18 40 */	cmplw r0, r3
/* 81475C0C | 41 80 FD 10 */	blt .L_8147591C
/* 81475C10 | 88 01 00 50 */	lbz r0, 0x50(r1)
/* 81475C14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475C18 | 40 82 00 40 */	bne .L_81475C58
/* 81475C1C | A0 01 00 54 */	lhz r0, 0x54(r1)
/* 81475C20 | A0 61 00 52 */	lhz r3, 0x52(r1)
/* 81475C24 | 7C 00 1A 14 */	add r0, r0, r3
/* 81475C28 | B0 01 00 54 */	sth r0, 0x54(r1)
/* 81475C2C | 80 61 00 80 */	lwz r3, 0x80(r1)
/* 81475C30 | 38 03 00 04 */	addi r0, r3, 0x4
/* 81475C34 | 90 01 00 80 */	stw r0, 0x80(r1)
.L_81475C38:
/* 81475C38 | A0 61 00 6C */	lhz r3, 0x6c(r1)
/* 81475C3C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475C40 | B0 01 00 6C */	sth r0, 0x6c(r1)
.L_81475C44:
/* 81475C44 | A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 81475C48 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475C4C | A0 61 00 58 */	lhz r3, 0x58(r1)
/* 81475C50 | 7C 00 18 40 */	cmplw r0, r3
/* 81475C54 | 41 80 FC 10 */	blt .L_81475864
.L_81475C58:
/* 81475C58 | A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 81475C5C | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 81475C60 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475C64 | B0 01 00 5E */	sth r0, 0x5e(r1)
/* 81475C68 | A0 01 00 4E */	lhz r0, 0x4e(r1)
/* 81475C6C | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 81475C70 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475C74 | B0 01 00 5C */	sth r0, 0x5c(r1)
/* 81475C78 | 38 00 00 01 */	li r0, 0x1
/* 81475C7C | B0 01 00 6C */	sth r0, 0x6c(r1)
/* 81475C80 | 48 00 04 DC */	b .L_8147615C
.L_81475C84:
/* 81475C84 | 80 61 00 90 */	lwz r3, 0x90(r1)
/* 81475C88 | A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 81475C8C | 54 00 08 3C */	slwi r0, r0, 1
/* 81475C90 | 7C 83 00 AE */	lbzx r4, r3, r0
/* 81475C94 | 80 61 00 90 */	lwz r3, 0x90(r1)
/* 81475C98 | A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 81475C9C | 54 00 08 3C */	slwi r0, r0, 1
/* 81475CA0 | 7C 60 1A 14 */	add r3, r0, r3
/* 81475CA4 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81475CA8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475CAC | 54 00 40 2E */	slwi r0, r0, 8
/* 81475CB0 | 7C 80 03 78 */	or r0, r4, r0
/* 81475CB4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475CB8 | B0 01 00 68 */	sth r0, 0x68(r1)
/* 81475CBC | A0 81 00 5C */	lhz r4, 0x5c(r1)
/* 81475CC0 | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475CC4 | A0 61 00 5E */	lhz r3, 0x5e(r1)
/* 81475CC8 | 7C 00 18 38 */	and r0, r0, r3
/* 81475CCC | 7C 04 00 00 */	cmpw r4, r0
/* 81475CD0 | 40 82 04 80 */	bne .L_81476150
/* 81475CD4 | 56 44 04 3E */	clrlwi r4, r18, 16
/* 81475CD8 | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475CDC | 56 23 04 3E */	clrlwi r3, r17, 16
/* 81475CE0 | 7C 00 18 38 */	and r0, r0, r3
/* 81475CE4 | 7C 04 00 00 */	cmpw r4, r0
/* 81475CE8 | 41 82 04 68 */	beq .L_81476150
/* 81475CEC | 80 61 00 98 */	lwz r3, 0x98(r1)
/* 81475CF0 | A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 81475CF4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81475CF8 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81475CFC | B0 01 00 66 */	sth r0, 0x66(r1)
/* 81475D00 | 80 81 00 98 */	lwz r4, 0x98(r1)
/* 81475D04 | A0 61 00 6C */	lhz r3, 0x6c(r1)
/* 81475D08 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475D0C | 54 00 08 3C */	slwi r0, r0, 1
/* 81475D10 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 81475D14 | B0 01 00 64 */	sth r0, 0x64(r1)
/* 81475D18 | A0 01 00 66 */	lhz r0, 0x66(r1)
/* 81475D1C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81475D20 | 54 03 40 2E */	slwi r3, r0, 8
/* 81475D24 | A0 01 00 66 */	lhz r0, 0x66(r1)
/* 81475D28 | 54 00 C6 3E */	extrwi r0, r0, 8, 16
/* 81475D2C | 7C 60 03 78 */	or r0, r3, r0
/* 81475D30 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475D34 | B0 01 00 66 */	sth r0, 0x66(r1)
/* 81475D38 | A0 01 00 64 */	lhz r0, 0x64(r1)
/* 81475D3C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81475D40 | 54 03 40 2E */	slwi r3, r0, 8
/* 81475D44 | A0 01 00 64 */	lhz r0, 0x64(r1)
/* 81475D48 | 54 00 C6 3E */	extrwi r0, r0, 8, 16
/* 81475D4C | 7C 60 03 78 */	or r0, r3, r0
/* 81475D50 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475D54 | B0 01 00 64 */	sth r0, 0x64(r1)
/* 81475D58 | A0 01 00 66 */	lhz r0, 0x66(r1)
/* 81475D5C | B0 01 00 6A */	sth r0, 0x6a(r1)
/* 81475D60 | 48 00 03 DC */	b .L_8147613C
.L_81475D64:
/* 81475D64 | 80 61 00 94 */	lwz r3, 0x94(r1)
/* 81475D68 | A0 01 00 6A */	lhz r0, 0x6a(r1)
/* 81475D6C | 54 00 08 3C */	slwi r0, r0, 1
/* 81475D70 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81475D74 | B0 01 00 68 */	sth r0, 0x68(r1)
/* 81475D78 | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475D7C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81475D80 | 54 00 40 2E */	slwi r0, r0, 8
/* 81475D84 | A0 61 00 68 */	lhz r3, 0x68(r1)
/* 81475D88 | 54 63 C6 3E */	extrwi r3, r3, 8, 16
/* 81475D8C | 7C 00 1B 78 */	or r0, r0, r3
/* 81475D90 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475D94 | B0 01 00 68 */	sth r0, 0x68(r1)
/* 81475D98 | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475D9C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475DA0 | A0 61 00 F6 */	lhz r3, 0xf6(r1)
/* 81475DA4 | 7C 00 18 40 */	cmplw r0, r3
/* 81475DA8 | 40 80 03 88 */	bge .L_81476130
/* 81475DAC | 56 63 06 3E */	clrlwi r3, r19, 24
/* 81475DB0 | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475DB4 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 81475DB8 | 7C 15 00 AE */	lbzx r0, r21, r0
/* 81475DBC | 7C 63 00 38 */	and r3, r3, r0
/* 81475DC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81475DC4 | 41 82 03 6C */	beq .L_81476130
/* 81475DC8 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 81475DCC | 41 82 00 20 */	beq .L_81475DEC
/* 81475DD0 | A0 61 00 68 */	lhz r3, 0x68(r1)
/* 81475DD4 | 7E D4 1A 14 */	add r22, r20, r3
/* 81475DD8 | 88 76 00 00 */	lbz r3, 0x0(r22)
/* 81475DDC | 88 01 01 1F */	lbz r0, 0x11f(r1)
/* 81475DE0 | 7C 63 00 38 */	and r3, r3, r0
/* 81475DE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81475DE8 | 41 82 03 48 */	beq .L_81476130
.L_81475DEC:
/* 81475DEC | 88 61 00 50 */	lbz r3, 0x50(r1)
/* 81475DF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81475DF4 | 41 82 00 D4 */	beq .L_81475EC8
/* 81475DF8 | A0 61 00 68 */	lhz r3, 0x68(r1)
/* 81475DFC | 1C 63 00 0C */	mulli r3, r3, 0xc
/* 81475E00 | 7C 75 1A 14 */	add r3, r21, r3
/* 81475E04 | 90 61 00 84 */	stw r3, 0x84(r1)
/* 81475E08 | 38 00 00 00 */	li r0, 0x0
/* 81475E0C | B0 01 00 5A */	sth r0, 0x5a(r1)
/* 81475E10 | 38 00 00 00 */	li r0, 0x0
/* 81475E14 | 90 01 00 78 */	stw r0, 0x78(r1)
/* 81475E18 | 38 01 00 5A */	addi r0, r1, 0x5a
/* 81475E1C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81475E20 | 38 01 00 84 */	addi r0, r1, 0x84
/* 81475E24 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81475E28 | 38 01 00 78 */	addi r0, r1, 0x78
/* 81475E2C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81475E30 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 81475E34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81475E38 | 38 00 00 01 */	li r0, 0x1
/* 81475E3C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81475E40 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81475E44 | 38 80 00 01 */	li r4, 0x1
/* 81475E48 | 54 83 06 3E */	clrlwi r3, r4, 24
/* 81475E4C | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81475E50 | 56 20 04 3E */	clrlwi r0, r17, 16
/* 81475E54 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81475E58 | 56 40 04 3E */	clrlwi r0, r18, 16
/* 81475E5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81475E60 | 56 60 06 3E */	clrlwi r0, r19, 24
/* 81475E64 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 81475E68 | 88 18 00 04 */	lbz r0, 0x4(r24)
/* 81475E6C | 54 00 06 72 */	rlwinm r0, r0, 0, 25, 25
/* 81475E70 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81475E74 | 90 61 00 2C */	stw r3, 0x2c(r1)
/* 81475E78 | A0 81 00 68 */	lhz r4, 0x68(r1)
/* 81475E7C | 90 81 00 30 */	stw r4, 0x30(r1)
/* 81475E80 | 38 61 00 56 */	addi r3, r1, 0x56
/* 81475E84 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 81475E88 | 38 00 00 00 */	li r0, 0x0
/* 81475E8C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81475E90 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 81475E94 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81475E98 | 80 61 00 90 */	lwz r3, 0x90(r1)
/* 81475E9C | 7E A4 AB 78 */	mr r4, r21
/* 81475EA0 | 80 A1 00 40 */	lwz r5, 0x40(r1)
/* 81475EA4 | A0 C1 00 44 */	lhz r6, 0x44(r1)
/* 81475EA8 | 80 E1 00 48 */	lwz r7, 0x48(r1)
/* 81475EAC | 81 01 00 84 */	lwz r8, 0x84(r1)
/* 81475EB0 | 39 21 00 4C */	addi r9, r1, 0x4c
/* 81475EB4 | 39 41 00 4E */	addi r10, r1, 0x4e
/* 81475EB8 | 48 00 79 85 */	bl Zi8MatchPhonetic
/* 81475EBC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81475EC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475EC4 | 41 82 02 6C */	beq .L_81476130
.L_81475EC8:
/* 81475EC8 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 81475ECC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475ED0 | 40 82 00 48 */	bne .L_81475F18
/* 81475ED4 | 88 01 01 0F */	lbz r0, 0x10f(r1)
/* 81475ED8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475EDC | 41 82 00 24 */	beq .L_81475F00
/* 81475EE0 | 80 78 00 24 */	lwz r3, 0x24(r24)
/* 81475EE4 | A0 81 00 68 */	lhz r4, 0x68(r1)
/* 81475EE8 | 7F E5 FB 78 */	mr r5, r31
/* 81475EEC | 4B FF 4C 31 */	bl Zi8SetFindCand
/* 81475EF0 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81475EF4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81475EF8 | 40 82 02 38 */	bne .L_81476130
/* 81475EFC | 48 00 00 1C */	b .L_81475F18
.L_81475F00:
/* 81475F00 | A0 61 00 68 */	lhz r3, 0x68(r1)
/* 81475F04 | 7F E4 FB 78 */	mr r4, r31
/* 81475F08 | 48 00 5D ED */	bl Zi8IsDupWChar
/* 81475F0C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81475F10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81475F14 | 40 82 02 1C */	bne .L_81476130
.L_81475F18:
/* 81475F18 | A0 A1 00 68 */	lhz r5, 0x68(r1)
/* 81475F1C | 88 1F 01 20 */	lbz r0, 0x120(r31)
/* 81475F20 | 54 00 08 3C */	slwi r0, r0, 1
/* 81475F24 | 7C 9F 02 14 */	add r4, r31, r0
/* 81475F28 | B0 A4 00 A0 */	sth r5, 0xa0(r4)
/* 81475F2C | A0 61 00 68 */	lhz r3, 0x68(r1)
/* 81475F30 | 7F E4 FB 78 */	mr r4, r31
/* 81475F34 | 48 00 94 95 */	bl Zi8Ord2Uni
/* 81475F38 | B0 61 00 68 */	sth r3, 0x68(r1)
/* 81475F3C | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475F40 | 88 7F 01 20 */	lbz r3, 0x120(r31)
/* 81475F44 | 54 63 08 3C */	slwi r3, r3, 1
/* 81475F48 | 7C 7F 1A 14 */	add r3, r31, r3
/* 81475F4C | B0 03 00 20 */	sth r0, 0x20(r3)
/* 81475F50 | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475F54 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81475F58 | A0 61 00 62 */	lhz r3, 0x62(r1)
/* 81475F5C | 7C 00 18 40 */	cmplw r0, r3
/* 81475F60 | 41 82 01 D0 */	beq .L_81476130
/* 81475F64 | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81475F68 | B0 01 00 62 */	sth r0, 0x62(r1)
/* 81475F6C | 56 E3 06 3E */	clrlwi r3, r23, 24
/* 81475F70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81475F74 | 41 82 00 24 */	beq .L_81475F98
/* 81475F78 | 38 61 00 68 */	addi r3, r1, 0x68
/* 81475F7C | 38 80 00 01 */	li r4, 0x1
/* 81475F80 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81475F84 | 7F E5 FB 78 */	mr r5, r31
/* 81475F88 | 48 00 5E 69 */	bl Zi8IsDupWordW
/* 81475F8C | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81475F90 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81475F94 | 40 82 01 9C */	bne .L_81476130
.L_81475F98:
/* 81475F98 | A0 01 00 60 */	lhz r0, 0x60(r1)
/* 81475F9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475FA0 | 41 82 00 14 */	beq .L_81475FB4
/* 81475FA4 | A0 81 00 60 */	lhz r4, 0x60(r1)
/* 81475FA8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81475FAC | B0 01 00 60 */	sth r0, 0x60(r1)
/* 81475FB0 | 48 00 01 80 */	b .L_81476130
.L_81475FB4:
/* 81475FB4 | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 81475FB8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475FBC | 90 01 00 8C */	stw r0, 0x8c(r1)
/* 81475FC0 | 88 99 00 00 */	lbz r4, 0x0(r25)
/* 81475FC4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81475FC8 | 40 82 01 20 */	bne .L_814760E8
/* 81475FCC | 88 7F 01 20 */	lbz r3, 0x120(r31)
/* 81475FD0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81475FD4 | 98 1F 01 20 */	stb r0, 0x120(r31)
/* 81475FD8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81475FDC | 28 00 00 40 */	cmplwi r0, 0x40
/* 81475FE0 | 41 80 00 0C */	blt .L_81475FEC
/* 81475FE4 | 38 00 00 00 */	li r0, 0x0
/* 81475FE8 | 98 1F 01 20 */	stb r0, 0x120(r31)
.L_81475FEC:
/* 81475FEC | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 81475FF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81475FF4 | 41 82 00 88 */	beq .L_8147607C
/* 81475FF8 | 88 61 00 51 */	lbz r3, 0x51(r1)
/* 81475FFC | 38 03 00 01 */	addi r0, r3, 0x1
/* 81476000 | 98 01 00 51 */	stb r0, 0x51(r1)
/* 81476004 | A0 01 00 68 */	lhz r0, 0x68(r1)
/* 81476008 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 8147600C | 54 64 08 3C */	slwi r4, r3, 1
/* 81476010 | 7C 1A 23 2E */	sthx r0, r26, r4
/* 81476014 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81476018 | 90 61 00 88 */	stw r3, 0x88(r1)
/* 8147601C | 38 60 00 20 */	li r3, 0x20
/* 81476020 | 80 81 00 88 */	lwz r4, 0x88(r1)
/* 81476024 | 54 80 08 3C */	slwi r0, r4, 1
/* 81476028 | 7C 7A 03 2E */	sthx r3, r26, r0
/* 8147602C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81476030 | 90 01 00 88 */	stw r0, 0x88(r1)
/* 81476034 | 80 A1 00 88 */	lwz r5, 0x88(r1)
/* 81476038 | 80 61 00 74 */	lwz r3, 0x74(r1)
/* 8147603C | 7C 05 18 00 */	cmpw r5, r3
/* 81476040 | 40 81 00 5C */	ble .L_8147609C
/* 81476044 | A0 81 00 60 */	lhz r4, 0x60(r1)
/* 81476048 | B0 9B 00 00 */	sth r4, 0x0(r27)
/* 8147604C | 80 01 00 8C */	lwz r0, 0x8c(r1)
/* 81476050 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81476054 | 88 01 00 51 */	lbz r0, 0x51(r1)
/* 81476058 | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 8147605C | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 81476060 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 81476064 | 38 60 0B 54 */	li r3, 0xb54
/* 81476068 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147606C | 7F E4 FB 78 */	mr r4, r31
/* 81476070 | 48 00 E4 11 */	bl Zi8ReplaceLastError
/* 81476074 | 38 60 00 00 */	li r3, 0x0
/* 81476078 | 48 00 01 1C */	b .L_81476194
.L_8147607C:
/* 8147607C | A0 A1 00 68 */	lhz r5, 0x68(r1)
/* 81476080 | 88 81 00 51 */	lbz r4, 0x51(r1)
/* 81476084 | 7C 80 23 78 */	mr r0, r4
/* 81476088 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147608C | 54 03 08 3C */	slwi r3, r0, 1
/* 81476090 | 7C BA 1B 2E */	sthx r5, r26, r3
/* 81476094 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81476098 | 98 01 00 51 */	stb r0, 0x51(r1)
.L_8147609C:
/* 8147609C | 88 01 00 51 */	lbz r0, 0x51(r1)
/* 814760A0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814760A4 | 88 78 00 1C */	lbz r3, 0x1c(r24)
/* 814760A8 | 7C 00 18 40 */	cmplw r0, r3
/* 814760AC | 41 80 00 84 */	blt .L_81476130
/* 814760B0 | A0 01 00 60 */	lhz r0, 0x60(r1)
/* 814760B4 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 814760B8 | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 814760BC | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 814760C0 | 88 01 00 51 */	lbz r0, 0x51(r1)
/* 814760C4 | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 814760C8 | 80 01 00 88 */	lwz r0, 0x88(r1)
/* 814760CC | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814760D0 | 38 60 0B 55 */	li r3, 0xb55
/* 814760D4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814760D8 | 7F E4 FB 78 */	mr r4, r31
/* 814760DC | 48 00 E3 A5 */	bl Zi8ReplaceLastError
/* 814760E0 | 38 60 00 00 */	li r3, 0x0
/* 814760E4 | 48 00 00 B0 */	b .L_81476194
.L_814760E8:
/* 814760E8 | 80 61 00 8C */	lwz r3, 0x8c(r1)
/* 814760EC | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 814760F0 | 7C 03 00 00 */	cmpw r3, r0
/* 814760F4 | 41 80 00 3C */	blt .L_81476130
/* 814760F8 | A0 01 00 60 */	lhz r0, 0x60(r1)
/* 814760FC | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 81476100 | 80 01 00 8C */	lwz r0, 0x8c(r1)
/* 81476104 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81476108 | 88 01 00 51 */	lbz r0, 0x51(r1)
/* 8147610C | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 81476110 | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 81476114 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 81476118 | 38 60 0B 56 */	li r3, 0xb56
/* 8147611C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81476120 | 7F E4 FB 78 */	mr r4, r31
/* 81476124 | 48 00 E3 5D */	bl Zi8ReplaceLastError
/* 81476128 | 38 60 00 00 */	li r3, 0x0
/* 8147612C | 48 00 00 68 */	b .L_81476194
.L_81476130:
/* 81476130 | A0 61 00 6A */	lhz r3, 0x6a(r1)
/* 81476134 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81476138 | B0 01 00 6A */	sth r0, 0x6a(r1)
.L_8147613C:
/* 8147613C | A0 61 00 6A */	lhz r3, 0x6a(r1)
/* 81476140 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81476144 | A0 01 00 64 */	lhz r0, 0x64(r1)
/* 81476148 | 7C 03 00 40 */	cmplw r3, r0
/* 8147614C | 41 80 FC 18 */	blt .L_81475D64
.L_81476150:
/* 81476150 | A0 81 00 6C */	lhz r4, 0x6c(r1)
/* 81476154 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81476158 | B0 01 00 6C */	sth r0, 0x6c(r1)
.L_8147615C:
/* 8147615C | A0 61 00 6C */	lhz r3, 0x6c(r1)
/* 81476160 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81476164 | A0 01 00 6E */	lhz r0, 0x6e(r1)
/* 81476168 | 7C 03 00 40 */	cmplw r3, r0
/* 8147616C | 41 80 FB 18 */	blt .L_81475C84
/* 81476170 | A0 81 00 60 */	lhz r4, 0x60(r1)
/* 81476174 | B0 9B 00 00 */	sth r4, 0x0(r27)
/* 81476178 | 80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8147617C | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81476180 | 88 61 00 51 */	lbz r3, 0x51(r1)
/* 81476184 | 98 7D 00 00 */	stb r3, 0x0(r29)
/* 81476188 | 80 01 00 88 */	lwz r0, 0x88(r1)
/* 8147618C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81476190 | 38 60 00 01 */	li r3, 0x1
.L_81476194:
/* 81476194 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 81476198 | 48 18 33 4D */	bl _restgpr_17
/* 8147619C | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 814761A0 | 7C 08 03 A6 */	mtlr r0
/* 814761A4 | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 814761A8 | 4E 80 00 20 */	blr
.endfn Zi8_814755E0

# .text:0xB690 | 0x814761AC | size: 0x1CC
.fn Zi8GetElementCount, global
/* 814761AC | 94 21 FD D0 */	stwu r1, -0x230(r1)
/* 814761B0 | 7C 08 02 A6 */	mflr r0
/* 814761B4 | 90 01 02 34 */	stw r0, 0x234(r1)
/* 814761B8 | 39 61 02 30 */	addi r11, r1, 0x230
/* 814761BC | 48 18 32 FD */	bl _savegpr_25
/* 814761C0 | 7C 7E 1B 78 */	mr r30, r3
/* 814761C4 | 7C 9C 23 78 */	mr r28, r4
/* 814761C8 | 7C BA 2B 78 */	mr r26, r5
/* 814761CC | 7C D9 33 78 */	mr r25, r6
/* 814761D0 | A0 19 00 1A */	lhz r0, 0x1a(r25)
/* 814761D4 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814761D8 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 814761DC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814761E0 | 40 81 00 10 */	ble .L_814761F0
/* 814761E4 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 814761E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814761EC | 40 82 00 0C */	bne .L_814761F8
.L_814761F0:
/* 814761F0 | 7F 83 E3 78 */	mr r3, r28
/* 814761F4 | 48 00 01 6C */	b .L_81476360
.L_814761F8:
/* 814761F8 | 3B E0 00 00 */	li r31, 0x0
/* 814761FC | 48 00 00 44 */	b .L_81476240
.L_81476200:
/* 81476200 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81476204 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476208 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 8147620C | 28 00 00 3B */	cmplwi r0, 0x3b
/* 81476210 | 41 82 00 2C */	beq .L_8147623C
/* 81476214 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81476218 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147621C | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81476220 | 28 00 00 61 */	cmplwi r0, 0x61
/* 81476224 | 41 80 00 2C */	blt .L_81476250
/* 81476228 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8147622C | 54 00 08 3C */	slwi r0, r0, 1
/* 81476230 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81476234 | 28 00 00 7A */	cmplwi r0, 0x7a
/* 81476238 | 41 81 00 18 */	bgt .L_81476250
.L_8147623C:
/* 8147623C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81476240:
/* 81476240 | 57 E3 06 3E */	clrlwi r3, r31, 24
/* 81476244 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 81476248 | 7C 03 00 40 */	cmplw r3, r0
/* 8147624C | 41 80 FF B4 */	blt .L_81476200
.L_81476250:
/* 81476250 | 57 E3 06 3E */	clrlwi r3, r31, 24
/* 81476254 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 81476258 | 7C 03 00 40 */	cmplw r3, r0
/* 8147625C | 40 82 00 0C */	bne .L_81476268
/* 81476260 | 7F 83 E3 78 */	mr r3, r28
/* 81476264 | 48 00 00 FC */	b .L_81476360
.L_81476268:
/* 81476268 | 3C 60 00 01 */	lis r3, 0x1
/* 8147626C | 38 63 F3 60 */	subi r3, r3, 0xca0
/* 81476270 | B0 79 00 1A */	sth r3, 0x1a(r25)
/* 81476274 | 7F C3 F3 78 */	mr r3, r30
/* 81476278 | 57 84 06 3E */	clrlwi r4, r28, 24
/* 8147627C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81476280 | 38 C0 01 00 */	li r6, 0x100
/* 81476284 | 54 C6 04 3E */	clrlwi r6, r6, 16
/* 81476288 | 7F 27 CB 78 */	mr r7, r25
/* 8147628C | 48 00 9C 91 */	bl Zi8ZHaddSpace
/* 81476290 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 81476294 | B0 19 00 1A */	sth r0, 0x1a(r25)
/* 81476298 | 3B 60 00 00 */	li r27, 0x0
/* 8147629C | 7F 7D DB 78 */	mr r29, r27
/* 814762A0 | 7F BF EB 78 */	mr r31, r29
/* 814762A4 | 48 00 00 9C */	b .L_81476340
.L_814762A8:
/* 814762A8 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 814762AC | 54 00 08 3C */	slwi r0, r0, 1
/* 814762B0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814762B4 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814762B8 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 814762BC | 40 82 00 20 */	bne .L_814762DC
/* 814762C0 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 814762C4 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 814762C8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814762CC | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 814762D0 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 814762D4 | 40 82 00 68 */	bne .L_8147633C
/* 814762D8 | 48 00 00 5C */	b .L_81476334
.L_814762DC:
/* 814762DC | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 814762E0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814762E4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814762E8 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814762EC | 28 00 F3 31 */	cmplwi r0, 0xf331
/* 814762F0 | 41 80 00 44 */	blt .L_81476334
/* 814762F4 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 814762F8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814762FC | 38 61 00 10 */	addi r3, r1, 0x10
/* 81476300 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81476304 | 28 00 F3 35 */	cmplwi r0, 0xf335
/* 81476308 | 41 81 00 2C */	bgt .L_81476334
/* 8147630C | 3B 5A FF FF */	subi r26, r26, 0x1
/* 81476310 | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 81476314 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81476318 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147631C | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81476320 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 81476324 | 40 82 00 10 */	bne .L_81476334
/* 81476328 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147632C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81476330 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81476334:
/* 81476334 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81476338 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_8147633C:
/* 8147633C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81476340:
/* 81476340 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 81476344 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81476348 | 41 82 00 14 */	beq .L_8147635C
/* 8147634C | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 81476350 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 81476354 | 7C 03 00 40 */	cmplw r3, r0
/* 81476358 | 41 80 FF 50 */	blt .L_814762A8
.L_8147635C:
/* 8147635C | 7F 63 DB 78 */	mr r3, r27
.L_81476360:
/* 81476360 | 39 61 02 30 */	addi r11, r1, 0x230
/* 81476364 | 48 18 31 A1 */	bl _restgpr_25
/* 81476368 | 80 01 02 34 */	lwz r0, 0x234(r1)
/* 8147636C | 7C 08 03 A6 */	mtlr r0
/* 81476370 | 38 21 02 30 */	addi r1, r1, 0x230
/* 81476374 | 4E 80 00 20 */	blr
.endfn Zi8GetElementCount

# .text:0xB85C | 0x81476378 | size: 0x26C
.fn Zi8GetChineseCandidates, global
/* 81476378 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8147637C | 7C 08 02 A6 */	mflr r0
/* 81476380 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81476384 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81476388 | 48 18 31 35 */	bl _savegpr_26
/* 8147638C | 7C 7F 1B 78 */	mr r31, r3
/* 81476390 | 7C 9D 23 78 */	mr r29, r4
/* 81476394 | 7C BC 2B 78 */	mr r28, r5
/* 81476398 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147639C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814763A0 | 40 82 00 10 */	bne .L_814763B0
/* 814763A4 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 814763A8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814763AC | 41 81 00 18 */	bgt .L_814763C4
.L_814763B0:
/* 814763B0 | 7F E3 FB 78 */	mr r3, r31
/* 814763B4 | 7F A4 EB 78 */	mr r4, r29
/* 814763B8 | 7F 85 E3 78 */	mr r5, r28
/* 814763BC | 4B FF 4B 55 */	bl Zi8_8146AF10
/* 814763C0 | 48 00 02 0C */	b .L_814765CC
.L_814763C4:
/* 814763C4 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 814763C8 | 2C 00 00 10 */	cmpwi r0, 0x10
/* 814763CC | 41 82 00 1C */	beq .L_814763E8
/* 814763D0 | 40 80 FF E0 */	bge .L_814763B0
/* 814763D4 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 814763D8 | 40 80 FF D8 */	bge .L_814763B0
/* 814763DC | 2C 00 00 0C */	cmpwi r0, 0xc
/* 814763E0 | 40 80 00 60 */	bge .L_81476440
/* 814763E4 | 4B FF FF CC */	b .L_814763B0
.L_814763E8:
/* 814763E8 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814763EC | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 814763F0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814763F4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814763F8 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 814763FC | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 81476400 | 41 82 FF B0 */	beq .L_814763B0
/* 81476404 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 81476408 | 3B C3 FF FE */	subi r30, r3, 0x2
/* 8147640C | 48 00 00 1C */	b .L_81476428
.L_81476410:
/* 81476410 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81476414 | 57 C0 08 3C */	slwi r0, r30, 1
/* 81476418 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8147641C | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 81476420 | 41 82 00 10 */	beq .L_81476430
/* 81476424 | 3B DE FF FF */	subi r30, r30, 0x1
.L_81476428:
/* 81476428 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8147642C | 41 81 FF E4 */	bgt .L_81476410
.L_81476430:
/* 81476430 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81476434 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476438 | 40 81 FF 78 */	ble .L_814763B0
/* 8147643C | 48 00 00 AC */	b .L_814764E8
.L_81476440:
/* 81476440 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81476444 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 81476448 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147644C | 54 00 08 3C */	slwi r0, r0, 1
/* 81476450 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 81476454 | 3C 60 00 01 */	lis r3, 0x1
/* 81476458 | 38 63 F3 60 */	subi r3, r3, 0xca0
/* 8147645C | 7C 00 18 00 */	cmpw r0, r3
/* 81476460 | 41 82 00 2C */	beq .L_8147648C
/* 81476464 | 40 80 FF 4C */	bge .L_814763B0
/* 81476468 | 3C 60 00 01 */	lis r3, 0x1
/* 8147646C | 38 63 F3 36 */	subi r3, r3, 0xcca
/* 81476470 | 7C 00 18 00 */	cmpw r0, r3
/* 81476474 | 40 80 FF 3C */	bge .L_814763B0
/* 81476478 | 3C 60 00 01 */	lis r3, 0x1
/* 8147647C | 38 63 F3 31 */	subi r3, r3, 0xccf
/* 81476480 | 7C 00 18 00 */	cmpw r0, r3
/* 81476484 | 40 80 00 08 */	bge .L_8147648C
/* 81476488 | 4B FF FF 28 */	b .L_814763B0
.L_8147648C:
/* 8147648C | 3B C0 00 01 */	li r30, 0x1
/* 81476490 | 48 00 00 2C */	b .L_814764BC
.L_81476494:
/* 81476494 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81476498 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 8147649C | 57 C5 06 3E */	clrlwi r5, r30, 24
/* 814764A0 | 7F 86 E3 78 */	mr r6, r28
/* 814764A4 | 4B FF FD 09 */	bl Zi8GetElementCount
/* 814764A8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814764AC | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 814764B0 | 7C 03 00 40 */	cmplw r3, r0
/* 814764B4 | 40 80 00 10 */	bge .L_814764C4
/* 814764B8 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814764BC:
/* 814764BC | 2C 1E 00 40 */	cmpwi r30, 0x40
/* 814764C0 | 41 80 FF D4 */	blt .L_81476494
.L_814764C4:
/* 814764C4 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 814764C8 | 3B DE FF FF */	subi r30, r30, 0x1
/* 814764CC | 41 82 FE E4 */	beq .L_814763B0
/* 814764D0 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814764D4 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 814764D8 | 57 C5 06 3E */	clrlwi r5, r30, 24
/* 814764DC | 7F 86 E3 78 */	mr r6, r28
/* 814764E0 | 4B FF FC CD */	bl Zi8GetElementCount
/* 814764E4 | 54 7E 06 3E */	clrlwi r30, r3, 24
.L_814764E8:
/* 814764E8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814764EC | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814764F0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814764F4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814764F8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814764FC | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 81476500 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81476504 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81476508 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8147650C | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81476510 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81476514 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81476518 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8147651C | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 81476520 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81476524 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81476528 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8147652C | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 81476530 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81476534 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81476538 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8147653C | 90 01 00 30 */	stw r0, 0x30(r1)
/* 81476540 | 8B 7D 00 00 */	lbz r27, 0x0(r29)
/* 81476544 | 83 5D 00 0C */	lwz r26, 0xc(r29)
/* 81476548 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147654C | 57 C0 08 3C */	slwi r0, r30, 1
/* 81476550 | 7C 03 02 14 */	add r0, r3, r0
/* 81476554 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81476558 | 88 01 00 14 */	lbz r0, 0x14(r1)
/* 8147655C | 7C 1E 00 50 */	subf r0, r30, r0
/* 81476560 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476564 | 98 01 00 14 */	stb r0, 0x14(r1)
/* 81476568 | 8B 7D 00 00 */	lbz r27, 0x0(r29)
/* 8147656C | 38 00 00 01 */	li r0, 0x1
/* 81476570 | 98 1D 00 00 */	stb r0, 0x0(r29)
/* 81476574 | 83 5D 00 0C */	lwz r26, 0xc(r29)
/* 81476578 | 38 00 00 01 */	li r0, 0x1
/* 8147657C | 90 1D 00 0C */	stw r0, 0xc(r29)
/* 81476580 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81476584 | 7F A4 EB 78 */	mr r4, r29
/* 81476588 | 7F 85 E3 78 */	mr r5, r28
/* 8147658C | 4B FF 49 85 */	bl Zi8_8146AF10
/* 81476590 | 7C 7E 1B 78 */	mr r30, r3
/* 81476594 | 9B 7D 00 00 */	stb r27, 0x0(r29)
/* 81476598 | 93 5D 00 0C */	stw r26, 0xc(r29)
/* 8147659C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814765A0 | 40 82 00 1C */	bne .L_814765BC
/* 814765A4 | 38 60 13 88 */	li r3, 0x1388
/* 814765A8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814765AC | 7F 84 E3 78 */	mr r4, r28
/* 814765B0 | 48 00 DE CD */	bl Zi8LogError
/* 814765B4 | 38 60 00 00 */	li r3, 0x0
/* 814765B8 | 48 00 00 14 */	b .L_814765CC
.L_814765BC:
/* 814765BC | 7F E3 FB 78 */	mr r3, r31
/* 814765C0 | 7F A4 EB 78 */	mr r4, r29
/* 814765C4 | 7F 85 E3 78 */	mr r5, r28
/* 814765C8 | 4B FF 49 49 */	bl Zi8_8146AF10
.L_814765CC:
/* 814765CC | 39 61 00 50 */	addi r11, r1, 0x50
/* 814765D0 | 48 18 2F 39 */	bl _restgpr_26
/* 814765D4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814765D8 | 7C 08 03 A6 */	mtlr r0
/* 814765DC | 38 21 00 50 */	addi r1, r1, 0x50
/* 814765E0 | 4E 80 00 20 */	blr
.endfn Zi8GetChineseCandidates

# 0x8166AA88..0x8166AC10 | size: 0x188
.data
.balign 8

# .data:0x0 | 0x8166AA88 | size: 0x2C
.obj jumptable_8166AA88, local
	.rel Zi8_8146AF10, .L_814725F8
	.rel Zi8_8146AF10, .L_8147260C
	.rel Zi8_8146AF10, .L_81472684
	.rel Zi8_8146AF10, .L_81472620
	.rel Zi8_8146AF10, .L_81472648
	.rel Zi8_8146AF10, .L_8147265C
	.rel Zi8_8146AF10, .L_81472634
	.rel Zi8_8146AF10, .L_81472670
	.rel Zi8_8146AF10, .L_814726BC
	.rel Zi8_8146AF10, .L_81472698
	.rel Zi8_8146AF10, .L_814726AC
.endobj jumptable_8166AA88

# .data:0x2C | 0x8166AAB4 | size: 0x2C
.obj jumptable_8166AAB4, local
	.rel Zi8_8146AF10, .L_8147035C
	.rel Zi8_8146AF10, .L_81470370
	.rel Zi8_8146AF10, .L_814703E8
	.rel Zi8_8146AF10, .L_81470384
	.rel Zi8_8146AF10, .L_814703AC
	.rel Zi8_8146AF10, .L_814703C0
	.rel Zi8_8146AF10, .L_81470398
	.rel Zi8_8146AF10, .L_814703D4
	.rel Zi8_8146AF10, .L_81470420
	.rel Zi8_8146AF10, .L_814703FC
	.rel Zi8_8146AF10, .L_81470410
.endobj jumptable_8166AAB4

# .data:0x58 | 0x8166AAE0 | size: 0xA0
.obj jumptable_8166AAE0, local
	.rel Zi8_8146AF10, .L_8146C0E4
	.rel Zi8_8146AF10, .L_8146C0E4
	.rel Zi8_8146AF10, .L_8146C108
	.rel Zi8_8146AF10, .L_8146C108
	.rel Zi8_8146AF10, .L_8146C12C
	.rel Zi8_8146AF10, .L_8146C12C
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C1BC
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C23C
	.rel Zi8_8146AF10, .L_8146C2BC
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C198
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C198
	.rel Zi8_8146AF10, .L_8146C150
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C150
	.rel Zi8_8146AF10, .L_8146C174
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C174
.endobj jumptable_8166AAE0

# .data:0xF8 | 0x8166AB80 | size: 0x90
.obj jumptable_8166AB80, local
	.rel Zi8_8146AF10, .L_8146BF54
	.rel Zi8_8146AF10, .L_8146BF54
	.rel Zi8_8146AF10, .L_8146BF78
	.rel Zi8_8146AF10, .L_8146BF78
	.rel Zi8_8146AF10, .L_8146BF9C
	.rel Zi8_8146AF10, .L_8146BF9C
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146BFE4
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C008
	.rel Zi8_8146AF10, .L_8146C088
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146BFC0
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146C338
	.rel Zi8_8146AF10, .L_8146BFC0
.endobj jumptable_8166AB80

# 0x81695000..0x81695010 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695000 | size: 0x8
.obj ziTones, global
	.4byte 0x02CA02C7
	.4byte 0x02CB02D9
.endobj ziTones

# .sdata2:0x8 | 0x81695008 | size: 0x8
.obj ziPuncts, global
	.4byte 0xFF0C3002
	.4byte 0xFF1FFF01
.endobj ziPuncts

# 0x81695FE0..0x81695FE8 | size: 0x8
.section .sbss2, "a", @nobits
.balign 8

# .sbss2:0x0 | 0x81695FE0 | size: 0x8
.obj zi8tones, global
	.skip 0x8
.endobj zi8tones
