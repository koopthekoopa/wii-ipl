.include "macros.inc"
.file "textdrawer.cpp"

# 0x810C8270..0x810C87F0 | size: 0x580
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C8270 | size: 0x580
# textinput::textdrawer::snWidthTable
.obj snWidthTable__Q29textinput10textdrawer, global
	.skip 0x580
.endobj snWidthTable__Q29textinput10textdrawer

# 0x81434FD0..0x81435D64 | size: 0xD94
.text
.balign 4

# .text:0x0 | 0x81434FD0 | size: 0xA8
# textinput::textdrawer::Base::create(MEMAllocator*)
.fn create__Q39textinput10textdrawer4BaseFP12MEMAllocator, global
/* 81434FD0 | 3C A0 81 0D */	lis r5, snWidthTable__Q29textinput10textdrawer@ha
/* 81434FD4 | 38 00 00 0B */	li r0, 0xb
/* 81434FD8 | 38 A5 82 70 */	addi r5, r5, snWidthTable__Q29textinput10textdrawer@l
/* 81434FDC | 38 80 FF FF */	li r4, -0x1
/* 81434FE0 | 7C 09 03 A6 */	mtctr r0
.L_81434FE4:
/* 81434FE4 | 90 85 00 00 */	stw r4, 0x0(r5)
/* 81434FE8 | 90 85 00 04 */	stw r4, 0x4(r5)
/* 81434FEC | 90 85 00 08 */	stw r4, 0x8(r5)
/* 81434FF0 | 90 85 00 0C */	stw r4, 0xc(r5)
/* 81434FF4 | 90 85 00 10 */	stw r4, 0x10(r5)
/* 81434FF8 | 90 85 00 14 */	stw r4, 0x14(r5)
/* 81434FFC | 90 85 00 18 */	stw r4, 0x18(r5)
/* 81435000 | 90 85 00 1C */	stw r4, 0x1c(r5)
/* 81435004 | 90 85 00 20 */	stw r4, 0x20(r5)
/* 81435008 | 90 85 00 24 */	stw r4, 0x24(r5)
/* 8143500C | 90 85 00 28 */	stw r4, 0x28(r5)
/* 81435010 | 90 85 00 2C */	stw r4, 0x2c(r5)
/* 81435014 | 90 85 00 30 */	stw r4, 0x30(r5)
/* 81435018 | 90 85 00 34 */	stw r4, 0x34(r5)
/* 8143501C | 90 85 00 38 */	stw r4, 0x38(r5)
/* 81435020 | 90 85 00 3C */	stw r4, 0x3c(r5)
/* 81435024 | 90 85 00 40 */	stw r4, 0x40(r5)
/* 81435028 | 90 85 00 44 */	stw r4, 0x44(r5)
/* 8143502C | 90 85 00 48 */	stw r4, 0x48(r5)
/* 81435030 | 90 85 00 4C */	stw r4, 0x4c(r5)
/* 81435034 | 90 85 00 50 */	stw r4, 0x50(r5)
/* 81435038 | 90 85 00 54 */	stw r4, 0x54(r5)
/* 8143503C | 90 85 00 58 */	stw r4, 0x58(r5)
/* 81435040 | 90 85 00 5C */	stw r4, 0x5c(r5)
/* 81435044 | 90 85 00 60 */	stw r4, 0x60(r5)
/* 81435048 | 90 85 00 64 */	stw r4, 0x64(r5)
/* 8143504C | 90 85 00 68 */	stw r4, 0x68(r5)
/* 81435050 | 90 85 00 6C */	stw r4, 0x6c(r5)
/* 81435054 | 90 85 00 70 */	stw r4, 0x70(r5)
/* 81435058 | 90 85 00 74 */	stw r4, 0x74(r5)
/* 8143505C | 90 85 00 78 */	stw r4, 0x78(r5)
/* 81435060 | 90 85 00 7C */	stw r4, 0x7c(r5)
/* 81435064 | 38 A5 00 80 */	addi r5, r5, 0x80
/* 81435068 | 42 00 FF 7C */	bdnz .L_81434FE4
/* 8143506C | C0 02 89 E0 */	lfs f0, lbl_81694DE0@sda21(r0)
/* 81435070 | D0 03 00 98 */	stfs f0, 0x98(r3)
/* 81435074 | 4E 80 00 20 */	blr
.endfn create__Q39textinput10textdrawer4BaseFP12MEMAllocator

# .text:0xA8 | 0x81435078 | size: 0x1C
# textinput::textdrawer::Base::setAspectRatio(bool)
.fn setAspectRatio__Q39textinput10textdrawer4BaseFb, global
/* 81435078 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8143507C | 98 83 00 9C */	stb r4, 0x9c(r3)
/* 81435080 | 41 82 00 0C */	beq .L_8143508C
/* 81435084 | 38 63 00 88 */	addi r3, r3, 0x88
/* 81435088 | 48 00 52 BC */	b getProjectionRect4x3__Q29textinput4utilFPQ34nw4r2ut4Rect
.L_8143508C:
/* 8143508C | 38 63 00 88 */	addi r3, r3, 0x88
/* 81435090 | 48 00 52 D8 */	b getProjectionRect16x9__Q29textinput4utilFPQ34nw4r2ut4Rect
.endfn setAspectRatio__Q39textinput10textdrawer4BaseFb

# .text:0xC4 | 0x81435094 | size: 0x10
# textinput::textdrawer::Base::setDrawString(const wchar_t*, unsigned long, unsigned long)
.fn setDrawString__Q39textinput10textdrawer4BaseFPCwUlUl, global
/* 81435094 | 90 83 00 50 */	stw r4, 0x50(r3)
/* 81435098 | 90 A3 00 BC */	stw r5, 0xbc(r3)
/* 8143509C | 90 C3 00 C0 */	stw r6, 0xc0(r3)
/* 814350A0 | 4E 80 00 20 */	blr
.endfn setDrawString__Q39textinput10textdrawer4BaseFPCwUlUl

# .text:0xD4 | 0x814350A4 | size: 0x30
# textinput::textdrawer::Base::modifyCursorCache(long, unsigned long, float, float, float, float)
.fn modifyCursorCache__Q39textinput10textdrawer4BaseFlUlffff, global
/* 814350A4 | C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 814350A8 | 38 00 00 01 */	li r0, 0x1
/* 814350AC | 90 83 00 F4 */	stw r4, 0xf4(r3)
/* 814350B0 | EC 42 00 28 */	fsubs f2, f2, f0
/* 814350B4 | EC 04 00 28 */	fsubs f0, f4, f0
/* 814350B8 | 90 A3 00 F8 */	stw r5, 0xf8(r3)
/* 814350BC | D0 23 00 FC */	stfs f1, 0xfc(r3)
/* 814350C0 | D0 43 01 00 */	stfs f2, 0x100(r3)
/* 814350C4 | D0 63 00 E8 */	stfs f3, 0xe8(r3)
/* 814350C8 | D0 03 00 EC */	stfs f0, 0xec(r3)
/* 814350CC | 98 03 01 04 */	stb r0, 0x104(r3)
/* 814350D0 | 4E 80 00 20 */	blr
.endfn modifyCursorCache__Q39textinput10textdrawer4BaseFlUlffff

# .text:0x104 | 0x814350D4 | size: 0xC
# textinput::textdrawer::Base::setDrawModifyScopeLine(long, long)
.fn setDrawModifyScopeLine__Q39textinput10textdrawer4BaseFll, global
/* 814350D4 | 90 83 00 CC */	stw r4, 0xcc(r3)
/* 814350D8 | 90 A3 00 D0 */	stw r5, 0xd0(r3)
/* 814350DC | 4E 80 00 20 */	blr
.endfn setDrawModifyScopeLine__Q39textinput10textdrawer4BaseFll

# .text:0x110 | 0x814350E0 | size: 0x74
# textinput::textdrawer::Base::setDrawCacheScopeLine(long, long)
.fn setDrawCacheScopeLine__Q39textinput10textdrawer4BaseFll, global
/* 814350E0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814350E4 | 7C 08 02 A6 */	mflr r0
/* 814350E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814350EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814350F0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814350F4 | 7C BF 2B 78 */	mr r31, r5
/* 814350F8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814350FC | 7C 9E 23 78 */	mr r30, r4
/* 81435100 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81435104 | 7C 7D 1B 78 */	mr r29, r3
/* 81435108 | 40 80 00 08 */	bge .L_81435110
/* 8143510C | 3B C0 00 00 */	li r30, 0x0
.L_81435110:
/* 81435110 | 80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 81435114 | 7C 00 F0 00 */	cmpw r0, r30
/* 81435118 | 41 82 00 18 */	beq .L_81435130
/* 8143511C | 81 9D 00 4C */	lwz r12, 0x4c(r29)
/* 81435120 | 7F A3 EB 78 */	mr r3, r29
/* 81435124 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81435128 | 7D 89 03 A6 */	mtctr r12
/* 8143512C | 4E 80 04 21 */	bctrl
.L_81435130:
/* 81435130 | 93 DD 00 D4 */	stw r30, 0xd4(r29)
/* 81435134 | 93 FD 00 D8 */	stw r31, 0xd8(r29)
/* 81435138 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8143513C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81435140 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81435144 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81435148 | 7C 08 03 A6 */	mtlr r0
/* 8143514C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81435150 | 4E 80 00 20 */	blr
.endfn setDrawCacheScopeLine__Q39textinput10textdrawer4BaseFll

# .text:0x184 | 0x81435154 | size: 0x78
# textinput::textdrawer::Base::procCursor(textinput::textdrawer::Base::CursorPos*, long)
.fn procCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosl, global
/* 81435154 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81435158 | 7C 08 02 A6 */	mflr r0
/* 8143515C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81435160 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81435164 | 7C 9F 23 78 */	mr r31, r4
/* 81435168 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143516C | 7C 7E 1B 78 */	mr r30, r3
/* 81435170 | 48 0E 2F C5 */	bl fn_81518134
/* 81435174 | 7F C3 F3 78 */	mr r3, r30
/* 81435178 | 48 0E 2F C5 */	bl fn_8151813C
/* 8143517C | 81 9E 00 4C */	lwz r12, 0x4c(r30)
/* 81435180 | 7F C3 F3 78 */	mr r3, r30
/* 81435184 | 7F E4 FB 78 */	mr r4, r31
/* 81435188 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8143518C | 7D 89 03 A6 */	mtctr r12
/* 81435190 | 4E 80 04 21 */	bctrl
/* 81435194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81435198 | 40 82 00 1C */	bne .L_814351B4
/* 8143519C | 7F C3 F3 78 */	mr r3, r30
/* 814351A0 | 48 0E 2F 95 */	bl fn_81518134
/* 814351A4 | D0 3F 00 04 */	stfs f1, 0x4(r31)
/* 814351A8 | 7F C3 F3 78 */	mr r3, r30
/* 814351AC | 48 0E 2F 91 */	bl fn_8151813C
/* 814351B0 | D0 3F 00 08 */	stfs f1, 0x8(r31)
.L_814351B4:
/* 814351B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814351B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814351BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814351C0 | 7C 08 03 A6 */	mtlr r0
/* 814351C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814351C8 | 4E 80 00 20 */	blr
.endfn procCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosl

# .text:0x1FC | 0x814351CC | size: 0x8
# textinput::textdrawer::Base::onCursor(textinput::textdrawer::Base::CursorPos*)
.fn onCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos, global
/* 814351CC | 38 60 00 00 */	li r3, 0x0
/* 814351D0 | 4E 80 00 20 */	blr
.endfn onCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos

# .text:0x204 | 0x814351D4 | size: 0x204
# textinput::textdrawer::Base::makeUpCursorPos(textinput::textdrawer::Base::CursorPos*, unsigned long, long, long)
.fn makeUpCursorPos__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll, global
/* 814351D4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814351D8 | 7C 08 02 A6 */	mflr r0
/* 814351DC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814351E0 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 814351E4 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 814351E8 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 814351EC | F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 814351F0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814351F4 | 48 1C 42 C9 */	bl _savegpr_26
/* 814351F8 | 83 E3 00 50 */	lwz r31, 0x50(r3)
/* 814351FC | 7C 7A 1B 78 */	mr r26, r3
/* 81435200 | 7C 9B 23 78 */	mr r27, r4
/* 81435204 | 7C BC 2B 78 */	mr r28, r5
/* 81435208 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8143520C | 7C DD 33 78 */	mr r29, r6
/* 81435210 | 41 82 01 A0 */	beq .L_814353B0
/* 81435214 | 54 A0 08 3C */	slwi r0, r5, 1
/* 81435218 | 7F DF 02 14 */	add r30, r31, r0
/* 8143521C | 48 0E 2F 21 */	bl fn_8151813C
/* 81435220 | FF C0 08 90 */	fmr f30, f1
/* 81435224 | C3 E2 89 E4 */	lfs f31, lbl_81694DE4@sda21(r0)
/* 81435228 | 48 00 01 40 */	b .L_81435368
.L_8143522C:
/* 8143522C | D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 81435230 | 7F 43 D3 78 */	mr r3, r26
/* 81435234 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81435238 | D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 8143523C | D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 81435240 | D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 81435244 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 81435248 | B0 01 00 20 */	sth r0, 0x20(r1)
/* 8143524C | 81 9A 00 4C */	lwz r12, 0x4c(r26)
/* 81435250 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81435254 | 7D 89 03 A6 */	mtctr r12
/* 81435258 | 4E 80 04 21 */	bctrl
/* 8143525C | 81 9A 00 4C */	lwz r12, 0x4c(r26)
/* 81435260 | 7F 43 D3 78 */	mr r3, r26
/* 81435264 | 7F E4 FB 78 */	mr r4, r31
/* 81435268 | 7F 85 E3 78 */	mr r5, r28
/* 8143526C | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81435270 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 81435274 | 7D 89 03 A6 */	mtctr r12
/* 81435278 | 4E 80 04 21 */	bctrl
/* 8143527C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81435280 | 41 82 00 44 */	beq .L_814352C4
/* 81435284 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81435288 | 7C 00 E0 40 */	cmplw r0, r28
/* 8143528C | 40 82 00 38 */	bne .L_814352C4
/* 81435290 | 7F 43 D3 78 */	mr r3, r26
/* 81435294 | 48 0E 2E A9 */	bl fn_8151813C
/* 81435298 | FC 1E 08 00 */	fcmpu cr0, f30, f1
/* 8143529C | 7C 00 00 26 */	mfcr r0
/* 814352A0 | 81 9A 00 4C */	lwz r12, 0x4c(r26)
/* 814352A4 | 54 00 1F FE */	extrwi r0, r0, 1, 2
/* 814352A8 | 7F 43 D3 78 */	mr r3, r26
/* 814352AC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 814352B0 | 68 00 00 01 */	xori r0, r0, 0x1
/* 814352B4 | 7F 64 DB 78 */	mr r4, r27
/* 814352B8 | 7C BD 02 14 */	add r5, r29, r0
/* 814352BC | 7D 89 03 A6 */	mtctr r12
/* 814352C0 | 4E 80 04 21 */	bctrl
.L_814352C4:
/* 814352C4 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814352C8 | 28 00 00 0A */	cmplwi r0, 0xa
/* 814352CC | 40 82 00 1C */	bne .L_814352E8
/* 814352D0 | 81 9A 00 4C */	lwz r12, 0x4c(r26)
/* 814352D4 | 7F 43 D3 78 */	mr r3, r26
/* 814352D8 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 814352DC | 7D 89 03 A6 */	mtctr r12
/* 814352E0 | 4E 80 04 21 */	bctrl
/* 814352E4 | 48 00 00 90 */	b .L_81435374
.L_814352E8:
/* 814352E8 | 81 9A 00 4C */	lwz r12, 0x4c(r26)
/* 814352EC | 7F 43 D3 78 */	mr r3, r26
/* 814352F0 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 814352F4 | 7D 89 03 A6 */	mtctr r12
/* 814352F8 | 4E 80 04 21 */	bctrl
/* 814352FC | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 81435300 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81435304 | 7F 43 D3 78 */	mr r3, r26
/* 81435308 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8143530C | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 81435310 | EC 22 08 28 */	fsubs f1, f2, f1
/* 81435314 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81435318 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8143531C | 48 0E 2D F9 */	bl fn_81518114
/* 81435320 | 81 9A 00 4C */	lwz r12, 0x4c(r26)
/* 81435324 | 7F 43 D3 78 */	mr r3, r26
/* 81435328 | 7F E4 FB 78 */	mr r4, r31
/* 8143532C | 7F 85 E3 78 */	mr r5, r28
/* 81435330 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81435334 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 81435338 | 7D 89 03 A6 */	mtctr r12
/* 8143533C | 4E 80 04 21 */	bctrl
/* 81435340 | 7F 43 D3 78 */	mr r3, r26
/* 81435344 | 48 0E 2D F9 */	bl fn_8151813C
/* 81435348 | FC 1E 08 00 */	fcmpu cr0, f30, f1
/* 8143534C | 41 82 00 08 */	beq .L_81435354
/* 81435350 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81435354:
/* 81435354 | 7F 43 D3 78 */	mr r3, r26
/* 81435358 | 48 0E 2D E5 */	bl fn_8151813C
/* 8143535C | FF C0 08 90 */	fmr f30, f1
/* 81435360 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 81435364 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81435368:
/* 81435368 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 8143536C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81435370 | 40 82 FE BC */	bne .L_8143522C
.L_81435374:
/* 81435374 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81435378 | 41 82 00 38 */	beq .L_814353B0
/* 8143537C | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 81435380 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81435384 | 40 82 00 2C */	bne .L_814353B0
/* 81435388 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 8143538C | 7C 00 E0 40 */	cmplw r0, r28
/* 81435390 | 40 82 00 20 */	bne .L_814353B0
/* 81435394 | 81 9A 00 4C */	lwz r12, 0x4c(r26)
/* 81435398 | 7F 43 D3 78 */	mr r3, r26
/* 8143539C | 7F 64 DB 78 */	mr r4, r27
/* 814353A0 | 7F A5 EB 78 */	mr r5, r29
/* 814353A4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 814353A8 | 7D 89 03 A6 */	mtctr r12
/* 814353AC | 4E 80 04 21 */	bctrl
.L_814353B0:
/* 814353B0 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 814353B4 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 814353B8 | E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 814353BC | 39 61 00 40 */	addi r11, r1, 0x40
/* 814353C0 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 814353C4 | 48 1C 41 45 */	bl _restgpr_26
/* 814353C8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814353CC | 7C 08 03 A6 */	mtlr r0
/* 814353D0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814353D4 | 4E 80 00 20 */	blr
.endfn makeUpCursorPos__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll

# .text:0x408 | 0x814353D8 | size: 0x4
# textinput::textdrawer::Base::doBeforeDrawProcess(const wchar_t*, unsigned long, const textinput::textdrawer::Base::DrawInfo&)
.fn doBeforeDrawProcess__Q39textinput10textdrawer4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo, global
/* 814353D8 | 4E 80 00 20 */	blr
.endfn doBeforeDrawProcess__Q39textinput10textdrawer4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo

# .text:0x40C | 0x814353DC | size: 0x10
# textinput::textdrawer::Base::doLineFeed()
.fn doLineFeed__Q39textinput10textdrawer4BaseFv, global
/* 814353DC | 80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 814353E0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814353E4 | 90 03 00 A0 */	stw r0, 0xa0(r3)
/* 814353E8 | 4E 80 00 20 */	blr
.endfn doLineFeed__Q39textinput10textdrawer4BaseFv

# .text:0x41C | 0x814353EC | size: 0x4
# textinput::textdrawer::Base::doAfterDrawProcess(const wchar_t*, unsigned long, const textinput::textdrawer::Base::DrawInfo&)
.fn doAfterDrawProcess__Q39textinput10textdrawer4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo, global
/* 814353EC | 4E 80 00 20 */	blr
.endfn doAfterDrawProcess__Q39textinput10textdrawer4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo

# .text:0x420 | 0x814353F0 | size: 0x18
# textinput::textdrawer::Base::put(wchar_t)
.fn put__Q39textinput10textdrawer4BaseFw, global
/* 814353F0 | 88 03 00 C8 */	lbz r0, 0xc8(r3)
/* 814353F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814353F8 | 40 82 00 08 */	bne .L_81435400
/* 814353FC | 48 0E 2B CC */	b fn_81517FC8
.L_81435400:
/* 81435400 | 38 80 00 2A */	li r4, 0x2a
/* 81435404 | 48 0E 2B C4 */	b fn_81517FC8
.endfn put__Q39textinput10textdrawer4BaseFw

# .text:0x438 | 0x81435408 | size: 0x2CC
# textinput::textdrawer::Base::draw(textinput::textdrawer::Base::CursorPos*)
.fn draw__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos, global
/* 81435408 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8143540C | 7C 08 02 A6 */	mflr r0
/* 81435410 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81435414 | DB E1 00 60 */	stfd f31, 0x60(r1)
/* 81435418 | F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 8143541C | 39 61 00 60 */	addi r11, r1, 0x60
/* 81435420 | 48 1C 40 9D */	bl _savegpr_26
/* 81435424 | 83 E3 00 50 */	lwz r31, 0x50(r3)
/* 81435428 | 7C 7C 1B 78 */	mr r28, r3
/* 8143542C | 7C 9D 23 78 */	mr r29, r4
/* 81435430 | 48 0E 19 FD */	bl fn_81516E2C
/* 81435434 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81435438 | 41 82 02 7C */	beq .L_814356B4
/* 8143543C | 83 5C 00 BC */	lwz r26, 0xbc(r28)
/* 81435440 | 7F 83 E3 78 */	mr r3, r28
/* 81435444 | 83 DC 00 C0 */	lwz r30, 0xc0(r28)
/* 81435448 | 93 5C 00 DC */	stw r26, 0xdc(r28)
/* 8143544C | 7F 44 D3 78 */	mr r4, r26
/* 81435450 | 93 5C 00 C4 */	stw r26, 0xc4(r28)
/* 81435454 | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 81435458 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143545C | 7D 89 03 A6 */	mtctr r12
/* 81435460 | 4E 80 04 21 */	bctrl
/* 81435464 | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 81435468 | 57 40 08 3C */	slwi r0, r26, 1
/* 8143546C | 7F 83 E3 78 */	mr r3, r28
/* 81435470 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81435474 | 7F FF 02 14 */	add r31, r31, r0
/* 81435478 | 7D 89 03 A6 */	mtctr r12
/* 8143547C | 4E 80 04 21 */	bctrl
/* 81435480 | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 81435484 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81435488 | 7F 83 E3 78 */	mr r3, r28
/* 8143548C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81435490 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 81435494 | 7D 89 03 A6 */	mtctr r12
/* 81435498 | 4E 80 04 21 */	bctrl
/* 8143549C | 90 61 00 28 */	stw r3, 0x28(r1)
/* 814354A0 | 7F 83 E3 78 */	mr r3, r28
/* 814354A4 | C0 7C 00 AC */	lfs f3, 0xac(r28)
/* 814354A8 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 814354AC | C0 5C 00 B0 */	lfs f2, 0xb0(r28)
/* 814354B0 | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 814354B4 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814354B8 | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 814354BC | EC 42 00 32 */	fmuls f2, f2, f0
/* 814354C0 | 48 0E 28 8D */	bl SetFontSize__Q34nw4r2ut10CharWriterFff
/* 814354C4 | 7F 83 E3 78 */	mr r3, r28
/* 814354C8 | 48 0E 19 6D */	bl fn_81516E34
/* 814354CC | C3 E2 89 E4 */	lfs f31, lbl_81694DE4@sda21(r0)
/* 814354D0 | 3B 40 00 C8 */	li r26, 0xc8
/* 814354D4 | 3F 60 00 01 */	lis r27, 0x1
/* 814354D8 | 48 00 01 78 */	b .L_81435650
.L_814354DC:
/* 814354DC | D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 814354E0 | 7F 83 E3 78 */	mr r3, r28
/* 814354E4 | 38 81 00 30 */	addi r4, r1, 0x30
/* 814354E8 | D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 814354EC | D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 814354F0 | D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 814354F4 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814354F8 | B0 01 00 40 */	sth r0, 0x40(r1)
/* 814354FC | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 81435500 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81435504 | 7D 89 03 A6 */	mtctr r12
/* 81435508 | 4E 80 04 21 */	bctrl
/* 8143550C | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 81435510 | 7F 83 E3 78 */	mr r3, r28
/* 81435514 | 38 C1 00 30 */	addi r6, r1, 0x30
/* 81435518 | 80 9C 00 50 */	lwz r4, 0x50(r28)
/* 8143551C | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81435520 | 80 BC 00 C4 */	lwz r5, 0xc4(r28)
/* 81435524 | 7D 89 03 A6 */	mtctr r12
/* 81435528 | 4E 80 04 21 */	bctrl
/* 8143552C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81435530 | 41 82 00 30 */	beq .L_81435560
/* 81435534 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81435538 | 80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 8143553C | 7C 03 00 40 */	cmplw r3, r0
/* 81435540 | 40 82 00 20 */	bne .L_81435560
/* 81435544 | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 81435548 | 7F 83 E3 78 */	mr r3, r28
/* 8143554C | 7F A4 EB 78 */	mr r4, r29
/* 81435550 | 38 A0 00 00 */	li r5, 0x0
/* 81435554 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81435558 | 7D 89 03 A6 */	mtctr r12
/* 8143555C | 4E 80 04 21 */	bctrl
.L_81435560:
/* 81435560 | A0 9F 00 00 */	lhz r4, 0x0(r31)
/* 81435564 | 28 04 00 0A */	cmplwi r4, 0xa
/* 81435568 | 40 82 00 6C */	bne .L_814355D4
/* 8143556C | 7F 84 E3 78 */	mr r4, r28
/* 81435570 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81435574 | 48 0E 27 8D */	bl fn_81517D00
/* 81435578 | 88 01 00 13 */	lbz r0, 0x13(r1)
/* 8143557C | 7F 83 E3 78 */	mr r3, r28
/* 81435580 | 9B 41 00 0C */	stb r26, 0xc(r1)
/* 81435584 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81435588 | 9B 41 00 0D */	stb r26, 0xd(r1)
/* 8143558C | 9B 41 00 0E */	stb r26, 0xe(r1)
/* 81435590 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 81435594 | 48 0E 24 8D */	bl fn_81517A20
/* 81435598 | 38 1B E0 56 */	subi r0, r27, 0x1faa
/* 8143559C | 7F 83 E3 78 */	mr r3, r28
/* 814355A0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814355A4 | 48 0E 2A 25 */	bl fn_81517FC8
/* 814355A8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814355AC | 7F 83 E3 78 */	mr r3, r28
/* 814355B0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814355B4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814355B8 | 48 0E 24 69 */	bl fn_81517A20
/* 814355BC | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 814355C0 | 7F 83 E3 78 */	mr r3, r28
/* 814355C4 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 814355C8 | 7D 89 03 A6 */	mtctr r12
/* 814355CC | 4E 80 04 21 */	bctrl
/* 814355D0 | 48 00 00 50 */	b .L_81435620
.L_814355D4:
/* 814355D4 | 28 04 FF FF */	cmplwi r4, 0xffff
/* 814355D8 | 41 82 00 48 */	beq .L_81435620
/* 814355DC | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 814355E0 | 7F 83 E3 78 */	mr r3, r28
/* 814355E4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814355E8 | 7D 89 03 A6 */	mtctr r12
/* 814355EC | 4E 80 04 21 */	bctrl
/* 814355F0 | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 814355F4 | 7F 83 E3 78 */	mr r3, r28
/* 814355F8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 814355FC | 7D 89 03 A6 */	mtctr r12
/* 81435600 | 4E 80 04 21 */	bctrl
/* 81435604 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81435608 | 7F 83 E3 78 */	mr r3, r28
/* 8143560C | C0 3C 00 A8 */	lfs f1, 0xa8(r28)
/* 81435610 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 81435614 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81435618 | EC 21 00 32 */	fmuls f1, f1, f0
/* 8143561C | 48 0E 2A F9 */	bl fn_81518114
.L_81435620:
/* 81435620 | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 81435624 | 7F 83 E3 78 */	mr r3, r28
/* 81435628 | 38 C1 00 30 */	addi r6, r1, 0x30
/* 8143562C | 80 9C 00 50 */	lwz r4, 0x50(r28)
/* 81435630 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81435634 | 80 BC 00 C4 */	lwz r5, 0xc4(r28)
/* 81435638 | 7D 89 03 A6 */	mtctr r12
/* 8143563C | 4E 80 04 21 */	bctrl
/* 81435640 | 80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 81435644 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 81435648 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8143564C | 90 1C 00 C4 */	stw r0, 0xc4(r28)
.L_81435650:
/* 81435650 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81435654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81435658 | 41 82 00 10 */	beq .L_81435668
/* 8143565C | 80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 81435660 | 7C 00 F0 40 */	cmplw r0, r30
/* 81435664 | 41 80 FE 78 */	blt .L_814354DC
.L_81435668:
/* 81435668 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8143566C | 41 82 00 30 */	beq .L_8143569C
/* 81435670 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81435674 | 80 1C 00 C4 */	lwz r0, 0xc4(r28)
/* 81435678 | 7C 03 00 40 */	cmplw r3, r0
/* 8143567C | 40 82 00 20 */	bne .L_8143569C
/* 81435680 | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 81435684 | 7F 83 E3 78 */	mr r3, r28
/* 81435688 | 7F A4 EB 78 */	mr r4, r29
/* 8143568C | 38 A0 00 00 */	li r5, 0x0
/* 81435690 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81435694 | 7D 89 03 A6 */	mtctr r12
/* 81435698 | 4E 80 04 21 */	bctrl
.L_8143569C:
/* 8143569C | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 814356A0 | 7F 83 E3 78 */	mr r3, r28
/* 814356A4 | 80 9C 00 C4 */	lwz r4, 0xc4(r28)
/* 814356A8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814356AC | 7D 89 03 A6 */	mtctr r12
/* 814356B0 | 4E 80 04 21 */	bctrl
.L_814356B4:
/* 814356B4 | E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 814356B8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814356BC | CB E1 00 60 */	lfd f31, 0x60(r1)
/* 814356C0 | 48 1C 3E 49 */	bl _restgpr_26
/* 814356C4 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814356C8 | 7C 08 03 A6 */	mtlr r0
/* 814356CC | 38 21 00 70 */	addi r1, r1, 0x70
/* 814356D0 | 4E 80 00 20 */	blr
.endfn draw__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos

# .text:0x704 | 0x814356D4 | size: 0x4
# textinput::textdrawer::Base::preDraw(unsigned long)
.fn preDraw__Q39textinput10textdrawer4BaseFUl, global
/* 814356D4 | 4E 80 00 20 */	blr
.endfn preDraw__Q39textinput10textdrawer4BaseFUl

# .text:0x708 | 0x814356D8 | size: 0x4
# textinput::textdrawer::Base::finishDraw(unsigned long)
.fn finishDraw__Q39textinput10textdrawer4BaseFUl, global
/* 814356D8 | 4E 80 00 20 */	blr
.endfn finishDraw__Q39textinput10textdrawer4BaseFUl

# .text:0x70C | 0x814356DC | size: 0xA0
# textinput::textdrawer::Base::getLineHeight()
.fn getLineHeight__Q39textinput10textdrawer4BaseFv, global
/* 814356DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814356E0 | 7C 08 02 A6 */	mflr r0
/* 814356E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814356E8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814356EC | 7C 7F 1B 78 */	mr r31, r3
/* 814356F0 | 81 83 00 4C */	lwz r12, 0x4c(r3)
/* 814356F4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 814356F8 | 7D 89 03 A6 */	mtctr r12
/* 814356FC | 4E 80 04 21 */	bctrl
/* 81435700 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81435704 | C0 22 89 E4 */	lfs f1, lbl_81694DE4@sda21(r0)
/* 81435708 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8143570C | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81435710 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 81435714 | 40 82 00 0C */	bne .L_81435720
/* 81435718 | C0 22 89 E8 */	lfs f1, lbl_81694DE8@sda21(r0)
/* 8143571C | 48 00 00 4C */	b .L_81435768
.L_81435720:
/* 81435720 | 81 9F 00 4C */	lwz r12, 0x4c(r31)
/* 81435724 | 7F E3 FB 78 */	mr r3, r31
/* 81435728 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8143572C | 7D 89 03 A6 */	mtctr r12
/* 81435730 | 4E 80 04 21 */	bctrl
/* 81435734 | C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 81435738 | C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8143573C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81435740 | EC 41 00 2A */	fadds f2, f1, f0
/* 81435744 | C0 02 89 E8 */	lfs f0, lbl_81694DE8@sda21(r0)
/* 81435748 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8143574C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81435750 | EC 22 00 72 */	fmuls f1, f2, f1
/* 81435754 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81435758 | 4C 41 13 82 */	cror eq, gt, eq
/* 8143575C | 40 82 00 08 */	bne .L_81435764
/* 81435760 | 48 00 00 08 */	b .L_81435768
.L_81435764:
/* 81435764 | FC 20 00 90 */	fmr f1, f0
.L_81435768:
/* 81435768 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143576C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81435770 | 7C 08 03 A6 */	mtlr r0
/* 81435774 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81435778 | 4E 80 00 20 */	blr
.endfn getLineHeight__Q39textinput10textdrawer4BaseFv

# .text:0x7AC | 0x8143577C | size: 0x154
# textinput::textdrawer::Base::setFont(const nw4r::ut::Font&)
.fn setFont__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Font, global
/* 8143577C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81435780 | 7C 08 02 A6 */	mflr r0
/* 81435784 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81435788 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8143578C | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 81435790 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81435794 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81435798 | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 8143579C | 7C 7D 1B 78 */	mr r29, r3
/* 814357A0 | 48 0E 16 85 */	bl SetFont__Q34nw4r2ut10CharWriterFRCQ34nw4r2ut4Font
/* 814357A4 | 3C 80 81 0D */	lis r4, snWidthTable__Q29textinput10textdrawer@ha
/* 814357A8 | 38 00 00 0B */	li r0, 0xb
/* 814357AC | 38 84 82 70 */	addi r4, r4, snWidthTable__Q29textinput10textdrawer@l
/* 814357B0 | 38 60 FF FF */	li r3, -0x1
/* 814357B4 | 7C 09 03 A6 */	mtctr r0
.L_814357B8:
/* 814357B8 | 90 64 00 00 */	stw r3, 0x0(r4)
/* 814357BC | 90 64 00 04 */	stw r3, 0x4(r4)
/* 814357C0 | 90 64 00 08 */	stw r3, 0x8(r4)
/* 814357C4 | 90 64 00 0C */	stw r3, 0xc(r4)
/* 814357C8 | 90 64 00 10 */	stw r3, 0x10(r4)
/* 814357CC | 90 64 00 14 */	stw r3, 0x14(r4)
/* 814357D0 | 90 64 00 18 */	stw r3, 0x18(r4)
/* 814357D4 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814357D8 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814357DC | 90 64 00 24 */	stw r3, 0x24(r4)
/* 814357E0 | 90 64 00 28 */	stw r3, 0x28(r4)
/* 814357E4 | 90 64 00 2C */	stw r3, 0x2c(r4)
/* 814357E8 | 90 64 00 30 */	stw r3, 0x30(r4)
/* 814357EC | 90 64 00 34 */	stw r3, 0x34(r4)
/* 814357F0 | 90 64 00 38 */	stw r3, 0x38(r4)
/* 814357F4 | 90 64 00 3C */	stw r3, 0x3c(r4)
/* 814357F8 | 90 64 00 40 */	stw r3, 0x40(r4)
/* 814357FC | 90 64 00 44 */	stw r3, 0x44(r4)
/* 81435800 | 90 64 00 48 */	stw r3, 0x48(r4)
/* 81435804 | 90 64 00 4C */	stw r3, 0x4c(r4)
/* 81435808 | 90 64 00 50 */	stw r3, 0x50(r4)
/* 8143580C | 90 64 00 54 */	stw r3, 0x54(r4)
/* 81435810 | 90 64 00 58 */	stw r3, 0x58(r4)
/* 81435814 | 90 64 00 5C */	stw r3, 0x5c(r4)
/* 81435818 | 90 64 00 60 */	stw r3, 0x60(r4)
/* 8143581C | 90 64 00 64 */	stw r3, 0x64(r4)
/* 81435820 | 90 64 00 68 */	stw r3, 0x68(r4)
/* 81435824 | 90 64 00 6C */	stw r3, 0x6c(r4)
/* 81435828 | 90 64 00 70 */	stw r3, 0x70(r4)
/* 8143582C | 90 64 00 74 */	stw r3, 0x74(r4)
/* 81435830 | 90 64 00 78 */	stw r3, 0x78(r4)
/* 81435834 | 90 64 00 7C */	stw r3, 0x7c(r4)
/* 81435838 | 38 84 00 80 */	addi r4, r4, 0x80
/* 8143583C | 42 00 FF 7C */	bdnz .L_814357B8
/* 81435840 | 3F E0 81 0D */	lis r31, snWidthTable__Q29textinput10textdrawer@ha
/* 81435844 | C3 E2 89 E4 */	lfs f31, lbl_81694DE4@sda21(r0)
/* 81435848 | 3B FF 82 70 */	addi r31, r31, snWidthTable__Q29textinput10textdrawer@l
/* 8143584C | 3B C0 00 20 */	li r30, 0x20
.L_81435850:
/* 81435850 | D3 E1 00 08 */	stfs f31, 0x8(r1)
/* 81435854 | 7F A3 EB 78 */	mr r3, r29
/* 81435858 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8143585C | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81435860 | D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 81435864 | D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 81435868 | B3 C1 00 18 */	sth r30, 0x18(r1)
/* 8143586C | 81 9D 00 4C */	lwz r12, 0x4c(r29)
/* 81435870 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81435874 | 7D 89 03 A6 */	mtctr r12
/* 81435878 | 4E 80 04 21 */	bctrl
/* 8143587C | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81435880 | 57 C0 13 BA */	clrlslwi r0, r30, 16, 2
/* 81435884 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 81435888 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8143588C | 7C 7F 02 14 */	add r3, r31, r0
/* 81435890 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81435894 | 28 1E 01 7F */	cmplwi r30, 0x17f
/* 81435898 | FC 00 00 1E */	fctiwz f0, f0
/* 8143589C | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 814358A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814358A4 | 90 03 FF 80 */	stw r0, -0x80(r3)
/* 814358A8 | 40 81 FF A8 */	ble .L_81435850
/* 814358AC | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 814358B0 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814358B4 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 814358B8 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 814358BC | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 814358C0 | 83 A1 00 34 */	lwz r29, 0x34(r1)
/* 814358C4 | 7C 08 03 A6 */	mtlr r0
/* 814358C8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814358CC | 4E 80 00 20 */	blr
.endfn setFont__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Font

# .text:0x900 | 0x814358D0 | size: 0x158
# textinput::textdrawer::Base::calcRect(textinput::textdrawer::Base::DrawInfo&)
.fn calcRect__Q39textinput10textdrawer4BaseFRQ49textinput10textdrawer4Base8DrawInfo, global
/* 814358D0 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814358D4 | 7C 08 02 A6 */	mflr r0
/* 814358D8 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814358DC | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 814358E0 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 814358E4 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 814358E8 | F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 814358EC | DB A1 00 30 */	stfd f29, 0x30(r1)
/* 814358F0 | F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 814358F4 | C0 02 89 E4 */	lfs f0, lbl_81694DE4@sda21(r0)
/* 814358F8 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814358FC | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81435900 | 7C 9E 23 78 */	mr r30, r4
/* 81435904 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81435908 | 7C 7D 1B 78 */	mr r29, r3
/* 8143590C | D0 04 00 00 */	stfs f0, 0x0(r4)
/* 81435910 | A3 E4 00 10 */	lhz r31, 0x10(r4)
/* 81435914 | D0 04 00 08 */	stfs f0, 0x8(r4)
/* 81435918 | D0 04 00 04 */	stfs f0, 0x4(r4)
/* 8143591C | 81 83 00 4C */	lwz r12, 0x4c(r3)
/* 81435920 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81435924 | 7D 89 03 A6 */	mtctr r12
/* 81435928 | 4E 80 04 21 */	bctrl
/* 8143592C | D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 81435930 | 7F A3 EB 78 */	mr r3, r29
/* 81435934 | C3 C2 89 E4 */	lfs f30, lbl_81694DE4@sda21(r0)
/* 81435938 | C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 8143593C | EF DE 00 2A */	fadds f30, f30, f0
/* 81435940 | 48 0E 26 69 */	bl fn_81517FA8
/* 81435944 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81435948 | 41 82 00 14 */	beq .L_8143595C
/* 8143594C | 7F A3 EB 78 */	mr r3, r29
/* 81435950 | 48 0E 26 69 */	bl fn_81517FB8
/* 81435954 | EF DE 08 2A */	fadds f30, f30, f1
/* 81435958 | 48 00 00 84 */	b .L_814359DC
.L_8143595C:
/* 8143595C | 81 9D 00 4C */	lwz r12, 0x4c(r29)
/* 81435960 | 7F A3 EB 78 */	mr r3, r29
/* 81435964 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81435968 | 7D 89 03 A6 */	mtctr r12
/* 8143596C | 4E 80 04 21 */	bctrl
/* 81435970 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81435974 | C0 02 89 E4 */	lfs f0, lbl_81694DE4@sda21(r0)
/* 81435978 | C3 A1 00 08 */	lfs f29, 0x8(r1)
/* 8143597C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81435980 | FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 81435984 | 40 82 00 08 */	bne .L_8143598C
/* 81435988 | C3 A2 89 EC */	lfs f29, lbl_81694DEC@sda21(r0)
.L_8143598C:
/* 8143598C | 7F A3 EB 78 */	mr r3, r29
/* 81435990 | 48 0E 23 AD */	bl fn_81517D3C
/* 81435994 | FF E0 08 90 */	fmr f31, f1
/* 81435998 | 7F A3 EB 78 */	mr r3, r29
/* 8143599C | 48 0E 14 91 */	bl fn_81516E2C
/* 814359A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814359A4 | 7F E4 FB 78 */	mr r4, r31
/* 814359A8 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814359AC | 7D 89 03 A6 */	mtctr r12
/* 814359B0 | 4E 80 04 21 */	bctrl
/* 814359B4 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 814359B8 | 3C 00 43 30 */	lis r0, 0x4330
/* 814359BC | 90 61 00 14 */	stw r3, 0x14(r1)
/* 814359C0 | C8 22 89 F0 */	lfd f1, lbl_81694DF0@sda21(r0)
/* 814359C4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814359C8 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814359CC | EC 00 08 28 */	fsubs f0, f0, f1
/* 814359D0 | EC 00 07 F2 */	fmuls f0, f0, f31
/* 814359D4 | EC 00 E8 24 */	fdivs f0, f0, f29
/* 814359D8 | EF DE 00 2A */	fadds f30, f30, f0
.L_814359DC:
/* 814359DC | C0 1E 00 08 */	lfs f0, 0x8(r30)
/* 814359E0 | FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 814359E4 | 40 80 00 08 */	bge .L_814359EC
/* 814359E8 | 48 00 00 08 */	b .L_814359F0
.L_814359EC:
/* 814359EC | FF C0 00 90 */	fmr f30, f0
.L_814359F0:
/* 814359F0 | D3 DE 00 08 */	stfs f30, 0x8(r30)
/* 814359F4 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 814359F8 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 814359FC | E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 81435A00 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 81435A04 | E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 81435A08 | CB A1 00 30 */	lfd f29, 0x30(r1)
/* 81435A0C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81435A10 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81435A14 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 81435A18 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81435A1C | 7C 08 03 A6 */	mtlr r0
/* 81435A20 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81435A24 | 4E 80 00 20 */	blr
.endfn calcRect__Q39textinput10textdrawer4BaseFRQ49textinput10textdrawer4Base8DrawInfo

# .text:0xA58 | 0x81435A28 | size: 0x9C
# textinput::textdrawer::Base::getWidth(const wchar_t*)
.fn getWidth__Q39textinput10textdrawer4BaseFPCw, global
/* 81435A28 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81435A2C | 7C 08 02 A6 */	mflr r0
/* 81435A30 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81435A34 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81435A38 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81435A3C | C3 E2 89 E4 */	lfs f31, lbl_81694DE4@sda21(r0)
/* 81435A40 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81435A44 | 7C 9F 23 78 */	mr r31, r4
/* 81435A48 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81435A4C | 7C 7E 1B 78 */	mr r30, r3
/* 81435A50 | D3 E1 00 08 */	stfs f31, 0x8(r1)
/* 81435A54 | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81435A58 | D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 81435A5C | D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 81435A60 | 48 00 00 34 */	b .L_81435A94
.L_81435A64:
/* 81435A64 | B0 01 00 18 */	sth r0, 0x18(r1)
/* 81435A68 | 7F C3 F3 78 */	mr r3, r30
/* 81435A6C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81435A70 | 81 9E 00 4C */	lwz r12, 0x4c(r30)
/* 81435A74 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81435A78 | 7D 89 03 A6 */	mtctr r12
/* 81435A7C | 4E 80 04 21 */	bctrl
/* 81435A80 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81435A84 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 81435A88 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 81435A8C | EC 01 00 28 */	fsubs f0, f1, f0
/* 81435A90 | EF FF 00 2A */	fadds f31, f31, f0
.L_81435A94:
/* 81435A94 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81435A98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81435A9C | 40 82 FF C8 */	bne .L_81435A64
/* 81435AA0 | FC 20 F8 90 */	fmr f1, f31
/* 81435AA4 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81435AA8 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81435AAC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81435AB0 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81435AB4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81435AB8 | 7C 08 03 A6 */	mtlr r0
/* 81435ABC | 38 21 00 40 */	addi r1, r1, 0x40
/* 81435AC0 | 4E 80 00 20 */	blr
.endfn getWidth__Q39textinput10textdrawer4BaseFPCw

# .text:0xAF4 | 0x81435AC4 | size: 0x1B4
# textinput::textdrawer::Base::beginDraw(const nw4r::ut::Rect&)
.fn beginDraw__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Rect, global
/* 81435AC4 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 81435AC8 | 7C 08 02 A6 */	mflr r0
/* 81435ACC | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 81435AD0 | 38 00 00 00 */	li r0, 0x0
/* 81435AD4 | 93 E1 00 9C */	stw r31, 0x9c(r1)
/* 81435AD8 | 93 C1 00 98 */	stw r30, 0x98(r1)
/* 81435ADC | 93 A1 00 94 */	stw r29, 0x94(r1)
/* 81435AE0 | 7C 9D 23 78 */	mr r29, r4
/* 81435AE4 | 93 81 00 90 */	stw r28, 0x90(r1)
/* 81435AE8 | 7C 7C 1B 78 */	mr r28, r3
/* 81435AEC | 90 03 00 C4 */	stw r0, 0xc4(r3)
/* 81435AF0 | 38 63 00 54 */	addi r3, r3, 0x54
/* 81435AF4 | 48 11 24 65 */	bl GXGetViewportv
/* 81435AF8 | 38 7C 00 6C */	addi r3, r28, 0x6c
/* 81435AFC | 48 11 21 E5 */	bl GXGetProjectionv
/* 81435B00 | C0 3D 00 08 */	lfs f1, 0x8(r29)
/* 81435B04 | 38 61 00 50 */	addi r3, r1, 0x50
/* 81435B08 | C0 1D 00 00 */	lfs f0, 0x0(r29)
/* 81435B0C | C0 9D 00 04 */	lfs f4, 0x4(r29)
/* 81435B10 | EC 61 00 28 */	fsubs f3, f1, f0
/* 81435B14 | C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 81435B18 | C0 02 89 FC */	lfs f0, lbl_81694DFC@sda21(r0)
/* 81435B1C | EC 44 10 28 */	fsubs f2, f4, f2
/* 81435B20 | C0 22 89 E4 */	lfs f1, lbl_81694DE4@sda21(r0)
/* 81435B24 | EC 80 18 2A */	fadds f4, f0, f3
/* 81435B28 | C0 62 89 F8 */	lfs f3, lbl_81694DF8@sda21(r0)
/* 81435B2C | C0 A2 8A 00 */	lfs f5, lbl_81694E00@sda21(r0)
/* 81435B30 | C0 C2 89 E8 */	lfs f6, lbl_81694DE8@sda21(r0)
/* 81435B34 | 48 10 BA C9 */	bl fn_815415FC
/* 81435B38 | 38 61 00 50 */	addi r3, r1, 0x50
/* 81435B3C | 38 80 00 01 */	li r4, 0x1
/* 81435B40 | 48 11 20 F1 */	bl GXSetProjection
/* 81435B44 | C0 3C 00 90 */	lfs f1, 0x90(r28)
/* 81435B48 | C0 1C 00 88 */	lfs f0, 0x88(r28)
/* 81435B4C | C0 BC 00 64 */	lfs f5, 0x64(r28)
/* 81435B50 | EC E1 00 28 */	fsubs f7, f1, f0
/* 81435B54 | C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 81435B58 | C1 62 8A 04 */	lfs f11, lbl_81694E04@sda21(r0)
/* 81435B5C | C0 DC 00 68 */	lfs f6, 0x68(r28)
/* 81435B60 | ED 80 38 24 */	fdivs f12, f0, f7
/* 81435B64 | C0 22 89 E8 */	lfs f1, lbl_81694DE8@sda21(r0)
/* 81435B68 | C0 9D 00 00 */	lfs f4, 0x0(r29)
/* 81435B6C | C0 5D 00 08 */	lfs f2, 0x8(r29)
/* 81435B70 | C1 22 89 FC */	lfs f9, lbl_81694DFC@sda21(r0)
/* 81435B74 | C0 7C 00 94 */	lfs f3, 0x94(r28)
/* 81435B78 | ED 47 02 F2 */	fmuls f10, f7, f11
/* 81435B7C | C0 1C 00 8C */	lfs f0, 0x8c(r28)
/* 81435B80 | ED 0C 08 28 */	fsubs f8, f12, f1
/* 81435B84 | C0 22 8A 08 */	lfs f1, lbl_81694E08@sda21(r0)
/* 81435B88 | EC E3 00 28 */	fsubs f7, f3, f0
/* 81435B8C | C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 81435B90 | ED 44 50 2A */	fadds f10, f4, f10
/* 81435B94 | C0 1D 00 04 */	lfs f0, 0x4(r29)
/* 81435B98 | EC 42 20 28 */	fsubs f2, f2, f4
/* 81435B9C | D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 81435BA0 | EC 80 18 28 */	fsubs f4, f0, f3
/* 81435BA4 | ED 2A 48 28 */	fsubs f9, f10, f9
/* 81435BA8 | EC 01 10 2A */	fadds f0, f1, f2
/* 81435BAC | D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 81435BB0 | EC E7 02 F2 */	fmuls f7, f7, f11
/* 81435BB4 | EC 29 02 32 */	fmuls f1, f9, f8
/* 81435BB8 | D0 81 00 14 */	stfs f4, 0x14(r1)
/* 81435BBC | EC 43 38 2A */	fadds f2, f3, f7
/* 81435BC0 | EC 6C 00 32 */	fmuls f3, f12, f0
/* 81435BC4 | EC 29 08 2A */	fadds f1, f9, f1
/* 81435BC8 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 81435BCC | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 81435BD0 | D0 61 00 10 */	stfs f3, 0x10(r1)
/* 81435BD4 | 48 11 23 59 */	bl GXSetViewport
/* 81435BD8 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 81435BDC | 48 1C 37 BD */	bl __cvt_fp2unsigned
/* 81435BE0 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 81435BE4 | 7C 7F 1B 78 */	mr r31, r3
/* 81435BE8 | 48 1C 37 B1 */	bl __cvt_fp2unsigned
/* 81435BEC | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81435BF0 | 7C 7E 1B 78 */	mr r30, r3
/* 81435BF4 | 48 1C 37 A5 */	bl __cvt_fp2unsigned
/* 81435BF8 | 28 03 05 DC */	cmplwi r3, 0x5dc
/* 81435BFC | 7C 7D 1B 78 */	mr r29, r3
/* 81435C00 | 41 80 00 08 */	blt .L_81435C08
/* 81435C04 | 3B A0 05 DC */	li r29, 0x5dc
.L_81435C08:
/* 81435C08 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81435C0C | 48 1C 37 8D */	bl __cvt_fp2unsigned
/* 81435C10 | 28 03 05 DC */	cmplwi r3, 0x5dc
/* 81435C14 | 7C 66 1B 78 */	mr r6, r3
/* 81435C18 | 41 80 00 08 */	blt .L_81435C20
/* 81435C1C | 38 C0 05 DC */	li r6, 0x5dc
.L_81435C20:
/* 81435C20 | 7F E3 FB 78 */	mr r3, r31
/* 81435C24 | 7F C4 F3 78 */	mr r4, r30
/* 81435C28 | 7F A5 EB 78 */	mr r5, r29
/* 81435C2C | 48 11 23 7D */	bl GXSetScissor
/* 81435C30 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81435C34 | 48 10 B1 FD */	bl fn_81540E30
/* 81435C38 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81435C3C | 38 80 00 00 */	li r4, 0x0
/* 81435C40 | 48 11 20 E1 */	bl GXLoadPosMtxImm
/* 81435C44 | 7F 83 E3 78 */	mr r3, r28
/* 81435C48 | 48 0E 24 F5 */	bl fn_8151813C
/* 81435C4C | 38 00 00 00 */	li r0, 0x0
/* 81435C50 | D0 3C 00 B8 */	stfs f1, 0xb8(r28)
/* 81435C54 | 90 1C 00 A0 */	stw r0, 0xa0(r28)
/* 81435C58 | 83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 81435C5C | 83 C1 00 98 */	lwz r30, 0x98(r1)
/* 81435C60 | 83 A1 00 94 */	lwz r29, 0x94(r1)
/* 81435C64 | 83 81 00 90 */	lwz r28, 0x90(r1)
/* 81435C68 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 81435C6C | 7C 08 03 A6 */	mtlr r0
/* 81435C70 | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 81435C74 | 4E 80 00 20 */	blr
.endfn beginDraw__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Rect

# .text:0xCA8 | 0x81435C78 | size: 0xE4
# textinput::textdrawer::Base::endDraw()
.fn endDraw__Q39textinput10textdrawer4BaseFv, global
/* 81435C78 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81435C7C | 7C 08 02 A6 */	mflr r0
/* 81435C80 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81435C84 | DB E1 00 20 */	stfd f31, 0x20(r1)
/* 81435C88 | F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 81435C8C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81435C90 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81435C94 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81435C98 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81435C9C | 7C 7C 1B 78 */	mr r28, r3
/* 81435CA0 | C0 23 00 54 */	lfs f1, 0x54(r3)
/* 81435CA4 | C0 43 00 58 */	lfs f2, 0x58(r3)
/* 81435CA8 | C0 63 00 5C */	lfs f3, 0x5c(r3)
/* 81435CAC | C0 83 00 60 */	lfs f4, 0x60(r3)
/* 81435CB0 | C0 A3 00 64 */	lfs f5, 0x64(r3)
/* 81435CB4 | C0 C3 00 68 */	lfs f6, 0x68(r3)
/* 81435CB8 | 48 11 22 75 */	bl GXSetViewport
/* 81435CBC | C0 3C 00 60 */	lfs f1, 0x60(r28)
/* 81435CC0 | 48 1C 36 D9 */	bl __cvt_fp2unsigned
/* 81435CC4 | C0 3C 00 5C */	lfs f1, 0x5c(r28)
/* 81435CC8 | 7C 7D 1B 78 */	mr r29, r3
/* 81435CCC | 48 1C 36 CD */	bl __cvt_fp2unsigned
/* 81435CD0 | C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 81435CD4 | 7C 7E 1B 78 */	mr r30, r3
/* 81435CD8 | 48 1C 36 C1 */	bl __cvt_fp2unsigned
/* 81435CDC | C0 3C 00 54 */	lfs f1, 0x54(r28)
/* 81435CE0 | 7C 7F 1B 78 */	mr r31, r3
/* 81435CE4 | 48 1C 36 B5 */	bl __cvt_fp2unsigned
/* 81435CE8 | 7F E4 FB 78 */	mr r4, r31
/* 81435CEC | 7F C5 F3 78 */	mr r5, r30
/* 81435CF0 | 7F A6 EB 78 */	mr r6, r29
/* 81435CF4 | 48 11 22 B5 */	bl GXSetScissor
/* 81435CF8 | 7F 83 E3 78 */	mr r3, r28
/* 81435CFC | 48 0E 24 39 */	bl fn_81518134
/* 81435D00 | D0 3C 00 B4 */	stfs f1, 0xb4(r28)
/* 81435D04 | 7F 83 E3 78 */	mr r3, r28
/* 81435D08 | 81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 81435D0C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81435D10 | 7D 89 03 A6 */	mtctr r12
/* 81435D14 | 4E 80 04 21 */	bctrl
/* 81435D18 | FF E0 08 90 */	fmr f31, f1
/* 81435D1C | 7F 83 E3 78 */	mr r3, r28
/* 81435D20 | 48 0E 24 1D */	bl fn_8151813C
/* 81435D24 | C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 81435D28 | EC 00 08 28 */	fsubs f0, f0, f1
/* 81435D2C | EC 00 F8 2A */	fadds f0, f0, f31
/* 81435D30 | D0 1C 00 B8 */	stfs f0, 0xb8(r28)
/* 81435D34 | E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 81435D38 | CB E1 00 20 */	lfd f31, 0x20(r1)
/* 81435D3C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81435D40 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81435D44 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81435D48 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81435D4C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81435D50 | 7C 08 03 A6 */	mtlr r0
/* 81435D54 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81435D58 | 4E 80 00 20 */	blr
.endfn endDraw__Q39textinput10textdrawer4BaseFv

# .text:0xD8C | 0x81435D5C | size: 0x4
# textinput::textdrawer::Base::drawCursor(float, float)
.fn drawCursor__Q39textinput10textdrawer4BaseFff, global
/* 81435D5C | 4E 80 00 20 */	blr
.endfn drawCursor__Q39textinput10textdrawer4BaseFff

# .text:0xD90 | 0x81435D60 | size: 0x4
# textinput::textdrawer::Base::draw()
.fn draw__Q39textinput10textdrawer4BaseFv, global
/* 81435D60 | 4E 80 00 20 */	blr
.endfn draw__Q39textinput10textdrawer4BaseFv

# 0x8165F780..0x8165F818 | size: 0x98
.data
.balign 8

# .data:0x0 | 0x8165F780 | size: 0x98
# textinput::textdrawer::Base::__vtable
.obj __vt__Q39textinput10textdrawer4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q39textinput10textdrawer4BaseFP12MEMAllocator
	.4byte draw__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte draw__Q39textinput10textdrawer4BaseFv
	.4byte setDrawString__Q39textinput10textdrawer4BaseFPCwUlUl
	.4byte setAspectRatio__Q39textinput10textdrawer4BaseFb
	.4byte setVIWidth__Q39textinput10textdrawer4BaseFf
	.4byte beginDraw__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Rect
	.4byte endDraw__Q39textinput10textdrawer4BaseFv
	.4byte getLineHeight__Q39textinput10textdrawer4BaseFv
	.4byte setFont__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Font
	.4byte getWidth__Q39textinput10textdrawer4BaseFPCw
	.4byte getLine__Q39textinput10textdrawer4BaseFv
	.4byte 0x00000000
	.4byte setSecretModeOn__Q39textinput10textdrawer4BaseFb
	.4byte doBeforeDrawProcess__Q39textinput10textdrawer4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte doAfterDrawProcess__Q39textinput10textdrawer4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte preDraw__Q39textinput10textdrawer4BaseFUl
	.4byte finishDraw__Q39textinput10textdrawer4BaseFUl
	.4byte doLineFeed__Q39textinput10textdrawer4BaseFv
	.4byte put__Q39textinput10textdrawer4BaseFw
	.4byte procCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosl
	.4byte onCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte makeUpCursorPos__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll
	.4byte drawCursor__Q39textinput10textdrawer4BaseFff
	.4byte calcRect__Q39textinput10textdrawer4BaseFRQ49textinput10textdrawer4Base8DrawInfo
	.4byte getStartPos__Q39textinput10textdrawer4BaseCFv
	.4byte getEndPos__Q39textinput10textdrawer4BaseCFv
	.4byte setDrawModifyScopeLine__Q39textinput10textdrawer4BaseFll
	.4byte setDrawCacheScopeLine__Q39textinput10textdrawer4BaseFll
	.4byte modifyCursorCache__Q39textinput10textdrawer4BaseFlUlffff
	.4byte isEnableCursorCache__Q39textinput10textdrawer4BaseCFvgetStartPos__Q39textinput10textdrawer4BaseCFv
	.4byte getDrawModifyStartLine__Q39textinput10textdrawer4BaseCFv
	.4byte getDrawModifyEndLine__Q39textinput10textdrawer4BaseCFv
	.4byte getDrawCacheStartPos__Q39textinput10textdrawer4BaseCFv
	.4byte dirtyDrawCache__Q39textinput10textdrawer4BaseFv
	.4byte dirtyCursorCache__Q39textinput10textdrawer4BaseFv
.endobj __vt__Q39textinput10textdrawer4Base

# 0x81694DE0..0x81694E28 | size: 0x48
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694DE0 | size: 0x4
.obj lbl_81694DE0, global
	.float 640
.endobj lbl_81694DE0

# .sdata2:0x4 | 0x81694DE4 | size: 0x4
.obj lbl_81694DE4, global
	.float 0
.endobj lbl_81694DE4

# .sdata2:0x8 | 0x81694DE8 | size: 0x4
.obj lbl_81694DE8, global
	.float 1
.endobj lbl_81694DE8

# .sdata2:0xC | 0x81694DEC | size: 0x4
.obj lbl_81694DEC, global
	.float 0.0001
.endobj lbl_81694DEC

# .sdata2:0x10 | 0x81694DF0 | size: 0x8
.obj lbl_81694DF0, global
	.double 4503601774854144
.endobj lbl_81694DF0

# .sdata2:0x18 | 0x81694DF8 | size: 0x4
.obj lbl_81694DF8, global
	.float -50
.endobj lbl_81694DF8

# .sdata2:0x1C | 0x81694DFC | size: 0x4
.obj lbl_81694DFC, global
	.float 50
.endobj lbl_81694DFC

# .sdata2:0x20 | 0x81694E00 | size: 0x4
.obj lbl_81694E00, global
	.float -1
.endobj lbl_81694E00

# .sdata2:0x24 | 0x81694E04 | size: 0x4
.obj lbl_81694E04, global
	.float 0.5
.endobj lbl_81694E04

# .sdata2:0x28 | 0x81694E08 | size: 0x8
.obj lbl_81694E08, global
	.float 100
	.float 0
.endobj lbl_81694E08

# .sdata2:0x30 | 0x81694E10 | size: 0x4
.obj lbl_81694E10, global
	.float 0
.endobj lbl_81694E10

# .sdata2:0x34 | 0x81694E14 | size: 0x4
.obj lbl_81694E14, global
	.float 1
.endobj lbl_81694E14

# .sdata2:0x38 | 0x81694E18 | size: 0x4
.obj lbl_81694E18, global
	.float -1
.endobj lbl_81694E18

# .sdata2:0x3C | 0x81694E1C | size: 0x4
.obj gap_09_81694E1C_sdata2, global
.hidden gap_09_81694E1C_sdata2
	.4byte 0x00000000
.endobj gap_09_81694E1C_sdata2

# .sdata2:0x40 | 0x81694E20 | size: 0x8
.obj lbl_81694E20, global
	.double 4503599627370496
.endobj lbl_81694E20
