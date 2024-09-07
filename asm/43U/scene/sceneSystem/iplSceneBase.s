.include "macros.inc"
.file "iplSceneBase.cpp"

# 0x81409BEC..0x81409FC4 | size: 0x3D8
.text
.balign 4

# .text:0x0 | 0x81409BEC | size: 0x78
# ipl::scene::Base::Base(EGG::Heap*)
.fn __ct__Q33ipl5scene4BaseFPQ23EGG4Heap, global
/* 81409BEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81409BF0 | 7C 08 02 A6 */	mflr r0
/* 81409BF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409BF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409BFC | 7C 9F 23 78 */	mr r31, r4
/* 81409C00 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81409C04 | 7C 7E 1B 78 */	mr r30, r3
/* 81409C08 | 4B F5 8B 05 */	bl __ct__Q33ipl7utility4TreeFv
/* 81409C0C | 38 7E 00 14 */	addi r3, r30, 0x14
/* 81409C10 | 48 1E D8 55 */	bl __ct__Q23EGG8DisposerFv
/* 81409C14 | 3C A0 81 66 */	lis r5, __vt__Q33ipl5scene4Base@ha
/* 81409C18 | 38 00 00 00 */	li r0, 0x0
/* 81409C1C | 38 A5 87 88 */	addi r5, r5, __vt__Q33ipl5scene4Base@l
/* 81409C20 | 93 FE 00 24 */	stw r31, 0x24(r30)
/* 81409C24 | 38 85 00 1C */	addi r4, r5, 0x1c
/* 81409C28 | 38 7E 00 38 */	addi r3, r30, 0x38
/* 81409C2C | 90 BE 00 00 */	stw r5, 0x0(r30)
/* 81409C30 | 90 9E 00 14 */	stw r4, 0x14(r30)
/* 81409C34 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 81409C38 | 90 1E 00 2C */	stw r0, 0x2c(r30)
/* 81409C3C | 90 1E 00 30 */	stw r0, 0x30(r30)
/* 81409C40 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 81409C44 | 48 00 08 B5 */	bl clear__Q33ipl5scene7CommandFv
/* 81409C48 | 7F C3 F3 78 */	mr r3, r30
/* 81409C4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409C50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81409C54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409C58 | 7C 08 03 A6 */	mtlr r0
/* 81409C5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409C60 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene4BaseFPQ23EGG4Heap

# .text:0x78 | 0x81409C64 | size: 0x5C
# ipl::scene::Base::~Base()
.fn __dt__Q33ipl5scene4BaseFv, global
/* 81409C64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81409C68 | 7C 08 02 A6 */	mflr r0
/* 81409C6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409C70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409C74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409C78 | 7C 9F 23 78 */	mr r31, r4
/* 81409C7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81409C80 | 7C 7E 1B 78 */	mr r30, r3
/* 81409C84 | 41 82 00 20 */	beq .L_81409CA4
/* 81409C88 | 38 80 00 00 */	li r4, 0x0
/* 81409C8C | 38 63 00 14 */	addi r3, r3, 0x14
/* 81409C90 | 48 1E D8 29 */	bl __dt__Q23EGG8DisposerFv
/* 81409C94 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81409C98 | 40 81 00 0C */	ble .L_81409CA4
/* 81409C9C | 7F C3 F3 78 */	mr r3, r30
/* 81409CA0 | 48 1E E4 45 */	bl __dl__FPv
.L_81409CA4:
/* 81409CA4 | 7F C3 F3 78 */	mr r3, r30
/* 81409CA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409CAC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81409CB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409CB4 | 7C 08 03 A6 */	mtlr r0
/* 81409CB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409CBC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene4BaseFv

# .text:0xD4 | 0x81409CC0 | size: 0x4C
# ipl::scene::Base::do_prepare()
.fn do_prepare__Q33ipl5scene4BaseFv, global
/* 81409CC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81409CC4 | 7C 08 02 A6 */	mflr r0
/* 81409CC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409CCC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409CD0 | 7C 7F 1B 78 */	mr r31, r3
/* 81409CD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409CD8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81409CDC | 7D 89 03 A6 */	mtctr r12
/* 81409CE0 | 4E 80 04 21 */	bctrl
/* 81409CE4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81409CE8 | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 81409CEC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81409CF0 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 81409CF4 | 4B F3 3E 85 */	bl sendToken__Q33ipl4nand7ManagerFi
/* 81409CF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409CFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409D00 | 7C 08 03 A6 */	mtlr r0
/* 81409D04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409D08 | 4E 80 00 20 */	blr
.endfn do_prepare__Q33ipl5scene4BaseFv

# .text:0x120 | 0x81409D0C | size: 0x44
# ipl::scene::Base::do_create()
.fn do_create__Q33ipl5scene4BaseFv, global
/* 81409D0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81409D10 | 7C 08 02 A6 */	mflr r0
/* 81409D14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409D18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409D1C | 7C 7F 1B 78 */	mr r31, r3
/* 81409D20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409D24 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81409D28 | 7D 89 03 A6 */	mtctr r12
/* 81409D2C | 4E 80 04 21 */	bctrl
/* 81409D30 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 81409D34 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81409D38 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 81409D3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409D40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409D44 | 7C 08 03 A6 */	mtlr r0
/* 81409D48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409D4C | 4E 80 00 20 */	blr
.endfn do_create__Q33ipl5scene4BaseFv

# .text:0x164 | 0x81409D50 | size: 0x6C
# ipl::scene::Base::do_calc()
.fn do_calc__Q33ipl5scene4BaseFv, global
/* 81409D50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81409D54 | 7C 08 02 A6 */	mflr r0
/* 81409D58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409D5C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409D60 | 7C 7F 1B 78 */	mr r31, r3
/* 81409D64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409D68 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81409D6C | 7D 89 03 A6 */	mtctr r12
/* 81409D70 | 4E 80 04 21 */	bctrl
/* 81409D74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409D78 | 41 82 00 10 */	beq .L_81409D88
/* 81409D7C | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 81409D80 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 81409D84 | 41 82 00 24 */	beq .L_81409DA8
.L_81409D88:
/* 81409D88 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 81409D8C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 81409D90 | 40 82 00 18 */	bne .L_81409DA8
/* 81409D94 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81409D98 | 7F E3 FB 78 */	mr r3, r31
/* 81409D9C | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81409DA0 | 7D 89 03 A6 */	mtctr r12
/* 81409DA4 | 4E 80 04 21 */	bctrl
.L_81409DA8:
/* 81409DA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409DAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409DB0 | 7C 08 03 A6 */	mtlr r0
/* 81409DB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409DB8 | 4E 80 00 20 */	blr
.endfn do_calc__Q33ipl5scene4BaseFv

# .text:0x1D0 | 0x81409DBC | size: 0x6C
# ipl::scene::Base::do_draw()
.fn do_draw__Q33ipl5scene4BaseFv, global
/* 81409DBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81409DC0 | 7C 08 02 A6 */	mflr r0
/* 81409DC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409DC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409DCC | 7C 7F 1B 78 */	mr r31, r3
/* 81409DD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409DD4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81409DD8 | 7D 89 03 A6 */	mtctr r12
/* 81409DDC | 4E 80 04 21 */	bctrl
/* 81409DE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409DE4 | 41 82 00 10 */	beq .L_81409DF4
/* 81409DE8 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 81409DEC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 81409DF0 | 41 82 00 24 */	beq .L_81409E14
.L_81409DF4:
/* 81409DF4 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 81409DF8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 81409DFC | 40 82 00 18 */	bne .L_81409E14
/* 81409E00 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81409E04 | 7F E3 FB 78 */	mr r3, r31
/* 81409E08 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81409E0C | 7D 89 03 A6 */	mtctr r12
/* 81409E10 | 4E 80 04 21 */	bctrl
.L_81409E14:
/* 81409E14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409E18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409E1C | 7C 08 03 A6 */	mtlr r0
/* 81409E20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409E24 | 4E 80 00 20 */	blr
.endfn do_draw__Q33ipl5scene4BaseFv

# .text:0x23C | 0x81409E28 | size: 0x60
# ipl::scene::Base::do_destroy()
.fn do_destroy__Q33ipl5scene4BaseFv, global
/* 81409E28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81409E2C | 7C 08 02 A6 */	mflr r0
/* 81409E30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409E34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409E38 | 7C 7F 1B 78 */	mr r31, r3
/* 81409E3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409E40 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81409E44 | 7D 89 03 A6 */	mtctr r12
/* 81409E48 | 4E 80 04 21 */	bctrl
/* 81409E4C | 80 1F 00 38 */	lwz r0, 0x38(r31)
/* 81409E50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81409E54 | 41 82 00 20 */	beq .L_81409E74
/* 81409E58 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81409E5C | 38 9F 00 38 */	addi r4, r31, 0x38
/* 81409E60 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81409E64 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81409E68 | 48 00 11 E1 */	bl pushCommand__Q33ipl5scene7ManagerFRCQ33ipl5scene7Command
/* 81409E6C | 38 7F 00 38 */	addi r3, r31, 0x38
/* 81409E70 | 48 00 06 89 */	bl clear__Q33ipl5scene7CommandFv
.L_81409E74:
/* 81409E74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409E78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409E7C | 7C 08 03 A6 */	mtlr r0
/* 81409E80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409E84 | 4E 80 00 20 */	blr
.endfn do_destroy__Q33ipl5scene4BaseFv

# .text:0x29C | 0x81409E88 | size: 0x70
# ipl::scene::Base::createChildScene(int, ipl::scene::Base*, ipl::scene::Base*, void*)
.fn createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv, global
/* 81409E88 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81409E8C | 7C 08 02 A6 */	mflr r0
/* 81409E90 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81409E94 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81409E98 | 48 1E F6 2D */	bl _savegpr_28
/* 81409E9C | 7C 9C 23 78 */	mr r28, r4
/* 81409EA0 | 7C BD 2B 78 */	mr r29, r5
/* 81409EA4 | 7C DE 33 78 */	mr r30, r6
/* 81409EA8 | 7C FF 3B 78 */	mr r31, r7
/* 81409EAC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81409EB0 | 48 00 06 49 */	bl clear__Q33ipl5scene7CommandFv
/* 81409EB4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81409EB8 | 38 00 00 01 */	li r0, 0x1
/* 81409EBC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81409EC0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81409EC4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81409EC8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81409ECC | 93 81 00 0C */	stw r28, 0xc(r1)
/* 81409ED0 | 93 A1 00 18 */	stw r29, 0x18(r1)
/* 81409ED4 | 93 C1 00 1C */	stw r30, 0x1c(r1)
/* 81409ED8 | 93 E1 00 20 */	stw r31, 0x20(r1)
/* 81409EDC | 48 00 11 6D */	bl pushCommand__Q33ipl5scene7ManagerFRCQ33ipl5scene7Command
/* 81409EE0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81409EE4 | 48 1E F6 2D */	bl _restgpr_28
/* 81409EE8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81409EEC | 7C 08 03 A6 */	mtlr r0
/* 81409EF0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81409EF4 | 4E 80 00 20 */	blr
.endfn createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv

# .text:0x30C | 0x81409EF8 | size: 0x9C
# ipl::scene::Base::reserveSceneChange(int, void*)
.fn reserveSceneChange__Q33ipl5scene4BaseFiPv, global
/* 81409EF8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81409EFC | 7C 08 02 A6 */	mflr r0
/* 81409F00 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81409F04 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81409F08 | 48 1E F5 C1 */	bl _savegpr_29
/* 81409F0C | 7C 7D 1B 78 */	mr r29, r3
/* 81409F10 | 7C 9E 23 78 */	mr r30, r4
/* 81409F14 | 7C BF 2B 78 */	mr r31, r5
/* 81409F18 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81409F1C | 48 00 05 DD */	bl clear__Q33ipl5scene7CommandFv
/* 81409F20 | 38 00 00 02 */	li r0, 0x2
/* 81409F24 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 81409F28 | 7F A3 EB 78 */	mr r3, r29
/* 81409F2C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81409F30 | 80 1D 00 30 */	lwz r0, 0x30(r29)
/* 81409F34 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81409F38 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81409F3C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81409F40 | 7D 89 03 A6 */	mtctr r12
/* 81409F44 | 4E 80 04 21 */	bctrl
/* 81409F48 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81409F4C | 7F A3 EB 78 */	mr r3, r29
/* 81409F50 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81409F54 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81409F58 | 7D 89 03 A6 */	mtctr r12
/* 81409F5C | 4E 80 04 21 */	bctrl
/* 81409F60 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81409F64 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81409F68 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81409F6C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81409F70 | 93 E1 00 20 */	stw r31, 0x20(r1)
/* 81409F74 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 81409F78 | 48 00 10 D1 */	bl pushCommand__Q33ipl5scene7ManagerFRCQ33ipl5scene7Command
/* 81409F7C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81409F80 | 48 1E F5 95 */	bl _restgpr_29
/* 81409F84 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81409F88 | 7C 08 03 A6 */	mtlr r0
/* 81409F8C | 38 21 00 40 */	addi r1, r1, 0x40
/* 81409F90 | 4E 80 00 20 */	blr
.endfn reserveSceneChange__Q33ipl5scene4BaseFiPv

# .text:0x3A8 | 0x81409F94 | size: 0x28
# ipl::scene::Base::reserveAllSceneDestruction(int, void*)
.fn reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv, global
/* 81409F94 | 38 E0 00 03 */	li r7, 0x3
/* 81409F98 | 38 00 00 01 */	li r0, 0x1
/* 81409F9C | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 81409FA0 | 90 E3 00 38 */	stw r7, 0x38(r3)
/* 81409FA4 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 81409FA8 | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 81409FAC | 90 83 00 44 */	stw r4, 0x44(r3)
/* 81409FB0 | 90 A3 00 50 */	stw r5, 0x50(r3)
/* 81409FB4 | 80 66 00 64 */	lwz r3, 0x64(r6)
/* 81409FB8 | 48 00 0F 08 */	b setDestructSync__Q33ipl5scene7ManagerFv
.endfn reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv

# .text:0x3D0 | 0x81409FBC | size: 0x8
.fn "@20@__dt__Q33ipl5scene4BaseFv", global
/* 81409FBC | 38 63 FF EC */	subi r3, r3, 0x14
/* 81409FC0 | 4B FF FC A4 */	b __dt__Q33ipl5scene4BaseFv
.endfn "@20@__dt__Q33ipl5scene4BaseFv"

# 0x81658788..0x816587D8 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x81658788 | size: 0x50
# ipl::scene::Base::__vtable
.obj __vt__Q33ipl5scene4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene4BaseFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene4BaseFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene4BaseFv
	.4byte create__Q33ipl5scene4BaseFv
	.4byte calc__Q33ipl5scene4BaseFv
	.4byte draw__Q33ipl5scene4BaseFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene4Base
