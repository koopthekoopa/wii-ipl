.include "macros.inc"
.file "zi8alt.c"

# 0x81330508..0x81330510 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330508 | size: 0x8
.obj "@etb_81330508", local
.hidden "@etb_81330508"
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
.endobj "@etb_81330508"

# 0x8133111C..0x81331128 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8133111C | size: 0xC
.obj "@eti_8133111C", local
.hidden "@eti_8133111C"
	.4byte Zi8MatchAltSound
	.4byte 0x000004B0
	.4byte "@etb_81330508"
.endobj "@eti_8133111C"

# 0x8146A66C..0x8146AB1C | size: 0x4B0
.text
.balign 4

# .text:0x0 | 0x8146A66C | size: 0x4B0
.fn Zi8MatchAltSound, global
/* 8146A66C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8146A670 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8146A674 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8146A678 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8146A67C | 54 C0 04 3E */	clrlwi r0, r6, 16
/* 8146A680 | 7C 00 46 70 */	srawi r0, r0, 8
/* 8146A684 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8146A688 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8146A68C | 54 C0 06 3E */	clrlwi r0, r6, 24
/* 8146A690 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8146A694 | 55 20 06 3E */	clrlwi r0, r9, 24
/* 8146A698 | 7C 00 1E 70 */	srawi r0, r0, 3
/* 8146A69C | 54 09 06 3E */	clrlwi r9, r0, 24
/* 8146A6A0 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8146A6A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146A6A8 | 40 82 00 0C */	bne .L_8146A6B4
/* 8146A6AC | 38 60 00 00 */	li r3, 0x0
/* 8146A6B0 | 48 00 04 58 */	b .L_8146AB08
.L_8146A6B4:
/* 8146A6B4 | 3B C0 00 00 */	li r30, 0x0
/* 8146A6B8 | 54 8A 04 3E */	clrlwi r10, r4, 16
/* 8146A6BC | 3B EA FF FF */	subi r31, r10, 0x1
/* 8146A6C0 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8146A6C4 | 54 0B 06 3E */	clrlwi r11, r0, 24
/* 8146A6C8 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A6CC | 7D 43 02 14 */	add r10, r3, r0
/* 8146A6D0 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146A6D4 | 7C 0B 00 40 */	cmplw r11, r0
/* 8146A6D8 | 40 82 00 24 */	bne .L_8146A6FC
/* 8146A6DC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8146A6E0 | 54 0A 06 3E */	clrlwi r10, r0, 24
/* 8146A6E4 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A6E8 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146A6EC | 7C 0A 00 40 */	cmplw r10, r0
/* 8146A6F0 | 40 82 00 0C */	bne .L_8146A6FC
/* 8146A6F4 | 7F FE FB 78 */	mr r30, r31
/* 8146A6F8 | 48 00 00 38 */	b .L_8146A730
.L_8146A6FC:
/* 8146A6FC | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8146A700 | 54 0B 06 3E */	clrlwi r11, r0, 24
/* 8146A704 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146A708 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A70C | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146A710 | 7C 0B 00 40 */	cmplw r11, r0
/* 8146A714 | 40 82 02 54 */	bne .L_8146A968
/* 8146A718 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8146A71C | 54 0A 06 3E */	clrlwi r10, r0, 24
/* 8146A720 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146A724 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146A728 | 7C 0A 00 40 */	cmplw r10, r0
/* 8146A72C | 40 82 02 3C */	bne .L_8146A968
.L_8146A730:
/* 8146A730 | 7F DF F3 78 */	mr r31, r30
.L_8146A734:
/* 8146A734 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A738 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A73C | 88 0A 00 03 */	lbz r0, 0x3(r10)
/* 8146A740 | 54 00 07 3C */	rlwinm r0, r0, 0, 28, 30
/* 8146A744 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146A748 | 41 82 00 20 */	beq .L_8146A768
/* 8146A74C | 55 2B 06 3E */	clrlwi r11, r9, 24
/* 8146A750 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A754 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A758 | 88 0A 00 03 */	lbz r0, 0x3(r10)
/* 8146A75C | 7D 60 00 38 */	and r0, r11, r0
/* 8146A760 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146A764 | 41 82 00 A0 */	beq .L_8146A804
.L_8146A768:
/* 8146A768 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A76C | 7D 43 02 14 */	add r10, r3, r0
/* 8146A770 | 88 0A 00 02 */	lbz r0, 0x2(r10)
/* 8146A774 | 54 0B 04 3E */	clrlwi r11, r0, 16
/* 8146A778 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A77C | 7D 43 02 14 */	add r10, r3, r0
/* 8146A780 | 88 0A 00 03 */	lbz r0, 0x3(r10)
/* 8146A784 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A788 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8146A78C | 54 00 40 2E */	slwi r0, r0, 8
/* 8146A790 | 7D 60 03 78 */	or r0, r11, r0
/* 8146A794 | 54 00 08 3C */	slwi r0, r0, 1
/* 8146A798 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A79C | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8146A7A0 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A7A4 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A7A8 | 88 0A 00 03 */	lbz r0, 0x3(r10)
/* 8146A7AC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A7B0 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 8146A7B4 | 7C 0C 26 70 */	srawi r12, r0, 4
/* 8146A7B8 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8146A7BC | 7D 65 00 AE */	lbzx r11, r5, r0
/* 8146A7C0 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8146A7C4 | 7D 40 2A 14 */	add r10, r0, r5
/* 8146A7C8 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146A7CC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A7D0 | 54 00 40 2E */	slwi r0, r0, 8
/* 8146A7D4 | 7D 60 03 78 */	or r0, r11, r0
/* 8146A7D8 | 7D 80 03 78 */	or r0, r12, r0
/* 8146A7DC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A7E0 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8146A7E4 | 55 0B 04 3E */	clrlwi r11, r8, 16
/* 8146A7E8 | A1 41 00 0A */	lhz r10, 0xa(r1)
/* 8146A7EC | 54 E0 04 3E */	clrlwi r0, r7, 16
/* 8146A7F0 | 7D 40 00 38 */	and r0, r10, r0
/* 8146A7F4 | 7C 0B 00 00 */	cmpw r11, r0
/* 8146A7F8 | 40 82 00 0C */	bne .L_8146A804
/* 8146A7FC | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8146A800 | 48 00 03 08 */	b .L_8146AB08
.L_8146A804:
/* 8146A804 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8146A808 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8146A80C | 7C 1F 00 00 */	cmpw r31, r0
/* 8146A810 | 40 80 00 38 */	bge .L_8146A848
/* 8146A814 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8146A818 | 54 0B 06 3E */	clrlwi r11, r0, 24
/* 8146A81C | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A820 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A824 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146A828 | 7C 0B 00 40 */	cmplw r11, r0
/* 8146A82C | 40 82 00 1C */	bne .L_8146A848
/* 8146A830 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8146A834 | 54 0A 06 3E */	clrlwi r10, r0, 24
/* 8146A838 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A83C | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146A840 | 7C 0A 00 40 */	cmplw r10, r0
/* 8146A844 | 41 82 FE F0 */	beq .L_8146A734
.L_8146A848:
/* 8146A848 | 7F DF F3 78 */	mr r31, r30
/* 8146A84C | 48 00 00 D4 */	b .L_8146A920
.L_8146A850:
/* 8146A850 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A854 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A858 | 88 0A 00 03 */	lbz r0, 0x3(r10)
/* 8146A85C | 54 00 07 3C */	rlwinm r0, r0, 0, 28, 30
/* 8146A860 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146A864 | 41 82 00 20 */	beq .L_8146A884
/* 8146A868 | 55 2B 06 3E */	clrlwi r11, r9, 24
/* 8146A86C | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A870 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A874 | 88 0A 00 03 */	lbz r0, 0x3(r10)
/* 8146A878 | 7D 60 00 38 */	and r0, r11, r0
/* 8146A87C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8146A880 | 41 82 00 A0 */	beq .L_8146A920
.L_8146A884:
/* 8146A884 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A888 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A88C | 88 0A 00 02 */	lbz r0, 0x2(r10)
/* 8146A890 | 54 0B 04 3E */	clrlwi r11, r0, 16
/* 8146A894 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A898 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A89C | 88 0A 00 03 */	lbz r0, 0x3(r10)
/* 8146A8A0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A8A4 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8146A8A8 | 54 00 40 2E */	slwi r0, r0, 8
/* 8146A8AC | 7D 60 03 78 */	or r0, r11, r0
/* 8146A8B0 | 54 00 08 3C */	slwi r0, r0, 1
/* 8146A8B4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A8B8 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8146A8BC | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A8C0 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A8C4 | 88 0A 00 03 */	lbz r0, 0x3(r10)
/* 8146A8C8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A8CC | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 8146A8D0 | 7C 0C 26 70 */	srawi r12, r0, 4
/* 8146A8D4 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8146A8D8 | 7D 65 00 AE */	lbzx r11, r5, r0
/* 8146A8DC | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8146A8E0 | 7D 40 2A 14 */	add r10, r0, r5
/* 8146A8E4 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146A8E8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A8EC | 54 00 40 2E */	slwi r0, r0, 8
/* 8146A8F0 | 7D 60 03 78 */	or r0, r11, r0
/* 8146A8F4 | 7D 80 03 78 */	or r0, r12, r0
/* 8146A8F8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A8FC | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8146A900 | 55 0B 04 3E */	clrlwi r11, r8, 16
/* 8146A904 | A1 41 00 0A */	lhz r10, 0xa(r1)
/* 8146A908 | 54 E0 04 3E */	clrlwi r0, r7, 16
/* 8146A90C | 7D 40 00 38 */	and r0, r10, r0
/* 8146A910 | 7C 0B 00 00 */	cmpw r11, r0
/* 8146A914 | 40 82 00 0C */	bne .L_8146A920
/* 8146A918 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8146A91C | 48 00 01 EC */	b .L_8146AB08
.L_8146A920:
/* 8146A920 | 3B FF FF FF */	subi r31, r31, 0x1
/* 8146A924 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8146A928 | 41 80 00 38 */	blt .L_8146A960
/* 8146A92C | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8146A930 | 54 0B 06 3E */	clrlwi r11, r0, 24
/* 8146A934 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A938 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A93C | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146A940 | 7C 0B 00 40 */	cmplw r11, r0
/* 8146A944 | 40 82 00 1C */	bne .L_8146A960
/* 8146A948 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8146A94C | 54 0A 06 3E */	clrlwi r10, r0, 24
/* 8146A950 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146A954 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146A958 | 7C 0A 00 40 */	cmplw r10, r0
/* 8146A95C | 41 82 FE F4 */	beq .L_8146A850
.L_8146A960:
/* 8146A960 | 38 60 00 00 */	li r3, 0x0
/* 8146A964 | 48 00 01 A4 */	b .L_8146AB08
.L_8146A968:
/* 8146A968 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8146A96C | 54 0B 06 3E */	clrlwi r11, r0, 24
/* 8146A970 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146A974 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A978 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146A97C | 7C 0B 00 40 */	cmplw r11, r0
/* 8146A980 | 40 82 00 1C */	bne .L_8146A99C
/* 8146A984 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8146A988 | 54 0A 06 3E */	clrlwi r10, r0, 24
/* 8146A98C | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146A990 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146A994 | 7C 0A 00 40 */	cmplw r10, r0
/* 8146A998 | 41 82 FD 98 */	beq .L_8146A730
.L_8146A99C:
/* 8146A99C | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146A9A0 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A9A4 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146A9A8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A9AC | 54 0A 40 2E */	slwi r10, r0, 8
/* 8146A9B0 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8146A9B4 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146A9B8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146A9BC | 7D 4A 03 78 */	or r10, r10, r0
/* 8146A9C0 | 54 C0 04 3E */	clrlwi r0, r6, 16
/* 8146A9C4 | 7C 0A 00 00 */	cmpw r10, r0
/* 8146A9C8 | 40 81 00 0C */	ble .L_8146A9D4
/* 8146A9CC | 38 60 00 00 */	li r3, 0x0
/* 8146A9D0 | 48 00 01 38 */	b .L_8146AB08
.L_8146A9D4:
/* 8146A9D4 | 7D 5E FA 14 */	add r10, r30, r31
/* 8146A9D8 | 55 40 0F FE */	srwi r0, r10, 31
/* 8146A9DC | 7C 00 52 14 */	add r0, r0, r10
/* 8146A9E0 | 7C 1D 0E 70 */	srawi r29, r0, 1
/* 8146A9E4 | 7C 1D F0 00 */	cmpw r29, r30
/* 8146A9E8 | 40 82 00 0C */	bne .L_8146A9F4
/* 8146A9EC | 38 60 00 00 */	li r3, 0x0
/* 8146A9F0 | 48 00 01 18 */	b .L_8146AB08
.L_8146A9F4:
/* 8146A9F4 | 57 A0 10 3A */	slwi r0, r29, 2
/* 8146A9F8 | 7D 43 02 14 */	add r10, r3, r0
/* 8146A9FC | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146AA00 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146AA04 | 54 0A 40 2E */	slwi r10, r0, 8
/* 8146AA08 | 57 A0 10 3A */	slwi r0, r29, 2
/* 8146AA0C | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146AA10 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146AA14 | 7D 4A 03 78 */	or r10, r10, r0
/* 8146AA18 | 54 C0 04 3E */	clrlwi r0, r6, 16
/* 8146AA1C | 7C 0A 00 00 */	cmpw r10, r0
/* 8146AA20 | 41 80 00 0C */	blt .L_8146AA2C
/* 8146AA24 | 7F BF EB 78 */	mr r31, r29
/* 8146AA28 | 48 00 00 0C */	b .L_8146AA34
.L_8146AA2C:
/* 8146AA2C | 7F BE EB 78 */	mr r30, r29
/* 8146AA30 | 4B FF FF 38 */	b .L_8146A968
.L_8146AA34:
/* 8146AA34 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8146AA38 | 54 0B 06 3E */	clrlwi r11, r0, 24
/* 8146AA3C | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146AA40 | 7D 43 02 14 */	add r10, r3, r0
/* 8146AA44 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146AA48 | 7C 0B 00 40 */	cmplw r11, r0
/* 8146AA4C | 40 82 00 24 */	bne .L_8146AA70
/* 8146AA50 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8146AA54 | 54 0A 06 3E */	clrlwi r10, r0, 24
/* 8146AA58 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146AA5C | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146AA60 | 7C 0A 00 40 */	cmplw r10, r0
/* 8146AA64 | 40 82 00 0C */	bne .L_8146AA70
/* 8146AA68 | 7F FE FB 78 */	mr r30, r31
/* 8146AA6C | 4B FF FC C4 */	b .L_8146A730
.L_8146AA70:
/* 8146AA70 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146AA74 | 7D 43 02 14 */	add r10, r3, r0
/* 8146AA78 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146AA7C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146AA80 | 54 0A 40 2E */	slwi r10, r0, 8
/* 8146AA84 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8146AA88 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146AA8C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146AA90 | 7D 4A 03 78 */	or r10, r10, r0
/* 8146AA94 | 54 C0 04 3E */	clrlwi r0, r6, 16
/* 8146AA98 | 7C 0A 00 00 */	cmpw r10, r0
/* 8146AA9C | 40 80 00 0C */	bge .L_8146AAA8
/* 8146AAA0 | 38 60 00 00 */	li r3, 0x0
/* 8146AAA4 | 48 00 00 64 */	b .L_8146AB08
.L_8146AAA8:
/* 8146AAA8 | 7D 5E FA 14 */	add r10, r30, r31
/* 8146AAAC | 55 40 0F FE */	srwi r0, r10, 31
/* 8146AAB0 | 7C 00 52 14 */	add r0, r0, r10
/* 8146AAB4 | 7C 1D 0E 70 */	srawi r29, r0, 1
/* 8146AAB8 | 7C 1D F0 00 */	cmpw r29, r30
/* 8146AABC | 40 82 00 0C */	bne .L_8146AAC8
/* 8146AAC0 | 38 60 00 00 */	li r3, 0x0
/* 8146AAC4 | 48 00 00 44 */	b .L_8146AB08
.L_8146AAC8:
/* 8146AAC8 | 57 A0 10 3A */	slwi r0, r29, 2
/* 8146AACC | 7D 43 02 14 */	add r10, r3, r0
/* 8146AAD0 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 8146AAD4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146AAD8 | 54 0A 40 2E */	slwi r10, r0, 8
/* 8146AADC | 57 A0 10 3A */	slwi r0, r29, 2
/* 8146AAE0 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8146AAE4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8146AAE8 | 7D 4A 03 78 */	or r10, r10, r0
/* 8146AAEC | 54 C0 04 3E */	clrlwi r0, r6, 16
/* 8146AAF0 | 7C 0A 00 00 */	cmpw r10, r0
/* 8146AAF4 | 41 80 00 0C */	blt .L_8146AB00
/* 8146AAF8 | 7F BF EB 78 */	mr r31, r29
/* 8146AAFC | 4B FF FF 38 */	b .L_8146AA34
.L_8146AB00:
/* 8146AB00 | 7F BE EB 78 */	mr r30, r29
/* 8146AB04 | 4B FF FE 64 */	b .L_8146A968
.L_8146AB08:
/* 8146AB08 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8146AB0C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8146AB10 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8146AB14 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8146AB18 | 4E 80 00 20 */	blr
.endfn Zi8MatchAltSound
