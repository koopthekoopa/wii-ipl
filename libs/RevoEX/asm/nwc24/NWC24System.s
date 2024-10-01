.include "macros.inc"
.file "NWC24System.c"

# 0x810C9B60..0x810C9BC0 | size: 0x60
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C9B60 | size: 0x10
.obj ShutdownFuncInfo, local
	.skip 0x10
.endobj ShutdownFuncInfo

# .bss:0x10 | 0x810C9B70 | size: 0x10
.obj gap_00_810C9B70_bss, global
.hidden gap_00_810C9B70_bss
	.skip 0x10
.endobj gap_00_810C9B70_bss

# .bss:0x20 | 0x810C9B80 | size: 0x20
.obj shtBuffer, local
	.skip 0x20
.endobj shtBuffer

# .bss:0x40 | 0x810C9BA0 | size: 0x20
.obj shtResult, local
	.skip 0x20
.endobj shtResult

# 0x814B1C10..0x814B1F38 | size: 0x328
.text
.balign 4

# .text:0x0 | 0x814B1C10 | size: 0x58
.fn NWC24EnableLedNotification, global
/* 814B1C10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B1C14 | 7C 08 02 A6 */	mflr r0
/* 814B1C18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1C1C | 38 60 00 00 */	li r3, 0x0
/* 814B1C20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B1C24 | 41 82 00 2C */	beq .L_814B1C50
.L_814B1C28:
/* 814B1C28 | 48 0B 67 1D */	bl fn_81568344
/* 814B1C2C | 28 03 00 02 */	cmplwi r3, 0x2
/* 814B1C30 | 40 82 00 0C */	bne .L_814B1C3C
/* 814B1C34 | 38 60 FF FF */	li r3, -0x1
/* 814B1C38 | 48 00 00 20 */	b .L_814B1C58
.L_814B1C3C:
/* 814B1C3C | 28 03 00 01 */	cmplwi r3, 0x1
/* 814B1C40 | 41 82 FF E8 */	beq .L_814B1C28
/* 814B1C44 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B1C48 | 48 0B 84 A5 */	bl fn_8156A0EC
/* 814B1C4C | 88 61 00 09 */	lbz r3, 0x9(r1)
.L_814B1C50:
/* 814B1C50 | 48 08 4F 05 */	bl fn_81536B54
/* 814B1C54 | 38 60 00 00 */	li r3, 0x0
.L_814B1C58:
/* 814B1C58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B1C5C | 7C 08 03 A6 */	mtlr r0
/* 814B1C60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B1C64 | 4E 80 00 20 */	blr
.endfn NWC24EnableLedNotification

# .text:0x58 | 0x814B1C68 | size: 0xC0
.fn NWC24iPrepareShutdown, global
/* 814B1C68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B1C6C | 7C 08 02 A6 */	mflr r0
/* 814B1C70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B1C74 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B1C78 | 3B E0 00 00 */	li r31, 0x0
/* 814B1C7C | 4B FE E3 61 */	bl NWC24iRegister
/* 814B1C80 | 3C A0 81 4B */	lis r5, NWC24Shutdown@ha
/* 814B1C84 | 3C 80 81 0D */	lis r4, ShutdownFuncInfo@ha
/* 814B1C88 | 38 A5 1D 28 */	addi r5, r5, NWC24Shutdown@l
/* 814B1C8C | 38 00 00 6E */	li r0, 0x6e
/* 814B1C90 | 38 64 9B 60 */	addi r3, r4, ShutdownFuncInfo@l
/* 814B1C94 | 90 A4 9B 60 */	stw r5, ShutdownFuncInfo@l(r4)
/* 814B1C98 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814B1C9C | 48 08 04 C5 */	bl OSRegisterShutdownFunction
/* 814B1CA0 | 80 0D 9C 88 */	lwz r0, nwc24ShtFd@sda21(r0)
/* 814B1CA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1CA8 | 40 80 00 24 */	bge .L_814B1CCC
/* 814B1CAC | 3C 60 81 67 */	lis r3, lbl_8166E218@ha
/* 814B1CB0 | 3C 80 81 67 */	lis r4, lbl_8166E230@ha
/* 814B1CB4 | 38 63 E2 18 */	addi r3, r3, lbl_8166E218@l
/* 814B1CB8 | 38 AD 9C 88 */	li r5, nwc24ShtFd@sda21
/* 814B1CBC | 38 84 E2 30 */	addi r4, r4, lbl_8166E230@l
/* 814B1CC0 | 38 C0 00 01 */	li r6, 0x1
/* 814B1CC4 | 4B FF CB 81 */	bl NWC24iOpenResourceManager
/* 814B1CC8 | 7C 7F 1B 78 */	mr r31, r3
.L_814B1CCC:
/* 814B1CCC | 38 00 00 05 */	li r0, 0x5
/* 814B1CD0 | 90 0D AE 00 */	stw r0, nwc24ShtRetryRest@sda21(r0)
.L_814B1CD4:
/* 814B1CD4 | 48 0B 66 71 */	bl fn_81568344
/* 814B1CD8 | 28 03 00 02 */	cmplwi r3, 0x2
/* 814B1CDC | 41 82 00 1C */	beq .L_814B1CF8
/* 814B1CE0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814B1CE4 | 41 82 FF F0 */	beq .L_814B1CD4
/* 814B1CE8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B1CEC | 48 0B 84 01 */	bl fn_8156A0EC
/* 814B1CF0 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 814B1CF4 | 48 08 4E 61 */	bl fn_81536B54
.L_814B1CF8:
/* 814B1CF8 | 48 07 AB 75 */	bl fn_8152C86C
/* 814B1CFC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814B1D00 | 28 00 00 40 */	cmplwi r0, 0x40
/* 814B1D04 | 40 82 00 0C */	bne .L_814B1D10
/* 814B1D08 | 38 60 00 01 */	li r3, 0x1
/* 814B1D0C | 4B FF 93 49 */	bl NWC24iSetScriptMode
.L_814B1D10:
/* 814B1D10 | 7F E3 FB 78 */	mr r3, r31
/* 814B1D14 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B1D18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B1D1C | 7C 08 03 A6 */	mtlr r0
/* 814B1D20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B1D24 | 4E 80 00 20 */	blr
.endfn NWC24iPrepareShutdown

# .text:0x118 | 0x814B1D28 | size: 0xD0
.fn NWC24Shutdown, global
/* 814B1D28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B1D2C | 7C 08 02 A6 */	mflr r0
/* 814B1D30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1D34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B1D38 | 41 82 00 0C */	beq .L_814B1D44
/* 814B1D3C | 38 60 00 01 */	li r3, 0x1
/* 814B1D40 | 48 00 00 A8 */	b .L_814B1DE8
.L_814B1D44:
/* 814B1D44 | 80 0D AE 04 */	lwz r0, shuttingdown1125@sda21(r0)
/* 814B1D48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1D4C | 41 82 00 54 */	beq .L_814B1DA0
/* 814B1D50 | 4B FF CC 45 */	bl NWC24iIsAsyncRequestPending
/* 814B1D54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1D58 | 41 82 00 0C */	beq .L_814B1D64
/* 814B1D5C | 38 60 00 00 */	li r3, 0x0
/* 814B1D60 | 48 00 00 88 */	b .L_814B1DE8
.L_814B1D64:
/* 814B1D64 | 80 0D AE 08 */	lwz r0, result$1126@sda21(r0)
/* 814B1D68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1D6C | 41 80 00 0C */	blt .L_814B1D78
/* 814B1D70 | 38 60 00 01 */	li r3, 0x1
/* 814B1D74 | 48 00 00 74 */	b .L_814B1DE8
.L_814B1D78:
/* 814B1D78 | 80 6D AE 00 */	lwz r3, nwc24ShtRetryRest@sda21(r0)
/* 814B1D7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1D80 | 40 81 00 18 */	ble .L_814B1D98
/* 814B1D84 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814B1D88 | 38 60 00 00 */	li r3, 0x0
/* 814B1D8C | 90 6D AE 04 */	stw r3, shuttingdown1125@sda21(r0)
/* 814B1D90 | 90 0D AE 00 */	stw r0, nwc24ShtRetryRest@sda21(r0)
/* 814B1D94 | 48 00 00 50 */	b .L_814B1DE4
.L_814B1D98:
/* 814B1D98 | 38 60 00 01 */	li r3, 0x1
/* 814B1D9C | 48 00 00 4C */	b .L_814B1DE8
.L_814B1DA0:
/* 814B1DA0 | 3C A0 81 0D */	lis r5, shtBuffer@ha
/* 814B1DA4 | 3C 60 81 67 */	lis r3, lbl_8166E244@ha
/* 814B1DA8 | 90 85 9B 80 */	stw r4, shtBuffer@l(r5)
/* 814B1DAC | 3D 00 81 0D */	lis r8, shtResult@ha
/* 814B1DB0 | 38 C5 9B 80 */	addi r6, r5, shtBuffer@l
/* 814B1DB4 | 80 8D 9C 88 */	lwz r4, nwc24ShtFd@sda21(r0)
/* 814B1DB8 | 38 63 E2 44 */	addi r3, r3, lbl_8166E244@l
/* 814B1DBC | 39 08 9B A0 */	addi r8, r8, shtResult@l
/* 814B1DC0 | 38 A0 00 28 */	li r5, 0x28
/* 814B1DC4 | 38 E0 00 20 */	li r7, 0x20
/* 814B1DC8 | 39 20 00 20 */	li r9, 0x20
/* 814B1DCC | 39 4D AE 08 */	li r10, result$1126@sda21
/* 814B1DD0 | 4B FF CB 69 */	bl NWC24iIoctlResourceManagerAsync
/* 814B1DD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1DD8 | 41 80 00 0C */	blt .L_814B1DE4
/* 814B1DDC | 38 00 00 01 */	li r0, 0x1
/* 814B1DE0 | 90 0D AE 04 */	stw r0, shuttingdown1125@sda21(r0)
.L_814B1DE4:
/* 814B1DE4 | 38 60 00 00 */	li r3, 0x0
.L_814B1DE8:
/* 814B1DE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B1DEC | 7C 08 03 A6 */	mtlr r0
/* 814B1DF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B1DF4 | 4E 80 00 20 */	blr
.endfn NWC24Shutdown

# .text:0x1E8 | 0x814B1DF8 | size: 0x140
.fn NWC24DoDailyTasks, global
/* 814B1DF8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B1DFC | 7C 08 02 A6 */	mflr r0
/* 814B1E00 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B1E04 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B1E08 | 48 14 76 B1 */	bl _savegpr_25
/* 814B1E0C | 7C 7E 1B 78 */	mr r30, r3
/* 814B1E10 | 3B E0 00 00 */	li r31, 0x0
/* 814B1E14 | 48 08 3E 85 */	bl OSGetTick
/* 814B1E18 | 7C 79 1B 78 */	mr r25, r3
/* 814B1E1C | 48 14 EE A5 */	bl rand
/* 814B1E20 | 3C 80 CC CD */	lis r4, 0xcccd
/* 814B1E24 | 7C 63 CA 14 */	add r3, r3, r25
/* 814B1E28 | 38 04 CC CD */	subi r0, r4, 0x3333
/* 814B1E2C | 7C 00 18 16 */	mulhwu r0, r0, r3
/* 814B1E30 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814B1E34 | 1C 00 00 0A */	mulli r0, r0, 0xa
/* 814B1E38 | 7C 00 18 51 */	subf. r0, r0, r3
/* 814B1E3C | 41 82 00 0C */	beq .L_814B1E48
/* 814B1E40 | 38 60 00 00 */	li r3, 0x0
/* 814B1E44 | 48 00 00 DC */	b .L_814B1F20
.L_814B1E48:
/* 814B1E48 | 4B FE E4 B1 */	bl NWC24IsMsgLibOpened
/* 814B1E4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1E50 | 41 82 00 0C */	beq .L_814B1E5C
/* 814B1E54 | 38 60 FF F6 */	li r3, -0xa
/* 814B1E58 | 48 00 00 C8 */	b .L_814B1F20
.L_814B1E5C:
/* 814B1E5C | 38 00 00 00 */	li r0, 0x0
/* 814B1E60 | 3B 80 00 64 */	li r28, 0x64
/* 814B1E64 | 7F A0 E1 D6 */	mullw r29, r0, r28
/* 814B1E68 | 3C 60 10 62 */	lis r3, 0x1062
/* 814B1E6C | 3F 60 80 00 */	lis r27, 0x8000
/* 814B1E70 | 3B 43 4D D3 */	addi r26, r3, 0x4dd3
.L_814B1E74:
/* 814B1E74 | 48 0B 64 D1 */	bl fn_81568344
/* 814B1E78 | 28 03 00 02 */	cmplwi r3, 0x2
/* 814B1E7C | 7C 79 1B 78 */	mr r25, r3
/* 814B1E80 | 40 82 00 0C */	bne .L_814B1E8C
/* 814B1E84 | 38 60 FF FF */	li r3, -0x1
/* 814B1E88 | 48 00 00 98 */	b .L_814B1F20
.L_814B1E8C:
/* 814B1E8C | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 814B1E90 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814B1E94 | 7C 1A 00 16 */	mulhwu r0, r26, r0
/* 814B1E98 | 54 03 D1 BE */	srwi r3, r0, 6
/* 814B1E9C | 7C 03 E0 16 */	mulhwu r0, r3, r28
/* 814B1EA0 | 1C 83 00 64 */	mulli r4, r3, 0x64
/* 814B1EA4 | 7C 60 EA 14 */	add r3, r0, r29
/* 814B1EA8 | 48 08 3D 25 */	bl OSSleepTicks
/* 814B1EAC | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814B1EB0 | 40 82 FF C4 */	bne .L_814B1E74
/* 814B1EB4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814B1EB8 | 48 0B 82 35 */	bl fn_8156A0EC
/* 814B1EBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1EC0 | 40 82 00 0C */	bne .L_814B1ECC
/* 814B1EC4 | 38 60 FF F3 */	li r3, -0xd
/* 814B1EC8 | 48 00 00 58 */	b .L_814B1F20
.L_814B1ECC:
/* 814B1ECC | 48 0B 87 E1 */	bl SCGetNetContentRestrictions
/* 814B1ED0 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814B1ED4 | 54 63 07 BC */	rlwinm r3, r3, 0, 30, 30
/* 814B1ED8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B1EDC | 40 82 00 40 */	bne .L_814B1F1C
/* 814B1EE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1EE4 | 40 82 00 30 */	bne .L_814B1F14
/* 814B1EE8 | 7F C3 F3 78 */	mr r3, r30
/* 814B1EEC | 4B FE E1 29 */	bl NWC24OpenLib
/* 814B1EF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B1EF4 | 7C 7F 1B 78 */	mr r31, r3
/* 814B1EF8 | 41 80 00 24 */	blt .L_814B1F1C
/* 814B1EFC | 38 60 00 01 */	li r3, 0x1
/* 814B1F00 | 38 8D 9C 8C */	li r4, lbl_81697CCC@sda21
/* 814B1F04 | 4B FF 0F B5 */	bl NWC24iMBoxSetLastUIDL
/* 814B1F08 | 7C 7F 1B 78 */	mr r31, r3
/* 814B1F0C | 4B FE E3 15 */	bl NWC24CloseLib
/* 814B1F10 | 48 00 00 0C */	b .L_814B1F1C
.L_814B1F14:
/* 814B1F14 | 4B FF 92 E1 */	bl NWC24AdjustUniversalTime
/* 814B1F18 | 7C 7F 1B 78 */	mr r31, r3
.L_814B1F1C:
/* 814B1F1C | 7F E3 FB 78 */	mr r3, r31
.L_814B1F20:
/* 814B1F20 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B1F24 | 48 14 75 E1 */	bl _restgpr_25
/* 814B1F28 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B1F2C | 7C 08 03 A6 */	mtlr r0
/* 814B1F30 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B1F34 | 4E 80 00 20 */	blr
.endfn NWC24DoDailyTasks

# 0x8166E218..0x8166E260 | size: 0x48
.data
.balign 8

# .data:0x0 | 0x8166E218 | size: 0x18
.obj lbl_8166E218, global
	.4byte 0x4E574332
	.4byte 0x34695072
	.4byte 0x65706172
	.4byte 0x65536875
	.4byte 0x74646F77
	.4byte 0x6E000000
.endobj lbl_8166E218

# .data:0x18 | 0x8166E230 | size: 0x14
.obj lbl_8166E230, global
	.string "/dev/net/kd/request"
.endobj lbl_8166E230

# .data:0x2C | 0x8166E244 | size: 0x1C
.obj lbl_8166E244, global
	.4byte 0x4E574332
	.4byte 0x34695265
	.4byte 0x71756573
	.4byte 0x74536875
	.4byte 0x74646F77
	.4byte 0x6E000000
	.4byte 0x00000000
.endobj lbl_8166E244

# 0x81697CC8..0x81697CD0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CC8 | size: 0x4
.obj nwc24ShtFd, global
	.4byte 0xFFFFFFFF
.endobj nwc24ShtFd

# .sdata:0x4 | 0x81697CCC | size: 0x1
.obj lbl_81697CCC, global
	.byte 0x00
.endobj lbl_81697CCC

# .sdata:0x5 | 0x81697CCD | size: 0x3
.obj gap_11_81697CCD_sdata, global
.hidden gap_11_81697CCD_sdata
	.byte 0x00, 0x00, 0x00
.endobj gap_11_81697CCD_sdata

# 0x81698E40..0x81698E50 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E40 | size: 0x4
.obj nwc24ShtRetryRest, global
	.skip 0x4
.endobj nwc24ShtRetryRest

# .sbss:0x4 | 0x81698E44 | size: 0x4
.obj shuttingdown1125, global
	.skip 0x4
.endobj shuttingdown1125

# .sbss:0x8 | 0x81698E48 | size: 0x8
.obj result$1126, global
	.skip 0x8
.endobj result$1126
