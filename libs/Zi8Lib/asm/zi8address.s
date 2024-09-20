.include "macros.inc"
.file "zi8address.c"

# 0x81330420..0x81330458 | size: 0x38
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330420 | size: 0x8
.obj "@etb_81330420", local
.hidden "@etb_81330420"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330420"

# extab:0x8 | 0x81330428 | size: 0x8
.obj "@etb_81330428", local
.hidden "@etb_81330428"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_81330428"

# extab:0x10 | 0x81330430 | size: 0x8
.obj "@etb_81330430", local
.hidden "@etb_81330430"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330430"

# extab:0x18 | 0x81330438 | size: 0x8
.obj "@etb_81330438", local
.hidden "@etb_81330438"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330438"

# extab:0x20 | 0x81330440 | size: 0x8
.obj "@etb_81330440", local
.hidden "@etb_81330440"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330440"

# extab:0x28 | 0x81330448 | size: 0x8
.obj "@etb_81330448", local
.hidden "@etb_81330448"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330448"

# extab:0x30 | 0x81330450 | size: 0x8
.obj "@etb_81330450", local
.hidden "@etb_81330450"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330450"

# 0x81330FC0..0x81331014 | size: 0x54
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81330FC0 | size: 0xC
.obj "@eti_81330FC0", local
.hidden "@eti_81330FC0"
	.4byte Zi8LangSupported_8145F07C
	.4byte 0x00000164
	.4byte "@etb_81330420"
.endobj "@eti_81330FC0"

# extabindex:0xC | 0x81330FCC | size: 0xC
.obj "@eti_81330FCC", local
.hidden "@eti_81330FCC"
	.4byte Zi8GetTableData
	.4byte 0x000001D0
	.4byte "@etb_81330428"
.endobj "@eti_81330FCC"

# extabindex:0x18 | 0x81330FD8 | size: 0xC
.obj "@eti_81330FD8", local
.hidden "@eti_81330FD8"
	.4byte Zi8GetTableAddress
	.4byte 0x00000040
	.4byte "@etb_81330430"
.endobj "@eti_81330FD8"

# extabindex:0x24 | 0x81330FE4 | size: 0xC
.obj "@eti_81330FE4", local
.hidden "@eti_81330FE4"
	.4byte Zi8GetTableSize
	.4byte 0x00000040
	.4byte "@etb_81330438"
.endobj "@eti_81330FE4"

# extabindex:0x30 | 0x81330FF0 | size: 0xC
.obj "@eti_81330FF0", local
.hidden "@eti_81330FF0"
	.4byte Zi8GetTableCount
	.4byte 0x00000044
	.4byte "@etb_81330440"
.endobj "@eti_81330FF0"

# extabindex:0x3C | 0x81330FFC | size: 0xC
.obj "@eti_81330FFC", local
.hidden "@eti_81330FFC"
	.4byte Zi8GetFormatVersion
	.4byte 0x00000044
	.4byte "@etb_81330448"
.endobj "@eti_81330FFC"

# extabindex:0x48 | 0x81331008 | size: 0xC
.obj "@eti_81331008", local
.hidden "@eti_81331008"
	.4byte Zi8WCharCount
	.4byte 0x000000A0
	.4byte "@etb_81330450"
.endobj "@eti_81331008"

# 0x8145F07C..0x8145F558 | size: 0x4DC
.text
.balign 4

# .text:0x0 | 0x8145F07C | size: 0x164
.fn Zi8LangSupported_8145F07C, global
/* 8145F07C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145F080 | 7C 08 02 A6 */	mflr r0
/* 8145F084 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145F088 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8145F08C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8145F090 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8145F094 | 7C 7D 1B 78 */	mr r29, r3
/* 8145F098 | 7C 9E 23 78 */	mr r30, r4
/* 8145F09C | 38 60 00 64 */	li r3, 0x64
/* 8145F0A0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F0A4 | 7F C4 F3 78 */	mr r4, r30
/* 8145F0A8 | 48 02 53 D5 */	bl Zi8LogError
/* 8145F0AC | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8145F0B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F0B4 | 40 82 00 1C */	bne .L_8145F0D0
/* 8145F0B8 | 38 60 05 78 */	li r3, 0x578
/* 8145F0BC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F0C0 | 7F C4 F3 78 */	mr r4, r30
/* 8145F0C4 | 48 02 53 BD */	bl Zi8ReplaceLastError
/* 8145F0C8 | 38 60 00 00 */	li r3, 0x0
/* 8145F0CC | 48 00 00 F8 */	b .L_8145F1C4
.L_8145F0D0:
/* 8145F0D0 | 3B E0 00 00 */	li r31, 0x0
/* 8145F0D4 | 48 00 00 24 */	b .L_8145F0F8
.L_8145F0D8:
/* 8145F0D8 | 57 A4 06 3E */	clrlwi r4, r29, 24
/* 8145F0DC | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8145F0E0 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8145F0E4 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F0E8 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8145F0EC | 7C 04 00 40 */	cmplw r4, r0
/* 8145F0F0 | 41 82 00 20 */	beq .L_8145F110
/* 8145F0F4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8145F0F8:
/* 8145F0F8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8145F0FC | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8145F100 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F104 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8145F108 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F10C | 40 82 FF CC */	bne .L_8145F0D8
.L_8145F110:
/* 8145F110 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8145F114 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8145F118 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F11C | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8145F120 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F124 | 40 82 00 68 */	bne .L_8145F18C
/* 8145F128 | 3B E0 00 00 */	li r31, 0x0
/* 8145F12C | 48 00 00 48 */	b .L_8145F174
.L_8145F130:
/* 8145F130 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8145F134 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8145F138 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F13C | 7C 63 02 14 */	add r3, r3, r0
/* 8145F140 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145F144 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F148 | 41 82 00 28 */	beq .L_8145F170
/* 8145F14C | 57 A4 06 3E */	clrlwi r4, r29, 24
/* 8145F150 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8145F154 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8145F158 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F15C | 7C 63 02 14 */	add r3, r3, r0
/* 8145F160 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8145F164 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8145F168 | 7C 04 00 40 */	cmplw r4, r0
/* 8145F16C | 41 82 00 20 */	beq .L_8145F18C
.L_8145F170:
/* 8145F170 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8145F174:
/* 8145F174 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8145F178 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8145F17C | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F180 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8145F184 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F188 | 40 82 FF A8 */	bne .L_8145F130
.L_8145F18C:
/* 8145F18C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8145F190 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8145F194 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F198 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8145F19C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F1A0 | 41 82 00 10 */	beq .L_8145F1B0
/* 8145F1A4 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 8145F1A8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 8145F1AC | 48 00 00 18 */	b .L_8145F1C4
.L_8145F1B0:
/* 8145F1B0 | 38 60 05 82 */	li r3, 0x582
/* 8145F1B4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F1B8 | 7F C4 F3 78 */	mr r4, r30
/* 8145F1BC | 48 02 52 C5 */	bl Zi8ReplaceLastError
/* 8145F1C0 | 38 60 00 00 */	li r3, 0x0
.L_8145F1C4:
/* 8145F1C4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8145F1C8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8145F1CC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8145F1D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145F1D4 | 7C 08 03 A6 */	mtlr r0
/* 8145F1D8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145F1DC | 4E 80 00 20 */	blr
.endfn Zi8LangSupported_8145F07C

# .text:0x164 | 0x8145F1E0 | size: 0x1D0
.fn Zi8GetTableData, global
/* 8145F1E0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145F1E4 | 7C 08 02 A6 */	mflr r0
/* 8145F1E8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145F1EC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145F1F0 | 48 19 A2 CD */	bl _savegpr_26
/* 8145F1F4 | 7C 7A 1B 78 */	mr r26, r3
/* 8145F1F8 | 7C 9B 23 78 */	mr r27, r4
/* 8145F1FC | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 8145F200 | 7C DE 33 78 */	mr r30, r6
/* 8145F204 | 3B 80 00 00 */	li r28, 0x0
/* 8145F208 | 38 60 00 64 */	li r3, 0x64
/* 8145F20C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F210 | 7F C4 F3 78 */	mr r4, r30
/* 8145F214 | 48 02 52 69 */	bl Zi8LogError
/* 8145F218 | 57 43 06 3E */	clrlwi r3, r26, 24
/* 8145F21C | 7F C4 F3 78 */	mr r4, r30
/* 8145F220 | 4B FF FE 5D */	bl Zi8LangSupported_8145F07C
/* 8145F224 | 7C 7D 1B 78 */	mr r29, r3
/* 8145F228 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8145F22C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F230 | 3B BD FF FF */	subi r29, r29, 0x1
/* 8145F234 | 41 82 01 50 */	beq .L_8145F384
/* 8145F238 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8145F23C | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8145F240 | 54 00 18 38 */	slwi r0, r0, 3
/* 8145F244 | 7C 63 02 14 */	add r3, r3, r0
/* 8145F248 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8145F24C | 57 40 06 3E */	clrlwi r0, r26, 24
/* 8145F250 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8145F254 | 40 82 00 5C */	bne .L_8145F2B0
/* 8145F258 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8145F25C | 28 00 00 04 */	cmplwi r0, 0x4
/* 8145F260 | 41 80 00 50 */	blt .L_8145F2B0
/* 8145F264 | 88 1E 00 18 */	lbz r0, 0x18(r30)
/* 8145F268 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8145F26C | 41 82 00 1C */	beq .L_8145F288
/* 8145F270 | 88 1E 00 18 */	lbz r0, 0x18(r30)
/* 8145F274 | 28 00 00 80 */	cmplwi r0, 0x80
/* 8145F278 | 41 82 00 10 */	beq .L_8145F288
/* 8145F27C | 88 1E 00 18 */	lbz r0, 0x18(r30)
/* 8145F280 | 28 00 00 40 */	cmplwi r0, 0x40
/* 8145F284 | 40 82 00 2C */	bne .L_8145F2B0
.L_8145F288:
/* 8145F288 | 88 BF 00 8D */	lbz r5, 0x8d(r31)
/* 8145F28C | 88 1F 00 8B */	lbz r0, 0x8b(r31)
/* 8145F290 | 54 04 80 1E */	slwi r4, r0, 16
/* 8145F294 | 88 1F 00 8C */	lbz r0, 0x8c(r31)
/* 8145F298 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145F29C | 7C 05 22 14 */	add r0, r5, r4
/* 8145F2A0 | 7F 83 02 14 */	add r28, r3, r0
/* 8145F2A4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8145F2A8 | 41 82 00 08 */	beq .L_8145F2B0
/* 8145F2AC | 7F FF E2 14 */	add r31, r31, r28
.L_8145F2B0:
/* 8145F2B0 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8145F2B4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8145F2B8 | 41 82 00 A4 */	beq .L_8145F35C
/* 8145F2BC | 40 80 00 14 */	bge .L_8145F2D0
/* 8145F2C0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8145F2C4 | 41 82 00 18 */	beq .L_8145F2DC
/* 8145F2C8 | 40 80 00 64 */	bge .L_8145F32C
/* 8145F2CC | 48 00 00 A0 */	b .L_8145F36C
.L_8145F2D0:
/* 8145F2D0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8145F2D4 | 40 80 00 98 */	bge .L_8145F36C
/* 8145F2D8 | 48 00 00 8C */	b .L_8145F364
.L_8145F2DC:
/* 8145F2DC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8145F2E0 | 1C 00 00 06 */	mulli r0, r0, 0x6
/* 8145F2E4 | 7C 60 FA 14 */	add r3, r0, r31
/* 8145F2E8 | 88 A3 00 09 */	lbz r5, 0x9(r3)
/* 8145F2EC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8145F2F0 | 1C 00 00 06 */	mulli r0, r0, 0x6
/* 8145F2F4 | 7C 60 FA 14 */	add r3, r0, r31
/* 8145F2F8 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 8145F2FC | 54 04 80 1E */	slwi r4, r0, 16
/* 8145F300 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8145F304 | 1C 00 00 06 */	mulli r0, r0, 0x6
/* 8145F308 | 7C 60 FA 14 */	add r3, r0, r31
/* 8145F30C | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 8145F310 | 54 03 40 2E */	slwi r3, r0, 8
/* 8145F314 | 7C 05 22 14 */	add r0, r5, r4
/* 8145F318 | 7C 03 02 14 */	add r0, r3, r0
/* 8145F31C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8145F320 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8145F324 | 7C 7F 02 14 */	add r3, r31, r0
/* 8145F328 | 48 00 00 70 */	b .L_8145F398
.L_8145F32C:
/* 8145F32C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8145F330 | 1C 00 00 06 */	mulli r0, r0, 0x6
/* 8145F334 | 7C 60 FA 14 */	add r3, r0, r31
/* 8145F338 | 3B E3 00 04 */	addi r31, r3, 0x4
/* 8145F33C | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 8145F340 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8145F344 | 54 03 80 1E */	slwi r3, r0, 16
/* 8145F348 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8145F34C | 54 00 40 2E */	slwi r0, r0, 8
/* 8145F350 | 7C 60 03 78 */	or r0, r3, r0
/* 8145F354 | 7C 83 03 78 */	or r3, r4, r0
/* 8145F358 | 48 00 00 40 */	b .L_8145F398
.L_8145F35C:
/* 8145F35C | 88 7F 00 01 */	lbz r3, 0x1(r31)
/* 8145F360 | 48 00 00 38 */	b .L_8145F398
.L_8145F364:
/* 8145F364 | 88 7F 00 03 */	lbz r3, 0x3(r31)
/* 8145F368 | 48 00 00 30 */	b .L_8145F398
.L_8145F36C:
/* 8145F36C | 38 60 01 34 */	li r3, 0x134
/* 8145F370 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F374 | 7F C4 F3 78 */	mr r4, r30
/* 8145F378 | 48 02 51 09 */	bl Zi8ReplaceLastError
/* 8145F37C | 38 60 00 00 */	li r3, 0x0
/* 8145F380 | 48 00 00 18 */	b .L_8145F398
.L_8145F384:
/* 8145F384 | 38 60 02 58 */	li r3, 0x258
/* 8145F388 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F38C | 7F C4 F3 78 */	mr r4, r30
/* 8145F390 | 48 02 50 F1 */	bl Zi8ReplaceLastError
/* 8145F394 | 38 60 00 00 */	li r3, 0x0
.L_8145F398:
/* 8145F398 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145F39C | 48 19 A1 6D */	bl _restgpr_26
/* 8145F3A0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145F3A4 | 7C 08 03 A6 */	mtlr r0
/* 8145F3A8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145F3AC | 4E 80 00 20 */	blr
.endfn Zi8GetTableData

# .text:0x334 | 0x8145F3B0 | size: 0x40
.fn Zi8GetTableAddress, global
/* 8145F3B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145F3B4 | 7C 08 02 A6 */	mflr r0
/* 8145F3B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145F3BC | 98 61 00 08 */	stb r3, 0x8(r1)
/* 8145F3C0 | 98 81 00 09 */	stb r4, 0x9(r1)
/* 8145F3C4 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8145F3C8 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 8145F3CC | 88 81 00 09 */	lbz r4, 0x9(r1)
/* 8145F3D0 | 38 A0 00 01 */	li r5, 0x1
/* 8145F3D4 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 8145F3D8 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8145F3DC | 4B FF FE 05 */	bl Zi8GetTableData
/* 8145F3E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145F3E4 | 7C 08 03 A6 */	mtlr r0
/* 8145F3E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145F3EC | 4E 80 00 20 */	blr
.endfn Zi8GetTableAddress

# .text:0x374 | 0x8145F3F0 | size: 0x40
.fn Zi8GetTableSize, global
/* 8145F3F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145F3F4 | 7C 08 02 A6 */	mflr r0
/* 8145F3F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145F3FC | 98 61 00 08 */	stb r3, 0x8(r1)
/* 8145F400 | 98 81 00 09 */	stb r4, 0x9(r1)
/* 8145F404 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8145F408 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 8145F40C | 88 81 00 09 */	lbz r4, 0x9(r1)
/* 8145F410 | 38 A0 00 02 */	li r5, 0x2
/* 8145F414 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 8145F418 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8145F41C | 4B FF FD C5 */	bl Zi8GetTableData
/* 8145F420 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145F424 | 7C 08 03 A6 */	mtlr r0
/* 8145F428 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145F42C | 4E 80 00 20 */	blr
.endfn Zi8GetTableSize

# .text:0x3B4 | 0x8145F430 | size: 0x44
.fn Zi8GetTableCount, global
/* 8145F430 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145F434 | 7C 08 02 A6 */	mflr r0
/* 8145F438 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145F43C | 98 61 00 08 */	stb r3, 0x8(r1)
/* 8145F440 | 98 81 00 09 */	stb r4, 0x9(r1)
/* 8145F444 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8145F448 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 8145F44C | 88 81 00 09 */	lbz r4, 0x9(r1)
/* 8145F450 | 38 A0 00 02 */	li r5, 0x2
/* 8145F454 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 8145F458 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8145F45C | 4B FF FD 85 */	bl Zi8GetTableData
/* 8145F460 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F464 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145F468 | 7C 08 03 A6 */	mtlr r0
/* 8145F46C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145F470 | 4E 80 00 20 */	blr
.endfn Zi8GetTableCount

# .text:0x3F8 | 0x8145F474 | size: 0x44
.fn Zi8GetFormatVersion, global
/* 8145F474 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145F478 | 7C 08 02 A6 */	mflr r0
/* 8145F47C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145F480 | 98 61 00 08 */	stb r3, 0x8(r1)
/* 8145F484 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8145F488 | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 8145F48C | 38 80 00 00 */	li r4, 0x0
/* 8145F490 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8145F494 | 38 A0 00 04 */	li r5, 0x4
/* 8145F498 | 54 A5 06 3E */	clrlwi r5, r5, 24
/* 8145F49C | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8145F4A0 | 4B FF FD 41 */	bl Zi8GetTableData
/* 8145F4A4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8145F4A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145F4AC | 7C 08 03 A6 */	mtlr r0
/* 8145F4B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145F4B4 | 4E 80 00 20 */	blr
.endfn Zi8GetFormatVersion

# .text:0x43C | 0x8145F4B8 | size: 0xA0
.fn Zi8WCharCount, global
/* 8145F4B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145F4BC | 7C 08 02 A6 */	mflr r0
/* 8145F4C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145F4C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8145F4C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8145F4CC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8145F4D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8145F4D4 | 7C 9D 23 78 */	mr r29, r4
/* 8145F4D8 | 3B C0 00 00 */	li r30, 0x0
/* 8145F4DC | 38 60 00 64 */	li r3, 0x64
/* 8145F4E0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F4E4 | 7F A4 EB 78 */	mr r4, r29
/* 8145F4E8 | 48 02 4F 95 */	bl Zi8LogError
/* 8145F4EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145F4F0 | 40 82 00 1C */	bne .L_8145F50C
/* 8145F4F4 | 38 60 01 2D */	li r3, 0x12d
/* 8145F4F8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8145F4FC | 7F A4 EB 78 */	mr r4, r29
/* 8145F500 | 48 02 4F 81 */	bl Zi8ReplaceLastError
/* 8145F504 | 38 60 00 00 */	li r3, 0x0
/* 8145F508 | 48 00 00 34 */	b .L_8145F53C
.L_8145F50C:
/* 8145F50C | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8145F510 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F514 | 40 82 00 10 */	bne .L_8145F524
/* 8145F518 | 38 60 00 00 */	li r3, 0x0
/* 8145F51C | 48 00 00 20 */	b .L_8145F53C
.L_8145F520:
/* 8145F520 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8145F524:
/* 8145F524 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8145F528 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8145F52C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8145F530 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145F534 | 40 82 FF EC */	bne .L_8145F520
/* 8145F538 | 7F C3 F3 78 */	mr r3, r30
.L_8145F53C:
/* 8145F53C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8145F540 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8145F544 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8145F548 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145F54C | 7C 08 03 A6 */	mtlr r0
/* 8145F550 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145F554 | 4E 80 00 20 */	blr
.endfn Zi8WCharCount
