.include "macros.inc"
.file "nand_drv.c"

# 0x810F5AD8..0x810F5C80 | size: 0x1A8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810F5AD8 | size: 0x1A8
.obj l_nandFunc, local
	.skip 0x1A8
.endobj l_nandFunc

# 0x814D5A54..0x814D89C4 | size: 0x2F70
.text
.balign 4

# .text:0x0 | 0x814D5A54 | size: 0xC0
.fn VFi_NandCreate, global
/* 814D5A54 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D5A58 | 7C 08 02 A6 */	mflr r0
/* 814D5A5C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D5A60 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5A64 | 48 12 3A 51 */	bl _savegpr_24
/* 814D5A68 | 3C C0 10 62 */	lis r6, 0x1062
/* 814D5A6C | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D5A70 | 7C 7B 1B 78 */	mr r27, r3
/* 814D5A74 | 7C 9C 23 78 */	mr r28, r4
/* 814D5A78 | 7C BD 2B 78 */	mr r29, r5
/* 814D5A7C | 3B 06 4D D3 */	addi r24, r6, 0x4dd3
/* 814D5A80 | 3B C0 00 00 */	li r30, 0x0
/* 814D5A84 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D5A88 | 3B 40 00 00 */	li r26, 0x0
/* 814D5A8C | 48 00 00 60 */	b .L_814D5AEC
.L_814D5A90:
/* 814D5A90 | 7F 63 DB 78 */	mr r3, r27
/* 814D5A94 | 7F 84 E3 78 */	mr r4, r28
/* 814D5A98 | 7F A5 EB 78 */	mr r5, r29
/* 814D5A9C | 48 08 E1 FD */	bl NANDCreate
/* 814D5AA0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D5AA4 | 7C 7E 1B 78 */	mr r30, r3
/* 814D5AA8 | 41 82 00 10 */	beq .L_814D5AB8
/* 814D5AAC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D5AB0 | 41 82 00 08 */	beq .L_814D5AB8
/* 814D5AB4 | 48 00 00 48 */	b .L_814D5AFC
.L_814D5AB8:
/* 814D5AB8 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D5ABC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D5AC0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D5AC4 | 7C 78 00 16 */	mulhwu r3, r24, r0
/* 814D5AC8 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D5ACC | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D5AD0 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D5AD4 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D5AD8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D5ADC | 7C 63 22 14 */	add r3, r3, r4
/* 814D5AE0 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D5AE4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5AE8 | 48 06 00 E5 */	bl OSSleepTicks
.L_814D5AEC:
/* 814D5AEC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D5AF0 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D5AF4 | 41 81 FF 9C */	bgt .L_814D5A90
/* 814D5AF8 | 7F C3 F3 78 */	mr r3, r30
.L_814D5AFC:
/* 814D5AFC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5B00 | 48 12 3A 01 */	bl _restgpr_24
/* 814D5B04 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D5B08 | 7C 08 03 A6 */	mtlr r0
/* 814D5B0C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D5B10 | 4E 80 00 20 */	blr
.endfn VFi_NandCreate

# .text:0xC0 | 0x814D5B14 | size: 0xC0
.fn VFi_NandPrivateCreate, global
/* 814D5B14 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D5B18 | 7C 08 02 A6 */	mflr r0
/* 814D5B1C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D5B20 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5B24 | 48 12 39 91 */	bl _savegpr_24
/* 814D5B28 | 3C C0 10 62 */	lis r6, 0x1062
/* 814D5B2C | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D5B30 | 7C 7B 1B 78 */	mr r27, r3
/* 814D5B34 | 7C 9C 23 78 */	mr r28, r4
/* 814D5B38 | 7C BD 2B 78 */	mr r29, r5
/* 814D5B3C | 3B 06 4D D3 */	addi r24, r6, 0x4dd3
/* 814D5B40 | 3B C0 00 00 */	li r30, 0x0
/* 814D5B44 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D5B48 | 3B 40 00 00 */	li r26, 0x0
/* 814D5B4C | 48 00 00 60 */	b .L_814D5BAC
.L_814D5B50:
/* 814D5B50 | 7F 63 DB 78 */	mr r3, r27
/* 814D5B54 | 7F 84 E3 78 */	mr r4, r28
/* 814D5B58 | 7F A5 EB 78 */	mr r5, r29
/* 814D5B5C | 48 08 E1 B1 */	bl NANDPrivateCreate
/* 814D5B60 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D5B64 | 7C 7E 1B 78 */	mr r30, r3
/* 814D5B68 | 41 82 00 10 */	beq .L_814D5B78
/* 814D5B6C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D5B70 | 41 82 00 08 */	beq .L_814D5B78
/* 814D5B74 | 48 00 00 48 */	b .L_814D5BBC
.L_814D5B78:
/* 814D5B78 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D5B7C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D5B80 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D5B84 | 7C 78 00 16 */	mulhwu r3, r24, r0
/* 814D5B88 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D5B8C | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D5B90 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D5B94 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D5B98 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D5B9C | 7C 63 22 14 */	add r3, r3, r4
/* 814D5BA0 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D5BA4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5BA8 | 48 06 00 25 */	bl OSSleepTicks
.L_814D5BAC:
/* 814D5BAC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D5BB0 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D5BB4 | 41 81 FF 9C */	bgt .L_814D5B50
/* 814D5BB8 | 7F C3 F3 78 */	mr r3, r30
.L_814D5BBC:
/* 814D5BBC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5BC0 | 48 12 39 41 */	bl _restgpr_24
/* 814D5BC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D5BC8 | 7C 08 03 A6 */	mtlr r0
/* 814D5BCC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D5BD0 | 4E 80 00 20 */	blr
.endfn VFi_NandPrivateCreate

# .text:0x180 | 0x814D5BD4 | size: 0xB0
.fn VFi_NandDelete, global
/* 814D5BD4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D5BD8 | 7C 08 02 A6 */	mflr r0
/* 814D5BDC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D5BE0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D5BE4 | 48 12 38 D9 */	bl _savegpr_26
/* 814D5BE8 | 3C 80 10 62 */	lis r4, 0x1062
/* 814D5BEC | 83 8D AE 60 */	lwz r28, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D5BF0 | 7C 7A 1B 78 */	mr r26, r3
/* 814D5BF4 | 3B 60 00 00 */	li r27, 0x0
/* 814D5BF8 | 3B A4 4D D3 */	addi r29, r4, 0x4dd3
/* 814D5BFC | 3F C0 80 00 */	lis r30, 0x8000
/* 814D5C00 | 3B E0 00 00 */	li r31, 0x0
/* 814D5C04 | 48 00 00 58 */	b .L_814D5C5C
.L_814D5C08:
/* 814D5C08 | 7F 43 D3 78 */	mr r3, r26
/* 814D5C0C | 48 08 E1 ED */	bl NANDDelete
/* 814D5C10 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D5C14 | 7C 7B 1B 78 */	mr r27, r3
/* 814D5C18 | 41 82 00 10 */	beq .L_814D5C28
/* 814D5C1C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D5C20 | 41 82 00 08 */	beq .L_814D5C28
/* 814D5C24 | 48 00 00 48 */	b .L_814D5C6C
.L_814D5C28:
/* 814D5C28 | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 814D5C2C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D5C30 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D5C34 | 7C 7D 00 16 */	mulhwu r3, r29, r0
/* 814D5C38 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D5C3C | 7C 9F 31 D6 */	mullw r4, r31, r6
/* 814D5C40 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D5C44 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D5C48 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D5C4C | 7C 63 22 14 */	add r3, r3, r4
/* 814D5C50 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D5C54 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5C58 | 48 05 FF 75 */	bl OSSleepTicks
.L_814D5C5C:
/* 814D5C5C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814D5C60 | 3B 9C FF FF */	subi r28, r28, 0x1
/* 814D5C64 | 41 81 FF A4 */	bgt .L_814D5C08
/* 814D5C68 | 7F 63 DB 78 */	mr r3, r27
.L_814D5C6C:
/* 814D5C6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D5C70 | 48 12 38 99 */	bl _restgpr_26
/* 814D5C74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D5C78 | 7C 08 03 A6 */	mtlr r0
/* 814D5C7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D5C80 | 4E 80 00 20 */	blr
.endfn VFi_NandDelete

# .text:0x230 | 0x814D5C84 | size: 0xB0
.fn VFi_NandPrivateDelete, global
/* 814D5C84 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D5C88 | 7C 08 02 A6 */	mflr r0
/* 814D5C8C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D5C90 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D5C94 | 48 12 38 29 */	bl _savegpr_26
/* 814D5C98 | 3C 80 10 62 */	lis r4, 0x1062
/* 814D5C9C | 83 8D AE 60 */	lwz r28, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D5CA0 | 7C 7A 1B 78 */	mr r26, r3
/* 814D5CA4 | 3B 60 00 00 */	li r27, 0x0
/* 814D5CA8 | 3B A4 4D D3 */	addi r29, r4, 0x4dd3
/* 814D5CAC | 3F C0 80 00 */	lis r30, 0x8000
/* 814D5CB0 | 3B E0 00 00 */	li r31, 0x0
/* 814D5CB4 | 48 00 00 58 */	b .L_814D5D0C
.L_814D5CB8:
/* 814D5CB8 | 7F 43 D3 78 */	mr r3, r26
/* 814D5CBC | 48 08 E1 ED */	bl NANDPrivateDelete
/* 814D5CC0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D5CC4 | 7C 7B 1B 78 */	mr r27, r3
/* 814D5CC8 | 41 82 00 10 */	beq .L_814D5CD8
/* 814D5CCC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D5CD0 | 41 82 00 08 */	beq .L_814D5CD8
/* 814D5CD4 | 48 00 00 48 */	b .L_814D5D1C
.L_814D5CD8:
/* 814D5CD8 | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 814D5CDC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D5CE0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D5CE4 | 7C 7D 00 16 */	mulhwu r3, r29, r0
/* 814D5CE8 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D5CEC | 7C 9F 31 D6 */	mullw r4, r31, r6
/* 814D5CF0 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D5CF4 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D5CF8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D5CFC | 7C 63 22 14 */	add r3, r3, r4
/* 814D5D00 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D5D04 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5D08 | 48 05 FE C5 */	bl OSSleepTicks
.L_814D5D0C:
/* 814D5D0C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814D5D10 | 3B 9C FF FF */	subi r28, r28, 0x1
/* 814D5D14 | 41 81 FF A4 */	bgt .L_814D5CB8
/* 814D5D18 | 7F 63 DB 78 */	mr r3, r27
.L_814D5D1C:
/* 814D5D1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D5D20 | 48 12 37 E9 */	bl _restgpr_26
/* 814D5D24 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D5D28 | 7C 08 03 A6 */	mtlr r0
/* 814D5D2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D5D30 | 4E 80 00 20 */	blr
.endfn VFi_NandPrivateDelete

# .text:0x2E0 | 0x814D5D34 | size: 0xB0
.fn VFi_NandClose, global
/* 814D5D34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D5D38 | 7C 08 02 A6 */	mflr r0
/* 814D5D3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D5D40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D5D44 | 48 12 37 79 */	bl _savegpr_26
/* 814D5D48 | 3C 80 10 62 */	lis r4, 0x1062
/* 814D5D4C | 83 8D AE 60 */	lwz r28, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D5D50 | 7C 7A 1B 78 */	mr r26, r3
/* 814D5D54 | 3B 60 00 00 */	li r27, 0x0
/* 814D5D58 | 3B A4 4D D3 */	addi r29, r4, 0x4dd3
/* 814D5D5C | 3F C0 80 00 */	lis r30, 0x8000
/* 814D5D60 | 3B E0 00 00 */	li r31, 0x0
/* 814D5D64 | 48 00 00 58 */	b .L_814D5DBC
.L_814D5D68:
/* 814D5D68 | 7F 43 D3 78 */	mr r3, r26
/* 814D5D6C | 48 08 F7 81 */	bl NANDClose
/* 814D5D70 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D5D74 | 7C 7B 1B 78 */	mr r27, r3
/* 814D5D78 | 41 82 00 10 */	beq .L_814D5D88
/* 814D5D7C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D5D80 | 41 82 00 08 */	beq .L_814D5D88
/* 814D5D84 | 48 00 00 48 */	b .L_814D5DCC
.L_814D5D88:
/* 814D5D88 | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 814D5D8C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D5D90 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D5D94 | 7C 7D 00 16 */	mulhwu r3, r29, r0
/* 814D5D98 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D5D9C | 7C 9F 31 D6 */	mullw r4, r31, r6
/* 814D5DA0 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D5DA4 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D5DA8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D5DAC | 7C 63 22 14 */	add r3, r3, r4
/* 814D5DB0 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D5DB4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5DB8 | 48 05 FE 15 */	bl OSSleepTicks
.L_814D5DBC:
/* 814D5DBC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814D5DC0 | 3B 9C FF FF */	subi r28, r28, 0x1
/* 814D5DC4 | 41 81 FF A4 */	bgt .L_814D5D68
/* 814D5DC8 | 7F 63 DB 78 */	mr r3, r27
.L_814D5DCC:
/* 814D5DCC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D5DD0 | 48 12 37 39 */	bl _restgpr_26
/* 814D5DD4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D5DD8 | 7C 08 03 A6 */	mtlr r0
/* 814D5DDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D5DE0 | 4E 80 00 20 */	blr
.endfn VFi_NandClose

# .text:0x390 | 0x814D5DE4 | size: 0xC0
.fn VFi_NandOpen, global
/* 814D5DE4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D5DE8 | 7C 08 02 A6 */	mflr r0
/* 814D5DEC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D5DF0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5DF4 | 48 12 36 C1 */	bl _savegpr_24
/* 814D5DF8 | 3C C0 10 62 */	lis r6, 0x1062
/* 814D5DFC | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D5E00 | 7C 7B 1B 78 */	mr r27, r3
/* 814D5E04 | 7C 9C 23 78 */	mr r28, r4
/* 814D5E08 | 7C BD 2B 78 */	mr r29, r5
/* 814D5E0C | 3B 06 4D D3 */	addi r24, r6, 0x4dd3
/* 814D5E10 | 3B C0 00 00 */	li r30, 0x0
/* 814D5E14 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D5E18 | 3B 40 00 00 */	li r26, 0x0
/* 814D5E1C | 48 00 00 60 */	b .L_814D5E7C
.L_814D5E20:
/* 814D5E20 | 7F 63 DB 78 */	mr r3, r27
/* 814D5E24 | 7F 84 E3 78 */	mr r4, r28
/* 814D5E28 | 7F A5 EB 78 */	mr r5, r29
/* 814D5E2C | 48 08 F4 41 */	bl NANDOpen
/* 814D5E30 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D5E34 | 7C 7E 1B 78 */	mr r30, r3
/* 814D5E38 | 41 82 00 10 */	beq .L_814D5E48
/* 814D5E3C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D5E40 | 41 82 00 08 */	beq .L_814D5E48
/* 814D5E44 | 48 00 00 48 */	b .L_814D5E8C
.L_814D5E48:
/* 814D5E48 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D5E4C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D5E50 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D5E54 | 7C 78 00 16 */	mulhwu r3, r24, r0
/* 814D5E58 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D5E5C | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D5E60 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D5E64 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D5E68 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D5E6C | 7C 63 22 14 */	add r3, r3, r4
/* 814D5E70 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D5E74 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5E78 | 48 05 FD 55 */	bl OSSleepTicks
.L_814D5E7C:
/* 814D5E7C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D5E80 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D5E84 | 41 81 FF 9C */	bgt .L_814D5E20
/* 814D5E88 | 7F C3 F3 78 */	mr r3, r30
.L_814D5E8C:
/* 814D5E8C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5E90 | 48 12 36 71 */	bl _restgpr_24
/* 814D5E94 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D5E98 | 7C 08 03 A6 */	mtlr r0
/* 814D5E9C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D5EA0 | 4E 80 00 20 */	blr
.endfn VFi_NandOpen

# .text:0x450 | 0x814D5EA4 | size: 0xC0
.fn VFi_NandPrivateOpen, global
/* 814D5EA4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D5EA8 | 7C 08 02 A6 */	mflr r0
/* 814D5EAC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D5EB0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5EB4 | 48 12 36 01 */	bl _savegpr_24
/* 814D5EB8 | 3C C0 10 62 */	lis r6, 0x1062
/* 814D5EBC | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D5EC0 | 7C 7B 1B 78 */	mr r27, r3
/* 814D5EC4 | 7C 9C 23 78 */	mr r28, r4
/* 814D5EC8 | 7C BD 2B 78 */	mr r29, r5
/* 814D5ECC | 3B 06 4D D3 */	addi r24, r6, 0x4dd3
/* 814D5ED0 | 3B C0 00 00 */	li r30, 0x0
/* 814D5ED4 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D5ED8 | 3B 40 00 00 */	li r26, 0x0
/* 814D5EDC | 48 00 00 60 */	b .L_814D5F3C
.L_814D5EE0:
/* 814D5EE0 | 7F 63 DB 78 */	mr r3, r27
/* 814D5EE4 | 7F 84 E3 78 */	mr r4, r28
/* 814D5EE8 | 7F A5 EB 78 */	mr r5, r29
/* 814D5EEC | 48 08 F4 0D */	bl NANDPrivateOpen
/* 814D5EF0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D5EF4 | 7C 7E 1B 78 */	mr r30, r3
/* 814D5EF8 | 41 82 00 10 */	beq .L_814D5F08
/* 814D5EFC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D5F00 | 41 82 00 08 */	beq .L_814D5F08
/* 814D5F04 | 48 00 00 48 */	b .L_814D5F4C
.L_814D5F08:
/* 814D5F08 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D5F0C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D5F10 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D5F14 | 7C 78 00 16 */	mulhwu r3, r24, r0
/* 814D5F18 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D5F1C | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D5F20 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D5F24 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D5F28 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D5F2C | 7C 63 22 14 */	add r3, r3, r4
/* 814D5F30 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D5F34 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5F38 | 48 05 FC 95 */	bl OSSleepTicks
.L_814D5F3C:
/* 814D5F3C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D5F40 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D5F44 | 41 81 FF 9C */	bgt .L_814D5EE0
/* 814D5F48 | 7F C3 F3 78 */	mr r3, r30
.L_814D5F4C:
/* 814D5F4C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5F50 | 48 12 35 B1 */	bl _restgpr_24
/* 814D5F54 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D5F58 | 7C 08 03 A6 */	mtlr r0
/* 814D5F5C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D5F60 | 4E 80 00 20 */	blr
.endfn VFi_NandPrivateOpen

# .text:0x510 | 0x814D5F64 | size: 0xC0
.fn VFi_NandRead, global
/* 814D5F64 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D5F68 | 7C 08 02 A6 */	mflr r0
/* 814D5F6C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D5F70 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5F74 | 48 12 35 41 */	bl _savegpr_24
/* 814D5F78 | 3C C0 10 62 */	lis r6, 0x1062
/* 814D5F7C | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D5F80 | 7C 7B 1B 78 */	mr r27, r3
/* 814D5F84 | 7C 9C 23 78 */	mr r28, r4
/* 814D5F88 | 7C BD 2B 78 */	mr r29, r5
/* 814D5F8C | 3B 06 4D D3 */	addi r24, r6, 0x4dd3
/* 814D5F90 | 3B C0 00 00 */	li r30, 0x0
/* 814D5F94 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D5F98 | 3B 40 00 00 */	li r26, 0x0
/* 814D5F9C | 48 00 00 60 */	b .L_814D5FFC
.L_814D5FA0:
/* 814D5FA0 | 7F 63 DB 78 */	mr r3, r27
/* 814D5FA4 | 7F 84 E3 78 */	mr r4, r28
/* 814D5FA8 | 7F A5 EB 78 */	mr r5, r29
/* 814D5FAC | 48 08 E0 55 */	bl NANDRead
/* 814D5FB0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D5FB4 | 7C 7E 1B 78 */	mr r30, r3
/* 814D5FB8 | 41 82 00 10 */	beq .L_814D5FC8
/* 814D5FBC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D5FC0 | 41 82 00 08 */	beq .L_814D5FC8
/* 814D5FC4 | 48 00 00 48 */	b .L_814D600C
.L_814D5FC8:
/* 814D5FC8 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D5FCC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D5FD0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D5FD4 | 7C 78 00 16 */	mulhwu r3, r24, r0
/* 814D5FD8 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D5FDC | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D5FE0 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D5FE4 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D5FE8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D5FEC | 7C 63 22 14 */	add r3, r3, r4
/* 814D5FF0 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D5FF4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5FF8 | 48 05 FB D5 */	bl OSSleepTicks
.L_814D5FFC:
/* 814D5FFC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D6000 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D6004 | 41 81 FF 9C */	bgt .L_814D5FA0
/* 814D6008 | 7F C3 F3 78 */	mr r3, r30
.L_814D600C:
/* 814D600C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D6010 | 48 12 34 F1 */	bl _restgpr_24
/* 814D6014 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D6018 | 7C 08 03 A6 */	mtlr r0
/* 814D601C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D6020 | 4E 80 00 20 */	blr
.endfn VFi_NandRead

# .text:0x5D0 | 0x814D6024 | size: 0xC0
.fn VFi_NandCreateDir, global
/* 814D6024 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D6028 | 7C 08 02 A6 */	mflr r0
/* 814D602C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D6030 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D6034 | 48 12 34 81 */	bl _savegpr_24
/* 814D6038 | 3C C0 10 62 */	lis r6, 0x1062
/* 814D603C | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6040 | 7C 7B 1B 78 */	mr r27, r3
/* 814D6044 | 7C 9C 23 78 */	mr r28, r4
/* 814D6048 | 7C BD 2B 78 */	mr r29, r5
/* 814D604C | 3B 06 4D D3 */	addi r24, r6, 0x4dd3
/* 814D6050 | 3B C0 00 00 */	li r30, 0x0
/* 814D6054 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D6058 | 3B 40 00 00 */	li r26, 0x0
/* 814D605C | 48 00 00 60 */	b .L_814D60BC
.L_814D6060:
/* 814D6060 | 7F 63 DB 78 */	mr r3, r27
/* 814D6064 | 7F 84 E3 78 */	mr r4, r28
/* 814D6068 | 7F A5 EB 78 */	mr r5, r29
/* 814D606C | 48 08 E5 59 */	bl NANDCreateDir
/* 814D6070 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6074 | 7C 7E 1B 78 */	mr r30, r3
/* 814D6078 | 41 82 00 10 */	beq .L_814D6088
/* 814D607C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6080 | 41 82 00 08 */	beq .L_814D6088
/* 814D6084 | 48 00 00 48 */	b .L_814D60CC
.L_814D6088:
/* 814D6088 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D608C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6090 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6094 | 7C 78 00 16 */	mulhwu r3, r24, r0
/* 814D6098 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D609C | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D60A0 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D60A4 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D60A8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D60AC | 7C 63 22 14 */	add r3, r3, r4
/* 814D60B0 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D60B4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D60B8 | 48 05 FB 15 */	bl OSSleepTicks
.L_814D60BC:
/* 814D60BC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D60C0 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D60C4 | 41 81 FF 9C */	bgt .L_814D6060
/* 814D60C8 | 7F C3 F3 78 */	mr r3, r30
.L_814D60CC:
/* 814D60CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D60D0 | 48 12 34 31 */	bl _restgpr_24
/* 814D60D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D60D8 | 7C 08 03 A6 */	mtlr r0
/* 814D60DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D60E0 | 4E 80 00 20 */	blr
.endfn VFi_NandCreateDir

# .text:0x690 | 0x814D60E4 | size: 0xC0
.fn VFi_NandPrivateCreateDir, global
/* 814D60E4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D60E8 | 7C 08 02 A6 */	mflr r0
/* 814D60EC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D60F0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D60F4 | 48 12 33 C1 */	bl _savegpr_24
/* 814D60F8 | 3C C0 10 62 */	lis r6, 0x1062
/* 814D60FC | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6100 | 7C 7B 1B 78 */	mr r27, r3
/* 814D6104 | 7C 9C 23 78 */	mr r28, r4
/* 814D6108 | 7C BD 2B 78 */	mr r29, r5
/* 814D610C | 3B 06 4D D3 */	addi r24, r6, 0x4dd3
/* 814D6110 | 3B C0 00 00 */	li r30, 0x0
/* 814D6114 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D6118 | 3B 40 00 00 */	li r26, 0x0
/* 814D611C | 48 00 00 60 */	b .L_814D617C
.L_814D6120:
/* 814D6120 | 7F 63 DB 78 */	mr r3, r27
/* 814D6124 | 7F 84 E3 78 */	mr r4, r28
/* 814D6128 | 7F A5 EB 78 */	mr r5, r29
/* 814D612C | 48 08 E5 0D */	bl NANDPrivateCreateDir
/* 814D6130 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6134 | 7C 7E 1B 78 */	mr r30, r3
/* 814D6138 | 41 82 00 10 */	beq .L_814D6148
/* 814D613C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6140 | 41 82 00 08 */	beq .L_814D6148
/* 814D6144 | 48 00 00 48 */	b .L_814D618C
.L_814D6148:
/* 814D6148 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D614C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6150 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6154 | 7C 78 00 16 */	mulhwu r3, r24, r0
/* 814D6158 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D615C | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D6160 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6164 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6168 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D616C | 7C 63 22 14 */	add r3, r3, r4
/* 814D6170 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6174 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6178 | 48 05 FA 55 */	bl OSSleepTicks
.L_814D617C:
/* 814D617C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D6180 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D6184 | 41 81 FF 9C */	bgt .L_814D6120
/* 814D6188 | 7F C3 F3 78 */	mr r3, r30
.L_814D618C:
/* 814D618C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D6190 | 48 12 33 71 */	bl _restgpr_24
/* 814D6194 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D6198 | 7C 08 03 A6 */	mtlr r0
/* 814D619C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D61A0 | 4E 80 00 20 */	blr
.endfn VFi_NandPrivateCreateDir

# .text:0x750 | 0x814D61A4 | size: 0xB8
.fn VFi_NandGetLength, global
/* 814D61A4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D61A8 | 7C 08 02 A6 */	mflr r0
/* 814D61AC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D61B0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D61B4 | 48 12 33 05 */	bl _savegpr_25
/* 814D61B8 | 3C A0 10 62 */	lis r5, 0x1062
/* 814D61BC | 83 4D AE 60 */	lwz r26, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D61C0 | 7C 7E 1B 78 */	mr r30, r3
/* 814D61C4 | 7C 9F 23 78 */	mr r31, r4
/* 814D61C8 | 3B 65 4D D3 */	addi r27, r5, 0x4dd3
/* 814D61CC | 3B 20 00 00 */	li r25, 0x0
/* 814D61D0 | 3F 80 80 00 */	lis r28, 0x8000
/* 814D61D4 | 3B A0 00 00 */	li r29, 0x0
/* 814D61D8 | 48 00 00 5C */	b .L_814D6234
.L_814D61DC:
/* 814D61DC | 7F C3 F3 78 */	mr r3, r30
/* 814D61E0 | 7F E4 FB 78 */	mr r4, r31
/* 814D61E4 | 48 08 E7 4D */	bl NANDGetLength
/* 814D61E8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D61EC | 7C 79 1B 78 */	mr r25, r3
/* 814D61F0 | 41 82 00 10 */	beq .L_814D6200
/* 814D61F4 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D61F8 | 41 82 00 08 */	beq .L_814D6200
/* 814D61FC | 48 00 00 48 */	b .L_814D6244
.L_814D6200:
/* 814D6200 | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 814D6204 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6208 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D620C | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D6210 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6214 | 7C 9D 31 D6 */	mullw r4, r29, r6
/* 814D6218 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D621C | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6220 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6224 | 7C 63 22 14 */	add r3, r3, r4
/* 814D6228 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D622C | 7C 63 02 14 */	add r3, r3, r0
/* 814D6230 | 48 05 F9 9D */	bl OSSleepTicks
.L_814D6234:
/* 814D6234 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814D6238 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 814D623C | 41 81 FF A0 */	bgt .L_814D61DC
/* 814D6240 | 7F 23 CB 78 */	mr r3, r25
.L_814D6244:
/* 814D6244 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D6248 | 48 12 32 BD */	bl _restgpr_25
/* 814D624C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D6250 | 7C 08 03 A6 */	mtlr r0
/* 814D6254 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D6258 | 4E 80 00 20 */	blr
.endfn VFi_NandGetLength

# .text:0x808 | 0x814D625C | size: 0x218
.fn VFi_NandOpenSp, global
/* 814D625C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D6260 | 7C 08 02 A6 */	mflr r0
/* 814D6264 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D6268 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D626C | 48 12 32 49 */	bl _savegpr_24
/* 814D6270 | 28 06 00 1A */	cmplwi r6, 0x1a
/* 814D6274 | 7C 7B 1B 78 */	mr r27, r3
/* 814D6278 | 7C 9D 23 78 */	mr r29, r4
/* 814D627C | 7C BC 2B 78 */	mr r28, r5
/* 814D6280 | 40 80 00 BC */	bge .L_814D633C
/* 814D6284 | 3C A0 81 0F */	lis r5, l_nandFunc@ha
/* 814D6288 | 54 C0 20 36 */	slwi r0, r6, 4
/* 814D628C | 38 A5 5A D8 */	addi r5, r5, l_nandFunc@l
/* 814D6290 | 7C A5 02 14 */	add r5, r5, r0
/* 814D6294 | 81 85 00 04 */	lwz r12, 0x4(r5)
/* 814D6298 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D629C | 41 82 00 14 */	beq .L_814D62B0
/* 814D62A0 | 7F 85 E3 78 */	mr r5, r28
/* 814D62A4 | 7D 89 03 A6 */	mtctr r12
/* 814D62A8 | 4E 80 04 21 */	bctrl
/* 814D62AC | 48 00 01 B0 */	b .L_814D645C
.L_814D62B0:
/* 814D62B0 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D62B4 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D62B8 | 3B 43 4D D3 */	addi r26, r3, 0x4dd3
/* 814D62BC | 3B E0 00 00 */	li r31, 0x0
/* 814D62C0 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D62C4 | 3B 00 00 00 */	li r24, 0x0
/* 814D62C8 | 48 00 00 60 */	b .L_814D6328
.L_814D62CC:
/* 814D62CC | 7F 63 DB 78 */	mr r3, r27
/* 814D62D0 | 7F A4 EB 78 */	mr r4, r29
/* 814D62D4 | 7F 85 E3 78 */	mr r5, r28
/* 814D62D8 | 48 08 EF 95 */	bl NANDOpen
/* 814D62DC | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D62E0 | 7C 7F 1B 78 */	mr r31, r3
/* 814D62E4 | 41 82 00 10 */	beq .L_814D62F4
/* 814D62E8 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D62EC | 41 82 00 08 */	beq .L_814D62F4
/* 814D62F0 | 48 00 00 44 */	b .L_814D6334
.L_814D62F4:
/* 814D62F4 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D62F8 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D62FC | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6300 | 7C 7A 00 16 */	mulhwu r3, r26, r0
/* 814D6304 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6308 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D630C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6310 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6314 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6318 | 7C 63 22 14 */	add r3, r3, r4
/* 814D631C | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6320 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6324 | 48 05 F8 A9 */	bl OSSleepTicks
.L_814D6328:
/* 814D6328 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D632C | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D6330 | 41 81 FF 9C */	bgt .L_814D62CC
.L_814D6334:
/* 814D6334 | 7F E3 FB 78 */	mr r3, r31
/* 814D6338 | 48 00 01 24 */	b .L_814D645C
.L_814D633C:
/* 814D633C | 3C 06 00 01 */	addis r0, r6, 0x1
/* 814D6340 | 28 00 FF F6 */	cmplwi r0, 0xfff6
/* 814D6344 | 40 82 00 90 */	bne .L_814D63D4
/* 814D6348 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D634C | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6350 | 3B 43 4D D3 */	addi r26, r3, 0x4dd3
/* 814D6354 | 3B C0 00 00 */	li r30, 0x0
/* 814D6358 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D635C | 3B 00 00 00 */	li r24, 0x0
/* 814D6360 | 48 00 00 60 */	b .L_814D63C0
.L_814D6364:
/* 814D6364 | 7F 63 DB 78 */	mr r3, r27
/* 814D6368 | 7F A4 EB 78 */	mr r4, r29
/* 814D636C | 7F 85 E3 78 */	mr r5, r28
/* 814D6370 | 48 08 EE FD */	bl NANDOpen
/* 814D6374 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6378 | 7C 7E 1B 78 */	mr r30, r3
/* 814D637C | 41 82 00 10 */	beq .L_814D638C
/* 814D6380 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6384 | 41 82 00 08 */	beq .L_814D638C
/* 814D6388 | 48 00 00 44 */	b .L_814D63CC
.L_814D638C:
/* 814D638C | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D6390 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6394 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6398 | 7C 7A 00 16 */	mulhwu r3, r26, r0
/* 814D639C | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D63A0 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D63A4 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D63A8 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D63AC | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D63B0 | 7C 63 22 14 */	add r3, r3, r4
/* 814D63B4 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D63B8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D63BC | 48 05 F8 11 */	bl OSSleepTicks
.L_814D63C0:
/* 814D63C0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D63C4 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D63C8 | 41 81 FF 9C */	bgt .L_814D6364
.L_814D63CC:
/* 814D63CC | 7F C3 F3 78 */	mr r3, r30
/* 814D63D0 | 48 00 00 8C */	b .L_814D645C
.L_814D63D4:
/* 814D63D4 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D63D8 | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D63DC | 3B 03 4D D3 */	addi r24, r3, 0x4dd3
/* 814D63E0 | 3B C0 00 00 */	li r30, 0x0
/* 814D63E4 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D63E8 | 3B 40 00 00 */	li r26, 0x0
/* 814D63EC | 48 00 00 60 */	b .L_814D644C
.L_814D63F0:
/* 814D63F0 | 7F 63 DB 78 */	mr r3, r27
/* 814D63F4 | 7F A4 EB 78 */	mr r4, r29
/* 814D63F8 | 7F 85 E3 78 */	mr r5, r28
/* 814D63FC | 48 08 EE FD */	bl NANDPrivateOpen
/* 814D6400 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6404 | 7C 7E 1B 78 */	mr r30, r3
/* 814D6408 | 41 82 00 10 */	beq .L_814D6418
/* 814D640C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6410 | 41 82 00 08 */	beq .L_814D6418
/* 814D6414 | 48 00 00 44 */	b .L_814D6458
.L_814D6418:
/* 814D6418 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D641C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6420 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6424 | 7C 78 00 16 */	mulhwu r3, r24, r0
/* 814D6428 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D642C | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D6430 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6434 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6438 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D643C | 7C 63 22 14 */	add r3, r3, r4
/* 814D6440 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6444 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6448 | 48 05 F7 85 */	bl OSSleepTicks
.L_814D644C:
/* 814D644C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D6450 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D6454 | 41 81 FF 9C */	bgt .L_814D63F0
.L_814D6458:
/* 814D6458 | 7F C3 F3 78 */	mr r3, r30
.L_814D645C:
/* 814D645C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D6460 | 48 12 30 A1 */	bl _restgpr_24
/* 814D6464 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D6468 | 7C 08 03 A6 */	mtlr r0
/* 814D646C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D6470 | 4E 80 00 20 */	blr
.endfn VFi_NandOpenSp

# .text:0xA20 | 0x814D6474 | size: 0x4C
.fn VFi_NandSetNANDFuncNormal, global
/* 814D6474 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D6478 | 4C 80 00 20 */	bgelr
/* 814D647C | 3C A0 81 4D */	lis r5, VFi_NandCreate@ha
/* 814D6480 | 3C 80 81 0F */	lis r4, l_nandFunc@ha
/* 814D6484 | 54 60 20 36 */	slwi r0, r3, 4
/* 814D6488 | 3C 60 81 4D */	lis r3, VFi_NandOpen@ha
/* 814D648C | 38 84 5A D8 */	addi r4, r4, l_nandFunc@l
/* 814D6490 | 38 A5 5A 54 */	addi r5, r5, VFi_NandCreate@l
/* 814D6494 | 7C A4 01 2E */	stwx r5, r4, r0
/* 814D6498 | 7C A4 02 14 */	add r5, r4, r0
/* 814D649C | 38 63 5D E4 */	addi r3, r3, VFi_NandOpen@l
/* 814D64A0 | 3C 80 81 4D */	lis r4, VFi_NandCreateDir@ha
/* 814D64A4 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814D64A8 | 38 84 60 24 */	addi r4, r4, VFi_NandCreateDir@l
/* 814D64AC | 3C 60 81 4D */	lis r3, VFi_NandDelete@ha
/* 814D64B0 | 90 85 00 08 */	stw r4, 0x8(r5)
/* 814D64B4 | 38 63 5B D4 */	addi r3, r3, VFi_NandDelete@l
/* 814D64B8 | 90 65 00 0C */	stw r3, 0xc(r5)
/* 814D64BC | 4E 80 00 20 */	blr
.endfn VFi_NandSetNANDFuncNormal

# .text:0xA6C | 0x814D64C0 | size: 0x4C
.fn VFi_NandSetNANDFuncEx, global
/* 814D64C0 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D64C4 | 4C 80 00 20 */	bgelr
/* 814D64C8 | 3C A0 81 4D */	lis r5, VFi_NandPrivateCreate@ha
/* 814D64CC | 3C 80 81 0F */	lis r4, l_nandFunc@ha
/* 814D64D0 | 54 60 20 36 */	slwi r0, r3, 4
/* 814D64D4 | 3C 60 81 4D */	lis r3, VFi_NandPrivateOpen@ha
/* 814D64D8 | 38 84 5A D8 */	addi r4, r4, l_nandFunc@l
/* 814D64DC | 38 A5 5B 14 */	addi r5, r5, VFi_NandPrivateCreate@l
/* 814D64E0 | 7C A4 01 2E */	stwx r5, r4, r0
/* 814D64E4 | 7C A4 02 14 */	add r5, r4, r0
/* 814D64E8 | 38 63 5E A4 */	addi r3, r3, VFi_NandPrivateOpen@l
/* 814D64EC | 3C 80 81 4D */	lis r4, VFi_NandPrivateCreateDir@ha
/* 814D64F0 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814D64F4 | 38 84 60 E4 */	addi r4, r4, VFi_NandPrivateCreateDir@l
/* 814D64F8 | 3C 60 81 4D */	lis r3, VFi_NandPrivateDelete@ha
/* 814D64FC | 90 85 00 08 */	stw r4, 0x8(r5)
/* 814D6500 | 38 63 5C 84 */	addi r3, r3, VFi_NandPrivateDelete@l
/* 814D6504 | 90 65 00 0C */	stw r3, 0xc(r5)
/* 814D6508 | 4E 80 00 20 */	blr
.endfn VFi_NandSetNANDFuncEx

# .text:0xAB8 | 0x814D650C | size: 0x3B0
.fn A32_NANDRead, global
/* 814D650C | 54 2B 06 BE */	clrlwi r11, r1, 26
/* 814D6510 | 7C 2C 0B 78 */	mr r12, r1
/* 814D6514 | 21 6B FF 00 */	subfic r11, r11, -0x100
/* 814D6518 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814D651C | 7C 08 02 A6 */	mflr r0
/* 814D6520 | 7D 8B 63 78 */	mr r11, r12
/* 814D6524 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814D6528 | 48 12 2F 89 */	bl _savegpr_23
/* 814D652C | 54 A0 06 FF */	clrlwi. r0, r5, 27
/* 814D6530 | 7C 7A 1B 78 */	mr r26, r3
/* 814D6534 | 7C 9C 23 78 */	mr r28, r4
/* 814D6538 | 7C BB 2B 78 */	mr r27, r5
/* 814D653C | 41 82 00 0C */	beq .L_814D6548
/* 814D6540 | 38 60 00 00 */	li r3, 0x0
/* 814D6544 | 48 00 03 5C */	b .L_814D68A0
.L_814D6548:
/* 814D6548 | 7F 83 E3 78 */	mr r3, r28
/* 814D654C | 7F 64 DB 78 */	mr r4, r27
/* 814D6550 | 38 A1 00 48 */	addi r5, r1, 0x48
/* 814D6554 | 38 C1 00 50 */	addi r6, r1, 0x50
/* 814D6558 | 38 E1 00 44 */	addi r7, r1, 0x44
/* 814D655C | 39 01 00 4C */	addi r8, r1, 0x4c
/* 814D6560 | 39 21 00 40 */	addi r9, r1, 0x40
/* 814D6564 | 4B FF E8 D5 */	bl dCommon_DevideBuff32
/* 814D6568 | 80 01 00 48 */	lwz r0, 0x48(r1)
/* 814D656C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D6570 | 40 82 00 98 */	bne .L_814D6608
/* 814D6574 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6578 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D657C | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D6580 | 3B E0 00 00 */	li r31, 0x0
/* 814D6584 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D6588 | 3A E0 00 00 */	li r23, 0x0
/* 814D658C | 48 00 00 60 */	b .L_814D65EC
.L_814D6590:
/* 814D6590 | 7F 43 D3 78 */	mr r3, r26
/* 814D6594 | 7F 84 E3 78 */	mr r4, r28
/* 814D6598 | 7F 65 DB 78 */	mr r5, r27
/* 814D659C | 48 08 DA 65 */	bl NANDRead
/* 814D65A0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D65A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D65A8 | 41 82 00 10 */	beq .L_814D65B8
/* 814D65AC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D65B0 | 41 82 00 08 */	beq .L_814D65B8
/* 814D65B4 | 48 00 00 44 */	b .L_814D65F8
.L_814D65B8:
/* 814D65B8 | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D65BC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D65C0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D65C4 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D65C8 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D65CC | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D65D0 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D65D4 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D65D8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D65DC | 7C 63 22 14 */	add r3, r3, r4
/* 814D65E0 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D65E4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D65E8 | 48 05 F5 E5 */	bl OSSleepTicks
.L_814D65EC:
/* 814D65EC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D65F0 | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D65F4 | 41 81 FF 9C */	bgt .L_814D6590
.L_814D65F8:
/* 814D65F8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D65FC | 40 80 02 A0 */	bge .L_814D689C
/* 814D6600 | 7F E3 FB 78 */	mr r3, r31
/* 814D6604 | 48 00 02 9C */	b .L_814D68A0
.L_814D6608:
/* 814D6608 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D660C | 83 ED AE 60 */	lwz r31, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6610 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D6614 | 3B C0 00 00 */	li r30, 0x0
/* 814D6618 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D661C | 3A E0 00 00 */	li r23, 0x0
/* 814D6620 | 48 00 00 60 */	b .L_814D6680
.L_814D6624:
/* 814D6624 | 7F 43 D3 78 */	mr r3, r26
/* 814D6628 | 38 81 00 80 */	addi r4, r1, 0x80
/* 814D662C | 38 A0 00 20 */	li r5, 0x20
/* 814D6630 | 48 08 D9 D1 */	bl NANDRead
/* 814D6634 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6638 | 7C 7E 1B 78 */	mr r30, r3
/* 814D663C | 41 82 00 10 */	beq .L_814D664C
/* 814D6640 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6644 | 41 82 00 08 */	beq .L_814D664C
/* 814D6648 | 48 00 00 44 */	b .L_814D668C
.L_814D664C:
/* 814D664C | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D6650 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6654 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6658 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D665C | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6660 | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D6664 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6668 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D666C | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6670 | 7C 63 22 14 */	add r3, r3, r4
/* 814D6674 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6678 | 7C 63 02 14 */	add r3, r3, r0
/* 814D667C | 48 05 F5 51 */	bl OSSleepTicks
.L_814D6680:
/* 814D6680 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D6684 | 3B FF FF FF */	subi r31, r31, 0x1
/* 814D6688 | 41 81 FF 9C */	bgt .L_814D6624
.L_814D668C:
/* 814D668C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D6690 | 40 80 00 0C */	bge .L_814D669C
/* 814D6694 | 7F C3 F3 78 */	mr r3, r30
/* 814D6698 | 48 00 02 08 */	b .L_814D68A0
.L_814D669C:
/* 814D669C | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 814D66A0 | 7F 83 E3 78 */	mr r3, r28
/* 814D66A4 | 38 81 00 80 */	addi r4, r1, 0x80
/* 814D66A8 | 4B FD F1 39 */	bl VFipf_memcpy
/* 814D66AC | 80 01 00 40 */	lwz r0, 0x40(r1)
/* 814D66B0 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D66B4 | 83 AD AE 60 */	lwz r29, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D66B8 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D66BC | 7F C0 00 D0 */	neg r30, r0
/* 814D66C0 | 3B E0 00 00 */	li r31, 0x0
/* 814D66C4 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D66C8 | 3A E0 00 00 */	li r23, 0x0
/* 814D66CC | 48 00 00 60 */	b .L_814D672C
.L_814D66D0:
/* 814D66D0 | 7F 43 D3 78 */	mr r3, r26
/* 814D66D4 | 7F C4 F3 78 */	mr r4, r30
/* 814D66D8 | 38 A0 00 01 */	li r5, 0x1
/* 814D66DC | 48 08 DA E5 */	bl NANDSeek
/* 814D66E0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D66E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D66E8 | 41 82 00 10 */	beq .L_814D66F8
/* 814D66EC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D66F0 | 41 82 00 08 */	beq .L_814D66F8
/* 814D66F4 | 48 00 00 44 */	b .L_814D6738
.L_814D66F8:
/* 814D66F8 | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D66FC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6700 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6704 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D6708 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D670C | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D6710 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6714 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6718 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D671C | 7C 63 22 14 */	add r3, r3, r4
/* 814D6720 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6724 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6728 | 48 05 F4 A5 */	bl OSSleepTicks
.L_814D672C:
/* 814D672C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D6730 | 3B BD FF FF */	subi r29, r29, 0x1
/* 814D6734 | 41 81 FF 9C */	bgt .L_814D66D0
.L_814D6738:
/* 814D6738 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D673C | 40 80 00 0C */	bge .L_814D6748
/* 814D6740 | 7F E3 FB 78 */	mr r3, r31
/* 814D6744 | 48 00 01 5C */	b .L_814D68A0
.L_814D6748:
/* 814D6748 | 83 C1 00 44 */	lwz r30, 0x44(r1)
/* 814D674C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D6750 | 41 82 00 9C */	beq .L_814D67EC
/* 814D6754 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6758 | 83 A1 00 50 */	lwz r29, 0x50(r1)
/* 814D675C | 83 8D AE 60 */	lwz r28, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6760 | 3A E3 4D D3 */	addi r23, r3, 0x4dd3
/* 814D6764 | 3B E0 00 00 */	li r31, 0x0
/* 814D6768 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D676C | 3B 20 00 00 */	li r25, 0x0
/* 814D6770 | 48 00 00 60 */	b .L_814D67D0
.L_814D6774:
/* 814D6774 | 7F 43 D3 78 */	mr r3, r26
/* 814D6778 | 7F A4 EB 78 */	mr r4, r29
/* 814D677C | 7F C5 F3 78 */	mr r5, r30
/* 814D6780 | 48 08 D8 81 */	bl NANDRead
/* 814D6784 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6788 | 7C 7F 1B 78 */	mr r31, r3
/* 814D678C | 41 82 00 10 */	beq .L_814D679C
/* 814D6790 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6794 | 41 82 00 08 */	beq .L_814D679C
/* 814D6798 | 48 00 00 44 */	b .L_814D67DC
.L_814D679C:
/* 814D679C | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D67A0 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D67A4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D67A8 | 7C 77 00 16 */	mulhwu r3, r23, r0
/* 814D67AC | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D67B0 | 7C 99 31 D6 */	mullw r4, r25, r6
/* 814D67B4 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D67B8 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D67BC | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D67C0 | 7C 63 22 14 */	add r3, r3, r4
/* 814D67C4 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D67C8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D67CC | 48 05 F4 01 */	bl OSSleepTicks
.L_814D67D0:
/* 814D67D0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814D67D4 | 3B 9C FF FF */	subi r28, r28, 0x1
/* 814D67D8 | 41 81 FF 9C */	bgt .L_814D6774
.L_814D67DC:
/* 814D67DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D67E0 | 40 80 00 0C */	bge .L_814D67EC
/* 814D67E4 | 7F E3 FB 78 */	mr r3, r31
/* 814D67E8 | 48 00 00 B8 */	b .L_814D68A0
.L_814D67EC:
/* 814D67EC | 80 01 00 40 */	lwz r0, 0x40(r1)
/* 814D67F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D67F4 | 41 82 00 A8 */	beq .L_814D689C
/* 814D67F8 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D67FC | 83 8D AE 60 */	lwz r28, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6800 | 3B E3 4D D3 */	addi r31, r3, 0x4dd3
/* 814D6804 | 3A E0 00 00 */	li r23, 0x0
/* 814D6808 | 3F C0 80 00 */	lis r30, 0x8000
/* 814D680C | 3B A0 00 00 */	li r29, 0x0
/* 814D6810 | 48 00 00 60 */	b .L_814D6870
.L_814D6814:
/* 814D6814 | 7F 43 D3 78 */	mr r3, r26
/* 814D6818 | 38 81 00 80 */	addi r4, r1, 0x80
/* 814D681C | 38 A0 00 20 */	li r5, 0x20
/* 814D6820 | 48 08 D7 E1 */	bl NANDRead
/* 814D6824 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6828 | 7C 77 1B 78 */	mr r23, r3
/* 814D682C | 41 82 00 10 */	beq .L_814D683C
/* 814D6830 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6834 | 41 82 00 08 */	beq .L_814D683C
/* 814D6838 | 48 00 00 44 */	b .L_814D687C
.L_814D683C:
/* 814D683C | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 814D6840 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6844 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6848 | 7C 7F 00 16 */	mulhwu r3, r31, r0
/* 814D684C | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6850 | 7C 9D 31 D6 */	mullw r4, r29, r6
/* 814D6854 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6858 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D685C | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6860 | 7C 63 22 14 */	add r3, r3, r4
/* 814D6864 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6868 | 7C 63 02 14 */	add r3, r3, r0
/* 814D686C | 48 05 F3 61 */	bl OSSleepTicks
.L_814D6870:
/* 814D6870 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814D6874 | 3B 9C FF FF */	subi r28, r28, 0x1
/* 814D6878 | 41 81 FF 9C */	bgt .L_814D6814
.L_814D687C:
/* 814D687C | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814D6880 | 40 80 00 0C */	bge .L_814D688C
/* 814D6884 | 7E E3 BB 78 */	mr r3, r23
/* 814D6888 | 48 00 00 18 */	b .L_814D68A0
.L_814D688C:
/* 814D688C | 80 61 00 4C */	lwz r3, 0x4c(r1)
/* 814D6890 | 38 81 00 80 */	addi r4, r1, 0x80
/* 814D6894 | 80 A1 00 40 */	lwz r5, 0x40(r1)
/* 814D6898 | 4B FD EF 49 */	bl VFipf_memcpy
.L_814D689C:
/* 814D689C | 7F 63 DB 78 */	mr r3, r27
.L_814D68A0:
/* 814D68A0 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814D68A4 | 7D 4B 53 78 */	mr r11, r10
/* 814D68A8 | 48 12 2C 55 */	bl _restgpr_23
/* 814D68AC | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814D68B0 | 7C 08 03 A6 */	mtlr r0
/* 814D68B4 | 7D 41 53 78 */	mr r1, r10
/* 814D68B8 | 4E 80 00 20 */	blr
.endfn A32_NANDRead

# .text:0xE68 | 0x814D68BC | size: 0x270
.fn A32_NANDWrite, global
/* 814D68BC | 54 2B 06 BE */	clrlwi r11, r1, 26
/* 814D68C0 | 7C 2C 0B 78 */	mr r12, r1
/* 814D68C4 | 21 6B FF 00 */	subfic r11, r11, -0x100
/* 814D68C8 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814D68CC | 7C 08 02 A6 */	mflr r0
/* 814D68D0 | 7D 8B 63 78 */	mr r11, r12
/* 814D68D4 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814D68D8 | 48 12 2B D9 */	bl _savegpr_23
/* 814D68DC | 7C 7A 1B 78 */	mr r26, r3
/* 814D68E0 | 7C 9C 23 78 */	mr r28, r4
/* 814D68E4 | 7C BB 2B 78 */	mr r27, r5
/* 814D68E8 | 7C C3 33 78 */	mr r3, r6
/* 814D68EC | 4B FF EF 39 */	bl dCommon_getHandleIdxFromDisk
/* 814D68F0 | 4B FF BC C9 */	bl VFSysGetHandleP
/* 814D68F4 | 57 60 06 FF */	clrlwi. r0, r27, 27
/* 814D68F8 | 41 82 00 0C */	beq .L_814D6904
/* 814D68FC | 38 60 00 00 */	li r3, 0x0
/* 814D6900 | 48 00 02 10 */	b .L_814D6B10
.L_814D6904:
/* 814D6904 | 7F 83 E3 78 */	mr r3, r28
/* 814D6908 | 7F 64 DB 78 */	mr r4, r27
/* 814D690C | 38 A1 00 48 */	addi r5, r1, 0x48
/* 814D6910 | 38 C1 00 50 */	addi r6, r1, 0x50
/* 814D6914 | 38 E1 00 44 */	addi r7, r1, 0x44
/* 814D6918 | 39 01 00 4C */	addi r8, r1, 0x4c
/* 814D691C | 39 21 00 40 */	addi r9, r1, 0x40
/* 814D6920 | 4B FF E5 19 */	bl dCommon_DevideBuff32
/* 814D6924 | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 814D6928 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814D692C | 40 82 00 98 */	bne .L_814D69C4
/* 814D6930 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6934 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6938 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D693C | 3B E0 00 00 */	li r31, 0x0
/* 814D6940 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D6944 | 3A E0 00 00 */	li r23, 0x0
/* 814D6948 | 48 00 00 60 */	b .L_814D69A8
.L_814D694C:
/* 814D694C | 7F 43 D3 78 */	mr r3, r26
/* 814D6950 | 7F 84 E3 78 */	mr r4, r28
/* 814D6954 | 7F 65 DB 78 */	mr r5, r27
/* 814D6958 | 48 08 D7 89 */	bl NANDWrite
/* 814D695C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6960 | 7C 7F 1B 78 */	mr r31, r3
/* 814D6964 | 41 82 00 10 */	beq .L_814D6974
/* 814D6968 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D696C | 41 82 00 08 */	beq .L_814D6974
/* 814D6970 | 48 00 00 44 */	b .L_814D69B4
.L_814D6974:
/* 814D6974 | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D6978 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D697C | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6980 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D6984 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6988 | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D698C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6990 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6994 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6998 | 7C 63 22 14 */	add r3, r3, r4
/* 814D699C | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D69A0 | 7C 63 02 14 */	add r3, r3, r0
/* 814D69A4 | 48 05 F2 29 */	bl OSSleepTicks
.L_814D69A8:
/* 814D69A8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D69AC | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D69B0 | 41 81 FF 9C */	bgt .L_814D694C
.L_814D69B4:
/* 814D69B4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D69B8 | 40 80 01 54 */	bge .L_814D6B0C
/* 814D69BC | 7F E3 FB 78 */	mr r3, r31
/* 814D69C0 | 48 00 01 50 */	b .L_814D6B10
.L_814D69C4:
/* 814D69C4 | 7F 84 E3 78 */	mr r4, r28
/* 814D69C8 | 38 61 00 80 */	addi r3, r1, 0x80
/* 814D69CC | 4B FD EE 15 */	bl VFipf_memcpy
/* 814D69D0 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D69D4 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 814D69D8 | 83 AD AE 60 */	lwz r29, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D69DC | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D69E0 | 3B E0 00 00 */	li r31, 0x0
/* 814D69E4 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D69E8 | 3A E0 00 00 */	li r23, 0x0
/* 814D69EC | 48 00 00 60 */	b .L_814D6A4C
.L_814D69F0:
/* 814D69F0 | 7F 43 D3 78 */	mr r3, r26
/* 814D69F4 | 7F C5 F3 78 */	mr r5, r30
/* 814D69F8 | 38 81 00 80 */	addi r4, r1, 0x80
/* 814D69FC | 48 08 D6 E5 */	bl NANDWrite
/* 814D6A00 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6A04 | 7C 7F 1B 78 */	mr r31, r3
/* 814D6A08 | 41 82 00 10 */	beq .L_814D6A18
/* 814D6A0C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6A10 | 41 82 00 08 */	beq .L_814D6A18
/* 814D6A14 | 48 00 00 44 */	b .L_814D6A58
.L_814D6A18:
/* 814D6A18 | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D6A1C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6A20 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6A24 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D6A28 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6A2C | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D6A30 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6A34 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6A38 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6A3C | 7C 63 22 14 */	add r3, r3, r4
/* 814D6A40 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6A44 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6A48 | 48 05 F1 85 */	bl OSSleepTicks
.L_814D6A4C:
/* 814D6A4C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D6A50 | 3B BD FF FF */	subi r29, r29, 0x1
/* 814D6A54 | 41 81 FF 9C */	bgt .L_814D69F0
.L_814D6A58:
/* 814D6A58 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D6A5C | 40 80 00 0C */	bge .L_814D6A68
/* 814D6A60 | 7F E3 FB 78 */	mr r3, r31
/* 814D6A64 | 48 00 00 AC */	b .L_814D6B10
.L_814D6A68:
/* 814D6A68 | 80 81 00 44 */	lwz r4, 0x44(r1)
/* 814D6A6C | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6A70 | 80 01 00 40 */	lwz r0, 0x40(r1)
/* 814D6A74 | 3A E3 4D D3 */	addi r23, r3, 0x4dd3
/* 814D6A78 | 83 A1 00 50 */	lwz r29, 0x50(r1)
/* 814D6A7C | 3B E0 00 00 */	li r31, 0x0
/* 814D6A80 | 83 8D AE 60 */	lwz r28, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6A84 | 7F C4 02 14 */	add r30, r4, r0
/* 814D6A88 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D6A8C | 3B 20 00 00 */	li r25, 0x0
/* 814D6A90 | 48 00 00 60 */	b .L_814D6AF0
.L_814D6A94:
/* 814D6A94 | 7F 43 D3 78 */	mr r3, r26
/* 814D6A98 | 7F A4 EB 78 */	mr r4, r29
/* 814D6A9C | 7F C5 F3 78 */	mr r5, r30
/* 814D6AA0 | 48 08 D6 41 */	bl NANDWrite
/* 814D6AA4 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6AA8 | 7C 7F 1B 78 */	mr r31, r3
/* 814D6AAC | 41 82 00 10 */	beq .L_814D6ABC
/* 814D6AB0 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6AB4 | 41 82 00 08 */	beq .L_814D6ABC
/* 814D6AB8 | 48 00 00 44 */	b .L_814D6AFC
.L_814D6ABC:
/* 814D6ABC | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D6AC0 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6AC4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6AC8 | 7C 77 00 16 */	mulhwu r3, r23, r0
/* 814D6ACC | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6AD0 | 7C 99 31 D6 */	mullw r4, r25, r6
/* 814D6AD4 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6AD8 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6ADC | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6AE0 | 7C 63 22 14 */	add r3, r3, r4
/* 814D6AE4 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6AE8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6AEC | 48 05 F0 E1 */	bl OSSleepTicks
.L_814D6AF0:
/* 814D6AF0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814D6AF4 | 3B 9C FF FF */	subi r28, r28, 0x1
/* 814D6AF8 | 41 81 FF 9C */	bgt .L_814D6A94
.L_814D6AFC:
/* 814D6AFC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D6B00 | 40 80 00 0C */	bge .L_814D6B0C
/* 814D6B04 | 7F E3 FB 78 */	mr r3, r31
/* 814D6B08 | 48 00 00 08 */	b .L_814D6B10
.L_814D6B0C:
/* 814D6B0C | 7F 63 DB 78 */	mr r3, r27
.L_814D6B10:
/* 814D6B10 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814D6B14 | 7D 4B 53 78 */	mr r11, r10
/* 814D6B18 | 48 12 29 E5 */	bl _restgpr_23
/* 814D6B1C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814D6B20 | 7C 08 03 A6 */	mtlr r0
/* 814D6B24 | 7D 41 53 78 */	mr r1, r10
/* 814D6B28 | 4E 80 00 20 */	blr
.endfn A32_NANDWrite

# .text:0x10D8 | 0x814D6B2C | size: 0xD64
.fn _CreatePrfFile, global
/* 814D6B2C | 54 2B 06 BE */	clrlwi r11, r1, 26
/* 814D6B30 | 7C 2C 0B 78 */	mr r12, r1
/* 814D6B34 | 21 6B FC C0 */	subfic r11, r11, -0x340
/* 814D6B38 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814D6B3C | 7C 08 02 A6 */	mflr r0
/* 814D6B40 | 7D 8B 63 78 */	mr r11, r12
/* 814D6B44 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814D6B48 | 48 12 29 65 */	bl _savegpr_22
/* 814D6B4C | 54 60 06 FF */	clrlwi. r0, r3, 27
/* 814D6B50 | 7C 7C 1B 78 */	mr r28, r3
/* 814D6B54 | 7C 9D 23 78 */	mr r29, r4
/* 814D6B58 | 7C BE 2B 78 */	mr r30, r5
/* 814D6B5C | 7C FF 3B 78 */	mr r31, r7
/* 814D6B60 | 41 82 00 0C */	beq .L_814D6B6C
/* 814D6B64 | 38 60 FF F8 */	li r3, -0x8
/* 814D6B68 | 48 00 0D 0C */	b .L_814D7874
.L_814D6B6C:
/* 814D6B6C | 54 C0 07 FF */	clrlwi. r0, r6, 31
/* 814D6B70 | 3B 40 00 00 */	li r26, 0x0
/* 814D6B74 | 41 82 00 08 */	beq .L_814D6B7C
/* 814D6B78 | 63 5A 00 10 */	ori r26, r26, 0x10
.L_814D6B7C:
/* 814D6B7C | 54 C0 07 BD */	rlwinm. r0, r6, 0, 30, 30
/* 814D6B80 | 41 82 00 0C */	beq .L_814D6B8C
/* 814D6B84 | 63 40 00 20 */	ori r0, r26, 0x20
/* 814D6B88 | 54 1A 06 3E */	clrlwi r26, r0, 24
.L_814D6B8C:
/* 814D6B8C | 54 C0 07 7B */	rlwinm. r0, r6, 0, 29, 29
/* 814D6B90 | 41 82 00 0C */	beq .L_814D6B9C
/* 814D6B94 | 63 40 00 04 */	ori r0, r26, 0x4
/* 814D6B98 | 54 1A 06 3E */	clrlwi r26, r0, 24
.L_814D6B9C:
/* 814D6B9C | 54 C0 07 39 */	rlwinm. r0, r6, 0, 28, 28
/* 814D6BA0 | 41 82 00 0C */	beq .L_814D6BAC
/* 814D6BA4 | 63 40 00 08 */	ori r0, r26, 0x8
/* 814D6BA8 | 54 1A 06 3E */	clrlwi r26, r0, 24
.L_814D6BAC:
/* 814D6BAC | 54 C0 06 F7 */	rlwinm. r0, r6, 0, 27, 27
/* 814D6BB0 | 41 82 00 0C */	beq .L_814D6BBC
/* 814D6BB4 | 63 40 00 01 */	ori r0, r26, 0x1
/* 814D6BB8 | 54 1A 06 3E */	clrlwi r26, r0, 24
.L_814D6BBC:
/* 814D6BBC | 54 C0 06 B5 */	rlwinm. r0, r6, 0, 26, 26
/* 814D6BC0 | 41 82 00 0C */	beq .L_814D6BCC
/* 814D6BC4 | 63 40 00 02 */	ori r0, r26, 0x2
/* 814D6BC8 | 54 1A 06 3E */	clrlwi r26, r0, 24
.L_814D6BCC:
/* 814D6BCC | 28 07 00 1A */	cmplwi r7, 0x1a
/* 814D6BD0 | 40 80 00 C0 */	bge .L_814D6C90
/* 814D6BD4 | 3C 60 81 0F */	lis r3, l_nandFunc@ha
/* 814D6BD8 | 54 E0 20 36 */	slwi r0, r7, 4
/* 814D6BDC | 38 63 5A D8 */	addi r3, r3, l_nandFunc@l
/* 814D6BE0 | 7D 83 00 2E */	lwzx r12, r3, r0
/* 814D6BE4 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D6BE8 | 41 82 00 1C */	beq .L_814D6C04
/* 814D6BEC | 7F A3 EB 78 */	mr r3, r29
/* 814D6BF0 | 57 44 06 3E */	clrlwi r4, r26, 24
/* 814D6BF4 | 38 A0 00 00 */	li r5, 0x0
/* 814D6BF8 | 7D 89 03 A6 */	mtctr r12
/* 814D6BFC | 4E 80 04 21 */	bctrl
/* 814D6C00 | 48 00 01 B0 */	b .L_814D6DB0
.L_814D6C04:
/* 814D6C04 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6C08 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6C0C | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D6C10 | 3B 20 00 00 */	li r25, 0x0
/* 814D6C14 | 3E E0 80 00 */	lis r23, 0x8000
/* 814D6C18 | 3A C0 00 00 */	li r22, 0x0
/* 814D6C1C | 48 00 00 60 */	b .L_814D6C7C
.L_814D6C20:
/* 814D6C20 | 7F A3 EB 78 */	mr r3, r29
/* 814D6C24 | 57 44 06 3E */	clrlwi r4, r26, 24
/* 814D6C28 | 38 A0 00 00 */	li r5, 0x0
/* 814D6C2C | 48 08 D0 6D */	bl NANDCreate
/* 814D6C30 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6C34 | 7C 79 1B 78 */	mr r25, r3
/* 814D6C38 | 41 82 00 10 */	beq .L_814D6C48
/* 814D6C3C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6C40 | 41 82 00 08 */	beq .L_814D6C48
/* 814D6C44 | 48 00 00 44 */	b .L_814D6C88
.L_814D6C48:
/* 814D6C48 | 80 17 00 F8 */	lwz r0, 0xf8(r23)
/* 814D6C4C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6C50 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6C54 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D6C58 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6C5C | 7C 96 31 D6 */	mullw r4, r22, r6
/* 814D6C60 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6C64 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6C68 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6C6C | 7C 63 22 14 */	add r3, r3, r4
/* 814D6C70 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6C74 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6C78 | 48 05 EF 55 */	bl OSSleepTicks
.L_814D6C7C:
/* 814D6C7C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D6C80 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D6C84 | 41 81 FF 9C */	bgt .L_814D6C20
.L_814D6C88:
/* 814D6C88 | 7F 23 CB 78 */	mr r3, r25
/* 814D6C8C | 48 00 01 24 */	b .L_814D6DB0
.L_814D6C90:
/* 814D6C90 | 3C 07 00 01 */	addis r0, r7, 0x1
/* 814D6C94 | 28 00 FF F6 */	cmplwi r0, 0xfff6
/* 814D6C98 | 40 82 00 90 */	bne .L_814D6D28
/* 814D6C9C | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6CA0 | 83 2D AE 60 */	lwz r25, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6CA4 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D6CA8 | 3B 00 00 00 */	li r24, 0x0
/* 814D6CAC | 3E E0 80 00 */	lis r23, 0x8000
/* 814D6CB0 | 3A C0 00 00 */	li r22, 0x0
/* 814D6CB4 | 48 00 00 60 */	b .L_814D6D14
.L_814D6CB8:
/* 814D6CB8 | 7F A3 EB 78 */	mr r3, r29
/* 814D6CBC | 57 44 06 3E */	clrlwi r4, r26, 24
/* 814D6CC0 | 38 A0 00 00 */	li r5, 0x0
/* 814D6CC4 | 48 08 CF D5 */	bl NANDCreate
/* 814D6CC8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6CCC | 7C 78 1B 78 */	mr r24, r3
/* 814D6CD0 | 41 82 00 10 */	beq .L_814D6CE0
/* 814D6CD4 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6CD8 | 41 82 00 08 */	beq .L_814D6CE0
/* 814D6CDC | 48 00 00 44 */	b .L_814D6D20
.L_814D6CE0:
/* 814D6CE0 | 80 17 00 F8 */	lwz r0, 0xf8(r23)
/* 814D6CE4 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6CE8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6CEC | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D6CF0 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6CF4 | 7C 96 31 D6 */	mullw r4, r22, r6
/* 814D6CF8 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6CFC | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6D00 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6D04 | 7C 63 22 14 */	add r3, r3, r4
/* 814D6D08 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6D0C | 7C 63 02 14 */	add r3, r3, r0
/* 814D6D10 | 48 05 EE BD */	bl OSSleepTicks
.L_814D6D14:
/* 814D6D14 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814D6D18 | 3B 39 FF FF */	subi r25, r25, 0x1
/* 814D6D1C | 41 81 FF 9C */	bgt .L_814D6CB8
.L_814D6D20:
/* 814D6D20 | 7F 03 C3 78 */	mr r3, r24
/* 814D6D24 | 48 00 00 8C */	b .L_814D6DB0
.L_814D6D28:
/* 814D6D28 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6D2C | 83 2D AE 60 */	lwz r25, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6D30 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D6D34 | 3B 00 00 00 */	li r24, 0x0
/* 814D6D38 | 3E E0 80 00 */	lis r23, 0x8000
/* 814D6D3C | 3A C0 00 00 */	li r22, 0x0
/* 814D6D40 | 48 00 00 60 */	b .L_814D6DA0
.L_814D6D44:
/* 814D6D44 | 7F A3 EB 78 */	mr r3, r29
/* 814D6D48 | 57 44 06 3E */	clrlwi r4, r26, 24
/* 814D6D4C | 38 A0 00 00 */	li r5, 0x0
/* 814D6D50 | 48 08 CF BD */	bl NANDPrivateCreate
/* 814D6D54 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6D58 | 7C 78 1B 78 */	mr r24, r3
/* 814D6D5C | 41 82 00 10 */	beq .L_814D6D6C
/* 814D6D60 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6D64 | 41 82 00 08 */	beq .L_814D6D6C
/* 814D6D68 | 48 00 00 44 */	b .L_814D6DAC
.L_814D6D6C:
/* 814D6D6C | 80 17 00 F8 */	lwz r0, 0xf8(r23)
/* 814D6D70 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6D74 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6D78 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D6D7C | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6D80 | 7C 96 31 D6 */	mullw r4, r22, r6
/* 814D6D84 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6D88 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6D8C | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6D90 | 7C 63 22 14 */	add r3, r3, r4
/* 814D6D94 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6D98 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6D9C | 48 05 EE 31 */	bl OSSleepTicks
.L_814D6DA0:
/* 814D6DA0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814D6DA4 | 3B 39 FF FF */	subi r25, r25, 0x1
/* 814D6DA8 | 41 81 FF 9C */	bgt .L_814D6D44
.L_814D6DAC:
/* 814D6DAC | 7F 03 C3 78 */	mr r3, r24
.L_814D6DB0:
/* 814D6DB0 | 7C 63 07 35 */	extsh. r3, r3
/* 814D6DB4 | 41 82 00 08 */	beq .L_814D6DBC
/* 814D6DB8 | 48 00 0A BC */	b .L_814D7874
.L_814D6DBC:
/* 814D6DBC | 28 1F 00 1A */	cmplwi r31, 0x1a
/* 814D6DC0 | 3B 41 00 40 */	addi r26, r1, 0x40
/* 814D6DC4 | 40 80 00 C4 */	bge .L_814D6E88
/* 814D6DC8 | 3C 60 81 0F */	lis r3, l_nandFunc@ha
/* 814D6DCC | 57 E0 20 36 */	slwi r0, r31, 4
/* 814D6DD0 | 38 63 5A D8 */	addi r3, r3, l_nandFunc@l
/* 814D6DD4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6DD8 | 81 83 00 04 */	lwz r12, 0x4(r3)
/* 814D6DDC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D6DE0 | 41 82 00 1C */	beq .L_814D6DFC
/* 814D6DE4 | 7F A3 EB 78 */	mr r3, r29
/* 814D6DE8 | 7F 44 D3 78 */	mr r4, r26
/* 814D6DEC | 38 A0 00 02 */	li r5, 0x2
/* 814D6DF0 | 7D 89 03 A6 */	mtctr r12
/* 814D6DF4 | 4E 80 04 21 */	bctrl
/* 814D6DF8 | 48 00 01 B0 */	b .L_814D6FA8
.L_814D6DFC:
/* 814D6DFC | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6E00 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6E04 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D6E08 | 3B 20 00 00 */	li r25, 0x0
/* 814D6E0C | 3E E0 80 00 */	lis r23, 0x8000
/* 814D6E10 | 3A C0 00 00 */	li r22, 0x0
/* 814D6E14 | 48 00 00 60 */	b .L_814D6E74
.L_814D6E18:
/* 814D6E18 | 7F A3 EB 78 */	mr r3, r29
/* 814D6E1C | 7F 44 D3 78 */	mr r4, r26
/* 814D6E20 | 38 A0 00 02 */	li r5, 0x2
/* 814D6E24 | 48 08 E4 49 */	bl NANDOpen
/* 814D6E28 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6E2C | 7C 79 1B 78 */	mr r25, r3
/* 814D6E30 | 41 82 00 10 */	beq .L_814D6E40
/* 814D6E34 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6E38 | 41 82 00 08 */	beq .L_814D6E40
/* 814D6E3C | 48 00 00 44 */	b .L_814D6E80
.L_814D6E40:
/* 814D6E40 | 80 17 00 F8 */	lwz r0, 0xf8(r23)
/* 814D6E44 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6E48 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6E4C | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D6E50 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6E54 | 7C 96 31 D6 */	mullw r4, r22, r6
/* 814D6E58 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6E5C | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6E60 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6E64 | 7C 63 22 14 */	add r3, r3, r4
/* 814D6E68 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6E6C | 7C 63 02 14 */	add r3, r3, r0
/* 814D6E70 | 48 05 ED 5D */	bl OSSleepTicks
.L_814D6E74:
/* 814D6E74 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D6E78 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D6E7C | 41 81 FF 9C */	bgt .L_814D6E18
.L_814D6E80:
/* 814D6E80 | 7F 23 CB 78 */	mr r3, r25
/* 814D6E84 | 48 00 01 24 */	b .L_814D6FA8
.L_814D6E88:
/* 814D6E88 | 3C 1F 00 01 */	addis r0, r31, 0x1
/* 814D6E8C | 28 00 FF F6 */	cmplwi r0, 0xfff6
/* 814D6E90 | 40 82 00 90 */	bne .L_814D6F20
/* 814D6E94 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6E98 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6E9C | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D6EA0 | 3B 20 00 00 */	li r25, 0x0
/* 814D6EA4 | 3E E0 80 00 */	lis r23, 0x8000
/* 814D6EA8 | 3A C0 00 00 */	li r22, 0x0
/* 814D6EAC | 48 00 00 60 */	b .L_814D6F0C
.L_814D6EB0:
/* 814D6EB0 | 7F A3 EB 78 */	mr r3, r29
/* 814D6EB4 | 7F 44 D3 78 */	mr r4, r26
/* 814D6EB8 | 38 A0 00 02 */	li r5, 0x2
/* 814D6EBC | 48 08 E3 B1 */	bl NANDOpen
/* 814D6EC0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6EC4 | 7C 79 1B 78 */	mr r25, r3
/* 814D6EC8 | 41 82 00 10 */	beq .L_814D6ED8
/* 814D6ECC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6ED0 | 41 82 00 08 */	beq .L_814D6ED8
/* 814D6ED4 | 48 00 00 44 */	b .L_814D6F18
.L_814D6ED8:
/* 814D6ED8 | 80 17 00 F8 */	lwz r0, 0xf8(r23)
/* 814D6EDC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6EE0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6EE4 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D6EE8 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6EEC | 7C 96 31 D6 */	mullw r4, r22, r6
/* 814D6EF0 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6EF4 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6EF8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6EFC | 7C 63 22 14 */	add r3, r3, r4
/* 814D6F00 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6F04 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6F08 | 48 05 EC C5 */	bl OSSleepTicks
.L_814D6F0C:
/* 814D6F0C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D6F10 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D6F14 | 41 81 FF 9C */	bgt .L_814D6EB0
.L_814D6F18:
/* 814D6F18 | 7F 23 CB 78 */	mr r3, r25
/* 814D6F1C | 48 00 00 8C */	b .L_814D6FA8
.L_814D6F20:
/* 814D6F20 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6F24 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6F28 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D6F2C | 3B 20 00 00 */	li r25, 0x0
/* 814D6F30 | 3E C0 80 00 */	lis r22, 0x8000
/* 814D6F34 | 3A E0 00 00 */	li r23, 0x0
/* 814D6F38 | 48 00 00 60 */	b .L_814D6F98
.L_814D6F3C:
/* 814D6F3C | 7F A3 EB 78 */	mr r3, r29
/* 814D6F40 | 7F 44 D3 78 */	mr r4, r26
/* 814D6F44 | 38 A0 00 02 */	li r5, 0x2
/* 814D6F48 | 48 08 E3 B1 */	bl NANDPrivateOpen
/* 814D6F4C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6F50 | 7C 79 1B 78 */	mr r25, r3
/* 814D6F54 | 41 82 00 10 */	beq .L_814D6F64
/* 814D6F58 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D6F5C | 41 82 00 08 */	beq .L_814D6F64
/* 814D6F60 | 48 00 00 44 */	b .L_814D6FA4
.L_814D6F64:
/* 814D6F64 | 80 16 00 F8 */	lwz r0, 0xf8(r22)
/* 814D6F68 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D6F6C | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D6F70 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D6F74 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D6F78 | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D6F7C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D6F80 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D6F84 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D6F88 | 7C 63 22 14 */	add r3, r3, r4
/* 814D6F8C | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D6F90 | 7C 63 02 14 */	add r3, r3, r0
/* 814D6F94 | 48 05 EC 39 */	bl OSSleepTicks
.L_814D6F98:
/* 814D6F98 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D6F9C | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D6FA0 | 41 81 FF 9C */	bgt .L_814D6F3C
.L_814D6FA4:
/* 814D6FA4 | 7F 23 CB 78 */	mr r3, r25
.L_814D6FA8:
/* 814D6FA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D6FAC | 41 82 00 0C */	beq .L_814D6FB8
/* 814D6FB0 | 7C 63 07 34 */	extsh r3, r3
/* 814D6FB4 | 48 00 08 C0 */	b .L_814D7874
.L_814D6FB8:
/* 814D6FB8 | 7F 84 E3 78 */	mr r4, r28
/* 814D6FBC | 7F C5 F3 78 */	mr r5, r30
/* 814D6FC0 | 38 61 01 00 */	addi r3, r1, 0x100
/* 814D6FC4 | 38 C0 00 00 */	li r6, 0x0
/* 814D6FC8 | 4B FF DF 41 */	bl dCommon_CopyPrfFileHeader
/* 814D6FCC | 3C 60 10 62 */	lis r3, 0x1062
/* 814D6FD0 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D6FD4 | 3B C3 4D D3 */	addi r30, r3, 0x4dd3
/* 814D6FD8 | 3B 20 00 00 */	li r25, 0x0
/* 814D6FDC | 3F 60 80 00 */	lis r27, 0x8000
/* 814D6FE0 | 3B 40 00 00 */	li r26, 0x0
/* 814D6FE4 | 48 00 00 60 */	b .L_814D7044
.L_814D6FE8:
/* 814D6FE8 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D6FEC | 38 81 01 00 */	addi r4, r1, 0x100
/* 814D6FF0 | 38 A0 00 20 */	li r5, 0x20
/* 814D6FF4 | 48 08 D0 ED */	bl NANDWrite
/* 814D6FF8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D6FFC | 7C 79 1B 78 */	mr r25, r3
/* 814D7000 | 41 82 00 10 */	beq .L_814D7010
/* 814D7004 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7008 | 41 82 00 08 */	beq .L_814D7010
/* 814D700C | 48 00 00 44 */	b .L_814D7050
.L_814D7010:
/* 814D7010 | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 814D7014 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7018 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D701C | 7C 7E 00 16 */	mulhwu r3, r30, r0
/* 814D7020 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7024 | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D7028 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D702C | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7030 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7034 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7038 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D703C | 7C 63 02 14 */	add r3, r3, r0
/* 814D7040 | 48 05 EB 8D */	bl OSSleepTicks
.L_814D7044:
/* 814D7044 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D7048 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D704C | 41 81 FF 9C */	bgt .L_814D6FE8
.L_814D7050:
/* 814D7050 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814D7054 | 3B 5C FF E0 */	subi r26, r28, 0x20
/* 814D7058 | 40 80 02 24 */	bge .L_814D727C
/* 814D705C | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7060 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7064 | 3B 83 4D D3 */	addi r28, r3, 0x4dd3
/* 814D7068 | 3F 60 80 00 */	lis r27, 0x8000
/* 814D706C | 3B 40 00 00 */	li r26, 0x0
/* 814D7070 | 48 00 00 54 */	b .L_814D70C4
.L_814D7074:
/* 814D7074 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D7078 | 48 08 E4 75 */	bl NANDClose
/* 814D707C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7080 | 41 82 00 10 */	beq .L_814D7090
/* 814D7084 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7088 | 41 82 00 08 */	beq .L_814D7090
/* 814D708C | 48 00 00 44 */	b .L_814D70D0
.L_814D7090:
/* 814D7090 | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 814D7094 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7098 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D709C | 7C 7C 00 16 */	mulhwu r3, r28, r0
/* 814D70A0 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D70A4 | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D70A8 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D70AC | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D70B0 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D70B4 | 7C 63 22 14 */	add r3, r3, r4
/* 814D70B8 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D70BC | 7C 63 02 14 */	add r3, r3, r0
/* 814D70C0 | 48 05 EB 0D */	bl OSSleepTicks
.L_814D70C4:
/* 814D70C4 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D70C8 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D70CC | 41 81 FF A8 */	bgt .L_814D7074
.L_814D70D0:
/* 814D70D0 | 28 1F 00 1A */	cmplwi r31, 0x1a
/* 814D70D4 | 40 80 00 A8 */	bge .L_814D717C
/* 814D70D8 | 3C 60 81 0F */	lis r3, l_nandFunc@ha
/* 814D70DC | 57 E0 20 36 */	slwi r0, r31, 4
/* 814D70E0 | 38 63 5A D8 */	addi r3, r3, l_nandFunc@l
/* 814D70E4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D70E8 | 81 83 00 0C */	lwz r12, 0xc(r3)
/* 814D70EC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D70F0 | 41 82 00 14 */	beq .L_814D7104
/* 814D70F4 | 7F A3 EB 78 */	mr r3, r29
/* 814D70F8 | 7D 89 03 A6 */	mtctr r12
/* 814D70FC | 4E 80 04 21 */	bctrl
/* 814D7100 | 48 00 01 74 */	b .L_814D7274
.L_814D7104:
/* 814D7104 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7108 | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D710C | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D7110 | 3F 40 80 00 */	lis r26, 0x8000
/* 814D7114 | 3B 00 00 00 */	li r24, 0x0
/* 814D7118 | 48 00 00 54 */	b .L_814D716C
.L_814D711C:
/* 814D711C | 7F A3 EB 78 */	mr r3, r29
/* 814D7120 | 48 08 CC D9 */	bl NANDDelete
/* 814D7124 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7128 | 41 82 00 10 */	beq .L_814D7138
/* 814D712C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7130 | 41 82 00 08 */	beq .L_814D7138
/* 814D7134 | 48 00 01 40 */	b .L_814D7274
.L_814D7138:
/* 814D7138 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 814D713C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7140 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7144 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D7148 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D714C | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D7150 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7154 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7158 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D715C | 7C 63 22 14 */	add r3, r3, r4
/* 814D7160 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7164 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7168 | 48 05 EA 65 */	bl OSSleepTicks
.L_814D716C:
/* 814D716C | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D7170 | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D7174 | 41 81 FF A8 */	bgt .L_814D711C
/* 814D7178 | 48 00 00 FC */	b .L_814D7274
.L_814D717C:
/* 814D717C | 3C 1F 00 01 */	addis r0, r31, 0x1
/* 814D7180 | 28 00 FF F6 */	cmplwi r0, 0xfff6
/* 814D7184 | 40 82 00 7C */	bne .L_814D7200
/* 814D7188 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D718C | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7190 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D7194 | 3F 40 80 00 */	lis r26, 0x8000
/* 814D7198 | 3B 00 00 00 */	li r24, 0x0
/* 814D719C | 48 00 00 54 */	b .L_814D71F0
.L_814D71A0:
/* 814D71A0 | 7F A3 EB 78 */	mr r3, r29
/* 814D71A4 | 48 08 CC 55 */	bl NANDDelete
/* 814D71A8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D71AC | 41 82 00 10 */	beq .L_814D71BC
/* 814D71B0 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D71B4 | 41 82 00 08 */	beq .L_814D71BC
/* 814D71B8 | 48 00 00 BC */	b .L_814D7274
.L_814D71BC:
/* 814D71BC | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 814D71C0 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D71C4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D71C8 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D71CC | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D71D0 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D71D4 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D71D8 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D71DC | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D71E0 | 7C 63 22 14 */	add r3, r3, r4
/* 814D71E4 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D71E8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D71EC | 48 05 E9 E1 */	bl OSSleepTicks
.L_814D71F0:
/* 814D71F0 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D71F4 | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D71F8 | 41 81 FF A8 */	bgt .L_814D71A0
/* 814D71FC | 48 00 00 78 */	b .L_814D7274
.L_814D7200:
/* 814D7200 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7204 | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7208 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D720C | 3F 40 80 00 */	lis r26, 0x8000
/* 814D7210 | 3B 00 00 00 */	li r24, 0x0
/* 814D7214 | 48 00 00 54 */	b .L_814D7268
.L_814D7218:
/* 814D7218 | 7F A3 EB 78 */	mr r3, r29
/* 814D721C | 48 08 CC 8D */	bl NANDPrivateDelete
/* 814D7220 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7224 | 41 82 00 10 */	beq .L_814D7234
/* 814D7228 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D722C | 41 82 00 08 */	beq .L_814D7234
/* 814D7230 | 48 00 00 44 */	b .L_814D7274
.L_814D7234:
/* 814D7234 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 814D7238 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D723C | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7240 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D7244 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7248 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D724C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7250 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7254 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7258 | 7C 63 22 14 */	add r3, r3, r4
/* 814D725C | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7260 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7264 | 48 05 E9 69 */	bl OSSleepTicks
.L_814D7268:
/* 814D7268 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D726C | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D7270 | 41 81 FF A8 */	bgt .L_814D7218
.L_814D7274:
/* 814D7274 | 7F 23 CB 78 */	mr r3, r25
/* 814D7278 | 48 00 05 FC */	b .L_814D7874
.L_814D727C:
/* 814D727C | 38 61 01 00 */	addi r3, r1, 0x100
/* 814D7280 | 38 80 00 00 */	li r4, 0x0
/* 814D7284 | 38 A0 02 00 */	li r5, 0x200
/* 814D7288 | 4B FD E6 81 */	bl VFipf_memset
/* 814D728C | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7290 | 3F 80 80 00 */	lis r28, 0x8000
/* 814D7294 | 3B C3 4D D3 */	addi r30, r3, 0x4dd3
/* 814D7298 | 3B 60 00 00 */	li r27, 0x0
/* 814D729C | 48 00 02 A4 */	b .L_814D7540
.L_814D72A0:
/* 814D72A0 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D72A4 | 3B 20 00 00 */	li r25, 0x0
/* 814D72A8 | 48 00 00 60 */	b .L_814D7308
.L_814D72AC:
/* 814D72AC | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D72B0 | 38 81 01 00 */	addi r4, r1, 0x100
/* 814D72B4 | 38 A0 02 00 */	li r5, 0x200
/* 814D72B8 | 48 08 CE 29 */	bl NANDWrite
/* 814D72BC | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D72C0 | 7C 79 1B 78 */	mr r25, r3
/* 814D72C4 | 41 82 00 10 */	beq .L_814D72D4
/* 814D72C8 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D72CC | 41 82 00 08 */	beq .L_814D72D4
/* 814D72D0 | 48 00 00 44 */	b .L_814D7314
.L_814D72D4:
/* 814D72D4 | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 814D72D8 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D72DC | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D72E0 | 7C 7E 00 16 */	mulhwu r3, r30, r0
/* 814D72E4 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D72E8 | 7C 9B 31 D6 */	mullw r4, r27, r6
/* 814D72EC | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D72F0 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D72F4 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D72F8 | 7C 63 22 14 */	add r3, r3, r4
/* 814D72FC | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7300 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7304 | 48 05 E8 C9 */	bl OSSleepTicks
.L_814D7308:
/* 814D7308 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D730C | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D7310 | 41 81 FF 9C */	bgt .L_814D72AC
.L_814D7314:
/* 814D7314 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814D7318 | 40 80 02 24 */	bge .L_814D753C
/* 814D731C | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7320 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7324 | 3B 83 4D D3 */	addi r28, r3, 0x4dd3
/* 814D7328 | 3F 60 80 00 */	lis r27, 0x8000
/* 814D732C | 3B 40 00 00 */	li r26, 0x0
/* 814D7330 | 48 00 00 54 */	b .L_814D7384
.L_814D7334:
/* 814D7334 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D7338 | 48 08 E1 B5 */	bl NANDClose
/* 814D733C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7340 | 41 82 00 10 */	beq .L_814D7350
/* 814D7344 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7348 | 41 82 00 08 */	beq .L_814D7350
/* 814D734C | 48 00 00 44 */	b .L_814D7390
.L_814D7350:
/* 814D7350 | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 814D7354 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7358 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D735C | 7C 7C 00 16 */	mulhwu r3, r28, r0
/* 814D7360 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7364 | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D7368 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D736C | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7370 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7374 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7378 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D737C | 7C 63 02 14 */	add r3, r3, r0
/* 814D7380 | 48 05 E8 4D */	bl OSSleepTicks
.L_814D7384:
/* 814D7384 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D7388 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D738C | 41 81 FF A8 */	bgt .L_814D7334
.L_814D7390:
/* 814D7390 | 28 1F 00 1A */	cmplwi r31, 0x1a
/* 814D7394 | 40 80 00 A8 */	bge .L_814D743C
/* 814D7398 | 3C 60 81 0F */	lis r3, l_nandFunc@ha
/* 814D739C | 57 E0 20 36 */	slwi r0, r31, 4
/* 814D73A0 | 38 63 5A D8 */	addi r3, r3, l_nandFunc@l
/* 814D73A4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D73A8 | 81 83 00 0C */	lwz r12, 0xc(r3)
/* 814D73AC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D73B0 | 41 82 00 14 */	beq .L_814D73C4
/* 814D73B4 | 7F A3 EB 78 */	mr r3, r29
/* 814D73B8 | 7D 89 03 A6 */	mtctr r12
/* 814D73BC | 4E 80 04 21 */	bctrl
/* 814D73C0 | 48 00 01 74 */	b .L_814D7534
.L_814D73C4:
/* 814D73C4 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D73C8 | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D73CC | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D73D0 | 3F 40 80 00 */	lis r26, 0x8000
/* 814D73D4 | 3B 00 00 00 */	li r24, 0x0
/* 814D73D8 | 48 00 00 54 */	b .L_814D742C
.L_814D73DC:
/* 814D73DC | 7F A3 EB 78 */	mr r3, r29
/* 814D73E0 | 48 08 CA 19 */	bl NANDDelete
/* 814D73E4 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D73E8 | 41 82 00 10 */	beq .L_814D73F8
/* 814D73EC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D73F0 | 41 82 00 08 */	beq .L_814D73F8
/* 814D73F4 | 48 00 01 40 */	b .L_814D7534
.L_814D73F8:
/* 814D73F8 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 814D73FC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7400 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7404 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D7408 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D740C | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D7410 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7414 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7418 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D741C | 7C 63 22 14 */	add r3, r3, r4
/* 814D7420 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7424 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7428 | 48 05 E7 A5 */	bl OSSleepTicks
.L_814D742C:
/* 814D742C | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D7430 | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D7434 | 41 81 FF A8 */	bgt .L_814D73DC
/* 814D7438 | 48 00 00 FC */	b .L_814D7534
.L_814D743C:
/* 814D743C | 3C 1F 00 01 */	addis r0, r31, 0x1
/* 814D7440 | 28 00 FF F6 */	cmplwi r0, 0xfff6
/* 814D7444 | 40 82 00 7C */	bne .L_814D74C0
/* 814D7448 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D744C | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7450 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D7454 | 3F 40 80 00 */	lis r26, 0x8000
/* 814D7458 | 3B 00 00 00 */	li r24, 0x0
/* 814D745C | 48 00 00 54 */	b .L_814D74B0
.L_814D7460:
/* 814D7460 | 7F A3 EB 78 */	mr r3, r29
/* 814D7464 | 48 08 C9 95 */	bl NANDDelete
/* 814D7468 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D746C | 41 82 00 10 */	beq .L_814D747C
/* 814D7470 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7474 | 41 82 00 08 */	beq .L_814D747C
/* 814D7478 | 48 00 00 BC */	b .L_814D7534
.L_814D747C:
/* 814D747C | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 814D7480 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7484 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7488 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D748C | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7490 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D7494 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7498 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D749C | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D74A0 | 7C 63 22 14 */	add r3, r3, r4
/* 814D74A4 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D74A8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D74AC | 48 05 E7 21 */	bl OSSleepTicks
.L_814D74B0:
/* 814D74B0 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D74B4 | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D74B8 | 41 81 FF A8 */	bgt .L_814D7460
/* 814D74BC | 48 00 00 78 */	b .L_814D7534
.L_814D74C0:
/* 814D74C0 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D74C4 | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D74C8 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D74CC | 3F 40 80 00 */	lis r26, 0x8000
/* 814D74D0 | 3B 00 00 00 */	li r24, 0x0
/* 814D74D4 | 48 00 00 54 */	b .L_814D7528
.L_814D74D8:
/* 814D74D8 | 7F A3 EB 78 */	mr r3, r29
/* 814D74DC | 48 08 C9 CD */	bl NANDPrivateDelete
/* 814D74E0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D74E4 | 41 82 00 10 */	beq .L_814D74F4
/* 814D74E8 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D74EC | 41 82 00 08 */	beq .L_814D74F4
/* 814D74F0 | 48 00 00 44 */	b .L_814D7534
.L_814D74F4:
/* 814D74F4 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 814D74F8 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D74FC | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7500 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D7504 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7508 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D750C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7510 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7514 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7518 | 7C 63 22 14 */	add r3, r3, r4
/* 814D751C | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7520 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7524 | 48 05 E6 A9 */	bl OSSleepTicks
.L_814D7528:
/* 814D7528 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D752C | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D7530 | 41 81 FF A8 */	bgt .L_814D74D8
.L_814D7534:
/* 814D7534 | 7F 23 CB 78 */	mr r3, r25
/* 814D7538 | 48 00 03 3C */	b .L_814D7874
.L_814D753C:
/* 814D753C | 3B 5A FE 00 */	subi r26, r26, 0x200
.L_814D7540:
/* 814D7540 | 28 1A 02 00 */	cmplwi r26, 0x200
/* 814D7544 | 40 80 FD 5C */	bge .L_814D72A0
/* 814D7548 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814D754C | 41 82 02 B0 */	beq .L_814D77FC
/* 814D7550 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7554 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7558 | 3B C3 4D D3 */	addi r30, r3, 0x4dd3
/* 814D755C | 3B 20 00 00 */	li r25, 0x0
/* 814D7560 | 3F 80 80 00 */	lis r28, 0x8000
/* 814D7564 | 3B 60 00 00 */	li r27, 0x0
/* 814D7568 | 48 00 00 60 */	b .L_814D75C8
.L_814D756C:
/* 814D756C | 7F 45 D3 78 */	mr r5, r26
/* 814D7570 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D7574 | 38 81 01 00 */	addi r4, r1, 0x100
/* 814D7578 | 48 08 CB 69 */	bl NANDWrite
/* 814D757C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7580 | 7C 79 1B 78 */	mr r25, r3
/* 814D7584 | 41 82 00 10 */	beq .L_814D7594
/* 814D7588 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D758C | 41 82 00 08 */	beq .L_814D7594
/* 814D7590 | 48 00 00 44 */	b .L_814D75D4
.L_814D7594:
/* 814D7594 | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 814D7598 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D759C | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D75A0 | 7C 7E 00 16 */	mulhwu r3, r30, r0
/* 814D75A4 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D75A8 | 7C 9B 31 D6 */	mullw r4, r27, r6
/* 814D75AC | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D75B0 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D75B4 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D75B8 | 7C 63 22 14 */	add r3, r3, r4
/* 814D75BC | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D75C0 | 7C 63 02 14 */	add r3, r3, r0
/* 814D75C4 | 48 05 E6 09 */	bl OSSleepTicks
.L_814D75C8:
/* 814D75C8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D75CC | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D75D0 | 41 81 FF 9C */	bgt .L_814D756C
.L_814D75D4:
/* 814D75D4 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814D75D8 | 40 80 02 24 */	bge .L_814D77FC
/* 814D75DC | 3C 60 10 62 */	lis r3, 0x1062
/* 814D75E0 | 83 0D AE 60 */	lwz r24, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D75E4 | 3B 83 4D D3 */	addi r28, r3, 0x4dd3
/* 814D75E8 | 3F 60 80 00 */	lis r27, 0x8000
/* 814D75EC | 3B 40 00 00 */	li r26, 0x0
/* 814D75F0 | 48 00 00 54 */	b .L_814D7644
.L_814D75F4:
/* 814D75F4 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D75F8 | 48 08 DE F5 */	bl NANDClose
/* 814D75FC | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7600 | 41 82 00 10 */	beq .L_814D7610
/* 814D7604 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7608 | 41 82 00 08 */	beq .L_814D7610
/* 814D760C | 48 00 00 44 */	b .L_814D7650
.L_814D7610:
/* 814D7610 | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 814D7614 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7618 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D761C | 7C 7C 00 16 */	mulhwu r3, r28, r0
/* 814D7620 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7624 | 7C 9A 31 D6 */	mullw r4, r26, r6
/* 814D7628 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D762C | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7630 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7634 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7638 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D763C | 7C 63 02 14 */	add r3, r3, r0
/* 814D7640 | 48 05 E5 8D */	bl OSSleepTicks
.L_814D7644:
/* 814D7644 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814D7648 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814D764C | 41 81 FF A8 */	bgt .L_814D75F4
.L_814D7650:
/* 814D7650 | 28 1F 00 1A */	cmplwi r31, 0x1a
/* 814D7654 | 40 80 00 A8 */	bge .L_814D76FC
/* 814D7658 | 3C 60 81 0F */	lis r3, l_nandFunc@ha
/* 814D765C | 57 E0 20 36 */	slwi r0, r31, 4
/* 814D7660 | 38 63 5A D8 */	addi r3, r3, l_nandFunc@l
/* 814D7664 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7668 | 81 83 00 0C */	lwz r12, 0xc(r3)
/* 814D766C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D7670 | 41 82 00 14 */	beq .L_814D7684
/* 814D7674 | 7F A3 EB 78 */	mr r3, r29
/* 814D7678 | 7D 89 03 A6 */	mtctr r12
/* 814D767C | 4E 80 04 21 */	bctrl
/* 814D7680 | 48 00 01 74 */	b .L_814D77F4
.L_814D7684:
/* 814D7684 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7688 | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D768C | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D7690 | 3F 40 80 00 */	lis r26, 0x8000
/* 814D7694 | 3B 00 00 00 */	li r24, 0x0
/* 814D7698 | 48 00 00 54 */	b .L_814D76EC
.L_814D769C:
/* 814D769C | 7F A3 EB 78 */	mr r3, r29
/* 814D76A0 | 48 08 C7 59 */	bl NANDDelete
/* 814D76A4 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D76A8 | 41 82 00 10 */	beq .L_814D76B8
/* 814D76AC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D76B0 | 41 82 00 08 */	beq .L_814D76B8
/* 814D76B4 | 48 00 01 40 */	b .L_814D77F4
.L_814D76B8:
/* 814D76B8 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 814D76BC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D76C0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D76C4 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D76C8 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D76CC | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D76D0 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D76D4 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D76D8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D76DC | 7C 63 22 14 */	add r3, r3, r4
/* 814D76E0 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D76E4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D76E8 | 48 05 E4 E5 */	bl OSSleepTicks
.L_814D76EC:
/* 814D76EC | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D76F0 | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D76F4 | 41 81 FF A8 */	bgt .L_814D769C
/* 814D76F8 | 48 00 00 FC */	b .L_814D77F4
.L_814D76FC:
/* 814D76FC | 3C 1F 00 01 */	addis r0, r31, 0x1
/* 814D7700 | 28 00 FF F6 */	cmplwi r0, 0xfff6
/* 814D7704 | 40 82 00 7C */	bne .L_814D7780
/* 814D7708 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D770C | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7710 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D7714 | 3F 40 80 00 */	lis r26, 0x8000
/* 814D7718 | 3B 00 00 00 */	li r24, 0x0
/* 814D771C | 48 00 00 54 */	b .L_814D7770
.L_814D7720:
/* 814D7720 | 7F A3 EB 78 */	mr r3, r29
/* 814D7724 | 48 08 C6 D5 */	bl NANDDelete
/* 814D7728 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D772C | 41 82 00 10 */	beq .L_814D773C
/* 814D7730 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7734 | 41 82 00 08 */	beq .L_814D773C
/* 814D7738 | 48 00 00 BC */	b .L_814D77F4
.L_814D773C:
/* 814D773C | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 814D7740 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7744 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7748 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D774C | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7750 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D7754 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7758 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D775C | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7760 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7764 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7768 | 7C 63 02 14 */	add r3, r3, r0
/* 814D776C | 48 05 E4 61 */	bl OSSleepTicks
.L_814D7770:
/* 814D7770 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D7774 | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D7778 | 41 81 FF A8 */	bgt .L_814D7720
/* 814D777C | 48 00 00 78 */	b .L_814D77F4
.L_814D7780:
/* 814D7780 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7784 | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7788 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D778C | 3F 40 80 00 */	lis r26, 0x8000
/* 814D7790 | 3B 00 00 00 */	li r24, 0x0
/* 814D7794 | 48 00 00 54 */	b .L_814D77E8
.L_814D7798:
/* 814D7798 | 7F A3 EB 78 */	mr r3, r29
/* 814D779C | 48 08 C7 0D */	bl NANDPrivateDelete
/* 814D77A0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D77A4 | 41 82 00 10 */	beq .L_814D77B4
/* 814D77A8 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D77AC | 41 82 00 08 */	beq .L_814D77B4
/* 814D77B0 | 48 00 00 44 */	b .L_814D77F4
.L_814D77B4:
/* 814D77B4 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 814D77B8 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D77BC | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D77C0 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D77C4 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D77C8 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D77CC | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D77D0 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D77D4 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D77D8 | 7C 63 22 14 */	add r3, r3, r4
/* 814D77DC | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D77E0 | 7C 63 02 14 */	add r3, r3, r0
/* 814D77E4 | 48 05 E3 E9 */	bl OSSleepTicks
.L_814D77E8:
/* 814D77E8 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D77EC | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D77F0 | 41 81 FF A8 */	bgt .L_814D7798
.L_814D77F4:
/* 814D77F4 | 7F 23 CB 78 */	mr r3, r25
/* 814D77F8 | 48 00 00 7C */	b .L_814D7874
.L_814D77FC:
/* 814D77FC | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7800 | 82 CD AE 60 */	lwz r22, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7804 | 3B 43 4D D3 */	addi r26, r3, 0x4dd3
/* 814D7808 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D780C | 3B 00 00 00 */	li r24, 0x0
/* 814D7810 | 48 00 00 54 */	b .L_814D7864
.L_814D7814:
/* 814D7814 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D7818 | 48 08 DC D5 */	bl NANDClose
/* 814D781C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7820 | 41 82 00 10 */	beq .L_814D7830
/* 814D7824 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7828 | 41 82 00 08 */	beq .L_814D7830
/* 814D782C | 48 00 00 44 */	b .L_814D7870
.L_814D7830:
/* 814D7830 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D7834 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7838 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D783C | 7C 7A 00 16 */	mulhwu r3, r26, r0
/* 814D7840 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7844 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D7848 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D784C | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7850 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7854 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7858 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D785C | 7C 63 02 14 */	add r3, r3, r0
/* 814D7860 | 48 05 E3 6D */	bl OSSleepTicks
.L_814D7864:
/* 814D7864 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814D7868 | 3A D6 FF FF */	subi r22, r22, 0x1
/* 814D786C | 41 81 FF A8 */	bgt .L_814D7814
.L_814D7870:
/* 814D7870 | 38 60 00 00 */	li r3, 0x0
.L_814D7874:
/* 814D7874 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814D7878 | 7D 4B 53 78 */	mr r11, r10
/* 814D787C | 48 12 1C 7D */	bl _restgpr_22
/* 814D7880 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814D7884 | 7C 08 03 A6 */	mtlr r0
/* 814D7888 | 7D 41 53 78 */	mr r1, r10
/* 814D788C | 4E 80 00 20 */	blr
.endfn _CreatePrfFile

# .text:0x1E3C | 0x814D7890 | size: 0xC
.fn NAND_CreatePrfFileEx, global
/* 814D7890 | 38 C0 00 3F */	li r6, 0x3f
/* 814D7894 | 38 E0 FF F5 */	li r7, -0xb
/* 814D7898 | 4B FF F2 94 */	b _CreatePrfFile
.endfn NAND_CreatePrfFileEx

# .text:0x1E48 | 0x814D789C | size: 0x324
.fn VFi_NandFlushNANDFromHandleIdx, global
/* 814D789C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D78A0 | 7C 08 02 A6 */	mflr r0
/* 814D78A4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D78A8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D78AC | 48 12 1C 05 */	bl _savegpr_23
/* 814D78B0 | 7C 7A 1B 78 */	mr r26, r3
/* 814D78B4 | 7C 9B 23 78 */	mr r27, r4
/* 814D78B8 | 4B FF B3 61 */	bl VFSysGetDriveP
/* 814D78BC | 7C 77 1B 78 */	mr r23, r3
/* 814D78C0 | 7F 43 D3 78 */	mr r3, r26
/* 814D78C4 | 4B FF AC F5 */	bl VFSysGetHandleP
/* 814D78C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D78CC | 41 82 00 24 */	beq .L_814D78F0
/* 814D78D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D78D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D78D8 | 41 82 00 18 */	beq .L_814D78F0
/* 814D78DC | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814D78E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814D78E4 | 40 82 00 0C */	bne .L_814D78F0
/* 814D78E8 | 38 60 00 00 */	li r3, 0x0
/* 814D78EC | 48 00 02 BC */	b .L_814D7BA8
.L_814D78F0:
/* 814D78F0 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814D78F4 | 41 82 02 B0 */	beq .L_814D7BA4
/* 814D78F8 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D78FC | 83 97 00 00 */	lwz r28, 0x0(r23)
/* 814D7900 | 3B B7 00 3C */	addi r29, r23, 0x3c
/* 814D7904 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7908 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D790C | 3B E0 00 00 */	li r31, 0x0
/* 814D7910 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D7914 | 3A E0 00 00 */	li r23, 0x0
/* 814D7918 | 48 00 00 58 */	b .L_814D7970
.L_814D791C:
/* 814D791C | 7F 83 E3 78 */	mr r3, r28
/* 814D7920 | 48 08 DB CD */	bl NANDClose
/* 814D7924 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7928 | 7C 7F 1B 78 */	mr r31, r3
/* 814D792C | 41 82 00 10 */	beq .L_814D793C
/* 814D7930 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7934 | 41 82 00 08 */	beq .L_814D793C
/* 814D7938 | 48 00 00 44 */	b .L_814D797C
.L_814D793C:
/* 814D793C | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D7940 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7944 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7948 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D794C | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7950 | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D7954 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7958 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D795C | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7960 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7964 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7968 | 7C 63 02 14 */	add r3, r3, r0
/* 814D796C | 48 05 E2 61 */	bl OSSleepTicks
.L_814D7970:
/* 814D7970 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D7974 | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D7978 | 41 81 FF A4 */	bgt .L_814D791C
.L_814D797C:
/* 814D797C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D7980 | 40 80 00 20 */	bge .L_814D79A0
/* 814D7984 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814D7988 | 41 82 00 10 */	beq .L_814D7998
/* 814D798C | 7F 43 D3 78 */	mr r3, r26
/* 814D7990 | 7F E4 FB 78 */	mr r4, r31
/* 814D7994 | 4B FF DE 69 */	bl dCommon_setLastDeviceErrorToDisk2
.L_814D7998:
/* 814D7998 | 7F E3 FB 78 */	mr r3, r31
/* 814D799C | 48 00 02 0C */	b .L_814D7BA8
.L_814D79A0:
/* 814D79A0 | 28 1A 00 1A */	cmplwi r26, 0x1a
/* 814D79A4 | 40 80 00 C4 */	bge .L_814D7A68
/* 814D79A8 | 3C 60 81 0F */	lis r3, l_nandFunc@ha
/* 814D79AC | 57 40 20 36 */	slwi r0, r26, 4
/* 814D79B0 | 38 63 5A D8 */	addi r3, r3, l_nandFunc@l
/* 814D79B4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D79B8 | 81 83 00 04 */	lwz r12, 0x4(r3)
/* 814D79BC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D79C0 | 41 82 00 20 */	beq .L_814D79E0
/* 814D79C4 | 7F A3 EB 78 */	mr r3, r29
/* 814D79C8 | 7F 84 E3 78 */	mr r4, r28
/* 814D79CC | 38 A0 00 03 */	li r5, 0x3
/* 814D79D0 | 7D 89 03 A6 */	mtctr r12
/* 814D79D4 | 4E 80 04 21 */	bctrl
/* 814D79D8 | 7C 7F 1B 78 */	mr r31, r3
/* 814D79DC | 48 00 01 A4 */	b .L_814D7B80
.L_814D79E0:
/* 814D79E0 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D79E4 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D79E8 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D79EC | 3B E0 00 00 */	li r31, 0x0
/* 814D79F0 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D79F4 | 3A E0 00 00 */	li r23, 0x0
/* 814D79F8 | 48 00 00 60 */	b .L_814D7A58
.L_814D79FC:
/* 814D79FC | 7F A3 EB 78 */	mr r3, r29
/* 814D7A00 | 7F 84 E3 78 */	mr r4, r28
/* 814D7A04 | 38 A0 00 03 */	li r5, 0x3
/* 814D7A08 | 48 08 D8 65 */	bl NANDOpen
/* 814D7A0C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7A10 | 7C 7F 1B 78 */	mr r31, r3
/* 814D7A14 | 41 82 00 10 */	beq .L_814D7A24
/* 814D7A18 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7A1C | 41 82 00 08 */	beq .L_814D7A24
/* 814D7A20 | 48 00 01 60 */	b .L_814D7B80
.L_814D7A24:
/* 814D7A24 | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D7A28 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7A2C | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7A30 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D7A34 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7A38 | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D7A3C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7A40 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7A44 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7A48 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7A4C | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7A50 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7A54 | 48 05 E1 79 */	bl OSSleepTicks
.L_814D7A58:
/* 814D7A58 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D7A5C | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D7A60 | 41 81 FF 9C */	bgt .L_814D79FC
/* 814D7A64 | 48 00 01 1C */	b .L_814D7B80
.L_814D7A68:
/* 814D7A68 | 3C 1A 00 01 */	addis r0, r26, 0x1
/* 814D7A6C | 28 00 FF F6 */	cmplwi r0, 0xfff6
/* 814D7A70 | 40 82 00 8C */	bne .L_814D7AFC
/* 814D7A74 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7A78 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7A7C | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D7A80 | 3B E0 00 00 */	li r31, 0x0
/* 814D7A84 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D7A88 | 3A E0 00 00 */	li r23, 0x0
/* 814D7A8C | 48 00 00 60 */	b .L_814D7AEC
.L_814D7A90:
/* 814D7A90 | 7F A3 EB 78 */	mr r3, r29
/* 814D7A94 | 7F 84 E3 78 */	mr r4, r28
/* 814D7A98 | 38 A0 00 03 */	li r5, 0x3
/* 814D7A9C | 48 08 D7 D1 */	bl NANDOpen
/* 814D7AA0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7AA4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D7AA8 | 41 82 00 10 */	beq .L_814D7AB8
/* 814D7AAC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7AB0 | 41 82 00 08 */	beq .L_814D7AB8
/* 814D7AB4 | 48 00 00 CC */	b .L_814D7B80
.L_814D7AB8:
/* 814D7AB8 | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D7ABC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7AC0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7AC4 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D7AC8 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7ACC | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D7AD0 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7AD4 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7AD8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7ADC | 7C 63 22 14 */	add r3, r3, r4
/* 814D7AE0 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7AE4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7AE8 | 48 05 E0 E5 */	bl OSSleepTicks
.L_814D7AEC:
/* 814D7AEC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D7AF0 | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D7AF4 | 41 81 FF 9C */	bgt .L_814D7A90
/* 814D7AF8 | 48 00 00 88 */	b .L_814D7B80
.L_814D7AFC:
/* 814D7AFC | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7B00 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7B04 | 3A E3 4D D3 */	addi r23, r3, 0x4dd3
/* 814D7B08 | 3B E0 00 00 */	li r31, 0x0
/* 814D7B0C | 3F 00 80 00 */	lis r24, 0x8000
/* 814D7B10 | 3B 20 00 00 */	li r25, 0x0
/* 814D7B14 | 48 00 00 60 */	b .L_814D7B74
.L_814D7B18:
/* 814D7B18 | 7F A3 EB 78 */	mr r3, r29
/* 814D7B1C | 7F 84 E3 78 */	mr r4, r28
/* 814D7B20 | 38 A0 00 03 */	li r5, 0x3
/* 814D7B24 | 48 08 D7 D5 */	bl NANDPrivateOpen
/* 814D7B28 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7B2C | 7C 7F 1B 78 */	mr r31, r3
/* 814D7B30 | 41 82 00 10 */	beq .L_814D7B40
/* 814D7B34 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7B38 | 41 82 00 08 */	beq .L_814D7B40
/* 814D7B3C | 48 00 00 44 */	b .L_814D7B80
.L_814D7B40:
/* 814D7B40 | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D7B44 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7B48 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7B4C | 7C 77 00 16 */	mulhwu r3, r23, r0
/* 814D7B50 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7B54 | 7C 99 31 D6 */	mullw r4, r25, r6
/* 814D7B58 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7B5C | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7B60 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7B64 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7B68 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7B6C | 7C 63 02 14 */	add r3, r3, r0
/* 814D7B70 | 48 05 E0 5D */	bl OSSleepTicks
.L_814D7B74:
/* 814D7B74 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D7B78 | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D7B7C | 41 81 FF 9C */	bgt .L_814D7B18
.L_814D7B80:
/* 814D7B80 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D7B84 | 40 80 00 20 */	bge .L_814D7BA4
/* 814D7B88 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814D7B8C | 41 82 00 10 */	beq .L_814D7B9C
/* 814D7B90 | 7F 43 D3 78 */	mr r3, r26
/* 814D7B94 | 7F E4 FB 78 */	mr r4, r31
/* 814D7B98 | 4B FF DC 65 */	bl dCommon_setLastDeviceErrorToDisk2
.L_814D7B9C:
/* 814D7B9C | 7F E3 FB 78 */	mr r3, r31
/* 814D7BA0 | 48 00 00 08 */	b .L_814D7BA8
.L_814D7BA4:
/* 814D7BA4 | 38 60 00 00 */	li r3, 0x0
.L_814D7BA8:
/* 814D7BA8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D7BAC | 48 12 19 51 */	bl _restgpr_23
/* 814D7BB0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D7BB4 | 7C 08 03 A6 */	mtlr r0
/* 814D7BB8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D7BBC | 4E 80 00 20 */	blr
.endfn VFi_NandFlushNANDFromHandleIdx

# .text:0x216C | 0x814D7BC0 | size: 0x6A8
.fn _MountPrfFile, global
/* 814D7BC0 | 54 2B 06 BE */	clrlwi r11, r1, 26
/* 814D7BC4 | 7C 2C 0B 78 */	mr r12, r1
/* 814D7BC8 | 21 6B FF 40 */	subfic r11, r11, -0xc0
/* 814D7BCC | 7C 21 59 6E */	stwux r1, r1, r11
/* 814D7BD0 | 7C 08 02 A6 */	mflr r0
/* 814D7BD4 | 7D 8B 63 78 */	mr r11, r12
/* 814D7BD8 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814D7BDC | 48 12 18 D5 */	bl _savegpr_23
/* 814D7BE0 | 7C 7A 1B 78 */	mr r26, r3
/* 814D7BE4 | 7C 9B 23 78 */	mr r27, r4
/* 814D7BE8 | 4B FF B0 71 */	bl VFSysPDMDisk2DriveP
/* 814D7BEC | 7C 77 1B 78 */	mr r23, r3
/* 814D7BF0 | 7F 43 D3 78 */	mr r3, r26
/* 814D7BF4 | 4B FF DC 31 */	bl dCommon_getHandleIdxFromDisk
/* 814D7BF8 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814D7BFC | 7C 7F 1B 78 */	mr r31, r3
/* 814D7C00 | 40 82 00 0C */	bne .L_814D7C0C
/* 814D7C04 | 38 60 FF EC */	li r3, -0x14
/* 814D7C08 | 48 00 06 44 */	b .L_814D824C
.L_814D7C0C:
/* 814D7C0C | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D7C10 | 83 97 00 00 */	lwz r28, 0x0(r23)
/* 814D7C14 | 40 80 00 C4 */	bge .L_814D7CD8
/* 814D7C18 | 3C 80 81 0F */	lis r4, l_nandFunc@ha
/* 814D7C1C | 54 60 20 36 */	slwi r0, r3, 4
/* 814D7C20 | 38 84 5A D8 */	addi r4, r4, l_nandFunc@l
/* 814D7C24 | 7C 64 02 14 */	add r3, r4, r0
/* 814D7C28 | 81 83 00 04 */	lwz r12, 0x4(r3)
/* 814D7C2C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D7C30 | 41 82 00 20 */	beq .L_814D7C50
/* 814D7C34 | 7F 63 DB 78 */	mr r3, r27
/* 814D7C38 | 7F 84 E3 78 */	mr r4, r28
/* 814D7C3C | 38 A0 00 01 */	li r5, 0x1
/* 814D7C40 | 7D 89 03 A6 */	mtctr r12
/* 814D7C44 | 4E 80 04 21 */	bctrl
/* 814D7C48 | 7C 7D 1B 78 */	mr r29, r3
/* 814D7C4C | 48 00 01 A4 */	b .L_814D7DF0
.L_814D7C50:
/* 814D7C50 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7C54 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7C58 | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D7C5C | 3B A0 00 00 */	li r29, 0x0
/* 814D7C60 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D7C64 | 3A E0 00 00 */	li r23, 0x0
/* 814D7C68 | 48 00 00 60 */	b .L_814D7CC8
.L_814D7C6C:
/* 814D7C6C | 7F 63 DB 78 */	mr r3, r27
/* 814D7C70 | 7F 84 E3 78 */	mr r4, r28
/* 814D7C74 | 38 A0 00 01 */	li r5, 0x1
/* 814D7C78 | 48 08 D5 F5 */	bl NANDOpen
/* 814D7C7C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7C80 | 7C 7D 1B 78 */	mr r29, r3
/* 814D7C84 | 41 82 00 10 */	beq .L_814D7C94
/* 814D7C88 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7C8C | 41 82 00 08 */	beq .L_814D7C94
/* 814D7C90 | 48 00 01 60 */	b .L_814D7DF0
.L_814D7C94:
/* 814D7C94 | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D7C98 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7C9C | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7CA0 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D7CA4 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7CA8 | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D7CAC | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7CB0 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7CB4 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7CB8 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7CBC | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7CC0 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7CC4 | 48 05 DF 09 */	bl OSSleepTicks
.L_814D7CC8:
/* 814D7CC8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D7CCC | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D7CD0 | 41 81 FF 9C */	bgt .L_814D7C6C
/* 814D7CD4 | 48 00 01 1C */	b .L_814D7DF0
.L_814D7CD8:
/* 814D7CD8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814D7CDC | 28 00 FF F6 */	cmplwi r0, 0xfff6
/* 814D7CE0 | 40 82 00 8C */	bne .L_814D7D6C
/* 814D7CE4 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7CE8 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7CEC | 3B 23 4D D3 */	addi r25, r3, 0x4dd3
/* 814D7CF0 | 3B A0 00 00 */	li r29, 0x0
/* 814D7CF4 | 3F 00 80 00 */	lis r24, 0x8000
/* 814D7CF8 | 3A E0 00 00 */	li r23, 0x0
/* 814D7CFC | 48 00 00 60 */	b .L_814D7D5C
.L_814D7D00:
/* 814D7D00 | 7F 63 DB 78 */	mr r3, r27
/* 814D7D04 | 7F 84 E3 78 */	mr r4, r28
/* 814D7D08 | 38 A0 00 01 */	li r5, 0x1
/* 814D7D0C | 48 08 D5 61 */	bl NANDOpen
/* 814D7D10 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7D14 | 7C 7D 1B 78 */	mr r29, r3
/* 814D7D18 | 41 82 00 10 */	beq .L_814D7D28
/* 814D7D1C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7D20 | 41 82 00 08 */	beq .L_814D7D28
/* 814D7D24 | 48 00 00 CC */	b .L_814D7DF0
.L_814D7D28:
/* 814D7D28 | 80 18 00 F8 */	lwz r0, 0xf8(r24)
/* 814D7D2C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7D30 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7D34 | 7C 79 00 16 */	mulhwu r3, r25, r0
/* 814D7D38 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7D3C | 7C 97 31 D6 */	mullw r4, r23, r6
/* 814D7D40 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7D44 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7D48 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7D4C | 7C 63 22 14 */	add r3, r3, r4
/* 814D7D50 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7D54 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7D58 | 48 05 DE 75 */	bl OSSleepTicks
.L_814D7D5C:
/* 814D7D5C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D7D60 | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D7D64 | 41 81 FF 9C */	bgt .L_814D7D00
/* 814D7D68 | 48 00 00 88 */	b .L_814D7DF0
.L_814D7D6C:
/* 814D7D6C | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7D70 | 83 CD AE 60 */	lwz r30, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7D74 | 3A E3 4D D3 */	addi r23, r3, 0x4dd3
/* 814D7D78 | 3B A0 00 00 */	li r29, 0x0
/* 814D7D7C | 3F 20 80 00 */	lis r25, 0x8000
/* 814D7D80 | 3B 00 00 00 */	li r24, 0x0
/* 814D7D84 | 48 00 00 60 */	b .L_814D7DE4
.L_814D7D88:
/* 814D7D88 | 7F 63 DB 78 */	mr r3, r27
/* 814D7D8C | 7F 84 E3 78 */	mr r4, r28
/* 814D7D90 | 38 A0 00 01 */	li r5, 0x1
/* 814D7D94 | 48 08 D5 65 */	bl NANDPrivateOpen
/* 814D7D98 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7D9C | 7C 7D 1B 78 */	mr r29, r3
/* 814D7DA0 | 41 82 00 10 */	beq .L_814D7DB0
/* 814D7DA4 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7DA8 | 41 82 00 08 */	beq .L_814D7DB0
/* 814D7DAC | 48 00 00 44 */	b .L_814D7DF0
.L_814D7DB0:
/* 814D7DB0 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D7DB4 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7DB8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7DBC | 7C 77 00 16 */	mulhwu r3, r23, r0
/* 814D7DC0 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7DC4 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D7DC8 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7DCC | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7DD0 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7DD4 | 7C 63 22 14 */	add r3, r3, r4
/* 814D7DD8 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7DDC | 7C 63 02 14 */	add r3, r3, r0
/* 814D7DE0 | 48 05 DD ED */	bl OSSleepTicks
.L_814D7DE4:
/* 814D7DE4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D7DE8 | 3B DE FF FF */	subi r30, r30, 0x1
/* 814D7DEC | 41 81 FF 9C */	bgt .L_814D7D88
.L_814D7DF0:
/* 814D7DF0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D7DF4 | 40 82 02 44 */	bne .L_814D8038
/* 814D7DF8 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D7DFC | 38 80 00 00 */	li r4, 0x0
/* 814D7E00 | 38 A0 00 20 */	li r5, 0x20
/* 814D7E04 | 4B FD DB 05 */	bl VFipf_memset
/* 814D7E08 | 7F 83 E3 78 */	mr r3, r28
/* 814D7E0C | 38 81 00 40 */	addi r4, r1, 0x40
/* 814D7E10 | 38 A0 00 20 */	li r5, 0x20
/* 814D7E14 | 4B FF E6 F9 */	bl A32_NANDRead
/* 814D7E18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D7E1C | 7C 7E 1B 78 */	mr r30, r3
/* 814D7E20 | 40 80 00 8C */	bge .L_814D7EAC
/* 814D7E24 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7E28 | 83 AD AE 60 */	lwz r29, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7E2C | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D7E30 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D7E34 | 3B 00 00 00 */	li r24, 0x0
/* 814D7E38 | 48 00 00 54 */	b .L_814D7E8C
.L_814D7E3C:
/* 814D7E3C | 7F 83 E3 78 */	mr r3, r28
/* 814D7E40 | 48 08 D6 AD */	bl NANDClose
/* 814D7E44 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7E48 | 41 82 00 10 */	beq .L_814D7E58
/* 814D7E4C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7E50 | 41 82 00 08 */	beq .L_814D7E58
/* 814D7E54 | 48 00 00 44 */	b .L_814D7E98
.L_814D7E58:
/* 814D7E58 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D7E5C | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7E60 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7E64 | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D7E68 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7E6C | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D7E70 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7E74 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7E78 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7E7C | 7C 63 22 14 */	add r3, r3, r4
/* 814D7E80 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7E84 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7E88 | 48 05 DD 45 */	bl OSSleepTicks
.L_814D7E8C:
/* 814D7E8C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D7E90 | 3B BD FF FF */	subi r29, r29, 0x1
/* 814D7E94 | 41 81 FF A8 */	bgt .L_814D7E3C
.L_814D7E98:
/* 814D7E98 | 7F 43 D3 78 */	mr r3, r26
/* 814D7E9C | 7F C4 F3 78 */	mr r4, r30
/* 814D7EA0 | 4B FF D9 05 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D7EA4 | 7F C3 F3 78 */	mr r3, r30
/* 814D7EA8 | 48 00 03 A4 */	b .L_814D824C
.L_814D7EAC:
/* 814D7EAC | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D7EB0 | 4B FF D1 2D */	bl dCommon_PrintSignature
/* 814D7EB4 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D7EB8 | 4B FF CF E9 */	bl dCommon_IsPrfFile
/* 814D7EBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D7EC0 | 40 82 00 80 */	bne .L_814D7F40
/* 814D7EC4 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7EC8 | 82 ED AE 60 */	lwz r23, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7ECC | 3B 43 4D D3 */	addi r26, r3, 0x4dd3
/* 814D7ED0 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D7ED4 | 3B 00 00 00 */	li r24, 0x0
/* 814D7ED8 | 48 00 00 54 */	b .L_814D7F2C
.L_814D7EDC:
/* 814D7EDC | 7F 83 E3 78 */	mr r3, r28
/* 814D7EE0 | 48 08 D6 0D */	bl NANDClose
/* 814D7EE4 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7EE8 | 41 82 00 10 */	beq .L_814D7EF8
/* 814D7EEC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7EF0 | 41 82 00 08 */	beq .L_814D7EF8
/* 814D7EF4 | 48 00 00 44 */	b .L_814D7F38
.L_814D7EF8:
/* 814D7EF8 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D7EFC | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7F00 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D7F04 | 7C 7A 00 16 */	mulhwu r3, r26, r0
/* 814D7F08 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D7F0C | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D7F10 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D7F14 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D7F18 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D7F1C | 7C 63 22 14 */	add r3, r3, r4
/* 814D7F20 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D7F24 | 7C 63 02 14 */	add r3, r3, r0
/* 814D7F28 | 48 05 DC A5 */	bl OSSleepTicks
.L_814D7F2C:
/* 814D7F2C | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814D7F30 | 3A F7 FF FF */	subi r23, r23, 0x1
/* 814D7F34 | 41 81 FF A8 */	bgt .L_814D7EDC
.L_814D7F38:
/* 814D7F38 | 38 60 FF FF */	li r3, -0x1
/* 814D7F3C | 48 00 03 10 */	b .L_814D824C
.L_814D7F40:
/* 814D7F40 | 88 01 00 49 */	lbz r0, 0x49(r1)
/* 814D7F44 | 7F 43 D3 78 */	mr r3, r26
/* 814D7F48 | 88 C1 00 4A */	lbz r6, 0x4a(r1)
/* 814D7F4C | 88 A1 00 4B */	lbz r5, 0x4b(r1)
/* 814D7F50 | 54 00 80 1E */	slwi r0, r0, 16
/* 814D7F54 | 88 81 00 48 */	lbz r4, 0x48(r1)
/* 814D7F58 | 50 C5 44 2E */	rlwimi r5, r6, 8, 16, 23
/* 814D7F5C | 50 80 C0 0E */	rlwimi r0, r4, 24, 0, 7
/* 814D7F60 | 7C A4 03 78 */	or r4, r5, r0
/* 814D7F64 | 4B FF D7 95 */	bl dCommon_setFileSizeToDisk
/* 814D7F68 | 7F 43 D3 78 */	mr r3, r26
/* 814D7F6C | 4B FF D7 39 */	bl dCommon_getFileSizeFromDisk
/* 814D7F70 | 38 03 FF E1 */	subi r0, r3, 0x1f
/* 814D7F74 | 38 60 00 00 */	li r3, 0x0
/* 814D7F78 | 54 04 BA 7E */	srwi r4, r0, 9
/* 814D7F7C | 38 A0 00 01 */	li r5, 0x1
/* 814D7F80 | 38 C0 02 00 */	li r6, 0x200
/* 814D7F84 | 4B FF D0 B9 */	bl dCommon_GetNiceFatType
/* 814D7F88 | 7C 77 1B 78 */	mr r23, r3
/* 814D7F8C | 7F 43 D3 78 */	mr r3, r26
/* 814D7F90 | 7E E4 BB 78 */	mr r4, r23
/* 814D7F94 | 4B FF D8 95 */	bl dCommon_setFatTypeToDisk
/* 814D7F98 | 7E E3 BB 78 */	mr r3, r23
/* 814D7F9C | 4B FF D1 29 */	bl dCommon_GetReservedSecFromFatType
/* 814D7FA0 | 7C 64 1B 78 */	mr r4, r3
/* 814D7FA4 | 7F 43 D3 78 */	mr r3, r26
/* 814D7FA8 | 4B FF D9 2D */	bl dCommon_setResvSecNumToDisk
/* 814D7FAC | 7E E3 BB 78 */	mr r3, r23
/* 814D7FB0 | 4B FF D1 29 */	bl dCommon_GetRootEntNumFromFatType
/* 814D7FB4 | 7C 64 1B 78 */	mr r4, r3
/* 814D7FB8 | 7F 43 D3 78 */	mr r3, r26
/* 814D7FBC | 4B FF D9 C5 */	bl dCommon_setRootEntNumToDisk
/* 814D7FC0 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D7FC4 | 83 AD AE 60 */	lwz r29, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D7FC8 | 3B C3 4D D3 */	addi r30, r3, 0x4dd3
/* 814D7FCC | 3F 20 80 00 */	lis r25, 0x8000
/* 814D7FD0 | 3B 00 00 00 */	li r24, 0x0
/* 814D7FD4 | 48 00 00 54 */	b .L_814D8028
.L_814D7FD8:
/* 814D7FD8 | 7F 83 E3 78 */	mr r3, r28
/* 814D7FDC | 48 08 D5 11 */	bl NANDClose
/* 814D7FE0 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D7FE4 | 41 82 00 10 */	beq .L_814D7FF4
/* 814D7FE8 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D7FEC | 41 82 00 08 */	beq .L_814D7FF4
/* 814D7FF0 | 48 00 00 5C */	b .L_814D804C
.L_814D7FF4:
/* 814D7FF4 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D7FF8 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D7FFC | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D8000 | 7C 7E 00 16 */	mulhwu r3, r30, r0
/* 814D8004 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D8008 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D800C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D8010 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D8014 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D8018 | 7C 63 22 14 */	add r3, r3, r4
/* 814D801C | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D8020 | 7C 63 02 14 */	add r3, r3, r0
/* 814D8024 | 48 05 DB A9 */	bl OSSleepTicks
.L_814D8028:
/* 814D8028 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D802C | 3B BD FF FF */	subi r29, r29, 0x1
/* 814D8030 | 41 81 FF A8 */	bgt .L_814D7FD8
/* 814D8034 | 48 00 00 18 */	b .L_814D804C
.L_814D8038:
/* 814D8038 | 7F 43 D3 78 */	mr r3, r26
/* 814D803C | 7F A4 EB 78 */	mr r4, r29
/* 814D8040 | 4B FF D7 65 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D8044 | 7F A3 EB 78 */	mr r3, r29
/* 814D8048 | 48 00 02 04 */	b .L_814D824C
.L_814D804C:
/* 814D804C | 28 1F 00 1A */	cmplwi r31, 0x1a
/* 814D8050 | 40 80 00 C4 */	bge .L_814D8114
/* 814D8054 | 3C 60 81 0F */	lis r3, l_nandFunc@ha
/* 814D8058 | 57 E0 20 36 */	slwi r0, r31, 4
/* 814D805C | 38 63 5A D8 */	addi r3, r3, l_nandFunc@l
/* 814D8060 | 7C 63 02 14 */	add r3, r3, r0
/* 814D8064 | 81 83 00 04 */	lwz r12, 0x4(r3)
/* 814D8068 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D806C | 41 82 00 20 */	beq .L_814D808C
/* 814D8070 | 7F 63 DB 78 */	mr r3, r27
/* 814D8074 | 7F 84 E3 78 */	mr r4, r28
/* 814D8078 | 38 A0 00 03 */	li r5, 0x3
/* 814D807C | 7D 89 03 A6 */	mtctr r12
/* 814D8080 | 4E 80 04 21 */	bctrl
/* 814D8084 | 7C 7E 1B 78 */	mr r30, r3
/* 814D8088 | 48 00 01 A4 */	b .L_814D822C
.L_814D808C:
/* 814D808C | 3C 60 10 62 */	lis r3, 0x1062
/* 814D8090 | 83 AD AE 60 */	lwz r29, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D8094 | 3B E3 4D D3 */	addi r31, r3, 0x4dd3
/* 814D8098 | 3B C0 00 00 */	li r30, 0x0
/* 814D809C | 3F 20 80 00 */	lis r25, 0x8000
/* 814D80A0 | 3B 00 00 00 */	li r24, 0x0
/* 814D80A4 | 48 00 00 60 */	b .L_814D8104
.L_814D80A8:
/* 814D80A8 | 7F 63 DB 78 */	mr r3, r27
/* 814D80AC | 7F 84 E3 78 */	mr r4, r28
/* 814D80B0 | 38 A0 00 03 */	li r5, 0x3
/* 814D80B4 | 48 08 D1 B9 */	bl NANDOpen
/* 814D80B8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D80BC | 7C 7E 1B 78 */	mr r30, r3
/* 814D80C0 | 41 82 00 10 */	beq .L_814D80D0
/* 814D80C4 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D80C8 | 41 82 00 08 */	beq .L_814D80D0
/* 814D80CC | 48 00 01 60 */	b .L_814D822C
.L_814D80D0:
/* 814D80D0 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D80D4 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D80D8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D80DC | 7C 7F 00 16 */	mulhwu r3, r31, r0
/* 814D80E0 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D80E4 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D80E8 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D80EC | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D80F0 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D80F4 | 7C 63 22 14 */	add r3, r3, r4
/* 814D80F8 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D80FC | 7C 63 02 14 */	add r3, r3, r0
/* 814D8100 | 48 05 DA CD */	bl OSSleepTicks
.L_814D8104:
/* 814D8104 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D8108 | 3B BD FF FF */	subi r29, r29, 0x1
/* 814D810C | 41 81 FF 9C */	bgt .L_814D80A8
/* 814D8110 | 48 00 01 1C */	b .L_814D822C
.L_814D8114:
/* 814D8114 | 3C 1F 00 01 */	addis r0, r31, 0x1
/* 814D8118 | 28 00 FF F6 */	cmplwi r0, 0xfff6
/* 814D811C | 40 82 00 8C */	bne .L_814D81A8
/* 814D8120 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D8124 | 83 AD AE 60 */	lwz r29, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D8128 | 3B E3 4D D3 */	addi r31, r3, 0x4dd3
/* 814D812C | 3B C0 00 00 */	li r30, 0x0
/* 814D8130 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D8134 | 3B 00 00 00 */	li r24, 0x0
/* 814D8138 | 48 00 00 60 */	b .L_814D8198
.L_814D813C:
/* 814D813C | 7F 63 DB 78 */	mr r3, r27
/* 814D8140 | 7F 84 E3 78 */	mr r4, r28
/* 814D8144 | 38 A0 00 03 */	li r5, 0x3
/* 814D8148 | 48 08 D1 25 */	bl NANDOpen
/* 814D814C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D8150 | 7C 7E 1B 78 */	mr r30, r3
/* 814D8154 | 41 82 00 10 */	beq .L_814D8164
/* 814D8158 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D815C | 41 82 00 08 */	beq .L_814D8164
/* 814D8160 | 48 00 00 CC */	b .L_814D822C
.L_814D8164:
/* 814D8164 | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D8168 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D816C | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D8170 | 7C 7F 00 16 */	mulhwu r3, r31, r0
/* 814D8174 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D8178 | 7C 98 31 D6 */	mullw r4, r24, r6
/* 814D817C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D8180 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D8184 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D8188 | 7C 63 22 14 */	add r3, r3, r4
/* 814D818C | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D8190 | 7C 63 02 14 */	add r3, r3, r0
/* 814D8194 | 48 05 DA 39 */	bl OSSleepTicks
.L_814D8198:
/* 814D8198 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D819C | 3B BD FF FF */	subi r29, r29, 0x1
/* 814D81A0 | 41 81 FF 9C */	bgt .L_814D813C
/* 814D81A4 | 48 00 00 88 */	b .L_814D822C
.L_814D81A8:
/* 814D81A8 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D81AC | 83 AD AE 60 */	lwz r29, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D81B0 | 3B 03 4D D3 */	addi r24, r3, 0x4dd3
/* 814D81B4 | 3B C0 00 00 */	li r30, 0x0
/* 814D81B8 | 3F 20 80 00 */	lis r25, 0x8000
/* 814D81BC | 3B E0 00 00 */	li r31, 0x0
/* 814D81C0 | 48 00 00 60 */	b .L_814D8220
.L_814D81C4:
/* 814D81C4 | 7F 63 DB 78 */	mr r3, r27
/* 814D81C8 | 7F 84 E3 78 */	mr r4, r28
/* 814D81CC | 38 A0 00 03 */	li r5, 0x3
/* 814D81D0 | 48 08 D1 29 */	bl NANDPrivateOpen
/* 814D81D4 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D81D8 | 7C 7E 1B 78 */	mr r30, r3
/* 814D81DC | 41 82 00 10 */	beq .L_814D81EC
/* 814D81E0 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D81E4 | 41 82 00 08 */	beq .L_814D81EC
/* 814D81E8 | 48 00 00 44 */	b .L_814D822C
.L_814D81EC:
/* 814D81EC | 80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 814D81F0 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D81F4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D81F8 | 7C 78 00 16 */	mulhwu r3, r24, r0
/* 814D81FC | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D8200 | 7C 9F 31 D6 */	mullw r4, r31, r6
/* 814D8204 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D8208 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D820C | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D8210 | 7C 63 22 14 */	add r3, r3, r4
/* 814D8214 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D8218 | 7C 63 02 14 */	add r3, r3, r0
/* 814D821C | 48 05 D9 B1 */	bl OSSleepTicks
.L_814D8220:
/* 814D8220 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D8224 | 3B BD FF FF */	subi r29, r29, 0x1
/* 814D8228 | 41 81 FF 9C */	bgt .L_814D81C4
.L_814D822C:
/* 814D822C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D8230 | 40 82 00 0C */	bne .L_814D823C
/* 814D8234 | 38 60 00 00 */	li r3, 0x0
/* 814D8238 | 48 00 00 14 */	b .L_814D824C
.L_814D823C:
/* 814D823C | 7F 43 D3 78 */	mr r3, r26
/* 814D8240 | 7F C4 F3 78 */	mr r4, r30
/* 814D8244 | 4B FF D5 61 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D8248 | 7F C3 F3 78 */	mr r3, r30
.L_814D824C:
/* 814D824C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814D8250 | 7D 4B 53 78 */	mr r11, r10
/* 814D8254 | 48 12 12 A9 */	bl _restgpr_23
/* 814D8258 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814D825C | 7C 08 03 A6 */	mtlr r0
/* 814D8260 | 7D 41 53 78 */	mr r1, r10
/* 814D8264 | 4E 80 00 20 */	blr
.endfn _MountPrfFile

# .text:0x2814 | 0x814D8268 | size: 0x38
.fn nanddrv_BuildUpFSInfoSector, global
/* 814D8268 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D826C | 7C 08 02 A6 */	mflr r0
/* 814D8270 | 38 80 02 00 */	li r4, 0x200
/* 814D8274 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D8278 | 4B FF CD 69 */	bl dCommon_MakeFsInfoSec
/* 814D827C | 7C 63 00 34 */	cntlzw r3, r3
/* 814D8280 | 38 00 FF EB */	li r0, -0x15
/* 814D8284 | 54 63 DF FE */	extrwi r3, r3, 1, 26
/* 814D8288 | 7C 63 00 D0 */	neg r3, r3
/* 814D828C | 7C 03 18 78 */	andc r3, r0, r3
/* 814D8290 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D8294 | 7C 08 03 A6 */	mtlr r0
/* 814D8298 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D829C | 4E 80 00 20 */	blr
.endfn nanddrv_BuildUpFSInfoSector

# .text:0x284C | 0x814D82A0 | size: 0xA4
.fn nanddrv_BuildUpBootSector, global
/* 814D82A0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D82A4 | 7C 08 02 A6 */	mflr r0
/* 814D82A8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D82AC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D82B0 | 48 12 12 11 */	bl _savegpr_27
/* 814D82B4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814D82B8 | 3C C0 81 0D */	lis r6, VFipdm_disk_set_810CCC20@ha
/* 814D82BC | 1C 00 00 38 */	mulli r0, r0, 0x38
/* 814D82C0 | 7C 9C 23 78 */	mr r28, r4
/* 814D82C4 | 38 C6 CC 20 */	addi r6, r6, VFipdm_disk_set_810CCC20@l
/* 814D82C8 | 7C 7B 1B 78 */	mr r27, r3
/* 814D82CC | 7C 86 02 14 */	add r4, r6, r0
/* 814D82D0 | 7C BD 2B 78 */	mr r29, r5
/* 814D82D4 | 83 C4 01 BC */	lwz r30, 0x1bc(r4)
/* 814D82D8 | 4B FF D6 55 */	bl dCommon_getRootEntNumFromDisk
/* 814D82DC | 7C 7F 1B 78 */	mr r31, r3
/* 814D82E0 | 7F 63 DB 78 */	mr r3, r27
/* 814D82E4 | 4B FF D5 9D */	bl dCommon_getResvSecNumFromDisk
/* 814D82E8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814D82EC | 38 00 00 F0 */	li r0, 0xf0
/* 814D82F0 | 7F 83 E3 78 */	mr r3, r28
/* 814D82F4 | 7F A4 EB 78 */	mr r4, r29
/* 814D82F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D82FC | 7F C5 F3 78 */	mr r5, r30
/* 814D8300 | 38 C0 00 01 */	li r6, 0x1
/* 814D8304 | 38 E0 02 00 */	li r7, 0x200
/* 814D8308 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814D830C | 39 00 00 EB */	li r8, 0xeb
/* 814D8310 | 39 20 00 90 */	li r9, 0x90
/* 814D8314 | 39 40 00 3F */	li r10, 0x3f
/* 814D8318 | 4B FF CD DD */	bl dCommon_MakeBootSector
/* 814D831C | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814D8320 | 7F 63 DB 78 */	mr r3, r27
/* 814D8324 | 4B FF D5 05 */	bl dCommon_setFatTypeToDisk
/* 814D8328 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D832C | 38 60 00 00 */	li r3, 0x0
/* 814D8330 | 48 12 11 DD */	bl _restgpr_27
/* 814D8334 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D8338 | 7C 08 03 A6 */	mtlr r0
/* 814D833C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D8340 | 4E 80 00 20 */	blr
.endfn nanddrv_BuildUpBootSector

# .text:0x28F0 | 0x814D8344 | size: 0x4C
.fn nanddrv_init, global
/* 814D8344 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D8348 | 7C 08 02 A6 */	mflr r0
/* 814D834C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8350 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D8354 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D8358 | 7C 7F 1B 78 */	mr r31, r3
/* 814D835C | 40 82 00 0C */	bne .L_814D8368
/* 814D8360 | 38 60 FF EC */	li r3, -0x14
/* 814D8364 | 48 00 00 18 */	b .L_814D837C
.L_814D8368:
/* 814D8368 | 38 80 00 01 */	li r4, 0x1
/* 814D836C | 4B FF D4 BD */	bl dCommon_setFatTypeToDisk
/* 814D8370 | 7F E3 FB 78 */	mr r3, r31
/* 814D8374 | 4B FE 07 91 */	bl VFipdm_disk_notify_media_insert
/* 814D8378 | 38 60 00 00 */	li r3, 0x0
.L_814D837C:
/* 814D837C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D8380 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D8384 | 7C 08 03 A6 */	mtlr r0
/* 814D8388 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D838C | 4E 80 00 20 */	blr
.endfn nanddrv_init

# .text:0x293C | 0x814D8390 | size: 0x6C
.fn nanddrv_mount, global
/* 814D8390 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D8394 | 7C 08 02 A6 */	mflr r0
/* 814D8398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D839C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D83A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D83A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D83A8 | 40 82 00 0C */	bne .L_814D83B4
/* 814D83AC | 38 60 FF EC */	li r3, -0x14
/* 814D83B0 | 48 00 00 38 */	b .L_814D83E8
.L_814D83B4:
/* 814D83B4 | 4B FF A8 A5 */	bl VFSysPDMDisk2DriveP
/* 814D83B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D83BC | 7C 64 1B 78 */	mr r4, r3
/* 814D83C0 | 40 82 00 0C */	bne .L_814D83CC
/* 814D83C4 | 38 60 FF EC */	li r3, -0x14
/* 814D83C8 | 48 00 00 20 */	b .L_814D83E8
.L_814D83CC:
/* 814D83CC | 7F E3 FB 78 */	mr r3, r31
/* 814D83D0 | 38 84 00 3C */	addi r4, r4, 0x3c
/* 814D83D4 | 4B FF F7 ED */	bl _MountPrfFile
/* 814D83D8 | 7C 60 00 34 */	cntlzw r0, r3
/* 814D83DC | 54 00 DF FE */	extrwi r0, r0, 1, 26
/* 814D83E0 | 7C 00 00 D0 */	neg r0, r0
/* 814D83E4 | 7C 63 00 78 */	andc r3, r3, r0
.L_814D83E8:
/* 814D83E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D83EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D83F0 | 7C 08 03 A6 */	mtlr r0
/* 814D83F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D83F8 | 4E 80 00 20 */	blr
.endfn nanddrv_mount

# .text:0x29A8 | 0x814D83FC | size: 0x18
.fn nanddrv_format, global
/* 814D83FC | 7C 83 00 D0 */	neg r4, r3
/* 814D8400 | 38 00 FF EC */	li r0, -0x14
/* 814D8404 | 7C 83 1B 78 */	or r3, r4, r3
/* 814D8408 | 7C 63 FE 70 */	srawi r3, r3, 31
/* 814D840C | 7C 03 18 78 */	andc r3, r0, r3
/* 814D8410 | 4E 80 00 20 */	blr
.endfn nanddrv_format

# .text:0x29C0 | 0x814D8414 | size: 0x44
.fn nanddrv_pread, global
/* 814D8414 | 38 00 00 00 */	li r0, 0x0
/* 814D8418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D841C | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814D8420 | 7C 68 1B 78 */	mr r8, r3
/* 814D8424 | 41 82 00 1C */	beq .L_814D8440
/* 814D8428 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D842C | 41 82 00 14 */	beq .L_814D8440
/* 814D8430 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D8434 | 41 82 00 0C */	beq .L_814D8440
/* 814D8438 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814D843C | 40 82 00 0C */	bne .L_814D8448
.L_814D8440:
/* 814D8440 | 38 60 FF EC */	li r3, -0x14
/* 814D8444 | 4E 80 00 20 */	blr
.L_814D8448:
/* 814D8448 | 7C C3 33 78 */	mr r3, r6
/* 814D844C | 38 C0 02 00 */	li r6, 0x200
/* 814D8450 | 48 00 02 40 */	b nanddrv_physical_read
/* 814D8454 | 4E 80 00 20 */	blr
.endfn nanddrv_pread

# .text:0x2A04 | 0x814D8458 | size: 0x44
.fn nanddrv_pwrite, global
/* 814D8458 | 38 00 00 00 */	li r0, 0x0
/* 814D845C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8460 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814D8464 | 7C 68 1B 78 */	mr r8, r3
/* 814D8468 | 41 82 00 1C */	beq .L_814D8484
/* 814D846C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D8470 | 41 82 00 14 */	beq .L_814D8484
/* 814D8474 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D8478 | 41 82 00 0C */	beq .L_814D8484
/* 814D847C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814D8480 | 40 82 00 0C */	bne .L_814D848C
.L_814D8484:
/* 814D8484 | 38 60 FF EC */	li r3, -0x14
/* 814D8488 | 4E 80 00 20 */	blr
.L_814D848C:
/* 814D848C | 7C C3 33 78 */	mr r3, r6
/* 814D8490 | 38 C0 02 00 */	li r6, 0x200
/* 814D8494 | 48 00 03 9C */	b nanddrv_physical_write
/* 814D8498 | 4E 80 00 20 */	blr
.endfn nanddrv_pwrite

# .text:0x2A48 | 0x814D849C | size: 0xFC
.fn nanddrv_unmount, global
/* 814D849C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D84A0 | 7C 08 02 A6 */	mflr r0
/* 814D84A4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D84A8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D84AC | 48 12 10 0D */	bl _savegpr_25
/* 814D84B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D84B4 | 7C 7E 1B 78 */	mr r30, r3
/* 814D84B8 | 40 82 00 0C */	bne .L_814D84C4
/* 814D84BC | 38 60 FF EC */	li r3, -0x14
/* 814D84C0 | 48 00 00 C0 */	b .L_814D8580
.L_814D84C4:
/* 814D84C4 | 4B FF A7 95 */	bl VFSysPDMDisk2DriveP
/* 814D84C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D84CC | 41 82 00 A0 */	beq .L_814D856C
/* 814D84D0 | 3C 80 10 62 */	lis r4, 0x1062
/* 814D84D4 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 814D84D8 | 83 4D AE 60 */	lwz r26, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D84DC | 3B 64 4D D3 */	addi r27, r4, 0x4dd3
/* 814D84E0 | 3B 20 00 00 */	li r25, 0x0
/* 814D84E4 | 3F 80 80 00 */	lis r28, 0x8000
/* 814D84E8 | 3B A0 00 00 */	li r29, 0x0
/* 814D84EC | 48 00 00 58 */	b .L_814D8544
.L_814D84F0:
/* 814D84F0 | 7F E3 FB 78 */	mr r3, r31
/* 814D84F4 | 48 08 CF F9 */	bl NANDClose
/* 814D84F8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D84FC | 7C 79 1B 78 */	mr r25, r3
/* 814D8500 | 41 82 00 10 */	beq .L_814D8510
/* 814D8504 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D8508 | 41 82 00 08 */	beq .L_814D8510
/* 814D850C | 48 00 00 44 */	b .L_814D8550
.L_814D8510:
/* 814D8510 | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 814D8514 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D8518 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D851C | 7C 7B 00 16 */	mulhwu r3, r27, r0
/* 814D8520 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D8524 | 7C 9D 31 D6 */	mullw r4, r29, r6
/* 814D8528 | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D852C | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D8530 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D8534 | 7C 63 22 14 */	add r3, r3, r4
/* 814D8538 | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D853C | 7C 63 02 14 */	add r3, r3, r0
/* 814D8540 | 48 05 D6 8D */	bl OSSleepTicks
.L_814D8544:
/* 814D8544 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814D8548 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 814D854C | 41 81 FF A4 */	bgt .L_814D84F0
.L_814D8550:
/* 814D8550 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814D8554 | 40 82 00 0C */	bne .L_814D8560
/* 814D8558 | 38 00 00 00 */	li r0, 0x0
/* 814D855C | 48 00 00 18 */	b .L_814D8574
.L_814D8560:
/* 814D8560 | 7F C3 F3 78 */	mr r3, r30
/* 814D8564 | 7F 24 CB 78 */	mr r4, r25
/* 814D8568 | 4B FF D2 3D */	bl dCommon_setLastDeviceErrorToDisk
.L_814D856C:
/* 814D856C | 3C 60 00 01 */	lis r3, 0x1
/* 814D8570 | 38 03 FF FF */	subi r0, r3, 0x1
.L_814D8574:
/* 814D8574 | 54 03 04 3F */	clrlwi. r3, r0, 16
/* 814D8578 | 40 82 00 08 */	bne .L_814D8580
/* 814D857C | 38 60 00 00 */	li r3, 0x0
.L_814D8580:
/* 814D8580 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D8584 | 48 12 0F 81 */	bl _restgpr_25
/* 814D8588 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D858C | 7C 08 03 A6 */	mtlr r0
/* 814D8590 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D8594 | 4E 80 00 20 */	blr
.endfn nanddrv_unmount

# .text:0x2B44 | 0x814D8598 | size: 0x38
.fn nanddrv_finalize, global
/* 814D8598 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D859C | 7C 08 02 A6 */	mflr r0
/* 814D85A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D85A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D85A8 | 40 82 00 0C */	bne .L_814D85B4
/* 814D85AC | 38 60 FF EC */	li r3, -0x14
/* 814D85B0 | 48 00 00 10 */	b .L_814D85C0
.L_814D85B4:
/* 814D85B4 | 38 80 00 01 */	li r4, 0x1
/* 814D85B8 | 4B FF D2 71 */	bl dCommon_setFatTypeToDisk
/* 814D85BC | 38 60 00 00 */	li r3, 0x0
.L_814D85C0:
/* 814D85C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D85C4 | 7C 08 03 A6 */	mtlr r0
/* 814D85C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D85CC | 4E 80 00 20 */	blr
.endfn nanddrv_finalize

# .text:0x2B7C | 0x814D85D0 | size: 0xA8
.fn nanddrv_get_disk_info, global
/* 814D85D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D85D4 | 7C 08 02 A6 */	mflr r0
/* 814D85D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D85DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D85E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D85E4 | 7C 9F 23 78 */	mr r31, r4
/* 814D85E8 | 41 82 00 0C */	beq .L_814D85F4
/* 814D85EC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D85F0 | 40 82 00 0C */	bne .L_814D85FC
.L_814D85F4:
/* 814D85F4 | 38 60 FF EC */	li r3, -0x14
/* 814D85F8 | 48 00 00 6C */	b .L_814D8664
.L_814D85FC:
/* 814D85FC | 4B FF D0 A9 */	bl dCommon_getFileSizeFromDisk
/* 814D8600 | 38 03 FF E1 */	subi r0, r3, 0x1f
/* 814D8604 | 3C 60 80 81 */	lis r3, 0x8081
/* 814D8608 | 54 04 BA 7E */	srwi r4, r0, 9
/* 814D860C | 3C C0 04 10 */	lis r6, 0x410
/* 814D8610 | 38 63 80 81 */	subi r3, r3, 0x7f7f
/* 814D8614 | 38 00 00 00 */	li r0, 0x0
/* 814D8618 | 7C E3 20 16 */	mulhwu r7, r3, r4
/* 814D861C | 39 06 41 05 */	addi r8, r6, 0x4105
/* 814D8620 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 814D8624 | 38 80 02 00 */	li r4, 0x200
/* 814D8628 | 38 60 00 FF */	li r3, 0xff
/* 814D862C | 38 A0 00 3F */	li r5, 0x3f
/* 814D8630 | 54 E6 C9 FE */	srwi r6, r7, 7
/* 814D8634 | 98 7F 00 06 */	stb r3, 0x6(r31)
/* 814D8638 | 7C E8 30 16 */	mulhwu r7, r8, r6
/* 814D863C | 38 60 00 00 */	li r3, 0x0
/* 814D8640 | B0 9F 00 08 */	sth r4, 0x8(r31)
/* 814D8644 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814D8648 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 814D864C | 7C 87 30 50 */	subf r4, r7, r6
/* 814D8650 | 54 84 F8 7E */	srwi r4, r4, 1
/* 814D8654 | 98 BF 00 07 */	stb r5, 0x7(r31)
/* 814D8658 | 7C 04 3A 14 */	add r0, r4, r7
/* 814D865C | 54 00 94 3E */	extrwi r0, r0, 16, 2
/* 814D8660 | B0 1F 00 04 */	sth r0, 0x4(r31)
.L_814D8664:
/* 814D8664 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D8668 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D866C | 7C 08 03 A6 */	mtlr r0
/* 814D8670 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D8674 | 4E 80 00 20 */	blr
.endfn nanddrv_get_disk_info

# .text:0x2C24 | 0x814D8678 | size: 0x18
.fn VFi_nanddrv_init_drv_tbl, global
/* 814D8678 | 3C A0 81 62 */	lis r5, l_nand_func_8161D178@ha
/* 814D867C | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814D8680 | 38 A5 D1 78 */	addi r5, r5, l_nand_func_8161D178@l
/* 814D8684 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 814D8688 | 38 60 00 00 */	li r3, 0x0
/* 814D868C | 4E 80 00 20 */	blr
.endfn VFi_nanddrv_init_drv_tbl

# .text:0x2C3C | 0x814D8690 | size: 0x1A0
.fn nanddrv_physical_read, global
/* 814D8690 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814D8694 | 7C 08 02 A6 */	mflr r0
/* 814D8698 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814D869C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814D86A0 | 48 12 0E 01 */	bl _savegpr_19
/* 814D86A4 | 7D 16 43 78 */	mr r22, r8
/* 814D86A8 | 7C 73 1B 78 */	mr r19, r3
/* 814D86AC | 7C 94 23 78 */	mr r20, r4
/* 814D86B0 | 7C B9 2B 78 */	mr r25, r5
/* 814D86B4 | 7C D8 33 78 */	mr r24, r6
/* 814D86B8 | 7C F5 3B 78 */	mr r21, r7
/* 814D86BC | 7E C3 B3 78 */	mr r3, r22
/* 814D86C0 | 4B FF CF E5 */	bl dCommon_getFileSizeFromDisk
/* 814D86C4 | 7C 7C 1B 78 */	mr r28, r3
/* 814D86C8 | 7E C3 B3 78 */	mr r3, r22
/* 814D86CC | 4B FF A5 8D */	bl VFSysPDMDisk2DriveP
/* 814D86D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D86D4 | 40 82 00 0C */	bne .L_814D86E0
/* 814D86D8 | 38 60 FF EC */	li r3, -0x14
/* 814D86DC | 48 00 01 3C */	b .L_814D8818
.L_814D86E0:
/* 814D86E0 | 82 E3 00 00 */	lwz r23, 0x0(r3)
/* 814D86E4 | 3D 20 81 4E */	lis r9, nanddrv_BuildUpBootSector@ha
/* 814D86E8 | 3D 40 81 4E */	lis r10, nanddrv_BuildUpFSInfoSector@ha
/* 814D86EC | 7E 63 9B 78 */	mr r3, r19
/* 814D86F0 | 7E 84 A3 78 */	mr r4, r20
/* 814D86F4 | 7F 25 CB 78 */	mr r5, r25
/* 814D86F8 | 7E A6 AB 78 */	mr r6, r21
/* 814D86FC | 7E C7 B3 78 */	mr r7, r22
/* 814D8700 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814D8704 | 39 29 82 A0 */	addi r9, r9, nanddrv_BuildUpBootSector@l
/* 814D8708 | 39 4A 82 68 */	addi r10, r10, nanddrv_BuildUpFSInfoSector@l
/* 814D870C | 4B FF CC 2D */	bl dCommon_ReadDummyBPB
/* 814D8710 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8714 | 40 82 00 0C */	bne .L_814D8720
/* 814D8718 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D871C | 48 00 00 FC */	b .L_814D8818
.L_814D8720:
/* 814D8720 | 7F 53 C1 D6 */	mullw r26, r19, r24
/* 814D8724 | 7E C3 B3 78 */	mr r3, r22
/* 814D8728 | 4B FF D1 59 */	bl dCommon_getResvSecNumFromDisk
/* 814D872C | 7C 65 1B 78 */	mr r5, r3
/* 814D8730 | 7F 23 CB 78 */	mr r3, r25
/* 814D8734 | 7F 04 C3 78 */	mr r4, r24
/* 814D8738 | 4B FF C8 F5 */	bl dCommon_GetPhysicalOffset
/* 814D873C | 3C 80 10 62 */	lis r4, 0x1062
/* 814D8740 | 83 6D AE 60 */	lwz r27, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D8744 | 7C 79 1B 78 */	mr r25, r3
/* 814D8748 | 3B 00 00 00 */	li r24, 0x0
/* 814D874C | 3B A4 4D D3 */	addi r29, r4, 0x4dd3
/* 814D8750 | 3F C0 80 00 */	lis r30, 0x8000
/* 814D8754 | 3B E0 00 00 */	li r31, 0x0
/* 814D8758 | 48 00 00 60 */	b .L_814D87B8
.L_814D875C:
/* 814D875C | 7E E3 BB 78 */	mr r3, r23
/* 814D8760 | 7F 24 CB 78 */	mr r4, r25
/* 814D8764 | 38 A0 00 00 */	li r5, 0x0
/* 814D8768 | 48 08 BA 59 */	bl NANDSeek
/* 814D876C | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D8770 | 7C 78 1B 78 */	mr r24, r3
/* 814D8774 | 41 82 00 10 */	beq .L_814D8784
/* 814D8778 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D877C | 41 82 00 08 */	beq .L_814D8784
/* 814D8780 | 48 00 00 44 */	b .L_814D87C4
.L_814D8784:
/* 814D8784 | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 814D8788 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D878C | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D8790 | 7C 7D 00 16 */	mulhwu r3, r29, r0
/* 814D8794 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D8798 | 7C 9F 31 D6 */	mullw r4, r31, r6
/* 814D879C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D87A0 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D87A4 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D87A8 | 7C 63 22 14 */	add r3, r3, r4
/* 814D87AC | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D87B0 | 7C 63 02 14 */	add r3, r3, r0
/* 814D87B4 | 48 05 D4 19 */	bl OSSleepTicks
.L_814D87B8:
/* 814D87B8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814D87BC | 3B 7B FF FF */	subi r27, r27, 0x1
/* 814D87C0 | 41 81 FF 9C */	bgt .L_814D875C
.L_814D87C4:
/* 814D87C4 | 7C 18 C8 40 */	cmplw r24, r25
/* 814D87C8 | 40 82 00 40 */	bne .L_814D8808
/* 814D87CC | 7C 19 D2 14 */	add r0, r25, r26
/* 814D87D0 | 7C 00 E0 40 */	cmplw r0, r28
/* 814D87D4 | 40 81 00 0C */	ble .L_814D87E0
/* 814D87D8 | 38 60 FF EA */	li r3, -0x16
/* 814D87DC | 48 00 00 3C */	b .L_814D8818
.L_814D87E0:
/* 814D87E0 | 7E E3 BB 78 */	mr r3, r23
/* 814D87E4 | 7E 84 A3 78 */	mr r4, r20
/* 814D87E8 | 7F 45 D3 78 */	mr r5, r26
/* 814D87EC | 4B FF DD 21 */	bl A32_NANDRead
/* 814D87F0 | 7C 03 D0 40 */	cmplw r3, r26
/* 814D87F4 | 7C 78 1B 78 */	mr r24, r3
/* 814D87F8 | 40 82 00 10 */	bne .L_814D8808
/* 814D87FC | 92 75 00 00 */	stw r19, 0x0(r21)
/* 814D8800 | 38 60 00 00 */	li r3, 0x0
/* 814D8804 | 48 00 00 14 */	b .L_814D8818
.L_814D8808:
/* 814D8808 | 7E C3 B3 78 */	mr r3, r22
/* 814D880C | 7F 04 C3 78 */	mr r4, r24
/* 814D8810 | 4B FF CF 95 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D8814 | 7F 03 C3 78 */	mr r3, r24
.L_814D8818:
/* 814D8818 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814D881C | 48 12 0C D1 */	bl _restgpr_19
/* 814D8820 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814D8824 | 7C 08 03 A6 */	mtlr r0
/* 814D8828 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814D882C | 4E 80 00 20 */	blr
.endfn nanddrv_physical_read

# .text:0x2DDC | 0x814D8830 | size: 0x194
.fn nanddrv_physical_write, global
/* 814D8830 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814D8834 | 7C 08 02 A6 */	mflr r0
/* 814D8838 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814D883C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814D8840 | 48 12 0C 61 */	bl _savegpr_19
/* 814D8844 | 7D 16 43 78 */	mr r22, r8
/* 814D8848 | 7C 73 1B 78 */	mr r19, r3
/* 814D884C | 7C 94 23 78 */	mr r20, r4
/* 814D8850 | 7C B9 2B 78 */	mr r25, r5
/* 814D8854 | 7C D8 33 78 */	mr r24, r6
/* 814D8858 | 7C F5 3B 78 */	mr r21, r7
/* 814D885C | 7E C3 B3 78 */	mr r3, r22
/* 814D8860 | 4B FF CE 45 */	bl dCommon_getFileSizeFromDisk
/* 814D8864 | 7C 7C 1B 78 */	mr r28, r3
/* 814D8868 | 7E C3 B3 78 */	mr r3, r22
/* 814D886C | 4B FF A3 ED */	bl VFSysPDMDisk2DriveP
/* 814D8870 | 3B A0 00 00 */	li r29, 0x0
/* 814D8874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8878 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 814D887C | 40 82 00 0C */	bne .L_814D8888
/* 814D8880 | 38 60 FF EC */	li r3, -0x14
/* 814D8884 | 48 00 01 28 */	b .L_814D89AC
.L_814D8888:
/* 814D8888 | 82 E3 00 00 */	lwz r23, 0x0(r3)
/* 814D888C | 7E 63 9B 78 */	mr r3, r19
/* 814D8890 | 7F 24 CB 78 */	mr r4, r25
/* 814D8894 | 7E A5 AB 78 */	mr r5, r21
/* 814D8898 | 7E C6 B3 78 */	mr r6, r22
/* 814D889C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814D88A0 | 4B FF CC 11 */	bl dCommon_WriteDummyBPB
/* 814D88A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D88A8 | 40 82 00 0C */	bne .L_814D88B4
/* 814D88AC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D88B0 | 48 00 00 FC */	b .L_814D89AC
.L_814D88B4:
/* 814D88B4 | 7F 53 C1 D6 */	mullw r26, r19, r24
/* 814D88B8 | 7E C3 B3 78 */	mr r3, r22
/* 814D88BC | 4B FF CF C5 */	bl dCommon_getResvSecNumFromDisk
/* 814D88C0 | 7C 65 1B 78 */	mr r5, r3
/* 814D88C4 | 7F 23 CB 78 */	mr r3, r25
/* 814D88C8 | 7F 04 C3 78 */	mr r4, r24
/* 814D88CC | 4B FF C7 61 */	bl dCommon_GetPhysicalOffset
/* 814D88D0 | 3C 80 10 62 */	lis r4, 0x1062
/* 814D88D4 | 83 6D AE 60 */	lwz r27, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D88D8 | 7C 79 1B 78 */	mr r25, r3
/* 814D88DC | 3B 00 00 00 */	li r24, 0x0
/* 814D88E0 | 3B C4 4D D3 */	addi r30, r4, 0x4dd3
/* 814D88E4 | 3F E0 80 00 */	lis r31, 0x8000
/* 814D88E8 | 48 00 00 60 */	b .L_814D8948
.L_814D88EC:
/* 814D88EC | 7E E3 BB 78 */	mr r3, r23
/* 814D88F0 | 7F 24 CB 78 */	mr r4, r25
/* 814D88F4 | 38 A0 00 00 */	li r5, 0x0
/* 814D88F8 | 48 08 B8 C9 */	bl NANDSeek
/* 814D88FC | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D8900 | 7C 78 1B 78 */	mr r24, r3
/* 814D8904 | 41 82 00 10 */	beq .L_814D8914
/* 814D8908 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814D890C | 41 82 00 08 */	beq .L_814D8914
/* 814D8910 | 48 00 00 44 */	b .L_814D8954
.L_814D8914:
/* 814D8914 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 814D8918 | 80 CD AE 64 */	lwz r6, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D891C | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D8920 | 7C 7E 00 16 */	mulhwu r3, r30, r0
/* 814D8924 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 814D8928 | 7C 9D 31 D6 */	mullw r4, r29, r6
/* 814D892C | 54 65 D1 BE */	srwi r5, r3, 6
/* 814D8930 | 7C 65 30 16 */	mulhwu r3, r5, r6
/* 814D8934 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814D8938 | 7C 63 22 14 */	add r3, r3, r4
/* 814D893C | 7C 85 31 D6 */	mullw r4, r5, r6
/* 814D8940 | 7C 63 02 14 */	add r3, r3, r0
/* 814D8944 | 48 05 D2 89 */	bl OSSleepTicks
.L_814D8948:
/* 814D8948 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814D894C | 3B 7B FF FF */	subi r27, r27, 0x1
/* 814D8950 | 41 81 FF 9C */	bgt .L_814D88EC
.L_814D8954:
/* 814D8954 | 7C 18 C8 40 */	cmplw r24, r25
/* 814D8958 | 40 82 00 44 */	bne .L_814D899C
/* 814D895C | 7C 19 D2 14 */	add r0, r25, r26
/* 814D8960 | 7C 00 E0 40 */	cmplw r0, r28
/* 814D8964 | 40 81 00 0C */	ble .L_814D8970
/* 814D8968 | 38 60 FF EA */	li r3, -0x16
/* 814D896C | 48 00 00 40 */	b .L_814D89AC
.L_814D8970:
/* 814D8970 | 7E E3 BB 78 */	mr r3, r23
/* 814D8974 | 7E 84 A3 78 */	mr r4, r20
/* 814D8978 | 7F 45 D3 78 */	mr r5, r26
/* 814D897C | 7E C6 B3 78 */	mr r6, r22
/* 814D8980 | 4B FF DF 3D */	bl A32_NANDWrite
/* 814D8984 | 7C 03 D0 40 */	cmplw r3, r26
/* 814D8988 | 7C 78 1B 78 */	mr r24, r3
/* 814D898C | 40 82 00 10 */	bne .L_814D899C
/* 814D8990 | 92 75 00 00 */	stw r19, 0x0(r21)
/* 814D8994 | 38 60 00 00 */	li r3, 0x0
/* 814D8998 | 48 00 00 14 */	b .L_814D89AC
.L_814D899C:
/* 814D899C | 7E C3 B3 78 */	mr r3, r22
/* 814D89A0 | 7F 04 C3 78 */	mr r4, r24
/* 814D89A4 | 4B FF CE 01 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D89A8 | 7F 03 C3 78 */	mr r3, r24
.L_814D89AC:
/* 814D89AC | 39 61 00 50 */	addi r11, r1, 0x50
/* 814D89B0 | 48 12 0B 3D */	bl _restgpr_19
/* 814D89B4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814D89B8 | 7C 08 03 A6 */	mtlr r0
/* 814D89BC | 38 21 00 50 */	addi r1, r1, 0x50
/* 814D89C0 | 4E 80 00 20 */	blr
.endfn nanddrv_physical_write

# 0x81698EA0..0x81698EA8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698EA0 | size: 0x4
.obj VF_nand_retry_max_81698EA0, global
	.skip 0x4
.endobj VF_nand_retry_max_81698EA0

# .sbss:0x4 | 0x81698EA4 | size: 0x4
.obj VF_nand_sleep_msec_81698EA4, global
	.skip 0x4
.endobj VF_nand_sleep_msec_81698EA4
