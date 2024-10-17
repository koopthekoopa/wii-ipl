.include "macros.inc"
.file "RFL_MakeTex.c"

# 0x813309C0..0x81330A00 | size: 0x40
.section extab, "a"
.balign 4

# extab:0x0 | 0x813309C0 | size: 0x8
.obj "@etb_813309C0", local
.hidden "@etb_813309C0"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x280A0000
	.4byte 0x00000000
.endobj "@etb_813309C0"

# extab:0x8 | 0x813309C8 | size: 0x8
.obj "@etb_813309C8", local
.hidden "@etb_813309C8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp31
 * Saved GPR range: r14-r31
 */
	.4byte 0x904A0000
	.4byte 0x00000000
.endobj "@etb_813309C8"

# extab:0x10 | 0x813309D0 | size: 0x8
.obj "@etb_813309D0", local
.hidden "@etb_813309D0"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_813309D0"

# extab:0x18 | 0x813309D8 | size: 0x8
.obj "@etb_813309D8", local
.hidden "@etb_813309D8"
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
.endobj "@etb_813309D8"

# extab:0x20 | 0x813309E0 | size: 0x8
.obj "@etb_813309E0", local
.hidden "@etb_813309E0"
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
.endobj "@etb_813309E0"

# extab:0x28 | 0x813309E8 | size: 0x8
.obj "@etb_813309E8", local
.hidden "@etb_813309E8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp16-fp31
 */
	.4byte 0x040A0000
	.4byte 0x00000000
.endobj "@etb_813309E8"

# extab:0x30 | 0x813309F0 | size: 0x8
.obj "@etb_813309F0", local
.hidden "@etb_813309F0"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r25-r31
 */
	.4byte 0x380A0000
	.4byte 0x00000000
.endobj "@etb_813309F0"

# extab:0x38 | 0x813309F8 | size: 0x8
.obj "@etb_813309F8", local
.hidden "@etb_813309F8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp27-fp31
 * Saved GPR range: r30-r31
 */
	.4byte 0x114A0000
	.4byte 0x00000000
.endobj "@etb_813309F8"

# 0x81331830..0x81331890 | size: 0x60
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x81331830 | size: 0xC
.obj "@eti_81331830", local
.hidden "@eti_81331830"
	.4byte RFLiSetupCopyTex
	.4byte 0x00000130
	.4byte "@etb_813309C0"
.endobj "@eti_81331830"

# extabindex:0xC | 0x8133183C | size: 0xC
.obj "@eti_8133183C", local
.hidden "@eti_8133183C"
	.4byte RFLiMakeTexture
	.4byte 0x00001088
	.4byte "@etb_813309C8"
.endobj "@eti_8133183C"

# extabindex:0x18 | 0x81331848 | size: 0xC
.obj "@eti_81331848", local
.hidden "@eti_81331848"
	.4byte RFLiSetup2DCameraAndParam
	.4byte 0x000001D8
	.4byte "@etb_813309D0"
.endobj "@eti_81331848"

# extabindex:0x24 | 0x81331854 | size: 0xC
.obj "@eti_81331854", local
.hidden "@eti_81331854"
	.4byte RFLiSetTev4Mouth
	.4byte 0x00000248
	.4byte "@etb_813309D8"
.endobj "@eti_81331854"

# extabindex:0x30 | 0x81331860 | size: 0xC
.obj "@eti_81331860", local
.hidden "@eti_81331860"
	.4byte RFLiSetTev4Eye
	.4byte 0x000002B0
	.4byte "@etb_813309E0"
.endobj "@eti_81331860"

# extabindex:0x3C | 0x8133186C | size: 0xC
.obj "@eti_8133186C", local
.hidden "@eti_8133186C"
	.4byte RFLiSetFaceParts
	.4byte 0x00000508
	.4byte "@etb_813309E8"
.endobj "@eti_8133186C"

# extabindex:0x48 | 0x81331878 | size: 0xC
.obj "@eti_81331878", local
.hidden "@eti_81331878"
	.4byte RFLiCapture
	.4byte 0x0000086C
	.4byte "@etb_813309F0"
.endobj "@eti_81331878"

# extabindex:0x54 | 0x81331884 | size: 0xC
.obj "@eti_81331884", local
.hidden "@eti_81331884"
	.4byte RFLiDrawQuad
	.4byte 0x000001F8
	.4byte "@etb_813309F8"
.endobj "@eti_81331884"

# 0x814E12C8..0x814E3B64 | size: 0x289C
.text
.balign 4

# .text:0x0 | 0x814E12C8 | size: 0x130
.fn RFLiSetupCopyTex, global
/* 814E12C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814E12CC | 7C 08 02 A6 */	mflr r0
/* 814E12D0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814E12D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814E12D8 | 48 11 81 E9 */	bl _savegpr_27
/* 814E12DC | C0 22 8C B4 */	lfs f1, lbl_816950B4@sda21(r0)
/* 814E12E0 | 38 00 00 00 */	li r0, 0x0
/* 814E12E4 | C0 62 8C B8 */	lfs f3, lbl_816950B8@sda21(r0)
/* 814E12E8 | 7C 7B 1B 78 */	mr r27, r3
/* 814E12EC | FC 40 08 90 */	fmr f2, f1
/* 814E12F0 | 7C 9C 23 78 */	mr r28, r4
/* 814E12F4 | FC 80 18 90 */	fmr f4, f3
/* 814E12F8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814E12FC | 7C BD 2B 78 */	mr r29, r5
/* 814E1300 | 7C DE 33 78 */	mr r30, r6
/* 814E1304 | 7C FF 3B 78 */	mr r31, r7
/* 814E1308 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814E130C | 38 60 00 00 */	li r3, 0x0
/* 814E1310 | 48 06 61 09 */	bl GXSetFog
/* 814E1314 | 38 60 00 01 */	li r3, 0x1
/* 814E1318 | 48 06 64 A1 */	bl GXSetColorUpdate
/* 814E131C | 38 60 00 01 */	li r3, 0x1
/* 814E1320 | 48 06 64 C5 */	bl GXSetAlphaUpdate
/* 814E1324 | 38 60 00 00 */	li r3, 0x0
/* 814E1328 | 38 80 00 00 */	li r4, 0x0
/* 814E132C | 48 06 66 1D */	bl GXSetDstAlpha
/* 814E1330 | 38 60 00 01 */	li r3, 0x1
/* 814E1334 | 38 80 00 03 */	li r4, 0x3
/* 814E1338 | 38 A0 00 01 */	li r5, 0x1
/* 814E133C | 48 06 64 D5 */	bl GXSetZMode
/* 814E1340 | 38 60 00 01 */	li r3, 0x1
/* 814E1344 | 38 80 00 00 */	li r4, 0x0
/* 814E1348 | 48 06 65 2D */	bl GXSetPixelFmt
/* 814E134C | 38 60 00 00 */	li r3, 0x0
/* 814E1350 | 38 80 00 00 */	li r4, 0x0
/* 814E1354 | 38 A0 00 00 */	li r5, 0x0
/* 814E1358 | 38 C0 00 00 */	li r6, 0x0
/* 814E135C | 48 06 3F 5D */	bl GXSetCopyFilter
/* 814E1360 | 38 60 00 03 */	li r3, 0x3
/* 814E1364 | 48 06 3B B9 */	bl GXSetCopyClamp
/* 814E1368 | 7F 85 E3 78 */	mr r5, r28
/* 814E136C | 7F A6 EB 78 */	mr r6, r29
/* 814E1370 | 38 60 00 00 */	li r3, 0x0
/* 814E1374 | 38 80 00 00 */	li r4, 0x0
/* 814E1378 | 48 06 3A 05 */	bl GXSetTexCopySrc
/* 814E137C | 7F 83 E3 78 */	mr r3, r28
/* 814E1380 | 7F A4 EB 78 */	mr r4, r29
/* 814E1384 | 7F 65 DB 78 */	mr r5, r27
/* 814E1388 | 38 C0 00 00 */	li r6, 0x0
/* 814E138C | 48 06 3A 55 */	bl GXSetTexCopyDst
/* 814E1390 | 88 FF 00 00 */	lbz r7, 0x0(r31)
/* 814E1394 | 3C 80 01 00 */	lis r4, 0x100
/* 814E1398 | 88 DF 00 01 */	lbz r6, 0x1(r31)
/* 814E139C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E13A0 | 88 BF 00 02 */	lbz r5, 0x2(r31)
/* 814E13A4 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814E13A8 | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 814E13AC | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 814E13B0 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 814E13B4 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 814E13B8 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814E13BC | 48 06 3E 85 */	bl GXSetCopyClear
/* 814E13C0 | 57 80 0B FC */	clrlslwi r0, r28, 16, 1
/* 814E13C4 | 7F C3 F3 78 */	mr r3, r30
/* 814E13C8 | 7C 9D 01 D6 */	mullw r4, r29, r0
/* 814E13CC | 48 04 C5 3D */	bl DCInvalidateRange
/* 814E13D0 | 7F C3 F3 78 */	mr r3, r30
/* 814E13D4 | 38 80 00 01 */	li r4, 0x1
/* 814E13D8 | 48 06 42 15 */	bl GXCopyTex
/* 814E13DC | 48 06 30 99 */	bl GXPixModeSync
/* 814E13E0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814E13E4 | 48 11 81 29 */	bl _restgpr_27
/* 814E13E8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814E13EC | 7C 08 03 A6 */	mtlr r0
/* 814E13F0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814E13F4 | 4E 80 00 20 */	blr
.endfn RFLiSetupCopyTex

# .text:0x130 | 0x814E13F8 | size: 0x1088
.fn RFLiMakeTexture, global
/* 814E13F8 | 94 21 EE 80 */	stwu r1, -0x1180(r1)
/* 814E13FC | 7C 08 02 A6 */	mflr r0
/* 814E1400 | 90 01 11 84 */	stw r0, 0x1184(r1)
/* 814E1404 | 38 00 11 78 */	li r0, 0x1178
/* 814E1408 | DB E1 11 70 */	stfd f31, 0x1170(r1)
/* 814E140C | 13 E1 00 0E */	psq_stx f31, r1, r0, 0, qr0
/* 814E1410 | 39 61 11 70 */	addi r11, r1, 0x1170
/* 814E1414 | 48 11 80 79 */	bl _savegpr_14
/* 814E1418 | 3C 00 43 30 */	lis r0, 0x4330
/* 814E141C | 7C 6F 1B 78 */	mr r15, r3
/* 814E1420 | 90 01 11 08 */	stw r0, 0x1108(r1)
/* 814E1424 | 7C 90 23 78 */	mr r16, r4
/* 814E1428 | 38 60 00 00 */	li r3, 0x0
/* 814E142C | 38 80 00 00 */	li r4, 0x0
/* 814E1430 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 814E1434 | 90 01 11 10 */	stw r0, 0x1110(r1)
/* 814E1438 | 4B FF A3 2D */	bl RFLiGetTexSize
/* 814E143C | 90 61 11 20 */	stw r3, 0x1120(r1)
/* 814E1440 | 38 60 00 01 */	li r3, 0x1
/* 814E1444 | 38 80 00 00 */	li r4, 0x0
/* 814E1448 | 4B FF A3 1D */	bl RFLiGetTexSize
/* 814E144C | 90 61 11 1C */	stw r3, 0x111c(r1)
/* 814E1450 | 38 60 00 02 */	li r3, 0x2
/* 814E1454 | 38 80 00 00 */	li r4, 0x0
/* 814E1458 | 4B FF A3 0D */	bl RFLiGetTexSize
/* 814E145C | 90 61 11 18 */	stw r3, 0x1118(r1)
/* 814E1460 | 38 60 00 03 */	li r3, 0x3
/* 814E1464 | 38 80 00 00 */	li r4, 0x0
/* 814E1468 | 4B FF A2 FD */	bl RFLiGetTexSize
/* 814E146C | 7C 6E 1B 78 */	mr r14, r3
/* 814E1470 | 38 60 00 04 */	li r3, 0x4
/* 814E1474 | 38 80 00 00 */	li r4, 0x0
/* 814E1478 | 4B FF A2 ED */	bl RFLiGetTexSize
/* 814E147C | 3B C0 00 00 */	li r30, 0x0
/* 814E1480 | 3B 01 00 60 */	addi r24, r1, 0x60
/* 814E1484 | 93 C1 00 64 */	stw r30, 0x64(r1)
/* 814E1488 | 38 81 00 3C */	addi r4, r1, 0x3c
/* 814E148C | 3B A1 00 64 */	addi r29, r1, 0x64
/* 814E1490 | 39 21 00 40 */	addi r9, r1, 0x40
/* 814E1494 | 93 C1 00 60 */	stw r30, 0x60(r1)
/* 814E1498 | 7C 77 1B 78 */	mr r23, r3
/* 814E149C | 38 01 00 34 */	addi r0, r1, 0x34
/* 814E14A0 | 3B 81 00 5C */	addi r28, r1, 0x5c
/* 814E14A4 | 3B 61 00 54 */	addi r27, r1, 0x54
/* 814E14A8 | 3B 41 00 4C */	addi r26, r1, 0x4c
/* 814E14AC | 3B 21 00 48 */	addi r25, r1, 0x48
/* 814E14B0 | 39 81 00 58 */	addi r12, r1, 0x58
/* 814E14B4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814E14B8 | 39 41 00 44 */	addi r10, r1, 0x44
/* 814E14BC | 39 01 00 38 */	addi r8, r1, 0x38
/* 814E14C0 | 38 E1 00 30 */	addi r7, r1, 0x30
/* 814E14C4 | 38 C1 00 28 */	addi r6, r1, 0x28
/* 814E14C8 | 38 A1 00 24 */	addi r5, r1, 0x24
/* 814E14CC | 3B E1 00 2C */	addi r31, r1, 0x2c
/* 814E14D0 | 90 01 00 70 */	stw r0, 0x70(r1)
/* 814E14D4 | 38 01 00 20 */	addi r0, r1, 0x20
/* 814E14D8 | 3A C0 00 00 */	li r22, 0x0
/* 814E14DC | 93 C1 00 5C */	stw r30, 0x5c(r1)
/* 814E14E0 | 3A A0 00 00 */	li r21, 0x0
/* 814E14E4 | 3A 80 00 00 */	li r20, 0x0
/* 814E14E8 | 3A 60 00 00 */	li r19, 0x0
/* 814E14EC | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 814E14F0 | 3A 40 00 00 */	li r18, 0x0
/* 814E14F4 | 3A 20 00 00 */	li r17, 0x0
/* 814E14F8 | 93 C1 00 54 */	stw r30, 0x54(r1)
/* 814E14FC | 93 C1 00 50 */	stw r30, 0x50(r1)
/* 814E1500 | 93 C1 00 4C */	stw r30, 0x4c(r1)
/* 814E1504 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 814E1508 | 93 C1 00 44 */	stw r30, 0x44(r1)
/* 814E150C | 93 C1 00 40 */	stw r30, 0x40(r1)
/* 814E1510 | 93 C1 00 3C */	stw r30, 0x3c(r1)
/* 814E1514 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 814E1518 | 93 C1 00 34 */	stw r30, 0x34(r1)
/* 814E151C | 93 C1 00 30 */	stw r30, 0x30(r1)
/* 814E1520 | 93 C1 00 2C */	stw r30, 0x2c(r1)
/* 814E1524 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814E1528 | 93 C1 00 24 */	stw r30, 0x24(r1)
/* 814E152C | 93 C1 00 20 */	stw r30, 0x20(r1)
/* 814E1530 | 80 70 00 00 */	lwz r3, 0x0(r16)
/* 814E1534 | 93 A1 00 BC */	stw r29, 0xbc(r1)
/* 814E1538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E153C | 93 81 00 C0 */	stw r28, 0xc0(r1)
/* 814E1540 | 93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 814E1544 | 93 61 00 C8 */	stw r27, 0xc8(r1)
/* 814E1548 | 93 41 00 CC */	stw r26, 0xcc(r1)
/* 814E154C | 93 21 00 D0 */	stw r25, 0xd0(r1)
/* 814E1550 | 93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 814E1554 | 93 01 00 A0 */	stw r24, 0xa0(r1)
/* 814E1558 | 93 01 00 A4 */	stw r24, 0xa4(r1)
/* 814E155C | 91 81 00 A8 */	stw r12, 0xa8(r1)
/* 814E1560 | 91 61 00 AC */	stw r11, 0xac(r1)
/* 814E1564 | 93 01 00 B0 */	stw r24, 0xb0(r1)
/* 814E1568 | 93 01 00 B4 */	stw r24, 0xb4(r1)
/* 814E156C | 91 41 00 B8 */	stw r10, 0xb8(r1)
/* 814E1570 | 91 21 00 84 */	stw r9, 0x84(r1)
/* 814E1574 | 91 01 00 88 */	stw r8, 0x88(r1)
/* 814E1578 | 91 21 00 8C */	stw r9, 0x8c(r1)
/* 814E157C | 90 E1 00 90 */	stw r7, 0x90(r1)
/* 814E1580 | 90 C1 00 94 */	stw r6, 0x94(r1)
/* 814E1584 | 90 A1 00 98 */	stw r5, 0x98(r1)
/* 814E1588 | 91 21 00 9C */	stw r9, 0x9c(r1)
/* 814E158C | 90 81 00 68 */	stw r4, 0x68(r1)
/* 814E1590 | 90 81 00 6C */	stw r4, 0x6c(r1)
/* 814E1594 | 93 E1 00 74 */	stw r31, 0x74(r1)
/* 814E1598 | 90 81 00 78 */	stw r4, 0x78(r1)
/* 814E159C | 90 81 00 7C */	stw r4, 0x7c(r1)
/* 814E15A0 | 90 01 00 80 */	stw r0, 0x80(r1)
/* 814E15A4 | 41 82 00 28 */	beq .L_814E15CC
/* 814E15A8 | 38 00 00 0A */	li r0, 0xa
/* 814E15AC | 38 A1 0E D4 */	addi r5, r1, 0xed4
/* 814E15B0 | 38 8F FF FC */	subi r4, r15, 0x4
/* 814E15B4 | 7C 09 03 A6 */	mtctr r0
.L_814E15B8:
/* 814E15B8 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814E15BC | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814E15C0 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814E15C4 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814E15C8 | 42 00 FF F0 */	bdnz .L_814E15B8
.L_814E15CC:
/* 814E15CC | 80 10 00 04 */	lwz r0, 0x4(r16)
/* 814E15D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E15D4 | 41 82 00 A0 */	beq .L_814E1674
/* 814E15D8 | 38 00 00 01 */	li r0, 0x1
/* 814E15DC | 38 61 0E D8 */	addi r3, r1, 0xed8
/* 814E15E0 | 1C 80 00 50 */	mulli r4, r0, 0x50
/* 814E15E4 | 38 AF FF FC */	subi r5, r15, 0x4
/* 814E15E8 | 38 00 00 0A */	li r0, 0xa
/* 814E15EC | 7C 63 22 14 */	add r3, r3, r4
/* 814E15F0 | 38 C3 FF FC */	subi r6, r3, 0x4
/* 814E15F4 | 7C 09 03 A6 */	mtctr r0
.L_814E15F8:
/* 814E15F8 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 814E15FC | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 814E1600 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 814E1604 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 814E1608 | 42 00 FF F0 */	bdnz .L_814E15F8
/* 814E160C | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814E1610 | 38 00 00 30 */	li r0, 0x30
/* 814E1614 | 50 06 D0 0A */	rlwimi r6, r0, 26, 0, 5
/* 814E1618 | 3C 80 81 62 */	lis r4, RFLi_EYE_ROT_OFFSET@ha
/* 814E161C | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 814E1620 | 54 C5 36 BE */	srwi r5, r6, 26
/* 814E1624 | 38 84 D3 58 */	addi r4, r4, RFLi_EYE_ROT_OFFSET@l
/* 814E1628 | 80 0F 00 04 */	lwz r0, 0x4(r15)
/* 814E162C | 7C A4 28 AE */	lbzx r5, r4, r5
/* 814E1630 | 54 00 36 BE */	srwi r0, r0, 26
/* 814E1634 | 7C 84 00 AE */	lbzx r4, r4, r0
/* 814E1638 | 54 C0 96 FE */	extrwi r0, r6, 5, 13
/* 814E163C | 7C 85 20 50 */	subf r4, r5, r4
/* 814E1640 | 7C 04 02 15 */	add. r0, r4, r0
/* 814E1644 | 40 80 00 10 */	bge .L_814E1654
/* 814E1648 | 54 C0 04 98 */	rlwinm r0, r6, 0, 18, 12
/* 814E164C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814E1650 | 48 00 00 24 */	b .L_814E1674
.L_814E1654:
/* 814E1654 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 814E1658 | 40 81 00 14 */	ble .L_814E166C
/* 814E165C | 38 00 00 07 */	li r0, 0x7
/* 814E1660 | 50 06 73 62 */	rlwimi r6, r0, 14, 13, 17
/* 814E1664 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 814E1668 | 48 00 00 0C */	b .L_814E1674
.L_814E166C:
/* 814E166C | 50 06 73 62 */	rlwimi r6, r0, 14, 13, 17
/* 814E1670 | 90 C3 00 04 */	stw r6, 0x4(r3)
.L_814E1674:
/* 814E1674 | 80 10 00 08 */	lwz r0, 0x8(r16)
/* 814E1678 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E167C | 41 82 00 C0 */	beq .L_814E173C
/* 814E1680 | 38 00 00 02 */	li r0, 0x2
/* 814E1684 | 38 C1 0E D8 */	addi r6, r1, 0xed8
/* 814E1688 | 1C 60 00 50 */	mulli r3, r0, 0x50
/* 814E168C | 38 8F FF FC */	subi r4, r15, 0x4
/* 814E1690 | 38 00 00 0A */	li r0, 0xa
/* 814E1694 | 7C C6 1A 14 */	add r6, r6, r3
/* 814E1698 | 38 A6 FF FC */	subi r5, r6, 0x4
/* 814E169C | 7C 09 03 A6 */	mtctr r0
.L_814E16A0:
/* 814E16A0 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814E16A4 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814E16A8 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814E16AC | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814E16B0 | 42 00 FF F0 */	bdnz .L_814E16A0
/* 814E16B4 | 80 86 00 08 */	lwz r4, 0x8(r6)
/* 814E16B8 | 54 83 8E FE */	extrwi r3, r4, 5, 12
/* 814E16BC | 34 03 00 02 */	addic. r0, r3, 0x2
/* 814E16C0 | 40 80 00 10 */	bge .L_814E16D0
/* 814E16C4 | 54 80 04 56 */	rlwinm r0, r4, 0, 17, 11
/* 814E16C8 | 90 06 00 08 */	stw r0, 0x8(r6)
/* 814E16CC | 48 00 00 24 */	b .L_814E16F0
.L_814E16D0:
/* 814E16D0 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 814E16D4 | 40 81 00 14 */	ble .L_814E16E8
/* 814E16D8 | 38 00 00 0B */	li r0, 0xb
/* 814E16DC | 50 04 7B 20 */	rlwimi r4, r0, 15, 12, 16
/* 814E16E0 | 90 86 00 08 */	stw r4, 0x8(r6)
/* 814E16E4 | 48 00 00 0C */	b .L_814E16F0
.L_814E16E8:
/* 814E16E8 | 50 04 7B 20 */	rlwimi r4, r0, 15, 12, 16
/* 814E16EC | 90 86 00 08 */	stw r4, 0x8(r6)
.L_814E16F0:
/* 814E16F0 | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 814E16F4 | 54 83 96 FE */	extrwi r3, r4, 5, 13
/* 814E16F8 | 34 03 00 02 */	addic. r0, r3, 0x2
/* 814E16FC | 40 80 00 10 */	bge .L_814E170C
/* 814E1700 | 54 80 04 98 */	rlwinm r0, r4, 0, 18, 12
/* 814E1704 | 90 06 00 04 */	stw r0, 0x4(r6)
/* 814E1708 | 48 00 00 24 */	b .L_814E172C
.L_814E170C:
/* 814E170C | 2C 00 00 07 */	cmpwi r0, 0x7
/* 814E1710 | 40 81 00 14 */	ble .L_814E1724
/* 814E1714 | 38 00 00 07 */	li r0, 0x7
/* 814E1718 | 50 04 73 62 */	rlwimi r4, r0, 14, 13, 17
/* 814E171C | 90 86 00 04 */	stw r4, 0x4(r6)
/* 814E1720 | 48 00 00 0C */	b .L_814E172C
.L_814E1724:
/* 814E1724 | 50 04 73 62 */	rlwimi r4, r0, 14, 13, 17
/* 814E1728 | 90 86 00 04 */	stw r4, 0x4(r6)
.L_814E172C:
/* 814E172C | A0 06 00 0E */	lhz r0, 0xe(r6)
/* 814E1730 | 38 60 00 0A */	li r3, 0xa
/* 814E1734 | 50 60 5C 28 */	rlwimi r0, r3, 11, 16, 20
/* 814E1738 | B0 06 00 0E */	sth r0, 0xe(r6)
.L_814E173C:
/* 814E173C | 80 10 00 0C */	lwz r0, 0xc(r16)
/* 814E1740 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E1744 | 41 82 00 C0 */	beq .L_814E1804
/* 814E1748 | 38 00 00 03 */	li r0, 0x3
/* 814E174C | 38 C1 0E D8 */	addi r6, r1, 0xed8
/* 814E1750 | 1C 60 00 50 */	mulli r3, r0, 0x50
/* 814E1754 | 38 8F FF FC */	subi r4, r15, 0x4
/* 814E1758 | 38 00 00 0A */	li r0, 0xa
/* 814E175C | 7C C6 1A 14 */	add r6, r6, r3
/* 814E1760 | 38 A6 FF FC */	subi r5, r6, 0x4
/* 814E1764 | 7C 09 03 A6 */	mtctr r0
.L_814E1768:
/* 814E1768 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814E176C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814E1770 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814E1774 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814E1778 | 42 00 FF F0 */	bdnz .L_814E1768
/* 814E177C | 80 86 00 08 */	lwz r4, 0x8(r6)
/* 814E1780 | 54 83 8E FE */	extrwi r3, r4, 5, 12
/* 814E1784 | 34 03 FF FE */	subic. r0, r3, 0x2
/* 814E1788 | 40 80 00 10 */	bge .L_814E1798
/* 814E178C | 54 80 04 56 */	rlwinm r0, r4, 0, 17, 11
/* 814E1790 | 90 06 00 08 */	stw r0, 0x8(r6)
/* 814E1794 | 48 00 00 24 */	b .L_814E17B8
.L_814E1798:
/* 814E1798 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 814E179C | 40 81 00 14 */	ble .L_814E17B0
/* 814E17A0 | 38 00 00 0B */	li r0, 0xb
/* 814E17A4 | 50 04 7B 20 */	rlwimi r4, r0, 15, 12, 16
/* 814E17A8 | 90 86 00 08 */	stw r4, 0x8(r6)
/* 814E17AC | 48 00 00 0C */	b .L_814E17B8
.L_814E17B0:
/* 814E17B0 | 50 04 7B 20 */	rlwimi r4, r0, 15, 12, 16
/* 814E17B4 | 90 86 00 08 */	stw r4, 0x8(r6)
.L_814E17B8:
/* 814E17B8 | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 814E17BC | 54 83 96 FE */	extrwi r3, r4, 5, 13
/* 814E17C0 | 34 03 FF FE */	subic. r0, r3, 0x2
/* 814E17C4 | 40 80 00 10 */	bge .L_814E17D4
/* 814E17C8 | 54 80 04 98 */	rlwinm r0, r4, 0, 18, 12
/* 814E17CC | 90 06 00 04 */	stw r0, 0x4(r6)
/* 814E17D0 | 48 00 00 24 */	b .L_814E17F4
.L_814E17D4:
/* 814E17D4 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 814E17D8 | 40 81 00 14 */	ble .L_814E17EC
/* 814E17DC | 38 00 00 07 */	li r0, 0x7
/* 814E17E0 | 50 04 73 62 */	rlwimi r4, r0, 14, 13, 17
/* 814E17E4 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 814E17E8 | 48 00 00 0C */	b .L_814E17F4
.L_814E17EC:
/* 814E17EC | 50 04 73 62 */	rlwimi r4, r0, 14, 13, 17
/* 814E17F0 | 90 86 00 04 */	stw r4, 0x4(r6)
.L_814E17F4:
/* 814E17F4 | A0 06 00 0E */	lhz r0, 0xe(r6)
/* 814E17F8 | 38 60 00 0C */	li r3, 0xc
/* 814E17FC | 50 60 5C 28 */	rlwimi r0, r3, 11, 16, 20
/* 814E1800 | B0 06 00 0E */	sth r0, 0xe(r6)
.L_814E1804:
/* 814E1804 | 80 10 00 10 */	lwz r0, 0x10(r16)
/* 814E1808 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E180C | 41 82 00 B8 */	beq .L_814E18C4
/* 814E1810 | 38 00 00 04 */	li r0, 0x4
/* 814E1814 | 38 61 0E D8 */	addi r3, r1, 0xed8
/* 814E1818 | 1C 80 00 50 */	mulli r4, r0, 0x50
/* 814E181C | 38 AF FF FC */	subi r5, r15, 0x4
/* 814E1820 | 38 00 00 0A */	li r0, 0xa
/* 814E1824 | 7C 63 22 14 */	add r3, r3, r4
/* 814E1828 | 38 C3 FF FC */	subi r6, r3, 0x4
/* 814E182C | 7C 09 03 A6 */	mtctr r0
.L_814E1830:
/* 814E1830 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 814E1834 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 814E1838 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 814E183C | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 814E1840 | 42 00 FF F0 */	bdnz .L_814E1830
/* 814E1844 | 80 E3 00 08 */	lwz r7, 0x8(r3)
/* 814E1848 | 3C A0 81 62 */	lis r5, RFLi_EYE_ROT_OFFSET@ha
/* 814E184C | 38 80 00 31 */	li r4, 0x31
/* 814E1850 | 54 E6 D6 FE */	extrwi r6, r7, 5, 21
/* 814E1854 | 38 A5 D3 58 */	addi r5, r5, RFLi_EYE_ROT_OFFSET@l
/* 814E1858 | 38 06 FF FE */	subi r0, r6, 0x2
/* 814E185C | 50 07 35 72 */	rlwimi r7, r0, 6, 21, 25
/* 814E1860 | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 814E1864 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814E1868 | 50 80 D0 0A */	rlwimi r0, r4, 26, 0, 5
/* 814E186C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814E1870 | 54 00 36 BE */	srwi r0, r0, 26
/* 814E1874 | 7C C5 00 AE */	lbzx r6, r5, r0
/* 814E1878 | 80 0F 00 04 */	lwz r0, 0x4(r15)
/* 814E187C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814E1880 | 54 00 36 BE */	srwi r0, r0, 26
/* 814E1884 | 7C A5 00 AE */	lbzx r5, r5, r0
/* 814E1888 | 54 80 96 FE */	extrwi r0, r4, 5, 13
/* 814E188C | 7C A6 28 50 */	subf r5, r6, r5
/* 814E1890 | 7C 05 02 15 */	add. r0, r5, r0
/* 814E1894 | 40 80 00 10 */	bge .L_814E18A4
/* 814E1898 | 54 80 04 98 */	rlwinm r0, r4, 0, 18, 12
/* 814E189C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814E18A0 | 48 00 00 24 */	b .L_814E18C4
.L_814E18A4:
/* 814E18A4 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 814E18A8 | 40 81 00 14 */	ble .L_814E18BC
/* 814E18AC | 38 00 00 07 */	li r0, 0x7
/* 814E18B0 | 50 04 73 62 */	rlwimi r4, r0, 14, 13, 17
/* 814E18B4 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814E18B8 | 48 00 00 0C */	b .L_814E18C4
.L_814E18BC:
/* 814E18BC | 50 04 73 62 */	rlwimi r4, r0, 14, 13, 17
/* 814E18C0 | 90 83 00 04 */	stw r4, 0x4(r3)
.L_814E18C4:
/* 814E18C4 | 80 10 00 14 */	lwz r0, 0x14(r16)
/* 814E18C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E18CC | 41 82 00 A0 */	beq .L_814E196C
/* 814E18D0 | 38 00 00 05 */	li r0, 0x5
/* 814E18D4 | 38 61 0E D8 */	addi r3, r1, 0xed8
/* 814E18D8 | 1C 80 00 50 */	mulli r4, r0, 0x50
/* 814E18DC | 38 AF FF FC */	subi r5, r15, 0x4
/* 814E18E0 | 38 00 00 0A */	li r0, 0xa
/* 814E18E4 | 7C 63 22 14 */	add r3, r3, r4
/* 814E18E8 | 38 C3 FF FC */	subi r6, r3, 0x4
/* 814E18EC | 7C 09 03 A6 */	mtctr r0
.L_814E18F0:
/* 814E18F0 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 814E18F4 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 814E18F8 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 814E18FC | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 814E1900 | 42 00 FF F0 */	bdnz .L_814E18F0
/* 814E1904 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814E1908 | 38 00 00 1A */	li r0, 0x1a
/* 814E190C | 50 06 D0 0A */	rlwimi r6, r0, 26, 0, 5
/* 814E1910 | 3C 80 81 62 */	lis r4, RFLi_EYE_ROT_OFFSET@ha
/* 814E1914 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 814E1918 | 54 C5 36 BE */	srwi r5, r6, 26
/* 814E191C | 38 84 D3 58 */	addi r4, r4, RFLi_EYE_ROT_OFFSET@l
/* 814E1920 | 80 0F 00 04 */	lwz r0, 0x4(r15)
/* 814E1924 | 7C A4 28 AE */	lbzx r5, r4, r5
/* 814E1928 | 54 00 36 BE */	srwi r0, r0, 26
/* 814E192C | 7C 84 00 AE */	lbzx r4, r4, r0
/* 814E1930 | 54 C0 96 FE */	extrwi r0, r6, 5, 13
/* 814E1934 | 7C 85 20 50 */	subf r4, r5, r4
/* 814E1938 | 7C 04 02 15 */	add. r0, r4, r0
/* 814E193C | 40 80 00 10 */	bge .L_814E194C
/* 814E1940 | 54 C0 04 98 */	rlwinm r0, r6, 0, 18, 12
/* 814E1944 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814E1948 | 48 00 00 24 */	b .L_814E196C
.L_814E194C:
/* 814E194C | 2C 00 00 07 */	cmpwi r0, 0x7
/* 814E1950 | 40 81 00 14 */	ble .L_814E1964
/* 814E1954 | 38 00 00 07 */	li r0, 0x7
/* 814E1958 | 50 06 73 62 */	rlwimi r6, r0, 14, 13, 17
/* 814E195C | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 814E1960 | 48 00 00 0C */	b .L_814E196C
.L_814E1964:
/* 814E1964 | 50 06 73 62 */	rlwimi r6, r0, 14, 13, 17
/* 814E1968 | 90 C3 00 04 */	stw r6, 0x4(r3)
.L_814E196C:
/* 814E196C | 80 10 00 18 */	lwz r0, 0x18(r16)
/* 814E1970 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E1974 | 41 82 00 48 */	beq .L_814E19BC
/* 814E1978 | 38 00 00 06 */	li r0, 0x6
/* 814E197C | 38 C1 0E D8 */	addi r6, r1, 0xed8
/* 814E1980 | 1C 60 00 50 */	mulli r3, r0, 0x50
/* 814E1984 | 38 8F FF FC */	subi r4, r15, 0x4
/* 814E1988 | 38 00 00 0A */	li r0, 0xa
/* 814E198C | 7C C6 1A 14 */	add r6, r6, r3
/* 814E1990 | 38 A6 FF FC */	subi r5, r6, 0x4
/* 814E1994 | 7C 09 03 A6 */	mtctr r0
.L_814E1998:
/* 814E1998 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814E199C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814E19A0 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814E19A4 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814E19A8 | 42 00 FF F0 */	bdnz .L_814E1998
/* 814E19AC | A0 06 00 0E */	lhz r0, 0xe(r6)
/* 814E19B0 | 38 60 00 18 */	li r3, 0x18
/* 814E19B4 | 50 60 5C 28 */	rlwimi r0, r3, 11, 16, 20
/* 814E19B8 | B0 06 00 0E */	sth r0, 0xe(r6)
.L_814E19BC:
/* 814E19BC | CB E2 8C C0 */	lfd f31, lbl_816950C0@sda21(r0)
/* 814E19C0 | 7E 1F 83 78 */	mr r31, r16
/* 814E19C4 | 3B C1 00 BC */	addi r30, r1, 0xbc
/* 814E19C8 | 3B A1 00 A0 */	addi r29, r1, 0xa0
/* 814E19CC | 3B 81 00 84 */	addi r28, r1, 0x84
/* 814E19D0 | 3B 61 0E D8 */	addi r27, r1, 0xed8
/* 814E19D4 | 3B 41 00 68 */	addi r26, r1, 0x68
/* 814E19D8 | 3B 21 00 D8 */	addi r25, r1, 0xd8
/* 814E19DC | 3B 00 00 00 */	li r24, 0x0
.L_814E19E0:
/* 814E19E0 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814E19E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E19E8 | 41 82 06 14 */	beq .L_814E1FFC
/* 814E19EC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814E19F0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814E19F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E19F8 | 40 82 00 14 */	bne .L_814E1A0C
/* 814E19FC | 80 61 11 20 */	lwz r3, 0x1120(r1)
/* 814E1A00 | 4B FF 92 5D */	bl RFLiAlloc32
/* 814E1A04 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814E1A08 | 90 64 00 00 */	stw r3, 0x0(r4)
.L_814E1A0C:
/* 814E1A0C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814E1A10 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814E1A14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E1A18 | 40 82 00 14 */	bne .L_814E1A2C
/* 814E1A1C | 80 61 11 18 */	lwz r3, 0x1118(r1)
/* 814E1A20 | 4B FF 92 3D */	bl RFLiAlloc32
/* 814E1A24 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814E1A28 | 90 64 00 00 */	stw r3, 0x0(r4)
.L_814E1A2C:
/* 814E1A2C | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814E1A30 | 40 82 00 10 */	bne .L_814E1A40
/* 814E1A34 | 80 61 11 1C */	lwz r3, 0x111c(r1)
/* 814E1A38 | 4B FF 92 25 */	bl RFLiAlloc32
/* 814E1A3C | 7C 76 1B 78 */	mr r22, r3
.L_814E1A40:
/* 814E1A40 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814E1A44 | 40 82 00 10 */	bne .L_814E1A54
/* 814E1A48 | 7D C3 73 78 */	mr r3, r14
/* 814E1A4C | 4B FF 92 11 */	bl RFLiAlloc32
/* 814E1A50 | 7C 75 1B 78 */	mr r21, r3
.L_814E1A54:
/* 814E1A54 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814E1A58 | 40 82 00 10 */	bne .L_814E1A68
/* 814E1A5C | 7E E3 BB 78 */	mr r3, r23
/* 814E1A60 | 4B FF 91 FD */	bl RFLiAlloc32
/* 814E1A64 | 7C 74 1B 78 */	mr r20, r3
.L_814E1A68:
/* 814E1A68 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814E1A6C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814E1A70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E1A74 | 40 82 00 34 */	bne .L_814E1AA8
/* 814E1A78 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814E1A7C | 38 60 00 00 */	li r3, 0x0
/* 814E1A80 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814E1A84 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 814E1A88 | 54 04 36 BE */	srwi r4, r0, 26
/* 814E1A8C | 4B FF 9E 45 */	bl RFLiLoadTexture
/* 814E1A90 | 80 DC 00 00 */	lwz r6, 0x0(r28)
/* 814E1A94 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 814E1A98 | 90 66 00 00 */	stw r3, 0x0(r6)
/* 814E1A9C | 80 81 11 20 */	lwz r4, 0x1120(r1)
/* 814E1AA0 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 814E1AA4 | 48 04 BE C1 */	bl DCStoreRange
.L_814E1AA8:
/* 814E1AA8 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 814E1AAC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814E1AB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E1AB4 | 40 82 00 34 */	bne .L_814E1AE8
/* 814E1AB8 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814E1ABC | 38 60 00 02 */	li r3, 0x2
/* 814E1AC0 | A0 1B 00 0E */	lhz r0, 0xe(r27)
/* 814E1AC4 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 814E1AC8 | 54 04 AE FE */	extrwi r4, r0, 5, 16
/* 814E1ACC | 4B FF 9E 05 */	bl RFLiLoadTexture
/* 814E1AD0 | 80 DA 00 00 */	lwz r6, 0x0(r26)
/* 814E1AD4 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 814E1AD8 | 90 66 00 00 */	stw r3, 0x0(r6)
/* 814E1ADC | 80 81 11 18 */	lwz r4, 0x1118(r1)
/* 814E1AE0 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 814E1AE4 | 48 04 BE 81 */	bl DCStoreRange
.L_814E1AE8:
/* 814E1AE8 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 814E1AEC | 40 82 00 28 */	bne .L_814E1B14
/* 814E1AF0 | 80 1B 00 08 */	lwz r0, 0x8(r27)
/* 814E1AF4 | 7E C5 B3 78 */	mr r5, r22
/* 814E1AF8 | 38 60 00 01 */	li r3, 0x1
/* 814E1AFC | 54 04 2E FE */	srwi r4, r0, 27
/* 814E1B00 | 4B FF 9D D1 */	bl RFLiLoadTexture
/* 814E1B04 | 80 81 11 1C */	lwz r4, 0x111c(r1)
/* 814E1B08 | 7C 73 1B 78 */	mr r19, r3
/* 814E1B0C | 7E C3 B3 78 */	mr r3, r22
/* 814E1B10 | 48 04 BE 55 */	bl DCStoreRange
.L_814E1B14:
/* 814E1B14 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814E1B18 | 40 82 00 28 */	bne .L_814E1B40
/* 814E1B1C | A0 1B 00 10 */	lhz r0, 0x10(r27)
/* 814E1B20 | 7E A5 AB 78 */	mr r5, r21
/* 814E1B24 | 38 60 00 03 */	li r3, 0x3
/* 814E1B28 | 54 04 97 BE */	extrwi r4, r0, 2, 16
/* 814E1B2C | 4B FF 9D A5 */	bl RFLiLoadTexture
/* 814E1B30 | 7C 72 1B 78 */	mr r18, r3
/* 814E1B34 | 7E A3 AB 78 */	mr r3, r21
/* 814E1B38 | 7D C4 73 78 */	mr r4, r14
/* 814E1B3C | 48 04 BE 29 */	bl DCStoreRange
.L_814E1B40:
/* 814E1B40 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 814E1B44 | 40 82 00 28 */	bne .L_814E1B6C
/* 814E1B48 | A0 1B 00 14 */	lhz r0, 0x14(r27)
/* 814E1B4C | 7E 85 A3 78 */	mr r5, r20
/* 814E1B50 | 38 60 00 04 */	li r3, 0x4
/* 814E1B54 | 54 04 8F FE */	extrwi r4, r0, 1, 16
/* 814E1B58 | 4B FF 9D 79 */	bl RFLiLoadTexture
/* 814E1B5C | 7C 71 1B 78 */	mr r17, r3
/* 814E1B60 | 7E 83 A3 78 */	mr r3, r20
/* 814E1B64 | 7E E4 BB 78 */	mr r4, r23
/* 814E1B68 | 48 04 BD FD */	bl DCStoreRange
.L_814E1B6C:
/* 814E1B6C | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 814E1B70 | 38 79 00 20 */	addi r3, r25, 0x20
/* 814E1B74 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 814E1B78 | 39 00 00 00 */	li r8, 0x0
/* 814E1B7C | 81 E5 00 00 */	lwz r15, 0x0(r5)
/* 814E1B80 | 39 20 00 00 */	li r9, 0x0
/* 814E1B84 | 39 40 00 00 */	li r10, 0x0
/* 814E1B88 | 91 F9 00 18 */	stw r15, 0x18(r25)
/* 814E1B8C | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 814E1B90 | 90 19 00 58 */	stw r0, 0x58(r25)
/* 814E1B94 | 92 79 00 98 */	stw r19, 0x98(r25)
/* 814E1B98 | 92 79 00 D8 */	stw r19, 0xd8(r25)
/* 814E1B9C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814E1BA0 | 90 19 01 18 */	stw r0, 0x118(r25)
/* 814E1BA4 | 92 59 01 58 */	stw r18, 0x158(r25)
/* 814E1BA8 | 92 59 01 98 */	stw r18, 0x198(r25)
/* 814E1BAC | 92 39 01 D8 */	stw r17, 0x1d8(r25)
/* 814E1BB0 | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814E1BB4 | A0 AF 00 02 */	lhz r5, 0x2(r15)
/* 814E1BB8 | A0 CF 00 04 */	lhz r6, 0x4(r15)
/* 814E1BBC | 7C 8F 02 14 */	add r4, r15, r0
/* 814E1BC0 | 88 EF 00 00 */	lbz r7, 0x0(r15)
/* 814E1BC4 | 48 06 40 AD */	bl GXInitTexObj
/* 814E1BC8 | 88 0F 00 16 */	lbz r0, 0x16(r15)
/* 814E1BCC | 38 79 00 20 */	addi r3, r25, 0x20
/* 814E1BD0 | 88 8F 00 17 */	lbz r4, 0x17(r15)
/* 814E1BD4 | 7C 05 07 74 */	extsb r5, r0
/* 814E1BD8 | A8 0F 00 1A */	lha r0, 0x1a(r15)
/* 814E1BDC | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 814E1BE0 | 7C 84 07 74 */	extsb r4, r4
/* 814E1BE4 | 90 A1 11 0C */	stw r5, 0x110c(r1)
/* 814E1BE8 | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 814E1BEC | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E1BF0 | 88 8F 00 14 */	lbz r4, 0x14(r15)
/* 814E1BF4 | C8 01 11 08 */	lfd f0, 0x1108(r1)
/* 814E1BF8 | 90 A1 11 14 */	stw r5, 0x1114(r1)
/* 814E1BFC | EC 20 F8 28 */	fsubs f1, f0, f31
/* 814E1C00 | 88 AF 00 15 */	lbz r5, 0x15(r15)
/* 814E1C04 | 90 01 11 0C */	stw r0, 0x110c(r1)
/* 814E1C08 | C8 41 11 10 */	lfd f2, 0x1110(r1)
/* 814E1C0C | C8 01 11 08 */	lfd f0, 0x1108(r1)
/* 814E1C10 | EC 42 F8 28 */	fsubs f2, f2, f31
/* 814E1C14 | 88 CF 00 12 */	lbz r6, 0x12(r15)
/* 814E1C18 | EC 60 F8 28 */	fsubs f3, f0, f31
/* 814E1C1C | 88 EF 00 11 */	lbz r7, 0x11(r15)
/* 814E1C20 | 89 0F 00 13 */	lbz r8, 0x13(r15)
/* 814E1C24 | 48 06 42 A1 */	bl GXInitTexObjLOD
/* 814E1C28 | 81 F9 00 58 */	lwz r15, 0x58(r25)
/* 814E1C2C | 38 79 00 60 */	addi r3, r25, 0x60
/* 814E1C30 | 39 00 00 00 */	li r8, 0x0
/* 814E1C34 | 39 20 00 00 */	li r9, 0x0
/* 814E1C38 | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814E1C3C | 39 40 00 00 */	li r10, 0x0
/* 814E1C40 | A0 AF 00 02 */	lhz r5, 0x2(r15)
/* 814E1C44 | A0 CF 00 04 */	lhz r6, 0x4(r15)
/* 814E1C48 | 7C 8F 02 14 */	add r4, r15, r0
/* 814E1C4C | 88 EF 00 00 */	lbz r7, 0x0(r15)
/* 814E1C50 | 48 06 40 21 */	bl GXInitTexObj
/* 814E1C54 | 88 0F 00 16 */	lbz r0, 0x16(r15)
/* 814E1C58 | 38 79 00 60 */	addi r3, r25, 0x60
/* 814E1C5C | 88 8F 00 17 */	lbz r4, 0x17(r15)
/* 814E1C60 | 7C 05 07 74 */	extsb r5, r0
/* 814E1C64 | A8 0F 00 1A */	lha r0, 0x1a(r15)
/* 814E1C68 | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 814E1C6C | 7C 84 07 74 */	extsb r4, r4
/* 814E1C70 | 90 A1 11 14 */	stw r5, 0x1114(r1)
/* 814E1C74 | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 814E1C78 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E1C7C | 88 8F 00 14 */	lbz r4, 0x14(r15)
/* 814E1C80 | C8 01 11 10 */	lfd f0, 0x1110(r1)
/* 814E1C84 | 90 A1 11 0C */	stw r5, 0x110c(r1)
/* 814E1C88 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 814E1C8C | 88 AF 00 15 */	lbz r5, 0x15(r15)
/* 814E1C90 | 90 01 11 14 */	stw r0, 0x1114(r1)
/* 814E1C94 | C8 41 11 08 */	lfd f2, 0x1108(r1)
/* 814E1C98 | C8 01 11 10 */	lfd f0, 0x1110(r1)
/* 814E1C9C | EC 42 F8 28 */	fsubs f2, f2, f31
/* 814E1CA0 | 88 CF 00 12 */	lbz r6, 0x12(r15)
/* 814E1CA4 | EC 60 F8 28 */	fsubs f3, f0, f31
/* 814E1CA8 | 88 EF 00 11 */	lbz r7, 0x11(r15)
/* 814E1CAC | 89 0F 00 13 */	lbz r8, 0x13(r15)
/* 814E1CB0 | 48 06 42 15 */	bl GXInitTexObjLOD
/* 814E1CB4 | 81 F9 00 98 */	lwz r15, 0x98(r25)
/* 814E1CB8 | 38 79 00 A0 */	addi r3, r25, 0xa0
/* 814E1CBC | 39 00 00 00 */	li r8, 0x0
/* 814E1CC0 | 39 20 00 00 */	li r9, 0x0
/* 814E1CC4 | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814E1CC8 | 39 40 00 00 */	li r10, 0x0
/* 814E1CCC | A0 AF 00 02 */	lhz r5, 0x2(r15)
/* 814E1CD0 | A0 CF 00 04 */	lhz r6, 0x4(r15)
/* 814E1CD4 | 7C 8F 02 14 */	add r4, r15, r0
/* 814E1CD8 | 88 EF 00 00 */	lbz r7, 0x0(r15)
/* 814E1CDC | 48 06 3F 95 */	bl GXInitTexObj
/* 814E1CE0 | 88 0F 00 16 */	lbz r0, 0x16(r15)
/* 814E1CE4 | 38 79 00 A0 */	addi r3, r25, 0xa0
/* 814E1CE8 | 88 8F 00 17 */	lbz r4, 0x17(r15)
/* 814E1CEC | 7C 05 07 74 */	extsb r5, r0
/* 814E1CF0 | A8 0F 00 1A */	lha r0, 0x1a(r15)
/* 814E1CF4 | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 814E1CF8 | 7C 84 07 74 */	extsb r4, r4
/* 814E1CFC | 90 A1 11 0C */	stw r5, 0x110c(r1)
/* 814E1D00 | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 814E1D04 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E1D08 | 88 8F 00 14 */	lbz r4, 0x14(r15)
/* 814E1D0C | C8 01 11 08 */	lfd f0, 0x1108(r1)
/* 814E1D10 | 90 A1 11 14 */	stw r5, 0x1114(r1)
/* 814E1D14 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 814E1D18 | 88 AF 00 15 */	lbz r5, 0x15(r15)
/* 814E1D1C | 90 01 11 0C */	stw r0, 0x110c(r1)
/* 814E1D20 | C8 41 11 10 */	lfd f2, 0x1110(r1)
/* 814E1D24 | C8 01 11 08 */	lfd f0, 0x1108(r1)
/* 814E1D28 | EC 42 F8 28 */	fsubs f2, f2, f31
/* 814E1D2C | 88 CF 00 12 */	lbz r6, 0x12(r15)
/* 814E1D30 | EC 60 F8 28 */	fsubs f3, f0, f31
/* 814E1D34 | 88 EF 00 11 */	lbz r7, 0x11(r15)
/* 814E1D38 | 89 0F 00 13 */	lbz r8, 0x13(r15)
/* 814E1D3C | 48 06 41 89 */	bl GXInitTexObjLOD
/* 814E1D40 | 81 F9 00 D8 */	lwz r15, 0xd8(r25)
/* 814E1D44 | 38 79 00 E0 */	addi r3, r25, 0xe0
/* 814E1D48 | 39 00 00 00 */	li r8, 0x0
/* 814E1D4C | 39 20 00 00 */	li r9, 0x0
/* 814E1D50 | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814E1D54 | 39 40 00 00 */	li r10, 0x0
/* 814E1D58 | A0 AF 00 02 */	lhz r5, 0x2(r15)
/* 814E1D5C | A0 CF 00 04 */	lhz r6, 0x4(r15)
/* 814E1D60 | 7C 8F 02 14 */	add r4, r15, r0
/* 814E1D64 | 88 EF 00 00 */	lbz r7, 0x0(r15)
/* 814E1D68 | 48 06 3F 09 */	bl GXInitTexObj
/* 814E1D6C | 88 0F 00 16 */	lbz r0, 0x16(r15)
/* 814E1D70 | 38 79 00 E0 */	addi r3, r25, 0xe0
/* 814E1D74 | 88 8F 00 17 */	lbz r4, 0x17(r15)
/* 814E1D78 | 7C 05 07 74 */	extsb r5, r0
/* 814E1D7C | A8 0F 00 1A */	lha r0, 0x1a(r15)
/* 814E1D80 | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 814E1D84 | 7C 84 07 74 */	extsb r4, r4
/* 814E1D88 | 90 A1 11 14 */	stw r5, 0x1114(r1)
/* 814E1D8C | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 814E1D90 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E1D94 | 88 8F 00 14 */	lbz r4, 0x14(r15)
/* 814E1D98 | C8 01 11 10 */	lfd f0, 0x1110(r1)
/* 814E1D9C | 90 A1 11 0C */	stw r5, 0x110c(r1)
/* 814E1DA0 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 814E1DA4 | 88 AF 00 15 */	lbz r5, 0x15(r15)
/* 814E1DA8 | 90 01 11 14 */	stw r0, 0x1114(r1)
/* 814E1DAC | C8 41 11 08 */	lfd f2, 0x1108(r1)
/* 814E1DB0 | C8 01 11 10 */	lfd f0, 0x1110(r1)
/* 814E1DB4 | EC 42 F8 28 */	fsubs f2, f2, f31
/* 814E1DB8 | 88 CF 00 12 */	lbz r6, 0x12(r15)
/* 814E1DBC | EC 60 F8 28 */	fsubs f3, f0, f31
/* 814E1DC0 | 88 EF 00 11 */	lbz r7, 0x11(r15)
/* 814E1DC4 | 89 0F 00 13 */	lbz r8, 0x13(r15)
/* 814E1DC8 | 48 06 40 FD */	bl GXInitTexObjLOD
/* 814E1DCC | 81 F9 01 18 */	lwz r15, 0x118(r25)
/* 814E1DD0 | 38 79 01 20 */	addi r3, r25, 0x120
/* 814E1DD4 | 39 00 00 00 */	li r8, 0x0
/* 814E1DD8 | 39 20 00 00 */	li r9, 0x0
/* 814E1DDC | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814E1DE0 | 39 40 00 00 */	li r10, 0x0
/* 814E1DE4 | A0 AF 00 02 */	lhz r5, 0x2(r15)
/* 814E1DE8 | A0 CF 00 04 */	lhz r6, 0x4(r15)
/* 814E1DEC | 7C 8F 02 14 */	add r4, r15, r0
/* 814E1DF0 | 88 EF 00 00 */	lbz r7, 0x0(r15)
/* 814E1DF4 | 48 06 3E 7D */	bl GXInitTexObj
/* 814E1DF8 | 88 0F 00 16 */	lbz r0, 0x16(r15)
/* 814E1DFC | 38 79 01 20 */	addi r3, r25, 0x120
/* 814E1E00 | 88 8F 00 17 */	lbz r4, 0x17(r15)
/* 814E1E04 | 7C 05 07 74 */	extsb r5, r0
/* 814E1E08 | A8 0F 00 1A */	lha r0, 0x1a(r15)
/* 814E1E0C | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 814E1E10 | 7C 84 07 74 */	extsb r4, r4
/* 814E1E14 | 90 A1 11 0C */	stw r5, 0x110c(r1)
/* 814E1E18 | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 814E1E1C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E1E20 | 88 8F 00 14 */	lbz r4, 0x14(r15)
/* 814E1E24 | C8 01 11 08 */	lfd f0, 0x1108(r1)
/* 814E1E28 | 90 A1 11 14 */	stw r5, 0x1114(r1)
/* 814E1E2C | EC 20 F8 28 */	fsubs f1, f0, f31
/* 814E1E30 | 88 AF 00 15 */	lbz r5, 0x15(r15)
/* 814E1E34 | 90 01 11 0C */	stw r0, 0x110c(r1)
/* 814E1E38 | C8 41 11 10 */	lfd f2, 0x1110(r1)
/* 814E1E3C | C8 01 11 08 */	lfd f0, 0x1108(r1)
/* 814E1E40 | EC 42 F8 28 */	fsubs f2, f2, f31
/* 814E1E44 | 88 CF 00 12 */	lbz r6, 0x12(r15)
/* 814E1E48 | EC 60 F8 28 */	fsubs f3, f0, f31
/* 814E1E4C | 88 EF 00 11 */	lbz r7, 0x11(r15)
/* 814E1E50 | 89 0F 00 13 */	lbz r8, 0x13(r15)
/* 814E1E54 | 48 06 40 71 */	bl GXInitTexObjLOD
/* 814E1E58 | 81 F9 01 58 */	lwz r15, 0x158(r25)
/* 814E1E5C | 38 79 01 60 */	addi r3, r25, 0x160
/* 814E1E60 | 39 00 00 00 */	li r8, 0x0
/* 814E1E64 | 39 20 00 00 */	li r9, 0x0
/* 814E1E68 | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814E1E6C | 39 40 00 00 */	li r10, 0x0
/* 814E1E70 | A0 AF 00 02 */	lhz r5, 0x2(r15)
/* 814E1E74 | A0 CF 00 04 */	lhz r6, 0x4(r15)
/* 814E1E78 | 7C 8F 02 14 */	add r4, r15, r0
/* 814E1E7C | 88 EF 00 00 */	lbz r7, 0x0(r15)
/* 814E1E80 | 48 06 3D F1 */	bl GXInitTexObj
/* 814E1E84 | 88 0F 00 16 */	lbz r0, 0x16(r15)
/* 814E1E88 | 38 79 01 60 */	addi r3, r25, 0x160
/* 814E1E8C | 88 8F 00 17 */	lbz r4, 0x17(r15)
/* 814E1E90 | 7C 05 07 74 */	extsb r5, r0
/* 814E1E94 | A8 0F 00 1A */	lha r0, 0x1a(r15)
/* 814E1E98 | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 814E1E9C | 7C 84 07 74 */	extsb r4, r4
/* 814E1EA0 | 90 A1 11 14 */	stw r5, 0x1114(r1)
/* 814E1EA4 | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 814E1EA8 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E1EAC | 88 8F 00 14 */	lbz r4, 0x14(r15)
/* 814E1EB0 | C8 01 11 10 */	lfd f0, 0x1110(r1)
/* 814E1EB4 | 90 A1 11 0C */	stw r5, 0x110c(r1)
/* 814E1EB8 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 814E1EBC | 88 AF 00 15 */	lbz r5, 0x15(r15)
/* 814E1EC0 | 90 01 11 14 */	stw r0, 0x1114(r1)
/* 814E1EC4 | C8 41 11 08 */	lfd f2, 0x1108(r1)
/* 814E1EC8 | C8 01 11 10 */	lfd f0, 0x1110(r1)
/* 814E1ECC | EC 42 F8 28 */	fsubs f2, f2, f31
/* 814E1ED0 | 88 CF 00 12 */	lbz r6, 0x12(r15)
/* 814E1ED4 | EC 60 F8 28 */	fsubs f3, f0, f31
/* 814E1ED8 | 88 EF 00 11 */	lbz r7, 0x11(r15)
/* 814E1EDC | 89 0F 00 13 */	lbz r8, 0x13(r15)
/* 814E1EE0 | 48 06 3F E5 */	bl GXInitTexObjLOD
/* 814E1EE4 | 81 F9 01 98 */	lwz r15, 0x198(r25)
/* 814E1EE8 | 38 79 01 A0 */	addi r3, r25, 0x1a0
/* 814E1EEC | 39 00 00 00 */	li r8, 0x0
/* 814E1EF0 | 39 20 00 00 */	li r9, 0x0
/* 814E1EF4 | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814E1EF8 | 39 40 00 00 */	li r10, 0x0
/* 814E1EFC | A0 AF 00 02 */	lhz r5, 0x2(r15)
/* 814E1F00 | A0 CF 00 04 */	lhz r6, 0x4(r15)
/* 814E1F04 | 7C 8F 02 14 */	add r4, r15, r0
/* 814E1F08 | 88 EF 00 00 */	lbz r7, 0x0(r15)
/* 814E1F0C | 48 06 3D 65 */	bl GXInitTexObj
/* 814E1F10 | 88 0F 00 16 */	lbz r0, 0x16(r15)
/* 814E1F14 | 38 79 01 A0 */	addi r3, r25, 0x1a0
/* 814E1F18 | 88 8F 00 17 */	lbz r4, 0x17(r15)
/* 814E1F1C | 7C 05 07 74 */	extsb r5, r0
/* 814E1F20 | A8 0F 00 1A */	lha r0, 0x1a(r15)
/* 814E1F24 | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 814E1F28 | 7C 84 07 74 */	extsb r4, r4
/* 814E1F2C | 90 A1 11 0C */	stw r5, 0x110c(r1)
/* 814E1F30 | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 814E1F34 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E1F38 | 88 8F 00 14 */	lbz r4, 0x14(r15)
/* 814E1F3C | C8 01 11 08 */	lfd f0, 0x1108(r1)
/* 814E1F40 | 90 A1 11 14 */	stw r5, 0x1114(r1)
/* 814E1F44 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 814E1F48 | 88 AF 00 15 */	lbz r5, 0x15(r15)
/* 814E1F4C | 90 01 11 0C */	stw r0, 0x110c(r1)
/* 814E1F50 | C8 41 11 10 */	lfd f2, 0x1110(r1)
/* 814E1F54 | C8 01 11 08 */	lfd f0, 0x1108(r1)
/* 814E1F58 | EC 42 F8 28 */	fsubs f2, f2, f31
/* 814E1F5C | 88 CF 00 12 */	lbz r6, 0x12(r15)
/* 814E1F60 | EC 60 F8 28 */	fsubs f3, f0, f31
/* 814E1F64 | 88 EF 00 11 */	lbz r7, 0x11(r15)
/* 814E1F68 | 89 0F 00 13 */	lbz r8, 0x13(r15)
/* 814E1F6C | 48 06 3F 59 */	bl GXInitTexObjLOD
/* 814E1F70 | 81 F9 01 D8 */	lwz r15, 0x1d8(r25)
/* 814E1F74 | 38 79 01 E0 */	addi r3, r25, 0x1e0
/* 814E1F78 | 39 00 00 00 */	li r8, 0x0
/* 814E1F7C | 39 20 00 00 */	li r9, 0x0
/* 814E1F80 | 80 0F 00 1C */	lwz r0, 0x1c(r15)
/* 814E1F84 | 39 40 00 00 */	li r10, 0x0
/* 814E1F88 | A0 AF 00 02 */	lhz r5, 0x2(r15)
/* 814E1F8C | A0 CF 00 04 */	lhz r6, 0x4(r15)
/* 814E1F90 | 7C 8F 02 14 */	add r4, r15, r0
/* 814E1F94 | 88 EF 00 00 */	lbz r7, 0x0(r15)
/* 814E1F98 | 48 06 3C D9 */	bl GXInitTexObj
/* 814E1F9C | 88 0F 00 16 */	lbz r0, 0x16(r15)
/* 814E1FA0 | 38 79 01 E0 */	addi r3, r25, 0x1e0
/* 814E1FA4 | 88 8F 00 17 */	lbz r4, 0x17(r15)
/* 814E1FA8 | 7C 05 07 74 */	extsb r5, r0
/* 814E1FAC | A8 0F 00 1A */	lha r0, 0x1a(r15)
/* 814E1FB0 | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 814E1FB4 | 7C 84 07 74 */	extsb r4, r4
/* 814E1FB8 | 90 A1 11 14 */	stw r5, 0x1114(r1)
/* 814E1FBC | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 814E1FC0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814E1FC4 | 88 8F 00 14 */	lbz r4, 0x14(r15)
/* 814E1FC8 | C8 01 11 10 */	lfd f0, 0x1110(r1)
/* 814E1FCC | 90 A1 11 0C */	stw r5, 0x110c(r1)
/* 814E1FD0 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 814E1FD4 | 88 AF 00 15 */	lbz r5, 0x15(r15)
/* 814E1FD8 | 90 01 11 14 */	stw r0, 0x1114(r1)
/* 814E1FDC | C8 41 11 08 */	lfd f2, 0x1108(r1)
/* 814E1FE0 | C8 01 11 10 */	lfd f0, 0x1110(r1)
/* 814E1FE4 | EC 42 F8 28 */	fsubs f2, f2, f31
/* 814E1FE8 | 88 CF 00 12 */	lbz r6, 0x12(r15)
/* 814E1FEC | EC 60 F8 28 */	fsubs f3, f0, f31
/* 814E1FF0 | 88 EF 00 11 */	lbz r7, 0x11(r15)
/* 814E1FF4 | 89 0F 00 13 */	lbz r8, 0x13(r15)
/* 814E1FF8 | 48 06 3E CD */	bl GXInitTexObjLOD
.L_814E1FFC:
/* 814E1FFC | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814E2000 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 814E2004 | 2C 18 00 07 */	cmpwi r24, 0x7
/* 814E2008 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 814E200C | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814E2010 | 3B 7B 00 50 */	addi r27, r27, 0x50
/* 814E2014 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 814E2018 | 3B 39 02 00 */	addi r25, r25, 0x200
/* 814E201C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814E2020 | 41 80 F9 C0 */	blt .L_814E19E0
/* 814E2024 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814E2028 | 2C 00 00 E0 */	cmpwi r0, 0xe0
/* 814E202C | 41 82 00 4C */	beq .L_814E2078
/* 814E2030 | 40 80 00 28 */	bge .L_814E2058
/* 814E2034 | 2C 00 00 60 */	cmpwi r0, 0x60
/* 814E2038 | 41 82 00 38 */	beq .L_814E2070
/* 814E203C | 40 80 00 10 */	bge .L_814E204C
/* 814E2040 | 2C 00 00 40 */	cmpwi r0, 0x40
/* 814E2044 | 41 82 00 2C */	beq .L_814E2070
/* 814E2048 | 48 00 00 40 */	b .L_814E2088
.L_814E204C:
/* 814E204C | 2C 00 00 80 */	cmpwi r0, 0x80
/* 814E2050 | 41 82 00 28 */	beq .L_814E2078
/* 814E2054 | 48 00 00 34 */	b .L_814E2088
.L_814E2058:
/* 814E2058 | 2C 00 01 E0 */	cmpwi r0, 0x1e0
/* 814E205C | 41 82 00 24 */	beq .L_814E2080
/* 814E2060 | 40 80 00 28 */	bge .L_814E2088
/* 814E2064 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814E2068 | 41 82 00 18 */	beq .L_814E2080
/* 814E206C | 48 00 00 1C */	b .L_814E2088
.L_814E2070:
/* 814E2070 | 38 80 00 40 */	li r4, 0x40
/* 814E2074 | 48 00 00 18 */	b .L_814E208C
.L_814E2078:
/* 814E2078 | 38 80 00 80 */	li r4, 0x80
/* 814E207C | 48 00 00 10 */	b .L_814E208C
.L_814E2080:
/* 814E2080 | 38 80 01 00 */	li r4, 0x100
/* 814E2084 | 48 00 00 08 */	b .L_814E208C
.L_814E2088:
/* 814E2088 | 38 80 00 40 */	li r4, 0x40
.L_814E208C:
/* 814E208C | 80 10 00 00 */	lwz r0, 0x0(r16)
/* 814E2090 | 38 60 00 00 */	li r3, 0x0
/* 814E2094 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E2098 | 40 82 00 68 */	bne .L_814E2100
/* 814E209C | 80 10 00 04 */	lwz r0, 0x4(r16)
/* 814E20A0 | 38 60 00 01 */	li r3, 0x1
/* 814E20A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E20A8 | 40 82 00 58 */	bne .L_814E2100
/* 814E20AC | 80 10 00 08 */	lwz r0, 0x8(r16)
/* 814E20B0 | 38 60 00 02 */	li r3, 0x2
/* 814E20B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E20B8 | 40 82 00 48 */	bne .L_814E2100
/* 814E20BC | 80 10 00 0C */	lwz r0, 0xc(r16)
/* 814E20C0 | 38 60 00 03 */	li r3, 0x3
/* 814E20C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E20C8 | 40 82 00 38 */	bne .L_814E2100
/* 814E20CC | 80 10 00 10 */	lwz r0, 0x10(r16)
/* 814E20D0 | 38 60 00 04 */	li r3, 0x4
/* 814E20D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E20D8 | 40 82 00 28 */	bne .L_814E2100
/* 814E20DC | 80 10 00 14 */	lwz r0, 0x14(r16)
/* 814E20E0 | 38 60 00 05 */	li r3, 0x5
/* 814E20E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E20E8 | 40 82 00 18 */	bne .L_814E2100
/* 814E20EC | 80 10 00 18 */	lwz r0, 0x18(r16)
/* 814E20F0 | 38 60 00 06 */	li r3, 0x6
/* 814E20F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E20F8 | 40 82 00 08 */	bne .L_814E2100
/* 814E20FC | 38 60 00 07 */	li r3, 0x7
.L_814E2100:
/* 814E2100 | 38 00 00 00 */	li r0, 0x0
/* 814E2104 | 7C 85 23 78 */	mr r5, r4
/* 814E2108 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814E210C | 54 60 10 3A */	slwi r0, r3, 2
/* 814E2110 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814E2114 | 38 60 00 05 */	li r3, 0x5
/* 814E2118 | 7C D0 00 2E */	lwzx r6, r16, r0
/* 814E211C | 4B FF F1 AD */	bl RFLiSetupCopyTex
/* 814E2120 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814E2124 | 3B 00 00 00 */	li r24, 0x0
/* 814E2128 | 54 17 06 B5 */	rlwinm. r23, r0, 0, 26, 26
/* 814E212C | 41 82 00 08 */	beq .L_814E2134
/* 814E2130 | 3B 00 08 00 */	li r24, 0x800
.L_814E2134:
/* 814E2134 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814E2138 | 54 13 06 73 */	rlwinm. r19, r0, 0, 25, 25
/* 814E213C | 41 82 00 08 */	beq .L_814E2144
/* 814E2140 | 3B 18 20 00 */	addi r24, r24, 0x2000
.L_814E2144:
/* 814E2144 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814E2148 | 54 12 06 31 */	rlwinm. r18, r0, 0, 24, 24
/* 814E214C | 41 82 00 0C */	beq .L_814E2158
/* 814E2150 | 3F 18 00 01 */	addis r24, r24, 0x1
/* 814E2154 | 3B 18 80 00 */	addi r24, r24, -0x8000
.L_814E2158:
/* 814E2158 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814E215C | 54 11 05 EF */	rlwinm. r17, r0, 0, 23, 23
/* 814E2160 | 41 82 00 08 */	beq .L_814E2168
/* 814E2164 | 3F 18 00 02 */	addis r24, r24, 0x2
.L_814E2168:
/* 814E2168 | 7E 0E 83 78 */	mr r14, r16
/* 814E216C | 39 E0 00 00 */	li r15, 0x0
.L_814E2170:
/* 814E2170 | 80 6E 00 00 */	lwz r3, 0x0(r14)
/* 814E2174 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E2178 | 41 82 00 0C */	beq .L_814E2184
/* 814E217C | 7F 04 C3 78 */	mr r4, r24
/* 814E2180 | 48 04 B7 89 */	bl DCInvalidateRange
.L_814E2184:
/* 814E2184 | 39 EF 00 01 */	addi r15, r15, 0x1
/* 814E2188 | 39 CE 00 04 */	addi r14, r14, 0x4
/* 814E218C | 2C 0F 00 07 */	cmpwi r15, 0x7
/* 814E2190 | 41 80 FF E0 */	blt .L_814E2170
/* 814E2194 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814E2198 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814E219C | 38 A1 00 14 */	addi r5, r1, 0x14
/* 814E21A0 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814E21A4 | 48 06 5E 6D */	bl GXGetScissor
/* 814E21A8 | 39 C1 00 D8 */	addi r14, r1, 0xd8
/* 814E21AC | 39 E1 0E D8 */	addi r15, r1, 0xed8
/* 814E21B0 | 3B 00 00 00 */	li r24, 0x0
.L_814E21B4:
/* 814E21B4 | 83 30 00 00 */	lwz r25, 0x0(r16)
/* 814E21B8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814E21BC | 41 82 01 B4 */	beq .L_814E2370
/* 814E21C0 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 814E21C4 | 41 82 00 68 */	beq .L_814E222C
/* 814E21C8 | 38 60 00 00 */	li r3, 0x0
/* 814E21CC | 38 80 00 00 */	li r4, 0x0
/* 814E21D0 | 38 A0 01 00 */	li r5, 0x100
/* 814E21D4 | 38 C0 01 00 */	li r6, 0x100
/* 814E21D8 | 48 06 2B A5 */	bl GXSetTexCopySrc
/* 814E21DC | 38 60 01 00 */	li r3, 0x100
/* 814E21E0 | 38 80 01 00 */	li r4, 0x100
/* 814E21E4 | 38 A0 00 05 */	li r5, 0x5
/* 814E21E8 | 38 C0 00 00 */	li r6, 0x0
/* 814E21EC | 48 06 2B F5 */	bl GXSetTexCopyDst
/* 814E21F0 | 38 60 00 00 */	li r3, 0x0
/* 814E21F4 | 38 80 00 00 */	li r4, 0x0
/* 814E21F8 | 38 A0 01 00 */	li r5, 0x100
/* 814E21FC | 38 C0 01 00 */	li r6, 0x100
/* 814E2200 | 48 06 5D A9 */	bl GXSetScissor
/* 814E2204 | 7D E3 7B 78 */	mr r3, r15
/* 814E2208 | 7D C4 73 78 */	mr r4, r14
/* 814E220C | 38 A0 01 00 */	li r5, 0x100
/* 814E2210 | 48 00 09 41 */	bl RFLiSetFaceParts
/* 814E2214 | 7F 23 CB 78 */	mr r3, r25
/* 814E2218 | 7D E4 7B 78 */	mr r4, r15
/* 814E221C | 7D C5 73 78 */	mr r5, r14
/* 814E2220 | 38 C0 01 00 */	li r6, 0x100
/* 814E2224 | 48 00 0E 35 */	bl RFLiCapture
/* 814E2228 | 3F 39 00 02 */	addis r25, r25, 0x2
.L_814E222C:
/* 814E222C | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814E2230 | 41 82 00 6C */	beq .L_814E229C
/* 814E2234 | 38 60 00 00 */	li r3, 0x0
/* 814E2238 | 38 80 00 00 */	li r4, 0x0
/* 814E223C | 38 A0 00 80 */	li r5, 0x80
/* 814E2240 | 38 C0 00 80 */	li r6, 0x80
/* 814E2244 | 48 06 2B 39 */	bl GXSetTexCopySrc
/* 814E2248 | 38 60 00 80 */	li r3, 0x80
/* 814E224C | 38 80 00 80 */	li r4, 0x80
/* 814E2250 | 38 A0 00 05 */	li r5, 0x5
/* 814E2254 | 38 C0 00 00 */	li r6, 0x0
/* 814E2258 | 48 06 2B 89 */	bl GXSetTexCopyDst
/* 814E225C | 38 60 00 00 */	li r3, 0x0
/* 814E2260 | 38 80 00 00 */	li r4, 0x0
/* 814E2264 | 38 A0 00 80 */	li r5, 0x80
/* 814E2268 | 38 C0 00 80 */	li r6, 0x80
/* 814E226C | 48 06 5D 3D */	bl GXSetScissor
/* 814E2270 | 7D E3 7B 78 */	mr r3, r15
/* 814E2274 | 7D C4 73 78 */	mr r4, r14
/* 814E2278 | 38 A0 00 80 */	li r5, 0x80
/* 814E227C | 48 00 08 D5 */	bl RFLiSetFaceParts
/* 814E2280 | 7F 23 CB 78 */	mr r3, r25
/* 814E2284 | 7D E4 7B 78 */	mr r4, r15
/* 814E2288 | 7D C5 73 78 */	mr r5, r14
/* 814E228C | 38 C0 00 80 */	li r6, 0x80
/* 814E2290 | 48 00 0D C9 */	bl RFLiCapture
/* 814E2294 | 3F 39 00 01 */	addis r25, r25, 0x1
/* 814E2298 | 3B 39 80 00 */	addi r25, r25, -0x8000
.L_814E229C:
/* 814E229C | 2C 13 00 00 */	cmpwi r19, 0x0
/* 814E22A0 | 41 82 00 68 */	beq .L_814E2308
/* 814E22A4 | 38 60 00 00 */	li r3, 0x0
/* 814E22A8 | 38 80 00 00 */	li r4, 0x0
/* 814E22AC | 38 A0 00 40 */	li r5, 0x40
/* 814E22B0 | 38 C0 00 40 */	li r6, 0x40
/* 814E22B4 | 48 06 2A C9 */	bl GXSetTexCopySrc
/* 814E22B8 | 38 60 00 40 */	li r3, 0x40
/* 814E22BC | 38 80 00 40 */	li r4, 0x40
/* 814E22C0 | 38 A0 00 05 */	li r5, 0x5
/* 814E22C4 | 38 C0 00 00 */	li r6, 0x0
/* 814E22C8 | 48 06 2B 19 */	bl GXSetTexCopyDst
/* 814E22CC | 38 60 00 00 */	li r3, 0x0
/* 814E22D0 | 38 80 00 00 */	li r4, 0x0
/* 814E22D4 | 38 A0 00 40 */	li r5, 0x40
/* 814E22D8 | 38 C0 00 40 */	li r6, 0x40
/* 814E22DC | 48 06 5C CD */	bl GXSetScissor
/* 814E22E0 | 7D E3 7B 78 */	mr r3, r15
/* 814E22E4 | 7D C4 73 78 */	mr r4, r14
/* 814E22E8 | 38 A0 00 40 */	li r5, 0x40
/* 814E22EC | 48 00 08 65 */	bl RFLiSetFaceParts
/* 814E22F0 | 7F 23 CB 78 */	mr r3, r25
/* 814E22F4 | 7D E4 7B 78 */	mr r4, r15
/* 814E22F8 | 7D C5 73 78 */	mr r5, r14
/* 814E22FC | 38 C0 00 40 */	li r6, 0x40
/* 814E2300 | 48 00 0D 59 */	bl RFLiCapture
/* 814E2304 | 3B 39 20 00 */	addi r25, r25, 0x2000
.L_814E2308:
/* 814E2308 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814E230C | 41 82 00 64 */	beq .L_814E2370
/* 814E2310 | 38 60 00 00 */	li r3, 0x0
/* 814E2314 | 38 80 00 00 */	li r4, 0x0
/* 814E2318 | 38 A0 00 20 */	li r5, 0x20
/* 814E231C | 38 C0 00 20 */	li r6, 0x20
/* 814E2320 | 48 06 2A 5D */	bl GXSetTexCopySrc
/* 814E2324 | 38 60 00 20 */	li r3, 0x20
/* 814E2328 | 38 80 00 20 */	li r4, 0x20
/* 814E232C | 38 A0 00 05 */	li r5, 0x5
/* 814E2330 | 38 C0 00 00 */	li r6, 0x0
/* 814E2334 | 48 06 2A AD */	bl GXSetTexCopyDst
/* 814E2338 | 38 60 00 00 */	li r3, 0x0
/* 814E233C | 38 80 00 00 */	li r4, 0x0
/* 814E2340 | 38 A0 00 20 */	li r5, 0x20
/* 814E2344 | 38 C0 00 20 */	li r6, 0x20
/* 814E2348 | 48 06 5C 61 */	bl GXSetScissor
/* 814E234C | 7D E3 7B 78 */	mr r3, r15
/* 814E2350 | 7D C4 73 78 */	mr r4, r14
/* 814E2354 | 38 A0 00 20 */	li r5, 0x20
/* 814E2358 | 48 00 07 F9 */	bl RFLiSetFaceParts
/* 814E235C | 7F 23 CB 78 */	mr r3, r25
/* 814E2360 | 7D E4 7B 78 */	mr r4, r15
/* 814E2364 | 7D C5 73 78 */	mr r5, r14
/* 814E2368 | 38 C0 00 20 */	li r6, 0x20
/* 814E236C | 48 00 0C ED */	bl RFLiCapture
.L_814E2370:
/* 814E2370 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814E2374 | 39 CE 02 00 */	addi r14, r14, 0x200
/* 814E2378 | 2C 18 00 07 */	cmpwi r24, 0x7
/* 814E237C | 39 EF 00 50 */	addi r15, r15, 0x50
/* 814E2380 | 3A 10 00 04 */	addi r16, r16, 0x4
/* 814E2384 | 41 80 FE 30 */	blt .L_814E21B4
/* 814E2388 | 80 61 00 64 */	lwz r3, 0x64(r1)
/* 814E238C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E2390 | 41 82 00 08 */	beq .L_814E2398
/* 814E2394 | 4B FF 88 DD */	bl RFLiFree
.L_814E2398:
/* 814E2398 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814E239C | 41 82 00 0C */	beq .L_814E23A8
/* 814E23A0 | 7E C3 B3 78 */	mr r3, r22
/* 814E23A4 | 4B FF 88 CD */	bl RFLiFree
.L_814E23A8:
/* 814E23A8 | 80 61 00 60 */	lwz r3, 0x60(r1)
/* 814E23AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E23B0 | 41 82 00 08 */	beq .L_814E23B8
/* 814E23B4 | 4B FF 88 BD */	bl RFLiFree
.L_814E23B8:
/* 814E23B8 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814E23BC | 41 82 00 0C */	beq .L_814E23C8
/* 814E23C0 | 7E A3 AB 78 */	mr r3, r21
/* 814E23C4 | 4B FF 88 AD */	bl RFLiFree
.L_814E23C8:
/* 814E23C8 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814E23CC | 41 82 00 0C */	beq .L_814E23D8
/* 814E23D0 | 7E 83 A3 78 */	mr r3, r20
/* 814E23D4 | 4B FF 88 9D */	bl RFLiFree
.L_814E23D8:
/* 814E23D8 | 80 61 00 5C */	lwz r3, 0x5c(r1)
/* 814E23DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E23E0 | 41 82 00 08 */	beq .L_814E23E8
/* 814E23E4 | 4B FF 88 8D */	bl RFLiFree
.L_814E23E8:
/* 814E23E8 | 80 61 00 58 */	lwz r3, 0x58(r1)
/* 814E23EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E23F0 | 41 82 00 08 */	beq .L_814E23F8
/* 814E23F4 | 4B FF 88 7D */	bl RFLiFree
.L_814E23F8:
/* 814E23F8 | 80 61 00 54 */	lwz r3, 0x54(r1)
/* 814E23FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E2400 | 41 82 00 08 */	beq .L_814E2408
/* 814E2404 | 4B FF 88 6D */	bl RFLiFree
.L_814E2408:
/* 814E2408 | 80 61 00 50 */	lwz r3, 0x50(r1)
/* 814E240C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E2410 | 41 82 00 08 */	beq .L_814E2418
/* 814E2414 | 4B FF 88 5D */	bl RFLiFree
.L_814E2418:
/* 814E2418 | 80 61 00 4C */	lwz r3, 0x4c(r1)
/* 814E241C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E2420 | 41 82 00 08 */	beq .L_814E2428
/* 814E2424 | 4B FF 88 4D */	bl RFLiFree
.L_814E2428:
/* 814E2428 | 80 61 00 48 */	lwz r3, 0x48(r1)
/* 814E242C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E2430 | 41 82 00 08 */	beq .L_814E2438
/* 814E2434 | 4B FF 88 3D */	bl RFLiFree
.L_814E2438:
/* 814E2438 | 80 61 00 44 */	lwz r3, 0x44(r1)
/* 814E243C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E2440 | 41 82 00 08 */	beq .L_814E2448
/* 814E2444 | 4B FF 88 2D */	bl RFLiFree
.L_814E2448:
/* 814E2448 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 814E244C | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814E2450 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 814E2454 | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 814E2458 | 48 06 5B 51 */	bl GXSetScissor
/* 814E245C | 38 00 11 78 */	li r0, 0x1178
/* 814E2460 | 13 E1 00 0C */	psq_lx f31, r1, r0, 0, qr0
/* 814E2464 | 39 61 11 70 */	addi r11, r1, 0x1170
/* 814E2468 | CB E1 11 70 */	lfd f31, 0x1170(r1)
/* 814E246C | 48 11 70 6D */	bl _restgpr_14
/* 814E2470 | 80 01 11 84 */	lwz r0, 0x1184(r1)
/* 814E2474 | 7C 08 03 A6 */	mtlr r0
/* 814E2478 | 38 21 11 80 */	addi r1, r1, 0x1180
/* 814E247C | 4E 80 00 20 */	blr
.endfn RFLiMakeTexture

# .text:0x11B8 | 0x814E2480 | size: 0x1D8
.fn RFLiSetup2DCameraAndParam, global
/* 814E2480 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814E2484 | 7C 08 02 A6 */	mflr r0
/* 814E2488 | C0 22 8C B8 */	lfs f1, lbl_816950B8@sda21(r0)
/* 814E248C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814E2490 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E2494 | FC 60 08 90 */	fmr f3, f1
/* 814E2498 | C0 42 8C C8 */	lfs f2, lbl_816950C8@sda21(r0)
/* 814E249C | FC A0 08 90 */	fmr f5, f1
/* 814E24A0 | C0 82 8C CC */	lfs f4, lbl_816950CC@sda21(r0)
/* 814E24A4 | C0 C2 8C B4 */	lfs f6, lbl_816950B4@sda21(r0)
/* 814E24A8 | 48 05 F1 55 */	bl fn_815415FC
/* 814E24AC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E24B0 | 38 80 00 01 */	li r4, 0x1
/* 814E24B4 | 48 06 57 7D */	bl GXSetProjection
/* 814E24B8 | C0 22 8C B8 */	lfs f1, lbl_816950B8@sda21(r0)
/* 814E24BC | C0 62 8C CC */	lfs f3, lbl_816950CC@sda21(r0)
/* 814E24C0 | FC 40 08 90 */	fmr f2, f1
/* 814E24C4 | C0 82 8C C8 */	lfs f4, lbl_816950C8@sda21(r0)
/* 814E24C8 | FC A0 08 90 */	fmr f5, f1
/* 814E24CC | C0 C2 8C B4 */	lfs f6, lbl_816950B4@sda21(r0)
/* 814E24D0 | 48 06 5A 5D */	bl GXSetViewport
/* 814E24D4 | C0 22 8C B4 */	lfs f1, lbl_816950B4@sda21(r0)
/* 814E24D8 | C0 42 8C B8 */	lfs f2, lbl_816950B8@sda21(r0)
/* 814E24DC | 48 06 5A 9D */	bl GXSetZScaleOffset
/* 814E24E0 | 38 60 00 02 */	li r3, 0x2
/* 814E24E4 | 48 06 27 D9 */	bl GXSetCullMode
/* 814E24E8 | 38 60 00 00 */	li r3, 0x0
/* 814E24EC | 38 80 00 03 */	li r4, 0x3
/* 814E24F0 | 38 A0 00 00 */	li r5, 0x0
/* 814E24F4 | 48 06 53 1D */	bl GXSetZMode
/* 814E24F8 | 38 60 00 00 */	li r3, 0x0
/* 814E24FC | 48 06 53 49 */	bl GXSetZCompLoc
/* 814E2500 | 38 60 00 04 */	li r3, 0x4
/* 814E2504 | 38 80 00 00 */	li r4, 0x0
/* 814E2508 | 38 A0 00 01 */	li r5, 0x1
/* 814E250C | 38 C0 00 00 */	li r6, 0x0
/* 814E2510 | 38 E0 00 00 */	li r7, 0x0
/* 814E2514 | 48 06 4C C1 */	bl GXSetAlphaCompare
/* 814E2518 | 38 60 00 01 */	li r3, 0x1
/* 814E251C | 48 06 52 C9 */	bl GXSetAlphaUpdate
/* 814E2520 | 38 60 00 00 */	li r3, 0x0
/* 814E2524 | 48 06 53 F9 */	bl GXSetDither
/* 814E2528 | 48 06 13 A5 */	bl GXClearVtxDesc
/* 814E252C | 48 06 17 F9 */	bl GXInvalidateVtxCache
/* 814E2530 | 38 60 00 09 */	li r3, 0x9
/* 814E2534 | 38 80 00 01 */	li r4, 0x1
/* 814E2538 | 48 06 0F 55 */	bl GXSetVtxDesc
/* 814E253C | 38 60 00 0B */	li r3, 0xb
/* 814E2540 | 38 80 00 01 */	li r4, 0x1
/* 814E2544 | 48 06 0F 49 */	bl GXSetVtxDesc
/* 814E2548 | 38 60 00 0D */	li r3, 0xd
/* 814E254C | 38 80 00 01 */	li r4, 0x1
/* 814E2550 | 48 06 0F 3D */	bl GXSetVtxDesc
/* 814E2554 | 38 60 00 00 */	li r3, 0x0
/* 814E2558 | 38 80 00 09 */	li r4, 0x9
/* 814E255C | 38 A0 00 00 */	li r5, 0x0
/* 814E2560 | 38 C0 00 04 */	li r6, 0x4
/* 814E2564 | 38 E0 00 00 */	li r7, 0x0
/* 814E2568 | 48 06 13 99 */	bl GXSetVtxAttrFmt
/* 814E256C | 38 60 00 00 */	li r3, 0x0
/* 814E2570 | 38 80 00 0B */	li r4, 0xb
/* 814E2574 | 38 A0 00 01 */	li r5, 0x1
/* 814E2578 | 38 C0 00 05 */	li r6, 0x5
/* 814E257C | 38 E0 00 00 */	li r7, 0x0
/* 814E2580 | 48 06 13 81 */	bl GXSetVtxAttrFmt
/* 814E2584 | 38 60 00 00 */	li r3, 0x0
/* 814E2588 | 38 80 00 0D */	li r4, 0xd
/* 814E258C | 38 A0 00 01 */	li r5, 0x1
/* 814E2590 | 38 C0 00 03 */	li r6, 0x3
/* 814E2594 | 38 E0 00 08 */	li r7, 0x8
/* 814E2598 | 48 06 13 69 */	bl GXSetVtxAttrFmt
/* 814E259C | 38 60 00 01 */	li r3, 0x1
/* 814E25A0 | 48 06 34 25 */	bl GXSetNumChans
/* 814E25A4 | 38 60 00 04 */	li r3, 0x4
/* 814E25A8 | 38 80 00 00 */	li r4, 0x0
/* 814E25AC | 38 A0 00 00 */	li r5, 0x0
/* 814E25B0 | 38 C0 00 01 */	li r6, 0x1
/* 814E25B4 | 38 E0 00 00 */	li r7, 0x0
/* 814E25B8 | 39 00 00 00 */	li r8, 0x0
/* 814E25BC | 39 20 00 02 */	li r9, 0x2
/* 814E25C0 | 48 06 34 29 */	bl GXSetChanCtrl
/* 814E25C4 | 38 60 00 01 */	li r3, 0x1
/* 814E25C8 | 48 06 19 95 */	bl GXSetNumTexGens
/* 814E25CC | 38 60 00 00 */	li r3, 0x0
/* 814E25D0 | 38 80 00 01 */	li r4, 0x1
/* 814E25D4 | 38 A0 00 04 */	li r5, 0x4
/* 814E25D8 | 38 C0 00 3C */	li r6, 0x3c
/* 814E25DC | 38 E0 00 00 */	li r7, 0x0
/* 814E25E0 | 39 00 00 7D */	li r8, 0x7d
/* 814E25E4 | 48 06 17 51 */	bl GXSetTexCoordGen2
/* 814E25E8 | 38 60 00 00 */	li r3, 0x0
/* 814E25EC | 38 80 00 00 */	li r4, 0x0
/* 814E25F0 | 38 A0 00 01 */	li r5, 0x1
/* 814E25F4 | 38 C0 00 02 */	li r6, 0x2
/* 814E25F8 | 38 E0 00 03 */	li r7, 0x3
/* 814E25FC | 48 06 4B 5D */	bl GXSetTevSwapModeTableGXSetAlphaCompare
/* 814E2600 | 38 60 00 01 */	li r3, 0x1
/* 814E2604 | 38 80 00 00 */	li r4, 0x0
/* 814E2608 | 38 A0 00 00 */	li r5, 0x0
/* 814E260C | 38 C0 00 00 */	li r6, 0x0
/* 814E2610 | 38 E0 00 03 */	li r7, 0x3
/* 814E2614 | 48 06 4B 45 */	bl GXSetTevSwapModeTableGXSetAlphaCompare
/* 814E2618 | 38 60 00 02 */	li r3, 0x2
/* 814E261C | 38 80 00 01 */	li r4, 0x1
/* 814E2620 | 38 A0 00 01 */	li r5, 0x1
/* 814E2624 | 38 C0 00 01 */	li r6, 0x1
/* 814E2628 | 38 E0 00 03 */	li r7, 0x3
/* 814E262C | 48 06 4B 2D */	bl GXSetTevSwapModeTableGXSetAlphaCompare
/* 814E2630 | 38 60 00 03 */	li r3, 0x3
/* 814E2634 | 38 80 00 02 */	li r4, 0x2
/* 814E2638 | 38 A0 00 02 */	li r5, 0x2
/* 814E263C | 38 C0 00 02 */	li r6, 0x2
/* 814E2640 | 38 E0 00 03 */	li r7, 0x3
/* 814E2644 | 48 06 4B 15 */	bl GXSetTevSwapModeTableGXSetAlphaCompare
/* 814E2648 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814E264C | 7C 08 03 A6 */	mtlr r0
/* 814E2650 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814E2654 | 4E 80 00 20 */	blr
.endfn RFLiSetup2DCameraAndParam

# .text:0x1390 | 0x814E2658 | size: 0x248
.fn RFLiSetTev4Mouth, global
/* 814E2658 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E265C | 7C 08 02 A6 */	mflr r0
/* 814E2660 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E2664 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E2668 | 7C 7F 1B 78 */	mr r31, r3
/* 814E266C | 38 60 00 03 */	li r3, 0x3
/* 814E2670 | 48 06 4D 85 */	bl GXSetNumTevStages
/* 814E2674 | 38 60 00 00 */	li r3, 0x0
/* 814E2678 | 38 80 00 01 */	li r4, 0x1
/* 814E267C | 38 A0 00 01 */	li r5, 0x1
/* 814E2680 | 48 06 4A 9D */	bl GXSetTevSwapMode
/* 814E2684 | 38 60 00 00 */	li r3, 0x0
/* 814E2688 | 38 80 00 00 */	li r4, 0x0
/* 814E268C | 38 A0 00 00 */	li r5, 0x0
/* 814E2690 | 38 C0 00 04 */	li r6, 0x4
/* 814E2694 | 48 06 4C 05 */	bl GXSetTevOrder
/* 814E2698 | 38 60 00 00 */	li r3, 0x0
/* 814E269C | 38 80 00 0F */	li r4, 0xf
/* 814E26A0 | 38 A0 00 02 */	li r5, 0x2
/* 814E26A4 | 38 C0 00 08 */	li r6, 0x8
/* 814E26A8 | 38 E0 00 0F */	li r7, 0xf
/* 814E26AC | 48 06 47 81 */	bl GXSetTevColorIn
/* 814E26B0 | 38 60 00 00 */	li r3, 0x0
/* 814E26B4 | 38 80 00 07 */	li r4, 0x7
/* 814E26B8 | 38 A0 00 07 */	li r5, 0x7
/* 814E26BC | 38 C0 00 07 */	li r6, 0x7
/* 814E26C0 | 38 E0 00 04 */	li r7, 0x4
/* 814E26C4 | 48 06 47 A9 */	bl GXSetTevAlphaIn
/* 814E26C8 | 38 60 00 00 */	li r3, 0x0
/* 814E26CC | 38 80 00 00 */	li r4, 0x0
/* 814E26D0 | 38 A0 00 00 */	li r5, 0x0
/* 814E26D4 | 38 C0 00 00 */	li r6, 0x0
/* 814E26D8 | 38 E0 00 01 */	li r7, 0x1
/* 814E26DC | 39 00 00 00 */	li r8, 0x0
/* 814E26E0 | 48 06 47 CD */	bl GXSetTevColorOp
/* 814E26E4 | 38 60 00 00 */	li r3, 0x0
/* 814E26E8 | 38 80 00 00 */	li r4, 0x0
/* 814E26EC | 38 A0 00 00 */	li r5, 0x0
/* 814E26F0 | 38 C0 00 00 */	li r6, 0x0
/* 814E26F4 | 38 E0 00 01 */	li r7, 0x1
/* 814E26F8 | 39 00 00 00 */	li r8, 0x0
/* 814E26FC | 48 06 48 09 */	bl GXSetTevAlphaOp
/* 814E2700 | 38 60 00 01 */	li r3, 0x1
/* 814E2704 | 38 80 00 03 */	li r4, 0x3
/* 814E2708 | 38 A0 00 02 */	li r5, 0x2
/* 814E270C | 48 06 4A 11 */	bl GXSetTevSwapMode
/* 814E2710 | 38 60 00 01 */	li r3, 0x1
/* 814E2714 | 38 80 00 00 */	li r4, 0x0
/* 814E2718 | 38 A0 00 00 */	li r5, 0x0
/* 814E271C | 38 C0 00 04 */	li r6, 0x4
/* 814E2720 | 48 06 4B 79 */	bl GXSetTevOrder
/* 814E2724 | 38 60 00 01 */	li r3, 0x1
/* 814E2728 | 38 80 00 0F */	li r4, 0xf
/* 814E272C | 38 A0 00 04 */	li r5, 0x4
/* 814E2730 | 38 C0 00 08 */	li r6, 0x8
/* 814E2734 | 38 E0 00 00 */	li r7, 0x0
/* 814E2738 | 48 06 46 F5 */	bl GXSetTevColorIn
/* 814E273C | 38 60 00 01 */	li r3, 0x1
/* 814E2740 | 38 80 00 07 */	li r4, 0x7
/* 814E2744 | 38 A0 00 07 */	li r5, 0x7
/* 814E2748 | 38 C0 00 07 */	li r6, 0x7
/* 814E274C | 38 E0 00 00 */	li r7, 0x0
/* 814E2750 | 48 06 47 1D */	bl GXSetTevAlphaIn
/* 814E2754 | 38 60 00 01 */	li r3, 0x1
/* 814E2758 | 38 80 00 00 */	li r4, 0x0
/* 814E275C | 38 A0 00 00 */	li r5, 0x0
/* 814E2760 | 38 C0 00 00 */	li r6, 0x0
/* 814E2764 | 38 E0 00 01 */	li r7, 0x1
/* 814E2768 | 39 00 00 00 */	li r8, 0x0
/* 814E276C | 48 06 47 41 */	bl GXSetTevColorOp
/* 814E2770 | 38 60 00 01 */	li r3, 0x1
/* 814E2774 | 38 80 00 00 */	li r4, 0x0
/* 814E2778 | 38 A0 00 00 */	li r5, 0x0
/* 814E277C | 38 C0 00 00 */	li r6, 0x0
/* 814E2780 | 38 E0 00 01 */	li r7, 0x1
/* 814E2784 | 39 00 00 00 */	li r8, 0x0
/* 814E2788 | 48 06 47 7D */	bl GXSetTevAlphaOp
/* 814E278C | 38 60 00 02 */	li r3, 0x2
/* 814E2790 | 38 80 00 02 */	li r4, 0x2
/* 814E2794 | 38 A0 00 03 */	li r5, 0x3
/* 814E2798 | 48 06 49 85 */	bl GXSetTevSwapMode
/* 814E279C | 38 60 00 02 */	li r3, 0x2
/* 814E27A0 | 38 80 00 00 */	li r4, 0x0
/* 814E27A4 | 38 A0 00 00 */	li r5, 0x0
/* 814E27A8 | 38 C0 00 04 */	li r6, 0x4
/* 814E27AC | 48 06 4A ED */	bl GXSetTevOrder
/* 814E27B0 | 38 60 00 02 */	li r3, 0x2
/* 814E27B4 | 38 80 00 0F */	li r4, 0xf
/* 814E27B8 | 38 A0 00 0C */	li r5, 0xc
/* 814E27BC | 38 C0 00 08 */	li r6, 0x8
/* 814E27C0 | 38 E0 00 00 */	li r7, 0x0
/* 814E27C4 | 48 06 46 69 */	bl GXSetTevColorIn
/* 814E27C8 | 38 60 00 02 */	li r3, 0x2
/* 814E27CC | 38 80 00 07 */	li r4, 0x7
/* 814E27D0 | 38 A0 00 07 */	li r5, 0x7
/* 814E27D4 | 38 C0 00 07 */	li r6, 0x7
/* 814E27D8 | 38 E0 00 00 */	li r7, 0x0
/* 814E27DC | 48 06 46 91 */	bl GXSetTevAlphaIn
/* 814E27E0 | 38 60 00 02 */	li r3, 0x2
/* 814E27E4 | 38 80 00 00 */	li r4, 0x0
/* 814E27E8 | 38 A0 00 00 */	li r5, 0x0
/* 814E27EC | 38 C0 00 00 */	li r6, 0x0
/* 814E27F0 | 38 E0 00 01 */	li r7, 0x1
/* 814E27F4 | 39 00 00 00 */	li r8, 0x0
/* 814E27F8 | 48 06 46 B5 */	bl GXSetTevColorOp
/* 814E27FC | 38 60 00 02 */	li r3, 0x2
/* 814E2800 | 38 80 00 00 */	li r4, 0x0
/* 814E2804 | 38 A0 00 00 */	li r5, 0x0
/* 814E2808 | 38 C0 00 00 */	li r6, 0x0
/* 814E280C | 38 E0 00 01 */	li r7, 0x1
/* 814E2810 | 39 00 00 00 */	li r8, 0x0
/* 814E2814 | 48 06 46 F1 */	bl GXSetTevAlphaOp
/* 814E2818 | 3C 60 81 62 */	lis r3, RFLi_MOUTH_COLOR0@ha
/* 814E281C | 57 FF 10 3A */	slwi r31, r31, 2
/* 814E2820 | 38 63 D3 E0 */	addi r3, r3, RFLi_MOUTH_COLOR0@l
/* 814E2824 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814E2828 | 7D 03 FA 14 */	add r8, r3, r31
/* 814E282C | 88 E8 00 00 */	lbz r7, 0x0(r8)
/* 814E2830 | 38 60 00 01 */	li r3, 0x1
/* 814E2834 | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E2838 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E283C | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E2840 | 98 E1 00 0C */	stb r7, 0xc(r1)
/* 814E2844 | 98 C1 00 0D */	stb r6, 0xd(r1)
/* 814E2848 | 98 A1 00 0E */	stb r5, 0xe(r1)
/* 814E284C | 98 01 00 0F */	stb r0, 0xf(r1)
/* 814E2850 | 48 06 47 0D */	bl GXSetTevColor
/* 814E2854 | 3C A0 81 62 */	lis r5, RFLi_MOUTH_COLOR1@ha
/* 814E2858 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E285C | 38 A5 D3 EC */	addi r5, r5, RFLi_MOUTH_COLOR1@l
/* 814E2860 | 38 60 00 02 */	li r3, 0x2
/* 814E2864 | 7D 05 FA 14 */	add r8, r5, r31
/* 814E2868 | 7C E5 F8 AE */	lbzx r7, r5, r31
/* 814E286C | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E2870 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E2874 | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E2878 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 814E287C | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 814E2880 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 814E2884 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814E2888 | 48 06 46 D5 */	bl GXSetTevColor
/* 814E288C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E2890 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E2894 | 7C 08 03 A6 */	mtlr r0
/* 814E2898 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E289C | 4E 80 00 20 */	blr
.endfn RFLiSetTev4Mouth

# .text:0x15D8 | 0x814E28A0 | size: 0x2B0
.fn RFLiSetTev4Eye, global
/* 814E28A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E28A4 | 7C 08 02 A6 */	mflr r0
/* 814E28A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E28AC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E28B0 | 7C 9F 23 78 */	mr r31, r4
/* 814E28B4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E28B8 | 7C 7E 1B 78 */	mr r30, r3
/* 814E28BC | 38 60 00 03 */	li r3, 0x3
/* 814E28C0 | 48 06 4B 35 */	bl GXSetNumTevStages
/* 814E28C4 | 38 60 00 00 */	li r3, 0x0
/* 814E28C8 | 38 80 00 01 */	li r4, 0x1
/* 814E28CC | 38 A0 00 01 */	li r5, 0x1
/* 814E28D0 | 48 06 48 4D */	bl GXSetTevSwapMode
/* 814E28D4 | 38 60 00 00 */	li r3, 0x0
/* 814E28D8 | 38 80 00 00 */	li r4, 0x0
/* 814E28DC | 38 A0 00 00 */	li r5, 0x0
/* 814E28E0 | 38 C0 00 04 */	li r6, 0x4
/* 814E28E4 | 48 06 49 B5 */	bl GXSetTevOrder
/* 814E28E8 | 38 60 00 00 */	li r3, 0x0
/* 814E28EC | 38 80 00 0F */	li r4, 0xf
/* 814E28F0 | 38 A0 00 02 */	li r5, 0x2
/* 814E28F4 | 38 C0 00 08 */	li r6, 0x8
/* 814E28F8 | 38 E0 00 0F */	li r7, 0xf
/* 814E28FC | 48 06 45 31 */	bl GXSetTevColorIn
/* 814E2900 | 38 60 00 00 */	li r3, 0x0
/* 814E2904 | 38 80 00 07 */	li r4, 0x7
/* 814E2908 | 38 A0 00 07 */	li r5, 0x7
/* 814E290C | 38 C0 00 07 */	li r6, 0x7
/* 814E2910 | 38 E0 00 04 */	li r7, 0x4
/* 814E2914 | 48 06 45 59 */	bl GXSetTevAlphaIn
/* 814E2918 | 38 60 00 00 */	li r3, 0x0
/* 814E291C | 38 80 00 00 */	li r4, 0x0
/* 814E2920 | 38 A0 00 00 */	li r5, 0x0
/* 814E2924 | 38 C0 00 00 */	li r6, 0x0
/* 814E2928 | 38 E0 00 01 */	li r7, 0x1
/* 814E292C | 39 00 00 00 */	li r8, 0x0
/* 814E2930 | 48 06 45 7D */	bl GXSetTevColorOp
/* 814E2934 | 38 60 00 00 */	li r3, 0x0
/* 814E2938 | 38 80 00 00 */	li r4, 0x0
/* 814E293C | 38 A0 00 00 */	li r5, 0x0
/* 814E2940 | 38 C0 00 00 */	li r6, 0x0
/* 814E2944 | 38 E0 00 01 */	li r7, 0x1
/* 814E2948 | 39 00 00 00 */	li r8, 0x0
/* 814E294C | 48 06 45 B9 */	bl GXSetTevAlphaOp
/* 814E2950 | 38 60 00 01 */	li r3, 0x1
/* 814E2954 | 38 80 00 03 */	li r4, 0x3
/* 814E2958 | 38 A0 00 03 */	li r5, 0x3
/* 814E295C | 48 06 47 C1 */	bl GXSetTevSwapMode
/* 814E2960 | 38 60 00 01 */	li r3, 0x1
/* 814E2964 | 38 80 00 00 */	li r4, 0x0
/* 814E2968 | 38 A0 00 00 */	li r5, 0x0
/* 814E296C | 38 C0 00 04 */	li r6, 0x4
/* 814E2970 | 48 06 49 29 */	bl GXSetTevOrder
/* 814E2974 | 38 60 00 01 */	li r3, 0x1
/* 814E2978 | 38 80 00 0F */	li r4, 0xf
/* 814E297C | 38 A0 00 04 */	li r5, 0x4
/* 814E2980 | 38 C0 00 08 */	li r6, 0x8
/* 814E2984 | 38 E0 00 00 */	li r7, 0x0
/* 814E2988 | 48 06 44 A5 */	bl GXSetTevColorIn
/* 814E298C | 38 60 00 01 */	li r3, 0x1
/* 814E2990 | 38 80 00 07 */	li r4, 0x7
/* 814E2994 | 38 A0 00 07 */	li r5, 0x7
/* 814E2998 | 38 C0 00 07 */	li r6, 0x7
/* 814E299C | 38 E0 00 00 */	li r7, 0x0
/* 814E29A0 | 48 06 44 CD */	bl GXSetTevAlphaIn
/* 814E29A4 | 38 60 00 01 */	li r3, 0x1
/* 814E29A8 | 38 80 00 00 */	li r4, 0x0
/* 814E29AC | 38 A0 00 00 */	li r5, 0x0
/* 814E29B0 | 38 C0 00 00 */	li r6, 0x0
/* 814E29B4 | 38 E0 00 01 */	li r7, 0x1
/* 814E29B8 | 39 00 00 00 */	li r8, 0x0
/* 814E29BC | 48 06 44 F1 */	bl GXSetTevColorOp
/* 814E29C0 | 38 60 00 01 */	li r3, 0x1
/* 814E29C4 | 38 80 00 00 */	li r4, 0x0
/* 814E29C8 | 38 A0 00 00 */	li r5, 0x0
/* 814E29CC | 38 C0 00 00 */	li r6, 0x0
/* 814E29D0 | 38 E0 00 01 */	li r7, 0x1
/* 814E29D4 | 39 00 00 00 */	li r8, 0x0
/* 814E29D8 | 48 06 45 2D */	bl GXSetTevAlphaOp
/* 814E29DC | 38 60 00 02 */	li r3, 0x2
/* 814E29E0 | 38 80 00 02 */	li r4, 0x2
/* 814E29E4 | 38 A0 00 02 */	li r5, 0x2
/* 814E29E8 | 48 06 47 35 */	bl GXSetTevSwapMode
/* 814E29EC | 38 60 00 02 */	li r3, 0x2
/* 814E29F0 | 38 80 00 00 */	li r4, 0x0
/* 814E29F4 | 38 A0 00 00 */	li r5, 0x0
/* 814E29F8 | 38 C0 00 04 */	li r6, 0x4
/* 814E29FC | 48 06 48 9D */	bl GXSetTevOrder
/* 814E2A00 | 38 60 00 02 */	li r3, 0x2
/* 814E2A04 | 38 80 00 0F */	li r4, 0xf
/* 814E2A08 | 38 A0 00 0C */	li r5, 0xc
/* 814E2A0C | 38 C0 00 08 */	li r6, 0x8
/* 814E2A10 | 38 E0 00 00 */	li r7, 0x0
/* 814E2A14 | 48 06 44 19 */	bl GXSetTevColorIn
/* 814E2A18 | 38 60 00 02 */	li r3, 0x2
/* 814E2A1C | 38 80 00 07 */	li r4, 0x7
/* 814E2A20 | 38 A0 00 07 */	li r5, 0x7
/* 814E2A24 | 38 C0 00 07 */	li r6, 0x7
/* 814E2A28 | 38 E0 00 00 */	li r7, 0x0
/* 814E2A2C | 48 06 44 41 */	bl GXSetTevAlphaIn
/* 814E2A30 | 38 60 00 02 */	li r3, 0x2
/* 814E2A34 | 38 80 00 00 */	li r4, 0x0
/* 814E2A38 | 38 A0 00 00 */	li r5, 0x0
/* 814E2A3C | 38 C0 00 00 */	li r6, 0x0
/* 814E2A40 | 38 E0 00 01 */	li r7, 0x1
/* 814E2A44 | 39 00 00 00 */	li r8, 0x0
/* 814E2A48 | 48 06 44 65 */	bl GXSetTevColorOp
/* 814E2A4C | 38 60 00 02 */	li r3, 0x2
/* 814E2A50 | 38 80 00 00 */	li r4, 0x0
/* 814E2A54 | 38 A0 00 00 */	li r5, 0x0
/* 814E2A58 | 38 C0 00 00 */	li r6, 0x0
/* 814E2A5C | 38 E0 00 01 */	li r7, 0x1
/* 814E2A60 | 39 00 00 00 */	li r8, 0x0
/* 814E2A64 | 48 06 44 A1 */	bl GXSetTevAlphaOp
/* 814E2A68 | 2C 1F 00 14 */	cmpwi r31, 0x14
/* 814E2A6C | 41 82 00 38 */	beq .L_814E2AA4
/* 814E2A70 | 40 80 00 58 */	bge .L_814E2AC8
/* 814E2A74 | 2C 1F 00 09 */	cmpwi r31, 0x9
/* 814E2A78 | 41 82 00 08 */	beq .L_814E2A80
/* 814E2A7C | 48 00 00 4C */	b .L_814E2AC8
.L_814E2A80:
/* 814E2A80 | 88 A2 8C D0 */	lbz r5, lbl_816950D0@sda21(r0)
/* 814E2A84 | 88 82 8C D1 */	lbz r4, lbl_816950D1@sda21(r0)
/* 814E2A88 | 88 62 8C D2 */	lbz r3, lbl_816950D2@sda21(r0)
/* 814E2A8C | 88 02 8C D3 */	lbz r0, lbl_816950D3@sda21(r0)
/* 814E2A90 | 98 A1 00 10 */	stb r5, 0x10(r1)
/* 814E2A94 | 98 81 00 11 */	stb r4, 0x11(r1)
/* 814E2A98 | 98 61 00 12 */	stb r3, 0x12(r1)
/* 814E2A9C | 98 01 00 13 */	stb r0, 0x13(r1)
/* 814E2AA0 | 48 00 00 48 */	b .L_814E2AE8
.L_814E2AA4:
/* 814E2AA4 | 88 A2 8C D4 */	lbz r5, lbl_816950D4@sda21(r0)
/* 814E2AA8 | 88 82 8C D5 */	lbz r4, lbl_816950D5@sda21(r0)
/* 814E2AAC | 88 62 8C D6 */	lbz r3, lbl_816950D6@sda21(r0)
/* 814E2AB0 | 88 02 8C D7 */	lbz r0, lbl_816950D7@sda21(r0)
/* 814E2AB4 | 98 A1 00 10 */	stb r5, 0x10(r1)
/* 814E2AB8 | 98 81 00 11 */	stb r4, 0x11(r1)
/* 814E2ABC | 98 61 00 12 */	stb r3, 0x12(r1)
/* 814E2AC0 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 814E2AC4 | 48 00 00 24 */	b .L_814E2AE8
.L_814E2AC8:
/* 814E2AC8 | 88 A2 8C D8 */	lbz r5, lbl_816950D8@sda21(r0)
/* 814E2ACC | 88 82 8C D9 */	lbz r4, lbl_816950D9@sda21(r0)
/* 814E2AD0 | 88 62 8C DA */	lbz r3, lbl_816950DA@sda21(r0)
/* 814E2AD4 | 88 02 8C DB */	lbz r0, lbl_816950DB@sda21(r0)
/* 814E2AD8 | 98 A1 00 10 */	stb r5, 0x10(r1)
/* 814E2ADC | 98 81 00 11 */	stb r4, 0x11(r1)
/* 814E2AE0 | 98 61 00 12 */	stb r3, 0x12(r1)
/* 814E2AE4 | 98 01 00 13 */	stb r0, 0x13(r1)
.L_814E2AE8:
/* 814E2AE8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814E2AEC | 38 81 00 0C */	addi r4, r1, 0xc
/* 814E2AF0 | 38 60 00 01 */	li r3, 0x1
/* 814E2AF4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814E2AF8 | 48 06 44 65 */	bl GXSetTevColor
/* 814E2AFC | 3C 60 81 62 */	lis r3, RFLi_EYE_COLOR1@ha
/* 814E2B00 | 57 C0 10 3A */	slwi r0, r30, 2
/* 814E2B04 | 38 63 D3 A8 */	addi r3, r3, RFLi_EYE_COLOR1@l
/* 814E2B08 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E2B0C | 7D 03 02 14 */	add r8, r3, r0
/* 814E2B10 | 88 E8 00 00 */	lbz r7, 0x0(r8)
/* 814E2B14 | 38 60 00 02 */	li r3, 0x2
/* 814E2B18 | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E2B1C | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E2B20 | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E2B24 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 814E2B28 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 814E2B2C | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 814E2B30 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814E2B34 | 48 06 44 29 */	bl GXSetTevColor
/* 814E2B38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E2B3C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E2B40 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E2B44 | 7C 08 03 A6 */	mtlr r0
/* 814E2B48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E2B4C | 4E 80 00 20 */	blr
.endfn RFLiSetTev4Eye

# .text:0x1888 | 0x814E2B50 | size: 0x508
.fn RFLiSetFaceParts, global
/* 814E2B50 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 814E2B54 | DB E1 01 10 */	stfd f31, 0x110(r1)
/* 814E2B58 | F3 E1 01 18 */	psq_st f31, 0x118(r1), 0, qr0
/* 814E2B5C | DB C1 01 00 */	stfd f30, 0x100(r1)
/* 814E2B60 | F3 C1 01 08 */	psq_st f30, 0x108(r1), 0, qr0
/* 814E2B64 | DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 814E2B68 | F3 A1 00 F8 */	psq_st f29, 0xf8(r1), 0, qr0
/* 814E2B6C | DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 814E2B70 | F3 81 00 E8 */	psq_st f28, 0xe8(r1), 0, qr0
/* 814E2B74 | DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 814E2B78 | F3 61 00 D8 */	psq_st f27, 0xd8(r1), 0, qr0
/* 814E2B7C | DB 41 00 C0 */	stfd f26, 0xc0(r1)
/* 814E2B80 | F3 41 00 C8 */	psq_st f26, 0xc8(r1), 0, qr0
/* 814E2B84 | DB 21 00 B0 */	stfd f25, 0xb0(r1)
/* 814E2B88 | F3 21 00 B8 */	psq_st f25, 0xb8(r1), 0, qr0
/* 814E2B8C | DB 01 00 A0 */	stfd f24, 0xa0(r1)
/* 814E2B90 | F3 01 00 A8 */	psq_st f24, 0xa8(r1), 0, qr0
/* 814E2B94 | DA E1 00 90 */	stfd f23, 0x90(r1)
/* 814E2B98 | F2 E1 00 98 */	psq_st f23, 0x98(r1), 0, qr0
/* 814E2B9C | DA C1 00 80 */	stfd f22, 0x80(r1)
/* 814E2BA0 | F2 C1 00 88 */	psq_st f22, 0x88(r1), 0, qr0
/* 814E2BA4 | DA A1 00 70 */	stfd f21, 0x70(r1)
/* 814E2BA8 | F2 A1 00 78 */	psq_st f21, 0x78(r1), 0, qr0
/* 814E2BAC | DA 81 00 60 */	stfd f20, 0x60(r1)
/* 814E2BB0 | F2 81 00 68 */	psq_st f20, 0x68(r1), 0, qr0
/* 814E2BB4 | DA 61 00 50 */	stfd f19, 0x50(r1)
/* 814E2BB8 | F2 61 00 58 */	psq_st f19, 0x58(r1), 0, qr0
/* 814E2BBC | DA 41 00 40 */	stfd f18, 0x40(r1)
/* 814E2BC0 | F2 41 00 48 */	psq_st f18, 0x48(r1), 0, qr0
/* 814E2BC4 | DA 21 00 30 */	stfd f17, 0x30(r1)
/* 814E2BC8 | F2 21 00 38 */	psq_st f17, 0x38(r1), 0, qr0
/* 814E2BCC | DA 01 00 20 */	stfd f16, 0x20(r1)
/* 814E2BD0 | F2 01 00 28 */	psq_st f16, 0x28(r1), 0, qr0
/* 814E2BD4 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 814E2BD8 | 3D 60 43 30 */	lis r11, 0x4330
/* 814E2BDC | 3C C0 81 62 */	lis r6, RFLi_EYE_ROT_OFFSET@ha
/* 814E2BE0 | 91 61 00 08 */	stw r11, 0x8(r1)
/* 814E2BE4 | 55 07 B7 3E */	extrwi r7, r8, 4, 18
/* 814E2BE8 | 55 09 DE FE */	extrwi r9, r8, 5, 22
/* 814E2BEC | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 814E2BF0 | 55 0C 6F 3E */	extrwi r12, r8, 4, 9
/* 814E2BF4 | 55 00 36 BE */	srwi r0, r8, 26
/* 814E2BF8 | 38 C6 D3 58 */	addi r6, r6, RFLi_EYE_ROT_OFFSET@l
/* 814E2BFC | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814E2C00 | 55 08 96 FE */	extrwi r8, r8, 5, 13
/* 814E2C04 | C8 C2 8D 50 */	lfd f6, lbl_81695150@sda21(r0)
/* 814E2C08 | 7C E6 00 AE */	lbzx r7, r6, r0
/* 814E2C0C | 91 61 00 10 */	stw r11, 0x10(r1)
/* 814E2C10 | EC 40 30 28 */	fsubs f2, f0, f6
/* 814E2C14 | 7C E8 3A 14 */	add r7, r8, r7
/* 814E2C18 | C0 22 8C DC */	lfs f1, lbl_816950DC@sda21(r0)
/* 814E2C1C | 91 21 00 14 */	stw r9, 0x14(r1)
/* 814E2C20 | 54 E7 06 FE */	clrlwi r7, r7, 27
/* 814E2C24 | EC E1 00 B2 */	fmuls f7, f1, f2
/* 814E2C28 | 81 43 00 08 */	lwz r10, 0x8(r3)
/* 814E2C2C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814E2C30 | 91 81 00 0C */	stw r12, 0xc(r1)
/* 814E2C34 | 55 46 AF 3E */	extrwi r6, r10, 4, 17
/* 814E2C38 | ED 00 30 28 */	fsubs f8, f0, f6
/* 814E2C3C | C0 62 8C E4 */	lfs f3, lbl_816950E4@sda21(r0)
/* 814E2C40 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814E2C44 | 55 40 D6 FE */	extrwi r0, r10, 5, 21
/* 814E2C48 | 91 81 00 14 */	stw r12, 0x14(r1)
/* 814E2C4C | 55 48 67 3E */	extrwi r8, r10, 4, 8
/* 814E2C50 | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 814E2C54 | EC 80 30 28 */	fsubs f4, f0, f6
/* 814E2C58 | C0 A2 8C F8 */	lfs f5, lbl_816950F8@sda21(r0)
/* 814E2C5C | EC 03 02 32 */	fmuls f0, f3, f8
/* 814E2C60 | ED 02 30 28 */	fsubs f8, f2, f6
/* 814E2C64 | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 814E2C68 | ED 25 01 32 */	fmuls f9, f5, f4
/* 814E2C6C | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 814E2C70 | C8 82 8C F0 */	lfd f4, lbl_816950F0@sda21(r0)
/* 814E2C74 | ED 45 02 32 */	fmuls f10, f5, f8
/* 814E2C78 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 814E2C7C | EE 82 30 28 */	fsubs f20, f2, f6
/* 814E2C80 | FD 64 48 2A */	fadd f11, f4, f9
/* 814E2C84 | C9 22 8C E8 */	lfd f9, lbl_816950E8@sda21(r0)
/* 814E2C88 | C9 01 00 10 */	lfd f8, 0x10(r1)
/* 814E2C8C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814E2C90 | FD 84 50 2A */	fadd f12, f4, f10
/* 814E2C94 | FD 29 02 F2 */	fmul f9, f9, f11
/* 814E2C98 | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 814E2C9C | 91 01 00 14 */	stw r8, 0x14(r1)
/* 814E2CA0 | EE 68 30 28 */	fsubs f19, f8, f6
/* 814E2CA4 | ED 62 30 28 */	fsubs f11, f2, f6
/* 814E2CA8 | C2 A2 8C E0 */	lfs f21, lbl_816950E0@sda21(r0)
/* 814E2CAC | 91 01 00 0C */	stw r8, 0xc(r1)
/* 814E2CB0 | FD 20 48 18 */	frsp f9, f9
/* 814E2CB4 | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 814E2CB8 | EE 43 02 F2 */	fmuls f18, f3, f11
/* 814E2CBC | C9 01 00 08 */	lfd f8, 0x8(r1)
/* 814E2CC0 | ED 42 30 28 */	fsubs f10, f2, f6
/* 814E2CC4 | C8 42 8D 00 */	lfd f2, lbl_81695100@sda21(r0)
/* 814E2CC8 | ED 08 30 28 */	fsubs f8, f8, f6
/* 814E2CCC | C2 22 8D 08 */	lfs f17, lbl_81695108@sda21(r0)
/* 814E2CD0 | C2 02 8D 0C */	lfs f16, lbl_8169510C@sda21(r0)
/* 814E2CD4 | ED A5 02 B2 */	fmuls f13, f5, f10
/* 814E2CD8 | FD 42 03 32 */	fmul f10, f2, f12
/* 814E2CDC | C9 82 8D 10 */	lfd f12, lbl_81695110@sda21(r0)
/* 814E2CE0 | ED 65 02 32 */	fmuls f11, f5, f8
/* 814E2CE4 | FD A4 68 2A */	fadd f13, f4, f13
/* 814E2CE8 | ED 15 00 2A */	fadds f8, f21, f0
/* 814E2CEC | FC 04 58 2A */	fadd f0, f4, f11
/* 814E2CF0 | FF EC 03 72 */	fmul f31, f12, f13
/* 814E2CF4 | FF C2 00 32 */	fmul f30, f2, f0
/* 814E2CF8 | FD 40 50 18 */	frsp f10, f10
/* 814E2CFC | ED 71 05 32 */	fmuls f11, f17, f20
/* 814E2D00 | ED 81 04 F2 */	fmuls f12, f1, f19
/* 814E2D04 | ED B0 90 2A */	fadds f13, f16, f18
/* 814E2D08 | FF E0 F8 18 */	frsp f31, f31
/* 814E2D0C | FF C0 F0 18 */	frsp f30, f30
/* 814E2D10 | 3D 00 81 62 */	lis r8, RFLi_EYEBROW_ROT_OFFSET@ha
/* 814E2D14 | 55 49 2E FE */	srwi r9, r10, 27
/* 814E2D18 | 39 08 D3 90 */	addi r8, r8, RFLi_EYEBROW_ROT_OFFSET@l
/* 814E2D1C | A0 E3 00 0E */	lhz r7, 0xe(r3)
/* 814E2D20 | 7D 08 48 AE */	lbzx r8, r8, r9
/* 814E2D24 | 55 4A 8E FE */	extrwi r10, r10, 5, 12
/* 814E2D28 | A0 03 00 10 */	lhz r0, 0x10(r3)
/* 814E2D2C | 54 E9 DF 3E */	extrwi r9, r7, 4, 23
/* 814E2D30 | A0 C3 00 14 */	lhz r6, 0x14(r3)
/* 814E2D34 | 54 E3 06 FE */	clrlwi r3, r7, 27
/* 814E2D38 | 7C EA 42 14 */	add r7, r10, r8
/* 814E2D3C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814E2D40 | 54 E3 06 FE */	clrlwi r3, r7, 27
/* 814E2D44 | 54 08 06 FE */	clrlwi r8, r0, 27
/* 814E2D48 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 814E2D4C | 54 07 DF 3E */	extrwi r7, r0, 4, 23
/* 814E2D50 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814E2D54 | 54 C3 D6 FE */	extrwi r3, r6, 5, 21
/* 814E2D58 | CA 01 00 10 */	lfd f16, 0x10(r1)
/* 814E2D5C | 54 C0 FE FE */	extrwi r0, r6, 5, 26
/* 814E2D60 | EC 20 30 28 */	fsubs f1, f0, f6
/* 814E2D64 | 91 21 00 0C */	stw r9, 0xc(r1)
/* 814E2D68 | EE B0 30 28 */	fsubs f21, f16, f6
/* 814E2D6C | CA 02 8D 20 */	lfd f16, lbl_81695120@sda21(r0)
/* 814E2D70 | 91 21 00 14 */	stw r9, 0x14(r1)
/* 814E2D74 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814E2D78 | CA 41 00 10 */	lfd f18, 0x10(r1)
/* 814E2D7C | EF B1 05 72 */	fmuls f29, f17, f21
/* 814E2D80 | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 814E2D84 | EE 60 30 28 */	fsubs f19, f0, f6
/* 814E2D88 | EE 92 30 28 */	fsubs f20, f18, f6
/* 814E2D8C | CA A2 8D 30 */	lfd f21, lbl_81695130@sda21(r0)
/* 814E2D90 | CA 21 00 08 */	lfd f17, 0x8(r1)
/* 814E2D94 | 91 01 00 14 */	stw r8, 0x14(r1)
/* 814E2D98 | EE E5 04 F2 */	fmuls f23, f5, f19
/* 814E2D9C | EE 51 30 28 */	fsubs f18, f17, f6
/* 814E2DA0 | CB 21 00 10 */	lfd f25, 0x10(r1)
/* 814E2DA4 | EF 05 05 32 */	fmuls f24, f5, f20
/* 814E2DA8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814E2DAC | EC 23 00 72 */	fmuls f1, f3, f1
/* 814E2DB0 | EE C5 04 B2 */	fmuls f22, f5, f18
/* 814E2DB4 | 90 E1 00 14 */	stw r7, 0x14(r1)
/* 814E2DB8 | FE 44 C0 2A */	fadd f18, f4, f24
/* 814E2DBC | FF 04 B8 2A */	fadd f24, f4, f23
/* 814E2DC0 | CA 81 00 08 */	lfd f20, 0x8(r1)
/* 814E2DC4 | CA 21 00 10 */	lfd f17, 0x10(r1)
/* 814E2DC8 | FE E4 B0 2A */	fadd f23, f4, f22
/* 814E2DCC | C0 02 8D 18 */	lfs f0, lbl_81695118@sda21(r0)
/* 814E2DD0 | EE 71 30 28 */	fsubs f19, f17, f6
/* 814E2DD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E2DD8 | FF 70 04 B2 */	fmul f27, f16, f18
/* 814E2DDC | C2 42 8D 38 */	lfs f18, lbl_81695138@sda21(r0)
/* 814E2DE0 | EE C5 04 F2 */	fmuls f22, f5, f19
/* 814E2DE4 | CA 21 00 10 */	lfd f17, 0x10(r1)
/* 814E2DE8 | FF 42 06 32 */	fmul f26, f2, f24
/* 814E2DEC | C2 62 8D 3C */	lfs f19, lbl_8169513C@sda21(r0)
/* 814E2DF0 | EF 99 30 28 */	fsubs f28, f25, f6
/* 814E2DF4 | C3 22 8D 28 */	lfs f25, lbl_81695128@sda21(r0)
/* 814E2DF8 | EE 94 30 28 */	fsubs f20, f20, f6
/* 814E2DFC | C2 02 8D 40 */	lfs f16, lbl_81695140@sda21(r0)
/* 814E2E00 | FF 02 05 F2 */	fmul f24, f2, f23
/* 814E2E04 | FE C4 B0 2A */	fadd f22, f4, f22
/* 814E2E08 | EE 31 30 28 */	fsubs f17, f17, f6
/* 814E2E0C | EE 73 05 32 */	fmuls f19, f19, f20
/* 814E2E10 | FE F5 05 B2 */	fmul f23, f21, f22
/* 814E2E14 | EE A3 07 32 */	fmuls f21, f3, f28
/* 814E2E18 | EC 43 04 72 */	fmuls f2, f3, f17
/* 814E2E1C | EF 80 08 2A */	fadds f28, f0, f1
/* 814E2E20 | EF 39 A8 2A */	fadds f25, f25, f21
/* 814E2E24 | FF 60 D8 18 */	frsp f27, f27
/* 814E2E28 | FF 40 D0 18 */	frsp f26, f26
/* 814E2E2C | FF 00 C0 18 */	frsp f24, f24
/* 814E2E30 | FE E0 B8 18 */	frsp f23, f23
/* 814E2E34 | EE D2 98 2A */	fadds f22, f18, f19
/* 814E2E38 | EE B0 10 2A */	fadds f21, f16, f2
/* 814E2E3C | 54 C7 AF 3E */	extrwi r7, r6, 4, 17
/* 814E2E40 | C0 02 8D 4C */	lfs f0, lbl_8169514C@sda21(r0)
/* 814E2E44 | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 814E2E48 | 38 C0 00 02 */	li r6, 0x2
/* 814E2E4C | 38 60 00 01 */	li r3, 0x1
/* 814E2E50 | EE 20 58 28 */	fsubs f17, f0, f11
/* 814E2E54 | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 814E2E58 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 814E2E5C | 90 E1 00 14 */	stw r7, 0x14(r1)
/* 814E2E60 | EE 60 E8 28 */	fsubs f19, f0, f29
/* 814E2E64 | EE 02 30 28 */	fsubs f16, f2, f6
/* 814E2E68 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814E2E6C | 38 00 00 00 */	li r0, 0x0
/* 814E2E70 | C8 61 00 10 */	lfd f3, 0x10(r1)
/* 814E2E74 | C8 42 8C C0 */	lfd f2, lbl_816950C0@sda21(r0)
/* 814E2E78 | EE 43 30 28 */	fsubs f18, f3, f6
/* 814E2E7C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814E2E80 | EC 65 04 32 */	fmuls f3, f5, f16
/* 814E2E84 | C0 22 8D 48 */	lfs f1, lbl_81695148@sda21(r0)
/* 814E2E88 | EE 00 10 28 */	fsubs f16, f0, f2
/* 814E2E8C | C0 C2 8D 44 */	lfs f6, lbl_81695144@sda21(r0)
/* 814E2E90 | EC 45 04 B2 */	fmuls f2, f5, f18
/* 814E2E94 | D1 64 00 10 */	stfs f11, 0x10(r4)
/* 814E2E98 | EC B0 01 B2 */	fmuls f5, f16, f6
/* 814E2E9C | C2 82 8C B8 */	lfs f20, lbl_816950B8@sda21(r0)
/* 814E2EA0 | EC 01 38 28 */	fsubs f0, f1, f7
/* 814E2EA4 | D2 24 00 50 */	stfs f17, 0x50(r4)
/* 814E2EA8 | EE 08 01 72 */	fmuls f16, f8, f5
/* 814E2EAC | 90 C4 00 14 */	stw r6, 0x14(r4)
/* 814E2EB0 | EE 29 01 72 */	fmuls f17, f9, f5
/* 814E2EB4 | EC C1 01 72 */	fmuls f6, f1, f5
/* 814E2EB8 | 90 64 00 54 */	stw r3, 0x54(r4)
/* 814E2EBC | ED 4A 01 72 */	fmuls f10, f10, f5
/* 814E2EC0 | ED 2D 01 72 */	fmuls f9, f13, f5
/* 814E2EC4 | D2 04 00 04 */	stfs f16, 0x4(r4)
/* 814E2EC8 | ED 61 60 28 */	fsubs f11, f1, f12
/* 814E2ECC | ED 1F 01 72 */	fmuls f8, f31, f5
/* 814E2ED0 | D2 04 00 44 */	stfs f16, 0x44(r4)
/* 814E2ED4 | EE 41 38 2A */	fadds f18, f1, f7
/* 814E2ED8 | EC FE 01 72 */	fmuls f7, f30, f5
/* 814E2EDC | D2 24 00 08 */	stfs f17, 0x8(r4)
/* 814E2EE0 | ED 81 60 2A */	fadds f12, f1, f12
/* 814E2EE4 | FC 24 18 2A */	fadd f1, f4, f3
/* 814E2EE8 | D1 44 00 0C */	stfs f10, 0xc(r4)
/* 814E2EEC | FC 44 10 2A */	fadd f2, f4, f2
/* 814E2EF0 | ED A5 02 F2 */	fmuls f13, f5, f11
/* 814E2EF4 | D2 24 00 48 */	stfs f17, 0x48(r4)
/* 814E2EF8 | EC 05 00 32 */	fmuls f0, f5, f0
/* 814E2EFC | EE 05 04 B2 */	fmuls f16, f5, f18
/* 814E2F00 | D1 44 00 4C */	stfs f10, 0x4c(r4)
/* 814E2F04 | ED 65 03 32 */	fmuls f11, f5, f12
/* 814E2F08 | EC 9C 01 72 */	fmuls f4, f28, f5
/* 814E2F0C | D0 04 00 00 */	stfs f0, 0x0(r4)
/* 814E2F10 | EC 7B 01 72 */	fmuls f3, f27, f5
/* 814E2F14 | EC 1A 01 72 */	fmuls f0, f26, f5
/* 814E2F18 | D2 04 00 40 */	stfs f16, 0x40(r4)
/* 814E2F1C | FC 20 08 18 */	frsp f1, f1
/* 814E2F20 | FC 40 10 18 */	frsp f2, f2
/* 814E2F24 | D1 A4 00 80 */	stfs f13, 0x80(r4)
/* 814E2F28 | D1 24 00 84 */	stfs f9, 0x84(r4)
/* 814E2F2C | D1 04 00 88 */	stfs f8, 0x88(r4)
/* 814E2F30 | D0 E4 00 8C */	stfs f7, 0x8c(r4)
/* 814E2F34 | D3 A4 00 90 */	stfs f29, 0x90(r4)
/* 814E2F38 | 90 C4 00 94 */	stw r6, 0x94(r4)
/* 814E2F3C | D1 64 00 C0 */	stfs f11, 0xc0(r4)
/* 814E2F40 | D1 24 00 C4 */	stfs f9, 0xc4(r4)
/* 814E2F44 | D1 04 00 C8 */	stfs f8, 0xc8(r4)
/* 814E2F48 | D0 E4 00 CC */	stfs f7, 0xcc(r4)
/* 814E2F4C | D2 64 00 D0 */	stfs f19, 0xd0(r4)
/* 814E2F50 | 90 64 00 D4 */	stw r3, 0xd4(r4)
/* 814E2F54 | D0 C4 01 00 */	stfs f6, 0x100(r4)
/* 814E2F58 | D0 84 01 04 */	stfs f4, 0x104(r4)
/* 814E2F5C | D0 64 01 08 */	stfs f3, 0x108(r4)
/* 814E2F60 | D0 04 01 0C */	stfs f0, 0x10c(r4)
/* 814E2F64 | D2 84 01 10 */	stfs f20, 0x110(r4)
/* 814E2F68 | 90 04 01 14 */	stw r0, 0x114(r4)
/* 814E2F6C | D0 C4 01 40 */	stfs f6, 0x140(r4)
/* 814E2F70 | ED 39 01 72 */	fmuls f9, f25, f5
/* 814E2F74 | D2 84 01 50 */	stfs f20, 0x150(r4)
/* 814E2F78 | ED 18 01 72 */	fmuls f8, f24, f5
/* 814E2F7C | EC F7 01 72 */	fmuls f7, f23, f5
/* 814E2F80 | 90 C4 01 54 */	stw r6, 0x154(r4)
/* 814E2F84 | EC 96 01 72 */	fmuls f4, f22, f5
/* 814E2F88 | EC 75 01 72 */	fmuls f3, f21, f5
/* 814E2F8C | D1 24 01 44 */	stfs f9, 0x144(r4)
/* 814E2F90 | EC 21 01 72 */	fmuls f1, f1, f5
/* 814E2F94 | EC 02 01 72 */	fmuls f0, f2, f5
/* 814E2F98 | D1 04 01 48 */	stfs f8, 0x148(r4)
/* 814E2F9C | D0 E4 01 4C */	stfs f7, 0x14c(r4)
/* 814E2FA0 | D0 C4 01 80 */	stfs f6, 0x180(r4)
/* 814E2FA4 | D1 24 01 84 */	stfs f9, 0x184(r4)
/* 814E2FA8 | D1 04 01 88 */	stfs f8, 0x188(r4)
/* 814E2FAC | D0 E4 01 8C */	stfs f7, 0x18c(r4)
/* 814E2FB0 | D2 84 01 90 */	stfs f20, 0x190(r4)
/* 814E2FB4 | 90 64 01 94 */	stw r3, 0x194(r4)
/* 814E2FB8 | D0 84 01 C0 */	stfs f4, 0x1c0(r4)
/* 814E2FBC | D0 64 01 C4 */	stfs f3, 0x1c4(r4)
/* 814E2FC0 | D0 24 01 C8 */	stfs f1, 0x1c8(r4)
/* 814E2FC4 | D0 04 01 CC */	stfs f0, 0x1cc(r4)
/* 814E2FC8 | D2 84 01 D0 */	stfs f20, 0x1d0(r4)
/* 814E2FCC | 90 04 01 D4 */	stw r0, 0x1d4(r4)
/* 814E2FD0 | E3 E1 01 18 */	psq_l f31, 0x118(r1), 0, qr0
/* 814E2FD4 | CB E1 01 10 */	lfd f31, 0x110(r1)
/* 814E2FD8 | E3 C1 01 08 */	psq_l f30, 0x108(r1), 0, qr0
/* 814E2FDC | CB C1 01 00 */	lfd f30, 0x100(r1)
/* 814E2FE0 | E3 A1 00 F8 */	psq_l f29, 0xf8(r1), 0, qr0
/* 814E2FE4 | CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 814E2FE8 | E3 81 00 E8 */	psq_l f28, 0xe8(r1), 0, qr0
/* 814E2FEC | CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 814E2FF0 | E3 61 00 D8 */	psq_l f27, 0xd8(r1), 0, qr0
/* 814E2FF4 | CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 814E2FF8 | E3 41 00 C8 */	psq_l f26, 0xc8(r1), 0, qr0
/* 814E2FFC | CB 41 00 C0 */	lfd f26, 0xc0(r1)
/* 814E3000 | E3 21 00 B8 */	psq_l f25, 0xb8(r1), 0, qr0
/* 814E3004 | CB 21 00 B0 */	lfd f25, 0xb0(r1)
/* 814E3008 | E3 01 00 A8 */	psq_l f24, 0xa8(r1), 0, qr0
/* 814E300C | CB 01 00 A0 */	lfd f24, 0xa0(r1)
/* 814E3010 | E2 E1 00 98 */	psq_l f23, 0x98(r1), 0, qr0
/* 814E3014 | CA E1 00 90 */	lfd f23, 0x90(r1)
/* 814E3018 | E2 C1 00 88 */	psq_l f22, 0x88(r1), 0, qr0
/* 814E301C | CA C1 00 80 */	lfd f22, 0x80(r1)
/* 814E3020 | E2 A1 00 78 */	psq_l f21, 0x78(r1), 0, qr0
/* 814E3024 | CA A1 00 70 */	lfd f21, 0x70(r1)
/* 814E3028 | E2 81 00 68 */	psq_l f20, 0x68(r1), 0, qr0
/* 814E302C | CA 81 00 60 */	lfd f20, 0x60(r1)
/* 814E3030 | E2 61 00 58 */	psq_l f19, 0x58(r1), 0, qr0
/* 814E3034 | CA 61 00 50 */	lfd f19, 0x50(r1)
/* 814E3038 | E2 41 00 48 */	psq_l f18, 0x48(r1), 0, qr0
/* 814E303C | CA 41 00 40 */	lfd f18, 0x40(r1)
/* 814E3040 | E2 21 00 38 */	psq_l f17, 0x38(r1), 0, qr0
/* 814E3044 | CA 21 00 30 */	lfd f17, 0x30(r1)
/* 814E3048 | E2 01 00 28 */	psq_l f16, 0x28(r1), 0, qr0
/* 814E304C | CA 01 00 20 */	lfd f16, 0x20(r1)
/* 814E3050 | 38 21 01 20 */	addi r1, r1, 0x120
/* 814E3054 | 4E 80 00 20 */	blr
.endfn RFLiSetFaceParts

# .text:0x1D90 | 0x814E3058 | size: 0x86C
.fn RFLiCapture, global
/* 814E3058 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814E305C | 7C 08 02 A6 */	mflr r0
/* 814E3060 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814E3064 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814E3068 | 48 11 64 51 */	bl _savegpr_25
/* 814E306C | 7C 7A 1B 78 */	mr r26, r3
/* 814E3070 | 7C 9B 23 78 */	mr r27, r4
/* 814E3074 | 7C BC 2B 78 */	mr r28, r5
/* 814E3078 | 7C DD 33 78 */	mr r29, r6
/* 814E307C | 48 06 33 15 */	bl GXInvalidateTexAll
/* 814E3080 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814E3084 | 48 06 4E D5 */	bl GXGetViewportv
/* 814E3088 | 4B FF F3 F9 */	bl RFLiSetup2DCameraAndParam
/* 814E308C | 38 60 00 00 */	li r3, 0x0
/* 814E3090 | 48 06 3C 69 */	bl GXSetTevDirect
/* 814E3094 | 38 60 00 01 */	li r3, 0x1
/* 814E3098 | 48 06 3C 61 */	bl GXSetTevDirect
/* 814E309C | 38 60 00 02 */	li r3, 0x2
/* 814E30A0 | 48 06 3C 59 */	bl GXSetTevDirect
/* 814E30A4 | 38 60 00 01 */	li r3, 0x1
/* 814E30A8 | 38 80 00 07 */	li r4, 0x7
/* 814E30AC | 38 A0 00 06 */	li r5, 0x6
/* 814E30B0 | 38 C0 00 0F */	li r6, 0xf
/* 814E30B4 | 48 06 46 B5 */	bl GXSetBlendMode
/* 814E30B8 | 38 60 00 01 */	li r3, 0x1
/* 814E30BC | 48 06 46 FD */	bl GXSetColorUpdate
/* 814E30C0 | A0 1B 00 10 */	lhz r0, 0x10(r27)
/* 814E30C4 | 38 60 00 01 */	li r3, 0x1
/* 814E30C8 | 54 1F BF 7E */	extrwi r31, r0, 3, 20
/* 814E30CC | 48 06 43 29 */	bl GXSetNumTevStages
/* 814E30D0 | 38 60 00 00 */	li r3, 0x0
/* 814E30D4 | 38 80 00 00 */	li r4, 0x0
/* 814E30D8 | 38 A0 00 00 */	li r5, 0x0
/* 814E30DC | 48 06 40 41 */	bl GXSetTevSwapMode
/* 814E30E0 | 38 60 00 00 */	li r3, 0x0
/* 814E30E4 | 38 80 00 00 */	li r4, 0x0
/* 814E30E8 | 38 A0 00 00 */	li r5, 0x0
/* 814E30EC | 38 C0 00 04 */	li r6, 0x4
/* 814E30F0 | 48 06 41 A9 */	bl GXSetTevOrder
/* 814E30F4 | 38 60 00 00 */	li r3, 0x0
/* 814E30F8 | 38 80 00 0F */	li r4, 0xf
/* 814E30FC | 38 A0 00 0F */	li r5, 0xf
/* 814E3100 | 38 C0 00 0F */	li r6, 0xf
/* 814E3104 | 38 E0 00 02 */	li r7, 0x2
/* 814E3108 | 48 06 3D 25 */	bl GXSetTevColorIn
/* 814E310C | 38 60 00 00 */	li r3, 0x0
/* 814E3110 | 38 80 00 07 */	li r4, 0x7
/* 814E3114 | 38 A0 00 07 */	li r5, 0x7
/* 814E3118 | 38 C0 00 07 */	li r6, 0x7
/* 814E311C | 38 E0 00 04 */	li r7, 0x4
/* 814E3120 | 48 06 3D 4D */	bl GXSetTevAlphaIn
/* 814E3124 | 38 60 00 00 */	li r3, 0x0
/* 814E3128 | 38 80 00 00 */	li r4, 0x0
/* 814E312C | 38 A0 00 00 */	li r5, 0x0
/* 814E3130 | 38 C0 00 00 */	li r6, 0x0
/* 814E3134 | 38 E0 00 01 */	li r7, 0x1
/* 814E3138 | 39 00 00 00 */	li r8, 0x0
/* 814E313C | 48 06 3D 71 */	bl GXSetTevColorOp
/* 814E3140 | 38 60 00 00 */	li r3, 0x0
/* 814E3144 | 38 80 00 00 */	li r4, 0x0
/* 814E3148 | 38 A0 00 00 */	li r5, 0x0
/* 814E314C | 38 C0 00 00 */	li r6, 0x0
/* 814E3150 | 38 E0 00 01 */	li r7, 0x1
/* 814E3154 | 39 00 00 00 */	li r8, 0x0
/* 814E3158 | 48 06 3D AD */	bl GXSetTevAlphaOp
/* 814E315C | 3F C0 81 62 */	lis r30, RFLi_BEARD_COLOR0@ha
/* 814E3160 | 57 E0 10 3A */	slwi r0, r31, 2
/* 814E3164 | 3B DE D3 F8 */	addi r30, r30, RFLi_BEARD_COLOR0@l
/* 814E3168 | 38 81 00 20 */	addi r4, r1, 0x20
/* 814E316C | 7D 1E 02 14 */	add r8, r30, r0
/* 814E3170 | 7C FE 00 AE */	lbzx r7, r30, r0
/* 814E3174 | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E3178 | 38 60 00 01 */	li r3, 0x1
/* 814E317C | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E3180 | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E3184 | 98 E1 00 20 */	stb r7, 0x20(r1)
/* 814E3188 | 98 C1 00 21 */	stb r6, 0x21(r1)
/* 814E318C | 98 A1 00 22 */	stb r5, 0x22(r1)
/* 814E3190 | 98 01 00 23 */	stb r0, 0x23(r1)
/* 814E3194 | 48 06 3D C9 */	bl GXSetTevColor
/* 814E3198 | 38 7C 01 60 */	addi r3, r28, 0x160
/* 814E319C | 38 80 00 00 */	li r4, 0x0
/* 814E31A0 | 48 06 30 0D */	bl GXLoadTexObj
/* 814E31A4 | C0 3C 01 40 */	lfs f1, 0x140(r28)
/* 814E31A8 | C0 5C 01 44 */	lfs f2, 0x144(r28)
/* 814E31AC | C0 7C 01 48 */	lfs f3, 0x148(r28)
/* 814E31B0 | C0 9C 01 4C */	lfs f4, 0x14c(r28)
/* 814E31B4 | C0 BC 01 50 */	lfs f5, 0x150(r28)
/* 814E31B8 | 80 7C 01 54 */	lwz r3, 0x154(r28)
/* 814E31BC | 48 00 07 09 */	bl RFLiDrawQuad
/* 814E31C0 | 38 7C 01 A0 */	addi r3, r28, 0x1a0
/* 814E31C4 | 38 80 00 00 */	li r4, 0x0
/* 814E31C8 | 48 06 2F E5 */	bl GXLoadTexObj
/* 814E31CC | C0 3C 01 80 */	lfs f1, 0x180(r28)
/* 814E31D0 | C0 5C 01 84 */	lfs f2, 0x184(r28)
/* 814E31D4 | C0 7C 01 88 */	lfs f3, 0x188(r28)
/* 814E31D8 | C0 9C 01 8C */	lfs f4, 0x18c(r28)
/* 814E31DC | C0 BC 01 90 */	lfs f5, 0x190(r28)
/* 814E31E0 | 80 7C 01 94 */	lwz r3, 0x194(r28)
/* 814E31E4 | 48 00 06 E1 */	bl RFLiDrawQuad
/* 814E31E8 | A0 1B 00 0E */	lhz r0, 0xe(r27)
/* 814E31EC | 54 03 BF BE */	extrwi r3, r0, 2, 21
/* 814E31F0 | 4B FF F4 69 */	bl RFLiSetTev4Mouth
/* 814E31F4 | 38 7C 01 20 */	addi r3, r28, 0x120
/* 814E31F8 | 38 80 00 00 */	li r4, 0x0
/* 814E31FC | 48 06 2F B1 */	bl GXLoadTexObj
/* 814E3200 | C0 3C 01 00 */	lfs f1, 0x100(r28)
/* 814E3204 | C0 5C 01 04 */	lfs f2, 0x104(r28)
/* 814E3208 | C0 7C 01 08 */	lfs f3, 0x108(r28)
/* 814E320C | C0 9C 01 0C */	lfs f4, 0x10c(r28)
/* 814E3210 | C0 BC 01 10 */	lfs f5, 0x110(r28)
/* 814E3214 | 80 7C 01 14 */	lwz r3, 0x114(r28)
/* 814E3218 | 48 00 06 AD */	bl RFLiDrawQuad
/* 814E321C | 80 1B 00 08 */	lwz r0, 0x8(r27)
/* 814E3220 | 38 60 00 01 */	li r3, 0x1
/* 814E3224 | 54 19 47 7E */	extrwi r25, r0, 3, 5
/* 814E3228 | 48 06 41 CD */	bl GXSetNumTevStages
/* 814E322C | 38 60 00 00 */	li r3, 0x0
/* 814E3230 | 38 80 00 00 */	li r4, 0x0
/* 814E3234 | 38 A0 00 00 */	li r5, 0x0
/* 814E3238 | 48 06 3E E5 */	bl GXSetTevSwapMode
/* 814E323C | 38 60 00 00 */	li r3, 0x0
/* 814E3240 | 38 80 00 00 */	li r4, 0x0
/* 814E3244 | 38 A0 00 00 */	li r5, 0x0
/* 814E3248 | 38 C0 00 04 */	li r6, 0x4
/* 814E324C | 48 06 40 4D */	bl GXSetTevOrder
/* 814E3250 | 38 60 00 00 */	li r3, 0x0
/* 814E3254 | 38 80 00 0F */	li r4, 0xf
/* 814E3258 | 38 A0 00 0F */	li r5, 0xf
/* 814E325C | 38 C0 00 0F */	li r6, 0xf
/* 814E3260 | 38 E0 00 02 */	li r7, 0x2
/* 814E3264 | 48 06 3B C9 */	bl GXSetTevColorIn
/* 814E3268 | 38 60 00 00 */	li r3, 0x0
/* 814E326C | 38 80 00 07 */	li r4, 0x7
/* 814E3270 | 38 A0 00 07 */	li r5, 0x7
/* 814E3274 | 38 C0 00 07 */	li r6, 0x7
/* 814E3278 | 38 E0 00 04 */	li r7, 0x4
/* 814E327C | 48 06 3B F1 */	bl GXSetTevAlphaIn
/* 814E3280 | 38 60 00 00 */	li r3, 0x0
/* 814E3284 | 38 80 00 00 */	li r4, 0x0
/* 814E3288 | 38 A0 00 00 */	li r5, 0x0
/* 814E328C | 38 C0 00 00 */	li r6, 0x0
/* 814E3290 | 38 E0 00 01 */	li r7, 0x1
/* 814E3294 | 39 00 00 00 */	li r8, 0x0
/* 814E3298 | 48 06 3C 15 */	bl GXSetTevColorOp
/* 814E329C | 38 60 00 00 */	li r3, 0x0
/* 814E32A0 | 38 80 00 00 */	li r4, 0x0
/* 814E32A4 | 38 A0 00 00 */	li r5, 0x0
/* 814E32A8 | 38 C0 00 00 */	li r6, 0x0
/* 814E32AC | 38 E0 00 01 */	li r7, 0x1
/* 814E32B0 | 39 00 00 00 */	li r8, 0x0
/* 814E32B4 | 48 06 3C 51 */	bl GXSetTevAlphaOp
/* 814E32B8 | 3F E0 81 62 */	lis r31, RFLi_EYEBROW_COLOR0@ha
/* 814E32BC | 57 20 10 3A */	slwi r0, r25, 2
/* 814E32C0 | 3B FF D3 C0 */	addi r31, r31, RFLi_EYEBROW_COLOR0@l
/* 814E32C4 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 814E32C8 | 7D 1F 02 14 */	add r8, r31, r0
/* 814E32CC | 7C FF 00 AE */	lbzx r7, r31, r0
/* 814E32D0 | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E32D4 | 38 60 00 01 */	li r3, 0x1
/* 814E32D8 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E32DC | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E32E0 | 98 E1 00 1C */	stb r7, 0x1c(r1)
/* 814E32E4 | 98 C1 00 1D */	stb r6, 0x1d(r1)
/* 814E32E8 | 98 A1 00 1E */	stb r5, 0x1e(r1)
/* 814E32EC | 98 01 00 1F */	stb r0, 0x1f(r1)
/* 814E32F0 | 48 06 3C 6D */	bl GXSetTevColor
/* 814E32F4 | 38 7C 00 A0 */	addi r3, r28, 0xa0
/* 814E32F8 | 38 80 00 00 */	li r4, 0x0
/* 814E32FC | 48 06 2E B1 */	bl GXLoadTexObj
/* 814E3300 | C0 3C 00 80 */	lfs f1, 0x80(r28)
/* 814E3304 | C0 5C 00 84 */	lfs f2, 0x84(r28)
/* 814E3308 | C0 7C 00 88 */	lfs f3, 0x88(r28)
/* 814E330C | C0 9C 00 8C */	lfs f4, 0x8c(r28)
/* 814E3310 | C0 BC 00 90 */	lfs f5, 0x90(r28)
/* 814E3314 | 80 7C 00 94 */	lwz r3, 0x94(r28)
/* 814E3318 | 48 00 05 AD */	bl RFLiDrawQuad
/* 814E331C | 38 7C 00 E0 */	addi r3, r28, 0xe0
/* 814E3320 | 38 80 00 00 */	li r4, 0x0
/* 814E3324 | 48 06 2E 89 */	bl GXLoadTexObj
/* 814E3328 | C0 3C 00 C0 */	lfs f1, 0xc0(r28)
/* 814E332C | C0 5C 00 C4 */	lfs f2, 0xc4(r28)
/* 814E3330 | C0 7C 00 C8 */	lfs f3, 0xc8(r28)
/* 814E3334 | C0 9C 00 CC */	lfs f4, 0xcc(r28)
/* 814E3338 | C0 BC 00 D0 */	lfs f5, 0xd0(r28)
/* 814E333C | 80 7C 00 D4 */	lwz r3, 0xd4(r28)
/* 814E3340 | 48 00 05 85 */	bl RFLiDrawQuad
/* 814E3344 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814E3348 | 54 03 4F 7E */	extrwi r3, r0, 3, 6
/* 814E334C | 54 04 36 BE */	srwi r4, r0, 26
/* 814E3350 | 4B FF F5 51 */	bl RFLiSetTev4Eye
/* 814E3354 | 38 7C 00 20 */	addi r3, r28, 0x20
/* 814E3358 | 38 80 00 00 */	li r4, 0x0
/* 814E335C | 48 06 2E 51 */	bl GXLoadTexObj
/* 814E3360 | C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 814E3364 | C0 5C 00 04 */	lfs f2, 0x4(r28)
/* 814E3368 | C0 7C 00 08 */	lfs f3, 0x8(r28)
/* 814E336C | C0 9C 00 0C */	lfs f4, 0xc(r28)
/* 814E3370 | C0 BC 00 10 */	lfs f5, 0x10(r28)
/* 814E3374 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 814E3378 | 48 00 05 4D */	bl RFLiDrawQuad
/* 814E337C | 38 7C 00 60 */	addi r3, r28, 0x60
/* 814E3380 | 38 80 00 00 */	li r4, 0x0
/* 814E3384 | 48 06 2E 29 */	bl GXLoadTexObj
/* 814E3388 | C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 814E338C | C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 814E3390 | C0 7C 00 48 */	lfs f3, 0x48(r28)
/* 814E3394 | C0 9C 00 4C */	lfs f4, 0x4c(r28)
/* 814E3398 | C0 BC 00 50 */	lfs f5, 0x50(r28)
/* 814E339C | 80 7C 00 54 */	lwz r3, 0x54(r28)
/* 814E33A0 | 48 00 05 25 */	bl RFLiDrawQuad
/* 814E33A4 | 38 60 00 01 */	li r3, 0x1
/* 814E33A8 | 48 06 40 4D */	bl GXSetNumTevStages
/* 814E33AC | 38 60 00 00 */	li r3, 0x0
/* 814E33B0 | 38 80 00 00 */	li r4, 0x0
/* 814E33B4 | 38 A0 00 00 */	li r5, 0x0
/* 814E33B8 | 48 06 3D 65 */	bl GXSetTevSwapMode
/* 814E33BC | 38 60 00 00 */	li r3, 0x0
/* 814E33C0 | 38 80 00 00 */	li r4, 0x0
/* 814E33C4 | 38 A0 00 00 */	li r5, 0x0
/* 814E33C8 | 38 C0 00 04 */	li r6, 0x4
/* 814E33CC | 48 06 3E CD */	bl GXSetTevOrder
/* 814E33D0 | 38 60 00 00 */	li r3, 0x0
/* 814E33D4 | 38 80 00 0F */	li r4, 0xf
/* 814E33D8 | 38 A0 00 0F */	li r5, 0xf
/* 814E33DC | 38 C0 00 0F */	li r6, 0xf
/* 814E33E0 | 38 E0 00 02 */	li r7, 0x2
/* 814E33E4 | 48 06 3A 49 */	bl GXSetTevColorIn
/* 814E33E8 | 38 60 00 00 */	li r3, 0x0
/* 814E33EC | 38 80 00 07 */	li r4, 0x7
/* 814E33F0 | 38 A0 00 07 */	li r5, 0x7
/* 814E33F4 | 38 C0 00 07 */	li r6, 0x7
/* 814E33F8 | 38 E0 00 04 */	li r7, 0x4
/* 814E33FC | 48 06 3A 71 */	bl GXSetTevAlphaIn
/* 814E3400 | 38 60 00 00 */	li r3, 0x0
/* 814E3404 | 38 80 00 00 */	li r4, 0x0
/* 814E3408 | 38 A0 00 00 */	li r5, 0x0
/* 814E340C | 38 C0 00 00 */	li r6, 0x0
/* 814E3410 | 38 E0 00 01 */	li r7, 0x1
/* 814E3414 | 39 00 00 00 */	li r8, 0x0
/* 814E3418 | 48 06 3A 95 */	bl GXSetTevColorOp
/* 814E341C | 38 60 00 00 */	li r3, 0x0
/* 814E3420 | 38 80 00 00 */	li r4, 0x0
/* 814E3424 | 38 A0 00 00 */	li r5, 0x0
/* 814E3428 | 38 C0 00 00 */	li r6, 0x0
/* 814E342C | 38 E0 00 01 */	li r7, 0x1
/* 814E3430 | 39 00 00 00 */	li r8, 0x0
/* 814E3434 | 48 06 3A D1 */	bl GXSetTevAlphaOp
/* 814E3438 | 88 E2 8C B0 */	lbz r7, RFLi_MOLE_COLOR0@sda21(r0)
/* 814E343C | 38 81 00 18 */	addi r4, r1, 0x18
/* 814E3440 | 88 C2 8C B1 */	lbz r6, RFLi_MOLE_COLOR0+0x1@sda21(r0)
/* 814E3444 | 38 60 00 01 */	li r3, 0x1
/* 814E3448 | 88 A2 8C B2 */	lbz r5, RFLi_MOLE_COLOR0+0x2@sda21(r0)
/* 814E344C | 88 02 8C B3 */	lbz r0, RFLi_MOLE_COLOR0+0x3@sda21(r0)
/* 814E3450 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 814E3454 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 814E3458 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 814E345C | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814E3460 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814E3464 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 814E3468 | 48 06 3A F5 */	bl GXSetTevColor
/* 814E346C | 38 7C 01 E0 */	addi r3, r28, 0x1e0
/* 814E3470 | 38 80 00 00 */	li r4, 0x0
/* 814E3474 | 48 06 2D 39 */	bl GXLoadTexObj
/* 814E3478 | C0 3C 01 C0 */	lfs f1, 0x1c0(r28)
/* 814E347C | C0 5C 01 C4 */	lfs f2, 0x1c4(r28)
/* 814E3480 | C0 7C 01 C8 */	lfs f3, 0x1c8(r28)
/* 814E3484 | C0 9C 01 CC */	lfs f4, 0x1cc(r28)
/* 814E3488 | C0 BC 01 D0 */	lfs f5, 0x1d0(r28)
/* 814E348C | 80 7C 01 D4 */	lwz r3, 0x1d4(r28)
/* 814E3490 | 48 00 04 35 */	bl RFLiDrawQuad
/* 814E3494 | 38 60 00 00 */	li r3, 0x0
/* 814E3498 | 48 06 43 21 */	bl GXSetColorUpdate
/* 814E349C | 7F 43 D3 78 */	mr r3, r26
/* 814E34A0 | 38 80 00 01 */	li r4, 0x1
/* 814E34A4 | 48 06 21 49 */	bl GXCopyTex
/* 814E34A8 | 48 06 0F CD */	bl GXPixModeSync
/* 814E34AC | 38 60 00 01 */	li r3, 0x1
/* 814E34B0 | 38 80 00 07 */	li r4, 0x7
/* 814E34B4 | 38 A0 00 01 */	li r5, 0x1
/* 814E34B8 | 38 C0 00 0F */	li r6, 0xf
/* 814E34BC | 48 06 42 AD */	bl GXSetBlendMode
/* 814E34C0 | A0 1B 00 10 */	lhz r0, 0x10(r27)
/* 814E34C4 | 38 60 00 01 */	li r3, 0x1
/* 814E34C8 | 54 19 BF 7E */	extrwi r25, r0, 3, 20
/* 814E34CC | 48 06 3F 29 */	bl GXSetNumTevStages
/* 814E34D0 | 38 60 00 00 */	li r3, 0x0
/* 814E34D4 | 38 80 00 00 */	li r4, 0x0
/* 814E34D8 | 38 A0 00 00 */	li r5, 0x0
/* 814E34DC | 48 06 3C 41 */	bl GXSetTevSwapMode
/* 814E34E0 | 38 60 00 00 */	li r3, 0x0
/* 814E34E4 | 38 80 00 00 */	li r4, 0x0
/* 814E34E8 | 38 A0 00 00 */	li r5, 0x0
/* 814E34EC | 38 C0 00 04 */	li r6, 0x4
/* 814E34F0 | 48 06 3D A9 */	bl GXSetTevOrder
/* 814E34F4 | 38 60 00 00 */	li r3, 0x0
/* 814E34F8 | 38 80 00 0F */	li r4, 0xf
/* 814E34FC | 38 A0 00 0F */	li r5, 0xf
/* 814E3500 | 38 C0 00 0F */	li r6, 0xf
/* 814E3504 | 38 E0 00 02 */	li r7, 0x2
/* 814E3508 | 48 06 39 25 */	bl GXSetTevColorIn
/* 814E350C | 38 60 00 00 */	li r3, 0x0
/* 814E3510 | 38 80 00 07 */	li r4, 0x7
/* 814E3514 | 38 A0 00 07 */	li r5, 0x7
/* 814E3518 | 38 C0 00 07 */	li r6, 0x7
/* 814E351C | 38 E0 00 04 */	li r7, 0x4
/* 814E3520 | 48 06 39 4D */	bl GXSetTevAlphaIn
/* 814E3524 | 38 60 00 00 */	li r3, 0x0
/* 814E3528 | 38 80 00 00 */	li r4, 0x0
/* 814E352C | 38 A0 00 00 */	li r5, 0x0
/* 814E3530 | 38 C0 00 00 */	li r6, 0x0
/* 814E3534 | 38 E0 00 01 */	li r7, 0x1
/* 814E3538 | 39 00 00 00 */	li r8, 0x0
/* 814E353C | 48 06 39 71 */	bl GXSetTevColorOp
/* 814E3540 | 38 60 00 00 */	li r3, 0x0
/* 814E3544 | 38 80 00 00 */	li r4, 0x0
/* 814E3548 | 38 A0 00 00 */	li r5, 0x0
/* 814E354C | 38 C0 00 00 */	li r6, 0x0
/* 814E3550 | 38 E0 00 01 */	li r7, 0x1
/* 814E3554 | 39 00 00 00 */	li r8, 0x0
/* 814E3558 | 48 06 39 AD */	bl GXSetTevAlphaOp
/* 814E355C | 57 20 10 3A */	slwi r0, r25, 2
/* 814E3560 | 38 81 00 14 */	addi r4, r1, 0x14
/* 814E3564 | 7D 1E 02 14 */	add r8, r30, r0
/* 814E3568 | 7C FE 00 AE */	lbzx r7, r30, r0
/* 814E356C | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E3570 | 38 60 00 01 */	li r3, 0x1
/* 814E3574 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E3578 | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E357C | 98 E1 00 14 */	stb r7, 0x14(r1)
/* 814E3580 | 98 C1 00 15 */	stb r6, 0x15(r1)
/* 814E3584 | 98 A1 00 16 */	stb r5, 0x16(r1)
/* 814E3588 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 814E358C | 48 06 39 D1 */	bl GXSetTevColor
/* 814E3590 | 38 7C 01 60 */	addi r3, r28, 0x160
/* 814E3594 | 38 80 00 00 */	li r4, 0x0
/* 814E3598 | 48 06 2C 15 */	bl GXLoadTexObj
/* 814E359C | C0 3C 01 40 */	lfs f1, 0x140(r28)
/* 814E35A0 | C0 5C 01 44 */	lfs f2, 0x144(r28)
/* 814E35A4 | C0 7C 01 48 */	lfs f3, 0x148(r28)
/* 814E35A8 | C0 9C 01 4C */	lfs f4, 0x14c(r28)
/* 814E35AC | C0 BC 01 50 */	lfs f5, 0x150(r28)
/* 814E35B0 | 80 7C 01 54 */	lwz r3, 0x154(r28)
/* 814E35B4 | 48 00 03 11 */	bl RFLiDrawQuad
/* 814E35B8 | 38 7C 01 A0 */	addi r3, r28, 0x1a0
/* 814E35BC | 38 80 00 00 */	li r4, 0x0
/* 814E35C0 | 48 06 2B ED */	bl GXLoadTexObj
/* 814E35C4 | C0 3C 01 80 */	lfs f1, 0x180(r28)
/* 814E35C8 | C0 5C 01 84 */	lfs f2, 0x184(r28)
/* 814E35CC | C0 7C 01 88 */	lfs f3, 0x188(r28)
/* 814E35D0 | C0 9C 01 8C */	lfs f4, 0x18c(r28)
/* 814E35D4 | C0 BC 01 90 */	lfs f5, 0x190(r28)
/* 814E35D8 | 80 7C 01 94 */	lwz r3, 0x194(r28)
/* 814E35DC | 48 00 02 E9 */	bl RFLiDrawQuad
/* 814E35E0 | A0 1B 00 0E */	lhz r0, 0xe(r27)
/* 814E35E4 | 54 03 BF BE */	extrwi r3, r0, 2, 21
/* 814E35E8 | 4B FF F0 71 */	bl RFLiSetTev4Mouth
/* 814E35EC | 38 7C 01 20 */	addi r3, r28, 0x120
/* 814E35F0 | 38 80 00 00 */	li r4, 0x0
/* 814E35F4 | 48 06 2B B9 */	bl GXLoadTexObj
/* 814E35F8 | C0 3C 01 00 */	lfs f1, 0x100(r28)
/* 814E35FC | C0 5C 01 04 */	lfs f2, 0x104(r28)
/* 814E3600 | C0 7C 01 08 */	lfs f3, 0x108(r28)
/* 814E3604 | C0 9C 01 0C */	lfs f4, 0x10c(r28)
/* 814E3608 | C0 BC 01 10 */	lfs f5, 0x110(r28)
/* 814E360C | 80 7C 01 14 */	lwz r3, 0x114(r28)
/* 814E3610 | 48 00 02 B5 */	bl RFLiDrawQuad
/* 814E3614 | 80 1B 00 08 */	lwz r0, 0x8(r27)
/* 814E3618 | 38 60 00 01 */	li r3, 0x1
/* 814E361C | 54 19 47 7E */	extrwi r25, r0, 3, 5
/* 814E3620 | 48 06 3D D5 */	bl GXSetNumTevStages
/* 814E3624 | 38 60 00 00 */	li r3, 0x0
/* 814E3628 | 38 80 00 00 */	li r4, 0x0
/* 814E362C | 38 A0 00 00 */	li r5, 0x0
/* 814E3630 | 48 06 3A ED */	bl GXSetTevSwapMode
/* 814E3634 | 38 60 00 00 */	li r3, 0x0
/* 814E3638 | 38 80 00 00 */	li r4, 0x0
/* 814E363C | 38 A0 00 00 */	li r5, 0x0
/* 814E3640 | 38 C0 00 04 */	li r6, 0x4
/* 814E3644 | 48 06 3C 55 */	bl GXSetTevOrder
/* 814E3648 | 38 60 00 00 */	li r3, 0x0
/* 814E364C | 38 80 00 0F */	li r4, 0xf
/* 814E3650 | 38 A0 00 0F */	li r5, 0xf
/* 814E3654 | 38 C0 00 0F */	li r6, 0xf
/* 814E3658 | 38 E0 00 02 */	li r7, 0x2
/* 814E365C | 48 06 37 D1 */	bl GXSetTevColorIn
/* 814E3660 | 38 60 00 00 */	li r3, 0x0
/* 814E3664 | 38 80 00 07 */	li r4, 0x7
/* 814E3668 | 38 A0 00 07 */	li r5, 0x7
/* 814E366C | 38 C0 00 07 */	li r6, 0x7
/* 814E3670 | 38 E0 00 04 */	li r7, 0x4
/* 814E3674 | 48 06 37 F9 */	bl GXSetTevAlphaIn
/* 814E3678 | 38 60 00 00 */	li r3, 0x0
/* 814E367C | 38 80 00 00 */	li r4, 0x0
/* 814E3680 | 38 A0 00 00 */	li r5, 0x0
/* 814E3684 | 38 C0 00 00 */	li r6, 0x0
/* 814E3688 | 38 E0 00 01 */	li r7, 0x1
/* 814E368C | 39 00 00 00 */	li r8, 0x0
/* 814E3690 | 48 06 38 1D */	bl GXSetTevColorOp
/* 814E3694 | 38 60 00 00 */	li r3, 0x0
/* 814E3698 | 38 80 00 00 */	li r4, 0x0
/* 814E369C | 38 A0 00 00 */	li r5, 0x0
/* 814E36A0 | 38 C0 00 00 */	li r6, 0x0
/* 814E36A4 | 38 E0 00 01 */	li r7, 0x1
/* 814E36A8 | 39 00 00 00 */	li r8, 0x0
/* 814E36AC | 48 06 38 59 */	bl GXSetTevAlphaOp
/* 814E36B0 | 57 20 10 3A */	slwi r0, r25, 2
/* 814E36B4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814E36B8 | 7D 1F 02 14 */	add r8, r31, r0
/* 814E36BC | 7C FF 00 AE */	lbzx r7, r31, r0
/* 814E36C0 | 88 C8 00 01 */	lbz r6, 0x1(r8)
/* 814E36C4 | 38 60 00 01 */	li r3, 0x1
/* 814E36C8 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814E36CC | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814E36D0 | 98 E1 00 10 */	stb r7, 0x10(r1)
/* 814E36D4 | 98 C1 00 11 */	stb r6, 0x11(r1)
/* 814E36D8 | 98 A1 00 12 */	stb r5, 0x12(r1)
/* 814E36DC | 98 01 00 13 */	stb r0, 0x13(r1)
/* 814E36E0 | 48 06 38 7D */	bl GXSetTevColor
/* 814E36E4 | 38 7C 00 A0 */	addi r3, r28, 0xa0
/* 814E36E8 | 38 80 00 00 */	li r4, 0x0
/* 814E36EC | 48 06 2A C1 */	bl GXLoadTexObj
/* 814E36F0 | C0 3C 00 80 */	lfs f1, 0x80(r28)
/* 814E36F4 | C0 5C 00 84 */	lfs f2, 0x84(r28)
/* 814E36F8 | C0 7C 00 88 */	lfs f3, 0x88(r28)
/* 814E36FC | C0 9C 00 8C */	lfs f4, 0x8c(r28)
/* 814E3700 | C0 BC 00 90 */	lfs f5, 0x90(r28)
/* 814E3704 | 80 7C 00 94 */	lwz r3, 0x94(r28)
/* 814E3708 | 48 00 01 BD */	bl RFLiDrawQuad
/* 814E370C | 38 7C 00 E0 */	addi r3, r28, 0xe0
/* 814E3710 | 38 80 00 00 */	li r4, 0x0
/* 814E3714 | 48 06 2A 99 */	bl GXLoadTexObj
/* 814E3718 | C0 3C 00 C0 */	lfs f1, 0xc0(r28)
/* 814E371C | C0 5C 00 C4 */	lfs f2, 0xc4(r28)
/* 814E3720 | C0 7C 00 C8 */	lfs f3, 0xc8(r28)
/* 814E3724 | C0 9C 00 CC */	lfs f4, 0xcc(r28)
/* 814E3728 | C0 BC 00 D0 */	lfs f5, 0xd0(r28)
/* 814E372C | 80 7C 00 D4 */	lwz r3, 0xd4(r28)
/* 814E3730 | 48 00 01 95 */	bl RFLiDrawQuad
/* 814E3734 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814E3738 | 54 03 4F 7E */	extrwi r3, r0, 3, 6
/* 814E373C | 54 04 36 BE */	srwi r4, r0, 26
/* 814E3740 | 4B FF F1 61 */	bl RFLiSetTev4Eye
/* 814E3744 | 38 7C 00 20 */	addi r3, r28, 0x20
/* 814E3748 | 38 80 00 00 */	li r4, 0x0
/* 814E374C | 48 06 2A 61 */	bl GXLoadTexObj
/* 814E3750 | C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 814E3754 | C0 5C 00 04 */	lfs f2, 0x4(r28)
/* 814E3758 | C0 7C 00 08 */	lfs f3, 0x8(r28)
/* 814E375C | C0 9C 00 0C */	lfs f4, 0xc(r28)
/* 814E3760 | C0 BC 00 10 */	lfs f5, 0x10(r28)
/* 814E3764 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 814E3768 | 48 00 01 5D */	bl RFLiDrawQuad
/* 814E376C | 38 7C 00 60 */	addi r3, r28, 0x60
/* 814E3770 | 38 80 00 00 */	li r4, 0x0
/* 814E3774 | 48 06 2A 39 */	bl GXLoadTexObj
/* 814E3778 | C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 814E377C | C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 814E3780 | C0 7C 00 48 */	lfs f3, 0x48(r28)
/* 814E3784 | C0 9C 00 4C */	lfs f4, 0x4c(r28)
/* 814E3788 | C0 BC 00 50 */	lfs f5, 0x50(r28)
/* 814E378C | 80 7C 00 54 */	lwz r3, 0x54(r28)
/* 814E3790 | 48 00 01 35 */	bl RFLiDrawQuad
/* 814E3794 | 38 60 00 01 */	li r3, 0x1
/* 814E3798 | 48 06 3C 5D */	bl GXSetNumTevStages
/* 814E379C | 38 60 00 00 */	li r3, 0x0
/* 814E37A0 | 38 80 00 00 */	li r4, 0x0
/* 814E37A4 | 38 A0 00 00 */	li r5, 0x0
/* 814E37A8 | 48 06 39 75 */	bl GXSetTevSwapMode
/* 814E37AC | 38 60 00 00 */	li r3, 0x0
/* 814E37B0 | 38 80 00 00 */	li r4, 0x0
/* 814E37B4 | 38 A0 00 00 */	li r5, 0x0
/* 814E37B8 | 38 C0 00 04 */	li r6, 0x4
/* 814E37BC | 48 06 3A DD */	bl GXSetTevOrder
/* 814E37C0 | 38 60 00 00 */	li r3, 0x0
/* 814E37C4 | 38 80 00 0F */	li r4, 0xf
/* 814E37C8 | 38 A0 00 0F */	li r5, 0xf
/* 814E37CC | 38 C0 00 0F */	li r6, 0xf
/* 814E37D0 | 38 E0 00 02 */	li r7, 0x2
/* 814E37D4 | 48 06 36 59 */	bl GXSetTevColorIn
/* 814E37D8 | 38 60 00 00 */	li r3, 0x0
/* 814E37DC | 38 80 00 07 */	li r4, 0x7
/* 814E37E0 | 38 A0 00 07 */	li r5, 0x7
/* 814E37E4 | 38 C0 00 07 */	li r6, 0x7
/* 814E37E8 | 38 E0 00 04 */	li r7, 0x4
/* 814E37EC | 48 06 36 81 */	bl GXSetTevAlphaIn
/* 814E37F0 | 38 60 00 00 */	li r3, 0x0
/* 814E37F4 | 38 80 00 00 */	li r4, 0x0
/* 814E37F8 | 38 A0 00 00 */	li r5, 0x0
/* 814E37FC | 38 C0 00 00 */	li r6, 0x0
/* 814E3800 | 38 E0 00 01 */	li r7, 0x1
/* 814E3804 | 39 00 00 00 */	li r8, 0x0
/* 814E3808 | 48 06 36 A5 */	bl GXSetTevColorOp
/* 814E380C | 38 60 00 00 */	li r3, 0x0
/* 814E3810 | 38 80 00 00 */	li r4, 0x0
/* 814E3814 | 38 A0 00 00 */	li r5, 0x0
/* 814E3818 | 38 C0 00 00 */	li r6, 0x0
/* 814E381C | 38 E0 00 01 */	li r7, 0x1
/* 814E3820 | 39 00 00 00 */	li r8, 0x0
/* 814E3824 | 48 06 36 E1 */	bl GXSetTevAlphaOp
/* 814E3828 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814E382C | 38 81 00 0C */	addi r4, r1, 0xc
/* 814E3830 | 38 60 00 01 */	li r3, 0x1
/* 814E3834 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814E3838 | 48 06 37 25 */	bl GXSetTevColor
/* 814E383C | 38 7C 01 E0 */	addi r3, r28, 0x1e0
/* 814E3840 | 38 80 00 00 */	li r4, 0x0
/* 814E3844 | 48 06 29 69 */	bl GXLoadTexObj
/* 814E3848 | C0 3C 01 C0 */	lfs f1, 0x1c0(r28)
/* 814E384C | C0 5C 01 C4 */	lfs f2, 0x1c4(r28)
/* 814E3850 | C0 7C 01 C8 */	lfs f3, 0x1c8(r28)
/* 814E3854 | C0 9C 01 CC */	lfs f4, 0x1cc(r28)
/* 814E3858 | C0 BC 01 D0 */	lfs f5, 0x1d0(r28)
/* 814E385C | 80 7C 01 D4 */	lwz r3, 0x1d4(r28)
/* 814E3860 | 48 00 00 65 */	bl RFLiDrawQuad
/* 814E3864 | 38 60 00 01 */	li r3, 0x1
/* 814E3868 | 48 06 3F 51 */	bl GXSetColorUpdate
/* 814E386C | 48 06 0B 49 */	bl GXDrawDone
/* 814E3870 | 7C 1D E9 D6 */	mullw r0, r29, r29
/* 814E3874 | 7F 43 D3 78 */	mr r3, r26
/* 814E3878 | 54 04 08 3C */	slwi r4, r0, 1
/* 814E387C | 48 04 A0 8D */	bl DCInvalidateRange
/* 814E3880 | 7F 43 D3 78 */	mr r3, r26
/* 814E3884 | 38 80 00 01 */	li r4, 0x1
/* 814E3888 | 48 06 1D 65 */	bl GXCopyTex
/* 814E388C | 48 06 0B E9 */	bl GXPixModeSync
/* 814E3890 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 814E3894 | C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 814E3898 | C0 61 00 30 */	lfs f3, 0x30(r1)
/* 814E389C | C0 81 00 34 */	lfs f4, 0x34(r1)
/* 814E38A0 | C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 814E38A4 | C0 C1 00 3C */	lfs f6, 0x3c(r1)
/* 814E38A8 | 48 06 46 85 */	bl GXSetViewport
/* 814E38AC | 39 61 00 60 */	addi r11, r1, 0x60
/* 814E38B0 | 48 11 5C 55 */	bl _restgpr_25
/* 814E38B4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814E38B8 | 7C 08 03 A6 */	mtlr r0
/* 814E38BC | 38 21 00 60 */	addi r1, r1, 0x60
/* 814E38C0 | 4E 80 00 20 */	blr
.endfn RFLiCapture

# .text:0x25FC | 0x814E38C4 | size: 0x1F8
.fn RFLiDrawQuad, global
/* 814E38C4 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814E38C8 | 7C 08 02 A6 */	mflr r0
/* 814E38CC | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814E38D0 | DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 814E38D4 | F3 E1 00 B8 */	psq_st f31, 0xb8(r1), 0, qr0
/* 814E38D8 | DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 814E38DC | F3 C1 00 A8 */	psq_st f30, 0xa8(r1), 0, qr0
/* 814E38E0 | DB A1 00 90 */	stfd f29, 0x90(r1)
/* 814E38E4 | F3 A1 00 98 */	psq_st f29, 0x98(r1), 0, qr0
/* 814E38E8 | DB 81 00 80 */	stfd f28, 0x80(r1)
/* 814E38EC | F3 81 00 88 */	psq_st f28, 0x88(r1), 0, qr0
/* 814E38F0 | DB 61 00 70 */	stfd f27, 0x70(r1)
/* 814E38F4 | F3 61 00 78 */	psq_st f27, 0x78(r1), 0, qr0
/* 814E38F8 | FF 60 08 90 */	fmr f27, f1
/* 814E38FC | FF 80 10 90 */	fmr f28, f2
/* 814E3900 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 814E3904 | FF A0 18 90 */	fmr f29, f3
/* 814E3908 | FF C0 20 90 */	fmr f30, f4
/* 814E390C | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 814E3910 | FF E0 28 90 */	fmr f31, f5
/* 814E3914 | 7C 7E 1B 78 */	mr r30, r3
/* 814E3918 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E391C | 48 05 D5 15 */	bl fn_81540E30
/* 814E3920 | FC 20 E8 90 */	fmr f1, f29
/* 814E3924 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E3928 | FC 40 F0 90 */	fmr f2, f30
/* 814E392C | C0 62 8C B4 */	lfs f3, lbl_816950B4@sda21(r0)
/* 814E3930 | 7C 64 1B 78 */	mr r4, r3
/* 814E3934 | 48 05 D9 BD */	bl fn_815412F0
/* 814E3938 | C0 02 8D 58 */	lfs f0, lbl_81695158@sda21(r0)
/* 814E393C | 38 61 00 38 */	addi r3, r1, 0x38
/* 814E3940 | 38 80 00 7A */	li r4, 0x7a
/* 814E3944 | EC 20 07 F2 */	fmuls f1, f0, f31
/* 814E3948 | 48 05 D7 D5 */	bl fn_8154111C
/* 814E394C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E3950 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814E3954 | 7C 85 23 78 */	mr r5, r4
/* 814E3958 | 48 05 D5 39 */	bl fn_81540E90
/* 814E395C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E3960 | C0 22 8C DC */	lfs f1, lbl_816950DC@sda21(r0)
/* 814E3964 | C0 42 8D 5C */	lfs f2, lbl_8169515C@sda21(r0)
/* 814E3968 | 7C 64 1B 78 */	mr r4, r3
/* 814E396C | C0 62 8C B4 */	lfs f3, lbl_816950B4@sda21(r0)
/* 814E3970 | 48 05 D9 81 */	bl fn_815412F0
/* 814E3974 | FC 20 D8 90 */	fmr f1, f27
/* 814E3978 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E397C | FC 40 E0 90 */	fmr f2, f28
/* 814E3980 | C0 62 8C B8 */	lfs f3, lbl_816950B8@sda21(r0)
/* 814E3984 | 7C 64 1B 78 */	mr r4, r3
/* 814E3988 | 48 05 D8 F5 */	bl fn_8154127C
/* 814E398C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E3990 | 38 80 00 00 */	li r4, 0x0
/* 814E3994 | 48 06 43 8D */	bl GXLoadPosMtxImm
/* 814E3998 | 38 60 00 00 */	li r3, 0x0
/* 814E399C | 48 06 44 2D */	bl GXSetCurrentMtx
/* 814E39A0 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 814E39A4 | 41 82 00 40 */	beq .L_814E39E4
/* 814E39A8 | 40 80 00 10 */	bge .L_814E39B8
/* 814E39AC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814E39B0 | 40 80 00 14 */	bge .L_814E39C4
/* 814E39B4 | 48 00 00 3C */	b .L_814E39F0
.L_814E39B8:
/* 814E39B8 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 814E39BC | 40 80 00 34 */	bge .L_814E39F0
/* 814E39C0 | 48 00 00 14 */	b .L_814E39D4
.L_814E39C4:
/* 814E39C4 | C3 E2 8D 60 */	lfs f31, lbl_81695160@sda21(r0)
/* 814E39C8 | 3B E0 01 00 */	li r31, 0x100
/* 814E39CC | 3B C0 00 00 */	li r30, 0x0
/* 814E39D0 | 48 00 00 20 */	b .L_814E39F0
.L_814E39D4:
/* 814E39D4 | C3 E2 8D 64 */	lfs f31, lbl_81695164@sda21(r0)
/* 814E39D8 | 3B E0 01 00 */	li r31, 0x100
/* 814E39DC | 3B C0 00 00 */	li r30, 0x0
/* 814E39E0 | 48 00 00 10 */	b .L_814E39F0
.L_814E39E4:
/* 814E39E4 | C3 E2 8C B8 */	lfs f31, lbl_816950B8@sda21(r0)
/* 814E39E8 | 3B E0 00 00 */	li r31, 0x0
/* 814E39EC | 3B C0 01 00 */	li r30, 0x100
.L_814E39F0:
/* 814E39F0 | 38 60 00 80 */	li r3, 0x80
/* 814E39F4 | 38 80 00 00 */	li r4, 0x0
/* 814E39F8 | 38 A0 00 04 */	li r5, 0x4
/* 814E39FC | 48 06 0F F9 */	bl GXBegin
/* 814E3A00 | C8 02 8C F0 */	lfd f0, lbl_816950F0@sda21(r0)
/* 814E3A04 | 3C A0 CC 01 */	lis r5, 0xcc01
/* 814E3A08 | 38 80 00 FF */	li r4, 0xff
/* 814E3A0C | 38 60 00 00 */	li r3, 0x0
/* 814E3A10 | FC 00 F8 2A */	fadd f0, f0, f31
/* 814E3A14 | 38 00 01 00 */	li r0, 0x100
/* 814E3A18 | FC 20 00 18 */	frsp f1, f0
/* 814E3A1C | D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 814E3A20 | C0 02 8D 60 */	lfs f0, lbl_81695160@sda21(r0)
/* 814E3A24 | D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 814E3A28 | 90 85 80 00 */	stw r4, -0x8000(r5)
/* 814E3A2C | B3 E5 80 00 */	sth r31, -0x8000(r5)
/* 814E3A30 | B0 65 80 00 */	sth r3, -0x8000(r5)
/* 814E3A34 | D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 814E3A38 | C0 02 8D 68 */	lfs f0, lbl_81695168@sda21(r0)
/* 814E3A3C | D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 814E3A40 | 90 85 80 00 */	stw r4, -0x8000(r5)
/* 814E3A44 | B3 E5 80 00 */	sth r31, -0x8000(r5)
/* 814E3A48 | B0 05 80 00 */	sth r0, -0x8000(r5)
/* 814E3A4C | D3 E5 80 00 */	stfs f31, -0x8000(r5)
/* 814E3A50 | C0 02 8D 68 */	lfs f0, lbl_81695168@sda21(r0)
/* 814E3A54 | D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 814E3A58 | 90 85 80 00 */	stw r4, -0x8000(r5)
/* 814E3A5C | B3 C5 80 00 */	sth r30, -0x8000(r5)
/* 814E3A60 | B0 05 80 00 */	sth r0, -0x8000(r5)
/* 814E3A64 | D3 E5 80 00 */	stfs f31, -0x8000(r5)
/* 814E3A68 | C0 02 8D 60 */	lfs f0, lbl_81695160@sda21(r0)
/* 814E3A6C | D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 814E3A70 | 90 85 80 00 */	stw r4, -0x8000(r5)
/* 814E3A74 | B3 C5 80 00 */	sth r30, -0x8000(r5)
/* 814E3A78 | B0 65 80 00 */	sth r3, -0x8000(r5)
/* 814E3A7C | E3 E1 00 B8 */	psq_l f31, 0xb8(r1), 0, qr0
/* 814E3A80 | CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 814E3A84 | E3 C1 00 A8 */	psq_l f30, 0xa8(r1), 0, qr0
/* 814E3A88 | CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 814E3A8C | E3 A1 00 98 */	psq_l f29, 0x98(r1), 0, qr0
/* 814E3A90 | CB A1 00 90 */	lfd f29, 0x90(r1)
/* 814E3A94 | E3 81 00 88 */	psq_l f28, 0x88(r1), 0, qr0
/* 814E3A98 | CB 81 00 80 */	lfd f28, 0x80(r1)
/* 814E3A9C | E3 61 00 78 */	psq_l f27, 0x78(r1), 0, qr0
/* 814E3AA0 | CB 61 00 70 */	lfd f27, 0x70(r1)
/* 814E3AA4 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 814E3AA8 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814E3AAC | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 814E3AB0 | 7C 08 03 A6 */	mtlr r0
/* 814E3AB4 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814E3AB8 | 4E 80 00 20 */	blr
.endfn RFLiDrawQuad

# .text:0x27F4 | 0x814E3ABC | size: 0x68
.fn RFLiGetMaxMaskRsl, global
/* 814E3ABC | 2C 03 00 E0 */	cmpwi r3, 0xe0
/* 814E3AC0 | 41 82 00 4C */	beq .L_814E3B0C
/* 814E3AC4 | 40 80 00 28 */	bge .L_814E3AEC
/* 814E3AC8 | 2C 03 00 60 */	cmpwi r3, 0x60
/* 814E3ACC | 41 82 00 38 */	beq .L_814E3B04
/* 814E3AD0 | 40 80 00 10 */	bge .L_814E3AE0
/* 814E3AD4 | 2C 03 00 40 */	cmpwi r3, 0x40
/* 814E3AD8 | 41 82 00 2C */	beq .L_814E3B04
/* 814E3ADC | 48 00 00 40 */	b .L_814E3B1C
.L_814E3AE0:
/* 814E3AE0 | 2C 03 00 80 */	cmpwi r3, 0x80
/* 814E3AE4 | 41 82 00 28 */	beq .L_814E3B0C
/* 814E3AE8 | 48 00 00 34 */	b .L_814E3B1C
.L_814E3AEC:
/* 814E3AEC | 2C 03 01 E0 */	cmpwi r3, 0x1e0
/* 814E3AF0 | 41 82 00 24 */	beq .L_814E3B14
/* 814E3AF4 | 40 80 00 28 */	bge .L_814E3B1C
/* 814E3AF8 | 2C 03 01 00 */	cmpwi r3, 0x100
/* 814E3AFC | 41 82 00 18 */	beq .L_814E3B14
/* 814E3B00 | 48 00 00 1C */	b .L_814E3B1C
.L_814E3B04:
/* 814E3B04 | 38 60 00 40 */	li r3, 0x40
/* 814E3B08 | 4E 80 00 20 */	blr
.L_814E3B0C:
/* 814E3B0C | 38 60 00 80 */	li r3, 0x80
/* 814E3B10 | 4E 80 00 20 */	blr
.L_814E3B14:
/* 814E3B14 | 38 60 01 00 */	li r3, 0x100
/* 814E3B18 | 4E 80 00 20 */	blr
.L_814E3B1C:
/* 814E3B1C | 38 60 00 40 */	li r3, 0x40
/* 814E3B20 | 4E 80 00 20 */	blr
.endfn RFLiGetMaxMaskRsl

# .text:0x285C | 0x814E3B24 | size: 0x40
.fn RFLiGetMaskBufSize, global
/* 814E3B24 | 54 60 06 B5 */	rlwinm. r0, r3, 0, 26, 26
/* 814E3B28 | 38 80 00 00 */	li r4, 0x0
/* 814E3B2C | 41 82 00 08 */	beq .L_814E3B34
/* 814E3B30 | 38 80 08 00 */	li r4, 0x800
.L_814E3B34:
/* 814E3B34 | 54 60 06 73 */	rlwinm. r0, r3, 0, 25, 25
/* 814E3B38 | 41 82 00 08 */	beq .L_814E3B40
/* 814E3B3C | 38 84 20 00 */	addi r4, r4, 0x2000
.L_814E3B40:
/* 814E3B40 | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 814E3B44 | 41 82 00 0C */	beq .L_814E3B50
/* 814E3B48 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 814E3B4C | 38 84 80 00 */	addi r4, r4, -0x8000
.L_814E3B50:
/* 814E3B50 | 54 60 05 EF */	rlwinm. r0, r3, 0, 23, 23
/* 814E3B54 | 41 82 00 08 */	beq .L_814E3B5C
/* 814E3B58 | 3C 84 00 02 */	addis r4, r4, 0x2
.L_814E3B5C:
/* 814E3B5C | 7C 83 23 78 */	mr r3, r4
/* 814E3B60 | 4E 80 00 20 */	blr
.endfn RFLiGetMaskBufSize

# 0x8161D358..0x8161D418 | size: 0xC0
.rodata
.balign 8

# .rodata:0x0 | 0x8161D358 | size: 0x32
.obj RFLi_EYE_ROT_OFFSET, local
	.4byte 0x1D1C1C1C
	.4byte 0x1D1C1C1C
	.4byte 0x1D1C1C1C
	.4byte 0x1C1D1D1C
	.4byte 0x1C1C1D1D
	.4byte 0x1C1D1C1D
	.4byte 0x1D1C1D1C
	.4byte 0x1C1D1C1C
	.4byte 0x1C1D1D1D
	.4byte 0x1C1C1D1D
	.4byte 0x1D1C1C1D
	.4byte 0x1D1D1D1D
	.2byte 0x1C1C
.endobj RFLi_EYE_ROT_OFFSET

# .rodata:0x32 | 0x8161D38A | size: 0x6
.obj gap_07_8161D38A_rodata, global
.hidden gap_07_8161D38A_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_07_8161D38A_rodata

# .rodata:0x38 | 0x8161D390 | size: 0x18
.obj RFLi_EYEBROW_ROT_OFFSET, local
	.4byte 0x1A1A1B19
	.4byte 0x1A191A19
	.4byte 0x1C191A18
	.4byte 0x1B1B1A1A
	.4byte 0x19191A1A
	.4byte 0x1B1A191B
.endobj RFLi_EYEBROW_ROT_OFFSET

# .rodata:0x50 | 0x8161D3A8 | size: 0x18
.obj RFLi_EYE_COLOR1, local
	.4byte 0x000000FF
	.4byte 0x7C8080FF
	.4byte 0x705040FF
	.4byte 0x706E40FF
	.4byte 0x5868B8FF
	.4byte 0x488068FF
.endobj RFLi_EYE_COLOR1

# .rodata:0x68 | 0x8161D3C0 | size: 0x20
.obj RFLi_EYEBROW_COLOR0, local
	.4byte 0x1E1A18FF
	.4byte 0x382015FF
	.4byte 0x552617FF
	.4byte 0x704024FF
	.4byte 0x727278FF
	.4byte 0x49361AFF
	.4byte 0x7A5928FF
	.4byte 0xC19F64FF
.endobj RFLi_EYEBROW_COLOR0

# .rodata:0x88 | 0x8161D3E0 | size: 0xC
.obj RFLi_MOUTH_COLOR0, local
	.4byte 0xBE4E26FF
	.4byte 0xD83028FF
	.4byte 0xCF4447FF
.endobj RFLi_MOUTH_COLOR0

# .rodata:0x94 | 0x8161D3EC | size: 0xC
.obj RFLi_MOUTH_COLOR1, local
	.4byte 0x712A04FF
	.4byte 0x781510FF
	.4byte 0x7E2528FF
.endobj RFLi_MOUTH_COLOR1

# .rodata:0xA0 | 0x8161D3F8 | size: 0x20
.obj RFLi_BEARD_COLOR0, local
	.4byte 0x1E1A18FF
	.4byte 0x382015FF
	.4byte 0x552617FF
	.4byte 0x704024FF
	.4byte 0x727278FF
	.4byte 0x49361AFF
	.4byte 0x7A5928FF
	.4byte 0xC19F64FF
.endobj RFLi_BEARD_COLOR0

# 0x816950B0..0x81695170 | size: 0xC0
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816950B0 | size: 0x4
.obj RFLi_MOLE_COLOR0, local
	.byte 0x12, 0x0F, 0x0F, 0xFF
.endobj RFLi_MOLE_COLOR0

# .sdata2:0x4 | 0x816950B4 | size: 0x4
.obj lbl_816950B4, global
	.float 1
.endobj lbl_816950B4

# .sdata2:0x8 | 0x816950B8 | size: 0x4
.obj lbl_816950B8, global
	.float 0
.endobj lbl_816950B8

# .sdata2:0xC | 0x816950BC | size: 0x4
.obj gap_09_816950BC_sdata2, global
.hidden gap_09_816950BC_sdata2
	.4byte 0x00000000
.endobj gap_09_816950BC_sdata2

# .sdata2:0x10 | 0x816950C0 | size: 0x8
.obj lbl_816950C0, global
	.double 4503601774854144
.endobj lbl_816950C0

# .sdata2:0x18 | 0x816950C8 | size: 0x4
.obj lbl_816950C8, global
	.float 448
.endobj lbl_816950C8

# .sdata2:0x1C | 0x816950CC | size: 0x4
.obj lbl_816950CC, global
	.float 608
.endobj lbl_816950CC

# .sdata2:0x20 | 0x816950D0 | size: 0x1
.obj lbl_816950D0, global
	.byte 0xFF
.endobj lbl_816950D0

# .sdata2:0x21 | 0x816950D1 | size: 0x1
.obj lbl_816950D1, global
	.byte 0x82
.endobj lbl_816950D1

# .sdata2:0x22 | 0x816950D2 | size: 0x1
.obj lbl_816950D2, global
	.byte 0x00
.endobj lbl_816950D2

# .sdata2:0x23 | 0x816950D3 | size: 0x1
.obj lbl_816950D3, global
	.byte 0xFF
.endobj lbl_816950D3

# .sdata2:0x24 | 0x816950D4 | size: 0x1
.obj lbl_816950D4, global
	.byte 0x00
.endobj lbl_816950D4

# .sdata2:0x25 | 0x816950D5 | size: 0x1
.obj lbl_816950D5, global
	.byte 0xFF
.endobj lbl_816950D5

# .sdata2:0x26 | 0x816950D6 | size: 0x1
.obj lbl_816950D6, global
	.byte 0xFF
.endobj lbl_816950D6

# .sdata2:0x27 | 0x816950D7 | size: 0x1
.obj lbl_816950D7, global
	.byte 0xFF
.endobj lbl_816950D7

# .sdata2:0x28 | 0x816950D8 | size: 0x1
.obj lbl_816950D8, global
	.byte 0x00
.endobj lbl_816950D8

# .sdata2:0x29 | 0x816950D9 | size: 0x1
.obj lbl_816950D9, global
	.byte 0x00
.endobj lbl_816950D9

# .sdata2:0x2A | 0x816950DA | size: 0x1
.obj lbl_816950DA, global
	.byte 0x00
.endobj lbl_816950DA

# .sdata2:0x2B | 0x816950DB | size: 0x1
.obj lbl_816950DB, global
	.byte 0xFF
.endobj lbl_816950DB

# .sdata2:0x2C | 0x816950DC | size: 0x4
.obj lbl_816950DC, global
	.float 0.88961464
.endobj lbl_816950DC

# .sdata2:0x30 | 0x816950E0 | size: 0x4
.obj lbl_816950E0, global
	.float 18.451525
.endobj lbl_816950E0

# .sdata2:0x34 | 0x816950E4 | size: 0x4
.obj lbl_816950E4, global
	.float 1.0760944
.endobj lbl_816950E4

# .sdata2:0x38 | 0x816950E8 | size: 0x8
.obj lbl_816950E8, global
	.double 5.34375
.endobj lbl_816950E8

# .sdata2:0x40 | 0x816950F0 | size: 0x8
.obj lbl_816950F0, global
	.double 1
.endobj lbl_816950F0

# .sdata2:0x48 | 0x816950F8 | size: 0x4
.obj lbl_816950F8, global
	.float 0.4
.endobj lbl_816950F8

# .sdata2:0x4C | 0x816950FC | size: 0x4
.obj gap_09_816950FC_sdata2, global
.hidden gap_09_816950FC_sdata2
	.4byte 0x00000000
.endobj gap_09_816950FC_sdata2

# .sdata2:0x50 | 0x81695100 | size: 0x8
.obj lbl_81695100, global
	.double 4.5
.endobj lbl_81695100

# .sdata2:0x58 | 0x81695108 | size: 0x4
.obj lbl_81695108, global
	.float 11.25
.endobj lbl_81695108

# .sdata2:0x5C | 0x8169510C | size: 0x4
.obj lbl_8169510C, global
	.float 16.549807
.endobj lbl_8169510C

# .sdata2:0x60 | 0x81695110 | size: 0x8
.obj lbl_81695110, global
	.double 5.0625
.endobj lbl_81695110

# .sdata2:0x68 | 0x81695118 | size: 0x4
.obj lbl_81695118, global
	.float 29.25885
.endobj lbl_81695118

# .sdata2:0x6C | 0x8169511C | size: 0x4
.obj gap_09_8169511C_sdata2, global
.hidden gap_09_8169511C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169511C_sdata2

# .sdata2:0x70 | 0x81695120 | size: 0x8
.obj lbl_81695120, global
	.double 6.1875
.endobj lbl_81695120

# .sdata2:0x78 | 0x81695128 | size: 0x4
.obj lbl_81695128, global
	.float 31.763554
.endobj lbl_81695128

# .sdata2:0x7C | 0x8169512C | size: 0x4
.obj gap_09_8169512C_sdata2, global
.hidden gap_09_8169512C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169512C_sdata2

# .sdata2:0x80 | 0x81695130 | size: 0x8
.obj lbl_81695130, global
	.double 9
.endobj lbl_81695130

# .sdata2:0x88 | 0x81695138 | size: 0x4
.obj lbl_81695138, global
	.float 17.766165
.endobj lbl_81695138

# .sdata2:0x8C | 0x8169513C | size: 0x4
.obj lbl_8169513C, global
	.float 1.7792293
.endobj lbl_8169513C

# .sdata2:0x90 | 0x81695140 | size: 0x4
.obj lbl_81695140, global
	.float 17.95986
.endobj lbl_81695140

# .sdata2:0x94 | 0x81695144 | size: 0x4
.obj lbl_81695144, global
	.float 0.015625
.endobj lbl_81695144

# .sdata2:0x98 | 0x81695148 | size: 0x4
.obj lbl_81695148, global
	.float 32
.endobj lbl_81695148

# .sdata2:0x9C | 0x8169514C | size: 0x4
.obj lbl_8169514C, global
	.float 360
.endobj lbl_8169514C

# .sdata2:0xA0 | 0x81695150 | size: 0x8
.obj lbl_81695150, global
	.double 4503599627370496
.endobj lbl_81695150

# .sdata2:0xA8 | 0x81695158 | size: 0x4
.obj lbl_81695158, global
	.float 0.017453292
.endobj lbl_81695158

# .sdata2:0xAC | 0x8169515C | size: 0x4
.obj lbl_8169515C, global
	.float 0.9276675
.endobj lbl_8169515C

# .sdata2:0xB0 | 0x81695160 | size: 0x4
.obj lbl_81695160, global
	.float -0.5
.endobj lbl_81695160

# .sdata2:0xB4 | 0x81695164 | size: 0x4
.obj lbl_81695164, global
	.float -1
.endobj lbl_81695164

# .sdata2:0xB8 | 0x81695168 | size: 0x8
.obj lbl_81695168, global
	.float 0.5
	.float 0
.endobj lbl_81695168
