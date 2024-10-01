.include "macros.inc"
.file "d_hash.c"

# 0x810F5690..0x810F58D0 | size: 0x240
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810F5690 | size: 0x10
.obj l_tmpWName, local
	.skip 0x10
.endobj l_tmpWName

# .bss:0x10 | 0x810F56A0 | size: 0x22E
.obj hashTable, local
	.skip 0x22E
.endobj hashTable

# .bss:0x23E | 0x810F58CE | size: 0x2
.obj gap_00_810F58CE_bss, global
.hidden gap_00_810F58CE_bss
	.skip 0x2
.endobj gap_00_810F58CE_bss

# 0x814D46D8..0x814D4D58 | size: 0x680
.text
.balign 4

# .text:0x0 | 0x814D46D8 | size: 0x12C
.fn _MakeWStr, local
/* 814D46D8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D46DC | 7C 08 02 A6 */	mflr r0
/* 814D46E0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D46E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D46E8 | 48 12 4D D1 */	bl _savegpr_25
/* 814D46EC | 7C 7E 1B 78 */	mr r30, r3
/* 814D46F0 | 38 80 00 00 */	li r4, 0x0
/* 814D46F4 | 48 00 00 0C */	b .L_814D4700
.L_814D46F8:
/* 814D46F8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814D46FC | 38 84 00 01 */	addi r4, r4, 0x1
.L_814D4700:
/* 814D4700 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814D4704 | 7C 00 07 75 */	extsb. r0, r0
/* 814D4708 | 40 82 FF F0 */	bne .L_814D46F8
/* 814D470C | 28 04 00 08 */	cmplwi r4, 0x8
/* 814D4710 | 40 80 00 D8 */	bge .L_814D47E8
/* 814D4714 | 7F C3 F3 78 */	mr r3, r30
/* 814D4718 | 3B 80 00 00 */	li r28, 0x0
/* 814D471C | 48 00 00 0C */	b .L_814D4728
.L_814D4720:
/* 814D4720 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814D4724 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814D4728:
/* 814D4728 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814D472C | 7C 00 07 75 */	extsb. r0, r0
/* 814D4730 | 40 82 FF F0 */	bne .L_814D4720
/* 814D4734 | 3F 60 81 0F */	lis r27, l_tmpWName@ha
/* 814D4738 | 3F A0 81 0D */	lis r29, VFipf_vol_set_810CD7F0@ha
/* 814D473C | 3B 7B 56 90 */	addi r27, r27, l_tmpWName@l
/* 814D4740 | 3B E0 00 00 */	li r31, 0x0
/* 814D4744 | 3B BD D7 F0 */	addi r29, r29, VFipf_vol_set_810CD7F0@l
/* 814D4748 | 3B 20 00 00 */	li r25, 0x0
/* 814D474C | 48 00 00 74 */	b .L_814D47C0
.L_814D4750:
/* 814D4750 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814D4754 | 41 82 00 0C */	beq .L_814D4760
/* 814D4758 | 3B 20 00 00 */	li r25, 0x0
/* 814D475C | 48 00 00 5C */	b .L_814D47B8
.L_814D4760:
/* 814D4760 | 7C 1E F8 AE */	lbzx r0, r30, r31
/* 814D4764 | 7F 5E FA 14 */	add r26, r30, r31
/* 814D4768 | 81 9D 00 30 */	lwz r12, 0x30(r29)
/* 814D476C | 38 80 00 01 */	li r4, 0x1
/* 814D4770 | 7C 03 07 74 */	extsb r3, r0
/* 814D4774 | 7D 89 03 A6 */	mtctr r12
/* 814D4778 | 4E 80 04 21 */	bctrl
/* 814D477C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4780 | 41 82 00 2C */	beq .L_814D47AC
/* 814D4784 | 88 7A 00 01 */	lbz r3, 0x1(r26)
/* 814D4788 | 3B 20 00 01 */	li r25, 0x1
/* 814D478C | 88 1A 00 00 */	lbz r0, 0x0(r26)
/* 814D4790 | 7C 63 07 74 */	extsb r3, r3
/* 814D4794 | 7C 00 07 74 */	extsb r0, r0
/* 814D4798 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814D479C | 54 00 40 2E */	slwi r0, r0, 8
/* 814D47A0 | 7C 60 03 78 */	or r0, r3, r0
/* 814D47A4 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 814D47A8 | 48 00 00 10 */	b .L_814D47B8
.L_814D47AC:
/* 814D47AC | 88 1A 00 00 */	lbz r0, 0x0(r26)
/* 814D47B0 | 7C 00 07 74 */	extsb r0, r0
/* 814D47B4 | B0 1B 00 00 */	sth r0, 0x0(r27)
.L_814D47B8:
/* 814D47B8 | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 814D47BC | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814D47C0:
/* 814D47C0 | 7C 1F E0 40 */	cmplw r31, r28
/* 814D47C4 | 41 80 FF 8C */	blt .L_814D4750
/* 814D47C8 | 3C 80 81 0F */	lis r4, l_tmpWName@ha
/* 814D47CC | 38 A0 00 00 */	li r5, 0x0
/* 814D47D0 | 38 84 56 90 */	addi r4, r4, l_tmpWName@l
/* 814D47D4 | 57 E0 08 3C */	slwi r0, r31, 1
/* 814D47D8 | B0 A4 00 0E */	sth r5, 0xe(r4)
/* 814D47DC | 38 60 00 01 */	li r3, 0x1
/* 814D47E0 | 7C A4 03 2E */	sthx r5, r4, r0
/* 814D47E4 | 48 00 00 08 */	b .L_814D47EC
.L_814D47E8:
/* 814D47E8 | 38 60 00 00 */	li r3, 0x0
.L_814D47EC:
/* 814D47EC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D47F0 | 48 12 4D 15 */	bl _restgpr_25
/* 814D47F4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D47F8 | 7C 08 03 A6 */	mtlr r0
/* 814D47FC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D4800 | 4E 80 00 20 */	blr
.endfn _MakeWStr

# .text:0x12C | 0x814D4804 | size: 0x104
.fn dHash_InitHashTable, global
/* 814D4804 | 38 00 00 00 */	li r0, 0x0
/* 814D4808 | 3C 60 81 0F */	lis r3, hashTable@ha
/* 814D480C | B4 03 56 A0 */	sthu r0, hashTable@l(r3)
/* 814D4810 | 98 03 00 10 */	stb r0, 0x10(r3)
/* 814D4814 | B0 03 00 12 */	sth r0, 0x12(r3)
/* 814D4818 | 98 03 00 22 */	stb r0, 0x22(r3)
/* 814D481C | B0 03 00 24 */	sth r0, 0x24(r3)
/* 814D4820 | 98 03 00 34 */	stb r0, 0x34(r3)
/* 814D4824 | B0 03 00 36 */	sth r0, 0x36(r3)
/* 814D4828 | 98 03 00 46 */	stb r0, 0x46(r3)
/* 814D482C | B0 03 00 48 */	sth r0, 0x48(r3)
/* 814D4830 | 98 03 00 58 */	stb r0, 0x58(r3)
/* 814D4834 | B0 03 00 5A */	sth r0, 0x5a(r3)
/* 814D4838 | 98 03 00 6A */	stb r0, 0x6a(r3)
/* 814D483C | B0 03 00 6C */	sth r0, 0x6c(r3)
/* 814D4840 | 98 03 00 7C */	stb r0, 0x7c(r3)
/* 814D4844 | B0 03 00 7E */	sth r0, 0x7e(r3)
/* 814D4848 | 98 03 00 8E */	stb r0, 0x8e(r3)
/* 814D484C | B0 03 00 90 */	sth r0, 0x90(r3)
/* 814D4850 | 98 03 00 A0 */	stb r0, 0xa0(r3)
/* 814D4854 | B0 03 00 A2 */	sth r0, 0xa2(r3)
/* 814D4858 | 98 03 00 B2 */	stb r0, 0xb2(r3)
/* 814D485C | B0 03 00 B4 */	sth r0, 0xb4(r3)
/* 814D4860 | 98 03 00 C4 */	stb r0, 0xc4(r3)
/* 814D4864 | B0 03 00 C6 */	sth r0, 0xc6(r3)
/* 814D4868 | 98 03 00 D6 */	stb r0, 0xd6(r3)
/* 814D486C | B0 03 00 D8 */	sth r0, 0xd8(r3)
/* 814D4870 | 98 03 00 E8 */	stb r0, 0xe8(r3)
/* 814D4874 | B0 03 00 EA */	sth r0, 0xea(r3)
/* 814D4878 | 98 03 00 FA */	stb r0, 0xfa(r3)
/* 814D487C | B0 03 00 FC */	sth r0, 0xfc(r3)
/* 814D4880 | 98 03 01 0C */	stb r0, 0x10c(r3)
/* 814D4884 | B0 03 01 0E */	sth r0, 0x10e(r3)
/* 814D4888 | 98 03 01 1E */	stb r0, 0x11e(r3)
/* 814D488C | B0 03 01 20 */	sth r0, 0x120(r3)
/* 814D4890 | 98 03 01 30 */	stb r0, 0x130(r3)
/* 814D4894 | B0 03 01 32 */	sth r0, 0x132(r3)
/* 814D4898 | 98 03 01 42 */	stb r0, 0x142(r3)
/* 814D489C | B0 03 01 44 */	sth r0, 0x144(r3)
/* 814D48A0 | 98 03 01 54 */	stb r0, 0x154(r3)
/* 814D48A4 | B0 03 01 56 */	sth r0, 0x156(r3)
/* 814D48A8 | 98 03 01 66 */	stb r0, 0x166(r3)
/* 814D48AC | B0 03 01 68 */	sth r0, 0x168(r3)
/* 814D48B0 | 98 03 01 78 */	stb r0, 0x178(r3)
/* 814D48B4 | B0 03 01 7A */	sth r0, 0x17a(r3)
/* 814D48B8 | 98 03 01 8A */	stb r0, 0x18a(r3)
/* 814D48BC | B0 03 01 8C */	sth r0, 0x18c(r3)
/* 814D48C0 | 98 03 01 9C */	stb r0, 0x19c(r3)
/* 814D48C4 | B0 03 01 9E */	sth r0, 0x19e(r3)
/* 814D48C8 | 98 03 01 AE */	stb r0, 0x1ae(r3)
/* 814D48CC | B0 03 01 B0 */	sth r0, 0x1b0(r3)
/* 814D48D0 | 98 03 01 C0 */	stb r0, 0x1c0(r3)
/* 814D48D4 | B0 03 01 C2 */	sth r0, 0x1c2(r3)
/* 814D48D8 | 98 03 01 D2 */	stb r0, 0x1d2(r3)
/* 814D48DC | B0 03 01 D4 */	sth r0, 0x1d4(r3)
/* 814D48E0 | 98 03 01 E4 */	stb r0, 0x1e4(r3)
/* 814D48E4 | B0 03 01 E6 */	sth r0, 0x1e6(r3)
/* 814D48E8 | 98 03 01 F6 */	stb r0, 0x1f6(r3)
/* 814D48EC | B0 03 01 F8 */	sth r0, 0x1f8(r3)
/* 814D48F0 | 98 03 02 08 */	stb r0, 0x208(r3)
/* 814D48F4 | B0 03 02 0A */	sth r0, 0x20a(r3)
/* 814D48F8 | 98 03 02 1A */	stb r0, 0x21a(r3)
/* 814D48FC | B0 03 02 1C */	sth r0, 0x21c(r3)
/* 814D4900 | 98 03 02 2C */	stb r0, 0x22c(r3)
/* 814D4904 | 4E 80 00 20 */	blr
.endfn dHash_InitHashTable

# .text:0x230 | 0x814D4908 | size: 0x190
.fn dHash_SearchHashW, global
/* 814D4908 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D490C | 38 80 00 00 */	li r4, 0x0
/* 814D4910 | 7C 65 1B 78 */	mr r5, r3
/* 814D4914 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D4918 | 48 00 00 0C */	b .L_814D4924
.L_814D491C:
/* 814D491C | 38 A5 00 02 */	addi r5, r5, 0x2
/* 814D4920 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814D4924:
/* 814D4924 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 814D4928 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D492C | 40 82 FF F0 */	bne .L_814D491C
/* 814D4930 | 2C 04 00 08 */	cmpwi r4, 0x8
/* 814D4934 | 40 80 00 6C */	bge .L_814D49A0
/* 814D4938 | 7C 67 1B 78 */	mr r7, r3
/* 814D493C | 38 C0 00 00 */	li r6, 0x0
/* 814D4940 | 38 A0 00 00 */	li r5, 0x0
/* 814D4944 | 7C 89 03 A6 */	mtctr r4
/* 814D4948 | 28 04 00 00 */	cmplwi r4, 0x0
/* 814D494C | 40 81 00 2C */	ble .L_814D4978
.L_814D4950:
/* 814D4950 | 28 05 00 07 */	cmplwi r5, 0x7
/* 814D4954 | 40 81 00 08 */	ble .L_814D495C
/* 814D4958 | 38 A0 00 00 */	li r5, 0x0
.L_814D495C:
/* 814D495C | A0 87 00 00 */	lhz r4, 0x0(r7)
/* 814D4960 | 54 A0 10 3A */	slwi r0, r5, 2
/* 814D4964 | 38 E7 00 02 */	addi r7, r7, 0x2
/* 814D4968 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814D496C | 7C 80 00 30 */	slw r0, r4, r0
/* 814D4970 | 7C C6 02 14 */	add r6, r6, r0
/* 814D4974 | 42 00 FF DC */	bdnz .L_814D4950
.L_814D4978:
/* 814D4978 | 3C 80 08 42 */	lis r4, 0x842
/* 814D497C | 38 04 10 85 */	addi r0, r4, 0x1085
/* 814D4980 | 7C 80 30 16 */	mulhwu r4, r0, r6
/* 814D4984 | 7C 04 30 50 */	subf r0, r4, r6
/* 814D4988 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814D498C | 7C 00 22 14 */	add r0, r0, r4
/* 814D4990 | 54 00 E1 3E */	srwi r0, r0, 4
/* 814D4994 | 1C 00 00 1F */	mulli r0, r0, 0x1f
/* 814D4998 | 7D 00 30 50 */	subf r8, r0, r6
/* 814D499C | 48 00 00 08 */	b .L_814D49A4
.L_814D49A0:
/* 814D49A0 | 39 00 FF FF */	li r8, -0x1
.L_814D49A4:
/* 814D49A4 | 2C 08 FF FF */	cmpwi r8, -0x1
/* 814D49A8 | 41 82 00 E0 */	beq .L_814D4A88
/* 814D49AC | 7C 64 1B 78 */	mr r4, r3
/* 814D49B0 | 39 20 00 00 */	li r9, 0x0
/* 814D49B4 | 48 00 00 0C */	b .L_814D49C0
.L_814D49B8:
/* 814D49B8 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814D49BC | 39 29 00 01 */	addi r9, r9, 0x1
.L_814D49C0:
/* 814D49C0 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814D49C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D49C8 | 40 82 FF F0 */	bne .L_814D49B8
/* 814D49CC | 3C 80 84 21 */	lis r4, 0x8421
/* 814D49D0 | 3C A0 81 0F */	lis r5, hashTable@ha
/* 814D49D4 | 38 C4 08 43 */	addi r6, r4, 0x843
/* 814D49D8 | 39 60 00 00 */	li r11, 0x0
/* 814D49DC | 38 A5 56 A0 */	addi r5, r5, hashTable@l
.L_814D49E0:
/* 814D49E0 | 7C 0B 59 D6 */	mullw r0, r11, r11
/* 814D49E4 | 39 40 00 00 */	li r10, 0x0
/* 814D49E8 | 7C E8 02 14 */	add r7, r8, r0
/* 814D49EC | 7C 06 38 96 */	mulhw r0, r6, r7
/* 814D49F0 | 7C 00 3A 14 */	add r0, r0, r7
/* 814D49F4 | 7C 00 26 70 */	srawi r0, r0, 4
/* 814D49F8 | 54 04 0F FE */	srwi r4, r0, 31
/* 814D49FC | 7C 00 22 14 */	add r0, r0, r4
/* 814D4A00 | 1C 00 00 1F */	mulli r0, r0, 0x1f
/* 814D4A04 | 7C E0 38 50 */	subf r7, r0, r7
/* 814D4A08 | 1C 07 00 12 */	mulli r0, r7, 0x12
/* 814D4A0C | 7D 85 02 14 */	add r12, r5, r0
/* 814D4A10 | 7D 84 63 78 */	mr r4, r12
/* 814D4A14 | 48 00 00 0C */	b .L_814D4A20
.L_814D4A18:
/* 814D4A18 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814D4A1C | 39 4A 00 01 */	addi r10, r10, 0x1
.L_814D4A20:
/* 814D4A20 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814D4A24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4A28 | 40 82 FF F0 */	bne .L_814D4A18
/* 814D4A2C | 7C 09 50 00 */	cmpw r9, r10
/* 814D4A30 | 40 82 00 4C */	bne .L_814D4A7C
/* 814D4A34 | 7C 6A 1B 78 */	mr r10, r3
/* 814D4A38 | 3B E0 00 01 */	li r31, 0x1
/* 814D4A3C | 7D 29 03 A6 */	mtctr r9
/* 814D4A40 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814D4A44 | 40 81 00 28 */	ble .L_814D4A6C
.L_814D4A48:
/* 814D4A48 | A0 8A 00 00 */	lhz r4, 0x0(r10)
/* 814D4A4C | A0 0C 00 00 */	lhz r0, 0x0(r12)
/* 814D4A50 | 7C 04 00 40 */	cmplw r4, r0
/* 814D4A54 | 41 82 00 0C */	beq .L_814D4A60
/* 814D4A58 | 3B E0 00 00 */	li r31, 0x0
/* 814D4A5C | 48 00 00 10 */	b .L_814D4A6C
.L_814D4A60:
/* 814D4A60 | 39 4A 00 02 */	addi r10, r10, 0x2
/* 814D4A64 | 39 8C 00 02 */	addi r12, r12, 0x2
/* 814D4A68 | 42 00 FF E0 */	bdnz .L_814D4A48
.L_814D4A6C:
/* 814D4A6C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D4A70 | 41 82 00 0C */	beq .L_814D4A7C
/* 814D4A74 | 7C E3 3B 78 */	mr r3, r7
/* 814D4A78 | 48 00 00 14 */	b .L_814D4A8C
.L_814D4A7C:
/* 814D4A7C | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814D4A80 | 2C 0B 00 0F */	cmpwi r11, 0xf
/* 814D4A84 | 41 80 FF 5C */	blt .L_814D49E0
.L_814D4A88:
/* 814D4A88 | 38 60 FF FF */	li r3, -0x1
.L_814D4A8C:
/* 814D4A8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D4A90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D4A94 | 4E 80 00 20 */	blr
.endfn dHash_SearchHashW

# .text:0x3C0 | 0x814D4A98 | size: 0x60
.fn dHash_GetArg, global
/* 814D4A98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D4A9C | 7C 08 02 A6 */	mflr r0
/* 814D4AA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D4AA4 | 4B FF FC 35 */	bl _MakeWStr
/* 814D4AA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4AAC | 41 82 00 38 */	beq .L_814D4AE4
/* 814D4AB0 | 3C 60 81 0F */	lis r3, l_tmpWName@ha
/* 814D4AB4 | 38 63 56 90 */	addi r3, r3, l_tmpWName@l
/* 814D4AB8 | 4B FF FE 51 */	bl dHash_SearchHashW
/* 814D4ABC | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814D4AC0 | 40 82 00 0C */	bne .L_814D4ACC
/* 814D4AC4 | 38 60 FF FF */	li r3, -0x1
/* 814D4AC8 | 48 00 00 20 */	b .L_814D4AE8
.L_814D4ACC:
/* 814D4ACC | 1C 03 00 12 */	mulli r0, r3, 0x12
/* 814D4AD0 | 3C 60 81 0F */	lis r3, hashTable@ha
/* 814D4AD4 | 38 63 56 A0 */	addi r3, r3, hashTable@l
/* 814D4AD8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D4ADC | 88 63 00 10 */	lbz r3, 0x10(r3)
/* 814D4AE0 | 48 00 00 08 */	b .L_814D4AE8
.L_814D4AE4:
/* 814D4AE4 | 38 60 FF FF */	li r3, -0x1
.L_814D4AE8:
/* 814D4AE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D4AEC | 7C 08 03 A6 */	mtlr r0
/* 814D4AF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D4AF4 | 4E 80 00 20 */	blr
.endfn dHash_GetArg

# .text:0x420 | 0x814D4AF8 | size: 0x1E8
.fn dHash_SetArg, global
/* 814D4AF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D4AFC | 7C 08 02 A6 */	mflr r0
/* 814D4B00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D4B04 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D4B08 | 7C 9F 23 78 */	mr r31, r4
/* 814D4B0C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D4B10 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D4B14 | 4B FF FB C5 */	bl _MakeWStr
/* 814D4B18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4B1C | 41 82 01 A4 */	beq .L_814D4CC0
/* 814D4B20 | 3C 80 81 0F */	lis r4, l_tmpWName@ha
/* 814D4B24 | 38 60 00 00 */	li r3, 0x0
/* 814D4B28 | 38 84 56 90 */	addi r4, r4, l_tmpWName@l
/* 814D4B2C | 48 00 00 0C */	b .L_814D4B38
.L_814D4B30:
/* 814D4B30 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814D4B34 | 38 63 00 01 */	addi r3, r3, 0x1
.L_814D4B38:
/* 814D4B38 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814D4B3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4B40 | 40 82 FF F0 */	bne .L_814D4B30
/* 814D4B44 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 814D4B48 | 40 80 00 70 */	bge .L_814D4BB8
/* 814D4B4C | 3C C0 81 0F */	lis r6, l_tmpWName@ha
/* 814D4B50 | 38 A0 00 00 */	li r5, 0x0
/* 814D4B54 | 38 C6 56 90 */	addi r6, r6, l_tmpWName@l
/* 814D4B58 | 38 80 00 00 */	li r4, 0x0
/* 814D4B5C | 7C 69 03 A6 */	mtctr r3
/* 814D4B60 | 28 03 00 00 */	cmplwi r3, 0x0
/* 814D4B64 | 40 81 00 2C */	ble .L_814D4B90
.L_814D4B68:
/* 814D4B68 | 28 04 00 07 */	cmplwi r4, 0x7
/* 814D4B6C | 40 81 00 08 */	ble .L_814D4B74
/* 814D4B70 | 38 80 00 00 */	li r4, 0x0
.L_814D4B74:
/* 814D4B74 | A0 66 00 00 */	lhz r3, 0x0(r6)
/* 814D4B78 | 54 80 10 3A */	slwi r0, r4, 2
/* 814D4B7C | 38 C6 00 02 */	addi r6, r6, 0x2
/* 814D4B80 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814D4B84 | 7C 60 00 30 */	slw r0, r3, r0
/* 814D4B88 | 7C A5 02 14 */	add r5, r5, r0
/* 814D4B8C | 42 00 FF DC */	bdnz .L_814D4B68
.L_814D4B90:
/* 814D4B90 | 3C 60 08 42 */	lis r3, 0x842
/* 814D4B94 | 38 03 10 85 */	addi r0, r3, 0x1085
/* 814D4B98 | 7C 60 28 16 */	mulhwu r3, r0, r5
/* 814D4B9C | 7C 03 28 50 */	subf r0, r3, r5
/* 814D4BA0 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814D4BA4 | 7C 00 1A 14 */	add r0, r0, r3
/* 814D4BA8 | 54 00 E1 3E */	srwi r0, r0, 4
/* 814D4BAC | 1C 00 00 1F */	mulli r0, r0, 0x1f
/* 814D4BB0 | 7C E0 28 50 */	subf r7, r0, r5
/* 814D4BB4 | 48 00 00 08 */	b .L_814D4BBC
.L_814D4BB8:
/* 814D4BB8 | 38 E0 FF FF */	li r7, -0x1
.L_814D4BBC:
/* 814D4BBC | 2C 07 FF FF */	cmpwi r7, -0x1
/* 814D4BC0 | 41 82 00 BC */	beq .L_814D4C7C
/* 814D4BC4 | 1C 07 00 12 */	mulli r0, r7, 0x12
/* 814D4BC8 | 3C 60 81 0F */	lis r3, hashTable@ha
/* 814D4BCC | 38 C3 56 A0 */	addi r6, r3, hashTable@l
/* 814D4BD0 | 7C 06 02 2E */	lhzx r0, r6, r0
/* 814D4BD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4BD8 | 41 82 00 9C */	beq .L_814D4C74
/* 814D4BDC | 3C 60 08 42 */	lis r3, 0x842
/* 814D4BE0 | 38 00 00 07 */	li r0, 0x7
/* 814D4BE4 | 39 00 00 01 */	li r8, 0x1
/* 814D4BE8 | 38 63 10 85 */	addi r3, r3, 0x1085
/* 814D4BEC | 7C 09 03 A6 */	mtctr r0
.L_814D4BF0:
/* 814D4BF0 | 7C 08 41 D6 */	mullw r0, r8, r8
/* 814D4BF4 | 7C A7 02 14 */	add r5, r7, r0
/* 814D4BF8 | 7C 83 28 16 */	mulhwu r4, r3, r5
/* 814D4BFC | 7C 04 28 50 */	subf r0, r4, r5
/* 814D4C00 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814D4C04 | 7C 00 22 14 */	add r0, r0, r4
/* 814D4C08 | 54 00 E1 3E */	srwi r0, r0, 4
/* 814D4C0C | 1C 00 00 1F */	mulli r0, r0, 0x1f
/* 814D4C10 | 7C 80 28 50 */	subf r4, r0, r5
/* 814D4C14 | 1C 04 00 12 */	mulli r0, r4, 0x12
/* 814D4C18 | 7C 06 02 2E */	lhzx r0, r6, r0
/* 814D4C1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4C20 | 40 82 00 08 */	bne .L_814D4C28
/* 814D4C24 | 48 00 00 5C */	b .L_814D4C80
.L_814D4C28:
/* 814D4C28 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814D4C2C | 7C 08 41 D6 */	mullw r0, r8, r8
/* 814D4C30 | 7C A7 02 14 */	add r5, r7, r0
/* 814D4C34 | 7C 83 28 16 */	mulhwu r4, r3, r5
/* 814D4C38 | 7C 04 28 50 */	subf r0, r4, r5
/* 814D4C3C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814D4C40 | 7C 00 22 14 */	add r0, r0, r4
/* 814D4C44 | 54 00 E1 3E */	srwi r0, r0, 4
/* 814D4C48 | 1C 00 00 1F */	mulli r0, r0, 0x1f
/* 814D4C4C | 7C 80 28 50 */	subf r4, r0, r5
/* 814D4C50 | 1C 04 00 12 */	mulli r0, r4, 0x12
/* 814D4C54 | 7C 06 02 2E */	lhzx r0, r6, r0
/* 814D4C58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4C5C | 40 82 00 08 */	bne .L_814D4C64
/* 814D4C60 | 48 00 00 20 */	b .L_814D4C80
.L_814D4C64:
/* 814D4C64 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814D4C68 | 42 00 FF 88 */	bdnz .L_814D4BF0
/* 814D4C6C | 38 80 FF FF */	li r4, -0x1
/* 814D4C70 | 48 00 00 10 */	b .L_814D4C80
.L_814D4C74:
/* 814D4C74 | 7C E4 3B 78 */	mr r4, r7
/* 814D4C78 | 48 00 00 08 */	b .L_814D4C80
.L_814D4C7C:
/* 814D4C7C | 38 80 FF FF */	li r4, -0x1
.L_814D4C80:
/* 814D4C80 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 814D4C84 | 41 82 00 34 */	beq .L_814D4CB8
/* 814D4C88 | 1F A4 00 12 */	mulli r29, r4, 0x12
/* 814D4C8C | 3F C0 81 0F */	lis r30, hashTable@ha
/* 814D4C90 | 3C 80 81 0F */	lis r4, l_tmpWName@ha
/* 814D4C94 | 3B DE 56 A0 */	addi r30, r30, hashTable@l
/* 814D4C98 | 7C 7E EA 14 */	add r3, r30, r29
/* 814D4C9C | 38 84 56 90 */	addi r4, r4, l_tmpWName@l
/* 814D4CA0 | 38 A0 00 10 */	li r5, 0x10
/* 814D4CA4 | 4B FE 0B 3D */	bl VFipf_memcpy
/* 814D4CA8 | 7C 9E EA 14 */	add r4, r30, r29
/* 814D4CAC | 38 60 00 01 */	li r3, 0x1
/* 814D4CB0 | 9B E4 00 10 */	stb r31, 0x10(r4)
/* 814D4CB4 | 48 00 00 10 */	b .L_814D4CC4
.L_814D4CB8:
/* 814D4CB8 | 38 60 00 00 */	li r3, 0x0
/* 814D4CBC | 48 00 00 08 */	b .L_814D4CC4
.L_814D4CC0:
/* 814D4CC0 | 38 60 00 00 */	li r3, 0x0
.L_814D4CC4:
/* 814D4CC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D4CC8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D4CCC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D4CD0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D4CD4 | 7C 08 03 A6 */	mtlr r0
/* 814D4CD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D4CDC | 4E 80 00 20 */	blr
.endfn dHash_SetArg

# .text:0x608 | 0x814D4CE0 | size: 0x78
.fn dHash_DeleteData, global
/* 814D4CE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D4CE4 | 7C 08 02 A6 */	mflr r0
/* 814D4CE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D4CEC | 4B FF F9 ED */	bl _MakeWStr
/* 814D4CF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4CF4 | 41 82 00 50 */	beq .L_814D4D44
/* 814D4CF8 | 3C 60 81 0F */	lis r3, l_tmpWName@ha
/* 814D4CFC | 38 63 56 90 */	addi r3, r3, l_tmpWName@l
/* 814D4D00 | 4B FF FC 09 */	bl dHash_SearchHashW
/* 814D4D04 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814D4D08 | 41 82 00 34 */	beq .L_814D4D3C
/* 814D4D0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4D10 | 41 80 00 24 */	blt .L_814D4D34
/* 814D4D14 | 2C 03 00 1F */	cmpwi r3, 0x1f
/* 814D4D18 | 40 80 00 1C */	bge .L_814D4D34
/* 814D4D1C | 1C 83 00 12 */	mulli r4, r3, 0x12
/* 814D4D20 | 3C 60 81 0F */	lis r3, hashTable@ha
/* 814D4D24 | 38 00 00 00 */	li r0, 0x0
/* 814D4D28 | 38 63 56 A0 */	addi r3, r3, hashTable@l
/* 814D4D2C | 7C 03 23 6E */	sthux r0, r3, r4
/* 814D4D30 | 98 03 00 10 */	stb r0, 0x10(r3)
.L_814D4D34:
/* 814D4D34 | 38 60 00 01 */	li r3, 0x1
/* 814D4D38 | 48 00 00 10 */	b .L_814D4D48
.L_814D4D3C:
/* 814D4D3C | 38 60 00 00 */	li r3, 0x0
/* 814D4D40 | 48 00 00 08 */	b .L_814D4D48
.L_814D4D44:
/* 814D4D44 | 38 60 00 00 */	li r3, 0x0
.L_814D4D48:
/* 814D4D48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D4D4C | 7C 08 03 A6 */	mtlr r0
/* 814D4D50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D4D54 | 4E 80 00 20 */	blr
.endfn dHash_DeleteData
