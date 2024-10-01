.include "macros.inc"
.file "iplLetterButton.cpp"

# 0x81396D28..0x8139BC94 | size: 0x4F6C
.text
.balign 4

# .text:0x0 | 0x81396D28 | size: 0x1C4
# ipl::scene::focus_object::focus_object(ipl::nand::LayoutFile*, ipl::nand::LayoutFile*, ipl::scene::BoardObject*)
.fn __ct__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFilePQ33ipl4nand10LayoutFilePQ33ipl5scene11BoardObject, global
/* 81396D28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81396D2C | 7C 08 02 A6 */	mflr r0
/* 81396D30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81396D34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81396D38 | 48 26 27 89 */	bl _savegpr_27
/* 81396D3C | 3D 20 81 65 */	lis r9, __vt__Q33ipl5scene5event@ha
/* 81396D40 | 3D 00 81 65 */	lis r8, __vt__Q33ipl5scene12button_event@ha
/* 81396D44 | 3B 80 00 00 */	li r28, 0x0
/* 81396D48 | 38 00 FF FF */	li r0, -0x1
/* 81396D4C | 3C E0 81 65 */	lis r7, __vt__Q33ipl5scene19optout_button_event@ha
/* 81396D50 | 39 29 BE 98 */	addi r9, r9, __vt__Q33ipl5scene5event@l
/* 81396D54 | 39 08 BE 7C */	addi r8, r8, __vt__Q33ipl5scene12button_event@l
/* 81396D58 | 93 83 00 00 */	stw r28, 0x0(r3)
/* 81396D5C | 38 E7 BE 60 */	addi r7, r7, __vt__Q33ipl5scene19optout_button_event@l
/* 81396D60 | 3B 63 00 58 */	addi r27, r3, 0x58
/* 81396D64 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81396D68 | 7C 7D 1B 78 */	mr r29, r3
/* 81396D6C | 7C 9E 23 78 */	mr r30, r4
/* 81396D70 | 7C BF 2B 78 */	mr r31, r5
/* 81396D74 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81396D78 | 93 83 00 0C */	stw r28, 0xc(r3)
/* 81396D7C | 93 83 00 10 */	stw r28, 0x10(r3)
/* 81396D80 | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 81396D84 | 93 83 00 18 */	stw r28, 0x18(r3)
/* 81396D88 | 93 83 00 1C */	stw r28, 0x1c(r3)
/* 81396D8C | 93 83 00 20 */	stw r28, 0x20(r3)
/* 81396D90 | 93 83 00 24 */	stw r28, 0x24(r3)
/* 81396D94 | 93 83 00 30 */	stw r28, 0x30(r3)
/* 81396D98 | 91 23 00 28 */	stw r9, 0x28(r3)
/* 81396D9C | 90 63 00 34 */	stw r3, 0x34(r3)
/* 81396DA0 | 93 83 00 40 */	stw r28, 0x40(r3)
/* 81396DA4 | 91 03 00 38 */	stw r8, 0x38(r3)
/* 81396DA8 | 90 63 00 44 */	stw r3, 0x44(r3)
/* 81396DAC | 93 83 00 50 */	stw r28, 0x50(r3)
/* 81396DB0 | 90 E3 00 48 */	stw r7, 0x48(r3)
/* 81396DB4 | 90 63 00 54 */	stw r3, 0x54(r3)
/* 81396DB8 | 7F 63 DB 78 */	mr r3, r27
/* 81396DBC | 4B FC CD C5 */	bl __ct__Q33ipl7utility8ScrollerFv
/* 81396DC0 | 38 7B 00 50 */	addi r3, r27, 0x50
/* 81396DC4 | 4B FC C7 CD */	bl __ct__Q33ipl7utility9BScrollerFv
/* 81396DC8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81396DCC | 93 9D 00 C8 */	stw r28, 0xc8(r29)
/* 81396DD0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81396DD4 | 38 7D 01 00 */	addi r3, r29, 0x100
/* 81396DD8 | 93 9D 00 CC */	stw r28, 0xcc(r29)
/* 81396DDC | 38 A0 00 04 */	li r5, 0x4
/* 81396DE0 | 93 9D 00 D0 */	stw r28, 0xd0(r29)
/* 81396DE4 | 93 9D 00 D4 */	stw r28, 0xd4(r29)
/* 81396DE8 | 93 9D 00 F8 */	stw r28, 0xf8(r29)
/* 81396DEC | 9B 9D 00 FC */	stb r28, 0xfc(r29)
/* 81396DF0 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 81396DF4 | 48 25 EC 89 */	bl fn_815F5A7C
/* 81396DF8 | 93 9D 01 20 */	stw r28, 0x120(r29)
/* 81396DFC | 38 7D 01 50 */	addi r3, r29, 0x150
/* 81396E00 | 93 9D 01 24 */	stw r28, 0x124(r29)
/* 81396E04 | 93 9D 01 28 */	stw r28, 0x128(r29)
/* 81396E08 | 9B 9D 01 2C */	stb r28, 0x12c(r29)
/* 81396E0C | 93 9D 01 30 */	stw r28, 0x130(r29)
/* 81396E10 | 93 9D 01 34 */	stw r28, 0x134(r29)
/* 81396E14 | 93 9D 01 38 */	stw r28, 0x138(r29)
/* 81396E18 | 9B 9D 01 3C */	stb r28, 0x13c(r29)
/* 81396E1C | 4B FF F5 55 */	bl __ct__Q33ipl5scene12UrlProcessorFv
/* 81396E20 | 3C 80 81 65 */	lis r4, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>"@ha
/* 81396E24 | 38 00 00 04 */	li r0, 0x4
/* 81396E28 | 38 84 BE 40 */	addi r4, r4, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>"@l
/* 81396E2C | 7F 83 E3 78 */	mr r3, r28
/* 81396E30 | 90 9D 01 A8 */	stw r4, 0x1a8(r29)
/* 81396E34 | 93 9D 01 F4 */	stw r28, 0x1f4(r29)
/* 81396E38 | 93 9D 01 F8 */	stw r28, 0x1f8(r29)
/* 81396E3C | 9B 9D 01 FC */	stb r28, 0x1fc(r29)
/* 81396E40 | 9B 9D 01 FD */	stb r28, 0x1fd(r29)
/* 81396E44 | 9B 9D 01 FE */	stb r28, 0x1fe(r29)
/* 81396E48 | 9B 9D 01 FF */	stb r28, 0x1ff(r29)
/* 81396E4C | 9B 9D 02 00 */	stb r28, 0x200(r29)
/* 81396E50 | 7C 09 03 A6 */	mtctr r0
.L_81396E54:
/* 81396E54 | 7C 9D 1A 14 */	add r4, r29, r3
/* 81396E58 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81396E5C | 93 84 01 E0 */	stw r28, 0x1e0(r4)
/* 81396E60 | 42 00 FF F4 */	bdnz .L_81396E54
/* 81396E64 | 38 00 00 04 */	li r0, 0x4
/* 81396E68 | 38 A0 00 00 */	li r5, 0x0
/* 81396E6C | 38 80 00 00 */	li r4, 0x0
/* 81396E70 | 7C 09 03 A6 */	mtctr r0
.L_81396E74:
/* 81396E74 | 7C 7D 2A 14 */	add r3, r29, r5
/* 81396E78 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81396E7C | 98 83 01 A4 */	stb r4, 0x1a4(r3)
/* 81396E80 | 42 00 FF F4 */	bdnz .L_81396E74
/* 81396E84 | 38 00 00 00 */	li r0, 0x0
/* 81396E88 | 38 60 00 20 */	li r3, 0x20
/* 81396E8C | 38 E0 30 00 */	li r7, 0x3000
/* 81396E90 | 38 C0 00 0A */	li r6, 0xa
/* 81396E94 | 38 A0 00 09 */	li r5, 0x9
/* 81396E98 | B0 7D 01 14 */	sth r3, 0x114(r29)
/* 81396E9C | 7F A3 EB 78 */	mr r3, r29
/* 81396EA0 | 7F C4 F3 78 */	mr r4, r30
/* 81396EA4 | B0 FD 01 16 */	sth r7, 0x116(r29)
/* 81396EA8 | B0 DD 01 18 */	sth r6, 0x118(r29)
/* 81396EAC | B0 BD 01 1A */	sth r5, 0x11a(r29)
/* 81396EB0 | B0 1D 01 1C */	sth r0, 0x11c(r29)
/* 81396EB4 | B0 1D 01 1E */	sth r0, 0x11e(r29)
/* 81396EB8 | 48 00 20 3D */	bl make_layout__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFile
/* 81396EBC | 7F A3 EB 78 */	mr r3, r29
/* 81396EC0 | 48 00 26 29 */	bl make_gui_mgr__Q33ipl5scene12focus_objectFv
/* 81396EC4 | 7F A3 EB 78 */	mr r3, r29
/* 81396EC8 | 7F E4 FB 78 */	mr r4, r31
/* 81396ECC | 48 00 32 15 */	bl init__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFile
/* 81396ED0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81396ED4 | 7F A3 EB 78 */	mr r3, r29
/* 81396ED8 | 48 26 26 35 */	bl _restgpr_27
/* 81396EDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81396EE0 | 7C 08 03 A6 */	mtlr r0
/* 81396EE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81396EE8 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFilePQ33ipl4nand10LayoutFilePQ33ipl5scene11BoardObject

# .text:0x1C4 | 0x81396EEC | size: 0x40
# ipl::utility::Scroller::~Scroller()
.fn __dt__Q33ipl7utility8ScrollerFv, global
/* 81396EEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81396EF0 | 7C 08 02 A6 */	mflr r0
/* 81396EF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81396EF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81396EFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81396F00 | 7C 7F 1B 78 */	mr r31, r3
/* 81396F04 | 41 82 00 10 */	beq .L_81396F14
/* 81396F08 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81396F0C | 40 81 00 08 */	ble .L_81396F14
/* 81396F10 | 48 26 11 D5 */	bl __dl__FPv
.L_81396F14:
/* 81396F14 | 7F E3 FB 78 */	mr r3, r31
/* 81396F18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396F1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81396F20 | 7C 08 03 A6 */	mtlr r0
/* 81396F24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81396F28 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl7utility8ScrollerFv

# .text:0x204 | 0x81396F2C | size: 0x58
# ipl::scene::scroller::~scroller()
.fn __dt__Q33ipl5scene8scrollerFv, global
/* 81396F2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81396F30 | 7C 08 02 A6 */	mflr r0
/* 81396F34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81396F38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81396F3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81396F40 | 7C 9F 23 78 */	mr r31, r4
/* 81396F44 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81396F48 | 7C 7E 1B 78 */	mr r30, r3
/* 81396F4C | 41 82 00 1C */	beq .L_81396F68
/* 81396F50 | 38 80 FF FF */	li r4, -0x1
/* 81396F54 | 4B FF FF 99 */	bl __dt__Q33ipl7utility8ScrollerFv
/* 81396F58 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81396F5C | 40 81 00 0C */	ble .L_81396F68
/* 81396F60 | 7F C3 F3 78 */	mr r3, r30
/* 81396F64 | 48 26 11 81 */	bl __dl__FPv
.L_81396F68:
/* 81396F68 | 7F C3 F3 78 */	mr r3, r30
/* 81396F6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396F70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81396F74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81396F78 | 7C 08 03 A6 */	mtlr r0
/* 81396F7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81396F80 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene8scrollerFv

# .text:0x25C | 0x81396F84 | size: 0x40
# ipl::math::Interporation<ipl::math::VEC3>::~Interporation()
.fn "__dt__Q33ipl4math31Interporation<Q33ipl4math4VEC3>Fv", global
/* 81396F84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81396F88 | 7C 08 02 A6 */	mflr r0
/* 81396F8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81396F90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81396F94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81396F98 | 7C 7F 1B 78 */	mr r31, r3
/* 81396F9C | 41 82 00 10 */	beq .L_81396FAC
/* 81396FA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81396FA4 | 40 81 00 08 */	ble .L_81396FAC
/* 81396FA8 | 48 26 11 3D */	bl __dl__FPv
.L_81396FAC:
/* 81396FAC | 7F E3 FB 78 */	mr r3, r31
/* 81396FB0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396FB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81396FB8 | 7C 08 03 A6 */	mtlr r0
/* 81396FBC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81396FC0 | 4E 80 00 20 */	blr
.endfn "__dt__Q33ipl4math31Interporation<Q33ipl4math4VEC3>Fv"

# .text:0x29C | 0x81396FC4 | size: 0x40
# ipl::math::LinearIntp<ipl::math::VEC3>::~LinearIntp()
.fn "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv", global
/* 81396FC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81396FC8 | 7C 08 02 A6 */	mflr r0
/* 81396FCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81396FD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81396FD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81396FD8 | 7C 7F 1B 78 */	mr r31, r3
/* 81396FDC | 41 82 00 10 */	beq .L_81396FEC
/* 81396FE0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81396FE4 | 40 81 00 08 */	ble .L_81396FEC
/* 81396FE8 | 48 26 10 FD */	bl __dl__FPv
.L_81396FEC:
/* 81396FEC | 7F E3 FB 78 */	mr r3, r31
/* 81396FF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396FF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81396FF8 | 7C 08 03 A6 */	mtlr r0
/* 81396FFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397000 | 4E 80 00 20 */	blr
.endfn "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv"

# .text:0x2DC | 0x81397004 | size: 0x128
# ipl::scene::focus_object::~focus_object()
.fn __dt__Q33ipl5scene12focus_objectFv, global
/* 81397004 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81397008 | 7C 08 02 A6 */	mflr r0
/* 8139700C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397010 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81397014 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81397018 | 7C 9F 23 78 */	mr r31, r4
/* 8139701C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81397020 | 7C 7E 1B 78 */	mr r30, r3
/* 81397024 | 41 82 00 EC */	beq .L_81397110
/* 81397028 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8139702C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397030 | 41 82 00 18 */	beq .L_81397048
/* 81397034 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81397038 | 38 80 00 01 */	li r4, 0x1
/* 8139703C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81397040 | 7D 89 03 A6 */	mtctr r12
/* 81397044 | 4E 80 04 21 */	bctrl
.L_81397048:
/* 81397048 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8139704C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397050 | 41 82 00 18 */	beq .L_81397068
/* 81397054 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81397058 | 38 80 00 01 */	li r4, 0x1
/* 8139705C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81397060 | 7D 89 03 A6 */	mtctr r12
/* 81397064 | 4E 80 04 21 */	bctrl
.L_81397068:
/* 81397068 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8139706C | 38 80 00 01 */	li r4, 0x1
/* 81397070 | 48 03 A4 CD */	bl __dt__Q33ipl5scene11TextBalloonFv
/* 81397074 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 81397078 | 48 26 10 75 */	bl __dla__FPv
/* 8139707C | 38 7E 01 50 */	addi r3, r30, 0x150
/* 81397080 | 4B FF F4 71 */	bl destroy__Q33ipl5scene12UrlProcessorFv
/* 81397084 | 80 7E 01 24 */	lwz r3, 0x124(r30)
/* 81397088 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139708C | 41 82 00 08 */	beq .L_81397094
/* 81397090 | 48 26 10 5D */	bl __dla__FPv
.L_81397094:
/* 81397094 | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 81397098 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139709C | 41 82 00 08 */	beq .L_813970A4
/* 813970A0 | 48 26 10 4D */	bl __dla__FPv
.L_813970A4:
/* 813970A4 | 80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 813970A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813970AC | 41 82 00 08 */	beq .L_813970B4
/* 813970B0 | 48 26 10 3D */	bl __dla__FPv
.L_813970B4:
/* 813970B4 | 80 1E 01 34 */	lwz r0, 0x134(r30)
/* 813970B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813970BC | 41 82 00 14 */	beq .L_813970D0
/* 813970C0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813970C4 | 38 80 00 78 */	li r4, 0x78
/* 813970C8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813970CC | 4B FD 4C 8D */	bl muteOffBGM__Q33ipl3snd6SystemFi
.L_813970D0:
/* 813970D0 | 38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 813970D4 | 38 80 FF FF */	li r4, -0x1
/* 813970D8 | 4B FF FE ED */	bl "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv"
/* 813970DC | 38 7E 01 50 */	addi r3, r30, 0x150
/* 813970E0 | 38 80 FF FF */	li r4, -0x1
/* 813970E4 | 4B FF FB ED */	bl __dt__Q33ipl5scene12UrlProcessorFv
/* 813970E8 | 38 7E 01 00 */	addi r3, r30, 0x100
/* 813970EC | 38 80 FF FF */	li r4, -0x1
/* 813970F0 | 48 25 E9 DD */	bl fn_815F5ACC
/* 813970F4 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813970F8 | 38 80 FF FF */	li r4, -0x1
/* 813970FC | 4B FF FE 31 */	bl __dt__Q33ipl5scene8scrollerFv
/* 81397100 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81397104 | 40 81 00 0C */	ble .L_81397110
/* 81397108 | 7F C3 F3 78 */	mr r3, r30
/* 8139710C | 48 26 0F D9 */	bl __dl__FPv
.L_81397110:
/* 81397110 | 7F C3 F3 78 */	mr r3, r30
/* 81397114 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81397118 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139711C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81397120 | 7C 08 03 A6 */	mtlr r0
/* 81397124 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397128 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12focus_objectFv

# .text:0x404 | 0x8139712C | size: 0x248
# ipl::scene::focus_object::calc()
.fn calc__Q33ipl5scene12focus_objectFv, global
/* 8139712C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81397130 | 7C 08 02 A6 */	mflr r0
/* 81397134 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81397138 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139713C | 48 26 23 8D */	bl _savegpr_29
/* 81397140 | C0 23 00 98 */	lfs f1, 0x98(r3)
/* 81397144 | 38 00 00 00 */	li r0, 0x0
/* 81397148 | C0 03 00 90 */	lfs f0, 0x90(r3)
/* 8139714C | 7C 7D 1B 78 */	mr r29, r3
/* 81397150 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81397154 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 81397158 | 7F E0 00 26 */	mfcr r31
/* 8139715C | C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 81397160 | 57 FF 1F FE */	extrwi r31, r31, 1, 2
/* 81397164 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 81397168 | 7F C0 00 26 */	mfcr r30
/* 8139716C | 57 DE 1F FE */	extrwi r30, r30, 1, 2
/* 81397170 | 48 00 02 05 */	bl cmn_calc__Q33ipl5scene12focus_objectFv
/* 81397174 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 81397178 | 28 00 00 17 */	cmplwi r0, 0x17
/* 8139717C | 41 81 01 48 */	bgt .L_813972C4
/* 81397180 | 3C 60 81 65 */	lis r3, jumptable_8164BAA4@ha
/* 81397184 | 54 00 10 3A */	slwi r0, r0, 2
/* 81397188 | 38 63 BA A4 */	addi r3, r3, jumptable_8164BAA4@l
/* 8139718C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81397190 | 7C 69 03 A6 */	mtctr r3
/* 81397194 | 4E 80 04 20 */	bctr
.L_81397198:
/* 81397198 | 7F A3 EB 78 */	mr r3, r29
/* 8139719C | 48 00 1B 39 */	bl is_finished_fadein__Q33ipl5scene12focus_objectCFv
/* 813971A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813971A4 | 41 82 01 20 */	beq .L_813972C4
/* 813971A8 | 7F A3 EB 78 */	mr r3, r29
/* 813971AC | 48 00 1B D9 */	bl init_normal__Q33ipl5scene12focus_objectFv
/* 813971B0 | 48 00 01 14 */	b .L_813972C4
.L_813971B4:
/* 813971B4 | 7F A3 EB 78 */	mr r3, r29
/* 813971B8 | 48 00 04 29 */	bl stt_normal__Q33ipl5scene12focus_objectFv
/* 813971BC | 48 00 01 08 */	b .L_813972C4
.L_813971C0:
/* 813971C0 | 7F A3 EB 78 */	mr r3, r29
/* 813971C4 | 48 00 05 61 */	bl stt_fadeout__Q33ipl5scene12focus_objectFv
/* 813971C8 | 48 00 00 FC */	b .L_813972C4
.L_813971CC:
/* 813971CC | 7F A3 EB 78 */	mr r3, r29
/* 813971D0 | 48 00 05 99 */	bl stt_wait_btn__Q33ipl5scene12focus_objectFv
/* 813971D4 | 48 00 00 F0 */	b .L_813972C4
.L_813971D8:
/* 813971D8 | 7F A3 EB 78 */	mr r3, r29
/* 813971DC | 48 00 06 E5 */	bl stt_wait_msg__Q33ipl5scene12focus_objectFv
/* 813971E0 | 48 00 00 E4 */	b .L_813972C4
.L_813971E4:
/* 813971E4 | 7F A3 EB 78 */	mr r3, r29
/* 813971E8 | 48 00 07 7D */	bl stt_del_wait_msg__Q33ipl5scene12focus_objectFv
/* 813971EC | 48 00 00 D8 */	b .L_813972C4
.L_813971F0:
/* 813971F0 | 7F A3 EB 78 */	mr r3, r29
/* 813971F4 | 48 00 08 C9 */	bl stt_del_wait_delete__Q33ipl5scene12focus_objectFv
/* 813971F8 | 48 00 00 CC */	b .L_813972C4
.L_813971FC:
/* 813971FC | 7F A3 EB 78 */	mr r3, r29
/* 81397200 | 48 00 09 01 */	bl stt_pic_fadein__Q33ipl5scene12focus_objectFv
/* 81397204 | 48 00 00 C0 */	b .L_813972C4
.L_81397208:
/* 81397208 | 7F A3 EB 78 */	mr r3, r29
/* 8139720C | 48 00 09 D5 */	bl stt_pic_normal__Q33ipl5scene12focus_objectFv
/* 81397210 | 48 00 00 B4 */	b .L_813972C4
.L_81397214:
/* 81397214 | 7F A3 EB 78 */	mr r3, r29
/* 81397218 | 48 00 0A 1D */	bl stt_pic_fadeout__Q33ipl5scene12focus_objectFv
/* 8139721C | 48 00 00 A8 */	b .L_813972C4
.L_81397220:
/* 81397220 | 7F A3 EB 78 */	mr r3, r29
/* 81397224 | 48 00 0A BD */	bl stt_ltr_wait_net__Q33ipl5scene12focus_objectFv
/* 81397228 | 48 00 00 9C */	b .L_813972C4
.L_8139722C:
/* 8139722C | 7F A3 EB 78 */	mr r3, r29
/* 81397230 | 48 00 0C 99 */	bl stt_ltr_wait_ltr_scene__Q33ipl5scene12focus_objectFv
/* 81397234 | 48 00 00 90 */	b .L_813972C4
.L_81397238:
/* 81397238 | 7F A3 EB 78 */	mr r3, r29
/* 8139723C | 48 00 0D 71 */	bl stt_chn_wait_url_jump_msg__Q33ipl5scene12focus_objectFv
/* 81397240 | 48 00 00 84 */	b .L_813972C4
.L_81397244:
/* 81397244 | 7F A3 EB 78 */	mr r3, r29
/* 81397248 | 48 00 0E 1D */	bl stt_chn_wait_jump__Q33ipl5scene12focus_objectFv
/* 8139724C | 48 00 00 78 */	b .L_813972C4
.L_81397250:
/* 81397250 | 7F A3 EB 78 */	mr r3, r29
/* 81397254 | 48 00 0E 65 */	bl stt_opt_wait_select_msg__Q33ipl5scene12focus_objectFv
/* 81397258 | 48 00 00 6C */	b .L_813972C4
.L_8139725C:
/* 8139725C | 7F A3 EB 78 */	mr r3, r29
/* 81397260 | 48 00 0F 25 */	bl stt_opt_wait_stop_msg__Q33ipl5scene12focus_objectFv
/* 81397264 | 48 00 00 60 */	b .L_813972C4
.L_81397268:
/* 81397268 | 7F A3 EB 78 */	mr r3, r29
/* 8139726C | 48 00 0F A5 */	bl stt_opt_wait_all_stop_msg__Q33ipl5scene12focus_objectFv
/* 81397270 | 48 00 00 54 */	b .L_813972C4
.L_81397274:
/* 81397274 | 7F A3 EB 78 */	mr r3, r29
/* 81397278 | 48 00 10 25 */	bl stt_opt_delete_task__Q33ipl5scene12focus_objectFv
/* 8139727C | 48 00 00 48 */	b .L_813972C4
.L_81397280:
/* 81397280 | 7F A3 EB 78 */	mr r3, r29
/* 81397284 | 48 00 11 45 */	bl stt_opt_delete_all_task__Q33ipl5scene12focus_objectFv
/* 81397288 | 48 00 00 3C */	b .L_813972C4
.L_8139728C:
/* 8139728C | 7F A3 EB 78 */	mr r3, r29
/* 81397290 | 48 00 12 51 */	bl stt_opt_wait_confirm_msg__Q33ipl5scene12focus_objectFv
/* 81397294 | 48 00 00 30 */	b .L_813972C4
.L_81397298:
/* 81397298 | 7F A3 EB 78 */	mr r3, r29
/* 8139729C | 48 00 12 AD */	bl stt_net_wait_net_setting_msg__Q33ipl5scene12focus_objectFv
/* 813972A0 | 48 00 00 24 */	b .L_813972C4
.L_813972A4:
/* 813972A4 | 7F A3 EB 78 */	mr r3, r29
/* 813972A8 | 48 00 13 A1 */	bl stt_net_wait_nwc_setting_msg__Q33ipl5scene12focus_objectFv
/* 813972AC | 48 00 00 18 */	b .L_813972C4
.L_813972B0:
/* 813972B0 | 7F A3 EB 78 */	mr r3, r29
/* 813972B4 | 48 00 13 DD */	bl stt_net_wait_parental_scene__Q33ipl5scene12focus_objectFv
/* 813972B8 | 48 00 00 0C */	b .L_813972C4
.L_813972BC:
/* 813972BC | 7F A3 EB 78 */	mr r3, r29
/* 813972C0 | 48 00 14 55 */	bl stt_net_wait_parental_scene_dst__Q33ipl5scene12focus_objectFv
.L_813972C4:
/* 813972C4 | C0 3D 00 98 */	lfs f1, 0x98(r29)
/* 813972C8 | C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 813972CC | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 813972D0 | 7C E0 00 26 */	mfcr r7
/* 813972D4 | C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 813972D8 | 54 E7 1F FE */	extrwi r7, r7, 1, 2
/* 813972DC | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 813972E0 | 7C C0 00 26 */	mfcr r6
/* 813972E4 | 7F A3 EB 78 */	mr r3, r29
/* 813972E8 | 54 C6 1F FE */	extrwi r6, r6, 1, 2
/* 813972EC | 7F E4 FB 78 */	mr r4, r31
/* 813972F0 | 7F C5 F3 78 */	mr r5, r30
/* 813972F4 | 48 00 34 29 */	bl show_or_hide_arw__Q33ipl5scene12focus_objectFbbbb
/* 813972F8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813972FC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81397300 | 41 82 00 10 */	beq .L_81397310
/* 81397304 | 38 03 FF F9 */	subi r0, r3, 0x7
/* 81397308 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8139730C | 41 81 00 4C */	bgt .L_81397358
.L_81397310:
/* 81397310 | 80 1D 01 34 */	lwz r0, 0x134(r29)
/* 81397314 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397318 | 41 82 00 40 */	beq .L_81397358
/* 8139731C | 38 7D 01 48 */	addi r3, r29, 0x148
/* 81397320 | 4B FC D1 81 */	bl __cl__Q33ipl7utility5timerFv
/* 81397324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397328 | 41 82 00 30 */	beq .L_81397358
/* 8139732C | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 81397330 | 80 9D 01 34 */	lwz r4, 0x134(r29)
/* 81397334 | 80 BD 01 38 */	lwz r5, 0x138(r29)
/* 81397338 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8139733C | 48 07 74 C5 */	bl start__17BannerSoundPlayerFPvUl
/* 81397340 | 3C 80 57 B1 */	lis r4, 0x57b1
/* 81397344 | 38 7D 01 48 */	addi r3, r29, 0x148
/* 81397348 | 38 84 2C 00 */	addi r4, r4, 0x2c00
/* 8139734C | 4B FC D0 D9 */	bl set_msec__Q33ipl7utility5timerFi
/* 81397350 | 38 00 00 01 */	li r0, 0x1
/* 81397354 | 98 1D 01 3C */	stb r0, 0x13c(r29)
.L_81397358:
/* 81397358 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139735C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81397360 | 48 26 21 B5 */	bl _restgpr_29
/* 81397364 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81397368 | 7C 08 03 A6 */	mtlr r0
/* 8139736C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81397370 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene12focus_objectFv

# .text:0x64C | 0x81397374 | size: 0x230
# ipl::scene::focus_object::cmn_calc()
.fn cmn_calc__Q33ipl5scene12focus_objectFv, global
/* 81397374 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81397378 | 7C 08 02 A6 */	mflr r0
/* 8139737C | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81397380 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 81397384 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 81397388 | 7C 7E 1B 78 */	mr r30, r3
/* 8139738C | 81 83 01 A8 */	lwz r12, 0x1a8(r3)
/* 81397390 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81397394 | 7D 89 03 A6 */	mtctr r12
/* 81397398 | 38 63 01 A8 */	addi r3, r3, 0x1a8
/* 8139739C | 4E 80 04 21 */	bctrl
/* 813973A0 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 813973A4 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813973A8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813973AC | 7C 00 00 34 */	cntlzw r0, r0
/* 813973B0 | 54 04 D9 7E */	srwi r4, r0, 5
/* 813973B4 | 48 00 48 61 */	bl calc__Q33ipl5scene8scrollerFb
/* 813973B8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813973BC | 40 82 00 74 */	bne .L_81397430
/* 813973C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813973C4 | 38 80 00 05 */	li r4, 0x5
/* 813973C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813973CC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813973D0 | 48 07 3D 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813973D4 | 7C 7F 1B 78 */	mr r31, r3
/* 813973D8 | 38 80 00 05 */	li r4, 0x5
/* 813973DC | 48 00 5F 75 */	bl initBtn__Q33ipl5scene6ButtonFi
/* 813973E0 | 7F E3 FB 78 */	mr r3, r31
/* 813973E4 | 38 80 00 07 */	li r4, 0x7
/* 813973E8 | 48 00 5F 69 */	bl initBtn__Q33ipl5scene6ButtonFi
/* 813973EC | 7F E3 FB 78 */	mr r3, r31
/* 813973F0 | 38 80 00 08 */	li r4, 0x8
/* 813973F4 | 48 00 5F 5D */	bl initBtn__Q33ipl5scene6ButtonFi
/* 813973F8 | 38 7F 00 64 */	addi r3, r31, 0x64
/* 813973FC | 48 00 62 AD */	bl reset_gui__Q33ipl5scene12OptOutButtonFv
/* 81397400 | 7F C3 F3 78 */	mr r3, r30
/* 81397404 | 38 80 00 00 */	li r4, 0x0
/* 81397408 | 38 A0 00 04 */	li r5, 0x4
/* 8139740C | 48 00 3C D1 */	bl reset_gui__Q33ipl5scene12focus_objectFii
/* 81397410 | 7F C3 F3 78 */	mr r3, r30
/* 81397414 | 38 80 00 01 */	li r4, 0x1
/* 81397418 | 38 A0 00 0C */	li r5, 0xc
/* 8139741C | 48 00 3C C1 */	bl reset_gui__Q33ipl5scene12focus_objectFii
/* 81397420 | 7F C3 F3 78 */	mr r3, r30
/* 81397424 | 38 80 00 02 */	li r4, 0x2
/* 81397428 | 38 A0 00 17 */	li r5, 0x17
/* 8139742C | 48 00 3C B1 */	bl reset_gui__Q33ipl5scene12focus_objectFii
.L_81397430:
/* 81397430 | C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 81397434 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81397438 | 38 9E 01 D4 */	addi r4, r30, 0x1d4
/* 8139743C | 48 00 01 85 */	bl __ml__Q33ipl4math4VEC3CFf
/* 81397440 | C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 81397444 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81397448 | C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 8139744C | 38 9E 01 C8 */	addi r4, r30, 0x1c8
/* 81397450 | EC 21 00 28 */	fsubs f1, f1, f0
/* 81397454 | 48 00 01 6D */	bl __ml__Q33ipl4math4VEC3CFf
/* 81397458 | C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 8139745C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81397460 | C0 02 84 68 */	lfs f0, lbl_81694868@sda21(r0)
/* 81397464 | 38 61 00 50 */	addi r3, r1, 0x50
/* 81397468 | E0 61 00 20 */	psq_l f3, 0x20(r1), 0, qr0
/* 8139746C | EC 00 08 24 */	fdivs f0, f0, f1
/* 81397470 | E0 21 00 2C */	psq_l f1, 0x2c(r1), 0, qr0
/* 81397474 | 10 43 08 2A */	ps_add f2, f3, f1
/* 81397478 | E0 61 80 28 */	psq_l f3, 0x28(r1), 1, qr0
/* 8139747C | E0 21 80 34 */	psq_l f1, 0x34(r1), 1, qr0
/* 81397480 | F0 41 00 14 */	psq_st f2, 0x14(r1), 0, qr0
/* 81397484 | 10 43 08 2A */	ps_add f2, f3, f1
/* 81397488 | E0 21 00 14 */	psq_l f1, 0x14(r1), 0, qr0
/* 8139748C | F0 41 80 1C */	psq_st f2, 0x1c(r1), 1, qr0
/* 81397490 | 10 21 00 18 */	ps_muls0 f1, f1, f0
/* 81397494 | F0 24 00 00 */	psq_st f1, 0x0(r4), 0, qr0
/* 81397498 | 10 22 00 18 */	ps_muls0 f1, f2, f0
/* 8139749C | F0 24 80 08 */	psq_st f1, 0x8(r4), 1, qr0
/* 813974A0 | 48 00 01 05 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 813974A4 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 813974A8 | 38 81 00 50 */	addi r4, r1, 0x50
/* 813974AC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813974B0 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813974B4 | 4B FA D1 D1 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813974B8 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813974BC | 4B FC CB 09 */	bl get__Q33ipl7utility8ScrollerCFv
/* 813974C0 | C0 02 84 6C */	lfs f0, lbl_8169486C@sda21(r0)
/* 813974C4 | 38 8D 86 6C */	li r4, lbl_816966AC@sda21
/* 813974C8 | D0 21 00 48 */	stfs f1, 0x48(r1)
/* 813974CC | 38 A0 00 01 */	li r5, 0x1
/* 813974D0 | D0 01 00 44 */	stfs f0, 0x44(r1)
/* 813974D4 | D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 813974D8 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 813974DC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813974E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813974E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813974E8 | 7D 89 03 A6 */	mtctr r12
/* 813974EC | 4E 80 04 21 */	bctrl
/* 813974F0 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813974F4 | 38 81 00 44 */	addi r4, r1, 0x44
/* 813974F8 | 4B FA D1 8D */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 813974FC | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81397500 | 4B FD 32 05 */	bl calc__Q33ipl6layout6ObjectFv
/* 81397504 | 7F C4 F3 78 */	mr r4, r30
/* 81397508 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8139750C | 48 00 2D DD */	bl calc_balloon_pos__Q33ipl5scene12focus_objectCFv
/* 81397510 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 81397514 | 38 81 00 38 */	addi r4, r1, 0x38
/* 81397518 | 48 03 A3 51 */	bl updatePos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3
/* 8139751C | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 81397520 | 48 03 A0 8D */	bl calc__Q33ipl5scene11TextBalloonFv
/* 81397524 | 38 7E 01 50 */	addi r3, r30, 0x150
/* 81397528 | 4B FF EE F1 */	bl update__Q33ipl5scene12UrlProcessorFv
/* 8139752C | 80 1E 01 34 */	lwz r0, 0x134(r30)
/* 81397530 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397534 | 41 82 00 58 */	beq .L_8139758C
/* 81397538 | 88 1E 01 3C */	lbz r0, 0x13c(r30)
/* 8139753C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397540 | 41 82 00 4C */	beq .L_8139758C
/* 81397544 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 81397548 | 88 03 9F 68 */	lbz r0, sBannerSoundPlayer__Q23ipl3snd@l(r3)
/* 8139754C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397550 | 40 82 00 30 */	bne .L_81397580
/* 81397554 | 38 7E 01 40 */	addi r3, r30, 0x140
/* 81397558 | 4B FC CF 49 */	bl __cl__Q33ipl7utility5timerFv
/* 8139755C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397560 | 41 82 00 2C */	beq .L_8139758C
/* 81397564 | 38 00 00 00 */	li r0, 0x0
/* 81397568 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139756C | 98 1E 01 3C */	stb r0, 0x13c(r30)
/* 81397570 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81397574 | 38 80 00 78 */	li r4, 0x78
/* 81397578 | 4B FD 47 E1 */	bl muteOffBGM__Q33ipl3snd6SystemFi
/* 8139757C | 48 00 00 10 */	b .L_8139758C
.L_81397580:
/* 81397580 | 38 7E 01 40 */	addi r3, r30, 0x140
/* 81397584 | 38 80 00 64 */	li r4, 0x64
/* 81397588 | 4B FC CE 9D */	bl set_msec__Q33ipl7utility5timerFi
.L_8139758C:
/* 8139758C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81397590 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 81397594 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 81397598 | 7C 08 03 A6 */	mtlr r0
/* 8139759C | 38 21 00 70 */	addi r1, r1, 0x70
/* 813975A0 | 4E 80 00 20 */	blr
.endfn cmn_calc__Q33ipl5scene12focus_objectFv

# .text:0x87C | 0x813975A4 | size: 0x1C
# ipl::math::VEC3::VEC3(const nw4r::math::_VEC3&)
.fn __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3, global
/* 813975A4 | C0 44 00 00 */	lfs f2, 0x0(r4)
/* 813975A8 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 813975AC | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 813975B0 | D0 43 00 00 */	stfs f2, 0x0(r3)
/* 813975B4 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 813975B8 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 813975BC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3

# .text:0x898 | 0x813975C0 | size: 0x20
# ipl::math::VEC3::operator*(float) const
.fn __ml__Q33ipl4math4VEC3CFf, global
/* 813975C0 | FC 80 08 90 */	fmr f4, f1
/* 813975C4 | C0 64 00 00 */	lfs f3, 0x0(r4)
/* 813975C8 | C0 44 00 04 */	lfs f2, 0x4(r4)
/* 813975CC | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 813975D0 | EC 23 00 72 */	fmuls f1, f3, f1
/* 813975D4 | EC 42 01 32 */	fmuls f2, f2, f4
/* 813975D8 | EC 60 01 32 */	fmuls f3, f0, f4
/* 813975DC | 4B FC B4 80 */	b __ct__Q33ipl4math4VEC3Ffff
.endfn __ml__Q33ipl4math4VEC3CFf

# .text:0x8B8 | 0x813975E0 | size: 0xF4
# ipl::scene::focus_object::stt_normal()
.fn stt_normal__Q33ipl5scene12focus_objectFv, global
/* 813975E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813975E4 | 7C 08 02 A6 */	mflr r0
/* 813975E8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813975EC | 38 80 00 05 */	li r4, 0x5
/* 813975F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813975F4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813975F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813975FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81397600 | 7C 7E 1B 78 */	mr r30, r3
/* 81397604 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81397608 | 48 07 3B 31 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139760C | 7C 7F 1B 78 */	mr r31, r3
/* 81397610 | 48 00 53 05 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81397614 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397618 | 41 82 00 20 */	beq .L_81397638
/* 8139761C | 38 7E 00 A8 */	addi r3, r30, 0xa8
/* 81397620 | 4B FC C4 C5 */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 81397624 | 7C 60 00 34 */	cntlzw r0, r3
/* 81397628 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 8139762C | 41 82 00 0C */	beq .L_81397638
/* 81397630 | 7F E3 FB 78 */	mr r3, r31
/* 81397634 | 48 00 4F 39 */	bl update__Q33ipl5scene6ButtonFv
.L_81397638:
/* 81397638 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8139763C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81397640 | 40 82 00 20 */	bne .L_81397660
/* 81397644 | 38 7E 00 A8 */	addi r3, r30, 0xa8
/* 81397648 | 4B FC C4 9D */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 8139764C | 7C 60 00 34 */	cntlzw r0, r3
/* 81397650 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81397654 | 41 82 00 0C */	beq .L_81397660
/* 81397658 | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8139765C | 4B FD 39 31 */	bl update__Q33ipl3gui11PaneManagerFv
.L_81397660:
/* 81397660 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81397664 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81397668 | 40 82 00 0C */	bne .L_81397674
/* 8139766C | 7F C3 F3 78 */	mr r3, r30
/* 81397670 | 48 00 11 41 */	bl proc_input__Q33ipl5scene12focus_objectFv
.L_81397674:
/* 81397674 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81397678 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139767C | 40 82 00 1C */	bne .L_81397698
/* 81397680 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 81397684 | 48 00 00 51 */	bl is_busy__Q33ipl5scene8scrollerCFv
/* 81397688 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139768C | 40 82 00 0C */	bne .L_81397698
/* 81397690 | 7F C3 F3 78 */	mr r3, r30
/* 81397694 | 48 00 11 D9 */	bl proc_url_jump__Q33ipl5scene12focus_objectFv
.L_81397698:
/* 81397698 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8139769C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813976A0 | 41 82 00 1C */	beq .L_813976BC
/* 813976A4 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813976A8 | 41 82 00 14 */	beq .L_813976BC
/* 813976AC | 3C 80 57 B1 */	lis r4, 0x57b1
/* 813976B0 | 38 7E 01 48 */	addi r3, r30, 0x148
/* 813976B4 | 38 84 2C 00 */	addi r4, r4, 0x2c00
/* 813976B8 | 4B FC CD 6D */	bl set_msec__Q33ipl7utility5timerFi
.L_813976BC:
/* 813976BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813976C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813976C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813976C8 | 7C 08 03 A6 */	mtlr r0
/* 813976CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813976D0 | 4E 80 00 20 */	blr
.endfn stt_normal__Q33ipl5scene12focus_objectFv

# .text:0x9AC | 0x813976D4 | size: 0x50
# ipl::scene::scroller::is_busy() const
.fn is_busy__Q33ipl5scene8scrollerCFv, global
/* 813976D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813976D8 | 7C 08 02 A6 */	mflr r0
/* 813976DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813976E0 | 80 03 00 30 */	lwz r0, 0x30(r3)
/* 813976E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813976E8 | 3B E0 00 01 */	li r31, 0x1
/* 813976EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813976F0 | 40 82 00 1C */	bne .L_8139770C
/* 813976F4 | 38 63 00 50 */	addi r3, r3, 0x50
/* 813976F8 | 4B FC C3 ED */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 813976FC | 7C 60 00 34 */	cntlzw r0, r3
/* 81397700 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81397704 | 41 82 00 08 */	beq .L_8139770C
/* 81397708 | 3B E0 00 00 */	li r31, 0x0
.L_8139770C:
/* 8139770C | 7F E3 FB 78 */	mr r3, r31
/* 81397710 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81397714 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81397718 | 7C 08 03 A6 */	mtlr r0
/* 8139771C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397720 | 4E 80 00 20 */	blr
.endfn is_busy__Q33ipl5scene8scrollerCFv

# .text:0x9FC | 0x81397724 | size: 0x44
# ipl::scene::focus_object::stt_fadeout()
.fn stt_fadeout__Q33ipl5scene12focus_objectFv, global
/* 81397724 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81397728 | 7C 08 02 A6 */	mflr r0
/* 8139772C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81397730 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81397734 | 7C 7F 1B 78 */	mr r31, r3
/* 81397738 | 48 00 15 F5 */	bl is_finished_fadeout__Q33ipl5scene12focus_objectCFv
/* 8139773C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397740 | 41 82 00 14 */	beq .L_81397754
/* 81397744 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81397748 | 38 00 00 18 */	li r0, 0x18
/* 8139774C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81397750 | 90 7F 00 0C */	stw r3, 0xc(r31)
.L_81397754:
/* 81397754 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81397758 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139775C | 7C 08 03 A6 */	mtlr r0
/* 81397760 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397764 | 4E 80 00 20 */	blr
.endfn stt_fadeout__Q33ipl5scene12focus_objectFv

# .text:0xA40 | 0x81397768 | size: 0x158
# ipl::scene::focus_object::stt_wait_btn()
.fn stt_wait_btn__Q33ipl5scene12focus_objectFv, global
/* 81397768 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139776C | 7C 08 02 A6 */	mflr r0
/* 81397770 | 38 80 00 05 */	li r4, 0x5
/* 81397774 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81397778 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139777C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81397780 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81397784 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81397788 | 7C 7E 1B 78 */	mr r30, r3
/* 8139778C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81397790 | 48 07 39 A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397794 | 48 00 51 81 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81397798 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139779C | 41 82 01 0C */	beq .L_813978A8
/* 813977A0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813977A4 | 38 80 00 05 */	li r4, 0x5
/* 813977A8 | 48 07 39 91 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813977AC | 80 03 01 78 */	lwz r0, 0x178(r3)
/* 813977B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813977B4 | 40 82 00 F4 */	bne .L_813978A8
/* 813977B8 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 813977BC | 28 00 00 0E */	cmplwi r0, 0xe
/* 813977C0 | 41 81 00 D8 */	bgt .L_81397898
/* 813977C4 | 3C 60 81 65 */	lis r3, jumptable_8164BB04@ha
/* 813977C8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813977CC | 38 63 BB 04 */	addi r3, r3, jumptable_8164BB04@l
/* 813977D0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813977D4 | 7C 69 03 A6 */	mtctr r3
/* 813977D8 | 4E 80 04 20 */	bctr
.L_813977DC:
/* 813977DC | 7F C3 F3 78 */	mr r3, r30
/* 813977E0 | 38 80 00 00 */	li r4, 0x0
/* 813977E4 | 48 00 16 41 */	bl init_fadeout__Q33ipl5scene12focus_objectFb
/* 813977E8 | 38 00 00 03 */	li r0, 0x3
/* 813977EC | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 813977F0 | 48 00 00 A8 */	b .L_81397898
.L_813977F4:
/* 813977F4 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813977F8 | 38 80 00 40 */	li r4, 0x40
/* 813977FC | 38 A0 00 2E */	li r5, 0x2e
/* 81397800 | 38 C0 00 25 */	li r6, 0x25
/* 81397804 | 38 E0 00 00 */	li r7, 0x0
/* 81397808 | 4B FA F6 C1 */	bl callSBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 8139780C | 48 00 00 8C */	b .L_81397898
.L_81397810:
/* 81397810 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81397814 | 38 80 00 05 */	li r4, 0x5
/* 81397818 | 48 07 39 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139781C | 38 80 00 10 */	li r4, 0x10
/* 81397820 | 48 00 5C 09 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81397824 | 7F C3 F3 78 */	mr r3, r30
/* 81397828 | 48 00 32 79 */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 8139782C | 7F C3 F3 78 */	mr r3, r30
/* 81397830 | 38 80 00 00 */	li r4, 0x0
/* 81397834 | 38 A0 00 04 */	li r5, 0x4
/* 81397838 | 48 00 38 A5 */	bl reset_gui__Q33ipl5scene12focus_objectFii
/* 8139783C | 7F C3 F3 78 */	mr r3, r30
/* 81397840 | 38 80 00 01 */	li r4, 0x1
/* 81397844 | 38 A0 00 0C */	li r5, 0xc
/* 81397848 | 48 00 38 95 */	bl reset_gui__Q33ipl5scene12focus_objectFii
/* 8139784C | 7F C3 F3 78 */	mr r3, r30
/* 81397850 | 38 80 00 02 */	li r4, 0x2
/* 81397854 | 38 A0 00 17 */	li r5, 0x17
/* 81397858 | 48 00 38 85 */	bl reset_gui__Q33ipl5scene12focus_objectFii
/* 8139785C | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81397860 | 38 80 00 19 */	li r4, 0x19
/* 81397864 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397868 | 48 17 AA B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139786C | 7C 7F 1B 78 */	mr r31, r3
/* 81397870 | 4B FC B0 01 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397874 | 38 00 00 01 */	li r0, 0x1
/* 81397878 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139787C | 48 00 00 1C */	b .L_81397898
.L_81397880:
/* 81397880 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 81397884 | 38 80 00 66 */	li r4, 0x66
/* 81397888 | 38 A0 00 67 */	li r5, 0x67
/* 8139788C | 38 C0 00 68 */	li r6, 0x68
/* 81397890 | 38 E0 00 69 */	li r7, 0x69
/* 81397894 | 4B FA F5 95 */	bl callBtn3__Q23ipl12DialogWindowFUlUlUlUl
.L_81397898:
/* 81397898 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8139789C | 38 00 FF FF */	li r0, -0x1
/* 813978A0 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813978A4 | 90 1E 00 04 */	stw r0, 0x4(r30)
.L_813978A8:
/* 813978A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813978AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813978B0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813978B4 | 7C 08 03 A6 */	mtlr r0
/* 813978B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813978BC | 4E 80 00 20 */	blr
.endfn stt_wait_btn__Q33ipl5scene12focus_objectFv

# .text:0xB98 | 0x813978C0 | size: 0xA4
# ipl::scene::focus_object::stt_wait_msg()
.fn stt_wait_msg__Q33ipl5scene12focus_objectFv, global
/* 813978C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813978C4 | 7C 08 02 A6 */	mflr r0
/* 813978C8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813978CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813978D0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813978D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813978D8 | 7C 7F 1B 78 */	mr r31, r3
/* 813978DC | 80 85 00 AC */	lwz r4, 0xac(r5)
/* 813978E0 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813978E4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813978E8 | 41 82 00 68 */	beq .L_81397950
/* 813978EC | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813978F0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813978F4 | 41 82 00 20 */	beq .L_81397914
/* 813978F8 | 40 80 00 10 */	bge .L_81397908
/* 813978FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81397900 | 41 82 00 34 */	beq .L_81397934
/* 81397904 | 48 00 00 3C */	b .L_81397940
.L_81397908:
/* 81397908 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8139790C | 41 82 00 28 */	beq .L_81397934
/* 81397910 | 48 00 00 30 */	b .L_81397940
.L_81397914:
/* 81397914 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81397918 | 38 80 00 05 */	li r4, 0x5
/* 8139791C | 48 07 38 1D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397920 | 38 80 00 08 */	li r4, 0x8
/* 81397924 | 48 00 5A 2D */	bl initBtn__Q33ipl5scene6ButtonFi
/* 81397928 | 7F E3 FB 78 */	mr r3, r31
/* 8139792C | 48 00 31 75 */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 81397930 | 48 00 00 10 */	b .L_81397940
.L_81397934:
/* 81397934 | 38 80 FF FF */	li r4, -0x1
/* 81397938 | 38 63 01 50 */	addi r3, r3, 0x150
/* 8139793C | 4B FF F0 35 */	bl select__Q33ipl5scene12UrlProcessorFi
.L_81397940:
/* 81397940 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81397944 | 38 00 FF FF */	li r0, -0x1
/* 81397948 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8139794C | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_81397950:
/* 81397950 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81397954 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81397958 | 7C 08 03 A6 */	mtlr r0
/* 8139795C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397960 | 4E 80 00 20 */	blr
.endfn stt_wait_msg__Q33ipl5scene12focus_objectFv

# .text:0xC3C | 0x81397964 | size: 0x158
# ipl::scene::focus_object::stt_del_wait_msg()
.fn stt_del_wait_msg__Q33ipl5scene12focus_objectFv, global
/* 81397964 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81397968 | 7C 08 02 A6 */	mflr r0
/* 8139796C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81397970 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81397974 | 48 26 1B 51 */	bl _savegpr_28
/* 81397978 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8139797C | 7C 7C 1B 78 */	mr r28, r3
/* 81397980 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81397984 | 80 9E 00 AC */	lwz r4, 0xac(r30)
/* 81397988 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8139798C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81397990 | 41 82 00 14 */	beq .L_813979A4
/* 81397994 | 40 80 01 10 */	bge .L_81397AA4
/* 81397998 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139799C | 40 80 00 30 */	bge .L_813979CC
/* 813979A0 | 48 00 01 04 */	b .L_81397AA4
.L_813979A4:
/* 813979A4 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813979A8 | 38 80 00 05 */	li r4, 0x5
/* 813979AC | 48 07 37 8D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813979B0 | 38 80 00 08 */	li r4, 0x8
/* 813979B4 | 48 00 59 9D */	bl initBtn__Q33ipl5scene6ButtonFi
/* 813979B8 | 7F 83 E3 78 */	mr r3, r28
/* 813979BC | 48 00 30 E5 */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 813979C0 | 38 00 00 01 */	li r0, 0x1
/* 813979C4 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 813979C8 | 48 00 00 DC */	b .L_81397AA4
.L_813979CC:
/* 813979CC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813979D0 | 4B FF E6 81 */	bl is_protected__Q33ipl5scene11BoardObjectCFv
/* 813979D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813979D8 | 41 82 00 30 */	beq .L_81397A08
/* 813979DC | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813979E0 | 38 80 00 3E */	li r4, 0x3e
/* 813979E4 | 38 A0 00 2E */	li r5, 0x2e
/* 813979E8 | 4B FA ED 11 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813979EC | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 813979F0 | 38 60 00 04 */	li r3, 0x4
/* 813979F4 | 38 00 00 01 */	li r0, 0x1
/* 813979F8 | 90 9C 00 08 */	stw r4, 0x8(r28)
/* 813979FC | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 81397A00 | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 81397A04 | 48 00 00 A0 */	b .L_81397AA4
.L_81397A08:
/* 81397A08 | 3B E0 00 01 */	li r31, 0x1
/* 81397A0C | 80 7C 00 20 */	lwz r3, 0x20(r28)
/* 81397A10 | 93 FC 01 C0 */	stw r31, 0x1c0(r28)
/* 81397A14 | 93 FC 01 BC */	stw r31, 0x1bc(r28)
/* 81397A18 | 48 03 9C 51 */	bl terminate__Q33ipl5scene11TextBalloonFv
/* 81397A1C | 80 7C 00 18 */	lwz r3, 0x18(r28)
/* 81397A20 | 38 80 00 01 */	li r4, 0x1
/* 81397A24 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397A28 | 48 17 A8 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397A2C | 7C 7D 1B 78 */	mr r29, r3
/* 81397A30 | 4B FC AE 41 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397A34 | 93 FD 00 14 */	stw r31, 0x14(r29)
/* 81397A38 | 38 80 00 05 */	li r4, 0x5
/* 81397A3C | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81397A40 | 48 07 36 F9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397A44 | 38 80 00 00 */	li r4, 0x0
/* 81397A48 | 38 A0 00 00 */	li r5, 0x0
/* 81397A4C | 48 00 4E F1 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81397A50 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81397A54 | 38 80 00 05 */	li r4, 0x5
/* 81397A58 | 48 07 36 E1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397A5C | 38 80 00 0A */	li r4, 0xa
/* 81397A60 | 48 00 50 F9 */	bl iplButton_8139CB58
/* 81397A64 | 80 1C 01 34 */	lwz r0, 0x134(r28)
/* 81397A68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397A6C | 41 82 00 14 */	beq .L_81397A80
/* 81397A70 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 81397A74 | 38 80 00 1E */	li r4, 0x1e
/* 81397A78 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 81397A7C | 48 07 6E 9D */	bl stop__17BannerSoundPlayerFUl
.L_81397A80:
/* 81397A80 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81397A84 | 3C 80 81 65 */	lis r4, lbl_8164BB40@ha
/* 81397A88 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81397A8C | 38 84 BB 40 */	addi r4, r4, lbl_8164BB40@l
/* 81397A90 | 4B FD 39 DD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81397A94 | 38 60 00 02 */	li r3, 0x2
/* 81397A98 | 38 00 00 06 */	li r0, 0x6
/* 81397A9C | 90 7C 00 0C */	stw r3, 0xc(r28)
/* 81397AA0 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81397AA4:
/* 81397AA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81397AA8 | 48 26 1A 69 */	bl _restgpr_28
/* 81397AAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81397AB0 | 7C 08 03 A6 */	mtlr r0
/* 81397AB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81397AB8 | 4E 80 00 20 */	blr
.endfn stt_del_wait_msg__Q33ipl5scene12focus_objectFv

# .text:0xD94 | 0x81397ABC | size: 0x44
# ipl::scene::focus_object::stt_del_wait_delete()
.fn stt_del_wait_delete__Q33ipl5scene12focus_objectFv, global
/* 81397ABC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81397AC0 | 7C 08 02 A6 */	mflr r0
/* 81397AC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81397AC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81397ACC | 7C 7F 1B 78 */	mr r31, r3
/* 81397AD0 | 48 00 12 5D */	bl is_finished_fadeout__Q33ipl5scene12focus_objectCFv
/* 81397AD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397AD8 | 41 82 00 14 */	beq .L_81397AEC
/* 81397ADC | 38 60 00 04 */	li r3, 0x4
/* 81397AE0 | 38 00 00 18 */	li r0, 0x18
/* 81397AE4 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 81397AE8 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81397AEC:
/* 81397AEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81397AF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81397AF4 | 7C 08 03 A6 */	mtlr r0
/* 81397AF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397AFC | 4E 80 00 20 */	blr
.endfn stt_del_wait_delete__Q33ipl5scene12focus_objectFv

# .text:0xDD8 | 0x81397B00 | size: 0xE0
# ipl::scene::focus_object::stt_pic_fadein()
.fn stt_pic_fadein__Q33ipl5scene12focus_objectFv, global
/* 81397B00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81397B04 | 7C 08 02 A6 */	mflr r0
/* 81397B08 | 38 80 00 18 */	li r4, 0x18
/* 81397B0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81397B10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81397B14 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81397B18 | 7C 7E 1B 78 */	mr r30, r3
/* 81397B1C | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 81397B20 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81397B24 | 48 17 A7 F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397B28 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81397B2C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81397B30 | 41 82 00 98 */	beq .L_81397BC8
/* 81397B34 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81397B38 | 38 80 00 05 */	li r4, 0x5
/* 81397B3C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81397B40 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81397B44 | 48 07 35 F5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397B48 | 38 80 00 01 */	li r4, 0x1
/* 81397B4C | 38 A0 00 27 */	li r5, 0x27
/* 81397B50 | 48 00 59 0D */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81397B54 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81397B58 | 38 80 00 05 */	li r4, 0x5
/* 81397B5C | 48 07 35 DD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397B60 | 38 80 00 0F */	li r4, 0xf
/* 81397B64 | 48 00 58 C5 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81397B68 | 88 1E 01 FC */	lbz r0, 0x1fc(r30)
/* 81397B6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397B70 | 41 82 00 24 */	beq .L_81397B94
/* 81397B74 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81397B78 | 38 80 00 07 */	li r4, 0x7
/* 81397B7C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397B80 | 48 17 A7 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397B84 | 7C 7F 1B 78 */	mr r31, r3
/* 81397B88 | 4B FC AC E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397B8C | 38 00 00 01 */	li r0, 0x1
/* 81397B90 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81397B94:
/* 81397B94 | 88 1E 01 FD */	lbz r0, 0x1fd(r30)
/* 81397B98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397B9C | 41 82 00 24 */	beq .L_81397BC0
/* 81397BA0 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81397BA4 | 38 80 00 0F */	li r4, 0xf
/* 81397BA8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397BAC | 48 17 A7 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397BB0 | 7C 7F 1B 78 */	mr r31, r3
/* 81397BB4 | 4B FC AC BD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397BB8 | 38 00 00 01 */	li r0, 0x1
/* 81397BBC | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81397BC0:
/* 81397BC0 | 38 00 00 08 */	li r0, 0x8
/* 81397BC4 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81397BC8:
/* 81397BC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81397BCC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81397BD0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81397BD4 | 7C 08 03 A6 */	mtlr r0
/* 81397BD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397BDC | 4E 80 00 20 */	blr
.endfn stt_pic_fadein__Q33ipl5scene12focus_objectFv

# .text:0xEB8 | 0x81397BE0 | size: 0x54
# ipl::scene::focus_object::stt_pic_normal()
.fn stt_pic_normal__Q33ipl5scene12focus_objectFv, global
/* 81397BE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81397BE4 | 7C 08 02 A6 */	mflr r0
/* 81397BE8 | 38 80 00 05 */	li r4, 0x5
/* 81397BEC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81397BF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81397BF4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81397BF8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81397BFC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81397C00 | 48 07 35 39 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397C04 | 48 00 4D 11 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81397C08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397C0C | 41 82 00 14 */	beq .L_81397C20
/* 81397C10 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81397C14 | 38 80 00 05 */	li r4, 0x5
/* 81397C18 | 48 07 35 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397C1C | 48 00 49 51 */	bl update__Q33ipl5scene6ButtonFv
.L_81397C20:
/* 81397C20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81397C24 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81397C28 | 7C 08 03 A6 */	mtlr r0
/* 81397C2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397C30 | 4E 80 00 20 */	blr
.endfn stt_pic_normal__Q33ipl5scene12focus_objectFv

# .text:0xF0C | 0x81397C34 | size: 0xAC
# ipl::scene::focus_object::stt_pic_fadeout()
.fn stt_pic_fadeout__Q33ipl5scene12focus_objectFv, global
/* 81397C34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81397C38 | 7C 08 02 A6 */	mflr r0
/* 81397C3C | 38 80 00 19 */	li r4, 0x19
/* 81397C40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81397C44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81397C48 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81397C4C | 7C 7E 1B 78 */	mr r30, r3
/* 81397C50 | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 81397C54 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81397C58 | 48 17 A6 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397C5C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81397C60 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81397C64 | 41 82 00 64 */	beq .L_81397CC8
/* 81397C68 | 88 1E 01 FC */	lbz r0, 0x1fc(r30)
/* 81397C6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397C70 | 41 82 00 24 */	beq .L_81397C94
/* 81397C74 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81397C78 | 38 80 00 06 */	li r4, 0x6
/* 81397C7C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397C80 | 48 17 A6 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397C84 | 7C 7F 1B 78 */	mr r31, r3
/* 81397C88 | 4B FC AB E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397C8C | 38 00 00 01 */	li r0, 0x1
/* 81397C90 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81397C94:
/* 81397C94 | 88 1E 01 FD */	lbz r0, 0x1fd(r30)
/* 81397C98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397C9C | 41 82 00 24 */	beq .L_81397CC0
/* 81397CA0 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81397CA4 | 38 80 00 0E */	li r4, 0xe
/* 81397CA8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397CAC | 48 17 A6 6D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397CB0 | 7C 7F 1B 78 */	mr r31, r3
/* 81397CB4 | 4B FC AB BD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397CB8 | 38 00 00 01 */	li r0, 0x1
/* 81397CBC | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81397CC0:
/* 81397CC0 | 38 00 00 01 */	li r0, 0x1
/* 81397CC4 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81397CC8:
/* 81397CC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81397CCC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81397CD0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81397CD4 | 7C 08 03 A6 */	mtlr r0
/* 81397CD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397CDC | 4E 80 00 20 */	blr
.endfn stt_pic_fadeout__Q33ipl5scene12focus_objectFv

# .text:0xFB8 | 0x81397CE0 | size: 0x1E8
# ipl::scene::focus_object::stt_ltr_wait_net()
.fn stt_ltr_wait_net__Q33ipl5scene12focus_objectFv, global
/* 81397CE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81397CE4 | 7C 08 02 A6 */	mflr r0
/* 81397CE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81397CEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81397CF0 | 48 26 17 D9 */	bl _savegpr_29
/* 81397CF4 | 7C 7F 1B 78 */	mr r31, r3
/* 81397CF8 | 48 00 34 85 */	bl check_network__Q33ipl5scene12focus_objectFv
/* 81397CFC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81397D00 | 41 82 00 18 */	beq .L_81397D18
/* 81397D04 | 40 80 00 08 */	bge .L_81397D0C
/* 81397D08 | 48 00 01 A8 */	b .L_81397EB0
.L_81397D0C:
/* 81397D0C | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81397D10 | 40 80 01 A0 */	bge .L_81397EB0
/* 81397D14 | 48 00 01 60 */	b .L_81397E74
.L_81397D18:
/* 81397D18 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81397D1C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81397D20 | 41 82 00 94 */	beq .L_81397DB4
/* 81397D24 | 40 80 01 18 */	bge .L_81397E3C
/* 81397D28 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81397D2C | 41 82 00 08 */	beq .L_81397D34
/* 81397D30 | 48 00 01 0C */	b .L_81397E3C
.L_81397D34:
/* 81397D34 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81397D38 | 38 80 00 12 */	li r4, 0x12
/* 81397D3C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397D40 | 48 17 A5 D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397D44 | 7C 7E 1B 78 */	mr r30, r3
/* 81397D48 | 4B FC AB 29 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397D4C | 38 00 00 01 */	li r0, 0x1
/* 81397D50 | 7F E3 FB 78 */	mr r3, r31
/* 81397D54 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81397D58 | 48 00 2E 4D */	bl hide_cmn_btn__Q33ipl5scene12focus_objectFv
/* 81397D5C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81397D60 | 38 80 00 05 */	li r4, 0x5
/* 81397D64 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81397D68 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81397D6C | 48 07 33 CD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397D70 | 38 80 00 00 */	li r4, 0x0
/* 81397D74 | 38 A0 00 25 */	li r5, 0x25
/* 81397D78 | 48 00 56 E5 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81397D7C | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81397D80 | 38 80 00 05 */	li r4, 0x5
/* 81397D84 | 48 07 33 B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397D88 | 38 80 00 01 */	li r4, 0x1
/* 81397D8C | 38 A0 00 27 */	li r5, 0x27
/* 81397D90 | 48 00 56 CD */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81397D94 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81397D98 | 38 80 00 05 */	li r4, 0x5
/* 81397D9C | 48 07 33 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397DA0 | 38 80 00 0F */	li r4, 0xf
/* 81397DA4 | 48 00 56 85 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81397DA8 | 38 00 00 06 */	li r0, 0x6
/* 81397DAC | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 81397DB0 | 48 00 00 8C */	b .L_81397E3C
.L_81397DB4:
/* 81397DB4 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81397DB8 | 38 80 00 14 */	li r4, 0x14
/* 81397DBC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397DC0 | 48 17 A5 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397DC4 | 7C 7D 1B 78 */	mr r29, r3
/* 81397DC8 | 4B FC AA A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397DCC | 38 00 00 01 */	li r0, 0x1
/* 81397DD0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81397DD4 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81397DD8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81397DDC | 38 80 00 05 */	li r4, 0x5
/* 81397DE0 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81397DE4 | 48 07 33 55 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397DE8 | 38 80 00 10 */	li r4, 0x10
/* 81397DEC | 48 00 56 3D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81397DF0 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81397DF4 | 38 80 00 05 */	li r4, 0x5
/* 81397DF8 | 48 07 33 41 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397DFC | 38 80 00 00 */	li r4, 0x0
/* 81397E00 | 38 A0 00 23 */	li r5, 0x23
/* 81397E04 | 48 00 56 59 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81397E08 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81397E0C | 38 80 00 05 */	li r4, 0x5
/* 81397E10 | 48 07 33 29 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397E14 | 38 80 00 01 */	li r4, 0x1
/* 81397E18 | 38 A0 00 24 */	li r5, 0x24
/* 81397E1C | 48 00 56 41 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 81397E20 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81397E24 | 38 80 00 05 */	li r4, 0x5
/* 81397E28 | 48 07 33 11 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397E2C | 38 80 00 0B */	li r4, 0xb
/* 81397E30 | 48 00 55 F9 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81397E34 | 38 00 00 07 */	li r0, 0x7
/* 81397E38 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_81397E3C:
/* 81397E3C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81397E40 | 38 80 00 05 */	li r4, 0x5
/* 81397E44 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81397E48 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81397E4C | 48 07 32 ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397E50 | 38 80 00 00 */	li r4, 0x0
/* 81397E54 | 38 A0 00 00 */	li r5, 0x0
/* 81397E58 | 48 00 4A E5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81397E5C | 4B F9 BE 2D */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 81397E60 | 38 60 00 03 */	li r3, 0x3
/* 81397E64 | 38 00 00 0B */	li r0, 0xb
/* 81397E68 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81397E6C | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 81397E70 | 48 00 00 40 */	b .L_81397EB0
.L_81397E74:
/* 81397E74 | 80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 81397E78 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81397E7C | 2C 00 01 2C */	cmpwi r0, 0x12c
/* 81397E80 | 90 1F 01 F4 */	stw r0, 0x1f4(r31)
/* 81397E84 | 40 81 00 2C */	ble .L_81397EB0
/* 81397E88 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81397E8C | 38 80 01 C6 */	li r4, 0x1c6
/* 81397E90 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81397E94 | 38 A0 00 2E */	li r5, 0x2e
/* 81397E98 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81397E9C | 4B FA E8 5D */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 81397EA0 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81397EA4 | 38 60 00 04 */	li r3, 0x4
/* 81397EA8 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81397EAC | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_81397EB0:
/* 81397EB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81397EB4 | 48 26 16 61 */	bl _restgpr_29
/* 81397EB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81397EBC | 7C 08 03 A6 */	mtlr r0
/* 81397EC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81397EC4 | 4E 80 00 20 */	blr
.endfn stt_ltr_wait_net__Q33ipl5scene12focus_objectFv

# .text:0x11A0 | 0x81397EC8 | size: 0xE4
# ipl::scene::focus_object::stt_ltr_wait_ltr_scene()
.fn stt_ltr_wait_ltr_scene__Q33ipl5scene12focus_objectFv, global
/* 81397EC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81397ECC | 7C 08 02 A6 */	mflr r0
/* 81397ED0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81397ED4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81397ED8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81397EDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81397EE0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81397EE4 | 7C 7E 1B 78 */	mr r30, r3
/* 81397EE8 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 81397EEC | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 81397EF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81397EF4 | 40 82 00 A0 */	bne .L_81397F94
/* 81397EF8 | 38 80 00 0B */	li r4, 0xb
/* 81397EFC | 48 07 32 3D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397F00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81397F04 | 40 82 00 90 */	bne .L_81397F94
/* 81397F08 | 4B F9 BD E5 */	bl startReceiveSchedule__Q23ipl6SystemFv
/* 81397F0C | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 81397F10 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81397F14 | 41 82 00 38 */	beq .L_81397F4C
/* 81397F18 | 40 80 00 54 */	bge .L_81397F6C
/* 81397F1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81397F20 | 41 82 00 08 */	beq .L_81397F28
/* 81397F24 | 48 00 00 48 */	b .L_81397F6C
.L_81397F28:
/* 81397F28 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81397F2C | 38 80 00 13 */	li r4, 0x13
/* 81397F30 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397F34 | 48 17 A3 E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397F38 | 7C 7F 1B 78 */	mr r31, r3
/* 81397F3C | 4B FC A9 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397F40 | 38 00 00 01 */	li r0, 0x1
/* 81397F44 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81397F48 | 48 00 00 24 */	b .L_81397F6C
.L_81397F4C:
/* 81397F4C | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81397F50 | 38 80 00 15 */	li r4, 0x15
/* 81397F54 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81397F58 | 48 17 A3 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81397F5C | 7C 7F 1B 78 */	mr r31, r3
/* 81397F60 | 4B FC A9 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81397F64 | 38 00 00 01 */	li r0, 0x1
/* 81397F68 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81397F6C:
/* 81397F6C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81397F70 | 38 80 00 05 */	li r4, 0x5
/* 81397F74 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81397F78 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81397F7C | 48 07 31 BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81397F80 | 38 9E 00 38 */	addi r4, r30, 0x38
/* 81397F84 | 38 BE 00 48 */	addi r5, r30, 0x48
/* 81397F88 | 48 00 49 B5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81397F8C | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 81397F90 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81397F94:
/* 81397F94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81397F98 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81397F9C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81397FA0 | 7C 08 03 A6 */	mtlr r0
/* 81397FA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81397FA8 | 4E 80 00 20 */	blr
.endfn stt_ltr_wait_ltr_scene__Q33ipl5scene12focus_objectFv

# .text:0x1284 | 0x81397FAC | size: 0xB8
# ipl::scene::focus_object::stt_chn_wait_url_jump_msg()
.fn stt_chn_wait_url_jump_msg__Q33ipl5scene12focus_objectFv, global
/* 81397FAC | 94 21 FD E0 */	stwu r1, -0x220(r1)
/* 81397FB0 | 7C 08 02 A6 */	mflr r0
/* 81397FB4 | 90 01 02 24 */	stw r0, 0x224(r1)
/* 81397FB8 | 93 E1 02 1C */	stw r31, 0x21c(r1)
/* 81397FBC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81397FC0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81397FC4 | 93 C1 02 18 */	stw r30, 0x218(r1)
/* 81397FC8 | 7C 7E 1B 78 */	mr r30, r3
/* 81397FCC | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 81397FD0 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81397FD4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81397FD8 | 41 82 00 14 */	beq .L_81397FEC
/* 81397FDC | 40 80 00 70 */	bge .L_8139804C
/* 81397FE0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81397FE4 | 40 80 00 24 */	bge .L_81398008
/* 81397FE8 | 48 00 00 64 */	b .L_8139804C
.L_81397FEC:
/* 81397FEC | 48 00 2A B5 */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 81397FF0 | 38 7E 01 50 */	addi r3, r30, 0x150
/* 81397FF4 | 38 80 FF FF */	li r4, -0x1
/* 81397FF8 | 4B FF E9 79 */	bl select__Q33ipl5scene12UrlProcessorFi
/* 81397FFC | 38 00 00 01 */	li r0, 0x1
/* 81398000 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81398004 | 48 00 00 48 */	b .L_8139804C
.L_81398008:
/* 81398008 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139800C | 38 80 00 00 */	li r4, 0x0
/* 81398010 | 38 A0 02 02 */	li r5, 0x202
/* 81398014 | 4B F9 83 21 */	bl memset
/* 81398018 | 38 7E 01 50 */	addi r3, r30, 0x150
/* 8139801C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81398020 | 38 A0 02 00 */	li r5, 0x200
/* 81398024 | 4B FF EB 1D */	bl get_url__Q33ipl5scene12UrlProcessorFPcUl
/* 81398028 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8139802C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81398030 | 4B FA 00 11 */	bl setupUrlJump__Q33ipl7channel7ManagerFPCc
/* 81398034 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398038 | 41 82 00 14 */	beq .L_8139804C
/* 8139803C | 38 60 00 00 */	li r3, 0x0
/* 81398040 | 38 00 00 0D */	li r0, 0xd
/* 81398044 | 90 7E 01 F8 */	stw r3, 0x1f8(r30)
/* 81398048 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_8139804C:
/* 8139804C | 80 01 02 24 */	lwz r0, 0x224(r1)
/* 81398050 | 83 E1 02 1C */	lwz r31, 0x21c(r1)
/* 81398054 | 83 C1 02 18 */	lwz r30, 0x218(r1)
/* 81398058 | 7C 08 03 A6 */	mtlr r0
/* 8139805C | 38 21 02 20 */	addi r1, r1, 0x220
/* 81398060 | 4E 80 00 20 */	blr
.endfn stt_chn_wait_url_jump_msg__Q33ipl5scene12focus_objectFv

# .text:0x133C | 0x81398064 | size: 0x54
# ipl::scene::focus_object::stt_chn_wait_jump()
.fn stt_chn_wait_jump__Q33ipl5scene12focus_objectFv, global
/* 81398064 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81398068 | 7C 08 02 A6 */	mflr r0
/* 8139806C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81398070 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81398074 | 7C 7F 1B 78 */	mr r31, r3
/* 81398078 | 80 83 01 F8 */	lwz r4, 0x1f8(r3)
/* 8139807C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81398080 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81398084 | 90 03 01 F8 */	stw r0, 0x1f8(r3)
/* 81398088 | 40 81 00 1C */	ble .L_813980A4
/* 8139808C | 38 80 00 01 */	li r4, 0x1
/* 81398090 | 48 00 0D 95 */	bl init_fadeout__Q33ipl5scene12focus_objectFb
/* 81398094 | 38 60 00 05 */	li r3, 0x5
/* 81398098 | 38 00 00 02 */	li r0, 0x2
/* 8139809C | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 813980A0 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813980A4:
/* 813980A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813980A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813980AC | 7C 08 03 A6 */	mtlr r0
/* 813980B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813980B4 | 4E 80 00 20 */	blr
.endfn stt_chn_wait_jump__Q33ipl5scene12focus_objectFv

# .text:0x1390 | 0x813980B8 | size: 0xCC
# ipl::scene::focus_object::stt_opt_wait_select_msg()
.fn stt_opt_wait_select_msg__Q33ipl5scene12focus_objectFv, global
/* 813980B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813980BC | 7C 08 02 A6 */	mflr r0
/* 813980C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813980C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813980C8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813980CC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813980D0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813980D4 | 7C 7E 1B 78 */	mr r30, r3
/* 813980D8 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 813980DC | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813980E0 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813980E4 | 41 82 00 44 */	beq .L_81398128
/* 813980E8 | 40 80 00 10 */	bge .L_813980F8
/* 813980EC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813980F0 | 40 80 00 14 */	bge .L_81398104
/* 813980F4 | 48 00 00 78 */	b .L_8139816C
.L_813980F8:
/* 813980F8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813980FC | 40 80 00 70 */	bge .L_8139816C
/* 81398100 | 48 00 00 4C */	b .L_8139814C
.L_81398104:
/* 81398104 | 7C 83 23 78 */	mr r3, r4
/* 81398108 | 38 80 00 6A */	li r4, 0x6a
/* 8139810C | 38 A0 00 2E */	li r5, 0x2e
/* 81398110 | 38 C0 00 25 */	li r6, 0x25
/* 81398114 | 38 E0 00 00 */	li r7, 0x0
/* 81398118 | 4B FA E9 BD */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 8139811C | 38 00 00 0F */	li r0, 0xf
/* 81398120 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81398124 | 48 00 00 48 */	b .L_8139816C
.L_81398128:
/* 81398128 | 7C 83 23 78 */	mr r3, r4
/* 8139812C | 38 80 00 6A */	li r4, 0x6a
/* 81398130 | 38 A0 00 2E */	li r5, 0x2e
/* 81398134 | 38 C0 00 25 */	li r6, 0x25
/* 81398138 | 38 E0 00 00 */	li r7, 0x0
/* 8139813C | 4B FA E9 99 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 81398140 | 38 00 00 10 */	li r0, 0x10
/* 81398144 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81398148 | 48 00 00 24 */	b .L_8139816C
.L_8139814C:
/* 8139814C | 48 00 29 55 */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 81398150 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81398154 | 38 80 00 05 */	li r4, 0x5
/* 81398158 | 48 07 2F E1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139815C | 38 63 00 64 */	addi r3, r3, 0x64
/* 81398160 | 48 00 55 49 */	bl reset_gui__Q33ipl5scene12OptOutButtonFv
/* 81398164 | 38 00 00 01 */	li r0, 0x1
/* 81398168 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_8139816C:
/* 8139816C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81398170 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81398174 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81398178 | 7C 08 03 A6 */	mtlr r0
/* 8139817C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81398180 | 4E 80 00 20 */	blr
.endfn stt_opt_wait_select_msg__Q33ipl5scene12focus_objectFv

# .text:0x145C | 0x81398184 | size: 0x8C
# ipl::scene::focus_object::stt_opt_wait_stop_msg()
.fn stt_opt_wait_stop_msg__Q33ipl5scene12focus_objectFv, global
/* 81398184 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81398188 | 7C 08 02 A6 */	mflr r0
/* 8139818C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81398190 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81398194 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81398198 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8139819C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813981A0 | 7C 7E 1B 78 */	mr r30, r3
/* 813981A4 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 813981A8 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813981AC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813981B0 | 41 82 00 28 */	beq .L_813981D8
/* 813981B4 | 40 80 00 44 */	bge .L_813981F8
/* 813981B8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813981BC | 40 80 00 08 */	bge .L_813981C4
/* 813981C0 | 48 00 00 38 */	b .L_813981F8
.L_813981C4:
/* 813981C4 | 38 80 00 00 */	li r4, 0x0
/* 813981C8 | 38 00 00 11 */	li r0, 0x11
/* 813981CC | 90 83 01 F4 */	stw r4, 0x1f4(r3)
/* 813981D0 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813981D4 | 48 00 00 24 */	b .L_813981F8
.L_813981D8:
/* 813981D8 | 48 00 28 C9 */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 813981DC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813981E0 | 38 80 00 05 */	li r4, 0x5
/* 813981E4 | 48 07 2F 55 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813981E8 | 38 63 00 64 */	addi r3, r3, 0x64
/* 813981EC | 48 00 54 BD */	bl reset_gui__Q33ipl5scene12OptOutButtonFv
/* 813981F0 | 38 00 00 01 */	li r0, 0x1
/* 813981F4 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_813981F8:
/* 813981F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813981FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81398200 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81398204 | 7C 08 03 A6 */	mtlr r0
/* 81398208 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139820C | 4E 80 00 20 */	blr
.endfn stt_opt_wait_stop_msg__Q33ipl5scene12focus_objectFv

# .text:0x14E8 | 0x81398210 | size: 0x8C
# ipl::scene::focus_object::stt_opt_wait_all_stop_msg()
.fn stt_opt_wait_all_stop_msg__Q33ipl5scene12focus_objectFv, global
/* 81398210 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81398214 | 7C 08 02 A6 */	mflr r0
/* 81398218 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139821C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81398220 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81398224 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81398228 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139822C | 7C 7E 1B 78 */	mr r30, r3
/* 81398230 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 81398234 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81398238 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139823C | 41 82 00 28 */	beq .L_81398264
/* 81398240 | 40 80 00 44 */	bge .L_81398284
/* 81398244 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81398248 | 40 80 00 08 */	bge .L_81398250
/* 8139824C | 48 00 00 38 */	b .L_81398284
.L_81398250:
/* 81398250 | 38 80 00 00 */	li r4, 0x0
/* 81398254 | 38 00 00 12 */	li r0, 0x12
/* 81398258 | 90 83 01 F4 */	stw r4, 0x1f4(r3)
/* 8139825C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81398260 | 48 00 00 24 */	b .L_81398284
.L_81398264:
/* 81398264 | 48 00 28 3D */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 81398268 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139826C | 38 80 00 05 */	li r4, 0x5
/* 81398270 | 48 07 2E C9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81398274 | 38 63 00 64 */	addi r3, r3, 0x64
/* 81398278 | 48 00 54 31 */	bl reset_gui__Q33ipl5scene12OptOutButtonFv
/* 8139827C | 38 00 00 01 */	li r0, 0x1
/* 81398280 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81398284:
/* 81398284 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81398288 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139828C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81398290 | 7C 08 03 A6 */	mtlr r0
/* 81398294 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81398298 | 4E 80 00 20 */	blr
.endfn stt_opt_wait_all_stop_msg__Q33ipl5scene12focus_objectFv

# .text:0x1574 | 0x8139829C | size: 0x12C
# ipl::scene::focus_object::stt_opt_delete_task()
.fn stt_opt_delete_task__Q33ipl5scene12focus_objectFv, global
/* 8139829C | 94 21 FD E0 */	stwu r1, -0x220(r1)
/* 813982A0 | 7C 08 02 A6 */	mflr r0
/* 813982A4 | 90 01 02 24 */	stw r0, 0x224(r1)
/* 813982A8 | 39 61 02 20 */	addi r11, r1, 0x220
/* 813982AC | 48 26 12 1D */	bl _savegpr_29
/* 813982B0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813982B4 | 7C 7D 1B 78 */	mr r29, r3
/* 813982B8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813982BC | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813982C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813982C4 | 41 82 00 0C */	beq .L_813982D0
/* 813982C8 | 3B C0 00 00 */	li r30, 0x0
/* 813982CC | 48 00 00 08 */	b .L_813982D4
.L_813982D0:
/* 813982D0 | 83 C4 00 8C */	lwz r30, 0x8c(r4)
.L_813982D4:
/* 813982D4 | 7F C3 F3 78 */	mr r3, r30
/* 813982D8 | 4B FA 97 69 */	bl open__Q33ipl5nwc247ManagerFv
/* 813982DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813982E0 | 41 82 00 C8 */	beq .L_813983A8
/* 813982E4 | 3B E0 00 00 */	li r31, 0x0
/* 813982E8 | 38 61 00 0A */	addi r3, r1, 0xa
/* 813982EC | B3 E1 00 0A */	sth r31, 0xa(r1)
/* 813982F0 | 38 80 00 01 */	li r4, 0x1
/* 813982F4 | 48 11 71 15 */	bl NWC24IterateDlTask
/* 813982F8 | 48 00 00 7C */	b .L_81398374
.L_813982FC:
/* 813982FC | A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 81398300 | 7F C3 F3 78 */	mr r3, r30
/* 81398304 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81398308 | 4B FA 9E 05 */	bl getDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTaskUs
/* 8139830C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398310 | 41 82 00 58 */	beq .L_81398368
/* 81398314 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81398318 | 7F C3 F3 78 */	mr r3, r30
/* 8139831C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81398320 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81398324 | 9B E1 00 08 */	stb r31, 0x8(r1)
/* 81398328 | 4B FA 9E 6D */	bl getDlOptOutFlags__Q33ipl5nwc247ManagerFP11NWC24DlTaskPUc
/* 8139832C | 7F C3 F3 78 */	mr r3, r30
/* 81398330 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81398334 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81398338 | 4B FA 9E 19 */	bl getDlAppId__Q33ipl5nwc247ManagerFPC11NWC24DlTaskPUl
/* 8139833C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81398340 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81398344 | 41 82 00 24 */	beq .L_81398368
/* 81398348 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8139834C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81398350 | 80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 81398354 | 7C 04 00 40 */	cmplw r4, r0
/* 81398358 | 40 82 00 10 */	bne .L_81398368
/* 8139835C | 7F C3 F3 78 */	mr r3, r30
/* 81398360 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81398364 | 4B FA 9E 75 */	bl deleteDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTask
.L_81398368:
/* 81398368 | 38 61 00 0A */	addi r3, r1, 0xa
/* 8139836C | 38 80 00 00 */	li r4, 0x0
/* 81398370 | 48 11 70 99 */	bl NWC24IterateDlTask
.L_81398374:
/* 81398374 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398378 | 40 80 FF 84 */	bge .L_813982FC
/* 8139837C | 7F C3 F3 78 */	mr r3, r30
/* 81398380 | 4B FA 97 35 */	bl close__Q33ipl5nwc247ManagerFv
/* 81398384 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81398388 | 38 80 00 6B */	li r4, 0x6b
/* 8139838C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81398390 | 38 A0 00 2E */	li r5, 0x2e
/* 81398394 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81398398 | 4B FA E3 61 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8139839C | 38 00 00 13 */	li r0, 0x13
/* 813983A0 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 813983A4 | 48 00 00 0C */	b .L_813983B0
.L_813983A8:
/* 813983A8 | 7F A3 EB 78 */	mr r3, r29
/* 813983AC | 48 00 32 91 */	bl check_delete_task_failure__Q33ipl5scene12focus_objectFv
.L_813983B0:
/* 813983B0 | 39 61 02 20 */	addi r11, r1, 0x220
/* 813983B4 | 48 26 11 61 */	bl _restgpr_29
/* 813983B8 | 80 01 02 24 */	lwz r0, 0x224(r1)
/* 813983BC | 7C 08 03 A6 */	mtlr r0
/* 813983C0 | 38 21 02 20 */	addi r1, r1, 0x220
/* 813983C4 | 4E 80 00 20 */	blr
.endfn stt_opt_delete_task__Q33ipl5scene12focus_objectFv

# .text:0x16A0 | 0x813983C8 | size: 0x118
# ipl::scene::focus_object::stt_opt_delete_all_task()
.fn stt_opt_delete_all_task__Q33ipl5scene12focus_objectFv, global
/* 813983C8 | 94 21 FD E0 */	stwu r1, -0x220(r1)
/* 813983CC | 7C 08 02 A6 */	mflr r0
/* 813983D0 | 90 01 02 24 */	stw r0, 0x224(r1)
/* 813983D4 | 39 61 02 20 */	addi r11, r1, 0x220
/* 813983D8 | 48 26 10 F1 */	bl _savegpr_29
/* 813983DC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813983E0 | 7C 7D 1B 78 */	mr r29, r3
/* 813983E4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813983E8 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813983EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813983F0 | 41 82 00 0C */	beq .L_813983FC
/* 813983F4 | 3B C0 00 00 */	li r30, 0x0
/* 813983F8 | 48 00 00 08 */	b .L_81398400
.L_813983FC:
/* 813983FC | 83 C4 00 8C */	lwz r30, 0x8c(r4)
.L_81398400:
/* 81398400 | 7F C3 F3 78 */	mr r3, r30
/* 81398404 | 4B FA 96 3D */	bl open__Q33ipl5nwc247ManagerFv
/* 81398408 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139840C | 41 82 00 B4 */	beq .L_813984C0
/* 81398410 | 3B E0 00 00 */	li r31, 0x0
/* 81398414 | 38 61 00 0A */	addi r3, r1, 0xa
/* 81398418 | B3 E1 00 0A */	sth r31, 0xa(r1)
/* 8139841C | 38 80 00 01 */	li r4, 0x1
/* 81398420 | 48 11 6F E9 */	bl NWC24IterateDlTask
/* 81398424 | 48 00 00 68 */	b .L_8139848C
.L_81398428:
/* 81398428 | A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 8139842C | 7F C3 F3 78 */	mr r3, r30
/* 81398430 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81398434 | 4B FA 9C D9 */	bl getDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTaskUs
/* 81398438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139843C | 41 82 00 44 */	beq .L_81398480
/* 81398440 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81398444 | 7F C3 F3 78 */	mr r3, r30
/* 81398448 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8139844C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81398450 | 9B E1 00 08 */	stb r31, 0x8(r1)
/* 81398454 | 4B FA 9D 41 */	bl getDlOptOutFlags__Q33ipl5nwc247ManagerFP11NWC24DlTaskPUc
/* 81398458 | 7F C3 F3 78 */	mr r3, r30
/* 8139845C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81398460 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81398464 | 4B FA 9C ED */	bl getDlAppId__Q33ipl5nwc247ManagerFPC11NWC24DlTaskPUl
/* 81398468 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8139846C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81398470 | 41 82 00 10 */	beq .L_81398480
/* 81398474 | 7F C3 F3 78 */	mr r3, r30
/* 81398478 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8139847C | 4B FA 9D 5D */	bl deleteDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTask
.L_81398480:
/* 81398480 | 38 61 00 0A */	addi r3, r1, 0xa
/* 81398484 | 38 80 00 00 */	li r4, 0x0
/* 81398488 | 48 11 6F 81 */	bl NWC24IterateDlTask
.L_8139848C:
/* 8139848C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398490 | 40 80 FF 98 */	bge .L_81398428
/* 81398494 | 7F C3 F3 78 */	mr r3, r30
/* 81398498 | 4B FA 96 1D */	bl close__Q33ipl5nwc247ManagerFv
/* 8139849C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813984A0 | 38 80 00 6C */	li r4, 0x6c
/* 813984A4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813984A8 | 38 A0 00 2E */	li r5, 0x2e
/* 813984AC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813984B0 | 4B FA E2 49 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813984B4 | 38 00 00 13 */	li r0, 0x13
/* 813984B8 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 813984BC | 48 00 00 0C */	b .L_813984C8
.L_813984C0:
/* 813984C0 | 7F A3 EB 78 */	mr r3, r29
/* 813984C4 | 48 00 31 79 */	bl check_delete_task_failure__Q33ipl5scene12focus_objectFv
.L_813984C8:
/* 813984C8 | 39 61 02 20 */	addi r11, r1, 0x220
/* 813984CC | 48 26 10 49 */	bl _restgpr_29
/* 813984D0 | 80 01 02 24 */	lwz r0, 0x224(r1)
/* 813984D4 | 7C 08 03 A6 */	mtlr r0
/* 813984D8 | 38 21 02 20 */	addi r1, r1, 0x220
/* 813984DC | 4E 80 00 20 */	blr
.endfn stt_opt_delete_all_task__Q33ipl5scene12focus_objectFv

# .text:0x17B8 | 0x813984E0 | size: 0x68
# ipl::scene::focus_object::stt_opt_wait_confirm_msg()
.fn stt_opt_wait_confirm_msg__Q33ipl5scene12focus_objectFv, global
/* 813984E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813984E4 | 7C 08 02 A6 */	mflr r0
/* 813984E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813984EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813984F0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813984F4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813984F8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813984FC | 7C 7E 1B 78 */	mr r30, r3
/* 81398500 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 81398504 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81398508 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8139850C | 41 82 00 24 */	beq .L_81398530
/* 81398510 | 48 00 25 91 */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 81398514 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81398518 | 38 80 00 05 */	li r4, 0x5
/* 8139851C | 48 07 2C 1D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81398520 | 38 63 00 64 */	addi r3, r3, 0x64
/* 81398524 | 48 00 51 85 */	bl reset_gui__Q33ipl5scene12OptOutButtonFv
/* 81398528 | 38 00 00 01 */	li r0, 0x1
/* 8139852C | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81398530:
/* 81398530 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81398534 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81398538 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139853C | 7C 08 03 A6 */	mtlr r0
/* 81398540 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81398544 | 4E 80 00 20 */	blr
.endfn stt_opt_wait_confirm_msg__Q33ipl5scene12focus_objectFv

# .text:0x1820 | 0x81398548 | size: 0x100
# ipl::scene::focus_object::stt_net_wait_net_setting_msg()
.fn stt_net_wait_net_setting_msg__Q33ipl5scene12focus_objectFv, global
/* 81398548 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8139854C | 7C 08 02 A6 */	mflr r0
/* 81398550 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81398554 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81398558 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8139855C | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 81398560 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 81398564 | 7C 7E 1B 78 */	mr r30, r3
/* 81398568 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8139856C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81398570 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81398574 | 41 82 00 14 */	beq .L_81398588
/* 81398578 | 40 80 00 B8 */	bge .L_81398630
/* 8139857C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81398580 | 40 80 00 14 */	bge .L_81398594
/* 81398584 | 48 00 00 AC */	b .L_81398630
.L_81398588:
/* 81398588 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8139858C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81398590 | 48 00 00 A0 */	b .L_81398630
.L_81398594:
/* 81398594 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81398598 | 48 1D 1B E1 */	bl SCGetParentalControl
/* 8139859C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813985A0 | 38 60 00 00 */	li r3, 0x0
/* 813985A4 | 41 82 00 14 */	beq .L_813985B8
/* 813985A8 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813985AC | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813985B0 | 41 82 00 08 */	beq .L_813985B8
/* 813985B4 | 38 60 00 01 */	li r3, 0x1
.L_813985B8:
/* 813985B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813985BC | 41 82 00 64 */	beq .L_81398620
/* 813985C0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813985C4 | 38 80 00 05 */	li r4, 0x5
/* 813985C8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813985CC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813985D0 | 48 07 2B 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813985D4 | 38 80 00 00 */	li r4, 0x0
/* 813985D8 | 38 A0 00 00 */	li r5, 0x0
/* 813985DC | 48 00 43 61 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813985E0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813985E4 | 38 80 00 05 */	li r4, 0x5
/* 813985E8 | 48 07 2B 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813985EC | 38 80 00 10 */	li r4, 0x10
/* 813985F0 | 48 00 45 69 */	bl iplButton_8139CB58
/* 813985F4 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813985F8 | 38 C0 00 00 */	li r6, 0x0
/* 813985FC | 38 A0 00 0B */	li r5, 0xb
/* 81398600 | 38 80 00 08 */	li r4, 0x8
/* 81398604 | 38 00 00 16 */	li r0, 0x16
/* 81398608 | 98 DE 02 00 */	stb r6, 0x200(r30)
/* 8139860C | 90 BE 00 0C */	stw r5, 0xc(r30)
/* 81398610 | 90 9E 00 10 */	stw r4, 0x10(r30)
/* 81398614 | 90 7E 00 08 */	stw r3, 0x8(r30)
/* 81398618 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8139861C | 48 00 00 14 */	b .L_81398630
.L_81398620:
/* 81398620 | 38 60 00 08 */	li r3, 0x8
/* 81398624 | 38 00 00 18 */	li r0, 0x18
/* 81398628 | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 8139862C | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81398630:
/* 81398630 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81398634 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 81398638 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8139863C | 7C 08 03 A6 */	mtlr r0
/* 81398640 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81398644 | 4E 80 00 20 */	blr
.endfn stt_net_wait_net_setting_msg__Q33ipl5scene12focus_objectFv

# .text:0x1920 | 0x81398648 | size: 0x48
# ipl::scene::focus_object::stt_net_wait_nwc_setting_msg()
.fn stt_net_wait_nwc_setting_msg__Q33ipl5scene12focus_objectFv, global
/* 81398648 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8139864C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81398650 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 81398654 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 81398658 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139865C | 41 82 00 14 */	beq .L_81398670
/* 81398660 | 4C 80 00 20 */	bgelr
/* 81398664 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81398668 | 40 80 00 14 */	bge .L_8139867C
/* 8139866C | 4E 80 00 20 */	blr
.L_81398670:
/* 81398670 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81398674 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81398678 | 4E 80 00 20 */	blr
.L_8139867C:
/* 8139867C | 38 80 00 09 */	li r4, 0x9
/* 81398680 | 38 00 00 18 */	li r0, 0x18
/* 81398684 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 81398688 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8139868C | 4E 80 00 20 */	blr
.endfn stt_net_wait_nwc_setting_msg__Q33ipl5scene12focus_objectFv

# .text:0x1968 | 0x81398690 | size: 0x84
# ipl::scene::focus_object::stt_net_wait_parental_scene()
.fn stt_net_wait_parental_scene__Q33ipl5scene12focus_objectFv, global
/* 81398690 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81398694 | 7C 08 02 A6 */	mflr r0
/* 81398698 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139869C | 38 80 00 1B */	li r4, 0x1b
/* 813986A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813986A4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813986A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813986AC | 7C 7F 1B 78 */	mr r31, r3
/* 813986B0 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813986B4 | 48 07 2A 85 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813986B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813986BC | 41 82 00 44 */	beq .L_81398700
/* 813986C0 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813986C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813986C8 | 41 82 00 14 */	beq .L_813986DC
/* 813986CC | 41 80 00 34 */	blt .L_81398700
/* 813986D0 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813986D4 | 40 80 00 2C */	bge .L_81398700
/* 813986D8 | 48 00 00 18 */	b .L_813986F0
.L_813986DC:
/* 813986DC | 38 60 00 01 */	li r3, 0x1
/* 813986E0 | 38 00 00 17 */	li r0, 0x17
/* 813986E4 | 98 7F 02 00 */	stb r3, 0x200(r31)
/* 813986E8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813986EC | 48 00 00 14 */	b .L_81398700
.L_813986F0:
/* 813986F0 | 38 60 00 00 */	li r3, 0x0
/* 813986F4 | 38 00 00 17 */	li r0, 0x17
/* 813986F8 | 98 7F 02 00 */	stb r3, 0x200(r31)
/* 813986FC | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81398700:
/* 81398700 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81398704 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81398708 | 7C 08 03 A6 */	mtlr r0
/* 8139870C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81398710 | 4E 80 00 20 */	blr
.endfn stt_net_wait_parental_scene__Q33ipl5scene12focus_objectFv

# .text:0x19EC | 0x81398714 | size: 0x9C
# ipl::scene::focus_object::stt_net_wait_parental_scene_dst()
.fn stt_net_wait_parental_scene_dst__Q33ipl5scene12focus_objectFv, global
/* 81398714 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81398718 | 7C 08 02 A6 */	mflr r0
/* 8139871C | 38 80 00 1B */	li r4, 0x1b
/* 81398720 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81398724 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81398728 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8139872C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81398730 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81398734 | 7C 7E 1B 78 */	mr r30, r3
/* 81398738 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139873C | 48 07 29 FD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81398740 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398744 | 40 82 00 54 */	bne .L_81398798
/* 81398748 | 88 1E 02 00 */	lbz r0, 0x200(r30)
/* 8139874C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81398750 | 41 82 00 20 */	beq .L_81398770
/* 81398754 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 81398758 | 38 60 00 00 */	li r3, 0x0
/* 8139875C | 38 00 00 18 */	li r0, 0x18
/* 81398760 | 90 9E 00 0C */	stw r4, 0xc(r30)
/* 81398764 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 81398768 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8139876C | 48 00 00 2C */	b .L_81398798
.L_81398770:
/* 81398770 | 7F C3 F3 78 */	mr r3, r30
/* 81398774 | 48 00 23 2D */	bl show_cmn_btn__Q33ipl5scene12focus_objectFv
/* 81398778 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139877C | 38 80 00 05 */	li r4, 0x5
/* 81398780 | 48 07 29 B9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81398784 | 38 9E 00 38 */	addi r4, r30, 0x38
/* 81398788 | 38 BE 00 48 */	addi r5, r30, 0x48
/* 8139878C | 48 00 41 B1 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81398790 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 81398794 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81398798:
/* 81398798 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139879C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813987A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813987A4 | 7C 08 03 A6 */	mtlr r0
/* 813987A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813987AC | 4E 80 00 20 */	blr
.endfn stt_net_wait_parental_scene_dst__Q33ipl5scene12focus_objectFv

# .text:0x1A88 | 0x813987B0 | size: 0xBC
# ipl::scene::focus_object::proc_input()
.fn proc_input__Q33ipl5scene12focus_objectFv, global
/* 813987B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813987B4 | 7C 08 02 A6 */	mflr r0
/* 813987B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813987BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813987C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813987C4 | 7C 7E 1B 78 */	mr r30, r3
/* 813987C8 | 4B F9 D1 E1 */	bl getMasterController__Q23ipl6SystemFv
/* 813987CC | 80 1E 00 88 */	lwz r0, 0x88(r30)
/* 813987D0 | 7C 7F 1B 78 */	mr r31, r3
/* 813987D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813987D8 | 40 82 00 7C */	bne .L_81398854
/* 813987DC | 7F C3 F3 78 */	mr r3, r30
/* 813987E0 | 48 00 21 61 */	bl scale_up_or_down_arw__Q33ipl5scene12focus_objectFv
/* 813987E4 | 38 7E 00 A8 */	addi r3, r30, 0xa8
/* 813987E8 | 4B FC B2 FD */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 813987EC | 7C 60 00 34 */	cntlzw r0, r3
/* 813987F0 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813987F4 | 41 82 00 60 */	beq .L_81398854
/* 813987F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813987FC | 3C 80 00 01 */	lis r4, 0x1
/* 81398800 | 7F E3 FB 78 */	mr r3, r31
/* 81398804 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81398808 | 38 84 00 08 */	addi r4, r4, 0x8
/* 8139880C | 7D 89 03 A6 */	mtctr r12
/* 81398810 | 4E 80 04 21 */	bctrl
/* 81398814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398818 | 41 82 00 10 */	beq .L_81398828
/* 8139881C | 38 00 00 01 */	li r0, 0x1
/* 81398820 | 90 1E 00 88 */	stw r0, 0x88(r30)
/* 81398824 | 48 00 00 30 */	b .L_81398854
.L_81398828:
/* 81398828 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139882C | 3C 80 40 00 */	lis r4, 0x4000
/* 81398830 | 7F E3 FB 78 */	mr r3, r31
/* 81398834 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81398838 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8139883C | 7D 89 03 A6 */	mtctr r12
/* 81398840 | 4E 80 04 21 */	bctrl
/* 81398844 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398848 | 41 82 00 0C */	beq .L_81398854
/* 8139884C | 38 00 00 02 */	li r0, 0x2
/* 81398850 | 90 1E 00 88 */	stw r0, 0x88(r30)
.L_81398854:
/* 81398854 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81398858 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139885C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81398860 | 7C 08 03 A6 */	mtlr r0
/* 81398864 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81398868 | 4E 80 00 20 */	blr
.endfn proc_input__Q33ipl5scene12focus_objectFv

# .text:0x1B44 | 0x8139886C | size: 0x184
# ipl::scene::focus_object::proc_url_jump()
.fn proc_url_jump__Q33ipl5scene12focus_objectFv, global
/* 8139886C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81398870 | 7C 08 02 A6 */	mflr r0
/* 81398874 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81398878 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8139887C | 48 26 0C 1D */	bl _savegpr_17
/* 81398880 | 3F 40 81 09 */	lis r26, smArg__Q23ipl6System@ha
/* 81398884 | 7C 7F 1B 78 */	mr r31, r3
/* 81398888 | 3B 5A 90 08 */	addi r26, r26, smArg__Q23ipl6System@l
/* 8139888C | 3A 60 00 00 */	li r19, 0x0
/* 81398890 | 3E A0 81 09 */	lis r21, sSystem__Q23ipl3snd@ha
/* 81398894 | 3E C0 81 65 */	lis r22, lbl_8164BB53@ha
/* 81398898 | 3A E0 00 01 */	li r23, 0x1
/* 8139889C | 3F 00 00 10 */	lis r24, 0x10
/* 813988A0 | 3F 60 81 09 */	lis r27, sBannerSoundPlayer__Q23ipl3snd@ha
/* 813988A4 | 3F 20 81 65 */	lis r25, lbl_8164BB69@ha
/* 813988A8 | 3B C0 00 00 */	li r30, 0x0
/* 813988AC | 3B A0 00 04 */	li r29, 0x4
/* 813988B0 | 3B 80 00 0C */	li r28, 0xc
.L_813988B4:
/* 813988B4 | 7E 63 9B 78 */	mr r3, r19
/* 813988B8 | 4B F9 D1 11 */	bl getController__Q23ipl6SystemFi
/* 813988BC | 7C 72 1B 78 */	mr r18, r3
/* 813988C0 | 7E 64 9B 78 */	mr r4, r19
/* 813988C4 | 38 7F 01 50 */	addi r3, r31, 0x150
/* 813988C8 | 4B FF E0 B1 */	bl get_focused_tagno__Q33ipl5scene12UrlProcessorCFi
/* 813988CC | 2C 12 00 00 */	cmpwi r18, 0x0
/* 813988D0 | 7C 71 1B 78 */	mr r17, r3
/* 813988D4 | 41 82 00 F0 */	beq .L_813989C4
/* 813988D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813988DC | 41 80 00 E8 */	blt .L_813989C4
/* 813988E0 | 7E 9F 9A 14 */	add r20, r31, r19
/* 813988E4 | 88 14 01 A4 */	lbz r0, 0x1a4(r20)
/* 813988E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813988EC | 40 82 00 2C */	bne .L_81398918
/* 813988F0 | 38 75 99 2C */	addi r3, r21, sSystem__Q23ipl3snd@l
/* 813988F4 | 38 96 BB 53 */	addi r4, r22, lbl_8164BB53@l
/* 813988F8 | 4B FD 2B 75 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813988FC | 81 92 00 00 */	lwz r12, 0x0(r18)
/* 81398900 | 7E 43 93 78 */	mr r3, r18
/* 81398904 | 38 80 00 00 */	li r4, 0x0
/* 81398908 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8139890C | 7D 89 03 A6 */	mtctr r12
/* 81398910 | 4E 80 04 21 */	bctrl
/* 81398914 | 9A F4 01 A4 */	stb r23, 0x1a4(r20)
.L_81398918:
/* 81398918 | 81 92 00 00 */	lwz r12, 0x0(r18)
/* 8139891C | 7E 43 93 78 */	mr r3, r18
/* 81398920 | 38 98 08 00 */	addi r4, r24, 0x800
/* 81398924 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81398928 | 7D 89 03 A6 */	mtctr r12
/* 8139892C | 4E 80 04 21 */	bctrl
/* 81398930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398934 | 41 82 00 98 */	beq .L_813989CC
/* 81398938 | 7E 24 8B 78 */	mr r4, r17
/* 8139893C | 38 7F 01 50 */	addi r3, r31, 0x150
/* 81398940 | 4B FF E0 31 */	bl select__Q33ipl5scene12UrlProcessorFi
/* 81398944 | 38 75 99 2C */	addi r3, r21, sSystem__Q23ipl3snd@l
/* 81398948 | 38 99 BB 69 */	addi r4, r25, lbl_8164BB69@l
/* 8139894C | 4B FD 2B 21 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81398950 | 80 7A 00 84 */	lwz r3, 0x84(r26)
/* 81398954 | 4B F9 F6 4D */	bl isEnableUrlJump__Q33ipl7channel7ManagerFv
/* 81398958 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139895C | 41 82 00 44 */	beq .L_813989A0
/* 81398960 | 80 7A 00 AC */	lwz r3, 0xac(r26)
/* 81398964 | 38 80 00 58 */	li r4, 0x58
/* 81398968 | 38 A0 00 2E */	li r5, 0x2e
/* 8139896C | 38 C0 00 25 */	li r6, 0x25
/* 81398970 | 38 E0 00 00 */	li r7, 0x0
/* 81398974 | 4B FA E1 61 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 81398978 | 7F E3 FB 78 */	mr r3, r31
/* 8139897C | 48 00 22 29 */	bl hide_cmn_btn__Q33ipl5scene12focus_objectFv
/* 81398980 | 80 1F 01 34 */	lwz r0, 0x134(r31)
/* 81398984 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81398988 | 41 82 00 10 */	beq .L_81398998
/* 8139898C | 38 7B 9F 68 */	addi r3, r27, sBannerSoundPlayer__Q23ipl3snd@l
/* 81398990 | 38 80 00 1E */	li r4, 0x1e
/* 81398994 | 48 07 5F 85 */	bl stop__17BannerSoundPlayerFUl
.L_81398998:
/* 81398998 | 93 9F 00 00 */	stw r28, 0x0(r31)
/* 8139899C | 48 00 00 30 */	b .L_813989CC
.L_813989A0:
/* 813989A0 | 80 7A 00 AC */	lwz r3, 0xac(r26)
/* 813989A4 | 38 80 00 59 */	li r4, 0x59
/* 813989A8 | 38 A0 00 2E */	li r5, 0x2e
/* 813989AC | 4B FA DD 4D */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813989B0 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 813989B4 | 92 FF 00 04 */	stw r23, 0x4(r31)
/* 813989B8 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 813989BC | 93 BF 00 00 */	stw r29, 0x0(r31)
/* 813989C0 | 48 00 00 0C */	b .L_813989CC
.L_813989C4:
/* 813989C4 | 7C 7F 9A 14 */	add r3, r31, r19
/* 813989C8 | 9B C3 01 A4 */	stb r30, 0x1a4(r3)
.L_813989CC:
/* 813989CC | 3A 73 00 01 */	addi r19, r19, 0x1
/* 813989D0 | 2C 13 00 04 */	cmpwi r19, 0x4
/* 813989D4 | 41 80 FE E0 */	blt .L_813988B4
/* 813989D8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813989DC | 48 26 0B 09 */	bl _restgpr_17
/* 813989E0 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813989E4 | 7C 08 03 A6 */	mtlr r0
/* 813989E8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813989EC | 4E 80 00 20 */	blr
.endfn proc_url_jump__Q33ipl5scene12focus_objectFv

# .text:0x1CC8 | 0x813989F0 | size: 0x2E4
# ipl::scene::focus_object::draw()
.fn draw__Q33ipl5scene12focus_objectFv, global
/* 813989F0 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813989F4 | 7C 08 02 A6 */	mflr r0
/* 813989F8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813989FC | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 81398A00 | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 81398A04 | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 81398A08 | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 81398A0C | DB A1 00 60 */	stfd f29, 0x60(r1)
/* 81398A10 | F3 A1 00 68 */	psq_st f29, 0x68(r1), 0, qr0
/* 81398A14 | DB 81 00 50 */	stfd f28, 0x50(r1)
/* 81398A18 | F3 81 00 58 */	psq_st f28, 0x58(r1), 0, qr0
/* 81398A1C | DB 61 00 40 */	stfd f27, 0x40(r1)
/* 81398A20 | F3 61 00 48 */	psq_st f27, 0x48(r1), 0, qr0
/* 81398A24 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81398A28 | 48 26 0A 9D */	bl _savegpr_28
/* 81398A2C | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 81398A30 | 7C 7F 1B 78 */	mr r31, r3
/* 81398A34 | 3F A0 81 65 */	lis r29, lbl_8164B6D0@ha
/* 81398A38 | 38 8D 86 6C */	li r4, lbl_816966AC@sda21
/* 81398A3C | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 81398A40 | 3B BD B6 D0 */	addi r29, r29, lbl_8164B6D0@l
/* 81398A44 | 38 A0 00 01 */	li r5, 0x1
/* 81398A48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81398A4C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81398A50 | 7D 89 03 A6 */	mtctr r12
/* 81398A54 | 4E 80 04 21 */	bctrl
/* 81398A58 | 7C 64 1B 78 */	mr r4, r3
/* 81398A5C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81398A60 | 38 84 00 2C */	addi r4, r4, 0x2c
/* 81398A64 | 4B FF EB 41 */	bl __ct__Q33ipl4math4VEC3FRCQ34nw4r4math5_VEC3
/* 81398A68 | 38 7F 01 50 */	addi r3, r31, 0x150
/* 81398A6C | 4B FF DA E9 */	bl clear_prev_drawing__Q33ipl5scene12UrlProcessorFv
/* 81398A70 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81398A74 | 3B C0 00 00 */	li r30, 0x0
/* 81398A78 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81398A7C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81398A80 | D0 1F 01 94 */	stfs f0, 0x194(r31)
/* 81398A84 | 40 82 00 18 */	bne .L_81398A9C
/* 81398A88 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 81398A8C | 4B FF EC 49 */	bl is_busy__Q33ipl5scene8scrollerCFv
/* 81398A90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398A94 | 40 82 00 08 */	bne .L_81398A9C
/* 81398A98 | 3B C0 00 01 */	li r30, 0x1
.L_81398A9C:
/* 81398A9C | 9B DF 01 A3 */	stb r30, 0x1a3(r31)
/* 81398AA0 | C0 02 84 70 */	lfs f0, lbl_81694870@sda21(r0)
/* 81398AA4 | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 81398AA8 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81398AAC | 40 80 00 10 */	bge .L_81398ABC
/* 81398AB0 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398AB4 | 38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 81398AB8 | 4B FD 1D 51 */	bl draw__Q33ipl6layout6ObjectFPCc
.L_81398ABC:
/* 81398ABC | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398AC0 | 38 8D 86 73 */	li r4, lbl_816966B3@sda21
/* 81398AC4 | C3 82 84 6C */	lfs f28, lbl_8169486C@sda21(r0)
/* 81398AC8 | 38 A0 00 01 */	li r5, 0x1
/* 81398ACC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81398AD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81398AD4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81398AD8 | 7D 89 03 A6 */	mtctr r12
/* 81398ADC | 4E 80 04 21 */	bctrl
/* 81398AE0 | C3 63 00 50 */	lfs f27, 0x50(r3)
/* 81398AE4 | 7C 7E 1B 78 */	mr r30, r3
/* 81398AE8 | C3 E2 84 6C */	lfs f31, lbl_8169486C@sda21(r0)
/* 81398AEC | 3B 80 00 00 */	li r28, 0x0
/* 81398AF0 | C3 C2 84 70 */	lfs f30, lbl_81694870@sda21(r0)
/* 81398AF4 | C3 A2 84 74 */	lfs f29, lbl_81694874@sda21(r0)
/* 81398AF8 | 48 00 00 60 */	b .L_81398B58
.L_81398AFC:
/* 81398AFC | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81398B00 | EC 00 E0 2A */	fadds f0, f0, f28
/* 81398B04 | FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 81398B08 | 40 80 00 48 */	bge .L_81398B50
/* 81398B0C | FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 81398B10 | 40 80 00 40 */	bge .L_81398B50
/* 81398B14 | D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 81398B18 | 7F C3 F3 78 */	mr r3, r30
/* 81398B1C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81398B20 | D3 81 00 14 */	stfs f28, 0x14(r1)
/* 81398B24 | 4B FA B8 C1 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 81398B28 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81398B2C | 7F C3 F3 78 */	mr r3, r30
/* 81398B30 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81398B34 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81398B38 | 38 84 02 98 */	addi r4, r4, 0x298
/* 81398B3C | 7D 89 03 A6 */	mtctr r12
/* 81398B40 | 4E 80 04 21 */	bctrl
/* 81398B44 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398B48 | 7F C4 F3 78 */	mr r4, r30
/* 81398B4C | 4B FD 1D 41 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
.L_81398B50:
/* 81398B50 | EF 9C D8 28 */	fsubs f28, f28, f27
/* 81398B54 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81398B58:
/* 81398B58 | 80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 81398B5C | 7C 1C 00 00 */	cmpw r28, r0
/* 81398B60 | 41 80 FF 9C */	blt .L_81398AFC
/* 81398B64 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398B68 | EF 9C D8 2A */	fadds f28, f28, f27
/* 81398B6C | 38 9D 04 B1 */	addi r4, r29, 0x4b1
/* 81398B70 | 38 A0 00 01 */	li r5, 0x1
/* 81398B74 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81398B78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81398B7C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81398B80 | 7D 89 03 A6 */	mtctr r12
/* 81398B84 | 4E 80 04 21 */	bctrl
/* 81398B88 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81398B8C | 7C 7E 1B 78 */	mr r30, r3
/* 81398B90 | C0 22 84 74 */	lfs f1, lbl_81694874@sda21(r0)
/* 81398B94 | EC 00 E0 2A */	fadds f0, f0, f28
/* 81398B98 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81398B9C | 40 80 00 40 */	bge .L_81398BDC
/* 81398BA0 | C0 02 84 6C */	lfs f0, lbl_8169486C@sda21(r0)
/* 81398BA4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81398BA8 | D3 81 00 0C */	stfs f28, 0xc(r1)
/* 81398BAC | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81398BB0 | 4B FA B8 35 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 81398BB4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81398BB8 | 7F C3 F3 78 */	mr r3, r30
/* 81398BBC | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81398BC0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81398BC4 | 38 84 02 98 */	addi r4, r4, 0x298
/* 81398BC8 | 7D 89 03 A6 */	mtctr r12
/* 81398BCC | 4E 80 04 21 */	bctrl
/* 81398BD0 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398BD4 | 7F C4 F3 78 */	mr r4, r30
/* 81398BD8 | 4B FD 1C B5 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
.L_81398BDC:
/* 81398BDC | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81398BE0 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81398BE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398BE8 | 41 82 00 1C */	beq .L_81398C04
/* 81398BEC | 88 03 00 50 */	lbz r0, 0x50(r3)
/* 81398BF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81398BF4 | 41 82 00 10 */	beq .L_81398C04
/* 81398BF8 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398BFC | 38 8D 86 7A */	li r4, lbl_816966BA@sda21
/* 81398C00 | 4B FD 1C 09 */	bl draw__Q33ipl6layout6ObjectFPCc
.L_81398C04:
/* 81398C04 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398C08 | 38 9D 04 BA */	addi r4, r29, 0x4ba
/* 81398C0C | 4B FD 1B FD */	bl draw__Q33ipl6layout6ObjectFPCc
/* 81398C10 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398C14 | 38 9D 04 C3 */	addi r4, r29, 0x4c3
/* 81398C18 | 4B FD 1B F1 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 81398C1C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81398C20 | 88 03 00 CE */	lbz r0, 0xce(r3)
/* 81398C24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81398C28 | 41 82 00 1C */	beq .L_81398C44
/* 81398C2C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398C30 | 38 8D 86 81 */	li r4, lbl_816966C1@sda21
/* 81398C34 | 4B FD 1B D5 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 81398C38 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398C3C | 38 8D 86 89 */	li r4, lbl_816966C9@sda21
/* 81398C40 | 4B FD 1B C9 */	bl draw__Q33ipl6layout6ObjectFPCc
.L_81398C44:
/* 81398C44 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 81398C48 | 48 03 89 B1 */	bl draw__Q33ipl5scene11TextBalloonFv
/* 81398C4C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398C50 | 38 9D 04 CC */	addi r4, r29, 0x4cc
/* 81398C54 | 38 A0 00 01 */	li r5, 0x1
/* 81398C58 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81398C5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81398C60 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81398C64 | 7D 89 03 A6 */	mtctr r12
/* 81398C68 | 4E 80 04 21 */	bctrl
/* 81398C6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398C70 | 41 82 00 10 */	beq .L_81398C80
/* 81398C74 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398C78 | 38 9D 04 CC */	addi r4, r29, 0x4cc
/* 81398C7C | 4B FD 1B 8D */	bl draw__Q33ipl6layout6ObjectFPCc
.L_81398C80:
/* 81398C80 | 88 1F 01 A0 */	lbz r0, 0x1a0(r31)
/* 81398C84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81398C88 | 40 82 00 0C */	bne .L_81398C94
/* 81398C8C | 38 00 00 01 */	li r0, 0x1
/* 81398C90 | 98 1F 01 A0 */	stb r0, 0x1a0(r31)
.L_81398C94:
/* 81398C94 | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 81398C98 | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 81398C9C | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 81398CA0 | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 81398CA4 | E3 A1 00 68 */	psq_l f29, 0x68(r1), 0, qr0
/* 81398CA8 | CB A1 00 60 */	lfd f29, 0x60(r1)
/* 81398CAC | E3 81 00 58 */	psq_l f28, 0x58(r1), 0, qr0
/* 81398CB0 | CB 81 00 50 */	lfd f28, 0x50(r1)
/* 81398CB4 | E3 61 00 48 */	psq_l f27, 0x48(r1), 0, qr0
/* 81398CB8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81398CBC | CB 61 00 40 */	lfd f27, 0x40(r1)
/* 81398CC0 | 48 26 08 51 */	bl _restgpr_28
/* 81398CC4 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 81398CC8 | 7C 08 03 A6 */	mtlr r0
/* 81398CCC | 38 21 00 90 */	addi r1, r1, 0x90
/* 81398CD0 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene12focus_objectFv

# .text:0x1FAC | 0x81398CD4 | size: 0x58
# ipl::scene::focus_object::is_finished_fadein() const
.fn is_finished_fadein__Q33ipl5scene12focus_objectCFv, global
/* 81398CD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81398CD8 | 7C 08 02 A6 */	mflr r0
/* 81398CDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81398CE0 | 80 03 01 BC */	lwz r0, 0x1bc(r3)
/* 81398CE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81398CE8 | 3B E0 00 00 */	li r31, 0x0
/* 81398CEC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81398CF0 | 41 82 00 24 */	beq .L_81398D14
/* 81398CF4 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 81398CF8 | 38 80 00 00 */	li r4, 0x0
/* 81398CFC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81398D00 | 48 17 96 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81398D04 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81398D08 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81398D0C | 41 82 00 08 */	beq .L_81398D14
/* 81398D10 | 3B E0 00 01 */	li r31, 0x1
.L_81398D14:
/* 81398D14 | 7F E3 FB 78 */	mr r3, r31
/* 81398D18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81398D1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81398D20 | 7C 08 03 A6 */	mtlr r0
/* 81398D24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81398D28 | 4E 80 00 20 */	blr
.endfn is_finished_fadein__Q33ipl5scene12focus_objectCFv

# .text:0x2004 | 0x81398D2C | size: 0x58
# ipl::scene::focus_object::is_finished_fadeout() const
.fn is_finished_fadeout__Q33ipl5scene12focus_objectCFv, global
/* 81398D2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81398D30 | 7C 08 02 A6 */	mflr r0
/* 81398D34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81398D38 | 80 03 01 BC */	lwz r0, 0x1bc(r3)
/* 81398D3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81398D40 | 3B E0 00 00 */	li r31, 0x0
/* 81398D44 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81398D48 | 41 82 00 24 */	beq .L_81398D6C
/* 81398D4C | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 81398D50 | 38 80 00 01 */	li r4, 0x1
/* 81398D54 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81398D58 | 48 17 95 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81398D5C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81398D60 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81398D64 | 41 82 00 08 */	beq .L_81398D6C
/* 81398D68 | 3B E0 00 01 */	li r31, 0x1
.L_81398D6C:
/* 81398D6C | 7F E3 FB 78 */	mr r3, r31
/* 81398D70 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81398D74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81398D78 | 7C 08 03 A6 */	mtlr r0
/* 81398D7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81398D80 | 4E 80 00 20 */	blr
.endfn is_finished_fadeout__Q33ipl5scene12focus_objectCFv

# .text:0x205C | 0x81398D84 | size: 0xA0
# ipl::scene::focus_object::init_normal()
.fn init_normal__Q33ipl5scene12focus_objectFv, global
/* 81398D84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81398D88 | 7C 08 02 A6 */	mflr r0
/* 81398D8C | 38 80 00 06 */	li r4, 0x6
/* 81398D90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81398D94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81398D98 | 7C 7F 1B 78 */	mr r31, r3
/* 81398D9C | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 81398DA0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81398DA4 | 48 17 95 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81398DA8 | 4B FD 0E 7D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81398DAC | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81398DB0 | 38 80 00 0E */	li r4, 0xe
/* 81398DB4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81398DB8 | 48 17 95 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81398DBC | 4B FD 0E 69 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81398DC0 | C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 81398DC4 | C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 81398DC8 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 81398DCC | 7C 00 00 26 */	mfcr r0
/* 81398DD0 | 54 00 1F FF */	extrwi. r0, r0, 1, 2
/* 81398DD4 | 40 82 00 0C */	bne .L_81398DE0
/* 81398DD8 | 7F E3 FB 78 */	mr r3, r31
/* 81398DDC | 48 00 18 19 */	bl show_darw__Q33ipl5scene12focus_objectFv
.L_81398DE0:
/* 81398DE0 | 80 1F 01 34 */	lwz r0, 0x134(r31)
/* 81398DE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81398DE8 | 41 82 00 20 */	beq .L_81398E08
/* 81398DEC | 38 7F 01 48 */	addi r3, r31, 0x148
/* 81398DF0 | 38 80 01 2C */	li r4, 0x12c
/* 81398DF4 | 4B FC B6 31 */	bl set_msec__Q33ipl7utility5timerFi
/* 81398DF8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81398DFC | 38 80 00 05 */	li r4, 0x5
/* 81398E00 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81398E04 | 4B FD 2F 21 */	bl muteOnBGM__Q33ipl3snd6SystemFi
.L_81398E08:
/* 81398E08 | 38 00 00 01 */	li r0, 0x1
/* 81398E0C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81398E10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81398E14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81398E18 | 7C 08 03 A6 */	mtlr r0
/* 81398E1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81398E20 | 4E 80 00 20 */	blr
.endfn init_normal__Q33ipl5scene12focus_objectFv

# .text:0x20FC | 0x81398E24 | size: 0xD0
# ipl::scene::focus_object::init_fadeout(bool)
.fn init_fadeout__Q33ipl5scene12focus_objectFb, global
/* 81398E24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81398E28 | 7C 08 02 A6 */	mflr r0
/* 81398E2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81398E30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81398E34 | 48 26 06 91 */	bl _savegpr_28
/* 81398E38 | 3B E0 00 01 */	li r31, 0x1
/* 81398E3C | 80 A3 00 18 */	lwz r5, 0x18(r3)
/* 81398E40 | 93 E3 01 C0 */	stw r31, 0x1c0(r3)
/* 81398E44 | 7C 9D 23 78 */	mr r29, r4
/* 81398E48 | 7C 7C 1B 78 */	mr r28, r3
/* 81398E4C | 38 80 00 01 */	li r4, 0x1
/* 81398E50 | 93 E3 01 BC */	stw r31, 0x1bc(r3)
/* 81398E54 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81398E58 | 48 17 94 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81398E5C | 7C 7E 1B 78 */	mr r30, r3
/* 81398E60 | 4B FC 9A 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81398E64 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81398E68 | 38 80 00 04 */	li r4, 0x4
/* 81398E6C | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 81398E70 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81398E74 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81398E78 | 48 17 94 A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81398E7C | 7C 7E 1B 78 */	mr r30, r3
/* 81398E80 | 4B FC 99 F1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81398E84 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81398E88 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81398E8C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81398E90 | 38 80 00 05 */	li r4, 0x5
/* 81398E94 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81398E98 | 48 07 22 A1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81398E9C | 38 80 00 00 */	li r4, 0x0
/* 81398EA0 | 38 A0 00 00 */	li r5, 0x0
/* 81398EA4 | 48 00 3A 99 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 81398EA8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81398EAC | 40 82 00 0C */	bne .L_81398EB8
/* 81398EB0 | 7F 83 E3 78 */	mr r3, r28
/* 81398EB4 | 48 00 1C F1 */	bl hide_cmn_btn__Q33ipl5scene12focus_objectFv
.L_81398EB8:
/* 81398EB8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81398EBC | 38 80 00 05 */	li r4, 0x5
/* 81398EC0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81398EC4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81398EC8 | 48 07 22 71 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81398ECC | 38 80 00 0A */	li r4, 0xa
/* 81398ED0 | 48 00 45 59 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 81398ED4 | 38 00 00 01 */	li r0, 0x1
/* 81398ED8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81398EDC | 90 1C 00 0C */	stw r0, 0xc(r28)
/* 81398EE0 | 48 26 06 31 */	bl _restgpr_28
/* 81398EE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81398EE8 | 7C 08 03 A6 */	mtlr r0
/* 81398EEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81398EF0 | 4E 80 00 20 */	blr
.endfn init_fadeout__Q33ipl5scene12focus_objectFb

# .text:0x21CC | 0x81398EF4 | size: 0x558
# ipl::scene::focus_object::make_layout(ipl::nand::LayoutFile*)
.fn make_layout__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFile, global
/* 81398EF4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81398EF8 | 7C 08 02 A6 */	mflr r0
/* 81398EFC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81398F00 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81398F04 | 48 26 05 B5 */	bl _savegpr_25
/* 81398F08 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 81398F0C | 3F E0 81 65 */	lis r31, lbl_8164B6D0@ha
/* 81398F10 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 81398F14 | 7C 7D 1B 78 */	mr r29, r3
/* 81398F18 | 83 65 00 D8 */	lwz r27, 0xd8(r5)
/* 81398F1C | 3B FF B6 D0 */	addi r31, r31, lbl_8164B6D0@l
/* 81398F20 | 83 C5 00 24 */	lwz r30, 0x24(r5)
/* 81398F24 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 81398F28 | 1C DB 00 2C */	mulli r6, r27, 0x2c
/* 81398F2C | 7C 99 23 78 */	mr r25, r4
/* 81398F30 | 38 1F 02 24 */	addi r0, r31, 0x224
/* 81398F34 | 80 9C 00 28 */	lwz r4, 0x28(r28)
/* 81398F38 | 38 60 05 80 */	li r3, 0x580
/* 81398F3C | 38 A0 00 04 */	li r5, 0x4
/* 81398F40 | 7F 40 32 14 */	add r26, r0, r6
/* 81398F44 | 48 25 F1 6D */	bl __nw__FUlPQ23EGG4Heapi
/* 81398F48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81398F4C | 41 82 00 18 */	beq .L_81398F64
/* 81398F50 | 80 9C 00 28 */	lwz r4, 0x28(r28)
/* 81398F54 | 7F 25 CB 78 */	mr r5, r25
/* 81398F58 | 80 FA 00 00 */	lwz r7, 0x0(r26)
/* 81398F5C | 38 CD 86 8F */	li r6, lbl_816966CF@sda21
/* 81398F60 | 4B FD 10 C5 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81398F64:
/* 81398F64 | 90 7D 00 18 */	stw r3, 0x18(r29)
/* 81398F68 | 38 A0 00 01 */	li r5, 0x1
/* 81398F6C | 80 9A 00 04 */	lwz r4, 0x4(r26)
/* 81398F70 | 4B FD 13 FD */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 81398F74 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81398F78 | 38 A0 00 00 */	li r5, 0x0
/* 81398F7C | 80 9A 00 08 */	lwz r4, 0x8(r26)
/* 81398F80 | 4B FD 13 ED */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 81398F84 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81398F88 | 38 BF 04 D6 */	addi r5, r31, 0x4d6
/* 81398F8C | 80 9A 00 0C */	lwz r4, 0xc(r26)
/* 81398F90 | 38 C0 00 00 */	li r6, 0x0
/* 81398F94 | 38 E0 00 00 */	li r7, 0x0
/* 81398F98 | 4B FD 15 49 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81398F9C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81398FA0 | 38 BF 04 E0 */	addi r5, r31, 0x4e0
/* 81398FA4 | 80 9A 00 10 */	lwz r4, 0x10(r26)
/* 81398FA8 | 38 C0 00 00 */	li r6, 0x0
/* 81398FAC | 38 E0 00 00 */	li r7, 0x0
/* 81398FB0 | 4B FD 15 31 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81398FB4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81398FB8 | 38 BF 04 E0 */	addi r5, r31, 0x4e0
/* 81398FBC | 80 9A 00 14 */	lwz r4, 0x14(r26)
/* 81398FC0 | 38 C0 00 00 */	li r6, 0x0
/* 81398FC4 | 38 E0 00 00 */	li r7, 0x0
/* 81398FC8 | 4B FD 15 19 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81398FCC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81398FD0 | 38 BF 04 ED */	addi r5, r31, 0x4ed
/* 81398FD4 | 80 9A 00 18 */	lwz r4, 0x18(r26)
/* 81398FD8 | 38 C0 00 00 */	li r6, 0x0
/* 81398FDC | 38 E0 00 00 */	li r7, 0x0
/* 81398FE0 | 4B FD 15 01 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81398FE4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81398FE8 | 38 BF 04 F7 */	addi r5, r31, 0x4f7
/* 81398FEC | 80 9A 00 1C */	lwz r4, 0x1c(r26)
/* 81398FF0 | 38 C0 00 00 */	li r6, 0x0
/* 81398FF4 | 38 E0 00 00 */	li r7, 0x0
/* 81398FF8 | 4B FD 14 E9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81398FFC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399000 | 38 BF 04 F7 */	addi r5, r31, 0x4f7
/* 81399004 | 80 9A 00 20 */	lwz r4, 0x20(r26)
/* 81399008 | 38 C0 00 00 */	li r6, 0x0
/* 8139900C | 38 E0 00 00 */	li r7, 0x0
/* 81399010 | 4B FD 14 D1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81399014 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399018 | 38 BF 05 02 */	addi r5, r31, 0x502
/* 8139901C | 80 9A 00 24 */	lwz r4, 0x24(r26)
/* 81399020 | 38 C0 00 00 */	li r6, 0x0
/* 81399024 | 38 E0 00 00 */	li r7, 0x0
/* 81399028 | 4B FD 14 B9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139902C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399030 | 38 BF 05 02 */	addi r5, r31, 0x502
/* 81399034 | 80 9A 00 28 */	lwz r4, 0x28(r26)
/* 81399038 | 38 C0 00 00 */	li r6, 0x0
/* 8139903C | 38 E0 00 00 */	li r7, 0x0
/* 81399040 | 4B FD 14 A1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81399044 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399048 | 38 BF 04 D6 */	addi r5, r31, 0x4d6
/* 8139904C | 80 9A 00 0C */	lwz r4, 0xc(r26)
/* 81399050 | 38 C0 00 00 */	li r6, 0x0
/* 81399054 | 38 E0 00 00 */	li r7, 0x0
/* 81399058 | 4B FD 14 89 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139905C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399060 | 38 BF 05 0E */	addi r5, r31, 0x50e
/* 81399064 | 80 9A 00 10 */	lwz r4, 0x10(r26)
/* 81399068 | 38 C0 00 00 */	li r6, 0x0
/* 8139906C | 38 E0 00 00 */	li r7, 0x0
/* 81399070 | 4B FD 14 71 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81399074 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399078 | 38 BF 05 0E */	addi r5, r31, 0x50e
/* 8139907C | 80 9A 00 14 */	lwz r4, 0x14(r26)
/* 81399080 | 38 C0 00 00 */	li r6, 0x0
/* 81399084 | 38 E0 00 00 */	li r7, 0x0
/* 81399088 | 4B FD 14 59 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139908C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399090 | 38 BF 05 1B */	addi r5, r31, 0x51b
/* 81399094 | 80 9A 00 18 */	lwz r4, 0x18(r26)
/* 81399098 | 38 C0 00 00 */	li r6, 0x0
/* 8139909C | 38 E0 00 00 */	li r7, 0x0
/* 813990A0 | 4B FD 14 41 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813990A4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 813990A8 | 38 BF 05 25 */	addi r5, r31, 0x525
/* 813990AC | 80 9A 00 1C */	lwz r4, 0x1c(r26)
/* 813990B0 | 38 C0 00 00 */	li r6, 0x0
/* 813990B4 | 38 E0 00 00 */	li r7, 0x0
/* 813990B8 | 4B FD 14 29 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813990BC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 813990C0 | 38 BF 05 25 */	addi r5, r31, 0x525
/* 813990C4 | 80 9A 00 20 */	lwz r4, 0x20(r26)
/* 813990C8 | 38 C0 00 00 */	li r6, 0x0
/* 813990CC | 38 E0 00 00 */	li r7, 0x0
/* 813990D0 | 4B FD 14 11 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813990D4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 813990D8 | 38 BF 05 30 */	addi r5, r31, 0x530
/* 813990DC | 80 9A 00 24 */	lwz r4, 0x24(r26)
/* 813990E0 | 38 C0 00 00 */	li r6, 0x0
/* 813990E4 | 38 E0 00 00 */	li r7, 0x0
/* 813990E8 | 4B FD 13 F9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813990EC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 813990F0 | 38 BF 05 30 */	addi r5, r31, 0x530
/* 813990F4 | 80 9A 00 28 */	lwz r4, 0x28(r26)
/* 813990F8 | 38 C0 00 00 */	li r6, 0x0
/* 813990FC | 38 E0 00 00 */	li r7, 0x0
/* 81399100 | 4B FD 13 E1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81399104 | 2C 1B 00 01 */	cmpwi r27, 0x1
/* 81399108 | 40 82 00 C4 */	bne .L_813991CC
/* 8139910C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399110 | 38 9F 05 3C */	addi r4, r31, 0x53c
/* 81399114 | 38 AD 86 93 */	li r5, lbl_816966D3@sda21
/* 81399118 | 38 C0 00 00 */	li r6, 0x0
/* 8139911C | 38 E0 00 00 */	li r7, 0x0
/* 81399120 | 4B FD 13 C1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81399124 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399128 | 38 9F 05 53 */	addi r4, r31, 0x553
/* 8139912C | 38 AD 86 93 */	li r5, lbl_816966D3@sda21
/* 81399130 | 38 C0 00 00 */	li r6, 0x0
/* 81399134 | 38 E0 00 00 */	li r7, 0x0
/* 81399138 | 4B FD 13 A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139913C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399140 | 38 9F 05 6E */	addi r4, r31, 0x56e
/* 81399144 | 38 AD 86 93 */	li r5, lbl_816966D3@sda21
/* 81399148 | 38 C0 00 00 */	li r6, 0x0
/* 8139914C | 38 E0 00 00 */	li r7, 0x0
/* 81399150 | 4B FD 13 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81399154 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399158 | 38 9F 05 88 */	addi r4, r31, 0x588
/* 8139915C | 38 AD 86 93 */	li r5, lbl_816966D3@sda21
/* 81399160 | 38 C0 00 00 */	li r6, 0x0
/* 81399164 | 38 E0 00 00 */	li r7, 0x0
/* 81399168 | 4B FD 13 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139916C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399170 | 38 9F 05 A6 */	addi r4, r31, 0x5a6
/* 81399174 | 38 AD 86 9B */	li r5, lbl_816966DB@sda21
/* 81399178 | 38 C0 00 00 */	li r6, 0x0
/* 8139917C | 38 E0 00 00 */	li r7, 0x0
/* 81399180 | 4B FD 13 61 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81399184 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399188 | 38 9F 05 C2 */	addi r4, r31, 0x5c2
/* 8139918C | 38 AD 86 9B */	li r5, lbl_816966DB@sda21
/* 81399190 | 38 C0 00 00 */	li r6, 0x0
/* 81399194 | 38 E0 00 00 */	li r7, 0x0
/* 81399198 | 4B FD 13 49 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139919C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 813991A0 | 38 9F 05 DF */	addi r4, r31, 0x5df
/* 813991A4 | 38 AD 86 9B */	li r5, lbl_816966DB@sda21
/* 813991A8 | 38 C0 00 00 */	li r6, 0x0
/* 813991AC | 38 E0 00 00 */	li r7, 0x0
/* 813991B0 | 4B FD 13 31 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813991B4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 813991B8 | 38 9F 05 FA */	addi r4, r31, 0x5fa
/* 813991BC | 38 AD 86 9B */	li r5, lbl_816966DB@sda21
/* 813991C0 | 38 C0 00 00 */	li r6, 0x0
/* 813991C4 | 38 E0 00 00 */	li r7, 0x0
/* 813991C8 | 4B FD 13 19 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
.L_813991CC:
/* 813991CC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 813991D0 | 4B FD 14 65 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813991D4 | 38 00 00 00 */	li r0, 0x0
/* 813991D8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813991DC | B0 01 00 08 */	sth r0, 0x8(r1)
/* 813991E0 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 813991E4 | 41 82 00 08 */	beq .L_813991EC
/* 813991E8 | 48 00 00 24 */	b .L_8139920C
.L_813991EC:
/* 813991EC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813991F0 | 38 80 00 85 */	li r4, 0x85
/* 813991F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813991F8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813991FC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81399200 | 4B FA 55 BD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81399204 | 7C 7A 1B 78 */	mr r26, r3
/* 81399208 | 48 00 00 24 */	b .L_8139922C
.L_8139920C:
/* 8139920C | 80 9E 01 1C */	lwz r4, 0x11c(r30)
/* 81399210 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81399214 | 41 82 00 14 */	beq .L_81399228
/* 81399218 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8139921C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 81399220 | 7F 40 22 14 */	add r26, r0, r4
/* 81399224 | 48 00 00 08 */	b .L_8139922C
.L_81399228:
/* 81399228 | 3B 41 00 08 */	addi r26, r1, 0x8
.L_8139922C:
/* 8139922C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399230 | 38 9F 06 13 */	addi r4, r31, 0x613
/* 81399234 | 38 A0 00 01 */	li r5, 0x1
/* 81399238 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139923C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399240 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81399244 | 7D 89 03 A6 */	mtctr r12
/* 81399248 | 4E 80 04 21 */	bctrl
/* 8139924C | 7F 44 D3 78 */	mr r4, r26
/* 81399250 | 4B FC B2 9D */	bl set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw
/* 81399254 | 80 9E 01 20 */	lwz r4, 0x120(r30)
/* 81399258 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8139925C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81399260 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 81399264 | 7C 80 22 14 */	add r4, r0, r4
/* 81399268 | 41 82 00 A8 */	beq .L_81399310
/* 8139926C | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 81399270 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81399274 | 41 82 00 9C */	beq .L_81399310
/* 81399278 | 7F A3 EB 78 */	mr r3, r29
/* 8139927C | 48 00 04 5D */	bl make_parsed_text__Q33ipl5scene12focus_objectFPCw
/* 81399280 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399284 | 38 9F 04 BA */	addi r4, r31, 0x4ba
/* 81399288 | 38 A0 00 01 */	li r5, 0x1
/* 8139928C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81399290 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399294 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81399298 | 7D 89 03 A6 */	mtctr r12
/* 8139929C | 4E 80 04 21 */	bctrl
/* 813992A0 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 813992A4 | 4B FC B2 49 */	bl set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw
/* 813992A8 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 813992AC | 38 8D 86 73 */	li r4, lbl_816966B3@sda21
/* 813992B0 | 38 A0 00 01 */	li r5, 0x1
/* 813992B4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813992B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813992BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813992C0 | 7D 89 03 A6 */	mtctr r12
/* 813992C4 | 4E 80 04 21 */	bctrl
/* 813992C8 | 80 9D 00 18 */	lwz r4, 0x18(r29)
/* 813992CC | 7C 7C 1B 78 */	mr r28, r3
/* 813992D0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813992D4 | 38 BF 04 BA */	addi r5, r31, 0x4ba
/* 813992D8 | 48 00 01 75 */	bl getTextDrawRect__Q33ipl6layout6ObjectCFPCc
/* 813992DC | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 813992E0 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813992E4 | C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 813992E8 | EC 22 08 28 */	fsubs f1, f2, f1
/* 813992EC | FC 20 08 50 */	fneg f1, f1
/* 813992F0 | EC 21 00 24 */	fdivs f1, f1, f0
/* 813992F4 | 48 27 33 5D */	bl ceil
/* 813992F8 | FC 00 08 18 */	frsp f0, f1
/* 813992FC | FC 00 00 1E */	fctiwz f0, f0
/* 81399300 | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 81399304 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81399308 | 90 1D 01 F0 */	stw r0, 0x1f0(r29)
/* 8139930C | 48 00 00 34 */	b .L_81399340
.L_81399310:
/* 81399310 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399314 | 38 9F 04 BA */	addi r4, r31, 0x4ba
/* 81399318 | 38 A0 00 01 */	li r5, 0x1
/* 8139931C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81399320 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399324 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81399328 | 7D 89 03 A6 */	mtctr r12
/* 8139932C | 4E 80 04 21 */	bctrl
/* 81399330 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81399334 | 4B FC B1 B9 */	bl set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw
/* 81399338 | 38 00 00 01 */	li r0, 0x1
/* 8139933C | 90 1D 01 F0 */	stw r0, 0x1f0(r29)
.L_81399340:
/* 81399340 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399344 | 38 8D 86 7A */	li r4, lbl_816966BA@sda21
/* 81399348 | 38 A0 00 01 */	li r5, 0x1
/* 8139934C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81399350 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399354 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81399358 | 7D 89 03 A6 */	mtctr r12
/* 8139935C | 4E 80 04 21 */	bctrl
/* 81399360 | 80 1E 01 24 */	lwz r0, 0x124(r30)
/* 81399364 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81399368 | 41 82 00 54 */	beq .L_813993BC
/* 8139936C | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 81399370 | 80 84 00 20 */	lwz r4, 0x20(r4)
/* 81399374 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81399378 | 41 82 00 44 */	beq .L_813993BC
/* 8139937C | 88 04 00 50 */	lbz r0, 0x50(r4)
/* 81399380 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81399384 | 41 82 00 38 */	beq .L_813993BC
/* 81399388 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8139938C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81399390 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81399394 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 81399398 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139939C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813993A0 | 7D 89 03 A6 */	mtctr r12
/* 813993A4 | 4E 80 04 21 */	bctrl
/* 813993A8 | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 813993AC | 80 84 00 20 */	lwz r4, 0x20(r4)
/* 813993B0 | 38 84 00 18 */	addi r4, r4, 0x18
/* 813993B4 | 4B FC B1 F1 */	bl set_texture__Q33ipl7utility6layoutFPQ34nw4r3lyt8MaterialRC9_GXTexObj
/* 813993B8 | 48 00 00 10 */	b .L_813993C8
.L_813993BC:
/* 813993BC | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813993C0 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813993C4 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_813993C8:
/* 813993C8 | 3B 40 00 00 */	li r26, 0x0
/* 813993CC | 3B E0 00 00 */	li r31, 0x0
.L_813993D0:
/* 813993D0 | 7F 9E FA 14 */	add r28, r30, r31
/* 813993D4 | 84 1C 01 28 */	lwzu r0, 0x128(r28)
/* 813993D8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813993DC | 41 82 00 14 */	beq .L_813993F0
/* 813993E0 | 40 80 00 44 */	bge .L_81399424
/* 813993E4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813993E8 | 40 80 00 30 */	bge .L_81399418
/* 813993EC | 48 00 00 38 */	b .L_81399424
.L_813993F0:
/* 813993F0 | 7F A3 EB 78 */	mr r3, r29
/* 813993F4 | 7F 84 E3 78 */	mr r4, r28
/* 813993F8 | 48 00 06 41 */	bl make_lettertex__Q33ipl5scene12focus_objectFP13RBRAttachment
/* 813993FC | 7F A3 EB 78 */	mr r3, r29
/* 81399400 | 7F 84 E3 78 */	mr r4, r28
/* 81399404 | 48 00 07 69 */	bl init_chanjump__Q33ipl5scene12focus_objectFP13RBRAttachment
/* 81399408 | 7F A3 EB 78 */	mr r3, r29
/* 8139940C | 7F 84 E3 78 */	mr r4, r28
/* 81399410 | 48 00 0A E5 */	bl init_sound__Q33ipl5scene12focus_objectFP13RBRAttachment
/* 81399414 | 48 00 00 10 */	b .L_81399424
.L_81399418:
/* 81399418 | 7F A3 EB 78 */	mr r3, r29
/* 8139941C | 7F 84 E3 78 */	mr r4, r28
/* 81399420 | 48 00 0A 1D */	bl make_picture__Q33ipl5scene12focus_objectFP13RBRAttachment
.L_81399424:
/* 81399424 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81399428 | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8139942C | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 81399430 | 41 80 FF A0 */	blt .L_813993D0
/* 81399434 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81399438 | 48 26 00 CD */	bl _restgpr_25
/* 8139943C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81399440 | 7C 08 03 A6 */	mtlr r0
/* 81399444 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81399448 | 4E 80 00 20 */	blr
.endfn make_layout__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFile

# .text:0x2724 | 0x8139944C | size: 0x8C
# ipl::layout::Object::getTextDrawRect(const char*) const
.fn getTextDrawRect__Q33ipl6layout6ObjectCFPCc, global
/* 8139944C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81399450 | 7C 08 02 A6 */	mflr r0
/* 81399454 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81399458 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139945C | 48 26 00 6D */	bl _savegpr_29
/* 81399460 | 7C 7D 1B 78 */	mr r29, r3
/* 81399464 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 81399468 | 7C 9E 23 78 */	mr r30, r4
/* 8139946C | 7C A4 2B 78 */	mr r4, r5
/* 81399470 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399474 | 38 A0 00 01 */	li r5, 0x1
/* 81399478 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139947C | 7D 89 03 A6 */	mtctr r12
/* 81399480 | 4E 80 04 21 */	bctrl
/* 81399484 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399488 | 7C 7F 1B 78 */	mr r31, r3
/* 8139948C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81399490 | 7D 89 03 A6 */	mtctr r12
/* 81399494 | 4E 80 04 21 */	bctrl
/* 81399498 | 38 8D AF 78 */	li r4, lbl_81698FB8@sda21
/* 8139949C | 4B FD 01 BD */	bl IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo
/* 813994A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813994A4 | 41 82 00 08 */	beq .L_813994AC
/* 813994A8 | 48 00 00 08 */	b .L_813994B0
.L_813994AC:
/* 813994AC | 3B E0 00 00 */	li r31, 0x0
.L_813994B0:
/* 813994B0 | 7F A3 EB 78 */	mr r3, r29
/* 813994B4 | 7F C4 F3 78 */	mr r4, r30
/* 813994B8 | 7F E5 FB 78 */	mr r5, r31
/* 813994BC | 48 00 00 1D */	bl getTextDrawRect__Q33ipl6layout6ObjectCFPCQ34nw4r3lyt7TextBox
/* 813994C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813994C4 | 48 26 00 51 */	bl _restgpr_29
/* 813994C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813994CC | 7C 08 03 A6 */	mtlr r0
/* 813994D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813994D4 | 4E 80 00 20 */	blr
.endfn getTextDrawRect__Q33ipl6layout6ObjectCFPCc

# .text:0x27B0 | 0x813994D8 | size: 0x10
# ipl::layout::Object::getTextDrawRect(const nw4r::lyt::TextBox*) const
.fn getTextDrawRect__Q33ipl6layout6ObjectCFPCQ34nw4r3lyt7TextBox, global
/* 813994D8 | 7C 86 23 78 */	mr r6, r4
/* 813994DC | 7C A4 2B 78 */	mr r4, r5
/* 813994E0 | 38 A6 02 98 */	addi r5, r6, 0x298
/* 813994E4 | 48 18 88 10 */	b fn_81521CF4
.endfn getTextDrawRect__Q33ipl6layout6ObjectCFPCQ34nw4r3lyt7TextBox

# .text:0x27C0 | 0x813994E8 | size: 0x1F0
# ipl::scene::focus_object::make_gui_mgr()
.fn make_gui_mgr__Q33ipl5scene12focus_objectFv, global
/* 813994E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813994EC | 7C 08 02 A6 */	mflr r0
/* 813994F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813994F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813994F8 | 48 25 FF D1 */	bl _savegpr_29
/* 813994FC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81399500 | 7C 7D 1B 78 */	mr r29, r3
/* 81399504 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81399508 | 38 60 00 34 */	li r3, 0x34
/* 8139950C | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 81399510 | 38 A0 00 04 */	li r5, 0x4
/* 81399514 | 48 25 EB 9D */	bl __nw__FUlPQ23EGG4Heapi
/* 81399518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139951C | 7C 7F 1B 78 */	mr r31, r3
/* 81399520 | 41 82 00 84 */	beq .L_813995A4
/* 81399524 | 80 DD 00 18 */	lwz r6, 0x18(r29)
/* 81399528 | 3C A0 81 64 */	lis r5, __vt__Q23gui7Manager@ha
/* 8139952C | 38 A5 27 E0 */	addi r5, r5, __vt__Q23gui7Manager@l
/* 81399530 | 34 9D 00 28 */	addic. r4, r29, 0x28
/* 81399534 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81399538 | 38 1D 01 00 */	addi r0, r29, 0x100
/* 8139953C | 3B C6 02 98 */	addi r30, r6, 0x298
/* 81399540 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81399544 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81399548 | 41 82 00 1C */	beq .L_81399564
/* 8139954C | 7C 83 23 78 */	mr r3, r4
/* 81399550 | 7F E4 FB 78 */	mr r4, r31
/* 81399554 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399558 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8139955C | 7D 89 03 A6 */	mtctr r12
/* 81399560 | 4E 80 04 21 */	bctrl
.L_81399564:
/* 81399564 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 81399568 | 38 80 00 08 */	li r4, 0x8
/* 8139956C | 48 17 8A F1 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81399570 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 81399574 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 81399578 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 8139957C | 38 80 00 08 */	li r4, 0x8
/* 81399580 | 90 BF 00 00 */	stw r5, 0x0(r31)
/* 81399584 | 93 DF 00 24 */	stw r30, 0x24(r31)
/* 81399588 | 48 17 8A D5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8139958C | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 81399590 | 38 00 00 00 */	li r0, 0x0
/* 81399594 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 81399598 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8139959C | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813995A0 | 98 1F 00 30 */	stb r0, 0x30(r31)
.L_813995A4:
/* 813995A4 | 93 FD 00 1C */	stw r31, 0x1c(r29)
/* 813995A8 | 7F E3 FB 78 */	mr r3, r31
/* 813995AC | 80 9D 00 18 */	lwz r4, 0x18(r29)
/* 813995B0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813995B4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813995B8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813995BC | 7D 89 03 A6 */	mtctr r12
/* 813995C0 | 4E 80 04 21 */	bctrl
/* 813995C4 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 813995C8 | 38 80 00 00 */	li r4, 0x0
/* 813995CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813995D0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813995D4 | 7D 89 03 A6 */	mtctr r12
/* 813995D8 | 4E 80 04 21 */	bctrl
/* 813995DC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 813995E0 | 38 8D 86 A1 */	li r4, lbl_816966E1@sda21
/* 813995E4 | 38 A0 00 01 */	li r5, 0x1
/* 813995E8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813995EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813995F0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813995F4 | 7D 89 03 A6 */	mtctr r12
/* 813995F8 | 4E 80 04 21 */	bctrl
/* 813995FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399600 | 7C 64 1B 78 */	mr r4, r3
/* 81399604 | 41 82 00 10 */	beq .L_81399614
/* 81399608 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8139960C | 38 A0 00 01 */	li r5, 0x1
/* 81399610 | 4B FD 1B BD */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
.L_81399614:
/* 81399614 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399618 | 38 8D 86 A7 */	li r4, lbl_816966E7@sda21
/* 8139961C | 38 A0 00 01 */	li r5, 0x1
/* 81399620 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81399624 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399628 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139962C | 7D 89 03 A6 */	mtctr r12
/* 81399630 | 4E 80 04 21 */	bctrl
/* 81399634 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399638 | 7C 64 1B 78 */	mr r4, r3
/* 8139963C | 41 82 00 10 */	beq .L_8139964C
/* 81399640 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 81399644 | 38 A0 00 01 */	li r5, 0x1
/* 81399648 | 4B FD 1B 85 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
.L_8139964C:
/* 8139964C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399650 | 38 8D 86 AE */	li r4, lbl_816966EE@sda21
/* 81399654 | 38 A0 00 01 */	li r5, 0x1
/* 81399658 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139965C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399660 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81399664 | 7D 89 03 A6 */	mtctr r12
/* 81399668 | 4E 80 04 21 */	bctrl
/* 8139966C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399670 | 7C 64 1B 78 */	mr r4, r3
/* 81399674 | 41 82 00 10 */	beq .L_81399684
/* 81399678 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8139967C | 38 A0 00 01 */	li r5, 0x1
/* 81399680 | 4B FD 1B 4D */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
.L_81399684:
/* 81399684 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81399688 | 3C 80 81 65 */	lis r4, lbl_8164BCEC@ha
/* 8139968C | 38 84 BC EC */	addi r4, r4, lbl_8164BCEC@l
/* 81399690 | 38 A0 00 01 */	li r5, 0x1
/* 81399694 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81399698 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139969C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813996A0 | 7D 89 03 A6 */	mtctr r12
/* 813996A4 | 4E 80 04 21 */	bctrl
/* 813996A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813996AC | 7C 64 1B 78 */	mr r4, r3
/* 813996B0 | 41 82 00 10 */	beq .L_813996C0
/* 813996B4 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 813996B8 | 38 A0 00 01 */	li r5, 0x1
/* 813996BC | 4B FD 1B 11 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
.L_813996C0:
/* 813996C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813996C4 | 48 25 FE 51 */	bl _restgpr_29
/* 813996C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813996CC | 7C 08 03 A6 */	mtlr r0
/* 813996D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813996D4 | 4E 80 00 20 */	blr
.endfn make_gui_mgr__Q33ipl5scene12focus_objectFv

# .text:0x29B0 | 0x813996D8 | size: 0x150
# ipl::scene::focus_object::make_parsed_text(const wchar_t*)
.fn make_parsed_text__Q33ipl5scene12focus_objectFPCw, global
/* 813996D8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813996DC | 7C 08 02 A6 */	mflr r0
/* 813996E0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813996E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813996E8 | 48 25 FD D1 */	bl _savegpr_25
/* 813996EC | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813996F0 | 7C 79 1B 78 */	mr r25, r3
/* 813996F4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813996F8 | 7C 9A 23 78 */	mr r26, r4
/* 813996FC | 80 85 00 28 */	lwz r4, 0x28(r5)
/* 81399700 | 38 60 2E E0 */	li r3, 0x2ee0
/* 81399704 | 38 A0 00 04 */	li r5, 0x4
/* 81399708 | 48 25 E9 CD */	bl __nwa__FUlPQ23EGG4Heapi
/* 8139970C | 90 79 00 24 */	stw r3, 0x24(r25)
/* 81399710 | 38 80 00 00 */	li r4, 0x0
/* 81399714 | 38 A0 2E E0 */	li r5, 0x2ee0
/* 81399718 | 4B F9 6C 1D */	bl memset
/* 8139971C | A0 82 84 78 */	lhz r4, lbl_81694878@sda21(r0)
/* 81399720 | 7F 5C D3 78 */	mr r28, r26
/* 81399724 | A0 02 84 7A */	lhz r0, lbl_8169487A@sda21(r0)
/* 81399728 | 7F 43 D3 78 */	mr r3, r26
/* 8139972C | B0 81 00 08 */	sth r4, 0x8(r1)
/* 81399730 | 3B A0 00 00 */	li r29, 0x0
/* 81399734 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81399738 | 48 26 EF 75 */	bl fn_816086AC
/* 8139973C | 7C 7B 1B 78 */	mr r27, r3
/* 81399740 | 3B E0 00 00 */	li r31, 0x0
/* 81399744 | 48 00 00 B4 */	b .L_813997F8
.L_81399748:
/* 81399748 | 57 A3 08 3C */	slwi r3, r29, 1
/* 8139974C | 7C 1A 1A 2E */	lhzx r0, r26, r3
/* 81399750 | 28 00 00 68 */	cmplwi r0, 0x68
/* 81399754 | 40 82 00 A0 */	bne .L_813997F4
/* 81399758 | 7F DA 1A 14 */	add r30, r26, r3
/* 8139975C | 7F 23 CB 78 */	mr r3, r25
/* 81399760 | 7F C4 F3 78 */	mr r4, r30
/* 81399764 | 48 00 01 05 */	bl is_url_protocol__Q33ipl5scene12focus_objectCFPCw
/* 81399768 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139976C | 41 82 00 88 */	beq .L_813997F4
/* 81399770 | 7C 1E E0 40 */	cmplw r30, r28
/* 81399774 | B3 F9 01 1E */	sth r31, 0x11e(r25)
/* 81399778 | 41 82 00 10 */	beq .L_81399788
/* 8139977C | A0 9E FF FE */	lhz r4, -0x2(r30)
/* 81399780 | 7F 23 CB 78 */	mr r3, r25
/* 81399784 | 48 00 02 49 */	bl check_paren__Q33ipl5scene12focus_objectFw
.L_81399788:
/* 81399788 | 80 79 00 24 */	lwz r3, 0x24(r25)
/* 8139978C | 7F 44 D3 78 */	mr r4, r26
/* 81399790 | 7F A5 EB 78 */	mr r5, r29
/* 81399794 | 48 26 EF C1 */	bl fn_81608754
/* 81399798 | 7F 23 CB 78 */	mr r3, r25
/* 8139979C | 7F C4 F3 78 */	mr r4, r30
/* 813997A0 | 48 00 01 55 */	bl get_url_end__Q33ipl5scene12focus_objectCFPCw
/* 813997A4 | 7C 7D 1B 78 */	mr r29, r3
/* 813997A8 | 80 79 00 24 */	lwz r3, 0x24(r25)
/* 813997AC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813997B0 | 38 A0 00 01 */	li r5, 0x1
/* 813997B4 | 48 26 EF A1 */	bl fn_81608754
/* 813997B8 | 80 79 00 24 */	lwz r3, 0x24(r25)
/* 813997BC | 7F C4 F3 78 */	mr r4, r30
/* 813997C0 | 7F A5 EB 78 */	mr r5, r29
/* 813997C4 | 48 26 EF 91 */	bl fn_81608754
/* 813997C8 | 80 79 00 24 */	lwz r3, 0x24(r25)
/* 813997CC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813997D0 | 38 A0 00 01 */	li r5, 0x1
/* 813997D4 | 48 26 EF 81 */	bl fn_81608754
/* 813997D8 | 57 A0 08 3C */	slwi r0, r29, 1
/* 813997DC | 7F 5E 02 14 */	add r26, r30, r0
/* 813997E0 | 7F 43 D3 78 */	mr r3, r26
/* 813997E4 | 48 26 EE C9 */	bl fn_816086AC
/* 813997E8 | 7C 7B 1B 78 */	mr r27, r3
/* 813997EC | 3B A0 00 00 */	li r29, 0x0
/* 813997F0 | 48 00 00 08 */	b .L_813997F8
.L_813997F4:
/* 813997F4 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_813997F8:
/* 813997F8 | 7C 1D D8 40 */	cmplw r29, r27
/* 813997FC | 40 82 FF 4C */	bne .L_81399748
/* 81399800 | 80 79 00 24 */	lwz r3, 0x24(r25)
/* 81399804 | 7F 44 D3 78 */	mr r4, r26
/* 81399808 | 7F A5 EB 78 */	mr r5, r29
/* 8139980C | 48 26 EF 49 */	bl fn_81608754
/* 81399810 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81399814 | 48 25 FC F1 */	bl _restgpr_25
/* 81399818 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139981C | 7C 08 03 A6 */	mtlr r0
/* 81399820 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81399824 | 4E 80 00 20 */	blr
.endfn make_parsed_text__Q33ipl5scene12focus_objectFPCw

# .text:0x2B00 | 0x81399828 | size: 0x40
# ipl::scene::focus_object::is_url_end_code(wchar_t) const
.fn is_url_end_code__Q33ipl5scene12focus_objectCFw, global
/* 81399828 | 38 00 00 06 */	li r0, 0x6
/* 8139982C | 38 E0 00 00 */	li r7, 0x0
/* 81399830 | 38 A0 00 00 */	li r5, 0x0
/* 81399834 | 7C 09 03 A6 */	mtctr r0
.L_81399838:
/* 81399838 | 7C C3 2A 14 */	add r6, r3, r5
/* 8139983C | 38 A5 00 02 */	addi r5, r5, 0x2
/* 81399840 | A0 06 01 14 */	lhz r0, 0x114(r6)
/* 81399844 | 7C 04 00 50 */	subf r0, r4, r0
/* 81399848 | 7C 00 00 34 */	cntlzw r0, r0
/* 8139984C | 54 00 D9 7E */	srwi r0, r0, 5
/* 81399850 | 7C E6 03 78 */	or r6, r7, r0
/* 81399854 | 30 06 FF FF */	subic r0, r6, 0x1
/* 81399858 | 7C E0 31 10 */	subfe r7, r0, r6
/* 8139985C | 42 00 FF DC */	bdnz .L_81399838
/* 81399860 | 7C E3 3B 78 */	mr r3, r7
/* 81399864 | 4E 80 00 20 */	blr
.endfn is_url_end_code__Q33ipl5scene12focus_objectCFw

# .text:0x2B40 | 0x81399868 | size: 0x8C
# ipl::scene::focus_object::is_url_protocol(const wchar_t*) const
.fn is_url_protocol__Q33ipl5scene12focus_objectCFPCw, global
/* 81399868 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139986C | 7C 08 02 A6 */	mflr r0
/* 81399870 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81399874 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81399878 | 48 25 FC 4D */	bl _savegpr_28
/* 8139987C | 3F C0 81 65 */	lis r30, lbl_8164BCF6@ha
/* 81399880 | 3F A0 81 65 */	lis r29, lbl_8164BD06@ha
/* 81399884 | 3B DE BC F6 */	addi r30, r30, lbl_8164BCF6@l
/* 81399888 | 7C 9C 23 78 */	mr r28, r4
/* 8139988C | 7F C3 F3 78 */	mr r3, r30
/* 81399890 | 3B BD BD 06 */	addi r29, r29, lbl_8164BD06@l
/* 81399894 | 3B E0 00 00 */	li r31, 0x0
/* 81399898 | 48 26 EE 15 */	bl fn_816086AC
/* 8139989C | 7C 65 1B 78 */	mr r5, r3
/* 813998A0 | 7F 83 E3 78 */	mr r3, r28
/* 813998A4 | 7F C4 F3 78 */	mr r4, r30
/* 813998A8 | 48 26 EE F9 */	bl fn_816087A0
/* 813998AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813998B0 | 41 82 00 24 */	beq .L_813998D4
/* 813998B4 | 7F A3 EB 78 */	mr r3, r29
/* 813998B8 | 48 26 ED F5 */	bl fn_816086AC
/* 813998BC | 7C 65 1B 78 */	mr r5, r3
/* 813998C0 | 7F 83 E3 78 */	mr r3, r28
/* 813998C4 | 7F A4 EB 78 */	mr r4, r29
/* 813998C8 | 48 26 EE D9 */	bl fn_816087A0
/* 813998CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813998D0 | 40 82 00 08 */	bne .L_813998D8
.L_813998D4:
/* 813998D4 | 3B E0 00 01 */	li r31, 0x1
.L_813998D8:
/* 813998D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813998DC | 7F E3 FB 78 */	mr r3, r31
/* 813998E0 | 48 25 FC 31 */	bl _restgpr_28
/* 813998E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813998E8 | 7C 08 03 A6 */	mtlr r0
/* 813998EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813998F0 | 4E 80 00 20 */	blr
.endfn is_url_protocol__Q33ipl5scene12focus_objectCFPCw

# .text:0x2BCC | 0x813998F4 | size: 0x78
# ipl::scene::focus_object::get_url_end(const wchar_t*) const
.fn get_url_end__Q33ipl5scene12focus_objectCFPCw, global
/* 813998F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813998F8 | 7C 08 02 A6 */	mflr r0
/* 813998FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81399900 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81399904 | 48 25 FB C1 */	bl _savegpr_28
/* 81399908 | 7C 7C 1B 78 */	mr r28, r3
/* 8139990C | 7C 9D 23 78 */	mr r29, r4
/* 81399910 | 3B C0 00 00 */	li r30, 0x0
/* 81399914 | 3B E0 00 00 */	li r31, 0x0
/* 81399918 | 48 00 00 0C */	b .L_81399924
.L_8139991C:
/* 8139991C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81399920 | 3B FF 00 02 */	addi r31, r31, 0x2
.L_81399924:
/* 81399924 | 7C 9D FA 2E */	lhzx r4, r29, r31
/* 81399928 | 7F 83 E3 78 */	mr r3, r28
/* 8139992C | 4B FF FE FD */	bl is_url_end_code__Q33ipl5scene12focus_objectCFw
/* 81399930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399934 | 40 82 00 1C */	bne .L_81399950
/* 81399938 | 7F 83 E3 78 */	mr r3, r28
/* 8139993C | 7F A4 EB 78 */	mr r4, r29
/* 81399940 | 38 BE 00 01 */	addi r5, r30, 0x1
/* 81399944 | 48 00 00 29 */	bl is_buffer_over__Q33ipl5scene12focus_objectCFPCwUl
/* 81399948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139994C | 41 82 FF D0 */	beq .L_8139991C
.L_81399950:
/* 81399950 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81399954 | 7F C3 F3 78 */	mr r3, r30
/* 81399958 | 48 25 FB B9 */	bl _restgpr_28
/* 8139995C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81399960 | 7C 08 03 A6 */	mtlr r0
/* 81399964 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81399968 | 4E 80 00 20 */	blr
.endfn get_url_end__Q33ipl5scene12focus_objectCFPCw

# .text:0x2C44 | 0x8139996C | size: 0x60
# ipl::scene::focus_object::is_buffer_over(const wchar_t*, unsigned long) const
.fn is_buffer_over__Q33ipl5scene12focus_objectCFPCwUl, global
/* 8139996C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81399970 | 7C 08 02 A6 */	mflr r0
/* 81399974 | 38 60 00 00 */	li r3, 0x0
/* 81399978 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139997C | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81399980 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81399984 | 3B E0 00 00 */	li r31, 0x0
/* 81399988 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8139998C | 7C 85 23 78 */	mr r5, r4
/* 81399990 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81399994 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81399998 | 48 1D 18 59 */	bl fn_8156B1F0
/* 8139999C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813999A0 | 40 82 00 10 */	bne .L_813999B0
/* 813999A4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813999A8 | 2C 00 02 00 */	cmpwi r0, 0x200
/* 813999AC | 41 80 00 08 */	blt .L_813999B4
.L_813999B0:
/* 813999B0 | 3B E0 00 01 */	li r31, 0x1
.L_813999B4:
/* 813999B4 | 7F E3 FB 78 */	mr r3, r31
/* 813999B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813999BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813999C0 | 7C 08 03 A6 */	mtlr r0
/* 813999C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813999C8 | 4E 80 00 20 */	blr
.endfn is_buffer_over__Q33ipl5scene12focus_objectCFPCwUl

# .text:0x2CA4 | 0x813999CC | size: 0x6C
# ipl::scene::focus_object::check_paren(wchar_t)
.fn check_paren__Q33ipl5scene12focus_objectFw, global
/* 813999CC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813999D0 | 3C A0 81 61 */	lis r5, lbl_8160F774@ha
/* 813999D4 | 38 A5 F7 74 */	addi r5, r5, lbl_8160F774@l
/* 813999D8 | 38 00 00 0D */	li r0, 0xd
/* 813999DC | 38 E1 00 06 */	addi r7, r1, 0x6
/* 813999E0 | 38 C5 FF FE */	subi r6, r5, 0x2
/* 813999E4 | 7C 09 03 A6 */	mtctr r0
.L_813999E8:
/* 813999E8 | A0 A6 00 02 */	lhz r5, 0x2(r6)
/* 813999EC | A4 06 00 04 */	lhzu r0, 0x4(r6)
/* 813999F0 | B0 A7 00 02 */	sth r5, 0x2(r7)
/* 813999F4 | B4 07 00 04 */	sthu r0, 0x4(r7)
/* 813999F8 | 42 00 FF F0 */	bdnz .L_813999E8
/* 813999FC | 38 00 00 0D */	li r0, 0xd
/* 81399A00 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81399A04 | 38 A0 00 00 */	li r5, 0x0
/* 81399A08 | 7C 09 03 A6 */	mtctr r0
.L_81399A0C:
/* 81399A0C | 7C 06 2A 2E */	lhzx r0, r6, r5
/* 81399A10 | 7C 04 00 40 */	cmplw r4, r0
/* 81399A14 | 40 82 00 14 */	bne .L_81399A28
/* 81399A18 | 38 81 00 0A */	addi r4, r1, 0xa
/* 81399A1C | 7C 04 2A 2E */	lhzx r0, r4, r5
/* 81399A20 | B0 03 01 1E */	sth r0, 0x11e(r3)
/* 81399A24 | 48 00 00 0C */	b .L_81399A30
.L_81399A28:
/* 81399A28 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81399A2C | 42 00 FF E0 */	bdnz .L_81399A0C
.L_81399A30:
/* 81399A30 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81399A34 | 4E 80 00 20 */	blr
.endfn check_paren__Q33ipl5scene12focus_objectFw

# .text:0x2D10 | 0x81399A38 | size: 0x134
# ipl::scene::focus_object::make_lettertex(RBRAttachment*)
.fn make_lettertex__Q33ipl5scene12focus_objectFP13RBRAttachment, global
/* 81399A38 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81399A3C | 7C 08 02 A6 */	mflr r0
/* 81399A40 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81399A44 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 81399A48 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81399A4C | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81399A50 | 7C 7E 1B 78 */	mr r30, r3
/* 81399A54 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 81399A58 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81399A5C | 80 86 00 24 */	lwz r4, 0x24(r6)
/* 81399A60 | 7C C3 33 78 */	mr r3, r6
/* 81399A64 | 7F E4 02 14 */	add r31, r4, r0
/* 81399A68 | 7F E4 FB 78 */	mr r4, r31
/* 81399A6C | 4B FF C6 51 */	bl arc_init_handle__Q33ipl5scene11BoardObjectFPvP9ARCHandle
/* 81399A70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399A74 | 41 82 00 44 */	beq .L_81399AB8
/* 81399A78 | 3C 80 81 65 */	lis r4, lbl_8164BD70@ha
/* 81399A7C | 38 61 00 14 */	addi r3, r1, 0x14
/* 81399A80 | 38 84 BD 70 */	addi r4, r4, lbl_8164BD70@l
/* 81399A84 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81399A88 | 48 1D 73 B9 */	bl ARCOpen
/* 81399A8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399A90 | 41 82 00 28 */	beq .L_81399AB8
/* 81399A94 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81399A98 | 48 1D 7A FD */	bl ARCGetStartOffset
/* 81399A9C | 7C 1F 1A 14 */	add r0, r31, r3
/* 81399AA0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81399AA4 | 90 1E 01 20 */	stw r0, 0x120(r30)
/* 81399AA8 | 48 1D 7A F5 */	bl ARCGetLength
/* 81399AAC | 90 7E 01 28 */	stw r3, 0x128(r30)
/* 81399AB0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81399AB4 | 48 1D 7A F1 */	bl ARCClose
.L_81399AB8:
/* 81399AB8 | 80 7E 01 20 */	lwz r3, 0x120(r30)
/* 81399ABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399AC0 | 41 82 00 94 */	beq .L_81399B54
/* 81399AC4 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81399AC8 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 81399ACC | 2C 00 00 10 */	cmpwi r0, 0x10
/* 81399AD0 | 40 82 00 84 */	bne .L_81399B54
/* 81399AD4 | 48 1C 27 99 */	bl CXGetUncompressedSize
/* 81399AD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399ADC | 7C 7F 1B 78 */	mr r31, r3
/* 81399AE0 | 41 82 00 74 */	beq .L_81399B54
/* 81399AE4 | 3C 80 00 06 */	lis r4, 0x6
/* 81399AE8 | 38 04 40 00 */	addi r0, r4, 0x4000
/* 81399AEC | 7C 03 00 40 */	cmplw r3, r0
/* 81399AF0 | 40 80 00 64 */	bge .L_81399B54
/* 81399AF4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81399AF8 | 38 A0 00 20 */	li r5, 0x20
/* 81399AFC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81399B00 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 81399B04 | 48 25 E5 D1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81399B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399B0C | 90 7E 01 24 */	stw r3, 0x124(r30)
/* 81399B10 | 7C 65 1B 78 */	mr r5, r3
/* 81399B14 | 41 82 00 40 */	beq .L_81399B54
/* 81399B18 | 80 7E 01 20 */	lwz r3, 0x120(r30)
/* 81399B1C | 80 9E 01 28 */	lwz r4, 0x128(r30)
/* 81399B20 | 48 1C 2A 31 */	bl fn_8155C550
/* 81399B24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399B28 | 40 82 00 1C */	bne .L_81399B44
/* 81399B2C | 80 7E 01 24 */	lwz r3, 0x124(r30)
/* 81399B30 | 7F E4 FB 78 */	mr r4, r31
/* 81399B34 | 48 19 3E 31 */	bl DCStoreRange
/* 81399B38 | 7F C3 F3 78 */	mr r3, r30
/* 81399B3C | 48 00 02 29 */	bl change_ltrtex__Q33ipl5scene12focus_objectFv
/* 81399B40 | 48 00 00 14 */	b .L_81399B54
.L_81399B44:
/* 81399B44 | 80 7E 01 24 */	lwz r3, 0x124(r30)
/* 81399B48 | 48 25 E5 A5 */	bl __dla__FPv
/* 81399B4C | 38 00 00 00 */	li r0, 0x0
/* 81399B50 | 90 1E 01 24 */	stw r0, 0x124(r30)
.L_81399B54:
/* 81399B54 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81399B58 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81399B5C | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81399B60 | 7C 08 03 A6 */	mtlr r0
/* 81399B64 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81399B68 | 4E 80 00 20 */	blr
.endfn make_lettertex__Q33ipl5scene12focus_objectFP13RBRAttachment

# .text:0x2E44 | 0x81399B6C | size: 0x110
# ipl::scene::focus_object::init_chanjump(RBRAttachment*)
.fn init_chanjump__Q33ipl5scene12focus_objectFP13RBRAttachment, global
/* 81399B6C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81399B70 | 7C 08 02 A6 */	mflr r0
/* 81399B74 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81399B78 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81399B7C | 48 25 F9 4D */	bl _savegpr_29
/* 81399B80 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81399B84 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 81399B88 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81399B8C | 7C 7D 1B 78 */	mr r29, r3
/* 81399B90 | 88 05 02 BC */	lbz r0, 0x2bc(r5)
/* 81399B94 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81399B98 | 80 66 00 24 */	lwz r3, 0x24(r6)
/* 81399B9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81399BA0 | 7F C3 22 14 */	add r30, r3, r4
/* 81399BA4 | 41 82 00 0C */	beq .L_81399BB0
/* 81399BA8 | 3B E0 00 00 */	li r31, 0x0
/* 81399BAC | 48 00 00 08 */	b .L_81399BB4
.L_81399BB0:
/* 81399BB0 | 83 E5 00 8C */	lwz r31, 0x8c(r5)
.L_81399BB4:
/* 81399BB4 | 7C C3 33 78 */	mr r3, r6
/* 81399BB8 | 7F C4 F3 78 */	mr r4, r30
/* 81399BBC | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 81399BC0 | 4B FF C4 FD */	bl arc_init_handle__Q33ipl5scene11BoardObjectFPvP9ARCHandle
/* 81399BC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399BC8 | 41 82 00 9C */	beq .L_81399C64
/* 81399BCC | 3C 80 81 65 */	lis r4, lbl_8164BD80@ha
/* 81399BD0 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 81399BD4 | 38 84 BD 80 */	addi r4, r4, lbl_8164BD80@l
/* 81399BD8 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81399BDC | 48 1D 72 65 */	bl ARCOpen
/* 81399BE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399BE4 | 41 82 00 80 */	beq .L_81399C64
/* 81399BE8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81399BEC | 48 1D 79 A9 */	bl ARCGetStartOffset
/* 81399BF0 | 7C 1E 1A 14 */	add r0, r30, r3
/* 81399BF4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81399BF8 | 90 1D 01 30 */	stw r0, 0x130(r29)
/* 81399BFC | 48 1D 79 A1 */	bl ARCGetLength
/* 81399C00 | 80 9D 01 30 */	lwz r4, 0x130(r29)
/* 81399C04 | 7C 65 1B 78 */	mr r5, r3
/* 81399C08 | 7F E3 FB 78 */	mr r3, r31
/* 81399C0C | 4B FA 88 9D */	bl checkCHJumpObj__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjUl
/* 81399C10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399C14 | 41 82 00 50 */	beq .L_81399C64
/* 81399C18 | 38 00 00 00 */	li r0, 0x0
/* 81399C1C | 7F E3 FB 78 */	mr r3, r31
/* 81399C20 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81399C24 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81399C28 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81399C2C | 80 9D 01 30 */	lwz r4, 0x130(r29)
/* 81399C30 | 4B FA 88 BD */	bl getCHJumpTitleId__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUx
/* 81399C34 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81399C38 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81399C3C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81399C40 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 81399C44 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 81399C48 | 38 E0 00 00 */	li r7, 0x0
/* 81399C4C | 39 00 00 00 */	li r8, 0x0
/* 81399C50 | 4B F9 E2 29 */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 81399C54 | 7C 80 1B 78 */	or r0, r4, r3
/* 81399C58 | 30 60 FF FF */	subic r3, r0, 0x1
/* 81399C5C | 7C 03 01 10 */	subfe r0, r3, r0
/* 81399C60 | 98 1D 01 2C */	stb r0, 0x12c(r29)
.L_81399C64:
/* 81399C64 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81399C68 | 48 25 F8 AD */	bl _restgpr_29
/* 81399C6C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81399C70 | 7C 08 03 A6 */	mtlr r0
/* 81399C74 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81399C78 | 4E 80 00 20 */	blr
.endfn init_chanjump__Q33ipl5scene12focus_objectFP13RBRAttachment

# .text:0x2F54 | 0x81399C7C | size: 0xE8
# ipl::scene::focus_object::setup_chanjump()
.fn setup_chanjump__Q33ipl5scene12focus_objectFv, global
/* 81399C7C | 94 21 FD E0 */	stwu r1, -0x220(r1)
/* 81399C80 | 7C 08 02 A6 */	mflr r0
/* 81399C84 | 38 80 00 00 */	li r4, 0x0
/* 81399C88 | 38 A0 02 02 */	li r5, 0x202
/* 81399C8C | 90 01 02 24 */	stw r0, 0x224(r1)
/* 81399C90 | 93 E1 02 1C */	stw r31, 0x21c(r1)
/* 81399C94 | 93 C1 02 18 */	stw r30, 0x218(r1)
/* 81399C98 | 7C 7E 1B 78 */	mr r30, r3
/* 81399C9C | 38 61 00 0C */	addi r3, r1, 0xc
/* 81399CA0 | 4B F9 66 95 */	bl memset
/* 81399CA4 | 80 9E 01 30 */	lwz r4, 0x130(r30)
/* 81399CA8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 81399CAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81399CB0 | 41 82 00 7C */	beq .L_81399D2C
/* 81399CB4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81399CB8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81399CBC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81399CC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81399CC4 | 41 82 00 0C */	beq .L_81399CD0
/* 81399CC8 | 3B E0 00 00 */	li r31, 0x0
/* 81399CCC | 48 00 00 08 */	b .L_81399CD4
.L_81399CD0:
/* 81399CD0 | 83 E3 00 8C */	lwz r31, 0x8c(r3)
.L_81399CD4:
/* 81399CD4 | 7F E3 FB 78 */	mr r3, r31
/* 81399CD8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81399CDC | 38 C0 00 00 */	li r6, 0x0
/* 81399CE0 | 4B FA 88 51 */	bl getCHJumpBlockSize__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUlUl
/* 81399CE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399CE8 | 41 82 00 44 */	beq .L_81399D2C
/* 81399CEC | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81399CF0 | 28 06 02 00 */	cmplwi r6, 0x200
/* 81399CF4 | 40 81 00 0C */	ble .L_81399D00
/* 81399CF8 | 38 C0 02 00 */	li r6, 0x200
/* 81399CFC | 90 C1 00 08 */	stw r6, 0x8(r1)
.L_81399D00:
/* 81399D00 | 80 9E 01 30 */	lwz r4, 0x130(r30)
/* 81399D04 | 7F E3 FB 78 */	mr r3, r31
/* 81399D08 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81399D0C | 38 E0 00 00 */	li r7, 0x0
/* 81399D10 | 4B FA 88 69 */	bl getCHJumpBlockData__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPcUlUl
/* 81399D14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399D18 | 40 82 00 14 */	bne .L_81399D2C
/* 81399D1C | 38 61 00 0C */	addi r3, r1, 0xc
/* 81399D20 | 38 80 00 00 */	li r4, 0x0
/* 81399D24 | 38 A0 02 02 */	li r5, 0x202
/* 81399D28 | 4B F9 66 0D */	bl memset
.L_81399D2C:
/* 81399D2C | 80 9E 01 30 */	lwz r4, 0x130(r30)
/* 81399D30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81399D34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81399D38 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 81399D3C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 81399D40 | 80 A4 00 10 */	lwz r5, 0x10(r4)
/* 81399D44 | 80 C4 00 14 */	lwz r6, 0x14(r4)
/* 81399D48 | 4B F9 E3 59 */	bl setupChannelJump__Q33ipl7channel7ManagerFUxPCc
/* 81399D4C | 80 01 02 24 */	lwz r0, 0x224(r1)
/* 81399D50 | 83 E1 02 1C */	lwz r31, 0x21c(r1)
/* 81399D54 | 83 C1 02 18 */	lwz r30, 0x218(r1)
/* 81399D58 | 7C 08 03 A6 */	mtlr r0
/* 81399D5C | 38 21 02 20 */	addi r1, r1, 0x220
/* 81399D60 | 4E 80 00 20 */	blr
.endfn setup_chanjump__Q33ipl5scene12focus_objectFv

# .text:0x303C | 0x81399D64 | size: 0xD8
# ipl::scene::focus_object::change_ltrtex()
.fn change_ltrtex__Q33ipl5scene12focus_objectFv, global
/* 81399D64 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81399D68 | 7C 08 02 A6 */	mflr r0
/* 81399D6C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81399D70 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81399D74 | 48 25 F7 45 */	bl _savegpr_25
/* 81399D78 | 7C 79 1B 78 */	mr r25, r3
/* 81399D7C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81399D80 | 80 99 01 24 */	lwz r4, 0x124(r25)
/* 81399D84 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 81399D88 | 4B FF C3 35 */	bl arc_init_handle__Q33ipl5scene11BoardObjectFPvP9ARCHandle
/* 81399D8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399D90 | 41 82 00 94 */	beq .L_81399E24
/* 81399D94 | 3F C0 81 61 */	lis r30, scChangeTexFile__Q23ipl5scene@ha
/* 81399D98 | 3B A0 00 00 */	li r29, 0x0
/* 81399D9C | 3B DE F7 08 */	addi r30, r30, scChangeTexFile__Q23ipl5scene@l
/* 81399DA0 | 3B E0 00 00 */	li r31, 0x0
.L_81399DA4:
/* 81399DA4 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 81399DA8 | 7F 9E FA 14 */	add r28, r30, r31
/* 81399DAC | 38 61 00 14 */	addi r3, r1, 0x14
/* 81399DB0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81399DB4 | 48 1D 70 8D */	bl ARCOpen
/* 81399DB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399DBC | 41 82 00 58 */	beq .L_81399E14
/* 81399DC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81399DC4 | 48 1D 77 D1 */	bl ARCGetStartOffset
/* 81399DC8 | 80 19 01 24 */	lwz r0, 0x124(r25)
/* 81399DCC | 7F 60 1A 14 */	add r27, r0, r3
/* 81399DD0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81399DD4 | 48 1D 77 C9 */	bl ARCGetLength
/* 81399DD8 | 7C 7A 1B 78 */	mr r26, r3
/* 81399DDC | 80 79 00 14 */	lwz r3, 0x14(r25)
/* 81399DE0 | 80 99 00 18 */	lwz r4, 0x18(r25)
/* 81399DE4 | 7F 66 DB 78 */	mr r6, r27
/* 81399DE8 | 80 BC 00 04 */	lwz r5, 0x4(r28)
/* 81399DEC | 7F 47 D3 78 */	mr r7, r26
/* 81399DF0 | 4B FF BC 89 */	bl change_tex__Q33ipl5scene11BoardObjectFPQ33ipl6layout6ObjectPCcP10TPLPaletteUl
/* 81399DF4 | 80 79 00 14 */	lwz r3, 0x14(r25)
/* 81399DF8 | 7F 66 DB 78 */	mr r6, r27
/* 81399DFC | 80 99 00 18 */	lwz r4, 0x18(r25)
/* 81399E00 | 7F 47 D3 78 */	mr r7, r26
/* 81399E04 | 80 BC 00 08 */	lwz r5, 0x8(r28)
/* 81399E08 | 4B FF BC 71 */	bl change_tex__Q33ipl5scene11BoardObjectFPQ33ipl6layout6ObjectPCcP10TPLPaletteUl
/* 81399E0C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81399E10 | 48 1D 77 95 */	bl ARCClose
.L_81399E14:
/* 81399E14 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81399E18 | 3B FF 00 0C */	addi r31, r31, 0xc
/* 81399E1C | 2C 1D 00 09 */	cmpwi r29, 0x9
/* 81399E20 | 41 80 FF 84 */	blt .L_81399DA4
.L_81399E24:
/* 81399E24 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81399E28 | 48 25 F6 DD */	bl _restgpr_25
/* 81399E2C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81399E30 | 7C 08 03 A6 */	mtlr r0
/* 81399E34 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81399E38 | 4E 80 00 20 */	blr
.endfn change_ltrtex__Q33ipl5scene12focus_objectFv

# .text:0x3114 | 0x81399E3C | size: 0xB8
# ipl::scene::focus_object::make_picture(RBRAttachment*)
.fn make_picture__Q33ipl5scene12focus_objectFP13RBRAttachment, global
/* 81399E3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81399E40 | 7C 08 02 A6 */	mflr r0
/* 81399E44 | 3D 20 81 09 */	lis r9, smArg__Q23ipl6System@ha
/* 81399E48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81399E4C | 39 29 90 08 */	addi r9, r9, smArg__Q23ipl6System@l
/* 81399E50 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81399E54 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81399E58 | 7C 7E 1B 78 */	mr r30, r3
/* 81399E5C | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 81399E60 | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 81399E64 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81399E68 | 7C A3 2B 78 */	mr r3, r5
/* 81399E6C | 80 E5 00 24 */	lwz r7, 0x24(r5)
/* 81399E70 | 39 06 00 04 */	addi r8, r6, 0x4
/* 81399E74 | 80 A9 00 2C */	lwz r5, 0x2c(r9)
/* 81399E78 | 38 9E 00 C8 */	addi r4, r30, 0xc8
/* 81399E7C | 80 C9 00 28 */	lwz r6, 0x28(r9)
/* 81399E80 | 7C E7 02 14 */	add r7, r7, r0
/* 81399E84 | 4B FF B6 61 */	bl create_picture__Q33ipl5scene11BoardObjectFPQ33ipl5scene7picturePQ23EGG4HeapPQ23EGG4HeapPUcUl
/* 81399E88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399E8C | 41 82 00 50 */	beq .L_81399EDC
/* 81399E90 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81399E94 | 38 8D 86 B5 */	li r4, lbl_816966F5@sda21
/* 81399E98 | 38 A0 00 01 */	li r5, 0x1
/* 81399E9C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81399EA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399EA4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81399EA8 | 7D 89 03 A6 */	mtctr r12
/* 81399EAC | 4E 80 04 21 */	bctrl
/* 81399EB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81399EB4 | 7C 7F 1B 78 */	mr r31, r3
/* 81399EB8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81399EBC | 7D 89 03 A6 */	mtctr r12
/* 81399EC0 | 4E 80 04 21 */	bctrl
/* 81399EC4 | 38 BE 00 D8 */	addi r5, r30, 0xd8
/* 81399EC8 | 38 80 00 00 */	li r4, 0x0
/* 81399ECC | 48 18 DF 51 */	bl fn_81527E1C
/* 81399ED0 | 7F C3 F3 78 */	mr r3, r30
/* 81399ED4 | 7F E4 FB 78 */	mr r4, r31
/* 81399ED8 | 48 00 01 15 */	bl resize_pane__Q33ipl5scene12focus_objectFPQ34nw4r3lyt4Pane
.L_81399EDC:
/* 81399EDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81399EE0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81399EE4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81399EE8 | 7C 08 03 A6 */	mtlr r0
/* 81399EEC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81399EF0 | 4E 80 00 20 */	blr
.endfn make_picture__Q33ipl5scene12focus_objectFP13RBRAttachment

# .text:0x31CC | 0x81399EF4 | size: 0xF8
# ipl::scene::focus_object::init_sound(RBRAttachment*)
.fn init_sound__Q33ipl5scene12focus_objectFP13RBRAttachment, global
/* 81399EF4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81399EF8 | 7C 08 02 A6 */	mflr r0
/* 81399EFC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81399F00 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81399F04 | 48 25 F5 BD */	bl _savegpr_27
/* 81399F08 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 81399F0C | 7C 7B 1B 78 */	mr r27, r3
/* 81399F10 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81399F14 | 38 A1 00 24 */	addi r5, r1, 0x24
/* 81399F18 | 80 86 00 24 */	lwz r4, 0x24(r6)
/* 81399F1C | 7C C3 33 78 */	mr r3, r6
/* 81399F20 | 7F A4 02 14 */	add r29, r4, r0
/* 81399F24 | 7F A4 EB 78 */	mr r4, r29
/* 81399F28 | 4B FF C1 95 */	bl arc_init_handle__Q33ipl5scene11BoardObjectFPvP9ARCHandle
/* 81399F2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399F30 | 41 82 00 A4 */	beq .L_81399FD4
/* 81399F34 | 3C C0 81 61 */	lis r6, scSoundFileList__Q23ipl5scene@ha
/* 81399F38 | 84 A6 F7 A8 */	lwzu r5, scSoundFileList__Q23ipl5scene@l(r6)
/* 81399F3C | 3B C1 00 08 */	addi r30, r1, 0x8
/* 81399F40 | 3B 80 00 00 */	li r28, 0x0
/* 81399F44 | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 81399F48 | 3B E0 00 00 */	li r31, 0x0
/* 81399F4C | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 81399F50 | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 81399F54 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81399F58 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81399F5C | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81399F60 | 90 01 00 14 */	stw r0, 0x14(r1)
.L_81399F64:
/* 81399F64 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 81399F68 | 38 61 00 24 */	addi r3, r1, 0x24
/* 81399F6C | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81399F70 | 48 1D 6E D1 */	bl ARCOpen
/* 81399F74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399F78 | 41 82 00 4C */	beq .L_81399FC4
/* 81399F7C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81399F80 | 48 1D 76 15 */	bl ARCGetStartOffset
/* 81399F84 | 7C 1D 1A 14 */	add r0, r29, r3
/* 81399F88 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81399F8C | 90 1B 01 34 */	stw r0, 0x134(r27)
/* 81399F90 | 48 1D 76 0D */	bl ARCGetLength
/* 81399F94 | 7C 65 1B 78 */	mr r5, r3
/* 81399F98 | 90 7B 01 38 */	stw r3, 0x138(r27)
/* 81399F9C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81399FA0 | 80 9B 01 34 */	lwz r4, 0x134(r27)
/* 81399FA4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81399FA8 | 4B FD 22 5D */	bl checkTmpSoundFile__Q33ipl3snd6SystemFPvUl
/* 81399FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81399FB0 | 40 82 00 24 */	bne .L_81399FD4
/* 81399FB4 | 38 00 00 00 */	li r0, 0x0
/* 81399FB8 | 90 1B 01 34 */	stw r0, 0x134(r27)
/* 81399FBC | 90 1B 01 38 */	stw r0, 0x138(r27)
/* 81399FC0 | 48 00 00 14 */	b .L_81399FD4
.L_81399FC4:
/* 81399FC4 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81399FC8 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81399FCC | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81399FD0 | 41 80 FF 94 */	blt .L_81399F64
.L_81399FD4:
/* 81399FD4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81399FD8 | 48 25 F5 35 */	bl _restgpr_27
/* 81399FDC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81399FE0 | 7C 08 03 A6 */	mtlr r0
/* 81399FE4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81399FE8 | 4E 80 00 20 */	blr
.endfn init_sound__Q33ipl5scene12focus_objectFP13RBRAttachment

# .text:0x32C4 | 0x81399FEC | size: 0xF4
# ipl::scene::focus_object::resize_pane(nw4r::lyt::Pane*)
.fn resize_pane__Q33ipl5scene12focus_objectFPQ34nw4r3lyt4Pane, global
/* 81399FEC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81399FF0 | 3C 00 43 30 */	lis r0, 0x4330
/* 81399FF4 | 80 A3 00 D0 */	lwz r5, 0xd0(r3)
/* 81399FF8 | C0 84 00 4C */	lfs f4, 0x4c(r4)
/* 81399FFC | C0 64 00 50 */	lfs f3, 0x50(r4)
/* 8139A000 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8139A004 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8139A008 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8139A00C | D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8139A010 | D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8139A014 | D0 81 00 08 */	stfs f4, 0x8(r1)
/* 8139A018 | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8139A01C | 41 82 00 BC */	beq .L_8139A0D8
/* 8139A020 | 80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 8139A024 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A028 | 41 82 00 B0 */	beq .L_8139A0D8
/* 8139A02C | 7C 05 00 00 */	cmpw r5, r0
/* 8139A030 | 40 81 00 50 */	ble .L_8139A080
/* 8139A034 | 6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8139A038 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8139A03C | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 8139A040 | C8 42 84 80 */	lfd f2, lbl_81694880@sda21(r0)
/* 8139A044 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8139A048 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139A04C | EC 20 10 28 */	fsubs f1, f0, f2
/* 8139A050 | C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8139A054 | EC 24 00 72 */	fmuls f1, f4, f1
/* 8139A058 | EC 00 10 28 */	fsubs f0, f0, f2
/* 8139A05C | EC 01 00 24 */	fdivs f0, f1, f0
/* 8139A060 | FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8139A064 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8139A068 | 40 81 00 60 */	ble .L_8139A0C8
/* 8139A06C | EC 03 00 24 */	fdivs f0, f3, f0
/* 8139A070 | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8139A074 | EC 04 00 32 */	fmuls f0, f4, f0
/* 8139A078 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8139A07C | 48 00 00 4C */	b .L_8139A0C8
.L_8139A080:
/* 8139A080 | 6C A3 80 00 */	xoris r3, r5, 0x8000
/* 8139A084 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8139A088 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 8139A08C | C8 42 84 80 */	lfd f2, lbl_81694880@sda21(r0)
/* 8139A090 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8139A094 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139A098 | EC 20 10 28 */	fsubs f1, f0, f2
/* 8139A09C | C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8139A0A0 | EC 23 00 72 */	fmuls f1, f3, f1
/* 8139A0A4 | EC 00 10 28 */	fsubs f0, f0, f2
/* 8139A0A8 | EC 01 00 24 */	fdivs f0, f1, f0
/* 8139A0AC | FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8139A0B0 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8139A0B4 | 40 81 00 14 */	ble .L_8139A0C8
/* 8139A0B8 | EC 04 00 24 */	fdivs f0, f4, f0
/* 8139A0BC | D0 81 00 08 */	stfs f4, 0x8(r1)
/* 8139A0C0 | EC 03 00 32 */	fmuls f0, f3, f0
/* 8139A0C4 | D0 01 00 0C */	stfs f0, 0xc(r1)
.L_8139A0C8:
/* 8139A0C8 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 8139A0CC | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8139A0D0 | D0 24 00 4C */	stfs f1, 0x4c(r4)
/* 8139A0D4 | D0 04 00 50 */	stfs f0, 0x50(r4)
.L_8139A0D8:
/* 8139A0D8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139A0DC | 4E 80 00 20 */	blr
.endfn resize_pane__Q33ipl5scene12focus_objectFPQ34nw4r3lyt4Pane

# .text:0x33B8 | 0x8139A0E0 | size: 0x138
# ipl::scene::focus_object::init(ipl::nand::LayoutFile*)
.fn init__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFile, global
/* 8139A0E0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8139A0E4 | 7C 08 02 A6 */	mflr r0
/* 8139A0E8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8139A0EC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139A0F0 | 48 25 F3 D9 */	bl _savegpr_29
/* 8139A0F4 | 7C 7D 1B 78 */	mr r29, r3
/* 8139A0F8 | 48 00 01 21 */	bl init_balloon__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFile
/* 8139A0FC | 7F A3 EB 78 */	mr r3, r29
/* 8139A100 | 48 00 02 6D */	bl init_scroller__Q33ipl5scene12focus_objectFv
/* 8139A104 | 7F A3 EB 78 */	mr r3, r29
/* 8139A108 | 48 00 03 BD */	bl init_url_proc__Q33ipl5scene12focus_objectFv
/* 8139A10C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139A110 | 38 80 00 05 */	li r4, 0x5
/* 8139A114 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139A118 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139A11C | 48 07 10 1D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139A120 | 38 9D 00 38 */	addi r4, r29, 0x38
/* 8139A124 | 38 BD 00 48 */	addi r5, r29, 0x48
/* 8139A128 | 48 00 28 15 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8139A12C | C0 22 84 6C */	lfs f1, lbl_8169486C@sda21(r0)
/* 8139A130 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139A134 | FC 40 08 90 */	fmr f2, f1
/* 8139A138 | FC 60 08 90 */	fmr f3, f1
/* 8139A13C | 4B FC 89 21 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8139A140 | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8139A144 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8139A148 | C0 62 84 6C */	lfs f3, lbl_8169486C@sda21(r0)
/* 8139A14C | C0 24 00 34 */	lfs f1, 0x34(r4)
/* 8139A150 | C0 44 00 38 */	lfs f2, 0x38(r4)
/* 8139A154 | 4B FC 89 09 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8139A158 | 38 7D 01 C8 */	addi r3, r29, 0x1c8
/* 8139A15C | 38 81 00 14 */	addi r4, r1, 0x14
/* 8139A160 | 4B FA A5 25 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 8139A164 | 38 7D 01 D4 */	addi r3, r29, 0x1d4
/* 8139A168 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139A16C | 4B FA A5 19 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 8139A170 | C0 22 84 88 */	lfs f1, lbl_81694888@sda21(r0)
/* 8139A174 | 38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 8139A178 | C0 42 84 6C */	lfs f2, lbl_8169486C@sda21(r0)
/* 8139A17C | 38 80 00 00 */	li r4, 0x0
/* 8139A180 | C0 62 84 68 */	lfs f3, lbl_81694868@sda21(r0)
/* 8139A184 | 4B FC 86 CD */	bl init__Q33ipl7utility15FrameControllerFifff
/* 8139A188 | 38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 8139A18C | 4B FC 86 E5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A190 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8139A194 | 3B E0 00 01 */	li r31, 0x1
/* 8139A198 | 93 FD 01 BC */	stw r31, 0x1bc(r29)
/* 8139A19C | 38 80 00 00 */	li r4, 0x0
/* 8139A1A0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A1A4 | 48 17 81 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A1A8 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A1AC | 4B FC 86 C5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A1B0 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 8139A1B4 | 38 80 00 02 */	li r4, 0x2
/* 8139A1B8 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8139A1BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A1C0 | 48 17 81 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A1C4 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A1C8 | 4B FC 86 A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A1CC | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 8139A1D0 | 38 80 00 0A */	li r4, 0xa
/* 8139A1D4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8139A1D8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A1DC | 48 17 81 3D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A1E0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A1E4 | 4B FC 86 8D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A1E8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139A1EC | 3C 80 81 65 */	lis r4, lbl_8164BDB6@ha
/* 8139A1F0 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 8139A1F4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139A1F8 | 38 84 BD B6 */	addi r4, r4, lbl_8164BDB6@l
/* 8139A1FC | 4B FD 12 71 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139A200 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139A204 | 48 25 F3 11 */	bl _restgpr_29
/* 8139A208 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139A20C | 7C 08 03 A6 */	mtlr r0
/* 8139A210 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139A214 | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFile

# .text:0x34F0 | 0x8139A218 | size: 0xD0
# ipl::scene::focus_object::init_balloon(ipl::nand::LayoutFile*)
.fn init_balloon__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFile, global
/* 8139A218 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8139A21C | 7C 08 02 A6 */	mflr r0
/* 8139A220 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8139A224 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8139A228 | 48 25 F2 9D */	bl _savegpr_28
/* 8139A22C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8139A230 | 7C 7C 1B 78 */	mr r28, r3
/* 8139A234 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8139A238 | 7C 9D 23 78 */	mr r29, r4
/* 8139A23C | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8139A240 | 38 60 00 3C */	li r3, 0x3c
/* 8139A244 | 38 A0 00 04 */	li r5, 0x4
/* 8139A248 | 48 25 DE 69 */	bl __nw__FUlPQ23EGG4Heapi
/* 8139A24C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139A250 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A254 | 41 82 00 48 */	beq .L_8139A29C
/* 8139A258 | C0 22 84 6C */	lfs f1, lbl_8169486C@sda21(r0)
/* 8139A25C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139A260 | 83 FF 00 28 */	lwz r31, 0x28(r31)
/* 8139A264 | FC 40 08 90 */	fmr f2, f1
/* 8139A268 | FC 60 08 90 */	fmr f3, f1
/* 8139A26C | 4B FC 87 F1 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8139A270 | 3C E0 81 65 */	lis r7, lbl_8164BDCB@ha
/* 8139A274 | C0 22 84 8C */	lfs f1, lbl_8169488C@sda21(r0)
/* 8139A278 | 7C 68 1B 78 */	mr r8, r3
/* 8139A27C | C0 42 84 90 */	lfs f2, lbl_81694890@sda21(r0)
/* 8139A280 | 7F C3 F3 78 */	mr r3, r30
/* 8139A284 | 7F E4 FB 78 */	mr r4, r31
/* 8139A288 | 7F A5 EB 78 */	mr r5, r29
/* 8139A28C | 38 E7 BD CB */	addi r7, r7, lbl_8164BDCB@l
/* 8139A290 | 38 CD 86 8F */	li r6, lbl_816966CF@sda21
/* 8139A294 | 48 03 71 79 */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
/* 8139A298 | 7C 7E 1B 78 */	mr r30, r3
.L_8139A29C:
/* 8139A29C | 93 DC 00 20 */	stw r30, 0x20(r28)
/* 8139A2A0 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8139A2A4 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8139A2A8 | 38 A0 00 0C */	li r5, 0xc
/* 8139A2AC | 4B FF BB 41 */	bl get_nigaoe_name__Q33ipl5scene11BoardObjectFPwi
/* 8139A2B0 | 80 7C 00 20 */	lwz r3, 0x20(r28)
/* 8139A2B4 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8139A2B8 | 38 A0 00 00 */	li r5, 0x0
/* 8139A2BC | 48 03 73 45 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 8139A2C0 | 80 7C 00 20 */	lwz r3, 0x20(r28)
/* 8139A2C4 | 38 A0 00 00 */	li r5, 0x0
/* 8139A2C8 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 8139A2CC | 48 03 79 DD */	bl set_textbox__Q33ipl5scene11TextBalloonFPCw
/* 8139A2D0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8139A2D4 | 48 25 F2 3D */	bl _restgpr_28
/* 8139A2D8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8139A2DC | 7C 08 03 A6 */	mtlr r0
/* 8139A2E0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8139A2E4 | 4E 80 00 20 */	blr
.endfn init_balloon__Q33ipl5scene12focus_objectFPQ33ipl4nand10LayoutFile

# .text:0x35C0 | 0x8139A2E8 | size: 0x84
# ipl::scene::focus_object::calc_balloon_pos() const
.fn calc_balloon_pos__Q33ipl5scene12focus_objectCFv, global
/* 8139A2E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A2EC | 7C 08 02 A6 */	mflr r0
/* 8139A2F0 | C0 22 84 6C */	lfs f1, lbl_8169486C@sda21(r0)
/* 8139A2F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A2F8 | FC 40 08 90 */	fmr f2, f1
/* 8139A2FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A300 | FC 60 08 90 */	fmr f3, f1
/* 8139A304 | 7C 9F 23 78 */	mr r31, r4
/* 8139A308 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A30C | 7C 7E 1B 78 */	mr r30, r3
/* 8139A310 | 4B FC 87 4D */	bl __ct__Q33ipl4math4VEC3Ffff
/* 8139A314 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8139A318 | 38 8D 86 7A */	li r4, lbl_816966BA@sda21
/* 8139A31C | 38 A0 00 01 */	li r5, 0x1
/* 8139A320 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139A324 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139A328 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139A32C | 7D 89 03 A6 */	mtctr r12
/* 8139A330 | 4E 80 04 21 */	bctrl
/* 8139A334 | 7F C4 F3 78 */	mr r4, r30
/* 8139A338 | 7F C5 F3 78 */	mr r5, r30
/* 8139A33C | 38 63 00 84 */	addi r3, r3, 0x84
/* 8139A340 | 48 1A 71 7D */	bl fn_815414BC
/* 8139A344 | C0 22 84 94 */	lfs f1, lbl_81694894@sda21(r0)
/* 8139A348 | C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 8139A34C | EC 00 08 2A */	fadds f0, f0, f1
/* 8139A350 | D0 1E 00 04 */	stfs f0, 0x4(r30)
/* 8139A354 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A358 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A35C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A360 | 7C 08 03 A6 */	mtlr r0
/* 8139A364 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A368 | 4E 80 00 20 */	blr
.endfn calc_balloon_pos__Q33ipl5scene12focus_objectCFv

# .text:0x3644 | 0x8139A36C | size: 0x158
# ipl::scene::focus_object::init_scroller()
.fn init_scroller__Q33ipl5scene12focus_objectFv, global
/* 8139A36C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8139A370 | 7C 08 02 A6 */	mflr r0
/* 8139A374 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8139A378 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8139A37C | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8139A380 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139A384 | 48 25 F1 41 */	bl _savegpr_28
/* 8139A388 | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8139A38C | 7C 7C 1B 78 */	mr r28, r3
/* 8139A390 | 3C 80 81 65 */	lis r4, lbl_8164BB78@ha
/* 8139A394 | 38 A0 00 01 */	li r5, 0x1
/* 8139A398 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 8139A39C | 38 84 BB 78 */	addi r4, r4, lbl_8164BB78@l
/* 8139A3A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139A3A4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139A3A8 | 7D 89 03 A6 */	mtctr r12
/* 8139A3AC | 4E 80 04 21 */	bctrl
/* 8139A3B0 | 80 DC 00 18 */	lwz r6, 0x18(r28)
/* 8139A3B4 | 7C 7D 1B 78 */	mr r29, r3
/* 8139A3B8 | 38 8D 86 73 */	li r4, lbl_816966B3@sda21
/* 8139A3BC | 38 A0 00 01 */	li r5, 0x1
/* 8139A3C0 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 8139A3C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139A3C8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139A3CC | 7D 89 03 A6 */	mtctr r12
/* 8139A3D0 | 4E 80 04 21 */	bctrl
/* 8139A3D4 | 80 DC 00 18 */	lwz r6, 0x18(r28)
/* 8139A3D8 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A3DC | 3C 80 81 65 */	lis r4, lbl_8164BB81@ha
/* 8139A3E0 | 38 A0 00 01 */	li r5, 0x1
/* 8139A3E4 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 8139A3E8 | 38 84 BB 81 */	addi r4, r4, lbl_8164BB81@l
/* 8139A3EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139A3F0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139A3F4 | 7D 89 03 A6 */	mtctr r12
/* 8139A3F8 | 4E 80 04 21 */	bctrl
/* 8139A3FC | C0 02 84 6C */	lfs f0, lbl_8169486C@sda21(r0)
/* 8139A400 | 7C 7F 1B 78 */	mr r31, r3
/* 8139A404 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139A408 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8139A40C | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8139A410 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8139A414 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8139A418 | 4B F9 B5 01 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8139A41C | 80 7C 01 F0 */	lwz r3, 0x1f0(r28)
/* 8139A420 | 3C 00 43 30 */	lis r0, 0x4330
/* 8139A424 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8139A428 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8139A42C | C8 42 84 80 */	lfd f2, lbl_81694880@sda21(r0)
/* 8139A430 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 8139A434 | C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8139A438 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8139A43C | C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8139A440 | EC 80 10 28 */	fsubs f4, f0, f2
/* 8139A444 | C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8139A448 | C0 C1 00 14 */	lfs f6, 0x14(r1)
/* 8139A44C | EC 41 00 2A */	fadds f2, f1, f0
/* 8139A450 | C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8139A454 | EC 64 00 F2 */	fmuls f3, f4, f3
/* 8139A458 | EC 86 28 28 */	fsubs f4, f6, f5
/* 8139A45C | C0 22 84 98 */	lfs f1, lbl_81694898@sda21(r0)
/* 8139A460 | C0 02 84 6C */	lfs f0, lbl_8169486C@sda21(r0)
/* 8139A464 | EC 43 10 2A */	fadds f2, f3, f2
/* 8139A468 | EC 42 20 28 */	fsubs f2, f2, f4
/* 8139A46C | EF E1 10 2A */	fadds f31, f1, f2
/* 8139A470 | FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8139A474 | 40 80 00 08 */	bge .L_8139A47C
/* 8139A478 | FF E0 00 90 */	fmr f31, f0
.L_8139A47C:
/* 8139A47C | C0 02 84 6C */	lfs f0, lbl_8169486C@sda21(r0)
/* 8139A480 | 38 00 00 00 */	li r0, 0x0
/* 8139A484 | 90 1C 00 88 */	stw r0, 0x88(r28)
/* 8139A488 | 38 7C 00 A8 */	addi r3, r28, 0xa8
/* 8139A48C | D0 1C 00 98 */	stfs f0, 0x98(r28)
/* 8139A490 | D0 1C 00 94 */	stfs f0, 0x94(r28)
/* 8139A494 | D0 1C 00 90 */	stfs f0, 0x90(r28)
/* 8139A498 | D0 1C 00 8C */	stfs f0, 0x8c(r28)
/* 8139A49C | 4B FC 91 31 */	bl init__Q33ipl7utility9BScrollerFv
/* 8139A4A0 | D3 FC 00 8C */	stfs f31, 0x8c(r28)
/* 8139A4A4 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8139A4A8 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8139A4AC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139A4B0 | 48 25 F0 61 */	bl _restgpr_28
/* 8139A4B4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8139A4B8 | 7C 08 03 A6 */	mtlr r0
/* 8139A4BC | 38 21 00 40 */	addi r1, r1, 0x40
/* 8139A4C0 | 4E 80 00 20 */	blr
.endfn init_scroller__Q33ipl5scene12focus_objectFv

# .text:0x379C | 0x8139A4C4 | size: 0xD0
# ipl::scene::focus_object::init_url_proc()
.fn init_url_proc__Q33ipl5scene12focus_objectFv, global
/* 8139A4C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A4C8 | 7C 08 02 A6 */	mflr r0
/* 8139A4CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A4D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A4D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A4D8 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A4DC | 38 63 01 50 */	addi r3, r3, 0x150
/* 8139A4E0 | 4B FF BE E1 */	bl init__Q33ipl5scene12UrlProcessorFv
/* 8139A4E4 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8139A4E8 | 80 03 00 D8 */	lwz r0, 0xd8(r3)
/* 8139A4EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A4F0 | 40 82 00 0C */	bne .L_8139A4FC
/* 8139A4F4 | C0 02 84 9C */	lfs f0, lbl_8169489C@sda21(r0)
/* 8139A4F8 | D0 1E 01 90 */	stfs f0, 0x190(r30)
.L_8139A4FC:
/* 8139A4FC | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8139A500 | 3C 80 81 65 */	lis r4, lbl_8164BB8A@ha
/* 8139A504 | 38 84 BB 8A */	addi r4, r4, lbl_8164BB8A@l
/* 8139A508 | 38 A0 00 01 */	li r5, 0x1
/* 8139A50C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139A510 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139A514 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139A518 | 7D 89 03 A6 */	mtctr r12
/* 8139A51C | 4E 80 04 21 */	bctrl
/* 8139A520 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139A524 | 7C 7F 1B 78 */	mr r31, r3
/* 8139A528 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8139A52C | 7D 89 03 A6 */	mtctr r12
/* 8139A530 | 4E 80 04 21 */	bctrl
/* 8139A534 | 38 8D AF 78 */	li r4, lbl_81698FB8@sda21
/* 8139A538 | 4B FC F1 21 */	bl IsDerivedFrom__Q44nw4r2ut6detail15RuntimeTypeInfoCFPCQ44nw4r2ut6detail15RuntimeTypeInfo
/* 8139A53C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139A540 | 41 82 00 08 */	beq .L_8139A548
/* 8139A544 | 48 00 00 08 */	b .L_8139A54C
.L_8139A548:
/* 8139A548 | 3B E0 00 00 */	li r31, 0x0
.L_8139A54C:
/* 8139A54C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139A550 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139A554 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 8139A558 | 4B F9 DA 49 */	bl isEnableUrlJump__Q33ipl7channel7ManagerFv
/* 8139A55C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139A560 | 41 82 00 1C */	beq .L_8139A57C
/* 8139A564 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8139A568 | 80 03 00 D8 */	lwz r0, 0xd8(r3)
/* 8139A56C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139A570 | 41 82 00 0C */	beq .L_8139A57C
/* 8139A574 | 38 1E 01 50 */	addi r0, r30, 0x150
/* 8139A578 | 90 1F 00 F4 */	stw r0, 0xf4(r31)
.L_8139A57C:
/* 8139A57C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A580 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A584 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A588 | 7C 08 03 A6 */	mtlr r0
/* 8139A58C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A590 | 4E 80 00 20 */	blr
.endfn init_url_proc__Q33ipl5scene12focus_objectFv

# .text:0x386C | 0x8139A594 | size: 0x60
# ipl::scene::focus_object::show_uarw()
.fn show_uarw__Q33ipl5scene12focus_objectFv, global
/* 8139A594 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A598 | 7C 08 02 A6 */	mflr r0
/* 8139A59C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A5A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A5A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A5A8 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A5AC | 88 03 01 FC */	lbz r0, 0x1fc(r3)
/* 8139A5B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A5B4 | 40 82 00 28 */	bne .L_8139A5DC
/* 8139A5B8 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139A5BC | 38 80 00 06 */	li r4, 0x6
/* 8139A5C0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A5C4 | 48 17 7D 55 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A5C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8139A5CC | 4B FC 82 A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A5D0 | 38 00 00 01 */	li r0, 0x1
/* 8139A5D4 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139A5D8 | 98 1E 01 FC */	stb r0, 0x1fc(r30)
.L_8139A5DC:
/* 8139A5DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A5E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A5E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A5E8 | 7C 08 03 A6 */	mtlr r0
/* 8139A5EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A5F0 | 4E 80 00 20 */	blr
.endfn show_uarw__Q33ipl5scene12focus_objectFv

# .text:0x38CC | 0x8139A5F4 | size: 0x60
# ipl::scene::focus_object::show_darw()
.fn show_darw__Q33ipl5scene12focus_objectFv, global
/* 8139A5F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A5F8 | 7C 08 02 A6 */	mflr r0
/* 8139A5FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A600 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A604 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A608 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A60C | 88 03 01 FD */	lbz r0, 0x1fd(r3)
/* 8139A610 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A614 | 40 82 00 28 */	bne .L_8139A63C
/* 8139A618 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139A61C | 38 80 00 0E */	li r4, 0xe
/* 8139A620 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A624 | 48 17 7C F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A628 | 7C 7F 1B 78 */	mr r31, r3
/* 8139A62C | 4B FC 82 45 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A630 | 38 00 00 01 */	li r0, 0x1
/* 8139A634 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139A638 | 98 1E 01 FD */	stb r0, 0x1fd(r30)
.L_8139A63C:
/* 8139A63C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A640 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A644 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A648 | 7C 08 03 A6 */	mtlr r0
/* 8139A64C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A650 | 4E 80 00 20 */	blr
.endfn show_darw__Q33ipl5scene12focus_objectFv

# .text:0x392C | 0x8139A654 | size: 0x64
# ipl::scene::focus_object::hide_uarw()
.fn hide_uarw__Q33ipl5scene12focus_objectFv, global
/* 8139A654 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A658 | 7C 08 02 A6 */	mflr r0
/* 8139A65C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A660 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A664 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A668 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A66C | 88 03 01 FC */	lbz r0, 0x1fc(r3)
/* 8139A670 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A674 | 41 82 00 2C */	beq .L_8139A6A0
/* 8139A678 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139A67C | 38 80 00 07 */	li r4, 0x7
/* 8139A680 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A684 | 48 17 7C 95 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A688 | 7C 7F 1B 78 */	mr r31, r3
/* 8139A68C | 4B FC 81 E5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A690 | 38 60 00 01 */	li r3, 0x1
/* 8139A694 | 38 00 00 00 */	li r0, 0x0
/* 8139A698 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8139A69C | 98 1E 01 FC */	stb r0, 0x1fc(r30)
.L_8139A6A0:
/* 8139A6A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A6A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A6A8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A6AC | 7C 08 03 A6 */	mtlr r0
/* 8139A6B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A6B4 | 4E 80 00 20 */	blr
.endfn hide_uarw__Q33ipl5scene12focus_objectFv

# .text:0x3990 | 0x8139A6B8 | size: 0x64
# ipl::scene::focus_object::hide_darw()
.fn hide_darw__Q33ipl5scene12focus_objectFv, global
/* 8139A6B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A6BC | 7C 08 02 A6 */	mflr r0
/* 8139A6C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A6C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A6C8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A6CC | 7C 7E 1B 78 */	mr r30, r3
/* 8139A6D0 | 88 03 01 FD */	lbz r0, 0x1fd(r3)
/* 8139A6D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A6D8 | 41 82 00 2C */	beq .L_8139A704
/* 8139A6DC | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139A6E0 | 38 80 00 0F */	li r4, 0xf
/* 8139A6E4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A6E8 | 48 17 7C 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A6EC | 7C 7F 1B 78 */	mr r31, r3
/* 8139A6F0 | 4B FC 81 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A6F4 | 38 60 00 01 */	li r3, 0x1
/* 8139A6F8 | 38 00 00 00 */	li r0, 0x0
/* 8139A6FC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8139A700 | 98 1E 01 FD */	stb r0, 0x1fd(r30)
.L_8139A704:
/* 8139A704 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A708 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A70C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A710 | 7C 08 03 A6 */	mtlr r0
/* 8139A714 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A718 | 4E 80 00 20 */	blr
.endfn hide_darw__Q33ipl5scene12focus_objectFv

# .text:0x39F4 | 0x8139A71C | size: 0x9C
# ipl::scene::focus_object::show_or_hide_arw(bool, bool, bool, bool)
.fn show_or_hide_arw__Q33ipl5scene12focus_objectFbbbb, global
/* 8139A71C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139A720 | 7C 08 02 A6 */	mflr r0
/* 8139A724 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139A728 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139A72C | 48 25 ED 95 */	bl _savegpr_27
/* 8139A730 | 28 04 00 01 */	cmplwi r4, 0x1
/* 8139A734 | 7C 7B 1B 78 */	mr r27, r3
/* 8139A738 | 7C 9C 23 78 */	mr r28, r4
/* 8139A73C | 7C BD 2B 78 */	mr r29, r5
/* 8139A740 | 7C DE 33 78 */	mr r30, r6
/* 8139A744 | 7C FF 3B 78 */	mr r31, r7
/* 8139A748 | 41 82 00 10 */	beq .L_8139A758
/* 8139A74C | 28 06 00 01 */	cmplwi r6, 0x1
/* 8139A750 | 40 82 00 08 */	bne .L_8139A758
/* 8139A754 | 4B FF FF 01 */	bl hide_uarw__Q33ipl5scene12focus_objectFv
.L_8139A758:
/* 8139A758 | 28 1C 00 01 */	cmplwi r28, 0x1
/* 8139A75C | 40 82 00 14 */	bne .L_8139A770
/* 8139A760 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 8139A764 | 41 82 00 0C */	beq .L_8139A770
/* 8139A768 | 7F 63 DB 78 */	mr r3, r27
/* 8139A76C | 4B FF FE 29 */	bl show_uarw__Q33ipl5scene12focus_objectFv
.L_8139A770:
/* 8139A770 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8139A774 | 41 82 00 14 */	beq .L_8139A788
/* 8139A778 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 8139A77C | 40 82 00 0C */	bne .L_8139A788
/* 8139A780 | 7F 63 DB 78 */	mr r3, r27
/* 8139A784 | 4B FF FF 35 */	bl hide_darw__Q33ipl5scene12focus_objectFv
.L_8139A788:
/* 8139A788 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8139A78C | 40 82 00 14 */	bne .L_8139A7A0
/* 8139A790 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 8139A794 | 41 82 00 0C */	beq .L_8139A7A0
/* 8139A798 | 7F 63 DB 78 */	mr r3, r27
/* 8139A79C | 4B FF FE 59 */	bl show_darw__Q33ipl5scene12focus_objectFv
.L_8139A7A0:
/* 8139A7A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139A7A4 | 48 25 ED 69 */	bl _restgpr_27
/* 8139A7A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139A7AC | 7C 08 03 A6 */	mtlr r0
/* 8139A7B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139A7B4 | 4E 80 00 20 */	blr
.endfn show_or_hide_arw__Q33ipl5scene12focus_objectFbbbb

# .text:0x3A90 | 0x8139A7B8 | size: 0x60
# ipl::scene::focus_object::scale_up_uarw()
.fn scale_up_uarw__Q33ipl5scene12focus_objectFv, global
/* 8139A7B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A7BC | 7C 08 02 A6 */	mflr r0
/* 8139A7C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A7C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A7C8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A7CC | 7C 7E 1B 78 */	mr r30, r3
/* 8139A7D0 | 88 03 01 FE */	lbz r0, 0x1fe(r3)
/* 8139A7D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A7D8 | 40 82 00 28 */	bne .L_8139A800
/* 8139A7DC | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139A7E0 | 38 80 00 10 */	li r4, 0x10
/* 8139A7E4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A7E8 | 48 17 7B 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A7EC | 7C 7F 1B 78 */	mr r31, r3
/* 8139A7F0 | 4B FC 80 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A7F4 | 38 00 00 01 */	li r0, 0x1
/* 8139A7F8 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139A7FC | 98 1E 01 FE */	stb r0, 0x1fe(r30)
.L_8139A800:
/* 8139A800 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A804 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A808 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A80C | 7C 08 03 A6 */	mtlr r0
/* 8139A810 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A814 | 4E 80 00 20 */	blr
.endfn scale_up_uarw__Q33ipl5scene12focus_objectFv

# .text:0x3AF0 | 0x8139A818 | size: 0x60
# ipl::scene::focus_object::scale_up_darw()
.fn scale_up_darw__Q33ipl5scene12focus_objectFv, global
/* 8139A818 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A81C | 7C 08 02 A6 */	mflr r0
/* 8139A820 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A824 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A828 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A82C | 7C 7E 1B 78 */	mr r30, r3
/* 8139A830 | 88 03 01 FF */	lbz r0, 0x1ff(r3)
/* 8139A834 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A838 | 40 82 00 28 */	bne .L_8139A860
/* 8139A83C | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139A840 | 38 80 00 08 */	li r4, 0x8
/* 8139A844 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A848 | 48 17 7A D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A84C | 7C 7F 1B 78 */	mr r31, r3
/* 8139A850 | 4B FC 80 21 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A854 | 38 00 00 01 */	li r0, 0x1
/* 8139A858 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139A85C | 98 1E 01 FF */	stb r0, 0x1ff(r30)
.L_8139A860:
/* 8139A860 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A864 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A868 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A86C | 7C 08 03 A6 */	mtlr r0
/* 8139A870 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A874 | 4E 80 00 20 */	blr
.endfn scale_up_darw__Q33ipl5scene12focus_objectFv

# .text:0x3B50 | 0x8139A878 | size: 0x64
# ipl::scene::focus_object::scale_down_uarw()
.fn scale_down_uarw__Q33ipl5scene12focus_objectFv, global
/* 8139A878 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A87C | 7C 08 02 A6 */	mflr r0
/* 8139A880 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A884 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A888 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A88C | 7C 7E 1B 78 */	mr r30, r3
/* 8139A890 | 88 03 01 FE */	lbz r0, 0x1fe(r3)
/* 8139A894 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A898 | 41 82 00 2C */	beq .L_8139A8C4
/* 8139A89C | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139A8A0 | 38 80 00 11 */	li r4, 0x11
/* 8139A8A4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A8A8 | 48 17 7A 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A8AC | 7C 7F 1B 78 */	mr r31, r3
/* 8139A8B0 | 4B FC 7F C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A8B4 | 38 60 00 01 */	li r3, 0x1
/* 8139A8B8 | 38 00 00 00 */	li r0, 0x0
/* 8139A8BC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8139A8C0 | 98 1E 01 FE */	stb r0, 0x1fe(r30)
.L_8139A8C4:
/* 8139A8C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A8C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A8CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A8D0 | 7C 08 03 A6 */	mtlr r0
/* 8139A8D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A8D8 | 4E 80 00 20 */	blr
.endfn scale_down_uarw__Q33ipl5scene12focus_objectFv

# .text:0x3BB4 | 0x8139A8DC | size: 0x64
# ipl::scene::focus_object::scale_down_darw()
.fn scale_down_darw__Q33ipl5scene12focus_objectFv, global
/* 8139A8DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A8E0 | 7C 08 02 A6 */	mflr r0
/* 8139A8E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A8E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A8EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A8F0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A8F4 | 88 03 01 FF */	lbz r0, 0x1ff(r3)
/* 8139A8F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139A8FC | 41 82 00 2C */	beq .L_8139A928
/* 8139A900 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139A904 | 38 80 00 09 */	li r4, 0x9
/* 8139A908 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139A90C | 48 17 7A 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139A910 | 7C 7F 1B 78 */	mr r31, r3
/* 8139A914 | 4B FC 7F 5D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139A918 | 38 60 00 01 */	li r3, 0x1
/* 8139A91C | 38 00 00 00 */	li r0, 0x0
/* 8139A920 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8139A924 | 98 1E 01 FF */	stb r0, 0x1ff(r30)
.L_8139A928:
/* 8139A928 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139A92C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139A930 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139A934 | 7C 08 03 A6 */	mtlr r0
/* 8139A938 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139A93C | 4E 80 00 20 */	blr
.endfn scale_down_darw__Q33ipl5scene12focus_objectFv

# .text:0x3C18 | 0x8139A940 | size: 0x160
# ipl::scene::focus_object::scale_up_or_down_arw()
.fn scale_up_or_down_arw__Q33ipl5scene12focus_objectFv, global
/* 8139A940 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139A944 | 7C 08 02 A6 */	mflr r0
/* 8139A948 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139A94C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139A950 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139A954 | 7C 7E 1B 78 */	mr r30, r3
/* 8139A958 | 4B F9 B0 51 */	bl getMasterController__Q23ipl6SystemFv
/* 8139A95C | 7C 7F 1B 78 */	mr r31, r3
/* 8139A960 | 38 7E 00 A8 */	addi r3, r30, 0xa8
/* 8139A964 | 4B FC 91 81 */	bl isActive__Q33ipl7utility9BScrollerCFv
/* 8139A968 | 7C 60 00 34 */	cntlzw r0, r3
/* 8139A96C | 54 00 D9 7F */	srwi. r0, r0, 5
/* 8139A970 | 41 82 00 B8 */	beq .L_8139AA28
/* 8139A974 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139A978 | 3C 80 00 01 */	lis r4, 0x1
/* 8139A97C | 7F E3 FB 78 */	mr r3, r31
/* 8139A980 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8139A984 | 38 84 00 08 */	addi r4, r4, 0x8
/* 8139A988 | 7D 89 03 A6 */	mtctr r12
/* 8139A98C | 4E 80 04 21 */	bctrl
/* 8139A990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139A994 | 41 82 00 0C */	beq .L_8139A9A0
/* 8139A998 | 7F C3 F3 78 */	mr r3, r30
/* 8139A99C | 4B FF FE 1D */	bl scale_up_uarw__Q33ipl5scene12focus_objectFv
.L_8139A9A0:
/* 8139A9A0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139A9A4 | 3C 80 00 01 */	lis r4, 0x1
/* 8139A9A8 | 7F E3 FB 78 */	mr r3, r31
/* 8139A9AC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8139A9B0 | 38 84 00 08 */	addi r4, r4, 0x8
/* 8139A9B4 | 7D 89 03 A6 */	mtctr r12
/* 8139A9B8 | 4E 80 04 21 */	bctrl
/* 8139A9BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139A9C0 | 40 82 00 0C */	bne .L_8139A9CC
/* 8139A9C4 | 7F C3 F3 78 */	mr r3, r30
/* 8139A9C8 | 4B FF FE B1 */	bl scale_down_uarw__Q33ipl5scene12focus_objectFv
.L_8139A9CC:
/* 8139A9CC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139A9D0 | 3C 80 40 00 */	lis r4, 0x4000
/* 8139A9D4 | 7F E3 FB 78 */	mr r3, r31
/* 8139A9D8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8139A9DC | 38 84 00 04 */	addi r4, r4, 0x4
/* 8139A9E0 | 7D 89 03 A6 */	mtctr r12
/* 8139A9E4 | 4E 80 04 21 */	bctrl
/* 8139A9E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139A9EC | 41 82 00 0C */	beq .L_8139A9F8
/* 8139A9F0 | 7F C3 F3 78 */	mr r3, r30
/* 8139A9F4 | 4B FF FE 25 */	bl scale_up_darw__Q33ipl5scene12focus_objectFv
.L_8139A9F8:
/* 8139A9F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139A9FC | 3C 80 40 00 */	lis r4, 0x4000
/* 8139AA00 | 7F E3 FB 78 */	mr r3, r31
/* 8139AA04 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8139AA08 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8139AA0C | 7D 89 03 A6 */	mtctr r12
/* 8139AA10 | 4E 80 04 21 */	bctrl
/* 8139AA14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AA18 | 40 82 00 70 */	bne .L_8139AA88
/* 8139AA1C | 7F C3 F3 78 */	mr r3, r30
/* 8139AA20 | 4B FF FE BD */	bl scale_down_darw__Q33ipl5scene12focus_objectFv
/* 8139AA24 | 48 00 00 64 */	b .L_8139AA88
.L_8139AA28:
/* 8139AA28 | 38 7E 00 A8 */	addi r3, r30, 0xa8
/* 8139AA2C | 4B FC 90 CD */	bl isUp__Q33ipl7utility9BScrollerCFv
/* 8139AA30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AA34 | 41 82 00 0C */	beq .L_8139AA40
/* 8139AA38 | 7F C3 F3 78 */	mr r3, r30
/* 8139AA3C | 4B FF FD 7D */	bl scale_up_uarw__Q33ipl5scene12focus_objectFv
.L_8139AA40:
/* 8139AA40 | 38 7E 00 A8 */	addi r3, r30, 0xa8
/* 8139AA44 | 4B FC 90 B5 */	bl isUp__Q33ipl7utility9BScrollerCFv
/* 8139AA48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AA4C | 40 82 00 0C */	bne .L_8139AA58
/* 8139AA50 | 7F C3 F3 78 */	mr r3, r30
/* 8139AA54 | 4B FF FE 25 */	bl scale_down_uarw__Q33ipl5scene12focus_objectFv
.L_8139AA58:
/* 8139AA58 | 38 7E 00 A8 */	addi r3, r30, 0xa8
/* 8139AA5C | 4B FC 90 B5 */	bl isDown__Q33ipl7utility9BScrollerCFv_81363B10
/* 8139AA60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AA64 | 41 82 00 0C */	beq .L_8139AA70
/* 8139AA68 | 7F C3 F3 78 */	mr r3, r30
/* 8139AA6C | 4B FF FD AD */	bl scale_up_darw__Q33ipl5scene12focus_objectFv
.L_8139AA70:
/* 8139AA70 | 38 7E 00 A8 */	addi r3, r30, 0xa8
/* 8139AA74 | 4B FC 90 9D */	bl isDown__Q33ipl7utility9BScrollerCFv_81363B10
/* 8139AA78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AA7C | 40 82 00 0C */	bne .L_8139AA88
/* 8139AA80 | 7F C3 F3 78 */	mr r3, r30
/* 8139AA84 | 4B FF FE 59 */	bl scale_down_darw__Q33ipl5scene12focus_objectFv
.L_8139AA88:
/* 8139AA88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139AA8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139AA90 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139AA94 | 7C 08 03 A6 */	mtlr r0
/* 8139AA98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139AA9C | 4E 80 00 20 */	blr
.endfn scale_up_or_down_arw__Q33ipl5scene12focus_objectFv

# .text:0x3D78 | 0x8139AAA0 | size: 0x104
# ipl::scene::focus_object::show_cmn_btn()
.fn show_cmn_btn__Q33ipl5scene12focus_objectFv, global
/* 8139AAA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139AAA4 | 7C 08 02 A6 */	mflr r0
/* 8139AAA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139AAAC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139AAB0 | 48 25 EA 19 */	bl _savegpr_29
/* 8139AAB4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139AAB8 | 7C 7D 1B 78 */	mr r29, r3
/* 8139AABC | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139AAC0 | 38 80 00 05 */	li r4, 0x5
/* 8139AAC4 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8139AAC8 | 48 07 06 71 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139AACC | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8139AAD0 | 7C 7F 1B 78 */	mr r31, r3
/* 8139AAD4 | 80 04 00 DC */	lwz r0, 0xdc(r4)
/* 8139AAD8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139AADC | 40 82 00 0C */	bne .L_8139AAE8
/* 8139AAE0 | 38 80 00 0B */	li r4, 0xb
/* 8139AAE4 | 48 00 00 A0 */	b .L_8139AB84
.L_8139AAE8:
/* 8139AAE8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8139AAEC | 3B C0 00 00 */	li r30, 0x0
/* 8139AAF0 | 40 82 00 18 */	bne .L_8139AB08
/* 8139AAF4 | 38 80 00 01 */	li r4, 0x1
/* 8139AAF8 | 38 A0 00 15 */	li r5, 0x15
/* 8139AAFC | 48 00 29 61 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8139AB00 | 3B C0 00 01 */	li r30, 0x1
/* 8139AB04 | 48 00 00 48 */	b .L_8139AB4C
.L_8139AB08:
/* 8139AB08 | 88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 8139AB0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139AB10 | 41 82 00 18 */	beq .L_8139AB28
/* 8139AB14 | 38 80 00 01 */	li r4, 0x1
/* 8139AB18 | 38 A0 00 02 */	li r5, 0x2
/* 8139AB1C | 48 00 29 41 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8139AB20 | 3B C0 00 01 */	li r30, 0x1
/* 8139AB24 | 48 00 00 28 */	b .L_8139AB4C
.L_8139AB28:
/* 8139AB28 | 7C 83 23 78 */	mr r3, r4
/* 8139AB2C | 4B FF B3 69 */	bl permit_reply__Q33ipl5scene11BoardObjectCFv
/* 8139AB30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AB34 | 41 82 00 18 */	beq .L_8139AB4C
/* 8139AB38 | 7F E3 FB 78 */	mr r3, r31
/* 8139AB3C | 38 80 00 01 */	li r4, 0x1
/* 8139AB40 | 38 A0 00 43 */	li r5, 0x43
/* 8139AB44 | 48 00 29 19 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 8139AB48 | 3B C0 00 01 */	li r30, 0x1
.L_8139AB4C:
/* 8139AB4C | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8139AB50 | 80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 8139AB54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139AB58 | 41 82 00 1C */	beq .L_8139AB74
/* 8139AB5C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139AB60 | 41 82 00 0C */	beq .L_8139AB6C
/* 8139AB64 | 38 80 00 24 */	li r4, 0x24
/* 8139AB68 | 48 00 00 1C */	b .L_8139AB84
.L_8139AB6C:
/* 8139AB6C | 38 80 00 22 */	li r4, 0x22
/* 8139AB70 | 48 00 00 14 */	b .L_8139AB84
.L_8139AB74:
/* 8139AB74 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139AB78 | 38 80 00 0D */	li r4, 0xd
/* 8139AB7C | 41 82 00 08 */	beq .L_8139AB84
/* 8139AB80 | 38 80 00 11 */	li r4, 0x11
.L_8139AB84:
/* 8139AB84 | 7F E3 FB 78 */	mr r3, r31
/* 8139AB88 | 48 00 28 A1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8139AB8C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139AB90 | 48 25 E9 85 */	bl _restgpr_29
/* 8139AB94 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139AB98 | 7C 08 03 A6 */	mtlr r0
/* 8139AB9C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139ABA0 | 4E 80 00 20 */	blr
.endfn show_cmn_btn__Q33ipl5scene12focus_objectFv

# .text:0x3E7C | 0x8139ABA4 | size: 0xCC
# ipl::scene::focus_object::hide_cmn_btn()
.fn hide_cmn_btn__Q33ipl5scene12focus_objectFv, global
/* 8139ABA4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139ABA8 | 7C 08 02 A6 */	mflr r0
/* 8139ABAC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139ABB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139ABB4 | 48 25 E9 15 */	bl _savegpr_29
/* 8139ABB8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139ABBC | 7C 7D 1B 78 */	mr r29, r3
/* 8139ABC0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139ABC4 | 38 80 00 05 */	li r4, 0x5
/* 8139ABC8 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8139ABCC | 48 07 05 6D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139ABD0 | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8139ABD4 | 7C 7F 1B 78 */	mr r31, r3
/* 8139ABD8 | 80 04 00 DC */	lwz r0, 0xdc(r4)
/* 8139ABDC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139ABE0 | 40 82 00 0C */	bne .L_8139ABEC
/* 8139ABE4 | 38 80 00 0C */	li r4, 0xc
/* 8139ABE8 | 48 00 00 68 */	b .L_8139AC50
.L_8139ABEC:
/* 8139ABEC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8139ABF0 | 3B C0 00 00 */	li r30, 0x0
/* 8139ABF4 | 41 82 00 20 */	beq .L_8139AC14
/* 8139ABF8 | 88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 8139ABFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139AC00 | 40 82 00 14 */	bne .L_8139AC14
/* 8139AC04 | 7C 83 23 78 */	mr r3, r4
/* 8139AC08 | 4B FF B2 8D */	bl permit_reply__Q33ipl5scene11BoardObjectCFv
/* 8139AC0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AC10 | 41 82 00 08 */	beq .L_8139AC18
.L_8139AC14:
/* 8139AC14 | 3B C0 00 01 */	li r30, 0x1
.L_8139AC18:
/* 8139AC18 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8139AC1C | 80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 8139AC20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139AC24 | 41 82 00 1C */	beq .L_8139AC40
/* 8139AC28 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139AC2C | 41 82 00 0C */	beq .L_8139AC38
/* 8139AC30 | 38 80 00 25 */	li r4, 0x25
/* 8139AC34 | 48 00 00 1C */	b .L_8139AC50
.L_8139AC38:
/* 8139AC38 | 38 80 00 23 */	li r4, 0x23
/* 8139AC3C | 48 00 00 14 */	b .L_8139AC50
.L_8139AC40:
/* 8139AC40 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139AC44 | 38 80 00 0E */	li r4, 0xe
/* 8139AC48 | 41 82 00 08 */	beq .L_8139AC50
/* 8139AC4C | 38 80 00 12 */	li r4, 0x12
.L_8139AC50:
/* 8139AC50 | 7F E3 FB 78 */	mr r3, r31
/* 8139AC54 | 48 00 27 D5 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8139AC58 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139AC5C | 48 25 E8 B9 */	bl _restgpr_29
/* 8139AC60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139AC64 | 7C 08 03 A6 */	mtlr r0
/* 8139AC68 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139AC6C | 4E 80 00 20 */	blr
.endfn hide_cmn_btn__Q33ipl5scene12focus_objectFv

# .text:0x3F48 | 0x8139AC70 | size: 0x184
# ipl::scene::focus_object::start_point_event(int, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene12focus_objectFiPQ33ipl10controller9Interface, global
/* 8139AC70 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8139AC74 | 7C 08 02 A6 */	mflr r0
/* 8139AC78 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8139AC7C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139AC80 | 48 25 E8 49 */	bl _savegpr_29
/* 8139AC84 | 54 80 10 3A */	slwi r0, r4, 2
/* 8139AC88 | 7C BF 2B 78 */	mr r31, r5
/* 8139AC8C | 7F C3 02 14 */	add r30, r3, r0
/* 8139AC90 | 7C 7D 1B 78 */	mr r29, r3
/* 8139AC94 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8139AC98 | 38 A0 00 00 */	li r5, 0x0
/* 8139AC9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139ACA0 | 40 82 00 FC */	bne .L_8139AD9C
/* 8139ACA4 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8139ACA8 | 41 82 00 74 */	beq .L_8139AD1C
/* 8139ACAC | 40 80 00 14 */	bge .L_8139ACC0
/* 8139ACB0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139ACB4 | 41 82 00 18 */	beq .L_8139ACCC
/* 8139ACB8 | 40 80 00 3C */	bge .L_8139ACF4
/* 8139ACBC | 48 00 00 E0 */	b .L_8139AD9C
.L_8139ACC0:
/* 8139ACC0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8139ACC4 | 40 80 00 D8 */	bge .L_8139AD9C
/* 8139ACC8 | 48 00 00 8C */	b .L_8139AD54
.L_8139ACCC:
/* 8139ACCC | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139ACD0 | 38 80 00 03 */	li r4, 0x3
/* 8139ACD4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139ACD8 | 48 17 76 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139ACDC | 7C 7D 1B 78 */	mr r29, r3
/* 8139ACE0 | 4B FC 7B 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139ACE4 | 38 00 00 01 */	li r0, 0x1
/* 8139ACE8 | 38 A0 00 01 */	li r5, 0x1
/* 8139ACEC | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 8139ACF0 | 48 00 00 AC */	b .L_8139AD9C
.L_8139ACF4:
/* 8139ACF4 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139ACF8 | 38 80 00 0B */	li r4, 0xb
/* 8139ACFC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139AD00 | 48 17 76 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139AD04 | 7C 7D 1B 78 */	mr r29, r3
/* 8139AD08 | 4B FC 7B 69 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139AD0C | 38 00 00 01 */	li r0, 0x1
/* 8139AD10 | 38 A0 00 01 */	li r5, 0x1
/* 8139AD14 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 8139AD18 | 48 00 00 84 */	b .L_8139AD9C
.L_8139AD1C:
/* 8139AD1C | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 8139AD20 | 88 04 00 CE */	lbz r0, 0xce(r4)
/* 8139AD24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139AD28 | 41 82 00 74 */	beq .L_8139AD9C
/* 8139AD2C | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139AD30 | 38 80 00 16 */	li r4, 0x16
/* 8139AD34 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139AD38 | 48 17 75 E1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139AD3C | 7C 7D 1B 78 */	mr r29, r3
/* 8139AD40 | 4B FC 7B 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139AD44 | 38 00 00 01 */	li r0, 0x1
/* 8139AD48 | 38 A0 00 01 */	li r5, 0x1
/* 8139AD4C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 8139AD50 | 48 00 00 4C */	b .L_8139AD9C
.L_8139AD54:
/* 8139AD54 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139AD58 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8139AD5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AD60 | 41 82 00 3C */	beq .L_8139AD9C
/* 8139AD64 | 88 03 00 50 */	lbz r0, 0x50(r3)
/* 8139AD68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139AD6C | 41 82 00 30 */	beq .L_8139AD9C
/* 8139AD70 | 7F A4 EB 78 */	mr r4, r29
/* 8139AD74 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139AD78 | 4B FF F5 71 */	bl calc_balloon_pos__Q33ipl5scene12focus_objectCFv
/* 8139AD7C | 80 7D 00 20 */	lwz r3, 0x20(r29)
/* 8139AD80 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139AD84 | 38 A0 00 00 */	li r5, 0x0
/* 8139AD88 | 38 C0 00 00 */	li r6, 0x0
/* 8139AD8C | 48 03 6A 41 */	bl setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi
/* 8139AD90 | 80 7D 00 20 */	lwz r3, 0x20(r29)
/* 8139AD94 | 48 03 6A 11 */	bl fadeinNoSetTextbox__Q33ipl5scene11TextBalloonFv
/* 8139AD98 | 38 A0 00 01 */	li r5, 0x1
.L_8139AD9C:
/* 8139AD9C | 80 7E 01 E0 */	lwz r3, 0x1e0(r30)
/* 8139ADA0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8139ADA4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8139ADA8 | 90 1E 01 E0 */	stw r0, 0x1e0(r30)
/* 8139ADAC | 41 82 00 30 */	beq .L_8139ADDC
/* 8139ADB0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139ADB4 | 3C 80 81 65 */	lis r4, lbl_8164BB53@ha
/* 8139ADB8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139ADBC | 38 84 BB 53 */	addi r4, r4, lbl_8164BB53@l
/* 8139ADC0 | 4B FD 06 AD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139ADC4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139ADC8 | 7F E3 FB 78 */	mr r3, r31
/* 8139ADCC | 38 80 00 00 */	li r4, 0x0
/* 8139ADD0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8139ADD4 | 7D 89 03 A6 */	mtctr r12
/* 8139ADD8 | 4E 80 04 21 */	bctrl
.L_8139ADDC:
/* 8139ADDC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139ADE0 | 48 25 E7 35 */	bl _restgpr_29
/* 8139ADE4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139ADE8 | 7C 08 03 A6 */	mtlr r0
/* 8139ADEC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139ADF0 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene12focus_objectFiPQ33ipl10controller9Interface

# .text:0x40CC | 0x8139ADF4 | size: 0x114
# ipl::scene::focus_object::start_left_event(int)
.fn start_left_event__Q33ipl5scene12focus_objectFi, global
/* 8139ADF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139ADF8 | 7C 08 02 A6 */	mflr r0
/* 8139ADFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139AE00 | 54 80 10 3A */	slwi r0, r4, 2
/* 8139AE04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139AE08 | 7F E3 02 14 */	add r31, r3, r0
/* 8139AE0C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139AE10 | 80 1F 01 E0 */	lwz r0, 0x1e0(r31)
/* 8139AE14 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139AE18 | 40 82 00 CC */	bne .L_8139AEE4
/* 8139AE1C | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8139AE20 | 41 82 00 6C */	beq .L_8139AE8C
/* 8139AE24 | 40 80 00 14 */	bge .L_8139AE38
/* 8139AE28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139AE2C | 41 82 00 18 */	beq .L_8139AE44
/* 8139AE30 | 40 80 00 38 */	bge .L_8139AE68
/* 8139AE34 | 48 00 00 B0 */	b .L_8139AEE4
.L_8139AE38:
/* 8139AE38 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8139AE3C | 40 80 00 A8 */	bge .L_8139AEE4
/* 8139AE40 | 48 00 00 80 */	b .L_8139AEC0
.L_8139AE44:
/* 8139AE44 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139AE48 | 38 80 00 04 */	li r4, 0x4
/* 8139AE4C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139AE50 | 48 17 74 C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139AE54 | 7C 7E 1B 78 */	mr r30, r3
/* 8139AE58 | 4B FC 7A 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139AE5C | 38 00 00 01 */	li r0, 0x1
/* 8139AE60 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8139AE64 | 48 00 00 80 */	b .L_8139AEE4
.L_8139AE68:
/* 8139AE68 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139AE6C | 38 80 00 0C */	li r4, 0xc
/* 8139AE70 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139AE74 | 48 17 74 A5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139AE78 | 7C 7E 1B 78 */	mr r30, r3
/* 8139AE7C | 4B FC 79 F5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139AE80 | 38 00 00 01 */	li r0, 0x1
/* 8139AE84 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8139AE88 | 48 00 00 5C */	b .L_8139AEE4
.L_8139AE8C:
/* 8139AE8C | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 8139AE90 | 88 04 00 CE */	lbz r0, 0xce(r4)
/* 8139AE94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139AE98 | 41 82 00 4C */	beq .L_8139AEE4
/* 8139AE9C | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139AEA0 | 38 80 00 17 */	li r4, 0x17
/* 8139AEA4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139AEA8 | 48 17 74 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139AEAC | 7C 7E 1B 78 */	mr r30, r3
/* 8139AEB0 | 4B FC 79 C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139AEB4 | 38 00 00 01 */	li r0, 0x1
/* 8139AEB8 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8139AEBC | 48 00 00 28 */	b .L_8139AEE4
.L_8139AEC0:
/* 8139AEC0 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 8139AEC4 | 80 84 00 20 */	lwz r4, 0x20(r4)
/* 8139AEC8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139AECC | 41 82 00 18 */	beq .L_8139AEE4
/* 8139AED0 | 88 04 00 50 */	lbz r0, 0x50(r4)
/* 8139AED4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139AED8 | 41 82 00 0C */	beq .L_8139AEE4
/* 8139AEDC | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8139AEE0 | 48 03 6A 75 */	bl fadeout__Q33ipl5scene11TextBalloonFv
.L_8139AEE4:
/* 8139AEE4 | 80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 8139AEE8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139AEEC | 90 1F 01 E0 */	stw r0, 0x1e0(r31)
/* 8139AEF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139AEF4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139AEF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139AEFC | 7C 08 03 A6 */	mtlr r0
/* 8139AF00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139AF04 | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene12focus_objectFi

# .text:0x41E0 | 0x8139AF08 | size: 0x160
# ipl::scene::focus_object::start_trig_event(int)
.fn start_trig_event__Q33ipl5scene12focus_objectFi, global
/* 8139AF08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139AF0C | 7C 08 02 A6 */	mflr r0
/* 8139AF10 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8139AF14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139AF18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139AF1C | 7C 7F 1B 78 */	mr r31, r3
/* 8139AF20 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139AF24 | 41 82 00 5C */	beq .L_8139AF80
/* 8139AF28 | 40 80 00 10 */	bge .L_8139AF38
/* 8139AF2C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139AF30 | 40 80 00 14 */	bge .L_8139AF44
/* 8139AF34 | 48 00 01 1C */	b .L_8139B050
.L_8139AF38:
/* 8139AF38 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 8139AF3C | 40 80 01 14 */	bge .L_8139B050
/* 8139AF40 | 48 00 00 7C */	b .L_8139AFBC
.L_8139AF44:
/* 8139AF44 | 38 63 00 58 */	addi r3, r3, 0x58
/* 8139AF48 | 4B FF C7 8D */	bl is_busy__Q33ipl5scene8scrollerCFv
/* 8139AF4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AF50 | 40 82 01 00 */	bne .L_8139B050
/* 8139AF54 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8139AF58 | 38 80 00 05 */	li r4, 0x5
/* 8139AF5C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139AF60 | 48 17 73 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139AF64 | 7C 7E 1B 78 */	mr r30, r3
/* 8139AF68 | 4B FC 79 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139AF6C | 38 60 00 01 */	li r3, 0x1
/* 8139AF70 | 38 00 00 03 */	li r0, 0x3
/* 8139AF74 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 8139AF78 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 8139AF7C | 48 00 00 D4 */	b .L_8139B050
.L_8139AF80:
/* 8139AF80 | 38 63 00 58 */	addi r3, r3, 0x58
/* 8139AF84 | 4B FF C7 51 */	bl is_busy__Q33ipl5scene8scrollerCFv
/* 8139AF88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AF8C | 40 82 00 C4 */	bne .L_8139B050
/* 8139AF90 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8139AF94 | 38 80 00 0D */	li r4, 0xd
/* 8139AF98 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139AF9C | 48 17 73 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139AFA0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139AFA4 | 4B FC 78 CD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139AFA8 | 38 60 00 01 */	li r3, 0x1
/* 8139AFAC | 38 00 00 04 */	li r0, 0x4
/* 8139AFB0 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 8139AFB4 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 8139AFB8 | 48 00 00 98 */	b .L_8139B050
.L_8139AFBC:
/* 8139AFBC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139AFC0 | 88 03 00 CE */	lbz r0, 0xce(r3)
/* 8139AFC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139AFC8 | 41 82 00 88 */	beq .L_8139B050
/* 8139AFCC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 8139AFD0 | 38 80 00 05 */	li r4, 0x5
/* 8139AFD4 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 8139AFD8 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8139AFDC | 48 07 01 5D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139AFE0 | 48 00 19 35 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 8139AFE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139AFE8 | 41 82 00 68 */	beq .L_8139B050
/* 8139AFEC | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8139AFF0 | 38 80 00 05 */	li r4, 0x5
/* 8139AFF4 | 48 07 01 45 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139AFF8 | 80 03 01 78 */	lwz r0, 0x178(r3)
/* 8139AFFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139B000 | 40 82 00 50 */	bne .L_8139B050
/* 8139B004 | 7F E3 FB 78 */	mr r3, r31
/* 8139B008 | 4B FF FB 9D */	bl hide_cmn_btn__Q33ipl5scene12focus_objectFv
/* 8139B00C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8139B010 | 38 80 00 18 */	li r4, 0x18
/* 8139B014 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139B018 | 48 17 73 01 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139B01C | 7C 7E 1B 78 */	mr r30, r3
/* 8139B020 | 4B FC 78 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139B024 | 38 00 00 01 */	li r0, 0x1
/* 8139B028 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139B02C | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8139B030 | 38 00 00 03 */	li r0, 0x3
/* 8139B034 | 3C 80 81 65 */	lis r4, lbl_8164BDE4@ha
/* 8139B038 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139B03C | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 8139B040 | 38 84 BD E4 */	addi r4, r4, lbl_8164BDE4@l
/* 8139B044 | 4B FD 04 29 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139B048 | 38 00 00 07 */	li r0, 0x7
/* 8139B04C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8139B050:
/* 8139B050 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139B054 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139B058 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139B05C | 7C 08 03 A6 */	mtlr r0
/* 8139B060 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139B064 | 4E 80 00 20 */	blr
.endfn start_trig_event__Q33ipl5scene12focus_objectFi

# .text:0x4340 | 0x8139B068 | size: 0x74
# ipl::scene::focus_object::get_button_no(const char*) const
.fn get_button_no__Q33ipl5scene12focus_objectCFPCc, global
/* 8139B068 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139B06C | 7C 08 02 A6 */	mflr r0
/* 8139B070 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139B074 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139B078 | 48 25 E4 49 */	bl _savegpr_27
/* 8139B07C | 3F C0 81 65 */	lis r30, lbl_8164B984@ha
/* 8139B080 | 7C 9B 23 78 */	mr r27, r4
/* 8139B084 | 3B DE B9 84 */	addi r30, r30, lbl_8164B984@l
/* 8139B088 | 3B A0 FF FF */	li r29, -0x1
/* 8139B08C | 3B 80 00 00 */	li r28, 0x0
/* 8139B090 | 3B E0 00 00 */	li r31, 0x0
.L_8139B094:
/* 8139B094 | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 8139B098 | 7F 64 DB 78 */	mr r4, r27
/* 8139B09C | 48 26 73 E5 */	bl strcmp
/* 8139B0A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B0A4 | 40 82 00 0C */	bne .L_8139B0B0
/* 8139B0A8 | 7F 9D E3 78 */	mr r29, r28
/* 8139B0AC | 48 00 00 14 */	b .L_8139B0C0
.L_8139B0B0:
/* 8139B0B0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8139B0B4 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8139B0B8 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 8139B0BC | 41 80 FF D8 */	blt .L_8139B094
.L_8139B0C0:
/* 8139B0C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139B0C4 | 7F A3 EB 78 */	mr r3, r29
/* 8139B0C8 | 48 25 E4 45 */	bl _restgpr_27
/* 8139B0CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139B0D0 | 7C 08 03 A6 */	mtlr r0
/* 8139B0D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139B0D8 | 4E 80 00 20 */	blr
.endfn get_button_no__Q33ipl5scene12focus_objectCFPCc

# .text:0x43B4 | 0x8139B0DC | size: 0xA0
# ipl::scene::focus_object::reset_gui(int, int)
.fn reset_gui__Q33ipl5scene12focus_objectFii, global
/* 8139B0DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139B0E0 | 7C 08 02 A6 */	mflr r0
/* 8139B0E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139B0E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139B0EC | 48 25 E3 DD */	bl _savegpr_29
/* 8139B0F0 | 54 9E 10 3A */	slwi r30, r4, 2
/* 8139B0F4 | 7C 7D 1B 78 */	mr r29, r3
/* 8139B0F8 | 7C C3 F2 14 */	add r6, r3, r30
/* 8139B0FC | 80 06 01 E0 */	lwz r0, 0x1e0(r6)
/* 8139B100 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139B104 | 41 82 00 2C */	beq .L_8139B130
/* 8139B108 | 38 00 00 00 */	li r0, 0x0
/* 8139B10C | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 8139B110 | 90 06 01 E0 */	stw r0, 0x1e0(r6)
/* 8139B114 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8139B118 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139B11C | 48 17 71 FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139B120 | 7C 7F 1B 78 */	mr r31, r3
/* 8139B124 | 4B FC 77 4D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139B128 | 38 00 00 01 */	li r0, 0x1
/* 8139B12C | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8139B130:
/* 8139B130 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8139B134 | 3C 80 81 65 */	lis r4, lbl_8164B984@ha
/* 8139B138 | 38 84 B9 84 */	addi r4, r4, lbl_8164B984@l
/* 8139B13C | 38 A0 00 01 */	li r5, 0x1
/* 8139B140 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139B144 | 7C 84 F0 2E */	lwzx r4, r4, r30
/* 8139B148 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139B14C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139B150 | 7D 89 03 A6 */	mtctr r12
/* 8139B154 | 4E 80 04 21 */	bctrl
/* 8139B158 | 7C 64 1B 78 */	mr r4, r3
/* 8139B15C | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8139B160 | 4B FD 00 B9 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 8139B164 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139B168 | 48 25 E3 AD */	bl _restgpr_29
/* 8139B16C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139B170 | 7C 08 03 A6 */	mtlr r0
/* 8139B174 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139B178 | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene12focus_objectFii

# .text:0x4454 | 0x8139B17C | size: 0x268
# ipl::scene::focus_object::check_network()
.fn check_network__Q33ipl5scene12focus_objectFv, global
/* 8139B17C | 94 21 FD F0 */	stwu r1, -0x210(r1)
/* 8139B180 | 7C 08 02 A6 */	mflr r0
/* 8139B184 | 90 01 02 14 */	stw r0, 0x214(r1)
/* 8139B188 | 93 E1 02 0C */	stw r31, 0x20c(r1)
/* 8139B18C | 7C 7F 1B 78 */	mr r31, r3
/* 8139B190 | 93 C1 02 08 */	stw r30, 0x208(r1)
/* 8139B194 | 3B C0 00 02 */	li r30, 0x2
/* 8139B198 | 48 06 07 55 */	bl getConnectEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 8139B19C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B1A0 | 40 82 00 3C */	bne .L_8139B1DC
/* 8139B1A4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B1A8 | 38 80 01 44 */	li r4, 0x144
/* 8139B1AC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B1B0 | 38 A0 01 46 */	li r5, 0x146
/* 8139B1B4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8139B1B8 | 38 C0 00 25 */	li r6, 0x25
/* 8139B1BC | 38 E0 00 00 */	li r7, 0x0
/* 8139B1C0 | 4B FA B9 15 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 8139B1C4 | 38 60 00 03 */	li r3, 0x3
/* 8139B1C8 | 38 00 00 14 */	li r0, 0x14
/* 8139B1CC | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8139B1D0 | 3B C0 00 00 */	li r30, 0x0
/* 8139B1D4 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139B1D8 | 48 00 01 F0 */	b .L_8139B3C8
.L_8139B1DC:
/* 8139B1DC | 48 1C F6 45 */	bl SCGetWCFlags
/* 8139B1E0 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 8139B1E4 | 40 82 00 34 */	bne .L_8139B218
/* 8139B1E8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B1EC | 38 80 01 7E */	li r4, 0x17e
/* 8139B1F0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B1F4 | 38 A0 01 46 */	li r5, 0x146
/* 8139B1F8 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8139B1FC | 38 C0 00 25 */	li r6, 0x25
/* 8139B200 | 38 E0 00 00 */	li r7, 0x0
/* 8139B204 | 4B FA B8 D1 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 8139B208 | 38 00 00 15 */	li r0, 0x15
/* 8139B20C | 3B C0 00 00 */	li r30, 0x0
/* 8139B210 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8139B214 | 48 00 01 B4 */	b .L_8139B3C8
.L_8139B218:
/* 8139B218 | 7F E3 FB 78 */	mr r3, r31
/* 8139B21C | 48 00 03 B9 */	bl is_parental_restriction__Q33ipl5scene12focus_objectCFv
/* 8139B220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B224 | 41 82 00 34 */	beq .L_8139B258
/* 8139B228 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B22C | 38 80 01 4C */	li r4, 0x14c
/* 8139B230 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B234 | 38 A0 00 2E */	li r5, 0x2e
/* 8139B238 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8139B23C | 4B FA B4 BD */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8139B240 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8139B244 | 38 60 00 04 */	li r3, 0x4
/* 8139B248 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8139B24C | 3B C0 00 00 */	li r30, 0x0
/* 8139B250 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139B254 | 48 00 01 74 */	b .L_8139B3C8
.L_8139B258:
/* 8139B258 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B25C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B260 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8139B264 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139B268 | 41 82 00 0C */	beq .L_8139B274
/* 8139B26C | 38 60 00 00 */	li r3, 0x0
/* 8139B270 | 48 00 00 08 */	b .L_8139B278
.L_8139B274:
/* 8139B274 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_8139B278:
/* 8139B278 | 4B FA 67 C9 */	bl open__Q33ipl5nwc247ManagerFv
/* 8139B27C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B280 | 41 82 01 48 */	beq .L_8139B3C8
/* 8139B284 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B288 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B28C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8139B290 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139B294 | 41 82 00 0C */	beq .L_8139B2A0
/* 8139B298 | 38 60 00 00 */	li r3, 0x0
/* 8139B29C | 48 00 00 08 */	b .L_8139B2A4
.L_8139B2A0:
/* 8139B2A0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_8139B2A4:
/* 8139B2A4 | 38 80 00 01 */	li r4, 0x1
/* 8139B2A8 | 4B FA 73 79 */	bl check__Q33ipl5nwc247ManagerFUl
/* 8139B2AC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8139B2B0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139B2B4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8139B2B8 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8139B2BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139B2C0 | 41 82 00 0C */	beq .L_8139B2CC
/* 8139B2C4 | 38 60 00 00 */	li r3, 0x0
/* 8139B2C8 | 48 00 00 08 */	b .L_8139B2D0
.L_8139B2CC:
/* 8139B2CC | 80 64 00 8C */	lwz r3, 0x8c(r4)
.L_8139B2D0:
/* 8139B2D0 | 4B FA 8D 5D */	bl getErrCode__Q33ipl5nwc247ManagerFv
/* 8139B2D4 | 38 00 00 80 */	li r0, 0x80
/* 8139B2D8 | 7C 67 1B 78 */	mr r7, r3
/* 8139B2DC | 38 81 00 06 */	addi r4, r1, 0x6
/* 8139B2E0 | 38 60 00 00 */	li r3, 0x0
/* 8139B2E4 | 7C 09 03 A6 */	mtctr r0
.L_8139B2E8:
/* 8139B2E8 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 8139B2EC | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 8139B2F0 | 42 00 FF F8 */	bdnz .L_8139B2E8
/* 8139B2F4 | 2C 1E FF E1 */	cmpwi r30, -0x1f
/* 8139B2F8 | 41 82 00 20 */	beq .L_8139B318
/* 8139B2FC | 40 80 00 10 */	bge .L_8139B30C
/* 8139B300 | 2C 1E FF E0 */	cmpwi r30, -0x20
/* 8139B304 | 40 80 00 58 */	bge .L_8139B35C
/* 8139B308 | 48 00 00 98 */	b .L_8139B3A0
.L_8139B30C:
/* 8139B30C | 2C 1E FF FA */	cmpwi r30, -0x6
/* 8139B310 | 41 82 00 4C */	beq .L_8139B35C
/* 8139B314 | 48 00 00 8C */	b .L_8139B3A0
.L_8139B318:
/* 8139B318 | 7F E3 FB 78 */	mr r3, r31
/* 8139B31C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139B320 | 38 A0 01 00 */	li r5, 0x100
/* 8139B324 | 38 C0 01 9A */	li r6, 0x19a
/* 8139B328 | 48 00 01 BD */	bl set_err_msg__Q33ipl5scene12focus_objectFPwUlUll
/* 8139B32C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B330 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139B334 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B338 | 38 A0 00 2E */	li r5, 0x2e
/* 8139B33C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8139B340 | 4B FA B5 65 */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 8139B344 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8139B348 | 38 60 00 04 */	li r3, 0x4
/* 8139B34C | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8139B350 | 3B C0 00 00 */	li r30, 0x0
/* 8139B354 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139B358 | 48 00 00 4C */	b .L_8139B3A4
.L_8139B35C:
/* 8139B35C | 7F E3 FB 78 */	mr r3, r31
/* 8139B360 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139B364 | 38 A0 01 00 */	li r5, 0x100
/* 8139B368 | 38 C0 01 C5 */	li r6, 0x1c5
/* 8139B36C | 48 00 01 79 */	bl set_err_msg__Q33ipl5scene12focus_objectFPwUlUll
/* 8139B370 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B374 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139B378 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B37C | 38 A0 00 2E */	li r5, 0x2e
/* 8139B380 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8139B384 | 4B FA B5 21 */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 8139B388 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8139B38C | 38 60 00 04 */	li r3, 0x4
/* 8139B390 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8139B394 | 3B C0 00 00 */	li r30, 0x0
/* 8139B398 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139B39C | 48 00 00 08 */	b .L_8139B3A4
.L_8139B3A0:
/* 8139B3A0 | 3B C0 00 01 */	li r30, 0x1
.L_8139B3A4:
/* 8139B3A4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B3A8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B3AC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8139B3B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139B3B4 | 41 82 00 0C */	beq .L_8139B3C0
/* 8139B3B8 | 38 60 00 00 */	li r3, 0x0
/* 8139B3BC | 48 00 00 08 */	b .L_8139B3C4
.L_8139B3C0:
/* 8139B3C0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_8139B3C4:
/* 8139B3C4 | 4B FA 66 F1 */	bl close__Q33ipl5nwc247ManagerFv
.L_8139B3C8:
/* 8139B3C8 | 7F C3 F3 78 */	mr r3, r30
/* 8139B3CC | 83 E1 02 0C */	lwz r31, 0x20c(r1)
/* 8139B3D0 | 83 C1 02 08 */	lwz r30, 0x208(r1)
/* 8139B3D4 | 80 01 02 14 */	lwz r0, 0x214(r1)
/* 8139B3D8 | 7C 08 03 A6 */	mtlr r0
/* 8139B3DC | 38 21 02 10 */	addi r1, r1, 0x210
/* 8139B3E0 | 4E 80 00 20 */	blr
.endfn check_network__Q33ipl5scene12focus_objectFv

# .text:0x46BC | 0x8139B3E4 | size: 0x100
# ipl::scene::focus_object::check_network_for_news()
.fn check_network_for_news__Q33ipl5scene12focus_objectFv, global
/* 8139B3E4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8139B3E8 | 7C 08 02 A6 */	mflr r0
/* 8139B3EC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8139B3F0 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8139B3F4 | 7C 7F 1B 78 */	mr r31, r3
/* 8139B3F8 | 48 06 04 F5 */	bl getConnectEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 8139B3FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B400 | 40 82 00 40 */	bne .L_8139B440
/* 8139B404 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B408 | 38 80 01 44 */	li r4, 0x144
/* 8139B40C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B410 | 38 A0 01 46 */	li r5, 0x146
/* 8139B414 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8139B418 | 38 C0 00 25 */	li r6, 0x25
/* 8139B41C | 38 E0 00 00 */	li r7, 0x0
/* 8139B420 | 4B FA B6 B5 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 8139B424 | 38 80 00 01 */	li r4, 0x1
/* 8139B428 | 38 60 00 03 */	li r3, 0x3
/* 8139B42C | 38 00 00 14 */	li r0, 0x14
/* 8139B430 | 90 9F 00 08 */	stw r4, 0x8(r31)
/* 8139B434 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8139B438 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139B43C | 48 00 00 94 */	b .L_8139B4D0
.L_8139B440:
/* 8139B440 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139B444 | 48 1C ED 35 */	bl SCGetParentalControl
/* 8139B448 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B44C | 38 60 00 00 */	li r3, 0x0
/* 8139B450 | 41 82 00 14 */	beq .L_8139B464
/* 8139B454 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8139B458 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 8139B45C | 41 82 00 08 */	beq .L_8139B464
/* 8139B460 | 38 60 00 01 */	li r3, 0x1
.L_8139B464:
/* 8139B464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B468 | 41 82 00 58 */	beq .L_8139B4C0
/* 8139B46C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B470 | 38 80 00 05 */	li r4, 0x5
/* 8139B474 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B478 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139B47C | 48 06 FC BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139B480 | 38 80 00 00 */	li r4, 0x0
/* 8139B484 | 38 A0 00 00 */	li r5, 0x0
/* 8139B488 | 48 00 14 B5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8139B48C | 7F E3 FB 78 */	mr r3, r31
/* 8139B490 | 4B FF F7 15 */	bl hide_cmn_btn__Q33ipl5scene12focus_objectFv
/* 8139B494 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8139B498 | 38 C0 00 00 */	li r6, 0x0
/* 8139B49C | 38 A0 00 0B */	li r5, 0xb
/* 8139B4A0 | 38 80 00 0A */	li r4, 0xa
/* 8139B4A4 | 38 00 00 16 */	li r0, 0x16
/* 8139B4A8 | 98 DF 02 00 */	stb r6, 0x200(r31)
/* 8139B4AC | 90 BF 00 0C */	stw r5, 0xc(r31)
/* 8139B4B0 | 90 9F 00 10 */	stw r4, 0x10(r31)
/* 8139B4B4 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 8139B4B8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8139B4BC | 48 00 00 14 */	b .L_8139B4D0
.L_8139B4C0:
/* 8139B4C0 | 38 60 00 0A */	li r3, 0xa
/* 8139B4C4 | 38 00 00 18 */	li r0, 0x18
/* 8139B4C8 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 8139B4CC | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8139B4D0:
/* 8139B4D0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8139B4D4 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8139B4D8 | 7C 08 03 A6 */	mtlr r0
/* 8139B4DC | 38 21 00 60 */	addi r1, r1, 0x60
/* 8139B4E0 | 4E 80 00 20 */	blr
.endfn check_network_for_news__Q33ipl5scene12focus_objectFv

# .text:0x47BC | 0x8139B4E4 | size: 0xF0
# ipl::scene::focus_object::set_err_msg(wchar_t*, unsigned long, unsigned long, long)
.fn set_err_msg__Q33ipl5scene12focus_objectFPwUlUll, global
/* 8139B4E4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8139B4E8 | 7C 08 02 A6 */	mflr r0
/* 8139B4EC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8139B4F0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8139B4F4 | 48 25 DF C9 */	bl _savegpr_26
/* 8139B4F8 | 7C 9A 23 78 */	mr r26, r4
/* 8139B4FC | 7C BB 2B 78 */	mr r27, r5
/* 8139B500 | 7C DC 33 78 */	mr r28, r6
/* 8139B504 | 7C FD 3B 78 */	mr r29, r7
/* 8139B508 | 7F 43 D3 78 */	mr r3, r26
/* 8139B50C | 54 A5 08 3C */	slwi r5, r5, 1
/* 8139B510 | 38 80 00 00 */	li r4, 0x0
/* 8139B514 | 4B F9 4E 21 */	bl memset
/* 8139B518 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8139B51C | 38 80 01 90 */	li r4, 0x190
/* 8139B520 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8139B524 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8139B528 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8139B52C | 4B FA 32 91 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8139B530 | 7C 7E 1B 78 */	mr r30, r3
/* 8139B534 | 7F 43 D3 78 */	mr r3, r26
/* 8139B538 | 48 26 D1 75 */	bl fn_816086AC
/* 8139B53C | 7C A3 D8 50 */	subf r5, r3, r27
/* 8139B540 | 7F 43 D3 78 */	mr r3, r26
/* 8139B544 | 7F C4 F3 78 */	mr r4, r30
/* 8139B548 | 48 26 D2 0D */	bl fn_81608754
/* 8139B54C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139B550 | 38 80 00 00 */	li r4, 0x0
/* 8139B554 | 38 A0 00 40 */	li r5, 0x40
/* 8139B558 | 4B F9 4D DD */	bl memset
/* 8139B55C | 3C A0 81 65 */	lis r5, lbl_8164BDF8@ha
/* 8139B560 | 7F A6 EB 78 */	mr r6, r29
/* 8139B564 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139B568 | 38 80 00 20 */	li r4, 0x20
/* 8139B56C | 38 A5 BD F8 */	addi r5, r5, lbl_8164BDF8@l
/* 8139B570 | 4C C6 31 82 */	crclr cr1eq
/* 8139B574 | 48 26 D0 5D */	bl swprintf
/* 8139B578 | 7F 43 D3 78 */	mr r3, r26
/* 8139B57C | 48 26 D1 31 */	bl fn_816086AC
/* 8139B580 | 7C A3 D8 50 */	subf r5, r3, r27
/* 8139B584 | 7F 43 D3 78 */	mr r3, r26
/* 8139B588 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139B58C | 48 26 D1 C9 */	bl fn_81608754
/* 8139B590 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8139B594 | 7F 84 E3 78 */	mr r4, r28
/* 8139B598 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8139B59C | 4B FA 32 21 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8139B5A0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139B5A4 | 7F 43 D3 78 */	mr r3, r26
/* 8139B5A8 | 48 26 D1 05 */	bl fn_816086AC
/* 8139B5AC | 7C A3 D8 50 */	subf r5, r3, r27
/* 8139B5B0 | 7F 43 D3 78 */	mr r3, r26
/* 8139B5B4 | 7F C4 F3 78 */	mr r4, r30
/* 8139B5B8 | 48 26 D1 9D */	bl fn_81608754
/* 8139B5BC | 39 61 00 60 */	addi r11, r1, 0x60
/* 8139B5C0 | 48 25 DF 49 */	bl _restgpr_26
/* 8139B5C4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8139B5C8 | 7C 08 03 A6 */	mtlr r0
/* 8139B5CC | 38 21 00 60 */	addi r1, r1, 0x60
/* 8139B5D0 | 4E 80 00 20 */	blr
.endfn set_err_msg__Q33ipl5scene12focus_objectFPwUlUll

# .text:0x48AC | 0x8139B5D4 | size: 0x68
# ipl::scene::focus_object::is_parental_restriction() const
.fn is_parental_restriction__Q33ipl5scene12focus_objectCFv, global
/* 8139B5D4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8139B5D8 | 7C 08 02 A6 */	mflr r0
/* 8139B5DC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8139B5E0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139B5E4 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8139B5E8 | 3B E0 00 00 */	li r31, 0x0
/* 8139B5EC | 48 1C EB 8D */	bl SCGetParentalControl
/* 8139B5F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B5F4 | 38 60 00 00 */	li r3, 0x0
/* 8139B5F8 | 41 82 00 14 */	beq .L_8139B60C
/* 8139B5FC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 8139B600 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 8139B604 | 41 82 00 08 */	beq .L_8139B60C
/* 8139B608 | 38 60 00 01 */	li r3, 0x1
.L_8139B60C:
/* 8139B60C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B610 | 41 82 00 14 */	beq .L_8139B624
/* 8139B614 | 48 1C F0 99 */	bl SCGetNetContentRestrictions
/* 8139B618 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 8139B61C | 41 82 00 08 */	beq .L_8139B624
/* 8139B620 | 3B E0 00 01 */	li r31, 0x1
.L_8139B624:
/* 8139B624 | 7F E3 FB 78 */	mr r3, r31
/* 8139B628 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8139B62C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8139B630 | 7C 08 03 A6 */	mtlr r0
/* 8139B634 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8139B638 | 4E 80 00 20 */	blr
.endfn is_parental_restriction__Q33ipl5scene12focus_objectCFv

# .text:0x4914 | 0x8139B63C | size: 0x5C
# ipl::scene::focus_object::check_delete_task_failure()
.fn check_delete_task_failure__Q33ipl5scene12focus_objectFv, global
/* 8139B63C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139B640 | 7C 08 02 A6 */	mflr r0
/* 8139B644 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139B648 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139B64C | 7C 7F 1B 78 */	mr r31, r3
/* 8139B650 | 80 83 01 F4 */	lwz r4, 0x1f4(r3)
/* 8139B654 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8139B658 | 2C 00 01 2C */	cmpwi r0, 0x12c
/* 8139B65C | 90 03 01 F4 */	stw r0, 0x1f4(r3)
/* 8139B660 | 40 81 00 24 */	ble .L_8139B684
/* 8139B664 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139B668 | 38 80 00 6D */	li r4, 0x6d
/* 8139B66C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139B670 | 38 A0 00 2E */	li r5, 0x2e
/* 8139B674 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8139B678 | 4B FA B0 81 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8139B67C | 38 00 00 13 */	li r0, 0x13
/* 8139B680 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8139B684:
/* 8139B684 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139B688 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139B68C | 7C 08 03 A6 */	mtlr r0
/* 8139B690 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139B694 | 4E 80 00 20 */	blr
.endfn check_delete_task_failure__Q33ipl5scene12focus_objectFv

# .text:0x4970 | 0x8139B698 | size: 0x110
# ipl::scene::event::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene5eventFUlUlPv, global
/* 8139B698 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139B69C | 7C 08 02 A6 */	mflr r0
/* 8139B6A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139B6A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139B6A8 | 48 25 DE 1D */	bl _savegpr_28
/* 8139B6AC | 7C 7C 1B 78 */	mr r28, r3
/* 8139B6B0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8139B6B4 | 7C BD 2B 78 */	mr r29, r5
/* 8139B6B8 | 7C DE 33 78 */	mr r30, r6
/* 8139B6BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139B6C0 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8139B6C4 | 7D 89 03 A6 */	mtctr r12
/* 8139B6C8 | 4E 80 04 21 */	bctrl
/* 8139B6CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139B6D0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8139B6D4 | 7D 89 03 A6 */	mtctr r12
/* 8139B6D8 | 4E 80 04 21 */	bctrl
/* 8139B6DC | 7C 64 1B 78 */	mr r4, r3
/* 8139B6E0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8139B6E4 | 38 84 00 B4 */	addi r4, r4, 0xb4
/* 8139B6E8 | 4B FF F9 81 */	bl get_button_no__Q33ipl5scene12focus_objectCFPCc
/* 8139B6EC | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8139B6F0 | 7C 7F 1B 78 */	mr r31, r3
/* 8139B6F4 | 41 82 00 20 */	beq .L_8139B714
/* 8139B6F8 | 40 80 00 10 */	bge .L_8139B708
/* 8139B6FC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8139B700 | 40 80 00 50 */	bge .L_8139B750
/* 8139B704 | 48 00 00 8C */	b .L_8139B790
.L_8139B708:
/* 8139B708 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 8139B70C | 40 80 00 84 */	bge .L_8139B790
/* 8139B710 | 48 00 00 28 */	b .L_8139B738
.L_8139B714:
/* 8139B714 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139B718 | 41 82 00 78 */	beq .L_8139B790
/* 8139B71C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8139B720 | 41 82 00 70 */	beq .L_8139B790
/* 8139B724 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8139B728 | 7F E4 FB 78 */	mr r4, r31
/* 8139B72C | 7F C5 F3 78 */	mr r5, r30
/* 8139B730 | 4B FF F5 41 */	bl start_point_event__Q33ipl5scene12focus_objectFiPQ33ipl10controller9Interface
/* 8139B734 | 48 00 00 5C */	b .L_8139B790
.L_8139B738:
/* 8139B738 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8139B73C | 41 82 00 54 */	beq .L_8139B790
/* 8139B740 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8139B744 | 7F E4 FB 78 */	mr r4, r31
/* 8139B748 | 4B FF F6 AD */	bl start_left_event__Q33ipl5scene12focus_objectFi
/* 8139B74C | 48 00 00 44 */	b .L_8139B790
.L_8139B750:
/* 8139B750 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139B754 | 41 82 00 3C */	beq .L_8139B790
/* 8139B758 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8139B75C | 41 82 00 34 */	beq .L_8139B790
/* 8139B760 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8139B764 | 3C 80 00 10 */	lis r4, 0x10
/* 8139B768 | 7F C3 F3 78 */	mr r3, r30
/* 8139B76C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8139B770 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8139B774 | 7D 89 03 A6 */	mtctr r12
/* 8139B778 | 4E 80 04 21 */	bctrl
/* 8139B77C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B780 | 41 82 00 10 */	beq .L_8139B790
/* 8139B784 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8139B788 | 7F E4 FB 78 */	mr r4, r31
/* 8139B78C | 4B FF F7 7D */	bl start_trig_event__Q33ipl5scene12focus_objectFi
.L_8139B790:
/* 8139B790 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139B794 | 48 25 DD 7D */	bl _restgpr_28
/* 8139B798 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139B79C | 7C 08 03 A6 */	mtlr r0
/* 8139B7A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139B7A4 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene5eventFUlUlPv

# .text:0x4A80 | 0x8139B7A8 | size: 0x34C
# ipl::scene::button_event::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene12button_eventFUlUlPCQ33ipl10controller9Interface, global
/* 8139B7A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139B7AC | 7C 08 02 A6 */	mflr r0
/* 8139B7B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139B7B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139B7B8 | 48 25 DD 09 */	bl _savegpr_27
/* 8139B7BC | 7C 7D 1B 78 */	mr r29, r3
/* 8139B7C0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8139B7C4 | 3F E0 81 65 */	lis r31, lbl_8164B6D0@ha
/* 8139B7C8 | 7C BB 2B 78 */	mr r27, r5
/* 8139B7CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139B7D0 | 7C DE 33 78 */	mr r30, r6
/* 8139B7D4 | 3B FF B6 D0 */	addi r31, r31, lbl_8164B6D0@l
/* 8139B7D8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8139B7DC | 7D 89 03 A6 */	mtctr r12
/* 8139B7E0 | 4E 80 04 21 */	bctrl
/* 8139B7E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139B7E8 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8139B7EC | 7D 89 03 A6 */	mtctr r12
/* 8139B7F0 | 4E 80 04 21 */	bctrl
/* 8139B7F4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139B7F8 | 3B 83 00 B4 */	addi r28, r3, 0xb4
/* 8139B7FC | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139B800 | 38 80 00 05 */	li r4, 0x5
/* 8139B804 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8139B808 | 48 06 F9 31 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139B80C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8139B810 | 7C 7B 1B 78 */	mr r27, r3
/* 8139B814 | 40 82 02 C8 */	bne .L_8139BADC
/* 8139B818 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8139B81C | 3C 80 00 10 */	lis r4, 0x10
/* 8139B820 | 7F C3 F3 78 */	mr r3, r30
/* 8139B824 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8139B828 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8139B82C | 7D 89 03 A6 */	mtctr r12
/* 8139B830 | 4E 80 04 21 */	bctrl
/* 8139B834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B838 | 41 82 02 A4 */	beq .L_8139BADC
/* 8139B83C | 3F C0 81 65 */	lis r30, mscButtonName__Q33ipl5scene6Button@ha
/* 8139B840 | 7F 83 E3 78 */	mr r3, r28
/* 8139B844 | 3B DE BF 5C */	addi r30, r30, mscButtonName__Q33ipl5scene6Button@l
/* 8139B848 | 80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8139B84C | 48 26 6C 35 */	bl strcmp
/* 8139B850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B854 | 40 82 00 C0 */	bne .L_8139B914
/* 8139B858 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B85C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8139B860 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8139B864 | 41 82 00 78 */	beq .L_8139B8DC
/* 8139B868 | 40 80 02 74 */	bge .L_8139BADC
/* 8139B86C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139B870 | 41 82 00 08 */	beq .L_8139B878
/* 8139B874 | 48 00 02 68 */	b .L_8139BADC
.L_8139B878:
/* 8139B878 | 7F 63 DB 78 */	mr r3, r27
/* 8139B87C | 38 80 00 1B */	li r4, 0x1b
/* 8139B880 | 48 00 12 D9 */	bl iplButton_8139CB58
/* 8139B884 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139B888 | 38 9F 07 34 */	addi r4, r31, 0x734
/* 8139B88C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139B890 | 4B FC FB DD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139B894 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B898 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8139B89C | 48 03 5D CD */	bl terminate__Q33ipl5scene11TextBalloonFv
/* 8139B8A0 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B8A4 | 38 80 00 03 */	li r4, 0x3
/* 8139B8A8 | 38 00 00 02 */	li r0, 0x2
/* 8139B8AC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8139B8B0 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B8B4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8139B8B8 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B8BC | 80 03 01 34 */	lwz r0, 0x134(r3)
/* 8139B8C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139B8C4 | 41 82 02 18 */	beq .L_8139BADC
/* 8139B8C8 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8139B8CC | 38 80 00 1E */	li r4, 0x1e
/* 8139B8D0 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8139B8D4 | 48 07 30 45 */	bl stop__17BannerSoundPlayerFUl
/* 8139B8D8 | 48 00 02 04 */	b .L_8139BADC
.L_8139B8DC:
/* 8139B8DC | 7F 63 DB 78 */	mr r3, r27
/* 8139B8E0 | 38 80 00 1B */	li r4, 0x1b
/* 8139B8E4 | 48 00 12 75 */	bl iplButton_8139CB58
/* 8139B8E8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139B8EC | 38 9F 07 4B */	addi r4, r31, 0x74b
/* 8139B8F0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139B8F4 | 4B FC FB 79 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139B8F8 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B8FC | 38 80 00 03 */	li r4, 0x3
/* 8139B900 | 38 00 00 09 */	li r0, 0x9
/* 8139B904 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8139B908 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B90C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8139B910 | 48 00 01 CC */	b .L_8139BADC
.L_8139B914:
/* 8139B914 | 80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8139B918 | 7F 83 E3 78 */	mr r3, r28
/* 8139B91C | 48 26 6B 65 */	bl strcmp
/* 8139B920 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B924 | 40 82 00 84 */	bne .L_8139B9A8
/* 8139B928 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B92C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8139B930 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139B934 | 40 82 01 A8 */	bne .L_8139BADC
/* 8139B938 | 7F 63 DB 78 */	mr r3, r27
/* 8139B93C | 38 80 00 1C */	li r4, 0x1c
/* 8139B940 | 48 00 12 19 */	bl iplButton_8139CB58
/* 8139B944 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B948 | 4B FF EF 31 */	bl scale_down_uarw__Q33ipl5scene12focus_objectFv
/* 8139B94C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B950 | 4B FF EF 8D */	bl scale_down_darw__Q33ipl5scene12focus_objectFv
/* 8139B954 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139B958 | 38 9F 07 60 */	addi r4, r31, 0x760
/* 8139B95C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139B960 | 4B FC FB 0D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139B964 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B968 | 80 03 01 34 */	lwz r0, 0x134(r3)
/* 8139B96C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139B970 | 41 82 00 14 */	beq .L_8139B984
/* 8139B974 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8139B978 | 38 80 00 1E */	li r4, 0x1e
/* 8139B97C | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8139B980 | 48 07 2F 99 */	bl stop__17BannerSoundPlayerFUl
.L_8139B984:
/* 8139B984 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B988 | 4B FF F2 1D */	bl hide_cmn_btn__Q33ipl5scene12focus_objectFv
/* 8139B98C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B990 | 38 80 00 03 */	li r4, 0x3
/* 8139B994 | 38 00 00 05 */	li r0, 0x5
/* 8139B998 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8139B99C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B9A0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8139B9A4 | 48 00 01 38 */	b .L_8139BADC
.L_8139B9A8:
/* 8139B9A8 | 80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8139B9AC | 7F 83 E3 78 */	mr r3, r28
/* 8139B9B0 | 48 26 6A D1 */	bl strcmp
/* 8139B9B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139B9B8 | 40 82 01 24 */	bne .L_8139BADC
/* 8139B9BC | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B9C0 | 3B C0 00 00 */	li r30, 0x0
/* 8139B9C4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8139B9C8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 8139B9CC | 41 82 00 A4 */	beq .L_8139BA70
/* 8139B9D0 | 40 80 00 D4 */	bge .L_8139BAA4
/* 8139B9D4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139B9D8 | 41 82 00 08 */	beq .L_8139B9E0
/* 8139B9DC | 48 00 00 C8 */	b .L_8139BAA4
.L_8139B9E0:
/* 8139B9E0 | 7F 63 DB 78 */	mr r3, r27
/* 8139B9E4 | 3B C0 00 01 */	li r30, 0x1
/* 8139B9E8 | 38 80 00 1D */	li r4, 0x1d
/* 8139B9EC | 48 00 1A 3D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8139B9F0 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139B9F4 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 8139B9F8 | 80 04 00 DC */	lwz r0, 0xdc(r4)
/* 8139B9FC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8139BA00 | 40 82 00 0C */	bne .L_8139BA0C
/* 8139BA04 | 4B FF F9 E1 */	bl check_network_for_news__Q33ipl5scene12focus_objectFv
/* 8139BA08 | 48 00 00 9C */	b .L_8139BAA4
.L_8139BA0C:
/* 8139BA0C | 88 03 01 2C */	lbz r0, 0x12c(r3)
/* 8139BA10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139BA14 | 41 82 00 38 */	beq .L_8139BA4C
/* 8139BA18 | 4B FF E2 65 */	bl setup_chanjump__Q33ipl5scene12focus_objectFv
/* 8139BA1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139BA20 | 41 82 00 84 */	beq .L_8139BAA4
/* 8139BA24 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BA28 | 38 80 00 00 */	li r4, 0x0
/* 8139BA2C | 4B FF D3 F9 */	bl init_fadeout__Q33ipl5scene12focus_objectFb
/* 8139BA30 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BA34 | 38 80 00 05 */	li r4, 0x5
/* 8139BA38 | 38 00 00 02 */	li r0, 0x2
/* 8139BA3C | 90 83 00 10 */	stw r4, 0x10(r3)
/* 8139BA40 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BA44 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8139BA48 | 48 00 00 5C */	b .L_8139BAA4
.L_8139BA4C:
/* 8139BA4C | 38 80 00 00 */	li r4, 0x0
/* 8139BA50 | 38 00 00 0A */	li r0, 0xa
/* 8139BA54 | 90 83 01 F4 */	stw r4, 0x1f4(r3)
/* 8139BA58 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8139BA5C | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8139BA60 | 90 64 00 08 */	stw r3, 0x8(r4)
/* 8139BA64 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BA68 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8139BA6C | 48 00 00 38 */	b .L_8139BAA4
.L_8139BA70:
/* 8139BA70 | 7F 63 DB 78 */	mr r3, r27
/* 8139BA74 | 3B C0 00 01 */	li r30, 0x1
/* 8139BA78 | 38 80 00 1D */	li r4, 0x1d
/* 8139BA7C | 48 00 19 AD */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 8139BA80 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BA84 | 38 80 00 00 */	li r4, 0x0
/* 8139BA88 | 38 00 00 0A */	li r0, 0xa
/* 8139BA8C | 90 83 01 F4 */	stw r4, 0x1f4(r3)
/* 8139BA90 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8139BA94 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8139BA98 | 90 64 00 08 */	stw r3, 0x8(r4)
/* 8139BA9C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BAA0 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_8139BAA4:
/* 8139BAA4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139BAA8 | 41 82 00 34 */	beq .L_8139BADC
/* 8139BAAC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139BAB0 | 38 9F 04 99 */	addi r4, r31, 0x499
/* 8139BAB4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139BAB8 | 4B FC F9 B5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139BABC | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BAC0 | 80 03 01 34 */	lwz r0, 0x134(r3)
/* 8139BAC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139BAC8 | 41 82 00 14 */	beq .L_8139BADC
/* 8139BACC | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8139BAD0 | 38 80 00 1E */	li r4, 0x1e
/* 8139BAD4 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8139BAD8 | 48 07 2E 41 */	bl stop__17BannerSoundPlayerFUl
.L_8139BADC:
/* 8139BADC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139BAE0 | 48 25 DA 2D */	bl _restgpr_27
/* 8139BAE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139BAE8 | 7C 08 03 A6 */	mtlr r0
/* 8139BAEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139BAF0 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene12button_eventFUlUlPCQ33ipl10controller9Interface

# .text:0x4DCC | 0x8139BAF4 | size: 0x120
# ipl::scene::optout_button_event::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene19optout_button_eventFUlUlPCQ33ipl10controller9Interface, global
/* 8139BAF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139BAF8 | 7C 08 02 A6 */	mflr r0
/* 8139BAFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139BB00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139BB04 | 48 25 D9 C5 */	bl _savegpr_29
/* 8139BB08 | 7C 7D 1B 78 */	mr r29, r3
/* 8139BB0C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8139BB10 | 7C BF 2B 78 */	mr r31, r5
/* 8139BB14 | 7C DE 33 78 */	mr r30, r6
/* 8139BB18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139BB1C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8139BB20 | 7D 89 03 A6 */	mtctr r12
/* 8139BB24 | 4E 80 04 21 */	bctrl
/* 8139BB28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139BB2C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8139BB30 | 7D 89 03 A6 */	mtctr r12
/* 8139BB34 | 4E 80 04 21 */	bctrl
/* 8139BB38 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8139BB3C | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 8139BB40 | 40 82 00 BC */	bne .L_8139BBFC
/* 8139BB44 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8139BB48 | 3C 80 00 10 */	lis r4, 0x10
/* 8139BB4C | 7F C3 F3 78 */	mr r3, r30
/* 8139BB50 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8139BB54 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8139BB58 | 7D 89 03 A6 */	mtctr r12
/* 8139BB5C | 4E 80 04 21 */	bctrl
/* 8139BB60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139BB64 | 41 82 00 98 */	beq .L_8139BBFC
/* 8139BB68 | 7F E3 FB 78 */	mr r3, r31
/* 8139BB6C | 38 8D 86 B9 */	li r4, lbl_816966F9@sda21
/* 8139BB70 | 48 26 69 11 */	bl strcmp
/* 8139BB74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139BB78 | 40 82 00 84 */	bne .L_8139BBFC
/* 8139BB7C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BB80 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8139BB84 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139BB88 | 40 82 00 74 */	bne .L_8139BBFC
/* 8139BB8C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139BB90 | 38 80 00 05 */	li r4, 0x5
/* 8139BB94 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139BB98 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139BB9C | 48 06 F5 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139BBA0 | 38 80 00 26 */	li r4, 0x26
/* 8139BBA4 | 48 00 0F B5 */	bl iplButton_8139CB58
/* 8139BBA8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139BBAC | 3C 80 81 65 */	lis r4, lbl_8164BB69@ha
/* 8139BBB0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139BBB4 | 38 84 BB 69 */	addi r4, r4, lbl_8164BB69@l
/* 8139BBB8 | 4B FC F8 B5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139BBBC | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BBC0 | 80 03 01 34 */	lwz r0, 0x134(r3)
/* 8139BBC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139BBC8 | 41 82 00 14 */	beq .L_8139BBDC
/* 8139BBCC | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8139BBD0 | 38 80 00 1E */	li r4, 0x1e
/* 8139BBD4 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8139BBD8 | 48 07 2D 41 */	bl stop__17BannerSoundPlayerFUl
.L_8139BBDC:
/* 8139BBDC | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BBE0 | 4B FF EF C5 */	bl hide_cmn_btn__Q33ipl5scene12focus_objectFv
/* 8139BBE4 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BBE8 | 38 80 00 03 */	li r4, 0x3
/* 8139BBEC | 38 00 00 0E */	li r0, 0xe
/* 8139BBF0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8139BBF4 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8139BBF8 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_8139BBFC:
/* 8139BBFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139BC00 | 48 25 D9 15 */	bl _restgpr_29
/* 8139BC04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139BC08 | 7C 08 03 A6 */	mtlr r0
/* 8139BC0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139BC10 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene19optout_button_eventFUlUlPCQ33ipl10controller9Interface

# .text:0x4EEC | 0x8139BC14 | size: 0x80
# ipl::scene::scroller::calc(bool)
.fn calc__Q33ipl5scene8scrollerFb, global
/* 8139BC14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139BC18 | 7C 08 02 A6 */	mflr r0
/* 8139BC1C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139BC20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139BC24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139BC28 | 3B E0 00 00 */	li r31, 0x0
/* 8139BC2C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139BC30 | 7C 7E 1B 78 */	mr r30, r3
/* 8139BC34 | 41 82 00 18 */	beq .L_8139BC4C
/* 8139BC38 | 38 63 00 50 */	addi r3, r3, 0x50
/* 8139BC3C | 4B FC 7A 1D */	bl calc__Q33ipl7utility9BScrollerFv
/* 8139BC40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139BC44 | 41 82 00 08 */	beq .L_8139BC4C
/* 8139BC48 | 3B E0 00 01 */	li r31, 0x1
.L_8139BC4C:
/* 8139BC4C | 7F C3 F3 78 */	mr r3, r30
/* 8139BC50 | 4B FC 80 A9 */	bl calc__Q33ipl7utility8ScrollerFv
/* 8139BC54 | C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 8139BC58 | 7F C3 F3 78 */	mr r3, r30
/* 8139BC5C | 4B FC 80 6D */	bl movable_pos__Q33ipl7utility8ScrollerCFf
/* 8139BC60 | C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8139BC64 | 7F E3 FB 78 */	mr r3, r31
/* 8139BC68 | C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8139BC6C | EC 42 08 2A */	fadds f2, f2, f1
/* 8139BC70 | EC 00 08 2A */	fadds f0, f0, f1
/* 8139BC74 | D0 5E 00 40 */	stfs f2, 0x40(r30)
/* 8139BC78 | D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8139BC7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139BC80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139BC84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139BC88 | 7C 08 03 A6 */	mtlr r0
/* 8139BC8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139BC90 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene8scrollerFb

# 0x8160F708..0x8160F7B8 | size: 0xB0
.rodata
.balign 8

# .rodata:0x0 | 0x8160F708 | size: 0x6C
# ipl::scene::scChangeTexFile
.obj scChangeTexFile__Q23ipl5scene, local
	.4byte lbl_8164B994
	.4byte lbl_8164B9A8
	.4byte lbl_81696664
	.4byte lbl_8164B9B2
	.4byte lbl_8164B9C6
	.4byte lbl_8169666C
	.4byte lbl_8164B9D0
	.4byte lbl_8164B9E4
	.4byte lbl_81696674
	.4byte lbl_8164B9EE
	.4byte lbl_8164BA02
	.4byte lbl_8169667C
	.4byte lbl_8164BA0C
	.4byte lbl_8164BA20
	.4byte lbl_81696684
	.4byte lbl_8164BA2A
	.4byte lbl_8164BA3E
	.4byte lbl_8169668C
	.4byte lbl_8164BA48
	.4byte lbl_8164BA5C
	.4byte lbl_81696694
	.4byte lbl_8164BA66
	.4byte lbl_8164BA7A
	.4byte lbl_8169669C
	.4byte lbl_8164BA84
	.4byte lbl_8164BA98
	.4byte lbl_816966A4
.endobj scChangeTexFile__Q23ipl5scene

# .rodata:0x6C | 0x8160F774 | size: 0x34
.obj lbl_8160F774, global
	.2byte 0x0028
	.2byte 0x0029
	.2byte 0x007B
	.2byte 0x007D
	.2byte 0x005B
	.2byte 0x005D
	.2byte 0x003C
	.2byte 0x003E
	.2byte 0xFF3B
	.2byte 0xFF3D
	.2byte 0xFF08
	.2byte 0xFF09
	.2byte 0xFF5B
	.2byte 0xFF5D
	.2byte 0xFF1C
	.2byte 0xFF1E
	.2byte 0x300A
	.2byte 0x300B
	.2byte 0x3010
	.2byte 0x3011
	.2byte 0x3014
	.2byte 0x3015
	.2byte 0x300C
	.2byte 0x300D
	.2byte 0x300E
	.2byte 0x300F
.endobj lbl_8160F774

# .rodata:0xA0 | 0x8160F7A8 | size: 0x10
# ipl::scene::scSoundFileList
.obj scSoundFileList__Q23ipl5scene, local
	.4byte lbl_8164BD8D
	.4byte lbl_8164BD97
	.4byte lbl_8164BDA1
	.4byte lbl_8164BDAB
.endobj scSoundFileList__Q23ipl5scene

# 0x8164B6D0..0x8164BF48 | size: 0x878
.data
.balign 8

# .data:0x0 | 0x8164B6D0 | size: 0x10
.obj lbl_8164B6D0, global
	.string "my_Memo_a.brlyt"
.endobj lbl_8164B6D0

# .data:0x10 | 0x8164B6E0 | size: 0x1D
.obj lbl_8164B6E0, global
	.string "my_Memo_a_SelectLetter.brlan"
.endobj lbl_8164B6E0

# .data:0x2D | 0x8164B6FD | size: 0x1B
.obj lbl_8164B6FD, global
	.string "my_Memo_a_ExitLetter.brlan"
.endobj lbl_8164B6FD

# .data:0x48 | 0x8164B718 | size: 0x15
.obj lbl_8164B718, global
	.string "my_Memo_a_Loop.brlan"
.endobj lbl_8164B718

# .data:0x5D | 0x8164B72D | size: 0x18
.obj lbl_8164B72D, global
	.string "my_Memo_a_FocusOn.brlan"
.endobj lbl_8164B72D

# .data:0x75 | 0x8164B745 | size: 0x19
.obj lbl_8164B745, global
	.string "my_Memo_a_FocusOff.brlan"
.endobj lbl_8164B745

# .data:0x8E | 0x8164B75E | size: 0x17
.obj lbl_8164B75E, global
	.string "my_Memo_a_Select.brlan"
.endobj lbl_8164B75E

# .data:0xA5 | 0x8164B775 | size: 0x17
.obj lbl_8164B775, global
	.string "my_Memo_a_Appear.brlan"
.endobj lbl_8164B775

# .data:0xBC | 0x8164B78C | size: 0x15
.obj lbl_8164B78C, global
	.string "my_Memo_a_Lost.brlan"
.endobj lbl_8164B78C

# .data:0xD1 | 0x8164B7A1 | size: 0x1E
.obj lbl_8164B7A1, global
	.string "my_Memo_a_HDActionStart.brlan"
.endobj lbl_8164B7A1

# .data:0xEF | 0x8164B7BF | size: 0x1C
.obj lbl_8164B7BF, global
	.string "my_Memo_a_HDActionEnd.brlan"
.endobj lbl_8164B7BF

# .data:0x10B | 0x8164B7DB | size: 0x11
.obj lbl_8164B7DB, global
	.string "my_LetterL.brlyt"
.endobj lbl_8164B7DB

# .data:0x11C | 0x8164B7EC | size: 0x1E
.obj lbl_8164B7EC, global
	.string "my_LetterL_SelectLetter.brlan"
.endobj lbl_8164B7EC

# .data:0x13A | 0x8164B80A | size: 0x1C
.obj lbl_8164B80A, global
	.string "my_LetterL_ExitLetter.brlan"
.endobj lbl_8164B80A

# .data:0x156 | 0x8164B826 | size: 0x16
.obj lbl_8164B826, global
	.string "my_LetterL_Loop.brlan"
.endobj lbl_8164B826

# .data:0x16C | 0x8164B83C | size: 0x19
.obj lbl_8164B83C, global
	.string "my_LetterL_FocusOn.brlan"
.endobj lbl_8164B83C

# .data:0x185 | 0x8164B855 | size: 0x1A
.obj lbl_8164B855, global
	.string "my_LetterL_FocusOff.brlan"
.endobj lbl_8164B855

# .data:0x19F | 0x8164B86F | size: 0x18
.obj lbl_8164B86F, global
	.string "my_LetterL_Select.brlan"
.endobj lbl_8164B86F

# .data:0x1B7 | 0x8164B887 | size: 0x18
.obj lbl_8164B887, global
	.string "my_LetterL_Appear.brlan"
.endobj lbl_8164B887

# .data:0x1CF | 0x8164B89F | size: 0x16
.obj lbl_8164B89F, global
	.string "my_LetterL_Lost.brlan"
.endobj lbl_8164B89F

# .data:0x1E5 | 0x8164B8B5 | size: 0x1F
.obj lbl_8164B8B5, global
	.string "my_LetterL_HDActionStart.brlan"
.endobj lbl_8164B8B5

# .data:0x204 | 0x8164B8D4 | size: 0xA4
.obj lbl_8164B8D4, global
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F48
	.4byte 0x44416374
	.4byte 0x696F6E45
	.4byte 0x6E642E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte lbl_8164B6D0
	.4byte lbl_8164B6E0
	.4byte lbl_8164B6FD
	.4byte lbl_8164B718
	.4byte lbl_8164B72D
	.4byte lbl_8164B745
	.4byte lbl_8164B75E
	.4byte lbl_8164B775
	.4byte lbl_8164B78C
	.4byte lbl_8164B7A1
	.4byte lbl_8164B7BF
	.4byte lbl_8164B7DB
	.4byte lbl_8164B7EC
	.4byte lbl_8164B80A
	.4byte lbl_8164B826
	.4byte lbl_8164B83C
	.4byte lbl_8164B855
	.4byte lbl_8164B86F
	.4byte lbl_8164B887
	.4byte lbl_8164B89F
	.4byte lbl_8164B8B5
	.4byte lbl_8164B8D4
	.4byte lbl_8164B6D0
	.4byte lbl_8164B6E0
	.4byte lbl_8164B6FD
	.4byte lbl_8164B718
	.4byte lbl_8164B72D
	.4byte lbl_8164B745
	.4byte lbl_8164B75E
	.4byte lbl_8164B775
	.4byte lbl_8164B78C
	.4byte lbl_8164B7A1
	.4byte lbl_8164B7BF
.endobj lbl_8164B8D4

# .data:0x2A8 | 0x8164B978 | size: 0xC
.obj lbl_8164B978, global
	.4byte 0x425F4E69
	.4byte 0x67616F65
	.4byte 0x00000000
.endobj lbl_8164B978

# .data:0x2B4 | 0x8164B984 | size: 0x10
.obj lbl_8164B984, global
	.4byte lbl_81696650
	.4byte lbl_81696657
	.4byte lbl_8169665E
	.4byte lbl_8164B978
.endobj lbl_8164B984

# .data:0x2C4 | 0x8164B994 | size: 0x14
.obj lbl_8164B994, global
	.string "img/my_Letter_a.tpl"
.endobj lbl_8164B994

# .data:0x2D8 | 0x8164B9A8 | size: 0xA
.obj lbl_8164B9A8, global
	.string "LetterA_s"
.endobj lbl_8164B9A8

# .data:0x2E2 | 0x8164B9B2 | size: 0x14
.obj lbl_8164B9B2, global
	.string "img/my_Letter_b.tpl"
.endobj lbl_8164B9B2

# .data:0x2F6 | 0x8164B9C6 | size: 0xA
.obj lbl_8164B9C6, global
	.string "LetterB_s"
.endobj lbl_8164B9C6

# .data:0x300 | 0x8164B9D0 | size: 0x14
.obj lbl_8164B9D0, global
	.string "img/my_Letter_c.tpl"
.endobj lbl_8164B9D0

# .data:0x314 | 0x8164B9E4 | size: 0xA
.obj lbl_8164B9E4, global
	.string "LetterC_s"
.endobj lbl_8164B9E4

# .data:0x31E | 0x8164B9EE | size: 0x14
.obj lbl_8164B9EE, global
	.string "img/my_Letter_d.tpl"
.endobj lbl_8164B9EE

# .data:0x332 | 0x8164BA02 | size: 0xA
.obj lbl_8164BA02, global
	.string "LetterD_s"
.endobj lbl_8164BA02

# .data:0x33C | 0x8164BA0C | size: 0x14
.obj lbl_8164BA0C, global
	.string "img/my_Letter_e.tpl"
.endobj lbl_8164BA0C

# .data:0x350 | 0x8164BA20 | size: 0xA
.obj lbl_8164BA20, global
	.string "LetterE_s"
.endobj lbl_8164BA20

# .data:0x35A | 0x8164BA2A | size: 0x14
.obj lbl_8164BA2A, global
	.string "img/my_Letter_f.tpl"
.endobj lbl_8164BA2A

# .data:0x36E | 0x8164BA3E | size: 0xA
.obj lbl_8164BA3E, global
	.string "LetterF_s"
.endobj lbl_8164BA3E

# .data:0x378 | 0x8164BA48 | size: 0x14
.obj lbl_8164BA48, global
	.string "img/my_Letter_g.tpl"
.endobj lbl_8164BA48

# .data:0x38C | 0x8164BA5C | size: 0xA
.obj lbl_8164BA5C, global
	.string "LetterG_s"
.endobj lbl_8164BA5C

# .data:0x396 | 0x8164BA66 | size: 0x14
.obj lbl_8164BA66, global
	.string "img/my_Letter_h.tpl"
.endobj lbl_8164BA66

# .data:0x3AA | 0x8164BA7A | size: 0xA
.obj lbl_8164BA7A, global
	.string "LetterH_s"
.endobj lbl_8164BA7A

# .data:0x3B4 | 0x8164BA84 | size: 0x14
.obj lbl_8164BA84, global
	.string "img/my_Letter_i.tpl"
.endobj lbl_8164BA84

# .data:0x3C8 | 0x8164BA98 | size: 0xC
.obj lbl_8164BA98, global
	.4byte 0x4C657474
	.4byte 0x6572495F
	.4byte 0x73000000
.endobj lbl_8164BA98

# .data:0x3D4 | 0x8164BAA4 | size: 0x60
.obj jumptable_8164BAA4, local
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397198
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813971B4
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813971C0
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813971CC
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813971D8
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813971E4
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813971F0
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813971FC
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397208
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397214
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397220
	.rel calc__Q33ipl5scene12focus_objectFv, .L_8139722C
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397238
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397244
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397250
	.rel calc__Q33ipl5scene12focus_objectFv, .L_8139725C
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397268
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397274
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397280
	.rel calc__Q33ipl5scene12focus_objectFv, .L_8139728C
	.rel calc__Q33ipl5scene12focus_objectFv, .L_81397298
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813972A4
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813972B0
	.rel calc__Q33ipl5scene12focus_objectFv, .L_813972BC
.endobj jumptable_8164BAA4

# .data:0x434 | 0x8164BB04 | size: 0x3C
.obj jumptable_8164BB04, local
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_813977DC
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_813977F4
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397810
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397898
	.rel stt_wait_btn__Q33ipl5scene12focus_objectFv, .L_81397880
.endobj jumptable_8164BB04

# .data:0x470 | 0x8164BB40 | size: 0x13
.obj lbl_8164BB40, global
	.string "WIPL_SE_BOARD_DUMP"
.endobj lbl_8164BB40

# .data:0x483 | 0x8164BB53 | size: 0x16
.obj lbl_8164BB53, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_8164BB53

# .data:0x499 | 0x8164BB69 | size: 0xF
.obj lbl_8164BB69, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_8164BB69

# .data:0x4A8 | 0x8164BB78 | size: 0x9
.obj lbl_8164BB78, global
	.string "N_Header"
.endobj lbl_8164BB78

# .data:0x4B1 | 0x8164BB81 | size: 0x9
.obj lbl_8164BB81, global
	.string "N_Footer"
.endobj lbl_8164BB81

# .data:0x4BA | 0x8164BB8A | size: 0x162
.obj lbl_8164BB8A, global
	.4byte 0x545F4C65
	.4byte 0x74746572
	.4byte 0x004E5F54
	.4byte 0x6F704274
	.4byte 0x6E005265
	.4byte 0x706C794D
	.4byte 0x61736B00
	.4byte 0x475F4172
	.4byte 0x77526F6F
	.4byte 0x7000475F
	.4byte 0x41727752
	.4byte 0x5F466F63
	.4byte 0x75730047
	.4byte 0x5F417277
	.4byte 0x525F4163
	.4byte 0x00475F41
	.4byte 0x7277525F
	.4byte 0x456E6400
	.4byte 0x475F4172
	.4byte 0x77525F48
	.4byte 0x44416300
	.4byte 0x475F4172
	.4byte 0x774C5F46
	.4byte 0x6F637573
	.4byte 0x00475F41
	.4byte 0x72774C5F
	.4byte 0x41630047
	.4byte 0x5F417277
	.4byte 0x4C5F456E
	.4byte 0x6400475F
	.4byte 0x4172774C
	.4byte 0x5F484441
	.4byte 0x63006D79
	.4byte 0x5F4C6574
	.4byte 0x7465724C
	.4byte 0x5F526570
	.4byte 0x6C792E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4C657474
	.4byte 0x65724C5F
	.4byte 0x5265706C
	.4byte 0x79426163
	.4byte 0x6B2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F50
	.4byte 0x69635265
	.4byte 0x706C792E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F4C6574
	.4byte 0x7465724C
	.4byte 0x5F506963
	.4byte 0x5265706C
	.4byte 0x79426163
	.4byte 0x6B2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F50
	.4byte 0x6963466F
	.4byte 0x63757349
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F50
	.4byte 0x6963466F
	.4byte 0x6375734F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x4C657474
	.4byte 0x65724C5F
	.4byte 0x53656C65
	.4byte 0x63745069
	.4byte 0x632E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C5F45
	.4byte 0x78697450
	.4byte 0x69632E62
	.4byte 0x726C616E
	.4byte 0x00545F48
	.4byte 0x65616465
	.2byte 0x7200
.endobj lbl_8164BB8A

# .data:0x61C | 0x8164BCEC | size: 0xA
.obj lbl_8164BCEC, global
	.4byte 0x425F4E69
	.4byte 0x67616F65
	.2byte 0x0000
.endobj lbl_8164BCEC

# .data:0x626 | 0x8164BCF6 | size: 0x10
.obj lbl_8164BCF6, global
	.string16 "http://"
.endobj lbl_8164BCF6

# .data:0x636 | 0x8164BD06 | size: 0x6A
.obj lbl_8164BD06, global
	.4byte 0x00680074
	.4byte 0x00740070
	.4byte 0x0073003A
	.4byte 0x002F002F
	.4byte 0x0000002E
	.4byte 0x00680074
	.4byte 0x006D006C
	.4byte 0x0000002E
	.4byte 0x00680074
	.4byte 0x006D0000
	.4byte 0x002E0073
	.4byte 0x00680074
	.4byte 0x006D006C
	.4byte 0x0000002E
	.4byte 0x00730068
	.4byte 0x0074006D
	.4byte 0x0000002E
	.4byte 0x00630067
	.4byte 0x00690000
	.4byte 0x002E0070
	.4byte 0x00680070
	.4byte 0x0000002E
	.4byte 0x00610073
	.4byte 0x00700000
	.4byte 0x002E006A
	.4byte 0x00730070
	.2byte 0x0000
.endobj lbl_8164BD06

# .data:0x6A0 | 0x8164BD70 | size: 0x10
.obj lbl_8164BD70, global
	.string "./letter_LZ.bin"
.endobj lbl_8164BD70

# .data:0x6B0 | 0x8164BD80 | size: 0xD
.obj lbl_8164BD80, global
	.string "./chjump.bin"
.endobj lbl_8164BD80

# .data:0x6BD | 0x8164BD8D | size: 0xA
.obj lbl_8164BD8D, global
	.string "sound.bns"
.endobj lbl_8164BD8D

# .data:0x6C7 | 0x8164BD97 | size: 0xA
.obj lbl_8164BD97, global
	.string "sound.wav"
.endobj lbl_8164BD97

# .data:0x6D1 | 0x8164BDA1 | size: 0xA
.obj lbl_8164BDA1, global
	.string "sound.aif"
.endobj lbl_8164BDA1

# .data:0x6DB | 0x8164BDAB | size: 0xB
.obj lbl_8164BDAB, global
	.string "sound.aiff"
.endobj lbl_8164BDAB

# .data:0x6E6 | 0x8164BDB6 | size: 0x15
.obj lbl_8164BDB6, global
	.string "WIPL_SE_BOARD_SELECT"
.endobj lbl_8164BDB6

# .data:0x6FB | 0x8164BDCB | size: 0x19
.obj lbl_8164BDCB, global
	.string "my_IplTopBalloon_a.brlyt"
.endobj lbl_8164BDCB

# .data:0x714 | 0x8164BDE4 | size: 0x14
.obj lbl_8164BDE4, global
	.string "WIPL_SE_PIC_ZOOM_IN"
.endobj lbl_8164BDE4

# .data:0x728 | 0x8164BDF8 | size: 0x48
.obj lbl_8164BDF8, global
	.4byte 0x00250030
	.4byte 0x00360064
	.4byte 0x000A0000
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x424F4152
	.4byte 0x445F554E
	.4byte 0x53454C45
	.4byte 0x43540057
	.4byte 0x49504C5F
	.4byte 0x53455F50
	.4byte 0x49435F5A
	.4byte 0x4F4F4D5F
	.4byte 0x4F555400
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F50
	.4byte 0x55534800
.endobj lbl_8164BDF8

# .data:0x770 | 0x8164BE40 | size: 0x10
# ipl::math::LinearIntp<ipl::math::VEC3>::__vtable
.obj "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>Fv"
	.4byte calc__Q33ipl7utility15FrameControllerFv
.endobj "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC3>"

# .data:0x780 | 0x8164BE50 | size: 0x10
# ipl::math::Interporation<ipl::math::VEC3>::__vtable
.obj "__vt__Q33ipl4math31Interporation<Q33ipl4math4VEC3>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q33ipl4math31Interporation<Q33ipl4math4VEC3>Fv"
	.4byte calc__Q33ipl7utility15FrameControllerFv
.endobj "__vt__Q33ipl4math31Interporation<Q33ipl4math4VEC3>"

# .data:0x790 | 0x8164BE60 | size: 0x1C
# ipl::scene::optout_button_event::__vtable
.obj __vt__Q33ipl5scene19optout_button_event, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene28OptOutButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEventDerived__Q33ipl5scene19optout_button_eventFUlUlPCQ33ipl10controller9Interface
.endobj __vt__Q33ipl5scene19optout_button_event

# .data:0x7AC | 0x8164BE7C | size: 0x1C
# ipl::scene::button_event::__vtable
.obj __vt__Q33ipl5scene12button_event, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEventDerived__Q33ipl5scene12button_eventFUlUlPCQ33ipl10controller9Interface
.endobj __vt__Q33ipl5scene12button_event

# .data:0x7C8 | 0x8164BE98 | size: 0xB0
# ipl::scene::event::__vtable
.obj __vt__Q33ipl5scene5event, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene5eventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene5event

# 0x81694868..0x816948A0 | size: 0x38
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694868 | size: 0x4
.obj lbl_81694868, global
	.float 1
.endobj lbl_81694868

# .sdata2:0x4 | 0x8169486C | size: 0x4
.obj lbl_8169486C, global
	.float 0
.endobj lbl_8169486C

# .sdata2:0x8 | 0x81694870 | size: 0x4
.obj lbl_81694870, global
	.float 500
.endobj lbl_81694870

# .sdata2:0xC | 0x81694874 | size: 0x4
.obj lbl_81694874, global
	.float -500
.endobj lbl_81694874

# .sdata2:0x10 | 0x81694878 | size: 0x2
.obj lbl_81694878, global
	.2byte 0x001A
.endobj lbl_81694878

# .sdata2:0x12 | 0x8169487A | size: 0x2
.obj lbl_8169487A, global
	.2byte 0x0000
.endobj lbl_8169487A

# .sdata2:0x14 | 0x8169487C | size: 0x4
.obj gap_09_8169487C_sdata2, global
.hidden gap_09_8169487C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169487C_sdata2

# .sdata2:0x18 | 0x81694880 | size: 0x8
.obj lbl_81694880, global
	.double 4503601774854144
.endobj lbl_81694880

# .sdata2:0x20 | 0x81694888 | size: 0x4
.obj lbl_81694888, global
	.float 17
.endobj lbl_81694888

# .sdata2:0x24 | 0x8169488C | size: 0x4
.obj lbl_8169488C, global
	.float 120
.endobj lbl_8169488C

# .sdata2:0x28 | 0x81694890 | size: 0x4
.obj lbl_81694890, global
	.float 30
.endobj lbl_81694890

# .sdata2:0x2C | 0x81694894 | size: 0x4
.obj lbl_81694894, global
	.float 50
.endobj lbl_81694894

# .sdata2:0x30 | 0x81694898 | size: 0x4
.obj lbl_81694898, global
	.float 160
.endobj lbl_81694898

# .sdata2:0x34 | 0x8169489C | size: 0x4
.obj lbl_8169489C, global
	.float 8
.endobj lbl_8169489C

# 0x81696650..0x81696700 | size: 0xB0
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696650 | size: 0x7
.obj lbl_81696650, global
	.string "B_ArwR"
.endobj lbl_81696650

# .sdata:0x7 | 0x81696657 | size: 0x7
.obj lbl_81696657, global
	.string "B_ArwL"
.endobj lbl_81696657

# .sdata:0xE | 0x8169665E | size: 0x6
.obj lbl_8169665E, global
	.string "B_Pic"
.endobj lbl_8169665E

# .sdata:0x14 | 0x81696664 | size: 0x8
.obj lbl_81696664, global
	.string "LetterA"
.endobj lbl_81696664

# .sdata:0x1C | 0x8169666C | size: 0x8
.obj lbl_8169666C, global
	.string "LetterB"
.endobj lbl_8169666C

# .sdata:0x24 | 0x81696674 | size: 0x8
.obj lbl_81696674, global
	.string "LetterC"
.endobj lbl_81696674

# .sdata:0x2C | 0x8169667C | size: 0x8
.obj lbl_8169667C, global
	.string "LetterD"
.endobj lbl_8169667C

# .sdata:0x34 | 0x81696684 | size: 0x8
.obj lbl_81696684, global
	.string "LetterE"
.endobj lbl_81696684

# .sdata:0x3C | 0x8169668C | size: 0x8
.obj lbl_8169668C, global
	.string "LetterF"
.endobj lbl_8169668C

# .sdata:0x44 | 0x81696694 | size: 0x8
.obj lbl_81696694, global
	.string "LetterG"
.endobj lbl_81696694

# .sdata:0x4C | 0x8169669C | size: 0x8
.obj lbl_8169669C, global
	.string "LetterH"
.endobj lbl_8169669C

# .sdata:0x54 | 0x816966A4 | size: 0x8
.obj lbl_816966A4, global
	.string "LetterI"
.endobj lbl_816966A4

# .sdata:0x5C | 0x816966AC | size: 0x7
.obj lbl_816966AC, global
	.string "N_Memo"
.endobj lbl_816966AC

# .sdata:0x63 | 0x816966B3 | size: 0x7
.obj lbl_816966B3, global
	.string "N_Body"
.endobj lbl_816966B3

# .sdata:0x6A | 0x816966BA | size: 0x7
.obj lbl_816966BA, global
	.string "Nigaoe"
.endobj lbl_816966BA

# .sdata:0x71 | 0x816966C1 | size: 0x8
.obj lbl_816966C1, global
	.string "PicMask"
.endobj lbl_816966C1

# .sdata:0x79 | 0x816966C9 | size: 0x6
.obj lbl_816966C9, global
	.string "N_Pic"
.endobj lbl_816966C9

# .sdata:0x7F | 0x816966CF | size: 0x4
.obj lbl_816966CF, global
	.string "arc"
.endobj lbl_816966CF

# .sdata:0x83 | 0x816966D3 | size: 0x8
.obj lbl_816966D3, global
	.string "G_Reply"
.endobj lbl_816966D3

# .sdata:0x8B | 0x816966DB | size: 0x6
.obj lbl_816966DB, global
	.string "G_Pic"
.endobj lbl_816966DB

# .sdata:0x91 | 0x816966E1 | size: 0x6
.obj lbl_816966E1, global
	.string "B_Pic"
.endobj lbl_816966E1

# .sdata:0x97 | 0x816966E7 | size: 0x7
.obj lbl_816966E7, global
	.string "B_ArwR"
.endobj lbl_816966E7

# .sdata:0x9E | 0x816966EE | size: 0x7
.obj lbl_816966EE, global
	.string "B_ArwL"
.endobj lbl_816966EE

# .sdata:0xA5 | 0x816966F5 | size: 0x4
.obj lbl_816966F5, global
	.string "Pic"
.endobj lbl_816966F5

# .sdata:0xA9 | 0x816966F9 | size: 0x7
.obj lbl_816966F9, global
	.string "B_Stop"
.endobj lbl_816966F9
