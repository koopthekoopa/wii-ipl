.include "macros.inc"
.file "darray.c"

# 0x813D5E8C..0x813D5FE8 | size: 0x15C
.text
.balign 4

# .text:0x0 | 0x813D5E8C | size: 0x44
.fn gsi_813D5E8C, global
/* 813D5E8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D5E90 | 7C 08 02 A6 */	mflr r0
/* 813D5E94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D5E98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D5E9C | 7C 7F 1B 78 */	mr r31, r3
/* 813D5EA0 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 813D5EA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D5EA8 | 41 82 00 14 */	beq .L_813D5EBC
/* 813D5EAC | 48 00 00 91 */	bl ArrayNth
/* 813D5EB0 | 81 9F 00 10 */	lwz r12, 0x10(r31)
/* 813D5EB4 | 7D 89 03 A6 */	mtctr r12
/* 813D5EB8 | 4E 80 04 21 */	bctrl
.L_813D5EBC:
/* 813D5EBC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D5EC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D5EC4 | 7C 08 03 A6 */	mtlr r0
/* 813D5EC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D5ECC | 4E 80 00 20 */	blr
.endfn gsi_813D5E8C

# .text:0x44 | 0x813D5ED0 | size: 0x64
.fn ArrayFree, global
/* 813D5ED0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D5ED4 | 7C 08 02 A6 */	mflr r0
/* 813D5ED8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D5EDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D5EE0 | 3B E0 00 00 */	li r31, 0x0
/* 813D5EE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D5EE8 | 7C 7E 1B 78 */	mr r30, r3
/* 813D5EEC | 48 00 00 14 */	b .L_813D5F00
.L_813D5EF0:
/* 813D5EF0 | 7F C3 F3 78 */	mr r3, r30
/* 813D5EF4 | 7F E4 FB 78 */	mr r4, r31
/* 813D5EF8 | 4B FF FF 95 */	bl gsi_813D5E8C
/* 813D5EFC | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813D5F00:
/* 813D5F00 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 813D5F04 | 7C 1F 00 00 */	cmpw r31, r0
/* 813D5F08 | 41 80 FF E8 */	blt .L_813D5EF0
/* 813D5F0C | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 813D5F10 | 48 00 04 55 */	bl gsifree
/* 813D5F14 | 7F C3 F3 78 */	mr r3, r30
/* 813D5F18 | 48 00 04 4D */	bl gsifree
/* 813D5F1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D5F20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D5F24 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D5F28 | 7C 08 03 A6 */	mtlr r0
/* 813D5F2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D5F30 | 4E 80 00 20 */	blr
.endfn ArrayFree

# .text:0xA8 | 0x813D5F34 | size: 0x8
.fn ArrayLength, global
/* 813D5F34 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813D5F38 | 4E 80 00 20 */	blr
.endfn ArrayLength

# .text:0xB0 | 0x813D5F3C | size: 0x30
.fn ArrayNth, global
/* 813D5F3C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D5F40 | 41 80 00 10 */	blt .L_813D5F50
/* 813D5F44 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813D5F48 | 7C 04 00 00 */	cmpw r4, r0
/* 813D5F4C | 41 80 00 0C */	blt .L_813D5F58
.L_813D5F50:
/* 813D5F50 | 38 60 00 00 */	li r3, 0x0
/* 813D5F54 | 4E 80 00 20 */	blr
.L_813D5F58:
/* 813D5F58 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813D5F5C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813D5F60 | 7C 00 21 D6 */	mullw r0, r0, r4
/* 813D5F64 | 7C 63 02 14 */	add r3, r3, r0
/* 813D5F68 | 4E 80 00 20 */	blr
.endfn ArrayNth

# .text:0xE0 | 0x813D5F6C | size: 0x7C
.fn ArrayRemoveAt, global
/* 813D5F6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D5F70 | 7C 08 02 A6 */	mflr r0
/* 813D5F74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D5F78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D5F7C | 48 22 35 49 */	bl _savegpr_28
/* 813D5F80 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813D5F84 | 7C 7C 1B 78 */	mr r28, r3
/* 813D5F88 | 7C 9D 23 78 */	mr r29, r4
/* 813D5F8C | 3B C5 FF FF */	subi r30, r5, 0x1
/* 813D5F90 | 7C 04 F0 00 */	cmpw r4, r30
/* 813D5F94 | 40 80 00 30 */	bge .L_813D5FC4
/* 813D5F98 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813D5F9C | 4B FF FF A1 */	bl ArrayNth
/* 813D5FA0 | 7C 7F 1B 78 */	mr r31, r3
/* 813D5FA4 | 7F 83 E3 78 */	mr r3, r28
/* 813D5FA8 | 7F A4 EB 78 */	mr r4, r29
/* 813D5FAC | 4B FF FF 91 */	bl ArrayNth
/* 813D5FB0 | 80 BC 00 08 */	lwz r5, 0x8(r28)
/* 813D5FB4 | 7C 1D F0 50 */	subf r0, r29, r30
/* 813D5FB8 | 7F E4 FB 78 */	mr r4, r31
/* 813D5FBC | 7C A5 01 D6 */	mullw r5, r5, r0
/* 813D5FC0 | 48 22 80 F1 */	bl memmove
.L_813D5FC4:
/* 813D5FC4 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 813D5FC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D5FCC | 38 03 FF FF */	subi r0, r3, 0x1
/* 813D5FD0 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 813D5FD4 | 48 22 35 3D */	bl _restgpr_28
/* 813D5FD8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D5FDC | 7C 08 03 A6 */	mtlr r0
/* 813D5FE0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D5FE4 | 4E 80 00 20 */	blr
.endfn ArrayRemoveAt
