.include "macros.inc"
.file "www_window.cpp"

# 0x8136E900..0x8136F640 | size: 0xD40
.text
.balign 4

# .text:0x0 | 0x8136E900 | size: 0x108
# ext_ead::www::BrowserWindow::BrowserWindow(ext_ead::www::BrowserThread*)
.fn __ct__Q37ext_ead3www13BrowserWindowFPQ37ext_ead3www13BrowserThread, global
/* 8136E900 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136E904 | 7C 08 02 A6 */	mflr r0
/* 8136E908 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136E90C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136E910 | 48 28 AB B9 */	bl _savegpr_29
/* 8136E914 | 3C E0 81 64 */	lis r7, __vt__Q37ext_ead3www13BrowserWindow@ha
/* 8136E918 | 3C C0 81 64 */	lis r6, "__vt__Q37ext_ead3www58ut_message_cmd<Q47ext_ead3www13BrowserWindow9WindowCmd,32>"@ha
/* 8136E91C | 38 E7 3F C4 */	addi r7, r7, __vt__Q37ext_ead3www13BrowserWindow@l
/* 8136E920 | 3B E0 00 00 */	li r31, 0x0
/* 8136E924 | 3B C3 00 88 */	addi r30, r3, 0x88
/* 8136E928 | 38 C6 3F D0 */	addi r6, r6, "__vt__Q37ext_ead3www58ut_message_cmd<Q47ext_ead3www13BrowserWindow9WindowCmd,32>"@l
/* 8136E92C | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8136E930 | 7C 7D 1B 78 */	mr r29, r3
/* 8136E934 | 38 9E 01 A4 */	addi r4, r30, 0x1a4
/* 8136E938 | 38 A0 00 20 */	li r5, 0x20
/* 8136E93C | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 8136E940 | 93 E3 00 84 */	stw r31, 0x84(r3)
/* 8136E944 | 7F C3 F3 78 */	mr r3, r30
/* 8136E948 | 90 DE 00 00 */	stw r6, 0x0(r30)
/* 8136E94C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8136E950 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136E954 | 7D 89 03 A6 */	mtctr r12
/* 8136E958 | 4E 80 04 21 */	bctrl
/* 8136E95C | 38 7E 00 24 */	addi r3, r30, 0x24
/* 8136E960 | 38 80 00 00 */	li r4, 0x0
/* 8136E964 | 38 A0 01 00 */	li r5, 0x100
/* 8136E968 | 4B FC 19 CD */	bl memset
/* 8136E96C | 38 00 00 06 */	li r0, 0x6
/* 8136E970 | 93 FD 02 B0 */	stw r31, 0x2b0(r29)
/* 8136E974 | 39 00 00 00 */	li r8, 0x0
/* 8136E978 | 38 60 00 00 */	li r3, 0x0
/* 8136E97C | 90 1D 02 AC */	stw r0, 0x2ac(r29)
/* 8136E980 | 38 80 00 00 */	li r4, 0x0
/* 8136E984 | 38 00 00 03 */	li r0, 0x3
/* 8136E988 | 9B FD 02 C4 */	stb r31, 0x2c4(r29)
/* 8136E98C | 9B FD 02 C5 */	stb r31, 0x2c5(r29)
/* 8136E990 | 9B FD 02 C6 */	stb r31, 0x2c6(r29)
/* 8136E994 | 9B FD 02 C7 */	stb r31, 0x2c7(r29)
/* 8136E998 | 9B FD 02 C8 */	stb r31, 0x2c8(r29)
/* 8136E99C | 9B FD 02 C9 */	stb r31, 0x2c9(r29)
.L_8136E9A0:
/* 8136E9A0 | 7C FD 1A 14 */	add r7, r29, r3
/* 8136E9A4 | 38 A0 00 00 */	li r5, 0x0
/* 8136E9A8 | 7C 09 03 A6 */	mtctr r0
.L_8136E9AC:
/* 8136E9AC | 7C C7 2A 14 */	add r6, r7, r5
/* 8136E9B0 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 8136E9B4 | 93 E6 00 0C */	stw r31, 0xc(r6)
/* 8136E9B8 | 42 00 FF F4 */	bdnz .L_8136E9AC
/* 8136E9BC | 39 08 00 01 */	addi r8, r8, 0x1
/* 8136E9C0 | 7C BD 22 14 */	add r5, r29, r4
/* 8136E9C4 | 2C 08 00 02 */	cmpwi r8, 0x2
/* 8136E9C8 | 93 E5 02 B4 */	stw r31, 0x2b4(r5)
/* 8136E9CC | 38 63 00 0C */	addi r3, r3, 0xc
/* 8136E9D0 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8136E9D4 | 41 80 FF CC */	blt .L_8136E9A0
/* 8136E9D8 | 38 00 00 00 */	li r0, 0x0
/* 8136E9DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136E9E0 | 90 1D 02 BC */	stw r0, 0x2bc(r29)
/* 8136E9E4 | 7F A3 EB 78 */	mr r3, r29
/* 8136E9E8 | 90 1D 02 C0 */	stw r0, 0x2c0(r29)
/* 8136E9EC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8136E9F0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8136E9F4 | 48 28 AB 21 */	bl _restgpr_29
/* 8136E9F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136E9FC | 7C 08 03 A6 */	mtlr r0
/* 8136EA00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136EA04 | 4E 80 00 20 */	blr
.endfn __ct__Q37ext_ead3www13BrowserWindowFPQ37ext_ead3www13BrowserThread

# .text:0x108 | 0x8136EA08 | size: 0x40
# ext_ead::www::ut_message_cmd<ext_ead::www::BrowserWindow::WindowCmd, 32>::~ut_message_cmd()
.fn "__dt__Q37ext_ead3www58ut_message_cmd<Q47ext_ead3www13BrowserWindow9WindowCmd,32>Fv", global
/* 8136EA08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136EA0C | 7C 08 02 A6 */	mflr r0
/* 8136EA10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136EA14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136EA18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136EA1C | 7C 7F 1B 78 */	mr r31, r3
/* 8136EA20 | 41 82 00 10 */	beq .L_8136EA30
/* 8136EA24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136EA28 | 40 81 00 08 */	ble .L_8136EA30
/* 8136EA2C | 48 28 96 B9 */	bl __dl__FPv
.L_8136EA30:
/* 8136EA30 | 7F E3 FB 78 */	mr r3, r31
/* 8136EA34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136EA38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136EA3C | 7C 08 03 A6 */	mtlr r0
/* 8136EA40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136EA44 | 4E 80 00 20 */	blr
.endfn "__dt__Q37ext_ead3www58ut_message_cmd<Q47ext_ead3www13BrowserWindow9WindowCmd,32>Fv"

# .text:0x148 | 0x8136EA48 | size: 0x6C
# ext_ead::www::BrowserWindow::~BrowserWindow()
.fn __dt__Q37ext_ead3www13BrowserWindowFv, global
/* 8136EA48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136EA4C | 7C 08 02 A6 */	mflr r0
/* 8136EA50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136EA54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136EA58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136EA5C | 7C 9F 23 78 */	mr r31, r4
/* 8136EA60 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136EA64 | 7C 7E 1B 78 */	mr r30, r3
/* 8136EA68 | 41 82 00 30 */	beq .L_8136EA98
/* 8136EA6C | 3C 80 81 64 */	lis r4, __vt__Q37ext_ead3www13BrowserWindow@ha
/* 8136EA70 | 38 84 3F C4 */	addi r4, r4, __vt__Q37ext_ead3www13BrowserWindow@l
/* 8136EA74 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8136EA78 | 48 00 02 5D */	bl CloseWindow__Q37ext_ead3www13BrowserWindowFv
/* 8136EA7C | 38 7E 00 88 */	addi r3, r30, 0x88
/* 8136EA80 | 38 80 FF FF */	li r4, -0x1
/* 8136EA84 | 4B FF FF 85 */	bl "__dt__Q37ext_ead3www58ut_message_cmd<Q47ext_ead3www13BrowserWindow9WindowCmd,32>Fv"
/* 8136EA88 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136EA8C | 40 81 00 0C */	ble .L_8136EA98
/* 8136EA90 | 7F C3 F3 78 */	mr r3, r30
/* 8136EA94 | 48 28 96 51 */	bl __dl__FPv
.L_8136EA98:
/* 8136EA98 | 7F C3 F3 78 */	mr r3, r30
/* 8136EA9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136EAA0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136EAA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136EAA8 | 7C 08 03 A6 */	mtlr r0
/* 8136EAAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136EAB0 | 4E 80 00 20 */	blr
.endfn __dt__Q37ext_ead3www13BrowserWindowFv

# .text:0x1B4 | 0x8136EAB4 | size: 0x1FC
# ext_ead::www::BrowserWindow::CreateWindow(int, int, int, int)
.fn CreateWindow__Q37ext_ead3www13BrowserWindowFiiii, global
/* 8136EAB4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8136EAB8 | 7C 08 02 A6 */	mflr r0
/* 8136EABC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8136EAC0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8136EAC4 | 48 28 A9 D9 */	bl _savegpr_18
/* 8136EAC8 | B0 83 00 04 */	sth r4, 0x4(r3)
/* 8136EACC | 38 00 00 00 */	li r0, 0x0
/* 8136EAD0 | 7C 7D 1B 78 */	mr r29, r3
/* 8136EAD4 | 7C DE 33 78 */	mr r30, r6
/* 8136EAD8 | B0 A3 00 06 */	sth r5, 0x6(r3)
/* 8136EADC | 7C FF 3B 78 */	mr r31, r7
/* 8136EAE0 | 3A 80 00 00 */	li r20, 0x0
/* 8136EAE4 | 3B 80 00 00 */	li r28, 0x0
/* 8136EAE8 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8136EAEC | 3B 60 00 00 */	li r27, 0x0
/* 8136EAF0 | 3F 00 81 64 */	lis r24, lbl_81643B40@ha
/* 8136EAF4 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 8136EAF8 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8136EAFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136EB00 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 8136EB04 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8136EB08 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8136EB0C | 90 01 00 24 */	stw r0, 0x24(r1)
.L_8136EB10:
/* 8136EB10 | 7C 7D E2 14 */	add r3, r29, r28
/* 8136EB14 | 7E DD DA 14 */	add r22, r29, r27
/* 8136EB18 | 3A E3 00 24 */	addi r23, r3, 0x24
/* 8136EB1C | 3A 60 00 00 */	li r19, 0x0
/* 8136EB20 | 3B 40 00 00 */	li r26, 0x0
/* 8136EB24 | 3B 20 00 00 */	li r25, 0x0
.L_8136EB28:
/* 8136EB28 | 7C 77 D2 14 */	add r3, r23, r26
/* 8136EB2C | 38 81 00 18 */	addi r4, r1, 0x18
/* 8136EB30 | 48 00 01 81 */	bl __as__7WWWRectFRC7WWWRect
/* 8136EB34 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 8136EB38 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8136EB3C | 38 A0 00 04 */	li r5, 0x4
/* 8136EB40 | 38 C0 00 00 */	li r6, 0x0
/* 8136EB44 | 38 E0 00 00 */	li r7, 0x0
/* 8136EB48 | 48 1D 6F 45 */	bl GXGetTexBufferSize
/* 8136EB4C | 7C 72 1B 78 */	mr r18, r3
/* 8136EB50 | 7E B6 CA 14 */	add r21, r22, r25
/* 8136EB54 | 38 80 00 20 */	li r4, 0x20
/* 8136EB58 | 4B FF F4 11 */	bl allocMem2__Q37ext_ead3www4HeapFUli
/* 8136EB5C | 90 75 00 0C */	stw r3, 0xc(r21)
/* 8136EB60 | 7E 45 93 78 */	mr r5, r18
/* 8136EB64 | 38 80 00 00 */	li r4, 0x0
/* 8136EB68 | 4B FC 17 CD */	bl memset
/* 8136EB6C | 80 75 00 0C */	lwz r3, 0xc(r21)
/* 8136EB70 | 7E 44 93 78 */	mr r4, r18
/* 8136EB74 | 48 1B ED F1 */	bl DCStoreRange
/* 8136EB78 | 80 F5 00 0C */	lwz r7, 0xc(r21)
/* 8136EB7C | 7E 65 9B 78 */	mr r5, r19
/* 8136EB80 | 7E 86 A3 78 */	mr r6, r20
/* 8136EB84 | 38 98 3B 40 */	addi r4, r24, lbl_81643B40@l
/* 8136EB88 | 38 60 00 03 */	li r3, 0x3
/* 8136EB8C | 4C C6 31 82 */	crclr cr1eq
/* 8136EB90 | 4B FF FD 05 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136EB94 | 3A 73 00 01 */	addi r19, r19, 0x1
/* 8136EB98 | 3B 39 00 04 */	addi r25, r25, 0x4
/* 8136EB9C | 2C 13 00 03 */	cmpwi r19, 0x3
/* 8136EBA0 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 8136EBA4 | 41 80 FF 84 */	blt .L_8136EB28
/* 8136EBA8 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 8136EBAC | 3B 7B 00 0C */	addi r27, r27, 0xc
/* 8136EBB0 | 2C 14 00 02 */	cmpwi r20, 0x2
/* 8136EBB4 | 3B 9C 00 30 */	addi r28, r28, 0x30
/* 8136EBB8 | 41 80 FF 58 */	blt .L_8136EB10
/* 8136EBBC | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8136EBC0 | 38 9D 00 84 */	addi r4, r29, 0x84
/* 8136EBC4 | 81 8D A7 9C */	lwz r12, WWWCreateBrowserWindow@sda21(r0)
/* 8136EBC8 | 38 A0 00 00 */	li r5, 0x0
/* 8136EBCC | 80 63 06 7C */	lwz r3, 0x67c(r3)
/* 8136EBD0 | 7D 89 03 A6 */	mtctr r12
/* 8136EBD4 | 4E 80 04 21 */	bctrl
/* 8136EBD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136EBDC | 41 82 00 20 */	beq .L_8136EBFC
/* 8136EBE0 | 3C 80 81 64 */	lis r4, lbl_81643B5E@ha
/* 8136EBE4 | 38 60 00 01 */	li r3, 0x1
/* 8136EBE8 | 38 84 3B 5E */	addi r4, r4, lbl_81643B5E@l
/* 8136EBEC | 4C C6 31 82 */	crclr cr1eq
/* 8136EBF0 | 4B FF FC A5 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136EBF4 | 38 60 00 00 */	li r3, 0x0
/* 8136EBF8 | 48 00 00 A0 */	b .L_8136EC98
.L_8136EBFC:
/* 8136EBFC | 38 00 00 00 */	li r0, 0x0
/* 8136EC00 | 81 8D A7 AC */	lwz r12, WWWSetBrowserWindowRect@sda21(r0)
/* 8136EC04 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8136EC08 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136EC0C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8136EC10 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8136EC14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136EC18 | A0 1D 00 04 */	lhz r0, 0x4(r29)
/* 8136EC1C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8136EC20 | A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 8136EC24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136EC28 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8136EC2C | 7D 89 03 A6 */	mtctr r12
/* 8136EC30 | 4E 80 04 21 */	bctrl
/* 8136EC34 | 81 8D A8 28 */	lwz r12, WWWSetImageMode@sda21(r0)
/* 8136EC38 | 38 80 00 04 */	li r4, 0x4
/* 8136EC3C | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8136EC40 | 7D 89 03 A6 */	mtctr r12
/* 8136EC44 | 4E 80 04 21 */	bctrl
/* 8136EC48 | 81 8D A8 20 */	lwz r12, WWWSetRenderingMode@sda21(r0)
/* 8136EC4C | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8136EC50 | 80 9D 02 AC */	lwz r4, 0x2ac(r29)
/* 8136EC54 | 7D 89 03 A6 */	mtctr r12
/* 8136EC58 | 4E 80 04 21 */	bctrl
/* 8136EC5C | 81 8D A7 B8 */	lwz r12, WWWShowBrowserWindow@sda21(r0)
/* 8136EC60 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8136EC64 | 7D 89 03 A6 */	mtctr r12
/* 8136EC68 | 4E 80 04 21 */	bctrl
/* 8136EC6C | 81 8D A7 B0 */	lwz r12, WWWRaiseBrowserWindow@sda21(r0)
/* 8136EC70 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8136EC74 | 7D 89 03 A6 */	mtctr r12
/* 8136EC78 | 4E 80 04 21 */	bctrl
/* 8136EC7C | 81 8D A7 F4 */	lwz r12, WWWSetFocus@sda21(r0)
/* 8136EC80 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8136EC84 | 7D 89 03 A6 */	mtctr r12
/* 8136EC88 | 4E 80 04 21 */	bctrl
/* 8136EC8C | 7F A3 EB 78 */	mr r3, r29
/* 8136EC90 | 48 00 00 F1 */	bl GotoHome__Q37ext_ead3www13BrowserWindowFv
/* 8136EC94 | 80 7D 00 84 */	lwz r3, 0x84(r29)
.L_8136EC98:
/* 8136EC98 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8136EC9C | 48 28 A8 4D */	bl _restgpr_18
/* 8136ECA0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8136ECA4 | 7C 08 03 A6 */	mtlr r0
/* 8136ECA8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8136ECAC | 4E 80 00 20 */	blr
.endfn CreateWindow__Q37ext_ead3www13BrowserWindowFiiii

# .text:0x3B0 | 0x8136ECB0 | size: 0x24
# WWWRect::operator=(const WWWRect&)
.fn __as__7WWWRectFRC7WWWRect, global
/* 8136ECB0 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 8136ECB4 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 8136ECB8 | 80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8136ECBC | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 8136ECC0 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 8136ECC4 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 8136ECC8 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 8136ECCC | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8136ECD0 | 4E 80 00 20 */	blr
.endfn __as__7WWWRectFRC7WWWRect

# .text:0x3D4 | 0x8136ECD4 | size: 0x9C
# ext_ead::www::BrowserWindow::CloseWindow()
.fn CloseWindow__Q37ext_ead3www13BrowserWindowFv, global
/* 8136ECD4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136ECD8 | 7C 08 02 A6 */	mflr r0
/* 8136ECDC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136ECE0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136ECE4 | 48 28 A7 D1 */	bl _savegpr_24
/* 8136ECE8 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 8136ECEC | 7C 78 1B 78 */	mr r24, r3
/* 8136ECF0 | 81 8D A7 A0 */	lwz r12, WWWCloseBrowserWindow@sda21(r0)
/* 8136ECF4 | 80 64 06 7C */	lwz r3, 0x67c(r4)
/* 8136ECF8 | 80 98 00 84 */	lwz r4, 0x84(r24)
/* 8136ECFC | 7D 89 03 A6 */	mtctr r12
/* 8136ED00 | 4E 80 04 21 */	bctrl
/* 8136ED04 | 3B A0 00 00 */	li r29, 0x0
/* 8136ED08 | 3B 40 00 00 */	li r26, 0x0
/* 8136ED0C | 93 B8 00 84 */	stw r29, 0x84(r24)
/* 8136ED10 | 3B E0 00 00 */	li r31, 0x0
.L_8136ED14:
/* 8136ED14 | 7F 98 FA 14 */	add r28, r24, r31
/* 8136ED18 | 3B 20 00 00 */	li r25, 0x0
/* 8136ED1C | 3B C0 00 00 */	li r30, 0x0
.L_8136ED20:
/* 8136ED20 | 7F 7C F2 14 */	add r27, r28, r30
/* 8136ED24 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8136ED28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136ED2C | 41 82 00 0C */	beq .L_8136ED38
/* 8136ED30 | 4B FF F2 4D */	bl freeMem2__Q37ext_ead3www4HeapFPv
/* 8136ED34 | 93 BB 00 0C */	stw r29, 0xc(r27)
.L_8136ED38:
/* 8136ED38 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8136ED3C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8136ED40 | 2C 19 00 03 */	cmpwi r25, 0x3
/* 8136ED44 | 41 80 FF DC */	blt .L_8136ED20
/* 8136ED48 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8136ED4C | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8136ED50 | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 8136ED54 | 41 80 FF C0 */	blt .L_8136ED14
/* 8136ED58 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136ED5C | 48 28 A7 A5 */	bl _restgpr_24
/* 8136ED60 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136ED64 | 7C 08 03 A6 */	mtlr r0
/* 8136ED68 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136ED6C | 4E 80 00 20 */	blr
.endfn CloseWindow__Q37ext_ead3www13BrowserWindowFv

# .text:0x470 | 0x8136ED70 | size: 0x10
# ext_ead::www::BrowserWindow::PrevPage()
.fn PrevPage__Q37ext_ead3www13BrowserWindowFv, global
/* 8136ED70 | 81 8D A7 D8 */	lwz r12, WWWPrevPage@sda21(r0)
/* 8136ED74 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 8136ED78 | 7D 89 03 A6 */	mtctr r12
/* 8136ED7C | 4E 80 04 20 */	bctr
.endfn PrevPage__Q37ext_ead3www13BrowserWindowFv

# .text:0x480 | 0x8136ED80 | size: 0x38
# ext_ead::www::BrowserWindow::GotoHome()
.fn GotoHome__Q37ext_ead3www13BrowserWindowFv, global
/* 8136ED80 | 80 8D A9 3C */	lwz r4, ScrollState___Q23www9trasition@sda21(r0)
/* 8136ED84 | 80 84 00 38 */	lwz r4, 0x38(r4)
/* 8136ED88 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136ED8C | 41 82 00 14 */	beq .L_8136EDA0
/* 8136ED90 | 81 8D A7 CC */	lwz r12, WWWOpenUrl@sda21(r0)
/* 8136ED94 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 8136ED98 | 7D 89 03 A6 */	mtctr r12
/* 8136ED9C | 4E 80 04 20 */	bctr
.L_8136EDA0:
/* 8136EDA0 | 81 8D A7 CC */	lwz r12, WWWOpenUrl@sda21(r0)
/* 8136EDA4 | 3C 80 81 64 */	lis r4, lbl_81643B82@ha
/* 8136EDA8 | 38 84 3B 82 */	addi r4, r4, lbl_81643B82@l
/* 8136EDAC | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 8136EDB0 | 7D 89 03 A6 */	mtctr r12
/* 8136EDB4 | 4E 80 04 20 */	bctr
.endfn GotoHome__Q37ext_ead3www13BrowserWindowFv

# .text:0x4B8 | 0x8136EDB8 | size: 0x4
# ext_ead::www::BrowserWindow::SendNotifyEvent(WWWEvent, WWWHandleEventData*)
.fn SendNotifyEvent__Q37ext_ead3www13BrowserWindowF8WWWEventP18WWWHandleEventData, global
/* 8136EDB8 | 48 00 00 6C */	b ExecWwwEvent___Q37ext_ead3www13BrowserWindowFiP18WWWHandleEventData
.endfn SendNotifyEvent__Q37ext_ead3www13BrowserWindowF8WWWEventP18WWWHandleEventData

# .text:0x4BC | 0x8136EDBC | size: 0x4
# ext_ead::www::BrowserWindow::ExecuteEvent()
.fn ExecuteEvent__Q37ext_ead3www13BrowserWindowFv, global
/* 8136EDBC | 48 00 01 DC */	b HandleNotifyEvent___Q37ext_ead3www13BrowserWindowFv
.endfn ExecuteEvent__Q37ext_ead3www13BrowserWindowFv

# .text:0x4C0 | 0x8136EDC0 | size: 0x64
# ext_ead::www::BrowserWindow::UpdateTexture()
.fn UpdateTexture__Q37ext_ead3www13BrowserWindowFv, global
/* 8136EDC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136EDC4 | 7C 08 02 A6 */	mflr r0
/* 8136EDC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136EDCC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136EDD0 | 7C 7F 1B 78 */	mr r31, r3
/* 8136EDD4 | 88 03 02 C4 */	lbz r0, 0x2c4(r3)
/* 8136EDD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136EDDC | 40 82 00 34 */	bne .L_8136EE10
/* 8136EDE0 | 88 03 02 C5 */	lbz r0, 0x2c5(r3)
/* 8136EDE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136EDE8 | 41 82 00 28 */	beq .L_8136EE10
/* 8136EDEC | 3C 80 81 64 */	lis r4, lbl_81643B9D@ha
/* 8136EDF0 | 38 60 00 03 */	li r3, 0x3
/* 8136EDF4 | 38 84 3B 9D */	addi r4, r4, lbl_81643B9D@l
/* 8136EDF8 | 4C C6 31 82 */	crclr cr1eq
/* 8136EDFC | 4B FF FA 99 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136EE00 | 7F E3 FB 78 */	mr r3, r31
/* 8136EE04 | 48 00 02 65 */	bl TileBlit___Q37ext_ead3www13BrowserWindowFv
/* 8136EE08 | 38 00 00 00 */	li r0, 0x0
/* 8136EE0C | 98 1F 02 C5 */	stb r0, 0x2c5(r31)
.L_8136EE10:
/* 8136EE10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136EE14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136EE18 | 7C 08 03 A6 */	mtlr r0
/* 8136EE1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136EE20 | 4E 80 00 20 */	blr
.endfn UpdateTexture__Q37ext_ead3www13BrowserWindowFv

# .text:0x524 | 0x8136EE24 | size: 0x174
# ext_ead::www::BrowserWindow::ExecWwwEvent_(int, WWWHandleEventData*)
.fn ExecWwwEvent___Q37ext_ead3www13BrowserWindowFiP18WWWHandleEventData, global
/* 8136EE24 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8136EE28 | 7C 08 02 A6 */	mflr r0
/* 8136EE2C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8136EE30 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8136EE34 | 48 28 A6 95 */	bl _savegpr_29
/* 8136EE38 | 2C 04 00 07 */	cmpwi r4, 0x7
/* 8136EE3C | 7C 7D 1B 78 */	mr r29, r3
/* 8136EE40 | 7C 9E 23 78 */	mr r30, r4
/* 8136EE44 | 7C BF 2B 78 */	mr r31, r5
/* 8136EE48 | 41 82 00 E8 */	beq .L_8136EF30
/* 8136EE4C | 40 80 00 14 */	bge .L_8136EE60
/* 8136EE50 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 8136EE54 | 41 82 00 18 */	beq .L_8136EE6C
/* 8136EE58 | 40 80 00 60 */	bge .L_8136EEB8
/* 8136EE5C | 48 00 01 14 */	b .L_8136EF70
.L_8136EE60:
/* 8136EE60 | 2C 04 00 1E */	cmpwi r4, 0x1e
/* 8136EE64 | 41 82 00 F4 */	beq .L_8136EF58
/* 8136EE68 | 48 00 01 08 */	b .L_8136EF70
.L_8136EE6C:
/* 8136EE6C | 88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 8136EE70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136EE74 | 40 82 00 30 */	bne .L_8136EEA4
/* 8136EE78 | 80 83 02 B0 */	lwz r4, 0x2b0(r3)
/* 8136EE7C | 38 04 00 01 */	addi r0, r4, 0x1
/* 8136EE80 | 54 04 0F FE */	srwi r4, r0, 31
/* 8136EE84 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8136EE88 | 7C 00 22 78 */	xor r0, r0, r4
/* 8136EE8C | 7C 84 00 50 */	subf r4, r4, r0
/* 8136EE90 | 54 80 10 3A */	slwi r0, r4, 2
/* 8136EE94 | 90 83 02 C0 */	stw r4, 0x2c0(r3)
/* 8136EE98 | 7C 83 02 14 */	add r4, r3, r0
/* 8136EE9C | 80 04 02 B4 */	lwz r0, 0x2b4(r4)
/* 8136EEA0 | 90 03 02 BC */	stw r0, 0x2bc(r3)
.L_8136EEA4:
/* 8136EEA4 | 38 00 00 01 */	li r0, 0x1
/* 8136EEA8 | 98 03 02 C8 */	stb r0, 0x2c8(r3)
/* 8136EEAC | 98 03 02 C6 */	stb r0, 0x2c6(r3)
/* 8136EEB0 | 98 03 02 C4 */	stb r0, 0x2c4(r3)
/* 8136EEB4 | 48 00 00 BC */	b .L_8136EF70
.L_8136EEB8:
/* 8136EEB8 | 88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 8136EEBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136EEC0 | 40 82 00 B0 */	bne .L_8136EF70
/* 8136EEC4 | 88 03 02 C8 */	lbz r0, 0x2c8(r3)
/* 8136EEC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136EECC | 40 82 00 30 */	bne .L_8136EEFC
/* 8136EED0 | 80 A3 02 B0 */	lwz r5, 0x2b0(r3)
/* 8136EED4 | 38 80 00 03 */	li r4, 0x3
/* 8136EED8 | 54 A0 10 3A */	slwi r0, r5, 2
/* 8136EEDC | 90 A3 02 C0 */	stw r5, 0x2c0(r3)
/* 8136EEE0 | 7C A3 02 14 */	add r5, r3, r0
/* 8136EEE4 | 80 A5 02 B4 */	lwz r5, 0x2b4(r5)
/* 8136EEE8 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8136EEEC | 7C 05 23 D6 */	divw r0, r5, r4
/* 8136EEF0 | 7C 00 21 D6 */	mullw r0, r0, r4
/* 8136EEF4 | 7C 00 28 50 */	subf r0, r0, r5
/* 8136EEF8 | 90 03 02 BC */	stw r0, 0x2bc(r3)
.L_8136EEFC:
/* 8136EEFC | 80 1D 02 B0 */	lwz r0, 0x2b0(r29)
/* 8136EF00 | 38 A0 00 01 */	li r5, 0x1
/* 8136EF04 | 3C 80 81 64 */	lis r4, lbl_81643BC8@ha
/* 8136EF08 | 98 A3 02 C8 */	stb r5, 0x2c8(r3)
/* 8136EF0C | 54 00 10 3A */	slwi r0, r0, 2
/* 8136EF10 | 98 A3 02 C4 */	stb r5, 0x2c4(r3)
/* 8136EF14 | 7C BD 02 14 */	add r5, r29, r0
/* 8136EF18 | 38 84 3B C8 */	addi r4, r4, lbl_81643BC8@l
/* 8136EF1C | 38 60 00 02 */	li r3, 0x2
/* 8136EF20 | 80 A5 02 B4 */	lwz r5, 0x2b4(r5)
/* 8136EF24 | 4C C6 31 82 */	crclr cr1eq
/* 8136EF28 | 4B FF F9 6D */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136EF2C | 48 00 00 44 */	b .L_8136EF70
.L_8136EF30:
/* 8136EF30 | 48 1C 19 55 */	bl OSDisableInterrupts
/* 8136EF34 | 88 1D 02 C4 */	lbz r0, 0x2c4(r29)
/* 8136EF38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136EF3C | 41 82 00 14 */	beq .L_8136EF50
/* 8136EF40 | 38 80 00 00 */	li r4, 0x0
/* 8136EF44 | 38 00 00 01 */	li r0, 0x1
/* 8136EF48 | 98 9D 02 C4 */	stb r4, 0x2c4(r29)
/* 8136EF4C | 98 1D 02 C5 */	stb r0, 0x2c5(r29)
.L_8136EF50:
/* 8136EF50 | 48 1C 19 5D */	bl OSRestoreInterrupts
/* 8136EF54 | 48 00 00 1C */	b .L_8136EF70
.L_8136EF58:
/* 8136EF58 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8136EF5C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136EF60 | 4B FF EC 91 */	bl CreateImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPC10WWWIMEData
/* 8136EF64 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8136EF68 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136EF6C | 4B FF EB 01 */	bl SendEventFromWindow__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData
.L_8136EF70:
/* 8136EF70 | 7F A3 EB 78 */	mr r3, r29
/* 8136EF74 | 7F C4 F3 78 */	mr r4, r30
/* 8136EF78 | 7F E5 FB 78 */	mr r5, r31
/* 8136EF7C | 48 00 03 7D */	bl ReportEventId___Q37ext_ead3www13BrowserWindowFiPv
/* 8136EF80 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8136EF84 | 48 28 A5 91 */	bl _restgpr_29
/* 8136EF88 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8136EF8C | 7C 08 03 A6 */	mtlr r0
/* 8136EF90 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8136EF94 | 4E 80 00 20 */	blr
.endfn ExecWwwEvent___Q37ext_ead3www13BrowserWindowFiP18WWWHandleEventData

# .text:0x698 | 0x8136EF98 | size: 0xD0
# ext_ead::www::BrowserWindow::HandleNotifyEvent_()
.fn HandleNotifyEvent___Q37ext_ead3www13BrowserWindowFv, global
/* 8136EF98 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136EF9C | 7C 08 02 A6 */	mflr r0
/* 8136EFA0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136EFA4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136EFA8 | 48 28 A5 19 */	bl _savegpr_27
/* 8136EFAC | 7C 7B 1B 78 */	mr r27, r3
/* 8136EFB0 | 48 00 00 24 */	b .L_8136EFD4
.L_8136EFB4:
/* 8136EFB4 | 57 A3 00 06 */	clrrwi r3, r29, 28
/* 8136EFB8 | 3C 03 F0 00 */	subis r0, r3, 0x1000
/* 8136EFBC | 28 00 00 00 */	cmplwi r0, 0x0
/* 8136EFC0 | 40 82 00 14 */	bne .L_8136EFD4
/* 8136EFC4 | 7F 63 DB 78 */	mr r3, r27
/* 8136EFC8 | 7F 85 E3 78 */	mr r5, r28
/* 8136EFCC | 57 A4 01 3E */	clrlwi r4, r29, 4
/* 8136EFD0 | 4B FF FE 55 */	bl ExecWwwEvent___Q37ext_ead3www13BrowserWindowFiP18WWWHandleEventData
.L_8136EFD4:
/* 8136EFD4 | 3B E0 00 00 */	li r31, 0x0
/* 8136EFD8 | 48 1C 18 AD */	bl OSDisableInterrupts
/* 8136EFDC | 81 9B 00 88 */	lwz r12, 0x88(r27)
/* 8136EFE0 | 7C 7E 1B 78 */	mr r30, r3
/* 8136EFE4 | 38 7B 00 88 */	addi r3, r27, 0x88
/* 8136EFE8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136EFEC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136EFF0 | 38 A0 00 00 */	li r5, 0x0
/* 8136EFF4 | 7D 89 03 A6 */	mtctr r12
/* 8136EFF8 | 4E 80 04 21 */	bctrl
/* 8136EFFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136F000 | 41 82 00 40 */	beq .L_8136F040
/* 8136F004 | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 8136F008 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136F00C | 3C 03 00 01 */	addis r0, r3, 0x1
/* 8136F010 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 8136F014 | 41 82 00 10 */	beq .L_8136F024
/* 8136F018 | 38 6D 82 B8 */	li r3, lbl_816962F8@sda21
/* 8136F01C | 4C C6 31 82 */	crclr cr1eq
/* 8136F020 | 48 1B F6 81 */	bl OSReport
.L_8136F024:
/* 8136F024 | 83 BF 00 04 */	lwz r29, 0x4(r31)
/* 8136F028 | 7F E3 FB 78 */	mr r3, r31
/* 8136F02C | 83 9F 00 08 */	lwz r28, 0x8(r31)
/* 8136F030 | 38 80 00 00 */	li r4, 0x0
/* 8136F034 | 38 A0 00 0C */	li r5, 0xc
/* 8136F038 | 4B FC 12 FD */	bl memset
/* 8136F03C | 3B E0 00 01 */	li r31, 0x1
.L_8136F040:
/* 8136F040 | 7F C3 F3 78 */	mr r3, r30
/* 8136F044 | 48 1C 18 69 */	bl OSRestoreInterrupts
/* 8136F048 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136F04C | 40 82 FF 68 */	bne .L_8136EFB4
/* 8136F050 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136F054 | 48 28 A4 B9 */	bl _restgpr_27
/* 8136F058 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136F05C | 7C 08 03 A6 */	mtlr r0
/* 8136F060 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136F064 | 4E 80 00 20 */	blr
.endfn HandleNotifyEvent___Q37ext_ead3www13BrowserWindowFv

# .text:0x768 | 0x8136F068 | size: 0x268
# ext_ead::www::BrowserWindow::TileBlit_()
.fn TileBlit___Q37ext_ead3www13BrowserWindowFv, global
/* 8136F068 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8136F06C | 7C 08 02 A6 */	mflr r0
/* 8136F070 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8136F074 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8136F078 | 48 28 A4 2D */	bl _savegpr_20
/* 8136F07C | 88 03 02 C4 */	lbz r0, 0x2c4(r3)
/* 8136F080 | 7C 7F 1B 78 */	mr r31, r3
/* 8136F084 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136F088 | 40 82 02 30 */	bne .L_8136F2B8
/* 8136F08C | 80 CD A9 3C */	lwz r6, ScrollState___Q23www9trasition@sda21(r0)
/* 8136F090 | 38 80 00 00 */	li r4, 0x0
/* 8136F094 | 80 E3 00 08 */	lwz r7, 0x8(r3)
/* 8136F098 | 38 A0 00 01 */	li r5, 0x1
/* 8136F09C | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8136F0A0 | 38 C0 00 00 */	li r6, 0x0
/* 8136F0A4 | 83 67 06 74 */	lwz r27, 0x674(r7)
/* 8136F0A8 | 54 1C 10 3A */	slwi r28, r0, 2
/* 8136F0AC | 48 00 04 9D */	bl GetTextureBuffer__Q37ext_ead3www13BrowserWindowFibPP7WWWRect
/* 8136F0B0 | 7C 7A 1B 78 */	mr r26, r3
/* 8136F0B4 | 57 9E 10 3A */	slwi r30, r28, 2
/* 8136F0B8 | 3B 20 00 00 */	li r25, 0x0
/* 8136F0BC | 48 00 01 54 */	b .L_8136F210
.L_8136F0C0:
/* 8136F0C0 | 7E FB E2 14 */	add r23, r27, r28
/* 8136F0C4 | 7F 5D D3 78 */	mr r29, r26
/* 8136F0C8 | 7E D7 E2 14 */	add r22, r23, r28
/* 8136F0CC | 7F 78 DB 78 */	mr r24, r27
/* 8136F0D0 | 3A 80 00 00 */	li r20, 0x0
/* 8136F0D4 | 7E B6 E2 14 */	add r21, r22, r28
/* 8136F0D8 | 48 00 01 1C */	b .L_8136F1F4
.L_8136F0DC:
/* 8136F0DC | 80 98 00 00 */	lwz r4, 0x0(r24)
/* 8136F0E0 | 7F E3 FB 78 */	mr r3, r31
/* 8136F0E4 | 48 00 01 ED */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F0E8 | B0 7D 00 00 */	sth r3, 0x0(r29)
/* 8136F0EC | 7F E3 FB 78 */	mr r3, r31
/* 8136F0F0 | 80 98 00 04 */	lwz r4, 0x4(r24)
/* 8136F0F4 | 48 00 01 DD */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F0F8 | B0 7D 00 02 */	sth r3, 0x2(r29)
/* 8136F0FC | 7F E3 FB 78 */	mr r3, r31
/* 8136F100 | 80 98 00 08 */	lwz r4, 0x8(r24)
/* 8136F104 | 48 00 01 CD */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F108 | B0 7D 00 04 */	sth r3, 0x4(r29)
/* 8136F10C | 7F E3 FB 78 */	mr r3, r31
/* 8136F110 | 80 98 00 0C */	lwz r4, 0xc(r24)
/* 8136F114 | 3B 18 00 10 */	addi r24, r24, 0x10
/* 8136F118 | 48 00 01 B9 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F11C | B0 7D 00 06 */	sth r3, 0x6(r29)
/* 8136F120 | 7F E3 FB 78 */	mr r3, r31
/* 8136F124 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 8136F128 | 48 00 01 A9 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F12C | B0 7D 00 08 */	sth r3, 0x8(r29)
/* 8136F130 | 7F E3 FB 78 */	mr r3, r31
/* 8136F134 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8136F138 | 48 00 01 99 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F13C | B0 7D 00 0A */	sth r3, 0xa(r29)
/* 8136F140 | 7F E3 FB 78 */	mr r3, r31
/* 8136F144 | 80 97 00 08 */	lwz r4, 0x8(r23)
/* 8136F148 | 48 00 01 89 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F14C | B0 7D 00 0C */	sth r3, 0xc(r29)
/* 8136F150 | 7F E3 FB 78 */	mr r3, r31
/* 8136F154 | 80 97 00 0C */	lwz r4, 0xc(r23)
/* 8136F158 | 3A F7 00 10 */	addi r23, r23, 0x10
/* 8136F15C | 48 00 01 75 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F160 | B0 7D 00 0E */	sth r3, 0xe(r29)
/* 8136F164 | 7F E3 FB 78 */	mr r3, r31
/* 8136F168 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 8136F16C | 48 00 01 65 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F170 | B0 7D 00 10 */	sth r3, 0x10(r29)
/* 8136F174 | 7F E3 FB 78 */	mr r3, r31
/* 8136F178 | 80 96 00 04 */	lwz r4, 0x4(r22)
/* 8136F17C | 48 00 01 55 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F180 | B0 7D 00 12 */	sth r3, 0x12(r29)
/* 8136F184 | 7F E3 FB 78 */	mr r3, r31
/* 8136F188 | 80 96 00 08 */	lwz r4, 0x8(r22)
/* 8136F18C | 48 00 01 45 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F190 | B0 7D 00 14 */	sth r3, 0x14(r29)
/* 8136F194 | 7F E3 FB 78 */	mr r3, r31
/* 8136F198 | 80 96 00 0C */	lwz r4, 0xc(r22)
/* 8136F19C | 3A D6 00 10 */	addi r22, r22, 0x10
/* 8136F1A0 | 48 00 01 31 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F1A4 | B0 7D 00 16 */	sth r3, 0x16(r29)
/* 8136F1A8 | 7F E3 FB 78 */	mr r3, r31
/* 8136F1AC | 80 95 00 00 */	lwz r4, 0x0(r21)
/* 8136F1B0 | 48 00 01 21 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F1B4 | B0 7D 00 18 */	sth r3, 0x18(r29)
/* 8136F1B8 | 7F E3 FB 78 */	mr r3, r31
/* 8136F1BC | 80 95 00 04 */	lwz r4, 0x4(r21)
/* 8136F1C0 | 48 00 01 11 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F1C4 | B0 7D 00 1A */	sth r3, 0x1a(r29)
/* 8136F1C8 | 7F E3 FB 78 */	mr r3, r31
/* 8136F1CC | 80 95 00 08 */	lwz r4, 0x8(r21)
/* 8136F1D0 | 48 00 01 01 */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F1D4 | B0 7D 00 1C */	sth r3, 0x1c(r29)
/* 8136F1D8 | 7F E3 FB 78 */	mr r3, r31
/* 8136F1DC | 80 95 00 0C */	lwz r4, 0xc(r21)
/* 8136F1E0 | 3A B5 00 10 */	addi r21, r21, 0x10
/* 8136F1E4 | 48 00 00 ED */	bl convertToRGB565__Q37ext_ead3www13BrowserWindowFUl
/* 8136F1E8 | B0 7D 00 1E */	sth r3, 0x1e(r29)
/* 8136F1EC | 3B BD 00 20 */	addi r29, r29, 0x20
/* 8136F1F0 | 3A 94 00 04 */	addi r20, r20, 0x4
.L_8136F1F4:
/* 8136F1F4 | A0 1F 00 04 */	lhz r0, 0x4(r31)
/* 8136F1F8 | 7C 14 00 00 */	cmpw r20, r0
/* 8136F1FC | 41 80 FE E0 */	blt .L_8136F0DC
/* 8136F200 | 54 00 1B 78 */	clrlslwi r0, r0, 16, 3
/* 8136F204 | 7F 7B F2 14 */	add r27, r27, r30
/* 8136F208 | 7F 5A 02 14 */	add r26, r26, r0
/* 8136F20C | 3B 39 00 04 */	addi r25, r25, 0x4
.L_8136F210:
/* 8136F210 | A3 BF 00 06 */	lhz r29, 0x6(r31)
/* 8136F214 | 7C 19 E8 00 */	cmpw r25, r29
/* 8136F218 | 41 80 FE A8 */	blt .L_8136F0C0
/* 8136F21C | 7F E3 FB 78 */	mr r3, r31
/* 8136F220 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8136F224 | 38 80 00 00 */	li r4, 0x0
/* 8136F228 | 38 A0 00 01 */	li r5, 0x1
/* 8136F22C | 48 00 03 1D */	bl GetTextureBuffer__Q37ext_ead3www13BrowserWindowFibPP7WWWRect
/* 8136F230 | A0 1F 00 04 */	lhz r0, 0x4(r31)
/* 8136F234 | 7C 00 E9 D6 */	mullw r0, r0, r29
/* 8136F238 | 54 04 08 3C */	slwi r4, r0, 1
/* 8136F23C | 48 1B E7 29 */	bl DCStoreRange
/* 8136F240 | 3B C0 00 00 */	li r30, 0x0
/* 8136F244 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8136F248 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 8136F24C | 38 81 00 0C */	addi r4, r1, 0xc
/* 8136F250 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8136F254 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 8136F258 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8136F25C | A0 1F 00 04 */	lhz r0, 0x4(r31)
/* 8136F260 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136F264 | A0 1F 00 06 */	lhz r0, 0x6(r31)
/* 8136F268 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8136F26C | 4B FF FA 45 */	bl __as__7WWWRectFRC7WWWRect
/* 8136F270 | 48 1C 16 15 */	bl OSDisableInterrupts
/* 8136F274 | 88 1F 02 C6 */	lbz r0, 0x2c6(r31)
/* 8136F278 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136F27C | 41 82 00 10 */	beq .L_8136F28C
/* 8136F280 | 38 00 00 01 */	li r0, 0x1
/* 8136F284 | 9B DF 02 C6 */	stb r30, 0x2c6(r31)
/* 8136F288 | 98 1F 02 C7 */	stb r0, 0x2c7(r31)
.L_8136F28C:
/* 8136F28C | 80 DF 02 C0 */	lwz r6, 0x2c0(r31)
/* 8136F290 | 38 00 00 00 */	li r0, 0x0
/* 8136F294 | 98 1F 02 C8 */	stb r0, 0x2c8(r31)
/* 8136F298 | 38 00 00 01 */	li r0, 0x1
/* 8136F29C | 54 C4 10 3A */	slwi r4, r6, 2
/* 8136F2A0 | 80 BF 02 BC */	lwz r5, 0x2bc(r31)
/* 8136F2A4 | 90 DF 02 B0 */	stw r6, 0x2b0(r31)
/* 8136F2A8 | 7C 9F 22 14 */	add r4, r31, r4
/* 8136F2AC | 90 A4 02 B4 */	stw r5, 0x2b4(r4)
/* 8136F2B0 | 98 1F 02 C9 */	stb r0, 0x2c9(r31)
/* 8136F2B4 | 48 1C 15 F9 */	bl OSRestoreInterrupts
.L_8136F2B8:
/* 8136F2B8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8136F2BC | 48 28 A2 35 */	bl _restgpr_20
/* 8136F2C0 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8136F2C4 | 7C 08 03 A6 */	mtlr r0
/* 8136F2C8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8136F2CC | 4E 80 00 20 */	blr
.endfn TileBlit___Q37ext_ead3www13BrowserWindowFv

# .text:0x9D0 | 0x8136F2D0 | size: 0x28
# ext_ead::www::BrowserWindow::convertToRGB565(unsigned long)
.fn convertToRGB565__Q37ext_ead3www13BrowserWindowFUl, global
/* 8136F2D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136F2D4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8136F2D8 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 8136F2DC | 88 81 00 0B */	lbz r4, 0xb(r1)
/* 8136F2E0 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 8136F2E4 | 54 63 44 28 */	rlwinm r3, r3, 8, 16, 20
/* 8136F2E8 | 50 03 1D 74 */	rlwimi r3, r0, 3, 21, 26
/* 8136F2EC | 50 83 EE FE */	rlwimi r3, r4, 29, 27, 31
/* 8136F2F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136F2F4 | 4E 80 00 20 */	blr
.endfn convertToRGB565__Q37ext_ead3www13BrowserWindowFUl

# .text:0x9F8 | 0x8136F2F8 | size: 0x250
# ext_ead::www::BrowserWindow::ReportEventId_(int, void*)
.fn ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, global
/* 8136F2F8 | 28 04 00 35 */	cmplwi r4, 0x35
/* 8136F2FC | 3C C0 81 64 */	lis r6, lbl_81643B08@ha
/* 8136F300 | 38 C6 3B 08 */	addi r6, r6, lbl_81643B08@l
/* 8136F304 | 41 81 02 2C */	bgt .L_8136F530
/* 8136F308 | 3C 60 81 64 */	lis r3, jumptable_81643EEC@ha
/* 8136F30C | 54 80 10 3A */	slwi r0, r4, 2
/* 8136F310 | 38 63 3E EC */	addi r3, r3, jumptable_81643EEC@l
/* 8136F314 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8136F318 | 7C 69 03 A6 */	mtctr r3
/* 8136F31C | 4E 80 04 20 */	bctr
.L_8136F320:
/* 8136F320 | 38 86 00 D2 */	addi r4, r6, 0xd2
/* 8136F324 | 38 60 00 04 */	li r3, 0x4
/* 8136F328 | 4C C6 31 82 */	crclr cr1eq
/* 8136F32C | 4B FF F5 68 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F330:
/* 8136F330 | 38 86 00 E9 */	addi r4, r6, 0xe9
/* 8136F334 | 38 60 00 04 */	li r3, 0x4
/* 8136F338 | 4C C6 31 82 */	crclr cr1eq
/* 8136F33C | 4B FF F5 58 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F340:
/* 8136F340 | 38 86 00 FF */	addi r4, r6, 0xff
/* 8136F344 | 38 60 00 04 */	li r3, 0x4
/* 8136F348 | 4C C6 31 82 */	crclr cr1eq
/* 8136F34C | 4B FF F5 48 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F350:
/* 8136F350 | 38 86 01 13 */	addi r4, r6, 0x113
/* 8136F354 | 38 60 00 04 */	li r3, 0x4
/* 8136F358 | 4C C6 31 82 */	crclr cr1eq
/* 8136F35C | 4B FF F5 38 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F360:
/* 8136F360 | 38 86 01 2B */	addi r4, r6, 0x12b
/* 8136F364 | 38 60 00 04 */	li r3, 0x4
/* 8136F368 | 4C C6 31 82 */	crclr cr1eq
/* 8136F36C | 4B FF F5 28 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F370:
/* 8136F370 | 38 86 01 43 */	addi r4, r6, 0x143
/* 8136F374 | 38 60 00 04 */	li r3, 0x4
/* 8136F378 | 4C C6 31 82 */	crclr cr1eq
/* 8136F37C | 4B FF F5 18 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F380:
/* 8136F380 | 38 86 01 57 */	addi r4, r6, 0x157
/* 8136F384 | 38 60 00 04 */	li r3, 0x4
/* 8136F388 | 4C C6 31 82 */	crclr cr1eq
/* 8136F38C | 4B FF F5 08 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F390:
/* 8136F390 | 38 86 01 6E */	addi r4, r6, 0x16e
/* 8136F394 | 38 60 00 04 */	li r3, 0x4
/* 8136F398 | 4C C6 31 82 */	crclr cr1eq
/* 8136F39C | 4B FF F4 F8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F3A0:
/* 8136F3A0 | 38 86 01 88 */	addi r4, r6, 0x188
/* 8136F3A4 | 38 60 00 04 */	li r3, 0x4
/* 8136F3A8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F3AC | 4B FF F4 E8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F3B0:
/* 8136F3B0 | 38 86 01 A2 */	addi r4, r6, 0x1a2
/* 8136F3B4 | 38 60 00 04 */	li r3, 0x4
/* 8136F3B8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F3BC | 4B FF F4 D8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F3C0:
/* 8136F3C0 | 38 86 01 BB */	addi r4, r6, 0x1bb
/* 8136F3C4 | 38 60 00 04 */	li r3, 0x4
/* 8136F3C8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F3CC | 4B FF F4 C8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F3D0:
/* 8136F3D0 | 38 86 01 D7 */	addi r4, r6, 0x1d7
/* 8136F3D4 | 38 60 00 04 */	li r3, 0x4
/* 8136F3D8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F3DC | 4B FF F4 B8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F3E0:
/* 8136F3E0 | 38 86 01 EF */	addi r4, r6, 0x1ef
/* 8136F3E4 | 38 60 00 04 */	li r3, 0x4
/* 8136F3E8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F3EC | 4B FF F4 A8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F3F0:
/* 8136F3F0 | 38 86 02 06 */	addi r4, r6, 0x206
/* 8136F3F4 | 38 60 00 04 */	li r3, 0x4
/* 8136F3F8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F3FC | 4B FF F4 98 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F400:
/* 8136F400 | 38 86 02 1D */	addi r4, r6, 0x21d
/* 8136F404 | 38 60 00 04 */	li r3, 0x4
/* 8136F408 | 4C C6 31 82 */	crclr cr1eq
/* 8136F40C | 4B FF F4 88 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F410:
/* 8136F410 | 38 86 02 33 */	addi r4, r6, 0x233
/* 8136F414 | 38 60 00 04 */	li r3, 0x4
/* 8136F418 | 4C C6 31 82 */	crclr cr1eq
/* 8136F41C | 4B FF F4 78 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F420:
/* 8136F420 | 38 86 02 4A */	addi r4, r6, 0x24a
/* 8136F424 | 38 60 00 04 */	li r3, 0x4
/* 8136F428 | 4C C6 31 82 */	crclr cr1eq
/* 8136F42C | 4B FF F4 68 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F430:
/* 8136F430 | 38 86 02 62 */	addi r4, r6, 0x262
/* 8136F434 | 38 60 00 04 */	li r3, 0x4
/* 8136F438 | 4C C6 31 82 */	crclr cr1eq
/* 8136F43C | 4B FF F4 58 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F440:
/* 8136F440 | 38 86 02 79 */	addi r4, r6, 0x279
/* 8136F444 | 38 60 00 04 */	li r3, 0x4
/* 8136F448 | 4C C6 31 82 */	crclr cr1eq
/* 8136F44C | 4B FF F4 48 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F450:
/* 8136F450 | 38 86 02 93 */	addi r4, r6, 0x293
/* 8136F454 | 38 60 00 04 */	li r3, 0x4
/* 8136F458 | 4C C6 31 82 */	crclr cr1eq
/* 8136F45C | 4B FF F4 38 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F460:
/* 8136F460 | 38 86 02 A5 */	addi r4, r6, 0x2a5
/* 8136F464 | 38 60 00 04 */	li r3, 0x4
/* 8136F468 | 4C C6 31 82 */	crclr cr1eq
/* 8136F46C | 4B FF F4 28 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F470:
/* 8136F470 | 38 86 02 B4 */	addi r4, r6, 0x2b4
/* 8136F474 | 38 60 00 04 */	li r3, 0x4
/* 8136F478 | 4C C6 31 82 */	crclr cr1eq
/* 8136F47C | 4B FF F4 18 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F480:
/* 8136F480 | 38 86 02 C7 */	addi r4, r6, 0x2c7
/* 8136F484 | 38 60 00 04 */	li r3, 0x4
/* 8136F488 | 4C C6 31 82 */	crclr cr1eq
/* 8136F48C | 4B FF F4 08 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F490:
/* 8136F490 | 38 86 02 D8 */	addi r4, r6, 0x2d8
/* 8136F494 | 38 60 00 04 */	li r3, 0x4
/* 8136F498 | 4C C6 31 82 */	crclr cr1eq
/* 8136F49C | 4B FF F3 F8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F4A0:
/* 8136F4A0 | 38 86 02 EB */	addi r4, r6, 0x2eb
/* 8136F4A4 | 38 60 00 04 */	li r3, 0x4
/* 8136F4A8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F4AC | 4B FF F3 E8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F4B0:
/* 8136F4B0 | 38 86 03 01 */	addi r4, r6, 0x301
/* 8136F4B4 | 38 60 00 04 */	li r3, 0x4
/* 8136F4B8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F4BC | 4B FF F3 D8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F4C0:
/* 8136F4C0 | 38 86 03 1A */	addi r4, r6, 0x31a
/* 8136F4C4 | 38 60 00 04 */	li r3, 0x4
/* 8136F4C8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F4CC | 4B FF F3 C8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F4D0:
/* 8136F4D0 | 38 86 03 31 */	addi r4, r6, 0x331
/* 8136F4D4 | 38 60 00 04 */	li r3, 0x4
/* 8136F4D8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F4DC | 4B FF F3 B8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F4E0:
/* 8136F4E0 | 38 86 03 4D */	addi r4, r6, 0x34d
/* 8136F4E4 | 38 60 00 04 */	li r3, 0x4
/* 8136F4E8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F4EC | 4B FF F3 A8 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F4F0:
/* 8136F4F0 | 38 86 03 6D */	addi r4, r6, 0x36d
/* 8136F4F4 | 38 60 00 04 */	li r3, 0x4
/* 8136F4F8 | 4C C6 31 82 */	crclr cr1eq
/* 8136F4FC | 4B FF F3 98 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F500:
/* 8136F500 | 38 86 03 85 */	addi r4, r6, 0x385
/* 8136F504 | 38 60 00 04 */	li r3, 0x4
/* 8136F508 | 4C C6 31 82 */	crclr cr1eq
/* 8136F50C | 4B FF F3 88 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F510:
/* 8136F510 | 38 86 03 9E */	addi r4, r6, 0x39e
/* 8136F514 | 38 60 00 04 */	li r3, 0x4
/* 8136F518 | 4C C6 31 82 */	crclr cr1eq
/* 8136F51C | 4B FF F3 78 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F520:
/* 8136F520 | 38 86 03 B6 */	addi r4, r6, 0x3b6
/* 8136F524 | 38 60 00 04 */	li r3, 0x4
/* 8136F528 | 4C C6 31 82 */	crclr cr1eq
/* 8136F52C | 4B FF F3 68 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F530:
/* 8136F530 | 7C 85 23 78 */	mr r5, r4
/* 8136F534 | 38 86 03 CC */	addi r4, r6, 0x3cc
/* 8136F538 | 38 60 00 04 */	li r3, 0x4
/* 8136F53C | 4C C6 31 82 */	crclr cr1eq
/* 8136F540 | 4B FF F3 54 */	b IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136F544:
/* 8136F544 | 4E 80 00 20 */	blr
.endfn ReportEventId___Q37ext_ead3www13BrowserWindowFiPv

# .text:0xC48 | 0x8136F548 | size: 0x9C
# ext_ead::www::BrowserWindow::GetTextureBuffer(int, bool, WWWRect**)
.fn GetTextureBuffer__Q37ext_ead3www13BrowserWindowFibPP7WWWRect, global
/* 8136F548 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8136F54C | 40 82 00 18 */	bne .L_8136F564
/* 8136F550 | 88 03 02 C9 */	lbz r0, 0x2c9(r3)
/* 8136F554 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136F558 | 40 82 00 0C */	bne .L_8136F564
/* 8136F55C | 38 60 00 00 */	li r3, 0x0
/* 8136F560 | 4E 80 00 20 */	blr
.L_8136F564:
/* 8136F564 | 88 03 02 C8 */	lbz r0, 0x2c8(r3)
/* 8136F568 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136F56C | 41 82 00 18 */	beq .L_8136F584
/* 8136F570 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8136F574 | 41 82 00 10 */	beq .L_8136F584
/* 8136F578 | 80 A3 02 C0 */	lwz r5, 0x2c0(r3)
/* 8136F57C | 80 E3 02 BC */	lwz r7, 0x2bc(r3)
/* 8136F580 | 48 00 00 2C */	b .L_8136F5AC
.L_8136F584:
/* 8136F584 | 80 A3 02 B0 */	lwz r5, 0x2b0(r3)
/* 8136F588 | 38 05 00 02 */	addi r0, r5, 0x2
/* 8136F58C | 7C 04 00 50 */	subf r0, r4, r0
/* 8136F590 | 54 04 0F FE */	srwi r4, r0, 31
/* 8136F594 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8136F598 | 7C 00 22 78 */	xor r0, r0, r4
/* 8136F59C | 7C A4 00 50 */	subf r5, r4, r0
/* 8136F5A0 | 54 A0 10 3A */	slwi r0, r5, 2
/* 8136F5A4 | 7C 83 02 14 */	add r4, r3, r0
/* 8136F5A8 | 80 E4 02 B4 */	lwz r7, 0x2b4(r4)
.L_8136F5AC:
/* 8136F5AC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8136F5B0 | 41 82 00 1C */	beq .L_8136F5CC
/* 8136F5B4 | 1C 85 00 30 */	mulli r4, r5, 0x30
/* 8136F5B8 | 54 E0 20 36 */	slwi r0, r7, 4
/* 8136F5BC | 7C 83 22 14 */	add r4, r3, r4
/* 8136F5C0 | 7C 84 02 14 */	add r4, r4, r0
/* 8136F5C4 | 38 04 00 24 */	addi r0, r4, 0x24
/* 8136F5C8 | 90 06 00 00 */	stw r0, 0x0(r6)
.L_8136F5CC:
/* 8136F5CC | 1C 85 00 0C */	mulli r4, r5, 0xc
/* 8136F5D0 | 54 E0 10 3A */	slwi r0, r7, 2
/* 8136F5D4 | 7C 63 22 14 */	add r3, r3, r4
/* 8136F5D8 | 7C 63 02 14 */	add r3, r3, r0
/* 8136F5DC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8136F5E0 | 4E 80 00 20 */	blr
.endfn GetTextureBuffer__Q37ext_ead3www13BrowserWindowFibPP7WWWRect

# .text:0xCE4 | 0x8136F5E4 | size: 0x5C
# ext_ead::www::BrowserWindow::SetWindowSize(int, int)
.fn SetWindowSize__Q37ext_ead3www13BrowserWindowFii, global
/* 8136F5E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136F5E8 | 7C 08 02 A6 */	mflr r0
/* 8136F5EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136F5F0 | 38 00 00 00 */	li r0, 0x0
/* 8136F5F4 | B0 83 00 04 */	sth r4, 0x4(r3)
/* 8136F5F8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136F5FC | B0 A3 00 06 */	sth r5, 0x6(r3)
/* 8136F600 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8136F604 | 81 8D A7 AC */	lwz r12, WWWSetBrowserWindowRect@sda21(r0)
/* 8136F608 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8136F60C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8136F610 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136F614 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 8136F618 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8136F61C | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8136F620 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136F624 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 8136F628 | 7D 89 03 A6 */	mtctr r12
/* 8136F62C | 4E 80 04 21 */	bctrl
/* 8136F630 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136F634 | 7C 08 03 A6 */	mtlr r0
/* 8136F638 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136F63C | 4E 80 00 20 */	blr
.endfn SetWindowSize__Q37ext_ead3www13BrowserWindowFii

# 0x81643B08..0x81643FF0 | size: 0x4E8
.data
.balign 8

# .data:0x0 | 0x81643B08 | size: 0x38
.obj lbl_81643B08, global
	.4byte 0x5B546963
	.4byte 0x6B54696D
	.4byte 0x65725D00
	.4byte 0x5B576172
	.4byte 0x6E696E67
	.4byte 0x5D005B5B
	.4byte 0x4576656E
	.4byte 0x745D5D00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81643B08

# .data:0x38 | 0x81643B40 | size: 0x1E
.obj lbl_81643B40, global
	.string " TextureBuffer_ %d:%d ptr:%p\n"
.endobj lbl_81643B40

# .data:0x56 | 0x81643B5E | size: 0x24
.obj lbl_81643B5E, global
	.string "INFO: cannot create browser window\n"
.endobj lbl_81643B5E

# .data:0x7A | 0x81643B82 | size: 0x1B
.obj lbl_81643B82, global
	.string "file:dvd/html/startup.html"
.endobj lbl_81643B82

# .data:0x95 | 0x81643B9D | size: 0x2B
.obj lbl_81643B9D, global
	.string "   XXX BrowserWindow::CopyToTextureBuffer\n"
.endobj lbl_81643B9D

# .data:0xC0 | 0x81643BC8 | size: 0x324
.obj lbl_81643BC8, global
	.4byte 0x204C6F61
	.4byte 0x64696E53
	.4byte 0x74617274
	.4byte 0x3A202564
	.4byte 0x0A005757
	.4byte 0x575F4556
	.4byte 0x545F4355
	.4byte 0x52534F52
	.4byte 0x5F434841
	.4byte 0x4E47450A
	.4byte 0x00575757
	.4byte 0x5F455654
	.4byte 0x5F57494E
	.4byte 0x444F575F
	.4byte 0x434C4F53
	.4byte 0x450A0057
	.4byte 0x57575F45
	.4byte 0x56545F57
	.4byte 0x494E444F
	.4byte 0x575F4E45
	.4byte 0x570A0057
	.4byte 0x57575F45
	.4byte 0x56545F57
	.4byte 0x494E444F
	.4byte 0x575F5245
	.4byte 0x51554553
	.4byte 0x540A0057
	.4byte 0x57575F45
	.4byte 0x56545F41
	.4byte 0x55544845
	.4byte 0x4E544943
	.4byte 0x4154494F
	.4byte 0x4E0A0057
	.4byte 0x57575F45
	.4byte 0x56545F55
	.4byte 0x524C5F43
	.4byte 0x48414E47
	.4byte 0x450A0057
	.4byte 0x57575F45
	.4byte 0x56545F4C
	.4byte 0x4F414449
	.4byte 0x4E475F53
	.4byte 0x54415254
	.4byte 0x0A005757
	.4byte 0x575F4556
	.4byte 0x545F4C4F
	.4byte 0x4144494E
	.4byte 0x475F4649
	.4byte 0x4E495348
	.4byte 0x45440A00
	.4byte 0x5757575F
	.4byte 0x4556545F
	.4byte 0x4C4F4144
	.4byte 0x494E475F
	.4byte 0x50524F47
	.4byte 0x52455353
	.4byte 0x0A005757
	.4byte 0x575F4556
	.4byte 0x545F5550
	.4byte 0x4C4F4144
	.4byte 0x494E475F
	.4byte 0x53544152
	.4byte 0x540A0057
	.4byte 0x57575F45
	.4byte 0x56545F55
	.4byte 0x504C4F41
	.4byte 0x44494E47
	.4byte 0x5F46494E
	.4byte 0x49534845
	.4byte 0x440A0057
	.4byte 0x57575F45
	.4byte 0x56545F44
	.4byte 0x4F43554D
	.4byte 0x454E545F
	.4byte 0x5449544C
	.4byte 0x450A0057
	.4byte 0x57575F45
	.4byte 0x56545F44
	.4byte 0x4F43554D
	.4byte 0x454E545F
	.4byte 0x53495A45
	.4byte 0x0A005757
	.4byte 0x575F4556
	.4byte 0x545F444F
	.4byte 0x43554D45
	.4byte 0x4E545F49
	.4byte 0x434F4E0A
	.4byte 0x00575757
	.4byte 0x5F455654
	.4byte 0x5F4C494E
	.4byte 0x4B5F434C
	.4byte 0x49434B45
	.4byte 0x440A0057
	.4byte 0x57575F45
	.4byte 0x56545F53
	.4byte 0x45435552
	.4byte 0x4954595F
	.4byte 0x4D4F4445
	.4byte 0x0A005757
	.4byte 0x575F4556
	.4byte 0x545F4C49
	.4byte 0x4E4B5F4E
	.4byte 0x41564947
	.4byte 0x41544544
	.4byte 0x0A005757
	.4byte 0x575F4556
	.4byte 0x545F4C49
	.4byte 0x4E4B5F48
	.4byte 0x4F564552
	.4byte 0x2025700A
	.4byte 0x00575757
	.4byte 0x5F455654
	.4byte 0x5F554E4B
	.4byte 0x4E4F574E
	.4byte 0x5F50524F
	.4byte 0x544F434F
	.4byte 0x4C0A0057
	.4byte 0x57575F45
	.4byte 0x56545F44
	.4byte 0x4F574E4C
	.4byte 0x4F41440A
	.4byte 0x00575757
	.4byte 0x5F455654
	.4byte 0x5F455252
	.4byte 0x4F520A00
	.4byte 0x5757575F
	.4byte 0x4556545F
	.4byte 0x494D4543
	.4byte 0x52454154
	.4byte 0x450A0057
	.4byte 0x57575F45
	.4byte 0x56545F49
	.4byte 0x4D454D4F
	.4byte 0x56450A00
	.4byte 0x5757575F
	.4byte 0x4556545F
	.4byte 0x494D4543
	.4byte 0x414E4345
	.4byte 0x4C0A0057
	.4byte 0x57575F45
	.4byte 0x56545F41
	.4byte 0x53594E43
	.4byte 0x5F444941
	.4byte 0x4C4F470A
	.4byte 0x00575757
	.4byte 0x5F455654
	.4byte 0x5F424C4F
	.4byte 0x434B494E
	.4byte 0x475F4449
	.4byte 0x414C4F47
	.4byte 0x0A005757
	.4byte 0x575F4556
	.4byte 0x545F4F55
	.4byte 0x545F4F46
	.4byte 0x5F4D454D
	.4byte 0x4F52590A
	.4byte 0x00575757
	.4byte 0x5F455654
	.4byte 0x5F534F46
	.4byte 0x545F4F55
	.4byte 0x545F4F46
	.4byte 0x5F4D454D
	.4byte 0x4F52590A
	.4byte 0x00575757
	.4byte 0x5F455654
	.4byte 0x5F50524F
	.4byte 0x544F434F
	.4byte 0x4C5F4C4F
	.4byte 0x4144494E
	.4byte 0x475F5354
	.4byte 0x4152540A
	.4byte 0x00575757
	.4byte 0x5F455654
	.4byte 0x5F455849
	.4byte 0x5354535F
	.4byte 0x48495354
	.4byte 0x4F52590A
	.4byte 0x00575757
	.4byte 0x5F455654
	.4byte 0x5F455854
	.4byte 0x45524E41
	.4byte 0x4C5F4143
	.4byte 0x54494F4E
	.4byte 0x0A005757
	.4byte 0x575F4556
	.4byte 0x545F5343
	.4byte 0x5245454E
	.4byte 0x5F494E56
	.4byte 0x414C4944
	.4byte 0x0A005757
	.4byte 0x575F4556
	.4byte 0x545F4649
	.4byte 0x4C544552
	.4byte 0x45445F55
	.4byte 0x524C0A00
	.4byte 0x52656376
	.4byte 0x4E6F7469
	.4byte 0x66794576
	.4byte 0x656E743A
	.4byte 0x2025640A
	.4byte 0x00000000
.endobj lbl_81643BC8

# .data:0x3E4 | 0x81643EEC | size: 0xD8
.obj jumptable_81643EEC, local
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F320
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F330
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F340
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F350
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F360
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F370
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F380
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F390
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F3A0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F3B0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F3C0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F3D0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F3E0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F3F0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F400
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F410
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F420
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F430
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F544
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F440
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F450
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F460
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F470
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F480
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F490
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F4A0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F4B0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F4C0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F4D0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F4E0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F4F0
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F500
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F530
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F510
	.rel ReportEventId___Q37ext_ead3www13BrowserWindowFiPv, .L_8136F520
.endobj jumptable_81643EEC

# .data:0x4BC | 0x81643FC4 | size: 0xC
# ext_ead::www::BrowserWindow::__vtable
.obj __vt__Q37ext_ead3www13BrowserWindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q37ext_ead3www13BrowserWindowFv
.endobj __vt__Q37ext_ead3www13BrowserWindow

# .data:0x4C8 | 0x81643FD0 | size: 0x20
# ext_ead::www::ut_message_cmd<ext_ead::www::BrowserWindow::WindowCmd, 32>::__vtable
.obj "__vt__Q37ext_ead3www58ut_message_cmd<Q47ext_ead3www13BrowserWindow9WindowCmd,32>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q37ext_ead3www58ut_message_cmd<Q47ext_ead3www13BrowserWindow9WindowCmd,32>Fv"
	.4byte SendMessage__Q37ext_ead3www15ut_message_baseFPvl
	.4byte JamMessage__Q37ext_ead3www15ut_message_baseFPvl
	.4byte ReceiveMessage__Q37ext_ead3www15ut_message_baseFPPvl
	.4byte InitMessageQueue__Q37ext_ead3www15ut_message_baseFPPvl
	.4byte 0x00000000
.endobj "__vt__Q37ext_ead3www58ut_message_cmd<Q47ext_ead3www13BrowserWindow9WindowCmd,32>"

# 0x816962F8..0x81696300 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816962F8 | size: 0x8
.obj lbl_816962F8, global
	.string "ERROR?\n"
.endobj lbl_816962F8
