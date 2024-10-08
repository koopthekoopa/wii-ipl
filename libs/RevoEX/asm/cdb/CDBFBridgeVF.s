.include "macros.inc"
.file "CDBFBridgeVF.c"

# 0x81490F68..0x81491664 | size: 0x6FC
.text
.balign 4

# .text:0x0 | 0x81490F68 | size: 0x84
.fn CDBFCreateFileVF, global
/* 81490F68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490F6C | 7C 08 02 A6 */	mflr r0
/* 81490F70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490F74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81490F78 | 7C 7F 1B 78 */	mr r31, r3
/* 81490F7C | 7C 83 23 78 */	mr r3, r4
/* 81490F80 | 38 80 00 00 */	li r4, 0x0
/* 81490F84 | 48 03 F8 8D */	bl VFCreateFile
/* 81490F88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81490F8C | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81490F90 | 40 82 00 44 */	bne .L_81490FD4
/* 81490F94 | 48 04 04 29 */	bl VFGetLastError
/* 81490F98 | 2C 03 00 11 */	cmpwi r3, 0x11
/* 81490F9C | 7C 7F 1B 78 */	mr r31, r3
/* 81490FA0 | 40 82 00 0C */	bne .L_81490FAC
/* 81490FA4 | 38 60 00 1E */	li r3, 0x1e
/* 81490FA8 | 48 00 00 30 */	b .L_81490FD8
.L_81490FAC:
/* 81490FAC | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 81490FB0 | 40 82 00 0C */	bne .L_81490FBC
/* 81490FB4 | 38 60 00 17 */	li r3, 0x17
/* 81490FB8 | 48 00 00 20 */	b .L_81490FD8
.L_81490FBC:
/* 81490FBC | 4B FF EC 41 */	bl CDBSetFatalVFErrorFlag
/* 81490FC0 | 7F E3 FB 78 */	mr r3, r31
/* 81490FC4 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 81490FC8 | 38 A0 00 00 */	li r5, 0x0
/* 81490FCC | 4B FF EC 01 */	bl _CDBOnVFErrorOccured
/* 81490FD0 | 48 00 00 08 */	b .L_81490FD8
.L_81490FD4:
/* 81490FD4 | 38 60 00 00 */	li r3, 0x0
.L_81490FD8:
/* 81490FD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81490FDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81490FE0 | 7C 08 03 A6 */	mtlr r0
/* 81490FE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490FE8 | 4E 80 00 20 */	blr
.endfn CDBFCreateFileVF

# .text:0x84 | 0x81490FEC | size: 0x58
.fn CDBFDeleteFileVF, global
/* 81490FEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490FF0 | 7C 08 02 A6 */	mflr r0
/* 81490FF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490FF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81490FFC | 48 03 FB A9 */	bl VFDeleteFile
/* 81491000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491004 | 7C 7F 1B 78 */	mr r31, r3
/* 81491008 | 41 82 00 24 */	beq .L_8149102C
/* 8149100C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81491010 | 41 82 00 1C */	beq .L_8149102C
/* 81491014 | 4B FF EB E9 */	bl CDBSetFatalVFErrorFlag
/* 81491018 | 7F E3 FB 78 */	mr r3, r31
/* 8149101C | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 81491020 | 38 A0 00 00 */	li r5, 0x0
/* 81491024 | 4B FF EB A9 */	bl _CDBOnVFErrorOccured
/* 81491028 | 48 00 00 08 */	b .L_81491030
.L_8149102C:
/* 8149102C | 38 60 00 00 */	li r3, 0x0
.L_81491030:
/* 81491030 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491034 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491038 | 7C 08 03 A6 */	mtlr r0
/* 8149103C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491040 | 4E 80 00 20 */	blr
.endfn CDBFDeleteFileVF

# .text:0xDC | 0x81491044 | size: 0x5C
.fn CDBFCreateDirVF, global
/* 81491044 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81491048 | 7C 08 02 A6 */	mflr r0
/* 8149104C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491050 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81491054 | 4B FF A5 0D */	bl CDBFSCreateDirForceVF
/* 81491058 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149105C | 7C 7F 1B 78 */	mr r31, r3
/* 81491060 | 41 82 00 28 */	beq .L_81491088
/* 81491064 | 2C 03 00 0C */	cmpwi r3, 0xc
/* 81491068 | 40 82 00 24 */	bne .L_8149108C
/* 8149106C | 4B FF EB 91 */	bl CDBSetFatalVFErrorFlag
/* 81491070 | 7F E3 FB 78 */	mr r3, r31
/* 81491074 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 81491078 | 38 A0 00 00 */	li r5, 0x0
/* 8149107C | 4B FF EB 51 */	bl _CDBOnVFErrorOccured
/* 81491080 | 48 00 00 0C */	b .L_8149108C
/* 81491084 | 48 00 00 08 */	b .L_8149108C
.L_81491088:
/* 81491088 | 38 60 00 00 */	li r3, 0x0
.L_8149108C:
/* 8149108C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491090 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491094 | 7C 08 03 A6 */	mtlr r0
/* 81491098 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149109C | 4E 80 00 20 */	blr
.endfn CDBFCreateDirVF

# .text:0x138 | 0x814910A0 | size: 0x7C
.fn CDBFOpenVF, global
/* 814910A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814910A4 | 7C 08 02 A6 */	mflr r0
/* 814910A8 | 38 A0 00 00 */	li r5, 0x0
/* 814910AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814910B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814910B4 | 7C 7F 1B 78 */	mr r31, r3
/* 814910B8 | 7C 83 23 78 */	mr r3, r4
/* 814910BC | 38 8D 9A 2C */	li r4, lbl_81697A6C@sda21
/* 814910C0 | 48 03 F8 01 */	bl VFOpenFile
/* 814910C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814910C8 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 814910CC | 40 82 00 38 */	bne .L_81491104
/* 814910D0 | 48 04 02 ED */	bl VFGetLastError
/* 814910D4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814910D8 | 41 82 00 0C */	beq .L_814910E4
/* 814910DC | 2C 03 00 16 */	cmpwi r3, 0x16
/* 814910E0 | 40 82 00 0C */	bne .L_814910EC
.L_814910E4:
/* 814910E4 | 38 60 00 23 */	li r3, 0x23
/* 814910E8 | 48 00 00 20 */	b .L_81491108
.L_814910EC:
/* 814910EC | 4B FF EB 11 */	bl CDBSetFatalVFErrorFlag
/* 814910F0 | 48 04 02 CD */	bl VFGetLastError
/* 814910F4 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 814910F8 | 38 A0 00 00 */	li r5, 0x0
/* 814910FC | 4B FF EA D1 */	bl _CDBOnVFErrorOccured
/* 81491100 | 48 00 00 08 */	b .L_81491108
.L_81491104:
/* 81491104 | 38 60 00 00 */	li r3, 0x0
.L_81491108:
/* 81491108 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149110C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491110 | 7C 08 03 A6 */	mtlr r0
/* 81491114 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491118 | 4E 80 00 20 */	blr
.endfn CDBFOpenVF

# .text:0x1B4 | 0x8149111C | size: 0x5C
.fn CDBFCloseVF, global
/* 8149111C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81491120 | 7C 08 02 A6 */	mflr r0
/* 81491124 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491128 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149112C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81491130 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491134 | 41 82 00 2C */	beq .L_81491160
/* 81491138 | 48 03 F8 4D */	bl VFCloseFile
/* 8149113C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491140 | 7C 7F 1B 78 */	mr r31, r3
/* 81491144 | 41 82 00 1C */	beq .L_81491160
/* 81491148 | 4B FF EA B5 */	bl CDBSetFatalVFErrorFlag
/* 8149114C | 7F E3 FB 78 */	mr r3, r31
/* 81491150 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 81491154 | 38 A0 00 00 */	li r5, 0x0
/* 81491158 | 4B FF EA 75 */	bl _CDBOnVFErrorOccured
/* 8149115C | 48 00 00 08 */	b .L_81491164
.L_81491160:
/* 81491160 | 38 60 00 00 */	li r3, 0x0
.L_81491164:
/* 81491164 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491168 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149116C | 7C 08 03 A6 */	mtlr r0
/* 81491170 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491174 | 4E 80 00 20 */	blr
.endfn CDBFCloseVF

# .text:0x210 | 0x81491178 | size: 0xFC
.fn CDBFSeekVF_, global
/* 81491178 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149117C | 7C 08 02 A6 */	mflr r0
/* 81491180 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81491184 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81491188 | 7C BF 2B 78 */	mr r31, r5
/* 8149118C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81491190 | 7C 9E 23 78 */	mr r30, r4
/* 81491194 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81491198 | 7C 7D 1B 78 */	mr r29, r3
/* 8149119C | 48 03 FD B5 */	bl VFGetOffsetByFd
/* 814911A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814911A4 | 40 80 00 1C */	bge .L_814911C0
/* 814911A8 | 4B FF EA 55 */	bl CDBSetFatalVFErrorFlag
/* 814911AC | 48 04 02 11 */	bl VFGetLastError
/* 814911B0 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 814911B4 | 38 A0 00 00 */	li r5, 0x0
/* 814911B8 | 4B FF EA 15 */	bl _CDBOnVFErrorOccured
/* 814911BC | 48 00 00 9C */	b .L_81491258
.L_814911C0:
/* 814911C0 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814911C4 | 41 82 00 2C */	beq .L_814911F0
/* 814911C8 | 40 80 00 10 */	bge .L_814911D8
/* 814911CC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814911D0 | 40 80 00 14 */	bge .L_814911E4
/* 814911D4 | 48 00 00 30 */	b .L_81491204
.L_814911D8:
/* 814911D8 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 814911DC | 40 80 00 28 */	bge .L_81491204
/* 814911E0 | 48 00 00 1C */	b .L_814911FC
.L_814911E4:
/* 814911E4 | 7C 83 F2 14 */	add r4, r3, r30
/* 814911E8 | 38 A0 00 01 */	li r5, 0x1
/* 814911EC | 48 00 00 18 */	b .L_81491204
.L_814911F0:
/* 814911F0 | 7F C4 F3 78 */	mr r4, r30
/* 814911F4 | 38 A0 00 00 */	li r5, 0x0
/* 814911F8 | 48 00 00 0C */	b .L_81491204
.L_814911FC:
/* 814911FC | 38 A0 00 02 */	li r5, 0x2
/* 81491200 | 7C 9E 18 50 */	subf r4, r30, r3
.L_81491204:
/* 81491204 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81491208 | 41 80 00 14 */	blt .L_8149121C
/* 8149120C | 3C 60 00 04 */	lis r3, 0x4
/* 81491210 | 38 03 EC 00 */	subi r0, r3, 0x1400
/* 81491214 | 7C 04 00 00 */	cmpw r4, r0
/* 81491218 | 40 81 00 0C */	ble .L_81491224
.L_8149121C:
/* 8149121C | 38 60 00 0F */	li r3, 0xf
/* 81491220 | 48 00 00 38 */	b .L_81491258
.L_81491224:
/* 81491224 | 7F A3 EB 78 */	mr r3, r29
/* 81491228 | 7F C4 F3 78 */	mr r4, r30
/* 8149122C | 48 03 F7 C5 */	bl VFSeekFile
/* 81491230 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491234 | 7C 7F 1B 78 */	mr r31, r3
/* 81491238 | 41 82 00 1C */	beq .L_81491254
/* 8149123C | 4B FF E9 C1 */	bl CDBSetFatalVFErrorFlag
/* 81491240 | 7F E3 FB 78 */	mr r3, r31
/* 81491244 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 81491248 | 38 A0 00 00 */	li r5, 0x0
/* 8149124C | 4B FF E9 81 */	bl _CDBOnVFErrorOccured
/* 81491250 | 48 00 00 08 */	b .L_81491258
.L_81491254:
/* 81491254 | 38 60 00 00 */	li r3, 0x0
.L_81491258:
/* 81491258 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149125C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81491260 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81491264 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81491268 | 7C 08 03 A6 */	mtlr r0
/* 8149126C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81491270 | 4E 80 00 20 */	blr
.endfn CDBFSeekVF_

# .text:0x30C | 0x81491274 | size: 0xD0
.fn CDBFReadAttrVF, global
/* 81491274 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81491278 | 7C 08 02 A6 */	mflr r0
/* 8149127C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81491280 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81491284 | 7C 9F 23 78 */	mr r31, r4
/* 81491288 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149128C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81491290 | 7C 7D 1B 78 */	mr r29, r3
/* 81491294 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81491298 | 48 03 FC B9 */	bl VFGetOffsetByFd
/* 8149129C | 7C 7E 1B 78 */	mr r30, r3
/* 814912A0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814912A4 | 38 80 00 00 */	li r4, 0x0
/* 814912A8 | 38 A0 00 01 */	li r5, 0x1
/* 814912AC | 4B FF FE CD */	bl CDBFSeekVF_
/* 814912B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814912B4 | 41 82 00 08 */	beq .L_814912BC
/* 814912B8 | 48 00 00 70 */	b .L_81491328
.L_814912BC:
/* 814912BC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814912C0 | 7F E4 FB 78 */	mr r4, r31
/* 814912C4 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814912C8 | 38 A0 04 00 */	li r5, 0x400
/* 814912CC | 48 03 F7 B1 */	bl VFReadFile
/* 814912D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814912D4 | 7C 7F 1B 78 */	mr r31, r3
/* 814912D8 | 41 82 00 1C */	beq .L_814912F4
/* 814912DC | 4B FF E9 21 */	bl CDBSetFatalVFErrorFlag
/* 814912E0 | 7F E3 FB 78 */	mr r3, r31
/* 814912E4 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 814912E8 | 38 A0 00 00 */	li r5, 0x0
/* 814912EC | 4B FF E8 E1 */	bl _CDBOnVFErrorOccured
/* 814912F0 | 48 00 00 08 */	b .L_814912F8
.L_814912F4:
/* 814912F4 | 38 60 00 00 */	li r3, 0x0
.L_814912F8:
/* 814912F8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814912FC | 28 00 04 00 */	cmplwi r0, 0x400
/* 81491300 | 41 82 00 0C */	beq .L_8149130C
/* 81491304 | 38 60 00 08 */	li r3, 0x8
/* 81491308 | 48 00 00 20 */	b .L_81491328
.L_8149130C:
/* 8149130C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491310 | 41 82 00 08 */	beq .L_81491318
/* 81491314 | 48 00 00 14 */	b .L_81491328
.L_81491318:
/* 81491318 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8149131C | 7F C4 F3 78 */	mr r4, r30
/* 81491320 | 38 A0 00 01 */	li r5, 0x1
/* 81491324 | 4B FF FE 55 */	bl CDBFSeekVF_
.L_81491328:
/* 81491328 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149132C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81491330 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81491334 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81491338 | 7C 08 03 A6 */	mtlr r0
/* 8149133C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81491340 | 4E 80 00 20 */	blr
.endfn CDBFReadAttrVF

# .text:0x3DC | 0x81491344 | size: 0xC8
.fn CDBFWriteAttrVF, global
/* 81491344 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81491348 | 7C 08 02 A6 */	mflr r0
/* 8149134C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81491350 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81491354 | 7C 9F 23 78 */	mr r31, r4
/* 81491358 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149135C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81491360 | 7C 7D 1B 78 */	mr r29, r3
/* 81491364 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81491368 | 48 03 FB E9 */	bl VFGetOffsetByFd
/* 8149136C | 7C 7E 1B 78 */	mr r30, r3
/* 81491370 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81491374 | 38 80 00 00 */	li r4, 0x0
/* 81491378 | 38 A0 00 01 */	li r5, 0x1
/* 8149137C | 4B FF FD FD */	bl CDBFSeekVF_
/* 81491380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491384 | 41 82 00 08 */	beq .L_8149138C
/* 81491388 | 48 00 00 68 */	b .L_814913F0
.L_8149138C:
/* 8149138C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81491390 | 7F E4 FB 78 */	mr r4, r31
/* 81491394 | 38 A0 04 00 */	li r5, 0x400
/* 81491398 | 48 03 F7 81 */	bl VFWriteFile
/* 8149139C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814913A0 | 7C 7F 1B 78 */	mr r31, r3
/* 814913A4 | 41 82 00 2C */	beq .L_814913D0
/* 814913A8 | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 814913AC | 40 82 00 0C */	bne .L_814913B8
/* 814913B0 | 38 60 00 17 */	li r3, 0x17
/* 814913B4 | 48 00 00 20 */	b .L_814913D4
.L_814913B8:
/* 814913B8 | 4B FF E8 45 */	bl CDBSetFatalVFErrorFlag
/* 814913BC | 7F E3 FB 78 */	mr r3, r31
/* 814913C0 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 814913C4 | 38 A0 00 00 */	li r5, 0x0
/* 814913C8 | 4B FF E8 05 */	bl _CDBOnVFErrorOccured
/* 814913CC | 48 00 00 08 */	b .L_814913D4
.L_814913D0:
/* 814913D0 | 38 60 00 00 */	li r3, 0x0
.L_814913D4:
/* 814913D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814913D8 | 41 82 00 08 */	beq .L_814913E0
/* 814913DC | 48 00 00 14 */	b .L_814913F0
.L_814913E0:
/* 814913E0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814913E4 | 7F C4 F3 78 */	mr r4, r30
/* 814913E8 | 38 A0 00 01 */	li r5, 0x1
/* 814913EC | 4B FF FD 8D */	bl CDBFSeekVF_
.L_814913F0:
/* 814913F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814913F4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814913F8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814913FC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81491400 | 7C 08 03 A6 */	mtlr r0
/* 81491404 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81491408 | 4E 80 00 20 */	blr
.endfn CDBFWriteAttrVF

# .text:0x4A4 | 0x8149140C | size: 0xC8
.fn CDBFWriteAttrOnlyLeadChunkVF, global
/* 8149140C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81491410 | 7C 08 02 A6 */	mflr r0
/* 81491414 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81491418 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149141C | 7C 9F 23 78 */	mr r31, r4
/* 81491420 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81491424 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81491428 | 7C 7D 1B 78 */	mr r29, r3
/* 8149142C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81491430 | 48 03 FB 21 */	bl VFGetOffsetByFd
/* 81491434 | 7C 7E 1B 78 */	mr r30, r3
/* 81491438 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8149143C | 38 80 00 00 */	li r4, 0x0
/* 81491440 | 38 A0 00 01 */	li r5, 0x1
/* 81491444 | 4B FF FD 35 */	bl CDBFSeekVF_
/* 81491448 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149144C | 41 82 00 08 */	beq .L_81491454
/* 81491450 | 48 00 00 68 */	b .L_814914B8
.L_81491454:
/* 81491454 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81491458 | 7F E4 FB 78 */	mr r4, r31
/* 8149145C | 38 A0 02 00 */	li r5, 0x200
/* 81491460 | 48 03 F6 B9 */	bl VFWriteFile
/* 81491464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491468 | 7C 7F 1B 78 */	mr r31, r3
/* 8149146C | 41 82 00 2C */	beq .L_81491498
/* 81491470 | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 81491474 | 40 82 00 0C */	bne .L_81491480
/* 81491478 | 38 60 00 17 */	li r3, 0x17
/* 8149147C | 48 00 00 20 */	b .L_8149149C
.L_81491480:
/* 81491480 | 4B FF E7 7D */	bl CDBSetFatalVFErrorFlag
/* 81491484 | 7F E3 FB 78 */	mr r3, r31
/* 81491488 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 8149148C | 38 A0 00 00 */	li r5, 0x0
/* 81491490 | 4B FF E7 3D */	bl _CDBOnVFErrorOccured
/* 81491494 | 48 00 00 08 */	b .L_8149149C
.L_81491498:
/* 81491498 | 38 60 00 00 */	li r3, 0x0
.L_8149149C:
/* 8149149C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814914A0 | 41 82 00 08 */	beq .L_814914A8
/* 814914A4 | 48 00 00 14 */	b .L_814914B8
.L_814914A8:
/* 814914A8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814914AC | 7F C4 F3 78 */	mr r4, r30
/* 814914B0 | 38 A0 00 01 */	li r5, 0x1
/* 814914B4 | 4B FF FC C5 */	bl CDBFSeekVF_
.L_814914B8:
/* 814914B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814914BC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814914C0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814914C4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814914C8 | 7C 08 03 A6 */	mtlr r0
/* 814914CC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814914D0 | 4E 80 00 20 */	blr
.endfn CDBFWriteAttrOnlyLeadChunkVF

# .text:0x56C | 0x814914D4 | size: 0x54
.fn CDBFReadDataVF, global
/* 814914D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814914D8 | 7C 08 02 A6 */	mflr r0
/* 814914DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814914E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814914E4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814914E8 | 48 03 F5 95 */	bl VFReadFile
/* 814914EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814914F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814914F4 | 41 82 00 1C */	beq .L_81491510
/* 814914F8 | 4B FF E7 05 */	bl CDBSetFatalVFErrorFlag
/* 814914FC | 7F E3 FB 78 */	mr r3, r31
/* 81491500 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 81491504 | 38 A0 00 00 */	li r5, 0x0
/* 81491508 | 4B FF E6 C5 */	bl _CDBOnVFErrorOccured
/* 8149150C | 48 00 00 08 */	b .L_81491514
.L_81491510:
/* 81491510 | 38 60 00 00 */	li r3, 0x0
.L_81491514:
/* 81491514 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491518 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149151C | 7C 08 03 A6 */	mtlr r0
/* 81491520 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491524 | 4E 80 00 20 */	blr
.endfn CDBFReadDataVF

# .text:0x5C0 | 0x81491528 | size: 0x64
.fn CDBFWriteDataVF, global
/* 81491528 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149152C | 7C 08 02 A6 */	mflr r0
/* 81491530 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491534 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81491538 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8149153C | 48 03 F5 DD */	bl VFWriteFile
/* 81491540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491544 | 7C 7F 1B 78 */	mr r31, r3
/* 81491548 | 41 82 00 2C */	beq .L_81491574
/* 8149154C | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 81491550 | 40 82 00 0C */	bne .L_8149155C
/* 81491554 | 38 60 00 17 */	li r3, 0x17
/* 81491558 | 48 00 00 20 */	b .L_81491578
.L_8149155C:
/* 8149155C | 4B FF E6 A1 */	bl CDBSetFatalVFErrorFlag
/* 81491560 | 7F E3 FB 78 */	mr r3, r31
/* 81491564 | 38 8D 9A 28 */	li r4, lbl_81697A68@sda21
/* 81491568 | 38 A0 00 00 */	li r5, 0x0
/* 8149156C | 4B FF E6 61 */	bl _CDBOnVFErrorOccured
/* 81491570 | 48 00 00 08 */	b .L_81491578
.L_81491574:
/* 81491574 | 38 60 00 00 */	li r3, 0x0
.L_81491578:
/* 81491578 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149157C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491580 | 7C 08 03 A6 */	mtlr r0
/* 81491584 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491588 | 4E 80 00 20 */	blr
.endfn CDBFWriteDataVF

# .text:0x624 | 0x8149158C | size: 0x14
.fn CDBFSeekDataVF, global
/* 8149158C | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81491590 | 40 82 00 08 */	bne .L_81491598
/* 81491594 | 38 84 04 00 */	addi r4, r4, 0x400
.L_81491598:
/* 81491598 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8149159C | 4B FF FB DC */	b CDBFSeekVF_
.endfn CDBFSeekDataVF

# .text:0x638 | 0x814915A0 | size: 0x28
.fn CDBFTellDataVF, global
/* 814915A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814915A4 | 7C 08 02 A6 */	mflr r0
/* 814915A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814915AC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814915B0 | 48 03 F9 A1 */	bl VFGetOffsetByFd
/* 814915B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814915B8 | 38 63 FC 00 */	subi r3, r3, 0x400
/* 814915BC | 7C 08 03 A6 */	mtlr r0
/* 814915C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814915C4 | 4E 80 00 20 */	blr
.endfn CDBFTellDataVF

# .text:0x660 | 0x814915C8 | size: 0x54
.fn CDBFGetDataSizeVF, global
/* 814915C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814915CC | 7C 08 02 A6 */	mflr r0
/* 814915D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814915D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814915D8 | 7C 9F 23 78 */	mr r31, r4
/* 814915DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814915E0 | 48 03 F8 D5 */	bl VFGetFileSizeByFd
/* 814915E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814915E8 | 40 80 00 0C */	bge .L_814915F4
/* 814915EC | 38 60 00 23 */	li r3, 0x23
/* 814915F0 | 48 00 00 0C */	b .L_814915FC
.L_814915F4:
/* 814915F4 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 814915F8 | 38 60 00 00 */	li r3, 0x0
.L_814915FC:
/* 814915FC | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81491600 | 38 04 FC 00 */	subi r0, r4, 0x400
/* 81491604 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81491608 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149160C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491610 | 7C 08 03 A6 */	mtlr r0
/* 81491614 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491618 | 4E 80 00 20 */	blr
.endfn CDBFGetDataSizeVF

# .text:0x6B4 | 0x8149161C | size: 0x48
.fn CDBFGetFileSizeVF, global
/* 8149161C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81491620 | 7C 08 02 A6 */	mflr r0
/* 81491624 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491628 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149162C | 7C 9F 23 78 */	mr r31, r4
/* 81491630 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81491634 | 48 03 F8 81 */	bl VFGetFileSizeByFd
/* 81491638 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149163C | 40 80 00 0C */	bge .L_81491648
/* 81491640 | 38 60 00 23 */	li r3, 0x23
/* 81491644 | 48 00 00 0C */	b .L_81491650
.L_81491648:
/* 81491648 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8149164C | 38 60 00 00 */	li r3, 0x0
.L_81491650:
/* 81491650 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491654 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491658 | 7C 08 03 A6 */	mtlr r0
/* 8149165C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491660 | 4E 80 00 20 */	blr
.endfn CDBFGetFileSizeVF

# 0x81697A68..0x81697A70 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697A68 | size: 0x4
.obj lbl_81697A68, global
	.4byte 0x00000000
.endobj lbl_81697A68

# .sdata:0x4 | 0x81697A6C | size: 0x4
.obj lbl_81697A6C, global
	.4byte 0x722B0000
.endobj lbl_81697A6C
