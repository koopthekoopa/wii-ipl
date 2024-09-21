.include "macros.inc"
.file "zi8getcand.c"

# 0x813305D0..0x81330638 | size: 0x68
.section extab, "a"
.balign 4

# extab:0x0 | 0x813305D0 | size: 0x8
.obj "@etb_813305D0", local
.hidden "@etb_813305D0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_813305D0"

# extab:0x8 | 0x813305D8 | size: 0x8
.obj "@etb_813305D8", local
.hidden "@etb_813305D8"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_813305D8"

# extab:0x10 | 0x813305E0 | size: 0x8
.obj "@etb_813305E0", local
.hidden "@etb_813305E0"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_813305E0"

# extab:0x18 | 0x813305E8 | size: 0x8
.obj "@etb_813305E8", local
.hidden "@etb_813305E8"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_813305E8"

# extab:0x20 | 0x813305F0 | size: 0x8
.obj "@etb_813305F0", local
.hidden "@etb_813305F0"
	.4byte 0x38080000
	.4byte 0x00000000
.endobj "@etb_813305F0"

# extab:0x28 | 0x813305F8 | size: 0x8
.obj "@etb_813305F8", local
.hidden "@etb_813305F8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_813305F8"

# extab:0x30 | 0x81330600 | size: 0x8
.obj "@etb_81330600", local
.hidden "@etb_81330600"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330600"

# extab:0x38 | 0x81330608 | size: 0x8
.obj "@etb_81330608", local
.hidden "@etb_81330608"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_81330608"

# extab:0x40 | 0x81330610 | size: 0x8
.obj "@etb_81330610", local
.hidden "@etb_81330610"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330610"

# extab:0x48 | 0x81330618 | size: 0x8
.obj "@etb_81330618", local
.hidden "@etb_81330618"
	.4byte 0x38080000
	.4byte 0x00000000
.endobj "@etb_81330618"

# extab:0x50 | 0x81330620 | size: 0x8
.obj "@etb_81330620", local
.hidden "@etb_81330620"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330620"

# extab:0x58 | 0x81330628 | size: 0x8
.obj "@etb_81330628", local
.hidden "@etb_81330628"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330628"

# extab:0x60 | 0x81330630 | size: 0x8
.obj "@etb_81330630", local
.hidden "@etb_81330630"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_81330630"

# 0x81331248..0x813312E4 | size: 0x9C
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331248 | size: 0xC
.obj "@eti_81331248", local
.hidden "@eti_81331248"
	.4byte Zi8GetCandidates
	.4byte 0x00000070
	.4byte "@etb_813305D0"
.endobj "@eti_81331248"

# extabindex:0xC | 0x81331254 | size: 0xC
.obj "@eti_81331254", local
.hidden "@eti_81331254"
	.4byte Zi8_8147A63C
	.4byte 0x00000114
	.4byte "@etb_813305D8"
.endobj "@eti_81331254"

# extabindex:0x18 | 0x81331260 | size: 0xC
.obj "@eti_81331260", local
.hidden "@eti_81331260"
	.4byte Zi8_8147A750
	.4byte 0x00000380
	.4byte "@etb_813305E0"
.endobj "@eti_81331260"

# extabindex:0x24 | 0x8133126C | size: 0xC
.obj "@eti_8133126C", local
.hidden "@eti_8133126C"
	.4byte Zi8_8147AAD0
	.4byte 0x00000330
	.4byte "@etb_813305E8"
.endobj "@eti_8133126C"

# extabindex:0x30 | 0x81331278 | size: 0xC
.obj "@eti_81331278", local
.hidden "@eti_81331278"
	.4byte Zi8_8147AE00
	.4byte 0x00000340
	.4byte "@etb_813305F0"
.endobj "@eti_81331278"

# extabindex:0x3C | 0x81331284 | size: 0xC
.obj "@eti_81331284", local
.hidden "@eti_81331284"
	.4byte _Zi8GetCandidates
	.4byte 0x00000064
	.4byte "@etb_813305F8"
.endobj "@eti_81331284"

# extabindex:0x48 | 0x81331290 | size: 0xC
.obj "@eti_81331290", local
.hidden "@eti_81331290"
	.4byte _Zi8CheckCandidates
	.4byte 0x0000006C
	.4byte "@etb_81330600"
.endobj "@eti_81331290"

# extabindex:0x54 | 0x8133129C | size: 0xC
.obj "@eti_8133129C", local
.hidden "@eti_8133129C"
	.4byte Zi8GetCandidatesOrCount
	.4byte 0x00000AD8
	.4byte "@etb_81330608"
.endobj "@eti_8133129C"

# extabindex:0x60 | 0x813312A8 | size: 0xC
.obj "@eti_813312A8", local
.hidden "@eti_813312A8"
	.4byte Zi8IsDupWChar
	.4byte 0x000000FC
	.4byte "@etb_81330610"
.endobj "@eti_813312A8"

# extabindex:0x6C | 0x813312B4 | size: 0xC
.obj "@eti_813312B4", local
.hidden "@eti_813312B4"
	.4byte Zi8IsDupWordW
	.4byte 0x0000022C
	.4byte "@etb_81330618"
.endobj "@eti_813312B4"

# extabindex:0x78 | 0x813312C0 | size: 0xC
.obj "@eti_813312C0", local
.hidden "@eti_813312C0"
	.4byte Zi8Memset
	.4byte 0x00000030
	.4byte "@etb_81330620"
.endobj "@eti_813312C0"

# extabindex:0x84 | 0x813312CC | size: 0xC
.obj "@eti_813312CC", local
.hidden "@eti_813312CC"
	.4byte Zi8Memcpy
	.4byte 0x00000030
	.4byte "@etb_81330628"
.endobj "@eti_813312CC"

# extabindex:0x90 | 0x813312D8 | size: 0xC
.obj "@eti_813312D8", local
.hidden "@eti_813312D8"
	.4byte Zi8GetSyllablesCandidates
	.4byte 0x0000073C
	.4byte "@etb_81330630"
.endobj "@eti_813312D8"

# 0x8147A530..0x8147C7C4 | size: 0x2294
.text
.balign 4

# .text:0x0 | 0x8147A530 | size: 0x70
.fn Zi8GetCandidates, global
/* 8147A530 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8147A534 | 7C 08 02 A6 */	mflr r0
/* 8147A538 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147A53C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8147A540 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8147A544 | 7C 9F 23 78 */	mr r31, r4
/* 8147A548 | 38 00 00 00 */	li r0, 0x0
/* 8147A54C | 98 1F 1B 3A */	stb r0, 0x1b3a(r31)
/* 8147A550 | 38 00 00 00 */	li r0, 0x0
/* 8147A554 | 98 1F 1B 3C */	stb r0, 0x1b3c(r31)
/* 8147A558 | 38 00 00 00 */	li r0, 0x0
/* 8147A55C | 98 1F 1B 3B */	stb r0, 0x1b3b(r31)
/* 8147A560 | 38 00 00 00 */	li r0, 0x0
/* 8147A564 | 98 1F 1B 3D */	stb r0, 0x1b3d(r31)
/* 8147A568 | 38 00 00 00 */	li r0, 0x0
/* 8147A56C | B0 1F 1B 36 */	sth r0, 0x1b36(r31)
/* 8147A570 | 38 00 00 00 */	li r0, 0x0
/* 8147A574 | B0 1F 1B 32 */	sth r0, 0x1b32(r31)
/* 8147A578 | 38 00 00 00 */	li r0, 0x0
/* 8147A57C | B0 1F 1B 34 */	sth r0, 0x1b34(r31)
/* 8147A580 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8147A584 | 7F E4 FB 78 */	mr r4, r31
/* 8147A588 | 48 00 0B B9 */	bl _Zi8GetCandidates
/* 8147A58C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8147A590 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147A594 | 7C 08 03 A6 */	mtlr r0
/* 8147A598 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8147A59C | 4E 80 00 20 */	blr
.endfn Zi8GetCandidates

# .text:0x70 | 0x8147A5A0 | size: 0x2C
.fn Zi8ZHsetPYfuzzyPairs, global
/* 8147A5A0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8147A5A4 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 8147A5A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147A5AC | 41 82 00 10 */	beq .L_8147A5BC
/* 8147A5B0 | 80 02 8C 10 */	lwz r0, lbl_81695010@sda21(r0)
/* 8147A5B4 | 90 04 1B 28 */	stw r0, 0x1b28(r4)
/* 8147A5B8 | 48 00 00 0C */	b .L_8147A5C4
.L_8147A5BC:
/* 8147A5BC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8147A5C0 | 90 04 1B 28 */	stw r0, 0x1b28(r4)
.L_8147A5C4:
/* 8147A5C4 | 38 60 00 01 */	li r3, 0x1
/* 8147A5C8 | 4E 80 00 20 */	blr
.endfn Zi8ZHsetPYfuzzyPairs

# .text:0x9C | 0x8147A5CC | size: 0x2C
.fn Zi8ZHsetZYfuzzyPairs, global
/* 8147A5CC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8147A5D0 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 8147A5D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147A5D8 | 41 82 00 10 */	beq .L_8147A5E8
/* 8147A5DC | 80 02 9B E8 */	lwz r0, Zi8ZYdefaultFuzzyPairs@sda21(r0)
/* 8147A5E0 | 90 04 1B 2C */	stw r0, 0x1b2c(r4)
/* 8147A5E4 | 48 00 00 0C */	b .L_8147A5F0
.L_8147A5E8:
/* 8147A5E8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8147A5EC | 90 04 1B 2C */	stw r0, 0x1b2c(r4)
.L_8147A5F0:
/* 8147A5F0 | 38 60 00 01 */	li r3, 0x1
/* 8147A5F4 | 4E 80 00 20 */	blr
.endfn Zi8ZHsetZYfuzzyPairs

# .text:0xC8 | 0x8147A5F8 | size: 0x3C
.fn Zi8SetLatinSearchOrder, global
/* 8147A5F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8147A5FC | 41 82 00 10 */	beq .L_8147A60C
/* 8147A600 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8147A604 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147A608 | 40 82 00 1C */	bne .L_8147A624
.L_8147A60C:
/* 8147A60C | 3C C0 81 61 */	lis r6, lbl_81617F10@ha
/* 8147A610 | 38 06 7F 10 */	addi r0, r6, lbl_81617F10@l
/* 8147A614 | 90 05 14 10 */	stw r0, 0x1410(r5)
/* 8147A618 | 38 00 00 09 */	li r0, 0x9
/* 8147A61C | 98 05 14 18 */	stb r0, 0x1418(r5)
/* 8147A620 | 48 00 00 0C */	b .L_8147A62C
.L_8147A624:
/* 8147A624 | 90 65 14 10 */	stw r3, 0x1410(r5)
/* 8147A628 | 98 85 14 18 */	stb r4, 0x1418(r5)
.L_8147A62C:
/* 8147A62C | 38 60 00 01 */	li r3, 0x1
/* 8147A630 | 4E 80 00 20 */	blr
.endfn Zi8SetLatinSearchOrder

# .text:0x104 | 0x8147A634 | size: 0x8
.fn Zi8GetGlobalDataSize, global
/* 8147A634 | 38 60 1B 44 */	li r3, 0x1b44
/* 8147A638 | 4E 80 00 20 */	blr
.endfn Zi8GetGlobalDataSize

# .text:0x10C | 0x8147A63C | size: 0x114
.fn Zi8_8147A63C, global
/* 8147A63C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147A640 | 7C 08 02 A6 */	mflr r0
/* 8147A644 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147A648 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147A64C | 48 17 EE 75 */	bl _savegpr_27
/* 8147A650 | 7C 7C 1B 78 */	mr r28, r3
/* 8147A654 | B0 81 00 08 */	sth r4, 0x8(r1)
/* 8147A658 | 7C BD 2B 78 */	mr r29, r5
/* 8147A65C | 7C DE 33 78 */	mr r30, r6
/* 8147A660 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147A664 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147A668 | 40 82 00 40 */	bne .L_8147A6A8
/* 8147A66C | 38 60 00 01 */	li r3, 0x1
/* 8147A670 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147A674 | 7F C4 F3 78 */	mr r4, r30
/* 8147A678 | 4B FE 4D FD */	bl Zi8GetFormatVersion
/* 8147A67C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147A680 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8147A684 | 40 80 00 1C */	bge .L_8147A6A0
/* 8147A688 | 38 60 02 6F */	li r3, 0x26f
/* 8147A68C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147A690 | 7F C4 F3 78 */	mr r4, r30
/* 8147A694 | 48 00 9D E9 */	bl Zi8LogError
/* 8147A698 | 38 60 00 00 */	li r3, 0x0
/* 8147A69C | 48 00 00 9C */	b .L_8147A738
.L_8147A6A0:
/* 8147A6A0 | 3B E0 00 1E */	li r31, 0x1e
/* 8147A6A4 | 48 00 00 08 */	b .L_8147A6AC
.L_8147A6A8:
/* 8147A6A8 | 3B E0 00 03 */	li r31, 0x3
.L_8147A6AC:
/* 8147A6AC | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 8147A6B0 | 57 E4 06 3E */	clrlwi r4, r31, 24
/* 8147A6B4 | 7F C5 F3 78 */	mr r5, r30
/* 8147A6B8 | 4B FE 4C F9 */	bl Zi8GetTableAddress
/* 8147A6BC | 7C 7B 1B 78 */	mr r27, r3
/* 8147A6C0 | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 8147A6C4 | 57 E4 06 3E */	clrlwi r4, r31, 24
/* 8147A6C8 | 7F C5 F3 78 */	mr r5, r30
/* 8147A6CC | 4B FE 4D 65 */	bl Zi8GetTableCount
/* 8147A6D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8147A6D4 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147A6D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147A6DC | 41 82 00 14 */	beq .L_8147A6F0
/* 8147A6E0 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8147A6E4 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8147A6E8 | 7C 03 00 40 */	cmplw r3, r0
/* 8147A6EC | 40 81 00 1C */	ble .L_8147A708
.L_8147A6F0:
/* 8147A6F0 | 38 60 09 61 */	li r3, 0x961
/* 8147A6F4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147A6F8 | 7F C4 F3 78 */	mr r4, r30
/* 8147A6FC | 48 00 9D 81 */	bl Zi8LogError
/* 8147A700 | 38 60 00 00 */	li r3, 0x0
/* 8147A704 | 48 00 00 34 */	b .L_8147A738
.L_8147A708:
/* 8147A708 | 7F 83 E3 78 */	mr r3, r28
/* 8147A70C | 7F 64 DB 78 */	mr r4, r27
/* 8147A710 | 57 E5 04 3E */	clrlwi r5, r31, 16
/* 8147A714 | 48 00 19 39 */	bl Zi8Memcpy
/* 8147A718 | 38 60 00 00 */	li r3, 0x0
/* 8147A71C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147A720 | 7C 7C 01 AE */	stbx r3, r28, r0
/* 8147A724 | 38 60 00 64 */	li r3, 0x64
/* 8147A728 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147A72C | 7F C4 F3 78 */	mr r4, r30
/* 8147A730 | 48 00 9D 4D */	bl Zi8LogError
/* 8147A734 | 7F E3 FB 78 */	mr r3, r31
.L_8147A738:
/* 8147A738 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147A73C | 48 17 ED D1 */	bl _restgpr_27
/* 8147A740 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147A744 | 7C 08 03 A6 */	mtlr r0
/* 8147A748 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147A74C | 4E 80 00 20 */	blr
.endfn Zi8_8147A63C

# .text:0x220 | 0x8147A750 | size: 0x380
.fn Zi8_8147A750, global
/* 8147A750 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8147A754 | 7C 08 02 A6 */	mflr r0
/* 8147A758 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147A75C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8147A760 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8147A764 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8147A768 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8147A76C | 7C 7E 1B 78 */	mr r30, r3
/* 8147A770 | 7C 9C 23 78 */	mr r28, r4
/* 8147A774 | 3B E0 00 00 */	li r31, 0x0
/* 8147A778 | 38 60 00 76 */	li r3, 0x76
/* 8147A77C | 7F E0 FB 78 */	mr r0, r31
/* 8147A780 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A784 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A788 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A78C | 7F 83 E3 78 */	mr r3, r28
/* 8147A790 | 48 00 64 F5 */	bl Zi8GetVersion
/* 8147A794 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147A798 | 54 00 04 2E */	rlwinm r0, r0, 0, 16, 23
/* 8147A79C | 7C 00 46 70 */	srawi r0, r0, 8
/* 8147A7A0 | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 8147A7A4 | 7F 83 E3 78 */	mr r3, r28
/* 8147A7A8 | 48 00 64 DD */	bl Zi8GetVersion
/* 8147A7AC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147A7B0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A7B4 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8147A7B8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8147A7BC | 3C 60 66 66 */	lis r3, 0x6666
/* 8147A7C0 | 38 63 66 67 */	addi r3, r3, 0x6667
/* 8147A7C4 | 7C 03 00 96 */	mulhw r0, r3, r0
/* 8147A7C8 | 7C 00 16 70 */	srawi r0, r0, 2
/* 8147A7CC | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A7D0 | 7C 60 1A 14 */	add r3, r0, r3
/* 8147A7D4 | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147A7D8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147A7DC | 7F E0 FB 78 */	mr r0, r31
/* 8147A7E0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A7E4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A7E8 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A7EC | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 8147A7F0 | 3C 60 66 66 */	lis r3, 0x6666
/* 8147A7F4 | 38 63 66 67 */	addi r3, r3, 0x6667
/* 8147A7F8 | 7C 03 20 96 */	mulhw r0, r3, r4
/* 8147A7FC | 7C 00 16 70 */	srawi r0, r0, 2
/* 8147A800 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A804 | 7C 00 1A 14 */	add r0, r0, r3
/* 8147A808 | 1C 00 00 0A */	mulli r0, r0, 0xa
/* 8147A80C | 7C 60 20 50 */	subf r3, r0, r4
/* 8147A810 | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147A814 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147A818 | 7F E0 FB 78 */	mr r0, r31
/* 8147A81C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A820 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A824 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A828 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8147A82C | 3C 60 66 66 */	lis r3, 0x6666
/* 8147A830 | 38 63 66 67 */	addi r3, r3, 0x6667
/* 8147A834 | 7C 03 00 96 */	mulhw r0, r3, r0
/* 8147A838 | 7C 00 16 70 */	srawi r0, r0, 2
/* 8147A83C | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A840 | 7C 60 1A 14 */	add r3, r0, r3
/* 8147A844 | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147A848 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147A84C | 7F E0 FB 78 */	mr r0, r31
/* 8147A850 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A854 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A858 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A85C | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 8147A860 | 3C 60 66 66 */	lis r3, 0x6666
/* 8147A864 | 38 63 66 67 */	addi r3, r3, 0x6667
/* 8147A868 | 7C 03 20 96 */	mulhw r0, r3, r4
/* 8147A86C | 7C 00 16 70 */	srawi r0, r0, 2
/* 8147A870 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A874 | 7C 00 1A 14 */	add r0, r0, r3
/* 8147A878 | 1C 00 00 0A */	mulli r0, r0, 0xa
/* 8147A87C | 7C 60 20 50 */	subf r3, r0, r4
/* 8147A880 | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147A884 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147A888 | 7F E0 FB 78 */	mr r0, r31
/* 8147A88C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A890 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A894 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A898 | 38 60 00 6F */	li r3, 0x6f
/* 8147A89C | 7F E0 FB 78 */	mr r0, r31
/* 8147A8A0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A8A4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A8A8 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A8AC | 7F 83 E3 78 */	mr r3, r28
/* 8147A8B0 | 48 00 63 E5 */	bl Zi8GetOEMID
/* 8147A8B4 | 7C 7D 1B 78 */	mr r29, r3
/* 8147A8B8 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8147A8BC | 3C 60 51 EC */	lis r3, 0x51ec
/* 8147A8C0 | 38 63 85 1F */	subi r3, r3, 0x7ae1
/* 8147A8C4 | 7C 03 00 96 */	mulhw r0, r3, r0
/* 8147A8C8 | 7C 00 2E 70 */	srawi r0, r0, 5
/* 8147A8CC | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A8D0 | 7C 60 1A 14 */	add r3, r0, r3
/* 8147A8D4 | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147A8D8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147A8DC | 7F E0 FB 78 */	mr r0, r31
/* 8147A8E0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A8E4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A8E8 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A8EC | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 8147A8F0 | 3C 60 51 EC */	lis r3, 0x51ec
/* 8147A8F4 | 38 63 85 1F */	subi r3, r3, 0x7ae1
/* 8147A8F8 | 7C 03 20 96 */	mulhw r0, r3, r4
/* 8147A8FC | 7C 00 2E 70 */	srawi r0, r0, 5
/* 8147A900 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A904 | 7C 00 1A 14 */	add r0, r0, r3
/* 8147A908 | 1C 00 00 64 */	mulli r0, r0, 0x64
/* 8147A90C | 7C 00 20 50 */	subf r0, r0, r4
/* 8147A910 | 3C 60 66 66 */	lis r3, 0x6666
/* 8147A914 | 38 63 66 67 */	addi r3, r3, 0x6667
/* 8147A918 | 7C 03 00 96 */	mulhw r0, r3, r0
/* 8147A91C | 7C 00 16 70 */	srawi r0, r0, 2
/* 8147A920 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A924 | 7C 60 1A 14 */	add r3, r0, r3
/* 8147A928 | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147A92C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147A930 | 7F E0 FB 78 */	mr r0, r31
/* 8147A934 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A938 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A93C | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A940 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 8147A944 | 3C 60 51 EC */	lis r3, 0x51ec
/* 8147A948 | 38 63 85 1F */	subi r3, r3, 0x7ae1
/* 8147A94C | 7C 03 20 96 */	mulhw r0, r3, r4
/* 8147A950 | 7C 00 2E 70 */	srawi r0, r0, 5
/* 8147A954 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A958 | 7C 00 1A 14 */	add r0, r0, r3
/* 8147A95C | 1C 00 00 64 */	mulli r0, r0, 0x64
/* 8147A960 | 7C 80 20 50 */	subf r4, r0, r4
/* 8147A964 | 3C 60 66 66 */	lis r3, 0x6666
/* 8147A968 | 38 63 66 67 */	addi r3, r3, 0x6667
/* 8147A96C | 7C 03 20 96 */	mulhw r0, r3, r4
/* 8147A970 | 7C 00 16 70 */	srawi r0, r0, 2
/* 8147A974 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A978 | 7C 00 1A 14 */	add r0, r0, r3
/* 8147A97C | 1C 00 00 0A */	mulli r0, r0, 0xa
/* 8147A980 | 7C 60 20 50 */	subf r3, r0, r4
/* 8147A984 | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147A988 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147A98C | 7F E0 FB 78 */	mr r0, r31
/* 8147A990 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A994 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A998 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A99C | 38 60 00 62 */	li r3, 0x62
/* 8147A9A0 | 7F E0 FB 78 */	mr r0, r31
/* 8147A9A4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A9A8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A9AC | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A9B0 | 7F 83 E3 78 */	mr r3, r28
/* 8147A9B4 | 48 00 62 D9 */	bl Zi8GetBuildID
/* 8147A9B8 | 7C 7D 1B 78 */	mr r29, r3
/* 8147A9BC | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8147A9C0 | 3C 60 51 EC */	lis r3, 0x51ec
/* 8147A9C4 | 38 63 85 1F */	subi r3, r3, 0x7ae1
/* 8147A9C8 | 7C 03 00 96 */	mulhw r0, r3, r0
/* 8147A9CC | 7C 00 2E 70 */	srawi r0, r0, 5
/* 8147A9D0 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147A9D4 | 7C 60 1A 14 */	add r3, r0, r3
/* 8147A9D8 | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147A9DC | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147A9E0 | 7F E0 FB 78 */	mr r0, r31
/* 8147A9E4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147A9E8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147A9EC | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147A9F0 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 8147A9F4 | 3C 60 51 EC */	lis r3, 0x51ec
/* 8147A9F8 | 38 63 85 1F */	subi r3, r3, 0x7ae1
/* 8147A9FC | 7C 03 20 96 */	mulhw r0, r3, r4
/* 8147AA00 | 7C 00 2E 70 */	srawi r0, r0, 5
/* 8147AA04 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147AA08 | 7C 00 1A 14 */	add r0, r0, r3
/* 8147AA0C | 1C 00 00 64 */	mulli r0, r0, 0x64
/* 8147AA10 | 7C 00 20 50 */	subf r0, r0, r4
/* 8147AA14 | 3C 60 66 66 */	lis r3, 0x6666
/* 8147AA18 | 38 63 66 67 */	addi r3, r3, 0x6667
/* 8147AA1C | 7C 03 00 96 */	mulhw r0, r3, r0
/* 8147AA20 | 7C 00 16 70 */	srawi r0, r0, 2
/* 8147AA24 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147AA28 | 7C 60 1A 14 */	add r3, r0, r3
/* 8147AA2C | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147AA30 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147AA34 | 7F E0 FB 78 */	mr r0, r31
/* 8147AA38 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147AA3C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147AA40 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147AA44 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 8147AA48 | 3C 60 51 EC */	lis r3, 0x51ec
/* 8147AA4C | 38 63 85 1F */	subi r3, r3, 0x7ae1
/* 8147AA50 | 7C 03 20 96 */	mulhw r0, r3, r4
/* 8147AA54 | 7C 00 2E 70 */	srawi r0, r0, 5
/* 8147AA58 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147AA5C | 7C 00 1A 14 */	add r0, r0, r3
/* 8147AA60 | 1C 00 00 64 */	mulli r0, r0, 0x64
/* 8147AA64 | 7C 80 20 50 */	subf r4, r0, r4
/* 8147AA68 | 3C 60 66 66 */	lis r3, 0x6666
/* 8147AA6C | 38 63 66 67 */	addi r3, r3, 0x6667
/* 8147AA70 | 7C 03 20 96 */	mulhw r0, r3, r4
/* 8147AA74 | 7C 00 16 70 */	srawi r0, r0, 2
/* 8147AA78 | 54 03 0F FE */	srwi r3, r0, 31
/* 8147AA7C | 7C 00 1A 14 */	add r0, r0, r3
/* 8147AA80 | 1C 00 00 0A */	mulli r0, r0, 0xa
/* 8147AA84 | 7C 60 20 50 */	subf r3, r0, r4
/* 8147AA88 | 38 03 00 30 */	addi r0, r3, 0x30
/* 8147AA8C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147AA90 | 7F E0 FB 78 */	mr r0, r31
/* 8147AA94 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147AA98 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147AA9C | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147AAA0 | 38 60 00 00 */	li r3, 0x0
/* 8147AAA4 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147AAA8 | 7C 7E 01 AE */	stbx r3, r30, r0
/* 8147AAAC | 7F E3 FB 78 */	mr r3, r31
/* 8147AAB0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8147AAB4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8147AAB8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8147AABC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8147AAC0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147AAC4 | 7C 08 03 A6 */	mtlr r0
/* 8147AAC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8147AACC | 4E 80 00 20 */	blr
.endfn Zi8_8147A750

# .text:0x5A0 | 0x8147AAD0 | size: 0x330
.fn Zi8_8147AAD0, global
/* 8147AAD0 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8147AAD4 | 7C 08 02 A6 */	mflr r0
/* 8147AAD8 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8147AADC | 39 61 00 70 */	addi r11, r1, 0x70
/* 8147AAE0 | 48 17 E9 E1 */	bl _savegpr_27
/* 8147AAE4 | 7C 7F 1B 78 */	mr r31, r3
/* 8147AAE8 | 98 81 00 08 */	stb r4, 0x8(r1)
/* 8147AAEC | 7C BD 2B 78 */	mr r29, r5
/* 8147AAF0 | 83 9F 00 18 */	lwz r28, 0x18(r31)
/* 8147AAF4 | 38 00 00 00 */	li r0, 0x0
/* 8147AAF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8147AAFC | 38 00 00 00 */	li r0, 0x0
/* 8147AB00 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8147AB04 | 38 00 00 00 */	li r0, 0x0
/* 8147AB08 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8147AB0C | 38 00 00 00 */	li r0, 0x0
/* 8147AB10 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8147AB14 | 38 60 00 64 */	li r3, 0x64
/* 8147AB18 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147AB1C | 7F A4 EB 78 */	mr r4, r29
/* 8147AB20 | 48 00 99 5D */	bl Zi8LogError
/* 8147AB24 | 38 00 00 00 */	li r0, 0x0
/* 8147AB28 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8147AB2C | 38 61 00 38 */	addi r3, r1, 0x38
/* 8147AB30 | 38 80 00 20 */	li r4, 0x20
/* 8147AB34 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 8147AB38 | 88 BF 00 00 */	lbz r5, 0x0(r31)
/* 8147AB3C | 7F A6 EB 78 */	mr r6, r29
/* 8147AB40 | 4B FF FA FD */	bl Zi8_8147A63C
/* 8147AB44 | 7C 7E 1B 78 */	mr r30, r3
/* 8147AB48 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147AB4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AB50 | 41 82 00 2C */	beq .L_8147AB7C
/* 8147AB54 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8147AB58 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147AB5C | 7C 03 00 00 */	cmpw r3, r0
/* 8147AB60 | 41 81 00 1C */	bgt .L_8147AB7C
/* 8147AB64 | 38 01 00 38 */	addi r0, r1, 0x38
/* 8147AB68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8147AB6C | 38 01 00 18 */	addi r0, r1, 0x18
/* 8147AB70 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8147AB74 | B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8147AB78 | 48 00 00 0C */	b .L_8147AB84
.L_8147AB7C:
/* 8147AB7C | 38 01 00 18 */	addi r0, r1, 0x18
/* 8147AB80 | 90 01 00 14 */	stw r0, 0x14(r1)
.L_8147AB84:
/* 8147AB84 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8147AB88 | 7F A4 EB 78 */	mr r4, r29
/* 8147AB8C | 4B FF FB C5 */	bl Zi8_8147A750
/* 8147AB90 | 7C 7E 1B 78 */	mr r30, r3
/* 8147AB94 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8147AB98 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147AB9C | 7C 03 00 00 */	cmpw r3, r0
/* 8147ABA0 | 40 80 00 38 */	bge .L_8147ABD8
/* 8147ABA4 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8147ABA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147ABAC | 41 82 00 14 */	beq .L_8147ABC0
/* 8147ABB0 | 38 00 00 00 */	li r0, 0x0
/* 8147ABB4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8147ABB8 | 3B C0 00 01 */	li r30, 0x1
/* 8147ABBC | 48 00 00 3C */	b .L_8147ABF8
.L_8147ABC0:
/* 8147ABC0 | 38 60 01 F4 */	li r3, 0x1f4
/* 8147ABC4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147ABC8 | 7F A4 EB 78 */	mr r4, r29
/* 8147ABCC | 48 00 98 B5 */	bl Zi8ReplaceLastError
/* 8147ABD0 | 38 60 00 00 */	li r3, 0x0
/* 8147ABD4 | 48 00 02 14 */	b .L_8147ADE8
.L_8147ABD8:
/* 8147ABD8 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8147ABDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147ABE0 | 41 82 00 10 */	beq .L_8147ABF0
/* 8147ABE4 | B3 C1 00 0A */	sth r30, 0xa(r1)
/* 8147ABE8 | 3B C0 00 02 */	li r30, 0x2
/* 8147ABEC | 48 00 00 0C */	b .L_8147ABF8
.L_8147ABF0:
/* 8147ABF0 | B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8147ABF4 | 3B C0 00 01 */	li r30, 0x1
.L_8147ABF8:
/* 8147ABF8 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147ABFC | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147AC00 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147AC04 | 7C 03 00 40 */	cmplw r3, r0
/* 8147AC08 | 41 80 00 1C */	blt .L_8147AC24
/* 8147AC0C | 38 60 01 F5 */	li r3, 0x1f5
/* 8147AC10 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147AC14 | 7F A4 EB 78 */	mr r4, r29
/* 8147AC18 | 48 00 98 69 */	bl Zi8ReplaceLastError
/* 8147AC1C | 38 60 00 00 */	li r3, 0x0
/* 8147AC20 | 48 00 01 C8 */	b .L_8147ADE8
.L_8147AC24:
/* 8147AC24 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147AC28 | 7C 00 F0 50 */	subf r0, r0, r30
/* 8147AC2C | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 8147AC30 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147AC34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AC38 | 41 82 00 1C */	beq .L_8147AC54
/* 8147AC3C | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147AC40 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8147AC44 | 38 00 00 FF */	li r0, 0xff
/* 8147AC48 | 98 1D 00 0A */	stb r0, 0xa(r29)
/* 8147AC4C | 38 60 00 01 */	li r3, 0x1
/* 8147AC50 | 48 00 01 98 */	b .L_8147ADE8
.L_8147AC54:
/* 8147AC54 | 88 7F 00 1C */	lbz r3, 0x1c(r31)
/* 8147AC58 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147AC5C | 7C 03 00 00 */	cmpw r3, r0
/* 8147AC60 | 40 80 00 08 */	bge .L_8147AC68
/* 8147AC64 | 8B DF 00 1C */	lbz r30, 0x1c(r31)
.L_8147AC68:
/* 8147AC68 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147AC6C | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8147AC70 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147AC74 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147AC78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AC7C | 40 82 00 20 */	bne .L_8147AC9C
/* 8147AC80 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147AC84 | 98 1D 05 38 */	stb r0, 0x538(r29)
/* 8147AC88 | 3C 80 00 01 */	lis r4, 0x1
/* 8147AC8C | 38 84 FF F0 */	subi r4, r4, 0x10
/* 8147AC90 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8147AC94 | B0 83 00 00 */	sth r4, 0x0(r3)
/* 8147AC98 | 3B 9D 03 38 */	addi r28, r29, 0x338
.L_8147AC9C:
/* 8147AC9C | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147ACA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147ACA4 | 41 82 00 10 */	beq .L_8147ACB4
/* 8147ACA8 | 83 61 00 10 */	lwz r27, 0x10(r1)
/* 8147ACAC | A3 C1 00 0A */	lhz r30, 0xa(r1)
/* 8147ACB0 | 48 00 00 0C */	b .L_8147ACBC
.L_8147ACB4:
/* 8147ACB4 | 83 61 00 14 */	lwz r27, 0x14(r1)
/* 8147ACB8 | A3 C1 00 0C */	lhz r30, 0xc(r1)
.L_8147ACBC:
/* 8147ACBC | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8147ACC0 | 88 1D 00 0A */	lbz r0, 0xa(r29)
/* 8147ACC4 | 7C 03 00 00 */	cmpw r3, r0
/* 8147ACC8 | 40 81 00 08 */	ble .L_8147ACD0
/* 8147ACCC | 8B DD 00 0A */	lbz r30, 0xa(r29)
.L_8147ACD0:
/* 8147ACD0 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147ACD4 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147ACD8 | 88 1D 14 0C */	lbz r0, 0x140c(r29)
/* 8147ACDC | 7C 03 00 40 */	cmplw r3, r0
/* 8147ACE0 | 41 80 00 14 */	blt .L_8147ACF4
/* 8147ACE4 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147ACE8 | 54 00 06 7C */	rlwinm r0, r0, 0, 25, 30
/* 8147ACEC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8147ACF0 | 40 82 00 30 */	bne .L_8147AD20
.L_8147ACF4:
/* 8147ACF4 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8147ACF8 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147ACFC | 7C 03 00 00 */	cmpw r3, r0
/* 8147AD00 | 40 81 00 20 */	ble .L_8147AD20
/* 8147AD04 | 8B DF 00 0C */	lbz r30, 0xc(r31)
/* 8147AD08 | 48 00 00 18 */	b .L_8147AD20
.L_8147AD0C:
/* 8147AD0C | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 8147AD10 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8147AD14 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147AD18 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147AD1C | 3B 9C 00 02 */	addi r28, r28, 0x2
.L_8147AD20:
/* 8147AD20 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147AD24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AD28 | 3B DE FF FF */	subi r30, r30, 0x1
/* 8147AD2C | 40 82 FF E0 */	bne .L_8147AD0C
/* 8147AD30 | 38 00 00 00 */	li r0, 0x0
/* 8147AD34 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147AD38 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 8147AD3C | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 8147AD40 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8147AD44 | 40 82 00 8C */	bne .L_8147ADD0
/* 8147AD48 | 83 61 00 10 */	lwz r27, 0x10(r1)
/* 8147AD4C | A3 C1 00 0A */	lhz r30, 0xa(r1)
/* 8147AD50 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8147AD54 | 88 1D 00 0A */	lbz r0, 0xa(r29)
/* 8147AD58 | 7C 03 00 00 */	cmpw r3, r0
/* 8147AD5C | 40 81 00 08 */	ble .L_8147AD64
/* 8147AD60 | 8B DD 00 0A */	lbz r30, 0xa(r29)
.L_8147AD64:
/* 8147AD64 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147AD68 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147AD6C | 88 1D 14 0C */	lbz r0, 0x140c(r29)
/* 8147AD70 | 7C 03 00 40 */	cmplw r3, r0
/* 8147AD74 | 41 80 00 14 */	blt .L_8147AD88
/* 8147AD78 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147AD7C | 54 00 06 7C */	rlwinm r0, r0, 0, 25, 30
/* 8147AD80 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8147AD84 | 40 82 00 30 */	bne .L_8147ADB4
.L_8147AD88:
/* 8147AD88 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8147AD8C | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147AD90 | 7C 03 00 00 */	cmpw r3, r0
/* 8147AD94 | 40 81 00 20 */	ble .L_8147ADB4
/* 8147AD98 | 8B DF 00 0C */	lbz r30, 0xc(r31)
/* 8147AD9C | 48 00 00 18 */	b .L_8147ADB4
.L_8147ADA0:
/* 8147ADA0 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 8147ADA4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8147ADA8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147ADAC | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147ADB0 | 3B 9C 00 02 */	addi r28, r28, 0x2
.L_8147ADB4:
/* 8147ADB4 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147ADB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147ADBC | 3B DE FF FF */	subi r30, r30, 0x1
/* 8147ADC0 | 40 82 FF E0 */	bne .L_8147ADA0
/* 8147ADC4 | 38 00 00 00 */	li r0, 0x0
/* 8147ADC8 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147ADCC | 3B 9C 00 02 */	addi r28, r28, 0x2
.L_8147ADD0:
/* 8147ADD0 | 38 00 00 00 */	li r0, 0x0
/* 8147ADD4 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147ADD8 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 8147ADDC | 38 00 00 FF */	li r0, 0xff
/* 8147ADE0 | 98 1D 00 0A */	stb r0, 0xa(r29)
/* 8147ADE4 | 38 60 00 01 */	li r3, 0x1
.L_8147ADE8:
/* 8147ADE8 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8147ADEC | 48 17 E7 21 */	bl _restgpr_27
/* 8147ADF0 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8147ADF4 | 7C 08 03 A6 */	mtlr r0
/* 8147ADF8 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8147ADFC | 4E 80 00 20 */	blr
.endfn Zi8_8147AAD0

# .text:0x8D0 | 0x8147AE00 | size: 0x340
.fn Zi8_8147AE00, global
/* 8147AE00 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8147AE04 | 7C 08 02 A6 */	mflr r0
/* 8147AE08 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8147AE0C | 39 61 00 70 */	addi r11, r1, 0x70
/* 8147AE10 | 48 17 E6 A9 */	bl _savegpr_25
/* 8147AE14 | 7C 7F 1B 78 */	mr r31, r3
/* 8147AE18 | 98 81 00 08 */	stb r4, 0x8(r1)
/* 8147AE1C | 7C B9 2B 78 */	mr r25, r5
/* 8147AE20 | 83 9F 00 18 */	lwz r28, 0x18(r31)
/* 8147AE24 | 3B A0 00 00 */	li r29, 0x0
/* 8147AE28 | 38 60 00 64 */	li r3, 0x64
/* 8147AE2C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147AE30 | 7F 24 CB 78 */	mr r4, r25
/* 8147AE34 | 48 00 96 49 */	bl Zi8LogError
/* 8147AE38 | 38 00 00 00 */	li r0, 0x0
/* 8147AE3C | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8147AE40 | 38 61 00 30 */	addi r3, r1, 0x30
/* 8147AE44 | 38 80 00 20 */	li r4, 0x20
/* 8147AE48 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 8147AE4C | 88 BF 00 00 */	lbz r5, 0x0(r31)
/* 8147AE50 | 7F 26 CB 78 */	mr r6, r25
/* 8147AE54 | 4B FF F7 E9 */	bl Zi8_8147A63C
/* 8147AE58 | 7C 7B 1B 78 */	mr r27, r3
/* 8147AE5C | 38 61 00 10 */	addi r3, r1, 0x10
/* 8147AE60 | 7F 24 CB 78 */	mr r4, r25
/* 8147AE64 | 4B FF F8 ED */	bl Zi8_8147A750
/* 8147AE68 | 7C 7A 1B 78 */	mr r26, r3
/* 8147AE6C | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8147AE70 | 54 00 06 F6 */	rlwinm r0, r0, 0, 27, 27
/* 8147AE74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AE78 | 41 82 00 2C */	beq .L_8147AEA4
/* 8147AE7C | 3B C0 00 00 */	li r30, 0x0
/* 8147AE80 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147AE84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AE88 | 41 82 00 08 */	beq .L_8147AE90
/* 8147AE8C | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147AE90:
/* 8147AE90 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8147AE94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AE98 | 41 82 00 14 */	beq .L_8147AEAC
/* 8147AE9C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147AEA0 | 48 00 00 0C */	b .L_8147AEAC
.L_8147AEA4:
/* 8147AEA4 | 7C 1B D2 14 */	add r0, r27, r26
/* 8147AEA8 | 54 1E 04 3E */	clrlwi r30, r0, 16
.L_8147AEAC:
/* 8147AEAC | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147AEB0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147AEB4 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147AEB8 | 7C 03 00 40 */	cmplw r3, r0
/* 8147AEBC | 41 80 00 1C */	blt .L_8147AED8
/* 8147AEC0 | 38 60 01 F6 */	li r3, 0x1f6
/* 8147AEC4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147AEC8 | 7F 24 CB 78 */	mr r4, r25
/* 8147AECC | 48 00 95 B5 */	bl Zi8ReplaceLastError
/* 8147AED0 | 38 60 00 00 */	li r3, 0x0
/* 8147AED4 | 48 00 02 54 */	b .L_8147B128
.L_8147AED8:
/* 8147AED8 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147AEDC | 7C 00 F0 50 */	subf r0, r0, r30
/* 8147AEE0 | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 8147AEE4 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147AEE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AEEC | 41 82 00 1C */	beq .L_8147AF08
/* 8147AEF0 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147AEF4 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8147AEF8 | 38 00 00 FF */	li r0, 0xff
/* 8147AEFC | 98 19 00 0A */	stb r0, 0xa(r25)
/* 8147AF00 | 38 60 00 01 */	li r3, 0x1
/* 8147AF04 | 48 00 02 24 */	b .L_8147B128
.L_8147AF08:
/* 8147AF08 | 88 7F 00 1C */	lbz r3, 0x1c(r31)
/* 8147AF0C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147AF10 | 7C 03 00 00 */	cmpw r3, r0
/* 8147AF14 | 40 80 00 08 */	bge .L_8147AF1C
/* 8147AF18 | 8B DF 00 1C */	lbz r30, 0x1c(r31)
.L_8147AF1C:
/* 8147AF1C | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147AF20 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8147AF24 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8147AF28 | 54 00 06 F6 */	rlwinm r0, r0, 0, 27, 27
/* 8147AF2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AF30 | 41 82 00 E0 */	beq .L_8147B010
/* 8147AF34 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147AF38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AF3C | 40 82 00 10 */	bne .L_8147AF4C
/* 8147AF40 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147AF44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AF48 | 40 82 00 40 */	bne .L_8147AF88
.L_8147AF4C:
/* 8147AF4C | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147AF50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AF54 | 41 82 00 28 */	beq .L_8147AF7C
/* 8147AF58 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147AF5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AF60 | 40 82 00 1C */	bne .L_8147AF7C
/* 8147AF64 | 38 60 01 F4 */	li r3, 0x1f4
/* 8147AF68 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147AF6C | 7F 24 CB 78 */	mr r4, r25
/* 8147AF70 | 48 00 95 11 */	bl Zi8ReplaceLastError
/* 8147AF74 | 38 60 00 00 */	li r3, 0x0
/* 8147AF78 | 48 00 01 B0 */	b .L_8147B128
.L_8147AF7C:
/* 8147AF7C | 3B A1 00 10 */	addi r29, r1, 0x10
/* 8147AF80 | 7F 5E D3 78 */	mr r30, r26
/* 8147AF84 | 48 00 00 24 */	b .L_8147AFA8
.L_8147AF88:
/* 8147AF88 | 3B A1 00 30 */	addi r29, r1, 0x30
/* 8147AF8C | 7F 7E DB 78 */	mr r30, r27
/* 8147AF90 | 48 00 00 18 */	b .L_8147AFA8
.L_8147AF94:
/* 8147AF94 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147AF98 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8147AF9C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147AFA0 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147AFA4 | 3B 9C 00 02 */	addi r28, r28, 0x2
.L_8147AFA8:
/* 8147AFA8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147AFAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AFB0 | 3B DE FF FF */	subi r30, r30, 0x1
/* 8147AFB4 | 40 82 FF E0 */	bne .L_8147AF94
/* 8147AFB8 | 38 00 00 20 */	li r0, 0x20
/* 8147AFBC | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147AFC0 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 8147AFC4 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 8147AFC8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8147AFCC | 40 82 01 58 */	bne .L_8147B124
/* 8147AFD0 | 3B A1 00 10 */	addi r29, r1, 0x10
/* 8147AFD4 | 7F 5E D3 78 */	mr r30, r26
/* 8147AFD8 | 48 00 00 18 */	b .L_8147AFF0
.L_8147AFDC:
/* 8147AFDC | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147AFE0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8147AFE4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147AFE8 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147AFEC | 3B 9C 00 02 */	addi r28, r28, 0x2
.L_8147AFF0:
/* 8147AFF0 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147AFF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147AFF8 | 3B DE FF FF */	subi r30, r30, 0x1
/* 8147AFFC | 40 82 FF E0 */	bne .L_8147AFDC
/* 8147B000 | 38 00 00 20 */	li r0, 0x20
/* 8147B004 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147B008 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 8147B00C | 48 00 01 18 */	b .L_8147B124
.L_8147B010:
/* 8147B010 | 38 00 00 00 */	li r0, 0x0
/* 8147B014 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8147B018 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147B01C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B020 | 41 82 00 78 */	beq .L_8147B098
/* 8147B024 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147B028 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147B02C | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147B030 | 7C 03 00 40 */	cmplw r3, r0
/* 8147B034 | 41 80 00 0C */	blt .L_8147B040
/* 8147B038 | 3B C0 00 00 */	li r30, 0x0
/* 8147B03C | 48 00 00 1C */	b .L_8147B058
.L_8147B040:
/* 8147B040 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147B044 | 7C 00 D8 50 */	subf r0, r0, r27
/* 8147B048 | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 8147B04C | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147B050 | 3B A1 00 30 */	addi r29, r1, 0x30
/* 8147B054 | 7F BD 02 14 */	add r29, r29, r0
.L_8147B058:
/* 8147B058 | 88 7F 00 21 */	lbz r3, 0x21(r31)
/* 8147B05C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147B060 | 7C 03 00 00 */	cmpw r3, r0
/* 8147B064 | 40 80 00 08 */	bge .L_8147B06C
/* 8147B068 | 8B DF 00 21 */	lbz r30, 0x21(r31)
.L_8147B06C:
/* 8147B06C | B3 C1 00 0A */	sth r30, 0xa(r1)
/* 8147B070 | 48 00 00 18 */	b .L_8147B088
.L_8147B074:
/* 8147B074 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147B078 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8147B07C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147B080 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147B084 | 3B 9C 00 02 */	addi r28, r28, 0x2
.L_8147B088:
/* 8147B088 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147B08C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B090 | 3B DE FF FF */	subi r30, r30, 0x1
/* 8147B094 | 40 82 FF E0 */	bne .L_8147B074
.L_8147B098:
/* 8147B098 | 3B A1 00 10 */	addi r29, r1, 0x10
/* 8147B09C | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147B0A0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147B0A4 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147B0A8 | 7C 03 00 40 */	cmplw r3, r0
/* 8147B0AC | 41 80 00 24 */	blt .L_8147B0D0
/* 8147B0B0 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147B0B4 | 7C 00 D0 50 */	subf r0, r0, r26
/* 8147B0B8 | 7C 1B 02 14 */	add r0, r27, r0
/* 8147B0BC | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 8147B0C0 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8147B0C4 | 7C 1E 00 50 */	subf r0, r30, r0
/* 8147B0C8 | 7F BD 02 14 */	add r29, r29, r0
/* 8147B0CC | 48 00 00 08 */	b .L_8147B0D4
.L_8147B0D0:
/* 8147B0D0 | 7F 5E D3 78 */	mr r30, r26
.L_8147B0D4:
/* 8147B0D4 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8147B0D8 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 8147B0DC | 7C 63 00 50 */	subf r3, r3, r0
/* 8147B0E0 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147B0E4 | 7C 03 00 00 */	cmpw r3, r0
/* 8147B0E8 | 40 80 00 2C */	bge .L_8147B114
/* 8147B0EC | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8147B0F0 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 8147B0F4 | 7C 03 00 50 */	subf r0, r3, r0
/* 8147B0F8 | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 8147B0FC | 48 00 00 18 */	b .L_8147B114
.L_8147B100:
/* 8147B100 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147B104 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8147B108 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147B10C | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 8147B110 | 3B 9C 00 02 */	addi r28, r28, 0x2
.L_8147B114:
/* 8147B114 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147B118 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B11C | 3B DE FF FF */	subi r30, r30, 0x1
/* 8147B120 | 40 82 FF E0 */	bne .L_8147B100
.L_8147B124:
/* 8147B124 | 38 60 00 01 */	li r3, 0x1
.L_8147B128:
/* 8147B128 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8147B12C | 48 17 E3 D9 */	bl _restgpr_25
/* 8147B130 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8147B134 | 7C 08 03 A6 */	mtlr r0
/* 8147B138 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8147B13C | 4E 80 00 20 */	blr
.endfn Zi8_8147AE00

# .text:0xC10 | 0x8147B140 | size: 0x64
.fn _Zi8GetCandidates, global
/* 8147B140 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147B144 | 7C 08 02 A6 */	mflr r0
/* 8147B148 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147B14C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8147B150 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8147B154 | 7C 9F 23 78 */	mr r31, r4
/* 8147B158 | 38 00 00 00 */	li r0, 0x0
/* 8147B15C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8147B160 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8147B164 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8147B168 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 8147B16C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8147B170 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147B174 | A0 1F 14 1A */	lhz r0, 0x141a(r31)
/* 8147B178 | B0 01 00 20 */	sth r0, 0x20(r1)
/* 8147B17C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8147B180 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8147B184 | 7F E5 FB 78 */	mr r5, r31
/* 8147B188 | 48 00 00 89 */	bl Zi8GetCandidatesOrCount
/* 8147B18C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147B190 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8147B194 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147B198 | 7C 08 03 A6 */	mtlr r0
/* 8147B19C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147B1A0 | 4E 80 00 20 */	blr
.endfn _Zi8GetCandidates

# .text:0xC74 | 0x8147B1A4 | size: 0x6C
.fn _Zi8CheckCandidates, global
/* 8147B1A4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147B1A8 | 7C 08 02 A6 */	mflr r0
/* 8147B1AC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147B1B0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8147B1B4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8147B1B8 | 7C 9F 23 78 */	mr r31, r4
/* 8147B1BC | 38 00 00 00 */	li r0, 0x0
/* 8147B1C0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8147B1C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8147B1C8 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8147B1CC | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 8147B1D0 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8147B1D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147B1D8 | A0 1F 14 1A */	lhz r0, 0x141a(r31)
/* 8147B1DC | B0 01 00 20 */	sth r0, 0x20(r1)
/* 8147B1E0 | 38 00 00 01 */	li r0, 0x1
/* 8147B1E4 | 98 01 00 23 */	stb r0, 0x23(r1)
/* 8147B1E8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8147B1EC | 38 81 00 10 */	addi r4, r1, 0x10
/* 8147B1F0 | 7F E5 FB 78 */	mr r5, r31
/* 8147B1F4 | 48 00 00 1D */	bl Zi8GetCandidatesOrCount
/* 8147B1F8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147B1FC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8147B200 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147B204 | 7C 08 03 A6 */	mtlr r0
/* 8147B208 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147B20C | 4E 80 00 20 */	blr
.endfn _Zi8CheckCandidates

# .text:0xCE0 | 0x8147B210 | size: 0xAD8
.fn Zi8GetCandidatesOrCount, global
/* 8147B210 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8147B214 | 7C 08 02 A6 */	mflr r0
/* 8147B218 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8147B21C | 39 61 00 60 */	addi r11, r1, 0x60
/* 8147B220 | 48 17 E2 9D */	bl _savegpr_26
/* 8147B224 | 7C 7F 1B 78 */	mr r31, r3
/* 8147B228 | 7C 9D 23 78 */	mr r29, r4
/* 8147B22C | 7C BE 2B 78 */	mr r30, r5
/* 8147B230 | 3B 60 00 00 */	li r27, 0x0
/* 8147B234 | 38 00 00 00 */	li r0, 0x0
/* 8147B238 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 8147B23C | 38 00 00 00 */	li r0, 0x0
/* 8147B240 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8147B244 | 38 00 00 00 */	li r0, 0x0
/* 8147B248 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8147B24C | 88 1D 00 02 */	lbz r0, 0x2(r29)
/* 8147B250 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B254 | 40 82 04 98 */	bne .L_8147B6EC
/* 8147B258 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147B25C | 28 00 00 09 */	cmplwi r0, 0x9
/* 8147B260 | 40 82 00 B0 */	bne .L_8147B310
/* 8147B264 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147B268 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B26C | 41 82 00 A4 */	beq .L_8147B310
/* 8147B270 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147B274 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8147B278 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147B27C | 54 00 08 3C */	slwi r0, r0, 1
/* 8147B280 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 8147B284 | 28 00 EF F8 */	cmplwi r0, 0xeff8
/* 8147B288 | 40 82 00 20 */	bne .L_8147B2A8
/* 8147B28C | 7F E3 FB 78 */	mr r3, r31
/* 8147B290 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 8147B294 | 7F C5 F3 78 */	mr r5, r30
/* 8147B298 | 4B FF F8 39 */	bl Zi8_8147AAD0
/* 8147B29C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147B2A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8147B2A4 | 40 82 00 3C */	bne .L_8147B2E0
.L_8147B2A8:
/* 8147B2A8 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147B2AC | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8147B2B0 | 38 63 FF FF */	subi r3, r3, 0x1
/* 8147B2B4 | 54 63 08 3C */	slwi r3, r3, 1
/* 8147B2B8 | 7C 04 1A 2E */	lhzx r0, r4, r3
/* 8147B2BC | 28 00 EF 04 */	cmplwi r0, 0xef04
/* 8147B2C0 | 40 82 00 50 */	bne .L_8147B310
/* 8147B2C4 | 7F E3 FB 78 */	mr r3, r31
/* 8147B2C8 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 8147B2CC | 7F C5 F3 78 */	mr r5, r30
/* 8147B2D0 | 4B FF FB 31 */	bl Zi8_8147AE00
/* 8147B2D4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147B2D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B2DC | 41 82 00 34 */	beq .L_8147B310
.L_8147B2E0:
/* 8147B2E0 | 8B 9F 00 21 */	lbz r28, 0x21(r31)
/* 8147B2E4 | 88 7D 00 00 */	lbz r3, 0x0(r29)
/* 8147B2E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8147B2EC | 41 82 00 0C */	beq .L_8147B2F8
/* 8147B2F0 | 38 60 00 00 */	li r3, 0x0
/* 8147B2F4 | 98 7F 00 21 */	stb r3, 0x21(r31)
.L_8147B2F8:
/* 8147B2F8 | 38 60 00 64 */	li r3, 0x64
/* 8147B2FC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147B300 | 7F C4 F3 78 */	mr r4, r30
/* 8147B304 | 48 00 91 79 */	bl Zi8LogError
/* 8147B308 | 7F 83 E3 78 */	mr r3, r28
/* 8147B30C | 48 00 09 C4 */	b .L_8147BCD0
.L_8147B310:
/* 8147B310 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147B314 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147B318 | 40 82 03 C0 */	bne .L_8147B6D8
/* 8147B31C | A0 9F 00 1E */	lhz r4, 0x1e(r31)
/* 8147B320 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147B324 | 40 82 03 B4 */	bne .L_8147B6D8
/* 8147B328 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147B32C | 2C 03 00 11 */	cmpwi r3, 0x11
/* 8147B330 | 41 82 01 94 */	beq .L_8147B4C4
/* 8147B334 | 40 80 00 1C */	bge .L_8147B350
/* 8147B338 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8147B33C | 41 82 00 34 */	beq .L_8147B370
/* 8147B340 | 41 80 01 84 */	blt .L_8147B4C4
/* 8147B344 | 2C 03 00 10 */	cmpwi r3, 0x10
/* 8147B348 | 40 80 03 A4 */	bge .L_8147B6EC
/* 8147B34C | 48 00 01 78 */	b .L_8147B4C4
.L_8147B350:
/* 8147B350 | 2C 03 00 77 */	cmpwi r3, 0x77
/* 8147B354 | 40 80 00 10 */	bge .L_8147B364
/* 8147B358 | 2C 03 00 13 */	cmpwi r3, 0x13
/* 8147B35C | 40 80 01 68 */	bge .L_8147B4C4
/* 8147B360 | 48 00 03 8C */	b .L_8147B6EC
.L_8147B364:
/* 8147B364 | 2C 03 00 7E */	cmpwi r3, 0x7e
/* 8147B368 | 40 80 01 5C */	bge .L_8147B4C4
/* 8147B36C | 48 00 03 80 */	b .L_8147B6EC
.L_8147B370:
/* 8147B370 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147B374 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B378 | 41 82 00 18 */	beq .L_8147B390
/* 8147B37C | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 8147B380 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147B384 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147B388 | 7C 03 00 40 */	cmplw r3, r0
/* 8147B38C | 40 82 03 60 */	bne .L_8147B6EC
.L_8147B390:
/* 8147B390 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147B394 | 28 00 00 09 */	cmplwi r0, 0x9
/* 8147B398 | 41 81 00 FC */	bgt .L_8147B494
/* 8147B39C | 3C 60 81 67 */	lis r3, jumptable_8166B288@ha
/* 8147B3A0 | 38 63 B2 88 */	addi r3, r3, jumptable_8166B288@l
/* 8147B3A4 | 54 00 10 3A */	slwi r0, r0, 2
/* 8147B3A8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8147B3AC | 7C 69 03 A6 */	mtctr r3
/* 8147B3B0 | 4E 80 04 20 */	bctr
.L_8147B3B4:
/* 8147B3B4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B3B8 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B3BC | 28 00 EF 04 */	cmplwi r0, 0xef04
/* 8147B3C0 | 40 82 00 DC */	bne .L_8147B49C
/* 8147B3C4 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147B3C8 | 98 1E 00 01 */	stb r0, 0x1(r30)
/* 8147B3CC | 38 00 00 01 */	li r0, 0x1
/* 8147B3D0 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B3D4 | 48 00 00 C8 */	b .L_8147B49C
.L_8147B3D8:
/* 8147B3D8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B3DC | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B3E0 | 28 00 EF 04 */	cmplwi r0, 0xef04
/* 8147B3E4 | 40 82 00 14 */	bne .L_8147B3F8
/* 8147B3E8 | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 8147B3EC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147B3F0 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B3F4 | 48 00 00 A8 */	b .L_8147B49C
.L_8147B3F8:
/* 8147B3F8 | 38 00 00 00 */	li r0, 0x0
/* 8147B3FC | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B400 | 48 00 00 9C */	b .L_8147B49C
.L_8147B404:
/* 8147B404 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B408 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B40C | 28 00 EF 01 */	cmplwi r0, 0xef01
/* 8147B410 | 40 82 00 14 */	bne .L_8147B424
/* 8147B414 | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 8147B418 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147B41C | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B420 | 48 00 00 7C */	b .L_8147B49C
.L_8147B424:
/* 8147B424 | 38 00 00 00 */	li r0, 0x0
/* 8147B428 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B42C | 48 00 00 70 */	b .L_8147B49C
.L_8147B430:
/* 8147B430 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B434 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B438 | 28 00 EF 04 */	cmplwi r0, 0xef04
/* 8147B43C | 40 82 00 58 */	bne .L_8147B494
/* 8147B440 | 7F E3 FB 78 */	mr r3, r31
/* 8147B444 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 8147B448 | 7F C5 F3 78 */	mr r5, r30
/* 8147B44C | 4B FF F9 B5 */	bl Zi8_8147AE00
/* 8147B450 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147B454 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B458 | 41 82 00 3C */	beq .L_8147B494
/* 8147B45C | 38 00 00 09 */	li r0, 0x9
/* 8147B460 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B464 | 8B 9F 00 21 */	lbz r28, 0x21(r31)
/* 8147B468 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147B46C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B470 | 41 82 00 0C */	beq .L_8147B47C
/* 8147B474 | 38 00 00 00 */	li r0, 0x0
/* 8147B478 | 98 1F 00 21 */	stb r0, 0x21(r31)
.L_8147B47C:
/* 8147B47C | 38 60 00 64 */	li r3, 0x64
/* 8147B480 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147B484 | 7F C4 F3 78 */	mr r4, r30
/* 8147B488 | 48 00 8F F5 */	bl Zi8LogError
/* 8147B48C | 7F 83 E3 78 */	mr r3, r28
/* 8147B490 | 48 00 08 40 */	b .L_8147BCD0
.L_8147B494:
/* 8147B494 | 38 00 00 00 */	li r0, 0x0
/* 8147B498 | 98 1E 00 00 */	stb r0, 0x0(r30)
.L_8147B49C:
/* 8147B49C | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147B4A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B4A4 | 40 82 02 48 */	bne .L_8147B6EC
/* 8147B4A8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B4AC | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B4B0 | 28 00 EF 04 */	cmplwi r0, 0xef04
/* 8147B4B4 | 40 82 02 38 */	bne .L_8147B6EC
/* 8147B4B8 | 38 00 00 01 */	li r0, 0x1
/* 8147B4BC | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B4C0 | 48 00 02 2C */	b .L_8147B6EC
.L_8147B4C4:
/* 8147B4C4 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147B4C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B4CC | 41 82 00 18 */	beq .L_8147B4E4
/* 8147B4D0 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 8147B4D4 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147B4D8 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147B4DC | 7C 03 00 40 */	cmplw r3, r0
/* 8147B4E0 | 40 82 02 0C */	bne .L_8147B6EC
.L_8147B4E4:
/* 8147B4E4 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147B4E8 | 28 00 00 09 */	cmplwi r0, 0x9
/* 8147B4EC | 41 81 01 BC */	bgt .L_8147B6A8
/* 8147B4F0 | 3C 60 81 67 */	lis r3, jumptable_8166B260@ha
/* 8147B4F4 | 38 63 B2 60 */	addi r3, r3, jumptable_8166B260@l
/* 8147B4F8 | 54 00 10 3A */	slwi r0, r0, 2
/* 8147B4FC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8147B500 | 7C 69 03 A6 */	mtctr r3
/* 8147B504 | 4E 80 04 20 */	bctr
.L_8147B508:
/* 8147B508 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B50C | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B510 | 28 00 EF F2 */	cmplwi r0, 0xeff2
/* 8147B514 | 40 82 01 9C */	bne .L_8147B6B0
/* 8147B518 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147B51C | 98 1E 00 01 */	stb r0, 0x1(r30)
/* 8147B520 | 38 00 00 01 */	li r0, 0x1
/* 8147B524 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B528 | 48 00 01 88 */	b .L_8147B6B0
.L_8147B52C:
/* 8147B52C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B530 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B534 | 28 00 EF F3 */	cmplwi r0, 0xeff3
/* 8147B538 | 40 82 00 10 */	bne .L_8147B548
/* 8147B53C | 38 00 00 02 */	li r0, 0x2
/* 8147B540 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B544 | 48 00 01 6C */	b .L_8147B6B0
.L_8147B548:
/* 8147B548 | 38 00 00 00 */	li r0, 0x0
/* 8147B54C | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B550 | 48 00 01 60 */	b .L_8147B6B0
.L_8147B554:
/* 8147B554 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B558 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B55C | 28 00 EF F5 */	cmplwi r0, 0xeff5
/* 8147B560 | 40 82 00 10 */	bne .L_8147B570
/* 8147B564 | 38 00 00 03 */	li r0, 0x3
/* 8147B568 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B56C | 48 00 01 44 */	b .L_8147B6B0
.L_8147B570:
/* 8147B570 | 38 00 00 00 */	li r0, 0x0
/* 8147B574 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B578 | 48 00 01 38 */	b .L_8147B6B0
.L_8147B57C:
/* 8147B57C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B580 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B584 | 28 00 EF F7 */	cmplwi r0, 0xeff7
/* 8147B588 | 40 82 00 10 */	bne .L_8147B598
/* 8147B58C | 38 00 00 04 */	li r0, 0x4
/* 8147B590 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B594 | 48 00 01 1C */	b .L_8147B6B0
.L_8147B598:
/* 8147B598 | 38 00 00 00 */	li r0, 0x0
/* 8147B59C | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B5A0 | 48 00 01 10 */	b .L_8147B6B0
.L_8147B5A4:
/* 8147B5A4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B5A8 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B5AC | 28 00 EF F8 */	cmplwi r0, 0xeff8
/* 8147B5B0 | 40 82 00 10 */	bne .L_8147B5C0
/* 8147B5B4 | 38 00 00 05 */	li r0, 0x5
/* 8147B5B8 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B5BC | 48 00 00 F4 */	b .L_8147B6B0
.L_8147B5C0:
/* 8147B5C0 | 38 00 00 00 */	li r0, 0x0
/* 8147B5C4 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B5C8 | 48 00 00 E8 */	b .L_8147B6B0
.L_8147B5CC:
/* 8147B5CC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B5D0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B5D4 | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 8147B5D8 | 40 82 00 10 */	bne .L_8147B5E8
/* 8147B5DC | 38 00 00 06 */	li r0, 0x6
/* 8147B5E0 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B5E4 | 48 00 00 CC */	b .L_8147B6B0
.L_8147B5E8:
/* 8147B5E8 | 38 00 00 00 */	li r0, 0x0
/* 8147B5EC | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B5F0 | 48 00 00 C0 */	b .L_8147B6B0
.L_8147B5F4:
/* 8147B5F4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B5F8 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B5FC | 28 00 EF F2 */	cmplwi r0, 0xeff2
/* 8147B600 | 40 82 00 10 */	bne .L_8147B610
/* 8147B604 | 38 00 00 07 */	li r0, 0x7
/* 8147B608 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B60C | 48 00 00 A4 */	b .L_8147B6B0
.L_8147B610:
/* 8147B610 | 38 00 00 00 */	li r0, 0x0
/* 8147B614 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B618 | 48 00 00 98 */	b .L_8147B6B0
.L_8147B61C:
/* 8147B61C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B620 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B624 | 28 00 EF F5 */	cmplwi r0, 0xeff5
/* 8147B628 | 40 82 00 10 */	bne .L_8147B638
/* 8147B62C | 38 00 00 08 */	li r0, 0x8
/* 8147B630 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B634 | 48 00 00 7C */	b .L_8147B6B0
.L_8147B638:
/* 8147B638 | 38 00 00 00 */	li r0, 0x0
/* 8147B63C | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B640 | 48 00 00 70 */	b .L_8147B6B0
.L_8147B644:
/* 8147B644 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B648 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B64C | 28 00 EF F8 */	cmplwi r0, 0xeff8
/* 8147B650 | 40 82 00 58 */	bne .L_8147B6A8
/* 8147B654 | 7F E3 FB 78 */	mr r3, r31
/* 8147B658 | 88 9D 00 00 */	lbz r4, 0x0(r29)
/* 8147B65C | 7F C5 F3 78 */	mr r5, r30
/* 8147B660 | 4B FF F4 71 */	bl Zi8_8147AAD0
/* 8147B664 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147B668 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B66C | 41 82 00 3C */	beq .L_8147B6A8
/* 8147B670 | 38 00 00 09 */	li r0, 0x9
/* 8147B674 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B678 | 8B 9F 00 21 */	lbz r28, 0x21(r31)
/* 8147B67C | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8147B680 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B684 | 41 82 00 0C */	beq .L_8147B690
/* 8147B688 | 38 00 00 00 */	li r0, 0x0
/* 8147B68C | 98 1F 00 21 */	stb r0, 0x21(r31)
.L_8147B690:
/* 8147B690 | 38 60 00 64 */	li r3, 0x64
/* 8147B694 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147B698 | 7F C4 F3 78 */	mr r4, r30
/* 8147B69C | 48 00 8D E1 */	bl Zi8LogError
/* 8147B6A0 | 7F 83 E3 78 */	mr r3, r28
/* 8147B6A4 | 48 00 06 2C */	b .L_8147BCD0
.L_8147B6A8:
/* 8147B6A8 | 38 00 00 00 */	li r0, 0x0
/* 8147B6AC | 98 1E 00 00 */	stb r0, 0x0(r30)
.L_8147B6B0:
/* 8147B6B0 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147B6B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B6B8 | 40 82 00 34 */	bne .L_8147B6EC
/* 8147B6BC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B6C0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B6C4 | 28 00 EF F2 */	cmplwi r0, 0xeff2
/* 8147B6C8 | 40 82 00 24 */	bne .L_8147B6EC
/* 8147B6CC | 38 00 00 01 */	li r0, 0x1
/* 8147B6D0 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8147B6D4 | 48 00 00 18 */	b .L_8147B6EC
.L_8147B6D8:
/* 8147B6D8 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147B6DC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147B6E0 | 40 81 00 0C */	ble .L_8147B6EC
/* 8147B6E4 | 38 00 00 00 */	li r0, 0x0
/* 8147B6E8 | 98 1E 00 00 */	stb r0, 0x0(r30)
.L_8147B6EC:
/* 8147B6EC | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 8147B6F0 | 98 1E 00 18 */	stb r0, 0x18(r30)
/* 8147B6F4 | 38 60 00 01 */	li r3, 0x1
/* 8147B6F8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147B6FC | 7F C4 F3 78 */	mr r4, r30
/* 8147B700 | 4B FE 3D 75 */	bl Zi8GetFormatVersion
/* 8147B704 | 54 60 07 BC */	rlwinm r0, r3, 0, 30, 30
/* 8147B708 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147B70C | 98 1E 00 16 */	stb r0, 0x16(r30)
/* 8147B710 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8147B714 | 90 1D 00 0C */	stw r0, 0xc(r29)
/* 8147B718 | 88 1E 00 0A */	lbz r0, 0xa(r30)
/* 8147B71C | 98 1D 00 01 */	stb r0, 0x1(r29)
/* 8147B720 | 38 00 00 FF */	li r0, 0xff
/* 8147B724 | 98 1E 00 0A */	stb r0, 0xa(r30)
/* 8147B728 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147B72C | 7F C4 F3 78 */	mr r4, r30
/* 8147B730 | 4B FE 39 4D */	bl Zi8LangSupported_8145F07C
/* 8147B734 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147B738 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B73C | 40 82 00 1C */	bne .L_8147B758
/* 8147B740 | 38 60 01 63 */	li r3, 0x163
/* 8147B744 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147B748 | 7F C4 F3 78 */	mr r4, r30
/* 8147B74C | 48 00 8D 31 */	bl Zi8LogError
/* 8147B750 | 38 60 00 00 */	li r3, 0x0
/* 8147B754 | 48 00 05 7C */	b .L_8147BCD0
.L_8147B758:
/* 8147B758 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147B75C | 28 00 00 10 */	cmplwi r0, 0x10
/* 8147B760 | 40 82 00 10 */	bne .L_8147B770
/* 8147B764 | 3B 60 02 C1 */	li r27, 0x2c1
/* 8147B768 | 3B 80 00 00 */	li r28, 0x0
/* 8147B76C | 48 00 04 F0 */	b .L_8147BC5C
.L_8147B770:
/* 8147B770 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147B774 | 28 00 00 12 */	cmplwi r0, 0x12
/* 8147B778 | 40 82 00 50 */	bne .L_8147B7C8
/* 8147B77C | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147B780 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B784 | 41 82 00 14 */	beq .L_8147B798
/* 8147B788 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B78C | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147B790 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 8147B794 | 41 80 00 1C */	blt .L_8147B7B0
.L_8147B798:
/* 8147B798 | 7F E3 FB 78 */	mr r3, r31
/* 8147B79C | 7F A4 EB 78 */	mr r4, r29
/* 8147B7A0 | 7F C5 F3 78 */	mr r5, r30
/* 8147B7A4 | 48 00 82 65 */	bl Zi8GetKOcandidates
/* 8147B7A8 | 7C 7C 1B 78 */	mr r28, r3
/* 8147B7AC | 48 00 04 B0 */	b .L_8147BC5C
.L_8147B7B0:
/* 8147B7B0 | 7F E3 FB 78 */	mr r3, r31
/* 8147B7B4 | 7F A4 EB 78 */	mr r4, r29
/* 8147B7B8 | 7F C5 F3 78 */	mr r5, r30
/* 8147B7BC | 48 00 5D 05 */	bl Zi8GetKoreanCandidates
/* 8147B7C0 | 7C 7C 1B 78 */	mr r28, r3
/* 8147B7C4 | 48 00 04 98 */	b .L_8147BC5C
.L_8147B7C8:
/* 8147B7C8 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147B7CC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147B7D0 | 40 82 00 30 */	bne .L_8147B800
/* 8147B7D4 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8147B7D8 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
/* 8147B7DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B7E0 | 41 82 00 20 */	beq .L_8147B800
/* 8147B7E4 | 7F E3 FB 78 */	mr r3, r31
/* 8147B7E8 | 7F A4 EB 78 */	mr r4, r29
/* 8147B7EC | 7F C5 F3 78 */	mr r5, r30
/* 8147B7F0 | 48 00 46 01 */	bl Zi8Punctuation
/* 8147B7F4 | 7C 7C 1B 78 */	mr r28, r3
/* 8147B7F8 | 3B 60 00 64 */	li r27, 0x64
/* 8147B7FC | 48 00 04 60 */	b .L_8147BC5C
.L_8147B800:
/* 8147B800 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147B804 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147B808 | 40 82 01 40 */	bne .L_8147B948
/* 8147B80C | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147B810 | 70 00 00 BF */	andi. r0, r0, 0xbf
/* 8147B814 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8147B818 | 40 82 01 30 */	bne .L_8147B948
/* 8147B81C | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147B820 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B824 | 41 82 01 24 */	beq .L_8147B948
/* 8147B828 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B82C | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 8147B830 | 7F C4 F3 78 */	mr r4, r30
/* 8147B834 | 48 00 15 41 */	bl Zi8IsCharacter
/* 8147B838 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147B83C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B840 | 41 82 01 08 */	beq .L_8147B948
/* 8147B844 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147B848 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 8147B84C | 38 81 00 20 */	addi r4, r1, 0x20
/* 8147B850 | 38 A0 00 10 */	li r5, 0x10
/* 8147B854 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 8147B858 | 38 C0 00 01 */	li r6, 0x1
/* 8147B85C | 54 C6 06 3E */	clrlwi r6, r6, 24
/* 8147B860 | 7F C7 F3 78 */	mr r7, r30
/* 8147B864 | 4B FF CF 01 */	bl Zi8GetCharInfo
/* 8147B868 | 98 61 00 0A */	stb r3, 0xa(r1)
/* 8147B86C | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 8147B870 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B874 | 40 82 00 20 */	bne .L_8147B894
/* 8147B878 | 38 00 00 00 */	li r0, 0x0
/* 8147B87C | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 8147B880 | 98 1F 00 22 */	stb r0, 0x22(r31)
/* 8147B884 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8147B888 | 3B 80 00 00 */	li r28, 0x0
/* 8147B88C | 3B 60 03 84 */	li r27, 0x384
/* 8147B890 | 48 00 03 CC */	b .L_8147BC5C
.L_8147B894:
/* 8147B894 | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 8147B898 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147B89C | 54 00 08 3C */	slwi r0, r0, 1
/* 8147B8A0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8147B8A4 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8147B8A8 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 8147B8AC | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8147B8B0 | 28 00 F3 31 */	cmplwi r0, 0xf331
/* 8147B8B4 | 41 80 00 2C */	blt .L_8147B8E0
/* 8147B8B8 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8147B8BC | 28 00 F3 35 */	cmplwi r0, 0xf335
/* 8147B8C0 | 41 81 00 20 */	bgt .L_8147B8E0
/* 8147B8C4 | 3C 80 00 01 */	lis r4, 0x1
/* 8147B8C8 | 38 84 F3 60 */	subi r4, r4, 0xca0
/* 8147B8CC | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 8147B8D0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147B8D4 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147B8D8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8147B8DC | 7C 83 03 2E */	sthx r4, r3, r0
.L_8147B8E0:
/* 8147B8E0 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8147B8E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8147B8E8 | 38 01 00 20 */	addi r0, r1, 0x20
/* 8147B8EC | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8147B8F0 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147B8F4 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8147B8F8 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 8147B8FC | 98 1F 00 0C */	stb r0, 0xc(r31)
/* 8147B900 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147B904 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8147B908 | 38 00 00 01 */	li r0, 0x1
/* 8147B90C | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 8147B910 | 7F E3 FB 78 */	mr r3, r31
/* 8147B914 | 7F A4 EB 78 */	mr r4, r29
/* 8147B918 | 7F C5 F3 78 */	mr r5, r30
/* 8147B91C | 4B FF AA 5D */	bl Zi8GetChineseCandidates
/* 8147B920 | 7C 7C 1B 78 */	mr r28, r3
/* 8147B924 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8147B928 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8147B92C | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8147B930 | 98 1F 00 0C */	stb r0, 0xc(r31)
/* 8147B934 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147B938 | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 8147B93C | 38 00 00 01 */	li r0, 0x1
/* 8147B940 | 98 1F 00 22 */	stb r0, 0x22(r31)
/* 8147B944 | 48 00 03 18 */	b .L_8147BC5C
.L_8147B948:
/* 8147B948 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147B94C | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147B950 | 40 82 00 1C */	bne .L_8147B96C
/* 8147B954 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147B958 | 28 00 00 0F */	cmplwi r0, 0xf
/* 8147B95C | 40 82 00 10 */	bne .L_8147B96C
/* 8147B960 | 3B 60 02 D0 */	li r27, 0x2d0
/* 8147B964 | 3B 80 00 00 */	li r28, 0x0
/* 8147B968 | 48 00 02 F4 */	b .L_8147BC5C
.L_8147B96C:
/* 8147B96C | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147B970 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147B974 | 40 82 00 80 */	bne .L_8147B9F4
/* 8147B978 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147B97C | 28 00 00 03 */	cmplwi r0, 0x3
/* 8147B980 | 41 82 00 10 */	beq .L_8147B990
/* 8147B984 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147B988 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8147B98C | 40 82 00 68 */	bne .L_8147B9F4
.L_8147B990:
/* 8147B990 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147B994 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147B998 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B99C | 41 82 00 1C */	beq .L_8147B9B8
/* 8147B9A0 | 7F E3 FB 78 */	mr r3, r31
/* 8147B9A4 | 7F A4 EB 78 */	mr r4, r29
/* 8147B9A8 | 7F C5 F3 78 */	mr r5, r30
/* 8147B9AC | 4B FE 51 91 */	bl Zi8Get1KeyPressSpelling
/* 8147B9B0 | 7C 7C 1B 78 */	mr r28, r3
/* 8147B9B4 | 48 00 02 A8 */	b .L_8147BC5C
.L_8147B9B8:
/* 8147B9B8 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147B9BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147B9C0 | 40 82 00 1C */	bne .L_8147B9DC
/* 8147B9C4 | 7F E3 FB 78 */	mr r3, r31
/* 8147B9C8 | 7F A4 EB 78 */	mr r4, r29
/* 8147B9CC | 7F C5 F3 78 */	mr r5, r30
/* 8147B9D0 | 4B FF A9 A9 */	bl Zi8GetChineseCandidates
/* 8147B9D4 | 7C 7C 1B 78 */	mr r28, r3
/* 8147B9D8 | 48 00 02 84 */	b .L_8147BC5C
.L_8147B9DC:
/* 8147B9DC | 7F E3 FB 78 */	mr r3, r31
/* 8147B9E0 | 7F A4 EB 78 */	mr r4, r29
/* 8147B9E4 | 7F C5 F3 78 */	mr r5, r30
/* 8147B9E8 | 4B FE 6B E5 */	bl Zi8Get1KeyPressCandidates
/* 8147B9EC | 7C 7C 1B 78 */	mr r28, r3
/* 8147B9F0 | 48 00 02 6C */	b .L_8147BC5C
.L_8147B9F4:
/* 8147B9F4 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147B9F8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147B9FC | 40 82 00 64 */	bne .L_8147BA60
/* 8147BA00 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147BA04 | 28 00 00 07 */	cmplwi r0, 0x7
/* 8147BA08 | 41 82 00 28 */	beq .L_8147BA30
/* 8147BA0C | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147BA10 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8147BA14 | 41 82 00 1C */	beq .L_8147BA30
/* 8147BA18 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147BA1C | 28 00 00 0A */	cmplwi r0, 0xa
/* 8147BA20 | 41 82 00 10 */	beq .L_8147BA30
/* 8147BA24 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147BA28 | 28 00 00 09 */	cmplwi r0, 0x9
/* 8147BA2C | 40 82 00 34 */	bne .L_8147BA60
.L_8147BA30:
/* 8147BA30 | 88 1E 00 16 */	lbz r0, 0x16(r30)
/* 8147BA34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BA38 | 41 82 00 1C */	beq .L_8147BA54
/* 8147BA3C | 7F E3 FB 78 */	mr r3, r31
/* 8147BA40 | 7F A4 EB 78 */	mr r4, r29
/* 8147BA44 | 7F C5 F3 78 */	mr r5, r30
/* 8147BA48 | 4B FF A9 31 */	bl Zi8GetChineseCandidates
/* 8147BA4C | 7C 7C 1B 78 */	mr r28, r3
/* 8147BA50 | 48 00 02 0C */	b .L_8147BC5C
.L_8147BA54:
/* 8147BA54 | 3B 60 07 08 */	li r27, 0x708
/* 8147BA58 | 3B 80 00 00 */	li r28, 0x0
/* 8147BA5C | 48 00 02 00 */	b .L_8147BC5C
.L_8147BA60:
/* 8147BA60 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147BA64 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147BA68 | 40 82 00 28 */	bne .L_8147BA90
/* 8147BA6C | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147BA70 | 28 00 00 0B */	cmplwi r0, 0xb
/* 8147BA74 | 41 82 00 10 */	beq .L_8147BA84
/* 8147BA78 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147BA7C | 28 00 00 0E */	cmplwi r0, 0xe
/* 8147BA80 | 40 82 00 10 */	bne .L_8147BA90
.L_8147BA84:
/* 8147BA84 | 3B 60 02 EE */	li r27, 0x2ee
/* 8147BA88 | 3B 80 00 00 */	li r28, 0x0
/* 8147BA8C | 48 00 01 D0 */	b .L_8147BC5C
.L_8147BA90:
/* 8147BA90 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147BA94 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147BA98 | 40 82 01 0C */	bne .L_8147BBA4
/* 8147BA9C | 7F E3 FB 78 */	mr r3, r31
/* 8147BAA0 | 7F A4 EB 78 */	mr r4, r29
/* 8147BAA4 | 7F C5 F3 78 */	mr r5, r30
/* 8147BAA8 | 4B FF A8 D1 */	bl Zi8GetChineseCandidates
/* 8147BAAC | 7C 7C 1B 78 */	mr r28, r3
/* 8147BAB0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8147BAB4 | 40 82 01 A8 */	bne .L_8147BC5C
/* 8147BAB8 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147BABC | 54 00 06 B4 */	rlwinm r0, r0, 0, 26, 26
/* 8147BAC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BAC4 | 40 82 01 98 */	bne .L_8147BC5C
/* 8147BAC8 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147BACC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147BAD0 | 40 82 01 8C */	bne .L_8147BC5C
/* 8147BAD4 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147BAD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BADC | 41 82 01 80 */	beq .L_8147BC5C
/* 8147BAE0 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147BAE4 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8147BAE8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147BAEC | 54 00 08 3C */	slwi r0, r0, 1
/* 8147BAF0 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 8147BAF4 | 28 00 F3 7A */	cmplwi r0, 0xf37a
/* 8147BAF8 | 41 82 00 3C */	beq .L_8147BB34
/* 8147BAFC | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147BB00 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8147BB04 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147BB08 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147BB0C | 7C 04 02 2E */	lhzx r0, r4, r0
/* 8147BB10 | 28 00 F3 63 */	cmplwi r0, 0xf363
/* 8147BB14 | 41 82 00 20 */	beq .L_8147BB34
/* 8147BB18 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147BB1C | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8147BB20 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147BB24 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147BB28 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 8147BB2C | 28 00 F3 73 */	cmplwi r0, 0xf373
/* 8147BB30 | 40 82 01 2C */	bne .L_8147BC5C
.L_8147BB34:
/* 8147BB34 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147BB38 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147BB3C | 54 00 08 3C */	slwi r0, r0, 1
/* 8147BB40 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8147BB44 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 8147BB48 | 3C A0 00 01 */	lis r5, 0x1
/* 8147BB4C | 38 A5 F3 68 */	subi r5, r5, 0xc98
/* 8147BB50 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147BB54 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8147BB58 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147BB5C | 54 00 08 3C */	slwi r0, r0, 1
/* 8147BB60 | 7C A4 03 2E */	sthx r5, r4, r0
/* 8147BB64 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147BB68 | 98 1F 00 0C */	stb r0, 0xc(r31)
/* 8147BB6C | 7F E3 FB 78 */	mr r3, r31
/* 8147BB70 | 7F A4 EB 78 */	mr r4, r29
/* 8147BB74 | 7F C5 F3 78 */	mr r5, r30
/* 8147BB78 | 4B FF A8 01 */	bl Zi8GetChineseCandidates
/* 8147BB7C | 7C 7C 1B 78 */	mr r28, r3
/* 8147BB80 | A0 A1 00 0E */	lhz r5, 0xe(r1)
/* 8147BB84 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147BB88 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8147BB8C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147BB90 | 98 1F 00 0C */	stb r0, 0xc(r31)
/* 8147BB94 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147BB98 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147BB9C | 7C A4 03 2E */	sthx r5, r4, r0
/* 8147BBA0 | 48 00 00 BC */	b .L_8147BC5C
.L_8147BBA4:
/* 8147BBA4 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147BBA8 | 98 1E 05 38 */	stb r0, 0x538(r30)
/* 8147BBAC | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147BBB0 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147BBB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BBB8 | 40 82 00 3C */	bne .L_8147BBF4
/* 8147BBBC | 38 00 00 01 */	li r0, 0x1
/* 8147BBC0 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8147BBC4 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147BBC8 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 8147BBCC | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8147BBD0 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8147BBD4 | 88 9F 00 04 */	lbz r4, 0x4(r31)
/* 8147BBD8 | 60 83 00 81 */	ori r3, r4, 0x81
/* 8147BBDC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147BBE0 | 98 1F 00 04 */	stb r0, 0x4(r31)
/* 8147BBE4 | 38 1E 03 38 */	addi r0, r30, 0x338
/* 8147BBE8 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 8147BBEC | 38 00 01 00 */	li r0, 0x100
/* 8147BBF0 | B0 1D 00 10 */	sth r0, 0x10(r29)
.L_8147BBF4:
/* 8147BBF4 | 88 7F 00 01 */	lbz r3, 0x1(r31)
/* 8147BBF8 | 28 03 00 02 */	cmplwi r3, 0x2
/* 8147BBFC | 40 82 00 4C */	bne .L_8147BC48
/* 8147BC00 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147BC04 | 38 80 00 1F */	li r4, 0x1f
/* 8147BC08 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147BC0C | 7F C5 F3 78 */	mr r5, r30
/* 8147BC10 | 4B FE 38 21 */	bl Zi8GetTableCount
/* 8147BC14 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 8147BC18 | 54 83 05 AC */	rlwinm r3, r4, 0, 22, 22
/* 8147BC1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8147BC20 | 41 82 00 1C */	beq .L_8147BC3C
/* 8147BC24 | 7F E3 FB 78 */	mr r3, r31
/* 8147BC28 | 7F A4 EB 78 */	mr r4, r29
/* 8147BC2C | 7F C5 F3 78 */	mr r5, r30
/* 8147BC30 | 48 00 04 59 */	bl Zi8GetSyllablesCandidates
/* 8147BC34 | 7C 7C 1B 78 */	mr r28, r3
/* 8147BC38 | 48 00 00 24 */	b .L_8147BC5C
.L_8147BC3C:
/* 8147BC3C | 3B 60 04 4C */	li r27, 0x44c
/* 8147BC40 | 3B 80 00 00 */	li r28, 0x0
/* 8147BC44 | 48 00 00 18 */	b .L_8147BC5C
.L_8147BC48:
/* 8147BC48 | 7F E3 FB 78 */	mr r3, r31
/* 8147BC4C | 7F A4 EB 78 */	mr r4, r29
/* 8147BC50 | 7F C5 F3 78 */	mr r5, r30
/* 8147BC54 | 4B FE 9F B9 */	bl Zi8AlphaGetCandidates
/* 8147BC58 | 7C 7C 1B 78 */	mr r28, r3
.L_8147BC5C:
/* 8147BC5C | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 8147BC60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BC64 | 41 82 00 50 */	beq .L_8147BCB4
/* 8147BC68 | 88 61 00 0C */	lbz r3, 0xc(r1)
/* 8147BC6C | 98 7F 00 04 */	stb r3, 0x4(r31)
/* 8147BC70 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 8147BC74 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 8147BC78 | 3B 40 00 00 */	li r26, 0x0
/* 8147BC7C | 48 00 00 28 */	b .L_8147BCA4
.L_8147BC80:
/* 8147BC80 | 57 43 06 3E */	clrlwi r3, r26, 24
/* 8147BC84 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 8147BC88 | 38 03 FF F0 */	subi r0, r3, 0x10
/* 8147BC8C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8147BC90 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8147BC94 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147BC98 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147BC9C | 7C 83 03 2E */	sthx r4, r3, r0
/* 8147BCA0 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_8147BCA4:
/* 8147BCA4 | 57 43 06 3E */	clrlwi r3, r26, 24
/* 8147BCA8 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 8147BCAC | 7C 03 00 40 */	cmplw r3, r0
/* 8147BCB0 | 41 80 FF D0 */	blt .L_8147BC80
.L_8147BCB4:
/* 8147BCB4 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147BCB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BCBC | 41 82 00 10 */	beq .L_8147BCCC
/* 8147BCC0 | 57 63 04 3E */	clrlwi r3, r27, 16
/* 8147BCC4 | 7F C4 F3 78 */	mr r4, r30
/* 8147BCC8 | 48 00 87 B5 */	bl Zi8LogError
.L_8147BCCC:
/* 8147BCCC | 7F 83 E3 78 */	mr r3, r28
.L_8147BCD0:
/* 8147BCD0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8147BCD4 | 48 17 D8 35 */	bl _restgpr_26
/* 8147BCD8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8147BCDC | 7C 08 03 A6 */	mtlr r0
/* 8147BCE0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8147BCE4 | 4E 80 00 20 */	blr
.endfn Zi8GetCandidatesOrCount

# .text:0x17B8 | 0x8147BCE8 | size: 0xC
.fn Zi8InitDupWordBuf, global
/* 8147BCE8 | 38 00 00 00 */	li r0, 0x0
/* 8147BCEC | 98 03 05 39 */	stb r0, 0x539(r3)
/* 8147BCF0 | 4E 80 00 20 */	blr
.endfn Zi8InitDupWordBuf

# .text:0x17C4 | 0x8147BCF4 | size: 0xFC
.fn Zi8IsDupWChar, global
/* 8147BCF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8147BCF8 | 7C 08 02 A6 */	mflr r0
/* 8147BCFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147BD00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8147BD04 | 48 17 D7 BD */	bl _savegpr_27
/* 8147BD08 | 7C 7C 1B 78 */	mr r28, r3
/* 8147BD0C | 7C 9E 23 78 */	mr r30, r4
/* 8147BD10 | 3B 60 00 00 */	li r27, 0x0
/* 8147BD14 | 3B FE 05 7A */	addi r31, r30, 0x57a
/* 8147BD18 | 88 1E 05 39 */	lbz r0, 0x539(r30)
/* 8147BD1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BD20 | 40 82 00 30 */	bne .L_8147BD50
/* 8147BD24 | 38 00 00 02 */	li r0, 0x2
/* 8147BD28 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147BD2C | B3 9F 00 02 */	sth r28, 0x2(r31)
/* 8147BD30 | 38 00 00 01 */	li r0, 0x1
/* 8147BD34 | 98 1E 05 39 */	stb r0, 0x539(r30)
/* 8147BD38 | 38 60 08 FD */	li r3, 0x8fd
/* 8147BD3C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147BD40 | 7F C4 F3 78 */	mr r4, r30
/* 8147BD44 | 48 00 87 39 */	bl Zi8LogError
/* 8147BD48 | 38 60 00 00 */	li r3, 0x0
/* 8147BD4C | 48 00 00 8C */	b .L_8147BDD8
.L_8147BD50:
/* 8147BD50 | 8B BE 05 39 */	lbz r29, 0x539(r30)
/* 8147BD54 | 48 00 00 24 */	b .L_8147BD78
.L_8147BD58:
/* 8147BD58 | 57 83 04 3E */	clrlwi r3, r28, 16
/* 8147BD5C | 57 A0 08 3C */	slwi r0, r29, 1
/* 8147BD60 | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 8147BD64 | 7C 03 00 40 */	cmplw r3, r0
/* 8147BD68 | 40 82 00 0C */	bne .L_8147BD74
/* 8147BD6C | 3B 60 00 01 */	li r27, 0x1
/* 8147BD70 | 48 00 00 10 */	b .L_8147BD80
.L_8147BD74:
/* 8147BD74 | 3B BD FF FF */	subi r29, r29, 0x1
.L_8147BD78:
/* 8147BD78 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8147BD7C | 40 82 FF DC */	bne .L_8147BD58
.L_8147BD80:
/* 8147BD80 | 88 7E 05 39 */	lbz r3, 0x539(r30)
/* 8147BD84 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147BD88 | 98 1E 05 39 */	stb r0, 0x539(r30)
/* 8147BD8C | A0 7F 00 00 */	lhz r3, 0x0(r31)
/* 8147BD90 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147BD94 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147BD98 | 7F 9F 03 2E */	sthx r28, r31, r0
/* 8147BD9C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147BDA0 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147BDA4 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147BDA8 | 28 00 00 64 */	cmplwi r0, 0x64
/* 8147BDAC | 40 81 00 18 */	ble .L_8147BDC4
/* 8147BDB0 | 38 00 00 02 */	li r0, 0x2
/* 8147BDB4 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147BDB8 | B3 9F 00 02 */	sth r28, 0x2(r31)
/* 8147BDBC | 38 00 00 01 */	li r0, 0x1
/* 8147BDC0 | 98 1E 05 39 */	stb r0, 0x539(r30)
.L_8147BDC4:
/* 8147BDC4 | 38 60 00 64 */	li r3, 0x64
/* 8147BDC8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147BDCC | 7F C4 F3 78 */	mr r4, r30
/* 8147BDD0 | 48 00 86 AD */	bl Zi8LogError
/* 8147BDD4 | 7F 63 DB 78 */	mr r3, r27
.L_8147BDD8:
/* 8147BDD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8147BDDC | 48 17 D7 31 */	bl _restgpr_27
/* 8147BDE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147BDE4 | 7C 08 03 A6 */	mtlr r0
/* 8147BDE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8147BDEC | 4E 80 00 20 */	blr
.endfn Zi8IsDupWChar

# .text:0x18C0 | 0x8147BDF0 | size: 0x22C
.fn Zi8IsDupWordW, global
/* 8147BDF0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147BDF4 | 7C 08 02 A6 */	mflr r0
/* 8147BDF8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147BDFC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147BE00 | 48 17 D6 B9 */	bl _savegpr_25
/* 8147BE04 | 7C 7A 1B 78 */	mr r26, r3
/* 8147BE08 | 7C 9B 23 78 */	mr r27, r4
/* 8147BE0C | 7C BF 2B 78 */	mr r31, r5
/* 8147BE10 | 3B 20 00 00 */	li r25, 0x0
/* 8147BE14 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8147BE18 | 41 82 00 10 */	beq .L_8147BE28
/* 8147BE1C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147BE20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BE24 | 40 82 00 1C */	bne .L_8147BE40
.L_8147BE28:
/* 8147BE28 | 38 60 01 2C */	li r3, 0x12c
/* 8147BE2C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147BE30 | 7F E4 FB 78 */	mr r4, r31
/* 8147BE34 | 48 00 86 49 */	bl Zi8LogError
/* 8147BE38 | 38 60 00 00 */	li r3, 0x0
/* 8147BE3C | 48 00 01 C8 */	b .L_8147C004
.L_8147BE40:
/* 8147BE40 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147BE44 | 28 00 00 14 */	cmplwi r0, 0x14
/* 8147BE48 | 40 81 00 18 */	ble .L_8147BE60
/* 8147BE4C | 57 63 06 3E */	clrlwi r3, r27, 24
/* 8147BE50 | 38 03 FF EC */	subi r0, r3, 0x14
/* 8147BE54 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147BE58 | 7F 5A 02 14 */	add r26, r26, r0
/* 8147BE5C | 3B 60 00 14 */	li r27, 0x14
.L_8147BE60:
/* 8147BE60 | 3B C0 00 00 */	li r30, 0x0
/* 8147BE64 | 48 00 00 80 */	b .L_8147BEE4
.L_8147BE68:
/* 8147BE68 | 7C 7F F2 14 */	add r3, r31, r30
/* 8147BE6C | 8B 83 05 3A */	lbz r28, 0x53a(r3)
/* 8147BE70 | 3B A0 00 00 */	li r29, 0x0
/* 8147BE74 | 48 00 00 30 */	b .L_8147BEA4
.L_8147BE78:
/* 8147BE78 | 57 A0 08 3C */	slwi r0, r29, 1
/* 8147BE7C | 7C 1A 02 2E */	lhzx r0, r26, r0
/* 8147BE80 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8147BE84 | 1C 1C 00 2A */	mulli r0, r28, 0x2a
/* 8147BE88 | 7C 7F 02 14 */	add r3, r31, r0
/* 8147BE8C | 57 A0 08 3C */	slwi r0, r29, 1
/* 8147BE90 | 7C 63 02 14 */	add r3, r3, r0
/* 8147BE94 | A0 03 05 7A */	lhz r0, 0x57a(r3)
/* 8147BE98 | 7C 04 00 40 */	cmplw r4, r0
/* 8147BE9C | 40 82 00 14 */	bne .L_8147BEB0
/* 8147BEA0 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8147BEA4:
/* 8147BEA4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147BEA8 | 7C 1D 00 00 */	cmpw r29, r0
/* 8147BEAC | 41 80 FF CC */	blt .L_8147BE78
.L_8147BEB0:
/* 8147BEB0 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147BEB4 | 7C 1D 00 00 */	cmpw r29, r0
/* 8147BEB8 | 41 80 00 28 */	blt .L_8147BEE0
/* 8147BEBC | 1C 1C 00 2A */	mulli r0, r28, 0x2a
/* 8147BEC0 | 7C 7F 02 14 */	add r3, r31, r0
/* 8147BEC4 | 57 A0 08 3C */	slwi r0, r29, 1
/* 8147BEC8 | 7C 63 02 14 */	add r3, r3, r0
/* 8147BECC | A0 03 05 7A */	lhz r0, 0x57a(r3)
/* 8147BED0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BED4 | 40 82 00 0C */	bne .L_8147BEE0
/* 8147BED8 | 3B 20 00 01 */	li r25, 0x1
/* 8147BEDC | 48 00 00 14 */	b .L_8147BEF0
.L_8147BEE0:
/* 8147BEE0 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147BEE4:
/* 8147BEE4 | 88 1F 05 39 */	lbz r0, 0x539(r31)
/* 8147BEE8 | 7C 1E 00 00 */	cmpw r30, r0
/* 8147BEEC | 41 80 FF 7C */	blt .L_8147BE68
.L_8147BEF0:
/* 8147BEF0 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 8147BEF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147BEF8 | 40 82 00 70 */	bne .L_8147BF68
/* 8147BEFC | 88 1F 05 39 */	lbz r0, 0x539(r31)
/* 8147BF00 | 28 00 00 40 */	cmplwi r0, 0x40
/* 8147BF04 | 40 80 00 28 */	bge .L_8147BF2C
/* 8147BF08 | 88 9F 05 39 */	lbz r4, 0x539(r31)
/* 8147BF0C | 88 1F 05 39 */	lbz r0, 0x539(r31)
/* 8147BF10 | 7C 7F 02 14 */	add r3, r31, r0
/* 8147BF14 | 98 83 05 3A */	stb r4, 0x53a(r3)
/* 8147BF18 | 54 9C 06 3E */	clrlwi r28, r4, 24
/* 8147BF1C | 88 7F 05 39 */	lbz r3, 0x539(r31)
/* 8147BF20 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147BF24 | 98 1F 05 39 */	stb r0, 0x539(r31)
/* 8147BF28 | 48 00 00 7C */	b .L_8147BFA4
.L_8147BF2C:
/* 8147BF2C | 8B 9F 05 3A */	lbz r28, 0x53a(r31)
/* 8147BF30 | 3B C0 00 01 */	li r30, 0x1
/* 8147BF34 | 48 00 00 18 */	b .L_8147BF4C
.L_8147BF38:
/* 8147BF38 | 7C 7F F2 14 */	add r3, r31, r30
/* 8147BF3C | 88 03 05 3A */	lbz r0, 0x53a(r3)
/* 8147BF40 | 7C 7E FA 14 */	add r3, r30, r31
/* 8147BF44 | 98 03 05 39 */	stb r0, 0x539(r3)
/* 8147BF48 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147BF4C:
/* 8147BF4C | 88 1F 05 39 */	lbz r0, 0x539(r31)
/* 8147BF50 | 7C 1E 00 00 */	cmpw r30, r0
/* 8147BF54 | 41 80 FF E4 */	blt .L_8147BF38
/* 8147BF58 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 8147BF5C | 7C 7E FA 14 */	add r3, r30, r31
/* 8147BF60 | 98 03 05 39 */	stb r0, 0x539(r3)
/* 8147BF64 | 48 00 00 40 */	b .L_8147BFA4
.L_8147BF68:
/* 8147BF68 | 7C 7F F2 14 */	add r3, r31, r30
/* 8147BF6C | 8B 83 05 3A */	lbz r28, 0x53a(r3)
/* 8147BF70 | 48 00 00 18 */	b .L_8147BF88
.L_8147BF74:
/* 8147BF74 | 7C 7E FA 14 */	add r3, r30, r31
/* 8147BF78 | 88 03 05 3B */	lbz r0, 0x53b(r3)
/* 8147BF7C | 7C 7F F2 14 */	add r3, r31, r30
/* 8147BF80 | 98 03 05 3A */	stb r0, 0x53a(r3)
/* 8147BF84 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147BF88:
/* 8147BF88 | 88 7F 05 39 */	lbz r3, 0x539(r31)
/* 8147BF8C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147BF90 | 7C 1E 00 00 */	cmpw r30, r0
/* 8147BF94 | 41 80 FF E0 */	blt .L_8147BF74
/* 8147BF98 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 8147BF9C | 7C 7F F2 14 */	add r3, r31, r30
/* 8147BFA0 | 98 03 05 3A */	stb r0, 0x53a(r3)
.L_8147BFA4:
/* 8147BFA4 | 3B A0 00 00 */	li r29, 0x0
/* 8147BFA8 | 48 00 00 24 */	b .L_8147BFCC
.L_8147BFAC:
/* 8147BFAC | 57 A0 08 3C */	slwi r0, r29, 1
/* 8147BFB0 | 7C 9A 02 2E */	lhzx r4, r26, r0
/* 8147BFB4 | 1C 1C 00 2A */	mulli r0, r28, 0x2a
/* 8147BFB8 | 7C 7F 02 14 */	add r3, r31, r0
/* 8147BFBC | 57 A0 08 3C */	slwi r0, r29, 1
/* 8147BFC0 | 7C 63 02 14 */	add r3, r3, r0
/* 8147BFC4 | B0 83 05 7A */	sth r4, 0x57a(r3)
/* 8147BFC8 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8147BFCC:
/* 8147BFCC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147BFD0 | 7C 1D 00 00 */	cmpw r29, r0
/* 8147BFD4 | 41 80 FF D8 */	blt .L_8147BFAC
/* 8147BFD8 | 38 80 00 00 */	li r4, 0x0
/* 8147BFDC | 1C 1C 00 2A */	mulli r0, r28, 0x2a
/* 8147BFE0 | 7C 7F 02 14 */	add r3, r31, r0
/* 8147BFE4 | 57 A0 08 3C */	slwi r0, r29, 1
/* 8147BFE8 | 7C 63 02 14 */	add r3, r3, r0
/* 8147BFEC | B0 83 05 7A */	sth r4, 0x57a(r3)
/* 8147BFF0 | 38 60 00 64 */	li r3, 0x64
/* 8147BFF4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147BFF8 | 7F E4 FB 78 */	mr r4, r31
/* 8147BFFC | 48 00 84 81 */	bl Zi8LogError
/* 8147C000 | 7F 23 CB 78 */	mr r3, r25
.L_8147C004:
/* 8147C004 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147C008 | 48 17 D4 FD */	bl _restgpr_25
/* 8147C00C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147C010 | 7C 08 03 A6 */	mtlr r0
/* 8147C014 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147C018 | 4E 80 00 20 */	blr
.endfn Zi8IsDupWordW

# .text:0x1AEC | 0x8147C01C | size: 0x30
.fn Zi8Memset, global
/* 8147C01C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8147C020 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8147C024 | 3B E0 00 00 */	li r31, 0x0
/* 8147C028 | 48 00 00 10 */	b .L_8147C038
.L_8147C02C:
/* 8147C02C | 54 80 06 3E */	clrlwi r0, r4, 24
/* 8147C030 | 7C 03 F9 AE */	stbx r0, r3, r31
/* 8147C034 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8147C038:
/* 8147C038 | 7C 1F 28 00 */	cmpw r31, r5
/* 8147C03C | 41 80 FF F0 */	blt .L_8147C02C
/* 8147C040 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8147C044 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8147C048 | 4E 80 00 20 */	blr
.endfn Zi8Memset

# .text:0x1B1C | 0x8147C04C | size: 0x30
.fn Zi8Memcpy, global
/* 8147C04C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8147C050 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8147C054 | 3B E0 00 00 */	li r31, 0x0
/* 8147C058 | 48 00 00 10 */	b .L_8147C068
.L_8147C05C:
/* 8147C05C | 7C 04 F8 AE */	lbzx r0, r4, r31
/* 8147C060 | 7C 03 F9 AE */	stbx r0, r3, r31
/* 8147C064 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8147C068:
/* 8147C068 | 7C 1F 28 00 */	cmpw r31, r5
/* 8147C06C | 41 80 FF F0 */	blt .L_8147C05C
/* 8147C070 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8147C074 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8147C078 | 4E 80 00 20 */	blr
.endfn Zi8Memcpy

# .text:0x1B4C | 0x8147C07C | size: 0xC
.fn Zi8SetMaxWordLength, global
/* 8147C07C | 98 64 00 0A */	stb r3, 0xa(r4)
/* 8147C080 | 38 60 00 01 */	li r3, 0x1
/* 8147C084 | 4E 80 00 20 */	blr
.endfn Zi8SetMaxWordLength

# .text:0x1B58 | 0x8147C088 | size: 0x73C
.fn Zi8GetSyllablesCandidates, global
/* 8147C088 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8147C08C | 7C 08 02 A6 */	mflr r0
/* 8147C090 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 8147C094 | 39 61 01 30 */	addi r11, r1, 0x130
/* 8147C098 | 48 17 D4 25 */	bl _savegpr_26
/* 8147C09C | 7C 7F 1B 78 */	mr r31, r3
/* 8147C0A0 | 7C 9B 23 78 */	mr r27, r4
/* 8147C0A4 | 7C BA 2B 78 */	mr r26, r5
/* 8147C0A8 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8147C0AC | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8147C0B0 | 38 00 00 00 */	li r0, 0x0
/* 8147C0B4 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 8147C0B8 | 3B 80 00 00 */	li r28, 0x0
/* 8147C0BC | 38 00 00 00 */	li r0, 0x0
/* 8147C0C0 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8147C0C4 | 38 00 00 01 */	li r0, 0x1
/* 8147C0C8 | 98 01 00 14 */	stb r0, 0x14(r1)
/* 8147C0CC | 38 00 00 01 */	li r0, 0x1
/* 8147C0D0 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 8147C0D4 | 38 00 00 00 */	li r0, 0x0
/* 8147C0D8 | 98 01 00 12 */	stb r0, 0x12(r1)
/* 8147C0DC | 38 00 00 00 */	li r0, 0x0
/* 8147C0E0 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 8147C0E4 | 38 00 00 00 */	li r0, 0x0
/* 8147C0E8 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 8147C0EC | 38 00 00 64 */	li r0, 0x64
/* 8147C0F0 | B0 01 00 16 */	sth r0, 0x16(r1)
/* 8147C0F4 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8147C0F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C0FC | 41 82 00 34 */	beq .L_8147C130
/* 8147C100 | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 8147C104 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C108 | 41 82 00 28 */	beq .L_8147C130
/* 8147C10C | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8147C110 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 8147C114 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147C118 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147C11C | 7C 04 02 2E */	lhzx r0, r4, r0
/* 8147C120 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8147C124 | 41 82 00 0C */	beq .L_8147C130
/* 8147C128 | 38 00 00 01 */	li r0, 0x1
/* 8147C12C | 98 01 00 11 */	stb r0, 0x11(r1)
.L_8147C130:
/* 8147C130 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C134 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C138 | 41 82 00 1C */	beq .L_8147C154
/* 8147C13C | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C140 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147C144 | 40 82 00 28 */	bne .L_8147C16C
/* 8147C148 | 88 01 00 11 */	lbz r0, 0x11(r1)
/* 8147C14C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C150 | 40 82 00 1C */	bne .L_8147C16C
.L_8147C154:
/* 8147C154 | 7F E3 FB 78 */	mr r3, r31
/* 8147C158 | 7F 64 DB 78 */	mr r4, r27
/* 8147C15C | 7F 45 D3 78 */	mr r5, r26
/* 8147C160 | 4B FE 9A AD */	bl Zi8AlphaGetCandidates
/* 8147C164 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 8147C168 | 48 00 06 10 */	b .L_8147C778
.L_8147C16C:
/* 8147C16C | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 8147C170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C174 | 40 82 00 14 */	bne .L_8147C188
/* 8147C178 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147C17C | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8147C180 | 2C 00 00 81 */	cmpwi r0, 0x81
/* 8147C184 | 41 82 00 14 */	beq .L_8147C198
.L_8147C188:
/* 8147C188 | 3B A1 00 90 */	addi r29, r1, 0x90
/* 8147C18C | 38 00 00 40 */	li r0, 0x40
/* 8147C190 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 8147C194 | 48 00 00 14 */	b .L_8147C1A8
.L_8147C198:
/* 8147C198 | 83 BF 00 18 */	lwz r29, 0x18(r31)
/* 8147C19C | A0 7B 00 10 */	lhz r3, 0x10(r27)
/* 8147C1A0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147C1A4 | 90 01 00 28 */	stw r0, 0x28(r1)
.L_8147C1A8:
/* 8147C1A8 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8147C1AC | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8147C1B0 | 2C 00 00 80 */	cmpwi r0, 0x80
/* 8147C1B4 | 40 82 00 14 */	bne .L_8147C1C8
/* 8147C1B8 | 83 9F 00 18 */	lwz r28, 0x18(r31)
/* 8147C1BC | A0 7B 00 10 */	lhz r3, 0x10(r27)
/* 8147C1C0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147C1C4 | 90 01 00 28 */	stw r0, 0x28(r1)
.L_8147C1C8:
/* 8147C1C8 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 8147C1CC | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C1D0 | 7C 03 00 00 */	cmpw r3, r0
/* 8147C1D4 | 41 81 00 10 */	bgt .L_8147C1E4
/* 8147C1D8 | 38 00 01 68 */	li r0, 0x168
/* 8147C1DC | B0 01 00 16 */	sth r0, 0x16(r1)
/* 8147C1E0 | 48 00 05 98 */	b .L_8147C778
.L_8147C1E4:
/* 8147C1E4 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147C1E8 | 38 80 00 1F */	li r4, 0x1f
/* 8147C1EC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147C1F0 | 7F 45 D3 78 */	mr r5, r26
/* 8147C1F4 | 4B FE 32 3D */	bl Zi8GetTableCount
/* 8147C1F8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147C1FC | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
/* 8147C200 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C204 | 41 82 00 0C */	beq .L_8147C210
/* 8147C208 | 38 00 00 00 */	li r0, 0x0
/* 8147C20C | 98 01 00 14 */	stb r0, 0x14(r1)
.L_8147C210:
/* 8147C210 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147C214 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147C218 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 8147C21C | 40 82 00 28 */	bne .L_8147C244
/* 8147C220 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C224 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147C228 | 40 81 00 1C */	ble .L_8147C244
/* 8147C22C | 88 01 00 14 */	lbz r0, 0x14(r1)
/* 8147C230 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C234 | 41 82 00 10 */	beq .L_8147C244
/* 8147C238 | 38 00 00 2D */	li r0, 0x2d
/* 8147C23C | B0 01 00 90 */	sth r0, 0x90(r1)
/* 8147C240 | 48 00 00 24 */	b .L_8147C264
.L_8147C244:
/* 8147C244 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147C248 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147C24C | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 8147C250 | 38 A1 00 90 */	addi r5, r1, 0x90
/* 8147C254 | 38 C0 00 01 */	li r6, 0x1
/* 8147C258 | 54 C6 06 3E */	clrlwi r6, r6, 24
/* 8147C25C | 7F 47 D3 78 */	mr r7, r26
/* 8147C260 | 48 00 83 69 */	bl Zi8getKeyLayout
.L_8147C264:
/* 8147C264 | A0 01 00 90 */	lhz r0, 0x90(r1)
/* 8147C268 | B0 1D 00 00 */	sth r0, 0x0(r29)
/* 8147C26C | 93 41 00 08 */	stw r26, 0x8(r1)
/* 8147C270 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147C274 | 88 9F 00 0C */	lbz r4, 0xc(r31)
/* 8147C278 | 88 BF 00 00 */	lbz r5, 0x0(r31)
/* 8147C27C | 7F A6 EB 78 */	mr r6, r29
/* 8147C280 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 8147C284 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 8147C288 | 39 00 00 00 */	li r8, 0x0
/* 8147C28C | 55 08 06 3E */	clrlwi r8, r8, 24
/* 8147C290 | 39 21 00 10 */	addi r9, r1, 0x10
/* 8147C294 | 89 41 00 11 */	lbz r10, 0x11(r1)
/* 8147C298 | 4B FF E1 91 */	bl Zi8SyllablesROMdata
/* 8147C29C | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8147C2A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C2A4 | 41 82 00 10 */	beq .L_8147C2B4
/* 8147C2A8 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8147C2AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147C2B0 | 48 00 00 0C */	b .L_8147C2BC
.L_8147C2B4:
/* 8147C2B4 | 38 00 00 01 */	li r0, 0x1
/* 8147C2B8 | 90 01 00 24 */	stw r0, 0x24(r1)
.L_8147C2BC:
/* 8147C2BC | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 8147C2C0 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C2C4 | 7C 03 00 00 */	cmpw r3, r0
/* 8147C2C8 | 41 82 03 9C */	beq .L_8147C664
/* 8147C2CC | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8147C2D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C2D4 | 41 82 00 14 */	beq .L_8147C2E8
/* 8147C2D8 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 8147C2DC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147C2E0 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8147C2E4 | 48 00 03 80 */	b .L_8147C664
.L_8147C2E8:
/* 8147C2E8 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 8147C2EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C2F0 | 41 82 00 20 */	beq .L_8147C310
/* 8147C2F4 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8147C2F8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8147C2FC | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 8147C300 | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8147C304 | 7C 03 00 00 */	cmpw r3, r0
/* 8147C308 | 40 80 04 70 */	bge .L_8147C778
/* 8147C30C | 48 00 03 58 */	b .L_8147C664
.L_8147C310:
/* 8147C310 | 83 C1 00 24 */	lwz r30, 0x24(r1)
/* 8147C314 | 48 00 00 D4 */	b .L_8147C3E8
.L_8147C318:
/* 8147C318 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147C31C | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C320 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8147C324 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 8147C328 | 40 82 00 2C */	bne .L_8147C354
/* 8147C32C | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C330 | 7C 1E 00 50 */	subf r0, r30, r0
/* 8147C334 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8147C338 | 40 81 00 1C */	ble .L_8147C354
/* 8147C33C | 88 01 00 14 */	lbz r0, 0x14(r1)
/* 8147C340 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C344 | 41 82 00 10 */	beq .L_8147C354
/* 8147C348 | 38 00 00 2D */	li r0, 0x2d
/* 8147C34C | B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8147C350 | 48 00 00 28 */	b .L_8147C378
.L_8147C354:
/* 8147C354 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147C358 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147C35C | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C360 | 7C 84 02 2E */	lhzx r4, r4, r0
/* 8147C364 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 8147C368 | 38 C0 00 01 */	li r6, 0x1
/* 8147C36C | 54 C6 06 3E */	clrlwi r6, r6, 24
/* 8147C370 | 7F 47 D3 78 */	mr r7, r26
/* 8147C374 | 48 00 82 55 */	bl Zi8getKeyLayout
.L_8147C378:
/* 8147C378 | A0 61 00 2C */	lhz r3, 0x2c(r1)
/* 8147C37C | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C380 | 7C 7D 03 2E */	sthx r3, r29, r0
/* 8147C384 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 8147C388 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147C38C | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C390 | 7C 63 02 14 */	add r3, r3, r0
/* 8147C394 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C398 | 7C 1E 00 50 */	subf r0, r30, r0
/* 8147C39C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 8147C3A0 | 88 BF 00 00 */	lbz r5, 0x0(r31)
/* 8147C3A4 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C3A8 | 7C DD 02 14 */	add r6, r29, r0
/* 8147C3AC | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 8147C3B0 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 8147C3B4 | 39 00 00 00 */	li r8, 0x0
/* 8147C3B8 | 55 08 06 3E */	clrlwi r8, r8, 24
/* 8147C3BC | 39 21 00 10 */	addi r9, r1, 0x10
/* 8147C3C0 | 39 40 00 01 */	li r10, 0x1
/* 8147C3C4 | 55 4A 06 3E */	clrlwi r10, r10, 24
/* 8147C3C8 | 4B FF E0 61 */	bl Zi8SyllablesROMdata
/* 8147C3CC | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8147C3D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C3D4 | 40 82 00 0C */	bne .L_8147C3E0
/* 8147C3D8 | 38 00 00 01 */	li r0, 0x1
/* 8147C3DC | 98 01 00 10 */	stb r0, 0x10(r1)
.L_8147C3E0:
/* 8147C3E0 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8147C3E4 | 7F DE 02 14 */	add r30, r30, r0
.L_8147C3E8:
/* 8147C3E8 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C3EC | 7C 1E 00 00 */	cmpw r30, r0
/* 8147C3F0 | 41 80 FF 28 */	blt .L_8147C318
/* 8147C3F4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8147C3F8 | 41 82 00 54 */	beq .L_8147C44C
/* 8147C3FC | 3B C0 00 00 */	li r30, 0x0
/* 8147C400 | 48 00 00 20 */	b .L_8147C420
.L_8147C404:
/* 8147C404 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C408 | 7C 7D 02 2E */	lhzx r3, r29, r0
/* 8147C40C | 88 9F 00 00 */	lbz r4, 0x0(r31)
/* 8147C410 | 7F 45 D3 78 */	mr r5, r26
/* 8147C414 | 4B FE 33 35 */	bl Zi8ConvertWC2UC
/* 8147C418 | 7C 7C F1 AE */	stbx r3, r28, r30
/* 8147C41C | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147C420:
/* 8147C420 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C424 | 7C 1E 00 00 */	cmpw r30, r0
/* 8147C428 | 41 80 FF DC */	blt .L_8147C404
/* 8147C42C | 38 60 00 00 */	li r3, 0x0
/* 8147C430 | 7F C0 F3 78 */	mr r0, r30
/* 8147C434 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147C438 | 7C 7C 01 AE */	stbx r3, r28, r0
/* 8147C43C | 38 00 00 00 */	li r0, 0x0
/* 8147C440 | 7C 1C F1 AE */	stbx r0, r28, r30
/* 8147C444 | 7F 9C F2 14 */	add r28, r28, r30
/* 8147C448 | 48 00 00 2C */	b .L_8147C474
.L_8147C44C:
/* 8147C44C | 38 60 00 00 */	li r3, 0x0
/* 8147C450 | 7F C0 F3 78 */	mr r0, r30
/* 8147C454 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147C458 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147C45C | 7C 7D 03 2E */	sthx r3, r29, r0
/* 8147C460 | 38 60 00 00 */	li r3, 0x0
/* 8147C464 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C468 | 7C 7D 03 2E */	sthx r3, r29, r0
/* 8147C46C | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C470 | 7F BD 02 14 */	add r29, r29, r0
.L_8147C474:
/* 8147C474 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 8147C478 | 7C 1E 00 50 */	subf r0, r30, r0
/* 8147C47C | 90 01 00 28 */	stw r0, 0x28(r1)
/* 8147C480 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8147C484 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8147C488 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 8147C48C | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8147C490 | 7C 03 00 00 */	cmpw r3, r0
/* 8147C494 | 40 80 02 E4 */	bge .L_8147C778
/* 8147C498 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 8147C49C | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C4A0 | 7C 03 00 00 */	cmpw r3, r0
/* 8147C4A4 | 41 81 01 C0 */	bgt .L_8147C664
/* 8147C4A8 | 48 00 02 D0 */	b .L_8147C778
.L_8147C4AC:
/* 8147C4AC | 38 00 00 00 */	li r0, 0x0
/* 8147C4B0 | 98 01 00 12 */	stb r0, 0x12(r1)
/* 8147C4B4 | 48 00 01 68 */	b .L_8147C61C
.L_8147C4B8:
/* 8147C4B8 | 38 00 00 01 */	li r0, 0x1
/* 8147C4BC | 98 01 00 12 */	stb r0, 0x12(r1)
/* 8147C4C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147C4C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8147C4C8 | 40 82 00 0C */	bne .L_8147C4D4
/* 8147C4CC | 38 00 00 00 */	li r0, 0x0
/* 8147C4D0 | 98 01 00 13 */	stb r0, 0x13(r1)
.L_8147C4D4:
/* 8147C4D4 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147C4D8 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 8147C4DC | 41 80 00 10 */	blt .L_8147C4EC
/* 8147C4E0 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147C4E4 | 28 00 F0 10 */	cmplwi r0, 0xf010
/* 8147C4E8 | 40 81 01 70 */	ble .L_8147C658
.L_8147C4EC:
/* 8147C4EC | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8147C4F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C4F4 | 41 82 00 14 */	beq .L_8147C508
/* 8147C4F8 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 8147C4FC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147C500 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8147C504 | 48 00 00 E4 */	b .L_8147C5E8
.L_8147C508:
/* 8147C508 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 8147C50C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C510 | 41 82 00 20 */	beq .L_8147C530
/* 8147C514 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8147C518 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8147C51C | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 8147C520 | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8147C524 | 7C 03 00 00 */	cmpw r3, r0
/* 8147C528 | 40 80 02 50 */	bge .L_8147C778
/* 8147C52C | 48 00 00 BC */	b .L_8147C5E8
.L_8147C530:
/* 8147C530 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8147C534 | 41 82 00 54 */	beq .L_8147C588
/* 8147C538 | 3B C0 00 00 */	li r30, 0x0
/* 8147C53C | 48 00 00 20 */	b .L_8147C55C
.L_8147C540:
/* 8147C540 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C544 | 7C 7D 02 2E */	lhzx r3, r29, r0
/* 8147C548 | 88 9F 00 00 */	lbz r4, 0x0(r31)
/* 8147C54C | 7F 45 D3 78 */	mr r5, r26
/* 8147C550 | 4B FE 31 F9 */	bl Zi8ConvertWC2UC
/* 8147C554 | 7C 7C F1 AE */	stbx r3, r28, r30
/* 8147C558 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147C55C:
/* 8147C55C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147C560 | 7C 1E 00 00 */	cmpw r30, r0
/* 8147C564 | 41 80 FF DC */	blt .L_8147C540
/* 8147C568 | 38 60 00 00 */	li r3, 0x0
/* 8147C56C | 7F C0 F3 78 */	mr r0, r30
/* 8147C570 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147C574 | 7C 7C 01 AE */	stbx r3, r28, r0
/* 8147C578 | 38 00 00 00 */	li r0, 0x0
/* 8147C57C | 7C 1C F1 AE */	stbx r0, r28, r30
/* 8147C580 | 7F 9C F2 14 */	add r28, r28, r30
/* 8147C584 | 48 00 00 30 */	b .L_8147C5B4
.L_8147C588:
/* 8147C588 | 83 C1 00 24 */	lwz r30, 0x24(r1)
/* 8147C58C | 38 60 00 00 */	li r3, 0x0
/* 8147C590 | 7F C0 F3 78 */	mr r0, r30
/* 8147C594 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147C598 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147C59C | 7C 7D 03 2E */	sthx r3, r29, r0
/* 8147C5A0 | 38 60 00 00 */	li r3, 0x0
/* 8147C5A4 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C5A8 | 7C 7D 03 2E */	sthx r3, r29, r0
/* 8147C5AC | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C5B0 | 7F BD 02 14 */	add r29, r29, r0
.L_8147C5B4:
/* 8147C5B4 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 8147C5B8 | 7C 1E 00 50 */	subf r0, r30, r0
/* 8147C5BC | 90 01 00 28 */	stw r0, 0x28(r1)
/* 8147C5C0 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8147C5C4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8147C5C8 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 8147C5CC | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8147C5D0 | 7C 03 00 00 */	cmpw r3, r0
/* 8147C5D4 | 40 80 01 A4 */	bge .L_8147C778
/* 8147C5D8 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 8147C5DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147C5E0 | 7C 03 00 00 */	cmpw r3, r0
/* 8147C5E4 | 40 81 01 94 */	ble .L_8147C778
.L_8147C5E8:
/* 8147C5E8 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 8147C5EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C5F0 | 41 82 00 2C */	beq .L_8147C61C
/* 8147C5F4 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 8147C5F8 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147C5FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C600 | 41 82 01 78 */	beq .L_8147C778
/* 8147C604 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 8147C608 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147C60C | B0 1D 00 00 */	sth r0, 0x0(r29)
/* 8147C610 | 38 03 00 02 */	addi r0, r3, 0x2
/* 8147C614 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8147C618 | 4B FF FE D4 */	b .L_8147C4EC
.L_8147C61C:
/* 8147C61C | 93 41 00 08 */	stw r26, 0x8(r1)
/* 8147C620 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147C624 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147C628 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 8147C62C | 88 BF 00 00 */	lbz r5, 0x0(r31)
/* 8147C630 | 7F A6 EB 78 */	mr r6, r29
/* 8147C634 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 8147C638 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 8147C63C | 89 01 00 12 */	lbz r8, 0x12(r1)
/* 8147C640 | 39 20 00 00 */	li r9, 0x0
/* 8147C644 | 89 41 00 11 */	lbz r10, 0x11(r1)
/* 8147C648 | 4B FF DD E1 */	bl Zi8SyllablesROMdata
/* 8147C64C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147C650 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C654 | 40 82 FE 64 */	bne .L_8147C4B8
.L_8147C658:
/* 8147C658 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 8147C65C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147C660 | 90 01 00 24 */	stw r0, 0x24(r1)
.L_8147C664:
/* 8147C664 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147C668 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8147C66C | 40 80 FE 40 */	bge .L_8147C4AC
/* 8147C670 | 88 01 00 13 */	lbz r0, 0x13(r1)
/* 8147C674 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C678 | 41 82 01 00 */	beq .L_8147C778
/* 8147C67C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8147C680 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8147C684 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 8147C688 | 40 82 00 BC */	bne .L_8147C744
/* 8147C68C | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8147C690 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147C694 | 40 81 00 B0 */	ble .L_8147C744
/* 8147C698 | 88 01 00 14 */	lbz r0, 0x14(r1)
/* 8147C69C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C6A0 | 41 82 00 A4 */	beq .L_8147C744
/* 8147C6A4 | 38 00 00 2D */	li r0, 0x2d
/* 8147C6A8 | B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8147C6AC | 38 00 00 00 */	li r0, 0x0
/* 8147C6B0 | B0 01 00 2E */	sth r0, 0x2e(r1)
/* 8147C6B4 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147C6B8 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147C6BC | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 8147C6C0 | 38 A1 00 2E */	addi r5, r1, 0x2e
/* 8147C6C4 | 38 C0 00 01 */	li r6, 0x1
/* 8147C6C8 | 54 C6 06 3E */	clrlwi r6, r6, 24
/* 8147C6CC | 7F 47 D3 78 */	mr r7, r26
/* 8147C6D0 | 48 00 7E F9 */	bl Zi8getKeyLayout
/* 8147C6D4 | 3B C0 00 01 */	li r30, 0x1
/* 8147C6D8 | 48 00 00 1C */	b .L_8147C6F4
.L_8147C6DC:
/* 8147C6DC | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C6E0 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8147C6E4 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8147C6E8 | 28 00 00 2D */	cmplwi r0, 0x2d
/* 8147C6EC | 41 82 00 40 */	beq .L_8147C72C
/* 8147C6F0 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147C6F4:
/* 8147C6F4 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C6F8 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8147C6FC | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8147C700 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C704 | 40 82 FF D8 */	bne .L_8147C6DC
/* 8147C708 | 48 00 00 24 */	b .L_8147C72C
.L_8147C70C:
/* 8147C70C | 38 1E 00 01 */	addi r0, r30, 0x1
/* 8147C710 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147C714 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8147C718 | 7C 83 02 2E */	lhzx r4, r3, r0
/* 8147C71C | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C720 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8147C724 | 7C 83 03 2E */	sthx r4, r3, r0
/* 8147C728 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147C72C:
/* 8147C72C | 57 C0 08 3C */	slwi r0, r30, 1
/* 8147C730 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8147C734 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8147C738 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C73C | 40 82 FF D0 */	bne .L_8147C70C
/* 8147C740 | 48 00 00 24 */	b .L_8147C764
.L_8147C744:
/* 8147C744 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147C748 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8147C74C | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 8147C750 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 8147C754 | 38 C0 00 01 */	li r6, 0x1
/* 8147C758 | 54 C6 06 3E */	clrlwi r6, r6, 24
/* 8147C75C | 7F 47 D3 78 */	mr r7, r26
/* 8147C760 | 48 00 7E 69 */	bl Zi8getKeyLayout
.L_8147C764:
/* 8147C764 | 38 00 00 01 */	li r0, 0x1
/* 8147C768 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147C76C | 38 01 00 2C */	addi r0, r1, 0x2c
/* 8147C770 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8147C774 | 4B FF FE 74 */	b .L_8147C5E8
.L_8147C778:
/* 8147C778 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 8147C77C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147C780 | 41 82 00 10 */	beq .L_8147C790
/* 8147C784 | 38 00 00 00 */	li r0, 0x0
/* 8147C788 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8147C78C | 48 00 00 10 */	b .L_8147C79C
.L_8147C790:
/* 8147C790 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8147C794 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147C798 | 98 1F 00 21 */	stb r0, 0x21(r31)
.L_8147C79C:
/* 8147C79C | A0 61 00 16 */	lhz r3, 0x16(r1)
/* 8147C7A0 | 7F 44 D3 78 */	mr r4, r26
/* 8147C7A4 | 48 00 7C D9 */	bl Zi8LogError
/* 8147C7A8 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8147C7AC | 39 61 01 30 */	addi r11, r1, 0x130
/* 8147C7B0 | 48 17 CD 59 */	bl _restgpr_26
/* 8147C7B4 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 8147C7B8 | 7C 08 03 A6 */	mtlr r0
/* 8147C7BC | 38 21 01 30 */	addi r1, r1, 0x130
/* 8147C7C0 | 4E 80 00 20 */	blr
.endfn Zi8GetSyllablesCandidates

# 0x81617F10..0x81617F20 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x81617F10 | size: 0x10
.obj lbl_81617F10, global
	.4byte 0x01040302
	.4byte 0x01080706
	.4byte 0x05000000
	.4byte 0x00000000
.endobj lbl_81617F10

# 0x8166B260..0x8166B2B0 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x8166B260 | size: 0x28
.obj jumptable_8166B260, local
	.rel Zi8GetCandidatesOrCount, .L_8147B508
	.rel Zi8GetCandidatesOrCount, .L_8147B52C
	.rel Zi8GetCandidatesOrCount, .L_8147B554
	.rel Zi8GetCandidatesOrCount, .L_8147B57C
	.rel Zi8GetCandidatesOrCount, .L_8147B5A4
	.rel Zi8GetCandidatesOrCount, .L_8147B5CC
	.rel Zi8GetCandidatesOrCount, .L_8147B5F4
	.rel Zi8GetCandidatesOrCount, .L_8147B61C
	.rel Zi8GetCandidatesOrCount, .L_8147B644
	.rel Zi8GetCandidatesOrCount, .L_8147B644
.endobj jumptable_8166B260

# .data:0x28 | 0x8166B288 | size: 0x28
.obj jumptable_8166B288, local
	.rel Zi8GetCandidatesOrCount, .L_8147B3B4
	.rel Zi8GetCandidatesOrCount, .L_8147B404
	.rel Zi8GetCandidatesOrCount, .L_8147B3D8
	.rel Zi8GetCandidatesOrCount, .L_8147B404
	.rel Zi8GetCandidatesOrCount, .L_8147B3D8
	.rel Zi8GetCandidatesOrCount, .L_8147B404
	.rel Zi8GetCandidatesOrCount, .L_8147B3D8
	.rel Zi8GetCandidatesOrCount, .L_8147B404
	.rel Zi8GetCandidatesOrCount, .L_8147B430
	.rel Zi8GetCandidatesOrCount, .L_8147B430
.endobj jumptable_8166B288

# 0x81695010..0x81695018 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695010 | size: 0x8
.obj lbl_81695010, global
	.4byte 0x7E000000
	.4byte 0x00000000
.endobj lbl_81695010

# 0x81695FE8..0x81695FF0 | size: 0x8
.section .sbss2, "a", @nobits
.balign 8

# .sbss2:0x0 | 0x81695FE8 | size: 0x8
.obj Zi8ZYdefaultFuzzyPairs, global
	.skip 0x8
.endobj Zi8ZYdefaultFuzzyPairs
