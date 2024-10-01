.include "macros.inc"
.file "pf_service.c"

# 0x814B5AE4..0x814B5BFC | size: 0x118
.text
.balign 4

# .text:0x0 | 0x814B5AE4 | size: 0x118
.fn VFiPF_LE16_TO_U16_STR, global
/* 814B5AE4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B5AE8 | 38 A0 00 00 */	li r5, 0x0
/* 814B5AEC | 4D 82 00 20 */	beqlr
/* 814B5AF0 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 814B5AF4 | 38 E4 FF F0 */	subi r7, r4, 0x10
/* 814B5AF8 | 54 C0 F8 7E */	srwi r0, r6, 1
/* 814B5AFC | 28 00 00 08 */	cmplwi r0, 0x8
/* 814B5B00 | 40 81 00 C4 */	ble .L_814B5BC4
/* 814B5B04 | 28 06 00 01 */	cmplwi r6, 0x1
/* 814B5B08 | 38 00 00 00 */	li r0, 0x0
/* 814B5B0C | 41 80 00 10 */	blt .L_814B5B1C
/* 814B5B10 | 7C 04 30 40 */	cmplw r4, r6
/* 814B5B14 | 41 81 00 08 */	bgt .L_814B5B1C
/* 814B5B18 | 38 00 00 01 */	li r0, 0x1
.L_814B5B1C:
/* 814B5B1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B5B20 | 41 82 00 A4 */	beq .L_814B5BC4
/* 814B5B24 | 38 07 00 0F */	addi r0, r7, 0xf
/* 814B5B28 | 54 00 E1 3E */	srwi r0, r0, 4
/* 814B5B2C | 7C 09 03 A6 */	mtctr r0
/* 814B5B30 | 28 07 00 00 */	cmplwi r7, 0x0
/* 814B5B34 | 40 81 00 90 */	ble .L_814B5BC4
.L_814B5B38:
/* 814B5B38 | 7C E3 2A 14 */	add r7, r3, r5
/* 814B5B3C | 7C C3 28 AE */	lbzx r6, r3, r5
/* 814B5B40 | 88 07 00 01 */	lbz r0, 0x1(r7)
/* 814B5B44 | 7C 03 29 AE */	stbx r0, r3, r5
/* 814B5B48 | 38 A5 00 10 */	addi r5, r5, 0x10
/* 814B5B4C | 98 C7 00 01 */	stb r6, 0x1(r7)
/* 814B5B50 | 88 C7 00 02 */	lbz r6, 0x2(r7)
/* 814B5B54 | 88 07 00 03 */	lbz r0, 0x3(r7)
/* 814B5B58 | 98 07 00 02 */	stb r0, 0x2(r7)
/* 814B5B5C | 98 C7 00 03 */	stb r6, 0x3(r7)
/* 814B5B60 | 88 C7 00 04 */	lbz r6, 0x4(r7)
/* 814B5B64 | 88 07 00 05 */	lbz r0, 0x5(r7)
/* 814B5B68 | 98 07 00 04 */	stb r0, 0x4(r7)
/* 814B5B6C | 98 C7 00 05 */	stb r6, 0x5(r7)
/* 814B5B70 | 88 C7 00 06 */	lbz r6, 0x6(r7)
/* 814B5B74 | 88 07 00 07 */	lbz r0, 0x7(r7)
/* 814B5B78 | 98 07 00 06 */	stb r0, 0x6(r7)
/* 814B5B7C | 98 C7 00 07 */	stb r6, 0x7(r7)
/* 814B5B80 | 88 C7 00 08 */	lbz r6, 0x8(r7)
/* 814B5B84 | 88 07 00 09 */	lbz r0, 0x9(r7)
/* 814B5B88 | 98 07 00 08 */	stb r0, 0x8(r7)
/* 814B5B8C | 98 C7 00 09 */	stb r6, 0x9(r7)
/* 814B5B90 | 88 C7 00 0A */	lbz r6, 0xa(r7)
/* 814B5B94 | 88 07 00 0B */	lbz r0, 0xb(r7)
/* 814B5B98 | 98 07 00 0A */	stb r0, 0xa(r7)
/* 814B5B9C | 98 C7 00 0B */	stb r6, 0xb(r7)
/* 814B5BA0 | 88 C7 00 0C */	lbz r6, 0xc(r7)
/* 814B5BA4 | 88 07 00 0D */	lbz r0, 0xd(r7)
/* 814B5BA8 | 98 07 00 0C */	stb r0, 0xc(r7)
/* 814B5BAC | 98 C7 00 0D */	stb r6, 0xd(r7)
/* 814B5BB0 | 88 C7 00 0E */	lbz r6, 0xe(r7)
/* 814B5BB4 | 88 07 00 0F */	lbz r0, 0xf(r7)
/* 814B5BB8 | 98 07 00 0E */	stb r0, 0xe(r7)
/* 814B5BBC | 98 C7 00 0F */	stb r6, 0xf(r7)
/* 814B5BC0 | 42 00 FF 78 */	bdnz .L_814B5B38
.L_814B5BC4:
/* 814B5BC4 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814B5BC8 | 7C 05 00 50 */	subf r0, r5, r0
/* 814B5BCC | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B5BD0 | 7C 09 03 A6 */	mtctr r0
/* 814B5BD4 | 7C 05 20 40 */	cmplw r5, r4
/* 814B5BD8 | 4C 80 00 20 */	bgelr
.L_814B5BDC:
/* 814B5BDC | 7C C3 2A 14 */	add r6, r3, r5
/* 814B5BE0 | 7C 83 28 AE */	lbzx r4, r3, r5
/* 814B5BE4 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 814B5BE8 | 7C 03 29 AE */	stbx r0, r3, r5
/* 814B5BEC | 38 A5 00 02 */	addi r5, r5, 0x2
/* 814B5BF0 | 98 86 00 01 */	stb r4, 0x1(r6)
/* 814B5BF4 | 42 00 FF E8 */	bdnz .L_814B5BDC
/* 814B5BF8 | 4E 80 00 20 */	blr
.endfn VFiPF_LE16_TO_U16_STR
