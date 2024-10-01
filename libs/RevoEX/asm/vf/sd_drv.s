.include "macros.inc"
.file "sd_drv.c"

# 0x814D89C4..0x814D97DC | size: 0xE18
.text
.balign 4

# .text:0x0 | 0x814D89C4 | size: 0x4
.fn VFi_InitSDWrok, global
/* 814D89C4 | 4E 80 00 20 */	blr
.endfn VFi_InitSDWrok

# .text:0x4 | 0x814D89C8 | size: 0x118
.fn _VFiGetCardSize, local
/* 814D89C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D89CC | 7C 08 02 A6 */	mflr r0
/* 814D89D0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D89D4 | 38 00 00 00 */	li r0, 0x0
/* 814D89D8 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814D89DC | 7C DF 33 78 */	mr r31, r6
/* 814D89E0 | 38 C0 00 10 */	li r6, 0x10
/* 814D89E4 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814D89E8 | 7C BE 2B 78 */	mr r30, r5
/* 814D89EC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814D89F0 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814D89F4 | 7C 9D 23 78 */	mr r29, r4
/* 814D89F8 | 38 80 00 09 */	li r4, 0x9
/* 814D89FC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814D8A00 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814D8A04 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814D8A08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D8A0C | 48 11 67 CD */	bl fn_815EF1D8
/* 814D8A10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8A14 | 40 82 00 B0 */	bne .L_814D8AC4
/* 814D8A18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D8A1C | 54 00 57 BE */	extrwi r0, r0, 2, 8
/* 814D8A20 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814D8A24 | 41 82 00 78 */	beq .L_814D8A9C
/* 814D8A28 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814D8A2C | 38 A0 00 01 */	li r5, 0x1
/* 814D8A30 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 814D8A34 | 54 04 CF 7E */	extrwi r4, r0, 3, 22
/* 814D8A38 | 54 06 55 BE */	srwi r6, r0, 22
/* 814D8A3C | 54 E0 C7 3E */	extrwi r0, r7, 4, 20
/* 814D8A40 | 50 E6 55 2A */	rlwimi r6, r7, 10, 20, 21
/* 814D8A44 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814D8A48 | 7C A0 00 30 */	slw r0, r5, r0
/* 814D8A4C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814D8A50 | 7C A4 20 30 */	slw r4, r5, r4
/* 814D8A54 | 7C 00 4E 70 */	srawi r0, r0, 9
/* 814D8A58 | 7C A0 01 94 */	addze r5, r0
/* 814D8A5C | 7C 06 21 D6 */	mullw r0, r6, r4
/* 814D8A60 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 814D8A64 | 40 80 00 0C */	bge .L_814D8A70
/* 814D8A68 | 38 A0 00 01 */	li r5, 0x1
/* 814D8A6C | 48 00 00 10 */	b .L_814D8A7C
.L_814D8A70:
/* 814D8A70 | 2C 05 00 04 */	cmpwi r5, 0x4
/* 814D8A74 | 40 81 00 08 */	ble .L_814D8A7C
/* 814D8A78 | 38 A0 00 04 */	li r5, 0x4
.L_814D8A7C:
/* 814D8A7C | 7C 80 29 D6 */	mullw r4, r0, r5
/* 814D8A80 | 38 00 02 00 */	li r0, 0x200
/* 814D8A84 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 814D8A88 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814D8A8C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814D8A90 | 54 00 48 2C */	slwi r0, r0, 9
/* 814D8A94 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814D8A98 | 48 00 00 2C */	b .L_814D8AC4
.L_814D8A9C:
/* 814D8A9C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814D8AA0 | 38 00 02 00 */	li r0, 0x200
/* 814D8AA4 | 54 84 C2 BE */	extrwi r4, r4, 22, 2
/* 814D8AA8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814D8AAC | 54 84 50 2A */	slwi r4, r4, 10
/* 814D8AB0 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 814D8AB4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814D8AB8 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814D8ABC | 54 00 48 2C */	slwi r0, r0, 9
/* 814D8AC0 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_814D8AC4:
/* 814D8AC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D8AC8 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814D8ACC | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814D8AD0 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814D8AD4 | 7C 08 03 A6 */	mtlr r0
/* 814D8AD8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D8ADC | 4E 80 00 20 */	blr
.endfn _VFiGetCardSize

# .text:0x11C | 0x814D8AE0 | size: 0x19C
.fn _EventCallBack, local
/* 814D8AE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D8AE4 | 7C 08 02 A6 */	mflr r0
/* 814D8AE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D8AEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D8AF0 | 48 12 09 D1 */	bl _savegpr_27
/* 814D8AF4 | 3C 03 3D F0 */	addis r0, r3, 0x3df0
/* 814D8AF8 | 7C 7B 1B 78 */	mr r27, r3
/* 814D8AFC | 28 00 00 00 */	cmplwi r0, 0x0
/* 814D8B00 | 7C 9C 23 78 */	mr r28, r4
/* 814D8B04 | 40 82 00 08 */	bne .L_814D8B0C
/* 814D8B08 | 48 00 01 58 */	b .L_814D8C60
.L_814D8B0C:
/* 814D8B0C | 3C 03 3E 00 */	addis r0, r3, 0x3e00
/* 814D8B10 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814D8B14 | 40 82 00 08 */	bne .L_814D8B1C
/* 814D8B18 | 48 00 01 48 */	b .L_814D8C60
.L_814D8B1C:
/* 814D8B1C | 3C C0 81 0F */	lis r6, lbl_810F5C80@ha
/* 814D8B20 | 38 00 00 0D */	li r0, 0xd
/* 814D8B24 | 38 C6 5C 80 */	addi r6, r6, lbl_810F5C80@l
/* 814D8B28 | 38 60 00 00 */	li r3, 0x0
/* 814D8B2C | 38 A0 00 00 */	li r5, 0x0
/* 814D8B30 | 7C 09 03 A6 */	mtctr r0
.L_814D8B34:
/* 814D8B34 | 7C 06 2A 14 */	add r0, r6, r5
/* 814D8B38 | 7C 00 20 40 */	cmplw r0, r4
/* 814D8B3C | 40 82 00 08 */	bne .L_814D8B44
/* 814D8B40 | 48 00 00 2C */	b .L_814D8B6C
.L_814D8B44:
/* 814D8B44 | 38 A5 00 20 */	addi r5, r5, 0x20
/* 814D8B48 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814D8B4C | 7C 06 2A 14 */	add r0, r6, r5
/* 814D8B50 | 7C 00 20 40 */	cmplw r0, r4
/* 814D8B54 | 40 82 00 08 */	bne .L_814D8B5C
/* 814D8B58 | 48 00 00 14 */	b .L_814D8B6C
.L_814D8B5C:
/* 814D8B5C | 38 63 00 01 */	addi r3, r3, 0x1
/* 814D8B60 | 38 A5 00 20 */	addi r5, r5, 0x20
/* 814D8B64 | 42 00 FF D0 */	bdnz .L_814D8B34
/* 814D8B68 | 38 60 FF FF */	li r3, -0x1
.L_814D8B6C:
/* 814D8B6C | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D8B70 | 40 80 00 F0 */	bge .L_814D8C60
/* 814D8B74 | 4B FF 9A 45 */	bl VFSysGetHandleP
/* 814D8B78 | 57 60 07 BC */	rlwinm r0, r27, 0, 30, 30
/* 814D8B7C | 7C 7E 1B 78 */	mr r30, r3
/* 814D8B80 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814D8B84 | 40 82 00 54 */	bne .L_814D8BD8
/* 814D8B88 | 38 00 00 01 */	li r0, 0x1
/* 814D8B8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8B90 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814D8B94 | 41 82 00 44 */	beq .L_814D8BD8
/* 814D8B98 | 83 A3 00 08 */	lwz r29, 0x8(r3)
/* 814D8B9C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D8BA0 | 41 82 00 38 */	beq .L_814D8BD8
/* 814D8BA4 | 7F A3 EB 78 */	mr r3, r29
/* 814D8BA8 | 4B FF A0 05 */	bl VFSysPDMDisk2DeviceP
/* 814D8BAC | 7C 7F 1B 78 */	mr r31, r3
/* 814D8BB0 | 7F A3 EB 78 */	mr r3, r29
/* 814D8BB4 | 4B FD FE 71 */	bl VFipdm_disk_notify_media_eject
/* 814D8BB8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D8BBC | 41 82 00 1C */	beq .L_814D8BD8
/* 814D8BC0 | 81 9F 00 48 */	lwz r12, 0x48(r31)
/* 814D8BC4 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D8BC8 | 41 82 00 10 */	beq .L_814D8BD8
/* 814D8BCC | 38 60 00 02 */	li r3, 0x2
/* 814D8BD0 | 7D 89 03 A6 */	mtctr r12
/* 814D8BD4 | 4E 80 04 21 */	bctrl
.L_814D8BD8:
/* 814D8BD8 | 57 60 07 FE */	clrlwi r0, r27, 31
/* 814D8BDC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814D8BE0 | 40 82 00 44 */	bne .L_814D8C24
/* 814D8BE4 | 38 00 00 02 */	li r0, 0x2
/* 814D8BE8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D8BEC | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814D8BF0 | 41 82 00 34 */	beq .L_814D8C24
/* 814D8BF4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814D8BF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8BFC | 41 82 00 28 */	beq .L_814D8C24
/* 814D8C00 | 4B FF 9F AD */	bl VFSysPDMDisk2DeviceP
/* 814D8C04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8C08 | 41 82 00 1C */	beq .L_814D8C24
/* 814D8C0C | 81 83 00 48 */	lwz r12, 0x48(r3)
/* 814D8C10 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D8C14 | 41 82 00 10 */	beq .L_814D8C24
/* 814D8C18 | 38 60 00 01 */	li r3, 0x1
/* 814D8C1C | 7D 89 03 A6 */	mtctr r12
/* 814D8C20 | 4E 80 04 21 */	bctrl
.L_814D8C24:
/* 814D8C24 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D8C28 | 41 82 00 38 */	beq .L_814D8C60
/* 814D8C2C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814D8C30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8C34 | 41 82 00 2C */	beq .L_814D8C60
/* 814D8C38 | 4B FF 9F 75 */	bl VFSysPDMDisk2DeviceP
/* 814D8C3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8C40 | 41 82 00 20 */	beq .L_814D8C60
/* 814D8C44 | 34 63 00 20 */	addic. r3, r3, 0x20
/* 814D8C48 | 41 82 00 18 */	beq .L_814D8C60
/* 814D8C4C | 3C 80 81 4E */	lis r4, _EventCallBack@ha
/* 814D8C50 | 7F 85 E3 78 */	mr r5, r28
/* 814D8C54 | 38 84 8A E0 */	addi r4, r4, _EventCallBack@l
/* 814D8C58 | 48 11 6B A5 */	bl fn_815EF7FC
/* 814D8C5C | 2C 03 00 00 */	cmpwi r3, 0x0
.L_814D8C60:
/* 814D8C60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D8C64 | 38 60 00 00 */	li r3, 0x0
/* 814D8C68 | 48 12 08 A5 */	bl _restgpr_27
/* 814D8C6C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D8C70 | 7C 08 03 A6 */	mtlr r0
/* 814D8C74 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D8C78 | 4E 80 00 20 */	blr
.endfn _EventCallBack

# .text:0x2B8 | 0x814D8C7C | size: 0xA0
.fn _ChkMediaInsertedAndNotifyPrfile, local
/* 814D8C7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D8C80 | 7C 08 02 A6 */	mflr r0
/* 814D8C84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D8C88 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D8C8C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D8C90 | 7C 7E 1B 78 */	mr r30, r3
/* 814D8C94 | 4B FF 9F C5 */	bl VFSysPDMDisk2DriveP
/* 814D8C98 | 7C 7F 1B 78 */	mr r31, r3
/* 814D8C9C | 7F C3 F3 78 */	mr r3, r30
/* 814D8CA0 | 4B FF 9F 0D */	bl VFSysPDMDisk2DeviceP
/* 814D8CA4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D8CA8 | 41 82 00 0C */	beq .L_814D8CB4
/* 814D8CAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8CB0 | 40 82 00 0C */	bne .L_814D8CBC
.L_814D8CB4:
/* 814D8CB4 | 38 60 00 00 */	li r3, 0x0
/* 814D8CB8 | 48 00 00 4C */	b .L_814D8D04
.L_814D8CBC:
/* 814D8CBC | 38 63 00 20 */	addi r3, r3, 0x20
/* 814D8CC0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814D8CC4 | 48 11 56 E1 */	bl fn_815EE3A4
/* 814D8CC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8CCC | 7C 64 1B 78 */	mr r4, r3
/* 814D8CD0 | 41 82 00 10 */	beq .L_814D8CE0
/* 814D8CD4 | 7F C3 F3 78 */	mr r3, r30
/* 814D8CD8 | 4B FF CA CD */	bl dCommon_setLastDeviceErrorToDisk
/* 814D8CDC | 48 00 00 24 */	b .L_814D8D00
.L_814D8CE0:
/* 814D8CE0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D8CE4 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 814D8CE8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814D8CEC | 40 82 00 14 */	bne .L_814D8D00
/* 814D8CF0 | 7F C3 F3 78 */	mr r3, r30
/* 814D8CF4 | 4B FD FE 11 */	bl VFipdm_disk_notify_media_insert
/* 814D8CF8 | 38 60 00 01 */	li r3, 0x1
/* 814D8CFC | 48 00 00 08 */	b .L_814D8D04
.L_814D8D00:
/* 814D8D00 | 38 60 00 00 */	li r3, 0x0
.L_814D8D04:
/* 814D8D04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D8D08 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D8D0C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D8D10 | 7C 08 03 A6 */	mtlr r0
/* 814D8D14 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D8D18 | 4E 80 00 20 */	blr
.endfn _ChkMediaInsertedAndNotifyPrfile

# .text:0x358 | 0x814D8D1C | size: 0xA0
.fn _ChkMediaEjectedAndNotifyPrfile, local
/* 814D8D1C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D8D20 | 7C 08 02 A6 */	mflr r0
/* 814D8D24 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D8D28 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D8D2C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D8D30 | 7C 7E 1B 78 */	mr r30, r3
/* 814D8D34 | 4B FF 9F 25 */	bl VFSysPDMDisk2DriveP
/* 814D8D38 | 7C 7F 1B 78 */	mr r31, r3
/* 814D8D3C | 7F C3 F3 78 */	mr r3, r30
/* 814D8D40 | 4B FF 9E 6D */	bl VFSysPDMDisk2DeviceP
/* 814D8D44 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D8D48 | 41 82 00 0C */	beq .L_814D8D54
/* 814D8D4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8D50 | 40 82 00 0C */	bne .L_814D8D5C
.L_814D8D54:
/* 814D8D54 | 38 60 00 00 */	li r3, 0x0
/* 814D8D58 | 48 00 00 4C */	b .L_814D8DA4
.L_814D8D5C:
/* 814D8D5C | 38 63 00 20 */	addi r3, r3, 0x20
/* 814D8D60 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814D8D64 | 48 11 56 41 */	bl fn_815EE3A4
/* 814D8D68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8D6C | 7C 64 1B 78 */	mr r4, r3
/* 814D8D70 | 41 82 00 10 */	beq .L_814D8D80
/* 814D8D74 | 7F C3 F3 78 */	mr r3, r30
/* 814D8D78 | 4B FF CA 2D */	bl dCommon_setLastDeviceErrorToDisk
/* 814D8D7C | 48 00 00 24 */	b .L_814D8DA0
.L_814D8D80:
/* 814D8D80 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D8D84 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 814D8D88 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814D8D8C | 41 82 00 14 */	beq .L_814D8DA0
/* 814D8D90 | 7F C3 F3 78 */	mr r3, r30
/* 814D8D94 | 4B FD FC 91 */	bl VFipdm_disk_notify_media_eject
/* 814D8D98 | 38 60 FF E5 */	li r3, -0x1b
/* 814D8D9C | 48 00 00 08 */	b .L_814D8DA4
.L_814D8DA0:
/* 814D8DA0 | 38 60 00 00 */	li r3, 0x0
.L_814D8DA4:
/* 814D8DA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D8DA8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D8DAC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D8DB0 | 7C 08 03 A6 */	mtlr r0
/* 814D8DB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D8DB8 | 4E 80 00 20 */	blr
.endfn _ChkMediaEjectedAndNotifyPrfile

# .text:0x3F8 | 0x814D8DBC | size: 0x204
.fn sddrv_init_814D8DBC, global
/* 814D8DBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D8DC0 | 7C 08 02 A6 */	mflr r0
/* 814D8DC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8DC8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D8DCC | 38 00 00 00 */	li r0, 0x0
/* 814D8DD0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D8DD4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D8DD8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D8DDC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814D8DE0 | 7C 7C 1B 78 */	mr r28, r3
/* 814D8DE4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814D8DE8 | 40 82 00 0C */	bne .L_814D8DF4
/* 814D8DEC | 38 60 FF EC */	li r3, -0x14
/* 814D8DF0 | 48 00 01 B0 */	b .L_814D8FA0
.L_814D8DF4:
/* 814D8DF4 | 4B FF 9E 65 */	bl VFSysPDMDisk2DriveP
/* 814D8DF8 | 7C 7E 1B 78 */	mr r30, r3
/* 814D8DFC | 7F 83 E3 78 */	mr r3, r28
/* 814D8E00 | 4B FF 9D AD */	bl VFSysPDMDisk2DeviceP
/* 814D8E04 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D8E08 | 7C 7F 1B 78 */	mr r31, r3
/* 814D8E0C | 41 82 00 0C */	beq .L_814D8E18
/* 814D8E10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8E14 | 40 82 00 0C */	bne .L_814D8E20
.L_814D8E18:
/* 814D8E18 | 38 60 FF EC */	li r3, -0x14
/* 814D8E1C | 48 00 01 84 */	b .L_814D8FA0
.L_814D8E20:
/* 814D8E20 | 38 03 00 20 */	addi r0, r3, 0x20
/* 814D8E24 | 7F 83 E3 78 */	mr r3, r28
/* 814D8E28 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814D8E2C | 4B FF C9 F9 */	bl dCommon_getHandleIdxFromDisk
/* 814D8E30 | 7C 7E 1B 78 */	mr r30, r3
/* 814D8E34 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 814D8E38 | 48 11 5A 9D */	bl fn_815EE8D4
/* 814D8E3C | 2C 03 FF FC */	cmpwi r3, -0x4
/* 814D8E40 | 7C 7D 1B 78 */	mr r29, r3
/* 814D8E44 | 41 82 00 18 */	beq .L_814D8E5C
/* 814D8E48 | 40 80 00 10 */	bge .L_814D8E58
/* 814D8E4C | 2C 03 FF CE */	cmpwi r3, -0x32
/* 814D8E50 | 40 80 00 0C */	bge .L_814D8E5C
/* 814D8E54 | 48 00 00 08 */	b .L_814D8E5C
.L_814D8E58:
/* 814D8E58 | 2C 03 00 00 */	cmpwi r3, 0x0
.L_814D8E5C:
/* 814D8E5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8E60 | 41 82 00 18 */	beq .L_814D8E78
/* 814D8E64 | 7F 83 E3 78 */	mr r3, r28
/* 814D8E68 | 7F A4 EB 78 */	mr r4, r29
/* 814D8E6C | 4B FF C9 39 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D8E70 | 7F A3 EB 78 */	mr r3, r29
/* 814D8E74 | 48 00 01 2C */	b .L_814D8FA0
.L_814D8E78:
/* 814D8E78 | 80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 814D8E7C | 38 00 FF FF */	li r0, -0x1
/* 814D8E80 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D8E84 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814D8E88 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 814D8E8C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D8E90 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814D8E94 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 814D8E98 | 48 11 60 B9 */	bl fn_815EEF50
/* 814D8E9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8EA0 | 7C 7D 1B 78 */	mr r29, r3
/* 814D8EA4 | 41 82 00 18 */	beq .L_814D8EBC
/* 814D8EA8 | 7F 83 E3 78 */	mr r3, r28
/* 814D8EAC | 7F A4 EB 78 */	mr r4, r29
/* 814D8EB0 | 4B FF C8 F5 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D8EB4 | 7F A3 EB 78 */	mr r3, r29
/* 814D8EB8 | 48 00 00 E8 */	b .L_814D8FA0
.L_814D8EBC:
/* 814D8EBC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D8EC0 | 48 11 59 41 */	bl fn_815EE800
/* 814D8EC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8EC8 | 7C 7D 1B 78 */	mr r29, r3
/* 814D8ECC | 41 82 00 20 */	beq .L_814D8EEC
/* 814D8ED0 | 7F 83 E3 78 */	mr r3, r28
/* 814D8ED4 | 7F A4 EB 78 */	mr r4, r29
/* 814D8ED8 | 4B FF C8 CD */	bl dCommon_setLastDeviceErrorToDisk
/* 814D8EDC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D8EE0 | 48 11 61 45 */	bl fn_815EF024
/* 814D8EE4 | 7F A3 EB 78 */	mr r3, r29
/* 814D8EE8 | 48 00 00 B8 */	b .L_814D8FA0
.L_814D8EEC:
/* 814D8EEC | 3C A0 81 0F */	lis r5, lbl_810F5C80@ha
/* 814D8EF0 | 3C 80 81 4E */	lis r4, _EventCallBack@ha
/* 814D8EF4 | 57 C0 28 34 */	slwi r0, r30, 5
/* 814D8EF8 | 38 C0 00 02 */	li r6, 0x2
/* 814D8EFC | 38 A5 5C 80 */	addi r5, r5, lbl_810F5C80@l
/* 814D8F00 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D8F04 | 7C C5 01 2E */	stwx r6, r5, r0
/* 814D8F08 | 38 84 8A E0 */	addi r4, r4, _EventCallBack@l
/* 814D8F0C | 7C A5 02 14 */	add r5, r5, r0
/* 814D8F10 | 48 11 68 ED */	bl fn_815EF7FC
/* 814D8F14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8F18 | 7C 7D 1B 78 */	mr r29, r3
/* 814D8F1C | 41 82 00 20 */	beq .L_814D8F3C
/* 814D8F20 | 7F 83 E3 78 */	mr r3, r28
/* 814D8F24 | 7F A4 EB 78 */	mr r4, r29
/* 814D8F28 | 4B FF C8 7D */	bl dCommon_setLastDeviceErrorToDisk
/* 814D8F2C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D8F30 | 48 11 60 F5 */	bl fn_815EF024
/* 814D8F34 | 7F A3 EB 78 */	mr r3, r29
/* 814D8F38 | 48 00 00 68 */	b .L_814D8FA0
.L_814D8F3C:
/* 814D8F3C | 7F 83 E3 78 */	mr r3, r28
/* 814D8F40 | 4B FF FD 3D */	bl _ChkMediaInsertedAndNotifyPrfile
/* 814D8F44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D8F48 | 7C 7D 1B 78 */	mr r29, r3
/* 814D8F4C | 40 82 00 1C */	bne .L_814D8F68
/* 814D8F50 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D8F54 | 48 11 69 51 */	bl fn_815EF8A4
/* 814D8F58 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814D8F5C | 48 11 60 C9 */	bl fn_815EF024
/* 814D8F60 | 7F A3 EB 78 */	mr r3, r29
/* 814D8F64 | 48 00 00 3C */	b .L_814D8FA0
.L_814D8F68:
/* 814D8F68 | 3F E0 81 0F */	lis r31, lbl_810F5FC0@ha
/* 814D8F6C | 57 C5 10 3A */	slwi r5, r30, 2
/* 814D8F70 | 3B FF 5F C0 */	addi r31, r31, lbl_810F5FC0@l
/* 814D8F74 | 7F 83 E3 78 */	mr r3, r28
/* 814D8F78 | 7C 1F 28 2E */	lwzx r0, r31, r5
/* 814D8F7C | 38 80 00 01 */	li r4, 0x1
/* 814D8F80 | 54 00 00 38 */	clrrwi r0, r0, 3
/* 814D8F84 | 7C 1F 29 2E */	stwx r0, r31, r5
/* 814D8F88 | 4B FF C8 A1 */	bl dCommon_setFatTypeToDisk
/* 814D8F8C | 57 C4 10 3A */	slwi r4, r30, 2
/* 814D8F90 | 38 60 00 00 */	li r3, 0x0
/* 814D8F94 | 7C 1F 20 2E */	lwzx r0, r31, r4
/* 814D8F98 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814D8F9C | 7C 1F 21 2E */	stwx r0, r31, r4
.L_814D8FA0:
/* 814D8FA0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D8FA4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D8FA8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D8FAC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D8FB0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814D8FB4 | 7C 08 03 A6 */	mtlr r0
/* 814D8FB8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D8FBC | 4E 80 00 20 */	blr
.endfn sddrv_init_814D8DBC

# .text:0x5FC | 0x814D8FC0 | size: 0xF0
.fn sddrv_mount_814D8FC0, global
/* 814D8FC0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D8FC4 | 7C 08 02 A6 */	mflr r0
/* 814D8FC8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D8FCC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814D8FD0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814D8FD4 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814D8FD8 | 7C 7D 1B 78 */	mr r29, r3
/* 814D8FDC | 4B FF C8 49 */	bl dCommon_getHandleIdxFromDisk
/* 814D8FE0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D8FE4 | 7C 7E 1B 78 */	mr r30, r3
/* 814D8FE8 | 40 82 00 0C */	bne .L_814D8FF4
/* 814D8FEC | 38 60 FF EC */	li r3, -0x14
/* 814D8FF0 | 48 00 00 A4 */	b .L_814D9094
.L_814D8FF4:
/* 814D8FF4 | 7F A3 EB 78 */	mr r3, r29
/* 814D8FF8 | 4B FF 9C 61 */	bl VFSysPDMDisk2DriveP
/* 814D8FFC | 7C 7F 1B 78 */	mr r31, r3
/* 814D9000 | 7F A3 EB 78 */	mr r3, r29
/* 814D9004 | 4B FF 9B A9 */	bl VFSysPDMDisk2DeviceP
/* 814D9008 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D900C | 41 82 00 0C */	beq .L_814D9018
/* 814D9010 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9014 | 40 82 00 0C */	bne .L_814D9020
.L_814D9018:
/* 814D9018 | 38 60 FF EC */	li r3, -0x14
/* 814D901C | 48 00 00 78 */	b .L_814D9094
.L_814D9020:
/* 814D9020 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 814D9024 | 7F A3 EB 78 */	mr r3, r29
/* 814D9028 | 4B FF FC F5 */	bl _ChkMediaEjectedAndNotifyPrfile
/* 814D902C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9030 | 41 82 00 08 */	beq .L_814D9038
/* 814D9034 | 48 00 00 60 */	b .L_814D9094
.L_814D9038:
/* 814D9038 | 7F E3 FB 78 */	mr r3, r31
/* 814D903C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814D9040 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814D9044 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814D9048 | 4B FF F9 81 */	bl _VFiGetCardSize
/* 814D904C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9050 | 7C 7F 1B 78 */	mr r31, r3
/* 814D9054 | 41 82 00 18 */	beq .L_814D906C
/* 814D9058 | 7F A3 EB 78 */	mr r3, r29
/* 814D905C | 7F E4 FB 78 */	mr r4, r31
/* 814D9060 | 4B FF C7 45 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D9064 | 7F E3 FB 78 */	mr r3, r31
/* 814D9068 | 48 00 00 2C */	b .L_814D9094
.L_814D906C:
/* 814D906C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814D9070 | 7F A3 EB 78 */	mr r3, r29
/* 814D9074 | 4B FF C6 85 */	bl dCommon_setFileSizeToDisk
/* 814D9078 | 3C 80 81 0F */	lis r4, lbl_810F5FC0@ha
/* 814D907C | 57 C5 10 3A */	slwi r5, r30, 2
/* 814D9080 | 38 84 5F C0 */	addi r4, r4, lbl_810F5FC0@l
/* 814D9084 | 38 60 00 00 */	li r3, 0x0
/* 814D9088 | 7C 04 28 2E */	lwzx r0, r4, r5
/* 814D908C | 60 00 00 02 */	ori r0, r0, 0x2
/* 814D9090 | 7C 04 29 2E */	stwx r0, r4, r5
.L_814D9094:
/* 814D9094 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D9098 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814D909C | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814D90A0 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814D90A4 | 7C 08 03 A6 */	mtlr r0
/* 814D90A8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D90AC | 4E 80 00 20 */	blr
.endfn sddrv_mount_814D8FC0

# .text:0x6EC | 0x814D90B0 | size: 0x64
.fn sddrv_format_814D90B0, global
/* 814D90B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D90B4 | 7C 08 02 A6 */	mflr r0
/* 814D90B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D90BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D90C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D90C4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D90C8 | 40 82 00 0C */	bne .L_814D90D4
/* 814D90CC | 38 60 FF EC */	li r3, -0x14
/* 814D90D0 | 48 00 00 30 */	b .L_814D9100
.L_814D90D4:
/* 814D90D4 | 4B FF 9B 85 */	bl VFSysPDMDisk2DriveP
/* 814D90D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D90DC | 40 82 00 0C */	bne .L_814D90E8
/* 814D90E0 | 38 60 FF EC */	li r3, -0x14
/* 814D90E4 | 48 00 00 1C */	b .L_814D9100
.L_814D90E8:
/* 814D90E8 | 7F E3 FB 78 */	mr r3, r31
/* 814D90EC | 4B FF FC 31 */	bl _ChkMediaEjectedAndNotifyPrfile
/* 814D90F0 | 7C 03 00 D0 */	neg r0, r3
/* 814D90F4 | 7C 00 1B 78 */	or r0, r0, r3
/* 814D90F8 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814D90FC | 7C 63 00 38 */	and r3, r3, r0
.L_814D9100:
/* 814D9100 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D9104 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D9108 | 7C 08 03 A6 */	mtlr r0
/* 814D910C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D9110 | 4E 80 00 20 */	blr
.endfn sddrv_format_814D90B0

# .text:0x750 | 0x814D9114 | size: 0x9C
.fn sddrv_pread_814D9114, global
/* 814D9114 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D9118 | 7C 08 02 A6 */	mflr r0
/* 814D911C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D9120 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D9124 | 48 12 03 9D */	bl _savegpr_27
/* 814D9128 | 38 00 00 00 */	li r0, 0x0
/* 814D912C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9130 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814D9134 | 7C 7B 1B 78 */	mr r27, r3
/* 814D9138 | 7C 9C 23 78 */	mr r28, r4
/* 814D913C | 7C BD 2B 78 */	mr r29, r5
/* 814D9140 | 7C DE 33 78 */	mr r30, r6
/* 814D9144 | 7C FF 3B 78 */	mr r31, r7
/* 814D9148 | 41 82 00 1C */	beq .L_814D9164
/* 814D914C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D9150 | 41 82 00 14 */	beq .L_814D9164
/* 814D9154 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D9158 | 41 82 00 0C */	beq .L_814D9164
/* 814D915C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814D9160 | 40 82 00 0C */	bne .L_814D916C
.L_814D9164:
/* 814D9164 | 38 60 FF EC */	li r3, -0x14
/* 814D9168 | 48 00 00 30 */	b .L_814D9198
.L_814D916C:
/* 814D916C | 4B FF FB B1 */	bl _ChkMediaEjectedAndNotifyPrfile
/* 814D9170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9174 | 41 82 00 08 */	beq .L_814D917C
/* 814D9178 | 48 00 00 20 */	b .L_814D9198
.L_814D917C:
/* 814D917C | 7F C3 F3 78 */	mr r3, r30
/* 814D9180 | 7F 84 E3 78 */	mr r4, r28
/* 814D9184 | 7F A5 EB 78 */	mr r5, r29
/* 814D9188 | 7F E7 FB 78 */	mr r7, r31
/* 814D918C | 7F 68 DB 78 */	mr r8, r27
/* 814D9190 | 38 C0 02 00 */	li r6, 0x200
/* 814D9194 | 48 00 03 49 */	bl sddrv_physical_read
.L_814D9198:
/* 814D9198 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D919C | 48 12 03 71 */	bl _restgpr_27
/* 814D91A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D91A4 | 7C 08 03 A6 */	mtlr r0
/* 814D91A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D91AC | 4E 80 00 20 */	blr
.endfn sddrv_pread_814D9114

# .text:0x7EC | 0x814D91B0 | size: 0x9C
.fn sddrv_pwrite_814D91B0, global
/* 814D91B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D91B4 | 7C 08 02 A6 */	mflr r0
/* 814D91B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D91BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D91C0 | 48 12 03 01 */	bl _savegpr_27
/* 814D91C4 | 38 00 00 00 */	li r0, 0x0
/* 814D91C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D91CC | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814D91D0 | 7C 7B 1B 78 */	mr r27, r3
/* 814D91D4 | 7C 9C 23 78 */	mr r28, r4
/* 814D91D8 | 7C BD 2B 78 */	mr r29, r5
/* 814D91DC | 7C DE 33 78 */	mr r30, r6
/* 814D91E0 | 7C FF 3B 78 */	mr r31, r7
/* 814D91E4 | 41 82 00 1C */	beq .L_814D9200
/* 814D91E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D91EC | 41 82 00 14 */	beq .L_814D9200
/* 814D91F0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D91F4 | 41 82 00 0C */	beq .L_814D9200
/* 814D91F8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814D91FC | 40 82 00 0C */	bne .L_814D9208
.L_814D9200:
/* 814D9200 | 38 60 FF EC */	li r3, -0x14
/* 814D9204 | 48 00 00 30 */	b .L_814D9234
.L_814D9208:
/* 814D9208 | 4B FF FB 15 */	bl _ChkMediaEjectedAndNotifyPrfile
/* 814D920C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9210 | 41 82 00 08 */	beq .L_814D9218
/* 814D9214 | 48 00 00 20 */	b .L_814D9234
.L_814D9218:
/* 814D9218 | 7F C3 F3 78 */	mr r3, r30
/* 814D921C | 7F 84 E3 78 */	mr r4, r28
/* 814D9220 | 7F A5 EB 78 */	mr r5, r29
/* 814D9224 | 7F E7 FB 78 */	mr r7, r31
/* 814D9228 | 7F 68 DB 78 */	mr r8, r27
/* 814D922C | 38 C0 02 00 */	li r6, 0x200
/* 814D9230 | 48 00 04 2D */	bl sddrv_physical_write
.L_814D9234:
/* 814D9234 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D9238 | 48 12 02 D5 */	bl _restgpr_27
/* 814D923C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D9240 | 7C 08 03 A6 */	mtlr r0
/* 814D9244 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D9248 | 4E 80 00 20 */	blr
.endfn sddrv_pwrite_814D91B0

# .text:0x888 | 0x814D924C | size: 0x4C
.fn sddrv_unmount_814D924C, global
/* 814D924C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D9250 | 7C 08 02 A6 */	mflr r0
/* 814D9254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9258 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D925C | 40 82 00 0C */	bne .L_814D9268
/* 814D9260 | 38 60 FF EC */	li r3, -0x14
/* 814D9264 | 48 00 00 24 */	b .L_814D9288
.L_814D9268:
/* 814D9268 | 4B FF C5 BD */	bl dCommon_getHandleIdxFromDisk
/* 814D926C | 3C 80 81 0F */	lis r4, lbl_810F5FC0@ha
/* 814D9270 | 54 65 10 3A */	slwi r5, r3, 2
/* 814D9274 | 38 84 5F C0 */	addi r4, r4, lbl_810F5FC0@l
/* 814D9278 | 38 60 00 00 */	li r3, 0x0
/* 814D927C | 7C 04 28 2E */	lwzx r0, r4, r5
/* 814D9280 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814D9284 | 7C 04 29 2E */	stwx r0, r4, r5
.L_814D9288:
/* 814D9288 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D928C | 7C 08 03 A6 */	mtlr r0
/* 814D9290 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D9294 | 4E 80 00 20 */	blr
.endfn sddrv_unmount_814D924C

# .text:0x8D4 | 0x814D9298 | size: 0xD8
.fn sddrv_finalize_814D9298, global
/* 814D9298 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D929C | 7C 08 02 A6 */	mflr r0
/* 814D92A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D92A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D92A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D92AC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D92B0 | 7C 7E 1B 78 */	mr r30, r3
/* 814D92B4 | 40 82 00 0C */	bne .L_814D92C0
/* 814D92B8 | 38 60 FF EC */	li r3, -0x14
/* 814D92BC | 48 00 00 9C */	b .L_814D9358
.L_814D92C0:
/* 814D92C0 | 4B FF 99 99 */	bl VFSysPDMDisk2DriveP
/* 814D92C4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D92C8 | 7F C3 F3 78 */	mr r3, r30
/* 814D92CC | 4B FF 98 E1 */	bl VFSysPDMDisk2DeviceP
/* 814D92D0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D92D4 | 41 82 00 0C */	beq .L_814D92E0
/* 814D92D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D92DC | 40 82 00 0C */	bne .L_814D92E8
.L_814D92E0:
/* 814D92E0 | 38 60 FF EC */	li r3, -0x14
/* 814D92E4 | 48 00 00 74 */	b .L_814D9358
.L_814D92E8:
/* 814D92E8 | 3B E3 00 20 */	addi r31, r3, 0x20
/* 814D92EC | 7F C3 F3 78 */	mr r3, r30
/* 814D92F0 | 4B FF C5 35 */	bl dCommon_getHandleIdxFromDisk
/* 814D92F4 | 7F E3 FB 78 */	mr r3, r31
/* 814D92F8 | 48 11 65 AD */	bl fn_815EF8A4
/* 814D92FC | 7F E3 FB 78 */	mr r3, r31
/* 814D9300 | 48 11 5D 25 */	bl fn_815EF024
/* 814D9304 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9308 | 7C 7F 1B 78 */	mr r31, r3
/* 814D930C | 41 82 00 18 */	beq .L_814D9324
/* 814D9310 | 7F C3 F3 78 */	mr r3, r30
/* 814D9314 | 7F E4 FB 78 */	mr r4, r31
/* 814D9318 | 4B FF C4 8D */	bl dCommon_setLastDeviceErrorToDisk
/* 814D931C | 7F E3 FB 78 */	mr r3, r31
/* 814D9320 | 48 00 00 38 */	b .L_814D9358
.L_814D9324:
/* 814D9324 | 7F C3 F3 78 */	mr r3, r30
/* 814D9328 | 4B FF C4 FD */	bl dCommon_getHandleIdxFromDisk
/* 814D932C | 3C C0 81 0F */	lis r6, lbl_810F5FC0@ha
/* 814D9330 | 54 67 10 3A */	slwi r7, r3, 2
/* 814D9334 | 38 C6 5F C0 */	addi r6, r6, lbl_810F5FC0@l
/* 814D9338 | 38 00 FF FA */	li r0, -0x6
/* 814D933C | 7C A6 38 2E */	lwzx r5, r6, r7
/* 814D9340 | 7F C3 F3 78 */	mr r3, r30
/* 814D9344 | 38 80 00 01 */	li r4, 0x1
/* 814D9348 | 7C A0 00 38 */	and r0, r5, r0
/* 814D934C | 7C 06 39 2E */	stwx r0, r6, r7
/* 814D9350 | 4B FF C4 D9 */	bl dCommon_setFatTypeToDisk
/* 814D9354 | 38 60 00 00 */	li r3, 0x0
.L_814D9358:
/* 814D9358 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D935C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D9360 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D9364 | 7C 08 03 A6 */	mtlr r0
/* 814D9368 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D936C | 4E 80 00 20 */	blr
.endfn sddrv_finalize_814D9298

# .text:0x9AC | 0x814D9370 | size: 0x154
.fn sddrv_get_disk_info_814D9370, global
/* 814D9370 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D9374 | 7C 08 02 A6 */	mflr r0
/* 814D9378 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D937C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D9380 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814D9384 | 7C 9F 23 78 */	mr r31, r4
/* 814D9388 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814D938C | 7C 7E 1B 78 */	mr r30, r3
/* 814D9390 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814D9394 | 41 82 00 0C */	beq .L_814D93A0
/* 814D9398 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D939C | 40 82 00 0C */	bne .L_814D93A8
.L_814D93A0:
/* 814D93A0 | 38 60 FF EC */	li r3, -0x14
/* 814D93A4 | 48 00 01 04 */	b .L_814D94A8
.L_814D93A8:
/* 814D93A8 | 4B FF 98 B1 */	bl VFSysPDMDisk2DriveP
/* 814D93AC | 7C 7D 1B 78 */	mr r29, r3
/* 814D93B0 | 7F C3 F3 78 */	mr r3, r30
/* 814D93B4 | 4B FF 97 F9 */	bl VFSysPDMDisk2DeviceP
/* 814D93B8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D93BC | 41 82 00 0C */	beq .L_814D93C8
/* 814D93C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D93C4 | 40 82 00 0C */	bne .L_814D93D0
.L_814D93C8:
/* 814D93C8 | 38 60 FF EC */	li r3, -0x14
/* 814D93CC | 48 00 00 DC */	b .L_814D94A8
.L_814D93D0:
/* 814D93D0 | 3B A3 00 20 */	addi r29, r3, 0x20
/* 814D93D4 | 38 81 00 14 */	addi r4, r1, 0x14
/* 814D93D8 | 7F A3 EB 78 */	mr r3, r29
/* 814D93DC | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814D93E0 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814D93E4 | 4B FF F5 E5 */	bl _VFiGetCardSize
/* 814D93E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D93EC | 7C 64 1B 78 */	mr r4, r3
/* 814D93F0 | 41 82 00 0C */	beq .L_814D93FC
/* 814D93F4 | 7F C3 F3 78 */	mr r3, r30
/* 814D93F8 | 4B FF C3 AD */	bl dCommon_setLastDeviceErrorToDisk
.L_814D93FC:
/* 814D93FC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814D9400 | 3C 60 04 10 */	lis r3, 0x410
/* 814D9404 | 3C 80 80 81 */	lis r4, 0x8081
/* 814D9408 | 38 C0 00 3F */	li r6, 0x3f
/* 814D940C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814D9410 | 39 23 41 05 */	addi r9, r3, 0x4105
/* 814D9414 | 39 04 80 81 */	subi r8, r4, 0x7f7f
/* 814D9418 | 38 A0 00 00 */	li r5, 0x0
/* 814D941C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814D9420 | 38 80 00 FF */	li r4, 0xff
/* 814D9424 | 80 E1 00 0C */	lwz r7, 0xc(r1)
/* 814D9428 | 60 A0 00 04 */	ori r0, r5, 0x4
/* 814D942C | 7D 08 18 16 */	mulhwu r8, r8, r3
/* 814D9430 | 7F A3 EB 78 */	mr r3, r29
/* 814D9434 | 98 DF 00 07 */	stb r6, 0x7(r31)
/* 814D9438 | 98 9F 00 06 */	stb r4, 0x6(r31)
/* 814D943C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814D9440 | 55 06 C9 FE */	srwi r6, r8, 7
/* 814D9444 | 7D 09 30 16 */	mulhwu r8, r9, r6
/* 814D9448 | 7C C8 30 50 */	subf r6, r8, r6
/* 814D944C | 54 C6 F8 7E */	srwi r6, r6, 1
/* 814D9450 | 7C C6 42 14 */	add r6, r6, r8
/* 814D9454 | 54 C6 D9 7E */	srwi r6, r6, 5
/* 814D9458 | 7C C6 3B 96 */	divwu r6, r6, r7
/* 814D945C | B0 DF 00 04 */	sth r6, 0x4(r31)
/* 814D9460 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 814D9464 | B0 DF 00 08 */	sth r6, 0x8(r31)
/* 814D9468 | 90 BF 00 10 */	stw r5, 0x10(r31)
/* 814D946C | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814D9470 | 48 11 4F 35 */	bl fn_815EE3A4
/* 814D9474 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9478 | 7C 64 1B 78 */	mr r4, r3
/* 814D947C | 41 82 00 10 */	beq .L_814D948C
/* 814D9480 | 7F C3 F3 78 */	mr r3, r30
/* 814D9484 | 4B FF C3 21 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D9488 | 48 00 00 1C */	b .L_814D94A4
.L_814D948C:
/* 814D948C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D9490 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814D9494 | 41 82 00 10 */	beq .L_814D94A4
/* 814D9498 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814D949C | 60 00 00 01 */	ori r0, r0, 0x1
/* 814D94A0 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_814D94A4:
/* 814D94A4 | 38 60 00 00 */	li r3, 0x0
.L_814D94A8:
/* 814D94A8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D94AC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814D94B0 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814D94B4 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814D94B8 | 7C 08 03 A6 */	mtlr r0
/* 814D94BC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D94C0 | 4E 80 00 20 */	blr
.endfn sddrv_get_disk_info_814D9370

# .text:0xB00 | 0x814D94C4 | size: 0x18
.fn VFi_sddrv_init_drv_tbl, global
/* 814D94C4 | 3C A0 81 62 */	lis r5, lbl_8161D198@ha
/* 814D94C8 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814D94CC | 38 A5 D1 98 */	addi r5, r5, lbl_8161D198@l
/* 814D94D0 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 814D94D4 | 38 60 00 00 */	li r3, 0x0
/* 814D94D8 | 4E 80 00 20 */	blr
.endfn VFi_sddrv_init_drv_tbl

# .text:0xB18 | 0x814D94DC | size: 0x180
.fn sddrv_physical_read, local
/* 814D94DC | 54 2B 05 FE */	clrlwi r11, r1, 23
/* 814D94E0 | 7C 2C 0B 78 */	mr r12, r1
/* 814D94E4 | 21 6B F8 00 */	subfic r11, r11, -0x800
/* 814D94E8 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814D94EC | 7C 08 02 A6 */	mflr r0
/* 814D94F0 | 7D 8B 63 78 */	mr r11, r12
/* 814D94F4 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814D94F8 | 48 11 FF BD */	bl _savegpr_24
/* 814D94FC | 7D 1C 43 78 */	mr r28, r8
/* 814D9500 | 7C 78 1B 78 */	mr r24, r3
/* 814D9504 | 7C 99 23 78 */	mr r25, r4
/* 814D9508 | 7C BA 2B 78 */	mr r26, r5
/* 814D950C | 7C DD 33 78 */	mr r29, r6
/* 814D9510 | 7C FB 3B 78 */	mr r27, r7
/* 814D9514 | 7F 83 E3 78 */	mr r3, r28
/* 814D9518 | 4B FF C1 8D */	bl dCommon_getFileSizeFromDisk
/* 814D951C | 7C 7F 1B 78 */	mr r31, r3
/* 814D9520 | 7F 83 E3 78 */	mr r3, r28
/* 814D9524 | 4B FF 97 35 */	bl VFSysPDMDisk2DriveP
/* 814D9528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D952C | 41 82 00 0C */	beq .L_814D9538
/* 814D9530 | 28 1D 02 00 */	cmplwi r29, 0x200
/* 814D9534 | 41 82 00 0C */	beq .L_814D9540
.L_814D9538:
/* 814D9538 | 38 60 FF EC */	li r3, -0x14
/* 814D953C | 48 00 01 04 */	b .L_814D9640
.L_814D9540:
/* 814D9540 | 7F 83 E3 78 */	mr r3, r28
/* 814D9544 | 4B FF 96 69 */	bl VFSysPDMDisk2DeviceP
/* 814D9548 | 38 1F 01 FF */	addi r0, r31, 0x1ff
/* 814D954C | 7F FA C2 14 */	add r31, r26, r24
/* 814D9550 | 54 00 BA 7E */	srwi r0, r0, 9
/* 814D9554 | 3B A3 00 20 */	addi r29, r3, 0x20
/* 814D9558 | 7C 1F 00 40 */	cmplw r31, r0
/* 814D955C | 40 81 00 74 */	ble .L_814D95D0
/* 814D9560 | 7C 1A 00 50 */	subf r0, r26, r0
/* 814D9564 | 3B C0 00 00 */	li r30, 0x0
/* 814D9568 | 7F FA 02 14 */	add r31, r26, r0
/* 814D956C | 48 00 00 40 */	b .L_814D95AC
.L_814D9570:
/* 814D9570 | 7F A3 EB 78 */	mr r3, r29
/* 814D9574 | 7F 44 D3 78 */	mr r4, r26
/* 814D9578 | 38 A1 04 00 */	addi r5, r1, 0x400
/* 814D957C | 38 C0 00 01 */	li r6, 0x1
/* 814D9580 | 48 11 54 D1 */	bl fn_815EEA50
/* 814D9584 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9588 | 41 82 00 0C */	beq .L_814D9594
/* 814D958C | 7C 64 1B 78 */	mr r4, r3
/* 814D9590 | 48 00 00 28 */	b .L_814D95B8
.L_814D9594:
/* 814D9594 | 7C 79 F2 14 */	add r3, r25, r30
/* 814D9598 | 38 81 04 00 */	addi r4, r1, 0x400
/* 814D959C | 38 A0 02 00 */	li r5, 0x200
/* 814D95A0 | 4B FD C2 41 */	bl VFipf_memcpy
/* 814D95A4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814D95A8 | 3B DE 02 00 */	addi r30, r30, 0x200
.L_814D95AC:
/* 814D95AC | 7C 1A F8 40 */	cmplw r26, r31
/* 814D95B0 | 41 80 FF C0 */	blt .L_814D9570
/* 814D95B4 | 38 80 00 00 */	li r4, 0x0
.L_814D95B8:
/* 814D95B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D95BC | 41 82 00 0C */	beq .L_814D95C8
/* 814D95C0 | 7F 83 E3 78 */	mr r3, r28
/* 814D95C4 | 4B FF C1 E1 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D95C8:
/* 814D95C8 | 38 60 FF EA */	li r3, -0x16
/* 814D95CC | 48 00 00 74 */	b .L_814D9640
.L_814D95D0:
/* 814D95D0 | 3B C0 00 00 */	li r30, 0x0
/* 814D95D4 | 48 00 00 40 */	b .L_814D9614
.L_814D95D8:
/* 814D95D8 | 7F A3 EB 78 */	mr r3, r29
/* 814D95DC | 7F 44 D3 78 */	mr r4, r26
/* 814D95E0 | 38 A1 02 00 */	addi r5, r1, 0x200
/* 814D95E4 | 38 C0 00 01 */	li r6, 0x1
/* 814D95E8 | 48 11 54 69 */	bl fn_815EEA50
/* 814D95EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D95F0 | 41 82 00 0C */	beq .L_814D95FC
/* 814D95F4 | 7C 64 1B 78 */	mr r4, r3
/* 814D95F8 | 48 00 00 28 */	b .L_814D9620
.L_814D95FC:
/* 814D95FC | 7C 79 F2 14 */	add r3, r25, r30
/* 814D9600 | 38 81 02 00 */	addi r4, r1, 0x200
/* 814D9604 | 38 A0 02 00 */	li r5, 0x200
/* 814D9608 | 4B FD C1 D9 */	bl VFipf_memcpy
/* 814D960C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814D9610 | 3B DE 02 00 */	addi r30, r30, 0x200
.L_814D9614:
/* 814D9614 | 7C 1A F8 40 */	cmplw r26, r31
/* 814D9618 | 41 80 FF C0 */	blt .L_814D95D8
/* 814D961C | 38 80 00 00 */	li r4, 0x0
.L_814D9620:
/* 814D9620 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D9624 | 41 82 00 14 */	beq .L_814D9638
/* 814D9628 | 7F 83 E3 78 */	mr r3, r28
/* 814D962C | 4B FF C1 79 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D9630 | 38 60 FF FF */	li r3, -0x1
/* 814D9634 | 48 00 00 0C */	b .L_814D9640
.L_814D9638:
/* 814D9638 | 93 1B 00 00 */	stw r24, 0x0(r27)
/* 814D963C | 38 60 00 00 */	li r3, 0x0
.L_814D9640:
/* 814D9640 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814D9644 | 7D 4B 53 78 */	mr r11, r10
/* 814D9648 | 48 11 FE B9 */	bl _restgpr_24
/* 814D964C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814D9650 | 7C 08 03 A6 */	mtlr r0
/* 814D9654 | 7D 41 53 78 */	mr r1, r10
/* 814D9658 | 4E 80 00 20 */	blr
.endfn sddrv_physical_read

# .text:0xC98 | 0x814D965C | size: 0x180
.fn sddrv_physical_write, local
/* 814D965C | 54 2B 05 FE */	clrlwi r11, r1, 23
/* 814D9660 | 7C 2C 0B 78 */	mr r12, r1
/* 814D9664 | 21 6B F8 00 */	subfic r11, r11, -0x800
/* 814D9668 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814D966C | 7C 08 02 A6 */	mflr r0
/* 814D9670 | 7D 8B 63 78 */	mr r11, r12
/* 814D9674 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814D9678 | 48 11 FE 3D */	bl _savegpr_24
/* 814D967C | 7D 1C 43 78 */	mr r28, r8
/* 814D9680 | 7C 78 1B 78 */	mr r24, r3
/* 814D9684 | 7C 99 23 78 */	mr r25, r4
/* 814D9688 | 7C BA 2B 78 */	mr r26, r5
/* 814D968C | 7C DD 33 78 */	mr r29, r6
/* 814D9690 | 7C FB 3B 78 */	mr r27, r7
/* 814D9694 | 7F 83 E3 78 */	mr r3, r28
/* 814D9698 | 4B FF C0 0D */	bl dCommon_getFileSizeFromDisk
/* 814D969C | 7C 7F 1B 78 */	mr r31, r3
/* 814D96A0 | 7F 83 E3 78 */	mr r3, r28
/* 814D96A4 | 4B FF 95 B5 */	bl VFSysPDMDisk2DriveP
/* 814D96A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D96AC | 41 82 00 0C */	beq .L_814D96B8
/* 814D96B0 | 28 1D 02 00 */	cmplwi r29, 0x200
/* 814D96B4 | 41 82 00 0C */	beq .L_814D96C0
.L_814D96B8:
/* 814D96B8 | 38 60 FF EC */	li r3, -0x14
/* 814D96BC | 48 00 01 04 */	b .L_814D97C0
.L_814D96C0:
/* 814D96C0 | 7F 83 E3 78 */	mr r3, r28
/* 814D96C4 | 4B FF 94 E9 */	bl VFSysPDMDisk2DeviceP
/* 814D96C8 | 38 1F 01 FF */	addi r0, r31, 0x1ff
/* 814D96CC | 7F FA C2 14 */	add r31, r26, r24
/* 814D96D0 | 54 00 BA 7E */	srwi r0, r0, 9
/* 814D96D4 | 3B A3 00 20 */	addi r29, r3, 0x20
/* 814D96D8 | 7C 1F 00 40 */	cmplw r31, r0
/* 814D96DC | 40 81 00 74 */	ble .L_814D9750
/* 814D96E0 | 7C 1A 00 50 */	subf r0, r26, r0
/* 814D96E4 | 3B C0 00 00 */	li r30, 0x0
/* 814D96E8 | 7F FA 02 14 */	add r31, r26, r0
/* 814D96EC | 48 00 00 40 */	b .L_814D972C
.L_814D96F0:
/* 814D96F0 | 38 61 04 00 */	addi r3, r1, 0x400
/* 814D96F4 | 7C 99 F2 14 */	add r4, r25, r30
/* 814D96F8 | 38 A0 02 00 */	li r5, 0x200
/* 814D96FC | 4B FD C0 E5 */	bl VFipf_memcpy
/* 814D9700 | 7F A3 EB 78 */	mr r3, r29
/* 814D9704 | 7F 44 D3 78 */	mr r4, r26
/* 814D9708 | 38 A1 04 00 */	addi r5, r1, 0x400
/* 814D970C | 38 C0 00 01 */	li r6, 0x1
/* 814D9710 | 48 11 53 4D */	bl fn_815EEA5C
/* 814D9714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9718 | 41 82 00 0C */	beq .L_814D9724
/* 814D971C | 7C 64 1B 78 */	mr r4, r3
/* 814D9720 | 48 00 00 18 */	b .L_814D9738
.L_814D9724:
/* 814D9724 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814D9728 | 3B DE 02 00 */	addi r30, r30, 0x200
.L_814D972C:
/* 814D972C | 7C 1A F8 40 */	cmplw r26, r31
/* 814D9730 | 41 80 FF C0 */	blt .L_814D96F0
/* 814D9734 | 38 80 00 00 */	li r4, 0x0
.L_814D9738:
/* 814D9738 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D973C | 41 82 00 0C */	beq .L_814D9748
/* 814D9740 | 7F 83 E3 78 */	mr r3, r28
/* 814D9744 | 4B FF C0 61 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D9748:
/* 814D9748 | 38 60 FF EA */	li r3, -0x16
/* 814D974C | 48 00 00 74 */	b .L_814D97C0
.L_814D9750:
/* 814D9750 | 3B C0 00 00 */	li r30, 0x0
/* 814D9754 | 48 00 00 40 */	b .L_814D9794
.L_814D9758:
/* 814D9758 | 38 61 02 00 */	addi r3, r1, 0x200
/* 814D975C | 7C 99 F2 14 */	add r4, r25, r30
/* 814D9760 | 38 A0 02 00 */	li r5, 0x200
/* 814D9764 | 4B FD C0 7D */	bl VFipf_memcpy
/* 814D9768 | 7F A3 EB 78 */	mr r3, r29
/* 814D976C | 7F 44 D3 78 */	mr r4, r26
/* 814D9770 | 38 A1 02 00 */	addi r5, r1, 0x200
/* 814D9774 | 38 C0 00 01 */	li r6, 0x1
/* 814D9778 | 48 11 52 E5 */	bl fn_815EEA5C
/* 814D977C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D9780 | 41 82 00 0C */	beq .L_814D978C
/* 814D9784 | 7C 64 1B 78 */	mr r4, r3
/* 814D9788 | 48 00 00 18 */	b .L_814D97A0
.L_814D978C:
/* 814D978C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814D9790 | 3B DE 02 00 */	addi r30, r30, 0x200
.L_814D9794:
/* 814D9794 | 7C 1A F8 40 */	cmplw r26, r31
/* 814D9798 | 41 80 FF C0 */	blt .L_814D9758
/* 814D979C | 38 80 00 00 */	li r4, 0x0
.L_814D97A0:
/* 814D97A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D97A4 | 41 82 00 14 */	beq .L_814D97B8
/* 814D97A8 | 7F 83 E3 78 */	mr r3, r28
/* 814D97AC | 4B FF BF F9 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D97B0 | 38 60 FF FF */	li r3, -0x1
/* 814D97B4 | 48 00 00 0C */	b .L_814D97C0
.L_814D97B8:
/* 814D97B8 | 93 1B 00 00 */	stw r24, 0x0(r27)
/* 814D97BC | 38 60 00 00 */	li r3, 0x0
.L_814D97C0:
/* 814D97C0 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814D97C4 | 7D 4B 53 78 */	mr r11, r10
/* 814D97C8 | 48 11 FD 39 */	bl _restgpr_24
/* 814D97CC | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814D97D0 | 7C 08 03 A6 */	mtlr r0
/* 814D97D4 | 7D 41 53 78 */	mr r1, r10
/* 814D97D8 | 4E 80 00 20 */	blr
.endfn sddrv_physical_write
