.include "macros.inc"
.file "CDBFileSystem.c"

# 0x810C8950..0x810C89D0 | size: 0x80
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C8950 | size: 0x40
.obj CDB_VFF_FILE_NAME, global
	.skip 0x40
.endobj CDB_VFF_FILE_NAME

# .bss:0x40 | 0x810C8990 | size: 0x40
.obj CDB_WIIID_DAT_PATH, global
	.skip 0x40
.endobj CDB_WIIID_DAT_PATH

# 0x8148ACC8..0x8148B350 | size: 0x688
.text
.balign 4

# .text:0x0 | 0x8148ACC8 | size: 0x3F8
.fn CDBFSInit, global
/* 8148ACC8 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8148ACCC | 7C 08 02 A6 */	mflr r0
/* 8148ACD0 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8148ACD4 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8148ACD8 | 48 16 E7 E9 */	bl _savegpr_27
/* 8148ACDC | 3F C0 81 67 */	lis r30, lbl_8166B660@ha
/* 8148ACE0 | 3F E0 81 0D */	lis r31, CDB_VFF_FILE_NAME@ha
/* 8148ACE4 | 3B DE B6 60 */	addi r30, r30, lbl_8166B660@l
/* 8148ACE8 | 7C 7B 1B 78 */	mr r27, r3
/* 8148ACEC | 7C 9C 23 78 */	mr r28, r4
/* 8148ACF0 | 38 7F 89 50 */	addi r3, r31, CDB_VFF_FILE_NAME@l
/* 8148ACF4 | 38 9E 01 DC */	addi r4, r30, 0x1dc
/* 8148ACF8 | 48 17 76 0D */	bl strcpy
/* 8148ACFC | 3C 00 01 40 */	lis r0, 0x140
/* 8148AD00 | 3C 60 81 0D */	lis r3, CDB_WIIID_DAT_PATH@ha
/* 8148AD04 | 90 0D AD 28 */	stw r0, CDB_VFF_FILE_SIZE@sda21(r0)
/* 8148AD08 | 38 63 89 90 */	addi r3, r3, CDB_WIIID_DAT_PATH@l
/* 8148AD0C | 38 9E 02 04 */	addi r4, r30, 0x204
/* 8148AD10 | 48 17 75 F5 */	bl strcpy
/* 8148AD14 | 7F 65 DB 78 */	mr r5, r27
/* 8148AD18 | 7F 86 E3 78 */	mr r6, r28
/* 8148AD1C | 38 9F 89 50 */	addi r4, r31, CDB_VFF_FILE_NAME@l
/* 8148AD20 | 38 6D 99 B0 */	li r3, lbl_816979F0@sda21
/* 8148AD24 | 48 04 55 75 */	bl VFMountDriveNANDFlashCacheEx
/* 8148AD28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AD2C | 7C 7F 1B 78 */	mr r31, r3
/* 8148AD30 | 41 82 02 E4 */	beq .L_8148B014
/* 8148AD34 | 38 60 00 04 */	li r3, 0x4
/* 8148AD38 | 48 00 58 59 */	bl CDBIsPrintDebugMessage
/* 8148AD3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AD40 | 41 82 00 28 */	beq .L_8148AD68
/* 8148AD44 | 38 60 00 04 */	li r3, 0x4
/* 8148AD48 | 48 00 58 61 */	bl CDBReport_
/* 8148AD4C | 7F E3 FB 78 */	mr r3, r31
/* 8148AD50 | 48 04 67 4D */	bl VFGetApiErrorString
/* 8148AD54 | 7C 65 1B 78 */	mr r5, r3
/* 8148AD58 | 7F E4 FB 78 */	mr r4, r31
/* 8148AD5C | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8148AD60 | 4C C6 31 82 */	crclr cr1eq
/* 8148AD64 | 48 0A 39 3D */	bl OSReport
.L_8148AD68:
/* 8148AD68 | 3C 1F 00 00 */	addis r0, r31, 0x0
/* 8148AD6C | 28 00 B0 01 */	cmplwi r0, 0xb001
/* 8148AD70 | 40 82 02 5C */	bne .L_8148AFCC
/* 8148AD74 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8148AD78 | 38 60 05 00 */	li r3, 0x500
/* 8148AD7C | 38 80 00 01 */	li r4, 0x1
/* 8148AD80 | 4B ED 5A 11 */	bl NANDCheck
/* 8148AD84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AD88 | 7C 7F 1B 78 */	mr r31, r3
/* 8148AD8C | 41 82 00 3C */	beq .L_8148ADC8
/* 8148AD90 | 38 60 00 01 */	li r3, 0x1
/* 8148AD94 | 48 00 57 FD */	bl CDBIsPrintDebugMessage
/* 8148AD98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AD9C | 41 82 00 18 */	beq .L_8148ADB4
/* 8148ADA0 | 38 60 00 01 */	li r3, 0x1
/* 8148ADA4 | 48 00 58 05 */	bl CDBReport_
/* 8148ADA8 | 38 7E 02 38 */	addi r3, r30, 0x238
/* 8148ADAC | 4C C6 31 82 */	crclr cr1eq
/* 8148ADB0 | 48 0A 38 F1 */	bl OSReport
.L_8148ADB4:
/* 8148ADB4 | 7F E3 FB 78 */	mr r3, r31
/* 8148ADB8 | 38 8D 99 B4 */	li r4, lbl_816979F4@sda21
/* 8148ADBC | 38 A0 00 00 */	li r5, 0x0
/* 8148ADC0 | 48 00 4E 19 */	bl _CDBOnNANDErrorOccured
/* 8148ADC4 | 48 00 02 E4 */	b .L_8148B0A8
.L_8148ADC8:
/* 8148ADC8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8148ADCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148ADD0 | 41 82 00 C8 */	beq .L_8148AE98
/* 8148ADD4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8148ADD8 | 41 82 00 28 */	beq .L_8148AE00
/* 8148ADDC | 38 60 00 01 */	li r3, 0x1
/* 8148ADE0 | 48 00 57 B1 */	bl CDBIsPrintDebugMessage
/* 8148ADE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148ADE8 | 41 82 00 18 */	beq .L_8148AE00
/* 8148ADEC | 38 60 00 01 */	li r3, 0x1
/* 8148ADF0 | 48 00 57 B9 */	bl CDBReport_
/* 8148ADF4 | 38 7E 02 4C */	addi r3, r30, 0x24c
/* 8148ADF8 | 4C C6 31 82 */	crclr cr1eq
/* 8148ADFC | 48 0A 38 A5 */	bl OSReport
.L_8148AE00:
/* 8148AE00 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8148AE04 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8148AE08 | 41 82 00 28 */	beq .L_8148AE30
/* 8148AE0C | 38 60 00 01 */	li r3, 0x1
/* 8148AE10 | 48 00 57 81 */	bl CDBIsPrintDebugMessage
/* 8148AE14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AE18 | 41 82 00 18 */	beq .L_8148AE30
/* 8148AE1C | 38 60 00 01 */	li r3, 0x1
/* 8148AE20 | 48 00 57 89 */	bl CDBReport_
/* 8148AE24 | 38 7E 02 74 */	addi r3, r30, 0x274
/* 8148AE28 | 4C C6 31 82 */	crclr cr1eq
/* 8148AE2C | 48 0A 38 75 */	bl OSReport
.L_8148AE30:
/* 8148AE30 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8148AE34 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 8148AE38 | 41 82 00 28 */	beq .L_8148AE60
/* 8148AE3C | 38 60 00 01 */	li r3, 0x1
/* 8148AE40 | 48 00 57 51 */	bl CDBIsPrintDebugMessage
/* 8148AE44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AE48 | 41 82 00 18 */	beq .L_8148AE60
/* 8148AE4C | 38 60 00 01 */	li r3, 0x1
/* 8148AE50 | 48 00 57 59 */	bl CDBReport_
/* 8148AE54 | 38 7E 02 9C */	addi r3, r30, 0x29c
/* 8148AE58 | 4C C6 31 82 */	crclr cr1eq
/* 8148AE5C | 48 0A 38 45 */	bl OSReport
.L_8148AE60:
/* 8148AE60 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8148AE64 | 54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 8148AE68 | 41 82 00 28 */	beq .L_8148AE90
/* 8148AE6C | 38 60 00 01 */	li r3, 0x1
/* 8148AE70 | 48 00 57 21 */	bl CDBIsPrintDebugMessage
/* 8148AE74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AE78 | 41 82 00 18 */	beq .L_8148AE90
/* 8148AE7C | 38 60 00 01 */	li r3, 0x1
/* 8148AE80 | 48 00 57 29 */	bl CDBReport_
/* 8148AE84 | 38 7E 02 C4 */	addi r3, r30, 0x2c4
/* 8148AE88 | 4C C6 31 82 */	crclr cr1eq
/* 8148AE8C | 48 0A 38 15 */	bl OSReport
.L_8148AE90:
/* 8148AE90 | 38 60 00 17 */	li r3, 0x17
/* 8148AE94 | 48 00 02 14 */	b .L_8148B0A8
.L_8148AE98:
/* 8148AE98 | 3F E0 81 0D */	lis r31, CDB_VFF_FILE_NAME@ha
/* 8148AE9C | 80 8D AD 28 */	lwz r4, CDB_VFF_FILE_SIZE@sda21(r0)
/* 8148AEA0 | 38 7F 89 50 */	addi r3, r31, CDB_VFF_FILE_NAME@l
/* 8148AEA4 | 48 04 4F 71 */	bl VFCreateSystemFileNANDFlashEx
/* 8148AEA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AEAC | 7C 7D 1B 78 */	mr r29, r3
/* 8148AEB0 | 41 82 00 70 */	beq .L_8148AF20
/* 8148AEB4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148AEB8 | 48 0D C3 21 */	bl NANDGetHomeDir
/* 8148AEBC | 38 60 00 01 */	li r3, 0x1
/* 8148AEC0 | 48 00 56 D1 */	bl CDBIsPrintDebugMessage
/* 8148AEC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AEC8 | 41 82 00 1C */	beq .L_8148AEE4
/* 8148AECC | 38 60 00 01 */	li r3, 0x1
/* 8148AED0 | 48 00 56 D9 */	bl CDBReport_
/* 8148AED4 | 38 7E 00 D8 */	addi r3, r30, 0xd8
/* 8148AED8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8148AEDC | 4C C6 31 82 */	crclr cr1eq
/* 8148AEE0 | 48 0A 37 C1 */	bl OSReport
.L_8148AEE4:
/* 8148AEE4 | 38 60 00 01 */	li r3, 0x1
/* 8148AEE8 | 48 00 56 A9 */	bl CDBIsPrintDebugMessage
/* 8148AEEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AEF0 | 41 82 00 1C */	beq .L_8148AF0C
/* 8148AEF4 | 38 60 00 01 */	li r3, 0x1
/* 8148AEF8 | 48 00 56 B1 */	bl CDBReport_
/* 8148AEFC | 7F A4 EB 78 */	mr r4, r29
/* 8148AF00 | 38 7E 00 E4 */	addi r3, r30, 0xe4
/* 8148AF04 | 4C C6 31 82 */	crclr cr1eq
/* 8148AF08 | 48 0A 37 99 */	bl OSReport
.L_8148AF0C:
/* 8148AF0C | 7F A3 EB 78 */	mr r3, r29
/* 8148AF10 | 38 8D 99 B4 */	li r4, lbl_816979F4@sda21
/* 8148AF14 | 38 A0 00 00 */	li r5, 0x0
/* 8148AF18 | 48 00 4C C1 */	bl _CDBOnNANDErrorOccured
/* 8148AF1C | 48 00 01 8C */	b .L_8148B0A8
.L_8148AF20:
/* 8148AF20 | 7F 65 DB 78 */	mr r5, r27
/* 8148AF24 | 7F 86 E3 78 */	mr r6, r28
/* 8148AF28 | 38 9F 89 50 */	addi r4, r31, CDB_VFF_FILE_NAME@l
/* 8148AF2C | 38 6D 99 B0 */	li r3, lbl_816979F0@sda21
/* 8148AF30 | 48 04 53 69 */	bl VFMountDriveNANDFlashCacheEx
/* 8148AF34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AF38 | 7C 7F 1B 78 */	mr r31, r3
/* 8148AF3C | 41 82 00 40 */	beq .L_8148AF7C
/* 8148AF40 | 38 60 00 01 */	li r3, 0x1
/* 8148AF44 | 48 00 56 4D */	bl CDBIsPrintDebugMessage
/* 8148AF48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AF4C | 41 82 00 1C */	beq .L_8148AF68
/* 8148AF50 | 38 60 00 01 */	li r3, 0x1
/* 8148AF54 | 48 00 56 55 */	bl CDBReport_
/* 8148AF58 | 7F E4 FB 78 */	mr r4, r31
/* 8148AF5C | 38 7E 01 10 */	addi r3, r30, 0x110
/* 8148AF60 | 4C C6 31 82 */	crclr cr1eq
/* 8148AF64 | 48 0A 37 3D */	bl OSReport
.L_8148AF68:
/* 8148AF68 | 7F E3 FB 78 */	mr r3, r31
/* 8148AF6C | 38 8D 99 B4 */	li r4, lbl_816979F4@sda21
/* 8148AF70 | 38 A0 00 00 */	li r5, 0x0
/* 8148AF74 | 48 00 4C 59 */	bl _CDBOnVFErrorOccured
/* 8148AF78 | 48 00 01 30 */	b .L_8148B0A8
.L_8148AF7C:
/* 8148AF7C | 38 6D 99 B0 */	li r3, lbl_816979F0@sda21
/* 8148AF80 | 48 04 5E C5 */	bl VFFormatDrive
/* 8148AF84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AF88 | 7C 7F 1B 78 */	mr r31, r3
/* 8148AF8C | 41 82 00 88 */	beq .L_8148B014
/* 8148AF90 | 38 60 00 01 */	li r3, 0x1
/* 8148AF94 | 48 00 55 FD */	bl CDBIsPrintDebugMessage
/* 8148AF98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AF9C | 41 82 00 1C */	beq .L_8148AFB8
/* 8148AFA0 | 38 60 00 01 */	li r3, 0x1
/* 8148AFA4 | 48 00 56 05 */	bl CDBReport_
/* 8148AFA8 | 7F E4 FB 78 */	mr r4, r31
/* 8148AFAC | 38 7E 01 38 */	addi r3, r30, 0x138
/* 8148AFB0 | 4C C6 31 82 */	crclr cr1eq
/* 8148AFB4 | 48 0A 36 ED */	bl OSReport
.L_8148AFB8:
/* 8148AFB8 | 7F E3 FB 78 */	mr r3, r31
/* 8148AFBC | 38 8D 99 B4 */	li r4, lbl_816979F4@sda21
/* 8148AFC0 | 38 A0 00 00 */	li r5, 0x0
/* 8148AFC4 | 48 00 4C 09 */	bl _CDBOnVFErrorOccured
/* 8148AFC8 | 48 00 00 E0 */	b .L_8148B0A8
.L_8148AFCC:
/* 8148AFCC | 38 60 00 01 */	li r3, 0x1
/* 8148AFD0 | 48 00 55 C1 */	bl CDBIsPrintDebugMessage
/* 8148AFD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148AFD8 | 41 82 00 28 */	beq .L_8148B000
/* 8148AFDC | 38 60 00 01 */	li r3, 0x1
/* 8148AFE0 | 48 00 55 C9 */	bl CDBReport_
/* 8148AFE4 | 7F E3 FB 78 */	mr r3, r31
/* 8148AFE8 | 48 04 64 B5 */	bl VFGetApiErrorString
/* 8148AFEC | 7C 65 1B 78 */	mr r5, r3
/* 8148AFF0 | 7F E4 FB 78 */	mr r4, r31
/* 8148AFF4 | 38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8148AFF8 | 4C C6 31 82 */	crclr cr1eq
/* 8148AFFC | 48 0A 36 A5 */	bl OSReport
.L_8148B000:
/* 8148B000 | 7F E3 FB 78 */	mr r3, r31
/* 8148B004 | 38 8D 99 B4 */	li r4, lbl_816979F4@sda21
/* 8148B008 | 38 A0 00 00 */	li r5, 0x0
/* 8148B00C | 48 00 4B C1 */	bl _CDBOnVFErrorOccured
/* 8148B010 | 48 00 00 98 */	b .L_8148B0A8
.L_8148B014:
/* 8148B014 | 38 60 00 04 */	li r3, 0x4
/* 8148B018 | 48 00 55 79 */	bl CDBIsPrintDebugMessage
/* 8148B01C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B020 | 41 82 00 24 */	beq .L_8148B044
/* 8148B024 | 38 60 00 04 */	li r3, 0x4
/* 8148B028 | 48 00 55 81 */	bl CDBReport_
/* 8148B02C | 3C 80 81 0D */	lis r4, CDB_VFF_FILE_NAME@ha
/* 8148B030 | 38 7E 01 50 */	addi r3, r30, 0x150
/* 8148B034 | 38 84 89 50 */	addi r4, r4, CDB_VFF_FILE_NAME@l
/* 8148B038 | 38 AD 99 B0 */	li r5, lbl_816979F0@sda21
/* 8148B03C | 4C C6 31 82 */	crclr cr1eq
/* 8148B040 | 48 0A 36 61 */	bl OSReport
.L_8148B044:
/* 8148B044 | 38 6D 99 B8 */	li r3, lbl_816979F8@sda21
/* 8148B048 | 48 04 5C AD */	bl VFChangeDir
/* 8148B04C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B050 | 7C 7F 1B 78 */	mr r31, r3
/* 8148B054 | 41 82 00 4C */	beq .L_8148B0A0
/* 8148B058 | 38 60 00 01 */	li r3, 0x1
/* 8148B05C | 48 00 55 35 */	bl CDBIsPrintDebugMessage
/* 8148B060 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B064 | 41 82 00 28 */	beq .L_8148B08C
/* 8148B068 | 38 60 00 01 */	li r3, 0x1
/* 8148B06C | 48 00 55 3D */	bl CDBReport_
/* 8148B070 | 7F E3 FB 78 */	mr r3, r31
/* 8148B074 | 48 04 64 29 */	bl VFGetApiErrorString
/* 8148B078 | 7C 65 1B 78 */	mr r5, r3
/* 8148B07C | 38 7E 01 7C */	addi r3, r30, 0x17c
/* 8148B080 | 38 8D 99 B8 */	li r4, lbl_816979F8@sda21
/* 8148B084 | 4C C6 31 82 */	crclr cr1eq
/* 8148B088 | 48 0A 36 19 */	bl OSReport
.L_8148B08C:
/* 8148B08C | 7F E3 FB 78 */	mr r3, r31
/* 8148B090 | 38 8D 99 B4 */	li r4, lbl_816979F4@sda21
/* 8148B094 | 38 A0 00 00 */	li r5, 0x0
/* 8148B098 | 48 00 4B 35 */	bl _CDBOnVFErrorOccured
/* 8148B09C | 48 00 00 0C */	b .L_8148B0A8
.L_8148B0A0:
/* 8148B0A0 | 38 60 00 00 */	li r3, 0x0
/* 8148B0A4 | 48 00 54 39 */	bl CDBSetVFSyncMode
.L_8148B0A8:
/* 8148B0A8 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8148B0AC | 48 16 E4 61 */	bl _restgpr_27
/* 8148B0B0 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8148B0B4 | 7C 08 03 A6 */	mtlr r0
/* 8148B0B8 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8148B0BC | 4E 80 00 20 */	blr
.endfn CDBFSInit

# .text:0x3F8 | 0x8148B0C0 | size: 0x88
.fn CDBFSUninit, global
/* 8148B0C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148B0C4 | 7C 08 02 A6 */	mflr r0
/* 8148B0C8 | 38 6D 99 B0 */	li r3, lbl_816979F0@sda21
/* 8148B0CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148B0D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148B0D4 | 48 04 56 61 */	bl VFUnmountDriveForce
/* 8148B0D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B0DC | 7C 7F 1B 78 */	mr r31, r3
/* 8148B0E0 | 41 82 00 50 */	beq .L_8148B130
/* 8148B0E4 | 38 60 00 01 */	li r3, 0x1
/* 8148B0E8 | 48 00 54 A9 */	bl CDBIsPrintDebugMessage
/* 8148B0EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B0F0 | 41 82 00 2C */	beq .L_8148B11C
/* 8148B0F4 | 38 60 00 01 */	li r3, 0x1
/* 8148B0F8 | 48 00 54 B1 */	bl CDBReport_
/* 8148B0FC | 7F E3 FB 78 */	mr r3, r31
/* 8148B100 | 48 04 63 9D */	bl VFGetApiErrorString
/* 8148B104 | 3C C0 81 67 */	lis r6, lbl_8166B94C@ha
/* 8148B108 | 7C 65 1B 78 */	mr r5, r3
/* 8148B10C | 7F E4 FB 78 */	mr r4, r31
/* 8148B110 | 38 66 B9 4C */	addi r3, r6, lbl_8166B94C@l
/* 8148B114 | 4C C6 31 82 */	crclr cr1eq
/* 8148B118 | 48 0A 35 89 */	bl OSReport
.L_8148B11C:
/* 8148B11C | 7F E3 FB 78 */	mr r3, r31
/* 8148B120 | 38 8D 99 B4 */	li r4, lbl_816979F4@sda21
/* 8148B124 | 38 A0 00 00 */	li r5, 0x0
/* 8148B128 | 48 00 4A A5 */	bl _CDBOnVFErrorOccured
/* 8148B12C | 48 00 00 08 */	b .L_8148B134
.L_8148B130:
/* 8148B130 | 38 60 00 00 */	li r3, 0x0
.L_8148B134:
/* 8148B134 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148B138 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148B13C | 7C 08 03 A6 */	mtlr r0
/* 8148B140 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148B144 | 4E 80 00 20 */	blr
.endfn CDBFSUninit

# .text:0x480 | 0x8148B148 | size: 0x1C
.fn CDBFindDataGetName, global
/* 8148B148 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8148B14C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148B150 | 40 82 00 0C */	bne .L_8148B15C
/* 8148B154 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8148B158 | 48 00 01 F8 */	b CDBFindDataGetNameVF
.L_8148B15C:
/* 8148B15C | 38 63 04 4C */	addi r3, r3, 0x44c
/* 8148B160 | 48 00 07 CC */	b CDBFindDataGetNameSD
.endfn CDBFindDataGetName

# .text:0x49C | 0x8148B164 | size: 0x1C
.fn CDBFindDataIsDirectory, global
/* 8148B164 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8148B168 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148B16C | 40 82 00 0C */	bne .L_8148B178
/* 8148B170 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8148B174 | 48 00 01 F8 */	b CDBFindDataIsDirectoryVF
.L_8148B178:
/* 8148B178 | 38 63 04 4C */	addi r3, r3, 0x44c
/* 8148B17C | 48 00 07 CC */	b CDBFindDataIsDirectorySD
.endfn CDBFindDataIsDirectory

# .text:0x4B8 | 0x8148B180 | size: 0x1C
.fn CDBFindDataIsEnd, global
/* 8148B180 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8148B184 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148B188 | 40 82 00 0C */	bne .L_8148B194
/* 8148B18C | 38 63 00 04 */	addi r3, r3, 0x4
/* 8148B190 | 48 00 01 E8 */	b CDBFindDataIsEndVF
.L_8148B194:
/* 8148B194 | 38 63 04 4C */	addi r3, r3, 0x44c
/* 8148B198 | 48 00 07 BC */	b CDBFindDataIsEndSD
.endfn CDBFindDataIsEnd

# .text:0x4D4 | 0x8148B19C | size: 0x10
.fn CDBFSIsExistFile, global
/* 8148B19C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8148B1A0 | 40 82 00 08 */	bne .L_8148B1A8
/* 8148B1A4 | 48 00 01 DC */	b CDBFSIsExistFileVF
.L_8148B1A8:
/* 8148B1A8 | 48 00 05 9C */	b CDBFSIsExistFileSD
.endfn CDBFSIsExistFile

# .text:0x4E4 | 0x8148B1AC | size: 0x6C
.fn CDBFSFindFirstRoot, global
/* 8148B1AC | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8148B1B0 | 7C 08 02 A6 */	mflr r0
/* 8148B1B4 | 38 A0 00 00 */	li r5, 0x0
/* 8148B1B8 | 90 01 01 14 */	stw r0, 0x114(r1)
/* 8148B1BC | 93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8148B1C0 | 7C 9F 23 78 */	mr r31, r4
/* 8148B1C4 | 93 C1 01 08 */	stw r30, 0x108(r1)
/* 8148B1C8 | 7C 7E 1B 78 */	mr r30, r3
/* 8148B1CC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8148B1D0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148B1D4 | 4B FF B4 CD */	bl CDBGenRootPath
/* 8148B1D8 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8148B1DC | 93 FE 00 00 */	stw r31, 0x0(r30)
/* 8148B1E0 | 40 82 00 14 */	bne .L_8148B1F4
/* 8148B1E4 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 8148B1E8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B1EC | 48 00 02 35 */	bl CDBFSFindFirstVF
/* 8148B1F0 | 48 00 00 10 */	b .L_8148B200
.L_8148B1F4:
/* 8148B1F4 | 38 7E 04 4C */	addi r3, r30, 0x44c
/* 8148B1F8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B1FC | 48 00 05 E9 */	bl CDBFSFindFirstSD
.L_8148B200:
/* 8148B200 | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 8148B204 | 83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8148B208 | 83 C1 01 08 */	lwz r30, 0x108(r1)
/* 8148B20C | 7C 08 03 A6 */	mtlr r0
/* 8148B210 | 38 21 01 10 */	addi r1, r1, 0x110
/* 8148B214 | 4E 80 00 20 */	blr
.endfn CDBFSFindFirstRoot

# .text:0x550 | 0x8148B218 | size: 0x68
.fn CDBFSFindFirstRootEx, global
/* 8148B218 | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8148B21C | 7C 08 02 A6 */	mflr r0
/* 8148B220 | 90 01 01 14 */	stw r0, 0x114(r1)
/* 8148B224 | 93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8148B228 | 7C 9F 23 78 */	mr r31, r4
/* 8148B22C | 93 C1 01 08 */	stw r30, 0x108(r1)
/* 8148B230 | 7C 7E 1B 78 */	mr r30, r3
/* 8148B234 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8148B238 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148B23C | 4B FF B4 65 */	bl CDBGenRootPath
/* 8148B240 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8148B244 | 93 FE 00 00 */	stw r31, 0x0(r30)
/* 8148B248 | 40 82 00 14 */	bne .L_8148B25C
/* 8148B24C | 38 7E 00 04 */	addi r3, r30, 0x4
/* 8148B250 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B254 | 48 00 01 CD */	bl CDBFSFindFirstVF
/* 8148B258 | 48 00 00 10 */	b .L_8148B268
.L_8148B25C:
/* 8148B25C | 38 7E 04 4C */	addi r3, r30, 0x44c
/* 8148B260 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148B264 | 48 00 05 81 */	bl CDBFSFindFirstSD
.L_8148B268:
/* 8148B268 | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 8148B26C | 83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8148B270 | 83 C1 01 08 */	lwz r30, 0x108(r1)
/* 8148B274 | 7C 08 03 A6 */	mtlr r0
/* 8148B278 | 38 21 01 10 */	addi r1, r1, 0x110
/* 8148B27C | 4E 80 00 20 */	blr
.endfn CDBFSFindFirstRootEx

# .text:0x5B8 | 0x8148B280 | size: 0x1C
.fn CDBFSFindFirst, global
/* 8148B280 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 8148B284 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 8148B288 | 40 82 00 0C */	bne .L_8148B294
/* 8148B28C | 38 63 00 04 */	addi r3, r3, 0x4
/* 8148B290 | 48 00 01 90 */	b CDBFSFindFirstVF
.L_8148B294:
/* 8148B294 | 38 63 04 4C */	addi r3, r3, 0x44c
/* 8148B298 | 48 00 05 4C */	b CDBFSFindFirstSD
.endfn CDBFSFindFirst

# .text:0x5D4 | 0x8148B29C | size: 0x1C
.fn CDBFSFindNext, global
/* 8148B29C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8148B2A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148B2A4 | 40 82 00 0C */	bne .L_8148B2B0
/* 8148B2A8 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8148B2AC | 48 00 02 60 */	b CDBFSFindNextVF
.L_8148B2B0:
/* 8148B2B0 | 38 63 04 4C */	addi r3, r3, 0x44c
/* 8148B2B4 | 48 00 06 24 */	b CDBFSFindNextSD
.endfn CDBFSFindNext

# .text:0x5F0 | 0x8148B2B8 | size: 0x1C
.fn CDBFSFindClose, global
/* 8148B2B8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8148B2BC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148B2C0 | 40 82 00 0C */	bne .L_8148B2CC
/* 8148B2C4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8148B2C8 | 48 00 02 8C */	b CDBFSFindCloseVF
.L_8148B2CC:
/* 8148B2CC | 38 63 04 4C */	addi r3, r3, 0x44c
/* 8148B2D0 | 48 00 06 50 */	b CDBFSFindCloseSD
.endfn CDBFSFindClose

# .text:0x60C | 0x8148B2D4 | size: 0x7C
.fn CDBFSDeleteDir, global
/* 8148B2D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148B2D8 | 7C 08 02 A6 */	mflr r0
/* 8148B2DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148B2E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148B2E4 | 7C 9F 23 78 */	mr r31, r4
/* 8148B2E8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148B2EC | 7C 7E 1B 78 */	mr r30, r3
/* 8148B2F0 | 38 60 00 04 */	li r3, 0x4
/* 8148B2F4 | 48 00 52 9D */	bl CDBIsPrintDebugMessage
/* 8148B2F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148B2FC | 41 82 00 20 */	beq .L_8148B31C
/* 8148B300 | 38 60 00 04 */	li r3, 0x4
/* 8148B304 | 48 00 52 A5 */	bl CDBReport_
/* 8148B308 | 3C 60 81 67 */	lis r3, lbl_8166B968@ha
/* 8148B30C | 7F C4 F3 78 */	mr r4, r30
/* 8148B310 | 38 63 B9 68 */	addi r3, r3, lbl_8166B968@l
/* 8148B314 | 4C C6 31 82 */	crclr cr1eq
/* 8148B318 | 48 0A 33 89 */	bl OSReport
.L_8148B31C:
/* 8148B31C | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8148B320 | 40 82 00 10 */	bne .L_8148B330
/* 8148B324 | 7F C3 F3 78 */	mr r3, r30
/* 8148B328 | 48 00 03 89 */	bl CDBFSDeleteDirVF
/* 8148B32C | 48 00 00 0C */	b .L_8148B338
.L_8148B330:
/* 8148B330 | 7F C3 F3 78 */	mr r3, r30
/* 8148B334 | 48 00 07 A1 */	bl CDBFSDeleteDirSD
.L_8148B338:
/* 8148B338 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148B33C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148B340 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148B344 | 7C 08 03 A6 */	mtlr r0
/* 8148B348 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148B34C | 4E 80 00 20 */	blr
.endfn CDBFSDeleteDir

# 0x8166B660..0x8166B980 | size: 0x320
.data
.balign 8

# .data:0x0 | 0x8166B660 | size: 0x14
.obj lbl_8166B660, global
	.4byte 0x4E414E44
	.4byte 0x43726561
	.4byte 0x74654469
	.4byte 0x72202573
	.4byte 0x0A000000
.endobj lbl_8166B660

# .data:0x14 | 0x8166B674 | size: 0x1C
.obj lbl_8166B674, global
	.string "NANDCreateDir() error = %d\n"
.endobj lbl_8166B674

# .data:0x30 | 0x8166B690 | size: 0x20
.obj lbl_8166B690, global
	.4byte 0x4E414E44
	.4byte 0x50726976
	.4byte 0x61746547
	.4byte 0x65745374
	.4byte 0x61747573
	.4byte 0x20257320
	.4byte 0x3D202564
	.4byte 0x0A000000
.endobj lbl_8166B690

# .data:0x50 | 0x8166B6B0 | size: 0x29C
.obj lbl_8166B6B0, global
	.4byte 0x6F776E65
	.4byte 0x7249643D
	.4byte 0x25752C20
	.4byte 0x67726F75
	.4byte 0x7049643D
	.4byte 0x25752C20
	.4byte 0x61747472
	.4byte 0x69627574
	.4byte 0x653D2575
	.4byte 0x2C207065
	.4byte 0x726D6973
	.4byte 0x73696F6E
	.4byte 0x3D000000
	.4byte 0x286F7468
	.4byte 0x65722D67
	.4byte 0x726F7570
	.4byte 0x2D6F776E
	.4byte 0x6572290A
	.4byte 0x00000000
	.4byte 0x6E6F636F
	.4byte 0x70792F63
	.4byte 0x64627769
	.4byte 0x6969642E
	.4byte 0x64617400
	.4byte 0x56464D6F
	.4byte 0x756E7444
	.4byte 0x72697665
	.4byte 0x4E414E44
	.4byte 0x466C6173
	.4byte 0x68457820
	.4byte 0x56464572
	.4byte 0x723D2564
	.4byte 0x28257329
	.4byte 0x0A000000
	.4byte 0x686F6D65
	.4byte 0x3D25730A
	.4byte 0x00000000
	.4byte 0x56464372
	.4byte 0x65617465
	.4byte 0x53797374
	.4byte 0x656D4669
	.4byte 0x6C654E41
	.4byte 0x4E44466C
	.4byte 0x61736845
	.4byte 0x78204445
	.4byte 0x56457272
	.4byte 0x3D25640A
	.4byte 0x00000000
	.4byte 0x56464D6F
	.4byte 0x756E7444
	.4byte 0x72697665
	.4byte 0x4E414E44
	.4byte 0x466C6173
	.4byte 0x68457820
	.4byte 0x56464572
	.4byte 0x723D2564
	.4byte 0x0A000000
	.4byte 0x00000000
	.4byte 0x5646466F
	.4byte 0x726D6174
	.4byte 0x44726976
	.4byte 0x65205646
	.4byte 0x4572723D
	.4byte 0x25640A00
	.4byte 0x56464D6F
	.4byte 0x756E7444
	.4byte 0x72697665
	.4byte 0x4E414E44
	.4byte 0x466C6173
	.4byte 0x68457820
	.4byte 0x25732D3E
	.4byte 0x25732073
	.4byte 0x75636365
	.4byte 0x65646564
	.4byte 0x0A000000
	.4byte 0x56464368
	.4byte 0x616E6765
	.4byte 0x44697220
	.4byte 0x25732025
	.4byte 0x730A0000
	.4byte 0x4E414E44
	.4byte 0x50726976
	.4byte 0x61746544
	.4byte 0x656C6574
	.4byte 0x65202573
	.4byte 0x2D2D3E0A
	.4byte 0x00000000
	.4byte 0x4E414E44
	.4byte 0x50726976
	.4byte 0x61746544
	.4byte 0x656C6574
	.4byte 0x653D2564
	.4byte 0x0A000000
	.4byte 0x3C2D2D4E
	.4byte 0x414E4450
	.4byte 0x72697661
	.4byte 0x74654465
	.4byte 0x6C657465
	.4byte 0x0A000000
	.4byte 0x2F746974
	.4byte 0x6C652F30
	.4byte 0x30303030
	.4byte 0x3030312F
	.4byte 0x30303030
	.4byte 0x30303032
	.4byte 0x2F646174
	.4byte 0x612F6364
	.4byte 0x622E7666
	.4byte 0x66000000
	.4byte 0x2F746974
	.4byte 0x6C652F30
	.4byte 0x30303030
	.4byte 0x3030312F
	.4byte 0x30303030
	.4byte 0x30303032
	.4byte 0x2F646174
	.4byte 0x612F6E6F
	.4byte 0x636F7079
	.4byte 0x2F636462
	.4byte 0x77696969
	.4byte 0x642E6461
	.4byte 0x74000000
	.4byte 0x6661696C
	.4byte 0x6564204E
	.4byte 0x414E4443
	.4byte 0x6865636B
	.4byte 0x0A000000
	.4byte 0x4E414E44
	.4byte 0x43686563
	.4byte 0x6B203A20
	.4byte 0x4E414E44
	.4byte 0x5F434845
	.4byte 0x434B5F48
	.4byte 0x4F4D455F
	.4byte 0x494E5353
	.4byte 0x50414345
	.4byte 0x0A000000
	.4byte 0x4E414E44
	.4byte 0x43686563
	.4byte 0x6B203A20
	.4byte 0x4E414E44
	.4byte 0x5F434845
	.4byte 0x434B5F48
	.4byte 0x4F4D455F
	.4byte 0x494E5349
	.4byte 0x4E4F4445
	.4byte 0x0A000000
	.4byte 0x4E414E44
	.4byte 0x43686563
	.4byte 0x6B203A20
	.4byte 0x4E414E44
	.4byte 0x5F434845
	.4byte 0x434B5F53
	.4byte 0x59535F49
	.4byte 0x4E535350
	.4byte 0x4143450A
	.4byte 0x00000000
	.4byte 0x4E414E44
	.4byte 0x43686563
	.4byte 0x6B203A20
	.4byte 0x4E414E44
	.4byte 0x5F434845
	.4byte 0x434B5F53
	.4byte 0x59535F49
	.4byte 0x4E53494E
	.4byte 0x4F44450A
	.4byte 0x00000000
.endobj lbl_8166B6B0

# .data:0x2EC | 0x8166B94C | size: 0x1C
.obj lbl_8166B94C, global
	.4byte 0x5646556E
	.4byte 0x6D6F7574
	.4byte 0x44726976
	.4byte 0x65206572
	.4byte 0x723D2564
	.4byte 0x3A25730A
	.4byte 0x00000000
.endobj lbl_8166B94C

# .data:0x308 | 0x8166B968 | size: 0x15
.obj lbl_8166B968, global
	.string "CDBFSDeleteDir() %s\n"
.endobj lbl_8166B968

# .data:0x31D | 0x8166B97D | size: 0x3
.obj gap_08_8166B97D_data, global
.hidden gap_08_8166B97D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_08_8166B97D_data

# 0x816979F0..0x81697A00 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816979F0 | size: 0x4
.obj lbl_816979F0, global
	.string "CDB"
.endobj lbl_816979F0

# .sdata:0x4 | 0x816979F4 | size: 0x4
.obj lbl_816979F4, global
	.4byte 0x00000000
.endobj lbl_816979F4

# .sdata:0x8 | 0x816979F8 | size: 0x6
.obj lbl_816979F8, global
	.string "CDB:/"
.endobj lbl_816979F8

# .sdata:0xE | 0x816979FE | size: 0x2
.obj gap_11_816979FE_sdata, global
.hidden gap_11_816979FE_sdata
	.2byte 0x0000
.endobj gap_11_816979FE_sdata

# 0x81698D68..0x81698D78 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698D68 | size: 0x4
.obj CDB_VFF_FILE_SIZE, global
	.skip 0x4
.endobj CDB_VFF_FILE_SIZE

# .sbss:0x4 | 0x81698D6C | size: 0x4
.obj gap_12_81698D6C_sbss, global
.hidden gap_12_81698D6C_sbss
	.skip 0x4
.endobj gap_12_81698D6C_sbss

# .sbss:0x8 | 0x81698D70 | size: 0x4
.obj CDB_SD_VF_DRIVE_LETTER, global
	.skip 0x4
.endobj CDB_SD_VF_DRIVE_LETTER

# .sbss:0xC | 0x81698D74 | size: 0x4
.obj gap_12_81698D74_sbss, global
.hidden gap_12_81698D74_sbss
	.skip 0x4
.endobj gap_12_81698D74_sbss
