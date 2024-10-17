.include "macros.inc"
.file "iplSDMenuButton.cpp"

# 0x813EA9BC..0x813EB5EC | size: 0xC30
.text
.balign 4

# .text:0x0 | 0x813EA9BC | size: 0x1C
.fn iplSDMenuButton_813EA9BC, global
/* 813EA9BC | 38 80 00 00 */	li r4, 0x0
/* 813EA9C0 | 38 00 00 01 */	li r0, 0x1
/* 813EA9C4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813EA9C8 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813EA9CC | 90 83 00 0C */	stw r4, 0xc(r3)
/* 813EA9D0 | 98 03 00 10 */	stb r0, 0x10(r3)
/* 813EA9D4 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EA9BC

# .text:0x1C | 0x813EA9D8 | size: 0x40
.fn iplSDMenuButton_813EA9D8, global
/* 813EA9D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EA9DC | 7C 08 02 A6 */	mflr r0
/* 813EA9E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EA9E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EA9E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EA9EC | 7C 7F 1B 78 */	mr r31, r3
/* 813EA9F0 | 41 82 00 10 */	beq .L_813EAA00
/* 813EA9F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813EA9F8 | 40 81 00 08 */	ble .L_813EAA00
/* 813EA9FC | 48 20 D6 E9 */	bl __dl__FPv
.L_813EAA00:
/* 813EAA00 | 7F E3 FB 78 */	mr r3, r31
/* 813EAA04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EAA08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EAA0C | 7C 08 03 A6 */	mtlr r0
/* 813EAA10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EAA14 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EA9D8

# .text:0x5C | 0x813EAA18 | size: 0x370
.fn iplSDMenuButton_813EAA18, global
/* 813EAA18 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813EAA1C | 7C 08 02 A6 */	mflr r0
/* 813EAA20 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813EAA24 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813EAA28 | 48 20 EA 91 */	bl _savegpr_25
/* 813EAA2C | 3F E0 81 65 */	lis r31, lbl_81655AC0@ha
/* 813EAA30 | 7C 7C 1B 78 */	mr r28, r3
/* 813EAA34 | 7C 99 23 78 */	mr r25, r4
/* 813EAA38 | 7C BD 2B 78 */	mr r29, r5
/* 813EAA3C | 7C DE 33 78 */	mr r30, r6
/* 813EAA40 | 3B FF 5A C0 */	addi r31, r31, lbl_81655AC0@l
/* 813EAA44 | 38 60 05 80 */	li r3, 0x580
/* 813EAA48 | 48 20 D6 55 */	bl __nw__FUl
/* 813EAA4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EAA50 | 41 82 00 18 */	beq .L_813EAA68
/* 813EAA54 | 7F C4 F3 78 */	mr r4, r30
/* 813EAA58 | 7F 25 CB 78 */	mr r5, r25
/* 813EAA5C | 38 FF 00 00 */	addi r7, r31, 0x0
/* 813EAA60 | 38 CD 8E F8 */	li r6, lbl_81696F38@sda21
/* 813EAA64 | 4B F7 F5 C1 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813EAA68:
/* 813EAA68 | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 813EAA6C | 38 9F 00 14 */	addi r4, r31, 0x14
/* 813EAA70 | 38 AD 8E FC */	li r5, lbl_81696F3C@sda21
/* 813EAA74 | 38 C0 00 00 */	li r6, 0x0
/* 813EAA78 | 38 E0 00 01 */	li r7, 0x1
/* 813EAA7C | 4B F7 FA 65 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EAA80 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAA84 | 38 9F 00 30 */	addi r4, r31, 0x30
/* 813EAA88 | 38 BF 00 4C */	addi r5, r31, 0x4c
/* 813EAA8C | 38 C0 00 00 */	li r6, 0x0
/* 813EAA90 | 38 E0 00 01 */	li r7, 0x1
/* 813EAA94 | 4B F7 FA 4D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EAA98 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAA9C | 38 9F 00 58 */	addi r4, r31, 0x58
/* 813EAAA0 | 38 BF 00 4C */	addi r5, r31, 0x4c
/* 813EAAA4 | 38 C0 00 00 */	li r6, 0x0
/* 813EAAA8 | 38 E0 00 01 */	li r7, 0x1
/* 813EAAAC | 4B F7 FA 35 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EAAB0 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAAB4 | 38 9F 00 75 */	addi r4, r31, 0x75
/* 813EAAB8 | 38 AD 8F 04 */	li r5, lbl_81696F44@sda21
/* 813EAABC | 38 C0 00 00 */	li r6, 0x0
/* 813EAAC0 | 38 E0 00 01 */	li r7, 0x1
/* 813EAAC4 | 4B F7 FA 1D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EAAC8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAACC | 38 9F 00 90 */	addi r4, r31, 0x90
/* 813EAAD0 | 38 BF 00 AC */	addi r5, r31, 0xac
/* 813EAAD4 | 38 C0 00 00 */	li r6, 0x0
/* 813EAAD8 | 38 E0 00 01 */	li r7, 0x1
/* 813EAADC | 4B F7 FA 05 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EAAE0 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAAE4 | 38 9F 00 B5 */	addi r4, r31, 0xb5
/* 813EAAE8 | 38 BF 00 D7 */	addi r5, r31, 0xd7
/* 813EAAEC | 38 C0 00 00 */	li r6, 0x0
/* 813EAAF0 | 38 E0 00 01 */	li r7, 0x1
/* 813EAAF4 | 4B F7 F9 ED */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EAAF8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAAFC | 38 9F 00 E2 */	addi r4, r31, 0xe2
/* 813EAB00 | 38 BF 00 D7 */	addi r5, r31, 0xd7
/* 813EAB04 | 38 C0 00 00 */	li r6, 0x0
/* 813EAB08 | 38 E0 00 01 */	li r7, 0x1
/* 813EAB0C | 4B F7 F9 D5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813EAB10 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAB14 | 38 80 00 05 */	li r4, 0x5
/* 813EAB18 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EAB1C | 48 12 77 FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EAB20 | 4B F7 F1 05 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EAB24 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAB28 | 4B F7 FB 0D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813EAB2C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAB30 | 38 80 00 00 */	li r4, 0x0
/* 813EAB34 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EAB38 | 48 12 77 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EAB3C | 4B F7 F0 E9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EAB40 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAB44 | 38 80 00 00 */	li r4, 0x0
/* 813EAB48 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EAB4C | 48 12 77 CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EAB50 | 7C 7A 1B 78 */	mr r26, r3
/* 813EAB54 | 4B F7 7D 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EAB58 | 38 00 00 01 */	li r0, 0x1
/* 813EAB5C | 38 60 00 34 */	li r3, 0x34
/* 813EAB60 | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 813EAB64 | 48 20 D5 39 */	bl __nw__FUl
/* 813EAB68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EAB6C | 7C 7A 1B 78 */	mr r26, r3
/* 813EAB70 | 41 82 00 6C */	beq .L_813EABDC
/* 813EAB74 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 813EAB78 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813EAB7C | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813EAB80 | 38 00 00 00 */	li r0, 0x0
/* 813EAB84 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813EAB88 | 3B 65 02 98 */	addi r27, r5, 0x298
/* 813EAB8C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813EAB90 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813EAB94 | 48 00 00 08 */	b .L_813EAB9C
/* 813EAB98 | 4E 80 04 21 */	bctrl
.L_813EAB9C:
/* 813EAB9C | 38 7A 00 08 */	addi r3, r26, 0x8
/* 813EABA0 | 38 80 00 08 */	li r4, 0x8
/* 813EABA4 | 48 12 74 B9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813EABA8 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813EABAC | 38 7A 00 18 */	addi r3, r26, 0x18
/* 813EABB0 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813EABB4 | 38 80 00 08 */	li r4, 0x8
/* 813EABB8 | 90 BA 00 00 */	stw r5, 0x0(r26)
/* 813EABBC | 93 7A 00 24 */	stw r27, 0x24(r26)
/* 813EABC0 | 48 12 74 9D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813EABC4 | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 813EABC8 | 38 00 00 00 */	li r0, 0x0
/* 813EABCC | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 813EABD0 | 90 7A 00 00 */	stw r3, 0x0(r26)
/* 813EABD4 | 90 1A 00 2C */	stw r0, 0x2c(r26)
/* 813EABD8 | 98 1A 00 30 */	stb r0, 0x30(r26)
.L_813EABDC:
/* 813EABDC | 93 5C 00 04 */	stw r26, 0x4(r28)
/* 813EABE0 | 7F 43 D3 78 */	mr r3, r26
/* 813EABE4 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813EABE8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813EABEC | 38 84 00 04 */	addi r4, r4, 0x4
/* 813EABF0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813EABF4 | 7D 89 03 A6 */	mtctr r12
/* 813EABF8 | 4E 80 04 21 */	bctrl
/* 813EABFC | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813EAC00 | 38 80 00 00 */	li r4, 0x0
/* 813EAC04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EAC08 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813EAC0C | 7D 89 03 A6 */	mtctr r12
/* 813EAC10 | 4E 80 04 21 */	bctrl
/* 813EAC14 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAC18 | 38 A0 00 01 */	li r5, 0x1
/* 813EAC1C | 80 8D 8E F4 */	lwz r4, lbl_81696F34@sda21(r0)
/* 813EAC20 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EAC24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EAC28 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EAC2C | 7D 89 03 A6 */	mtctr r12
/* 813EAC30 | 4E 80 04 21 */	bctrl
/* 813EAC34 | 7C 64 1B 78 */	mr r4, r3
/* 813EAC38 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813EAC3C | 38 A0 00 01 */	li r5, 0x1
/* 813EAC40 | 4B F8 05 8D */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813EAC44 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAC48 | 38 9F 01 03 */	addi r4, r31, 0x103
/* 813EAC4C | 38 A0 00 01 */	li r5, 0x1
/* 813EAC50 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EAC54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EAC58 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EAC5C | 7D 89 03 A6 */	mtctr r12
/* 813EAC60 | 4E 80 04 21 */	bctrl
/* 813EAC64 | 38 80 00 00 */	li r4, 0x0
/* 813EAC68 | 4B F5 97 AD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813EAC6C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EAC70 | 38 9F 01 0C */	addi r4, r31, 0x10c
/* 813EAC74 | 38 A0 00 01 */	li r5, 0x1
/* 813EAC78 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EAC7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EAC80 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EAC84 | 7D 89 03 A6 */	mtctr r12
/* 813EAC88 | 4E 80 04 21 */	bctrl
/* 813EAC8C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813EAC90 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813EAC94 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813EAC98 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813EAC9C | 48 17 F3 19 */	bl SCGetAspectRatio
/* 813EACA0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813EACA4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813EACA8 | 40 82 00 0C */	bne .L_813EACB4
/* 813EACAC | C0 62 87 A8 */	lfs f3, lbl_81694BA8@sda21(r0)
/* 813EACB0 | 48 00 00 08 */	b .L_813EACB8
.L_813EACB4:
/* 813EACB4 | C0 62 87 A4 */	lfs f3, lbl_81694BA4@sda21(r0)
.L_813EACB8:
/* 813EACB8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EACBC | 3F 40 81 09 */	lis r26, smArg__Q23ipl6System@ha
/* 813EACC0 | FC 20 18 18 */	frsp f1, f3
/* 813EACC4 | C0 42 87 AC */	lfs f2, lbl_81694BAC@sda21(r0)
/* 813EACC8 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 813EACCC | 3B 5A 90 08 */	addi r26, r26, smArg__Q23ipl6System@l
/* 813EACD0 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813EACD4 | 3B 62 87 A0 */	li r27, lbl_81694BA0@sda21
/* 813EACD8 | D0 24 00 2C */	stfs f1, 0x2c(r4)
/* 813EACDC | 38 60 00 3C */	li r3, 0x3c
/* 813EACE0 | D0 44 00 30 */	stfs f2, 0x30(r4)
/* 813EACE4 | D0 61 00 14 */	stfs f3, 0x14(r1)
/* 813EACE8 | D0 41 00 18 */	stfs f2, 0x18(r1)
/* 813EACEC | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 813EACF0 | 48 20 D3 AD */	bl __nw__FUl
/* 813EACF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EACF8 | 7C 79 1B 78 */	mr r25, r3
/* 813EACFC | 41 82 00 40 */	beq .L_813EAD3C
/* 813EAD00 | C0 22 87 B0 */	lfs f1, lbl_81694BB0@sda21(r0)
/* 813EAD04 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813EAD08 | FC 40 08 90 */	fmr f2, f1
/* 813EAD0C | FC 60 08 90 */	fmr f3, f1
/* 813EAD10 | 4B F7 7D 4D */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813EAD14 | C0 22 87 B4 */	lfs f1, lbl_81694BB4@sda21(r0)
/* 813EAD18 | 7C 68 1B 78 */	mr r8, r3
/* 813EAD1C | C0 42 87 B8 */	lfs f2, lbl_81694BB8@sda21(r0)
/* 813EAD20 | 7F 23 CB 78 */	mr r3, r25
/* 813EAD24 | 7F C4 F3 78 */	mr r4, r30
/* 813EAD28 | 7F A5 EB 78 */	mr r5, r29
/* 813EAD2C | 38 FF 01 16 */	addi r7, r31, 0x116
/* 813EAD30 | 38 CD 8E F8 */	li r6, lbl_81696F38@sda21
/* 813EAD34 | 4B FE 66 D9 */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
/* 813EAD38 | 7C 79 1B 78 */	mr r25, r3
.L_813EAD3C:
/* 813EAD3C | 93 3C 00 08 */	stw r25, 0x8(r28)
/* 813EAD40 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 813EAD44 | 80 7A 00 80 */	lwz r3, 0x80(r26)
/* 813EAD48 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EAD4C | 4B F5 3A 71 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813EAD50 | 7C 64 1B 78 */	mr r4, r3
/* 813EAD54 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813EAD58 | 38 A0 00 00 */	li r5, 0x0
/* 813EAD5C | 4B FE 68 A5 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813EAD60 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813EAD64 | 38 A0 00 00 */	li r5, 0x0
/* 813EAD68 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 813EAD6C | 4B FE 6F 3D */	bl set_textbox__Q33ipl5scene11TextBalloonFPCw
/* 813EAD70 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813EAD74 | 48 20 E7 91 */	bl _restgpr_25
/* 813EAD78 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813EAD7C | 7C 08 03 A6 */	mtlr r0
/* 813EAD80 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813EAD84 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EAA18

# .text:0x3CC | 0x813EAD88 | size: 0x4C
.fn iplSDMenuButton_813EAD88, global
/* 813EAD88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EAD8C | 7C 08 02 A6 */	mflr r0
/* 813EAD90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EAD94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EAD98 | 7C 7F 1B 78 */	mr r31, r3
/* 813EAD9C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EADA0 | 4B F7 F9 65 */	bl calc__Q33ipl6layout6ObjectFv
/* 813EADA4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813EADA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EADAC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813EADB0 | 7D 89 03 A6 */	mtctr r12
/* 813EADB4 | 4E 80 04 21 */	bctrl
/* 813EADB8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813EADBC | 4B FE 67 F1 */	bl calc__Q33ipl5scene11TextBalloonFv
/* 813EADC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EADC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EADC8 | 7C 08 03 A6 */	mtlr r0
/* 813EADCC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EADD0 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EAD88

# .text:0x418 | 0x813EADD4 | size: 0x8
.fn iplSDMenuButton_813EADD4, global
/* 813EADD4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EADD8 | 4B F7 F9 C4 */	b draw__Q33ipl6layout6ObjectFv
.endfn iplSDMenuButton_813EADD4

# .text:0x420 | 0x813EADDC | size: 0x38
.fn iplSDMenuButton_813EADDC, global
/* 813EADDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EADE0 | 7C 08 02 A6 */	mflr r0
/* 813EADE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EADE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EADEC | 7C 7F 1B 78 */	mr r31, r3
/* 813EADF0 | 38 60 00 00 */	li r3, 0x0
/* 813EADF4 | 4B F7 7C 79 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813EADF8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813EADFC | 4B FE 67 FD */	bl draw__Q33ipl5scene11TextBalloonFv
/* 813EAE00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EAE04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EAE08 | 7C 08 03 A6 */	mtlr r0
/* 813EAE0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EAE10 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EADDC

# .text:0x458 | 0x813EAE14 | size: 0x8
.fn iplSDMenuButton_813EAE14, global
/* 813EAE14 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EAE18 | 4B F8 01 74 */	b update__Q33ipl3gui11PaneManagerFv
.endfn iplSDMenuButton_813EAE14

# .text:0x460 | 0x813EAE1C | size: 0x28
.fn iplSDMenuButton_813EAE1C, global
/* 813EAE1C | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 813EAE20 | 38 00 00 00 */	li r0, 0x0
/* 813EAE24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813EAE28 | 41 82 00 08 */	beq .L_813EAE30
/* 813EAE2C | 90 03 00 0C */	stw r0, 0xc(r3)
.L_813EAE30:
/* 813EAE30 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EAE34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EAE38 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813EAE3C | 7D 89 03 A6 */	mtctr r12
/* 813EAE40 | 4E 80 04 20 */	bctr
.endfn iplSDMenuButton_813EAE1C

# .text:0x488 | 0x813EAE44 | size: 0x110
.fn iplSDMenuButton_813EAE44, global
/* 813EAE44 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EAE48 | 7C 08 02 A6 */	mflr r0
/* 813EAE4C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EAE50 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EAE54 | 48 20 E6 69 */	bl _savegpr_26
/* 813EAE58 | 7C 9B 23 78 */	mr r27, r4
/* 813EAE5C | 7C 7A 1B 78 */	mr r26, r3
/* 813EAE60 | 7C BC 2B 78 */	mr r28, r5
/* 813EAE64 | 7F 63 DB 78 */	mr r3, r27
/* 813EAE68 | 48 00 03 A5 */	bl iplSDMenuButton_813EB20C
/* 813EAE6C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813EAE70 | 7C 7E 1B 78 */	mr r30, r3
/* 813EAE74 | 41 82 00 C8 */	beq .L_813EAF3C
/* 813EAE78 | 88 1A 00 10 */	lbz r0, 0x10(r26)
/* 813EAE7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EAE80 | 41 82 00 BC */	beq .L_813EAF3C
/* 813EAE84 | 54 60 10 3A */	slwi r0, r3, 2
/* 813EAE88 | 7F FA 02 14 */	add r31, r26, r0
/* 813EAE8C | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 813EAE90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EAE94 | 40 82 00 94 */	bne .L_813EAF28
/* 813EAE98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EAE9C | 3B A0 00 00 */	li r29, 0x0
/* 813EAEA0 | 41 82 00 08 */	beq .L_813EAEA8
/* 813EAEA4 | 48 00 00 18 */	b .L_813EAEBC
.L_813EAEA8:
/* 813EAEA8 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 813EAEAC | 38 80 00 05 */	li r4, 0x5
/* 813EAEB0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EAEB4 | 48 12 74 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EAEB8 | 7C 7D 1B 78 */	mr r29, r3
.L_813EAEBC:
/* 813EAEBC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813EAEC0 | 41 82 00 24 */	beq .L_813EAEE4
/* 813EAEC4 | 7F A3 EB 78 */	mr r3, r29
/* 813EAEC8 | 4B F7 ED 5D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EAECC | 38 00 00 00 */	li r0, 0x0
/* 813EAED0 | 7F A3 EB 78 */	mr r3, r29
/* 813EAED4 | 90 1D 00 18 */	stw r0, 0x18(r29)
/* 813EAED8 | 4B F7 79 99 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EAEDC | 38 00 00 01 */	li r0, 0x1
/* 813EAEE0 | 90 1D 00 14 */	stw r0, 0x14(r29)
.L_813EAEE4:
/* 813EAEE4 | 7F 43 D3 78 */	mr r3, r26
/* 813EAEE8 | 7F C4 F3 78 */	mr r4, r30
/* 813EAEEC | 7F 65 DB 78 */	mr r5, r27
/* 813EAEF0 | 48 00 05 75 */	bl iplSDMenuButton_813EB464
/* 813EAEF4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813EAEF8 | 3C 80 81 65 */	lis r4, lbl_81655BEF@ha
/* 813EAEFC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813EAF00 | 38 84 5B EF */	addi r4, r4, lbl_81655BEF@l
/* 813EAF04 | 4B F8 05 69 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813EAF08 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813EAF0C | 41 82 00 1C */	beq .L_813EAF28
/* 813EAF10 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813EAF14 | 7F 83 E3 78 */	mr r3, r28
/* 813EAF18 | 38 80 00 00 */	li r4, 0x0
/* 813EAF1C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813EAF20 | 7D 89 03 A6 */	mtctr r12
/* 813EAF24 | 4E 80 04 21 */	bctrl
.L_813EAF28:
/* 813EAF28 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813EAF2C | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813EAF30 | 40 80 00 0C */	bge .L_813EAF3C
/* 813EAF34 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813EAF38 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_813EAF3C:
/* 813EAF3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EAF40 | 48 20 E5 C9 */	bl _restgpr_26
/* 813EAF44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EAF48 | 7C 08 03 A6 */	mtlr r0
/* 813EAF4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EAF50 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EAE44

# .text:0x598 | 0x813EAF54 | size: 0xD8
.fn iplSDMenuButton_813EAF54, global
/* 813EAF54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EAF58 | 7C 08 02 A6 */	mflr r0
/* 813EAF5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EAF60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EAF64 | 48 20 E5 5D */	bl _savegpr_27
/* 813EAF68 | 7C 7B 1B 78 */	mr r27, r3
/* 813EAF6C | 7C 83 23 78 */	mr r3, r4
/* 813EAF70 | 48 00 02 9D */	bl iplSDMenuButton_813EB20C
/* 813EAF74 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813EAF78 | 7C 7E 1B 78 */	mr r30, r3
/* 813EAF7C | 41 82 00 98 */	beq .L_813EB014
/* 813EAF80 | 88 1B 00 10 */	lbz r0, 0x10(r27)
/* 813EAF84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813EAF88 | 41 82 00 8C */	beq .L_813EB014
/* 813EAF8C | 54 7D 10 3A */	slwi r29, r3, 2
/* 813EAF90 | 3B 80 00 00 */	li r28, 0x0
/* 813EAF94 | 7F FB EA 14 */	add r31, r27, r29
/* 813EAF98 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 813EAF9C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813EAFA0 | 40 82 00 38 */	bne .L_813EAFD8
/* 813EAFA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EAFA8 | 41 82 00 08 */	beq .L_813EAFB0
/* 813EAFAC | 48 00 00 18 */	b .L_813EAFC4
.L_813EAFB0:
/* 813EAFB0 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 813EAFB4 | 38 80 00 06 */	li r4, 0x6
/* 813EAFB8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EAFBC | 48 12 73 5D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EAFC0 | 7C 7C 1B 78 */	mr r28, r3
.L_813EAFC4:
/* 813EAFC4 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 813EAFC8 | 40 80 00 10 */	bge .L_813EAFD8
/* 813EAFCC | 7C 7B EA 14 */	add r3, r27, r29
/* 813EAFD0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813EAFD4 | 4B FE 69 D9 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
.L_813EAFD8:
/* 813EAFD8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813EAFDC | 41 82 00 24 */	beq .L_813EB000
/* 813EAFE0 | 7F 83 E3 78 */	mr r3, r28
/* 813EAFE4 | 4B F7 EC 41 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EAFE8 | 38 00 00 00 */	li r0, 0x0
/* 813EAFEC | 7F 83 E3 78 */	mr r3, r28
/* 813EAFF0 | 90 1C 00 18 */	stw r0, 0x18(r28)
/* 813EAFF4 | 4B F7 78 7D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EAFF8 | 38 00 00 01 */	li r0, 0x1
/* 813EAFFC | 90 1C 00 14 */	stw r0, 0x14(r28)
.L_813EB000:
/* 813EB000 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813EB004 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EB008 | 40 81 00 0C */	ble .L_813EB014
/* 813EB00C | 38 03 FF FF */	subi r0, r3, 0x1
/* 813EB010 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_813EB014:
/* 813EB014 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EB018 | 48 20 E4 F5 */	bl _restgpr_27
/* 813EB01C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EB020 | 7C 08 03 A6 */	mtlr r0
/* 813EB024 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EB028 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EAF54

# .text:0x670 | 0x813EB02C | size: 0x14
.fn iplSDMenuButton_813EB02C, global
/* 813EB02C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EB030 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB034 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813EB038 | 7D 89 03 A6 */	mtctr r12
/* 813EB03C | 4E 80 04 20 */	bctr
.endfn iplSDMenuButton_813EB02C

# .text:0x684 | 0x813EB040 | size: 0x1CC
.fn iplSDMenuButton_813EB040, global
/* 813EB040 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813EB044 | 7C 08 02 A6 */	mflr r0
/* 813EB048 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813EB04C | DB E1 00 20 */	stfd f31, 0x20(r1)
/* 813EB050 | F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 813EB054 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EB058 | 48 20 E4 71 */	bl _savegpr_29
/* 813EB05C | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813EB060 | 7C 7D 1B 78 */	mr r29, r3
/* 813EB064 | 3B E0 00 00 */	li r31, 0x0
/* 813EB068 | 3B C0 00 00 */	li r30, 0x0
/* 813EB06C | 41 82 01 18 */	beq .L_813EB184
/* 813EB070 | 40 80 00 14 */	bge .L_813EB084
/* 813EB074 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813EB078 | 41 82 00 18 */	beq .L_813EB090
/* 813EB07C | 40 80 00 40 */	bge .L_813EB0BC
/* 813EB080 | 48 00 01 30 */	b .L_813EB1B0
.L_813EB084:
/* 813EB084 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 813EB088 | 40 80 01 28 */	bge .L_813EB1B0
/* 813EB08C | 48 00 01 10 */	b .L_813EB19C
.L_813EB090:
/* 813EB090 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EB094 | 38 80 00 02 */	li r4, 0x2
/* 813EB098 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB09C | 48 12 72 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB0A0 | C0 22 87 B0 */	lfs f1, lbl_81694BB0@sda21(r0)
/* 813EB0A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813EB0A8 | C0 02 87 BC */	lfs f0, lbl_81694BBC@sda21(r0)
/* 813EB0AC | 3B C0 00 01 */	li r30, 0x1
/* 813EB0B0 | D0 23 00 08 */	stfs f1, 0x8(r3)
/* 813EB0B4 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 813EB0B8 | 48 00 00 F8 */	b .L_813EB1B0
.L_813EB0BC:
/* 813EB0BC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813EB0C0 | 4B FE 68 ED */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 813EB0C4 | 7F A3 EB 78 */	mr r3, r29
/* 813EB0C8 | 4B FF FD 55 */	bl iplSDMenuButton_813EAE1C
/* 813EB0CC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EB0D0 | 38 80 00 02 */	li r4, 0x2
/* 813EB0D4 | 4B F7 F9 FD */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EB0D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EB0DC | 41 82 00 80 */	beq .L_813EB15C
/* 813EB0E0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EB0E4 | 38 80 00 02 */	li r4, 0x2
/* 813EB0E8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB0EC | 48 12 72 2D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB0F0 | C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 813EB0F4 | 38 80 00 02 */	li r4, 0x2
/* 813EB0F8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EB0FC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB100 | 48 12 72 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB104 | C0 02 87 B0 */	lfs f0, lbl_81694BB0@sda21(r0)
/* 813EB108 | 38 00 00 00 */	li r0, 0x0
/* 813EB10C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813EB110 | FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 813EB114 | 40 81 00 9C */	ble .L_813EB1B0
/* 813EB118 | FC 20 F8 90 */	fmr f1, f31
/* 813EB11C | 48 20 E2 7D */	bl __cvt_fp2unsigned
/* 813EB120 | 3C 00 43 30 */	lis r0, 0x4330
/* 813EB124 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813EB128 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EB12C | 38 80 00 02 */	li r4, 0x2
/* 813EB130 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813EB134 | C8 22 87 C0 */	lfd f1, lbl_81694BC0@sda21(r0)
/* 813EB138 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB13C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813EB140 | EF E0 08 28 */	fsubs f31, f0, f1
/* 813EB144 | 48 12 71 D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB148 | D3 E3 00 08 */	stfs f31, 0x8(r3)
/* 813EB14C | 7C 7F 1B 78 */	mr r31, r3
/* 813EB150 | C0 02 87 BC */	lfs f0, lbl_81694BBC@sda21(r0)
/* 813EB154 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 813EB158 | 48 00 00 58 */	b .L_813EB1B0
.L_813EB15C:
/* 813EB15C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813EB160 | 38 80 00 02 */	li r4, 0x2
/* 813EB164 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB168 | 48 12 71 B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB16C | C0 22 87 B0 */	lfs f1, lbl_81694BB0@sda21(r0)
/* 813EB170 | 7C 7F 1B 78 */	mr r31, r3
/* 813EB174 | C0 02 87 BC */	lfs f0, lbl_81694BBC@sda21(r0)
/* 813EB178 | D0 23 00 08 */	stfs f1, 0x8(r3)
/* 813EB17C | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 813EB180 | 48 00 00 30 */	b .L_813EB1B0
.L_813EB184:
/* 813EB184 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EB188 | 38 80 00 03 */	li r4, 0x3
/* 813EB18C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB190 | 48 12 71 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB194 | 7C 7F 1B 78 */	mr r31, r3
/* 813EB198 | 48 00 00 18 */	b .L_813EB1B0
.L_813EB19C:
/* 813EB19C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EB1A0 | 38 80 00 04 */	li r4, 0x4
/* 813EB1A4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB1A8 | 48 12 71 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB1AC | 7C 7F 1B 78 */	mr r31, r3
.L_813EB1B0:
/* 813EB1B0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813EB1B4 | 41 82 00 38 */	beq .L_813EB1EC
/* 813EB1B8 | 7F E3 FB 78 */	mr r3, r31
/* 813EB1BC | 4B F7 EA 69 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813EB1C0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813EB1C4 | 41 82 00 10 */	beq .L_813EB1D4
/* 813EB1C8 | 38 00 00 01 */	li r0, 0x1
/* 813EB1CC | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 813EB1D0 | 48 00 00 0C */	b .L_813EB1DC
.L_813EB1D4:
/* 813EB1D4 | 38 00 00 00 */	li r0, 0x0
/* 813EB1D8 | 90 1F 00 18 */	stw r0, 0x18(r31)
.L_813EB1DC:
/* 813EB1DC | 7F E3 FB 78 */	mr r3, r31
/* 813EB1E0 | 4B F7 76 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EB1E4 | 38 00 00 01 */	li r0, 0x1
/* 813EB1E8 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813EB1EC:
/* 813EB1EC | E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 813EB1F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EB1F4 | CB E1 00 20 */	lfd f31, 0x20(r1)
/* 813EB1F8 | 48 20 E3 1D */	bl _restgpr_29
/* 813EB1FC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813EB200 | 7C 08 03 A6 */	mtlr r0
/* 813EB204 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813EB208 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EB040

# .text:0x850 | 0x813EB20C | size: 0x44
.fn iplSDMenuButton_813EB20C, global
/* 813EB20C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EB210 | 7C 08 02 A6 */	mflr r0
/* 813EB214 | 38 8D 8E F4 */	li r4, lbl_81696F34@sda21
/* 813EB218 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EB21C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EB220 | 3B E0 FF FF */	li r31, -0x1
/* 813EB224 | 80 8D 8E F4 */	lwz r4, lbl_81696F34@sda21(r0)
/* 813EB228 | 48 21 72 59 */	bl strcmp
/* 813EB22C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EB230 | 40 82 00 08 */	bne .L_813EB238
/* 813EB234 | 3B E0 00 00 */	li r31, 0x0
.L_813EB238:
/* 813EB238 | 7F E3 FB 78 */	mr r3, r31
/* 813EB23C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EB240 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EB244 | 7C 08 03 A6 */	mtlr r0
/* 813EB248 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EB24C | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EB20C

# .text:0x894 | 0x813EB250 | size: 0xA8
.fn iplSDMenuButton_813EB250, global
/* 813EB250 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EB254 | 7C 08 02 A6 */	mflr r0
/* 813EB258 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EB25C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EB260 | 48 20 E2 65 */	bl _savegpr_28
/* 813EB264 | 3B C0 00 01 */	li r30, 0x1
/* 813EB268 | 7C 7C 1B 78 */	mr r28, r3
/* 813EB26C | 9B C3 00 10 */	stb r30, 0x10(r3)
/* 813EB270 | 38 A0 00 00 */	li r5, 0x0
/* 813EB274 | 38 00 00 00 */	li r0, 0x0
/* 813EB278 | 3B ED 8E F4 */	li r31, lbl_81696F34@sda21
/* 813EB27C | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 813EB280 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813EB284 | 41 82 00 30 */	beq .L_813EB2B4
/* 813EB288 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813EB28C | 90 03 00 0C */	stw r0, 0xc(r3)
/* 813EB290 | 41 82 00 08 */	beq .L_813EB298
/* 813EB294 | 48 00 00 20 */	b .L_813EB2B4
.L_813EB298:
/* 813EB298 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EB29C | 38 80 00 06 */	li r4, 0x6
/* 813EB2A0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB2A4 | 48 12 70 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB2A8 | 7C 7D 1B 78 */	mr r29, r3
/* 813EB2AC | 4B F7 75 C5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813EB2B0 | 93 DD 00 14 */	stw r30, 0x14(r29)
.L_813EB2B4:
/* 813EB2B4 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813EB2B8 | 38 A0 00 01 */	li r5, 0x1
/* 813EB2BC | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813EB2C0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB2C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB2C8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB2CC | 7D 89 03 A6 */	mtctr r12
/* 813EB2D0 | 4E 80 04 21 */	bctrl
/* 813EB2D4 | 7C 64 1B 78 */	mr r4, r3
/* 813EB2D8 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 813EB2DC | 4B F7 FF 3D */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813EB2E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EB2E4 | 48 20 E2 2D */	bl _restgpr_28
/* 813EB2E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EB2EC | 7C 08 03 A6 */	mtlr r0
/* 813EB2F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EB2F4 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EB250

# .text:0x93C | 0x813EB2F8 | size: 0x38
.fn iplSDMenuButton_813EB2F8, global
/* 813EB2F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EB2FC | 7C 08 02 A6 */	mflr r0
/* 813EB300 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EB304 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EB308 | 7C 7F 1B 78 */	mr r31, r3
/* 813EB30C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813EB310 | 4B FE 66 9D */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 813EB314 | 38 00 00 00 */	li r0, 0x0
/* 813EB318 | 98 1F 00 10 */	stb r0, 0x10(r31)
/* 813EB31C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EB320 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EB324 | 7C 08 03 A6 */	mtlr r0
/* 813EB328 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EB32C | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EB2F8

# .text:0x974 | 0x813EB330 | size: 0x134
.fn iplSDMenuButton_813EB330, global
/* 813EB330 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813EB334 | 7C 08 02 A6 */	mflr r0
/* 813EB338 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813EB33C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813EB340 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813EB344 | 7C 7F 1B 78 */	mr r31, r3
/* 813EB348 | 41 82 00 68 */	beq .L_813EB3B0
/* 813EB34C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EB350 | 3C 80 81 65 */	lis r4, lbl_81655BC3@ha
/* 813EB354 | 38 84 5B C3 */	addi r4, r4, lbl_81655BC3@l
/* 813EB358 | 38 A0 00 01 */	li r5, 0x1
/* 813EB35C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB360 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB364 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB368 | 7D 89 03 A6 */	mtctr r12
/* 813EB36C | 4E 80 04 21 */	bctrl
/* 813EB370 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813EB374 | 3C 80 81 65 */	lis r4, lbl_81655BCC@ha
/* 813EB378 | 38 84 5B CC */	addi r4, r4, lbl_81655BCC@l
/* 813EB37C | 38 A0 00 01 */	li r5, 0x1
/* 813EB380 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813EB384 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813EB388 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813EB38C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813EB390 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB394 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB398 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB39C | 7D 89 03 A6 */	mtctr r12
/* 813EB3A0 | 4E 80 04 21 */	bctrl
/* 813EB3A4 | 38 80 00 00 */	li r4, 0x0
/* 813EB3A8 | 4B F5 90 6D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813EB3AC | 48 00 00 A4 */	b .L_813EB450
.L_813EB3B0:
/* 813EB3B0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EB3B4 | 3C 80 81 65 */	lis r4, lbl_81655BC3@ha
/* 813EB3B8 | 38 84 5B C3 */	addi r4, r4, lbl_81655BC3@l
/* 813EB3BC | 38 A0 00 01 */	li r5, 0x1
/* 813EB3C0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB3C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB3C8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB3CC | 7D 89 03 A6 */	mtctr r12
/* 813EB3D0 | 4E 80 04 21 */	bctrl
/* 813EB3D4 | 38 80 00 00 */	li r4, 0x0
/* 813EB3D8 | 4B F5 90 3D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813EB3DC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813EB3E0 | 3C 80 81 65 */	lis r4, lbl_81655BCC@ha
/* 813EB3E4 | 38 84 5B CC */	addi r4, r4, lbl_81655BCC@l
/* 813EB3E8 | 38 A0 00 01 */	li r5, 0x1
/* 813EB3EC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB3F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB3F4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB3F8 | 7D 89 03 A6 */	mtctr r12
/* 813EB3FC | 4E 80 04 21 */	bctrl
/* 813EB400 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813EB404 | 38 80 00 03 */	li r4, 0x3
/* 813EB408 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813EB40C | 60 00 00 01 */	ori r0, r0, 0x1
/* 813EB410 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813EB414 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813EB418 | 4B F7 F6 B9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813EB41C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813EB420 | 41 82 00 30 */	beq .L_813EB450
/* 813EB424 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813EB428 | 38 80 00 03 */	li r4, 0x3
/* 813EB42C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB430 | 48 12 6E E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB434 | 38 00 00 00 */	li r0, 0x0
/* 813EB438 | 38 80 00 03 */	li r4, 0x3
/* 813EB43C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813EB440 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813EB444 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813EB448 | 48 12 6E D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813EB44C | 4B F7 E7 D9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_813EB450:
/* 813EB450 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813EB454 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813EB458 | 7C 08 03 A6 */	mtlr r0
/* 813EB45C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813EB460 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EB330

# .text:0xAA8 | 0x813EB464 | size: 0xB8
.fn iplSDMenuButton_813EB464, global
/* 813EB464 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813EB468 | 7C 08 02 A6 */	mflr r0
/* 813EB46C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813EB470 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813EB474 | 48 20 E0 55 */	bl _savegpr_29
/* 813EB478 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813EB47C | 7C 7D 1B 78 */	mr r29, r3
/* 813EB480 | 7C 9E 23 78 */	mr r30, r4
/* 813EB484 | 40 80 00 80 */	bge .L_813EB504
/* 813EB488 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813EB48C | 7C A4 2B 78 */	mr r4, r5
/* 813EB490 | 38 A0 00 01 */	li r5, 0x1
/* 813EB494 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813EB498 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB49C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813EB4A0 | 7D 89 03 A6 */	mtctr r12
/* 813EB4A4 | 4E 80 04 21 */	bctrl
/* 813EB4A8 | C0 22 87 B0 */	lfs f1, lbl_81694BB0@sda21(r0)
/* 813EB4AC | 7C 7F 1B 78 */	mr r31, r3
/* 813EB4B0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813EB4B4 | FC 40 08 90 */	fmr f2, f1
/* 813EB4B8 | FC 60 08 90 */	fmr f3, f1
/* 813EB4BC | 4B F7 75 A1 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813EB4C0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813EB4C4 | 38 7F 00 84 */	addi r3, r31, 0x84
/* 813EB4C8 | 7C 85 23 78 */	mr r5, r4
/* 813EB4CC | 48 15 5F F1 */	bl fn_815414BC
/* 813EB4D0 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 813EB4D4 | 57 C0 10 3A */	slwi r0, r30, 2
/* 813EB4D8 | C0 02 87 C8 */	lfs f0, lbl_81694BC8@sda21(r0)
/* 813EB4DC | 7F FD 02 14 */	add r31, r29, r0
/* 813EB4E0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813EB4E4 | 38 A0 00 01 */	li r5, 0x1
/* 813EB4E8 | EC 01 00 2A */	fadds f0, f1, f0
/* 813EB4EC | 38 C0 00 00 */	li r6, 0x0
/* 813EB4F0 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813EB4F4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813EB4F8 | 4B FE 62 D5 */	bl setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi
/* 813EB4FC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813EB500 | 4B FE 62 A5 */	bl fadeinNoSetTextbox__Q33ipl5scene11TextBalloonFv
.L_813EB504:
/* 813EB504 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813EB508 | 48 20 E0 0D */	bl _restgpr_29
/* 813EB50C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813EB510 | 7C 08 03 A6 */	mtlr r0
/* 813EB514 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813EB518 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EB464

# .text:0xB60 | 0x813EB51C | size: 0xCC
.fn iplSDMenuButton_813EB51C, global
/* 813EB51C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813EB520 | 7C 08 02 A6 */	mflr r0
/* 813EB524 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813EB528 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EB52C | 48 20 DF 95 */	bl _savegpr_27
/* 813EB530 | 7C 7B 1B 78 */	mr r27, r3
/* 813EB534 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813EB538 | 7C 9C 23 78 */	mr r28, r4
/* 813EB53C | 7C BD 2B 78 */	mr r29, r5
/* 813EB540 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB544 | 7C DE 33 78 */	mr r30, r6
/* 813EB548 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813EB54C | 7D 89 03 A6 */	mtctr r12
/* 813EB550 | 4E 80 04 21 */	bctrl
/* 813EB554 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813EB558 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813EB55C | 7D 89 03 A6 */	mtctr r12
/* 813EB560 | 4E 80 04 21 */	bctrl
/* 813EB564 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813EB568 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813EB56C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813EB570 | 38 80 00 05 */	li r4, 0x5
/* 813EB574 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813EB578 | 48 01 FB C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813EB57C | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813EB580 | 38 63 00 70 */	addi r3, r3, 0x70
/* 813EB584 | 41 82 00 24 */	beq .L_813EB5A8
/* 813EB588 | 40 80 00 28 */	bge .L_813EB5B0
/* 813EB58C | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813EB590 | 40 80 00 08 */	bge .L_813EB598
/* 813EB594 | 48 00 00 1C */	b .L_813EB5B0
.L_813EB598:
/* 813EB598 | 7F E4 FB 78 */	mr r4, r31
/* 813EB59C | 7F C5 F3 78 */	mr r5, r30
/* 813EB5A0 | 4B FF F8 A5 */	bl iplSDMenuButton_813EAE44
/* 813EB5A4 | 48 00 00 0C */	b .L_813EB5B0
.L_813EB5A8:
/* 813EB5A8 | 7F E4 FB 78 */	mr r4, r31
/* 813EB5AC | 4B FF F9 A9 */	bl iplSDMenuButton_813EAF54
.L_813EB5B0:
/* 813EB5B0 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813EB5B4 | 7F 63 DB 78 */	mr r3, r27
/* 813EB5B8 | 7F 84 E3 78 */	mr r4, r28
/* 813EB5BC | 7F A5 EB 78 */	mr r5, r29
/* 813EB5C0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813EB5C4 | 7F C6 F3 78 */	mr r6, r30
/* 813EB5C8 | 7D 89 03 A6 */	mtctr r12
/* 813EB5CC | 4E 80 04 21 */	bctrl
/* 813EB5D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813EB5D4 | 48 20 DF 39 */	bl _restgpr_27
/* 813EB5D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813EB5DC | 7C 08 03 A6 */	mtlr r0
/* 813EB5E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813EB5E4 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EB51C

# .text:0xC2C | 0x813EB5E8 | size: 0x4
.fn iplSDMenuButton_813EB5E8, global
/* 813EB5E8 | 4E 80 00 20 */	blr
.endfn iplSDMenuButton_813EB5E8

# 0x81655AC0..0x81655CA0 | size: 0x1E0
.data
.balign 8

# .data:0x0 | 0x81655AC0 | size: 0x103
.obj lbl_81655AC0, global
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x645F4274
	.4byte 0x6E2E6272
	.4byte 0x6C797400
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x645F4274
	.4byte 0x6E5F4F6E
	.4byte 0x5F526F6F
	.4byte 0x702E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x645F4274
	.4byte 0x6E5F4274
	.4byte 0x6E4C5F49
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x42746E5F
	.4byte 0x4C5F496E
	.4byte 0x4F757400
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x645F4274
	.4byte 0x6E5F4274
	.4byte 0x6E4C5F4F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D6E5F
	.4byte 0x53646361
	.4byte 0x72645F42
	.4byte 0x746E5F49
	.4byte 0x6E736572
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D6E5F53
	.4byte 0x64636172
	.4byte 0x645F4274
	.4byte 0x6E5F4274
	.4byte 0x6E4C5F4F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x42746E5F
	.4byte 0x4C5F4F6E
	.4byte 0x006D6E5F
	.4byte 0x53646361
	.4byte 0x72645F42
	.4byte 0x746E5F42
	.4byte 0x746E4C5F
	.4byte 0x526F6C6C
	.4byte 0x4F766572
	.4byte 0x2E62726C
	.4byte 0x616E0042
	.4byte 0x746E5F4C
	.4byte 0x5F526F6C
	.4byte 0x6C006D6E
	.4byte 0x5F536463
	.4byte 0x6172645F
	.4byte 0x42746E5F
	.4byte 0x42746E4C
	.4byte 0x5F526F6C
	.4byte 0x6C4F7574
	.4byte 0x2E62726C
	.byte 0x61, 0x6E, 0x00
.endobj lbl_81655AC0

# .data:0x103 | 0x81655BC3 | size: 0x9
.obj lbl_81655BC3, global
	.string "N_Btn_On"
.endobj lbl_81655BC3

# .data:0x10C | 0x81655BCC | size: 0x23
.obj lbl_81655BCC, global
	.4byte 0x4E5F4274
	.4byte 0x6E5F4F66
	.4byte 0x66006D79
	.4byte 0x5F49706C
	.4byte 0x546F7042
	.4byte 0x616C6C6F
	.4byte 0x6F6E5F61
	.4byte 0x2E62726C
	.byte 0x79, 0x74, 0x00
.endobj lbl_81655BCC

# .data:0x12F | 0x81655BEF | size: 0xB1
.obj lbl_81655BEF, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F54
	.4byte 0x41524745
	.4byte 0x5454494E
	.4byte 0x47000000
	.4byte 0x00000000
	.4byte 0x00000000
	.byte 0x00
	.4byte iplSDMenuButton_813EB51C
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte iplSDMenuButton_813EB5E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81655BEF

# 0x81694BA0..0x81694BD0 | size: 0x30
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694BA0 | size: 0x4
.obj lbl_81694BA0, global
	.4byte 0x000000A1
.endobj lbl_81694BA0

# .sdata2:0x4 | 0x81694BA4 | size: 0x4
.obj lbl_81694BA4, global
	.float -152
.endobj lbl_81694BA4

# .sdata2:0x8 | 0x81694BA8 | size: 0x4
.obj lbl_81694BA8, global
	.float -245
.endobj lbl_81694BA8

# .sdata2:0xC | 0x81694BAC | size: 0x4
.obj lbl_81694BAC, global
	.float -172
.endobj lbl_81694BAC

# .sdata2:0x10 | 0x81694BB0 | size: 0x4
.obj lbl_81694BB0, global
	.float 0
.endobj lbl_81694BB0

# .sdata2:0x14 | 0x81694BB4 | size: 0x4
.obj lbl_81694BB4, global
	.float 200
.endobj lbl_81694BB4

# .sdata2:0x18 | 0x81694BB8 | size: 0x4
.obj lbl_81694BB8, global
	.float 110
.endobj lbl_81694BB8

# .sdata2:0x1C | 0x81694BBC | size: 0x4
.obj lbl_81694BBC, global
	.float 15
.endobj lbl_81694BBC

# .sdata2:0x20 | 0x81694BC0 | size: 0x8
.obj lbl_81694BC0, global
	.double 4503599627370496
.endobj lbl_81694BC0

# .sdata2:0x28 | 0x81694BC8 | size: 0x4
.obj lbl_81694BC8, global
	.float 50
.endobj lbl_81694BC8

# .sdata2:0x2C | 0x81694BCC | size: 0x4
.obj gap_09_81694BCC_sdata2, global
.hidden gap_09_81694BCC_sdata2
	.4byte 0x00000000
.endobj gap_09_81694BCC_sdata2

# 0x81696F30..0x81696F50 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696F30 | size: 0x4
.obj lbl_81696F30, global
	.4byte 0x41630000
.endobj lbl_81696F30

# .sdata:0x4 | 0x81696F34 | size: 0x4
.obj lbl_81696F34, global
	.4byte lbl_81696F30
.endobj lbl_81696F34

# .sdata:0x8 | 0x81696F38 | size: 0x4
.obj lbl_81696F38, global
	.string "arc"
.endobj lbl_81696F38

# .sdata:0xC | 0x81696F3C | size: 0x8
.obj lbl_81696F3C, global
	.string "On_Roop"
.endobj lbl_81696F3C

# .sdata:0x14 | 0x81696F44 | size: 0x8
.obj lbl_81696F44, global
	.string "Insert\000"
.endobj lbl_81696F44

# .sdata:0x1C | 0x81696F4C | size: 0x4
.obj gap_11_81696F4C_sdata, global
.hidden gap_11_81696F4C_sdata
	.4byte 0x00000000
.endobj gap_11_81696F4C_sdata
