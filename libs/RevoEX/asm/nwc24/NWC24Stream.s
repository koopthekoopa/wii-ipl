.include "macros.inc"
.file "NWC24Stream.c"

# 0x814A5CB8..0x814A5EE0 | size: 0x228
.text
.balign 4

# .text:0x0 | 0x814A5CB8 | size: 0xEC
.fn NWC24FStreamGetc, global
/* 814A5CB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A5CBC | 7C 08 02 A6 */	mflr r0
/* 814A5CC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A5CC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A5CC8 | 7C 7F 1B 78 */	mr r31, r3
/* 814A5CCC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814A5CD0 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 814A5CD4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814A5CD8 | 7C 04 00 40 */	cmplw r4, r0
/* 814A5CDC | 41 80 00 0C */	blt .L_814A5CE8
/* 814A5CE0 | 38 60 00 00 */	li r3, 0x0
/* 814A5CE4 | 48 00 00 A8 */	b .L_814A5D8C
.L_814A5CE8:
/* 814A5CE8 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 814A5CEC | 80 A3 00 0C */	lwz r5, 0xc(r3)
/* 814A5CF0 | 7F C4 02 14 */	add r30, r4, r0
/* 814A5CF4 | 7C 05 F0 40 */	cmplw r5, r30
/* 814A5CF8 | 41 81 00 14 */	bgt .L_814A5D0C
/* 814A5CFC | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814A5D00 | 7C 05 02 14 */	add r0, r5, r0
/* 814A5D04 | 7C 00 F0 40 */	cmplw r0, r30
/* 814A5D08 | 41 81 00 68 */	bgt .L_814A5D70
.L_814A5D0C:
/* 814A5D0C | 57 C4 00 34 */	clrrwi r4, r30, 5
/* 814A5D10 | 38 A0 00 00 */	li r5, 0x0
/* 814A5D14 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814A5D18 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814A5D1C | 4B FF 83 D9 */	bl NWC24FSeek
/* 814A5D20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5D24 | 41 82 00 08 */	beq .L_814A5D2C
/* 814A5D28 | 48 00 00 38 */	b .L_814A5D60
.L_814A5D2C:
/* 814A5D2C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814A5D30 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 814A5D34 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 814A5D38 | 7C 03 02 14 */	add r0, r3, r0
/* 814A5D3C | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814A5D40 | 7C 65 00 50 */	subf r3, r5, r0
/* 814A5D44 | 7C 04 18 40 */	cmplw r4, r3
/* 814A5D48 | 40 81 00 0C */	ble .L_814A5D54
/* 814A5D4C | 38 03 00 1F */	addi r0, r3, 0x1f
/* 814A5D50 | 54 04 00 34 */	clrrwi r4, r0, 5
.L_814A5D54:
/* 814A5D54 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814A5D58 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 814A5D5C | 4B FF 85 89 */	bl NWC24FRead
.L_814A5D60:
/* 814A5D60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5D64 | 41 82 00 0C */	beq .L_814A5D70
/* 814A5D68 | 38 60 00 00 */	li r3, 0x0
/* 814A5D6C | 48 00 00 20 */	b .L_814A5D8C
.L_814A5D70:
/* 814A5D70 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814A5D74 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814A5D78 | 7C 00 F0 50 */	subf r0, r0, r30
/* 814A5D7C | 80 9F 00 14 */	lwz r4, 0x14(r31)
/* 814A5D80 | 7C 63 00 AE */	lbzx r3, r3, r0
/* 814A5D84 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814A5D88 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_814A5D8C:
/* 814A5D8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A5D90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A5D94 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814A5D98 | 7C 08 03 A6 */	mtlr r0
/* 814A5D9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A5DA0 | 4E 80 00 20 */	blr
.endfn NWC24FStreamGetc

# .text:0xEC | 0x814A5DA4 | size: 0x20
.fn NWC24FStreamSeek, global
/* 814A5DA4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814A5DA8 | 7C 04 00 40 */	cmplw r4, r0
/* 814A5DAC | 40 80 00 10 */	bge .L_814A5DBC
/* 814A5DB0 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 814A5DB4 | 38 60 00 00 */	li r3, 0x0
/* 814A5DB8 | 4E 80 00 20 */	blr
.L_814A5DBC:
/* 814A5DBC | 38 60 FF F8 */	li r3, -0x8
/* 814A5DC0 | 4E 80 00 20 */	blr
.endfn NWC24FStreamSeek

# .text:0x10C | 0x814A5DC4 | size: 0x11C
.fn NWC24FStreamGetPtr, global
/* 814A5DC4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A5DC8 | 7C 08 02 A6 */	mflr r0
/* 814A5DCC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A5DD0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A5DD4 | 7C BF 2B 78 */	mr r31, r5
/* 814A5DD8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A5DDC | 7C 9E 23 78 */	mr r30, r4
/* 814A5DE0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A5DE4 | 7C 7D 1B 78 */	mr r29, r3
/* 814A5DE8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814A5DEC | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 814A5DF0 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814A5DF4 | 7C 86 2A 14 */	add r4, r6, r5
/* 814A5DF8 | 7C 04 00 40 */	cmplw r4, r0
/* 814A5DFC | 40 81 00 0C */	ble .L_814A5E08
/* 814A5E00 | 38 60 FF F8 */	li r3, -0x8
/* 814A5E04 | 48 00 00 BC */	b .L_814A5EC0
.L_814A5E08:
/* 814A5E08 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 814A5E0C | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 814A5E10 | 7F 86 02 14 */	add r28, r6, r0
/* 814A5E14 | 7C 1C 20 40 */	cmplw r28, r4
/* 814A5E18 | 41 80 00 18 */	blt .L_814A5E30
/* 814A5E1C | 7C 84 E0 50 */	subf r4, r4, r28
/* 814A5E20 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814A5E24 | 7C 85 22 14 */	add r4, r5, r4
/* 814A5E28 | 7C 04 00 40 */	cmplw r4, r0
/* 814A5E2C | 41 80 00 64 */	blt .L_814A5E90
.L_814A5E30:
/* 814A5E30 | 57 84 00 34 */	clrrwi r4, r28, 5
/* 814A5E34 | 38 A0 00 00 */	li r5, 0x0
/* 814A5E38 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814A5E3C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814A5E40 | 4B FF 82 B5 */	bl NWC24FSeek
/* 814A5E44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5E48 | 41 82 00 08 */	beq .L_814A5E50
/* 814A5E4C | 48 00 00 38 */	b .L_814A5E84
.L_814A5E50:
/* 814A5E50 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 814A5E54 | 80 1D 00 18 */	lwz r0, 0x18(r29)
/* 814A5E58 | 80 BD 00 0C */	lwz r5, 0xc(r29)
/* 814A5E5C | 7C 03 02 14 */	add r0, r3, r0
/* 814A5E60 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814A5E64 | 7C 65 00 50 */	subf r3, r5, r0
/* 814A5E68 | 7C 04 18 40 */	cmplw r4, r3
/* 814A5E6C | 40 81 00 0C */	ble .L_814A5E78
/* 814A5E70 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 814A5E74 | 54 04 00 34 */	clrrwi r4, r0, 5
.L_814A5E78:
/* 814A5E78 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814A5E7C | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 814A5E80 | 4B FF 84 65 */	bl NWC24FRead
.L_814A5E84:
/* 814A5E84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5E88 | 41 82 00 08 */	beq .L_814A5E90
/* 814A5E8C | 48 00 00 34 */	b .L_814A5EC0
.L_814A5E90:
/* 814A5E90 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 814A5E94 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 814A5E98 | 7C 83 E0 50 */	subf r4, r3, r28
/* 814A5E9C | 7C 7F 22 14 */	add r3, r31, r4
/* 814A5EA0 | 7C 03 00 40 */	cmplw r3, r0
/* 814A5EA4 | 41 80 00 0C */	blt .L_814A5EB0
/* 814A5EA8 | 38 60 FF F8 */	li r3, -0x8
/* 814A5EAC | 48 00 00 14 */	b .L_814A5EC0
.L_814A5EB0:
/* 814A5EB0 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 814A5EB4 | 38 60 00 00 */	li r3, 0x0
/* 814A5EB8 | 7C 00 22 14 */	add r0, r0, r4
/* 814A5EBC | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814A5EC0:
/* 814A5EC0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A5EC4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A5EC8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A5ECC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A5ED0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814A5ED4 | 7C 08 03 A6 */	mtlr r0
/* 814A5ED8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A5EDC | 4E 80 00 20 */	blr
.endfn NWC24FStreamGetPtr
