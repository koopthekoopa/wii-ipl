.include "macros.inc"
.file "HBMGUIManager.cpp"

# 0x81377D98..0x81378F38 | size: 0x11A0
.text
.balign 4

# .text:0x0 | 0x81377D98 | size: 0x1C0
# homebutton::gui::drawLine_(float, float, float, float, float, unsigned char, _GXColor&)
.fn drawLine___Q210homebutton3guiFfffffUcR8_GXColor, global
/* 81377D98 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81377D9C | 7C 08 02 A6 */	mflr r0
/* 81377DA0 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81377DA4 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 81377DA8 | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 81377DAC | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 81377DB0 | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 81377DB4 | DB A1 00 60 */	stfd f29, 0x60(r1)
/* 81377DB8 | F3 A1 00 68 */	psq_st f29, 0x68(r1), 0, qr0
/* 81377DBC | DB 81 00 50 */	stfd f28, 0x50(r1)
/* 81377DC0 | F3 81 00 58 */	psq_st f28, 0x58(r1), 0, qr0
/* 81377DC4 | DB 61 00 40 */	stfd f27, 0x40(r1)
/* 81377DC8 | F3 61 00 48 */	psq_st f27, 0x48(r1), 0, qr0
/* 81377DCC | FF 60 08 90 */	fmr f27, f1
/* 81377DD0 | FF 80 10 90 */	fmr f28, f2
/* 81377DD4 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81377DD8 | FF A0 18 90 */	fmr f29, f3
/* 81377DDC | FF C0 20 90 */	fmr f30, f4
/* 81377DE0 | 7C 9F 23 78 */	mr r31, r4
/* 81377DE4 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81377DE8 | FF E0 28 90 */	fmr f31, f5
/* 81377DEC | 7C 7E 1B 78 */	mr r30, r3
/* 81377DF0 | 48 1C BA DD */	bl GXClearVtxDesc
/* 81377DF4 | 38 60 00 09 */	li r3, 0x9
/* 81377DF8 | 38 80 00 01 */	li r4, 0x1
/* 81377DFC | 48 1C B6 91 */	bl GXSetVtxDesc
/* 81377E00 | 38 60 00 0B */	li r3, 0xb
/* 81377E04 | 38 80 00 01 */	li r4, 0x1
/* 81377E08 | 48 1C B6 85 */	bl GXSetVtxDesc
/* 81377E0C | 38 60 00 00 */	li r3, 0x0
/* 81377E10 | 38 80 00 09 */	li r4, 0x9
/* 81377E14 | 38 A0 00 01 */	li r5, 0x1
/* 81377E18 | 38 C0 00 04 */	li r6, 0x4
/* 81377E1C | 38 E0 00 00 */	li r7, 0x0
/* 81377E20 | 48 1C BA E1 */	bl GXSetVtxAttrFmt
/* 81377E24 | 38 60 00 00 */	li r3, 0x0
/* 81377E28 | 38 80 00 0B */	li r4, 0xb
/* 81377E2C | 38 A0 00 01 */	li r5, 0x1
/* 81377E30 | 38 C0 00 05 */	li r6, 0x5
/* 81377E34 | 38 E0 00 00 */	li r7, 0x0
/* 81377E38 | 48 1C BA C9 */	bl GXSetVtxAttrFmt
/* 81377E3C | 38 60 00 00 */	li r3, 0x0
/* 81377E40 | 48 1C CE 7D */	bl GXSetCullMode
/* 81377E44 | 38 60 00 01 */	li r3, 0x1
/* 81377E48 | 48 1C DB 7D */	bl GXSetNumChans
/* 81377E4C | 38 60 00 04 */	li r3, 0x4
/* 81377E50 | 38 80 00 00 */	li r4, 0x0
/* 81377E54 | 38 A0 00 01 */	li r5, 0x1
/* 81377E58 | 38 C0 00 01 */	li r6, 0x1
/* 81377E5C | 38 E0 00 00 */	li r7, 0x0
/* 81377E60 | 39 00 00 00 */	li r8, 0x0
/* 81377E64 | 39 20 00 02 */	li r9, 0x2
/* 81377E68 | 48 1C DB 81 */	bl GXSetChanCtrl
/* 81377E6C | 38 60 00 00 */	li r3, 0x0
/* 81377E70 | 48 1C C0 ED */	bl GXSetNumTexGens
/* 81377E74 | 38 60 00 01 */	li r3, 0x1
/* 81377E78 | 48 1C F5 7D */	bl GXSetNumTevStages
/* 81377E7C | 38 60 00 00 */	li r3, 0x0
/* 81377E80 | 38 80 00 04 */	li r4, 0x4
/* 81377E84 | 48 1C EF 15 */	bl GXSetTevOp
/* 81377E88 | 38 60 00 00 */	li r3, 0x0
/* 81377E8C | 38 80 00 FF */	li r4, 0xff
/* 81377E90 | 38 A0 00 FF */	li r5, 0xff
/* 81377E94 | 38 C0 00 04 */	li r6, 0x4
/* 81377E98 | 48 1C F4 01 */	bl GXSetTevOrder
/* 81377E9C | 38 60 00 00 */	li r3, 0x0
/* 81377EA0 | 38 80 00 00 */	li r4, 0x0
/* 81377EA4 | 38 A0 00 00 */	li r5, 0x0
/* 81377EA8 | 38 C0 00 05 */	li r6, 0x5
/* 81377EAC | 48 1C F8 BD */	bl GXSetBlendMode
/* 81377EB0 | C0 22 83 70 */	lfs f1, lbl_81694770@sda21(r0)
/* 81377EB4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81377EB8 | FC 40 08 90 */	fmr f2, f1
/* 81377EBC | FC 60 08 90 */	fmr f3, f1
/* 81377EC0 | 48 1C 93 89 */	bl fn_81541248
/* 81377EC4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81377EC8 | 38 80 00 00 */	li r4, 0x0
/* 81377ECC | 48 1C FE 55 */	bl GXLoadPosMtxImm
/* 81377ED0 | 7F C3 F3 78 */	mr r3, r30
/* 81377ED4 | 38 80 00 00 */	li r4, 0x0
/* 81377ED8 | 48 1C CD 41 */	bl GXSetLineWidth
/* 81377EDC | 38 60 00 A8 */	li r3, 0xa8
/* 81377EE0 | 38 80 00 00 */	li r4, 0x0
/* 81377EE4 | 38 A0 00 02 */	li r5, 0x2
/* 81377EE8 | 48 1C CB 0D */	bl GXBegin
/* 81377EEC | 3C 60 CC 01 */	lis r3, 0xcc01
/* 81377EF0 | D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 81377EF4 | D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 81377EF8 | D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 81377EFC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81377F00 | 90 03 80 00 */	stw r0, -0x8000(r3)
/* 81377F04 | D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 81377F08 | D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 81377F0C | D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 81377F10 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81377F14 | 90 03 80 00 */	stw r0, -0x8000(r3)
/* 81377F18 | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 81377F1C | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 81377F20 | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 81377F24 | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 81377F28 | E3 A1 00 68 */	psq_l f29, 0x68(r1), 0, qr0
/* 81377F2C | CB A1 00 60 */	lfd f29, 0x60(r1)
/* 81377F30 | E3 81 00 58 */	psq_l f28, 0x58(r1), 0, qr0
/* 81377F34 | CB 81 00 50 */	lfd f28, 0x50(r1)
/* 81377F38 | E3 61 00 48 */	psq_l f27, 0x48(r1), 0, qr0
/* 81377F3C | CB 61 00 40 */	lfd f27, 0x40(r1)
/* 81377F40 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81377F44 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 81377F48 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81377F4C | 7C 08 03 A6 */	mtlr r0
/* 81377F50 | 38 21 00 90 */	addi r1, r1, 0x90
/* 81377F54 | 4E 80 00 20 */	blr
.endfn drawLine___Q210homebutton3guiFfffffUcR8_GXColor

# .text:0x1C0 | 0x81377F58 | size: 0x1F8
# homebutton::gui::Component::update(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn update__Q310homebutton3gui9ComponentFiffUlUlUlPv, global
/* 81377F58 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81377F5C | 7C 08 02 A6 */	mflr r0
/* 81377F60 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81377F64 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81377F68 | DB E1 00 28 */	stfd f31, 0x28(r1)
/* 81377F6C | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 81377F70 | 48 28 15 55 */	bl _savegpr_28
/* 81377F74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81377F78 | FF C0 08 90 */	fmr f30, f1
/* 81377F7C | FF E0 10 90 */	fmr f31, f2
/* 81377F80 | 7C 7C 1B 78 */	mr r28, r3
/* 81377F84 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81377F88 | 7C 9D 23 78 */	mr r29, r4
/* 81377F8C | 7D 1E 43 78 */	mr r30, r8
/* 81377F90 | 3B E0 00 00 */	li r31, 0x0
/* 81377F94 | 7D 89 03 A6 */	mtctr r12
/* 81377F98 | 4E 80 04 21 */	bctrl
/* 81377F9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377FA0 | 41 82 01 8C */	beq .L_8137812C
/* 81377FA4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81377FA8 | FC 20 F0 90 */	fmr f1, f30
/* 81377FAC | FC 40 F8 90 */	fmr f2, f31
/* 81377FB0 | 7F 83 E3 78 */	mr r3, r28
/* 81377FB4 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81377FB8 | 7D 89 03 A6 */	mtctr r12
/* 81377FBC | 4E 80 04 21 */	bctrl
/* 81377FC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377FC4 | 41 82 00 E4 */	beq .L_813780A8
/* 81377FC8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81377FCC | 7F 83 E3 78 */	mr r3, r28
/* 81377FD0 | 7F A4 EB 78 */	mr r4, r29
/* 81377FD4 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81377FD8 | 7D 89 03 A6 */	mtctr r12
/* 81377FDC | 4E 80 04 21 */	bctrl
/* 81377FE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377FE4 | 41 82 00 58 */	beq .L_8137803C
/* 81377FE8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81377FEC | FC 20 F0 90 */	fmr f1, f30
/* 81377FF0 | FC 40 F8 90 */	fmr f2, f31
/* 81377FF4 | 7F 83 E3 78 */	mr r3, r28
/* 81377FF8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81377FFC | 7D 89 03 A6 */	mtctr r12
/* 81378000 | 4E 80 04 21 */	bctrl
/* 81378004 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81378008 | 7F 83 E3 78 */	mr r3, r28
/* 8137800C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81378010 | 7D 89 03 A6 */	mtctr r12
/* 81378014 | 4E 80 04 21 */	bctrl
/* 81378018 | 7C 64 1B 78 */	mr r4, r3
/* 8137801C | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 81378020 | 7F C6 F3 78 */	mr r6, r30
/* 81378024 | 38 A0 00 03 */	li r5, 0x3
/* 81378028 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137802C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81378030 | 7D 89 03 A6 */	mtctr r12
/* 81378034 | 4E 80 04 21 */	bctrl
/* 81378038 | 48 00 00 68 */	b .L_813780A0
.L_8137803C:
/* 8137803C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81378040 | 7F 83 E3 78 */	mr r3, r28
/* 81378044 | 7F A4 EB 78 */	mr r4, r29
/* 81378048 | 38 A0 00 01 */	li r5, 0x1
/* 8137804C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81378050 | 7D 89 03 A6 */	mtctr r12
/* 81378054 | 4E 80 04 21 */	bctrl
/* 81378058 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8137805C | 7F 83 E3 78 */	mr r3, r28
/* 81378060 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81378064 | 7D 89 03 A6 */	mtctr r12
/* 81378068 | 4E 80 04 21 */	bctrl
/* 8137806C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81378070 | 7F 83 E3 78 */	mr r3, r28
/* 81378074 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81378078 | 7D 89 03 A6 */	mtctr r12
/* 8137807C | 4E 80 04 21 */	bctrl
/* 81378080 | 7C 64 1B 78 */	mr r4, r3
/* 81378084 | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 81378088 | 7F C6 F3 78 */	mr r6, r30
/* 8137808C | 38 A0 00 01 */	li r5, 0x1
/* 81378090 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378094 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81378098 | 7D 89 03 A6 */	mtctr r12
/* 8137809C | 4E 80 04 21 */	bctrl
.L_813780A0:
/* 813780A0 | 3B E0 00 01 */	li r31, 0x1
/* 813780A4 | 48 00 00 88 */	b .L_8137812C
.L_813780A8:
/* 813780A8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813780AC | 7F 83 E3 78 */	mr r3, r28
/* 813780B0 | 7F A4 EB 78 */	mr r4, r29
/* 813780B4 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813780B8 | 7D 89 03 A6 */	mtctr r12
/* 813780BC | 4E 80 04 21 */	bctrl
/* 813780C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813780C4 | 41 82 00 68 */	beq .L_8137812C
/* 813780C8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813780CC | 7F 83 E3 78 */	mr r3, r28
/* 813780D0 | 7F A4 EB 78 */	mr r4, r29
/* 813780D4 | 38 A0 00 00 */	li r5, 0x0
/* 813780D8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813780DC | 7D 89 03 A6 */	mtctr r12
/* 813780E0 | 4E 80 04 21 */	bctrl
/* 813780E4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813780E8 | 7F 83 E3 78 */	mr r3, r28
/* 813780EC | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 813780F0 | 7D 89 03 A6 */	mtctr r12
/* 813780F4 | 4E 80 04 21 */	bctrl
/* 813780F8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813780FC | 7F 83 E3 78 */	mr r3, r28
/* 81378100 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81378104 | 7D 89 03 A6 */	mtctr r12
/* 81378108 | 4E 80 04 21 */	bctrl
/* 8137810C | 7C 64 1B 78 */	mr r4, r3
/* 81378110 | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 81378114 | 7F C6 F3 78 */	mr r6, r30
/* 81378118 | 38 A0 00 02 */	li r5, 0x2
/* 8137811C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378120 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81378124 | 7D 89 03 A6 */	mtctr r12
/* 81378128 | 4E 80 04 21 */	bctrl
.L_8137812C:
/* 8137812C | CB E1 00 28 */	lfd f31, 0x28(r1)
/* 81378130 | 7F E3 FB 78 */	mr r3, r31
/* 81378134 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81378138 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137813C | 48 28 13 D5 */	bl _restgpr_28
/* 81378140 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81378144 | 7C 08 03 A6 */	mtlr r0
/* 81378148 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8137814C | 4E 80 00 20 */	blr
.endfn update__Q310homebutton3gui9ComponentFiffUlUlUlPv

# .text:0x3B8 | 0x81378150 | size: 0x8
# homebutton::gui::Component::isVisible()
.fn isVisible__Q310homebutton3gui9ComponentFv, global
/* 81378150 | 38 60 00 01 */	li r3, 0x1
/* 81378154 | 4E 80 00 20 */	blr
.endfn isVisible__Q310homebutton3gui9ComponentFv

# .text:0x3C0 | 0x81378158 | size: 0xC
# homebutton::gui::Component::isPointed(int)
.fn isPointed__Q310homebutton3gui9ComponentFi, global
/* 81378158 | 7C 63 22 14 */	add r3, r3, r4
/* 8137815C | 88 63 00 04 */	lbz r3, 0x4(r3)
/* 81378160 | 4E 80 00 20 */	blr
.endfn isPointed__Q310homebutton3gui9ComponentFi

# .text:0x3CC | 0x81378164 | size: 0x4
# homebutton::gui::Component::onMove(float, float)
.fn onMove__Q310homebutton3gui9ComponentFff, global
/* 81378164 | 4E 80 00 20 */	blr
.endfn onMove__Q310homebutton3gui9ComponentFff

# .text:0x3D0 | 0x81378168 | size: 0x20
# homebutton::gui::Manager::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q310homebutton3gui7ManagerFUlUlPv, global
/* 81378168 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8137816C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378170 | 4D 82 00 20 */	beqlr
/* 81378174 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378178 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8137817C | 7D 89 03 A6 */	mtctr r12
/* 81378180 | 4E 80 04 20 */	bctr
/* 81378184 | 4E 80 00 20 */	blr
.endfn onEvent__Q310homebutton3gui7ManagerFUlUlPv

# .text:0x3F0 | 0x81378188 | size: 0x8
# homebutton::gui::Component::getID()
.fn getID__Q310homebutton3gui9ComponentFv, global
/* 81378188 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8137818C | 4E 80 00 20 */	blr
.endfn getID__Q310homebutton3gui9ComponentFv

# .text:0x3F8 | 0x81378190 | size: 0xC
# homebutton::gui::Component::setPointed(int, bool)
.fn setPointed__Q310homebutton3gui9ComponentFib, global
/* 81378190 | 7C 63 22 14 */	add r3, r3, r4
/* 81378194 | 98 A3 00 04 */	stb r5, 0x4(r3)
/* 81378198 | 4E 80 00 20 */	blr
.endfn setPointed__Q310homebutton3gui9ComponentFib

# .text:0x404 | 0x8137819C | size: 0x4
# homebutton::gui::Component::onPoint()
.fn onPoint__Q310homebutton3gui9ComponentFv, global
/* 8137819C | 4E 80 00 20 */	blr
.endfn onPoint__Q310homebutton3gui9ComponentFv

# .text:0x408 | 0x813781A0 | size: 0x4
# homebutton::gui::Component::offPoint()
.fn offPoint__Q310homebutton3gui9ComponentFv, global
/* 813781A0 | 4E 80 00 20 */	blr
.endfn offPoint__Q310homebutton3gui9ComponentFv

# .text:0x40C | 0x813781A4 | size: 0xB4
# homebutton::gui::Manager::~Manager()
.fn __dt__Q310homebutton3gui7ManagerFv, global
/* 813781A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813781A8 | 7C 08 02 A6 */	mflr r0
/* 813781AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813781B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813781B4 | 48 28 13 15 */	bl _savegpr_29
/* 813781B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813781BC | 7C 7D 1B 78 */	mr r29, r3
/* 813781C0 | 7C 9E 23 78 */	mr r30, r4
/* 813781C4 | 41 82 00 78 */	beq .L_8137823C
/* 813781C8 | 3C A0 81 64 */	lis r5, __vt__Q310homebutton3gui7Manager@ha
/* 813781CC | 38 80 00 00 */	li r4, 0x0
/* 813781D0 | 38 A5 56 FC */	addi r5, r5, __vt__Q310homebutton3gui7Manager@l
/* 813781D4 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813781D8 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813781DC | 48 19 A1 01 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813781E0 | 7C 7F 1B 78 */	mr r31, r3
/* 813781E4 | 48 00 00 40 */	b .L_81378224
.L_813781E8:
/* 813781E8 | 7F E4 FB 78 */	mr r4, r31
/* 813781EC | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813781F0 | 48 19 A0 81 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813781F4 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 813781F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813781FC | 41 82 00 10 */	beq .L_8137820C
/* 81378200 | 7F E4 FB 78 */	mr r4, r31
/* 81378204 | 48 1E 34 75 */	bl fn_8155B678
/* 81378208 | 48 00 00 0C */	b .L_81378214
.L_8137820C:
/* 8137820C | 7F E3 FB 78 */	mr r3, r31
/* 81378210 | 48 27 FE D5 */	bl __dl__FPv
.L_81378214:
/* 81378214 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81378218 | 38 80 00 00 */	li r4, 0x0
/* 8137821C | 48 19 A0 C1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81378220 | 7C 7F 1B 78 */	mr r31, r3
.L_81378224:
/* 81378224 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81378228 | 40 82 FF C0 */	bne .L_813781E8
/* 8137822C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81378230 | 40 81 00 0C */	ble .L_8137823C
/* 81378234 | 7F A3 EB 78 */	mr r3, r29
/* 81378238 | 48 27 FE AD */	bl __dl__FPv
.L_8137823C:
/* 8137823C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378240 | 7F A3 EB 78 */	mr r3, r29
/* 81378244 | 48 28 12 D1 */	bl _restgpr_29
/* 81378248 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137824C | 7C 08 03 A6 */	mtlr r0
/* 81378250 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81378254 | 4E 80 00 20 */	blr
.endfn __dt__Q310homebutton3gui7ManagerFv

# .text:0x4C0 | 0x81378258 | size: 0x68
# homebutton::gui::Manager::init()
.fn init__Q310homebutton3gui7ManagerFv, global
/* 81378258 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137825C | 7C 08 02 A6 */	mflr r0
/* 81378260 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81378264 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81378268 | 3B E0 00 00 */	li r31, 0x0
/* 8137826C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81378270 | 7C 7E 1B 78 */	mr r30, r3
/* 81378274 | 48 00 00 28 */	b .L_8137829C
.L_81378278:
/* 81378278 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 8137827C | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81378280 | 48 19 A0 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81378284 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81378288 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137828C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81378290 | 7D 89 03 A6 */	mtctr r12
/* 81378294 | 4E 80 04 21 */	bctrl
/* 81378298 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8137829C:
/* 8137829C | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 813782A0 | 7C 1F 00 40 */	cmplw r31, r0
/* 813782A4 | 41 80 FF D4 */	blt .L_81378278
/* 813782A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813782AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813782B0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813782B4 | 7C 08 03 A6 */	mtlr r0
/* 813782B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813782BC | 4E 80 00 20 */	blr
.endfn init__Q310homebutton3gui7ManagerFv

# .text:0x528 | 0x813782C0 | size: 0x28
# homebutton::gui::Component::init()
.fn init__Q310homebutton3gui9ComponentFv, global
/* 813782C0 | 38 A0 00 00 */	li r5, 0x0
/* 813782C4 | 38 00 00 08 */	li r0, 0x8
/* 813782C8 | 98 A3 00 18 */	stb r5, 0x18(r3)
/* 813782CC | 38 C0 00 00 */	li r6, 0x0
/* 813782D0 | 7C 09 03 A6 */	mtctr r0
.L_813782D4:
/* 813782D4 | 7C 83 32 14 */	add r4, r3, r6
/* 813782D8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 813782DC | 98 A4 00 04 */	stb r5, 0x4(r4)
/* 813782E0 | 42 00 FF F4 */	bdnz .L_813782D4
/* 813782E4 | 4E 80 00 20 */	blr
.endfn init__Q310homebutton3gui9ComponentFv

# .text:0x550 | 0x813782E8 | size: 0xBC
# homebutton::gui::Manager::addComponent(homebutton::gui::Component*)
.fn addComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component, global
/* 813782E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813782EC | 7C 08 02 A6 */	mflr r0
/* 813782F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813782F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813782F8 | 48 28 11 D1 */	bl _savegpr_29
/* 813782FC | 7C 9E 23 78 */	mr r30, r4
/* 81378300 | 7C 7D 1B 78 */	mr r29, r3
/* 81378304 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81378308 | 7F C3 F3 78 */	mr r3, r30
/* 8137830C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81378310 | 7D 89 03 A6 */	mtctr r12
/* 81378314 | 4E 80 04 21 */	bctrl
/* 81378318 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8137831C | 7C 7F 1B 78 */	mr r31, r3
/* 81378320 | 7F C3 F3 78 */	mr r3, r30
/* 81378324 | 7F A4 EB 78 */	mr r4, r29
/* 81378328 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8137832C | 7D 89 03 A6 */	mtctr r12
/* 81378330 | 4E 80 04 21 */	bctrl
/* 81378334 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 81378338 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137833C | 41 82 00 2C */	beq .L_81378368
/* 81378340 | 38 80 00 10 */	li r4, 0x10
/* 81378344 | 48 1E 33 25 */	bl fn_8155B668
/* 81378348 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137834C | 41 82 00 0C */	beq .L_81378358
/* 81378350 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 81378354 | 93 C3 00 04 */	stw r30, 0x4(r3)
.L_81378358:
/* 81378358 | 7C 64 1B 78 */	mr r4, r3
/* 8137835C | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81378360 | 48 19 9D 15 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81378364 | 48 00 00 28 */	b .L_8137838C
.L_81378368:
/* 81378368 | 38 60 00 10 */	li r3, 0x10
/* 8137836C | 48 27 FD 31 */	bl __nw__FUl
/* 81378370 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378374 | 41 82 00 0C */	beq .L_81378380
/* 81378378 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 8137837C | 93 C3 00 04 */	stw r30, 0x4(r3)
.L_81378380:
/* 81378380 | 7C 64 1B 78 */	mr r4, r3
/* 81378384 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81378388 | 48 19 9C ED */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_8137838C:
/* 8137838C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378390 | 48 28 11 85 */	bl _restgpr_29
/* 81378394 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81378398 | 7C 08 03 A6 */	mtlr r0
/* 8137839C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813783A0 | 4E 80 00 20 */	blr
.endfn addComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component

# .text:0x60C | 0x813783A4 | size: 0x8
# homebutton::gui::Component::setManager(homebutton::gui::Manager*)
.fn setManager__Q310homebutton3gui9ComponentFPQ310homebutton3gui7Manager, global
/* 813783A4 | 90 83 00 28 */	stw r4, 0x28(r3)
/* 813783A8 | 4E 80 00 20 */	blr
.endfn setManager__Q310homebutton3gui9ComponentFPQ310homebutton3gui7Manager

# .text:0x614 | 0x813783AC | size: 0x2C
# homebutton::gui::Manager::getComponent(unsigned long)
.fn getComponent__Q310homebutton3gui7ManagerFUl, global
/* 813783AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813783B0 | 7C 08 02 A6 */	mflr r0
/* 813783B4 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813783B8 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813783BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813783C0 | 48 19 9F 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813783C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813783C8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813783CC | 7C 08 03 A6 */	mtlr r0
/* 813783D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813783D4 | 4E 80 00 20 */	blr
.endfn getComponent__Q310homebutton3gui7ManagerFUl

# .text:0x640 | 0x813783D8 | size: 0x1A4
# homebutton::gui::Manager::update(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn update__Q310homebutton3gui7ManagerFiffUlUlUlPv, global
/* 813783D8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813783DC | 7C 08 02 A6 */	mflr r0
/* 813783E0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813783E4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813783E8 | DB E1 00 58 */	stfd f31, 0x58(r1)
/* 813783EC | DB C1 00 50 */	stfd f30, 0x50(r1)
/* 813783F0 | 48 28 10 BD */	bl _savegpr_22
/* 813783F4 | FF C0 08 90 */	fmr f30, f1
/* 813783F8 | 7C 76 1B 78 */	mr r22, r3
/* 813783FC | FF E0 10 90 */	fmr f31, f2
/* 81378400 | 7C 97 23 78 */	mr r23, r4
/* 81378404 | 7C B8 2B 78 */	mr r24, r5
/* 81378408 | 7C D9 33 78 */	mr r25, r6
/* 8137840C | 7C FA 3B 78 */	mr r26, r7
/* 81378410 | 7D 1B 43 78 */	mr r27, r8
/* 81378414 | 3B C0 00 00 */	li r30, 0x0
/* 81378418 | 3B A0 00 00 */	li r29, 0x0
/* 8137841C | 3B 80 00 00 */	li r28, 0x0
/* 81378420 | 48 00 00 74 */	b .L_81378494
.L_81378424:
/* 81378424 | 38 76 00 08 */	addi r3, r22, 0x8
/* 81378428 | 57 84 04 3E */	clrlwi r4, r28, 16
/* 8137842C | 48 19 9E ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81378430 | 7C 7F 1B 78 */	mr r31, r3
/* 81378434 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81378438 | FC 20 F0 90 */	fmr f1, f30
/* 8137843C | 7E E4 BB 78 */	mr r4, r23
/* 81378440 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378444 | FC 40 F8 90 */	fmr f2, f31
/* 81378448 | 7F 05 C3 78 */	mr r5, r24
/* 8137844C | 7F 26 CB 78 */	mr r6, r25
/* 81378450 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81378454 | 7F 47 D3 78 */	mr r7, r26
/* 81378458 | 7F 68 DB 78 */	mr r8, r27
/* 8137845C | 7D 89 03 A6 */	mtctr r12
/* 81378460 | 4E 80 04 21 */	bctrl
/* 81378464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378468 | 41 82 00 28 */	beq .L_81378490
/* 8137846C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81378470 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378474 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81378478 | 7D 89 03 A6 */	mtctr r12
/* 8137847C | 4E 80 04 21 */	bctrl
/* 81378480 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378484 | 41 82 00 08 */	beq .L_8137848C
/* 81378488 | 83 BF 00 04 */	lwz r29, 0x4(r31)
.L_8137848C:
/* 8137848C | 3B C0 00 01 */	li r30, 0x1
.L_81378490:
/* 81378490 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81378494:
/* 81378494 | A0 16 00 10 */	lhz r0, 0x10(r22)
/* 81378498 | 7C 1C 00 40 */	cmplw r28, r0
/* 8137849C | 41 80 FF 88 */	blt .L_81378424
/* 813784A0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813784A4 | 41 82 00 B4 */	beq .L_81378558
/* 813784A8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 813784AC | 41 82 00 54 */	beq .L_81378500
/* 813784B0 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813784B4 | 7F A3 EB 78 */	mr r3, r29
/* 813784B8 | 7F 04 C3 78 */	mr r4, r24
/* 813784BC | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813784C0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813784C4 | 7D 89 03 A6 */	mtctr r12
/* 813784C8 | 4E 80 04 21 */	bctrl
/* 813784CC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813784D0 | 7F A3 EB 78 */	mr r3, r29
/* 813784D4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813784D8 | 7D 89 03 A6 */	mtctr r12
/* 813784DC | 4E 80 04 21 */	bctrl
/* 813784E0 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 813784E4 | 7C 64 1B 78 */	mr r4, r3
/* 813784E8 | 7E C3 B3 78 */	mr r3, r22
/* 813784EC | 7F 66 DB 78 */	mr r6, r27
/* 813784F0 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 813784F4 | 38 A0 00 00 */	li r5, 0x0
/* 813784F8 | 7D 89 03 A6 */	mtctr r12
/* 813784FC | 4E 80 04 21 */	bctrl
.L_81378500:
/* 81378500 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81378504 | 41 82 00 54 */	beq .L_81378558
/* 81378508 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8137850C | 7F A3 EB 78 */	mr r3, r29
/* 81378510 | 7F 44 D3 78 */	mr r4, r26
/* 81378514 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81378518 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8137851C | 7D 89 03 A6 */	mtctr r12
/* 81378520 | 4E 80 04 21 */	bctrl
/* 81378524 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81378528 | 7F A3 EB 78 */	mr r3, r29
/* 8137852C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81378530 | 7D 89 03 A6 */	mtctr r12
/* 81378534 | 4E 80 04 21 */	bctrl
/* 81378538 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8137853C | 7C 64 1B 78 */	mr r4, r3
/* 81378540 | 7E C3 B3 78 */	mr r3, r22
/* 81378544 | 7F 66 DB 78 */	mr r6, r27
/* 81378548 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8137854C | 38 A0 00 05 */	li r5, 0x5
/* 81378550 | 7D 89 03 A6 */	mtctr r12
/* 81378554 | 4E 80 04 21 */	bctrl
.L_81378558:
/* 81378558 | CB E1 00 58 */	lfd f31, 0x58(r1)
/* 8137855C | 7F C3 F3 78 */	mr r3, r30
/* 81378560 | CB C1 00 50 */	lfd f30, 0x50(r1)
/* 81378564 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81378568 | 48 28 0F 91 */	bl _restgpr_22
/* 8137856C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81378570 | 7C 08 03 A6 */	mtlr r0
/* 81378574 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81378578 | 4E 80 00 20 */	blr
.endfn update__Q310homebutton3gui7ManagerFiffUlUlUlPv

# .text:0x7E4 | 0x8137857C | size: 0x8
# homebutton::gui::Component::isTriggerTarger()
.fn isTriggerTarger__Q310homebutton3gui9ComponentFv, global
/* 8137857C | 88 63 00 24 */	lbz r3, 0x24(r3)
/* 81378580 | 4E 80 00 20 */	blr
.endfn isTriggerTarger__Q310homebutton3gui9ComponentFv

# .text:0x7EC | 0x81378584 | size: 0x30
# homebutton::gui::Component::onTrig(unsigned long, Vec&)
.fn onTrig__Q310homebutton3gui9ComponentFUlR3Vec, global
/* 81378584 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 81378588 | 7C 80 00 39 */	and. r0, r4, r0
/* 8137858C | 4D 82 00 20 */	beqlr
/* 81378590 | C0 05 00 00 */	lfs f0, 0x0(r5)
/* 81378594 | 38 00 00 01 */	li r0, 0x1
/* 81378598 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8137859C | C0 05 00 04 */	lfs f0, 0x4(r5)
/* 813785A0 | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 813785A4 | C0 05 00 08 */	lfs f0, 0x8(r5)
/* 813785A8 | D0 03 00 14 */	stfs f0, 0x14(r3)
/* 813785AC | 98 03 00 18 */	stb r0, 0x18(r3)
/* 813785B0 | 4E 80 00 20 */	blr
.endfn onTrig__Q310homebutton3gui9ComponentFUlR3Vec

# .text:0x81C | 0x813785B4 | size: 0x68
# homebutton::gui::Manager::calc()
.fn calc__Q310homebutton3gui7ManagerFv, global
/* 813785B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813785B8 | 7C 08 02 A6 */	mflr r0
/* 813785BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813785C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813785C4 | 3B E0 00 00 */	li r31, 0x0
/* 813785C8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813785CC | 7C 7E 1B 78 */	mr r30, r3
/* 813785D0 | 48 00 00 28 */	b .L_813785F8
.L_813785D4:
/* 813785D4 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 813785D8 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 813785DC | 48 19 9D 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813785E0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813785E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813785E8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813785EC | 7D 89 03 A6 */	mtctr r12
/* 813785F0 | 4E 80 04 21 */	bctrl
/* 813785F4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813785F8:
/* 813785F8 | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 813785FC | 7C 1F 00 40 */	cmplw r31, r0
/* 81378600 | 41 80 FF D4 */	blt .L_813785D4
/* 81378604 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81378608 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137860C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81378610 | 7C 08 03 A6 */	mtlr r0
/* 81378614 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81378618 | 4E 80 00 20 */	blr
.endfn calc__Q310homebutton3gui7ManagerFv

# .text:0x884 | 0x8137861C | size: 0x68
# homebutton::gui::Manager::draw()
.fn draw__Q310homebutton3gui7ManagerFv, global
/* 8137861C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81378620 | 7C 08 02 A6 */	mflr r0
/* 81378624 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81378628 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137862C | 3B E0 00 00 */	li r31, 0x0
/* 81378630 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81378634 | 7C 7E 1B 78 */	mr r30, r3
/* 81378638 | 48 00 00 28 */	b .L_81378660
.L_8137863C:
/* 8137863C | 38 7E 00 08 */	addi r3, r30, 0x8
/* 81378640 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81378644 | 48 19 9C D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81378648 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8137864C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378650 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81378654 | 7D 89 03 A6 */	mtctr r12
/* 81378658 | 4E 80 04 21 */	bctrl
/* 8137865C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81378660:
/* 81378660 | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 81378664 | 7C 1F 00 40 */	cmplw r31, r0
/* 81378668 | 41 80 FF D4 */	blt .L_8137863C
/* 8137866C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81378670 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81378674 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81378678 | 7C 08 03 A6 */	mtlr r0
/* 8137867C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81378680 | 4E 80 00 20 */	blr
.endfn draw__Q310homebutton3gui7ManagerFv

# .text:0x8EC | 0x81378684 | size: 0x70
# homebutton::gui::Manager::setAllComponentTriggerTarget(bool)
.fn setAllComponentTriggerTarget__Q310homebutton3gui7ManagerFb, global
/* 81378684 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81378688 | 7C 08 02 A6 */	mflr r0
/* 8137868C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81378690 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378694 | 48 28 0E 35 */	bl _savegpr_29
/* 81378698 | 7C 7D 1B 78 */	mr r29, r3
/* 8137869C | 7C 9E 23 78 */	mr r30, r4
/* 813786A0 | 3B E0 00 00 */	li r31, 0x0
/* 813786A4 | 48 00 00 2C */	b .L_813786D0
.L_813786A8:
/* 813786A8 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813786AC | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 813786B0 | 48 19 9C 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813786B4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813786B8 | 7F C4 F3 78 */	mr r4, r30
/* 813786BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813786C0 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 813786C4 | 7D 89 03 A6 */	mtctr r12
/* 813786C8 | 4E 80 04 21 */	bctrl
/* 813786CC | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813786D0:
/* 813786D0 | A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 813786D4 | 7C 1F 00 40 */	cmplw r31, r0
/* 813786D8 | 41 80 FF D0 */	blt .L_813786A8
/* 813786DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813786E0 | 48 28 0E 35 */	bl _restgpr_29
/* 813786E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813786E8 | 7C 08 03 A6 */	mtlr r0
/* 813786EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813786F0 | 4E 80 00 20 */	blr
.endfn setAllComponentTriggerTarget__Q310homebutton3gui7ManagerFb

# .text:0x95C | 0x813786F4 | size: 0xEC
# homebutton::gui::PaneManager::~PaneManager()
.fn __dt__Q310homebutton3gui11PaneManagerFv, global
/* 813786F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813786F8 | 7C 08 02 A6 */	mflr r0
/* 813786FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81378700 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378704 | 48 28 0D C5 */	bl _savegpr_29
/* 81378708 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137870C | 7C 7D 1B 78 */	mr r29, r3
/* 81378710 | 7C 9E 23 78 */	mr r30, r4
/* 81378714 | 41 82 00 B0 */	beq .L_813787C4
/* 81378718 | 3C A0 81 64 */	lis r5, __vt__Q310homebutton3gui11PaneManager@ha
/* 8137871C | 38 80 00 00 */	li r4, 0x0
/* 81378720 | 38 A5 56 A8 */	addi r5, r5, __vt__Q310homebutton3gui11PaneManager@l
/* 81378724 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81378728 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8137872C | 48 19 9B B1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81378730 | 7C 7F 1B 78 */	mr r31, r3
/* 81378734 | 48 00 00 6C */	b .L_813787A0
.L_81378738:
/* 81378738 | 7F E4 FB 78 */	mr r4, r31
/* 8137873C | 38 7D 00 18 */	addi r3, r29, 0x18
/* 81378740 | 48 19 9B 31 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81378744 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 81378748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137874C | 41 82 00 1C */	beq .L_81378768
/* 81378750 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81378754 | 48 1E 2F 25 */	bl fn_8155B678
/* 81378758 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8137875C | 7F E4 FB 78 */	mr r4, r31
/* 81378760 | 48 1E 2F 19 */	bl fn_8155B678
/* 81378764 | 48 00 00 2C */	b .L_81378790
.L_81378768:
/* 81378768 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8137876C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378770 | 41 82 00 18 */	beq .L_81378788
/* 81378774 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378778 | 38 80 00 01 */	li r4, 0x1
/* 8137877C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81378780 | 7D 89 03 A6 */	mtctr r12
/* 81378784 | 4E 80 04 21 */	bctrl
.L_81378788:
/* 81378788 | 7F E3 FB 78 */	mr r3, r31
/* 8137878C | 48 27 F9 59 */	bl __dl__FPv
.L_81378790:
/* 81378790 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 81378794 | 38 80 00 00 */	li r4, 0x0
/* 81378798 | 48 19 9B 45 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8137879C | 7C 7F 1B 78 */	mr r31, r3
.L_813787A0:
/* 813787A0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813787A4 | 40 82 FF 94 */	bne .L_81378738
/* 813787A8 | 7F A3 EB 78 */	mr r3, r29
/* 813787AC | 38 80 00 00 */	li r4, 0x0
/* 813787B0 | 4B FF F9 F5 */	bl __dt__Q310homebutton3gui7ManagerFv
/* 813787B4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813787B8 | 40 81 00 0C */	ble .L_813787C4
/* 813787BC | 7F A3 EB 78 */	mr r3, r29
/* 813787C0 | 48 27 F9 25 */	bl __dl__FPv
.L_813787C4:
/* 813787C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813787C8 | 7F A3 EB 78 */	mr r3, r29
/* 813787CC | 48 28 0D 49 */	bl _restgpr_29
/* 813787D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813787D4 | 7C 08 03 A6 */	mtlr r0
/* 813787D8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813787DC | 4E 80 00 20 */	blr
.endfn __dt__Q310homebutton3gui11PaneManagerFv

# .text:0xA48 | 0x813787E0 | size: 0x40
# homebutton::gui::PaneComponent::~PaneComponent()
.fn __dt__Q310homebutton3gui13PaneComponentFv, global
/* 813787E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813787E4 | 7C 08 02 A6 */	mflr r0
/* 813787E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813787EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813787F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813787F4 | 7C 7F 1B 78 */	mr r31, r3
/* 813787F8 | 41 82 00 10 */	beq .L_81378808
/* 813787FC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81378800 | 40 81 00 08 */	ble .L_81378808
/* 81378804 | 48 27 F8 E1 */	bl __dl__FPv
.L_81378808:
/* 81378808 | 7F E3 FB 78 */	mr r3, r31
/* 8137880C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81378810 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81378814 | 7C 08 03 A6 */	mtlr r0
/* 81378818 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137881C | 4E 80 00 20 */	blr
.endfn __dt__Q310homebutton3gui13PaneComponentFv

# .text:0xA88 | 0x81378820 | size: 0x40
# homebutton::gui::Component::~Component()
.fn __dt__Q310homebutton3gui9ComponentFv, global
/* 81378820 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81378824 | 7C 08 02 A6 */	mflr r0
/* 81378828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137882C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81378830 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81378834 | 7C 7F 1B 78 */	mr r31, r3
/* 81378838 | 41 82 00 10 */	beq .L_81378848
/* 8137883C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81378840 | 40 81 00 08 */	ble .L_81378848
/* 81378844 | 48 27 F8 A1 */	bl __dl__FPv
.L_81378848:
/* 81378848 | 7F E3 FB 78 */	mr r3, r31
/* 8137884C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81378850 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81378854 | 7C 08 03 A6 */	mtlr r0
/* 81378858 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137885C | 4E 80 00 20 */	blr
.endfn __dt__Q310homebutton3gui9ComponentFv

# .text:0xAC8 | 0x81378860 | size: 0x20
# homebutton::gui::PaneManager::createLayoutScene(const nw4r::lyt::Layout&)
.fn createLayoutScene__Q310homebutton3gui11PaneManagerFRCQ34nw4r3lyt6Layout, global
/* 81378860 | 38 00 00 00 */	li r0, 0x0
/* 81378864 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 81378868 | 90 0D A9 80 */	stw r0, lbl_816989C0@sda21(r0)
/* 8137886C | 38 84 00 10 */	addi r4, r4, 0x10
/* 81378870 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378874 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81378878 | 7D 89 03 A6 */	mtctr r12
/* 8137887C | 4E 80 04 20 */	bctr
.endfn createLayoutScene__Q310homebutton3gui11PaneManagerFRCQ34nw4r3lyt6Layout

# .text:0xAE8 | 0x81378880 | size: 0x1E4
.fn walkInChildren__Q310homebutton3gui11PaneManagerFRQ34nw4r2ut28LinkList, global
/* 81378880 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81378884 | 7C 08 02 A6 */	mflr r0
/* 81378888 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137888C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378890 | 48 28 0C 31 */	bl _savegpr_27
/* 81378894 | 83 E4 00 04 */	lwz r31, 0x4(r4)
/* 81378898 | 7C 7B 1B 78 */	mr r27, r3
/* 8137889C | 3B C4 00 04 */	addi r30, r4, 0x4
/* 813788A0 | 48 00 01 A4 */	b .L_81378A44
.L_813788A4:
/* 813788A4 | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 813788A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813788AC | 41 82 00 50 */	beq .L_813788FC
/* 813788B0 | 38 80 00 30 */	li r4, 0x30
/* 813788B4 | 48 1E 2D B5 */	bl fn_8155B668
/* 813788B8 | 7C 7C 1B 78 */	mr r28, r3
/* 813788BC | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 813788C0 | 38 80 00 10 */	li r4, 0x10
/* 813788C4 | 48 1E 2D A5 */	bl fn_8155B668
/* 813788C8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813788CC | 7C 7D 1B 78 */	mr r29, r3
/* 813788D0 | 41 82 00 14 */	beq .L_813788E4
/* 813788D4 | 80 8D A9 80 */	lwz r4, lbl_816989C0@sda21(r0)
/* 813788D8 | 7F 83 E3 78 */	mr r3, r28
/* 813788DC | 48 00 01 89 */	bl __ct__Q310homebutton3gui13PaneComponentFUl
/* 813788E0 | 7C 7C 1B 78 */	mr r28, r3
.L_813788E4:
/* 813788E4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813788E8 | 41 82 00 54 */	beq .L_8137893C
/* 813788EC | 38 1F FF FC */	subi r0, r31, 0x4
/* 813788F0 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 813788F4 | 93 9D 00 04 */	stw r28, 0x4(r29)
/* 813788F8 | 48 00 00 44 */	b .L_8137893C
.L_813788FC:
/* 813788FC | 38 60 00 30 */	li r3, 0x30
/* 81378900 | 48 27 F7 9D */	bl __nw__FUl
/* 81378904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378908 | 7C 7C 1B 78 */	mr r28, r3
/* 8137890C | 41 82 00 10 */	beq .L_8137891C
/* 81378910 | 80 8D A9 80 */	lwz r4, lbl_816989C0@sda21(r0)
/* 81378914 | 48 00 01 51 */	bl __ct__Q310homebutton3gui13PaneComponentFUl
/* 81378918 | 7C 7C 1B 78 */	mr r28, r3
.L_8137891C:
/* 8137891C | 38 60 00 10 */	li r3, 0x10
/* 81378920 | 48 27 F7 7D */	bl __nw__FUl
/* 81378924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378928 | 41 82 00 10 */	beq .L_81378938
/* 8137892C | 38 1F FF FC */	subi r0, r31, 0x4
/* 81378930 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81378934 | 93 83 00 04 */	stw r28, 0x4(r3)
.L_81378938:
/* 81378938 | 7C 7D 1B 78 */	mr r29, r3
.L_8137893C:
/* 8137893C | 7F A4 EB 78 */	mr r4, r29
/* 81378940 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 81378944 | 48 19 97 31 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81378948 | 80 8D A9 80 */	lwz r4, lbl_816989C0@sda21(r0)
/* 8137894C | 3B BF FF FC */	subi r29, r31, 0x4
/* 81378950 | 7F 83 E3 78 */	mr r3, r28
/* 81378954 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81378958 | 7F A4 EB 78 */	mr r4, r29
/* 8137895C | 90 0D A9 80 */	stw r0, lbl_816989C0@sda21(r0)
/* 81378960 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81378964 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81378968 | 7D 89 03 A6 */	mtctr r12
/* 8137896C | 4E 80 04 21 */	bctrl
/* 81378970 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81378974 | 7F A3 EB 78 */	mr r3, r29
/* 81378978 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8137897C | 7D 89 03 A6 */	mtctr r12
/* 81378980 | 4E 80 04 21 */	bctrl
/* 81378984 | 38 8D AF 70 */	li r4, lbl_81698FB0@sda21
/* 81378988 | 4B FF 0C D1 */	bl IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo
/* 8137898C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378990 | 41 82 00 0C */	beq .L_8137899C
/* 81378994 | 7F A0 EB 78 */	mr r0, r29
/* 81378998 | 48 00 00 08 */	b .L_813789A0
.L_8137899C:
/* 8137899C | 38 00 00 00 */	li r0, 0x0
.L_813789A0:
/* 813789A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813789A4 | 41 82 00 1C */	beq .L_813789C0
/* 813789A8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813789AC | 7F 83 E3 78 */	mr r3, r28
/* 813789B0 | 38 80 00 01 */	li r4, 0x1
/* 813789B4 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 813789B8 | 7D 89 03 A6 */	mtctr r12
/* 813789BC | 4E 80 04 21 */	bctrl
.L_813789C0:
/* 813789C0 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813789C4 | 7F A3 EB 78 */	mr r3, r29
/* 813789C8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813789CC | 7D 89 03 A6 */	mtctr r12
/* 813789D0 | 4E 80 04 21 */	bctrl
/* 813789D4 | 38 8D AF 80 */	li r4, lbl_81698FC0@sda21
/* 813789D8 | 4B FF 0C 81 */	bl IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo
/* 813789DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813789E0 | 41 82 00 0C */	beq .L_813789EC
/* 813789E4 | 7F A0 EB 78 */	mr r0, r29
/* 813789E8 | 48 00 00 08 */	b .L_813789F0
.L_813789EC:
/* 813789EC | 38 00 00 00 */	li r0, 0x0
.L_813789F0:
/* 813789F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813789F4 | 41 82 00 1C */	beq .L_81378A10
/* 813789F8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813789FC | 7F 83 E3 78 */	mr r3, r28
/* 81378A00 | 38 80 00 01 */	li r4, 0x1
/* 81378A04 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81378A08 | 7D 89 03 A6 */	mtctr r12
/* 81378A0C | 4E 80 04 21 */	bctrl
.L_81378A10:
/* 81378A10 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81378A14 | 7F 63 DB 78 */	mr r3, r27
/* 81378A18 | 7F 84 E3 78 */	mr r4, r28
/* 81378A1C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81378A20 | 7D 89 03 A6 */	mtctr r12
/* 81378A24 | 4E 80 04 21 */	bctrl
/* 81378A28 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81378A2C | 7F 63 DB 78 */	mr r3, r27
/* 81378A30 | 38 9D 00 10 */	addi r4, r29, 0x10
/* 81378A34 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81378A38 | 7D 89 03 A6 */	mtctr r12
/* 81378A3C | 4E 80 04 21 */	bctrl
/* 81378A40 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81378A44:
/* 81378A44 | 7C 1F F0 40 */	cmplw r31, r30
/* 81378A48 | 40 82 FE 5C */	bne .L_813788A4
/* 81378A4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378A50 | 48 28 0A BD */	bl _restgpr_27
/* 81378A54 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81378A58 | 7C 08 03 A6 */	mtlr r0
/* 81378A5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81378A60 | 4E 80 00 20 */	blr
.endfn walkInChildren__Q310homebutton3gui11PaneManagerFRQ34nw4r2ut28LinkList

# .text:0xCCC | 0x81378A64 | size: 0x74
# homebutton::gui::PaneComponent::PaneComponent(unsigned long)
.fn __ct__Q310homebutton3gui13PaneComponentFUl, global
/* 81378A64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81378A68 | 7C 08 02 A6 */	mflr r0
/* 81378A6C | 3D 80 81 64 */	lis r12, __vt__Q310homebutton3gui9Component@ha
/* 81378A70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81378A74 | 39 8C 57 38 */	addi r12, r12, __vt__Q310homebutton3gui9Component@l
/* 81378A78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81378A7C | 3B E0 00 00 */	li r31, 0x0
/* 81378A80 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81378A84 | 7C 7E 1B 78 */	mr r30, r3
/* 81378A88 | 9B E3 00 18 */	stb r31, 0x18(r3)
/* 81378A8C | 91 83 00 00 */	stw r12, 0x0(r3)
/* 81378A90 | 93 E3 00 1C */	stw r31, 0x1c(r3)
/* 81378A94 | 90 83 00 20 */	stw r4, 0x20(r3)
/* 81378A98 | 9B E3 00 24 */	stb r31, 0x24(r3)
/* 81378A9C | 93 E3 00 28 */	stw r31, 0x28(r3)
/* 81378AA0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81378AA4 | 7D 89 03 A6 */	mtctr r12
/* 81378AA8 | 4E 80 04 21 */	bctrl
/* 81378AAC | 3C 60 81 64 */	lis r3, __vt__Q310homebutton3gui13PaneComponent@ha
/* 81378AB0 | 93 FE 00 2C */	stw r31, 0x2c(r30)
/* 81378AB4 | 38 63 56 40 */	addi r3, r3, __vt__Q310homebutton3gui13PaneComponent@l
/* 81378AB8 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 81378ABC | 7F C3 F3 78 */	mr r3, r30
/* 81378AC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81378AC4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81378AC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81378ACC | 7C 08 03 A6 */	mtlr r0
/* 81378AD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81378AD4 | 4E 80 00 20 */	blr
.endfn __ct__Q310homebutton3gui13PaneComponentFUl

# .text:0xD40 | 0x81378AD8 | size: 0x8
# homebutton::gui::PaneComponent::setPane(nw4r::lyt::Pane*)
.fn setPane__Q310homebutton3gui13PaneComponentFPQ34nw4r3lyt4Pane, global
/* 81378AD8 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81378ADC | 4E 80 00 20 */	blr
.endfn setPane__Q310homebutton3gui13PaneComponentFPQ34nw4r3lyt4Pane

# .text:0xD48 | 0x81378AE0 | size: 0x70
# homebutton::gui::PaneManager::getPaneComponentByPane(nw4r::lyt::Pane*)
.fn getPaneComponentByPane__Q310homebutton3gui11PaneManagerFPQ34nw4r3lyt4Pane, global
/* 81378AE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81378AE4 | 7C 08 02 A6 */	mflr r0
/* 81378AE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81378AEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378AF0 | 48 28 09 D9 */	bl _savegpr_29
/* 81378AF4 | 7C 7D 1B 78 */	mr r29, r3
/* 81378AF8 | 7C 9E 23 78 */	mr r30, r4
/* 81378AFC | 3B E0 00 00 */	li r31, 0x0
/* 81378B00 | 48 00 00 28 */	b .L_81378B28
.L_81378B04:
/* 81378B04 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 81378B08 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81378B0C | 48 19 98 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81378B10 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81378B14 | 7C 00 F0 40 */	cmplw r0, r30
/* 81378B18 | 40 82 00 0C */	bne .L_81378B24
/* 81378B1C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81378B20 | 48 00 00 18 */	b .L_81378B38
.L_81378B24:
/* 81378B24 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81378B28:
/* 81378B28 | A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 81378B2C | 7C 1F 00 40 */	cmplw r31, r0
/* 81378B30 | 41 80 FF D4 */	blt .L_81378B04
/* 81378B34 | 38 60 00 00 */	li r3, 0x0
.L_81378B38:
/* 81378B38 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378B3C | 48 28 09 D9 */	bl _restgpr_29
/* 81378B40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81378B44 | 7C 08 03 A6 */	mtlr r0
/* 81378B48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81378B4C | 4E 80 00 20 */	blr
.endfn getPaneComponentByPane__Q310homebutton3gui11PaneManagerFPQ34nw4r3lyt4Pane

# .text:0xDB8 | 0x81378B50 | size: 0xAC
# homebutton::gui::PaneManager::setAllBoundingBoxComponentTriggerTarget(bool)
.fn setAllBoundingBoxComponentTriggerTarget__Q310homebutton3gui11PaneManagerFb, global
/* 81378B50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81378B54 | 7C 08 02 A6 */	mflr r0
/* 81378B58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81378B5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378B60 | 48 28 09 61 */	bl _savegpr_27
/* 81378B64 | 7C 7B 1B 78 */	mr r27, r3
/* 81378B68 | 7C 9C 23 78 */	mr r28, r4
/* 81378B6C | 3B A0 00 00 */	li r29, 0x0
/* 81378B70 | 48 00 00 68 */	b .L_81378BD8
.L_81378B74:
/* 81378B74 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 81378B78 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 81378B7C | 48 19 97 9D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81378B80 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 81378B84 | 7C 7F 1B 78 */	mr r31, r3
/* 81378B88 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81378B8C | 7F C3 F3 78 */	mr r3, r30
/* 81378B90 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81378B94 | 7D 89 03 A6 */	mtctr r12
/* 81378B98 | 4E 80 04 21 */	bctrl
/* 81378B9C | 38 8D AF 88 */	li r4, lbl_81698FC8@sda21
/* 81378BA0 | 4B FF 0A B9 */	bl IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo
/* 81378BA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378BA8 | 41 82 00 08 */	beq .L_81378BB0
/* 81378BAC | 48 00 00 08 */	b .L_81378BB4
.L_81378BB0:
/* 81378BB0 | 3B C0 00 00 */	li r30, 0x0
.L_81378BB4:
/* 81378BB4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81378BB8 | 41 82 00 1C */	beq .L_81378BD4
/* 81378BBC | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81378BC0 | 7F 84 E3 78 */	mr r4, r28
/* 81378BC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378BC8 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81378BCC | 7D 89 03 A6 */	mtctr r12
/* 81378BD0 | 4E 80 04 21 */	bctrl
.L_81378BD4:
/* 81378BD4 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81378BD8:
/* 81378BD8 | A0 1B 00 10 */	lhz r0, 0x10(r27)
/* 81378BDC | 7C 1D 00 40 */	cmplw r29, r0
/* 81378BE0 | 41 80 FF 94 */	blt .L_81378B74
/* 81378BE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81378BE8 | 48 28 09 25 */	bl _restgpr_27
/* 81378BEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81378BF0 | 7C 08 03 A6 */	mtlr r0
/* 81378BF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81378BF8 | 4E 80 00 20 */	blr
.endfn setAllBoundingBoxComponentTriggerTarget__Q310homebutton3gui11PaneManagerFb

# .text:0xE64 | 0x81378BFC | size: 0x128
# homebutton::gui::PaneComponent::contain(float, float)
.fn contain__Q310homebutton3gui13PaneComponentFff, global
/* 81378BFC | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81378C00 | 7C 08 02 A6 */	mflr r0
/* 81378C04 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81378C08 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 81378C0C | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 81378C10 | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 81378C14 | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 81378C18 | FF C0 08 90 */	fmr f30, f1
/* 81378C1C | FF E0 10 90 */	fmr f31, f2
/* 81378C20 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 81378C24 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 81378C28 | 7C 7E 1B 78 */	mr r30, r3
/* 81378C2C | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81378C30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81378C34 | 40 82 00 0C */	bne .L_81378C40
/* 81378C38 | 38 60 00 00 */	li r3, 0x0
/* 81378C3C | 48 00 00 C0 */	b .L_81378CFC
.L_81378C40:
/* 81378C40 | 7C 03 03 78 */	mr r3, r0
/* 81378C44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378C48 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81378C4C | 7D 89 03 A6 */	mtctr r12
/* 81378C50 | 4E 80 04 21 */	bctrl
/* 81378C54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378C58 | 7C 7F 1B 78 */	mr r31, r3
/* 81378C5C | 40 82 00 0C */	bne .L_81378C68
/* 81378C60 | 38 60 00 00 */	li r3, 0x0
/* 81378C64 | 48 00 00 98 */	b .L_81378CFC
.L_81378C68:
/* 81378C68 | 80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 81378C6C | 38 81 00 30 */	addi r4, r1, 0x30
/* 81378C70 | 38 63 00 84 */	addi r3, r3, 0x84
/* 81378C74 | 48 1C 82 E9 */	bl fn_81540F5C
/* 81378C78 | C0 02 83 70 */	lfs f0, lbl_81694770@sda21(r0)
/* 81378C7C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81378C80 | D3 C1 00 08 */	stfs f30, 0x8(r1)
/* 81378C84 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81378C88 | 38 A1 00 24 */	addi r5, r1, 0x24
/* 81378C8C | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81378C90 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81378C94 | 48 1C 88 29 */	bl fn_815414BC
/* 81378C98 | 80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 81378C9C | 7F E5 FB 78 */	mr r5, r31
/* 81378CA0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 81378CA4 | 48 1A 61 C1 */	bl fn_8151EE64
/* 81378CA8 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81378CAC | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 81378CB0 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81378CB4 | 4C 40 13 82 */	cror eq, lt, eq
/* 81378CB8 | 40 82 00 40 */	bne .L_81378CF8
/* 81378CBC | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81378CC0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81378CC4 | 4C 40 13 82 */	cror eq, lt, eq
/* 81378CC8 | 40 82 00 30 */	bne .L_81378CF8
/* 81378CCC | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 81378CD0 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 81378CD4 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81378CD8 | 4C 40 13 82 */	cror eq, lt, eq
/* 81378CDC | 40 82 00 1C */	bne .L_81378CF8
/* 81378CE0 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 81378CE4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81378CE8 | 4C 40 13 82 */	cror eq, lt, eq
/* 81378CEC | 40 82 00 0C */	bne .L_81378CF8
/* 81378CF0 | 38 60 00 01 */	li r3, 0x1
/* 81378CF4 | 48 00 00 08 */	b .L_81378CFC
.L_81378CF8:
/* 81378CF8 | 38 60 00 00 */	li r3, 0x0
.L_81378CFC:
/* 81378CFC | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 81378D00 | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 81378D04 | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 81378D08 | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 81378D0C | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 81378D10 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 81378D14 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 81378D18 | 7C 08 03 A6 */	mtlr r0
/* 81378D1C | 38 21 00 90 */	addi r1, r1, 0x90
/* 81378D20 | 4E 80 00 20 */	blr
.endfn contain__Q310homebutton3gui13PaneComponentFff

# .text:0xF8C | 0x81378D24 | size: 0x8
# homebutton::gui::PaneManager::getDrawInfo()
.fn getDrawInfo__Q310homebutton3gui11PaneManagerFv, global
/* 81378D24 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81378D28 | 4E 80 00 20 */	blr
.endfn getDrawInfo__Q310homebutton3gui11PaneManagerFv

# .text:0xF94 | 0x81378D2C | size: 0x18C
# homebutton::gui::PaneComponent::draw()
.fn draw__Q310homebutton3gui13PaneComponentFv, global
/* 81378D2C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81378D30 | 7C 08 02 A6 */	mflr r0
/* 81378D34 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81378D38 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81378D3C | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81378D40 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 81378D44 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 81378D48 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81378D4C | 7C 7F 1B 78 */	mr r31, r3
/* 81378D50 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 81378D54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378D58 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81378D5C | 7D 89 03 A6 */	mtctr r12
/* 81378D60 | 4E 80 04 21 */	bctrl
/* 81378D64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378D68 | 41 82 01 2C */	beq .L_81378E94
/* 81378D6C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81378D70 | 88 A2 83 74 */	lbz r5, lbl_81694774@sda21(r0)
/* 81378D74 | C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 81378D78 | C0 03 00 50 */	lfs f0, 0x50(r3)
/* 81378D7C | C3 E3 00 90 */	lfs f31, 0x90(r3)
/* 81378D80 | C3 C3 00 A0 */	lfs f30, 0xa0(r3)
/* 81378D84 | 88 82 83 75 */	lbz r4, lbl_81694775@sda21(r0)
/* 81378D88 | 88 62 83 76 */	lbz r3, lbl_81694776@sda21(r0)
/* 81378D8C | 88 02 83 77 */	lbz r0, lbl_81694777@sda21(r0)
/* 81378D90 | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 81378D94 | 98 81 00 09 */	stb r4, 0x9(r1)
/* 81378D98 | 98 61 00 0A */	stb r3, 0xa(r1)
/* 81378D9C | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81378DA0 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 81378DA4 | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 81378DA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81378DAC | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81378DB0 | 41 82 00 14 */	beq .L_81378DC4
/* 81378DB4 | 38 60 00 00 */	li r3, 0x0
/* 81378DB8 | 38 00 00 FF */	li r0, 0xff
/* 81378DBC | 98 61 00 08 */	stb r3, 0x8(r1)
/* 81378DC0 | 98 01 00 0A */	stb r0, 0xa(r1)
.L_81378DC4:
/* 81378DC4 | C0 22 83 78 */	lfs f1, lbl_81694778@sda21(r0)
/* 81378DC8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81378DCC | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81378DD0 | 38 60 00 08 */	li r3, 0x8
/* 81378DD4 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81378DD8 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81378DDC | C0 A2 83 70 */	lfs f5, lbl_81694770@sda21(r0)
/* 81378DE0 | EC 62 00 72 */	fmuls f3, f2, f1
/* 81378DE4 | EC 5E 00 28 */	fsubs f2, f30, f0
/* 81378DE8 | EC 3F 18 28 */	fsubs f1, f31, f3
/* 81378DEC | EC 7F 18 2A */	fadds f3, f31, f3
/* 81378DF0 | FC 80 10 90 */	fmr f4, f2
/* 81378DF4 | 4B FF EF A5 */	bl drawLine___Q210homebutton3guiFfffffUcR8_GXColor
/* 81378DF8 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 81378DFC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81378E00 | C0 42 83 78 */	lfs f2, lbl_81694778@sda21(r0)
/* 81378E04 | 38 60 00 08 */	li r3, 0x8
/* 81378E08 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81378E0C | EC 21 00 B2 */	fmuls f1, f1, f2
/* 81378E10 | C0 A2 83 70 */	lfs f5, lbl_81694770@sda21(r0)
/* 81378E14 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 81378E18 | EC 3F 08 2A */	fadds f1, f31, f1
/* 81378E1C | EC 5E 00 28 */	fsubs f2, f30, f0
/* 81378E20 | EC 9E 00 2A */	fadds f4, f30, f0
/* 81378E24 | FC 60 08 90 */	fmr f3, f1
/* 81378E28 | 4B FF EF 71 */	bl drawLine___Q210homebutton3guiFfffffUcR8_GXColor
/* 81378E2C | C0 22 83 78 */	lfs f1, lbl_81694778@sda21(r0)
/* 81378E30 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81378E34 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81378E38 | 38 60 00 08 */	li r3, 0x8
/* 81378E3C | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81378E40 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81378E44 | C0 A2 83 70 */	lfs f5, lbl_81694770@sda21(r0)
/* 81378E48 | EC 62 00 72 */	fmuls f3, f2, f1
/* 81378E4C | EC 5E 00 2A */	fadds f2, f30, f0
/* 81378E50 | EC 3F 18 2A */	fadds f1, f31, f3
/* 81378E54 | EC 7F 18 28 */	fsubs f3, f31, f3
/* 81378E58 | FC 80 10 90 */	fmr f4, f2
/* 81378E5C | 4B FF EF 3D */	bl drawLine___Q210homebutton3guiFfffffUcR8_GXColor
/* 81378E60 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 81378E64 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81378E68 | C0 42 83 78 */	lfs f2, lbl_81694778@sda21(r0)
/* 81378E6C | 38 60 00 08 */	li r3, 0x8
/* 81378E70 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81378E74 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 81378E78 | C0 A2 83 70 */	lfs f5, lbl_81694770@sda21(r0)
/* 81378E7C | EC 00 00 B2 */	fmuls f0, f0, f2
/* 81378E80 | EC 3F 08 28 */	fsubs f1, f31, f1
/* 81378E84 | EC 5E 00 2A */	fadds f2, f30, f0
/* 81378E88 | EC 9E 00 28 */	fsubs f4, f30, f0
/* 81378E8C | FC 60 08 90 */	fmr f3, f1
/* 81378E90 | 4B FF EF 09 */	bl drawLine___Q210homebutton3guiFfffffUcR8_GXColor
.L_81378E94:
/* 81378E94 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81378E98 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81378E9C | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 81378EA0 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81378EA4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81378EA8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81378EAC | 7C 08 03 A6 */	mtlr r0
/* 81378EB0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81378EB4 | 4E 80 00 20 */	blr
.endfn draw__Q310homebutton3gui13PaneComponentFv

# .text:0x1120 | 0x81378EB8 | size: 0x2C
.fn HBMGuiManager_81378EB8, local
/* 81378EB8 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81378EBC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 81378EC0 | 40 82 00 0C */	bne .L_81378ECC
/* 81378EC4 | 38 60 00 00 */	li r3, 0x0
/* 81378EC8 | 4E 80 00 20 */	blr
.L_81378ECC:
/* 81378ECC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81378ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378ED4 | 40 82 00 0C */	bne .L_81378EE0
/* 81378ED8 | 38 60 00 01 */	li r3, 0x1
/* 81378EDC | 4E 80 00 20 */	blr
.L_81378EE0:
/* 81378EE0 | 4B FF FF D8 */	b HBMGuiManager_81378EB8
.endfn HBMGuiManager_81378EB8

# .text:0x114C | 0x81378EE4 | size: 0x4
.fn HBMGuiManager_81378EE4, local
/* 81378EE4 | 4E 80 00 20 */	blr
.endfn HBMGuiManager_81378EE4

# .text:0x1150 | 0x81378EE8 | size: 0x8
# homebutton::gui::PaneComponent::isVisible()
.fn isVisible__Q310homebutton3gui13PaneComponentFv, global
/* 81378EE8 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81378EEC | 4B FF FF CC */	b HBMGuiManager_81378EB8
.endfn isVisible__Q310homebutton3gui13PaneComponentFv

# .text:0x1158 | 0x81378EF0 | size: 0x8
# homebutton::gui::Component::update(int, const KPADStatus*, float, float, void*)
.fn update__Q310homebutton3gui9ComponentFiPC10KPADStatusffPv, global
/* 81378EF0 | 38 60 00 00 */	li r3, 0x0
/* 81378EF4 | 4E 80 00 20 */	blr
.endfn update__Q310homebutton3gui9ComponentFiPC10KPADStatusffPv

# .text:0x1160 | 0x81378EF8 | size: 0x8
# homebutton::gui::Component::setDraggingButton(unsigned long)
.fn setDraggingButton__Q310homebutton3gui9ComponentFUl, global
/* 81378EF8 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 81378EFC | 4E 80 00 20 */	blr
.endfn setDraggingButton__Q310homebutton3gui9ComponentFUl

# .text:0x1168 | 0x81378F00 | size: 0x4
# homebutton::gui::Component::onDrag(float, float)
.fn onDrag__Q310homebutton3gui9ComponentFff, global
/* 81378F00 | 4E 80 00 20 */	blr
.endfn onDrag__Q310homebutton3gui9ComponentFff

# .text:0x116C | 0x81378F04 | size: 0x2C
# homebutton::gui::Manager::setEventHandler(homebutton::gui::EventHandler*)
.fn setEventHandler__Q310homebutton3gui7ManagerFPQ310homebutton3gui12EventHandler, global
/* 81378F04 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81378F08 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81378F0C | 7C 60 1B 78 */	mr r0, r3
/* 81378F10 | 4D 82 00 20 */	beqlr
/* 81378F14 | 7C 83 23 78 */	mr r3, r4
/* 81378F18 | 7C 04 03 78 */	mr r4, r0
/* 81378F1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81378F20 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81378F24 | 7D 89 03 A6 */	mtctr r12
/* 81378F28 | 4E 80 04 20 */	bctr
/* 81378F2C | 4E 80 00 20 */	blr
.endfn setEventHandler__Q310homebutton3gui7ManagerFPQ310homebutton3gui12EventHandler

# .text:0x1198 | 0x81378F30 | size: 0x8
# homebutton::gui::Manager::update(int, const KPADStatus*, float, float, void*)
.fn update__Q310homebutton3gui7ManagerFiPC10KPADStatusffPv, global
/* 81378F30 | 38 60 00 00 */	li r3, 0x0
/* 81378F34 | 4E 80 00 20 */	blr
.endfn update__Q310homebutton3gui7ManagerFiPC10KPADStatusffPv

# 0x81645640..0x81645798 | size: 0x158
.data
.balign 8

# .data:0x0 | 0x81645640 | size: 0x68
# homebutton::gui::PaneComponent::__vtable
.obj __vt__Q310homebutton3gui13PaneComponent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui9ComponentFv
	.4byte calc__Q310homebutton3gui9InterfaceFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui13PaneComponentFv
	.4byte __dt__Q310homebutton3gui13PaneComponentFv
	.4byte getID__Q310homebutton3gui9ComponentFv
	.4byte isPointed__Q310homebutton3gui9ComponentFi
	.4byte setPointed__Q310homebutton3gui9ComponentFib
	.4byte onPoint__Q310homebutton3gui9ComponentFv
	.4byte offPoint__Q310homebutton3gui9ComponentFv
	.4byte onDrag__Q310homebutton3gui9ComponentFff
	.4byte onMove__Q310homebutton3gui9ComponentFff
	.4byte onTrig__Q310homebutton3gui9ComponentFUlR3Vec
	.4byte setDraggingButton__Q310homebutton3gui9ComponentFUl
	.4byte update__Q310homebutton3gui9ComponentFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui9ComponentFiffUlUlUlPv
	.4byte isTriggerTarger__Q310homebutton3gui9ComponentFv
	.4byte setTriggerTarget__Q310homebutton3gui9ComponentFb
	.4byte setManager__Q310homebutton3gui9ComponentFPQ310homebutton3gui7Manager
	.4byte isVisible__Q310homebutton3gui13PaneComponentFv
	.4byte contain__Q310homebutton3gui13PaneComponentFff
	.4byte setPane__Q310homebutton3gui13PaneComponentFPQ34nw4r3lyt4Pane
	.4byte getPane__Q310homebutton3gui13PaneComponentFv
.endobj __vt__Q310homebutton3gui13PaneComponent

# .data:0x68 | 0x816456A8 | size: 0x54
# homebutton::gui::PaneManager::__vtable
.obj __vt__Q310homebutton3gui11PaneManager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui7ManagerFv
	.4byte calc__Q310homebutton3gui7ManagerFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui7ManagerFv
	.4byte __dt__Q310homebutton3gui11PaneManagerFv
	.4byte addComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component
	.4byte getComponent__Q310homebutton3gui7ManagerFUl
	.4byte update__Q310homebutton3gui7ManagerFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui7ManagerFiffUlUlUlPv
	.4byte onEvent__Q310homebutton3gui7ManagerFUlUlPv
	.4byte setAllComponentTriggerTarget__Q310homebutton3gui7ManagerFb
	.4byte setEventHandler__Q310homebutton3gui7ManagerFPQ310homebutton3gui12EventHandler
	.4byte createLayoutScene__Q310homebutton3gui11PaneManagerFRCQ34nw4r3lyt6Layout
	.4byte getPaneComponentByPane__Q310homebutton3gui11PaneManagerFPQ34nw4r3lyt4Pane
	.4byte getDrawInfo__Q310homebutton3gui11PaneManagerFv
	.4byte setDrawInfo__Q310homebutton3gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo
	.4byte setAllBoundingBoxComponentTriggerTarget__Q310homebutton3gui11PaneManagerFb
	.4byte walkInChildren__Q310homebutton3gui11PaneManagerFRQ34nw4r2ut28LinkList
.endobj __vt__Q310homebutton3gui11PaneManager

# .data:0xBC | 0x816456FC | size: 0x3C
# homebutton::gui::Manager::__vtable
.obj __vt__Q310homebutton3gui7Manager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui7ManagerFv
	.4byte calc__Q310homebutton3gui7ManagerFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui7ManagerFv
	.4byte __dt__Q310homebutton3gui7ManagerFv
	.4byte addComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component
	.4byte getComponent__Q310homebutton3gui7ManagerFUl
	.4byte update__Q310homebutton3gui7ManagerFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui7ManagerFiffUlUlUlPv
	.4byte onEvent__Q310homebutton3gui7ManagerFUlUlPv
	.4byte setAllComponentTriggerTarget__Q310homebutton3gui7ManagerFb
	.4byte setEventHandler__Q310homebutton3gui7ManagerFPQ310homebutton3gui12EventHandler
.endobj __vt__Q310homebutton3gui7Manager

# .data:0xF8 | 0x81645738 | size: 0x60
# homebutton::gui::Component::__vtable
.obj __vt__Q310homebutton3gui9Component, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui9ComponentFv
	.4byte calc__Q310homebutton3gui9InterfaceFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui9InterfaceFv
	.4byte __dt__Q310homebutton3gui9ComponentFv
	.4byte getID__Q310homebutton3gui9ComponentFv
	.4byte isPointed__Q310homebutton3gui9ComponentFi
	.4byte setPointed__Q310homebutton3gui9ComponentFib
	.4byte onPoint__Q310homebutton3gui9ComponentFv
	.4byte offPoint__Q310homebutton3gui9ComponentFv
	.4byte onDrag__Q310homebutton3gui9ComponentFff
	.4byte onMove__Q310homebutton3gui9ComponentFff
	.4byte onTrig__Q310homebutton3gui9ComponentFUlR3Vec
	.4byte setDraggingButton__Q310homebutton3gui9ComponentFUl
	.4byte update__Q310homebutton3gui9ComponentFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui9ComponentFiffUlUlUlPv
	.4byte isTriggerTarger__Q310homebutton3gui9ComponentFv
	.4byte setTriggerTarget__Q310homebutton3gui9ComponentFb
	.4byte setManager__Q310homebutton3gui9ComponentFPQ310homebutton3gui7Manager
	.4byte isVisible__Q310homebutton3gui9ComponentFv
	.4byte 0x00000000
.endobj __vt__Q310homebutton3gui9Component

# 0x81694770..0x81694780 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694770 | size: 0x4
.obj lbl_81694770, global
	.float 0
.endobj lbl_81694770

# .sdata2:0x4 | 0x81694774 | size: 0x1
.obj lbl_81694774, global
	.byte 0xFF
.endobj lbl_81694774

# .sdata2:0x5 | 0x81694775 | size: 0x1
.obj lbl_81694775, global
	.byte 0x00
.endobj lbl_81694775

# .sdata2:0x6 | 0x81694776 | size: 0x1
.obj lbl_81694776, global
	.byte 0x00
.endobj lbl_81694776

# .sdata2:0x7 | 0x81694777 | size: 0x1
.obj lbl_81694777, global
	.byte 0xFF
.endobj lbl_81694777

# .sdata2:0x8 | 0x81694778 | size: 0x8
.obj lbl_81694778, global
	.float 0.5
	.float 0
.endobj lbl_81694778

# 0x816989C0..0x816989C8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816989C0 | size: 0x8
.obj lbl_816989C0, global
	.skip 0x8
.endobj lbl_816989C0
