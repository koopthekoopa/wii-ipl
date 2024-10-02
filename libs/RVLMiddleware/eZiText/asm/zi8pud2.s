.include "macros.inc"
.file "zi8pud2.c"

# 0x813306C0..0x813306F0 | size: 0x30
.section extab, "a"
.balign 4

# extab:0x0 | 0x813306C0 | size: 0x8
.obj "@etb_813306C0", local
.hidden "@etb_813306C0"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_813306C0"

# extab:0x8 | 0x813306C8 | size: 0x8
.obj "@etb_813306C8", local
.hidden "@etb_813306C8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_813306C8"

# extab:0x10 | 0x813306D0 | size: 0x8
.obj "@etb_813306D0", local
.hidden "@etb_813306D0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_813306D0"

# extab:0x18 | 0x813306D8 | size: 0x8
.obj "@etb_813306D8", local
.hidden "@etb_813306D8"
	.4byte 0x68080000
	.4byte 0x00000000
.endobj "@etb_813306D8"

# extab:0x20 | 0x813306E0 | size: 0x8
.obj "@etb_813306E0", local
.hidden "@etb_813306E0"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_813306E0"

# extab:0x28 | 0x813306E8 | size: 0x8
.obj "@etb_813306E8", local
.hidden "@etb_813306E8"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_813306E8"

# 0x813313B0..0x813313F8 | size: 0x48
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x813313B0 | size: 0xC
.obj "@eti_813313B0", local
.hidden "@eti_813313B0"
	.4byte ZiGetZHWordSize
	.4byte 0x0000007C
	.4byte "@etb_813306C0"
.endobj "@eti_813313B0"

# extabindex:0xC | 0x813313BC | size: 0xC
.obj "@eti_813313BC", local
.hidden "@eti_813313BC"
	.4byte Zi8CopyZHSpelling
	.4byte 0x00000084
	.4byte "@etb_813306C8"
.endobj "@eti_813313BC"

# extabindex:0x18 | 0x813313C8 | size: 0xC
.obj "@eti_813313C8", local
.hidden "@eti_813313C8"
	.4byte ZADP_Zi8SetPDremoveOpt
	.4byte 0x00000054
	.4byte "@etb_813306D0"
.endobj "@eti_813313C8"

# extabindex:0x24 | 0x813313D4 | size: 0xC
.obj "@eti_813313D4", local
.hidden "@eti_813313D4"
	.4byte Zi8MatchPUDdata_ZHS
	.4byte 0x00000588
	.4byte "@etb_813306D8"
.endobj "@eti_813313D4"

# extabindex:0x30 | 0x813313E0 | size: 0xC
.obj "@eti_813313E0", local
.hidden "@eti_813313E0"
	.4byte Zi8MatchPUDdata
	.4byte 0x000000C8
	.4byte "@etb_813306E0"
.endobj "@eti_813313E0"

# extabindex:0x3C | 0x813313EC | size: 0xC
.obj "@eti_813313EC", local
.hidden "@eti_813313EC"
	.4byte Zi8_8147FD7C
	.4byte 0x00000074
	.4byte "@etb_813306E8"
.endobj "@eti_813313EC"

# 0x8147F598..0x8147FDF0 | size: 0x858
.text
.balign 4

# .text:0x0 | 0x8147F598 | size: 0x40
.fn ZiIsPhoneticChar, global
/* 8147F598 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147F59C | 28 00 F3 05 */	cmplwi r0, 0xf305
/* 8147F5A0 | 41 80 00 10 */	blt .L_8147F5B0
/* 8147F5A4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147F5A8 | 28 00 F3 29 */	cmplwi r0, 0xf329
/* 8147F5AC | 40 81 00 24 */	ble .L_8147F5D0
.L_8147F5B0:
/* 8147F5B0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147F5B4 | 28 00 F3 61 */	cmplwi r0, 0xf361
/* 8147F5B8 | 41 80 00 10 */	blt .L_8147F5C8
/* 8147F5BC | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147F5C0 | 28 00 F3 7A */	cmplwi r0, 0xf37a
/* 8147F5C4 | 40 81 00 0C */	ble .L_8147F5D0
.L_8147F5C8:
/* 8147F5C8 | 38 60 00 00 */	li r3, 0x0
/* 8147F5CC | 48 00 00 08 */	b .L_8147F5D4
.L_8147F5D0:
/* 8147F5D0 | 38 60 00 01 */	li r3, 0x1
.L_8147F5D4:
/* 8147F5D4 | 4E 80 00 20 */	blr
.endfn ZiIsPhoneticChar

# .text:0x40 | 0x8147F5D8 | size: 0x7C
.fn ZiGetZHWordSize, global
/* 8147F5D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8147F5DC | 7C 08 02 A6 */	mflr r0
/* 8147F5E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147F5E4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8147F5E8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8147F5EC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8147F5F0 | 7C 7D 1B 78 */	mr r29, r3
/* 8147F5F4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8147F5F8 | 3B E0 00 00 */	li r31, 0x0
/* 8147F5FC | 3B E0 00 00 */	li r31, 0x0
/* 8147F600 | 48 00 00 28 */	b .L_8147F628
.L_8147F604:
/* 8147F604 | 7F BE EB 78 */	mr r30, r29
/* 8147F608 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 8147F60C | 4B FF FF 8D */	bl ZiIsPhoneticChar
/* 8147F610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8147F614 | 41 82 00 0C */	beq .L_8147F620
/* 8147F618 | 7F E3 FB 78 */	mr r3, r31
/* 8147F61C | 48 00 00 1C */	b .L_8147F638
.L_8147F620:
/* 8147F620 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8147F624 | 3B BD 00 02 */	addi r29, r29, 0x2
.L_8147F628:
/* 8147F628 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8147F62C | 7C 1F 00 00 */	cmpw r31, r0
/* 8147F630 | 41 80 FF D4 */	blt .L_8147F604
/* 8147F634 | 7F E3 FB 78 */	mr r3, r31
.L_8147F638:
/* 8147F638 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8147F63C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8147F640 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8147F644 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147F648 | 7C 08 03 A6 */	mtlr r0
/* 8147F64C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8147F650 | 4E 80 00 20 */	blr
.endfn ZiGetZHWordSize

# .text:0xBC | 0x8147F654 | size: 0x84
.fn Zi8CopyZHSpelling, global
/* 8147F654 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8147F658 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8147F65C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8147F660 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147F664 | 41 82 00 64 */	beq .L_8147F6C8
/* 8147F668 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 8147F66C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F670 | 41 82 00 58 */	beq .L_8147F6C8
/* 8147F674 | 38 00 00 00 */	li r0, 0x0
/* 8147F678 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 8147F67C | 7C 06 38 00 */	cmpw r6, r7
/* 8147F680 | 40 81 00 48 */	ble .L_8147F6C8
/* 8147F684 | 3B E0 00 00 */	li r31, 0x0
/* 8147F688 | 48 00 00 1C */	b .L_8147F6A4
.L_8147F68C:
/* 8147F68C | 7C 03 3A 14 */	add r0, r3, r7
/* 8147F690 | 7F DF 02 14 */	add r30, r31, r0
/* 8147F694 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147F698 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 8147F69C | 38 84 00 02 */	addi r4, r4, 0x2
/* 8147F6A0 | 3B FF 00 02 */	addi r31, r31, 0x2
.L_8147F6A4:
/* 8147F6A4 | 7C 07 30 50 */	subf r0, r7, r6
/* 8147F6A8 | 7C 1F 00 00 */	cmpw r31, r0
/* 8147F6AC | 40 80 00 14 */	bge .L_8147F6C0
/* 8147F6B0 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 8147F6B4 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147F6B8 | 7C 1F 00 00 */	cmpw r31, r0
/* 8147F6BC | 41 80 FF D0 */	blt .L_8147F68C
.L_8147F6C0:
/* 8147F6C0 | 38 00 00 00 */	li r0, 0x0
/* 8147F6C4 | B0 04 00 00 */	sth r0, 0x0(r4)
.L_8147F6C8:
/* 8147F6C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8147F6CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8147F6D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8147F6D4 | 4E 80 00 20 */	blr
.endfn Zi8CopyZHSpelling

# .text:0x140 | 0x8147F6D8 | size: 0x54
.fn ZADP_Zi8SetPDremoveOpt, global
/* 8147F6D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8147F6DC | 7C 08 02 A6 */	mflr r0
/* 8147F6E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147F6E4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8147F6E8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8147F6EC | 98 61 00 08 */	stb r3, 0x8(r1)
/* 8147F6F0 | 7C 9F 23 78 */	mr r31, r4
/* 8147F6F4 | 8B DF 03 1C */	lbz r30, 0x31c(r31)
/* 8147F6F8 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147F6FC | 98 1F 03 1C */	stb r0, 0x31c(r31)
/* 8147F700 | 38 60 00 64 */	li r3, 0x64
/* 8147F704 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147F708 | 7F E4 FB 78 */	mr r4, r31
/* 8147F70C | 48 00 4D 71 */	bl Zi8LogError
/* 8147F710 | 7F C3 F3 78 */	mr r3, r30
/* 8147F714 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8147F718 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8147F71C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147F720 | 7C 08 03 A6 */	mtlr r0
/* 8147F724 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8147F728 | 4E 80 00 20 */	blr
.endfn ZADP_Zi8SetPDremoveOpt

# .text:0x194 | 0x8147F72C | size: 0x588
.fn Zi8MatchPUDdata_ZHS, global
/* 8147F72C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8147F730 | 7C 08 02 A6 */	mflr r0
/* 8147F734 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8147F738 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8147F73C | 48 17 9D 65 */	bl _savegpr_19
/* 8147F740 | 7C 7C 1B 78 */	mr r28, r3
/* 8147F744 | 7C 98 23 78 */	mr r24, r4
/* 8147F748 | 7C B7 2B 78 */	mr r23, r5
/* 8147F74C | 7C D6 33 78 */	mr r22, r6
/* 8147F750 | 7C F3 3B 78 */	mr r19, r7
/* 8147F754 | 91 01 00 08 */	stw r8, 0x8(r1)
/* 8147F758 | B1 21 00 0C */	sth r9, 0xc(r1)
/* 8147F75C | 7D 55 53 78 */	mr r21, r10
/* 8147F760 | 8A 81 00 6B */	lbz r20, 0x6b(r1)
/* 8147F764 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8147F768 | 93 E1 00 24 */	stw r31, 0x24(r1)
/* 8147F76C | 38 00 00 00 */	li r0, 0x0
/* 8147F770 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8147F774 | 88 1F 03 0C */	lbz r0, 0x30c(r31)
/* 8147F778 | 28 00 00 10 */	cmplwi r0, 0x10
/* 8147F77C | 41 81 00 2C */	bgt .L_8147F7A8
/* 8147F780 | 88 1F 03 0C */	lbz r0, 0x30c(r31)
/* 8147F784 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F788 | 41 82 00 20 */	beq .L_8147F7A8
/* 8147F78C | 88 7F 03 0C */	lbz r3, 0x30c(r31)
/* 8147F790 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147F794 | 54 00 10 3A */	slwi r0, r0, 2
/* 8147F798 | 7C 7F 02 14 */	add r3, r31, r0
/* 8147F79C | 80 03 02 CC */	lwz r0, 0x2cc(r3)
/* 8147F7A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F7A4 | 40 82 00 1C */	bne .L_8147F7C0
.L_8147F7A8:
/* 8147F7A8 | 38 60 04 B0 */	li r3, 0x4b0
/* 8147F7AC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147F7B0 | 7F E4 FB 78 */	mr r4, r31
/* 8147F7B4 | 48 00 4C C9 */	bl Zi8LogError
/* 8147F7B8 | 38 60 00 00 */	li r3, 0x0
/* 8147F7BC | 48 00 04 E0 */	b .L_8147FC9C
.L_8147F7C0:
/* 8147F7C0 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 8147F7C4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147F7C8 | 40 82 00 0C */	bne .L_8147F7D4
/* 8147F7CC | 57 00 08 3C */	slwi r0, r24, 1
/* 8147F7D0 | 54 18 06 3E */	clrlwi r24, r0, 24
.L_8147F7D4:
/* 8147F7D4 | 56 80 06 3E */	clrlwi r0, r20, 24
/* 8147F7D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F7DC | 40 82 00 C8 */	bne .L_8147F8A4
/* 8147F7E0 | 88 7F 03 0C */	lbz r3, 0x30c(r31)
/* 8147F7E4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147F7E8 | 54 00 10 3A */	slwi r0, r0, 2
/* 8147F7EC | 7C 7F 02 14 */	add r3, r31, r0
/* 8147F7F0 | 80 03 02 CC */	lwz r0, 0x2cc(r3)
/* 8147F7F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8147F7F8 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 8147F7FC | 3B 43 00 08 */	addi r26, r3, 0x8
/* 8147F800 | 3B C0 00 00 */	li r30, 0x0
/* 8147F804 | 48 00 00 20 */	b .L_8147F824
.L_8147F808:
/* 8147F808 | 88 1A 00 01 */	lbz r0, 0x1(r26)
/* 8147F80C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F810 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 8147F814 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F818 | 41 82 00 1C */	beq .L_8147F834
/* 8147F81C | 3B 5A 00 08 */	addi r26, r26, 0x8
/* 8147F820 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147F824:
/* 8147F824 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 8147F828 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 8147F82C | 7C 1E 00 00 */	cmpw r30, r0
/* 8147F830 | 41 80 FF D8 */	blt .L_8147F808
.L_8147F834:
/* 8147F834 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 8147F838 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 8147F83C | 7C 1E 00 00 */	cmpw r30, r0
/* 8147F840 | 41 80 00 1C */	blt .L_8147F85C
/* 8147F844 | 38 60 04 F6 */	li r3, 0x4f6
/* 8147F848 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147F84C | 7F E4 FB 78 */	mr r4, r31
/* 8147F850 | 48 00 4C 2D */	bl Zi8LogError
/* 8147F854 | 38 60 00 00 */	li r3, 0x0
/* 8147F858 | 48 00 04 44 */	b .L_8147FC9C
.L_8147F85C:
/* 8147F85C | 88 1A 00 04 */	lbz r0, 0x4(r26)
/* 8147F860 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147F864 | 54 03 40 2E */	slwi r3, r0, 8
/* 8147F868 | 88 1A 00 05 */	lbz r0, 0x5(r26)
/* 8147F86C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147F870 | 7C 03 02 14 */	add r0, r3, r0
/* 8147F874 | 90 1F 03 14 */	stw r0, 0x314(r31)
/* 8147F878 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8147F87C | 88 1A 00 02 */	lbz r0, 0x2(r26)
/* 8147F880 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147F884 | 54 04 40 2E */	slwi r4, r0, 8
/* 8147F888 | 88 1A 00 03 */	lbz r0, 0x3(r26)
/* 8147F88C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147F890 | 7C 05 22 14 */	add r0, r5, r4
/* 8147F894 | 7C 03 02 14 */	add r0, r3, r0
/* 8147F898 | 90 1F 03 10 */	stw r0, 0x310(r31)
/* 8147F89C | 38 00 00 00 */	li r0, 0x0
/* 8147F8A0 | 90 1F 03 18 */	stw r0, 0x318(r31)
.L_8147F8A4:
/* 8147F8A4 | 83 BF 03 10 */	lwz r29, 0x310(r31)
/* 8147F8A8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8147F8AC | 40 82 03 88 */	bne .L_8147FC34
/* 8147F8B0 | 38 60 04 B3 */	li r3, 0x4b3
/* 8147F8B4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147F8B8 | 7F E4 FB 78 */	mr r4, r31
/* 8147F8BC | 48 00 4B C1 */	bl Zi8LogError
/* 8147F8C0 | 38 60 00 00 */	li r3, 0x0
/* 8147F8C4 | 48 00 03 D8 */	b .L_8147FC9C
.L_8147F8C8:
/* 8147F8C8 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147F8CC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8147F8D0 | 54 19 06 3E */	clrlwi r25, r0, 24
/* 8147F8D4 | 93 21 00 18 */	stw r25, 0x18(r1)
/* 8147F8D8 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 8147F8DC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147F8E0 | 40 82 00 40 */	bne .L_8147F920
/* 8147F8E4 | 88 1F 00 17 */	lbz r0, 0x17(r31)
/* 8147F8E8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F8EC | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147F8F0 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F8F4 | 41 81 00 9C */	bgt .L_8147F990
/* 8147F8F8 | 3B 39 FF FF */	subi r25, r25, 0x1
/* 8147F8FC | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 8147F900 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147F904 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8147F908 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8147F90C | 7F A3 EB 78 */	mr r3, r29
/* 8147F910 | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 8147F914 | 4B FF FC C5 */	bl ZiGetZHWordSize
/* 8147F918 | 7C 79 1B 78 */	mr r25, r3
/* 8147F91C | 48 00 00 38 */	b .L_8147F954
.L_8147F920:
/* 8147F920 | 88 1F 03 1E */	lbz r0, 0x31e(r31)
/* 8147F924 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F928 | 41 82 00 2C */	beq .L_8147F954
/* 8147F92C | 56 A0 06 3E */	clrlwi r0, r21, 24
/* 8147F930 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F934 | 41 82 00 20 */	beq .L_8147F954
/* 8147F938 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147F93C | 7C 00 C8 00 */	cmpw r0, r25
/* 8147F940 | 40 80 00 14 */	bge .L_8147F954
/* 8147F944 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147F948 | 7C 1D 00 AE */	lbzx r0, r29, r0
/* 8147F94C | 28 00 00 20 */	cmplwi r0, 0x20
/* 8147F950 | 41 82 00 9C */	beq .L_8147F9EC
.L_8147F954:
/* 8147F954 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147F958 | 7C 00 C8 00 */	cmpw r0, r25
/* 8147F95C | 41 81 00 34 */	bgt .L_8147F990
/* 8147F960 | 56 A0 06 3E */	clrlwi r0, r21, 24
/* 8147F964 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F968 | 41 82 00 10 */	beq .L_8147F978
/* 8147F96C | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147F970 | 7C 19 00 00 */	cmpw r25, r0
/* 8147F974 | 40 82 00 1C */	bne .L_8147F990
.L_8147F978:
/* 8147F978 | 56 A0 06 3E */	clrlwi r0, r21, 24
/* 8147F97C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F980 | 40 82 00 28 */	bne .L_8147F9A8
/* 8147F984 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147F988 | 7C 19 00 00 */	cmpw r25, r0
/* 8147F98C | 40 82 00 1C */	bne .L_8147F9A8
.L_8147F990:
/* 8147F990 | 80 7F 03 18 */	lwz r3, 0x318(r31)
/* 8147F994 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147F998 | 90 1F 03 18 */	stw r0, 0x318(r31)
/* 8147F99C | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 8147F9A0 | 7F BD 02 14 */	add r29, r29, r0
/* 8147F9A4 | 48 00 02 90 */	b .L_8147FC34
.L_8147F9A8:
/* 8147F9A8 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 8147F9AC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147F9B0 | 40 82 00 3C */	bne .L_8147F9EC
/* 8147F9B4 | 93 81 00 1C */	stw r28, 0x1c(r1)
/* 8147F9B8 | 3B C0 00 00 */	li r30, 0x0
/* 8147F9BC | 48 00 00 20 */	b .L_8147F9DC
.L_8147F9C0:
/* 8147F9C0 | 7C 1D F0 AE */	lbzx r0, r29, r30
/* 8147F9C4 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 8147F9C8 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8147F9CC | 7C 03 F0 AE */	lbzx r0, r3, r30
/* 8147F9D0 | 7C 04 00 40 */	cmplw r4, r0
/* 8147F9D4 | 40 82 FF BC */	bne .L_8147F990
/* 8147F9D8 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147F9DC:
/* 8147F9DC | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147F9E0 | 7C 1E 00 00 */	cmpw r30, r0
/* 8147F9E4 | 41 80 FF DC */	blt .L_8147F9C0
/* 8147F9E8 | 48 00 00 D8 */	b .L_8147FAC0
.L_8147F9EC:
/* 8147F9EC | 3B C0 00 00 */	li r30, 0x0
/* 8147F9F0 | 48 00 00 C4 */	b .L_8147FAB4
.L_8147F9F4:
/* 8147F9F4 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147F9F8 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8147F9FC | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 8147FA00 | 41 80 00 3C */	blt .L_8147FA3C
/* 8147FA04 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147FA08 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8147FA0C | 28 00 F3 7F */	cmplwi r0, 0xf37f
/* 8147FA10 | 41 81 00 2C */	bgt .L_8147FA3C
/* 8147FA14 | 7C 7D F0 AE */	lbzx r3, r29, r30
/* 8147FA18 | 56 E4 06 3E */	clrlwi r4, r23, 24
/* 8147FA1C | 7F E5 FB 78 */	mr r5, r31
/* 8147FA20 | 4B FE 00 45 */	bl Zi8ConvertUC2Key
/* 8147FA24 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147FA28 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147FA2C | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8147FA30 | 7C 00 18 40 */	cmplw r0, r3
/* 8147FA34 | 40 82 FF 5C */	bne .L_8147F990
/* 8147FA38 | 48 00 00 78 */	b .L_8147FAB0
.L_8147FA3C:
/* 8147FA3C | 7C 7D F0 AE */	lbzx r3, r29, r30
/* 8147FA40 | 56 E4 06 3E */	clrlwi r4, r23, 24
/* 8147FA44 | 7F E5 FB 78 */	mr r5, r31
/* 8147FA48 | 4B FD FB 11 */	bl Zi8ConvertUC2WC
/* 8147FA4C | B0 61 00 0E */	sth r3, 0xe(r1)
/* 8147FA50 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8147FA54 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147FA58 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147FA5C | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8147FA60 | 7C 03 00 40 */	cmplw r3, r0
/* 8147FA64 | 41 82 00 4C */	beq .L_8147FAB0
/* 8147FA68 | 88 1F 00 1F */	lbz r0, 0x1f(r31)
/* 8147FA6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FA70 | 41 82 FF 20 */	beq .L_8147F990
/* 8147FA74 | 38 60 00 00 */	li r3, 0x0
/* 8147FA78 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147FA7C | 38 81 00 0E */	addi r4, r1, 0xe
/* 8147FA80 | 56 E5 06 3E */	clrlwi r5, r23, 24
/* 8147FA84 | 7F E6 FB 78 */	mr r6, r31
/* 8147FA88 | 48 00 4E 19 */	bl Zi8ChangeCharCase
/* 8147FA8C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147FA90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FA94 | 41 82 FE FC */	beq .L_8147F990
/* 8147FA98 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8147FA9C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147FAA0 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147FAA4 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8147FAA8 | 7C 03 00 40 */	cmplw r3, r0
/* 8147FAAC | 40 82 FE E4 */	bne .L_8147F990
.L_8147FAB0:
/* 8147FAB0 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147FAB4:
/* 8147FAB4 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147FAB8 | 7C 1E 00 00 */	cmpw r30, r0
/* 8147FABC | 41 80 FF 38 */	blt .L_8147F9F4
.L_8147FAC0:
/* 8147FAC0 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8147FAC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FAC8 | 41 82 00 50 */	beq .L_8147FB18
/* 8147FACC | 38 00 00 00 */	li r0, 0x0
/* 8147FAD0 | 90 1F 03 10 */	stw r0, 0x310(r31)
/* 8147FAD4 | 38 00 00 00 */	li r0, 0x0
/* 8147FAD8 | 90 1F 03 18 */	stw r0, 0x318(r31)
/* 8147FADC | 38 00 00 00 */	li r0, 0x0
/* 8147FAE0 | 90 1F 03 14 */	stw r0, 0x314(r31)
/* 8147FAE4 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8147FAE8 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 8147FAEC | 41 80 00 10 */	blt .L_8147FAFC
/* 8147FAF0 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8147FAF4 | B0 16 00 00 */	sth r0, 0x0(r22)
/* 8147FAF8 | 48 00 00 18 */	b .L_8147FB10
.L_8147FAFC:
/* 8147FAFC | A0 7C 00 00 */	lhz r3, 0x0(r28)
/* 8147FB00 | 56 E4 06 3E */	clrlwi r4, r23, 24
/* 8147FB04 | 7F E5 FB 78 */	mr r5, r31
/* 8147FB08 | 4B FE 02 99 */	bl Zi8ConvertWC2Key
/* 8147FB0C | B0 76 00 00 */	sth r3, 0x0(r22)
.L_8147FB10:
/* 8147FB10 | 38 60 00 01 */	li r3, 0x1
/* 8147FB14 | 48 00 01 88 */	b .L_8147FC9C
.L_8147FB18:
/* 8147FB18 | 56 E0 06 3E */	clrlwi r0, r23, 24
/* 8147FB1C | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147FB20 | 40 82 00 68 */	bne .L_8147FB88
/* 8147FB24 | 92 C1 00 10 */	stw r22, 0x10(r1)
/* 8147FB28 | 3B 60 00 00 */	li r27, 0x0
/* 8147FB2C | 7F 7E DB 78 */	mr r30, r27
/* 8147FB30 | 48 00 00 28 */	b .L_8147FB58
.L_8147FB34:
/* 8147FB34 | 7C 1D F0 AE */	lbzx r0, r29, r30
/* 8147FB38 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 8147FB3C | 7C 03 F1 AE */	stbx r0, r3, r30
/* 8147FB40 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147FB44 | 7C 1D F0 AE */	lbzx r0, r29, r30
/* 8147FB48 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 8147FB4C | 7C 03 F1 AE */	stbx r0, r3, r30
/* 8147FB50 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147FB54 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_8147FB58:
/* 8147FB58 | 7C 1E C8 00 */	cmpw r30, r25
/* 8147FB5C | 40 80 00 10 */	bge .L_8147FB6C
/* 8147FB60 | 56 60 04 3E */	clrlwi r0, r19, 16
/* 8147FB64 | 7C 1B 00 00 */	cmpw r27, r0
/* 8147FB68 | 41 80 FF CC */	blt .L_8147FB34
.L_8147FB6C:
/* 8147FB6C | 7F A3 EB 78 */	mr r3, r29
/* 8147FB70 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8147FB74 | A0 A1 00 0C */	lhz r5, 0xc(r1)
/* 8147FB78 | 80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8147FB7C | 7F 27 CB 78 */	mr r7, r25
/* 8147FB80 | 4B FF FA D5 */	bl Zi8CopyZHSpelling
/* 8147FB84 | 48 00 00 80 */	b .L_8147FC04
.L_8147FB88:
/* 8147FB88 | 3B 60 00 00 */	li r27, 0x0
/* 8147FB8C | 48 00 00 64 */	b .L_8147FBF0
.L_8147FB90:
/* 8147FB90 | 7C 7D D8 AE */	lbzx r3, r29, r27
/* 8147FB94 | 56 E4 06 3E */	clrlwi r4, r23, 24
/* 8147FB98 | 7F E5 FB 78 */	mr r5, r31
/* 8147FB9C | 4B FD F9 BD */	bl Zi8ConvertUC2WC
/* 8147FBA0 | 57 60 08 3C */	slwi r0, r27, 1
/* 8147FBA4 | 7C 76 03 2E */	sthx r3, r22, r0
/* 8147FBA8 | 88 1F 03 1E */	lbz r0, 0x31e(r31)
/* 8147FBAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FBB0 | 41 82 00 3C */	beq .L_8147FBEC
/* 8147FBB4 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147FBB8 | 7C 1B 00 00 */	cmpw r27, r0
/* 8147FBBC | 41 80 00 30 */	blt .L_8147FBEC
/* 8147FBC0 | 57 60 08 3C */	slwi r0, r27, 1
/* 8147FBC4 | 7C 16 02 2E */	lhzx r0, r22, r0
/* 8147FBC8 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8147FBCC | 40 82 00 20 */	bne .L_8147FBEC
/* 8147FBD0 | 56 A0 06 3E */	clrlwi r0, r21, 24
/* 8147FBD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FBD8 | 40 82 00 2C */	bne .L_8147FC04
/* 8147FBDC | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147FBE0 | 7C 1B 00 00 */	cmpw r27, r0
/* 8147FBE4 | 41 80 FD AC */	blt .L_8147F990
/* 8147FBE8 | 48 00 00 1C */	b .L_8147FC04
.L_8147FBEC:
/* 8147FBEC | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_8147FBF0:
/* 8147FBF0 | 7C 1B C8 00 */	cmpw r27, r25
/* 8147FBF4 | 40 80 00 10 */	bge .L_8147FC04
/* 8147FBF8 | 56 60 04 3E */	clrlwi r0, r19, 16
/* 8147FBFC | 7C 1B 00 00 */	cmpw r27, r0
/* 8147FC00 | 41 80 FF 90 */	blt .L_8147FB90
.L_8147FC04:
/* 8147FC04 | 80 7F 03 18 */	lwz r3, 0x318(r31)
/* 8147FC08 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147FC0C | 90 1F 03 18 */	stw r0, 0x318(r31)
/* 8147FC10 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 8147FC14 | 7C 1D 02 14 */	add r0, r29, r0
/* 8147FC18 | 90 1F 03 10 */	stw r0, 0x310(r31)
/* 8147FC1C | 38 60 00 64 */	li r3, 0x64
/* 8147FC20 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147FC24 | 7F E4 FB 78 */	mr r4, r31
/* 8147FC28 | 48 00 48 55 */	bl Zi8LogError
/* 8147FC2C | 57 63 06 3E */	clrlwi r3, r27, 24
/* 8147FC30 | 48 00 00 6C */	b .L_8147FC9C
.L_8147FC34:
/* 8147FC34 | 80 7F 03 18 */	lwz r3, 0x318(r31)
/* 8147FC38 | 80 1F 03 14 */	lwz r0, 0x314(r31)
/* 8147FC3C | 7C 03 00 00 */	cmpw r3, r0
/* 8147FC40 | 41 80 FC 88 */	blt .L_8147F8C8
/* 8147FC44 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147FC48 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147FC4C | 40 82 00 34 */	bne .L_8147FC80
/* 8147FC50 | 56 A0 06 3E */	clrlwi r0, r21, 24
/* 8147FC54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FC58 | 41 82 00 28 */	beq .L_8147FC80
/* 8147FC5C | 56 80 06 3E */	clrlwi r0, r20, 24
/* 8147FC60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FC64 | 40 82 00 1C */	bne .L_8147FC80
/* 8147FC68 | 3A A0 00 00 */	li r21, 0x0
/* 8147FC6C | 38 00 00 01 */	li r0, 0x1
/* 8147FC70 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8147FC74 | 38 00 00 00 */	li r0, 0x0
/* 8147FC78 | 90 1F 03 18 */	stw r0, 0x318(r31)
/* 8147FC7C | 4B FF FC 28 */	b .L_8147F8A4
.L_8147FC80:
/* 8147FC80 | 38 00 00 00 */	li r0, 0x0
/* 8147FC84 | 90 1F 03 10 */	stw r0, 0x310(r31)
/* 8147FC88 | 38 00 00 00 */	li r0, 0x0
/* 8147FC8C | 90 1F 03 18 */	stw r0, 0x318(r31)
/* 8147FC90 | 38 00 00 00 */	li r0, 0x0
/* 8147FC94 | 90 1F 03 14 */	stw r0, 0x314(r31)
/* 8147FC98 | 38 60 00 00 */	li r3, 0x0
.L_8147FC9C:
/* 8147FC9C | 39 61 00 60 */	addi r11, r1, 0x60
/* 8147FCA0 | 48 17 98 4D */	bl _restgpr_19
/* 8147FCA4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8147FCA8 | 7C 08 03 A6 */	mtlr r0
/* 8147FCAC | 38 21 00 60 */	addi r1, r1, 0x60
/* 8147FCB0 | 4E 80 00 20 */	blr
.endfn Zi8MatchPUDdata_ZHS

# .text:0x71C | 0x8147FCB4 | size: 0xC8
.fn Zi8MatchPUDdata, global
/* 8147FCB4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147FCB8 | 7C 08 02 A6 */	mflr r0
/* 8147FCBC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147FCC0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8147FCC4 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8147FCC8 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 8147FCCC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8147FCD0 | 98 81 00 0C */	stb r4, 0xc(r1)
/* 8147FCD4 | 98 A1 00 0D */	stb r5, 0xd(r1)
/* 8147FCD8 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 8147FCDC | B0 E1 00 14 */	sth r7, 0x14(r1)
/* 8147FCE0 | 99 01 00 16 */	stb r8, 0x16(r1)
/* 8147FCE4 | 7D 3D 4B 78 */	mr r29, r9
/* 8147FCE8 | 7D 5F 53 78 */	mr r31, r10
/* 8147FCEC | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147FCF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FCF4 | 40 82 00 0C */	bne .L_8147FD00
/* 8147FCF8 | 38 00 00 01 */	li r0, 0x1
/* 8147FCFC | 98 1F 03 0C */	stb r0, 0x30c(r31)
.L_8147FD00:
/* 8147FD00 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8147FD04 | 88 81 00 0C */	lbz r4, 0xc(r1)
/* 8147FD08 | 88 A1 00 0D */	lbz r5, 0xd(r1)
/* 8147FD0C | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8147FD10 | A0 E1 00 14 */	lhz r7, 0x14(r1)
/* 8147FD14 | 89 01 00 16 */	lbz r8, 0x16(r1)
/* 8147FD18 | 57 A9 06 3E */	clrlwi r9, r29, 24
/* 8147FD1C | 7F EA FB 78 */	mr r10, r31
/* 8147FD20 | 48 00 00 5D */	bl Zi8_8147FD7C
/* 8147FD24 | 7C 7E 1B 78 */	mr r30, r3
/* 8147FD28 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147FD2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147FD30 | 40 82 00 2C */	bne .L_8147FD5C
/* 8147FD34 | 88 7F 03 0C */	lbz r3, 0x30c(r31)
/* 8147FD38 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147FD3C | 98 1F 03 0C */	stb r0, 0x30c(r31)
/* 8147FD40 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147FD44 | 28 00 00 10 */	cmplwi r0, 0x10
/* 8147FD48 | 41 81 00 0C */	bgt .L_8147FD54
/* 8147FD4C | 3B A0 00 00 */	li r29, 0x0
/* 8147FD50 | 4B FF FF B0 */	b .L_8147FD00
.L_8147FD54:
/* 8147FD54 | 38 00 00 01 */	li r0, 0x1
/* 8147FD58 | 98 1F 03 0C */	stb r0, 0x30c(r31)
.L_8147FD5C:
/* 8147FD5C | 7F C3 F3 78 */	mr r3, r30
/* 8147FD60 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8147FD64 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8147FD68 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8147FD6C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147FD70 | 7C 08 03 A6 */	mtlr r0
/* 8147FD74 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147FD78 | 4E 80 00 20 */	blr
.endfn Zi8MatchPUDdata

# .text:0x7E4 | 0x8147FD7C | size: 0x74
.fn Zi8_8147FD7C, global
/* 8147FD7C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147FD80 | 7C 08 02 A6 */	mflr r0
/* 8147FD84 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147FD88 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8147FD8C | 98 81 00 14 */	stb r4, 0x14(r1)
/* 8147FD90 | 98 A1 00 15 */	stb r5, 0x15(r1)
/* 8147FD94 | 90 C1 00 18 */	stw r6, 0x18(r1)
/* 8147FD98 | B0 E1 00 1C */	sth r7, 0x1c(r1)
/* 8147FD9C | 99 01 00 1E */	stb r8, 0x1e(r1)
/* 8147FDA0 | 99 21 00 1F */	stb r9, 0x1f(r1)
/* 8147FDA4 | 91 41 00 20 */	stw r10, 0x20(r1)
/* 8147FDA8 | 88 01 00 1F */	lbz r0, 0x1f(r1)
/* 8147FDAC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8147FDB0 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8147FDB4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8147FDB8 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 8147FDBC | 88 81 00 14 */	lbz r4, 0x14(r1)
/* 8147FDC0 | 88 A1 00 15 */	lbz r5, 0x15(r1)
/* 8147FDC4 | 80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8147FDC8 | A0 E1 00 1C */	lhz r7, 0x1c(r1)
/* 8147FDCC | 39 00 00 00 */	li r8, 0x0
/* 8147FDD0 | 39 20 00 00 */	li r9, 0x0
/* 8147FDD4 | 55 29 04 3E */	clrlwi r9, r9, 16
/* 8147FDD8 | 89 41 00 1E */	lbz r10, 0x1e(r1)
/* 8147FDDC | 4B FF F9 51 */	bl Zi8MatchPUDdata_ZHS
/* 8147FDE0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147FDE4 | 7C 08 03 A6 */	mtlr r0
/* 8147FDE8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147FDEC | 4E 80 00 20 */	blr
.endfn Zi8_8147FD7C
