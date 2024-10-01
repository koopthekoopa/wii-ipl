.include "macros.inc"
.file "pdm_partition.c"

# 0x814B8BE0..0x814BA3BC | size: 0x17DC
.text
.balign 4

# .text:0x0 | 0x814B8BE0 | size: 0x160
.fn VFipdm_part_get_start_sector, global
/* 814B8BE0 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 814B8BE4 | 7C 08 02 A6 */	mflr r0
/* 814B8BE8 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 814B8BEC | 38 81 00 20 */	addi r4, r1, 0x20
/* 814B8BF0 | 93 E1 00 8C */	stw r31, 0x8c(r1)
/* 814B8BF4 | 7C 7F 1B 78 */	mr r31, r3
/* 814B8BF8 | 93 C1 00 88 */	stw r30, 0x88(r1)
/* 814B8BFC | 93 A1 00 84 */	stw r29, 0x84(r1)
/* 814B8C00 | A3 C3 00 0C */	lhz r30, 0xc(r3)
/* 814B8C04 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814B8C08 | 48 00 18 C9 */	bl VFipdm_mbr_get_mbr_part_table
/* 814B8C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8C10 | 41 82 00 10 */	beq .L_814B8C20
/* 814B8C14 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 814B8C18 | 41 82 00 08 */	beq .L_814B8C20
/* 814B8C1C | 48 00 01 08 */	b .L_814B8D24
.L_814B8C20:
/* 814B8C20 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 814B8C24 | 41 82 00 BC */	beq .L_814B8CE0
/* 814B8C28 | 28 1E 00 04 */	cmplwi r30, 0x4
/* 814B8C2C | 40 80 00 48 */	bge .L_814B8C74
/* 814B8C30 | 1C BE 00 14 */	mulli r5, r30, 0x14
/* 814B8C34 | 38 61 00 34 */	addi r3, r1, 0x34
/* 814B8C38 | 7C 03 28 2E */	lwzx r0, r3, r5
/* 814B8C3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B8C40 | 40 82 00 0C */	bne .L_814B8C4C
/* 814B8C44 | 38 60 00 07 */	li r3, 0x7
/* 814B8C48 | 48 00 00 DC */	b .L_814B8D24
.L_814B8C4C:
/* 814B8C4C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 814B8C50 | 38 81 00 38 */	addi r4, r1, 0x38
/* 814B8C54 | 38 61 00 29 */	addi r3, r1, 0x29
/* 814B8C58 | 7C 04 28 2E */	lwzx r0, r4, r5
/* 814B8C5C | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 814B8C60 | 7C 03 28 AE */	lbzx r0, r3, r5
/* 814B8C64 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 814B8C68 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 814B8C6C | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 814B8C70 | 48 00 00 B0 */	b .L_814B8D20
.L_814B8C74:
/* 814B8C74 | 3B A0 00 04 */	li r29, 0x4
.L_814B8C78:
/* 814B8C78 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814B8C7C | 38 81 00 20 */	addi r4, r1, 0x20
/* 814B8C80 | 48 00 19 0D */	bl VFipdm_mbr_get_epbr_part_table
/* 814B8C84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8C88 | 41 82 00 10 */	beq .L_814B8C98
/* 814B8C8C | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814B8C90 | 41 82 00 08 */	beq .L_814B8C98
/* 814B8C94 | 48 00 00 90 */	b .L_814B8D24
.L_814B8C98:
/* 814B8C98 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814B8C9C | 41 82 00 34 */	beq .L_814B8CD0
/* 814B8CA0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814B8CA4 | 7C 1E 00 40 */	cmplw r30, r0
/* 814B8CA8 | 40 82 00 30 */	bne .L_814B8CD8
/* 814B8CAC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B8CB0 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 814B8CB4 | 80 01 00 38 */	lwz r0, 0x38(r1)
/* 814B8CB8 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 814B8CBC | 88 01 00 29 */	lbz r0, 0x29(r1)
/* 814B8CC0 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 814B8CC4 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 814B8CC8 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 814B8CCC | 48 00 00 54 */	b .L_814B8D20
.L_814B8CD0:
/* 814B8CD0 | 38 60 00 07 */	li r3, 0x7
/* 814B8CD4 | 48 00 00 50 */	b .L_814B8D24
.L_814B8CD8:
/* 814B8CD8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814B8CDC | 4B FF FF 9C */	b .L_814B8C78
.L_814B8CE0:
/* 814B8CE0 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814B8CE4 | 41 80 00 0C */	blt .L_814B8CF0
/* 814B8CE8 | 38 60 00 07 */	li r3, 0x7
/* 814B8CEC | 48 00 00 38 */	b .L_814B8D24
.L_814B8CF0:
/* 814B8CF0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814B8CF4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B8CF8 | 4B FF F9 31 */	bl VFipdm_disk_get_media_information
/* 814B8CFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B8D00 | 41 82 00 08 */	beq .L_814B8D08
/* 814B8D04 | 48 00 00 20 */	b .L_814B8D24
.L_814B8D08:
/* 814B8D08 | 38 60 00 00 */	li r3, 0x0
/* 814B8D0C | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 814B8D10 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814B8D14 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 814B8D18 | 98 7F 00 20 */	stb r3, 0x20(r31)
/* 814B8D1C | 90 7F 00 1C */	stw r3, 0x1c(r31)
.L_814B8D20:
/* 814B8D20 | 38 60 00 00 */	li r3, 0x0
.L_814B8D24:
/* 814B8D24 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 814B8D28 | 83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 814B8D2C | 83 C1 00 88 */	lwz r30, 0x88(r1)
/* 814B8D30 | 83 A1 00 84 */	lwz r29, 0x84(r1)
/* 814B8D34 | 7C 08 03 A6 */	mtlr r0
/* 814B8D38 | 38 21 00 90 */	addi r1, r1, 0x90
/* 814B8D3C | 4E 80 00 20 */	blr
.endfn VFipdm_part_get_start_sector

# .text:0x160 | 0x814B8D40 | size: 0x180
.fn VFipdm_part_convert_lsector_to_block, global
/* 814B8D40 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B8D44 | 7C 08 02 A6 */	mflr r0
/* 814B8D48 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B8D4C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B8D50 | 48 14 07 6D */	bl _savegpr_26
/* 814B8D54 | 7C 7A 1B 78 */	mr r26, r3
/* 814B8D58 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814B8D5C | 7C 9B 23 78 */	mr r27, r4
/* 814B8D60 | 7C BC 2B 78 */	mr r28, r5
/* 814B8D64 | 7C DD 33 78 */	mr r29, r6
/* 814B8D68 | 7C FE 3B 78 */	mr r30, r7
/* 814B8D6C | 7D 1F 43 78 */	mr r31, r8
/* 814B8D70 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B8D74 | 4B FF F7 C9 */	bl VFipdm_disk_get_lba_size
/* 814B8D78 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814B8D7C | 7C 1D 00 40 */	cmplw r29, r0
/* 814B8D80 | 40 82 00 18 */	bne .L_814B8D98
/* 814B8D84 | 80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 814B8D88 | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 814B8D8C | 7C 00 DA 14 */	add r0, r0, r27
/* 814B8D90 | 7C 03 02 14 */	add r0, r3, r0
/* 814B8D94 | 48 00 00 74 */	b .L_814B8E08
.L_814B8D98:
/* 814B8D98 | 54 04 BE 7E */	extrwi r4, r0, 7, 16
/* 814B8D9C | 80 7A 00 14 */	lwz r3, 0x14(r26)
/* 814B8DA0 | 80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 814B8DA4 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814B8DA8 | 7C 63 02 14 */	add r3, r3, r0
/* 814B8DAC | 40 82 00 0C */	bne .L_814B8DB8
/* 814B8DB0 | 54 63 08 3C */	slwi r3, r3, 1
/* 814B8DB4 | 48 00 00 20 */	b .L_814B8DD4
.L_814B8DB8:
/* 814B8DB8 | 28 04 00 04 */	cmplwi r4, 0x4
/* 814B8DBC | 40 82 00 0C */	bne .L_814B8DC8
/* 814B8DC0 | 54 63 10 3A */	slwi r3, r3, 2
/* 814B8DC4 | 48 00 00 10 */	b .L_814B8DD4
.L_814B8DC8:
/* 814B8DC8 | 28 04 00 08 */	cmplwi r4, 0x8
/* 814B8DCC | 40 82 00 08 */	bne .L_814B8DD4
/* 814B8DD0 | 54 63 18 38 */	slwi r3, r3, 3
.L_814B8DD4:
/* 814B8DD4 | 57 A0 BE 7E */	extrwi r0, r29, 7, 16
/* 814B8DD8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814B8DDC | 40 82 00 0C */	bne .L_814B8DE8
/* 814B8DE0 | 54 63 F8 7E */	srwi r3, r3, 1
/* 814B8DE4 | 48 00 00 20 */	b .L_814B8E04
.L_814B8DE8:
/* 814B8DE8 | 28 00 00 04 */	cmplwi r0, 0x4
/* 814B8DEC | 40 82 00 0C */	bne .L_814B8DF8
/* 814B8DF0 | 54 63 F0 BE */	srwi r3, r3, 2
/* 814B8DF4 | 48 00 00 10 */	b .L_814B8E04
.L_814B8DF8:
/* 814B8DF8 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814B8DFC | 40 82 00 08 */	bne .L_814B8E04
/* 814B8E00 | 54 63 E8 FE */	srwi r3, r3, 3
.L_814B8E04:
/* 814B8E04 | 7C 1B 1A 14 */	add r0, r27, r3
.L_814B8E08:
/* 814B8E08 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814B8E0C | 28 1D 02 00 */	cmplwi r29, 0x200
/* 814B8E10 | 93 9F 00 00 */	stw r28, 0x0(r31)
/* 814B8E14 | 40 81 00 90 */	ble .L_814B8EA4
/* 814B8E18 | 57 A3 BE 7E */	extrwi r3, r29, 7, 16
/* 814B8E1C | 28 03 00 02 */	cmplwi r3, 0x2
/* 814B8E20 | 40 82 00 14 */	bne .L_814B8E34
/* 814B8E24 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814B8E28 | 54 00 08 3C */	slwi r0, r0, 1
/* 814B8E2C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814B8E30 | 48 00 00 30 */	b .L_814B8E60
.L_814B8E34:
/* 814B8E34 | 28 03 00 04 */	cmplwi r3, 0x4
/* 814B8E38 | 40 82 00 14 */	bne .L_814B8E4C
/* 814B8E3C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814B8E40 | 54 00 10 3A */	slwi r0, r0, 2
/* 814B8E44 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814B8E48 | 48 00 00 18 */	b .L_814B8E60
.L_814B8E4C:
/* 814B8E4C | 28 03 00 08 */	cmplwi r3, 0x8
/* 814B8E50 | 40 82 00 10 */	bne .L_814B8E60
/* 814B8E54 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814B8E58 | 54 00 18 38 */	slwi r0, r0, 3
/* 814B8E5C | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814B8E60:
/* 814B8E60 | 28 03 00 02 */	cmplwi r3, 0x2
/* 814B8E64 | 40 82 00 14 */	bne .L_814B8E78
/* 814B8E68 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814B8E6C | 54 00 08 3C */	slwi r0, r0, 1
/* 814B8E70 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814B8E74 | 48 00 00 30 */	b .L_814B8EA4
.L_814B8E78:
/* 814B8E78 | 28 03 00 04 */	cmplwi r3, 0x4
/* 814B8E7C | 40 82 00 14 */	bne .L_814B8E90
/* 814B8E80 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814B8E84 | 54 00 10 3A */	slwi r0, r0, 2
/* 814B8E88 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814B8E8C | 48 00 00 18 */	b .L_814B8EA4
.L_814B8E90:
/* 814B8E90 | 28 03 00 08 */	cmplwi r3, 0x8
/* 814B8E94 | 40 82 00 10 */	bne .L_814B8EA4
/* 814B8E98 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814B8E9C | 54 00 18 38 */	slwi r0, r0, 3
/* 814B8EA0 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814B8EA4:
/* 814B8EA4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B8EA8 | 38 60 00 00 */	li r3, 0x0
/* 814B8EAC | 48 14 06 5D */	bl _restgpr_26
/* 814B8EB0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B8EB4 | 7C 08 03 A6 */	mtlr r0
/* 814B8EB8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B8EBC | 4E 80 00 20 */	blr
.endfn VFipdm_part_convert_lsector_to_block

# .text:0x2E0 | 0x814B8EC0 | size: 0x184
.fn VFipdm_part_get_handle, global
/* 814B8EC0 | 38 00 00 00 */	li r0, 0x0
/* 814B8EC4 | 3D 40 81 0D */	lis r10, VFipdm_disk_set_810CCC20@ha
/* 814B8EC8 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814B8ECC | 39 20 00 0D */	li r9, 0xd
/* 814B8ED0 | 39 4A CC 20 */	addi r10, r10, VFipdm_disk_set_810CCC20@l
/* 814B8ED4 | 39 00 00 00 */	li r8, 0x0
/* 814B8ED8 | 38 00 00 00 */	li r0, 0x0
/* 814B8EDC | 39 60 00 00 */	li r11, 0x0
/* 814B8EE0 | 7D 29 03 A6 */	mtctr r9
.L_814B8EE4:
/* 814B8EE4 | 55 69 1B 78 */	clrlslwi r9, r11, 16, 3
/* 814B8EE8 | 7D 2A 4A 14 */	add r9, r10, r9
/* 814B8EEC | 81 29 00 D8 */	lwz r9, 0xd8(r9)
/* 814B8EF0 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814B8EF4 | 41 82 00 24 */	beq .L_814B8F18
/* 814B8EF8 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814B8EFC | 55 69 1B 78 */	clrlslwi r9, r11, 16, 3
/* 814B8F00 | 7D 2A 4A 14 */	add r9, r10, r9
/* 814B8F04 | 81 29 00 D8 */	lwz r9, 0xd8(r9)
/* 814B8F08 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814B8F0C | 41 82 00 0C */	beq .L_814B8F18
/* 814B8F10 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 814B8F14 | 42 00 FF D0 */	bdnz .L_814B8EE4
.L_814B8F18:
/* 814B8F18 | 55 69 04 3E */	clrlwi r9, r11, 16
/* 814B8F1C | 28 09 00 1A */	cmplwi r9, 0x1a
/* 814B8F20 | 41 80 00 0C */	blt .L_814B8F2C
/* 814B8F24 | 38 60 00 0A */	li r3, 0xa
/* 814B8F28 | 4E 80 00 20 */	blr
.L_814B8F2C:
/* 814B8F2C | 3D 40 81 0D */	lis r10, VFipdm_disk_set_810CCC20@ha
/* 814B8F30 | 39 20 00 0D */	li r9, 0xd
/* 814B8F34 | B1 67 00 00 */	sth r11, 0x0(r7)
/* 814B8F38 | 39 4A CC 20 */	addi r10, r10, VFipdm_disk_set_810CCC20@l
/* 814B8F3C | 39 80 00 00 */	li r12, 0x0
/* 814B8F40 | 7D 29 03 A6 */	mtctr r9
.L_814B8F44:
/* 814B8F44 | 55 87 04 3E */	clrlwi r7, r12, 16
/* 814B8F48 | 1C E7 00 2C */	mulli r7, r7, 0x2c
/* 814B8F4C | 7D 6A 3A 14 */	add r11, r10, r7
/* 814B8F50 | 80 EB 07 54 */	lwz r7, 0x754(r11)
/* 814B8F54 | 39 2B 07 54 */	addi r9, r11, 0x754
/* 814B8F58 | 54 E7 07 FF */	clrlwi. r7, r7, 31
/* 814B8F5C | 40 82 00 18 */	bne .L_814B8F74
/* 814B8F60 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814B8F64 | 40 82 00 38 */	bne .L_814B8F9C
/* 814B8F68 | 7D 28 4B 78 */	mr r8, r9
/* 814B8F6C | 7D 80 63 78 */	mr r0, r12
/* 814B8F70 | 48 00 00 2C */	b .L_814B8F9C
.L_814B8F74:
/* 814B8F74 | A0 EB 07 60 */	lhz r7, 0x760(r11)
/* 814B8F78 | 7C 04 38 40 */	cmplw r4, r7
/* 814B8F7C | 40 82 00 20 */	bne .L_814B8F9C
/* 814B8F80 | 80 EB 07 58 */	lwz r7, 0x758(r11)
/* 814B8F84 | 7C 07 18 40 */	cmplw r7, r3
/* 814B8F88 | 40 82 00 14 */	bne .L_814B8F9C
/* 814B8F8C | 91 25 00 00 */	stw r9, 0x0(r5)
/* 814B8F90 | 38 60 00 00 */	li r3, 0x0
/* 814B8F94 | B1 86 00 00 */	sth r12, 0x0(r6)
/* 814B8F98 | 4E 80 00 20 */	blr
.L_814B8F9C:
/* 814B8F9C | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814B8FA0 | 55 87 04 3E */	clrlwi r7, r12, 16
/* 814B8FA4 | 1C E7 00 2C */	mulli r7, r7, 0x2c
/* 814B8FA8 | 7D 6A 3A 14 */	add r11, r10, r7
/* 814B8FAC | 80 EB 07 54 */	lwz r7, 0x754(r11)
/* 814B8FB0 | 39 2B 07 54 */	addi r9, r11, 0x754
/* 814B8FB4 | 54 E7 07 FF */	clrlwi. r7, r7, 31
/* 814B8FB8 | 40 82 00 18 */	bne .L_814B8FD0
/* 814B8FBC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814B8FC0 | 40 82 00 38 */	bne .L_814B8FF8
/* 814B8FC4 | 7D 28 4B 78 */	mr r8, r9
/* 814B8FC8 | 7D 80 63 78 */	mr r0, r12
/* 814B8FCC | 48 00 00 2C */	b .L_814B8FF8
.L_814B8FD0:
/* 814B8FD0 | A0 EB 07 60 */	lhz r7, 0x760(r11)
/* 814B8FD4 | 7C 04 38 40 */	cmplw r4, r7
/* 814B8FD8 | 40 82 00 20 */	bne .L_814B8FF8
/* 814B8FDC | 80 EB 07 58 */	lwz r7, 0x758(r11)
/* 814B8FE0 | 7C 07 18 40 */	cmplw r7, r3
/* 814B8FE4 | 40 82 00 14 */	bne .L_814B8FF8
/* 814B8FE8 | 91 25 00 00 */	stw r9, 0x0(r5)
/* 814B8FEC | 38 60 00 00 */	li r3, 0x0
/* 814B8FF0 | B1 86 00 00 */	sth r12, 0x0(r6)
/* 814B8FF4 | 4E 80 00 20 */	blr
.L_814B8FF8:
/* 814B8FF8 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814B8FFC | 42 00 FF 48 */	bdnz .L_814B8F44
/* 814B9000 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814B9004 | 40 82 00 0C */	bne .L_814B9010
/* 814B9008 | 38 60 00 0A */	li r3, 0xa
/* 814B900C | 4E 80 00 20 */	blr
.L_814B9010:
/* 814B9010 | 80 E8 00 00 */	lwz r7, 0x0(r8)
/* 814B9014 | 3D 20 81 0D */	lis r9, VFipdm_disk_set_810CCC20@ha
/* 814B9018 | 60 E7 00 01 */	ori r7, r7, 0x1
/* 814B901C | 90 E8 00 00 */	stw r7, 0x0(r8)
/* 814B9020 | A0 E9 CC 20 */	lhz r7, VFipdm_disk_set_810CCC20@l(r9)
/* 814B9024 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814B9028 | B0 E9 CC 20 */	sth r7, VFipdm_disk_set_810CCC20@l(r9)
/* 814B902C | 90 68 00 04 */	stw r3, 0x4(r8)
/* 814B9030 | 38 60 00 00 */	li r3, 0x0
/* 814B9034 | B0 88 00 0C */	sth r4, 0xc(r8)
/* 814B9038 | 91 05 00 00 */	stw r8, 0x0(r5)
/* 814B903C | B0 06 00 00 */	sth r0, 0x0(r6)
/* 814B9040 | 4E 80 00 20 */	blr
.endfn VFipdm_part_get_handle

# .text:0x464 | 0x814B9044 | size: 0x124
.fn VFipdm_part_open_partition, global
/* 814B9044 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B9048 | 7C 08 02 A6 */	mflr r0
/* 814B904C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9050 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B9054 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B9058 | 7C BF 2B 78 */	mr r31, r5
/* 814B905C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B9060 | 7C 7E 1B 78 */	mr r30, r3
/* 814B9064 | 41 82 00 0C */	beq .L_814B9070
/* 814B9068 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B906C | 40 82 00 0C */	bne .L_814B9078
.L_814B9070:
/* 814B9070 | 38 60 00 01 */	li r3, 0x1
/* 814B9074 | 48 00 00 DC */	b .L_814B9150
.L_814B9078:
/* 814B9078 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814B907C | 38 C1 00 0A */	addi r6, r1, 0xa
/* 814B9080 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814B9084 | 4B FF FE 3D */	bl VFipdm_part_get_handle
/* 814B9088 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B908C | 41 82 00 08 */	beq .L_814B9094
/* 814B9090 | 48 00 00 C0 */	b .L_814B9150
.L_814B9094:
/* 814B9094 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B9098 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814B909C | 38 03 00 01 */	addi r0, r3, 0x1
/* 814B90A0 | 90 04 00 08 */	stw r0, 0x8(r4)
/* 814B90A4 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814B90A8 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814B90AC | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814B90B0 | 40 81 00 0C */	ble .L_814B90BC
/* 814B90B4 | 38 00 00 00 */	li r0, 0x0
/* 814B90B8 | 90 03 00 08 */	stw r0, 0x8(r3)
.L_814B90BC:
/* 814B90BC | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 814B90C0 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B90C4 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B90C8 | 7F C3 F3 78 */	mr r3, r30
/* 814B90CC | A0 C7 00 0E */	lhz r6, 0xe(r7)
/* 814B90D0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814B90D4 | 38 06 00 01 */	addi r0, r6, 0x1
/* 814B90D8 | B0 07 00 0E */	sth r0, 0xe(r7)
/* 814B90DC | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814B90E0 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 814B90E4 | 54 06 18 38 */	slwi r6, r0, 3
/* 814B90E8 | 80 07 00 08 */	lwz r0, 0x8(r7)
/* 814B90EC | 7C A5 32 14 */	add r5, r5, r6
/* 814B90F0 | 90 05 00 D4 */	stw r0, 0xd4(r5)
/* 814B90F4 | 90 E5 00 D8 */	stw r7, 0xd8(r5)
/* 814B90F8 | 4B FF F6 3D */	bl VFipdm_disk_check_media_insert
/* 814B90FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9100 | 41 82 00 08 */	beq .L_814B9108
/* 814B9104 | 48 00 00 4C */	b .L_814B9150
.L_814B9108:
/* 814B9108 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814B910C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B9110 | 41 82 00 14 */	beq .L_814B9124
/* 814B9114 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814B9118 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814B911C | 60 00 00 04 */	ori r0, r0, 0x4
/* 814B9120 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814B9124:
/* 814B9124 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814B9128 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B912C | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B9130 | 38 60 00 00 */	li r3, 0x0
/* 814B9134 | 1C 80 00 2C */	mulli r4, r0, 0x2c
/* 814B9138 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814B913C | 60 00 04 00 */	ori r0, r0, 0x400
/* 814B9140 | 7C 85 22 14 */	add r4, r5, r4
/* 814B9144 | 80 84 07 5C */	lwz r4, 0x75c(r4)
/* 814B9148 | 50 80 80 1E */	rlwimi r0, r4, 16, 0, 15
/* 814B914C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814B9150:
/* 814B9150 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B9154 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B9158 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B915C | 7C 08 03 A6 */	mtlr r0
/* 814B9160 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B9164 | 4E 80 00 20 */	blr
.endfn VFipdm_part_open_partition

# .text:0x588 | 0x814B9168 | size: 0x1DC
.fn VFipdm_part_close_partition, global
/* 814B9168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B916C | 40 82 00 0C */	bne .L_814B9178
/* 814B9170 | 38 60 00 01 */	li r3, 0x1
/* 814B9174 | 4E 80 00 20 */	blr
.L_814B9178:
/* 814B9178 | 54 69 06 3E */	clrlwi r9, r3, 24
/* 814B917C | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B9180 | 28 09 00 1A */	cmplwi r9, 0x1a
/* 814B9184 | 40 80 00 0C */	bge .L_814B9190
/* 814B9188 | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B918C | 41 82 00 0C */	beq .L_814B9198
.L_814B9190:
/* 814B9190 | 38 80 00 01 */	li r4, 0x1
/* 814B9194 | 48 00 00 90 */	b .L_814B9224
.L_814B9198:
/* 814B9198 | 1C 89 00 2C */	mulli r4, r9, 0x2c
/* 814B919C | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B91A0 | 38 00 00 0D */	li r0, 0xd
/* 814B91A4 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B91A8 | 7C 85 22 14 */	add r4, r5, r4
/* 814B91AC | 54 68 84 3E */	srwi r8, r3, 16
/* 814B91B0 | 38 E4 07 54 */	addi r7, r4, 0x754
/* 814B91B4 | 38 C0 00 00 */	li r6, 0x0
/* 814B91B8 | 7C 09 03 A6 */	mtctr r0
.L_814B91BC:
/* 814B91BC | 54 C4 1B 78 */	clrlslwi r4, r6, 16, 3
/* 814B91C0 | 7D 45 22 14 */	add r10, r5, r4
/* 814B91C4 | 80 8A 00 D8 */	lwz r4, 0xd8(r10)
/* 814B91C8 | 7C 04 38 40 */	cmplw r4, r7
/* 814B91CC | 40 82 00 10 */	bne .L_814B91DC
/* 814B91D0 | 80 8A 00 D4 */	lwz r4, 0xd4(r10)
/* 814B91D4 | 7C 08 20 40 */	cmplw r8, r4
/* 814B91D8 | 41 82 00 30 */	beq .L_814B9208
.L_814B91DC:
/* 814B91DC | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814B91E0 | 54 C4 1B 78 */	clrlslwi r4, r6, 16, 3
/* 814B91E4 | 7D 45 22 14 */	add r10, r5, r4
/* 814B91E8 | 80 8A 00 D8 */	lwz r4, 0xd8(r10)
/* 814B91EC | 7C 04 38 40 */	cmplw r4, r7
/* 814B91F0 | 40 82 00 10 */	bne .L_814B9200
/* 814B91F4 | 80 8A 00 D4 */	lwz r4, 0xd4(r10)
/* 814B91F8 | 7C 08 20 40 */	cmplw r8, r4
/* 814B91FC | 41 82 00 0C */	beq .L_814B9208
.L_814B9200:
/* 814B9200 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814B9204 | 42 00 FF B8 */	bdnz .L_814B91BC
.L_814B9208:
/* 814B9208 | 54 C6 04 3E */	clrlwi r6, r6, 16
/* 814B920C | 38 A0 00 1A */	li r5, 0x1a
/* 814B9210 | 38 86 FF E6 */	subi r4, r6, 0x1a
/* 814B9214 | 7C C5 2B 38 */	orc r5, r6, r5
/* 814B9218 | 54 84 F8 7E */	srwi r4, r4, 1
/* 814B921C | 7C 84 28 50 */	subf r4, r4, r5
/* 814B9220 | 54 84 0F FE */	srwi r4, r4, 31
.L_814B9224:
/* 814B9224 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B9228 | 41 82 00 0C */	beq .L_814B9234
/* 814B922C | 7C 83 23 78 */	mr r3, r4
/* 814B9230 | 4E 80 00 20 */	blr
.L_814B9234:
/* 814B9234 | 1C 89 00 2C */	mulli r4, r9, 0x2c
/* 814B9238 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B923C | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B9240 | 7C 85 22 14 */	add r4, r5, r4
/* 814B9244 | 80 C4 07 54 */	lwz r6, 0x754(r4)
/* 814B9248 | 39 04 07 54 */	addi r8, r4, 0x754
/* 814B924C | 54 C4 07 FF */	clrlwi. r4, r6, 31
/* 814B9250 | 40 82 00 0C */	bne .L_814B925C
/* 814B9254 | 38 60 00 0C */	li r3, 0xc
/* 814B9258 | 4E 80 00 20 */	blr
.L_814B925C:
/* 814B925C | 54 C4 07 BC */	rlwinm r4, r6, 0, 30, 30
/* 814B9260 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814B9264 | 40 82 00 0C */	bne .L_814B9270
/* 814B9268 | 38 60 00 0D */	li r3, 0xd
/* 814B926C | 4E 80 00 20 */	blr
.L_814B9270:
/* 814B9270 | 38 80 00 0D */	li r4, 0xd
/* 814B9274 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B9278 | 38 C0 00 00 */	li r6, 0x0
/* 814B927C | 7C 89 03 A6 */	mtctr r4
.L_814B9280:
/* 814B9280 | 54 C3 1B 78 */	clrlslwi r3, r6, 16, 3
/* 814B9284 | 7C 85 1A 14 */	add r4, r5, r3
/* 814B9288 | 80 64 00 D8 */	lwz r3, 0xd8(r4)
/* 814B928C | 7C 03 40 40 */	cmplw r3, r8
/* 814B9290 | 40 82 00 10 */	bne .L_814B92A0
/* 814B9294 | 80 64 00 D4 */	lwz r3, 0xd4(r4)
/* 814B9298 | 7C 07 18 40 */	cmplw r7, r3
/* 814B929C | 41 82 00 30 */	beq .L_814B92CC
.L_814B92A0:
/* 814B92A0 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814B92A4 | 54 C3 1B 78 */	clrlslwi r3, r6, 16, 3
/* 814B92A8 | 7C 85 1A 14 */	add r4, r5, r3
/* 814B92AC | 80 64 00 D8 */	lwz r3, 0xd8(r4)
/* 814B92B0 | 7C 03 40 40 */	cmplw r3, r8
/* 814B92B4 | 40 82 00 10 */	bne .L_814B92C4
/* 814B92B8 | 80 64 00 D4 */	lwz r3, 0xd4(r4)
/* 814B92BC | 7C 07 18 40 */	cmplw r7, r3
/* 814B92C0 | 41 82 00 0C */	beq .L_814B92CC
.L_814B92C4:
/* 814B92C4 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814B92C8 | 42 00 FF B8 */	bdnz .L_814B9280
.L_814B92CC:
/* 814B92CC | 54 C3 04 3E */	clrlwi r3, r6, 16
/* 814B92D0 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814B92D4 | 41 80 00 0C */	blt .L_814B92E0
/* 814B92D8 | 38 60 00 01 */	li r3, 0x1
/* 814B92DC | 48 00 00 0C */	b .L_814B92E8
.L_814B92E0:
/* 814B92E0 | 7C C0 33 78 */	mr r0, r6
/* 814B92E4 | 38 60 00 00 */	li r3, 0x0
.L_814B92E8:
/* 814B92E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B92EC | 4C 82 00 20 */	bnelr
/* 814B92F0 | A0 68 00 0E */	lhz r3, 0xe(r8)
/* 814B92F4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814B92F8 | 40 82 00 20 */	bne .L_814B9318
/* 814B92FC | 80 68 00 00 */	lwz r3, 0x0(r8)
/* 814B9300 | 3C 80 81 0D */	lis r4, VFipdm_disk_set_810CCC20@ha
/* 814B9304 | 54 63 00 3C */	clrrwi r3, r3, 1
/* 814B9308 | 90 68 00 00 */	stw r3, 0x0(r8)
/* 814B930C | A0 64 CC 20 */	lhz r3, VFipdm_disk_set_810CCC20@l(r4)
/* 814B9310 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814B9314 | B0 64 CC 20 */	sth r3, VFipdm_disk_set_810CCC20@l(r4)
.L_814B9318:
/* 814B9318 | A0 88 00 0E */	lhz r4, 0xe(r8)
/* 814B931C | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814B9320 | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814B9324 | 54 00 1B 78 */	clrlslwi r0, r0, 16, 3
/* 814B9328 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814B932C | 38 A0 00 00 */	li r5, 0x0
/* 814B9330 | B0 88 00 0E */	sth r4, 0xe(r8)
/* 814B9334 | 7C 83 02 14 */	add r4, r3, r0
/* 814B9338 | 38 60 00 00 */	li r3, 0x0
/* 814B933C | 90 A4 00 D8 */	stw r5, 0xd8(r4)
/* 814B9340 | 4E 80 00 20 */	blr
.endfn VFipdm_part_close_partition

# .text:0x764 | 0x814B9344 | size: 0x1D8
.fn VFipdm_part_get_permission, global
/* 814B9344 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B9348 | 7C 08 02 A6 */	mflr r0
/* 814B934C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9350 | 7C 64 1B 78 */	mr r4, r3
/* 814B9354 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B9358 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814B935C | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814B9360 | 40 82 00 0C */	bne .L_814B936C
/* 814B9364 | 38 60 00 01 */	li r3, 0x1
/* 814B9368 | 48 00 01 9C */	b .L_814B9504
.L_814B936C:
/* 814B936C | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B9370 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B9374 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B9378 | 40 80 00 0C */	bge .L_814B9384
/* 814B937C | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B9380 | 41 82 00 0C */	beq .L_814B938C
.L_814B9384:
/* 814B9384 | 38 60 00 01 */	li r3, 0x1
/* 814B9388 | 48 00 00 90 */	b .L_814B9418
.L_814B938C:
/* 814B938C | 1C A8 00 2C */	mulli r5, r8, 0x2c
/* 814B9390 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B9394 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B9398 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B939C | 7C A6 2A 14 */	add r5, r6, r5
/* 814B93A0 | 38 00 00 0D */	li r0, 0xd
/* 814B93A4 | 38 A5 07 54 */	addi r5, r5, 0x754
/* 814B93A8 | 38 60 00 00 */	li r3, 0x0
/* 814B93AC | 7C 09 03 A6 */	mtctr r0
.L_814B93B0:
/* 814B93B0 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B93B4 | 7D 26 02 14 */	add r9, r6, r0
/* 814B93B8 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B93BC | 7C 00 28 40 */	cmplw r0, r5
/* 814B93C0 | 40 82 00 10 */	bne .L_814B93D0
/* 814B93C4 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B93C8 | 7C 07 00 40 */	cmplw r7, r0
/* 814B93CC | 41 82 00 30 */	beq .L_814B93FC
.L_814B93D0:
/* 814B93D0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B93D4 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B93D8 | 7D 26 02 14 */	add r9, r6, r0
/* 814B93DC | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B93E0 | 7C 00 28 40 */	cmplw r0, r5
/* 814B93E4 | 40 82 00 10 */	bne .L_814B93F4
/* 814B93E8 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B93EC | 7C 07 00 40 */	cmplw r7, r0
/* 814B93F0 | 41 82 00 0C */	beq .L_814B93FC
.L_814B93F4:
/* 814B93F4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B93F8 | 42 00 FF B8 */	bdnz .L_814B93B0
.L_814B93FC:
/* 814B93FC | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814B9400 | 38 60 00 1A */	li r3, 0x1a
/* 814B9404 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B9408 | 7C A3 1B 38 */	orc r3, r5, r3
/* 814B940C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B9410 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B9414 | 54 03 0F FE */	srwi r3, r0, 31
.L_814B9418:
/* 814B9418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B941C | 41 82 00 08 */	beq .L_814B9424
/* 814B9420 | 48 00 00 E4 */	b .L_814B9504
.L_814B9424:
/* 814B9424 | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814B9428 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814B942C | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814B9430 | 7C 63 02 14 */	add r3, r3, r0
/* 814B9434 | 80 03 07 54 */	lwz r0, 0x754(r3)
/* 814B9438 | 3B C3 07 54 */	addi r30, r3, 0x754
/* 814B943C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814B9440 | 40 82 00 A8 */	bne .L_814B94E8
/* 814B9444 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814B9448 | 4B FF F4 F5 */	bl VFipdm_disk_set_disk
/* 814B944C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9450 | 41 82 00 08 */	beq .L_814B9458
/* 814B9454 | 48 00 00 B0 */	b .L_814B9504
.L_814B9458:
/* 814B9458 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814B945C | 4B FF E9 51 */	bl VFipdm_disk_get_part_permission
/* 814B9460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9464 | 41 82 00 08 */	beq .L_814B946C
/* 814B9468 | 48 00 00 9C */	b .L_814B9504
.L_814B946C:
/* 814B946C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814B9470 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B9474 | 4B FF F1 B5 */	bl VFipdm_disk_get_media_information
/* 814B9478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B947C | 7C 7F 1B 78 */	mr r31, r3
/* 814B9480 | 41 82 00 18 */	beq .L_814B9498
/* 814B9484 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814B9488 | 38 80 00 01 */	li r4, 0x1
/* 814B948C | 4B FF EA 09 */	bl VFipdm_disk_release_part_permission
/* 814B9490 | 7F E3 FB 78 */	mr r3, r31
/* 814B9494 | 48 00 00 70 */	b .L_814B9504
.L_814B9498:
/* 814B9498 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B949C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814B94A0 | 41 82 00 14 */	beq .L_814B94B4
/* 814B94A4 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814B94A8 | 60 00 00 10 */	ori r0, r0, 0x10
/* 814B94AC | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814B94B0 | 48 00 00 10 */	b .L_814B94C0
.L_814B94B4:
/* 814B94B4 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814B94B8 | 54 00 07 34 */	rlwinm r0, r0, 0, 28, 26
/* 814B94BC | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814B94C0:
/* 814B94C0 | 7F C3 F3 78 */	mr r3, r30
/* 814B94C4 | 4B FF F7 1D */	bl VFipdm_part_get_start_sector
/* 814B94C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B94CC | 7C 7F 1B 78 */	mr r31, r3
/* 814B94D0 | 41 82 00 20 */	beq .L_814B94F0
/* 814B94D4 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 814B94D8 | 38 80 00 01 */	li r4, 0x1
/* 814B94DC | 4B FF E9 B9 */	bl VFipdm_disk_release_part_permission
/* 814B94E0 | 7F E3 FB 78 */	mr r3, r31
/* 814B94E4 | 48 00 00 20 */	b .L_814B9504
.L_814B94E8:
/* 814B94E8 | 38 60 00 0D */	li r3, 0xd
/* 814B94EC | 48 00 00 18 */	b .L_814B9504
.L_814B94F0:
/* 814B94F0 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814B94F4 | 38 60 00 00 */	li r3, 0x0
/* 814B94F8 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814B94FC | 54 00 07 76 */	rlwinm r0, r0, 0, 29, 27
/* 814B9500 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814B9504:
/* 814B9504 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B9508 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814B950C | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814B9510 | 7C 08 03 A6 */	mtlr r0
/* 814B9514 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B9518 | 4E 80 00 20 */	blr
.endfn VFipdm_part_get_permission

# .text:0x93C | 0x814B951C | size: 0x180
.fn VFipdm_part_release_permission, global
/* 814B951C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B9520 | 7C 08 02 A6 */	mflr r0
/* 814B9524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9528 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B952C | 7C 60 1B 78 */	mr r0, r3
/* 814B9530 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B9534 | 3B E0 00 00 */	li r31, 0x0
/* 814B9538 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B953C | 7C 9E 23 78 */	mr r30, r4
/* 814B9540 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B9544 | 40 82 00 0C */	bne .L_814B9550
/* 814B9548 | 38 60 00 01 */	li r3, 0x1
/* 814B954C | 48 00 01 34 */	b .L_814B9680
.L_814B9550:
/* 814B9550 | 54 69 06 3E */	clrlwi r9, r3, 24
/* 814B9554 | 54 64 04 2E */	rlwinm r4, r3, 0, 16, 23
/* 814B9558 | 28 09 00 1A */	cmplwi r9, 0x1a
/* 814B955C | 40 80 00 0C */	bge .L_814B9568
/* 814B9560 | 28 04 04 00 */	cmplwi r4, 0x400
/* 814B9564 | 41 82 00 0C */	beq .L_814B9570
.L_814B9568:
/* 814B9568 | 38 60 00 01 */	li r3, 0x1
/* 814B956C | 48 00 00 90 */	b .L_814B95FC
.L_814B9570:
/* 814B9570 | 1C A9 00 2C */	mulli r5, r9, 0x2c
/* 814B9574 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B9578 | 38 80 00 0D */	li r4, 0xd
/* 814B957C | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B9580 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B9584 | 54 68 84 3E */	srwi r8, r3, 16
/* 814B9588 | 38 E5 07 54 */	addi r7, r5, 0x754
/* 814B958C | 38 A0 00 00 */	li r5, 0x0
/* 814B9590 | 7C 89 03 A6 */	mtctr r4
.L_814B9594:
/* 814B9594 | 54 A3 1B 78 */	clrlslwi r3, r5, 16, 3
/* 814B9598 | 7C 86 1A 14 */	add r4, r6, r3
/* 814B959C | 80 64 00 D8 */	lwz r3, 0xd8(r4)
/* 814B95A0 | 7C 03 38 40 */	cmplw r3, r7
/* 814B95A4 | 40 82 00 10 */	bne .L_814B95B4
/* 814B95A8 | 80 64 00 D4 */	lwz r3, 0xd4(r4)
/* 814B95AC | 7C 08 18 40 */	cmplw r8, r3
/* 814B95B0 | 41 82 00 30 */	beq .L_814B95E0
.L_814B95B4:
/* 814B95B4 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814B95B8 | 54 A3 1B 78 */	clrlslwi r3, r5, 16, 3
/* 814B95BC | 7C 86 1A 14 */	add r4, r6, r3
/* 814B95C0 | 80 64 00 D8 */	lwz r3, 0xd8(r4)
/* 814B95C4 | 7C 03 38 40 */	cmplw r3, r7
/* 814B95C8 | 40 82 00 10 */	bne .L_814B95D8
/* 814B95CC | 80 64 00 D4 */	lwz r3, 0xd4(r4)
/* 814B95D0 | 7C 08 18 40 */	cmplw r8, r3
/* 814B95D4 | 41 82 00 0C */	beq .L_814B95E0
.L_814B95D8:
/* 814B95D8 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814B95DC | 42 00 FF B8 */	bdnz .L_814B9594
.L_814B95E0:
/* 814B95E0 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 814B95E4 | 38 80 00 1A */	li r4, 0x1a
/* 814B95E8 | 38 65 FF E6 */	subi r3, r5, 0x1a
/* 814B95EC | 7C A4 23 38 */	orc r4, r5, r4
/* 814B95F0 | 54 63 F8 7E */	srwi r3, r3, 1
/* 814B95F4 | 7C 63 20 50 */	subf r3, r3, r4
/* 814B95F8 | 54 63 0F FE */	srwi r3, r3, 31
.L_814B95FC:
/* 814B95FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9600 | 41 82 00 08 */	beq .L_814B9608
/* 814B9604 | 48 00 00 7C */	b .L_814B9680
.L_814B9608:
/* 814B9608 | 1C 69 00 2C */	mulli r3, r9, 0x2c
/* 814B960C | 3C 80 81 0D */	lis r4, VFipdm_disk_set_810CCC20@ha
/* 814B9610 | 38 84 CC 20 */	addi r4, r4, VFipdm_disk_set_810CCC20@l
/* 814B9614 | 7F A4 1A 14 */	add r29, r4, r3
/* 814B9618 | 80 7D 07 54 */	lwz r3, 0x754(r29)
/* 814B961C | 54 63 07 BD */	rlwinm. r3, r3, 0, 30, 30
/* 814B9620 | 40 82 00 0C */	bne .L_814B962C
/* 814B9624 | 38 60 00 0E */	li r3, 0xe
/* 814B9628 | 48 00 00 58 */	b .L_814B9680
.L_814B962C:
/* 814B962C | 80 7D 07 58 */	lwz r3, 0x758(r29)
/* 814B9630 | 7C 04 03 78 */	mr r4, r0
/* 814B9634 | 4B FF F3 09 */	bl VFipdm_disk_set_disk
/* 814B9638 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B963C | 41 82 00 08 */	beq .L_814B9644
/* 814B9640 | 48 00 00 40 */	b .L_814B9680
.L_814B9644:
/* 814B9644 | 80 7D 07 58 */	lwz r3, 0x758(r29)
/* 814B9648 | 7F C4 F3 78 */	mr r4, r30
/* 814B964C | 4B FF E8 49 */	bl VFipdm_disk_release_part_permission
/* 814B9650 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9654 | 41 82 00 08 */	beq .L_814B965C
/* 814B9658 | 7C 7F 1B 78 */	mr r31, r3
.L_814B965C:
/* 814B965C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B9660 | 41 82 00 0C */	beq .L_814B966C
/* 814B9664 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814B9668 | 40 82 00 14 */	bne .L_814B967C
.L_814B966C:
/* 814B966C | 80 1D 07 54 */	lwz r0, 0x754(r29)
/* 814B9670 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814B9674 | 54 00 07 74 */	rlwinm r0, r0, 0, 29, 26
/* 814B9678 | 90 1D 07 54 */	stw r0, 0x754(r29)
.L_814B967C:
/* 814B967C | 7F E3 FB 78 */	mr r3, r31
.L_814B9680:
/* 814B9680 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B9684 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B9688 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B968C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B9690 | 7C 08 03 A6 */	mtlr r0
/* 814B9694 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B9698 | 4E 80 00 20 */	blr
.endfn VFipdm_part_release_permission

# .text:0xABC | 0x814B969C | size: 0x140
.fn VFipdm_part_format, global
/* 814B969C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B96A0 | 7C 08 02 A6 */	mflr r0
/* 814B96A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B96A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B96AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B96B0 | 7C 9F 23 78 */	mr r31, r4
/* 814B96B4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814B96B8 | 40 82 00 0C */	bne .L_814B96C4
/* 814B96BC | 38 60 00 01 */	li r3, 0x1
/* 814B96C0 | 48 00 01 04 */	b .L_814B97C4
.L_814B96C4:
/* 814B96C4 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B96C8 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B96CC | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B96D0 | 40 80 00 0C */	bge .L_814B96DC
/* 814B96D4 | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B96D8 | 41 82 00 0C */	beq .L_814B96E4
.L_814B96DC:
/* 814B96DC | 38 00 00 01 */	li r0, 0x1
/* 814B96E0 | 48 00 00 90 */	b .L_814B9770
.L_814B96E4:
/* 814B96E4 | 1C 88 00 2C */	mulli r4, r8, 0x2c
/* 814B96E8 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B96EC | 38 00 00 0D */	li r0, 0xd
/* 814B96F0 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B96F4 | 7C 85 22 14 */	add r4, r5, r4
/* 814B96F8 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B96FC | 38 C4 07 54 */	addi r6, r4, 0x754
/* 814B9700 | 38 80 00 00 */	li r4, 0x0
/* 814B9704 | 7C 09 03 A6 */	mtctr r0
.L_814B9708:
/* 814B9708 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B970C | 7D 25 02 14 */	add r9, r5, r0
/* 814B9710 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9714 | 7C 00 30 40 */	cmplw r0, r6
/* 814B9718 | 40 82 00 10 */	bne .L_814B9728
/* 814B971C | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9720 | 7C 07 00 40 */	cmplw r7, r0
/* 814B9724 | 41 82 00 30 */	beq .L_814B9754
.L_814B9728:
/* 814B9728 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B972C | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B9730 | 7D 25 02 14 */	add r9, r5, r0
/* 814B9734 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9738 | 7C 00 30 40 */	cmplw r0, r6
/* 814B973C | 40 82 00 10 */	bne .L_814B974C
/* 814B9740 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9744 | 7C 07 00 40 */	cmplw r7, r0
/* 814B9748 | 41 82 00 0C */	beq .L_814B9754
.L_814B974C:
/* 814B974C | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B9750 | 42 00 FF B8 */	bdnz .L_814B9708
.L_814B9754:
/* 814B9754 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814B9758 | 38 80 00 1A */	li r4, 0x1a
/* 814B975C | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B9760 | 7C A4 23 38 */	orc r4, r5, r4
/* 814B9764 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B9768 | 7C 00 20 50 */	subf r0, r0, r4
/* 814B976C | 54 00 0F FE */	srwi r0, r0, 31
.L_814B9770:
/* 814B9770 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B9774 | 41 82 00 0C */	beq .L_814B9780
/* 814B9778 | 7C 03 03 78 */	mr r3, r0
/* 814B977C | 48 00 00 48 */	b .L_814B97C4
.L_814B9780:
/* 814B9780 | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814B9784 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B9788 | 7C 64 1B 78 */	mr r4, r3
/* 814B978C | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B9790 | 7F C5 02 14 */	add r30, r5, r0
/* 814B9794 | 80 7E 07 58 */	lwz r3, 0x758(r30)
/* 814B9798 | 4B FF F1 A5 */	bl VFipdm_disk_set_disk
/* 814B979C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B97A0 | 41 82 00 08 */	beq .L_814B97A8
/* 814B97A4 | 48 00 00 20 */	b .L_814B97C4
.L_814B97A8:
/* 814B97A8 | 80 7E 07 58 */	lwz r3, 0x758(r30)
/* 814B97AC | 7F E4 FB 78 */	mr r4, r31
/* 814B97B0 | 4B FF EC 55 */	bl VFipdm_disk_format
/* 814B97B4 | 7C 03 00 D0 */	neg r0, r3
/* 814B97B8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814B97BC | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814B97C0 | 7C 63 00 38 */	and r3, r3, r0
.L_814B97C4:
/* 814B97C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B97C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B97CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814B97D0 | 7C 08 03 A6 */	mtlr r0
/* 814B97D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B97D8 | 4E 80 00 20 */	blr
.endfn VFipdm_part_format

# .text:0xBFC | 0x814B97DC | size: 0x20C
.fn VFipdm_part_logical_read, global
/* 814B97DC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B97E0 | 7C 08 02 A6 */	mflr r0
/* 814B97E4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B97E8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B97EC | 48 13 FC D1 */	bl _savegpr_26
/* 814B97F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B97F4 | 7C 9B 23 78 */	mr r27, r4
/* 814B97F8 | 7C BC 2B 78 */	mr r28, r5
/* 814B97FC | 7C DD 33 78 */	mr r29, r6
/* 814B9800 | 7C FE 3B 78 */	mr r30, r7
/* 814B9804 | 7D 1F 43 78 */	mr r31, r8
/* 814B9808 | 41 82 00 24 */	beq .L_814B982C
/* 814B980C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B9810 | 41 82 00 1C */	beq .L_814B982C
/* 814B9814 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814B9818 | 41 82 00 14 */	beq .L_814B982C
/* 814B981C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814B9820 | 41 82 00 0C */	beq .L_814B982C
/* 814B9824 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814B9828 | 40 82 00 0C */	bne .L_814B9834
.L_814B982C:
/* 814B982C | 38 60 00 01 */	li r3, 0x1
/* 814B9830 | 48 00 01 A0 */	b .L_814B99D0
.L_814B9834:
/* 814B9834 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B9838 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B983C | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B9840 | 40 80 00 0C */	bge .L_814B984C
/* 814B9844 | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B9848 | 41 82 00 0C */	beq .L_814B9854
.L_814B984C:
/* 814B984C | 38 00 00 01 */	li r0, 0x1
/* 814B9850 | 48 00 00 90 */	b .L_814B98E0
.L_814B9854:
/* 814B9854 | 1C 88 00 2C */	mulli r4, r8, 0x2c
/* 814B9858 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B985C | 38 00 00 0D */	li r0, 0xd
/* 814B9860 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B9864 | 7C 85 22 14 */	add r4, r5, r4
/* 814B9868 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B986C | 38 C4 07 54 */	addi r6, r4, 0x754
/* 814B9870 | 38 80 00 00 */	li r4, 0x0
/* 814B9874 | 7C 09 03 A6 */	mtctr r0
.L_814B9878:
/* 814B9878 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B987C | 7D 25 02 14 */	add r9, r5, r0
/* 814B9880 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9884 | 7C 00 30 40 */	cmplw r0, r6
/* 814B9888 | 40 82 00 10 */	bne .L_814B9898
/* 814B988C | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9890 | 7C 07 00 40 */	cmplw r7, r0
/* 814B9894 | 41 82 00 30 */	beq .L_814B98C4
.L_814B9898:
/* 814B9898 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B989C | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B98A0 | 7D 25 02 14 */	add r9, r5, r0
/* 814B98A4 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B98A8 | 7C 00 30 40 */	cmplw r0, r6
/* 814B98AC | 40 82 00 10 */	bne .L_814B98BC
/* 814B98B0 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B98B4 | 7C 07 00 40 */	cmplw r7, r0
/* 814B98B8 | 41 82 00 0C */	beq .L_814B98C4
.L_814B98BC:
/* 814B98BC | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B98C0 | 42 00 FF B8 */	bdnz .L_814B9878
.L_814B98C4:
/* 814B98C4 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814B98C8 | 38 80 00 1A */	li r4, 0x1a
/* 814B98CC | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B98D0 | 7C A4 23 38 */	orc r4, r5, r4
/* 814B98D4 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B98D8 | 7C 00 20 50 */	subf r0, r0, r4
/* 814B98DC | 54 00 0F FE */	srwi r0, r0, 31
.L_814B98E0:
/* 814B98E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B98E4 | 41 82 00 0C */	beq .L_814B98F0
/* 814B98E8 | 7C 03 03 78 */	mr r3, r0
/* 814B98EC | 48 00 00 E4 */	b .L_814B99D0
.L_814B98F0:
/* 814B98F0 | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814B98F4 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B98F8 | 7C 64 1B 78 */	mr r4, r3
/* 814B98FC | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B9900 | 7C 65 02 14 */	add r3, r5, r0
/* 814B9904 | 3B 43 07 54 */	addi r26, r3, 0x754
/* 814B9908 | 80 63 07 58 */	lwz r3, 0x758(r3)
/* 814B990C | 4B FF F0 31 */	bl VFipdm_disk_set_disk
/* 814B9910 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9914 | 41 82 00 08 */	beq .L_814B991C
/* 814B9918 | 48 00 00 B8 */	b .L_814B99D0
.L_814B991C:
/* 814B991C | 80 1A 00 18 */	lwz r0, 0x18(r26)
/* 814B9920 | 7C 00 E0 40 */	cmplw r0, r28
/* 814B9924 | 41 81 00 0C */	bgt .L_814B9930
/* 814B9928 | 38 60 00 12 */	li r3, 0x12
/* 814B992C | 48 00 00 A4 */	b .L_814B99D0
.L_814B9930:
/* 814B9930 | 7C 7C EA 14 */	add r3, r28, r29
/* 814B9934 | 7C 00 18 40 */	cmplw r0, r3
/* 814B9938 | 40 80 00 0C */	bge .L_814B9944
/* 814B993C | 7C 00 18 50 */	subf r0, r0, r3
/* 814B9940 | 7F A0 E8 50 */	subf r29, r0, r29
.L_814B9944:
/* 814B9944 | 7F 43 D3 78 */	mr r3, r26
/* 814B9948 | 7F 84 E3 78 */	mr r4, r28
/* 814B994C | 7F A5 EB 78 */	mr r5, r29
/* 814B9950 | 7F C6 F3 78 */	mr r6, r30
/* 814B9954 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814B9958 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814B995C | 4B FF F3 E5 */	bl VFipdm_part_convert_lsector_to_block
/* 814B9960 | 80 7A 00 04 */	lwz r3, 0x4(r26)
/* 814B9964 | 7F 64 DB 78 */	mr r4, r27
/* 814B9968 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814B996C | 7F E7 FB 78 */	mr r7, r31
/* 814B9970 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 814B9974 | 4B FF E6 B1 */	bl VFipdm_disk_physical_read
/* 814B9978 | 28 1E 02 00 */	cmplwi r30, 0x200
/* 814B997C | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814B9980 | 40 81 00 40 */	ble .L_814B99C0
/* 814B9984 | 57 C4 BE 7E */	extrwi r4, r30, 7, 16
/* 814B9988 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814B998C | 40 82 00 10 */	bne .L_814B999C
/* 814B9990 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B9994 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814B9998 | 48 00 00 28 */	b .L_814B99C0
.L_814B999C:
/* 814B999C | 28 04 00 04 */	cmplwi r4, 0x4
/* 814B99A0 | 40 82 00 10 */	bne .L_814B99B0
/* 814B99A4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814B99A8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814B99AC | 48 00 00 14 */	b .L_814B99C0
.L_814B99B0:
/* 814B99B0 | 28 04 00 08 */	cmplwi r4, 0x8
/* 814B99B4 | 40 82 00 0C */	bne .L_814B99C0
/* 814B99B8 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814B99BC | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814B99C0:
/* 814B99C0 | 7C 03 00 D0 */	neg r0, r3
/* 814B99C4 | 7C 00 1B 78 */	or r0, r0, r3
/* 814B99C8 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814B99CC | 7C 63 00 38 */	and r3, r3, r0
.L_814B99D0:
/* 814B99D0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B99D4 | 48 13 FB 35 */	bl _restgpr_26
/* 814B99D8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B99DC | 7C 08 03 A6 */	mtlr r0
/* 814B99E0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B99E4 | 4E 80 00 20 */	blr
.endfn VFipdm_part_logical_read

# .text:0xE08 | 0x814B99E8 | size: 0x20C
.fn VFipdm_part_logical_write, global
/* 814B99E8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B99EC | 7C 08 02 A6 */	mflr r0
/* 814B99F0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B99F4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B99F8 | 48 13 FA C5 */	bl _savegpr_26
/* 814B99FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9A00 | 7C 9B 23 78 */	mr r27, r4
/* 814B9A04 | 7C BC 2B 78 */	mr r28, r5
/* 814B9A08 | 7C DD 33 78 */	mr r29, r6
/* 814B9A0C | 7C FE 3B 78 */	mr r30, r7
/* 814B9A10 | 7D 1F 43 78 */	mr r31, r8
/* 814B9A14 | 41 82 00 24 */	beq .L_814B9A38
/* 814B9A18 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B9A1C | 41 82 00 1C */	beq .L_814B9A38
/* 814B9A20 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814B9A24 | 41 82 00 14 */	beq .L_814B9A38
/* 814B9A28 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814B9A2C | 41 82 00 0C */	beq .L_814B9A38
/* 814B9A30 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814B9A34 | 40 82 00 0C */	bne .L_814B9A40
.L_814B9A38:
/* 814B9A38 | 38 60 00 01 */	li r3, 0x1
/* 814B9A3C | 48 00 01 A0 */	b .L_814B9BDC
.L_814B9A40:
/* 814B9A40 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B9A44 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B9A48 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B9A4C | 40 80 00 0C */	bge .L_814B9A58
/* 814B9A50 | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B9A54 | 41 82 00 0C */	beq .L_814B9A60
.L_814B9A58:
/* 814B9A58 | 38 00 00 01 */	li r0, 0x1
/* 814B9A5C | 48 00 00 90 */	b .L_814B9AEC
.L_814B9A60:
/* 814B9A60 | 1C 88 00 2C */	mulli r4, r8, 0x2c
/* 814B9A64 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B9A68 | 38 00 00 0D */	li r0, 0xd
/* 814B9A6C | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B9A70 | 7C 85 22 14 */	add r4, r5, r4
/* 814B9A74 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B9A78 | 38 C4 07 54 */	addi r6, r4, 0x754
/* 814B9A7C | 38 80 00 00 */	li r4, 0x0
/* 814B9A80 | 7C 09 03 A6 */	mtctr r0
.L_814B9A84:
/* 814B9A84 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B9A88 | 7D 25 02 14 */	add r9, r5, r0
/* 814B9A8C | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9A90 | 7C 00 30 40 */	cmplw r0, r6
/* 814B9A94 | 40 82 00 10 */	bne .L_814B9AA4
/* 814B9A98 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9A9C | 7C 07 00 40 */	cmplw r7, r0
/* 814B9AA0 | 41 82 00 30 */	beq .L_814B9AD0
.L_814B9AA4:
/* 814B9AA4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B9AA8 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B9AAC | 7D 25 02 14 */	add r9, r5, r0
/* 814B9AB0 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9AB4 | 7C 00 30 40 */	cmplw r0, r6
/* 814B9AB8 | 40 82 00 10 */	bne .L_814B9AC8
/* 814B9ABC | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9AC0 | 7C 07 00 40 */	cmplw r7, r0
/* 814B9AC4 | 41 82 00 0C */	beq .L_814B9AD0
.L_814B9AC8:
/* 814B9AC8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B9ACC | 42 00 FF B8 */	bdnz .L_814B9A84
.L_814B9AD0:
/* 814B9AD0 | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814B9AD4 | 38 80 00 1A */	li r4, 0x1a
/* 814B9AD8 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B9ADC | 7C A4 23 38 */	orc r4, r5, r4
/* 814B9AE0 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B9AE4 | 7C 00 20 50 */	subf r0, r0, r4
/* 814B9AE8 | 54 00 0F FE */	srwi r0, r0, 31
.L_814B9AEC:
/* 814B9AEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B9AF0 | 41 82 00 0C */	beq .L_814B9AFC
/* 814B9AF4 | 7C 03 03 78 */	mr r3, r0
/* 814B9AF8 | 48 00 00 E4 */	b .L_814B9BDC
.L_814B9AFC:
/* 814B9AFC | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814B9B00 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B9B04 | 7C 64 1B 78 */	mr r4, r3
/* 814B9B08 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B9B0C | 7C 65 02 14 */	add r3, r5, r0
/* 814B9B10 | 3B 43 07 54 */	addi r26, r3, 0x754
/* 814B9B14 | 80 63 07 58 */	lwz r3, 0x758(r3)
/* 814B9B18 | 4B FF EE 25 */	bl VFipdm_disk_set_disk
/* 814B9B1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9B20 | 41 82 00 08 */	beq .L_814B9B28
/* 814B9B24 | 48 00 00 B8 */	b .L_814B9BDC
.L_814B9B28:
/* 814B9B28 | 80 1A 00 18 */	lwz r0, 0x18(r26)
/* 814B9B2C | 7C 00 E0 40 */	cmplw r0, r28
/* 814B9B30 | 41 81 00 0C */	bgt .L_814B9B3C
/* 814B9B34 | 38 60 00 12 */	li r3, 0x12
/* 814B9B38 | 48 00 00 A4 */	b .L_814B9BDC
.L_814B9B3C:
/* 814B9B3C | 7C 7C EA 14 */	add r3, r28, r29
/* 814B9B40 | 7C 00 18 40 */	cmplw r0, r3
/* 814B9B44 | 40 80 00 0C */	bge .L_814B9B50
/* 814B9B48 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B9B4C | 7F A0 E8 50 */	subf r29, r0, r29
.L_814B9B50:
/* 814B9B50 | 7F 43 D3 78 */	mr r3, r26
/* 814B9B54 | 7F 84 E3 78 */	mr r4, r28
/* 814B9B58 | 7F A5 EB 78 */	mr r5, r29
/* 814B9B5C | 7F C6 F3 78 */	mr r6, r30
/* 814B9B60 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814B9B64 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814B9B68 | 4B FF F1 D9 */	bl VFipdm_part_convert_lsector_to_block
/* 814B9B6C | 80 7A 00 04 */	lwz r3, 0x4(r26)
/* 814B9B70 | 7F 64 DB 78 */	mr r4, r27
/* 814B9B74 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814B9B78 | 7F E7 FB 78 */	mr r7, r31
/* 814B9B7C | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 814B9B80 | 4B FF E5 F5 */	bl VFipdm_disk_physical_write
/* 814B9B84 | 28 1E 02 00 */	cmplwi r30, 0x200
/* 814B9B88 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814B9B8C | 40 81 00 40 */	ble .L_814B9BCC
/* 814B9B90 | 57 C4 BE 7E */	extrwi r4, r30, 7, 16
/* 814B9B94 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814B9B98 | 40 82 00 10 */	bne .L_814B9BA8
/* 814B9B9C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B9BA0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814B9BA4 | 48 00 00 28 */	b .L_814B9BCC
.L_814B9BA8:
/* 814B9BA8 | 28 04 00 04 */	cmplwi r4, 0x4
/* 814B9BAC | 40 82 00 10 */	bne .L_814B9BBC
/* 814B9BB0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814B9BB4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814B9BB8 | 48 00 00 14 */	b .L_814B9BCC
.L_814B9BBC:
/* 814B9BBC | 28 04 00 08 */	cmplwi r4, 0x8
/* 814B9BC0 | 40 82 00 0C */	bne .L_814B9BCC
/* 814B9BC4 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814B9BC8 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814B9BCC:
/* 814B9BCC | 7C 03 00 D0 */	neg r0, r3
/* 814B9BD0 | 7C 00 1B 78 */	or r0, r0, r3
/* 814B9BD4 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814B9BD8 | 7C 63 00 38 */	and r3, r3, r0
.L_814B9BDC:
/* 814B9BDC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B9BE0 | 48 13 F9 29 */	bl _restgpr_26
/* 814B9BE4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B9BE8 | 7C 08 03 A6 */	mtlr r0
/* 814B9BEC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B9BF0 | 4E 80 00 20 */	blr
.endfn VFipdm_part_logical_write

# .text:0x1014 | 0x814B9BF4 | size: 0x1A0
.fn VFipdm_part_logical_erase, global
/* 814B9BF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B9BF8 | 7C 08 02 A6 */	mflr r0
/* 814B9BFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9C00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B9C04 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B9C08 | 7C DF 33 78 */	mr r31, r6
/* 814B9C0C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B9C10 | 7C BE 2B 78 */	mr r30, r5
/* 814B9C14 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B9C18 | 7C 9D 23 78 */	mr r29, r4
/* 814B9C1C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814B9C20 | 41 82 00 14 */	beq .L_814B9C34
/* 814B9C24 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B9C28 | 41 82 00 0C */	beq .L_814B9C34
/* 814B9C2C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814B9C30 | 40 82 00 0C */	bne .L_814B9C3C
.L_814B9C34:
/* 814B9C34 | 38 60 00 01 */	li r3, 0x1
/* 814B9C38 | 48 00 01 3C */	b .L_814B9D74
.L_814B9C3C:
/* 814B9C3C | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B9C40 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B9C44 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B9C48 | 40 80 00 0C */	bge .L_814B9C54
/* 814B9C4C | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B9C50 | 41 82 00 0C */	beq .L_814B9C5C
.L_814B9C54:
/* 814B9C54 | 38 00 00 01 */	li r0, 0x1
/* 814B9C58 | 48 00 00 90 */	b .L_814B9CE8
.L_814B9C5C:
/* 814B9C5C | 1C 88 00 2C */	mulli r4, r8, 0x2c
/* 814B9C60 | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B9C64 | 38 00 00 0D */	li r0, 0xd
/* 814B9C68 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B9C6C | 7C 85 22 14 */	add r4, r5, r4
/* 814B9C70 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B9C74 | 38 C4 07 54 */	addi r6, r4, 0x754
/* 814B9C78 | 38 80 00 00 */	li r4, 0x0
/* 814B9C7C | 7C 09 03 A6 */	mtctr r0
.L_814B9C80:
/* 814B9C80 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B9C84 | 7D 25 02 14 */	add r9, r5, r0
/* 814B9C88 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9C8C | 7C 00 30 40 */	cmplw r0, r6
/* 814B9C90 | 40 82 00 10 */	bne .L_814B9CA0
/* 814B9C94 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9C98 | 7C 07 00 40 */	cmplw r7, r0
/* 814B9C9C | 41 82 00 30 */	beq .L_814B9CCC
.L_814B9CA0:
/* 814B9CA0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B9CA4 | 54 80 1B 78 */	clrlslwi r0, r4, 16, 3
/* 814B9CA8 | 7D 25 02 14 */	add r9, r5, r0
/* 814B9CAC | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9CB0 | 7C 00 30 40 */	cmplw r0, r6
/* 814B9CB4 | 40 82 00 10 */	bne .L_814B9CC4
/* 814B9CB8 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9CBC | 7C 07 00 40 */	cmplw r7, r0
/* 814B9CC0 | 41 82 00 0C */	beq .L_814B9CCC
.L_814B9CC4:
/* 814B9CC4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B9CC8 | 42 00 FF B8 */	bdnz .L_814B9C80
.L_814B9CCC:
/* 814B9CCC | 54 85 04 3E */	clrlwi r5, r4, 16
/* 814B9CD0 | 38 80 00 1A */	li r4, 0x1a
/* 814B9CD4 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B9CD8 | 7C A4 23 38 */	orc r4, r5, r4
/* 814B9CDC | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B9CE0 | 7C 00 20 50 */	subf r0, r0, r4
/* 814B9CE4 | 54 00 0F FE */	srwi r0, r0, 31
.L_814B9CE8:
/* 814B9CE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B9CEC | 41 82 00 0C */	beq .L_814B9CF8
/* 814B9CF0 | 7C 03 03 78 */	mr r3, r0
/* 814B9CF4 | 48 00 00 80 */	b .L_814B9D74
.L_814B9CF8:
/* 814B9CF8 | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814B9CFC | 3C A0 81 0D */	lis r5, VFipdm_disk_set_810CCC20@ha
/* 814B9D00 | 7C 64 1B 78 */	mr r4, r3
/* 814B9D04 | 38 A5 CC 20 */	addi r5, r5, VFipdm_disk_set_810CCC20@l
/* 814B9D08 | 7C 65 02 14 */	add r3, r5, r0
/* 814B9D0C | 3B 83 07 54 */	addi r28, r3, 0x754
/* 814B9D10 | 80 63 07 58 */	lwz r3, 0x758(r3)
/* 814B9D14 | 4B FF EC 29 */	bl VFipdm_disk_set_disk
/* 814B9D18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9D1C | 41 82 00 08 */	beq .L_814B9D24
/* 814B9D20 | 48 00 00 54 */	b .L_814B9D74
.L_814B9D24:
/* 814B9D24 | 80 1C 00 18 */	lwz r0, 0x18(r28)
/* 814B9D28 | 7C 00 E8 40 */	cmplw r0, r29
/* 814B9D2C | 41 81 00 0C */	bgt .L_814B9D38
/* 814B9D30 | 38 60 00 12 */	li r3, 0x12
/* 814B9D34 | 48 00 00 40 */	b .L_814B9D74
.L_814B9D38:
/* 814B9D38 | 7F 83 E3 78 */	mr r3, r28
/* 814B9D3C | 7F A4 EB 78 */	mr r4, r29
/* 814B9D40 | 7F C5 F3 78 */	mr r5, r30
/* 814B9D44 | 7F E6 FB 78 */	mr r6, r31
/* 814B9D48 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814B9D4C | 39 01 00 08 */	addi r8, r1, 0x8
/* 814B9D50 | 4B FF EF F1 */	bl VFipdm_part_convert_lsector_to_block
/* 814B9D54 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 814B9D58 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814B9D5C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814B9D60 | 4B FF E5 65 */	bl VFipdm_disk_physical_erase
/* 814B9D64 | 7C 03 00 D0 */	neg r0, r3
/* 814B9D68 | 7C 00 1B 78 */	or r0, r0, r3
/* 814B9D6C | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814B9D70 | 7C 63 00 38 */	and r3, r3, r0
.L_814B9D74:
/* 814B9D74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B9D78 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B9D7C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B9D80 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B9D84 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814B9D88 | 7C 08 03 A6 */	mtlr r0
/* 814B9D8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B9D90 | 4E 80 00 20 */	blr
.endfn VFipdm_part_logical_erase

# .text:0x11B4 | 0x814B9D94 | size: 0x114
.fn VFipdm_part_get_media_information, global
/* 814B9D94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B9D98 | 7C 08 02 A6 */	mflr r0
/* 814B9D9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9DA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B9DA4 | 41 82 00 0C */	beq .L_814B9DB0
/* 814B9DA8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B9DAC | 40 82 00 0C */	bne .L_814B9DB8
.L_814B9DB0:
/* 814B9DB0 | 38 60 00 01 */	li r3, 0x1
/* 814B9DB4 | 48 00 00 E4 */	b .L_814B9E98
.L_814B9DB8:
/* 814B9DB8 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B9DBC | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B9DC0 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B9DC4 | 40 80 00 0C */	bge .L_814B9DD0
/* 814B9DC8 | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B9DCC | 41 82 00 0C */	beq .L_814B9DD8
.L_814B9DD0:
/* 814B9DD0 | 38 60 00 01 */	li r3, 0x1
/* 814B9DD4 | 48 00 00 90 */	b .L_814B9E64
.L_814B9DD8:
/* 814B9DD8 | 1C A8 00 2C */	mulli r5, r8, 0x2c
/* 814B9DDC | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B9DE0 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B9DE4 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B9DE8 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B9DEC | 38 00 00 0D */	li r0, 0xd
/* 814B9DF0 | 38 A5 07 54 */	addi r5, r5, 0x754
/* 814B9DF4 | 38 60 00 00 */	li r3, 0x0
/* 814B9DF8 | 7C 09 03 A6 */	mtctr r0
.L_814B9DFC:
/* 814B9DFC | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B9E00 | 7D 26 02 14 */	add r9, r6, r0
/* 814B9E04 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9E08 | 7C 00 28 40 */	cmplw r0, r5
/* 814B9E0C | 40 82 00 10 */	bne .L_814B9E1C
/* 814B9E10 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9E14 | 7C 07 00 40 */	cmplw r7, r0
/* 814B9E18 | 41 82 00 30 */	beq .L_814B9E48
.L_814B9E1C:
/* 814B9E1C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B9E20 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B9E24 | 7D 26 02 14 */	add r9, r6, r0
/* 814B9E28 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9E2C | 7C 00 28 40 */	cmplw r0, r5
/* 814B9E30 | 40 82 00 10 */	bne .L_814B9E40
/* 814B9E34 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9E38 | 7C 07 00 40 */	cmplw r7, r0
/* 814B9E3C | 41 82 00 0C */	beq .L_814B9E48
.L_814B9E40:
/* 814B9E40 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B9E44 | 42 00 FF B8 */	bdnz .L_814B9DFC
.L_814B9E48:
/* 814B9E48 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814B9E4C | 38 60 00 1A */	li r3, 0x1a
/* 814B9E50 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B9E54 | 7C A3 1B 38 */	orc r3, r5, r3
/* 814B9E58 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B9E5C | 7C 00 18 50 */	subf r0, r0, r3
/* 814B9E60 | 54 03 0F FE */	srwi r3, r0, 31
.L_814B9E64:
/* 814B9E64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9E68 | 41 82 00 08 */	beq .L_814B9E70
/* 814B9E6C | 48 00 00 2C */	b .L_814B9E98
.L_814B9E70:
/* 814B9E70 | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814B9E74 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814B9E78 | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814B9E7C | 7C 63 02 14 */	add r3, r3, r0
/* 814B9E80 | 80 63 07 58 */	lwz r3, 0x758(r3)
/* 814B9E84 | 4B FF E7 A5 */	bl VFipdm_disk_get_media_information
/* 814B9E88 | 7C 03 00 D0 */	neg r0, r3
/* 814B9E8C | 7C 00 1B 78 */	or r0, r0, r3
/* 814B9E90 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814B9E94 | 7C 63 00 38 */	and r3, r3, r0
.L_814B9E98:
/* 814B9E98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B9E9C | 7C 08 03 A6 */	mtlr r0
/* 814B9EA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B9EA4 | 4E 80 00 20 */	blr
.endfn VFipdm_part_get_media_information

# .text:0x12C8 | 0x814B9EA8 | size: 0x104
.fn VFipdm_part_check_media_write_protect, global
/* 814B9EA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9EAC | 41 82 00 0C */	beq .L_814B9EB8
/* 814B9EB0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B9EB4 | 40 82 00 0C */	bne .L_814B9EC0
.L_814B9EB8:
/* 814B9EB8 | 38 60 00 01 */	li r3, 0x1
/* 814B9EBC | 4E 80 00 20 */	blr
.L_814B9EC0:
/* 814B9EC0 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B9EC4 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B9EC8 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B9ECC | 40 80 00 0C */	bge .L_814B9ED8
/* 814B9ED0 | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B9ED4 | 41 82 00 0C */	beq .L_814B9EE0
.L_814B9ED8:
/* 814B9ED8 | 38 60 00 01 */	li r3, 0x1
/* 814B9EDC | 48 00 00 90 */	b .L_814B9F6C
.L_814B9EE0:
/* 814B9EE0 | 1C A8 00 2C */	mulli r5, r8, 0x2c
/* 814B9EE4 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B9EE8 | 54 67 84 3E */	srwi r7, r3, 16
/* 814B9EEC | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B9EF0 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B9EF4 | 38 00 00 0D */	li r0, 0xd
/* 814B9EF8 | 38 A5 07 54 */	addi r5, r5, 0x754
/* 814B9EFC | 38 60 00 00 */	li r3, 0x0
/* 814B9F00 | 7C 09 03 A6 */	mtctr r0
.L_814B9F04:
/* 814B9F04 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B9F08 | 7D 26 02 14 */	add r9, r6, r0
/* 814B9F0C | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9F10 | 7C 00 28 40 */	cmplw r0, r5
/* 814B9F14 | 40 82 00 10 */	bne .L_814B9F24
/* 814B9F18 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9F1C | 7C 07 00 40 */	cmplw r7, r0
/* 814B9F20 | 41 82 00 30 */	beq .L_814B9F50
.L_814B9F24:
/* 814B9F24 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B9F28 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814B9F2C | 7D 26 02 14 */	add r9, r6, r0
/* 814B9F30 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814B9F34 | 7C 00 28 40 */	cmplw r0, r5
/* 814B9F38 | 40 82 00 10 */	bne .L_814B9F48
/* 814B9F3C | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814B9F40 | 7C 07 00 40 */	cmplw r7, r0
/* 814B9F44 | 41 82 00 0C */	beq .L_814B9F50
.L_814B9F48:
/* 814B9F48 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B9F4C | 42 00 FF B8 */	bdnz .L_814B9F04
.L_814B9F50:
/* 814B9F50 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814B9F54 | 38 60 00 1A */	li r3, 0x1a
/* 814B9F58 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814B9F5C | 7C A3 1B 38 */	orc r3, r5, r3
/* 814B9F60 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814B9F64 | 7C 00 18 50 */	subf r0, r0, r3
/* 814B9F68 | 54 03 0F FE */	srwi r3, r0, 31
.L_814B9F6C:
/* 814B9F6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9F70 | 4C 82 00 20 */	bnelr
/* 814B9F74 | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814B9F78 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814B9F7C | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814B9F80 | 7C 63 02 14 */	add r3, r3, r0
/* 814B9F84 | 80 03 07 54 */	lwz r0, 0x754(r3)
/* 814B9F88 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814B9F8C | 41 82 00 10 */	beq .L_814B9F9C
/* 814B9F90 | 38 00 00 01 */	li r0, 0x1
/* 814B9F94 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814B9F98 | 48 00 00 0C */	b .L_814B9FA4
.L_814B9F9C:
/* 814B9F9C | 38 00 00 00 */	li r0, 0x0
/* 814B9FA0 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814B9FA4:
/* 814B9FA4 | 38 60 00 00 */	li r3, 0x0
/* 814B9FA8 | 4E 80 00 20 */	blr
.endfn VFipdm_part_check_media_write_protect

# .text:0x13CC | 0x814B9FAC | size: 0x104
.fn VFipdm_part_check_media_insert, global
/* 814B9FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B9FB0 | 41 82 00 0C */	beq .L_814B9FBC
/* 814B9FB4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B9FB8 | 40 82 00 0C */	bne .L_814B9FC4
.L_814B9FBC:
/* 814B9FBC | 38 60 00 01 */	li r3, 0x1
/* 814B9FC0 | 4E 80 00 20 */	blr
.L_814B9FC4:
/* 814B9FC4 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814B9FC8 | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814B9FCC | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814B9FD0 | 40 80 00 0C */	bge .L_814B9FDC
/* 814B9FD4 | 28 00 04 00 */	cmplwi r0, 0x400
/* 814B9FD8 | 41 82 00 0C */	beq .L_814B9FE4
.L_814B9FDC:
/* 814B9FDC | 38 60 00 01 */	li r3, 0x1
/* 814B9FE0 | 48 00 00 90 */	b .L_814BA070
.L_814B9FE4:
/* 814B9FE4 | 1C A8 00 2C */	mulli r5, r8, 0x2c
/* 814B9FE8 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814B9FEC | 54 67 84 3E */	srwi r7, r3, 16
/* 814B9FF0 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814B9FF4 | 7C A6 2A 14 */	add r5, r6, r5
/* 814B9FF8 | 38 00 00 0D */	li r0, 0xd
/* 814B9FFC | 38 A5 07 54 */	addi r5, r5, 0x754
/* 814BA000 | 38 60 00 00 */	li r3, 0x0
/* 814BA004 | 7C 09 03 A6 */	mtctr r0
.L_814BA008:
/* 814BA008 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814BA00C | 7D 26 02 14 */	add r9, r6, r0
/* 814BA010 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814BA014 | 7C 00 28 40 */	cmplw r0, r5
/* 814BA018 | 40 82 00 10 */	bne .L_814BA028
/* 814BA01C | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814BA020 | 7C 07 00 40 */	cmplw r7, r0
/* 814BA024 | 41 82 00 30 */	beq .L_814BA054
.L_814BA028:
/* 814BA028 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814BA02C | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814BA030 | 7D 26 02 14 */	add r9, r6, r0
/* 814BA034 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814BA038 | 7C 00 28 40 */	cmplw r0, r5
/* 814BA03C | 40 82 00 10 */	bne .L_814BA04C
/* 814BA040 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814BA044 | 7C 07 00 40 */	cmplw r7, r0
/* 814BA048 | 41 82 00 0C */	beq .L_814BA054
.L_814BA04C:
/* 814BA04C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814BA050 | 42 00 FF B8 */	bdnz .L_814BA008
.L_814BA054:
/* 814BA054 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814BA058 | 38 60 00 1A */	li r3, 0x1a
/* 814BA05C | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814BA060 | 7C A3 1B 38 */	orc r3, r5, r3
/* 814BA064 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814BA068 | 7C 00 18 50 */	subf r0, r0, r3
/* 814BA06C | 54 03 0F FE */	srwi r3, r0, 31
.L_814BA070:
/* 814BA070 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA074 | 4C 82 00 20 */	bnelr
/* 814BA078 | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814BA07C | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814BA080 | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814BA084 | 7C 63 02 14 */	add r3, r3, r0
/* 814BA088 | 80 03 07 54 */	lwz r0, 0x754(r3)
/* 814BA08C | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814BA090 | 41 82 00 10 */	beq .L_814BA0A0
/* 814BA094 | 38 00 00 01 */	li r0, 0x1
/* 814BA098 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814BA09C | 48 00 00 0C */	b .L_814BA0A8
.L_814BA0A0:
/* 814BA0A0 | 38 00 00 00 */	li r0, 0x0
/* 814BA0A4 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814BA0A8:
/* 814BA0A8 | 38 60 00 00 */	li r3, 0x0
/* 814BA0AC | 4E 80 00 20 */	blr
.endfn VFipdm_part_check_media_insert

# .text:0x14D0 | 0x814BA0B0 | size: 0x104
.fn VFipdm_part_check_media_detect, global
/* 814BA0B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA0B4 | 41 82 00 0C */	beq .L_814BA0C0
/* 814BA0B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BA0BC | 40 82 00 0C */	bne .L_814BA0C8
.L_814BA0C0:
/* 814BA0C0 | 38 60 00 01 */	li r3, 0x1
/* 814BA0C4 | 4E 80 00 20 */	blr
.L_814BA0C8:
/* 814BA0C8 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814BA0CC | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814BA0D0 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814BA0D4 | 40 80 00 0C */	bge .L_814BA0E0
/* 814BA0D8 | 28 00 04 00 */	cmplwi r0, 0x400
/* 814BA0DC | 41 82 00 0C */	beq .L_814BA0E8
.L_814BA0E0:
/* 814BA0E0 | 38 60 00 01 */	li r3, 0x1
/* 814BA0E4 | 48 00 00 90 */	b .L_814BA174
.L_814BA0E8:
/* 814BA0E8 | 1C A8 00 2C */	mulli r5, r8, 0x2c
/* 814BA0EC | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814BA0F0 | 54 67 84 3E */	srwi r7, r3, 16
/* 814BA0F4 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814BA0F8 | 7C A6 2A 14 */	add r5, r6, r5
/* 814BA0FC | 38 00 00 0D */	li r0, 0xd
/* 814BA100 | 38 A5 07 54 */	addi r5, r5, 0x754
/* 814BA104 | 38 60 00 00 */	li r3, 0x0
/* 814BA108 | 7C 09 03 A6 */	mtctr r0
.L_814BA10C:
/* 814BA10C | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814BA110 | 7D 26 02 14 */	add r9, r6, r0
/* 814BA114 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814BA118 | 7C 00 28 40 */	cmplw r0, r5
/* 814BA11C | 40 82 00 10 */	bne .L_814BA12C
/* 814BA120 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814BA124 | 7C 07 00 40 */	cmplw r7, r0
/* 814BA128 | 41 82 00 30 */	beq .L_814BA158
.L_814BA12C:
/* 814BA12C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814BA130 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814BA134 | 7D 26 02 14 */	add r9, r6, r0
/* 814BA138 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814BA13C | 7C 00 28 40 */	cmplw r0, r5
/* 814BA140 | 40 82 00 10 */	bne .L_814BA150
/* 814BA144 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814BA148 | 7C 07 00 40 */	cmplw r7, r0
/* 814BA14C | 41 82 00 0C */	beq .L_814BA158
.L_814BA150:
/* 814BA150 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814BA154 | 42 00 FF B8 */	bdnz .L_814BA10C
.L_814BA158:
/* 814BA158 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814BA15C | 38 60 00 1A */	li r3, 0x1a
/* 814BA160 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814BA164 | 7C A3 1B 38 */	orc r3, r5, r3
/* 814BA168 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814BA16C | 7C 00 18 50 */	subf r0, r0, r3
/* 814BA170 | 54 03 0F FE */	srwi r3, r0, 31
.L_814BA174:
/* 814BA174 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA178 | 4C 82 00 20 */	bnelr
/* 814BA17C | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814BA180 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814BA184 | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814BA188 | 7C 63 02 14 */	add r3, r3, r0
/* 814BA18C | 80 03 07 54 */	lwz r0, 0x754(r3)
/* 814BA190 | 54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 814BA194 | 41 82 00 10 */	beq .L_814BA1A4
/* 814BA198 | 38 00 00 01 */	li r0, 0x1
/* 814BA19C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814BA1A0 | 48 00 00 0C */	b .L_814BA1AC
.L_814BA1A4:
/* 814BA1A4 | 38 00 00 00 */	li r0, 0x0
/* 814BA1A8 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814BA1AC:
/* 814BA1AC | 38 60 00 00 */	li r3, 0x0
/* 814BA1B0 | 4E 80 00 20 */	blr
.endfn VFipdm_part_check_media_detect

# .text:0x15D4 | 0x814BA1B4 | size: 0x114
.fn VFipdm_part_check_data_erase, global
/* 814BA1B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BA1B8 | 7C 08 02 A6 */	mflr r0
/* 814BA1BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA1C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BA1C4 | 41 82 00 0C */	beq .L_814BA1D0
/* 814BA1C8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BA1CC | 40 82 00 0C */	bne .L_814BA1D8
.L_814BA1D0:
/* 814BA1D0 | 38 60 00 01 */	li r3, 0x1
/* 814BA1D4 | 48 00 00 E4 */	b .L_814BA2B8
.L_814BA1D8:
/* 814BA1D8 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 814BA1DC | 54 60 04 2E */	rlwinm r0, r3, 0, 16, 23
/* 814BA1E0 | 28 08 00 1A */	cmplwi r8, 0x1a
/* 814BA1E4 | 40 80 00 0C */	bge .L_814BA1F0
/* 814BA1E8 | 28 00 04 00 */	cmplwi r0, 0x400
/* 814BA1EC | 41 82 00 0C */	beq .L_814BA1F8
.L_814BA1F0:
/* 814BA1F0 | 38 60 00 01 */	li r3, 0x1
/* 814BA1F4 | 48 00 00 90 */	b .L_814BA284
.L_814BA1F8:
/* 814BA1F8 | 1C A8 00 2C */	mulli r5, r8, 0x2c
/* 814BA1FC | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814BA200 | 54 67 84 3E */	srwi r7, r3, 16
/* 814BA204 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814BA208 | 7C A6 2A 14 */	add r5, r6, r5
/* 814BA20C | 38 00 00 0D */	li r0, 0xd
/* 814BA210 | 38 A5 07 54 */	addi r5, r5, 0x754
/* 814BA214 | 38 60 00 00 */	li r3, 0x0
/* 814BA218 | 7C 09 03 A6 */	mtctr r0
.L_814BA21C:
/* 814BA21C | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814BA220 | 7D 26 02 14 */	add r9, r6, r0
/* 814BA224 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814BA228 | 7C 00 28 40 */	cmplw r0, r5
/* 814BA22C | 40 82 00 10 */	bne .L_814BA23C
/* 814BA230 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814BA234 | 7C 07 00 40 */	cmplw r7, r0
/* 814BA238 | 41 82 00 30 */	beq .L_814BA268
.L_814BA23C:
/* 814BA23C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814BA240 | 54 60 1B 78 */	clrlslwi r0, r3, 16, 3
/* 814BA244 | 7D 26 02 14 */	add r9, r6, r0
/* 814BA248 | 80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 814BA24C | 7C 00 28 40 */	cmplw r0, r5
/* 814BA250 | 40 82 00 10 */	bne .L_814BA260
/* 814BA254 | 80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 814BA258 | 7C 07 00 40 */	cmplw r7, r0
/* 814BA25C | 41 82 00 0C */	beq .L_814BA268
.L_814BA260:
/* 814BA260 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814BA264 | 42 00 FF B8 */	bdnz .L_814BA21C
.L_814BA268:
/* 814BA268 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 814BA26C | 38 60 00 1A */	li r3, 0x1a
/* 814BA270 | 38 05 FF E6 */	subi r0, r5, 0x1a
/* 814BA274 | 7C A3 1B 38 */	orc r3, r5, r3
/* 814BA278 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814BA27C | 7C 00 18 50 */	subf r0, r0, r3
/* 814BA280 | 54 03 0F FE */	srwi r3, r0, 31
.L_814BA284:
/* 814BA284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BA288 | 41 82 00 08 */	beq .L_814BA290
/* 814BA28C | 48 00 00 2C */	b .L_814BA2B8
.L_814BA290:
/* 814BA290 | 1C 08 00 2C */	mulli r0, r8, 0x2c
/* 814BA294 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814BA298 | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814BA29C | 7C 63 02 14 */	add r3, r3, r0
/* 814BA2A0 | 80 63 07 58 */	lwz r3, 0x758(r3)
/* 814BA2A4 | 4B FF E5 95 */	bl VFipdm_disk_check_data_erase
/* 814BA2A8 | 7C 03 00 D0 */	neg r0, r3
/* 814BA2AC | 7C 00 1B 78 */	or r0, r0, r3
/* 814BA2B0 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BA2B4 | 7C 63 00 38 */	and r3, r3, r0
.L_814BA2B8:
/* 814BA2B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BA2BC | 7C 08 03 A6 */	mtlr r0
/* 814BA2C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BA2C4 | 4E 80 00 20 */	blr
.endfn VFipdm_part_check_data_erase

# .text:0x16E8 | 0x814BA2C8 | size: 0xBC
.fn VFipdm_part_set_change_media_state, global
/* 814BA2C8 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814BA2CC | 38 00 00 0D */	li r0, 0xd
/* 814BA2D0 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814BA2D4 | 39 00 00 00 */	li r8, 0x0
/* 814BA2D8 | 7C 09 03 A6 */	mtctr r0
.L_814BA2DC:
/* 814BA2DC | 55 00 04 3E */	clrlwi r0, r8, 16
/* 814BA2E0 | 1C 00 00 2C */	mulli r0, r0, 0x2c
/* 814BA2E4 | 7C E6 02 14 */	add r7, r6, r0
/* 814BA2E8 | 80 A7 07 54 */	lwz r5, 0x754(r7)
/* 814BA2EC | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 814BA2F0 | 41 82 00 38 */	beq .L_814BA328
/* 814BA2F4 | 80 07 07 58 */	lwz r0, 0x758(r7)
/* 814BA2F8 | 7C 00 18 40 */	cmplw r0, r3
/* 814BA2FC | 40 82 00 2C */	bne .L_814BA328
/* 814BA300 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BA304 | 40 82 00 10 */	bne .L_814BA314
/* 814BA308 | 54 A0 07 B8 */	rlwinm r0, r5, 0, 30, 28
/* 814BA30C | 90 07 07 54 */	stw r0, 0x754(r7)
/* 814BA310 | 48 00 00 0C */	b .L_814BA31C
.L_814BA314:
/* 814BA314 | 60 A0 00 04 */	ori r0, r5, 0x4
/* 814BA318 | 90 07 07 54 */	stw r0, 0x754(r7)
.L_814BA31C:
/* 814BA31C | 80 07 07 54 */	lwz r0, 0x754(r7)
/* 814BA320 | 60 00 00 08 */	ori r0, r0, 0x8
/* 814BA324 | 90 07 07 54 */	stw r0, 0x754(r7)
.L_814BA328:
/* 814BA328 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814BA32C | 55 00 04 3E */	clrlwi r0, r8, 16
/* 814BA330 | 1C 00 00 2C */	mulli r0, r0, 0x2c
/* 814BA334 | 7C E6 02 14 */	add r7, r6, r0
/* 814BA338 | 80 A7 07 54 */	lwz r5, 0x754(r7)
/* 814BA33C | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 814BA340 | 41 82 00 38 */	beq .L_814BA378
/* 814BA344 | 80 07 07 58 */	lwz r0, 0x758(r7)
/* 814BA348 | 7C 00 18 40 */	cmplw r0, r3
/* 814BA34C | 40 82 00 2C */	bne .L_814BA378
/* 814BA350 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BA354 | 40 82 00 10 */	bne .L_814BA364
/* 814BA358 | 54 A0 07 B8 */	rlwinm r0, r5, 0, 30, 28
/* 814BA35C | 90 07 07 54 */	stw r0, 0x754(r7)
/* 814BA360 | 48 00 00 0C */	b .L_814BA36C
.L_814BA364:
/* 814BA364 | 60 A0 00 04 */	ori r0, r5, 0x4
/* 814BA368 | 90 07 07 54 */	stw r0, 0x754(r7)
.L_814BA36C:
/* 814BA36C | 80 07 07 54 */	lwz r0, 0x754(r7)
/* 814BA370 | 60 00 00 08 */	ori r0, r0, 0x8
/* 814BA374 | 90 07 07 54 */	stw r0, 0x754(r7)
.L_814BA378:
/* 814BA378 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814BA37C | 42 00 FF 60 */	bdnz .L_814BA2DC
/* 814BA380 | 4E 80 00 20 */	blr
.endfn VFipdm_part_set_change_media_state

# .text:0x17A4 | 0x814BA384 | size: 0x1C
.fn VFipdm_part_set_driver_error_code, global
/* 814BA384 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814BA388 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814BA38C | 1C 00 00 2C */	mulli r0, r0, 0x2c
/* 814BA390 | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814BA394 | 7C 63 02 14 */	add r3, r3, r0
/* 814BA398 | 90 83 07 78 */	stw r4, 0x778(r3)
/* 814BA39C | 4E 80 00 20 */	blr
.endfn VFipdm_part_set_driver_error_code

# .text:0x17C0 | 0x814BA3A0 | size: 0x1C
.fn VFipdm_part_get_driver_error_code, global
/* 814BA3A0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814BA3A4 | 3C 60 81 0D */	lis r3, VFipdm_disk_set_810CCC20@ha
/* 814BA3A8 | 1C 00 00 2C */	mulli r0, r0, 0x2c
/* 814BA3AC | 38 63 CC 20 */	addi r3, r3, VFipdm_disk_set_810CCC20@l
/* 814BA3B0 | 7C 63 02 14 */	add r3, r3, r0
/* 814BA3B4 | 80 63 07 78 */	lwz r3, 0x778(r3)
/* 814BA3B8 | 4E 80 00 20 */	blr
.endfn VFipdm_part_get_driver_error_code
