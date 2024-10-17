.include "macros.inc"
.file "zi8match.c"

# 0x81330650..0x813306A0 | size: 0x50
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330650 | size: 0x8
.obj "@etb_81330650", local
.hidden "@etb_81330650"
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
.endobj "@etb_81330650"

# extab:0x8 | 0x81330658 | size: 0x8
.obj "@etb_81330658", local
.hidden "@etb_81330658"
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
.endobj "@etb_81330658"

# extab:0x10 | 0x81330660 | size: 0x8
.obj "@etb_81330660", local
.hidden "@etb_81330660"
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
.endobj "@etb_81330660"

# extab:0x18 | 0x81330668 | size: 0x8
.obj "@etb_81330668", local
.hidden "@etb_81330668"
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
.endobj "@etb_81330668"

# extab:0x20 | 0x81330670 | size: 0x8
.obj "@etb_81330670", local
.hidden "@etb_81330670"
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
.endobj "@etb_81330670"

# extab:0x28 | 0x81330678 | size: 0x8
.obj "@etb_81330678", local
.hidden "@etb_81330678"
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
.endobj "@etb_81330678"

# extab:0x30 | 0x81330680 | size: 0x8
.obj "@etb_81330680", local
.hidden "@etb_81330680"
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
.endobj "@etb_81330680"

# extab:0x38 | 0x81330688 | size: 0x8
.obj "@etb_81330688", local
.hidden "@etb_81330688"
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
.endobj "@etb_81330688"

# extab:0x40 | 0x81330690 | size: 0x8
.obj "@etb_81330690", local
.hidden "@etb_81330690"
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
.endobj "@etb_81330690"

# extab:0x48 | 0x81330698 | size: 0x8
.obj "@etb_81330698", local
.hidden "@etb_81330698"
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
.endobj "@etb_81330698"

# 0x81331308..0x81331380 | size: 0x78
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331308 | size: 0xC
.obj "@eti_81331308", local
.hidden "@eti_81331308"
	.4byte Zi8PriMatchNextChar
	.4byte 0x00000128
	.4byte "@etb_81330650"
.endobj "@eti_81331308"

# extabindex:0xC | 0x81331314 | size: 0xC
.obj "@eti_81331314", local
.hidden "@eti_81331314"
	.4byte Zi8ExactMatchNextChar
	.4byte 0x0000012C
	.4byte "@etb_81330658"
.endobj "@eti_81331314"

# extabindex:0x18 | 0x81331320 | size: 0xC
.obj "@eti_81331320", local
.hidden "@eti_81331320"
	.4byte Zi8SecMatchChar
	.4byte 0x000004DC
	.4byte "@etb_81330660"
.endobj "@eti_81331320"

# extabindex:0x24 | 0x8133132C | size: 0xC
.obj "@eti_8133132C", local
.hidden "@eti_8133132C"
	.4byte Zi8PriMatchNextComp
	.4byte 0x00000108
	.4byte "@etb_81330668"
.endobj "@eti_8133132C"

# extabindex:0x30 | 0x81331338 | size: 0xC
.obj "@eti_81331338", local
.hidden "@eti_81331338"
	.4byte Zi8SecMatchComp
	.4byte 0x00000110
	.4byte "@etb_81330670"
.endobj "@eti_81331338"

# extabindex:0x3C | 0x81331344 | size: 0xC
.obj "@eti_81331344", local
.hidden "@eti_81331344"
	.4byte Zi8MatchPhonetic
	.4byte 0x000005AC
	.4byte "@etb_81330678"
.endobj "@eti_81331344"

# extabindex:0x48 | 0x81331350 | size: 0xC
.obj "@eti_81331350", local
.hidden "@eti_81331350"
	.4byte Zi8GetPyPhonetic
	.4byte 0x00000B38
	.4byte "@etb_81330680"
.endobj "@eti_81331350"

# extabindex:0x54 | 0x8133135C | size: 0xC
.obj "@eti_8133135C", local
.hidden "@eti_8133135C"
	.4byte Zi8GetPyFinal
	.4byte 0x000000D4
	.4byte "@etb_81330688"
.endobj "@eti_8133135C"

# extabindex:0x60 | 0x81331368 | size: 0xC
.obj "@eti_81331368", local
.hidden "@eti_81331368"
	.4byte Zi8GetBpmfPhonetic
	.4byte 0x000004D4
	.4byte "@etb_81330690"
.endobj "@eti_81331368"

# extabindex:0x6C | 0x81331374 | size: 0xC
.obj "@eti_81331374", local
.hidden "@eti_81331374"
	.4byte Zi8GetPCode
	.4byte 0x0000006C
	.4byte "@etb_81330698"
.endobj "@eti_81331374"

# 0x8147CEF4..0x8147EF34 | size: 0x2040
.text
.balign 4

# .text:0x0 | 0x8147CEF4 | size: 0x128
.fn Zi8PriMatchNextChar, global
/* 8147CEF4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147CEF8 | 7C 08 02 A6 */	mflr r0
/* 8147CEFC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147CF00 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147CF04 | 48 17 C5 B9 */	bl _savegpr_26
/* 8147CF08 | 7C 7F 1B 78 */	mr r31, r3
/* 8147CF0C | 98 81 00 08 */	stb r4, 0x8(r1)
/* 8147CF10 | 98 A1 00 09 */	stb r5, 0x9(r1)
/* 8147CF14 | 98 C1 00 0A */	stb r6, 0xa(r1)
/* 8147CF18 | 98 E1 00 0B */	stb r7, 0xb(r1)
/* 8147CF1C | 99 01 00 0C */	stb r8, 0xc(r1)
/* 8147CF20 | 99 21 00 0D */	stb r9, 0xd(r1)
/* 8147CF24 | 99 41 00 0E */	stb r10, 0xe(r1)
/* 8147CF28 | 83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8147CF2C | 83 41 00 40 */	lwz r26, 0x40(r1)
/* 8147CF30 | 83 61 00 44 */	lwz r27, 0x44(r1)
/* 8147CF34 | 83 81 00 48 */	lwz r28, 0x48(r1)
/* 8147CF38 | A3 DD 00 00 */	lhz r30, 0x0(r29)
/* 8147CF3C | 48 00 00 A4 */	b .L_8147CFE0
.L_8147CF40:
/* 8147CF40 | 88 81 00 09 */	lbz r4, 0x9(r1)
/* 8147CF44 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147CF48 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147CF4C | 7C 60 00 38 */	and r0, r3, r0
/* 8147CF50 | 7C 04 00 00 */	cmpw r4, r0
/* 8147CF54 | 40 82 00 88 */	bne .L_8147CFDC
/* 8147CF58 | 88 81 00 3B */	lbz r4, 0x3b(r1)
/* 8147CF5C | 88 7F 00 03 */	lbz r3, 0x3(r31)
/* 8147CF60 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 8147CF64 | 7C 60 00 38 */	and r0, r3, r0
/* 8147CF68 | 7C 04 00 00 */	cmpw r4, r0
/* 8147CF6C | 40 82 00 70 */	bne .L_8147CFDC
/* 8147CF70 | 88 81 00 0D */	lbz r4, 0xd(r1)
/* 8147CF74 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 8147CF78 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 8147CF7C | 7C 60 00 38 */	and r0, r3, r0
/* 8147CF80 | 7C 04 00 00 */	cmpw r4, r0
/* 8147CF84 | 40 82 00 58 */	bne .L_8147CFDC
/* 8147CF88 | 88 81 00 0B */	lbz r4, 0xb(r1)
/* 8147CF8C | 88 7F 00 01 */	lbz r3, 0x1(r31)
/* 8147CF90 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 8147CF94 | 7C 60 00 38 */	and r0, r3, r0
/* 8147CF98 | 7C 04 00 00 */	cmpw r4, r0
/* 8147CF9C | 40 82 00 40 */	bne .L_8147CFDC
/* 8147CFA0 | 93 FA 00 00 */	stw r31, 0x0(r26)
/* 8147CFA4 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8147CFA8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147CFAC | 54 03 40 2E */	slwi r3, r0, 8
/* 8147CFB0 | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147CFB4 | 7C 03 02 14 */	add r0, r3, r0
/* 8147CFB8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147CFBC | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 8147CFC0 | B3 DD 00 00 */	sth r30, 0x0(r29)
/* 8147CFC4 | 38 60 00 64 */	li r3, 0x64
/* 8147CFC8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147CFCC | 7F 84 E3 78 */	mr r4, r28
/* 8147CFD0 | 48 00 74 AD */	bl Zi8LogError
/* 8147CFD4 | 38 60 00 01 */	li r3, 0x1
/* 8147CFD8 | 48 00 00 2C */	b .L_8147D004
.L_8147CFDC:
/* 8147CFDC | 3B FF 00 0C */	addi r31, r31, 0xc
.L_8147CFE0:
/* 8147CFE0 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147CFE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147CFE8 | 3B DE FF FF */	subi r30, r30, 0x1
/* 8147CFEC | 40 82 FF 54 */	bne .L_8147CF40
/* 8147CFF0 | 38 60 01 2E */	li r3, 0x12e
/* 8147CFF4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147CFF8 | 7F 84 E3 78 */	mr r4, r28
/* 8147CFFC | 48 00 74 81 */	bl Zi8LogError
/* 8147D000 | 38 60 00 00 */	li r3, 0x0
.L_8147D004:
/* 8147D004 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147D008 | 48 17 C5 01 */	bl _restgpr_26
/* 8147D00C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147D010 | 7C 08 03 A6 */	mtlr r0
/* 8147D014 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147D018 | 4E 80 00 20 */	blr
.endfn Zi8PriMatchNextChar

# .text:0x128 | 0x8147D01C | size: 0x12C
.fn Zi8ExactMatchNextChar, global
/* 8147D01C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147D020 | 7C 08 02 A6 */	mflr r0
/* 8147D024 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147D028 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147D02C | 48 17 C4 91 */	bl _savegpr_26
/* 8147D030 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8147D034 | 98 81 00 0C */	stb r4, 0xc(r1)
/* 8147D038 | 98 A1 00 0D */	stb r5, 0xd(r1)
/* 8147D03C | 98 C1 00 0E */	stb r6, 0xe(r1)
/* 8147D040 | 98 E1 00 0F */	stb r7, 0xf(r1)
/* 8147D044 | 99 01 00 10 */	stb r8, 0x10(r1)
/* 8147D048 | 99 21 00 11 */	stb r9, 0x11(r1)
/* 8147D04C | 99 41 00 12 */	stb r10, 0x12(r1)
/* 8147D050 | 83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8147D054 | 83 41 00 40 */	lwz r26, 0x40(r1)
/* 8147D058 | 83 61 00 44 */	lwz r27, 0x44(r1)
/* 8147D05C | 83 81 00 48 */	lwz r28, 0x48(r1)
/* 8147D060 | A3 DD 00 00 */	lhz r30, 0x0(r29)
/* 8147D064 | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 8147D068 | 48 00 00 A4 */	b .L_8147D10C
.L_8147D06C:
/* 8147D06C | 88 81 00 0D */	lbz r4, 0xd(r1)
/* 8147D070 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147D074 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 8147D078 | 7C 60 00 38 */	and r0, r3, r0
/* 8147D07C | 7C 04 00 00 */	cmpw r4, r0
/* 8147D080 | 40 82 00 88 */	bne .L_8147D108
/* 8147D084 | 88 81 00 3B */	lbz r4, 0x3b(r1)
/* 8147D088 | 88 7F 00 03 */	lbz r3, 0x3(r31)
/* 8147D08C | 88 01 00 12 */	lbz r0, 0x12(r1)
/* 8147D090 | 7C 60 00 38 */	and r0, r3, r0
/* 8147D094 | 7C 04 00 00 */	cmpw r4, r0
/* 8147D098 | 40 82 00 70 */	bne .L_8147D108
/* 8147D09C | 88 81 00 11 */	lbz r4, 0x11(r1)
/* 8147D0A0 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 8147D0A4 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8147D0A8 | 7C 60 00 38 */	and r0, r3, r0
/* 8147D0AC | 7C 04 00 00 */	cmpw r4, r0
/* 8147D0B0 | 40 82 00 58 */	bne .L_8147D108
/* 8147D0B4 | 88 81 00 0F */	lbz r4, 0xf(r1)
/* 8147D0B8 | 88 7F 00 01 */	lbz r3, 0x1(r31)
/* 8147D0BC | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 8147D0C0 | 7C 60 00 38 */	and r0, r3, r0
/* 8147D0C4 | 7C 04 00 00 */	cmpw r4, r0
/* 8147D0C8 | 40 82 00 40 */	bne .L_8147D108
/* 8147D0CC | 93 FA 00 00 */	stw r31, 0x0(r26)
/* 8147D0D0 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8147D0D4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D0D8 | 54 03 40 2E */	slwi r3, r0, 8
/* 8147D0DC | 88 1F 00 07 */	lbz r0, 0x7(r31)
/* 8147D0E0 | 7C 03 02 14 */	add r0, r3, r0
/* 8147D0E4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D0E8 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 8147D0EC | B3 DD 00 00 */	sth r30, 0x0(r29)
/* 8147D0F0 | 38 60 00 64 */	li r3, 0x64
/* 8147D0F4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147D0F8 | 7F 84 E3 78 */	mr r4, r28
/* 8147D0FC | 48 00 73 81 */	bl Zi8LogError
/* 8147D100 | 38 60 00 01 */	li r3, 0x1
/* 8147D104 | 48 00 00 2C */	b .L_8147D130
.L_8147D108:
/* 8147D108 | 3B FF 00 0C */	addi r31, r31, 0xc
.L_8147D10C:
/* 8147D10C | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147D110 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D114 | 3B DE FF FF */	subi r30, r30, 0x1
/* 8147D118 | 40 82 FF 54 */	bne .L_8147D06C
/* 8147D11C | 38 60 01 2E */	li r3, 0x12e
/* 8147D120 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147D124 | 7F 84 E3 78 */	mr r4, r28
/* 8147D128 | 48 00 73 55 */	bl Zi8LogError
/* 8147D12C | 38 60 00 00 */	li r3, 0x0
.L_8147D130:
/* 8147D130 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147D134 | 48 17 C3 D5 */	bl _restgpr_26
/* 8147D138 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147D13C | 7C 08 03 A6 */	mtlr r0
/* 8147D140 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147D144 | 4E 80 00 20 */	blr
.endfn Zi8ExactMatchNextChar

# .text:0x254 | 0x8147D148 | size: 0x4DC
.fn Zi8SecMatchChar, global
/* 8147D148 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8147D14C | 7C 08 02 A6 */	mflr r0
/* 8147D150 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8147D154 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8147D158 | 48 17 C3 59 */	bl _savegpr_23
/* 8147D15C | 7C 7D 1B 78 */	mr r29, r3
/* 8147D160 | 7C 98 23 78 */	mr r24, r4
/* 8147D164 | 7C BF 2B 78 */	mr r31, r5
/* 8147D168 | 7C D9 33 78 */	mr r25, r6
/* 8147D16C | 7C F7 3B 78 */	mr r23, r7
/* 8147D170 | 3B 80 00 00 */	li r28, 0x0
/* 8147D174 | A0 1F 00 22 */	lhz r0, 0x22(r31)
/* 8147D178 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D17C | 41 82 00 AC */	beq .L_8147D228
/* 8147D180 | A0 1F 00 22 */	lhz r0, 0x22(r31)
/* 8147D184 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 8147D188 | 88 1D 00 04 */	lbz r0, 0x4(r29)
/* 8147D18C | 54 00 07 BE */	clrlwi r0, r0, 30
/* 8147D190 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D194 | 54 03 40 2E */	slwi r3, r0, 8
/* 8147D198 | 88 1D 00 05 */	lbz r0, 0x5(r29)
/* 8147D19C | 7C 60 03 78 */	or r0, r3, r0
/* 8147D1A0 | 54 1A 04 3E */	clrlwi r26, r0, 16
/* 8147D1A4 | 3B 60 00 00 */	li r27, 0x0
/* 8147D1A8 | 48 00 00 54 */	b .L_8147D1FC
.L_8147D1AC:
/* 8147D1AC | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8147D1B0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147D1B4 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8147D1B8 | 7C 03 00 40 */	cmplw r3, r0
/* 8147D1BC | 41 82 00 50 */	beq .L_8147D20C
/* 8147D1C0 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8147D1C4 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147D1C8 | 7C 78 02 14 */	add r3, r24, r0
/* 8147D1CC | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 8147D1D0 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 8147D1D4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D1D8 | 54 04 40 2E */	slwi r4, r0, 8
/* 8147D1DC | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8147D1E0 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147D1E4 | 7C 78 02 14 */	add r3, r24, r0
/* 8147D1E8 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 8147D1EC | 7C 80 03 78 */	or r0, r4, r0
/* 8147D1F0 | 54 1A 04 3E */	clrlwi r26, r0, 16
/* 8147D1F4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8147D1F8 | 41 82 00 14 */	beq .L_8147D20C
.L_8147D1FC:
/* 8147D1FC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147D200 | 28 00 00 06 */	cmplwi r0, 0x6
/* 8147D204 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8147D208 | 41 80 FF A4 */	blt .L_8147D1AC
.L_8147D20C:
/* 8147D20C | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8147D210 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147D214 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8147D218 | 7C 03 00 40 */	cmplw r3, r0
/* 8147D21C | 41 82 00 0C */	beq .L_8147D228
/* 8147D220 | 38 60 00 00 */	li r3, 0x0
/* 8147D224 | 48 00 03 E8 */	b .L_8147D60C
.L_8147D228:
/* 8147D228 | 38 60 00 01 */	li r3, 0x1
/* 8147D22C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8147D230 | 38 80 00 01 */	li r4, 0x1
/* 8147D234 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8147D238 | 7E E5 BB 78 */	mr r5, r23
/* 8147D23C | 4B FE 21 75 */	bl Zi8GetTableAddress
/* 8147D240 | 7C 7E 1B 78 */	mr r30, r3
/* 8147D244 | 88 1D 00 09 */	lbz r0, 0x9(r29)
/* 8147D248 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147D24C | 54 04 80 1E */	slwi r4, r0, 16
/* 8147D250 | 88 7D 00 0B */	lbz r3, 0xb(r29)
/* 8147D254 | 88 1D 00 0A */	lbz r0, 0xa(r29)
/* 8147D258 | 54 00 40 2E */	slwi r0, r0, 8
/* 8147D25C | 7C 64 1A 14 */	add r3, r4, r3
/* 8147D260 | 7C 1E 02 14 */	add r0, r30, r0
/* 8147D264 | 7F C3 02 14 */	add r30, r3, r0
/* 8147D268 | 88 17 00 16 */	lbz r0, 0x16(r23)
/* 8147D26C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D270 | 41 82 00 44 */	beq .L_8147D2B4
/* 8147D274 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147D278 | 54 00 07 7E */	clrlwi r0, r0, 29
/* 8147D27C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8147D280 | 41 82 00 28 */	beq .L_8147D2A8
/* 8147D284 | 40 80 00 2C */	bge .L_8147D2B0
/* 8147D288 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8147D28C | 41 82 00 0C */	beq .L_8147D298
/* 8147D290 | 40 80 00 10 */	bge .L_8147D2A0
/* 8147D294 | 48 00 00 1C */	b .L_8147D2B0
.L_8147D298:
/* 8147D298 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8147D29C | 48 00 00 18 */	b .L_8147D2B4
.L_8147D2A0:
/* 8147D2A0 | 3B DE 00 03 */	addi r30, r30, 0x3
/* 8147D2A4 | 48 00 00 10 */	b .L_8147D2B4
.L_8147D2A8:
/* 8147D2A8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8147D2AC | 48 00 00 08 */	b .L_8147D2B4
.L_8147D2B0:
/* 8147D2B0 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147D2B4:
/* 8147D2B4 | 8B 7E 00 00 */	lbz r27, 0x0(r30)
/* 8147D2B8 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147D2BC | 54 00 E7 7E */	extrwi r0, r0, 3, 25
/* 8147D2C0 | 54 1B 06 3E */	clrlwi r27, r0, 24
/* 8147D2C4 | 57 63 08 3C */	slwi r3, r27, 1
/* 8147D2C8 | 38 63 00 0A */	addi r3, r3, 0xa
/* 8147D2CC | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D2D0 | 7C 03 00 00 */	cmpw r3, r0
/* 8147D2D4 | 40 80 00 0C */	bge .L_8147D2E0
/* 8147D2D8 | 38 60 00 00 */	li r3, 0x0
/* 8147D2DC | 48 00 03 30 */	b .L_8147D60C
.L_8147D2E0:
/* 8147D2E0 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D2E4 | 28 00 00 09 */	cmplwi r0, 0x9
/* 8147D2E8 | 40 80 01 50 */	bge .L_8147D438
/* 8147D2EC | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D2F0 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8147D2F4 | 40 82 00 1C */	bne .L_8147D310
/* 8147D2F8 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147D2FC | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147D300 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 8147D304 | 40 82 00 58 */	bne .L_8147D35C
/* 8147D308 | 3B 80 00 01 */	li r28, 0x1
/* 8147D30C | 48 00 00 50 */	b .L_8147D35C
.L_8147D310:
/* 8147D310 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D314 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8147D318 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D31C | 41 82 00 24 */	beq .L_8147D340
/* 8147D320 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D324 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D328 | 7C 1D 00 AE */	lbzx r0, r29, r0
/* 8147D32C | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147D330 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 8147D334 | 40 82 00 28 */	bne .L_8147D35C
/* 8147D338 | 3B 80 00 01 */	li r28, 0x1
/* 8147D33C | 48 00 00 20 */	b .L_8147D35C
.L_8147D340:
/* 8147D340 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D344 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D348 | 7C 1D 00 AE */	lbzx r0, r29, r0
/* 8147D34C | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 8147D350 | 2C 00 00 F0 */	cmpwi r0, 0xf0
/* 8147D354 | 40 82 00 08 */	bne .L_8147D35C
/* 8147D358 | 3B 80 00 01 */	li r28, 0x1
.L_8147D35C:
/* 8147D35C | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D360 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8147D364 | 40 81 00 94 */	ble .L_8147D3F8
/* 8147D368 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D36C | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8147D370 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D374 | 41 82 00 44 */	beq .L_8147D3B8
/* 8147D378 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 8147D37C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D380 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D384 | 7C 1D 00 AE */	lbzx r0, r29, r0
/* 8147D388 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 8147D38C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D390 | 41 82 00 20 */	beq .L_8147D3B0
/* 8147D394 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 8147D398 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D39C | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D3A0 | 7C 1D 00 AE */	lbzx r0, r29, r0
/* 8147D3A4 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 8147D3A8 | 2C 00 00 F0 */	cmpwi r0, 0xf0
/* 8147D3AC | 40 82 00 4C */	bne .L_8147D3F8
.L_8147D3B0:
/* 8147D3B0 | 38 60 00 00 */	li r3, 0x0
/* 8147D3B4 | 48 00 02 58 */	b .L_8147D60C
.L_8147D3B8:
/* 8147D3B8 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 8147D3BC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D3C0 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D3C4 | 7C 1D 00 AE */	lbzx r0, r29, r0
/* 8147D3C8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147D3CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D3D0 | 41 82 00 20 */	beq .L_8147D3F0
/* 8147D3D4 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 8147D3D8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D3DC | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D3E0 | 7C 1D 00 AE */	lbzx r0, r29, r0
/* 8147D3E4 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147D3E8 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 8147D3EC | 40 82 00 0C */	bne .L_8147D3F8
.L_8147D3F0:
/* 8147D3F0 | 38 60 00 00 */	li r3, 0x0
/* 8147D3F4 | 48 00 02 18 */	b .L_8147D60C
.L_8147D3F8:
/* 8147D3F8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8147D3FC | 41 82 00 20 */	beq .L_8147D41C
/* 8147D400 | 88 1D 00 06 */	lbz r0, 0x6(r29)
/* 8147D404 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D408 | 54 03 40 2E */	slwi r3, r0, 8
/* 8147D40C | 88 1D 00 07 */	lbz r0, 0x7(r29)
/* 8147D410 | 7C 03 02 14 */	add r0, r3, r0
/* 8147D414 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D418 | B0 19 00 00 */	sth r0, 0x0(r25)
.L_8147D41C:
/* 8147D41C | 57 80 06 3E */	clrlwi r0, r28, 24
/* 8147D420 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D424 | 41 82 00 0C */	beq .L_8147D430
/* 8147D428 | 38 60 00 02 */	li r3, 0x2
/* 8147D42C | 48 00 01 E0 */	b .L_8147D60C
.L_8147D430:
/* 8147D430 | 38 60 00 01 */	li r3, 0x1
/* 8147D434 | 48 00 01 D8 */	b .L_8147D60C
.L_8147D438:
/* 8147D438 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D43C | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8147D440 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D444 | 41 82 00 4C */	beq .L_8147D490
/* 8147D448 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 8147D44C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D450 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D454 | 7C 60 F2 14 */	add r3, r0, r30
/* 8147D458 | 88 03 FF FC */	lbz r0, -0x4(r3)
/* 8147D45C | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 8147D460 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D464 | 41 82 00 24 */	beq .L_8147D488
/* 8147D468 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 8147D46C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D470 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D474 | 7C 60 F2 14 */	add r3, r0, r30
/* 8147D478 | 88 03 FF FC */	lbz r0, -0x4(r3)
/* 8147D47C | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 8147D480 | 2C 00 00 F0 */	cmpwi r0, 0xf0
/* 8147D484 | 40 82 00 54 */	bne .L_8147D4D8
.L_8147D488:
/* 8147D488 | 38 60 00 00 */	li r3, 0x0
/* 8147D48C | 48 00 01 80 */	b .L_8147D60C
.L_8147D490:
/* 8147D490 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 8147D494 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D498 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D49C | 7C 60 F2 14 */	add r3, r0, r30
/* 8147D4A0 | 88 03 FF FC */	lbz r0, -0x4(r3)
/* 8147D4A4 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147D4A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D4AC | 41 82 00 24 */	beq .L_8147D4D0
/* 8147D4B0 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 8147D4B4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D4B8 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D4BC | 7C 60 F2 14 */	add r3, r0, r30
/* 8147D4C0 | 88 03 FF FC */	lbz r0, -0x4(r3)
/* 8147D4C4 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147D4C8 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 8147D4CC | 40 82 00 0C */	bne .L_8147D4D8
.L_8147D4D0:
/* 8147D4D0 | 38 60 00 00 */	li r3, 0x0
/* 8147D4D4 | 48 00 01 38 */	b .L_8147D60C
.L_8147D4D8:
/* 8147D4D8 | 38 00 00 04 */	li r0, 0x4
/* 8147D4DC | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8147D4E0 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 8147D4E4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147D4E8 | 7C 03 0E 70 */	srawi r3, r0, 1
/* 8147D4EC | 38 03 FF FC */	subi r0, r3, 0x4
/* 8147D4F0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147D4F4 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8147D4F8 | 57 63 06 3E */	clrlwi r3, r27, 24
/* 8147D4FC | 38 63 00 01 */	addi r3, r3, 0x1
/* 8147D500 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147D504 | 7C 03 00 00 */	cmpw r3, r0
/* 8147D508 | 40 80 00 0C */	bge .L_8147D514
/* 8147D50C | 38 60 00 00 */	li r3, 0x0
/* 8147D510 | 48 00 00 FC */	b .L_8147D60C
.L_8147D514:
/* 8147D514 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D518 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8147D51C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D520 | 41 82 00 28 */	beq .L_8147D548
/* 8147D524 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D528 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D52C | 7C 60 F2 14 */	add r3, r0, r30
/* 8147D530 | 88 03 FF FC */	lbz r0, -0x4(r3)
/* 8147D534 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147D538 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 8147D53C | 40 82 00 2C */	bne .L_8147D568
/* 8147D540 | 3B 80 00 01 */	li r28, 0x1
/* 8147D544 | 48 00 00 24 */	b .L_8147D568
.L_8147D548:
/* 8147D548 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 8147D54C | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8147D550 | 7C 60 F2 14 */	add r3, r0, r30
/* 8147D554 | 88 03 FF FC */	lbz r0, -0x4(r3)
/* 8147D558 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 8147D55C | 2C 00 00 F0 */	cmpwi r0, 0xf0
/* 8147D560 | 40 82 00 08 */	bne .L_8147D568
/* 8147D564 | 3B 80 00 01 */	li r28, 0x1
.L_8147D568:
/* 8147D568 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147D56C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D570 | 40 82 00 60 */	bne .L_8147D5D0
/* 8147D574 | 48 00 00 50 */	b .L_8147D5C4
.L_8147D578:
/* 8147D578 | 88 9E 00 00 */	lbz r4, 0x0(r30)
/* 8147D57C | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8147D580 | 7C 7F 02 14 */	add r3, r31, r0
/* 8147D584 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8147D588 | 7C 84 00 38 */	and r4, r4, r0
/* 8147D58C | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8147D590 | 7C 7F 02 14 */	add r3, r31, r0
/* 8147D594 | 88 03 00 0D */	lbz r0, 0xd(r3)
/* 8147D598 | 7C 04 00 00 */	cmpw r4, r0
/* 8147D59C | 41 82 00 0C */	beq .L_8147D5A8
/* 8147D5A0 | 38 60 00 00 */	li r3, 0x0
/* 8147D5A4 | 48 00 00 68 */	b .L_8147D60C
.L_8147D5A8:
/* 8147D5A8 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 8147D5AC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147D5B0 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8147D5B4 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 8147D5B8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D5BC | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8147D5C0 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8147D5C4:
/* 8147D5C4 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147D5C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D5CC | 40 82 FF AC */	bne .L_8147D578
.L_8147D5D0:
/* 8147D5D0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8147D5D4 | 41 82 00 20 */	beq .L_8147D5F4
/* 8147D5D8 | 88 1D 00 06 */	lbz r0, 0x6(r29)
/* 8147D5DC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D5E0 | 54 03 40 2E */	slwi r3, r0, 8
/* 8147D5E4 | 88 1D 00 07 */	lbz r0, 0x7(r29)
/* 8147D5E8 | 7C 03 02 14 */	add r0, r3, r0
/* 8147D5EC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D5F0 | B0 19 00 00 */	sth r0, 0x0(r25)
.L_8147D5F4:
/* 8147D5F4 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 8147D5F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D5FC | 41 82 00 0C */	beq .L_8147D608
/* 8147D600 | 38 60 00 02 */	li r3, 0x2
/* 8147D604 | 48 00 00 08 */	b .L_8147D60C
.L_8147D608:
/* 8147D608 | 38 60 00 01 */	li r3, 0x1
.L_8147D60C:
/* 8147D60C | 39 61 00 40 */	addi r11, r1, 0x40
/* 8147D610 | 48 17 BE ED */	bl _restgpr_23
/* 8147D614 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8147D618 | 7C 08 03 A6 */	mtlr r0
/* 8147D61C | 38 21 00 40 */	addi r1, r1, 0x40
/* 8147D620 | 4E 80 00 20 */	blr
.endfn Zi8SecMatchChar

# .text:0x730 | 0x8147D624 | size: 0x108
.fn Zi8PriMatchNextComp, global
/* 8147D624 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147D628 | 7C 08 02 A6 */	mflr r0
/* 8147D62C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147D630 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147D634 | 48 17 BE 8D */	bl _savegpr_27
/* 8147D638 | 7C 7F 1B 78 */	mr r31, r3
/* 8147D63C | 98 81 00 08 */	stb r4, 0x8(r1)
/* 8147D640 | 98 A1 00 09 */	stb r5, 0x9(r1)
/* 8147D644 | 98 C1 00 0A */	stb r6, 0xa(r1)
/* 8147D648 | 98 E1 00 0B */	stb r7, 0xb(r1)
/* 8147D64C | 99 01 00 0C */	stb r8, 0xc(r1)
/* 8147D650 | 99 21 00 0D */	stb r9, 0xd(r1)
/* 8147D654 | 99 41 00 0E */	stb r10, 0xe(r1)
/* 8147D658 | 83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8147D65C | 83 61 00 40 */	lwz r27, 0x40(r1)
/* 8147D660 | 83 81 00 44 */	lwz r28, 0x44(r1)
/* 8147D664 | A3 DD 00 00 */	lhz r30, 0x0(r29)
/* 8147D668 | 48 00 00 88 */	b .L_8147D6F0
.L_8147D66C:
/* 8147D66C | 88 81 00 09 */	lbz r4, 0x9(r1)
/* 8147D670 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147D674 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8147D678 | 7C 60 00 38 */	and r0, r3, r0
/* 8147D67C | 7C 04 00 00 */	cmpw r4, r0
/* 8147D680 | 40 82 00 6C */	bne .L_8147D6EC
/* 8147D684 | 88 81 00 0B */	lbz r4, 0xb(r1)
/* 8147D688 | 88 7F 00 01 */	lbz r3, 0x1(r31)
/* 8147D68C | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 8147D690 | 7C 60 00 38 */	and r0, r3, r0
/* 8147D694 | 7C 04 00 00 */	cmpw r4, r0
/* 8147D698 | 40 82 00 54 */	bne .L_8147D6EC
/* 8147D69C | 88 81 00 0D */	lbz r4, 0xd(r1)
/* 8147D6A0 | 88 7F 00 02 */	lbz r3, 0x2(r31)
/* 8147D6A4 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 8147D6A8 | 7C 60 00 38 */	and r0, r3, r0
/* 8147D6AC | 7C 04 00 00 */	cmpw r4, r0
/* 8147D6B0 | 40 82 00 3C */	bne .L_8147D6EC
/* 8147D6B4 | 88 81 00 3B */	lbz r4, 0x3b(r1)
/* 8147D6B8 | 88 7F 00 03 */	lbz r3, 0x3(r31)
/* 8147D6BC | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 8147D6C0 | 7C 60 00 38 */	and r0, r3, r0
/* 8147D6C4 | 7C 04 00 00 */	cmpw r4, r0
/* 8147D6C8 | 40 82 00 24 */	bne .L_8147D6EC
/* 8147D6CC | 93 FB 00 00 */	stw r31, 0x0(r27)
/* 8147D6D0 | B3 DD 00 00 */	sth r30, 0x0(r29)
/* 8147D6D4 | 38 60 00 64 */	li r3, 0x64
/* 8147D6D8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147D6DC | 7F 84 E3 78 */	mr r4, r28
/* 8147D6E0 | 48 00 6D 9D */	bl Zi8LogError
/* 8147D6E4 | 38 60 00 01 */	li r3, 0x1
/* 8147D6E8 | 48 00 00 2C */	b .L_8147D714
.L_8147D6EC:
/* 8147D6EC | 3B FF 00 08 */	addi r31, r31, 0x8
.L_8147D6F0:
/* 8147D6F0 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 8147D6F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D6F8 | 3B DE FF FF */	subi r30, r30, 0x1
/* 8147D6FC | 40 82 FF 70 */	bne .L_8147D66C
/* 8147D700 | 38 60 01 2E */	li r3, 0x12e
/* 8147D704 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147D708 | 7F 84 E3 78 */	mr r4, r28
/* 8147D70C | 48 00 6D 71 */	bl Zi8LogError
/* 8147D710 | 38 60 00 00 */	li r3, 0x0
.L_8147D714:
/* 8147D714 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147D718 | 48 17 BD F5 */	bl _restgpr_27
/* 8147D71C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147D720 | 7C 08 03 A6 */	mtlr r0
/* 8147D724 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147D728 | 4E 80 00 20 */	blr
.endfn Zi8PriMatchNextComp

# .text:0x838 | 0x8147D72C | size: 0x110
.fn Zi8SecMatchComp, global
/* 8147D72C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8147D730 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8147D734 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8147D738 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8147D73C | A0 04 00 22 */	lhz r0, 0x22(r4)
/* 8147D740 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D744 | 41 82 00 9C */	beq .L_8147D7E0
/* 8147D748 | A3 A4 00 22 */	lhz r29, 0x22(r4)
/* 8147D74C | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 8147D750 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 8147D754 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D758 | 54 06 40 2E */	slwi r6, r0, 8
/* 8147D75C | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 8147D760 | 7C C0 03 78 */	or r0, r6, r0
/* 8147D764 | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 8147D768 | 3B C0 00 00 */	li r30, 0x0
/* 8147D76C | 48 00 00 50 */	b .L_8147D7BC
.L_8147D770:
/* 8147D770 | 57 A6 04 3E */	clrlwi r6, r29, 16
/* 8147D774 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147D778 | 7C 06 00 40 */	cmplw r6, r0
/* 8147D77C | 41 82 00 4C */	beq .L_8147D7C8
/* 8147D780 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147D784 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147D788 | 7C C5 02 14 */	add r6, r5, r0
/* 8147D78C | 88 06 00 06 */	lbz r0, 0x6(r6)
/* 8147D790 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 8147D794 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D798 | 54 07 40 2E */	slwi r7, r0, 8
/* 8147D79C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147D7A0 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147D7A4 | 7C C5 02 14 */	add r6, r5, r0
/* 8147D7A8 | 88 06 00 07 */	lbz r0, 0x7(r6)
/* 8147D7AC | 7C E0 03 78 */	or r0, r7, r0
/* 8147D7B0 | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 8147D7B4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8147D7B8 | 41 82 00 10 */	beq .L_8147D7C8
.L_8147D7BC:
/* 8147D7BC | 2C 1E 00 06 */	cmpwi r30, 0x6
/* 8147D7C0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147D7C4 | 41 80 FF AC */	blt .L_8147D770
.L_8147D7C8:
/* 8147D7C8 | 57 A6 04 3E */	clrlwi r6, r29, 16
/* 8147D7CC | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147D7D0 | 7C 06 00 40 */	cmplw r6, r0
/* 8147D7D4 | 41 82 00 0C */	beq .L_8147D7E0
/* 8147D7D8 | 38 60 00 00 */	li r3, 0x0
/* 8147D7DC | 48 00 00 4C */	b .L_8147D828
.L_8147D7E0:
/* 8147D7E0 | 88 04 00 24 */	lbz r0, 0x24(r4)
/* 8147D7E4 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8147D7E8 | 40 81 00 20 */	ble .L_8147D808
/* 8147D7EC | 88 E3 00 05 */	lbz r7, 0x5(r3)
/* 8147D7F0 | 88 C4 00 24 */	lbz r6, 0x24(r4)
/* 8147D7F4 | 38 06 FF FE */	subi r0, r6, 0x2
/* 8147D7F8 | 7C 07 00 00 */	cmpw r7, r0
/* 8147D7FC | 40 80 00 28 */	bge .L_8147D824
/* 8147D800 | 38 60 00 00 */	li r3, 0x0
/* 8147D804 | 48 00 00 24 */	b .L_8147D828
.L_8147D808:
/* 8147D808 | 88 E3 00 05 */	lbz r7, 0x5(r3)
/* 8147D80C | 88 C4 00 24 */	lbz r6, 0x24(r4)
/* 8147D810 | 38 06 FF FF */	subi r0, r6, 0x1
/* 8147D814 | 7C 07 00 00 */	cmpw r7, r0
/* 8147D818 | 40 80 00 0C */	bge .L_8147D824
/* 8147D81C | 38 60 00 00 */	li r3, 0x0
/* 8147D820 | 48 00 00 08 */	b .L_8147D828
.L_8147D824:
/* 8147D824 | 38 60 00 01 */	li r3, 0x1
.L_8147D828:
/* 8147D828 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8147D82C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8147D830 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8147D834 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8147D838 | 4E 80 00 20 */	blr
.endfn Zi8SecMatchComp

# .text:0x948 | 0x8147D83C | size: 0x5AC
.fn Zi8MatchPhonetic, global
/* 8147D83C | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8147D840 | 7C 08 02 A6 */	mflr r0
/* 8147D844 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8147D848 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8147D84C | 48 17 BC 4D */	bl _savegpr_17
/* 8147D850 | 7C 74 1B 78 */	mr r20, r3
/* 8147D854 | 7C 91 23 78 */	mr r17, r4
/* 8147D858 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8147D85C | B0 C1 00 0C */	sth r6, 0xc(r1)
/* 8147D860 | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 8147D864 | 7D 1E 43 78 */	mr r30, r8
/* 8147D868 | 7D 3B 4B 78 */	mr r27, r9
/* 8147D86C | 7D 5C 53 78 */	mr r28, r10
/* 8147D870 | 83 A1 00 78 */	lwz r29, 0x78(r1)
/* 8147D874 | 82 A1 00 7C */	lwz r21, 0x7c(r1)
/* 8147D878 | 83 41 00 80 */	lwz r26, 0x80(r1)
/* 8147D87C | 8B 21 00 8F */	lbz r25, 0x8f(r1)
/* 8147D880 | 8A C1 00 9B */	lbz r22, 0x9b(r1)
/* 8147D884 | 8A 41 00 9F */	lbz r18, 0x9f(r1)
/* 8147D888 | A2 E1 00 A2 */	lhz r23, 0xa2(r1)
/* 8147D88C | 83 01 00 A4 */	lwz r24, 0xa4(r1)
/* 8147D890 | 82 61 00 AC */	lwz r19, 0xac(r1)
/* 8147D894 | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 8147D898 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D89C | 41 82 00 10 */	beq .L_8147D8AC
/* 8147D8A0 | 38 00 00 01 */	li r0, 0x1
/* 8147D8A4 | 98 01 00 14 */	stb r0, 0x14(r1)
/* 8147D8A8 | 48 00 00 0C */	b .L_8147D8B4
.L_8147D8AC:
/* 8147D8AC | 38 00 00 00 */	li r0, 0x0
/* 8147D8B0 | 98 01 00 14 */	stb r0, 0x14(r1)
.L_8147D8B4:
/* 8147D8B4 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147D8B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D8BC | 41 82 00 10 */	beq .L_8147D8CC
/* 8147D8C0 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147D8C4 | B0 01 00 1E */	sth r0, 0x1e(r1)
/* 8147D8C8 | 48 00 00 0C */	b .L_8147D8D4
.L_8147D8CC:
/* 8147D8CC | 38 00 00 01 */	li r0, 0x1
/* 8147D8D0 | B0 01 00 1E */	sth r0, 0x1e(r1)
.L_8147D8D4:
/* 8147D8D4 | 38 00 00 00 */	li r0, 0x0
/* 8147D8D8 | 98 01 00 18 */	stb r0, 0x18(r1)
/* 8147D8DC | 88 01 00 AB */	lbz r0, 0xab(r1)
/* 8147D8E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D8E4 | 41 82 04 D0 */	beq .L_8147DDB4
/* 8147D8E8 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 8147D8EC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147D8F0 | 40 81 04 C4 */	ble .L_8147DDB4
/* 8147D8F4 | 3A 40 00 01 */	li r18, 0x1
/* 8147D8F8 | 48 00 04 BC */	b .L_8147DDB4
.L_8147D8FC:
/* 8147D8FC | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147D900 | 56 C3 06 3E */	clrlwi r3, r22, 24
/* 8147D904 | 7C 00 18 38 */	and r0, r0, r3
/* 8147D908 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D90C | 40 82 00 0C */	bne .L_8147D918
.L_8147D910:
/* 8147D910 | 3B DE 00 0C */	addi r30, r30, 0xc
/* 8147D914 | 48 00 04 A0 */	b .L_8147DDB4
.L_8147D918:
/* 8147D918 | 7E 83 A3 78 */	mr r3, r20
/* 8147D91C | 7F C4 F3 78 */	mr r4, r30
/* 8147D920 | 48 00 15 A9 */	bl Zi8GetPCode
/* 8147D924 | B0 61 00 20 */	sth r3, 0x20(r1)
/* 8147D928 | A0 9C 00 00 */	lhz r4, 0x0(r28)
/* 8147D92C | A0 01 00 20 */	lhz r0, 0x20(r1)
/* 8147D930 | A0 7B 00 00 */	lhz r3, 0x0(r27)
/* 8147D934 | 7C 00 18 38 */	and r0, r0, r3
/* 8147D938 | 7C 04 00 00 */	cmpw r4, r0
/* 8147D93C | 41 82 04 5C */	beq .L_8147DD98
/* 8147D940 | 56 40 06 3E */	clrlwi r0, r18, 24
/* 8147D944 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D948 | 40 82 04 50 */	bne .L_8147DD98
/* 8147D94C | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8147D950 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147D954 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D958 | 41 82 04 40 */	beq .L_8147DD98
/* 8147D95C | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147D960 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D964 | 41 82 00 1C */	beq .L_8147D980
/* 8147D968 | A0 01 00 1E */	lhz r0, 0x1e(r1)
/* 8147D96C | 7C 60 B8 50 */	subf r3, r0, r23
/* 8147D970 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D974 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D978 | B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8147D97C | 48 00 00 08 */	b .L_8147D984
.L_8147D980:
/* 8147D980 | B2 E1 00 1C */	sth r23, 0x1c(r1)
.L_8147D984:
/* 8147D984 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8147D988 | A0 81 00 0C */	lhz r4, 0xc(r1)
/* 8147D98C | 7E 85 A3 78 */	mr r5, r20
/* 8147D990 | A0 C1 00 1C */	lhz r6, 0x1c(r1)
/* 8147D994 | A0 FB 00 00 */	lhz r7, 0x0(r27)
/* 8147D998 | A1 1C 00 00 */	lhz r8, 0x0(r28)
/* 8147D99C | 56 C9 06 3E */	clrlwi r9, r22, 24
/* 8147D9A0 | 7E 6A 9B 78 */	mr r10, r19
/* 8147D9A4 | 4B FE CC C9 */	bl Zi8MatchAltSound
/* 8147D9A8 | B0 61 00 20 */	sth r3, 0x20(r1)
/* 8147D9AC | 48 00 03 EC */	b .L_8147DD98
.L_8147D9B0:
/* 8147D9B0 | A0 81 00 96 */	lhz r4, 0x96(r1)
/* 8147D9B4 | A0 01 00 20 */	lhz r0, 0x20(r1)
/* 8147D9B8 | A0 61 00 92 */	lhz r3, 0x92(r1)
/* 8147D9BC | 7C 00 18 38 */	and r0, r0, r3
/* 8147D9C0 | 7C 04 00 00 */	cmpw r4, r0
/* 8147D9C4 | 41 82 FF 4C */	beq .L_8147D910
/* 8147D9C8 | 38 00 00 01 */	li r0, 0x1
/* 8147D9CC | 98 01 00 18 */	stb r0, 0x18(r1)
/* 8147D9D0 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147D9D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147D9D8 | 41 82 00 1C */	beq .L_8147D9F4
/* 8147D9DC | A0 01 00 1E */	lhz r0, 0x1e(r1)
/* 8147D9E0 | 7C 60 B8 50 */	subf r3, r0, r23
/* 8147D9E4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147D9E8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147D9EC | B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8147D9F0 | 48 00 00 08 */	b .L_8147D9F8
.L_8147D9F4:
/* 8147D9F4 | B2 E1 00 1C */	sth r23, 0x1c(r1)
.L_8147D9F8:
/* 8147D9F8 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8147D9FC | 88 1E 00 09 */	lbz r0, 0x9(r30)
/* 8147DA00 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147DA04 | 54 00 80 1E */	slwi r0, r0, 16
/* 8147DA08 | 88 7E 00 0B */	lbz r3, 0xb(r30)
/* 8147DA0C | 88 9E 00 0A */	lbz r4, 0xa(r30)
/* 8147DA10 | 54 84 40 2E */	slwi r4, r4, 8
/* 8147DA14 | 7C 00 1A 14 */	add r0, r0, r3
/* 8147DA18 | 7C 65 22 14 */	add r3, r5, r4
/* 8147DA1C | 7F E0 1A 14 */	add r31, r0, r3
/* 8147DA20 | 88 13 00 16 */	lbz r0, 0x16(r19)
/* 8147DA24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DA28 | 41 82 00 44 */	beq .L_8147DA6C
/* 8147DA2C | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147DA30 | 54 00 07 7E */	clrlwi r0, r0, 29
/* 8147DA34 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8147DA38 | 41 82 00 28 */	beq .L_8147DA60
/* 8147DA3C | 40 80 00 2C */	bge .L_8147DA68
/* 8147DA40 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8147DA44 | 41 82 00 0C */	beq .L_8147DA50
/* 8147DA48 | 40 80 00 10 */	bge .L_8147DA58
/* 8147DA4C | 48 00 00 1C */	b .L_8147DA68
.L_8147DA50:
/* 8147DA50 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8147DA54 | 48 00 00 18 */	b .L_8147DA6C
.L_8147DA58:
/* 8147DA58 | 3B FF 00 03 */	addi r31, r31, 0x3
/* 8147DA5C | 48 00 00 10 */	b .L_8147DA6C
.L_8147DA60:
/* 8147DA60 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8147DA64 | 48 00 00 08 */	b .L_8147DA6C
.L_8147DA68:
/* 8147DA68 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8147DA6C:
/* 8147DA6C | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147DA70 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147DA74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DA78 | 41 82 00 1C */	beq .L_8147DA94
/* 8147DA7C | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147DA80 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 8147DA84 | 7C 00 26 70 */	srawi r0, r0, 4
/* 8147DA88 | 7C 60 FA 14 */	add r3, r0, r31
/* 8147DA8C | 3B E3 00 01 */	addi r31, r3, 0x1
/* 8147DA90 | 48 00 00 10 */	b .L_8147DAA0
.L_8147DA94:
/* 8147DA94 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 8147DA98 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147DA9C | 41 81 FE 74 */	bgt .L_8147D910
.L_8147DAA0:
/* 8147DAA0 | 88 01 00 18 */	lbz r0, 0x18(r1)
/* 8147DAA4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147DAA8 | 57 23 06 3E */	clrlwi r3, r25, 24
/* 8147DAAC | 7C 00 18 40 */	cmplw r0, r3
/* 8147DAB0 | 41 82 00 10 */	beq .L_8147DAC0
/* 8147DAB4 | 57 20 06 3E */	clrlwi r0, r25, 24
/* 8147DAB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DABC | 40 82 00 34 */	bne .L_8147DAF0
.L_8147DAC0:
/* 8147DAC0 | 93 D5 00 00 */	stw r30, 0x0(r21)
/* 8147DAC4 | 88 1E 00 06 */	lbz r0, 0x6(r30)
/* 8147DAC8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147DACC | 54 03 40 2E */	slwi r3, r0, 8
/* 8147DAD0 | 88 1E 00 07 */	lbz r0, 0x7(r30)
/* 8147DAD4 | 7C 03 02 14 */	add r0, r3, r0
/* 8147DAD8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147DADC | B0 18 00 00 */	sth r0, 0x0(r24)
/* 8147DAE0 | A0 01 00 1E */	lhz r0, 0x1e(r1)
/* 8147DAE4 | B0 1D 00 00 */	sth r0, 0x0(r29)
/* 8147DAE8 | 38 60 00 01 */	li r3, 0x1
/* 8147DAEC | 48 00 02 E4 */	b .L_8147DDD0
.L_8147DAF0:
/* 8147DAF0 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147DAF4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147DAF8 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 8147DAFC | 88 01 00 17 */	lbz r0, 0x17(r1)
/* 8147DB00 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 8147DB04 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147DB08 | 98 01 00 16 */	stb r0, 0x16(r1)
/* 8147DB0C | 88 01 00 17 */	lbz r0, 0x17(r1)
/* 8147DB10 | 56 C3 06 3E */	clrlwi r3, r22, 24
/* 8147DB14 | 7C 00 18 38 */	and r0, r0, r3
/* 8147DB18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DB1C | 40 82 02 5C */	bne .L_8147DD78
/* 8147DB20 | 48 00 00 30 */	b .L_8147DB50
.L_8147DB24:
/* 8147DB24 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147DB28 | 48 00 00 08 */	b .L_8147DB30
.L_8147DB2C:
/* 8147DB2C | 3B FF 00 02 */	addi r31, r31, 0x2
.L_8147DB30:
/* 8147DB30 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147DB34 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147DB38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DB3C | 41 82 FF F0 */	beq .L_8147DB2C
/* 8147DB40 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147DB44 | 88 61 00 16 */	lbz r3, 0x16(r1)
/* 8147DB48 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147DB4C | 98 01 00 16 */	stb r0, 0x16(r1)
.L_8147DB50:
/* 8147DB50 | 88 01 00 16 */	lbz r0, 0x16(r1)
/* 8147DB54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DB58 | 40 82 FF CC */	bne .L_8147DB24
/* 8147DB5C | 48 00 02 1C */	b .L_8147DD78
.L_8147DB60:
/* 8147DB60 | 38 00 00 01 */	li r0, 0x1
/* 8147DB64 | 98 01 00 15 */	stb r0, 0x15(r1)
/* 8147DB68 | 88 01 00 14 */	lbz r0, 0x14(r1)
/* 8147DB6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DB70 | 41 82 00 18 */	beq .L_8147DB88
/* 8147DB74 | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 8147DB78 | 7C 1F 00 40 */	cmplw r31, r0
/* 8147DB7C | 40 81 00 0C */	ble .L_8147DB88
/* 8147DB80 | 38 00 00 00 */	li r0, 0x0
/* 8147DB84 | 98 01 00 14 */	stb r0, 0x14(r1)
.L_8147DB88:
/* 8147DB88 | 88 01 00 14 */	lbz r0, 0x14(r1)
/* 8147DB8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DB90 | 40 82 00 08 */	bne .L_8147DB98
/* 8147DB94 | 93 FA 00 00 */	stw r31, 0x0(r26)
.L_8147DB98:
/* 8147DB98 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 8147DB9C | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8147DBA0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147DBA4 | 54 00 40 2E */	slwi r0, r0, 8
/* 8147DBA8 | 7C 60 03 78 */	or r0, r3, r0
/* 8147DBAC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147DBB0 | B0 01 00 1A */	sth r0, 0x1a(r1)
/* 8147DBB4 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8147DBB8 | 88 01 00 14 */	lbz r0, 0x14(r1)
/* 8147DBBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DBC0 | 40 82 00 D8 */	bne .L_8147DC98
/* 8147DBC4 | 7E 83 A3 78 */	mr r3, r20
/* 8147DBC8 | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 8147DBCC | 54 00 04 7E */	clrlwi r0, r0, 17
/* 8147DBD0 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8147DBD4 | 7C 91 02 14 */	add r4, r17, r0
/* 8147DBD8 | 48 00 12 F1 */	bl Zi8GetPCode
/* 8147DBDC | B0 61 00 20 */	sth r3, 0x20(r1)
/* 8147DBE0 | A0 61 00 20 */	lhz r3, 0x20(r1)
/* 8147DBE4 | 88 01 00 15 */	lbz r0, 0x15(r1)
/* 8147DBE8 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DBEC | 7C 1B 02 2E */	lhzx r0, r27, r0
/* 8147DBF0 | 7C 63 00 38 */	and r3, r3, r0
/* 8147DBF4 | 88 01 00 15 */	lbz r0, 0x15(r1)
/* 8147DBF8 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DBFC | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8147DC00 | 7C 03 00 00 */	cmpw r3, r0
/* 8147DC04 | 41 82 00 6C */	beq .L_8147DC70
/* 8147DC08 | 56 40 06 3E */	clrlwi r0, r18, 24
/* 8147DC0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DC10 | 40 82 00 60 */	bne .L_8147DC70
/* 8147DC14 | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 8147DC18 | 54 00 04 7E */	clrlwi r0, r0, 17
/* 8147DC1C | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8147DC20 | 7C 11 00 AE */	lbzx r0, r17, r0
/* 8147DC24 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147DC28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DC2C | 41 82 00 44 */	beq .L_8147DC70
/* 8147DC30 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8147DC34 | A0 81 00 0C */	lhz r4, 0xc(r1)
/* 8147DC38 | 7E 85 A3 78 */	mr r5, r20
/* 8147DC3C | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 8147DC40 | 54 00 04 7E */	clrlwi r0, r0, 17
/* 8147DC44 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 8147DC48 | 88 01 00 15 */	lbz r0, 0x15(r1)
/* 8147DC4C | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DC50 | 7C FB 02 2E */	lhzx r7, r27, r0
/* 8147DC54 | 88 01 00 15 */	lbz r0, 0x15(r1)
/* 8147DC58 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DC5C | 7D 1C 02 2E */	lhzx r8, r28, r0
/* 8147DC60 | 56 C9 06 3E */	clrlwi r9, r22, 24
/* 8147DC64 | 7E 6A 9B 78 */	mr r10, r19
/* 8147DC68 | 4B FE CA 05 */	bl Zi8MatchAltSound
/* 8147DC6C | B0 61 00 20 */	sth r3, 0x20(r1)
.L_8147DC70:
/* 8147DC70 | A0 61 00 20 */	lhz r3, 0x20(r1)
/* 8147DC74 | 88 01 00 15 */	lbz r0, 0x15(r1)
/* 8147DC78 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DC7C | 7C 1B 02 2E */	lhzx r0, r27, r0
/* 8147DC80 | 7C 63 00 38 */	and r3, r3, r0
/* 8147DC84 | 88 01 00 15 */	lbz r0, 0x15(r1)
/* 8147DC88 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DC8C | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8147DC90 | 7C 03 00 00 */	cmpw r3, r0
/* 8147DC94 | 41 82 00 38 */	beq .L_8147DCCC
.L_8147DC98:
/* 8147DC98 | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 8147DC9C | 54 00 04 20 */	rlwinm r0, r0, 0, 16, 16
/* 8147DCA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DCA4 | 40 82 00 C8 */	bne .L_8147DD6C
/* 8147DCA8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147DCAC | 48 00 00 08 */	b .L_8147DCB4
.L_8147DCB0:
/* 8147DCB0 | 3B FF 00 02 */	addi r31, r31, 0x2
.L_8147DCB4:
/* 8147DCB4 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8147DCB8 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147DCBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DCC0 | 41 82 FF F0 */	beq .L_8147DCB0
/* 8147DCC4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147DCC8 | 48 00 00 A4 */	b .L_8147DD6C
.L_8147DCCC:
/* 8147DCCC | 88 61 00 15 */	lbz r3, 0x15(r1)
/* 8147DCD0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147DCD4 | 98 01 00 15 */	stb r0, 0x15(r1)
/* 8147DCD8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147DCDC | 57 23 06 3E */	clrlwi r3, r25, 24
/* 8147DCE0 | 7C 00 18 40 */	cmplw r0, r3
/* 8147DCE4 | 40 82 00 78 */	bne .L_8147DD5C
/* 8147DCE8 | 88 01 00 87 */	lbz r0, 0x87(r1)
/* 8147DCEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DCF0 | 41 82 00 3C */	beq .L_8147DD2C
/* 8147DCF4 | 88 01 00 8B */	lbz r0, 0x8b(r1)
/* 8147DCF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DCFC | 40 82 00 14 */	bne .L_8147DD10
/* 8147DD00 | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 8147DD04 | 54 00 04 20 */	rlwinm r0, r0, 0, 16, 16
/* 8147DD08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DD0C | 40 82 FF 8C */	bne .L_8147DC98
.L_8147DD10:
/* 8147DD10 | 88 01 00 8B */	lbz r0, 0x8b(r1)
/* 8147DD14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DD18 | 41 82 00 14 */	beq .L_8147DD2C
/* 8147DD1C | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 8147DD20 | 54 00 04 20 */	rlwinm r0, r0, 0, 16, 16
/* 8147DD24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DD28 | 41 82 FF 70 */	beq .L_8147DC98
.L_8147DD2C:
/* 8147DD2C | 93 D5 00 00 */	stw r30, 0x0(r21)
/* 8147DD30 | 88 1E 00 06 */	lbz r0, 0x6(r30)
/* 8147DD34 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147DD38 | 54 03 40 2E */	slwi r3, r0, 8
/* 8147DD3C | 88 1E 00 07 */	lbz r0, 0x7(r30)
/* 8147DD40 | 7C 03 02 14 */	add r0, r3, r0
/* 8147DD44 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147DD48 | B0 18 00 00 */	sth r0, 0x0(r24)
/* 8147DD4C | A0 01 00 1E */	lhz r0, 0x1e(r1)
/* 8147DD50 | B0 1D 00 00 */	sth r0, 0x0(r29)
/* 8147DD54 | 38 60 00 01 */	li r3, 0x1
/* 8147DD58 | 48 00 00 78 */	b .L_8147DDD0
.L_8147DD5C:
/* 8147DD5C | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 8147DD60 | 54 00 04 20 */	rlwinm r0, r0, 0, 16, 16
/* 8147DD64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DD68 | 41 82 FE 30 */	beq .L_8147DB98
.L_8147DD6C:
/* 8147DD6C | 88 61 00 16 */	lbz r3, 0x16(r1)
/* 8147DD70 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147DD74 | 98 01 00 16 */	stb r0, 0x16(r1)
.L_8147DD78:
/* 8147DD78 | 88 01 00 16 */	lbz r0, 0x16(r1)
/* 8147DD7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DD80 | 40 82 FD E0 */	bne .L_8147DB60
/* 8147DD84 | 88 01 00 17 */	lbz r0, 0x17(r1)
/* 8147DD88 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147DD8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DD90 | 40 82 FB 80 */	bne .L_8147D910
/* 8147DD94 | 4B FF FD 5C */	b .L_8147DAF0
.L_8147DD98:
/* 8147DD98 | A0 9C 00 00 */	lhz r4, 0x0(r28)
/* 8147DD9C | A0 01 00 20 */	lhz r0, 0x20(r1)
/* 8147DDA0 | A0 7B 00 00 */	lhz r3, 0x0(r27)
/* 8147DDA4 | 7C 00 18 38 */	and r0, r0, r3
/* 8147DDA8 | 7C 04 00 00 */	cmpw r4, r0
/* 8147DDAC | 41 82 FC 04 */	beq .L_8147D9B0
/* 8147DDB0 | 4B FF FB 60 */	b .L_8147D910
.L_8147DDB4:
/* 8147DDB4 | A0 61 00 1E */	lhz r3, 0x1e(r1)
/* 8147DDB8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147DDBC | B0 01 00 1E */	sth r0, 0x1e(r1)
/* 8147DDC0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147DDC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DDC8 | 40 82 FB 34 */	bne .L_8147D8FC
/* 8147DDCC | 38 60 00 00 */	li r3, 0x0
.L_8147DDD0:
/* 8147DDD0 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8147DDD4 | 48 17 B7 11 */	bl _restgpr_17
/* 8147DDD8 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8147DDDC | 7C 08 03 A6 */	mtlr r0
/* 8147DDE0 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8147DDE4 | 4E 80 00 20 */	blr
.endfn Zi8MatchPhonetic

# .text:0xEF4 | 0x8147DDE8 | size: 0xB38
.fn Zi8GetPyPhonetic, global
/* 8147DDE8 | 94 21 FD B0 */	stwu r1, -0x250(r1)
/* 8147DDEC | 7C 08 02 A6 */	mflr r0
/* 8147DDF0 | 90 01 02 54 */	stw r0, 0x254(r1)
/* 8147DDF4 | 39 61 02 50 */	addi r11, r1, 0x250
/* 8147DDF8 | 48 17 B6 B1 */	bl _savegpr_21
/* 8147DDFC | 7C 75 1B 78 */	mr r21, r3
/* 8147DE00 | 7C 98 23 78 */	mr r24, r4
/* 8147DE04 | 7C BA 2B 78 */	mr r26, r5
/* 8147DE08 | 7C DC 33 78 */	mr r28, r6
/* 8147DE0C | 7C F9 3B 78 */	mr r25, r7
/* 8147DE10 | 7D 16 43 78 */	mr r22, r8
/* 8147DE14 | 7D 37 4B 78 */	mr r23, r9
/* 8147DE18 | 91 41 00 08 */	stw r10, 0x8(r1)
/* 8147DE1C | 3B C1 00 20 */	addi r30, r1, 0x20
/* 8147DE20 | 38 00 00 00 */	li r0, 0x0
/* 8147DE24 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 8147DE28 | 38 00 00 00 */	li r0, 0x0
/* 8147DE2C | 98 01 00 0E */	stb r0, 0xe(r1)
/* 8147DE30 | 38 00 00 00 */	li r0, 0x0
/* 8147DE34 | 98 19 00 00 */	stb r0, 0x0(r25)
/* 8147DE38 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147DE3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DE40 | 40 82 00 1C */	bne .L_8147DE5C
/* 8147DE44 | 38 60 01 35 */	li r3, 0x135
/* 8147DE48 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147DE4C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8147DE50 | 48 00 66 2D */	bl Zi8LogError
/* 8147DE54 | 38 60 00 00 */	li r3, 0x0
/* 8147DE58 | 48 00 0A B0 */	b .L_8147E908
.L_8147DE5C:
/* 8147DE5C | 3B A0 00 00 */	li r29, 0x0
/* 8147DE60 | 9B A1 00 0F */	stb r29, 0xf(r1)
/* 8147DE64 | 48 00 01 08 */	b .L_8147DF6C
.L_8147DE68:
/* 8147DE68 | 57 A4 06 3E */	clrlwi r4, r29, 24
/* 8147DE6C | 54 80 08 3C */	slwi r0, r4, 1
/* 8147DE70 | 7C 75 02 2E */	lhzx r3, r21, r0
/* 8147DE74 | 28 03 F3 41 */	cmplwi r3, 0xf341
/* 8147DE78 | 41 80 00 18 */	blt .L_8147DE90
/* 8147DE7C | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 8147DE80 | 54 60 08 3C */	slwi r0, r3, 1
/* 8147DE84 | 7C 15 02 2E */	lhzx r0, r21, r0
/* 8147DE88 | 28 00 F3 5A */	cmplwi r0, 0xf35a
/* 8147DE8C | 40 81 00 2C */	ble .L_8147DEB8
.L_8147DE90:
/* 8147DE90 | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 8147DE94 | 54 60 08 3C */	slwi r0, r3, 1
/* 8147DE98 | 7C 75 02 2E */	lhzx r3, r21, r0
/* 8147DE9C | 28 03 00 41 */	cmplwi r3, 0x41
/* 8147DEA0 | 41 80 00 A4 */	blt .L_8147DF44
/* 8147DEA4 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147DEA8 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DEAC | 7C 95 02 2E */	lhzx r4, r21, r0
/* 8147DEB0 | 28 04 00 5A */	cmplwi r4, 0x5a
/* 8147DEB4 | 41 81 00 90 */	bgt .L_8147DF44
.L_8147DEB8:
/* 8147DEB8 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 8147DEBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147DEC0 | 41 82 00 50 */	beq .L_8147DF10
/* 8147DEC4 | 88 61 00 0F */	lbz r3, 0xf(r1)
/* 8147DEC8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147DECC | 54 05 08 3C */	slwi r5, r0, 1
/* 8147DED0 | 7C 9E 2A 2E */	lhzx r4, r30, r5
/* 8147DED4 | 28 04 F3 60 */	cmplwi r4, 0xf360
/* 8147DED8 | 41 82 00 38 */	beq .L_8147DF10
/* 8147DEDC | 88 61 00 0F */	lbz r3, 0xf(r1)
/* 8147DEE0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147DEE4 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DEE8 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 8147DEEC | 28 00 00 27 */	cmplwi r0, 0x27
/* 8147DEF0 | 41 82 00 20 */	beq .L_8147DF10
/* 8147DEF4 | 38 80 00 27 */	li r4, 0x27
/* 8147DEF8 | 88 61 00 0F */	lbz r3, 0xf(r1)
/* 8147DEFC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147DF00 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DF04 | 7C 9E 03 2E */	sthx r4, r30, r0
/* 8147DF08 | 38 83 00 01 */	addi r4, r3, 0x1
/* 8147DF0C | 98 81 00 0F */	stb r4, 0xf(r1)
.L_8147DF10:
/* 8147DF10 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147DF14 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DF18 | 7C 15 02 2E */	lhzx r0, r21, r0
/* 8147DF1C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8147DF20 | 38 03 00 20 */	addi r0, r3, 0x20
/* 8147DF24 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147DF28 | 88 81 00 0F */	lbz r4, 0xf(r1)
/* 8147DF2C | 54 83 06 3E */	clrlwi r3, r4, 24
/* 8147DF30 | 54 63 08 3C */	slwi r3, r3, 1
/* 8147DF34 | 7C 1E 1B 2E */	sthx r0, r30, r3
/* 8147DF38 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8147DF3C | 98 01 00 0F */	stb r0, 0xf(r1)
/* 8147DF40 | 48 00 00 28 */	b .L_8147DF68
.L_8147DF44:
/* 8147DF44 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147DF48 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DF4C | 7C 95 02 2E */	lhzx r4, r21, r0
/* 8147DF50 | 88 61 00 0F */	lbz r3, 0xf(r1)
/* 8147DF54 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147DF58 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DF5C | 7C 9E 03 2E */	sthx r4, r30, r0
/* 8147DF60 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147DF64 | 98 01 00 0F */	stb r0, 0xf(r1)
.L_8147DF68:
/* 8147DF68 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8147DF6C:
/* 8147DF6C | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 8147DF70 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147DF74 | 7C 03 00 40 */	cmplw r3, r0
/* 8147DF78 | 41 80 FE F0 */	blt .L_8147DE68
/* 8147DF7C | 8B 01 00 0F */	lbz r24, 0xf(r1)
/* 8147DF80 | 3B 60 00 00 */	li r27, 0x0
/* 8147DF84 | 38 80 00 00 */	li r4, 0x0
/* 8147DF88 | B0 96 00 00 */	sth r4, 0x0(r22)
/* 8147DF8C | 38 00 00 00 */	li r0, 0x0
/* 8147DF90 | B0 17 00 00 */	sth r0, 0x0(r23)
/* 8147DF94 | 48 00 09 18 */	b .L_8147E8AC
.L_8147DF98:
/* 8147DF98 | 38 60 00 00 */	li r3, 0x0
/* 8147DF9C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147DFA0 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147DFA4 | 7C 7A 03 2E */	sthx r3, r26, r0
/* 8147DFA8 | 38 60 00 00 */	li r3, 0x0
/* 8147DFAC | 57 64 06 3E */	clrlwi r4, r27, 24
/* 8147DFB0 | 54 80 08 3C */	slwi r0, r4, 1
/* 8147DFB4 | 7C 7C 03 2E */	sthx r3, r28, r0
/* 8147DFB8 | A3 FE 00 00 */	lhz r31, 0x0(r30)
/* 8147DFBC | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8147DFC0 | 28 03 00 61 */	cmplwi r3, 0x61
/* 8147DFC4 | 41 80 00 10 */	blt .L_8147DFD4
/* 8147DFC8 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8147DFCC | 28 03 00 7A */	cmplwi r3, 0x7a
/* 8147DFD0 | 40 81 00 4C */	ble .L_8147E01C
.L_8147DFD4:
/* 8147DFD4 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147DFD8 | 28 00 F3 61 */	cmplwi r0, 0xf361
/* 8147DFDC | 41 80 00 10 */	blt .L_8147DFEC
/* 8147DFE0 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147DFE4 | 28 00 F3 7A */	cmplwi r0, 0xf37a
/* 8147DFE8 | 40 81 00 24 */	ble .L_8147E00C
.L_8147DFEC:
/* 8147DFEC | 3C 60 00 01 */	lis r3, 0x1
/* 8147DFF0 | 38 63 FF FF */	subi r3, r3, 0x1
/* 8147DFF4 | B0 7C 00 00 */	sth r3, 0x0(r28)
/* 8147DFF8 | B0 7A 00 00 */	sth r3, 0x0(r26)
/* 8147DFFC | B0 77 00 00 */	sth r3, 0x0(r23)
/* 8147E000 | B0 76 00 00 */	sth r3, 0x0(r22)
/* 8147E004 | 38 60 00 01 */	li r3, 0x1
/* 8147E008 | 48 00 09 00 */	b .L_8147E908
.L_8147E00C:
/* 8147E00C | 3C 7F FF FF */	subis r3, r31, 0x1
/* 8147E010 | 38 63 0C 9F */	addi r3, r3, 0xc9f
/* 8147E014 | 54 7F 04 3E */	clrlwi r31, r3, 16
/* 8147E018 | 48 00 00 0C */	b .L_8147E024
.L_8147E01C:
/* 8147E01C | 38 1F FF 9F */	subi r0, r31, 0x61
/* 8147E020 | 54 1F 04 3E */	clrlwi r31, r0, 16
.L_8147E024:
/* 8147E024 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E028 | 3C 80 81 61 */	lis r4, Zi8PinyinInitials@ha
/* 8147E02C | 38 64 7F 20 */	addi r3, r4, Zi8PinyinInitials@l
/* 8147E030 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8147E034 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E038 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 8147E03C | 88 A1 00 0F */	lbz r5, 0xf(r1)
/* 8147E040 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8147E044 | 41 82 01 44 */	beq .L_8147E188
/* 8147E048 | 57 64 06 3E */	clrlwi r4, r27, 24
/* 8147E04C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147E050 | 40 82 00 14 */	bne .L_8147E064
/* 8147E054 | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E058 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E05C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E060 | 98 19 00 00 */	stb r0, 0x0(r25)
.L_8147E064:
/* 8147E064 | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 8147E068 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E06C | 98 01 00 0E */	stb r0, 0xe(r1)
/* 8147E070 | 38 00 7E 00 */	li r0, 0x7e00
/* 8147E074 | 57 64 06 3E */	clrlwi r4, r27, 24
/* 8147E078 | 54 83 08 3C */	slwi r3, r4, 1
/* 8147E07C | 7C 1A 1B 2E */	sthx r0, r26, r3
/* 8147E080 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 8147E084 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 8147E088 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E08C | 54 00 48 2C */	slwi r0, r0, 9
/* 8147E090 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147E094 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E098 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147E09C | 7C 7C 03 2E */	sthx r3, r28, r0
/* 8147E0A0 | A0 1A 00 00 */	lhz r0, 0x0(r26)
/* 8147E0A4 | B0 16 00 00 */	sth r0, 0x0(r22)
/* 8147E0A8 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8147E0AC | B0 17 00 00 */	sth r0, 0x0(r23)
/* 8147E0B0 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 8147E0B4 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147E0B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E0BC | 41 82 07 FC */	beq .L_8147E8B8
/* 8147E0C0 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8147E0C4 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 8147E0C8 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147E0CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E0D0 | 41 82 00 D0 */	beq .L_8147E1A0
/* 8147E0D4 | 88 61 00 0C */	lbz r3, 0xc(r1)
/* 8147E0D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8147E0DC | 41 82 00 34 */	beq .L_8147E110
/* 8147E0E0 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E0E4 | 54 04 08 3C */	slwi r4, r0, 1
/* 8147E0E8 | 7C 1A 22 2E */	lhzx r0, r26, r4
/* 8147E0EC | 70 03 FD FF */	andi. r3, r0, 0xfdff
/* 8147E0F0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147E0F4 | 7C 1A 23 2E */	sthx r0, r26, r4
/* 8147E0F8 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E0FC | 54 03 08 3C */	slwi r3, r0, 1
/* 8147E100 | 7C 1C 1A 2E */	lhzx r0, r28, r3
/* 8147E104 | 70 00 FD FF */	andi. r0, r0, 0xfdff
/* 8147E108 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E10C | 7C 1C 1B 2E */	sthx r0, r28, r3
.L_8147E110:
/* 8147E110 | A3 FE 00 00 */	lhz r31, 0x0(r30)
/* 8147E114 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E118 | 28 00 00 68 */	cmplwi r0, 0x68
/* 8147E11C | 41 82 00 10 */	beq .L_8147E12C
/* 8147E120 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8147E124 | 28 04 F3 68 */	cmplwi r4, 0xf368
/* 8147E128 | 40 82 00 78 */	bne .L_8147E1A0
.L_8147E12C:
/* 8147E12C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E130 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E134 | 40 82 00 14 */	bne .L_8147E148
/* 8147E138 | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E13C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E140 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E144 | 98 19 00 00 */	stb r0, 0x0(r25)
.L_8147E148:
/* 8147E148 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E14C | 54 04 08 3C */	slwi r4, r0, 1
/* 8147E150 | 7C 7C 22 2E */	lhzx r3, r28, r4
/* 8147E154 | 38 03 02 00 */	addi r0, r3, 0x200
/* 8147E158 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E15C | 7C 1C 23 2E */	sthx r0, r28, r4
/* 8147E160 | A0 1A 00 00 */	lhz r0, 0x0(r26)
/* 8147E164 | B0 16 00 00 */	sth r0, 0x0(r22)
/* 8147E168 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8147E16C | B0 17 00 00 */	sth r0, 0x0(r23)
/* 8147E170 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 8147E174 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147E178 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E17C | 41 82 07 3C */	beq .L_8147E8B8
/* 8147E180 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8147E184 | 48 00 00 1C */	b .L_8147E1A0
.L_8147E188:
/* 8147E188 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147E18C | 28 00 F3 69 */	cmplwi r0, 0xf369
/* 8147E190 | 41 82 FE 5C */	beq .L_8147DFEC
/* 8147E194 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 8147E198 | 28 03 00 69 */	cmplwi r3, 0x69
/* 8147E19C | 41 82 FE 50 */	beq .L_8147DFEC
.L_8147E1A0:
/* 8147E1A0 | 38 00 00 00 */	li r0, 0x0
/* 8147E1A4 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 8147E1A8 | 3B A0 00 00 */	li r29, 0x0
/* 8147E1AC | 48 00 00 18 */	b .L_8147E1C4
.L_8147E1B0:
/* 8147E1B0 | 38 80 00 00 */	li r4, 0x0
/* 8147E1B4 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E1B8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E1BC | 7C 83 01 AE */	stbx r4, r3, r0
/* 8147E1C0 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8147E1C4:
/* 8147E1C4 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E1C8 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8147E1CC | 41 80 FF E4 */	blt .L_8147E1B0
/* 8147E1D0 | 3B A0 00 00 */	li r29, 0x0
/* 8147E1D4 | 48 00 02 14 */	b .L_8147E3E8
.L_8147E1D8:
/* 8147E1D8 | A3 FE 00 00 */	lhz r31, 0x0(r30)
/* 8147E1DC | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8147E1E0 | 28 03 00 27 */	cmplwi r3, 0x27
/* 8147E1E4 | 41 82 00 1C */	beq .L_8147E200
/* 8147E1E8 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E1EC | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 8147E1F0 | 41 82 00 10 */	beq .L_8147E200
/* 8147E1F4 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E1F8 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8147E1FC | 40 82 00 1C */	bne .L_8147E218
.L_8147E200:
/* 8147E200 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E204 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E208 | 41 82 01 EC */	beq .L_8147E3F4
/* 8147E20C | 38 60 00 01 */	li r3, 0x1
/* 8147E210 | 98 61 00 0D */	stb r3, 0xd(r1)
/* 8147E214 | 48 00 01 E0 */	b .L_8147E3F4
.L_8147E218:
/* 8147E218 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E21C | 28 00 F3 31 */	cmplwi r0, 0xf331
/* 8147E220 | 41 80 00 28 */	blt .L_8147E248
/* 8147E224 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E228 | 28 00 F3 36 */	cmplwi r0, 0xf336
/* 8147E22C | 40 80 00 1C */	bge .L_8147E248
/* 8147E230 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E234 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E238 | 41 82 01 BC */	beq .L_8147E3F4
/* 8147E23C | 38 60 00 01 */	li r3, 0x1
/* 8147E240 | 98 61 00 0D */	stb r3, 0xd(r1)
/* 8147E244 | 48 00 01 B0 */	b .L_8147E3F4
.L_8147E248:
/* 8147E248 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E24C | 28 00 00 61 */	cmplwi r0, 0x61
/* 8147E250 | 41 80 00 10 */	blt .L_8147E260
/* 8147E254 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E258 | 28 00 00 7A */	cmplwi r0, 0x7a
/* 8147E25C | 40 81 00 44 */	ble .L_8147E2A0
.L_8147E260:
/* 8147E260 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E264 | 28 00 F3 61 */	cmplwi r0, 0xf361
/* 8147E268 | 41 80 01 8C */	blt .L_8147E3F4
/* 8147E26C | 3C 7F FF FF */	subis r3, r31, 0x1
/* 8147E270 | 38 03 0C 9F */	addi r0, r3, 0xc9f
/* 8147E274 | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 8147E278 | 28 1F 00 19 */	cmplwi r31, 0x19
/* 8147E27C | 40 81 00 2C */	ble .L_8147E2A8
/* 8147E280 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E284 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E288 | 40 82 01 6C */	bne .L_8147E3F4
/* 8147E28C | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E290 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E294 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E298 | 98 19 00 00 */	stb r0, 0x0(r25)
/* 8147E29C | 48 00 01 58 */	b .L_8147E3F4
.L_8147E2A0:
/* 8147E2A0 | 38 1F FF 9F */	subi r0, r31, 0x61
/* 8147E2A4 | 54 1F 04 3E */	clrlwi r31, r0, 16
.L_8147E2A8:
/* 8147E2A8 | 57 E3 06 3E */	clrlwi r3, r31, 24
/* 8147E2AC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E2B0 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 8147E2B4 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E2B8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E2BC | 7C 83 01 AE */	stbx r4, r3, r0
/* 8147E2C0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E2C4 | 38 81 00 11 */	addi r4, r1, 0x11
/* 8147E2C8 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8147E2CC | 48 00 06 55 */	bl Zi8GetPyFinal
/* 8147E2D0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147E2D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E2D8 | 41 82 00 3C */	beq .L_8147E314
/* 8147E2DC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E2E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E2E4 | 40 82 00 14 */	bne .L_8147E2F8
/* 8147E2E8 | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E2EC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E2F0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E2F4 | 98 19 00 00 */	stb r0, 0x0(r25)
.L_8147E2F8:
/* 8147E2F8 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8147E2FC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8147E300 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 8147E304 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147E308 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E30C | 41 82 00 E8 */	beq .L_8147E3F4
/* 8147E310 | 48 00 00 D8 */	b .L_8147E3E8
.L_8147E314:
/* 8147E314 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E318 | 28 00 00 03 */	cmplwi r0, 0x3
/* 8147E31C | 40 80 00 B0 */	bge .L_8147E3CC
/* 8147E320 | 38 80 00 FF */	li r4, 0xff
/* 8147E324 | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 8147E328 | 38 01 00 14 */	addi r0, r1, 0x14
/* 8147E32C | 7C 63 02 14 */	add r3, r3, r0
/* 8147E330 | 98 83 00 01 */	stb r4, 0x1(r3)
/* 8147E334 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E338 | 38 81 00 11 */	addi r4, r1, 0x11
/* 8147E33C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8147E340 | 48 00 05 E1 */	bl Zi8GetPyFinal
/* 8147E344 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147E348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E34C | 41 82 00 50 */	beq .L_8147E39C
/* 8147E350 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E354 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E358 | 40 82 00 14 */	bne .L_8147E36C
/* 8147E35C | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E360 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E364 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E368 | 98 19 00 00 */	stb r0, 0x0(r25)
.L_8147E36C:
/* 8147E36C | 38 80 00 00 */	li r4, 0x0
/* 8147E370 | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 8147E374 | 38 01 00 14 */	addi r0, r1, 0x14
/* 8147E378 | 7C 63 02 14 */	add r3, r3, r0
/* 8147E37C | 98 83 00 01 */	stb r4, 0x1(r3)
/* 8147E380 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8147E384 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8147E388 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 8147E38C | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147E390 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E394 | 41 82 00 60 */	beq .L_8147E3F4
/* 8147E398 | 48 00 00 50 */	b .L_8147E3E8
.L_8147E39C:
/* 8147E39C | 38 80 00 00 */	li r4, 0x0
/* 8147E3A0 | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 8147E3A4 | 38 01 00 14 */	addi r0, r1, 0x14
/* 8147E3A8 | 7C 63 02 14 */	add r3, r3, r0
/* 8147E3AC | 98 83 00 01 */	stb r4, 0x1(r3)
/* 8147E3B0 | 38 80 00 00 */	li r4, 0x0
/* 8147E3B4 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E3B8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E3BC | 7C 83 01 AE */	stbx r4, r3, r0
/* 8147E3C0 | 38 00 00 01 */	li r0, 0x1
/* 8147E3C4 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 8147E3C8 | 48 00 00 2C */	b .L_8147E3F4
.L_8147E3CC:
/* 8147E3CC | 38 80 00 00 */	li r4, 0x0
/* 8147E3D0 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E3D4 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E3D8 | 7C 83 01 AE */	stbx r4, r3, r0
/* 8147E3DC | 38 00 00 01 */	li r0, 0x1
/* 8147E3E0 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 8147E3E4 | 48 00 00 10 */	b .L_8147E3F4
.L_8147E3E8:
/* 8147E3E8 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E3EC | 28 00 00 04 */	cmplwi r0, 0x4
/* 8147E3F0 | 41 80 FD E8 */	blt .L_8147E1D8
.L_8147E3F4:
/* 8147E3F4 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E3F8 | 28 00 00 03 */	cmplwi r0, 0x3
/* 8147E3FC | 40 81 00 5C */	ble .L_8147E458
/* 8147E400 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147E404 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E408 | 41 82 00 50 */	beq .L_8147E458
/* 8147E40C | A3 FE 00 00 */	lhz r31, 0x0(r30)
/* 8147E410 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E414 | 28 00 00 27 */	cmplwi r0, 0x27
/* 8147E418 | 41 82 00 1C */	beq .L_8147E434
/* 8147E41C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E420 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 8147E424 | 41 82 00 10 */	beq .L_8147E434
/* 8147E428 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E42C | 28 00 00 20 */	cmplwi r0, 0x20
/* 8147E430 | 40 82 00 28 */	bne .L_8147E458
.L_8147E434:
/* 8147E434 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E438 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E43C | 40 82 00 14 */	bne .L_8147E450
/* 8147E440 | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E444 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E448 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E44C | 98 19 00 00 */	stb r0, 0x0(r25)
.L_8147E450:
/* 8147E450 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8147E454 | 3B 18 FF FF */	subi r24, r24, 0x1
.L_8147E458:
/* 8147E458 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E45C | 28 00 00 03 */	cmplwi r0, 0x3
/* 8147E460 | 40 81 00 0C */	ble .L_8147E46C
/* 8147E464 | 38 00 00 01 */	li r0, 0x1
/* 8147E468 | 98 01 00 0D */	stb r0, 0xd(r1)
.L_8147E46C:
/* 8147E46C | 88 01 00 0D */	lbz r0, 0xd(r1)
/* 8147E470 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E474 | 41 82 00 DC */	beq .L_8147E550
/* 8147E478 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 8147E47C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E480 | 40 82 00 D0 */	bne .L_8147E550
/* 8147E484 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E488 | 38 81 00 11 */	addi r4, r1, 0x11
/* 8147E48C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8147E490 | 48 00 04 91 */	bl Zi8GetPyFinal
/* 8147E494 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147E498 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E49C | 41 82 00 98 */	beq .L_8147E534
/* 8147E4A0 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 8147E4A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E4A8 | 40 82 00 30 */	bne .L_8147E4D8
/* 8147E4AC | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 8147E4B0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E4B4 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 8147E4B8 | 38 60 7E 00 */	li r3, 0x7e00
/* 8147E4BC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E4C0 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147E4C4 | 7C 7A 03 2E */	sthx r3, r26, r0
/* 8147E4C8 | 38 60 02 00 */	li r3, 0x200
/* 8147E4CC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E4D0 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147E4D4 | 7C 7C 03 2E */	sthx r3, r28, r0
.L_8147E4D8:
/* 8147E4D8 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E4DC | 54 04 08 3C */	slwi r4, r0, 1
/* 8147E4E0 | 7C 7A 22 2E */	lhzx r3, r26, r4
/* 8147E4E4 | 88 01 00 11 */	lbz r0, 0x11(r1)
/* 8147E4E8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E4EC | 54 00 18 38 */	slwi r0, r0, 3
/* 8147E4F0 | 7C 60 03 78 */	or r0, r3, r0
/* 8147E4F4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E4F8 | 7C 1A 23 2E */	sthx r0, r26, r4
/* 8147E4FC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E500 | 54 04 08 3C */	slwi r4, r0, 1
/* 8147E504 | 7C 7C 22 2E */	lhzx r3, r28, r4
/* 8147E508 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8147E50C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E510 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147E514 | 7C 60 03 78 */	or r0, r3, r0
/* 8147E518 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E51C | 7C 1C 23 2E */	sthx r0, r28, r4
/* 8147E520 | A0 1A 00 00 */	lhz r0, 0x0(r26)
/* 8147E524 | B0 16 00 00 */	sth r0, 0x0(r22)
/* 8147E528 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8147E52C | B0 17 00 00 */	sth r0, 0x0(r23)
/* 8147E530 | 48 00 02 34 */	b .L_8147E764
.L_8147E534:
/* 8147E534 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E538 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E53C | 41 82 02 28 */	beq .L_8147E764
/* 8147E540 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147E544 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E548 | 40 82 FA A4 */	bne .L_8147DFEC
/* 8147E54C | 48 00 02 18 */	b .L_8147E764
.L_8147E550:
/* 8147E550 | 38 80 00 FF */	li r4, 0xff
/* 8147E554 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E558 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E55C | 7C 83 01 AE */	stbx r4, r3, r0
/* 8147E560 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E564 | 38 81 00 11 */	addi r4, r1, 0x11
/* 8147E568 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8147E56C | 48 00 03 B5 */	bl Zi8GetPyFinal
/* 8147E570 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147E574 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E578 | 41 82 01 30 */	beq .L_8147E6A8
/* 8147E57C | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 8147E580 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E584 | 40 82 00 30 */	bne .L_8147E5B4
/* 8147E588 | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 8147E58C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E590 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 8147E594 | 38 60 7E 00 */	li r3, 0x7e00
/* 8147E598 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E59C | 54 00 08 3C */	slwi r0, r0, 1
/* 8147E5A0 | 7C 7A 03 2E */	sthx r3, r26, r0
/* 8147E5A4 | 38 80 02 00 */	li r4, 0x200
/* 8147E5A8 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E5AC | 54 03 08 3C */	slwi r3, r0, 1
/* 8147E5B0 | 7C 9C 1B 2E */	sthx r4, r28, r3
.L_8147E5B4:
/* 8147E5B4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E5B8 | 54 05 08 3C */	slwi r5, r0, 1
/* 8147E5BC | 7C 9A 2A 2E */	lhzx r4, r26, r5
/* 8147E5C0 | 88 61 00 11 */	lbz r3, 0x11(r1)
/* 8147E5C4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147E5C8 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147E5CC | 7C 80 03 78 */	or r0, r4, r0
/* 8147E5D0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8147E5D4 | 7C 9A 2B 2E */	sthx r4, r26, r5
/* 8147E5D8 | 57 63 06 3E */	clrlwi r3, r27, 24
/* 8147E5DC | 54 63 08 3C */	slwi r3, r3, 1
/* 8147E5E0 | 7C 9C 1A 2E */	lhzx r4, r28, r3
/* 8147E5E4 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8147E5E8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E5EC | 54 00 18 38 */	slwi r0, r0, 3
/* 8147E5F0 | 7C 80 03 78 */	or r0, r4, r0
/* 8147E5F4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E5F8 | 7C 1C 1B 2E */	sthx r0, r28, r3
/* 8147E5FC | A0 7A 00 00 */	lhz r3, 0x0(r26)
/* 8147E600 | B0 76 00 00 */	sth r3, 0x0(r22)
/* 8147E604 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8147E608 | B0 17 00 00 */	sth r0, 0x0(r23)
/* 8147E60C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E610 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E614 | 40 82 01 50 */	bne .L_8147E764
/* 8147E618 | 57 04 06 3E */	clrlwi r4, r24, 24
/* 8147E61C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8147E620 | 40 82 01 44 */	bne .L_8147E764
/* 8147E624 | 38 80 00 00 */	li r4, 0x0
/* 8147E628 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E62C | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E630 | 7C 83 01 AE */	stbx r4, r3, r0
/* 8147E634 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E638 | 38 81 00 11 */	addi r4, r1, 0x11
/* 8147E63C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8147E640 | 48 00 02 E1 */	bl Zi8GetPyFinal
/* 8147E644 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147E648 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E64C | 41 82 01 18 */	beq .L_8147E764
/* 8147E650 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 8147E654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E658 | 40 82 00 14 */	bne .L_8147E66C
/* 8147E65C | 38 80 7E 00 */	li r4, 0x7e00
/* 8147E660 | B0 96 00 00 */	sth r4, 0x0(r22)
/* 8147E664 | 38 60 02 00 */	li r3, 0x200
/* 8147E668 | B0 77 00 00 */	sth r3, 0x0(r23)
.L_8147E66C:
/* 8147E66C | A0 76 00 00 */	lhz r3, 0x0(r22)
/* 8147E670 | 88 01 00 11 */	lbz r0, 0x11(r1)
/* 8147E674 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E678 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147E67C | 7C 63 03 78 */	or r3, r3, r0
/* 8147E680 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147E684 | B0 16 00 00 */	sth r0, 0x0(r22)
/* 8147E688 | A0 97 00 00 */	lhz r4, 0x0(r23)
/* 8147E68C | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8147E690 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147E694 | 54 60 18 38 */	slwi r0, r3, 3
/* 8147E698 | 7C 80 03 78 */	or r0, r4, r0
/* 8147E69C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147E6A0 | B0 77 00 00 */	sth r3, 0x0(r23)
/* 8147E6A4 | 48 00 00 C0 */	b .L_8147E764
.L_8147E6A8:
/* 8147E6A8 | 38 80 00 00 */	li r4, 0x0
/* 8147E6AC | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8147E6B0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E6B4 | 7C 83 01 AE */	stbx r4, r3, r0
/* 8147E6B8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8147E6BC | 38 81 00 11 */	addi r4, r1, 0x11
/* 8147E6C0 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8147E6C4 | 48 00 02 5D */	bl Zi8GetPyFinal
/* 8147E6C8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147E6CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E6D0 | 41 82 00 94 */	beq .L_8147E764
/* 8147E6D4 | 88 01 00 0F */	lbz r0, 0xf(r1)
/* 8147E6D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E6DC | 40 82 00 30 */	bne .L_8147E70C
/* 8147E6E0 | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 8147E6E4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8147E6E8 | 98 61 00 0E */	stb r3, 0xe(r1)
/* 8147E6EC | 38 60 7E 00 */	li r3, 0x7e00
/* 8147E6F0 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E6F4 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147E6F8 | 7C 7A 03 2E */	sthx r3, r26, r0
/* 8147E6FC | 38 80 02 00 */	li r4, 0x200
/* 8147E700 | 57 63 06 3E */	clrlwi r3, r27, 24
/* 8147E704 | 54 60 08 3C */	slwi r0, r3, 1
/* 8147E708 | 7C 9C 03 2E */	sthx r4, r28, r0
.L_8147E70C:
/* 8147E70C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E710 | 54 05 08 3C */	slwi r5, r0, 1
/* 8147E714 | 7C 9A 2A 2E */	lhzx r4, r26, r5
/* 8147E718 | 88 61 00 11 */	lbz r3, 0x11(r1)
/* 8147E71C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147E720 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147E724 | 7C 83 03 78 */	or r3, r4, r0
/* 8147E728 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8147E72C | 7C 1A 2B 2E */	sthx r0, r26, r5
/* 8147E730 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E734 | 54 04 08 3C */	slwi r4, r0, 1
/* 8147E738 | 7C 7C 22 2E */	lhzx r3, r28, r4
/* 8147E73C | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8147E740 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E744 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147E748 | 7C 60 03 78 */	or r0, r3, r0
/* 8147E74C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147E750 | 7C 7C 23 2E */	sthx r3, r28, r4
/* 8147E754 | A0 1A 00 00 */	lhz r0, 0x0(r26)
/* 8147E758 | B0 16 00 00 */	sth r0, 0x0(r22)
/* 8147E75C | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8147E760 | B0 17 00 00 */	sth r0, 0x0(r23)
.L_8147E764:
/* 8147E764 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147E768 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E76C | 41 82 01 30 */	beq .L_8147E89C
/* 8147E770 | A3 FE 00 00 */	lhz r31, 0x0(r30)
/* 8147E774 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E778 | 28 00 00 27 */	cmplwi r0, 0x27
/* 8147E77C | 41 82 00 1C */	beq .L_8147E798
/* 8147E780 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E784 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 8147E788 | 41 82 00 10 */	beq .L_8147E798
/* 8147E78C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E790 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8147E794 | 40 82 00 2C */	bne .L_8147E7C0
.L_8147E798:
/* 8147E798 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8147E79C | 3B 18 FF FF */	subi r24, r24, 0x1
/* 8147E7A0 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E7A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E7A8 | 40 82 00 F4 */	bne .L_8147E89C
/* 8147E7AC | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E7B0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E7B4 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 8147E7B8 | 98 99 00 00 */	stb r4, 0x0(r25)
/* 8147E7BC | 48 00 00 E0 */	b .L_8147E89C
.L_8147E7C0:
/* 8147E7C0 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E7C4 | 28 00 F3 31 */	cmplwi r0, 0xf331
/* 8147E7C8 | 41 80 00 D4 */	blt .L_8147E89C
/* 8147E7CC | 3C 7F FF FF */	subis r3, r31, 0x1
/* 8147E7D0 | 38 03 0C CF */	addi r0, r3, 0xccf
/* 8147E7D4 | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 8147E7D8 | 28 1F 00 04 */	cmplwi r31, 0x4
/* 8147E7DC | 41 81 00 C0 */	bgt .L_8147E89C
/* 8147E7E0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8147E7E4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E7E8 | 54 03 08 3C */	slwi r3, r0, 1
/* 8147E7EC | 7C 1A 1A 2E */	lhzx r0, r26, r3
/* 8147E7F0 | 60 00 00 07 */	ori r0, r0, 0x7
/* 8147E7F4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147E7F8 | 7C 1A 1B 2E */	sthx r0, r26, r3
/* 8147E7FC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E800 | 54 04 08 3C */	slwi r4, r0, 1
/* 8147E804 | 7C 1C 22 2E */	lhzx r0, r28, r4
/* 8147E808 | 7C 03 FB 78 */	or r3, r0, r31
/* 8147E80C | 7C 7C 23 2E */	sthx r3, r28, r4
/* 8147E810 | A0 1A 00 00 */	lhz r0, 0x0(r26)
/* 8147E814 | B0 16 00 00 */	sth r0, 0x0(r22)
/* 8147E818 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8147E81C | B0 17 00 00 */	sth r0, 0x0(r23)
/* 8147E820 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 8147E824 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8147E828 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E82C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E830 | 40 82 00 14 */	bne .L_8147E844
/* 8147E834 | 88 99 00 00 */	lbz r4, 0x0(r25)
/* 8147E838 | 38 64 00 01 */	addi r3, r4, 0x1
/* 8147E83C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8147E840 | 98 19 00 00 */	stb r0, 0x0(r25)
.L_8147E844:
/* 8147E844 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8147E848 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E84C | 41 82 00 50 */	beq .L_8147E89C
/* 8147E850 | A3 FE 00 00 */	lhz r31, 0x0(r30)
/* 8147E854 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E858 | 28 00 00 27 */	cmplwi r0, 0x27
/* 8147E85C | 41 82 00 1C */	beq .L_8147E878
/* 8147E860 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E864 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 8147E868 | 41 82 00 10 */	beq .L_8147E878
/* 8147E86C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147E870 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8147E874 | 40 82 00 28 */	bne .L_8147E89C
.L_8147E878:
/* 8147E878 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 8147E87C | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8147E880 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E884 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147E888 | 40 82 00 14 */	bne .L_8147E89C
/* 8147E88C | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E890 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8147E894 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 8147E898 | 98 99 00 00 */	stb r4, 0x0(r25)
.L_8147E89C:
/* 8147E89C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8147E8A0 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8147E8A4 | 28 00 00 0F */	cmplwi r0, 0xf
/* 8147E8A8 | 41 81 00 10 */	bgt .L_8147E8B8
.L_8147E8AC:
/* 8147E8AC | 57 03 06 3E */	clrlwi r3, r24, 24
/* 8147E8B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8147E8B4 | 40 82 F6 E4 */	bne .L_8147DF98
.L_8147E8B8:
/* 8147E8B8 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 8147E8BC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8147E8C0 | 40 81 00 44 */	ble .L_8147E904
/* 8147E8C4 | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E8C8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147E8CC | 54 00 08 3C */	slwi r0, r0, 1
/* 8147E8D0 | 7C 15 02 2E */	lhzx r0, r21, r0
/* 8147E8D4 | 28 00 F3 41 */	cmplwi r0, 0xf341
/* 8147E8D8 | 41 80 00 2C */	blt .L_8147E904
/* 8147E8DC | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E8E0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147E8E4 | 54 00 08 3C */	slwi r0, r0, 1
/* 8147E8E8 | 7C 15 02 2E */	lhzx r0, r21, r0
/* 8147E8EC | 28 00 F3 5A */	cmplwi r0, 0xf35a
/* 8147E8F0 | 41 81 00 14 */	bgt .L_8147E904
/* 8147E8F4 | 88 79 00 00 */	lbz r3, 0x0(r25)
/* 8147E8F8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8147E8FC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E900 | 98 19 00 00 */	stb r0, 0x0(r25)
.L_8147E904:
/* 8147E904 | 88 61 00 0E */	lbz r3, 0xe(r1)
.L_8147E908:
/* 8147E908 | 39 61 02 50 */	addi r11, r1, 0x250
/* 8147E90C | 48 17 AB E9 */	bl _restgpr_21
/* 8147E910 | 80 01 02 54 */	lwz r0, 0x254(r1)
/* 8147E914 | 7C 08 03 A6 */	mtlr r0
/* 8147E918 | 38 21 02 50 */	addi r1, r1, 0x250
/* 8147E91C | 4E 80 00 20 */	blr
.endfn Zi8GetPyPhonetic

# .text:0x1A2C | 0x8147E920 | size: 0xD4
.fn Zi8GetPyFinal, global
/* 8147E920 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8147E924 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8147E928 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8147E92C | 3B E0 00 00 */	li r31, 0x0
/* 8147E930 | 3B C0 00 00 */	li r30, 0x0
/* 8147E934 | 48 00 00 A0 */	b .L_8147E9D4
.L_8147E938:
/* 8147E938 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8147E93C | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8147E940 | 54 08 06 3E */	clrlwi r8, r0, 24
/* 8147E944 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147E948 | 54 07 18 38 */	slwi r7, r0, 3
/* 8147E94C | 3C C0 81 61 */	lis r6, Zi8PinyinFinals@ha
/* 8147E950 | 38 06 7F 60 */	addi r0, r6, Zi8PinyinFinals@l
/* 8147E954 | 57 E6 06 3E */	clrlwi r6, r31, 24
/* 8147E958 | 7C 00 3A 14 */	add r0, r0, r7
/* 8147E95C | 7C 06 00 AE */	lbzx r0, r6, r0
/* 8147E960 | 7C 08 00 40 */	cmplw r8, r0
/* 8147E964 | 40 82 00 14 */	bne .L_8147E978
/* 8147E968 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8147E96C:
/* 8147E96C | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8147E970 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8147E974 | 41 80 FF C4 */	blt .L_8147E938
.L_8147E978:
/* 8147E978 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8147E97C | 28 00 00 04 */	cmplwi r0, 0x4
/* 8147E980 | 41 80 00 4C */	blt .L_8147E9CC
/* 8147E984 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147E988 | 54 07 18 38 */	slwi r7, r0, 3
/* 8147E98C | 3C C0 81 61 */	lis r6, Zi8PinyinFinals@ha
/* 8147E990 | 38 06 7F 60 */	addi r0, r6, Zi8PinyinFinals@l
/* 8147E994 | 7C C0 3A 14 */	add r6, r0, r7
/* 8147E998 | 88 06 00 04 */	lbz r0, 0x4(r6)
/* 8147E99C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E9A0 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 8147E9A4 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147E9A8 | 54 07 18 38 */	slwi r7, r0, 3
/* 8147E9AC | 3C C0 81 61 */	lis r6, Zi8PinyinFinals@ha
/* 8147E9B0 | 38 06 7F 60 */	addi r0, r6, Zi8PinyinFinals@l
/* 8147E9B4 | 7C C0 3A 14 */	add r6, r0, r7
/* 8147E9B8 | 88 06 00 05 */	lbz r0, 0x5(r6)
/* 8147E9BC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8147E9C0 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 8147E9C4 | 38 60 00 01 */	li r3, 0x1
/* 8147E9C8 | 48 00 00 1C */	b .L_8147E9E4
.L_8147E9CC:
/* 8147E9CC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8147E9D0 | 3B E0 00 00 */	li r31, 0x0
.L_8147E9D4:
/* 8147E9D4 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 8147E9D8 | 28 00 00 36 */	cmplwi r0, 0x36
/* 8147E9DC | 41 80 FF 90 */	blt .L_8147E96C
/* 8147E9E0 | 38 60 00 00 */	li r3, 0x0
.L_8147E9E4:
/* 8147E9E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8147E9E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8147E9EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8147E9F0 | 4E 80 00 20 */	blr
.endfn Zi8GetPyFinal

# .text:0x1B00 | 0x8147E9F4 | size: 0x4D4
.fn Zi8GetBpmfPhonetic, global
/* 8147E9F4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8147E9F8 | 7C 08 02 A6 */	mflr r0
/* 8147E9FC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8147EA00 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147EA04 | 48 17 AA AD */	bl _savegpr_23
/* 8147EA08 | 7C 7D 1B 78 */	mr r29, r3
/* 8147EA0C | 7C 9A 23 78 */	mr r26, r4
/* 8147EA10 | 7C BF 2B 78 */	mr r31, r5
/* 8147EA14 | 7C DE 33 78 */	mr r30, r6
/* 8147EA18 | 7C F8 3B 78 */	mr r24, r7
/* 8147EA1C | 7D 19 43 78 */	mr r25, r8
/* 8147EA20 | 7D 37 4B 78 */	mr r23, r9
/* 8147EA24 | 3B 80 00 00 */	li r28, 0x0
/* 8147EA28 | 38 60 00 64 */	li r3, 0x64
/* 8147EA2C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147EA30 | 7E E4 BB 78 */	mr r4, r23
/* 8147EA34 | 48 00 5A 49 */	bl Zi8LogError
/* 8147EA38 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147EA3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147EA40 | 40 82 00 1C */	bne .L_8147EA5C
/* 8147EA44 | 38 60 01 35 */	li r3, 0x135
/* 8147EA48 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147EA4C | 7E E4 BB 78 */	mr r4, r23
/* 8147EA50 | 48 00 5A 31 */	bl Zi8ReplaceLastError
/* 8147EA54 | 38 60 00 00 */	li r3, 0x0
/* 8147EA58 | 48 00 04 58 */	b .L_8147EEB0
.L_8147EA5C:
/* 8147EA5C | A3 7D 00 00 */	lhz r27, 0x0(r29)
/* 8147EA60 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147EA64 | 28 00 F3 05 */	cmplwi r0, 0xf305
/* 8147EA68 | 40 80 00 1C */	bge .L_8147EA84
/* 8147EA6C | 38 60 01 54 */	li r3, 0x154
/* 8147EA70 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147EA74 | 7E E4 BB 78 */	mr r4, r23
/* 8147EA78 | 48 00 5A 09 */	bl Zi8ReplaceLastError
/* 8147EA7C | 38 60 00 00 */	li r3, 0x0
/* 8147EA80 | 48 00 04 30 */	b .L_8147EEB0
.L_8147EA84:
/* 8147EA84 | 3C 7B FF FF */	subis r3, r27, 0x1
/* 8147EA88 | 38 03 0C FB */	addi r0, r3, 0xcfb
/* 8147EA8C | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 8147EA90 | 28 1B 00 25 */	cmplwi r27, 0x25
/* 8147EA94 | 41 80 00 1C */	blt .L_8147EAB0
/* 8147EA98 | 38 60 01 54 */	li r3, 0x154
/* 8147EA9C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147EAA0 | 7E E4 BB 78 */	mr r4, r23
/* 8147EAA4 | 48 00 59 DD */	bl Zi8ReplaceLastError
/* 8147EAA8 | 38 60 00 00 */	li r3, 0x0
/* 8147EAAC | 48 00 04 04 */	b .L_8147EEB0
.L_8147EAB0:
/* 8147EAB0 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147EAB4 | 28 00 00 15 */	cmplwi r0, 0x15
/* 8147EAB8 | 40 80 00 D8 */	bge .L_8147EB90
/* 8147EABC | 38 00 7E 00 */	li r0, 0x7e00
/* 8147EAC0 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147EAC4 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147EAC8 | 3C 60 81 61 */	lis r3, Zi8BpmfInitials@ha
/* 8147EACC | 38 63 7F 3C */	addi r3, r3, Zi8BpmfInitials@l
/* 8147EAD0 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8147EAD4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EAD8 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 8147EADC | 54 00 48 2C */	slwi r0, r0, 9
/* 8147EAE0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EAE4 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 8147EAE8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8147EAEC | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8147EAF0 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147EAF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147EAF8 | 40 82 00 54 */	bne .L_8147EB4C
/* 8147EAFC | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147EB00 | B0 18 00 00 */	sth r0, 0x0(r24)
/* 8147EB04 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147EB08 | B0 19 00 00 */	sth r0, 0x0(r25)
/* 8147EB0C | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147EB10 | 28 00 00 0E */	cmplwi r0, 0xe
/* 8147EB14 | 41 80 00 30 */	blt .L_8147EB44
/* 8147EB18 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147EB1C | 28 00 00 14 */	cmplwi r0, 0x14
/* 8147EB20 | 41 81 00 24 */	bgt .L_8147EB44
/* 8147EB24 | A0 18 00 00 */	lhz r0, 0x0(r24)
/* 8147EB28 | 60 00 01 F8 */	ori r0, r0, 0x1f8
/* 8147EB2C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EB30 | B0 18 00 00 */	sth r0, 0x0(r24)
/* 8147EB34 | A0 19 00 00 */	lhz r0, 0x0(r25)
/* 8147EB38 | 60 00 00 38 */	ori r0, r0, 0x38
/* 8147EB3C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EB40 | B0 19 00 00 */	sth r0, 0x0(r25)
.L_8147EB44:
/* 8147EB44 | 7F 83 E3 78 */	mr r3, r28
/* 8147EB48 | 48 00 03 68 */	b .L_8147EEB0
.L_8147EB4C:
/* 8147EB4C | 3B BD 00 02 */	addi r29, r29, 0x2
/* 8147EB50 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147EB54 | 28 00 F3 60 */	cmplwi r0, 0xf360
/* 8147EB58 | 40 82 00 48 */	bne .L_8147EBA0
/* 8147EB5C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8147EB60 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8147EB64 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147EB68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147EB6C | 40 82 00 0C */	bne .L_8147EB78
/* 8147EB70 | 7F 83 E3 78 */	mr r3, r28
/* 8147EB74 | 48 00 03 3C */	b .L_8147EEB0
.L_8147EB78:
/* 8147EB78 | 38 60 01 56 */	li r3, 0x156
/* 8147EB7C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147EB80 | 7E E4 BB 78 */	mr r4, r23
/* 8147EB84 | 48 00 58 FD */	bl Zi8ReplaceLastError
/* 8147EB88 | 38 60 00 00 */	li r3, 0x0
/* 8147EB8C | 48 00 03 24 */	b .L_8147EEB0
.L_8147EB90:
/* 8147EB90 | 38 00 7E 00 */	li r0, 0x7e00
/* 8147EB94 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147EB98 | 38 00 02 00 */	li r0, 0x200
/* 8147EB9C | B0 1E 00 00 */	sth r0, 0x0(r30)
.L_8147EBA0:
/* 8147EBA0 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 8147EBA4 | 3C 63 FF FF */	subis r3, r3, 0x1
/* 8147EBA8 | 38 03 0C FB */	addi r0, r3, 0xcfb
/* 8147EBAC | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 8147EBB0 | 2C 1B 00 23 */	cmpwi r27, 0x23
/* 8147EBB4 | 41 82 00 84 */	beq .L_8147EC38
/* 8147EBB8 | 40 80 00 10 */	bge .L_8147EBC8
/* 8147EBBC | 2C 1B 00 22 */	cmpwi r27, 0x22
/* 8147EBC0 | 40 80 00 14 */	bge .L_8147EBD4
/* 8147EBC4 | 48 00 01 3C */	b .L_8147ED00
.L_8147EBC8:
/* 8147EBC8 | 2C 1B 00 25 */	cmpwi r27, 0x25
/* 8147EBCC | 40 80 01 34 */	bge .L_8147ED00
/* 8147EBD0 | 48 00 00 CC */	b .L_8147EC9C
.L_8147EBD4:
/* 8147EBD4 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147EBD8 | 60 00 00 80 */	ori r0, r0, 0x80
/* 8147EBDC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EBE0 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 8147EBE4 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147EBE8 | 60 00 01 80 */	ori r0, r0, 0x180
/* 8147EBEC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EBF0 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147EBF4 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8147EBF8 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8147EBFC | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147EC00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147EC04 | 40 82 00 2C */	bne .L_8147EC30
/* 8147EC08 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147EC0C | 60 00 00 78 */	ori r0, r0, 0x78
/* 8147EC10 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EC14 | B0 18 00 00 */	sth r0, 0x0(r24)
/* 8147EC18 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147EC1C | 60 00 00 38 */	ori r0, r0, 0x38
/* 8147EC20 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EC24 | B0 19 00 00 */	sth r0, 0x0(r25)
/* 8147EC28 | 7F 83 E3 78 */	mr r3, r28
/* 8147EC2C | 48 00 02 84 */	b .L_8147EEB0
.L_8147EC30:
/* 8147EC30 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 8147EC34 | 48 00 00 F4 */	b .L_8147ED28
.L_8147EC38:
/* 8147EC38 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147EC3C | 60 00 01 00 */	ori r0, r0, 0x100
/* 8147EC40 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EC44 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 8147EC48 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147EC4C | 60 00 01 80 */	ori r0, r0, 0x180
/* 8147EC50 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EC54 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147EC58 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8147EC5C | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8147EC60 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147EC64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147EC68 | 40 82 00 2C */	bne .L_8147EC94
/* 8147EC6C | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147EC70 | 60 00 00 78 */	ori r0, r0, 0x78
/* 8147EC74 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EC78 | B0 18 00 00 */	sth r0, 0x0(r24)
/* 8147EC7C | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147EC80 | 60 00 00 38 */	ori r0, r0, 0x38
/* 8147EC84 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EC88 | B0 19 00 00 */	sth r0, 0x0(r25)
/* 8147EC8C | 7F 83 E3 78 */	mr r3, r28
/* 8147EC90 | 48 00 02 20 */	b .L_8147EEB0
.L_8147EC94:
/* 8147EC94 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 8147EC98 | 48 00 00 90 */	b .L_8147ED28
.L_8147EC9C:
/* 8147EC9C | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147ECA0 | 60 00 01 80 */	ori r0, r0, 0x180
/* 8147ECA4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147ECA8 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 8147ECAC | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147ECB0 | 60 00 01 80 */	ori r0, r0, 0x180
/* 8147ECB4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147ECB8 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147ECBC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8147ECC0 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8147ECC4 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147ECC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147ECCC | 40 82 00 2C */	bne .L_8147ECF8
/* 8147ECD0 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147ECD4 | 60 00 00 78 */	ori r0, r0, 0x78
/* 8147ECD8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147ECDC | B0 18 00 00 */	sth r0, 0x0(r24)
/* 8147ECE0 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147ECE4 | 60 00 00 38 */	ori r0, r0, 0x38
/* 8147ECE8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147ECEC | B0 19 00 00 */	sth r0, 0x0(r25)
/* 8147ECF0 | 7F 83 E3 78 */	mr r3, r28
/* 8147ECF4 | 48 00 01 BC */	b .L_8147EEB0
.L_8147ECF8:
/* 8147ECF8 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 8147ECFC | 48 00 00 2C */	b .L_8147ED28
.L_8147ED00:
/* 8147ED00 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147ED04 | 28 00 F3 31 */	cmplwi r0, 0xf331
/* 8147ED08 | 41 80 00 10 */	blt .L_8147ED18
/* 8147ED0C | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147ED10 | 28 00 F3 35 */	cmplwi r0, 0xf335
/* 8147ED14 | 40 81 00 14 */	ble .L_8147ED28
.L_8147ED18:
/* 8147ED18 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147ED1C | 60 00 01 80 */	ori r0, r0, 0x180
/* 8147ED20 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147ED24 | B0 1F 00 00 */	sth r0, 0x0(r31)
.L_8147ED28:
/* 8147ED28 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 8147ED2C | 3C 63 FF FF */	subis r3, r3, 0x1
/* 8147ED30 | 38 03 0C FB */	addi r0, r3, 0xcfb
/* 8147ED34 | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 8147ED38 | 28 1B 00 14 */	cmplwi r27, 0x14
/* 8147ED3C | 40 81 00 7C */	ble .L_8147EDB8
/* 8147ED40 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147ED44 | 28 00 00 22 */	cmplwi r0, 0x22
/* 8147ED48 | 40 80 00 70 */	bge .L_8147EDB8
/* 8147ED4C | A0 9E 00 00 */	lhz r4, 0x0(r30)
/* 8147ED50 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147ED54 | 3C 60 81 61 */	lis r3, Zi8BpmfInitials@ha
/* 8147ED58 | 38 63 7F 3C */	addi r3, r3, Zi8BpmfInitials@l
/* 8147ED5C | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8147ED60 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147ED64 | 54 00 18 38 */	slwi r0, r0, 3
/* 8147ED68 | 7C 80 03 78 */	or r0, r4, r0
/* 8147ED6C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147ED70 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 8147ED74 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147ED78 | 60 00 00 78 */	ori r0, r0, 0x78
/* 8147ED7C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147ED80 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147ED84 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8147ED88 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8147ED8C | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147ED90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147ED94 | 40 82 00 1C */	bne .L_8147EDB0
/* 8147ED98 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147ED9C | B0 18 00 00 */	sth r0, 0x0(r24)
/* 8147EDA0 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147EDA4 | B0 19 00 00 */	sth r0, 0x0(r25)
/* 8147EDA8 | 7F 83 E3 78 */	mr r3, r28
/* 8147EDAC | 48 00 01 04 */	b .L_8147EEB0
.L_8147EDB0:
/* 8147EDB0 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 8147EDB4 | 48 00 00 4C */	b .L_8147EE00
.L_8147EDB8:
/* 8147EDB8 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147EDBC | 28 00 F3 31 */	cmplwi r0, 0xf331
/* 8147EDC0 | 41 80 00 20 */	blt .L_8147EDE0
/* 8147EDC4 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8147EDC8 | 28 00 F3 35 */	cmplwi r0, 0xf335
/* 8147EDCC | 41 81 00 14 */	bgt .L_8147EDE0
/* 8147EDD0 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147EDD4 | 54 00 05 F0 */	rlwinm r0, r0, 0, 23, 24
/* 8147EDD8 | 2C 00 01 80 */	cmpwi r0, 0x180
/* 8147EDDC | 40 82 00 24 */	bne .L_8147EE00
.L_8147EDE0:
/* 8147EDE0 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147EDE4 | 60 00 00 38 */	ori r0, r0, 0x38
/* 8147EDE8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EDEC | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 8147EDF0 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147EDF4 | 60 00 00 78 */	ori r0, r0, 0x78
/* 8147EDF8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EDFC | B0 1F 00 00 */	sth r0, 0x0(r31)
.L_8147EE00:
/* 8147EE00 | A3 7D 00 00 */	lhz r27, 0x0(r29)
/* 8147EE04 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 8147EE08 | 28 00 F3 31 */	cmplwi r0, 0xf331
/* 8147EE0C | 40 80 00 1C */	bge .L_8147EE28
/* 8147EE10 | 38 60 01 55 */	li r3, 0x155
/* 8147EE14 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147EE18 | 7E E4 BB 78 */	mr r4, r23
/* 8147EE1C | 48 00 56 65 */	bl Zi8ReplaceLastError
/* 8147EE20 | 38 60 00 00 */	li r3, 0x0
/* 8147EE24 | 48 00 00 8C */	b .L_8147EEB0
.L_8147EE28:
/* 8147EE28 | 3C 7B FF FF */	subis r3, r27, 0x1
/* 8147EE2C | 38 03 0C D0 */	addi r0, r3, 0xcd0
/* 8147EE30 | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 8147EE34 | 28 1B 00 05 */	cmplwi r27, 0x5
/* 8147EE38 | 40 81 00 1C */	ble .L_8147EE54
/* 8147EE3C | 38 60 01 55 */	li r3, 0x155
/* 8147EE40 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147EE44 | 7E E4 BB 78 */	mr r4, r23
/* 8147EE48 | 48 00 56 39 */	bl Zi8ReplaceLastError
/* 8147EE4C | 38 60 00 00 */	li r3, 0x0
/* 8147EE50 | 48 00 00 60 */	b .L_8147EEB0
.L_8147EE54:
/* 8147EE54 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147EE58 | 60 00 00 07 */	ori r0, r0, 0x7
/* 8147EE5C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EE60 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 8147EE64 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147EE68 | 7C 00 DB 78 */	or r0, r0, r27
/* 8147EE6C | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 8147EE70 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8147EE74 | B0 18 00 00 */	sth r0, 0x0(r24)
/* 8147EE78 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8147EE7C | B0 19 00 00 */	sth r0, 0x0(r25)
/* 8147EE80 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8147EE84 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8147EE88 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8147EE8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8147EE90 | 41 82 00 1C */	beq .L_8147EEAC
/* 8147EE94 | 38 60 01 57 */	li r3, 0x157
/* 8147EE98 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8147EE9C | 7E E4 BB 78 */	mr r4, r23
/* 8147EEA0 | 48 00 55 E1 */	bl Zi8ReplaceLastError
/* 8147EEA4 | 38 60 00 00 */	li r3, 0x0
/* 8147EEA8 | 48 00 00 08 */	b .L_8147EEB0
.L_8147EEAC:
/* 8147EEAC | 7F 83 E3 78 */	mr r3, r28
.L_8147EEB0:
/* 8147EEB0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8147EEB4 | 48 17 A6 49 */	bl _restgpr_23
/* 8147EEB8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8147EEBC | 7C 08 03 A6 */	mtlr r0
/* 8147EEC0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8147EEC4 | 4E 80 00 20 */	blr
.endfn Zi8GetBpmfPhonetic

# .text:0x1FD4 | 0x8147EEC8 | size: 0x6C
.fn Zi8GetPCode, global
/* 8147EEC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8147EECC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8147EED0 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 8147EED4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EED8 | 54 05 10 3A */	slwi r5, r0, 2
/* 8147EEDC | 88 04 00 09 */	lbz r0, 0x9(r4)
/* 8147EEE0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EEE4 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 8147EEE8 | 7C 00 36 70 */	srawi r0, r0, 6
/* 8147EEEC | 7C A0 03 78 */	or r0, r5, r0
/* 8147EEF0 | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 8147EEF4 | 88 04 00 09 */	lbz r0, 0x9(r4)
/* 8147EEF8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EEFC | 54 05 E7 7E */	extrwi r5, r0, 3, 25
/* 8147EF00 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147EF04 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8147EF08 | 7C A6 03 78 */	or r6, r5, r0
/* 8147EF0C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8147EF10 | 7C A0 1A 14 */	add r5, r0, r3
/* 8147EF14 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 8147EF18 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8147EF1C | 54 00 40 2E */	slwi r0, r0, 8
/* 8147EF20 | 7C C0 03 78 */	or r0, r6, r0
/* 8147EF24 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8147EF28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8147EF2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8147EF30 | 4E 80 00 20 */	blr
.endfn Zi8GetPCode

# 0x81617F20..0x81618130 | size: 0x210
.rodata
.balign 8

# .rodata:0x0 | 0x81617F20 | size: 0x1C
.obj Zi8PinyinInitials, global
	.4byte 0x003C9802
	.4byte 0x0038343B
	.4byte 0x0006372B
	.4byte 0x0C26003F
	.4byte 0x092C9A05
	.4byte 0x0000110A
	.4byte 0x0D9C0000
.endobj Zi8PinyinInitials

# .rodata:0x1C | 0x81617F3C | size: 0x24
.obj Zi8BpmfInitials, global
	.4byte 0x3C3F0C38
	.4byte 0x0205262B
	.4byte 0x34373B06
	.4byte 0x090A1D19
	.4byte 0x1B2C1C18
	.4byte 0x1A010203
	.4byte 0x0508090A
	.4byte 0x0B0C0E0D
	.4byte 0x0F040000
.endobj Zi8BpmfInitials

# .rodata:0x40 | 0x81617F60 | size: 0x1B0
.obj Zi8PinyinFinals, global
	.4byte 0x0FFF0000
	.4byte 0x3C280000
	.4byte 0x0F000000
	.4byte 0x3F2B0000
	.4byte 0x0F0EFF00
	.4byte 0x3F280000
	.4byte 0x0F0E0700
	.4byte 0x3F280000
	.4byte 0x0F150000
	.4byte 0x3F2A0000
	.4byte 0x09FF0000
	.4byte 0x30000000
	.4byte 0x09000000
	.4byte 0x3F080000
	.4byte 0x0901FF00
	.4byte 0x38000000
	.4byte 0x09010000
	.4byte 0x3F040000
	.4byte 0x09010F00
	.4byte 0x3F010000
	.4byte 0x09010EFF
	.4byte 0x3E020000
	.4byte 0x09010E00
	.4byte 0x3F020000
	.4byte 0x09010E07
	.4byte 0x3F030000
	.4byte 0x09050000
	.4byte 0x3F090000
	.4byte 0x09150000
	.4byte 0x3F0B0000
	.4byte 0x090EFF00
	.4byte 0x3E0C0000
	.4byte 0x090E0000
	.4byte 0x3F0C0000
	.4byte 0x090E0700
	.4byte 0x3F0D0000
	.4byte 0x090FFF00
	.4byte 0x3E0E0000
	.4byte 0x090F1500
	.4byte 0x3F0E0000
	.4byte 0x090F0EFF
	.4byte 0x3F0F0000
	.4byte 0x090F0E07
	.4byte 0x3F0F0000
	.4byte 0x15FF0000
	.4byte 0x30100000
	.4byte 0x15000000
	.4byte 0x3F180000
	.4byte 0x1501FF00
	.4byte 0x38100000
	.4byte 0x15010000
	.4byte 0x3F170000
	.4byte 0x15010EFF
	.4byte 0x3E100000
	.4byte 0x15010E00
	.4byte 0x3F100000
	.4byte 0x15010E07
	.4byte 0x3F110000
	.4byte 0x15010900
	.4byte 0x3F130000
	.4byte 0x150E0000
	.4byte 0x3F1C0000
	.4byte 0x15090000
	.4byte 0x3F1D0000
	.4byte 0x150F0000
	.4byte 0x3F1E0000
	.4byte 0x15050000
	.4byte 0x3F1F0000
	.4byte 0x01FF0000
	.4byte 0x38200000
	.4byte 0x01000000
	.4byte 0x3F230000
	.4byte 0x010EFF00
	.4byte 0x3E200000
	.4byte 0x010E0000
	.4byte 0x3F200000
	.4byte 0x010E0700
	.4byte 0x3F210000
	.4byte 0x01090000
	.4byte 0x3F250000
	.4byte 0x010F0000
	.4byte 0x3F260000
	.4byte 0x05FF0000
	.4byte 0x38300000
	.4byte 0x05000000
	.4byte 0x3F340000
	.4byte 0x050EFF00
	.4byte 0x3E300000
	.4byte 0x050E0000
	.4byte 0x3F300000
	.4byte 0x050E0700
	.4byte 0x3F310000
	.4byte 0x05090000
	.4byte 0x3F350000
	.4byte 0x05120000
	.4byte 0x3F330000
	.4byte 0x16FF0000
	.4byte 0x3C380000
	.4byte 0x16000000
	.4byte 0x3F380000
	.4byte 0x1601FF00
	.4byte 0x3F390000
	.4byte 0x16010E00
	.4byte 0x3F390000
	.4byte 0x16050000
	.4byte 0x3F1F0000
	.4byte 0x160E0000
	.4byte 0x3F3B0000
.endobj Zi8PinyinFinals

# .rodata:0x1F0 | 0x81618110 | size: 0x20
.obj nodeHeaderTable, global
	.4byte 0x00100001
	.4byte 0x00030014
	.4byte 0x00050007
	.4byte 0x001C000D
	.4byte 0x000F0011
	.4byte 0x00130015
	.4byte 0x0017001D
	.4byte 0x001F0035
.endobj nodeHeaderTable
