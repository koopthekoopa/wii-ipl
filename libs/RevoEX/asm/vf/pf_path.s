.include "macros.inc"
.file "pf_path.c"

# 0x814C9E24..0x814CC7B0 | size: 0x298C
.text
.balign 4

# .text:0x0 | 0x814C9E24 | size: 0x1E0
.fn VFiPFPATH_DoSplitPath, global
/* 814C9E24 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814C9E28 | 7C 08 02 A6 */	mflr r0
/* 814C9E2C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814C9E30 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C9E34 | 48 12 F6 89 */	bl _savegpr_26
/* 814C9E38 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C9E3C | 7C 7C 1B 78 */	mr r28, r3
/* 814C9E40 | 7C 9D 23 78 */	mr r29, r4
/* 814C9E44 | 7C BE 2B 78 */	mr r30, r5
/* 814C9E48 | 7C DF 33 78 */	mr r31, r6
/* 814C9E4C | 40 82 00 0C */	bne .L_814C9E58
/* 814C9E50 | 38 60 00 0A */	li r3, 0xa
/* 814C9E54 | 48 00 01 98 */	b .L_814C9FEC
.L_814C9E58:
/* 814C9E58 | 4B FE BD AD */	bl VFiPFSTR_GetCodeMode
/* 814C9E5C | 7C 7A 1B 78 */	mr r26, r3
/* 814C9E60 | 7F A3 EB 78 */	mr r3, r29
/* 814C9E64 | 7F 44 D3 78 */	mr r4, r26
/* 814C9E68 | 4B FE BD 95 */	bl VFiPFSTR_SetCodeMode
/* 814C9E6C | 7F C3 F3 78 */	mr r3, r30
/* 814C9E70 | 7F 44 D3 78 */	mr r4, r26
/* 814C9E74 | 4B FE BD 89 */	bl VFiPFSTR_SetCodeMode
/* 814C9E78 | 38 00 00 00 */	li r0, 0x0
/* 814C9E7C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C9E80 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814C9E84 | 41 82 00 08 */	beq .L_814C9E8C
/* 814C9E88 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814C9E8C:
/* 814C9E8C | 7F 83 E3 78 */	mr r3, r28
/* 814C9E90 | 38 8D 9C E0 */	li r4, lbl_81697D20@sda21
/* 814C9E94 | 38 A0 00 01 */	li r5, 0x1
/* 814C9E98 | 38 C0 00 01 */	li r6, 0x1
/* 814C9E9C | 38 E0 00 01 */	li r7, 0x1
/* 814C9EA0 | 4B FE C0 A9 */	bl VFiPFSTR_StrNCmp
/* 814C9EA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9EA8 | 40 82 00 10 */	bne .L_814C9EB8
/* 814C9EAC | 7F 83 E3 78 */	mr r3, r28
/* 814C9EB0 | 38 80 00 02 */	li r4, 0x2
/* 814C9EB4 | 4B FE BD 71 */	bl VFiPFSTR_MoveStrPos
.L_814C9EB8:
/* 814C9EB8 | 83 7C 00 00 */	lwz r27, 0x0(r28)
/* 814C9EBC | 7F E4 FB 78 */	mr r4, r31
/* 814C9EC0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814C9EC4 | 93 61 00 14 */	stw r27, 0x14(r1)
/* 814C9EC8 | 93 61 00 18 */	stw r27, 0x18(r1)
/* 814C9ECC | 93 41 00 1C */	stw r26, 0x1c(r1)
/* 814C9ED0 | 48 00 0C 49 */	bl VFiPFPATH_GetNextTokenOfPath
/* 814C9ED4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9ED8 | 41 82 00 08 */	beq .L_814C9EE0
/* 814C9EDC | 48 00 01 10 */	b .L_814C9FEC
.L_814C9EE0:
/* 814C9EE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C9EE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C9EE8 | 41 82 00 14 */	beq .L_814C9EFC
/* 814C9EEC | 38 61 00 14 */	addi r3, r1, 0x14
/* 814C9EF0 | 4B FE BE C1 */	bl VFiPFSTR_StrLen
/* 814C9EF4 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814C9EF8 | 40 82 00 0C */	bne .L_814C9F04
.L_814C9EFC:
/* 814C9EFC | 38 60 00 02 */	li r3, 0x2
/* 814C9F00 | 48 00 00 EC */	b .L_814C9FEC
.L_814C9F04:
/* 814C9F04 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 814C9F08 | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814C9F0C | 7C 00 20 40 */	cmplw r0, r4
/* 814C9F10 | 40 80 00 0C */	bge .L_814C9F1C
/* 814C9F14 | 38 60 00 02 */	li r3, 0x2
/* 814C9F18 | 48 00 00 D4 */	b .L_814C9FEC
.L_814C9F1C:
/* 814C9F1C | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 814C9F20 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 814C9F24 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814C9F28 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814C9F2C | 90 01 00 10 */	stw r0, 0x10(r1)
.L_814C9F30:
/* 814C9F30 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814C9F34 | 38 8D 9C E4 */	li r4, lbl_81697D24@sda21
/* 814C9F38 | 38 A0 00 02 */	li r5, 0x2
/* 814C9F3C | 38 C0 00 00 */	li r6, 0x0
/* 814C9F40 | 38 E0 00 01 */	li r7, 0x1
/* 814C9F44 | 4B FE C0 05 */	bl VFiPFSTR_StrNCmp
/* 814C9F48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9F4C | 40 82 00 0C */	bne .L_814C9F58
/* 814C9F50 | 83 61 00 0C */	lwz r27, 0xc(r1)
/* 814C9F54 | 48 00 00 68 */	b .L_814C9FBC
.L_814C9F58:
/* 814C9F58 | 7F E4 FB 78 */	mr r4, r31
/* 814C9F5C | 38 61 00 14 */	addi r3, r1, 0x14
/* 814C9F60 | 48 00 0B B9 */	bl VFiPFPATH_GetNextTokenOfPath
/* 814C9F64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9F68 | 41 82 00 08 */	beq .L_814C9F70
/* 814C9F6C | 48 00 00 80 */	b .L_814C9FEC
.L_814C9F70:
/* 814C9F70 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814C9F74 | 4B FE BE 3D */	bl VFiPFSTR_StrLen
/* 814C9F78 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814C9F7C | 40 82 00 0C */	bne .L_814C9F88
/* 814C9F80 | 38 60 00 02 */	li r3, 0x2
/* 814C9F84 | 48 00 00 68 */	b .L_814C9FEC
.L_814C9F88:
/* 814C9F88 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 814C9F8C | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814C9F90 | 7C 00 20 40 */	cmplw r0, r4
/* 814C9F94 | 41 80 00 28 */	blt .L_814C9FBC
/* 814C9F98 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 814C9F9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9FA0 | 41 82 00 1C */	beq .L_814C9FBC
/* 814C9FA4 | 83 61 00 0C */	lwz r27, 0xc(r1)
/* 814C9FA8 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 814C9FAC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814C9FB0 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814C9FB4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814C9FB8 | 4B FF FF 78 */	b .L_814C9F30
.L_814C9FBC:
/* 814C9FBC | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814C9FC0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C9FC4 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814C9FC8 | 93 7D 00 04 */	stw r27, 0x4(r29)
/* 814C9FCC | 41 82 00 1C */	beq .L_814C9FE8
/* 814C9FD0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C9FD4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C9FD8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814C9FDC | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 814C9FE0 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 814C9FE4 | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_814C9FE8:
/* 814C9FE8 | 38 60 00 00 */	li r3, 0x0
.L_814C9FEC:
/* 814C9FEC | 39 61 00 40 */	addi r11, r1, 0x40
/* 814C9FF0 | 48 12 F5 19 */	bl _restgpr_26
/* 814C9FF4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814C9FF8 | 7C 08 03 A6 */	mtlr r0
/* 814C9FFC | 38 21 00 40 */	addi r1, r1, 0x40
/* 814CA000 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_DoSplitPath

# .text:0x1E0 | 0x814CA004 | size: 0x2BC
.fn VFiPFPATH_GetNextCharOfPattern, global
/* 814CA004 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CA008 | 7C 08 02 A6 */	mflr r0
/* 814CA00C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CA010 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CA014 | 7C 9F 23 78 */	mr r31, r4
/* 814CA018 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CA01C | 7C 7E 1B 78 */	mr r30, r3
/* 814CA020 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814CA024 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814CA028 | 40 82 00 C0 */	bne .L_814CA0E8
/* 814CA02C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 814CA030 | 38 00 00 00 */	li r0, 0x0
/* 814CA034 | 38 85 00 01 */	addi r4, r5, 0x1
/* 814CA038 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814CA03C | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 814CA040 | 7C 86 07 75 */	extsb. r6, r4
/* 814CA044 | 98 81 00 10 */	stb r4, 0x10(r1)
/* 814CA048 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 814CA04C | 41 82 00 14 */	beq .L_814CA060
/* 814CA050 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814CA054 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CA058 | 7C 04 00 40 */	cmplw r4, r0
/* 814CA05C | 40 80 00 0C */	bge .L_814CA068
.L_814CA060:
/* 814CA060 | 38 60 00 00 */	li r3, 0x0
/* 814CA064 | 48 00 02 44 */	b .L_814CA2A8
.L_814CA068:
/* 814CA068 | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814CA06C | 7C C3 33 78 */	mr r3, r6
/* 814CA070 | 38 A5 D7 F0 */	addi r5, r5, VFipf_vol_set_810CD7F0@l
/* 814CA074 | 38 80 00 01 */	li r4, 0x1
/* 814CA078 | 81 85 00 30 */	lwz r12, 0x30(r5)
/* 814CA07C | 7D 89 03 A6 */	mtctr r12
/* 814CA080 | 4E 80 04 21 */	bctrl
/* 814CA084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA088 | 41 82 00 30 */	beq .L_814CA0B8
/* 814CA08C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814CA090 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814CA094 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814CA098 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 814CA09C | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 814CA0A0 | 88 61 00 10 */	lbz r3, 0x10(r1)
/* 814CA0A4 | 88 01 00 11 */	lbz r0, 0x11(r1)
/* 814CA0A8 | 54 63 40 2E */	slwi r3, r3, 8
/* 814CA0AC | 7C 03 02 14 */	add r0, r3, r0
/* 814CA0B0 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 814CA0B4 | 48 00 00 0C */	b .L_814CA0C0
.L_814CA0B8:
/* 814CA0B8 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 814CA0BC | B0 01 00 0C */	sth r0, 0xc(r1)
.L_814CA0C0:
/* 814CA0C0 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814CA0C4 | 40 82 00 EC */	bne .L_814CA1B0
/* 814CA0C8 | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814CA0CC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814CA0D0 | 38 A5 D7 F0 */	addi r5, r5, VFipf_vol_set_810CD7F0@l
/* 814CA0D4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814CA0D8 | 81 85 00 24 */	lwz r12, 0x24(r5)
/* 814CA0DC | 7D 89 03 A6 */	mtctr r12
/* 814CA0E0 | 4E 80 04 21 */	bctrl
/* 814CA0E4 | 48 00 00 CC */	b .L_814CA1B0
.L_814CA0E8:
/* 814CA0E8 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 814CA0EC | 38 00 00 00 */	li r0, 0x0
/* 814CA0F0 | A0 A5 00 00 */	lhz r5, 0x0(r5)
/* 814CA0F4 | 98 A1 00 10 */	stb r5, 0x10(r1)
/* 814CA0F8 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 814CA0FC | A0 A5 00 00 */	lhz r5, 0x0(r5)
/* 814CA100 | 7C A5 46 70 */	srawi r5, r5, 8
/* 814CA104 | 98 A1 00 11 */	stb r5, 0x11(r1)
/* 814CA108 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 814CA10C | 38 A5 00 02 */	addi r5, r5, 0x2
/* 814CA110 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 814CA114 | 88 C1 00 10 */	lbz r6, 0x10(r1)
/* 814CA118 | 98 01 00 12 */	stb r0, 0x12(r1)
/* 814CA11C | 7C C0 07 75 */	extsb. r0, r6
/* 814CA120 | 40 82 00 10 */	bne .L_814CA130
/* 814CA124 | 88 01 00 11 */	lbz r0, 0x11(r1)
/* 814CA128 | 7C 00 07 75 */	extsb. r0, r0
/* 814CA12C | 41 82 00 14 */	beq .L_814CA140
.L_814CA130:
/* 814CA130 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814CA134 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CA138 | 7C 05 00 40 */	cmplw r5, r0
/* 814CA13C | 40 80 00 0C */	bge .L_814CA148
.L_814CA140:
/* 814CA140 | 38 60 00 00 */	li r3, 0x0
/* 814CA144 | 48 00 01 64 */	b .L_814CA2A8
.L_814CA148:
/* 814CA148 | 88 01 00 11 */	lbz r0, 0x11(r1)
/* 814CA14C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CA150 | 54 00 40 2E */	slwi r0, r0, 8
/* 814CA154 | 7C 00 32 14 */	add r0, r0, r6
/* 814CA158 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 814CA15C | 40 82 00 54 */	bne .L_814CA1B0
/* 814CA160 | 3F C0 81 0D */	lis r30, VFipf_vol_set_810CD7F0@ha
/* 814CA164 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814CA168 | 3B DE D7 F0 */	addi r30, r30, VFipf_vol_set_810CD7F0@l
/* 814CA16C | 38 81 00 0A */	addi r4, r1, 0xa
/* 814CA170 | 81 9E 00 28 */	lwz r12, 0x28(r30)
/* 814CA174 | 7D 89 03 A6 */	mtctr r12
/* 814CA178 | 4E 80 04 21 */	bctrl
/* 814CA17C | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814CA180 | 38 80 00 01 */	li r4, 0x1
/* 814CA184 | 81 9E 00 30 */	lwz r12, 0x30(r30)
/* 814CA188 | 7C 03 46 70 */	srawi r3, r0, 8
/* 814CA18C | 7D 89 03 A6 */	mtctr r12
/* 814CA190 | 4E 80 04 21 */	bctrl
/* 814CA194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA198 | 41 82 00 0C */	beq .L_814CA1A4
/* 814CA19C | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814CA1A0 | 48 00 00 0C */	b .L_814CA1AC
.L_814CA1A4:
/* 814CA1A4 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814CA1A8 | 7C 00 46 70 */	srawi r0, r0, 8
.L_814CA1AC:
/* 814CA1AC | B0 01 00 0C */	sth r0, 0xc(r1)
.L_814CA1B0:
/* 814CA1B0 | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 814CA1B4 | 38 00 00 00 */	li r0, 0x0
/* 814CA1B8 | 28 03 00 61 */	cmplwi r3, 0x61
/* 814CA1BC | 41 80 00 10 */	blt .L_814CA1CC
/* 814CA1C0 | 28 03 00 7A */	cmplwi r3, 0x7a
/* 814CA1C4 | 41 81 00 08 */	bgt .L_814CA1CC
/* 814CA1C8 | 38 00 00 01 */	li r0, 0x1
.L_814CA1CC:
/* 814CA1CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CA1D0 | 41 82 00 08 */	beq .L_814CA1D8
/* 814CA1D4 | 38 63 FF E0 */	subi r3, r3, 0x20
.L_814CA1D8:
/* 814CA1D8 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814CA1DC | B0 61 00 0C */	sth r3, 0xc(r1)
/* 814CA1E0 | 40 82 00 40 */	bne .L_814CA220
/* 814CA1E4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814CA1E8 | 28 03 FF 41 */	cmplwi r3, 0xff41
/* 814CA1EC | 41 80 00 1C */	blt .L_814CA208
/* 814CA1F0 | 28 03 FF 5A */	cmplwi r3, 0xff5a
/* 814CA1F4 | 41 81 00 14 */	bgt .L_814CA208
/* 814CA1F8 | 38 03 FF E0 */	subi r0, r3, 0x20
/* 814CA1FC | 38 60 00 01 */	li r3, 0x1
/* 814CA200 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814CA204 | 48 00 00 08 */	b .L_814CA20C
.L_814CA208:
/* 814CA208 | 38 60 00 00 */	li r3, 0x0
.L_814CA20C:
/* 814CA20C | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CA210 | 40 82 00 94 */	bne .L_814CA2A4
/* 814CA214 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814CA218 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 814CA21C | 48 00 00 88 */	b .L_814CA2A4
.L_814CA220:
/* 814CA220 | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814CA224 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814CA228 | 38 A5 D7 F0 */	addi r5, r5, VFipf_vol_set_810CD7F0@l
/* 814CA22C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CA230 | 81 85 00 24 */	lwz r12, 0x24(r5)
/* 814CA234 | 7D 89 03 A6 */	mtctr r12
/* 814CA238 | 4E 80 04 21 */	bctrl
/* 814CA23C | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 814CA240 | 28 03 FF 41 */	cmplwi r3, 0xff41
/* 814CA244 | 41 80 00 1C */	blt .L_814CA260
/* 814CA248 | 28 03 FF 5A */	cmplwi r3, 0xff5a
/* 814CA24C | 41 81 00 14 */	bgt .L_814CA260
/* 814CA250 | 38 03 FF E0 */	subi r0, r3, 0x20
/* 814CA254 | 38 60 00 01 */	li r3, 0x1
/* 814CA258 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814CA25C | 48 00 00 08 */	b .L_814CA264
.L_814CA260:
/* 814CA260 | 38 60 00 00 */	li r3, 0x0
.L_814CA264:
/* 814CA264 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CA268 | 40 82 00 28 */	bne .L_814CA290
/* 814CA26C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CA270 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CA274 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CA278 | 81 84 00 28 */	lwz r12, 0x28(r4)
/* 814CA27C | 7C 64 1B 78 */	mr r4, r3
/* 814CA280 | 7D 89 03 A6 */	mtctr r12
/* 814CA284 | 4E 80 04 21 */	bctrl
/* 814CA288 | 38 60 00 01 */	li r3, 0x1
/* 814CA28C | 48 00 00 08 */	b .L_814CA294
.L_814CA290:
/* 814CA290 | 38 60 00 00 */	li r3, 0x0
.L_814CA294:
/* 814CA294 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CA298 | 40 82 00 0C */	bne .L_814CA2A4
/* 814CA29C | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814CA2A0 | B0 01 00 0C */	sth r0, 0xc(r1)
.L_814CA2A4:
/* 814CA2A4 | A0 61 00 0C */	lhz r3, 0xc(r1)
.L_814CA2A8:
/* 814CA2A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CA2AC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CA2B0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CA2B4 | 7C 08 03 A6 */	mtlr r0
/* 814CA2B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CA2BC | 4E 80 00 20 */	blr
.endfn VFiPFPATH_GetNextCharOfPattern

# .text:0x49C | 0x814CA2C0 | size: 0x4B4
.fn VFiPFPATH_DoMatchFileNameWithPattern, global
/* 814CA2C0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814CA2C4 | 7C 08 02 A6 */	mflr r0
/* 814CA2C8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814CA2CC | 39 61 00 40 */	addi r11, r1, 0x40
/* 814CA2D0 | 48 12 F1 E9 */	bl _savegpr_25
/* 814CA2D4 | 3F A0 81 0D */	lis r29, VFipf_vol_set_810CD7F0@ha
/* 814CA2D8 | 7C 79 1B 78 */	mr r25, r3
/* 814CA2DC | 7C 9A 23 78 */	mr r26, r4
/* 814CA2E0 | 7C BB 2B 78 */	mr r27, r5
/* 814CA2E4 | 7C DC 33 78 */	mr r28, r6
/* 814CA2E8 | 3B BD D7 F0 */	addi r29, r29, VFipf_vol_set_810CD7F0@l
/* 814CA2EC | 48 00 04 5C */	b .L_814CA748
.L_814CA2F0:
/* 814CA2F0 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 814CA2F4 | 2C 00 00 3F */	cmpwi r0, 0x3f
/* 814CA2F8 | 41 82 00 14 */	beq .L_814CA30C
/* 814CA2FC | 40 80 03 10 */	bge .L_814CA60C
/* 814CA300 | 2C 00 00 2A */	cmpwi r0, 0x2a
/* 814CA304 | 41 82 00 18 */	beq .L_814CA31C
/* 814CA308 | 48 00 03 04 */	b .L_814CA60C
.L_814CA30C:
/* 814CA30C | 57 20 04 3F */	clrlwi. r0, r25, 16
/* 814CA310 | 40 82 03 14 */	bne .L_814CA624
/* 814CA314 | 38 60 00 00 */	li r3, 0x0
/* 814CA318 | 48 00 04 44 */	b .L_814CA75C
.L_814CA31C:
/* 814CA31C | A0 9A 00 04 */	lhz r4, 0x4(r26)
/* 814CA320 | 7F 83 E3 78 */	mr r3, r28
/* 814CA324 | 4B FF FC E1 */	bl VFiPFPATH_GetNextCharOfPattern
/* 814CA328 | 7C 7B 1B 78 */	mr r27, r3
/* 814CA32C | 48 00 00 14 */	b .L_814CA340
.L_814CA330:
/* 814CA330 | A0 9A 00 04 */	lhz r4, 0x4(r26)
/* 814CA334 | 7F 83 E3 78 */	mr r3, r28
/* 814CA338 | 4B FF FC CD */	bl VFiPFPATH_GetNextCharOfPattern
/* 814CA33C | 7C 7B 1B 78 */	mr r27, r3
.L_814CA340:
/* 814CA340 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 814CA344 | 28 00 00 2A */	cmplwi r0, 0x2a
/* 814CA348 | 41 82 FF E8 */	beq .L_814CA330
/* 814CA34C | 28 00 00 3F */	cmplwi r0, 0x3f
/* 814CA350 | 41 82 FF E0 */	beq .L_814CA330
/* 814CA354 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CA358 | 40 82 00 0C */	bne .L_814CA364
/* 814CA35C | 38 60 00 01 */	li r3, 0x1
/* 814CA360 | 48 00 03 FC */	b .L_814CA75C
.L_814CA364:
/* 814CA364 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CA368 | 3B E3 D7 F0 */	addi r31, r3, VFipf_vol_set_810CD7F0@l
/* 814CA36C | 48 00 02 90 */	b .L_814CA5FC
.L_814CA370:
/* 814CA370 | 57 23 04 3E */	clrlwi r3, r25, 16
/* 814CA374 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 814CA378 | 7C 03 00 40 */	cmplw r3, r0
/* 814CA37C | 40 82 01 6C */	bne .L_814CA4E8
/* 814CA380 | 80 BA 00 00 */	lwz r5, 0x0(r26)
/* 814CA384 | 80 1A 00 04 */	lwz r0, 0x4(r26)
/* 814CA388 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814CA38C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 814CA390 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814CA394 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 814CA398 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 814CA39C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814CA3A0 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 814CA3A4 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 814CA3A8 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 814CA3AC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 814CA3B0 | 40 82 00 80 */	bne .L_814CA430
/* 814CA3B4 | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 814CA3B8 | 28 03 02 0A */	cmplwi r3, 0x20a
/* 814CA3BC | 40 81 00 0C */	ble .L_814CA3C8
/* 814CA3C0 | 3B 20 00 00 */	li r25, 0x0
/* 814CA3C4 | 48 00 00 F0 */	b .L_814CA4B4
.L_814CA3C8:
/* 814CA3C8 | 7C 85 1A 2E */	lhzx r4, r5, r3
/* 814CA3CC | 38 63 00 02 */	addi r3, r3, 0x2
/* 814CA3D0 | 38 00 00 00 */	li r0, 0x0
/* 814CA3D4 | 28 04 00 61 */	cmplwi r4, 0x61
/* 814CA3D8 | B0 61 00 0E */	sth r3, 0xe(r1)
/* 814CA3DC | 41 80 00 10 */	blt .L_814CA3EC
/* 814CA3E0 | 28 04 00 7A */	cmplwi r4, 0x7a
/* 814CA3E4 | 41 81 00 08 */	bgt .L_814CA3EC
/* 814CA3E8 | 38 00 00 01 */	li r0, 0x1
.L_814CA3EC:
/* 814CA3EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CA3F0 | 41 82 00 08 */	beq .L_814CA3F8
/* 814CA3F4 | 38 84 FF E0 */	subi r4, r4, 0x20
.L_814CA3F8:
/* 814CA3F8 | 54 99 04 3E */	clrlwi r25, r4, 16
/* 814CA3FC | 28 19 FF 41 */	cmplwi r25, 0xff41
/* 814CA400 | 41 80 00 1C */	blt .L_814CA41C
/* 814CA404 | 28 19 FF 5A */	cmplwi r25, 0xff5a
/* 814CA408 | 41 81 00 14 */	bgt .L_814CA41C
/* 814CA40C | 38 19 FF E0 */	subi r0, r25, 0x20
/* 814CA410 | 38 60 00 01 */	li r3, 0x1
/* 814CA414 | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 814CA418 | 48 00 00 08 */	b .L_814CA420
.L_814CA41C:
/* 814CA41C | 38 60 00 00 */	li r3, 0x0
.L_814CA420:
/* 814CA420 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CA424 | 40 82 00 90 */	bne .L_814CA4B4
/* 814CA428 | 7F D9 F3 78 */	mr r25, r30
/* 814CA42C | 48 00 00 88 */	b .L_814CA4B4
.L_814CA430:
/* 814CA430 | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 814CA434 | 28 03 00 0C */	cmplwi r3, 0xc
/* 814CA438 | 41 80 00 0C */	blt .L_814CA444
/* 814CA43C | 3B 20 00 00 */	li r25, 0x0
/* 814CA440 | 48 00 00 74 */	b .L_814CA4B4
.L_814CA444:
/* 814CA444 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CA448 | 81 9F 00 30 */	lwz r12, 0x30(r31)
/* 814CA44C | B0 01 00 0E */	sth r0, 0xe(r1)
/* 814CA450 | 38 80 00 01 */	li r4, 0x1
/* 814CA454 | 7F 25 18 AE */	lbzx r25, r5, r3
/* 814CA458 | 7F 23 07 74 */	extsb r3, r25
/* 814CA45C | 7D 89 03 A6 */	mtctr r12
/* 814CA460 | 4E 80 04 21 */	bctrl
/* 814CA464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA468 | 41 82 00 24 */	beq .L_814CA48C
/* 814CA46C | A0 81 00 0E */	lhz r4, 0xe(r1)
/* 814CA470 | 57 20 44 2E */	clrlslwi r0, r25, 24, 8
/* 814CA474 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814CA478 | 38 64 00 01 */	addi r3, r4, 0x1
/* 814CA47C | B0 61 00 0E */	sth r3, 0xe(r1)
/* 814CA480 | 7C 65 20 AE */	lbzx r3, r5, r4
/* 814CA484 | 7C 00 1A 14 */	add r0, r0, r3
/* 814CA488 | 54 19 04 3E */	clrlwi r25, r0, 16
.L_814CA48C:
/* 814CA48C | 28 19 00 61 */	cmplwi r25, 0x61
/* 814CA490 | 38 00 00 00 */	li r0, 0x0
/* 814CA494 | 41 80 00 10 */	blt .L_814CA4A4
/* 814CA498 | 28 19 00 7A */	cmplwi r25, 0x7a
/* 814CA49C | 41 81 00 08 */	bgt .L_814CA4A4
/* 814CA4A0 | 38 00 00 01 */	li r0, 0x1
.L_814CA4A4:
/* 814CA4A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CA4A8 | 41 82 00 08 */	beq .L_814CA4B0
/* 814CA4AC | 3B 39 FF E0 */	subi r25, r25, 0x20
.L_814CA4B0:
/* 814CA4B0 | 57 39 04 3E */	clrlwi r25, r25, 16
.L_814CA4B4:
/* 814CA4B4 | A0 9A 00 04 */	lhz r4, 0x4(r26)
/* 814CA4B8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814CA4BC | 4B FF FB 49 */	bl VFiPFPATH_GetNextCharOfPattern
/* 814CA4C0 | 7C 7B 1B 78 */	mr r27, r3
/* 814CA4C4 | 57 23 04 3E */	clrlwi r3, r25, 16
/* 814CA4C8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CA4CC | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814CA4D0 | 57 65 04 3E */	clrlwi r5, r27, 16
/* 814CA4D4 | 4B FF FD ED */	bl VFiPFPATH_DoMatchFileNameWithPattern
/* 814CA4D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA4DC | 41 82 00 0C */	beq .L_814CA4E8
/* 814CA4E0 | 38 60 00 01 */	li r3, 0x1
/* 814CA4E4 | 48 00 02 78 */	b .L_814CA75C
.L_814CA4E8:
/* 814CA4E8 | A0 1A 00 04 */	lhz r0, 0x4(r26)
/* 814CA4EC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814CA4F0 | 40 82 00 84 */	bne .L_814CA574
/* 814CA4F4 | A0 BA 00 06 */	lhz r5, 0x6(r26)
/* 814CA4F8 | 28 05 02 0A */	cmplwi r5, 0x20a
/* 814CA4FC | 40 81 00 0C */	ble .L_814CA508
/* 814CA500 | 3B 20 00 00 */	li r25, 0x0
/* 814CA504 | 48 00 00 F8 */	b .L_814CA5FC
.L_814CA508:
/* 814CA508 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 814CA50C | 38 65 00 02 */	addi r3, r5, 0x2
/* 814CA510 | 38 00 00 00 */	li r0, 0x0
/* 814CA514 | 7C 84 2A 2E */	lhzx r4, r4, r5
/* 814CA518 | 28 04 00 61 */	cmplwi r4, 0x61
/* 814CA51C | B0 7A 00 06 */	sth r3, 0x6(r26)
/* 814CA520 | 41 80 00 10 */	blt .L_814CA530
/* 814CA524 | 28 04 00 7A */	cmplwi r4, 0x7a
/* 814CA528 | 41 81 00 08 */	bgt .L_814CA530
/* 814CA52C | 38 00 00 01 */	li r0, 0x1
.L_814CA530:
/* 814CA530 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CA534 | 41 82 00 08 */	beq .L_814CA53C
/* 814CA538 | 38 84 FF E0 */	subi r4, r4, 0x20
.L_814CA53C:
/* 814CA53C | 54 99 04 3E */	clrlwi r25, r4, 16
/* 814CA540 | 28 19 FF 41 */	cmplwi r25, 0xff41
/* 814CA544 | 41 80 00 1C */	blt .L_814CA560
/* 814CA548 | 28 19 FF 5A */	cmplwi r25, 0xff5a
/* 814CA54C | 41 81 00 14 */	bgt .L_814CA560
/* 814CA550 | 38 19 FF E0 */	subi r0, r25, 0x20
/* 814CA554 | 38 60 00 01 */	li r3, 0x1
/* 814CA558 | 54 1D 04 3E */	clrlwi r29, r0, 16
/* 814CA55C | 48 00 00 08 */	b .L_814CA564
.L_814CA560:
/* 814CA560 | 38 60 00 00 */	li r3, 0x0
.L_814CA564:
/* 814CA564 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CA568 | 40 82 00 94 */	bne .L_814CA5FC
/* 814CA56C | 7F B9 EB 78 */	mr r25, r29
/* 814CA570 | 48 00 00 8C */	b .L_814CA5FC
.L_814CA574:
/* 814CA574 | A0 BA 00 06 */	lhz r5, 0x6(r26)
/* 814CA578 | 28 05 00 0C */	cmplwi r5, 0xc
/* 814CA57C | 41 80 00 0C */	blt .L_814CA588
/* 814CA580 | 3B 20 00 00 */	li r25, 0x0
/* 814CA584 | 48 00 00 78 */	b .L_814CA5FC
.L_814CA588:
/* 814CA588 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814CA58C | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 814CA590 | B0 1A 00 06 */	sth r0, 0x6(r26)
/* 814CA594 | 38 80 00 01 */	li r4, 0x1
/* 814CA598 | 7F 23 28 AE */	lbzx r25, r3, r5
/* 814CA59C | 81 9F 00 30 */	lwz r12, 0x30(r31)
/* 814CA5A0 | 7F 23 07 74 */	extsb r3, r25
/* 814CA5A4 | 7D 89 03 A6 */	mtctr r12
/* 814CA5A8 | 4E 80 04 21 */	bctrl
/* 814CA5AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA5B0 | 41 82 00 24 */	beq .L_814CA5D4
/* 814CA5B4 | A0 9A 00 06 */	lhz r4, 0x6(r26)
/* 814CA5B8 | 57 20 44 2E */	clrlslwi r0, r25, 24, 8
/* 814CA5BC | 80 BA 00 00 */	lwz r5, 0x0(r26)
/* 814CA5C0 | 38 64 00 01 */	addi r3, r4, 0x1
/* 814CA5C4 | B0 7A 00 06 */	sth r3, 0x6(r26)
/* 814CA5C8 | 7C 65 20 AE */	lbzx r3, r5, r4
/* 814CA5CC | 7C 00 1A 14 */	add r0, r0, r3
/* 814CA5D0 | 54 19 04 3E */	clrlwi r25, r0, 16
.L_814CA5D4:
/* 814CA5D4 | 28 19 00 61 */	cmplwi r25, 0x61
/* 814CA5D8 | 38 00 00 00 */	li r0, 0x0
/* 814CA5DC | 41 80 00 10 */	blt .L_814CA5EC
/* 814CA5E0 | 28 19 00 7A */	cmplwi r25, 0x7a
/* 814CA5E4 | 41 81 00 08 */	bgt .L_814CA5EC
/* 814CA5E8 | 38 00 00 01 */	li r0, 0x1
.L_814CA5EC:
/* 814CA5EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CA5F0 | 41 82 00 08 */	beq .L_814CA5F8
/* 814CA5F4 | 3B 39 FF E0 */	subi r25, r25, 0x20
.L_814CA5F8:
/* 814CA5F8 | 57 39 04 3E */	clrlwi r25, r25, 16
.L_814CA5FC:
/* 814CA5FC | 57 20 04 3F */	clrlwi. r0, r25, 16
/* 814CA600 | 40 82 FD 70 */	bne .L_814CA370
/* 814CA604 | 38 60 00 00 */	li r3, 0x0
/* 814CA608 | 48 00 01 54 */	b .L_814CA75C
.L_814CA60C:
/* 814CA60C | 57 23 04 3E */	clrlwi r3, r25, 16
/* 814CA610 | 57 60 04 3E */	clrlwi r0, r27, 16
/* 814CA614 | 7C 03 00 40 */	cmplw r3, r0
/* 814CA618 | 41 82 00 0C */	beq .L_814CA624
/* 814CA61C | 38 60 00 00 */	li r3, 0x0
/* 814CA620 | 48 00 01 3C */	b .L_814CA75C
.L_814CA624:
/* 814CA624 | A0 1A 00 04 */	lhz r0, 0x4(r26)
/* 814CA628 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814CA62C | 40 82 00 84 */	bne .L_814CA6B0
/* 814CA630 | A0 BA 00 06 */	lhz r5, 0x6(r26)
/* 814CA634 | 28 05 02 0A */	cmplwi r5, 0x20a
/* 814CA638 | 40 81 00 0C */	ble .L_814CA644
/* 814CA63C | 3B 20 00 00 */	li r25, 0x0
/* 814CA640 | 48 00 00 F8 */	b .L_814CA738
.L_814CA644:
/* 814CA644 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 814CA648 | 38 65 00 02 */	addi r3, r5, 0x2
/* 814CA64C | 38 00 00 00 */	li r0, 0x0
/* 814CA650 | 7C 84 2A 2E */	lhzx r4, r4, r5
/* 814CA654 | 28 04 00 61 */	cmplwi r4, 0x61
/* 814CA658 | B0 7A 00 06 */	sth r3, 0x6(r26)
/* 814CA65C | 41 80 00 10 */	blt .L_814CA66C
/* 814CA660 | 28 04 00 7A */	cmplwi r4, 0x7a
/* 814CA664 | 41 81 00 08 */	bgt .L_814CA66C
/* 814CA668 | 38 00 00 01 */	li r0, 0x1
.L_814CA66C:
/* 814CA66C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CA670 | 41 82 00 08 */	beq .L_814CA678
/* 814CA674 | 38 84 FF E0 */	subi r4, r4, 0x20
.L_814CA678:
/* 814CA678 | 54 99 04 3E */	clrlwi r25, r4, 16
/* 814CA67C | 28 19 FF 41 */	cmplwi r25, 0xff41
/* 814CA680 | 41 80 00 1C */	blt .L_814CA69C
/* 814CA684 | 28 19 FF 5A */	cmplwi r25, 0xff5a
/* 814CA688 | 41 81 00 14 */	bgt .L_814CA69C
/* 814CA68C | 38 19 FF E0 */	subi r0, r25, 0x20
/* 814CA690 | 38 60 00 01 */	li r3, 0x1
/* 814CA694 | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 814CA698 | 48 00 00 08 */	b .L_814CA6A0
.L_814CA69C:
/* 814CA69C | 38 60 00 00 */	li r3, 0x0
.L_814CA6A0:
/* 814CA6A0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CA6A4 | 40 82 00 94 */	bne .L_814CA738
/* 814CA6A8 | 7F F9 FB 78 */	mr r25, r31
/* 814CA6AC | 48 00 00 8C */	b .L_814CA738
.L_814CA6B0:
/* 814CA6B0 | A0 BA 00 06 */	lhz r5, 0x6(r26)
/* 814CA6B4 | 28 05 00 0C */	cmplwi r5, 0xc
/* 814CA6B8 | 41 80 00 0C */	blt .L_814CA6C4
/* 814CA6BC | 3B 20 00 00 */	li r25, 0x0
/* 814CA6C0 | 48 00 00 78 */	b .L_814CA738
.L_814CA6C4:
/* 814CA6C4 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814CA6C8 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 814CA6CC | B0 1A 00 06 */	sth r0, 0x6(r26)
/* 814CA6D0 | 38 80 00 01 */	li r4, 0x1
/* 814CA6D4 | 7F 23 28 AE */	lbzx r25, r3, r5
/* 814CA6D8 | 81 9D 00 30 */	lwz r12, 0x30(r29)
/* 814CA6DC | 7F 23 07 74 */	extsb r3, r25
/* 814CA6E0 | 7D 89 03 A6 */	mtctr r12
/* 814CA6E4 | 4E 80 04 21 */	bctrl
/* 814CA6E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA6EC | 41 82 00 24 */	beq .L_814CA710
/* 814CA6F0 | A0 9A 00 06 */	lhz r4, 0x6(r26)
/* 814CA6F4 | 57 20 44 2E */	clrlslwi r0, r25, 24, 8
/* 814CA6F8 | 80 BA 00 00 */	lwz r5, 0x0(r26)
/* 814CA6FC | 38 64 00 01 */	addi r3, r4, 0x1
/* 814CA700 | B0 7A 00 06 */	sth r3, 0x6(r26)
/* 814CA704 | 7C 65 20 AE */	lbzx r3, r5, r4
/* 814CA708 | 7C 00 1A 14 */	add r0, r0, r3
/* 814CA70C | 54 19 04 3E */	clrlwi r25, r0, 16
.L_814CA710:
/* 814CA710 | 28 19 00 61 */	cmplwi r25, 0x61
/* 814CA714 | 38 00 00 00 */	li r0, 0x0
/* 814CA718 | 41 80 00 10 */	blt .L_814CA728
/* 814CA71C | 28 19 00 7A */	cmplwi r25, 0x7a
/* 814CA720 | 41 81 00 08 */	bgt .L_814CA728
/* 814CA724 | 38 00 00 01 */	li r0, 0x1
.L_814CA728:
/* 814CA728 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CA72C | 41 82 00 08 */	beq .L_814CA734
/* 814CA730 | 3B 39 FF E0 */	subi r25, r25, 0x20
.L_814CA734:
/* 814CA734 | 57 39 04 3E */	clrlwi r25, r25, 16
.L_814CA738:
/* 814CA738 | A0 9A 00 04 */	lhz r4, 0x4(r26)
/* 814CA73C | 7F 83 E3 78 */	mr r3, r28
/* 814CA740 | 4B FF F8 C5 */	bl VFiPFPATH_GetNextCharOfPattern
/* 814CA744 | 7C 7B 1B 78 */	mr r27, r3
.L_814CA748:
/* 814CA748 | 57 60 04 3F */	clrlwi. r0, r27, 16
/* 814CA74C | 40 82 FB A4 */	bne .L_814CA2F0
/* 814CA750 | 57 20 04 3E */	clrlwi r0, r25, 16
/* 814CA754 | 7C 00 00 34 */	cntlzw r0, r0
/* 814CA758 | 54 03 D9 7E */	srwi r3, r0, 5
.L_814CA75C:
/* 814CA75C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814CA760 | 48 12 ED A5 */	bl _restgpr_25
/* 814CA764 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814CA768 | 7C 08 03 A6 */	mtlr r0
/* 814CA76C | 38 21 00 40 */	addi r1, r1, 0x40
/* 814CA770 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_DoMatchFileNameWithPattern

# .text:0x950 | 0x814CA774 | size: 0x368
.fn VFiPFPATH_MatchFileNameWithPattern, global
/* 814CA774 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814CA778 | 7C 08 02 A6 */	mflr r0
/* 814CA77C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814CA780 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814CA784 | 48 12 ED 39 */	bl _savegpr_26
/* 814CA788 | 88 E2 8C 50 */	lbz r7, lbl_81695050@sda21(r0)
/* 814CA78C | 3B A0 00 00 */	li r29, 0x0
/* 814CA790 | 88 02 8C 51 */	lbz r0, lbl_81695051@sda21(r0)
/* 814CA794 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814CA798 | 98 E1 00 0C */	stb r7, 0xc(r1)
/* 814CA79C | 7C 7B 1B 78 */	mr r27, r3
/* 814CA7A0 | 7C 9C 23 78 */	mr r28, r4
/* 814CA7A4 | 7C BA 2B 78 */	mr r26, r5
/* 814CA7A8 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 814CA7AC | 7C DF 33 78 */	mr r31, r6
/* 814CA7B0 | 3B C0 00 01 */	li r30, 0x1
/* 814CA7B4 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 814CA7B8 | B3 A1 00 16 */	sth r29, 0x16(r1)
/* 814CA7BC | 41 82 00 10 */	beq .L_814CA7CC
/* 814CA7C0 | 38 00 00 01 */	li r0, 0x1
/* 814CA7C4 | B0 01 00 14 */	sth r0, 0x14(r1)
/* 814CA7C8 | 48 00 00 0C */	b .L_814CA7D4
.L_814CA7CC:
/* 814CA7CC | 38 00 00 00 */	li r0, 0x0
/* 814CA7D0 | B0 01 00 14 */	sth r0, 0x14(r1)
.L_814CA7D4:
/* 814CA7D4 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 814CA7D8 | 7F 83 E3 78 */	mr r3, r28
/* 814CA7DC | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814CA7E0 | 90 A1 00 18 */	stw r5, 0x18(r1)
/* 814CA7E4 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 814CA7E8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814CA7EC | 90 01 00 20 */	stw r0, 0x20(r1)
/* 814CA7F0 | 4B FE B4 15 */	bl VFiPFSTR_GetCodeMode
/* 814CA7F4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CA7F8 | 40 82 00 A8 */	bne .L_814CA8A0
/* 814CA7FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CA800 | 40 82 01 24 */	bne .L_814CA924
/* 814CA804 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CA808 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CA80C | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814CA810 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814CA814 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814CA818 | 40 82 01 0C */	bne .L_814CA924
/* 814CA81C | 88 8D 9D 08 */	lbz r4, lbl_81697D48@sda21(r0)
/* 814CA820 | 34 61 00 18 */	addic. r3, r1, 0x18
/* 814CA824 | 88 0D 9D 09 */	lbz r0, lbl_81697D49@sda21(r0)
/* 814CA828 | 3B 40 00 00 */	li r26, 0x0
/* 814CA82C | 98 81 00 08 */	stb r4, 0x8(r1)
/* 814CA830 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 814CA834 | 40 82 00 0C */	bne .L_814CA840
/* 814CA838 | 3B 40 00 0A */	li r26, 0xa
/* 814CA83C | 48 00 00 24 */	b .L_814CA860
.L_814CA840:
/* 814CA840 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CA844 | 38 A0 00 01 */	li r5, 0x1
/* 814CA848 | 38 C0 00 00 */	li r6, 0x0
/* 814CA84C | 38 E0 00 02 */	li r7, 0x2
/* 814CA850 | 4B FE B6 F9 */	bl VFiPFSTR_StrNCmp
/* 814CA854 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA858 | 40 82 00 08 */	bne .L_814CA860
/* 814CA85C | 3B 40 00 01 */	li r26, 0x1
.L_814CA860:
/* 814CA860 | 28 1A 00 01 */	cmplwi r26, 0x1
/* 814CA864 | 40 82 00 C0 */	bne .L_814CA924
/* 814CA868 | 7F 63 DB 78 */	mr r3, r27
/* 814CA86C | 38 81 00 0C */	addi r4, r1, 0xc
/* 814CA870 | 38 A0 00 02 */	li r5, 0x2
/* 814CA874 | 4B FE B2 09 */	bl VFipf_strncmp
/* 814CA878 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA87C | 40 82 00 A8 */	bne .L_814CA924
/* 814CA880 | A0 81 00 16 */	lhz r4, 0x16(r1)
/* 814CA884 | 3B A0 00 01 */	li r29, 0x1
/* 814CA888 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 814CA88C | 38 84 00 02 */	addi r4, r4, 0x2
/* 814CA890 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814CA894 | B0 81 00 16 */	sth r4, 0x16(r1)
/* 814CA898 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 814CA89C | 48 00 00 88 */	b .L_814CA924
.L_814CA8A0:
/* 814CA8A0 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CA8A4 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CA8A8 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814CA8AC | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814CA8B0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814CA8B4 | 40 82 00 70 */	bne .L_814CA924
/* 814CA8B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CA8BC | 40 82 00 68 */	bne .L_814CA924
/* 814CA8C0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814CA8C4 | 40 82 00 60 */	bne .L_814CA924
/* 814CA8C8 | 7F 83 E3 78 */	mr r3, r28
/* 814CA8CC | 38 8D 9C E8 */	li r4, lbl_81697D28@sda21
/* 814CA8D0 | 38 A0 00 01 */	li r5, 0x1
/* 814CA8D4 | 38 C0 00 00 */	li r6, 0x0
/* 814CA8D8 | 38 E0 00 01 */	li r7, 0x1
/* 814CA8DC | 4B FE B6 6D */	bl VFiPFSTR_StrNCmp
/* 814CA8E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA8E4 | 41 82 00 40 */	beq .L_814CA924
/* 814CA8E8 | 7F 83 E3 78 */	mr r3, r28
/* 814CA8EC | 38 8D 9C EC */	li r4, lbl_81697D2C@sda21
/* 814CA8F0 | 38 A0 00 01 */	li r5, 0x1
/* 814CA8F4 | 38 C0 00 00 */	li r6, 0x0
/* 814CA8F8 | 38 E0 00 02 */	li r7, 0x2
/* 814CA8FC | 4B FE B6 4D */	bl VFiPFSTR_StrNCmp
/* 814CA900 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA904 | 41 82 00 20 */	beq .L_814CA924
/* 814CA908 | 7F 83 E3 78 */	mr r3, r28
/* 814CA90C | 38 80 00 01 */	li r4, 0x1
/* 814CA910 | 38 A0 00 01 */	li r5, 0x1
/* 814CA914 | 48 00 19 61 */	bl VFiPFPATH_CheckExtShortName
/* 814CA918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA91C | 40 82 00 08 */	bne .L_814CA924
/* 814CA920 | 3B C0 00 00 */	li r30, 0x0
.L_814CA924:
/* 814CA924 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814CA928 | 40 82 01 98 */	bne .L_814CAAC0
/* 814CA92C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CA930 | 40 82 00 4C */	bne .L_814CA97C
/* 814CA934 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814CA938 | 40 82 00 44 */	bne .L_814CA97C
/* 814CA93C | 7F 83 E3 78 */	mr r3, r28
/* 814CA940 | 38 8D 9C F0 */	li r4, lbl_81697D30@sda21
/* 814CA944 | 4B FE B5 61 */	bl VFiPFSTR_StrCmp
/* 814CA948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CA94C | 40 82 00 30 */	bne .L_814CA97C
/* 814CA950 | 48 00 00 08 */	b .L_814CA958
.L_814CA954:
/* 814CA954 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814CA958:
/* 814CA958 | 88 7B 00 00 */	lbz r3, 0x0(r27)
/* 814CA95C | 7C 60 07 75 */	extsb. r0, r3
/* 814CA960 | 41 82 00 0C */	beq .L_814CA96C
/* 814CA964 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CA968 | 40 82 FF EC */	bne .L_814CA954
.L_814CA96C:
/* 814CA96C | 7C 60 07 75 */	extsb. r0, r3
/* 814CA970 | 40 82 00 0C */	bne .L_814CA97C
/* 814CA974 | 38 60 00 01 */	li r3, 0x1
/* 814CA978 | 48 00 01 4C */	b .L_814CAAC4
.L_814CA97C:
/* 814CA97C | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 814CA980 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814CA984 | 40 82 00 84 */	bne .L_814CAA08
/* 814CA988 | A0 A1 00 16 */	lhz r5, 0x16(r1)
/* 814CA98C | 28 05 02 0A */	cmplwi r5, 0x20a
/* 814CA990 | 40 81 00 0C */	ble .L_814CA99C
/* 814CA994 | 3B 40 00 00 */	li r26, 0x0
/* 814CA998 | 48 00 01 00 */	b .L_814CAA98
.L_814CA99C:
/* 814CA99C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814CA9A0 | 38 65 00 02 */	addi r3, r5, 0x2
/* 814CA9A4 | 38 00 00 00 */	li r0, 0x0
/* 814CA9A8 | 7C 84 2A 2E */	lhzx r4, r4, r5
/* 814CA9AC | 28 04 00 61 */	cmplwi r4, 0x61
/* 814CA9B0 | B0 61 00 16 */	sth r3, 0x16(r1)
/* 814CA9B4 | 41 80 00 10 */	blt .L_814CA9C4
/* 814CA9B8 | 28 04 00 7A */	cmplwi r4, 0x7a
/* 814CA9BC | 41 81 00 08 */	bgt .L_814CA9C4
/* 814CA9C0 | 38 00 00 01 */	li r0, 0x1
.L_814CA9C4:
/* 814CA9C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CA9C8 | 41 82 00 08 */	beq .L_814CA9D0
/* 814CA9CC | 38 84 FF E0 */	subi r4, r4, 0x20
.L_814CA9D0:
/* 814CA9D0 | 54 9A 04 3E */	clrlwi r26, r4, 16
/* 814CA9D4 | 28 1A FF 41 */	cmplwi r26, 0xff41
/* 814CA9D8 | 41 80 00 1C */	blt .L_814CA9F4
/* 814CA9DC | 28 1A FF 5A */	cmplwi r26, 0xff5a
/* 814CA9E0 | 41 81 00 14 */	bgt .L_814CA9F4
/* 814CA9E4 | 38 1A FF E0 */	subi r0, r26, 0x20
/* 814CA9E8 | 38 60 00 01 */	li r3, 0x1
/* 814CA9EC | 54 1F 04 3E */	clrlwi r31, r0, 16
/* 814CA9F0 | 48 00 00 08 */	b .L_814CA9F8
.L_814CA9F4:
/* 814CA9F4 | 38 60 00 00 */	li r3, 0x0
.L_814CA9F8:
/* 814CA9F8 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CA9FC | 40 82 00 9C */	bne .L_814CAA98
/* 814CAA00 | 7F FA FB 78 */	mr r26, r31
/* 814CAA04 | 48 00 00 94 */	b .L_814CAA98
.L_814CAA08:
/* 814CAA08 | A0 C1 00 16 */	lhz r6, 0x16(r1)
/* 814CAA0C | 28 06 00 0C */	cmplwi r6, 0xc
/* 814CAA10 | 41 80 00 0C */	blt .L_814CAA1C
/* 814CAA14 | 3B 40 00 00 */	li r26, 0x0
/* 814CAA18 | 48 00 00 80 */	b .L_814CAA98
.L_814CAA1C:
/* 814CAA1C | 38 06 00 01 */	addi r0, r6, 0x1
/* 814CAA20 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CAA24 | B0 01 00 16 */	sth r0, 0x16(r1)
/* 814CAA28 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CAA2C | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 814CAA30 | 38 80 00 01 */	li r4, 0x1
/* 814CAA34 | 81 83 00 30 */	lwz r12, 0x30(r3)
/* 814CAA38 | 7F 45 30 AE */	lbzx r26, r5, r6
/* 814CAA3C | 7F 43 07 74 */	extsb r3, r26
/* 814CAA40 | 7D 89 03 A6 */	mtctr r12
/* 814CAA44 | 4E 80 04 21 */	bctrl
/* 814CAA48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAA4C | 41 82 00 24 */	beq .L_814CAA70
/* 814CAA50 | A0 81 00 16 */	lhz r4, 0x16(r1)
/* 814CAA54 | 57 40 44 2E */	clrlslwi r0, r26, 24, 8
/* 814CAA58 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 814CAA5C | 38 64 00 01 */	addi r3, r4, 0x1
/* 814CAA60 | B0 61 00 16 */	sth r3, 0x16(r1)
/* 814CAA64 | 7C 65 20 AE */	lbzx r3, r5, r4
/* 814CAA68 | 7C 00 1A 14 */	add r0, r0, r3
/* 814CAA6C | 54 1A 04 3E */	clrlwi r26, r0, 16
.L_814CAA70:
/* 814CAA70 | 28 1A 00 61 */	cmplwi r26, 0x61
/* 814CAA74 | 38 00 00 00 */	li r0, 0x0
/* 814CAA78 | 41 80 00 10 */	blt .L_814CAA88
/* 814CAA7C | 28 1A 00 7A */	cmplwi r26, 0x7a
/* 814CAA80 | 41 81 00 08 */	bgt .L_814CAA88
/* 814CAA84 | 38 00 00 01 */	li r0, 0x1
.L_814CAA88:
/* 814CAA88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CAA8C | 41 82 00 08 */	beq .L_814CAA94
/* 814CAA90 | 3B 5A FF E0 */	subi r26, r26, 0x20
.L_814CAA94:
/* 814CAA94 | 57 5A 04 3E */	clrlwi r26, r26, 16
.L_814CAA98:
/* 814CAA98 | A0 81 00 14 */	lhz r4, 0x14(r1)
/* 814CAA9C | 38 61 00 18 */	addi r3, r1, 0x18
/* 814CAAA0 | 4B FF F5 65 */	bl VFiPFPATH_GetNextCharOfPattern
/* 814CAAA4 | 7C 60 1B 78 */	mr r0, r3
/* 814CAAA8 | 57 43 04 3E */	clrlwi r3, r26, 16
/* 814CAAAC | 38 81 00 10 */	addi r4, r1, 0x10
/* 814CAAB0 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 814CAAB4 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 814CAAB8 | 4B FF F8 09 */	bl VFiPFPATH_DoMatchFileNameWithPattern
/* 814CAABC | 7C 7E 1B 78 */	mr r30, r3
.L_814CAAC0:
/* 814CAAC0 | 7F C3 F3 78 */	mr r3, r30
.L_814CAAC4:
/* 814CAAC4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814CAAC8 | 48 12 EA 41 */	bl _restgpr_26
/* 814CAACC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814CAAD0 | 7C 08 03 A6 */	mtlr r0
/* 814CAAD4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814CAAD8 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_MatchFileNameWithPattern

# .text:0xCB8 | 0x814CAADC | size: 0x2C
.fn VFiPFPATH_cmpTailSFN, global
/* 814CAADC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CAAE0 | 7C 08 02 A6 */	mflr r0
/* 814CAAE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CAAE8 | 4B FE AF 5D */	bl VFipf_strcmp
/* 814CAAEC | 7C 03 00 D0 */	neg r0, r3
/* 814CAAF0 | 7C 00 1B 78 */	or r0, r0, r3
/* 814CAAF4 | 54 03 0F FE */	srwi r3, r0, 31
/* 814CAAF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CAAFC | 7C 08 03 A6 */	mtlr r0
/* 814CAB00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CAB04 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_cmpTailSFN

# .text:0xCE4 | 0x814CAB08 | size: 0x10
.fn VFiPFPATH_InitTokenOfPath, global
/* 814CAB08 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814CAB0C | 90 83 00 04 */	stw r4, 0x4(r3)
/* 814CAB10 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 814CAB14 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_InitTokenOfPath

# .text:0xCF4 | 0x814CAB18 | size: 0x384
.fn VFiPFPATH_GetNextTokenOfPath, global
/* 814CAB18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CAB1C | 7C 08 02 A6 */	mflr r0
/* 814CAB20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CAB24 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814CAB28 | 48 12 E9 99 */	bl _savegpr_27
/* 814CAB2C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814CAB30 | 7C 9D 23 78 */	mr r29, r4
/* 814CAB34 | 7C 7C 1B 78 */	mr r28, r3
/* 814CAB38 | 3B 60 00 00 */	li r27, 0x0
/* 814CAB3C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814CAB40 | 38 8D 9C E4 */	li r4, lbl_81697D24@sda21
/* 814CAB44 | 38 A0 00 01 */	li r5, 0x1
/* 814CAB48 | 38 C0 00 00 */	li r6, 0x0
/* 814CAB4C | 38 E0 00 01 */	li r7, 0x1
/* 814CAB50 | 4B FE B3 F9 */	bl VFiPFSTR_StrNCmp
/* 814CAB54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAB58 | 40 82 00 18 */	bne .L_814CAB70
/* 814CAB5C | 38 00 00 00 */	li r0, 0x0
/* 814CAB60 | 38 60 00 00 */	li r3, 0x0
/* 814CAB64 | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 814CAB68 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814CAB6C | 48 00 03 18 */	b .L_814CAE84
.L_814CAB70:
/* 814CAB70 | 7F 83 E3 78 */	mr r3, r28
/* 814CAB74 | 38 8D 9C F4 */	li r4, lbl_81697D34@sda21
/* 814CAB78 | 38 A0 00 01 */	li r5, 0x1
/* 814CAB7C | 38 C0 00 00 */	li r6, 0x0
/* 814CAB80 | 38 E0 00 01 */	li r7, 0x1
/* 814CAB84 | 4B FE B3 C5 */	bl VFiPFSTR_StrNCmp
/* 814CAB88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAB8C | 41 82 00 24 */	beq .L_814CABB0
/* 814CAB90 | 7F 83 E3 78 */	mr r3, r28
/* 814CAB94 | 38 8D 9C F8 */	li r4, lbl_81697D38@sda21
/* 814CAB98 | 38 A0 00 01 */	li r5, 0x1
/* 814CAB9C | 38 C0 00 00 */	li r6, 0x0
/* 814CABA0 | 38 E0 00 01 */	li r7, 0x1
/* 814CABA4 | 4B FE B3 A5 */	bl VFiPFSTR_StrNCmp
/* 814CABA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CABAC | 40 82 00 10 */	bne .L_814CABBC
.L_814CABB0:
/* 814CABB0 | 7F 83 E3 78 */	mr r3, r28
/* 814CABB4 | 38 80 00 01 */	li r4, 0x1
/* 814CABB8 | 4B FE B0 6D */	bl VFiPFSTR_MoveStrPos
.L_814CABBC:
/* 814CABBC | 7F 83 E3 78 */	mr r3, r28
/* 814CABC0 | 38 8D 9C F4 */	li r4, lbl_81697D34@sda21
/* 814CABC4 | 38 A0 00 01 */	li r5, 0x1
/* 814CABC8 | 38 C0 00 00 */	li r6, 0x0
/* 814CABCC | 38 E0 00 01 */	li r7, 0x1
/* 814CABD0 | 4B FE B3 79 */	bl VFiPFSTR_StrNCmp
/* 814CABD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CABD8 | 41 82 00 24 */	beq .L_814CABFC
/* 814CABDC | 7F 83 E3 78 */	mr r3, r28
/* 814CABE0 | 38 8D 9C F8 */	li r4, lbl_81697D38@sda21
/* 814CABE4 | 38 A0 00 01 */	li r5, 0x1
/* 814CABE8 | 38 C0 00 00 */	li r6, 0x0
/* 814CABEC | 38 E0 00 01 */	li r7, 0x1
/* 814CABF0 | 4B FE B3 59 */	bl VFiPFSTR_StrNCmp
/* 814CABF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CABF8 | 40 82 00 0C */	bne .L_814CAC04
.L_814CABFC:
/* 814CABFC | 38 60 00 02 */	li r3, 0x2
/* 814CAC00 | 48 00 02 84 */	b .L_814CAE84
.L_814CAC04:
/* 814CAC04 | 7F 83 E3 78 */	mr r3, r28
/* 814CAC08 | 4B FE AF FD */	bl VFiPFSTR_GetCodeMode
/* 814CAC0C | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814CAC10 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CAC14 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CAC18 | 7C 7E 1B 78 */	mr r30, r3
/* 814CAC1C | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 814CAC20 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 814CAC24 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814CAC28 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814CAC2C | 40 82 00 48 */	bne .L_814CAC74
/* 814CAC30 | 7F 83 E3 78 */	mr r3, r28
/* 814CAC34 | 7F A5 EB 78 */	mr r5, r29
/* 814CAC38 | 38 80 00 02 */	li r4, 0x2
/* 814CAC3C | 48 00 16 39 */	bl VFiPFPATH_CheckExtShortName
/* 814CAC40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAC44 | 7C 7B 1B 78 */	mr r27, r3
/* 814CAC48 | 41 82 00 2C */	beq .L_814CAC74
/* 814CAC4C | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814CAC50 | 40 82 00 14 */	bne .L_814CAC64
/* 814CAC54 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 814CAC58 | 7C 00 1A 14 */	add r0, r0, r3
/* 814CAC5C | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 814CAC60 | 48 00 00 14 */	b .L_814CAC74
.L_814CAC64:
/* 814CAC64 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 814CAC68 | 54 60 08 3C */	slwi r0, r3, 1
/* 814CAC6C | 7C 04 02 14 */	add r0, r4, r0
/* 814CAC70 | 90 1C 00 04 */	stw r0, 0x4(r28)
.L_814CAC74:
/* 814CAC74 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814CAC78 | 40 82 02 08 */	bne .L_814CAE80
/* 814CAC7C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CAC80 | 3C 60 81 62 */	lis r3, VFipf_valid_fn_char_81618D90@ha
/* 814CAC84 | 3B E4 D7 F0 */	addi r31, r4, VFipf_vol_set_810CD7F0@l
/* 814CAC88 | 3B 63 8D 90 */	addi r27, r3, VFipf_valid_fn_char_81618D90@l
/* 814CAC8C | 48 00 01 D4 */	b .L_814CAE60
.L_814CAC90:
/* 814CAC90 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814CAC94 | 40 82 00 6C */	bne .L_814CAD00
/* 814CAC98 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 814CAC9C | 38 80 00 01 */	li r4, 0x1
/* 814CACA0 | 81 9F 00 30 */	lwz r12, 0x30(r31)
/* 814CACA4 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814CACA8 | 7C 03 07 74 */	extsb r3, r0
/* 814CACAC | 7D 89 03 A6 */	mtctr r12
/* 814CACB0 | 4E 80 04 21 */	bctrl
/* 814CACB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CACB8 | 41 82 00 48 */	beq .L_814CAD00
/* 814CACBC | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 814CACC0 | 38 80 00 02 */	li r4, 0x2
/* 814CACC4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814CACC8 | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 814CACCC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814CACD0 | 81 9F 00 30 */	lwz r12, 0x30(r31)
/* 814CACD4 | 7C 03 07 74 */	extsb r3, r0
/* 814CACD8 | 7D 89 03 A6 */	mtctr r12
/* 814CACDC | 4E 80 04 21 */	bctrl
/* 814CACE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CACE4 | 41 82 00 14 */	beq .L_814CACF8
/* 814CACE8 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 814CACEC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814CACF0 | 7C 00 07 75 */	extsb. r0, r0
/* 814CACF4 | 40 82 01 48 */	bne .L_814CAE3C
.L_814CACF8:
/* 814CACF8 | 38 60 00 02 */	li r3, 0x2
/* 814CACFC | 48 00 01 88 */	b .L_814CAE84
.L_814CAD00:
/* 814CAD00 | 7F 83 E3 78 */	mr r3, r28
/* 814CAD04 | 38 8D 9C F4 */	li r4, lbl_81697D34@sda21
/* 814CAD08 | 38 A0 00 02 */	li r5, 0x2
/* 814CAD0C | 38 C0 00 00 */	li r6, 0x0
/* 814CAD10 | 38 E0 00 01 */	li r7, 0x1
/* 814CAD14 | 4B FE B2 35 */	bl VFiPFSTR_StrNCmp
/* 814CAD18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAD1C | 41 82 01 64 */	beq .L_814CAE80
/* 814CAD20 | 7F 83 E3 78 */	mr r3, r28
/* 814CAD24 | 38 8D 9C F8 */	li r4, lbl_81697D38@sda21
/* 814CAD28 | 38 A0 00 02 */	li r5, 0x2
/* 814CAD2C | 38 C0 00 00 */	li r6, 0x0
/* 814CAD30 | 38 E0 00 01 */	li r7, 0x1
/* 814CAD34 | 4B FE B2 15 */	bl VFiPFSTR_StrNCmp
/* 814CAD38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAD3C | 41 82 01 44 */	beq .L_814CAE80
/* 814CAD40 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 814CAD44 | 54 00 03 DF */	rlwinm. r0, r0, 0, 15, 15
/* 814CAD48 | 40 82 00 F4 */	bne .L_814CAE3C
/* 814CAD4C | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814CAD50 | 40 82 00 2C */	bne .L_814CAD7C
/* 814CAD54 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 814CAD58 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814CAD5C | 28 00 00 80 */	cmplwi r0, 0x80
/* 814CAD60 | 40 80 00 1C */	bge .L_814CAD7C
/* 814CAD64 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814CAD68 | 41 80 00 84 */	blt .L_814CADEC
/* 814CAD6C | 7C 7B 02 14 */	add r3, r27, r0
/* 814CAD70 | 88 03 FF E0 */	lbz r0, -0x20(r3)
/* 814CAD74 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CAD78 | 41 82 00 74 */	beq .L_814CADEC
.L_814CAD7C:
/* 814CAD7C | 28 1E 00 02 */	cmplwi r30, 0x2
/* 814CAD80 | 40 82 00 BC */	bne .L_814CAE3C
/* 814CAD84 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 814CAD88 | 38 A0 00 01 */	li r5, 0x1
/* 814CAD8C | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814CAD90 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814CAD94 | 54 63 40 2E */	slwi r3, r3, 8
/* 814CAD98 | 7C 63 02 14 */	add r3, r3, r0
/* 814CAD9C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814CADA0 | 28 00 00 80 */	cmplwi r0, 0x80
/* 814CADA4 | 40 80 00 40 */	bge .L_814CADE4
/* 814CADA8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814CADAC | 38 80 00 00 */	li r4, 0x0
/* 814CADB0 | 28 03 00 20 */	cmplwi r3, 0x20
/* 814CADB4 | 41 80 00 24 */	blt .L_814CADD8
/* 814CADB8 | 54 60 04 2F */	rlwinm. r0, r3, 0, 16, 23
/* 814CADBC | 40 82 00 1C */	bne .L_814CADD8
/* 814CADC0 | 38 03 FF E0 */	subi r0, r3, 0x20
/* 814CADC4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814CADC8 | 7C 1B 00 AE */	lbzx r0, r27, r0
/* 814CADCC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CADD0 | 41 82 00 08 */	beq .L_814CADD8
/* 814CADD4 | 38 80 00 01 */	li r4, 0x1
.L_814CADD8:
/* 814CADD8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CADDC | 40 82 00 08 */	bne .L_814CADE4
/* 814CADE0 | 38 A0 00 00 */	li r5, 0x0
.L_814CADE4:
/* 814CADE4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814CADE8 | 40 82 00 54 */	bne .L_814CAE3C
.L_814CADEC:
/* 814CADEC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814CADF0 | 41 82 00 44 */	beq .L_814CAE34
/* 814CADF4 | 7F 83 E3 78 */	mr r3, r28
/* 814CADF8 | 38 8D 9C FC */	li r4, lbl_81697D3C@sda21
/* 814CADFC | 38 A0 00 02 */	li r5, 0x2
/* 814CAE00 | 38 C0 00 00 */	li r6, 0x0
/* 814CAE04 | 38 E0 00 01 */	li r7, 0x1
/* 814CAE08 | 4B FE B1 41 */	bl VFiPFSTR_StrNCmp
/* 814CAE0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAE10 | 41 82 00 2C */	beq .L_814CAE3C
/* 814CAE14 | 7F 83 E3 78 */	mr r3, r28
/* 814CAE18 | 38 8D 9D 00 */	li r4, lbl_81697D40@sda21
/* 814CAE1C | 38 A0 00 02 */	li r5, 0x2
/* 814CAE20 | 38 C0 00 00 */	li r6, 0x0
/* 814CAE24 | 38 E0 00 01 */	li r7, 0x1
/* 814CAE28 | 4B FE B1 21 */	bl VFiPFSTR_StrNCmp
/* 814CAE2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAE30 | 41 82 00 0C */	beq .L_814CAE3C
.L_814CAE34:
/* 814CAE34 | 38 60 00 02 */	li r3, 0x2
/* 814CAE38 | 48 00 00 4C */	b .L_814CAE84
.L_814CAE3C:
/* 814CAE3C | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814CAE40 | 40 82 00 14 */	bne .L_814CAE54
/* 814CAE44 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 814CAE48 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CAE4C | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 814CAE50 | 48 00 00 10 */	b .L_814CAE60
.L_814CAE54:
/* 814CAE54 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 814CAE58 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814CAE5C | 90 1C 00 04 */	stw r0, 0x4(r28)
.L_814CAE60:
/* 814CAE60 | 7F 83 E3 78 */	mr r3, r28
/* 814CAE64 | 38 8D 9C E4 */	li r4, lbl_81697D24@sda21
/* 814CAE68 | 38 A0 00 02 */	li r5, 0x2
/* 814CAE6C | 38 C0 00 00 */	li r6, 0x0
/* 814CAE70 | 38 E0 00 01 */	li r7, 0x1
/* 814CAE74 | 4B FE B0 D5 */	bl VFiPFSTR_StrNCmp
/* 814CAE78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAE7C | 40 82 FE 14 */	bne .L_814CAC90
.L_814CAE80:
/* 814CAE80 | 38 60 00 00 */	li r3, 0x0
.L_814CAE84:
/* 814CAE84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814CAE88 | 48 12 E6 85 */	bl _restgpr_27
/* 814CAE8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CAE90 | 7C 08 03 A6 */	mtlr r0
/* 814CAE94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CAE98 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_GetNextTokenOfPath

# .text:0x1078 | 0x814CAE9C | size: 0x8
.fn VFiPFPATH_SplitPath, global
/* 814CAE9C | 38 C0 00 00 */	li r6, 0x0
/* 814CAEA0 | 4B FF EF 84 */	b VFiPFPATH_DoSplitPath
.endfn VFiPFPATH_SplitPath

# .text:0x1080 | 0x814CAEA4 | size: 0x8
.fn VFiPFPATH_SplitPathPattern, global
/* 814CAEA4 | 38 C0 00 01 */	li r6, 0x1
/* 814CAEA8 | 4B FF EF 7C */	b VFiPFPATH_DoSplitPath
.endfn VFiPFPATH_SplitPathPattern

# .text:0x1088 | 0x814CAEAC | size: 0x98
.fn VFiPFPATH_GetVolumeFromPath, global
/* 814CAEAC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CAEB0 | 7C 08 02 A6 */	mflr r0
/* 814CAEB4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CAEB8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CAEBC | 7C 7F 1B 78 */	mr r31, r3
/* 814CAEC0 | 4B FE AE F1 */	bl VFiPFSTR_StrLen
/* 814CAEC4 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814CAEC8 | 40 82 00 0C */	bne .L_814CAED4
/* 814CAECC | 38 60 00 00 */	li r3, 0x0
/* 814CAED0 | 48 00 00 60 */	b .L_814CAF30
.L_814CAED4:
/* 814CAED4 | 7F E3 FB 78 */	mr r3, r31
/* 814CAED8 | 38 80 00 01 */	li r4, 0x1
/* 814CAEDC | 4B FE AE E9 */	bl VFiPFSTR_StrNumChar
/* 814CAEE0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814CAEE4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814CAEE8 | 41 80 00 44 */	blt .L_814CAF2C
/* 814CAEEC | 7F E3 FB 78 */	mr r3, r31
/* 814CAEF0 | 38 8D 9C E0 */	li r4, lbl_81697D20@sda21
/* 814CAEF4 | 38 A0 00 01 */	li r5, 0x1
/* 814CAEF8 | 38 C0 00 01 */	li r6, 0x1
/* 814CAEFC | 38 E0 00 01 */	li r7, 0x1
/* 814CAF00 | 4B FE B0 49 */	bl VFiPFSTR_StrNCmp
/* 814CAF04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CAF08 | 40 82 00 24 */	bne .L_814CAF2C
/* 814CAF0C | 7F E3 FB 78 */	mr r3, r31
/* 814CAF10 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CAF14 | 38 80 00 01 */	li r4, 0x1
/* 814CAF18 | 4B FE B1 2D */	bl VFiPFSTR_ToUpperNStr
/* 814CAF1C | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814CAF20 | 7C 03 07 74 */	extsb r3, r0
/* 814CAF24 | 48 00 30 C5 */	bl VFiPFVOL_GetVolumeFromDrvChar
/* 814CAF28 | 48 00 00 08 */	b .L_814CAF30
.L_814CAF2C:
/* 814CAF2C | 48 00 2F 69 */	bl VFiPFVOL_GetCurrentVolume
.L_814CAF30:
/* 814CAF30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CAF34 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CAF38 | 7C 08 03 A6 */	mtlr r0
/* 814CAF3C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CAF40 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_GetVolumeFromPath

# .text:0x1120 | 0x814CAF44 | size: 0x188
.fn VFiPFPATH_putShortName, global
/* 814CAF44 | 39 20 00 00 */	li r9, 0x0
/* 814CAF48 | 48 00 00 18 */	b .L_814CAF60
.L_814CAF4C:
/* 814CAF4C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814CAF50 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814CAF54 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814CAF58 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814CAF5C | 38 63 00 01 */	addi r3, r3, 0x1
.L_814CAF60:
/* 814CAF60 | 2C 09 00 08 */	cmpwi r9, 0x8
/* 814CAF64 | 40 80 00 18 */	bge .L_814CAF7C
/* 814CAF68 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814CAF6C | 7C 00 07 75 */	extsb. r0, r0
/* 814CAF70 | 41 82 00 0C */	beq .L_814CAF7C
/* 814CAF74 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CAF78 | 40 82 FF D4 */	bne .L_814CAF4C
.L_814CAF7C:
/* 814CAF7C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814CAF80 | 40 82 00 34 */	bne .L_814CAFB4
/* 814CAF84 | 39 20 00 00 */	li r9, 0x0
/* 814CAF88 | 48 00 00 18 */	b .L_814CAFA0
.L_814CAF8C:
/* 814CAF8C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814CAF90 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814CAF94 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814CAF98 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814CAF9C | 38 63 00 01 */	addi r3, r3, 0x1
.L_814CAFA0:
/* 814CAFA0 | 2C 09 00 02 */	cmpwi r9, 0x2
/* 814CAFA4 | 40 80 00 10 */	bge .L_814CAFB4
/* 814CAFA8 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814CAFAC | 7C 00 07 75 */	extsb. r0, r0
/* 814CAFB0 | 40 82 FF DC */	bne .L_814CAF8C
.L_814CAFB4:
/* 814CAFB4 | 2C 89 00 08 */	cmpwi cr1, r9, 0x8
/* 814CAFB8 | 40 85 00 0C */	ble cr1, .L_814CAFC4
/* 814CAFBC | 38 60 00 0A */	li r3, 0xa
/* 814CAFC0 | 4E 80 00 20 */	blr
.L_814CAFC4:
/* 814CAFC4 | 54 A8 07 39 */	rlwinm. r8, r5, 0, 28, 28
/* 814CAFC8 | 40 82 00 64 */	bne .L_814CB02C
/* 814CAFCC | 20 C9 00 08 */	subfic r6, r9, 0x8
/* 814CAFD0 | 38 E0 00 20 */	li r7, 0x20
/* 814CAFD4 | 40 84 00 58 */	bge cr1, .L_814CB02C
/* 814CAFD8 | 54 C5 E8 FF */	srwi. r5, r6, 3
/* 814CAFDC | 7C C0 33 78 */	mr r0, r6
/* 814CAFE0 | 7C A9 03 A6 */	mtctr r5
/* 814CAFE4 | 41 82 00 34 */	beq .L_814CB018
.L_814CAFE8:
/* 814CAFE8 | 98 E3 00 00 */	stb r7, 0x0(r3)
/* 814CAFEC | 98 E3 00 01 */	stb r7, 0x1(r3)
/* 814CAFF0 | 98 E3 00 02 */	stb r7, 0x2(r3)
/* 814CAFF4 | 98 E3 00 03 */	stb r7, 0x3(r3)
/* 814CAFF8 | 98 E3 00 04 */	stb r7, 0x4(r3)
/* 814CAFFC | 98 E3 00 05 */	stb r7, 0x5(r3)
/* 814CB000 | 98 E3 00 06 */	stb r7, 0x6(r3)
/* 814CB004 | 98 E3 00 07 */	stb r7, 0x7(r3)
/* 814CB008 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CB00C | 42 00 FF DC */	bdnz .L_814CAFE8
/* 814CB010 | 70 C6 00 07 */	andi. r6, r6, 0x7
/* 814CB014 | 41 82 00 14 */	beq .L_814CB028
.L_814CB018:
/* 814CB018 | 7C C9 03 A6 */	mtctr r6
.L_814CB01C:
/* 814CB01C | 98 E3 00 00 */	stb r7, 0x0(r3)
/* 814CB020 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814CB024 | 42 00 FF F8 */	bdnz .L_814CB01C
.L_814CB028:
/* 814CB028 | 7D 29 02 14 */	add r9, r9, r0
.L_814CB02C:
/* 814CB02C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814CB030 | 7C 00 07 75 */	extsb. r0, r0
/* 814CB034 | 41 82 00 34 */	beq .L_814CB068
/* 814CB038 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814CB03C | 40 82 00 20 */	bne .L_814CB05C
/* 814CB040 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814CB044 | 48 00 00 18 */	b .L_814CB05C
.L_814CB048:
/* 814CB048 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814CB04C | 39 29 00 01 */	addi r9, r9, 0x1
/* 814CB050 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814CB054 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814CB058 | 38 63 00 01 */	addi r3, r3, 0x1
.L_814CB05C:
/* 814CB05C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814CB060 | 7C 00 07 75 */	extsb. r0, r0
/* 814CB064 | 40 82 FF E4 */	bne .L_814CB048
.L_814CB068:
/* 814CB068 | 2C 09 00 0B */	cmpwi r9, 0xb
/* 814CB06C | 20 89 00 0B */	subfic r4, r9, 0xb
/* 814CB070 | 38 A0 00 20 */	li r5, 0x20
/* 814CB074 | 40 80 00 50 */	bge .L_814CB0C4
/* 814CB078 | 54 80 E8 FF */	srwi. r0, r4, 3
/* 814CB07C | 7C 09 03 A6 */	mtctr r0
/* 814CB080 | 41 82 00 34 */	beq .L_814CB0B4
.L_814CB084:
/* 814CB084 | 98 A3 00 00 */	stb r5, 0x0(r3)
/* 814CB088 | 98 A3 00 01 */	stb r5, 0x1(r3)
/* 814CB08C | 98 A3 00 02 */	stb r5, 0x2(r3)
/* 814CB090 | 98 A3 00 03 */	stb r5, 0x3(r3)
/* 814CB094 | 98 A3 00 04 */	stb r5, 0x4(r3)
/* 814CB098 | 98 A3 00 05 */	stb r5, 0x5(r3)
/* 814CB09C | 98 A3 00 06 */	stb r5, 0x6(r3)
/* 814CB0A0 | 98 A3 00 07 */	stb r5, 0x7(r3)
/* 814CB0A4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CB0A8 | 42 00 FF DC */	bdnz .L_814CB084
/* 814CB0AC | 70 84 00 07 */	andi. r4, r4, 0x7
/* 814CB0B0 | 41 82 00 14 */	beq .L_814CB0C4
.L_814CB0B4:
/* 814CB0B4 | 7C 89 03 A6 */	mtctr r4
.L_814CB0B8:
/* 814CB0B8 | 98 A3 00 00 */	stb r5, 0x0(r3)
/* 814CB0BC | 38 63 00 01 */	addi r3, r3, 0x1
/* 814CB0C0 | 42 00 FF F8 */	bdnz .L_814CB0B8
.L_814CB0C4:
/* 814CB0C4 | 38 60 00 00 */	li r3, 0x0
/* 814CB0C8 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_putShortName

# .text:0x12A8 | 0x814CB0CC | size: 0x25C
.fn VFiPFPATH_getShortName, global
/* 814CB0CC | 88 C4 00 00 */	lbz r6, 0x0(r4)
/* 814CB0D0 | 38 E0 FF FF */	li r7, -0x1
/* 814CB0D4 | 2C 06 00 20 */	cmpwi r6, 0x20
/* 814CB0D8 | 98 C3 00 00 */	stb r6, 0x0(r3)
/* 814CB0DC | 41 82 00 08 */	beq .L_814CB0E4
/* 814CB0E0 | 38 E0 00 00 */	li r7, 0x0
.L_814CB0E4:
/* 814CB0E4 | 88 C4 00 01 */	lbz r6, 0x1(r4)
/* 814CB0E8 | 2C 06 00 20 */	cmpwi r6, 0x20
/* 814CB0EC | 98 C3 00 01 */	stb r6, 0x1(r3)
/* 814CB0F0 | 41 82 00 08 */	beq .L_814CB0F8
/* 814CB0F4 | 38 E0 00 01 */	li r7, 0x1
.L_814CB0F8:
/* 814CB0F8 | 88 C4 00 02 */	lbz r6, 0x2(r4)
/* 814CB0FC | 2C 06 00 20 */	cmpwi r6, 0x20
/* 814CB100 | 98 C3 00 02 */	stb r6, 0x2(r3)
/* 814CB104 | 41 82 00 08 */	beq .L_814CB10C
/* 814CB108 | 38 E0 00 02 */	li r7, 0x2
.L_814CB10C:
/* 814CB10C | 88 C4 00 03 */	lbz r6, 0x3(r4)
/* 814CB110 | 2C 06 00 20 */	cmpwi r6, 0x20
/* 814CB114 | 98 C3 00 03 */	stb r6, 0x3(r3)
/* 814CB118 | 41 82 00 08 */	beq .L_814CB120
/* 814CB11C | 38 E0 00 03 */	li r7, 0x3
.L_814CB120:
/* 814CB120 | 88 C4 00 04 */	lbz r6, 0x4(r4)
/* 814CB124 | 2C 06 00 20 */	cmpwi r6, 0x20
/* 814CB128 | 98 C3 00 04 */	stb r6, 0x4(r3)
/* 814CB12C | 41 82 00 08 */	beq .L_814CB134
/* 814CB130 | 38 E0 00 04 */	li r7, 0x4
.L_814CB134:
/* 814CB134 | 88 C4 00 05 */	lbz r6, 0x5(r4)
/* 814CB138 | 2C 06 00 20 */	cmpwi r6, 0x20
/* 814CB13C | 98 C3 00 05 */	stb r6, 0x5(r3)
/* 814CB140 | 41 82 00 08 */	beq .L_814CB148
/* 814CB144 | 38 E0 00 05 */	li r7, 0x5
.L_814CB148:
/* 814CB148 | 88 C4 00 06 */	lbz r6, 0x6(r4)
/* 814CB14C | 2C 06 00 20 */	cmpwi r6, 0x20
/* 814CB150 | 98 C3 00 06 */	stb r6, 0x6(r3)
/* 814CB154 | 41 82 00 08 */	beq .L_814CB15C
/* 814CB158 | 38 E0 00 06 */	li r7, 0x6
.L_814CB15C:
/* 814CB15C | 88 C4 00 07 */	lbz r6, 0x7(r4)
/* 814CB160 | 2C 06 00 20 */	cmpwi r6, 0x20
/* 814CB164 | 98 C3 00 07 */	stb r6, 0x7(r3)
/* 814CB168 | 41 82 00 08 */	beq .L_814CB170
/* 814CB16C | 38 E0 00 07 */	li r7, 0x7
.L_814CB170:
/* 814CB170 | 34 E7 00 01 */	addic. r7, r7, 0x1
/* 814CB174 | 7C E3 3A 14 */	add r7, r3, r7
/* 814CB178 | 40 82 00 0C */	bne .L_814CB184
/* 814CB17C | 38 60 00 0A */	li r3, 0xa
/* 814CB180 | 4E 80 00 20 */	blr
.L_814CB184:
/* 814CB184 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 814CB188 | 38 C0 00 07 */	li r6, 0x7
/* 814CB18C | 28 00 00 20 */	cmplwi r0, 0x20
/* 814CB190 | 41 82 00 08 */	beq .L_814CB198
/* 814CB194 | 38 C0 00 08 */	li r6, 0x8
.L_814CB198:
/* 814CB198 | 88 04 00 09 */	lbz r0, 0x9(r4)
/* 814CB19C | 28 00 00 20 */	cmplwi r0, 0x20
/* 814CB1A0 | 41 82 00 08 */	beq .L_814CB1A8
/* 814CB1A4 | 38 C0 00 09 */	li r6, 0x9
.L_814CB1A8:
/* 814CB1A8 | 88 04 00 0A */	lbz r0, 0xa(r4)
/* 814CB1AC | 28 00 00 20 */	cmplwi r0, 0x20
/* 814CB1B0 | 41 82 00 08 */	beq .L_814CB1B8
/* 814CB1B4 | 38 C0 00 0A */	li r6, 0xa
.L_814CB1B8:
/* 814CB1B8 | 2C 06 00 07 */	cmpwi r6, 0x7
/* 814CB1BC | 40 81 01 5C */	ble .L_814CB318
/* 814CB1C0 | 54 A0 07 39 */	rlwinm. r0, r5, 0, 28, 28
/* 814CB1C4 | 40 82 00 10 */	bne .L_814CB1D4
/* 814CB1C8 | 38 00 00 2E */	li r0, 0x2e
/* 814CB1CC | 98 07 00 00 */	stb r0, 0x0(r7)
/* 814CB1D0 | 38 E7 00 01 */	addi r7, r7, 0x1
.L_814CB1D4:
/* 814CB1D4 | 2C 86 00 08 */	cmpwi cr1, r6, 0x8
/* 814CB1D8 | 38 60 00 08 */	li r3, 0x8
/* 814CB1DC | 41 84 01 3C */	blt cr1, .L_814CB318
/* 814CB1E0 | 38 06 FF F9 */	subi r0, r6, 0x7
/* 814CB1E4 | 39 06 FF F8 */	subi r8, r6, 0x8
/* 814CB1E8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814CB1EC | 40 81 01 00 */	ble .L_814CB2EC
/* 814CB1F0 | 39 20 00 00 */	li r9, 0x0
/* 814CB1F4 | 39 40 00 00 */	li r10, 0x0
/* 814CB1F8 | 39 60 00 00 */	li r11, 0x0
/* 814CB1FC | 41 84 00 18 */	blt cr1, .L_814CB214
/* 814CB200 | 3C A0 80 00 */	lis r5, 0x8000
/* 814CB204 | 38 05 FF FE */	subi r0, r5, 0x2
/* 814CB208 | 7C 06 00 00 */	cmpw r6, r0
/* 814CB20C | 41 81 00 08 */	bgt .L_814CB214
/* 814CB210 | 39 60 00 01 */	li r11, 0x1
.L_814CB214:
/* 814CB214 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 814CB218 | 41 82 00 38 */	beq .L_814CB250
/* 814CB21C | 54 CB 00 00 */	clrrwi r11, r6, 31
/* 814CB220 | 38 A0 00 01 */	li r5, 0x1
/* 814CB224 | 3C 0B 80 00 */	addis r0, r11, 0x8000
/* 814CB228 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814CB22C | 40 82 00 18 */	bne .L_814CB244
/* 814CB230 | 38 06 FF F8 */	subi r0, r6, 0x8
/* 814CB234 | 54 00 00 00 */	clrrwi r0, r0, 31
/* 814CB238 | 7C 0B 00 00 */	cmpw r11, r0
/* 814CB23C | 41 82 00 08 */	beq .L_814CB244
/* 814CB240 | 38 A0 00 00 */	li r5, 0x0
.L_814CB244:
/* 814CB244 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814CB248 | 41 82 00 08 */	beq .L_814CB250
/* 814CB24C | 39 40 00 01 */	li r10, 0x1
.L_814CB250:
/* 814CB250 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814CB254 | 41 82 00 30 */	beq .L_814CB284
/* 814CB258 | 38 06 FF F8 */	subi r0, r6, 0x8
/* 814CB25C | 38 A0 00 01 */	li r5, 0x1
/* 814CB260 | 54 00 00 01 */	clrrwi. r0, r0, 31
/* 814CB264 | 40 82 00 14 */	bne .L_814CB278
/* 814CB268 | 38 06 FF F9 */	subi r0, r6, 0x7
/* 814CB26C | 54 00 00 01 */	clrrwi. r0, r0, 31
/* 814CB270 | 41 82 00 08 */	beq .L_814CB278
/* 814CB274 | 38 A0 00 00 */	li r5, 0x0
.L_814CB278:
/* 814CB278 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814CB27C | 41 82 00 08 */	beq .L_814CB284
/* 814CB280 | 39 20 00 01 */	li r9, 0x1
.L_814CB284:
/* 814CB284 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814CB288 | 41 82 00 64 */	beq .L_814CB2EC
/* 814CB28C | 55 00 E8 FE */	srwi r0, r8, 3
/* 814CB290 | 7C 09 03 A6 */	mtctr r0
/* 814CB294 | 2C 08 00 08 */	cmpwi r8, 0x8
/* 814CB298 | 41 80 00 54 */	blt .L_814CB2EC
.L_814CB29C:
/* 814CB29C | 7C A4 18 AE */	lbzx r5, r4, r3
/* 814CB2A0 | 7D 04 1A 14 */	add r8, r4, r3
/* 814CB2A4 | 88 08 00 01 */	lbz r0, 0x1(r8)
/* 814CB2A8 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CB2AC | 98 A7 00 00 */	stb r5, 0x0(r7)
/* 814CB2B0 | 88 A8 00 02 */	lbz r5, 0x2(r8)
/* 814CB2B4 | 98 07 00 01 */	stb r0, 0x1(r7)
/* 814CB2B8 | 88 08 00 03 */	lbz r0, 0x3(r8)
/* 814CB2BC | 98 A7 00 02 */	stb r5, 0x2(r7)
/* 814CB2C0 | 88 A8 00 04 */	lbz r5, 0x4(r8)
/* 814CB2C4 | 98 07 00 03 */	stb r0, 0x3(r7)
/* 814CB2C8 | 88 08 00 05 */	lbz r0, 0x5(r8)
/* 814CB2CC | 98 A7 00 04 */	stb r5, 0x4(r7)
/* 814CB2D0 | 88 A8 00 06 */	lbz r5, 0x6(r8)
/* 814CB2D4 | 98 07 00 05 */	stb r0, 0x5(r7)
/* 814CB2D8 | 88 08 00 07 */	lbz r0, 0x7(r8)
/* 814CB2DC | 98 A7 00 06 */	stb r5, 0x6(r7)
/* 814CB2E0 | 98 07 00 07 */	stb r0, 0x7(r7)
/* 814CB2E4 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 814CB2E8 | 42 00 FF B4 */	bdnz .L_814CB29C
.L_814CB2EC:
/* 814CB2EC | 38 06 00 01 */	addi r0, r6, 0x1
/* 814CB2F0 | 7C 84 1A 14 */	add r4, r4, r3
/* 814CB2F4 | 7C 03 00 50 */	subf r0, r3, r0
/* 814CB2F8 | 7C 09 03 A6 */	mtctr r0
/* 814CB2FC | 7C 03 30 00 */	cmpw r3, r6
/* 814CB300 | 41 81 00 18 */	bgt .L_814CB318
.L_814CB304:
/* 814CB304 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814CB308 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814CB30C | 98 07 00 00 */	stb r0, 0x0(r7)
/* 814CB310 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814CB314 | 42 00 FF F0 */	bdnz .L_814CB304
.L_814CB318:
/* 814CB318 | 38 00 00 00 */	li r0, 0x0
/* 814CB31C | 38 60 00 00 */	li r3, 0x0
/* 814CB320 | 98 07 00 00 */	stb r0, 0x0(r7)
/* 814CB324 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_getShortName

# .text:0x1504 | 0x814CB328 | size: 0x1B0
.fn VFiPFPATH_getLongNameformShortName, global
/* 814CB328 | 38 00 00 02 */	li r0, 0x2
/* 814CB32C | 7C 67 1B 78 */	mr r7, r3
/* 814CB330 | 7C 86 23 78 */	mr r6, r4
/* 814CB334 | 54 A8 07 38 */	rlwinm r8, r5, 0, 28, 28
/* 814CB338 | 39 40 00 00 */	li r10, 0x0
/* 814CB33C | 7C 09 03 A6 */	mtctr r0
.L_814CB340:
/* 814CB340 | 89 27 00 00 */	lbz r9, 0x0(r7)
/* 814CB344 | 7D 20 07 75 */	extsb. r0, r9
/* 814CB348 | 41 82 01 04 */	beq .L_814CB44C
/* 814CB34C | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CB350 | 41 82 00 FC */	beq .L_814CB44C
/* 814CB354 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814CB358 | 41 82 00 20 */	beq .L_814CB378
/* 814CB35C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814CB360 | 41 80 00 18 */	blt .L_814CB378
/* 814CB364 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814CB368 | 41 81 00 10 */	bgt .L_814CB378
/* 814CB36C | 38 09 00 20 */	addi r0, r9, 0x20
/* 814CB370 | 98 06 00 00 */	stb r0, 0x0(r6)
/* 814CB374 | 48 00 00 08 */	b .L_814CB37C
.L_814CB378:
/* 814CB378 | 99 26 00 00 */	stb r9, 0x0(r6)
.L_814CB37C:
/* 814CB37C | 89 27 00 01 */	lbz r9, 0x1(r7)
/* 814CB380 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814CB384 | 7D 20 07 75 */	extsb. r0, r9
/* 814CB388 | 41 82 00 C4 */	beq .L_814CB44C
/* 814CB38C | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CB390 | 41 82 00 BC */	beq .L_814CB44C
/* 814CB394 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814CB398 | 41 82 00 20 */	beq .L_814CB3B8
/* 814CB39C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814CB3A0 | 41 80 00 18 */	blt .L_814CB3B8
/* 814CB3A4 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814CB3A8 | 41 81 00 10 */	bgt .L_814CB3B8
/* 814CB3AC | 38 09 00 20 */	addi r0, r9, 0x20
/* 814CB3B0 | 98 06 00 01 */	stb r0, 0x1(r6)
/* 814CB3B4 | 48 00 00 08 */	b .L_814CB3BC
.L_814CB3B8:
/* 814CB3B8 | 99 26 00 01 */	stb r9, 0x1(r6)
.L_814CB3BC:
/* 814CB3BC | 89 27 00 02 */	lbz r9, 0x2(r7)
/* 814CB3C0 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814CB3C4 | 7D 20 07 75 */	extsb. r0, r9
/* 814CB3C8 | 41 82 00 84 */	beq .L_814CB44C
/* 814CB3CC | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CB3D0 | 41 82 00 7C */	beq .L_814CB44C
/* 814CB3D4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814CB3D8 | 41 82 00 20 */	beq .L_814CB3F8
/* 814CB3DC | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814CB3E0 | 41 80 00 18 */	blt .L_814CB3F8
/* 814CB3E4 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814CB3E8 | 41 81 00 10 */	bgt .L_814CB3F8
/* 814CB3EC | 38 09 00 20 */	addi r0, r9, 0x20
/* 814CB3F0 | 98 06 00 02 */	stb r0, 0x2(r6)
/* 814CB3F4 | 48 00 00 08 */	b .L_814CB3FC
.L_814CB3F8:
/* 814CB3F8 | 99 26 00 02 */	stb r9, 0x2(r6)
.L_814CB3FC:
/* 814CB3FC | 89 27 00 03 */	lbz r9, 0x3(r7)
/* 814CB400 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814CB404 | 7D 20 07 75 */	extsb. r0, r9
/* 814CB408 | 41 82 00 44 */	beq .L_814CB44C
/* 814CB40C | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CB410 | 41 82 00 3C */	beq .L_814CB44C
/* 814CB414 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814CB418 | 41 82 00 20 */	beq .L_814CB438
/* 814CB41C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814CB420 | 41 80 00 18 */	blt .L_814CB438
/* 814CB424 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814CB428 | 41 81 00 10 */	bgt .L_814CB438
/* 814CB42C | 38 09 00 20 */	addi r0, r9, 0x20
/* 814CB430 | 98 06 00 03 */	stb r0, 0x3(r6)
/* 814CB434 | 48 00 00 08 */	b .L_814CB43C
.L_814CB438:
/* 814CB438 | 99 26 00 03 */	stb r9, 0x3(r6)
.L_814CB43C:
/* 814CB43C | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814CB440 | 38 C6 00 04 */	addi r6, r6, 0x4
/* 814CB444 | 38 E7 00 04 */	addi r7, r7, 0x4
/* 814CB448 | 42 00 FE F8 */	bdnz .L_814CB340
.L_814CB44C:
/* 814CB44C | 7C 03 50 AE */	lbzx r0, r3, r10
/* 814CB450 | 7C 00 07 74 */	extsb r0, r0
/* 814CB454 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CB458 | 40 82 00 10 */	bne .L_814CB468
/* 814CB45C | 38 00 00 2E */	li r0, 0x2e
/* 814CB460 | 7C 04 51 AE */	stbx r0, r4, r10
/* 814CB464 | 39 4A 00 01 */	addi r10, r10, 0x1
.L_814CB468:
/* 814CB468 | 38 EA 00 03 */	addi r7, r10, 0x3
/* 814CB46C | 54 A6 06 F6 */	rlwinm r6, r5, 0, 27, 27
/* 814CB470 | 7C 0A 38 50 */	subf r0, r10, r7
/* 814CB474 | 7C A3 52 14 */	add r5, r3, r10
/* 814CB478 | 7C 64 52 14 */	add r3, r4, r10
/* 814CB47C | 7C 09 03 A6 */	mtctr r0
/* 814CB480 | 7C 0A 38 00 */	cmpw r10, r7
/* 814CB484 | 40 80 00 48 */	bge .L_814CB4CC
.L_814CB488:
/* 814CB488 | 88 E5 00 00 */	lbz r7, 0x0(r5)
/* 814CB48C | 7C E0 07 75 */	extsb. r0, r7
/* 814CB490 | 41 82 00 3C */	beq .L_814CB4CC
/* 814CB494 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814CB498 | 41 82 00 20 */	beq .L_814CB4B8
/* 814CB49C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814CB4A0 | 41 80 00 18 */	blt .L_814CB4B8
/* 814CB4A4 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814CB4A8 | 41 81 00 10 */	bgt .L_814CB4B8
/* 814CB4AC | 38 07 00 20 */	addi r0, r7, 0x20
/* 814CB4B0 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814CB4B4 | 48 00 00 08 */	b .L_814CB4BC
.L_814CB4B8:
/* 814CB4B8 | 98 E3 00 00 */	stb r7, 0x0(r3)
.L_814CB4BC:
/* 814CB4BC | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814CB4C0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814CB4C4 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814CB4C8 | 42 00 FF C0 */	bdnz .L_814CB488
.L_814CB4CC:
/* 814CB4CC | 38 00 00 00 */	li r0, 0x0
/* 814CB4D0 | 7C 04 51 AE */	stbx r0, r4, r10
/* 814CB4D4 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_getLongNameformShortName

# .text:0x16B4 | 0x814CB4D8 | size: 0x68
.fn VFiPFPATH_GetLengthFromShortname, global
/* 814CB4D8 | 38 C0 00 00 */	li r6, 0x0
/* 814CB4DC | 38 E0 00 00 */	li r7, 0x0
/* 814CB4E0 | 48 00 00 48 */	b .L_814CB528
.L_814CB4E4:
/* 814CB4E4 | 2C 06 00 08 */	cmpwi r6, 0x8
/* 814CB4E8 | 40 82 00 2C */	bne .L_814CB514
/* 814CB4EC | 7C A0 07 74 */	extsb r0, r5
/* 814CB4F0 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814CB4F4 | 40 82 00 1C */	bne .L_814CB510
/* 814CB4F8 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814CB4FC | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814CB500 | 40 82 00 10 */	bne .L_814CB510
/* 814CB504 | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 814CB508 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814CB50C | 41 82 00 08 */	beq .L_814CB514
.L_814CB510:
/* 814CB510 | 38 E7 00 01 */	addi r7, r7, 0x1
.L_814CB514:
/* 814CB514 | 7C A0 07 74 */	extsb r0, r5
/* 814CB518 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814CB51C | 41 82 00 08 */	beq .L_814CB524
/* 814CB520 | 38 E7 00 01 */	addi r7, r7, 0x1
.L_814CB524:
/* 814CB524 | 38 C6 00 01 */	addi r6, r6, 0x1
.L_814CB528:
/* 814CB528 | 7C A3 30 AE */	lbzx r5, r3, r6
/* 814CB52C | 7C 83 32 14 */	add r4, r3, r6
/* 814CB530 | 7C A0 07 75 */	extsb. r0, r5
/* 814CB534 | 40 82 FF B0 */	bne .L_814CB4E4
/* 814CB538 | 7C E3 3B 78 */	mr r3, r7
/* 814CB53C | 4E 80 00 20 */	blr
.endfn VFiPFPATH_GetLengthFromShortname

# .text:0x171C | 0x814CB540 | size: 0x9C
.fn VFiPFPATH_GetLengthFromUnicode, global
/* 814CB540 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CB544 | 7C 08 02 A6 */	mflr r0
/* 814CB548 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CB54C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CB550 | 3F E0 81 0D */	lis r31, VFipf_vol_set_810CD7F0@ha
/* 814CB554 | 3B FF D7 F0 */	addi r31, r31, VFipf_vol_set_810CD7F0@l
/* 814CB558 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CB55C | 3B C0 00 00 */	li r30, 0x0
/* 814CB560 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814CB564 | 3B A0 00 00 */	li r29, 0x0
/* 814CB568 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814CB56C | 7C 7C 1B 78 */	mr r28, r3
/* 814CB570 | 48 00 00 38 */	b .L_814CB5A8
.L_814CB574:
/* 814CB574 | 81 9F 00 28 */	lwz r12, 0x28(r31)
/* 814CB578 | 7C 7C 1A 14 */	add r3, r28, r3
/* 814CB57C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CB580 | 7D 89 03 A6 */	mtctr r12
/* 814CB584 | 4E 80 04 21 */	bctrl
/* 814CB588 | 38 81 00 0E */	addi r4, r1, 0xe
/* 814CB58C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814CB590 | 4B FE A5 45 */	bl VFiPFCODE_Divide_Width
/* 814CB594 | A8 01 00 0C */	lha r0, 0xc(r1)
/* 814CB598 | A8 61 00 0E */	lha r3, 0xe(r1)
/* 814CB59C | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814CB5A0 | 7F BD 1A 14 */	add r29, r29, r3
/* 814CB5A4 | 7F DE 02 14 */	add r30, r30, r0
.L_814CB5A8:
/* 814CB5A8 | 57 C3 08 3C */	slwi r3, r30, 1
/* 814CB5AC | 7C 1C 1A 2E */	lhzx r0, r28, r3
/* 814CB5B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CB5B4 | 40 82 FF C0 */	bne .L_814CB574
/* 814CB5B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CB5BC | 7F A3 EB 78 */	mr r3, r29
/* 814CB5C0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CB5C4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814CB5C8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814CB5CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CB5D0 | 7C 08 03 A6 */	mtlr r0
/* 814CB5D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CB5D8 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_GetLengthFromUnicode

# .text:0x17B8 | 0x814CB5DC | size: 0x12C
.fn VFiPFPATH_transformFromUnicodeToNormal, global
/* 814CB5DC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CB5E0 | 7C 08 02 A6 */	mflr r0
/* 814CB5E4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CB5E8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CB5EC | 48 12 DE D1 */	bl _savegpr_26
/* 814CB5F0 | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814CB5F4 | 7C 7F 1B 78 */	mr r31, r3
/* 814CB5F8 | 3B 85 D7 F0 */	addi r28, r5, VFipf_vol_set_810CD7F0@l
/* 814CB5FC | 7C 9A 23 78 */	mr r26, r4
/* 814CB600 | 80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 814CB604 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814CB608 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814CB60C | 40 82 00 8C */	bne .L_814CB698
/* 814CB610 | 38 00 00 00 */	li r0, 0x0
/* 814CB614 | 3B 80 00 2E */	li r28, 0x2e
/* 814CB618 | 3B A0 00 20 */	li r29, 0x20
/* 814CB61C | B3 81 00 10 */	sth r28, 0x10(r1)
/* 814CB620 | 7F 5B D3 78 */	mr r27, r26
/* 814CB624 | 3B C0 00 5F */	li r30, 0x5f
/* 814CB628 | B0 01 00 12 */	sth r0, 0x12(r1)
/* 814CB62C | B3 A1 00 0C */	sth r29, 0xc(r1)
/* 814CB630 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 814CB634 | 48 00 00 54 */	b .L_814CB688
.L_814CB638:
/* 814CB638 | 7F 43 D3 78 */	mr r3, r26
/* 814CB63C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814CB640 | 38 A0 00 01 */	li r5, 0x1
/* 814CB644 | 4B FE AB 35 */	bl VFipf_w_strncmp
/* 814CB648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CB64C | 40 82 00 0C */	bne .L_814CB658
/* 814CB650 | 9B 9F 00 00 */	stb r28, 0x0(r31)
/* 814CB654 | 48 00 00 28 */	b .L_814CB67C
.L_814CB658:
/* 814CB658 | 7F 43 D3 78 */	mr r3, r26
/* 814CB65C | 38 81 00 0C */	addi r4, r1, 0xc
/* 814CB660 | 38 A0 00 01 */	li r5, 0x1
/* 814CB664 | 4B FE AB 15 */	bl VFipf_w_strncmp
/* 814CB668 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CB66C | 40 82 00 0C */	bne .L_814CB678
/* 814CB670 | 9B BF 00 00 */	stb r29, 0x0(r31)
/* 814CB674 | 48 00 00 08 */	b .L_814CB67C
.L_814CB678:
/* 814CB678 | 9B DF 00 00 */	stb r30, 0x0(r31)
.L_814CB67C:
/* 814CB67C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814CB680 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 814CB684 | 3B 7B 00 02 */	addi r27, r27, 0x2
.L_814CB688:
/* 814CB688 | A0 1B 00 00 */	lhz r0, 0x0(r27)
/* 814CB68C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CB690 | 40 82 FF A8 */	bne .L_814CB638
/* 814CB694 | 48 00 00 50 */	b .L_814CB6E4
.L_814CB698:
/* 814CB698 | 3B 60 00 00 */	li r27, 0x0
/* 814CB69C | 48 00 00 38 */	b .L_814CB6D4
.L_814CB6A0:
/* 814CB6A0 | 81 9C 00 28 */	lwz r12, 0x28(r28)
/* 814CB6A4 | 7F E4 FB 78 */	mr r4, r31
/* 814CB6A8 | 7C 7A 1A 14 */	add r3, r26, r3
/* 814CB6AC | 7D 89 03 A6 */	mtctr r12
/* 814CB6B0 | 4E 80 04 21 */	bctrl
/* 814CB6B4 | 38 81 00 0A */	addi r4, r1, 0xa
/* 814CB6B8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CB6BC | 4B FE A4 19 */	bl VFiPFCODE_Divide_Width
/* 814CB6C0 | A8 01 00 08 */	lha r0, 0x8(r1)
/* 814CB6C4 | A8 61 00 0A */	lha r3, 0xa(r1)
/* 814CB6C8 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 814CB6CC | 7F FF 1A 14 */	add r31, r31, r3
/* 814CB6D0 | 7F 7B 02 14 */	add r27, r27, r0
.L_814CB6D4:
/* 814CB6D4 | 57 63 08 3C */	slwi r3, r27, 1
/* 814CB6D8 | 7C 1A 1A 2E */	lhzx r0, r26, r3
/* 814CB6DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CB6E0 | 40 82 FF C0 */	bne .L_814CB6A0
.L_814CB6E4:
/* 814CB6E4 | 38 00 00 00 */	li r0, 0x0
/* 814CB6E8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CB6EC | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 814CB6F0 | 38 60 00 00 */	li r3, 0x0
/* 814CB6F4 | 48 12 DE 15 */	bl _restgpr_26
/* 814CB6F8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CB6FC | 7C 08 03 A6 */	mtlr r0
/* 814CB700 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CB704 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_transformFromUnicodeToNormal

# .text:0x18E4 | 0x814CB708 | size: 0x98
.fn VFiPFPATH_transformInUnicode, global
/* 814CB708 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CB70C | 7C 08 02 A6 */	mflr r0
/* 814CB710 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CB714 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CB718 | 48 12 DD A9 */	bl _savegpr_27
/* 814CB71C | 3F E0 81 0D */	lis r31, VFipf_vol_set_810CD7F0@ha
/* 814CB720 | 7C 7B 1B 78 */	mr r27, r3
/* 814CB724 | 7C 9C 23 78 */	mr r28, r4
/* 814CB728 | 3B A0 00 00 */	li r29, 0x0
/* 814CB72C | 3B FF D7 F0 */	addi r31, r31, VFipf_vol_set_810CD7F0@l
/* 814CB730 | 3B C0 00 00 */	li r30, 0x0
/* 814CB734 | 48 00 00 3C */	b .L_814CB770
.L_814CB738:
/* 814CB738 | 81 9F 00 24 */	lwz r12, 0x24(r31)
/* 814CB73C | 7F 64 DB 78 */	mr r4, r27
/* 814CB740 | 7C 7C F2 14 */	add r3, r28, r30
/* 814CB744 | 7D 89 03 A6 */	mtctr r12
/* 814CB748 | 4E 80 04 21 */	bctrl
/* 814CB74C | 38 81 00 0A */	addi r4, r1, 0xa
/* 814CB750 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CB754 | 4B FE A3 81 */	bl VFiPFCODE_Divide_Width
/* 814CB758 | A8 61 00 08 */	lha r3, 0x8(r1)
/* 814CB75C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814CB760 | A8 01 00 0A */	lha r0, 0xa(r1)
/* 814CB764 | 54 63 00 3C */	clrrwi r3, r3, 1
/* 814CB768 | 7F 7B 1A 14 */	add r27, r27, r3
/* 814CB76C | 7F DE 02 14 */	add r30, r30, r0
.L_814CB770:
/* 814CB770 | 7C 1C F0 AE */	lbzx r0, r28, r30
/* 814CB774 | 7C 00 07 75 */	extsb. r0, r0
/* 814CB778 | 40 82 FF C0 */	bne .L_814CB738
/* 814CB77C | 38 00 00 00 */	li r0, 0x0
/* 814CB780 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CB784 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 814CB788 | 7F A3 EB 78 */	mr r3, r29
/* 814CB78C | 48 12 DD 81 */	bl _restgpr_27
/* 814CB790 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CB794 | 7C 08 03 A6 */	mtlr r0
/* 814CB798 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CB79C | 4E 80 00 20 */	blr
.endfn VFiPFPATH_transformInUnicode

# .text:0x197C | 0x814CB7A0 | size: 0x778
.fn VFiPFPATH_parseShortName, global
/* 814CB7A0 | 94 21 FD A0 */	stwu r1, -0x260(r1)
/* 814CB7A4 | 7C 08 02 A6 */	mflr r0
/* 814CB7A8 | 90 01 02 64 */	stw r0, 0x264(r1)
/* 814CB7AC | 39 61 02 60 */	addi r11, r1, 0x260
/* 814CB7B0 | 48 12 DC DD */	bl _savegpr_14
/* 814CB7B4 | 7C 8E 23 78 */	mr r14, r4
/* 814CB7B8 | 7C 7F 1B 78 */	mr r31, r3
/* 814CB7BC | 7D C3 73 78 */	mr r3, r14
/* 814CB7C0 | 3A A0 00 00 */	li r21, 0x0
/* 814CB7C4 | 3A 80 00 00 */	li r20, 0x0
/* 814CB7C8 | 4B FE A4 3D */	bl VFiPFSTR_GetCodeMode
/* 814CB7CC | 28 03 00 02 */	cmplwi r3, 0x2
/* 814CB7D0 | 40 82 00 24 */	bne .L_814CB7F4
/* 814CB7D4 | 7D C3 73 78 */	mr r3, r14
/* 814CB7D8 | 38 80 00 01 */	li r4, 0x1
/* 814CB7DC | 4B FE A4 31 */	bl VFiPFSTR_GetStrPos
/* 814CB7E0 | 7C 64 1B 78 */	mr r4, r3
/* 814CB7E4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814CB7E8 | 4B FF FD F5 */	bl VFiPFPATH_transformFromUnicodeToNormal
/* 814CB7EC | 3A C1 00 10 */	addi r22, r1, 0x10
/* 814CB7F0 | 48 00 00 14 */	b .L_814CB804
.L_814CB7F4:
/* 814CB7F4 | 7D C3 73 78 */	mr r3, r14
/* 814CB7F8 | 38 80 00 01 */	li r4, 0x1
/* 814CB7FC | 4B FE A4 11 */	bl VFiPFSTR_GetStrPos
/* 814CB800 | 7C 76 1B 78 */	mr r22, r3
.L_814CB804:
/* 814CB804 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CB808 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CB80C | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814CB810 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CB814 | 40 82 06 88 */	bne .L_814CBE9C
/* 814CB818 | 48 00 00 0C */	b .L_814CB824
.L_814CB81C:
/* 814CB81C | 3A 80 00 01 */	li r20, 0x1
/* 814CB820 | 3A D6 00 01 */	addi r22, r22, 0x1
.L_814CB824:
/* 814CB824 | 88 16 00 00 */	lbz r0, 0x0(r22)
/* 814CB828 | 7C 00 07 74 */	extsb r0, r0
/* 814CB82C | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814CB830 | 41 82 FF EC */	beq .L_814CB81C
/* 814CB834 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CB838 | 41 82 FF E4 */	beq .L_814CB81C
/* 814CB83C | 3A 00 00 00 */	li r16, 0x0
/* 814CB840 | 38 80 00 00 */	li r4, 0x0
/* 814CB844 | 38 A0 00 00 */	li r5, 0x0
/* 814CB848 | 48 00 00 24 */	b .L_814CB86C
.L_814CB84C:
/* 814CB84C | 7C 60 07 74 */	extsb r0, r3
/* 814CB850 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CB854 | 40 82 00 14 */	bne .L_814CB868
/* 814CB858 | 56 00 04 3F */	clrlwi. r0, r16, 16
/* 814CB85C | 41 82 00 08 */	beq .L_814CB864
/* 814CB860 | 7E 04 83 78 */	mr r4, r16
.L_814CB864:
/* 814CB864 | 7C B0 2B 78 */	mr r16, r5
.L_814CB868:
/* 814CB868 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814CB86C:
/* 814CB86C | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 814CB870 | 7C 76 00 AE */	lbzx r3, r22, r0
/* 814CB874 | 7C 60 07 75 */	extsb. r0, r3
/* 814CB878 | 40 82 FF D4 */	bne .L_814CB84C
/* 814CB87C | 56 00 04 3F */	clrlwi. r0, r16, 16
/* 814CB880 | 41 82 00 24 */	beq .L_814CB8A4
/* 814CB884 | 7C 60 B2 14 */	add r3, r0, r22
/* 814CB888 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814CB88C | 7C 00 07 75 */	extsb. r0, r0
/* 814CB890 | 40 82 00 14 */	bne .L_814CB8A4
/* 814CB894 | 54 80 04 3F */	clrlwi. r0, r4, 16
/* 814CB898 | 41 82 00 08 */	beq .L_814CB8A0
/* 814CB89C | 7C 90 23 78 */	mr r16, r4
.L_814CB8A0:
/* 814CB8A0 | 3A 80 00 01 */	li r20, 0x1
.L_814CB8A4:
/* 814CB8A4 | 39 E0 00 00 */	li r15, 0x0
/* 814CB8A8 | 3A 61 00 0C */	addi r19, r1, 0xc
/* 814CB8AC | 3F 60 81 0D */	lis r27, VFipf_vol_set_810CD7F0@ha
/* 814CB8B0 | 3F A0 81 62 */	lis r29, VFipf_valid_fn_char_81618D90@ha
/* 814CB8B4 | B1 E1 00 0C */	sth r15, 0xc(r1)
/* 814CB8B8 | 7E 7A 9B 78 */	mr r26, r19
/* 814CB8BC | 7E 7C 9B 78 */	mr r28, r19
/* 814CB8C0 | 3B 7B D7 F0 */	addi r27, r27, VFipf_vol_set_810CD7F0@l
/* 814CB8C4 | B1 E1 00 0A */	sth r15, 0xa(r1)
/* 814CB8C8 | 3B BD 8D 90 */	addi r29, r29, VFipf_valid_fn_char_81618D90@l
/* 814CB8CC | 3B 21 00 0A */	addi r25, r1, 0xa
/* 814CB8D0 | 3B 00 00 00 */	li r24, 0x0
/* 814CB8D4 | 3A 40 00 01 */	li r18, 0x1
/* 814CB8D8 | 3A 20 00 01 */	li r17, 0x1
/* 814CB8DC | 48 00 02 88 */	b .L_814CBB64
.L_814CB8E0:
/* 814CB8E0 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814CB8E4 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814CB8E8 | 41 82 00 18 */	beq .L_814CB900
/* 814CB8EC | 56 03 04 3F */	clrlwi. r3, r16, 16
/* 814CB8F0 | 41 82 00 18 */	beq .L_814CB908
/* 814CB8F4 | 57 00 04 3E */	clrlwi r0, r24, 16
/* 814CB8F8 | 7C 00 18 40 */	cmplw r0, r3
/* 814CB8FC | 40 82 00 0C */	bne .L_814CB908
.L_814CB900:
/* 814CB900 | 7C 13 C8 40 */	cmplw r19, r25
/* 814CB904 | 40 82 02 28 */	bne .L_814CBB2C
.L_814CB908:
/* 814CB908 | 7C 80 07 74 */	extsb r0, r4
/* 814CB90C | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814CB910 | 41 82 02 14 */	beq .L_814CBB24
/* 814CB914 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CB918 | 41 82 02 0C */	beq .L_814CBB24
/* 814CB91C | 81 9B 00 2C */	lwz r12, 0x2c(r27)
/* 814CB920 | 57 00 04 3E */	clrlwi r0, r24, 16
/* 814CB924 | 7C 76 02 14 */	add r3, r22, r0
/* 814CB928 | 7D 89 03 A6 */	mtctr r12
/* 814CB92C | 4E 80 04 21 */	bctrl
/* 814CB930 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814CB934 | 7C 77 1B 78 */	mr r23, r3
/* 814CB938 | 41 82 01 44 */	beq .L_814CBA7C
/* 814CB93C | 57 04 04 3E */	clrlwi r4, r24, 16
/* 814CB940 | 56 00 04 3E */	clrlwi r0, r16, 16
/* 814CB944 | 7C 04 00 40 */	cmplw r4, r0
/* 814CB948 | 41 80 00 0C */	blt .L_814CB954
/* 814CB94C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CB950 | 40 82 00 1C */	bne .L_814CB96C
.L_814CB954:
/* 814CB954 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814CB958 | 7C 00 1A 14 */	add r0, r0, r3
/* 814CB95C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814CB960 | 40 81 00 0C */	ble .L_814CB96C
/* 814CB964 | 3A 80 00 01 */	li r20, 0x1
/* 814CB968 | 48 00 01 F8 */	b .L_814CBB60
.L_814CB96C:
/* 814CB96C | 56 04 04 3F */	clrlwi. r4, r16, 16
/* 814CB970 | 41 82 00 28 */	beq .L_814CB998
/* 814CB974 | 57 00 04 3E */	clrlwi r0, r24, 16
/* 814CB978 | 7C 00 20 40 */	cmplw r0, r4
/* 814CB97C | 40 81 00 1C */	ble .L_814CB998
/* 814CB980 | A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 814CB984 | 7C 05 1A 14 */	add r0, r5, r3
/* 814CB988 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814CB98C | 40 81 00 0C */	ble .L_814CB998
/* 814CB990 | 3A 80 00 01 */	li r20, 0x1
/* 814CB994 | 48 00 01 EC */	b .L_814CBB80
.L_814CB998:
/* 814CB998 | 7C 13 D0 40 */	cmplw r19, r26
/* 814CB99C | 40 82 00 D0 */	bne .L_814CBA6C
/* 814CB9A0 | 7E 51 93 78 */	mr r17, r18
/* 814CB9A4 | 54 72 04 3E */	clrlwi r18, r3, 16
/* 814CB9A8 | 48 00 00 C4 */	b .L_814CBA6C
.L_814CB9AC:
/* 814CB9AC | 57 00 04 3E */	clrlwi r0, r24, 16
/* 814CB9B0 | 81 9B 00 24 */	lwz r12, 0x24(r27)
/* 814CB9B4 | 7C B6 00 AE */	lbzx r5, r22, r0
/* 814CB9B8 | 7C 76 02 14 */	add r3, r22, r0
/* 814CB9BC | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814CB9C0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CB9C4 | 54 A5 40 2E */	slwi r5, r5, 8
/* 814CB9C8 | 7C 05 02 14 */	add r0, r5, r0
/* 814CB9CC | 54 1E 04 3E */	clrlwi r30, r0, 16
/* 814CB9D0 | 7D 89 03 A6 */	mtctr r12
/* 814CB9D4 | 4E 80 04 21 */	bctrl
/* 814CB9D8 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 814CB9DC | 28 03 FF 41 */	cmplwi r3, 0xff41
/* 814CB9E0 | 41 80 00 1C */	blt .L_814CB9FC
/* 814CB9E4 | 28 03 FF 5A */	cmplwi r3, 0xff5a
/* 814CB9E8 | 41 81 00 14 */	bgt .L_814CB9FC
/* 814CB9EC | 38 03 FF E0 */	subi r0, r3, 0x20
/* 814CB9F0 | 38 60 00 01 */	li r3, 0x1
/* 814CB9F4 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814CB9F8 | 48 00 00 08 */	b .L_814CBA00
.L_814CB9FC:
/* 814CB9FC | 38 60 00 00 */	li r3, 0x0
.L_814CBA00:
/* 814CBA00 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CBA04 | 40 82 00 20 */	bne .L_814CBA24
/* 814CBA08 | 81 9B 00 28 */	lwz r12, 0x28(r27)
/* 814CBA0C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CBA10 | 7C 64 1B 78 */	mr r4, r3
/* 814CBA14 | 7D 89 03 A6 */	mtctr r12
/* 814CBA18 | 4E 80 04 21 */	bctrl
/* 814CBA1C | 38 60 00 01 */	li r3, 0x1
/* 814CBA20 | 48 00 00 08 */	b .L_814CBA28
.L_814CBA24:
/* 814CBA24 | 38 60 00 00 */	li r3, 0x0
.L_814CBA28:
/* 814CBA28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CBA2C | 41 82 00 0C */	beq .L_814CBA38
/* 814CBA30 | A3 C1 00 08 */	lhz r30, 0x8(r1)
/* 814CBA34 | 3A A0 00 01 */	li r21, 0x1
.L_814CBA38:
/* 814CBA38 | 55 E0 04 3E */	clrlwi r0, r15, 16
/* 814CBA3C | 38 6F 00 02 */	addi r3, r15, 0x2
/* 814CBA40 | 7C 9F 02 14 */	add r4, r31, r0
/* 814CBA44 | 3A F7 FF FE */	subi r23, r23, 0x2
/* 814CBA48 | 57 C0 C6 3E */	extrwi r0, r30, 8, 16
/* 814CBA4C | 54 6F 04 3E */	clrlwi r15, r3, 16
/* 814CBA50 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814CBA54 | 38 18 00 02 */	addi r0, r24, 0x2
/* 814CBA58 | 54 18 04 3E */	clrlwi r24, r0, 16
/* 814CBA5C | 9B C4 00 01 */	stb r30, 0x1(r4)
/* 814CBA60 | A0 73 00 00 */	lhz r3, 0x0(r19)
/* 814CBA64 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814CBA68 | B0 13 00 00 */	sth r0, 0x0(r19)
.L_814CBA6C:
/* 814CBA6C | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814CBA70 | 40 82 FF 3C */	bne .L_814CB9AC
/* 814CBA74 | 3B 18 FF FF */	subi r24, r24, 0x1
/* 814CBA78 | 48 00 00 E8 */	b .L_814CBB60
.L_814CBA7C:
/* 814CBA7C | 7C 13 E0 40 */	cmplw r19, r28
/* 814CBA80 | 40 82 00 0C */	bne .L_814CBA8C
/* 814CBA84 | 7E 51 93 78 */	mr r17, r18
/* 814CBA88 | 3A 40 00 01 */	li r18, 0x1
.L_814CBA8C:
/* 814CBA8C | 80 1B 00 14 */	lwz r0, 0x14(r27)
/* 814CBA90 | 54 00 03 DF */	rlwinm. r0, r0, 0, 15, 15
/* 814CBA94 | 40 82 00 28 */	bne .L_814CBABC
/* 814CBA98 | 7C 16 F0 AE */	lbzx r0, r22, r30
/* 814CBA9C | 28 00 00 80 */	cmplwi r0, 0x80
/* 814CBAA0 | 40 80 00 1C */	bge .L_814CBABC
/* 814CBAA4 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814CBAA8 | 41 80 00 58 */	blt .L_814CBB00
/* 814CBAAC | 7C 7D 02 14 */	add r3, r29, r0
/* 814CBAB0 | 88 03 FF E0 */	lbz r0, -0x20(r3)
/* 814CBAB4 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CBAB8 | 41 82 00 48 */	beq .L_814CBB00
.L_814CBABC:
/* 814CBABC | 7C 76 F0 AE */	lbzx r3, r22, r30
/* 814CBAC0 | 7C 63 07 74 */	extsb r3, r3
/* 814CBAC4 | 4B FE 9D 05 */	bl VFipf_toupper
/* 814CBAC8 | 55 E0 04 3E */	clrlwi r0, r15, 16
/* 814CBACC | 39 EF 00 01 */	addi r15, r15, 0x1
/* 814CBAD0 | 7C 7F 01 AE */	stbx r3, r31, r0
/* 814CBAD4 | A0 73 00 00 */	lhz r3, 0x0(r19)
/* 814CBAD8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CBADC | B0 13 00 00 */	sth r0, 0x0(r19)
/* 814CBAE0 | 7C 16 F0 AE */	lbzx r0, r22, r30
/* 814CBAE4 | 7C 00 07 74 */	extsb r0, r0
/* 814CBAE8 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 814CBAEC | 41 80 00 74 */	blt .L_814CBB60
/* 814CBAF0 | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 814CBAF4 | 41 81 00 6C */	bgt .L_814CBB60
/* 814CBAF8 | 3A A0 00 01 */	li r21, 0x1
/* 814CBAFC | 48 00 00 64 */	b .L_814CBB60
.L_814CBB00:
/* 814CBB00 | 55 E3 04 3E */	clrlwi r3, r15, 16
/* 814CBB04 | 38 00 00 5F */	li r0, 0x5f
/* 814CBB08 | 7C 1F 19 AE */	stbx r0, r31, r3
/* 814CBB0C | 3A 80 00 01 */	li r20, 0x1
/* 814CBB10 | 39 EF 00 01 */	addi r15, r15, 0x1
/* 814CBB14 | A0 73 00 00 */	lhz r3, 0x0(r19)
/* 814CBB18 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CBB1C | B0 13 00 00 */	sth r0, 0x0(r19)
/* 814CBB20 | 48 00 00 40 */	b .L_814CBB60
.L_814CBB24:
/* 814CBB24 | 3A 80 00 01 */	li r20, 0x1
/* 814CBB28 | 48 00 00 38 */	b .L_814CBB60
.L_814CBB2C:
/* 814CBB2C | 7C 80 07 75 */	extsb. r0, r4
/* 814CBB30 | 7F 33 CB 78 */	mr r19, r25
/* 814CBB34 | 41 82 00 10 */	beq .L_814CBB44
/* 814CBB38 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CBB3C | 41 82 00 08 */	beq .L_814CBB44
/* 814CBB40 | 3A 80 00 01 */	li r20, 0x1
.L_814CBB44:
/* 814CBB44 | 56 00 04 3F */	clrlwi. r0, r16, 16
/* 814CBB48 | 41 82 00 38 */	beq .L_814CBB80
/* 814CBB4C | 55 E3 04 3E */	clrlwi r3, r15, 16
/* 814CBB50 | 38 00 00 2E */	li r0, 0x2e
/* 814CBB54 | 7C 1F 19 AE */	stbx r0, r31, r3
/* 814CBB58 | 7E 18 83 78 */	mr r24, r16
/* 814CBB5C | 39 EF 00 01 */	addi r15, r15, 0x1
.L_814CBB60:
/* 814CBB60 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_814CBB64:
/* 814CBB64 | A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 814CBB68 | 28 05 00 03 */	cmplwi r5, 0x3
/* 814CBB6C | 40 80 00 14 */	bge .L_814CBB80
/* 814CBB70 | 57 1E 04 3E */	clrlwi r30, r24, 16
/* 814CBB74 | 7C 96 F0 AE */	lbzx r4, r22, r30
/* 814CBB78 | 7C 80 07 75 */	extsb. r0, r4
/* 814CBB7C | 40 82 FD 64 */	bne .L_814CB8E0
.L_814CBB80:
/* 814CBB80 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 814CBB84 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814CBB88 | 40 82 00 18 */	bne .L_814CBBA0
/* 814CBB8C | 57 00 04 3E */	clrlwi r0, r24, 16
/* 814CBB90 | 7C 16 00 AE */	lbzx r0, r22, r0
/* 814CBB94 | 7C 00 07 75 */	extsb. r0, r0
/* 814CBB98 | 41 82 00 08 */	beq .L_814CBBA0
/* 814CBB9C | 3A 80 00 01 */	li r20, 0x1
.L_814CBBA0:
/* 814CBBA0 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814CBBA4 | 55 E0 04 3E */	clrlwi r0, r15, 16
/* 814CBBA8 | 38 60 00 00 */	li r3, 0x0
/* 814CBBAC | 7C 7F 01 AE */	stbx r3, r31, r0
/* 814CBBB0 | 41 82 02 B4 */	beq .L_814CBE64
/* 814CBBB4 | A0 81 00 0C */	lhz r4, 0xc(r1)
/* 814CBBB8 | 28 04 00 08 */	cmplwi r4, 0x8
/* 814CBBBC | 7C 85 23 78 */	mr r5, r4
/* 814CBBC0 | 40 82 00 38 */	bne .L_814CBBF8
/* 814CBBC4 | 28 12 00 01 */	cmplwi r18, 0x1
/* 814CBBC8 | 41 82 00 10 */	beq .L_814CBBD8
/* 814CBBCC | 20 12 00 08 */	subfic r0, r18, 0x8
/* 814CBBD0 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 814CBBD4 | 48 00 00 34 */	b .L_814CBC08
.L_814CBBD8:
/* 814CBBD8 | 56 23 04 3E */	clrlwi r3, r17, 16
/* 814CBBDC | 38 00 00 02 */	li r0, 0x2
/* 814CBBE0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CBBE4 | 41 82 00 08 */	beq .L_814CBBEC
/* 814CBBE8 | 38 03 00 01 */	addi r0, r3, 0x1
.L_814CBBEC:
/* 814CBBEC | 20 00 00 08 */	subfic r0, r0, 0x8
/* 814CBBF0 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 814CBBF4 | 48 00 00 14 */	b .L_814CBC08
.L_814CBBF8:
/* 814CBBF8 | 28 04 00 07 */	cmplwi r4, 0x7
/* 814CBBFC | 40 82 00 0C */	bne .L_814CBC08
/* 814CBC00 | 7C 11 20 50 */	subf r0, r17, r4
/* 814CBC04 | 54 05 04 3E */	clrlwi r5, r0, 16
.L_814CBC08:
/* 814CBC08 | 38 05 00 02 */	addi r0, r5, 0x2
/* 814CBC0C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814CBC10 | 7C 00 20 40 */	cmplw r0, r4
/* 814CBC14 | 40 80 00 50 */	bge .L_814CBC64
/* 814CBC18 | 7C 00 20 50 */	subf r0, r0, r4
/* 814CBC1C | 38 E0 FF FF */	li r7, -0x1
/* 814CBC20 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814CBC24 | 7C DF 02 14 */	add r6, r31, r0
/* 814CBC28 | 38 C6 FF FF */	subi r6, r6, 0x1
/* 814CBC2C | 48 00 00 20 */	b .L_814CBC4C
.L_814CBC30:
/* 814CBC30 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814CBC34 | 7C E3 07 34 */	extsh r3, r7
/* 814CBC38 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814CBC3C | 7C 86 00 AE */	lbzx r4, r6, r0
/* 814CBC40 | 7C 1F 02 14 */	add r0, r31, r0
/* 814CBC44 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814CBC48 | 7C 83 01 AE */	stbx r4, r3, r0
.L_814CBC4C:
/* 814CBC4C | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 814CBC50 | 7C E4 07 34 */	extsh r4, r7
/* 814CBC54 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CBC58 | 7C 04 00 00 */	cmpw r4, r0
/* 814CBC5C | 41 80 FF D4 */	blt .L_814CBC30
/* 814CBC60 | 48 00 01 A4 */	b .L_814CBE04
.L_814CBC64:
/* 814CBC64 | 40 81 01 A0 */	ble .L_814CBE04
/* 814CBC68 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 814CBC6C | 7C 04 00 50 */	subf r0, r4, r0
/* 814CBC70 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814CBC74 | 38 E3 00 01 */	addi r7, r3, 0x1
/* 814CBC78 | 7C E6 07 34 */	extsh r6, r7
/* 814CBC7C | 2C 86 00 00 */	cmpwi cr1, r6, 0x0
/* 814CBC80 | 41 84 01 84 */	blt cr1, .L_814CBE04
/* 814CBC84 | 39 06 00 01 */	addi r8, r6, 0x1
/* 814CBC88 | 7D 03 07 34 */	extsh r3, r8
/* 814CBC8C | 2C 03 00 08 */	cmpwi r3, 0x8
/* 814CBC90 | 40 81 01 3C */	ble .L_814CBDCC
/* 814CBC94 | 38 80 00 00 */	li r4, 0x0
/* 814CBC98 | 38 60 00 00 */	li r3, 0x0
/* 814CBC9C | 41 84 00 10 */	blt cr1, .L_814CBCAC
/* 814CBCA0 | 2C 06 80 01 */	cmpwi r6, -0x7fff
/* 814CBCA4 | 41 80 00 08 */	blt .L_814CBCAC
/* 814CBCA8 | 38 60 00 01 */	li r3, 0x1
.L_814CBCAC:
/* 814CBCAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CBCB0 | 41 82 00 34 */	beq .L_814CBCE4
/* 814CBCB4 | 7C E3 07 34 */	extsh r3, r7
/* 814CBCB8 | 38 E0 00 01 */	li r7, 0x1
/* 814CBCBC | 54 63 00 20 */	clrrwi r3, r3, 15
/* 814CBCC0 | 7C 63 07 35 */	extsh. r3, r3
/* 814CBCC4 | 40 82 00 14 */	bne .L_814CBCD8
/* 814CBCC8 | 55 03 00 20 */	clrrwi r3, r8, 15
/* 814CBCCC | 7C 63 07 35 */	extsh. r3, r3
/* 814CBCD0 | 41 82 00 08 */	beq .L_814CBCD8
/* 814CBCD4 | 38 E0 00 00 */	li r7, 0x0
.L_814CBCD8:
/* 814CBCD8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814CBCDC | 41 82 00 08 */	beq .L_814CBCE4
/* 814CBCE0 | 38 80 00 01 */	li r4, 0x1
.L_814CBCE4:
/* 814CBCE4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CBCE8 | 41 82 00 E4 */	beq .L_814CBDCC
/* 814CBCEC | 7C 9F 02 14 */	add r4, r31, r0
/* 814CBCF0 | 54 C3 E8 FE */	srwi r3, r6, 3
/* 814CBCF4 | 7C 86 22 14 */	add r4, r6, r4
/* 814CBCF8 | 7C 69 03 A6 */	mtctr r3
/* 814CBCFC | 2C 06 00 08 */	cmpwi r6, 0x8
/* 814CBD00 | 41 80 00 CC */	blt .L_814CBDCC
.L_814CBD04:
/* 814CBD04 | A1 01 00 0C */	lhz r8, 0xc(r1)
/* 814CBD08 | 7C C3 07 34 */	extsh r3, r6
/* 814CBD0C | 38 C6 FF F8 */	subi r6, r6, 0x8
/* 814CBD10 | 7C FF 42 14 */	add r7, r31, r8
/* 814CBD14 | 7C E3 38 AE */	lbzx r7, r3, r7
/* 814CBD18 | 7C E4 41 AE */	stbx r7, r4, r8
/* 814CBD1C | A0 E1 00 0C */	lhz r7, 0xc(r1)
/* 814CBD20 | 7D 1F 3A 14 */	add r8, r31, r7
/* 814CBD24 | 7C E4 3A 14 */	add r7, r4, r7
/* 814CBD28 | 7D 03 42 14 */	add r8, r3, r8
/* 814CBD2C | 89 08 FF FF */	lbz r8, -0x1(r8)
/* 814CBD30 | 99 07 FF FF */	stb r8, -0x1(r7)
/* 814CBD34 | A0 E1 00 0C */	lhz r7, 0xc(r1)
/* 814CBD38 | 7D 1F 3A 14 */	add r8, r31, r7
/* 814CBD3C | 7C E4 3A 14 */	add r7, r4, r7
/* 814CBD40 | 7D 03 42 14 */	add r8, r3, r8
/* 814CBD44 | 89 08 FF FE */	lbz r8, -0x2(r8)
/* 814CBD48 | 99 07 FF FE */	stb r8, -0x2(r7)
/* 814CBD4C | A0 E1 00 0C */	lhz r7, 0xc(r1)
/* 814CBD50 | 7D 1F 3A 14 */	add r8, r31, r7
/* 814CBD54 | 7C E4 3A 14 */	add r7, r4, r7
/* 814CBD58 | 7D 03 42 14 */	add r8, r3, r8
/* 814CBD5C | 89 08 FF FD */	lbz r8, -0x3(r8)
/* 814CBD60 | 99 07 FF FD */	stb r8, -0x3(r7)
/* 814CBD64 | A0 E1 00 0C */	lhz r7, 0xc(r1)
/* 814CBD68 | 7D 1F 3A 14 */	add r8, r31, r7
/* 814CBD6C | 7C E4 3A 14 */	add r7, r4, r7
/* 814CBD70 | 7D 03 42 14 */	add r8, r3, r8
/* 814CBD74 | 89 08 FF FC */	lbz r8, -0x4(r8)
/* 814CBD78 | 99 07 FF FC */	stb r8, -0x4(r7)
/* 814CBD7C | A0 E1 00 0C */	lhz r7, 0xc(r1)
/* 814CBD80 | 7D 1F 3A 14 */	add r8, r31, r7
/* 814CBD84 | 7C E4 3A 14 */	add r7, r4, r7
/* 814CBD88 | 7D 03 42 14 */	add r8, r3, r8
/* 814CBD8C | 89 08 FF FB */	lbz r8, -0x5(r8)
/* 814CBD90 | 99 07 FF FB */	stb r8, -0x5(r7)
/* 814CBD94 | A0 E1 00 0C */	lhz r7, 0xc(r1)
/* 814CBD98 | 7D 1F 3A 14 */	add r8, r31, r7
/* 814CBD9C | 7C E4 3A 14 */	add r7, r4, r7
/* 814CBDA0 | 7D 03 42 14 */	add r8, r3, r8
/* 814CBDA4 | 89 08 FF FA */	lbz r8, -0x6(r8)
/* 814CBDA8 | 99 07 FF FA */	stb r8, -0x6(r7)
/* 814CBDAC | A0 E1 00 0C */	lhz r7, 0xc(r1)
/* 814CBDB0 | 7D 1F 3A 14 */	add r8, r31, r7
/* 814CBDB4 | 7C E4 3A 14 */	add r7, r4, r7
/* 814CBDB8 | 7C 63 42 14 */	add r3, r3, r8
/* 814CBDBC | 38 84 FF F8 */	subi r4, r4, 0x8
/* 814CBDC0 | 88 63 FF F9 */	lbz r3, -0x7(r3)
/* 814CBDC4 | 98 67 FF F9 */	stb r3, -0x7(r7)
/* 814CBDC8 | 42 00 FF 3C */	bdnz .L_814CBD04
.L_814CBDCC:
/* 814CBDCC | 7C C4 07 35 */	extsh. r4, r6
/* 814CBDD0 | 7C 7F 02 14 */	add r3, r31, r0
/* 814CBDD4 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814CBDD8 | 7C E4 1A 14 */	add r7, r4, r3
/* 814CBDDC | 7C 09 03 A6 */	mtctr r0
/* 814CBDE0 | 41 80 00 24 */	blt .L_814CBE04
.L_814CBDE4:
/* 814CBDE4 | A0 81 00 0C */	lhz r4, 0xc(r1)
/* 814CBDE8 | 7C C3 07 34 */	extsh r3, r6
/* 814CBDEC | 38 C6 FF FF */	subi r6, r6, 0x1
/* 814CBDF0 | 7C 1F 22 14 */	add r0, r31, r4
/* 814CBDF4 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 814CBDF8 | 7C 07 21 AE */	stbx r0, r7, r4
/* 814CBDFC | 38 E7 FF FF */	subi r7, r7, 0x1
/* 814CBE00 | 42 00 FF E4 */	bdnz .L_814CBDE4
.L_814CBE04:
/* 814CBE04 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814CBE08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CBE0C | 41 82 00 54 */	beq .L_814CBE60
/* 814CBE10 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CBE14 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CBE18 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814CBE1C | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814CBE20 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814CBE24 | 41 82 00 24 */	beq .L_814CBE48
/* 814CBE28 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 814CBE2C | 38 60 00 7E */	li r3, 0x7e
/* 814CBE30 | 7C 7F 01 AE */	stbx r3, r31, r0
/* 814CBE34 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814CBE38 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 814CBE3C | 38 60 00 31 */	li r3, 0x31
/* 814CBE40 | 7C 7F 01 AE */	stbx r3, r31, r0
/* 814CBE44 | 48 00 00 1C */	b .L_814CBE60
.L_814CBE48:
/* 814CBE48 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 814CBE4C | 38 60 00 5F */	li r3, 0x5f
/* 814CBE50 | 7C 7F 01 AE */	stbx r3, r31, r0
/* 814CBE54 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814CBE58 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 814CBE5C | 7C 7F 01 AE */	stbx r3, r31, r0
.L_814CBE60:
/* 814CBE60 | 3A A0 00 01 */	li r21, 0x1
.L_814CBE64:
/* 814CBE64 | 7D C3 73 78 */	mr r3, r14
/* 814CBE68 | 4B FE 9D 9D */	bl VFiPFSTR_GetCodeMode
/* 814CBE6C | 28 03 00 02 */	cmplwi r3, 0x2
/* 814CBE70 | 40 82 00 8C */	bne .L_814CBEFC
/* 814CBE74 | 3A A0 00 01 */	li r21, 0x1
/* 814CBE78 | 48 00 00 84 */	b .L_814CBEFC
/* 814CBE7C | 48 00 00 20 */	b .L_814CBE9C
.L_814CBE80:
/* 814CBE80 | 7C 60 07 74 */	extsb r0, r3
/* 814CBE84 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CBE88 | 41 82 00 10 */	beq .L_814CBE98
/* 814CBE8C | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814CBE90 | 41 82 00 08 */	beq .L_814CBE98
/* 814CBE94 | 3A 80 00 01 */	li r20, 0x1
.L_814CBE98:
/* 814CBE98 | 3A D6 00 01 */	addi r22, r22, 0x1
.L_814CBE9C:
/* 814CBE9C | 88 76 00 00 */	lbz r3, 0x0(r22)
/* 814CBEA0 | 7C 60 07 75 */	extsb. r0, r3
/* 814CBEA4 | 41 82 00 0C */	beq .L_814CBEB0
/* 814CBEA8 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814CBEAC | 41 82 FF D4 */	beq .L_814CBE80
.L_814CBEB0:
/* 814CBEB0 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814CBEB4 | 41 82 00 3C */	beq .L_814CBEF0
/* 814CBEB8 | 38 60 00 30 */	li r3, 0x30
/* 814CBEBC | 38 A0 00 01 */	li r5, 0x1
/* 814CBEC0 | 38 80 00 02 */	li r4, 0x2
/* 814CBEC4 | 38 00 00 00 */	li r0, 0x0
/* 814CBEC8 | 98 BF 00 00 */	stb r5, 0x0(r31)
/* 814CBECC | 98 9F 00 01 */	stb r4, 0x1(r31)
/* 814CBED0 | 98 7F 00 02 */	stb r3, 0x2(r31)
/* 814CBED4 | 98 7F 00 03 */	stb r3, 0x3(r31)
/* 814CBED8 | 98 7F 00 04 */	stb r3, 0x4(r31)
/* 814CBEDC | 98 7F 00 05 */	stb r3, 0x5(r31)
/* 814CBEE0 | 98 7F 00 06 */	stb r3, 0x6(r31)
/* 814CBEE4 | 98 7F 00 07 */	stb r3, 0x7(r31)
/* 814CBEE8 | 98 1F 00 08 */	stb r0, 0x8(r31)
/* 814CBEEC | 48 00 00 0C */	b .L_814CBEF8
.L_814CBEF0:
/* 814CBEF0 | 38 00 00 00 */	li r0, 0x0
/* 814CBEF4 | 98 1F 00 00 */	stb r0, 0x0(r31)
.L_814CBEF8:
/* 814CBEF8 | 3A A0 00 01 */	li r21, 0x1
.L_814CBEFC:
/* 814CBEFC | 39 61 02 60 */	addi r11, r1, 0x260
/* 814CBF00 | 7E A3 AB 78 */	mr r3, r21
/* 814CBF04 | 48 12 D5 D5 */	bl _restgpr_14
/* 814CBF08 | 80 01 02 64 */	lwz r0, 0x264(r1)
/* 814CBF0C | 7C 08 03 A6 */	mtlr r0
/* 814CBF10 | 38 21 02 60 */	addi r1, r1, 0x260
/* 814CBF14 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_parseShortName

# .text:0x20F4 | 0x814CBF18 | size: 0x1DC
.fn VFiPFPATH_parseShortNameNumeric, global
/* 814CBF18 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CBF1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CBF20 | 40 82 00 0C */	bne .L_814CBF2C
/* 814CBF24 | 38 60 00 00 */	li r3, 0x0
/* 814CBF28 | 48 00 01 C4 */	b .L_814CC0EC
.L_814CBF2C:
/* 814CBF2C | 38 C3 00 01 */	addi r6, r3, 0x1
/* 814CBF30 | 38 A0 00 01 */	li r5, 0x1
/* 814CBF34 | 48 00 00 0C */	b .L_814CBF40
.L_814CBF38:
/* 814CBF38 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814CBF3C | 38 C6 00 01 */	addi r6, r6, 0x1
.L_814CBF40:
/* 814CBF40 | 88 06 00 00 */	lbz r0, 0x0(r6)
/* 814CBF44 | 2C 00 00 7E */	cmpwi r0, 0x7e
/* 814CBF48 | 40 82 FF F0 */	bne .L_814CBF38
/* 814CBF4C | 38 C5 00 01 */	addi r6, r5, 0x1
/* 814CBF50 | 7C E3 32 14 */	add r7, r3, r6
/* 814CBF54 | 48 00 00 0C */	b .L_814CBF60
.L_814CBF58:
/* 814CBF58 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814CBF5C | 38 E7 00 01 */	addi r7, r7, 0x1
.L_814CBF60:
/* 814CBF60 | 89 07 00 00 */	lbz r8, 0x0(r7)
/* 814CBF64 | 7D 00 07 74 */	extsb r0, r8
/* 814CBF68 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CBF6C | 41 82 00 0C */	beq .L_814CBF78
/* 814CBF70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CBF74 | 40 82 FF E4 */	bne .L_814CBF58
.L_814CBF78:
/* 814CBF78 | 7D 00 07 74 */	extsb r0, r8
/* 814CBF7C | 39 66 00 01 */	addi r11, r6, 0x1
/* 814CBF80 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814CBF84 | 40 82 00 34 */	bne .L_814CBFB8
/* 814CBF88 | 7C 03 58 AE */	lbzx r0, r3, r11
/* 814CBF8C | 7C 00 07 75 */	extsb. r0, r0
/* 814CBF90 | 41 82 00 28 */	beq .L_814CBFB8
/* 814CBF94 | 39 8B 00 01 */	addi r12, r11, 0x1
/* 814CBF98 | 7C E3 62 14 */	add r7, r3, r12
/* 814CBF9C | 48 00 00 0C */	b .L_814CBFA8
.L_814CBFA0:
/* 814CBFA0 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 814CBFA4 | 38 E7 00 01 */	addi r7, r7, 0x1
.L_814CBFA8:
/* 814CBFA8 | 88 07 00 00 */	lbz r0, 0x0(r7)
/* 814CBFAC | 7C 00 07 75 */	extsb. r0, r0
/* 814CBFB0 | 40 82 FF F0 */	bne .L_814CBFA0
/* 814CBFB4 | 48 00 00 08 */	b .L_814CBFBC
.L_814CBFB8:
/* 814CBFB8 | 7D 6C 5B 78 */	mr r12, r11
.L_814CBFBC:
/* 814CBFBC | 3C E0 CC CD */	lis r7, 0xcccd
/* 814CBFC0 | 39 21 00 08 */	addi r9, r1, 0x8
/* 814CBFC4 | 39 07 CC CD */	subi r8, r7, 0x3333
/* 814CBFC8 | 39 40 00 00 */	li r10, 0x0
/* 814CBFCC | 48 00 00 2C */	b .L_814CBFF8
.L_814CBFD0:
/* 814CBFD0 | 7C E8 20 16 */	mulhwu r7, r8, r4
/* 814CBFD4 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814CBFD8 | 7C E0 3B 78 */	mr r0, r7
/* 814CBFDC | 54 E7 E8 FE */	srwi r7, r7, 3
/* 814CBFE0 | 1C E7 00 0A */	mulli r7, r7, 0xa
/* 814CBFE4 | 7C E7 20 50 */	subf r7, r7, r4
/* 814CBFE8 | 54 04 E8 FE */	srwi r4, r0, 3
/* 814CBFEC | 38 07 00 30 */	addi r0, r7, 0x30
/* 814CBFF0 | 98 09 00 00 */	stb r0, 0x0(r9)
/* 814CBFF4 | 39 29 00 01 */	addi r9, r9, 0x1
.L_814CBFF8:
/* 814CBFF8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CBFFC | 40 82 FF D4 */	bne .L_814CBFD0
/* 814CC000 | 7D 05 52 14 */	add r8, r5, r10
/* 814CC004 | 7C 08 58 40 */	cmplw r8, r11
/* 814CC008 | 41 80 00 44 */	blt .L_814CC04C
/* 814CC00C | 39 28 00 01 */	addi r9, r8, 0x1
/* 814CC010 | 28 09 00 08 */	cmplwi r9, 0x8
/* 814CC014 | 40 81 00 08 */	ble .L_814CC01C
/* 814CC018 | 39 20 00 08 */	li r9, 0x8
.L_814CC01C:
/* 814CC01C | 7C 03 60 AE */	lbzx r0, r3, r12
/* 814CC020 | 7C E3 4A 14 */	add r7, r3, r9
/* 814CC024 | 7C 83 5A 14 */	add r4, r3, r11
/* 814CC028 | 98 07 00 04 */	stb r0, 0x4(r7)
/* 814CC02C | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 814CC030 | 98 07 00 03 */	stb r0, 0x3(r7)
/* 814CC034 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814CC038 | 98 07 00 02 */	stb r0, 0x2(r7)
/* 814CC03C | 7C 03 58 AE */	lbzx r0, r3, r11
/* 814CC040 | 98 07 00 01 */	stb r0, 0x1(r7)
/* 814CC044 | 7C 03 30 AE */	lbzx r0, r3, r6
/* 814CC048 | 7C 03 49 AE */	stbx r0, r3, r9
.L_814CC04C:
/* 814CC04C | 28 08 00 08 */	cmplwi r8, 0x8
/* 814CC050 | 41 80 00 08 */	blt .L_814CC058
/* 814CC054 | 20 AA 00 07 */	subfic r5, r10, 0x7
.L_814CC058:
/* 814CC058 | 38 00 00 7E */	li r0, 0x7e
/* 814CC05C | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814CC060 | 7C 03 29 AE */	stbx r0, r3, r5
/* 814CC064 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CC068 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814CC06C | 7C 84 52 14 */	add r4, r4, r10
/* 814CC070 | 7C 63 2A 14 */	add r3, r3, r5
/* 814CC074 | 41 82 00 74 */	beq .L_814CC0E8
/* 814CC078 | 55 40 E8 FF */	srwi. r0, r10, 3
/* 814CC07C | 7C 09 03 A6 */	mtctr r0
/* 814CC080 | 41 82 00 54 */	beq .L_814CC0D4
.L_814CC084:
/* 814CC084 | 88 04 FF FF */	lbz r0, -0x1(r4)
/* 814CC088 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814CC08C | 88 04 FF FE */	lbz r0, -0x2(r4)
/* 814CC090 | 98 03 00 01 */	stb r0, 0x1(r3)
/* 814CC094 | 88 04 FF FD */	lbz r0, -0x3(r4)
/* 814CC098 | 98 03 00 02 */	stb r0, 0x2(r3)
/* 814CC09C | 88 04 FF FC */	lbz r0, -0x4(r4)
/* 814CC0A0 | 98 03 00 03 */	stb r0, 0x3(r3)
/* 814CC0A4 | 88 04 FF FB */	lbz r0, -0x5(r4)
/* 814CC0A8 | 98 03 00 04 */	stb r0, 0x4(r3)
/* 814CC0AC | 88 04 FF FA */	lbz r0, -0x6(r4)
/* 814CC0B0 | 98 03 00 05 */	stb r0, 0x5(r3)
/* 814CC0B4 | 88 04 FF F9 */	lbz r0, -0x7(r4)
/* 814CC0B8 | 98 03 00 06 */	stb r0, 0x6(r3)
/* 814CC0BC | 8C 04 FF F8 */	lbzu r0, -0x8(r4)
/* 814CC0C0 | 98 03 00 07 */	stb r0, 0x7(r3)
/* 814CC0C4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CC0C8 | 42 00 FF BC */	bdnz .L_814CC084
/* 814CC0CC | 71 4A 00 07 */	andi. r10, r10, 0x7
/* 814CC0D0 | 41 82 00 18 */	beq .L_814CC0E8
.L_814CC0D4:
/* 814CC0D4 | 7D 49 03 A6 */	mtctr r10
.L_814CC0D8:
/* 814CC0D8 | 8C 04 FF FF */	lbzu r0, -0x1(r4)
/* 814CC0DC | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814CC0E0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814CC0E4 | 42 00 FF F4 */	bdnz .L_814CC0D8
.L_814CC0E8:
/* 814CC0E8 | 38 60 00 00 */	li r3, 0x0
.L_814CC0EC:
/* 814CC0EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CC0F0 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_parseShortNameNumeric

# .text:0x22D0 | 0x814CC0F4 | size: 0x114
.fn VFiPFPATH_SetSearchPattern, global
/* 814CC0F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CC0F8 | 7C 08 02 A6 */	mflr r0
/* 814CC0FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CC100 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CC104 | 7C BF 2B 78 */	mr r31, r5
/* 814CC108 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CC10C | 7C 9E 23 78 */	mr r30, r4
/* 814CC110 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814CC114 | 7C 7D 1B 78 */	mr r29, r3
/* 814CC118 | 7F E3 FB 78 */	mr r3, r31
/* 814CC11C | 4B FE 9A E9 */	bl VFiPFSTR_GetCodeMode
/* 814CC120 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CC124 | 40 82 00 38 */	bne .L_814CC15C
/* 814CC128 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814CC12C | 38 8D 9D 04 */	li r4, lbl_81697D44@sda21
/* 814CC130 | 4B FE 99 15 */	bl VFipf_strcmp
/* 814CC134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC138 | 40 82 00 14 */	bne .L_814CC14C
/* 814CC13C | 7F A3 EB 78 */	mr r3, r29
/* 814CC140 | 38 8D 9C FC */	li r4, lbl_81697D3C@sda21
/* 814CC144 | 4B FE 98 DD */	bl VFipf_strcpy
/* 814CC148 | 48 00 00 A4 */	b .L_814CC1EC
.L_814CC14C:
/* 814CC14C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814CC150 | 7F A3 EB 78 */	mr r3, r29
/* 814CC154 | 4B FE 98 CD */	bl VFipf_strcpy
/* 814CC158 | 48 00 00 94 */	b .L_814CC1EC
.L_814CC15C:
/* 814CC15C | 7F E3 FB 78 */	mr r3, r31
/* 814CC160 | 38 8D 9D 04 */	li r4, lbl_81697D44@sda21
/* 814CC164 | 4B FE 9D 41 */	bl VFiPFSTR_StrCmp
/* 814CC168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC16C | 40 82 00 24 */	bne .L_814CC190
/* 814CC170 | 38 60 00 2A */	li r3, 0x2a
/* 814CC174 | 38 00 00 00 */	li r0, 0x0
/* 814CC178 | B0 61 00 08 */	sth r3, 0x8(r1)
/* 814CC17C | 7F C3 F3 78 */	mr r3, r30
/* 814CC180 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CC184 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814CC188 | 4B FE 9F CD */	bl VFipf_w_strcpy
/* 814CC18C | 48 00 00 10 */	b .L_814CC19C
.L_814CC190:
/* 814CC190 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814CC194 | 7F C3 F3 78 */	mr r3, r30
/* 814CC198 | 4B FE 9F BD */	bl VFipf_w_strcpy
.L_814CC19C:
/* 814CC19C | 3F E0 81 0D */	lis r31, VFipf_vol_set_810CD7F0@ha
/* 814CC1A0 | 3B FF D7 F0 */	addi r31, r31, VFipf_vol_set_810CD7F0@l
/* 814CC1A4 | 80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 814CC1A8 | 54 60 07 BC */	rlwinm r0, r3, 0, 30, 30
/* 814CC1AC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814CC1B0 | 40 82 00 30 */	bne .L_814CC1E0
/* 814CC1B4 | 54 60 00 3A */	clrrwi r0, r3, 2
/* 814CC1B8 | 7F A3 EB 78 */	mr r3, r29
/* 814CC1BC | 60 00 00 01 */	ori r0, r0, 0x1
/* 814CC1C0 | 7F C4 F3 78 */	mr r4, r30
/* 814CC1C4 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 814CC1C8 | 4B FF F4 15 */	bl VFiPFPATH_transformFromUnicodeToNormal
/* 814CC1CC | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 814CC1D0 | 54 00 00 3A */	clrrwi r0, r0, 2
/* 814CC1D4 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814CC1D8 | 90 1F 00 3C */	stw r0, 0x3c(r31)
/* 814CC1DC | 48 00 00 10 */	b .L_814CC1EC
.L_814CC1E0:
/* 814CC1E0 | 7F A3 EB 78 */	mr r3, r29
/* 814CC1E4 | 7F C4 F3 78 */	mr r4, r30
/* 814CC1E8 | 4B FF F3 F5 */	bl VFiPFPATH_transformFromUnicodeToNormal
.L_814CC1EC:
/* 814CC1EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CC1F0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CC1F4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CC1F8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814CC1FC | 7C 08 03 A6 */	mtlr r0
/* 814CC200 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CC204 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_SetSearchPattern

# .text:0x23E4 | 0x814CC208 | size: 0x6C
.fn VFiPFPATH_CheckExtShortNameSignature, global
/* 814CC208 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CC20C | 7C 08 02 A6 */	mflr r0
/* 814CC210 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC214 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CC218 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CC21C | 3B E0 00 00 */	li r31, 0x0
/* 814CC220 | 88 8D 9D 08 */	lbz r4, lbl_81697D48@sda21(r0)
/* 814CC224 | 88 0D 9D 09 */	lbz r0, lbl_81697D49@sda21(r0)
/* 814CC228 | 98 81 00 08 */	stb r4, 0x8(r1)
/* 814CC22C | 98 01 00 09 */	stb r0, 0x9(r1)
/* 814CC230 | 40 82 00 0C */	bne .L_814CC23C
/* 814CC234 | 38 60 00 0A */	li r3, 0xa
/* 814CC238 | 48 00 00 28 */	b .L_814CC260
.L_814CC23C:
/* 814CC23C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CC240 | 38 A0 00 01 */	li r5, 0x1
/* 814CC244 | 38 C0 00 00 */	li r6, 0x0
/* 814CC248 | 38 E0 00 02 */	li r7, 0x2
/* 814CC24C | 4B FE 9C FD */	bl VFiPFSTR_StrNCmp
/* 814CC250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC254 | 40 82 00 08 */	bne .L_814CC25C
/* 814CC258 | 3B E0 00 01 */	li r31, 0x1
.L_814CC25C:
/* 814CC25C | 7F E3 FB 78 */	mr r3, r31
.L_814CC260:
/* 814CC260 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CC264 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CC268 | 7C 08 03 A6 */	mtlr r0
/* 814CC26C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CC270 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_CheckExtShortNameSignature

# .text:0x2450 | 0x814CC274 | size: 0x324
.fn VFiPFPATH_CheckExtShortName, global
/* 814CC274 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CC278 | 7C 08 02 A6 */	mflr r0
/* 814CC27C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CC280 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CC284 | 48 12 D2 31 */	bl _savegpr_24
/* 814CC288 | 88 C2 8C 54 */	lbz r6, lbl_81695054@sda21(r0)
/* 814CC28C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC290 | 88 02 8C 55 */	lbz r0, lbl_81695055@sda21(r0)
/* 814CC294 | 7C 7E 1B 78 */	mr r30, r3
/* 814CC298 | 98 C1 00 08 */	stb r6, 0x8(r1)
/* 814CC29C | 7C 9F 23 78 */	mr r31, r4
/* 814CC2A0 | 7C B8 2B 78 */	mr r24, r5
/* 814CC2A4 | 3B 60 00 00 */	li r27, 0x0
/* 814CC2A8 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 814CC2AC | 3B 20 00 00 */	li r25, 0x0
/* 814CC2B0 | 40 82 00 0C */	bne .L_814CC2BC
/* 814CC2B4 | 38 60 00 0A */	li r3, 0xa
/* 814CC2B8 | 48 00 02 C8 */	b .L_814CC580
.L_814CC2BC:
/* 814CC2BC | 7F E5 FB 78 */	mr r5, r31
/* 814CC2C0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CC2C4 | 38 C0 00 00 */	li r6, 0x0
/* 814CC2C8 | 38 E0 00 02 */	li r7, 0x2
/* 814CC2CC | 4B FE 9C 7D */	bl VFiPFSTR_StrNCmp
/* 814CC2D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC2D4 | 41 82 00 84 */	beq .L_814CC358
/* 814CC2D8 | 7F C3 F3 78 */	mr r3, r30
/* 814CC2DC | 7F E5 FB 78 */	mr r5, r31
/* 814CC2E0 | 38 8D 9D 00 */	li r4, lbl_81697D40@sda21
/* 814CC2E4 | 38 C0 00 00 */	li r6, 0x0
/* 814CC2E8 | 38 E0 00 01 */	li r7, 0x1
/* 814CC2EC | 4B FE 9C 5D */	bl VFiPFSTR_StrNCmp
/* 814CC2F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC2F4 | 40 82 00 44 */	bne .L_814CC338
/* 814CC2F8 | 7F C3 F3 78 */	mr r3, r30
/* 814CC2FC | 7F E5 FB 78 */	mr r5, r31
/* 814CC300 | 38 8D 9D 00 */	li r4, lbl_81697D40@sda21
/* 814CC304 | 38 C0 00 01 */	li r6, 0x1
/* 814CC308 | 38 E0 00 01 */	li r7, 0x1
/* 814CC30C | 4B FE 9C 3D */	bl VFiPFSTR_StrNCmp
/* 814CC310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC314 | 41 82 00 44 */	beq .L_814CC358
/* 814CC318 | 7F C3 F3 78 */	mr r3, r30
/* 814CC31C | 7F E5 FB 78 */	mr r5, r31
/* 814CC320 | 38 8D 9C FC */	li r4, lbl_81697D3C@sda21
/* 814CC324 | 38 C0 00 00 */	li r6, 0x0
/* 814CC328 | 38 E0 00 01 */	li r7, 0x1
/* 814CC32C | 4B FE 9C 1D */	bl VFiPFSTR_StrNCmp
/* 814CC330 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC334 | 41 82 00 24 */	beq .L_814CC358
.L_814CC338:
/* 814CC338 | 7F C3 F3 78 */	mr r3, r30
/* 814CC33C | 7F E5 FB 78 */	mr r5, r31
/* 814CC340 | 38 8D 9C FC */	li r4, lbl_81697D3C@sda21
/* 814CC344 | 38 C0 00 00 */	li r6, 0x0
/* 814CC348 | 38 E0 00 01 */	li r7, 0x1
/* 814CC34C | 4B FE 9B FD */	bl VFiPFSTR_StrNCmp
/* 814CC350 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC354 | 40 82 02 28 */	bne .L_814CC57C
.L_814CC358:
/* 814CC358 | 3B 40 00 02 */	li r26, 0x2
/* 814CC35C | 3B 80 00 04 */	li r28, 0x4
/* 814CC360 | 48 00 00 DC */	b .L_814CC43C
.L_814CC364:
/* 814CC364 | 7F C3 F3 78 */	mr r3, r30
/* 814CC368 | 4B FE 98 9D */	bl VFiPFSTR_GetCodeMode
/* 814CC36C | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CC370 | 40 82 00 28 */	bne .L_814CC398
/* 814CC374 | 7F C3 F3 78 */	mr r3, r30
/* 814CC378 | 7F E4 FB 78 */	mr r4, r31
/* 814CC37C | 4B FE 98 91 */	bl VFiPFSTR_GetStrPos
/* 814CC380 | 7F 40 07 34 */	extsh r0, r26
/* 814CC384 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 814CC388 | 7C 03 07 74 */	extsb r3, r0
/* 814CC38C | 38 03 FF D0 */	subi r0, r3, 0x30
/* 814CC390 | 7C 00 07 34 */	extsh r0, r0
/* 814CC394 | 48 00 00 1C */	b .L_814CC3B0
.L_814CC398:
/* 814CC398 | 7F C3 F3 78 */	mr r3, r30
/* 814CC39C | 7F E4 FB 78 */	mr r4, r31
/* 814CC3A0 | 4B FE 98 6D */	bl VFiPFSTR_GetStrPos
/* 814CC3A4 | 7C 63 E2 2E */	lhzx r3, r3, r28
/* 814CC3A8 | 38 03 FF D0 */	subi r0, r3, 0x30
/* 814CC3AC | 7C 00 07 34 */	extsh r0, r0
.L_814CC3B0:
/* 814CC3B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CC3B4 | 41 80 00 0C */	blt .L_814CC3C0
/* 814CC3B8 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814CC3BC | 40 81 00 78 */	ble .L_814CC434
.L_814CC3C0:
/* 814CC3C0 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814CC3C4 | 41 82 01 10 */	beq .L_814CC4D4
/* 814CC3C8 | 7F C3 F3 78 */	mr r3, r30
/* 814CC3CC | 7F E5 FB 78 */	mr r5, r31
/* 814CC3D0 | 7F 46 07 34 */	extsh r6, r26
/* 814CC3D4 | 38 8D 9C FC */	li r4, lbl_81697D3C@sda21
/* 814CC3D8 | 38 E0 00 01 */	li r7, 0x1
/* 814CC3DC | 4B FE 9B 6D */	bl VFiPFSTR_StrNCmp
/* 814CC3E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC3E4 | 41 82 00 24 */	beq .L_814CC408
/* 814CC3E8 | 7F C3 F3 78 */	mr r3, r30
/* 814CC3EC | 7F E5 FB 78 */	mr r5, r31
/* 814CC3F0 | 7F 46 07 34 */	extsh r6, r26
/* 814CC3F4 | 38 8D 9D 00 */	li r4, lbl_81697D40@sda21
/* 814CC3F8 | 38 E0 00 01 */	li r7, 0x1
/* 814CC3FC | 4B FE 9B 4D */	bl VFiPFSTR_StrNCmp
/* 814CC400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC404 | 40 82 00 D0 */	bne .L_814CC4D4
.L_814CC408:
/* 814CC408 | 28 18 00 01 */	cmplwi r24, 0x1
/* 814CC40C | 40 82 00 28 */	bne .L_814CC434
/* 814CC410 | 7F C3 F3 78 */	mr r3, r30
/* 814CC414 | 7F E5 FB 78 */	mr r5, r31
/* 814CC418 | 7F 46 07 34 */	extsh r6, r26
/* 814CC41C | 38 8D 9C FC */	li r4, lbl_81697D3C@sda21
/* 814CC420 | 38 E0 00 01 */	li r7, 0x1
/* 814CC424 | 4B FE 9B 25 */	bl VFiPFSTR_StrNCmp
/* 814CC428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC42C | 40 82 00 08 */	bne .L_814CC434
/* 814CC430 | 3B 20 00 01 */	li r25, 0x1
.L_814CC434:
/* 814CC434 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 814CC438 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814CC43C:
/* 814CC43C | 7F 46 07 34 */	extsh r6, r26
/* 814CC440 | 2C 06 00 08 */	cmpwi r6, 0x8
/* 814CC444 | 40 80 00 90 */	bge .L_814CC4D4
/* 814CC448 | 7F C3 F3 78 */	mr r3, r30
/* 814CC44C | 7F E5 FB 78 */	mr r5, r31
/* 814CC450 | 3B A0 00 00 */	li r29, 0x0
/* 814CC454 | 38 8D 9C F4 */	li r4, lbl_81697D34@sda21
/* 814CC458 | 38 E0 00 01 */	li r7, 0x1
/* 814CC45C | 4B FE 9A ED */	bl VFiPFSTR_StrNCmp
/* 814CC460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC464 | 41 82 00 24 */	beq .L_814CC488
/* 814CC468 | 7F C3 F3 78 */	mr r3, r30
/* 814CC46C | 7F E5 FB 78 */	mr r5, r31
/* 814CC470 | 7F 46 07 34 */	extsh r6, r26
/* 814CC474 | 38 8D 9C F8 */	li r4, lbl_81697D38@sda21
/* 814CC478 | 38 E0 00 01 */	li r7, 0x1
/* 814CC47C | 4B FE 9A CD */	bl VFiPFSTR_StrNCmp
/* 814CC480 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC484 | 40 82 00 08 */	bne .L_814CC48C
.L_814CC488:
/* 814CC488 | 3B A0 00 01 */	li r29, 0x1
.L_814CC48C:
/* 814CC48C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814CC490 | 40 82 00 44 */	bne .L_814CC4D4
/* 814CC494 | 7F C3 F3 78 */	mr r3, r30
/* 814CC498 | 7F E5 FB 78 */	mr r5, r31
/* 814CC49C | 7F 46 07 34 */	extsh r6, r26
/* 814CC4A0 | 38 8D 9D 0C */	li r4, lbl_81697D4C@sda21
/* 814CC4A4 | 38 E0 00 01 */	li r7, 0x1
/* 814CC4A8 | 4B FE 9A A1 */	bl VFiPFSTR_StrNCmp
/* 814CC4AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC4B0 | 41 82 00 24 */	beq .L_814CC4D4
/* 814CC4B4 | 7F C3 F3 78 */	mr r3, r30
/* 814CC4B8 | 7F E5 FB 78 */	mr r5, r31
/* 814CC4BC | 7F 46 07 34 */	extsh r6, r26
/* 814CC4C0 | 38 8D 9C E4 */	li r4, lbl_81697D24@sda21
/* 814CC4C4 | 38 E0 00 01 */	li r7, 0x1
/* 814CC4C8 | 4B FE 9A 81 */	bl VFiPFSTR_StrNCmp
/* 814CC4CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC4D0 | 40 82 FE 94 */	bne .L_814CC364
.L_814CC4D4:
/* 814CC4D4 | 7F 40 07 34 */	extsh r0, r26
/* 814CC4D8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814CC4DC | 41 82 00 0C */	beq .L_814CC4E8
/* 814CC4E0 | 28 19 00 01 */	cmplwi r25, 0x1
/* 814CC4E4 | 40 82 00 98 */	bne .L_814CC57C
.L_814CC4E8:
/* 814CC4E8 | 7F C3 F3 78 */	mr r3, r30
/* 814CC4EC | 7F E5 FB 78 */	mr r5, r31
/* 814CC4F0 | 7F 46 07 34 */	extsh r6, r26
/* 814CC4F4 | 38 8D 9D 0C */	li r4, lbl_81697D4C@sda21
/* 814CC4F8 | 38 E0 00 01 */	li r7, 0x1
/* 814CC4FC | 4B FE 9A 4D */	bl VFiPFSTR_StrNCmp
/* 814CC500 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC504 | 41 82 00 74 */	beq .L_814CC578
/* 814CC508 | 7F C3 F3 78 */	mr r3, r30
/* 814CC50C | 7F E5 FB 78 */	mr r5, r31
/* 814CC510 | 7F 46 07 34 */	extsh r6, r26
/* 814CC514 | 3B A0 00 00 */	li r29, 0x0
/* 814CC518 | 38 8D 9C F4 */	li r4, lbl_81697D34@sda21
/* 814CC51C | 38 E0 00 01 */	li r7, 0x1
/* 814CC520 | 4B FE 9A 29 */	bl VFiPFSTR_StrNCmp
/* 814CC524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC528 | 41 82 00 24 */	beq .L_814CC54C
/* 814CC52C | 7F C3 F3 78 */	mr r3, r30
/* 814CC530 | 7F E5 FB 78 */	mr r5, r31
/* 814CC534 | 7F 46 07 34 */	extsh r6, r26
/* 814CC538 | 38 8D 9C F8 */	li r4, lbl_81697D38@sda21
/* 814CC53C | 38 E0 00 01 */	li r7, 0x1
/* 814CC540 | 4B FE 9A 09 */	bl VFiPFSTR_StrNCmp
/* 814CC544 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC548 | 40 82 00 08 */	bne .L_814CC550
.L_814CC54C:
/* 814CC54C | 3B A0 00 01 */	li r29, 0x1
.L_814CC550:
/* 814CC550 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814CC554 | 41 82 00 24 */	beq .L_814CC578
/* 814CC558 | 7F C3 F3 78 */	mr r3, r30
/* 814CC55C | 7F E5 FB 78 */	mr r5, r31
/* 814CC560 | 7F 46 07 34 */	extsh r6, r26
/* 814CC564 | 38 8D 9C E4 */	li r4, lbl_81697D24@sda21
/* 814CC568 | 38 E0 00 01 */	li r7, 0x1
/* 814CC56C | 4B FE 99 DD */	bl VFiPFSTR_StrNCmp
/* 814CC570 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC574 | 40 82 00 08 */	bne .L_814CC57C
.L_814CC578:
/* 814CC578 | 7F 5B 07 34 */	extsh r27, r26
.L_814CC57C:
/* 814CC57C | 7F 63 DB 78 */	mr r3, r27
.L_814CC580:
/* 814CC580 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CC584 | 48 12 CF 7D */	bl _restgpr_24
/* 814CC588 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CC58C | 7C 08 03 A6 */	mtlr r0
/* 814CC590 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CC594 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_CheckExtShortName

# .text:0x2774 | 0x814CC598 | size: 0x1A4
.fn VFiPFPATH_GetExtShortNameIndex, global
/* 814CC598 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CC59C | 7C 08 02 A6 */	mflr r0
/* 814CC5A0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CC5A4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CC5A8 | 48 12 CF 15 */	bl _savegpr_26
/* 814CC5AC | 88 A2 8C 58 */	lbz r5, lbl_81695058@sda21(r0)
/* 814CC5B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC5B4 | 88 02 8C 59 */	lbz r0, lbl_81695059@sda21(r0)
/* 814CC5B8 | 7C 7A 1B 78 */	mr r26, r3
/* 814CC5BC | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 814CC5C0 | 7C 9B 23 78 */	mr r27, r4
/* 814CC5C4 | 3B C0 00 00 */	li r30, 0x0
/* 814CC5C8 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 814CC5CC | 41 82 00 0C */	beq .L_814CC5D8
/* 814CC5D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CC5D4 | 40 82 00 0C */	bne .L_814CC5E0
.L_814CC5D8:
/* 814CC5D8 | 38 60 00 0A */	li r3, 0xa
/* 814CC5DC | 48 00 01 48 */	b .L_814CC724
.L_814CC5E0:
/* 814CC5E0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CC5E4 | 38 A0 00 01 */	li r5, 0x1
/* 814CC5E8 | 38 C0 00 00 */	li r6, 0x0
/* 814CC5EC | 38 E0 00 02 */	li r7, 0x2
/* 814CC5F0 | 4B FE 99 59 */	bl VFiPFSTR_StrNCmp
/* 814CC5F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC5F8 | 40 82 01 28 */	bne .L_814CC720
/* 814CC5FC | 3B 80 00 00 */	li r28, 0x0
/* 814CC600 | 3B A0 00 02 */	li r29, 0x2
/* 814CC604 | 3B E0 00 04 */	li r31, 0x4
/* 814CC608 | 48 00 00 70 */	b .L_814CC678
.L_814CC60C:
/* 814CC60C | 7F 43 D3 78 */	mr r3, r26
/* 814CC610 | 4B FE 95 F5 */	bl VFiPFSTR_GetCodeMode
/* 814CC614 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814CC618 | 40 82 00 28 */	bne .L_814CC640
/* 814CC61C | 7F 43 D3 78 */	mr r3, r26
/* 814CC620 | 38 80 00 01 */	li r4, 0x1
/* 814CC624 | 4B FE 95 E9 */	bl VFiPFSTR_GetStrPos
/* 814CC628 | 7F A0 07 34 */	extsh r0, r29
/* 814CC62C | 7C 03 00 AE */	lbzx r0, r3, r0
/* 814CC630 | 7C 03 07 74 */	extsb r3, r0
/* 814CC634 | 38 03 FF D0 */	subi r0, r3, 0x30
/* 814CC638 | 7C 00 07 34 */	extsh r0, r0
/* 814CC63C | 48 00 00 1C */	b .L_814CC658
.L_814CC640:
/* 814CC640 | 7F 43 D3 78 */	mr r3, r26
/* 814CC644 | 38 80 00 01 */	li r4, 0x1
/* 814CC648 | 4B FE 95 C5 */	bl VFiPFSTR_GetStrPos
/* 814CC64C | 7C 63 FA 2E */	lhzx r3, r3, r31
/* 814CC650 | 38 03 FF D0 */	subi r0, r3, 0x30
/* 814CC654 | 7C 00 07 34 */	extsh r0, r0
.L_814CC658:
/* 814CC658 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CC65C | 41 80 00 44 */	blt .L_814CC6A0
/* 814CC660 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814CC664 | 41 81 00 3C */	bgt .L_814CC6A0
/* 814CC668 | 1F 9C 00 0A */	mulli r28, r28, 0xa
/* 814CC66C | 3B FF 00 02 */	addi r31, r31, 0x2
/* 814CC670 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814CC674 | 7F 9C 02 14 */	add r28, r28, r0
.L_814CC678:
/* 814CC678 | 7F A6 07 34 */	extsh r6, r29
/* 814CC67C | 2C 06 00 08 */	cmpwi r6, 0x8
/* 814CC680 | 41 80 FF 8C */	blt .L_814CC60C
/* 814CC684 | 7F 43 D3 78 */	mr r3, r26
/* 814CC688 | 38 8D 9C E4 */	li r4, lbl_81697D24@sda21
/* 814CC68C | 38 A0 00 01 */	li r5, 0x1
/* 814CC690 | 38 E0 00 01 */	li r7, 0x1
/* 814CC694 | 4B FE 98 B5 */	bl VFiPFSTR_StrNCmp
/* 814CC698 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC69C | 40 82 FF 70 */	bne .L_814CC60C
.L_814CC6A0:
/* 814CC6A0 | 7F A6 07 34 */	extsh r6, r29
/* 814CC6A4 | 2C 06 00 08 */	cmpwi r6, 0x8
/* 814CC6A8 | 40 82 00 78 */	bne .L_814CC720
/* 814CC6AC | 7F 43 D3 78 */	mr r3, r26
/* 814CC6B0 | 3B E0 00 00 */	li r31, 0x0
/* 814CC6B4 | 38 8D 9C F4 */	li r4, lbl_81697D34@sda21
/* 814CC6B8 | 38 A0 00 01 */	li r5, 0x1
/* 814CC6BC | 38 E0 00 01 */	li r7, 0x1
/* 814CC6C0 | 4B FE 98 89 */	bl VFiPFSTR_StrNCmp
/* 814CC6C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC6C8 | 41 82 00 24 */	beq .L_814CC6EC
/* 814CC6CC | 7F 43 D3 78 */	mr r3, r26
/* 814CC6D0 | 7F A6 07 34 */	extsh r6, r29
/* 814CC6D4 | 38 8D 9C F8 */	li r4, lbl_81697D38@sda21
/* 814CC6D8 | 38 A0 00 01 */	li r5, 0x1
/* 814CC6DC | 38 E0 00 01 */	li r7, 0x1
/* 814CC6E0 | 4B FE 98 69 */	bl VFiPFSTR_StrNCmp
/* 814CC6E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC6E8 | 40 82 00 08 */	bne .L_814CC6F0
.L_814CC6EC:
/* 814CC6EC | 3B E0 00 01 */	li r31, 0x1
.L_814CC6F0:
/* 814CC6F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CC6F4 | 41 82 00 24 */	beq .L_814CC718
/* 814CC6F8 | 7F 43 D3 78 */	mr r3, r26
/* 814CC6FC | 7F A6 07 34 */	extsh r6, r29
/* 814CC700 | 38 80 00 00 */	li r4, 0x0
/* 814CC704 | 38 A0 00 01 */	li r5, 0x1
/* 814CC708 | 38 E0 00 01 */	li r7, 0x1
/* 814CC70C | 4B FE 98 3D */	bl VFiPFSTR_StrNCmp
/* 814CC710 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC714 | 40 82 00 0C */	bne .L_814CC720
.L_814CC718:
/* 814CC718 | 93 9B 00 00 */	stw r28, 0x0(r27)
/* 814CC71C | 3B C0 00 01 */	li r30, 0x1
.L_814CC720:
/* 814CC720 | 7F C3 F3 78 */	mr r3, r30
.L_814CC724:
/* 814CC724 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CC728 | 48 12 CD E1 */	bl _restgpr_26
/* 814CC72C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CC730 | 7C 08 03 A6 */	mtlr r0
/* 814CC734 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CC738 | 4E 80 00 20 */	blr
.endfn VFiPFPATH_GetExtShortNameIndex

# .text:0x2918 | 0x814CC73C | size: 0x74
.fn VFiPFPATH_AdjustExtShortName, global
/* 814CC73C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CC740 | 40 82 00 0C */	bne .L_814CC74C
/* 814CC744 | 38 60 00 0A */	li r3, 0xa
/* 814CC748 | 4E 80 00 20 */	blr
.L_814CC74C:
/* 814CC74C | 38 63 00 07 */	addi r3, r3, 0x7
/* 814CC750 | 38 C0 00 07 */	li r6, 0x7
/* 814CC754 | 38 E0 00 0A */	li r7, 0xa
/* 814CC758 | 39 00 00 01 */	li r8, 0x1
/* 814CC75C | 48 00 00 3C */	b .L_814CC798
.L_814CC760:
/* 814CC760 | 7C 04 3B 96 */	divwu r0, r4, r7
/* 814CC764 | 7C 00 39 D6 */	mullw r0, r0, r7
/* 814CC768 | 7C 00 20 51 */	subf. r0, r0, r4
/* 814CC76C | 41 82 00 1C */	beq .L_814CC788
/* 814CC770 | 7C 80 20 50 */	subf r4, r0, r4
/* 814CC774 | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 814CC778 | 7C 00 43 96 */	divwu r0, r0, r8
/* 814CC77C | 7C 00 07 74 */	extsb r0, r0
/* 814CC780 | 7C 05 02 14 */	add r0, r5, r0
/* 814CC784 | 98 03 00 00 */	stb r0, 0x0(r3)
.L_814CC788:
/* 814CC788 | 1C E7 00 0A */	mulli r7, r7, 0xa
/* 814CC78C | 38 C6 FF FF */	subi r6, r6, 0x1
/* 814CC790 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814CC794 | 1D 08 00 0A */	mulli r8, r8, 0xa
.L_814CC798:
/* 814CC798 | 28 06 00 01 */	cmplwi r6, 0x1
/* 814CC79C | 40 81 00 0C */	ble .L_814CC7A8
/* 814CC7A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CC7A4 | 40 82 FF BC */	bne .L_814CC760
.L_814CC7A8:
/* 814CC7A8 | 38 60 00 00 */	li r3, 0x0
/* 814CC7AC | 4E 80 00 20 */	blr
.endfn VFiPFPATH_AdjustExtShortName

# 0x81695050..0x81695060 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695050 | size: 0x1
.obj lbl_81695050, global
	.byte 0x01
.endobj lbl_81695050

# .sdata2:0x1 | 0x81695051 | size: 0x1
.obj lbl_81695051, global
	.byte 0x02
.endobj lbl_81695051

# .sdata2:0x2 | 0x81695052 | size: 0x2
.obj gap_09_81695052_sdata2, global
.hidden gap_09_81695052_sdata2
	.2byte 0x0000
.endobj gap_09_81695052_sdata2

# .sdata2:0x4 | 0x81695054 | size: 0x1
.obj lbl_81695054, global
	.byte 0x01
.endobj lbl_81695054

# .sdata2:0x5 | 0x81695055 | size: 0x1
.obj lbl_81695055, global
	.byte 0x02
.endobj lbl_81695055

# .sdata2:0x6 | 0x81695056 | size: 0x2
.obj gap_09_81695056_sdata2, global
.hidden gap_09_81695056_sdata2
	.2byte 0x0000
.endobj gap_09_81695056_sdata2

# .sdata2:0x8 | 0x81695058 | size: 0x1
.obj lbl_81695058, global
	.byte 0x01
.endobj lbl_81695058

# .sdata2:0x9 | 0x81695059 | size: 0x7
.obj lbl_81695059, global
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
.endobj lbl_81695059

# 0x81697D20..0x81697D50 | size: 0x30
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697D20 | size: 0x4
.obj lbl_81697D20, global
	.4byte 0x3A000000
.endobj lbl_81697D20

# .sdata:0x4 | 0x81697D24 | size: 0x4
.obj lbl_81697D24, global
	.4byte 0x00000000
.endobj lbl_81697D24

# .sdata:0x8 | 0x81697D28 | size: 0x4
.obj lbl_81697D28, global
	.4byte 0x2E000000
.endobj lbl_81697D28

# .sdata:0xC | 0x81697D2C | size: 0x4
.obj lbl_81697D2C, global
	.4byte 0x2E2E0000
.endobj lbl_81697D2C

# .sdata:0x10 | 0x81697D30 | size: 0x4
.obj lbl_81697D30, global
	.4byte 0x2A2E0000
.endobj lbl_81697D30

# .sdata:0x14 | 0x81697D34 | size: 0x4
.obj lbl_81697D34, global
	.4byte 0x5C000000
.endobj lbl_81697D34

# .sdata:0x18 | 0x81697D38 | size: 0x4
.obj lbl_81697D38, global
	.4byte 0x2F000000
.endobj lbl_81697D38

# .sdata:0x1C | 0x81697D3C | size: 0x4
.obj lbl_81697D3C, global
	.4byte 0x2A000000
.endobj lbl_81697D3C

# .sdata:0x20 | 0x81697D40 | size: 0x4
.obj lbl_81697D40, global
	.4byte 0x3F000000
.endobj lbl_81697D40

# .sdata:0x24 | 0x81697D44 | size: 0x4
.obj lbl_81697D44, global
	.string "*.*"
.endobj lbl_81697D44

# .sdata:0x28 | 0x81697D48 | size: 0x1
.obj lbl_81697D48, global
	.byte 0x01
.endobj lbl_81697D48

# .sdata:0x29 | 0x81697D49 | size: 0x1
.obj lbl_81697D49, global
	.byte 0x02
.endobj lbl_81697D49

# .sdata:0x2A | 0x81697D4A | size: 0x2
.obj gap_11_81697D4A_sdata, global
.hidden gap_11_81697D4A_sdata
	.2byte 0x0000
.endobj gap_11_81697D4A_sdata

# .sdata:0x2C | 0x81697D4C | size: 0x4
.obj lbl_81697D4C, global
	.4byte 0x20000000
.endobj lbl_81697D4C
