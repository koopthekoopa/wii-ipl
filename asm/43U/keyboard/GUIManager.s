.include "macros.inc"
.file "GUIManager.cpp"

# 0x81445BA4..0x814472C0 | size: 0x171C
.text
.balign 4

# .text:0x0 | 0x81445BA4 | size: 0x1C0
# textinput::gui::drawLine_(float, float, float, float, float, unsigned char, _GXColor&)
.fn drawLine___Q29textinput3guiFfffffUcR8_GXColor, global
/* 81445BA4 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81445BA8 | 7C 08 02 A6 */	mflr r0
/* 81445BAC | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81445BB0 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 81445BB4 | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 81445BB8 | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 81445BBC | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 81445BC0 | DB A1 00 60 */	stfd f29, 0x60(r1)
/* 81445BC4 | F3 A1 00 68 */	psq_st f29, 0x68(r1), 0, qr0
/* 81445BC8 | DB 81 00 50 */	stfd f28, 0x50(r1)
/* 81445BCC | F3 81 00 58 */	psq_st f28, 0x58(r1), 0, qr0
/* 81445BD0 | DB 61 00 40 */	stfd f27, 0x40(r1)
/* 81445BD4 | F3 61 00 48 */	psq_st f27, 0x48(r1), 0, qr0
/* 81445BD8 | FF 60 08 90 */	fmr f27, f1
/* 81445BDC | FF 80 10 90 */	fmr f28, f2
/* 81445BE0 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81445BE4 | FF A0 18 90 */	fmr f29, f3
/* 81445BE8 | FF C0 20 90 */	fmr f30, f4
/* 81445BEC | 7C 9F 23 78 */	mr r31, r4
/* 81445BF0 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81445BF4 | FF E0 28 90 */	fmr f31, f5
/* 81445BF8 | 7C 7E 1B 78 */	mr r30, r3
/* 81445BFC | 48 0F DC D1 */	bl GXClearVtxDesc
/* 81445C00 | 38 60 00 09 */	li r3, 0x9
/* 81445C04 | 38 80 00 01 */	li r4, 0x1
/* 81445C08 | 48 0F D8 85 */	bl GXSetVtxDesc
/* 81445C0C | 38 60 00 0B */	li r3, 0xb
/* 81445C10 | 38 80 00 01 */	li r4, 0x1
/* 81445C14 | 48 0F D8 79 */	bl GXSetVtxDesc
/* 81445C18 | 38 60 00 00 */	li r3, 0x0
/* 81445C1C | 38 80 00 09 */	li r4, 0x9
/* 81445C20 | 38 A0 00 01 */	li r5, 0x1
/* 81445C24 | 38 C0 00 04 */	li r6, 0x4
/* 81445C28 | 38 E0 00 00 */	li r7, 0x0
/* 81445C2C | 48 0F DC D5 */	bl GXSetVtxAttrFmt
/* 81445C30 | 38 60 00 00 */	li r3, 0x0
/* 81445C34 | 38 80 00 0B */	li r4, 0xb
/* 81445C38 | 38 A0 00 01 */	li r5, 0x1
/* 81445C3C | 38 C0 00 05 */	li r6, 0x5
/* 81445C40 | 38 E0 00 00 */	li r7, 0x0
/* 81445C44 | 48 0F DC BD */	bl GXSetVtxAttrFmt
/* 81445C48 | 38 60 00 00 */	li r3, 0x0
/* 81445C4C | 48 0F F0 71 */	bl GXSetCullMode
/* 81445C50 | 38 60 00 01 */	li r3, 0x1
/* 81445C54 | 48 0F FD 71 */	bl GXSetNumChans
/* 81445C58 | 38 60 00 04 */	li r3, 0x4
/* 81445C5C | 38 80 00 00 */	li r4, 0x0
/* 81445C60 | 38 A0 00 01 */	li r5, 0x1
/* 81445C64 | 38 C0 00 01 */	li r6, 0x1
/* 81445C68 | 38 E0 00 00 */	li r7, 0x0
/* 81445C6C | 39 00 00 00 */	li r8, 0x0
/* 81445C70 | 39 20 00 02 */	li r9, 0x2
/* 81445C74 | 48 0F FD 75 */	bl GXSetChanCtrl
/* 81445C78 | 38 60 00 00 */	li r3, 0x0
/* 81445C7C | 48 0F E2 E1 */	bl GXSetNumTexGens
/* 81445C80 | 38 60 00 01 */	li r3, 0x1
/* 81445C84 | 48 10 17 71 */	bl GXSetNumTevStages
/* 81445C88 | 38 60 00 00 */	li r3, 0x0
/* 81445C8C | 38 80 00 04 */	li r4, 0x4
/* 81445C90 | 48 10 11 09 */	bl GXSetTevOp
/* 81445C94 | 38 60 00 00 */	li r3, 0x0
/* 81445C98 | 38 80 00 FF */	li r4, 0xff
/* 81445C9C | 38 A0 00 FF */	li r5, 0xff
/* 81445CA0 | 38 C0 00 04 */	li r6, 0x4
/* 81445CA4 | 48 10 15 F5 */	bl GXSetTevOrder
/* 81445CA8 | 38 60 00 00 */	li r3, 0x0
/* 81445CAC | 38 80 00 00 */	li r4, 0x0
/* 81445CB0 | 38 A0 00 00 */	li r5, 0x0
/* 81445CB4 | 38 C0 00 05 */	li r6, 0x5
/* 81445CB8 | 48 10 1A B1 */	bl GXSetBlendMode
/* 81445CBC | C0 22 8A E8 */	lfs f1, lbl_81694EE8@sda21(r0)
/* 81445CC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81445CC4 | FC 40 08 90 */	fmr f2, f1
/* 81445CC8 | FC 60 08 90 */	fmr f3, f1
/* 81445CCC | 48 0F B5 7D */	bl fn_81541248
/* 81445CD0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81445CD4 | 38 80 00 00 */	li r4, 0x0
/* 81445CD8 | 48 10 20 49 */	bl GXLoadPosMtxImm
/* 81445CDC | 7F C3 F3 78 */	mr r3, r30
/* 81445CE0 | 38 80 00 00 */	li r4, 0x0
/* 81445CE4 | 48 0F EF 35 */	bl GXSetLineWidth
/* 81445CE8 | 38 60 00 A8 */	li r3, 0xa8
/* 81445CEC | 38 80 00 00 */	li r4, 0x0
/* 81445CF0 | 38 A0 00 02 */	li r5, 0x2
/* 81445CF4 | 48 0F ED 01 */	bl GXBegin
/* 81445CF8 | 3C 60 CC 01 */	lis r3, 0xcc01
/* 81445CFC | D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 81445D00 | D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 81445D04 | D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 81445D08 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81445D0C | 90 03 80 00 */	stw r0, -0x8000(r3)
/* 81445D10 | D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 81445D14 | D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 81445D18 | D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 81445D1C | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81445D20 | 90 03 80 00 */	stw r0, -0x8000(r3)
/* 81445D24 | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 81445D28 | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 81445D2C | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 81445D30 | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 81445D34 | E3 A1 00 68 */	psq_l f29, 0x68(r1), 0, qr0
/* 81445D38 | CB A1 00 60 */	lfd f29, 0x60(r1)
/* 81445D3C | E3 81 00 58 */	psq_l f28, 0x58(r1), 0, qr0
/* 81445D40 | CB 81 00 50 */	lfd f28, 0x50(r1)
/* 81445D44 | E3 61 00 48 */	psq_l f27, 0x48(r1), 0, qr0
/* 81445D48 | CB 61 00 40 */	lfd f27, 0x40(r1)
/* 81445D4C | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81445D50 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 81445D54 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81445D58 | 7C 08 03 A6 */	mtlr r0
/* 81445D5C | 38 21 00 90 */	addi r1, r1, 0x90
/* 81445D60 | 4E 80 00 20 */	blr
.endfn drawLine___Q29textinput3guiFfffffUcR8_GXColor

# .text:0x1C0 | 0x81445D64 | size: 0x1EC
# textinput::gui::GUIComponent::updatePointerImpl(const textinput::gui::GUIPointer&)
.fn updatePointerImpl__Q39textinput3gui12GUIComponentFRCQ39textinput3gui10GUIPointer, global
/* 81445D64 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81445D68 | 7C 08 02 A6 */	mflr r0
/* 81445D6C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81445D70 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81445D74 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81445D78 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 81445D7C | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 81445D80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81445D84 | 48 1B 37 3D */	bl _savegpr_27
/* 81445D88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81445D8C | 7C 7B 1B 78 */	mr r27, r3
/* 81445D90 | C3 E4 00 04 */	lfs f31, 0x4(r4)
/* 81445D94 | 7C 9C 23 78 */	mr r28, r4
/* 81445D98 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81445D9C | 3B A0 00 00 */	li r29, 0x0
/* 81445DA0 | C3 C4 00 08 */	lfs f30, 0x8(r4)
/* 81445DA4 | 83 C4 00 00 */	lwz r30, 0x0(r4)
/* 81445DA8 | 7D 89 03 A6 */	mtctr r12
/* 81445DAC | 4E 80 04 21 */	bctrl
/* 81445DB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81445DB4 | 41 82 01 48 */	beq .L_81445EFC
/* 81445DB8 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81445DBC | FC 20 F8 90 */	fmr f1, f31
/* 81445DC0 | FC 40 F0 90 */	fmr f2, f30
/* 81445DC4 | 7F 63 DB 78 */	mr r3, r27
/* 81445DC8 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81445DCC | 7D 89 03 A6 */	mtctr r12
/* 81445DD0 | 4E 80 04 21 */	bctrl
/* 81445DD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81445DD8 | 41 82 00 88 */	beq .L_81445E60
/* 81445DDC | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81445DE0 | 7F 63 DB 78 */	mr r3, r27
/* 81445DE4 | 7F C4 F3 78 */	mr r4, r30
/* 81445DE8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81445DEC | 7D 89 03 A6 */	mtctr r12
/* 81445DF0 | 4E 80 04 21 */	bctrl
/* 81445DF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81445DF8 | 41 82 00 2C */	beq .L_81445E24
/* 81445DFC | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81445E00 | FC 20 F8 90 */	fmr f1, f31
/* 81445E04 | FC 40 F0 90 */	fmr f2, f30
/* 81445E08 | 7F 63 DB 78 */	mr r3, r27
/* 81445E0C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81445E10 | 7F C4 F3 78 */	mr r4, r30
/* 81445E14 | 7D 89 03 A6 */	mtctr r12
/* 81445E18 | 4E 80 04 21 */	bctrl
/* 81445E1C | 3B A0 00 03 */	li r29, 0x3
/* 81445E20 | 48 00 00 98 */	b .L_81445EB8
.L_81445E24:
/* 81445E24 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81445E28 | 7F 63 DB 78 */	mr r3, r27
/* 81445E2C | 7F C4 F3 78 */	mr r4, r30
/* 81445E30 | 38 A0 00 01 */	li r5, 0x1
/* 81445E34 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81445E38 | 7D 89 03 A6 */	mtctr r12
/* 81445E3C | 4E 80 04 21 */	bctrl
/* 81445E40 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81445E44 | 7F 63 DB 78 */	mr r3, r27
/* 81445E48 | 7F C4 F3 78 */	mr r4, r30
/* 81445E4C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81445E50 | 7D 89 03 A6 */	mtctr r12
/* 81445E54 | 4E 80 04 21 */	bctrl
/* 81445E58 | 3B A0 00 01 */	li r29, 0x1
/* 81445E5C | 48 00 00 5C */	b .L_81445EB8
.L_81445E60:
/* 81445E60 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81445E64 | 7F 63 DB 78 */	mr r3, r27
/* 81445E68 | 7F C4 F3 78 */	mr r4, r30
/* 81445E6C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81445E70 | 7D 89 03 A6 */	mtctr r12
/* 81445E74 | 4E 80 04 21 */	bctrl
/* 81445E78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81445E7C | 41 82 00 3C */	beq .L_81445EB8
/* 81445E80 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81445E84 | 7F 63 DB 78 */	mr r3, r27
/* 81445E88 | 7F C4 F3 78 */	mr r4, r30
/* 81445E8C | 38 A0 00 00 */	li r5, 0x0
/* 81445E90 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81445E94 | 7D 89 03 A6 */	mtctr r12
/* 81445E98 | 4E 80 04 21 */	bctrl
/* 81445E9C | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81445EA0 | 7F 63 DB 78 */	mr r3, r27
/* 81445EA4 | 7F C4 F3 78 */	mr r4, r30
/* 81445EA8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81445EAC | 7D 89 03 A6 */	mtctr r12
/* 81445EB0 | 4E 80 04 21 */	bctrl
/* 81445EB4 | 3B A0 00 02 */	li r29, 0x2
.L_81445EB8:
/* 81445EB8 | 7C 7B F2 14 */	add r3, r27, r30
/* 81445EBC | 88 03 00 0D */	lbz r0, 0xd(r3)
/* 81445EC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81445EC4 | 41 82 00 38 */	beq .L_81445EFC
/* 81445EC8 | 1C 1E 00 0C */	mulli r0, r30, 0xc
/* 81445ECC | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81445ED0 | 7F 63 DB 78 */	mr r3, r27
/* 81445ED4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81445ED8 | 7F FB 02 14 */	add r31, r27, r0
/* 81445EDC | C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 81445EE0 | C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 81445EE4 | EC 3F 08 28 */	fsubs f1, f31, f1
/* 81445EE8 | EC 5E 00 28 */	fsubs f2, f30, f0
/* 81445EEC | 7D 89 03 A6 */	mtctr r12
/* 81445EF0 | 4E 80 04 21 */	bctrl
/* 81445EF4 | D3 FF 00 18 */	stfs f31, 0x18(r31)
/* 81445EF8 | D3 DF 00 1C */	stfs f30, 0x1c(r31)
.L_81445EFC:
/* 81445EFC | 7C 9B F2 14 */	add r4, r27, r30
/* 81445F00 | 88 04 00 0D */	lbz r0, 0xd(r4)
/* 81445F04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81445F08 | 41 82 00 1C */	beq .L_81445F24
/* 81445F0C | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81445F10 | 80 1B 00 78 */	lwz r0, 0x78(r27)
/* 81445F14 | 7C 60 00 39 */	and. r0, r3, r0
/* 81445F18 | 40 82 00 0C */	bne .L_81445F24
/* 81445F1C | 38 00 00 00 */	li r0, 0x0
/* 81445F20 | 98 04 00 0D */	stb r0, 0xd(r4)
.L_81445F24:
/* 81445F24 | 7F A3 EB 78 */	mr r3, r29
/* 81445F28 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81445F2C | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81445F30 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 81445F34 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81445F38 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81445F3C | 48 1B 35 D1 */	bl _restgpr_27
/* 81445F40 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81445F44 | 7C 08 03 A6 */	mtlr r0
/* 81445F48 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81445F4C | 4E 80 00 20 */	blr
.endfn updatePointerImpl__Q39textinput3gui12GUIComponentFRCQ39textinput3gui10GUIPointer

# .text:0x3AC | 0x81445F50 | size: 0x8
# textinput::gui::GUIComponent::isVisible()
.fn isVisible__Q39textinput3gui12GUIComponentFv, global
/* 81445F50 | 38 60 00 01 */	li r3, 0x1
/* 81445F54 | 4E 80 00 20 */	blr
.endfn isVisible__Q39textinput3gui12GUIComponentFv

# .text:0x3B4 | 0x81445F58 | size: 0xC
# textinput::gui::GUIComponent::isPointed(int)
.fn isPointed__Q39textinput3gui12GUIComponentFi, global
/* 81445F58 | 7C 63 22 14 */	add r3, r3, r4
/* 81445F5C | 88 63 00 05 */	lbz r3, 0x5(r3)
/* 81445F60 | 4E 80 00 20 */	blr
.endfn isPointed__Q39textinput3gui12GUIComponentFi

# .text:0x3C0 | 0x81445F64 | size: 0x18
# textinput::gui::GUIComponent::onMove(int, float, float)
.fn onMove__Q39textinput3gui12GUIComponentFiff, global
/* 81445F64 | 54 80 08 3C */	slwi r0, r4, 1
/* 81445F68 | 7C 83 02 14 */	add r4, r3, r0
/* 81445F6C | A0 64 00 80 */	lhz r3, 0x80(r4)
/* 81445F70 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81445F74 | B0 04 00 80 */	sth r0, 0x80(r4)
/* 81445F78 | 4E 80 00 20 */	blr
.endfn onMove__Q39textinput3gui12GUIComponentFiff

# .text:0x3D8 | 0x81445F7C | size: 0xC
# textinput::gui::GUIComponent::setPointed(int, bool)
.fn setPointed__Q39textinput3gui12GUIComponentFib, global
/* 81445F7C | 7C 63 22 14 */	add r3, r3, r4
/* 81445F80 | 98 A3 00 05 */	stb r5, 0x5(r3)
/* 81445F84 | 4E 80 00 20 */	blr
.endfn setPointed__Q39textinput3gui12GUIComponentFib

# .text:0x3E4 | 0x81445F88 | size: 0x14
# textinput::gui::GUIComponent::onPointIn(int)
.fn onPointIn__Q39textinput3gui12GUIComponentFi, global
/* 81445F88 | 54 80 08 3C */	slwi r0, r4, 1
/* 81445F8C | 38 80 00 00 */	li r4, 0x0
/* 81445F90 | 7C 63 02 14 */	add r3, r3, r0
/* 81445F94 | B0 83 00 80 */	sth r4, 0x80(r3)
/* 81445F98 | 4E 80 00 20 */	blr
.endfn onPointIn__Q39textinput3gui12GUIComponentFi

# .text:0x3F8 | 0x81445F9C | size: 0x14
# textinput::gui::GUIComponent::onPointOut(int)
.fn onPointOut__Q39textinput3gui12GUIComponentFi, global
/* 81445F9C | 54 80 08 3C */	slwi r0, r4, 1
/* 81445FA0 | 38 80 00 00 */	li r4, 0x0
/* 81445FA4 | 7C 63 02 14 */	add r3, r3, r0
/* 81445FA8 | B0 83 00 80 */	sth r4, 0x80(r3)
/* 81445FAC | 4E 80 00 20 */	blr
.endfn onPointOut__Q39textinput3gui12GUIComponentFi

# .text:0x40C | 0x81445FB0 | size: 0x4
# textinput::gui::GUIComponent::onDrag(float, float)
.fn onDrag__Q39textinput3gui12GUIComponentFff, global
/* 81445FB0 | 4E 80 00 20 */	blr
.endfn onDrag__Q39textinput3gui12GUIComponentFff

# .text:0x410 | 0x81445FB4 | size: 0xBC
# textinput::gui::GUIManager::~GUIManager()
.fn __dt__Q39textinput3gui10GUIManagerFv, global
/* 81445FB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81445FB8 | 7C 08 02 A6 */	mflr r0
/* 81445FBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81445FC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81445FC4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81445FC8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81445FCC | 7C 9E 23 78 */	mr r30, r4
/* 81445FD0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81445FD4 | 7C 7D 1B 78 */	mr r29, r3
/* 81445FD8 | 41 82 00 78 */	beq .L_81446050
/* 81445FDC | 3C A0 81 67 */	lis r5, __vt__Q39textinput3gui10GUIManager@ha
/* 81445FE0 | 38 80 00 00 */	li r4, 0x0
/* 81445FE4 | 38 A5 8E 30 */	addi r5, r5, __vt__Q39textinput3gui10GUIManager@l
/* 81445FE8 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81445FEC | 38 63 00 0C */	addi r3, r3, 0xc
/* 81445FF0 | 48 0C C2 ED */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81445FF4 | 7C 7F 1B 78 */	mr r31, r3
/* 81445FF8 | 48 00 00 40 */	b .L_81446038
.L_81445FFC:
/* 81445FFC | 7F E4 FB 78 */	mr r4, r31
/* 81446000 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 81446004 | 48 0C C2 6D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81446008 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8144600C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446010 | 41 82 00 10 */	beq .L_81446020
/* 81446014 | 7F E4 FB 78 */	mr r4, r31
/* 81446018 | 48 11 56 61 */	bl fn_8155B678
/* 8144601C | 48 00 00 0C */	b .L_81446028
.L_81446020:
/* 81446020 | 7F E3 FB 78 */	mr r3, r31
/* 81446024 | 48 1B 20 C1 */	bl __dl__FPv
.L_81446028:
/* 81446028 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 8144602C | 38 80 00 00 */	li r4, 0x0
/* 81446030 | 48 0C C2 AD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81446034 | 7C 7F 1B 78 */	mr r31, r3
.L_81446038:
/* 81446038 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144603C | 40 82 FF C0 */	bne .L_81445FFC
/* 81446040 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81446044 | 40 81 00 0C */	ble .L_81446050
/* 81446048 | 7F A3 EB 78 */	mr r3, r29
/* 8144604C | 48 1B 20 99 */	bl __dl__FPv
.L_81446050:
/* 81446050 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81446054 | 7F A3 EB 78 */	mr r3, r29
/* 81446058 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8144605C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81446060 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81446064 | 7C 08 03 A6 */	mtlr r0
/* 81446068 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144606C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput3gui10GUIManagerFv

# .text:0x4CC | 0x81446070 | size: 0x70
# textinput::gui::GUIManager::init()
.fn init__Q39textinput3gui10GUIManagerFv, global
/* 81446070 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81446074 | 7C 08 02 A6 */	mflr r0
/* 81446078 | 38 80 00 00 */	li r4, 0x0
/* 8144607C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81446080 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81446084 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81446088 | 7C 7E 1B 78 */	mr r30, r3
/* 8144608C | 38 63 00 0C */	addi r3, r3, 0xc
/* 81446090 | 48 0C C2 4D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81446094 | 7C 7F 1B 78 */	mr r31, r3
/* 81446098 | 48 00 00 28 */	b .L_814460C0
.L_8144609C:
/* 8144609C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814460A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814460A4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814460A8 | 7D 89 03 A6 */	mtctr r12
/* 814460AC | 4E 80 04 21 */	bctrl
/* 814460B0 | 7F E4 FB 78 */	mr r4, r31
/* 814460B4 | 38 7E 00 0C */	addi r3, r30, 0xc
/* 814460B8 | 48 0C C2 25 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814460BC | 7C 7F 1B 78 */	mr r31, r3
.L_814460C0:
/* 814460C0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814460C4 | 40 82 FF D8 */	bne .L_8144609C
/* 814460C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814460CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814460D0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814460D4 | 7C 08 03 A6 */	mtlr r0
/* 814460D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814460DC | 4E 80 00 20 */	blr
.endfn init__Q39textinput3gui10GUIManagerFv

# .text:0x53C | 0x814460E0 | size: 0xB0
# textinput::gui::GUIManager::addComponent(textinput::gui::GUIComponent*)
.fn addComponent__Q39textinput3gui10GUIManagerFPQ39textinput3gui12GUIComponent, global
/* 814460E0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814460E4 | 7C 08 02 A6 */	mflr r0
/* 814460E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814460EC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814460F0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814460F4 | 7C 9E 23 78 */	mr r30, r4
/* 814460F8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814460FC | 7C 7D 1B 78 */	mr r29, r3
/* 81446100 | 7F C3 F3 78 */	mr r3, r30
/* 81446104 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81446108 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8144610C | 7D 89 03 A6 */	mtctr r12
/* 81446110 | 4E 80 04 21 */	bctrl
/* 81446114 | 93 BE 00 94 */	stw r29, 0x94(r30)
/* 81446118 | 7C 7F 1B 78 */	mr r31, r3
/* 8144611C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 81446120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446124 | 41 82 00 2C */	beq .L_81446150
/* 81446128 | 38 80 00 10 */	li r4, 0x10
/* 8144612C | 48 11 55 3D */	bl fn_8155B668
/* 81446130 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446134 | 41 82 00 0C */	beq .L_81446140
/* 81446138 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 8144613C | 93 C3 00 04 */	stw r30, 0x4(r3)
.L_81446140:
/* 81446140 | 7C 64 1B 78 */	mr r4, r3
/* 81446144 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 81446148 | 48 0C BF 2D */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8144614C | 48 00 00 28 */	b .L_81446174
.L_81446150:
/* 81446150 | 38 60 00 10 */	li r3, 0x10
/* 81446154 | 48 1B 1F 49 */	bl __nw__FUl
/* 81446158 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144615C | 41 82 00 0C */	beq .L_81446168
/* 81446160 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 81446164 | 93 C3 00 04 */	stw r30, 0x4(r3)
.L_81446168:
/* 81446168 | 7C 64 1B 78 */	mr r4, r3
/* 8144616C | 38 7D 00 0C */	addi r3, r29, 0xc
/* 81446170 | 48 0C BF 05 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_81446174:
/* 81446174 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81446178 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144617C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81446180 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81446184 | 7C 08 03 A6 */	mtlr r0
/* 81446188 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144618C | 4E 80 00 20 */	blr
.endfn addComponent__Q39textinput3gui10GUIManagerFPQ39textinput3gui12GUIComponent

# .text:0x5EC | 0x81446190 | size: 0x8
# textinput::gui::GUIComponent::getID()
.fn getID__Q39textinput3gui12GUIComponentFv, global
/* 81446190 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 81446194 | 4E 80 00 20 */	blr
.endfn getID__Q39textinput3gui12GUIComponentFv

# .text:0x5F4 | 0x81446198 | size: 0x2C
# textinput::gui::GUIManager::getComponent(unsigned long)
.fn getComponent__Q39textinput3gui10GUIManagerFUl, global
/* 81446198 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144619C | 7C 08 02 A6 */	mflr r0
/* 814461A0 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814461A4 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814461A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814461AC | 48 0C C1 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814461B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814461B4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814461B8 | 7C 08 03 A6 */	mtlr r0
/* 814461BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814461C0 | 4E 80 00 20 */	blr
.endfn getComponent__Q39textinput3gui10GUIManagerFUl

# .text:0x620 | 0x814461C4 | size: 0x2C
# textinput::gui::GUIManager::getComponent(unsigned long) const
.fn getComponent__Q39textinput3gui10GUIManagerCFUl, global
/* 814461C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814461C8 | 7C 08 02 A6 */	mflr r0
/* 814461CC | 54 84 04 3E */	clrlwi r4, r4, 16
/* 814461D0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814461D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814461D8 | 48 0C C1 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814461DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814461E0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814461E4 | 7C 08 03 A6 */	mtlr r0
/* 814461E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814461EC | 4E 80 00 20 */	blr
.endfn getComponent__Q39textinput3gui10GUIManagerCFUl

# .text:0x64C | 0x814461F0 | size: 0x2B8
# textinput::gui::GUIManager::update(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn update__Q39textinput3gui10GUIManagerFiffUlUlUlPv, global
/* 814461F0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814461F4 | 7C 08 02 A6 */	mflr r0
/* 814461F8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814461FC | 39 61 00 40 */	addi r11, r1, 0x40
/* 81446200 | DB E1 00 48 */	stfd f31, 0x48(r1)
/* 81446204 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 81446208 | 48 1B 32 A5 */	bl _savegpr_22
/* 8144620C | FF C0 08 90 */	fmr f30, f1
/* 81446210 | 7C 76 1B 78 */	mr r22, r3
/* 81446214 | FF E0 10 90 */	fmr f31, f2
/* 81446218 | 7C 97 23 78 */	mr r23, r4
/* 8144621C | 7C B8 2B 78 */	mr r24, r5
/* 81446220 | 7C D9 33 78 */	mr r25, r6
/* 81446224 | 7C FA 3B 78 */	mr r26, r7
/* 81446228 | 7D 1B 43 78 */	mr r27, r8
/* 8144622C | 3B C0 00 00 */	li r30, 0x0
/* 81446230 | 3B A0 00 00 */	li r29, 0x0
/* 81446234 | 38 80 00 00 */	li r4, 0x0
/* 81446238 | 38 63 00 0C */	addi r3, r3, 0xc
/* 8144623C | 48 0C C0 A1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81446240 | 7C 7C 1B 78 */	mr r28, r3
/* 81446244 | 48 00 01 A0 */	b .L_814463E4
.L_81446248:
/* 81446248 | 83 FC 00 04 */	lwz r31, 0x4(r28)
/* 8144624C | FC 20 F0 90 */	fmr f1, f30
/* 81446250 | FC 40 F8 90 */	fmr f2, f31
/* 81446254 | 7E E4 BB 78 */	mr r4, r23
/* 81446258 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144625C | 7F E3 FB 78 */	mr r3, r31
/* 81446260 | 7F 05 C3 78 */	mr r5, r24
/* 81446264 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81446268 | 7F 26 CB 78 */	mr r6, r25
/* 8144626C | 7F 47 D3 78 */	mr r7, r26
/* 81446270 | 7D 89 03 A6 */	mtctr r12
/* 81446274 | 4E 80 04 21 */	bctrl
/* 81446278 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8144627C | 41 82 00 78 */	beq .L_814462F4
/* 81446280 | 40 80 00 14 */	bge .L_81446294
/* 81446284 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81446288 | 41 82 00 1C */	beq .L_814462A4
/* 8144628C | 40 80 00 40 */	bge .L_814462CC
/* 81446290 | 48 00 01 00 */	b .L_81446390
.L_81446294:
/* 81446294 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 81446298 | 41 82 00 AC */	beq .L_81446344
/* 8144629C | 40 80 00 F4 */	bge .L_81446390
/* 814462A0 | 48 00 00 7C */	b .L_8144631C
.L_814462A4:
/* 814462A4 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 814462A8 | 7E C3 B3 78 */	mr r3, r22
/* 814462AC | 7F E4 FB 78 */	mr r4, r31
/* 814462B0 | 7E E6 BB 78 */	mr r6, r23
/* 814462B4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814462B8 | 7F 67 DB 78 */	mr r7, r27
/* 814462BC | 38 A0 00 00 */	li r5, 0x0
/* 814462C0 | 7D 89 03 A6 */	mtctr r12
/* 814462C4 | 4E 80 04 21 */	bctrl
/* 814462C8 | 48 00 00 A4 */	b .L_8144636C
.L_814462CC:
/* 814462CC | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 814462D0 | 7E C3 B3 78 */	mr r3, r22
/* 814462D4 | 7F E4 FB 78 */	mr r4, r31
/* 814462D8 | 7E E6 BB 78 */	mr r6, r23
/* 814462DC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814462E0 | 7F 67 DB 78 */	mr r7, r27
/* 814462E4 | 38 A0 00 01 */	li r5, 0x1
/* 814462E8 | 7D 89 03 A6 */	mtctr r12
/* 814462EC | 4E 80 04 21 */	bctrl
/* 814462F0 | 48 00 00 A0 */	b .L_81446390
.L_814462F4:
/* 814462F4 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 814462F8 | 7E C3 B3 78 */	mr r3, r22
/* 814462FC | 7F E4 FB 78 */	mr r4, r31
/* 81446300 | 7E E6 BB 78 */	mr r6, r23
/* 81446304 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81446308 | 7F 67 DB 78 */	mr r7, r27
/* 8144630C | 38 A0 00 02 */	li r5, 0x2
/* 81446310 | 7D 89 03 A6 */	mtctr r12
/* 81446314 | 4E 80 04 21 */	bctrl
/* 81446318 | 48 00 00 54 */	b .L_8144636C
.L_8144631C:
/* 8144631C | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 81446320 | 7E C3 B3 78 */	mr r3, r22
/* 81446324 | 7F E4 FB 78 */	mr r4, r31
/* 81446328 | 7E E6 BB 78 */	mr r6, r23
/* 8144632C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81446330 | 7F 67 DB 78 */	mr r7, r27
/* 81446334 | 38 A0 00 04 */	li r5, 0x4
/* 81446338 | 7D 89 03 A6 */	mtctr r12
/* 8144633C | 4E 80 04 21 */	bctrl
/* 81446340 | 48 00 00 50 */	b .L_81446390
.L_81446344:
/* 81446344 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 81446348 | 7E C3 B3 78 */	mr r3, r22
/* 8144634C | 7F E4 FB 78 */	mr r4, r31
/* 81446350 | 7E E6 BB 78 */	mr r6, r23
/* 81446354 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81446358 | 7F 67 DB 78 */	mr r7, r27
/* 8144635C | 38 A0 00 05 */	li r5, 0x5
/* 81446360 | 7D 89 03 A6 */	mtctr r12
/* 81446364 | 4E 80 04 21 */	bctrl
/* 81446368 | 48 00 00 28 */	b .L_81446390
.L_8144636C:
/* 8144636C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81446370 | 7F E3 FB 78 */	mr r3, r31
/* 81446374 | 3B C0 00 01 */	li r30, 0x1
/* 81446378 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8144637C | 7D 89 03 A6 */	mtctr r12
/* 81446380 | 4E 80 04 21 */	bctrl
/* 81446384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446388 | 41 82 00 08 */	beq .L_81446390
/* 8144638C | 7F FD FB 78 */	mr r29, r31
.L_81446390:
/* 81446390 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81446394 | 7F E3 FB 78 */	mr r3, r31
/* 81446398 | 7E E4 BB 78 */	mr r4, r23
/* 8144639C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814463A0 | 7D 89 03 A6 */	mtctr r12
/* 814463A4 | 4E 80 04 21 */	bctrl
/* 814463A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814463AC | 41 82 00 28 */	beq .L_814463D4
/* 814463B0 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 814463B4 | 7E C3 B3 78 */	mr r3, r22
/* 814463B8 | 7F E4 FB 78 */	mr r4, r31
/* 814463BC | 7E E6 BB 78 */	mr r6, r23
/* 814463C0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814463C4 | 7F 67 DB 78 */	mr r7, r27
/* 814463C8 | 38 A0 00 03 */	li r5, 0x3
/* 814463CC | 7D 89 03 A6 */	mtctr r12
/* 814463D0 | 4E 80 04 21 */	bctrl
.L_814463D4:
/* 814463D4 | 7F 84 E3 78 */	mr r4, r28
/* 814463D8 | 38 76 00 0C */	addi r3, r22, 0xc
/* 814463DC | 48 0C BF 01 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814463E0 | 7C 7C 1B 78 */	mr r28, r3
.L_814463E4:
/* 814463E4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814463E8 | 40 82 FE 60 */	bne .L_81446248
/* 814463EC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814463F0 | 41 82 00 94 */	beq .L_81446484
/* 814463F4 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814463F8 | 41 82 00 60 */	beq .L_81446458
/* 814463FC | 38 00 00 00 */	li r0, 0x0
/* 81446400 | 7F A3 EB 78 */	mr r3, r29
/* 81446404 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81446408 | 7E E4 BB 78 */	mr r4, r23
/* 8144640C | 7F 05 C3 78 */	mr r5, r24
/* 81446410 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81446414 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81446418 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8144641C | D3 C1 00 08 */	stfs f30, 0x8(r1)
/* 81446420 | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81446424 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81446428 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8144642C | 7D 89 03 A6 */	mtctr r12
/* 81446430 | 4E 80 04 21 */	bctrl
/* 81446434 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 81446438 | 7E C3 B3 78 */	mr r3, r22
/* 8144643C | 7F A4 EB 78 */	mr r4, r29
/* 81446440 | 7E E6 BB 78 */	mr r6, r23
/* 81446444 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81446448 | 7F 67 DB 78 */	mr r7, r27
/* 8144644C | 38 A0 00 04 */	li r5, 0x4
/* 81446450 | 7D 89 03 A6 */	mtctr r12
/* 81446454 | 4E 80 04 21 */	bctrl
.L_81446458:
/* 81446458 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8144645C | 41 82 00 28 */	beq .L_81446484
/* 81446460 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 81446464 | 7E C3 B3 78 */	mr r3, r22
/* 81446468 | 7F A4 EB 78 */	mr r4, r29
/* 8144646C | 7E E6 BB 78 */	mr r6, r23
/* 81446470 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81446474 | 7F 67 DB 78 */	mr r7, r27
/* 81446478 | 38 A0 00 05 */	li r5, 0x5
/* 8144647C | 7D 89 03 A6 */	mtctr r12
/* 81446480 | 4E 80 04 21 */	bctrl
.L_81446484:
/* 81446484 | CB E1 00 48 */	lfd f31, 0x48(r1)
/* 81446488 | 7F C3 F3 78 */	mr r3, r30
/* 8144648C | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 81446490 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81446494 | 48 1B 30 65 */	bl _restgpr_22
/* 81446498 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8144649C | 7C 08 03 A6 */	mtlr r0
/* 814464A0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814464A4 | 4E 80 00 20 */	blr
.endfn update__Q39textinput3gui10GUIManagerFiffUlUlUlPv

# .text:0x904 | 0x814464A8 | size: 0x3C
# textinput::gui::GUIComponent::updatePointer(int, float, float, unsigned long, unsigned long, unsigned long)
.fn updatePointer__Q39textinput3gui12GUIComponentFiffUlUlUl, global
/* 814464A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814464AC | 7C 08 02 A6 */	mflr r0
/* 814464B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814464B4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 814464B8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814464BC | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 814464C0 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 814464C4 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 814464C8 | 90 C1 00 18 */	stw r6, 0x18(r1)
/* 814464CC | 90 E1 00 1C */	stw r7, 0x1c(r1)
/* 814464D0 | 4B FF F8 95 */	bl updatePointerImpl__Q39textinput3gui12GUIComponentFRCQ39textinput3gui10GUIPointer
/* 814464D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814464D8 | 7C 08 03 A6 */	mtlr r0
/* 814464DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814464E0 | 4E 80 00 20 */	blr
.endfn updatePointer__Q39textinput3gui12GUIComponentFiffUlUlUl

# .text:0x940 | 0x814464E4 | size: 0xB8
# textinput::gui::GUIManager::onEvent(textinput::gui::GUIComponent&, unsigned long, int, void*)
.fn onEvent__Q39textinput3gui10GUIManagerFRQ39textinput3gui12GUIComponentUliPv, global
/* 814464E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814464E8 | 7C 08 02 A6 */	mflr r0
/* 814464EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814464F0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814464F4 | 7C FF 3B 78 */	mr r31, r7
/* 814464F8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814464FC | 7C BE 2B 78 */	mr r30, r5
/* 81446500 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81446504 | 7C 9D 23 78 */	mr r29, r4
/* 81446508 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8144650C | 7C 7C 1B 78 */	mr r28, r3
/* 81446510 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81446514 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81446518 | 41 82 00 3C */	beq .L_81446554
/* 8144651C | 7C 03 03 78 */	mr r3, r0
/* 81446520 | 7C C4 33 78 */	mr r4, r6
/* 81446524 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446528 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8144652C | 7D 89 03 A6 */	mtctr r12
/* 81446530 | 4E 80 04 21 */	bctrl
/* 81446534 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81446538 | 7F A4 EB 78 */	mr r4, r29
/* 8144653C | 7F C5 F3 78 */	mr r5, r30
/* 81446540 | 7F E6 FB 78 */	mr r6, r31
/* 81446544 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446548 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8144654C | 7D 89 03 A6 */	mtctr r12
/* 81446550 | 4E 80 04 21 */	bctrl
.L_81446554:
/* 81446554 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81446558 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144655C | 41 82 00 20 */	beq .L_8144657C
/* 81446560 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446564 | 7F A4 EB 78 */	mr r4, r29
/* 81446568 | 7F C5 F3 78 */	mr r5, r30
/* 8144656C | 7F E6 FB 78 */	mr r6, r31
/* 81446570 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81446574 | 7D 89 03 A6 */	mtctr r12
/* 81446578 | 4E 80 04 21 */	bctrl
.L_8144657C:
/* 8144657C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81446580 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81446584 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81446588 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8144658C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81446590 | 7C 08 03 A6 */	mtlr r0
/* 81446594 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81446598 | 4E 80 00 20 */	blr
.endfn onEvent__Q39textinput3gui10GUIManagerFRQ39textinput3gui12GUIComponentUliPv

# .text:0x9F8 | 0x8144659C | size: 0x8
# textinput::gui::GUIComponent::isTriggerTarget()
.fn isTriggerTarget__Q39textinput3gui12GUIComponentFv, global
/* 8144659C | 88 63 00 90 */	lbz r3, 0x90(r3)
/* 814465A0 | 4E 80 00 20 */	blr
.endfn isTriggerTarget__Q39textinput3gui12GUIComponentFv

# .text:0xA00 | 0x814465A4 | size: 0x4C
# textinput::gui::GUIComponent::onTrig(int, unsigned long, Vec&)
.fn onTrig__Q39textinput3gui12GUIComponentFiUlR3Vec, global
/* 814465A4 | 80 03 00 78 */	lwz r0, 0x78(r3)
/* 814465A8 | 7C A0 00 39 */	and. r0, r5, r0
/* 814465AC | 4D 82 00 20 */	beqlr
/* 814465B0 | 1C E4 00 0C */	mulli r7, r4, 0xc
/* 814465B4 | 54 80 08 3C */	slwi r0, r4, 1
/* 814465B8 | C0 06 00 00 */	lfs f0, 0x0(r6)
/* 814465BC | 7C 83 22 14 */	add r4, r3, r4
/* 814465C0 | 38 A0 00 01 */	li r5, 0x1
/* 814465C4 | 7C E3 3A 14 */	add r7, r3, r7
/* 814465C8 | D0 07 00 18 */	stfs f0, 0x18(r7)
/* 814465CC | 7C 63 02 14 */	add r3, r3, r0
/* 814465D0 | 38 00 00 00 */	li r0, 0x0
/* 814465D4 | C0 06 00 04 */	lfs f0, 0x4(r6)
/* 814465D8 | D0 07 00 1C */	stfs f0, 0x1c(r7)
/* 814465DC | C0 06 00 08 */	lfs f0, 0x8(r6)
/* 814465E0 | D0 07 00 20 */	stfs f0, 0x20(r7)
/* 814465E4 | 98 A4 00 0D */	stb r5, 0xd(r4)
/* 814465E8 | B0 03 00 80 */	sth r0, 0x80(r3)
/* 814465EC | 4E 80 00 20 */	blr
.endfn onTrig__Q39textinput3gui12GUIComponentFiUlR3Vec

# .text:0xA4C | 0x814465F0 | size: 0x70
# textinput::gui::GUIManager::calc()
.fn calc__Q39textinput3gui10GUIManagerFv, global
/* 814465F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814465F4 | 7C 08 02 A6 */	mflr r0
/* 814465F8 | 38 80 00 00 */	li r4, 0x0
/* 814465FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81446600 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81446604 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81446608 | 7C 7E 1B 78 */	mr r30, r3
/* 8144660C | 38 63 00 0C */	addi r3, r3, 0xc
/* 81446610 | 48 0C BC CD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81446614 | 7C 7F 1B 78 */	mr r31, r3
/* 81446618 | 48 00 00 28 */	b .L_81446640
.L_8144661C:
/* 8144661C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81446620 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446624 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81446628 | 7D 89 03 A6 */	mtctr r12
/* 8144662C | 4E 80 04 21 */	bctrl
/* 81446630 | 7F E4 FB 78 */	mr r4, r31
/* 81446634 | 38 7E 00 0C */	addi r3, r30, 0xc
/* 81446638 | 48 0C BC A5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8144663C | 7C 7F 1B 78 */	mr r31, r3
.L_81446640:
/* 81446640 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81446644 | 40 82 FF D8 */	bne .L_8144661C
/* 81446648 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144664C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81446650 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81446654 | 7C 08 03 A6 */	mtlr r0
/* 81446658 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144665C | 4E 80 00 20 */	blr
.endfn calc__Q39textinput3gui10GUIManagerFv

# .text:0xABC | 0x81446660 | size: 0x70
# textinput::gui::GUIManager::draw()
.fn draw__Q39textinput3gui10GUIManagerFv, global
/* 81446660 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81446664 | 7C 08 02 A6 */	mflr r0
/* 81446668 | 38 80 00 00 */	li r4, 0x0
/* 8144666C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81446670 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81446674 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81446678 | 7C 7E 1B 78 */	mr r30, r3
/* 8144667C | 38 63 00 0C */	addi r3, r3, 0xc
/* 81446680 | 48 0C BC 5D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81446684 | 7C 7F 1B 78 */	mr r31, r3
/* 81446688 | 48 00 00 28 */	b .L_814466B0
.L_8144668C:
/* 8144668C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81446690 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446694 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81446698 | 7D 89 03 A6 */	mtctr r12
/* 8144669C | 4E 80 04 21 */	bctrl
/* 814466A0 | 7F E4 FB 78 */	mr r4, r31
/* 814466A4 | 38 7E 00 0C */	addi r3, r30, 0xc
/* 814466A8 | 48 0C BC 35 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814466AC | 7C 7F 1B 78 */	mr r31, r3
.L_814466B0:
/* 814466B0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814466B4 | 40 82 FF D8 */	bne .L_8144668C
/* 814466B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814466BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814466C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814466C4 | 7C 08 03 A6 */	mtlr r0
/* 814466C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814466CC | 4E 80 00 20 */	blr
.endfn draw__Q39textinput3gui10GUIManagerFv

# .text:0xB2C | 0x814466D0 | size: 0x80
# textinput::gui::GUIManager::setAllComponentTriggerTarget(bool)
.fn setAllComponentTriggerTarget__Q39textinput3gui10GUIManagerFb, global
/* 814466D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814466D4 | 7C 08 02 A6 */	mflr r0
/* 814466D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814466DC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814466E0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814466E4 | 7C 9E 23 78 */	mr r30, r4
/* 814466E8 | 38 80 00 00 */	li r4, 0x0
/* 814466EC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814466F0 | 7C 7D 1B 78 */	mr r29, r3
/* 814466F4 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814466F8 | 48 0C BB E5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814466FC | 7C 7F 1B 78 */	mr r31, r3
/* 81446700 | 48 00 00 2C */	b .L_8144672C
.L_81446704:
/* 81446704 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81446708 | 7F C4 F3 78 */	mr r4, r30
/* 8144670C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446710 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81446714 | 7D 89 03 A6 */	mtctr r12
/* 81446718 | 4E 80 04 21 */	bctrl
/* 8144671C | 7F E4 FB 78 */	mr r4, r31
/* 81446720 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 81446724 | 48 0C BB B9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81446728 | 7C 7F 1B 78 */	mr r31, r3
.L_8144672C:
/* 8144672C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81446730 | 40 82 FF D4 */	bne .L_81446704
/* 81446734 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81446738 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144673C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81446740 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81446744 | 7C 08 03 A6 */	mtlr r0
/* 81446748 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144674C | 4E 80 00 20 */	blr
.endfn setAllComponentTriggerTarget__Q39textinput3gui10GUIManagerFb

# .text:0xBAC | 0x81446750 | size: 0x80
# textinput::gui::GUIManager::setDraggingButton(unsigned long)
.fn setDraggingButton__Q39textinput3gui10GUIManagerFUl, global
/* 81446750 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81446754 | 7C 08 02 A6 */	mflr r0
/* 81446758 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144675C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81446760 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81446764 | 7C 9E 23 78 */	mr r30, r4
/* 81446768 | 38 80 00 00 */	li r4, 0x0
/* 8144676C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81446770 | 7C 7D 1B 78 */	mr r29, r3
/* 81446774 | 38 63 00 0C */	addi r3, r3, 0xc
/* 81446778 | 48 0C BB 65 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8144677C | 7C 7F 1B 78 */	mr r31, r3
/* 81446780 | 48 00 00 2C */	b .L_814467AC
.L_81446784:
/* 81446784 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81446788 | 7F C4 F3 78 */	mr r4, r30
/* 8144678C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446790 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81446794 | 7D 89 03 A6 */	mtctr r12
/* 81446798 | 4E 80 04 21 */	bctrl
/* 8144679C | 7F E4 FB 78 */	mr r4, r31
/* 814467A0 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 814467A4 | 48 0C BB 39 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814467A8 | 7C 7F 1B 78 */	mr r31, r3
.L_814467AC:
/* 814467AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814467B0 | 40 82 FF D4 */	bne .L_81446784
/* 814467B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814467B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814467BC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814467C0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814467C4 | 7C 08 03 A6 */	mtlr r0
/* 814467C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814467CC | 4E 80 00 20 */	blr
.endfn setDraggingButton__Q39textinput3gui10GUIManagerFUl

# .text:0xC2C | 0x814467D0 | size: 0x8
# textinput::gui::GUIComponent::setDraggingButton(unsigned long)
.fn setDraggingButton__Q39textinput3gui12GUIComponentFUl, global
/* 814467D0 | 90 83 00 78 */	stw r4, 0x78(r3)
/* 814467D4 | 4E 80 00 20 */	blr
.endfn setDraggingButton__Q39textinput3gui12GUIComponentFUl

# .text:0xC34 | 0x814467D8 | size: 0x110
# textinput::gui::PaneManager::~PaneManager()
.fn __dt__Q39textinput3gui11PaneManagerFv, global
/* 814467D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814467DC | 7C 08 02 A6 */	mflr r0
/* 814467E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814467E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814467E8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814467EC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814467F0 | 7C 9E 23 78 */	mr r30, r4
/* 814467F4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814467F8 | 7C 7D 1B 78 */	mr r29, r3
/* 814467FC | 41 82 00 CC */	beq .L_814468C8
/* 81446800 | 3C A0 81 67 */	lis r5, __vt__Q39textinput3gui11PaneManager@ha
/* 81446804 | 38 80 00 00 */	li r4, 0x0
/* 81446808 | 38 A5 8D D4 */	addi r5, r5, __vt__Q39textinput3gui11PaneManager@l
/* 8144680C | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81446810 | 38 63 00 24 */	addi r3, r3, 0x24
/* 81446814 | 48 0C BA C9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81446818 | 7C 7F 1B 78 */	mr r31, r3
/* 8144681C | 48 00 00 88 */	b .L_814468A4
.L_81446820:
/* 81446820 | 7F E4 FB 78 */	mr r4, r31
/* 81446824 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81446828 | 48 0C BA 49 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8144682C | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 81446830 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81446834 | 41 82 00 38 */	beq .L_8144686C
/* 81446838 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8144683C | 38 80 FF FF */	li r4, -0x1
/* 81446840 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446844 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81446848 | 7D 89 03 A6 */	mtctr r12
/* 8144684C | 4E 80 04 21 */	bctrl
/* 81446850 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 81446854 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81446858 | 48 11 4E 21 */	bl fn_8155B678
/* 8144685C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 81446860 | 7F E4 FB 78 */	mr r4, r31
/* 81446864 | 48 11 4E 15 */	bl fn_8155B678
/* 81446868 | 48 00 00 2C */	b .L_81446894
.L_8144686C:
/* 8144686C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81446870 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446874 | 41 82 00 18 */	beq .L_8144688C
/* 81446878 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144687C | 38 80 00 01 */	li r4, 0x1
/* 81446880 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81446884 | 7D 89 03 A6 */	mtctr r12
/* 81446888 | 4E 80 04 21 */	bctrl
.L_8144688C:
/* 8144688C | 7F E3 FB 78 */	mr r3, r31
/* 81446890 | 48 1B 18 55 */	bl __dl__FPv
.L_81446894:
/* 81446894 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81446898 | 38 80 00 00 */	li r4, 0x0
/* 8144689C | 48 0C BA 41 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814468A0 | 7C 7F 1B 78 */	mr r31, r3
.L_814468A4:
/* 814468A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814468A8 | 40 82 FF 78 */	bne .L_81446820
/* 814468AC | 7F A3 EB 78 */	mr r3, r29
/* 814468B0 | 38 80 00 00 */	li r4, 0x0
/* 814468B4 | 4B FF F7 01 */	bl __dt__Q39textinput3gui10GUIManagerFv
/* 814468B8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814468BC | 40 81 00 0C */	ble .L_814468C8
/* 814468C0 | 7F A3 EB 78 */	mr r3, r29
/* 814468C4 | 48 1B 18 21 */	bl __dl__FPv
.L_814468C8:
/* 814468C8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814468CC | 7F A3 EB 78 */	mr r3, r29
/* 814468D0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814468D4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814468D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814468DC | 7C 08 03 A6 */	mtlr r0
/* 814468E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814468E4 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput3gui11PaneManagerFv

# .text:0xD44 | 0x814468E8 | size: 0x40
# textinput::gui::PaneComponent::~PaneComponent()
.fn __dt__Q39textinput3gui13PaneComponentFv, global
/* 814468E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814468EC | 7C 08 02 A6 */	mflr r0
/* 814468F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814468F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814468F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814468FC | 7C 7F 1B 78 */	mr r31, r3
/* 81446900 | 41 82 00 10 */	beq .L_81446910
/* 81446904 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81446908 | 40 81 00 08 */	ble .L_81446910
/* 8144690C | 48 1B 17 D9 */	bl __dl__FPv
.L_81446910:
/* 81446910 | 7F E3 FB 78 */	mr r3, r31
/* 81446914 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81446918 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144691C | 7C 08 03 A6 */	mtlr r0
/* 81446920 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81446924 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput3gui13PaneComponentFv

# .text:0xD84 | 0x81446928 | size: 0x40
# textinput::gui::GUIComponent::~GUIComponent()
.fn __dt__Q39textinput3gui12GUIComponentFv, global
/* 81446928 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144692C | 7C 08 02 A6 */	mflr r0
/* 81446930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446934 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81446938 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144693C | 7C 7F 1B 78 */	mr r31, r3
/* 81446940 | 41 82 00 10 */	beq .L_81446950
/* 81446944 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81446948 | 40 81 00 08 */	ble .L_81446950
/* 8144694C | 48 1B 17 99 */	bl __dl__FPv
.L_81446950:
/* 81446950 | 7F E3 FB 78 */	mr r3, r31
/* 81446954 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81446958 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144695C | 7C 08 03 A6 */	mtlr r0
/* 81446960 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81446964 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput3gui12GUIComponentFv

# .text:0xDC4 | 0x81446968 | size: 0xE4
# textinput::gui::PaneManager::createLayoutScene(const nw4r::lyt::Layout&)
.fn createLayoutScene__Q39textinput3gui11PaneManagerFRCQ34nw4r3lyt6Layout, global
/* 81446968 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144696C | 7C 08 02 A6 */	mflr r0
/* 81446970 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81446974 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81446978 | 48 1B 2B 35 */	bl _savegpr_22
/* 8144697C | 38 00 00 00 */	li r0, 0x0
/* 81446980 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 81446984 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81446988 | 7C 76 1B 78 */	mr r22, r3
/* 8144698C | 3B C4 00 14 */	addi r30, r4, 0x14
/* 81446990 | 83 E4 00 14 */	lwz r31, 0x14(r4)
/* 81446994 | 48 00 00 98 */	b .L_81446A2C
.L_81446998:
/* 81446998 | 3B 1F FF FC */	subi r24, r31, 0x4
/* 8144699C | 7E C3 B3 78 */	mr r3, r22
/* 814469A0 | 7F 04 C3 78 */	mr r4, r24
/* 814469A4 | 48 00 01 A5 */	bl addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 814469A8 | 83 B8 00 14 */	lwz r29, 0x14(r24)
/* 814469AC | 3B 98 00 14 */	addi r28, r24, 0x14
/* 814469B0 | 48 00 00 70 */	b .L_81446A20
.L_814469B4:
/* 814469B4 | 3B 1D FF FC */	subi r24, r29, 0x4
/* 814469B8 | 7E C3 B3 78 */	mr r3, r22
/* 814469BC | 7F 04 C3 78 */	mr r4, r24
/* 814469C0 | 48 00 01 89 */	bl addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 814469C4 | 83 78 00 14 */	lwz r27, 0x14(r24)
/* 814469C8 | 3B 58 00 14 */	addi r26, r24, 0x14
/* 814469CC | 48 00 00 48 */	b .L_81446A14
.L_814469D0:
/* 814469D0 | 3B 1B FF FC */	subi r24, r27, 0x4
/* 814469D4 | 7E C3 B3 78 */	mr r3, r22
/* 814469D8 | 7F 04 C3 78 */	mr r4, r24
/* 814469DC | 48 00 01 6D */	bl addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 814469E0 | 87 38 00 14 */	lwzu r25, 0x14(r24)
/* 814469E4 | 48 00 00 24 */	b .L_81446A08
.L_814469E8:
/* 814469E8 | 3A F9 FF FC */	subi r23, r25, 0x4
/* 814469EC | 7E C3 B3 78 */	mr r3, r22
/* 814469F0 | 7E E4 BB 78 */	mr r4, r23
/* 814469F4 | 48 00 01 55 */	bl addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 814469F8 | 7E C3 B3 78 */	mr r3, r22
/* 814469FC | 38 97 00 10 */	addi r4, r23, 0x10
/* 81446A00 | 48 00 00 4D */	bl walkInChildren__Q39textinput3gui11PaneManagerFRQ34nw4r2ut28LinkList
/* 81446A04 | 83 39 00 00 */	lwz r25, 0x0(r25)
.L_81446A08:
/* 81446A08 | 7C 19 C0 40 */	cmplw r25, r24
/* 81446A0C | 40 82 FF DC */	bne .L_814469E8
/* 81446A10 | 83 7B 00 00 */	lwz r27, 0x0(r27)
.L_81446A14:
/* 81446A14 | 7C 1B D0 40 */	cmplw r27, r26
/* 81446A18 | 40 82 FF B8 */	bne .L_814469D0
/* 81446A1C | 83 BD 00 00 */	lwz r29, 0x0(r29)
.L_81446A20:
/* 81446A20 | 7C 1D E0 40 */	cmplw r29, r28
/* 81446A24 | 40 82 FF 90 */	bne .L_814469B4
/* 81446A28 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81446A2C:
/* 81446A2C | 7C 1F F0 40 */	cmplw r31, r30
/* 81446A30 | 40 82 FF 68 */	bne .L_81446998
/* 81446A34 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81446A38 | 48 1B 2A C1 */	bl _restgpr_22
/* 81446A3C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81446A40 | 7C 08 03 A6 */	mtlr r0
/* 81446A44 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81446A48 | 4E 80 00 20 */	blr
.endfn createLayoutScene__Q39textinput3gui11PaneManagerFRCQ34nw4r3lyt6Layout

# .text:0xEA8 | 0x81446A4C | size: 0xFC
.fn walkInChildren__Q39textinput3gui11PaneManagerFRQ34nw4r2ut28LinkList, global
/* 81446A4C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81446A50 | 7C 08 02 A6 */	mflr r0
/* 81446A54 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81446A58 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81446A5C | 48 1B 2A 51 */	bl _savegpr_22
/* 81446A60 | 83 E4 00 04 */	lwz r31, 0x4(r4)
/* 81446A64 | 7C 76 1B 78 */	mr r22, r3
/* 81446A68 | 3B C4 00 04 */	addi r30, r4, 0x4
/* 81446A6C | 48 00 00 BC */	b .L_81446B28
.L_81446A70:
/* 81446A70 | 3B 1F FF FC */	subi r24, r31, 0x4
/* 81446A74 | 7E C3 B3 78 */	mr r3, r22
/* 81446A78 | 7F 04 C3 78 */	mr r4, r24
/* 81446A7C | 48 00 00 CD */	bl addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 81446A80 | 83 B8 00 14 */	lwz r29, 0x14(r24)
/* 81446A84 | 3B 98 00 14 */	addi r28, r24, 0x14
/* 81446A88 | 48 00 00 94 */	b .L_81446B1C
.L_81446A8C:
/* 81446A8C | 3B 1D FF FC */	subi r24, r29, 0x4
/* 81446A90 | 7E C3 B3 78 */	mr r3, r22
/* 81446A94 | 7F 04 C3 78 */	mr r4, r24
/* 81446A98 | 48 00 00 B1 */	bl addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 81446A9C | 83 78 00 14 */	lwz r27, 0x14(r24)
/* 81446AA0 | 3B 58 00 14 */	addi r26, r24, 0x14
/* 81446AA4 | 48 00 00 6C */	b .L_81446B10
.L_81446AA8:
/* 81446AA8 | 3B 1B FF FC */	subi r24, r27, 0x4
/* 81446AAC | 7E C3 B3 78 */	mr r3, r22
/* 81446AB0 | 7F 04 C3 78 */	mr r4, r24
/* 81446AB4 | 48 00 00 95 */	bl addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 81446AB8 | 3B 18 00 10 */	addi r24, r24, 0x10
/* 81446ABC | 7F 03 C3 78 */	mr r3, r24
/* 81446AC0 | 4B FA 8C 61 */	bl iplSDMemory_813EF720
/* 81446AC4 | 7C 79 1B 78 */	mr r25, r3
/* 81446AC8 | 3B 18 00 04 */	addi r24, r24, 0x4
/* 81446ACC | 48 00 00 24 */	b .L_81446AF0
.L_81446AD0:
/* 81446AD0 | 3A F9 FF FC */	subi r23, r25, 0x4
/* 81446AD4 | 7E C3 B3 78 */	mr r3, r22
/* 81446AD8 | 7E E4 BB 78 */	mr r4, r23
/* 81446ADC | 48 00 00 6D */	bl addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 81446AE0 | 7E C3 B3 78 */	mr r3, r22
/* 81446AE4 | 38 97 00 10 */	addi r4, r23, 0x10
/* 81446AE8 | 4B FF FF 65 */	bl walkInChildren__Q39textinput3gui11PaneManagerFRQ34nw4r2ut28LinkList
/* 81446AEC | 83 39 00 00 */	lwz r25, 0x0(r25)
.L_81446AF0:
/* 81446AF0 | 93 01 00 0C */	stw r24, 0xc(r1)
/* 81446AF4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81446AF8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81446AFC | 93 21 00 08 */	stw r25, 0x8(r1)
/* 81446B00 | 4B FA 8C 31 */	bl iplSDMemory_813EF730
/* 81446B04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446B08 | 40 82 FF C8 */	bne .L_81446AD0
/* 81446B0C | 83 7B 00 00 */	lwz r27, 0x0(r27)
.L_81446B10:
/* 81446B10 | 7C 1B D0 40 */	cmplw r27, r26
/* 81446B14 | 40 82 FF 94 */	bne .L_81446AA8
/* 81446B18 | 83 BD 00 00 */	lwz r29, 0x0(r29)
.L_81446B1C:
/* 81446B1C | 7C 1D E0 40 */	cmplw r29, r28
/* 81446B20 | 40 82 FF 6C */	bne .L_81446A8C
/* 81446B24 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_81446B28:
/* 81446B28 | 7C 1F F0 40 */	cmplw r31, r30
/* 81446B2C | 40 82 FF 44 */	bne .L_81446A70
/* 81446B30 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81446B34 | 48 1B 29 C5 */	bl _restgpr_22
/* 81446B38 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81446B3C | 7C 08 03 A6 */	mtlr r0
/* 81446B40 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81446B44 | 4E 80 00 20 */	blr
.endfn walkInChildren__Q39textinput3gui11PaneManagerFRQ34nw4r2ut28LinkList

# .text:0xFA4 | 0x81446B48 | size: 0x278
# textinput::gui::PaneManager::addPane_(nw4r::lyt::Pane*)
.fn addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane, global
/* 81446B48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81446B4C | 7C 08 02 A6 */	mflr r0
/* 81446B50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81446B54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81446B58 | 48 1B 29 69 */	bl _savegpr_27
/* 81446B5C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81446B60 | 7C 7D 1B 78 */	mr r29, r3
/* 81446B64 | 7C 9E 23 78 */	mr r30, r4
/* 81446B68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81446B6C | 41 82 00 98 */	beq .L_81446C04
/* 81446B70 | 7C 03 03 78 */	mr r3, r0
/* 81446B74 | 38 80 00 A0 */	li r4, 0xa0
/* 81446B78 | 48 11 4A F1 */	bl fn_8155B668
/* 81446B7C | 7C 7F 1B 78 */	mr r31, r3
/* 81446B80 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 81446B84 | 38 80 00 10 */	li r4, 0x10
/* 81446B88 | 48 11 4A E1 */	bl fn_8155B668
/* 81446B8C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81446B90 | 7C 7B 1B 78 */	mr r27, r3
/* 81446B94 | 41 82 00 5C */	beq .L_81446BF0
/* 81446B98 | 3C 80 81 67 */	lis r4, __vt__Q39textinput3gui12GUIComponent@ha
/* 81446B9C | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 81446BA0 | 38 84 8E 78 */	addi r4, r4, __vt__Q39textinput3gui12GUIComponent@l
/* 81446BA4 | 3C 60 00 01 */	lis r3, 0x1
/* 81446BA8 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 81446BAC | 3B 80 00 00 */	li r28, 0x0
/* 81446BB0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81446BB4 | 7F E3 FB 78 */	mr r3, r31
/* 81446BB8 | 9B 9F 00 04 */	stb r28, 0x4(r31)
/* 81446BBC | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 81446BC0 | 90 BF 00 7C */	stw r5, 0x7c(r31)
/* 81446BC4 | 9B 9F 00 90 */	stb r28, 0x90(r31)
/* 81446BC8 | 93 9F 00 94 */	stw r28, 0x94(r31)
/* 81446BCC | 93 9F 00 98 */	stw r28, 0x98(r31)
/* 81446BD0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81446BD4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81446BD8 | 7D 89 03 A6 */	mtctr r12
/* 81446BDC | 4E 80 04 21 */	bctrl
/* 81446BE0 | 3C 60 81 67 */	lis r3, __vt__Q39textinput3gui13PaneComponent@ha
/* 81446BE4 | 38 63 8D 68 */	addi r3, r3, __vt__Q39textinput3gui13PaneComponent@l
/* 81446BE8 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81446BEC | 93 9F 00 9C */	stw r28, 0x9c(r31)
.L_81446BF0:
/* 81446BF0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81446BF4 | 41 82 00 90 */	beq .L_81446C84
/* 81446BF8 | 93 DB 00 00 */	stw r30, 0x0(r27)
/* 81446BFC | 93 FB 00 04 */	stw r31, 0x4(r27)
/* 81446C00 | 48 00 00 84 */	b .L_81446C84
.L_81446C04:
/* 81446C04 | 38 60 00 A0 */	li r3, 0xa0
/* 81446C08 | 48 1B 14 95 */	bl __nw__FUl
/* 81446C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446C10 | 7C 7F 1B 78 */	mr r31, r3
/* 81446C14 | 41 82 00 54 */	beq .L_81446C68
/* 81446C18 | 3D 80 81 67 */	lis r12, __vt__Q39textinput3gui12GUIComponent@ha
/* 81446C1C | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 81446C20 | 39 8C 8E 78 */	addi r12, r12, __vt__Q39textinput3gui12GUIComponent@l
/* 81446C24 | 3C 80 00 01 */	lis r4, 0x1
/* 81446C28 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 81446C2C | 3B 80 00 00 */	li r28, 0x0
/* 81446C30 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81446C34 | 9B 83 00 04 */	stb r28, 0x4(r3)
/* 81446C38 | 90 03 00 78 */	stw r0, 0x78(r3)
/* 81446C3C | 90 A3 00 7C */	stw r5, 0x7c(r3)
/* 81446C40 | 9B 83 00 90 */	stb r28, 0x90(r3)
/* 81446C44 | 93 83 00 94 */	stw r28, 0x94(r3)
/* 81446C48 | 93 83 00 98 */	stw r28, 0x98(r3)
/* 81446C4C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81446C50 | 7D 89 03 A6 */	mtctr r12
/* 81446C54 | 4E 80 04 21 */	bctrl
/* 81446C58 | 3C 60 81 67 */	lis r3, __vt__Q39textinput3gui13PaneComponent@ha
/* 81446C5C | 38 63 8D 68 */	addi r3, r3, __vt__Q39textinput3gui13PaneComponent@l
/* 81446C60 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81446C64 | 93 9F 00 9C */	stw r28, 0x9c(r31)
.L_81446C68:
/* 81446C68 | 38 60 00 10 */	li r3, 0x10
/* 81446C6C | 48 1B 14 31 */	bl __nw__FUl
/* 81446C70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446C74 | 41 82 00 0C */	beq .L_81446C80
/* 81446C78 | 93 C3 00 00 */	stw r30, 0x0(r3)
/* 81446C7C | 93 E3 00 04 */	stw r31, 0x4(r3)
.L_81446C80:
/* 81446C80 | 7C 7B 1B 78 */	mr r27, r3
.L_81446C84:
/* 81446C84 | 7F 64 DB 78 */	mr r4, r27
/* 81446C88 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81446C8C | 48 0C B3 E9 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81446C90 | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 81446C94 | 7F E3 FB 78 */	mr r3, r31
/* 81446C98 | 7F C4 F3 78 */	mr r4, r30
/* 81446C9C | 38 05 00 01 */	addi r0, r5, 0x1
/* 81446CA0 | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 81446CA4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81446CA8 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81446CAC | 7D 89 03 A6 */	mtctr r12
/* 81446CB0 | 4E 80 04 21 */	bctrl
/* 81446CB4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81446CB8 | 7F C3 F3 78 */	mr r3, r30
/* 81446CBC | 3B 8D AF 70 */	li r28, lbl_81698FB0@sda21
/* 81446CC0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81446CC4 | 7D 89 03 A6 */	mtctr r12
/* 81446CC8 | 4E 80 04 21 */	bctrl
/* 81446CCC | 48 00 00 18 */	b .L_81446CE4
.L_81446CD0:
/* 81446CD0 | 7C 03 E0 40 */	cmplw r3, r28
/* 81446CD4 | 40 82 00 0C */	bne .L_81446CE0
/* 81446CD8 | 38 00 00 01 */	li r0, 0x1
/* 81446CDC | 48 00 00 14 */	b .L_81446CF0
.L_81446CE0:
/* 81446CE0 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81446CE4:
/* 81446CE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446CE8 | 40 82 FF E8 */	bne .L_81446CD0
/* 81446CEC | 38 00 00 00 */	li r0, 0x0
.L_81446CF0:
/* 81446CF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81446CF4 | 41 82 00 0C */	beq .L_81446D00
/* 81446CF8 | 7F C0 F3 78 */	mr r0, r30
/* 81446CFC | 48 00 00 08 */	b .L_81446D04
.L_81446D00:
/* 81446D00 | 38 00 00 00 */	li r0, 0x0
.L_81446D04:
/* 81446D04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81446D08 | 41 82 00 1C */	beq .L_81446D24
/* 81446D0C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81446D10 | 7F E3 FB 78 */	mr r3, r31
/* 81446D14 | 38 80 00 01 */	li r4, 0x1
/* 81446D18 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81446D1C | 7D 89 03 A6 */	mtctr r12
/* 81446D20 | 4E 80 04 21 */	bctrl
.L_81446D24:
/* 81446D24 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81446D28 | 7F C3 F3 78 */	mr r3, r30
/* 81446D2C | 3B 8D AF 80 */	li r28, lbl_81698FC0@sda21
/* 81446D30 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81446D34 | 7D 89 03 A6 */	mtctr r12
/* 81446D38 | 4E 80 04 21 */	bctrl
/* 81446D3C | 48 00 00 18 */	b .L_81446D54
.L_81446D40:
/* 81446D40 | 7C 03 E0 40 */	cmplw r3, r28
/* 81446D44 | 40 82 00 0C */	bne .L_81446D50
/* 81446D48 | 38 00 00 01 */	li r0, 0x1
/* 81446D4C | 48 00 00 14 */	b .L_81446D60
.L_81446D50:
/* 81446D50 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81446D54:
/* 81446D54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446D58 | 40 82 FF E8 */	bne .L_81446D40
/* 81446D5C | 38 00 00 00 */	li r0, 0x0
.L_81446D60:
/* 81446D60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81446D64 | 41 82 00 08 */	beq .L_81446D6C
/* 81446D68 | 48 00 00 08 */	b .L_81446D70
.L_81446D6C:
/* 81446D6C | 3B C0 00 00 */	li r30, 0x0
.L_81446D70:
/* 81446D70 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81446D74 | 41 82 00 1C */	beq .L_81446D90
/* 81446D78 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81446D7C | 7F E3 FB 78 */	mr r3, r31
/* 81446D80 | 38 80 00 01 */	li r4, 0x1
/* 81446D84 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81446D88 | 7D 89 03 A6 */	mtctr r12
/* 81446D8C | 4E 80 04 21 */	bctrl
.L_81446D90:
/* 81446D90 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81446D94 | 7F A3 EB 78 */	mr r3, r29
/* 81446D98 | 7F E4 FB 78 */	mr r4, r31
/* 81446D9C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81446DA0 | 7D 89 03 A6 */	mtctr r12
/* 81446DA4 | 4E 80 04 21 */	bctrl
/* 81446DA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81446DAC | 48 1B 27 61 */	bl _restgpr_27
/* 81446DB0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81446DB4 | 7C 08 03 A6 */	mtlr r0
/* 81446DB8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81446DBC | 4E 80 00 20 */	blr
.endfn addPane___Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane

# .text:0x121C | 0x81446DC0 | size: 0x8
# textinput::gui::PaneComponent::setPane(nw4r::lyt::Pane*)
.fn setPane__Q39textinput3gui13PaneComponentFPQ34nw4r3lyt4Pane, global
/* 81446DC0 | 90 83 00 9C */	stw r4, 0x9c(r3)
/* 81446DC4 | 4E 80 00 20 */	blr
.endfn setPane__Q39textinput3gui13PaneComponentFPQ34nw4r3lyt4Pane

# .text:0x1224 | 0x81446DC8 | size: 0x90
# textinput::gui::PaneManager::searchPaneComponent(const char*)
.fn searchPaneComponent__Q39textinput3gui11PaneManagerFPCc, global
/* 81446DC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81446DCC | 7C 08 02 A6 */	mflr r0
/* 81446DD0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81446DD4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81446DD8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81446DDC | 3B C0 00 00 */	li r30, 0x0
/* 81446DE0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81446DE4 | 7C 9D 23 78 */	mr r29, r4
/* 81446DE8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81446DEC | 7C 7C 1B 78 */	mr r28, r3
/* 81446DF0 | 48 00 00 38 */	b .L_81446E28
.L_81446DF4:
/* 81446DF4 | 38 7C 00 24 */	addi r3, r28, 0x24
/* 81446DF8 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 81446DFC | 48 0C B5 1D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81446E00 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81446E04 | 7C 7F 1B 78 */	mr r31, r3
/* 81446E08 | 7F A4 EB 78 */	mr r4, r29
/* 81446E0C | 38 65 00 B4 */	addi r3, r5, 0xb4
/* 81446E10 | 4B FF 33 E5 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81446E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446E18 | 41 82 00 0C */	beq .L_81446E24
/* 81446E1C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81446E20 | 48 00 00 18 */	b .L_81446E38
.L_81446E24:
/* 81446E24 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81446E28:
/* 81446E28 | A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 81446E2C | 7C 1E 00 40 */	cmplw r30, r0
/* 81446E30 | 41 80 FF C4 */	blt .L_81446DF4
/* 81446E34 | 38 60 00 00 */	li r3, 0x0
.L_81446E38:
/* 81446E38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81446E3C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81446E40 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81446E44 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81446E48 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81446E4C | 7C 08 03 A6 */	mtlr r0
/* 81446E50 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81446E54 | 4E 80 00 20 */	blr
.endfn searchPaneComponent__Q39textinput3gui11PaneManagerFPCc

# .text:0x12B4 | 0x81446E58 | size: 0x78
# textinput::gui::PaneManager::getPaneComponentByPane(nw4r::lyt::Pane*)
.fn getPaneComponentByPane__Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane, global
/* 81446E58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81446E5C | 7C 08 02 A6 */	mflr r0
/* 81446E60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81446E64 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81446E68 | 3B E0 00 00 */	li r31, 0x0
/* 81446E6C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81446E70 | 7C 9E 23 78 */	mr r30, r4
/* 81446E74 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81446E78 | 7C 7D 1B 78 */	mr r29, r3
/* 81446E7C | 48 00 00 28 */	b .L_81446EA4
.L_81446E80:
/* 81446E80 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81446E84 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81446E88 | 48 0C B4 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81446E8C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81446E90 | 7C 00 F0 40 */	cmplw r0, r30
/* 81446E94 | 40 82 00 0C */	bne .L_81446EA0
/* 81446E98 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81446E9C | 48 00 00 18 */	b .L_81446EB4
.L_81446EA0:
/* 81446EA0 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81446EA4:
/* 81446EA4 | A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 81446EA8 | 7C 1F 00 40 */	cmplw r31, r0
/* 81446EAC | 41 80 FF D4 */	blt .L_81446E80
/* 81446EB0 | 38 60 00 00 */	li r3, 0x0
.L_81446EB4:
/* 81446EB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81446EB8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81446EBC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81446EC0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81446EC4 | 7C 08 03 A6 */	mtlr r0
/* 81446EC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81446ECC | 4E 80 00 20 */	blr
.endfn getPaneComponentByPane__Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane

# .text:0x132C | 0x81446ED0 | size: 0xCC
# textinput::gui::PaneManager::setAllBoundingBoxComponentTriggerTarget(bool)
.fn setAllBoundingBoxComponentTriggerTarget__Q39textinput3gui11PaneManagerFb, global
/* 81446ED0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81446ED4 | 7C 08 02 A6 */	mflr r0
/* 81446ED8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81446EDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81446EE0 | 48 1B 25 DD */	bl _savegpr_26
/* 81446EE4 | 7C 7A 1B 78 */	mr r26, r3
/* 81446EE8 | 7C 9B 23 78 */	mr r27, r4
/* 81446EEC | 3B 80 00 00 */	li r28, 0x0
/* 81446EF0 | 3B CD AF 88 */	li r30, lbl_81698FC8@sda21
/* 81446EF4 | 48 00 00 84 */	b .L_81446F78
.L_81446EF8:
/* 81446EF8 | 38 7A 00 24 */	addi r3, r26, 0x24
/* 81446EFC | 57 84 04 3E */	clrlwi r4, r28, 16
/* 81446F00 | 48 0C B4 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81446F04 | 83 A3 00 00 */	lwz r29, 0x0(r3)
/* 81446F08 | 7C 7F 1B 78 */	mr r31, r3
/* 81446F0C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81446F10 | 7F A3 EB 78 */	mr r3, r29
/* 81446F14 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81446F18 | 7D 89 03 A6 */	mtctr r12
/* 81446F1C | 4E 80 04 21 */	bctrl
/* 81446F20 | 48 00 00 18 */	b .L_81446F38
.L_81446F24:
/* 81446F24 | 7C 03 F0 40 */	cmplw r3, r30
/* 81446F28 | 40 82 00 0C */	bne .L_81446F34
/* 81446F2C | 38 00 00 01 */	li r0, 0x1
/* 81446F30 | 48 00 00 14 */	b .L_81446F44
.L_81446F34:
/* 81446F34 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81446F38:
/* 81446F38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446F3C | 40 82 FF E8 */	bne .L_81446F24
/* 81446F40 | 38 00 00 00 */	li r0, 0x0
.L_81446F44:
/* 81446F44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81446F48 | 41 82 00 08 */	beq .L_81446F50
/* 81446F4C | 48 00 00 08 */	b .L_81446F54
.L_81446F50:
/* 81446F50 | 3B A0 00 00 */	li r29, 0x0
.L_81446F54:
/* 81446F54 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81446F58 | 41 82 00 1C */	beq .L_81446F74
/* 81446F5C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81446F60 | 7F 64 DB 78 */	mr r4, r27
/* 81446F64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446F68 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81446F6C | 7D 89 03 A6 */	mtctr r12
/* 81446F70 | 4E 80 04 21 */	bctrl
.L_81446F74:
/* 81446F74 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81446F78:
/* 81446F78 | A0 1A 00 2C */	lhz r0, 0x2c(r26)
/* 81446F7C | 7C 1C 00 40 */	cmplw r28, r0
/* 81446F80 | 41 80 FF 78 */	blt .L_81446EF8
/* 81446F84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81446F88 | 48 1B 25 81 */	bl _restgpr_26
/* 81446F8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81446F90 | 7C 08 03 A6 */	mtlr r0
/* 81446F94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81446F98 | 4E 80 00 20 */	blr
.endfn setAllBoundingBoxComponentTriggerTarget__Q39textinput3gui11PaneManagerFb

# .text:0x13F8 | 0x81446F9C | size: 0x128
# textinput::gui::PaneComponent::contain(float, float)
.fn contain__Q39textinput3gui13PaneComponentFff, global
/* 81446F9C | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81446FA0 | 7C 08 02 A6 */	mflr r0
/* 81446FA4 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81446FA8 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 81446FAC | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 81446FB0 | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 81446FB4 | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 81446FB8 | FF C0 08 90 */	fmr f30, f1
/* 81446FBC | FF E0 10 90 */	fmr f31, f2
/* 81446FC0 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 81446FC4 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 81446FC8 | 7C 7E 1B 78 */	mr r30, r3
/* 81446FCC | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 81446FD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81446FD4 | 40 82 00 0C */	bne .L_81446FE0
/* 81446FD8 | 38 60 00 00 */	li r3, 0x0
/* 81446FDC | 48 00 00 C0 */	b .L_8144709C
.L_81446FE0:
/* 81446FE0 | 7C 03 03 78 */	mr r3, r0
/* 81446FE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81446FE8 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81446FEC | 7D 89 03 A6 */	mtctr r12
/* 81446FF0 | 4E 80 04 21 */	bctrl
/* 81446FF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81446FF8 | 7C 7F 1B 78 */	mr r31, r3
/* 81446FFC | 40 82 00 0C */	bne .L_81447008
/* 81447000 | 38 60 00 00 */	li r3, 0x0
/* 81447004 | 48 00 00 98 */	b .L_8144709C
.L_81447008:
/* 81447008 | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 8144700C | 38 81 00 38 */	addi r4, r1, 0x38
/* 81447010 | 38 63 00 84 */	addi r3, r3, 0x84
/* 81447014 | 48 0F 9F 49 */	bl fn_81540F5C
/* 81447018 | C0 02 8A E8 */	lfs f0, lbl_81694EE8@sda21(r0)
/* 8144701C | 38 61 00 38 */	addi r3, r1, 0x38
/* 81447020 | D3 C1 00 08 */	stfs f30, 0x8(r1)
/* 81447024 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81447028 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 8144702C | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81447030 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81447034 | 48 0F A4 89 */	bl fn_815414BC
/* 81447038 | 80 9E 00 9C */	lwz r4, 0x9c(r30)
/* 8144703C | 7F E5 FB 78 */	mr r5, r31
/* 81447040 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81447044 | 48 0D 7E 21 */	bl fn_8151EE64
/* 81447048 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8144704C | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 81447050 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81447054 | 4C 40 13 82 */	cror eq, lt, eq
/* 81447058 | 40 82 00 40 */	bne .L_81447098
/* 8144705C | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 81447060 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81447064 | 4C 40 13 82 */	cror eq, lt, eq
/* 81447068 | 40 82 00 30 */	bne .L_81447098
/* 8144706C | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 81447070 | C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 81447074 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81447078 | 4C 40 13 82 */	cror eq, lt, eq
/* 8144707C | 40 82 00 1C */	bne .L_81447098
/* 81447080 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81447084 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81447088 | 4C 40 13 82 */	cror eq, lt, eq
/* 8144708C | 40 82 00 0C */	bne .L_81447098
/* 81447090 | 38 60 00 01 */	li r3, 0x1
/* 81447094 | 48 00 00 08 */	b .L_8144709C
.L_81447098:
/* 81447098 | 38 60 00 00 */	li r3, 0x0
.L_8144709C:
/* 8144709C | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 814470A0 | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 814470A4 | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 814470A8 | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 814470AC | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 814470B0 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 814470B4 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 814470B8 | 7C 08 03 A6 */	mtlr r0
/* 814470BC | 38 21 00 90 */	addi r1, r1, 0x90
/* 814470C0 | 4E 80 00 20 */	blr
.endfn contain__Q39textinput3gui13PaneComponentFff

# .text:0x1520 | 0x814470C4 | size: 0x8
# textinput::gui::PaneManager::getDrawInfo()
.fn getDrawInfo__Q39textinput3gui11PaneManagerFv, global
/* 814470C4 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 814470C8 | 4E 80 00 20 */	blr
.endfn getDrawInfo__Q39textinput3gui11PaneManagerFv

# .text:0x1528 | 0x814470CC | size: 0x1A0
# textinput::gui::PaneComponent::draw()
.fn draw__Q39textinput3gui13PaneComponentFv, global
/* 814470CC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814470D0 | 7C 08 02 A6 */	mflr r0
/* 814470D4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814470D8 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 814470DC | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 814470E0 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 814470E4 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 814470E8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814470EC | 7C 7F 1B 78 */	mr r31, r3
/* 814470F0 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 814470F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814470F8 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 814470FC | 7D 89 03 A6 */	mtctr r12
/* 81447100 | 4E 80 04 21 */	bctrl
/* 81447104 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81447108 | 41 82 01 40 */	beq .L_81447248
/* 8144710C | 80 BF 00 9C */	lwz r5, 0x9c(r31)
/* 81447110 | 7F E3 FB 78 */	mr r3, r31
/* 81447114 | 88 E2 8A EC */	lbz r7, lbl_81694EEC@sda21(r0)
/* 81447118 | 38 80 00 00 */	li r4, 0x0
/* 8144711C | C0 25 00 4C */	lfs f1, 0x4c(r5)
/* 81447120 | C0 05 00 50 */	lfs f0, 0x50(r5)
/* 81447124 | C3 E5 00 90 */	lfs f31, 0x90(r5)
/* 81447128 | C3 C5 00 A0 */	lfs f30, 0xa0(r5)
/* 8144712C | 88 C2 8A ED */	lbz r6, lbl_81694EED@sda21(r0)
/* 81447130 | 88 A2 8A EE */	lbz r5, lbl_81694EEE@sda21(r0)
/* 81447134 | 88 02 8A EF */	lbz r0, lbl_81694EEF@sda21(r0)
/* 81447138 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 8144713C | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 81447140 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 81447144 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81447148 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144714C | D0 21 00 10 */	stfs f1, 0x10(r1)
/* 81447150 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81447154 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81447158 | 7D 89 03 A6 */	mtctr r12
/* 8144715C | 4E 80 04 21 */	bctrl
/* 81447160 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81447164 | 41 82 00 14 */	beq .L_81447178
/* 81447168 | 38 60 00 00 */	li r3, 0x0
/* 8144716C | 38 00 00 FF */	li r0, 0xff
/* 81447170 | 98 61 00 08 */	stb r3, 0x8(r1)
/* 81447174 | 98 01 00 0A */	stb r0, 0xa(r1)
.L_81447178:
/* 81447178 | C0 22 8A F0 */	lfs f1, lbl_81694EF0@sda21(r0)
/* 8144717C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81447180 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81447184 | 38 60 00 08 */	li r3, 0x8
/* 81447188 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8144718C | EC 00 00 72 */	fmuls f0, f0, f1
/* 81447190 | C0 A2 8A E8 */	lfs f5, lbl_81694EE8@sda21(r0)
/* 81447194 | EC 62 00 72 */	fmuls f3, f2, f1
/* 81447198 | EC 5E 00 28 */	fsubs f2, f30, f0
/* 8144719C | EC 3F 18 28 */	fsubs f1, f31, f3
/* 814471A0 | EC 7F 18 2A */	fadds f3, f31, f3
/* 814471A4 | FC 80 10 90 */	fmr f4, f2
/* 814471A8 | 4B FF E9 FD */	bl drawLine___Q29textinput3guiFfffffUcR8_GXColor
/* 814471AC | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 814471B0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814471B4 | C0 42 8A F0 */	lfs f2, lbl_81694EF0@sda21(r0)
/* 814471B8 | 38 60 00 08 */	li r3, 0x8
/* 814471BC | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 814471C0 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 814471C4 | C0 A2 8A E8 */	lfs f5, lbl_81694EE8@sda21(r0)
/* 814471C8 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 814471CC | EC 3F 08 2A */	fadds f1, f31, f1
/* 814471D0 | EC 5E 00 28 */	fsubs f2, f30, f0
/* 814471D4 | EC 9E 00 2A */	fadds f4, f30, f0
/* 814471D8 | FC 60 08 90 */	fmr f3, f1
/* 814471DC | 4B FF E9 C9 */	bl drawLine___Q29textinput3guiFfffffUcR8_GXColor
/* 814471E0 | C0 22 8A F0 */	lfs f1, lbl_81694EF0@sda21(r0)
/* 814471E4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814471E8 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 814471EC | 38 60 00 08 */	li r3, 0x8
/* 814471F0 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 814471F4 | EC 00 00 72 */	fmuls f0, f0, f1
/* 814471F8 | C0 A2 8A E8 */	lfs f5, lbl_81694EE8@sda21(r0)
/* 814471FC | EC 62 00 72 */	fmuls f3, f2, f1
/* 81447200 | EC 5E 00 2A */	fadds f2, f30, f0
/* 81447204 | EC 3F 18 2A */	fadds f1, f31, f3
/* 81447208 | EC 7F 18 28 */	fsubs f3, f31, f3
/* 8144720C | FC 80 10 90 */	fmr f4, f2
/* 81447210 | 4B FF E9 95 */	bl drawLine___Q29textinput3guiFfffffUcR8_GXColor
/* 81447214 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81447218 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8144721C | C0 42 8A F0 */	lfs f2, lbl_81694EF0@sda21(r0)
/* 81447220 | 38 60 00 08 */	li r3, 0x8
/* 81447224 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81447228 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 8144722C | C0 A2 8A E8 */	lfs f5, lbl_81694EE8@sda21(r0)
/* 81447230 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 81447234 | EC 3F 08 28 */	fsubs f1, f31, f1
/* 81447238 | EC 5E 00 2A */	fadds f2, f30, f0
/* 8144723C | EC 9E 00 28 */	fsubs f4, f30, f0
/* 81447240 | FC 60 08 90 */	fmr f3, f1
/* 81447244 | 4B FF E9 61 */	bl drawLine___Q29textinput3guiFfffffUcR8_GXColor
.L_81447248:
/* 81447248 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8144724C | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81447250 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 81447254 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81447258 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8144725C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81447260 | 7C 08 03 A6 */	mtlr r0
/* 81447264 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81447268 | 4E 80 00 20 */	blr
.endfn draw__Q39textinput3gui13PaneComponentFv

# .text:0x16C8 | 0x8144726C | size: 0x40
# textinput::gui::PaneComponent::isVisible()
.fn isVisible__Q39textinput3gui13PaneComponentFv, global
/* 8144726C | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81447270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81447274 | 40 82 00 28 */	bne .L_8144729C
/* 81447278 | 38 60 00 00 */	li r3, 0x0
/* 8144727C | 4E 80 00 20 */	blr
/* 81447280 | 48 00 00 1C */	b .L_8144729C
.L_81447284:
/* 81447284 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81447288 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8144728C | 40 82 00 0C */	bne .L_81447298
/* 81447290 | 38 60 00 00 */	li r3, 0x0
/* 81447294 | 4E 80 00 20 */	blr
.L_81447298:
/* 81447298 | 80 63 00 0C */	lwz r3, 0xc(r3)
.L_8144729C:
/* 8144729C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814472A0 | 40 82 FF E4 */	bne .L_81447284
/* 814472A4 | 38 60 00 01 */	li r3, 0x1
/* 814472A8 | 4E 80 00 20 */	blr
.endfn isVisible__Q39textinput3gui13PaneComponentFv

# .text:0x1708 | 0x814472AC | size: 0x4
# textinput::gui::GUIComponent::updatePointer(const textinput::gui::GUIPointer&)
.fn updatePointer__Q39textinput3gui12GUIComponentFRCQ39textinput3gui10GUIPointer, global
/* 814472AC | 4B FF EA B8 */	b updatePointerImpl__Q39textinput3gui12GUIComponentFRCQ39textinput3gui10GUIPointer
.endfn updatePointer__Q39textinput3gui12GUIComponentFRCQ39textinput3gui10GUIPointer

# .text:0x170C | 0x814472B0 | size: 0x8
# textinput::gui::GUIManager::setEventHandler(textinput::gui::EventHandler*)
.fn setEventHandler__Q39textinput3gui10GUIManagerFPQ39textinput3gui12EventHandler, global
/* 814472B0 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814472B4 | 4E 80 00 20 */	blr
.endfn setEventHandler__Q39textinput3gui10GUIManagerFPQ39textinput3gui12EventHandler

# .text:0x1714 | 0x814472B8 | size: 0x8
# textinput::gui::GUIManager::update(int, const KPADStatus*, float, float, void*)
.fn update__Q39textinput3gui10GUIManagerFiPC10KPADStatusffPv, global
/* 814472B8 | 38 60 00 00 */	li r3, 0x0
/* 814472BC | 4E 80 00 20 */	blr
.endfn update__Q39textinput3gui10GUIManagerFiPC10KPADStatusffPv

# 0x81668D68..0x81668EE0 | size: 0x178
.data
.balign 8

# .data:0x0 | 0x81668D68 | size: 0x6C
# textinput::gui::PaneComponent::__vtable
.obj __vt__Q39textinput3gui13PaneComponent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput3gui13PaneComponentFv
	.4byte create__Q39textinput3gui12GUIInterfaceFv
	.4byte init__Q39textinput3gui12GUIComponentFv
	.4byte calc__Q39textinput3gui12GUIInterfaceFv
	.4byte draw__Q39textinput3gui12GUIInterfaceFRA3_A4_f
	.4byte draw__Q39textinput3gui13PaneComponentFv
	.4byte getID__Q39textinput3gui12GUIComponentFv
	.4byte isPointed__Q39textinput3gui12GUIComponentFi
	.4byte isDragging__Q39textinput3gui12GUIComponentFi
	.4byte setPointed__Q39textinput3gui12GUIComponentFib
	.4byte onPointIn__Q39textinput3gui12GUIComponentFi
	.4byte onPointOut__Q39textinput3gui12GUIComponentFi
	.4byte onDrag__Q39textinput3gui12GUIComponentFff
	.4byte onMove__Q39textinput3gui12GUIComponentFiff
	.4byte onTrig__Q39textinput3gui12GUIComponentFiUlR3Vec
	.4byte setDraggingButton__Q39textinput3gui12GUIComponentFUl
	.4byte updatePointer__Q39textinput3gui12GUIComponentFRCQ39textinput3gui10GUIPointer
	.4byte updatePointer__Q39textinput3gui12GUIComponentFiffUlUlUl
	.4byte isTriggerTarget__Q39textinput3gui12GUIComponentFv
	.4byte setTriggerTarget__Q39textinput3gui12GUIComponentFb
	.4byte isVisible__Q39textinput3gui13PaneComponentFv
	.4byte getFlightDuration__Q39textinput3gui12GUIComponentFi
	.4byte setFlightDuration__Q39textinput3gui12GUIComponentFiUs
	.4byte contain__Q39textinput3gui13PaneComponentFff
	.4byte setPane__Q39textinput3gui13PaneComponentFPQ34nw4r3lyt4Pane
.endobj __vt__Q39textinput3gui13PaneComponent

# .data:0x6C | 0x81668DD4 | size: 0x5C
# textinput::gui::PaneManager::__vtable
.obj __vt__Q39textinput3gui11PaneManager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput3gui11PaneManagerFv
	.4byte create__Q39textinput3gui12GUIInterfaceFv
	.4byte init__Q39textinput3gui10GUIManagerFv
	.4byte calc__Q39textinput3gui10GUIManagerFv
	.4byte draw__Q39textinput3gui12GUIInterfaceFRA3_A4_f
	.4byte draw__Q39textinput3gui10GUIManagerFv
	.4byte addComponent__Q39textinput3gui10GUIManagerFPQ39textinput3gui12GUIComponent
	.4byte getComponent__Q39textinput3gui10GUIManagerFUl
	.4byte getComponent__Q39textinput3gui10GUIManagerCFUl
	.4byte update__Q39textinput3gui10GUIManagerFiPC10KPADStatusffPv
	.4byte update__Q39textinput3gui10GUIManagerFiffUlUlUlPv
	.4byte onEvent__Q39textinput3gui10GUIManagerFRQ39textinput3gui12GUIComponentUliPv
	.4byte setAllComponentTriggerTarget__Q39textinput3gui10GUIManagerFb
	.4byte setEventHandler__Q39textinput3gui10GUIManagerFPQ39textinput3gui12EventHandler
	.4byte changeEventHandler__Q39textinput3gui10GUIManagerFPQ39textinput3gui12EventHandler
	.4byte setDraggingButton__Q39textinput3gui10GUIManagerFUl
	.4byte createLayoutScene__Q39textinput3gui11PaneManagerFRCQ34nw4r3lyt6Layout
	.4byte getPaneComponentByPane__Q39textinput3gui11PaneManagerFPQ34nw4r3lyt4Pane
	.4byte getDrawInfo__Q39textinput3gui11PaneManagerFv
	.4byte setDrawInfo__Q39textinput3gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo
	.4byte setAllBoundingBoxComponentTriggerTarget__Q39textinput3gui11PaneManagerFb
.endobj __vt__Q39textinput3gui11PaneManager

# .data:0xC8 | 0x81668E30 | size: 0x48
# textinput::gui::GUIManager::__vtable
.obj __vt__Q39textinput3gui10GUIManager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput3gui10GUIManagerFv
	.4byte create__Q39textinput3gui12GUIInterfaceFv
	.4byte init__Q39textinput3gui10GUIManagerFv
	.4byte calc__Q39textinput3gui10GUIManagerFv
	.4byte draw__Q39textinput3gui12GUIInterfaceFRA3_A4_f
	.4byte draw__Q39textinput3gui10GUIManagerFv
	.4byte addComponent__Q39textinput3gui10GUIManagerFPQ39textinput3gui12GUIComponent
	.4byte getComponent__Q39textinput3gui10GUIManagerFUl
	.4byte getComponent__Q39textinput3gui10GUIManagerCFUl
	.4byte update__Q39textinput3gui10GUIManagerFiPC10KPADStatusffPv
	.4byte update__Q39textinput3gui10GUIManagerFiffUlUlUlPv
	.4byte onEvent__Q39textinput3gui10GUIManagerFRQ39textinput3gui12GUIComponentUliPv
	.4byte setAllComponentTriggerTarget__Q39textinput3gui10GUIManagerFb
	.4byte setEventHandler__Q39textinput3gui10GUIManagerFPQ39textinput3gui12EventHandler
	.4byte changeEventHandler__Q39textinput3gui10GUIManagerFPQ39textinput3gui12EventHandler
	.4byte setDraggingButton__Q39textinput3gui10GUIManagerFUl
.endobj __vt__Q39textinput3gui10GUIManager

# .data:0x110 | 0x81668E78 | size: 0x64
# textinput::gui::GUIComponent::__vtable
.obj __vt__Q39textinput3gui12GUIComponent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput3gui12GUIComponentFv
	.4byte create__Q39textinput3gui12GUIInterfaceFv
	.4byte init__Q39textinput3gui12GUIComponentFv
	.4byte calc__Q39textinput3gui12GUIInterfaceFv
	.4byte draw__Q39textinput3gui12GUIInterfaceFRA3_A4_f
	.4byte draw__Q39textinput3gui12GUIInterfaceFv
	.4byte getID__Q39textinput3gui12GUIComponentFv
	.4byte isPointed__Q39textinput3gui12GUIComponentFi
	.4byte isDragging__Q39textinput3gui12GUIComponentFi
	.4byte setPointed__Q39textinput3gui12GUIComponentFib
	.4byte onPointIn__Q39textinput3gui12GUIComponentFi
	.4byte onPointOut__Q39textinput3gui12GUIComponentFi
	.4byte onDrag__Q39textinput3gui12GUIComponentFff
	.4byte onMove__Q39textinput3gui12GUIComponentFiff
	.4byte onTrig__Q39textinput3gui12GUIComponentFiUlR3Vec
	.4byte setDraggingButton__Q39textinput3gui12GUIComponentFUl
	.4byte updatePointer__Q39textinput3gui12GUIComponentFRCQ39textinput3gui10GUIPointer
	.4byte updatePointer__Q39textinput3gui12GUIComponentFiffUlUlUl
	.4byte isTriggerTarget__Q39textinput3gui12GUIComponentFv
	.4byte setTriggerTarget__Q39textinput3gui12GUIComponentFb
	.4byte isVisible__Q39textinput3gui12GUIComponentFv
	.4byte getFlightDuration__Q39textinput3gui12GUIComponentFi
	.4byte setFlightDuration__Q39textinput3gui12GUIComponentFiUs
.endobj __vt__Q39textinput3gui12GUIComponent

# .data:0x174 | 0x81668EDC | size: 0x4
.obj gap_08_81668EDC_data, global
.hidden gap_08_81668EDC_data
	.4byte 0x00000000
.endobj gap_08_81668EDC_data

# 0x81694ED0..0x81694EF8 | size: 0x28
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694ED0 | size: 0x4
.obj lbl_81694ED0, global
	.float 0
.endobj lbl_81694ED0

# .sdata2:0x4 | 0x81694ED4 | size: 0x4
.obj lbl_81694ED4, global
	.float 0.5
.endobj lbl_81694ED4

# .sdata2:0x8 | 0x81694ED8 | size: 0x4
.obj lbl_81694ED8, global
	.float 6
.endobj lbl_81694ED8

# .sdata2:0xC | 0x81694EDC | size: 0x4
.obj gap_09_81694EDC_sdata2, global
.hidden gap_09_81694EDC_sdata2
	.4byte 0x00000000
.endobj gap_09_81694EDC_sdata2

# .sdata2:0x10 | 0x81694EE0 | size: 0x8
.obj lbl_81694EE0, global
	.double 4503599627370496
.endobj lbl_81694EE0

# .sdata2:0x18 | 0x81694EE8 | size: 0x4
.obj lbl_81694EE8, global
	.float 0
.endobj lbl_81694EE8

# .sdata2:0x1C | 0x81694EEC | size: 0x1
.obj lbl_81694EEC, global
	.byte 0xFF
.endobj lbl_81694EEC

# .sdata2:0x1D | 0x81694EED | size: 0x1
.obj lbl_81694EED, global
	.byte 0x00
.endobj lbl_81694EED

# .sdata2:0x1E | 0x81694EEE | size: 0x1
.obj lbl_81694EEE, global
	.byte 0x00
.endobj lbl_81694EEE

# .sdata2:0x1F | 0x81694EEF | size: 0x1
.obj lbl_81694EEF, global
	.byte 0xFF
.endobj lbl_81694EEF

# .sdata2:0x20 | 0x81694EF0 | size: 0x4
.obj lbl_81694EF0, global
	.float 0.5
.endobj lbl_81694EF0

# .sdata2:0x24 | 0x81694EF4 | size: 0x4
.obj gap_09_81694EF4_sdata2, global
.hidden gap_09_81694EF4_sdata2
	.4byte 0x00000000
.endobj gap_09_81694EF4_sdata2
