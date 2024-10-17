.include "macros.inc"
.file "zi8cinfo.c"

# 0x81330540..0x81330590 | size: 0x50
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330540 | size: 0x8
.obj "@etb_81330540", local
.hidden "@etb_81330540"
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
.endobj "@etb_81330540"

# extab:0x8 | 0x81330548 | size: 0x8
.obj "@etb_81330548", local
.hidden "@etb_81330548"
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
.endobj "@etb_81330548"

# extab:0x10 | 0x81330550 | size: 0x8
.obj "@etb_81330550", local
.hidden "@etb_81330550"
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
.endobj "@etb_81330550"

# extab:0x18 | 0x81330558 | size: 0x8
.obj "@etb_81330558", local
.hidden "@etb_81330558"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330558"

# extab:0x20 | 0x81330560 | size: 0x8
.obj "@etb_81330560", local
.hidden "@etb_81330560"
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
.endobj "@etb_81330560"

# extab:0x28 | 0x81330568 | size: 0x8
.obj "@etb_81330568", local
.hidden "@etb_81330568"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330568"

# extab:0x30 | 0x81330570 | size: 0x8
.obj "@etb_81330570", local
.hidden "@etb_81330570"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330570"

# extab:0x38 | 0x81330578 | size: 0x8
.obj "@etb_81330578", local
.hidden "@etb_81330578"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330578"

# extab:0x40 | 0x81330580 | size: 0x8
.obj "@etb_81330580", local
.hidden "@etb_81330580"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r21-r31
 */
	.4byte 0x58080000
	.4byte 0x00000000
.endobj "@etb_81330580"

# extab:0x48 | 0x81330588 | size: 0x8
.obj "@etb_81330588", local
.hidden "@etb_81330588"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r23-r31
 */
	.4byte 0x48080000
	.4byte 0x00000000
.endobj "@etb_81330588"

# 0x81331170..0x813311E8 | size: 0x78
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331170 | size: 0xC
.obj "@eti_81331170", local
.hidden "@eti_81331170"
	.4byte Zi8GetCJInfo
	.4byte 0x00000168
	.4byte "@etb_81330540"
.endobj "@eti_81331170"

# extabindex:0xC | 0x8133117C | size: 0xC
.obj "@eti_8133117C", local
.hidden "@eti_8133117C"
	.4byte Zi8GetPInfo
	.4byte 0x00000CF8
	.4byte "@etb_81330548"
.endobj "@eti_8133117C"

# extabindex:0x18 | 0x81331188 | size: 0xC
.obj "@eti_81331188", local
.hidden "@eti_81331188"
	.4byte Zi8GetZInfo
	.4byte 0x00000BF4
	.4byte "@etb_81330550"
.endobj "@eti_81331188"

# extabindex:0x24 | 0x81331194 | size: 0xC
.obj "@eti_81331194", local
.hidden "@eti_81331194"
	.4byte zi8StrokeCode
	.4byte 0x000000D4
	.4byte "@etb_81330558"
.endobj "@eti_81331194"

# extabindex:0x30 | 0x813311A0 | size: 0xC
.obj "@eti_813311A0", local
.hidden "@eti_813311A0"
	.4byte Zi8GetSInfo
	.4byte 0x00000214
	.4byte "@etb_81330560"
.endobj "@eti_813311A0"

# extabindex:0x3C | 0x813311AC | size: 0xC
.obj "@eti_813311AC", local
.hidden "@eti_813311AC"
	.4byte Zi81KeyPYinfo
	.4byte 0x000001E0
	.4byte "@etb_81330568"
.endobj "@eti_813311AC"

# extabindex:0x48 | 0x813311B8 | size: 0xC
.obj "@eti_813311B8", local
.hidden "@eti_813311B8"
	.4byte Zi81KeyZYinfo
	.4byte 0x00000264
	.4byte "@etb_81330570"
.endobj "@eti_813311B8"

# extabindex:0x54 | 0x813311C4 | size: 0xC
.obj "@eti_813311C4", local
.hidden "@eti_813311C4"
	.4byte Zi8GetCharInfo
	.4byte 0x00000054
	.4byte "@etb_81330578"
.endobj "@eti_813311C4"

# extabindex:0x60 | 0x813311D0 | size: 0xC
.obj "@eti_813311D0", local
.hidden "@eti_813311D0"
	.4byte ZiCharInfo2
	.4byte 0x00000804
	.4byte "@etb_81330580"
.endobj "@eti_813311D0"

# extabindex:0x6C | 0x813311DC | size: 0xC
.obj "@eti_813311DC", local
.hidden "@eti_813311DC"
	.4byte Zi8GetCharInfo2
	.4byte 0x000000EC
	.4byte "@etb_81330588"
.endobj "@eti_813311DC"

# 0x814765E4..0x814790A8 | size: 0x2AC4
.text
.balign 4

# .text:0x0 | 0x814765E4 | size: 0x168
.fn Zi8GetCJInfo, global
/* 814765E4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814765E8 | 7C 08 02 A6 */	mflr r0
/* 814765EC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814765F0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814765F4 | 48 18 2E C1 */	bl _savegpr_24
/* 814765F8 | 7C 7F 1B 78 */	mr r31, r3
/* 814765FC | 7C 9A 23 78 */	mr r26, r4
/* 81476600 | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 81476604 | 7C DC 33 78 */	mr r28, r6
/* 81476608 | 38 60 00 01 */	li r3, 0x1
/* 8147660C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81476610 | 7F 84 E3 78 */	mr r4, r28
/* 81476614 | 4B FE 8E 61 */	bl Zi8GetFormatVersion
/* 81476618 | 54 60 07 BC */	rlwinm r0, r3, 0, 30, 30
/* 8147661C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476620 | 98 1C 00 16 */	stb r0, 0x16(r28)
/* 81476624 | 88 1C 00 16 */	lbz r0, 0x16(r28)
/* 81476628 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147662C | 40 82 00 1C */	bne .L_81476648
/* 81476630 | 38 60 08 FC */	li r3, 0x8fc
/* 81476634 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81476638 | 7F 84 E3 78 */	mr r4, r28
/* 8147663C | 48 00 DE 41 */	bl Zi8LogError
/* 81476640 | 38 60 00 00 */	li r3, 0x0
/* 81476644 | 48 00 00 F0 */	b .L_81476734
.L_81476648:
/* 81476648 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147664C | 28 00 00 06 */	cmplwi r0, 0x6
/* 81476650 | 40 80 00 1C */	bge .L_8147666C
/* 81476654 | 38 60 03 22 */	li r3, 0x322
/* 81476658 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147665C | 7F 84 E3 78 */	mr r4, r28
/* 81476660 | 48 00 DE 1D */	bl Zi8LogError
/* 81476664 | 38 60 00 00 */	li r3, 0x0
/* 81476668 | 48 00 00 CC */	b .L_81476734
.L_8147666C:
/* 8147666C | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81476670 | 54 18 07 7E */	clrlwi r24, r0, 29
/* 81476674 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 81476678 | 54 05 C0 0E */	slwi r5, r0, 24
/* 8147667C | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 81476680 | 54 04 80 1E */	slwi r4, r0, 16
/* 81476684 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 81476688 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147668C | 54 00 40 2E */	slwi r0, r0, 8
/* 81476690 | 7C 60 03 78 */	or r0, r3, r0
/* 81476694 | 7C 80 03 78 */	or r0, r4, r0
/* 81476698 | 7C BB 03 78 */	or r27, r5, r0
/* 8147669C | 7F 7B 1E 70 */	srawi r27, r27, 3
/* 814766A0 | 3B A0 00 00 */	li r29, 0x0
/* 814766A4 | 48 00 00 68 */	b .L_8147670C
.L_814766A8:
/* 814766A8 | 57 79 06 FE */	clrlwi r25, r27, 27
/* 814766AC | 7F 7B 2E 70 */	srawi r27, r27, 5
/* 814766B0 | 3B C0 00 00 */	li r30, 0x0
/* 814766B4 | 48 00 00 1C */	b .L_814766D0
.L_814766B8:
/* 814766B8 | 3C 60 81 61 */	lis r3, zi8CangjieCodes@ha
/* 814766BC | 38 63 7E F0 */	addi r3, r3, zi8CangjieCodes@l
/* 814766C0 | 7C 03 F0 AE */	lbzx r0, r3, r30
/* 814766C4 | 7C 00 C8 00 */	cmpw r0, r25
/* 814766C8 | 41 82 00 10 */	beq .L_814766D8
/* 814766CC | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814766D0:
/* 814766D0 | 2C 1E 00 19 */	cmpwi r30, 0x19
/* 814766D4 | 41 80 FF E4 */	blt .L_814766B8
.L_814766D8:
/* 814766D8 | 2C 1E 00 19 */	cmpwi r30, 0x19
/* 814766DC | 41 80 00 1C */	blt .L_814766F8
/* 814766E0 | 38 60 02 6D */	li r3, 0x26d
/* 814766E4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814766E8 | 7F 84 E3 78 */	mr r4, r28
/* 814766EC | 48 00 DD 91 */	bl Zi8LogError
/* 814766F0 | 38 60 00 00 */	li r3, 0x0
/* 814766F4 | 48 00 00 40 */	b .L_81476734
.L_814766F8:
/* 814766F8 | 38 1E 00 41 */	addi r0, r30, 0x41
/* 814766FC | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81476700 | 57 A0 08 3C */	slwi r0, r29, 1
/* 81476704 | 7C 7A 03 2E */	sthx r3, r26, r0
/* 81476708 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8147670C:
/* 8147670C | 7C 1D C0 00 */	cmpw r29, r24
/* 81476710 | 41 80 FF 98 */	blt .L_814766A8
/* 81476714 | 38 60 00 00 */	li r3, 0x0
/* 81476718 | 57 A0 08 3C */	slwi r0, r29, 1
/* 8147671C | 7C 7A 03 2E */	sthx r3, r26, r0
/* 81476720 | 38 60 00 64 */	li r3, 0x64
/* 81476724 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81476728 | 7F 84 E3 78 */	mr r4, r28
/* 8147672C | 48 00 DD 51 */	bl Zi8LogError
/* 81476730 | 57 A3 06 3E */	clrlwi r3, r29, 24
.L_81476734:
/* 81476734 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81476738 | 48 18 2D C9 */	bl _restgpr_24
/* 8147673C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81476740 | 7C 08 03 A6 */	mtlr r0
/* 81476744 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81476748 | 4E 80 00 20 */	blr
.endfn Zi8GetCJInfo

# .text:0x168 | 0x8147674C | size: 0xCF8
.fn Zi8GetPInfo, global
/* 8147674C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81476750 | 7C 08 02 A6 */	mflr r0
/* 81476754 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81476758 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8147675C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81476760 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81476764 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81476768 | 7C 7C 1B 78 */	mr r28, r3
/* 8147676C | 7C 9F 23 78 */	mr r31, r4
/* 81476770 | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 81476774 | 7C DD 33 78 */	mr r29, r6
/* 81476778 | 3B C0 00 00 */	li r30, 0x0
/* 8147677C | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 81476780 | 28 03 00 08 */	cmplwi r3, 0x8
/* 81476784 | 40 80 00 1C */	bge .L_814767A0
/* 81476788 | 38 60 03 22 */	li r3, 0x322
/* 8147678C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81476790 | 7F A4 EB 78 */	mr r4, r29
/* 81476794 | 48 00 DC E9 */	bl Zi8LogError
/* 81476798 | 38 60 00 00 */	li r3, 0x0
/* 8147679C | 48 00 0C 88 */	b .L_81477424
.L_814767A0:
/* 814767A0 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814767A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814767A8 | 40 82 00 1C */	bne .L_814767C4
/* 814767AC | 38 60 02 76 */	li r3, 0x276
/* 814767B0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814767B4 | 7F A4 EB 78 */	mr r4, r29
/* 814767B8 | 48 00 DC C5 */	bl Zi8LogError
/* 814767BC | 38 60 00 00 */	li r3, 0x0
/* 814767C0 | 48 00 0C 64 */	b .L_81477424
.L_814767C4:
/* 814767C4 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814767C8 | 54 00 BE BE */	extrwi r0, r0, 6, 17
/* 814767CC | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814767D0 | B0 61 00 0E */	sth r3, 0xe(r1)
/* 814767D4 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814767D8 | 54 00 EE BE */	extrwi r0, r0, 6, 23
/* 814767DC | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814767E0 | B0 61 00 0C */	sth r3, 0xc(r1)
/* 814767E4 | 57 80 07 7E */	clrlwi r0, r28, 29
/* 814767E8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814767EC | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814767F0 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814767F4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814767F8 | 41 82 02 C0 */	beq .L_81476AB8
/* 814767FC | A0 81 00 0E */	lhz r4, 0xe(r1)
/* 81476800 | 28 04 00 3F */	cmplwi r4, 0x3f
/* 81476804 | 41 81 02 98 */	bgt .L_81476A9C
/* 81476808 | 3C 60 81 67 */	lis r3, jumptable_8166ACF8@ha
/* 8147680C | 38 63 AC F8 */	addi r3, r3, jumptable_8166ACF8@l
/* 81476810 | 54 84 10 3A */	slwi r4, r4, 2
/* 81476814 | 7C 63 20 2E */	lwzx r3, r3, r4
/* 81476818 | 7C 69 03 A6 */	mtctr r3
/* 8147681C | 4E 80 04 20 */	bctr
.L_81476820:
/* 81476820 | 3C 60 00 01 */	lis r3, 0x1
/* 81476824 | 38 63 F3 62 */	subi r3, r3, 0xc9e
/* 81476828 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147682C | 54 04 08 3C */	slwi r4, r0, 1
/* 81476830 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 81476834 | 48 00 02 80 */	b .L_81476AB4
.L_81476838:
/* 81476838 | 3C 60 00 01 */	lis r3, 0x1
/* 8147683C | 38 63 F3 70 */	subi r3, r3, 0xc90
/* 81476840 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476844 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476848 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 8147684C | 48 00 02 68 */	b .L_81476AB4
.L_81476850:
/* 81476850 | 3C 60 00 01 */	lis r3, 0x1
/* 81476854 | 38 63 F3 64 */	subi r3, r3, 0xc9c
/* 81476858 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147685C | 54 00 08 3C */	slwi r0, r0, 1
/* 81476860 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476864 | 48 00 02 50 */	b .L_81476AB4
.L_81476868:
/* 81476868 | 3C 80 00 01 */	lis r4, 0x1
/* 8147686C | 38 84 F3 74 */	subi r4, r4, 0xc8c
/* 81476870 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476874 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476878 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 8147687C | 48 00 02 38 */	b .L_81476AB4
.L_81476880:
/* 81476880 | 3C 60 00 01 */	lis r3, 0x1
/* 81476884 | 38 63 F3 67 */	subi r3, r3, 0xc99
/* 81476888 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 8147688C | 54 80 08 3C */	slwi r0, r4, 1
/* 81476890 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476894 | 48 00 02 20 */	b .L_81476AB4
.L_81476898:
/* 81476898 | 3C 60 00 01 */	lis r3, 0x1
/* 8147689C | 38 63 F3 6B */	subi r3, r3, 0xc95
/* 814768A0 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 814768A4 | 54 80 08 3C */	slwi r0, r4, 1
/* 814768A8 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814768AC | 48 00 02 08 */	b .L_81476AB4
.L_814768B0:
/* 814768B0 | 3C 60 00 01 */	lis r3, 0x1
/* 814768B4 | 38 63 F3 6A */	subi r3, r3, 0xc96
/* 814768B8 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814768BC | 54 04 08 3C */	slwi r4, r0, 1
/* 814768C0 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 814768C4 | 48 00 01 F0 */	b .L_81476AB4
.L_814768C8:
/* 814768C8 | 3C 60 00 01 */	lis r3, 0x1
/* 814768CC | 38 63 F3 71 */	subi r3, r3, 0xc8f
/* 814768D0 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814768D4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814768D8 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814768DC | 48 00 01 D8 */	b .L_81476AB4
.L_814768E0:
/* 814768E0 | 3C 60 00 01 */	lis r3, 0x1
/* 814768E4 | 38 63 F3 7A */	subi r3, r3, 0xc86
/* 814768E8 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 814768EC | 54 80 08 3C */	slwi r0, r4, 1
/* 814768F0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814768F4 | 48 00 01 C0 */	b .L_81476AB4
.L_814768F8:
/* 814768F8 | 3C 60 00 01 */	lis r3, 0x1
/* 814768FC | 38 63 F3 63 */	subi r3, r3, 0xc9d
/* 81476900 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476904 | 54 04 08 3C */	slwi r4, r0, 1
/* 81476908 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 8147690C | 48 00 01 A8 */	b .L_81476AB4
.L_81476910:
/* 81476910 | 3C 60 00 01 */	lis r3, 0x1
/* 81476914 | 38 63 F3 78 */	subi r3, r3, 0xc88
/* 81476918 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147691C | 54 04 08 3C */	slwi r4, r0, 1
/* 81476920 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 81476924 | 48 00 01 90 */	b .L_81476AB4
.L_81476928:
/* 81476928 | 3C 60 00 01 */	lis r3, 0x1
/* 8147692C | 38 63 F3 6D */	subi r3, r3, 0xc93
/* 81476930 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476934 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476938 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 8147693C | 48 00 01 78 */	b .L_81476AB4
.L_81476940:
/* 81476940 | 3C 60 00 01 */	lis r3, 0x1
/* 81476944 | 38 63 F3 66 */	subi r3, r3, 0xc9a
/* 81476948 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147694C | 54 00 08 3C */	slwi r0, r0, 1
/* 81476950 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476954 | 48 00 01 60 */	b .L_81476AB4
.L_81476958:
/* 81476958 | 3C 80 00 01 */	lis r4, 0x1
/* 8147695C | 38 84 F3 6E */	subi r4, r4, 0xc92
/* 81476960 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476964 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476968 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 8147696C | 48 00 01 48 */	b .L_81476AB4
.L_81476970:
/* 81476970 | 3C 60 00 01 */	lis r3, 0x1
/* 81476974 | 38 63 F3 6C */	subi r3, r3, 0xc94
/* 81476978 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 8147697C | 54 80 08 3C */	slwi r0, r4, 1
/* 81476980 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476984 | 48 00 01 30 */	b .L_81476AB4
.L_81476988:
/* 81476988 | 3C 60 00 01 */	lis r3, 0x1
/* 8147698C | 38 63 F3 68 */	subi r3, r3, 0xc98
/* 81476990 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 81476994 | 54 80 08 3C */	slwi r0, r4, 1
/* 81476998 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 8147699C | 48 00 01 18 */	b .L_81476AB4
.L_814769A0:
/* 814769A0 | 3C 60 00 01 */	lis r3, 0x1
/* 814769A4 | 38 63 F3 73 */	subi r3, r3, 0xc8d
/* 814769A8 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814769AC | 54 04 08 3C */	slwi r4, r0, 1
/* 814769B0 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 814769B4 | 48 00 01 00 */	b .L_81476AB4
.L_814769B8:
/* 814769B8 | 3C 60 00 01 */	lis r3, 0x1
/* 814769BC | 38 63 F3 72 */	subi r3, r3, 0xc8e
/* 814769C0 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814769C4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814769C8 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814769CC | 48 00 00 E8 */	b .L_81476AB4
.L_814769D0:
/* 814769D0 | 3C 60 00 01 */	lis r3, 0x1
/* 814769D4 | 38 63 F3 77 */	subi r3, r3, 0xc89
/* 814769D8 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814769DC | 54 00 08 3C */	slwi r0, r0, 1
/* 814769E0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814769E4 | 48 00 00 D0 */	b .L_81476AB4
.L_814769E8:
/* 814769E8 | 3C 60 00 01 */	lis r3, 0x1
/* 814769EC | 38 63 F3 79 */	subi r3, r3, 0xc87
/* 814769F0 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814769F4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814769F8 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814769FC | 48 00 00 B8 */	b .L_81476AB4
.L_81476A00:
/* 81476A00 | 3C 60 00 01 */	lis r3, 0x1
/* 81476A04 | 38 63 F3 7A */	subi r3, r3, 0xc86
/* 81476A08 | 7F C0 F3 78 */	mr r0, r30
/* 81476A0C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476A10 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476A14 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476A18 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476A1C | 3C 60 00 01 */	lis r3, 0x1
/* 81476A20 | 38 63 F3 68 */	subi r3, r3, 0xc98
/* 81476A24 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476A28 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476A2C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476A30 | 48 00 00 84 */	b .L_81476AB4
.L_81476A34:
/* 81476A34 | 3C 60 00 01 */	lis r3, 0x1
/* 81476A38 | 38 63 F3 63 */	subi r3, r3, 0xc9d
/* 81476A3C | 7F C0 F3 78 */	mr r0, r30
/* 81476A40 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476A44 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476A48 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476A4C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476A50 | 3C 60 00 01 */	lis r3, 0x1
/* 81476A54 | 38 63 F3 68 */	subi r3, r3, 0xc98
/* 81476A58 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476A5C | 54 00 08 3C */	slwi r0, r0, 1
/* 81476A60 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476A64 | 48 00 00 50 */	b .L_81476AB4
.L_81476A68:
/* 81476A68 | 3C 60 00 01 */	lis r3, 0x1
/* 81476A6C | 38 63 F3 73 */	subi r3, r3, 0xc8d
/* 81476A70 | 7F C0 F3 78 */	mr r0, r30
/* 81476A74 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476A78 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476A7C | 54 00 08 3C */	slwi r0, r0, 1
/* 81476A80 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476A84 | 3C 60 00 01 */	lis r3, 0x1
/* 81476A88 | 38 63 F3 68 */	subi r3, r3, 0xc98
/* 81476A8C | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476A90 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476A94 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476A98 | 48 00 00 1C */	b .L_81476AB4
.L_81476A9C:
/* 81476A9C | 38 60 02 77 */	li r3, 0x277
/* 81476AA0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81476AA4 | 7F A4 EB 78 */	mr r4, r29
/* 81476AA8 | 48 00 D9 D5 */	bl Zi8LogError
/* 81476AAC | 38 60 00 00 */	li r3, 0x0
/* 81476AB0 | 48 00 09 74 */	b .L_81477424
.L_81476AB4:
/* 81476AB4 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81476AB8:
/* 81476AB8 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81476ABC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81476AC0 | 41 82 08 74 */	beq .L_81477334
/* 81476AC4 | A0 A1 00 0C */	lhz r5, 0xc(r1)
/* 81476AC8 | 28 05 00 39 */	cmplwi r5, 0x39
/* 81476ACC | 41 81 08 4C */	bgt .L_81477318
/* 81476AD0 | 3C 60 81 67 */	lis r3, jumptable_8166AC10@ha
/* 81476AD4 | 38 83 AC 10 */	addi r4, r3, jumptable_8166AC10@l
/* 81476AD8 | 54 A3 10 3A */	slwi r3, r5, 2
/* 81476ADC | 7C 84 18 2E */	lwzx r4, r4, r3
/* 81476AE0 | 7C 89 03 A6 */	mtctr r4
/* 81476AE4 | 4E 80 04 20 */	bctr
.L_81476AE8:
/* 81476AE8 | 3C 80 00 01 */	lis r4, 0x1
/* 81476AEC | 38 84 F3 69 */	subi r4, r4, 0xc97
/* 81476AF0 | 7F C0 F3 78 */	mr r0, r30
/* 81476AF4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476AF8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476AFC | 54 03 08 3C */	slwi r3, r0, 1
/* 81476B00 | 7C 9F 1B 2E */	sthx r4, r31, r3
/* 81476B04 | 3C 80 00 01 */	lis r4, 0x1
/* 81476B08 | 38 84 F3 61 */	subi r4, r4, 0xc9f
/* 81476B0C | 7F C0 F3 78 */	mr r0, r30
/* 81476B10 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476B14 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81476B18 | 54 60 08 3C */	slwi r0, r3, 1
/* 81476B1C | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476B20 | 3C 80 00 01 */	lis r4, 0x1
/* 81476B24 | 38 84 F3 6F */	subi r4, r4, 0xc91
/* 81476B28 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81476B2C | 54 60 08 3C */	slwi r0, r3, 1
/* 81476B30 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476B34 | 48 00 07 FC */	b .L_81477330
.L_81476B38:
/* 81476B38 | 3C 80 00 01 */	lis r4, 0x1
/* 81476B3C | 38 84 F3 69 */	subi r4, r4, 0xc97
/* 81476B40 | 7F C0 F3 78 */	mr r0, r30
/* 81476B44 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476B48 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81476B4C | 54 60 08 3C */	slwi r0, r3, 1
/* 81476B50 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476B54 | 3C 80 00 01 */	lis r4, 0x1
/* 81476B58 | 38 84 F3 61 */	subi r4, r4, 0xc9f
/* 81476B5C | 7F C3 F3 78 */	mr r3, r30
/* 81476B60 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476B64 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81476B68 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476B6C | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476B70 | 3C 80 00 01 */	lis r4, 0x1
/* 81476B74 | 38 84 F3 6E */	subi r4, r4, 0xc92
/* 81476B78 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81476B7C | 54 60 08 3C */	slwi r0, r3, 1
/* 81476B80 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476B84 | 48 00 07 AC */	b .L_81477330
.L_81476B88:
/* 81476B88 | 3C 80 00 01 */	lis r4, 0x1
/* 81476B8C | 38 84 F3 69 */	subi r4, r4, 0xc97
/* 81476B90 | 7F C0 F3 78 */	mr r0, r30
/* 81476B94 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476B98 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81476B9C | 54 60 08 3C */	slwi r0, r3, 1
/* 81476BA0 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476BA4 | 3C 80 00 01 */	lis r4, 0x1
/* 81476BA8 | 38 84 F3 61 */	subi r4, r4, 0xc9f
/* 81476BAC | 7F C3 F3 78 */	mr r3, r30
/* 81476BB0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476BB4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81476BB8 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476BBC | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476BC0 | 3C 80 00 01 */	lis r4, 0x1
/* 81476BC4 | 38 84 F3 6E */	subi r4, r4, 0xc92
/* 81476BC8 | 7F C3 F3 78 */	mr r3, r30
/* 81476BCC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476BD0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81476BD4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476BD8 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476BDC | 3C 60 00 01 */	lis r3, 0x1
/* 81476BE0 | 38 63 F3 67 */	subi r3, r3, 0xc99
/* 81476BE4 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476BE8 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476BEC | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476BF0 | 48 00 07 40 */	b .L_81477330
.L_81476BF4:
/* 81476BF4 | 3C 60 00 01 */	lis r3, 0x1
/* 81476BF8 | 38 63 F3 69 */	subi r3, r3, 0xc97
/* 81476BFC | 7F C0 F3 78 */	mr r0, r30
/* 81476C00 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476C04 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476C08 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476C0C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476C10 | 3C 60 00 01 */	lis r3, 0x1
/* 81476C14 | 38 63 F3 61 */	subi r3, r3, 0xc9f
/* 81476C18 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476C1C | 54 00 08 3C */	slwi r0, r0, 1
/* 81476C20 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476C24 | 48 00 07 0C */	b .L_81477330
.L_81476C28:
/* 81476C28 | 3C 60 00 01 */	lis r3, 0x1
/* 81476C2C | 38 63 F3 69 */	subi r3, r3, 0xc97
/* 81476C30 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476C34 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476C38 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476C3C | 48 00 06 F4 */	b .L_81477330
.L_81476C40:
/* 81476C40 | 3C 60 00 01 */	lis r3, 0x1
/* 81476C44 | 38 63 F3 69 */	subi r3, r3, 0xc97
/* 81476C48 | 7F C0 F3 78 */	mr r0, r30
/* 81476C4C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476C50 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476C54 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476C58 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476C5C | 3C 60 00 01 */	lis r3, 0x1
/* 81476C60 | 38 63 F3 65 */	subi r3, r3, 0xc9b
/* 81476C64 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476C68 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476C6C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476C70 | 48 00 06 C0 */	b .L_81477330
.L_81476C74:
/* 81476C74 | 3C 80 00 01 */	lis r4, 0x1
/* 81476C78 | 38 84 F3 69 */	subi r4, r4, 0xc97
/* 81476C7C | 7F C3 F3 78 */	mr r3, r30
/* 81476C80 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476C84 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81476C88 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476C8C | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476C90 | 3C 60 00 01 */	lis r3, 0x1
/* 81476C94 | 38 63 F3 75 */	subi r3, r3, 0xc8b
/* 81476C98 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 81476C9C | 54 80 08 3C */	slwi r0, r4, 1
/* 81476CA0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476CA4 | 48 00 06 8C */	b .L_81477330
.L_81476CA8:
/* 81476CA8 | 3C 60 00 01 */	lis r3, 0x1
/* 81476CAC | 38 63 F3 69 */	subi r3, r3, 0xc97
/* 81476CB0 | 7F C0 F3 78 */	mr r0, r30
/* 81476CB4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476CB8 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81476CBC | 54 80 08 3C */	slwi r0, r4, 1
/* 81476CC0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476CC4 | 3C 60 00 01 */	lis r3, 0x1
/* 81476CC8 | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 81476CCC | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476CD0 | 54 04 08 3C */	slwi r4, r0, 1
/* 81476CD4 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 81476CD8 | 48 00 06 58 */	b .L_81477330
.L_81476CDC:
/* 81476CDC | 3C 60 00 01 */	lis r3, 0x1
/* 81476CE0 | 38 63 F3 69 */	subi r3, r3, 0xc97
/* 81476CE4 | 7F C0 F3 78 */	mr r0, r30
/* 81476CE8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476CEC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476CF0 | 54 04 08 3C */	slwi r4, r0, 1
/* 81476CF4 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 81476CF8 | 3C 60 00 01 */	lis r3, 0x1
/* 81476CFC | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 81476D00 | 7F C0 F3 78 */	mr r0, r30
/* 81476D04 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476D08 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476D0C | 54 04 08 3C */	slwi r4, r0, 1
/* 81476D10 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 81476D14 | 3C 60 00 01 */	lis r3, 0x1
/* 81476D18 | 38 63 F3 67 */	subi r3, r3, 0xc99
/* 81476D1C | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476D20 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476D24 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476D28 | 48 00 06 08 */	b .L_81477330
.L_81476D2C:
/* 81476D2C | 3C 60 00 01 */	lis r3, 0x1
/* 81476D30 | 38 63 F3 69 */	subi r3, r3, 0xc97
/* 81476D34 | 7F C0 F3 78 */	mr r0, r30
/* 81476D38 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476D3C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476D40 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476D44 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476D48 | 3C 60 00 01 */	lis r3, 0x1
/* 81476D4C | 38 63 F3 6F */	subi r3, r3, 0xc91
/* 81476D50 | 7F C0 F3 78 */	mr r0, r30
/* 81476D54 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476D58 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476D5C | 54 00 08 3C */	slwi r0, r0, 1
/* 81476D60 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476D64 | 3C 60 00 01 */	lis r3, 0x1
/* 81476D68 | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 81476D6C | 7F C0 F3 78 */	mr r0, r30
/* 81476D70 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476D74 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476D78 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476D7C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476D80 | 3C 60 00 01 */	lis r3, 0x1
/* 81476D84 | 38 63 F3 67 */	subi r3, r3, 0xc99
/* 81476D88 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476D8C | 54 00 08 3C */	slwi r0, r0, 1
/* 81476D90 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476D94 | 48 00 05 9C */	b .L_81477330
.L_81476D98:
/* 81476D98 | 3C 60 00 01 */	lis r3, 0x1
/* 81476D9C | 38 63 F3 75 */	subi r3, r3, 0xc8b
/* 81476DA0 | 7F C0 F3 78 */	mr r0, r30
/* 81476DA4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476DA8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476DAC | 54 00 08 3C */	slwi r0, r0, 1
/* 81476DB0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476DB4 | 3C 60 00 01 */	lis r3, 0x1
/* 81476DB8 | 38 63 F3 61 */	subi r3, r3, 0xc9f
/* 81476DBC | 7F C0 F3 78 */	mr r0, r30
/* 81476DC0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476DC4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476DC8 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476DCC | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476DD0 | 3C 60 00 01 */	lis r3, 0x1
/* 81476DD4 | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 81476DD8 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476DDC | 54 00 08 3C */	slwi r0, r0, 1
/* 81476DE0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476DE4 | 48 00 05 4C */	b .L_81477330
.L_81476DE8:
/* 81476DE8 | 3C 60 00 01 */	lis r3, 0x1
/* 81476DEC | 38 63 F3 75 */	subi r3, r3, 0xc8b
/* 81476DF0 | 7F C0 F3 78 */	mr r0, r30
/* 81476DF4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476DF8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476DFC | 54 00 08 3C */	slwi r0, r0, 1
/* 81476E00 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476E04 | 3C 60 00 01 */	lis r3, 0x1
/* 81476E08 | 38 63 F3 61 */	subi r3, r3, 0xc9f
/* 81476E0C | 7F C0 F3 78 */	mr r0, r30
/* 81476E10 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476E14 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476E18 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476E1C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476E20 | 3C 60 00 01 */	lis r3, 0x1
/* 81476E24 | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 81476E28 | 7F C0 F3 78 */	mr r0, r30
/* 81476E2C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476E30 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476E34 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476E38 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476E3C | 3C 60 00 01 */	lis r3, 0x1
/* 81476E40 | 38 63 F3 67 */	subi r3, r3, 0xc99
/* 81476E44 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476E48 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476E4C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476E50 | 48 00 04 E0 */	b .L_81477330
.L_81476E54:
/* 81476E54 | 3C 60 00 01 */	lis r3, 0x1
/* 81476E58 | 38 63 F3 75 */	subi r3, r3, 0xc8b
/* 81476E5C | 7F C0 F3 78 */	mr r0, r30
/* 81476E60 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476E64 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476E68 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476E6C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476E70 | 3C 60 00 01 */	lis r3, 0x1
/* 81476E74 | 38 63 F3 61 */	subi r3, r3, 0xc9f
/* 81476E78 | 7F C0 F3 78 */	mr r0, r30
/* 81476E7C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476E80 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476E84 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476E88 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476E8C | 3C 60 00 01 */	lis r3, 0x1
/* 81476E90 | 38 63 F3 69 */	subi r3, r3, 0xc97
/* 81476E94 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476E98 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476E9C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476EA0 | 48 00 04 90 */	b .L_81477330
.L_81476EA4:
/* 81476EA4 | 3C 60 00 01 */	lis r3, 0x1
/* 81476EA8 | 38 63 F3 75 */	subi r3, r3, 0xc8b
/* 81476EAC | 7F C0 F3 78 */	mr r0, r30
/* 81476EB0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476EB4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476EB8 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476EBC | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476EC0 | 3C 80 00 01 */	lis r4, 0x1
/* 81476EC4 | 38 84 F3 61 */	subi r4, r4, 0xc9f
/* 81476EC8 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81476ECC | 54 63 08 3C */	slwi r3, r3, 1
/* 81476ED0 | 7C 9F 1B 2E */	sthx r4, r31, r3
/* 81476ED4 | 48 00 04 5C */	b .L_81477330
.L_81476ED8:
/* 81476ED8 | 3C 80 00 01 */	lis r4, 0x1
/* 81476EDC | 38 84 F3 75 */	subi r4, r4, 0xc8b
/* 81476EE0 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81476EE4 | 54 60 08 3C */	slwi r0, r3, 1
/* 81476EE8 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476EEC | 48 00 04 44 */	b .L_81477330
.L_81476EF0:
/* 81476EF0 | 3C 80 00 01 */	lis r4, 0x1
/* 81476EF4 | 38 84 F3 75 */	subi r4, r4, 0xc8b
/* 81476EF8 | 7F C3 F3 78 */	mr r3, r30
/* 81476EFC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476F00 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81476F04 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476F08 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476F0C | 3C 60 00 01 */	lis r3, 0x1
/* 81476F10 | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 81476F14 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476F18 | 54 00 08 3C */	slwi r0, r0, 1
/* 81476F1C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81476F20 | 48 00 04 10 */	b .L_81477330
.L_81476F24:
/* 81476F24 | 3C 80 00 01 */	lis r4, 0x1
/* 81476F28 | 38 84 F3 75 */	subi r4, r4, 0xc8b
/* 81476F2C | 7F C0 F3 78 */	mr r0, r30
/* 81476F30 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476F34 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81476F38 | 54 03 08 3C */	slwi r3, r0, 1
/* 81476F3C | 7C 9F 1B 2E */	sthx r4, r31, r3
/* 81476F40 | 3C 80 00 01 */	lis r4, 0x1
/* 81476F44 | 38 84 F3 69 */	subi r4, r4, 0xc97
/* 81476F48 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81476F4C | 54 03 08 3C */	slwi r3, r0, 1
/* 81476F50 | 7C 9F 1B 2E */	sthx r4, r31, r3
/* 81476F54 | 48 00 03 DC */	b .L_81477330
.L_81476F58:
/* 81476F58 | 3C 80 00 01 */	lis r4, 0x1
/* 81476F5C | 38 84 F3 75 */	subi r4, r4, 0xc8b
/* 81476F60 | 7F C0 F3 78 */	mr r0, r30
/* 81476F64 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476F68 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81476F6C | 54 60 08 3C */	slwi r0, r3, 1
/* 81476F70 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476F74 | 3C 80 00 01 */	lis r4, 0x1
/* 81476F78 | 38 84 F3 6F */	subi r4, r4, 0xc91
/* 81476F7C | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81476F80 | 54 60 08 3C */	slwi r0, r3, 1
/* 81476F84 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476F88 | 48 00 03 A8 */	b .L_81477330
.L_81476F8C:
/* 81476F8C | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81476F90 | 28 00 00 26 */	cmplwi r0, 0x26
/* 81476F94 | 41 82 00 10 */	beq .L_81476FA4
/* 81476F98 | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 81476F9C | 28 03 00 2B */	cmplwi r3, 0x2b
/* 81476FA0 | 40 82 00 38 */	bne .L_81476FD8
.L_81476FA4:
/* 81476FA4 | 3C 80 00 01 */	lis r4, 0x1
/* 81476FA8 | 38 84 F3 76 */	subi r4, r4, 0xc8a
/* 81476FAC | 7F C0 F3 78 */	mr r0, r30
/* 81476FB0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476FB4 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81476FB8 | 54 60 08 3C */	slwi r0, r3, 1
/* 81476FBC | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476FC0 | 3C 80 00 01 */	lis r4, 0x1
/* 81476FC4 | 38 84 F3 65 */	subi r4, r4, 0xc9b
/* 81476FC8 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81476FCC | 54 60 08 3C */	slwi r0, r3, 1
/* 81476FD0 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476FD4 | 48 00 03 5C */	b .L_81477330
.L_81476FD8:
/* 81476FD8 | 3C 80 00 01 */	lis r4, 0x1
/* 81476FDC | 38 84 F3 75 */	subi r4, r4, 0xc8b
/* 81476FE0 | 7F C3 F3 78 */	mr r3, r30
/* 81476FE4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81476FE8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81476FEC | 54 00 08 3C */	slwi r0, r0, 1
/* 81476FF0 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81476FF4 | 3C 60 00 01 */	lis r3, 0x1
/* 81476FF8 | 38 63 F3 65 */	subi r3, r3, 0xc9b
/* 81476FFC | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81477000 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477004 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81477008 | 48 00 03 28 */	b .L_81477330
.L_8147700C:
/* 8147700C | 3C 80 00 01 */	lis r4, 0x1
/* 81477010 | 38 84 F3 61 */	subi r4, r4, 0xc9f
/* 81477014 | 7F C0 F3 78 */	mr r0, r30
/* 81477018 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147701C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477020 | 54 03 08 3C */	slwi r3, r0, 1
/* 81477024 | 7C 9F 1B 2E */	sthx r4, r31, r3
/* 81477028 | 3C 80 00 01 */	lis r4, 0x1
/* 8147702C | 38 84 F3 6E */	subi r4, r4, 0xc92
/* 81477030 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81477034 | 54 03 08 3C */	slwi r3, r0, 1
/* 81477038 | 7C 9F 1B 2E */	sthx r4, r31, r3
/* 8147703C | 48 00 02 F4 */	b .L_81477330
.L_81477040:
/* 81477040 | 3C 80 00 01 */	lis r4, 0x1
/* 81477044 | 38 84 F3 61 */	subi r4, r4, 0xc9f
/* 81477048 | 7F C0 F3 78 */	mr r0, r30
/* 8147704C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81477050 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477054 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477058 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 8147705C | 3C 80 00 01 */	lis r4, 0x1
/* 81477060 | 38 84 F3 6E */	subi r4, r4, 0xc92
/* 81477064 | 7F C3 F3 78 */	mr r3, r30
/* 81477068 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147706C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81477070 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477074 | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81477078 | 3C 60 00 01 */	lis r3, 0x1
/* 8147707C | 38 63 F3 67 */	subi r3, r3, 0xc99
/* 81477080 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81477084 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477088 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 8147708C | 48 00 02 A4 */	b .L_81477330
.L_81477090:
/* 81477090 | 3C 60 00 01 */	lis r3, 0x1
/* 81477094 | 38 63 F3 61 */	subi r3, r3, 0xc9f
/* 81477098 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147709C | 54 00 08 3C */	slwi r0, r0, 1
/* 814770A0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814770A4 | 48 00 02 8C */	b .L_81477330
.L_814770A8:
/* 814770A8 | 3C 60 00 01 */	lis r3, 0x1
/* 814770AC | 38 63 F3 61 */	subi r3, r3, 0xc9f
/* 814770B0 | 7F C0 F3 78 */	mr r0, r30
/* 814770B4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814770B8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814770BC | 54 00 08 3C */	slwi r0, r0, 1
/* 814770C0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814770C4 | 3C 60 00 01 */	lis r3, 0x1
/* 814770C8 | 38 63 F3 69 */	subi r3, r3, 0xc97
/* 814770CC | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814770D0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814770D4 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814770D8 | 48 00 02 58 */	b .L_81477330
.L_814770DC:
/* 814770DC | 3C 60 00 01 */	lis r3, 0x1
/* 814770E0 | 38 63 F3 61 */	subi r3, r3, 0xc9f
/* 814770E4 | 7F C0 F3 78 */	mr r0, r30
/* 814770E8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814770EC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814770F0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814770F4 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814770F8 | 3C 60 00 01 */	lis r3, 0x1
/* 814770FC | 38 63 F3 6F */	subi r3, r3, 0xc91
/* 81477100 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81477104 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477108 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 8147710C | 48 00 02 24 */	b .L_81477330
.L_81477110:
/* 81477110 | 3C 60 00 01 */	lis r3, 0x1
/* 81477114 | 38 63 F3 6F */	subi r3, r3, 0xc91
/* 81477118 | 7F C0 F3 78 */	mr r0, r30
/* 8147711C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81477120 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477124 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477128 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 8147712C | 3C 60 00 01 */	lis r3, 0x1
/* 81477130 | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 81477134 | 7F C0 F3 78 */	mr r0, r30
/* 81477138 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147713C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477140 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477144 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81477148 | 3C A0 00 01 */	lis r5, 0x1
/* 8147714C | 38 A5 F3 67 */	subi r5, r5, 0xc99
/* 81477150 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 81477154 | 54 83 08 3C */	slwi r3, r4, 1
/* 81477158 | 7C BF 1B 2E */	sthx r5, r31, r3
/* 8147715C | 48 00 01 D4 */	b .L_81477330
.L_81477160:
/* 81477160 | 3C 60 00 01 */	lis r3, 0x1
/* 81477164 | 38 63 F3 6F */	subi r3, r3, 0xc91
/* 81477168 | 7F C4 F3 78 */	mr r4, r30
/* 8147716C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81477170 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81477174 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477178 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 8147717C | 3C 60 00 01 */	lis r3, 0x1
/* 81477180 | 38 63 F3 75 */	subi r3, r3, 0xc8b
/* 81477184 | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 81477188 | 54 80 08 3C */	slwi r0, r4, 1
/* 8147718C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81477190 | 48 00 01 A0 */	b .L_81477330
.L_81477194:
/* 81477194 | 3C 60 00 01 */	lis r3, 0x1
/* 81477198 | 38 63 F3 6F */	subi r3, r3, 0xc91
/* 8147719C | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814771A0 | 54 04 08 3C */	slwi r4, r0, 1
/* 814771A4 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 814771A8 | 48 00 01 88 */	b .L_81477330
.L_814771AC:
/* 814771AC | 3C 60 00 01 */	lis r3, 0x1
/* 814771B0 | 38 63 F3 65 */	subi r3, r3, 0xc9b
/* 814771B4 | 7F C0 F3 78 */	mr r0, r30
/* 814771B8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814771BC | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814771C0 | 54 80 08 3C */	slwi r0, r4, 1
/* 814771C4 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814771C8 | 3C 60 00 01 */	lis r3, 0x1
/* 814771CC | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 814771D0 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814771D4 | 54 04 08 3C */	slwi r4, r0, 1
/* 814771D8 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 814771DC | 48 00 01 54 */	b .L_81477330
.L_814771E0:
/* 814771E0 | 3C 60 00 01 */	lis r3, 0x1
/* 814771E4 | 38 63 F3 65 */	subi r3, r3, 0xc9b
/* 814771E8 | 7F C0 F3 78 */	mr r0, r30
/* 814771EC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814771F0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814771F4 | 54 04 08 3C */	slwi r4, r0, 1
/* 814771F8 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 814771FC | 3C 60 00 01 */	lis r3, 0x1
/* 81477200 | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 81477204 | 7F C0 F3 78 */	mr r0, r30
/* 81477208 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147720C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477210 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477214 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81477218 | 3C 60 00 01 */	lis r3, 0x1
/* 8147721C | 38 63 F3 67 */	subi r3, r3, 0xc99
/* 81477220 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81477224 | 54 04 08 3C */	slwi r4, r0, 1
/* 81477228 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 8147722C | 48 00 01 04 */	b .L_81477330
.L_81477230:
/* 81477230 | 3C 60 00 01 */	lis r3, 0x1
/* 81477234 | 38 63 F3 65 */	subi r3, r3, 0xc9b
/* 81477238 | 7F C0 F3 78 */	mr r0, r30
/* 8147723C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81477240 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477244 | 54 04 08 3C */	slwi r4, r0, 1
/* 81477248 | 7C 7F 23 2E */	sthx r3, r31, r4
/* 8147724C | 3C 60 00 01 */	lis r3, 0x1
/* 81477250 | 38 63 F3 72 */	subi r3, r3, 0xc8e
/* 81477254 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81477258 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147725C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81477260 | 48 00 00 D0 */	b .L_81477330
.L_81477264:
/* 81477264 | 3C 60 00 01 */	lis r3, 0x1
/* 81477268 | 38 63 F3 65 */	subi r3, r3, 0xc9b
/* 8147726C | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81477270 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477274 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81477278 | 48 00 00 B8 */	b .L_81477330
.L_8147727C:
/* 8147727C | 3C 60 00 01 */	lis r3, 0x1
/* 81477280 | 38 63 F3 65 */	subi r3, r3, 0xc9b
/* 81477284 | 7F C0 F3 78 */	mr r0, r30
/* 81477288 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147728C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477290 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477294 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81477298 | 3C 60 00 01 */	lis r3, 0x1
/* 8147729C | 38 63 F3 69 */	subi r3, r3, 0xc97
/* 814772A0 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814772A4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814772A8 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814772AC | 48 00 00 84 */	b .L_81477330
.L_814772B0:
/* 814772B0 | 3C 60 00 01 */	lis r3, 0x1
/* 814772B4 | 38 63 F3 76 */	subi r3, r3, 0xc8a
/* 814772B8 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814772BC | 54 00 08 3C */	slwi r0, r0, 1
/* 814772C0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814772C4 | 48 00 00 6C */	b .L_81477330
.L_814772C8:
/* 814772C8 | 3C 60 00 01 */	lis r3, 0x1
/* 814772CC | 38 63 F3 76 */	subi r3, r3, 0xc8a
/* 814772D0 | 7F C0 F3 78 */	mr r0, r30
/* 814772D4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814772D8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814772DC | 54 00 08 3C */	slwi r0, r0, 1
/* 814772E0 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814772E4 | 3C 60 00 01 */	lis r3, 0x1
/* 814772E8 | 38 63 F3 61 */	subi r3, r3, 0xc9f
/* 814772EC | 7F C0 F3 78 */	mr r0, r30
/* 814772F0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814772F4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814772F8 | 54 04 08 3C */	slwi r4, r0, 1
/* 814772FC | 7C 7F 23 2E */	sthx r3, r31, r4
/* 81477300 | 3C 60 00 01 */	lis r3, 0x1
/* 81477304 | 38 63 F3 6E */	subi r3, r3, 0xc92
/* 81477308 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147730C | 54 00 08 3C */	slwi r0, r0, 1
/* 81477310 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81477314 | 48 00 00 1C */	b .L_81477330
.L_81477318:
/* 81477318 | 38 60 02 78 */	li r3, 0x278
/* 8147731C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81477320 | 7F A4 EB 78 */	mr r4, r29
/* 81477324 | 48 00 D1 59 */	bl Zi8LogError
/* 81477328 | 38 60 00 00 */	li r3, 0x0
/* 8147732C | 48 00 00 F8 */	b .L_81477424
.L_81477330:
/* 81477330 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81477334:
/* 81477334 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 81477338 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8147733C | 41 82 00 68 */	beq .L_814773A4
/* 81477340 | 40 80 00 14 */	bge .L_81477354
/* 81477344 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81477348 | 41 82 00 1C */	beq .L_81477364
/* 8147734C | 40 80 00 38 */	bge .L_81477384
/* 81477350 | 48 00 00 B0 */	b .L_81477400
.L_81477354:
/* 81477354 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81477358 | 41 82 00 8C */	beq .L_814773E4
/* 8147735C | 40 80 00 A4 */	bge .L_81477400
/* 81477360 | 48 00 00 64 */	b .L_814773C4
.L_81477364:
/* 81477364 | 3C 80 00 01 */	lis r4, 0x1
/* 81477368 | 38 84 F3 31 */	subi r4, r4, 0xccf
/* 8147736C | 7F C0 F3 78 */	mr r0, r30
/* 81477370 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81477374 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477378 | 54 60 08 3C */	slwi r0, r3, 1
/* 8147737C | 7C 9F 03 2E */	sthx r4, r31, r0
/* 81477380 | 48 00 00 80 */	b .L_81477400
.L_81477384:
/* 81477384 | 3C 80 00 01 */	lis r4, 0x1
/* 81477388 | 38 84 F3 32 */	subi r4, r4, 0xcce
/* 8147738C | 7F C0 F3 78 */	mr r0, r30
/* 81477390 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81477394 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477398 | 54 60 08 3C */	slwi r0, r3, 1
/* 8147739C | 7C 9F 03 2E */	sthx r4, r31, r0
/* 814773A0 | 48 00 00 60 */	b .L_81477400
.L_814773A4:
/* 814773A4 | 3C 80 00 01 */	lis r4, 0x1
/* 814773A8 | 38 84 F3 33 */	subi r4, r4, 0xccd
/* 814773AC | 7F C3 F3 78 */	mr r3, r30
/* 814773B0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814773B4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814773B8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814773BC | 7C 9F 03 2E */	sthx r4, r31, r0
/* 814773C0 | 48 00 00 40 */	b .L_81477400
.L_814773C4:
/* 814773C4 | 3C 80 00 01 */	lis r4, 0x1
/* 814773C8 | 38 84 F3 34 */	subi r4, r4, 0xccc
/* 814773CC | 7F C3 F3 78 */	mr r3, r30
/* 814773D0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814773D4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814773D8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814773DC | 7C 9F 03 2E */	sthx r4, r31, r0
/* 814773E0 | 48 00 00 20 */	b .L_81477400
.L_814773E4:
/* 814773E4 | 3C 80 00 01 */	lis r4, 0x1
/* 814773E8 | 38 84 F3 35 */	subi r4, r4, 0xccb
/* 814773EC | 7F C3 F3 78 */	mr r3, r30
/* 814773F0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814773F4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814773F8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814773FC | 7C 9F 03 2E */	sthx r4, r31, r0
.L_81477400:
/* 81477400 | 38 60 00 00 */	li r3, 0x0
/* 81477404 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81477408 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147740C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81477410 | 38 60 00 64 */	li r3, 0x64
/* 81477414 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81477418 | 7F A4 EB 78 */	mr r4, r29
/* 8147741C | 48 00 D0 61 */	bl Zi8LogError
/* 81477420 | 7F C3 F3 78 */	mr r3, r30
.L_81477424:
/* 81477424 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81477428 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8147742C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81477430 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81477434 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81477438 | 7C 08 03 A6 */	mtlr r0
/* 8147743C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81477440 | 4E 80 00 20 */	blr
.endfn Zi8GetPInfo

# .text:0xE60 | 0x81477444 | size: 0xBF4
.fn Zi8GetZInfo, global
/* 81477444 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81477448 | 7C 08 02 A6 */	mflr r0
/* 8147744C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81477450 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81477454 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81477458 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8147745C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81477460 | 7C 7C 1B 78 */	mr r28, r3
/* 81477464 | 7C 9E 23 78 */	mr r30, r4
/* 81477468 | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 8147746C | 7C DD 33 78 */	mr r29, r6
/* 81477470 | 3B E0 00 00 */	li r31, 0x0
/* 81477474 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 81477478 | 28 03 00 05 */	cmplwi r3, 0x5
/* 8147747C | 40 80 00 1C */	bge .L_81477498
/* 81477480 | 38 60 03 22 */	li r3, 0x322
/* 81477484 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81477488 | 7F A4 EB 78 */	mr r4, r29
/* 8147748C | 48 00 CF F1 */	bl Zi8LogError
/* 81477490 | 38 60 00 00 */	li r3, 0x0
/* 81477494 | 48 00 0B 84 */	b .L_81478018
.L_81477498:
/* 81477498 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 8147749C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814774A0 | 40 82 00 1C */	bne .L_814774BC
/* 814774A4 | 38 60 02 80 */	li r3, 0x280
/* 814774A8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814774AC | 7F A4 EB 78 */	mr r4, r29
/* 814774B0 | 48 00 CF CD */	bl Zi8LogError
/* 814774B4 | 38 60 00 00 */	li r3, 0x0
/* 814774B8 | 48 00 0B 60 */	b .L_81478018
.L_814774BC:
/* 814774BC | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814774C0 | 54 00 BE BE */	extrwi r0, r0, 6, 17
/* 814774C4 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814774C8 | B0 61 00 0E */	sth r3, 0xe(r1)
/* 814774CC | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814774D0 | 54 00 EE BE */	extrwi r0, r0, 6, 23
/* 814774D4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814774D8 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 814774DC | 57 84 07 7E */	clrlwi r4, r28, 29
/* 814774E0 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 814774E4 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814774E8 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814774EC | 28 00 00 3F */	cmplwi r0, 0x3f
/* 814774F0 | 41 81 02 BC */	bgt .L_814777AC
/* 814774F4 | 3C 80 81 67 */	lis r4, jumptable_8166AEF8@ha
/* 814774F8 | 38 64 AE F8 */	addi r3, r4, jumptable_8166AEF8@l
/* 814774FC | 54 00 10 3A */	slwi r0, r0, 2
/* 81477500 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81477504 | 7C 69 03 A6 */	mtctr r3
/* 81477508 | 4E 80 04 20 */	bctr
.L_8147750C:
/* 8147750C | 3C 60 00 01 */	lis r3, 0x1
/* 81477510 | 38 63 F3 05 */	subi r3, r3, 0xcfb
/* 81477514 | 7F E0 FB 78 */	mr r0, r31
/* 81477518 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147751C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477520 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477524 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477528 | 48 00 02 9C */	b .L_814777C4
.L_8147752C:
/* 8147752C | 3C 60 00 01 */	lis r3, 0x1
/* 81477530 | 38 63 F3 14 */	subi r3, r3, 0xcec
/* 81477534 | 7F E0 FB 78 */	mr r0, r31
/* 81477538 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147753C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477540 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477544 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477548 | 48 00 02 7C */	b .L_814777C4
.L_8147754C:
/* 8147754C | 3C 60 00 01 */	lis r3, 0x1
/* 81477550 | 38 63 F3 18 */	subi r3, r3, 0xce8
/* 81477554 | 7F E0 FB 78 */	mr r0, r31
/* 81477558 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147755C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477560 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477564 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477568 | 48 00 02 5C */	b .L_814777C4
.L_8147756C:
/* 8147756C | 3C 60 00 01 */	lis r3, 0x1
/* 81477570 | 38 63 F3 09 */	subi r3, r3, 0xcf7
/* 81477574 | 7F E0 FB 78 */	mr r0, r31
/* 81477578 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147757C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477580 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477584 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477588 | 48 00 02 3C */	b .L_814777C4
.L_8147758C:
/* 8147758C | 3C 60 00 01 */	lis r3, 0x1
/* 81477590 | 38 63 F3 08 */	subi r3, r3, 0xcf8
/* 81477594 | 7F E0 FB 78 */	mr r0, r31
/* 81477598 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147759C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814775A0 | 54 80 08 3C */	slwi r0, r4, 1
/* 814775A4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814775A8 | 48 00 02 1C */	b .L_814777C4
.L_814775AC:
/* 814775AC | 3C 60 00 01 */	lis r3, 0x1
/* 814775B0 | 38 63 F3 0D */	subi r3, r3, 0xcf3
/* 814775B4 | 7F E0 FB 78 */	mr r0, r31
/* 814775B8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814775BC | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814775C0 | 54 80 08 3C */	slwi r0, r4, 1
/* 814775C4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814775C8 | 48 00 01 FC */	b .L_814777C4
.L_814775CC:
/* 814775CC | 3C 60 00 01 */	lis r3, 0x1
/* 814775D0 | 38 63 F3 0F */	subi r3, r3, 0xcf1
/* 814775D4 | 7F E0 FB 78 */	mr r0, r31
/* 814775D8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814775DC | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814775E0 | 54 80 08 3C */	slwi r0, r4, 1
/* 814775E4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814775E8 | 48 00 01 DC */	b .L_814777C4
.L_814775EC:
/* 814775EC | 3C 60 00 01 */	lis r3, 0x1
/* 814775F0 | 38 63 F3 10 */	subi r3, r3, 0xcf0
/* 814775F4 | 7F E0 FB 78 */	mr r0, r31
/* 814775F8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814775FC | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477600 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477604 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477608 | 48 00 01 BC */	b .L_814777C4
.L_8147760C:
/* 8147760C | 3C 60 00 01 */	lis r3, 0x1
/* 81477610 | 38 63 F3 0E */	subi r3, r3, 0xcf2
/* 81477614 | 7F E0 FB 78 */	mr r0, r31
/* 81477618 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147761C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477620 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477624 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477628 | 48 00 01 9C */	b .L_814777C4
.L_8147762C:
/* 8147762C | 3C 60 00 01 */	lis r3, 0x1
/* 81477630 | 38 63 F3 0C */	subi r3, r3, 0xcf4
/* 81477634 | 7F E0 FB 78 */	mr r0, r31
/* 81477638 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147763C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477640 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477644 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477648 | 48 00 01 7C */	b .L_814777C4
.L_8147764C:
/* 8147764C | 3C 60 00 01 */	lis r3, 0x1
/* 81477650 | 38 63 F3 07 */	subi r3, r3, 0xcf9
/* 81477654 | 7F E0 FB 78 */	mr r0, r31
/* 81477658 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147765C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477660 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477664 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477668 | 48 00 01 5C */	b .L_814777C4
.L_8147766C:
/* 8147766C | 3C 60 00 01 */	lis r3, 0x1
/* 81477670 | 38 63 F3 0B */	subi r3, r3, 0xcf5
/* 81477674 | 7F E0 FB 78 */	mr r0, r31
/* 81477678 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147767C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477680 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477684 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477688 | 48 00 01 3C */	b .L_814777C4
.L_8147768C:
/* 8147768C | 3C 60 00 01 */	lis r3, 0x1
/* 81477690 | 38 63 F3 06 */	subi r3, r3, 0xcfa
/* 81477694 | 7F E0 FB 78 */	mr r0, r31
/* 81477698 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147769C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814776A0 | 54 80 08 3C */	slwi r0, r4, 1
/* 814776A4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814776A8 | 48 00 01 1C */	b .L_814777C4
.L_814776AC:
/* 814776AC | 3C 60 00 01 */	lis r3, 0x1
/* 814776B0 | 38 63 F3 11 */	subi r3, r3, 0xcef
/* 814776B4 | 7F E0 FB 78 */	mr r0, r31
/* 814776B8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814776BC | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814776C0 | 54 80 08 3C */	slwi r0, r4, 1
/* 814776C4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814776C8 | 48 00 00 FC */	b .L_814777C4
.L_814776CC:
/* 814776CC | 3C 60 00 01 */	lis r3, 0x1
/* 814776D0 | 38 63 F3 16 */	subi r3, r3, 0xcea
/* 814776D4 | 7F E0 FB 78 */	mr r0, r31
/* 814776D8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814776DC | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814776E0 | 54 80 08 3C */	slwi r0, r4, 1
/* 814776E4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814776E8 | 48 00 00 DC */	b .L_814777C4
.L_814776EC:
/* 814776EC | 3C 60 00 01 */	lis r3, 0x1
/* 814776F0 | 38 63 F3 15 */	subi r3, r3, 0xceb
/* 814776F4 | 7F E0 FB 78 */	mr r0, r31
/* 814776F8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814776FC | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477700 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477704 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477708 | 48 00 00 BC */	b .L_814777C4
.L_8147770C:
/* 8147770C | 3C 60 00 01 */	lis r3, 0x1
/* 81477710 | 38 63 F3 19 */	subi r3, r3, 0xce7
/* 81477714 | 7F E0 FB 78 */	mr r0, r31
/* 81477718 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147771C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477720 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477724 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477728 | 48 00 00 9C */	b .L_814777C4
.L_8147772C:
/* 8147772C | 3C 60 00 01 */	lis r3, 0x1
/* 81477730 | 38 63 F3 0A */	subi r3, r3, 0xcf6
/* 81477734 | 7F E0 FB 78 */	mr r0, r31
/* 81477738 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147773C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477740 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477744 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477748 | 48 00 00 7C */	b .L_814777C4
.L_8147774C:
/* 8147774C | 3C 60 00 01 */	lis r3, 0x1
/* 81477750 | 38 63 F3 12 */	subi r3, r3, 0xcee
/* 81477754 | 7F E0 FB 78 */	mr r0, r31
/* 81477758 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147775C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477760 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477764 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477768 | 48 00 00 5C */	b .L_814777C4
.L_8147776C:
/* 8147776C | 3C 60 00 01 */	lis r3, 0x1
/* 81477770 | 38 63 F3 13 */	subi r3, r3, 0xced
/* 81477774 | 7F E0 FB 78 */	mr r0, r31
/* 81477778 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147777C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81477780 | 54 80 08 3C */	slwi r0, r4, 1
/* 81477784 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477788 | 48 00 00 3C */	b .L_814777C4
.L_8147778C:
/* 8147778C | 3C 60 00 01 */	lis r3, 0x1
/* 81477790 | 38 63 F3 17 */	subi r3, r3, 0xce9
/* 81477794 | 7F E0 FB 78 */	mr r0, r31
/* 81477798 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147779C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814777A0 | 54 80 08 3C */	slwi r0, r4, 1
/* 814777A4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814777A8 | 48 00 00 1C */	b .L_814777C4
.L_814777AC:
/* 814777AC | 38 60 02 81 */	li r3, 0x281
/* 814777B0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814777B4 | 7F A4 EB 78 */	mr r4, r29
/* 814777B8 | 48 00 CC C5 */	bl Zi8LogError
/* 814777BC | 38 60 00 00 */	li r3, 0x0
/* 814777C0 | 48 00 08 58 */	b .L_81478018
.L_814777C4:
/* 814777C4 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814777C8 | 28 00 00 3F */	cmplwi r0, 0x3f
/* 814777CC | 41 81 07 44 */	bgt .L_81477F10
/* 814777D0 | 3C 60 81 67 */	lis r3, jumptable_8166ADF8@ha
/* 814777D4 | 38 63 AD F8 */	addi r3, r3, jumptable_8166ADF8@l
/* 814777D8 | 54 00 10 3A */	slwi r0, r0, 2
/* 814777DC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814777E0 | 7C 69 03 A6 */	mtctr r3
/* 814777E4 | 4E 80 04 20 */	bctr
.L_814777E8:
/* 814777E8 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814777EC | 28 00 00 0C */	cmplwi r0, 0xc
/* 814777F0 | 41 82 07 38 */	beq .L_81477F28
/* 814777F4 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814777F8 | 28 00 00 26 */	cmplwi r0, 0x26
/* 814777FC | 41 82 07 2C */	beq .L_81477F28
/* 81477800 | 38 60 00 00 */	li r3, 0x0
/* 81477804 | 48 00 08 14 */	b .L_81478018
.L_81477808:
/* 81477808 | 3C 60 00 01 */	lis r3, 0x1
/* 8147780C | 38 63 F3 27 */	subi r3, r3, 0xcd9
/* 81477810 | 7F E0 FB 78 */	mr r0, r31
/* 81477814 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477818 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147781C | 54 00 08 3C */	slwi r0, r0, 1
/* 81477820 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477824 | 3C 60 00 01 */	lis r3, 0x1
/* 81477828 | 38 63 F3 1A */	subi r3, r3, 0xce6
/* 8147782C | 7F E0 FB 78 */	mr r0, r31
/* 81477830 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477834 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477838 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147783C | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477840 | 48 00 06 E8 */	b .L_81477F28
.L_81477844:
/* 81477844 | 3C 80 00 01 */	lis r4, 0x1
/* 81477848 | 38 84 F3 27 */	subi r4, r4, 0xcd9
/* 8147784C | 7F E3 FB 78 */	mr r3, r31
/* 81477850 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477854 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81477858 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147785C | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477860 | 48 00 06 C8 */	b .L_81477F28
.L_81477864:
/* 81477864 | 3C 80 00 01 */	lis r4, 0x1
/* 81477868 | 38 84 F3 27 */	subi r4, r4, 0xcd9
/* 8147786C | 7F E3 FB 78 */	mr r3, r31
/* 81477870 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477874 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81477878 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147787C | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477880 | 3C 80 00 01 */	lis r4, 0x1
/* 81477884 | 38 84 F3 1B */	subi r4, r4, 0xce5
/* 81477888 | 7F E3 FB 78 */	mr r3, r31
/* 8147788C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477890 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81477894 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477898 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 8147789C | 48 00 06 8C */	b .L_81477F28
.L_814778A0:
/* 814778A0 | 3C 80 00 01 */	lis r4, 0x1
/* 814778A4 | 38 84 F3 27 */	subi r4, r4, 0xcd9
/* 814778A8 | 7F E3 FB 78 */	mr r3, r31
/* 814778AC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814778B0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814778B4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814778B8 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 814778BC | 3C 80 00 01 */	lis r4, 0x1
/* 814778C0 | 38 84 F3 20 */	subi r4, r4, 0xce0
/* 814778C4 | 7F E3 FB 78 */	mr r3, r31
/* 814778C8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814778CC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814778D0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814778D4 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 814778D8 | 48 00 06 50 */	b .L_81477F28
.L_814778DC:
/* 814778DC | 3C 80 00 01 */	lis r4, 0x1
/* 814778E0 | 38 84 F3 27 */	subi r4, r4, 0xcd9
/* 814778E4 | 7F E3 FB 78 */	mr r3, r31
/* 814778E8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814778EC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814778F0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814778F4 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 814778F8 | 3C 60 00 01 */	lis r3, 0x1
/* 814778FC | 38 63 F3 1D */	subi r3, r3, 0xce3
/* 81477900 | 7F E0 FB 78 */	mr r0, r31
/* 81477904 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477908 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147790C | 54 00 08 3C */	slwi r0, r0, 1
/* 81477910 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477914 | 48 00 06 14 */	b .L_81477F28
.L_81477918:
/* 81477918 | 3C 60 00 01 */	lis r3, 0x1
/* 8147791C | 38 63 F3 27 */	subi r3, r3, 0xcd9
/* 81477920 | 7F E0 FB 78 */	mr r0, r31
/* 81477924 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477928 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147792C | 54 00 08 3C */	slwi r0, r0, 1
/* 81477930 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477934 | 3C 60 00 01 */	lis r3, 0x1
/* 81477938 | 38 63 F3 21 */	subi r3, r3, 0xcdf
/* 8147793C | 7F E0 FB 78 */	mr r0, r31
/* 81477940 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477944 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477948 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147794C | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477950 | 48 00 05 D8 */	b .L_81477F28
.L_81477954:
/* 81477954 | 3C 60 00 01 */	lis r3, 0x1
/* 81477958 | 38 63 F3 27 */	subi r3, r3, 0xcd9
/* 8147795C | 7F E0 FB 78 */	mr r0, r31
/* 81477960 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477964 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477968 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147796C | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477970 | 3C 60 00 01 */	lis r3, 0x1
/* 81477974 | 38 63 F3 22 */	subi r3, r3, 0xcde
/* 81477978 | 7F E0 FB 78 */	mr r0, r31
/* 8147797C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477980 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477984 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477988 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 8147798C | 48 00 05 9C */	b .L_81477F28
.L_81477990:
/* 81477990 | 3C 60 00 01 */	lis r3, 0x1
/* 81477994 | 38 63 F3 27 */	subi r3, r3, 0xcd9
/* 81477998 | 7F E0 FB 78 */	mr r0, r31
/* 8147799C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814779A0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814779A4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814779A8 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814779AC | 3C 60 00 01 */	lis r3, 0x1
/* 814779B0 | 38 63 F3 23 */	subi r3, r3, 0xcdd
/* 814779B4 | 7F E0 FB 78 */	mr r0, r31
/* 814779B8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814779BC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814779C0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814779C4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814779C8 | 48 00 05 60 */	b .L_81477F28
.L_814779CC:
/* 814779CC | 3C 60 00 01 */	lis r3, 0x1
/* 814779D0 | 38 63 F3 27 */	subi r3, r3, 0xcd9
/* 814779D4 | 7F E0 FB 78 */	mr r0, r31
/* 814779D8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814779DC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814779E0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814779E4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 814779E8 | 3C 60 00 01 */	lis r3, 0x1
/* 814779EC | 38 63 F3 24 */	subi r3, r3, 0xcdc
/* 814779F0 | 7F E0 FB 78 */	mr r0, r31
/* 814779F4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814779F8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814779FC | 54 00 08 3C */	slwi r0, r0, 1
/* 81477A00 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477A04 | 48 00 05 24 */	b .L_81477F28
.L_81477A08:
/* 81477A08 | 3C 60 00 01 */	lis r3, 0x1
/* 81477A0C | 38 63 F3 27 */	subi r3, r3, 0xcd9
/* 81477A10 | 7F E0 FB 78 */	mr r0, r31
/* 81477A14 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477A18 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477A1C | 54 00 08 3C */	slwi r0, r0, 1
/* 81477A20 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477A24 | 3C 60 00 01 */	lis r3, 0x1
/* 81477A28 | 38 63 F3 25 */	subi r3, r3, 0xcdb
/* 81477A2C | 7F E0 FB 78 */	mr r0, r31
/* 81477A30 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477A34 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477A38 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477A3C | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477A40 | 48 00 04 E8 */	b .L_81477F28
.L_81477A44:
/* 81477A44 | 3C 60 00 01 */	lis r3, 0x1
/* 81477A48 | 38 63 F3 29 */	subi r3, r3, 0xcd7
/* 81477A4C | 7F E0 FB 78 */	mr r0, r31
/* 81477A50 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477A54 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477A58 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477A5C | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477A60 | 3C 60 00 01 */	lis r3, 0x1
/* 81477A64 | 38 63 F3 25 */	subi r3, r3, 0xcdb
/* 81477A68 | 7F E0 FB 78 */	mr r0, r31
/* 81477A6C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477A70 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477A74 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477A78 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477A7C | 48 00 04 AC */	b .L_81477F28
.L_81477A80:
/* 81477A80 | 3C 60 00 01 */	lis r3, 0x1
/* 81477A84 | 38 63 F3 29 */	subi r3, r3, 0xcd7
/* 81477A88 | 7F E0 FB 78 */	mr r0, r31
/* 81477A8C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477A90 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477A94 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477A98 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477A9C | 48 00 04 8C */	b .L_81477F28
.L_81477AA0:
/* 81477AA0 | 3C 60 00 01 */	lis r3, 0x1
/* 81477AA4 | 38 63 F3 28 */	subi r3, r3, 0xcd8
/* 81477AA8 | 7F E0 FB 78 */	mr r0, r31
/* 81477AAC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477AB0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477AB4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477AB8 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477ABC | 48 00 04 6C */	b .L_81477F28
.L_81477AC0:
/* 81477AC0 | 3C 60 00 01 */	lis r3, 0x1
/* 81477AC4 | 38 63 F3 29 */	subi r3, r3, 0xcd7
/* 81477AC8 | 7F E0 FB 78 */	mr r0, r31
/* 81477ACC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477AD0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477AD4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477AD8 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477ADC | 3C 60 00 01 */	lis r3, 0x1
/* 81477AE0 | 38 63 F3 1D */	subi r3, r3, 0xce3
/* 81477AE4 | 7F E0 FB 78 */	mr r0, r31
/* 81477AE8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477AEC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477AF0 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477AF4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477AF8 | 48 00 04 30 */	b .L_81477F28
.L_81477AFC:
/* 81477AFC | 3C 60 00 01 */	lis r3, 0x1
/* 81477B00 | 38 63 F3 29 */	subi r3, r3, 0xcd7
/* 81477B04 | 7F E0 FB 78 */	mr r0, r31
/* 81477B08 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477B0C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477B10 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477B14 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477B18 | 3C 60 00 01 */	lis r3, 0x1
/* 81477B1C | 38 63 F3 22 */	subi r3, r3, 0xcde
/* 81477B20 | 7F E0 FB 78 */	mr r0, r31
/* 81477B24 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477B28 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477B2C | 54 00 08 3C */	slwi r0, r0, 1
/* 81477B30 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477B34 | 48 00 03 F4 */	b .L_81477F28
.L_81477B38:
/* 81477B38 | 3C 60 00 01 */	lis r3, 0x1
/* 81477B3C | 38 63 F3 28 */	subi r3, r3, 0xcd8
/* 81477B40 | 7F E0 FB 78 */	mr r0, r31
/* 81477B44 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477B48 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477B4C | 54 00 08 3C */	slwi r0, r0, 1
/* 81477B50 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477B54 | 3C 60 00 01 */	lis r3, 0x1
/* 81477B58 | 38 63 F3 22 */	subi r3, r3, 0xcde
/* 81477B5C | 7F E0 FB 78 */	mr r0, r31
/* 81477B60 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477B64 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477B68 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477B6C | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477B70 | 48 00 03 B8 */	b .L_81477F28
.L_81477B74:
/* 81477B74 | 3C 60 00 01 */	lis r3, 0x1
/* 81477B78 | 38 63 F3 29 */	subi r3, r3, 0xcd7
/* 81477B7C | 7F E0 FB 78 */	mr r0, r31
/* 81477B80 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477B84 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477B88 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477B8C | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477B90 | 3C 60 00 01 */	lis r3, 0x1
/* 81477B94 | 38 63 F3 23 */	subi r3, r3, 0xcdd
/* 81477B98 | 7F E0 FB 78 */	mr r0, r31
/* 81477B9C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477BA0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477BA4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477BA8 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477BAC | 48 00 03 7C */	b .L_81477F28
.L_81477BB0:
/* 81477BB0 | 3C 60 00 01 */	lis r3, 0x1
/* 81477BB4 | 38 63 F3 28 */	subi r3, r3, 0xcd8
/* 81477BB8 | 7F E0 FB 78 */	mr r0, r31
/* 81477BBC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477BC0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477BC4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477BC8 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477BCC | 3C 60 00 01 */	lis r3, 0x1
/* 81477BD0 | 38 63 F3 23 */	subi r3, r3, 0xcdd
/* 81477BD4 | 7F E0 FB 78 */	mr r0, r31
/* 81477BD8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477BDC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477BE0 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477BE4 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477BE8 | 48 00 03 40 */	b .L_81477F28
.L_81477BEC:
/* 81477BEC | 3C 80 00 01 */	lis r4, 0x1
/* 81477BF0 | 38 84 F3 28 */	subi r4, r4, 0xcd8
/* 81477BF4 | 7F E0 FB 78 */	mr r0, r31
/* 81477BF8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477BFC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477C00 | 54 03 08 3C */	slwi r3, r0, 1
/* 81477C04 | 7C 9E 1B 2E */	sthx r4, r30, r3
/* 81477C08 | 3C 80 00 01 */	lis r4, 0x1
/* 81477C0C | 38 84 F3 1A */	subi r4, r4, 0xce6
/* 81477C10 | 7F E0 FB 78 */	mr r0, r31
/* 81477C14 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477C18 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477C1C | 54 60 08 3C */	slwi r0, r3, 1
/* 81477C20 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477C24 | 48 00 03 04 */	b .L_81477F28
.L_81477C28:
/* 81477C28 | 3C 80 00 01 */	lis r4, 0x1
/* 81477C2C | 38 84 F3 28 */	subi r4, r4, 0xcd8
/* 81477C30 | 7F E0 FB 78 */	mr r0, r31
/* 81477C34 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477C38 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477C3C | 54 60 08 3C */	slwi r0, r3, 1
/* 81477C40 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477C44 | 3C 80 00 01 */	lis r4, 0x1
/* 81477C48 | 38 84 F3 1B */	subi r4, r4, 0xce5
/* 81477C4C | 7F E0 FB 78 */	mr r0, r31
/* 81477C50 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477C54 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477C58 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477C5C | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477C60 | 48 00 02 C8 */	b .L_81477F28
.L_81477C64:
/* 81477C64 | 3C 80 00 01 */	lis r4, 0x1
/* 81477C68 | 38 84 F3 28 */	subi r4, r4, 0xcd8
/* 81477C6C | 7F E0 FB 78 */	mr r0, r31
/* 81477C70 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477C74 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477C78 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477C7C | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477C80 | 3C 80 00 01 */	lis r4, 0x1
/* 81477C84 | 38 84 F3 1E */	subi r4, r4, 0xce2
/* 81477C88 | 7F E0 FB 78 */	mr r0, r31
/* 81477C8C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477C90 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477C94 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477C98 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477C9C | 48 00 02 8C */	b .L_81477F28
.L_81477CA0:
/* 81477CA0 | 3C 80 00 01 */	lis r4, 0x1
/* 81477CA4 | 38 84 F3 28 */	subi r4, r4, 0xcd8
/* 81477CA8 | 7F E0 FB 78 */	mr r0, r31
/* 81477CAC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477CB0 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477CB4 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477CB8 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477CBC | 3C 80 00 01 */	lis r4, 0x1
/* 81477CC0 | 38 84 F3 1F */	subi r4, r4, 0xce1
/* 81477CC4 | 7F E0 FB 78 */	mr r0, r31
/* 81477CC8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477CCC | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477CD0 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477CD4 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477CD8 | 48 00 02 50 */	b .L_81477F28
.L_81477CDC:
/* 81477CDC | 3C 80 00 01 */	lis r4, 0x1
/* 81477CE0 | 38 84 F3 28 */	subi r4, r4, 0xcd8
/* 81477CE4 | 7F E0 FB 78 */	mr r0, r31
/* 81477CE8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477CEC | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477CF0 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477CF4 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477CF8 | 3C 80 00 01 */	lis r4, 0x1
/* 81477CFC | 38 84 F3 24 */	subi r4, r4, 0xcdc
/* 81477D00 | 7F E0 FB 78 */	mr r0, r31
/* 81477D04 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477D08 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477D0C | 54 60 08 3C */	slwi r0, r3, 1
/* 81477D10 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477D14 | 48 00 02 14 */	b .L_81477F28
.L_81477D18:
/* 81477D18 | 3C 80 00 01 */	lis r4, 0x1
/* 81477D1C | 38 84 F3 28 */	subi r4, r4, 0xcd8
/* 81477D20 | 7F E0 FB 78 */	mr r0, r31
/* 81477D24 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477D28 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477D2C | 54 60 08 3C */	slwi r0, r3, 1
/* 81477D30 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477D34 | 3C 80 00 01 */	lis r4, 0x1
/* 81477D38 | 38 84 F3 25 */	subi r4, r4, 0xcdb
/* 81477D3C | 7F E0 FB 78 */	mr r0, r31
/* 81477D40 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477D44 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477D48 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477D4C | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477D50 | 48 00 01 D8 */	b .L_81477F28
.L_81477D54:
/* 81477D54 | 3C 80 00 01 */	lis r4, 0x1
/* 81477D58 | 38 84 F3 1A */	subi r4, r4, 0xce6
/* 81477D5C | 7F E0 FB 78 */	mr r0, r31
/* 81477D60 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477D64 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477D68 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477D6C | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477D70 | 48 00 01 B8 */	b .L_81477F28
.L_81477D74:
/* 81477D74 | 3C 80 00 01 */	lis r4, 0x1
/* 81477D78 | 38 84 F3 1B */	subi r4, r4, 0xce5
/* 81477D7C | 7F E0 FB 78 */	mr r0, r31
/* 81477D80 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477D84 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477D88 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477D8C | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477D90 | 48 00 01 98 */	b .L_81477F28
.L_81477D94:
/* 81477D94 | 3C 80 00 01 */	lis r4, 0x1
/* 81477D98 | 38 84 F3 1C */	subi r4, r4, 0xce4
/* 81477D9C | 7F E0 FB 78 */	mr r0, r31
/* 81477DA0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477DA4 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477DA8 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477DAC | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477DB0 | 48 00 01 78 */	b .L_81477F28
.L_81477DB4:
/* 81477DB4 | 3C 80 00 01 */	lis r4, 0x1
/* 81477DB8 | 38 84 F3 26 */	subi r4, r4, 0xcda
/* 81477DBC | 7F E0 FB 78 */	mr r0, r31
/* 81477DC0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477DC4 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477DC8 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477DCC | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477DD0 | 48 00 01 58 */	b .L_81477F28
.L_81477DD4:
/* 81477DD4 | 3C 80 00 01 */	lis r4, 0x1
/* 81477DD8 | 38 84 F3 1E */	subi r4, r4, 0xce2
/* 81477DDC | 7F E0 FB 78 */	mr r0, r31
/* 81477DE0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477DE4 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477DE8 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477DEC | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477DF0 | 48 00 01 38 */	b .L_81477F28
.L_81477DF4:
/* 81477DF4 | 3C 80 00 01 */	lis r4, 0x1
/* 81477DF8 | 38 84 F3 27 */	subi r4, r4, 0xcd9
/* 81477DFC | 7F E0 FB 78 */	mr r0, r31
/* 81477E00 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477E04 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477E08 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477E0C | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477E10 | 3C 80 00 01 */	lis r4, 0x1
/* 81477E14 | 38 84 F3 1E */	subi r4, r4, 0xce2
/* 81477E18 | 7F E0 FB 78 */	mr r0, r31
/* 81477E1C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477E20 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477E24 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477E28 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477E2C | 48 00 00 FC */	b .L_81477F28
.L_81477E30:
/* 81477E30 | 3C 80 00 01 */	lis r4, 0x1
/* 81477E34 | 38 84 F3 1F */	subi r4, r4, 0xce1
/* 81477E38 | 7F E0 FB 78 */	mr r0, r31
/* 81477E3C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477E40 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477E44 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477E48 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477E4C | 48 00 00 DC */	b .L_81477F28
.L_81477E50:
/* 81477E50 | 3C 80 00 01 */	lis r4, 0x1
/* 81477E54 | 38 84 F3 20 */	subi r4, r4, 0xce0
/* 81477E58 | 7F E0 FB 78 */	mr r0, r31
/* 81477E5C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477E60 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477E64 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477E68 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477E6C | 48 00 00 BC */	b .L_81477F28
.L_81477E70:
/* 81477E70 | 3C 80 00 01 */	lis r4, 0x1
/* 81477E74 | 38 84 F3 21 */	subi r4, r4, 0xcdf
/* 81477E78 | 7F E0 FB 78 */	mr r0, r31
/* 81477E7C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477E80 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81477E84 | 54 60 08 3C */	slwi r0, r3, 1
/* 81477E88 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 81477E8C | 48 00 00 9C */	b .L_81477F28
.L_81477E90:
/* 81477E90 | 3C 80 00 01 */	lis r4, 0x1
/* 81477E94 | 38 84 F3 22 */	subi r4, r4, 0xcde
/* 81477E98 | 7F E0 FB 78 */	mr r0, r31
/* 81477E9C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477EA0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477EA4 | 54 03 08 3C */	slwi r3, r0, 1
/* 81477EA8 | 7C 9E 1B 2E */	sthx r4, r30, r3
/* 81477EAC | 48 00 00 7C */	b .L_81477F28
.L_81477EB0:
/* 81477EB0 | 3C 60 00 01 */	lis r3, 0x1
/* 81477EB4 | 38 63 F3 23 */	subi r3, r3, 0xcdd
/* 81477EB8 | 7F E0 FB 78 */	mr r0, r31
/* 81477EBC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477EC0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477EC4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477EC8 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477ECC | 48 00 00 5C */	b .L_81477F28
.L_81477ED0:
/* 81477ED0 | 3C 60 00 01 */	lis r3, 0x1
/* 81477ED4 | 38 63 F3 24 */	subi r3, r3, 0xcdc
/* 81477ED8 | 7F E0 FB 78 */	mr r0, r31
/* 81477EDC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477EE0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477EE4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477EE8 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477EEC | 48 00 00 3C */	b .L_81477F28
.L_81477EF0:
/* 81477EF0 | 3C 60 00 01 */	lis r3, 0x1
/* 81477EF4 | 38 63 F3 25 */	subi r3, r3, 0xcdb
/* 81477EF8 | 7F E0 FB 78 */	mr r0, r31
/* 81477EFC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477F00 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477F04 | 54 00 08 3C */	slwi r0, r0, 1
/* 81477F08 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81477F0C | 48 00 00 1C */	b .L_81477F28
.L_81477F10:
/* 81477F10 | 38 60 02 82 */	li r3, 0x282
/* 81477F14 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81477F18 | 7F A4 EB 78 */	mr r4, r29
/* 81477F1C | 48 00 C5 61 */	bl Zi8LogError
/* 81477F20 | 38 60 00 00 */	li r3, 0x0
/* 81477F24 | 48 00 00 F4 */	b .L_81478018
.L_81477F28:
/* 81477F28 | A0 81 00 0A */	lhz r4, 0xa(r1)
/* 81477F2C | 2C 04 00 03 */	cmpwi r4, 0x3
/* 81477F30 | 41 82 00 68 */	beq .L_81477F98
/* 81477F34 | 40 80 00 14 */	bge .L_81477F48
/* 81477F38 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81477F3C | 41 82 00 1C */	beq .L_81477F58
/* 81477F40 | 40 80 00 38 */	bge .L_81477F78
/* 81477F44 | 48 00 00 B0 */	b .L_81477FF4
.L_81477F48:
/* 81477F48 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 81477F4C | 41 82 00 8C */	beq .L_81477FD8
/* 81477F50 | 40 80 00 A4 */	bge .L_81477FF4
/* 81477F54 | 48 00 00 64 */	b .L_81477FB8
.L_81477F58:
/* 81477F58 | 3C 60 00 01 */	lis r3, 0x1
/* 81477F5C | 38 63 F3 31 */	subi r3, r3, 0xccf
/* 81477F60 | 7F E0 FB 78 */	mr r0, r31
/* 81477F64 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477F68 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477F6C | 54 04 08 3C */	slwi r4, r0, 1
/* 81477F70 | 7C 7E 23 2E */	sthx r3, r30, r4
/* 81477F74 | 48 00 00 80 */	b .L_81477FF4
.L_81477F78:
/* 81477F78 | 3C 60 00 01 */	lis r3, 0x1
/* 81477F7C | 38 63 F3 32 */	subi r3, r3, 0xcce
/* 81477F80 | 7F E0 FB 78 */	mr r0, r31
/* 81477F84 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477F88 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477F8C | 54 04 08 3C */	slwi r4, r0, 1
/* 81477F90 | 7C 7E 23 2E */	sthx r3, r30, r4
/* 81477F94 | 48 00 00 60 */	b .L_81477FF4
.L_81477F98:
/* 81477F98 | 3C 60 00 01 */	lis r3, 0x1
/* 81477F9C | 38 63 F3 33 */	subi r3, r3, 0xccd
/* 81477FA0 | 7F E0 FB 78 */	mr r0, r31
/* 81477FA4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477FA8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477FAC | 54 04 08 3C */	slwi r4, r0, 1
/* 81477FB0 | 7C 7E 23 2E */	sthx r3, r30, r4
/* 81477FB4 | 48 00 00 40 */	b .L_81477FF4
.L_81477FB8:
/* 81477FB8 | 3C 60 00 01 */	lis r3, 0x1
/* 81477FBC | 38 63 F3 34 */	subi r3, r3, 0xccc
/* 81477FC0 | 7F E0 FB 78 */	mr r0, r31
/* 81477FC4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477FC8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477FCC | 54 04 08 3C */	slwi r4, r0, 1
/* 81477FD0 | 7C 7E 23 2E */	sthx r3, r30, r4
/* 81477FD4 | 48 00 00 20 */	b .L_81477FF4
.L_81477FD8:
/* 81477FD8 | 3C 60 00 01 */	lis r3, 0x1
/* 81477FDC | 38 63 F3 35 */	subi r3, r3, 0xccb
/* 81477FE0 | 7F E0 FB 78 */	mr r0, r31
/* 81477FE4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81477FE8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81477FEC | 54 04 08 3C */	slwi r4, r0, 1
/* 81477FF0 | 7C 7E 23 2E */	sthx r3, r30, r4
.L_81477FF4:
/* 81477FF4 | 38 60 00 00 */	li r3, 0x0
/* 81477FF8 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81477FFC | 54 00 08 3C */	slwi r0, r0, 1
/* 81478000 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 81478004 | 38 60 00 64 */	li r3, 0x64
/* 81478008 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147800C | 7F A4 EB 78 */	mr r4, r29
/* 81478010 | 48 00 C4 6D */	bl Zi8LogError
/* 81478014 | 7F E3 FB 78 */	mr r3, r31
.L_81478018:
/* 81478018 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8147801C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81478020 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81478024 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81478028 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147802C | 7C 08 03 A6 */	mtlr r0
/* 81478030 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81478034 | 4E 80 00 20 */	blr
.endfn Zi8GetZInfo

# .text:0x1A54 | 0x81478038 | size: 0xD4
.fn zi8StrokeCode, global
/* 81478038 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8147803C | 7C 08 02 A6 */	mflr r0
/* 81478040 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81478044 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81478048 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8147804C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81478050 | 28 00 00 0B */	cmplwi r0, 0xb
/* 81478054 | 41 81 00 94 */	bgt .L_814780E8
/* 81478058 | 3C 60 81 67 */	lis r3, jumptable_8166AFF8@ha
/* 8147805C | 38 63 AF F8 */	addi r3, r3, jumptable_8166AFF8@l
/* 81478060 | 54 00 10 3A */	slwi r0, r0, 2
/* 81478064 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81478068 | 7C 69 03 A6 */	mtctr r3
/* 8147806C | 4E 80 04 20 */	bctr
.L_81478070:
/* 81478070 | 3C 60 00 01 */	lis r3, 0x1
/* 81478074 | 38 63 EF 02 */	subi r3, r3, 0x10fe
/* 81478078 | 48 00 00 84 */	b .L_814780FC
.L_8147807C:
/* 8147807C | 3C 60 00 01 */	lis r3, 0x1
/* 81478080 | 38 63 EF 04 */	subi r3, r3, 0x10fc
/* 81478084 | 48 00 00 78 */	b .L_814780FC
.L_81478088:
/* 81478088 | 3C 60 00 01 */	lis r3, 0x1
/* 8147808C | 38 63 EF 01 */	subi r3, r3, 0x10ff
/* 81478090 | 48 00 00 6C */	b .L_814780FC
.L_81478094:
/* 81478094 | 3C 60 00 01 */	lis r3, 0x1
/* 81478098 | 38 63 EF 07 */	subi r3, r3, 0x10f9
/* 8147809C | 48 00 00 60 */	b .L_814780FC
.L_814780A0:
/* 814780A0 | 3C 60 00 01 */	lis r3, 0x1
/* 814780A4 | 38 63 EF 06 */	subi r3, r3, 0x10fa
/* 814780A8 | 48 00 00 54 */	b .L_814780FC
.L_814780AC:
/* 814780AC | 3C 60 00 01 */	lis r3, 0x1
/* 814780B0 | 38 63 EF 03 */	subi r3, r3, 0x10fd
/* 814780B4 | 48 00 00 48 */	b .L_814780FC
.L_814780B8:
/* 814780B8 | 3C 60 00 01 */	lis r3, 0x1
/* 814780BC | 38 63 EF 05 */	subi r3, r3, 0x10fb
/* 814780C0 | 48 00 00 3C */	b .L_814780FC
.L_814780C4:
/* 814780C4 | 3C 60 00 01 */	lis r3, 0x1
/* 814780C8 | 38 63 EF 08 */	subi r3, r3, 0x10f8
/* 814780CC | 48 00 00 30 */	b .L_814780FC
.L_814780D0:
/* 814780D0 | 3C 60 00 01 */	lis r3, 0x1
/* 814780D4 | 38 63 EF 02 */	subi r3, r3, 0x10fe
/* 814780D8 | 48 00 00 24 */	b .L_814780FC
.L_814780DC:
/* 814780DC | 3C 60 00 01 */	lis r3, 0x1
/* 814780E0 | 38 63 EF 07 */	subi r3, r3, 0x10f9
/* 814780E4 | 48 00 00 18 */	b .L_814780FC
.L_814780E8:
/* 814780E8 | 38 60 01 4A */	li r3, 0x14a
/* 814780EC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814780F0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814780F4 | 48 00 C3 89 */	bl Zi8LogError
/* 814780F8 | 38 60 00 00 */	li r3, 0x0
.L_814780FC:
/* 814780FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81478100 | 7C 08 03 A6 */	mtlr r0
/* 81478104 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81478108 | 4E 80 00 20 */	blr
.endfn zi8StrokeCode

# .text:0x1B28 | 0x8147810C | size: 0x214
.fn Zi8GetSInfo, global
/* 8147810C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81478110 | 7C 08 02 A6 */	mflr r0
/* 81478114 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81478118 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147811C | 48 18 13 A1 */	bl _savegpr_26
/* 81478120 | 7C 7A 1B 78 */	mr r26, r3
/* 81478124 | 7C 9C 23 78 */	mr r28, r4
/* 81478128 | 7C BF 2B 78 */	mr r31, r5
/* 8147812C | 98 C1 00 08 */	stb r6, 0x8(r1)
/* 81478130 | 7C FB 3B 78 */	mr r27, r7
/* 81478134 | 3B C0 00 00 */	li r30, 0x0
/* 81478138 | 38 60 00 64 */	li r3, 0x64
/* 8147813C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81478140 | 7F 64 DB 78 */	mr r4, r27
/* 81478144 | 48 00 C3 39 */	bl Zi8LogError
/* 81478148 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147814C | 28 00 00 17 */	cmplwi r0, 0x17
/* 81478150 | 41 81 00 1C */	bgt .L_8147816C
/* 81478154 | 38 60 03 22 */	li r3, 0x322
/* 81478158 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147815C | 7F 64 DB 78 */	mr r4, r27
/* 81478160 | 48 00 C3 21 */	bl Zi8ReplaceLastError
/* 81478164 | 38 60 00 00 */	li r3, 0x0
/* 81478168 | 48 00 01 A0 */	b .L_81478308
.L_8147816C:
/* 8147816C | 3B A0 00 00 */	li r29, 0x0
/* 81478170 | 48 00 00 A0 */	b .L_81478210
.L_81478174:
/* 81478174 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81478178 | 41 82 00 5C */	beq .L_814781D4
/* 8147817C | 7C 1A E8 AE */	lbzx r0, r26, r29
/* 81478180 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 81478184 | 7C 03 26 70 */	srawi r3, r0, 4
/* 81478188 | 7F 64 DB 78 */	mr r4, r27
/* 8147818C | 4B FF FE AD */	bl zi8StrokeCode
/* 81478190 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81478194 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478198 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 8147819C | 7F C0 F3 78 */	mr r0, r30
/* 814781A0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814781A4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814781A8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814781AC | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 814781B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814781B4 | 40 82 00 20 */	bne .L_814781D4
.L_814781B8:
/* 814781B8 | 38 60 00 00 */	li r3, 0x0
/* 814781BC | 3B DE FF FF */	subi r30, r30, 0x1
/* 814781C0 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814781C4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814781C8 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814781CC | 7F C3 F3 78 */	mr r3, r30
/* 814781D0 | 48 00 01 38 */	b .L_81478308
.L_814781D4:
/* 814781D4 | 7C 1A E8 AE */	lbzx r0, r26, r29
/* 814781D8 | 54 03 07 3E */	clrlwi r3, r0, 28
/* 814781DC | 7F 64 DB 78 */	mr r4, r27
/* 814781E0 | 4B FF FE 59 */	bl zi8StrokeCode
/* 814781E4 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814781E8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814781EC | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814781F0 | 7F C0 F3 78 */	mr r0, r30
/* 814781F4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814781F8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814781FC | 54 00 08 3C */	slwi r0, r0, 1
/* 81478200 | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 81478204 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81478208 | 41 82 FF B0 */	beq .L_814781B8
/* 8147820C | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81478210:
/* 81478210 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81478214 | 41 80 FF 60 */	blt .L_81478174
/* 81478218 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 8147821C | 54 03 07 3E */	clrlwi r3, r0, 28
/* 81478220 | 7F 64 DB 78 */	mr r4, r27
/* 81478224 | 4B FF FE 15 */	bl zi8StrokeCode
/* 81478228 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147822C | 54 00 08 3C */	slwi r0, r0, 1
/* 81478230 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81478234 | 7F C0 F3 78 */	mr r0, r30
/* 81478238 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147823C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81478240 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478244 | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 81478248 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147824C | 41 82 FF 6C */	beq .L_814781B8
/* 81478250 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 81478254 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81478258 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147825C | 54 00 06 76 */	rlwinm r0, r0, 0, 25, 27
/* 81478260 | 7C 00 26 70 */	srawi r0, r0, 4
/* 81478264 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81478268 | 3B A0 00 00 */	li r29, 0x0
/* 8147826C | 48 00 00 7C */	b .L_814782E8
.L_81478270:
/* 81478270 | 7C 1C E8 AE */	lbzx r0, r28, r29
/* 81478274 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 81478278 | 7C 03 26 70 */	srawi r3, r0, 4
/* 8147827C | 7F 64 DB 78 */	mr r4, r27
/* 81478280 | 4B FF FD B9 */	bl zi8StrokeCode
/* 81478284 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81478288 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147828C | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81478290 | 7F C0 F3 78 */	mr r0, r30
/* 81478294 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81478298 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147829C | 54 00 08 3C */	slwi r0, r0, 1
/* 814782A0 | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 814782A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814782A8 | 41 82 FF 10 */	beq .L_814781B8
/* 814782AC | 7C 1C E8 AE */	lbzx r0, r28, r29
/* 814782B0 | 54 03 07 3E */	clrlwi r3, r0, 28
/* 814782B4 | 7F 64 DB 78 */	mr r4, r27
/* 814782B8 | 4B FF FD 81 */	bl zi8StrokeCode
/* 814782BC | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814782C0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814782C4 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 814782C8 | 7F C0 F3 78 */	mr r0, r30
/* 814782CC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814782D0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814782D4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814782D8 | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 814782DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814782E0 | 41 82 FE D8 */	beq .L_814781B8
/* 814782E4 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814782E8:
/* 814782E8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814782EC | 7C 1D 00 00 */	cmpw r29, r0
/* 814782F0 | 41 80 FF 80 */	blt .L_81478270
/* 814782F4 | 38 60 00 00 */	li r3, 0x0
/* 814782F8 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814782FC | 54 00 08 3C */	slwi r0, r0, 1
/* 81478300 | 7C 7F 03 2E */	sthx r3, r31, r0
/* 81478304 | 7F C3 F3 78 */	mr r3, r30
.L_81478308:
/* 81478308 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147830C | 48 18 11 FD */	bl _restgpr_26
/* 81478310 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81478314 | 7C 08 03 A6 */	mtlr r0
/* 81478318 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147831C | 4E 80 00 20 */	blr
.endfn Zi8GetSInfo

# .text:0x1D3C | 0x81478320 | size: 0x1E0
.fn Zi81KeyPYinfo, global
/* 81478320 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81478324 | 7C 08 02 A6 */	mflr r0
/* 81478328 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147832C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81478330 | 7C 7F 1B 78 */	mr r31, r3
/* 81478334 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81478338 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8147833C | 3C 83 FF FF */	subis r4, r3, 0x1
/* 81478340 | 38 84 0C CF */	addi r4, r4, 0xccf
/* 81478344 | 28 04 00 49 */	cmplwi r4, 0x49
/* 81478348 | 41 81 01 90 */	bgt .L_814784D8
/* 8147834C | 3C 60 81 67 */	lis r3, jumptable_8166B028@ha
/* 81478350 | 38 63 B0 28 */	addi r3, r3, jumptable_8166B028@l
/* 81478354 | 54 84 10 3A */	slwi r4, r4, 2
/* 81478358 | 7C 63 20 2E */	lwzx r3, r3, r4
/* 8147835C | 7C 69 03 A6 */	mtctr r3
/* 81478360 | 4E 80 04 20 */	bctr
.L_81478364:
/* 81478364 | 3C 60 00 01 */	lis r3, 0x1
/* 81478368 | 38 63 EF F2 */	subi r3, r3, 0x100e
/* 8147836C | 48 00 01 80 */	b .L_814784EC
.L_81478370:
/* 81478370 | 3C 60 00 01 */	lis r3, 0x1
/* 81478374 | 38 63 EF F2 */	subi r3, r3, 0x100e
/* 81478378 | 48 00 01 74 */	b .L_814784EC
.L_8147837C:
/* 8147837C | 3C 60 00 01 */	lis r3, 0x1
/* 81478380 | 38 63 EF F2 */	subi r3, r3, 0x100e
/* 81478384 | 48 00 01 68 */	b .L_814784EC
.L_81478388:
/* 81478388 | 3C 60 00 01 */	lis r3, 0x1
/* 8147838C | 38 63 EF F3 */	subi r3, r3, 0x100d
/* 81478390 | 48 00 01 5C */	b .L_814784EC
.L_81478394:
/* 81478394 | 3C 60 00 01 */	lis r3, 0x1
/* 81478398 | 38 63 EF F3 */	subi r3, r3, 0x100d
/* 8147839C | 48 00 01 50 */	b .L_814784EC
.L_814783A0:
/* 814783A0 | 3C 60 00 01 */	lis r3, 0x1
/* 814783A4 | 38 63 EF F3 */	subi r3, r3, 0x100d
/* 814783A8 | 48 00 01 44 */	b .L_814784EC
.L_814783AC:
/* 814783AC | 3C 60 00 01 */	lis r3, 0x1
/* 814783B0 | 38 63 EF F4 */	subi r3, r3, 0x100c
/* 814783B4 | 48 00 01 38 */	b .L_814784EC
.L_814783B8:
/* 814783B8 | 3C 60 00 01 */	lis r3, 0x1
/* 814783BC | 38 63 EF F4 */	subi r3, r3, 0x100c
/* 814783C0 | 48 00 01 2C */	b .L_814784EC
.L_814783C4:
/* 814783C4 | 3C 60 00 01 */	lis r3, 0x1
/* 814783C8 | 38 63 EF F4 */	subi r3, r3, 0x100c
/* 814783CC | 48 00 01 20 */	b .L_814784EC
.L_814783D0:
/* 814783D0 | 3C 60 00 01 */	lis r3, 0x1
/* 814783D4 | 38 63 EF F5 */	subi r3, r3, 0x100b
/* 814783D8 | 48 00 01 14 */	b .L_814784EC
.L_814783DC:
/* 814783DC | 3C 60 00 01 */	lis r3, 0x1
/* 814783E0 | 38 63 EF F5 */	subi r3, r3, 0x100b
/* 814783E4 | 48 00 01 08 */	b .L_814784EC
.L_814783E8:
/* 814783E8 | 3C 60 00 01 */	lis r3, 0x1
/* 814783EC | 38 63 EF F5 */	subi r3, r3, 0x100b
/* 814783F0 | 48 00 00 FC */	b .L_814784EC
.L_814783F4:
/* 814783F4 | 3C 60 00 01 */	lis r3, 0x1
/* 814783F8 | 38 63 EF F6 */	subi r3, r3, 0x100a
/* 814783FC | 48 00 00 F0 */	b .L_814784EC
.L_81478400:
/* 81478400 | 3C 60 00 01 */	lis r3, 0x1
/* 81478404 | 38 63 EF F6 */	subi r3, r3, 0x100a
/* 81478408 | 48 00 00 E4 */	b .L_814784EC
.L_8147840C:
/* 8147840C | 3C 60 00 01 */	lis r3, 0x1
/* 81478410 | 38 63 EF F6 */	subi r3, r3, 0x100a
/* 81478414 | 48 00 00 D8 */	b .L_814784EC
.L_81478418:
/* 81478418 | 3C 60 00 01 */	lis r3, 0x1
/* 8147841C | 38 63 EF F7 */	subi r3, r3, 0x1009
/* 81478420 | 48 00 00 CC */	b .L_814784EC
.L_81478424:
/* 81478424 | 3C 60 00 01 */	lis r3, 0x1
/* 81478428 | 38 63 EF F7 */	subi r3, r3, 0x1009
/* 8147842C | 48 00 00 C0 */	b .L_814784EC
.L_81478430:
/* 81478430 | 3C 60 00 01 */	lis r3, 0x1
/* 81478434 | 38 63 EF F7 */	subi r3, r3, 0x1009
/* 81478438 | 48 00 00 B4 */	b .L_814784EC
.L_8147843C:
/* 8147843C | 3C 60 00 01 */	lis r3, 0x1
/* 81478440 | 38 63 EF F7 */	subi r3, r3, 0x1009
/* 81478444 | 48 00 00 A8 */	b .L_814784EC
.L_81478448:
/* 81478448 | 3C 60 00 01 */	lis r3, 0x1
/* 8147844C | 38 63 EF F8 */	subi r3, r3, 0x1008
/* 81478450 | 48 00 00 9C */	b .L_814784EC
.L_81478454:
/* 81478454 | 3C 60 00 01 */	lis r3, 0x1
/* 81478458 | 38 63 EF F8 */	subi r3, r3, 0x1008
/* 8147845C | 48 00 00 90 */	b .L_814784EC
.L_81478460:
/* 81478460 | 3C 60 00 01 */	lis r3, 0x1
/* 81478464 | 38 63 EF F8 */	subi r3, r3, 0x1008
/* 81478468 | 48 00 00 84 */	b .L_814784EC
.L_8147846C:
/* 8147846C | 3C 60 00 01 */	lis r3, 0x1
/* 81478470 | 38 63 EF F9 */	subi r3, r3, 0x1007
/* 81478474 | 48 00 00 78 */	b .L_814784EC
.L_81478478:
/* 81478478 | 3C 60 00 01 */	lis r3, 0x1
/* 8147847C | 38 63 EF F9 */	subi r3, r3, 0x1007
/* 81478480 | 48 00 00 6C */	b .L_814784EC
.L_81478484:
/* 81478484 | 3C 60 00 01 */	lis r3, 0x1
/* 81478488 | 38 63 EF F9 */	subi r3, r3, 0x1007
/* 8147848C | 48 00 00 60 */	b .L_814784EC
.L_81478490:
/* 81478490 | 3C 60 00 01 */	lis r3, 0x1
/* 81478494 | 38 63 EF F9 */	subi r3, r3, 0x1007
/* 81478498 | 48 00 00 54 */	b .L_814784EC
.L_8147849C:
/* 8147849C | 3C 60 00 01 */	lis r3, 0x1
/* 814784A0 | 38 63 EF F1 */	subi r3, r3, 0x100f
/* 814784A4 | 48 00 00 48 */	b .L_814784EC
.L_814784A8:
/* 814784A8 | 3C 60 00 01 */	lis r3, 0x1
/* 814784AC | 38 63 EF F2 */	subi r3, r3, 0x100e
/* 814784B0 | 48 00 00 3C */	b .L_814784EC
.L_814784B4:
/* 814784B4 | 3C 60 00 01 */	lis r3, 0x1
/* 814784B8 | 38 63 EF F3 */	subi r3, r3, 0x100d
/* 814784BC | 48 00 00 30 */	b .L_814784EC
.L_814784C0:
/* 814784C0 | 3C 60 00 01 */	lis r3, 0x1
/* 814784C4 | 38 63 EF F4 */	subi r3, r3, 0x100c
/* 814784C8 | 48 00 00 24 */	b .L_814784EC
.L_814784CC:
/* 814784CC | 3C 60 00 01 */	lis r3, 0x1
/* 814784D0 | 38 63 EF F5 */	subi r3, r3, 0x100b
/* 814784D4 | 48 00 00 18 */	b .L_814784EC
.L_814784D8:
/* 814784D8 | 38 60 01 4B */	li r3, 0x14b
/* 814784DC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814784E0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814784E4 | 48 00 BF 99 */	bl Zi8LogError
/* 814784E8 | 7F E3 FB 78 */	mr r3, r31
.L_814784EC:
/* 814784EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814784F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814784F4 | 7C 08 03 A6 */	mtlr r0
/* 814784F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814784FC | 4E 80 00 20 */	blr
.endfn Zi81KeyPYinfo

# .text:0x1F1C | 0x81478500 | size: 0x264
.fn Zi81KeyZYinfo, global
/* 81478500 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81478504 | 7C 08 02 A6 */	mflr r0
/* 81478508 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147850C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81478510 | 7C 7F 1B 78 */	mr r31, r3
/* 81478514 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81478518 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8147851C | 3C 83 FF FF */	subis r4, r3, 0x1
/* 81478520 | 38 84 0C FB */	addi r4, r4, 0xcfb
/* 81478524 | 28 04 00 30 */	cmplwi r4, 0x30
/* 81478528 | 41 81 02 14 */	bgt .L_8147873C
/* 8147852C | 3C 60 81 67 */	lis r3, jumptable_8166B150@ha
/* 81478530 | 38 63 B1 50 */	addi r3, r3, jumptable_8166B150@l
/* 81478534 | 54 84 10 3A */	slwi r4, r4, 2
/* 81478538 | 7C 63 20 2E */	lwzx r3, r3, r4
/* 8147853C | 7C 69 03 A6 */	mtctr r3
/* 81478540 | 4E 80 04 20 */	bctr
.L_81478544:
/* 81478544 | 3C 60 00 01 */	lis r3, 0x1
/* 81478548 | 38 63 EF F1 */	subi r3, r3, 0x100f
/* 8147854C | 48 00 02 04 */	b .L_81478750
.L_81478550:
/* 81478550 | 3C 60 00 01 */	lis r3, 0x1
/* 81478554 | 38 63 EF F1 */	subi r3, r3, 0x100f
/* 81478558 | 48 00 01 F8 */	b .L_81478750
.L_8147855C:
/* 8147855C | 3C 60 00 01 */	lis r3, 0x1
/* 81478560 | 38 63 EF F1 */	subi r3, r3, 0x100f
/* 81478564 | 48 00 01 EC */	b .L_81478750
.L_81478568:
/* 81478568 | 3C 60 00 01 */	lis r3, 0x1
/* 8147856C | 38 63 EF F1 */	subi r3, r3, 0x100f
/* 81478570 | 48 00 01 E0 */	b .L_81478750
.L_81478574:
/* 81478574 | 3C 60 00 01 */	lis r3, 0x1
/* 81478578 | 38 63 EF F2 */	subi r3, r3, 0x100e
/* 8147857C | 48 00 01 D4 */	b .L_81478750
.L_81478580:
/* 81478580 | 3C 60 00 01 */	lis r3, 0x1
/* 81478584 | 38 63 EF F2 */	subi r3, r3, 0x100e
/* 81478588 | 48 00 01 C8 */	b .L_81478750
.L_8147858C:
/* 8147858C | 3C 60 00 01 */	lis r3, 0x1
/* 81478590 | 38 63 EF F2 */	subi r3, r3, 0x100e
/* 81478594 | 48 00 01 BC */	b .L_81478750
.L_81478598:
/* 81478598 | 3C 60 00 01 */	lis r3, 0x1
/* 8147859C | 38 63 EF F2 */	subi r3, r3, 0x100e
/* 814785A0 | 48 00 01 B0 */	b .L_81478750
.L_814785A4:
/* 814785A4 | 3C 60 00 01 */	lis r3, 0x1
/* 814785A8 | 38 63 EF F3 */	subi r3, r3, 0x100d
/* 814785AC | 48 00 01 A4 */	b .L_81478750
.L_814785B0:
/* 814785B0 | 3C 60 00 01 */	lis r3, 0x1
/* 814785B4 | 38 63 EF F3 */	subi r3, r3, 0x100d
/* 814785B8 | 48 00 01 98 */	b .L_81478750
.L_814785BC:
/* 814785BC | 3C 60 00 01 */	lis r3, 0x1
/* 814785C0 | 38 63 EF F3 */	subi r3, r3, 0x100d
/* 814785C4 | 48 00 01 8C */	b .L_81478750
.L_814785C8:
/* 814785C8 | 3C 60 00 01 */	lis r3, 0x1
/* 814785CC | 38 63 EF F4 */	subi r3, r3, 0x100c
/* 814785D0 | 48 00 01 80 */	b .L_81478750
.L_814785D4:
/* 814785D4 | 3C 60 00 01 */	lis r3, 0x1
/* 814785D8 | 38 63 EF F4 */	subi r3, r3, 0x100c
/* 814785DC | 48 00 01 74 */	b .L_81478750
.L_814785E0:
/* 814785E0 | 3C 60 00 01 */	lis r3, 0x1
/* 814785E4 | 38 63 EF F4 */	subi r3, r3, 0x100c
/* 814785E8 | 48 00 01 68 */	b .L_81478750
.L_814785EC:
/* 814785EC | 3C 60 00 01 */	lis r3, 0x1
/* 814785F0 | 38 63 EF F5 */	subi r3, r3, 0x100b
/* 814785F4 | 48 00 01 5C */	b .L_81478750
.L_814785F8:
/* 814785F8 | 3C 60 00 01 */	lis r3, 0x1
/* 814785FC | 38 63 EF F5 */	subi r3, r3, 0x100b
/* 81478600 | 48 00 01 50 */	b .L_81478750
.L_81478604:
/* 81478604 | 3C 60 00 01 */	lis r3, 0x1
/* 81478608 | 38 63 EF F5 */	subi r3, r3, 0x100b
/* 8147860C | 48 00 01 44 */	b .L_81478750
.L_81478610:
/* 81478610 | 3C 60 00 01 */	lis r3, 0x1
/* 81478614 | 38 63 EF F5 */	subi r3, r3, 0x100b
/* 81478618 | 48 00 01 38 */	b .L_81478750
.L_8147861C:
/* 8147861C | 3C 60 00 01 */	lis r3, 0x1
/* 81478620 | 38 63 EF F6 */	subi r3, r3, 0x100a
/* 81478624 | 48 00 01 2C */	b .L_81478750
.L_81478628:
/* 81478628 | 3C 60 00 01 */	lis r3, 0x1
/* 8147862C | 38 63 EF F6 */	subi r3, r3, 0x100a
/* 81478630 | 48 00 01 20 */	b .L_81478750
.L_81478634:
/* 81478634 | 3C 60 00 01 */	lis r3, 0x1
/* 81478638 | 38 63 EF F6 */	subi r3, r3, 0x100a
/* 8147863C | 48 00 01 14 */	b .L_81478750
.L_81478640:
/* 81478640 | 3C 60 00 01 */	lis r3, 0x1
/* 81478644 | 38 63 EF F7 */	subi r3, r3, 0x1009
/* 81478648 | 48 00 01 08 */	b .L_81478750
.L_8147864C:
/* 8147864C | 3C 60 00 01 */	lis r3, 0x1
/* 81478650 | 38 63 EF F7 */	subi r3, r3, 0x1009
/* 81478654 | 48 00 00 FC */	b .L_81478750
.L_81478658:
/* 81478658 | 3C 60 00 01 */	lis r3, 0x1
/* 8147865C | 38 63 EF F7 */	subi r3, r3, 0x1009
/* 81478660 | 48 00 00 F0 */	b .L_81478750
.L_81478664:
/* 81478664 | 3C 60 00 01 */	lis r3, 0x1
/* 81478668 | 38 63 EF F7 */	subi r3, r3, 0x1009
/* 8147866C | 48 00 00 E4 */	b .L_81478750
.L_81478670:
/* 81478670 | 3C 60 00 01 */	lis r3, 0x1
/* 81478674 | 38 63 EF F8 */	subi r3, r3, 0x1008
/* 81478678 | 48 00 00 D8 */	b .L_81478750
.L_8147867C:
/* 8147867C | 3C 60 00 01 */	lis r3, 0x1
/* 81478680 | 38 63 EF F8 */	subi r3, r3, 0x1008
/* 81478684 | 48 00 00 CC */	b .L_81478750
.L_81478688:
/* 81478688 | 3C 60 00 01 */	lis r3, 0x1
/* 8147868C | 38 63 EF F8 */	subi r3, r3, 0x1008
/* 81478690 | 48 00 00 C0 */	b .L_81478750
.L_81478694:
/* 81478694 | 3C 60 00 01 */	lis r3, 0x1
/* 81478698 | 38 63 EF F8 */	subi r3, r3, 0x1008
/* 8147869C | 48 00 00 B4 */	b .L_81478750
.L_814786A0:
/* 814786A0 | 3C 60 00 01 */	lis r3, 0x1
/* 814786A4 | 38 63 EF F9 */	subi r3, r3, 0x1007
/* 814786A8 | 48 00 00 A8 */	b .L_81478750
.L_814786AC:
/* 814786AC | 3C 60 00 01 */	lis r3, 0x1
/* 814786B0 | 38 63 EF F9 */	subi r3, r3, 0x1007
/* 814786B4 | 48 00 00 9C */	b .L_81478750
.L_814786B8:
/* 814786B8 | 3C 60 00 01 */	lis r3, 0x1
/* 814786BC | 38 63 EF F9 */	subi r3, r3, 0x1007
/* 814786C0 | 48 00 00 90 */	b .L_81478750
.L_814786C4:
/* 814786C4 | 3C 60 00 01 */	lis r3, 0x1
/* 814786C8 | 38 63 EF F9 */	subi r3, r3, 0x1007
/* 814786CC | 48 00 00 84 */	b .L_81478750
.L_814786D0:
/* 814786D0 | 3C 60 00 01 */	lis r3, 0x1
/* 814786D4 | 38 63 EF F9 */	subi r3, r3, 0x1007
/* 814786D8 | 48 00 00 78 */	b .L_81478750
.L_814786DC:
/* 814786DC | 3C 60 00 01 */	lis r3, 0x1
/* 814786E0 | 38 63 EF FA */	subi r3, r3, 0x1006
/* 814786E4 | 48 00 00 6C */	b .L_81478750
.L_814786E8:
/* 814786E8 | 3C 60 00 01 */	lis r3, 0x1
/* 814786EC | 38 63 EF FA */	subi r3, r3, 0x1006
/* 814786F0 | 48 00 00 60 */	b .L_81478750
.L_814786F4:
/* 814786F4 | 3C 60 00 01 */	lis r3, 0x1
/* 814786F8 | 38 63 EF FA */	subi r3, r3, 0x1006
/* 814786FC | 48 00 00 54 */	b .L_81478750
.L_81478700:
/* 81478700 | 3C 60 00 01 */	lis r3, 0x1
/* 81478704 | 38 63 EF F1 */	subi r3, r3, 0x100f
/* 81478708 | 48 00 00 48 */	b .L_81478750
.L_8147870C:
/* 8147870C | 3C 60 00 01 */	lis r3, 0x1
/* 81478710 | 38 63 EF F2 */	subi r3, r3, 0x100e
/* 81478714 | 48 00 00 3C */	b .L_81478750
.L_81478718:
/* 81478718 | 3C 60 00 01 */	lis r3, 0x1
/* 8147871C | 38 63 EF F3 */	subi r3, r3, 0x100d
/* 81478720 | 48 00 00 30 */	b .L_81478750
.L_81478724:
/* 81478724 | 3C 60 00 01 */	lis r3, 0x1
/* 81478728 | 38 63 EF F4 */	subi r3, r3, 0x100c
/* 8147872C | 48 00 00 24 */	b .L_81478750
.L_81478730:
/* 81478730 | 3C 60 00 01 */	lis r3, 0x1
/* 81478734 | 38 63 EF F5 */	subi r3, r3, 0x100b
/* 81478738 | 48 00 00 18 */	b .L_81478750
.L_8147873C:
/* 8147873C | 38 60 01 4C */	li r3, 0x14c
/* 81478740 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81478744 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81478748 | 48 00 BD 35 */	bl Zi8LogError
/* 8147874C | 7F E3 FB 78 */	mr r3, r31
.L_81478750:
/* 81478750 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81478754 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81478758 | 7C 08 03 A6 */	mtlr r0
/* 8147875C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81478760 | 4E 80 00 20 */	blr
.endfn Zi81KeyZYinfo

# .text:0x2180 | 0x81478764 | size: 0x54
.fn Zi8GetCharInfo, global
/* 81478764 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81478768 | 7C 08 02 A6 */	mflr r0
/* 8147876C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81478770 | B0 61 00 08 */	sth r3, 0x8(r1)
/* 81478774 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81478778 | 98 A1 00 10 */	stb r5, 0x10(r1)
/* 8147877C | 98 C1 00 11 */	stb r6, 0x11(r1)
/* 81478780 | 90 E1 00 14 */	stw r7, 0x14(r1)
/* 81478784 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 81478788 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8147878C | 88 A1 00 10 */	lbz r5, 0x10(r1)
/* 81478790 | 88 C1 00 11 */	lbz r6, 0x11(r1)
/* 81478794 | 38 E0 00 00 */	li r7, 0x0
/* 81478798 | 39 00 00 00 */	li r8, 0x0
/* 8147879C | 55 08 06 3E */	clrlwi r8, r8, 24
/* 814787A0 | 81 21 00 14 */	lwz r9, 0x14(r1)
/* 814787A4 | 48 00 08 19 */	bl Zi8GetCharInfo2
/* 814787A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814787AC | 7C 08 03 A6 */	mtlr r0
/* 814787B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814787B4 | 4E 80 00 20 */	blr
.endfn Zi8GetCharInfo

# .text:0x21D4 | 0x814787B8 | size: 0x804
.fn ZiCharInfo2, global
/* 814787B8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814787BC | 7C 08 02 A6 */	mflr r0
/* 814787C0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814787C4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814787C8 | 48 18 0C E1 */	bl _savegpr_21
/* 814787CC | 7C 75 1B 78 */	mr r21, r3
/* 814787D0 | 7C 9D 23 78 */	mr r29, r4
/* 814787D4 | 7C B8 2B 78 */	mr r24, r5
/* 814787D8 | 7C DB 33 78 */	mr r27, r6
/* 814787DC | 7C F7 3B 78 */	mr r23, r7
/* 814787E0 | 7D 16 43 78 */	mr r22, r8
/* 814787E4 | 7D 3E 4B 78 */	mr r30, r9
/* 814787E8 | 38 01 00 20 */	addi r0, r1, 0x20
/* 814787EC | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 814787F0 | 3B 20 00 00 */	li r25, 0x0
/* 814787F4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814787F8 | 41 82 00 10 */	beq .L_81478808
/* 814787FC | 57 00 06 3E */	clrlwi r0, r24, 24
/* 81478800 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81478804 | 40 82 00 1C */	bne .L_81478820
.L_81478808:
/* 81478808 | 38 60 01 2C */	li r3, 0x12c
/* 8147880C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81478810 | 7F C4 F3 78 */	mr r4, r30
/* 81478814 | 48 00 BC 69 */	bl Zi8LogError
/* 81478818 | 38 60 00 00 */	li r3, 0x0
/* 8147881C | 48 00 07 88 */	b .L_81478FA4
.L_81478820:
/* 81478820 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478824 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 81478828 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147882C | 41 82 02 C0 */	beq .L_81478AEC
/* 81478830 | 57 60 06 7E */	clrlwi r0, r27, 25
/* 81478834 | 54 1B 06 3E */	clrlwi r27, r0, 24
/* 81478838 | 38 60 00 01 */	li r3, 0x1
/* 8147883C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81478840 | 7F C4 F3 78 */	mr r4, r30
/* 81478844 | 4B FE 6C 31 */	bl Zi8GetFormatVersion
/* 81478848 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147884C | 28 00 00 04 */	cmplwi r0, 0x4
/* 81478850 | 41 80 00 40 */	blt .L_81478890
/* 81478854 | 38 60 00 01 */	li r3, 0x1
/* 81478858 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147885C | 38 80 00 19 */	li r4, 0x19
/* 81478860 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81478864 | 7F C5 F3 78 */	mr r5, r30
/* 81478868 | 4B FE 6B C9 */	bl Zi8GetTableCount
/* 8147886C | B0 61 00 12 */	sth r3, 0x12(r1)
/* 81478870 | 38 60 00 01 */	li r3, 0x1
/* 81478874 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81478878 | 38 80 00 19 */	li r4, 0x19
/* 8147887C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81478880 | 7F C5 F3 78 */	mr r5, r30
/* 81478884 | 4B FE 6B 2D */	bl Zi8GetTableAddress
/* 81478888 | 7C 7F 1B 78 */	mr r31, r3
/* 8147888C | 48 00 00 10 */	b .L_8147889C
.L_81478890:
/* 81478890 | 38 00 00 00 */	li r0, 0x0
/* 81478894 | B0 01 00 12 */	sth r0, 0x12(r1)
/* 81478898 | 3B E0 00 00 */	li r31, 0x0
.L_8147889C:
/* 8147889C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 814788A0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814788A4 | 40 82 00 24 */	bne .L_814788C8
/* 814788A8 | 38 60 00 01 */	li r3, 0x1
/* 814788AC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814788B0 | 38 80 00 03 */	li r4, 0x3
/* 814788B4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814788B8 | 7F C5 F3 78 */	mr r5, r30
/* 814788BC | 4B FE 6A F5 */	bl Zi8GetTableAddress
/* 814788C0 | 7C 79 1B 78 */	mr r25, r3
/* 814788C4 | 48 00 00 20 */	b .L_814788E4
.L_814788C8:
/* 814788C8 | 38 60 00 01 */	li r3, 0x1
/* 814788CC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814788D0 | 38 80 00 04 */	li r4, 0x4
/* 814788D4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814788D8 | 7F C5 F3 78 */	mr r5, r30
/* 814788DC | 4B FE 6A D5 */	bl Zi8GetTableAddress
/* 814788E0 | 7C 79 1B 78 */	mr r25, r3
.L_814788E4:
/* 814788E4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 814788E8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814788EC | 41 82 00 10 */	beq .L_814788FC
/* 814788F0 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 814788F4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814788F8 | 40 82 01 F4 */	bne .L_81478AEC
.L_814788FC:
/* 814788FC | 38 60 00 01 */	li r3, 0x1
/* 81478900 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81478904 | 38 80 00 08 */	li r4, 0x8
/* 81478908 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147890C | 7F C5 F3 78 */	mr r5, r30
/* 81478910 | 4B FE 6B 21 */	bl Zi8GetTableCount
/* 81478914 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81478918 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 8147891C | 7C 00 18 40 */	cmplw r0, r3
/* 81478920 | 41 81 01 CC */	bgt .L_81478AEC
/* 81478924 | 56 A0 04 3E */	clrlwi r0, r21, 16
/* 81478928 | 54 00 C6 3E */	extrwi r0, r0, 8, 16
/* 8147892C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81478930 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81478934 | 56 A0 06 3E */	clrlwi r0, r21, 24
/* 81478938 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8147893C | 38 00 00 00 */	li r0, 0x0
/* 81478940 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 81478944 | 48 00 01 94 */	b .L_81478AD8
.L_81478948:
/* 81478948 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8147894C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81478950 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81478954 | 7C 03 00 40 */	cmplw r3, r0
/* 81478958 | 40 82 01 70 */	bne .L_81478AC8
/* 8147895C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81478960 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81478964 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 81478968 | 7C 03 00 40 */	cmplw r3, r0
/* 8147896C | 40 82 01 5C */	bne .L_81478AC8
/* 81478970 | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 81478974 | 54 00 06 FE */	clrlwi r0, r0, 27
/* 81478978 | 54 03 40 2E */	slwi r3, r0, 8
/* 8147897C | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 81478980 | 7C 60 03 78 */	or r0, r3, r0
/* 81478984 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478988 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147898C | B0 01 00 14 */	sth r0, 0x14(r1)
/* 81478990 | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 81478994 | 54 00 DF 7E */	extrwi r0, r0, 3, 24
/* 81478998 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 8147899C | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 814789A0 | 7C 99 00 AE */	lbzx r4, r25, r0
/* 814789A4 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 814789A8 | 7C 60 CA 14 */	add r3, r0, r25
/* 814789AC | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814789B0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814789B4 | 54 00 40 2E */	slwi r0, r0, 8
/* 814789B8 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814789BC | 7C 05 22 14 */	add r0, r5, r4
/* 814789C0 | 7C 03 02 14 */	add r0, r3, r0
/* 814789C4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814789C8 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 814789CC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 814789D0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814789D4 | 40 82 00 20 */	bne .L_814789F4
/* 814789D8 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 814789DC | 7F A4 EB 78 */	mr r4, r29
/* 814789E0 | 57 05 06 3E */	clrlwi r5, r24, 24
/* 814789E4 | 7F C6 F3 78 */	mr r6, r30
/* 814789E8 | 4B FF DD 65 */	bl Zi8GetPInfo
/* 814789EC | 7C 7A 1B 78 */	mr r26, r3
/* 814789F0 | 48 00 00 1C */	b .L_81478A0C
.L_814789F4:
/* 814789F4 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 814789F8 | 7F A4 EB 78 */	mr r4, r29
/* 814789FC | 57 05 06 3E */	clrlwi r5, r24, 24
/* 81478A00 | 7F C6 F3 78 */	mr r6, r30
/* 81478A04 | 4B FF EA 41 */	bl Zi8GetZInfo
/* 81478A08 | 7C 7A 1B 78 */	mr r26, r3
.L_81478A0C:
/* 81478A0C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478A10 | 28 00 00 11 */	cmplwi r0, 0x11
/* 81478A14 | 40 82 00 9C */	bne .L_81478AB0
/* 81478A18 | 38 00 00 00 */	li r0, 0x0
/* 81478A1C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81478A20 | 48 00 00 80 */	b .L_81478AA0
.L_81478A24:
/* 81478A24 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81478A28 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478A2C | 7C 1D 02 2E */	lhzx r0, r29, r0
/* 81478A30 | 3C 60 00 01 */	lis r3, 0x1
/* 81478A34 | 38 63 EF 07 */	subi r3, r3, 0x10f9
/* 81478A38 | 7C 00 18 00 */	cmpw r0, r3
/* 81478A3C | 41 82 00 58 */	beq .L_81478A94
/* 81478A40 | 40 80 00 2C */	bge .L_81478A6C
/* 81478A44 | 3C 60 00 01 */	lis r3, 0x1
/* 81478A48 | 38 63 EF 04 */	subi r3, r3, 0x10fc
/* 81478A4C | 7C 00 18 00 */	cmpw r0, r3
/* 81478A50 | 41 82 00 44 */	beq .L_81478A94
/* 81478A54 | 40 80 00 2C */	bge .L_81478A80
/* 81478A58 | 3C 60 00 01 */	lis r3, 0x1
/* 81478A5C | 38 63 EF 03 */	subi r3, r3, 0x10fd
/* 81478A60 | 7C 00 18 00 */	cmpw r0, r3
/* 81478A64 | 40 80 00 1C */	bge .L_81478A80
/* 81478A68 | 48 00 00 2C */	b .L_81478A94
.L_81478A6C:
/* 81478A6C | 3C 60 00 01 */	lis r3, 0x1
/* 81478A70 | 38 63 EF 09 */	subi r3, r3, 0x10f7
/* 81478A74 | 7C 00 18 00 */	cmpw r0, r3
/* 81478A78 | 40 80 00 1C */	bge .L_81478A94
/* 81478A7C | 48 00 00 04 */	b .L_81478A80
.L_81478A80:
/* 81478A80 | 3C 60 00 01 */	lis r3, 0x1
/* 81478A84 | 38 63 EF 0A */	subi r3, r3, 0x10f6
/* 81478A88 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81478A8C | 54 00 08 3C */	slwi r0, r0, 1
/* 81478A90 | 7C 7D 03 2E */	sthx r3, r29, r0
.L_81478A94:
/* 81478A94 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81478A98 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81478A9C | 90 01 00 18 */	stw r0, 0x18(r1)
.L_81478AA0:
/* 81478AA0 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81478AA4 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 81478AA8 | 7C 03 00 00 */	cmpw r3, r0
/* 81478AAC | 41 80 FF 78 */	blt .L_81478A24
.L_81478AB0:
/* 81478AB0 | 38 60 00 64 */	li r3, 0x64
/* 81478AB4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81478AB8 | 7F C4 F3 78 */	mr r4, r30
/* 81478ABC | 48 00 B9 C1 */	bl Zi8LogError
/* 81478AC0 | 7F 43 D3 78 */	mr r3, r26
/* 81478AC4 | 48 00 04 E0 */	b .L_81478FA4
.L_81478AC8:
/* 81478AC8 | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 81478ACC | 38 03 00 01 */	addi r0, r3, 0x1
/* 81478AD0 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 81478AD4 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_81478AD8:
/* 81478AD8 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81478ADC | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81478AE0 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81478AE4 | 7C 03 00 40 */	cmplw r3, r0
/* 81478AE8 | 41 80 FE 60 */	blt .L_81478948
.L_81478AEC:
/* 81478AEC | 56 A3 04 3E */	clrlwi r3, r21, 16
/* 81478AF0 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81478AF4 | 7F C5 F3 78 */	mr r5, r30
/* 81478AF8 | 48 00 64 3D */	bl Zi8Uni2Ptr
/* 81478AFC | B0 61 00 14 */	sth r3, 0x14(r1)
/* 81478B00 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 81478B04 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81478B08 | 40 82 00 0C */	bne .L_81478B14
/* 81478B0C | 3B 40 00 00 */	li r26, 0x0
/* 81478B10 | 4B FF FE FC */	b .L_81478A0C
.L_81478B14:
/* 81478B14 | 38 60 00 01 */	li r3, 0x1
/* 81478B18 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81478B1C | 38 80 00 01 */	li r4, 0x1
/* 81478B20 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81478B24 | 7F C5 F3 78 */	mr r5, r30
/* 81478B28 | 4B FE 68 89 */	bl Zi8GetTableAddress
/* 81478B2C | 7C 7F 1B 78 */	mr r31, r3
/* 81478B30 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81478B34 | 88 03 00 09 */	lbz r0, 0x9(r3)
/* 81478B38 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81478B3C | 54 05 80 1E */	slwi r5, r0, 16
/* 81478B40 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81478B44 | 88 83 00 0B */	lbz r4, 0xb(r3)
/* 81478B48 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81478B4C | 88 03 00 0A */	lbz r0, 0xa(r3)
/* 81478B50 | 54 00 40 2E */	slwi r0, r0, 8
/* 81478B54 | 7C 80 03 78 */	or r0, r4, r0
/* 81478B58 | 7C A0 03 78 */	or r0, r5, r0
/* 81478B5C | 7F FF 02 14 */	add r31, r31, r0
/* 81478B60 | 38 60 00 01 */	li r3, 0x1
/* 81478B64 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81478B68 | 7F C4 F3 78 */	mr r4, r30
/* 81478B6C | 4B FE 69 09 */	bl Zi8GetFormatVersion
/* 81478B70 | 54 60 07 BC */	rlwinm r0, r3, 0, 30, 30
/* 81478B74 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81478B78 | 98 1E 00 16 */	stb r0, 0x16(r30)
/* 81478B7C | 88 1E 00 16 */	lbz r0, 0x16(r30)
/* 81478B80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81478B84 | 41 82 00 74 */	beq .L_81478BF8
/* 81478B88 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478B8C | 28 00 00 07 */	cmplwi r0, 0x7
/* 81478B90 | 41 82 00 68 */	beq .L_81478BF8
/* 81478B94 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478B98 | 28 00 00 0A */	cmplwi r0, 0xa
/* 81478B9C | 41 82 00 5C */	beq .L_81478BF8
/* 81478BA0 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478BA4 | 28 00 00 08 */	cmplwi r0, 0x8
/* 81478BA8 | 41 82 00 50 */	beq .L_81478BF8
/* 81478BAC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478BB0 | 28 00 00 09 */	cmplwi r0, 0x9
/* 81478BB4 | 41 82 00 44 */	beq .L_81478BF8
/* 81478BB8 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81478BBC | 54 00 07 7E */	clrlwi r0, r0, 29
/* 81478BC0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81478BC4 | 41 82 00 28 */	beq .L_81478BEC
/* 81478BC8 | 40 80 00 2C */	bge .L_81478BF4
/* 81478BCC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81478BD0 | 41 82 00 0C */	beq .L_81478BDC
/* 81478BD4 | 40 80 00 10 */	bge .L_81478BE4
/* 81478BD8 | 48 00 00 1C */	b .L_81478BF4
.L_81478BDC:
/* 81478BDC | 3B FF 00 02 */	addi r31, r31, 0x2
/* 81478BE0 | 48 00 00 18 */	b .L_81478BF8
.L_81478BE4:
/* 81478BE4 | 3B FF 00 03 */	addi r31, r31, 0x3
/* 81478BE8 | 48 00 00 10 */	b .L_81478BF8
.L_81478BEC:
/* 81478BEC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81478BF0 | 48 00 00 08 */	b .L_81478BF8
.L_81478BF4:
/* 81478BF4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81478BF8:
/* 81478BF8 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478BFC | 28 00 00 11 */	cmplwi r0, 0x11
/* 81478C00 | 41 81 01 2C */	bgt .L_81478D2C
/* 81478C04 | 3C 60 81 67 */	lis r3, jumptable_8166B214@ha
/* 81478C08 | 38 63 B2 14 */	addi r3, r3, jumptable_8166B214@l
/* 81478C0C | 54 00 10 3A */	slwi r0, r0, 2
/* 81478C10 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81478C14 | 7C 69 03 A6 */	mtctr r3
/* 81478C18 | 4E 80 04 20 */	bctr
.L_81478C1C:
/* 81478C1C | 7F E3 FB 78 */	mr r3, r31
/* 81478C20 | 7F A4 EB 78 */	mr r4, r29
/* 81478C24 | 57 05 06 3E */	clrlwi r5, r24, 24
/* 81478C28 | 7F C6 F3 78 */	mr r6, r30
/* 81478C2C | 4B FF D9 B9 */	bl Zi8GetCJInfo
/* 81478C30 | 7C 7A 1B 78 */	mr r26, r3
/* 81478C34 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478C38 | 28 00 00 09 */	cmplwi r0, 0x9
/* 81478C3C | 41 82 00 10 */	beq .L_81478C4C
/* 81478C40 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478C44 | 28 00 00 0A */	cmplwi r0, 0xa
/* 81478C48 | 40 82 00 E8 */	bne .L_81478D30
.L_81478C4C:
/* 81478C4C | 57 40 06 3E */	clrlwi r0, r26, 24
/* 81478C50 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81478C54 | 40 81 00 DC */	ble .L_81478D30
/* 81478C58 | 57 43 06 3E */	clrlwi r3, r26, 24
/* 81478C5C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81478C60 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478C64 | 7C 1D 02 2E */	lhzx r0, r29, r0
/* 81478C68 | B0 1D 00 02 */	sth r0, 0x2(r29)
/* 81478C6C | 38 00 00 00 */	li r0, 0x0
/* 81478C70 | B0 1D 00 04 */	sth r0, 0x4(r29)
/* 81478C74 | 3B 40 00 02 */	li r26, 0x2
/* 81478C78 | 48 00 00 B8 */	b .L_81478D30
.L_81478C7C:
/* 81478C7C | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81478C80 | 7F E4 FB 78 */	mr r4, r31
/* 81478C84 | 7F A5 EB 78 */	mr r5, r29
/* 81478C88 | 57 06 06 3E */	clrlwi r6, r24, 24
/* 81478C8C | 7F C7 F3 78 */	mr r7, r30
/* 81478C90 | 4B FF F4 7D */	bl Zi8GetSInfo
/* 81478C94 | 7C 7A 1B 78 */	mr r26, r3
/* 81478C98 | 48 00 00 98 */	b .L_81478D30
.L_81478C9C:
/* 81478C9C | 38 60 00 01 */	li r3, 0x1
/* 81478CA0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81478CA4 | 38 80 00 03 */	li r4, 0x3
/* 81478CA8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81478CAC | 7F C5 F3 78 */	mr r5, r30
/* 81478CB0 | 4B FE 67 01 */	bl Zi8GetTableAddress
/* 81478CB4 | 7C 79 1B 78 */	mr r25, r3
/* 81478CB8 | 7F 23 CB 78 */	mr r3, r25
/* 81478CBC | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81478CC0 | 48 00 62 09 */	bl Zi8GetPCode
/* 81478CC4 | B0 61 00 10 */	sth r3, 0x10(r1)
/* 81478CC8 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 81478CCC | 7F A4 EB 78 */	mr r4, r29
/* 81478CD0 | 57 05 06 3E */	clrlwi r5, r24, 24
/* 81478CD4 | 7F C6 F3 78 */	mr r6, r30
/* 81478CD8 | 4B FF DA 75 */	bl Zi8GetPInfo
/* 81478CDC | 7C 7A 1B 78 */	mr r26, r3
/* 81478CE0 | 48 00 00 50 */	b .L_81478D30
.L_81478CE4:
/* 81478CE4 | 38 60 00 01 */	li r3, 0x1
/* 81478CE8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81478CEC | 38 80 00 04 */	li r4, 0x4
/* 81478CF0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81478CF4 | 7F C5 F3 78 */	mr r5, r30
/* 81478CF8 | 4B FE 66 B9 */	bl Zi8GetTableAddress
/* 81478CFC | 7C 79 1B 78 */	mr r25, r3
/* 81478D00 | 7F 23 CB 78 */	mr r3, r25
/* 81478D04 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81478D08 | 48 00 61 C1 */	bl Zi8GetPCode
/* 81478D0C | B0 61 00 10 */	sth r3, 0x10(r1)
/* 81478D10 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 81478D14 | 7F A4 EB 78 */	mr r4, r29
/* 81478D18 | 57 05 06 3E */	clrlwi r5, r24, 24
/* 81478D1C | 7F C6 F3 78 */	mr r6, r30
/* 81478D20 | 4B FF E7 25 */	bl Zi8GetZInfo
/* 81478D24 | 7C 7A 1B 78 */	mr r26, r3
/* 81478D28 | 48 00 00 08 */	b .L_81478D30
.L_81478D2C:
/* 81478D2C | 3B 40 00 00 */	li r26, 0x0
.L_81478D30:
/* 81478D30 | 56 C0 06 3E */	clrlwi r0, r22, 24
/* 81478D34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81478D38 | 41 82 FC D4 */	beq .L_81478A0C
/* 81478D3C | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81478D40 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81478D44 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 81478D48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81478D4C | 41 82 FC C0 */	beq .L_81478A0C
/* 81478D50 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478D54 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81478D58 | 41 82 00 10 */	beq .L_81478D68
/* 81478D5C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478D60 | 28 00 00 04 */	cmplwi r0, 0x4
/* 81478D64 | 40 82 FC A8 */	bne .L_81478A0C
.L_81478D68:
/* 81478D68 | 38 60 00 01 */	li r3, 0x1
/* 81478D6C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81478D70 | 38 80 00 05 */	li r4, 0x5
/* 81478D74 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81478D78 | 7F C5 F3 78 */	mr r5, r30
/* 81478D7C | 4B FE 66 35 */	bl Zi8GetTableAddress
/* 81478D80 | 7C 7C 1B 78 */	mr r28, r3
/* 81478D84 | 38 60 00 01 */	li r3, 0x1
/* 81478D88 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81478D8C | 38 80 00 05 */	li r4, 0x5
/* 81478D90 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81478D94 | 7F C5 F3 78 */	mr r5, r30
/* 81478D98 | 4B FE 66 99 */	bl Zi8GetTableCount
/* 81478D9C | B0 61 00 0C */	sth r3, 0xc(r1)
/* 81478DA0 | 48 00 00 38 */	b .L_81478DD8
.L_81478DA4:
/* 81478DA4 | A0 81 00 14 */	lhz r4, 0x14(r1)
/* 81478DA8 | 88 1C 00 01 */	lbz r0, 0x1(r28)
/* 81478DAC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81478DB0 | 54 03 40 2E */	slwi r3, r0, 8
/* 81478DB4 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 81478DB8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81478DBC | 7C 60 03 78 */	or r0, r3, r0
/* 81478DC0 | 7C 04 00 00 */	cmpw r4, r0
/* 81478DC4 | 41 82 00 20 */	beq .L_81478DE4
/* 81478DC8 | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81478DCC | 38 03 FF FF */	subi r0, r3, 0x1
/* 81478DD0 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 81478DD4 | 3B 9C 00 04 */	addi r28, r28, 0x4
.L_81478DD8:
/* 81478DD8 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81478DDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81478DE0 | 40 82 FF C4 */	bne .L_81478DA4
.L_81478DE4:
/* 81478DE4 | 57 43 06 3E */	clrlwi r3, r26, 24
/* 81478DE8 | 56 C0 06 3E */	clrlwi r0, r22, 24
/* 81478DEC | 7C 03 00 40 */	cmplw r3, r0
/* 81478DF0 | 41 80 00 CC */	blt .L_81478EBC
/* 81478DF4 | 38 00 00 01 */	li r0, 0x1
/* 81478DF8 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81478DFC | 38 00 00 00 */	li r0, 0x0
/* 81478E00 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 81478E04 | 48 00 00 9C */	b .L_81478EA0
.L_81478E08:
/* 81478E08 | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 81478E0C | 56 C0 06 3E */	clrlwi r0, r22, 24
/* 81478E10 | 7C 03 00 00 */	cmpw r3, r0
/* 81478E14 | 41 82 00 9C */	beq .L_81478EB0
/* 81478E18 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478E1C | 28 00 00 03 */	cmplwi r0, 0x3
/* 81478E20 | 40 82 00 3C */	bne .L_81478E5C
/* 81478E24 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81478E28 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478E2C | 7C 7D 02 2E */	lhzx r3, r29, r0
/* 81478E30 | 7F C4 F3 78 */	mr r4, r30
/* 81478E34 | 4B FF F4 ED */	bl Zi81KeyPYinfo
/* 81478E38 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81478E3C | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81478E40 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478E44 | 7C 17 02 2E */	lhzx r0, r23, r0
/* 81478E48 | 7C 00 18 40 */	cmplw r0, r3
/* 81478E4C | 41 82 00 48 */	beq .L_81478E94
/* 81478E50 | 38 00 00 00 */	li r0, 0x0
/* 81478E54 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81478E58 | 48 00 00 58 */	b .L_81478EB0
.L_81478E5C:
/* 81478E5C | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81478E60 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478E64 | 7C 7D 02 2E */	lhzx r3, r29, r0
/* 81478E68 | 7F C4 F3 78 */	mr r4, r30
/* 81478E6C | 4B FF F6 95 */	bl Zi81KeyZYinfo
/* 81478E70 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81478E74 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81478E78 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478E7C | 7C 17 02 2E */	lhzx r0, r23, r0
/* 81478E80 | 7C 00 18 40 */	cmplw r0, r3
/* 81478E84 | 41 82 00 10 */	beq .L_81478E94
/* 81478E88 | 38 00 00 00 */	li r0, 0x0
/* 81478E8C | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81478E90 | 48 00 00 20 */	b .L_81478EB0
.L_81478E94:
/* 81478E94 | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 81478E98 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81478E9C | B0 01 00 0E */	sth r0, 0xe(r1)
.L_81478EA0:
/* 81478EA0 | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 81478EA4 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 81478EA8 | 7C 03 00 00 */	cmpw r3, r0
/* 81478EAC | 41 80 FF 5C */	blt .L_81478E08
.L_81478EB0:
/* 81478EB0 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 81478EB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81478EB8 | 40 82 FB 54 */	bne .L_81478A0C
.L_81478EBC:
/* 81478EBC | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81478EC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81478EC4 | 41 82 FB 48 */	beq .L_81478A0C
/* 81478EC8 | A0 81 00 14 */	lhz r4, 0x14(r1)
/* 81478ECC | 88 1C 00 01 */	lbz r0, 0x1(r28)
/* 81478ED0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81478ED4 | 54 03 40 2E */	slwi r3, r0, 8
/* 81478ED8 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 81478EDC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81478EE0 | 7C 60 03 78 */	or r0, r3, r0
/* 81478EE4 | 7C 04 00 00 */	cmpw r4, r0
/* 81478EE8 | 40 82 FB 24 */	bne .L_81478A0C
/* 81478EEC | 88 1C 00 02 */	lbz r0, 0x2(r28)
/* 81478EF0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81478EF4 | 88 1C 00 03 */	lbz r0, 0x3(r28)
/* 81478EF8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81478EFC | 54 00 07 FE */	clrlwi r0, r0, 31
/* 81478F00 | 54 00 40 2E */	slwi r0, r0, 8
/* 81478F04 | 7C 60 03 78 */	or r0, r3, r0
/* 81478F08 | 54 00 08 3C */	slwi r0, r0, 1
/* 81478F0C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81478F10 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81478F14 | 88 1C 00 03 */	lbz r0, 0x3(r28)
/* 81478F18 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81478F1C | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 81478F20 | 7C 05 26 70 */	srawi r5, r0, 4
/* 81478F24 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81478F28 | 7C 99 00 AE */	lbzx r4, r25, r0
/* 81478F2C | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81478F30 | 7C 60 CA 14 */	add r3, r0, r25
/* 81478F34 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81478F38 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81478F3C | 54 03 40 2E */	slwi r3, r0, 8
/* 81478F40 | 7C 05 22 14 */	add r0, r5, r4
/* 81478F44 | 7C 03 02 14 */	add r0, r3, r0
/* 81478F48 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81478F4C | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81478F50 | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81478F54 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81478F58 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 81478F5C | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81478F60 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81478F64 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81478F68 | 40 82 00 20 */	bne .L_81478F88
/* 81478F6C | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 81478F70 | 7F A4 EB 78 */	mr r4, r29
/* 81478F74 | 57 05 06 3E */	clrlwi r5, r24, 24
/* 81478F78 | 7F C6 F3 78 */	mr r6, r30
/* 81478F7C | 4B FF D7 D1 */	bl Zi8GetPInfo
/* 81478F80 | 7C 7A 1B 78 */	mr r26, r3
/* 81478F84 | 4B FF FE 60 */	b .L_81478DE4
.L_81478F88:
/* 81478F88 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 81478F8C | 7F A4 EB 78 */	mr r4, r29
/* 81478F90 | 57 05 06 3E */	clrlwi r5, r24, 24
/* 81478F94 | 7F C6 F3 78 */	mr r6, r30
/* 81478F98 | 4B FF E4 AD */	bl Zi8GetZInfo
/* 81478F9C | 7C 7A 1B 78 */	mr r26, r3
/* 81478FA0 | 4B FF FE 44 */	b .L_81478DE4
.L_81478FA4:
/* 81478FA4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81478FA8 | 48 18 05 4D */	bl _restgpr_21
/* 81478FAC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81478FB0 | 7C 08 03 A6 */	mtlr r0
/* 81478FB4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81478FB8 | 4E 80 00 20 */	blr
.endfn ZiCharInfo2

# .text:0x29D8 | 0x81478FBC | size: 0xEC
.fn Zi8GetCharInfo2, global
/* 81478FBC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81478FC0 | 7C 08 02 A6 */	mflr r0
/* 81478FC4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81478FC8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81478FCC | 48 18 04 E5 */	bl _savegpr_23
/* 81478FD0 | 7C 77 1B 78 */	mr r23, r3
/* 81478FD4 | 7C 98 23 78 */	mr r24, r4
/* 81478FD8 | 7C B9 2B 78 */	mr r25, r5
/* 81478FDC | 7C DA 33 78 */	mr r26, r6
/* 81478FE0 | 7C FB 3B 78 */	mr r27, r7
/* 81478FE4 | 7D 1C 43 78 */	mr r28, r8
/* 81478FE8 | 7D 3F 4B 78 */	mr r31, r9
/* 81478FEC | 8B DF 00 18 */	lbz r30, 0x18(r31)
/* 81478FF0 | 56 E3 04 3E */	clrlwi r3, r23, 16
/* 81478FF4 | 7F 04 C3 78 */	mr r4, r24
/* 81478FF8 | 57 25 06 3E */	clrlwi r5, r25, 24
/* 81478FFC | 57 46 06 3E */	clrlwi r6, r26, 24
/* 81479000 | 7F 67 DB 78 */	mr r7, r27
/* 81479004 | 57 88 06 3E */	clrlwi r8, r28, 24
/* 81479008 | 7F E9 FB 78 */	mr r9, r31
/* 8147900C | 4B FF F7 AD */	bl ZiCharInfo2
/* 81479010 | 7C 7D 1B 78 */	mr r29, r3
/* 81479014 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 81479018 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147901C | 40 82 00 70 */	bne .L_8147908C
/* 81479020 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81479024 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 81479028 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147902C | 40 82 00 24 */	bne .L_81479050
/* 81479030 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81479034 | 54 00 06 72 */	rlwinm r0, r0, 0, 25, 25
/* 81479038 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147903C | 40 82 00 14 */	bne .L_81479050
/* 81479040 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81479044 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 81479048 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147904C | 41 82 00 10 */	beq .L_8147905C
.L_81479050:
/* 81479050 | 38 00 00 06 */	li r0, 0x6
/* 81479054 | 98 1F 00 18 */	stb r0, 0x18(r31)
/* 81479058 | 48 00 00 0C */	b .L_81479064
.L_8147905C:
/* 8147905C | 38 00 00 01 */	li r0, 0x1
/* 81479060 | 98 1F 00 18 */	stb r0, 0x18(r31)
.L_81479064:
/* 81479064 | 56 E3 04 3E */	clrlwi r3, r23, 16
/* 81479068 | 7F 04 C3 78 */	mr r4, r24
/* 8147906C | 57 25 06 3E */	clrlwi r5, r25, 24
/* 81479070 | 57 46 06 3E */	clrlwi r6, r26, 24
/* 81479074 | 7F 67 DB 78 */	mr r7, r27
/* 81479078 | 57 88 06 3E */	clrlwi r8, r28, 24
/* 8147907C | 7F E9 FB 78 */	mr r9, r31
/* 81479080 | 4B FF F7 39 */	bl ZiCharInfo2
/* 81479084 | 7C 7D 1B 78 */	mr r29, r3
/* 81479088 | 9B DF 00 18 */	stb r30, 0x18(r31)
.L_8147908C:
/* 8147908C | 7F A3 EB 78 */	mr r3, r29
/* 81479090 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81479094 | 48 18 04 69 */	bl _restgpr_23
/* 81479098 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147909C | 7C 08 03 A6 */	mtlr r0
/* 814790A0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814790A4 | 4E 80 00 20 */	blr
.endfn Zi8GetCharInfo2

# 0x81617EF0..0x81617F10 | size: 0x20
.rodata
.balign 8

# .rodata:0x0 | 0x81617EF0 | size: 0x20
.obj zi8CangjieCodes, global
	.4byte 0x01020305
	.4byte 0x0607090A
	.4byte 0x0B0D0E0F
	.4byte 0x11121314
	.4byte 0x15161719
	.4byte 0x1A1B1D1E
	.4byte 0x1F000000
	.4byte 0x00000000
.endobj zi8CangjieCodes

# 0x8166AC10..0x8166B260 | size: 0x650
.data
.balign 8

# .data:0x0 | 0x8166AC10 | size: 0xE8
.obj jumptable_8166AC10, local
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81476AE8
	.rel Zi8GetPInfo, .L_81476B38
	.rel Zi8GetPInfo, .L_81476B88
	.rel Zi8GetPInfo, .L_81476BF4
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81476C28
	.rel Zi8GetPInfo, .L_81476C40
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81476C74
	.rel Zi8GetPInfo, .L_81476CA8
	.rel Zi8GetPInfo, .L_81476CDC
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81476D2C
	.rel Zi8GetPInfo, .L_81476D98
	.rel Zi8GetPInfo, .L_81476DE8
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81476E54
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81476EA4
	.rel Zi8GetPInfo, .L_81476ED8
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81476EF0
	.rel Zi8GetPInfo, .L_81476F24
	.rel Zi8GetPInfo, .L_81476F58
	.rel Zi8GetPInfo, .L_81476F8C
	.rel Zi8GetPInfo, .L_8147700C
	.rel Zi8GetPInfo, .L_81477040
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477090
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_814770A8
	.rel Zi8GetPInfo, .L_814770DC
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477110
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477160
	.rel Zi8GetPInfo, .L_81477194
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_814771AC
	.rel Zi8GetPInfo, .L_814771E0
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477230
	.rel Zi8GetPInfo, .L_81477264
	.rel Zi8GetPInfo, .L_8147727C
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_81477318
	.rel Zi8GetPInfo, .L_814772B0
	.rel Zi8GetPInfo, .L_814772C8
.endobj jumptable_8166AC10

# .data:0xE8 | 0x8166ACF8 | size: 0x100
.obj jumptable_8166ACF8, local
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476850
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476868
	.rel Zi8GetPInfo, .L_814768B0
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_814768C8
	.rel Zi8GetPInfo, .L_81476910
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476928
	.rel Zi8GetPInfo, .L_814769E8
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_814769D0
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_814768F8
	.rel Zi8GetPInfo, .L_81476A34
	.rel Zi8GetPInfo, .L_814769A0
	.rel Zi8GetPInfo, .L_81476A68
	.rel Zi8GetPInfo, .L_814768E0
	.rel Zi8GetPInfo, .L_81476A00
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476958
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476970
	.rel Zi8GetPInfo, .L_814769B8
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476880
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476898
	.rel Zi8GetPInfo, .L_81476940
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476988
	.rel Zi8GetPInfo, .L_81476820
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476A9C
	.rel Zi8GetPInfo, .L_81476838
.endobj jumptable_8166ACF8

# .data:0x1E8 | 0x8166ADF8 | size: 0x100
.obj jumptable_8166ADF8, local
	.rel Zi8GetZInfo, .L_814777E8
	.rel Zi8GetZInfo, .L_81477D54
	.rel Zi8GetZInfo, .L_81477D74
	.rel Zi8GetZInfo, .L_81477D94
	.rel Zi8GetZInfo, .L_81477DB4
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F28
	.rel Zi8GetZInfo, .L_81477DD4
	.rel Zi8GetZInfo, .L_81477E30
	.rel Zi8GetZInfo, .L_81477E50
	.rel Zi8GetZInfo, .L_81477E70
	.rel Zi8GetZInfo, .L_81477E90
	.rel Zi8GetZInfo, .L_81477ED0
	.rel Zi8GetZInfo, .L_81477EB0
	.rel Zi8GetZInfo, .L_81477EF0
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477808
	.rel Zi8GetZInfo, .L_81477864
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_814778DC
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477844
	.rel Zi8GetZInfo, .L_81477DF4
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_814778A0
	.rel Zi8GetZInfo, .L_81477918
	.rel Zi8GetZInfo, .L_81477954
	.rel Zi8GetZInfo, .L_814779CC
	.rel Zi8GetZInfo, .L_81477990
	.rel Zi8GetZInfo, .L_81477A08
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477BEC
	.rel Zi8GetZInfo, .L_81477C28
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477AC0
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477AA0
	.rel Zi8GetZInfo, .L_81477C64
	.rel Zi8GetZInfo, .L_81477CA0
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477B38
	.rel Zi8GetZInfo, .L_81477CDC
	.rel Zi8GetZInfo, .L_81477BB0
	.rel Zi8GetZInfo, .L_81477D18
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477AC0
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477A80
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477AFC
	.rel Zi8GetZInfo, .L_81477F10
	.rel Zi8GetZInfo, .L_81477B74
	.rel Zi8GetZInfo, .L_81477A44
.endobj jumptable_8166ADF8

# .data:0x2E8 | 0x8166AEF8 | size: 0x100
.obj jumptable_8166AEF8, local
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777C4
	.rel Zi8GetZInfo, .L_8147756C
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_8147772C
	.rel Zi8GetZInfo, .L_814775EC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814776AC
	.rel Zi8GetZInfo, .L_8147774C
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_8147764C
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_8147754C
	.rel Zi8GetZInfo, .L_8147752C
	.rel Zi8GetZInfo, .L_8147770C
	.rel Zi8GetZInfo, .L_814776EC
	.rel Zi8GetZInfo, .L_8147778C
	.rel Zi8GetZInfo, .L_8147776C
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_8147766C
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_8147762C
	.rel Zi8GetZInfo, .L_814776CC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814775AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_8147760C
	.rel Zi8GetZInfo, .L_8147758C
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814775CC
	.rel Zi8GetZInfo, .L_8147750C
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_814777AC
	.rel Zi8GetZInfo, .L_8147768C
.endobj jumptable_8166AEF8

# .data:0x3E8 | 0x8166AFF8 | size: 0x30
.obj jumptable_8166AFF8, local
	.rel zi8StrokeCode, .L_81478070
	.rel zi8StrokeCode, .L_8147807C
	.rel zi8StrokeCode, .L_81478088
	.rel zi8StrokeCode, .L_81478094
	.rel zi8StrokeCode, .L_814780A0
	.rel zi8StrokeCode, .L_814780AC
	.rel zi8StrokeCode, .L_814780B8
	.rel zi8StrokeCode, .L_814780C4
	.rel zi8StrokeCode, .L_814780D0
	.rel zi8StrokeCode, .L_814780E8
	.rel zi8StrokeCode, .L_814780E8
	.rel zi8StrokeCode, .L_814780DC
.endobj jumptable_8166AFF8

# .data:0x418 | 0x8166B028 | size: 0x128
.obj jumptable_8166B028, local
	.rel Zi81KeyPYinfo, .L_8147849C
	.rel Zi81KeyPYinfo, .L_814784A8
	.rel Zi81KeyPYinfo, .L_814784B4
	.rel Zi81KeyPYinfo, .L_814784C0
	.rel Zi81KeyPYinfo, .L_814784CC
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_814784D8
	.rel Zi81KeyPYinfo, .L_81478364
	.rel Zi81KeyPYinfo, .L_81478370
	.rel Zi81KeyPYinfo, .L_8147837C
	.rel Zi81KeyPYinfo, .L_81478388
	.rel Zi81KeyPYinfo, .L_81478394
	.rel Zi81KeyPYinfo, .L_814783A0
	.rel Zi81KeyPYinfo, .L_814783AC
	.rel Zi81KeyPYinfo, .L_814783B8
	.rel Zi81KeyPYinfo, .L_814783C4
	.rel Zi81KeyPYinfo, .L_814783D0
	.rel Zi81KeyPYinfo, .L_814783DC
	.rel Zi81KeyPYinfo, .L_814783E8
	.rel Zi81KeyPYinfo, .L_814783F4
	.rel Zi81KeyPYinfo, .L_81478400
	.rel Zi81KeyPYinfo, .L_8147840C
	.rel Zi81KeyPYinfo, .L_81478418
	.rel Zi81KeyPYinfo, .L_81478424
	.rel Zi81KeyPYinfo, .L_81478430
	.rel Zi81KeyPYinfo, .L_8147843C
	.rel Zi81KeyPYinfo, .L_81478448
	.rel Zi81KeyPYinfo, .L_81478454
	.rel Zi81KeyPYinfo, .L_81478460
	.rel Zi81KeyPYinfo, .L_8147846C
	.rel Zi81KeyPYinfo, .L_81478478
	.rel Zi81KeyPYinfo, .L_81478484
	.rel Zi81KeyPYinfo, .L_81478490
.endobj jumptable_8166B028

# .data:0x540 | 0x8166B150 | size: 0xC4
.obj jumptable_8166B150, local
	.rel Zi81KeyZYinfo, .L_81478544
	.rel Zi81KeyZYinfo, .L_81478550
	.rel Zi81KeyZYinfo, .L_8147855C
	.rel Zi81KeyZYinfo, .L_81478568
	.rel Zi81KeyZYinfo, .L_81478574
	.rel Zi81KeyZYinfo, .L_81478580
	.rel Zi81KeyZYinfo, .L_8147858C
	.rel Zi81KeyZYinfo, .L_81478598
	.rel Zi81KeyZYinfo, .L_814785A4
	.rel Zi81KeyZYinfo, .L_814785B0
	.rel Zi81KeyZYinfo, .L_814785BC
	.rel Zi81KeyZYinfo, .L_814785C8
	.rel Zi81KeyZYinfo, .L_814785D4
	.rel Zi81KeyZYinfo, .L_814785E0
	.rel Zi81KeyZYinfo, .L_814785EC
	.rel Zi81KeyZYinfo, .L_814785F8
	.rel Zi81KeyZYinfo, .L_81478604
	.rel Zi81KeyZYinfo, .L_81478610
	.rel Zi81KeyZYinfo, .L_8147861C
	.rel Zi81KeyZYinfo, .L_81478628
	.rel Zi81KeyZYinfo, .L_81478634
	.rel Zi81KeyZYinfo, .L_81478640
	.rel Zi81KeyZYinfo, .L_8147864C
	.rel Zi81KeyZYinfo, .L_81478658
	.rel Zi81KeyZYinfo, .L_81478664
	.rel Zi81KeyZYinfo, .L_81478670
	.rel Zi81KeyZYinfo, .L_8147867C
	.rel Zi81KeyZYinfo, .L_81478688
	.rel Zi81KeyZYinfo, .L_81478694
	.rel Zi81KeyZYinfo, .L_814786A0
	.rel Zi81KeyZYinfo, .L_814786AC
	.rel Zi81KeyZYinfo, .L_814786B8
	.rel Zi81KeyZYinfo, .L_814786C4
	.rel Zi81KeyZYinfo, .L_814786D0
	.rel Zi81KeyZYinfo, .L_814786DC
	.rel Zi81KeyZYinfo, .L_814786E8
	.rel Zi81KeyZYinfo, .L_814786F4
	.rel Zi81KeyZYinfo, .L_8147873C
	.rel Zi81KeyZYinfo, .L_8147873C
	.rel Zi81KeyZYinfo, .L_8147873C
	.rel Zi81KeyZYinfo, .L_8147873C
	.rel Zi81KeyZYinfo, .L_8147873C
	.rel Zi81KeyZYinfo, .L_8147873C
	.rel Zi81KeyZYinfo, .L_8147873C
	.rel Zi81KeyZYinfo, .L_81478700
	.rel Zi81KeyZYinfo, .L_8147870C
	.rel Zi81KeyZYinfo, .L_81478718
	.rel Zi81KeyZYinfo, .L_81478724
	.rel Zi81KeyZYinfo, .L_81478730
.endobj jumptable_8166B150

# .data:0x604 | 0x8166B214 | size: 0x48
.obj jumptable_8166B214, local
	.rel ZiCharInfo2, .L_81478C7C
	.rel ZiCharInfo2, .L_81478C9C
	.rel ZiCharInfo2, .L_81478CE4
	.rel ZiCharInfo2, .L_81478C9C
	.rel ZiCharInfo2, .L_81478CE4
	.rel ZiCharInfo2, .L_81478D2C
	.rel ZiCharInfo2, .L_81478D2C
	.rel ZiCharInfo2, .L_81478C1C
	.rel ZiCharInfo2, .L_81478C1C
	.rel ZiCharInfo2, .L_81478C1C
	.rel ZiCharInfo2, .L_81478C1C
	.rel ZiCharInfo2, .L_81478D2C
	.rel ZiCharInfo2, .L_81478D2C
	.rel ZiCharInfo2, .L_81478D2C
	.rel ZiCharInfo2, .L_81478D2C
	.rel ZiCharInfo2, .L_81478D2C
	.rel ZiCharInfo2, .L_81478C7C
	.rel ZiCharInfo2, .L_81478C7C
.endobj jumptable_8166B214

# .data:0x64C | 0x8166B25C | size: 0x4
.obj gap_08_8166B25C_data, global
.hidden gap_08_8166B25C_data
	.4byte 0x00000000
.endobj gap_08_8166B25C_data
