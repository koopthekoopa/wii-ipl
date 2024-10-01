.include "macros.inc"
.file "NHTTP_list.c"

# 0x81495D5C..0x81495FAC | size: 0x250
.text
.balign 4

# .text:0x0 | 0x81495D5C | size: 0x10
.fn NHTTPi_InitListInfo, global
/* 81495D5C | 38 00 00 00 */	li r0, 0x0
/* 81495D60 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81495D64 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81495D68 | 4E 80 00 20 */	blr
.endfn NHTTPi_InitListInfo

# .text:0x10 | 0x81495D6C | size: 0xCC
.fn NHTTPi_setReqQueue, global
/* 81495D6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81495D70 | 7C 08 02 A6 */	mflr r0
/* 81495D74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81495D78 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81495D7C | 3B E0 FF FF */	li r31, -0x1
/* 81495D80 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81495D84 | 7C 9E 23 78 */	mr r30, r4
/* 81495D88 | 38 80 00 04 */	li r4, 0x4
/* 81495D8C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81495D90 | 7C 7D 1B 78 */	mr r29, r3
/* 81495D94 | 38 60 00 14 */	li r3, 0x14
/* 81495D98 | 4B FF FA E1 */	bl NHTTPi_alloc
/* 81495D9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81495DA0 | 41 82 00 78 */	beq .L_81495E18
/* 81495DA4 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81495DA8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81495DAC | 41 82 00 2C */	beq .L_81495DD8
/* 81495DB0 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 81495DB4 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81495DB8 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 81495DBC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81495DC0 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81495DC4 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81495DC8 | 90 64 00 04 */	stw r3, 0x4(r4)
/* 81495DCC | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81495DD0 | 90 64 00 00 */	stw r3, 0x0(r4)
/* 81495DD4 | 48 00 00 10 */	b .L_81495DE4
.L_81495DD8:
/* 81495DD8 | 90 63 00 00 */	stw r3, 0x0(r3)
/* 81495DDC | 90 63 00 04 */	stw r3, 0x4(r3)
/* 81495DE0 | 90 7D 00 00 */	stw r3, 0x0(r29)
.L_81495DE4:
/* 81495DE4 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 81495DE8 | 38 00 FF FF */	li r0, -0x1
/* 81495DEC | 90 83 00 08 */	stw r4, 0x8(r3)
/* 81495DF0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81495DF4 | 90 9D 00 04 */	stw r4, 0x4(r29)
/* 81495DF8 | 93 C3 00 0C */	stw r30, 0xc(r3)
/* 81495DFC | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81495E00 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 81495E04 | 83 E3 00 08 */	lwz r31, 0x8(r3)
/* 81495E08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81495E0C | 40 80 00 0C */	bge .L_81495E18
/* 81495E10 | 38 00 00 00 */	li r0, 0x0
/* 81495E14 | 90 1D 00 04 */	stw r0, 0x4(r29)
.L_81495E18:
/* 81495E18 | 7F E3 FB 78 */	mr r3, r31
/* 81495E1C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81495E20 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81495E24 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81495E28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81495E2C | 7C 08 03 A6 */	mtlr r0
/* 81495E30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81495E34 | 4E 80 00 20 */	blr
.endfn NHTTPi_setReqQueue

# .text:0xDC | 0x81495E38 | size: 0x11C
.fn NHTTPi_freeReqQueue, global
/* 81495E38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81495E3C | 7C 08 02 A6 */	mflr r0
/* 81495E40 | 38 E0 00 00 */	li r7, 0x0
/* 81495E44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81495E48 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81495E4C | 3B E0 00 00 */	li r31, 0x0
/* 81495E50 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81495E54 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81495E58 | 7C 9D 23 78 */	mr r29, r4
/* 81495E5C | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81495E60 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81495E64 | 41 82 00 40 */	beq .L_81495EA4
/* 81495E68 | 80 06 00 08 */	lwz r0, 0x8(r6)
/* 81495E6C | 7C 00 28 00 */	cmpw r0, r5
/* 81495E70 | 40 82 00 0C */	bne .L_81495E7C
/* 81495E74 | 7C DF 33 78 */	mr r31, r6
/* 81495E78 | 48 00 00 2C */	b .L_81495EA4
.L_81495E7C:
/* 81495E7C | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 81495E80 | 48 00 00 1C */	b .L_81495E9C
.L_81495E84:
/* 81495E84 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 81495E88 | 7C 00 28 00 */	cmpw r0, r5
/* 81495E8C | 40 82 00 0C */	bne .L_81495E98
/* 81495E90 | 7C 9F 23 78 */	mr r31, r4
/* 81495E94 | 48 00 00 10 */	b .L_81495EA4
.L_81495E98:
/* 81495E98 | 80 84 00 04 */	lwz r4, 0x4(r4)
.L_81495E9C:
/* 81495E9C | 7C 04 30 40 */	cmplw r4, r6
/* 81495EA0 | 40 82 FF E4 */	bne .L_81495E84
.L_81495EA4:
/* 81495EA4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81495EA8 | 41 82 00 8C */	beq .L_81495F34
/* 81495EAC | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 81495EB0 | 7C 06 00 40 */	cmplw r6, r0
/* 81495EB4 | 41 82 00 34 */	beq .L_81495EE8
/* 81495EB8 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81495EBC | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81495EC0 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 81495EC4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81495EC8 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81495ECC | 90 04 00 00 */	stw r0, 0x0(r4)
/* 81495ED0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81495ED4 | 7C 00 F8 40 */	cmplw r0, r31
/* 81495ED8 | 40 82 00 18 */	bne .L_81495EF0
/* 81495EDC | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81495EE0 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81495EE4 | 48 00 00 0C */	b .L_81495EF0
.L_81495EE8:
/* 81495EE8 | 38 00 00 00 */	li r0, 0x0
/* 81495EEC | 90 03 00 00 */	stw r0, 0x0(r3)
.L_81495EF0:
/* 81495EF0 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81495EF4 | 7F A3 EB 78 */	mr r3, r29
/* 81495EF8 | 48 00 69 11 */	bl NHTTPi_Request2Connection
/* 81495EFC | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81495F00 | 7C 7E 1B 78 */	mr r30, r3
/* 81495F04 | 7F A3 EB 78 */	mr r3, r29
/* 81495F08 | 48 00 10 31 */	bl NHTTPi_destroyRequestObject
/* 81495F0C | 7F E3 FB 78 */	mr r3, r31
/* 81495F10 | 4B FF F9 C5 */	bl NHTTPi_free
/* 81495F14 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81495F18 | 41 82 00 18 */	beq .L_81495F30
/* 81495F1C | 38 00 00 08 */	li r0, 0x8
/* 81495F20 | 7F A3 EB 78 */	mr r3, r29
/* 81495F24 | 90 1E 00 04 */	stw r0, 0x4(r30)
/* 81495F28 | 7F C4 F3 78 */	mr r4, r30
/* 81495F2C | 48 00 6C B5 */	bl NHTTPi_CompleteCallback
.L_81495F30:
/* 81495F30 | 38 E0 00 01 */	li r7, 0x1
.L_81495F34:
/* 81495F34 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81495F38 | 7C E3 3B 78 */	mr r3, r7
/* 81495F3C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81495F40 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81495F44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81495F48 | 7C 08 03 A6 */	mtlr r0
/* 81495F4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81495F50 | 4E 80 00 20 */	blr
.endfn NHTTPi_freeReqQueue

# .text:0x1F8 | 0x81495F54 | size: 0x54
.fn NHTTPi_allFreeReqQueue, global
/* 81495F54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81495F58 | 7C 08 02 A6 */	mflr r0
/* 81495F5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81495F60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81495F64 | 7C 9F 23 78 */	mr r31, r4
/* 81495F68 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81495F6C | 7C 7E 1B 78 */	mr r30, r3
/* 81495F70 | 48 00 00 14 */	b .L_81495F84
.L_81495F74:
/* 81495F74 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81495F78 | 7F C3 F3 78 */	mr r3, r30
/* 81495F7C | 7F E4 FB 78 */	mr r4, r31
/* 81495F80 | 4B FF FE B9 */	bl NHTTPi_freeReqQueue
.L_81495F84:
/* 81495F84 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81495F88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81495F8C | 40 82 FF E8 */	bne .L_81495F74
/* 81495F90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81495F94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81495F98 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81495F9C | 7C 08 03 A6 */	mtlr r0
/* 81495FA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81495FA4 | 4E 80 00 20 */	blr
.endfn NHTTPi_allFreeReqQueue

# .text:0x24C | 0x81495FA8 | size: 0x4
.fn NHTTPi_getReqFromReqQueue, global
/* 81495FA8 | 4B FF FD 4C */	b NHTTPi_getHdrFromList
.endfn NHTTPi_getReqFromReqQueue
