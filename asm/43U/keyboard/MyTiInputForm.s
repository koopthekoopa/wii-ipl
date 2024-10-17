.include "macros.inc"
.file "MyTiInputForm.cpp"

# 0x81440E6C..0x81444730 | size: 0x38C4
.text
.balign 4

# .text:0x0 | 0x81440E6C | size: 0xB0
# textinput::extend::memo::InputForm::~InputForm()
.fn __dt__Q49textinput6extend4memo9InputFormFv, global
/* 81440E6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81440E70 | 7C 08 02 A6 */	mflr r0
/* 81440E74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81440E78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81440E7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81440E80 | 7C 9F 23 78 */	mr r31, r4
/* 81440E84 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81440E88 | 7C 7E 1B 78 */	mr r30, r3
/* 81440E8C | 41 82 00 74 */	beq .L_81440F00
/* 81440E90 | 3C E0 81 67 */	lis r7, __vt__Q49textinput6extend4memo9InputForm@ha
/* 81440E94 | 38 80 FF FF */	li r4, -0x1
/* 81440E98 | 38 E7 85 78 */	addi r7, r7, __vt__Q49textinput6extend4memo9InputForm@l
/* 81440E9C | 38 C7 00 20 */	addi r6, r7, 0x20
/* 81440EA0 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 81440EA4 | 38 A7 00 B8 */	addi r5, r7, 0xb8
/* 81440EA8 | 38 07 01 A8 */	addi r0, r7, 0x1a8
/* 81440EAC | 90 C3 00 5C */	stw r6, 0x5c(r3)
/* 81440EB0 | 90 A3 01 18 */	stw r5, 0x118(r3)
/* 81440EB4 | 90 03 02 18 */	stw r0, 0x218(r3)
/* 81440EB8 | 80 63 03 E8 */	lwz r3, 0x3e8(r3)
/* 81440EBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440EC0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81440EC4 | 7D 89 03 A6 */	mtctr r12
/* 81440EC8 | 4E 80 04 21 */	bctrl
/* 81440ECC | 80 7E 01 D0 */	lwz r3, 0x1d0(r30)
/* 81440ED0 | 80 9E 03 E8 */	lwz r4, 0x3e8(r30)
/* 81440ED4 | 48 11 A7 A5 */	bl fn_8155B678
/* 81440ED8 | 80 7E 01 D0 */	lwz r3, 0x1d0(r30)
/* 81440EDC | 80 9E 03 E4 */	lwz r4, 0x3e4(r30)
/* 81440EE0 | 48 11 A7 99 */	bl fn_8155B678
/* 81440EE4 | 7F C3 F3 78 */	mr r3, r30
/* 81440EE8 | 38 80 00 00 */	li r4, 0x0
/* 81440EEC | 4B FE 47 2D */	bl __dt__Q39textinput9inputform12LayoutByNW4RFv
/* 81440EF0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81440EF4 | 40 81 00 0C */	ble .L_81440F00
/* 81440EF8 | 7F C3 F3 78 */	mr r3, r30
/* 81440EFC | 48 1B 71 E9 */	bl __dl__FPv
.L_81440F00:
/* 81440F00 | 7F C3 F3 78 */	mr r3, r30
/* 81440F04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81440F08 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81440F0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81440F10 | 7C 08 03 A6 */	mtlr r0
/* 81440F14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81440F18 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo9InputFormFv

# .text:0xB0 | 0x81440F1C | size: 0x128
# textinput::extend::memo::InputForm::setAddScroll(float, bool, bool)
.fn setAddScroll__Q49textinput6extend4memo9InputFormFfbb, global
/* 81440F1C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81440F20 | 7C 08 02 A6 */	mflr r0
/* 81440F24 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81440F28 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81440F2C | 7C BF 2B 78 */	mr r31, r5
/* 81440F30 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81440F34 | 7C 9E 23 78 */	mr r30, r4
/* 81440F38 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81440F3C | 7C 7D 1B 78 */	mr r29, r3
/* 81440F40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440F44 | C0 03 03 18 */	lfs f0, 0x318(r3)
/* 81440F48 | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 81440F4C | EC 20 08 2A */	fadds f1, f0, f1
/* 81440F50 | 7D 89 03 A6 */	mtctr r12
/* 81440F54 | 4E 80 04 21 */	bctrl
/* 81440F58 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81440F5C | 41 82 00 30 */	beq .L_81440F8C
/* 81440F60 | 88 1D 03 F8 */	lbz r0, 0x3f8(r29)
/* 81440F64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81440F68 | 40 82 00 24 */	bne .L_81440F8C
/* 81440F6C | 80 7D 03 F4 */	lwz r3, 0x3f4(r29)
/* 81440F70 | 38 80 00 00 */	li r4, 0x0
/* 81440F74 | 38 A0 00 04 */	li r5, 0x4
/* 81440F78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440F7C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81440F80 | 7D 89 03 A6 */	mtctr r12
/* 81440F84 | 4E 80 04 21 */	bctrl
/* 81440F88 | 48 00 00 34 */	b .L_81440FBC
.L_81440F8C:
/* 81440F8C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81440F90 | 41 82 00 2C */	beq .L_81440FBC
/* 81440F94 | 88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 81440F98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81440F9C | 40 82 00 20 */	bne .L_81440FBC
/* 81440FA0 | 80 7D 03 F4 */	lwz r3, 0x3f4(r29)
/* 81440FA4 | 38 80 00 01 */	li r4, 0x1
/* 81440FA8 | 38 A0 00 04 */	li r5, 0x4
/* 81440FAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440FB0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81440FB4 | 7D 89 03 A6 */	mtctr r12
/* 81440FB8 | 4E 80 04 21 */	bctrl
.L_81440FBC:
/* 81440FBC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81440FC0 | 40 82 00 30 */	bne .L_81440FF0
/* 81440FC4 | 88 1D 03 F8 */	lbz r0, 0x3f8(r29)
/* 81440FC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81440FCC | 41 82 00 24 */	beq .L_81440FF0
/* 81440FD0 | 80 7D 03 F4 */	lwz r3, 0x3f4(r29)
/* 81440FD4 | 38 80 00 00 */	li r4, 0x0
/* 81440FD8 | 38 A0 00 03 */	li r5, 0x3
/* 81440FDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440FE0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81440FE4 | 7D 89 03 A6 */	mtctr r12
/* 81440FE8 | 4E 80 04 21 */	bctrl
/* 81440FEC | 48 00 00 34 */	b .L_81441020
.L_81440FF0:
/* 81440FF0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81440FF4 | 40 82 00 2C */	bne .L_81441020
/* 81440FF8 | 88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 81440FFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81441000 | 41 82 00 20 */	beq .L_81441020
/* 81441004 | 80 7D 03 F4 */	lwz r3, 0x3f4(r29)
/* 81441008 | 38 80 00 01 */	li r4, 0x1
/* 8144100C | 38 A0 00 03 */	li r5, 0x3
/* 81441010 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441014 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81441018 | 7D 89 03 A6 */	mtctr r12
/* 8144101C | 4E 80 04 21 */	bctrl
.L_81441020:
/* 81441020 | 9B DD 03 F8 */	stb r30, 0x3f8(r29)
/* 81441024 | 9B FD 03 F9 */	stb r31, 0x3f9(r29)
/* 81441028 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144102C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81441030 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81441034 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81441038 | 7C 08 03 A6 */	mtlr r0
/* 8144103C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81441040 | 4E 80 00 20 */	blr
.endfn setAddScroll__Q49textinput6extend4memo9InputFormFfbb

# .text:0x1D8 | 0x81441044 | size: 0x128
# textinput::extend::memo::InputForm::moveCursorUp()
.fn moveCursorUp__Q49textinput6extend4memo9InputFormFv, global
/* 81441044 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81441048 | 7C 08 02 A6 */	mflr r0
/* 8144104C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81441050 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81441054 | 7C 7F 1B 78 */	mr r31, r3
/* 81441058 | 81 83 00 5C */	lwz r12, 0x5c(r3)
/* 8144105C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81441060 | 7D 89 03 A6 */	mtctr r12
/* 81441064 | 38 63 00 10 */	addi r3, r3, 0x10
/* 81441068 | 4E 80 04 21 */	bctrl
/* 8144106C | C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 81441070 | C0 42 8A 78 */	lfs f2, lbl_81694E78@sda21(r0)
/* 81441074 | EC 20 08 28 */	fsubs f1, f0, f1
/* 81441078 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 8144107C | EC 22 08 2A */	fadds f1, f2, f1
/* 81441080 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81441084 | 4C 40 13 82 */	cror eq, lt, eq
/* 81441088 | 40 82 00 80 */	bne .L_81441108
/* 8144108C | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81441090 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81441094 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81441098 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144109C | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 814410A0 | 7D 89 03 A6 */	mtctr r12
/* 814410A4 | 4E 80 04 21 */	bctrl
/* 814410A8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814410AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814410B0 | 40 82 00 2C */	bne .L_814410DC
/* 814410B4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814410B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814410BC | 40 82 00 20 */	bne .L_814410DC
/* 814410C0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814410C4 | 7F E3 FB 78 */	mr r3, r31
/* 814410C8 | 38 80 00 06 */	li r4, 0x6
/* 814410CC | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814410D0 | 7D 89 03 A6 */	mtctr r12
/* 814410D4 | 4E 80 04 21 */	bctrl
/* 814410D8 | 48 00 00 1C */	b .L_814410F4
.L_814410DC:
/* 814410DC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814410E0 | 7F E3 FB 78 */	mr r3, r31
/* 814410E4 | 38 80 00 05 */	li r4, 0x5
/* 814410E8 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814410EC | 7D 89 03 A6 */	mtctr r12
/* 814410F0 | 4E 80 04 21 */	bctrl
.L_814410F4:
/* 814410F4 | 80 9F 01 64 */	lwz r4, 0x164(r31)
/* 814410F8 | 7F E3 FB 78 */	mr r3, r31
/* 814410FC | 38 A0 00 00 */	li r5, 0x0
/* 81441100 | 4B FD B0 55 */	bl setCursorPos__Q39textinput9inputform4BaseFPQ39textinput8tistring9DecolatedUl
/* 81441104 | 48 00 00 4C */	b .L_81441150
.L_81441108:
/* 81441108 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144110C | 7F E3 FB 78 */	mr r3, r31
/* 81441110 | C0 1F 03 18 */	lfs f0, 0x318(r31)
/* 81441114 | 81 8C 01 80 */	lwz r12, 0x180(r12)
/* 81441118 | EC 41 00 28 */	fsubs f2, f1, f0
/* 8144111C | C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 81441120 | 7D 89 03 A6 */	mtctr r12
/* 81441124 | 4E 80 04 21 */	bctrl
/* 81441128 | 80 9F 01 64 */	lwz r4, 0x164(r31)
/* 8144112C | 7C 65 1B 78 */	mr r5, r3
/* 81441130 | 7F E3 FB 78 */	mr r3, r31
/* 81441134 | 4B FD B0 21 */	bl setCursorPos__Q39textinput9inputform4BaseFPQ39textinput8tistring9DecolatedUl
/* 81441138 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144113C | 7F E3 FB 78 */	mr r3, r31
/* 81441140 | 38 80 00 05 */	li r4, 0x5
/* 81441144 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81441148 | 7D 89 03 A6 */	mtctr r12
/* 8144114C | 4E 80 04 21 */	bctrl
.L_81441150:
/* 81441150 | 38 00 00 01 */	li r0, 0x1
/* 81441154 | 90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 81441158 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144115C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81441160 | 7C 08 03 A6 */	mtlr r0
/* 81441164 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81441168 | 4E 80 00 20 */	blr
.endfn moveCursorUp__Q49textinput6extend4memo9InputFormFv

# .text:0x300 | 0x8144116C | size: 0x1D0
# textinput::extend::memo::InputForm::moveCursorDown()
.fn moveCursorDown__Q49textinput6extend4memo9InputFormFv, global
/* 8144116C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81441170 | 7C 08 02 A6 */	mflr r0
/* 81441174 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81441178 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8144117C | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81441180 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 81441184 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 81441188 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8144118C | 7C 7F 1B 78 */	mr r31, r3
/* 81441190 | 81 83 00 5C */	lwz r12, 0x5c(r3)
/* 81441194 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81441198 | 7D 89 03 A6 */	mtctr r12
/* 8144119C | 38 63 00 10 */	addi r3, r3, 0x10
/* 814411A0 | 4E 80 04 21 */	bctrl
/* 814411A4 | C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 814411A8 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 814411AC | 81 9F 00 5C */	lwz r12, 0x5c(r31)
/* 814411B0 | EC 20 08 2A */	fadds f1, f0, f1
/* 814411B4 | C0 02 8A 78 */	lfs f0, lbl_81694E78@sda21(r0)
/* 814411B8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814411BC | EF C0 08 2A */	fadds f30, f0, f1
/* 814411C0 | 7D 89 03 A6 */	mtctr r12
/* 814411C4 | 4E 80 04 21 */	bctrl
/* 814411C8 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 814411CC | 3C 00 43 30 */	lis r0, 0x4330
/* 814411D0 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 814411D4 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 814411D8 | 81 9F 00 5C */	lwz r12, 0x5c(r31)
/* 814411DC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814411E0 | C8 22 8A 80 */	lfd f1, lbl_81694E80@sda21(r0)
/* 814411E4 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 814411E8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814411EC | EF E0 08 28 */	fsubs f31, f0, f1
/* 814411F0 | 7D 89 03 A6 */	mtctr r12
/* 814411F4 | 4E 80 04 21 */	bctrl
/* 814411F8 | EC 1E 08 24 */	fdivs f0, f30, f1
/* 814411FC | FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 81441200 | 4C 41 13 82 */	cror eq, gt, eq
/* 81441204 | 40 82 00 C4 */	bne .L_814412C8
/* 81441208 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8144120C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81441210 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81441214 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441218 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 8144121C | 7D 89 03 A6 */	mtctr r12
/* 81441220 | 4E 80 04 21 */	bctrl
/* 81441224 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 81441228 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144122C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81441230 | 7D 89 03 A6 */	mtctr r12
/* 81441234 | 4E 80 04 21 */	bctrl
/* 81441238 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8144123C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81441240 | 7C 00 18 40 */	cmplw r0, r3
/* 81441244 | 40 82 00 44 */	bne .L_81441288
/* 81441248 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8144124C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441250 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81441254 | 7D 89 03 A6 */	mtctr r12
/* 81441258 | 4E 80 04 21 */	bctrl
/* 8144125C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81441260 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81441264 | 7C 00 18 40 */	cmplw r0, r3
/* 81441268 | 40 82 00 20 */	bne .L_81441288
/* 8144126C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81441270 | 7F E3 FB 78 */	mr r3, r31
/* 81441274 | 38 80 00 06 */	li r4, 0x6
/* 81441278 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8144127C | 7D 89 03 A6 */	mtctr r12
/* 81441280 | 4E 80 04 21 */	bctrl
/* 81441284 | 48 00 00 1C */	b .L_814412A0
.L_81441288:
/* 81441288 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144128C | 7F E3 FB 78 */	mr r3, r31
/* 81441290 | 38 80 00 05 */	li r4, 0x5
/* 81441294 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81441298 | 7D 89 03 A6 */	mtctr r12
/* 8144129C | 4E 80 04 21 */	bctrl
.L_814412A0:
/* 814412A0 | 80 7F 01 64 */	lwz r3, 0x164(r31)
/* 814412A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814412A8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814412AC | 7D 89 03 A6 */	mtctr r12
/* 814412B0 | 4E 80 04 21 */	bctrl
/* 814412B4 | 80 9F 01 64 */	lwz r4, 0x164(r31)
/* 814412B8 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814412BC | 7F E3 FB 78 */	mr r3, r31
/* 814412C0 | 4B FD AE 95 */	bl setCursorPos__Q39textinput9inputform4BaseFPQ39textinput8tistring9DecolatedUl
/* 814412C4 | 48 00 00 4C */	b .L_81441310
.L_814412C8:
/* 814412C8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814412CC | 7F E3 FB 78 */	mr r3, r31
/* 814412D0 | C0 1F 03 18 */	lfs f0, 0x318(r31)
/* 814412D4 | 81 8C 01 80 */	lwz r12, 0x180(r12)
/* 814412D8 | EC 5E 00 28 */	fsubs f2, f30, f0
/* 814412DC | C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 814412E0 | 7D 89 03 A6 */	mtctr r12
/* 814412E4 | 4E 80 04 21 */	bctrl
/* 814412E8 | 80 9F 01 64 */	lwz r4, 0x164(r31)
/* 814412EC | 7C 65 1B 78 */	mr r5, r3
/* 814412F0 | 7F E3 FB 78 */	mr r3, r31
/* 814412F4 | 4B FD AE 61 */	bl setCursorPos__Q39textinput9inputform4BaseFPQ39textinput8tistring9DecolatedUl
/* 814412F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814412FC | 7F E3 FB 78 */	mr r3, r31
/* 81441300 | 38 80 00 05 */	li r4, 0x5
/* 81441304 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81441308 | 7D 89 03 A6 */	mtctr r12
/* 8144130C | 4E 80 04 21 */	bctrl
.L_81441310:
/* 81441310 | 38 00 00 01 */	li r0, 0x1
/* 81441314 | 90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 81441318 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8144131C | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81441320 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 81441324 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81441328 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144132C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81441330 | 7C 08 03 A6 */	mtlr r0
/* 81441334 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81441338 | 4E 80 00 20 */	blr
.endfn moveCursorDown__Q49textinput6extend4memo9InputFormFv

# .text:0x4D0 | 0x8144133C | size: 0x60
# textinput::extend::memo::InputForm::onCommand(textinput::CommandReceiver::INPUT_COMMAND, void*)
.fn onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, global
/* 8144133C | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81441340 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81441344 | 40 82 00 14 */	bne .L_81441358
/* 81441348 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144134C | 81 8C 02 C8 */	lwz r12, 0x2c8(r12)
/* 81441350 | 7D 89 03 A6 */	mtctr r12
/* 81441354 | 4E 80 04 20 */	bctr
.L_81441358:
/* 81441358 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8144135C | 40 82 00 14 */	bne .L_81441370
/* 81441360 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441364 | 81 8C 02 C4 */	lwz r12, 0x2c4(r12)
/* 81441368 | 7D 89 03 A6 */	mtctr r12
/* 8144136C | 4E 80 04 20 */	bctr
.L_81441370:
/* 81441370 | 38 04 FF FA */	subi r0, r4, 0x6
/* 81441374 | 28 00 00 19 */	cmplwi r0, 0x19
/* 81441378 | 4D 81 00 20 */	bgtlr
/* 8144137C | 3C C0 81 67 */	lis r6, jumptable_81668280@ha
/* 81441380 | 54 00 10 3A */	slwi r0, r0, 2
/* 81441384 | 38 C6 82 80 */	addi r6, r6, jumptable_81668280@l
/* 81441388 | 7C C6 00 2E */	lwzx r6, r6, r0
/* 8144138C | 7C C9 03 A6 */	mtctr r6
/* 81441390 | 4E 80 04 20 */	bctr
.L_81441394:
/* 81441394 | 4B FE 58 EC */	b onCommand__Q39textinput9inputform12LayoutByNW4RFQ39textinput15CommandReceiver13INPUT_COMMANDPv
.L_81441398:
/* 81441398 | 4E 80 00 20 */	blr
.endfn onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv

# .text:0x530 | 0x8144139C | size: 0x10C
# textinput::extend::memo::InputForm::onCommandOnEditMode(textinput::CommandReceiver::INPUT_COMMAND, void*)
.fn onCommandOnEditMode__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, global
/* 8144139C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814413A0 | 7C 08 02 A6 */	mflr r0
/* 814413A4 | 2C 04 00 18 */	cmpwi r4, 0x18
/* 814413A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814413AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814413B0 | 7C BF 2B 78 */	mr r31, r5
/* 814413B4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814413B8 | 7C 7E 1B 78 */	mr r30, r3
/* 814413BC | 41 82 00 08 */	beq .L_814413C4
/* 814413C0 | 48 00 00 CC */	b .L_8144148C
.L_814413C4:
/* 814413C4 | 85 83 03 C0 */	lwzu r12, 0x3c0(r3)
/* 814413C8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814413CC | 7D 89 03 A6 */	mtctr r12
/* 814413D0 | 4E 80 04 21 */	bctrl
/* 814413D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814413D8 | 40 82 00 B8 */	bne .L_81441490
/* 814413DC | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 814413E0 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 814413E4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 814413E8 | 40 80 00 48 */	bge .L_81441430
/* 814413EC | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 814413F0 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 814413F4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814413F8 | 7D 89 03 A6 */	mtctr r12
/* 814413FC | 4E 80 04 21 */	bctrl
/* 81441400 | 81 9E 03 C0 */	lwz r12, 0x3c0(r30)
/* 81441404 | 38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 81441408 | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 8144140C | 38 80 00 00 */	li r4, 0x0
/* 81441410 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81441414 | 38 A0 00 00 */	li r5, 0x0
/* 81441418 | EC 40 08 2A */	fadds f2, f0, f1
/* 8144141C | C0 62 8A 88 */	lfs f3, lbl_81694E88@sda21(r0)
/* 81441420 | FC 20 00 90 */	fmr f1, f0
/* 81441424 | 7D 89 03 A6 */	mtctr r12
/* 81441428 | 4E 80 04 21 */	bctrl
/* 8144142C | 48 00 00 44 */	b .L_81441470
.L_81441430:
/* 81441430 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81441434 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81441438 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8144143C | 7D 89 03 A6 */	mtctr r12
/* 81441440 | 4E 80 04 21 */	bctrl
/* 81441444 | 81 9E 03 C0 */	lwz r12, 0x3c0(r30)
/* 81441448 | 38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 8144144C | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81441450 | 38 80 00 00 */	li r4, 0x0
/* 81441454 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81441458 | 38 A0 00 00 */	li r5, 0x0
/* 8144145C | EC 40 08 28 */	fsubs f2, f0, f1
/* 81441460 | C0 62 8A 88 */	lfs f3, lbl_81694E88@sda21(r0)
/* 81441464 | FC 20 00 90 */	fmr f1, f0
/* 81441468 | 7D 89 03 A6 */	mtctr r12
/* 8144146C | 4E 80 04 21 */	bctrl
.L_81441470:
/* 81441470 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81441474 | 7F C3 F3 78 */	mr r3, r30
/* 81441478 | 38 80 00 0B */	li r4, 0xb
/* 8144147C | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81441480 | 7D 89 03 A6 */	mtctr r12
/* 81441484 | 4E 80 04 21 */	bctrl
/* 81441488 | 48 00 00 08 */	b .L_81441490
.L_8144148C:
/* 8144148C | 4B FE 57 F5 */	bl onCommand__Q39textinput9inputform12LayoutByNW4RFQ39textinput15CommandReceiver13INPUT_COMMANDPv
.L_81441490:
/* 81441490 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81441494 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81441498 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144149C | 7C 08 03 A6 */	mtlr r0
/* 814414A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814414A4 | 4E 80 00 20 */	blr
.endfn onCommandOnEditMode__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv

# .text:0x63C | 0x814414A8 | size: 0x208
# textinput::extend::memo::InputForm::onCommandOnDispMode(textinput::CommandReceiver::INPUT_COMMAND, void*)
.fn onCommandOnDispMode__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, global
/* 814414A8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814414AC | 7C 08 02 A6 */	mflr r0
/* 814414B0 | 2C 04 00 1E */	cmpwi r4, 0x1e
/* 814414B4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814414B8 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 814414BC | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 814414C0 | 7C BE 2B 78 */	mr r30, r5
/* 814414C4 | 93 A1 00 44 */	stw r29, 0x44(r1)
/* 814414C8 | 7C 7D 1B 78 */	mr r29, r3
/* 814414CC | 41 82 01 C8 */	beq .L_81441694
/* 814414D0 | 40 80 00 1C */	bge .L_814414EC
/* 814414D4 | 2C 04 00 0E */	cmpwi r4, 0xe
/* 814414D8 | 41 82 00 2C */	beq .L_81441504
/* 814414DC | 41 80 01 B8 */	blt .L_81441694
/* 814414E0 | 2C 04 00 1D */	cmpwi r4, 0x1d
/* 814414E4 | 40 80 01 A4 */	bge .L_81441688
/* 814414E8 | 48 00 01 AC */	b .L_81441694
.L_814414EC:
/* 814414EC | 2C 04 00 29 */	cmpwi r4, 0x29
/* 814414F0 | 41 82 01 98 */	beq .L_81441688
/* 814414F4 | 40 80 01 A0 */	bge .L_81441694
/* 814414F8 | 2C 04 00 20 */	cmpwi r4, 0x20
/* 814414FC | 40 80 01 98 */	bge .L_81441694
/* 81441500 | 48 00 01 88 */	b .L_81441688
.L_81441504:
/* 81441504 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441508 | 81 8C 01 84 */	lwz r12, 0x184(r12)
/* 8144150C | 7D 89 03 A6 */	mtctr r12
/* 81441510 | 4E 80 04 21 */	bctrl
/* 81441514 | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 81441518 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8144151C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81441520 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81441524 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 81441528 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8144152C | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81441530 | 7D 89 03 A6 */	mtctr r12
/* 81441534 | 4E 80 04 21 */	bctrl
/* 81441538 | C0 5E 00 04 */	lfs f2, 0x4(r30)
/* 8144153C | 38 7D 00 10 */	addi r3, r29, 0x10
/* 81441540 | C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 81441544 | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 81441548 | EC 02 00 28 */	fsubs f0, f2, f0
/* 8144154C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81441550 | EC 00 08 24 */	fdivs f0, f0, f1
/* 81441554 | FC 00 00 1E */	fctiwz f0, f0
/* 81441558 | D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8144155C | 83 E1 00 34 */	lwz r31, 0x34(r1)
/* 81441560 | 7D 89 03 A6 */	mtctr r12
/* 81441564 | 4E 80 04 21 */	bctrl
/* 81441568 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8144156C | 7C 1F 00 00 */	cmpw r31, r0
/* 81441570 | 40 81 00 1C */	ble .L_8144158C
/* 81441574 | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 81441578 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 8144157C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81441580 | 7D 89 03 A6 */	mtctr r12
/* 81441584 | 4E 80 04 21 */	bctrl
/* 81441588 | 3B E3 FF FF */	subi r31, r3, 0x1
.L_8144158C:
/* 8144158C | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 81441590 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 81441594 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81441598 | 7D 89 03 A6 */	mtctr r12
/* 8144159C | 4E 80 04 21 */	bctrl
/* 814415A0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814415A4 | 40 81 00 3C */	ble .L_814415E0
/* 814415A8 | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 814415AC | 38 7D 00 10 */	addi r3, r29, 0x10
/* 814415B0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814415B4 | 7D 89 03 A6 */	mtctr r12
/* 814415B8 | 4E 80 04 21 */	bctrl
/* 814415BC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814415C0 | 7C 1F 00 00 */	cmpw r31, r0
/* 814415C4 | 41 80 00 1C */	blt .L_814415E0
/* 814415C8 | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 814415CC | 38 7D 00 10 */	addi r3, r29, 0x10
/* 814415D0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814415D4 | 7D 89 03 A6 */	mtctr r12
/* 814415D8 | 4E 80 04 21 */	bctrl
/* 814415DC | 3B E3 FF FE */	subi r31, r3, 0x2
.L_814415E0:
/* 814415E0 | C0 1D 03 18 */	lfs f0, 0x318(r29)
/* 814415E4 | 38 7D 00 10 */	addi r3, r29, 0x10
/* 814415E8 | D0 1D 03 1C */	stfs f0, 0x31c(r29)
/* 814415EC | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 814415F0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814415F4 | 7D 89 03 A6 */	mtctr r12
/* 814415F8 | 4E 80 04 21 */	bctrl
/* 814415FC | 6F E3 80 00 */	xoris r3, r31, 0x8000
/* 81441600 | 3C 00 43 30 */	lis r0, 0x4330
/* 81441604 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 81441608 | 7F A3 EB 78 */	mr r3, r29
/* 8144160C | C8 42 8A 80 */	lfd f2, lbl_81694E80@sda21(r0)
/* 81441610 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81441614 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 81441618 | 38 80 00 0E */	li r4, 0xe
/* 8144161C | C8 01 00 30 */	lfd f0, 0x30(r1)
/* 81441620 | EC 00 10 28 */	fsubs f0, f0, f2
/* 81441624 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81441628 | D0 1D 03 20 */	stfs f0, 0x320(r29)
/* 8144162C | C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 81441630 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 81441634 | C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 81441638 | C0 1D 03 18 */	lfs f0, 0x318(r29)
/* 8144163C | EC 01 00 28 */	fsubs f0, f1, f0
/* 81441640 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 81441644 | 4B FE 56 3D */	bl onCommand__Q39textinput9inputform12LayoutByNW4RFQ39textinput15CommandReceiver13INPUT_COMMANDPv
/* 81441648 | 38 01 00 08 */	addi r0, r1, 0x8
/* 8144164C | 38 C0 00 00 */	li r6, 0x0
/* 81441650 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81441654 | 7F A3 EB 78 */	mr r3, r29
/* 81441658 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 8144165C | 38 80 00 25 */	li r4, 0x25
/* 81441660 | 90 C1 00 18 */	stw r6, 0x18(r1)
/* 81441664 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81441668 | 4B FE 56 19 */	bl onCommand__Q39textinput9inputform12LayoutByNW4RFQ39textinput15CommandReceiver13INPUT_COMMANDPv
/* 8144166C | 38 00 00 01 */	li r0, 0x1
/* 81441670 | 38 7D 01 18 */	addi r3, r29, 0x118
/* 81441674 | 98 1D 03 EC */	stb r0, 0x3ec(r29)
/* 81441678 | 4B FE 6A D9 */	bl resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 8144167C | 38 7D 01 18 */	addi r3, r29, 0x118
/* 81441680 | 4B FE 6B 31 */	bl makeEmptyCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 81441684 | 48 00 00 10 */	b .L_81441694
.L_81441688:
/* 81441688 | 7F A3 EB 78 */	mr r3, r29
/* 8144168C | 7F C5 F3 78 */	mr r5, r30
/* 81441690 | 4B FE 55 F1 */	bl onCommand__Q39textinput9inputform12LayoutByNW4RFQ39textinput15CommandReceiver13INPUT_COMMANDPv
.L_81441694:
/* 81441694 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81441698 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8144169C | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 814416A0 | 83 A1 00 44 */	lwz r29, 0x44(r1)
/* 814416A4 | 7C 08 03 A6 */	mtlr r0
/* 814416A8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814416AC | 4E 80 00 20 */	blr
.endfn onCommandOnDispMode__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv

# .text:0x844 | 0x814416B0 | size: 0x370
# textinput::extend::memo::InputForm::create(MEMAllocator*, textinput::inputform::EditBuffer*)
.fn create__Q49textinput6extend4memo9InputFormFP12MEMAllocatorPQ39textinput9inputform10EditBuffer, global
/* 814416B0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814416B4 | 7C 08 02 A6 */	mflr r0
/* 814416B8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814416BC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814416C0 | 3F E0 81 67 */	lis r31, lbl_81668210@ha
/* 814416C4 | 3B FF 82 10 */	addi r31, r31, lbl_81668210@l
/* 814416C8 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814416CC | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814416D0 | 7C 9D 23 78 */	mr r29, r4
/* 814416D4 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 814416D8 | 7C 7C 1B 78 */	mr r28, r3
/* 814416DC | 4B FE 40 B1 */	bl create__Q39textinput9inputform12LayoutByNW4RFP12MEMAllocatorPQ39textinput9inputform10EditBuffer
/* 814416E0 | 7F A3 EB 78 */	mr r3, r29
/* 814416E4 | 38 80 00 4C */	li r4, 0x4c
/* 814416E8 | 48 11 9F 81 */	bl fn_8155B668
/* 814416EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814416F0 | 7C 7E 1B 78 */	mr r30, r3
/* 814416F4 | 41 82 00 4C */	beq .L_81441740
/* 814416F8 | 38 00 04 00 */	li r0, 0x400
/* 814416FC | 3D 80 81 66 */	lis r12, __vt__Q39textinput8tistring9Decolated@ha
/* 81441700 | B0 03 00 04 */	sth r0, 0x4(r3)
/* 81441704 | 38 00 00 00 */	li r0, 0x0
/* 81441708 | 39 8C F5 18 */	addi r12, r12, __vt__Q39textinput8tistring9Decolated@l
/* 8144170C | B0 03 00 06 */	sth r0, 0x6(r3)
/* 81441710 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81441714 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81441718 | B0 03 00 10 */	sth r0, 0x10(r3)
/* 8144171C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81441720 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 81441724 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81441728 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 8144172C | 98 03 00 20 */	stb r0, 0x20(r3)
/* 81441730 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 81441734 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 81441738 | 7D 89 03 A6 */	mtctr r12
/* 8144173C | 4E 80 04 21 */	bctrl
.L_81441740:
/* 81441740 | 93 DC 03 E8 */	stw r30, 0x3e8(r28)
/* 81441744 | 7F C3 F3 78 */	mr r3, r30
/* 81441748 | 7F A4 EB 78 */	mr r4, r29
/* 8144174C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81441750 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81441754 | 7D 89 03 A6 */	mtctr r12
/* 81441758 | 4E 80 04 21 */	bctrl
/* 8144175C | 80 9C 02 D0 */	lwz r4, 0x2d0(r28)
/* 81441760 | 7F A3 EB 78 */	mr r3, r29
/* 81441764 | 48 11 9F 15 */	bl fn_8155B678
/* 81441768 | 7F A3 EB 78 */	mr r3, r29
/* 8144176C | 38 80 00 14 */	li r4, 0x14
/* 81441770 | 48 11 9E F9 */	bl fn_8155B668
/* 81441774 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81441778 | 41 82 00 20 */	beq .L_81441798
/* 8144177C | 38 00 00 00 */	li r0, 0x0
/* 81441780 | 3C 80 81 67 */	lis r4, __vt__Q49textinput6extend4memo12EventHandler@ha
/* 81441784 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81441788 | 38 84 85 58 */	addi r4, r4, __vt__Q49textinput6extend4memo12EventHandler@l
/* 8144178C | 93 83 00 0C */	stw r28, 0xc(r3)
/* 81441790 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81441794 | 93 83 00 10 */	stw r28, 0x10(r3)
.L_81441798:
/* 81441798 | 90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 8144179C | 80 9C 02 2C */	lwz r4, 0x22c(r28)
/* 814417A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814417A4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814417A8 | 7D 89 03 A6 */	mtctr r12
/* 814417AC | 4E 80 04 21 */	bctrl
/* 814417B0 | 80 7C 02 28 */	lwz r3, 0x228(r28)
/* 814417B4 | 80 9C 02 D0 */	lwz r4, 0x2d0(r28)
/* 814417B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814417BC | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 814417C0 | 7D 89 03 A6 */	mtctr r12
/* 814417C4 | 4E 80 04 21 */	bctrl
/* 814417C8 | 7F A3 EB 78 */	mr r3, r29
/* 814417CC | 38 80 00 20 */	li r4, 0x20
/* 814417D0 | 48 11 9E 99 */	bl fn_8155B668
/* 814417D4 | 90 7C 03 E4 */	stw r3, 0x3e4(r28)
/* 814417D8 | 7F 83 E3 78 */	mr r3, r28
/* 814417DC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 814417E0 | 81 8C 02 9C */	lwz r12, 0x29c(r12)
/* 814417E4 | 7D 89 03 A6 */	mtctr r12
/* 814417E8 | 4E 80 04 21 */	bctrl
/* 814417EC | 80 9C 03 E4 */	lwz r4, 0x3e4(r28)
/* 814417F0 | 38 A0 00 00 */	li r5, 0x0
/* 814417F4 | 48 0E 65 39 */	bl fn_81527D2C
/* 814417F8 | 81 9C 02 18 */	lwz r12, 0x218(r28)
/* 814417FC | 38 7C 02 18 */	addi r3, r28, 0x218
/* 81441800 | 38 9F 00 D8 */	addi r4, r31, 0xd8
/* 81441804 | 38 A0 00 01 */	li r5, 0x1
/* 81441808 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8144180C | 7D 89 03 A6 */	mtctr r12
/* 81441810 | 4E 80 04 21 */	bctrl
/* 81441814 | 80 7C 02 1C */	lwz r3, 0x21c(r28)
/* 81441818 | 38 9F 00 E8 */	addi r4, r31, 0xe8
/* 8144181C | 38 A0 00 01 */	li r5, 0x1
/* 81441820 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81441824 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441828 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8144182C | 7D 89 03 A6 */	mtctr r12
/* 81441830 | 4E 80 04 21 */	bctrl
/* 81441834 | 90 7C 03 10 */	stw r3, 0x310(r28)
/* 81441838 | 38 9F 00 F8 */	addi r4, r31, 0xf8
/* 8144183C | 80 DC 02 1C */	lwz r6, 0x21c(r28)
/* 81441840 | 38 A0 00 01 */	li r5, 0x1
/* 81441844 | C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 81441848 | D0 1C 03 4C */	stfs f0, 0x34c(r28)
/* 8144184C | C0 03 00 30 */	lfs f0, 0x30(r3)
/* 81441850 | D0 1C 03 50 */	stfs f0, 0x350(r28)
/* 81441854 | C0 03 00 34 */	lfs f0, 0x34(r3)
/* 81441858 | D0 1C 03 54 */	stfs f0, 0x354(r28)
/* 8144185C | C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 81441860 | D0 1C 03 58 */	stfs f0, 0x358(r28)
/* 81441864 | C0 03 00 50 */	lfs f0, 0x50(r3)
/* 81441868 | D0 1C 03 5C */	stfs f0, 0x35c(r28)
/* 8144186C | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 81441870 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441874 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81441878 | 7D 89 03 A6 */	mtctr r12
/* 8144187C | 4E 80 04 21 */	bctrl
/* 81441880 | 7C 64 1B 78 */	mr r4, r3
/* 81441884 | 90 7C 03 14 */	stw r3, 0x314(r28)
/* 81441888 | 80 7C 02 28 */	lwz r3, 0x228(r28)
/* 8144188C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441890 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81441894 | 7D 89 03 A6 */	mtctr r12
/* 81441898 | 4E 80 04 21 */	bctrl
/* 8144189C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814418A0 | 38 80 00 00 */	li r4, 0x0
/* 814418A4 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814418A8 | 7D 89 03 A6 */	mtctr r12
/* 814418AC | 4E 80 04 21 */	bctrl
/* 814418B0 | 80 9C 03 14 */	lwz r4, 0x314(r28)
/* 814418B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814418B8 | 38 BC 02 30 */	addi r5, r28, 0x230
/* 814418BC | 48 0D D5 A9 */	bl fn_8151EE64
/* 814418C0 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 814418C4 | 38 8D 94 C0 */	li r4, lbl_81697500@sda21
/* 814418C8 | 80 DC 03 14 */	lwz r6, 0x314(r28)
/* 814418CC | 38 A0 00 01 */	li r5, 0x1
/* 814418D0 | D0 1C 03 28 */	stfs f0, 0x328(r28)
/* 814418D4 | 80 7C 02 1C */	lwz r3, 0x21c(r28)
/* 814418D8 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 814418DC | D0 1C 03 2C */	stfs f0, 0x32c(r28)
/* 814418E0 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 814418E4 | D0 1C 03 30 */	stfs f0, 0x330(r28)
/* 814418E8 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 814418EC | D0 1C 03 34 */	stfs f0, 0x334(r28)
/* 814418F0 | C0 06 00 2C */	lfs f0, 0x2c(r6)
/* 814418F4 | D0 1C 03 38 */	stfs f0, 0x338(r28)
/* 814418F8 | C0 06 00 30 */	lfs f0, 0x30(r6)
/* 814418FC | D0 1C 03 3C */	stfs f0, 0x33c(r28)
/* 81441900 | C0 06 00 34 */	lfs f0, 0x34(r6)
/* 81441904 | D0 1C 03 40 */	stfs f0, 0x340(r28)
/* 81441908 | C0 06 00 4C */	lfs f0, 0x4c(r6)
/* 8144190C | D0 1C 03 44 */	stfs f0, 0x344(r28)
/* 81441910 | C0 06 00 50 */	lfs f0, 0x50(r6)
/* 81441914 | D0 1C 03 48 */	stfs f0, 0x348(r28)
/* 81441918 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8144191C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441920 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81441924 | 7D 89 03 A6 */	mtctr r12
/* 81441928 | 4E 80 04 21 */	bctrl
/* 8144192C | 90 7C 03 08 */	stw r3, 0x308(r28)
/* 81441930 | 38 9F 01 08 */	addi r4, r31, 0x108
/* 81441934 | 80 7C 02 1C */	lwz r3, 0x21c(r28)
/* 81441938 | 38 A0 00 01 */	li r5, 0x1
/* 8144193C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81441940 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441944 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81441948 | 7D 89 03 A6 */	mtctr r12
/* 8144194C | 4E 80 04 21 */	bctrl
/* 81441950 | 90 7C 03 0C */	stw r3, 0x30c(r28)
/* 81441954 | 7F 83 E3 78 */	mr r3, r28
/* 81441958 | C0 22 8A 7C */	lfs f1, lbl_81694E7C@sda21(r0)
/* 8144195C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81441960 | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 81441964 | 7D 89 03 A6 */	mtctr r12
/* 81441968 | 4E 80 04 21 */	bctrl
/* 8144196C | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81441970 | 38 00 00 01 */	li r0, 0x1
/* 81441974 | 90 1C 03 24 */	stw r0, 0x324(r28)
/* 81441978 | 38 7C 03 60 */	addi r3, r28, 0x360
/* 8144197C | D0 1C 03 1C */	stfs f0, 0x31c(r28)
/* 81441980 | D0 1C 03 20 */	stfs f0, 0x320(r28)
/* 81441984 | 48 0F F4 AD */	bl fn_81540E30
/* 81441988 | 38 7C 03 90 */	addi r3, r28, 0x390
/* 8144198C | 48 0F F4 A5 */	bl fn_81540E30
/* 81441990 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81441994 | 7F 83 E3 78 */	mr r3, r28
/* 81441998 | 7F A4 EB 78 */	mr r4, r29
/* 8144199C | 81 8C 02 B4 */	lwz r12, 0x2b4(r12)
/* 814419A0 | 7D 89 03 A6 */	mtctr r12
/* 814419A4 | 4E 80 04 21 */	bctrl
/* 814419A8 | 7F A3 EB 78 */	mr r3, r29
/* 814419AC | 38 80 00 40 */	li r4, 0x40
/* 814419B0 | 48 11 9C B9 */	bl fn_8155B668
/* 814419B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814419B8 | 41 82 00 2C */	beq .L_814419E4
/* 814419BC | 3C 80 81 67 */	lis r4, __vt__Q49textinput6extend4memo12ScrollButton@ha
/* 814419C0 | 80 BC 02 1C */	lwz r5, 0x21c(r28)
/* 814419C4 | 38 84 84 B8 */	addi r4, r4, __vt__Q49textinput6extend4memo12ScrollButton@l
/* 814419C8 | 38 00 00 00 */	li r0, 0x0
/* 814419CC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814419D0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814419D4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814419D8 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 814419DC | 98 03 00 3D */	stb r0, 0x3d(r3)
/* 814419E0 | 98 03 00 3E */	stb r0, 0x3e(r3)
.L_814419E4:
/* 814419E4 | 90 7C 03 F4 */	stw r3, 0x3f4(r28)
/* 814419E8 | 7F A4 EB 78 */	mr r4, r29
/* 814419EC | 80 BC 02 24 */	lwz r5, 0x224(r28)
/* 814419F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814419F4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 814419F8 | 7D 89 03 A6 */	mtctr r12
/* 814419FC | 4E 80 04 21 */	bctrl
/* 81441A00 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81441A04 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81441A08 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81441A0C | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 81441A10 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 81441A14 | 7C 08 03 A6 */	mtlr r0
/* 81441A18 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81441A1C | 4E 80 00 20 */	blr
.endfn create__Q49textinput6extend4memo9InputFormFP12MEMAllocatorPQ39textinput9inputform10EditBuffer

# .text:0xBB4 | 0x81441A20 | size: 0x10
# textinput::gui::GUIManager::changeEventHandler(textinput::gui::EventHandler*)
.fn changeEventHandler__Q39textinput3gui10GUIManagerFPQ39textinput3gui12EventHandler, global
/* 81441A20 | 7C 65 1B 78 */	mr r5, r3
/* 81441A24 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81441A28 | 90 85 00 04 */	stw r4, 0x4(r5)
/* 81441A2C | 4E 80 00 20 */	blr
.endfn changeEventHandler__Q39textinput3gui10GUIManagerFPQ39textinput3gui12EventHandler

# .text:0xBC4 | 0x81441A30 | size: 0x1F0
# textinput::extend::memo::InputForm::createAnimation(MEMAllocator*)
.fn createAnimation__Q49textinput6extend4memo9InputFormFP12MEMAllocator, global
/* 81441A30 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81441A34 | 7C 08 02 A6 */	mflr r0
/* 81441A38 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81441A3C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81441A40 | 48 1B 7A 59 */	bl _savegpr_17
/* 81441A44 | 3E 60 81 66 */	lis r19, __vt__Q39textinput11nw4rmanager7AnmPane@ha
/* 81441A48 | 3E A0 81 67 */	lis r21, __vt__Q49textinput6extend4memo9WholePane@ha
/* 81441A4C | 3F E0 81 61 */	lis r31, csPaneToAnimation__Q39textinput6extend4memo@ha
/* 81441A50 | 3E C0 81 67 */	lis r22, __vt__Q49textinput6extend4memo10NigaoePane@ha
/* 81441A54 | 7C 79 1B 78 */	mr r25, r3
/* 81441A58 | 7C 9A 23 78 */	mr r26, r4
/* 81441A5C | 3A 73 F8 C8 */	addi r19, r19, __vt__Q39textinput11nw4rmanager7AnmPane@l
/* 81441A60 | 3A B5 84 FC */	addi r21, r21, __vt__Q49textinput6extend4memo9WholePane@l
/* 81441A64 | 3B FF 65 48 */	addi r31, r31, csPaneToAnimation__Q39textinput6extend4memo@l
/* 81441A68 | 3A D6 84 D0 */	addi r22, r22, __vt__Q49textinput6extend4memo10NigaoePane@l
/* 81441A6C | 3B C0 00 00 */	li r30, 0x0
/* 81441A70 | 3A 80 00 00 */	li r20, 0x0
/* 81441A74 | 3A E0 00 01 */	li r23, 0x1
.L_81441A78:
/* 81441A78 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81441A7C | 3B 80 00 00 */	li r28, 0x0
/* 81441A80 | 1C 00 00 3C */	mulli r0, r0, 0x3c
/* 81441A84 | 7F BF 02 14 */	add r29, r31, r0
/* 81441A88 | 7C 1F 00 2E */	lwzx r0, r31, r0
/* 81441A8C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81441A90 | 41 82 00 70 */	beq .L_81441B00
/* 81441A94 | 40 80 00 C4 */	bge .L_81441B58
/* 81441A98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81441A9C | 40 80 00 08 */	bge .L_81441AA4
/* 81441AA0 | 48 00 00 B8 */	b .L_81441B58
.L_81441AA4:
/* 81441AA4 | 7F 43 D3 78 */	mr r3, r26
/* 81441AA8 | 38 80 00 34 */	li r4, 0x34
/* 81441AAC | 48 11 9B BD */	bl fn_8155B668
/* 81441AB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81441AB4 | 7C 7C 1B 78 */	mr r28, r3
/* 81441AB8 | 41 82 00 A0 */	beq .L_81441B58
/* 81441ABC | 81 99 02 18 */	lwz r12, 0x218(r25)
/* 81441AC0 | 38 79 02 18 */	addi r3, r25, 0x218
/* 81441AC4 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 81441AC8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81441ACC | 7D 89 03 A6 */	mtctr r12
/* 81441AD0 | 4E 80 04 21 */	bctrl
/* 81441AD4 | 92 7C 00 00 */	stw r19, 0x0(r28)
/* 81441AD8 | 38 80 00 10 */	li r4, 0x10
/* 81441ADC | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 81441AE0 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 81441AE4 | 92 9C 00 14 */	stw r20, 0x14(r28)
/* 81441AE8 | 92 9C 00 18 */	stw r20, 0x18(r28)
/* 81441AEC | 48 0D 05 71 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81441AF0 | 92 9C 00 2C */	stw r20, 0x2c(r28)
/* 81441AF4 | 92 BC 00 00 */	stw r21, 0x0(r28)
/* 81441AF8 | 92 9C 00 30 */	stw r20, 0x30(r28)
/* 81441AFC | 48 00 00 5C */	b .L_81441B58
.L_81441B00:
/* 81441B00 | 7F 43 D3 78 */	mr r3, r26
/* 81441B04 | 38 80 00 34 */	li r4, 0x34
/* 81441B08 | 48 11 9B 61 */	bl fn_8155B668
/* 81441B0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81441B10 | 7C 7C 1B 78 */	mr r28, r3
/* 81441B14 | 41 82 00 44 */	beq .L_81441B58
/* 81441B18 | 81 99 02 18 */	lwz r12, 0x218(r25)
/* 81441B1C | 38 79 02 18 */	addi r3, r25, 0x218
/* 81441B20 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 81441B24 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81441B28 | 7D 89 03 A6 */	mtctr r12
/* 81441B2C | 4E 80 04 21 */	bctrl
/* 81441B30 | 92 7C 00 00 */	stw r19, 0x0(r28)
/* 81441B34 | 38 80 00 10 */	li r4, 0x10
/* 81441B38 | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 81441B3C | 38 7C 00 08 */	addi r3, r28, 0x8
/* 81441B40 | 92 9C 00 14 */	stw r20, 0x14(r28)
/* 81441B44 | 92 9C 00 18 */	stw r20, 0x18(r28)
/* 81441B48 | 48 0D 05 15 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81441B4C | 92 9C 00 2C */	stw r20, 0x2c(r28)
/* 81441B50 | 92 DC 00 00 */	stw r22, 0x0(r28)
/* 81441B54 | 92 FC 00 30 */	stw r23, 0x30(r28)
.L_81441B58:
/* 81441B58 | 7F 84 E3 78 */	mr r4, r28
/* 81441B5C | 38 79 02 84 */	addi r3, r25, 0x284
/* 81441B60 | 48 0D 05 15 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81441B64 | 83 1D 00 08 */	lwz r24, 0x8(r29)
/* 81441B68 | 3B 60 00 00 */	li r27, 0x0
/* 81441B6C | 48 00 00 84 */	b .L_81441BF0
.L_81441B70:
/* 81441B70 | 80 79 02 24 */	lwz r3, 0x224(r25)
/* 81441B74 | 57 60 13 BA */	clrlslwi r0, r27, 16, 2
/* 81441B78 | 7E 5D 02 14 */	add r18, r29, r0
/* 81441B7C | 38 80 00 00 */	li r4, 0x0
/* 81441B80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441B84 | 38 C0 00 00 */	li r6, 0x0
/* 81441B88 | 80 B2 00 0C */	lwz r5, 0xc(r18)
/* 81441B8C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81441B90 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81441B94 | 7D 89 03 A6 */	mtctr r12
/* 81441B98 | 4E 80 04 21 */	bctrl
/* 81441B9C | 81 99 02 18 */	lwz r12, 0x218(r25)
/* 81441BA0 | 7C 71 1B 78 */	mr r17, r3
/* 81441BA4 | 38 79 02 18 */	addi r3, r25, 0x218
/* 81441BA8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81441BAC | 7D 89 03 A6 */	mtctr r12
/* 81441BB0 | 4E 80 04 21 */	bctrl
/* 81441BB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441BB8 | 7E 24 8B 78 */	mr r4, r17
/* 81441BBC | 80 B9 02 24 */	lwz r5, 0x224(r25)
/* 81441BC0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81441BC4 | 7D 89 03 A6 */	mtctr r12
/* 81441BC8 | 4E 80 04 21 */	bctrl
/* 81441BCC | 80 B2 00 0C */	lwz r5, 0xc(r18)
/* 81441BD0 | 7C 66 1B 78 */	mr r6, r3
/* 81441BD4 | 7F 83 E3 78 */	mr r3, r28
/* 81441BD8 | 7F 44 D3 78 */	mr r4, r26
/* 81441BDC | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81441BE0 | 38 E0 00 00 */	li r7, 0x0
/* 81441BE4 | 39 00 00 01 */	li r8, 0x1
/* 81441BE8 | 4B FF 53 79 */	bl addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb
/* 81441BEC | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81441BF0:
/* 81441BF0 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 81441BF4 | 7C 00 C0 40 */	cmplw r0, r24
/* 81441BF8 | 41 80 FF 78 */	blt .L_81441B70
/* 81441BFC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81441C00 | 28 1E 00 02 */	cmplwi r30, 0x2
/* 81441C04 | 41 80 FE 74 */	blt .L_81441A78
/* 81441C08 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81441C0C | 48 1B 78 D9 */	bl _restgpr_17
/* 81441C10 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81441C14 | 7C 08 03 A6 */	mtlr r0
/* 81441C18 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81441C1C | 4E 80 00 20 */	blr
.endfn createAnimation__Q49textinput6extend4memo9InputFormFP12MEMAllocator

# .text:0xDB4 | 0x81441C20 | size: 0x58
# textinput::extend::memo::AnmPane::~AnmPane()
.fn __dt__Q49textinput6extend4memo7AnmPaneFv, global
/* 81441C20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81441C24 | 7C 08 02 A6 */	mflr r0
/* 81441C28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81441C2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81441C30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81441C34 | 7C 9F 23 78 */	mr r31, r4
/* 81441C38 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81441C3C | 7C 7E 1B 78 */	mr r30, r3
/* 81441C40 | 41 82 00 1C */	beq .L_81441C5C
/* 81441C44 | 38 80 00 00 */	li r4, 0x0
/* 81441C48 | 4B FF 52 D9 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
/* 81441C4C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81441C50 | 40 81 00 0C */	ble .L_81441C5C
/* 81441C54 | 7F C3 F3 78 */	mr r3, r30
/* 81441C58 | 48 1B 64 8D */	bl __dl__FPv
.L_81441C5C:
/* 81441C5C | 7F C3 F3 78 */	mr r3, r30
/* 81441C60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81441C64 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81441C68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81441C6C | 7C 08 03 A6 */	mtlr r0
/* 81441C70 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81441C74 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo7AnmPaneFv

# .text:0xE0C | 0x81441C78 | size: 0x268
# textinput::extend::memo::ScrollButton::create(MEMAllocator*, nw4r::lyt::MultiArcResourceAccessor*)
.fn create__Q49textinput6extend4memo12ScrollButtonFP12MEMAllocatorPQ34nw4r3lyt24MultiArcResourceAccessor, global
/* 81441C78 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81441C7C | 7C 08 02 A6 */	mflr r0
/* 81441C80 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81441C84 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81441C88 | 48 1B 78 09 */	bl _savegpr_15
/* 81441C8C | 7C 72 1B 78 */	mr r18, r3
/* 81441C90 | 3F 60 81 67 */	lis r27, csGroupName__Q39textinput6extend4memo@ha
/* 81441C94 | 3F 20 81 61 */	lis r25, csGroupToAnimation__Q39textinput6extend4memo@ha
/* 81441C98 | 3D E0 81 61 */	lis r15, csGroupAninationFile__Q39textinput6extend4memo@ha
/* 81441C9C | 3F A0 81 66 */	lis r29, __vt__Q39textinput11nw4rmanager7AnmPane@ha
/* 81441CA0 | 3F E0 81 67 */	lis r31, __vt__Q49textinput6extend4memo13SimpleAnmPane@ha
/* 81441CA4 | 3F 80 81 66 */	lis r28, __vt__Q39textinput11nw4rmanager13AnimPaneGroup@ha
/* 81441CA8 | 7C 93 23 78 */	mr r19, r4
/* 81441CAC | 7C B4 2B 78 */	mr r20, r5
/* 81441CB0 | 7E 5A 93 78 */	mr r26, r18
/* 81441CB4 | 3B 7B 83 98 */	addi r27, r27, csGroupName__Q39textinput6extend4memo@l
/* 81441CB8 | 3B 39 68 28 */	addi r25, r25, csGroupToAnimation__Q39textinput6extend4memo@l
/* 81441CBC | 39 EF 65 C0 */	addi r15, r15, csGroupAninationFile__Q39textinput6extend4memo@l
/* 81441CC0 | 3B BD F8 C8 */	addi r29, r29, __vt__Q39textinput11nw4rmanager7AnmPane@l
/* 81441CC4 | 3B FF 84 94 */	addi r31, r31, __vt__Q49textinput6extend4memo13SimpleAnmPane@l
/* 81441CC8 | 3B 9C F8 AC */	addi r28, r28, __vt__Q39textinput11nw4rmanager13AnimPaneGroup@l
/* 81441CCC | 3B 00 00 00 */	li r24, 0x0
/* 81441CD0 | 3B C0 00 00 */	li r30, 0x0
.L_81441CD4:
/* 81441CD4 | 7C 72 C2 14 */	add r3, r18, r24
/* 81441CD8 | 9B C3 00 34 */	stb r30, 0x34(r3)
/* 81441CDC | 80 72 00 0C */	lwz r3, 0xc(r18)
/* 81441CE0 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 81441CE4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81441CE8 | 48 0D E1 55 */	bl fn_8151FE3C
/* 81441CEC | 7C 71 1B 78 */	mr r17, r3
/* 81441CF0 | 7E 63 9B 78 */	mr r3, r19
/* 81441CF4 | 38 80 00 14 */	li r4, 0x14
/* 81441CF8 | 48 11 99 71 */	bl fn_8155B668
/* 81441CFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81441D00 | 7C 70 1B 78 */	mr r16, r3
/* 81441D04 | 41 82 00 18 */	beq .L_81441D1C
/* 81441D08 | 93 83 00 00 */	stw r28, 0x0(r3)
/* 81441D0C | 38 80 00 24 */	li r4, 0x24
/* 81441D10 | 92 23 00 04 */	stw r17, 0x4(r3)
/* 81441D14 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81441D18 | 48 0D 03 45 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
.L_81441D1C:
/* 81441D1C | 92 1A 00 10 */	stw r16, 0x10(r26)
/* 81441D20 | 3A 11 00 10 */	addi r16, r17, 0x10
/* 81441D24 | 82 31 00 10 */	lwz r17, 0x10(r17)
/* 81441D28 | 48 00 00 EC */	b .L_81441E14
.L_81441D2C:
/* 81441D2C | 7E 63 9B 78 */	mr r3, r19
/* 81441D30 | 38 80 00 2C */	li r4, 0x2c
/* 81441D34 | 48 11 99 35 */	bl fn_8155B668
/* 81441D38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81441D3C | 7C 77 1B 78 */	mr r23, r3
/* 81441D40 | 41 82 00 28 */	beq .L_81441D68
/* 81441D44 | 80 11 00 08 */	lwz r0, 0x8(r17)
/* 81441D48 | 38 80 00 10 */	li r4, 0x10
/* 81441D4C | 93 A3 00 00 */	stw r29, 0x0(r3)
/* 81441D50 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81441D54 | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 81441D58 | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 81441D5C | 38 63 00 08 */	addi r3, r3, 0x8
/* 81441D60 | 48 0D 02 FD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81441D64 | 93 F7 00 00 */	stw r31, 0x0(r23)
.L_81441D68:
/* 81441D68 | 3A C0 00 00 */	li r22, 0x0
.L_81441D6C:
/* 81441D6C | 56 C0 13 BA */	clrlslwi r0, r22, 16, 2
/* 81441D70 | 7C 79 02 14 */	add r3, r25, r0
/* 81441D74 | 82 A3 00 04 */	lwz r21, 0x4(r3)
/* 81441D78 | 2C 15 00 09 */	cmpwi r21, 0x9
/* 81441D7C | 41 82 00 70 */	beq .L_81441DEC
/* 81441D80 | 81 94 00 00 */	lwz r12, 0x0(r20)
/* 81441D84 | 1C 15 00 44 */	mulli r0, r21, 0x44
/* 81441D88 | 7E 83 A3 78 */	mr r3, r20
/* 81441D8C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81441D90 | 38 80 00 00 */	li r4, 0x0
/* 81441D94 | 38 C0 00 00 */	li r6, 0x0
/* 81441D98 | 7C AF 02 14 */	add r5, r15, r0
/* 81441D9C | 7D 89 03 A6 */	mtctr r12
/* 81441DA0 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81441DA4 | 4E 80 04 21 */	bctrl
/* 81441DA8 | 7C 64 1B 78 */	mr r4, r3
/* 81441DAC | 80 72 00 0C */	lwz r3, 0xc(r18)
/* 81441DB0 | 7E 85 A3 78 */	mr r5, r20
/* 81441DB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441DB8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81441DBC | 7D 89 03 A6 */	mtctr r12
/* 81441DC0 | 4E 80 04 21 */	bctrl
/* 81441DC4 | 2C 15 00 05 */	cmpwi r21, 0x5
/* 81441DC8 | 7C 66 1B 78 */	mr r6, r3
/* 81441DCC | 38 E0 00 00 */	li r7, 0x0
/* 81441DD0 | 40 82 00 08 */	bne .L_81441DD8
/* 81441DD4 | 38 E0 00 01 */	li r7, 0x1
.L_81441DD8:
/* 81441DD8 | 7E E3 BB 78 */	mr r3, r23
/* 81441DDC | 7E 64 9B 78 */	mr r4, r19
/* 81441DE0 | 7E A5 AB 78 */	mr r5, r21
/* 81441DE4 | 39 00 00 00 */	li r8, 0x0
/* 81441DE8 | 4B FF 51 79 */	bl addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb
.L_81441DEC:
/* 81441DEC | 3A D6 00 01 */	addi r22, r22, 0x1
/* 81441DF0 | 28 16 00 03 */	cmplwi r22, 0x3
/* 81441DF4 | 41 80 FF 78 */	blt .L_81441D6C
/* 81441DF8 | 80 7A 00 10 */	lwz r3, 0x10(r26)
/* 81441DFC | 7E E4 BB 78 */	mr r4, r23
/* 81441E00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441E04 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81441E08 | 7D 89 03 A6 */	mtctr r12
/* 81441E0C | 4E 80 04 21 */	bctrl
/* 81441E10 | 82 31 00 00 */	lwz r17, 0x0(r17)
.L_81441E14:
/* 81441E14 | 7C 11 80 40 */	cmplw r17, r16
/* 81441E18 | 40 82 FF 14 */	bne .L_81441D2C
/* 81441E1C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81441E20 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 81441E24 | 2C 18 00 09 */	cmpwi r24, 0x9
/* 81441E28 | 3B 39 00 10 */	addi r25, r25, 0x10
/* 81441E2C | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 81441E30 | 41 80 FE A4 */	blt .L_81441CD4
/* 81441E34 | 81 92 00 00 */	lwz r12, 0x0(r18)
/* 81441E38 | 7E 43 93 78 */	mr r3, r18
/* 81441E3C | 38 80 00 01 */	li r4, 0x1
/* 81441E40 | 38 A0 00 05 */	li r5, 0x5
/* 81441E44 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81441E48 | 7D 89 03 A6 */	mtctr r12
/* 81441E4C | 4E 80 04 21 */	bctrl
/* 81441E50 | 81 92 00 00 */	lwz r12, 0x0(r18)
/* 81441E54 | 7E 43 93 78 */	mr r3, r18
/* 81441E58 | 38 80 00 00 */	li r4, 0x0
/* 81441E5C | 38 A0 00 05 */	li r5, 0x5
/* 81441E60 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81441E64 | 7D 89 03 A6 */	mtctr r12
/* 81441E68 | 4E 80 04 21 */	bctrl
/* 81441E6C | 81 92 00 00 */	lwz r12, 0x0(r18)
/* 81441E70 | 7E 43 93 78 */	mr r3, r18
/* 81441E74 | 38 80 00 01 */	li r4, 0x1
/* 81441E78 | 38 A0 00 02 */	li r5, 0x2
/* 81441E7C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81441E80 | 7D 89 03 A6 */	mtctr r12
/* 81441E84 | 4E 80 04 21 */	bctrl
/* 81441E88 | 81 92 00 00 */	lwz r12, 0x0(r18)
/* 81441E8C | 7E 43 93 78 */	mr r3, r18
/* 81441E90 | 38 80 00 00 */	li r4, 0x0
/* 81441E94 | 38 A0 00 02 */	li r5, 0x2
/* 81441E98 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81441E9C | 7D 89 03 A6 */	mtctr r12
/* 81441EA0 | 4E 80 04 21 */	bctrl
/* 81441EA4 | 39 E0 00 00 */	li r15, 0x0
.L_81441EA8:
/* 81441EA8 | 81 92 00 00 */	lwz r12, 0x0(r18)
/* 81441EAC | 7E 43 93 78 */	mr r3, r18
/* 81441EB0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81441EB4 | 7D 89 03 A6 */	mtctr r12
/* 81441EB8 | 4E 80 04 21 */	bctrl
/* 81441EBC | 39 EF 00 01 */	addi r15, r15, 0x1
/* 81441EC0 | 2C 0F 00 0A */	cmpwi r15, 0xa
/* 81441EC4 | 41 80 FF E4 */	blt .L_81441EA8
/* 81441EC8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81441ECC | 48 1B 76 11 */	bl _restgpr_15
/* 81441ED0 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81441ED4 | 7C 08 03 A6 */	mtlr r0
/* 81441ED8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81441EDC | 4E 80 00 20 */	blr
.endfn create__Q49textinput6extend4memo12ScrollButtonFP12MEMAllocatorPQ34nw4r3lyt24MultiArcResourceAccessor

# .text:0x1074 | 0x81441EE0 | size: 0x58
# textinput::extend::memo::ScrollButton::calc()
.fn calc__Q49textinput6extend4memo12ScrollButtonFv, global
/* 81441EE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81441EE4 | 7C 08 02 A6 */	mflr r0
/* 81441EE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81441EEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81441EF0 | 7C 7F 1B 78 */	mr r31, r3
/* 81441EF4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81441EF8 | 3B C0 00 00 */	li r30, 0x0
.L_81441EFC:
/* 81441EFC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81441F00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81441F04 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81441F08 | 7D 89 03 A6 */	mtctr r12
/* 81441F0C | 4E 80 04 21 */	bctrl
/* 81441F10 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81441F14 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81441F18 | 2C 1E 00 09 */	cmpwi r30, 0x9
/* 81441F1C | 41 80 FF E0 */	blt .L_81441EFC
/* 81441F20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81441F24 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81441F28 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81441F2C | 7C 08 03 A6 */	mtlr r0
/* 81441F30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81441F34 | 4E 80 00 20 */	blr
.endfn calc__Q49textinput6extend4memo12ScrollButtonFv

# .text:0x10CC | 0x81441F38 | size: 0x1A8
# textinput::extend::memo::ScrollButton::changeAnimation(bool, unsigned long)
.fn changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, global
/* 81441F38 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81441F3C | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 81441F40 | 41 82 00 B8 */	beq .L_81441FF8
/* 81441F44 | 28 05 00 08 */	cmplwi r5, 0x8
/* 81441F48 | 41 81 01 60 */	bgt .L_814420A8
/* 81441F4C | 3C 80 81 67 */	lis r4, jumptable_816683E0@ha
/* 81441F50 | 54 A0 10 3A */	slwi r0, r5, 2
/* 81441F54 | 38 84 83 E0 */	addi r4, r4, jumptable_816683E0@l
/* 81441F58 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81441F5C | 7C 89 03 A6 */	mtctr r4
/* 81441F60 | 4E 80 04 20 */	bctr
.L_81441F64:
/* 81441F64 | 38 00 00 00 */	li r0, 0x0
/* 81441F68 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81441F6C | 48 00 01 3C */	b .L_814420A8
.L_81441F70:
/* 81441F70 | 38 00 00 05 */	li r0, 0x5
/* 81441F74 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81441F78 | 48 00 01 30 */	b .L_814420A8
.L_81441F7C:
/* 81441F7C | 38 00 00 05 */	li r0, 0x5
/* 81441F80 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81441F84 | 48 00 01 24 */	b .L_814420A8
.L_81441F88:
/* 81441F88 | 88 03 00 3D */	lbz r0, 0x3d(r3)
/* 81441F8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81441F90 | 4D 82 00 20 */	beqlr
/* 81441F94 | 38 80 00 08 */	li r4, 0x8
/* 81441F98 | 38 00 00 00 */	li r0, 0x0
/* 81441F9C | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81441FA0 | 98 03 00 3D */	stb r0, 0x3d(r3)
/* 81441FA4 | 48 00 01 04 */	b .L_814420A8
.L_81441FA8:
/* 81441FA8 | 88 03 00 3D */	lbz r0, 0x3d(r3)
/* 81441FAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81441FB0 | 4C 82 00 20 */	bnelr
/* 81441FB4 | 38 80 00 08 */	li r4, 0x8
/* 81441FB8 | 38 00 00 01 */	li r0, 0x1
/* 81441FBC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81441FC0 | 98 03 00 3D */	stb r0, 0x3d(r3)
/* 81441FC4 | 48 00 00 E4 */	b .L_814420A8
.L_81441FC8:
/* 81441FC8 | 38 00 00 00 */	li r0, 0x0
/* 81441FCC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81441FD0 | 48 00 00 D8 */	b .L_814420A8
.L_81441FD4:
/* 81441FD4 | 38 00 00 04 */	li r0, 0x4
/* 81441FD8 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81441FDC | 48 00 00 CC */	b .L_814420A8
.L_81441FE0:
/* 81441FE0 | 38 00 00 02 */	li r0, 0x2
/* 81441FE4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81441FE8 | 48 00 00 C0 */	b .L_814420A8
.L_81441FEC:
/* 81441FEC | 38 00 00 02 */	li r0, 0x2
/* 81441FF0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81441FF4 | 48 00 00 B4 */	b .L_814420A8
.L_81441FF8:
/* 81441FF8 | 28 05 00 08 */	cmplwi r5, 0x8
/* 81441FFC | 41 81 00 AC */	bgt .L_814420A8
/* 81442000 | 3C 80 81 67 */	lis r4, jumptable_816683BC@ha
/* 81442004 | 54 A0 10 3A */	slwi r0, r5, 2
/* 81442008 | 38 84 83 BC */	addi r4, r4, jumptable_816683BC@l
/* 8144200C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81442010 | 7C 89 03 A6 */	mtctr r4
/* 81442014 | 4E 80 04 20 */	bctr
.L_81442018:
/* 81442018 | 38 00 00 00 */	li r0, 0x0
/* 8144201C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81442020 | 48 00 00 88 */	b .L_814420A8
.L_81442024:
/* 81442024 | 38 00 00 06 */	li r0, 0x6
/* 81442028 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8144202C | 48 00 00 7C */	b .L_814420A8
.L_81442030:
/* 81442030 | 38 00 00 06 */	li r0, 0x6
/* 81442034 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81442038 | 48 00 00 70 */	b .L_814420A8
.L_8144203C:
/* 8144203C | 88 03 00 3E */	lbz r0, 0x3e(r3)
/* 81442040 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81442044 | 4D 82 00 20 */	beqlr
/* 81442048 | 38 80 00 07 */	li r4, 0x7
/* 8144204C | 38 00 00 00 */	li r0, 0x0
/* 81442050 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81442054 | 98 03 00 3E */	stb r0, 0x3e(r3)
/* 81442058 | 48 00 00 50 */	b .L_814420A8
.L_8144205C:
/* 8144205C | 88 03 00 3E */	lbz r0, 0x3e(r3)
/* 81442060 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81442064 | 4C 82 00 20 */	bnelr
/* 81442068 | 38 80 00 07 */	li r4, 0x7
/* 8144206C | 38 00 00 01 */	li r0, 0x1
/* 81442070 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81442074 | 98 03 00 3E */	stb r0, 0x3e(r3)
/* 81442078 | 48 00 00 30 */	b .L_814420A8
.L_8144207C:
/* 8144207C | 38 00 00 00 */	li r0, 0x0
/* 81442080 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81442084 | 48 00 00 24 */	b .L_814420A8
.L_81442088:
/* 81442088 | 38 00 00 03 */	li r0, 0x3
/* 8144208C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81442090 | 48 00 00 18 */	b .L_814420A8
.L_81442094:
/* 81442094 | 38 00 00 01 */	li r0, 0x1
/* 81442098 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8144209C | 48 00 00 0C */	b .L_814420A8
.L_814420A0:
/* 814420A0 | 38 00 00 01 */	li r0, 0x1
/* 814420A4 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_814420A8:
/* 814420A8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814420AC | 7C A4 2B 78 */	mr r4, r5
/* 814420B0 | 38 C0 00 01 */	li r6, 0x1
/* 814420B4 | 7C A3 02 14 */	add r5, r3, r0
/* 814420B8 | 98 C5 00 34 */	stb r6, 0x34(r5)
/* 814420BC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814420C0 | 54 00 10 3A */	slwi r0, r0, 2
/* 814420C4 | 7C 63 02 14 */	add r3, r3, r0
/* 814420C8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814420CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814420D0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814420D4 | 7D 89 03 A6 */	mtctr r12
/* 814420D8 | 4E 80 04 20 */	bctr
/* 814420DC | 4E 80 00 20 */	blr
.endfn changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl

# .text:0x1274 | 0x814420E0 | size: 0x68
# textinput::extend::memo::InputForm::onArrowRPoint()
.fn onArrowRPoint__Q49textinput6extend4memo9InputFormFv, global
/* 814420E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814420E4 | 7C 08 02 A6 */	mflr r0
/* 814420E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814420EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814420F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814420F4 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 814420F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814420FC | 40 82 00 38 */	bne .L_81442134
/* 81442100 | 80 63 03 F4 */	lwz r3, 0x3f4(r3)
/* 81442104 | 38 80 00 00 */	li r4, 0x0
/* 81442108 | 38 A0 00 08 */	li r5, 0x8
/* 8144210C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442110 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442114 | 7D 89 03 A6 */	mtctr r12
/* 81442118 | 4E 80 04 21 */	bctrl
/* 8144211C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81442120 | 7F E3 FB 78 */	mr r3, r31
/* 81442124 | 38 80 00 18 */	li r4, 0x18
/* 81442128 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8144212C | 7D 89 03 A6 */	mtctr r12
/* 81442130 | 4E 80 04 21 */	bctrl
.L_81442134:
/* 81442134 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81442138 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144213C | 7C 08 03 A6 */	mtlr r0
/* 81442140 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81442144 | 4E 80 00 20 */	blr
.endfn onArrowRPoint__Q49textinput6extend4memo9InputFormFv

# .text:0x12DC | 0x81442148 | size: 0x2C
# textinput::extend::memo::InputForm::onArrowRLeft()
.fn onArrowRLeft__Q49textinput6extend4memo9InputFormFv, global
/* 81442148 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 8144214C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81442150 | 4C 82 00 20 */	bnelr
/* 81442154 | 80 63 03 F4 */	lwz r3, 0x3f4(r3)
/* 81442158 | 38 80 00 00 */	li r4, 0x0
/* 8144215C | 38 A0 00 07 */	li r5, 0x7
/* 81442160 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442164 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442168 | 7D 89 03 A6 */	mtctr r12
/* 8144216C | 4E 80 04 20 */	bctr
/* 81442170 | 4E 80 00 20 */	blr
.endfn onArrowRLeft__Q49textinput6extend4memo9InputFormFv

# .text:0x1308 | 0x81442174 | size: 0x68
# textinput::extend::memo::InputForm::onArrowLPoint()
.fn onArrowLPoint__Q49textinput6extend4memo9InputFormFv, global
/* 81442174 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81442178 | 7C 08 02 A6 */	mflr r0
/* 8144217C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81442180 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81442184 | 7C 7F 1B 78 */	mr r31, r3
/* 81442188 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 8144218C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81442190 | 40 82 00 38 */	bne .L_814421C8
/* 81442194 | 80 63 03 F4 */	lwz r3, 0x3f4(r3)
/* 81442198 | 38 80 00 01 */	li r4, 0x1
/* 8144219C | 38 A0 00 08 */	li r5, 0x8
/* 814421A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814421A4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814421A8 | 7D 89 03 A6 */	mtctr r12
/* 814421AC | 4E 80 04 21 */	bctrl
/* 814421B0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814421B4 | 7F E3 FB 78 */	mr r3, r31
/* 814421B8 | 38 80 00 18 */	li r4, 0x18
/* 814421BC | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814421C0 | 7D 89 03 A6 */	mtctr r12
/* 814421C4 | 4E 80 04 21 */	bctrl
.L_814421C8:
/* 814421C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814421CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814421D0 | 7C 08 03 A6 */	mtlr r0
/* 814421D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814421D8 | 4E 80 00 20 */	blr
.endfn onArrowLPoint__Q49textinput6extend4memo9InputFormFv

# .text:0x1370 | 0x814421DC | size: 0x2C
# textinput::extend::memo::InputForm::onArrowLLeft()
.fn onArrowLLeft__Q49textinput6extend4memo9InputFormFv, global
/* 814421DC | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 814421E0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814421E4 | 4C 82 00 20 */	bnelr
/* 814421E8 | 80 63 03 F4 */	lwz r3, 0x3f4(r3)
/* 814421EC | 38 80 00 01 */	li r4, 0x1
/* 814421F0 | 38 A0 00 07 */	li r5, 0x7
/* 814421F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814421F8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814421FC | 7D 89 03 A6 */	mtctr r12
/* 81442200 | 4E 80 04 20 */	bctr
/* 81442204 | 4E 80 00 20 */	blr
.endfn onArrowLLeft__Q49textinput6extend4memo9InputFormFv

# .text:0x139C | 0x81442208 | size: 0x114
# textinput::extend::memo::InputForm::onArrowRTrig()
.fn onArrowRTrig__Q49textinput6extend4memo9InputFormFv, global
/* 81442208 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144220C | 7C 08 02 A6 */	mflr r0
/* 81442210 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81442214 | DB E1 00 10 */	stfd f31, 0x10(r1)
/* 81442218 | F3 E1 00 18 */	psq_st f31, 0x18(r1), 0, qr0
/* 8144221C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81442220 | 7C 7F 1B 78 */	mr r31, r3
/* 81442224 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81442228 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8144222C | 40 82 00 D4 */	bne .L_81442300
/* 81442230 | 85 83 03 C0 */	lwzu r12, 0x3c0(r3)
/* 81442234 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442238 | 7D 89 03 A6 */	mtctr r12
/* 8144223C | 4E 80 04 21 */	bctrl
/* 81442240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81442244 | 40 82 00 BC */	bne .L_81442300
/* 81442248 | 80 7F 03 F4 */	lwz r3, 0x3f4(r31)
/* 8144224C | 38 80 00 00 */	li r4, 0x0
/* 81442250 | 38 A0 00 06 */	li r5, 0x6
/* 81442254 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442258 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8144225C | 7D 89 03 A6 */	mtctr r12
/* 81442260 | 4E 80 04 21 */	bctrl
/* 81442264 | 81 9F 00 5C */	lwz r12, 0x5c(r31)
/* 81442268 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 8144226C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81442270 | 7D 89 03 A6 */	mtctr r12
/* 81442274 | 4E 80 04 21 */	bctrl
/* 81442278 | C0 02 8A 8C */	lfs f0, lbl_81694E8C@sda21(r0)
/* 8144227C | 7F E3 FB 78 */	mr r3, r31
/* 81442280 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81442284 | EC 20 00 72 */	fmuls f1, f0, f1
/* 81442288 | C0 1F 03 18 */	lfs f0, 0x318(r31)
/* 8144228C | 81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 81442290 | EF E0 08 28 */	fsubs f31, f0, f1
/* 81442294 | 7D 89 03 A6 */	mtctr r12
/* 81442298 | 4E 80 04 21 */	bctrl
/* 8144229C | FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 814422A0 | 4C 40 13 82 */	cror eq, lt, eq
/* 814422A4 | 40 82 00 1C */	bne .L_814422C0
/* 814422A8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814422AC | 7F E3 FB 78 */	mr r3, r31
/* 814422B0 | 81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 814422B4 | 7D 89 03 A6 */	mtctr r12
/* 814422B8 | 4E 80 04 21 */	bctrl
/* 814422BC | FF E0 08 90 */	fmr f31, f1
.L_814422C0:
/* 814422C0 | 81 9F 03 C0 */	lwz r12, 0x3c0(r31)
/* 814422C4 | FC 40 F8 90 */	fmr f2, f31
/* 814422C8 | 38 7F 03 C0 */	addi r3, r31, 0x3c0
/* 814422CC | 38 80 00 00 */	li r4, 0x0
/* 814422D0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 814422D4 | 38 A0 00 00 */	li r5, 0x0
/* 814422D8 | C0 3F 03 18 */	lfs f1, 0x318(r31)
/* 814422DC | C0 62 8A 88 */	lfs f3, lbl_81694E88@sda21(r0)
/* 814422E0 | 7D 89 03 A6 */	mtctr r12
/* 814422E4 | 4E 80 04 21 */	bctrl
/* 814422E8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814422EC | 7F E3 FB 78 */	mr r3, r31
/* 814422F0 | 38 80 00 0B */	li r4, 0xb
/* 814422F4 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814422F8 | 7D 89 03 A6 */	mtctr r12
/* 814422FC | 4E 80 04 21 */	bctrl
.L_81442300:
/* 81442300 | E3 E1 00 18 */	psq_l f31, 0x18(r1), 0, qr0
/* 81442304 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81442308 | CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8144230C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81442310 | 7C 08 03 A6 */	mtlr r0
/* 81442314 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81442318 | 4E 80 00 20 */	blr
.endfn onArrowRTrig__Q49textinput6extend4memo9InputFormFv

# .text:0x14B0 | 0x8144231C | size: 0x114
# textinput::extend::memo::InputForm::onArrowLTrig()
.fn onArrowLTrig__Q49textinput6extend4memo9InputFormFv, global
/* 8144231C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81442320 | 7C 08 02 A6 */	mflr r0
/* 81442324 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81442328 | DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8144232C | F3 E1 00 18 */	psq_st f31, 0x18(r1), 0, qr0
/* 81442330 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81442334 | 7C 7F 1B 78 */	mr r31, r3
/* 81442338 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 8144233C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81442340 | 40 82 00 D4 */	bne .L_81442414
/* 81442344 | 85 83 03 C0 */	lwzu r12, 0x3c0(r3)
/* 81442348 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8144234C | 7D 89 03 A6 */	mtctr r12
/* 81442350 | 4E 80 04 21 */	bctrl
/* 81442354 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81442358 | 40 82 00 BC */	bne .L_81442414
/* 8144235C | 80 7F 03 F4 */	lwz r3, 0x3f4(r31)
/* 81442360 | 38 80 00 01 */	li r4, 0x1
/* 81442364 | 38 A0 00 06 */	li r5, 0x6
/* 81442368 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144236C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442370 | 7D 89 03 A6 */	mtctr r12
/* 81442374 | 4E 80 04 21 */	bctrl
/* 81442378 | 81 9F 00 5C */	lwz r12, 0x5c(r31)
/* 8144237C | 38 7F 00 10 */	addi r3, r31, 0x10
/* 81442380 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81442384 | 7D 89 03 A6 */	mtctr r12
/* 81442388 | 4E 80 04 21 */	bctrl
/* 8144238C | C0 02 8A 8C */	lfs f0, lbl_81694E8C@sda21(r0)
/* 81442390 | 7F E3 FB 78 */	mr r3, r31
/* 81442394 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81442398 | EC 20 00 72 */	fmuls f1, f0, f1
/* 8144239C | C0 1F 03 18 */	lfs f0, 0x318(r31)
/* 814423A0 | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 814423A4 | EF E0 08 2A */	fadds f31, f0, f1
/* 814423A8 | 7D 89 03 A6 */	mtctr r12
/* 814423AC | 4E 80 04 21 */	bctrl
/* 814423B0 | FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 814423B4 | 4C 41 13 82 */	cror eq, gt, eq
/* 814423B8 | 40 82 00 1C */	bne .L_814423D4
/* 814423BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814423C0 | 7F E3 FB 78 */	mr r3, r31
/* 814423C4 | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 814423C8 | 7D 89 03 A6 */	mtctr r12
/* 814423CC | 4E 80 04 21 */	bctrl
/* 814423D0 | FF E0 08 90 */	fmr f31, f1
.L_814423D4:
/* 814423D4 | 81 9F 03 C0 */	lwz r12, 0x3c0(r31)
/* 814423D8 | FC 40 F8 90 */	fmr f2, f31
/* 814423DC | 38 7F 03 C0 */	addi r3, r31, 0x3c0
/* 814423E0 | 38 80 00 00 */	li r4, 0x0
/* 814423E4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 814423E8 | 38 A0 00 00 */	li r5, 0x0
/* 814423EC | C0 3F 03 18 */	lfs f1, 0x318(r31)
/* 814423F0 | C0 62 8A 88 */	lfs f3, lbl_81694E88@sda21(r0)
/* 814423F4 | 7D 89 03 A6 */	mtctr r12
/* 814423F8 | 4E 80 04 21 */	bctrl
/* 814423FC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81442400 | 7F E3 FB 78 */	mr r3, r31
/* 81442404 | 38 80 00 0B */	li r4, 0xb
/* 81442408 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8144240C | 7D 89 03 A6 */	mtctr r12
/* 81442410 | 4E 80 04 21 */	bctrl
.L_81442414:
/* 81442414 | E3 E1 00 18 */	psq_l f31, 0x18(r1), 0, qr0
/* 81442418 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144241C | CB E1 00 10 */	lfd f31, 0x10(r1)
/* 81442420 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81442424 | 7C 08 03 A6 */	mtlr r0
/* 81442428 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144242C | 4E 80 00 20 */	blr
.endfn onArrowLTrig__Q49textinput6extend4memo9InputFormFv

# .text:0x15C4 | 0x81442430 | size: 0x328
# textinput::extend::memo::InputForm::updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn updateInput__Q49textinput6extend4memo9InputFormFiffUlUlUlPv, global
/* 81442430 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81442434 | 7C 08 02 A6 */	mflr r0
/* 81442438 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8144243C | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81442440 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81442444 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 81442448 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 8144244C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81442450 | 48 1B 70 6D */	bl _savegpr_26
/* 81442454 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81442458 | FF C0 08 90 */	fmr f30, f1
/* 8144245C | FF E0 10 90 */	fmr f31, f2
/* 81442460 | 7C 7A 1B 78 */	mr r26, r3
/* 81442464 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81442468 | 7C 9B 23 78 */	mr r27, r4
/* 8144246C | 7C BC 2B 78 */	mr r28, r5
/* 81442470 | 7C DD 33 78 */	mr r29, r6
/* 81442474 | 7C FE 3B 78 */	mr r30, r7
/* 81442478 | 7D 1F 43 78 */	mr r31, r8
/* 8144247C | 40 82 02 90 */	bne .L_8144270C
/* 81442480 | 54 C0 05 6B */	rlwinm. r0, r6, 0, 21, 21
/* 81442484 | 41 82 00 20 */	beq .L_814424A4
/* 81442488 | C0 22 8A 7C */	lfs f1, lbl_81694E7C@sda21(r0)
/* 8144248C | 38 A0 00 00 */	li r5, 0x0
/* 81442490 | 38 C0 00 00 */	li r6, 0x0
/* 81442494 | 38 E0 00 00 */	li r7, 0x0
/* 81442498 | FC 40 08 90 */	fmr f2, f1
/* 8144249C | 4B FE 44 11 */	bl updateInput__Q39textinput9inputform12LayoutByNW4RFiffUlUlUlPv
/* 814424A0 | 48 00 02 90 */	b .L_81442730
.L_814424A4:
/* 814424A4 | 54 A0 07 39 */	rlwinm. r0, r5, 0, 28, 28
/* 814424A8 | 41 82 00 20 */	beq .L_814424C8
/* 814424AC | 80 63 03 F4 */	lwz r3, 0x3f4(r3)
/* 814424B0 | 38 80 00 00 */	li r4, 0x0
/* 814424B4 | 38 A0 00 04 */	li r5, 0x4
/* 814424B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814424BC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814424C0 | 7D 89 03 A6 */	mtctr r12
/* 814424C4 | 4E 80 04 21 */	bctrl
.L_814424C8:
/* 814424C8 | 57 C0 07 39 */	rlwinm. r0, r30, 0, 28, 28
/* 814424CC | 41 82 00 20 */	beq .L_814424EC
/* 814424D0 | 80 7A 03 F4 */	lwz r3, 0x3f4(r26)
/* 814424D4 | 38 80 00 00 */	li r4, 0x0
/* 814424D8 | 38 A0 00 03 */	li r5, 0x3
/* 814424DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814424E0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814424E4 | 7D 89 03 A6 */	mtctr r12
/* 814424E8 | 4E 80 04 21 */	bctrl
.L_814424EC:
/* 814424EC | 57 80 07 7B */	rlwinm. r0, r28, 0, 29, 29
/* 814424F0 | 41 82 00 20 */	beq .L_81442510
/* 814424F4 | 80 7A 03 F4 */	lwz r3, 0x3f4(r26)
/* 814424F8 | 38 80 00 01 */	li r4, 0x1
/* 814424FC | 38 A0 00 04 */	li r5, 0x4
/* 81442500 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442504 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442508 | 7D 89 03 A6 */	mtctr r12
/* 8144250C | 4E 80 04 21 */	bctrl
.L_81442510:
/* 81442510 | 57 C0 07 7B */	rlwinm. r0, r30, 0, 29, 29
/* 81442514 | 41 82 00 20 */	beq .L_81442534
/* 81442518 | 80 7A 03 F4 */	lwz r3, 0x3f4(r26)
/* 8144251C | 38 80 00 01 */	li r4, 0x1
/* 81442520 | 38 A0 00 03 */	li r5, 0x3
/* 81442524 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442528 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8144252C | 7D 89 03 A6 */	mtctr r12
/* 81442530 | 4E 80 04 21 */	bctrl
.L_81442534:
/* 81442534 | 57 A0 07 39 */	rlwinm. r0, r29, 0, 28, 28
/* 81442538 | 41 82 00 CC */	beq .L_81442604
/* 8144253C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81442540 | 7F 43 D3 78 */	mr r3, r26
/* 81442544 | 81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 81442548 | 7D 89 03 A6 */	mtctr r12
/* 8144254C | 4E 80 04 21 */	bctrl
/* 81442550 | C0 5A 03 18 */	lfs f2, 0x318(r26)
/* 81442554 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 81442558 | 4C 40 13 82 */	cror eq, lt, eq
/* 8144255C | 40 82 00 88 */	bne .L_814425E4
/* 81442560 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81442564 | 7F 43 D3 78 */	mr r3, r26
/* 81442568 | C0 02 8A 90 */	lfs f0, lbl_81694E90@sda21(r0)
/* 8144256C | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 81442570 | EC 22 00 28 */	fsubs f1, f2, f0
/* 81442574 | 7D 89 03 A6 */	mtctr r12
/* 81442578 | 4E 80 04 21 */	bctrl
/* 8144257C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81442580 | 7F 43 D3 78 */	mr r3, r26
/* 81442584 | 81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 81442588 | 7D 89 03 A6 */	mtctr r12
/* 8144258C | 4E 80 04 21 */	bctrl
/* 81442590 | C0 1A 03 18 */	lfs f0, 0x318(r26)
/* 81442594 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81442598 | 4C 40 13 82 */	cror eq, lt, eq
/* 8144259C | 40 82 00 30 */	bne .L_814425CC
/* 814425A0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 814425A4 | 7F 43 D3 78 */	mr r3, r26
/* 814425A8 | 81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 814425AC | 7D 89 03 A6 */	mtctr r12
/* 814425B0 | 4E 80 04 21 */	bctrl
/* 814425B4 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 814425B8 | 7F 43 D3 78 */	mr r3, r26
/* 814425BC | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 814425C0 | 7D 89 03 A6 */	mtctr r12
/* 814425C4 | 4E 80 04 21 */	bctrl
/* 814425C8 | 48 00 00 1C */	b .L_814425E4
.L_814425CC:
/* 814425CC | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 814425D0 | 7F 43 D3 78 */	mr r3, r26
/* 814425D4 | 38 80 00 1A */	li r4, 0x1a
/* 814425D8 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814425DC | 7D 89 03 A6 */	mtctr r12
/* 814425E0 | 4E 80 04 21 */	bctrl
.L_814425E4:
/* 814425E4 | 80 7A 03 F4 */	lwz r3, 0x3f4(r26)
/* 814425E8 | 38 80 00 00 */	li r4, 0x0
/* 814425EC | 38 A0 00 04 */	li r5, 0x4
/* 814425F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814425F4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814425F8 | 7D 89 03 A6 */	mtctr r12
/* 814425FC | 4E 80 04 21 */	bctrl
/* 81442600 | 48 00 00 20 */	b .L_81442620
.L_81442604:
/* 81442604 | 80 7A 03 F4 */	lwz r3, 0x3f4(r26)
/* 81442608 | 38 80 00 00 */	li r4, 0x0
/* 8144260C | 38 A0 00 03 */	li r5, 0x3
/* 81442610 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442614 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442618 | 7D 89 03 A6 */	mtctr r12
/* 8144261C | 4E 80 04 21 */	bctrl
.L_81442620:
/* 81442620 | 57 A0 07 7B */	rlwinm. r0, r29, 0, 29, 29
/* 81442624 | 41 82 00 CC */	beq .L_814426F0
/* 81442628 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8144262C | 7F 43 D3 78 */	mr r3, r26
/* 81442630 | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 81442634 | 7D 89 03 A6 */	mtctr r12
/* 81442638 | 4E 80 04 21 */	bctrl
/* 8144263C | C0 5A 03 18 */	lfs f2, 0x318(r26)
/* 81442640 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 81442644 | 4C 41 13 82 */	cror eq, gt, eq
/* 81442648 | 40 82 00 88 */	bne .L_814426D0
/* 8144264C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81442650 | 7F 43 D3 78 */	mr r3, r26
/* 81442654 | C0 02 8A 90 */	lfs f0, lbl_81694E90@sda21(r0)
/* 81442658 | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 8144265C | EC 20 10 2A */	fadds f1, f0, f2
/* 81442660 | 7D 89 03 A6 */	mtctr r12
/* 81442664 | 4E 80 04 21 */	bctrl
/* 81442668 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 8144266C | 7F 43 D3 78 */	mr r3, r26
/* 81442670 | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 81442674 | 7D 89 03 A6 */	mtctr r12
/* 81442678 | 4E 80 04 21 */	bctrl
/* 8144267C | C0 1A 03 18 */	lfs f0, 0x318(r26)
/* 81442680 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81442684 | 4C 41 13 82 */	cror eq, gt, eq
/* 81442688 | 40 82 00 30 */	bne .L_814426B8
/* 8144268C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81442690 | 7F 43 D3 78 */	mr r3, r26
/* 81442694 | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 81442698 | 7D 89 03 A6 */	mtctr r12
/* 8144269C | 4E 80 04 21 */	bctrl
/* 814426A0 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 814426A4 | 7F 43 D3 78 */	mr r3, r26
/* 814426A8 | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 814426AC | 7D 89 03 A6 */	mtctr r12
/* 814426B0 | 4E 80 04 21 */	bctrl
/* 814426B4 | 48 00 00 1C */	b .L_814426D0
.L_814426B8:
/* 814426B8 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 814426BC | 7F 43 D3 78 */	mr r3, r26
/* 814426C0 | 38 80 00 1A */	li r4, 0x1a
/* 814426C4 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 814426C8 | 7D 89 03 A6 */	mtctr r12
/* 814426CC | 4E 80 04 21 */	bctrl
.L_814426D0:
/* 814426D0 | 80 7A 03 F4 */	lwz r3, 0x3f4(r26)
/* 814426D4 | 38 80 00 01 */	li r4, 0x1
/* 814426D8 | 38 A0 00 04 */	li r5, 0x4
/* 814426DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814426E0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814426E4 | 7D 89 03 A6 */	mtctr r12
/* 814426E8 | 4E 80 04 21 */	bctrl
/* 814426EC | 48 00 00 20 */	b .L_8144270C
.L_814426F0:
/* 814426F0 | 80 7A 03 F4 */	lwz r3, 0x3f4(r26)
/* 814426F4 | 38 80 00 01 */	li r4, 0x1
/* 814426F8 | 38 A0 00 03 */	li r5, 0x3
/* 814426FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442700 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442704 | 7D 89 03 A6 */	mtctr r12
/* 81442708 | 4E 80 04 21 */	bctrl
.L_8144270C:
/* 8144270C | FC 20 F0 90 */	fmr f1, f30
/* 81442710 | 7F 43 D3 78 */	mr r3, r26
/* 81442714 | FC 40 F8 90 */	fmr f2, f31
/* 81442718 | 7F 64 DB 78 */	mr r4, r27
/* 8144271C | 7F 85 E3 78 */	mr r5, r28
/* 81442720 | 7F A6 EB 78 */	mr r6, r29
/* 81442724 | 7F C7 F3 78 */	mr r7, r30
/* 81442728 | 7F E8 FB 78 */	mr r8, r31
/* 8144272C | 4B FE 41 81 */	bl updateInput__Q39textinput9inputform12LayoutByNW4RFiffUlUlUlPv
.L_81442730:
/* 81442730 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81442734 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81442738 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 8144273C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81442740 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81442744 | 48 1B 6D C5 */	bl _restgpr_26
/* 81442748 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8144274C | 7C 08 03 A6 */	mtlr r0
/* 81442750 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81442754 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput6extend4memo9InputFormFiffUlUlUlPv

# .text:0x18EC | 0x81442758 | size: 0x4
# textinput::extend::memo::InputForm::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q49textinput6extend4memo9InputFormFRQ39textinput5input10HKBManager, global
/* 81442758 | 4B FE 43 BC */	b updateInput__Q39textinput9inputform12LayoutByNW4RFRQ39textinput5input10HKBManager
.endfn updateInput__Q49textinput6extend4memo9InputFormFRQ39textinput5input10HKBManager

# .text:0x18F0 | 0x8144275C | size: 0x124
# textinput::extend::memo::InputForm::init()
.fn init__Q49textinput6extend4memo9InputFormFv, global
/* 8144275C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81442760 | 7C 08 02 A6 */	mflr r0
/* 81442764 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81442768 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144276C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81442770 | 7C 7E 1B 78 */	mr r30, r3
/* 81442774 | 80 03 03 10 */	lwz r0, 0x310(r3)
/* 81442778 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144277C | 41 82 00 1C */	beq .L_81442798
/* 81442780 | 38 80 00 14 */	li r4, 0x14
/* 81442784 | 38 00 00 FF */	li r0, 0xff
/* 81442788 | 98 83 01 CC */	stb r4, 0x1cc(r3)
/* 8144278C | 98 83 01 CD */	stb r4, 0x1cd(r3)
/* 81442790 | 98 83 01 CE */	stb r4, 0x1ce(r3)
/* 81442794 | 98 03 01 CF */	stb r0, 0x1cf(r3)
.L_81442798:
/* 81442798 | 3B E0 00 00 */	li r31, 0x0
/* 8144279C | 3C 80 81 67 */	lis r4, lbl_81668404@ha
/* 814427A0 | 9B E3 02 CC */	stb r31, 0x2cc(r3)
/* 814427A4 | 38 84 84 04 */	addi r4, r4, lbl_81668404@l
/* 814427A8 | 9B E3 02 CD */	stb r31, 0x2cd(r3)
/* 814427AC | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 814427B0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814427B4 | 7D 89 03 A6 */	mtctr r12
/* 814427B8 | 4E 80 04 21 */	bctrl
/* 814427BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814427C0 | 38 80 00 07 */	li r4, 0x7
/* 814427C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814427C8 | 7D 89 03 A6 */	mtctr r12
/* 814427CC | 4E 80 04 21 */	bctrl
/* 814427D0 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 814427D4 | 3C 80 81 67 */	lis r4, lbl_81668418@ha
/* 814427D8 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 814427DC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814427E0 | 38 84 84 18 */	addi r4, r4, lbl_81668418@l
/* 814427E4 | 7D 89 03 A6 */	mtctr r12
/* 814427E8 | 4E 80 04 21 */	bctrl
/* 814427EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814427F0 | 38 80 00 07 */	li r4, 0x7
/* 814427F4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814427F8 | 7D 89 03 A6 */	mtctr r12
/* 814427FC | 4E 80 04 21 */	bctrl
/* 81442800 | 9B FE 03 ED */	stb r31, 0x3ed(r30)
/* 81442804 | 7F C3 F3 78 */	mr r3, r30
/* 81442808 | C0 22 8A 7C */	lfs f1, lbl_81694E7C@sda21(r0)
/* 8144280C | 9B FE 03 EE */	stb r31, 0x3ee(r30)
/* 81442810 | 9B FE 03 EF */	stb r31, 0x3ef(r30)
/* 81442814 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81442818 | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 8144281C | 7D 89 03 A6 */	mtctr r12
/* 81442820 | 4E 80 04 21 */	bctrl
/* 81442824 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81442828 | 7F C3 F3 78 */	mr r3, r30
/* 8144282C | D0 1E 03 1C */	stfs f0, 0x31c(r30)
/* 81442830 | D0 1E 03 20 */	stfs f0, 0x320(r30)
/* 81442834 | 4B FE 2C C5 */	bl resetRelation__Q39textinput9inputform4BaseFv
/* 81442838 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8144283C | 7F C3 F3 78 */	mr r3, r30
/* 81442840 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81442844 | 7D 89 03 A6 */	mtctr r12
/* 81442848 | 4E 80 04 21 */	bctrl
/* 8144284C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81442850 | 7F C3 F3 78 */	mr r3, r30
/* 81442854 | 38 80 00 01 */	li r4, 0x1
/* 81442858 | 38 A0 00 0A */	li r5, 0xa
/* 8144285C | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 81442860 | 7D 89 03 A6 */	mtctr r12
/* 81442864 | 4E 80 04 21 */	bctrl
/* 81442868 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144286C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81442870 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81442874 | 7C 08 03 A6 */	mtlr r0
/* 81442878 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144287C | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend4memo9InputFormFv

# .text:0x1A14 | 0x81442880 | size: 0x194
# textinput::extend::memo::InputForm::draw()
.fn draw__Q49textinput6extend4memo9InputFormFv, global
/* 81442880 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81442884 | 7C 08 02 A6 */	mflr r0
/* 81442888 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144288C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81442890 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81442894 | 7C 7E 1B 78 */	mr r30, r3
/* 81442898 | 81 83 02 18 */	lwz r12, 0x218(r3)
/* 8144289C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814428A0 | 7D 89 03 A6 */	mtctr r12
/* 814428A4 | 38 63 02 18 */	addi r3, r3, 0x218
/* 814428A8 | 4E 80 04 21 */	bctrl
/* 814428AC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814428B0 | 7F C3 F3 78 */	mr r3, r30
/* 814428B4 | 81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 814428B8 | 7D 89 03 A6 */	mtctr r12
/* 814428BC | 4E 80 04 21 */	bctrl
/* 814428C0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814428C4 | 7F C3 F3 78 */	mr r3, r30
/* 814428C8 | 81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 814428CC | 7D 89 03 A6 */	mtctr r12
/* 814428D0 | 4E 80 04 21 */	bctrl
/* 814428D4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814428D8 | 7F C3 F3 78 */	mr r3, r30
/* 814428DC | 81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 814428E0 | 7D 89 03 A6 */	mtctr r12
/* 814428E4 | 4E 80 04 21 */	bctrl
/* 814428E8 | 80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 814428EC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814428F0 | 40 82 00 34 */	bne .L_81442924
/* 814428F4 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 814428F8 | 3C 80 81 67 */	lis r4, lbl_81668428@ha
/* 814428FC | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442900 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81442904 | 38 84 84 28 */	addi r4, r4, lbl_81668428@l
/* 81442908 | 7D 89 03 A6 */	mtctr r12
/* 8144290C | 4E 80 04 21 */	bctrl
/* 81442910 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442914 | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81442918 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8144291C | 7D 89 03 A6 */	mtctr r12
/* 81442920 | 4E 80 04 21 */	bctrl
.L_81442924:
/* 81442924 | 7F C3 F3 78 */	mr r3, r30
/* 81442928 | 4B FD C4 99 */	bl draw__Q39textinput9inputform4BaseFv
/* 8144292C | 80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 81442930 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81442934 | 40 82 00 A0 */	bne .L_814429D4
/* 81442938 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 8144293C | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442940 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81442944 | 7D 89 03 A6 */	mtctr r12
/* 81442948 | 4E 80 04 21 */	bctrl
/* 8144294C | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81442950 | 3F E0 81 67 */	lis r31, lbl_81668434@ha
/* 81442954 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442958 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8144295C | 38 9F 84 34 */	addi r4, r31, lbl_81668434@l
/* 81442960 | 7D 89 03 A6 */	mtctr r12
/* 81442964 | 4E 80 04 21 */	bctrl
/* 81442968 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144296C | 38 80 00 00 */	li r4, 0x0
/* 81442970 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81442974 | 7D 89 03 A6 */	mtctr r12
/* 81442978 | 4E 80 04 21 */	bctrl
/* 8144297C | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81442980 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442984 | 38 9F 84 34 */	addi r4, r31, lbl_81668434@l
/* 81442988 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8144298C | 7D 89 03 A6 */	mtctr r12
/* 81442990 | 4E 80 04 21 */	bctrl
/* 81442994 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442998 | 38 9E 02 30 */	addi r4, r30, 0x230
/* 8144299C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814429A0 | 7D 89 03 A6 */	mtctr r12
/* 814429A4 | 4E 80 04 21 */	bctrl
/* 814429A8 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 814429AC | 38 7E 02 18 */	addi r3, r30, 0x218
/* 814429B0 | 38 9F 84 34 */	addi r4, r31, lbl_81668434@l
/* 814429B4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814429B8 | 7D 89 03 A6 */	mtctr r12
/* 814429BC | 4E 80 04 21 */	bctrl
/* 814429C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814429C4 | 38 9E 02 30 */	addi r4, r30, 0x230
/* 814429C8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814429CC | 7D 89 03 A6 */	mtctr r12
/* 814429D0 | 4E 80 04 21 */	bctrl
.L_814429D4:
/* 814429D4 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 814429D8 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 814429DC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814429E0 | 7D 89 03 A6 */	mtctr r12
/* 814429E4 | 4E 80 04 21 */	bctrl
/* 814429E8 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 814429EC | 90 7E 03 24 */	stw r3, 0x324(r30)
/* 814429F0 | 41 81 00 0C */	bgt .L_814429FC
/* 814429F4 | 38 00 00 04 */	li r0, 0x4
/* 814429F8 | 90 1E 03 24 */	stw r0, 0x324(r30)
.L_814429FC:
/* 814429FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81442A00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81442A04 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81442A08 | 7C 08 03 A6 */	mtlr r0
/* 81442A0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81442A10 | 4E 80 00 20 */	blr
.endfn draw__Q49textinput6extend4memo9InputFormFv

# .text:0x1BA8 | 0x81442A14 | size: 0x28
# textinput::extend::memo::InputForm::setScroll(float)
.fn setScroll__Q49textinput6extend4memo9InputFormFf, global
/* 81442A14 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81442A18 | D0 23 03 18 */	stfs f1, 0x318(r3)
/* 81442A1C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81442A20 | 40 82 00 10 */	bne .L_81442A30
/* 81442A24 | FC 00 08 18 */	frsp f0, f1
/* 81442A28 | FC 00 00 50 */	fneg f0, f0
/* 81442A2C | 48 00 00 08 */	b .L_81442A34
.L_81442A30:
/* 81442A30 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
.L_81442A34:
/* 81442A34 | D0 03 01 00 */	stfs f0, 0x100(r3)
/* 81442A38 | 4E 80 00 20 */	blr
.endfn setScroll__Q49textinput6extend4memo9InputFormFf

# .text:0x1BD0 | 0x81442A3C | size: 0x9D4
# textinput::extend::memo::InputForm::calc()
.fn calc__Q49textinput6extend4memo9InputFormFv, global
/* 81442A3C | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 81442A40 | 7C 08 02 A6 */	mflr r0
/* 81442A44 | 90 01 01 14 */	stw r0, 0x114(r1)
/* 81442A48 | DB E1 01 00 */	stfd f31, 0x100(r1)
/* 81442A4C | F3 E1 01 08 */	psq_st f31, 0x108(r1), 0, qr0
/* 81442A50 | DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 81442A54 | F3 C1 00 F8 */	psq_st f30, 0xf8(r1), 0, qr0
/* 81442A58 | 93 E1 00 EC */	stw r31, 0xec(r1)
/* 81442A5C | 3F E0 81 67 */	lis r31, lbl_81668210@ha
/* 81442A60 | 3B FF 82 10 */	addi r31, r31, lbl_81668210@l
/* 81442A64 | 93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 81442A68 | 7C 7E 1B 78 */	mr r30, r3
/* 81442A6C | 38 63 02 18 */	addi r3, r3, 0x218
/* 81442A70 | 93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 81442A74 | 4B FF 3D 11 */	bl calc__Q39textinput11nw4rmanager6LayoutFv
/* 81442A78 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81442A7C | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442A80 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81442A84 | 7D 89 03 A6 */	mtctr r12
/* 81442A88 | 4E 80 04 21 */	bctrl
/* 81442A8C | 80 A3 00 10 */	lwz r5, 0x10(r3)
/* 81442A90 | 38 80 00 00 */	li r4, 0x0
/* 81442A94 | 80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 81442A98 | 88 05 00 CD */	lbz r0, 0xcd(r5)
/* 81442A9C | 98 1E 01 C8 */	stb r0, 0x1c8(r30)
/* 81442AA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442AA4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81442AA8 | 7D 89 03 A6 */	mtctr r12
/* 81442AAC | 4E 80 04 21 */	bctrl
/* 81442AB0 | 80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 81442AB4 | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81442AB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442ABC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81442AC0 | 7D 89 03 A6 */	mtctr r12
/* 81442AC4 | 4E 80 04 21 */	bctrl
/* 81442AC8 | 80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 81442ACC | 38 8D 94 C0 */	li r4, lbl_81697500@sda21
/* 81442AD0 | C0 3E 03 18 */	lfs f1, 0x318(r30)
/* 81442AD4 | 38 A0 00 01 */	li r5, 0x1
/* 81442AD8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81442ADC | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81442AE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442AE4 | D0 01 00 48 */	stfs f0, 0x48(r1)
/* 81442AE8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81442AEC | D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 81442AF0 | 7D 89 03 A6 */	mtctr r12
/* 81442AF4 | 4E 80 04 21 */	bctrl
/* 81442AF8 | C0 41 00 48 */	lfs f2, 0x48(r1)
/* 81442AFC | C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 81442B00 | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 81442B04 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81442B08 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 81442B0C | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81442B10 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81442B14 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81442B18 | D0 41 00 90 */	stfs f2, 0x90(r1)
/* 81442B1C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81442B20 | D0 21 00 94 */	stfs f1, 0x94(r1)
/* 81442B24 | D0 01 00 98 */	stfs f0, 0x98(r1)
/* 81442B28 | 7D 89 03 A6 */	mtctr r12
/* 81442B2C | 4E 80 04 21 */	bctrl
/* 81442B30 | 80 1E 03 24 */	lwz r0, 0x324(r30)
/* 81442B34 | 3F A0 43 30 */	lis r29, 0x4330
/* 81442B38 | 80 7E 03 14 */	lwz r3, 0x314(r30)
/* 81442B3C | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81442B40 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81442B44 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81442B48 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 81442B4C | C0 C3 00 4C */	lfs f6, 0x4c(r3)
/* 81442B50 | 93 A1 00 D0 */	stw r29, 0xd0(r1)
/* 81442B54 | C8 62 8A 80 */	lfd f3, lbl_81694E80@sda21(r0)
/* 81442B58 | C8 41 00 D0 */	lfd f2, 0xd0(r1)
/* 81442B5C | C0 9E 03 48 */	lfs f4, 0x348(r30)
/* 81442B60 | EC A2 18 28 */	fsubs f5, f2, f3
/* 81442B64 | C0 5E 03 3C */	lfs f2, 0x33c(r30)
/* 81442B68 | C0 62 8A 94 */	lfs f3, lbl_81694E94@sda21(r0)
/* 81442B6C | D0 C3 00 4C */	stfs f6, 0x4c(r3)
/* 81442B70 | EC A5 00 72 */	fmuls f5, f5, f1
/* 81442B74 | D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 81442B78 | EC 25 20 28 */	fsubs f1, f5, f4
/* 81442B7C | D0 A3 00 50 */	stfs f5, 0x50(r3)
/* 81442B80 | C0 9E 03 38 */	lfs f4, 0x338(r30)
/* 81442B84 | EC 21 00 F2 */	fmuls f1, f1, f3
/* 81442B88 | 80 7E 03 14 */	lwz r3, 0x314(r30)
/* 81442B8C | D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 81442B90 | EC 22 08 28 */	fsubs f1, f2, f1
/* 81442B94 | D0 83 00 2C */	stfs f4, 0x2c(r3)
/* 81442B98 | D0 81 00 38 */	stfs f4, 0x38(r1)
/* 81442B9C | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 81442BA0 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81442BA4 | 80 7E 03 14 */	lwz r3, 0x314(r30)
/* 81442BA8 | D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 81442BAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442BB0 | D0 81 00 84 */	stfs f4, 0x84(r1)
/* 81442BB4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81442BB8 | D0 21 00 88 */	stfs f1, 0x88(r1)
/* 81442BBC | D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 81442BC0 | 7D 89 03 A6 */	mtctr r12
/* 81442BC4 | 4E 80 04 21 */	bctrl
/* 81442BC8 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81442BCC | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442BD0 | 80 DE 03 14 */	lwz r6, 0x314(r30)
/* 81442BD4 | 38 9E 03 60 */	addi r4, r30, 0x360
/* 81442BD8 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81442BDC | 38 BE 02 30 */	addi r5, r30, 0x230
/* 81442BE0 | 38 C6 00 84 */	addi r6, r6, 0x84
/* 81442BE4 | 7D 89 03 A6 */	mtctr r12
/* 81442BE8 | 4E 80 04 21 */	bctrl
/* 81442BEC | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81442BF0 | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 81442BF4 | 80 9E 03 14 */	lwz r4, 0x314(r30)
/* 81442BF8 | 38 BE 02 30 */	addi r5, r30, 0x230
/* 81442BFC | D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 81442C00 | D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 81442C04 | D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 81442C08 | D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 81442C0C | 48 0D C2 59 */	bl fn_8151EE64
/* 81442C10 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81442C14 | 7F C3 F3 78 */	mr r3, r30
/* 81442C18 | C0 61 00 B0 */	lfs f3, 0xb0(r1)
/* 81442C1C | C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 81442C20 | C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 81442C24 | C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 81442C28 | 81 8C 01 88 */	lwz r12, 0x188(r12)
/* 81442C2C | D0 61 00 C0 */	stfs f3, 0xc0(r1)
/* 81442C30 | D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 81442C34 | D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 81442C38 | D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 81442C3C | 7D 89 03 A6 */	mtctr r12
/* 81442C40 | 4E 80 04 21 */	bctrl
/* 81442C44 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 81442C48 | 38 7E 03 60 */	addi r3, r30, 0x360
/* 81442C4C | C0 62 8A 78 */	lfs f3, lbl_81694E78@sda21(r0)
/* 81442C50 | C0 81 00 30 */	lfs f4, 0x30(r1)
/* 81442C54 | C0 41 00 C0 */	lfs f2, 0xc0(r1)
/* 81442C58 | C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 81442C5C | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81442C60 | 90 81 00 34 */	stw r4, 0x34(r1)
/* 81442C64 | 38 81 00 78 */	addi r4, r1, 0x78
/* 81442C68 | 7C 85 23 78 */	mr r5, r4
/* 81442C6C | D0 81 00 58 */	stfs f4, 0x58(r1)
/* 81442C70 | D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 81442C74 | D0 41 00 78 */	stfs f2, 0x78(r1)
/* 81442C78 | D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 81442C7C | D0 01 00 80 */	stfs f0, 0x80(r1)
/* 81442C80 | 48 0F E8 3D */	bl fn_815414BC
/* 81442C84 | C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 81442C88 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81442C8C | C0 61 00 78 */	lfs f3, 0x78(r1)
/* 81442C90 | FC 20 00 50 */	fneg f1, f0
/* 81442C94 | C0 41 00 C8 */	lfs f2, 0xc8(r1)
/* 81442C98 | D0 61 00 08 */	stfs f3, 0x8(r1)
/* 81442C9C | C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 81442CA0 | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 81442CA4 | EC 62 00 28 */	fsubs f3, f2, f0
/* 81442CA8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81442CAC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81442CB0 | C0 41 00 58 */	lfs f2, 0x58(r1)
/* 81442CB4 | C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 81442CB8 | C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 81442CBC | EC 42 00 F2 */	fmuls f2, f2, f3
/* 81442CC0 | 90 81 00 50 */	stw r4, 0x50(r1)
/* 81442CC4 | EC 21 00 28 */	fsubs f1, f1, f0
/* 81442CC8 | C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 81442CCC | C0 61 00 50 */	lfs f3, 0x50(r1)
/* 81442CD0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81442CD4 | EC 00 00 72 */	fmuls f0, f0, f1
/* 81442CD8 | EC 23 10 2A */	fadds f1, f3, f2
/* 81442CDC | C0 41 00 54 */	lfs f2, 0x54(r1)
/* 81442CE0 | D0 7E 03 28 */	stfs f3, 0x328(r30)
/* 81442CE4 | EC 02 00 2A */	fadds f0, f2, f0
/* 81442CE8 | D0 5E 03 34 */	stfs f2, 0x334(r30)
/* 81442CEC | D0 3E 03 30 */	stfs f1, 0x330(r30)
/* 81442CF0 | D0 1E 03 2C */	stfs f0, 0x32c(r30)
/* 81442CF4 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81442CF8 | 90 81 00 28 */	stw r4, 0x28(r1)
/* 81442CFC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81442D00 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81442D04 | 7D 89 03 A6 */	mtctr r12
/* 81442D08 | 4E 80 04 21 */	bctrl
/* 81442D0C | 80 7E 03 24 */	lwz r3, 0x324(r30)
/* 81442D10 | 80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 81442D14 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 81442D18 | 93 A1 00 D8 */	stw r29, 0xd8(r1)
/* 81442D1C | C8 82 8A 80 */	lfd f4, lbl_81694E80@sda21(r0)
/* 81442D20 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81442D24 | 90 61 00 DC */	stw r3, 0xdc(r1)
/* 81442D28 | C0 7E 03 5C */	lfs f3, 0x35c(r30)
/* 81442D2C | C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 81442D30 | C0 42 8A 94 */	lfs f2, lbl_81694E94@sda21(r0)
/* 81442D34 | EC 80 20 28 */	fsubs f4, f0, f4
/* 81442D38 | C0 1E 03 50 */	lfs f0, 0x350(r30)
/* 81442D3C | EF E4 00 72 */	fmuls f31, f4, f1
/* 81442D40 | EC 3F 18 28 */	fsubs f1, f31, f3
/* 81442D44 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 81442D48 | EC 80 08 28 */	fsubs f4, f0, f1
/* 81442D4C | 40 82 00 44 */	bne .L_81442D90
/* 81442D50 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81442D54 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81442D58 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81442D5C | 7D 89 03 A6 */	mtctr r12
/* 81442D60 | 4E 80 04 21 */	bctrl
/* 81442D64 | C0 02 8A 98 */	lfs f0, lbl_81694E98@sda21(r0)
/* 81442D68 | C0 7E 03 5C */	lfs f3, 0x35c(r30)
/* 81442D6C | EF E0 00 72 */	fmuls f31, f0, f1
/* 81442D70 | C0 42 8A 94 */	lfs f2, lbl_81694E94@sda21(r0)
/* 81442D74 | C0 3E 03 50 */	lfs f1, 0x350(r30)
/* 81442D78 | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81442D7C | EC 7F 18 28 */	fsubs f3, f31, f3
/* 81442D80 | EC 43 00 B2 */	fmuls f2, f3, f2
/* 81442D84 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81442D88 | EC 81 00 28 */	fsubs f4, f1, f0
/* 81442D8C | 48 00 00 0C */	b .L_81442D98
.L_81442D90:
/* 81442D90 | C0 0D 94 C8 */	lfs f0, lbl_81697508@sda21(r0)
/* 81442D94 | D0 1E 01 00 */	stfs f0, 0x100(r30)
.L_81442D98:
/* 81442D98 | 80 7E 03 10 */	lwz r3, 0x310(r30)
/* 81442D9C | FC 60 20 18 */	frsp f3, f4
/* 81442DA0 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81442DA4 | FC 20 F8 18 */	frsp f1, f31
/* 81442DA8 | C0 43 00 4C */	lfs f2, 0x4c(r3)
/* 81442DAC | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81442DB0 | D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 81442DB4 | D0 43 00 4C */	stfs f2, 0x4c(r3)
/* 81442DB8 | D0 23 00 50 */	stfs f1, 0x50(r3)
/* 81442DBC | C0 3E 03 4C */	lfs f1, 0x34c(r30)
/* 81442DC0 | 80 7E 03 10 */	lwz r3, 0x310(r30)
/* 81442DC4 | D0 41 00 20 */	stfs f2, 0x20(r1)
/* 81442DC8 | D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 81442DCC | D0 63 00 30 */	stfs f3, 0x30(r3)
/* 81442DD0 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81442DD4 | 80 7E 03 10 */	lwz r3, 0x310(r30)
/* 81442DD8 | D0 21 00 18 */	stfs f1, 0x18(r1)
/* 81442DDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442DE0 | D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 81442DE4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81442DE8 | D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 81442DEC | D0 61 00 70 */	stfs f3, 0x70(r1)
/* 81442DF0 | D0 01 00 74 */	stfs f0, 0x74(r1)
/* 81442DF4 | 7D 89 03 A6 */	mtctr r12
/* 81442DF8 | 4E 80 04 21 */	bctrl
/* 81442DFC | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81442E00 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442E04 | 80 DE 03 10 */	lwz r6, 0x310(r30)
/* 81442E08 | 38 9E 03 90 */	addi r4, r30, 0x390
/* 81442E0C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81442E10 | 38 BE 02 30 */	addi r5, r30, 0x230
/* 81442E14 | 38 C6 00 84 */	addi r6, r6, 0x84
/* 81442E18 | 7D 89 03 A6 */	mtctr r12
/* 81442E1C | 4E 80 04 21 */	bctrl
/* 81442E20 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81442E24 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442E28 | 80 DE 03 10 */	lwz r6, 0x310(r30)
/* 81442E2C | 38 9E 01 30 */	addi r4, r30, 0x130
/* 81442E30 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81442E34 | 38 BE 02 30 */	addi r5, r30, 0x230
/* 81442E38 | 38 C6 00 84 */	addi r6, r6, 0x84
/* 81442E3C | 7D 89 03 A6 */	mtctr r12
/* 81442E40 | 4E 80 04 21 */	bctrl
/* 81442E44 | 80 9E 03 10 */	lwz r4, 0x310(r30)
/* 81442E48 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81442E4C | 38 BE 02 30 */	addi r5, r30, 0x230
/* 81442E50 | 48 0D C0 15 */	bl fn_8151EE64
/* 81442E54 | C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 81442E58 | 38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 81442E5C | 80 9E 03 10 */	lwz r4, 0x310(r30)
/* 81442E60 | D0 1E 01 20 */	stfs f0, 0x120(r30)
/* 81442E64 | C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 81442E68 | D0 1E 01 24 */	stfs f0, 0x124(r30)
/* 81442E6C | C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 81442E70 | D0 1E 01 28 */	stfs f0, 0x128(r30)
/* 81442E74 | C0 01 00 AC */	lfs f0, 0xac(r1)
/* 81442E78 | D0 1E 01 2C */	stfs f0, 0x12c(r30)
/* 81442E7C | 88 04 00 CD */	lbz r0, 0xcd(r4)
/* 81442E80 | 98 1E 01 C8 */	stb r0, 0x1c8(r30)
/* 81442E84 | 81 9E 03 C0 */	lwz r12, 0x3c0(r30)
/* 81442E88 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81442E8C | 7D 89 03 A6 */	mtctr r12
/* 81442E90 | 4E 80 04 21 */	bctrl
/* 81442E94 | 81 9E 03 C0 */	lwz r12, 0x3c0(r30)
/* 81442E98 | 38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 81442E9C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442EA0 | 7D 89 03 A6 */	mtctr r12
/* 81442EA4 | 4E 80 04 21 */	bctrl
/* 81442EA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81442EAC | 41 82 00 30 */	beq .L_81442EDC
/* 81442EB0 | 81 9E 03 C0 */	lwz r12, 0x3c0(r30)
/* 81442EB4 | 38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 81442EB8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81442EBC | 7D 89 03 A6 */	mtctr r12
/* 81442EC0 | 4E 80 04 21 */	bctrl
/* 81442EC4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81442EC8 | 7F C3 F3 78 */	mr r3, r30
/* 81442ECC | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 81442ED0 | 7D 89 03 A6 */	mtctr r12
/* 81442ED4 | 4E 80 04 21 */	bctrl
/* 81442ED8 | 48 00 03 34 */	b .L_8144320C
.L_81442EDC:
/* 81442EDC | 80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 81442EE0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81442EE4 | 40 82 02 6C */	bne .L_81443150
/* 81442EE8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81442EEC | 7F C3 F3 78 */	mr r3, r30
/* 81442EF0 | 81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 81442EF4 | 7D 89 03 A6 */	mtctr r12
/* 81442EF8 | 4E 80 04 21 */	bctrl
/* 81442EFC | 81 9E 03 C0 */	lwz r12, 0x3c0(r30)
/* 81442F00 | 38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 81442F04 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442F08 | 7D 89 03 A6 */	mtctr r12
/* 81442F0C | 4E 80 04 21 */	bctrl
/* 81442F10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81442F14 | 40 82 02 F8 */	bne .L_8144320C
/* 81442F18 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81442F1C | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81442F20 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81442F24 | 7D 89 03 A6 */	mtctr r12
/* 81442F28 | 4E 80 04 21 */	bctrl
/* 81442F2C | C0 02 8A 94 */	lfs f0, lbl_81694E94@sda21(r0)
/* 81442F30 | C0 5E 03 18 */	lfs f2, 0x318(r30)
/* 81442F34 | EC 21 00 32 */	fmuls f1, f1, f0
/* 81442F38 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81442F3C | EC 22 08 28 */	fsubs f1, f2, f1
/* 81442F40 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81442F44 | 40 81 00 88 */	ble .L_81442FCC
/* 81442F48 | 88 1E 02 CC */	lbz r0, 0x2cc(r30)
/* 81442F4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81442F50 | 40 82 00 70 */	bne .L_81442FC0
/* 81442F54 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81442F58 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442F5C | 38 9F 01 F4 */	addi r4, r31, 0x1f4
/* 81442F60 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81442F64 | 7D 89 03 A6 */	mtctr r12
/* 81442F68 | 4E 80 04 21 */	bctrl
/* 81442F6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442F70 | 38 80 00 05 */	li r4, 0x5
/* 81442F74 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442F78 | 7D 89 03 A6 */	mtctr r12
/* 81442F7C | 4E 80 04 21 */	bctrl
/* 81442F80 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81442F84 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442F88 | 38 9F 02 30 */	addi r4, r31, 0x230
/* 81442F8C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81442F90 | 7D 89 03 A6 */	mtctr r12
/* 81442F94 | 4E 80 04 21 */	bctrl
/* 81442F98 | 7C 64 1B 78 */	mr r4, r3
/* 81442F9C | 80 7E 02 28 */	lwz r3, 0x228(r30)
/* 81442FA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442FA4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81442FA8 | 7D 89 03 A6 */	mtctr r12
/* 81442FAC | 4E 80 04 21 */	bctrl
/* 81442FB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442FB4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81442FB8 | 7D 89 03 A6 */	mtctr r12
/* 81442FBC | 4E 80 04 21 */	bctrl
.L_81442FC0:
/* 81442FC0 | 38 00 00 01 */	li r0, 0x1
/* 81442FC4 | 98 1E 02 CC */	stb r0, 0x2cc(r30)
/* 81442FC8 | 48 00 00 44 */	b .L_8144300C
.L_81442FCC:
/* 81442FCC | 88 1E 02 CC */	lbz r0, 0x2cc(r30)
/* 81442FD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81442FD4 | 41 82 00 30 */	beq .L_81443004
/* 81442FD8 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81442FDC | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81442FE0 | 38 9F 01 F4 */	addi r4, r31, 0x1f4
/* 81442FE4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81442FE8 | 7D 89 03 A6 */	mtctr r12
/* 81442FEC | 4E 80 04 21 */	bctrl
/* 81442FF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81442FF4 | 38 80 00 06 */	li r4, 0x6
/* 81442FF8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81442FFC | 7D 89 03 A6 */	mtctr r12
/* 81443000 | 4E 80 04 21 */	bctrl
.L_81443004:
/* 81443004 | 38 00 00 00 */	li r0, 0x0
/* 81443008 | 98 1E 02 CC */	stb r0, 0x2cc(r30)
.L_8144300C:
/* 8144300C | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81443010 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81443014 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81443018 | 7D 89 03 A6 */	mtctr r12
/* 8144301C | 4E 80 04 21 */	bctrl
/* 81443020 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81443024 | FF C0 08 90 */	fmr f30, f1
/* 81443028 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8144302C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81443030 | 7D 89 03 A6 */	mtctr r12
/* 81443034 | 4E 80 04 21 */	bctrl
/* 81443038 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8144303C | 3C 00 43 30 */	lis r0, 0x4330
/* 81443040 | 90 61 00 DC */	stw r3, 0xdc(r1)
/* 81443044 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81443048 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 8144304C | 90 01 00 D8 */	stw r0, 0xd8(r1)
/* 81443050 | C8 22 8A 80 */	lfd f1, lbl_81694E80@sda21(r0)
/* 81443054 | C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 81443058 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8144305C | EC 00 08 28 */	fsubs f0, f0, f1
/* 81443060 | EF C0 07 B2 */	fmuls f30, f0, f30
/* 81443064 | 7D 89 03 A6 */	mtctr r12
/* 81443068 | 4E 80 04 21 */	bctrl
/* 8144306C | C0 42 8A 94 */	lfs f2, lbl_81694E94@sda21(r0)
/* 81443070 | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81443074 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 81443078 | EC 00 F8 2A */	fadds f0, f0, f31
/* 8144307C | EC 00 08 2A */	fadds f0, f0, f1
/* 81443080 | FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 81443084 | 40 80 00 88 */	bge .L_8144310C
/* 81443088 | 88 1E 02 CD */	lbz r0, 0x2cd(r30)
/* 8144308C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81443090 | 40 82 00 70 */	bne .L_81443100
/* 81443094 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81443098 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 8144309C | 38 9F 02 08 */	addi r4, r31, 0x208
/* 814430A0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814430A4 | 7D 89 03 A6 */	mtctr r12
/* 814430A8 | 4E 80 04 21 */	bctrl
/* 814430AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814430B0 | 38 80 00 05 */	li r4, 0x5
/* 814430B4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814430B8 | 7D 89 03 A6 */	mtctr r12
/* 814430BC | 4E 80 04 21 */	bctrl
/* 814430C0 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 814430C4 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 814430C8 | 38 9F 02 40 */	addi r4, r31, 0x240
/* 814430CC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814430D0 | 7D 89 03 A6 */	mtctr r12
/* 814430D4 | 4E 80 04 21 */	bctrl
/* 814430D8 | 7C 64 1B 78 */	mr r4, r3
/* 814430DC | 80 7E 02 28 */	lwz r3, 0x228(r30)
/* 814430E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814430E4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814430E8 | 7D 89 03 A6 */	mtctr r12
/* 814430EC | 4E 80 04 21 */	bctrl
/* 814430F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814430F4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814430F8 | 7D 89 03 A6 */	mtctr r12
/* 814430FC | 4E 80 04 21 */	bctrl
.L_81443100:
/* 81443100 | 38 00 00 01 */	li r0, 0x1
/* 81443104 | 98 1E 02 CD */	stb r0, 0x2cd(r30)
/* 81443108 | 48 00 01 04 */	b .L_8144320C
.L_8144310C:
/* 8144310C | 88 1E 02 CD */	lbz r0, 0x2cd(r30)
/* 81443110 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81443114 | 41 82 00 30 */	beq .L_81443144
/* 81443118 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 8144311C | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81443120 | 38 9F 02 08 */	addi r4, r31, 0x208
/* 81443124 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81443128 | 7D 89 03 A6 */	mtctr r12
/* 8144312C | 4E 80 04 21 */	bctrl
/* 81443130 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443134 | 38 80 00 06 */	li r4, 0x6
/* 81443138 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8144313C | 7D 89 03 A6 */	mtctr r12
/* 81443140 | 4E 80 04 21 */	bctrl
.L_81443144:
/* 81443144 | 38 00 00 00 */	li r0, 0x0
/* 81443148 | 98 1E 02 CD */	stb r0, 0x2cd(r30)
/* 8144314C | 48 00 00 C0 */	b .L_8144320C
.L_81443150:
/* 81443150 | 38 00 00 00 */	li r0, 0x0
/* 81443154 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81443158 | 98 1E 02 CC */	stb r0, 0x2cc(r30)
/* 8144315C | 38 9F 01 F4 */	addi r4, r31, 0x1f4
/* 81443160 | 98 1E 02 CD */	stb r0, 0x2cd(r30)
/* 81443164 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81443168 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8144316C | 7D 89 03 A6 */	mtctr r12
/* 81443170 | 4E 80 04 21 */	bctrl
/* 81443174 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443178 | 38 80 00 07 */	li r4, 0x7
/* 8144317C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443180 | 7D 89 03 A6 */	mtctr r12
/* 81443184 | 4E 80 04 21 */	bctrl
/* 81443188 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 8144318C | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81443190 | 38 9F 02 08 */	addi r4, r31, 0x208
/* 81443194 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81443198 | 7D 89 03 A6 */	mtctr r12
/* 8144319C | 4E 80 04 21 */	bctrl
/* 814431A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814431A4 | 38 80 00 07 */	li r4, 0x7
/* 814431A8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814431AC | 7D 89 03 A6 */	mtctr r12
/* 814431B0 | 4E 80 04 21 */	bctrl
/* 814431B4 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 814431B8 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 814431BC | 38 9F 02 18 */	addi r4, r31, 0x218
/* 814431C0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814431C4 | 7D 89 03 A6 */	mtctr r12
/* 814431C8 | 4E 80 04 21 */	bctrl
/* 814431CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814431D0 | 38 80 00 00 */	li r4, 0x0
/* 814431D4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814431D8 | 7D 89 03 A6 */	mtctr r12
/* 814431DC | 4E 80 04 21 */	bctrl
/* 814431E0 | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 814431E4 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 814431E8 | 38 9F 02 18 */	addi r4, r31, 0x218
/* 814431EC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814431F0 | 7D 89 03 A6 */	mtctr r12
/* 814431F4 | 4E 80 04 21 */	bctrl
/* 814431F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814431FC | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81443200 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81443204 | 7D 89 03 A6 */	mtctr r12
/* 81443208 | 4E 80 04 21 */	bctrl
.L_8144320C:
/* 8144320C | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81443210 | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81443214 | 38 9F 02 18 */	addi r4, r31, 0x218
/* 81443218 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8144321C | 7D 89 03 A6 */	mtctr r12
/* 81443220 | 4E 80 04 21 */	bctrl
/* 81443224 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81443228 | C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8144322C | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81443230 | D0 03 00 30 */	stfs f0, 0x30(r3)
/* 81443234 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81443238 | 80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 8144323C | D0 21 00 10 */	stfs f1, 0x10(r1)
/* 81443240 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81443244 | D0 21 00 60 */	stfs f1, 0x60(r1)
/* 81443248 | D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8144324C | D0 01 00 68 */	stfs f0, 0x68(r1)
/* 81443250 | 40 82 01 8C */	bne .L_814433DC
/* 81443254 | 80 7E 03 F4 */	lwz r3, 0x3f4(r30)
/* 81443258 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144325C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81443260 | 7D 89 03 A6 */	mtctr r12
/* 81443264 | 4E 80 04 21 */	bctrl
/* 81443268 | 88 1E 03 ED */	lbz r0, 0x3ed(r30)
/* 8144326C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81443270 | 40 82 01 6C */	bne .L_814433DC
/* 81443274 | 88 1E 03 EE */	lbz r0, 0x3ee(r30)
/* 81443278 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144327C | 41 82 00 50 */	beq .L_814432CC
/* 81443280 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81443284 | 7F C3 F3 78 */	mr r3, r30
/* 81443288 | 81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 8144328C | 7D 89 03 A6 */	mtctr r12
/* 81443290 | 4E 80 04 21 */	bctrl
/* 81443294 | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81443298 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8144329C | 4C 41 13 82 */	cror eq, gt, eq
/* 814432A0 | 40 82 00 2C */	bne .L_814432CC
/* 814432A4 | 38 00 00 00 */	li r0, 0x0
/* 814432A8 | 80 7E 03 F4 */	lwz r3, 0x3f4(r30)
/* 814432AC | 98 1E 03 EE */	stb r0, 0x3ee(r30)
/* 814432B0 | 38 80 00 00 */	li r4, 0x0
/* 814432B4 | 38 A0 00 02 */	li r5, 0x2
/* 814432B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814432BC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814432C0 | 7D 89 03 A6 */	mtctr r12
/* 814432C4 | 4E 80 04 21 */	bctrl
/* 814432C8 | 48 00 00 54 */	b .L_8144331C
.L_814432CC:
/* 814432CC | 88 1E 03 EE */	lbz r0, 0x3ee(r30)
/* 814432D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814432D4 | 40 82 00 48 */	bne .L_8144331C
/* 814432D8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814432DC | 7F C3 F3 78 */	mr r3, r30
/* 814432E0 | 81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 814432E4 | 7D 89 03 A6 */	mtctr r12
/* 814432E8 | 4E 80 04 21 */	bctrl
/* 814432EC | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 814432F0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 814432F4 | 40 80 00 28 */	bge .L_8144331C
/* 814432F8 | 38 00 00 01 */	li r0, 0x1
/* 814432FC | 80 7E 03 F4 */	lwz r3, 0x3f4(r30)
/* 81443300 | 98 1E 03 EE */	stb r0, 0x3ee(r30)
/* 81443304 | 38 80 00 00 */	li r4, 0x0
/* 81443308 | 38 A0 00 01 */	li r5, 0x1
/* 8144330C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443310 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443314 | 7D 89 03 A6 */	mtctr r12
/* 81443318 | 4E 80 04 21 */	bctrl
.L_8144331C:
/* 8144331C | 88 1E 03 EF */	lbz r0, 0x3ef(r30)
/* 81443320 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81443324 | 41 82 00 4C */	beq .L_81443370
/* 81443328 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8144332C | 7F C3 F3 78 */	mr r3, r30
/* 81443330 | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 81443334 | 7D 89 03 A6 */	mtctr r12
/* 81443338 | 4E 80 04 21 */	bctrl
/* 8144333C | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81443340 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81443344 | 4C 40 13 82 */	cror eq, lt, eq
/* 81443348 | 40 82 00 28 */	bne .L_81443370
/* 8144334C | 38 00 00 00 */	li r0, 0x0
/* 81443350 | 80 7E 03 F4 */	lwz r3, 0x3f4(r30)
/* 81443354 | 98 1E 03 EF */	stb r0, 0x3ef(r30)
/* 81443358 | 38 80 00 01 */	li r4, 0x1
/* 8144335C | 38 A0 00 02 */	li r5, 0x2
/* 81443360 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443364 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443368 | 7D 89 03 A6 */	mtctr r12
/* 8144336C | 4E 80 04 21 */	bctrl
.L_81443370:
/* 81443370 | 88 1E 03 EF */	lbz r0, 0x3ef(r30)
/* 81443374 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81443378 | 40 82 00 48 */	bne .L_814433C0
/* 8144337C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81443380 | 7F C3 F3 78 */	mr r3, r30
/* 81443384 | 81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 81443388 | 7D 89 03 A6 */	mtctr r12
/* 8144338C | 4E 80 04 21 */	bctrl
/* 81443390 | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81443394 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81443398 | 40 81 00 28 */	ble .L_814433C0
/* 8144339C | 38 00 00 01 */	li r0, 0x1
/* 814433A0 | 80 7E 03 F4 */	lwz r3, 0x3f4(r30)
/* 814433A4 | 98 1E 03 EF */	stb r0, 0x3ef(r30)
/* 814433A8 | 38 80 00 01 */	li r4, 0x1
/* 814433AC | 38 A0 00 01 */	li r5, 0x1
/* 814433B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814433B4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814433B8 | 7D 89 03 A6 */	mtctr r12
/* 814433BC | 4E 80 04 21 */	bctrl
.L_814433C0:
/* 814433C0 | 80 7E 03 E0 */	lwz r3, 0x3e0(r30)
/* 814433C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814433C8 | 41 82 00 14 */	beq .L_814433DC
/* 814433CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814433D0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814433D4 | 7D 89 03 A6 */	mtctr r12
/* 814433D8 | 4E 80 04 21 */	bctrl
.L_814433DC:
/* 814433DC | 7F C3 F3 78 */	mr r3, r30
/* 814433E0 | 4B FD BF D1 */	bl calcCursorTimer__Q39textinput9inputform4BaseFv
/* 814433E4 | E3 E1 01 08 */	psq_l f31, 0x108(r1), 0, qr0
/* 814433E8 | CB E1 01 00 */	lfd f31, 0x100(r1)
/* 814433EC | E3 C1 00 F8 */	psq_l f30, 0xf8(r1), 0, qr0
/* 814433F0 | CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 814433F4 | 83 E1 00 EC */	lwz r31, 0xec(r1)
/* 814433F8 | 83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 814433FC | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 81443400 | 83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 81443404 | 7C 08 03 A6 */	mtlr r0
/* 81443408 | 38 21 01 10 */	addi r1, r1, 0x110
/* 8144340C | 4E 80 00 20 */	blr
.endfn calc__Q49textinput6extend4memo9InputFormFv

# .text:0x25A4 | 0x81443410 | size: 0x260
# textinput::extend::memo::InputForm::doAutoScroll()
.fn doAutoScroll__Q49textinput6extend4memo9InputFormFv, global
/* 81443410 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81443414 | 7C 08 02 A6 */	mflr r0
/* 81443418 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8144341C | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81443420 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81443424 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 81443428 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 8144342C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81443430 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81443434 | 7C 7E 1B 78 */	mr r30, r3
/* 81443438 | 81 83 03 C0 */	lwz r12, 0x3c0(r3)
/* 8144343C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443440 | 7D 89 03 A6 */	mtctr r12
/* 81443444 | 38 63 03 C0 */	addi r3, r3, 0x3c0
/* 81443448 | 4E 80 04 21 */	bctrl
/* 8144344C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81443450 | 40 82 01 F8 */	bne .L_81443648
/* 81443454 | 80 7E 01 B0 */	lwz r3, 0x1b0(r30)
/* 81443458 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8144345C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81443460 | 41 81 01 E8 */	bgt .L_81443648
/* 81443464 | 80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 81443468 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8144346C | 40 82 01 D4 */	bne .L_81443640
/* 81443470 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81443474 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81443478 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8144347C | 7D 89 03 A6 */	mtctr r12
/* 81443480 | 4E 80 04 21 */	bctrl
/* 81443484 | C0 02 8A 94 */	lfs f0, lbl_81694E94@sda21(r0)
/* 81443488 | C0 5E 01 80 */	lfs f2, 0x180(r30)
/* 8144348C | EC 21 00 32 */	fmuls f1, f1, f0
/* 81443490 | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81443494 | EF E2 08 2A */	fadds f31, f2, f1
/* 81443498 | FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8144349C | 40 81 00 AC */	ble .L_81443548
/* 814434A0 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 814434A4 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 814434A8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814434AC | 7D 89 03 A6 */	mtctr r12
/* 814434B0 | 4E 80 04 21 */	bctrl
/* 814434B4 | C0 5E 03 18 */	lfs f2, 0x318(r30)
/* 814434B8 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 814434BC | C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 814434C0 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 814434C4 | EC 02 00 28 */	fsubs f0, f2, f0
/* 814434C8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814434CC | EC 00 08 24 */	fdivs f0, f0, f1
/* 814434D0 | FC 00 00 1E */	fctiwz f0, f0
/* 814434D4 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 814434D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814434DC | 7D 89 03 A6 */	mtctr r12
/* 814434E0 | 4E 80 04 21 */	bctrl
/* 814434E4 | 6F E3 80 00 */	xoris r3, r31, 0x8000
/* 814434E8 | 3C 00 43 30 */	lis r0, 0x4330
/* 814434EC | 90 61 00 14 */	stw r3, 0x14(r1)
/* 814434F0 | 38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 814434F4 | 81 9E 03 C0 */	lwz r12, 0x3c0(r30)
/* 814434F8 | 38 80 00 00 */	li r4, 0x0
/* 814434FC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81443500 | 38 A0 00 00 */	li r5, 0x0
/* 81443504 | C8 62 8A 80 */	lfd f3, lbl_81694E80@sda21(r0)
/* 81443508 | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8144350C | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81443510 | EC 42 18 28 */	fsubs f2, f2, f3
/* 81443514 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81443518 | C0 62 8A 88 */	lfs f3, lbl_81694E88@sda21(r0)
/* 8144351C | EC 42 00 72 */	fmuls f2, f2, f1
/* 81443520 | FC 20 00 90 */	fmr f1, f0
/* 81443524 | EC 40 10 28 */	fsubs f2, f0, f2
/* 81443528 | 7D 89 03 A6 */	mtctr r12
/* 8144352C | 4E 80 04 21 */	bctrl
/* 81443530 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81443534 | 7F C3 F3 78 */	mr r3, r30
/* 81443538 | 38 80 00 0B */	li r4, 0xb
/* 8144353C | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81443540 | 7D 89 03 A6 */	mtctr r12
/* 81443544 | 4E 80 04 21 */	bctrl
.L_81443548:
/* 81443548 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 8144354C | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81443550 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81443554 | 7D 89 03 A6 */	mtctr r12
/* 81443558 | 4E 80 04 21 */	bctrl
/* 8144355C | C0 42 8A 98 */	lfs f2, lbl_81694E98@sda21(r0)
/* 81443560 | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81443564 | EC 22 00 72 */	fmuls f1, f2, f1
/* 81443568 | EC 00 08 2A */	fadds f0, f0, f1
/* 8144356C | FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 81443570 | 40 80 00 D0 */	bge .L_81443640
/* 81443574 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 81443578 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 8144357C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81443580 | 7D 89 03 A6 */	mtctr r12
/* 81443584 | 4E 80 04 21 */	bctrl
/* 81443588 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 8144358C | FF C0 08 90 */	fmr f30, f1
/* 81443590 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 81443594 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81443598 | 7D 89 03 A6 */	mtctr r12
/* 8144359C | 4E 80 04 21 */	bctrl
/* 814435A0 | C0 02 8A 98 */	lfs f0, lbl_81694E98@sda21(r0)
/* 814435A4 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 814435A8 | 81 9E 00 5C */	lwz r12, 0x5c(r30)
/* 814435AC | EC 20 00 72 */	fmuls f1, f0, f1
/* 814435B0 | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 814435B4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814435B8 | EC 00 08 2A */	fadds f0, f0, f1
/* 814435BC | EC 1F 00 28 */	fsubs f0, f31, f0
/* 814435C0 | EC 00 F0 24 */	fdivs f0, f0, f30
/* 814435C4 | FC 00 00 1E */	fctiwz f0, f0
/* 814435C8 | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 814435CC | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 814435D0 | 3B E4 00 01 */	addi r31, r4, 0x1
/* 814435D4 | 7D 89 03 A6 */	mtctr r12
/* 814435D8 | 4E 80 04 21 */	bctrl
/* 814435DC | 6F E3 80 00 */	xoris r3, r31, 0x8000
/* 814435E0 | 3C 00 43 30 */	lis r0, 0x4330
/* 814435E4 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814435E8 | 38 7E 03 C0 */	addi r3, r30, 0x3c0
/* 814435EC | 81 9E 03 C0 */	lwz r12, 0x3c0(r30)
/* 814435F0 | 38 80 00 00 */	li r4, 0x0
/* 814435F4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814435F8 | 38 A0 00 00 */	li r5, 0x0
/* 814435FC | C8 62 8A 80 */	lfd f3, lbl_81694E80@sda21(r0)
/* 81443600 | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 81443604 | C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 81443608 | EC 42 18 28 */	fsubs f2, f2, f3
/* 8144360C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81443610 | C0 62 8A 88 */	lfs f3, lbl_81694E88@sda21(r0)
/* 81443614 | EC 42 00 72 */	fmuls f2, f2, f1
/* 81443618 | FC 20 00 90 */	fmr f1, f0
/* 8144361C | EC 40 10 2A */	fadds f2, f0, f2
/* 81443620 | 7D 89 03 A6 */	mtctr r12
/* 81443624 | 4E 80 04 21 */	bctrl
/* 81443628 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8144362C | 7F C3 F3 78 */	mr r3, r30
/* 81443630 | 38 80 00 0B */	li r4, 0xb
/* 81443634 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81443638 | 7D 89 03 A6 */	mtctr r12
/* 8144363C | 4E 80 04 21 */	bctrl
.L_81443640:
/* 81443640 | 38 00 00 00 */	li r0, 0x0
/* 81443644 | 90 1E 01 B0 */	stw r0, 0x1b0(r30)
.L_81443648:
/* 81443648 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8144364C | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81443650 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 81443654 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81443658 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144365C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81443660 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81443664 | 7C 08 03 A6 */	mtlr r0
/* 81443668 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8144366C | 4E 80 00 20 */	blr
.endfn doAutoScroll__Q49textinput6extend4memo9InputFormFv

# .text:0x2804 | 0x81443670 | size: 0x48
# textinput::extend::memo::InputForm::beginDraw(const nw4r::ut::Rect&)
.fn beginDraw__Q49textinput6extend4memo9InputFormFRCQ34nw4r2ut4Rect, global
/* 81443670 | C0 03 03 28 */	lfs f0, 0x328(r3)
/* 81443674 | 7C 64 1B 78 */	mr r4, r3
/* 81443678 | C0 23 03 30 */	lfs f1, 0x330(r3)
/* 8144367C | FC 00 08 00 */	fcmpu cr0, f0, f1
/* 81443680 | 40 82 00 10 */	bne .L_81443690
/* 81443684 | C0 02 8A 9C */	lfs f0, lbl_81694E9C@sda21(r0)
/* 81443688 | EC 01 00 2A */	fadds f0, f1, f0
/* 8144368C | D0 03 03 30 */	stfs f0, 0x330(r3)
.L_81443690:
/* 81443690 | C0 23 03 2C */	lfs f1, 0x32c(r3)
/* 81443694 | C0 03 03 34 */	lfs f0, 0x334(r3)
/* 81443698 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8144369C | 40 82 00 10 */	bne .L_814436AC
/* 814436A0 | C0 02 8A 9C */	lfs f0, lbl_81694E9C@sda21(r0)
/* 814436A4 | EC 01 00 2A */	fadds f0, f1, f0
/* 814436A8 | D0 03 03 2C */	stfs f0, 0x32c(r3)
.L_814436AC:
/* 814436AC | 38 63 00 10 */	addi r3, r3, 0x10
/* 814436B0 | 38 84 03 28 */	addi r4, r4, 0x328
/* 814436B4 | 4B FF 24 10 */	b beginDraw__Q39textinput10textdrawer4BaseFRCQ34nw4r2ut4Rect
.endfn beginDraw__Q49textinput6extend4memo9InputFormFRCQ34nw4r2ut4Rect

# .text:0x284C | 0x814436B8 | size: 0x4
# textinput::extend::memo::InputForm::doScroll(textinput::CommandReceiver::Scroll*)
.fn doScroll__Q49textinput6extend4memo9InputFormFPQ39textinput15CommandReceiver6Scroll, global
/* 814436B8 | 4E 80 00 20 */	blr
.endfn doScroll__Q49textinput6extend4memo9InputFormFPQ39textinput15CommandReceiver6Scroll

# .text:0x2850 | 0x814436BC | size: 0x110
# textinput::extend::memo::InputForm::calcCursorPos(float, float)
.fn calcCursorPos__Q49textinput6extend4memo9InputFormFff, global
/* 814436BC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814436C0 | 7C 08 02 A6 */	mflr r0
/* 814436C4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814436C8 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 814436CC | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 814436D0 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 814436D4 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 814436D8 | FF C0 08 90 */	fmr f30, f1
/* 814436DC | FF E0 10 90 */	fmr f31, f2
/* 814436E0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814436E4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814436E8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814436EC | 7C 7D 1B 78 */	mr r29, r3
/* 814436F0 | 81 83 00 5C */	lwz r12, 0x5c(r3)
/* 814436F4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814436F8 | 7D 89 03 A6 */	mtctr r12
/* 814436FC | 38 63 00 10 */	addi r3, r3, 0x10
/* 81443700 | 4E 80 04 21 */	bctrl
/* 81443704 | 80 1D 01 BC */	lwz r0, 0x1bc(r29)
/* 81443708 | 7C 7E 1B 78 */	mr r30, r3
/* 8144370C | 7C 03 00 40 */	cmplw r3, r0
/* 81443710 | 40 81 00 08 */	ble .L_81443718
/* 81443714 | 7C 1E 03 78 */	mr r30, r0
.L_81443718:
/* 81443718 | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 8144371C | 38 7D 00 10 */	addi r3, r29, 0x10
/* 81443720 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81443724 | 7D 89 03 A6 */	mtctr r12
/* 81443728 | 4E 80 04 21 */	bctrl
/* 8144372C | 3F E0 43 30 */	lis r31, 0x4330
/* 81443730 | C0 1D 03 18 */	lfs f0, 0x318(r29)
/* 81443734 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 81443738 | C8 62 8A A0 */	lfd f3, lbl_81694EA0@sda21(r0)
/* 8144373C | EC 5F 00 2A */	fadds f2, f31, f0
/* 81443740 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81443744 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81443748 | EC 00 18 28 */	fsubs f0, f0, f3
/* 8144374C | EC 00 00 72 */	fmuls f0, f0, f1
/* 81443750 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 81443754 | 40 81 00 40 */	ble .L_81443794
/* 81443758 | 81 9D 00 5C */	lwz r12, 0x5c(r29)
/* 8144375C | 38 7D 00 10 */	addi r3, r29, 0x10
/* 81443760 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81443764 | 7D 89 03 A6 */	mtctr r12
/* 81443768 | 4E 80 04 21 */	bctrl
/* 8144376C | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 81443770 | 7F A3 EB 78 */	mr r3, r29
/* 81443774 | C8 42 8A A0 */	lfd f2, lbl_81694EA0@sda21(r0)
/* 81443778 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8144377C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81443780 | EC 00 10 28 */	fsubs f0, f0, f2
/* 81443784 | EC 40 00 72 */	fmuls f2, f0, f1
/* 81443788 | FC 20 F0 90 */	fmr f1, f30
/* 8144378C | 4B FD CE 8D */	bl calcCursorPos__Q39textinput9inputform4BaseFff
/* 81443790 | 48 00 00 10 */	b .L_814437A0
.L_81443794:
/* 81443794 | FC 20 F0 90 */	fmr f1, f30
/* 81443798 | 7F A3 EB 78 */	mr r3, r29
/* 8144379C | 4B FD CE 7D */	bl calcCursorPos__Q39textinput9inputform4BaseFff
.L_814437A0:
/* 814437A0 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 814437A4 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 814437A8 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 814437AC | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 814437B0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814437B4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814437B8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814437BC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814437C0 | 7C 08 03 A6 */	mtlr r0
/* 814437C4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814437C8 | 4E 80 00 20 */	blr
.endfn calcCursorPos__Q49textinput6extend4memo9InputFormFff

# .text:0x2960 | 0x814437CC | size: 0x14
# textinput::extend::memo::InputForm::drawCursor(float, float)
.fn drawCursor__Q49textinput6extend4memo9InputFormFff, global
/* 814437CC | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 814437D0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814437D4 | 4D 82 00 20 */	beqlr
/* 814437D8 | 4B FD CD 28 */	b drawCursor__Q39textinput9inputform4BaseFff
/* 814437DC | 4E 80 00 20 */	blr
.endfn drawCursor__Q49textinput6extend4memo9InputFormFff

# .text:0x2974 | 0x814437E0 | size: 0x38
# textinput::extend::memo::InputForm::getScale() const
.fn getScale__Q49textinput6extend4memo9InputFormCFv, global
/* 814437E0 | 80 83 03 0C */	lwz r4, 0x30c(r3)
/* 814437E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814437E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814437EC | 40 82 00 1C */	bne .L_81443808
/* 814437F0 | C0 02 8A 78 */	lfs f0, lbl_81694E78@sda21(r0)
/* 814437F4 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 814437F8 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 814437FC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81443800 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81443804 | 48 00 00 0C */	b .L_81443810
.L_81443808:
/* 81443808 | 80 64 00 44 */	lwz r3, 0x44(r4)
/* 8144380C | 80 84 00 48 */	lwz r4, 0x48(r4)
.L_81443810:
/* 81443810 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81443814 | 4E 80 00 20 */	blr
.endfn getScale__Q49textinput6extend4memo9InputFormCFv

# .text:0x29AC | 0x81443818 | size: 0xB4
# textinput::extend::memo::InputForm::drawHeader()
.fn drawHeader__Q49textinput6extend4memo9InputFormFv, global
/* 81443818 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144381C | 7C 08 02 A6 */	mflr r0
/* 81443820 | 3C 80 81 67 */	lis r4, scPaneName__Q39textinput6extend4memo@ha
/* 81443824 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443828 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144382C | 7C 7F 1B 78 */	mr r31, r3
/* 81443830 | 81 83 02 18 */	lwz r12, 0x218(r3)
/* 81443834 | 80 84 82 5C */	lwz r4, scPaneName__Q39textinput6extend4memo@l(r4)
/* 81443838 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8144383C | 7D 89 03 A6 */	mtctr r12
/* 81443840 | 38 63 02 18 */	addi r3, r3, 0x218
/* 81443844 | 4E 80 04 21 */	bctrl
/* 81443848 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144384C | 38 9F 02 30 */	addi r4, r31, 0x230
/* 81443850 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443854 | 7D 89 03 A6 */	mtctr r12
/* 81443858 | 4E 80 04 21 */	bctrl
/* 8144385C | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81443860 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81443864 | 38 8D 94 CC */	li r4, lbl_8169750C@sda21
/* 81443868 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8144386C | 7D 89 03 A6 */	mtctr r12
/* 81443870 | 4E 80 04 21 */	bctrl
/* 81443874 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443878 | 38 9F 02 30 */	addi r4, r31, 0x230
/* 8144387C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443880 | 7D 89 03 A6 */	mtctr r12
/* 81443884 | 4E 80 04 21 */	bctrl
/* 81443888 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 8144388C | 3C 80 81 67 */	lis r4, lbl_81668460@ha
/* 81443890 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81443894 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81443898 | 38 84 84 60 */	addi r4, r4, lbl_81668460@l
/* 8144389C | 7D 89 03 A6 */	mtctr r12
/* 814438A0 | 4E 80 04 21 */	bctrl
/* 814438A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814438A8 | 38 9F 02 30 */	addi r4, r31, 0x230
/* 814438AC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814438B0 | 7D 89 03 A6 */	mtctr r12
/* 814438B4 | 4E 80 04 21 */	bctrl
/* 814438B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814438BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814438C0 | 7C 08 03 A6 */	mtlr r0
/* 814438C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814438C8 | 4E 80 00 20 */	blr
.endfn drawHeader__Q49textinput6extend4memo9InputFormFv

# .text:0x2A60 | 0x814438CC | size: 0x134
# textinput::extend::memo::InputForm::drawBody()
.fn drawBody__Q49textinput6extend4memo9InputFormFv, global
/* 814438CC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814438D0 | 7C 08 02 A6 */	mflr r0
/* 814438D4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814438D8 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 814438DC | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 814438E0 | DB C1 00 30 */	stfd f30, 0x30(r1)
/* 814438E4 | F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 814438E8 | 3C 80 81 67 */	lis r4, scPaneName__Q39textinput6extend4memo@ha
/* 814438EC | 38 84 82 5C */	addi r4, r4, scPaneName__Q39textinput6extend4memo@l
/* 814438F0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814438F4 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814438F8 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814438FC | 7C 7D 1B 78 */	mr r29, r3
/* 81443900 | 81 83 02 18 */	lwz r12, 0x218(r3)
/* 81443904 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81443908 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8144390C | 7D 89 03 A6 */	mtctr r12
/* 81443910 | 38 63 02 18 */	addi r3, r3, 0x218
/* 81443914 | 4E 80 04 21 */	bctrl
/* 81443918 | C3 C2 8A 7C */	lfs f30, lbl_81694E7C@sda21(r0)
/* 8144391C | 7C 7F 1B 78 */	mr r31, r3
/* 81443920 | 3B C0 00 00 */	li r30, 0x0
/* 81443924 | FF E0 F0 90 */	fmr f31, f30
/* 81443928 | 48 00 00 64 */	b .L_8144398C
.L_8144392C:
/* 8144392C | FC 00 F0 18 */	frsp f0, f30
/* 81443930 | D3 FF 00 2C */	stfs f31, 0x2c(r31)
/* 81443934 | 7F E3 FB 78 */	mr r3, r31
/* 81443938 | 38 9D 02 30 */	addi r4, r29, 0x230
/* 8144393C | D3 E1 00 08 */	stfs f31, 0x8(r1)
/* 81443940 | D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 81443944 | D3 FF 00 34 */	stfs f31, 0x34(r31)
/* 81443948 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144394C | D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 81443950 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81443954 | D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 81443958 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8144395C | D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 81443960 | 7D 89 03 A6 */	mtctr r12
/* 81443964 | 4E 80 04 21 */	bctrl
/* 81443968 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144396C | 7F E3 FB 78 */	mr r3, r31
/* 81443970 | 38 9D 02 30 */	addi r4, r29, 0x230
/* 81443974 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443978 | 7D 89 03 A6 */	mtctr r12
/* 8144397C | 4E 80 04 21 */	bctrl
/* 81443980 | C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 81443984 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81443988 | EF DE 00 28 */	fsubs f30, f30, f0
.L_8144398C:
/* 8144398C | 80 1D 03 24 */	lwz r0, 0x324(r29)
/* 81443990 | 7C 1E 00 00 */	cmpw r30, r0
/* 81443994 | 41 80 FF 98 */	blt .L_8144392C
/* 81443998 | 88 1D 03 EC */	lbz r0, 0x3ec(r29)
/* 8144399C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814439A0 | 40 82 00 34 */	bne .L_814439D4
/* 814439A4 | 81 9D 02 18 */	lwz r12, 0x218(r29)
/* 814439A8 | 3C 80 81 67 */	lis r4, lbl_8166846C@ha
/* 814439AC | 38 7D 02 18 */	addi r3, r29, 0x218
/* 814439B0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 814439B4 | 38 84 84 6C */	addi r4, r4, lbl_8166846C@l
/* 814439B8 | 7D 89 03 A6 */	mtctr r12
/* 814439BC | 4E 80 04 21 */	bctrl
/* 814439C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814439C4 | 38 9D 02 30 */	addi r4, r29, 0x230
/* 814439C8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814439CC | 7D 89 03 A6 */	mtctr r12
/* 814439D0 | 4E 80 04 21 */	bctrl
.L_814439D4:
/* 814439D4 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 814439D8 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 814439DC | E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 814439E0 | CB C1 00 30 */	lfd f30, 0x30(r1)
/* 814439E4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814439E8 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814439EC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814439F0 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814439F4 | 7C 08 03 A6 */	mtlr r0
/* 814439F8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814439FC | 4E 80 00 20 */	blr
.endfn drawBody__Q49textinput6extend4memo9InputFormFv

# .text:0x2B94 | 0x81443A00 | size: 0x100
# textinput::extend::memo::InputForm::drawFooter()
.fn drawFooter__Q49textinput6extend4memo9InputFormFv, global
/* 81443A00 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81443A04 | 7C 08 02 A6 */	mflr r0
/* 81443A08 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81443A0C | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81443A10 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81443A14 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81443A18 | 3F E0 81 67 */	lis r31, scPaneName__Q39textinput6extend4memo@ha
/* 81443A1C | 3B FF 82 5C */	addi r31, r31, scPaneName__Q39textinput6extend4memo@l
/* 81443A20 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81443A24 | 7C 7E 1B 78 */	mr r30, r3
/* 81443A28 | 81 83 02 18 */	lwz r12, 0x218(r3)
/* 81443A2C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81443A30 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81443A34 | 7D 89 03 A6 */	mtctr r12
/* 81443A38 | 38 63 02 18 */	addi r3, r3, 0x218
/* 81443A3C | 4E 80 04 21 */	bctrl
/* 81443A40 | 80 9E 03 24 */	lwz r4, 0x324(r30)
/* 81443A44 | 3C 00 43 30 */	lis r0, 0x4330
/* 81443A48 | C0 03 00 50 */	lfs f0, 0x50(r3)
/* 81443A4C | 38 7E 02 18 */	addi r3, r30, 0x218
/* 81443A50 | 38 84 FF FF */	subi r4, r4, 0x1
/* 81443A54 | C0 22 8A A8 */	lfs f1, lbl_81694EA8@sda21(r0)
/* 81443A58 | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 81443A5C | 81 9E 02 18 */	lwz r12, 0x218(r30)
/* 81443A60 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 81443A64 | EC 01 00 32 */	fmuls f0, f1, f0
/* 81443A68 | C8 42 8A 80 */	lfd f2, lbl_81694E80@sda21(r0)
/* 81443A6C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81443A70 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81443A74 | C8 21 00 20 */	lfd f1, 0x20(r1)
/* 81443A78 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81443A7C | EC 21 10 28 */	fsubs f1, f1, f2
/* 81443A80 | EF E1 00 32 */	fmuls f31, f1, f0
/* 81443A84 | 7D 89 03 A6 */	mtctr r12
/* 81443A88 | 4E 80 04 21 */	bctrl
/* 81443A8C | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81443A90 | 7C 7F 1B 78 */	mr r31, r3
/* 81443A94 | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81443A98 | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81443A9C | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 81443AA0 | D3 E3 00 30 */	stfs f31, 0x30(r3)
/* 81443AA4 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81443AA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443AAC | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81443AB0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81443AB4 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81443AB8 | D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 81443ABC | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81443AC0 | 7D 89 03 A6 */	mtctr r12
/* 81443AC4 | 4E 80 04 21 */	bctrl
/* 81443AC8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81443ACC | 7F E3 FB 78 */	mr r3, r31
/* 81443AD0 | 38 9E 02 30 */	addi r4, r30, 0x230
/* 81443AD4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443AD8 | 7D 89 03 A6 */	mtctr r12
/* 81443ADC | 4E 80 04 21 */	bctrl
/* 81443AE0 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81443AE4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81443AE8 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81443AEC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81443AF0 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81443AF4 | 7C 08 03 A6 */	mtlr r0
/* 81443AF8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81443AFC | 4E 80 00 20 */	blr
.endfn drawFooter__Q49textinput6extend4memo9InputFormFv

# .text:0x2C94 | 0x81443B00 | size: 0xFC
# textinput::extend::memo::InputForm::open()
.fn open__Q49textinput6extend4memo9InputFormFv, global
/* 81443B00 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81443B04 | 7C 08 02 A6 */	mflr r0
/* 81443B08 | C0 22 8A 7C */	lfs f1, lbl_81694E7C@sda21(r0)
/* 81443B0C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81443B10 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81443B14 | 7C 7F 1B 78 */	mr r31, r3
/* 81443B18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443B1C | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 81443B20 | 7D 89 03 A6 */	mtctr r12
/* 81443B24 | 4E 80 04 21 */	bctrl
/* 81443B28 | C0 02 8A 7C */	lfs f0, lbl_81694E7C@sda21(r0)
/* 81443B2C | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81443B30 | 80 BF 02 1C */	lwz r5, 0x21c(r31)
/* 81443B34 | 38 8D 94 C0 */	li r4, lbl_81697500@sda21
/* 81443B38 | D0 1F 03 1C */	stfs f0, 0x31c(r31)
/* 81443B3C | D0 1F 03 20 */	stfs f0, 0x320(r31)
/* 81443B40 | 80 A5 00 10 */	lwz r5, 0x10(r5)
/* 81443B44 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81443B48 | D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 81443B4C | D0 05 00 30 */	stfs f0, 0x30(r5)
/* 81443B50 | D0 05 00 34 */	stfs f0, 0x34(r5)
/* 81443B54 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81443B58 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81443B5C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81443B60 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81443B64 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81443B68 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81443B6C | 7D 89 03 A6 */	mtctr r12
/* 81443B70 | 4E 80 04 21 */	bctrl
/* 81443B74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443B78 | 38 80 00 01 */	li r4, 0x1
/* 81443B7C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443B80 | 7D 89 03 A6 */	mtctr r12
/* 81443B84 | 4E 80 04 21 */	bctrl
/* 81443B88 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81443B8C | 3C 80 81 67 */	lis r4, lbl_81668404@ha
/* 81443B90 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81443B94 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81443B98 | 38 84 84 04 */	addi r4, r4, lbl_81668404@l
/* 81443B9C | 7D 89 03 A6 */	mtctr r12
/* 81443BA0 | 4E 80 04 21 */	bctrl
/* 81443BA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443BA8 | 38 80 00 07 */	li r4, 0x7
/* 81443BAC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443BB0 | 7D 89 03 A6 */	mtctr r12
/* 81443BB4 | 4E 80 04 21 */	bctrl
/* 81443BB8 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 81443BBC | 3C 80 81 67 */	lis r4, lbl_81668418@ha
/* 81443BC0 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 81443BC4 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81443BC8 | 38 84 84 18 */	addi r4, r4, lbl_81668418@l
/* 81443BCC | 7D 89 03 A6 */	mtctr r12
/* 81443BD0 | 4E 80 04 21 */	bctrl
/* 81443BD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443BD8 | 38 80 00 07 */	li r4, 0x7
/* 81443BDC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443BE0 | 7D 89 03 A6 */	mtctr r12
/* 81443BE4 | 4E 80 04 21 */	bctrl
/* 81443BE8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81443BEC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81443BF0 | 7C 08 03 A6 */	mtlr r0
/* 81443BF4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81443BF8 | 4E 80 00 20 */	blr
.endfn open__Q49textinput6extend4memo9InputFormFv

# .text:0x2D90 | 0x81443BFC | size: 0xF0
# textinput::extend::memo::InputForm::close()
.fn close__Q49textinput6extend4memo9InputFormFv, global
/* 81443BFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81443C00 | 7C 08 02 A6 */	mflr r0
/* 81443C04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443C08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81443C0C | 7C 7F 1B 78 */	mr r31, r3
/* 81443C10 | 88 03 03 F0 */	lbz r0, 0x3f0(r3)
/* 81443C14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81443C18 | 40 82 00 30 */	bne .L_81443C48
/* 81443C1C | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81443C20 | 38 8D 94 C0 */	li r4, lbl_81697500@sda21
/* 81443C24 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81443C28 | 7D 89 03 A6 */	mtctr r12
/* 81443C2C | 4E 80 04 21 */	bctrl
/* 81443C30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443C34 | 38 80 00 02 */	li r4, 0x2
/* 81443C38 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443C3C | 7D 89 03 A6 */	mtctr r12
/* 81443C40 | 4E 80 04 21 */	bctrl
/* 81443C44 | 48 00 00 2C */	b .L_81443C70
.L_81443C48:
/* 81443C48 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81443C4C | 38 8D 94 C0 */	li r4, lbl_81697500@sda21
/* 81443C50 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81443C54 | 7D 89 03 A6 */	mtctr r12
/* 81443C58 | 4E 80 04 21 */	bctrl
/* 81443C5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443C60 | 38 80 00 03 */	li r4, 0x3
/* 81443C64 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443C68 | 7D 89 03 A6 */	mtctr r12
/* 81443C6C | 4E 80 04 21 */	bctrl
.L_81443C70:
/* 81443C70 | 88 1F 03 EE */	lbz r0, 0x3ee(r31)
/* 81443C74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81443C78 | 41 82 00 28 */	beq .L_81443CA0
/* 81443C7C | 80 7F 03 F4 */	lwz r3, 0x3f4(r31)
/* 81443C80 | 38 80 00 00 */	li r4, 0x0
/* 81443C84 | 38 A0 00 02 */	li r5, 0x2
/* 81443C88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443C8C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443C90 | 7D 89 03 A6 */	mtctr r12
/* 81443C94 | 4E 80 04 21 */	bctrl
/* 81443C98 | 38 00 00 00 */	li r0, 0x0
/* 81443C9C | 98 1F 03 EE */	stb r0, 0x3ee(r31)
.L_81443CA0:
/* 81443CA0 | 88 1F 03 EF */	lbz r0, 0x3ef(r31)
/* 81443CA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81443CA8 | 41 82 00 28 */	beq .L_81443CD0
/* 81443CAC | 80 7F 03 F4 */	lwz r3, 0x3f4(r31)
/* 81443CB0 | 38 80 00 01 */	li r4, 0x1
/* 81443CB4 | 38 A0 00 02 */	li r5, 0x2
/* 81443CB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443CBC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81443CC0 | 7D 89 03 A6 */	mtctr r12
/* 81443CC4 | 4E 80 04 21 */	bctrl
/* 81443CC8 | 38 00 00 00 */	li r0, 0x0
/* 81443CCC | 98 1F 03 EF */	stb r0, 0x3ef(r31)
.L_81443CD0:
/* 81443CD0 | 38 00 00 01 */	li r0, 0x1
/* 81443CD4 | 98 1F 03 ED */	stb r0, 0x3ed(r31)
/* 81443CD8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81443CDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81443CE0 | 7C 08 03 A6 */	mtlr r0
/* 81443CE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81443CE8 | 4E 80 00 20 */	blr
.endfn close__Q49textinput6extend4memo9InputFormFv

# .text:0x2E80 | 0x81443CEC | size: 0x40
# textinput::extend::memo::InputForm::isWholePaneInAnimation()
.fn isWholePaneInAnimation__Q49textinput6extend4memo9InputFormFv, global
/* 81443CEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81443CF0 | 7C 08 02 A6 */	mflr r0
/* 81443CF4 | 38 8D 94 C0 */	li r4, lbl_81697500@sda21
/* 81443CF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443CFC | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81443D00 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81443D04 | 7D 89 03 A6 */	mtctr r12
/* 81443D08 | 4E 80 04 21 */	bctrl
/* 81443D0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443D10 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81443D14 | 7D 89 03 A6 */	mtctr r12
/* 81443D18 | 4E 80 04 21 */	bctrl
/* 81443D1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81443D20 | 7C 08 03 A6 */	mtlr r0
/* 81443D24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81443D28 | 4E 80 00 20 */	blr
.endfn isWholePaneInAnimation__Q49textinput6extend4memo9InputFormFv

# .text:0x2EC0 | 0x81443D2C | size: 0x64
# textinput::extend::memo::InputForm::setHeaderCaption(const wchar_t*)
.fn setHeaderCaption__Q49textinput6extend4memo9InputFormFPCw, global
/* 81443D2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81443D30 | 7C 08 02 A6 */	mflr r0
/* 81443D34 | 3C C0 81 67 */	lis r6, lbl_8166847C@ha
/* 81443D38 | 38 A0 00 01 */	li r5, 0x1
/* 81443D3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443D40 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81443D44 | 7C 9F 23 78 */	mr r31, r4
/* 81443D48 | 38 86 84 7C */	addi r4, r6, lbl_8166847C@l
/* 81443D4C | 80 63 02 1C */	lwz r3, 0x21c(r3)
/* 81443D50 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81443D54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443D58 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81443D5C | 7D 89 03 A6 */	mtctr r12
/* 81443D60 | 4E 80 04 21 */	bctrl
/* 81443D64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443D68 | 7F E4 FB 78 */	mr r4, r31
/* 81443D6C | 38 A0 00 00 */	li r5, 0x0
/* 81443D70 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81443D74 | 7D 89 03 A6 */	mtctr r12
/* 81443D78 | 4E 80 04 21 */	bctrl
/* 81443D7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81443D80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81443D84 | 7C 08 03 A6 */	mtlr r0
/* 81443D88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81443D8C | 4E 80 00 20 */	blr
.endfn setHeaderCaption__Q49textinput6extend4memo9InputFormFPCw

# .text:0x2F24 | 0x81443D90 | size: 0x64
# textinput::extend::memo::InputForm::setMiiName(const wchar_t*)
.fn setMiiName__Q49textinput6extend4memo9InputFormFPCw, global
/* 81443D90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81443D94 | 7C 08 02 A6 */	mflr r0
/* 81443D98 | 3C C0 81 67 */	lis r6, lbl_81668460@ha
/* 81443D9C | 38 A0 00 01 */	li r5, 0x1
/* 81443DA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443DA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81443DA8 | 7C 9F 23 78 */	mr r31, r4
/* 81443DAC | 38 86 84 60 */	addi r4, r6, lbl_81668460@l
/* 81443DB0 | 80 63 02 1C */	lwz r3, 0x21c(r3)
/* 81443DB4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81443DB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443DBC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81443DC0 | 7D 89 03 A6 */	mtctr r12
/* 81443DC4 | 4E 80 04 21 */	bctrl
/* 81443DC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443DCC | 7F E4 FB 78 */	mr r4, r31
/* 81443DD0 | 38 A0 00 00 */	li r5, 0x0
/* 81443DD4 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81443DD8 | 7D 89 03 A6 */	mtctr r12
/* 81443DDC | 4E 80 04 21 */	bctrl
/* 81443DE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81443DE4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81443DE8 | 7C 08 03 A6 */	mtlr r0
/* 81443DEC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81443DF0 | 4E 80 00 20 */	blr
.endfn setMiiName__Q49textinput6extend4memo9InputFormFPCw

# .text:0x2F88 | 0x81443DF4 | size: 0x78
# textinput::extend::memo::InputForm::setTouchLetterCaption(const wchar_t*)
.fn setTouchLetterCaption__Q49textinput6extend4memo9InputFormFPCw, global
/* 81443DF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81443DF8 | 7C 08 02 A6 */	mflr r0
/* 81443DFC | 3C A0 81 67 */	lis r5, lbl_8166846C@ha
/* 81443E00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443E04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81443E08 | 7C 9F 23 78 */	mr r31, r4
/* 81443E0C | 38 85 84 6C */	addi r4, r5, lbl_8166846C@l
/* 81443E10 | 38 A0 00 01 */	li r5, 0x1
/* 81443E14 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81443E18 | 7C 7E 1B 78 */	mr r30, r3
/* 81443E1C | 80 C3 02 1C */	lwz r6, 0x21c(r3)
/* 81443E20 | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 81443E24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443E28 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81443E2C | 7D 89 03 A6 */	mtctr r12
/* 81443E30 | 4E 80 04 21 */	bctrl
/* 81443E34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443E38 | 7F E4 FB 78 */	mr r4, r31
/* 81443E3C | 38 A0 00 00 */	li r5, 0x0
/* 81443E40 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81443E44 | 7D 89 03 A6 */	mtctr r12
/* 81443E48 | 4E 80 04 21 */	bctrl
/* 81443E4C | 38 00 00 00 */	li r0, 0x0
/* 81443E50 | 98 1E 03 EC */	stb r0, 0x3ec(r30)
/* 81443E54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81443E58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81443E5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81443E60 | 7C 08 03 A6 */	mtlr r0
/* 81443E64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81443E68 | 4E 80 00 20 */	blr
.endfn setTouchLetterCaption__Q49textinput6extend4memo9InputFormFPCw

# .text:0x3000 | 0x81443E6C | size: 0x14
# textinput::extend::memo::InputForm::getNigaoePane()
.fn getNigaoePane__Q49textinput6extend4memo9InputFormFv, global
/* 81443E6C | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81443E70 | 38 8D 94 CC */	li r4, lbl_8169750C@sda21
/* 81443E74 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81443E78 | 7D 89 03 A6 */	mtctr r12
/* 81443E7C | 4E 80 04 20 */	bctr
.endfn getNigaoePane__Q49textinput6extend4memo9InputFormFv

# .text:0x3014 | 0x81443E80 | size: 0x48
# textinput::extend::memo::InputForm::getNigaoePaneMaterial()
.fn getNigaoePaneMaterial__Q49textinput6extend4memo9InputFormFv, global
/* 81443E80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81443E84 | 7C 08 02 A6 */	mflr r0
/* 81443E88 | 38 8D 94 CC */	li r4, lbl_8169750C@sda21
/* 81443E8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443E90 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81443E94 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81443E98 | 7D 89 03 A6 */	mtctr r12
/* 81443E9C | 4E 80 04 21 */	bctrl
/* 81443EA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443EA4 | 38 8D 94 CC */	li r4, lbl_8169750C@sda21
/* 81443EA8 | 38 A0 00 01 */	li r5, 0x1
/* 81443EAC | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81443EB0 | 7D 89 03 A6 */	mtctr r12
/* 81443EB4 | 4E 80 04 21 */	bctrl
/* 81443EB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81443EBC | 7C 08 03 A6 */	mtlr r0
/* 81443EC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81443EC4 | 4E 80 00 20 */	blr
.endfn getNigaoePaneMaterial__Q49textinput6extend4memo9InputFormFv

# .text:0x305C | 0x81443EC8 | size: 0x8
# textinput::extend::memo::InputForm::getScrollMin()
.fn getScrollMin__Q49textinput6extend4memo9InputFormFv, global
/* 81443EC8 | C0 22 8A 7C */	lfs f1, lbl_81694E7C@sda21(r0)
/* 81443ECC | 4E 80 00 20 */	blr
.endfn getScrollMin__Q49textinput6extend4memo9InputFormFv

# .text:0x3064 | 0x81443ED0 | size: 0x34
# textinput::extend::memo::InputForm::getScrollMax()
.fn getScrollMax__Q49textinput6extend4memo9InputFormFv, global
/* 81443ED0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81443ED4 | 7C 08 02 A6 */	mflr r0
/* 81443ED8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443EDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443EE0 | 81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 81443EE4 | 7D 89 03 A6 */	mtctr r12
/* 81443EE8 | 4E 80 04 21 */	bctrl
/* 81443EEC | C0 02 8A AC */	lfs f0, lbl_81694EAC@sda21(r0)
/* 81443EF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81443EF4 | EC 21 00 28 */	fsubs f1, f1, f0
/* 81443EF8 | 7C 08 03 A6 */	mtlr r0
/* 81443EFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81443F00 | 4E 80 00 20 */	blr
.endfn getScrollMax__Q49textinput6extend4memo9InputFormFv

# .text:0x3098 | 0x81443F04 | size: 0x60
# textinput::extend::memo::InputForm::getDrawBoxHeight()
.fn getDrawBoxHeight__Q49textinput6extend4memo9InputFormFv, global
/* 81443F04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81443F08 | 7C 08 02 A6 */	mflr r0
/* 81443F0C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81443F10 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81443F14 | 7C 7F 1B 78 */	mr r31, r3
/* 81443F18 | 81 83 00 5C */	lwz r12, 0x5c(r3)
/* 81443F1C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81443F20 | 7D 89 03 A6 */	mtctr r12
/* 81443F24 | 38 63 00 10 */	addi r3, r3, 0x10
/* 81443F28 | 4E 80 04 21 */	bctrl
/* 81443F2C | 80 7F 03 24 */	lwz r3, 0x324(r31)
/* 81443F30 | 3C 00 43 30 */	lis r0, 0x4330
/* 81443F34 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81443F38 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 81443F3C | C8 42 8A 80 */	lfd f2, lbl_81694E80@sda21(r0)
/* 81443F40 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81443F44 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81443F48 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81443F4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81443F50 | EC 00 10 28 */	fsubs f0, f0, f2
/* 81443F54 | EC 20 00 72 */	fmuls f1, f0, f1
/* 81443F58 | 7C 08 03 A6 */	mtlr r0
/* 81443F5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81443F60 | 4E 80 00 20 */	blr
.endfn getDrawBoxHeight__Q49textinput6extend4memo9InputFormFv

# .text:0x30F8 | 0x81443F64 | size: 0x70
# textinput::extend::memo::InputForm::onNigaoeButtonTrig()
.fn onNigaoeButtonTrig__Q49textinput6extend4memo9InputFormFv, global
/* 81443F64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81443F68 | 7C 08 02 A6 */	mflr r0
/* 81443F6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443F70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81443F74 | 7C 7F 1B 78 */	mr r31, r3
/* 81443F78 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81443F7C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81443F80 | 40 82 00 40 */	bne .L_81443FC0
/* 81443F84 | 80 63 03 E0 */	lwz r3, 0x3e0(r3)
/* 81443F88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81443F8C | 41 82 00 34 */	beq .L_81443FC0
/* 81443F90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81443F94 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81443F98 | 7D 89 03 A6 */	mtctr r12
/* 81443F9C | 4E 80 04 21 */	bctrl
/* 81443FA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81443FA4 | 41 82 00 1C */	beq .L_81443FC0
/* 81443FA8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81443FAC | 7F E3 FB 78 */	mr r3, r31
/* 81443FB0 | 38 80 00 19 */	li r4, 0x19
/* 81443FB4 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81443FB8 | 7D 89 03 A6 */	mtctr r12
/* 81443FBC | 4E 80 04 21 */	bctrl
.L_81443FC0:
/* 81443FC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81443FC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81443FC8 | 7C 08 03 A6 */	mtlr r0
/* 81443FCC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81443FD0 | 4E 80 00 20 */	blr
.endfn onNigaoeButtonTrig__Q49textinput6extend4memo9InputFormFv

# .text:0x3168 | 0x81443FD4 | size: 0x90
# textinput::extend::memo::InputForm::onNigaoeButtonPoint()
.fn onNigaoeButtonPoint__Q49textinput6extend4memo9InputFormFv, global
/* 81443FD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81443FD8 | 7C 08 02 A6 */	mflr r0
/* 81443FDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81443FE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81443FE4 | 7C 7F 1B 78 */	mr r31, r3
/* 81443FE8 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81443FEC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81443FF0 | 40 82 00 60 */	bne .L_81444050
/* 81443FF4 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81443FF8 | 38 8D 94 CC */	li r4, lbl_8169750C@sda21
/* 81443FFC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 81444000 | 7D 89 03 A6 */	mtctr r12
/* 81444004 | 4E 80 04 21 */	bctrl
/* 81444008 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144400C | 38 80 00 04 */	li r4, 0x4
/* 81444010 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444014 | 7D 89 03 A6 */	mtctr r12
/* 81444018 | 4E 80 04 21 */	bctrl
/* 8144401C | 80 7F 03 E0 */	lwz r3, 0x3e0(r31)
/* 81444020 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444024 | 41 82 00 14 */	beq .L_81444038
/* 81444028 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144402C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81444030 | 7D 89 03 A6 */	mtctr r12
/* 81444034 | 4E 80 04 21 */	bctrl
.L_81444038:
/* 81444038 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144403C | 7F E3 FB 78 */	mr r3, r31
/* 81444040 | 38 80 00 18 */	li r4, 0x18
/* 81444044 | 81 8C 01 78 */	lwz r12, 0x178(r12)
/* 81444048 | 7D 89 03 A6 */	mtctr r12
/* 8144404C | 4E 80 04 21 */	bctrl
.L_81444050:
/* 81444050 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81444054 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81444058 | 7C 08 03 A6 */	mtlr r0
/* 8144405C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81444060 | 4E 80 00 20 */	blr
.endfn onNigaoeButtonPoint__Q49textinput6extend4memo9InputFormFv

# .text:0x31F8 | 0x81444064 | size: 0x7C
# textinput::extend::memo::InputForm::onNigaoeButtonLeft()
.fn onNigaoeButtonLeft__Q49textinput6extend4memo9InputFormFv, global
/* 81444064 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81444068 | 7C 08 02 A6 */	mflr r0
/* 8144406C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81444070 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81444074 | 7C 7F 1B 78 */	mr r31, r3
/* 81444078 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 8144407C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81444080 | 40 82 00 4C */	bne .L_814440CC
/* 81444084 | 80 63 03 E0 */	lwz r3, 0x3e0(r3)
/* 81444088 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144408C | 41 82 00 14 */	beq .L_814440A0
/* 81444090 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444094 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81444098 | 7D 89 03 A6 */	mtctr r12
/* 8144409C | 4E 80 04 21 */	bctrl
.L_814440A0:
/* 814440A0 | 81 9F 02 18 */	lwz r12, 0x218(r31)
/* 814440A4 | 38 7F 02 18 */	addi r3, r31, 0x218
/* 814440A8 | 38 8D 94 CC */	li r4, lbl_8169750C@sda21
/* 814440AC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 814440B0 | 7D 89 03 A6 */	mtctr r12
/* 814440B4 | 4E 80 04 21 */	bctrl
/* 814440B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814440BC | 38 80 00 05 */	li r4, 0x5
/* 814440C0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814440C4 | 7D 89 03 A6 */	mtctr r12
/* 814440C8 | 4E 80 04 21 */	bctrl
.L_814440CC:
/* 814440CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814440D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814440D4 | 7C 08 03 A6 */	mtlr r0
/* 814440D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814440DC | 4E 80 00 20 */	blr
.endfn onNigaoeButtonLeft__Q49textinput6extend4memo9InputFormFv

# .text:0x3274 | 0x814440E0 | size: 0x44
# textinput::extend::memo::InputForm::setDefaultNigaoe()
.fn setDefaultNigaoe__Q49textinput6extend4memo9InputFormFv, global
/* 814440E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814440E4 | 7C 08 02 A6 */	mflr r0
/* 814440E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814440EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814440F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814440F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814440F8 | 81 8C 02 9C */	lwz r12, 0x29c(r12)
/* 814440FC | 7D 89 03 A6 */	mtctr r12
/* 81444100 | 4E 80 04 21 */	bctrl
/* 81444104 | 80 BF 03 E4 */	lwz r5, 0x3e4(r31)
/* 81444108 | 38 80 00 00 */	li r4, 0x0
/* 8144410C | 48 0E 3D 11 */	bl fn_81527E1C
/* 81444110 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81444114 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81444118 | 7C 08 03 A6 */	mtlr r0
/* 8144411C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81444120 | 4E 80 00 20 */	blr
.endfn setDefaultNigaoe__Q49textinput6extend4memo9InputFormFv

# .text:0x32B8 | 0x81444124 | size: 0xCC
# textinput::extend::memo::InputForm::setEditMode(textinput::extend::memo::InputForm::EditMode)
.fn setEditMode__Q49textinput6extend4memo9InputFormFQ59textinput6extend4memo9InputForm8EditMode, global
/* 81444124 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81444128 | 7C 08 02 A6 */	mflr r0
/* 8144412C | 2C 04 00 02 */	cmpwi r4, 0x2
/* 81444130 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81444134 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81444138 | 7C 7F 1B 78 */	mr r31, r3
/* 8144413C | 90 83 03 FC */	stw r4, 0x3fc(r3)
/* 81444140 | 41 82 00 48 */	beq .L_81444188
/* 81444144 | 40 80 00 10 */	bge .L_81444154
/* 81444148 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144414C | 40 80 00 14 */	bge .L_81444160
/* 81444150 | 48 00 00 8C */	b .L_814441DC
.L_81444154:
/* 81444154 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81444158 | 40 80 00 84 */	bge .L_814441DC
/* 8144415C | 48 00 00 58 */	b .L_814441B4
.L_81444160:
/* 81444160 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81444164 | 3C 80 81 67 */	lis r4, lbl_81668428@ha
/* 81444168 | 38 84 84 28 */	addi r4, r4, lbl_81668428@l
/* 8144416C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444170 | 7D 89 03 A6 */	mtctr r12
/* 81444174 | 4E 80 04 21 */	bctrl
/* 81444178 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8144417C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 81444180 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 81444184 | 48 00 00 58 */	b .L_814441DC
.L_81444188:
/* 81444188 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8144418C | 3C 80 81 67 */	lis r4, lbl_81668428@ha
/* 81444190 | 38 84 84 28 */	addi r4, r4, lbl_81668428@l
/* 81444194 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81444198 | 7D 89 03 A6 */	mtctr r12
/* 8144419C | 4E 80 04 21 */	bctrl
/* 814441A0 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 814441A4 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814441A8 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814441AC | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 814441B0 | 48 00 00 2C */	b .L_814441DC
.L_814441B4:
/* 814441B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814441B8 | 38 80 00 06 */	li r4, 0x6
/* 814441BC | 38 A0 00 00 */	li r5, 0x0
/* 814441C0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 814441C4 | 7D 89 03 A6 */	mtctr r12
/* 814441C8 | 4E 80 04 21 */	bctrl
/* 814441CC | 38 7F 01 18 */	addi r3, r31, 0x118
/* 814441D0 | 4B FE 3F 81 */	bl resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
/* 814441D4 | 38 7F 01 18 */	addi r3, r31, 0x118
/* 814441D8 | 4B FE 3F D9 */	bl makeEmptyCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
.L_814441DC:
/* 814441DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814441E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814441E4 | 7C 08 03 A6 */	mtlr r0
/* 814441E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814441EC | 4E 80 00 20 */	blr
.endfn setEditMode__Q49textinput6extend4memo9InputFormFQ59textinput6extend4memo9InputForm8EditMode

# .text:0x3384 | 0x814441F0 | size: 0x60
# textinput::extend::memo::InputForm::preDraw(unsigned long)
.fn preDraw__Q49textinput6extend4memo9InputFormFUl, global
/* 814441F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814441F4 | 7C 08 02 A6 */	mflr r0
/* 814441F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814441FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81444200 | 7C 9F 23 78 */	mr r31, r4
/* 81444204 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81444208 | 7C 7E 1B 78 */	mr r30, r3
/* 8144420C | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81444210 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81444214 | 40 82 00 18 */	bne .L_8144422C
/* 81444218 | 80 63 03 E8 */	lwz r3, 0x3e8(r3)
/* 8144421C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444220 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81444224 | 7D 89 03 A6 */	mtctr r12
/* 81444228 | 4E 80 04 21 */	bctrl
.L_8144422C:
/* 8144422C | 7F C3 F3 78 */	mr r3, r30
/* 81444230 | 7F E4 FB 78 */	mr r4, r31
/* 81444234 | 4B FD B2 91 */	bl preDraw__Q39textinput9inputform4BaseFUl
/* 81444238 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144423C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81444240 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81444244 | 7C 08 03 A6 */	mtlr r0
/* 81444248 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144424C | 4E 80 00 20 */	blr
.endfn preDraw__Q49textinput6extend4memo9InputFormFUl

# .text:0x33E4 | 0x81444250 | size: 0x54
# textinput::extend::memo::InputForm::doLineFeed()
.fn doLineFeed__Q49textinput6extend4memo9InputFormFv, global
/* 81444250 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81444254 | 7C 08 02 A6 */	mflr r0
/* 81444258 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144425C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81444260 | 7C 7F 1B 78 */	mr r31, r3
/* 81444264 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81444268 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8144426C | 40 82 00 1C */	bne .L_81444288
/* 81444270 | 80 63 03 E8 */	lwz r3, 0x3e8(r3)
/* 81444274 | 38 80 00 0A */	li r4, 0xa
/* 81444278 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144427C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81444280 | 7D 89 03 A6 */	mtctr r12
/* 81444284 | 4E 80 04 21 */	bctrl
.L_81444288:
/* 81444288 | 7F E3 FB 78 */	mr r3, r31
/* 8144428C | 4B FD B9 F1 */	bl doLineFeed__Q39textinput9inputform4BaseFv
/* 81444290 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81444294 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81444298 | 7C 08 03 A6 */	mtlr r0
/* 8144429C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814442A0 | 4E 80 00 20 */	blr
.endfn doLineFeed__Q49textinput6extend4memo9InputFormFv

# .text:0x3438 | 0x814442A4 | size: 0x60
# textinput::extend::memo::InputForm::put(wchar_t)
.fn put__Q49textinput6extend4memo9InputFormFw, global
/* 814442A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814442A8 | 7C 08 02 A6 */	mflr r0
/* 814442AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814442B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814442B4 | 7C 9F 23 78 */	mr r31, r4
/* 814442B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814442BC | 7C 7E 1B 78 */	mr r30, r3
/* 814442C0 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 814442C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814442C8 | 40 82 00 18 */	bne .L_814442E0
/* 814442CC | 80 63 03 E8 */	lwz r3, 0x3e8(r3)
/* 814442D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814442D4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814442D8 | 7D 89 03 A6 */	mtctr r12
/* 814442DC | 4E 80 04 21 */	bctrl
.L_814442E0:
/* 814442E0 | 7F E4 FB 78 */	mr r4, r31
/* 814442E4 | 38 7E 00 10 */	addi r3, r30, 0x10
/* 814442E8 | 4B FF 11 09 */	bl put__Q39textinput10textdrawer4BaseFw
/* 814442EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814442F0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814442F4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814442F8 | 7C 08 03 A6 */	mtlr r0
/* 814442FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81444300 | 4E 80 00 20 */	blr
.endfn put__Q49textinput6extend4memo9InputFormFw

# .text:0x3498 | 0x81444304 | size: 0x28
# textinput::extend::memo::InputForm::finishDraw(unsigned long)
.fn finishDraw__Q49textinput6extend4memo9InputFormFUl, global
/* 81444304 | 80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 81444308 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8144430C | 4C 82 00 20 */	bnelr
/* 81444310 | 80 63 03 E8 */	lwz r3, 0x3e8(r3)
/* 81444314 | 38 80 00 00 */	li r4, 0x0
/* 81444318 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144431C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81444320 | 7D 89 03 A6 */	mtctr r12
/* 81444324 | 4E 80 04 20 */	bctr
/* 81444328 | 4E 80 00 20 */	blr
.endfn finishDraw__Q49textinput6extend4memo9InputFormFUl

# .text:0x34C0 | 0x8144432C | size: 0x4
# textinput::extend::memo::WholePane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput6extend4memo9WholePaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 8144432C | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput6extend4memo9WholePaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x34C4 | 0x81444330 | size: 0x1FC
# textinput::extend::memo::EventHandler::onTiEvent(textinput::gui::PaneComponent*, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onTiEvent__Q49textinput6extend4memo12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 81444330 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81444334 | 7C 08 02 A6 */	mflr r0
/* 81444338 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144433C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81444340 | 7C 9F 23 78 */	mr r31, r4
/* 81444344 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81444348 | 7C DE 33 78 */	mr r30, r6
/* 8144434C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81444350 | 7C BD 2B 78 */	mr r29, r5
/* 81444354 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81444358 | 7C 7C 1B 78 */	mr r28, r3
/* 8144435C | 4B FE 31 55 */	bl onTiEvent__Q39textinput9inputform12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
/* 81444360 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 81444364 | 88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 81444368 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 8144436C | 2C 00 00 42 */	cmpwi r0, 0x42
/* 81444370 | 40 82 01 9C */	bne .L_8144450C
/* 81444374 | 28 1D 00 04 */	cmplwi r29, 0x4
/* 81444378 | 40 82 00 8C */	bne .L_81444404
/* 8144437C | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81444380 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81444384 | 41 82 00 80 */	beq .L_81444404
/* 81444388 | 3C 60 81 67 */	lis r3, lbl_81668488@ha
/* 8144438C | 7F E4 FB 78 */	mr r4, r31
/* 81444390 | 38 63 84 88 */	addi r3, r3, lbl_81668488@l
/* 81444394 | 4B FF 5E 61 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81444398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144439C | 41 82 00 18 */	beq .L_814443B4
/* 814443A0 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 814443A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814443A8 | 81 8C 02 6C */	lwz r12, 0x26c(r12)
/* 814443AC | 7D 89 03 A6 */	mtctr r12
/* 814443B0 | 4E 80 04 21 */	bctrl
.L_814443B4:
/* 814443B4 | 7F E4 FB 78 */	mr r4, r31
/* 814443B8 | 38 6D 94 D4 */	li r3, lbl_81697514@sda21
/* 814443BC | 4B FF 5E 39 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814443C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814443C4 | 41 82 00 18 */	beq .L_814443DC
/* 814443C8 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 814443CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814443D0 | 81 8C 02 8C */	lwz r12, 0x28c(r12)
/* 814443D4 | 7D 89 03 A6 */	mtctr r12
/* 814443D8 | 4E 80 04 21 */	bctrl
.L_814443DC:
/* 814443DC | 7F E4 FB 78 */	mr r4, r31
/* 814443E0 | 38 6D 94 DC */	li r3, lbl_8169751C@sda21
/* 814443E4 | 4B FF 5E 11 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814443E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814443EC | 41 82 00 18 */	beq .L_81444404
/* 814443F0 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 814443F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814443F8 | 81 8C 02 90 */	lwz r12, 0x290(r12)
/* 814443FC | 7D 89 03 A6 */	mtctr r12
/* 81444400 | 4E 80 04 21 */	bctrl
.L_81444404:
/* 81444404 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81444408 | 40 82 00 80 */	bne .L_81444488
/* 8144440C | 3C 60 81 67 */	lis r3, lbl_81668488@ha
/* 81444410 | 7F E4 FB 78 */	mr r4, r31
/* 81444414 | 38 63 84 88 */	addi r3, r3, lbl_81668488@l
/* 81444418 | 4B FF 5D DD */	bl strcmp__Q29textinput4utilFPCcPCc
/* 8144441C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444420 | 41 82 00 18 */	beq .L_81444438
/* 81444424 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81444428 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144442C | 81 8C 02 70 */	lwz r12, 0x270(r12)
/* 81444430 | 7D 89 03 A6 */	mtctr r12
/* 81444434 | 4E 80 04 21 */	bctrl
.L_81444438:
/* 81444438 | 7F E4 FB 78 */	mr r4, r31
/* 8144443C | 38 6D 94 D4 */	li r3, lbl_81697514@sda21
/* 81444440 | 4B FF 5D B5 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 81444444 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444448 | 41 82 00 18 */	beq .L_81444460
/* 8144444C | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81444450 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444454 | 81 8C 02 7C */	lwz r12, 0x27c(r12)
/* 81444458 | 7D 89 03 A6 */	mtctr r12
/* 8144445C | 4E 80 04 21 */	bctrl
.L_81444460:
/* 81444460 | 7F E4 FB 78 */	mr r4, r31
/* 81444464 | 38 6D 94 DC */	li r3, lbl_8169751C@sda21
/* 81444468 | 4B FF 5D 8D */	bl strcmp__Q29textinput4utilFPCcPCc
/* 8144446C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444470 | 41 82 00 18 */	beq .L_81444488
/* 81444474 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81444478 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144447C | 81 8C 02 84 */	lwz r12, 0x284(r12)
/* 81444480 | 7D 89 03 A6 */	mtctr r12
/* 81444484 | 4E 80 04 21 */	bctrl
.L_81444488:
/* 81444488 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8144448C | 40 82 00 80 */	bne .L_8144450C
/* 81444490 | 3C 60 81 67 */	lis r3, lbl_81668488@ha
/* 81444494 | 7F E4 FB 78 */	mr r4, r31
/* 81444498 | 38 63 84 88 */	addi r3, r3, lbl_81668488@l
/* 8144449C | 4B FF 5D 59 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814444A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814444A4 | 41 82 00 18 */	beq .L_814444BC
/* 814444A8 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 814444AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814444B0 | 81 8C 02 74 */	lwz r12, 0x274(r12)
/* 814444B4 | 7D 89 03 A6 */	mtctr r12
/* 814444B8 | 4E 80 04 21 */	bctrl
.L_814444BC:
/* 814444BC | 7F E4 FB 78 */	mr r4, r31
/* 814444C0 | 38 6D 94 D4 */	li r3, lbl_81697514@sda21
/* 814444C4 | 4B FF 5D 31 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814444C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814444CC | 41 82 00 18 */	beq .L_814444E4
/* 814444D0 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 814444D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814444D8 | 81 8C 02 80 */	lwz r12, 0x280(r12)
/* 814444DC | 7D 89 03 A6 */	mtctr r12
/* 814444E0 | 4E 80 04 21 */	bctrl
.L_814444E4:
/* 814444E4 | 7F E4 FB 78 */	mr r4, r31
/* 814444E8 | 38 6D 94 DC */	li r3, lbl_8169751C@sda21
/* 814444EC | 4B FF 5D 09 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 814444F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814444F4 | 41 82 00 18 */	beq .L_8144450C
/* 814444F8 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 814444FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81444500 | 81 8C 02 88 */	lwz r12, 0x288(r12)
/* 81444504 | 7D 89 03 A6 */	mtctr r12
/* 81444508 | 4E 80 04 21 */	bctrl
.L_8144450C:
/* 8144450C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81444510 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81444514 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81444518 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8144451C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81444520 | 7C 08 03 A6 */	mtlr r0
/* 81444524 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81444528 | 4E 80 00 20 */	blr
.endfn onTiEvent__Q49textinput6extend4memo12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x36C0 | 0x8144452C | size: 0x4
# textinput::extend::memo::SimpleAnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q49textinput6extend4memo13SimpleAnmPaneFUl, global
/* 8144452C | 4B FF 2B 94 */	b changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
.endfn changeAnimation__Q49textinput6extend4memo13SimpleAnmPaneFUl

# .text:0x36C4 | 0x81444530 | size: 0x4
# textinput::extend::memo::SimpleAnmPane::init()
.fn init__Q49textinput6extend4memo13SimpleAnmPaneFv, global
/* 81444530 | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend4memo13SimpleAnmPaneFv

# .text:0x36C8 | 0x81444534 | size: 0x4
# textinput::extend::memo::ScrollButton::init()
.fn init__Q49textinput6extend4memo12ScrollButtonFv, global
/* 81444534 | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend4memo12ScrollButtonFv

# .text:0x36CC | 0x81444538 | size: 0x8
# textinput::extend::memo::AnmPane::getState()
.fn getState__Q49textinput6extend4memo7AnmPaneFv, global
/* 81444538 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8144453C | 4E 80 00 20 */	blr
.endfn getState__Q49textinput6extend4memo7AnmPaneFv

# .text:0x36D4 | 0x81444540 | size: 0x8
# textinput::extend::memo::AnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q49textinput6extend4memo7AnmPaneFUl, global
/* 81444540 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81444544 | 4B FF 2B 7C */	b changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
.endfn changeAnimation__Q49textinput6extend4memo7AnmPaneFUl

# .text:0x36DC | 0x81444548 | size: 0x8
# textinput::extend::memo::AnmPane::getKeyType() const
.fn getKeyType__Q49textinput6extend4memo7AnmPaneCFv, global
/* 81444548 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 8144454C | 4E 80 00 20 */	blr
.endfn getKeyType__Q49textinput6extend4memo7AnmPaneCFv

# .text:0x36E4 | 0x81444550 | size: 0xC
# textinput::extend::memo::AnmPane::init()
.fn init__Q49textinput6extend4memo7AnmPaneFv, global
/* 81444550 | 38 00 00 00 */	li r0, 0x0
/* 81444554 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81444558 | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend4memo7AnmPaneFv

# .text:0x36F0 | 0x8144455C | size: 0x5C
# textinput::extend::memo::NigaoePane::~NigaoePane()
.fn __dt__Q49textinput6extend4memo10NigaoePaneFv, global
/* 8144455C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81444560 | 7C 08 02 A6 */	mflr r0
/* 81444564 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444568 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144456C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81444570 | 7C 9F 23 78 */	mr r31, r4
/* 81444574 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81444578 | 7C 7E 1B 78 */	mr r30, r3
/* 8144457C | 41 82 00 20 */	beq .L_8144459C
/* 81444580 | 41 82 00 0C */	beq .L_8144458C
/* 81444584 | 38 80 00 00 */	li r4, 0x0
/* 81444588 | 4B FF 29 99 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_8144458C:
/* 8144458C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81444590 | 40 81 00 0C */	ble .L_8144459C
/* 81444594 | 7F C3 F3 78 */	mr r3, r30
/* 81444598 | 48 1B 3B 4D */	bl __dl__FPv
.L_8144459C:
/* 8144459C | 7F C3 F3 78 */	mr r3, r30
/* 814445A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814445A4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814445A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814445AC | 7C 08 03 A6 */	mtlr r0
/* 814445B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814445B4 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo10NigaoePaneFv

# .text:0x374C | 0x814445B8 | size: 0x4
# textinput::extend::memo::NigaoePane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q49textinput6extend4memo10NigaoePaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 814445B8 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q49textinput6extend4memo10NigaoePaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x3750 | 0x814445BC | size: 0x5C
# textinput::extend::memo::WholePane::~WholePane()
.fn __dt__Q49textinput6extend4memo9WholePaneFv, global
/* 814445BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814445C0 | 7C 08 02 A6 */	mflr r0
/* 814445C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814445C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814445CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814445D0 | 7C 9F 23 78 */	mr r31, r4
/* 814445D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814445D8 | 7C 7E 1B 78 */	mr r30, r3
/* 814445DC | 41 82 00 20 */	beq .L_814445FC
/* 814445E0 | 41 82 00 0C */	beq .L_814445EC
/* 814445E4 | 38 80 00 00 */	li r4, 0x0
/* 814445E8 | 4B FF 29 39 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_814445EC:
/* 814445EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814445F0 | 40 81 00 0C */	ble .L_814445FC
/* 814445F4 | 7F C3 F3 78 */	mr r3, r30
/* 814445F8 | 48 1B 3A ED */	bl __dl__FPv
.L_814445FC:
/* 814445FC | 7F C3 F3 78 */	mr r3, r30
/* 81444600 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81444604 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81444608 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144460C | 7C 08 03 A6 */	mtlr r0
/* 81444610 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81444614 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo9WholePaneFv

# .text:0x37AC | 0x81444618 | size: 0x10
# textinput::extend::memo::InputForm::isInScroll()
.fn isInScroll__Q49textinput6extend4memo9InputFormFv, global
/* 81444618 | 85 83 03 C0 */	lwzu r12, 0x3c0(r3)
/* 8144461C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81444620 | 7D 89 03 A6 */	mtctr r12
/* 81444624 | 4E 80 04 20 */	bctr
.endfn isInScroll__Q49textinput6extend4memo9InputFormFv

# .text:0x37BC | 0x81444628 | size: 0x40
# textinput::extend::memo::EventHandler::~EventHandler()
.fn __dt__Q49textinput6extend4memo12EventHandlerFv, global
/* 81444628 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144462C | 7C 08 02 A6 */	mflr r0
/* 81444630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444634 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81444638 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144463C | 7C 7F 1B 78 */	mr r31, r3
/* 81444640 | 41 82 00 10 */	beq .L_81444650
/* 81444644 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81444648 | 40 81 00 08 */	ble .L_81444650
/* 8144464C | 48 1B 3A 99 */	bl __dl__FPv
.L_81444650:
/* 81444650 | 7F E3 FB 78 */	mr r3, r31
/* 81444654 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81444658 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144465C | 7C 08 03 A6 */	mtlr r0
/* 81444660 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81444664 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo12EventHandlerFv

# .text:0x37FC | 0x81444668 | size: 0x58
# textinput::extend::memo::SimpleAnmPane::~SimpleAnmPane()
.fn __dt__Q49textinput6extend4memo13SimpleAnmPaneFv, global
/* 81444668 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144466C | 7C 08 02 A6 */	mflr r0
/* 81444670 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81444674 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81444678 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144467C | 7C 9F 23 78 */	mr r31, r4
/* 81444680 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81444684 | 7C 7E 1B 78 */	mr r30, r3
/* 81444688 | 41 82 00 1C */	beq .L_814446A4
/* 8144468C | 38 80 00 00 */	li r4, 0x0
/* 81444690 | 4B FF 28 91 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
/* 81444694 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81444698 | 40 81 00 0C */	ble .L_814446A4
/* 8144469C | 7F C3 F3 78 */	mr r3, r30
/* 814446A0 | 48 1B 3A 45 */	bl __dl__FPv
.L_814446A4:
/* 814446A4 | 7F C3 F3 78 */	mr r3, r30
/* 814446A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814446AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814446B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814446B4 | 7C 08 03 A6 */	mtlr r0
/* 814446B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814446BC | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo13SimpleAnmPaneFv

# .text:0x3854 | 0x814446C0 | size: 0x8
# textinput::extend::memo::InputForm::@16@drawCursor(float, float)
.fn "@16@drawCursor__Q49textinput6extend4memo9InputFormFff", global
/* 814446C0 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814446C4 | 4B FF F1 08 */	b drawCursor__Q49textinput6extend4memo9InputFormFff
.endfn "@16@drawCursor__Q49textinput6extend4memo9InputFormFff"

# .text:0x385C | 0x814446C8 | size: 0x8
# textinput::extend::memo::InputForm::@16@put(wchar_t)
.fn "@16@put__Q49textinput6extend4memo9InputFormFw", global
/* 814446C8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814446CC | 4B FF FB D8 */	b put__Q49textinput6extend4memo9InputFormFw
.endfn "@16@put__Q49textinput6extend4memo9InputFormFw"

# .text:0x3864 | 0x814446D0 | size: 0x8
# textinput::extend::memo::InputForm::@16@doLineFeed()
.fn "@16@doLineFeed__Q49textinput6extend4memo9InputFormFv", global
/* 814446D0 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814446D4 | 4B FF FB 7C */	b doLineFeed__Q49textinput6extend4memo9InputFormFv
.endfn "@16@doLineFeed__Q49textinput6extend4memo9InputFormFv"

# .text:0x386C | 0x814446D8 | size: 0x8
# textinput::extend::memo::InputForm::@16@finishDraw(unsigned long)
.fn "@16@finishDraw__Q49textinput6extend4memo9InputFormFUl", global
/* 814446D8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814446DC | 4B FF FC 28 */	b finishDraw__Q49textinput6extend4memo9InputFormFUl
.endfn "@16@finishDraw__Q49textinput6extend4memo9InputFormFUl"

# .text:0x3874 | 0x814446E0 | size: 0x8
# textinput::extend::memo::InputForm::@16@preDraw(unsigned long)
.fn "@16@preDraw__Q49textinput6extend4memo9InputFormFUl", global
/* 814446E0 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814446E4 | 4B FF FB 0C */	b preDraw__Q49textinput6extend4memo9InputFormFUl
.endfn "@16@preDraw__Q49textinput6extend4memo9InputFormFUl"

# .text:0x387C | 0x814446E8 | size: 0x8
# textinput::extend::memo::InputForm::@16@getScale() const
.fn "@16@getScale__Q49textinput6extend4memo9InputFormCFv", global
/* 814446E8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814446EC | 4B FF F0 F4 */	b getScale__Q49textinput6extend4memo9InputFormCFv
.endfn "@16@getScale__Q49textinput6extend4memo9InputFormCFv"

# .text:0x3884 | 0x814446F0 | size: 0x8
# textinput::extend::memo::InputForm::@16@beginDraw(const nw4r::ut::Rect&)
.fn "@16@beginDraw__Q49textinput6extend4memo9InputFormFRCQ34nw4r2ut4Rect", global
/* 814446F0 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814446F4 | 4B FF EF 7C */	b beginDraw__Q49textinput6extend4memo9InputFormFRCQ34nw4r2ut4Rect
.endfn "@16@beginDraw__Q49textinput6extend4memo9InputFormFRCQ34nw4r2ut4Rect"

# .text:0x388C | 0x814446F8 | size: 0x8
# textinput::extend::memo::InputForm::@16@draw()
.fn "@16@draw__Q49textinput6extend4memo9InputFormFv", global
/* 814446F8 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 814446FC | 4B FF E1 84 */	b draw__Q49textinput6extend4memo9InputFormFv
.endfn "@16@draw__Q49textinput6extend4memo9InputFormFv"

# .text:0x3894 | 0x81444700 | size: 0x8
# textinput::extend::memo::InputForm::@536@updateInput(int, float, float, unsigned long, unsigned long, unsigned long, void*)
.fn "@536@updateInput__Q49textinput6extend4memo9InputFormFiffUlUlUlPv", global
/* 81444700 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 81444704 | 4B FF DD 2C */	b updateInput__Q49textinput6extend4memo9InputFormFiffUlUlUlPv
.endfn "@536@updateInput__Q49textinput6extend4memo9InputFormFiffUlUlUlPv"

# .text:0x389C | 0x81444708 | size: 0x8
# textinput::extend::memo::InputForm::@536@updateInput(textinput::input::HKBManager&)
.fn "@536@updateInput__Q49textinput6extend4memo9InputFormFRQ39textinput5input10HKBManager", global
/* 81444708 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 8144470C | 4B FF E0 4C */	b updateInput__Q49textinput6extend4memo9InputFormFRQ39textinput5input10HKBManager
.endfn "@536@updateInput__Q49textinput6extend4memo9InputFormFRQ39textinput5input10HKBManager"

# .text:0x38A4 | 0x81444710 | size: 0x8
# textinput::extend::memo::InputForm::@536@calc()
.fn "@536@calc__Q49textinput6extend4memo9InputFormFv", global
/* 81444710 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 81444714 | 4B FF E3 28 */	b calc__Q49textinput6extend4memo9InputFormFv
.endfn "@536@calc__Q49textinput6extend4memo9InputFormFv"

# .text:0x38AC | 0x81444718 | size: 0x8
# textinput::extend::memo::InputForm::@536@draw()
.fn "@536@draw__Q49textinput6extend4memo9InputFormFv", global
/* 81444718 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 8144471C | 4B FF E1 64 */	b draw__Q49textinput6extend4memo9InputFormFv
.endfn "@536@draw__Q49textinput6extend4memo9InputFormFv"

# .text:0x38B4 | 0x81444720 | size: 0x8
# textinput::extend::memo::InputForm::@536@init()
.fn "@536@init__Q49textinput6extend4memo9InputFormFv", global
/* 81444720 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 81444724 | 4B FF E0 38 */	b init__Q49textinput6extend4memo9InputFormFv
.endfn "@536@init__Q49textinput6extend4memo9InputFormFv"

# .text:0x38BC | 0x81444728 | size: 0x8
.fn "@536@__dt__Q49textinput6extend4memo9InputFormFv", global
/* 81444728 | 38 63 FD E8 */	subi r3, r3, 0x218
/* 8144472C | 4B FF C7 40 */	b __dt__Q49textinput6extend4memo9InputFormFv
.endfn "@536@__dt__Q49textinput6extend4memo9InputFormFv"

# 0x816163B0..0x816168B8 | size: 0x508
.rodata
.balign 8

# .rodata:0x0 | 0x816163B0 | size: 0x198
# textinput::extend::memo::csAninationFile
.obj csAninationFile__Q39textinput6extend4memo, local
	.4byte 0x00000000
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F6E6F
	.4byte 0x726D616C
	.4byte 0x2E62726C
	.4byte 0x616E0000
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
.L_816163F4:
	.4byte 0x00000001
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4D61
	.4byte 0x696C496E
	.4byte 0x2E62726C
	.4byte 0x616E0000
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
.L_81616438:
	.4byte 0x00000002
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4D61
	.4byte 0x696C4F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
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
.L_8161647C:
	.4byte 0x00000003
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F5365
	.4byte 0x6E644F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
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
.L_816164C0:
	.4byte 0x00000004
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4E69
	.4byte 0x67616F65
	.4byte 0x466F7563
	.4byte 0x7573496E
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_81616504:
	.4byte 0x00000005
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4E69
	.4byte 0x67616F65
	.4byte 0x466F7563
	.4byte 0x75734F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csAninationFile__Q39textinput6extend4memo

# .rodata:0x198 | 0x81616548 | size: 0x78
# textinput::extend::memo::csPaneToAnimation
.obj csPaneToAnimation__Q39textinput6extend4memo, local
	.4byte 0x00000000
	.4byte lbl_816974F8
	.4byte 0x00000004
	.4byte csAninationFile__Q39textinput6extend4memo
	.rel csAninationFile__Q39textinput6extend4memo, .L_816163F4
	.rel csAninationFile__Q39textinput6extend4memo, .L_81616438
	.rel csAninationFile__Q39textinput6extend4memo, .L_8161647C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte lbl_816974F0
	.4byte 0x00000002
	.rel csAninationFile__Q39textinput6extend4memo, .L_816164C0
	.rel csAninationFile__Q39textinput6extend4memo, .L_81616504
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
.endobj csPaneToAnimation__Q39textinput6extend4memo

# .rodata:0x210 | 0x816165C0 | size: 0x268
# textinput::extend::memo::csGroupAninationFile
.obj csGroupAninationFile__Q39textinput6extend4memo, local
	.4byte 0x00000000
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4F66
	.4byte 0x662E6272
	.4byte 0x6C616E00
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
	.4byte 0x00000001
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4170
	.4byte 0x70656172
	.4byte 0x2E62726C
	.4byte 0x616E0000
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
	.4byte 0x00000002
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4C6F
	.4byte 0x73742E62
	.4byte 0x726C616E
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
	.4byte 0x00000003
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4844
	.4byte 0x41637469
	.4byte 0x6F6E456E
	.4byte 0x642E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4844
	.4byte 0x41637469
	.4byte 0x6F6E5374
	.4byte 0x6172742E
	.4byte 0x62726C61
	.4byte 0x6E000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F4C6F
	.4byte 0x6F702E62
	.4byte 0x726C616E
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
	.4byte 0x00000006
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F5365
	.4byte 0x6C656374
	.4byte 0x2E62726C
	.4byte 0x616E0000
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
	.4byte 0x00000007
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F466F
	.4byte 0x6375734F
	.4byte 0x66662E62
	.4byte 0x726C616E
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
	.4byte 0x00000008
	.4byte 0x6D795F4D
	.4byte 0x656D6F5F
	.4byte 0x615F466F
	.4byte 0x6375734F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
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
.endobj csGroupAninationFile__Q39textinput6extend4memo

# .rodata:0x478 | 0x81616828 | size: 0x90
# textinput::extend::memo::csGroupToAnimation
.obj csGroupToAnimation__Q39textinput6extend4memo, local
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000009
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000009
	.4byte 0x00000009
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x00000009
	.4byte 0x00000009
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000009
.endobj csGroupToAnimation__Q39textinput6extend4memo

# 0x81668210..0x81668860 | size: 0x650
.data
.balign 8

# .data:0x0 | 0x81668210 | size: 0xC
.obj lbl_81668210, global
	.4byte 0x4E5F4865
	.4byte 0x61646572
	.4byte 0x00000000
.endobj lbl_81668210

# .data:0xC | 0x8166821C | size: 0xC
.obj lbl_8166821C, global
	.4byte 0x4E5F466F
	.4byte 0x6F746572
	.4byte 0x00000000
.endobj lbl_8166821C

# .data:0x18 | 0x81668228 | size: 0xC
.obj lbl_81668228, global
	.4byte 0x545F4E69
	.4byte 0x67616F65
	.4byte 0x00000000
.endobj lbl_81668228

# .data:0x24 | 0x81668234 | size: 0xC
.obj lbl_81668234, global
	.4byte 0x425F4E69
	.4byte 0x67616F65
	.4byte 0x00000000
.endobj lbl_81668234

# .data:0x30 | 0x81668240 | size: 0xC
.obj lbl_81668240, global
	.4byte 0x545F4C65
	.4byte 0x74746572
	.4byte 0x00000000
.endobj lbl_81668240

# .data:0x3C | 0x8166824C | size: 0x10
.obj lbl_8166824C, global
	.4byte 0x545F546F
	.4byte 0x7563684C
	.4byte 0x65747465
	.4byte 0x72000000
.endobj lbl_8166824C

# .data:0x4C | 0x8166825C | size: 0x24
# textinput::extend::memo::scPaneName
.obj scPaneName__Q39textinput6extend4memo, local
	.4byte lbl_81668210
	.4byte lbl_816974E0
	.4byte lbl_816974E8
	.4byte lbl_8166821C
	.4byte lbl_816974F0
	.4byte lbl_81668228
	.4byte lbl_81668234
	.4byte lbl_81668240
	.4byte lbl_8166824C
.endobj scPaneName__Q39textinput6extend4memo

# .data:0x70 | 0x81668280 | size: 0x68
.obj jumptable_81668280, local
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441394
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441394
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441394
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441398
	.rel onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv, .L_81441394
.endobj jumptable_81668280

# .data:0xD8 | 0x816682E8 | size: 0x3C
.obj gap_08_816682E8_data, global
.hidden gap_08_816682E8_data
	.4byte 0x505F326C
	.4byte 0x5F546578
	.4byte 0x74426F78
	.4byte 0x00000000
	.4byte 0x545F326C
	.4byte 0x5F546578
	.4byte 0x74426F78
	.4byte 0x00000000
	.4byte 0x425F326C
	.4byte 0x5F546578
	.4byte 0x74426F78
	.4byte 0x00000000
	.4byte 0x4E5F4D65
	.4byte 0x6D6F526F
	.4byte 0x6F740000
.endobj gap_08_816682E8_data

# .data:0x114 | 0x81668324 | size: 0xC
.obj lbl_81668324, global
	.4byte 0x475F4172
	.4byte 0x77526F6F
	.4byte 0x70000000
.endobj lbl_81668324

# .data:0x120 | 0x81668330 | size: 0x10
.obj lbl_81668330, global
	.4byte 0x475F4172
	.4byte 0x77525F46
	.4byte 0x6F637573
	.4byte 0x00000000
.endobj lbl_81668330

# .data:0x130 | 0x81668340 | size: 0x10
.obj lbl_81668340, global
	.4byte 0x475F4172
	.4byte 0x774C5F46
	.4byte 0x6F637573
	.4byte 0x00000000
.endobj lbl_81668340

# .data:0x140 | 0x81668350 | size: 0xC
.obj lbl_81668350, global
	.4byte 0x475F4172
	.4byte 0x77525F41
	.4byte 0x63000000
.endobj lbl_81668350

# .data:0x14C | 0x8166835C | size: 0xC
.obj lbl_8166835C, global
	.4byte 0x475F4172
	.4byte 0x774C5F41
	.4byte 0x63000000
.endobj lbl_8166835C

# .data:0x158 | 0x81668368 | size: 0xC
.obj lbl_81668368, global
	.4byte 0x475F4172
	.4byte 0x774C5F45
	.4byte 0x6E640000
.endobj lbl_81668368

# .data:0x164 | 0x81668374 | size: 0xC
.obj lbl_81668374, global
	.4byte 0x475F4172
	.4byte 0x77525F45
	.4byte 0x6E640000
.endobj lbl_81668374

# .data:0x170 | 0x81668380 | size: 0xC
.obj lbl_81668380, global
	.string "G_ArwL_HDAc"
.endobj lbl_81668380

# .data:0x17C | 0x8166838C | size: 0xC
.obj lbl_8166838C, global
	.string "G_ArwR_HDAc"
.endobj lbl_8166838C

# .data:0x188 | 0x81668398 | size: 0x24
# textinput::extend::memo::csGroupName
.obj csGroupName__Q39textinput6extend4memo, local
	.4byte lbl_81668324
	.4byte lbl_81668330
	.4byte lbl_81668340
	.4byte lbl_81668350
	.4byte lbl_8166835C
	.4byte lbl_81668368
	.4byte lbl_81668374
	.4byte lbl_81668380
	.4byte lbl_8166838C
.endobj csGroupName__Q39textinput6extend4memo

# .data:0x1AC | 0x816683BC | size: 0x24
.obj jumptable_816683BC, local
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81442018
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81442024
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81442030
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_8144203C
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_8144205C
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_8144207C
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81442088
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81442094
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_814420A0
.endobj jumptable_816683BC

# .data:0x1D0 | 0x816683E0 | size: 0x24
.obj jumptable_816683E0, local
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81441F64
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81441F70
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81441F7C
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81441F88
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81441FA8
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81441FC8
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81441FD4
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81441FE0
	.rel changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl, .L_81441FEC
.endobj jumptable_816683E0

# .data:0x1F4 | 0x81668404 | size: 0x14
.obj lbl_81668404, global
	.4byte 0x505F7478
	.4byte 0x74536372
	.4byte 0x6C6C5F55
	.4byte 0x50000000
	.4byte 0x00000000
.endobj lbl_81668404

# .data:0x208 | 0x81668418 | size: 0x10
.obj lbl_81668418, global
	.string "P_txtScrll_DOWN"
.endobj lbl_81668418

# .data:0x218 | 0x81668428 | size: 0xC
.obj lbl_81668428, global
	.4byte 0x4E5F7478
	.4byte 0x745F7363
	.4byte 0x726C0000
.endobj lbl_81668428

# .data:0x224 | 0x81668434 | size: 0x2C
.obj lbl_81668434, global
	.4byte 0x4E5F546F
	.4byte 0x7042746E
	.4byte 0x5F303000
	.4byte 0x425F7478
	.4byte 0x74536372
	.4byte 0x6C6C5F55
	.4byte 0x50000000
	.4byte 0x425F7478
	.4byte 0x74536372
	.4byte 0x6C6C5F44
	.4byte 0x4F574E00
.endobj lbl_81668434

# .data:0x250 | 0x81668460 | size: 0xC
.obj lbl_81668460, global
	.4byte 0x545F4E69
	.4byte 0x67616F65
	.4byte 0x00000000
.endobj lbl_81668460

# .data:0x25C | 0x8166846C | size: 0x10
.obj lbl_8166846C, global
	.4byte 0x545F546F
	.4byte 0x7563684C
	.4byte 0x65747465
	.4byte 0x72000000
.endobj lbl_8166846C

# .data:0x26C | 0x8166847C | size: 0xC
.obj lbl_8166847C, global
	.4byte 0x545F4865
	.4byte 0x61646572
	.4byte 0x00000000
.endobj lbl_8166847C

# .data:0x278 | 0x81668488 | size: 0xC
.obj lbl_81668488, global
	.4byte 0x425F4E69
	.4byte 0x67616F65
	.4byte 0x00000000
.endobj lbl_81668488

# .data:0x284 | 0x81668494 | size: 0x24
# textinput::extend::memo::SimpleAnmPane::__vtable
.obj __vt__Q49textinput6extend4memo13SimpleAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput6extend4memo13SimpleAnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput6extend4memo13SimpleAnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput6extend4memo13SimpleAnmPaneFv
.endobj __vt__Q49textinput6extend4memo13SimpleAnmPane

# .data:0x2A8 | 0x816684B8 | size: 0x18
# textinput::extend::memo::ScrollButton::__vtable
.obj __vt__Q49textinput6extend4memo12ScrollButton, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q49textinput6extend4memo12ScrollButtonFP12MEMAllocatorPQ34nw4r3lyt24MultiArcResourceAccessor
	.4byte init__Q49textinput6extend4memo12ScrollButtonFv
	.4byte calc__Q49textinput6extend4memo12ScrollButtonFv
	.4byte changeAnimation__Q49textinput6extend4memo12ScrollButtonFbUl
.endobj __vt__Q49textinput6extend4memo12ScrollButton

# .data:0x2C0 | 0x816684D0 | size: 0x2C
# textinput::extend::memo::NigaoePane::__vtable
.obj __vt__Q49textinput6extend4memo10NigaoePane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput6extend4memo7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput6extend4memo10NigaoePaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput6extend4memo7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput6extend4memo10NigaoePaneFv
	.4byte getKeyType__Q49textinput6extend4memo7AnmPaneCFv
	.4byte getState__Q49textinput6extend4memo7AnmPaneFv
.endobj __vt__Q49textinput6extend4memo10NigaoePane

# .data:0x2EC | 0x816684FC | size: 0x2C
# textinput::extend::memo::WholePane::__vtable
.obj __vt__Q49textinput6extend4memo9WholePane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput6extend4memo7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q49textinput6extend4memo9WholePaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput6extend4memo7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput6extend4memo9WholePaneFv
	.4byte getKeyType__Q49textinput6extend4memo7AnmPaneCFv
	.4byte getState__Q49textinput6extend4memo7AnmPaneFv
.endobj __vt__Q49textinput6extend4memo9WholePane

# .data:0x318 | 0x81668528 | size: 0x30
# textinput::extend::memo::AnmPane::__vtable
.obj __vt__Q49textinput6extend4memo7AnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q49textinput6extend4memo7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q49textinput6extend4memo7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q49textinput6extend4memo7AnmPaneFv
	.4byte getKeyType__Q49textinput6extend4memo7AnmPaneCFv
	.4byte getState__Q49textinput6extend4memo7AnmPaneFv
	.4byte 0x00000000
.endobj __vt__Q49textinput6extend4memo7AnmPane

# .data:0x348 | 0x81668558 | size: 0x20
# textinput::extend::memo::EventHandler::__vtable
.obj __vt__Q49textinput6extend4memo12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend4memo12EventHandlerFv
	.4byte onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onTiEvent__Q49textinput6extend4memo12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver
.endobj __vt__Q49textinput6extend4memo12EventHandler

# .data:0x368 | 0x81668578 | size: 0x2E8
# textinput::extend::memo::InputForm::__vtable
.obj __vt__Q49textinput6extend4memo9InputForm, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend4memo9InputFormFv
	.4byte create__Q39textinput9inputform4BaseFP12MEMAllocator
	.4byte init__Q49textinput6extend4memo9InputFormFv
	.4byte clearSender__Q29textinput15CommandReceiverFv
	.4byte onCommand__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte addSender__Q29textinput15CommandReceiverFPQ29textinput13CommandSender
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@16@create__Q39textinput9inputform4BaseFP12MEMAllocator"
	.4byte draw__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte "@16@draw__Q49textinput6extend4memo9InputFormFv"
	.4byte setDrawString__Q39textinput10textdrawer4BaseFPCwUlUl
	.4byte setAspectRatio__Q39textinput10textdrawer4BaseFb
	.4byte setVIWidth__Q39textinput10textdrawer4BaseFf
	.4byte "@16@beginDraw__Q49textinput6extend4memo9InputFormFRCQ34nw4r2ut4Rect"
	.4byte endDraw__Q39textinput10textdrawer4BaseFv
	.4byte getLineHeight__Q39textinput10textdrawer4BaseFv
	.4byte "@16@setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font"
	.4byte getWidth__Q39textinput10textdrawer4BaseFPCw
	.4byte getLine__Q39textinput10textdrawer4BaseFv
	.4byte "@16@getScale__Q49textinput6extend4memo9InputFormCFv"
	.4byte setSecretModeOn__Q39textinput10textdrawer4BaseFb
	.4byte "@16@doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"
	.4byte "@16@doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo"
	.4byte "@16@preDraw__Q49textinput6extend4memo9InputFormFUl"
	.4byte "@16@finishDraw__Q49textinput6extend4memo9InputFormFUl"
	.4byte "@16@doLineFeed__Q49textinput6extend4memo9InputFormFv"
	.4byte "@16@put__Q49textinput6extend4memo9InputFormFw"
	.4byte procCursor__Q39textinput10textdrawer4BaseFPQ49textinput10textdrawer4Base9CursorPosl
	.4byte "@16@onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos"
	.4byte "@16@makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll"
	.4byte "@16@drawCursor__Q49textinput6extend4memo9InputFormFff"
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte resetCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
	.4byte addCandidate__Q39textinput12candidatebox18CandidateBoxCallerFPCw
	.4byte setCandidateBox__Q39textinput12candidatebox18CandidateBoxCallerFPQ39textinput12candidatebox4Base
	.4byte updateCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
	.4byte makeEmptyCandidate__Q39textinput12candidatebox18CandidateBoxCallerFv
	.4byte create__Q49textinput6extend4memo9InputFormFP12MEMAllocatorPQ39textinput9inputform10EditBuffer
	.4byte updateCandidateState___Q39textinput9inputform4BaseFv
	.4byte getWCString__Q39textinput9inputform4BaseCFv
	.4byte getAtokString__Q39textinput9inputform4BaseFv
	.4byte getCandidate__Q39textinput9inputform4BaseCFv
	.4byte getCursorPos__Q39textinput9inputform4BaseFv
	.4byte setFont__Q39textinput9inputform4BaseFRCQ34nw4r2ut4Font
	.4byte isEditMode__Q39textinput9inputform4BaseFv
	.4byte checkHeadOfSentence__Q39textinput9inputform4BaseFb
	.4byte setDestination__Q39textinput9inputform4BaseFQ29textinput11Destination
	.4byte limitStringLength__Q39textinput9inputform4BaseFUl
	.4byte limitRowNum__Q39textinput9inputform4BaseFUl
	.4byte doWordWrap__Q39textinput9inputform4BaseFb
	.4byte setLineDrawInfo__Q39textinput9inputform4BaseFbUl
	.4byte setLanguage__Q39textinput9inputform12LayoutByNW4RFQ29textinput8Language
	.4byte setPredictMode__Q39textinput9inputform4BaseFQ49textinput9inputform4Base11PredictMode
	.4byte getPredictMode__Q39textinput9inputform4BaseFv
	.4byte isOverRowLimit__Q39textinput9inputform4BaseFUlPCw
	.4byte findURL__Q39textinput9inputform4BaseFPUlPUlPCwUlUl
	.4byte isInScroll__Q49textinput6extend4memo9InputFormFv
	.4byte setAtokDictionary__Q39textinput9inputform4BaseFPviPviPvi
	.4byte closeAtokDictionary__Q39textinput9inputform4BaseFv
	.4byte isAtokDictionaryOpened__Q39textinput9inputform4BaseFv
	.4byte enableSpaceByRight__Q39textinput9inputform4BaseFb
	.4byte onClose__Q39textinput9inputform4BaseFv
	.4byte canConvert__Q39textinput9inputform4BaseFv
	.4byte setString__Q39textinput9inputform4BaseFPCw
	.4byte draw__Q49textinput6extend4memo9InputFormFv
	.4byte calc__Q49textinput6extend4memo9InputFormFv
	.4byte doBeforeDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte doAfterDrawProcess__Q39textinput9inputform4BaseFPCwUlRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte preDraw__Q49textinput6extend4memo9InputFormFUl
	.4byte finishDraw__Q49textinput6extend4memo9InputFormFUl
	.4byte doLineFeed__Q49textinput6extend4memo9InputFormFv
	.4byte onCursor__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPos
	.4byte isOverLine__Q39textinput9inputform4BaseFRCQ49textinput10textdrawer4Base8DrawInfo
	.4byte drawCursor__Q49textinput6extend4memo9InputFormFff
	.4byte doScroll__Q49textinput6extend4memo9InputFormFPQ39textinput15CommandReceiver6Scroll
	.4byte autoScroll__Q39textinput9inputform4BaseFv
	.4byte doWordWrap__Q39textinput9inputform4BaseFPCwUlf
	.4byte drawFixString__Q39textinput9inputform4BaseFUl
	.4byte onSE__Q39textinput9inputform12LayoutByNW4RFQ39textinput5sound2SE
	.4byte clear__Q39textinput9inputform4BaseFv
	.4byte calcCursorPos__Q49textinput6extend4memo9InputFormFff
	.4byte getGlobalLeftTopPos__Q39textinput9inputform4BaseCFv
	.4byte getScale__Q49textinput6extend4memo9InputFormCFv
	.4byte moveCursorUp__Q49textinput6extend4memo9InputFormFv
	.4byte moveCursorDown__Q49textinput6extend4memo9InputFormFv
	.4byte onPressUp__Q39textinput9inputform4BaseFv
	.4byte onPressDown__Q39textinput9inputform4BaseFv
	.4byte onPressLeft__Q39textinput9inputform4BaseFv
	.4byte onPressRight__Q39textinput9inputform4BaseFv
	.4byte makeUpCursorPos__Q39textinput9inputform4BaseFPQ49textinput10textdrawer4Base9CursorPosUlll
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@536@__dt__Q49textinput6extend4memo9InputFormFv"
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte "@536@init__Q49textinput6extend4memo9InputFormFv"
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@536@draw__Q49textinput6extend4memo9InputFormFv"
	.4byte "@536@calc__Q49textinput6extend4memo9InputFormFv"
	.4byte "@536@updateInput__Q49textinput6extend4memo9InputFormFiffUlUlUlPv"
	.4byte "@536@updateInput__Q49textinput6extend4memo9InputFormFRQ39textinput5input10HKBManager"
	.4byte getLayout__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte getPane__Q39textinput11nw4rmanager6LayoutCFPCc
	.4byte getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc
	.4byte setAnimOn__Q39textinput11nw4rmanager6LayoutFb
	.4byte drawPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte "@536@setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv"
	.4byte "@536@setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv"
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
	.4byte updateInputCommon__Q39textinput9inputform12LayoutByNW4RFiUlUlUlPv
	.4byte updateInput__Q49textinput6extend4memo9InputFormFiffUlUlUlPv
	.4byte updateInput__Q49textinput6extend4memo9InputFormFRQ39textinput5input10HKBManager
	.4byte isAbleToUp__Q39textinput9inputform12LayoutByNW4RFv
	.4byte isAbleToDown__Q39textinput9inputform12LayoutByNW4RFv
	.4byte setRootPaneScaleFor16x9__Q39textinput9inputform12LayoutByNW4RFv
	.4byte setRootPaneScaleFor4x3__Q39textinput9inputform12LayoutByNW4RFv
	.4byte visibleSeparator__Q39textinput9inputform12LayoutByNW4RFb
	.4byte setScroll__Q49textinput6extend4memo9InputFormFf
	.4byte setAddScroll__Q49textinput6extend4memo9InputFormFfbb
	.4byte getScroll__Q49textinput6extend4memo9InputFormFv
	.4byte getScrollFrom__Q49textinput6extend4memo9InputFormFv
	.4byte getScrollTo__Q49textinput6extend4memo9InputFormFv
	.4byte open__Q49textinput6extend4memo9InputFormFv
	.4byte close__Q49textinput6extend4memo9InputFormFv
	.4byte isWholePaneInAnimation__Q49textinput6extend4memo9InputFormFv
	.4byte setHeaderCaption__Q49textinput6extend4memo9InputFormFPCw
	.4byte setMiiName__Q49textinput6extend4memo9InputFormFPCw
	.4byte setTouchLetterCaption__Q49textinput6extend4memo9InputFormFPCw
	.4byte onNigaoeButtonTrig__Q49textinput6extend4memo9InputFormFv
	.4byte onNigaoeButtonPoint__Q49textinput6extend4memo9InputFormFv
	.4byte onNigaoeButtonLeft__Q49textinput6extend4memo9InputFormFv
	.4byte setDefaultNigaoe__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowRPoint__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowRLeft__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowLPoint__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowLLeft__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowRTrig__Q49textinput6extend4memo9InputFormFv
	.4byte onArrowLTrig__Q49textinput6extend4memo9InputFormFv
	.4byte setNigaoeEventObserver__Q49textinput6extend4memo9InputFormFPQ49textinput6extend4memo19NigaoeEventObserver
	.4byte getNigaoePane__Q49textinput6extend4memo9InputFormFv
	.4byte getNigaoePaneMaterial__Q49textinput6extend4memo9InputFormFv
	.4byte getDrawBoxHeight__Q49textinput6extend4memo9InputFormFv
	.4byte getScrollMin__Q49textinput6extend4memo9InputFormFv
	.4byte getScrollMax__Q49textinput6extend4memo9InputFormFv
	.4byte beginDraw__Q49textinput6extend4memo9InputFormFRCQ34nw4r2ut4Rect
	.4byte put__Q49textinput6extend4memo9InputFormFw
	.4byte createAnimation__Q49textinput6extend4memo9InputFormFP12MEMAllocator
	.4byte drawHeader__Q49textinput6extend4memo9InputFormFv
	.4byte drawBody__Q49textinput6extend4memo9InputFormFv
	.4byte drawFooter__Q49textinput6extend4memo9InputFormFv
	.4byte onCommandOnDispMode__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte onCommandOnEditMode__Q49textinput6extend4memo9InputFormFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte doAutoScroll__Q49textinput6extend4memo9InputFormFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q49textinput6extend4memo9InputForm

# 0x81694E78..0x81694EB0 | size: 0x38
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694E78 | size: 0x4
.obj lbl_81694E78, global
	.float 1
.endobj lbl_81694E78

# .sdata2:0x4 | 0x81694E7C | size: 0x4
.obj lbl_81694E7C, global
	.float 0
.endobj lbl_81694E7C

# .sdata2:0x8 | 0x81694E80 | size: 0x8
.obj lbl_81694E80, global
	.double 4503601774854144
.endobj lbl_81694E80

# .sdata2:0x10 | 0x81694E88 | size: 0x4
.obj lbl_81694E88, global
	.float 15
.endobj lbl_81694E88

# .sdata2:0x14 | 0x81694E8C | size: 0x4
.obj lbl_81694E8C, global
	.float 3
.endobj lbl_81694E8C

# .sdata2:0x18 | 0x81694E90 | size: 0x4
.obj lbl_81694E90, global
	.float 3.5
.endobj lbl_81694E90

# .sdata2:0x1C | 0x81694E94 | size: 0x4
.obj lbl_81694E94, global
	.float 0.5
.endobj lbl_81694E94

# .sdata2:0x20 | 0x81694E98 | size: 0x4
.obj lbl_81694E98, global
	.float 2
.endobj lbl_81694E98

# .sdata2:0x24 | 0x81694E9C | size: 0x4
.obj lbl_81694E9C, global
	.float 0.1
.endobj lbl_81694E9C

# .sdata2:0x28 | 0x81694EA0 | size: 0x8
.obj lbl_81694EA0, global
	.double 4503599627370496
.endobj lbl_81694EA0

# .sdata2:0x30 | 0x81694EA8 | size: 0x4
.obj lbl_81694EA8, global
	.float -1
.endobj lbl_81694EA8

# .sdata2:0x34 | 0x81694EAC | size: 0x4
.obj lbl_81694EAC, global
	.float 100
.endobj lbl_81694EAC

# 0x816974E0..0x81697528 | size: 0x48
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816974E0 | size: 0x8
.obj lbl_816974E0, global
	.4byte 0x4E5F426F
	.4byte 0x64790000
.endobj lbl_816974E0

# .sdata:0x8 | 0x816974E8 | size: 0x8
.obj lbl_816974E8, global
	.4byte 0x425F426F
	.4byte 0x64790000
.endobj lbl_816974E8

# .sdata:0x10 | 0x816974F0 | size: 0x8
.obj lbl_816974F0, global
	.4byte 0x4E696761
	.4byte 0x6F650000
.endobj lbl_816974F0

# .sdata:0x18 | 0x816974F8 | size: 0x8
.obj lbl_816974F8, global
	.4byte 0x4E5F4D65
	.4byte 0x6D6F0000
.endobj lbl_816974F8

# .sdata:0x20 | 0x81697500 | size: 0x8
.obj lbl_81697500, global
	.4byte 0x4E5F4D65
	.4byte 0x6D6F0000
.endobj lbl_81697500

# .sdata:0x28 | 0x81697508 | size: 0x4
.obj lbl_81697508, global
	.float 0
.endobj lbl_81697508

# .sdata:0x2C | 0x8169750C | size: 0x8
.obj lbl_8169750C, global
	.4byte 0x4E696761
	.4byte 0x6F650000
.endobj lbl_8169750C

# .sdata:0x34 | 0x81697514 | size: 0x8
.obj lbl_81697514, global
	.4byte 0x425F4172
	.4byte 0x77520000
.endobj lbl_81697514

# .sdata:0x3C | 0x8169751C | size: 0x7
.obj lbl_8169751C, global
	.string "B_ArwL"
.endobj lbl_8169751C

# .sdata:0x43 | 0x81697523 | size: 0x5
.obj gap_11_81697523_sdata, global
.hidden gap_11_81697523_sdata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_11_81697523_sdata
