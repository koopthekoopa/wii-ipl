.include "macros.inc"
.file "iplCSMaterial.cpp"

# 0x81459C34..0x8145A428 | size: 0x7F4
.text
.balign 4

# .text:0x0 | 0x81459C34 | size: 0xE8
# ipl::cs::material::set_texture(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_texture__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459C34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81459C38 | 7C 08 02 A6 */	mflr r0
/* 81459C3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81459C40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459C44 | 48 19 F8 81 */	bl _savegpr_28
/* 81459C48 | 7C 9C 23 78 */	mr r28, r4
/* 81459C4C | 7C 7D 1B 78 */	mr r29, r3
/* 81459C50 | 3B C0 00 00 */	li r30, 0x0
/* 81459C54 | 38 80 00 00 */	li r4, 0x0
/* 81459C58 | 4B FF 2A 69 */	bl CHANSVmGetArgInteger
/* 81459C5C | 7C 7F 1B 78 */	mr r31, r3
/* 81459C60 | 7F A3 EB 78 */	mr r3, r29
/* 81459C64 | 38 80 00 01 */	li r4, 0x1
/* 81459C68 | 4B FF 2A 29 */	bl CHANSVmGetArg
/* 81459C6C | 7C 7D 1B 78 */	mr r29, r3
/* 81459C70 | 7F 83 E3 78 */	mr r3, r28
/* 81459C74 | 48 00 28 B5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459C7C | 41 82 00 84 */	beq .L_81459D00
/* 81459C80 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81459C84 | 41 82 00 7C */	beq .L_81459D00
/* 81459C88 | 7F A3 EB 78 */	mr r3, r29
/* 81459C8C | 38 8D 98 08 */	li r4, lbl_81697848@sda21
/* 81459C90 | 48 00 28 C9 */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 81459C94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459C98 | 41 82 00 68 */	beq .L_81459D00
/* 81459C9C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81459CA0 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81459CA4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459CA8 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 81459CAC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81459CB0 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81459CB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459CB8 | 41 82 00 48 */	beq .L_81459D00
/* 81459CBC | 80 03 00 50 */	lwz r0, 0x50(r3)
/* 81459CC0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81459CC4 | 54 00 27 3E */	srwi r0, r0, 28
/* 81459CC8 | 7C 04 00 40 */	cmplw r4, r0
/* 81459CCC | 40 80 00 34 */	bge .L_81459D00
/* 81459CD0 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81459CD4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81459CD8 | 40 82 00 14 */	bne .L_81459CEC
/* 81459CDC | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81459CE0 | 48 0C E1 3D */	bl fn_81527E1C
/* 81459CE4 | 3B C0 00 01 */	li r30, 0x1
/* 81459CE8 | 48 00 00 18 */	b .L_81459D00
.L_81459CEC:
/* 81459CEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81459CF0 | 40 82 00 10 */	bne .L_81459D00
/* 81459CF4 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 81459CF8 | 48 0C E0 89 */	bl fn_81527D80
/* 81459CFC | 3B C0 00 01 */	li r30, 0x1
.L_81459D00:
/* 81459D00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459D04 | 7F C3 F3 78 */	mr r3, r30
/* 81459D08 | 48 19 F8 09 */	bl _restgpr_28
/* 81459D0C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81459D10 | 7C 08 03 A6 */	mtlr r0
/* 81459D14 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459D18 | 4E 80 00 20 */	blr
.endfn set_texture__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xE8 | 0x81459D1C | size: 0xF4
# ipl::cs::material::get_tev_color(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_tev_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459D1C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81459D20 | 7C 08 02 A6 */	mflr r0
/* 81459D24 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81459D28 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81459D2C | 48 19 F7 95 */	bl _savegpr_27
/* 81459D30 | 7C 9E 23 78 */	mr r30, r4
/* 81459D34 | 7C 7B 1B 78 */	mr r27, r3
/* 81459D38 | 7C BC 2B 78 */	mr r28, r5
/* 81459D3C | 3B A0 00 00 */	li r29, 0x0
/* 81459D40 | 7F C3 F3 78 */	mr r3, r30
/* 81459D44 | 48 00 27 E5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459D4C | 41 82 00 A8 */	beq .L_81459DF4
/* 81459D50 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 81459D54 | 7F 63 DB 78 */	mr r3, r27
/* 81459D58 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81459D5C | 83 C4 00 00 */	lwz r30, 0x0(r4)
/* 81459D60 | 4B FF 29 25 */	bl CHANSVmGetArgc
/* 81459D64 | 7C 7F 1B 78 */	mr r31, r3
/* 81459D68 | 7F 63 DB 78 */	mr r3, r27
/* 81459D6C | 38 80 00 00 */	li r4, 0x0
/* 81459D70 | 4B FF 29 51 */	bl CHANSVmGetArgInteger
/* 81459D74 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81459D78 | 41 82 00 7C */	beq .L_81459DF4
/* 81459D7C | 28 1F 00 01 */	cmplwi r31, 0x1
/* 81459D80 | 40 82 00 74 */	bne .L_81459DF4
/* 81459D84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459D88 | 41 82 00 6C */	beq .L_81459DF4
/* 81459D8C | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 81459D90 | 38 00 00 03 */	li r0, 0x3
/* 81459D94 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81459D98 | 38 60 00 00 */	li r3, 0x0
/* 81459D9C | 7C 00 28 10 */	subfc r0, r0, r5
/* 81459DA0 | 7C 03 21 10 */	subfe r0, r3, r4
/* 81459DA4 | 7C 05 29 10 */	subfe r0, r5, r5
/* 81459DA8 | 7C 00 00 D1 */	neg. r0, r0
/* 81459DAC | 41 82 00 48 */	beq .L_81459DF4
/* 81459DB0 | 54 A0 18 38 */	slwi r0, r5, 3
/* 81459DB4 | 7F 63 DB 78 */	mr r3, r27
/* 81459DB8 | 7C FE 02 14 */	add r7, r30, r0
/* 81459DBC | 7F 84 E3 78 */	mr r4, r28
/* 81459DC0 | A0 C7 00 24 */	lhz r6, 0x24(r7)
/* 81459DC4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81459DC8 | A0 07 00 26 */	lhz r0, 0x26(r7)
/* 81459DCC | B0 C1 00 08 */	sth r6, 0x8(r1)
/* 81459DD0 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81459DD4 | A0 C7 00 28 */	lhz r6, 0x28(r7)
/* 81459DD8 | A0 07 00 2A */	lhz r0, 0x2a(r7)
/* 81459DDC | B0 C1 00 0C */	sth r6, 0xc(r1)
/* 81459DE0 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 81459DE4 | 48 00 3F 59 */	bl _ctor__Q33ipl2cs9color_s10FP7CHANSVmP13CHANSVmObjHdr11_GXColorS10
/* 81459DE8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81459DEC | 7C 00 00 34 */	cntlzw r0, r0
/* 81459DF0 | 54 1D D9 7E */	srwi r29, r0, 5
.L_81459DF4:
/* 81459DF4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81459DF8 | 7F A3 EB 78 */	mr r3, r29
/* 81459DFC | 48 19 F7 11 */	bl _restgpr_27
/* 81459E00 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81459E04 | 7C 08 03 A6 */	mtlr r0
/* 81459E08 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81459E0C | 4E 80 00 20 */	blr
.endfn get_tev_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x1DC | 0x81459E10 | size: 0x108
# ipl::cs::material::set_tev_color(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_tev_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459E10 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81459E14 | 7C 08 02 A6 */	mflr r0
/* 81459E18 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81459E1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459E20 | 48 19 F6 9D */	bl _savegpr_26
/* 81459E24 | 7C 9B 23 78 */	mr r27, r4
/* 81459E28 | 7C 7A 1B 78 */	mr r26, r3
/* 81459E2C | 7F 63 DB 78 */	mr r3, r27
/* 81459E30 | 3B E0 00 00 */	li r31, 0x0
/* 81459E34 | 48 00 26 F5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459E38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459E3C | 41 82 00 C0 */	beq .L_81459EFC
/* 81459E40 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 81459E44 | 7F 43 D3 78 */	mr r3, r26
/* 81459E48 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81459E4C | 83 84 00 00 */	lwz r28, 0x0(r4)
/* 81459E50 | 4B FF 28 35 */	bl CHANSVmGetArgc
/* 81459E54 | 7C 7D 1B 78 */	mr r29, r3
/* 81459E58 | 7F 43 D3 78 */	mr r3, r26
/* 81459E5C | 38 80 00 00 */	li r4, 0x0
/* 81459E60 | 4B FF 28 61 */	bl CHANSVmGetArgInteger
/* 81459E64 | 7C 7E 1B 78 */	mr r30, r3
/* 81459E68 | 7F 43 D3 78 */	mr r3, r26
/* 81459E6C | 38 80 00 01 */	li r4, 0x1
/* 81459E70 | 4B FF 28 21 */	bl CHANSVmGetArg
/* 81459E74 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81459E78 | 7C 7B 1B 78 */	mr r27, r3
/* 81459E7C | 41 82 00 80 */	beq .L_81459EFC
/* 81459E80 | 28 1D 00 02 */	cmplwi r29, 0x2
/* 81459E84 | 40 82 00 78 */	bne .L_81459EFC
/* 81459E88 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81459E8C | 41 82 00 70 */	beq .L_81459EFC
/* 81459E90 | 3C 80 81 67 */	lis r4, lbl_8166A728@ha
/* 81459E94 | 38 84 A7 28 */	addi r4, r4, lbl_8166A728@l
/* 81459E98 | 48 00 26 C1 */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 81459E9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459EA0 | 41 82 00 5C */	beq .L_81459EFC
/* 81459EA4 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 81459EA8 | 38 00 00 03 */	li r0, 0x3
/* 81459EAC | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 81459EB0 | 38 60 00 00 */	li r3, 0x0
/* 81459EB4 | 7C 00 28 10 */	subfc r0, r0, r5
/* 81459EB8 | 7C 03 21 10 */	subfe r0, r3, r4
/* 81459EBC | 7C 05 29 10 */	subfe r0, r5, r5
/* 81459EC0 | 7C 00 00 D1 */	neg. r0, r0
/* 81459EC4 | 41 82 00 38 */	beq .L_81459EFC
/* 81459EC8 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 81459ECC | 54 A0 18 38 */	slwi r0, r5, 3
/* 81459ED0 | 7C 7C 02 14 */	add r3, r28, r0
/* 81459ED4 | 3B E0 00 01 */	li r31, 0x1
/* 81459ED8 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81459EDC | A8 04 00 00 */	lha r0, 0x0(r4)
/* 81459EE0 | B0 03 00 24 */	sth r0, 0x24(r3)
/* 81459EE4 | A8 04 00 02 */	lha r0, 0x2(r4)
/* 81459EE8 | B0 03 00 26 */	sth r0, 0x26(r3)
/* 81459EEC | A8 04 00 04 */	lha r0, 0x4(r4)
/* 81459EF0 | B0 03 00 28 */	sth r0, 0x28(r3)
/* 81459EF4 | A8 04 00 06 */	lha r0, 0x6(r4)
/* 81459EF8 | B0 03 00 2A */	sth r0, 0x2a(r3)
.L_81459EFC:
/* 81459EFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81459F00 | 7F E3 FB 78 */	mr r3, r31
/* 81459F04 | 48 19 F6 05 */	bl _restgpr_26
/* 81459F08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81459F0C | 7C 08 03 A6 */	mtlr r0
/* 81459F10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81459F14 | 4E 80 00 20 */	blr
.endfn set_tev_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x2E4 | 0x81459F18 | size: 0xE0
# ipl::cs::material::get_tev_kcolor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_tev_kcolor__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81459F18 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81459F1C | 7C 08 02 A6 */	mflr r0
/* 81459F20 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81459F24 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81459F28 | 48 19 F5 99 */	bl _savegpr_27
/* 81459F2C | 7C 9E 23 78 */	mr r30, r4
/* 81459F30 | 7C 7B 1B 78 */	mr r27, r3
/* 81459F34 | 7C BC 2B 78 */	mr r28, r5
/* 81459F38 | 3B A0 00 00 */	li r29, 0x0
/* 81459F3C | 7F C3 F3 78 */	mr r3, r30
/* 81459F40 | 48 00 25 E9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81459F44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459F48 | 41 82 00 94 */	beq .L_81459FDC
/* 81459F4C | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 81459F50 | 7F 63 DB 78 */	mr r3, r27
/* 81459F54 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81459F58 | 83 C4 00 00 */	lwz r30, 0x0(r4)
/* 81459F5C | 4B FF 27 29 */	bl CHANSVmGetArgc
/* 81459F60 | 7C 7F 1B 78 */	mr r31, r3
/* 81459F64 | 7F 63 DB 78 */	mr r3, r27
/* 81459F68 | 38 80 00 00 */	li r4, 0x0
/* 81459F6C | 4B FF 27 55 */	bl CHANSVmGetArgInteger
/* 81459F70 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81459F74 | 41 82 00 68 */	beq .L_81459FDC
/* 81459F78 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 81459F7C | 40 82 00 60 */	bne .L_81459FDC
/* 81459F80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81459F84 | 41 82 00 58 */	beq .L_81459FDC
/* 81459F88 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 81459F8C | 38 00 00 04 */	li r0, 0x4
/* 81459F90 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81459F94 | 38 60 00 00 */	li r3, 0x0
/* 81459F98 | 7C 00 28 10 */	subfc r0, r0, r5
/* 81459F9C | 7C 03 21 10 */	subfe r0, r3, r4
/* 81459FA0 | 7C 05 29 10 */	subfe r0, r5, r5
/* 81459FA4 | 7C 00 00 D1 */	neg. r0, r0
/* 81459FA8 | 41 82 00 34 */	beq .L_81459FDC
/* 81459FAC | 7F C4 F3 78 */	mr r4, r30
/* 81459FB0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81459FB4 | 48 00 00 45 */	bl GetTevKColor__Q34nw4r3lyt8MaterialCFUl
/* 81459FB8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81459FBC | 7F 63 DB 78 */	mr r3, r27
/* 81459FC0 | 7F 84 E3 78 */	mr r4, r28
/* 81459FC4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81459FC8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81459FCC | 48 00 37 4D */	bl _ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrQ34nw4r2ut5Color
/* 81459FD0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81459FD4 | 7C 00 00 34 */	cntlzw r0, r0
/* 81459FD8 | 54 1D D9 7E */	srwi r29, r0, 5
.L_81459FDC:
/* 81459FDC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81459FE0 | 7F A3 EB 78 */	mr r3, r29
/* 81459FE4 | 48 19 F5 29 */	bl _restgpr_27
/* 81459FE8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81459FEC | 7C 08 03 A6 */	mtlr r0
/* 81459FF0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81459FF4 | 4E 80 00 20 */	blr
.endfn get_tev_kcolor__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x3C4 | 0x81459FF8 | size: 0x2C
# nw4r::lyt::Material::GetTevKColor(unsigned long) const
.fn GetTevKColor__Q34nw4r3lyt8MaterialCFUl, weak
/* 81459FF8 | 54 A0 10 3A */	slwi r0, r5, 2
/* 81459FFC | 7C E4 02 14 */	add r7, r4, r0
/* 8145A000 | 88 C7 00 3C */	lbz r6, 0x3c(r7)
/* 8145A004 | 88 A7 00 3D */	lbz r5, 0x3d(r7)
/* 8145A008 | 88 87 00 3E */	lbz r4, 0x3e(r7)
/* 8145A00C | 88 07 00 3F */	lbz r0, 0x3f(r7)
/* 8145A010 | 98 C3 00 00 */	stb r6, 0x0(r3)
/* 8145A014 | 98 A3 00 01 */	stb r5, 0x1(r3)
/* 8145A018 | 98 83 00 02 */	stb r4, 0x2(r3)
/* 8145A01C | 98 03 00 03 */	stb r0, 0x3(r3)
/* 8145A020 | 4E 80 00 20 */	blr
.endfn GetTevKColor__Q34nw4r3lyt8MaterialCFUl

# .text:0x3F0 | 0x8145A024 | size: 0x10C
# ipl::cs::material::set_tev_kcolor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_tev_kcolor__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145A024 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145A028 | 7C 08 02 A6 */	mflr r0
/* 8145A02C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145A030 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145A034 | 48 19 F4 89 */	bl _savegpr_26
/* 8145A038 | 7C 9B 23 78 */	mr r27, r4
/* 8145A03C | 7C 7A 1B 78 */	mr r26, r3
/* 8145A040 | 7F 63 DB 78 */	mr r3, r27
/* 8145A044 | 3B 80 00 00 */	li r28, 0x0
/* 8145A048 | 48 00 24 E1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145A04C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A050 | 41 82 00 C4 */	beq .L_8145A114
/* 8145A054 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8145A058 | 7F 43 D3 78 */	mr r3, r26
/* 8145A05C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145A060 | 83 A4 00 00 */	lwz r29, 0x0(r4)
/* 8145A064 | 4B FF 26 21 */	bl CHANSVmGetArgc
/* 8145A068 | 7C 7E 1B 78 */	mr r30, r3
/* 8145A06C | 7F 43 D3 78 */	mr r3, r26
/* 8145A070 | 38 80 00 00 */	li r4, 0x0
/* 8145A074 | 4B FF 26 4D */	bl CHANSVmGetArgInteger
/* 8145A078 | 7C 7F 1B 78 */	mr r31, r3
/* 8145A07C | 7F 43 D3 78 */	mr r3, r26
/* 8145A080 | 38 80 00 01 */	li r4, 0x1
/* 8145A084 | 4B FF 26 0D */	bl CHANSVmGetArg
/* 8145A088 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145A08C | 7C 7B 1B 78 */	mr r27, r3
/* 8145A090 | 41 82 00 84 */	beq .L_8145A114
/* 8145A094 | 28 1E 00 02 */	cmplwi r30, 0x2
/* 8145A098 | 40 82 00 7C */	bne .L_8145A114
/* 8145A09C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145A0A0 | 41 82 00 74 */	beq .L_8145A114
/* 8145A0A4 | 38 8D 98 10 */	li r4, lbl_81697850@sda21
/* 8145A0A8 | 48 00 24 B1 */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 8145A0AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A0B0 | 41 82 00 64 */	beq .L_8145A114
/* 8145A0B4 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 8145A0B8 | 38 00 00 04 */	li r0, 0x4
/* 8145A0BC | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8145A0C0 | 38 60 00 00 */	li r3, 0x0
/* 8145A0C4 | 7C 00 28 10 */	subfc r0, r0, r5
/* 8145A0C8 | 7C 03 21 10 */	subfe r0, r3, r4
/* 8145A0CC | 7C 05 29 10 */	subfe r0, r5, r5
/* 8145A0D0 | 7C 00 00 D1 */	neg. r0, r0
/* 8145A0D4 | 41 82 00 40 */	beq .L_8145A114
/* 8145A0D8 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8145A0DC | 7F A3 EB 78 */	mr r3, r29
/* 8145A0E0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8145A0E4 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145A0E8 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8145A0EC | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8145A0F0 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 8145A0F4 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8145A0F8 | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 8145A0FC | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8145A100 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 8145A104 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8145A108 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8145A10C | 48 00 00 25 */	bl SetTevKColor__Q34nw4r3lyt8MaterialFUlQ34nw4r2ut5Color
/* 8145A110 | 3B 80 00 01 */	li r28, 0x1
.L_8145A114:
/* 8145A114 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145A118 | 7F 83 E3 78 */	mr r3, r28
/* 8145A11C | 48 19 F3 ED */	bl _restgpr_26
/* 8145A120 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145A124 | 7C 08 03 A6 */	mtlr r0
/* 8145A128 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145A12C | 4E 80 00 20 */	blr
.endfn set_tev_kcolor__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4FC | 0x8145A130 | size: 0x18
# nw4r::lyt::Material::SetTevKColor(unsigned long, nw4r::ut::Color)
.fn SetTevKColor__Q34nw4r3lyt8MaterialFUlQ34nw4r2ut5Color, weak
/* 8145A130 | 7C 80 23 78 */	mr r0, r4
/* 8145A134 | 7C A4 2B 78 */	mr r4, r5
/* 8145A138 | 54 00 10 3A */	slwi r0, r0, 2
/* 8145A13C | 7C 63 02 14 */	add r3, r3, r0
/* 8145A140 | 38 63 00 3C */	addi r3, r3, 0x3c
/* 8145A144 | 4B EE 45 94 */	b __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
.endfn SetTevKColor__Q34nw4r3lyt8MaterialFUlQ34nw4r2ut5Color

# .text:0x514 | 0x8145A148 | size: 0x9C
# ipl::cs::material::get_mat_color(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_mat_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145A148 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145A14C | 7C 08 02 A6 */	mflr r0
/* 8145A150 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145A154 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145A158 | 48 19 F3 6D */	bl _savegpr_28
/* 8145A15C | 7C 9D 23 78 */	mr r29, r4
/* 8145A160 | 7C 7C 1B 78 */	mr r28, r3
/* 8145A164 | 7C BE 2B 78 */	mr r30, r5
/* 8145A168 | 3B E0 00 00 */	li r31, 0x0
/* 8145A16C | 7F A3 EB 78 */	mr r3, r29
/* 8145A170 | 48 00 23 B9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145A174 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A178 | 41 82 00 50 */	beq .L_8145A1C8
/* 8145A17C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145A180 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145A184 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8145A188 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145A18C | 41 82 00 3C */	beq .L_8145A1C8
/* 8145A190 | 80 04 00 4C */	lwz r0, 0x4c(r4)
/* 8145A194 | 54 00 CF FF */	extrwi. r0, r0, 1, 24
/* 8145A198 | 41 82 00 30 */	beq .L_8145A1C8
/* 8145A19C | 38 61 00 0C */	addi r3, r1, 0xc
/* 8145A1A0 | 48 00 00 45 */	bl GetMatColor__Q34nw4r3lyt8MaterialCFv
/* 8145A1A4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8145A1A8 | 7F 83 E3 78 */	mr r3, r28
/* 8145A1AC | 7F C4 F3 78 */	mr r4, r30
/* 8145A1B0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8145A1B4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8145A1B8 | 48 00 35 61 */	bl _ctor__Q33ipl2cs5colorFP7CHANSVmP13CHANSVmObjHdrQ34nw4r2ut5Color
/* 8145A1BC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8145A1C0 | 7C 00 00 34 */	cntlzw r0, r0
/* 8145A1C4 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145A1C8:
/* 8145A1C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145A1CC | 7F E3 FB 78 */	mr r3, r31
/* 8145A1D0 | 48 19 F3 41 */	bl _restgpr_28
/* 8145A1D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145A1D8 | 7C 08 03 A6 */	mtlr r0
/* 8145A1DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145A1E0 | 4E 80 00 20 */	blr
.endfn get_mat_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x5B0 | 0x8145A1E4 | size: 0x50
# nw4r::lyt::Material::GetMatColor() const
.fn GetMatColor__Q34nw4r3lyt8MaterialCFv, weak
/* 8145A1E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145A1E8 | 7C 08 02 A6 */	mflr r0
/* 8145A1EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145A1F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145A1F4 | 7C 7F 1B 78 */	mr r31, r3
/* 8145A1F8 | 7C 83 23 78 */	mr r3, r4
/* 8145A1FC | 48 0C D8 95 */	bl fn_81527A90
/* 8145A200 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8145A204 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 8145A208 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8145A20C | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 8145A210 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 8145A214 | 98 1F 00 02 */	stb r0, 0x2(r31)
/* 8145A218 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 8145A21C | 98 1F 00 03 */	stb r0, 0x3(r31)
/* 8145A220 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145A224 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145A228 | 7C 08 03 A6 */	mtlr r0
/* 8145A22C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145A230 | 4E 80 00 20 */	blr
.endfn GetMatColor__Q34nw4r3lyt8MaterialCFv

# .text:0x600 | 0x8145A234 | size: 0xD8
# ipl::cs::material::set_mat_color(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_mat_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145A234 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145A238 | 7C 08 02 A6 */	mflr r0
/* 8145A23C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145A240 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145A244 | 48 19 F2 7D */	bl _savegpr_27
/* 8145A248 | 7C 9C 23 78 */	mr r28, r4
/* 8145A24C | 7C 7B 1B 78 */	mr r27, r3
/* 8145A250 | 7F 83 E3 78 */	mr r3, r28
/* 8145A254 | 3B A0 00 00 */	li r29, 0x0
/* 8145A258 | 48 00 22 D1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145A25C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A260 | 41 82 00 90 */	beq .L_8145A2F0
/* 8145A264 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8145A268 | 7F 63 DB 78 */	mr r3, r27
/* 8145A26C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145A270 | 83 C4 00 00 */	lwz r30, 0x0(r4)
/* 8145A274 | 4B FF 24 11 */	bl CHANSVmGetArgc
/* 8145A278 | 7C 7F 1B 78 */	mr r31, r3
/* 8145A27C | 7F 63 DB 78 */	mr r3, r27
/* 8145A280 | 38 80 00 00 */	li r4, 0x0
/* 8145A284 | 4B FF 24 0D */	bl CHANSVmGetArg
/* 8145A288 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145A28C | 7C 7C 1B 78 */	mr r28, r3
/* 8145A290 | 41 82 00 60 */	beq .L_8145A2F0
/* 8145A294 | 80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 8145A298 | 54 00 CF FF */	extrwi. r0, r0, 1, 24
/* 8145A29C | 41 82 00 54 */	beq .L_8145A2F0
/* 8145A2A0 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 8145A2A4 | 40 82 00 4C */	bne .L_8145A2F0
/* 8145A2A8 | 38 8D 98 10 */	li r4, lbl_81697850@sda21
/* 8145A2AC | 48 00 22 AD */	bl is_valid_class__Q33ipl2cs4utilFPC13CHANSVmObjHdrPCc
/* 8145A2B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A2B4 | 41 82 00 3C */	beq .L_8145A2F0
/* 8145A2B8 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8145A2BC | 7F C3 F3 78 */	mr r3, r30
/* 8145A2C0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8145A2C4 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145A2C8 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 8145A2CC | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8145A2D0 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 8145A2D4 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8145A2D8 | 88 05 00 02 */	lbz r0, 0x2(r5)
/* 8145A2DC | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8145A2E0 | 88 05 00 03 */	lbz r0, 0x3(r5)
/* 8145A2E4 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8145A2E8 | 48 00 00 25 */	bl SetMatColor__Q34nw4r3lyt8MaterialFQ34nw4r2ut5Color
/* 8145A2EC | 3B A0 00 01 */	li r29, 0x1
.L_8145A2F0:
/* 8145A2F0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145A2F4 | 7F A3 EB 78 */	mr r3, r29
/* 8145A2F8 | 48 19 F2 15 */	bl _restgpr_27
/* 8145A2FC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145A300 | 7C 08 03 A6 */	mtlr r0
/* 8145A304 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145A308 | 4E 80 00 20 */	blr
.endfn set_mat_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x6D8 | 0x8145A30C | size: 0x34
# nw4r::lyt::Material::SetMatColor(nw4r::ut::Color)
.fn SetMatColor__Q34nw4r3lyt8MaterialFQ34nw4r2ut5Color, weak
/* 8145A30C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145A310 | 7C 08 02 A6 */	mflr r0
/* 8145A314 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145A318 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145A31C | 7C 9F 23 78 */	mr r31, r4
/* 8145A320 | 48 0C D7 A1 */	bl fn_81527AC0
/* 8145A324 | 7F E4 FB 78 */	mr r4, r31
/* 8145A328 | 4B EE 43 B1 */	bl __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8
/* 8145A32C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145A330 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145A334 | 7C 08 03 A6 */	mtlr r0
/* 8145A338 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145A33C | 4E 80 00 20 */	blr
.endfn SetMatColor__Q34nw4r3lyt8MaterialFQ34nw4r2ut5Color

# .text:0x70C | 0x8145A340 | size: 0x7C
# ipl::cs::material::_ctor(CHANSVm*, CHANSVmObjHdr*, unsigned long)
.fn _ctor__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrUl, global
/* 8145A340 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145A344 | 7C 08 02 A6 */	mflr r0
/* 8145A348 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145A34C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145A350 | 48 19 F1 75 */	bl _savegpr_28
/* 8145A354 | 7C BE 2B 78 */	mr r30, r5
/* 8145A358 | 7C 7C 1B 78 */	mr r28, r3
/* 8145A35C | 7C 9D 23 78 */	mr r29, r4
/* 8145A360 | 3B E0 00 00 */	li r31, 0x0
/* 8145A364 | 38 A0 00 04 */	li r5, 0x4
/* 8145A368 | 4B FF 08 ED */	bl CHANSVmNewObjData
/* 8145A36C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A370 | 41 82 00 30 */	beq .L_8145A3A0
/* 8145A374 | 93 C3 00 00 */	stw r30, 0x0(r3)
/* 8145A378 | 38 00 00 08 */	li r0, 0x8
/* 8145A37C | 3C 80 81 67 */	lis r4, lbl_8166A733@ha
/* 8145A380 | 7F 83 E3 78 */	mr r3, r28
/* 8145A384 | 98 1D 00 08 */	stb r0, 0x8(r29)
/* 8145A388 | 38 84 A7 33 */	addi r4, r4, lbl_8166A733@l
/* 8145A38C | 4B FF 23 E9 */	bl CHANSVmFindNativeClass
/* 8145A390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A394 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 8145A398 | 41 82 00 08 */	beq .L_8145A3A0
/* 8145A39C | 3B E0 00 01 */	li r31, 0x1
.L_8145A3A0:
/* 8145A3A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145A3A4 | 7F E3 FB 78 */	mr r3, r31
/* 8145A3A8 | 48 19 F1 69 */	bl _restgpr_28
/* 8145A3AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145A3B0 | 7C 08 03 A6 */	mtlr r0
/* 8145A3B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145A3B8 | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrUl

# .text:0x788 | 0x8145A3BC | size: 0x6C
# ipl::cs::material::init(CHANSVm*)
.fn init__Q33ipl2cs8materialFP7CHANSVm, global
/* 8145A3BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145A3C0 | 7C 08 02 A6 */	mflr r0
/* 8145A3C4 | 3C 80 81 67 */	lis r4, lbl_8166A733@ha
/* 8145A3C8 | 38 A0 00 00 */	li r5, 0x0
/* 8145A3CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145A3D0 | 38 84 A7 33 */	addi r4, r4, lbl_8166A733@l
/* 8145A3D4 | 38 C0 00 00 */	li r6, 0x0
/* 8145A3D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145A3DC | 7C 7F 1B 78 */	mr r31, r3
/* 8145A3E0 | 4B FF 24 F5 */	bl CHANSVmAddNativeClass
/* 8145A3E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A3E8 | 7C 64 1B 78 */	mr r4, r3
/* 8145A3EC | 40 82 00 0C */	bne .L_8145A3F8
/* 8145A3F0 | 38 60 00 00 */	li r3, 0x0
/* 8145A3F4 | 48 00 00 20 */	b .L_8145A414
.L_8145A3F8:
/* 8145A3F8 | 3C A0 81 61 */	lis r5, lbl_816174E0@ha
/* 8145A3FC | 7F E3 FB 78 */	mr r3, r31
/* 8145A400 | 38 C0 00 07 */	li r6, 0x7
/* 8145A404 | 38 A5 74 E0 */	addi r5, r5, lbl_816174E0@l
/* 8145A408 | 4B FF 26 69 */	bl CHANSVmAddNativeMethodList
/* 8145A40C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145A410 | 54 03 D9 7E */	srwi r3, r0, 5
.L_8145A414:
/* 8145A414 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145A418 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145A41C | 7C 08 03 A6 */	mtlr r0
/* 8145A420 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145A424 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs8materialFP7CHANSVm

# 0x816174E0..0x81617518 | size: 0x38
.rodata
.balign 8

# .rodata:0x0 | 0x816174E0 | size: 0x38
.obj lbl_816174E0, global
	.4byte lbl_8166A73C
	.4byte set_texture__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A747
	.4byte get_tev_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A753
	.4byte set_tev_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A75F
	.4byte get_tev_kcolor__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A76C
	.4byte set_tev_kcolor__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A779
	.4byte get_mat_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A785
	.4byte set_mat_color__Q33ipl2cs8materialFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
.endobj lbl_816174E0

# 0x8166A728..0x8166A798 | size: 0x70
.data
.balign 8

# .data:0x0 | 0x8166A728 | size: 0xB
.obj lbl_8166A728, global
	.string "GXColorS10"
.endobj lbl_8166A728

# .data:0xB | 0x8166A733 | size: 0x9
.obj lbl_8166A733, global
	.string "Material"
.endobj lbl_8166A733

# .data:0x14 | 0x8166A73C | size: 0xB
.obj lbl_8166A73C, global
	.string "SetTexture"
.endobj lbl_8166A73C

# .data:0x1F | 0x8166A747 | size: 0xC
.obj lbl_8166A747, global
	.string "GetTevColor"
.endobj lbl_8166A747

# .data:0x2B | 0x8166A753 | size: 0xC
.obj lbl_8166A753, global
	.string "SetTevColor"
.endobj lbl_8166A753

# .data:0x37 | 0x8166A75F | size: 0xD
.obj lbl_8166A75F, global
	.string "GetTevKColor"
.endobj lbl_8166A75F

# .data:0x44 | 0x8166A76C | size: 0xD
.obj lbl_8166A76C, global
	.string "SetTevKColor"
.endobj lbl_8166A76C

# .data:0x51 | 0x8166A779 | size: 0xC
.obj lbl_8166A779, global
	.string "GetMatColor"
.endobj lbl_8166A779

# .data:0x5D | 0x8166A785 | size: 0x13
.obj lbl_8166A785, global
	.4byte 0x5365744D
	.4byte 0x6174436F
	.4byte 0x6C6F7200
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj lbl_8166A785

# 0x81697848..0x81697858 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697848 | size: 0x8
.obj lbl_81697848, global
	.string "Texture"
.endobj lbl_81697848

# .sdata:0x8 | 0x81697850 | size: 0x8
.obj lbl_81697850, global
	.4byte 0x436F6C6F
	.4byte 0x72000000
.endobj lbl_81697850
