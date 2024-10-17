.include "macros.inc"
.file "zi8utils.c"

# 0x813306A0..0x813306C0 | size: 0x20
.section extab, "a"
.balign 4

# extab:0x0 | 0x813306A0 | size: 0x8
.obj "@etb_813306A0", local
.hidden "@etb_813306A0"
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
.endobj "@etb_813306A0"

# extab:0x8 | 0x813306A8 | size: 0x8
.obj "@etb_813306A8", local
.hidden "@etb_813306A8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_813306A8"

# extab:0x10 | 0x813306B0 | size: 0x8
.obj "@etb_813306B0", local
.hidden "@etb_813306B0"
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
.endobj "@etb_813306B0"

# extab:0x18 | 0x813306B8 | size: 0x8
.obj "@etb_813306B8", local
.hidden "@etb_813306B8"
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
.endobj "@etb_813306B8"

# 0x81331380..0x813313B0 | size: 0x30
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331380 | size: 0xC
.obj "@eti_81331380", local
.hidden "@eti_81331380"
	.4byte Zi8Uni2Ptr
	.4byte 0x00000460
	.4byte "@etb_813306A0"
.endobj "@eti_81331380"

# extabindex:0xC | 0x8133138C | size: 0xC
.obj "@eti_8133138C", local
.hidden "@eti_8133138C"
	.4byte Zi8Uni2Ord
	.4byte 0x00000034
	.4byte "@etb_813306A8"
.endobj "@eti_8133138C"

# extabindex:0x18 | 0x81331398 | size: 0xC
.obj "@eti_81331398", local
.hidden "@eti_81331398"
	.4byte Zi8Ord2Uni
	.4byte 0x000000CC
	.4byte "@etb_813306B0"
.endobj "@eti_81331398"

# extabindex:0x24 | 0x813313A4 | size: 0xC
.obj "@eti_813313A4", local
.hidden "@eti_813313A4"
	.4byte Zi8Ord2Ord
	.4byte 0x00000104
	.4byte "@etb_813306B8"
.endobj "@eti_813313A4"

# 0x8147EF34..0x8147F598 | size: 0x664
.text
.balign 4

# .text:0x0 | 0x8147EF34 | size: 0x460
.fn Zi8Uni2Ptr, global
/* 8147EF34 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147EF38 | 7C 08 02 A6 */	mflr r0
/* 8147EF3C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147EF40 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147EF44 | 48 17 A5 79 */	bl _savegpr_26
/* 8147EF48 | 7C 7A 1B 78 */	mr r26, r3
/* 8147EF4C | 7C 9B 23 78 */	mr r27, r4
/* 8147EF50 | 7C BD 2B 78 */	mr r29, r5
/* 8147EF54 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8147EF58 | 54 00 C6 3E */	extrwi r0, r0, 8, 16
/* 8147EF5C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147EF60 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8147EF64 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147EF68 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8147EF6C | 38 60 00 01 */	li r3, 0x1
/* 8147EF70 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147EF74 | 38 80 00 00 */	li r4, 0x0
/* 8147EF78 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147EF7C | 7F A5 EB 78 */	mr r5, r29
/* 8147EF80 | 4B FE 04 B1 */	bl Zi8GetTableCount
/* 8147EF84 | B0 61 00 0A */	sth r3, 0xa(r1)
/* 8147EF88 | 38 60 00 01 */	li r3, 0x1
/* 8147EF8C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147EF90 | 38 80 00 00 */	li r4, 0x0
/* 8147EF94 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147EF98 | 7F A5 EB 78 */	mr r5, r29
/* 8147EF9C | 4B FE 04 15 */	bl Zi8GetTableAddress
/* 8147EFA0 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8147EFA4 | 38 60 00 01 */	li r3, 0x1
/* 8147EFA8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147EFAC | 38 80 00 01 */	li r4, 0x1
/* 8147EFB0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147EFB4 | 7F A5 EB 78 */	mr r5, r29
/* 8147EFB8 | 4B FE 03 F9 */	bl Zi8GetTableAddress
/* 8147EFBC | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8147EFC0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8147EFC4 | 40 82 01 84 */	bne .L_8147F148
/* 8147EFC8 | 3B C0 00 00 */	li r30, 0x0
/* 8147EFCC | 48 00 01 70 */	b .L_8147F13C
.L_8147EFD0:
/* 8147EFD0 | 57 44 04 3E */	clrlwi r4, r26, 16
/* 8147EFD4 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147EFD8 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147EFDC | 7C 7D 02 14 */	add r3, r29, r0
/* 8147EFE0 | A0 03 00 20 */	lhz r0, 0x20(r3)
/* 8147EFE4 | 7C 04 00 40 */	cmplw r4, r0
/* 8147EFE8 | 40 82 01 50 */	bne .L_8147F138
/* 8147EFEC | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147EFF0 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147EFF4 | 7C 7D 02 14 */	add r3, r29, r0
/* 8147EFF8 | A3 C3 00 A0 */	lhz r30, 0xa0(r3)
/* 8147EFFC | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 8147F000 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147F004 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8147F008 | 7F E3 02 14 */	add r31, r3, r0
/* 8147F00C | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8147F010 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8147F014 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F018 | 40 80 01 30 */	bge .L_8147F148
/* 8147F01C | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8147F020 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F024 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8147F028 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F02C | 40 82 01 1C */	bne .L_8147F148
/* 8147F030 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147F034 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F038 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147F03C | 7C 03 00 40 */	cmplw r3, r0
/* 8147F040 | 40 82 01 08 */	bne .L_8147F148
/* 8147F044 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8147F048 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 8147F04C | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147F050 | 54 04 80 1E */	slwi r4, r0, 16
/* 8147F054 | 88 7F 00 0B */	lbz r3, 0xb(r31)
/* 8147F058 | 88 1F 00 0A */	lbz r0, 0xa(r31)
/* 8147F05C | 54 00 40 2E */	slwi r0, r0, 8
/* 8147F060 | 7C 60 03 78 */	or r0, r3, r0
/* 8147F064 | 7C 80 03 78 */	or r0, r4, r0
/* 8147F068 | 7F 85 02 14 */	add r28, r5, r0
/* 8147F06C | 88 1D 00 16 */	lbz r0, 0x16(r29)
/* 8147F070 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F074 | 41 82 00 44 */	beq .L_8147F0B8
/* 8147F078 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 8147F07C | 54 00 07 7E */	clrlwi r0, r0, 29
/* 8147F080 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8147F084 | 41 82 00 28 */	beq .L_8147F0AC
/* 8147F088 | 40 80 00 2C */	bge .L_8147F0B4
/* 8147F08C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8147F090 | 41 82 00 0C */	beq .L_8147F09C
/* 8147F094 | 40 80 00 10 */	bge .L_8147F0A4
/* 8147F098 | 48 00 00 1C */	b .L_8147F0B4
.L_8147F09C:
/* 8147F09C | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 8147F0A0 | 48 00 00 18 */	b .L_8147F0B8
.L_8147F0A4:
/* 8147F0A4 | 3B 9C 00 03 */	addi r28, r28, 0x3
/* 8147F0A8 | 48 00 00 10 */	b .L_8147F0B8
.L_8147F0AC:
/* 8147F0AC | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 8147F0B0 | 48 00 00 08 */	b .L_8147F0B8
.L_8147F0B4:
/* 8147F0B4 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_8147F0B8:
/* 8147F0B8 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 8147F0BC | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147F0C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F0C4 | 41 82 00 84 */	beq .L_8147F148
/* 8147F0C8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8147F0CC | 41 82 00 64 */	beq .L_8147F130
/* 8147F0D0 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147F0D4 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147F0D8 | 98 7B 00 00 */	stb r3, 0x0(r27)
/* 8147F0DC | 98 1B 00 01 */	stb r0, 0x1(r27)
/* 8147F0E0 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 8147F0E4 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8147F0E8 | 98 7B 00 02 */	stb r3, 0x2(r27)
/* 8147F0EC | 98 1B 00 03 */	stb r0, 0x3(r27)
/* 8147F0F0 | 88 7F 00 04 */	lbz r3, 0x4(r31)
/* 8147F0F4 | 88 1F 00 05 */	lbz r0, 0x5(r31)
/* 8147F0F8 | 98 7B 00 04 */	stb r3, 0x4(r27)
/* 8147F0FC | 98 1B 00 05 */	stb r0, 0x5(r27)
/* 8147F100 | 88 7F 00 06 */	lbz r3, 0x6(r31)
/* 8147F104 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147F108 | 98 7B 00 06 */	stb r3, 0x6(r27)
/* 8147F10C | 98 1B 00 07 */	stb r0, 0x7(r27)
/* 8147F110 | 88 1F 00 08 */	lbz r0, 0x8(r31)
/* 8147F114 | 98 1B 00 08 */	stb r0, 0x8(r27)
/* 8147F118 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 8147F11C | 98 1B 00 09 */	stb r0, 0x9(r27)
/* 8147F120 | 88 1F 00 0A */	lbz r0, 0xa(r31)
/* 8147F124 | 98 1B 00 0A */	stb r0, 0xa(r27)
/* 8147F128 | 88 1F 00 0B */	lbz r0, 0xb(r31)
/* 8147F12C | 98 1B 00 0B */	stb r0, 0xb(r27)
.L_8147F130:
/* 8147F130 | 7F C3 F3 78 */	mr r3, r30
/* 8147F134 | 48 00 02 48 */	b .L_8147F37C
.L_8147F138:
/* 8147F138 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147F13C:
/* 8147F13C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147F140 | 28 00 00 40 */	cmplwi r0, 0x40
/* 8147F144 | 41 80 FE 8C */	blt .L_8147EFD0
.L_8147F148:
/* 8147F148 | 83 E1 00 10 */	lwz r31, 0x10(r1)
/* 8147F14C | 80 1D 1B 18 */	lwz r0, 0x1b18(r29)
/* 8147F150 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F154 | 41 82 01 68 */	beq .L_8147F2BC
/* 8147F158 | 88 1D 1B 24 */	lbz r0, 0x1b24(r29)
/* 8147F15C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F160 | 88 1D 00 18 */	lbz r0, 0x18(r29)
/* 8147F164 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F168 | 40 82 01 54 */	bne .L_8147F2BC
/* 8147F16C | 57 43 04 3E */	clrlwi r3, r26, 16
/* 8147F170 | A0 1D 1B 1C */	lhz r0, 0x1b1c(r29)
/* 8147F174 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F178 | 41 80 00 24 */	blt .L_8147F19C
/* 8147F17C | 57 43 04 3E */	clrlwi r3, r26, 16
/* 8147F180 | A0 1D 1B 1E */	lhz r0, 0x1b1e(r29)
/* 8147F184 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F188 | 41 81 00 14 */	bgt .L_8147F19C
/* 8147F18C | A0 1D 1B 1C */	lhz r0, 0x1b1c(r29)
/* 8147F190 | 7C 00 D0 50 */	subf r0, r0, r26
/* 8147F194 | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 8147F198 | 48 00 00 54 */	b .L_8147F1EC
.L_8147F19C:
/* 8147F19C | 57 43 04 3E */	clrlwi r3, r26, 16
/* 8147F1A0 | A0 1D 1B 20 */	lhz r0, 0x1b20(r29)
/* 8147F1A4 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F1A8 | 41 80 00 38 */	blt .L_8147F1E0
/* 8147F1AC | 57 43 04 3E */	clrlwi r3, r26, 16
/* 8147F1B0 | A0 1D 1B 22 */	lhz r0, 0x1b22(r29)
/* 8147F1B4 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F1B8 | 41 81 00 28 */	bgt .L_8147F1E0
/* 8147F1BC | A0 9D 1B 1C */	lhz r4, 0x1b1c(r29)
/* 8147F1C0 | A0 7D 1B 1E */	lhz r3, 0x1b1e(r29)
/* 8147F1C4 | A0 1D 1B 20 */	lhz r0, 0x1b20(r29)
/* 8147F1C8 | 7C 00 D0 50 */	subf r0, r0, r26
/* 8147F1CC | 7C 03 02 14 */	add r0, r3, r0
/* 8147F1D0 | 7C 64 00 50 */	subf r3, r4, r0
/* 8147F1D4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147F1D8 | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 8147F1DC | 48 00 00 10 */	b .L_8147F1EC
.L_8147F1E0:
/* 8147F1E0 | 3C 60 00 01 */	lis r3, 0x1
/* 8147F1E4 | 38 63 FF FF */	subi r3, r3, 0x1
/* 8147F1E8 | 48 00 01 94 */	b .L_8147F37C
.L_8147F1EC:
/* 8147F1EC | 80 7D 1B 18 */	lwz r3, 0x1b18(r29)
/* 8147F1F0 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147F1F4 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147F1F8 | 7F C3 02 2E */	lhzx r30, r3, r0
/* 8147F1FC | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147F200 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 8147F204 | 41 82 00 AC */	beq .L_8147F2B0
/* 8147F208 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 8147F20C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147F210 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8147F214 | 7F E3 02 14 */	add r31, r3, r0
/* 8147F218 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8147F21C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F220 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8147F224 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F228 | 40 82 00 88 */	bne .L_8147F2B0
/* 8147F22C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147F230 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F234 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147F238 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F23C | 40 82 00 74 */	bne .L_8147F2B0
/* 8147F240 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8147F244 | 41 82 00 64 */	beq .L_8147F2A8
/* 8147F248 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147F24C | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147F250 | 98 7B 00 00 */	stb r3, 0x0(r27)
/* 8147F254 | 98 1B 00 01 */	stb r0, 0x1(r27)
/* 8147F258 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 8147F25C | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8147F260 | 98 7B 00 02 */	stb r3, 0x2(r27)
/* 8147F264 | 98 1B 00 03 */	stb r0, 0x3(r27)
/* 8147F268 | 88 7F 00 04 */	lbz r3, 0x4(r31)
/* 8147F26C | 88 1F 00 05 */	lbz r0, 0x5(r31)
/* 8147F270 | 98 7B 00 04 */	stb r3, 0x4(r27)
/* 8147F274 | 98 1B 00 05 */	stb r0, 0x5(r27)
/* 8147F278 | 88 7F 00 06 */	lbz r3, 0x6(r31)
/* 8147F27C | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147F280 | 98 7B 00 06 */	stb r3, 0x6(r27)
/* 8147F284 | 98 1B 00 07 */	stb r0, 0x7(r27)
/* 8147F288 | 88 1F 00 08 */	lbz r0, 0x8(r31)
/* 8147F28C | 98 1B 00 08 */	stb r0, 0x8(r27)
/* 8147F290 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 8147F294 | 98 1B 00 09 */	stb r0, 0x9(r27)
/* 8147F298 | 88 1F 00 0A */	lbz r0, 0xa(r31)
/* 8147F29C | 98 1B 00 0A */	stb r0, 0xa(r27)
/* 8147F2A0 | 88 1F 00 0B */	lbz r0, 0xb(r31)
/* 8147F2A4 | 98 1B 00 0B */	stb r0, 0xb(r27)
.L_8147F2A8:
/* 8147F2A8 | 7F C3 F3 78 */	mr r3, r30
/* 8147F2AC | 48 00 00 D0 */	b .L_8147F37C
.L_8147F2B0:
/* 8147F2B0 | 3C 60 00 01 */	lis r3, 0x1
/* 8147F2B4 | 38 63 FF FF */	subi r3, r3, 0x1
/* 8147F2B8 | 48 00 00 C4 */	b .L_8147F37C
.L_8147F2BC:
/* 8147F2BC | 3B C0 00 00 */	li r30, 0x0
/* 8147F2C0 | 48 00 00 A4 */	b .L_8147F364
.L_8147F2C4:
/* 8147F2C4 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147F2C8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F2CC | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147F2D0 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F2D4 | 40 82 00 88 */	bne .L_8147F35C
/* 8147F2D8 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8147F2DC | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F2E0 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8147F2E4 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F2E8 | 40 82 00 74 */	bne .L_8147F35C
/* 8147F2EC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8147F2F0 | 41 82 00 64 */	beq .L_8147F354
/* 8147F2F4 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147F2F8 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147F2FC | 98 7B 00 00 */	stb r3, 0x0(r27)
/* 8147F300 | 98 1B 00 01 */	stb r0, 0x1(r27)
/* 8147F304 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 8147F308 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8147F30C | 98 7B 00 02 */	stb r3, 0x2(r27)
/* 8147F310 | 98 1B 00 03 */	stb r0, 0x3(r27)
/* 8147F314 | 88 7F 00 04 */	lbz r3, 0x4(r31)
/* 8147F318 | 88 1F 00 05 */	lbz r0, 0x5(r31)
/* 8147F31C | 98 7B 00 04 */	stb r3, 0x4(r27)
/* 8147F320 | 98 1B 00 05 */	stb r0, 0x5(r27)
/* 8147F324 | 88 7F 00 06 */	lbz r3, 0x6(r31)
/* 8147F328 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147F32C | 98 7B 00 06 */	stb r3, 0x6(r27)
/* 8147F330 | 98 1B 00 07 */	stb r0, 0x7(r27)
/* 8147F334 | 88 1F 00 08 */	lbz r0, 0x8(r31)
/* 8147F338 | 98 1B 00 08 */	stb r0, 0x8(r27)
/* 8147F33C | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 8147F340 | 98 1B 00 09 */	stb r0, 0x9(r27)
/* 8147F344 | 88 1F 00 0A */	lbz r0, 0xa(r31)
/* 8147F348 | 98 1B 00 0A */	stb r0, 0xa(r27)
/* 8147F34C | 88 1F 00 0B */	lbz r0, 0xb(r31)
/* 8147F350 | 98 1B 00 0B */	stb r0, 0xb(r27)
.L_8147F354:
/* 8147F354 | 7F C3 F3 78 */	mr r3, r30
/* 8147F358 | 48 00 00 24 */	b .L_8147F37C
.L_8147F35C:
/* 8147F35C | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8147F360 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147F364:
/* 8147F364 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8147F368 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8147F36C | 7C 03 00 40 */	cmplw r3, r0
/* 8147F370 | 41 80 FF 54 */	blt .L_8147F2C4
/* 8147F374 | 3C 60 00 01 */	lis r3, 0x1
/* 8147F378 | 38 63 FF FF */	subi r3, r3, 0x1
.L_8147F37C:
/* 8147F37C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147F380 | 48 17 A1 89 */	bl _restgpr_26
/* 8147F384 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147F388 | 7C 08 03 A6 */	mtlr r0
/* 8147F38C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147F390 | 4E 80 00 20 */	blr
.endfn Zi8Uni2Ptr

# .text:0x460 | 0x8147F394 | size: 0x34
.fn Zi8Uni2Ord, global
/* 8147F394 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8147F398 | 7C 08 02 A6 */	mflr r0
/* 8147F39C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8147F3A0 | B0 61 00 08 */	sth r3, 0x8(r1)
/* 8147F3A4 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8147F3A8 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 8147F3AC | 38 80 00 00 */	li r4, 0x0
/* 8147F3B0 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8147F3B4 | 4B FF FB 81 */	bl Zi8Uni2Ptr
/* 8147F3B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8147F3BC | 7C 08 03 A6 */	mtlr r0
/* 8147F3C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8147F3C4 | 4E 80 00 20 */	blr
.endfn Zi8Uni2Ord

# .text:0x494 | 0x8147F3C8 | size: 0xCC
.fn Zi8Ord2Uni, global
/* 8147F3C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8147F3CC | 7C 08 02 A6 */	mflr r0
/* 8147F3D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147F3D4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8147F3D8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8147F3DC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8147F3E0 | 7C 7D 1B 78 */	mr r29, r3
/* 8147F3E4 | 7C 9E 23 78 */	mr r30, r4
/* 8147F3E8 | 38 60 00 01 */	li r3, 0x1
/* 8147F3EC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147F3F0 | 38 80 00 00 */	li r4, 0x0
/* 8147F3F4 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147F3F8 | 7F C5 F3 78 */	mr r5, r30
/* 8147F3FC | 4B FE 00 35 */	bl Zi8GetTableCount
/* 8147F400 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147F404 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8147F408 | 7C 00 18 40 */	cmplw r0, r3
/* 8147F40C | 41 80 00 1C */	blt .L_8147F428
/* 8147F410 | 38 60 01 32 */	li r3, 0x132
/* 8147F414 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147F418 | 7F C4 F3 78 */	mr r4, r30
/* 8147F41C | 48 00 50 61 */	bl Zi8LogError
/* 8147F420 | 38 60 00 00 */	li r3, 0x0
/* 8147F424 | 48 00 00 54 */	b .L_8147F478
.L_8147F428:
/* 8147F428 | 38 60 00 01 */	li r3, 0x1
/* 8147F42C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147F430 | 38 80 00 00 */	li r4, 0x0
/* 8147F434 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147F438 | 7F C5 F3 78 */	mr r5, r30
/* 8147F43C | 4B FD FF 75 */	bl Zi8GetTableAddress
/* 8147F440 | 7C 7F 1B 78 */	mr r31, r3
/* 8147F444 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 8147F448 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8147F44C | 7F FF 02 14 */	add r31, r31, r0
/* 8147F450 | 38 60 00 64 */	li r3, 0x64
/* 8147F454 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147F458 | 7F C4 F3 78 */	mr r4, r30
/* 8147F45C | 48 00 50 21 */	bl Zi8LogError
/* 8147F460 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8147F464 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147F468 | 54 03 40 2E */	slwi r3, r0, 8
/* 8147F46C | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147F470 | 7C 03 02 14 */	add r0, r3, r0
/* 8147F474 | 54 03 04 3E */	clrlwi r3, r0, 16
.L_8147F478:
/* 8147F478 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8147F47C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8147F480 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8147F484 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147F488 | 7C 08 03 A6 */	mtlr r0
/* 8147F48C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8147F490 | 4E 80 00 20 */	blr
.endfn Zi8Ord2Uni

# .text:0x560 | 0x8147F494 | size: 0x104
.fn Zi8Ord2Ord, global
/* 8147F494 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8147F498 | 7C 08 02 A6 */	mflr r0
/* 8147F49C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8147F4A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8147F4A4 | 48 17 A0 1D */	bl _savegpr_27
/* 8147F4A8 | 7C 7E 1B 78 */	mr r30, r3
/* 8147F4AC | 7C 9D 23 78 */	mr r29, r4
/* 8147F4B0 | 38 60 00 01 */	li r3, 0x1
/* 8147F4B4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147F4B8 | 38 80 00 00 */	li r4, 0x0
/* 8147F4BC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147F4C0 | 7F A5 EB 78 */	mr r5, r29
/* 8147F4C4 | 4B FD FF 6D */	bl Zi8GetTableCount
/* 8147F4C8 | 7C 7B 1B 78 */	mr r27, r3
/* 8147F4CC | 38 60 00 01 */	li r3, 0x1
/* 8147F4D0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147F4D4 | 38 80 00 00 */	li r4, 0x0
/* 8147F4D8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147F4DC | 7F A5 EB 78 */	mr r5, r29
/* 8147F4E0 | 4B FD FE D1 */	bl Zi8GetTableAddress
/* 8147F4E4 | 7C 7C 1B 78 */	mr r28, r3
/* 8147F4E8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147F4EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F4F0 | 41 82 00 14 */	beq .L_8147F504
/* 8147F4F4 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8147F4F8 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147F4FC | 7C 03 00 40 */	cmplw r3, r0
/* 8147F500 | 41 80 00 1C */	blt .L_8147F51C
.L_8147F504:
/* 8147F504 | 38 60 01 32 */	li r3, 0x132
/* 8147F508 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147F50C | 7F A4 EB 78 */	mr r4, r29
/* 8147F510 | 48 00 4F 6D */	bl Zi8LogError
/* 8147F514 | 7F C3 F3 78 */	mr r3, r30
/* 8147F518 | 48 00 00 68 */	b .L_8147F580
.L_8147F51C:
/* 8147F51C | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8147F520 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147F524 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8147F528 | 7F FC 02 14 */	add r31, r28, r0
/* 8147F52C | 48 00 00 34 */	b .L_8147F560
.L_8147F530:
/* 8147F530 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8147F534 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F538 | 88 1F 00 12 */	lbz r0, 0x12(r31)
/* 8147F53C | 7C 03 00 40 */	cmplw r3, r0
/* 8147F540 | 40 82 00 2C */	bne .L_8147F56C
/* 8147F544 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147F548 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147F54C | 88 1F 00 13 */	lbz r0, 0x13(r31)
/* 8147F550 | 7C 03 00 40 */	cmplw r3, r0
/* 8147F554 | 40 82 00 18 */	bne .L_8147F56C
/* 8147F558 | 3B FF FF F4 */	subi r31, r31, 0xc
/* 8147F55C | 3B DE FF FF */	subi r30, r30, 0x1
.L_8147F560:
/* 8147F560 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147F564 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147F568 | 40 82 FF C8 */	bne .L_8147F530
.L_8147F56C:
/* 8147F56C | 38 60 00 64 */	li r3, 0x64
/* 8147F570 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147F574 | 7F A4 EB 78 */	mr r4, r29
/* 8147F578 | 48 00 4F 05 */	bl Zi8LogError
/* 8147F57C | 7F C3 F3 78 */	mr r3, r30
.L_8147F580:
/* 8147F580 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8147F584 | 48 17 9F 89 */	bl _restgpr_27
/* 8147F588 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8147F58C | 7C 08 03 A6 */	mtlr r0
/* 8147F590 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8147F594 | 4E 80 00 20 */	blr
.endfn Zi8Ord2Ord
