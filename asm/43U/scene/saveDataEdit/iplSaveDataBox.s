.include "macros.inc"
.file "iplSaveDataBox.cpp"

# 0x813C7C70..0x813C8484 | size: 0x814
.text
.balign 4

# .text:0x0 | 0x813C7C70 | size: 0x27C
# ipl::scene::SavedataBox::SavedataBox(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl5scene11SavedataBoxFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 813C7C70 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813C7C74 | 7C 08 02 A6 */	mflr r0
/* 813C7C78 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813C7C7C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C7C80 | 48 23 18 39 */	bl _savegpr_25
/* 813C7C84 | 3D 00 81 65 */	lis r8, __vt__Q33ipl5scene13AnmController@ha
/* 813C7C88 | 3B C0 00 00 */	li r30, 0x0
/* 813C7C8C | 39 08 D0 F8 */	addi r8, r8, __vt__Q33ipl5scene13AnmController@l
/* 813C7C90 | 3F A0 81 65 */	lis r29, lbl_816516E0@ha
/* 813C7C94 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 813C7C98 | 7C 7F 1B 78 */	mr r31, r3
/* 813C7C9C | 7C 99 23 78 */	mr r25, r4
/* 813C7CA0 | 7C BA 2B 78 */	mr r26, r5
/* 813C7CA4 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 813C7CA8 | 7C DB 33 78 */	mr r27, r6
/* 813C7CAC | 7C FC 3B 78 */	mr r28, r7
/* 813C7CB0 | 3B BD 16 E0 */	addi r29, r29, lbl_816516E0@l
/* 813C7CB4 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 813C7CB8 | 38 80 00 04 */	li r4, 0x4
/* 813C7CBC | 38 63 00 0C */	addi r3, r3, 0xc
/* 813C7CC0 | 48 14 A3 9D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C7CC4 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 813C7CC8 | 38 80 00 00 */	li r4, 0x0
/* 813C7CCC | 48 14 A3 91 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C7CD0 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene11SavedataBox@ha
/* 813C7CD4 | 93 DF 00 30 */	stw r30, 0x30(r31)
/* 813C7CD8 | 38 63 17 98 */	addi r3, r3, __vt__Q33ipl5scene11SavedataBox@l
/* 813C7CDC | 7F 24 CB 78 */	mr r4, r25
/* 813C7CE0 | 38 03 00 0C */	addi r0, r3, 0xc
/* 813C7CE4 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 813C7CE8 | 38 60 05 80 */	li r3, 0x580
/* 813C7CEC | 38 A0 00 04 */	li r5, 0x4
/* 813C7CF0 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813C7CF4 | 93 DF 00 3C */	stw r30, 0x3c(r31)
/* 813C7CF8 | 93 DF 00 40 */	stw r30, 0x40(r31)
/* 813C7CFC | 93 DF 00 44 */	stw r30, 0x44(r31)
/* 813C7D00 | 9B DF 00 48 */	stb r30, 0x48(r31)
/* 813C7D04 | 48 23 03 AD */	bl __nw__FUlPQ23EGG4Heapi
/* 813C7D08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7D0C | 41 82 00 18 */	beq .L_813C7D24
/* 813C7D10 | 7F 24 CB 78 */	mr r4, r25
/* 813C7D14 | 7F 45 D3 78 */	mr r5, r26
/* 813C7D18 | 7F 66 DB 78 */	mr r6, r27
/* 813C7D1C | 7F 87 E3 78 */	mr r7, r28
/* 813C7D20 | 4B FA 23 05 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813C7D24:
/* 813C7D24 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 813C7D28 | 7F E3 FB 78 */	mr r3, r31
/* 813C7D2C | 38 9D 00 00 */	addi r4, r29, 0x0
/* 813C7D30 | 38 AD 8B E0 */	li r5, lbl_81696C20@sda21
/* 813C7D34 | 4B FD F3 61 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7D38 | 7F E3 FB 78 */	mr r3, r31
/* 813C7D3C | 38 9D 00 22 */	addi r4, r29, 0x22
/* 813C7D40 | 38 AD 8B E0 */	li r5, lbl_81696C20@sda21
/* 813C7D44 | 4B FD F3 51 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7D48 | 7F E3 FB 78 */	mr r3, r31
/* 813C7D4C | 38 9D 00 45 */	addi r4, r29, 0x45
/* 813C7D50 | 38 AD 8B E0 */	li r5, lbl_81696C20@sda21
/* 813C7D54 | 4B FD F3 41 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7D58 | 7F E3 FB 78 */	mr r3, r31
/* 813C7D5C | 38 9D 00 6D */	addi r4, r29, 0x6d
/* 813C7D60 | 38 AD 8B E0 */	li r5, lbl_81696C20@sda21
/* 813C7D64 | 4B FD F3 31 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7D68 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813C7D6C | 4B FA 28 C9 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813C7D70 | 7F E3 FB 78 */	mr r3, r31
/* 813C7D74 | 38 9D 00 96 */	addi r4, r29, 0x96
/* 813C7D78 | 38 A0 00 00 */	li r5, 0x0
/* 813C7D7C | 4B FD F7 59 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C7D80 | 7F E3 FB 78 */	mr r3, r31
/* 813C7D84 | 38 9D 00 A0 */	addi r4, r29, 0xa0
/* 813C7D88 | 38 A0 00 00 */	li r5, 0x0
/* 813C7D8C | 4B FD F7 49 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C7D90 | 38 60 00 34 */	li r3, 0x34
/* 813C7D94 | 48 23 03 09 */	bl __nw__FUl
/* 813C7D98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7D9C | 7C 7E 1B 78 */	mr r30, r3
/* 813C7DA0 | 41 82 00 98 */	beq .L_813C7E38
/* 813C7DA4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C7DA8 | 7F E6 FB 78 */	mr r6, r31
/* 813C7DAC | 41 82 00 08 */	beq .L_813C7DB4
/* 813C7DB0 | 38 DF 00 28 */	addi r6, r31, 0x28
.L_813C7DB4:
/* 813C7DB4 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 813C7DB8 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813C7DBC | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813C7DC0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813C7DC4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C7DC8 | 38 00 00 00 */	li r0, 0x0
/* 813C7DCC | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813C7DD0 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813C7DD4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813C7DD8 | 41 82 00 1C */	beq .L_813C7DF4
/* 813C7DDC | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813C7DE0 | 7C C3 33 78 */	mr r3, r6
/* 813C7DE4 | 7F C4 F3 78 */	mr r4, r30
/* 813C7DE8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C7DEC | 7D 89 03 A6 */	mtctr r12
/* 813C7DF0 | 4E 80 04 21 */	bctrl
.L_813C7DF4:
/* 813C7DF4 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 813C7DF8 | 38 80 00 08 */	li r4, 0x8
/* 813C7DFC | 48 14 A2 61 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C7E00 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813C7E04 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813C7E08 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813C7E0C | 38 80 00 08 */	li r4, 0x8
/* 813C7E10 | 90 BE 00 00 */	stw r5, 0x0(r30)
/* 813C7E14 | 93 9E 00 24 */	stw r28, 0x24(r30)
/* 813C7E18 | 48 14 A2 45 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C7E1C | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813C7E20 | 38 60 00 00 */	li r3, 0x0
/* 813C7E24 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813C7E28 | 38 00 00 01 */	li r0, 0x1
/* 813C7E2C | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 813C7E30 | 90 7E 00 2C */	stw r3, 0x2c(r30)
/* 813C7E34 | 98 1E 00 30 */	stb r0, 0x30(r30)
.L_813C7E38:
/* 813C7E38 | 93 DF 00 08 */	stw r30, 0x8(r31)
/* 813C7E3C | 7F C3 F3 78 */	mr r3, r30
/* 813C7E40 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 813C7E44 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813C7E48 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813C7E4C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813C7E50 | 7D 89 03 A6 */	mtctr r12
/* 813C7E54 | 4E 80 04 21 */	bctrl
/* 813C7E58 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813C7E5C | 38 80 00 00 */	li r4, 0x0
/* 813C7E60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7E64 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813C7E68 | 7D 89 03 A6 */	mtctr r12
/* 813C7E6C | 4E 80 04 21 */	bctrl
/* 813C7E70 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813C7E74 | 38 9D 00 AE */	addi r4, r29, 0xae
/* 813C7E78 | 38 A0 00 01 */	li r5, 0x1
/* 813C7E7C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C7E80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7E84 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C7E88 | 7D 89 03 A6 */	mtctr r12
/* 813C7E8C | 4E 80 04 21 */	bctrl
/* 813C7E90 | 7C 64 1B 78 */	mr r4, r3
/* 813C7E94 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813C7E98 | 38 A0 00 01 */	li r5, 0x1
/* 813C7E9C | 4B FA 33 31 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813C7EA0 | 7F E3 FB 78 */	mr r3, r31
/* 813C7EA4 | 38 80 00 03 */	li r4, 0x3
/* 813C7EA8 | 4B FD F3 39 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C7EAC | 7C 7E 1B 78 */	mr r30, r3
/* 813C7EB0 | 7F E3 FB 78 */	mr r3, r31
/* 813C7EB4 | 38 80 00 02 */	li r4, 0x2
/* 813C7EB8 | 4B FD F3 29 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C7EBC | 7C 65 1B 78 */	mr r5, r3
/* 813C7EC0 | 7F E3 FB 78 */	mr r3, r31
/* 813C7EC4 | 7F C6 F3 78 */	mr r6, r30
/* 813C7EC8 | 38 9D 00 AE */	addi r4, r29, 0xae
/* 813C7ECC | 4B FD F3 21 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813C7ED0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C7ED4 | 7F E3 FB 78 */	mr r3, r31
/* 813C7ED8 | 48 23 16 2D */	bl _restgpr_25
/* 813C7EDC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813C7EE0 | 7C 08 03 A6 */	mtlr r0
/* 813C7EE4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813C7EE8 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene11SavedataBoxFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x27C | 0x813C7EEC | size: 0xB4
# ipl::scene::SavedataBox::~SavedataBox()
.fn __dt__Q33ipl5scene11SavedataBoxFv, global
/* 813C7EEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C7EF0 | 7C 08 02 A6 */	mflr r0
/* 813C7EF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7EF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C7EFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C7F00 | 7C 9F 23 78 */	mr r31, r4
/* 813C7F04 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C7F08 | 7C 7E 1B 78 */	mr r30, r3
/* 813C7F0C | 41 82 00 78 */	beq .L_813C7F84
/* 813C7F10 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813C7F14 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene11SavedataBox@ha
/* 813C7F18 | 38 84 17 98 */	addi r4, r4, __vt__Q33ipl5scene11SavedataBox@l
/* 813C7F1C | 38 04 00 0C */	addi r0, r4, 0xc
/* 813C7F20 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813C7F24 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C7F28 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813C7F2C | 41 82 00 1C */	beq .L_813C7F48
/* 813C7F30 | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 813C7F34 | 7C A3 2B 78 */	mr r3, r5
/* 813C7F38 | 38 80 00 01 */	li r4, 0x1
/* 813C7F3C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813C7F40 | 7D 89 03 A6 */	mtctr r12
/* 813C7F44 | 4E 80 04 21 */	bctrl
.L_813C7F48:
/* 813C7F48 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C7F4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7F50 | 41 82 00 18 */	beq .L_813C7F68
/* 813C7F54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7F58 | 38 80 00 01 */	li r4, 0x1
/* 813C7F5C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813C7F60 | 7D 89 03 A6 */	mtctr r12
/* 813C7F64 | 4E 80 04 21 */	bctrl
.L_813C7F68:
/* 813C7F68 | 7F C3 F3 78 */	mr r3, r30
/* 813C7F6C | 38 80 00 00 */	li r4, 0x0
/* 813C7F70 | 4B FD BE 69 */	bl __dt__Q33ipl5scene13AnmControllerFv
/* 813C7F74 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C7F78 | 40 81 00 0C */	ble .L_813C7F84
/* 813C7F7C | 7F C3 F3 78 */	mr r3, r30
/* 813C7F80 | 48 23 01 65 */	bl __dl__FPv
.L_813C7F84:
/* 813C7F84 | 7F C3 F3 78 */	mr r3, r30
/* 813C7F88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7F8C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C7F90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7F94 | 7C 08 03 A6 */	mtlr r0
/* 813C7F98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C7F9C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene11SavedataBoxFv

# .text:0x330 | 0x813C7FA0 | size: 0x174
# ipl::scene::SavedataBox::calc()
.fn calc__Q33ipl5scene11SavedataBoxFv, global
/* 813C7FA0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813C7FA4 | 7C 08 02 A6 */	mflr r0
/* 813C7FA8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813C7FAC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813C7FB0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 813C7FB4 | 7C 7E 1B 78 */	mr r30, r3
/* 813C7FB8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C7FBC | 4B FA 27 49 */	bl calc__Q33ipl6layout6ObjectFv
/* 813C7FC0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C7FC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7FC8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813C7FCC | 7D 89 03 A6 */	mtctr r12
/* 813C7FD0 | 4E 80 04 21 */	bctrl
/* 813C7FD4 | 3B E0 00 00 */	li r31, 0x0
/* 813C7FD8 | 48 00 00 0C */	b .L_813C7FE4
.L_813C7FDC:
/* 813C7FDC | 7F E3 FB 78 */	mr r3, r31
/* 813C7FE0 | 4B FD EF 25 */	bl calc__Q33ipl5scene7AnmPaneFv
.L_813C7FE4:
/* 813C7FE4 | 7F E4 FB 78 */	mr r4, r31
/* 813C7FE8 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813C7FEC | 48 14 A2 F1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C7FF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7FF4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C7FF8 | 40 82 FF E4 */	bne .L_813C7FDC
/* 813C7FFC | 80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 813C8000 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C8004 | 41 82 00 88 */	beq .L_813C808C
/* 813C8008 | 80 1E 00 40 */	lwz r0, 0x40(r30)
/* 813C800C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C8010 | 41 82 00 7C */	beq .L_813C808C
/* 813C8014 | 3F E0 81 65 */	lis r31, lbl_81651780@ha
/* 813C8018 | 7F C3 F3 78 */	mr r3, r30
/* 813C801C | 38 9F 17 80 */	addi r4, r31, lbl_81651780@l
/* 813C8020 | 38 A0 00 01 */	li r5, 0x1
/* 813C8024 | 4B FD F4 B1 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8028 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813C802C | 3C 83 00 01 */	addis r4, r3, 0x1
/* 813C8030 | 88 04 F1 AC */	lbz r0, -0xe54(r4)
/* 813C8034 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C8038 | 40 82 00 24 */	bne .L_813C805C
/* 813C803C | 48 00 1B 61 */	bl loadIconTexture__Q33ipl5scene17WiiBannerFileInfoFv
/* 813C8040 | 7C 65 1B 78 */	mr r5, r3
/* 813C8044 | 7F C3 F3 78 */	mr r3, r30
/* 813C8048 | 38 9F 17 80 */	addi r4, r31, lbl_81651780@l
/* 813C804C | 4B FD F4 15 */	bl set_texture__Q33ipl5scene13AnmControllerFPCcRC9_GXTexObj
/* 813C8050 | 80 7E 00 40 */	lwz r3, 0x40(r30)
/* 813C8054 | 48 00 1A 19 */	bl update__Q33ipl5scene17WiiBannerFileInfoFv
/* 813C8058 | 48 00 00 48 */	b .L_813C80A0
.L_813C805C:
/* 813C805C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C8060 | 38 80 00 0D */	li r4, 0xd
/* 813C8064 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C8068 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C806C | 48 04 30 CD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C8070 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C8074 | 4B FF D6 39 */	bl getCorruptIconTexture__Q33ipl5scene6MemoryCFP9_GXTexObj
/* 813C8078 | 7F C3 F3 78 */	mr r3, r30
/* 813C807C | 38 9F 17 80 */	addi r4, r31, lbl_81651780@l
/* 813C8080 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813C8084 | 4B FD F3 DD */	bl set_texture__Q33ipl5scene13AnmControllerFPCcRC9_GXTexObj
/* 813C8088 | 48 00 00 18 */	b .L_813C80A0
.L_813C808C:
/* 813C808C | 3C 80 81 65 */	lis r4, lbl_81651780@ha
/* 813C8090 | 7F C3 F3 78 */	mr r3, r30
/* 813C8094 | 38 84 17 80 */	addi r4, r4, lbl_81651780@l
/* 813C8098 | 38 A0 00 00 */	li r5, 0x0
/* 813C809C | 4B FD F4 39 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
.L_813C80A0:
/* 813C80A0 | 80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 813C80A4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C80A8 | 41 82 00 18 */	beq .L_813C80C0
/* 813C80AC | 40 80 00 08 */	bge .L_813C80B4
/* 813C80B0 | 48 00 00 4C */	b .L_813C80FC
.L_813C80B4:
/* 813C80B4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813C80B8 | 40 80 00 44 */	bge .L_813C80FC
/* 813C80BC | 48 00 00 24 */	b .L_813C80E0
.L_813C80C0:
/* 813C80C0 | 7F C3 F3 78 */	mr r3, r30
/* 813C80C4 | 38 80 00 00 */	li r4, 0x0
/* 813C80C8 | 4B FD F0 DD */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C80CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C80D0 | 40 82 00 2C */	bne .L_813C80FC
/* 813C80D4 | 38 00 00 00 */	li r0, 0x0
/* 813C80D8 | 90 1E 00 3C */	stw r0, 0x3c(r30)
/* 813C80DC | 48 00 00 20 */	b .L_813C80FC
.L_813C80E0:
/* 813C80E0 | 7F C3 F3 78 */	mr r3, r30
/* 813C80E4 | 38 80 00 01 */	li r4, 0x1
/* 813C80E8 | 4B FD F0 BD */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C80EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C80F0 | 40 82 00 0C */	bne .L_813C80FC
/* 813C80F4 | 38 00 00 00 */	li r0, 0x0
/* 813C80F8 | 90 1E 00 3C */	stw r0, 0x3c(r30)
.L_813C80FC:
/* 813C80FC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813C8100 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813C8104 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 813C8108 | 7C 08 03 A6 */	mtlr r0
/* 813C810C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813C8110 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene11SavedataBoxFv

# .text:0x4A4 | 0x813C8114 | size: 0x8
# ipl::scene::SavedataBox::draw()
.fn draw__Q33ipl5scene11SavedataBoxFv, global
/* 813C8114 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C8118 | 4B FA 26 84 */	b draw__Q33ipl6layout6ObjectFv
.endfn draw__Q33ipl5scene11SavedataBoxFv

# .text:0x4AC | 0x813C811C | size: 0x8
# ipl::scene::SavedataBox::update()
.fn update__Q33ipl5scene11SavedataBoxFv, global
/* 813C811C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C8120 | 4B FA 2E 6C */	b update__Q33ipl3gui11PaneManagerFv
.endfn update__Q33ipl5scene11SavedataBoxFv

# .text:0x4B4 | 0x813C8124 | size: 0x54
# ipl::scene::SavedataBox::anmFadein()
.fn anmFadein__Q33ipl5scene11SavedataBoxFv, global
/* 813C8124 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C8128 | 7C 08 02 A6 */	mflr r0
/* 813C812C | 3C 80 81 65 */	lis r4, lbl_81651776@ha
/* 813C8130 | 38 A0 00 01 */	li r5, 0x1
/* 813C8134 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C8138 | 38 84 17 76 */	addi r4, r4, lbl_81651776@l
/* 813C813C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C8140 | 7C 7F 1B 78 */	mr r31, r3
/* 813C8144 | 4B FD F3 91 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C8148 | 7F E3 FB 78 */	mr r3, r31
/* 813C814C | 38 80 00 00 */	li r4, 0x0
/* 813C8150 | 38 A0 00 00 */	li r5, 0x0
/* 813C8154 | 38 C0 00 01 */	li r6, 0x1
/* 813C8158 | 4B FD EF A9 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C815C | 38 00 00 01 */	li r0, 0x1
/* 813C8160 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813C8164 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C8168 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C816C | 7C 08 03 A6 */	mtlr r0
/* 813C8170 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C8174 | 4E 80 00 20 */	blr
.endfn anmFadein__Q33ipl5scene11SavedataBoxFv

# .text:0x508 | 0x813C8178 | size: 0x58
# ipl::scene::SavedataBox::anmFadeout()
.fn anmFadeout__Q33ipl5scene11SavedataBoxFv, global
/* 813C8178 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C817C | 7C 08 02 A6 */	mflr r0
/* 813C8180 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C8184 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C8188 | 7C 7F 1B 78 */	mr r31, r3
/* 813C818C | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 813C8190 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C8194 | 41 82 00 0C */	beq .L_813C81A0
/* 813C8198 | 7C 03 03 78 */	mr r3, r0
/* 813C819C | 48 00 94 CD */	bl terminate__Q33ipl5scene11TextBalloonFv
.L_813C81A0:
/* 813C81A0 | 7F E3 FB 78 */	mr r3, r31
/* 813C81A4 | 38 80 00 01 */	li r4, 0x1
/* 813C81A8 | 38 A0 00 00 */	li r5, 0x0
/* 813C81AC | 38 C0 00 01 */	li r6, 0x1
/* 813C81B0 | 4B FD EF 51 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C81B4 | 38 00 00 02 */	li r0, 0x2
/* 813C81B8 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 813C81BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C81C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C81C4 | 7C 08 03 A6 */	mtlr r0
/* 813C81C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C81CC | 4E 80 00 20 */	blr
.endfn anmFadeout__Q33ipl5scene11SavedataBoxFv

# .text:0x560 | 0x813C81D0 | size: 0x260
# ipl::scene::SavedataBox::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene11SavedataBoxFUlUlPv, global
/* 813C81D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C81D4 | 7C 08 02 A6 */	mflr r0
/* 813C81D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C81DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C81E0 | 48 23 12 E5 */	bl _savegpr_28
/* 813C81E4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C81E8 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813C81EC | 7C BC 2B 78 */	mr r28, r5
/* 813C81F0 | 7C DD 33 78 */	mr r29, r6
/* 813C81F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C81F8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813C81FC | 7D 89 03 A6 */	mtctr r12
/* 813C8200 | 4E 80 04 21 */	bctrl
/* 813C8204 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C8208 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813C820C | 7D 89 03 A6 */	mtctr r12
/* 813C8210 | 4E 80 04 21 */	bctrl
/* 813C8214 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 813C8218 | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813C821C | 41 82 01 34 */	beq .L_813C8350
/* 813C8220 | 40 80 00 14 */	bge .L_813C8234
/* 813C8224 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813C8228 | 41 82 01 90 */	beq .L_813C83B8
/* 813C822C | 40 80 00 14 */	bge .L_813C8240
/* 813C8230 | 48 00 01 E8 */	b .L_813C8418
.L_813C8234:
/* 813C8234 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813C8238 | 40 80 01 E0 */	bge .L_813C8418
/* 813C823C | 48 00 00 9C */	b .L_813C82D8
.L_813C8240:
/* 813C8240 | 7F E3 FB 78 */	mr r3, r31
/* 813C8244 | 7F C4 F3 78 */	mr r4, r30
/* 813C8248 | 4B FD F0 29 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C824C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8250 | 7C 7E 1B 78 */	mr r30, r3
/* 813C8254 | 41 82 01 C4 */	beq .L_813C8418
/* 813C8258 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 813C825C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813C8260 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813C8264 | 38 80 00 0D */	li r4, 0xd
/* 813C8268 | 38 06 00 01 */	addi r0, r6, 0x1
/* 813C826C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813C8270 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813C8274 | 48 04 2E C5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C8278 | 7F C4 F3 78 */	mr r4, r30
/* 813C827C | 4B FF CD D1 */	bl onPoint__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane
/* 813C8280 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813C8284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8288 | 41 82 01 90 */	beq .L_813C8418
/* 813C828C | 80 BF 00 40 */	lwz r5, 0x40(r31)
/* 813C8290 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813C8294 | 41 82 01 84 */	beq .L_813C8418
/* 813C8298 | 3C 85 00 01 */	addis r4, r5, 0x1
/* 813C829C | 88 04 F1 AC */	lbz r0, -0xe54(r4)
/* 813C82A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C82A4 | 40 82 00 14 */	bne .L_813C82B8
/* 813C82A8 | 38 85 00 10 */	addi r4, r5, 0x10
/* 813C82AC | 38 A0 00 00 */	li r5, 0x0
/* 813C82B0 | 48 00 93 51 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813C82B4 | 48 00 00 10 */	b .L_813C82C4
.L_813C82B8:
/* 813C82B8 | 38 8D 8B E8 */	li r4, lbl_81696C28@sda21
/* 813C82BC | 38 A0 00 00 */	li r5, 0x0
/* 813C82C0 | 48 00 93 41 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
.L_813C82C4:
/* 813C82C4 | 38 00 00 01 */	li r0, 0x1
/* 813C82C8 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813C82CC | 98 1F 00 48 */	stb r0, 0x48(r31)
/* 813C82D0 | 48 00 94 49 */	bl fadein__Q33ipl5scene11TextBalloonFv
/* 813C82D4 | 48 00 01 44 */	b .L_813C8418
.L_813C82D8:
/* 813C82D8 | 7F E3 FB 78 */	mr r3, r31
/* 813C82DC | 7F C4 F3 78 */	mr r4, r30
/* 813C82E0 | 4B FD EF 91 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C82E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C82E8 | 41 82 01 30 */	beq .L_813C8418
/* 813C82EC | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813C82F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C82F4 | 41 82 01 24 */	beq .L_813C8418
/* 813C82F8 | 80 BF 00 40 */	lwz r5, 0x40(r31)
/* 813C82FC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813C8300 | 41 82 01 18 */	beq .L_813C8418
/* 813C8304 | 88 1F 00 48 */	lbz r0, 0x48(r31)
/* 813C8308 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C830C | 40 82 01 0C */	bne .L_813C8418
/* 813C8310 | 3C 85 00 01 */	addis r4, r5, 0x1
/* 813C8314 | 88 04 F1 AC */	lbz r0, -0xe54(r4)
/* 813C8318 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C831C | 40 82 00 14 */	bne .L_813C8330
/* 813C8320 | 38 85 00 10 */	addi r4, r5, 0x10
/* 813C8324 | 38 A0 00 00 */	li r5, 0x0
/* 813C8328 | 48 00 92 D9 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813C832C | 48 00 00 10 */	b .L_813C833C
.L_813C8330:
/* 813C8330 | 38 8D 8B E8 */	li r4, lbl_81696C28@sda21
/* 813C8334 | 38 A0 00 00 */	li r5, 0x0
/* 813C8338 | 48 00 92 C9 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
.L_813C833C:
/* 813C833C | 38 00 00 01 */	li r0, 0x1
/* 813C8340 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813C8344 | 98 1F 00 48 */	stb r0, 0x48(r31)
/* 813C8348 | 48 00 93 D1 */	bl fadein__Q33ipl5scene11TextBalloonFv
/* 813C834C | 48 00 00 CC */	b .L_813C8418
.L_813C8350:
/* 813C8350 | 7F E3 FB 78 */	mr r3, r31
/* 813C8354 | 7F C4 F3 78 */	mr r4, r30
/* 813C8358 | 4B FD EF 19 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C835C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8360 | 7C 7E 1B 78 */	mr r30, r3
/* 813C8364 | 41 82 00 B4 */	beq .L_813C8418
/* 813C8368 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 813C836C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813C8370 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813C8374 | 38 80 00 0D */	li r4, 0xd
/* 813C8378 | 38 06 FF FF */	subi r0, r6, 0x1
/* 813C837C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813C8380 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813C8384 | 48 04 2D B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C8388 | 7F C4 F3 78 */	mr r4, r30
/* 813C838C | 4B FF CD 81 */	bl onLeft__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane
/* 813C8390 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813C8394 | 38 00 00 00 */	li r0, 0x0
/* 813C8398 | 98 1F 00 48 */	stb r0, 0x48(r31)
/* 813C839C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C83A0 | 41 82 00 78 */	beq .L_813C8418
/* 813C83A4 | 80 1F 00 40 */	lwz r0, 0x40(r31)
/* 813C83A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C83AC | 41 82 00 6C */	beq .L_813C8418
/* 813C83B0 | 48 00 95 A5 */	bl fadeout__Q33ipl5scene11TextBalloonFv
/* 813C83B4 | 48 00 00 64 */	b .L_813C8418
.L_813C83B8:
/* 813C83B8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813C83BC | 3C 80 00 10 */	lis r4, 0x10
/* 813C83C0 | 7F A3 EB 78 */	mr r3, r29
/* 813C83C4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C83C8 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813C83CC | 7D 89 03 A6 */	mtctr r12
/* 813C83D0 | 4E 80 04 21 */	bctrl
/* 813C83D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C83D8 | 41 82 00 40 */	beq .L_813C8418
/* 813C83DC | 7F E3 FB 78 */	mr r3, r31
/* 813C83E0 | 7F C4 F3 78 */	mr r4, r30
/* 813C83E4 | 4B FD EE 8D */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C83E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C83EC | 41 82 00 2C */	beq .L_813C8418
/* 813C83F0 | 80 1F 00 40 */	lwz r0, 0x40(r31)
/* 813C83F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C83F8 | 41 82 00 20 */	beq .L_813C8418
/* 813C83FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C8400 | 38 80 00 0D */	li r4, 0xd
/* 813C8404 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C8408 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C840C | 48 04 2D 2D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C8410 | 7F E4 FB 78 */	mr r4, r31
/* 813C8414 | 4B FF D0 1D */	bl onTrig__Q33ipl5scene6MemoryFPQ33ipl5scene11SavedataBox
.L_813C8418:
/* 813C8418 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C841C | 48 23 10 F5 */	bl _restgpr_28
/* 813C8420 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C8424 | 7C 08 03 A6 */	mtlr r0
/* 813C8428 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C842C | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene11SavedataBoxFUlUlPv

# .text:0x7C0 | 0x813C8430 | size: 0x4C
# ipl::scene::SavedataBox::clearEvent()
.fn clearEvent__Q33ipl5scene11SavedataBoxFv, global
/* 813C8430 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C8434 | 7C 08 02 A6 */	mflr r0
/* 813C8438 | 3C 80 81 65 */	lis r4, lbl_8165178E@ha
/* 813C843C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C8440 | 38 84 17 8E */	addi r4, r4, lbl_8165178E@l
/* 813C8444 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C8448 | 7C 7F 1B 78 */	mr r31, r3
/* 813C844C | 4B FD EE A5 */	bl clear_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C8450 | 80 7F 00 44 */	lwz r3, 0x44(r31)
/* 813C8454 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C8458 | 41 82 00 10 */	beq .L_813C8468
/* 813C845C | 48 00 92 0D */	bl terminate__Q33ipl5scene11TextBalloonFv
/* 813C8460 | 38 00 00 00 */	li r0, 0x0
/* 813C8464 | 98 1F 00 48 */	stb r0, 0x48(r31)
.L_813C8468:
/* 813C8468 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C846C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C8470 | 7C 08 03 A6 */	mtlr r0
/* 813C8474 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C8478 | 4E 80 00 20 */	blr
.endfn clearEvent__Q33ipl5scene11SavedataBoxFv

# .text:0x80C | 0x813C847C | size: 0x8
# ipl::scene::SavedataBox::@40@onEvent(unsigned long, unsigned long, void*)
.fn "@40@onEvent__Q33ipl5scene11SavedataBoxFUlUlPv", global
/* 813C847C | 38 63 FF D8 */	subi r3, r3, 0x28
/* 813C8480 | 4B FF FD 50 */	b onEvent__Q33ipl5scene11SavedataBoxFUlUlPv
.endfn "@40@onEvent__Q33ipl5scene11SavedataBoxFUlUlPv"

# 0x816516E0..0x81651860 | size: 0x180
.data
.balign 8

# .data:0x0 | 0x816516E0 | size: 0x96
.obj lbl_816516E0, global
	.4byte 0x69745F4F
	.4byte 0x626A4375
	.4byte 0x62654564
	.4byte 0x69745F62
	.4byte 0x5F536176
	.4byte 0x65446174
	.4byte 0x61496E2E
	.4byte 0x62726C61
	.4byte 0x6E006974
	.4byte 0x5F4F626A
	.4byte 0x43756265
	.4byte 0x45646974
	.4byte 0x5F625F53
	.4byte 0x61766544
	.4byte 0x6174614F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x75626545
	.4byte 0x6469745F
	.4byte 0x625F5361
	.4byte 0x76654461
	.4byte 0x7461466F
	.4byte 0x75637573
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x75626545
	.4byte 0x6469745F
	.4byte 0x625F5361
	.4byte 0x76654461
	.4byte 0x7461466F
	.4byte 0x75637573
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.2byte 0x6E00
.endobj lbl_816516E0

# .data:0x96 | 0x81651776 | size: 0xA
.obj lbl_81651776, global
	.string "N_Data_00"
.endobj lbl_81651776

# .data:0xA0 | 0x81651780 | size: 0xE
.obj lbl_81651780, global
	.string "DataBanner_00"
.endobj lbl_81651780

# .data:0xAE | 0x8165178E | size: 0xA
.obj lbl_8165178E, global
	.string "B_Data_00"
.endobj lbl_8165178E

# .data:0xB8 | 0x81651798 | size: 0xC8
# ipl::scene::SavedataBox::__vtable
.obj __vt__Q33ipl5scene11SavedataBox, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene11SavedataBoxFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@40@onEvent__Q33ipl5scene11SavedataBoxFUlUlPv"
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEvent__Q33ipl5scene11SavedataBoxFUlUlPv
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
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene11SavedataBox

# 0x81696C20..0x81696C30 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696C20 | size: 0x8
.obj lbl_81696C20, global
	.string "G_Data\000"
.endobj lbl_81696C20

# .sdata:0x8 | 0x81696C28 | size: 0x8
.obj lbl_81696C28, global
	.string16 "???"
.endobj lbl_81696C28
