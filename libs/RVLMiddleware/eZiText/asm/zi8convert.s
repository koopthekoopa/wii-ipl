.include "macros.inc"
.file "zi8convert.c"

# 0x81330458..0x81330478 | size: 0x20
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330458 | size: 0x8
.obj "@etb_81330458", local
.hidden "@etb_81330458"
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
.endobj "@etb_81330458"

# extab:0x8 | 0x81330460 | size: 0x8
.obj "@etb_81330460", local
.hidden "@etb_81330460"
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
.endobj "@etb_81330460"

# extab:0x10 | 0x81330468 | size: 0x8
.obj "@etb_81330468", local
.hidden "@etb_81330468"
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
.endobj "@etb_81330468"

# extab:0x18 | 0x81330470 | size: 0x8
.obj "@etb_81330470", local
.hidden "@etb_81330470"
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
.endobj "@etb_81330470"

# 0x81331014..0x81331044 | size: 0x30
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331014 | size: 0xC
.obj "@eti_81331014", local
.hidden "@eti_81331014"
	.4byte Zi8ConvertUC2WC
	.4byte 0x000001F0
	.4byte "@etb_81330458"
.endobj "@eti_81331014"

# extabindex:0xC | 0x81331020 | size: 0xC
.obj "@eti_81331020", local
.hidden "@eti_81331020"
	.4byte Zi8ConvertWC2UC
	.4byte 0x0000031C
	.4byte "@etb_81330460"
.endobj "@eti_81331020"

# extabindex:0x18 | 0x8133102C | size: 0xC
.obj "@eti_8133102C", local
.hidden "@eti_8133102C"
	.4byte Zi8ConvertUC2Key
	.4byte 0x0000033C
	.4byte "@etb_81330468"
.endobj "@eti_8133102C"

# extabindex:0x24 | 0x81331038 | size: 0xC
.obj "@eti_81331038", local
.hidden "@eti_81331038"
	.4byte Zi8ConvertWC2Key
	.4byte 0x00000058
	.4byte "@etb_81330470"
.endobj "@eti_81331038"

# 0x8145F558..0x8145FDF8 | size: 0x8A0
.text
.balign 4

# .text:0x0 | 0x8145F558 | size: 0x1F0
.fn Zi8ConvertUC2WC, global
/* 8145F558 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145F55C | 7C 08 02 A6 */	mflr r0
/* 8145F560 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145F564 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145F568 | 48 19 9F 4D */	bl _savegpr_24
/* 8145F56C | 7C 7C 1B 78 */	mr r28, r3
/* 8145F570 | 7C 98 23 78 */	mr r24, r4
/* 8145F574 | 7C BD 2B 78 */	mr r29, r5
/* 8145F578 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 8145F57C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F580 | 40 82 00 1C */	bne .L_8145F59C
/* 8145F584 | 38 60 01 33 */	li r3, 0x133
/* 8145F588 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F58C | 7F A4 EB 78 */	mr r4, r29
/* 8145F590 | 48 02 4E ED */	bl Zi8LogError
/* 8145F594 | 38 60 00 00 */	li r3, 0x0
/* 8145F598 | 48 00 01 98 */	b .L_8145F730
.L_8145F59C:
/* 8145F59C | 57 03 06 3E */	clrlwi r3, r24, 24
/* 8145F5A0 | 38 80 00 06 */	li r4, 0x6
/* 8145F5A4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8145F5A8 | 7F A5 EB 78 */	mr r5, r29
/* 8145F5AC | 4B FF FE 85 */	bl Zi8GetTableCount
/* 8145F5B0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8145F5B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F5B8 | 41 82 00 F0 */	beq .L_8145F6A8
/* 8145F5BC | 57 03 06 3E */	clrlwi r3, r24, 24
/* 8145F5C0 | 38 80 00 06 */	li r4, 0x6
/* 8145F5C4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8145F5C8 | 7F A5 EB 78 */	mr r5, r29
/* 8145F5CC | 4B FF FD E5 */	bl Zi8GetTableAddress
/* 8145F5D0 | 7C 79 1B 78 */	mr r25, r3
/* 8145F5D4 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8145F5D8 | 40 82 00 1C */	bne .L_8145F5F4
/* 8145F5DC | 38 60 06 A4 */	li r3, 0x6a4
/* 8145F5E0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F5E4 | 7F A4 EB 78 */	mr r4, r29
/* 8145F5E8 | 48 02 4E 95 */	bl Zi8LogError
/* 8145F5EC | 38 60 00 00 */	li r3, 0x0
/* 8145F5F0 | 48 00 01 40 */	b .L_8145F730
.L_8145F5F4:
/* 8145F5F4 | 7F 3F CB 78 */	mr r31, r25
/* 8145F5F8 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8145F5FC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F600 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145F604 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8145F608 | 7C 60 03 78 */	or r0, r3, r0
/* 8145F60C | 54 1A 04 3E */	clrlwi r26, r0, 16
/* 8145F610 | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 8145F614 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F618 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145F61C | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8145F620 | 7C 60 03 78 */	or r0, r3, r0
/* 8145F624 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F628 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8145F62C | 57 83 06 3E */	clrlwi r3, r28, 24
/* 8145F630 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8145F634 | 7C 03 00 00 */	cmpw r3, r0
/* 8145F638 | 41 80 00 14 */	blt .L_8145F64C
/* 8145F63C | 57 83 06 3E */	clrlwi r3, r28, 24
/* 8145F640 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8145F644 | 7C 03 00 00 */	cmpw r3, r0
/* 8145F648 | 40 81 00 1C */	ble .L_8145F664
.L_8145F64C:
/* 8145F64C | 38 60 01 32 */	li r3, 0x132
/* 8145F650 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F654 | 7F A4 EB 78 */	mr r4, r29
/* 8145F658 | 48 02 4E 25 */	bl Zi8LogError
/* 8145F65C | 38 60 00 00 */	li r3, 0x0
/* 8145F660 | 48 00 00 D0 */	b .L_8145F730
.L_8145F664:
/* 8145F664 | 57 43 04 3E */	clrlwi r3, r26, 16
/* 8145F668 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 8145F66C | 7C 03 00 50 */	subf r0, r3, r0
/* 8145F670 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145F674 | 7C 60 FA 14 */	add r3, r0, r31
/* 8145F678 | 3B E3 00 08 */	addi r31, r3, 0x8
/* 8145F67C | 38 60 00 64 */	li r3, 0x64
/* 8145F680 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F684 | 7F A4 EB 78 */	mr r4, r29
/* 8145F688 | 48 02 4D F5 */	bl Zi8LogError
/* 8145F68C | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8145F690 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F694 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145F698 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8145F69C | 7C 60 03 78 */	or r0, r3, r0
/* 8145F6A0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8145F6A4 | 48 00 00 8C */	b .L_8145F730
.L_8145F6A8:
/* 8145F6A8 | 3C 60 81 61 */	lis r3, Zi8CvrtTables@ha
/* 8145F6AC | 3B C3 79 00 */	addi r30, r3, Zi8CvrtTables@l
/* 8145F6B0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145F6B4 | 40 82 00 1C */	bne .L_8145F6D0
/* 8145F6B8 | 38 60 06 A4 */	li r3, 0x6a4
/* 8145F6BC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F6C0 | 7F A4 EB 78 */	mr r4, r29
/* 8145F6C4 | 48 02 4D B9 */	bl Zi8LogError
/* 8145F6C8 | 38 60 00 00 */	li r3, 0x0
/* 8145F6CC | 48 00 00 64 */	b .L_8145F730
.L_8145F6D0:
/* 8145F6D0 | 57 83 06 3E */	clrlwi r3, r28, 24
/* 8145F6D4 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8145F6D8 | 7C 03 00 00 */	cmpw r3, r0
/* 8145F6DC | 41 80 00 14 */	blt .L_8145F6F0
/* 8145F6E0 | 57 83 06 3E */	clrlwi r3, r28, 24
/* 8145F6E4 | A0 1E 00 02 */	lhz r0, 0x2(r30)
/* 8145F6E8 | 7C 03 00 00 */	cmpw r3, r0
/* 8145F6EC | 40 81 00 1C */	ble .L_8145F708
.L_8145F6F0:
/* 8145F6F0 | 38 60 01 32 */	li r3, 0x132
/* 8145F6F4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F6F8 | 7F A4 EB 78 */	mr r4, r29
/* 8145F6FC | 48 02 4D 81 */	bl Zi8LogError
/* 8145F700 | 38 60 00 00 */	li r3, 0x0
/* 8145F704 | 48 00 00 2C */	b .L_8145F730
.L_8145F708:
/* 8145F708 | 83 7E 00 04 */	lwz r27, 0x4(r30)
/* 8145F70C | 38 60 00 64 */	li r3, 0x64
/* 8145F710 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F714 | 7F A4 EB 78 */	mr r4, r29
/* 8145F718 | 48 02 4D 65 */	bl Zi8LogError
/* 8145F71C | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 8145F720 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 8145F724 | 7C 03 00 50 */	subf r0, r3, r0
/* 8145F728 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145F72C | 7C 7B 02 2E */	lhzx r3, r27, r0
.L_8145F730:
/* 8145F730 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145F734 | 48 19 9D CD */	bl _restgpr_24
/* 8145F738 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145F73C | 7C 08 03 A6 */	mtlr r0
/* 8145F740 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145F744 | 4E 80 00 20 */	blr
.endfn Zi8ConvertUC2WC

# .text:0x1F0 | 0x8145F748 | size: 0x31C
.fn Zi8ConvertWC2UC, global
/* 8145F748 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145F74C | 7C 08 02 A6 */	mflr r0
/* 8145F750 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145F754 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145F758 | 48 19 9D 65 */	bl _savegpr_26
/* 8145F75C | 7C 7B 1B 78 */	mr r27, r3
/* 8145F760 | 7C 9A 23 78 */	mr r26, r4
/* 8145F764 | 7C BC 2B 78 */	mr r28, r5
/* 8145F768 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8145F76C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F770 | 40 82 00 1C */	bne .L_8145F78C
/* 8145F774 | 38 60 01 33 */	li r3, 0x133
/* 8145F778 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F77C | 7F 84 E3 78 */	mr r4, r28
/* 8145F780 | 48 02 4C FD */	bl Zi8LogError
/* 8145F784 | 38 60 00 00 */	li r3, 0x0
/* 8145F788 | 48 00 02 C4 */	b .L_8145FA4C
.L_8145F78C:
/* 8145F78C | 57 43 06 3E */	clrlwi r3, r26, 24
/* 8145F790 | 38 80 00 07 */	li r4, 0x7
/* 8145F794 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8145F798 | 7F 85 E3 78 */	mr r5, r28
/* 8145F79C | 4B FF FC 95 */	bl Zi8GetTableCount
/* 8145F7A0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8145F7A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F7A8 | 41 82 01 7C */	beq .L_8145F924
/* 8145F7AC | 57 43 06 3E */	clrlwi r3, r26, 24
/* 8145F7B0 | 38 80 00 07 */	li r4, 0x7
/* 8145F7B4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8145F7B8 | 7F 85 E3 78 */	mr r5, r28
/* 8145F7BC | 4B FF FB F5 */	bl Zi8GetTableAddress
/* 8145F7C0 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8145F7C4 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8145F7C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F7CC | 40 82 00 1C */	bne .L_8145F7E8
/* 8145F7D0 | 38 60 06 AE */	li r3, 0x6ae
/* 8145F7D4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F7D8 | 7F 84 E3 78 */	mr r4, r28
/* 8145F7DC | 48 02 4C A1 */	bl Zi8LogError
/* 8145F7E0 | 38 60 00 00 */	li r3, 0x0
/* 8145F7E4 | 48 00 02 68 */	b .L_8145FA4C
.L_8145F7E8:
/* 8145F7E8 | 83 E1 00 10 */	lwz r31, 0x10(r1)
/* 8145F7EC | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8145F7F0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F7F4 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145F7F8 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8145F7FC | 7C 60 03 78 */	or r0, r3, r0
/* 8145F800 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F804 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 8145F808 | 3B FF 00 08 */	addi r31, r31, 0x8
/* 8145F80C | 3B A0 00 00 */	li r29, 0x0
/* 8145F810 | 48 00 00 EC */	b .L_8145F8FC
.L_8145F814:
/* 8145F814 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8145F818 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F81C | 54 03 40 2E */	slwi r3, r0, 8
/* 8145F820 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8145F824 | 7C 60 03 78 */	or r0, r3, r0
/* 8145F828 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F82C | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8145F830 | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 8145F834 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F838 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145F83C | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8145F840 | 7C 60 03 78 */	or r0, r3, r0
/* 8145F844 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F848 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8145F84C | 57 63 04 3E */	clrlwi r3, r27, 16
/* 8145F850 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8145F854 | 7C 03 00 40 */	cmplw r3, r0
/* 8145F858 | 41 80 00 14 */	blt .L_8145F86C
/* 8145F85C | 57 63 04 3E */	clrlwi r3, r27, 16
/* 8145F860 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8145F864 | 7C 03 00 40 */	cmplw r3, r0
/* 8145F868 | 40 81 00 0C */	ble .L_8145F874
.L_8145F86C:
/* 8145F86C | 3B FF 00 08 */	addi r31, r31, 0x8
/* 8145F870 | 48 00 00 88 */	b .L_8145F8F8
.L_8145F874:
/* 8145F874 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8145F878 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F87C | 54 03 40 2E */	slwi r3, r0, 8
/* 8145F880 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8145F884 | 7C 60 03 78 */	or r0, r3, r0
/* 8145F888 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F88C | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8145F890 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8145F894 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8145F898 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8145F89C | 7C 03 00 40 */	cmplw r3, r0
/* 8145F8A0 | 40 82 00 20 */	bne .L_8145F8C0
/* 8145F8A4 | 38 60 00 64 */	li r3, 0x64
/* 8145F8A8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F8AC | 7F 84 E3 78 */	mr r4, r28
/* 8145F8B0 | 48 02 4B CD */	bl Zi8LogError
/* 8145F8B4 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8145F8B8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8145F8BC | 48 00 01 90 */	b .L_8145FA4C
.L_8145F8C0:
/* 8145F8C0 | A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 8145F8C4 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8145F8C8 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8145F8CC | 57 63 04 3E */	clrlwi r3, r27, 16
/* 8145F8D0 | 7C 04 02 14 */	add r0, r4, r0
/* 8145F8D4 | 7C 03 02 14 */	add r0, r3, r0
/* 8145F8D8 | 7C 65 00 50 */	subf r3, r5, r0
/* 8145F8DC | 3B E3 00 08 */	addi r31, r3, 0x8
/* 8145F8E0 | 38 60 00 64 */	li r3, 0x64
/* 8145F8E4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F8E8 | 7F 84 E3 78 */	mr r4, r28
/* 8145F8EC | 48 02 4B 91 */	bl Zi8LogError
/* 8145F8F0 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8145F8F4 | 48 00 01 58 */	b .L_8145FA4C
.L_8145F8F8:
/* 8145F8F8 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8145F8FC:
/* 8145F8FC | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 8145F900 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8145F904 | 7C 03 00 40 */	cmplw r3, r0
/* 8145F908 | 41 80 FF 0C */	blt .L_8145F814
/* 8145F90C | 38 60 06 C2 */	li r3, 0x6c2
/* 8145F910 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F914 | 7F 84 E3 78 */	mr r4, r28
/* 8145F918 | 48 02 4B 65 */	bl Zi8LogError
/* 8145F91C | 38 60 00 00 */	li r3, 0x0
/* 8145F920 | 48 00 01 2C */	b .L_8145FA4C
.L_8145F924:
/* 8145F924 | 3C 60 81 61 */	lis r3, Zi8CvrtTables@ha
/* 8145F928 | 38 63 79 00 */	addi r3, r3, Zi8CvrtTables@l
/* 8145F92C | 83 C3 00 0C */	lwz r30, 0xc(r3)
/* 8145F930 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145F934 | 40 82 00 1C */	bne .L_8145F950
/* 8145F938 | 38 60 06 AE */	li r3, 0x6ae
/* 8145F93C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F940 | 7F 84 E3 78 */	mr r4, r28
/* 8145F944 | 48 02 4B 39 */	bl Zi8LogError
/* 8145F948 | 38 60 00 00 */	li r3, 0x0
/* 8145F94C | 48 00 01 00 */	b .L_8145FA4C
.L_8145F950:
/* 8145F950 | 3C 60 81 61 */	lis r3, Zi8CvrtTables@ha
/* 8145F954 | 38 63 79 00 */	addi r3, r3, Zi8CvrtTables@l
/* 8145F958 | A0 03 00 08 */	lhz r0, 0x8(r3)
/* 8145F95C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F960 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 8145F964 | 3B A0 00 00 */	li r29, 0x0
/* 8145F968 | 48 00 00 C0 */	b .L_8145FA28
.L_8145F96C:
/* 8145F96C | 57 63 04 3E */	clrlwi r3, r27, 16
/* 8145F970 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145F974 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F978 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 8145F97C | 7C 03 00 40 */	cmplw r3, r0
/* 8145F980 | 41 80 00 A4 */	blt .L_8145FA24
/* 8145F984 | 57 64 04 3E */	clrlwi r4, r27, 16
/* 8145F988 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145F98C | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F990 | 7C 7E 02 14 */	add r3, r30, r0
/* 8145F994 | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8145F998 | 7C 04 00 40 */	cmplw r4, r0
/* 8145F99C | 41 81 00 88 */	bgt .L_8145FA24
/* 8145F9A0 | 38 60 00 64 */	li r3, 0x64
/* 8145F9A4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F9A8 | 7F 84 E3 78 */	mr r4, r28
/* 8145F9AC | 48 02 4A D1 */	bl Zi8LogError
/* 8145F9B0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145F9B4 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F9B8 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 8145F9BC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8145F9C0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145F9C4 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F9C8 | 7C 7E 02 14 */	add r3, r30, r0
/* 8145F9CC | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8145F9D0 | 7C 04 00 40 */	cmplw r4, r0
/* 8145F9D4 | 40 82 00 1C */	bne .L_8145F9F0
/* 8145F9D8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145F9DC | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F9E0 | 7C 7E 02 14 */	add r3, r30, r0
/* 8145F9E4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145F9E8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8145F9EC | 48 00 00 60 */	b .L_8145FA4C
.L_8145F9F0:
/* 8145F9F0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145F9F4 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F9F8 | 7C 7E 02 14 */	add r3, r30, r0
/* 8145F9FC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145FA00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145FA04 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 8145FA08 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145FA0C | 54 00 18 38 */	slwi r0, r0, 3
/* 8145FA10 | 7C 7E 02 2E */	lhzx r3, r30, r0
/* 8145FA14 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8145FA18 | 7C 03 00 50 */	subf r0, r3, r0
/* 8145FA1C | 7C 64 00 AE */	lbzx r3, r4, r0
/* 8145FA20 | 48 00 00 2C */	b .L_8145FA4C
.L_8145FA24:
/* 8145FA24 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8145FA28:
/* 8145FA28 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 8145FA2C | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8145FA30 | 7C 03 00 40 */	cmplw r3, r0
/* 8145FA34 | 41 80 FF 38 */	blt .L_8145F96C
/* 8145FA38 | 38 60 06 C2 */	li r3, 0x6c2
/* 8145FA3C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145FA40 | 7F 84 E3 78 */	mr r4, r28
/* 8145FA44 | 48 02 4A 39 */	bl Zi8LogError
/* 8145FA48 | 38 60 00 00 */	li r3, 0x0
.L_8145FA4C:
/* 8145FA4C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145FA50 | 48 19 9A B9 */	bl _restgpr_26
/* 8145FA54 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145FA58 | 7C 08 03 A6 */	mtlr r0
/* 8145FA5C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145FA60 | 4E 80 00 20 */	blr
.endfn Zi8ConvertWC2UC

# .text:0x50C | 0x8145FA64 | size: 0x33C
.fn Zi8ConvertUC2Key, global
/* 8145FA64 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8145FA68 | 7C 08 02 A6 */	mflr r0
/* 8145FA6C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8145FA70 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8145FA74 | 48 19 9A 45 */	bl _savegpr_25
/* 8145FA78 | 7C 7A 1B 78 */	mr r26, r3
/* 8145FA7C | 7C 99 23 78 */	mr r25, r4
/* 8145FA80 | 7C BC 2B 78 */	mr r28, r5
/* 8145FA84 | 3B 60 00 00 */	li r27, 0x0
/* 8145FA88 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8145FA8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145FA90 | 40 82 00 1C */	bne .L_8145FAAC
/* 8145FA94 | 38 60 01 33 */	li r3, 0x133
/* 8145FA98 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145FA9C | 7F 84 E3 78 */	mr r4, r28
/* 8145FAA0 | 48 02 49 DD */	bl Zi8LogError
/* 8145FAA4 | 38 60 00 00 */	li r3, 0x0
/* 8145FAA8 | 48 00 02 E0 */	b .L_8145FD88
.L_8145FAAC:
/* 8145FAAC | 57 20 06 3E */	clrlwi r0, r25, 24
/* 8145FAB0 | 54 00 10 3A */	slwi r0, r0, 2
/* 8145FAB4 | 7C 7C 02 14 */	add r3, r28, r0
/* 8145FAB8 | 80 03 12 00 */	lwz r0, 0x1200(r3)
/* 8145FABC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145FAC0 | 41 82 00 18 */	beq .L_8145FAD8
/* 8145FAC4 | 57 43 06 3E */	clrlwi r3, r26, 24
/* 8145FAC8 | 57 24 06 3E */	clrlwi r4, r25, 24
/* 8145FACC | 7F 85 E3 78 */	mr r5, r28
/* 8145FAD0 | 48 02 33 F1 */	bl Zi8ConvertUC2UserKey
/* 8145FAD4 | 48 00 02 B4 */	b .L_8145FD88
.L_8145FAD8:
/* 8145FAD8 | 57 23 06 3E */	clrlwi r3, r25, 24
/* 8145FADC | 38 80 00 08 */	li r4, 0x8
/* 8145FAE0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8145FAE4 | 7F 85 E3 78 */	mr r5, r28
/* 8145FAE8 | 4B FF F9 49 */	bl Zi8GetTableCount
/* 8145FAEC | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8145FAF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145FAF4 | 41 82 01 50 */	beq .L_8145FC44
/* 8145FAF8 | 57 23 06 3E */	clrlwi r3, r25, 24
/* 8145FAFC | 38 80 00 08 */	li r4, 0x8
/* 8145FB00 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8145FB04 | 7F 85 E3 78 */	mr r5, r28
/* 8145FB08 | 4B FF F8 A9 */	bl Zi8GetTableAddress
/* 8145FB0C | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8145FB10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145FB14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145FB18 | 40 82 00 1C */	bne .L_8145FB34
/* 8145FB1C | 38 60 06 B8 */	li r3, 0x6b8
/* 8145FB20 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145FB24 | 7F 84 E3 78 */	mr r4, r28
/* 8145FB28 | 48 02 49 55 */	bl Zi8LogError
/* 8145FB2C | 38 60 00 00 */	li r3, 0x0
/* 8145FB30 | 48 00 02 58 */	b .L_8145FD88
.L_8145FB34:
/* 8145FB34 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8145FB38 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8145FB3C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FB40 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145FB44 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8145FB48 | 7C 60 03 78 */	or r0, r3, r0
/* 8145FB4C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FB50 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8145FB54 | 3B FF 00 08 */	addi r31, r31, 0x8
/* 8145FB58 | 3B A0 00 00 */	li r29, 0x0
/* 8145FB5C | 48 00 00 D4 */	b .L_8145FC30
.L_8145FB60:
/* 8145FB60 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8145FB64 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FB68 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145FB6C | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8145FB70 | 7C 60 03 78 */	or r0, r3, r0
/* 8145FB74 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FB78 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8145FB7C | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 8145FB80 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FB84 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145FB88 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8145FB8C | 7C 60 03 78 */	or r0, r3, r0
/* 8145FB90 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FB94 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8145FB98 | 57 43 06 3E */	clrlwi r3, r26, 24
/* 8145FB9C | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8145FBA0 | 7C 03 00 00 */	cmpw r3, r0
/* 8145FBA4 | 41 80 00 14 */	blt .L_8145FBB8
/* 8145FBA8 | 57 43 06 3E */	clrlwi r3, r26, 24
/* 8145FBAC | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8145FBB0 | 7C 03 00 00 */	cmpw r3, r0
/* 8145FBB4 | 40 81 00 0C */	ble .L_8145FBC0
.L_8145FBB8:
/* 8145FBB8 | 3B FF 00 08 */	addi r31, r31, 0x8
/* 8145FBBC | 48 00 00 70 */	b .L_8145FC2C
.L_8145FBC0:
/* 8145FBC0 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8145FBC4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FBC8 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145FBCC | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8145FBD0 | 7C 60 03 78 */	or r0, r3, r0
/* 8145FBD4 | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 8145FBD8 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8145FBDC | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8145FBE0 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8145FBE4 | 7C 03 00 40 */	cmplw r3, r0
/* 8145FBE8 | 41 82 01 64 */	beq .L_8145FD4C
/* 8145FBEC | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8145FBF0 | 57 64 04 3E */	clrlwi r4, r27, 16
/* 8145FBF4 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8145FBF8 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8145FBFC | 7C 03 00 50 */	subf r0, r3, r0
/* 8145FC00 | 54 03 08 3C */	slwi r3, r0, 1
/* 8145FC04 | 7C 05 22 14 */	add r0, r5, r4
/* 8145FC08 | 7F E3 02 14 */	add r31, r3, r0
/* 8145FC0C | 3B FF 00 08 */	addi r31, r31, 0x8
/* 8145FC10 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8145FC14 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FC18 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145FC1C | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8145FC20 | 7C 60 03 78 */	or r0, r3, r0
/* 8145FC24 | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 8145FC28 | 48 00 01 24 */	b .L_8145FD4C
.L_8145FC2C:
/* 8145FC2C | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8145FC30:
/* 8145FC30 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 8145FC34 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8145FC38 | 7C 03 00 40 */	cmplw r3, r0
/* 8145FC3C | 41 80 FF 24 */	blt .L_8145FB60
/* 8145FC40 | 48 00 01 0C */	b .L_8145FD4C
.L_8145FC44:
/* 8145FC44 | 3C 60 81 61 */	lis r3, Zi8CvrtTables@ha
/* 8145FC48 | 38 63 79 00 */	addi r3, r3, Zi8CvrtTables@l
/* 8145FC4C | 83 C3 00 14 */	lwz r30, 0x14(r3)
/* 8145FC50 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145FC54 | 40 82 00 1C */	bne .L_8145FC70
/* 8145FC58 | 38 60 06 B8 */	li r3, 0x6b8
/* 8145FC5C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145FC60 | 7F 84 E3 78 */	mr r4, r28
/* 8145FC64 | 48 02 48 19 */	bl Zi8LogError
/* 8145FC68 | 38 60 00 00 */	li r3, 0x0
/* 8145FC6C | 48 00 01 1C */	b .L_8145FD88
.L_8145FC70:
/* 8145FC70 | 3C 60 81 61 */	lis r3, Zi8CvrtTables@ha
/* 8145FC74 | 38 63 79 00 */	addi r3, r3, Zi8CvrtTables@l
/* 8145FC78 | A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8145FC7C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145FC80 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8145FC84 | 3B A0 00 00 */	li r29, 0x0
/* 8145FC88 | 48 00 00 B4 */	b .L_8145FD3C
.L_8145FC8C:
/* 8145FC8C | 57 43 06 3E */	clrlwi r3, r26, 24
/* 8145FC90 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145FC94 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145FC98 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 8145FC9C | 7C 03 00 00 */	cmpw r3, r0
/* 8145FCA0 | 41 80 00 98 */	blt .L_8145FD38
/* 8145FCA4 | 57 44 06 3E */	clrlwi r4, r26, 24
/* 8145FCA8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145FCAC | 54 00 18 38 */	slwi r0, r0, 3
/* 8145FCB0 | 7C 7E 02 14 */	add r3, r30, r0
/* 8145FCB4 | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8145FCB8 | 7C 04 00 00 */	cmpw r4, r0
/* 8145FCBC | 41 81 00 7C */	bgt .L_8145FD38
/* 8145FCC0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145FCC4 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145FCC8 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 8145FCCC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8145FCD0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145FCD4 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145FCD8 | 7C 7E 02 14 */	add r3, r30, r0
/* 8145FCDC | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8145FCE0 | 7C 04 00 40 */	cmplw r4, r0
/* 8145FCE4 | 40 82 00 1C */	bne .L_8145FD00
/* 8145FCE8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145FCEC | 54 00 18 38 */	slwi r0, r0, 3
/* 8145FCF0 | 7C 7E 02 14 */	add r3, r30, r0
/* 8145FCF4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145FCF8 | 54 1B 06 3E */	clrlwi r27, r0, 24
/* 8145FCFC | 48 00 00 50 */	b .L_8145FD4C
.L_8145FD00:
/* 8145FD00 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145FD04 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145FD08 | 7C 7E 02 14 */	add r3, r30, r0
/* 8145FD0C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145FD10 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8145FD14 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8145FD18 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8145FD1C | 54 00 18 38 */	slwi r0, r0, 3
/* 8145FD20 | 7C 7E 02 2E */	lhzx r3, r30, r0
/* 8145FD24 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8145FD28 | 7C 03 00 50 */	subf r0, r3, r0
/* 8145FD2C | 54 00 08 3C */	slwi r0, r0, 1
/* 8145FD30 | 7F 64 02 2E */	lhzx r27, r4, r0
/* 8145FD34 | 48 00 00 18 */	b .L_8145FD4C
.L_8145FD38:
/* 8145FD38 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8145FD3C:
/* 8145FD3C | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 8145FD40 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8145FD44 | 7C 03 00 40 */	cmplw r3, r0
/* 8145FD48 | 41 80 FF 44 */	blt .L_8145FC8C
.L_8145FD4C:
/* 8145FD4C | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8145FD50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145FD54 | 40 82 00 20 */	bne .L_8145FD74
/* 8145FD58 | 38 60 06 C2 */	li r3, 0x6c2
/* 8145FD5C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145FD60 | 7F 84 E3 78 */	mr r4, r28
/* 8145FD64 | 48 02 47 19 */	bl Zi8LogError
/* 8145FD68 | 3C 60 00 01 */	lis r3, 0x1
/* 8145FD6C | 38 63 EF F1 */	subi r3, r3, 0x100f
/* 8145FD70 | 48 00 00 18 */	b .L_8145FD88
.L_8145FD74:
/* 8145FD74 | 38 60 00 64 */	li r3, 0x64
/* 8145FD78 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145FD7C | 7F 84 E3 78 */	mr r4, r28
/* 8145FD80 | 48 02 46 FD */	bl Zi8LogError
/* 8145FD84 | 7F 63 DB 78 */	mr r3, r27
.L_8145FD88:
/* 8145FD88 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8145FD8C | 48 19 97 79 */	bl _restgpr_25
/* 8145FD90 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8145FD94 | 7C 08 03 A6 */	mtlr r0
/* 8145FD98 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8145FD9C | 4E 80 00 20 */	blr
.endfn Zi8ConvertUC2Key

# .text:0x848 | 0x8145FDA0 | size: 0x58
.fn Zi8ConvertWC2Key, global
/* 8145FDA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145FDA4 | 7C 08 02 A6 */	mflr r0
/* 8145FDA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145FDAC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8145FDB0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8145FDB4 | B0 61 00 08 */	sth r3, 0x8(r1)
/* 8145FDB8 | 7C 9E 23 78 */	mr r30, r4
/* 8145FDBC | 7C BF 2B 78 */	mr r31, r5
/* 8145FDC0 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 8145FDC4 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 8145FDC8 | 7F E5 FB 78 */	mr r5, r31
/* 8145FDCC | 4B FF F9 7D */	bl Zi8ConvertWC2UC
/* 8145FDD0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8145FDD4 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 8145FDD8 | 7F E5 FB 78 */	mr r5, r31
/* 8145FDDC | 4B FF FC 89 */	bl Zi8ConvertUC2Key
/* 8145FDE0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8145FDE4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8145FDE8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145FDEC | 7C 08 03 A6 */	mtlr r0
/* 8145FDF0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145FDF4 | 4E 80 00 20 */	blr
.endfn Zi8ConvertWC2Key

# 0x81617900..0x81617920 | size: 0x20
.rodata
.balign 8

# .rodata:0x0 | 0x81617900 | size: 0x20
.obj Zi8CvrtTables, global
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
.endobj Zi8CvrtTables
