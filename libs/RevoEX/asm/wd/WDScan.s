.include "macros.inc"
.file "WDScan.c"

# 0x814D9BD8..0x814DA45C | size: 0x884
.text
.balign 4

# .text:0x0 | 0x814D9BD8 | size: 0x290
.fn WDCheckEnableChannel, global
/* 814D9BD8 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814D9BDC | 7C 08 02 A6 */	mflr r0
/* 814D9BE0 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814D9BE4 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 814D9BE8 | 48 11 F8 D9 */	bl _savegpr_27
/* 814D9BEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9BF0 | 7C 7B 1B 78 */	mr r27, r3
/* 814D9BF4 | 41 82 00 0C */	beq .L_814D9C00
/* 814D9BF8 | 38 00 00 00 */	li r0, 0x0
/* 814D9BFC | B0 03 00 00 */	sth r0, 0x0(r3)
.L_814D9C00:
/* 814D9C00 | 4B FB 91 2D */	bl NCDLockWirelessDriver
/* 814D9C04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9C08 | 7C 7E 1B 78 */	mr r30, r3
/* 814D9C0C | 40 81 00 B4 */	ble .L_814D9CC0
/* 814D9C10 | 38 60 00 03 */	li r3, 0x3
/* 814D9C14 | 4B FF FE 75 */	bl WD_Startup
/* 814D9C18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9C1C | 7C 7F 1B 78 */	mr r31, r3
/* 814D9C20 | 40 82 00 60 */	bne .L_814D9C80
/* 814D9C24 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D9C28 | 4B FF FD 8D */	bl WD_GetInfo
/* 814D9C2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9C30 | 7C 7D 1B 78 */	mr r29, r3
/* 814D9C34 | 40 82 00 14 */	bne .L_814D9C48
/* 814D9C38 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814D9C3C | 41 82 00 0C */	beq .L_814D9C48
/* 814D9C40 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814D9C44 | B0 1B 00 00 */	sth r0, 0x0(r27)
.L_814D9C48:
/* 814D9C48 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D9C4C | 3F 60 80 00 */	lis r27, 0x8000
/* 814D9C50 | 3B 83 4D D3 */	addi r28, r3, 0x4dd3
/* 814D9C54 | 48 00 00 20 */	b .L_814D9C74
.L_814D9C58:
/* 814D9C58 | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 814D9C5C | 38 60 00 00 */	li r3, 0x0
/* 814D9C60 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D9C64 | 7C 1C 00 16 */	mulhwu r0, r28, r0
/* 814D9C68 | 54 00 D1 BE */	srwi r0, r0, 6
/* 814D9C6C | 1C 80 00 0A */	mulli r4, r0, 0xa
/* 814D9C70 | 48 05 BF 5D */	bl OSSleepTicks
.L_814D9C74:
/* 814D9C74 | 4B FF FE F9 */	bl WD_Cleanup
/* 814D9C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9C7C | 40 82 FF DC */	bne .L_814D9C58
.L_814D9C80:
/* 814D9C80 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D9C84 | 3F 80 80 00 */	lis r28, 0x8000
/* 814D9C88 | 3B 63 4D D3 */	addi r27, r3, 0x4dd3
/* 814D9C8C | 48 00 00 20 */	b .L_814D9CAC
.L_814D9C90:
/* 814D9C90 | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 814D9C94 | 38 60 00 00 */	li r3, 0x0
/* 814D9C98 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D9C9C | 7C 1B 00 16 */	mulhwu r0, r27, r0
/* 814D9CA0 | 54 00 D1 BE */	srwi r0, r0, 6
/* 814D9CA4 | 1C 80 00 0A */	mulli r4, r0, 0xa
/* 814D9CA8 | 48 05 BF 25 */	bl OSSleepTicks
.L_814D9CAC:
/* 814D9CAC | 7F C3 F3 78 */	mr r3, r30
/* 814D9CB0 | 4B FB 91 81 */	bl NCDUnlockWirelessDriver
/* 814D9CB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9CB8 | 40 82 FF D8 */	bne .L_814D9C90
/* 814D9CBC | 48 00 00 44 */	b .L_814D9D00
.L_814D9CC0:
/* 814D9CC0 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 814D9CC4 | 41 82 00 24 */	beq .L_814D9CE8
/* 814D9CC8 | 40 80 00 10 */	bge .L_814D9CD8
/* 814D9CCC | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814D9CD0 | 41 82 00 20 */	beq .L_814D9CF0
/* 814D9CD4 | 48 00 00 24 */	b .L_814D9CF8
.L_814D9CD8:
/* 814D9CD8 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D9CDC | 40 80 00 1C */	bge .L_814D9CF8
/* 814D9CE0 | 38 60 FF FA */	li r3, -0x6
/* 814D9CE4 | 48 00 01 6C */	b .L_814D9E50
.L_814D9CE8:
/* 814D9CE8 | 38 60 FF FC */	li r3, -0x4
/* 814D9CEC | 48 00 01 64 */	b .L_814D9E50
.L_814D9CF0:
/* 814D9CF0 | 38 60 FF FB */	li r3, -0x5
/* 814D9CF4 | 48 00 01 5C */	b .L_814D9E50
.L_814D9CF8:
/* 814D9CF8 | 38 60 FF FF */	li r3, -0x1
/* 814D9CFC | 48 00 01 54 */	b .L_814D9E50
.L_814D9D00:
/* 814D9D00 | 2C 9F 00 00 */	cmpwi cr1, r31, 0x0
/* 814D9D04 | 40 86 00 AC */	bne cr1, .L_814D9DB0
/* 814D9D08 | 3C 60 80 01 */	lis r3, 0x8001
/* 814D9D0C | 38 03 80 06 */	subi r0, r3, 0x7ffa
/* 814D9D10 | 7C 1D 00 00 */	cmpw r29, r0
/* 814D9D14 | 41 82 00 84 */	beq .L_814D9D98
/* 814D9D18 | 40 80 00 38 */	bge .L_814D9D50
/* 814D9D1C | 38 03 80 03 */	subi r0, r3, 0x7ffd
/* 814D9D20 | 7C 1D 00 00 */	cmpw r29, r0
/* 814D9D24 | 41 82 00 5C */	beq .L_814D9D80
/* 814D9D28 | 40 80 00 18 */	bge .L_814D9D40
/* 814D9D2C | 38 03 80 01 */	subi r0, r3, 0x7fff
/* 814D9D30 | 7C 1D 00 00 */	cmpw r29, r0
/* 814D9D34 | 41 82 00 3C */	beq .L_814D9D70
/* 814D9D38 | 40 80 00 40 */	bge .L_814D9D78
/* 814D9D3C | 48 00 00 6C */	b .L_814D9DA8
.L_814D9D40:
/* 814D9D40 | 38 03 80 05 */	subi r0, r3, 0x7ffb
/* 814D9D44 | 7C 1D 00 00 */	cmpw r29, r0
/* 814D9D48 | 40 80 00 48 */	bge .L_814D9D90
/* 814D9D4C | 48 00 00 3C */	b .L_814D9D88
.L_814D9D50:
/* 814D9D50 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D9D54 | 41 82 00 14 */	beq .L_814D9D68
/* 814D9D58 | 40 80 00 50 */	bge .L_814D9DA8
/* 814D9D5C | 2C 1D FF FA */	cmpwi r29, -0x6
/* 814D9D60 | 41 82 00 40 */	beq .L_814D9DA0
/* 814D9D64 | 48 00 00 44 */	b .L_814D9DA8
.L_814D9D68:
/* 814D9D68 | 38 60 00 00 */	li r3, 0x0
/* 814D9D6C | 48 00 00 E4 */	b .L_814D9E50
.L_814D9D70:
/* 814D9D70 | 38 60 FF FD */	li r3, -0x3
/* 814D9D74 | 48 00 00 DC */	b .L_814D9E50
.L_814D9D78:
/* 814D9D78 | 38 60 FF FF */	li r3, -0x1
/* 814D9D7C | 48 00 00 D4 */	b .L_814D9E50
.L_814D9D80:
/* 814D9D80 | 38 60 FF FE */	li r3, -0x2
/* 814D9D84 | 48 00 00 CC */	b .L_814D9E50
.L_814D9D88:
/* 814D9D88 | 38 60 FF F9 */	li r3, -0x7
/* 814D9D8C | 48 00 00 C4 */	b .L_814D9E50
.L_814D9D90:
/* 814D9D90 | 38 60 FF FF */	li r3, -0x1
/* 814D9D94 | 48 00 00 BC */	b .L_814D9E50
.L_814D9D98:
/* 814D9D98 | 38 60 FF FA */	li r3, -0x6
/* 814D9D9C | 48 00 00 B4 */	b .L_814D9E50
.L_814D9DA0:
/* 814D9DA0 | 38 60 FF FB */	li r3, -0x5
/* 814D9DA4 | 48 00 00 AC */	b .L_814D9E50
.L_814D9DA8:
/* 814D9DA8 | 38 60 FF FF */	li r3, -0x1
/* 814D9DAC | 48 00 00 A4 */	b .L_814D9E50
.L_814D9DB0:
/* 814D9DB0 | 3C 60 80 01 */	lis r3, 0x8001
/* 814D9DB4 | 38 03 80 06 */	subi r0, r3, 0x7ffa
/* 814D9DB8 | 7C 1F 00 00 */	cmpw r31, r0
/* 814D9DBC | 41 82 00 80 */	beq .L_814D9E3C
/* 814D9DC0 | 40 80 00 38 */	bge .L_814D9DF8
/* 814D9DC4 | 38 03 80 03 */	subi r0, r3, 0x7ffd
/* 814D9DC8 | 7C 1F 00 00 */	cmpw r31, r0
/* 814D9DCC | 41 82 00 58 */	beq .L_814D9E24
/* 814D9DD0 | 40 80 00 18 */	bge .L_814D9DE8
/* 814D9DD4 | 38 03 80 01 */	subi r0, r3, 0x7fff
/* 814D9DD8 | 7C 1F 00 00 */	cmpw r31, r0
/* 814D9DDC | 41 82 00 38 */	beq .L_814D9E14
/* 814D9DE0 | 40 80 00 3C */	bge .L_814D9E1C
/* 814D9DE4 | 48 00 00 68 */	b .L_814D9E4C
.L_814D9DE8:
/* 814D9DE8 | 38 03 80 05 */	subi r0, r3, 0x7ffb
/* 814D9DEC | 7C 1F 00 00 */	cmpw r31, r0
/* 814D9DF0 | 40 80 00 44 */	bge .L_814D9E34
/* 814D9DF4 | 48 00 00 38 */	b .L_814D9E2C
.L_814D9DF8:
/* 814D9DF8 | 41 86 00 14 */	beq cr1, .L_814D9E0C
/* 814D9DFC | 40 84 00 50 */	bge cr1, .L_814D9E4C
/* 814D9E00 | 2C 1F FF FA */	cmpwi r31, -0x6
/* 814D9E04 | 41 82 00 40 */	beq .L_814D9E44
/* 814D9E08 | 48 00 00 44 */	b .L_814D9E4C
.L_814D9E0C:
/* 814D9E0C | 38 60 00 00 */	li r3, 0x0
/* 814D9E10 | 48 00 00 40 */	b .L_814D9E50
.L_814D9E14:
/* 814D9E14 | 38 60 FF FD */	li r3, -0x3
/* 814D9E18 | 48 00 00 38 */	b .L_814D9E50
.L_814D9E1C:
/* 814D9E1C | 38 60 FF FF */	li r3, -0x1
/* 814D9E20 | 48 00 00 30 */	b .L_814D9E50
.L_814D9E24:
/* 814D9E24 | 38 60 FF FE */	li r3, -0x2
/* 814D9E28 | 48 00 00 28 */	b .L_814D9E50
.L_814D9E2C:
/* 814D9E2C | 38 60 FF F9 */	li r3, -0x7
/* 814D9E30 | 48 00 00 20 */	b .L_814D9E50
.L_814D9E34:
/* 814D9E34 | 38 60 FF FF */	li r3, -0x1
/* 814D9E38 | 48 00 00 18 */	b .L_814D9E50
.L_814D9E3C:
/* 814D9E3C | 38 60 FF FA */	li r3, -0x6
/* 814D9E40 | 48 00 00 10 */	b .L_814D9E50
.L_814D9E44:
/* 814D9E44 | 38 60 FF FB */	li r3, -0x5
/* 814D9E48 | 48 00 00 08 */	b .L_814D9E50
.L_814D9E4C:
/* 814D9E4C | 38 60 FF FF */	li r3, -0x1
.L_814D9E50:
/* 814D9E50 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 814D9E54 | 48 11 F6 B9 */	bl _restgpr_27
/* 814D9E58 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814D9E5C | 7C 08 03 A6 */	mtlr r0
/* 814D9E60 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814D9E64 | 4E 80 00 20 */	blr
.endfn WDCheckEnableChannel

# .text:0x290 | 0x814D9E68 | size: 0x288
.fn WDScanOnce, global
/* 814D9E68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D9E6C | 7C 08 02 A6 */	mflr r0
/* 814D9E70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D9E74 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D9E78 | 48 11 F6 49 */	bl _savegpr_27
/* 814D9E7C | 7C 7E 1B 78 */	mr r30, r3
/* 814D9E80 | 7C 9D 23 78 */	mr r29, r4
/* 814D9E84 | 7C BC 2B 78 */	mr r28, r5
/* 814D9E88 | 4B FB 8E A5 */	bl NCDLockWirelessDriver
/* 814D9E8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9E90 | 7C 7B 1B 78 */	mr r27, r3
/* 814D9E94 | 40 81 00 B4 */	ble .L_814D9F48
/* 814D9E98 | 38 60 00 03 */	li r3, 0x3
/* 814D9E9C | 4B FF FB ED */	bl WD_Startup
/* 814D9EA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9EA4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D9EA8 | 40 82 00 60 */	bne .L_814D9F08
/* 814D9EAC | 7F C3 F3 78 */	mr r3, r30
/* 814D9EB0 | 7F A5 EB 78 */	mr r5, r29
/* 814D9EB4 | 38 80 00 00 */	li r4, 0x0
/* 814D9EB8 | 4B E5 64 7D */	bl memset
/* 814D9EBC | 7F 83 E3 78 */	mr r3, r28
/* 814D9EC0 | 7F C4 F3 78 */	mr r4, r30
/* 814D9EC4 | 7F A5 EB 78 */	mr r5, r29
/* 814D9EC8 | 4B FF FA 09 */	bl WD_Scan
/* 814D9ECC | 3C 80 10 62 */	lis r4, 0x1062
/* 814D9ED0 | 7C 7E 1B 78 */	mr r30, r3
/* 814D9ED4 | 3B A4 4D D3 */	addi r29, r4, 0x4dd3
/* 814D9ED8 | 3F 80 80 00 */	lis r28, 0x8000
/* 814D9EDC | 48 00 00 20 */	b .L_814D9EFC
.L_814D9EE0:
/* 814D9EE0 | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 814D9EE4 | 38 60 00 00 */	li r3, 0x0
/* 814D9EE8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D9EEC | 7C 1D 00 16 */	mulhwu r0, r29, r0
/* 814D9EF0 | 54 00 D1 BE */	srwi r0, r0, 6
/* 814D9EF4 | 1C 80 00 0A */	mulli r4, r0, 0xa
/* 814D9EF8 | 48 05 BC D5 */	bl OSSleepTicks
.L_814D9EFC:
/* 814D9EFC | 4B FF FC 71 */	bl WD_Cleanup
/* 814D9F00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9F04 | 40 82 FF DC */	bne .L_814D9EE0
.L_814D9F08:
/* 814D9F08 | 3C 60 10 62 */	lis r3, 0x1062
/* 814D9F0C | 3F A0 80 00 */	lis r29, 0x8000
/* 814D9F10 | 3B 83 4D D3 */	addi r28, r3, 0x4dd3
/* 814D9F14 | 48 00 00 20 */	b .L_814D9F34
.L_814D9F18:
/* 814D9F18 | 80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 814D9F1C | 38 60 00 00 */	li r3, 0x0
/* 814D9F20 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814D9F24 | 7C 1C 00 16 */	mulhwu r0, r28, r0
/* 814D9F28 | 54 00 D1 BE */	srwi r0, r0, 6
/* 814D9F2C | 1C 80 00 0A */	mulli r4, r0, 0xa
/* 814D9F30 | 48 05 BC 9D */	bl OSSleepTicks
.L_814D9F34:
/* 814D9F34 | 7F 63 DB 78 */	mr r3, r27
/* 814D9F38 | 4B FB 8E F9 */	bl NCDUnlockWirelessDriver
/* 814D9F3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9F40 | 40 82 FF D8 */	bne .L_814D9F18
/* 814D9F44 | 48 00 00 44 */	b .L_814D9F88
.L_814D9F48:
/* 814D9F48 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 814D9F4C | 41 82 00 24 */	beq .L_814D9F70
/* 814D9F50 | 40 80 00 10 */	bge .L_814D9F60
/* 814D9F54 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814D9F58 | 41 82 00 20 */	beq .L_814D9F78
/* 814D9F5C | 48 00 00 24 */	b .L_814D9F80
.L_814D9F60:
/* 814D9F60 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 814D9F64 | 40 80 00 1C */	bge .L_814D9F80
/* 814D9F68 | 38 60 FF FA */	li r3, -0x6
/* 814D9F6C | 48 00 01 6C */	b .L_814DA0D8
.L_814D9F70:
/* 814D9F70 | 38 60 FF FC */	li r3, -0x4
/* 814D9F74 | 48 00 01 64 */	b .L_814DA0D8
.L_814D9F78:
/* 814D9F78 | 38 60 FF FB */	li r3, -0x5
/* 814D9F7C | 48 00 01 5C */	b .L_814DA0D8
.L_814D9F80:
/* 814D9F80 | 38 60 FF FF */	li r3, -0x1
/* 814D9F84 | 48 00 01 54 */	b .L_814DA0D8
.L_814D9F88:
/* 814D9F88 | 2C 9F 00 00 */	cmpwi cr1, r31, 0x0
/* 814D9F8C | 40 86 00 AC */	bne cr1, .L_814DA038
/* 814D9F90 | 3C 60 80 01 */	lis r3, 0x8001
/* 814D9F94 | 38 03 80 06 */	subi r0, r3, 0x7ffa
/* 814D9F98 | 7C 1E 00 00 */	cmpw r30, r0
/* 814D9F9C | 41 82 00 84 */	beq .L_814DA020
/* 814D9FA0 | 40 80 00 38 */	bge .L_814D9FD8
/* 814D9FA4 | 38 03 80 03 */	subi r0, r3, 0x7ffd
/* 814D9FA8 | 7C 1E 00 00 */	cmpw r30, r0
/* 814D9FAC | 41 82 00 5C */	beq .L_814DA008
/* 814D9FB0 | 40 80 00 18 */	bge .L_814D9FC8
/* 814D9FB4 | 38 03 80 01 */	subi r0, r3, 0x7fff
/* 814D9FB8 | 7C 1E 00 00 */	cmpw r30, r0
/* 814D9FBC | 41 82 00 3C */	beq .L_814D9FF8
/* 814D9FC0 | 40 80 00 40 */	bge .L_814DA000
/* 814D9FC4 | 48 00 00 6C */	b .L_814DA030
.L_814D9FC8:
/* 814D9FC8 | 38 03 80 05 */	subi r0, r3, 0x7ffb
/* 814D9FCC | 7C 1E 00 00 */	cmpw r30, r0
/* 814D9FD0 | 40 80 00 48 */	bge .L_814DA018
/* 814D9FD4 | 48 00 00 3C */	b .L_814DA010
.L_814D9FD8:
/* 814D9FD8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D9FDC | 41 82 00 14 */	beq .L_814D9FF0
/* 814D9FE0 | 40 80 00 50 */	bge .L_814DA030
/* 814D9FE4 | 2C 1E FF FA */	cmpwi r30, -0x6
/* 814D9FE8 | 41 82 00 40 */	beq .L_814DA028
/* 814D9FEC | 48 00 00 44 */	b .L_814DA030
.L_814D9FF0:
/* 814D9FF0 | 38 60 00 00 */	li r3, 0x0
/* 814D9FF4 | 48 00 00 E4 */	b .L_814DA0D8
.L_814D9FF8:
/* 814D9FF8 | 38 60 FF FD */	li r3, -0x3
/* 814D9FFC | 48 00 00 DC */	b .L_814DA0D8
.L_814DA000:
/* 814DA000 | 38 60 FF FF */	li r3, -0x1
/* 814DA004 | 48 00 00 D4 */	b .L_814DA0D8
.L_814DA008:
/* 814DA008 | 38 60 FF FE */	li r3, -0x2
/* 814DA00C | 48 00 00 CC */	b .L_814DA0D8
.L_814DA010:
/* 814DA010 | 38 60 FF F9 */	li r3, -0x7
/* 814DA014 | 48 00 00 C4 */	b .L_814DA0D8
.L_814DA018:
/* 814DA018 | 38 60 FF FF */	li r3, -0x1
/* 814DA01C | 48 00 00 BC */	b .L_814DA0D8
.L_814DA020:
/* 814DA020 | 38 60 FF FA */	li r3, -0x6
/* 814DA024 | 48 00 00 B4 */	b .L_814DA0D8
.L_814DA028:
/* 814DA028 | 38 60 FF FB */	li r3, -0x5
/* 814DA02C | 48 00 00 AC */	b .L_814DA0D8
.L_814DA030:
/* 814DA030 | 38 60 FF FF */	li r3, -0x1
/* 814DA034 | 48 00 00 A4 */	b .L_814DA0D8
.L_814DA038:
/* 814DA038 | 3C 60 80 01 */	lis r3, 0x8001
/* 814DA03C | 38 03 80 06 */	subi r0, r3, 0x7ffa
/* 814DA040 | 7C 1F 00 00 */	cmpw r31, r0
/* 814DA044 | 41 82 00 80 */	beq .L_814DA0C4
/* 814DA048 | 40 80 00 38 */	bge .L_814DA080
/* 814DA04C | 38 03 80 03 */	subi r0, r3, 0x7ffd
/* 814DA050 | 7C 1F 00 00 */	cmpw r31, r0
/* 814DA054 | 41 82 00 58 */	beq .L_814DA0AC
/* 814DA058 | 40 80 00 18 */	bge .L_814DA070
/* 814DA05C | 38 03 80 01 */	subi r0, r3, 0x7fff
/* 814DA060 | 7C 1F 00 00 */	cmpw r31, r0
/* 814DA064 | 41 82 00 38 */	beq .L_814DA09C
/* 814DA068 | 40 80 00 3C */	bge .L_814DA0A4
/* 814DA06C | 48 00 00 68 */	b .L_814DA0D4
.L_814DA070:
/* 814DA070 | 38 03 80 05 */	subi r0, r3, 0x7ffb
/* 814DA074 | 7C 1F 00 00 */	cmpw r31, r0
/* 814DA078 | 40 80 00 44 */	bge .L_814DA0BC
/* 814DA07C | 48 00 00 38 */	b .L_814DA0B4
.L_814DA080:
/* 814DA080 | 41 86 00 14 */	beq cr1, .L_814DA094
/* 814DA084 | 40 84 00 50 */	bge cr1, .L_814DA0D4
/* 814DA088 | 2C 1F FF FA */	cmpwi r31, -0x6
/* 814DA08C | 41 82 00 40 */	beq .L_814DA0CC
/* 814DA090 | 48 00 00 44 */	b .L_814DA0D4
.L_814DA094:
/* 814DA094 | 38 60 00 00 */	li r3, 0x0
/* 814DA098 | 48 00 00 40 */	b .L_814DA0D8
.L_814DA09C:
/* 814DA09C | 38 60 FF FD */	li r3, -0x3
/* 814DA0A0 | 48 00 00 38 */	b .L_814DA0D8
.L_814DA0A4:
/* 814DA0A4 | 38 60 FF FF */	li r3, -0x1
/* 814DA0A8 | 48 00 00 30 */	b .L_814DA0D8
.L_814DA0AC:
/* 814DA0AC | 38 60 FF FE */	li r3, -0x2
/* 814DA0B0 | 48 00 00 28 */	b .L_814DA0D8
.L_814DA0B4:
/* 814DA0B4 | 38 60 FF F9 */	li r3, -0x7
/* 814DA0B8 | 48 00 00 20 */	b .L_814DA0D8
.L_814DA0BC:
/* 814DA0BC | 38 60 FF FF */	li r3, -0x1
/* 814DA0C0 | 48 00 00 18 */	b .L_814DA0D8
.L_814DA0C4:
/* 814DA0C4 | 38 60 FF FA */	li r3, -0x6
/* 814DA0C8 | 48 00 00 10 */	b .L_814DA0D8
.L_814DA0CC:
/* 814DA0CC | 38 60 FF FB */	li r3, -0x5
/* 814DA0D0 | 48 00 00 08 */	b .L_814DA0D8
.L_814DA0D4:
/* 814DA0D4 | 38 60 FF FF */	li r3, -0x1
.L_814DA0D8:
/* 814DA0D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814DA0DC | 48 11 F4 31 */	bl _restgpr_27
/* 814DA0E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814DA0E4 | 7C 08 03 A6 */	mtlr r0
/* 814DA0E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814DA0EC | 4E 80 00 20 */	blr
.endfn WDScanOnce

# .text:0x518 | 0x814DA0F0 | size: 0x1CC
.fn WDGetPrivacyMode, global
/* 814DA0F0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814DA0F4 | 7C 08 02 A6 */	mflr r0
/* 814DA0F8 | 38 C0 00 30 */	li r6, 0x30
/* 814DA0FC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814DA100 | 38 00 00 00 */	li r0, 0x0
/* 814DA104 | 38 81 00 14 */	addi r4, r1, 0x14
/* 814DA108 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814DA10C | 7C 7F 1B 78 */	mr r31, r3
/* 814DA110 | 7F E5 FB 78 */	mr r5, r31
/* 814DA114 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814DA118 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DA11C | 48 00 01 A1 */	bl WDFindInformationElement
/* 814DA120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA124 | 41 82 00 94 */	beq .L_814DA1B8
/* 814DA128 | 88 82 8C 60 */	lbz r4, lbl_81695060@sda21(r0)
/* 814DA12C | 38 61 00 20 */	addi r3, r1, 0x20
/* 814DA130 | 88 C2 8C 61 */	lbz r6, lbl_81695061@sda21(r0)
/* 814DA134 | 38 A0 00 08 */	li r5, 0x8
/* 814DA138 | 88 02 8C 62 */	lbz r0, lbl_81695062@sda21(r0)
/* 814DA13C | 98 81 00 10 */	stb r4, 0x10(r1)
/* 814DA140 | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814DA144 | 98 C1 00 11 */	stb r6, 0x11(r1)
/* 814DA148 | 98 01 00 12 */	stb r0, 0x12(r1)
/* 814DA14C | 4B E5 60 E5 */	bl memcpy
/* 814DA150 | 38 61 00 22 */	addi r3, r1, 0x22
/* 814DA154 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814DA158 | 38 A0 00 03 */	li r5, 0x3
/* 814DA15C | 48 12 40 79 */	bl memcmp
/* 814DA160 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA164 | 40 82 00 54 */	bne .L_814DA1B8
/* 814DA168 | 88 01 00 25 */	lbz r0, 0x25(r1)
/* 814DA16C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814DA170 | 41 82 00 48 */	beq .L_814DA1B8
/* 814DA174 | 40 80 00 14 */	bge .L_814DA188
/* 814DA178 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814DA17C | 41 82 00 1C */	beq .L_814DA198
/* 814DA180 | 40 80 00 20 */	bge .L_814DA1A0
/* 814DA184 | 48 00 00 34 */	b .L_814DA1B8
.L_814DA188:
/* 814DA188 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814DA18C | 41 82 00 24 */	beq .L_814DA1B0
/* 814DA190 | 40 80 00 28 */	bge .L_814DA1B8
/* 814DA194 | 48 00 00 14 */	b .L_814DA1A8
.L_814DA198:
/* 814DA198 | 38 60 00 01 */	li r3, 0x1
/* 814DA19C | 48 00 01 0C */	b .L_814DA2A8
.L_814DA1A0:
/* 814DA1A0 | 38 60 00 07 */	li r3, 0x7
/* 814DA1A4 | 48 00 01 04 */	b .L_814DA2A8
.L_814DA1A8:
/* 814DA1A8 | 38 60 00 05 */	li r3, 0x5
/* 814DA1AC | 48 00 00 FC */	b .L_814DA2A8
.L_814DA1B0:
/* 814DA1B0 | 38 60 00 02 */	li r3, 0x2
/* 814DA1B4 | 48 00 00 F4 */	b .L_814DA2A8
.L_814DA1B8:
/* 814DA1B8 | 88 CD 9D 30 */	lbz r6, lbl_81697D70@sda21(r0)
/* 814DA1BC | 7F E5 FB 78 */	mr r5, r31
/* 814DA1C0 | 89 2D 9D 31 */	lbz r9, lbl_81697D71@sda21(r0)
/* 814DA1C4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814DA1C8 | 88 0D 9D 32 */	lbz r0, lbl_81697D72@sda21(r0)
/* 814DA1CC | 38 81 00 14 */	addi r4, r1, 0x14
/* 814DA1D0 | 98 C1 00 08 */	stb r6, 0x8(r1)
/* 814DA1D4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814DA1D8 | 38 C0 00 DD */	li r6, 0xdd
/* 814DA1DC | 39 00 00 01 */	li r8, 0x1
/* 814DA1E0 | 99 21 00 09 */	stb r9, 0x9(r1)
/* 814DA1E4 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 814DA1E8 | 48 00 01 71 */	bl WDiFindVendorSpecificIE
/* 814DA1EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA1F0 | 41 82 00 94 */	beq .L_814DA284
/* 814DA1F4 | 88 82 8C 64 */	lbz r4, lbl_81695064@sda21(r0)
/* 814DA1F8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814DA1FC | 88 C2 8C 65 */	lbz r6, lbl_81695065@sda21(r0)
/* 814DA200 | 38 A0 00 06 */	li r5, 0x6
/* 814DA204 | 88 02 8C 66 */	lbz r0, lbl_81695066@sda21(r0)
/* 814DA208 | 98 81 00 0C */	stb r4, 0xc(r1)
/* 814DA20C | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814DA210 | 98 C1 00 0D */	stb r6, 0xd(r1)
/* 814DA214 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 814DA218 | 4B E5 60 19 */	bl memcpy
/* 814DA21C | 38 61 00 22 */	addi r3, r1, 0x22
/* 814DA220 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814DA224 | 38 A0 00 03 */	li r5, 0x3
/* 814DA228 | 48 12 3F AD */	bl memcmp
/* 814DA22C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA230 | 40 82 00 54 */	bne .L_814DA284
/* 814DA234 | 88 01 00 25 */	lbz r0, 0x25(r1)
/* 814DA238 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814DA23C | 41 82 00 48 */	beq .L_814DA284
/* 814DA240 | 40 80 00 14 */	bge .L_814DA254
/* 814DA244 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814DA248 | 41 82 00 1C */	beq .L_814DA264
/* 814DA24C | 40 80 00 20 */	bge .L_814DA26C
/* 814DA250 | 48 00 00 34 */	b .L_814DA284
.L_814DA254:
/* 814DA254 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814DA258 | 41 82 00 24 */	beq .L_814DA27C
/* 814DA25C | 40 80 00 28 */	bge .L_814DA284
/* 814DA260 | 48 00 00 14 */	b .L_814DA274
.L_814DA264:
/* 814DA264 | 38 60 00 01 */	li r3, 0x1
/* 814DA268 | 48 00 00 40 */	b .L_814DA2A8
.L_814DA26C:
/* 814DA26C | 38 60 00 04 */	li r3, 0x4
/* 814DA270 | 48 00 00 38 */	b .L_814DA2A8
.L_814DA274:
/* 814DA274 | 38 60 00 06 */	li r3, 0x6
/* 814DA278 | 48 00 00 30 */	b .L_814DA2A8
.L_814DA27C:
/* 814DA27C | 38 60 00 02 */	li r3, 0x2
/* 814DA280 | 48 00 00 28 */	b .L_814DA2A8
.L_814DA284:
/* 814DA284 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814DA288 | 41 82 00 1C */	beq .L_814DA2A4
/* 814DA28C | A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 814DA290 | 54 00 06 F6 */	rlwinm r0, r0, 0, 27, 27
/* 814DA294 | 2C 00 00 10 */	cmpwi r0, 0x10
/* 814DA298 | 40 82 00 0C */	bne .L_814DA2A4
/* 814DA29C | 38 60 00 08 */	li r3, 0x8
/* 814DA2A0 | 48 00 00 08 */	b .L_814DA2A8
.L_814DA2A4:
/* 814DA2A4 | 38 60 00 00 */	li r3, 0x0
.L_814DA2A8:
/* 814DA2A8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814DA2AC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814DA2B0 | 7C 08 03 A6 */	mtlr r0
/* 814DA2B4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814DA2B8 | 4E 80 00 20 */	blr
.endfn WDGetPrivacyMode

# .text:0x6E4 | 0x814DA2BC | size: 0x9C
.fn WDFindInformationElement, global
/* 814DA2BC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DA2C0 | 39 00 00 00 */	li r8, 0x0
/* 814DA2C4 | 41 82 00 64 */	beq .L_814DA328
/* 814DA2C8 | A0 E5 00 3C */	lhz r7, 0x3c(r5)
/* 814DA2CC | 39 25 00 3E */	addi r9, r5, 0x3e
/* 814DA2D0 | 38 A0 00 00 */	li r5, 0x0
/* 814DA2D4 | 48 00 00 20 */	b .L_814DA2F4
.L_814DA2D8:
/* 814DA2D8 | 7C 09 28 AE */	lbzx r0, r9, r5
/* 814DA2DC | 7D 49 2A 14 */	add r10, r9, r5
/* 814DA2E0 | 7C 00 30 00 */	cmpw r0, r6
/* 814DA2E4 | 41 82 00 18 */	beq .L_814DA2FC
/* 814DA2E8 | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 814DA2EC | 7C A0 2A 14 */	add r5, r0, r5
/* 814DA2F0 | 38 A5 00 02 */	addi r5, r5, 0x2
.L_814DA2F4:
/* 814DA2F4 | 7C 05 38 00 */	cmpw r5, r7
/* 814DA2F8 | 41 80 FF E0 */	blt .L_814DA2D8
.L_814DA2FC:
/* 814DA2FC | 7C 05 38 00 */	cmpw r5, r7
/* 814DA300 | 40 80 00 28 */	bge .L_814DA328
/* 814DA304 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA308 | 41 82 00 0C */	beq .L_814DA314
/* 814DA30C | 38 0A 00 02 */	addi r0, r10, 0x2
/* 814DA310 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814DA314:
/* 814DA314 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814DA318 | 41 82 00 0C */	beq .L_814DA324
/* 814DA31C | 88 0A 00 01 */	lbz r0, 0x1(r10)
/* 814DA320 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814DA324:
/* 814DA324 | 39 00 00 01 */	li r8, 0x1
.L_814DA328:
/* 814DA328 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814DA32C | 40 82 00 24 */	bne .L_814DA350
/* 814DA330 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA334 | 41 82 00 0C */	beq .L_814DA340
/* 814DA338 | 38 00 00 00 */	li r0, 0x0
/* 814DA33C | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814DA340:
/* 814DA340 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814DA344 | 41 82 00 0C */	beq .L_814DA350
/* 814DA348 | 38 00 00 00 */	li r0, 0x0
/* 814DA34C | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814DA350:
/* 814DA350 | 7D 03 43 78 */	mr r3, r8
/* 814DA354 | 4E 80 00 20 */	blr
.endfn WDFindInformationElement

# .text:0x780 | 0x814DA358 | size: 0x104
.fn WDiFindVendorSpecificIE, global
/* 814DA358 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814DA35C | 7C 08 02 A6 */	mflr r0
/* 814DA360 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814DA364 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814DA368 | 48 11 F1 41 */	bl _savegpr_21
/* 814DA36C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814DA370 | 7C 7E 1B 78 */	mr r30, r3
/* 814DA374 | 7C 9F 23 78 */	mr r31, r4
/* 814DA378 | 7C D5 33 78 */	mr r21, r6
/* 814DA37C | 7C F6 3B 78 */	mr r22, r7
/* 814DA380 | 7D 17 43 78 */	mr r23, r8
/* 814DA384 | 3B 80 00 00 */	li r28, 0x0
/* 814DA388 | 41 82 00 90 */	beq .L_814DA418
/* 814DA38C | 3B 45 00 3E */	addi r26, r5, 0x3e
/* 814DA390 | A3 A5 00 3C */	lhz r29, 0x3c(r5)
/* 814DA394 | 7F 59 D3 78 */	mr r25, r26
/* 814DA398 | 3B 60 00 00 */	li r27, 0x0
/* 814DA39C | 48 00 00 44 */	b .L_814DA3E0
.L_814DA3A0:
/* 814DA3A0 | 7C 1A D8 AE */	lbzx r0, r26, r27
/* 814DA3A4 | 7F 3A DA 14 */	add r25, r26, r27
/* 814DA3A8 | 7C 00 A8 40 */	cmplw r0, r21
/* 814DA3AC | 40 82 00 28 */	bne .L_814DA3D4
/* 814DA3B0 | 8B 19 00 05 */	lbz r24, 0x5(r25)
/* 814DA3B4 | 7E C4 B3 78 */	mr r4, r22
/* 814DA3B8 | 38 79 00 02 */	addi r3, r25, 0x2
/* 814DA3BC | 38 A0 00 03 */	li r5, 0x3
/* 814DA3C0 | 48 12 3E 15 */	bl memcmp
/* 814DA3C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DA3C8 | 40 82 00 0C */	bne .L_814DA3D4
/* 814DA3CC | 7C 18 B8 40 */	cmplw r24, r23
/* 814DA3D0 | 41 82 00 18 */	beq .L_814DA3E8
.L_814DA3D4:
/* 814DA3D4 | 88 19 00 01 */	lbz r0, 0x1(r25)
/* 814DA3D8 | 7C 60 DA 14 */	add r3, r0, r27
/* 814DA3DC | 3B 63 00 02 */	addi r27, r3, 0x2
.L_814DA3E0:
/* 814DA3E0 | 7C 1B E8 00 */	cmpw r27, r29
/* 814DA3E4 | 41 80 FF BC */	blt .L_814DA3A0
.L_814DA3E8:
/* 814DA3E8 | 7C 1B E8 00 */	cmpw r27, r29
/* 814DA3EC | 40 80 00 2C */	bge .L_814DA418
/* 814DA3F0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814DA3F4 | 41 82 00 0C */	beq .L_814DA400
/* 814DA3F8 | 38 19 00 06 */	addi r0, r25, 0x6
/* 814DA3FC | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814DA400:
/* 814DA400 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814DA404 | 41 82 00 10 */	beq .L_814DA414
/* 814DA408 | 88 79 00 01 */	lbz r3, 0x1(r25)
/* 814DA40C | 38 03 FF FC */	subi r0, r3, 0x4
/* 814DA410 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814DA414:
/* 814DA414 | 3B 80 00 01 */	li r28, 0x1
.L_814DA418:
/* 814DA418 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814DA41C | 40 82 00 24 */	bne .L_814DA440
/* 814DA420 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814DA424 | 41 82 00 0C */	beq .L_814DA430
/* 814DA428 | 38 00 00 00 */	li r0, 0x0
/* 814DA42C | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814DA430:
/* 814DA430 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814DA434 | 41 82 00 0C */	beq .L_814DA440
/* 814DA438 | 38 00 00 00 */	li r0, 0x0
/* 814DA43C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814DA440:
/* 814DA440 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814DA444 | 7F 83 E3 78 */	mr r3, r28
/* 814DA448 | 48 11 F0 AD */	bl _restgpr_21
/* 814DA44C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814DA450 | 7C 08 03 A6 */	mtlr r0
/* 814DA454 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814DA458 | 4E 80 00 20 */	blr
.endfn WDiFindVendorSpecificIE

# 0x81695060..0x81695068 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695060 | size: 0x1
.obj lbl_81695060, global
	.byte 0x00
.endobj lbl_81695060

# .sdata2:0x1 | 0x81695061 | size: 0x1
.obj lbl_81695061, global
	.byte 0x0F
.endobj lbl_81695061

# .sdata2:0x2 | 0x81695062 | size: 0x1
.obj lbl_81695062, global
	.byte 0xAC
.endobj lbl_81695062

# .sdata2:0x3 | 0x81695063 | size: 0x1
.obj gap_09_81695063_sdata2, global
.hidden gap_09_81695063_sdata2
	.byte 0x00
.endobj gap_09_81695063_sdata2

# .sdata2:0x4 | 0x81695064 | size: 0x1
.obj lbl_81695064, global
	.byte 0x00
.endobj lbl_81695064

# .sdata2:0x5 | 0x81695065 | size: 0x1
.obj lbl_81695065, global
	.byte 0x50
.endobj lbl_81695065

# .sdata2:0x6 | 0x81695066 | size: 0x1
.obj lbl_81695066, global
	.byte 0xF2
.endobj lbl_81695066

# .sdata2:0x7 | 0x81695067 | size: 0x1
.obj gap_09_81695067_sdata2, global
.hidden gap_09_81695067_sdata2
	.byte 0x00
.endobj gap_09_81695067_sdata2

# 0x81697D70..0x81697D78 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697D70 | size: 0x1
.obj lbl_81697D70, global
	.byte 0x00
.endobj lbl_81697D70

# .sdata:0x1 | 0x81697D71 | size: 0x1
.obj lbl_81697D71, global
	.byte 0x50
.endobj lbl_81697D71

# .sdata:0x2 | 0x81697D72 | size: 0x1
.obj lbl_81697D72, global
	.byte 0xF2
.endobj lbl_81697D72

# .sdata:0x3 | 0x81697D73 | size: 0x5
.obj gap_11_81697D73_sdata, global
.hidden gap_11_81697D73_sdata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_11_81697D73_sdata
