.include "macros.inc"
.file "zi8is.c"

# 0x81330640..0x81330650 | size: 0x10
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330640 | size: 0x8
.obj "@etb_81330640", local
.hidden "@etb_81330640"
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
.endobj "@etb_81330640"

# extab:0x8 | 0x81330648 | size: 0x8
.obj "@etb_81330648", local
.hidden "@etb_81330648"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r24-r31
 */
	.4byte 0x40080000
	.4byte 0x00000000
.endobj "@etb_81330648"

# 0x813312F0..0x81331308 | size: 0x18
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x813312F0 | size: 0xC
.obj "@eti_813312F0", local
.hidden "@eti_813312F0"
	.4byte Zi8GetZHCharSet
	.4byte 0x000002C8
	.4byte "@etb_81330640"
.endobj "@eti_813312F0"

# extabindex:0xC | 0x813312FC | size: 0xC
.obj "@eti_813312FC", local
.hidden "@eti_813312FC"
	.4byte Zi8IsCharacter
	.4byte 0x00000180
	.4byte "@etb_81330648"
.endobj "@eti_813312FC"

# 0x8147C9C4..0x8147CEF4 | size: 0x530
.text
.balign 4

# .text:0x0 | 0x8147C9C4 | size: 0xC0
.fn Zi8IsZicorpSignature, global
/* 8147C9C4 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8147C9C8 | 28 00 00 06 */	cmplwi r0, 0x6
/* 8147C9CC | 40 81 00 54 */	ble .L_8147CA20
/* 8147C9D0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147C9D4 | 28 00 00 7A */	cmplwi r0, 0x7a
/* 8147C9D8 | 40 82 00 48 */	bne .L_8147CA20
/* 8147C9DC | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8147C9E0 | 28 00 00 69 */	cmplwi r0, 0x69
/* 8147C9E4 | 40 82 00 3C */	bne .L_8147CA20
/* 8147C9E8 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 8147C9EC | 28 00 00 63 */	cmplwi r0, 0x63
/* 8147C9F0 | 40 82 00 30 */	bne .L_8147CA20
/* 8147C9F4 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8147C9F8 | 28 00 00 6F */	cmplwi r0, 0x6f
/* 8147C9FC | 40 82 00 24 */	bne .L_8147CA20
/* 8147CA00 | A0 03 00 08 */	lhz r0, 0x8(r3)
/* 8147CA04 | 28 00 00 72 */	cmplwi r0, 0x72
/* 8147CA08 | 40 82 00 18 */	bne .L_8147CA20
/* 8147CA0C | A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8147CA10 | 28 00 00 70 */	cmplwi r0, 0x70
/* 8147CA14 | 40 82 00 0C */	bne .L_8147CA20
/* 8147CA18 | 38 60 00 01 */	li r3, 0x1
/* 8147CA1C | 48 00 00 64 */	b .L_8147CA80
.L_8147CA20:
/* 8147CA20 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8147CA24 | 28 00 00 06 */	cmplwi r0, 0x6
/* 8147CA28 | 40 81 00 54 */	ble .L_8147CA7C
/* 8147CA2C | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147CA30 | 28 00 00 39 */	cmplwi r0, 0x39
/* 8147CA34 | 40 82 00 48 */	bne .L_8147CA7C
/* 8147CA38 | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8147CA3C | 28 00 00 34 */	cmplwi r0, 0x34
/* 8147CA40 | 40 82 00 3C */	bne .L_8147CA7C
/* 8147CA44 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 8147CA48 | 28 00 00 32 */	cmplwi r0, 0x32
/* 8147CA4C | 40 82 00 30 */	bne .L_8147CA7C
/* 8147CA50 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8147CA54 | 28 00 00 36 */	cmplwi r0, 0x36
/* 8147CA58 | 40 82 00 24 */	bne .L_8147CA7C
/* 8147CA5C | A0 03 00 08 */	lhz r0, 0x8(r3)
/* 8147CA60 | 28 00 00 37 */	cmplwi r0, 0x37
/* 8147CA64 | 40 82 00 18 */	bne .L_8147CA7C
/* 8147CA68 | A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8147CA6C | 28 00 00 37 */	cmplwi r0, 0x37
/* 8147CA70 | 40 82 00 0C */	bne .L_8147CA7C
/* 8147CA74 | 38 60 00 01 */	li r3, 0x1
/* 8147CA78 | 48 00 00 08 */	b .L_8147CA80
.L_8147CA7C:
/* 8147CA7C | 38 60 00 00 */	li r3, 0x0
.L_8147CA80:
/* 8147CA80 | 4E 80 00 20 */	blr
.endfn Zi8IsZicorpSignature

# .text:0xC0 | 0x8147CA84 | size: 0x2C8
.fn Zi8GetZHCharSet, global
/* 8147CA84 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8147CA88 | 7C 08 02 A6 */	mflr r0
/* 8147CA8C | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8147CA90 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8147CA94 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 8147CA98 | 93 A1 00 64 */	stw r29, 0x64(r1)
/* 8147CA9C | 93 81 00 60 */	stw r28, 0x60(r1)
/* 8147CAA0 | 7C 7D 1B 78 */	mr r29, r3
/* 8147CAA4 | 3B E0 00 00 */	li r31, 0x0
/* 8147CAA8 | 38 60 00 64 */	li r3, 0x64
/* 8147CAAC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147CAB0 | 7F A4 EB 78 */	mr r4, r29
/* 8147CAB4 | 48 00 79 C9 */	bl Zi8LogError
/* 8147CAB8 | 38 60 00 01 */	li r3, 0x1
/* 8147CABC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147CAC0 | 7F A4 EB 78 */	mr r4, r29
/* 8147CAC4 | 4B FE 25 B9 */	bl Zi8LangSupported_8145F07C
/* 8147CAC8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147CACC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147CAD0 | 40 82 00 1C */	bne .L_8147CAEC
/* 8147CAD4 | 38 60 02 6C */	li r3, 0x26c
/* 8147CAD8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147CADC | 7F A4 EB 78 */	mr r4, r29
/* 8147CAE0 | 48 00 79 A1 */	bl Zi8ReplaceLastError
/* 8147CAE4 | 38 60 00 00 */	li r3, 0x0
/* 8147CAE8 | 48 00 02 44 */	b .L_8147CD2C
.L_8147CAEC:
/* 8147CAEC | 38 60 00 01 */	li r3, 0x1
/* 8147CAF0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147CAF4 | 38 80 00 0A */	li r4, 0xa
/* 8147CAF8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147CAFC | 7F A5 EB 78 */	mr r5, r29
/* 8147CB00 | 4B FE 29 31 */	bl Zi8GetTableCount
/* 8147CB04 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147CB08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147CB0C | 41 82 01 2C */	beq .L_8147CC38
/* 8147CB10 | 88 1D 00 18 */	lbz r0, 0x18(r29)
/* 8147CB14 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8147CB18 | 38 00 00 01 */	li r0, 0x1
/* 8147CB1C | 98 1D 00 18 */	stb r0, 0x18(r29)
/* 8147CB20 | 38 60 00 01 */	li r3, 0x1
/* 8147CB24 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147CB28 | 38 80 00 0A */	li r4, 0xa
/* 8147CB2C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147CB30 | 7F A5 EB 78 */	mr r5, r29
/* 8147CB34 | 4B FE 28 7D */	bl Zi8GetTableAddress
/* 8147CB38 | 7C 7C 1B 78 */	mr r28, r3
/* 8147CB3C | 7F 9E E3 78 */	mr r30, r28
/* 8147CB40 | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 8147CB44 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 8147CB48 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147CB4C | 54 00 40 2E */	slwi r0, r0, 8
/* 8147CB50 | 7C 60 03 78 */	or r0, r3, r0
/* 8147CB54 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147CB58 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 8147CB5C | 38 00 00 00 */	li r0, 0x0
/* 8147CB60 | 98 1D 00 18 */	stb r0, 0x18(r29)
/* 8147CB64 | 38 60 00 01 */	li r3, 0x1
/* 8147CB68 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147CB6C | 38 80 00 0A */	li r4, 0xa
/* 8147CB70 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147CB74 | 7F A5 EB 78 */	mr r5, r29
/* 8147CB78 | 4B FE 28 39 */	bl Zi8GetTableAddress
/* 8147CB7C | 7C 7C 1B 78 */	mr r28, r3
/* 8147CB80 | 7F 9E E3 78 */	mr r30, r28
/* 8147CB84 | 88 7E 00 02 */	lbz r3, 0x2(r30)
/* 8147CB88 | 88 1E 00 03 */	lbz r0, 0x3(r30)
/* 8147CB8C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147CB90 | 54 00 40 2E */	slwi r0, r0, 8
/* 8147CB94 | 7C 60 03 78 */	or r0, r3, r0
/* 8147CB98 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147CB9C | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8147CBA0 | 88 7E 00 04 */	lbz r3, 0x4(r30)
/* 8147CBA4 | 88 1E 00 05 */	lbz r0, 0x5(r30)
/* 8147CBA8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147CBAC | 54 00 40 2E */	slwi r0, r0, 8
/* 8147CBB0 | 7C 60 03 78 */	or r0, r3, r0
/* 8147CBB4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147CBB8 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8147CBBC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147CBC0 | 98 1D 00 18 */	stb r0, 0x18(r29)
/* 8147CBC4 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8147CBC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147CBCC | 41 82 00 24 */	beq .L_8147CBF0
/* 8147CBD0 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8147CBD4 | 28 00 4E 20 */	cmplwi r0, 0x4e20
/* 8147CBD8 | 40 81 00 10 */	ble .L_8147CBE8
/* 8147CBDC | 63 E0 00 08 */	ori r0, r31, 0x8
/* 8147CBE0 | 54 1F 06 3E */	clrlwi r31, r0, 24
/* 8147CBE4 | 48 00 00 0C */	b .L_8147CBF0
.L_8147CBE8:
/* 8147CBE8 | 63 E0 00 01 */	ori r0, r31, 0x1
/* 8147CBEC | 54 1F 06 3E */	clrlwi r31, r0, 24
.L_8147CBF0:
/* 8147CBF0 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8147CBF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147CBF8 | 41 82 00 24 */	beq .L_8147CC1C
/* 8147CBFC | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8147CC00 | 28 00 27 10 */	cmplwi r0, 0x2710
/* 8147CC04 | 40 81 00 10 */	ble .L_8147CC14
/* 8147CC08 | 63 E0 00 02 */	ori r0, r31, 0x2
/* 8147CC0C | 54 1F 06 3E */	clrlwi r31, r0, 24
/* 8147CC10 | 48 00 00 0C */	b .L_8147CC1C
.L_8147CC14:
/* 8147CC14 | 63 E0 00 10 */	ori r0, r31, 0x10
/* 8147CC18 | 54 1F 06 3E */	clrlwi r31, r0, 24
.L_8147CC1C:
/* 8147CC1C | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8147CC20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147CC24 | 41 82 00 0C */	beq .L_8147CC30
/* 8147CC28 | 63 E0 00 04 */	ori r0, r31, 0x4
/* 8147CC2C | 54 1F 06 3E */	clrlwi r31, r0, 24
.L_8147CC30:
/* 8147CC30 | 7F E3 FB 78 */	mr r3, r31
/* 8147CC34 | 48 00 00 F8 */	b .L_8147CD2C
.L_8147CC38:
/* 8147CC38 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8147CC3C | 38 80 00 00 */	li r4, 0x0
/* 8147CC40 | 38 A0 00 2C */	li r5, 0x2c
/* 8147CC44 | 4B FF F3 D9 */	bl Zi8Memset
/* 8147CC48 | 38 00 00 01 */	li r0, 0x1
/* 8147CC4C | 98 01 00 30 */	stb r0, 0x30(r1)
/* 8147CC50 | 38 00 00 01 */	li r0, 0x1
/* 8147CC54 | 98 01 00 33 */	stb r0, 0x33(r1)
/* 8147CC58 | 38 00 00 00 */	li r0, 0x0
/* 8147CC5C | 98 01 00 34 */	stb r0, 0x34(r1)
/* 8147CC60 | 38 01 00 10 */	addi r0, r1, 0x10
/* 8147CC64 | 90 01 00 48 */	stw r0, 0x48(r1)
/* 8147CC68 | 38 00 00 01 */	li r0, 0x1
/* 8147CC6C | 98 01 00 4C */	stb r0, 0x4c(r1)
/* 8147CC70 | 38 00 00 01 */	li r0, 0x1
/* 8147CC74 | 98 01 00 32 */	stb r0, 0x32(r1)
.L_8147CC78:
/* 8147CC78 | 38 00 00 00 */	li r0, 0x0
/* 8147CC7C | 98 01 00 31 */	stb r0, 0x31(r1)
/* 8147CC80 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8147CC84 | 7F A4 EB 78 */	mr r4, r29
/* 8147CC88 | 4B FF E4 B9 */	bl _Zi8GetCandidates
/* 8147CC8C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147CC90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147CC94 | 41 82 00 10 */	beq .L_8147CCA4
/* 8147CC98 | 88 01 00 32 */	lbz r0, 0x32(r1)
/* 8147CC9C | 7F FF 03 78 */	or r31, r31, r0
/* 8147CCA0 | 48 00 00 58 */	b .L_8147CCF8
.L_8147CCA4:
/* 8147CCA4 | 38 00 00 01 */	li r0, 0x1
/* 8147CCA8 | 98 01 00 31 */	stb r0, 0x31(r1)
/* 8147CCAC | 38 61 00 30 */	addi r3, r1, 0x30
/* 8147CCB0 | 7F A4 EB 78 */	mr r4, r29
/* 8147CCB4 | 4B FF E4 8D */	bl _Zi8GetCandidates
/* 8147CCB8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147CCBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147CCC0 | 41 82 00 10 */	beq .L_8147CCD0
/* 8147CCC4 | 88 01 00 32 */	lbz r0, 0x32(r1)
/* 8147CCC8 | 7F FF 03 78 */	or r31, r31, r0
/* 8147CCCC | 48 00 00 2C */	b .L_8147CCF8
.L_8147CCD0:
/* 8147CCD0 | 38 00 00 02 */	li r0, 0x2
/* 8147CCD4 | 98 01 00 31 */	stb r0, 0x31(r1)
/* 8147CCD8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8147CCDC | 7F A4 EB 78 */	mr r4, r29
/* 8147CCE0 | 4B FF E4 61 */	bl _Zi8GetCandidates
/* 8147CCE4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147CCE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147CCEC | 41 82 00 0C */	beq .L_8147CCF8
/* 8147CCF0 | 88 01 00 32 */	lbz r0, 0x32(r1)
/* 8147CCF4 | 7F FF 03 78 */	or r31, r31, r0
.L_8147CCF8:
/* 8147CCF8 | 88 01 00 32 */	lbz r0, 0x32(r1)
/* 8147CCFC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147CD00 | 40 82 00 10 */	bne .L_8147CD10
/* 8147CD04 | 38 00 00 04 */	li r0, 0x4
/* 8147CD08 | 98 01 00 32 */	stb r0, 0x32(r1)
/* 8147CD0C | 4B FF FF 6C */	b .L_8147CC78
.L_8147CD10:
/* 8147CD10 | 88 01 00 32 */	lbz r0, 0x32(r1)
/* 8147CD14 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8147CD18 | 40 82 00 10 */	bne .L_8147CD28
/* 8147CD1C | 38 00 00 02 */	li r0, 0x2
/* 8147CD20 | 98 01 00 32 */	stb r0, 0x32(r1)
/* 8147CD24 | 4B FF FF 54 */	b .L_8147CC78
.L_8147CD28:
/* 8147CD28 | 7F E3 FB 78 */	mr r3, r31
.L_8147CD2C:
/* 8147CD2C | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8147CD30 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8147CD34 | 83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8147CD38 | 83 81 00 60 */	lwz r28, 0x60(r1)
/* 8147CD3C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8147CD40 | 7C 08 03 A6 */	mtlr r0
/* 8147CD44 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8147CD48 | 4E 80 00 20 */	blr
.endfn Zi8GetZHCharSet

# .text:0x388 | 0x8147CD4C | size: 0x28
.fn Zi8IsComponent, global
/* 8147CD4C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147CD50 | 28 00 EF 10 */	cmplwi r0, 0xef10
/* 8147CD54 | 41 80 00 18 */	blt .L_8147CD6C
/* 8147CD58 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147CD5C | 28 00 F3 05 */	cmplwi r0, 0xf305
/* 8147CD60 | 40 80 00 0C */	bge .L_8147CD6C
/* 8147CD64 | 38 60 00 01 */	li r3, 0x1
/* 8147CD68 | 48 00 00 08 */	b .L_8147CD70
.L_8147CD6C:
/* 8147CD6C | 38 60 00 00 */	li r3, 0x0
.L_8147CD70:
/* 8147CD70 | 4E 80 00 20 */	blr
.endfn Zi8IsComponent

# .text:0x3B0 | 0x8147CD74 | size: 0x180
.fn Zi8IsCharacter, global
/* 8147CD74 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147CD78 | 7C 08 02 A6 */	mflr r0
/* 8147CD7C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147CD80 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147CD84 | 48 17 C7 31 */	bl _savegpr_24
/* 8147CD88 | 7C 7E 1B 78 */	mr r30, r3
/* 8147CD8C | 7C 98 23 78 */	mr r24, r4
/* 8147CD90 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147CD94 | 28 00 31 05 */	cmplwi r0, 0x3105
/* 8147CD98 | 41 80 00 18 */	blt .L_8147CDB0
/* 8147CD9C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147CDA0 | 28 00 31 29 */	cmplwi r0, 0x3129
/* 8147CDA4 | 41 81 00 0C */	bgt .L_8147CDB0
/* 8147CDA8 | 38 60 00 01 */	li r3, 0x1
/* 8147CDAC | 48 00 01 30 */	b .L_8147CEDC
.L_8147CDB0:
/* 8147CDB0 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147CDB4 | 2C 00 02 CC */	cmpwi r0, 0x2cc
/* 8147CDB8 | 40 80 00 1C */	bge .L_8147CDD4
/* 8147CDBC | 2C 00 02 C8 */	cmpwi r0, 0x2c8
/* 8147CDC0 | 41 82 00 28 */	beq .L_8147CDE8
/* 8147CDC4 | 40 80 00 1C */	bge .L_8147CDE0
/* 8147CDC8 | 2C 00 02 C7 */	cmpwi r0, 0x2c7
/* 8147CDCC | 40 80 00 14 */	bge .L_8147CDE0
/* 8147CDD0 | 48 00 00 18 */	b .L_8147CDE8
.L_8147CDD4:
/* 8147CDD4 | 2C 00 02 D9 */	cmpwi r0, 0x2d9
/* 8147CDD8 | 41 82 00 08 */	beq .L_8147CDE0
/* 8147CDDC | 48 00 00 0C */	b .L_8147CDE8
.L_8147CDE0:
/* 8147CDE0 | 38 60 00 01 */	li r3, 0x1
/* 8147CDE4 | 48 00 00 F8 */	b .L_8147CEDC
.L_8147CDE8:
/* 8147CDE8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147CDEC | 3C 60 00 01 */	lis r3, 0x1
/* 8147CDF0 | 38 63 FF 0C */	subi r3, r3, 0xf4
/* 8147CDF4 | 7C 00 18 00 */	cmpw r0, r3
/* 8147CDF8 | 41 82 00 3C */	beq .L_8147CE34
/* 8147CDFC | 40 80 00 24 */	bge .L_8147CE20
/* 8147CE00 | 3C 60 00 01 */	lis r3, 0x1
/* 8147CE04 | 38 63 FF 01 */	subi r3, r3, 0xff
/* 8147CE08 | 7C 00 18 00 */	cmpw r0, r3
/* 8147CE0C | 41 82 00 28 */	beq .L_8147CE34
/* 8147CE10 | 40 80 00 2C */	bge .L_8147CE3C
/* 8147CE14 | 2C 00 30 02 */	cmpwi r0, 0x3002
/* 8147CE18 | 41 82 00 1C */	beq .L_8147CE34
/* 8147CE1C | 48 00 00 20 */	b .L_8147CE3C
.L_8147CE20:
/* 8147CE20 | 3C 60 00 01 */	lis r3, 0x1
/* 8147CE24 | 38 63 FF 1F */	subi r3, r3, 0xe1
/* 8147CE28 | 7C 00 18 00 */	cmpw r0, r3
/* 8147CE2C | 41 82 00 08 */	beq .L_8147CE34
/* 8147CE30 | 48 00 00 0C */	b .L_8147CE3C
.L_8147CE34:
/* 8147CE34 | 38 60 00 01 */	li r3, 0x1
/* 8147CE38 | 48 00 00 A4 */	b .L_8147CEDC
.L_8147CE3C:
/* 8147CE3C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147CE40 | 54 00 C6 3E */	extrwi r0, r0, 8, 16
/* 8147CE44 | 54 1B 06 3E */	clrlwi r27, r0, 24
/* 8147CE48 | 57 DA 06 3E */	clrlwi r26, r30, 24
/* 8147CE4C | 38 60 00 01 */	li r3, 0x1
/* 8147CE50 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147CE54 | 38 80 00 00 */	li r4, 0x0
/* 8147CE58 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147CE5C | 7F 05 C3 78 */	mr r5, r24
/* 8147CE60 | 4B FE 25 D1 */	bl Zi8GetTableCount
/* 8147CE64 | 7C 7C 1B 78 */	mr r28, r3
/* 8147CE68 | 38 60 00 01 */	li r3, 0x1
/* 8147CE6C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147CE70 | 38 80 00 00 */	li r4, 0x0
/* 8147CE74 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147CE78 | 7F 05 C3 78 */	mr r5, r24
/* 8147CE7C | 4B FE 25 35 */	bl Zi8GetTableAddress
/* 8147CE80 | 7C 79 1B 78 */	mr r25, r3
/* 8147CE84 | 7F 3F CB 78 */	mr r31, r25
/* 8147CE88 | 3B A0 00 00 */	li r29, 0x0
/* 8147CE8C | 48 00 00 3C */	b .L_8147CEC8
.L_8147CE90:
/* 8147CE90 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8147CE94 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147CE98 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147CE9C | 7C 03 00 40 */	cmplw r3, r0
/* 8147CEA0 | 40 82 00 20 */	bne .L_8147CEC0
/* 8147CEA4 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147CEA8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147CEAC | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147CEB0 | 7C 03 00 40 */	cmplw r3, r0
/* 8147CEB4 | 40 82 00 0C */	bne .L_8147CEC0
/* 8147CEB8 | 38 60 00 01 */	li r3, 0x1
/* 8147CEBC | 48 00 00 20 */	b .L_8147CEDC
.L_8147CEC0:
/* 8147CEC0 | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8147CEC4 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8147CEC8:
/* 8147CEC8 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 8147CECC | 57 80 04 3E */	clrlwi r0, r28, 16
/* 8147CED0 | 7C 03 00 40 */	cmplw r3, r0
/* 8147CED4 | 41 80 FF BC */	blt .L_8147CE90
/* 8147CED8 | 38 60 00 00 */	li r3, 0x0
.L_8147CEDC:
/* 8147CEDC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147CEE0 | 48 17 C6 21 */	bl _restgpr_24
/* 8147CEE4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147CEE8 | 7C 08 03 A6 */	mtlr r0
/* 8147CEEC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147CEF0 | 4E 80 00 20 */	blr
.endfn Zi8IsCharacter
