.include "macros.inc"
.file "GUIManager.cpp"

# 0x81368918..0x81369ABC | size: 0x11A4
.text
.balign 4

# .text:0x0 | 0x81368918 | size: 0x2C0
# gui::Component::update(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn update__Q23gui9ComponentFiffUlUlUlPv, global
/* 81368918 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8136891C | 7C 08 02 A6 */	mflr r0
/* 81368920 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81368924 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81368928 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8136892C | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 81368930 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 81368934 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81368938 | 48 29 0B 85 */	bl _savegpr_26
/* 8136893C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81368940 | FF C0 08 90 */	fmr f30, f1
/* 81368944 | FF E0 10 90 */	fmr f31, f2
/* 81368948 | 7C 7A 1B 78 */	mr r26, r3
/* 8136894C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81368950 | 7C 9B 23 78 */	mr r27, r4
/* 81368954 | 7C DC 33 78 */	mr r28, r6
/* 81368958 | 7D 1D 43 78 */	mr r29, r8
/* 8136895C | 3B C0 00 00 */	li r30, 0x0
/* 81368960 | 7D 89 03 A6 */	mtctr r12
/* 81368964 | 4E 80 04 21 */	bctrl
/* 81368968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136896C | 41 82 02 20 */	beq .L_81368B8C
/* 81368970 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368974 | FC 20 F0 90 */	fmr f1, f30
/* 81368978 | FC 40 F8 90 */	fmr f2, f31
/* 8136897C | 7F 43 D3 78 */	mr r3, r26
/* 81368980 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 81368984 | 7D 89 03 A6 */	mtctr r12
/* 81368988 | 4E 80 04 21 */	bctrl
/* 8136898C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368990 | 41 82 00 F4 */	beq .L_81368A84
/* 81368994 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368998 | 7F 43 D3 78 */	mr r3, r26
/* 8136899C | 7F 64 DB 78 */	mr r4, r27
/* 813689A0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813689A4 | 7D 89 03 A6 */	mtctr r12
/* 813689A8 | 4E 80 04 21 */	bctrl
/* 813689AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813689B0 | 41 82 00 60 */	beq .L_81368A10
/* 813689B4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813689B8 | FC 20 F0 90 */	fmr f1, f30
/* 813689BC | FC 40 F8 90 */	fmr f2, f31
/* 813689C0 | 7F 43 D3 78 */	mr r3, r26
/* 813689C4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813689C8 | 7F 64 DB 78 */	mr r4, r27
/* 813689CC | 7D 89 03 A6 */	mtctr r12
/* 813689D0 | 4E 80 04 21 */	bctrl
/* 813689D4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813689D8 | 7F 43 D3 78 */	mr r3, r26
/* 813689DC | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813689E0 | 7D 89 03 A6 */	mtctr r12
/* 813689E4 | 4E 80 04 21 */	bctrl
/* 813689E8 | 7C 64 1B 78 */	mr r4, r3
/* 813689EC | 80 7A 00 80 */	lwz r3, 0x80(r26)
/* 813689F0 | 7F 66 DB 78 */	mr r6, r27
/* 813689F4 | 7F A7 EB 78 */	mr r7, r29
/* 813689F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813689FC | 38 A0 00 03 */	li r5, 0x3
/* 81368A00 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81368A04 | 7D 89 03 A6 */	mtctr r12
/* 81368A08 | 4E 80 04 21 */	bctrl
/* 81368A0C | 48 00 00 70 */	b .L_81368A7C
.L_81368A10:
/* 81368A10 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368A14 | 7F 43 D3 78 */	mr r3, r26
/* 81368A18 | 7F 64 DB 78 */	mr r4, r27
/* 81368A1C | 38 A0 00 01 */	li r5, 0x1
/* 81368A20 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81368A24 | 7D 89 03 A6 */	mtctr r12
/* 81368A28 | 4E 80 04 21 */	bctrl
/* 81368A2C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368A30 | 7F 43 D3 78 */	mr r3, r26
/* 81368A34 | 7F 64 DB 78 */	mr r4, r27
/* 81368A38 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81368A3C | 7D 89 03 A6 */	mtctr r12
/* 81368A40 | 4E 80 04 21 */	bctrl
/* 81368A44 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368A48 | 7F 43 D3 78 */	mr r3, r26
/* 81368A4C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81368A50 | 7D 89 03 A6 */	mtctr r12
/* 81368A54 | 4E 80 04 21 */	bctrl
/* 81368A58 | 7C 64 1B 78 */	mr r4, r3
/* 81368A5C | 80 7A 00 80 */	lwz r3, 0x80(r26)
/* 81368A60 | 7F 66 DB 78 */	mr r6, r27
/* 81368A64 | 7F A7 EB 78 */	mr r7, r29
/* 81368A68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81368A6C | 38 A0 00 01 */	li r5, 0x1
/* 81368A70 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81368A74 | 7D 89 03 A6 */	mtctr r12
/* 81368A78 | 4E 80 04 21 */	bctrl
.L_81368A7C:
/* 81368A7C | 3B C0 00 01 */	li r30, 0x1
/* 81368A80 | 48 00 00 90 */	b .L_81368B10
.L_81368A84:
/* 81368A84 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368A88 | 7F 43 D3 78 */	mr r3, r26
/* 81368A8C | 7F 64 DB 78 */	mr r4, r27
/* 81368A90 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81368A94 | 7D 89 03 A6 */	mtctr r12
/* 81368A98 | 4E 80 04 21 */	bctrl
/* 81368A9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368AA0 | 41 82 00 70 */	beq .L_81368B10
/* 81368AA4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368AA8 | 7F 43 D3 78 */	mr r3, r26
/* 81368AAC | 7F 64 DB 78 */	mr r4, r27
/* 81368AB0 | 38 A0 00 00 */	li r5, 0x0
/* 81368AB4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81368AB8 | 7D 89 03 A6 */	mtctr r12
/* 81368ABC | 4E 80 04 21 */	bctrl
/* 81368AC0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368AC4 | 7F 43 D3 78 */	mr r3, r26
/* 81368AC8 | 7F 64 DB 78 */	mr r4, r27
/* 81368ACC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81368AD0 | 7D 89 03 A6 */	mtctr r12
/* 81368AD4 | 4E 80 04 21 */	bctrl
/* 81368AD8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368ADC | 7F 43 D3 78 */	mr r3, r26
/* 81368AE0 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81368AE4 | 7D 89 03 A6 */	mtctr r12
/* 81368AE8 | 4E 80 04 21 */	bctrl
/* 81368AEC | 7C 64 1B 78 */	mr r4, r3
/* 81368AF0 | 80 7A 00 80 */	lwz r3, 0x80(r26)
/* 81368AF4 | 7F 66 DB 78 */	mr r6, r27
/* 81368AF8 | 7F A7 EB 78 */	mr r7, r29
/* 81368AFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81368B00 | 38 A0 00 02 */	li r5, 0x2
/* 81368B04 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81368B08 | 7D 89 03 A6 */	mtctr r12
/* 81368B0C | 4E 80 04 21 */	bctrl
.L_81368B10:
/* 81368B10 | 7C 7A DA 14 */	add r3, r26, r27
/* 81368B14 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 81368B18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81368B1C | 41 82 00 70 */	beq .L_81368B8C
/* 81368B20 | 1C 1B 00 0C */	mulli r0, r27, 0xc
/* 81368B24 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368B28 | 7F 43 D3 78 */	mr r3, r26
/* 81368B2C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81368B30 | 7F FA 02 14 */	add r31, r26, r0
/* 81368B34 | C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 81368B38 | C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 81368B3C | EC 3E 08 28 */	fsubs f1, f30, f1
/* 81368B40 | EC 5F 00 28 */	fsubs f2, f31, f0
/* 81368B44 | 7D 89 03 A6 */	mtctr r12
/* 81368B48 | 4E 80 04 21 */	bctrl
/* 81368B4C | D3 DF 00 14 */	stfs f30, 0x14(r31)
/* 81368B50 | 7F 43 D3 78 */	mr r3, r26
/* 81368B54 | D3 FF 00 18 */	stfs f31, 0x18(r31)
/* 81368B58 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81368B5C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81368B60 | 7D 89 03 A6 */	mtctr r12
/* 81368B64 | 4E 80 04 21 */	bctrl
/* 81368B68 | 7C 64 1B 78 */	mr r4, r3
/* 81368B6C | 80 7A 00 80 */	lwz r3, 0x80(r26)
/* 81368B70 | 7F 66 DB 78 */	mr r6, r27
/* 81368B74 | 7F A7 EB 78 */	mr r7, r29
/* 81368B78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81368B7C | 38 A0 00 04 */	li r5, 0x4
/* 81368B80 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81368B84 | 7D 89 03 A6 */	mtctr r12
/* 81368B88 | 4E 80 04 21 */	bctrl
.L_81368B8C:
/* 81368B8C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81368B90 | 40 82 00 1C */	bne .L_81368BAC
/* 81368B94 | 7C 7A DA 14 */	add r3, r26, r27
/* 81368B98 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 81368B9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81368BA0 | 41 82 00 0C */	beq .L_81368BAC
/* 81368BA4 | 38 00 00 00 */	li r0, 0x0
/* 81368BA8 | 98 03 00 0C */	stb r0, 0xc(r3)
.L_81368BAC:
/* 81368BAC | 7F C3 F3 78 */	mr r3, r30
/* 81368BB0 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81368BB4 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81368BB8 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 81368BBC | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81368BC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81368BC4 | 48 29 09 45 */	bl _restgpr_26
/* 81368BC8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81368BCC | 7C 08 03 A6 */	mtlr r0
/* 81368BD0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81368BD4 | 4E 80 00 20 */	blr
.endfn update__Q23gui9ComponentFiffUlUlUlPv

# .text:0x2C0 | 0x81368BD8 | size: 0x8
# gui::Component::isVisible()
.fn isVisible__Q23gui9ComponentFv, global
/* 81368BD8 | 38 60 00 01 */	li r3, 0x1
/* 81368BDC | 4E 80 00 20 */	blr
.endfn isVisible__Q23gui9ComponentFv

# .text:0x2C8 | 0x81368BE0 | size: 0xC
# gui::Component::isPointed(int)
.fn isPointed__Q23gui9ComponentFi, global
/* 81368BE0 | 7C 63 22 14 */	add r3, r3, r4
/* 81368BE4 | 88 63 00 04 */	lbz r3, 0x4(r3)
/* 81368BE8 | 4E 80 00 20 */	blr
.endfn isPointed__Q23gui9ComponentFi

# .text:0x2D4 | 0x81368BEC | size: 0x18
# gui::Component::onMove(int, float, float)
.fn onMove__Q23gui9ComponentFiff, global
/* 81368BEC | 54 80 08 3C */	slwi r0, r4, 1
/* 81368BF0 | 7C 83 02 14 */	add r4, r3, r0
/* 81368BF4 | A0 64 00 84 */	lhz r3, 0x84(r4)
/* 81368BF8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81368BFC | B0 04 00 84 */	sth r0, 0x84(r4)
/* 81368C00 | 4E 80 00 20 */	blr
.endfn onMove__Q23gui9ComponentFiff

# .text:0x2EC | 0x81368C04 | size: 0x8
# gui::Component::getID()
.fn getID__Q23gui9ComponentFv, global
/* 81368C04 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 81368C08 | 4E 80 00 20 */	blr
.endfn getID__Q23gui9ComponentFv

# .text:0x2F4 | 0x81368C0C | size: 0xC
# gui::Component::setPointed(int, bool)
.fn setPointed__Q23gui9ComponentFib, global
/* 81368C0C | 7C 63 22 14 */	add r3, r3, r4
/* 81368C10 | 98 A3 00 04 */	stb r5, 0x4(r3)
/* 81368C14 | 4E 80 00 20 */	blr
.endfn setPointed__Q23gui9ComponentFib

# .text:0x300 | 0x81368C18 | size: 0x14
# gui::Component::onPoint(int)
.fn onPoint__Q23gui9ComponentFi, global
/* 81368C18 | 54 80 08 3C */	slwi r0, r4, 1
/* 81368C1C | 38 80 00 00 */	li r4, 0x0
/* 81368C20 | 7C 63 02 14 */	add r3, r3, r0
/* 81368C24 | B0 83 00 84 */	sth r4, 0x84(r3)
/* 81368C28 | 4E 80 00 20 */	blr
.endfn onPoint__Q23gui9ComponentFi

# .text:0x314 | 0x81368C2C | size: 0x14
# gui::Component::offPoint(int)
.fn offPoint__Q23gui9ComponentFi, global
/* 81368C2C | 54 80 08 3C */	slwi r0, r4, 1
/* 81368C30 | 38 80 00 00 */	li r4, 0x0
/* 81368C34 | 7C 63 02 14 */	add r3, r3, r0
/* 81368C38 | B0 83 00 84 */	sth r4, 0x84(r3)
/* 81368C3C | 4E 80 00 20 */	blr
.endfn offPoint__Q23gui9ComponentFi

# .text:0x328 | 0x81368C40 | size: 0x4
# gui::Component::onDrag(float, float)
.fn onDrag__Q23gui9ComponentFff, global
/* 81368C40 | 4E 80 00 20 */	blr
.endfn onDrag__Q23gui9ComponentFff

# .text:0x32C | 0x81368C44 | size: 0xB4
# gui::Manager::~Manager()
.fn __dt__Q23gui7ManagerFv, global
/* 81368C44 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81368C48 | 7C 08 02 A6 */	mflr r0
/* 81368C4C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81368C50 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81368C54 | 48 29 08 75 */	bl _savegpr_29
/* 81368C58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368C5C | 7C 7D 1B 78 */	mr r29, r3
/* 81368C60 | 7C 9E 23 78 */	mr r30, r4
/* 81368C64 | 41 82 00 78 */	beq .L_81368CDC
/* 81368C68 | 3C A0 81 64 */	lis r5, __vt__Q23gui7Manager@ha
/* 81368C6C | 38 80 00 00 */	li r4, 0x0
/* 81368C70 | 38 A5 27 E0 */	addi r5, r5, __vt__Q23gui7Manager@l
/* 81368C74 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81368C78 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81368C7C | 48 1A 96 61 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81368C80 | 7C 7F 1B 78 */	mr r31, r3
/* 81368C84 | 48 00 00 40 */	b .L_81368CC4
.L_81368C88:
/* 81368C88 | 7F E4 FB 78 */	mr r4, r31
/* 81368C8C | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81368C90 | 48 1A 95 E1 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81368C94 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 81368C98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368C9C | 41 82 00 10 */	beq .L_81368CAC
/* 81368CA0 | 7F E4 FB 78 */	mr r4, r31
/* 81368CA4 | 48 1F 29 D5 */	bl fn_8155B678
/* 81368CA8 | 48 00 00 0C */	b .L_81368CB4
.L_81368CAC:
/* 81368CAC | 7F E3 FB 78 */	mr r3, r31
/* 81368CB0 | 48 28 F4 35 */	bl __dl__FPv
.L_81368CB4:
/* 81368CB4 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81368CB8 | 38 80 00 00 */	li r4, 0x0
/* 81368CBC | 48 1A 96 21 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81368CC0 | 7C 7F 1B 78 */	mr r31, r3
.L_81368CC4:
/* 81368CC4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81368CC8 | 40 82 FF C0 */	bne .L_81368C88
/* 81368CCC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81368CD0 | 40 81 00 0C */	ble .L_81368CDC
/* 81368CD4 | 7F A3 EB 78 */	mr r3, r29
/* 81368CD8 | 48 28 F4 0D */	bl __dl__FPv
.L_81368CDC:
/* 81368CDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81368CE0 | 7F A3 EB 78 */	mr r3, r29
/* 81368CE4 | 48 29 08 31 */	bl _restgpr_29
/* 81368CE8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81368CEC | 7C 08 03 A6 */	mtlr r0
/* 81368CF0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81368CF4 | 4E 80 00 20 */	blr
.endfn __dt__Q23gui7ManagerFv

# .text:0x3E0 | 0x81368CF8 | size: 0x68
# gui::Manager::init()
.fn init__Q23gui7ManagerFv, global
/* 81368CF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81368CFC | 7C 08 02 A6 */	mflr r0
/* 81368D00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81368D04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81368D08 | 3B E0 00 00 */	li r31, 0x0
/* 81368D0C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81368D10 | 7C 7E 1B 78 */	mr r30, r3
/* 81368D14 | 48 00 00 28 */	b .L_81368D3C
.L_81368D18:
/* 81368D18 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 81368D1C | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81368D20 | 48 1A 95 F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81368D24 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81368D28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81368D2C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81368D30 | 7D 89 03 A6 */	mtctr r12
/* 81368D34 | 4E 80 04 21 */	bctrl
/* 81368D38 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81368D3C:
/* 81368D3C | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 81368D40 | 7C 1F 00 40 */	cmplw r31, r0
/* 81368D44 | 41 80 FF D4 */	blt .L_81368D18
/* 81368D48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81368D4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81368D50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81368D54 | 7C 08 03 A6 */	mtlr r0
/* 81368D58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81368D5C | 4E 80 00 20 */	blr
.endfn init__Q23gui7ManagerFv

# .text:0x448 | 0x81368D60 | size: 0x54
# gui::Component::init()
.fn init__Q23gui9ComponentFv, global
/* 81368D60 | 39 40 00 00 */	li r10, 0x0
/* 81368D64 | 38 00 00 08 */	li r0, 0x8
/* 81368D68 | 7D 47 53 78 */	mr r7, r10
/* 81368D6C | C0 02 82 78 */	lfs f0, lbl_81694678@sda21(r0)
/* 81368D70 | 38 80 00 00 */	li r4, 0x0
/* 81368D74 | 38 A0 00 00 */	li r5, 0x0
/* 81368D78 | 7C 09 03 A6 */	mtctr r0
.L_81368D7C:
/* 81368D7C | 7D 23 52 14 */	add r9, r3, r10
/* 81368D80 | 7D 03 22 14 */	add r8, r3, r4
/* 81368D84 | 98 E9 00 04 */	stb r7, 0x4(r9)
/* 81368D88 | 7C C3 2A 14 */	add r6, r3, r5
/* 81368D8C | 39 4A 00 01 */	addi r10, r10, 0x1
/* 81368D90 | 38 84 00 0C */	addi r4, r4, 0xc
/* 81368D94 | D0 08 00 14 */	stfs f0, 0x14(r8)
/* 81368D98 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 81368D9C | D0 08 00 18 */	stfs f0, 0x18(r8)
/* 81368DA0 | D0 08 00 1C */	stfs f0, 0x1c(r8)
/* 81368DA4 | 98 E9 00 0C */	stb r7, 0xc(r9)
/* 81368DA8 | B0 E6 00 84 */	sth r7, 0x84(r6)
/* 81368DAC | 42 00 FF D0 */	bdnz .L_81368D7C
/* 81368DB0 | 4E 80 00 20 */	blr
.endfn init__Q23gui9ComponentFv

# .text:0x49C | 0x81368DB4 | size: 0xBC
# gui::Manager::addComponent(gui::Component*)
.fn addComponent__Q23gui7ManagerFPQ23gui9Component, global
/* 81368DB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81368DB8 | 7C 08 02 A6 */	mflr r0
/* 81368DBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81368DC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81368DC4 | 48 29 07 05 */	bl _savegpr_29
/* 81368DC8 | 7C 9E 23 78 */	mr r30, r4
/* 81368DCC | 7C 7D 1B 78 */	mr r29, r3
/* 81368DD0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81368DD4 | 7F C3 F3 78 */	mr r3, r30
/* 81368DD8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81368DDC | 7D 89 03 A6 */	mtctr r12
/* 81368DE0 | 4E 80 04 21 */	bctrl
/* 81368DE4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81368DE8 | 7C 7F 1B 78 */	mr r31, r3
/* 81368DEC | 7F C3 F3 78 */	mr r3, r30
/* 81368DF0 | 7F A4 EB 78 */	mr r4, r29
/* 81368DF4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81368DF8 | 7D 89 03 A6 */	mtctr r12
/* 81368DFC | 4E 80 04 21 */	bctrl
/* 81368E00 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 81368E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368E08 | 41 82 00 2C */	beq .L_81368E34
/* 81368E0C | 38 80 00 10 */	li r4, 0x10
/* 81368E10 | 48 1F 28 59 */	bl fn_8155B668
/* 81368E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368E18 | 41 82 00 0C */	beq .L_81368E24
/* 81368E1C | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 81368E20 | 93 C3 00 04 */	stw r30, 0x4(r3)
.L_81368E24:
/* 81368E24 | 7C 64 1B 78 */	mr r4, r3
/* 81368E28 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81368E2C | 48 1A 92 49 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81368E30 | 48 00 00 28 */	b .L_81368E58
.L_81368E34:
/* 81368E34 | 38 60 00 10 */	li r3, 0x10
/* 81368E38 | 48 28 F2 65 */	bl __nw__FUl
/* 81368E3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368E40 | 41 82 00 0C */	beq .L_81368E4C
/* 81368E44 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 81368E48 | 93 C3 00 04 */	stw r30, 0x4(r3)
.L_81368E4C:
/* 81368E4C | 7C 64 1B 78 */	mr r4, r3
/* 81368E50 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81368E54 | 48 1A 92 21 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_81368E58:
/* 81368E58 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81368E5C | 48 29 06 B9 */	bl _restgpr_29
/* 81368E60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81368E64 | 7C 08 03 A6 */	mtlr r0
/* 81368E68 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81368E6C | 4E 80 00 20 */	blr
.endfn addComponent__Q23gui7ManagerFPQ23gui9Component

# .text:0x558 | 0x81368E70 | size: 0x8
# gui::Component::setManager(gui::Manager*)
.fn setManager__Q23gui9ComponentFPQ23gui7Manager, global
/* 81368E70 | 90 83 00 80 */	stw r4, 0x80(r3)
/* 81368E74 | 4E 80 00 20 */	blr
.endfn setManager__Q23gui9ComponentFPQ23gui7Manager

# .text:0x560 | 0x81368E78 | size: 0x2C
# gui::Manager::getComponent(unsigned long)
.fn getComponent__Q23gui7ManagerFUl, global
/* 81368E78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81368E7C | 7C 08 02 A6 */	mflr r0
/* 81368E80 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 81368E84 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81368E88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81368E8C | 48 1A 94 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81368E90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81368E94 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81368E98 | 7C 08 03 A6 */	mtlr r0
/* 81368E9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81368EA0 | 4E 80 00 20 */	blr
.endfn getComponent__Q23gui7ManagerFUl

# .text:0x58C | 0x81368EA4 | size: 0x1B0
# gui::Manager::update(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn update__Q23gui7ManagerFiffUlUlUlPv, global
/* 81368EA4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81368EA8 | 7C 08 02 A6 */	mflr r0
/* 81368EAC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81368EB0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81368EB4 | DB E1 00 48 */	stfd f31, 0x48(r1)
/* 81368EB8 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 81368EBC | 48 29 05 F5 */	bl _savegpr_23
/* 81368EC0 | FF C0 08 90 */	fmr f30, f1
/* 81368EC4 | 7C 77 1B 78 */	mr r23, r3
/* 81368EC8 | FF E0 10 90 */	fmr f31, f2
/* 81368ECC | 7C 98 23 78 */	mr r24, r4
/* 81368ED0 | 7C B9 2B 78 */	mr r25, r5
/* 81368ED4 | 7C DA 33 78 */	mr r26, r6
/* 81368ED8 | 7C FB 3B 78 */	mr r27, r7
/* 81368EDC | 7D 1C 43 78 */	mr r28, r8
/* 81368EE0 | 3B E0 00 00 */	li r31, 0x0
/* 81368EE4 | 3B C0 00 00 */	li r30, 0x0
/* 81368EE8 | 38 80 00 00 */	li r4, 0x0
/* 81368EEC | 38 63 00 08 */	addi r3, r3, 0x8
/* 81368EF0 | 48 1A 93 ED */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81368EF4 | 7C 7D 1B 78 */	mr r29, r3
/* 81368EF8 | 48 00 00 70 */	b .L_81368F68
.L_81368EFC:
/* 81368EFC | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81368F00 | FC 20 F0 90 */	fmr f1, f30
/* 81368F04 | FC 40 F8 90 */	fmr f2, f31
/* 81368F08 | 7F 04 C3 78 */	mr r4, r24
/* 81368F0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81368F10 | 7F 25 CB 78 */	mr r5, r25
/* 81368F14 | 7F 46 D3 78 */	mr r6, r26
/* 81368F18 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81368F1C | 7F 67 DB 78 */	mr r7, r27
/* 81368F20 | 7F 88 E3 78 */	mr r8, r28
/* 81368F24 | 7D 89 03 A6 */	mtctr r12
/* 81368F28 | 4E 80 04 21 */	bctrl
/* 81368F2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368F30 | 41 82 00 28 */	beq .L_81368F58
/* 81368F34 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81368F38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81368F3C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81368F40 | 7D 89 03 A6 */	mtctr r12
/* 81368F44 | 4E 80 04 21 */	bctrl
/* 81368F48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368F4C | 41 82 00 08 */	beq .L_81368F54
/* 81368F50 | 83 DD 00 04 */	lwz r30, 0x4(r29)
.L_81368F54:
/* 81368F54 | 3B E0 00 01 */	li r31, 0x1
.L_81368F58:
/* 81368F58 | 7F A4 EB 78 */	mr r4, r29
/* 81368F5C | 38 77 00 08 */	addi r3, r23, 0x8
/* 81368F60 | 48 1A 93 7D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81368F64 | 7C 7D 1B 78 */	mr r29, r3
.L_81368F68:
/* 81368F68 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81368F6C | 40 82 FF 90 */	bne .L_81368EFC
/* 81368F70 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81368F74 | 41 82 00 BC */	beq .L_81369030
/* 81368F78 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81368F7C | 41 82 00 74 */	beq .L_81368FF0
/* 81368F80 | 38 00 00 00 */	li r0, 0x0
/* 81368F84 | 7F C3 F3 78 */	mr r3, r30
/* 81368F88 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81368F8C | 7F 04 C3 78 */	mr r4, r24
/* 81368F90 | 7F 25 CB 78 */	mr r5, r25
/* 81368F94 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81368F98 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81368F9C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81368FA0 | D3 C1 00 08 */	stfs f30, 0x8(r1)
/* 81368FA4 | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81368FA8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81368FAC | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81368FB0 | 7D 89 03 A6 */	mtctr r12
/* 81368FB4 | 4E 80 04 21 */	bctrl
/* 81368FB8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81368FBC | 7F C3 F3 78 */	mr r3, r30
/* 81368FC0 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81368FC4 | 7D 89 03 A6 */	mtctr r12
/* 81368FC8 | 4E 80 04 21 */	bctrl
/* 81368FCC | 81 97 00 00 */	lwz r12, 0x0(r23)
/* 81368FD0 | 7C 64 1B 78 */	mr r4, r3
/* 81368FD4 | 7E E3 BB 78 */	mr r3, r23
/* 81368FD8 | 7F 06 C3 78 */	mr r6, r24
/* 81368FDC | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81368FE0 | 7F 87 E3 78 */	mr r7, r28
/* 81368FE4 | 38 A0 00 00 */	li r5, 0x0
/* 81368FE8 | 7D 89 03 A6 */	mtctr r12
/* 81368FEC | 4E 80 04 21 */	bctrl
.L_81368FF0:
/* 81368FF0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81368FF4 | 41 82 00 3C */	beq .L_81369030
/* 81368FF8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81368FFC | 7F C3 F3 78 */	mr r3, r30
/* 81369000 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81369004 | 7D 89 03 A6 */	mtctr r12
/* 81369008 | 4E 80 04 21 */	bctrl
/* 8136900C | 81 97 00 00 */	lwz r12, 0x0(r23)
/* 81369010 | 7C 64 1B 78 */	mr r4, r3
/* 81369014 | 7E E3 BB 78 */	mr r3, r23
/* 81369018 | 7F 06 C3 78 */	mr r6, r24
/* 8136901C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81369020 | 7F 87 E3 78 */	mr r7, r28
/* 81369024 | 38 A0 00 05 */	li r5, 0x5
/* 81369028 | 7D 89 03 A6 */	mtctr r12
/* 8136902C | 4E 80 04 21 */	bctrl
.L_81369030:
/* 81369030 | CB E1 00 48 */	lfd f31, 0x48(r1)
/* 81369034 | 7F E3 FB 78 */	mr r3, r31
/* 81369038 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8136903C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81369040 | 48 29 04 BD */	bl _restgpr_23
/* 81369044 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81369048 | 7C 08 03 A6 */	mtlr r0
/* 8136904C | 38 21 00 50 */	addi r1, r1, 0x50
/* 81369050 | 4E 80 00 20 */	blr
.endfn update__Q23gui7ManagerFiffUlUlUlPv

# .text:0x73C | 0x81369054 | size: 0x8
# gui::Component::isTriggerTarger()
.fn isTriggerTarger__Q23gui9ComponentFv, global
/* 81369054 | 88 63 00 7C */	lbz r3, 0x7c(r3)
/* 81369058 | 4E 80 00 20 */	blr
.endfn isTriggerTarger__Q23gui9ComponentFv

# .text:0x744 | 0x8136905C | size: 0x4C
# gui::Component::onTrig(int, unsigned long, Vec&)
.fn onTrig__Q23gui9ComponentFiUlR3Vec, global
/* 8136905C | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 81369060 | 7C A0 00 39 */	and. r0, r5, r0
/* 81369064 | 4D 82 00 20 */	beqlr
/* 81369068 | 1C E4 00 0C */	mulli r7, r4, 0xc
/* 8136906C | 54 80 08 3C */	slwi r0, r4, 1
/* 81369070 | C0 06 00 00 */	lfs f0, 0x0(r6)
/* 81369074 | 7C 83 22 14 */	add r4, r3, r4
/* 81369078 | 38 A0 00 01 */	li r5, 0x1
/* 8136907C | 7C E3 3A 14 */	add r7, r3, r7
/* 81369080 | D0 07 00 14 */	stfs f0, 0x14(r7)
/* 81369084 | 7C 63 02 14 */	add r3, r3, r0
/* 81369088 | 38 00 00 00 */	li r0, 0x0
/* 8136908C | C0 06 00 04 */	lfs f0, 0x4(r6)
/* 81369090 | D0 07 00 18 */	stfs f0, 0x18(r7)
/* 81369094 | C0 06 00 08 */	lfs f0, 0x8(r6)
/* 81369098 | D0 07 00 1C */	stfs f0, 0x1c(r7)
/* 8136909C | 98 A4 00 0C */	stb r5, 0xc(r4)
/* 813690A0 | B0 03 00 84 */	sth r0, 0x84(r3)
/* 813690A4 | 4E 80 00 20 */	blr
.endfn onTrig__Q23gui9ComponentFiUlR3Vec

# .text:0x790 | 0x813690A8 | size: 0x68
# gui::Manager::calc()
.fn calc__Q23gui7ManagerFv, global
/* 813690A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813690AC | 7C 08 02 A6 */	mflr r0
/* 813690B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813690B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813690B8 | 3B E0 00 00 */	li r31, 0x0
/* 813690BC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813690C0 | 7C 7E 1B 78 */	mr r30, r3
/* 813690C4 | 48 00 00 28 */	b .L_813690EC
.L_813690C8:
/* 813690C8 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 813690CC | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 813690D0 | 48 1A 92 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813690D4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813690D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813690DC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813690E0 | 7D 89 03 A6 */	mtctr r12
/* 813690E4 | 4E 80 04 21 */	bctrl
/* 813690E8 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813690EC:
/* 813690EC | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 813690F0 | 7C 1F 00 40 */	cmplw r31, r0
/* 813690F4 | 41 80 FF D4 */	blt .L_813690C8
/* 813690F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813690FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369100 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81369104 | 7C 08 03 A6 */	mtlr r0
/* 81369108 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136910C | 4E 80 00 20 */	blr
.endfn calc__Q23gui7ManagerFv

# .text:0x7F8 | 0x81369110 | size: 0x68
# gui::Manager::draw()
.fn draw__Q23gui7ManagerFv, global
/* 81369110 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369114 | 7C 08 02 A6 */	mflr r0
/* 81369118 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136911C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369120 | 3B E0 00 00 */	li r31, 0x0
/* 81369124 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81369128 | 7C 7E 1B 78 */	mr r30, r3
/* 8136912C | 48 00 00 28 */	b .L_81369154
.L_81369130:
/* 81369130 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 81369134 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81369138 | 48 1A 91 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8136913C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81369140 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369144 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81369148 | 7D 89 03 A6 */	mtctr r12
/* 8136914C | 4E 80 04 21 */	bctrl
/* 81369150 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81369154:
/* 81369154 | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 81369158 | 7C 1F 00 40 */	cmplw r31, r0
/* 8136915C | 41 80 FF D4 */	blt .L_81369130
/* 81369160 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369164 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369168 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136916C | 7C 08 03 A6 */	mtlr r0
/* 81369170 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81369174 | 4E 80 00 20 */	blr
.endfn draw__Q23gui7ManagerFv

# .text:0x860 | 0x81369178 | size: 0x70
# gui::Manager::setAllComponentTriggerTarget(bool)
.fn setAllComponentTriggerTarget__Q23gui7ManagerFb, global
/* 81369178 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136917C | 7C 08 02 A6 */	mflr r0
/* 81369180 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81369184 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369188 | 48 29 03 41 */	bl _savegpr_29
/* 8136918C | 7C 7D 1B 78 */	mr r29, r3
/* 81369190 | 7C 9E 23 78 */	mr r30, r4
/* 81369194 | 3B E0 00 00 */	li r31, 0x0
/* 81369198 | 48 00 00 2C */	b .L_813691C4
.L_8136919C:
/* 8136919C | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813691A0 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 813691A4 | 48 1A 91 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813691A8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813691AC | 7F C4 F3 78 */	mr r4, r30
/* 813691B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813691B4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813691B8 | 7D 89 03 A6 */	mtctr r12
/* 813691BC | 4E 80 04 21 */	bctrl
/* 813691C0 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813691C4:
/* 813691C4 | A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 813691C8 | 7C 1F 00 40 */	cmplw r31, r0
/* 813691CC | 41 80 FF D0 */	blt .L_8136919C
/* 813691D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813691D4 | 48 29 03 41 */	bl _restgpr_29
/* 813691D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813691DC | 7C 08 03 A6 */	mtlr r0
/* 813691E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813691E4 | 4E 80 00 20 */	blr
.endfn setAllComponentTriggerTarget__Q23gui7ManagerFb

# .text:0x8D0 | 0x813691E8 | size: 0x8
# gui::Component::setTriggerTarget(bool)
.fn setTriggerTarget__Q23gui9ComponentFb, global
/* 813691E8 | 98 83 00 7C */	stb r4, 0x7c(r3)
/* 813691EC | 4E 80 00 20 */	blr
.endfn setTriggerTarget__Q23gui9ComponentFb

# .text:0x8D8 | 0x813691F0 | size: 0x70
# gui::Manager::setDraggingButton(unsigned long)
.fn setDraggingButton__Q23gui7ManagerFUl, global
/* 813691F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813691F4 | 7C 08 02 A6 */	mflr r0
/* 813691F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813691FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369200 | 48 29 02 C9 */	bl _savegpr_29
/* 81369204 | 7C 7D 1B 78 */	mr r29, r3
/* 81369208 | 7C 9E 23 78 */	mr r30, r4
/* 8136920C | 3B E0 00 00 */	li r31, 0x0
/* 81369210 | 48 00 00 2C */	b .L_8136923C
.L_81369214:
/* 81369214 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81369218 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8136921C | 48 1A 90 FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81369220 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81369224 | 7F C4 F3 78 */	mr r4, r30
/* 81369228 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136922C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81369230 | 7D 89 03 A6 */	mtctr r12
/* 81369234 | 4E 80 04 21 */	bctrl
/* 81369238 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8136923C:
/* 8136923C | A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 81369240 | 7C 1F 00 40 */	cmplw r31, r0
/* 81369244 | 41 80 FF D0 */	blt .L_81369214
/* 81369248 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136924C | 48 29 02 C9 */	bl _restgpr_29
/* 81369250 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369254 | 7C 08 03 A6 */	mtlr r0
/* 81369258 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136925C | 4E 80 00 20 */	blr
.endfn setDraggingButton__Q23gui7ManagerFUl

# .text:0x948 | 0x81369260 | size: 0x8
# gui::Component::setDraggingButton(unsigned long)
.fn setDraggingButton__Q23gui9ComponentFUl, global
/* 81369260 | 90 83 00 74 */	stw r4, 0x74(r3)
/* 81369264 | 4E 80 00 20 */	blr
.endfn setDraggingButton__Q23gui9ComponentFUl

# .text:0x950 | 0x81369268 | size: 0xEC
# gui::PaneManager::~PaneManager()
.fn __dt__Q23gui11PaneManagerFv, global
/* 81369268 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136926C | 7C 08 02 A6 */	mflr r0
/* 81369270 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81369274 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369278 | 48 29 02 51 */	bl _savegpr_29
/* 8136927C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369280 | 7C 7D 1B 78 */	mr r29, r3
/* 81369284 | 7C 9E 23 78 */	mr r30, r4
/* 81369288 | 41 82 00 B0 */	beq .L_81369338
/* 8136928C | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 81369290 | 38 80 00 00 */	li r4, 0x0
/* 81369294 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 81369298 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 8136929C | 38 63 00 18 */	addi r3, r3, 0x18
/* 813692A0 | 48 1A 90 3D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813692A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813692A8 | 48 00 00 6C */	b .L_81369314
.L_813692AC:
/* 813692AC | 7F E4 FB 78 */	mr r4, r31
/* 813692B0 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813692B4 | 48 1A 8F BD */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813692B8 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 813692BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813692C0 | 41 82 00 1C */	beq .L_813692DC
/* 813692C4 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 813692C8 | 48 1F 23 B1 */	bl fn_8155B678
/* 813692CC | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 813692D0 | 7F E4 FB 78 */	mr r4, r31
/* 813692D4 | 48 1F 23 A5 */	bl fn_8155B678
/* 813692D8 | 48 00 00 2C */	b .L_81369304
.L_813692DC:
/* 813692DC | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813692E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813692E4 | 41 82 00 18 */	beq .L_813692FC
/* 813692E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813692EC | 38 80 00 01 */	li r4, 0x1
/* 813692F0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813692F4 | 7D 89 03 A6 */	mtctr r12
/* 813692F8 | 4E 80 04 21 */	bctrl
.L_813692FC:
/* 813692FC | 7F E3 FB 78 */	mr r3, r31
/* 81369300 | 48 28 ED E5 */	bl __dl__FPv
.L_81369304:
/* 81369304 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 81369308 | 38 80 00 00 */	li r4, 0x0
/* 8136930C | 48 1A 8F D1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81369310 | 7C 7F 1B 78 */	mr r31, r3
.L_81369314:
/* 81369314 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81369318 | 40 82 FF 94 */	bne .L_813692AC
/* 8136931C | 7F A3 EB 78 */	mr r3, r29
/* 81369320 | 38 80 00 00 */	li r4, 0x0
/* 81369324 | 4B FF F9 21 */	bl __dt__Q23gui7ManagerFv
/* 81369328 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8136932C | 40 81 00 0C */	ble .L_81369338
/* 81369330 | 7F A3 EB 78 */	mr r3, r29
/* 81369334 | 48 28 ED B1 */	bl __dl__FPv
.L_81369338:
/* 81369338 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136933C | 7F A3 EB 78 */	mr r3, r29
/* 81369340 | 48 29 01 D5 */	bl _restgpr_29
/* 81369344 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369348 | 7C 08 03 A6 */	mtlr r0
/* 8136934C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81369350 | 4E 80 00 20 */	blr
.endfn __dt__Q23gui11PaneManagerFv

# .text:0xA3C | 0x81369354 | size: 0x40
# gui::PaneComponent::~PaneComponent()
.fn __dt__Q23gui13PaneComponentFv, global
/* 81369354 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369358 | 7C 08 02 A6 */	mflr r0
/* 8136935C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369360 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81369364 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81369368 | 7C 7F 1B 78 */	mr r31, r3
/* 8136936C | 41 82 00 10 */	beq .L_8136937C
/* 81369370 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81369374 | 40 81 00 08 */	ble .L_8136937C
/* 81369378 | 48 28 ED 6D */	bl __dl__FPv
.L_8136937C:
/* 8136937C | 7F E3 FB 78 */	mr r3, r31
/* 81369380 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81369384 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369388 | 7C 08 03 A6 */	mtlr r0
/* 8136938C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81369390 | 4E 80 00 20 */	blr
.endfn __dt__Q23gui13PaneComponentFv

# .text:0xA7C | 0x81369394 | size: 0x40
# gui::Component::~Component()
.fn __dt__Q23gui9ComponentFv, global
/* 81369394 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81369398 | 7C 08 02 A6 */	mflr r0
/* 8136939C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813693A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813693A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813693A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813693AC | 41 82 00 10 */	beq .L_813693BC
/* 813693B0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813693B4 | 40 81 00 08 */	ble .L_813693BC
/* 813693B8 | 48 28 ED 2D */	bl __dl__FPv
.L_813693BC:
/* 813693BC | 7F E3 FB 78 */	mr r3, r31
/* 813693C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813693C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813693C8 | 7C 08 03 A6 */	mtlr r0
/* 813693CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813693D0 | 4E 80 00 20 */	blr
.endfn __dt__Q23gui9ComponentFv

# .text:0xABC | 0x813693D4 | size: 0x20
# gui::PaneManager::createLayoutScene(const nw4r::lyt::Layout&)
.fn createLayoutScene__Q23gui11PaneManagerFRCQ34nw4r3lyt6Layout, global
/* 813693D4 | 38 00 00 00 */	li r0, 0x0
/* 813693D8 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 813693DC | 90 0D A7 40 */	stw r0, lbl_81698780@sda21(r0)
/* 813693E0 | 38 84 00 10 */	addi r4, r4, 0x10
/* 813693E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813693E8 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813693EC | 7D 89 03 A6 */	mtctr r12
/* 813693F0 | 4E 80 04 20 */	bctr
.endfn createLayoutScene__Q23gui11PaneManagerFRCQ34nw4r3lyt6Layout

# .text:0xADC | 0x813693F4 | size: 0x1E4
# gui::PaneManager::walkInChildren(nw4r::ut::LinkList<nw4r::lyt::Pane, 4>&)
.fn "walkInChildren__Q23gui11PaneManagerFRQ34nw4r2ut28LinkList<Q34nw4r3lyt4Pane,4>", global
/* 813693F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813693F8 | 7C 08 02 A6 */	mflr r0
/* 813693FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81369400 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369404 | 48 29 00 BD */	bl _savegpr_27
/* 81369408 | 83 E4 00 04 */	lwz r31, 0x4(r4)
/* 8136940C | 7C 7B 1B 78 */	mr r27, r3
/* 81369410 | 3B C4 00 04 */	addi r30, r4, 0x4
/* 81369414 | 48 00 01 A4 */	b .L_813695B8
.L_81369418:
/* 81369418 | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8136941C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369420 | 41 82 00 50 */	beq .L_81369470
/* 81369424 | 38 80 00 98 */	li r4, 0x98
/* 81369428 | 48 1F 22 41 */	bl fn_8155B668
/* 8136942C | 7C 7C 1B 78 */	mr r28, r3
/* 81369430 | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 81369434 | 38 80 00 10 */	li r4, 0x10
/* 81369438 | 48 1F 22 31 */	bl fn_8155B668
/* 8136943C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81369440 | 7C 7D 1B 78 */	mr r29, r3
/* 81369444 | 41 82 00 14 */	beq .L_81369458
/* 81369448 | 80 8D A7 40 */	lwz r4, lbl_81698780@sda21(r0)
/* 8136944C | 7F 83 E3 78 */	mr r3, r28
/* 81369450 | 48 00 01 89 */	bl __ct__Q23gui13PaneComponentFUl
/* 81369454 | 7C 7C 1B 78 */	mr r28, r3
.L_81369458:
/* 81369458 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8136945C | 41 82 00 54 */	beq .L_813694B0
/* 81369460 | 38 1F FF FC */	subi r0, r31, 0x4
/* 81369464 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 81369468 | 93 9D 00 04 */	stw r28, 0x4(r29)
/* 8136946C | 48 00 00 44 */	b .L_813694B0
.L_81369470:
/* 81369470 | 38 60 00 98 */	li r3, 0x98
/* 81369474 | 48 28 EC 29 */	bl __nw__FUl
/* 81369478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136947C | 7C 7C 1B 78 */	mr r28, r3
/* 81369480 | 41 82 00 10 */	beq .L_81369490
/* 81369484 | 80 8D A7 40 */	lwz r4, lbl_81698780@sda21(r0)
/* 81369488 | 48 00 01 51 */	bl __ct__Q23gui13PaneComponentFUl
/* 8136948C | 7C 7C 1B 78 */	mr r28, r3
.L_81369490:
/* 81369490 | 38 60 00 10 */	li r3, 0x10
/* 81369494 | 48 28 EC 09 */	bl __nw__FUl
/* 81369498 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136949C | 41 82 00 10 */	beq .L_813694AC
/* 813694A0 | 38 1F FF FC */	subi r0, r31, 0x4
/* 813694A4 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813694A8 | 93 83 00 04 */	stw r28, 0x4(r3)
.L_813694AC:
/* 813694AC | 7C 7D 1B 78 */	mr r29, r3
.L_813694B0:
/* 813694B0 | 7F A4 EB 78 */	mr r4, r29
/* 813694B4 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 813694B8 | 48 1A 8B BD */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813694BC | 80 8D A7 40 */	lwz r4, lbl_81698780@sda21(r0)
/* 813694C0 | 3B BF FF FC */	subi r29, r31, 0x4
/* 813694C4 | 7F 83 E3 78 */	mr r3, r28
/* 813694C8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813694CC | 7F A4 EB 78 */	mr r4, r29
/* 813694D0 | 90 0D A7 40 */	stw r0, lbl_81698780@sda21(r0)
/* 813694D4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813694D8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813694DC | 7D 89 03 A6 */	mtctr r12
/* 813694E0 | 4E 80 04 21 */	bctrl
/* 813694E4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813694E8 | 7F A3 EB 78 */	mr r3, r29
/* 813694EC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813694F0 | 7D 89 03 A6 */	mtctr r12
/* 813694F4 | 4E 80 04 21 */	bctrl
/* 813694F8 | 38 8D AF 70 */	li r4, lbl_81698FB0@sda21
/* 813694FC | 48 00 01 5D */	bl IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo
/* 81369500 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369504 | 41 82 00 0C */	beq .L_81369510
/* 81369508 | 7F A0 EB 78 */	mr r0, r29
/* 8136950C | 48 00 00 08 */	b .L_81369514
.L_81369510:
/* 81369510 | 38 00 00 00 */	li r0, 0x0
.L_81369514:
/* 81369514 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81369518 | 41 82 00 1C */	beq .L_81369534
/* 8136951C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81369520 | 7F 83 E3 78 */	mr r3, r28
/* 81369524 | 38 80 00 01 */	li r4, 0x1
/* 81369528 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8136952C | 7D 89 03 A6 */	mtctr r12
/* 81369530 | 4E 80 04 21 */	bctrl
.L_81369534:
/* 81369534 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81369538 | 7F A3 EB 78 */	mr r3, r29
/* 8136953C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81369540 | 7D 89 03 A6 */	mtctr r12
/* 81369544 | 4E 80 04 21 */	bctrl
/* 81369548 | 38 8D AF 80 */	li r4, lbl_81698FC0@sda21
/* 8136954C | 48 00 01 0D */	bl IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo
/* 81369550 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369554 | 41 82 00 0C */	beq .L_81369560
/* 81369558 | 7F A0 EB 78 */	mr r0, r29
/* 8136955C | 48 00 00 08 */	b .L_81369564
.L_81369560:
/* 81369560 | 38 00 00 00 */	li r0, 0x0
.L_81369564:
/* 81369564 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81369568 | 41 82 00 1C */	beq .L_81369584
/* 8136956C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81369570 | 7F 83 E3 78 */	mr r3, r28
/* 81369574 | 38 80 00 01 */	li r4, 0x1
/* 81369578 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8136957C | 7D 89 03 A6 */	mtctr r12
/* 81369580 | 4E 80 04 21 */	bctrl
.L_81369584:
/* 81369584 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81369588 | 7F 63 DB 78 */	mr r3, r27
/* 8136958C | 7F 84 E3 78 */	mr r4, r28
/* 81369590 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81369594 | 7D 89 03 A6 */	mtctr r12
/* 81369598 | 4E 80 04 21 */	bctrl
/* 8136959C | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813695A0 | 7F 63 DB 78 */	mr r3, r27
/* 813695A4 | 38 9D 00 10 */	addi r4, r29, 0x10
/* 813695A8 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813695AC | 7D 89 03 A6 */	mtctr r12
/* 813695B0 | 4E 80 04 21 */	bctrl
/* 813695B4 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_813695B8:
/* 813695B8 | 7C 1F F0 40 */	cmplw r31, r30
/* 813695BC | 40 82 FE 5C */	bne .L_81369418
/* 813695C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813695C4 | 48 28 FF 49 */	bl _restgpr_27
/* 813695C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813695CC | 7C 08 03 A6 */	mtlr r0
/* 813695D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813695D4 | 4E 80 00 20 */	blr
.endfn "walkInChildren__Q23gui11PaneManagerFRQ34nw4r2ut28LinkList<Q34nw4r3lyt4Pane,4>"

# .text:0xCC0 | 0x813695D8 | size: 0x78
# gui::PaneComponent::PaneComponent(unsigned long)
.fn __ct__Q23gui13PaneComponentFUl, global
/* 813695D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813695DC | 7C 08 02 A6 */	mflr r0
/* 813695E0 | 3D 80 81 64 */	lis r12, __vt__Q23gui9Component@ha
/* 813695E4 | 3C A0 00 01 */	lis r5, 0x1
/* 813695E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813695EC | 39 8C 28 24 */	addi r12, r12, __vt__Q23gui9Component@l
/* 813695F0 | 38 05 FF FF */	subi r0, r5, 0x1
/* 813695F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813695F8 | 3B E0 00 00 */	li r31, 0x0
/* 813695FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81369600 | 7C 7E 1B 78 */	mr r30, r3
/* 81369604 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 81369608 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 8136960C | 90 83 00 78 */	stw r4, 0x78(r3)
/* 81369610 | 9B E3 00 7C */	stb r31, 0x7c(r3)
/* 81369614 | 93 E3 00 80 */	stw r31, 0x80(r3)
/* 81369618 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136961C | 7D 89 03 A6 */	mtctr r12
/* 81369620 | 4E 80 04 21 */	bctrl
/* 81369624 | 3C 60 81 64 */	lis r3, __vt__Q23gui13PaneComponent@ha
/* 81369628 | 93 FE 00 94 */	stw r31, 0x94(r30)
/* 8136962C | 38 63 27 10 */	addi r3, r3, __vt__Q23gui13PaneComponent@l
/* 81369630 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 81369634 | 7F C3 F3 78 */	mr r3, r30
/* 81369638 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136963C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81369640 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81369644 | 7C 08 03 A6 */	mtlr r0
/* 81369648 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136964C | 4E 80 00 20 */	blr
.endfn __ct__Q23gui13PaneComponentFUl

# .text:0xD38 | 0x81369650 | size: 0x8
# gui::PaneComponent::setPane(nw4r::lyt::Pane*)
.fn setPane__Q23gui13PaneComponentFPQ34nw4r3lyt4Pane, global
/* 81369650 | 90 83 00 94 */	stw r4, 0x94(r3)
/* 81369654 | 4E 80 00 20 */	blr
.endfn setPane__Q23gui13PaneComponentFPQ34nw4r3lyt4Pane

# .text:0xD40 | 0x81369658 | size: 0x28
# nw4r::ut::detail::RuntimeTypeInfo::IsDerivedFrom(const nw4r::ut::detail::RuntimeTypeInfo*) const
.fn IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo, global
/* 81369658 | 48 00 00 18 */	b .L_81369670
.L_8136965C:
/* 8136965C | 7C 03 20 40 */	cmplw r3, r4
/* 81369660 | 40 82 00 0C */	bne .L_8136966C
/* 81369664 | 38 60 00 01 */	li r3, 0x1
/* 81369668 | 4E 80 00 20 */	blr
.L_8136966C:
/* 8136966C | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81369670:
/* 81369670 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369674 | 40 82 FF E8 */	bne .L_8136965C
/* 81369678 | 38 60 00 00 */	li r3, 0x0
/* 8136967C | 4E 80 00 20 */	blr
.endfn IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo

# .text:0xD68 | 0x81369680 | size: 0x70
# gui::PaneManager::getPaneComponentByPane(nw4r::lyt::Pane*)
.fn getPaneComponentByPane__Q23gui11PaneManagerFPQ34nw4r3lyt4Pane, global
/* 81369680 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81369684 | 7C 08 02 A6 */	mflr r0
/* 81369688 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136968C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369690 | 48 28 FE 39 */	bl _savegpr_29
/* 81369694 | 7C 7D 1B 78 */	mr r29, r3
/* 81369698 | 7C 9E 23 78 */	mr r30, r4
/* 8136969C | 3B E0 00 00 */	li r31, 0x0
/* 813696A0 | 48 00 00 28 */	b .L_813696C8
.L_813696A4:
/* 813696A4 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813696A8 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 813696AC | 48 1A 8C 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813696B0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813696B4 | 7C 00 F0 40 */	cmplw r0, r30
/* 813696B8 | 40 82 00 0C */	bne .L_813696C4
/* 813696BC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813696C0 | 48 00 00 18 */	b .L_813696D8
.L_813696C4:
/* 813696C4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813696C8:
/* 813696C8 | A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 813696CC | 7C 1F 00 40 */	cmplw r31, r0
/* 813696D0 | 41 80 FF D4 */	blt .L_813696A4
/* 813696D4 | 38 60 00 00 */	li r3, 0x0
.L_813696D8:
/* 813696D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813696DC | 48 28 FE 39 */	bl _restgpr_29
/* 813696E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813696E4 | 7C 08 03 A6 */	mtlr r0
/* 813696E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813696EC | 4E 80 00 20 */	blr
.endfn getPaneComponentByPane__Q23gui11PaneManagerFPQ34nw4r3lyt4Pane

# .text:0xDD8 | 0x813696F0 | size: 0xAC
# gui::PaneManager::setAllBoundingBoxComponentTriggerTarget(bool)
.fn setAllBoundingBoxComponentTriggerTarget__Q23gui11PaneManagerFb, global
/* 813696F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813696F4 | 7C 08 02 A6 */	mflr r0
/* 813696F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813696FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369700 | 48 28 FD C1 */	bl _savegpr_27
/* 81369704 | 7C 7B 1B 78 */	mr r27, r3
/* 81369708 | 7C 9C 23 78 */	mr r28, r4
/* 8136970C | 3B A0 00 00 */	li r29, 0x0
/* 81369710 | 48 00 00 68 */	b .L_81369778
.L_81369714:
/* 81369714 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 81369718 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 8136971C | 48 1A 8B FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81369720 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 81369724 | 7C 7F 1B 78 */	mr r31, r3
/* 81369728 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8136972C | 7F C3 F3 78 */	mr r3, r30
/* 81369730 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81369734 | 7D 89 03 A6 */	mtctr r12
/* 81369738 | 4E 80 04 21 */	bctrl
/* 8136973C | 38 8D AF 88 */	li r4, lbl_81698FC8@sda21
/* 81369740 | 4B FF FF 19 */	bl IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo
/* 81369744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369748 | 41 82 00 08 */	beq .L_81369750
/* 8136974C | 48 00 00 08 */	b .L_81369754
.L_81369750:
/* 81369750 | 3B C0 00 00 */	li r30, 0x0
.L_81369754:
/* 81369754 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81369758 | 41 82 00 1C */	beq .L_81369774
/* 8136975C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81369760 | 7F 84 E3 78 */	mr r4, r28
/* 81369764 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81369768 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8136976C | 7D 89 03 A6 */	mtctr r12
/* 81369770 | 4E 80 04 21 */	bctrl
.L_81369774:
/* 81369774 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81369778:
/* 81369778 | A0 1B 00 10 */	lhz r0, 0x10(r27)
/* 8136977C | 7C 1D 00 40 */	cmplw r29, r0
/* 81369780 | 41 80 FF 94 */	blt .L_81369714
/* 81369784 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81369788 | 48 28 FD 85 */	bl _restgpr_27
/* 8136978C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81369790 | 7C 08 03 A6 */	mtlr r0
/* 81369794 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81369798 | 4E 80 00 20 */	blr
.endfn setAllBoundingBoxComponentTriggerTarget__Q23gui11PaneManagerFb

# .text:0xE84 | 0x8136979C | size: 0x128
# gui::PaneComponent::contain(float, float)
.fn contain__Q23gui13PaneComponentFff, global
/* 8136979C | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813697A0 | 7C 08 02 A6 */	mflr r0
/* 813697A4 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813697A8 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 813697AC | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 813697B0 | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 813697B4 | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 813697B8 | FF C0 08 90 */	fmr f30, f1
/* 813697BC | FF E0 10 90 */	fmr f31, f2
/* 813697C0 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 813697C4 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 813697C8 | 7C 7E 1B 78 */	mr r30, r3
/* 813697CC | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 813697D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813697D4 | 40 82 00 0C */	bne .L_813697E0
/* 813697D8 | 38 60 00 00 */	li r3, 0x0
/* 813697DC | 48 00 00 C0 */	b .L_8136989C
.L_813697E0:
/* 813697E0 | 7C 03 03 78 */	mr r3, r0
/* 813697E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813697E8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813697EC | 7D 89 03 A6 */	mtctr r12
/* 813697F0 | 4E 80 04 21 */	bctrl
/* 813697F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813697F8 | 7C 7F 1B 78 */	mr r31, r3
/* 813697FC | 40 82 00 0C */	bne .L_81369808
/* 81369800 | 38 60 00 00 */	li r3, 0x0
/* 81369804 | 48 00 00 98 */	b .L_8136989C
.L_81369808:
/* 81369808 | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 8136980C | 38 81 00 30 */	addi r4, r1, 0x30
/* 81369810 | 38 63 00 84 */	addi r3, r3, 0x84
/* 81369814 | 48 1D 77 49 */	bl fn_81540F5C
/* 81369818 | C0 02 82 78 */	lfs f0, lbl_81694678@sda21(r0)
/* 8136981C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81369820 | D3 C1 00 08 */	stfs f30, 0x8(r1)
/* 81369824 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81369828 | 38 A1 00 24 */	addi r5, r1, 0x24
/* 8136982C | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81369830 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81369834 | 48 1D 7C 89 */	bl fn_815414BC
/* 81369838 | 80 9E 00 94 */	lwz r4, 0x94(r30)
/* 8136983C | 7F E5 FB 78 */	mr r5, r31
/* 81369840 | 38 61 00 14 */	addi r3, r1, 0x14
/* 81369844 | 48 1B 56 21 */	bl fn_8151EE64
/* 81369848 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8136984C | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 81369850 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81369854 | 4C 40 13 82 */	cror eq, lt, eq
/* 81369858 | 40 82 00 40 */	bne .L_81369898
/* 8136985C | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81369860 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81369864 | 4C 40 13 82 */	cror eq, lt, eq
/* 81369868 | 40 82 00 30 */	bne .L_81369898
/* 8136986C | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 81369870 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 81369874 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81369878 | 4C 40 13 82 */	cror eq, lt, eq
/* 8136987C | 40 82 00 1C */	bne .L_81369898
/* 81369880 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 81369884 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81369888 | 4C 40 13 82 */	cror eq, lt, eq
/* 8136988C | 40 82 00 0C */	bne .L_81369898
/* 81369890 | 38 60 00 01 */	li r3, 0x1
/* 81369894 | 48 00 00 08 */	b .L_8136989C
.L_81369898:
/* 81369898 | 38 60 00 00 */	li r3, 0x0
.L_8136989C:
/* 8136989C | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 813698A0 | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 813698A4 | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 813698A8 | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 813698AC | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 813698B0 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813698B4 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 813698B8 | 7C 08 03 A6 */	mtlr r0
/* 813698BC | 38 21 00 90 */	addi r1, r1, 0x90
/* 813698C0 | 4E 80 00 20 */	blr
.endfn contain__Q23gui13PaneComponentFff

# .text:0xFAC | 0x813698C4 | size: 0x18C
# gui::PaneComponent::draw()
.fn draw__Q23gui13PaneComponentFv, global
/* 813698C4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813698C8 | 7C 08 02 A6 */	mflr r0
/* 813698CC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813698D0 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 813698D4 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 813698D8 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 813698DC | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 813698E0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813698E4 | 7C 7F 1B 78 */	mr r31, r3
/* 813698E8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813698EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813698F0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813698F4 | 7D 89 03 A6 */	mtctr r12
/* 813698F8 | 4E 80 04 21 */	bctrl
/* 813698FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369900 | 41 82 01 2C */	beq .L_81369A2C
/* 81369904 | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 81369908 | 88 A2 82 7C */	lbz r5, lbl_8169467C@sda21(r0)
/* 8136990C | C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 81369910 | C0 03 00 50 */	lfs f0, 0x50(r3)
/* 81369914 | C3 E3 00 90 */	lfs f31, 0x90(r3)
/* 81369918 | C3 C3 00 A0 */	lfs f30, 0xa0(r3)
/* 8136991C | 88 82 82 7D */	lbz r4, lbl_8169467D@sda21(r0)
/* 81369920 | 88 62 82 7E */	lbz r3, lbl_8169467E@sda21(r0)
/* 81369924 | 88 02 82 7F */	lbz r0, lbl_8169467F@sda21(r0)
/* 81369928 | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 8136992C | 98 81 00 09 */	stb r4, 0x9(r1)
/* 81369930 | 98 61 00 0A */	stb r3, 0xa(r1)
/* 81369934 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81369938 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8136993C | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 81369940 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81369944 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81369948 | 41 82 00 14 */	beq .L_8136995C
/* 8136994C | 38 60 00 00 */	li r3, 0x0
/* 81369950 | 38 00 00 FF */	li r0, 0xff
/* 81369954 | 98 61 00 08 */	stb r3, 0x8(r1)
/* 81369958 | 98 01 00 0A */	stb r0, 0xa(r1)
.L_8136995C:
/* 8136995C | C0 22 82 80 */	lfs f1, lbl_81694680@sda21(r0)
/* 81369960 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81369964 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81369968 | 38 60 00 08 */	li r3, 0x8
/* 8136996C | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81369970 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81369974 | C0 A2 82 78 */	lfs f5, lbl_81694678@sda21(r0)
/* 81369978 | EC 62 00 72 */	fmuls f3, f2, f1
/* 8136997C | EC 5E 00 28 */	fsubs f2, f30, f0
/* 81369980 | EC 3F 18 28 */	fsubs f1, f31, f3
/* 81369984 | EC 7F 18 2A */	fadds f3, f31, f3
/* 81369988 | FC 80 10 90 */	fmr f4, f2
/* 8136998C | 4B FF ED CD */	bl iplCSFlags_81368758
/* 81369990 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 81369994 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81369998 | C0 42 82 80 */	lfs f2, lbl_81694680@sda21(r0)
/* 8136999C | 38 60 00 08 */	li r3, 0x8
/* 813699A0 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 813699A4 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 813699A8 | C0 A2 82 78 */	lfs f5, lbl_81694678@sda21(r0)
/* 813699AC | EC 00 00 B2 */	fmuls f0, f0, f2
/* 813699B0 | EC 3F 08 2A */	fadds f1, f31, f1
/* 813699B4 | EC 5E 00 28 */	fsubs f2, f30, f0
/* 813699B8 | EC 9E 00 2A */	fadds f4, f30, f0
/* 813699BC | FC 60 08 90 */	fmr f3, f1
/* 813699C0 | 4B FF ED 99 */	bl iplCSFlags_81368758
/* 813699C4 | C0 22 82 80 */	lfs f1, lbl_81694680@sda21(r0)
/* 813699C8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813699CC | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 813699D0 | 38 60 00 08 */	li r3, 0x8
/* 813699D4 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 813699D8 | EC 00 00 72 */	fmuls f0, f0, f1
/* 813699DC | C0 A2 82 78 */	lfs f5, lbl_81694678@sda21(r0)
/* 813699E0 | EC 62 00 72 */	fmuls f3, f2, f1
/* 813699E4 | EC 5E 00 2A */	fadds f2, f30, f0
/* 813699E8 | EC 3F 18 2A */	fadds f1, f31, f3
/* 813699EC | EC 7F 18 28 */	fsubs f3, f31, f3
/* 813699F0 | FC 80 10 90 */	fmr f4, f2
/* 813699F4 | 4B FF ED 65 */	bl iplCSFlags_81368758
/* 813699F8 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 813699FC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81369A00 | C0 42 82 80 */	lfs f2, lbl_81694680@sda21(r0)
/* 81369A04 | 38 60 00 08 */	li r3, 0x8
/* 81369A08 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81369A0C | EC 21 00 B2 */	fmuls f1, f1, f2
/* 81369A10 | C0 A2 82 78 */	lfs f5, lbl_81694678@sda21(r0)
/* 81369A14 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 81369A18 | EC 3F 08 28 */	fsubs f1, f31, f1
/* 81369A1C | EC 5E 00 2A */	fadds f2, f30, f0
/* 81369A20 | EC 9E 00 28 */	fsubs f4, f30, f0
/* 81369A24 | FC 60 08 90 */	fmr f3, f1
/* 81369A28 | 4B FF ED 31 */	bl iplCSFlags_81368758
.L_81369A2C:
/* 81369A2C | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81369A30 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81369A34 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 81369A38 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81369A3C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81369A40 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81369A44 | 7C 08 03 A6 */	mtlr r0
/* 81369A48 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81369A4C | 4E 80 00 20 */	blr
.endfn draw__Q23gui13PaneComponentFv

# .text:0x1138 | 0x81369A50 | size: 0x2C
.fn GuiMgr_81369A50, local
/* 81369A50 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81369A54 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 81369A58 | 40 82 00 0C */	bne .L_81369A64
/* 81369A5C | 38 60 00 00 */	li r3, 0x0
/* 81369A60 | 4E 80 00 20 */	blr
.L_81369A64:
/* 81369A64 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81369A68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81369A6C | 40 82 00 0C */	bne .L_81369A78
/* 81369A70 | 38 60 00 01 */	li r3, 0x1
/* 81369A74 | 4E 80 00 20 */	blr
.L_81369A78:
/* 81369A78 | 4B FF FF D8 */	b GuiMgr_81369A50
.endfn GuiMgr_81369A50

# .text:0x1164 | 0x81369A7C | size: 0x4
.fn GuiMgr_81369A7C, local
/* 81369A7C | 4E 80 00 20 */	blr
.endfn GuiMgr_81369A7C

# .text:0x1168 | 0x81369A80 | size: 0x8
# gui::PaneComponent::isVisible()
.fn isVisible__Q23gui13PaneComponentFv, global
/* 81369A80 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 81369A84 | 4B FF FF CC */	b GuiMgr_81369A50
.endfn isVisible__Q23gui13PaneComponentFv

# .text:0x1170 | 0x81369A88 | size: 0x10
# gui::Component::setFlightDuration(int, unsigned short)
.fn setFlightDuration__Q23gui9ComponentFiUs, global
/* 81369A88 | 54 80 08 3C */	slwi r0, r4, 1
/* 81369A8C | 7C 63 02 14 */	add r3, r3, r0
/* 81369A90 | B0 A3 00 84 */	sth r5, 0x84(r3)
/* 81369A94 | 4E 80 00 20 */	blr
.endfn setFlightDuration__Q23gui9ComponentFiUs

# .text:0x1180 | 0x81369A98 | size: 0x10
# gui::Component::getFlightDuration(int)
.fn getFlightDuration__Q23gui9ComponentFi, global
/* 81369A98 | 54 80 08 3C */	slwi r0, r4, 1
/* 81369A9C | 7C 63 02 14 */	add r3, r3, r0
/* 81369AA0 | A0 63 00 84 */	lhz r3, 0x84(r3)
/* 81369AA4 | 4E 80 00 20 */	blr
.endfn getFlightDuration__Q23gui9ComponentFi

# .text:0x1190 | 0x81369AA8 | size: 0x8
# gui::Component::update(int, const KPADStatus*, float, float, void*)
.fn update__Q23gui9ComponentFiPC10KPADStatusffPv, global
/* 81369AA8 | 38 60 00 00 */	li r3, 0x0
/* 81369AAC | 4E 80 00 20 */	blr
.endfn update__Q23gui9ComponentFiPC10KPADStatusffPv

# .text:0x1198 | 0x81369AB0 | size: 0xC
# gui::Component::isDragging(int)
.fn isDragging__Q23gui9ComponentFi, global
/* 81369AB0 | 7C 63 22 14 */	add r3, r3, r4
/* 81369AB4 | 88 63 00 0C */	lbz r3, 0xc(r3)
/* 81369AB8 | 4E 80 00 20 */	blr
.endfn isDragging__Q23gui9ComponentFi

# 0x81642710..0x81642890 | size: 0x180
.data
.balign 8

# .data:0x0 | 0x81642710 | size: 0x74
# gui::PaneComponent::__vtable
.obj __vt__Q23gui13PaneComponent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q23gui9InterfaceFv
	.4byte init__Q23gui9ComponentFv
	.4byte calc__Q23gui9InterfaceFv
	.4byte draw__Q23gui9InterfaceFRA3_A4_f
	.4byte draw__Q23gui13PaneComponentFv
	.4byte __dt__Q23gui13PaneComponentFv
	.4byte getID__Q23gui9ComponentFv
	.4byte isPointed__Q23gui9ComponentFi
	.4byte isDragging__Q23gui9ComponentFi
	.4byte setPointed__Q23gui9ComponentFib
	.4byte onPoint__Q23gui9ComponentFi
	.4byte offPoint__Q23gui9ComponentFi
	.4byte onDrag__Q23gui9ComponentFff
	.4byte onMove__Q23gui9ComponentFiff
	.4byte onTrig__Q23gui9ComponentFiUlR3Vec
	.4byte setDraggingButton__Q23gui9ComponentFUl
	.4byte update__Q23gui9ComponentFiPC10KPADStatusffPv
	.4byte update__Q23gui9ComponentFiffUlUlUlPv
	.4byte isTriggerTarger__Q23gui9ComponentFv
	.4byte setTriggerTarget__Q23gui9ComponentFb
	.4byte setManager__Q23gui9ComponentFPQ23gui7Manager
	.4byte isVisible__Q23gui13PaneComponentFv
	.4byte getFlightDuration__Q23gui9ComponentFi
	.4byte setFlightDuration__Q23gui9ComponentFiUs
	.4byte contain__Q23gui13PaneComponentFff
	.4byte setPane__Q23gui13PaneComponentFPQ34nw4r3lyt4Pane
	.4byte getPane__Q23gui13PaneComponentFv
.endobj __vt__Q23gui13PaneComponent

# .data:0x74 | 0x81642784 | size: 0x5C
# gui::PaneManager::__vtable
.obj __vt__Q23gui11PaneManager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q23gui9InterfaceFv
	.4byte init__Q23gui7ManagerFv
	.4byte calc__Q23gui7ManagerFv
	.4byte draw__Q23gui9InterfaceFRA3_A4_f
	.4byte draw__Q23gui7ManagerFv
	.4byte __dt__Q23gui11PaneManagerFv
	.4byte addComponent__Q23gui7ManagerFPQ23gui9Component
	.4byte getComponent__Q23gui7ManagerFUl
	.4byte update__Q23gui7ManagerFiPC10KPADStatusffPv
	.4byte update__Q23gui7ManagerFiffUlUlUlPv
	.4byte onEvent__Q23gui7ManagerFUlUliPv
	.4byte setAllComponentTriggerTarget__Q23gui7ManagerFb
	.4byte setEventHandler__Q23gui7ManagerFPQ23gui12EventHandler
	.4byte changeEventHandler__Q23gui7ManagerFPQ23gui12EventHandler
	.4byte setDraggingButton__Q23gui7ManagerFUl
	.4byte createLayoutScene__Q23gui11PaneManagerFRCQ34nw4r3lyt6Layout
	.4byte getPaneComponentByPane__Q23gui11PaneManagerFPQ34nw4r3lyt4Pane
	.4byte getDrawInfo__Q23gui11PaneManagerFv
	.4byte setDrawInfo__Q23gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo
	.4byte setAllBoundingBoxComponentTriggerTarget__Q23gui11PaneManagerFb
	.4byte "walkInChildren__Q23gui11PaneManagerFRQ34nw4r2ut28LinkList<Q34nw4r3lyt4Pane,4>"
.endobj __vt__Q23gui11PaneManager

# .data:0xD0 | 0x816427E0 | size: 0x44
# gui::Manager::__vtable
.obj __vt__Q23gui7Manager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q23gui9InterfaceFv
	.4byte init__Q23gui7ManagerFv
	.4byte calc__Q23gui7ManagerFv
	.4byte draw__Q23gui9InterfaceFRA3_A4_f
	.4byte draw__Q23gui7ManagerFv
	.4byte __dt__Q23gui7ManagerFv
	.4byte addComponent__Q23gui7ManagerFPQ23gui9Component
	.4byte getComponent__Q23gui7ManagerFUl
	.4byte update__Q23gui7ManagerFiPC10KPADStatusffPv
	.4byte update__Q23gui7ManagerFiffUlUlUlPv
	.4byte onEvent__Q23gui7ManagerFUlUliPv
	.4byte setAllComponentTriggerTarget__Q23gui7ManagerFb
	.4byte setEventHandler__Q23gui7ManagerFPQ23gui12EventHandler
	.4byte changeEventHandler__Q23gui7ManagerFPQ23gui12EventHandler
	.4byte setDraggingButton__Q23gui7ManagerFUl
.endobj __vt__Q23gui7Manager

# .data:0x114 | 0x81642824 | size: 0x6C
# gui::Component::__vtable
.obj __vt__Q23gui9Component, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q23gui9InterfaceFv
	.4byte init__Q23gui9ComponentFv
	.4byte calc__Q23gui9InterfaceFv
	.4byte draw__Q23gui9InterfaceFRA3_A4_f
	.4byte draw__Q23gui9InterfaceFv
	.4byte __dt__Q23gui9ComponentFv
	.4byte getID__Q23gui9ComponentFv
	.4byte isPointed__Q23gui9ComponentFi
	.4byte isDragging__Q23gui9ComponentFi
	.4byte setPointed__Q23gui9ComponentFib
	.4byte onPoint__Q23gui9ComponentFi
	.4byte offPoint__Q23gui9ComponentFi
	.4byte onDrag__Q23gui9ComponentFff
	.4byte onMove__Q23gui9ComponentFiff
	.4byte onTrig__Q23gui9ComponentFiUlR3Vec
	.4byte setDraggingButton__Q23gui9ComponentFUl
	.4byte update__Q23gui9ComponentFiPC10KPADStatusffPv
	.4byte update__Q23gui9ComponentFiffUlUlUlPv
	.4byte isTriggerTarger__Q23gui9ComponentFv
	.4byte setTriggerTarget__Q23gui9ComponentFb
	.4byte setManager__Q23gui9ComponentFPQ23gui7Manager
	.4byte isVisible__Q23gui9ComponentFv
	.4byte getFlightDuration__Q23gui9ComponentFi
	.4byte setFlightDuration__Q23gui9ComponentFiUs
	.4byte 0x00000000
.endobj __vt__Q23gui9Component

# 0x81694678..0x81694688 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694678 | size: 0x4
.obj lbl_81694678, global
	.float 0
.endobj lbl_81694678

# .sdata2:0x4 | 0x8169467C | size: 0x1
.obj lbl_8169467C, global
	.byte 0xFF
.endobj lbl_8169467C

# .sdata2:0x5 | 0x8169467D | size: 0x1
.obj lbl_8169467D, global
	.byte 0x00
.endobj lbl_8169467D

# .sdata2:0x6 | 0x8169467E | size: 0x1
.obj lbl_8169467E, global
	.byte 0x00
.endobj lbl_8169467E

# .sdata2:0x7 | 0x8169467F | size: 0x1
.obj lbl_8169467F, global
	.byte 0xFF
.endobj lbl_8169467F

# .sdata2:0x8 | 0x81694680 | size: 0x8
.obj lbl_81694680, global
	.float 0.5
	.float 0
.endobj lbl_81694680

# 0x81698780..0x81698788 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698780 | size: 0x8
.obj lbl_81698780, global
	.skip 0x8
.endobj lbl_81698780
