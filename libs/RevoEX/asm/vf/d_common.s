.include "macros.inc"
.file "d_common.c"

# 0x810F58D0..0x810F5AD8 | size: 0x208
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810F58D0 | size: 0x208
.obj l_driveInfo, local
	.skip 0x208
.endobj l_driveInfo

# 0x814D4E38..0x814D5A54 | size: 0xC1C
.text
.balign 4

# .text:0x0 | 0x814D4E38 | size: 0x68
.fn dCommon_DevideBuff32, global
/* 814D4E38 | 38 00 00 00 */	li r0, 0x0
/* 814D4E3C | 54 6B 06 FF */	clrlwi. r11, r3, 27
/* 814D4E40 | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814D4E44 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814D4E48 | 90 09 00 00 */	stw r0, 0x0(r9)
/* 814D4E4C | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814D4E50 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814D4E54 | 40 82 00 1C */	bne .L_814D4E70
/* 814D4E58 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814D4E5C | 90 66 00 00 */	stw r3, 0x0(r6)
/* 814D4E60 | 90 87 00 00 */	stw r4, 0x0(r7)
/* 814D4E64 | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814D4E68 | 90 09 00 00 */	stw r0, 0x0(r9)
/* 814D4E6C | 4E 80 00 20 */	blr
.L_814D4E70:
/* 814D4E70 | 35 44 FF E0 */	subic. r10, r4, 0x20
/* 814D4E74 | 20 0B 00 20 */	subfic r0, r11, 0x20
/* 814D4E78 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814D4E7C | 41 82 00 10 */	beq .L_814D4E8C
/* 814D4E80 | 7C 03 02 14 */	add r0, r3, r0
/* 814D4E84 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814D4E88 | 91 47 00 00 */	stw r10, 0x0(r7)
.L_814D4E8C:
/* 814D4E8C | 7C 03 22 14 */	add r0, r3, r4
/* 814D4E90 | 91 69 00 00 */	stw r11, 0x0(r9)
/* 814D4E94 | 7C 0B 00 50 */	subf r0, r11, r0
/* 814D4E98 | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814D4E9C | 4E 80 00 20 */	blr
.endfn dCommon_DevideBuff32

# .text:0x68 | 0x814D4EA0 | size: 0x68
.fn dCommon_IsPrfFile, global
/* 814D4EA0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D4EA4 | 7C 08 02 A6 */	mflr r0
/* 814D4EA8 | 7C 64 1B 78 */	mr r4, r3
/* 814D4EAC | 38 A0 00 20 */	li r5, 0x20
/* 814D4EB0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D4EB4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D4EB8 | 4B FE 09 29 */	bl VFipf_memcpy
/* 814D4EBC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814D4EC0 | 2C 00 00 56 */	cmpwi r0, 0x56
/* 814D4EC4 | 40 82 00 28 */	bne .L_814D4EEC
/* 814D4EC8 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 814D4ECC | 2C 00 00 46 */	cmpwi r0, 0x46
/* 814D4ED0 | 40 82 00 1C */	bne .L_814D4EEC
/* 814D4ED4 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 814D4ED8 | 2C 00 00 46 */	cmpwi r0, 0x46
/* 814D4EDC | 40 82 00 10 */	bne .L_814D4EEC
/* 814D4EE0 | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 814D4EE4 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814D4EE8 | 41 82 00 0C */	beq .L_814D4EF4
.L_814D4EEC:
/* 814D4EEC | 38 60 00 00 */	li r3, 0x0
/* 814D4EF0 | 48 00 00 08 */	b .L_814D4EF8
.L_814D4EF4:
/* 814D4EF4 | 38 60 00 01 */	li r3, 0x1
.L_814D4EF8:
/* 814D4EF8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D4EFC | 7C 08 03 A6 */	mtlr r0
/* 814D4F00 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D4F04 | 4E 80 00 20 */	blr
.endfn dCommon_IsPrfFile

# .text:0xD0 | 0x814D4F08 | size: 0xD4
.fn dCommon_CopyPrfFileHeader, global
/* 814D4F08 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D4F0C | 7C 08 02 A6 */	mflr r0
/* 814D4F10 | 3C E0 00 01 */	lis r7, 0x1
/* 814D4F14 | 39 80 00 20 */	li r12, 0x20
/* 814D4F18 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D4F1C | 39 67 FE FF */	subi r11, r7, 0x101
/* 814D4F20 | 38 00 00 00 */	li r0, 0x0
/* 814D4F24 | 54 AA C6 3E */	extrwi r10, r5, 8, 16
/* 814D4F28 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814D4F2C | 3B E0 00 46 */	li r31, 0x46
/* 814D4F30 | 54 89 46 3E */	srwi r9, r4, 24
/* 814D4F34 | 54 88 86 3E */	extrwi r8, r4, 8, 8
/* 814D4F38 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814D4F3C | 54 87 C6 3E */	extrwi r7, r4, 8, 16
/* 814D4F40 | 3B C0 00 56 */	li r30, 0x56
/* 814D4F44 | 98 A1 00 0F */	stb r5, 0xf(r1)
/* 814D4F48 | 38 A0 00 20 */	li r5, 0x20
/* 814D4F4C | 98 81 00 13 */	stb r4, 0x13(r1)
/* 814D4F50 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814D4F54 | 9B C1 00 08 */	stb r30, 0x8(r1)
/* 814D4F58 | 9B E1 00 09 */	stb r31, 0x9(r1)
/* 814D4F5C | 9B E1 00 0A */	stb r31, 0xa(r1)
/* 814D4F60 | 99 81 00 0B */	stb r12, 0xb(r1)
/* 814D4F64 | B1 61 00 0C */	sth r11, 0xc(r1)
/* 814D4F68 | 99 41 00 0E */	stb r10, 0xe(r1)
/* 814D4F6C | 99 21 00 10 */	stb r9, 0x10(r1)
/* 814D4F70 | 99 01 00 11 */	stb r8, 0x11(r1)
/* 814D4F74 | 98 E1 00 12 */	stb r7, 0x12(r1)
/* 814D4F78 | B1 81 00 14 */	sth r12, 0x14(r1)
/* 814D4F7C | B0 01 00 16 */	sth r0, 0x16(r1)
/* 814D4F80 | 98 C1 00 18 */	stb r6, 0x18(r1)
/* 814D4F84 | 98 01 00 19 */	stb r0, 0x19(r1)
/* 814D4F88 | 98 01 00 1A */	stb r0, 0x1a(r1)
/* 814D4F8C | 98 01 00 1B */	stb r0, 0x1b(r1)
/* 814D4F90 | 98 01 00 1C */	stb r0, 0x1c(r1)
/* 814D4F94 | 98 01 00 1D */	stb r0, 0x1d(r1)
/* 814D4F98 | 98 01 00 1E */	stb r0, 0x1e(r1)
/* 814D4F9C | 98 01 00 1F */	stb r0, 0x1f(r1)
/* 814D4FA0 | 98 01 00 20 */	stb r0, 0x20(r1)
/* 814D4FA4 | 98 01 00 21 */	stb r0, 0x21(r1)
/* 814D4FA8 | 98 01 00 22 */	stb r0, 0x22(r1)
/* 814D4FAC | 98 01 00 23 */	stb r0, 0x23(r1)
/* 814D4FB0 | 98 01 00 24 */	stb r0, 0x24(r1)
/* 814D4FB4 | 98 01 00 25 */	stb r0, 0x25(r1)
/* 814D4FB8 | 98 01 00 26 */	stb r0, 0x26(r1)
/* 814D4FBC | 98 01 00 27 */	stb r0, 0x27(r1)
/* 814D4FC0 | 4B FE 08 21 */	bl VFipf_memcpy
/* 814D4FC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D4FC8 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814D4FCC | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814D4FD0 | 7C 08 03 A6 */	mtlr r0
/* 814D4FD4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D4FD8 | 4E 80 00 20 */	blr
.endfn dCommon_CopyPrfFileHeader

# .text:0x1A4 | 0x814D4FDC | size: 0x4
.fn dCommon_PrintSignature, global
/* 814D4FDC | 4E 80 00 20 */	blr
.endfn dCommon_PrintSignature

# .text:0x1A8 | 0x814D4FE0 | size: 0x4C
.fn dCommon_MakeFsInfoSec, global
/* 814D4FE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D4FE4 | 7C 08 02 A6 */	mflr r0
/* 814D4FE8 | 7C 85 23 78 */	mr r5, r4
/* 814D4FEC | 38 80 00 00 */	li r4, 0x0
/* 814D4FF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D4FF4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D4FF8 | 7C 7F 1B 78 */	mr r31, r3
/* 814D4FFC | 4B FE 09 0D */	bl VFipf_memset
/* 814D5000 | 38 00 FF FF */	li r0, -0x1
/* 814D5004 | 7F E4 FB 78 */	mr r4, r31
/* 814D5008 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814D500C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D5010 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814D5014 | 4B FE 23 45 */	bl VFipdm_bpb_set_fsinfo_information
/* 814D5018 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D501C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D5020 | 7C 08 03 A6 */	mtlr r0
/* 814D5024 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D5028 | 4E 80 00 20 */	blr
.endfn dCommon_MakeFsInfoSec

# .text:0x1F4 | 0x814D502C | size: 0x10
.fn dCommon_GetPhysicalOffset, global
/* 814D502C | 7C 05 18 50 */	subf r0, r5, r3
/* 814D5030 | 7C 64 01 D6 */	mullw r3, r4, r0
/* 814D5034 | 38 63 00 20 */	addi r3, r3, 0x20
/* 814D5038 | 4E 80 00 20 */	blr
.endfn dCommon_GetPhysicalOffset

# .text:0x204 | 0x814D503C | size: 0x88
.fn dCommon_GetNiceFatType, global
/* 814D503C | 7C 84 2B 96 */	divwu r4, r4, r5
/* 814D5040 | 28 04 0F F5 */	cmplwi r4, 0xff5
/* 814D5044 | 40 80 00 30 */	bge .L_814D5074
/* 814D5048 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D504C | 41 82 00 20 */	beq .L_814D506C
/* 814D5050 | 54 80 10 3A */	slwi r0, r4, 2
/* 814D5054 | 7C 04 00 50 */	subf r0, r4, r0
/* 814D5058 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814D505C | 7C 86 02 14 */	add r4, r6, r0
/* 814D5060 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814D5064 | 7C 00 33 96 */	divwu r0, r0, r6
/* 814D5068 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814D506C:
/* 814D506C | 38 60 00 00 */	li r3, 0x0
/* 814D5070 | 4E 80 00 20 */	blr
.L_814D5074:
/* 814D5074 | 28 04 FF F5 */	cmplwi r4, 0xfff5
/* 814D5078 | 40 80 00 28 */	bge .L_814D50A0
/* 814D507C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5080 | 41 82 00 18 */	beq .L_814D5098
/* 814D5084 | 54 80 08 3C */	slwi r0, r4, 1
/* 814D5088 | 7C 86 02 14 */	add r4, r6, r0
/* 814D508C | 38 04 FF FF */	subi r0, r4, 0x1
/* 814D5090 | 7C 00 33 96 */	divwu r0, r0, r6
/* 814D5094 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814D5098:
/* 814D5098 | 38 60 00 01 */	li r3, 0x1
/* 814D509C | 4E 80 00 20 */	blr
.L_814D50A0:
/* 814D50A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D50A4 | 41 82 00 18 */	beq .L_814D50BC
/* 814D50A8 | 54 80 10 3A */	slwi r0, r4, 2
/* 814D50AC | 7C 86 02 14 */	add r4, r6, r0
/* 814D50B0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814D50B4 | 7C 00 33 96 */	divwu r0, r0, r6
/* 814D50B8 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814D50BC:
/* 814D50BC | 38 60 00 02 */	li r3, 0x2
/* 814D50C0 | 4E 80 00 20 */	blr
.endfn dCommon_GetNiceFatType

# .text:0x28C | 0x814D50C4 | size: 0x14
.fn dCommon_GetReservedSecFromFatType, global
/* 814D50C4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814D50C8 | 38 60 00 01 */	li r3, 0x1
/* 814D50CC | 4C 82 00 20 */	bnelr
/* 814D50D0 | 38 60 00 20 */	li r3, 0x20
/* 814D50D4 | 4E 80 00 20 */	blr
.endfn dCommon_GetReservedSecFromFatType

# .text:0x2A0 | 0x814D50D8 | size: 0x1C
.fn dCommon_GetRootEntNumFromFatType, global
/* 814D50D8 | 38 83 FF FE */	subi r4, r3, 0x2
/* 814D50DC | 20 03 00 02 */	subfic r0, r3, 0x2
/* 814D50E0 | 7C 83 00 F8 */	nor r3, r4, r0
/* 814D50E4 | 38 00 00 80 */	li r0, 0x80
/* 814D50E8 | 7C 63 FE 70 */	srawi r3, r3, 31
/* 814D50EC | 7C 03 18 78 */	andc r3, r0, r3
/* 814D50F0 | 4E 80 00 20 */	blr
.endfn dCommon_GetRootEntNumFromFatType

# .text:0x2BC | 0x814D50F4 | size: 0x244
.fn dCommon_MakeBootSector, global
/* 814D50F4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814D50F8 | 7C 08 02 A6 */	mflr r0
/* 814D50FC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814D5100 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814D5104 | 48 12 43 A5 */	bl _savegpr_21
/* 814D5108 | 7C B7 2B 78 */	mr r23, r5
/* 814D510C | 7C D8 33 78 */	mr r24, r6
/* 814D5110 | 7C F9 3B 78 */	mr r25, r7
/* 814D5114 | 7C 75 1B 78 */	mr r21, r3
/* 814D5118 | 7C 96 23 78 */	mr r22, r4
/* 814D511C | 83 A1 00 48 */	lwz r29, 0x48(r1)
/* 814D5120 | 83 C1 00 4C */	lwz r30, 0x4c(r1)
/* 814D5124 | 7D 1A 43 78 */	mr r26, r8
/* 814D5128 | 8B E1 00 53 */	lbz r31, 0x53(r1)
/* 814D512C | 7D 3B 4B 78 */	mr r27, r9
/* 814D5130 | 7D 5C 53 78 */	mr r28, r10
/* 814D5134 | 7E E4 BB 78 */	mr r4, r23
/* 814D5138 | 7F 05 C3 78 */	mr r5, r24
/* 814D513C | 7F 26 CB 78 */	mr r6, r25
/* 814D5140 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D5144 | 4B FF FE F9 */	bl dCommon_GetNiceFatType
/* 814D5148 | 90 76 00 00 */	stw r3, 0x0(r22)
/* 814D514C | 7E A3 AB 78 */	mr r3, r21
/* 814D5150 | 38 80 00 00 */	li r4, 0x0
/* 814D5154 | 38 A0 02 00 */	li r5, 0x200
/* 814D5158 | 4B FE 07 B1 */	bl VFipf_memset
/* 814D515C | 3C 00 00 01 */	lis r0, 0x1
/* 814D5160 | 57 89 C6 3E */	extrwi r9, r28, 8, 16
/* 814D5164 | 57 26 C6 3E */	extrwi r6, r25, 8, 16
/* 814D5168 | 57 A5 C6 3E */	extrwi r5, r29, 8, 16
/* 814D516C | 57 C3 C6 3E */	extrwi r3, r30, 8, 16
/* 814D5170 | 39 60 00 55 */	li r11, 0x55
/* 814D5174 | 39 40 00 AA */	li r10, 0xaa
/* 814D5178 | 39 00 00 FF */	li r8, 0xff
/* 814D517C | 38 E0 00 00 */	li r7, 0x0
/* 814D5180 | 38 80 00 02 */	li r4, 0x2
/* 814D5184 | 7C 17 00 40 */	cmplw r23, r0
/* 814D5188 | 9B 55 00 00 */	stb r26, 0x0(r21)
/* 814D518C | 57 CC C2 3E */	srwi r12, r30, 8
/* 814D5190 | 9B 75 00 02 */	stb r27, 0x2(r21)
/* 814D5194 | 99 75 01 FE */	stb r11, 0x1fe(r21)
/* 814D5198 | 99 55 01 FF */	stb r10, 0x1ff(r21)
/* 814D519C | 9B 95 00 18 */	stb r28, 0x18(r21)
/* 814D51A0 | 99 35 00 19 */	stb r9, 0x19(r21)
/* 814D51A4 | 99 15 00 1A */	stb r8, 0x1a(r21)
/* 814D51A8 | 98 F5 00 1B */	stb r7, 0x1b(r21)
/* 814D51AC | 9B 35 00 0B */	stb r25, 0xb(r21)
/* 814D51B0 | 98 D5 00 0C */	stb r6, 0xc(r21)
/* 814D51B4 | 9B 15 00 0D */	stb r24, 0xd(r21)
/* 814D51B8 | 9B B5 00 0E */	stb r29, 0xe(r21)
/* 814D51BC | 98 B5 00 0F */	stb r5, 0xf(r21)
/* 814D51C0 | 98 95 00 10 */	stb r4, 0x10(r21)
/* 814D51C4 | 9B D5 00 11 */	stb r30, 0x11(r21)
/* 814D51C8 | 98 75 00 12 */	stb r3, 0x12(r21)
/* 814D51CC | 9B F5 00 15 */	stb r31, 0x15(r21)
/* 814D51D0 | 40 80 00 24 */	bge .L_814D51F4
/* 814D51D4 | 56 E0 C6 3E */	extrwi r0, r23, 8, 16
/* 814D51D8 | 9A F5 00 13 */	stb r23, 0x13(r21)
/* 814D51DC | 98 15 00 14 */	stb r0, 0x14(r21)
/* 814D51E0 | 98 F5 00 20 */	stb r7, 0x20(r21)
/* 814D51E4 | 98 F5 00 21 */	stb r7, 0x21(r21)
/* 814D51E8 | 98 F5 00 22 */	stb r7, 0x22(r21)
/* 814D51EC | 98 F5 00 23 */	stb r7, 0x23(r21)
/* 814D51F0 | 48 00 00 28 */	b .L_814D5218
.L_814D51F4:
/* 814D51F4 | 56 E4 C6 3E */	extrwi r4, r23, 8, 16
/* 814D51F8 | 56 E3 86 3E */	extrwi r3, r23, 8, 8
/* 814D51FC | 56 E0 46 3E */	srwi r0, r23, 24
/* 814D5200 | 98 F5 00 13 */	stb r7, 0x13(r21)
/* 814D5204 | 98 F5 00 14 */	stb r7, 0x14(r21)
/* 814D5208 | 9A F5 00 20 */	stb r23, 0x20(r21)
/* 814D520C | 98 95 00 21 */	stb r4, 0x21(r21)
/* 814D5210 | 98 75 00 22 */	stb r3, 0x22(r21)
/* 814D5214 | 98 15 00 23 */	stb r0, 0x23(r21)
.L_814D5218:
/* 814D5218 | 80 16 00 00 */	lwz r0, 0x0(r22)
/* 814D521C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814D5220 | 40 82 00 B4 */	bne .L_814D52D4
/* 814D5224 | 39 40 00 00 */	li r10, 0x0
/* 814D5228 | 38 00 00 20 */	li r0, 0x20
/* 814D522C | 98 15 00 0E */	stb r0, 0xe(r21)
/* 814D5230 | 39 00 00 02 */	li r8, 0x2
/* 814D5234 | 38 E0 00 01 */	li r7, 0x1
/* 814D5238 | 38 C0 00 29 */	li r6, 0x29
/* 814D523C | 99 55 00 0F */	stb r10, 0xf(r21)
/* 814D5240 | 38 A0 00 34 */	li r5, 0x34
/* 814D5244 | 38 80 00 12 */	li r4, 0x12
/* 814D5248 | 38 60 00 80 */	li r3, 0x80
/* 814D524C | 99 55 00 11 */	stb r10, 0x11(r21)
/* 814D5250 | 38 00 00 06 */	li r0, 0x6
/* 814D5254 | 99 55 00 12 */	stb r10, 0x12(r21)
/* 814D5258 | 81 21 00 08 */	lwz r9, 0x8(r1)
/* 814D525C | 99 35 00 24 */	stb r9, 0x24(r21)
/* 814D5260 | 81 21 00 08 */	lwz r9, 0x8(r1)
/* 814D5264 | 55 29 C6 3E */	extrwi r9, r9, 8, 16
/* 814D5268 | 99 35 00 25 */	stb r9, 0x25(r21)
/* 814D526C | 81 21 00 08 */	lwz r9, 0x8(r1)
/* 814D5270 | 55 29 86 3E */	extrwi r9, r9, 8, 8
/* 814D5274 | 99 35 00 26 */	stb r9, 0x26(r21)
/* 814D5278 | 81 21 00 08 */	lwz r9, 0x8(r1)
/* 814D527C | 55 29 46 3E */	srwi r9, r9, 24
/* 814D5280 | 99 55 00 28 */	stb r10, 0x28(r21)
/* 814D5284 | 99 35 00 27 */	stb r9, 0x27(r21)
/* 814D5288 | 99 55 00 29 */	stb r10, 0x29(r21)
/* 814D528C | 99 55 00 2A */	stb r10, 0x2a(r21)
/* 814D5290 | 99 55 00 2B */	stb r10, 0x2b(r21)
/* 814D5294 | 99 15 00 2C */	stb r8, 0x2c(r21)
/* 814D5298 | 99 55 00 2D */	stb r10, 0x2d(r21)
/* 814D529C | 99 55 00 2E */	stb r10, 0x2e(r21)
/* 814D52A0 | 99 55 00 2F */	stb r10, 0x2f(r21)
/* 814D52A4 | 98 F5 00 30 */	stb r7, 0x30(r21)
/* 814D52A8 | 99 55 00 31 */	stb r10, 0x31(r21)
/* 814D52AC | 99 55 00 41 */	stb r10, 0x41(r21)
/* 814D52B0 | 98 D5 00 42 */	stb r6, 0x42(r21)
/* 814D52B4 | 98 B5 00 43 */	stb r5, 0x43(r21)
/* 814D52B8 | 98 95 00 44 */	stb r4, 0x44(r21)
/* 814D52BC | 99 55 00 45 */	stb r10, 0x45(r21)
/* 814D52C0 | 99 55 00 46 */	stb r10, 0x46(r21)
/* 814D52C4 | 98 75 00 40 */	stb r3, 0x40(r21)
/* 814D52C8 | 98 15 00 32 */	stb r0, 0x32(r21)
/* 814D52CC | 99 55 00 33 */	stb r10, 0x33(r21)
/* 814D52D0 | 48 00 00 50 */	b .L_814D5320
.L_814D52D4:
/* 814D52D4 | 9B D5 00 11 */	stb r30, 0x11(r21)
/* 814D52D8 | 38 C0 00 00 */	li r6, 0x0
/* 814D52DC | 38 A0 00 29 */	li r5, 0x29
/* 814D52E0 | 38 80 00 34 */	li r4, 0x34
/* 814D52E4 | 99 95 00 12 */	stb r12, 0x12(r21)
/* 814D52E8 | 38 60 00 12 */	li r3, 0x12
/* 814D52EC | 38 00 00 80 */	li r0, 0x80
/* 814D52F0 | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 814D52F4 | 98 F5 00 16 */	stb r7, 0x16(r21)
/* 814D52F8 | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 814D52FC | 54 E7 C6 3E */	extrwi r7, r7, 8, 16
/* 814D5300 | 98 D5 00 25 */	stb r6, 0x25(r21)
/* 814D5304 | 98 F5 00 17 */	stb r7, 0x17(r21)
/* 814D5308 | 98 B5 00 26 */	stb r5, 0x26(r21)
/* 814D530C | 98 95 00 27 */	stb r4, 0x27(r21)
/* 814D5310 | 98 75 00 28 */	stb r3, 0x28(r21)
/* 814D5314 | 98 D5 00 29 */	stb r6, 0x29(r21)
/* 814D5318 | 98 D5 00 2A */	stb r6, 0x2a(r21)
/* 814D531C | 98 15 00 24 */	stb r0, 0x24(r21)
.L_814D5320:
/* 814D5320 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814D5324 | 48 12 41 D1 */	bl _restgpr_21
/* 814D5328 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814D532C | 7C 08 03 A6 */	mtlr r0
/* 814D5330 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814D5334 | 4E 80 00 20 */	blr
.endfn dCommon_MakeBootSector

# .text:0x500 | 0x814D5338 | size: 0x178
.fn dCommon_ReadDummyBPB, global
/* 814D5338 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D533C | 7C 08 02 A6 */	mflr r0
/* 814D5340 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D5344 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D5348 | 48 12 41 6D */	bl _savegpr_24
/* 814D534C | 38 00 00 00 */	li r0, 0x0
/* 814D5350 | 7C FC 3B 78 */	mr r28, r7
/* 814D5354 | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814D5358 | 7C 78 1B 78 */	mr r24, r3
/* 814D535C | 7C 99 23 78 */	mr r25, r4
/* 814D5360 | 7C BA 2B 78 */	mr r26, r5
/* 814D5364 | 7C DB 33 78 */	mr r27, r6
/* 814D5368 | 7D 1D 43 78 */	mr r29, r8
/* 814D536C | 7D 3E 4B 78 */	mr r30, r9
/* 814D5370 | 7D 5F 53 78 */	mr r31, r10
/* 814D5374 | 7F 83 E3 78 */	mr r3, r28
/* 814D5378 | 4B FF D2 CD */	bl VFSysPDMDisk2HandleIdx
/* 814D537C | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D5380 | 40 80 00 18 */	bge .L_814D5398
/* 814D5384 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D5388 | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D538C | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D5390 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5394 | 48 00 00 08 */	b .L_814D539C
.L_814D5398:
/* 814D5398 | 38 60 00 00 */	li r3, 0x0
.L_814D539C:
/* 814D539C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D53A0 | 41 82 00 0C */	beq .L_814D53AC
/* 814D53A4 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814D53A8 | 48 00 00 08 */	b .L_814D53B0
.L_814D53AC:
/* 814D53AC | 38 00 00 00 */	li r0, 0x0
.L_814D53B0:
/* 814D53B0 | 7C 1A 00 40 */	cmplw r26, r0
/* 814D53B4 | 40 80 00 E0 */	bge .L_814D5494
/* 814D53B8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814D53BC | 40 82 00 44 */	bne .L_814D5400
/* 814D53C0 | 7F CC F3 78 */	mr r12, r30
/* 814D53C4 | 7F 83 E3 78 */	mr r3, r28
/* 814D53C8 | 7F 24 CB 78 */	mr r4, r25
/* 814D53CC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814D53D0 | 7D 89 03 A6 */	mtctr r12
/* 814D53D4 | 4E 80 04 21 */	bctrl
/* 814D53D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D53DC | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 814D53E0 | 41 82 00 0C */	beq .L_814D53EC
/* 814D53E4 | 38 60 00 00 */	li r3, 0x0
/* 814D53E8 | 48 00 00 B0 */	b .L_814D5498
.L_814D53EC:
/* 814D53EC | 93 1B 00 00 */	stw r24, 0x0(r27)
/* 814D53F0 | 38 00 00 00 */	li r0, 0x0
/* 814D53F4 | 38 60 00 00 */	li r3, 0x0
/* 814D53F8 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814D53FC | 48 00 00 9C */	b .L_814D5498
.L_814D5400:
/* 814D5400 | 28 1A 00 01 */	cmplwi r26, 0x1
/* 814D5404 | 40 82 00 80 */	bne .L_814D5484
/* 814D5408 | 7F 83 E3 78 */	mr r3, r28
/* 814D540C | 4B FF D2 39 */	bl VFSysPDMDisk2HandleIdx
/* 814D5410 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D5414 | 40 80 00 18 */	bge .L_814D542C
/* 814D5418 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D541C | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D5420 | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D5424 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5428 | 48 00 00 08 */	b .L_814D5430
.L_814D542C:
/* 814D542C | 38 60 00 00 */	li r3, 0x0
.L_814D5430:
/* 814D5430 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5434 | 41 82 00 0C */	beq .L_814D5440
/* 814D5438 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D543C | 48 00 00 08 */	b .L_814D5444
.L_814D5440:
/* 814D5440 | 38 00 00 01 */	li r0, 0x1
.L_814D5444:
/* 814D5444 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814D5448 | 40 82 00 3C */	bne .L_814D5484
/* 814D544C | 7F EC FB 78 */	mr r12, r31
/* 814D5450 | 7F 23 CB 78 */	mr r3, r25
/* 814D5454 | 7D 89 03 A6 */	mtctr r12
/* 814D5458 | 4E 80 04 21 */	bctrl
/* 814D545C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5460 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 814D5464 | 41 82 00 0C */	beq .L_814D5470
/* 814D5468 | 38 60 00 00 */	li r3, 0x0
/* 814D546C | 48 00 00 2C */	b .L_814D5498
.L_814D5470:
/* 814D5470 | 93 1B 00 00 */	stw r24, 0x0(r27)
/* 814D5474 | 38 00 00 00 */	li r0, 0x0
/* 814D5478 | 38 60 00 00 */	li r3, 0x0
/* 814D547C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814D5480 | 48 00 00 18 */	b .L_814D5498
.L_814D5484:
/* 814D5484 | 38 00 FF EA */	li r0, -0x16
/* 814D5488 | 38 60 00 00 */	li r3, 0x0
/* 814D548C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814D5490 | 48 00 00 08 */	b .L_814D5498
.L_814D5494:
/* 814D5494 | 38 60 00 01 */	li r3, 0x1
.L_814D5498:
/* 814D5498 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D549C | 48 12 40 65 */	bl _restgpr_24
/* 814D54A0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D54A4 | 7C 08 03 A6 */	mtlr r0
/* 814D54A8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D54AC | 4E 80 00 20 */	blr
.endfn dCommon_ReadDummyBPB

# .text:0x678 | 0x814D54B0 | size: 0x108
.fn dCommon_WriteDummyBPB, global
/* 814D54B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D54B4 | 7C 08 02 A6 */	mflr r0
/* 814D54B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D54BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D54C0 | 48 12 40 01 */	bl _savegpr_27
/* 814D54C4 | 38 00 00 00 */	li r0, 0x0
/* 814D54C8 | 7C DE 33 78 */	mr r30, r6
/* 814D54CC | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814D54D0 | 7C 7B 1B 78 */	mr r27, r3
/* 814D54D4 | 7C 9C 23 78 */	mr r28, r4
/* 814D54D8 | 7C BD 2B 78 */	mr r29, r5
/* 814D54DC | 7C FF 3B 78 */	mr r31, r7
/* 814D54E0 | 7F C3 F3 78 */	mr r3, r30
/* 814D54E4 | 4B FF D1 61 */	bl VFSysPDMDisk2HandleIdx
/* 814D54E8 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D54EC | 40 80 00 18 */	bge .L_814D5504
/* 814D54F0 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D54F4 | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D54F8 | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D54FC | 7C 63 02 14 */	add r3, r3, r0
/* 814D5500 | 48 00 00 08 */	b .L_814D5508
.L_814D5504:
/* 814D5504 | 38 60 00 00 */	li r3, 0x0
.L_814D5508:
/* 814D5508 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D550C | 41 82 00 0C */	beq .L_814D5518
/* 814D5510 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814D5514 | 48 00 00 08 */	b .L_814D551C
.L_814D5518:
/* 814D5518 | 38 00 00 00 */	li r0, 0x0
.L_814D551C:
/* 814D551C | 7C 1C 00 40 */	cmplw r28, r0
/* 814D5520 | 40 80 00 7C */	bge .L_814D559C
/* 814D5524 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814D5528 | 41 82 00 50 */	beq .L_814D5578
/* 814D552C | 28 1C 00 01 */	cmplwi r28, 0x1
/* 814D5530 | 40 82 00 5C */	bne .L_814D558C
/* 814D5534 | 7F C3 F3 78 */	mr r3, r30
/* 814D5538 | 4B FF D1 0D */	bl VFSysPDMDisk2HandleIdx
/* 814D553C | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D5540 | 40 80 00 18 */	bge .L_814D5558
/* 814D5544 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D5548 | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D554C | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D5550 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5554 | 48 00 00 08 */	b .L_814D555C
.L_814D5558:
/* 814D5558 | 38 60 00 00 */	li r3, 0x0
.L_814D555C:
/* 814D555C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5560 | 41 82 00 0C */	beq .L_814D556C
/* 814D5564 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D5568 | 48 00 00 08 */	b .L_814D5570
.L_814D556C:
/* 814D556C | 38 00 00 01 */	li r0, 0x1
.L_814D5570:
/* 814D5570 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814D5574 | 40 82 00 18 */	bne .L_814D558C
.L_814D5578:
/* 814D5578 | 93 7D 00 00 */	stw r27, 0x0(r29)
/* 814D557C | 38 00 00 00 */	li r0, 0x0
/* 814D5580 | 38 60 00 00 */	li r3, 0x0
/* 814D5584 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814D5588 | 48 00 00 18 */	b .L_814D55A0
.L_814D558C:
/* 814D558C | 38 00 FF EA */	li r0, -0x16
/* 814D5590 | 38 60 00 00 */	li r3, 0x0
/* 814D5594 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814D5598 | 48 00 00 08 */	b .L_814D55A0
.L_814D559C:
/* 814D559C | 38 60 00 01 */	li r3, 0x1
.L_814D55A0:
/* 814D55A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D55A4 | 48 12 3F 69 */	bl _restgpr_27
/* 814D55A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D55AC | 7C 08 03 A6 */	mtlr r0
/* 814D55B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D55B4 | 4E 80 00 20 */	blr
.endfn dCommon_WriteDummyBPB

# .text:0x780 | 0x814D55B8 | size: 0xEC
.fn dCommon_initDriveInfo, global
/* 814D55B8 | 3C 80 81 0F */	lis r4, l_driveInfo@ha
/* 814D55BC | 38 00 00 03 */	li r0, 0x3
/* 814D55C0 | 38 84 58 D0 */	addi r4, r4, l_driveInfo@l
/* 814D55C4 | 38 60 00 00 */	li r3, 0x0
/* 814D55C8 | 7C 09 03 A6 */	mtctr r0
.L_814D55CC:
/* 814D55CC | 90 64 00 00 */	stw r3, 0x0(r4)
/* 814D55D0 | 90 64 00 04 */	stw r3, 0x4(r4)
/* 814D55D4 | 90 64 00 08 */	stw r3, 0x8(r4)
/* 814D55D8 | 90 64 00 0C */	stw r3, 0xc(r4)
/* 814D55DC | 90 64 00 10 */	stw r3, 0x10(r4)
/* 814D55E0 | 90 64 00 14 */	stw r3, 0x14(r4)
/* 814D55E4 | 90 64 00 18 */	stw r3, 0x18(r4)
/* 814D55E8 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814D55EC | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814D55F0 | 90 64 00 24 */	stw r3, 0x24(r4)
/* 814D55F4 | 90 64 00 28 */	stw r3, 0x28(r4)
/* 814D55F8 | 90 64 00 2C */	stw r3, 0x2c(r4)
/* 814D55FC | 90 64 00 30 */	stw r3, 0x30(r4)
/* 814D5600 | 90 64 00 34 */	stw r3, 0x34(r4)
/* 814D5604 | 90 64 00 38 */	stw r3, 0x38(r4)
/* 814D5608 | 90 64 00 3C */	stw r3, 0x3c(r4)
/* 814D560C | 90 64 00 40 */	stw r3, 0x40(r4)
/* 814D5610 | 90 64 00 44 */	stw r3, 0x44(r4)
/* 814D5614 | 90 64 00 48 */	stw r3, 0x48(r4)
/* 814D5618 | 90 64 00 4C */	stw r3, 0x4c(r4)
/* 814D561C | 90 64 00 50 */	stw r3, 0x50(r4)
/* 814D5620 | 90 64 00 54 */	stw r3, 0x54(r4)
/* 814D5624 | 90 64 00 58 */	stw r3, 0x58(r4)
/* 814D5628 | 90 64 00 5C */	stw r3, 0x5c(r4)
/* 814D562C | 90 64 00 60 */	stw r3, 0x60(r4)
/* 814D5630 | 90 64 00 64 */	stw r3, 0x64(r4)
/* 814D5634 | 90 64 00 68 */	stw r3, 0x68(r4)
/* 814D5638 | 90 64 00 6C */	stw r3, 0x6c(r4)
/* 814D563C | 90 64 00 70 */	stw r3, 0x70(r4)
/* 814D5640 | 90 64 00 74 */	stw r3, 0x74(r4)
/* 814D5644 | 90 64 00 78 */	stw r3, 0x78(r4)
/* 814D5648 | 90 64 00 7C */	stw r3, 0x7c(r4)
/* 814D564C | 90 64 00 80 */	stw r3, 0x80(r4)
/* 814D5650 | 90 64 00 84 */	stw r3, 0x84(r4)
/* 814D5654 | 90 64 00 88 */	stw r3, 0x88(r4)
/* 814D5658 | 90 64 00 8C */	stw r3, 0x8c(r4)
/* 814D565C | 90 64 00 90 */	stw r3, 0x90(r4)
/* 814D5660 | 90 64 00 94 */	stw r3, 0x94(r4)
/* 814D5664 | 90 64 00 98 */	stw r3, 0x98(r4)
/* 814D5668 | 90 64 00 9C */	stw r3, 0x9c(r4)
/* 814D566C | 38 84 00 A0 */	addi r4, r4, 0xa0
/* 814D5670 | 42 00 FF 5C */	bdnz .L_814D55CC
/* 814D5674 | 38 00 00 00 */	li r0, 0x0
/* 814D5678 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814D567C | 90 04 00 04 */	stw r0, 0x4(r4)
/* 814D5680 | 90 04 00 08 */	stw r0, 0x8(r4)
/* 814D5684 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814D5688 | 90 04 00 10 */	stw r0, 0x10(r4)
/* 814D568C | 90 04 00 14 */	stw r0, 0x14(r4)
/* 814D5690 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 814D5694 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814D5698 | 90 04 00 20 */	stw r0, 0x20(r4)
/* 814D569C | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814D56A0 | 4E 80 00 20 */	blr
.endfn dCommon_initDriveInfo

# .text:0x86C | 0x814D56A4 | size: 0x54
.fn dCommon_getFileSizeFromDisk, global
/* 814D56A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D56A8 | 7C 08 02 A6 */	mflr r0
/* 814D56AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D56B0 | 4B FF CF 95 */	bl VFSysPDMDisk2HandleIdx
/* 814D56B4 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D56B8 | 40 80 00 18 */	bge .L_814D56D0
/* 814D56BC | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D56C0 | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D56C4 | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D56C8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D56CC | 48 00 00 08 */	b .L_814D56D4
.L_814D56D0:
/* 814D56D0 | 38 60 00 00 */	li r3, 0x0
.L_814D56D4:
/* 814D56D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D56D8 | 41 82 00 0C */	beq .L_814D56E4
/* 814D56DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D56E0 | 48 00 00 08 */	b .L_814D56E8
.L_814D56E4:
/* 814D56E4 | 38 60 00 00 */	li r3, 0x0
.L_814D56E8:
/* 814D56E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D56EC | 7C 08 03 A6 */	mtlr r0
/* 814D56F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D56F4 | 4E 80 00 20 */	blr
.endfn dCommon_getFileSizeFromDisk

# .text:0x8C0 | 0x814D56F8 | size: 0x58
.fn dCommon_setFileSizeToDisk, global
/* 814D56F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D56FC | 7C 08 02 A6 */	mflr r0
/* 814D5700 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D5704 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D5708 | 7C 9F 23 78 */	mr r31, r4
/* 814D570C | 4B FF CF 39 */	bl VFSysPDMDisk2HandleIdx
/* 814D5710 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D5714 | 40 80 00 18 */	bge .L_814D572C
/* 814D5718 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D571C | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D5720 | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D5724 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5728 | 48 00 00 08 */	b .L_814D5730
.L_814D572C:
/* 814D572C | 38 60 00 00 */	li r3, 0x0
.L_814D5730:
/* 814D5730 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5734 | 41 82 00 08 */	beq .L_814D573C
/* 814D5738 | 93 E3 00 00 */	stw r31, 0x0(r3)
.L_814D573C:
/* 814D573C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D5740 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D5744 | 7C 08 03 A6 */	mtlr r0
/* 814D5748 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D574C | 4E 80 00 20 */	blr
.endfn dCommon_setFileSizeToDisk

# .text:0x918 | 0x814D5750 | size: 0x54
.fn dCommon_getLastDeviceErrorFromDisk, global
/* 814D5750 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D5754 | 7C 08 02 A6 */	mflr r0
/* 814D5758 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D575C | 4B FF CE E9 */	bl VFSysPDMDisk2HandleIdx
/* 814D5760 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D5764 | 40 80 00 18 */	bge .L_814D577C
/* 814D5768 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D576C | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D5770 | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D5774 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5778 | 48 00 00 08 */	b .L_814D5780
.L_814D577C:
/* 814D577C | 38 60 00 00 */	li r3, 0x0
.L_814D5780:
/* 814D5780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5784 | 41 82 00 0C */	beq .L_814D5790
/* 814D5788 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814D578C | 48 00 00 08 */	b .L_814D5794
.L_814D5790:
/* 814D5790 | 38 60 00 00 */	li r3, 0x0
.L_814D5794:
/* 814D5794 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D5798 | 7C 08 03 A6 */	mtlr r0
/* 814D579C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D57A0 | 4E 80 00 20 */	blr
.endfn dCommon_getLastDeviceErrorFromDisk

# .text:0x96C | 0x814D57A4 | size: 0x58
.fn dCommon_setLastDeviceErrorToDisk, global
/* 814D57A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D57A8 | 7C 08 02 A6 */	mflr r0
/* 814D57AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D57B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D57B4 | 7C 9F 23 78 */	mr r31, r4
/* 814D57B8 | 4B FF CE 8D */	bl VFSysPDMDisk2HandleIdx
/* 814D57BC | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D57C0 | 40 80 00 18 */	bge .L_814D57D8
/* 814D57C4 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D57C8 | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D57CC | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D57D0 | 7C 63 02 14 */	add r3, r3, r0
/* 814D57D4 | 48 00 00 08 */	b .L_814D57DC
.L_814D57D8:
/* 814D57D8 | 38 60 00 00 */	li r3, 0x0
.L_814D57DC:
/* 814D57DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D57E0 | 41 82 00 08 */	beq .L_814D57E8
/* 814D57E4 | 93 E3 00 04 */	stw r31, 0x4(r3)
.L_814D57E8:
/* 814D57E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D57EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D57F0 | 7C 08 03 A6 */	mtlr r0
/* 814D57F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D57F8 | 4E 80 00 20 */	blr
.endfn dCommon_setLastDeviceErrorToDisk

# .text:0x9C4 | 0x814D57FC | size: 0x28
.fn dCommon_setLastDeviceErrorToDisk2, global
/* 814D57FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5800 | 4D 80 00 20 */	bltlr
/* 814D5804 | 2C 03 00 1A */	cmpwi r3, 0x1a
/* 814D5808 | 4C 80 00 20 */	bgelr
/* 814D580C | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D5810 | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D5814 | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D5818 | 7C 63 02 14 */	add r3, r3, r0
/* 814D581C | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814D5820 | 4E 80 00 20 */	blr
.endfn dCommon_setLastDeviceErrorToDisk2

# .text:0x9EC | 0x814D5824 | size: 0x4
.fn dCommon_getHandleIdxFromDisk, global
/* 814D5824 | 4B FF CE 20 */	b VFSysPDMDisk2HandleIdx
.endfn dCommon_getHandleIdxFromDisk

# .text:0x9F0 | 0x814D5828 | size: 0x58
.fn dCommon_setFatTypeToDisk, global
/* 814D5828 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D582C | 7C 08 02 A6 */	mflr r0
/* 814D5830 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D5834 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D5838 | 7C 9F 23 78 */	mr r31, r4
/* 814D583C | 4B FF CE 09 */	bl VFSysPDMDisk2HandleIdx
/* 814D5840 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D5844 | 40 80 00 18 */	bge .L_814D585C
/* 814D5848 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D584C | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D5850 | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D5854 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5858 | 48 00 00 08 */	b .L_814D5860
.L_814D585C:
/* 814D585C | 38 60 00 00 */	li r3, 0x0
.L_814D5860:
/* 814D5860 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5864 | 41 82 00 08 */	beq .L_814D586C
/* 814D5868 | 93 E3 00 08 */	stw r31, 0x8(r3)
.L_814D586C:
/* 814D586C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D5870 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D5874 | 7C 08 03 A6 */	mtlr r0
/* 814D5878 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D587C | 4E 80 00 20 */	blr
.endfn dCommon_setFatTypeToDisk

# .text:0xA48 | 0x814D5880 | size: 0x54
.fn dCommon_getResvSecNumFromDisk, global
/* 814D5880 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D5884 | 7C 08 02 A6 */	mflr r0
/* 814D5888 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D588C | 4B FF CD B9 */	bl VFSysPDMDisk2HandleIdx
/* 814D5890 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D5894 | 40 80 00 18 */	bge .L_814D58AC
/* 814D5898 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D589C | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D58A0 | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D58A4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D58A8 | 48 00 00 08 */	b .L_814D58B0
.L_814D58AC:
/* 814D58AC | 38 60 00 00 */	li r3, 0x0
.L_814D58B0:
/* 814D58B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D58B4 | 41 82 00 0C */	beq .L_814D58C0
/* 814D58B8 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814D58BC | 48 00 00 08 */	b .L_814D58C4
.L_814D58C0:
/* 814D58C0 | 38 60 00 00 */	li r3, 0x0
.L_814D58C4:
/* 814D58C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D58C8 | 7C 08 03 A6 */	mtlr r0
/* 814D58CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D58D0 | 4E 80 00 20 */	blr
.endfn dCommon_getResvSecNumFromDisk

# .text:0xA9C | 0x814D58D4 | size: 0x58
.fn dCommon_setResvSecNumToDisk, global
/* 814D58D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D58D8 | 7C 08 02 A6 */	mflr r0
/* 814D58DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D58E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D58E4 | 7C 9F 23 78 */	mr r31, r4
/* 814D58E8 | 4B FF CD 5D */	bl VFSysPDMDisk2HandleIdx
/* 814D58EC | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D58F0 | 40 80 00 18 */	bge .L_814D5908
/* 814D58F4 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D58F8 | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D58FC | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D5900 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5904 | 48 00 00 08 */	b .L_814D590C
.L_814D5908:
/* 814D5908 | 38 60 00 00 */	li r3, 0x0
.L_814D590C:
/* 814D590C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5910 | 41 82 00 08 */	beq .L_814D5918
/* 814D5914 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_814D5918:
/* 814D5918 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D591C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D5920 | 7C 08 03 A6 */	mtlr r0
/* 814D5924 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D5928 | 4E 80 00 20 */	blr
.endfn dCommon_setResvSecNumToDisk

# .text:0xAF4 | 0x814D592C | size: 0x54
.fn dCommon_getRootEntNumFromDisk, global
/* 814D592C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D5930 | 7C 08 02 A6 */	mflr r0
/* 814D5934 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D5938 | 4B FF CD 0D */	bl VFSysPDMDisk2HandleIdx
/* 814D593C | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D5940 | 40 80 00 18 */	bge .L_814D5958
/* 814D5944 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D5948 | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D594C | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D5950 | 7C 63 02 14 */	add r3, r3, r0
/* 814D5954 | 48 00 00 08 */	b .L_814D595C
.L_814D5958:
/* 814D5958 | 38 60 00 00 */	li r3, 0x0
.L_814D595C:
/* 814D595C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D5960 | 41 82 00 0C */	beq .L_814D596C
/* 814D5964 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814D5968 | 48 00 00 08 */	b .L_814D5970
.L_814D596C:
/* 814D596C | 38 60 00 00 */	li r3, 0x0
.L_814D5970:
/* 814D5970 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D5974 | 7C 08 03 A6 */	mtlr r0
/* 814D5978 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D597C | 4E 80 00 20 */	blr
.endfn dCommon_getRootEntNumFromDisk

# .text:0xB48 | 0x814D5980 | size: 0x58
.fn dCommon_setRootEntNumToDisk, global
/* 814D5980 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D5984 | 7C 08 02 A6 */	mflr r0
/* 814D5988 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D598C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D5990 | 7C 9F 23 78 */	mr r31, r4
/* 814D5994 | 4B FF CC B1 */	bl VFSysPDMDisk2HandleIdx
/* 814D5998 | 28 03 00 1A */	cmplwi r3, 0x1a
/* 814D599C | 40 80 00 18 */	bge .L_814D59B4
/* 814D59A0 | 1C 03 00 14 */	mulli r0, r3, 0x14
/* 814D59A4 | 3C 60 81 0F */	lis r3, l_driveInfo@ha
/* 814D59A8 | 38 63 58 D0 */	addi r3, r3, l_driveInfo@l
/* 814D59AC | 7C 63 02 14 */	add r3, r3, r0
/* 814D59B0 | 48 00 00 08 */	b .L_814D59B8
.L_814D59B4:
/* 814D59B4 | 38 60 00 00 */	li r3, 0x0
.L_814D59B8:
/* 814D59B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D59BC | 41 82 00 08 */	beq .L_814D59C4
/* 814D59C0 | 93 E3 00 10 */	stw r31, 0x10(r3)
.L_814D59C4:
/* 814D59C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D59C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D59CC | 7C 08 03 A6 */	mtlr r0
/* 814D59D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D59D4 | 4E 80 00 20 */	blr
.endfn dCommon_setRootEntNumToDisk

# .text:0xBA0 | 0x814D59D8 | size: 0x7C
.fn dCommon_FlushFromHandleIdx, global
/* 814D59D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D59DC | 7C 08 02 A6 */	mflr r0
/* 814D59E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D59E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D59E8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D59EC | 7C 9E 23 78 */	mr r30, r4
/* 814D59F0 | 4B FF CB C9 */	bl VFSysGetHandleP
/* 814D59F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D59F8 | 3B E0 FF FF */	li r31, -0x1
/* 814D59FC | 41 82 00 3C */	beq .L_814D5A38
/* 814D5A00 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814D5A04 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D5A08 | 41 82 00 30 */	beq .L_814D5A38
/* 814D5A0C | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814D5A10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D5A14 | 40 82 00 20 */	bne .L_814D5A34
/* 814D5A18 | 4B FF CB CD */	bl VFSysHandleP2Idx
/* 814D5A1C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814D5A20 | 41 82 00 18 */	beq .L_814D5A38
/* 814D5A24 | 7F C4 F3 78 */	mr r4, r30
/* 814D5A28 | 48 00 1E 75 */	bl VFi_NandFlushNANDFromHandleIdx
/* 814D5A2C | 7C 7F 1B 78 */	mr r31, r3
/* 814D5A30 | 48 00 00 08 */	b .L_814D5A38
.L_814D5A34:
/* 814D5A34 | 3B E0 00 00 */	li r31, 0x0
.L_814D5A38:
/* 814D5A38 | 7F E3 FB 78 */	mr r3, r31
/* 814D5A3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D5A40 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D5A44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D5A48 | 7C 08 03 A6 */	mtlr r0
/* 814D5A4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D5A50 | 4E 80 00 20 */	blr
.endfn dCommon_FlushFromHandleIdx
