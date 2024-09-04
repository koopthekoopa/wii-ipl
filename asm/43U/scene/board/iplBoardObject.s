.include "macros.inc"
.file "iplBoardObject.cpp"

# 0x81393D1C..0x813960FC | size: 0x23E0
.text
.balign 4

# .text:0x0 | 0x81393D1C | size: 0x140
# ipl::scene::BoardObject::BoardObject()
.fn __ct__Q33ipl5scene11BoardObjectFv, global
/* 81393D1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393D20 | 7C 08 02 A6 */	mflr r0
/* 81393D24 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene11BoardObject@ha
/* 81393D28 | 3D 20 81 65 */	lis r9, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC2>"@ha
/* 81393D2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393D30 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 81393D34 | C0 02 84 10 */	lfs f0, lbl_81694810@sda21(r0)
/* 81393D38 | 39 40 00 00 */	li r10, 0x0
/* 81393D3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81393D40 | 38 E0 00 01 */	li r7, 0x1
/* 81393D44 | 38 84 B5 C8 */	addi r4, r4, __vt__Q33ipl5scene11BoardObject@l
/* 81393D48 | 39 29 B5 E0 */	addi r9, r9, "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC2>"@l
/* 81393D4C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81393D50 | 39 00 07 D0 */	li r8, 0x7d0
/* 81393D54 | 38 00 00 03 */	li r0, 0x3
/* 81393D58 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 81393D5C | 91 43 00 08 */	stw r10, 0x8(r3)
/* 81393D60 | 7C 7E 1B 78 */	mr r30, r3
/* 81393D64 | 3F E0 00 04 */	lis r31, 0x4
/* 81393D68 | 38 A0 00 04 */	li r5, 0x4
/* 81393D6C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81393D70 | 38 9F 60 00 */	addi r4, r31, 0x6000
/* 81393D74 | 91 43 00 14 */	stw r10, 0x14(r3)
/* 81393D78 | 91 43 00 18 */	stw r10, 0x18(r3)
/* 81393D7C | 91 43 00 20 */	stw r10, 0x20(r3)
/* 81393D80 | 91 43 00 24 */	stw r10, 0x24(r3)
/* 81393D84 | 91 43 00 2C */	stw r10, 0x2c(r3)
/* 81393D88 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81393D8C | D0 03 00 38 */	stfs f0, 0x38(r3)
/* 81393D90 | D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 81393D94 | D0 03 00 40 */	stfs f0, 0x40(r3)
/* 81393D98 | 91 23 00 44 */	stw r9, 0x44(r3)
/* 81393D9C | 91 03 00 B4 */	stw r8, 0xb4(r3)
/* 81393DA0 | 90 E3 00 B8 */	stw r7, 0xb8(r3)
/* 81393DA4 | 90 E3 00 BC */	stw r7, 0xbc(r3)
/* 81393DA8 | 99 43 00 CC */	stb r10, 0xcc(r3)
/* 81393DAC | 99 43 00 CD */	stb r10, 0xcd(r3)
/* 81393DB0 | 99 43 00 CE */	stb r10, 0xce(r3)
/* 81393DB4 | 99 43 00 CF */	stb r10, 0xcf(r3)
/* 81393DB8 | 99 43 00 D0 */	stb r10, 0xd0(r3)
/* 81393DBC | 91 43 00 E0 */	stw r10, 0xe0(r3)
/* 81393DC0 | 91 43 00 F4 */	stw r10, 0xf4(r3)
/* 81393DC4 | 91 43 00 F8 */	stw r10, 0xf8(r3)
/* 81393DC8 | 91 43 00 FC */	stw r10, 0xfc(r3)
/* 81393DCC | 91 43 01 00 */	stw r10, 0x100(r3)
/* 81393DD0 | 91 43 01 24 */	stw r10, 0x124(r3)
/* 81393DD4 | 99 43 01 28 */	stb r10, 0x128(r3)
/* 81393DD8 | 90 03 01 2C */	stw r0, 0x12c(r3)
/* 81393DDC | D0 03 01 30 */	stfs f0, 0x130(r3)
/* 81393DE0 | D0 03 01 34 */	stfs f0, 0x134(r3)
/* 81393DE4 | 91 43 01 38 */	stw r10, 0x138(r3)
/* 81393DE8 | 80 66 00 28 */	lwz r3, 0x28(r6)
/* 81393DEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81393DF0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81393DF4 | 7D 89 03 A6 */	mtctr r12
/* 81393DF8 | 4E 80 04 21 */	bctrl
/* 81393DFC | 90 7E 00 C0 */	stw r3, 0xc0(r30)
/* 81393E00 | 38 9F 60 00 */	addi r4, r31, 0x6000
/* 81393E04 | 38 A0 00 00 */	li r5, 0x0
/* 81393E08 | 48 26 37 D5 */	bl fn_815F75DC
/* 81393E0C | 90 7E 00 C4 */	stw r3, 0xc4(r30)
/* 81393E10 | 7C 64 1B 78 */	mr r4, r3
/* 81393E14 | 38 60 00 14 */	li r3, 0x14
/* 81393E18 | 38 A0 00 04 */	li r5, 0x4
/* 81393E1C | 48 26 42 95 */	bl __nw__FUlPQ23EGG4Heapi
/* 81393E20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393E24 | 41 82 00 10 */	beq .L_81393E34
/* 81393E28 | 80 9E 00 C4 */	lwz r4, 0xc4(r30)
/* 81393E2C | 38 A0 00 04 */	li r5, 0x4
/* 81393E30 | 48 26 1C 4D */	bl fn_815F5A7C
.L_81393E34:
/* 81393E34 | 90 7E 00 C8 */	stw r3, 0xc8(r30)
/* 81393E38 | 38 7E 00 E4 */	addi r3, r30, 0xe4
/* 81393E3C | 48 00 00 A1 */	bl "init__Q43ipl5scene11BoardObject30@class$30039iplBoardObject_cppFv"
/* 81393E40 | 7F C3 F3 78 */	mr r3, r30
/* 81393E44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81393E48 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81393E4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393E50 | 7C 08 03 A6 */	mtlr r0
/* 81393E54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393E58 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene11BoardObjectFv

# .text:0x140 | 0x81393E5C | size: 0x40
# ipl::math::LinearIntp<ipl::math::VEC2>::~LinearIntp()
.fn "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC2>Fv", global
/* 81393E5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393E60 | 7C 08 02 A6 */	mflr r0
/* 81393E64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393E68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393E6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81393E70 | 7C 7F 1B 78 */	mr r31, r3
/* 81393E74 | 41 82 00 10 */	beq .L_81393E84
/* 81393E78 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81393E7C | 40 81 00 08 */	ble .L_81393E84
/* 81393E80 | 48 26 42 65 */	bl __dl__FPv
.L_81393E84:
/* 81393E84 | 7F E3 FB 78 */	mr r3, r31
/* 81393E88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81393E8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393E90 | 7C 08 03 A6 */	mtlr r0
/* 81393E94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393E98 | 4E 80 00 20 */	blr
.endfn "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC2>Fv"

# .text:0x180 | 0x81393E9C | size: 0x40
# ipl::math::Interporation<ipl::math::VEC2>::~Interporation()
.fn "__dt__Q33ipl4math31Interporation<Q33ipl4math4VEC2>Fv", global
/* 81393E9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393EA0 | 7C 08 02 A6 */	mflr r0
/* 81393EA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81393EA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393EAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81393EB0 | 7C 7F 1B 78 */	mr r31, r3
/* 81393EB4 | 41 82 00 10 */	beq .L_81393EC4
/* 81393EB8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81393EBC | 40 81 00 08 */	ble .L_81393EC4
/* 81393EC0 | 48 26 42 25 */	bl __dl__FPv
.L_81393EC4:
/* 81393EC4 | 7F E3 FB 78 */	mr r3, r31
/* 81393EC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81393ECC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393ED0 | 7C 08 03 A6 */	mtlr r0
/* 81393ED4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393ED8 | 4E 80 00 20 */	blr
.endfn "__dt__Q33ipl4math31Interporation<Q33ipl4math4VEC2>Fv"

# .text:0x1C0 | 0x81393EDC | size: 0x18
# ipl::scene::BoardObject::@class$30039iplBoardObject_cpp::init()
.fn "init__Q43ipl5scene11BoardObject30@class$30039iplBoardObject_cppFv", global
/* 81393EDC | C0 02 84 10 */	lfs f0, lbl_81694810@sda21(r0)
/* 81393EE0 | 38 00 FF FF */	li r0, -0x1
/* 81393EE4 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81393EE8 | D0 03 00 00 */	stfs f0, 0x0(r3)
/* 81393EEC | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 81393EF0 | 4E 80 00 20 */	blr
.endfn "init__Q43ipl5scene11BoardObject30@class$30039iplBoardObject_cppFv"

# .text:0x1D8 | 0x81393EF4 | size: 0x80
# ipl::scene::make_icon_cb_(ipl::nigaoe::Object*, void*)
.fn make_icon_cb___Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv, global
/* 81393EF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393EF8 | 7C 08 02 A6 */	mflr r0
/* 81393EFC | 38 A0 00 01 */	li r5, 0x1
/* 81393F00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393F04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81393F08 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81393F0C | 7C 7E 1B 78 */	mr r30, r3
/* 81393F10 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 81393F14 | 38 8D 85 F0 */	li r4, lbl_81696630@sda21
/* 81393F18 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81393F1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81393F20 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81393F24 | 7D 89 03 A6 */	mtctr r12
/* 81393F28 | 4E 80 04 21 */	bctrl
/* 81393F2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81393F30 | 7C 7F 1B 78 */	mr r31, r3
/* 81393F34 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81393F38 | 7D 89 03 A6 */	mtctr r12
/* 81393F3C | 4E 80 04 21 */	bctrl
/* 81393F40 | 88 1F 00 CF */	lbz r0, 0xcf(r31)
/* 81393F44 | 38 BE 00 18 */	addi r5, r30, 0x18
/* 81393F48 | 38 80 00 00 */	li r4, 0x0
/* 81393F4C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81393F50 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81393F54 | 98 1F 00 CF */	stb r0, 0xcf(r31)
/* 81393F58 | 48 19 3E C5 */	bl fn_81527E1C
/* 81393F5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393F60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81393F64 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81393F68 | 7C 08 03 A6 */	mtlr r0
/* 81393F6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393F70 | 4E 80 00 20 */	blr
.endfn make_icon_cb___Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv

# .text:0x258 | 0x81393F74 | size: 0x84
# ipl::scene::BoardObject::create(ipl::nand::LayoutFile*, unsigned char*, unsigned long, const _CDBId&, const _CDBRecordKey&, const ipl::utility::Date&)
.fn create__Q33ipl5scene11BoardObjectFPQ33ipl4nand10LayoutFilePUcUlRC6_CDBIdRC13_CDBRecordKeyRCQ33ipl7utility4Date, global
/* 81393F74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81393F78 | 7C 08 02 A6 */	mflr r0
/* 81393F7C | 7C 8B 23 78 */	mr r11, r4
/* 81393F80 | 81 47 00 00 */	lwz r10, 0x0(r7)
/* 81393F84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81393F88 | 7D 04 43 78 */	mr r4, r8
/* 81393F8C | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 81393F90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81393F94 | 7D 3F 4B 78 */	mr r31, r9
/* 81393F98 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81393F9C | 7C 7E 1B 78 */	mr r30, r3
/* 81393FA0 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 81393FA4 | 38 A0 00 30 */	li r5, 0x30
/* 81393FA8 | 91 63 00 1C */	stw r11, 0x1c(r3)
/* 81393FAC | 90 C3 00 B0 */	stw r6, 0xb0(r3)
/* 81393FB0 | 91 43 00 74 */	stw r10, 0x74(r3)
/* 81393FB4 | 90 03 00 78 */	stw r0, 0x78(r3)
/* 81393FB8 | 38 63 00 80 */	addi r3, r3, 0x80
/* 81393FBC | 4B F9 C2 75 */	bl memcpy
/* 81393FC0 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 81393FC4 | 7F C3 F3 78 */	mr r3, r30
/* 81393FC8 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81393FCC | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81393FD0 | 90 BE 00 B4 */	stw r5, 0xb4(r30)
/* 81393FD4 | 90 9E 00 B8 */	stw r4, 0xb8(r30)
/* 81393FD8 | 90 1E 00 BC */	stw r0, 0xbc(r30)
/* 81393FDC | 48 00 00 1D */	bl init__Q33ipl5scene11BoardObjectFv
/* 81393FE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81393FE4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81393FE8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81393FEC | 7C 08 03 A6 */	mtlr r0
/* 81393FF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81393FF4 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene11BoardObjectFPQ33ipl4nand10LayoutFilePUcUlRC6_CDBIdRC13_CDBRecordKeyRCQ33ipl7utility4Date

# .text:0x2DC | 0x81393FF8 | size: 0xA4
# ipl::scene::BoardObject::init()
.fn init__Q33ipl5scene11BoardObjectFv, global
/* 81393FF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81393FFC | 7C 08 02 A6 */	mflr r0
/* 81394000 | C0 02 84 10 */	lfs f0, lbl_81694810@sda21(r0)
/* 81394004 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81394008 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8139400C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81394010 | 3B E0 00 00 */	li r31, 0x0
/* 81394014 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81394018 | 7C 7E 1B 78 */	mr r30, r3
/* 8139401C | 9B E3 00 CE */	stb r31, 0xce(r3)
/* 81394020 | 9B E3 00 CC */	stb r31, 0xcc(r3)
/* 81394024 | 93 E3 00 D4 */	stw r31, 0xd4(r3)
/* 81394028 | 93 E3 01 2C */	stw r31, 0x12c(r3)
/* 8139402C | 93 E3 00 28 */	stw r31, 0x28(r3)
/* 81394030 | 93 E3 00 2C */	stw r31, 0x2c(r3)
/* 81394034 | 93 E3 00 30 */	stw r31, 0x30(r3)
/* 81394038 | 38 63 00 64 */	addi r3, r3, 0x64
/* 8139403C | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81394040 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81394044 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81394048 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8139404C | 4B FA 27 A5 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 81394050 | 38 7E 00 6C */	addi r3, r30, 0x6c
/* 81394054 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81394058 | 4B FA 27 99 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 8139405C | C0 22 84 14 */	lfs f1, lbl_81694814@sda21(r0)
/* 81394060 | 38 7E 00 44 */	addi r3, r30, 0x44
/* 81394064 | C0 42 84 10 */	lfs f2, lbl_81694810@sda21(r0)
/* 81394068 | 38 80 00 00 */	li r4, 0x0
/* 8139406C | C0 62 84 18 */	lfs f3, lbl_81694818@sda21(r0)
/* 81394070 | 4B FC E7 E1 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 81394074 | 93 FE 00 F8 */	stw r31, 0xf8(r30)
/* 81394078 | 93 FE 00 F4 */	stw r31, 0xf4(r30)
/* 8139407C | 93 FE 01 24 */	stw r31, 0x124(r30)
/* 81394080 | 9B FE 01 28 */	stb r31, 0x128(r30)
/* 81394084 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81394088 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8139408C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81394090 | 7C 08 03 A6 */	mtlr r0
/* 81394094 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81394098 | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene11BoardObjectFv

# .text:0x380 | 0x8139409C | size: 0x3A0
# ipl::scene::BoardObject::calc(const ipl::math::VEC2&)
.fn calc__Q33ipl5scene11BoardObjectFRCQ33ipl4math4VEC2, global
/* 8139409C | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 813940A0 | 7C 08 02 A6 */	mflr r0
/* 813940A4 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 813940A8 | DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 813940AC | F3 E1 00 E8 */	psq_st f31, 0xe8(r1), 0, qr0
/* 813940B0 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 813940B4 | 48 26 54 11 */	bl _savegpr_28
/* 813940B8 | 80 03 01 2C */	lwz r0, 0x12c(r3)
/* 813940BC | 7C 7F 1B 78 */	mr r31, r3
/* 813940C0 | 7C 9C 23 78 */	mr r28, r4
/* 813940C4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813940C8 | 41 82 00 54 */	beq .L_8139411C
/* 813940CC | 40 80 00 1C */	bge .L_813940E8
/* 813940D0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813940D4 | 41 82 00 2C */	beq .L_81394100
/* 813940D8 | 40 80 00 30 */	bge .L_81394108
/* 813940DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813940E0 | 40 80 00 18 */	bge .L_813940F8
/* 813940E4 | 48 00 00 38 */	b .L_8139411C
.L_813940E8:
/* 813940E8 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813940EC | 41 82 00 2C */	beq .L_81394118
/* 813940F0 | 40 80 00 2C */	bge .L_8139411C
/* 813940F4 | 48 00 00 1C */	b .L_81394110
.L_813940F8:
/* 813940F8 | 48 00 03 DD */	bl stt_create__Q33ipl5scene11BoardObjectFv
/* 813940FC | 48 00 00 20 */	b .L_8139411C
.L_81394100:
/* 81394100 | 48 00 0A BD */	bl stt_make_thm__Q33ipl5scene11BoardObjectFv
/* 81394104 | 48 00 00 18 */	b .L_8139411C
.L_81394108:
/* 81394108 | 48 00 0B 81 */	bl stt_fadein__Q33ipl5scene11BoardObjectFv
/* 8139410C | 48 00 00 10 */	b .L_8139411C
.L_81394110:
/* 81394110 | 48 00 0B C5 */	bl stt_pinch__Q33ipl5scene11BoardObjectFv
/* 81394114 | 48 00 00 08 */	b .L_8139411C
.L_81394118:
/* 81394118 | 48 00 0F 3D */	bl stt_stand__Q33ipl5scene11BoardObjectFv
.L_8139411C:
/* 8139411C | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81394120 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394124 | 41 82 02 F8 */	beq .L_8139441C
/* 81394128 | 88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 8139412C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394130 | 41 82 00 D0 */	beq .L_81394200
/* 81394134 | 3B C0 00 00 */	li r30, 0x0
/* 81394138 | 38 61 00 B4 */	addi r3, r1, 0xb4
/* 8139413C | 9B DF 00 D0 */	stb r30, 0xd0(r31)
/* 81394140 | 4B FA 22 E9 */	bl __ct__Q34nw4r2ut4RectFv
/* 81394144 | 38 61 00 B4 */	addi r3, r1, 0xb4
/* 81394148 | 4B FA 18 05 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8139414C | C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 81394150 | 38 61 00 70 */	addi r3, r1, 0x70
/* 81394154 | C0 61 00 B4 */	lfs f3, 0xb4(r1)
/* 81394158 | FC 20 00 50 */	fneg f1, f0
/* 8139415C | C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 81394160 | C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 81394164 | EC 83 10 28 */	fsubs f4, f3, f2
/* 81394168 | C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 8139416C | EC 41 00 28 */	fsubs f2, f1, f0
/* 81394170 | C0 02 84 1C */	lfs f0, lbl_8169481C@sda21(r0)
/* 81394174 | EC 24 18 28 */	fsubs f1, f4, f3
/* 81394178 | EC 40 10 2A */	fadds f2, f0, f2
/* 8139417C | 4B FA 23 ED */	bl __ct__Q33ipl4math4VEC2Fff
/* 81394180 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81394184 | 38 80 00 05 */	li r4, 0x5
/* 81394188 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139418C | 48 17 E1 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81394190 | C3 E3 00 04 */	lfs f31, 0x4(r3)
/* 81394194 | 38 7F 00 64 */	addi r3, r31, 0x64
/* 81394198 | C0 02 84 10 */	lfs f0, lbl_81694810@sda21(r0)
/* 8139419C | 38 81 00 58 */	addi r4, r1, 0x58
/* 813941A0 | D0 01 00 58 */	stfs f0, 0x58(r1)
/* 813941A4 | D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 813941A8 | 4B FA 26 49 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 813941AC | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 813941B0 | 38 81 00 70 */	addi r4, r1, 0x70
/* 813941B4 | 4B FA 26 3D */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 813941B8 | FC 20 F8 90 */	fmr f1, f31
/* 813941BC | C0 42 84 10 */	lfs f2, lbl_81694810@sda21(r0)
/* 813941C0 | C0 62 84 18 */	lfs f3, lbl_81694818@sda21(r0)
/* 813941C4 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 813941C8 | 38 80 00 00 */	li r4, 0x0
/* 813941CC | 4B FC E6 85 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813941D0 | 93 DF 00 5C */	stw r30, 0x5c(r31)
/* 813941D4 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 813941D8 | 4B FC E6 99 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813941DC | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 813941E0 | 3B C0 00 01 */	li r30, 0x1
/* 813941E4 | 93 DF 00 58 */	stw r30, 0x58(r31)
/* 813941E8 | 38 80 00 05 */	li r4, 0x5
/* 813941EC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813941F0 | 48 17 E1 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813941F4 | 7C 7D 1B 78 */	mr r29, r3
/* 813941F8 | 4B FC E6 79 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813941FC | 93 DD 00 14 */	stw r30, 0x14(r29)
.L_81394200:
/* 81394200 | 88 1F 00 CF */	lbz r0, 0xcf(r31)
/* 81394204 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394208 | 41 82 00 D0 */	beq .L_813942D8
/* 8139420C | 3B C0 00 00 */	li r30, 0x0
/* 81394210 | 38 61 00 A4 */	addi r3, r1, 0xa4
/* 81394214 | 9B DF 00 CF */	stb r30, 0xcf(r31)
/* 81394218 | 4B FA 22 11 */	bl __ct__Q34nw4r2ut4RectFv
/* 8139421C | 38 61 00 A4 */	addi r3, r1, 0xa4
/* 81394220 | 4B FA 17 2D */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81394224 | C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 81394228 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8139422C | C0 61 00 AC */	lfs f3, 0xac(r1)
/* 81394230 | FC 20 00 50 */	fneg f1, f0
/* 81394234 | C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 81394238 | C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8139423C | EC 83 10 28 */	fsubs f4, f3, f2
/* 81394240 | C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 81394244 | EC 41 00 28 */	fsubs f2, f1, f0
/* 81394248 | C0 02 84 1C */	lfs f0, lbl_8169481C@sda21(r0)
/* 8139424C | EC 24 18 28 */	fsubs f1, f4, f3
/* 81394250 | EC 40 10 2A */	fadds f2, f0, f2
/* 81394254 | 4B FA 23 15 */	bl __ct__Q33ipl4math4VEC2Fff
/* 81394258 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8139425C | 38 80 00 05 */	li r4, 0x5
/* 81394260 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81394264 | 48 17 E0 B5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81394268 | C3 E3 00 04 */	lfs f31, 0x4(r3)
/* 8139426C | 38 7F 00 64 */	addi r3, r31, 0x64
/* 81394270 | C0 02 84 10 */	lfs f0, lbl_81694810@sda21(r0)
/* 81394274 | 38 81 00 50 */	addi r4, r1, 0x50
/* 81394278 | D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8139427C | D0 01 00 54 */	stfs f0, 0x54(r1)
/* 81394280 | 4B FA 25 71 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 81394284 | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 81394288 | 38 81 00 68 */	addi r4, r1, 0x68
/* 8139428C | 4B FA 25 65 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 81394290 | FC 20 F8 90 */	fmr f1, f31
/* 81394294 | C0 42 84 10 */	lfs f2, lbl_81694810@sda21(r0)
/* 81394298 | C0 62 84 18 */	lfs f3, lbl_81694818@sda21(r0)
/* 8139429C | 38 7F 00 44 */	addi r3, r31, 0x44
/* 813942A0 | 38 80 00 00 */	li r4, 0x0
/* 813942A4 | 4B FC E5 AD */	bl init__Q33ipl7utility15FrameControllerFifff
/* 813942A8 | 93 DF 00 5C */	stw r30, 0x5c(r31)
/* 813942AC | 38 7F 00 44 */	addi r3, r31, 0x44
/* 813942B0 | 4B FC E5 C1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813942B4 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 813942B8 | 3B C0 00 01 */	li r30, 0x1
/* 813942BC | 93 DF 00 58 */	stw r30, 0x58(r31)
/* 813942C0 | 38 80 00 05 */	li r4, 0x5
/* 813942C4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813942C8 | 48 17 E0 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813942CC | 7C 7D 1B 78 */	mr r29, r3
/* 813942D0 | 4B FC E5 A1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813942D4 | 93 DD 00 14 */	stw r30, 0x14(r29)
.L_813942D8:
/* 813942D8 | 38 61 00 94 */	addi r3, r1, 0x94
/* 813942DC | 4B FA 21 4D */	bl __ct__Q34nw4r2ut4RectFv
/* 813942E0 | 38 61 00 94 */	addi r3, r1, 0x94
/* 813942E4 | 4B FA 16 35 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813942E8 | 38 61 00 84 */	addi r3, r1, 0x84
/* 813942EC | 4B FA 21 3D */	bl __ct__Q34nw4r2ut4RectFv
/* 813942F0 | 38 61 00 84 */	addi r3, r1, 0x84
/* 813942F4 | 4B FA 16 59 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813942F8 | C0 61 00 8C */	lfs f3, 0x8c(r1)
/* 813942FC | 38 7F 00 44 */	addi r3, r31, 0x44
/* 81394300 | C0 41 00 84 */	lfs f2, 0x84(r1)
/* 81394304 | C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 81394308 | C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8139430C | EC 43 10 28 */	fsubs f2, f3, f2
/* 81394310 | 81 9F 00 44 */	lwz r12, 0x44(r31)
/* 81394314 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81394318 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8139431C | EF E0 10 24 */	fdivs f31, f0, f2
/* 81394320 | 7D 89 03 A6 */	mtctr r12
/* 81394324 | 4E 80 04 21 */	bctrl
/* 81394328 | C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8139432C | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 81394330 | 4B FE E3 59 */	bl __ml__Q33ipl4math4VEC2CFf
/* 81394334 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81394338 | 38 7F 00 64 */	addi r3, r31, 0x64
/* 8139433C | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81394340 | C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 81394344 | C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 81394348 | EC 21 00 28 */	fsubs f1, f1, f0
/* 8139434C | 4B FE E3 3D */	bl __ml__Q33ipl4math4VEC2CFf
/* 81394350 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 81394354 | 38 81 00 28 */	addi r4, r1, 0x28
/* 81394358 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 8139435C | 38 61 00 20 */	addi r3, r1, 0x20
/* 81394360 | 48 00 00 DD */	bl __pl__Q34nw4r4math4VEC2CFRCQ34nw4r4math4VEC2
/* 81394364 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81394368 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8139436C | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81394370 | C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 81394374 | 48 00 01 15 */	bl __dv__Q34nw4r4math4VEC2CFf
/* 81394378 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8139437C | 38 9F 00 34 */	addi r4, r31, 0x34
/* 81394380 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81394384 | 7F 83 E3 78 */	mr r3, r28
/* 81394388 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8139438C | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81394390 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81394394 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 81394398 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8139439C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813943A0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813943A4 | 90 A1 00 30 */	stw r5, 0x30(r1)
/* 813943A8 | 48 00 00 95 */	bl __pl__Q34nw4r4math4VEC2CFRCQ34nw4r4math4VEC2
/* 813943AC | 90 81 00 3C */	stw r4, 0x3c(r1)
/* 813943B0 | 38 9F 00 3C */	addi r4, r31, 0x3c
/* 813943B4 | 90 61 00 38 */	stw r3, 0x38(r1)
/* 813943B8 | 38 61 00 38 */	addi r3, r1, 0x38
/* 813943BC | 48 00 00 81 */	bl __pl__Q34nw4r4math4VEC2CFRCQ34nw4r4math4VEC2
/* 813943C0 | 90 81 00 44 */	stw r4, 0x44(r1)
/* 813943C4 | 38 81 00 30 */	addi r4, r1, 0x30
/* 813943C8 | 90 61 00 40 */	stw r3, 0x40(r1)
/* 813943CC | 38 61 00 40 */	addi r3, r1, 0x40
/* 813943D0 | 48 00 00 6D */	bl __pl__Q34nw4r4math4VEC2CFRCQ34nw4r4math4VEC2
/* 813943D4 | 90 61 00 48 */	stw r3, 0x48(r1)
/* 813943D8 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 813943DC | C0 01 00 48 */	lfs f0, 0x48(r1)
/* 813943E0 | 90 81 00 4C */	stw r4, 0x4c(r1)
/* 813943E4 | EC 20 07 F2 */	fmuls f1, f0, f31
/* 813943E8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813943EC | C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 813943F0 | C0 02 84 10 */	lfs f0, lbl_81694810@sda21(r0)
/* 813943F4 | D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 813943F8 | D0 43 00 30 */	stfs f2, 0x30(r3)
/* 813943FC | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81394400 | D0 41 00 64 */	stfs f2, 0x64(r1)
/* 81394404 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81394408 | D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8139440C | D0 21 00 78 */	stfs f1, 0x78(r1)
/* 81394410 | D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 81394414 | D0 01 00 80 */	stfs f0, 0x80(r1)
/* 81394418 | 4B FD 62 ED */	bl calc__Q33ipl6layout6ObjectFv
.L_8139441C:
/* 8139441C | E3 E1 00 E8 */	psq_l f31, 0xe8(r1), 0, qr0
/* 81394420 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 81394424 | CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 81394428 | 48 26 50 E9 */	bl _restgpr_28
/* 8139442C | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 81394430 | 7C 08 03 A6 */	mtlr r0
/* 81394434 | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 81394438 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene11BoardObjectFRCQ33ipl4math4VEC2

# .text:0x720 | 0x8139443C | size: 0x4C
# nw4r::math::VEC2::operator+(const nw4r::math::VEC2&) const
.fn __pl__Q34nw4r4math4VEC2CFRCQ34nw4r4math4VEC2, global
/* 8139443C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81394440 | 7C 08 02 A6 */	mflr r0
/* 81394444 | 7C 65 1B 78 */	mr r5, r3
/* 81394448 | C0 63 00 00 */	lfs f3, 0x0(r3)
/* 8139444C | C0 24 00 00 */	lfs f1, 0x0(r4)
/* 81394450 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81394454 | C0 45 00 04 */	lfs f2, 0x4(r5)
/* 81394458 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 8139445C | EC 23 08 2A */	fadds f1, f3, f1
/* 81394460 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81394464 | EC 42 00 2A */	fadds f2, f2, f0
/* 81394468 | 4B FD E0 75 */	bl __ct__Q34nw4r4math4VEC2Fff
/* 8139446C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81394470 | 7C 64 1B 78 */	mr r4, r3
/* 81394474 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81394478 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8139447C | 7C 08 03 A6 */	mtlr r0
/* 81394480 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81394484 | 4E 80 00 20 */	blr
.endfn __pl__Q34nw4r4math4VEC2CFRCQ34nw4r4math4VEC2

# .text:0x76C | 0x81394488 | size: 0x4C
# nw4r::math::VEC2::operator/(float) const
.fn __dv__Q34nw4r4math4VEC2CFf, global
/* 81394488 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139448C | 7C 08 02 A6 */	mflr r0
/* 81394490 | C0 02 84 18 */	lfs f0, lbl_81694818@sda21(r0)
/* 81394494 | 7C 64 1B 78 */	mr r4, r3
/* 81394498 | C0 43 00 00 */	lfs f2, 0x0(r3)
/* 8139449C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813944A0 | EC 60 08 24 */	fdivs f3, f0, f1
/* 813944A4 | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 813944A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813944AC | EC 23 00 B2 */	fmuls f1, f3, f2
/* 813944B0 | EC 43 00 32 */	fmuls f2, f3, f0
/* 813944B4 | 4B FD E0 29 */	bl __ct__Q34nw4r4math4VEC2Fff
/* 813944B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813944BC | 7C 64 1B 78 */	mr r4, r3
/* 813944C0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813944C4 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813944C8 | 7C 08 03 A6 */	mtlr r0
/* 813944CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813944D0 | 4E 80 00 20 */	blr
.endfn __dv__Q34nw4r4math4VEC2CFf

# .text:0x7B8 | 0x813944D4 | size: 0x6E8
# ipl::scene::BoardObject::stt_create()
.fn stt_create__Q33ipl5scene11BoardObjectFv, global
/* 813944D4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813944D8 | 7C 08 02 A6 */	mflr r0
/* 813944DC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813944E0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813944E4 | 48 26 4F C9 */	bl _savegpr_22
/* 813944E8 | 83 83 00 24 */	lwz r28, 0x24(r3)
/* 813944EC | 3F A0 81 65 */	lis r29, lbl_8164B1E8@ha
/* 813944F0 | 7C 7A 1B 78 */	mr r26, r3
/* 813944F4 | C0 3C 00 08 */	lfs f1, 0x8(r28)
/* 813944F8 | 3B BD B1 E8 */	addi r29, r29, lbl_8164B1E8@l
/* 813944FC | C0 1C 00 04 */	lfs f0, 0x4(r28)
/* 81394500 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81394504 | D0 23 00 38 */	stfs f1, 0x38(r3)
/* 81394508 | 88 1C 00 0F */	lbz r0, 0xf(r28)
/* 8139450C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394510 | 90 03 00 DC */	stw r0, 0xdc(r3)
/* 81394514 | 40 82 00 10 */	bne .L_81394524
/* 81394518 | 38 00 00 00 */	li r0, 0x0
/* 8139451C | 90 03 00 D8 */	stw r0, 0xd8(r3)
/* 81394520 | 48 00 00 20 */	b .L_81394540
.L_81394524:
/* 81394524 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81394528 | 40 82 00 10 */	bne .L_81394538
/* 8139452C | 38 00 00 02 */	li r0, 0x2
/* 81394530 | 90 03 00 D8 */	stw r0, 0xd8(r3)
/* 81394534 | 48 00 00 0C */	b .L_81394540
.L_81394538:
/* 81394538 | 38 00 00 01 */	li r0, 0x1
/* 8139453C | 90 03 00 D8 */	stw r0, 0xd8(r3)
.L_81394540:
/* 81394540 | 80 83 00 D8 */	lwz r4, 0xd8(r3)
/* 81394544 | 38 DD 02 E0 */	addi r6, r29, 0x2e0
/* 81394548 | 88 1C 00 0C */	lbz r0, 0xc(r28)
/* 8139454C | 38 A0 00 04 */	li r5, 0x4
/* 81394550 | 1C E4 00 28 */	mulli r7, r4, 0x28
/* 81394554 | 80 9A 00 C4 */	lwz r4, 0xc4(r26)
/* 81394558 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8139455C | 90 03 00 E0 */	stw r0, 0xe0(r3)
/* 81394560 | 38 60 05 80 */	li r3, 0x580
/* 81394564 | 7E E6 3A 14 */	add r23, r6, r7
/* 81394568 | 48 26 3B 49 */	bl __nw__FUlPQ23EGG4Heapi
/* 8139456C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394570 | 41 82 00 18 */	beq .L_81394588
/* 81394574 | 80 9A 00 C4 */	lwz r4, 0xc4(r26)
/* 81394578 | 38 CD 85 F7 */	li r6, lbl_81696637@sda21
/* 8139457C | 80 BA 00 1C */	lwz r5, 0x1c(r26)
/* 81394580 | 80 F7 00 00 */	lwz r7, 0x0(r23)
/* 81394584 | 4B FD 5A A1 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81394588:
/* 81394588 | 90 7A 00 14 */	stw r3, 0x14(r26)
/* 8139458C | 38 A0 00 01 */	li r5, 0x1
/* 81394590 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 81394594 | 4B FD 5D D9 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 81394598 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 8139459C | 38 A0 00 00 */	li r5, 0x0
/* 813945A0 | 80 97 00 08 */	lwz r4, 0x8(r23)
/* 813945A4 | 4B FD 5D C9 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813945A8 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 813945AC | 38 A0 00 00 */	li r5, 0x0
/* 813945B0 | 80 97 00 0C */	lwz r4, 0xc(r23)
/* 813945B4 | 4B FD 5D B9 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813945B8 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 813945BC | 38 A0 00 00 */	li r5, 0x0
/* 813945C0 | 80 97 00 10 */	lwz r4, 0x10(r23)
/* 813945C4 | 4B FD 5D A9 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813945C8 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 813945CC | 38 A0 00 00 */	li r5, 0x0
/* 813945D0 | 80 97 00 14 */	lwz r4, 0x14(r23)
/* 813945D4 | 4B FD 5D 99 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813945D8 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 813945DC | 38 A0 00 00 */	li r5, 0x0
/* 813945E0 | 80 97 00 18 */	lwz r4, 0x18(r23)
/* 813945E4 | 4B FD 5D 89 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813945E8 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 813945EC | 38 AD 85 FB */	li r5, lbl_8169663B@sda21
/* 813945F0 | 80 97 00 1C */	lwz r4, 0x1c(r23)
/* 813945F4 | 38 C0 00 00 */	li r6, 0x0
/* 813945F8 | 38 E0 00 00 */	li r7, 0x0
/* 813945FC | 4B FD 5E E5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81394600 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81394604 | 38 AD 85 FB */	li r5, lbl_8169663B@sda21
/* 81394608 | 80 97 00 20 */	lwz r4, 0x20(r23)
/* 8139460C | 38 C0 00 00 */	li r6, 0x0
/* 81394610 | 38 E0 00 00 */	li r7, 0x0
/* 81394614 | 4B FD 5E CD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81394618 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 8139461C | 38 AD 85 FB */	li r5, lbl_8169663B@sda21
/* 81394620 | 80 97 00 24 */	lwz r4, 0x24(r23)
/* 81394624 | 38 C0 00 00 */	li r6, 0x0
/* 81394628 | 38 E0 00 00 */	li r7, 0x0
/* 8139462C | 4B FD 5E B5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81394630 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81394634 | 4B FD 60 01 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81394638 | 80 9A 00 C4 */	lwz r4, 0xc4(r26)
/* 8139463C | 38 60 00 34 */	li r3, 0x34
/* 81394640 | 38 A0 00 04 */	li r5, 0x4
/* 81394644 | 48 26 3A 6D */	bl __nw__FUlPQ23EGG4Heapi
/* 81394648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139464C | 7C 77 1B 78 */	mr r23, r3
/* 81394650 | 41 82 00 84 */	beq .L_813946D4
/* 81394654 | 80 BA 00 14 */	lwz r5, 0x14(r26)
/* 81394658 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 8139465C | 80 1A 00 C8 */	lwz r0, 0xc8(r26)
/* 81394660 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 81394664 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81394668 | 3B 05 02 98 */	addi r24, r5, 0x298
/* 8139466C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81394670 | 93 43 00 04 */	stw r26, 0x4(r3)
/* 81394674 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81394678 | 41 82 00 1C */	beq .L_81394694
/* 8139467C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81394680 | 7F 43 D3 78 */	mr r3, r26
/* 81394684 | 7E E4 BB 78 */	mr r4, r23
/* 81394688 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8139468C | 7D 89 03 A6 */	mtctr r12
/* 81394690 | 4E 80 04 21 */	bctrl
.L_81394694:
/* 81394694 | 38 77 00 08 */	addi r3, r23, 0x8
/* 81394698 | 38 80 00 08 */	li r4, 0x8
/* 8139469C | 48 17 D9 C1 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813946A0 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813946A4 | 38 77 00 18 */	addi r3, r23, 0x18
/* 813946A8 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813946AC | 38 80 00 08 */	li r4, 0x8
/* 813946B0 | 90 B7 00 00 */	stw r5, 0x0(r23)
/* 813946B4 | 93 17 00 24 */	stw r24, 0x24(r23)
/* 813946B8 | 48 17 D9 A5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813946BC | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 813946C0 | 38 00 00 00 */	li r0, 0x0
/* 813946C4 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 813946C8 | 90 77 00 00 */	stw r3, 0x0(r23)
/* 813946CC | 90 17 00 2C */	stw r0, 0x2c(r23)
/* 813946D0 | 98 17 00 30 */	stb r0, 0x30(r23)
.L_813946D4:
/* 813946D4 | 92 FA 00 18 */	stw r23, 0x18(r26)
/* 813946D8 | 7E E3 BB 78 */	mr r3, r23
/* 813946DC | 80 9A 00 14 */	lwz r4, 0x14(r26)
/* 813946E0 | 81 97 00 00 */	lwz r12, 0x0(r23)
/* 813946E4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813946E8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813946EC | 7D 89 03 A6 */	mtctr r12
/* 813946F0 | 4E 80 04 21 */	bctrl
/* 813946F4 | 80 7A 00 18 */	lwz r3, 0x18(r26)
/* 813946F8 | 38 80 00 00 */	li r4, 0x0
/* 813946FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81394700 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81394704 | 7D 89 03 A6 */	mtctr r12
/* 81394708 | 4E 80 04 21 */	bctrl
/* 8139470C | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81394710 | 38 9D 03 77 */	addi r4, r29, 0x377
/* 81394714 | 38 A0 00 01 */	li r5, 0x1
/* 81394718 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139471C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81394720 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81394724 | 7D 89 03 A6 */	mtctr r12
/* 81394728 | 4E 80 04 21 */	bctrl
/* 8139472C | 7C 64 1B 78 */	mr r4, r3
/* 81394730 | 80 7A 00 18 */	lwz r3, 0x18(r26)
/* 81394734 | 38 A0 00 01 */	li r5, 0x1
/* 81394738 | 4B FD 6A 95 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 8139473C | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81394740 | 38 8D 86 01 */	li r4, lbl_81696641@sda21
/* 81394744 | 38 A0 00 01 */	li r5, 0x1
/* 81394748 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139474C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81394750 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81394754 | 7D 89 03 A6 */	mtctr r12
/* 81394758 | 4E 80 04 21 */	bctrl
/* 8139475C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394760 | 41 82 00 0C */	beq .L_8139476C
/* 81394764 | 38 80 00 00 */	li r4, 0x0
/* 81394768 | 4B FA FC AD */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_8139476C:
/* 8139476C | 80 1A 00 D8 */	lwz r0, 0xd8(r26)
/* 81394770 | 38 A0 00 00 */	li r5, 0x0
/* 81394774 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394778 | 40 82 00 1C */	bne .L_81394794
/* 8139477C | 80 7C 01 20 */	lwz r3, 0x120(r28)
/* 81394780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394784 | 41 82 00 24 */	beq .L_813947A8
/* 81394788 | 80 1A 00 24 */	lwz r0, 0x24(r26)
/* 8139478C | 7C A0 1A 14 */	add r5, r0, r3
/* 81394790 | 48 00 00 18 */	b .L_813947A8
.L_81394794:
/* 81394794 | 80 7C 01 1C */	lwz r3, 0x11c(r28)
/* 81394798 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139479C | 41 82 00 0C */	beq .L_813947A8
/* 813947A0 | 80 1A 00 24 */	lwz r0, 0x24(r26)
/* 813947A4 | 7C A0 1A 14 */	add r5, r0, r3
.L_813947A8:
/* 813947A8 | 7F 43 D3 78 */	mr r3, r26
/* 813947AC | 38 9D 03 80 */	addi r4, r29, 0x380
/* 813947B0 | 48 00 0F 4D */	bl set_thumb_text__Q33ipl5scene11BoardObjectFPCcPCw
/* 813947B4 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 813947B8 | 38 8D 85 F0 */	li r4, lbl_81696630@sda21
/* 813947BC | 38 A0 00 01 */	li r5, 0x1
/* 813947C0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813947C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813947C8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813947CC | 7D 89 03 A6 */	mtctr r12
/* 813947D0 | 4E 80 04 21 */	bctrl
/* 813947D4 | 38 80 00 00 */	li r4, 0x0
/* 813947D8 | 4B FA FC 3D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813947DC | 80 7C 01 24 */	lwz r3, 0x124(r28)
/* 813947E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813947E4 | 41 82 00 50 */	beq .L_81394834
/* 813947E8 | 80 1A 00 24 */	lwz r0, 0x24(r26)
/* 813947EC | 3E E0 81 09 */	lis r23, smArg__Q23ipl6System@ha
/* 813947F0 | 3A F7 90 08 */	addi r23, r23, smArg__Q23ipl6System@l
/* 813947F4 | 7F 00 1A 14 */	add r24, r0, r3
/* 813947F8 | 80 77 00 70 */	lwz r3, 0x70(r23)
/* 813947FC | 7F 04 C3 78 */	mr r4, r24
/* 81394800 | 4B FA A4 C1 */	bl isValid__Q33ipl6nigaoe7ManagerCFPC12RFLiCharData
/* 81394804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394808 | 41 82 00 2C */	beq .L_81394834
/* 8139480C | 3D 00 81 39 */	lis r8, make_icon_cb___Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv@ha
/* 81394810 | 80 77 00 70 */	lwz r3, 0x70(r23)
/* 81394814 | 80 9A 00 C4 */	lwz r4, 0xc4(r26)
/* 81394818 | 7F 07 C3 78 */	mr r7, r24
/* 8139481C | 7F 49 D3 78 */	mr r9, r26
/* 81394820 | 39 08 3E F4 */	addi r8, r8, make_icon_cb___Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv@l
/* 81394824 | 38 A0 00 4C */	li r5, 0x4c
/* 81394828 | 38 C0 00 4C */	li r6, 0x4c
/* 8139482C | 4B FA A2 F9 */	bl create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiP12RFLiCharDataPFPQ33ipl6nigaoe6ObjectPv_vPv
/* 81394830 | 90 7A 00 20 */	stw r3, 0x20(r26)
.L_81394834:
/* 81394834 | 3B 60 00 00 */	li r27, 0x0
/* 81394838 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8139483C | 7F 77 DB 78 */	mr r23, r27
/* 81394840 | 3B 20 00 00 */	li r25, 0x0
/* 81394844 | 7F 7E DB 78 */	mr r30, r27
/* 81394848 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8139484C | 3B 00 00 01 */	li r24, 0x1
.L_81394850:
/* 81394850 | 7C DC CA 14 */	add r6, r28, r25
/* 81394854 | 80 06 01 28 */	lwz r0, 0x128(r6)
/* 81394858 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139485C | 40 82 00 F8 */	bne .L_81394954
/* 81394860 | 80 9A 00 24 */	lwz r4, 0x24(r26)
/* 81394864 | 7F 43 D3 78 */	mr r3, r26
/* 81394868 | 80 06 01 2C */	lwz r0, 0x12c(r6)
/* 8139486C | 38 A1 00 14 */	addi r5, r1, 0x14
/* 81394870 | 7E C4 02 14 */	add r22, r4, r0
/* 81394874 | 7E C4 B3 78 */	mr r4, r22
/* 81394878 | 48 00 18 45 */	bl arc_init_handle__Q33ipl5scene11BoardObjectFPvP9ARCHandle
/* 8139487C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394880 | 41 82 00 40 */	beq .L_813948C0
/* 81394884 | 38 61 00 14 */	addi r3, r1, 0x14
/* 81394888 | 38 9D 03 89 */	addi r4, r29, 0x389
/* 8139488C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81394890 | 48 1D C5 B1 */	bl ARCOpen
/* 81394894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394898 | 41 82 00 28 */	beq .L_813948C0
/* 8139489C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813948A0 | 48 1D CC F5 */	bl ARCGetStartOffset
/* 813948A4 | 7C 16 1A 14 */	add r0, r22, r3
/* 813948A8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813948AC | 90 1A 00 28 */	stw r0, 0x28(r26)
/* 813948B0 | 48 1D CC ED */	bl ARCGetLength
/* 813948B4 | 90 7A 00 30 */	stw r3, 0x30(r26)
/* 813948B8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813948BC | 48 1D CC E9 */	bl ARCClose
.L_813948C0:
/* 813948C0 | 80 7A 00 28 */	lwz r3, 0x28(r26)
/* 813948C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813948C8 | 41 82 01 74 */	beq .L_81394A3C
/* 813948CC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813948D0 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 813948D4 | 2C 00 00 10 */	cmpwi r0, 0x10
/* 813948D8 | 40 82 01 64 */	bne .L_81394A3C
/* 813948DC | 48 1C 79 91 */	bl CXGetUncompressedSize
/* 813948E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813948E4 | 7C 76 1B 78 */	mr r22, r3
/* 813948E8 | 41 82 01 54 */	beq .L_81394A3C
/* 813948EC | 28 03 78 00 */	cmplwi r3, 0x7800
/* 813948F0 | 40 80 01 4C */	bge .L_81394A3C
/* 813948F4 | 80 9A 00 C4 */	lwz r4, 0xc4(r26)
/* 813948F8 | 38 A0 00 20 */	li r5, 0x20
/* 813948FC | 48 26 37 D9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81394900 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394904 | 90 7A 00 2C */	stw r3, 0x2c(r26)
/* 81394908 | 7C 65 1B 78 */	mr r5, r3
/* 8139490C | 41 82 01 30 */	beq .L_81394A3C
/* 81394910 | 80 7A 00 28 */	lwz r3, 0x28(r26)
/* 81394914 | 80 9A 00 30 */	lwz r4, 0x30(r26)
/* 81394918 | 48 1C 7C 39 */	bl fn_8155C550
/* 8139491C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394920 | 40 82 00 24 */	bne .L_81394944
/* 81394924 | 80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 81394928 | 7E C4 B3 78 */	mr r4, r22
/* 8139492C | 48 19 90 39 */	bl DCStoreRange
/* 81394930 | 80 9A 00 14 */	lwz r4, 0x14(r26)
/* 81394934 | 7F 43 D3 78 */	mr r3, r26
/* 81394938 | 80 BA 00 2C */	lwz r5, 0x2c(r26)
/* 8139493C | 48 00 10 85 */	bl change_ltrtex__Q33ipl5scene11BoardObjectFPQ33ipl6layout6ObjectPv
/* 81394940 | 48 00 00 FC */	b .L_81394A3C
.L_81394944:
/* 81394944 | 80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 81394948 | 48 26 37 A5 */	bl __dla__FPv
/* 8139494C | 93 DA 00 2C */	stw r30, 0x2c(r26)
/* 81394950 | 48 00 00 EC */	b .L_81394A3C
.L_81394954:
/* 81394954 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81394958 | 40 82 00 E4 */	bne .L_81394A3C
/* 8139495C | 80 E6 01 30 */	lwz r7, 0x130(r6)
/* 81394960 | 7F 43 D3 78 */	mr r3, r26
/* 81394964 | 80 BF 00 28 */	lwz r5, 0x28(r31)
/* 81394968 | 38 9A 00 F4 */	addi r4, r26, 0xf4
/* 8139496C | 80 06 01 2C */	lwz r0, 0x12c(r6)
/* 81394970 | 39 07 00 04 */	addi r8, r7, 0x4
/* 81394974 | 81 3A 00 24 */	lwz r9, 0x24(r26)
/* 81394978 | 7C A6 2B 78 */	mr r6, r5
/* 8139497C | 7C E9 02 14 */	add r7, r9, r0
/* 81394980 | 48 00 0B 65 */	bl create_picture__Q33ipl5scene11BoardObjectFPQ33ipl5scene7picturePQ23EGG4HeapPQ23EGG4HeapPUcUl
/* 81394984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394988 | 41 82 00 B4 */	beq .L_81394A3C
/* 8139498C | 80 9A 00 C4 */	lwz r4, 0xc4(r26)
/* 81394990 | 38 60 00 34 */	li r3, 0x34
/* 81394994 | 38 A0 00 04 */	li r5, 0x4
/* 81394998 | 48 26 37 19 */	bl __nw__FUlPQ23EGG4Heapi
/* 8139499C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813949A0 | 41 82 00 20 */	beq .L_813949C0
/* 813949A4 | 80 9A 00 C4 */	lwz r4, 0xc4(r26)
/* 813949A8 | 38 A0 00 00 */	li r5, 0x0
/* 813949AC | 38 C0 00 00 */	li r6, 0x0
/* 813949B0 | 38 E0 00 40 */	li r7, 0x40
/* 813949B4 | 39 00 00 30 */	li r8, 0x30
/* 813949B8 | 39 20 00 04 */	li r9, 0x4
/* 813949BC | 4B FC E8 ED */	bl __ct__Q33ipl7utility7CaptureFPQ23EGG4Heapiiii9_GXTexFmt
.L_813949C0:
/* 813949C0 | 90 7A 01 24 */	stw r3, 0x124(r26)
/* 813949C4 | 38 8D 86 01 */	li r4, lbl_81696641@sda21
/* 813949C8 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 813949CC | 38 A0 00 01 */	li r5, 0x1
/* 813949D0 | 9A FA 01 28 */	stb r23, 0x128(r26)
/* 813949D4 | 9B 1A 00 CE */	stb r24, 0xce(r26)
/* 813949D8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813949DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813949E0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813949E4 | 7D 89 03 A6 */	mtctr r12
/* 813949E8 | 4E 80 04 21 */	bctrl
/* 813949EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813949F0 | 41 82 00 14 */	beq .L_81394A04
/* 813949F4 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813949F8 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813949FC | 60 00 00 01 */	ori r0, r0, 0x1
/* 81394A00 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_81394A04:
/* 81394A04 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81394A08 | 38 8D 86 07 */	li r4, lbl_81696647@sda21
/* 81394A0C | 38 A0 00 01 */	li r5, 0x1
/* 81394A10 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81394A14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81394A18 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81394A1C | 7D 89 03 A6 */	mtctr r12
/* 81394A20 | 4E 80 04 21 */	bctrl
/* 81394A24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394A28 | 41 82 00 14 */	beq .L_81394A3C
/* 81394A2C | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81394A30 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81394A34 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81394A38 | 98 03 00 CF */	stb r0, 0xcf(r3)
.L_81394A3C:
/* 81394A3C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81394A40 | 3B 39 00 0C */	addi r25, r25, 0xc
/* 81394A44 | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 81394A48 | 41 80 FE 08 */	blt .L_81394850
/* 81394A4C | 80 1A 00 A8 */	lwz r0, 0xa8(r26)
/* 81394A50 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81394A54 | 40 82 00 BC */	bne .L_81394B10
/* 81394A58 | 48 1A 12 29 */	bl OSGetTime
/* 81394A5C | 81 1C 00 10 */	lwz r8, 0x10(r28)
/* 81394A60 | 6C 66 80 00 */	xoris r6, r3, 0x8000
/* 81394A64 | 80 FC 00 14 */	lwz r7, 0x14(r28)
/* 81394A68 | 6D 00 80 00 */	xoris r0, r8, 0x8000
/* 81394A6C | 7C A4 38 10 */	subfc r5, r4, r7
/* 81394A70 | 7C C6 01 10 */	subfe r6, r6, r0
/* 81394A74 | 7C C0 01 10 */	subfe r6, r0, r0
/* 81394A78 | 7C C6 00 D1 */	neg. r6, r6
/* 81394A7C | 41 82 00 B4 */	beq .L_81394B30
/* 81394A80 | 3C C0 80 00 */	lis r6, 0x8000
/* 81394A84 | 7C A7 20 10 */	subfc r5, r7, r4
/* 81394A88 | 80 E6 00 F8 */	lwz r7, 0xf8(r6)
/* 81394A8C | 7C 08 19 10 */	subfe r0, r8, r3
/* 81394A90 | 38 80 54 60 */	li r4, 0x5460
/* 81394A94 | 38 C0 00 00 */	li r6, 0x0
/* 81394A98 | 54 E7 F0 BE */	srwi r7, r7, 2
/* 81394A9C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81394AA0 | 7C 67 20 16 */	mulhwu r3, r7, r4
/* 81394AA4 | 7C 86 21 D6 */	mullw r4, r6, r4
/* 81394AA8 | 7C 63 22 14 */	add r3, r3, r4
/* 81394AAC | 1C C7 54 60 */	mulli r6, r7, 0x5460
/* 81394AB0 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 81394AB4 | 7C 66 28 10 */	subfc r3, r6, r5
/* 81394AB8 | 7C 84 01 10 */	subfe r4, r4, r0
/* 81394ABC | 7C 80 01 10 */	subfe r4, r0, r0
/* 81394AC0 | 7C 84 00 D1 */	neg. r4, r4
/* 81394AC4 | 41 82 00 28 */	beq .L_81394AEC
/* 81394AC8 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81394ACC | 38 80 00 06 */	li r4, 0x6
/* 81394AD0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81394AD4 | 48 17 D8 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81394AD8 | 7C 77 1B 78 */	mr r23, r3
/* 81394ADC | 4B FC DD 95 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81394AE0 | 38 00 00 01 */	li r0, 0x1
/* 81394AE4 | 90 17 00 14 */	stw r0, 0x14(r23)
/* 81394AE8 | 48 00 00 48 */	b .L_81394B30
.L_81394AEC:
/* 81394AEC | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81394AF0 | 38 80 00 07 */	li r4, 0x7
/* 81394AF4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81394AF8 | 48 17 D8 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81394AFC | 7C 77 1B 78 */	mr r23, r3
/* 81394B00 | 4B FC DD 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81394B04 | 38 00 00 01 */	li r0, 0x1
/* 81394B08 | 90 17 00 14 */	stw r0, 0x14(r23)
/* 81394B0C | 48 00 00 24 */	b .L_81394B30
.L_81394B10:
/* 81394B10 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81394B14 | 38 80 00 08 */	li r4, 0x8
/* 81394B18 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81394B1C | 48 17 D7 FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81394B20 | 7C 77 1B 78 */	mr r23, r3
/* 81394B24 | 4B FC DD 4D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81394B28 | 38 00 00 01 */	li r0, 0x1
/* 81394B2C | 90 17 00 14 */	stw r0, 0x14(r23)
.L_81394B30:
/* 81394B30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81394B34 | 38 80 00 04 */	li r4, 0x4
/* 81394B38 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81394B3C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81394B40 | 48 07 65 F9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81394B44 | 88 03 0F 9B */	lbz r0, 0xf9b(r3)
/* 81394B48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394B4C | 41 82 00 18 */	beq .L_81394B64
/* 81394B50 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81394B54 | C0 3A 00 34 */	lfs f1, 0x34(r26)
/* 81394B58 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81394B5C | 38 9D 03 9C */	addi r4, r29, 0x39c
/* 81394B60 | 4B FD 6B 41 */	bl startSEwithPos__Q33ipl3snd6SystemFPCcf
.L_81394B64:
/* 81394B64 | 88 1A 00 CE */	lbz r0, 0xce(r26)
/* 81394B68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394B6C | 41 82 00 10 */	beq .L_81394B7C
/* 81394B70 | 38 00 00 01 */	li r0, 0x1
/* 81394B74 | 90 1A 01 2C */	stw r0, 0x12c(r26)
/* 81394B78 | 48 00 00 2C */	b .L_81394BA4
.L_81394B7C:
/* 81394B7C | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 81394B80 | 38 80 00 00 */	li r4, 0x0
/* 81394B84 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81394B88 | 48 17 D7 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81394B8C | 7C 77 1B 78 */	mr r23, r3
/* 81394B90 | 4B FC DC E1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81394B94 | 38 60 00 01 */	li r3, 0x1
/* 81394B98 | 38 00 00 02 */	li r0, 0x2
/* 81394B9C | 90 77 00 14 */	stw r3, 0x14(r23)
/* 81394BA0 | 90 1A 01 2C */	stw r0, 0x12c(r26)
.L_81394BA4:
/* 81394BA4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81394BA8 | 48 26 49 51 */	bl _restgpr_22
/* 81394BAC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81394BB0 | 7C 08 03 A6 */	mtlr r0
/* 81394BB4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81394BB8 | 4E 80 00 20 */	blr
.endfn stt_create__Q33ipl5scene11BoardObjectFv

# .text:0xEA0 | 0x81394BBC | size: 0xCC
# ipl::scene::BoardObject::stt_make_thm()
.fn stt_make_thm__Q33ipl5scene11BoardObjectFv, global
/* 81394BBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81394BC0 | 7C 08 02 A6 */	mflr r0
/* 81394BC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81394BC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81394BCC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81394BD0 | 7C 7E 1B 78 */	mr r30, r3
/* 81394BD4 | 88 03 01 28 */	lbz r0, 0x128(r3)
/* 81394BD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394BDC | 41 82 00 94 */	beq .L_81394C70
/* 81394BE0 | 80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 81394BE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394BE8 | 41 82 00 10 */	beq .L_81394BF8
/* 81394BEC | 48 26 35 01 */	bl __dla__FPv
/* 81394BF0 | 38 00 00 00 */	li r0, 0x0
/* 81394BF4 | 90 1E 00 F4 */	stw r0, 0xf4(r30)
.L_81394BF8:
/* 81394BF8 | 80 1E 01 24 */	lwz r0, 0x124(r30)
/* 81394BFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394C00 | 41 82 00 48 */	beq .L_81394C48
/* 81394C04 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 81394C08 | 3C 80 81 65 */	lis r4, lbl_8164B595@ha
/* 81394C0C | 38 84 B5 95 */	addi r4, r4, lbl_8164B595@l
/* 81394C10 | 38 A0 00 01 */	li r5, 0x1
/* 81394C14 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81394C18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81394C1C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81394C20 | 7D 89 03 A6 */	mtctr r12
/* 81394C24 | 4E 80 04 21 */	bctrl
/* 81394C28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81394C2C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81394C30 | 7D 89 03 A6 */	mtctr r12
/* 81394C34 | 4E 80 04 21 */	bctrl
/* 81394C38 | 80 BE 01 24 */	lwz r5, 0x124(r30)
/* 81394C3C | 38 80 00 00 */	li r4, 0x0
/* 81394C40 | 38 A5 00 14 */	addi r5, r5, 0x14
/* 81394C44 | 48 19 31 D9 */	bl fn_81527E1C
.L_81394C48:
/* 81394C48 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 81394C4C | 38 80 00 00 */	li r4, 0x0
/* 81394C50 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81394C54 | 48 17 D6 C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81394C58 | 7C 7F 1B 78 */	mr r31, r3
/* 81394C5C | 4B FC DC 15 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81394C60 | 38 60 00 01 */	li r3, 0x1
/* 81394C64 | 38 00 00 02 */	li r0, 0x2
/* 81394C68 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 81394C6C | 90 1E 01 2C */	stw r0, 0x12c(r30)
.L_81394C70:
/* 81394C70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81394C74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81394C78 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81394C7C | 7C 08 03 A6 */	mtlr r0
/* 81394C80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81394C84 | 4E 80 00 20 */	blr
.endfn stt_make_thm__Q33ipl5scene11BoardObjectFv

# .text:0xF6C | 0x81394C88 | size: 0x4C
# ipl::scene::BoardObject::stt_fadein()
.fn stt_fadein__Q33ipl5scene11BoardObjectFv, global
/* 81394C88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81394C8C | 7C 08 02 A6 */	mflr r0
/* 81394C90 | 38 80 00 00 */	li r4, 0x0
/* 81394C94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81394C98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81394C9C | 7C 7F 1B 78 */	mr r31, r3
/* 81394CA0 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 81394CA4 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81394CA8 | 48 17 D6 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81394CAC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81394CB0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81394CB4 | 41 82 00 0C */	beq .L_81394CC0
/* 81394CB8 | 38 00 00 03 */	li r0, 0x3
/* 81394CBC | 90 1F 01 2C */	stw r0, 0x12c(r31)
.L_81394CC0:
/* 81394CC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81394CC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81394CC8 | 7C 08 03 A6 */	mtlr r0
/* 81394CCC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81394CD0 | 4E 80 00 20 */	blr
.endfn stt_fadein__Q33ipl5scene11BoardObjectFv

# .text:0xFB8 | 0x81394CD4 | size: 0x380
# ipl::scene::BoardObject::stt_pinch()
.fn stt_pinch__Q33ipl5scene11BoardObjectFv, global
/* 81394CD4 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81394CD8 | 7C 08 02 A6 */	mflr r0
/* 81394CDC | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81394CE0 | DB E1 00 70 */	stfd f31, 0x70(r1)
/* 81394CE4 | F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 81394CE8 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 81394CEC | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 81394CF0 | 7C 7E 1B 78 */	mr r30, r3
/* 81394CF4 | 80 63 01 38 */	lwz r3, 0x138(r3)
/* 81394CF8 | 4B FA 0C D1 */	bl getController__Q23ipl6SystemFi
/* 81394CFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394D00 | 7C 7F 1B 78 */	mr r31, r3
/* 81394D04 | 41 82 02 E8 */	beq .L_81394FEC
/* 81394D08 | 38 61 00 58 */	addi r3, r1, 0x58
/* 81394D0C | 4B FA 17 1D */	bl __ct__Q34nw4r2ut4RectFv
/* 81394D10 | 38 61 00 58 */	addi r3, r1, 0x58
/* 81394D14 | 4B FA 0C 05 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81394D18 | 38 61 00 48 */	addi r3, r1, 0x48
/* 81394D1C | 4B FA 17 0D */	bl __ct__Q34nw4r2ut4RectFv
/* 81394D20 | 38 61 00 48 */	addi r3, r1, 0x48
/* 81394D24 | 4B FA 0C 29 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81394D28 | C0 61 00 60 */	lfs f3, 0x60(r1)
/* 81394D2C | 7F E3 FB 78 */	mr r3, r31
/* 81394D30 | C0 41 00 58 */	lfs f2, 0x58(r1)
/* 81394D34 | C0 21 00 50 */	lfs f1, 0x50(r1)
/* 81394D38 | C0 01 00 48 */	lfs f0, 0x48(r1)
/* 81394D3C | EC 43 10 28 */	fsubs f2, f3, f2
/* 81394D40 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81394D44 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81394D48 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81394D4C | EF E0 10 24 */	fdivs f31, f0, f2
/* 81394D50 | 7D 89 03 A6 */	mtctr r12
/* 81394D54 | 4E 80 04 21 */	bctrl
/* 81394D58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394D5C | 41 82 00 DC */	beq .L_81394E38
/* 81394D60 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81394D64 | 7F E3 FB 78 */	mr r3, r31
/* 81394D68 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81394D6C | 7D 89 03 A6 */	mtctr r12
/* 81394D70 | 4E 80 04 21 */	bctrl
/* 81394D74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394D78 | 41 82 00 C0 */	beq .L_81394E38
/* 81394D7C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81394D80 | 7F E3 FB 78 */	mr r3, r31
/* 81394D84 | 80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 81394D88 | 80 1E 00 40 */	lwz r0, 0x40(r30)
/* 81394D8C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81394D90 | 90 81 00 30 */	stw r4, 0x30(r1)
/* 81394D94 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81394D98 | 7D 89 03 A6 */	mtctr r12
/* 81394D9C | 4E 80 04 21 */	bctrl
/* 81394DA0 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81394DA4 | C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 81394DA8 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 81394DAC | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81394DB0 | EC A1 07 F2 */	fmuls f5, f1, f31
/* 81394DB4 | C0 7E 01 34 */	lfs f3, 0x134(r30)
/* 81394DB8 | C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 81394DBC | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 81394DC0 | EC 85 00 28 */	fsubs f4, f5, f0
/* 81394DC4 | C0 01 00 34 */	lfs f0, 0x34(r1)
/* 81394DC8 | EC 63 10 28 */	fsubs f3, f3, f2
/* 81394DCC | C0 42 84 10 */	lfs f2, lbl_81694810@sda21(r0)
/* 81394DD0 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81394DD4 | EC 21 20 28 */	fsubs f1, f1, f4
/* 81394DD8 | EC 00 18 28 */	fsubs f0, f0, f3
/* 81394DDC | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81394DE0 | EC 21 00 72 */	fmuls f1, f1, f1
/* 81394DE4 | D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 81394DE8 | EC 00 00 32 */	fmuls f0, f0, f0
/* 81394DEC | D0 9E 00 3C */	stfs f4, 0x3c(r30)
/* 81394DF0 | EF E1 00 2A */	fadds f31, f1, f0
/* 81394DF4 | D0 7E 00 40 */	stfs f3, 0x40(r30)
/* 81394DF8 | FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 81394DFC | 4C 40 13 82 */	cror eq, lt, eq
/* 81394E00 | 40 82 00 08 */	bne .L_81394E08
/* 81394E04 | 48 00 00 10 */	b .L_81394E14
.L_81394E08:
/* 81394E08 | FC 20 F8 90 */	fmr f1, f31
/* 81394E0C | 48 18 97 2D */	bl fn_8151E538
/* 81394E10 | EC 5F 00 72 */	fmuls f2, f31, f1
.L_81394E14:
/* 81394E14 | C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 81394E18 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81394E1C | C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 81394E20 | 3C 80 81 65 */	lis r4, lbl_8164B59F@ha
/* 81394E24 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81394E28 | EC 21 00 2A */	fadds f1, f1, f0
/* 81394E2C | 38 84 B5 9F */	addi r4, r4, lbl_8164B59F@l
/* 81394E30 | 4B FD 6A 71 */	bl holdSEwithPosDis__Q33ipl3snd6SystemFPCcff
/* 81394E34 | 48 00 02 00 */	b .L_81395034
.L_81394E38:
/* 81394E38 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81394E3C | 7F E3 FB 78 */	mr r3, r31
/* 81394E40 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81394E44 | 7D 89 03 A6 */	mtctr r12
/* 81394E48 | 4E 80 04 21 */	bctrl
/* 81394E4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81394E50 | 41 82 01 18 */	beq .L_81394F68
/* 81394E54 | 38 61 00 38 */	addi r3, r1, 0x38
/* 81394E58 | 4B FA 15 D1 */	bl __ct__Q34nw4r2ut4RectFv
/* 81394E5C | 38 61 00 38 */	addi r3, r1, 0x38
/* 81394E60 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81394E64 | 38 A1 00 3C */	addi r5, r1, 0x3c
/* 81394E68 | 38 C1 00 44 */	addi r6, r1, 0x44
/* 81394E6C | 4B F9 DD 75 */	bl RBRGetPosRect
/* 81394E70 | 80 9E 00 34 */	lwz r4, 0x34(r30)
/* 81394E74 | 7F E3 FB 78 */	mr r3, r31
/* 81394E78 | 80 1E 00 38 */	lwz r0, 0x38(r30)
/* 81394E7C | 90 81 00 20 */	stw r4, 0x20(r1)
/* 81394E80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81394E84 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81394E88 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81394E8C | 7D 89 03 A6 */	mtctr r12
/* 81394E90 | 4E 80 04 21 */	bctrl
/* 81394E94 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81394E98 | C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 81394E9C | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81394EA0 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81394EA4 | EC A1 07 F2 */	fmuls f5, f1, f31
/* 81394EA8 | C0 61 00 20 */	lfs f3, 0x20(r1)
/* 81394EAC | C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 81394EB0 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 81394EB4 | EC 85 00 28 */	fsubs f4, f5, f0
/* 81394EB8 | C0 01 00 38 */	lfs f0, 0x38(r1)
/* 81394EBC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81394EC0 | EC 83 20 2A */	fadds f4, f3, f4
/* 81394EC4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81394EC8 | D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 81394ECC | FC 04 00 40 */	fcmpo cr0, f4, f0
/* 81394ED0 | D0 81 00 20 */	stfs f4, 0x20(r1)
/* 81394ED4 | C0 7E 01 34 */	lfs f3, 0x134(r30)
/* 81394ED8 | EC 43 10 28 */	fsubs f2, f3, f2
/* 81394EDC | EC 21 10 2A */	fadds f1, f1, f2
/* 81394EE0 | D0 21 00 24 */	stfs f1, 0x24(r1)
/* 81394EE4 | 40 80 00 0C */	bge .L_81394EF0
/* 81394EE8 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 81394EEC | 48 00 00 14 */	b .L_81394F00
.L_81394EF0:
/* 81394EF0 | C0 01 00 40 */	lfs f0, 0x40(r1)
/* 81394EF4 | FC 04 00 40 */	fcmpo cr0, f4, f0
/* 81394EF8 | 40 81 00 08 */	ble .L_81394F00
/* 81394EFC | D0 01 00 20 */	stfs f0, 0x20(r1)
.L_81394F00:
/* 81394F00 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 81394F04 | C0 01 00 44 */	lfs f0, 0x44(r1)
/* 81394F08 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81394F0C | 40 80 00 0C */	bge .L_81394F18
/* 81394F10 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 81394F14 | 48 00 00 14 */	b .L_81394F28
.L_81394F18:
/* 81394F18 | C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 81394F1C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81394F20 | 40 81 00 08 */	ble .L_81394F28
/* 81394F24 | D0 01 00 24 */	stfs f0, 0x24(r1)
.L_81394F28:
/* 81394F28 | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 81394F2C | C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 81394F30 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 81394F34 | 40 82 00 14 */	bne .L_81394F48
/* 81394F38 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 81394F3C | C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 81394F40 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 81394F44 | 41 82 00 24 */	beq .L_81394F68
.L_81394F48:
/* 81394F48 | 38 7E 00 34 */	addi r3, r30, 0x34
/* 81394F4C | 38 81 00 20 */	addi r4, r1, 0x20
/* 81394F50 | 4B FA 18 A1 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 81394F54 | 80 1E 00 A8 */	lwz r0, 0xa8(r30)
/* 81394F58 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81394F5C | 40 82 00 0C */	bne .L_81394F68
/* 81394F60 | 38 00 00 01 */	li r0, 0x1
/* 81394F64 | 98 1E 00 CC */	stb r0, 0xcc(r30)
.L_81394F68:
/* 81394F68 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81394F6C | 80 9E 01 38 */	lwz r4, 0x138(r30)
/* 81394F70 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81394F74 | 38 A0 00 00 */	li r5, 0x0
/* 81394F78 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 81394F7C | 4B FA F5 05 */	bl changeType__Q23ipl7PointerFii
/* 81394F80 | C0 02 84 10 */	lfs f0, lbl_81694810@sda21(r0)
/* 81394F84 | 38 80 00 04 */	li r4, 0x4
/* 81394F88 | D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 81394F8C | D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 81394F90 | D0 1E 01 34 */	stfs f0, 0x134(r30)
/* 81394F94 | D0 1E 01 30 */	stfs f0, 0x130(r30)
/* 81394F98 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81394F9C | 48 07 61 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81394FA0 | 7F C4 F3 78 */	mr r4, r30
/* 81394FA4 | 4B FF AE 2D */	bl pinchOff__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject
/* 81394FA8 | 88 1E 00 CC */	lbz r0, 0xcc(r30)
/* 81394FAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394FB0 | 41 82 00 30 */	beq .L_81394FE0
/* 81394FB4 | 88 1E 00 CD */	lbz r0, 0xcd(r30)
/* 81394FB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81394FBC | 40 82 00 24 */	bne .L_81394FE0
/* 81394FC0 | 38 00 00 01 */	li r0, 0x1
/* 81394FC4 | 3C 80 81 39 */	lis r4, clean_task___Q23ipl5sceneFPv@ha
/* 81394FC8 | 98 1E 00 CD */	stb r0, 0xcd(r30)
/* 81394FCC | 7F C5 F3 78 */	mr r5, r30
/* 81394FD0 | 38 84 5D 80 */	addi r4, r4, clean_task___Q23ipl5sceneFPv@l
/* 81394FD4 | 38 C0 00 00 */	li r6, 0x0
/* 81394FD8 | 80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 81394FDC | 48 26 32 6D */	bl fn_815F8248
.L_81394FE0:
/* 81394FE0 | 38 00 00 03 */	li r0, 0x3
/* 81394FE4 | 90 1E 01 2C */	stw r0, 0x12c(r30)
/* 81394FE8 | 48 00 00 4C */	b .L_81395034
.L_81394FEC:
/* 81394FEC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81394FF0 | 80 9E 01 38 */	lwz r4, 0x138(r30)
/* 81394FF4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81394FF8 | 38 A0 00 00 */	li r5, 0x0
/* 81394FFC | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 81395000 | 4B FA F4 81 */	bl changeType__Q23ipl7PointerFii
/* 81395004 | C0 02 84 10 */	lfs f0, lbl_81694810@sda21(r0)
/* 81395008 | 38 80 00 04 */	li r4, 0x4
/* 8139500C | D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 81395010 | D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 81395014 | D0 1E 01 34 */	stfs f0, 0x134(r30)
/* 81395018 | D0 1E 01 30 */	stfs f0, 0x130(r30)
/* 8139501C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81395020 | 48 07 61 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81395024 | 7F C4 F3 78 */	mr r4, r30
/* 81395028 | 4B FF AD A9 */	bl pinchOff__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject
/* 8139502C | 38 00 00 03 */	li r0, 0x3
/* 81395030 | 90 1E 01 2C */	stw r0, 0x12c(r30)
.L_81395034:
/* 81395034 | E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 81395038 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8139503C | CB E1 00 70 */	lfd f31, 0x70(r1)
/* 81395040 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 81395044 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 81395048 | 7C 08 03 A6 */	mtlr r0
/* 8139504C | 38 21 00 80 */	addi r1, r1, 0x80
/* 81395050 | 4E 80 00 20 */	blr
.endfn stt_pinch__Q33ipl5scene11BoardObjectFv

# .text:0x1338 | 0x81395054 | size: 0x178
# ipl::scene::BoardObject::stt_stand()
.fn stt_stand__Q33ipl5scene11BoardObjectFv, global
/* 81395054 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81395058 | 7C 08 02 A6 */	mflr r0
/* 8139505C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81395060 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 81395064 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 81395068 | 3C 80 43 30 */	lis r4, 0x4330
/* 8139506C | C8 62 84 30 */	lfd f3, lbl_81694830@sda21(r0)
/* 81395070 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81395074 | 7C 7F 1B 78 */	mr r31, r3
/* 81395078 | C0 42 84 20 */	lfs f2, lbl_81694820@sda21(r0)
/* 8139507C | 80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 81395080 | 90 81 00 38 */	stw r4, 0x38(r1)
/* 81395084 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81395088 | C0 02 84 24 */	lfs f0, lbl_81694824@sda21(r0)
/* 8139508C | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 81395090 | C8 21 00 38 */	lfd f1, 0x38(r1)
/* 81395094 | 90 81 00 40 */	stw r4, 0x40(r1)
/* 81395098 | EC 21 18 28 */	fsubs f1, f1, f3
/* 8139509C | EC 22 00 72 */	fmuls f1, f2, f1
/* 813950A0 | EC 22 08 2A */	fadds f1, f2, f1
/* 813950A4 | EC 20 00 72 */	fmuls f1, f0, f1
/* 813950A8 | 48 18 95 79 */	bl fn_8151E620
/* 813950AC | 80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 813950B0 | FF E0 08 90 */	fmr f31, f1
/* 813950B4 | C8 62 84 30 */	lfd f3, lbl_81694830@sda21(r0)
/* 813950B8 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813950BC | C0 42 84 20 */	lfs f2, lbl_81694820@sda21(r0)
/* 813950C0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813950C4 | C0 02 84 24 */	lfs f0, lbl_81694824@sda21(r0)
/* 813950C8 | C8 21 00 40 */	lfd f1, 0x40(r1)
/* 813950CC | EC 21 18 28 */	fsubs f1, f1, f3
/* 813950D0 | EC 22 00 72 */	fmuls f1, f2, f1
/* 813950D4 | EC 22 08 2A */	fadds f1, f2, f1
/* 813950D8 | EC 20 00 72 */	fmuls f1, f0, f1
/* 813950DC | 48 18 94 D9 */	bl fn_8151E5B4
/* 813950E0 | C0 02 84 28 */	lfs f0, lbl_81694828@sda21(r0)
/* 813950E4 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813950E8 | EC 20 00 72 */	fmuls f1, f0, f1
/* 813950EC | EC 40 07 F2 */	fmuls f2, f0, f31
/* 813950F0 | 4B FA 14 79 */	bl __ct__Q33ipl4math4VEC2Fff
/* 813950F4 | 80 1F 00 EC */	lwz r0, 0xec(r31)
/* 813950F8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813950FC | C8 22 84 30 */	lfd f1, lbl_81694830@sda21(r0)
/* 81395100 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81395104 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 81395108 | C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8139510C | EC 20 08 28 */	fsubs f1, f0, f1
/* 81395110 | 4B FE D5 79 */	bl __ml__Q33ipl4math4VEC2CFf
/* 81395114 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81395118 | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8139511C | C8 22 84 30 */	lfd f1, lbl_81694830@sda21(r0)
/* 81395120 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81395124 | 80 1F 00 EC */	lwz r0, 0xec(r31)
/* 81395128 | 20 00 00 0A */	subfic r0, r0, 0xa
/* 8139512C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81395130 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81395134 | C8 01 00 40 */	lfd f0, 0x40(r1)
/* 81395138 | EC 20 08 28 */	fsubs f1, f0, f1
/* 8139513C | 4B FE D5 4D */	bl __ml__Q33ipl4math4VEC2CFf
/* 81395140 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81395144 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81395148 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8139514C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81395150 | 4B FF F2 ED */	bl __pl__Q34nw4r4math4VEC2CFRCQ34nw4r4math4VEC2
/* 81395154 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81395158 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8139515C | C0 22 84 2C */	lfs f1, lbl_8169482C@sda21(r0)
/* 81395160 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81395164 | 4B FF F3 25 */	bl __dv__Q34nw4r4math4VEC2CFf
/* 81395168 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 8139516C | 38 81 00 28 */	addi r4, r1, 0x28
/* 81395170 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81395174 | 38 7F 00 34 */	addi r3, r31, 0x34
/* 81395178 | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8139517C | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 81395180 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 81395184 | D0 21 00 28 */	stfs f1, 0x28(r1)
/* 81395188 | 4B FA 16 69 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 8139518C | 80 7F 00 EC */	lwz r3, 0xec(r31)
/* 81395190 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81395194 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81395198 | 90 1F 00 EC */	stw r0, 0xec(r31)
/* 8139519C | 40 81 00 14 */	ble .L_813951B0
/* 813951A0 | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 813951A4 | 4B FF ED 39 */	bl "init__Q43ipl5scene11BoardObject30@class$30039iplBoardObject_cppFv"
/* 813951A8 | 38 00 00 03 */	li r0, 0x3
/* 813951AC | 90 1F 01 2C */	stw r0, 0x12c(r31)
.L_813951B0:
/* 813951B0 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 813951B4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813951B8 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 813951BC | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 813951C0 | 7C 08 03 A6 */	mtlr r0
/* 813951C4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813951C8 | 4E 80 00 20 */	blr
.endfn stt_stand__Q33ipl5scene11BoardObjectFv

# .text:0x14B0 | 0x813951CC | size: 0x24
# ipl::scene::BoardObject::draw()
.fn draw__Q33ipl5scene11BoardObjectFv, global
/* 813951CC | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 813951D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813951D4 | 4D 82 00 20 */	beqlr
/* 813951D8 | 80 03 01 2C */	lwz r0, 0x12c(r3)
/* 813951DC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813951E0 | 4D 82 00 20 */	beqlr
/* 813951E4 | 7C 83 23 78 */	mr r3, r4
/* 813951E8 | 4B FD 55 B4 */	b draw__Q33ipl6layout6ObjectFv
/* 813951EC | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene11BoardObjectFv

# .text:0x14D4 | 0x813951F0 | size: 0x108
# ipl::scene::BoardObject::capture()
.fn capture__Q33ipl5scene11BoardObjectFv, global
/* 813951F0 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813951F4 | 7C 08 02 A6 */	mflr r0
/* 813951F8 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 813951FC | 93 E1 00 7C */	stw r31, 0x7c(r1)
/* 81395200 | 7C 7F 1B 78 */	mr r31, r3
/* 81395204 | 80 03 01 2C */	lwz r0, 0x12c(r3)
/* 81395208 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139520C | 40 82 00 D8 */	bne .L_813952E4
/* 81395210 | 88 03 01 28 */	lbz r0, 0x128(r3)
/* 81395214 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395218 | 40 82 00 CC */	bne .L_813952E4
/* 8139521C | 38 61 00 1C */	addi r3, r1, 0x1c
/* 81395220 | 4B FA 12 09 */	bl __ct__Q34nw4r2ut4RectFv
/* 81395224 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 81395228 | 4B FA 07 25 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8139522C | C0 61 00 24 */	lfs f3, 0x24(r1)
/* 81395230 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81395234 | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 81395238 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8139523C | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 81395240 | EC 83 08 28 */	fsubs f4, f3, f1
/* 81395244 | C0 22 84 10 */	lfs f1, lbl_81694810@sda21(r0)
/* 81395248 | EC 42 00 28 */	fsubs f2, f2, f0
/* 8139524C | C0 A2 84 3C */	lfs f5, lbl_8169483C@sda21(r0)
/* 81395250 | FC 60 08 90 */	fmr f3, f1
/* 81395254 | C0 C2 84 40 */	lfs f6, lbl_81694840@sda21(r0)
/* 81395258 | 48 1A C3 A5 */	bl fn_815415FC
/* 8139525C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81395260 | 38 80 00 01 */	li r4, 0x1
/* 81395264 | 48 1B 29 CD */	bl GXSetProjection
/* 81395268 | 4B FC DA 81 */	bl calcOrthoCamera__Q33ipl7utility8GraphicsFv
/* 8139526C | 38 60 00 00 */	li r3, 0x0
/* 81395270 | 4B FC DA 89 */	bl setCamera__Q33ipl7utility8GraphicsFUl
/* 81395274 | C0 42 84 10 */	lfs f2, lbl_81694810@sda21(r0)
/* 81395278 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8139527C | C0 22 84 44 */	lfs f1, lbl_81694844@sda21(r0)
/* 81395280 | 38 9F 01 04 */	addi r4, r31, 0x104
/* 81395284 | C0 02 84 48 */	lfs f0, lbl_81694848@sda21(r0)
/* 81395288 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8139528C | 89 42 84 38 */	lbz r10, lbl_81694838@sda21(r0)
/* 81395290 | 38 C0 00 01 */	li r6, 0x1
/* 81395294 | 89 22 84 39 */	lbz r9, lbl_81694839@sda21(r0)
/* 81395298 | 38 E0 00 00 */	li r7, 0x0
/* 8139529C | 89 02 84 3A */	lbz r8, lbl_8169483A@sda21(r0)
/* 813952A0 | 88 02 84 3B */	lbz r0, lbl_8169483B@sda21(r0)
/* 813952A4 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 813952A8 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 813952AC | D0 21 00 14 */	stfs f1, 0x14(r1)
/* 813952B0 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813952B4 | 99 41 00 08 */	stb r10, 0x8(r1)
/* 813952B8 | 99 21 00 09 */	stb r9, 0x9(r1)
/* 813952BC | 99 01 00 0A */	stb r8, 0xa(r1)
/* 813952C0 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813952C4 | 4B FC DC F9 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 813952C8 | 80 7F 01 24 */	lwz r3, 0x124(r31)
/* 813952CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813952D0 | 41 82 00 0C */	beq .L_813952DC
/* 813952D4 | 38 80 00 01 */	li r4, 0x1
/* 813952D8 | 4B FC E0 C5 */	bl capture__Q33ipl7utility7CaptureFi
.L_813952DC:
/* 813952DC | 38 00 00 01 */	li r0, 0x1
/* 813952E0 | 98 1F 01 28 */	stb r0, 0x128(r31)
.L_813952E4:
/* 813952E4 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 813952E8 | 83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 813952EC | 7C 08 03 A6 */	mtlr r0
/* 813952F0 | 38 21 00 80 */	addi r1, r1, 0x80
/* 813952F4 | 4E 80 00 20 */	blr
.endfn capture__Q33ipl5scene11BoardObjectFv

# .text:0x15DC | 0x813952F8 | size: 0x148
# ipl::scene::BoardObject::destroy()
.fn destroy__Q33ipl5scene11BoardObjectFv, global
/* 813952F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813952FC | 7C 08 02 A6 */	mflr r0
/* 81395300 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81395304 | 38 00 00 00 */	li r0, 0x0
/* 81395308 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139530C | 7C 7F 1B 78 */	mr r31, r3
/* 81395310 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 81395314 | 98 03 00 CC */	stb r0, 0xcc(r3)
/* 81395318 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139531C | 98 03 00 CD */	stb r0, 0xcd(r3)
/* 81395320 | 41 82 00 28 */	beq .L_81395348
/* 81395324 | 41 82 00 1C */	beq .L_81395340
/* 81395328 | 7C 83 23 78 */	mr r3, r4
/* 8139532C | 38 80 00 01 */	li r4, 0x1
/* 81395330 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81395334 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81395338 | 7D 89 03 A6 */	mtctr r12
/* 8139533C | 4E 80 04 21 */	bctrl
.L_81395340:
/* 81395340 | 38 00 00 00 */	li r0, 0x0
/* 81395344 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81395348:
/* 81395348 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8139534C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395350 | 41 82 00 24 */	beq .L_81395374
/* 81395354 | 41 82 00 18 */	beq .L_8139536C
/* 81395358 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139535C | 38 80 00 01 */	li r4, 0x1
/* 81395360 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81395364 | 7D 89 03 A6 */	mtctr r12
/* 81395368 | 4E 80 04 21 */	bctrl
.L_8139536C:
/* 8139536C | 38 00 00 00 */	li r0, 0x0
/* 81395370 | 90 1F 00 18 */	stw r0, 0x18(r31)
.L_81395374:
/* 81395374 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81395378 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139537C | 41 82 00 10 */	beq .L_8139538C
/* 81395380 | 48 26 2D 6D */	bl __dla__FPv
/* 81395384 | 38 00 00 00 */	li r0, 0x0
/* 81395388 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_8139538C:
/* 8139538C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81395390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395394 | 41 82 00 10 */	beq .L_813953A4
/* 81395398 | 48 26 2D 55 */	bl __dla__FPv
/* 8139539C | 38 00 00 00 */	li r0, 0x0
/* 813953A0 | 90 1F 00 2C */	stw r0, 0x2c(r31)
.L_813953A4:
/* 813953A4 | 80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 813953A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813953AC | 41 82 00 10 */	beq .L_813953BC
/* 813953B0 | 48 26 2D 3D */	bl __dla__FPv
/* 813953B4 | 38 00 00 00 */	li r0, 0x0
/* 813953B8 | 90 1F 00 F4 */	stw r0, 0xf4(r31)
.L_813953BC:
/* 813953BC | 80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 813953C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813953C4 | 41 82 00 10 */	beq .L_813953D4
/* 813953C8 | 48 26 2D 25 */	bl __dla__FPv
/* 813953CC | 38 00 00 00 */	li r0, 0x0
/* 813953D0 | 90 1F 00 F8 */	stw r0, 0xf8(r31)
.L_813953D4:
/* 813953D4 | 80 7F 01 24 */	lwz r3, 0x124(r31)
/* 813953D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813953DC | 41 82 00 14 */	beq .L_813953F0
/* 813953E0 | 38 80 00 01 */	li r4, 0x1
/* 813953E4 | 4B FC DF 61 */	bl __dt__Q33ipl7utility7CaptureFv
/* 813953E8 | 38 00 00 00 */	li r0, 0x0
/* 813953EC | 90 1F 01 24 */	stw r0, 0x124(r31)
.L_813953F0:
/* 813953F0 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 813953F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813953F8 | 41 82 00 34 */	beq .L_8139542C
/* 813953FC | 88 04 00 50 */	lbz r0, 0x50(r4)
/* 81395400 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395404 | 40 82 00 14 */	bne .L_81395418
/* 81395408 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139540C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81395410 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 81395414 | 4B FA 98 1D */	bl detach__Q33ipl6nigaoe7ManagerFPQ33ipl6nigaoe6Object
.L_81395418:
/* 81395418 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8139541C | 38 80 00 01 */	li r4, 0x1
/* 81395420 | 4B FA 9A F1 */	bl __dt__Q33ipl6nigaoe6ObjectFv
/* 81395424 | 38 00 00 00 */	li r0, 0x0
/* 81395428 | 90 1F 00 20 */	stw r0, 0x20(r31)
.L_8139542C:
/* 8139542C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81395430 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81395434 | 7C 08 03 A6 */	mtlr r0
/* 81395438 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139543C | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene11BoardObjectFv

# .text:0x1724 | 0x81395440 | size: 0xA4
# ipl::scene::BoardObject::destroy_heap()
.fn destroy_heap__Q33ipl5scene11BoardObjectFv, global
/* 81395440 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81395444 | 7C 08 02 A6 */	mflr r0
/* 81395448 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139544C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81395450 | 7C 7F 1B 78 */	mr r31, r3
/* 81395454 | 80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 81395458 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139545C | 41 82 00 28 */	beq .L_81395484
/* 81395460 | 41 82 00 1C */	beq .L_8139547C
/* 81395464 | 7C 03 03 78 */	mr r3, r0
/* 81395468 | 38 80 00 01 */	li r4, 0x1
/* 8139546C | 81 83 00 10 */	lwz r12, 0x10(r3)
/* 81395470 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81395474 | 7D 89 03 A6 */	mtctr r12
/* 81395478 | 4E 80 04 21 */	bctrl
.L_8139547C:
/* 8139547C | 38 00 00 00 */	li r0, 0x0
/* 81395480 | 90 1F 00 C8 */	stw r0, 0xc8(r31)
.L_81395484:
/* 81395484 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 81395488 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139548C | 41 82 00 1C */	beq .L_813954A8
/* 81395490 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81395494 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81395498 | 7D 89 03 A6 */	mtctr r12
/* 8139549C | 4E 80 04 21 */	bctrl
/* 813954A0 | 38 00 00 00 */	li r0, 0x0
/* 813954A4 | 90 1F 00 C4 */	stw r0, 0xc4(r31)
.L_813954A8:
/* 813954A8 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813954AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813954B0 | 41 82 00 20 */	beq .L_813954D0
/* 813954B4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813954B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813954BC | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813954C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813954C4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813954C8 | 7D 89 03 A6 */	mtctr r12
/* 813954CC | 4E 80 04 21 */	bctrl
.L_813954D0:
/* 813954D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813954D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813954D8 | 7C 08 03 A6 */	mtlr r0
/* 813954DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813954E0 | 4E 80 00 20 */	blr
.endfn destroy_heap__Q33ipl5scene11BoardObjectFv

# .text:0x17C8 | 0x813954E4 | size: 0x18C
# ipl::scene::BoardObject::create_picture(ipl::scene::picture*, EGG::Heap*, EGG::Heap*, unsigned char*, unsigned long)
.fn create_picture__Q33ipl5scene11BoardObjectFPQ33ipl5scene7picturePQ23EGG4HeapPQ23EGG4HeapPUcUl, global
/* 813954E4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813954E8 | 7C 08 02 A6 */	mflr r0
/* 813954EC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813954F0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813954F4 | 48 26 3F C1 */	bl _savegpr_24
/* 813954F8 | 7C FB 3B 78 */	mr r27, r7
/* 813954FC | 7C 98 23 78 */	mr r24, r4
/* 81395500 | 7C B9 2B 78 */	mr r25, r5
/* 81395504 | 7C DA 33 78 */	mr r26, r6
/* 81395508 | 7D 1C 43 78 */	mr r28, r8
/* 8139550C | 7F 63 DB 78 */	mr r3, r27
/* 81395510 | 3B A0 00 00 */	li r29, 0x0
/* 81395514 | 4B FC 61 2D */	bl ODHGetWidth
/* 81395518 | 90 78 00 08 */	stw r3, 0x8(r24)
/* 8139551C | 7F 63 DB 78 */	mr r3, r27
/* 81395520 | 4B FC 61 35 */	bl ODHGetHeight
/* 81395524 | 80 18 00 08 */	lwz r0, 0x8(r24)
/* 81395528 | 90 78 00 0C */	stw r3, 0xc(r24)
/* 8139552C | 7F E0 19 D6 */	mullw r31, r0, r3
/* 81395530 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395534 | 40 81 01 20 */	ble .L_81395654
/* 81395538 | 2C 00 02 00 */	cmpwi r0, 0x200
/* 8139553C | 41 81 01 18 */	bgt .L_81395654
/* 81395540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395544 | 40 81 01 10 */	ble .L_81395654
/* 81395548 | 2C 03 01 C8 */	cmpwi r3, 0x1c8
/* 8139554C | 41 81 01 08 */	bgt .L_81395654
/* 81395550 | 57 FE 08 3C */	slwi r30, r31, 1
/* 81395554 | 7F 24 CB 78 */	mr r4, r25
/* 81395558 | 7F C3 F3 78 */	mr r3, r30
/* 8139555C | 38 A0 00 20 */	li r5, 0x20
/* 81395560 | 48 26 2B 75 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81395564 | 1F FF 00 03 */	mulli r31, r31, 0x3
/* 81395568 | 90 78 00 00 */	stw r3, 0x0(r24)
/* 8139556C | 7F 44 D3 78 */	mr r4, r26
/* 81395570 | 38 A0 FF E0 */	li r5, -0x20
/* 81395574 | 7F E3 FB 78 */	mr r3, r31
/* 81395578 | 48 26 2B 5D */	bl __nwa__FUlPQ23EGG4Heapi
/* 8139557C | 80 B8 00 00 */	lwz r5, 0x0(r24)
/* 81395580 | 90 78 00 04 */	stw r3, 0x4(r24)
/* 81395584 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81395588 | 41 82 00 9C */	beq .L_81395624
/* 8139558C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395590 | 7C 67 1B 78 */	mr r7, r3
/* 81395594 | 41 82 00 90 */	beq .L_81395624
/* 81395598 | 7F 63 DB 78 */	mr r3, r27
/* 8139559C | 7F 84 E3 78 */	mr r4, r28
/* 813955A0 | 7F C6 F3 78 */	mr r6, r30
/* 813955A4 | 7F E8 FB 78 */	mr r8, r31
/* 813955A8 | 4B FC 5F F9 */	bl ODHDecodeRGB565
/* 813955AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813955B0 | 41 82 00 54 */	beq .L_81395604
/* 813955B4 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 813955B8 | 7F C4 F3 78 */	mr r4, r30
/* 813955BC | 48 19 83 A9 */	bl DCStoreRange
/* 813955C0 | 80 B8 00 08 */	lwz r5, 0x8(r24)
/* 813955C4 | 38 78 00 10 */	addi r3, r24, 0x10
/* 813955C8 | 80 18 00 0C */	lwz r0, 0xc(r24)
/* 813955CC | 38 E0 00 04 */	li r7, 0x4
/* 813955D0 | 80 98 00 00 */	lwz r4, 0x0(r24)
/* 813955D4 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 813955D8 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 813955DC | 39 00 00 00 */	li r8, 0x0
/* 813955E0 | 39 20 00 00 */	li r9, 0x0
/* 813955E4 | 39 40 00 00 */	li r10, 0x0
/* 813955E8 | 48 1B 06 89 */	bl GXInitTexObj
/* 813955EC | 80 78 00 04 */	lwz r3, 0x4(r24)
/* 813955F0 | 3B A0 00 01 */	li r29, 0x1
/* 813955F4 | 48 26 2A F9 */	bl __dla__FPv
/* 813955F8 | 38 00 00 00 */	li r0, 0x0
/* 813955FC | 90 18 00 04 */	stw r0, 0x4(r24)
/* 81395600 | 48 00 00 54 */	b .L_81395654
.L_81395604:
/* 81395604 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 81395608 | 48 26 2A E5 */	bl __dla__FPv
/* 8139560C | 3B E0 00 00 */	li r31, 0x0
/* 81395610 | 80 78 00 04 */	lwz r3, 0x4(r24)
/* 81395614 | 93 F8 00 00 */	stw r31, 0x0(r24)
/* 81395618 | 48 26 2A D5 */	bl __dla__FPv
/* 8139561C | 93 F8 00 04 */	stw r31, 0x4(r24)
/* 81395620 | 48 00 00 34 */	b .L_81395654
.L_81395624:
/* 81395624 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81395628 | 41 82 00 14 */	beq .L_8139563C
/* 8139562C | 7C A3 2B 78 */	mr r3, r5
/* 81395630 | 48 26 2A BD */	bl __dla__FPv
/* 81395634 | 38 00 00 00 */	li r0, 0x0
/* 81395638 | 90 18 00 00 */	stw r0, 0x0(r24)
.L_8139563C:
/* 8139563C | 80 78 00 04 */	lwz r3, 0x4(r24)
/* 81395640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395644 | 41 82 00 10 */	beq .L_81395654
/* 81395648 | 48 26 2A A5 */	bl __dla__FPv
/* 8139564C | 38 00 00 00 */	li r0, 0x0
/* 81395650 | 90 18 00 04 */	stw r0, 0x4(r24)
.L_81395654:
/* 81395654 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81395658 | 7F A3 EB 78 */	mr r3, r29
/* 8139565C | 48 26 3E A5 */	bl _restgpr_24
/* 81395660 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81395664 | 7C 08 03 A6 */	mtlr r0
/* 81395668 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139566C | 4E 80 00 20 */	blr
.endfn create_picture__Q33ipl5scene11BoardObjectFPQ33ipl5scene7picturePQ23EGG4HeapPQ23EGG4HeapPUcUl

# .text:0x1954 | 0x81395670 | size: 0x8C
# ipl::scene::BoardObject::reset_gui()
.fn reset_gui__Q33ipl5scene11BoardObjectFv, global
/* 81395670 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81395674 | 7C 08 02 A6 */	mflr r0
/* 81395678 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139567C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81395680 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81395684 | 7C 7E 1B 78 */	mr r30, r3
/* 81395688 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 8139568C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395690 | 41 82 00 18 */	beq .L_813956A8
/* 81395694 | 7C 03 03 78 */	mr r3, r0
/* 81395698 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139569C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813956A0 | 7D 89 03 A6 */	mtctr r12
/* 813956A4 | 4E 80 04 21 */	bctrl
.L_813956A8:
/* 813956A8 | 80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 813956AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813956B0 | 41 82 00 34 */	beq .L_813956E4
/* 813956B4 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 813956B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813956BC | 41 82 00 20 */	beq .L_813956DC
/* 813956C0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813956C4 | 38 80 00 02 */	li r4, 0x2
/* 813956C8 | 48 17 CC 51 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813956CC | 7C 7F 1B 78 */	mr r31, r3
/* 813956D0 | 4B FC D1 A1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813956D4 | 38 00 00 01 */	li r0, 0x1
/* 813956D8 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813956DC:
/* 813956DC | 38 00 00 00 */	li r0, 0x0
/* 813956E0 | 90 1E 00 D4 */	stw r0, 0xd4(r30)
.L_813956E4:
/* 813956E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813956E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813956EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813956F0 | 7C 08 03 A6 */	mtlr r0
/* 813956F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813956F8 | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene11BoardObjectFv

# .text:0x19E0 | 0x813956FC | size: 0x114
# ipl::scene::BoardObject::set_thumb_text(const char*, const wchar_t*)
.fn set_thumb_text__Q33ipl5scene11BoardObjectFPCcPCw, global
/* 813956FC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81395700 | 7C 08 02 A6 */	mflr r0
/* 81395704 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81395708 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8139570C | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81395710 | 7C BE 2B 78 */	mr r30, r5
/* 81395714 | 38 A0 00 01 */	li r5, 0x1
/* 81395718 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139571C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81395720 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81395724 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81395728 | 7D 89 03 A6 */	mtctr r12
/* 8139572C | 4E 80 04 21 */	bctrl
/* 81395730 | 4B FB 07 35 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81395734 | 38 00 00 05 */	li r0, 0x5
/* 81395738 | 7C 7F 1B 78 */	mr r31, r3
/* 8139573C | 38 81 00 06 */	addi r4, r1, 0x6
/* 81395740 | 38 60 00 00 */	li r3, 0x0
/* 81395744 | 7C 09 03 A6 */	mtctr r0
.L_81395748:
/* 81395748 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 8139574C | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 81395750 | 42 00 FF F8 */	bdnz .L_81395748
/* 81395754 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81395758 | 38 80 00 00 */	li r4, 0x0
/* 8139575C | 38 A0 00 14 */	li r5, 0x14
/* 81395760 | 4B F9 AB D5 */	bl memset
/* 81395764 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81395768 | 41 82 00 34 */	beq .L_8139579C
/* 8139576C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81395770 | 38 A0 00 00 */	li r5, 0x0
/* 81395774 | 38 60 00 00 */	li r3, 0x0
/* 81395778 | 48 00 00 10 */	b .L_81395788
.L_8139577C:
/* 8139577C | 7C 04 1B 2E */	sthx r0, r4, r3
/* 81395780 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81395784 | 38 63 00 02 */	addi r3, r3, 0x2
.L_81395788:
/* 81395788 | 2C 05 00 07 */	cmpwi r5, 0x7
/* 8139578C | 40 80 00 10 */	bge .L_8139579C
/* 81395790 | 7C 1E 1A 2E */	lhzx r0, r30, r3
/* 81395794 | 28 00 00 0A */	cmplwi r0, 0xa
/* 81395798 | 40 82 FF E4 */	bne .L_8139577C
.L_8139579C:
/* 8139579C | 4B FA 02 F1 */	bl getRegion__Q23ipl6SystemFv
/* 813957A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813957A4 | 40 82 00 1C */	bne .L_813957C0
/* 813957A8 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 813957AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813957B0 | 41 82 00 2C */	beq .L_813957DC
/* 813957B4 | 38 00 20 26 */	li r0, 0x2026
/* 813957B8 | B0 01 00 14 */	sth r0, 0x14(r1)
/* 813957BC | 48 00 00 20 */	b .L_813957DC
.L_813957C0:
/* 813957C0 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 813957C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813957C8 | 41 82 00 14 */	beq .L_813957DC
/* 813957CC | 38 00 00 2E */	li r0, 0x2e
/* 813957D0 | B0 01 00 18 */	sth r0, 0x18(r1)
/* 813957D4 | B0 01 00 16 */	sth r0, 0x16(r1)
/* 813957D8 | B0 01 00 14 */	sth r0, 0x14(r1)
.L_813957DC:
/* 813957DC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813957E0 | 7F E3 FB 78 */	mr r3, r31
/* 813957E4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813957E8 | 38 A0 00 00 */	li r5, 0x0
/* 813957EC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813957F0 | 7D 89 03 A6 */	mtctr r12
/* 813957F4 | 4E 80 04 21 */	bctrl
/* 813957F8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813957FC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81395800 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81395804 | 7C 08 03 A6 */	mtlr r0
/* 81395808 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139580C | 4E 80 00 20 */	blr
.endfn set_thumb_text__Q33ipl5scene11BoardObjectFPCcPCw

# .text:0x1AF4 | 0x81395810 | size: 0x14
# ipl::scene::BoardObject::update(int)
.fn update__Q33ipl5scene11BoardObjectFi, global
/* 81395810 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 81395814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395818 | 4D 82 00 20 */	beqlr
/* 8139581C | 4B FD 57 C4 */	b update__Q33ipl3gui11PaneManagerFi
/* 81395820 | 4E 80 00 20 */	blr
.endfn update__Q33ipl5scene11BoardObjectFi

# .text:0x1B08 | 0x81395824 | size: 0xD8
# ipl::scene::BoardObject::start_point_event(int, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene11BoardObjectFiPQ33ipl10controller9Interface, global
/* 81395824 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81395828 | 7C 08 02 A6 */	mflr r0
/* 8139582C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81395830 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81395834 | 48 26 3C 91 */	bl _savegpr_28
/* 81395838 | 80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 8139583C | 7C 7C 1B 78 */	mr r28, r3
/* 81395840 | 7C 9D 23 78 */	mr r29, r4
/* 81395844 | 7C BE 2B 78 */	mr r30, r5
/* 81395848 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139584C | 40 82 00 58 */	bne .L_813958A4
/* 81395850 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81395854 | 38 80 00 01 */	li r4, 0x1
/* 81395858 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139585C | 48 17 CA BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81395860 | 7C 7F 1B 78 */	mr r31, r3
/* 81395864 | 4B FC D0 0D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81395868 | 38 00 00 01 */	li r0, 0x1
/* 8139586C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81395870 | 3C 80 81 65 */	lis r4, lbl_8164B5B2@ha
/* 81395874 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81395878 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139587C | 38 84 B5 B2 */	addi r4, r4, lbl_8164B5B2@l
/* 81395880 | 4B FD 5B ED */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81395884 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81395888 | 41 82 00 1C */	beq .L_813958A4
/* 8139588C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81395890 | 7F C3 F3 78 */	mr r3, r30
/* 81395894 | 38 80 00 00 */	li r4, 0x0
/* 81395898 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8139589C | 7D 89 03 A6 */	mtctr r12
/* 813958A0 | 4E 80 04 21 */	bctrl
.L_813958A4:
/* 813958A4 | 80 7C 00 D4 */	lwz r3, 0xd4(r28)
/* 813958A8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813958AC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813958B0 | 38 80 00 04 */	li r4, 0x4
/* 813958B4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813958B8 | 90 1C 00 D4 */	stw r0, 0xd4(r28)
/* 813958BC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813958C0 | 48 07 58 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813958C4 | 57 A0 10 3A */	slwi r0, r29, 2
/* 813958C8 | 38 80 00 04 */	li r4, 0x4
/* 813958CC | 7C 63 02 14 */	add r3, r3, r0
/* 813958D0 | 93 83 0D 30 */	stw r28, 0xd30(r3)
/* 813958D4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813958D8 | 48 07 58 61 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813958DC | 7F 84 E3 78 */	mr r4, r28
/* 813958E0 | 4B FF A5 61 */	bl reappend__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject
/* 813958E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813958E8 | 48 26 3C 29 */	bl _restgpr_28
/* 813958EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813958F0 | 7C 08 03 A6 */	mtlr r0
/* 813958F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813958F8 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene11BoardObjectFiPQ33ipl10controller9Interface

# .text:0x1BE0 | 0x813958FC | size: 0xC4
# ipl::scene::BoardObject::start_left_event(int)
.fn start_left_event__Q33ipl5scene11BoardObjectFi, global
/* 813958FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81395900 | 7C 08 02 A6 */	mflr r0
/* 81395904 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81395908 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139590C | 48 26 3B BD */	bl _savegpr_29
/* 81395910 | 80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 81395914 | 7C 7D 1B 78 */	mr r29, r3
/* 81395918 | 7C 9E 23 78 */	mr r30, r4
/* 8139591C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81395920 | 40 82 00 58 */	bne .L_81395978
/* 81395924 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81395928 | 38 80 00 01 */	li r4, 0x1
/* 8139592C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81395930 | 48 17 C9 E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81395934 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81395938 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139593C | 40 82 00 1C */	bne .L_81395958
/* 81395940 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 81395944 | 38 80 00 01 */	li r4, 0x1
/* 81395948 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8139594C | 48 17 C9 CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81395950 | 38 00 00 00 */	li r0, 0x0
/* 81395954 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81395958:
/* 81395958 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8139595C | 38 80 00 02 */	li r4, 0x2
/* 81395960 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81395964 | 48 17 C9 B5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81395968 | 7C 7F 1B 78 */	mr r31, r3
/* 8139596C | 4B FC CF 05 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81395970 | 38 00 00 01 */	li r0, 0x1
/* 81395974 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81395978:
/* 81395978 | 80 BD 00 D4 */	lwz r5, 0xd4(r29)
/* 8139597C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81395980 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81395984 | 38 80 00 04 */	li r4, 0x4
/* 81395988 | 38 05 FF FF */	subi r0, r5, 0x1
/* 8139598C | 90 1D 00 D4 */	stw r0, 0xd4(r29)
/* 81395990 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81395994 | 48 07 57 A5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81395998 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8139599C | 38 80 00 00 */	li r4, 0x0
/* 813959A0 | 7C 63 02 14 */	add r3, r3, r0
/* 813959A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813959A8 | 90 83 0D 30 */	stw r4, 0xd30(r3)
/* 813959AC | 48 26 3B 69 */	bl _restgpr_29
/* 813959B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813959B4 | 7C 08 03 A6 */	mtlr r0
/* 813959B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813959BC | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene11BoardObjectFi

# .text:0x1CA4 | 0x813959C0 | size: 0xB8
# ipl::scene::BoardObject::change_ltrtex(ipl::layout::Object*, void*)
.fn change_ltrtex__Q33ipl5scene11BoardObjectFPQ33ipl6layout6ObjectPv, global
/* 813959C0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813959C4 | 7C 08 02 A6 */	mflr r0
/* 813959C8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813959CC | 39 61 00 50 */	addi r11, r1, 0x50
/* 813959D0 | 48 26 3A F1 */	bl _savegpr_27
/* 813959D4 | 7C BD 2B 78 */	mr r29, r5
/* 813959D8 | 7C 9C 23 78 */	mr r28, r4
/* 813959DC | 7C 7B 1B 78 */	mr r27, r3
/* 813959E0 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813959E4 | 7F A4 EB 78 */	mr r4, r29
/* 813959E8 | 48 00 06 D5 */	bl arc_init_handle__Q33ipl5scene11BoardObjectFPvP9ARCHandle
/* 813959EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813959F0 | 41 82 00 70 */	beq .L_81395A60
/* 813959F4 | 3F E0 81 61 */	lis r31, lbl_8160F6F8@ha
/* 813959F8 | 84 9F F6 F8 */	lwzu r4, lbl_8160F6F8@l(r31)
/* 813959FC | 38 61 00 14 */	addi r3, r1, 0x14
/* 81395A00 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81395A04 | 48 1D B4 3D */	bl ARCOpen
/* 81395A08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395A0C | 41 82 00 54 */	beq .L_81395A60
/* 81395A10 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81395A14 | 48 1D BB 81 */	bl ARCGetStartOffset
/* 81395A18 | 7F DD 1A 14 */	add r30, r29, r3
/* 81395A1C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81395A20 | 48 1D BB 7D */	bl ARCGetLength
/* 81395A24 | 7C 7D 1B 78 */	mr r29, r3
/* 81395A28 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 81395A2C | 7F 63 DB 78 */	mr r3, r27
/* 81395A30 | 7F 84 E3 78 */	mr r4, r28
/* 81395A34 | 7F C6 F3 78 */	mr r6, r30
/* 81395A38 | 7F A7 EB 78 */	mr r7, r29
/* 81395A3C | 48 00 00 3D */	bl change_tex__Q33ipl5scene11BoardObjectFPQ33ipl6layout6ObjectPCcP10TPLPaletteUl
/* 81395A40 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 81395A44 | 7F 63 DB 78 */	mr r3, r27
/* 81395A48 | 7F 84 E3 78 */	mr r4, r28
/* 81395A4C | 7F C6 F3 78 */	mr r6, r30
/* 81395A50 | 7F A7 EB 78 */	mr r7, r29
/* 81395A54 | 48 00 00 25 */	bl change_tex__Q33ipl5scene11BoardObjectFPQ33ipl6layout6ObjectPCcP10TPLPaletteUl
/* 81395A58 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81395A5C | 48 1D BB 49 */	bl ARCClose
.L_81395A60:
/* 81395A60 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81395A64 | 48 26 3A A9 */	bl _restgpr_27
/* 81395A68 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81395A6C | 7C 08 03 A6 */	mtlr r0
/* 81395A70 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81395A74 | 4E 80 00 20 */	blr
.endfn change_ltrtex__Q33ipl5scene11BoardObjectFPQ33ipl6layout6ObjectPv

# .text:0x1D5C | 0x81395A78 | size: 0x90
# ipl::scene::BoardObject::change_tex(ipl::layout::Object*, const char*, TPLPalette*, unsigned long)
.fn change_tex__Q33ipl5scene11BoardObjectFPQ33ipl6layout6ObjectPCcP10TPLPaletteUl, global
/* 81395A78 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81395A7C | 7C 08 02 A6 */	mflr r0
/* 81395A80 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81395A84 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81395A88 | 48 26 3A 41 */	bl _savegpr_29
/* 81395A8C | 7C DF 33 78 */	mr r31, r6
/* 81395A90 | 7C 9D 23 78 */	mr r29, r4
/* 81395A94 | 7C BE 2B 78 */	mr r30, r5
/* 81395A98 | 7C E5 3B 78 */	mr r5, r7
/* 81395A9C | 7F E4 FB 78 */	mr r4, r31
/* 81395AA0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81395AA4 | 4B FC EB DD */	bl __ct__Q33ipl7utility12tpl_validityFP10TPLPaletteUl
/* 81395AA8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81395AAC | 4B FC EF 85 */	bl is_valid_for_ltx__Q33ipl7utility12tpl_validityFv
/* 81395AB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395AB4 | 41 82 00 3C */	beq .L_81395AF0
/* 81395AB8 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 81395ABC | 7F C4 F3 78 */	mr r4, r30
/* 81395AC0 | 38 A0 00 01 */	li r5, 0x1
/* 81395AC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81395AC8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81395ACC | 7D 89 03 A6 */	mtctr r12
/* 81395AD0 | 4E 80 04 21 */	bctrl
/* 81395AD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81395AD8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81395ADC | 7D 89 03 A6 */	mtctr r12
/* 81395AE0 | 4E 80 04 21 */	bctrl
/* 81395AE4 | 7F E5 FB 78 */	mr r5, r31
/* 81395AE8 | 38 80 00 00 */	li r4, 0x0
/* 81395AEC | 48 19 22 95 */	bl fn_81527D80
.L_81395AF0:
/* 81395AF0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81395AF4 | 48 26 3A 21 */	bl _restgpr_29
/* 81395AF8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81395AFC | 7C 08 03 A6 */	mtlr r0
/* 81395B00 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81395B04 | 4E 80 00 20 */	blr
.endfn change_tex__Q33ipl5scene11BoardObjectFPQ33ipl6layout6ObjectPCcP10TPLPaletteUl

# .text:0x1DEC | 0x81395B08 | size: 0x278
# ipl::scene::BoardObject::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene11BoardObjectFUlUlPv, global
/* 81395B08 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81395B0C | 7C 08 02 A6 */	mflr r0
/* 81395B10 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81395B14 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 81395B18 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 81395B1C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81395B20 | 48 26 39 A1 */	bl _savegpr_27
/* 81395B24 | 7C 7B 1B 78 */	mr r27, r3
/* 81395B28 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81395B2C | 7C BC 2B 78 */	mr r28, r5
/* 81395B30 | 7C DD 33 78 */	mr r29, r6
/* 81395B34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81395B38 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81395B3C | 7D 89 03 A6 */	mtctr r12
/* 81395B40 | 4E 80 04 21 */	bctrl
/* 81395B44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81395B48 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81395B4C | 7D 89 03 A6 */	mtctr r12
/* 81395B50 | 4E 80 04 21 */	bctrl
/* 81395B54 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81395B58 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 81395B5C | 7F 63 DB 78 */	mr r3, r27
/* 81395B60 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81395B64 | 7D 89 03 A6 */	mtctr r12
/* 81395B68 | 4E 80 04 21 */	bctrl
/* 81395B6C | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 81395B70 | 7C 7E 1B 78 */	mr r30, r3
/* 81395B74 | 41 82 00 50 */	beq .L_81395BC4
/* 81395B78 | 40 80 00 14 */	bge .L_81395B8C
/* 81395B7C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81395B80 | 41 82 01 00 */	beq .L_81395C80
/* 81395B84 | 40 80 00 14 */	bge .L_81395B98
/* 81395B88 | 48 00 01 D8 */	b .L_81395D60
.L_81395B8C:
/* 81395B8C | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81395B90 | 41 82 00 5C */	beq .L_81395BEC
/* 81395B94 | 48 00 01 CC */	b .L_81395D60
.L_81395B98:
/* 81395B98 | 3C 80 81 65 */	lis r4, lbl_8164B55F@ha
/* 81395B9C | 7F E3 FB 78 */	mr r3, r31
/* 81395BA0 | 38 84 B5 5F */	addi r4, r4, lbl_8164B55F@l
/* 81395BA4 | 48 26 C8 DD */	bl strcmp
/* 81395BA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395BAC | 40 82 01 B4 */	bne .L_81395D60
/* 81395BB0 | 7F 63 DB 78 */	mr r3, r27
/* 81395BB4 | 7F C4 F3 78 */	mr r4, r30
/* 81395BB8 | 7F A5 EB 78 */	mr r5, r29
/* 81395BBC | 4B FF FC 69 */	bl start_point_event__Q33ipl5scene11BoardObjectFiPQ33ipl10controller9Interface
/* 81395BC0 | 48 00 01 A0 */	b .L_81395D60
.L_81395BC4:
/* 81395BC4 | 3C 80 81 65 */	lis r4, lbl_8164B55F@ha
/* 81395BC8 | 7F E3 FB 78 */	mr r3, r31
/* 81395BCC | 38 84 B5 5F */	addi r4, r4, lbl_8164B55F@l
/* 81395BD0 | 48 26 C8 B1 */	bl strcmp
/* 81395BD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395BD8 | 40 82 01 88 */	bne .L_81395D60
/* 81395BDC | 7F 63 DB 78 */	mr r3, r27
/* 81395BE0 | 7F C4 F3 78 */	mr r4, r30
/* 81395BE4 | 4B FF FD 19 */	bl start_left_event__Q33ipl5scene11BoardObjectFi
/* 81395BE8 | 48 00 01 78 */	b .L_81395D60
.L_81395BEC:
/* 81395BEC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81395BF0 | 41 82 01 70 */	beq .L_81395D60
/* 81395BF4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81395BF8 | 7F A3 EB 78 */	mr r3, r29
/* 81395BFC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81395C00 | 7D 89 03 A6 */	mtctr r12
/* 81395C04 | 4E 80 04 21 */	bctrl
/* 81395C08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395C0C | 41 82 01 54 */	beq .L_81395D60
/* 81395C10 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81395C14 | 38 80 00 04 */	li r4, 0x4
/* 81395C18 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81395C1C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81395C20 | 48 07 55 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81395C24 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81395C28 | 7C 63 02 14 */	add r3, r3, r0
/* 81395C2C | 80 03 0D 30 */	lwz r0, 0xd30(r3)
/* 81395C30 | 7C 00 D8 40 */	cmplw r0, r27
/* 81395C34 | 40 82 01 2C */	bne .L_81395D60
/* 81395C38 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81395C3C | 38 80 00 05 */	li r4, 0x5
/* 81395C40 | 48 07 54 F9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81395C44 | 48 00 6C D1 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 81395C48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395C4C | 41 82 01 14 */	beq .L_81395D60
/* 81395C50 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81395C54 | 38 80 00 05 */	li r4, 0x5
/* 81395C58 | 48 07 54 E1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81395C5C | 80 03 01 78 */	lwz r0, 0x178(r3)
/* 81395C60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395C64 | 40 82 00 FC */	bne .L_81395D60
/* 81395C68 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81395C6C | 38 80 00 04 */	li r4, 0x4
/* 81395C70 | 48 07 54 C9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81395C74 | 7F 64 DB 78 */	mr r4, r27
/* 81395C78 | 4B FF 9F D5 */	bl focus__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject
/* 81395C7C | 48 00 00 E4 */	b .L_81395D60
.L_81395C80:
/* 81395C80 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81395C84 | 41 82 00 DC */	beq .L_81395D60
/* 81395C88 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81395C8C | 7F A3 EB 78 */	mr r3, r29
/* 81395C90 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81395C94 | 7D 89 03 A6 */	mtctr r12
/* 81395C98 | 4E 80 04 21 */	bctrl
/* 81395C9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395CA0 | 41 82 00 C0 */	beq .L_81395D60
/* 81395CA4 | 80 1B 01 2C */	lwz r0, 0x12c(r27)
/* 81395CA8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81395CAC | 41 82 00 B4 */	beq .L_81395D60
/* 81395CB0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81395CB4 | 38 80 00 04 */	li r4, 0x4
/* 81395CB8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81395CBC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81395CC0 | 48 07 54 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81395CC4 | 7F 64 DB 78 */	mr r4, r27
/* 81395CC8 | 4B FF A0 9D */	bl pinch__Q33ipl5scene5BoardFPQ33ipl5scene11BoardObject
/* 81395CCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395CD0 | 41 82 00 90 */	beq .L_81395D60
/* 81395CD4 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 81395CD8 | 7F C4 F3 78 */	mr r4, r30
/* 81395CDC | 38 A0 00 01 */	li r5, 0x1
/* 81395CE0 | 4B FA E7 A1 */	bl changeType__Q23ipl7PointerFii
/* 81395CE4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81395CE8 | 4B FA 07 41 */	bl __ct__Q34nw4r2ut4RectFv
/* 81395CEC | 38 61 00 20 */	addi r3, r1, 0x20
/* 81395CF0 | 4B F9 FC 29 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81395CF4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81395CF8 | 4B FA 07 31 */	bl __ct__Q34nw4r2ut4RectFv
/* 81395CFC | 38 61 00 10 */	addi r3, r1, 0x10
/* 81395D00 | 4B F9 FC 4D */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81395D04 | C0 61 00 28 */	lfs f3, 0x28(r1)
/* 81395D08 | 7F A3 EB 78 */	mr r3, r29
/* 81395D0C | C0 41 00 20 */	lfs f2, 0x20(r1)
/* 81395D10 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81395D14 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81395D18 | EC 43 10 28 */	fsubs f2, f3, f2
/* 81395D1C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81395D20 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81395D24 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81395D28 | EF E0 10 24 */	fdivs f31, f0, f2
/* 81395D2C | 7D 89 03 A6 */	mtctr r12
/* 81395D30 | 4E 80 04 21 */	bctrl
/* 81395D34 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81395D38 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81395D3C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81395D40 | 38 7B 01 30 */	addi r3, r27, 0x130
/* 81395D44 | 4B FA 0A AD */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 81395D48 | C0 1B 01 30 */	lfs f0, 0x130(r27)
/* 81395D4C | 38 00 00 04 */	li r0, 0x4
/* 81395D50 | 93 DB 01 38 */	stw r30, 0x138(r27)
/* 81395D54 | EC 00 07 F2 */	fmuls f0, f0, f31
/* 81395D58 | 90 1B 01 2C */	stw r0, 0x12c(r27)
/* 81395D5C | D0 1B 01 30 */	stfs f0, 0x130(r27)
.L_81395D60:
/* 81395D60 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 81395D64 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81395D68 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 81395D6C | 48 26 37 A1 */	bl _restgpr_27
/* 81395D70 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81395D74 | 7C 08 03 A6 */	mtlr r0
/* 81395D78 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81395D7C | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene11BoardObjectFUlUlPv

# .text:0x2064 | 0x81395D80 | size: 0x54
# ipl::scene::clean_task_(void*)
.fn clean_task___Q23ipl5sceneFPv, global
/* 81395D80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81395D84 | 7C 08 02 A6 */	mflr r0
/* 81395D88 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81395D8C | 38 80 00 04 */	li r4, 0x4
/* 81395D90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81395D94 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81395D98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81395D9C | 7C 7F 1B 78 */	mr r31, r3
/* 81395DA0 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81395DA4 | 48 07 53 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81395DA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395DAC | 41 82 00 14 */	beq .L_81395DC0
/* 81395DB0 | 7F E3 FB 78 */	mr r3, r31
/* 81395DB4 | 48 00 01 6D */	bl clean__Q33ipl5scene11BoardObjectFv
/* 81395DB8 | 38 00 00 00 */	li r0, 0x0
/* 81395DBC | 98 1F 00 CD */	stb r0, 0xcd(r31)
.L_81395DC0:
/* 81395DC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81395DC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81395DC8 | 7C 08 03 A6 */	mtlr r0
/* 81395DCC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81395DD0 | 4E 80 00 20 */	blr
.endfn clean_task___Q23ipl5sceneFPv

# .text:0x20B8 | 0x81395DD4 | size: 0xC
# ipl::scene::BoardObject::left_away()
.fn left_away__Q33ipl5scene11BoardObjectFv, global
/* 81395DD4 | 38 00 00 01 */	li r0, 0x1
/* 81395DD8 | 98 03 00 D0 */	stb r0, 0xd0(r3)
/* 81395DDC | 4E 80 00 20 */	blr
.endfn left_away__Q33ipl5scene11BoardObjectFv

# .text:0x20C4 | 0x81395DE0 | size: 0xC
# ipl::scene::BoardObject::right_away()
.fn right_away__Q33ipl5scene11BoardObjectFv, global
/* 81395DE0 | 38 00 00 01 */	li r0, 0x1
/* 81395DE4 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 81395DE8 | 4E 80 00 20 */	blr
.endfn right_away__Q33ipl5scene11BoardObjectFv

# .text:0x20D0 | 0x81395DEC | size: 0xA8
# ipl::scene::BoardObject::get_nigaoe_name(wchar_t*, int)
.fn get_nigaoe_name__Q33ipl5scene11BoardObjectFPwi, global
/* 81395DEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81395DF0 | 7C 08 02 A6 */	mflr r0
/* 81395DF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81395DF8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81395DFC | 48 26 36 CD */	bl _savegpr_29
/* 81395E00 | 7C 9D 23 78 */	mr r29, r4
/* 81395E04 | 7C 7E 1B 78 */	mr r30, r3
/* 81395E08 | 7F A3 EB 78 */	mr r3, r29
/* 81395E0C | 54 A5 08 3C */	slwi r5, r5, 1
/* 81395E10 | 3B E0 00 00 */	li r31, 0x0
/* 81395E14 | 38 80 00 00 */	li r4, 0x0
/* 81395E18 | 4B F9 A5 1D */	bl memset
/* 81395E1C | 80 BE 00 24 */	lwz r5, 0x24(r30)
/* 81395E20 | 80 85 01 24 */	lwz r4, 0x124(r5)
/* 81395E24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81395E28 | 41 82 00 50 */	beq .L_81395E78
/* 81395E2C | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 81395E30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395E34 | 41 82 00 44 */	beq .L_81395E78
/* 81395E38 | 88 03 00 50 */	lbz r0, 0x50(r3)
/* 81395E3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395E40 | 41 82 00 38 */	beq .L_81395E78
/* 81395E44 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81395E48 | 7F C5 22 14 */	add r30, r5, r4
/* 81395E4C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81395E50 | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 81395E54 | 7F C4 F3 78 */	mr r4, r30
/* 81395E58 | 4B FA 8E 69 */	bl isValid__Q33ipl6nigaoe7ManagerCFPC12RFLiCharData
/* 81395E5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395E60 | 41 82 00 18 */	beq .L_81395E78
/* 81395E64 | 7F A3 EB 78 */	mr r3, r29
/* 81395E68 | 38 9E 00 02 */	addi r4, r30, 0x2
/* 81395E6C | 38 A0 00 0A */	li r5, 0xa
/* 81395E70 | 48 27 28 75 */	bl fn_816086E4
/* 81395E74 | 3B E0 00 01 */	li r31, 0x1
.L_81395E78:
/* 81395E78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81395E7C | 7F E3 FB 78 */	mr r3, r31
/* 81395E80 | 48 26 36 95 */	bl _restgpr_29
/* 81395E84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81395E88 | 7C 08 03 A6 */	mtlr r0
/* 81395E8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81395E90 | 4E 80 00 20 */	blr
.endfn get_nigaoe_name__Q33ipl5scene11BoardObjectFPwi

# .text:0x2178 | 0x81395E94 | size: 0x28
# ipl::scene::BoardObject::permit_reply() const
.fn permit_reply__Q33ipl5scene11BoardObjectCFv, global
/* 81395E94 | 80 83 00 24 */	lwz r4, 0x24(r3)
/* 81395E98 | 38 60 00 00 */	li r3, 0x0
/* 81395E9C | A0 04 01 18 */	lhz r0, 0x118(r4)
/* 81395EA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395EA4 | 4D 82 00 20 */	beqlr
/* 81395EA8 | A0 04 01 1A */	lhz r0, 0x11a(r4)
/* 81395EAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395EB0 | 4C 82 00 20 */	bnelr
/* 81395EB4 | 38 60 00 01 */	li r3, 0x1
/* 81395EB8 | 4E 80 00 20 */	blr
.endfn permit_reply__Q33ipl5scene11BoardObjectCFv

# .text:0x21A0 | 0x81395EBC | size: 0xC
# ipl::scene::BoardObject::get_addr_type() const
.fn get_addr_type__Q33ipl5scene11BoardObjectCFv, global
/* 81395EBC | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81395EC0 | A0 63 01 18 */	lhz r3, 0x118(r3)
/* 81395EC4 | 4E 80 00 20 */	blr
.endfn get_addr_type__Q33ipl5scene11BoardObjectCFv

# .text:0x21AC | 0x81395EC8 | size: 0x2C
# ipl::scene::BoardObject::get_addr() const
.fn get_addr__Q33ipl5scene11BoardObjectCFv, global
/* 81395EC8 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 81395ECC | 38 00 00 20 */	li r0, 0x20
/* 81395ED0 | 38 A3 FF FC */	subi r5, r3, 0x4
/* 81395ED4 | 38 84 00 14 */	addi r4, r4, 0x14
/* 81395ED8 | 7C 09 03 A6 */	mtctr r0
.L_81395EDC:
/* 81395EDC | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81395EE0 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 81395EE4 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 81395EE8 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 81395EEC | 42 00 FF F0 */	bdnz .L_81395EDC
/* 81395EF0 | 4E 80 00 20 */	blr
.endfn get_addr__Q33ipl5scene11BoardObjectCFv

# .text:0x21D8 | 0x81395EF4 | size: 0x2C
# ipl::scene::BoardObject::delete_record()
.fn delete_record__Q33ipl5scene11BoardObjectFv, global
/* 81395EF4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81395EF8 | 7C 65 1B 78 */	mr r5, r3
/* 81395EFC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81395F00 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81395F04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395F08 | 41 82 00 0C */	beq .L_81395F14
/* 81395F0C | 38 60 00 00 */	li r3, 0x0
/* 81395F10 | 48 00 00 08 */	b .L_81395F18
.L_81395F14:
/* 81395F14 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_81395F18:
/* 81395F18 | 38 85 00 80 */	addi r4, r5, 0x80
/* 81395F1C | 4B FA 99 14 */	b deleteRecord__Q33ipl3cdb7ManagerFP13_CDBRecordKey
.endfn delete_record__Q33ipl5scene11BoardObjectFv

# .text:0x2204 | 0x81395F20 | size: 0x130
# ipl::scene::BoardObject::clean()
.fn clean__Q33ipl5scene11BoardObjectFv, global
/* 81395F20 | 94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 81395F24 | 7C 08 02 A6 */	mflr r0
/* 81395F28 | 90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 81395F2C | 39 61 01 A0 */	addi r11, r1, 0x1a0
/* 81395F30 | 48 26 35 99 */	bl _savegpr_29
/* 81395F34 | 88 03 00 CC */	lbz r0, 0xcc(r3)
/* 81395F38 | 7C 7D 1B 78 */	mr r29, r3
/* 81395F3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395F40 | 41 82 00 F8 */	beq .L_81396038
/* 81395F44 | 80 A3 00 24 */	lwz r5, 0x24(r3)
/* 81395F48 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81395F4C | 41 82 00 EC */	beq .L_81396038
/* 81395F50 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81395F54 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81395F58 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81395F5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81395F60 | 41 82 00 0C */	beq .L_81395F6C
/* 81395F64 | 3B E0 00 00 */	li r31, 0x0
/* 81395F68 | 48 00 00 08 */	b .L_81395F70
.L_81395F6C:
/* 81395F6C | 83 E4 00 7C */	lwz r31, 0x7c(r4)
.L_81395F70:
/* 81395F70 | 38 00 00 29 */	li r0, 0x29
/* 81395F74 | 38 C1 00 44 */	addi r6, r1, 0x44
/* 81395F78 | 38 A5 FF FC */	subi r5, r5, 0x4
/* 81395F7C | 7C 09 03 A6 */	mtctr r0
.L_81395F80:
/* 81395F80 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 81395F84 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 81395F88 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 81395F8C | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 81395F90 | 42 00 FF F0 */	bdnz .L_81395F80
/* 81395F94 | C0 03 00 34 */	lfs f0, 0x34(r3)
/* 81395F98 | 38 81 00 48 */	addi r4, r1, 0x48
/* 81395F9C | D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 81395FA0 | C0 03 00 38 */	lfs f0, 0x38(r3)
/* 81395FA4 | 7F E3 FB 78 */	mr r3, r31
/* 81395FA8 | D0 01 00 50 */	stfs f0, 0x50(r1)
/* 81395FAC | 4B FA 9A 61 */	bl calcCRC__Q33ipl3cdb7ManagerFPC9RBRHeader
/* 81395FB0 | 90 61 01 88 */	stw r3, 0x188(r1)
/* 81395FB4 | 7F E3 FB 78 */	mr r3, r31
/* 81395FB8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81395FBC | 38 BD 00 80 */	addi r5, r29, 0x80
/* 81395FC0 | 4B FA 9D 2D */	bl findByKey__Q33ipl3cdb7ManagerFP10_CDBRecordP13_CDBRecordKey
/* 81395FC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395FC8 | 41 82 00 68 */	beq .L_81396030
/* 81395FCC | 3B DF 00 20 */	addi r30, r31, 0x20
/* 81395FD0 | 7F C3 F3 78 */	mr r3, r30
/* 81395FD4 | 48 19 BC 35 */	bl fn_81531C08
/* 81395FD8 | 7F C3 F3 78 */	mr r3, r30
/* 81395FDC | 48 19 BD 09 */	bl fn_81531CE4
/* 81395FE0 | 7F E3 FB 78 */	mr r3, r31
/* 81395FE4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81395FE8 | 4B FA 9F 69 */	bl open__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 81395FEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81395FF0 | 41 82 00 40 */	beq .L_81396030
/* 81395FF4 | 7F E3 FB 78 */	mr r3, r31
/* 81395FF8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81395FFC | 38 A0 00 00 */	li r5, 0x0
/* 81396000 | 38 C0 00 01 */	li r6, 0x1
/* 81396004 | 4B FA A0 A9 */	bl seek__Q33ipl3cdb7ManagerFP10_CDBRecordl7CDBSeek
/* 81396008 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139600C | 41 82 00 18 */	beq .L_81396024
/* 81396010 | 7F E3 FB 78 */	mr r3, r31
/* 81396014 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81396018 | 38 A1 00 48 */	addi r5, r1, 0x48
/* 8139601C | 38 C0 01 48 */	li r6, 0x148
/* 81396020 | 4B FA A0 15 */	bl write__Q33ipl3cdb7ManagerFP10_CDBRecordPvUl
.L_81396024:
/* 81396024 | 7F E3 FB 78 */	mr r3, r31
/* 81396028 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139602C | 4B FA A0 F9 */	bl close__Q33ipl3cdb7ManagerFP10_CDBRecord
.L_81396030:
/* 81396030 | 38 00 00 00 */	li r0, 0x0
/* 81396034 | 98 1D 00 CC */	stb r0, 0xcc(r29)
.L_81396038:
/* 81396038 | 39 61 01 A0 */	addi r11, r1, 0x1a0
/* 8139603C | 48 26 34 D9 */	bl _restgpr_29
/* 81396040 | 80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 81396044 | 7C 08 03 A6 */	mtlr r0
/* 81396048 | 38 21 01 A0 */	addi r1, r1, 0x1a0
/* 8139604C | 4E 80 00 20 */	blr
.endfn clean__Q33ipl5scene11BoardObjectFv

# .text:0x2334 | 0x81396050 | size: 0x6C
# ipl::scene::BoardObject::is_protected() const
.fn is_protected__Q33ipl5scene11BoardObjectCFv, global
/* 81396050 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81396054 | 7C 08 02 A6 */	mflr r0
/* 81396058 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139605C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81396060 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81396064 | 3B E0 00 00 */	li r31, 0x0
/* 81396068 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8139606C | 7C 7E 1B 78 */	mr r30, r3
/* 81396070 | 38 6D 86 0D */	li r3, lbl_8169664D@sda21
/* 81396074 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81396078 | 48 13 B0 61 */	bl fn_814D10D8
/* 8139607C | 80 1E 00 A8 */	lwz r0, 0xa8(r30)
/* 81396080 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81396084 | 40 82 00 1C */	bne .L_813960A0
/* 81396088 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139608C | 40 82 00 14 */	bne .L_813960A0
/* 81396090 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81396094 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 81396098 | 41 82 00 08 */	beq .L_813960A0
/* 8139609C | 3B E0 00 01 */	li r31, 0x1
.L_813960A0:
/* 813960A0 | 7F E3 FB 78 */	mr r3, r31
/* 813960A4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813960A8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813960AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813960B0 | 7C 08 03 A6 */	mtlr r0
/* 813960B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813960B8 | 4E 80 00 20 */	blr
.endfn is_protected__Q33ipl5scene11BoardObjectCFv

# .text:0x23A0 | 0x813960BC | size: 0x40
# ipl::scene::BoardObject::arc_init_handle(void*, ARCHandle*)
.fn arc_init_handle__Q33ipl5scene11BoardObjectFPvP9ARCHandle, global
/* 813960BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813960C0 | 38 60 00 00 */	li r3, 0x0
/* 813960C4 | 4D 82 00 20 */	beqlr
/* 813960C8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813960CC | 4D 82 00 20 */	beqlr
/* 813960D0 | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 813960D4 | 3C 06 AA 56 */	subis r0, r6, 0x55aa
/* 813960D8 | 28 00 38 2D */	cmplwi r0, 0x382d
/* 813960DC | 4C 82 00 20 */	bnelr
/* 813960E0 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 813960E4 | 7C 04 02 15 */	add. r0, r4, r0
/* 813960E8 | 4D 82 00 20 */	beqlr
/* 813960EC | 7C 83 23 78 */	mr r3, r4
/* 813960F0 | 7C A4 2B 78 */	mr r4, r5
/* 813960F4 | 48 1D AC AC */	b ARCInitHandle
/* 813960F8 | 4E 80 00 20 */	blr
.endfn arc_init_handle__Q33ipl5scene11BoardObjectFPvP9ARCHandle

# 0x8160F6F8..0x8160F708 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x8160F6F8 | size: 0x10
.obj lbl_8160F6F8, global
	.4byte lbl_8164B540
	.4byte lbl_8164B555
	.4byte lbl_81696628
	.4byte 0x00000000
.endobj lbl_8160F6F8

# 0x8164B1E8..0x8164B698 | size: 0x4B0
.data
.balign 8

# .data:0x0 | 0x8164B1E8 | size: 0x10
.obj lbl_8164B1E8, global
	.string "LetterS_a.brlyt"
.endobj lbl_8164B1E8

# .data:0x10 | 0x8164B1F8 | size: 0x1C
.obj lbl_8164B1F8, global
	.string "LetterS_a_PasteLetter.brlan"
.endobj lbl_8164B1F8

# .data:0x2C | 0x8164B214 | size: 0x18
.obj lbl_8164B214, global
	.string "LetterS_a_FocusIn.brlan"
.endobj lbl_8164B214

# .data:0x44 | 0x8164B22C | size: 0x19
.obj lbl_8164B22C, global
	.string "LetterS_a_FocusOut.brlan"
.endobj lbl_8164B22C

# .data:0x5D | 0x8164B245 | size: 0x1D
.obj lbl_8164B245, global
	.string "LetterS_a_SelectLetter.brlan"
.endobj lbl_8164B245

# .data:0x7A | 0x8164B262 | size: 0x1B
.obj lbl_8164B262, global
	.string "LetterS_a_ExitLetter.brlan"
.endobj lbl_8164B262

# .data:0x95 | 0x8164B27D | size: 0x19
.obj lbl_8164B27D, global
	.string "LetterS_a_NextPage.brlan"
.endobj lbl_8164B27D

# .data:0xAE | 0x8164B296 | size: 0x18
.obj lbl_8164B296, global
	.string "LetterS_a_NewAnim.brlan"
.endobj lbl_8164B296

# .data:0xC6 | 0x8164B2AE | size: 0x18
.obj lbl_8164B2AE, global
	.string "LetterS_a_DefAnim.brlan"
.endobj lbl_8164B2AE

# .data:0xDE | 0x8164B2C6 | size: 0x17
.obj lbl_8164B2C6, global
	.string "LetterS_a_SDAnim.brlan"
.endobj lbl_8164B2C6

# .data:0xF5 | 0x8164B2DD | size: 0x10
.obj lbl_8164B2DD, global
	.string "LetterS_b.brlyt"
.endobj lbl_8164B2DD

# .data:0x105 | 0x8164B2ED | size: 0x1C
.obj lbl_8164B2ED, global
	.string "LetterS_b_PasteLetter.brlan"
.endobj lbl_8164B2ED

# .data:0x121 | 0x8164B309 | size: 0x18
.obj lbl_8164B309, global
	.string "LetterS_b_FocusIn.brlan"
.endobj lbl_8164B309

# .data:0x139 | 0x8164B321 | size: 0x19
.obj lbl_8164B321, global
	.string "LetterS_b_FocusOut.brlan"
.endobj lbl_8164B321

# .data:0x152 | 0x8164B33A | size: 0x1D
.obj lbl_8164B33A, global
	.string "LetterS_b_SelectLetter.brlan"
.endobj lbl_8164B33A

# .data:0x16F | 0x8164B357 | size: 0x1B
.obj lbl_8164B357, global
	.string "LetterS_b_ExitLetter.brlan"
.endobj lbl_8164B357

# .data:0x18A | 0x8164B372 | size: 0x19
.obj lbl_8164B372, global
	.string "LetterS_b_NextPage.brlan"
.endobj lbl_8164B372

# .data:0x1A3 | 0x8164B38B | size: 0x18
.obj lbl_8164B38B, global
	.string "LetterS_b_NewAnim.brlan"
.endobj lbl_8164B38B

# .data:0x1BB | 0x8164B3A3 | size: 0x18
.obj lbl_8164B3A3, global
	.string "LetterS_b_DefAnim.brlan"
.endobj lbl_8164B3A3

# .data:0x1D3 | 0x8164B3BB | size: 0x17
.obj lbl_8164B3BB, global
	.string "LetterS_b_SDAnim.brlan"
.endobj lbl_8164B3BB

# .data:0x1EA | 0x8164B3D2 | size: 0x10
.obj lbl_8164B3D2, global
	.string "LetterS_c.brlyt"
.endobj lbl_8164B3D2

# .data:0x1FA | 0x8164B3E2 | size: 0x1C
.obj lbl_8164B3E2, global
	.string "LetterS_c_PasteLetter.brlan"
.endobj lbl_8164B3E2

# .data:0x216 | 0x8164B3FE | size: 0x18
.obj lbl_8164B3FE, global
	.string "LetterS_c_FocusIn.brlan"
.endobj lbl_8164B3FE

# .data:0x22E | 0x8164B416 | size: 0x19
.obj lbl_8164B416, global
	.string "LetterS_c_FocusOut.brlan"
.endobj lbl_8164B416

# .data:0x247 | 0x8164B42F | size: 0x1D
.obj lbl_8164B42F, global
	.string "LetterS_c_SelectLetter.brlan"
.endobj lbl_8164B42F

# .data:0x264 | 0x8164B44C | size: 0x1B
.obj lbl_8164B44C, global
	.string "LetterS_c_ExitLetter.brlan"
.endobj lbl_8164B44C

# .data:0x27F | 0x8164B467 | size: 0x19
.obj lbl_8164B467, global
	.string "LetterS_c_NextPage.brlan"
.endobj lbl_8164B467

# .data:0x298 | 0x8164B480 | size: 0x18
.obj lbl_8164B480, global
	.string "LetterS_c_NewAnim.brlan"
.endobj lbl_8164B480

# .data:0x2B0 | 0x8164B498 | size: 0x18
.obj lbl_8164B498, global
	.string "LetterS_c_DefAnim.brlan"
.endobj lbl_8164B498

# .data:0x2C8 | 0x8164B4B0 | size: 0x90
.obj lbl_8164B4B0, global
	.4byte 0x4C657474
	.4byte 0x6572535F
	.4byte 0x635F5344
	.4byte 0x416E696D
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte lbl_8164B1E8
	.4byte lbl_8164B1F8
	.4byte lbl_8164B214
	.4byte lbl_8164B22C
	.4byte lbl_8164B245
	.4byte lbl_8164B262
	.4byte lbl_8164B27D
	.4byte lbl_8164B296
	.4byte lbl_8164B2AE
	.4byte lbl_8164B2C6
	.4byte lbl_8164B2DD
	.4byte lbl_8164B2ED
	.4byte lbl_8164B309
	.4byte lbl_8164B321
	.4byte lbl_8164B33A
	.4byte lbl_8164B357
	.4byte lbl_8164B372
	.4byte lbl_8164B38B
	.4byte lbl_8164B3A3
	.4byte lbl_8164B3BB
	.4byte lbl_8164B3D2
	.4byte lbl_8164B3E2
	.4byte lbl_8164B3FE
	.4byte lbl_8164B416
	.4byte lbl_8164B42F
	.4byte lbl_8164B44C
	.4byte lbl_8164B467
	.4byte lbl_8164B480
	.4byte lbl_8164B498
	.4byte lbl_8164B4B0
.endobj lbl_8164B4B0

# .data:0x358 | 0x8164B540 | size: 0x15
.obj lbl_8164B540, global
	.string "img/my_LetterS_b.tpl"
.endobj lbl_8164B540

# .data:0x36D | 0x8164B555 | size: 0xA
.obj lbl_8164B555, global
	.string "Letter0_s"
.endobj lbl_8164B555

# .data:0x377 | 0x8164B55F | size: 0x36
.obj lbl_8164B55F, global
	.4byte 0x425F4C65
	.4byte 0x74746572
	.4byte 0x00545F4C
	.4byte 0x65747465
	.4byte 0x72002E2F
	.4byte 0x7468756D
	.4byte 0x626E6169
	.4byte 0x6C5F4C5A
	.4byte 0x2E62696E
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F4D5347
	.4byte 0x5F444953
	.2byte 0x5000
.endobj lbl_8164B55F

# .data:0x3AD | 0x8164B595 | size: 0xA
.obj lbl_8164B595, global
	.string "LetterPic"
.endobj lbl_8164B595

# .data:0x3B7 | 0x8164B59F | size: 0x13
.obj lbl_8164B59F, global
	.string "WIPL_SE_BOARD_DRAG"
.endobj lbl_8164B59F

# .data:0x3CA | 0x8164B5B2 | size: 0x16
.obj lbl_8164B5B2, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x424F4152
	.4byte 0x445F464F
	.4byte 0x43555300
	.2byte 0x0000
.endobj lbl_8164B5B2

# .data:0x3E0 | 0x8164B5C8 | size: 0x18
# ipl::scene::BoardObject::__vtable
.obj __vt__Q33ipl5scene11BoardObject, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene11BoardObjectFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene11BoardObject

# .data:0x3F8 | 0x8164B5E0 | size: 0x10
# ipl::math::LinearIntp<ipl::math::VEC2>::__vtable
.obj "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC2>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC2>Fv"
	.4byte calc__Q33ipl7utility15FrameControllerFv
.endobj "__vt__Q33ipl4math28LinearIntp<Q33ipl4math4VEC2>"

# .data:0x408 | 0x8164B5F0 | size: 0xA8
# ipl::math::Interporation<ipl::math::VEC2>::__vtable
.obj "__vt__Q33ipl4math31Interporation<Q33ipl4math4VEC2>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q33ipl4math31Interporation<Q33ipl4math4VEC2>Fv"
	.4byte calc__Q33ipl7utility15FrameControllerFv
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
.endobj "__vt__Q33ipl4math31Interporation<Q33ipl4math4VEC2>"

# 0x81694810..0x81694850 | size: 0x40
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694810 | size: 0x4
.obj lbl_81694810, global
	.float 0
.endobj lbl_81694810

# .sdata2:0x4 | 0x81694814 | size: 0x4
.obj lbl_81694814, global
	.float 8
.endobj lbl_81694814

# .sdata2:0x8 | 0x81694818 | size: 0x4
.obj lbl_81694818, global
	.float 1
.endobj lbl_81694818

# .sdata2:0xC | 0x8169481C | size: 0x4
.obj lbl_8169481C, global
	.float 53
.endobj lbl_8169481C

# .sdata2:0x10 | 0x81694820 | size: 0x4
.obj lbl_81694820, global
	.float 30
.endobj lbl_81694820

# .sdata2:0x14 | 0x81694824 | size: 0x4
.obj lbl_81694824, global
	.float 0.7111111
.endobj lbl_81694824

# .sdata2:0x18 | 0x81694828 | size: 0x4
.obj lbl_81694828, global
	.float 160
.endobj lbl_81694828

# .sdata2:0x1C | 0x8169482C | size: 0x4
.obj lbl_8169482C, global
	.float 10
.endobj lbl_8169482C

# .sdata2:0x20 | 0x81694830 | size: 0x8
.obj lbl_81694830, global
	.double 4503601774854144
.endobj lbl_81694830

# .sdata2:0x28 | 0x81694838 | size: 0x1
.obj lbl_81694838, global
	.byte 0xFF
.endobj lbl_81694838

# .sdata2:0x29 | 0x81694839 | size: 0x1
.obj lbl_81694839, global
	.byte 0xFF
.endobj lbl_81694839

# .sdata2:0x2A | 0x8169483A | size: 0x1
.obj lbl_8169483A, global
	.byte 0xFF
.endobj lbl_8169483A

# .sdata2:0x2B | 0x8169483B | size: 0x1
.obj lbl_8169483B, global
	.byte 0xFF
.endobj lbl_8169483B

# .sdata2:0x2C | 0x8169483C | size: 0x4
.obj lbl_8169483C, global
	.float -100
.endobj lbl_8169483C

# .sdata2:0x30 | 0x81694840 | size: 0x4
.obj lbl_81694840, global
	.float 100
.endobj lbl_81694840

# .sdata2:0x34 | 0x81694844 | size: 0x4
.obj lbl_81694844, global
	.float 64
.endobj lbl_81694844

# .sdata2:0x38 | 0x81694848 | size: 0x8
.obj lbl_81694848, global
	.float 48
	.float 0
.endobj lbl_81694848

# 0x81696628..0x81696650 | size: 0x28
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696628 | size: 0x8
.obj lbl_81696628, global
	.string "Letter0"
.endobj lbl_81696628

# .sdata:0x8 | 0x81696630 | size: 0x7
.obj lbl_81696630, global
	.string "Nigaoe"
.endobj lbl_81696630

# .sdata:0xF | 0x81696637 | size: 0x4
.obj lbl_81696637, global
	.string "arc"
.endobj lbl_81696637

# .sdata:0x13 | 0x8169663B | size: 0x6
.obj lbl_8169663B, global
	.string "G_New"
.endobj lbl_8169663B

# .sdata:0x19 | 0x81696641 | size: 0x6
.obj lbl_81696641, global
	.string "N_Pic"
.endobj lbl_81696641

# .sdata:0x1F | 0x81696647 | size: 0x6
.obj lbl_81696647, global
	.string "B_Pic"
.endobj lbl_81696647

# .sdata:0x25 | 0x8169664D | size: 0x3
.obj lbl_8169664D, global
	.string "SD"
.endobj lbl_8169664D
