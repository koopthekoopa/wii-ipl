.include "macros.inc"
.file "nw4rmanager.cpp"

# 0x81435D64..0x81437558 | size: 0x17F4
.text
.balign 4

# .text:0x0 | 0x81435D64 | size: 0x6C
# textinput::nw4rmanager::TiEventHandler::onEvent(textinput::gui::GUIComponent&, unsigned long, void*)
.fn onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv, global
/* 81435D64 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81435D68 | 7C 08 02 A6 */	mflr r0
/* 81435D6C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81435D70 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81435D74 | 7C 9F 23 78 */	mr r31, r4
/* 81435D78 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81435D7C | 7C BE 2B 78 */	mr r30, r5
/* 81435D80 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81435D84 | 7C 7D 1B 78 */	mr r29, r3
/* 81435D88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81435D8C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81435D90 | 7D 89 03 A6 */	mtctr r12
/* 81435D94 | 4E 80 04 21 */	bctrl
/* 81435D98 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 81435D9C | 7F C5 F3 78 */	mr r5, r30
/* 81435DA0 | 80 9F 00 9C */	lwz r4, 0x9c(r31)
/* 81435DA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81435DA8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81435DAC | 7D 89 03 A6 */	mtctr r12
/* 81435DB0 | 4E 80 04 21 */	bctrl
/* 81435DB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81435DB8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81435DBC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81435DC0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81435DC4 | 7C 08 03 A6 */	mtlr r0
/* 81435DC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81435DCC | 4E 80 00 20 */	blr
.endfn onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv

# .text:0x6C | 0x81435DD0 | size: 0x8C
# textinput::nw4rmanager::Layout::searchAnmPane(const char*)
.fn searchAnmPane__Q39textinput11nw4rmanager6LayoutFPCc, global
/* 81435DD0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81435DD4 | 7C 08 02 A6 */	mflr r0
/* 81435DD8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81435DDC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81435DE0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81435DE4 | 7C 9E 23 78 */	mr r30, r4
/* 81435DE8 | 38 80 00 00 */	li r4, 0x0
/* 81435DEC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81435DF0 | 7C 7D 1B 78 */	mr r29, r3
/* 81435DF4 | 38 63 00 6C */	addi r3, r3, 0x6c
/* 81435DF8 | 48 0D C4 E5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81435DFC | 7C 7F 1B 78 */	mr r31, r3
/* 81435E00 | 48 00 00 34 */	b .L_81435E34
.L_81435E04:
/* 81435E04 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81435E08 | 7F C3 F3 78 */	mr r3, r30
/* 81435E0C | 38 84 00 B4 */	addi r4, r4, 0xb4
/* 81435E10 | 48 00 43 E5 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81435E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81435E18 | 41 82 00 0C */	beq .L_81435E24
/* 81435E1C | 7F E3 FB 78 */	mr r3, r31
/* 81435E20 | 48 00 00 20 */	b .L_81435E40
.L_81435E24:
/* 81435E24 | 7F E4 FB 78 */	mr r4, r31
/* 81435E28 | 38 7D 00 6C */	addi r3, r29, 0x6c
/* 81435E2C | 48 0D C4 B1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81435E30 | 7C 7F 1B 78 */	mr r31, r3
.L_81435E34:
/* 81435E34 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81435E38 | 40 82 FF CC */	bne .L_81435E04
/* 81435E3C | 38 60 00 00 */	li r3, 0x0
.L_81435E40:
/* 81435E40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81435E44 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81435E48 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81435E4C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81435E50 | 7C 08 03 A6 */	mtlr r0
/* 81435E54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81435E58 | 4E 80 00 20 */	blr
.endfn searchAnmPane__Q39textinput11nw4rmanager6LayoutFPCc

# .text:0xF8 | 0x81435E5C | size: 0xE8
# textinput::nw4rmanager::Layout::searchAnmPane(wchar_t)
.fn searchAnmPane__Q39textinput11nw4rmanager6LayoutFw, global
/* 81435E5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81435E60 | 7C 08 02 A6 */	mflr r0
/* 81435E64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81435E68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81435E6C | 48 1C 36 55 */	bl _savegpr_27
/* 81435E70 | 7C 7B 1B 78 */	mr r27, r3
/* 81435E74 | 7C 9C 23 78 */	mr r28, r4
/* 81435E78 | 38 80 00 00 */	li r4, 0x0
/* 81435E7C | 38 63 00 6C */	addi r3, r3, 0x6c
/* 81435E80 | 48 0D C4 5D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81435E84 | 7C 7D 1B 78 */	mr r29, r3
/* 81435E88 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 81435E8C | 48 00 00 94 */	b .L_81435F20
.L_81435E90:
/* 81435E90 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81435E94 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81435E98 | 3B C3 FF FC */	subi r30, r3, 0x4
/* 81435E9C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81435EA0 | 7F C3 F3 78 */	mr r3, r30
/* 81435EA4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81435EA8 | 7D 89 03 A6 */	mtctr r12
/* 81435EAC | 4E 80 04 21 */	bctrl
/* 81435EB0 | 48 00 00 18 */	b .L_81435EC8
.L_81435EB4:
/* 81435EB4 | 7C 03 F8 40 */	cmplw r3, r31
/* 81435EB8 | 40 82 00 0C */	bne .L_81435EC4
/* 81435EBC | 38 00 00 01 */	li r0, 0x1
/* 81435EC0 | 48 00 00 14 */	b .L_81435ED4
.L_81435EC4:
/* 81435EC4 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81435EC8:
/* 81435EC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81435ECC | 40 82 FF E8 */	bne .L_81435EB4
/* 81435ED0 | 38 00 00 00 */	li r0, 0x0
.L_81435ED4:
/* 81435ED4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81435ED8 | 41 82 00 08 */	beq .L_81435EE0
/* 81435EDC | 48 00 00 08 */	b .L_81435EE4
.L_81435EE0:
/* 81435EE0 | 3B C0 00 00 */	li r30, 0x0
.L_81435EE4:
/* 81435EE4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81435EE8 | 41 82 00 28 */	beq .L_81435F10
/* 81435EEC | 80 7E 00 D4 */	lwz r3, 0xd4(r30)
/* 81435EF0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 81435EF4 | 7C 00 E0 40 */	cmplw r0, r28
/* 81435EF8 | 40 82 00 18 */	bne .L_81435F10
/* 81435EFC | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 81435F00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81435F04 | 40 82 00 0C */	bne .L_81435F10
/* 81435F08 | 7F A3 EB 78 */	mr r3, r29
/* 81435F0C | 48 00 00 20 */	b .L_81435F2C
.L_81435F10:
/* 81435F10 | 7F A4 EB 78 */	mr r4, r29
/* 81435F14 | 38 7B 00 6C */	addi r3, r27, 0x6c
/* 81435F18 | 48 0D C3 C5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81435F1C | 7C 7D 1B 78 */	mr r29, r3
.L_81435F20:
/* 81435F20 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81435F24 | 40 82 FF 6C */	bne .L_81435E90
/* 81435F28 | 38 60 00 00 */	li r3, 0x0
.L_81435F2C:
/* 81435F2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81435F30 | 48 1C 35 DD */	bl _restgpr_27
/* 81435F34 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81435F38 | 7C 08 03 A6 */	mtlr r0
/* 81435F3C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81435F40 | 4E 80 00 20 */	blr
.endfn searchAnmPane__Q39textinput11nw4rmanager6LayoutFw

# .text:0x1E0 | 0x81435F44 | size: 0x70
# textinput::nw4rmanager::AnimPaneGroup::calc()
.fn calc__Q39textinput11nw4rmanager13AnimPaneGroupFv, global
/* 81435F44 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81435F48 | 7C 08 02 A6 */	mflr r0
/* 81435F4C | 38 80 00 00 */	li r4, 0x0
/* 81435F50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81435F54 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81435F58 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81435F5C | 7C 7E 1B 78 */	mr r30, r3
/* 81435F60 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81435F64 | 48 0D C3 79 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81435F68 | 7C 7F 1B 78 */	mr r31, r3
/* 81435F6C | 48 00 00 28 */	b .L_81435F94
.L_81435F70:
/* 81435F70 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81435F74 | 7F E3 FB 78 */	mr r3, r31
/* 81435F78 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81435F7C | 7D 89 03 A6 */	mtctr r12
/* 81435F80 | 4E 80 04 21 */	bctrl
/* 81435F84 | 7F E4 FB 78 */	mr r4, r31
/* 81435F88 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 81435F8C | 48 0D C3 51 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81435F90 | 7C 7F 1B 78 */	mr r31, r3
.L_81435F94:
/* 81435F94 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81435F98 | 40 82 FF D8 */	bne .L_81435F70
/* 81435F9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81435FA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81435FA4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81435FA8 | 7C 08 03 A6 */	mtlr r0
/* 81435FAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81435FB0 | 4E 80 00 20 */	blr
.endfn calc__Q39textinput11nw4rmanager13AnimPaneGroupFv

# .text:0x250 | 0x81435FB4 | size: 0x80
# textinput::nw4rmanager::AnimPaneGroup::changeAnimation(unsigned long)
.fn changeAnimation__Q39textinput11nw4rmanager13AnimPaneGroupFUl, global
/* 81435FB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81435FB8 | 7C 08 02 A6 */	mflr r0
/* 81435FBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81435FC0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81435FC4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81435FC8 | 7C 9E 23 78 */	mr r30, r4
/* 81435FCC | 38 80 00 00 */	li r4, 0x0
/* 81435FD0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81435FD4 | 7C 7D 1B 78 */	mr r29, r3
/* 81435FD8 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81435FDC | 48 0D C3 01 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81435FE0 | 7C 7F 1B 78 */	mr r31, r3
/* 81435FE4 | 48 00 00 2C */	b .L_81436010
.L_81435FE8:
/* 81435FE8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81435FEC | 7F E3 FB 78 */	mr r3, r31
/* 81435FF0 | 7F C4 F3 78 */	mr r4, r30
/* 81435FF4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81435FF8 | 7D 89 03 A6 */	mtctr r12
/* 81435FFC | 4E 80 04 21 */	bctrl
/* 81436000 | 7F E4 FB 78 */	mr r4, r31
/* 81436004 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81436008 | 48 0D C2 D5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8143600C | 7C 7F 1B 78 */	mr r31, r3
.L_81436010:
/* 81436010 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81436014 | 40 82 FF D4 */	bne .L_81435FE8
/* 81436018 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143601C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81436020 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81436024 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81436028 | 7C 08 03 A6 */	mtlr r0
/* 8143602C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81436030 | 4E 80 00 20 */	blr
.endfn changeAnimation__Q39textinput11nw4rmanager13AnimPaneGroupFUl

# .text:0x2D0 | 0x81436034 | size: 0xC4
# textinput::nw4rmanager::Layout::Layout(nw4r::lyt::MultiArcResourceAccessor*, const char*, textinput::EventObserver*)
.fn __ct__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserver, global
/* 81436034 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81436038 | 7C 08 02 A6 */	mflr r0
/* 8143603C | 3C E0 81 66 */	lis r7, __vt__Q39textinput11nw4rmanager6Layout@ha
/* 81436040 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81436044 | 38 E7 F8 18 */	addi r7, r7, __vt__Q39textinput11nw4rmanager6Layout@l
/* 81436048 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143604C | 3B E0 00 00 */	li r31, 0x0
/* 81436050 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81436054 | 7C 7E 1B 78 */	mr r30, r3
/* 81436058 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 8143605C | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 81436060 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 81436064 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 81436068 | 93 E3 00 10 */	stw r31, 0x10(r3)
/* 8143606C | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 81436070 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81436074 | 48 0F 31 35 */	bl fn_815291A8
/* 81436078 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 8143607C | 3C 80 81 66 */	lis r4, __vt__Q39textinput11nw4rmanager8PaneFifo@ha
/* 81436080 | 38 00 00 01 */	li r0, 0x1
/* 81436084 | 38 7E 00 8C */	addi r3, r30, 0x8c
/* 81436088 | 38 84 F8 90 */	addi r4, r4, __vt__Q39textinput11nw4rmanager8PaneFifo@l
/* 8143608C | D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 81436090 | D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 81436094 | D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 81436098 | D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 8143609C | 98 1E 00 88 */	stb r0, 0x88(r30)
/* 814360A0 | 98 1E 00 89 */	stb r0, 0x89(r30)
/* 814360A4 | 90 9E 00 8C */	stw r4, 0x8c(r30)
/* 814360A8 | 81 9E 00 8C */	lwz r12, 0x8c(r30)
/* 814360AC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 814360B0 | 7D 89 03 A6 */	mtctr r12
/* 814360B4 | 4E 80 04 21 */	bctrl
/* 814360B8 | 93 FE 00 A4 */	stw r31, 0xa4(r30)
/* 814360BC | 38 7E 00 6C */	addi r3, r30, 0x6c
/* 814360C0 | 38 80 00 1C */	li r4, 0x1c
/* 814360C4 | 48 0D BF 99 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 814360C8 | 81 9E 00 8C */	lwz r12, 0x8c(r30)
/* 814360CC | 38 7E 00 8C */	addi r3, r30, 0x8c
/* 814360D0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 814360D4 | 7D 89 03 A6 */	mtctr r12
/* 814360D8 | 4E 80 04 21 */	bctrl
/* 814360DC | 7F C3 F3 78 */	mr r3, r30
/* 814360E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814360E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814360E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814360EC | 7C 08 03 A6 */	mtlr r0
/* 814360F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814360F4 | 4E 80 00 20 */	blr
.endfn __ct__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserver

# .text:0x394 | 0x814360F8 | size: 0xC4
# textinput::nw4rmanager::Layout::~Layout()
.fn __dt__Q39textinput11nw4rmanager6LayoutFv, global
/* 814360F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814360FC | 7C 08 02 A6 */	mflr r0
/* 81436100 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436104 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81436108 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143610C | 7C 9F 23 78 */	mr r31, r4
/* 81436110 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81436114 | 7C 7E 1B 78 */	mr r30, r3
/* 81436118 | 41 82 00 88 */	beq .L_814361A0
/* 8143611C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81436120 | 3C 80 81 66 */	lis r4, __vt__Q39textinput11nw4rmanager6Layout@ha
/* 81436124 | 38 84 F8 18 */	addi r4, r4, __vt__Q39textinput11nw4rmanager6Layout@l
/* 81436128 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8143612C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81436130 | 41 82 00 28 */	beq .L_81436158
/* 81436134 | 7C 03 03 78 */	mr r3, r0
/* 81436138 | 38 80 FF FF */	li r4, -0x1
/* 8143613C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436140 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81436144 | 7D 89 03 A6 */	mtctr r12
/* 81436148 | 4E 80 04 21 */	bctrl
/* 8143614C | 80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 81436150 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81436154 | 48 12 55 25 */	bl fn_8155B678
.L_81436158:
/* 81436158 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8143615C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436160 | 41 82 00 24 */	beq .L_81436184
/* 81436164 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436168 | 38 80 FF FF */	li r4, -0x1
/* 8143616C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81436170 | 7D 89 03 A6 */	mtctr r12
/* 81436174 | 4E 80 04 21 */	bctrl
/* 81436178 | 80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8143617C | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 81436180 | 48 12 54 F9 */	bl fn_8155B678
.L_81436184:
/* 81436184 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 81436188 | 38 80 FF FF */	li r4, -0x1
/* 8143618C | 48 0F 30 91 */	bl fn_8152921C
/* 81436190 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81436194 | 40 81 00 0C */	ble .L_814361A0
/* 81436198 | 7F C3 F3 78 */	mr r3, r30
/* 8143619C | 48 1C 1F 49 */	bl __dl__FPv
.L_814361A0:
/* 814361A0 | 7F C3 F3 78 */	mr r3, r30
/* 814361A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814361A8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814361AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814361B0 | 7C 08 03 A6 */	mtlr r0
/* 814361B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814361B8 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput11nw4rmanager6LayoutFv

# .text:0x458 | 0x814361BC | size: 0x58
# textinput::TiLayout::~TiLayout()
.fn __dt__Q29textinput8TiLayoutFv, global
/* 814361BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814361C0 | 7C 08 02 A6 */	mflr r0
/* 814361C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814361C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814361CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814361D0 | 7C 9F 23 78 */	mr r31, r4
/* 814361D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814361D8 | 7C 7E 1B 78 */	mr r30, r3
/* 814361DC | 41 82 00 1C */	beq .L_814361F8
/* 814361E0 | 38 80 00 00 */	li r4, 0x0
/* 814361E4 | 48 0E 9E B5 */	bl fn_81520098
/* 814361E8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814361EC | 40 81 00 0C */	ble .L_814361F8
/* 814361F0 | 7F C3 F3 78 */	mr r3, r30
/* 814361F4 | 48 1C 1E F1 */	bl __dl__FPv
.L_814361F8:
/* 814361F8 | 7F C3 F3 78 */	mr r3, r30
/* 814361FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81436200 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81436204 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81436208 | 7C 08 03 A6 */	mtlr r0
/* 8143620C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81436210 | 4E 80 00 20 */	blr
.endfn __dt__Q29textinput8TiLayoutFv

# .text:0x4B0 | 0x81436214 | size: 0x1F4
# textinput::nw4rmanager::Layout::createWithEventHandler(MEMAllocator*, textinput::nw4rmanager::TiEventHandler*)
.fn createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler, global
/* 81436214 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81436218 | 7C 08 02 A6 */	mflr r0
/* 8143621C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81436220 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 81436224 | 7C 7F 1B 78 */	mr r31, r3
/* 81436228 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 8143622C | 93 A1 00 54 */	stw r29, 0x54(r1)
/* 81436230 | 7C BD 2B 78 */	mr r29, r5
/* 81436234 | 93 81 00 50 */	stw r28, 0x50(r1)
/* 81436238 | 7C 9C 23 78 */	mr r28, r4
/* 8143623C | 90 83 00 A4 */	stw r4, 0xa4(r3)
/* 81436240 | 7F 83 E3 78 */	mr r3, r28
/* 81436244 | 38 80 00 24 */	li r4, 0x24
/* 81436248 | 48 12 54 21 */	bl fn_8155B668
/* 8143624C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436250 | 7C 7E 1B 78 */	mr r30, r3
/* 81436254 | 41 82 00 14 */	beq .L_81436268
/* 81436258 | 48 0E 9D FD */	bl fn_81520054
/* 8143625C | 3C 60 81 67 */	lis r3, __vt__Q29textinput8TiLayout@ha
/* 81436260 | 38 63 90 18 */	addi r3, r3, __vt__Q29textinput8TiLayout@l
/* 81436264 | 90 7E 00 00 */	stw r3, 0x0(r30)
.L_81436268:
/* 81436268 | 93 DF 00 04 */	stw r30, 0x4(r31)
/* 8143626C | 38 80 00 00 */	li r4, 0x0
/* 81436270 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81436274 | 38 C0 00 00 */	li r6, 0x0
/* 81436278 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 8143627C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436280 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81436284 | 7D 89 03 A6 */	mtctr r12
/* 81436288 | 4E 80 04 21 */	bctrl
/* 8143628C | 7C 64 1B 78 */	mr r4, r3
/* 81436290 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81436294 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 81436298 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143629C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814362A0 | 7D 89 03 A6 */	mtctr r12
/* 814362A4 | 4E 80 04 21 */	bctrl
/* 814362A8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814362AC | 41 82 00 80 */	beq .L_8143632C
/* 814362B0 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814362B4 | 7F A3 EB 78 */	mr r3, r29
/* 814362B8 | 80 9F 00 14 */	lwz r4, 0x14(r31)
/* 814362BC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814362C0 | 7D 89 03 A6 */	mtctr r12
/* 814362C4 | 4E 80 04 21 */	bctrl
/* 814362C8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814362CC | 7F E3 FB 78 */	mr r3, r31
/* 814362D0 | 7F 84 E3 78 */	mr r4, r28
/* 814362D4 | 7F A5 EB 78 */	mr r5, r29
/* 814362D8 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 814362DC | 7D 89 03 A6 */	mtctr r12
/* 814362E0 | 4E 80 04 21 */	bctrl
/* 814362E4 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 814362E8 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 814362EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814362F0 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814362F4 | 7D 89 03 A6 */	mtctr r12
/* 814362F8 | 4E 80 04 21 */	bctrl
/* 814362FC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81436300 | 38 80 08 00 */	li r4, 0x800
/* 81436304 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436308 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8143630C | 7D 89 03 A6 */	mtctr r12
/* 81436310 | 4E 80 04 21 */	bctrl
/* 81436314 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81436318 | 38 9F 00 18 */	addi r4, r31, 0x18
/* 8143631C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436320 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81436324 | 7D 89 03 A6 */	mtctr r12
/* 81436328 | 4E 80 04 21 */	bctrl
.L_8143632C:
/* 8143632C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81436330 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81436334 | 48 0E A3 E5 */	bl fn_81520718
/* 81436338 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 8143633C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81436340 | D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 81436344 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 81436348 | D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8143634C | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81436350 | D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 81436354 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81436358 | D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 8143635C | 48 10 AA D5 */	bl fn_81540E30
/* 81436360 | 80 A1 00 18 */	lwz r5, 0x18(r1)
/* 81436364 | 38 9F 00 18 */	addi r4, r31, 0x18
/* 81436368 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8143636C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81436370 | 90 BF 00 1C */	stw r5, 0x1c(r31)
/* 81436374 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 81436378 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8143637C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81436380 | 90 BF 00 24 */	stw r5, 0x24(r31)
/* 81436384 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 81436388 | 80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8143638C | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 81436390 | 90 BF 00 2C */	stw r5, 0x2c(r31)
/* 81436394 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 81436398 | 80 A1 00 30 */	lwz r5, 0x30(r1)
/* 8143639C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814363A0 | 90 BF 00 34 */	stw r5, 0x34(r31)
/* 814363A4 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 814363A8 | 80 A1 00 38 */	lwz r5, 0x38(r1)
/* 814363AC | 80 01 00 3C */	lwz r0, 0x3c(r1)
/* 814363B0 | 90 BF 00 3C */	stw r5, 0x3c(r31)
/* 814363B4 | 90 1F 00 40 */	stw r0, 0x40(r31)
/* 814363B8 | 80 A1 00 40 */	lwz r5, 0x40(r1)
/* 814363BC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814363C0 | 90 BF 00 44 */	stw r5, 0x44(r31)
/* 814363C4 | 90 1F 00 48 */	stw r0, 0x48(r31)
/* 814363C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814363CC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 814363D0 | 7D 89 03 A6 */	mtctr r12
/* 814363D4 | 4E 80 04 21 */	bctrl
/* 814363D8 | 88 1F 00 68 */	lbz r0, 0x68(r31)
/* 814363DC | 60 00 00 40 */	ori r0, r0, 0x40
/* 814363E0 | 54 00 07 34 */	rlwinm r0, r0, 0, 28, 26
/* 814363E4 | 98 1F 00 68 */	stb r0, 0x68(r31)
/* 814363E8 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 814363EC | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 814363F0 | 83 A1 00 54 */	lwz r29, 0x54(r1)
/* 814363F4 | 83 81 00 50 */	lwz r28, 0x50(r1)
/* 814363F8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814363FC | 7C 08 03 A6 */	mtlr r0
/* 81436400 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81436404 | 4E 80 00 20 */	blr
.endfn createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler

# .text:0x6A4 | 0x81436408 | size: 0x8
# textinput::gui::PaneManager::setDrawInfo(const nw4r::lyt::DrawInfo*)
.fn setDrawInfo__Q39textinput3gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo, global
/* 81436408 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 8143640C | 4E 80 00 20 */	blr
.endfn setDrawInfo__Q39textinput3gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo

# .text:0x6AC | 0x81436410 | size: 0x9C
# textinput::nw4rmanager::Layout::createPaneManager(MEMAllocator*, textinput::nw4rmanager::TiEventHandler*)
.fn createPaneManager__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler, global
/* 81436410 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81436414 | 7C 08 02 A6 */	mflr r0
/* 81436418 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143641C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81436420 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81436424 | 7C BE 2B 78 */	mr r30, r5
/* 81436428 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8143642C | 7C 9D 23 78 */	mr r29, r4
/* 81436430 | 7F A3 EB 78 */	mr r3, r29
/* 81436434 | 38 80 00 30 */	li r4, 0x30
/* 81436438 | 48 12 52 31 */	bl fn_8155B668
/* 8143643C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436440 | 7C 7F 1B 78 */	mr r31, r3
/* 81436444 | 41 82 00 48 */	beq .L_8143648C
/* 81436448 | 3C A0 81 67 */	lis r5, __vt__Q39textinput3gui10GUIManager@ha
/* 8143644C | 38 80 00 08 */	li r4, 0x8
/* 81436450 | 38 A5 8E 30 */	addi r5, r5, __vt__Q39textinput3gui10GUIManager@l
/* 81436454 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81436458 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 8143645C | 93 A3 00 08 */	stw r29, 0x8(r3)
/* 81436460 | 38 63 00 0C */	addi r3, r3, 0xc
/* 81436464 | 48 0D BB F9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81436468 | 3C 80 81 67 */	lis r4, __vt__Q39textinput3gui11PaneManager@ha
/* 8143646C | 38 00 00 00 */	li r0, 0x0
/* 81436470 | 38 84 8D D4 */	addi r4, r4, __vt__Q39textinput3gui11PaneManager@l
/* 81436474 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 81436478 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 8143647C | 38 80 00 08 */	li r4, 0x8
/* 81436480 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 81436484 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 81436488 | 48 0D BB D5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
.L_8143648C:
/* 8143648C | 7F E3 FB 78 */	mr r3, r31
/* 81436490 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81436494 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81436498 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8143649C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814364A0 | 7C 08 03 A6 */	mtlr r0
/* 814364A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814364A8 | 4E 80 00 20 */	blr
.endfn createPaneManager__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler

# .text:0x748 | 0x814364AC | size: 0x10
# textinput::nw4rmanager::Layout::init()
.fn init__Q39textinput11nw4rmanager6LayoutFv, global
/* 814364AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814364B0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814364B4 | 7D 89 03 A6 */	mtctr r12
/* 814364B8 | 4E 80 04 20 */	bctr
.endfn init__Q39textinput11nw4rmanager6LayoutFv

# .text:0x758 | 0x814364BC | size: 0x14
# textinput::nw4rmanager::Layout::initPaneManager()
.fn initPaneManager__Q39textinput11nw4rmanager6LayoutFv, global
/* 814364BC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814364C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814364C4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814364C8 | 7D 89 03 A6 */	mtctr r12
/* 814364CC | 4E 80 04 20 */	bctr
.endfn initPaneManager__Q39textinput11nw4rmanager6LayoutFv

# .text:0x76C | 0x814364D0 | size: 0x29C
# textinput::nw4rmanager::Layout::draw()
.fn draw__Q39textinput11nw4rmanager6LayoutFv, global
/* 814364D0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814364D4 | 7C 08 02 A6 */	mflr r0
/* 814364D8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814364DC | 39 61 00 40 */	addi r11, r1, 0x40
/* 814364E0 | 48 1C 2F E1 */	bl _savegpr_27
/* 814364E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814364E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814364EC | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814364F0 | 7D 89 03 A6 */	mtctr r12
/* 814364F4 | 4E 80 04 21 */	bctrl
/* 814364F8 | 88 1F 00 88 */	lbz r0, 0x88(r31)
/* 814364FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81436500 | 41 82 00 34 */	beq .L_81436534
/* 81436504 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81436508 | 38 80 00 00 */	li r4, 0x0
/* 8143650C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436510 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81436514 | 7D 89 03 A6 */	mtctr r12
/* 81436518 | 4E 80 04 21 */	bctrl
/* 8143651C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81436520 | 38 9F 00 18 */	addi r4, r31, 0x18
/* 81436524 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436528 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8143652C | 7D 89 03 A6 */	mtctr r12
/* 81436530 | 4E 80 04 21 */	bctrl
.L_81436534:
/* 81436534 | 3D 80 81 66 */	lis r12, __vt__Q39textinput11nw4rmanager8PaneFifo@ha
/* 81436538 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8143653C | 39 8C F8 90 */	addi r12, r12, __vt__Q39textinput11nw4rmanager8PaneFifo@l
/* 81436540 | 91 81 00 08 */	stw r12, 0x8(r1)
/* 81436544 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81436548 | 7D 89 03 A6 */	mtctr r12
/* 8143654C | 4E 80 04 21 */	bctrl
/* 81436550 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 81436554 | 3B 60 00 00 */	li r27, 0x0
/* 81436558 | 3B A0 00 00 */	li r29, 0x0
/* 8143655C | 3B C0 00 05 */	li r30, 0x5
/* 81436560 | 48 00 00 FC */	b .L_8143665C
.L_81436564:
/* 81436564 | 81 9F 00 8C */	lwz r12, 0x8c(r31)
/* 81436568 | 38 7F 00 8C */	addi r3, r31, 0x8c
/* 8143656C | 7F 64 DB 78 */	mr r4, r27
/* 81436570 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81436574 | 7D 89 03 A6 */	mtctr r12
/* 81436578 | 4E 80 04 21 */	bctrl
/* 8143657C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436580 | 41 82 00 D8 */	beq .L_81436658
/* 81436584 | 81 9F 00 8C */	lwz r12, 0x8c(r31)
/* 81436588 | 38 7F 00 8C */	addi r3, r31, 0x8c
/* 8143658C | 7F 64 DB 78 */	mr r4, r27
/* 81436590 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81436594 | 7D 89 03 A6 */	mtctr r12
/* 81436598 | 4E 80 04 21 */	bctrl
/* 8143659C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 814365A0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814365A4 | 41 82 00 B4 */	beq .L_81436658
/* 814365A8 | 81 9F 00 8C */	lwz r12, 0x8c(r31)
/* 814365AC | 38 7F 00 8C */	addi r3, r31, 0x8c
/* 814365B0 | 7F 64 DB 78 */	mr r4, r27
/* 814365B4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814365B8 | 7D 89 03 A6 */	mtctr r12
/* 814365BC | 4E 80 04 21 */	bctrl
/* 814365C0 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 814365C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814365C8 | 40 82 00 3C */	bne .L_81436604
/* 814365CC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814365D0 | 38 80 00 00 */	li r4, 0x0
/* 814365D4 | 7F C9 03 A6 */	mtctr r30
.L_814365D8:
/* 814365D8 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 814365DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814365E0 | 40 82 00 14 */	bne .L_814365F4
/* 814365E4 | 54 80 10 3A */	slwi r0, r4, 2
/* 814365E8 | 7C 9C 02 14 */	add r4, r28, r0
/* 814365EC | 90 64 00 04 */	stw r3, 0x4(r4)
/* 814365F0 | 48 00 00 68 */	b .L_81436658
.L_814365F4:
/* 814365F4 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 814365F8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814365FC | 42 00 FF DC */	bdnz .L_814365D8
/* 81436600 | 48 00 00 58 */	b .L_81436658
.L_81436604:
/* 81436604 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81436608 | 7C 03 00 40 */	cmplw r3, r0
/* 8143660C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81436610 | 40 82 00 08 */	bne .L_81436618
/* 81436614 | 93 A1 00 0C */	stw r29, 0xc(r1)
.L_81436618:
/* 81436618 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143661C | 7C 03 00 40 */	cmplw r3, r0
/* 81436620 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81436624 | 40 82 00 08 */	bne .L_8143662C
/* 81436628 | 93 A1 00 10 */	stw r29, 0x10(r1)
.L_8143662C:
/* 8143662C | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81436630 | 7C 03 00 40 */	cmplw r3, r0
/* 81436634 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81436638 | 40 82 00 08 */	bne .L_81436640
/* 8143663C | 93 A1 00 14 */	stw r29, 0x14(r1)
.L_81436640:
/* 81436640 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81436644 | 7C 03 00 40 */	cmplw r3, r0
/* 81436648 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8143664C | 40 82 00 08 */	bne .L_81436654
/* 81436650 | 93 A1 00 18 */	stw r29, 0x18(r1)
.L_81436654:
/* 81436654 | 90 61 00 1C */	stw r3, 0x1c(r1)
.L_81436658:
/* 81436658 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_8143665C:
/* 8143665C | 81 9F 00 8C */	lwz r12, 0x8c(r31)
/* 81436660 | 38 7F 00 8C */	addi r3, r31, 0x8c
/* 81436664 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81436668 | 7D 89 03 A6 */	mtctr r12
/* 8143666C | 4E 80 04 21 */	bctrl
/* 81436670 | 7C 1B 18 00 */	cmpw r27, r3
/* 81436674 | 41 80 FE F0 */	blt .L_81436564
/* 81436678 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8143667C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436680 | 41 82 00 10 */	beq .L_81436690
/* 81436684 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81436688 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8143668C | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_81436690:
/* 81436690 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81436694 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436698 | 41 82 00 10 */	beq .L_814366A8
/* 8143669C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 814366A0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814366A4 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_814366A8:
/* 814366A8 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 814366AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814366B0 | 41 82 00 10 */	beq .L_814366C0
/* 814366B4 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 814366B8 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814366BC | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_814366C0:
/* 814366C0 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 814366C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814366C8 | 41 82 00 10 */	beq .L_814366D8
/* 814366CC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 814366D0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814366D4 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_814366D8:
/* 814366D8 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 814366DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814366E0 | 41 82 00 10 */	beq .L_814366F0
/* 814366E4 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 814366E8 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814366EC | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_814366F0:
/* 814366F0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814366F4 | 38 9F 00 18 */	addi r4, r31, 0x18
/* 814366F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814366FC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81436700 | 7D 89 03 A6 */	mtctr r12
/* 81436704 | 4E 80 04 21 */	bctrl
/* 81436708 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 8143670C | 3B 60 00 00 */	li r27, 0x0
.L_81436710:
/* 81436710 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81436714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436718 | 41 82 00 2C */	beq .L_81436744
/* 8143671C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81436720 | 38 9F 00 18 */	addi r4, r31, 0x18
/* 81436724 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81436728 | 60 00 00 01 */	ori r0, r0, 0x1
/* 8143672C | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 81436730 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81436734 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436738 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143673C | 7D 89 03 A6 */	mtctr r12
/* 81436740 | 4E 80 04 21 */	bctrl
.L_81436744:
/* 81436744 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81436748 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 8143674C | 2C 1B 00 05 */	cmpwi r27, 0x5
/* 81436750 | 41 80 FF C0 */	blt .L_81436710
/* 81436754 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81436758 | 48 1C 2D B5 */	bl _restgpr_27
/* 8143675C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81436760 | 7C 08 03 A6 */	mtlr r0
/* 81436764 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81436768 | 4E 80 00 20 */	blr
.endfn draw__Q39textinput11nw4rmanager6LayoutFv

# .text:0xA08 | 0x8143676C | size: 0x10
# textinput::nw4rmanager::PaneFifo::get(int)
.fn get__Q39textinput11nw4rmanager8PaneFifoFi, global
/* 8143676C | 54 80 10 3A */	slwi r0, r4, 2
/* 81436770 | 7C 63 02 14 */	add r3, r3, r0
/* 81436774 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81436778 | 4E 80 00 20 */	blr
.endfn get__Q39textinput11nw4rmanager8PaneFifoFi

# .text:0xA18 | 0x8143677C | size: 0x8
# textinput::nw4rmanager::PaneFifo::getSize()
.fn getSize__Q39textinput11nw4rmanager8PaneFifoFv, global
/* 8143677C | 38 60 00 05 */	li r3, 0x5
/* 81436780 | 4E 80 00 20 */	blr
.endfn getSize__Q39textinput11nw4rmanager8PaneFifoFv

# .text:0xA20 | 0x81436784 | size: 0x7C
# textinput::nw4rmanager::Layout::calc()
.fn calc__Q39textinput11nw4rmanager6LayoutFv, global
/* 81436784 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81436788 | 7C 08 02 A6 */	mflr r0
/* 8143678C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81436790 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81436794 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81436798 | 7C 7E 1B 78 */	mr r30, r3
/* 8143679C | 88 03 00 88 */	lbz r0, 0x88(r3)
/* 814367A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814367A4 | 41 82 00 44 */	beq .L_814367E8
/* 814367A8 | 38 80 00 00 */	li r4, 0x0
/* 814367AC | 38 63 00 6C */	addi r3, r3, 0x6c
/* 814367B0 | 48 0D BB 2D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814367B4 | 7C 7F 1B 78 */	mr r31, r3
/* 814367B8 | 48 00 00 28 */	b .L_814367E0
.L_814367BC:
/* 814367BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814367C0 | 7F E3 FB 78 */	mr r3, r31
/* 814367C4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814367C8 | 7D 89 03 A6 */	mtctr r12
/* 814367CC | 4E 80 04 21 */	bctrl
/* 814367D0 | 7F E4 FB 78 */	mr r4, r31
/* 814367D4 | 38 7E 00 6C */	addi r3, r30, 0x6c
/* 814367D8 | 48 0D BB 05 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814367DC | 7C 7F 1B 78 */	mr r31, r3
.L_814367E0:
/* 814367E0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814367E4 | 40 82 FF D8 */	bne .L_814367BC
.L_814367E8:
/* 814367E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814367EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814367F0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814367F4 | 7C 08 03 A6 */	mtlr r0
/* 814367F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814367FC | 4E 80 00 20 */	blr
.endfn calc__Q39textinput11nw4rmanager6LayoutFv

# .text:0xA9C | 0x81436800 | size: 0x14
# textinput::nw4rmanager::Layout::updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv, global
/* 81436800 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81436804 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436808 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8143680C | 7D 89 03 A6 */	mtctr r12
/* 81436810 | 4E 80 04 20 */	bctr
.endfn updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv

# .text:0xAB0 | 0x81436814 | size: 0x8
# textinput::nw4rmanager::Layout::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q39textinput11nw4rmanager6LayoutFRQ39textinput5input10HKBManager, global
/* 81436814 | 38 60 00 00 */	li r3, 0x0
/* 81436818 | 4E 80 00 20 */	blr
.endfn updateInput__Q39textinput11nw4rmanager6LayoutFRQ39textinput5input10HKBManager

# .text:0xAB8 | 0x8143681C | size: 0xC0
# textinput::nw4rmanager::Layout::setVisible(const char*, bool)
.fn setVisible__Q39textinput11nw4rmanager6LayoutFPCcb, global
/* 8143681C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81436820 | 7C 08 02 A6 */	mflr r0
/* 81436824 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81436828 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8143682C | 7C BF 2B 78 */	mr r31, r5
/* 81436830 | 38 A0 00 01 */	li r5, 0x1
/* 81436834 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81436838 | 7C 9E 23 78 */	mr r30, r4
/* 8143683C | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81436840 | 7C 7D 1B 78 */	mr r29, r3
/* 81436844 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 81436848 | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 8143684C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436850 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81436854 | 7D 89 03 A6 */	mtctr r12
/* 81436858 | 4E 80 04 21 */	bctrl
/* 8143685C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436860 | 41 82 00 60 */	beq .L_814368C0
/* 81436864 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81436868 | 88 BE 00 00 */	lbz r5, 0x0(r30)
/* 8143686C | 54 04 06 3C */	rlwinm r4, r0, 0, 24, 30
/* 81436870 | 7C A0 07 74 */	extsb r0, r5
/* 81436874 | 7C 84 FB 78 */	or r4, r4, r31
/* 81436878 | 2C 00 00 50 */	cmpwi r0, 0x50
/* 8143687C | 98 83 00 CF */	stb r4, 0xcf(r3)
/* 81436880 | 41 82 00 0C */	beq .L_8143688C
/* 81436884 | 2C 00 00 57 */	cmpwi r0, 0x57
/* 81436888 | 40 82 00 38 */	bne .L_814368C0
.L_8143688C:
/* 8143688C | 7F C5 F3 78 */	mr r5, r30
/* 81436890 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81436894 | 38 80 00 11 */	li r4, 0x11
/* 81436898 | 38 C0 00 00 */	li r6, 0x0
/* 8143689C | 38 E0 00 42 */	li r7, 0x42
/* 814368A0 | 48 00 39 BD */	bl replaceChar__Q29textinput4utilFPcUlPCcic
/* 814368A4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814368A8 | 7F A3 EB 78 */	mr r3, r29
/* 814368AC | 7F E5 FB 78 */	mr r5, r31
/* 814368B0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814368B4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814368B8 | 7D 89 03 A6 */	mtctr r12
/* 814368BC | 4E 80 04 21 */	bctrl
.L_814368C0:
/* 814368C0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814368C4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814368C8 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814368CC | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814368D0 | 7C 08 03 A6 */	mtlr r0
/* 814368D4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814368D8 | 4E 80 00 20 */	blr
.endfn setVisible__Q39textinput11nw4rmanager6LayoutFPCcb

# .text:0xB78 | 0x814368DC | size: 0x64
# textinput::nw4rmanager::Layout::isVisible(const char*, bool*) const
.fn isVisible__Q39textinput11nw4rmanager6LayoutCFPCcPb, global
/* 814368DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814368E0 | 7C 08 02 A6 */	mflr r0
/* 814368E4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814368E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814368EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814368F0 | 7C BF 2B 78 */	mr r31, r5
/* 814368F4 | 38 A0 00 01 */	li r5, 0x1
/* 814368F8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814368FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436900 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81436904 | 7D 89 03 A6 */	mtctr r12
/* 81436908 | 4E 80 04 21 */	bctrl
/* 8143690C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436910 | 40 82 00 0C */	bne .L_8143691C
/* 81436914 | 38 60 00 00 */	li r3, 0x0
/* 81436918 | 48 00 00 14 */	b .L_8143692C
.L_8143691C:
/* 8143691C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81436920 | 38 60 00 01 */	li r3, 0x1
/* 81436924 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 81436928 | 98 1F 00 00 */	stb r0, 0x0(r31)
.L_8143692C:
/* 8143692C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81436930 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81436934 | 7C 08 03 A6 */	mtlr r0
/* 81436938 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143693C | 4E 80 00 20 */	blr
.endfn isVisible__Q39textinput11nw4rmanager6LayoutCFPCcPb

# .text:0xBDC | 0x81436940 | size: 0xC4
# textinput::nw4rmanager::Layout::setString(const char*, const wchar_t*)
.fn setString__Q39textinput11nw4rmanager6LayoutFPCcPCw, global
/* 81436940 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81436944 | 7C 08 02 A6 */	mflr r0
/* 81436948 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143694C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81436950 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81436954 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81436958 | 7C BD 2B 78 */	mr r29, r5
/* 8143695C | 38 A0 00 01 */	li r5, 0x1
/* 81436960 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81436964 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81436968 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143696C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81436970 | 7D 89 03 A6 */	mtctr r12
/* 81436974 | 4E 80 04 21 */	bctrl
/* 81436978 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143697C | 7C 7F 1B 78 */	mr r31, r3
/* 81436980 | 3B CD AF 78 */	li r30, lbl_81698FB8@sda21
/* 81436984 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81436988 | 7D 89 03 A6 */	mtctr r12
/* 8143698C | 4E 80 04 21 */	bctrl
/* 81436990 | 48 00 00 18 */	b .L_814369A8
.L_81436994:
/* 81436994 | 7C 03 F0 40 */	cmplw r3, r30
/* 81436998 | 40 82 00 0C */	bne .L_814369A4
/* 8143699C | 38 00 00 01 */	li r0, 0x1
/* 814369A0 | 48 00 00 14 */	b .L_814369B4
.L_814369A4:
/* 814369A4 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_814369A8:
/* 814369A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814369AC | 40 82 FF E8 */	bne .L_81436994
/* 814369B0 | 38 00 00 00 */	li r0, 0x0
.L_814369B4:
/* 814369B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814369B8 | 41 82 00 08 */	beq .L_814369C0
/* 814369BC | 48 00 00 08 */	b .L_814369C4
.L_814369C0:
/* 814369C0 | 3B E0 00 00 */	li r31, 0x0
.L_814369C4:
/* 814369C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814369C8 | 41 82 00 20 */	beq .L_814369E8
/* 814369CC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814369D0 | 7F E3 FB 78 */	mr r3, r31
/* 814369D4 | 7F A4 EB 78 */	mr r4, r29
/* 814369D8 | 38 A0 00 00 */	li r5, 0x0
/* 814369DC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814369E0 | 7D 89 03 A6 */	mtctr r12
/* 814369E4 | 4E 80 04 21 */	bctrl
.L_814369E8:
/* 814369E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814369EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814369F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814369F4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814369F8 | 7C 08 03 A6 */	mtlr r0
/* 814369FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81436A00 | 4E 80 00 20 */	blr
.endfn setString__Q39textinput11nw4rmanager6LayoutFPCcPCw

# .text:0xCA0 | 0x81436A04 | size: 0x1C
# textinput::nw4rmanager::Layout::getPane(const char*)
.fn getPane__Q39textinput11nw4rmanager6LayoutFPCc, global
/* 81436A04 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81436A08 | 38 A0 00 01 */	li r5, 0x1
/* 81436A0C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81436A10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436A14 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81436A18 | 7D 89 03 A6 */	mtctr r12
/* 81436A1C | 4E 80 04 20 */	bctr
.endfn getPane__Q39textinput11nw4rmanager6LayoutFPCc

# .text:0xCBC | 0x81436A20 | size: 0x1C
# textinput::nw4rmanager::Layout::getPane(const char*) const
.fn getPane__Q39textinput11nw4rmanager6LayoutCFPCc, global
/* 81436A20 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81436A24 | 38 A0 00 01 */	li r5, 0x1
/* 81436A28 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81436A2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436A30 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81436A34 | 7D 89 03 A6 */	mtctr r12
/* 81436A38 | 4E 80 04 20 */	bctr
.endfn getPane__Q39textinput11nw4rmanager6LayoutCFPCc

# .text:0xCD8 | 0x81436A3C | size: 0x78
# textinput::nw4rmanager::Layout::getFlightDuration(int, const char*)
.fn getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc, global
/* 81436A3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81436A40 | 7C 08 02 A6 */	mflr r0
/* 81436A44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81436A48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81436A4C | 7C 9F 23 78 */	mr r31, r4
/* 81436A50 | 7C A4 2B 78 */	mr r4, r5
/* 81436A54 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81436A58 | 7C 7E 1B 78 */	mr r30, r3
/* 81436A5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436A60 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81436A64 | 7D 89 03 A6 */	mtctr r12
/* 81436A68 | 4E 80 04 21 */	bctrl
/* 81436A6C | 7C 64 1B 78 */	mr r4, r3
/* 81436A70 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 81436A74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436A78 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81436A7C | 7D 89 03 A6 */	mtctr r12
/* 81436A80 | 4E 80 04 21 */	bctrl
/* 81436A84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436A88 | 7F E4 FB 78 */	mr r4, r31
/* 81436A8C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81436A90 | 7D 89 03 A6 */	mtctr r12
/* 81436A94 | 4E 80 04 21 */	bctrl
/* 81436A98 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81436A9C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81436AA0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81436AA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81436AA8 | 7C 08 03 A6 */	mtlr r0
/* 81436AAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81436AB0 | 4E 80 00 20 */	blr
.endfn getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc

# .text:0xD50 | 0x81436AB4 | size: 0x58
# textinput::nw4rmanager::Layout::drawPane(const char*)
.fn drawPane__Q39textinput11nw4rmanager6LayoutFPCc, global
/* 81436AB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81436AB8 | 7C 08 02 A6 */	mflr r0
/* 81436ABC | 38 A0 00 01 */	li r5, 0x1
/* 81436AC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81436AC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81436AC8 | 7C 7F 1B 78 */	mr r31, r3
/* 81436ACC | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 81436AD0 | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 81436AD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436AD8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81436ADC | 7D 89 03 A6 */	mtctr r12
/* 81436AE0 | 4E 80 04 21 */	bctrl
/* 81436AE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436AE8 | 38 9F 00 18 */	addi r4, r31, 0x18
/* 81436AEC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81436AF0 | 7D 89 03 A6 */	mtctr r12
/* 81436AF4 | 4E 80 04 21 */	bctrl
/* 81436AF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81436AFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81436B00 | 7C 08 03 A6 */	mtlr r0
/* 81436B04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81436B08 | 4E 80 00 20 */	blr
.endfn drawPane__Q39textinput11nw4rmanager6LayoutFPCc

# .text:0xDA8 | 0x81436B0C | size: 0xF8
# textinput::nw4rmanager::Layout::setRootPaneScaleFor16x9()
.fn setRootPaneScaleFor16x9__Q39textinput11nw4rmanager6LayoutFv, global
/* 81436B0C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81436B10 | 7C 08 02 A6 */	mflr r0
/* 81436B14 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 81436B18 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81436B1C | 38 00 00 00 */	li r0, 0x0
/* 81436B20 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81436B24 | 7C 7F 1B 78 */	mr r31, r3
/* 81436B28 | 98 03 00 89 */	stb r0, 0x89(r3)
/* 81436B2C | 38 61 00 28 */	addi r3, r1, 0x28
/* 81436B30 | D0 01 00 28 */	stfs f0, 0x28(r1)
/* 81436B34 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 81436B38 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 81436B3C | D0 01 00 34 */	stfs f0, 0x34(r1)
/* 81436B40 | 48 00 38 05 */	bl getProjectionRect4x3__Q29textinput4utilFPQ34nw4r2ut4Rect
/* 81436B44 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 81436B48 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81436B4C | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81436B50 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81436B54 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 81436B58 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 81436B5C | 48 00 38 0D */	bl getProjectionRect16x9__Q29textinput4utilFPQ34nw4r2ut4Rect
/* 81436B60 | C0 61 00 30 */	lfs f3, 0x30(r1)
/* 81436B64 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 81436B68 | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 81436B6C | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 81436B70 | EC 43 10 28 */	fsubs f2, f3, f2
/* 81436B74 | C0 82 8A 14 */	lfs f4, lbl_81694E14@sda21(r0)
/* 81436B78 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81436B7C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81436B80 | D0 81 00 14 */	stfs f4, 0x14(r1)
/* 81436B84 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81436B88 | EC A0 10 24 */	fdivs f5, f0, f2
/* 81436B8C | D0 81 00 0C */	stfs f4, 0xc(r1)
/* 81436B90 | D0 A3 00 44 */	stfs f5, 0x44(r3)
/* 81436B94 | D0 83 00 48 */	stfs f4, 0x48(r3)
/* 81436B98 | C0 61 00 20 */	lfs f3, 0x20(r1)
/* 81436B9C | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 81436BA0 | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 81436BA4 | C0 01 00 28 */	lfs f0, 0x28(r1)
/* 81436BA8 | EC 43 10 28 */	fsubs f2, f3, f2
/* 81436BAC | 88 1F 00 68 */	lbz r0, 0x68(r31)
/* 81436BB0 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81436BB4 | D0 9F 00 60 */	stfs f4, 0x60(r31)
/* 81436BB8 | 60 00 00 20 */	ori r0, r0, 0x20
/* 81436BBC | 98 1F 00 68 */	stb r0, 0x68(r31)
/* 81436BC0 | EC 20 10 24 */	fdivs f1, f0, f2
/* 81436BC4 | D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 81436BC8 | D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 81436BCC | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 81436BD0 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 81436BD4 | D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 81436BD8 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81436BDC | D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 81436BE0 | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 81436BE4 | D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 81436BE8 | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 81436BEC | D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 81436BF0 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81436BF4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81436BF8 | 7C 08 03 A6 */	mtlr r0
/* 81436BFC | 38 21 00 40 */	addi r1, r1, 0x40
/* 81436C00 | 4E 80 00 20 */	blr
.endfn setRootPaneScaleFor16x9__Q39textinput11nw4rmanager6LayoutFv

# .text:0xEA0 | 0x81436C04 | size: 0x70
# textinput::nw4rmanager::Layout::setRootPaneScaleFor4x3()
.fn setRootPaneScaleFor4x3__Q39textinput11nw4rmanager6LayoutFv, global
/* 81436C04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81436C08 | 7C 08 02 A6 */	mflr r0
/* 81436C0C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81436C10 | 38 00 00 01 */	li r0, 0x1
/* 81436C14 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81436C18 | 7C 7F 1B 78 */	mr r31, r3
/* 81436C1C | 98 03 00 89 */	stb r0, 0x89(r3)
/* 81436C20 | 38 63 00 78 */	addi r3, r3, 0x78
/* 81436C24 | 48 00 37 21 */	bl getProjectionRect4x3__Q29textinput4utilFPQ34nw4r2ut4Rect
/* 81436C28 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81436C2C | C0 02 8A 14 */	lfs f0, lbl_81694E14@sda21(r0)
/* 81436C30 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81436C34 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81436C38 | D0 03 00 44 */	stfs f0, 0x44(r3)
/* 81436C3C | D0 03 00 48 */	stfs f0, 0x48(r3)
/* 81436C40 | 88 1F 00 68 */	lbz r0, 0x68(r31)
/* 81436C44 | D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 81436C48 | 60 00 00 20 */	ori r0, r0, 0x20
/* 81436C4C | D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 81436C50 | 98 1F 00 68 */	stb r0, 0x68(r31)
/* 81436C54 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81436C58 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81436C5C | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81436C60 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81436C64 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81436C68 | 7C 08 03 A6 */	mtlr r0
/* 81436C6C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81436C70 | 4E 80 00 20 */	blr
.endfn setRootPaneScaleFor4x3__Q39textinput11nw4rmanager6LayoutFv

# .text:0xF10 | 0x81436C74 | size: 0xAC
# textinput::nw4rmanager::Layout::setProjectionMtx()
.fn setProjectionMtx__Q39textinput11nw4rmanager6LayoutFv, global
/* 81436C74 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81436C78 | 7C 08 02 A6 */	mflr r0
/* 81436C7C | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81436C80 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 81436C84 | 7C 7F 1B 78 */	mr r31, r3
/* 81436C88 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81436C8C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81436C90 | 48 0E 9A 89 */	bl fn_81520718
/* 81436C94 | 88 1F 00 89 */	lbz r0, 0x89(r31)
/* 81436C98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81436C9C | 40 82 00 44 */	bne .L_81436CE0
/* 81436CA0 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 81436CA4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81436CA8 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81436CAC | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81436CB0 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81436CB4 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81436CB8 | 48 00 36 B1 */	bl getProjectionRect16x9__Q29textinput4utilFPQ34nw4r2ut4Rect
/* 81436CBC | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81436CC0 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81436CC4 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81436CC8 | C0 61 00 08 */	lfs f3, 0x8(r1)
/* 81436CCC | C0 81 00 10 */	lfs f4, 0x10(r1)
/* 81436CD0 | C0 A2 8A 18 */	lfs f5, lbl_81694E18@sda21(r0)
/* 81436CD4 | C0 C2 8A 14 */	lfs f6, lbl_81694E14@sda21(r0)
/* 81436CD8 | 48 10 A9 25 */	bl fn_815415FC
/* 81436CDC | 48 00 00 24 */	b .L_81436D00
.L_81436CE0:
/* 81436CE0 | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 81436CE4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81436CE8 | C0 41 00 24 */	lfs f2, 0x24(r1)
/* 81436CEC | C0 61 00 18 */	lfs f3, 0x18(r1)
/* 81436CF0 | C0 81 00 20 */	lfs f4, 0x20(r1)
/* 81436CF4 | C0 A2 8A 18 */	lfs f5, lbl_81694E18@sda21(r0)
/* 81436CF8 | C0 C2 8A 14 */	lfs f6, lbl_81694E14@sda21(r0)
/* 81436CFC | 48 10 A9 01 */	bl fn_815415FC
.L_81436D00:
/* 81436D00 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81436D04 | 38 80 00 01 */	li r4, 0x1
/* 81436D08 | 48 11 0F 29 */	bl GXSetProjection
/* 81436D0C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81436D10 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 81436D14 | 7C 08 03 A6 */	mtlr r0
/* 81436D18 | 38 21 00 70 */	addi r1, r1, 0x70
/* 81436D1C | 4E 80 00 20 */	blr
.endfn setProjectionMtx__Q39textinput11nw4rmanager6LayoutFv

# .text:0xFBC | 0x81436D20 | size: 0x104
# textinput::nw4rmanager::Layout::SetFontForce(nw4r::ut::Font*)
.fn SetFontForce__Q39textinput11nw4rmanager6LayoutFPQ34nw4r2ut4Font, global
/* 81436D20 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81436D24 | 7C 08 02 A6 */	mflr r0
/* 81436D28 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81436D2C | 38 00 00 00 */	li r0, 0x0
/* 81436D30 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81436D34 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81436D38 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81436D3C | 7C 9D 23 78 */	mr r29, r4
/* 81436D40 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81436D44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436D48 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81436D4C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81436D50 | 41 82 00 10 */	beq .L_81436D60
/* 81436D54 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81436D58 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81436D5C | 90 01 00 1C */	stw r0, 0x1c(r1)
.L_81436D60:
/* 81436D60 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 81436D64 | 48 00 00 98 */	b .L_81436DFC
.L_81436D68:
/* 81436D68 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81436D6C | 7F C3 F3 78 */	mr r3, r30
/* 81436D70 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81436D74 | 7D 89 03 A6 */	mtctr r12
/* 81436D78 | 4E 80 04 21 */	bctrl
/* 81436D7C | 48 00 00 18 */	b .L_81436D94
.L_81436D80:
/* 81436D80 | 7C 03 F8 40 */	cmplw r3, r31
/* 81436D84 | 40 82 00 0C */	bne .L_81436D90
/* 81436D88 | 38 00 00 01 */	li r0, 0x1
/* 81436D8C | 48 00 00 14 */	b .L_81436DA0
.L_81436D90:
/* 81436D90 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81436D94:
/* 81436D94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436D98 | 40 82 FF E8 */	bne .L_81436D80
/* 81436D9C | 38 00 00 00 */	li r0, 0x0
.L_81436DA0:
/* 81436DA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81436DA4 | 41 82 00 08 */	beq .L_81436DAC
/* 81436DA8 | 48 00 00 08 */	b .L_81436DB0
.L_81436DAC:
/* 81436DAC | 3B C0 00 00 */	li r30, 0x0
.L_81436DB0:
/* 81436DB0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81436DB4 | 41 82 00 30 */	beq .L_81436DE4
/* 81436DB8 | C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 81436DBC | 7F C3 F3 78 */	mr r3, r30
/* 81436DC0 | C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 81436DC4 | 7F A4 EB 78 */	mr r4, r29
/* 81436DC8 | D0 21 00 10 */	stfs f1, 0x10(r1)
/* 81436DCC | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81436DD0 | 48 0E BB A1 */	bl fn_81522970
/* 81436DD4 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81436DD8 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81436DDC | D0 3E 00 E4 */	stfs f1, 0xe4(r30)
/* 81436DE0 | D0 1E 00 E8 */	stfs f0, 0xe8(r30)
.L_81436DE4:
/* 81436DE4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81436DE8 | 48 01 36 15 */	bl GetNextPane__Q29textinput12PaneAccessorFv
/* 81436DEC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81436DF0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81436DF4 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81436DF8 | 90 81 00 1C */	stw r4, 0x1c(r1)
.L_81436DFC:
/* 81436DFC | 83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 81436E00 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81436E04 | 40 82 FF 64 */	bne .L_81436D68
/* 81436E08 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81436E0C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81436E10 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81436E14 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 81436E18 | 7C 08 03 A6 */	mtlr r0
/* 81436E1C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81436E20 | 4E 80 00 20 */	blr
.endfn SetFontForce__Q39textinput11nw4rmanager6LayoutFPQ34nw4r2ut4Font

# .text:0x10C0 | 0x81436E24 | size: 0xFC
# textinput::nw4rmanager::Layout::AdjustPaneMtx(float(&)[3][4], const nw4r::lyt::DrawInfo&, const nw4r::math::MTX34&)
.fn AdjustPaneMtx__Q39textinput11nw4rmanager6LayoutFRA3_A4_fRCQ34nw4r3lyt8DrawInfoRCQ34nw4r4math5MTX34, global
/* 81436E24 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81436E28 | 7C 08 02 A6 */	mflr r0
/* 81436E2C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81436E30 | 88 05 00 50 */	lbz r0, 0x50(r5)
/* 81436E34 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81436E38 | 7C BF 2B 78 */	mr r31, r5
/* 81436E3C | 54 00 CF FF */	extrwi. r0, r0, 1, 24
/* 81436E40 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81436E44 | 7C 9E 23 78 */	mr r30, r4
/* 81436E48 | 41 82 00 60 */	beq .L_81436EA8
/* 81436E4C | 38 65 00 04 */	addi r3, r5, 0x4
/* 81436E50 | 7C C4 33 78 */	mr r4, r6
/* 81436E54 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81436E58 | 48 10 A0 39 */	bl fn_81540E90
/* 81436E5C | C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 81436E60 | C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 81436E64 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 81436E68 | EC 22 08 28 */	fsubs f1, f2, f1
/* 81436E6C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81436E70 | 7C 00 00 26 */	mfcr r0
/* 81436E74 | 54 00 0F FF */	srwi. r0, r0, 31
/* 81436E78 | 41 82 00 28 */	beq .L_81436EA0
/* 81436E7C | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81436E80 | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 81436E84 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 81436E88 | FC 40 10 50 */	fneg f2, f2
/* 81436E8C | FC 20 08 50 */	fneg f1, f1
/* 81436E90 | FC 00 00 50 */	fneg f0, f0
/* 81436E94 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 81436E98 | D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 81436E9C | D0 01 00 2C */	stfs f0, 0x2c(r1)
.L_81436EA0:
/* 81436EA0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81436EA4 | 48 00 00 58 */	b .L_81436EFC
.L_81436EA8:
/* 81436EA8 | C0 45 00 40 */	lfs f2, 0x40(r5)
/* 81436EAC | C0 25 00 38 */	lfs f1, 0x38(r5)
/* 81436EB0 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 81436EB4 | EC 22 08 28 */	fsubs f1, f2, f1
/* 81436EB8 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81436EBC | 7C 00 00 26 */	mfcr r0
/* 81436EC0 | 54 00 0F FF */	srwi. r0, r0, 31
/* 81436EC4 | 41 82 00 38 */	beq .L_81436EFC
/* 81436EC8 | 7C C3 33 78 */	mr r3, r6
/* 81436ECC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81436ED0 | 48 10 9F 8D */	bl fn_81540E5C
/* 81436ED4 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81436ED8 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81436EDC | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 81436EE0 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 81436EE4 | FC 40 10 50 */	fneg f2, f2
/* 81436EE8 | FC 20 08 50 */	fneg f1, f1
/* 81436EEC | FC 00 00 50 */	fneg f0, f0
/* 81436EF0 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 81436EF4 | D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 81436EF8 | D0 01 00 2C */	stfs f0, 0x2c(r1)
.L_81436EFC:
/* 81436EFC | 7C C3 33 78 */	mr r3, r6
/* 81436F00 | 7F C4 F3 78 */	mr r4, r30
/* 81436F04 | 48 10 9F 59 */	bl fn_81540E5C
/* 81436F08 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81436F0C | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81436F10 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81436F14 | 7C 08 03 A6 */	mtlr r0
/* 81436F18 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81436F1C | 4E 80 00 20 */	blr
.endfn AdjustPaneMtx__Q39textinput11nw4rmanager6LayoutFRA3_A4_fRCQ34nw4r3lyt8DrawInfoRCQ34nw4r4math5MTX34

# .text:0x11BC | 0x81436F20 | size: 0x40
# textinput::nw4rmanager::AnmPane::~AnmPane()
.fn __dt__Q39textinput11nw4rmanager7AnmPaneFv, global
/* 81436F20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81436F24 | 7C 08 02 A6 */	mflr r0
/* 81436F28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436F2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81436F30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81436F34 | 7C 7F 1B 78 */	mr r31, r3
/* 81436F38 | 41 82 00 10 */	beq .L_81436F48
/* 81436F3C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81436F40 | 40 81 00 08 */	ble .L_81436F48
/* 81436F44 | 48 1C 11 A1 */	bl __dl__FPv
.L_81436F48:
/* 81436F48 | 7F E3 FB 78 */	mr r3, r31
/* 81436F4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81436F50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81436F54 | 7C 08 03 A6 */	mtlr r0
/* 81436F58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81436F5C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput11nw4rmanager7AnmPaneFv

# .text:0x11FC | 0x81436F60 | size: 0xB4
# textinput::nw4rmanager::AnmPane::addAnimation(MEMAllocator*, unsigned long, textinput::AnimTransformPane*, bool, bool)
.fn addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb, global
/* 81436F60 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81436F64 | 7C 08 02 A6 */	mflr r0
/* 81436F68 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81436F6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81436F70 | 48 1C 25 51 */	bl _savegpr_27
/* 81436F74 | 7C 7B 1B 78 */	mr r27, r3
/* 81436F78 | 7C 83 23 78 */	mr r3, r4
/* 81436F7C | 7C BC 2B 78 */	mr r28, r5
/* 81436F80 | 7C DD 33 78 */	mr r29, r6
/* 81436F84 | 7C FE 3B 78 */	mr r30, r7
/* 81436F88 | 7D 1F 43 78 */	mr r31, r8
/* 81436F8C | 38 80 00 18 */	li r4, 0x18
/* 81436F90 | 48 12 46 D9 */	bl fn_8155B668
/* 81436F94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81436F98 | 41 82 00 1C */	beq .L_81436FB4
/* 81436F9C | 93 A3 00 00 */	stw r29, 0x0(r3)
/* 81436FA0 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 81436FA4 | 93 83 00 04 */	stw r28, 0x4(r3)
/* 81436FA8 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 81436FAC | 9B C3 00 0C */	stb r30, 0xc(r3)
/* 81436FB0 | 9B E3 00 0D */	stb r31, 0xd(r3)
.L_81436FB4:
/* 81436FB4 | 7C 64 1B 78 */	mr r4, r3
/* 81436FB8 | 38 7B 00 08 */	addi r3, r27, 0x8
/* 81436FBC | 48 0D B0 B9 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81436FC0 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81436FC4 | 7F A4 EB 78 */	mr r4, r29
/* 81436FC8 | 7F E5 FB 78 */	mr r5, r31
/* 81436FCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436FD0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81436FD4 | 7D 89 03 A6 */	mtctr r12
/* 81436FD8 | 4E 80 04 21 */	bctrl
/* 81436FDC | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81436FE0 | 7F A4 EB 78 */	mr r4, r29
/* 81436FE4 | 7F E6 FB 78 */	mr r6, r31
/* 81436FE8 | 38 A0 00 00 */	li r5, 0x0
/* 81436FEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81436FF0 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81436FF4 | 7D 89 03 A6 */	mtctr r12
/* 81436FF8 | 4E 80 04 21 */	bctrl
/* 81436FFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81437000 | 48 1C 25 0D */	bl _restgpr_27
/* 81437004 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81437008 | 7C 08 03 A6 */	mtlr r0
/* 8143700C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81437010 | 4E 80 00 20 */	blr
.endfn addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb

# .text:0x12B0 | 0x81437014 | size: 0xAC
# textinput::nw4rmanager::AnmPane::forceAddAnimation(MEMAllocator*, unsigned long, textinput::AnimTransformPane*, const char*, bool, bool)
.fn forceAddAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanePCcbb, global
/* 81437014 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81437018 | 7C 08 02 A6 */	mflr r0
/* 8143701C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81437020 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81437024 | 48 1C 24 99 */	bl _savegpr_26
/* 81437028 | 7C 7A 1B 78 */	mr r26, r3
/* 8143702C | 7C 83 23 78 */	mr r3, r4
/* 81437030 | 7C BB 2B 78 */	mr r27, r5
/* 81437034 | 7C DC 33 78 */	mr r28, r6
/* 81437038 | 7C FD 3B 78 */	mr r29, r7
/* 8143703C | 7D 1E 43 78 */	mr r30, r8
/* 81437040 | 7D 3F 4B 78 */	mr r31, r9
/* 81437044 | 38 80 00 18 */	li r4, 0x18
/* 81437048 | 48 12 46 21 */	bl fn_8155B668
/* 8143704C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81437050 | 41 82 00 1C */	beq .L_8143706C
/* 81437054 | 93 83 00 00 */	stw r28, 0x0(r3)
/* 81437058 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 8143705C | 93 63 00 04 */	stw r27, 0x4(r3)
/* 81437060 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 81437064 | 9B C3 00 0C */	stb r30, 0xc(r3)
/* 81437068 | 9B E3 00 0D */	stb r31, 0xd(r3)
.L_8143706C:
/* 8143706C | 7C 64 1B 78 */	mr r4, r3
/* 81437070 | 38 7A 00 08 */	addi r3, r26, 0x8
/* 81437074 | 48 0D B0 01 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81437078 | 80 9A 00 04 */	lwz r4, 0x4(r26)
/* 8143707C | 7F 83 E3 78 */	mr r3, r28
/* 81437080 | 7F A5 EB 78 */	mr r5, r29
/* 81437084 | 48 01 30 91 */	bl ForceBind__Q29textinput17AnimTransformPaneFPQ34nw4r3lyt4PanePCc
/* 81437088 | 80 7A 00 04 */	lwz r3, 0x4(r26)
/* 8143708C | 7F 84 E3 78 */	mr r4, r28
/* 81437090 | 7F E6 FB 78 */	mr r6, r31
/* 81437094 | 38 A0 00 00 */	li r5, 0x0
/* 81437098 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143709C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 814370A0 | 7D 89 03 A6 */	mtctr r12
/* 814370A4 | 4E 80 04 21 */	bctrl
/* 814370A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814370AC | 48 1C 24 5D */	bl _restgpr_26
/* 814370B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814370B4 | 7C 08 03 A6 */	mtlr r0
/* 814370B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814370BC | 4E 80 00 20 */	blr
.endfn forceAddAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanePCcbb

# .text:0x135C | 0x814370C0 | size: 0xFC
# textinput::nw4rmanager::AnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl, global
/* 814370C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814370C4 | 7C 08 02 A6 */	mflr r0
/* 814370C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814370CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814370D0 | 7C 9F 23 78 */	mr r31, r4
/* 814370D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814370D8 | 7C 7E 1B 78 */	mr r30, r3
/* 814370DC | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 814370E0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814370E4 | 41 82 00 24 */	beq .L_81437108
/* 814370E8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814370EC | 38 A0 00 00 */	li r5, 0x0
/* 814370F0 | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 814370F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814370F8 | 88 C6 00 0D */	lbz r6, 0xd(r6)
/* 814370FC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81437100 | 7D 89 03 A6 */	mtctr r12
/* 81437104 | 4E 80 04 21 */	bctrl
.L_81437108:
/* 81437108 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143710C | 7F C3 F3 78 */	mr r3, r30
/* 81437110 | 7F E4 FB 78 */	mr r4, r31
/* 81437114 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81437118 | 7D 89 03 A6 */	mtctr r12
/* 8143711C | 4E 80 04 21 */	bctrl
/* 81437120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81437124 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 81437128 | 41 82 00 7C */	beq .L_814371A4
/* 8143712C | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 81437130 | 38 A0 00 01 */	li r5, 0x1
/* 81437134 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 81437138 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8143713C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81437140 | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 81437144 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81437148 | 80 DE 00 14 */	lwz r6, 0x14(r30)
/* 8143714C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81437150 | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 81437154 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81437158 | 88 C6 00 0D */	lbz r6, 0xd(r6)
/* 8143715C | 7D 89 03 A6 */	mtctr r12
/* 81437160 | 4E 80 04 21 */	bctrl
/* 81437164 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81437168 | 7F C3 F3 78 */	mr r3, r30
/* 8143716C | 38 80 00 03 */	li r4, 0x3
/* 81437170 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81437174 | 7D 89 03 A6 */	mtctr r12
/* 81437178 | 4E 80 04 21 */	bctrl
/* 8143717C | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81437180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81437184 | 41 82 00 20 */	beq .L_814371A4
/* 81437188 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143718C | 7F C5 F3 78 */	mr r5, r30
/* 81437190 | 38 80 00 00 */	li r4, 0x0
/* 81437194 | 80 DE 00 14 */	lwz r6, 0x14(r30)
/* 81437198 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143719C | 7D 89 03 A6 */	mtctr r12
/* 814371A0 | 4E 80 04 21 */	bctrl
.L_814371A4:
/* 814371A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814371A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814371AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814371B0 | 7C 08 03 A6 */	mtlr r0
/* 814371B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814371B8 | 4E 80 00 20 */	blr
.endfn changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl

# .text:0x1458 | 0x814371BC | size: 0x128
# textinput::nw4rmanager::AnmPane::calc()
.fn calc__Q39textinput11nw4rmanager7AnmPaneFv, global
/* 814371BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814371C0 | 7C 08 02 A6 */	mflr r0
/* 814371C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814371C8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814371CC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814371D0 | 7C 7E 1B 78 */	mr r30, r3
/* 814371D4 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 814371D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814371DC | 41 82 00 F0 */	beq .L_814372CC
/* 814371E0 | C0 24 00 08 */	lfs f1, 0x8(r4)
/* 814371E4 | C0 02 8A 14 */	lfs f0, lbl_81694E14@sda21(r0)
/* 814371E8 | EC 01 00 2A */	fadds f0, f1, f0
/* 814371EC | D0 04 00 08 */	stfs f0, 0x8(r4)
/* 814371F0 | 83 E3 00 14 */	lwz r31, 0x14(r3)
/* 814371F4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814371F8 | 48 0F 25 55 */	bl fn_8152974C
/* 814371FC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81437200 | 3C 00 43 30 */	lis r0, 0x4330
/* 81437204 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81437208 | C8 42 8A 20 */	lfd f2, lbl_81694E20@sda21(r0)
/* 8143720C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81437210 | C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 81437214 | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 81437218 | EC 21 10 28 */	fsubs f1, f1, f2
/* 8143721C | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81437220 | 4C 41 13 82 */	cror eq, gt, eq
/* 81437224 | 40 82 00 9C */	bne .L_814372C0
/* 81437228 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8143722C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81437230 | 41 82 00 20 */	beq .L_81437250
/* 81437234 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 81437238 | D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 8143723C | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 81437240 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81437244 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81437248 | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8143724C | 48 00 00 80 */	b .L_814372CC
.L_81437250:
/* 81437250 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81437254 | 38 A0 00 00 */	li r5, 0x0
/* 81437258 | 80 DE 00 14 */	lwz r6, 0x14(r30)
/* 8143725C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81437260 | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 81437264 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81437268 | 88 C6 00 0D */	lbz r6, 0xd(r6)
/* 8143726C | 7D 89 03 A6 */	mtctr r12
/* 81437270 | 4E 80 04 21 */	bctrl
/* 81437274 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81437278 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143727C | 41 82 00 20 */	beq .L_8143729C
/* 81437280 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81437284 | 7F C5 F3 78 */	mr r5, r30
/* 81437288 | 38 80 00 01 */	li r4, 0x1
/* 8143728C | 80 DE 00 14 */	lwz r6, 0x14(r30)
/* 81437290 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81437294 | 7D 89 03 A6 */	mtctr r12
/* 81437298 | 4E 80 04 21 */	bctrl
.L_8143729C:
/* 8143729C | 38 00 00 00 */	li r0, 0x0
/* 814372A0 | 7F C3 F3 78 */	mr r3, r30
/* 814372A4 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 814372A8 | 38 80 00 04 */	li r4, 0x4
/* 814372AC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814372B0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814372B4 | 7D 89 03 A6 */	mtctr r12
/* 814372B8 | 4E 80 04 21 */	bctrl
/* 814372BC | 48 00 00 10 */	b .L_814372CC
.L_814372C0:
/* 814372C0 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 814372C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814372C8 | D0 03 00 10 */	stfs f0, 0x10(r3)
.L_814372CC:
/* 814372CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814372D0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814372D4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814372D8 | 7C 08 03 A6 */	mtlr r0
/* 814372DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814372E0 | 4E 80 00 20 */	blr
.endfn calc__Q39textinput11nw4rmanager7AnmPaneFv

# .text:0x1580 | 0x814372E4 | size: 0x38
# textinput::nw4rmanager::AnmPane::storeAnmState(textinput::nw4rmanager::AnmPane::AnmState*)
.fn storeAnmState__Q39textinput11nw4rmanager7AnmPaneFPQ49textinput11nw4rmanager7AnmPane8AnmState, global
/* 814372E4 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 814372E8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814372EC | 41 82 00 1C */	beq .L_81437308
/* 814372F0 | C0 05 00 08 */	lfs f0, 0x8(r5)
/* 814372F4 | D0 04 00 04 */	stfs f0, 0x4(r4)
/* 814372F8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 814372FC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81437300 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 81437304 | 4E 80 00 20 */	blr
.L_81437308:
/* 81437308 | C0 02 8A 10 */	lfs f0, lbl_81694E10@sda21(r0)
/* 8143730C | 38 00 FF FF */	li r0, -0x1
/* 81437310 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 81437314 | D0 04 00 04 */	stfs f0, 0x4(r4)
/* 81437318 | 4E 80 00 20 */	blr
.endfn storeAnmState__Q39textinput11nw4rmanager7AnmPaneFPQ49textinput11nw4rmanager7AnmPane8AnmState

# .text:0x15B8 | 0x8143731C | size: 0xD4
# textinput::nw4rmanager::AnmPane::restoreAnmState(const textinput::nw4rmanager::AnmPane::AnmState*)
.fn restoreAnmState__Q39textinput11nw4rmanager7AnmPaneFPCQ49textinput11nw4rmanager7AnmPane8AnmState, global
/* 8143731C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81437320 | 7C 08 02 A6 */	mflr r0
/* 81437324 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81437328 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143732C | 7C 9F 23 78 */	mr r31, r4
/* 81437330 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81437334 | 7C 7E 1B 78 */	mr r30, r3
/* 81437338 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8143733C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81437340 | 41 82 00 24 */	beq .L_81437364
/* 81437344 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81437348 | 38 A0 00 00 */	li r5, 0x0
/* 8143734C | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 81437350 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81437354 | 88 C6 00 0D */	lbz r6, 0xd(r6)
/* 81437358 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8143735C | 7D 89 03 A6 */	mtctr r12
/* 81437360 | 4E 80 04 21 */	bctrl
.L_81437364:
/* 81437364 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81437368 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8143736C | 40 80 00 10 */	bge .L_8143737C
/* 81437370 | 38 00 00 00 */	li r0, 0x0
/* 81437374 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81437378 | 48 00 00 1C */	b .L_81437394
.L_8143737C:
/* 8143737C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81437380 | 7F C3 F3 78 */	mr r3, r30
/* 81437384 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81437388 | 7D 89 03 A6 */	mtctr r12
/* 8143738C | 4E 80 04 21 */	bctrl
/* 81437390 | 90 7E 00 14 */	stw r3, 0x14(r30)
.L_81437394:
/* 81437394 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 81437398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143739C | 41 82 00 3C */	beq .L_814373D8
/* 814373A0 | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 814373A4 | 38 A0 00 01 */	li r5, 0x1
/* 814373A8 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 814373AC | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 814373B0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814373B4 | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 814373B8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814373BC | 80 DE 00 14 */	lwz r6, 0x14(r30)
/* 814373C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814373C4 | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 814373C8 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 814373CC | 88 C6 00 0D */	lbz r6, 0xd(r6)
/* 814373D0 | 7D 89 03 A6 */	mtctr r12
/* 814373D4 | 4E 80 04 21 */	bctrl
.L_814373D8:
/* 814373D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814373DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814373E0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814373E4 | 7C 08 03 A6 */	mtlr r0
/* 814373E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814373EC | 4E 80 00 20 */	blr
.endfn restoreAnmState__Q39textinput11nw4rmanager7AnmPaneFPCQ49textinput11nw4rmanager7AnmPane8AnmState

# .text:0x168C | 0x814373F0 | size: 0x148
# textinput::nw4rmanager::AnmPane::destroy(MEMAllocator*)
.fn destroy__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocator, global
/* 814373F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814373F4 | 7C 08 02 A6 */	mflr r0
/* 814373F8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814373FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81437400 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81437404 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81437408 | 7C 9E 23 78 */	mr r30, r4
/* 8143740C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81437410 | 7C 7D 1B 78 */	mr r29, r3
/* 81437414 | 41 82 00 8C */	beq .L_814374A0
/* 81437418 | 38 80 00 00 */	li r4, 0x0
/* 8143741C | 38 63 00 08 */	addi r3, r3, 0x8
/* 81437420 | 48 0D AE BD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81437424 | 7C 7F 1B 78 */	mr r31, r3
/* 81437428 | 48 00 00 48 */	b .L_81437470
.L_8143742C:
/* 8143742C | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81437430 | 38 A0 00 01 */	li r5, 0x1
/* 81437434 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81437438 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143743C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81437440 | 7D 89 03 A6 */	mtctr r12
/* 81437444 | 4E 80 04 21 */	bctrl
/* 81437448 | 7F E4 FB 78 */	mr r4, r31
/* 8143744C | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81437450 | 48 0D AE 21 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81437454 | 7F C3 F3 78 */	mr r3, r30
/* 81437458 | 7F E4 FB 78 */	mr r4, r31
/* 8143745C | 48 12 42 1D */	bl fn_8155B678
/* 81437460 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81437464 | 38 80 00 00 */	li r4, 0x0
/* 81437468 | 48 0D AE 75 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8143746C | 7C 7F 1B 78 */	mr r31, r3
.L_81437470:
/* 81437470 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81437474 | 40 82 FF B8 */	bne .L_8143742C
/* 81437478 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143747C | 7F A3 EB 78 */	mr r3, r29
/* 81437480 | 38 80 FF FF */	li r4, -0x1
/* 81437484 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81437488 | 7D 89 03 A6 */	mtctr r12
/* 8143748C | 4E 80 04 21 */	bctrl
/* 81437490 | 7F C3 F3 78 */	mr r3, r30
/* 81437494 | 7F A4 EB 78 */	mr r4, r29
/* 81437498 | 48 12 41 E1 */	bl fn_8155B678
/* 8143749C | 48 00 00 80 */	b .L_8143751C
.L_814374A0:
/* 814374A0 | 38 80 00 00 */	li r4, 0x0
/* 814374A4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814374A8 | 48 0D AE 35 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814374AC | 7C 7F 1B 78 */	mr r31, r3
/* 814374B0 | 48 00 00 44 */	b .L_814374F4
.L_814374B4:
/* 814374B4 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814374B8 | 38 A0 00 01 */	li r5, 0x1
/* 814374BC | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814374C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814374C4 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814374C8 | 7D 89 03 A6 */	mtctr r12
/* 814374CC | 4E 80 04 21 */	bctrl
/* 814374D0 | 7F E4 FB 78 */	mr r4, r31
/* 814374D4 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 814374D8 | 48 0D AD 99 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 814374DC | 7F E3 FB 78 */	mr r3, r31
/* 814374E0 | 48 1C 0C 05 */	bl __dl__FPv
/* 814374E4 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 814374E8 | 38 80 00 00 */	li r4, 0x0
/* 814374EC | 48 0D AD F1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 814374F0 | 7C 7F 1B 78 */	mr r31, r3
.L_814374F4:
/* 814374F4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814374F8 | 40 82 FF BC */	bne .L_814374B4
/* 814374FC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81437500 | 41 82 00 1C */	beq .L_8143751C
/* 81437504 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81437508 | 7F A3 EB 78 */	mr r3, r29
/* 8143750C | 38 80 00 01 */	li r4, 0x1
/* 81437510 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81437514 | 7D 89 03 A6 */	mtctr r12
/* 81437518 | 4E 80 04 21 */	bctrl
.L_8143751C:
/* 8143751C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81437520 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81437524 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81437528 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8143752C | 7C 08 03 A6 */	mtlr r0
/* 81437530 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81437534 | 4E 80 00 20 */	blr
.endfn destroy__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocator

# .text:0x17D4 | 0x81437538 | size: 0x8
# textinput::nw4rmanager::AnimPaneGroup::addAnimPane(textinput::nw4rmanager::AnmPane*)
.fn addAnimPane__Q39textinput11nw4rmanager13AnimPaneGroupFPQ39textinput11nw4rmanager7AnmPane, global
/* 81437538 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8143753C | 48 0D AB 38 */	b List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.endfn addAnimPane__Q39textinput11nw4rmanager13AnimPaneGroupFPQ39textinput11nw4rmanager7AnmPane

# .text:0x17DC | 0x81437540 | size: 0x4
# textinput::nw4rmanager::AnimPaneGroup::init()
.fn init__Q39textinput11nw4rmanager13AnimPaneGroupFv, global
/* 81437540 | 4E 80 00 20 */	blr
.endfn init__Q39textinput11nw4rmanager13AnimPaneGroupFv

# .text:0x17E0 | 0x81437544 | size: 0x4
# textinput::nw4rmanager::AnimPaneGroup::create()
.fn create__Q39textinput11nw4rmanager13AnimPaneGroupFv, global
/* 81437544 | 4E 80 00 20 */	blr
.endfn create__Q39textinput11nw4rmanager13AnimPaneGroupFv

# .text:0x17E4 | 0x81437548 | size: 0x4
# textinput::nw4rmanager::AnmPane::init()
.fn init__Q39textinput11nw4rmanager7AnmPaneFv, global
/* 81437548 | 4E 80 00 20 */	blr
.endfn init__Q39textinput11nw4rmanager7AnmPaneFv

# .text:0x17E8 | 0x8143754C | size: 0x4
# textinput::gui::GUIInterface::draw(float(&)[3][4])
.fn draw__Q39textinput3gui12GUIInterfaceFRA3_A4_f, global
/* 8143754C | 4E 80 00 20 */	blr
.endfn draw__Q39textinput3gui12GUIInterfaceFRA3_A4_f

# .text:0x17EC | 0x81437550 | size: 0x4
# textinput::gui::GUIInterface::draw()
.fn draw__Q39textinput3gui12GUIInterfaceFv, global
/* 81437550 | 4E 80 00 20 */	blr
.endfn draw__Q39textinput3gui12GUIInterfaceFv

# .text:0x17F0 | 0x81437554 | size: 0x4
# textinput::gui::GUIInterface::calc()
.fn calc__Q39textinput3gui12GUIInterfaceFv, global
/* 81437554 | 4E 80 00 20 */	blr
.endfn calc__Q39textinput3gui12GUIInterfaceFv

# 0x8165F818..0x8165F8F0 | size: 0xD8
.data
.balign 8

# .data:0x0 | 0x8165F818 | size: 0x78
# textinput::nw4rmanager::Layout::__vtable
.obj __vt__Q39textinput11nw4rmanager6Layout, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput11nw4rmanager6LayoutFv
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte init__Q39textinput11nw4rmanager6LayoutFv
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte draw__Q39textinput11nw4rmanager6LayoutFv
	.4byte calc__Q39textinput11nw4rmanager6LayoutFv
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFRQ39textinput5input10HKBManager
	.4byte getLayout__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte getPane__Q39textinput11nw4rmanager6LayoutCFPCc
	.4byte getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc
	.4byte setAnimOn__Q39textinput11nw4rmanager6LayoutFb
	.4byte drawPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte setRootPaneScaleFor16x9__Q39textinput11nw4rmanager6LayoutFv
	.4byte setRootPaneScaleFor4x3__Q39textinput11nw4rmanager6LayoutFv
	.4byte setProjectionMtx__Q39textinput11nw4rmanager6LayoutFv
	.4byte setPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt4Pane
	.4byte initPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFv
	.4byte setVisible__Q39textinput11nw4rmanager6LayoutFPCcb
	.4byte isVisible__Q39textinput11nw4rmanager6LayoutCFPCcPb
	.4byte setString__Q39textinput11nw4rmanager6LayoutFPCcPCw
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFw
	.4byte getAnmPaneList__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte AdjustPaneMtx__Q39textinput11nw4rmanager6LayoutFRA3_A4_fRCQ34nw4r3lyt8DrawInfoRCQ34nw4r4math5MTX34
	.4byte createPaneManager__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
.endobj __vt__Q39textinput11nw4rmanager6Layout

# .data:0x78 | 0x8165F890 | size: 0x1C
# textinput::nw4rmanager::PaneFifo::__vtable
.obj __vt__Q39textinput11nw4rmanager8PaneFifo, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput11nw4rmanager8PaneFifoFv
	.4byte push__Q39textinput11nw4rmanager8PaneFifoFPQ34nw4r3lyt4Pane
	.4byte get__Q39textinput11nw4rmanager8PaneFifoFi
	.4byte getLast__Q39textinput11nw4rmanager8PaneFifoFv
	.4byte getSize__Q39textinput11nw4rmanager8PaneFifoFv
.endobj __vt__Q39textinput11nw4rmanager8PaneFifo

# .data:0x94 | 0x8165F8AC | size: 0x1C
# textinput::nw4rmanager::AnimPaneGroup::__vtable
.obj __vt__Q39textinput11nw4rmanager13AnimPaneGroup, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q39textinput11nw4rmanager13AnimPaneGroupFv
	.4byte init__Q39textinput11nw4rmanager13AnimPaneGroupFv
	.4byte calc__Q39textinput11nw4rmanager13AnimPaneGroupFv
	.4byte addAnimPane__Q39textinput11nw4rmanager13AnimPaneGroupFPQ39textinput11nw4rmanager7AnmPane
	.4byte changeAnimation__Q39textinput11nw4rmanager13AnimPaneGroupFUl
.endobj __vt__Q39textinput11nw4rmanager13AnimPaneGroup

# .data:0xB0 | 0x8165F8C8 | size: 0x28
# textinput::nw4rmanager::AnmPane::__vtable
.obj __vt__Q39textinput11nw4rmanager7AnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte 0x00000000
.endobj __vt__Q39textinput11nw4rmanager7AnmPane
