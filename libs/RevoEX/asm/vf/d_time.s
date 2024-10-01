.include "macros.inc"
.file "d_time.c"

# 0x814D4D58..0x814D4E38 | size: 0xE0
.text
.balign 4

# .text:0x0 | 0x814D4D58 | size: 0xE0
.fn dTM_GetNowTime, global
/* 814D4D58 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814D4D5C | 7C 08 02 A6 */	mflr r0
/* 814D4D60 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814D4D64 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 814D4D68 | 7C 9F 23 78 */	mr r31, r4
/* 814D4D6C | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 814D4D70 | 7C 7E 1B 78 */	mr r30, r3
/* 814D4D74 | 4B FF F9 5D */	bl VFSysGetTimeStampCallback
/* 814D4D78 | 38 00 00 00 */	li r0, 0x0
/* 814D4D7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4D80 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 814D4D84 | B0 1E 00 02 */	sth r0, 0x2(r30)
/* 814D4D88 | B0 1E 00 04 */	sth r0, 0x4(r30)
/* 814D4D8C | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 814D4D90 | B0 1F 00 02 */	sth r0, 0x2(r31)
/* 814D4D94 | B0 1F 00 04 */	sth r0, 0x4(r31)
/* 814D4D98 | 41 82 00 48 */	beq .L_814D4DE0
/* 814D4D9C | 7C 6C 1B 78 */	mr r12, r3
/* 814D4DA0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D4DA4 | 7D 89 03 A6 */	mtctr r12
/* 814D4DA8 | 4E 80 04 21 */	bctrl
/* 814D4DAC | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 814D4DB0 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 814D4DB4 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814D4DB8 | B0 1E 00 02 */	sth r0, 0x2(r30)
/* 814D4DBC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D4DC0 | B0 1E 00 04 */	sth r0, 0x4(r30)
/* 814D4DC4 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814D4DC8 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 814D4DCC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814D4DD0 | B0 1F 00 02 */	sth r0, 0x2(r31)
/* 814D4DD4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D4DD8 | B0 1F 00 04 */	sth r0, 0x4(r31)
/* 814D4DDC | 48 00 00 44 */	b .L_814D4E20
.L_814D4DE0:
/* 814D4DE0 | 48 06 0E A1 */	bl OSGetTime
/* 814D4DE4 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 814D4DE8 | 48 06 11 7D */	bl OSTicksToCalendarTime
/* 814D4DEC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D4DF0 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 814D4DF4 | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 814D4DF8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814D4DFC | B0 1E 00 02 */	sth r0, 0x2(r30)
/* 814D4E00 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 814D4E04 | B0 1E 00 04 */	sth r0, 0x4(r30)
/* 814D4E08 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 814D4E0C | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 814D4E10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D4E14 | B0 1F 00 02 */	sth r0, 0x2(r31)
/* 814D4E18 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 814D4E1C | B0 1F 00 04 */	sth r0, 0x4(r31)
.L_814D4E20:
/* 814D4E20 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814D4E24 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 814D4E28 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 814D4E2C | 7C 08 03 A6 */	mtlr r0
/* 814D4E30 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814D4E34 | 4E 80 00 20 */	blr
.endfn dTM_GetNowTime
