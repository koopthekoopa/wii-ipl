.include "macros.inc"
.file "pf_fat16.c"

# 0x814C5B5C..0x814C60E8 | size: 0x58C
.text
.balign 4

# .text:0x0 | 0x814C5B5C | size: 0x164
.fn VFiPFFAT16_ReadFATEntry, global
/* 814C5B5C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C5B60 | 7C 08 02 A6 */	mflr r0
/* 814C5B64 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C5B68 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C5B6C | 48 13 39 51 */	bl _savegpr_26
/* 814C5B70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5B74 | 7C 7D 1B 78 */	mr r29, r3
/* 814C5B78 | 7C BE 2B 78 */	mr r30, r5
/* 814C5B7C | 40 82 00 14 */	bne .L_814C5B90
/* 814C5B80 | 38 00 FF FF */	li r0, -0x1
/* 814C5B84 | 38 60 00 0A */	li r3, 0xa
/* 814C5B88 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814C5B8C | 48 00 01 1C */	b .L_814C5CA8
.L_814C5B90:
/* 814C5B90 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C5B94 | 41 80 00 14 */	blt .L_814C5BA8
/* 814C5B98 | 80 C3 00 34 */	lwz r6, 0x34(r3)
/* 814C5B9C | 38 06 00 02 */	addi r0, r6, 0x2
/* 814C5BA0 | 7C 04 00 40 */	cmplw r4, r0
/* 814C5BA4 | 41 80 00 24 */	blt .L_814C5BC8
.L_814C5BA8:
/* 814C5BA8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C5BAC | 41 82 00 1C */	beq .L_814C5BC8
/* 814C5BB0 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C5BB4 | 41 82 00 14 */	beq .L_814C5BC8
/* 814C5BB8 | 38 00 FF FF */	li r0, -0x1
/* 814C5BBC | 38 60 00 0E */	li r3, 0xe
/* 814C5BC0 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814C5BC4 | 48 00 00 E4 */	b .L_814C5CA8
.L_814C5BC8:
/* 814C5BC8 | A1 03 00 18 */	lhz r8, 0x18(r3)
/* 814C5BCC | 54 87 08 3C */	slwi r7, r4, 1
/* 814C5BD0 | 88 A3 00 20 */	lbz r5, 0x20(r3)
/* 814C5BD4 | 3B E0 00 01 */	li r31, 0x1
/* 814C5BD8 | A0 83 00 00 */	lhz r4, 0x0(r3)
/* 814C5BDC | 55 00 06 31 */	rlwinm. r0, r8, 0, 24, 24
/* 814C5BE0 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 814C5BE4 | 7C E3 2C 30 */	srw r3, r7, r5
/* 814C5BE8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C5BEC | 7C 66 1A 14 */	add r3, r6, r3
/* 814C5BF0 | 7C E0 00 38 */	and r0, r7, r0
/* 814C5BF4 | 54 7C 04 3E */	clrlwi r28, r3, 16
/* 814C5BF8 | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 814C5BFC | 41 82 00 08 */	beq .L_814C5C04
/* 814C5C00 | 55 1F 07 7E */	clrlwi r31, r8, 29
.L_814C5C04:
/* 814C5C04 | 7F A3 EB 78 */	mr r3, r29
/* 814C5C08 | 7F 85 E3 78 */	mr r5, r28
/* 814C5C0C | 7F 66 DB 78 */	mr r6, r27
/* 814C5C10 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C5C14 | 38 E0 00 02 */	li r7, 0x2
/* 814C5C18 | 48 00 6B 99 */	bl VFiPFSEC_ReadFAT
/* 814C5C1C | 2C 03 10 00 */	cmpwi r3, 0x1000
/* 814C5C20 | 7C 7A 1B 78 */	mr r26, r3
/* 814C5C24 | 40 82 00 50 */	bne .L_814C5C74
/* 814C5C28 | 81 9D 18 78 */	lwz r12, 0x1878(r29)
/* 814C5C2C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814C5C30 | 41 82 00 44 */	beq .L_814C5C74
/* 814C5C34 | 80 7D 18 58 */	lwz r3, 0x1858(r29)
/* 814C5C38 | 7D 89 03 A6 */	mtctr r12
/* 814C5C3C | 4E 80 04 21 */	bctrl
/* 814C5C40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5C44 | 41 82 00 48 */	beq .L_814C5C8C
/* 814C5C48 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C5C4C | 40 82 00 28 */	bne .L_814C5C74
/* 814C5C50 | 88 1D 00 22 */	lbz r0, 0x22(r29)
/* 814C5C54 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C5C58 | 41 80 00 1C */	blt .L_814C5C74
/* 814C5C5C | 7C 1F 00 40 */	cmplw r31, r0
/* 814C5C60 | 40 80 00 14 */	bge .L_814C5C74
/* 814C5C64 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 814C5C68 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814C5C6C | 7F 9C 02 14 */	add r28, r28, r0
/* 814C5C70 | 48 00 00 1C */	b .L_814C5C8C
.L_814C5C74:
/* 814C5C74 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814C5C78 | 41 82 00 14 */	beq .L_814C5C8C
/* 814C5C7C | 38 00 FF FF */	li r0, -0x1
/* 814C5C80 | 7F 43 D3 78 */	mr r3, r26
/* 814C5C84 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C5C88 | 48 00 00 20 */	b .L_814C5CA8
.L_814C5C8C:
/* 814C5C8C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814C5C90 | 40 82 FF 74 */	bne .L_814C5C04
/* 814C5C94 | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 814C5C98 | 38 60 00 00 */	li r3, 0x0
/* 814C5C9C | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814C5CA0 | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814C5CA4 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814C5CA8:
/* 814C5CA8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C5CAC | 48 13 38 5D */	bl _restgpr_26
/* 814C5CB0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C5CB4 | 7C 08 03 A6 */	mtlr r0
/* 814C5CB8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C5CBC | 4E 80 00 20 */	blr
.endfn VFiPFFAT16_ReadFATEntry

# .text:0x164 | 0x814C5CC0 | size: 0x1C0
.fn VFiPFFAT16_ReadFATEntryPage, global
/* 814C5CC0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C5CC4 | 7C 08 02 A6 */	mflr r0
/* 814C5CC8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C5CCC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C5CD0 | 48 13 37 E9 */	bl _savegpr_25
/* 814C5CD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5CD8 | 7C 79 1B 78 */	mr r25, r3
/* 814C5CDC | 7C BA 2B 78 */	mr r26, r5
/* 814C5CE0 | 7C DB 33 78 */	mr r27, r6
/* 814C5CE4 | 3B C0 00 00 */	li r30, 0x0
/* 814C5CE8 | 40 82 00 0C */	bne .L_814C5CF4
/* 814C5CEC | 38 60 00 0A */	li r3, 0xa
/* 814C5CF0 | 48 00 01 78 */	b .L_814C5E68
.L_814C5CF4:
/* 814C5CF4 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C5CF8 | 41 80 00 14 */	blt .L_814C5D0C
/* 814C5CFC | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 814C5D00 | 38 05 00 02 */	addi r0, r5, 0x2
/* 814C5D04 | 7C 04 00 40 */	cmplw r4, r0
/* 814C5D08 | 41 80 00 1C */	blt .L_814C5D24
.L_814C5D0C:
/* 814C5D0C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C5D10 | 41 82 00 14 */	beq .L_814C5D24
/* 814C5D14 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C5D18 | 41 82 00 0C */	beq .L_814C5D24
/* 814C5D1C | 38 60 00 0E */	li r3, 0xe
/* 814C5D20 | 48 00 01 48 */	b .L_814C5E68
.L_814C5D24:
/* 814C5D24 | A0 A3 00 18 */	lhz r5, 0x18(r3)
/* 814C5D28 | 54 9F 08 3C */	slwi r31, r4, 1
/* 814C5D2C | 88 E3 00 20 */	lbz r7, 0x20(r3)
/* 814C5D30 | 3B 80 00 01 */	li r28, 0x1
/* 814C5D34 | 54 A0 06 31 */	rlwinm. r0, r5, 0, 24, 24
/* 814C5D38 | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 814C5D3C | 7F E0 3C 30 */	srw r0, r31, r7
/* 814C5D40 | 7C 04 02 14 */	add r0, r4, r0
/* 814C5D44 | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 814C5D48 | 41 82 00 08 */	beq .L_814C5D50
/* 814C5D4C | 54 BC 07 7E */	clrlwi r28, r5, 29
.L_814C5D50:
/* 814C5D50 | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 814C5D54 | 80 A4 00 18 */	lwz r5, 0x18(r4)
/* 814C5D58 | 7C 05 E8 40 */	cmplw r5, r29
/* 814C5D5C | 41 81 00 14 */	bgt .L_814C5D70
/* 814C5D60 | 80 03 15 E8 */	lwz r0, 0x15e8(r3)
/* 814C5D64 | 7C 05 02 14 */	add r0, r5, r0
/* 814C5D68 | 7C 00 E8 40 */	cmplw r0, r29
/* 814C5D6C | 41 81 00 A8 */	bgt .L_814C5E14
.L_814C5D70:
/* 814C5D70 | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 814C5D74 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C5D78 | 40 82 00 18 */	bne .L_814C5D90
/* 814C5D7C | 7F 23 CB 78 */	mr r3, r25
/* 814C5D80 | 4B FF DC 35 */	bl VFiPFFAT_UpdateFATEntry
/* 814C5D84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5D88 | 41 82 00 08 */	beq .L_814C5D90
/* 814C5D8C | 48 00 00 DC */	b .L_814C5E68
.L_814C5D90:
/* 814C5D90 | 7F 23 CB 78 */	mr r3, r25
/* 814C5D94 | 7F A4 EB 78 */	mr r4, r29
/* 814C5D98 | 7F 65 DB 78 */	mr r5, r27
/* 814C5D9C | 4B FF 61 C1 */	bl VFiPFCACHE_ReadFATPage
/* 814C5DA0 | 2C 03 10 00 */	cmpwi r3, 0x1000
/* 814C5DA4 | 7C 7E 1B 78 */	mr r30, r3
/* 814C5DA8 | 40 82 00 50 */	bne .L_814C5DF8
/* 814C5DAC | 81 99 18 78 */	lwz r12, 0x1878(r25)
/* 814C5DB0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814C5DB4 | 41 82 00 44 */	beq .L_814C5DF8
/* 814C5DB8 | 80 79 18 58 */	lwz r3, 0x1858(r25)
/* 814C5DBC | 7D 89 03 A6 */	mtctr r12
/* 814C5DC0 | 4E 80 04 21 */	bctrl
/* 814C5DC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5DC8 | 41 82 00 40 */	beq .L_814C5E08
/* 814C5DCC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C5DD0 | 40 82 00 28 */	bne .L_814C5DF8
/* 814C5DD4 | 88 19 00 22 */	lbz r0, 0x22(r25)
/* 814C5DD8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C5DDC | 41 80 00 1C */	blt .L_814C5DF8
/* 814C5DE0 | 7C 1C 00 40 */	cmplw r28, r0
/* 814C5DE4 | 40 80 00 14 */	bge .L_814C5DF8
/* 814C5DE8 | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 814C5DEC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814C5DF0 | 7F BD 02 14 */	add r29, r29, r0
/* 814C5DF4 | 48 00 00 14 */	b .L_814C5E08
.L_814C5DF8:
/* 814C5DF8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C5DFC | 41 82 00 0C */	beq .L_814C5E08
/* 814C5E00 | 7F C3 F3 78 */	mr r3, r30
/* 814C5E04 | 48 00 00 64 */	b .L_814C5E68
.L_814C5E08:
/* 814C5E08 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C5E0C | 40 82 FF 84 */	bne .L_814C5D90
/* 814C5E10 | 48 00 00 30 */	b .L_814C5E40
.L_814C5E14:
/* 814C5E14 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814C5E18 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C5E1C | 7C 03 00 50 */	subf r0, r3, r0
/* 814C5E20 | 7C 00 3E 30 */	sraw r0, r0, r7
/* 814C5E24 | 7C 05 02 14 */	add r0, r5, r0
/* 814C5E28 | 7C 1D 00 40 */	cmplw r29, r0
/* 814C5E2C | 41 82 00 14 */	beq .L_814C5E40
/* 814C5E30 | 7C 05 E8 50 */	subf r0, r5, r29
/* 814C5E34 | 7C 00 38 30 */	slw r0, r0, r7
/* 814C5E38 | 7C 03 02 14 */	add r0, r3, r0
/* 814C5E3C | 90 04 00 08 */	stw r0, 0x8(r4)
.L_814C5E40:
/* 814C5E40 | A0 B9 00 00 */	lhz r5, 0x0(r25)
/* 814C5E44 | 7F C3 F3 78 */	mr r3, r30
/* 814C5E48 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814C5E4C | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C5E50 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 814C5E54 | 7F E0 00 38 */	and r0, r31, r0
/* 814C5E58 | 7C 84 02 2E */	lhzx r4, r4, r0
/* 814C5E5C | 54 80 44 2E */	clrlslwi r0, r4, 24, 8
/* 814C5E60 | 50 80 C6 3E */	rlwimi r0, r4, 24, 24, 31
/* 814C5E64 | 90 1A 00 00 */	stw r0, 0x0(r26)
.L_814C5E68:
/* 814C5E68 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C5E6C | 48 13 36 99 */	bl _restgpr_25
/* 814C5E70 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C5E74 | 7C 08 03 A6 */	mtlr r0
/* 814C5E78 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C5E7C | 4E 80 00 20 */	blr
.endfn VFiPFFAT16_ReadFATEntryPage

# .text:0x324 | 0x814C5E80 | size: 0x98
.fn VFiPFFAT16_WriteFATEntry, global
/* 814C5E80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C5E84 | 7C 08 02 A6 */	mflr r0
/* 814C5E88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5E8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C5E90 | 40 82 00 0C */	bne .L_814C5E9C
/* 814C5E94 | 38 60 00 0A */	li r3, 0xa
/* 814C5E98 | 48 00 00 70 */	b .L_814C5F08
.L_814C5E9C:
/* 814C5E9C | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C5EA0 | 41 80 00 14 */	blt .L_814C5EB4
/* 814C5EA4 | 80 C3 00 34 */	lwz r6, 0x34(r3)
/* 814C5EA8 | 38 06 00 02 */	addi r0, r6, 0x2
/* 814C5EAC | 7C 04 00 40 */	cmplw r4, r0
/* 814C5EB0 | 41 80 00 1C */	blt .L_814C5ECC
.L_814C5EB4:
/* 814C5EB4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C5EB8 | 41 82 00 14 */	beq .L_814C5ECC
/* 814C5EBC | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C5EC0 | 41 82 00 0C */	beq .L_814C5ECC
/* 814C5EC4 | 38 60 00 0E */	li r3, 0xe
/* 814C5EC8 | 48 00 00 40 */	b .L_814C5F08
.L_814C5ECC:
/* 814C5ECC | A0 C3 00 00 */	lhz r6, 0x0(r3)
/* 814C5ED0 | 54 89 08 3C */	slwi r9, r4, 1
/* 814C5ED4 | 88 E3 00 20 */	lbz r7, 0x20(r3)
/* 814C5ED8 | 38 01 00 08 */	addi r0, r1, 0x8
/* 814C5EDC | 38 86 FF FF */	subi r4, r6, 0x1
/* 814C5EE0 | 81 03 00 28 */	lwz r8, 0x28(r3)
/* 814C5EE4 | 7D 26 3C 30 */	srw r6, r9, r7
/* 814C5EE8 | 38 E0 00 02 */	li r7, 0x2
/* 814C5EEC | 7C C8 32 14 */	add r6, r8, r6
/* 814C5EF0 | 7C A0 07 2C */	sthbrx r5, r0, r0
/* 814C5EF4 | 7D 24 20 38 */	and r4, r9, r4
/* 814C5EF8 | 54 C5 04 3E */	clrlwi r5, r6, 16
/* 814C5EFC | 54 86 04 3E */	clrlwi r6, r4, 16
/* 814C5F00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C5F04 | 48 00 69 65 */	bl VFiPFSEC_WriteFAT
.L_814C5F08:
/* 814C5F08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C5F0C | 7C 08 03 A6 */	mtlr r0
/* 814C5F10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C5F14 | 4E 80 00 20 */	blr
.endfn VFiPFFAT16_WriteFATEntry

# .text:0x3BC | 0x814C5F18 | size: 0x1D0
.fn VFiPFFAT16_WriteFATEntryPage, global
/* 814C5F18 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C5F1C | 7C 08 02 A6 */	mflr r0
/* 814C5F20 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C5F24 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C5F28 | 48 13 35 91 */	bl _savegpr_25
/* 814C5F2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5F30 | 7C 7A 1B 78 */	mr r26, r3
/* 814C5F34 | 7C BB 2B 78 */	mr r27, r5
/* 814C5F38 | 7C DC 33 78 */	mr r28, r6
/* 814C5F3C | 3B C0 00 00 */	li r30, 0x0
/* 814C5F40 | 40 82 00 0C */	bne .L_814C5F4C
/* 814C5F44 | 38 60 00 0A */	li r3, 0xa
/* 814C5F48 | 48 00 01 88 */	b .L_814C60D0
.L_814C5F4C:
/* 814C5F4C | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C5F50 | 41 80 00 14 */	blt .L_814C5F64
/* 814C5F54 | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 814C5F58 | 38 05 00 02 */	addi r0, r5, 0x2
/* 814C5F5C | 7C 04 00 40 */	cmplw r4, r0
/* 814C5F60 | 41 80 00 1C */	blt .L_814C5F7C
.L_814C5F64:
/* 814C5F64 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C5F68 | 41 82 00 14 */	beq .L_814C5F7C
/* 814C5F6C | 28 04 00 01 */	cmplwi r4, 0x1
/* 814C5F70 | 41 82 00 0C */	beq .L_814C5F7C
/* 814C5F74 | 38 60 00 0E */	li r3, 0xe
/* 814C5F78 | 48 00 01 58 */	b .L_814C60D0
.L_814C5F7C:
/* 814C5F7C | 89 03 00 20 */	lbz r8, 0x20(r3)
/* 814C5F80 | 54 87 08 3C */	slwi r7, r4, 1
/* 814C5F84 | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 814C5F88 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 814C5F8C | 7C E0 44 30 */	srw r0, r7, r8
/* 814C5F90 | A0 A3 00 00 */	lhz r5, 0x0(r3)
/* 814C5F94 | 7C 06 02 14 */	add r0, r6, r0
/* 814C5F98 | 80 C4 00 18 */	lwz r6, 0x18(r4)
/* 814C5F9C | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 814C5FA0 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C5FA4 | 7C E0 00 38 */	and r0, r7, r0
/* 814C5FA8 | 7C 06 E8 40 */	cmplw r6, r29
/* 814C5FAC | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 814C5FB0 | 41 81 00 14 */	bgt .L_814C5FC4
/* 814C5FB4 | 80 03 15 E8 */	lwz r0, 0x15e8(r3)
/* 814C5FB8 | 7C 06 02 14 */	add r0, r6, r0
/* 814C5FBC | 7C 00 E8 40 */	cmplw r0, r29
/* 814C5FC0 | 41 81 00 B0 */	bgt .L_814C6070
.L_814C5FC4:
/* 814C5FC4 | 7F 43 D3 78 */	mr r3, r26
/* 814C5FC8 | 4B FF D9 ED */	bl VFiPFFAT_UpdateFATEntry
/* 814C5FCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C5FD0 | 41 82 00 08 */	beq .L_814C5FD8
/* 814C5FD4 | 48 00 00 FC */	b .L_814C60D0
.L_814C5FD8:
/* 814C5FD8 | A0 7A 00 18 */	lhz r3, 0x18(r26)
/* 814C5FDC | 3B 20 00 01 */	li r25, 0x1
/* 814C5FE0 | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 814C5FE4 | 41 82 00 08 */	beq .L_814C5FEC
/* 814C5FE8 | 54 79 07 7E */	clrlwi r25, r3, 29
.L_814C5FEC:
/* 814C5FEC | 7F 43 D3 78 */	mr r3, r26
/* 814C5FF0 | 7F A4 EB 78 */	mr r4, r29
/* 814C5FF4 | 7F 85 E3 78 */	mr r5, r28
/* 814C5FF8 | 4B FF 5F 65 */	bl VFiPFCACHE_ReadFATPage
/* 814C5FFC | 2C 03 10 00 */	cmpwi r3, 0x1000
/* 814C6000 | 7C 7E 1B 78 */	mr r30, r3
/* 814C6004 | 40 82 00 50 */	bne .L_814C6054
/* 814C6008 | 81 9A 18 78 */	lwz r12, 0x1878(r26)
/* 814C600C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814C6010 | 41 82 00 44 */	beq .L_814C6054
/* 814C6014 | 80 7A 18 58 */	lwz r3, 0x1858(r26)
/* 814C6018 | 7D 89 03 A6 */	mtctr r12
/* 814C601C | 4E 80 04 21 */	bctrl
/* 814C6020 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6024 | 41 82 00 40 */	beq .L_814C6064
/* 814C6028 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814C602C | 40 82 00 28 */	bne .L_814C6054
/* 814C6030 | 88 1A 00 22 */	lbz r0, 0x22(r26)
/* 814C6034 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C6038 | 41 80 00 1C */	blt .L_814C6054
/* 814C603C | 7C 19 00 40 */	cmplw r25, r0
/* 814C6040 | 40 80 00 14 */	bge .L_814C6054
/* 814C6044 | 80 1A 00 0C */	lwz r0, 0xc(r26)
/* 814C6048 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814C604C | 7F BD 02 14 */	add r29, r29, r0
/* 814C6050 | 48 00 00 14 */	b .L_814C6064
.L_814C6054:
/* 814C6054 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C6058 | 41 82 00 0C */	beq .L_814C6064
/* 814C605C | 7F C3 F3 78 */	mr r3, r30
/* 814C6060 | 48 00 00 70 */	b .L_814C60D0
.L_814C6064:
/* 814C6064 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C6068 | 40 82 FF 84 */	bne .L_814C5FEC
/* 814C606C | 48 00 00 30 */	b .L_814C609C
.L_814C6070:
/* 814C6070 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814C6074 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C6078 | 7C 03 00 50 */	subf r0, r3, r0
/* 814C607C | 7C 00 46 30 */	sraw r0, r0, r8
/* 814C6080 | 7C 06 02 14 */	add r0, r6, r0
/* 814C6084 | 7C 1D 00 40 */	cmplw r29, r0
/* 814C6088 | 41 82 00 14 */	beq .L_814C609C
/* 814C608C | 7C 06 E8 50 */	subf r0, r6, r29
/* 814C6090 | 7C 00 40 30 */	slw r0, r0, r8
/* 814C6094 | 7C 03 02 14 */	add r0, r3, r0
/* 814C6098 | 90 04 00 08 */	stw r0, 0x8(r4)
.L_814C609C:
/* 814C609C | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C60A0 | 57 66 C6 3E */	extrwi r6, r27, 8, 16
/* 814C60A4 | 7F 43 D3 78 */	mr r3, r26
/* 814C60A8 | 38 A0 00 01 */	li r5, 0x1
/* 814C60AC | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 814C60B0 | 7F 64 F9 AE */	stbx r27, r4, r31
/* 814C60B4 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C60B8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814C60BC | 7C 80 FA 14 */	add r4, r0, r31
/* 814C60C0 | 98 C4 00 01 */	stb r6, 0x1(r4)
/* 814C60C4 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814C60C8 | 4B FF 5D 29 */	bl VFiPFCACHE_UpdateModifiedSector
/* 814C60CC | 7F C3 F3 78 */	mr r3, r30
.L_814C60D0:
/* 814C60D0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C60D4 | 48 13 34 31 */	bl _restgpr_25
/* 814C60D8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C60DC | 7C 08 03 A6 */	mtlr r0
/* 814C60E0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C60E4 | 4E 80 00 20 */	blr
.endfn VFiPFFAT16_WriteFATEntryPage
