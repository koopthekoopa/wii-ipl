.include "macros.inc"
.file "pf_str.c"

# 0x814B5BFC..0x814B6130 | size: 0x534
.text
.balign 4

# .text:0x0 | 0x814B5BFC | size: 0x8
.fn VFiPFSTR_SetCodeMode, global
/* 814B5BFC | 90 83 00 08 */	stw r4, 0x8(r3)
/* 814B5C00 | 4E 80 00 20 */	blr
.endfn VFiPFSTR_SetCodeMode

# .text:0x8 | 0x814B5C04 | size: 0x8
.fn VFiPFSTR_GetCodeMode, global
/* 814B5C04 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814B5C08 | 4E 80 00 20 */	blr
.endfn VFiPFSTR_GetCodeMode

# .text:0x10 | 0x814B5C0C | size: 0x18
.fn VFiPFSTR_GetStrPos, global
/* 814B5C0C | 28 04 00 01 */	cmplwi r4, 0x1
/* 814B5C10 | 40 82 00 0C */	bne .L_814B5C1C
/* 814B5C14 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814B5C18 | 4E 80 00 20 */	blr
.L_814B5C1C:
/* 814B5C1C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814B5C20 | 4E 80 00 20 */	blr
.endfn VFiPFSTR_GetStrPos

# .text:0x28 | 0x814B5C24 | size: 0xE0
.fn VFiPFSTR_MoveStrPos, global
/* 814B5C24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B5C28 | 7C 08 02 A6 */	mflr r0
/* 814B5C2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B5C30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814B5C34 | 48 14 38 89 */	bl _savegpr_26
/* 814B5C38 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814B5C3C | 7C 7A 1B 78 */	mr r26, r3
/* 814B5C40 | 7C 9B 23 78 */	mr r27, r4
/* 814B5C44 | 3B 80 00 00 */	li r28, 0x0
/* 814B5C48 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B5C4C | 40 82 00 50 */	bne .L_814B5C9C
/* 814B5C50 | 3F E0 81 0D */	lis r31, VFipf_vol_set_810CD7F0@ha
/* 814B5C54 | 83 A3 00 00 */	lwz r29, 0x0(r3)
/* 814B5C58 | 3B FF D7 F0 */	addi r31, r31, VFipf_vol_set_810CD7F0@l
/* 814B5C5C | 48 00 00 34 */	b .L_814B5C90
.L_814B5C60:
/* 814B5C60 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 814B5C64 | 38 80 00 01 */	li r4, 0x1
/* 814B5C68 | 81 9F 00 30 */	lwz r12, 0x30(r31)
/* 814B5C6C | 7C 03 07 74 */	extsb r3, r0
/* 814B5C70 | 7D 89 03 A6 */	mtctr r12
/* 814B5C74 | 4E 80 04 21 */	bctrl
/* 814B5C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B5C7C | 41 82 00 0C */	beq .L_814B5C88
/* 814B5C80 | 38 1C 00 01 */	addi r0, r28, 0x1
/* 814B5C84 | 7C 1C 07 34 */	extsh r28, r0
.L_814B5C88:
/* 814B5C88 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814B5C8C | 3B 7B FF FF */	subi r27, r27, 0x1
.L_814B5C90:
/* 814B5C90 | 7F 60 07 35 */	extsh. r0, r27
/* 814B5C94 | 40 82 FF CC */	bne .L_814B5C60
/* 814B5C98 | 48 00 00 44 */	b .L_814B5CDC
.L_814B5C9C:
/* 814B5C9C | 3F E0 81 0D */	lis r31, VFipf_vol_set_810CD7F0@ha
/* 814B5CA0 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 814B5CA4 | 3B FF D7 F0 */	addi r31, r31, VFipf_vol_set_810CD7F0@l
/* 814B5CA8 | 3B A0 00 00 */	li r29, 0x0
/* 814B5CAC | 48 00 00 24 */	b .L_814B5CD0
.L_814B5CB0:
/* 814B5CB0 | 81 9F 00 34 */	lwz r12, 0x34(r31)
/* 814B5CB4 | 7F C3 F3 78 */	mr r3, r30
/* 814B5CB8 | 7D 89 03 A6 */	mtctr r12
/* 814B5CBC | 4E 80 04 21 */	bctrl
/* 814B5CC0 | 7C 60 07 34 */	extsh r0, r3
/* 814B5CC4 | 7F DE 1A 14 */	add r30, r30, r3
/* 814B5CC8 | 7F 9C 02 14 */	add r28, r28, r0
/* 814B5CCC | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814B5CD0:
/* 814B5CD0 | 7F A0 07 34 */	extsh r0, r29
/* 814B5CD4 | 7C 00 D8 00 */	cmpw r0, r27
/* 814B5CD8 | 41 80 FF D8 */	blt .L_814B5CB0
.L_814B5CDC:
/* 814B5CDC | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 814B5CE0 | 7F 80 07 34 */	extsh r0, r28
/* 814B5CE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814B5CE8 | 7C 03 02 14 */	add r0, r3, r0
/* 814B5CEC | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814B5CF0 | 48 14 38 19 */	bl _restgpr_26
/* 814B5CF4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B5CF8 | 7C 08 03 A6 */	mtlr r0
/* 814B5CFC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B5D00 | 4E 80 00 20 */	blr
.endfn VFiPFSTR_MoveStrPos

# .text:0x108 | 0x814B5D04 | size: 0xAC
.fn VFiPFSTR_InitStr, global
/* 814B5D04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B5D08 | 7C 08 02 A6 */	mflr r0
/* 814B5D0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B5D10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B5D14 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B5D18 | 7C BF 2B 78 */	mr r31, r5
/* 814B5D1C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B5D20 | 7C 9E 23 78 */	mr r30, r4
/* 814B5D24 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B5D28 | 7C 7D 1B 78 */	mr r29, r3
/* 814B5D2C | 41 82 00 0C */	beq .L_814B5D38
/* 814B5D30 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B5D34 | 40 82 00 0C */	bne .L_814B5D40
.L_814B5D38:
/* 814B5D38 | 38 60 00 0A */	li r3, 0xa
/* 814B5D3C | 48 00 00 58 */	b .L_814B5D94
.L_814B5D40:
/* 814B5D40 | 28 05 00 01 */	cmplwi r5, 0x1
/* 814B5D44 | 40 82 00 1C */	bne .L_814B5D60
/* 814B5D48 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814B5D4C | 7F C3 F3 78 */	mr r3, r30
/* 814B5D50 | 4B FF FC B1 */	bl VFipf_strlen
/* 814B5D54 | 7C 1E 1A 14 */	add r0, r30, r3
/* 814B5D58 | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 814B5D5C | 48 00 00 30 */	b .L_814B5D8C
.L_814B5D60:
/* 814B5D60 | 28 05 00 02 */	cmplwi r5, 0x2
/* 814B5D64 | 40 82 00 20 */	bne .L_814B5D84
/* 814B5D68 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814B5D6C | 7F C3 F3 78 */	mr r3, r30
/* 814B5D70 | 48 00 03 C1 */	bl VFipf_w_strlen
/* 814B5D74 | 54 60 08 3C */	slwi r0, r3, 1
/* 814B5D78 | 7C 1E 02 14 */	add r0, r30, r0
/* 814B5D7C | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 814B5D80 | 48 00 00 0C */	b .L_814B5D8C
.L_814B5D84:
/* 814B5D84 | 38 60 00 0A */	li r3, 0xa
/* 814B5D88 | 48 00 00 0C */	b .L_814B5D94
.L_814B5D8C:
/* 814B5D8C | 93 FD 00 08 */	stw r31, 0x8(r29)
/* 814B5D90 | 38 60 00 00 */	li r3, 0x0
.L_814B5D94:
/* 814B5D94 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B5D98 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B5D9C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B5DA0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B5DA4 | 7C 08 03 A6 */	mtlr r0
/* 814B5DA8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B5DAC | 4E 80 00 20 */	blr
.endfn VFiPFSTR_InitStr

# .text:0x1B4 | 0x814B5DB0 | size: 0x14
.fn VFiPFSTR_StrLen, global
/* 814B5DB0 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814B5DB4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814B5DB8 | 7C 04 00 50 */	subf r0, r4, r0
/* 814B5DBC | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814B5DC0 | 4E 80 00 20 */	blr
.endfn VFiPFSTR_StrLen

# .text:0x1C8 | 0x814B5DC4 | size: 0xE0
.fn VFiPFSTR_StrNumChar, global
/* 814B5DC4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B5DC8 | 7C 08 02 A6 */	mflr r0
/* 814B5DCC | 28 04 00 01 */	cmplwi r4, 0x1
/* 814B5DD0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B5DD4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B5DD8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B5DDC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B5DE0 | 40 82 00 0C */	bne .L_814B5DEC
/* 814B5DE4 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 814B5DE8 | 48 00 00 08 */	b .L_814B5DF0
.L_814B5DEC:
/* 814B5DEC | 83 C3 00 04 */	lwz r30, 0x4(r3)
.L_814B5DF0:
/* 814B5DF0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814B5DF4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B5DF8 | 40 82 00 4C */	bne .L_814B5E44
/* 814B5DFC | 3F E0 81 0D */	lis r31, VFipf_vol_set_810CD7F0@ha
/* 814B5E00 | 3B A0 00 00 */	li r29, 0x0
/* 814B5E04 | 3B FF D7 F0 */	addi r31, r31, VFipf_vol_set_810CD7F0@l
/* 814B5E08 | 48 00 00 2C */	b .L_814B5E34
.L_814B5E0C:
/* 814B5E0C | 81 9F 00 30 */	lwz r12, 0x30(r31)
/* 814B5E10 | 7C 63 07 74 */	extsb r3, r3
/* 814B5E14 | 38 80 00 01 */	li r4, 0x1
/* 814B5E18 | 7D 89 03 A6 */	mtctr r12
/* 814B5E1C | 4E 80 04 21 */	bctrl
/* 814B5E20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B5E24 | 41 82 00 08 */	beq .L_814B5E2C
/* 814B5E28 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814B5E2C:
/* 814B5E2C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814B5E30 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814B5E34:
/* 814B5E34 | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 814B5E38 | 7C 60 07 75 */	extsb. r0, r3
/* 814B5E3C | 40 82 FF D0 */	bne .L_814B5E0C
/* 814B5E40 | 48 00 00 44 */	b .L_814B5E84
.L_814B5E44:
/* 814B5E44 | 3F E0 81 0D */	lis r31, VFipf_vol_set_810CD7F0@ha
/* 814B5E48 | 3B A0 00 00 */	li r29, 0x0
/* 814B5E4C | 3B FF D7 F0 */	addi r31, r31, VFipf_vol_set_810CD7F0@l
/* 814B5E50 | 48 00 00 1C */	b .L_814B5E6C
.L_814B5E54:
/* 814B5E54 | 81 9F 00 34 */	lwz r12, 0x34(r31)
/* 814B5E58 | 7F C3 F3 78 */	mr r3, r30
/* 814B5E5C | 7D 89 03 A6 */	mtctr r12
/* 814B5E60 | 4E 80 04 21 */	bctrl
/* 814B5E64 | 7F DE 1A 14 */	add r30, r30, r3
/* 814B5E68 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814B5E6C:
/* 814B5E6C | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814B5E70 | 7C 00 07 75 */	extsb. r0, r0
/* 814B5E74 | 40 82 FF E0 */	bne .L_814B5E54
/* 814B5E78 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 814B5E7C | 7C 00 07 75 */	extsb. r0, r0
/* 814B5E80 | 40 82 FF D4 */	bne .L_814B5E54
.L_814B5E84:
/* 814B5E84 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B5E88 | 7F A3 EB 78 */	mr r3, r29
/* 814B5E8C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B5E90 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B5E94 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B5E98 | 7C 08 03 A6 */	mtlr r0
/* 814B5E9C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B5EA0 | 4E 80 00 20 */	blr
.endfn VFiPFSTR_StrNumChar

# .text:0x2A8 | 0x814B5EA4 | size: 0xA4
.fn VFiPFSTR_StrCmp, global
/* 814B5EA4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B5EA8 | 7C 08 02 A6 */	mflr r0
/* 814B5EAC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B5EB0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814B5EB4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B5EB8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B5EBC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B5EC0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B5EC4 | 7C 9D 23 78 */	mr r29, r4
/* 814B5EC8 | 40 82 00 10 */	bne .L_814B5ED8
/* 814B5ECC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814B5ED0 | 4B FF FB 75 */	bl VFipf_strcmp
/* 814B5ED4 | 48 00 00 58 */	b .L_814B5F2C
.L_814B5ED8:
/* 814B5ED8 | 3F E0 81 0D */	lis r31, VFipf_vol_set_810CD7F0@ha
/* 814B5EDC | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 814B5EE0 | 3B FF D7 F0 */	addi r31, r31, VFipf_vol_set_810CD7F0@l
.L_814B5EE4:
/* 814B5EE4 | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 814B5EE8 | 7F A3 EB 78 */	mr r3, r29
/* 814B5EEC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B5EF0 | 7D 89 03 A6 */	mtctr r12
/* 814B5EF4 | 4E 80 04 21 */	bctrl
/* 814B5EF8 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814B5EFC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814B5F00 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 814B5F04 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 814B5F08 | 7C 00 18 40 */	cmplw r0, r3
/* 814B5F0C | 40 82 00 18 */	bne .L_814B5F24
/* 814B5F10 | A0 1E FF FE */	lhz r0, -0x2(r30)
/* 814B5F14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B5F18 | 41 82 00 0C */	beq .L_814B5F24
/* 814B5F1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B5F20 | 40 82 FF C4 */	bne .L_814B5EE4
.L_814B5F24:
/* 814B5F24 | A0 1E FF FE */	lhz r0, -0x2(r30)
/* 814B5F28 | 7C 63 00 50 */	subf r3, r3, r0
.L_814B5F2C:
/* 814B5F2C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B5F30 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B5F34 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B5F38 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B5F3C | 7C 08 03 A6 */	mtlr r0
/* 814B5F40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B5F44 | 4E 80 00 20 */	blr
.endfn VFiPFSTR_StrCmp

# .text:0x34C | 0x814B5F48 | size: 0xFC
.fn VFiPFSTR_StrNCmp, global
/* 814B5F48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B5F4C | 7C 08 02 A6 */	mflr r0
/* 814B5F50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B5F54 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B5F58 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B5F5C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B5F60 | 7C FD 3B 78 */	mr r29, r7
/* 814B5F64 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814B5F68 | 7C 9C 23 78 */	mr r28, r4
/* 814B5F6C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814B5F70 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B5F74 | 40 82 00 30 */	bne .L_814B5FA4
/* 814B5F78 | 28 05 00 01 */	cmplwi r5, 0x1
/* 814B5F7C | 40 82 00 10 */	bne .L_814B5F8C
/* 814B5F80 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814B5F84 | 7C 60 32 14 */	add r3, r0, r6
/* 814B5F88 | 48 00 00 0C */	b .L_814B5F94
.L_814B5F8C:
/* 814B5F8C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814B5F90 | 7C 60 32 14 */	add r3, r0, r6
.L_814B5F94:
/* 814B5F94 | 7F 84 E3 78 */	mr r4, r28
/* 814B5F98 | 7F A5 EB 78 */	mr r5, r29
/* 814B5F9C | 4B FF FA E1 */	bl VFipf_strncmp
/* 814B5FA0 | 48 00 00 84 */	b .L_814B6024
.L_814B5FA4:
/* 814B5FA4 | 28 05 00 01 */	cmplwi r5, 0x1
/* 814B5FA8 | 40 82 00 14 */	bne .L_814B5FBC
/* 814B5FAC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814B5FB0 | 54 C0 08 3C */	slwi r0, r6, 1
/* 814B5FB4 | 7F C3 02 14 */	add r30, r3, r0
/* 814B5FB8 | 48 00 00 10 */	b .L_814B5FC8
.L_814B5FBC:
/* 814B5FBC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814B5FC0 | 54 C0 08 3C */	slwi r0, r6, 1
/* 814B5FC4 | 7F C3 02 14 */	add r30, r3, r0
.L_814B5FC8:
/* 814B5FC8 | 3F E0 81 0D */	lis r31, VFipf_vol_set_810CD7F0@ha
/* 814B5FCC | 3B FF D7 F0 */	addi r31, r31, VFipf_vol_set_810CD7F0@l
.L_814B5FD0:
/* 814B5FD0 | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 814B5FD4 | 7F 83 E3 78 */	mr r3, r28
/* 814B5FD8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B5FDC | 7D 89 03 A6 */	mtctr r12
/* 814B5FE0 | 4E 80 04 21 */	bctrl
/* 814B5FE4 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814B5FE8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814B5FEC | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 814B5FF0 | 3B BD FF FF */	subi r29, r29, 0x1
/* 814B5FF4 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 814B5FF8 | 7C 00 18 40 */	cmplw r0, r3
/* 814B5FFC | 40 82 00 20 */	bne .L_814B601C
/* 814B6000 | 57 A0 04 3F */	clrlwi. r0, r29, 16
/* 814B6004 | 41 82 00 18 */	beq .L_814B601C
/* 814B6008 | A0 1E FF FE */	lhz r0, -0x2(r30)
/* 814B600C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B6010 | 41 82 00 0C */	beq .L_814B601C
/* 814B6014 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6018 | 40 82 FF B8 */	bne .L_814B5FD0
.L_814B601C:
/* 814B601C | A0 1E FF FE */	lhz r0, -0x2(r30)
/* 814B6020 | 7C 63 00 50 */	subf r3, r3, r0
.L_814B6024:
/* 814B6024 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B6028 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B602C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B6030 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B6034 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814B6038 | 7C 08 03 A6 */	mtlr r0
/* 814B603C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B6040 | 4E 80 00 20 */	blr
.endfn VFiPFSTR_StrNCmp

# .text:0x448 | 0x814B6044 | size: 0xEC
.fn VFiPFSTR_ToUpperNStr, global
/* 814B6044 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B6048 | 7C 08 02 A6 */	mflr r0
/* 814B604C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B6050 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B6054 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B6058 | 7C BE 2B 78 */	mr r30, r5
/* 814B605C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B6060 | 7C 9D 23 78 */	mr r29, r4
/* 814B6064 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814B6068 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B606C | 40 82 00 3C */	bne .L_814B60A8
/* 814B6070 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 814B6074 | 48 00 00 1C */	b .L_814B6090
.L_814B6078:
/* 814B6078 | 7C 63 07 74 */	extsb r3, r3
/* 814B607C | 4B FF F7 4D */	bl VFipf_toupper
/* 814B6080 | 98 7E 00 00 */	stb r3, 0x0(r30)
/* 814B6084 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814B6088 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814B608C | 3B BD FF FF */	subi r29, r29, 0x1
.L_814B6090:
/* 814B6090 | 57 A0 04 3F */	clrlwi. r0, r29, 16
/* 814B6094 | 41 82 00 78 */	beq .L_814B610C
/* 814B6098 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 814B609C | 7C 60 07 75 */	extsb. r0, r3
/* 814B60A0 | 40 82 FF D8 */	bne .L_814B6078
/* 814B60A4 | 48 00 00 68 */	b .L_814B610C
.L_814B60A8:
/* 814B60A8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814B60AC | 48 00 00 40 */	b .L_814B60EC
.L_814B60B0:
/* 814B60B0 | 28 03 00 61 */	cmplwi r3, 0x61
/* 814B60B4 | 38 00 00 00 */	li r0, 0x0
/* 814B60B8 | 41 80 00 10 */	blt .L_814B60C8
/* 814B60BC | 28 03 00 7A */	cmplwi r3, 0x7a
/* 814B60C0 | 41 81 00 08 */	bgt .L_814B60C8
/* 814B60C4 | 38 00 00 01 */	li r0, 0x1
.L_814B60C8:
/* 814B60C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B60CC | 41 82 00 08 */	beq .L_814B60D4
/* 814B60D0 | 38 63 FF E0 */	subi r3, r3, 0x20
.L_814B60D4:
/* 814B60D4 | 98 7E 00 00 */	stb r3, 0x0(r30)
/* 814B60D8 | 54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 814B60DC | 38 84 00 02 */	addi r4, r4, 0x2
/* 814B60E0 | 3B BD FF FF */	subi r29, r29, 0x1
/* 814B60E4 | 98 1E 00 01 */	stb r0, 0x1(r30)
/* 814B60E8 | 3B DE 00 02 */	addi r30, r30, 0x2
.L_814B60EC:
/* 814B60EC | 57 A0 04 3F */	clrlwi. r0, r29, 16
/* 814B60F0 | 41 82 00 10 */	beq .L_814B6100
/* 814B60F4 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814B60F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B60FC | 40 82 FF B4 */	bne .L_814B60B0
.L_814B6100:
/* 814B6100 | 38 00 00 00 */	li r0, 0x0
/* 814B6104 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 814B6108 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814B610C:
/* 814B610C | 38 00 00 00 */	li r0, 0x0
/* 814B6110 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 814B6114 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B6118 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B611C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B6120 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B6124 | 7C 08 03 A6 */	mtlr r0
/* 814B6128 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B612C | 4E 80 00 20 */	blr
.endfn VFiPFSTR_ToUpperNStr
