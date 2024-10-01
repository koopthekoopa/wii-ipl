.include "macros.inc"
.file "d_vf.c"

# 0x810F5540..0x810F5558 | size: 0x18
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810F5540 | size: 0x18
.obj l_Mutex, local
	.skip 0x18
.endobj l_Mutex

# 0x814CFD38..0x814D15C0 | size: 0x1888
.text
.balign 4

# .text:0x0 | 0x814CFD38 | size: 0xC8
.fn VFInitEx, global
/* 814CFD38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFD3C | 7C 08 02 A6 */	mflr r0
/* 814CFD40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFD44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CFD48 | 7C 9F 23 78 */	mr r31, r4
/* 814CFD4C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814CFD50 | 7C 7E 1B 78 */	mr r30, r3
/* 814CFD54 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814CFD58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CFD5C | 40 82 00 18 */	bne .L_814CFD74
/* 814CFD60 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814CFD64 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814CFD68 | 48 06 1E 69 */	bl fn_81531BD0
/* 814CFD6C | 38 00 00 01 */	li r0, 0x1
/* 814CFD70 | 90 0D AE 3C */	stw r0, l_InitedMutex@sda21(r0)
.L_814CFD74:
/* 814CFD74 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814CFD78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CFD7C | 41 82 00 10 */	beq .L_814CFD8C
/* 814CFD80 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814CFD84 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814CFD88 | 48 06 1E 81 */	bl fn_81531C08
.L_814CFD8C:
/* 814CFD8C | 80 0D AE 38 */	lwz r0, l_vf_init@sda21(r0)
/* 814CFD90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CFD94 | 40 82 00 3C */	bne .L_814CFDD0
/* 814CFD98 | 7F C3 F3 78 */	mr r3, r30
/* 814CFD9C | 7F E4 FB 78 */	mr r4, r31
/* 814CFDA0 | 48 00 18 21 */	bl VFSysInit
/* 814CFDA4 | 38 60 00 00 */	li r3, 0x0
/* 814CFDA8 | 38 80 00 00 */	li r4, 0x0
/* 814CFDAC | 4B FE AB C9 */	bl VFipdm_init_diskmanager
/* 814CFDB0 | 38 60 00 00 */	li r3, 0x0
/* 814CFDB4 | 38 80 00 00 */	li r4, 0x0
/* 814CFDB8 | 4B FF FD 75 */	bl VFipf2_init_prfile2
/* 814CFDBC | 48 00 4A 49 */	bl dHash_InitHashTable
/* 814CFDC0 | 38 60 00 00 */	li r3, 0x0
/* 814CFDC4 | 48 00 48 FD */	bl VFSysSetTimeStampCallback
/* 814CFDC8 | 38 00 00 01 */	li r0, 0x1
/* 814CFDCC | 90 0D AE 38 */	stw r0, l_vf_init@sda21(r0)
.L_814CFDD0:
/* 814CFDD0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814CFDD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CFDD8 | 41 82 00 10 */	beq .L_814CFDE8
/* 814CFDDC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814CFDE0 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814CFDE4 | 48 06 1F 01 */	bl fn_81531CE4
.L_814CFDE8:
/* 814CFDE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFDEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CFDF0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814CFDF4 | 7C 08 03 A6 */	mtlr r0
/* 814CFDF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFDFC | 4E 80 00 20 */	blr
.endfn VFInitEx

# .text:0xC8 | 0x814CFE00 | size: 0x14
.fn VFIsAvailable, global
/* 814CFE00 | 80 6D AE 38 */	lwz r3, l_vf_init@sda21(r0)
/* 814CFE04 | 7C 03 00 D0 */	neg r0, r3
/* 814CFE08 | 7C 00 1B 78 */	or r0, r0, r3
/* 814CFE0C | 54 03 0F FE */	srwi r3, r0, 31
/* 814CFE10 | 4E 80 00 20 */	blr
.endfn VFIsAvailable

# .text:0xDC | 0x814CFE14 | size: 0x78
.fn VFCreateSystemFileNANDFlashEx, global
/* 814CFE14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFE18 | 7C 08 02 A6 */	mflr r0
/* 814CFE1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFE20 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CFE24 | 7C 9F 23 78 */	mr r31, r4
/* 814CFE28 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814CFE2C | 7C 7E 1B 78 */	mr r30, r3
/* 814CFE30 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814CFE34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CFE38 | 41 82 00 10 */	beq .L_814CFE48
/* 814CFE3C | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814CFE40 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814CFE44 | 48 06 1D C5 */	bl fn_81531C08
.L_814CFE48:
/* 814CFE48 | 7F C3 F3 78 */	mr r3, r30
/* 814CFE4C | 7F E4 FB 78 */	mr r4, r31
/* 814CFE50 | 48 00 18 FD */	bl VFSysCreatePrfFileNANDFlashEx
/* 814CFE54 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814CFE58 | 7C 7F 1B 78 */	mr r31, r3
/* 814CFE5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CFE60 | 41 82 00 10 */	beq .L_814CFE70
/* 814CFE64 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814CFE68 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814CFE6C | 48 06 1E 79 */	bl fn_81531CE4
.L_814CFE70:
/* 814CFE70 | 7F E3 FB 78 */	mr r3, r31
/* 814CFE74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CFE78 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814CFE7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFE80 | 7C 08 03 A6 */	mtlr r0
/* 814CFE84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFE88 | 4E 80 00 20 */	blr
.endfn VFCreateSystemFileNANDFlashEx

# .text:0x154 | 0x814CFE8C | size: 0xF4
.fn VFiActivateDriveCommon, global
/* 814CFE8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CFE90 | 7C 08 02 A6 */	mflr r0
/* 814CFE94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CFE98 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CFE9C | 7C BF 2B 78 */	mr r31, r5
/* 814CFEA0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CFEA4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814CFEA8 | 7C 9D 23 78 */	mr r29, r4
/* 814CFEAC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814CFEB0 | 7C 7C 1B 78 */	mr r28, r3
/* 814CFEB4 | 48 00 19 5D */	bl VFSysCheckExistPrfFile
/* 814CFEB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFEBC | 7C 7E 1B 78 */	mr r30, r3
/* 814CFEC0 | 41 82 00 10 */	beq .L_814CFED0
/* 814CFEC4 | 48 00 46 D5 */	bl VFSysSetLastError
/* 814CFEC8 | 7F C3 F3 78 */	mr r3, r30
/* 814CFECC | 48 00 00 94 */	b .L_814CFF60
.L_814CFED0:
/* 814CFED0 | 7F 83 E3 78 */	mr r3, r28
/* 814CFED4 | 7F A4 EB 78 */	mr r4, r29
/* 814CFED8 | 7F E5 FB 78 */	mr r5, r31
/* 814CFEDC | 48 00 22 29 */	bl VFSysMountDrv
/* 814CFEE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFEE4 | 7C 7E 1B 78 */	mr r30, r3
/* 814CFEE8 | 41 82 00 10 */	beq .L_814CFEF8
/* 814CFEEC | 48 00 46 AD */	bl VFSysSetLastError
/* 814CFEF0 | 7F C3 F3 78 */	mr r3, r30
/* 814CFEF4 | 48 00 00 6C */	b .L_814CFF60
.L_814CFEF8:
/* 814CFEF8 | 7F 83 E3 78 */	mr r3, r28
/* 814CFEFC | 48 00 2D 1D */	bl VFSysGetDriveP
/* 814CFF00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFF04 | 7C 7F 1B 78 */	mr r31, r3
/* 814CFF08 | 40 82 00 18 */	bne .L_814CFF20
/* 814CFF0C | 3F E0 00 01 */	lis r31, 0x1
/* 814CFF10 | 38 7F B0 02 */	subi r3, r31, 0x4ffe
/* 814CFF14 | 48 00 46 85 */	bl VFSysSetLastError
/* 814CFF18 | 38 7F B0 02 */	subi r3, r31, 0x4ffe
/* 814CFF1C | 48 00 00 44 */	b .L_814CFF60
.L_814CFF20:
/* 814CFF20 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CFF24 | 38 00 00 00 */	li r0, 0x0
/* 814CFF28 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814CFF2C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFF30 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814CFF34 | 4B FF F8 15 */	bl VFipf2_attach
/* 814CFF38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFF3C | 41 82 00 20 */	beq .L_814CFF5C
/* 814CFF40 | 4B FF F9 79 */	bl VFipf2_errnum
/* 814CFF44 | 7C 7E 1B 78 */	mr r30, r3
/* 814CFF48 | 48 00 46 51 */	bl VFSysSetLastError
/* 814CFF4C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 814CFF50 | 4B FE AC 09 */	bl VFipdm_close_partition
/* 814CFF54 | 7F C3 F3 78 */	mr r3, r30
/* 814CFF58 | 48 00 00 08 */	b .L_814CFF60
.L_814CFF5C:
/* 814CFF5C | 38 60 00 00 */	li r3, 0x0
.L_814CFF60:
/* 814CFF60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CFF64 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CFF68 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CFF6C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814CFF70 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814CFF74 | 7C 08 03 A6 */	mtlr r0
/* 814CFF78 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CFF7C | 4E 80 00 20 */	blr
.endfn VFiActivateDriveCommon

# .text:0x248 | 0x814CFF80 | size: 0x18C
.fn VFMountDriveNANDFlash, global
/* 814CFF80 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CFF84 | 7C 08 02 A6 */	mflr r0
/* 814CFF88 | 3C A0 00 01 */	lis r5, 0x1
/* 814CFF8C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CFF90 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CFF94 | 3B E5 B0 04 */	subi r31, r5, 0x4ffc
/* 814CFF98 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CFF9C | 7C 9E 23 78 */	mr r30, r4
/* 814CFFA0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814CFFA4 | 7C 7D 1B 78 */	mr r29, r3
/* 814CFFA8 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814CFFAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CFFB0 | 41 82 00 10 */	beq .L_814CFFC0
/* 814CFFB4 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814CFFB8 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814CFFBC | 48 06 1C 4D */	bl fn_81531C08
.L_814CFFC0:
/* 814CFFC0 | 7F A3 EB 78 */	mr r3, r29
/* 814CFFC4 | 48 00 4A D5 */	bl dHash_GetArg
/* 814CFFC8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814CFFCC | 40 82 00 38 */	bne .L_814D0004
/* 814CFFD0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFFD4 | 38 80 00 00 */	li r4, 0x0
/* 814CFFD8 | 38 A0 00 00 */	li r5, 0x0
/* 814CFFDC | 48 00 26 CD */	bl VFSysSetDeviceNANDFlash
/* 814CFFE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFFE4 | 7C 7F 1B 78 */	mr r31, r3
/* 814CFFE8 | 40 82 00 1C */	bne .L_814D0004
/* 814CFFEC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814CFFF0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814CFFF4 | 41 82 00 10 */	beq .L_814D0004
/* 814CFFF8 | 7F A3 EB 78 */	mr r3, r29
/* 814CFFFC | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814D0000 | 48 00 4A F9 */	bl dHash_SetArg
.L_814D0004:
/* 814D0004 | 7F E3 FB 78 */	mr r3, r31
/* 814D0008 | 48 00 45 91 */	bl VFSysSetLastError
/* 814D000C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0010 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0014 | 41 82 00 10 */	beq .L_814D0024
/* 814D0018 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D001C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0020 | 48 06 1C C5 */	bl fn_81531CE4
.L_814D0024:
/* 814D0024 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D0028 | 41 82 00 10 */	beq .L_814D0038
/* 814D002C | 3C 1F 00 00 */	addis r0, r31, 0x0
/* 814D0030 | 28 00 B0 04 */	cmplwi r0, 0xb004
/* 814D0034 | 40 82 00 B8 */	bne .L_814D00EC
.L_814D0038:
/* 814D0038 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D003C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0040 | 41 82 00 10 */	beq .L_814D0050
/* 814D0044 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0048 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D004C | 48 06 1B BD */	bl fn_81531C08
.L_814D0050:
/* 814D0050 | 7F A3 EB 78 */	mr r3, r29
/* 814D0054 | 48 00 4A 45 */	bl dHash_GetArg
/* 814D0058 | 7C 7F 1B 78 */	mr r31, r3
/* 814D005C | 48 00 16 E9 */	bl VFSysSetNandFuncNormal
/* 814D0060 | 7F E3 FB 78 */	mr r3, r31
/* 814D0064 | 7F C4 F3 78 */	mr r4, r30
/* 814D0068 | 38 A0 00 00 */	li r5, 0x0
/* 814D006C | 4B FF FE 21 */	bl VFiActivateDriveCommon
/* 814D0070 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0074 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0078 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D007C | 41 82 00 10 */	beq .L_814D008C
/* 814D0080 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0084 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0088 | 48 06 1C 5D */	bl fn_81531CE4
.L_814D008C:
/* 814D008C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D0090 | 41 82 00 5C */	beq .L_814D00EC
/* 814D0094 | 3C 1F 00 00 */	addis r0, r31, 0x0
/* 814D0098 | 28 00 B0 05 */	cmplwi r0, 0xb005
/* 814D009C | 41 82 00 50 */	beq .L_814D00EC
/* 814D00A0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D00A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D00A8 | 41 82 00 10 */	beq .L_814D00B8
/* 814D00AC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D00B0 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D00B4 | 48 06 1B 55 */	bl fn_81531C08
.L_814D00B8:
/* 814D00B8 | 7F A3 EB 78 */	mr r3, r29
/* 814D00BC | 48 00 49 DD */	bl dHash_GetArg
/* 814D00C0 | 48 00 29 4D */	bl VFSysUnsetDevice
/* 814D00C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D00C8 | 40 82 00 0C */	bne .L_814D00D4
/* 814D00CC | 7F A3 EB 78 */	mr r3, r29
/* 814D00D0 | 48 00 4C 11 */	bl dHash_DeleteData
.L_814D00D4:
/* 814D00D4 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D00D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D00DC | 41 82 00 10 */	beq .L_814D00EC
/* 814D00E0 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D00E4 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D00E8 | 48 06 1B FD */	bl fn_81531CE4
.L_814D00EC:
/* 814D00EC | 7F E3 FB 78 */	mr r3, r31
/* 814D00F0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D00F4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D00F8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D00FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0100 | 7C 08 03 A6 */	mtlr r0
/* 814D0104 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0108 | 4E 80 00 20 */	blr
.endfn VFMountDriveNANDFlash

# .text:0x3D4 | 0x814D010C | size: 0x18C
.fn VFMountDriveNANDFlashEx, global
/* 814D010C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0110 | 7C 08 02 A6 */	mflr r0
/* 814D0114 | 3C A0 00 01 */	lis r5, 0x1
/* 814D0118 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D011C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0120 | 3B E5 B0 04 */	subi r31, r5, 0x4ffc
/* 814D0124 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D0128 | 7C 9E 23 78 */	mr r30, r4
/* 814D012C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D0130 | 7C 7D 1B 78 */	mr r29, r3
/* 814D0134 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0138 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D013C | 41 82 00 10 */	beq .L_814D014C
/* 814D0140 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0144 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0148 | 48 06 1A C1 */	bl fn_81531C08
.L_814D014C:
/* 814D014C | 7F A3 EB 78 */	mr r3, r29
/* 814D0150 | 48 00 49 49 */	bl dHash_GetArg
/* 814D0154 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814D0158 | 40 82 00 38 */	bne .L_814D0190
/* 814D015C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D0160 | 38 80 00 00 */	li r4, 0x0
/* 814D0164 | 38 A0 00 00 */	li r5, 0x0
/* 814D0168 | 48 00 25 41 */	bl VFSysSetDeviceNANDFlash
/* 814D016C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0170 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0174 | 40 82 00 1C */	bne .L_814D0190
/* 814D0178 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D017C | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D0180 | 41 82 00 10 */	beq .L_814D0190
/* 814D0184 | 7F A3 EB 78 */	mr r3, r29
/* 814D0188 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814D018C | 48 00 49 6D */	bl dHash_SetArg
.L_814D0190:
/* 814D0190 | 7F E3 FB 78 */	mr r3, r31
/* 814D0194 | 48 00 44 05 */	bl VFSysSetLastError
/* 814D0198 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D019C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D01A0 | 41 82 00 10 */	beq .L_814D01B0
/* 814D01A4 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D01A8 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D01AC | 48 06 1B 39 */	bl fn_81531CE4
.L_814D01B0:
/* 814D01B0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D01B4 | 41 82 00 10 */	beq .L_814D01C4
/* 814D01B8 | 3C 1F 00 00 */	addis r0, r31, 0x0
/* 814D01BC | 28 00 B0 04 */	cmplwi r0, 0xb004
/* 814D01C0 | 40 82 00 B8 */	bne .L_814D0278
.L_814D01C4:
/* 814D01C4 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D01C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D01CC | 41 82 00 10 */	beq .L_814D01DC
/* 814D01D0 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D01D4 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D01D8 | 48 06 1A 31 */	bl fn_81531C08
.L_814D01DC:
/* 814D01DC | 7F A3 EB 78 */	mr r3, r29
/* 814D01E0 | 48 00 48 B9 */	bl dHash_GetArg
/* 814D01E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D01E8 | 48 00 15 61 */	bl VFSysSetNandFuncEx
/* 814D01EC | 7F E3 FB 78 */	mr r3, r31
/* 814D01F0 | 7F C4 F3 78 */	mr r4, r30
/* 814D01F4 | 38 A0 00 00 */	li r5, 0x0
/* 814D01F8 | 4B FF FC 95 */	bl VFiActivateDriveCommon
/* 814D01FC | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0200 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0204 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0208 | 41 82 00 10 */	beq .L_814D0218
/* 814D020C | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0210 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0214 | 48 06 1A D1 */	bl fn_81531CE4
.L_814D0218:
/* 814D0218 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D021C | 41 82 00 5C */	beq .L_814D0278
/* 814D0220 | 3C 1F 00 00 */	addis r0, r31, 0x0
/* 814D0224 | 28 00 B0 05 */	cmplwi r0, 0xb005
/* 814D0228 | 41 82 00 50 */	beq .L_814D0278
/* 814D022C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0230 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0234 | 41 82 00 10 */	beq .L_814D0244
/* 814D0238 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D023C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0240 | 48 06 19 C9 */	bl fn_81531C08
.L_814D0244:
/* 814D0244 | 7F A3 EB 78 */	mr r3, r29
/* 814D0248 | 48 00 48 51 */	bl dHash_GetArg
/* 814D024C | 48 00 27 C1 */	bl VFSysUnsetDevice
/* 814D0250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0254 | 40 82 00 0C */	bne .L_814D0260
/* 814D0258 | 7F A3 EB 78 */	mr r3, r29
/* 814D025C | 48 00 4A 85 */	bl dHash_DeleteData
.L_814D0260:
/* 814D0260 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0264 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0268 | 41 82 00 10 */	beq .L_814D0278
/* 814D026C | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0270 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0274 | 48 06 1A 71 */	bl fn_81531CE4
.L_814D0278:
/* 814D0278 | 7F E3 FB 78 */	mr r3, r31
/* 814D027C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0280 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D0284 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D0288 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D028C | 7C 08 03 A6 */	mtlr r0
/* 814D0290 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0294 | 4E 80 00 20 */	blr
.endfn VFMountDriveNANDFlashEx

# .text:0x560 | 0x814D0298 | size: 0x18C
.fn VFMountDriveNANDFlashCacheEx, global
/* 814D0298 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D029C | 7C 08 02 A6 */	mflr r0
/* 814D02A0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D02A4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D02A8 | 48 12 92 19 */	bl _savegpr_27
/* 814D02AC | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D02B0 | 3C E0 00 01 */	lis r7, 0x1
/* 814D02B4 | 7C 7B 1B 78 */	mr r27, r3
/* 814D02B8 | 7C 9C 23 78 */	mr r28, r4
/* 814D02BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D02C0 | 7C BD 2B 78 */	mr r29, r5
/* 814D02C4 | 7C DE 33 78 */	mr r30, r6
/* 814D02C8 | 3B E7 B0 04 */	subi r31, r7, 0x4ffc
/* 814D02CC | 41 82 00 10 */	beq .L_814D02DC
/* 814D02D0 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D02D4 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D02D8 | 48 06 19 31 */	bl fn_81531C08
.L_814D02DC:
/* 814D02DC | 7F 63 DB 78 */	mr r3, r27
/* 814D02E0 | 48 00 47 B9 */	bl dHash_GetArg
/* 814D02E4 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814D02E8 | 40 82 00 38 */	bne .L_814D0320
/* 814D02EC | 7F A4 EB 78 */	mr r4, r29
/* 814D02F0 | 7F C5 F3 78 */	mr r5, r30
/* 814D02F4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D02F8 | 48 00 23 B1 */	bl VFSysSetDeviceNANDFlash
/* 814D02FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0300 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0304 | 40 82 00 1C */	bne .L_814D0320
/* 814D0308 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D030C | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D0310 | 41 82 00 10 */	beq .L_814D0320
/* 814D0314 | 7F 63 DB 78 */	mr r3, r27
/* 814D0318 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814D031C | 48 00 47 DD */	bl dHash_SetArg
.L_814D0320:
/* 814D0320 | 7F E3 FB 78 */	mr r3, r31
/* 814D0324 | 48 00 42 75 */	bl VFSysSetLastError
/* 814D0328 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D032C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0330 | 41 82 00 10 */	beq .L_814D0340
/* 814D0334 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0338 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D033C | 48 06 19 A9 */	bl fn_81531CE4
.L_814D0340:
/* 814D0340 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D0344 | 41 82 00 10 */	beq .L_814D0354
/* 814D0348 | 3C 1F 00 00 */	addis r0, r31, 0x0
/* 814D034C | 28 00 B0 04 */	cmplwi r0, 0xb004
/* 814D0350 | 40 82 00 B8 */	bne .L_814D0408
.L_814D0354:
/* 814D0354 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0358 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D035C | 41 82 00 10 */	beq .L_814D036C
/* 814D0360 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0364 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0368 | 48 06 18 A1 */	bl fn_81531C08
.L_814D036C:
/* 814D036C | 7F 63 DB 78 */	mr r3, r27
/* 814D0370 | 48 00 47 29 */	bl dHash_GetArg
/* 814D0374 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0378 | 48 00 13 D1 */	bl VFSysSetNandFuncEx
/* 814D037C | 7F E3 FB 78 */	mr r3, r31
/* 814D0380 | 7F 84 E3 78 */	mr r4, r28
/* 814D0384 | 38 A0 00 00 */	li r5, 0x0
/* 814D0388 | 4B FF FB 05 */	bl VFiActivateDriveCommon
/* 814D038C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0390 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0394 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0398 | 41 82 00 10 */	beq .L_814D03A8
/* 814D039C | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D03A0 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D03A4 | 48 06 19 41 */	bl fn_81531CE4
.L_814D03A8:
/* 814D03A8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D03AC | 41 82 00 5C */	beq .L_814D0408
/* 814D03B0 | 3C 1F 00 00 */	addis r0, r31, 0x0
/* 814D03B4 | 28 00 B0 05 */	cmplwi r0, 0xb005
/* 814D03B8 | 41 82 00 50 */	beq .L_814D0408
/* 814D03BC | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D03C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D03C4 | 41 82 00 10 */	beq .L_814D03D4
/* 814D03C8 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D03CC | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D03D0 | 48 06 18 39 */	bl fn_81531C08
.L_814D03D4:
/* 814D03D4 | 7F 63 DB 78 */	mr r3, r27
/* 814D03D8 | 48 00 46 C1 */	bl dHash_GetArg
/* 814D03DC | 48 00 26 31 */	bl VFSysUnsetDevice
/* 814D03E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D03E4 | 40 82 00 0C */	bne .L_814D03F0
/* 814D03E8 | 7F 63 DB 78 */	mr r3, r27
/* 814D03EC | 48 00 48 F5 */	bl dHash_DeleteData
.L_814D03F0:
/* 814D03F0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D03F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D03F8 | 41 82 00 10 */	beq .L_814D0408
/* 814D03FC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0400 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0404 | 48 06 18 E1 */	bl fn_81531CE4
.L_814D0408:
/* 814D0408 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D040C | 7F E3 FB 78 */	mr r3, r31
/* 814D0410 | 48 12 90 FD */	bl _restgpr_27
/* 814D0414 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D0418 | 7C 08 03 A6 */	mtlr r0
/* 814D041C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D0420 | 4E 80 00 20 */	blr
.endfn VFMountDriveNANDFlashCacheEx

# .text:0x6EC | 0x814D0424 | size: 0x10
.fn VFMountDriveSDDirectEx, global
/* 814D0424 | 7C A7 2B 78 */	mr r7, r5
/* 814D0428 | 38 A0 00 00 */	li r5, 0x0
/* 814D042C | 38 C0 00 00 */	li r6, 0x0
/* 814D0430 | 48 00 00 04 */	b VFiMountDriveSDDirectCommon
.endfn VFMountDriveSDDirectEx

# .text:0x6FC | 0x814D0434 | size: 0x224
.fn VFiMountDriveSDDirectCommon, global
/* 814D0434 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D0438 | 7C 08 02 A6 */	mflr r0
/* 814D043C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D0440 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D0444 | 48 12 90 79 */	bl _savegpr_26
/* 814D0448 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D044C | 3D 00 00 01 */	lis r8, 0x1
/* 814D0450 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0454 | 7C 9A 23 78 */	mr r26, r4
/* 814D0458 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D045C | 7C BB 2B 78 */	mr r27, r5
/* 814D0460 | 7C DC 33 78 */	mr r28, r6
/* 814D0464 | 7C FD 3B 78 */	mr r29, r7
/* 814D0468 | 3B C8 B0 04 */	subi r30, r8, 0x4ffc
/* 814D046C | 41 82 00 10 */	beq .L_814D047C
/* 814D0470 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0474 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0478 | 48 06 17 91 */	bl fn_81531C08
.L_814D047C:
/* 814D047C | 7F E3 FB 78 */	mr r3, r31
/* 814D0480 | 48 00 46 19 */	bl dHash_GetArg
/* 814D0484 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814D0488 | 40 82 00 40 */	bne .L_814D04C8
/* 814D048C | 7F 44 D3 78 */	mr r4, r26
/* 814D0490 | 7F 65 DB 78 */	mr r5, r27
/* 814D0494 | 7F 86 E3 78 */	mr r6, r28
/* 814D0498 | 7F A7 EB 78 */	mr r7, r29
/* 814D049C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D04A0 | 48 00 23 F5 */	bl VFSysSetDeviceSDDirect
/* 814D04A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D04A8 | 7C 7E 1B 78 */	mr r30, r3
/* 814D04AC | 40 82 00 1C */	bne .L_814D04C8
/* 814D04B0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D04B4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D04B8 | 41 82 00 10 */	beq .L_814D04C8
/* 814D04BC | 7F E3 FB 78 */	mr r3, r31
/* 814D04C0 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814D04C4 | 48 00 46 35 */	bl dHash_SetArg
.L_814D04C8:
/* 814D04C8 | 7F C3 F3 78 */	mr r3, r30
/* 814D04CC | 48 00 40 CD */	bl VFSysSetLastError
/* 814D04D0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D04D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D04D8 | 41 82 00 10 */	beq .L_814D04E8
/* 814D04DC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D04E0 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D04E4 | 48 06 18 01 */	bl fn_81531CE4
.L_814D04E8:
/* 814D04E8 | 3C 1E 00 00 */	addis r0, r30, 0x0
/* 814D04EC | 28 00 B0 04 */	cmplwi r0, 0xb004
/* 814D04F0 | 40 82 00 84 */	bne .L_814D0574
/* 814D04F4 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D04F8 | 3B A0 00 00 */	li r29, 0x0
/* 814D04FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0500 | 41 82 00 10 */	beq .L_814D0510
/* 814D0504 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0508 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D050C | 48 06 16 FD */	bl fn_81531C08
.L_814D0510:
/* 814D0510 | 7F E3 FB 78 */	mr r3, r31
/* 814D0514 | 48 00 45 85 */	bl dHash_GetArg
/* 814D0518 | 48 00 24 A1 */	bl VFSysGetSlotNoSDDirect
/* 814D051C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814D0520 | 40 82 00 14 */	bne .L_814D0534
/* 814D0524 | 3B A0 FF FF */	li r29, -0x1
/* 814D0528 | 38 60 FF FF */	li r3, -0x1
/* 814D052C | 48 00 40 6D */	bl VFSysSetLastError
/* 814D0530 | 48 00 00 1C */	b .L_814D054C
.L_814D0534:
/* 814D0534 | 7C 03 D0 40 */	cmplw r3, r26
/* 814D0538 | 41 82 00 14 */	beq .L_814D054C
/* 814D053C | 3C 60 00 01 */	lis r3, 0x1
/* 814D0540 | 3B A3 B0 04 */	subi r29, r3, 0x4ffc
/* 814D0544 | 7F A3 EB 78 */	mr r3, r29
/* 814D0548 | 48 00 40 51 */	bl VFSysSetLastError
.L_814D054C:
/* 814D054C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0550 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0554 | 41 82 00 10 */	beq .L_814D0564
/* 814D0558 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D055C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0560 | 48 06 17 85 */	bl fn_81531CE4
.L_814D0564:
/* 814D0564 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D0568 | 41 82 00 0C */	beq .L_814D0574
/* 814D056C | 7F A3 EB 78 */	mr r3, r29
/* 814D0570 | 48 00 00 D0 */	b .L_814D0640
.L_814D0574:
/* 814D0574 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D0578 | 41 82 00 10 */	beq .L_814D0588
/* 814D057C | 3C 1E 00 00 */	addis r0, r30, 0x0
/* 814D0580 | 28 00 B0 04 */	cmplwi r0, 0xb004
/* 814D0584 | 40 82 00 B8 */	bne .L_814D063C
.L_814D0588:
/* 814D0588 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D058C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0590 | 41 82 00 10 */	beq .L_814D05A0
/* 814D0594 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0598 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D059C | 48 06 16 6D */	bl fn_81531C08
.L_814D05A0:
/* 814D05A0 | 7F E3 FB 78 */	mr r3, r31
/* 814D05A4 | 48 00 44 F5 */	bl dHash_GetArg
/* 814D05A8 | 7C 7E 1B 78 */	mr r30, r3
/* 814D05AC | 48 00 11 99 */	bl VFSysSetNandFuncNormal
/* 814D05B0 | 7F C3 F3 78 */	mr r3, r30
/* 814D05B4 | 38 80 00 00 */	li r4, 0x0
/* 814D05B8 | 38 A0 00 00 */	li r5, 0x0
/* 814D05BC | 4B FF F8 D1 */	bl VFiActivateDriveCommon
/* 814D05C0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D05C4 | 7C 7E 1B 78 */	mr r30, r3
/* 814D05C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D05CC | 41 82 00 10 */	beq .L_814D05DC
/* 814D05D0 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D05D4 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D05D8 | 48 06 17 0D */	bl fn_81531CE4
.L_814D05DC:
/* 814D05DC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D05E0 | 41 82 00 5C */	beq .L_814D063C
/* 814D05E4 | 3C 1E 00 00 */	addis r0, r30, 0x0
/* 814D05E8 | 28 00 B0 05 */	cmplwi r0, 0xb005
/* 814D05EC | 41 82 00 50 */	beq .L_814D063C
/* 814D05F0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D05F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D05F8 | 41 82 00 10 */	beq .L_814D0608
/* 814D05FC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0600 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0604 | 48 06 16 05 */	bl fn_81531C08
.L_814D0608:
/* 814D0608 | 7F E3 FB 78 */	mr r3, r31
/* 814D060C | 48 00 44 8D */	bl dHash_GetArg
/* 814D0610 | 48 00 23 FD */	bl VFSysUnsetDevice
/* 814D0614 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0618 | 40 82 00 0C */	bne .L_814D0624
/* 814D061C | 7F E3 FB 78 */	mr r3, r31
/* 814D0620 | 48 00 46 C1 */	bl dHash_DeleteData
.L_814D0624:
/* 814D0624 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0628 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D062C | 41 82 00 10 */	beq .L_814D063C
/* 814D0630 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0634 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0638 | 48 06 16 AD */	bl fn_81531CE4
.L_814D063C:
/* 814D063C | 7F C3 F3 78 */	mr r3, r30
.L_814D0640:
/* 814D0640 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D0644 | 48 12 8E C5 */	bl _restgpr_26
/* 814D0648 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D064C | 7C 08 03 A6 */	mtlr r0
/* 814D0650 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D0654 | 4E 80 00 20 */	blr
.endfn VFiMountDriveSDDirectCommon

# .text:0x920 | 0x814D0658 | size: 0xDC
.fn VFUnmountDrive, global
/* 814D0658 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D065C | 7C 08 02 A6 */	mflr r0
/* 814D0660 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D0664 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D0668 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D066C | 7C 7E 1B 78 */	mr r30, r3
/* 814D0670 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0674 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0678 | 41 82 00 10 */	beq .L_814D0688
/* 814D067C | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0680 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0684 | 48 06 15 85 */	bl fn_81531C08
.L_814D0688:
/* 814D0688 | 7F C3 F3 78 */	mr r3, r30
/* 814D068C | 48 00 44 0D */	bl dHash_GetArg
/* 814D0690 | 38 80 00 00 */	li r4, 0x0
/* 814D0694 | 48 00 1D 31 */	bl VFSysUnmountDrv
/* 814D0698 | 7C 7F 1B 78 */	mr r31, r3
/* 814D069C | 48 00 3E FD */	bl VFSysSetLastError
/* 814D06A0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D06A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D06A8 | 41 82 00 10 */	beq .L_814D06B8
/* 814D06AC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D06B0 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D06B4 | 48 06 16 31 */	bl fn_81531CE4
.L_814D06B8:
/* 814D06B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D06BC | 40 82 00 5C */	bne .L_814D0718
/* 814D06C0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D06C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D06C8 | 41 82 00 10 */	beq .L_814D06D8
/* 814D06CC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D06D0 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D06D4 | 48 06 15 35 */	bl fn_81531C08
.L_814D06D8:
/* 814D06D8 | 7F C3 F3 78 */	mr r3, r30
/* 814D06DC | 48 00 43 BD */	bl dHash_GetArg
/* 814D06E0 | 48 00 23 2D */	bl VFSysUnsetDevice
/* 814D06E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D06E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814D06EC | 40 82 00 0C */	bne .L_814D06F8
/* 814D06F0 | 7F C3 F3 78 */	mr r3, r30
/* 814D06F4 | 48 00 45 ED */	bl dHash_DeleteData
.L_814D06F8:
/* 814D06F8 | 7F E3 FB 78 */	mr r3, r31
/* 814D06FC | 48 00 3E 9D */	bl VFSysSetLastError
/* 814D0700 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0704 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0708 | 41 82 00 10 */	beq .L_814D0718
/* 814D070C | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0710 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0714 | 48 06 15 D1 */	bl fn_81531CE4
.L_814D0718:
/* 814D0718 | 7F E3 FB 78 */	mr r3, r31
/* 814D071C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D0720 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D0724 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D0728 | 7C 08 03 A6 */	mtlr r0
/* 814D072C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D0730 | 4E 80 00 20 */	blr
.endfn VFUnmountDrive

# .text:0x9FC | 0x814D0734 | size: 0xDC
.fn VFUnmountDriveForce, global
/* 814D0734 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D0738 | 7C 08 02 A6 */	mflr r0
/* 814D073C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D0740 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D0744 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D0748 | 7C 7E 1B 78 */	mr r30, r3
/* 814D074C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0750 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0754 | 41 82 00 10 */	beq .L_814D0764
/* 814D0758 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D075C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0760 | 48 06 14 A9 */	bl fn_81531C08
.L_814D0764:
/* 814D0764 | 7F C3 F3 78 */	mr r3, r30
/* 814D0768 | 48 00 43 31 */	bl dHash_GetArg
/* 814D076C | 38 80 00 01 */	li r4, 0x1
/* 814D0770 | 48 00 1C 55 */	bl VFSysUnmountDrv
/* 814D0774 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0778 | 48 00 3E 21 */	bl VFSysSetLastError
/* 814D077C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0780 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0784 | 41 82 00 10 */	beq .L_814D0794
/* 814D0788 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D078C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0790 | 48 06 15 55 */	bl fn_81531CE4
.L_814D0794:
/* 814D0794 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D0798 | 40 82 00 5C */	bne .L_814D07F4
/* 814D079C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D07A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D07A4 | 41 82 00 10 */	beq .L_814D07B4
/* 814D07A8 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D07AC | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D07B0 | 48 06 14 59 */	bl fn_81531C08
.L_814D07B4:
/* 814D07B4 | 7F C3 F3 78 */	mr r3, r30
/* 814D07B8 | 48 00 42 E1 */	bl dHash_GetArg
/* 814D07BC | 48 00 22 51 */	bl VFSysUnsetDevice
/* 814D07C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D07C4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D07C8 | 40 82 00 0C */	bne .L_814D07D4
/* 814D07CC | 7F C3 F3 78 */	mr r3, r30
/* 814D07D0 | 48 00 45 11 */	bl dHash_DeleteData
.L_814D07D4:
/* 814D07D4 | 7F E3 FB 78 */	mr r3, r31
/* 814D07D8 | 48 00 3D C1 */	bl VFSysSetLastError
/* 814D07DC | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D07E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D07E4 | 41 82 00 10 */	beq .L_814D07F4
/* 814D07E8 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D07EC | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D07F0 | 48 06 14 F5 */	bl fn_81531CE4
.L_814D07F4:
/* 814D07F4 | 7F E3 FB 78 */	mr r3, r31
/* 814D07F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D07FC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D0800 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D0804 | 7C 08 03 A6 */	mtlr r0
/* 814D0808 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D080C | 4E 80 00 20 */	blr
.endfn VFUnmountDriveForce

# .text:0xAD8 | 0x814D0810 | size: 0xB0
.fn VFCreateFile, global
/* 814D0810 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0814 | 7C 08 02 A6 */	mflr r0
/* 814D0818 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D081C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0820 | 3B E0 00 00 */	li r31, 0x0
/* 814D0824 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D0828 | 7C 7E 1B 78 */	mr r30, r3
/* 814D082C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0830 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0834 | 41 82 00 10 */	beq .L_814D0844
/* 814D0838 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D083C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0840 | 48 06 13 C9 */	bl fn_81531C08
.L_814D0844:
/* 814D0844 | 7F C4 F3 78 */	mr r4, r30
/* 814D0848 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D084C | 48 00 0C 99 */	bl VFiPath2HandleIndex
/* 814D0850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0854 | 7C 64 1B 78 */	mr r4, r3
/* 814D0858 | 40 82 00 14 */	bne .L_814D086C
/* 814D085C | 3C 60 00 01 */	lis r3, 0x1
/* 814D0860 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D0864 | 48 00 3D 35 */	bl VFSysSetLastError
/* 814D0868 | 48 00 00 24 */	b .L_814D088C
.L_814D086C:
/* 814D086C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D0870 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D0874 | 41 82 00 10 */	beq .L_814D0884
/* 814D0878 | 7C 03 03 78 */	mr r3, r0
/* 814D087C | 48 00 28 61 */	bl VFSysCreateFile
/* 814D0880 | 48 00 00 08 */	b .L_814D0888
.L_814D0884:
/* 814D0884 | 48 00 29 89 */	bl VFSysCreateFile_current
.L_814D0888:
/* 814D0888 | 7C 7F 1B 78 */	mr r31, r3
.L_814D088C:
/* 814D088C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0890 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0894 | 41 82 00 10 */	beq .L_814D08A4
/* 814D0898 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D089C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D08A0 | 48 06 14 45 */	bl fn_81531CE4
.L_814D08A4:
/* 814D08A4 | 7F E3 FB 78 */	mr r3, r31
/* 814D08A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D08AC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D08B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D08B4 | 7C 08 03 A6 */	mtlr r0
/* 814D08B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D08BC | 4E 80 00 20 */	blr
.endfn VFCreateFile

# .text:0xB88 | 0x814D08C0 | size: 0xC4
.fn VFOpenFile, global
/* 814D08C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D08C4 | 7C 08 02 A6 */	mflr r0
/* 814D08C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D08CC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D08D0 | 3B E0 00 00 */	li r31, 0x0
/* 814D08D4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D08D8 | 7C 9E 23 78 */	mr r30, r4
/* 814D08DC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D08E0 | 7C 7D 1B 78 */	mr r29, r3
/* 814D08E4 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D08E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D08EC | 41 82 00 10 */	beq .L_814D08FC
/* 814D08F0 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D08F4 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D08F8 | 48 06 13 11 */	bl fn_81531C08
.L_814D08FC:
/* 814D08FC | 7F A4 EB 78 */	mr r4, r29
/* 814D0900 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D0904 | 48 00 0B E1 */	bl VFiPath2HandleIndex
/* 814D0908 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D090C | 7C 64 1B 78 */	mr r4, r3
/* 814D0910 | 40 82 00 14 */	bne .L_814D0924
/* 814D0914 | 3C 60 00 01 */	lis r3, 0x1
/* 814D0918 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D091C | 48 00 3C 7D */	bl VFSysSetLastError
/* 814D0920 | 48 00 00 2C */	b .L_814D094C
.L_814D0924:
/* 814D0924 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D0928 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D092C | 41 82 00 14 */	beq .L_814D0940
/* 814D0930 | 7C 03 03 78 */	mr r3, r0
/* 814D0934 | 7F C5 F3 78 */	mr r5, r30
/* 814D0938 | 48 00 29 B5 */	bl VFSysOpenFile
/* 814D093C | 48 00 00 0C */	b .L_814D0948
.L_814D0940:
/* 814D0940 | 7F C4 F3 78 */	mr r4, r30
/* 814D0944 | 48 00 2A E5 */	bl VFSysOpenFile_current
.L_814D0948:
/* 814D0948 | 7C 7F 1B 78 */	mr r31, r3
.L_814D094C:
/* 814D094C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0950 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0954 | 41 82 00 10 */	beq .L_814D0964
/* 814D0958 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D095C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0960 | 48 06 13 85 */	bl fn_81531CE4
.L_814D0964:
/* 814D0964 | 7F E3 FB 78 */	mr r3, r31
/* 814D0968 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D096C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D0970 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D0974 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0978 | 7C 08 03 A6 */	mtlr r0
/* 814D097C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0980 | 4E 80 00 20 */	blr
.endfn VFOpenFile

# .text:0xC4C | 0x814D0984 | size: 0x6C
.fn VFCloseFile, global
/* 814D0984 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D0988 | 7C 08 02 A6 */	mflr r0
/* 814D098C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D0990 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D0994 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0998 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D099C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D09A0 | 41 82 00 10 */	beq .L_814D09B0
/* 814D09A4 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D09A8 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D09AC | 48 06 12 5D */	bl fn_81531C08
.L_814D09B0:
/* 814D09B0 | 7F E3 FB 78 */	mr r3, r31
/* 814D09B4 | 48 00 2B 61 */	bl VFSysCloseFile
/* 814D09B8 | 7C 7F 1B 78 */	mr r31, r3
/* 814D09BC | 48 00 3B DD */	bl VFSysSetLastError
/* 814D09C0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D09C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D09C8 | 41 82 00 10 */	beq .L_814D09D8
/* 814D09CC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D09D0 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D09D4 | 48 06 13 11 */	bl fn_81531CE4
.L_814D09D8:
/* 814D09D8 | 7F E3 FB 78 */	mr r3, r31
/* 814D09DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D09E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D09E4 | 7C 08 03 A6 */	mtlr r0
/* 814D09E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D09EC | 4E 80 00 20 */	blr
.endfn VFCloseFile

# .text:0xCB8 | 0x814D09F0 | size: 0x8C
.fn VFSeekFile, global
/* 814D09F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D09F4 | 7C 08 02 A6 */	mflr r0
/* 814D09F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D09FC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0A00 | 7C BF 2B 78 */	mr r31, r5
/* 814D0A04 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D0A08 | 7C 9E 23 78 */	mr r30, r4
/* 814D0A0C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D0A10 | 7C 7D 1B 78 */	mr r29, r3
/* 814D0A14 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0A18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0A1C | 41 82 00 10 */	beq .L_814D0A2C
/* 814D0A20 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0A24 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0A28 | 48 06 11 E1 */	bl fn_81531C08
.L_814D0A2C:
/* 814D0A2C | 7F A3 EB 78 */	mr r3, r29
/* 814D0A30 | 7F C4 F3 78 */	mr r4, r30
/* 814D0A34 | 7F E5 FB 78 */	mr r5, r31
/* 814D0A38 | 48 00 2B C5 */	bl VFSysSeekFile
/* 814D0A3C | 7C 7F 1B 78 */	mr r31, r3
/* 814D0A40 | 48 00 3B 59 */	bl VFSysSetLastError
/* 814D0A44 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0A48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0A4C | 41 82 00 10 */	beq .L_814D0A5C
/* 814D0A50 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0A54 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0A58 | 48 06 12 8D */	bl fn_81531CE4
.L_814D0A5C:
/* 814D0A5C | 7F E3 FB 78 */	mr r3, r31
/* 814D0A60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0A64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D0A68 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D0A6C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0A70 | 7C 08 03 A6 */	mtlr r0
/* 814D0A74 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0A78 | 4E 80 00 20 */	blr
.endfn VFSeekFile

# .text:0xD44 | 0x814D0A7C | size: 0x9C
.fn VFReadFile, global
/* 814D0A7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0A80 | 7C 08 02 A6 */	mflr r0
/* 814D0A84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D0A88 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0A8C | 7C DF 33 78 */	mr r31, r6
/* 814D0A90 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D0A94 | 7C BE 2B 78 */	mr r30, r5
/* 814D0A98 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D0A9C | 7C 9D 23 78 */	mr r29, r4
/* 814D0AA0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814D0AA4 | 7C 7C 1B 78 */	mr r28, r3
/* 814D0AA8 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0AAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0AB0 | 41 82 00 10 */	beq .L_814D0AC0
/* 814D0AB4 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0AB8 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0ABC | 48 06 11 4D */	bl fn_81531C08
.L_814D0AC0:
/* 814D0AC0 | 7F E3 FB 78 */	mr r3, r31
/* 814D0AC4 | 7F A4 EB 78 */	mr r4, r29
/* 814D0AC8 | 7F C5 F3 78 */	mr r5, r30
/* 814D0ACC | 7F 86 E3 78 */	mr r6, r28
/* 814D0AD0 | 48 00 2C 35 */	bl VFSysReadFile
/* 814D0AD4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0AD8 | 48 00 3A C1 */	bl VFSysSetLastError
/* 814D0ADC | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0AE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0AE4 | 41 82 00 10 */	beq .L_814D0AF4
/* 814D0AE8 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0AEC | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0AF0 | 48 06 11 F5 */	bl fn_81531CE4
.L_814D0AF4:
/* 814D0AF4 | 7F E3 FB 78 */	mr r3, r31
/* 814D0AF8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0AFC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D0B00 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D0B04 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814D0B08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0B0C | 7C 08 03 A6 */	mtlr r0
/* 814D0B10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0B14 | 4E 80 00 20 */	blr
.endfn VFReadFile

# .text:0xDE0 | 0x814D0B18 | size: 0x8C
.fn VFWriteFile, global
/* 814D0B18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0B1C | 7C 08 02 A6 */	mflr r0
/* 814D0B20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D0B24 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0B28 | 7C BF 2B 78 */	mr r31, r5
/* 814D0B2C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D0B30 | 7C 9E 23 78 */	mr r30, r4
/* 814D0B34 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D0B38 | 7C 7D 1B 78 */	mr r29, r3
/* 814D0B3C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0B40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0B44 | 41 82 00 10 */	beq .L_814D0B54
/* 814D0B48 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0B4C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0B50 | 48 06 10 B9 */	bl fn_81531C08
.L_814D0B54:
/* 814D0B54 | 7F C3 F3 78 */	mr r3, r30
/* 814D0B58 | 7F E4 FB 78 */	mr r4, r31
/* 814D0B5C | 7F A5 EB 78 */	mr r5, r29
/* 814D0B60 | 48 00 2D 1D */	bl VFSysWriteFile
/* 814D0B64 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0B68 | 48 00 3A 31 */	bl VFSysSetLastError
/* 814D0B6C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0B70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0B74 | 41 82 00 10 */	beq .L_814D0B84
/* 814D0B78 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0B7C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0B80 | 48 06 11 65 */	bl fn_81531CE4
.L_814D0B84:
/* 814D0B84 | 7F E3 FB 78 */	mr r3, r31
/* 814D0B88 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0B8C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D0B90 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D0B94 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0B98 | 7C 08 03 A6 */	mtlr r0
/* 814D0B9C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0BA0 | 4E 80 00 20 */	blr
.endfn VFWriteFile

# .text:0xE6C | 0x814D0BA4 | size: 0xA8
.fn VFDeleteFile, global
/* 814D0BA4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0BA8 | 7C 08 02 A6 */	mflr r0
/* 814D0BAC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D0BB0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0BB4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0BB8 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0BBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0BC0 | 41 82 00 10 */	beq .L_814D0BD0
/* 814D0BC4 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0BC8 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0BCC | 48 06 10 3D */	bl fn_81531C08
.L_814D0BD0:
/* 814D0BD0 | 7F E4 FB 78 */	mr r4, r31
/* 814D0BD4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D0BD8 | 48 00 09 0D */	bl VFiPath2HandleIndex
/* 814D0BDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0BE0 | 7C 64 1B 78 */	mr r4, r3
/* 814D0BE4 | 40 82 00 10 */	bne .L_814D0BF4
/* 814D0BE8 | 3C 60 00 01 */	lis r3, 0x1
/* 814D0BEC | 3B E3 B0 03 */	subi r31, r3, 0x4ffd
/* 814D0BF0 | 48 00 00 24 */	b .L_814D0C14
.L_814D0BF4:
/* 814D0BF4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D0BF8 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D0BFC | 41 82 00 10 */	beq .L_814D0C0C
/* 814D0C00 | 7C 03 03 78 */	mr r3, r0
/* 814D0C04 | 48 00 2D 85 */	bl VFSysDeleteFile
/* 814D0C08 | 48 00 00 08 */	b .L_814D0C10
.L_814D0C0C:
/* 814D0C0C | 48 00 2E 8D */	bl VFSysDeleteFile_current
.L_814D0C10:
/* 814D0C10 | 7C 7F 1B 78 */	mr r31, r3
.L_814D0C14:
/* 814D0C14 | 7F E3 FB 78 */	mr r3, r31
/* 814D0C18 | 48 00 39 81 */	bl VFSysSetLastError
/* 814D0C1C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0C20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0C24 | 41 82 00 10 */	beq .L_814D0C34
/* 814D0C28 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0C2C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0C30 | 48 06 10 B5 */	bl fn_81531CE4
.L_814D0C34:
/* 814D0C34 | 7F E3 FB 78 */	mr r3, r31
/* 814D0C38 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0C3C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0C40 | 7C 08 03 A6 */	mtlr r0
/* 814D0C44 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0C48 | 4E 80 00 20 */	blr
.endfn VFDeleteFile

# .text:0xF14 | 0x814D0C4C | size: 0xA8
.fn VFCreateDir, global
/* 814D0C4C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0C50 | 7C 08 02 A6 */	mflr r0
/* 814D0C54 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D0C58 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0C5C | 7C 7F 1B 78 */	mr r31, r3
/* 814D0C60 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0C64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0C68 | 41 82 00 10 */	beq .L_814D0C78
/* 814D0C6C | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0C70 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0C74 | 48 06 0F 95 */	bl fn_81531C08
.L_814D0C78:
/* 814D0C78 | 7F E4 FB 78 */	mr r4, r31
/* 814D0C7C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D0C80 | 48 00 08 65 */	bl VFiPath2HandleIndex
/* 814D0C84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0C88 | 7C 64 1B 78 */	mr r4, r3
/* 814D0C8C | 40 82 00 10 */	bne .L_814D0C9C
/* 814D0C90 | 3C 60 00 01 */	lis r3, 0x1
/* 814D0C94 | 3B E3 B0 03 */	subi r31, r3, 0x4ffd
/* 814D0C98 | 48 00 00 24 */	b .L_814D0CBC
.L_814D0C9C:
/* 814D0C9C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D0CA0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D0CA4 | 41 82 00 10 */	beq .L_814D0CB4
/* 814D0CA8 | 7C 03 03 78 */	mr r3, r0
/* 814D0CAC | 48 00 2E BD */	bl VFSysCreateDir
/* 814D0CB0 | 48 00 00 08 */	b .L_814D0CB8
.L_814D0CB4:
/* 814D0CB4 | 48 00 2F C5 */	bl VFSysCreateDir_current
.L_814D0CB8:
/* 814D0CB8 | 7C 7F 1B 78 */	mr r31, r3
.L_814D0CBC:
/* 814D0CBC | 7F E3 FB 78 */	mr r3, r31
/* 814D0CC0 | 48 00 38 D9 */	bl VFSysSetLastError
/* 814D0CC4 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0CC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0CCC | 41 82 00 10 */	beq .L_814D0CDC
/* 814D0CD0 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0CD4 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0CD8 | 48 06 10 0D */	bl fn_81531CE4
.L_814D0CDC:
/* 814D0CDC | 7F E3 FB 78 */	mr r3, r31
/* 814D0CE0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0CE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0CE8 | 7C 08 03 A6 */	mtlr r0
/* 814D0CEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0CF0 | 4E 80 00 20 */	blr
.endfn VFCreateDir

# .text:0xFBC | 0x814D0CF4 | size: 0xA8
.fn VFChangeDir, global
/* 814D0CF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0CF8 | 7C 08 02 A6 */	mflr r0
/* 814D0CFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D0D00 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0D04 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0D08 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0D0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0D10 | 41 82 00 10 */	beq .L_814D0D20
/* 814D0D14 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0D18 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0D1C | 48 06 0E ED */	bl fn_81531C08
.L_814D0D20:
/* 814D0D20 | 7F E4 FB 78 */	mr r4, r31
/* 814D0D24 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D0D28 | 48 00 07 BD */	bl VFiPath2HandleIndex
/* 814D0D2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0D30 | 7C 64 1B 78 */	mr r4, r3
/* 814D0D34 | 40 82 00 10 */	bne .L_814D0D44
/* 814D0D38 | 3C 60 00 01 */	lis r3, 0x1
/* 814D0D3C | 3B E3 B0 03 */	subi r31, r3, 0x4ffd
/* 814D0D40 | 48 00 00 24 */	b .L_814D0D64
.L_814D0D44:
/* 814D0D44 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D0D48 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D0D4C | 41 82 00 10 */	beq .L_814D0D5C
/* 814D0D50 | 7C 03 03 78 */	mr r3, r0
/* 814D0D54 | 48 00 2F F5 */	bl VFSysChangeDir
/* 814D0D58 | 48 00 00 08 */	b .L_814D0D60
.L_814D0D5C:
/* 814D0D5C | 48 00 30 FD */	bl VFSysChangeDir_current
.L_814D0D60:
/* 814D0D60 | 7C 7F 1B 78 */	mr r31, r3
.L_814D0D64:
/* 814D0D64 | 7F E3 FB 78 */	mr r3, r31
/* 814D0D68 | 48 00 38 31 */	bl VFSysSetLastError
/* 814D0D6C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0D70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0D74 | 41 82 00 10 */	beq .L_814D0D84
/* 814D0D78 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0D7C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0D80 | 48 06 0F 65 */	bl fn_81531CE4
.L_814D0D84:
/* 814D0D84 | 7F E3 FB 78 */	mr r3, r31
/* 814D0D88 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0D8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0D90 | 7C 08 03 A6 */	mtlr r0
/* 814D0D94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0D98 | 4E 80 00 20 */	blr
.endfn VFChangeDir

# .text:0x1064 | 0x814D0D9C | size: 0xA8
.fn VFDeleteDir, global
/* 814D0D9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0DA0 | 7C 08 02 A6 */	mflr r0
/* 814D0DA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D0DA8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0DAC | 7C 7F 1B 78 */	mr r31, r3
/* 814D0DB0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0DB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0DB8 | 41 82 00 10 */	beq .L_814D0DC8
/* 814D0DBC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0DC0 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0DC4 | 48 06 0E 45 */	bl fn_81531C08
.L_814D0DC8:
/* 814D0DC8 | 7F E4 FB 78 */	mr r4, r31
/* 814D0DCC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D0DD0 | 48 00 07 15 */	bl VFiPath2HandleIndex
/* 814D0DD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0DD8 | 7C 64 1B 78 */	mr r4, r3
/* 814D0DDC | 40 82 00 10 */	bne .L_814D0DEC
/* 814D0DE0 | 3C 60 00 01 */	lis r3, 0x1
/* 814D0DE4 | 3B E3 B0 03 */	subi r31, r3, 0x4ffd
/* 814D0DE8 | 48 00 00 24 */	b .L_814D0E0C
.L_814D0DEC:
/* 814D0DEC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D0DF0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D0DF4 | 41 82 00 10 */	beq .L_814D0E04
/* 814D0DF8 | 7C 03 03 78 */	mr r3, r0
/* 814D0DFC | 48 00 31 2D */	bl VFSysDeleteDir
/* 814D0E00 | 48 00 00 08 */	b .L_814D0E08
.L_814D0E04:
/* 814D0E04 | 48 00 32 35 */	bl VFSysDeleteDir_current
.L_814D0E08:
/* 814D0E08 | 7C 7F 1B 78 */	mr r31, r3
.L_814D0E0C:
/* 814D0E0C | 7F E3 FB 78 */	mr r3, r31
/* 814D0E10 | 48 00 37 89 */	bl VFSysSetLastError
/* 814D0E14 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0E18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0E1C | 41 82 00 10 */	beq .L_814D0E2C
/* 814D0E20 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0E24 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0E28 | 48 06 0E BD */	bl fn_81531CE4
.L_814D0E2C:
/* 814D0E2C | 7F E3 FB 78 */	mr r3, r31
/* 814D0E30 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0E34 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0E38 | 7C 08 03 A6 */	mtlr r0
/* 814D0E3C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0E40 | 4E 80 00 20 */	blr
.endfn VFDeleteDir

# .text:0x110C | 0x814D0E44 | size: 0x70
.fn VFFormatDrive, global
/* 814D0E44 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D0E48 | 7C 08 02 A6 */	mflr r0
/* 814D0E4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D0E50 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D0E54 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0E58 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0E5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0E60 | 41 82 00 10 */	beq .L_814D0E70
/* 814D0E64 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0E68 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0E6C | 48 06 0D 9D */	bl fn_81531C08
.L_814D0E70:
/* 814D0E70 | 7F E3 FB 78 */	mr r3, r31
/* 814D0E74 | 48 00 3C 25 */	bl dHash_GetArg
/* 814D0E78 | 48 00 1F 35 */	bl VFSysFormatDrive
/* 814D0E7C | 7C 7F 1B 78 */	mr r31, r3
/* 814D0E80 | 48 00 37 19 */	bl VFSysSetLastError
/* 814D0E84 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0E88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0E8C | 41 82 00 10 */	beq .L_814D0E9C
/* 814D0E90 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0E94 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0E98 | 48 06 0E 4D */	bl fn_81531CE4
.L_814D0E9C:
/* 814D0E9C | 7F E3 FB 78 */	mr r3, r31
/* 814D0EA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D0EA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D0EA8 | 7C 08 03 A6 */	mtlr r0
/* 814D0EAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D0EB0 | 4E 80 00 20 */	blr
.endfn VFFormatDrive

# .text:0x117C | 0x814D0EB4 | size: 0x9C
.fn VFGetFileSizeByFd, global
/* 814D0EB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0EB8 | 7C 08 02 A6 */	mflr r0
/* 814D0EBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D0EC0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0EC4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0EC8 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0ECC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0ED0 | 41 82 00 10 */	beq .L_814D0EE0
/* 814D0ED4 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0ED8 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0EDC | 48 06 0D 2D */	bl fn_81531C08
.L_814D0EE0:
/* 814D0EE0 | 7F E4 FB 78 */	mr r4, r31
/* 814D0EE4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D0EE8 | 48 00 32 21 */	bl VFSysGetFileSizeByFd
/* 814D0EEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0EF0 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0EF4 | 41 82 00 08 */	beq .L_814D0EFC
/* 814D0EF8 | 48 00 36 A1 */	bl VFSysSetLastError
.L_814D0EFC:
/* 814D0EFC | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0F00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0F04 | 41 82 00 10 */	beq .L_814D0F14
/* 814D0F08 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0F0C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0F10 | 48 06 0D D5 */	bl fn_81531CE4
.L_814D0F14:
/* 814D0F14 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D0F18 | 41 82 00 0C */	beq .L_814D0F24
/* 814D0F1C | 38 60 FF FF */	li r3, -0x1
/* 814D0F20 | 48 00 00 1C */	b .L_814D0F3C
.L_814D0F24:
/* 814D0F24 | 3C 60 80 00 */	lis r3, 0x8000
/* 814D0F28 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D0F2C | 38 63 FF FF */	subi r3, r3, 0x1
/* 814D0F30 | 7C 00 18 40 */	cmplw r0, r3
/* 814D0F34 | 41 81 00 08 */	bgt .L_814D0F3C
/* 814D0F38 | 7C 03 03 78 */	mr r3, r0
.L_814D0F3C:
/* 814D0F3C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0F40 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0F44 | 7C 08 03 A6 */	mtlr r0
/* 814D0F48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0F4C | 4E 80 00 20 */	blr
.endfn VFGetFileSizeByFd

# .text:0x1218 | 0x814D0F50 | size: 0xA0
.fn VFGetOffsetByFd, global
/* 814D0F50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0F54 | 7C 08 02 A6 */	mflr r0
/* 814D0F58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D0F5C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D0F60 | 7C 7F 1B 78 */	mr r31, r3
/* 814D0F64 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0F68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0F6C | 41 82 00 10 */	beq .L_814D0F7C
/* 814D0F70 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0F74 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0F78 | 48 06 0C 91 */	bl fn_81531C08
.L_814D0F7C:
/* 814D0F7C | 7F E4 FB 78 */	mr r4, r31
/* 814D0F80 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D0F84 | 48 00 31 ED */	bl VFSysGetOffsetByFd
/* 814D0F88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D0F8C | 7C 7F 1B 78 */	mr r31, r3
/* 814D0F90 | 41 82 00 0C */	beq .L_814D0F9C
/* 814D0F94 | 38 60 FF FF */	li r3, -0x1
/* 814D0F98 | 48 00 36 01 */	bl VFSysSetLastError
.L_814D0F9C:
/* 814D0F9C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D0FA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D0FA4 | 41 82 00 10 */	beq .L_814D0FB4
/* 814D0FA8 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D0FAC | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D0FB0 | 48 06 0D 35 */	bl fn_81531CE4
.L_814D0FB4:
/* 814D0FB4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D0FB8 | 41 82 00 0C */	beq .L_814D0FC4
/* 814D0FBC | 38 60 FF FF */	li r3, -0x1
/* 814D0FC0 | 48 00 00 1C */	b .L_814D0FDC
.L_814D0FC4:
/* 814D0FC4 | 3C 60 80 00 */	lis r3, 0x8000
/* 814D0FC8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D0FCC | 38 63 FF FF */	subi r3, r3, 0x1
/* 814D0FD0 | 7C 00 18 40 */	cmplw r0, r3
/* 814D0FD4 | 41 81 00 08 */	bgt .L_814D0FDC
/* 814D0FD8 | 7C 03 03 78 */	mr r3, r0
.L_814D0FDC:
/* 814D0FDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D0FE0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D0FE4 | 7C 08 03 A6 */	mtlr r0
/* 814D0FE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D0FEC | 4E 80 00 20 */	blr
.endfn VFGetOffsetByFd

# .text:0x12B8 | 0x814D0FF0 | size: 0xE8
.fn VFGetDriveFreeSize, global
/* 814D0FF0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D0FF4 | 7C 08 02 A6 */	mflr r0
/* 814D0FF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D0FFC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D1000 | 7C 7F 1B 78 */	mr r31, r3
/* 814D1004 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D1008 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D100C | 41 82 00 10 */	beq .L_814D101C
/* 814D1010 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1014 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1018 | 48 06 0B F1 */	bl fn_81531C08
.L_814D101C:
/* 814D101C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D1020 | 41 82 00 24 */	beq .L_814D1044
/* 814D1024 | 7F E3 FB 78 */	mr r3, r31
/* 814D1028 | 48 00 3A 71 */	bl dHash_GetArg
/* 814D102C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814D1030 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814D1034 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814D1038 | 48 00 31 61 */	bl VFSysGetDriveFreeSize
/* 814D103C | 7C 7F 1B 78 */	mr r31, r3
/* 814D1040 | 48 00 00 08 */	b .L_814D1048
.L_814D1044:
/* 814D1044 | 3B E0 FF FF */	li r31, -0x1
.L_814D1048:
/* 814D1048 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D104C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1050 | 41 82 00 10 */	beq .L_814D1060
/* 814D1054 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1058 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D105C | 48 06 0C 89 */	bl fn_81531CE4
.L_814D1060:
/* 814D1060 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D1064 | 41 82 00 14 */	beq .L_814D1078
/* 814D1068 | 7F E3 FB 78 */	mr r3, r31
/* 814D106C | 48 00 35 2D */	bl VFSysSetLastError
/* 814D1070 | 38 60 FF FF */	li r3, -0x1
/* 814D1074 | 48 00 00 50 */	b .L_814D10C4
.L_814D1078:
/* 814D1078 | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 814D107C | 3C 60 80 00 */	lis r3, 0x8000
/* 814D1080 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814D1084 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814D1088 | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 814D108C | 38 80 00 00 */	li r4, 0x0
/* 814D1090 | 7C 06 29 D6 */	mullw r0, r6, r5
/* 814D1094 | 7C C6 28 16 */	mulhwu r6, r6, r5
/* 814D1098 | 7D 00 39 D6 */	mullw r8, r0, r7
/* 814D109C | 7C A0 38 16 */	mulhwu r5, r0, r7
/* 814D10A0 | 7C 08 18 10 */	subfc r0, r8, r3
/* 814D10A4 | 7C 06 39 D6 */	mullw r0, r6, r7
/* 814D10A8 | 7C 05 02 14 */	add r0, r5, r0
/* 814D10AC | 7C 00 21 10 */	subfe r0, r0, r4
/* 814D10B0 | 7C 03 19 10 */	subfe r0, r3, r3
/* 814D10B4 | 7C 00 00 D1 */	neg. r0, r0
/* 814D10B8 | 41 82 00 08 */	beq .L_814D10C0
/* 814D10BC | 48 00 00 08 */	b .L_814D10C4
.L_814D10C0:
/* 814D10C0 | 7D 03 43 78 */	mr r3, r8
.L_814D10C4:
/* 814D10C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D10C8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D10CC | 7C 08 03 A6 */	mtlr r0
/* 814D10D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D10D4 | 4E 80 00 20 */	blr
.endfn VFGetDriveFreeSize

# .text:0x13A0 | 0x814D10D8 | size: 0x80
.fn VFGetSDDirectStatus, global
/* 814D10D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D10DC | 7C 08 02 A6 */	mflr r0
/* 814D10E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D10E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D10E8 | 7C 9F 23 78 */	mr r31, r4
/* 814D10EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D10F0 | 7C 7E 1B 78 */	mr r30, r3
/* 814D10F4 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D10F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D10FC | 41 82 00 10 */	beq .L_814D110C
/* 814D1100 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1104 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1108 | 48 06 0B 01 */	bl fn_81531C08
.L_814D110C:
/* 814D110C | 7F C3 F3 78 */	mr r3, r30
/* 814D1110 | 48 00 39 89 */	bl dHash_GetArg
/* 814D1114 | 7F E4 FB 78 */	mr r4, r31
/* 814D1118 | 48 00 1B AD */	bl VFSysGetSDDirectStatus
/* 814D111C | 7C 7F 1B 78 */	mr r31, r3
/* 814D1120 | 48 00 34 79 */	bl VFSysSetLastError
/* 814D1124 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D1128 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D112C | 41 82 00 10 */	beq .L_814D113C
/* 814D1130 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1134 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1138 | 48 06 0B AD */	bl fn_81531CE4
.L_814D113C:
/* 814D113C | 7F E3 FB 78 */	mr r3, r31
/* 814D1140 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D1144 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D1148 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D114C | 7C 08 03 A6 */	mtlr r0
/* 814D1150 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D1154 | 4E 80 00 20 */	blr
.endfn VFGetSDDirectStatus

# .text:0x1420 | 0x814D1158 | size: 0xD0
.fn VFFileSearchFirst, global
/* 814D1158 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D115C | 7C 08 02 A6 */	mflr r0
/* 814D1160 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D1164 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D1168 | 7C BF 2B 78 */	mr r31, r5
/* 814D116C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D1170 | 7C 9E 23 78 */	mr r30, r4
/* 814D1174 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D1178 | 7C 7D 1B 78 */	mr r29, r3
/* 814D117C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D1180 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1184 | 41 82 00 10 */	beq .L_814D1194
/* 814D1188 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D118C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1190 | 48 06 0A 79 */	bl fn_81531C08
.L_814D1194:
/* 814D1194 | 7F C4 F3 78 */	mr r4, r30
/* 814D1198 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D119C | 48 00 03 49 */	bl VFiPath2HandleIndex
/* 814D11A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D11A4 | 7C 65 1B 78 */	mr r5, r3
/* 814D11A8 | 40 82 00 10 */	bne .L_814D11B8
/* 814D11AC | 3C 60 00 01 */	lis r3, 0x1
/* 814D11B0 | 3B E3 B0 03 */	subi r31, r3, 0x4ffd
/* 814D11B4 | 48 00 00 34 */	b .L_814D11E8
.L_814D11B8:
/* 814D11B8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814D11BC | 2C 04 FF FF */	cmpwi r4, -0x1
/* 814D11C0 | 41 82 00 14 */	beq .L_814D11D4
/* 814D11C4 | 7F A3 EB 78 */	mr r3, r29
/* 814D11C8 | 7F E6 FB 78 */	mr r6, r31
/* 814D11CC | 48 00 30 D5 */	bl VFSysFileSearchFirst
/* 814D11D0 | 48 00 00 14 */	b .L_814D11E4
.L_814D11D4:
/* 814D11D4 | 7C A4 2B 78 */	mr r4, r5
/* 814D11D8 | 7F A3 EB 78 */	mr r3, r29
/* 814D11DC | 7F E5 FB 78 */	mr r5, r31
/* 814D11E0 | 48 00 31 F1 */	bl VFSysFileSearchFirst_current
.L_814D11E4:
/* 814D11E4 | 7C 7F 1B 78 */	mr r31, r3
.L_814D11E8:
/* 814D11E8 | 7F E3 FB 78 */	mr r3, r31
/* 814D11EC | 48 00 33 AD */	bl VFSysSetLastError
/* 814D11F0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D11F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D11F8 | 41 82 00 10 */	beq .L_814D1208
/* 814D11FC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1200 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1204 | 48 06 0A E1 */	bl fn_81531CE4
.L_814D1208:
/* 814D1208 | 7F E3 FB 78 */	mr r3, r31
/* 814D120C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D1210 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D1214 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D1218 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D121C | 7C 08 03 A6 */	mtlr r0
/* 814D1220 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D1224 | 4E 80 00 20 */	blr
.endfn VFFileSearchFirst

# .text:0x14F0 | 0x814D1228 | size: 0x6C
.fn VFFileSearchNext, global
/* 814D1228 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D122C | 7C 08 02 A6 */	mflr r0
/* 814D1230 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D1234 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D1238 | 7C 7F 1B 78 */	mr r31, r3
/* 814D123C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D1240 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1244 | 41 82 00 10 */	beq .L_814D1254
/* 814D1248 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D124C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1250 | 48 06 09 B9 */	bl fn_81531C08
.L_814D1254:
/* 814D1254 | 7F E3 FB 78 */	mr r3, r31
/* 814D1258 | 48 00 32 69 */	bl VFSysFileSearchNext
/* 814D125C | 7C 7F 1B 78 */	mr r31, r3
/* 814D1260 | 48 00 33 39 */	bl VFSysSetLastError
/* 814D1264 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D1268 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D126C | 41 82 00 10 */	beq .L_814D127C
/* 814D1270 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1274 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1278 | 48 06 0A 6D */	bl fn_81531CE4
.L_814D127C:
/* 814D127C | 7F E3 FB 78 */	mr r3, r31
/* 814D1280 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D1284 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D1288 | 7C 08 03 A6 */	mtlr r0
/* 814D128C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D1290 | 4E 80 00 20 */	blr
.endfn VFFileSearchNext

# .text:0x155C | 0x814D1294 | size: 0x94
.fn VFBuffering, global
/* 814D1294 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D1298 | 7C 08 02 A6 */	mflr r0
/* 814D129C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D12A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D12A4 | 7C 9F 23 78 */	mr r31, r4
/* 814D12A8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D12AC | 7C 7E 1B 78 */	mr r30, r3
/* 814D12B0 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D12B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D12B8 | 41 82 00 10 */	beq .L_814D12C8
/* 814D12BC | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D12C0 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D12C4 | 48 06 09 45 */	bl fn_81531C08
.L_814D12C8:
/* 814D12C8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D12CC | 41 82 00 1C */	beq .L_814D12E8
/* 814D12D0 | 7F C3 F3 78 */	mr r3, r30
/* 814D12D4 | 48 00 37 C5 */	bl dHash_GetArg
/* 814D12D8 | 7F E4 FB 78 */	mr r4, r31
/* 814D12DC | 48 00 0A 7D */	bl VFSysSync
/* 814D12E0 | 7C 7F 1B 78 */	mr r31, r3
/* 814D12E4 | 48 00 00 08 */	b .L_814D12EC
.L_814D12E8:
/* 814D12E8 | 3B E0 FF FF */	li r31, -0x1
.L_814D12EC:
/* 814D12EC | 7F E3 FB 78 */	mr r3, r31
/* 814D12F0 | 48 00 32 A9 */	bl VFSysSetLastError
/* 814D12F4 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D12F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D12FC | 41 82 00 10 */	beq .L_814D130C
/* 814D1300 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1304 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1308 | 48 06 09 DD */	bl fn_81531CE4
.L_814D130C:
/* 814D130C | 7F E3 FB 78 */	mr r3, r31
/* 814D1310 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D1314 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D1318 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D131C | 7C 08 03 A6 */	mtlr r0
/* 814D1320 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D1324 | 4E 80 00 20 */	blr
.endfn VFBuffering

# .text:0x15F0 | 0x814D1328 | size: 0x94
.fn VFSync, global
/* 814D1328 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D132C | 7C 08 02 A6 */	mflr r0
/* 814D1330 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D1334 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D1338 | 7C 9F 23 78 */	mr r31, r4
/* 814D133C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D1340 | 7C 7E 1B 78 */	mr r30, r3
/* 814D1344 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D1348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D134C | 41 82 00 10 */	beq .L_814D135C
/* 814D1350 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1354 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1358 | 48 06 08 B1 */	bl fn_81531C08
.L_814D135C:
/* 814D135C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D1360 | 41 82 00 1C */	beq .L_814D137C
/* 814D1364 | 7F C3 F3 78 */	mr r3, r30
/* 814D1368 | 48 00 37 31 */	bl dHash_GetArg
/* 814D136C | 7F E4 FB 78 */	mr r4, r31
/* 814D1370 | 48 00 0D 25 */	bl VFSysSetSyncMode
/* 814D1374 | 7C 7F 1B 78 */	mr r31, r3
/* 814D1378 | 48 00 00 08 */	b .L_814D1380
.L_814D137C:
/* 814D137C | 3B E0 FF FF */	li r31, -0x1
.L_814D1380:
/* 814D1380 | 7F E3 FB 78 */	mr r3, r31
/* 814D1384 | 48 00 32 15 */	bl VFSysSetLastError
/* 814D1388 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D138C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1390 | 41 82 00 10 */	beq .L_814D13A0
/* 814D1394 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1398 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D139C | 48 06 09 49 */	bl fn_81531CE4
.L_814D13A0:
/* 814D13A0 | 7F E3 FB 78 */	mr r3, r31
/* 814D13A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D13A8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D13AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D13B0 | 7C 08 03 A6 */	mtlr r0
/* 814D13B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D13B8 | 4E 80 00 20 */	blr
.endfn VFSync

# .text:0x1684 | 0x814D13BC | size: 0x60
.fn VFGetLastError, global
/* 814D13BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D13C0 | 7C 08 02 A6 */	mflr r0
/* 814D13C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D13C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D13CC | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D13D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D13D4 | 41 82 00 10 */	beq .L_814D13E4
/* 814D13D8 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D13DC | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D13E0 | 48 06 08 29 */	bl fn_81531C08
.L_814D13E4:
/* 814D13E4 | 48 00 31 C5 */	bl VFSysGetLastError
/* 814D13E8 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D13EC | 7C 7F 1B 78 */	mr r31, r3
/* 814D13F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D13F4 | 41 82 00 10 */	beq .L_814D1404
/* 814D13F8 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D13FC | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1400 | 48 06 08 E5 */	bl fn_81531CE4
.L_814D1404:
/* 814D1404 | 7F E3 FB 78 */	mr r3, r31
/* 814D1408 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D140C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D1410 | 7C 08 03 A6 */	mtlr r0
/* 814D1414 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D1418 | 4E 80 00 20 */	blr
.endfn VFGetLastError

# .text:0x16E4 | 0x814D141C | size: 0x80
.fn VFGetLastDeviceError, global
/* 814D141C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D1420 | 7C 08 02 A6 */	mflr r0
/* 814D1424 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D1428 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D142C | 7C 7F 1B 78 */	mr r31, r3
/* 814D1430 | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D1434 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1438 | 41 82 00 10 */	beq .L_814D1448
/* 814D143C | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D1440 | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1444 | 48 06 07 C5 */	bl fn_81531C08
.L_814D1448:
/* 814D1448 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D144C | 41 82 00 18 */	beq .L_814D1464
/* 814D1450 | 7F E3 FB 78 */	mr r3, r31
/* 814D1454 | 48 00 36 45 */	bl dHash_GetArg
/* 814D1458 | 48 00 31 59 */	bl VFSysGetLastDeviceError
/* 814D145C | 7C 7F 1B 78 */	mr r31, r3
/* 814D1460 | 48 00 00 0C */	b .L_814D146C
.L_814D1464:
/* 814D1464 | 48 00 31 95 */	bl VFSysGetLastDeviceError_current
/* 814D1468 | 7C 7F 1B 78 */	mr r31, r3
.L_814D146C:
/* 814D146C | 80 0D AE 3C */	lwz r0, l_InitedMutex@sda21(r0)
/* 814D1470 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1474 | 41 82 00 10 */	beq .L_814D1484
/* 814D1478 | 3C 60 81 0F */	lis r3, l_Mutex@ha
/* 814D147C | 38 63 55 40 */	addi r3, r3, l_Mutex@l
/* 814D1480 | 48 06 08 65 */	bl fn_81531CE4
.L_814D1484:
/* 814D1484 | 7F E3 FB 78 */	mr r3, r31
/* 814D1488 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D148C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D1490 | 7C 08 03 A6 */	mtlr r0
/* 814D1494 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D1498 | 4E 80 00 20 */	blr
.endfn VFGetLastDeviceError

# .text:0x1764 | 0x814D149C | size: 0x48
.fn VFGetApiErrorString, global
/* 814D149C | 3C A0 81 62 */	lis r5, ErrInfoTbl$4383@ha
/* 814D14A0 | 38 A5 D0 A8 */	addi r5, r5, ErrInfoTbl$4383@l
/* 814D14A4 | 38 85 00 D0 */	addi r4, r5, 0xd0
/* 814D14A8 | 38 04 00 07 */	addi r0, r4, 0x7
/* 814D14AC | 7C 05 00 50 */	subf r0, r5, r0
/* 814D14B0 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814D14B4 | 7C 09 03 A6 */	mtctr r0
/* 814D14B8 | 7C 05 20 40 */	cmplw r5, r4
/* 814D14BC | 40 80 00 20 */	bge .L_814D14DC
.L_814D14C0:
/* 814D14C0 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 814D14C4 | 7C 00 18 00 */	cmpw r0, r3
/* 814D14C8 | 40 82 00 0C */	bne .L_814D14D4
/* 814D14CC | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 814D14D0 | 4E 80 00 20 */	blr
.L_814D14D4:
/* 814D14D4 | 38 A5 00 08 */	addi r5, r5, 0x8
/* 814D14D8 | 42 00 FF E8 */	bdnz .L_814D14C0
.L_814D14DC:
/* 814D14DC | 80 6D 9D 18 */	lwz r3, lbl_81697D58@sda21(r0)
/* 814D14E0 | 4E 80 00 20 */	blr
.endfn VFGetApiErrorString

# .text:0x17AC | 0x814D14E4 | size: 0xDC
.fn VFiPath2HandleIndex, global
/* 814D14E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D14E8 | 7C 08 02 A6 */	mflr r0
/* 814D14EC | 38 A0 00 08 */	li r5, 0x8
/* 814D14F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D14F4 | 38 00 FF FF */	li r0, -0x1
/* 814D14F8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D14FC | 7C 9F 23 78 */	mr r31, r4
/* 814D1500 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D1504 | 3B C0 00 00 */	li r30, 0x0
/* 814D1508 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D150C | 7C 9D 23 78 */	mr r29, r4
/* 814D1510 | 38 80 00 00 */	li r4, 0x0
/* 814D1514 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814D1518 | 7C 7C 1B 78 */	mr r28, r3
/* 814D151C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814D1520 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D1524 | 4B FE 43 E5 */	bl VFipf_memset
/* 814D1528 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D152C | 48 00 00 64 */	b .L_814D1590
.L_814D1530:
/* 814D1530 | 7C 80 07 74 */	extsb r0, r4
/* 814D1534 | 2C 00 00 5C */	cmpwi r0, 0x5c
/* 814D1538 | 41 82 00 64 */	beq .L_814D159C
/* 814D153C | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 814D1540 | 41 82 00 5C */	beq .L_814D159C
/* 814D1544 | 2C 00 00 3A */	cmpwi r0, 0x3a
/* 814D1548 | 40 82 00 30 */	bne .L_814D1578
/* 814D154C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D1550 | 48 00 35 49 */	bl dHash_GetArg
/* 814D1554 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814D1558 | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 814D155C | 41 82 00 0C */	beq .L_814D1568
/* 814D1560 | 2C 1E 00 07 */	cmpwi r30, 0x7
/* 814D1564 | 40 81 00 0C */	ble .L_814D1570
.L_814D1568:
/* 814D1568 | 3B A0 00 00 */	li r29, 0x0
/* 814D156C | 48 00 00 30 */	b .L_814D159C
.L_814D1570:
/* 814D1570 | 3B BF 00 01 */	addi r29, r31, 0x1
/* 814D1574 | 48 00 00 28 */	b .L_814D159C
.L_814D1578:
/* 814D1578 | 2C 1E 00 07 */	cmpwi r30, 0x7
/* 814D157C | 40 80 00 08 */	bge .L_814D1584
/* 814D1580 | 98 83 00 00 */	stb r4, 0x0(r3)
.L_814D1584:
/* 814D1584 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814D1588 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814D158C | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814D1590:
/* 814D1590 | 88 9F 00 00 */	lbz r4, 0x0(r31)
/* 814D1594 | 7C 80 07 75 */	extsb. r0, r4
/* 814D1598 | 40 82 FF 98 */	bne .L_814D1530
.L_814D159C:
/* 814D159C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D15A0 | 7F A3 EB 78 */	mr r3, r29
/* 814D15A4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D15A8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D15AC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814D15B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D15B4 | 7C 08 03 A6 */	mtlr r0
/* 814D15B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D15BC | 4E 80 00 20 */	blr
.endfn VFiPath2HandleIndex

# 0x8161D0A8..0x8161D178 | size: 0xD0
.rodata
.balign 8

# .rodata:0x0 | 0x8161D0A8 | size: 0xD0
.obj ErrInfoTbl$4383, local
	.4byte lbl_8166E5A0
	.4byte 0x00000000
	.4byte lbl_8166E5B0
	.4byte 0x00000001
	.4byte lbl_8166E5DC
	.4byte 0x00000002
	.4byte lbl_8166E608
	.4byte 0x00000005
	.4byte lbl_8166E630
	.4byte 0x00000008
	.4byte lbl_8166E65C
	.4byte 0x00000009
	.4byte lbl_8166E680
	.4byte 0x0000000C
	.4byte lbl_8166E6AC
	.4byte 0x0000000D
	.4byte lbl_8166E6D0
	.4byte 0x00000010
	.4byte lbl_8166E6FC
	.4byte 0x00000011
	.4byte lbl_8166E720
	.4byte 0x00000015
	.4byte lbl_8166E750
	.4byte 0x00000016
	.4byte lbl_8166E774
	.4byte 0x00000017
	.4byte lbl_8166E7A0
	.4byte 0x00000018
	.4byte lbl_8166E7CC
	.4byte 0x0000001B
	.4byte lbl_8166E7F8
	.4byte 0x0000001C
	.4byte lbl_8166E81C
	.4byte 0x0000002E
	.4byte lbl_8166E844
	.4byte 0x00000058
	.4byte lbl_8166E86C
	.4byte 0x0000005A
	.4byte lbl_8166E898
	.4byte 0xFFFFFFFF
	.4byte lbl_8166E8C4
	.4byte 0x0000B001
	.4byte lbl_8166E8E0
	.4byte 0x0000B002
	.4byte lbl_8166E8F8
	.4byte 0x0000B003
	.4byte lbl_8166E914
	.4byte 0x0000B004
	.4byte lbl_8166E938
	.4byte 0x0000B005
	.4byte lbl_8166E958
	.4byte 0x0000B006
.endobj ErrInfoTbl$4383

# 0x8166E500..0x8166E970 | size: 0x470
.data
.balign 8

# .data:0x0 | 0x8166E500 | size: 0xA0
.obj lbl_8166E500, global
	.4byte 0x00000000
	.4byte 0x00000016
	.4byte 0x00000016
	.4byte 0x00000002
	.4byte 0x00000010
	.4byte 0x0000005A
	.4byte 0x0000001C
	.4byte 0x00000008
	.4byte 0x00000011
	.4byte 0x00000008
	.4byte 0x00000016
	.4byte 0x0000000D
	.4byte 0x00000058
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0000000D
	.4byte 0x00000005
	.4byte 0x00000008
	.4byte 0x0000000D
	.4byte 0x00000002
	.4byte 0x00000017
	.4byte 0x00000018
	.4byte 0x00000015
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0000000C
	.4byte 0x00000016
	.4byte 0x00000016
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0000001B
	.4byte 0x00000009
	.4byte 0x0000002E
.endobj lbl_8166E500

# .data:0xA0 | 0x8166E5A0 | size: 0x10
.obj lbl_8166E5A0, global
	.4byte 0x56465F45
	.4byte 0x52525F53
	.4byte 0x55434345
	.4byte 0x53530000
.endobj lbl_8166E5A0

# .data:0xB0 | 0x8166E5B0 | size: 0x2C
.obj lbl_8166E5B0, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x5045524D
	.4byte 0x20284F70
	.4byte 0x65726174
	.4byte 0x696F6E20
	.4byte 0x6973206E
	.4byte 0x6F742070
	.4byte 0x6F737369
	.4byte 0x626C6529
	.4byte 0x00000000
.endobj lbl_8166E5B0

# .data:0xDC | 0x8166E5DC | size: 0x2C
.obj lbl_8166E5DC, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x4E4F454E
	.4byte 0x5420284E
	.4byte 0x6F207375
	.4byte 0x63682066
	.4byte 0x696C6520
	.4byte 0x6F722064
	.4byte 0x69726563
	.4byte 0x746F7279
	.4byte 0x29000000
.endobj lbl_8166E5DC

# .data:0x108 | 0x8166E608 | size: 0x28
.obj lbl_8166E608, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x494F2028
	.4byte 0x492F4F20
	.4byte 0x4572726F
	.4byte 0x72284472
	.4byte 0x69766572
	.4byte 0x20457272
	.4byte 0x6F722929
	.4byte 0x00000000
.endobj lbl_8166E608

# .data:0x130 | 0x8166E630 | size: 0x2C
.obj lbl_8166E630, global
	.string "VF_ERR_ENOEXEC (Not Executable by internal)"
.endobj lbl_8166E630

# .data:0x15C | 0x8166E65C | size: 0x24
.obj lbl_8166E65C, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x42414446
	.4byte 0x20284261
	.4byte 0x64206669
	.4byte 0x6C652064
	.4byte 0x65736372
	.4byte 0x6970746F
	.4byte 0x72290000
.endobj lbl_8166E65C

# .data:0x180 | 0x8166E680 | size: 0x2C
.obj lbl_8166E680, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x4E4F4D45
	.4byte 0x4D20284E
	.4byte 0x6F742065
	.4byte 0x6E6F7567
	.4byte 0x68207379
	.4byte 0x7374656D
	.4byte 0x206D656D
	.4byte 0x6F727929
	.4byte 0x00000000
.endobj lbl_8166E680

# .data:0x1AC | 0x8166E6AC | size: 0x24
.obj lbl_8166E6AC, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x41434345
	.4byte 0x53202850
	.4byte 0x65726D69
	.4byte 0x7373696F
	.4byte 0x6E206465
	.4byte 0x6E696564
	.4byte 0x29000000
.endobj lbl_8166E6AC

# .data:0x1D0 | 0x8166E6D0 | size: 0x2C
.obj lbl_8166E6D0, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x42555359
	.4byte 0x20284361
	.4byte 0x6E206E6F
	.4byte 0x74207573
	.4byte 0x65207379
	.4byte 0x7374656D
	.4byte 0x20726573
	.4byte 0x6F756365
	.4byte 0x73290000
.endobj lbl_8166E6D0

# .data:0x1FC | 0x8166E6FC | size: 0x24
.obj lbl_8166E6FC, global
	.string "VF_ERR_EEXIST (File already exists)"
.endobj lbl_8166E6FC

# .data:0x220 | 0x8166E720 | size: 0x30
.obj lbl_8166E720, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x49534449
	.4byte 0x52202866
	.4byte 0x696E6420
	.4byte 0x64697265
	.4byte 0x63746F72
	.4byte 0x79207768
	.4byte 0x656E2066
	.4byte 0x696C6520
	.4byte 0x72657129
	.4byte 0x00000000
.endobj lbl_8166E720

# .data:0x250 | 0x8166E750 | size: 0x24
.obj lbl_8166E750, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x494E5641
	.4byte 0x4C202849
	.4byte 0x6E76616C
	.4byte 0x69642061
	.4byte 0x7267756D
	.4byte 0x656E7429
	.4byte 0x00000000
.endobj lbl_8166E750

# .data:0x274 | 0x8166E774 | size: 0x2C
.obj lbl_8166E774, global
	.string "VF_ERR_ENFILE (Too many open files(system))"
.endobj lbl_8166E774

# .data:0x2A0 | 0x8166E7A0 | size: 0x2C
.obj lbl_8166E7A0, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x4D46494C
	.4byte 0x45202854
	.4byte 0x6F6F206D
	.4byte 0x616E7920
	.4byte 0x6F70656E
	.4byte 0x2066696C
	.4byte 0x65732875
	.4byte 0x73657229
	.4byte 0x29000000
.endobj lbl_8166E7A0

# .data:0x2CC | 0x8166E7CC | size: 0x2C
.obj lbl_8166E7CC, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x46424947
	.4byte 0x20284F76
	.4byte 0x65722066
	.4byte 0x696C6520
	.4byte 0x73697A65
	.4byte 0x206C696D
	.4byte 0x69742834
	.4byte 0x47422D31
	.4byte 0x29290000
.endobj lbl_8166E7CC

# .data:0x2F8 | 0x8166E7F8 | size: 0x24
.obj lbl_8166E7F8, global
	.string "VF_ERR_ENOSPC (Device out of space)"
.endobj lbl_8166E7F8

# .data:0x31C | 0x8166E81C | size: 0x28
.obj lbl_8166E81C, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x4E4F4C43
	.4byte 0x4B202843
	.4byte 0x616E206E
	.4byte 0x6F74206C
	.4byte 0x6F636B20
	.4byte 0x74686520
	.4byte 0x66696C65
	.4byte 0x29000000
.endobj lbl_8166E81C

# .data:0x344 | 0x8166E844 | size: 0x28
.obj lbl_8166E844, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x4E4F5359
	.4byte 0x5320284E
	.4byte 0x6F742069
	.4byte 0x6D706C65
	.4byte 0x6D656E74
	.4byte 0x2066756E
	.4byte 0x6374696F
	.4byte 0x6E290000
.endobj lbl_8166E844

# .data:0x36C | 0x8166E86C | size: 0x2C
.obj lbl_8166E86C, global
	.4byte 0x56465F45
	.4byte 0x52525F45
	.4byte 0x4E4F5445
	.4byte 0x4D505459
	.4byte 0x20284469
	.4byte 0x72656374
	.4byte 0x6F727920
	.4byte 0x6973206E
	.4byte 0x6F742065
	.4byte 0x6D707479
	.4byte 0x29000000
.endobj lbl_8166E86C

# .data:0x398 | 0x8166E898 | size: 0x2C
.obj lbl_8166E898, global
	.string "VF_ERR_SYSTEM (system error(general error))"
.endobj lbl_8166E898

# .data:0x3C4 | 0x8166E8C4 | size: 0x1C
.obj lbl_8166E8C4, global
	.4byte 0x56465F45
	.4byte 0x52525F4E
	.4byte 0x4F545F45
	.4byte 0x58495354
	.4byte 0x5F46494C
	.4byte 0x45000000
	.4byte 0x00000000
.endobj lbl_8166E8C4

# .data:0x3E0 | 0x8166E8E0 | size: 0x18
.obj lbl_8166E8E0, global
	.string "VF_ERR_CANNOT_ALLOC_DRV"
.endobj lbl_8166E8E0

# .data:0x3F8 | 0x8166E8F8 | size: 0x1C
.obj lbl_8166E8F8, global
	.4byte 0x56465F45
	.4byte 0x52525F4E
	.4byte 0x4F545F41
	.4byte 0x4C4C4F43
	.4byte 0x41544544
	.4byte 0x5F445256
	.4byte 0x00000000
.endobj lbl_8166E8F8

# .data:0x414 | 0x8166E914 | size: 0x24
.obj lbl_8166E914, global
	.4byte 0x56465F45
	.4byte 0x52525F41
	.4byte 0x4C524541
	.4byte 0x44595F41
	.4byte 0x54544143
	.4byte 0x4845445F
	.4byte 0x4452565F
	.4byte 0x4E414D45
	.4byte 0x00000000
.endobj lbl_8166E914

# .data:0x438 | 0x8166E938 | size: 0x20
.obj lbl_8166E938, global
	.string "VF_ERR_ALREADY_MOUNTED_DRV_NAME"
.endobj lbl_8166E938

# .data:0x458 | 0x8166E958 | size: 0x18
.obj lbl_8166E958, global
	.4byte 0x56465F45
	.4byte 0x52525F56
	.4byte 0x46465F46
	.4byte 0x494C455F
	.4byte 0x464F524D
	.4byte 0x41540000
.endobj lbl_8166E958

# 0x81697D50..0x81697D60 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697D50 | size: 0x8
.obj lbl_81697D50, global
	.string "? error"
.endobj lbl_81697D50

# .sdata:0x8 | 0x81697D58 | size: 0x8
.obj lbl_81697D58, global
	.4byte lbl_81697D50
	.4byte 0x00000000
.endobj lbl_81697D58

# 0x81698E78..0x81698E80 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E78 | size: 0x4
.obj l_vf_init, local
	.skip 0x4
.endobj l_vf_init

# .sbss:0x4 | 0x81698E7C | size: 0x4
.obj l_InitedMutex, local
	.skip 0x4
.endobj l_InitedMutex
