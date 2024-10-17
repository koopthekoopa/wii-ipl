.include "macros.inc"
.file "CDBRecord.c"

# 0x810C8A80..0x810C8B00 | size: 0x80
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C8A80 | size: 0x40
.obj lbl_810C8A80, global
	.skip 0x40
.endobj lbl_810C8A80

# .bss:0x40 | 0x810C8AC0 | size: 0x40
.obj lbl_810C8AC0, global
	.skip 0x40
.endobj lbl_810C8AC0

# 0x8148BF5C..0x8148DB00 | size: 0x1BA4
.text
.balign 4

# .text:0x0 | 0x8148BF5C | size: 0x74
.fn CDBRecordInstanceInit, global
/* 8148BF5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148BF60 | 7C 08 02 A6 */	mflr r0
/* 8148BF64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148BF68 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148BF6C | 7C BF 2B 78 */	mr r31, r5
/* 8148BF70 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148BF74 | 7C 9E 23 78 */	mr r30, r4
/* 8148BF78 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148BF7C | 7C 7D 1B 78 */	mr r29, r3
/* 8148BF80 | 48 0A 5C 89 */	bl fn_81531C08
/* 8148BF84 | 38 00 00 01 */	li r0, 0x1
/* 8148BF88 | 7F A3 EB 78 */	mr r3, r29
/* 8148BF8C | 90 1D 00 18 */	stw r0, 0x18(r29)
/* 8148BF90 | 48 0A 5D 55 */	bl fn_81531CE4
/* 8148BF94 | 93 FD 00 1C */	stw r31, 0x1c(r29)
/* 8148BF98 | 38 7D 00 20 */	addi r3, r29, 0x20
/* 8148BF9C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148BFA0 | 90 1D 04 68 */	stw r0, 0x468(r29)
/* 8148BFA4 | 48 00 48 41 */	bl CDBAttrInit
/* 8148BFA8 | 38 7D 04 38 */	addi r3, r29, 0x438
/* 8148BFAC | 38 9E 00 08 */	addi r4, r30, 0x8
/* 8148BFB0 | 48 00 25 D5 */	bl CDBRecordKeyCopy
/* 8148BFB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148BFB8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148BFBC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148BFC0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148BFC4 | 7C 08 03 A6 */	mtlr r0
/* 8148BFC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148BFCC | 4E 80 00 20 */	blr
.endfn CDBRecordInstanceInit

# .text:0x74 | 0x8148BFD0 | size: 0x44
.fn CDBRecordInstanceIsUsed, global
/* 8148BFD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148BFD4 | 7C 08 02 A6 */	mflr r0
/* 8148BFD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148BFDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148BFE0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148BFE4 | 7C 7E 1B 78 */	mr r30, r3
/* 8148BFE8 | 48 0A 5C 21 */	bl fn_81531C08
/* 8148BFEC | 83 FE 00 18 */	lwz r31, 0x18(r30)
/* 8148BFF0 | 7F C3 F3 78 */	mr r3, r30
/* 8148BFF4 | 48 0A 5C F1 */	bl fn_81531CE4
/* 8148BFF8 | 7F E3 FB 78 */	mr r3, r31
/* 8148BFFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148C000 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148C004 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148C008 | 7C 08 03 A6 */	mtlr r0
/* 8148C00C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148C010 | 4E 80 00 20 */	blr
.endfn CDBRecordInstanceIsUsed

# .text:0xB8 | 0x8148C014 | size: 0x64
.fn CDBRecordInitDescriptor, global
/* 8148C014 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148C018 | 7C 08 02 A6 */	mflr r0
/* 8148C01C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148C020 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148C024 | 7C BF 2B 78 */	mr r31, r5
/* 8148C028 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148C02C | 7C 9E 23 78 */	mr r30, r4
/* 8148C030 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148C034 | 7C 7D 1B 78 */	mr r29, r3
/* 8148C038 | 48 00 32 45 */	bl CDBLock
/* 8148C03C | 93 DD 00 00 */	stw r30, 0x0(r29)
/* 8148C040 | 7F E4 FB 78 */	mr r4, r31
/* 8148C044 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8148C048 | 48 00 25 3D */	bl CDBRecordKeyCopy
/* 8148C04C | 38 00 00 00 */	li r0, 0x0
/* 8148C050 | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 8148C054 | 90 1D 00 38 */	stw r0, 0x38(r29)
/* 8148C058 | 48 00 32 31 */	bl CDBUnlock
/* 8148C05C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148C060 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148C064 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148C068 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148C06C | 7C 08 03 A6 */	mtlr r0
/* 8148C070 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148C074 | 4E 80 00 20 */	blr
.endfn CDBRecordInitDescriptor

# .text:0x11C | 0x8148C078 | size: 0x110
.fn CDBRecordCreateAtOnce, global
/* 8148C078 | 94 21 FB 90 */	stwu r1, -0x470(r1)
/* 8148C07C | 7C 08 02 A6 */	mflr r0
/* 8148C080 | 90 01 04 74 */	stw r0, 0x474(r1)
/* 8148C084 | 39 61 04 70 */	addi r11, r1, 0x470
/* 8148C088 | 48 16 D4 29 */	bl _savegpr_23
/* 8148C08C | 7C DA 33 78 */	mr r26, r6
/* 8148C090 | 83 E1 04 78 */	lwz r31, 0x478(r1)
/* 8148C094 | 7C 77 1B 78 */	mr r23, r3
/* 8148C098 | 7C 98 23 78 */	mr r24, r4
/* 8148C09C | 7C B9 2B 78 */	mr r25, r5
/* 8148C0A0 | 7C FB 3B 78 */	mr r27, r7
/* 8148C0A4 | 7D 1C 43 78 */	mr r28, r8
/* 8148C0A8 | 7D 3D 4B 78 */	mr r29, r9
/* 8148C0AC | 7D 5E 53 78 */	mr r30, r10
/* 8148C0B0 | 7F 43 D3 78 */	mr r3, r26
/* 8148C0B4 | 48 16 CE 49 */	bl strlen
/* 8148C0B8 | 28 03 00 06 */	cmplwi r3, 0x6
/* 8148C0BC | 41 80 00 0C */	blt .L_8148C0C8
/* 8148C0C0 | 38 60 00 13 */	li r3, 0x13
/* 8148C0C4 | 48 00 00 AC */	b .L_8148C170
.L_8148C0C8:
/* 8148C0C8 | 28 1F 04 00 */	cmplwi r31, 0x400
/* 8148C0CC | 40 80 00 0C */	bge .L_8148C0D8
/* 8148C0D0 | 38 60 00 14 */	li r3, 0x14
/* 8148C0D4 | 48 00 00 9C */	b .L_8148C170
.L_8148C0D8:
/* 8148C0D8 | 7F 64 DB 78 */	mr r4, r27
/* 8148C0DC | 7F 85 E3 78 */	mr r5, r28
/* 8148C0E0 | 7F A6 EB 78 */	mr r6, r29
/* 8148C0E4 | 7F 48 D3 78 */	mr r8, r26
/* 8148C0E8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148C0EC | 38 E0 00 00 */	li r7, 0x0
/* 8148C0F0 | 39 20 00 01 */	li r9, 0x1
/* 8148C0F4 | 48 00 22 85 */	bl CDBRecordKeyInit
/* 8148C0F8 | 48 00 31 85 */	bl CDBLock
/* 8148C0FC | 93 17 00 00 */	stw r24, 0x0(r23)
/* 8148C100 | 38 77 00 08 */	addi r3, r23, 0x8
/* 8148C104 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148C108 | 48 00 24 7D */	bl CDBRecordKeyCopy
/* 8148C10C | 38 00 00 00 */	li r0, 0x0
/* 8148C110 | 90 17 00 04 */	stw r0, 0x4(r23)
/* 8148C114 | 90 17 00 38 */	stw r0, 0x38(r23)
/* 8148C118 | 48 00 31 71 */	bl CDBUnlock
/* 8148C11C | 7F 24 CB 78 */	mr r4, r25
/* 8148C120 | 7F 65 DB 78 */	mr r5, r27
/* 8148C124 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8148C128 | 48 00 47 01 */	bl CDBAttrCreateOnNAND
/* 8148C12C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C130 | 41 82 00 08 */	beq .L_8148C138
/* 8148C134 | 48 00 00 3C */	b .L_8148C170
.L_8148C138:
/* 8148C138 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8148C13C | 38 80 00 01 */	li r4, 0x1
/* 8148C140 | 48 00 48 A5 */	bl CDBAttrSetModifiedCount
/* 8148C144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C148 | 41 82 00 08 */	beq .L_8148C150
/* 8148C14C | 48 00 00 24 */	b .L_8148C170
.L_8148C150:
/* 8148C150 | 7F C3 F3 78 */	mr r3, r30
/* 8148C154 | 38 81 00 38 */	addi r4, r1, 0x38
/* 8148C158 | 38 A0 04 00 */	li r5, 0x400
/* 8148C15C | 4B EA 40 D5 */	bl memcpy
/* 8148C160 | 7E E3 BB 78 */	mr r3, r23
/* 8148C164 | 7F C4 F3 78 */	mr r4, r30
/* 8148C168 | 7F E5 FB 78 */	mr r5, r31
/* 8148C16C | 48 00 1C 39 */	bl CDBRecordFileCreateAtOnce
.L_8148C170:
/* 8148C170 | 39 61 04 70 */	addi r11, r1, 0x470
/* 8148C174 | 48 16 D3 89 */	bl _restgpr_23
/* 8148C178 | 80 01 04 74 */	lwz r0, 0x474(r1)
/* 8148C17C | 7C 08 03 A6 */	mtlr r0
/* 8148C180 | 38 21 04 70 */	addi r1, r1, 0x470
/* 8148C184 | 4E 80 00 20 */	blr
.endfn CDBRecordCreateAtOnce

# .text:0x22C | 0x8148C188 | size: 0x40
.fn CDBRecordOpen, global
/* 8148C188 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148C18C | 7C 08 02 A6 */	mflr r0
/* 8148C190 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148C194 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148C198 | 7C 7F 1B 78 */	mr r31, r3
/* 8148C19C | 48 00 30 E1 */	bl CDBLock
/* 8148C1A0 | 7F E3 FB 78 */	mr r3, r31
/* 8148C1A4 | 48 00 00 25 */	bl CDBRecordOpen_
/* 8148C1A8 | 7C 7F 1B 78 */	mr r31, r3
/* 8148C1AC | 48 00 30 DD */	bl CDBUnlock
/* 8148C1B0 | 7F E3 FB 78 */	mr r3, r31
/* 8148C1B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148C1B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148C1BC | 7C 08 03 A6 */	mtlr r0
/* 8148C1C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148C1C4 | 4E 80 00 20 */	blr
.endfn CDBRecordOpen

# .text:0x26C | 0x8148C1C8 | size: 0x1B4
.fn CDBRecordOpen_, global
/* 8148C1C8 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8148C1CC | 7C 08 02 A6 */	mflr r0
/* 8148C1D0 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 8148C1D4 | 38 00 00 00 */	li r0, 0x0
/* 8148C1D8 | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8148C1DC | 93 C1 01 18 */	stw r30, 0x118(r1)
/* 8148C1E0 | 93 A1 01 14 */	stw r29, 0x114(r1)
/* 8148C1E4 | 7C 7D 1B 78 */	mr r29, r3
/* 8148C1E8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8148C1EC | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8148C1F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8148C1F4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8148C1F8 | 40 82 00 34 */	bne .L_8148C22C
/* 8148C1FC | 38 60 00 02 */	li r3, 0x2
/* 8148C200 | 48 00 43 91 */	bl CDBIsPrintDebugMessage
/* 8148C204 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C208 | 41 82 00 1C */	beq .L_8148C224
/* 8148C20C | 38 60 00 02 */	li r3, 0x2
/* 8148C210 | 48 00 43 99 */	bl CDBReport_
/* 8148C214 | 3C 60 81 67 */	lis r3, lbl_8166BBC0@ha
/* 8148C218 | 38 63 BB C0 */	addi r3, r3, lbl_8166BBC0@l
/* 8148C21C | 4C C6 31 82 */	crclr cr1eq
/* 8148C220 | 48 0A 24 81 */	bl OSReport
.L_8148C224:
/* 8148C224 | 38 60 00 1B */	li r3, 0x1b
/* 8148C228 | 48 00 01 38 */	b .L_8148C360
.L_8148C22C:
/* 8148C22C | 3C 84 00 01 */	addis r4, r4, 0x1
/* 8148C230 | 80 04 C0 10 */	lwz r0, -0x3ff0(r4)
/* 8148C234 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8148C238 | 40 82 00 34 */	bne .L_8148C26C
/* 8148C23C | 38 60 00 02 */	li r3, 0x2
/* 8148C240 | 48 00 43 51 */	bl CDBIsPrintDebugMessage
/* 8148C244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C248 | 41 82 00 1C */	beq .L_8148C264
/* 8148C24C | 38 60 00 02 */	li r3, 0x2
/* 8148C250 | 48 00 43 59 */	bl CDBReport_
/* 8148C254 | 3C 60 81 67 */	lis r3, lbl_8166BC00@ha
/* 8148C258 | 38 63 BC 00 */	addi r3, r3, lbl_8166BC00@l
/* 8148C25C | 4C C6 31 82 */	crclr cr1eq
/* 8148C260 | 48 0A 24 41 */	bl OSReport
.L_8148C264:
/* 8148C264 | 38 60 00 1A */	li r3, 0x1a
/* 8148C268 | 48 00 00 F8 */	b .L_8148C360
.L_8148C26C:
/* 8148C26C | 38 63 00 08 */	addi r3, r3, 0x8
/* 8148C270 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148C274 | 4B FF AB B9 */	bl CDBConvKeyToFullPath
/* 8148C278 | 7F A3 EB 78 */	mr r3, r29
/* 8148C27C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148C280 | 38 A0 00 03 */	li r5, 0x3
/* 8148C284 | 48 00 1D 71 */	bl CDBRecordFileOpen
/* 8148C288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C28C | 41 82 00 08 */	beq .L_8148C294
/* 8148C290 | 48 00 00 D0 */	b .L_8148C360
.L_8148C294:
/* 8148C294 | 7F A3 EB 78 */	mr r3, r29
/* 8148C298 | 48 00 18 69 */	bl CDBRecordFileReadAttrBuf
/* 8148C29C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C2A0 | 41 82 00 08 */	beq .L_8148C2A8
/* 8148C2A4 | 48 00 00 BC */	b .L_8148C360
.L_8148C2A8:
/* 8148C2A8 | 80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8148C2AC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148C2B0 | 40 82 00 AC */	bne .L_8148C35C
/* 8148C2B4 | 38 7D 00 04 */	addi r3, r29, 0x4
/* 8148C2B8 | 48 00 5F D5 */	bl CDBCryptBufAllocate
/* 8148C2BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C2C0 | 41 82 00 08 */	beq .L_8148C2C8
/* 8148C2C4 | 48 00 00 9C */	b .L_8148C360
.L_8148C2C8:
/* 8148C2C8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8148C2CC | 83 DD 00 04 */	lwz r30, 0x4(r29)
/* 8148C2D0 | 41 82 00 14 */	beq .L_8148C2E4
/* 8148C2D4 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8148C2D8 | 48 00 20 0D */	bl CDBRecordKeyIsValid
/* 8148C2DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C2E0 | 40 82 00 0C */	bne .L_8148C2EC
.L_8148C2E4:
/* 8148C2E4 | 3B E0 00 01 */	li r31, 0x1
/* 8148C2E8 | 48 00 00 50 */	b .L_8148C338
.L_8148C2EC:
/* 8148C2EC | 80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8148C2F0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148C2F4 | 41 82 00 0C */	beq .L_8148C300
/* 8148C2F8 | 3B E0 00 02 */	li r31, 0x2
/* 8148C2FC | 48 00 00 3C */	b .L_8148C338
.L_8148C300:
/* 8148C300 | 4B FF FC 3D */	bl CDBFSSDIsMounted
/* 8148C304 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C308 | 41 82 00 28 */	beq .L_8148C330
/* 8148C30C | 3C DE 00 04 */	addis r6, r30, 0x4
/* 8148C310 | 3C A0 00 04 */	lis r5, 0x4
/* 8148C314 | 7F A3 EB 78 */	mr r3, r29
/* 8148C318 | 7F C4 F3 78 */	mr r4, r30
/* 8148C31C | 38 A5 EC 00 */	subi r5, r5, 0x1400
/* 8148C320 | 38 E0 00 00 */	li r7, 0x0
/* 8148C324 | 38 C6 EC 00 */	subi r6, r6, 0x1400
/* 8148C328 | 48 00 14 71 */	bl CDBRecordDecrypt
/* 8148C32C | 48 00 00 08 */	b .L_8148C334
.L_8148C330:
/* 8148C330 | 38 60 00 0B */	li r3, 0xb
.L_8148C334:
/* 8148C334 | 7C 7F 1B 78 */	mr r31, r3
.L_8148C338:
/* 8148C338 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148C33C | 41 82 00 14 */	beq .L_8148C350
/* 8148C340 | 38 7D 00 04 */	addi r3, r29, 0x4
/* 8148C344 | 48 00 5F D9 */	bl CDBCryptBufFree
/* 8148C348 | 7F E3 FB 78 */	mr r3, r31
/* 8148C34C | 48 00 00 14 */	b .L_8148C360
.L_8148C350:
/* 8148C350 | 3C 7E 00 04 */	addis r3, r30, 0x4
/* 8148C354 | 38 00 04 00 */	li r0, 0x400
/* 8148C358 | 90 03 EC 04 */	stw r0, -0x13fc(r3)
.L_8148C35C:
/* 8148C35C | 38 60 00 00 */	li r3, 0x0
.L_8148C360:
/* 8148C360 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8148C364 | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8148C368 | 83 C1 01 18 */	lwz r30, 0x118(r1)
/* 8148C36C | 83 A1 01 14 */	lwz r29, 0x114(r1)
/* 8148C370 | 7C 08 03 A6 */	mtlr r0
/* 8148C374 | 38 21 01 20 */	addi r1, r1, 0x120
/* 8148C378 | 4E 80 00 20 */	blr
.endfn CDBRecordOpen_

# .text:0x420 | 0x8148C37C | size: 0x40
.fn CDBRecordOpenReadOnly, global
/* 8148C37C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148C380 | 7C 08 02 A6 */	mflr r0
/* 8148C384 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148C388 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148C38C | 7C 7F 1B 78 */	mr r31, r3
/* 8148C390 | 48 00 2E ED */	bl CDBLock
/* 8148C394 | 7F E3 FB 78 */	mr r3, r31
/* 8148C398 | 48 00 00 25 */	bl CDBRecordOpenReadOnly_
/* 8148C39C | 7C 7F 1B 78 */	mr r31, r3
/* 8148C3A0 | 48 00 2E E9 */	bl CDBUnlock
/* 8148C3A4 | 7F E3 FB 78 */	mr r3, r31
/* 8148C3A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148C3AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148C3B0 | 7C 08 03 A6 */	mtlr r0
/* 8148C3B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148C3B8 | 4E 80 00 20 */	blr
.endfn CDBRecordOpenReadOnly

# .text:0x460 | 0x8148C3BC | size: 0x174
.fn CDBRecordOpenReadOnly_, global
/* 8148C3BC | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8148C3C0 | 7C 08 02 A6 */	mflr r0
/* 8148C3C4 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 8148C3C8 | 38 00 00 00 */	li r0, 0x0
/* 8148C3CC | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8148C3D0 | 93 C1 01 18 */	stw r30, 0x118(r1)
/* 8148C3D4 | 93 A1 01 14 */	stw r29, 0x114(r1)
/* 8148C3D8 | 7C 7D 1B 78 */	mr r29, r3
/* 8148C3DC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8148C3E0 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8148C3E4 | 48 00 1F 01 */	bl CDBRecordKeyIsValid
/* 8148C3E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C3EC | 40 82 00 34 */	bne .L_8148C420
/* 8148C3F0 | 38 60 00 02 */	li r3, 0x2
/* 8148C3F4 | 48 00 41 9D */	bl CDBIsPrintDebugMessage
/* 8148C3F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C3FC | 41 82 00 1C */	beq .L_8148C418
/* 8148C400 | 38 60 00 02 */	li r3, 0x2
/* 8148C404 | 48 00 41 A5 */	bl CDBReport_
/* 8148C408 | 3C 60 81 67 */	lis r3, lbl_8166BC34@ha
/* 8148C40C | 38 63 BC 34 */	addi r3, r3, lbl_8166BC34@l
/* 8148C410 | 4C C6 31 82 */	crclr cr1eq
/* 8148C414 | 48 0A 22 8D */	bl OSReport
.L_8148C418:
/* 8148C418 | 38 60 00 05 */	li r3, 0x5
/* 8148C41C | 48 00 00 F8 */	b .L_8148C514
.L_8148C420:
/* 8148C420 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8148C424 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148C428 | 4B FF AA 05 */	bl CDBConvKeyToFullPath
/* 8148C42C | 7F A3 EB 78 */	mr r3, r29
/* 8148C430 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148C434 | 38 A0 00 01 */	li r5, 0x1
/* 8148C438 | 48 00 1B BD */	bl CDBRecordFileOpen
/* 8148C43C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C440 | 41 82 00 08 */	beq .L_8148C448
/* 8148C444 | 48 00 00 D0 */	b .L_8148C514
.L_8148C448:
/* 8148C448 | 7F A3 EB 78 */	mr r3, r29
/* 8148C44C | 48 00 16 B5 */	bl CDBRecordFileReadAttrBuf
/* 8148C450 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C454 | 41 82 00 08 */	beq .L_8148C45C
/* 8148C458 | 48 00 00 BC */	b .L_8148C514
.L_8148C45C:
/* 8148C45C | 80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8148C460 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148C464 | 40 82 00 AC */	bne .L_8148C510
/* 8148C468 | 38 7D 00 04 */	addi r3, r29, 0x4
/* 8148C46C | 48 00 5E 21 */	bl CDBCryptBufAllocate
/* 8148C470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C474 | 41 82 00 08 */	beq .L_8148C47C
/* 8148C478 | 48 00 00 9C */	b .L_8148C514
.L_8148C47C:
/* 8148C47C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8148C480 | 83 DD 00 04 */	lwz r30, 0x4(r29)
/* 8148C484 | 41 82 00 14 */	beq .L_8148C498
/* 8148C488 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8148C48C | 48 00 1E 59 */	bl CDBRecordKeyIsValid
/* 8148C490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C494 | 40 82 00 0C */	bne .L_8148C4A0
.L_8148C498:
/* 8148C498 | 3B E0 00 01 */	li r31, 0x1
/* 8148C49C | 48 00 00 50 */	b .L_8148C4EC
.L_8148C4A0:
/* 8148C4A0 | 80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8148C4A4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148C4A8 | 41 82 00 0C */	beq .L_8148C4B4
/* 8148C4AC | 3B E0 00 02 */	li r31, 0x2
/* 8148C4B0 | 48 00 00 3C */	b .L_8148C4EC
.L_8148C4B4:
/* 8148C4B4 | 4B FF FA 89 */	bl CDBFSSDIsMounted
/* 8148C4B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C4BC | 41 82 00 28 */	beq .L_8148C4E4
/* 8148C4C0 | 3C DE 00 04 */	addis r6, r30, 0x4
/* 8148C4C4 | 3C A0 00 04 */	lis r5, 0x4
/* 8148C4C8 | 7F A3 EB 78 */	mr r3, r29
/* 8148C4CC | 7F C4 F3 78 */	mr r4, r30
/* 8148C4D0 | 38 A5 EC 00 */	subi r5, r5, 0x1400
/* 8148C4D4 | 38 E0 00 00 */	li r7, 0x0
/* 8148C4D8 | 38 C6 EC 00 */	subi r6, r6, 0x1400
/* 8148C4DC | 48 00 12 BD */	bl CDBRecordDecrypt
/* 8148C4E0 | 48 00 00 08 */	b .L_8148C4E8
.L_8148C4E4:
/* 8148C4E4 | 38 60 00 0B */	li r3, 0xb
.L_8148C4E8:
/* 8148C4E8 | 7C 7F 1B 78 */	mr r31, r3
.L_8148C4EC:
/* 8148C4EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148C4F0 | 41 82 00 14 */	beq .L_8148C504
/* 8148C4F4 | 38 7D 00 04 */	addi r3, r29, 0x4
/* 8148C4F8 | 48 00 5E 25 */	bl CDBCryptBufFree
/* 8148C4FC | 7F E3 FB 78 */	mr r3, r31
/* 8148C500 | 48 00 00 14 */	b .L_8148C514
.L_8148C504:
/* 8148C504 | 3C 7E 00 04 */	addis r3, r30, 0x4
/* 8148C508 | 38 00 04 00 */	li r0, 0x400
/* 8148C50C | 90 03 EC 04 */	stw r0, -0x13fc(r3)
.L_8148C510:
/* 8148C510 | 38 60 00 00 */	li r3, 0x0
.L_8148C514:
/* 8148C514 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8148C518 | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8148C51C | 83 C1 01 18 */	lwz r30, 0x118(r1)
/* 8148C520 | 83 A1 01 14 */	lwz r29, 0x114(r1)
/* 8148C524 | 7C 08 03 A6 */	mtlr r0
/* 8148C528 | 38 21 01 20 */	addi r1, r1, 0x120
/* 8148C52C | 4E 80 00 20 */	blr
.endfn CDBRecordOpenReadOnly_

# .text:0x5D4 | 0x8148C530 | size: 0x40
.fn CDBRecordClose, global
/* 8148C530 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148C534 | 7C 08 02 A6 */	mflr r0
/* 8148C538 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148C53C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148C540 | 7C 7F 1B 78 */	mr r31, r3
/* 8148C544 | 48 00 2D 39 */	bl CDBLock
/* 8148C548 | 7F E3 FB 78 */	mr r3, r31
/* 8148C54C | 48 00 00 25 */	bl CDBRecordClose_
/* 8148C550 | 7C 7F 1B 78 */	mr r31, r3
/* 8148C554 | 48 00 2D 35 */	bl CDBUnlock
/* 8148C558 | 7F E3 FB 78 */	mr r3, r31
/* 8148C55C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148C560 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148C564 | 7C 08 03 A6 */	mtlr r0
/* 8148C568 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148C56C | 4E 80 00 20 */	blr
.endfn CDBRecordClose

# .text:0x614 | 0x8148C570 | size: 0xBC
.fn CDBRecordClose_, global
/* 8148C570 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148C574 | 7C 08 02 A6 */	mflr r0
/* 8148C578 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148C57C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148C580 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148C584 | 7C 7E 1B 78 */	mr r30, r3
/* 8148C588 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8148C58C | 83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8148C590 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148C594 | 41 82 00 18 */	beq .L_8148C5AC
/* 8148C598 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8148C59C | 48 00 5D 81 */	bl CDBCryptBufFree
/* 8148C5A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C5A4 | 41 82 00 08 */	beq .L_8148C5AC
/* 8148C5A8 | 48 00 00 6C */	b .L_8148C614
.L_8148C5AC:
/* 8148C5AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148C5B0 | 40 82 00 0C */	bne .L_8148C5BC
/* 8148C5B4 | 38 60 00 1B */	li r3, 0x1b
/* 8148C5B8 | 48 00 00 5C */	b .L_8148C614
.L_8148C5BC:
/* 8148C5BC | 7F C3 F3 78 */	mr r3, r30
/* 8148C5C0 | 48 00 15 B5 */	bl CDBRecordFileWriteAttrBuf
/* 8148C5C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C5C8 | 41 82 00 18 */	beq .L_8148C5E0
/* 8148C5CC | 2C 03 00 1F */	cmpwi r3, 0x1f
/* 8148C5D0 | 41 82 00 10 */	beq .L_8148C5E0
/* 8148C5D4 | 2C 03 00 0C */	cmpwi r3, 0xc
/* 8148C5D8 | 41 82 00 08 */	beq .L_8148C5E0
/* 8148C5DC | 48 00 00 38 */	b .L_8148C614
.L_8148C5E0:
/* 8148C5E0 | 7F C3 F3 78 */	mr r3, r30
/* 8148C5E4 | 48 00 1A C5 */	bl CDBRecordFileClose
/* 8148C5E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C5EC | 41 82 00 08 */	beq .L_8148C5F4
/* 8148C5F0 | 48 00 00 24 */	b .L_8148C614
.L_8148C5F4:
/* 8148C5F4 | 80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8148C5F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148C5FC | 40 82 00 14 */	bne .L_8148C610
/* 8148C600 | 48 00 3F 45 */	bl CDBVFSync
/* 8148C604 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C608 | 41 82 00 08 */	beq .L_8148C610
/* 8148C60C | 48 00 00 08 */	b .L_8148C614
.L_8148C610:
/* 8148C610 | 38 60 00 00 */	li r3, 0x0
.L_8148C614:
/* 8148C614 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148C618 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148C61C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148C620 | 7C 08 03 A6 */	mtlr r0
/* 8148C624 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148C628 | 4E 80 00 20 */	blr
.endfn CDBRecordClose_

# .text:0x6D0 | 0x8148C62C | size: 0x60
.fn CDBRecordWrite, global
/* 8148C62C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148C630 | 7C 08 02 A6 */	mflr r0
/* 8148C634 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148C638 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148C63C | 7C BF 2B 78 */	mr r31, r5
/* 8148C640 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148C644 | 7C 9E 23 78 */	mr r30, r4
/* 8148C648 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148C64C | 7C 7D 1B 78 */	mr r29, r3
/* 8148C650 | 48 00 2C 2D */	bl CDBLock
/* 8148C654 | 7F A3 EB 78 */	mr r3, r29
/* 8148C658 | 7F C4 F3 78 */	mr r4, r30
/* 8148C65C | 7F E5 FB 78 */	mr r5, r31
/* 8148C660 | 48 00 00 2D */	bl CDBRecordWrite_
/* 8148C664 | 7C 7F 1B 78 */	mr r31, r3
/* 8148C668 | 48 00 2C 21 */	bl CDBUnlock
/* 8148C66C | 7F E3 FB 78 */	mr r3, r31
/* 8148C670 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148C674 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148C678 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148C67C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148C680 | 7C 08 03 A6 */	mtlr r0
/* 8148C684 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148C688 | 4E 80 00 20 */	blr
.endfn CDBRecordWrite

# .text:0x730 | 0x8148C68C | size: 0x178
.fn CDBRecordWrite_, global
/* 8148C68C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148C690 | 7C 08 02 A6 */	mflr r0
/* 8148C694 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148C698 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148C69C | 48 16 CE 25 */	bl _savegpr_27
/* 8148C6A0 | 80 03 00 30 */	lwz r0, 0x30(r3)
/* 8148C6A4 | 3F E0 81 67 */	lis r31, lbl_8166BBC0@ha
/* 8148C6A8 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8148C6AC | 7C 7B 1B 78 */	mr r27, r3
/* 8148C6B0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148C6B4 | 83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8148C6B8 | 80 C6 00 08 */	lwz r6, 0x8(r6)
/* 8148C6BC | 7C 9C 23 78 */	mr r28, r4
/* 8148C6C0 | 7C BD 2B 78 */	mr r29, r5
/* 8148C6C4 | 3B FF BB C0 */	addi r31, r31, lbl_8166BBC0@l
/* 8148C6C8 | 40 82 00 0C */	bne .L_8148C6D4
/* 8148C6CC | 38 60 00 1D */	li r3, 0x1d
/* 8148C6D0 | 48 00 01 1C */	b .L_8148C7EC
.L_8148C6D4:
/* 8148C6D4 | 3C 86 00 01 */	addis r4, r6, 0x1
/* 8148C6D8 | 80 04 C0 10 */	lwz r0, -0x3ff0(r4)
/* 8148C6DC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8148C6E0 | 40 82 00 30 */	bne .L_8148C710
/* 8148C6E4 | 38 60 00 02 */	li r3, 0x2
/* 8148C6E8 | 48 00 3E A9 */	bl CDBIsPrintDebugMessage
/* 8148C6EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C6F0 | 41 82 00 18 */	beq .L_8148C708
/* 8148C6F4 | 38 60 00 02 */	li r3, 0x2
/* 8148C6F8 | 48 00 3E B1 */	bl CDBReport_
/* 8148C6FC | 38 7F 00 84 */	addi r3, r31, 0x84
/* 8148C700 | 4C C6 31 82 */	crclr cr1eq
/* 8148C704 | 48 0A 1F 9D */	bl OSReport
.L_8148C708:
/* 8148C708 | 38 60 00 1A */	li r3, 0x1a
/* 8148C70C | 48 00 00 E0 */	b .L_8148C7EC
.L_8148C710:
/* 8148C710 | 48 00 3D 31 */	bl CDBRecordBelongedDBOpenedAsRW
/* 8148C714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C718 | 40 82 00 30 */	bne .L_8148C748
/* 8148C71C | 38 60 00 02 */	li r3, 0x2
/* 8148C720 | 48 00 3E 71 */	bl CDBIsPrintDebugMessage
/* 8148C724 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C728 | 41 82 00 18 */	beq .L_8148C740
/* 8148C72C | 38 60 00 02 */	li r3, 0x2
/* 8148C730 | 48 00 3E 79 */	bl CDBReport_
/* 8148C734 | 38 7F 00 C8 */	addi r3, r31, 0xc8
/* 8148C738 | 4C C6 31 82 */	crclr cr1eq
/* 8148C73C | 48 0A 1F 65 */	bl OSReport
.L_8148C740:
/* 8148C740 | 38 60 00 1D */	li r3, 0x1d
/* 8148C744 | 48 00 00 A8 */	b .L_8148C7EC
.L_8148C748:
/* 8148C748 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8148C74C | 40 82 00 30 */	bne .L_8148C77C
/* 8148C750 | 38 60 00 02 */	li r3, 0x2
/* 8148C754 | 48 00 3E 3D */	bl CDBIsPrintDebugMessage
/* 8148C758 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C75C | 41 82 00 18 */	beq .L_8148C774
/* 8148C760 | 38 60 00 02 */	li r3, 0x2
/* 8148C764 | 48 00 3E 45 */	bl CDBReport_
/* 8148C768 | 38 7F 00 FC */	addi r3, r31, 0xfc
/* 8148C76C | 4C C6 31 82 */	crclr cr1eq
/* 8148C770 | 48 0A 1F 31 */	bl OSReport
.L_8148C774:
/* 8148C774 | 38 60 00 1B */	li r3, 0x1b
/* 8148C778 | 48 00 00 74 */	b .L_8148C7EC
.L_8148C77C:
/* 8148C77C | 80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8148C780 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8148C784 | 40 82 00 30 */	bne .L_8148C7B4
/* 8148C788 | 38 60 00 02 */	li r3, 0x2
/* 8148C78C | 48 00 3E 05 */	bl CDBIsPrintDebugMessage
/* 8148C790 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C794 | 41 82 00 18 */	beq .L_8148C7AC
/* 8148C798 | 38 60 00 02 */	li r3, 0x2
/* 8148C79C | 48 00 3E 0D */	bl CDBReport_
/* 8148C7A0 | 38 7F 01 34 */	addi r3, r31, 0x134
/* 8148C7A4 | 4C C6 31 82 */	crclr cr1eq
/* 8148C7A8 | 48 0A 1E F9 */	bl OSReport
.L_8148C7AC:
/* 8148C7AC | 38 60 00 1B */	li r3, 0x1b
/* 8148C7B0 | 48 00 00 3C */	b .L_8148C7EC
.L_8148C7B4:
/* 8148C7B4 | 7F 63 DB 78 */	mr r3, r27
/* 8148C7B8 | 7F 84 E3 78 */	mr r4, r28
/* 8148C7BC | 7F A5 EB 78 */	mr r5, r29
/* 8148C7C0 | 48 00 19 75 */	bl CDBRecordFileWriteData
/* 8148C7C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C7C8 | 41 82 00 08 */	beq .L_8148C7D0
/* 8148C7CC | 48 00 00 20 */	b .L_8148C7EC
.L_8148C7D0:
/* 8148C7D0 | 7F 63 DB 78 */	mr r3, r27
/* 8148C7D4 | 48 00 05 F9 */	bl CDBRecordUpdateModifiedDate
/* 8148C7D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C7DC | 38 00 00 00 */	li r0, 0x0
/* 8148C7E0 | 41 82 00 08 */	beq .L_8148C7E8
/* 8148C7E4 | 7C 60 1B 78 */	mr r0, r3
.L_8148C7E8:
/* 8148C7E8 | 7C 03 03 78 */	mr r3, r0
.L_8148C7EC:
/* 8148C7EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148C7F0 | 48 16 CD 1D */	bl _restgpr_27
/* 8148C7F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148C7F8 | 7C 08 03 A6 */	mtlr r0
/* 8148C7FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148C800 | 4E 80 00 20 */	blr
.endfn CDBRecordWrite_

# .text:0x8A8 | 0x8148C804 | size: 0xAC
.fn CDBRecordRead, global
/* 8148C804 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148C808 | 7C 08 02 A6 */	mflr r0
/* 8148C80C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148C810 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148C814 | 7C DF 33 78 */	mr r31, r6
/* 8148C818 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148C81C | 7C BE 2B 78 */	mr r30, r5
/* 8148C820 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148C824 | 7C 9D 23 78 */	mr r29, r4
/* 8148C828 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8148C82C | 7C 7C 1B 78 */	mr r28, r3
/* 8148C830 | 48 00 2A 4D */	bl CDBLock
/* 8148C834 | 80 1C 00 38 */	lwz r0, 0x38(r28)
/* 8148C838 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148C83C | 40 82 00 34 */	bne .L_8148C870
/* 8148C840 | 38 60 00 02 */	li r3, 0x2
/* 8148C844 | 48 00 3D 4D */	bl CDBIsPrintDebugMessage
/* 8148C848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C84C | 41 82 00 1C */	beq .L_8148C868
/* 8148C850 | 38 60 00 02 */	li r3, 0x2
/* 8148C854 | 48 00 3D 55 */	bl CDBReport_
/* 8148C858 | 3C 60 81 67 */	lis r3, lbl_8166BD38@ha
/* 8148C85C | 38 63 BD 38 */	addi r3, r3, lbl_8166BD38@l
/* 8148C860 | 4C C6 31 82 */	crclr cr1eq
/* 8148C864 | 48 0A 1E 3D */	bl OSReport
.L_8148C868:
/* 8148C868 | 3B E0 00 1B */	li r31, 0x1b
/* 8148C86C | 48 00 00 1C */	b .L_8148C888
.L_8148C870:
/* 8148C870 | 7F 83 E3 78 */	mr r3, r28
/* 8148C874 | 7F A4 EB 78 */	mr r4, r29
/* 8148C878 | 7F C5 F3 78 */	mr r5, r30
/* 8148C87C | 7F E6 FB 78 */	mr r6, r31
/* 8148C880 | 48 00 18 C5 */	bl CDBRecordFileReadData
/* 8148C884 | 7C 7F 1B 78 */	mr r31, r3
.L_8148C888:
/* 8148C888 | 48 00 2A 01 */	bl CDBUnlock
/* 8148C88C | 7F E3 FB 78 */	mr r3, r31
/* 8148C890 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148C894 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148C898 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148C89C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8148C8A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148C8A4 | 7C 08 03 A6 */	mtlr r0
/* 8148C8A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148C8AC | 4E 80 00 20 */	blr
.endfn CDBRecordRead

# .text:0x954 | 0x8148C8B0 | size: 0xD0
.fn CDBRecordSeek, global
/* 8148C8B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148C8B4 | 7C 08 02 A6 */	mflr r0
/* 8148C8B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148C8BC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148C8C0 | 7C BF 2B 78 */	mr r31, r5
/* 8148C8C4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148C8C8 | 7C 9E 23 78 */	mr r30, r4
/* 8148C8CC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148C8D0 | 7C 7D 1B 78 */	mr r29, r3
/* 8148C8D4 | 48 00 29 A9 */	bl CDBLock
/* 8148C8D8 | 80 1D 00 38 */	lwz r0, 0x38(r29)
/* 8148C8DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148C8E0 | 40 82 00 0C */	bne .L_8148C8EC
/* 8148C8E4 | 3B E0 00 1B */	li r31, 0x1b
/* 8148C8E8 | 48 00 00 74 */	b .L_8148C95C
.L_8148C8EC:
/* 8148C8EC | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8148C8F0 | 41 82 00 38 */	beq .L_8148C928
/* 8148C8F4 | 40 80 00 10 */	bge .L_8148C904
/* 8148C8F8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148C8FC | 40 80 00 14 */	bge .L_8148C910
/* 8148C900 | 48 00 00 58 */	b .L_8148C958
.L_8148C904:
/* 8148C904 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 8148C908 | 40 80 00 50 */	bge .L_8148C958
/* 8148C90C | 48 00 00 34 */	b .L_8148C940
.L_8148C910:
/* 8148C910 | 7F A3 EB 78 */	mr r3, r29
/* 8148C914 | 7F C4 F3 78 */	mr r4, r30
/* 8148C918 | 38 A0 00 00 */	li r5, 0x0
/* 8148C91C | 48 00 18 F1 */	bl CDBRecordFileSeekData
/* 8148C920 | 7C 7F 1B 78 */	mr r31, r3
/* 8148C924 | 48 00 00 38 */	b .L_8148C95C
.L_8148C928:
/* 8148C928 | 7F A3 EB 78 */	mr r3, r29
/* 8148C92C | 7F C4 F3 78 */	mr r4, r30
/* 8148C930 | 38 A0 00 01 */	li r5, 0x1
/* 8148C934 | 48 00 18 D9 */	bl CDBRecordFileSeekData
/* 8148C938 | 7C 7F 1B 78 */	mr r31, r3
/* 8148C93C | 48 00 00 20 */	b .L_8148C95C
.L_8148C940:
/* 8148C940 | 7F A3 EB 78 */	mr r3, r29
/* 8148C944 | 7F C4 F3 78 */	mr r4, r30
/* 8148C948 | 38 A0 00 02 */	li r5, 0x2
/* 8148C94C | 48 00 18 C1 */	bl CDBRecordFileSeekData
/* 8148C950 | 7C 7F 1B 78 */	mr r31, r3
/* 8148C954 | 48 00 00 08 */	b .L_8148C95C
.L_8148C958:
/* 8148C958 | 3B E0 00 01 */	li r31, 0x1
.L_8148C95C:
/* 8148C95C | 48 00 29 2D */	bl CDBUnlock
/* 8148C960 | 7F E3 FB 78 */	mr r3, r31
/* 8148C964 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148C968 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148C96C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148C970 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148C974 | 7C 08 03 A6 */	mtlr r0
/* 8148C978 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148C97C | 4E 80 00 20 */	blr
.endfn CDBRecordSeek

# .text:0xA24 | 0x8148C980 | size: 0x8C
.fn CDBRecordGetDataSize, global
/* 8148C980 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148C984 | 7C 08 02 A6 */	mflr r0
/* 8148C988 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148C98C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148C990 | 7C 9F 23 78 */	mr r31, r4
/* 8148C994 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148C998 | 7C 7E 1B 78 */	mr r30, r3
/* 8148C99C | 48 00 28 E1 */	bl CDBLock
/* 8148C9A0 | 80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8148C9A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148C9A8 | 40 82 00 34 */	bne .L_8148C9DC
/* 8148C9AC | 38 60 00 02 */	li r3, 0x2
/* 8148C9B0 | 48 00 3B E1 */	bl CDBIsPrintDebugMessage
/* 8148C9B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148C9B8 | 41 82 00 1C */	beq .L_8148C9D4
/* 8148C9BC | 38 60 00 02 */	li r3, 0x2
/* 8148C9C0 | 48 00 3B E9 */	bl CDBReport_
/* 8148C9C4 | 3C 60 81 67 */	lis r3, lbl_8166BDAC@ha
/* 8148C9C8 | 38 63 BD AC */	addi r3, r3, lbl_8166BDAC@l
/* 8148C9CC | 4C C6 31 82 */	crclr cr1eq
/* 8148C9D0 | 48 0A 1C D1 */	bl OSReport
.L_8148C9D4:
/* 8148C9D4 | 3B E0 00 1B */	li r31, 0x1b
/* 8148C9D8 | 48 00 00 14 */	b .L_8148C9EC
.L_8148C9DC:
/* 8148C9DC | 7F C3 F3 78 */	mr r3, r30
/* 8148C9E0 | 7F E4 FB 78 */	mr r4, r31
/* 8148C9E4 | 48 00 17 41 */	bl CDBRecordFileGetDataSize
/* 8148C9E8 | 7C 7F 1B 78 */	mr r31, r3
.L_8148C9EC:
/* 8148C9EC | 48 00 28 9D */	bl CDBUnlock
/* 8148C9F0 | 7F E3 FB 78 */	mr r3, r31
/* 8148C9F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148C9F8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148C9FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148CA00 | 7C 08 03 A6 */	mtlr r0
/* 8148CA04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148CA08 | 4E 80 00 20 */	blr
.endfn CDBRecordGetDataSize

# .text:0xAB0 | 0x8148CA0C | size: 0x40
.fn CDBRecordRemove, global
/* 8148CA0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148CA10 | 7C 08 02 A6 */	mflr r0
/* 8148CA14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148CA18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148CA1C | 7C 7F 1B 78 */	mr r31, r3
/* 8148CA20 | 48 00 28 5D */	bl CDBLock
/* 8148CA24 | 7F E3 FB 78 */	mr r3, r31
/* 8148CA28 | 48 00 00 25 */	bl CDBRecordRemove_
/* 8148CA2C | 7C 7F 1B 78 */	mr r31, r3
/* 8148CA30 | 48 00 28 59 */	bl CDBUnlock
/* 8148CA34 | 7F E3 FB 78 */	mr r3, r31
/* 8148CA38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148CA3C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148CA40 | 7C 08 03 A6 */	mtlr r0
/* 8148CA44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148CA48 | 4E 80 00 20 */	blr
.endfn CDBRecordRemove

# .text:0xAF0 | 0x8148CA4C | size: 0xCC
.fn CDBRecordRemove_, global
/* 8148CA4C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148CA50 | 7C 08 02 A6 */	mflr r0
/* 8148CA54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148CA58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148CA5C | 7C 7F 1B 78 */	mr r31, r3
/* 8148CA60 | 80 03 00 38 */	lwz r0, 0x38(r3)
/* 8148CA64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148CA68 | 41 82 00 34 */	beq .L_8148CA9C
/* 8148CA6C | 38 60 00 02 */	li r3, 0x2
/* 8148CA70 | 48 00 3B 21 */	bl CDBIsPrintDebugMessage
/* 8148CA74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CA78 | 41 82 00 1C */	beq .L_8148CA94
/* 8148CA7C | 38 60 00 02 */	li r3, 0x2
/* 8148CA80 | 48 00 3B 29 */	bl CDBReport_
/* 8148CA84 | 3C 60 81 67 */	lis r3, lbl_8166BF88@ha
/* 8148CA88 | 38 63 BF 88 */	addi r3, r3, lbl_8166BF88@l
/* 8148CA8C | 4C C6 31 82 */	crclr cr1eq
/* 8148CA90 | 48 0A 1C 11 */	bl OSReport
.L_8148CA94:
/* 8148CA94 | 38 60 00 1C */	li r3, 0x1c
/* 8148CA98 | 48 00 00 6C */	b .L_8148CB04
.L_8148CA9C:
/* 8148CA9C | 48 00 39 A5 */	bl CDBRecordBelongedDBOpenedAsRW
/* 8148CAA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CAA4 | 40 82 00 34 */	bne .L_8148CAD8
/* 8148CAA8 | 38 60 00 02 */	li r3, 0x2
/* 8148CAAC | 48 00 3A E5 */	bl CDBIsPrintDebugMessage
/* 8148CAB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CAB4 | 41 82 00 1C */	beq .L_8148CAD0
/* 8148CAB8 | 38 60 00 02 */	li r3, 0x2
/* 8148CABC | 48 00 3A ED */	bl CDBReport_
/* 8148CAC0 | 3C 60 81 67 */	lis r3, lbl_8166BFB8@ha
/* 8148CAC4 | 38 63 BF B8 */	addi r3, r3, lbl_8166BFB8@l
/* 8148CAC8 | 4C C6 31 82 */	crclr cr1eq
/* 8148CACC | 48 0A 1B D5 */	bl OSReport
.L_8148CAD0:
/* 8148CAD0 | 38 60 00 1D */	li r3, 0x1d
/* 8148CAD4 | 48 00 00 30 */	b .L_8148CB04
.L_8148CAD8:
/* 8148CAD8 | 7F E3 FB 78 */	mr r3, r31
/* 8148CADC | 48 00 14 85 */	bl CDBRecordFileDelete
/* 8148CAE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CAE4 | 41 82 00 08 */	beq .L_8148CAEC
/* 8148CAE8 | 48 00 00 1C */	b .L_8148CB04
.L_8148CAEC:
/* 8148CAEC | 48 00 3A 59 */	bl CDBVFSync
/* 8148CAF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CAF4 | 38 00 00 00 */	li r0, 0x0
/* 8148CAF8 | 41 82 00 08 */	beq .L_8148CB00
/* 8148CAFC | 7C 60 1B 78 */	mr r0, r3
.L_8148CB00:
/* 8148CB00 | 7C 03 03 78 */	mr r3, r0
.L_8148CB04:
/* 8148CB04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148CB08 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148CB0C | 7C 08 03 A6 */	mtlr r0
/* 8148CB10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148CB14 | 4E 80 00 20 */	blr
.endfn CDBRecordRemove_

# .text:0xBBC | 0x8148CB18 | size: 0x48
.fn CDBRecordGetTypeForce, global
/* 8148CB18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148CB1C | 7C 08 02 A6 */	mflr r0
/* 8148CB20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148CB24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148CB28 | 7C 9F 23 78 */	mr r31, r4
/* 8148CB2C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148CB30 | 7C 7E 1B 78 */	mr r30, r3
/* 8148CB34 | 48 00 27 49 */	bl CDBLock
/* 8148CB38 | 7F E4 FB 78 */	mr r4, r31
/* 8148CB3C | 38 7E 00 08 */	addi r3, r30, 0x8
/* 8148CB40 | 4B FF A6 D1 */	bl CDBConvKeyStrToType
/* 8148CB44 | 48 00 27 45 */	bl CDBUnlock
/* 8148CB48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148CB4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148CB50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148CB54 | 7C 08 03 A6 */	mtlr r0
/* 8148CB58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148CB5C | 4E 80 00 20 */	blr
.endfn CDBRecordGetTypeForce

# .text:0xC04 | 0x8148CB60 | size: 0x54
.fn CDBRecordGetGameCodeForce, global
/* 8148CB60 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148CB64 | 7C 08 02 A6 */	mflr r0
/* 8148CB68 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148CB6C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148CB70 | 7C 9F 23 78 */	mr r31, r4
/* 8148CB74 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148CB78 | 7C 7E 1B 78 */	mr r30, r3
/* 8148CB7C | 48 00 27 01 */	bl CDBLock
/* 8148CB80 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 8148CB84 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148CB88 | 4B FF A5 E1 */	bl CDBConvKeyStrToGameCode
/* 8148CB8C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8148CB90 | 7F E4 FB 78 */	mr r4, r31
/* 8148CB94 | 4B FF A0 51 */	bl CDBConvGCValueToGCStr
/* 8148CB98 | 48 00 26 F1 */	bl CDBUnlock
/* 8148CB9C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148CBA0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148CBA4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148CBA8 | 7C 08 03 A6 */	mtlr r0
/* 8148CBAC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148CBB0 | 4E 80 00 20 */	blr
.endfn CDBRecordGetGameCodeForce

# .text:0xC58 | 0x8148CBB4 | size: 0x48
.fn CDBRecordGetKeyForce, global
/* 8148CBB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148CBB8 | 7C 08 02 A6 */	mflr r0
/* 8148CBBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148CBC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148CBC4 | 7C 9F 23 78 */	mr r31, r4
/* 8148CBC8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148CBCC | 7C 7E 1B 78 */	mr r30, r3
/* 8148CBD0 | 48 00 26 AD */	bl CDBLock
/* 8148CBD4 | 7F E3 FB 78 */	mr r3, r31
/* 8148CBD8 | 38 9E 00 08 */	addi r4, r30, 0x8
/* 8148CBDC | 48 00 19 A9 */	bl CDBRecordKeyCopy
/* 8148CBE0 | 48 00 26 A9 */	bl CDBUnlock
/* 8148CBE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148CBE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148CBEC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148CBF0 | 7C 08 03 A6 */	mtlr r0
/* 8148CBF4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148CBF8 | 4E 80 00 20 */	blr
.endfn CDBRecordGetKeyForce

# .text:0xCA0 | 0x8148CBFC | size: 0x88
.fn CDBRecordGetCalendarTimeForce, global
/* 8148CBFC | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8148CC00 | 7C 08 02 A6 */	mflr r0
/* 8148CC04 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8148CC08 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8148CC0C | 48 16 C8 AD */	bl _savegpr_25
/* 8148CC10 | 7C 79 1B 78 */	mr r25, r3
/* 8148CC14 | 7C 9A 23 78 */	mr r26, r4
/* 8148CC18 | 7C BB 2B 78 */	mr r27, r5
/* 8148CC1C | 7C DC 33 78 */	mr r28, r6
/* 8148CC20 | 7C FD 3B 78 */	mr r29, r7
/* 8148CC24 | 7D 1E 43 78 */	mr r30, r8
/* 8148CC28 | 7D 3F 4B 78 */	mr r31, r9
/* 8148CC2C | 48 00 26 51 */	bl CDBLock
/* 8148CC30 | 38 79 00 08 */	addi r3, r25, 0x8
/* 8148CC34 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8148CC38 | 4B FF A0 CD */	bl CDBConvKeyStrToEpochStr
/* 8148CC3C | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148CC40 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148CC44 | 4B FF A1 05 */	bl CDBConvEpochStrToEpochValue
/* 8148CC48 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8148CC4C | 7F 44 D3 78 */	mr r4, r26
/* 8148CC50 | 7F 65 DB 78 */	mr r5, r27
/* 8148CC54 | 7F 86 E3 78 */	mr r6, r28
/* 8148CC58 | 7F A7 EB 78 */	mr r7, r29
/* 8148CC5C | 7F C8 F3 78 */	mr r8, r30
/* 8148CC60 | 7F E9 FB 78 */	mr r9, r31
/* 8148CC64 | 4B FF A0 F5 */	bl CDBConvEpochValueToDate
/* 8148CC68 | 48 00 26 21 */	bl CDBUnlock
/* 8148CC6C | 39 61 00 70 */	addi r11, r1, 0x70
/* 8148CC70 | 48 16 C8 95 */	bl _restgpr_25
/* 8148CC74 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8148CC78 | 7C 08 03 A6 */	mtlr r0
/* 8148CC7C | 38 21 00 70 */	addi r1, r1, 0x70
/* 8148CC80 | 4E 80 00 20 */	blr
.endfn CDBRecordGetCalendarTimeForce

# .text:0xD28 | 0x8148CC84 | size: 0x108
.fn CDBRecordGetId, global
/* 8148CC84 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8148CC88 | 7C 08 02 A6 */	mflr r0
/* 8148CC8C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8148CC90 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8148CC94 | 7C 7F 1B 78 */	mr r31, r3
/* 8148CC98 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 8148CC9C | 93 A1 00 54 */	stw r29, 0x54(r1)
/* 8148CCA0 | 7C 9D 23 78 */	mr r29, r4
/* 8148CCA4 | 48 00 25 D9 */	bl CDBLock
/* 8148CCA8 | 83 DF 00 38 */	lwz r30, 0x38(r31)
/* 8148CCAC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8148CCB0 | 40 82 00 34 */	bne .L_8148CCE4
/* 8148CCB4 | 38 60 00 02 */	li r3, 0x2
/* 8148CCB8 | 48 00 38 D9 */	bl CDBIsPrintDebugMessage
/* 8148CCBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CCC0 | 41 82 00 1C */	beq .L_8148CCDC
/* 8148CCC4 | 38 60 00 02 */	li r3, 0x2
/* 8148CCC8 | 48 00 38 E1 */	bl CDBReport_
/* 8148CCCC | 3C 60 81 67 */	lis r3, lbl_8166C3D4@ha
/* 8148CCD0 | 38 63 C3 D4 */	addi r3, r3, lbl_8166C3D4@l
/* 8148CCD4 | 4C C6 31 82 */	crclr cr1eq
/* 8148CCD8 | 48 0A 19 C9 */	bl OSReport
.L_8148CCDC:
/* 8148CCDC | 3B E0 00 1B */	li r31, 0x1b
/* 8148CCE0 | 48 00 00 88 */	b .L_8148CD68
.L_8148CCE4:
/* 8148CCE4 | 48 00 25 99 */	bl CDBLock
/* 8148CCE8 | 80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8148CCEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148CCF0 | 40 82 00 34 */	bne .L_8148CD24
/* 8148CCF4 | 38 60 00 02 */	li r3, 0x2
/* 8148CCF8 | 48 00 38 99 */	bl CDBIsPrintDebugMessage
/* 8148CCFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CD00 | 41 82 00 1C */	beq .L_8148CD1C
/* 8148CD04 | 38 60 00 02 */	li r3, 0x2
/* 8148CD08 | 48 00 38 A1 */	bl CDBReport_
/* 8148CD0C | 3C 60 81 67 */	lis r3, lbl_8166C170@ha
/* 8148CD10 | 38 63 C1 70 */	addi r3, r3, lbl_8166C170@l
/* 8148CD14 | 4C C6 31 82 */	crclr cr1eq
/* 8148CD18 | 48 0A 19 89 */	bl OSReport
.L_8148CD1C:
/* 8148CD1C | 3B E0 00 1B */	li r31, 0x1b
/* 8148CD20 | 48 00 00 28 */	b .L_8148CD48
.L_8148CD24:
/* 8148CD24 | 48 00 25 59 */	bl CDBLock
/* 8148CD28 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 8148CD2C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148CD30 | 4B FF 9F D5 */	bl CDBConvKeyStrToEpochStr
/* 8148CD34 | 7F A4 EB 78 */	mr r4, r29
/* 8148CD38 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148CD3C | 4B FF A0 0D */	bl CDBConvEpochStrToEpochValue
/* 8148CD40 | 48 00 25 49 */	bl CDBUnlock
/* 8148CD44 | 3B E0 00 00 */	li r31, 0x0
.L_8148CD48:
/* 8148CD48 | 48 00 25 41 */	bl CDBUnlock
/* 8148CD4C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148CD50 | 41 82 00 08 */	beq .L_8148CD58
/* 8148CD54 | 48 00 00 14 */	b .L_8148CD68
.L_8148CD58:
/* 8148CD58 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 8148CD5C | 38 9D 00 04 */	addi r4, r29, 0x4
/* 8148CD60 | 48 00 3D 01 */	bl CDBAttrGetIDNumber
/* 8148CD64 | 3B E0 00 00 */	li r31, 0x0
.L_8148CD68:
/* 8148CD68 | 48 00 25 21 */	bl CDBUnlock
/* 8148CD6C | 7F E3 FB 78 */	mr r3, r31
/* 8148CD70 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8148CD74 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8148CD78 | 83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8148CD7C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8148CD80 | 7C 08 03 A6 */	mtlr r0
/* 8148CD84 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8148CD88 | 4E 80 00 20 */	blr
.endfn CDBRecordGetId

# .text:0xE30 | 0x8148CD8C | size: 0x40
.fn CDBRecordIsExistFile, global
/* 8148CD8C | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8148CD90 | 7C 08 02 A6 */	mflr r0
/* 8148CD94 | 90 01 01 14 */	stw r0, 0x114(r1)
/* 8148CD98 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148CD9C | 93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8148CDA0 | 7C 7F 1B 78 */	mr r31, r3
/* 8148CDA4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8148CDA8 | 4B FF A0 85 */	bl CDBConvKeyToFullPath
/* 8148CDAC | 80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8148CDB0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148CDB4 | 4B FF E3 E9 */	bl CDBFSIsExistFile
/* 8148CDB8 | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 8148CDBC | 83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8148CDC0 | 7C 08 03 A6 */	mtlr r0
/* 8148CDC4 | 38 21 01 10 */	addi r1, r1, 0x110
/* 8148CDC8 | 4E 80 00 20 */	blr
.endfn CDBRecordIsExistFile

# .text:0xE70 | 0x8148CDCC | size: 0x118
.fn CDBRecordUpdateModifiedDate, global
/* 8148CDCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148CDD0 | 7C 08 02 A6 */	mflr r0
/* 8148CDD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148CDD8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148CDDC | 7C 7F 1B 78 */	mr r31, r3
/* 8148CDE0 | 48 0A 8E A1 */	bl OSGetTime
/* 8148CDE4 | 3C C0 80 00 */	lis r6, 0x8000
/* 8148CDE8 | 38 A0 00 00 */	li r5, 0x0
/* 8148CDEC | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 8148CDF0 | 54 06 F0 BE */	srwi r6, r0, 2
/* 8148CDF4 | 48 16 C8 1D */	bl __div2i
/* 8148CDF8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8148CDFC | 83 FF 00 38 */	lwz r31, 0x38(r31)
/* 8148CE00 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148CE04 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 8148CE08 | 80 03 C0 10 */	lwz r0, -0x3ff0(r3)
/* 8148CE0C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8148CE10 | 40 82 00 34 */	bne .L_8148CE44
/* 8148CE14 | 38 60 00 02 */	li r3, 0x2
/* 8148CE18 | 48 00 37 79 */	bl CDBIsPrintDebugMessage
/* 8148CE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CE20 | 41 82 00 1C */	beq .L_8148CE3C
/* 8148CE24 | 38 60 00 02 */	li r3, 0x2
/* 8148CE28 | 48 00 37 81 */	bl CDBReport_
/* 8148CE2C | 3C 60 81 67 */	lis r3, lbl_8166C40C@ha
/* 8148CE30 | 38 63 C4 0C */	addi r3, r3, lbl_8166C40C@l
/* 8148CE34 | 4C C6 31 82 */	crclr cr1eq
/* 8148CE38 | 48 0A 18 69 */	bl OSReport
.L_8148CE3C:
/* 8148CE3C | 38 60 00 1A */	li r3, 0x1a
/* 8148CE40 | 48 00 00 90 */	b .L_8148CED0
.L_8148CE44:
/* 8148CE44 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148CE48 | 40 82 00 34 */	bne .L_8148CE7C
/* 8148CE4C | 38 60 00 02 */	li r3, 0x2
/* 8148CE50 | 48 00 37 41 */	bl CDBIsPrintDebugMessage
/* 8148CE54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CE58 | 41 82 00 1C */	beq .L_8148CE74
/* 8148CE5C | 38 60 00 02 */	li r3, 0x2
/* 8148CE60 | 48 00 37 49 */	bl CDBReport_
/* 8148CE64 | 3C 60 81 67 */	lis r3, lbl_8166C458@ha
/* 8148CE68 | 38 63 C4 58 */	addi r3, r3, lbl_8166C458@l
/* 8148CE6C | 4C C6 31 82 */	crclr cr1eq
/* 8148CE70 | 48 0A 18 31 */	bl OSReport
.L_8148CE74:
/* 8148CE74 | 38 60 00 1B */	li r3, 0x1b
/* 8148CE78 | 48 00 00 58 */	b .L_8148CED0
.L_8148CE7C:
/* 8148CE7C | 38 7F 00 20 */	addi r3, r31, 0x20
/* 8148CE80 | 48 00 3B 1D */	bl CDBAttrSetModifiedDate
/* 8148CE84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CE88 | 41 82 00 08 */	beq .L_8148CE90
/* 8148CE8C | 48 00 00 44 */	b .L_8148CED0
.L_8148CE90:
/* 8148CE90 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 8148CE94 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148CE98 | 48 00 3B 95 */	bl CDBAttrGetModifiedCount
/* 8148CE9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CEA0 | 41 82 00 08 */	beq .L_8148CEA8
/* 8148CEA4 | 48 00 00 2C */	b .L_8148CED0
.L_8148CEA8:
/* 8148CEA8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8148CEAC | 38 7F 00 20 */	addi r3, r31, 0x20
/* 8148CEB0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8148CEB4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8148CEB8 | 48 00 3B 2D */	bl CDBAttrSetModifiedCount
/* 8148CEBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CEC0 | 38 00 00 00 */	li r0, 0x0
/* 8148CEC4 | 41 82 00 08 */	beq .L_8148CECC
/* 8148CEC8 | 7C 60 1B 78 */	mr r0, r3
.L_8148CECC:
/* 8148CECC | 7C 03 03 78 */	mr r3, r0
.L_8148CED0:
/* 8148CED0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148CED4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148CED8 | 7C 08 03 A6 */	mtlr r0
/* 8148CEDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148CEE0 | 4E 80 00 20 */	blr
.endfn CDBRecordUpdateModifiedDate

# .text:0xF88 | 0x8148CEE4 | size: 0x40
.fn CDBRecordBackupToSD, global
/* 8148CEE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148CEE8 | 7C 08 02 A6 */	mflr r0
/* 8148CEEC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148CEF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148CEF4 | 7C 7F 1B 78 */	mr r31, r3
/* 8148CEF8 | 48 00 23 85 */	bl CDBLock
/* 8148CEFC | 7F E3 FB 78 */	mr r3, r31
/* 8148CF00 | 48 00 00 25 */	bl CDBRecordBackupToSD_
/* 8148CF04 | 7C 7F 1B 78 */	mr r31, r3
/* 8148CF08 | 48 00 23 81 */	bl CDBUnlock
/* 8148CF0C | 7F E3 FB 78 */	mr r3, r31
/* 8148CF10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148CF14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148CF18 | 7C 08 03 A6 */	mtlr r0
/* 8148CF1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148CF20 | 4E 80 00 20 */	blr
.endfn CDBRecordBackupToSD

# .text:0xFC8 | 0x8148CF24 | size: 0x228
.fn CDBRecordBackupToSD_, global
/* 8148CF24 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8148CF28 | 7C 08 02 A6 */	mflr r0
/* 8148CF2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CF30 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8148CF34 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8148CF38 | 3B E0 00 00 */	li r31, 0x0
/* 8148CF3C | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 8148CF40 | 93 A1 00 54 */	stw r29, 0x54(r1)
/* 8148CF44 | 7C 7D 1B 78 */	mr r29, r3
/* 8148CF48 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8148CF4C | 41 82 00 14 */	beq .L_8148CF60
/* 8148CF50 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8148CF54 | 48 00 13 91 */	bl CDBRecordKeyIsValid
/* 8148CF58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CF5C | 40 82 00 0C */	bne .L_8148CF68
.L_8148CF60:
/* 8148CF60 | 38 60 00 01 */	li r3, 0x1
/* 8148CF64 | 48 00 01 CC */	b .L_8148D130
.L_8148CF68:
/* 8148CF68 | 80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8148CF6C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148CF70 | 41 82 00 0C */	beq .L_8148CF7C
/* 8148CF74 | 38 60 00 02 */	li r3, 0x2
/* 8148CF78 | 48 00 01 B8 */	b .L_8148D130
.L_8148CF7C:
/* 8148CF7C | 4B FF EF C1 */	bl CDBFSSDIsMounted
/* 8148CF80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CF84 | 40 82 00 0C */	bne .L_8148CF90
/* 8148CF88 | 38 60 00 0B */	li r3, 0xb
/* 8148CF8C | 48 00 01 A4 */	b .L_8148D130
.L_8148CF90:
/* 8148CF90 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8148CF94 | 48 00 52 F9 */	bl CDBCryptBufAllocate
/* 8148CF98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CF9C | 7C 7E 1B 78 */	mr r30, r3
/* 8148CFA0 | 41 82 00 1C */	beq .L_8148CFBC
/* 8148CFA4 | 48 00 22 D9 */	bl CDBLock
/* 8148CFA8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148CFAC | 4B FF F5 C5 */	bl CDBRecordClose_
/* 8148CFB0 | 48 00 22 D9 */	bl CDBUnlock
/* 8148CFB4 | 7F C3 F3 78 */	mr r3, r30
/* 8148CFB8 | 48 00 01 78 */	b .L_8148D130
.L_8148CFBC:
/* 8148CFBC | 83 C1 00 14 */	lwz r30, 0x14(r1)
/* 8148CFC0 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8148CFC4 | 38 9D 00 08 */	addi r4, r29, 0x8
/* 8148CFC8 | 48 00 15 BD */	bl CDBRecordKeyCopy
/* 8148CFCC | 38 00 00 02 */	li r0, 0x2
/* 8148CFD0 | 93 E1 00 48 */	stw r31, 0x48(r1)
/* 8148CFD4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148CFD8 | 90 01 00 40 */	stw r0, 0x40(r1)
/* 8148CFDC | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8148CFE0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8148CFE4 | 48 00 0C 29 */	bl CDBRecordFileCreateBlank
/* 8148CFE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148CFEC | 7C 7F 1B 78 */	mr r31, r3
/* 8148CFF0 | 41 82 00 1C */	beq .L_8148D00C
/* 8148CFF4 | 48 00 22 89 */	bl CDBLock
/* 8148CFF8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148CFFC | 4B FF F5 75 */	bl CDBRecordClose_
/* 8148D000 | 48 00 22 89 */	bl CDBUnlock
/* 8148D004 | 7F E3 FB 78 */	mr r3, r31
/* 8148D008 | 48 00 01 28 */	b .L_8148D130
.L_8148D00C:
/* 8148D00C | 3C C0 00 04 */	lis r6, 0x4
/* 8148D010 | 7F A3 EB 78 */	mr r3, r29
/* 8148D014 | 7F C4 F3 78 */	mr r4, r30
/* 8148D018 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 8148D01C | 38 C6 EC 00 */	subi r6, r6, 0x1400
/* 8148D020 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 8148D024 | 48 00 03 05 */	bl CDBRecordEncrypt
/* 8148D028 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D02C | 7C 7F 1B 78 */	mr r31, r3
/* 8148D030 | 41 82 00 24 */	beq .L_8148D054
/* 8148D034 | 48 00 22 49 */	bl CDBLock
/* 8148D038 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148D03C | 4B FF F5 35 */	bl CDBRecordClose_
/* 8148D040 | 48 00 22 49 */	bl CDBUnlock
/* 8148D044 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148D048 | 48 00 0F 19 */	bl CDBRecordFileDelete
/* 8148D04C | 7F E3 FB 78 */	mr r3, r31
/* 8148D050 | 48 00 00 E0 */	b .L_8148D130
.L_8148D054:
/* 8148D054 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8148D058 | 7F C4 F3 78 */	mr r4, r30
/* 8148D05C | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148D060 | 48 00 0C F5 */	bl CDBRecordFileDump
/* 8148D064 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D068 | 7C 7F 1B 78 */	mr r31, r3
/* 8148D06C | 41 82 00 1C */	beq .L_8148D088
/* 8148D070 | 48 00 22 0D */	bl CDBLock
/* 8148D074 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148D078 | 4B FF F4 F9 */	bl CDBRecordClose_
/* 8148D07C | 48 00 22 0D */	bl CDBUnlock
/* 8148D080 | 7F E3 FB 78 */	mr r3, r31
/* 8148D084 | 48 00 00 AC */	b .L_8148D130
.L_8148D088:
/* 8148D088 | 48 00 21 F5 */	bl CDBLock
/* 8148D08C | 7F A3 EB 78 */	mr r3, r29
/* 8148D090 | 4B FF F4 E1 */	bl CDBRecordClose_
/* 8148D094 | 7C 7F 1B 78 */	mr r31, r3
/* 8148D098 | 48 00 21 F1 */	bl CDBUnlock
/* 8148D09C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148D0A0 | 41 82 00 1C */	beq .L_8148D0BC
/* 8148D0A4 | 48 00 21 D9 */	bl CDBLock
/* 8148D0A8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148D0AC | 4B FF F4 C5 */	bl CDBRecordClose_
/* 8148D0B0 | 48 00 21 D9 */	bl CDBUnlock
/* 8148D0B4 | 7F E3 FB 78 */	mr r3, r31
/* 8148D0B8 | 48 00 00 78 */	b .L_8148D130
.L_8148D0BC:
/* 8148D0BC | 48 00 21 C1 */	bl CDBLock
/* 8148D0C0 | 7F A3 EB 78 */	mr r3, r29
/* 8148D0C4 | 4B FF F9 89 */	bl CDBRecordRemove_
/* 8148D0C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8148D0CC | 48 00 21 BD */	bl CDBUnlock
/* 8148D0D0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148D0D4 | 41 82 00 1C */	beq .L_8148D0F0
/* 8148D0D8 | 48 00 21 A5 */	bl CDBLock
/* 8148D0DC | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148D0E0 | 4B FF F4 91 */	bl CDBRecordClose_
/* 8148D0E4 | 48 00 21 A5 */	bl CDBUnlock
/* 8148D0E8 | 7F E3 FB 78 */	mr r3, r31
/* 8148D0EC | 48 00 00 44 */	b .L_8148D130
.L_8148D0F0:
/* 8148D0F0 | 48 00 21 8D */	bl CDBLock
/* 8148D0F4 | 83 E1 00 48 */	lwz r31, 0x48(r1)
/* 8148D0F8 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8148D0FC | 38 81 00 18 */	addi r4, r1, 0x18
/* 8148D100 | 48 00 14 85 */	bl CDBRecordKeyCopy
/* 8148D104 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8148D108 | 38 7F 04 38 */	addi r3, r31, 0x438
/* 8148D10C | 38 81 00 18 */	addi r4, r1, 0x18
/* 8148D110 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 8148D114 | 80 01 00 48 */	lwz r0, 0x48(r1)
/* 8148D118 | 90 1D 00 38 */	stw r0, 0x38(r29)
/* 8148D11C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148D120 | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 8148D124 | 48 00 14 61 */	bl CDBRecordKeyCopy
/* 8148D128 | 48 00 21 61 */	bl CDBUnlock
/* 8148D12C | 38 60 00 00 */	li r3, 0x0
.L_8148D130:
/* 8148D130 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8148D134 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8148D138 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8148D13C | 83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8148D140 | 7C 08 03 A6 */	mtlr r0
/* 8148D144 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8148D148 | 4E 80 00 20 */	blr
.endfn CDBRecordBackupToSD_

# .text:0x11F0 | 0x8148D14C | size: 0x1DC
.fn CDBCryptBuffer, global
/* 8148D14C | 54 2B 06 BE */	clrlwi r11, r1, 26
/* 8148D150 | 7C 2C 0B 78 */	mr r12, r1
/* 8148D154 | 21 6B FE 40 */	subfic r11, r11, -0x1c0
/* 8148D158 | 7C 21 59 6E */	stwux r1, r1, r11
/* 8148D15C | 7C 08 02 A6 */	mflr r0
/* 8148D160 | 7D 8B 63 78 */	mr r11, r12
/* 8148D164 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8148D168 | 48 16 C3 49 */	bl _savegpr_23
/* 8148D16C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8148D170 | 3F A0 81 67 */	lis r29, lbl_8166BBC0@ha
/* 8148D174 | 7C 77 1B 78 */	mr r23, r3
/* 8148D178 | 7C 98 23 78 */	mr r24, r4
/* 8148D17C | 7C D9 33 78 */	mr r25, r6
/* 8148D180 | 7C FA 3B 78 */	mr r26, r7
/* 8148D184 | 3B BD BB C0 */	addi r29, r29, lbl_8166BBC0@l
/* 8148D188 | 41 82 00 0C */	beq .L_8148D194
/* 8148D18C | 38 00 00 00 */	li r0, 0x0
/* 8148D190 | 90 06 00 00 */	stw r0, 0x0(r6)
.L_8148D194:
/* 8148D194 | 3C 80 81 62 */	lis r4, lbl_81618180@ha
/* 8148D198 | 7C A6 2B 78 */	mr r6, r5
/* 8148D19C | 38 61 00 40 */	addi r3, r1, 0x40
/* 8148D1A0 | 38 A0 00 10 */	li r5, 0x10
/* 8148D1A4 | 38 84 81 80 */	addi r4, r4, lbl_81618180@l
/* 8148D1A8 | 48 00 83 F1 */	bl NETAESCreate
/* 8148D1AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D1B0 | 40 82 00 30 */	bne .L_8148D1E0
/* 8148D1B4 | 38 60 00 02 */	li r3, 0x2
/* 8148D1B8 | 48 00 33 D9 */	bl CDBIsPrintDebugMessage
/* 8148D1BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D1C0 | 41 82 00 18 */	beq .L_8148D1D8
/* 8148D1C4 | 38 60 00 02 */	li r3, 0x2
/* 8148D1C8 | 48 00 33 E1 */	bl CDBReport_
/* 8148D1CC | 38 7D 09 0C */	addi r3, r29, 0x90c
/* 8148D1D0 | 4C C6 31 82 */	crclr cr1eq
/* 8148D1D4 | 48 0A 14 CD */	bl OSReport
.L_8148D1D8:
/* 8148D1D8 | 38 60 00 0E */	li r3, 0xe
/* 8148D1DC | 48 00 01 30 */	b .L_8148D30C
.L_8148D1E0:
/* 8148D1E0 | 3B 80 00 00 */	li r28, 0x0
/* 8148D1E4 | 3F E0 81 0D */	lis r31, lbl_810C8AC0@ha
/* 8148D1E8 | 3F C0 81 0D */	lis r30, lbl_810C8A80@ha
/* 8148D1EC | 48 00 01 0C */	b .L_8148D2F8
.L_8148D1F0:
/* 8148D1F0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8148D1F4 | 41 82 00 10 */	beq .L_8148D204
/* 8148D1F8 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8148D1FC | 38 03 00 40 */	addi r0, r3, 0x40
/* 8148D200 | 90 19 00 00 */	stw r0, 0x0(r25)
.L_8148D204:
/* 8148D204 | 38 1C 00 40 */	addi r0, r28, 0x40
/* 8148D208 | 7C 00 C0 40 */	cmplw r0, r24
/* 8148D20C | 40 80 00 0C */	bge .L_8148D218
/* 8148D210 | 3B 60 00 40 */	li r27, 0x40
/* 8148D214 | 48 00 00 18 */	b .L_8148D22C
.L_8148D218:
/* 8148D218 | 7F 7C C0 50 */	subf r27, r28, r24
/* 8148D21C | 38 7E 8A 80 */	addi r3, r30, lbl_810C8A80@l
/* 8148D220 | 38 80 00 00 */	li r4, 0x0
/* 8148D224 | 38 A0 00 40 */	li r5, 0x40
/* 8148D228 | 4B EA 31 0D */	bl memset
.L_8148D22C:
/* 8148D22C | 7F 65 DB 78 */	mr r5, r27
/* 8148D230 | 38 7E 8A 80 */	addi r3, r30, lbl_810C8A80@l
/* 8148D234 | 7C 97 E2 14 */	add r4, r23, r28
/* 8148D238 | 4B EA 2F F9 */	bl memcpy
/* 8148D23C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8148D240 | 41 82 00 54 */	beq .L_8148D294
/* 8148D244 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8148D248 | 38 9F 8A C0 */	addi r4, r31, lbl_810C8AC0@l
/* 8148D24C | 38 BE 8A 80 */	addi r5, r30, lbl_810C8A80@l
/* 8148D250 | 38 C0 00 40 */	li r6, 0x40
/* 8148D254 | 48 00 83 51 */	bl NETAESEncrypt
/* 8148D258 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D25C | 40 82 00 88 */	bne .L_8148D2E4
/* 8148D260 | 38 60 00 02 */	li r3, 0x2
/* 8148D264 | 48 00 33 2D */	bl CDBIsPrintDebugMessage
/* 8148D268 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D26C | 41 82 00 18 */	beq .L_8148D284
/* 8148D270 | 38 60 00 02 */	li r3, 0x2
/* 8148D274 | 48 00 33 35 */	bl CDBReport_
/* 8148D278 | 38 7D 09 1C */	addi r3, r29, 0x91c
/* 8148D27C | 4C C6 31 82 */	crclr cr1eq
/* 8148D280 | 48 0A 14 21 */	bl OSReport
.L_8148D284:
/* 8148D284 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8148D288 | 48 00 83 19 */	bl NETAESDelete
/* 8148D28C | 38 60 00 0E */	li r3, 0xe
/* 8148D290 | 48 00 00 7C */	b .L_8148D30C
.L_8148D294:
/* 8148D294 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8148D298 | 38 9F 8A C0 */	addi r4, r31, lbl_810C8AC0@l
/* 8148D29C | 38 BE 8A 80 */	addi r5, r30, lbl_810C8A80@l
/* 8148D2A0 | 38 C0 00 40 */	li r6, 0x40
/* 8148D2A4 | 48 00 83 B9 */	bl NETAESDecrypt
/* 8148D2A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D2AC | 40 82 00 38 */	bne .L_8148D2E4
/* 8148D2B0 | 38 60 00 02 */	li r3, 0x2
/* 8148D2B4 | 48 00 32 DD */	bl CDBIsPrintDebugMessage
/* 8148D2B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D2BC | 41 82 00 18 */	beq .L_8148D2D4
/* 8148D2C0 | 38 60 00 02 */	li r3, 0x2
/* 8148D2C4 | 48 00 32 E5 */	bl CDBReport_
/* 8148D2C8 | 38 7D 09 2C */	addi r3, r29, 0x92c
/* 8148D2CC | 4C C6 31 82 */	crclr cr1eq
/* 8148D2D0 | 48 0A 13 D1 */	bl OSReport
.L_8148D2D4:
/* 8148D2D4 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8148D2D8 | 48 00 82 C9 */	bl NETAESDelete
/* 8148D2DC | 38 60 00 0E */	li r3, 0xe
/* 8148D2E0 | 48 00 00 2C */	b .L_8148D30C
.L_8148D2E4:
/* 8148D2E4 | 7C 77 E2 14 */	add r3, r23, r28
/* 8148D2E8 | 38 9F 8A C0 */	addi r4, r31, lbl_810C8AC0@l
/* 8148D2EC | 38 A0 00 40 */	li r5, 0x40
/* 8148D2F0 | 4B EA 2F 41 */	bl memcpy
/* 8148D2F4 | 3B 9C 00 40 */	addi r28, r28, 0x40
.L_8148D2F8:
/* 8148D2F8 | 7C 1C C0 40 */	cmplw r28, r24
/* 8148D2FC | 41 80 FE F4 */	blt .L_8148D1F0
/* 8148D300 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8148D304 | 48 00 82 9D */	bl NETAESDelete
/* 8148D308 | 38 60 00 00 */	li r3, 0x0
.L_8148D30C:
/* 8148D30C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8148D310 | 7D 4B 53 78 */	mr r11, r10
/* 8148D314 | 48 16 C1 E9 */	bl _restgpr_23
/* 8148D318 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8148D31C | 7C 08 03 A6 */	mtlr r0
/* 8148D320 | 7D 41 53 78 */	mr r1, r10
/* 8148D324 | 4E 80 00 20 */	blr
.endfn CDBCryptBuffer

# .text:0x13CC | 0x8148D328 | size: 0x470
.fn CDBRecordEncrypt, global
/* 8148D328 | 54 2B 06 BE */	clrlwi r11, r1, 26
/* 8148D32C | 7C 2C 0B 78 */	mr r12, r1
/* 8148D330 | 21 6B FC 00 */	subfic r11, r11, -0x400
/* 8148D334 | 7C 21 59 6E */	stwux r1, r1, r11
/* 8148D338 | 7C 08 02 A6 */	mflr r0
/* 8148D33C | 7D 8B 63 78 */	mr r11, r12
/* 8148D340 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8148D344 | 48 16 C1 71 */	bl _savegpr_24
/* 8148D348 | 3F 20 81 67 */	lis r25, lbl_8166BBC0@ha
/* 8148D34C | 83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8148D350 | 7C 7A 1B 78 */	mr r26, r3
/* 8148D354 | 7C 9B 23 78 */	mr r27, r4
/* 8148D358 | 7C B8 2B 78 */	mr r24, r5
/* 8148D35C | 7C DC 33 78 */	mr r28, r6
/* 8148D360 | 7C FD 3B 78 */	mr r29, r7
/* 8148D364 | 3B 39 BB C0 */	addi r25, r25, lbl_8166BBC0@l
/* 8148D368 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 8148D36C | 38 80 00 00 */	li r4, 0x0
/* 8148D370 | 38 A0 00 40 */	li r5, 0x40
/* 8148D374 | 4B EA 2F C1 */	bl memset
/* 8148D378 | 38 61 02 00 */	addi r3, r1, 0x200
/* 8148D37C | 38 80 00 00 */	li r4, 0x0
/* 8148D380 | 38 A0 01 BC */	li r5, 0x1bc
/* 8148D384 | 4B EA 2F B1 */	bl memset
/* 8148D388 | 7F 63 DB 78 */	mr r3, r27
/* 8148D38C | 7F 85 E3 78 */	mr r5, r28
/* 8148D390 | 38 80 00 00 */	li r4, 0x0
/* 8148D394 | 4B EA 2F A1 */	bl memset
/* 8148D398 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8148D39C | 40 82 00 0C */	bne .L_8148D3A8
/* 8148D3A0 | 38 60 00 1B */	li r3, 0x1b
/* 8148D3A4 | 48 00 03 D8 */	b .L_8148D77C
.L_8148D3A8:
/* 8148D3A8 | 80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8148D3AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148D3B0 | 40 82 00 0C */	bne .L_8148D3BC
/* 8148D3B4 | 38 60 00 1A */	li r3, 0x1a
/* 8148D3B8 | 48 00 03 C4 */	b .L_8148D77C
.L_8148D3BC:
/* 8148D3BC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8148D3C0 | 40 82 00 0C */	bne .L_8148D3CC
/* 8148D3C4 | 38 60 00 01 */	li r3, 0x1
/* 8148D3C8 | 48 00 03 B4 */	b .L_8148D77C
.L_8148D3CC:
/* 8148D3CC | 83 FA 00 38 */	lwz r31, 0x38(r26)
/* 8148D3D0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148D3D4 | 40 82 00 0C */	bne .L_8148D3E0
/* 8148D3D8 | 38 00 00 1B */	li r0, 0x1b
/* 8148D3DC | 48 00 00 30 */	b .L_8148D40C
.L_8148D3E0:
/* 8148D3E0 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8148D3E4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148D3E8 | 40 82 00 0C */	bne .L_8148D3F4
/* 8148D3EC | 38 00 00 1A */	li r0, 0x1a
/* 8148D3F0 | 48 00 00 1C */	b .L_8148D40C
.L_8148D3F4:
/* 8148D3F4 | 48 00 2C 05 */	bl CDBGetWiiId
/* 8148D3F8 | 7C 65 1B 78 */	mr r5, r3
/* 8148D3FC | 7C 86 23 78 */	mr r6, r4
/* 8148D400 | 38 7F 00 20 */	addi r3, r31, 0x20
/* 8148D404 | 48 00 36 91 */	bl CDBAttrSetWiiId
/* 8148D408 | 38 00 00 00 */	li r0, 0x0
.L_8148D40C:
/* 8148D40C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D410 | 41 82 00 0C */	beq .L_8148D41C
/* 8148D414 | 38 60 00 00 */	li r3, 0x0
/* 8148D418 | 48 00 03 64 */	b .L_8148D77C
.L_8148D41C:
/* 8148D41C | 80 7A 00 38 */	lwz r3, 0x38(r26)
/* 8148D420 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D424 | 40 82 00 0C */	bne .L_8148D430
/* 8148D428 | 38 00 00 1B */	li r0, 0x1b
/* 8148D42C | 48 00 00 24 */	b .L_8148D450
.L_8148D430:
/* 8148D430 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8148D434 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148D438 | 40 82 00 0C */	bne .L_8148D444
/* 8148D43C | 38 00 00 1A */	li r0, 0x1a
/* 8148D440 | 48 00 00 10 */	b .L_8148D450
.L_8148D444:
/* 8148D444 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8148D448 | 48 00 37 39 */	bl CDBAttrInitIV
/* 8148D44C | 38 00 00 00 */	li r0, 0x0
.L_8148D450:
/* 8148D450 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D454 | 41 82 00 0C */	beq .L_8148D460
/* 8148D458 | 38 60 00 00 */	li r3, 0x0
/* 8148D45C | 48 00 03 20 */	b .L_8148D77C
.L_8148D460:
/* 8148D460 | 80 7A 00 38 */	lwz r3, 0x38(r26)
/* 8148D464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D468 | 40 82 00 0C */	bne .L_8148D474
/* 8148D46C | 38 00 00 1B */	li r0, 0x1b
/* 8148D470 | 48 00 00 28 */	b .L_8148D498
.L_8148D474:
/* 8148D474 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8148D478 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148D47C | 40 82 00 0C */	bne .L_8148D488
/* 8148D480 | 38 00 00 1A */	li r0, 0x1a
/* 8148D484 | 48 00 00 14 */	b .L_8148D498
.L_8148D488:
/* 8148D488 | 7F 04 C3 78 */	mr r4, r24
/* 8148D48C | 38 63 00 20 */	addi r3, r3, 0x20
/* 8148D490 | 48 00 36 51 */	bl CDBAttrSetKeyStr
/* 8148D494 | 38 00 00 00 */	li r0, 0x0
.L_8148D498:
/* 8148D498 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D49C | 41 82 00 0C */	beq .L_8148D4A8
/* 8148D4A0 | 38 60 00 00 */	li r3, 0x0
/* 8148D4A4 | 48 00 02 D8 */	b .L_8148D77C
.L_8148D4A8:
/* 8148D4A8 | 48 00 1D D5 */	bl CDBLock
/* 8148D4AC | 80 1A 00 38 */	lwz r0, 0x38(r26)
/* 8148D4B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D4B4 | 40 82 00 30 */	bne .L_8148D4E4
/* 8148D4B8 | 38 60 00 02 */	li r3, 0x2
/* 8148D4BC | 48 00 30 D5 */	bl CDBIsPrintDebugMessage
/* 8148D4C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D4C4 | 41 82 00 18 */	beq .L_8148D4DC
/* 8148D4C8 | 38 60 00 02 */	li r3, 0x2
/* 8148D4CC | 48 00 30 DD */	bl CDBReport_
/* 8148D4D0 | 38 79 01 B0 */	addi r3, r25, 0x1b0
/* 8148D4D4 | 4C C6 31 82 */	crclr cr1eq
/* 8148D4D8 | 48 0A 11 C9 */	bl OSReport
.L_8148D4DC:
/* 8148D4DC | 3B 00 00 1B */	li r24, 0x1b
/* 8148D4E0 | 48 00 00 14 */	b .L_8148D4F4
.L_8148D4E4:
/* 8148D4E4 | 7F 43 D3 78 */	mr r3, r26
/* 8148D4E8 | 38 81 00 44 */	addi r4, r1, 0x44
/* 8148D4EC | 48 00 0C 29 */	bl CDBRecordFileGetFileSize
/* 8148D4F0 | 7C 78 1B 78 */	mr r24, r3
.L_8148D4F4:
/* 8148D4F4 | 48 00 1D 95 */	bl CDBUnlock
/* 8148D4F8 | 80 81 00 44 */	lwz r4, 0x44(r1)
/* 8148D4FC | 38 7E 00 20 */	addi r3, r30, 0x20
/* 8148D500 | 48 00 38 2D */	bl CDBAttrSetFileSize
/* 8148D504 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8148D508 | 41 82 00 0C */	beq .L_8148D514
/* 8148D50C | 38 60 00 00 */	li r3, 0x0
/* 8148D510 | 48 00 02 6C */	b .L_8148D77C
.L_8148D514:
/* 8148D514 | 48 00 1D 69 */	bl CDBLock
/* 8148D518 | 80 1A 00 38 */	lwz r0, 0x38(r26)
/* 8148D51C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D520 | 40 82 00 30 */	bne .L_8148D550
/* 8148D524 | 38 60 00 02 */	li r3, 0x2
/* 8148D528 | 48 00 30 69 */	bl CDBIsPrintDebugMessage
/* 8148D52C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D530 | 41 82 00 18 */	beq .L_8148D548
/* 8148D534 | 38 60 00 02 */	li r3, 0x2
/* 8148D538 | 48 00 30 71 */	bl CDBReport_
/* 8148D53C | 38 79 01 EC */	addi r3, r25, 0x1ec
/* 8148D540 | 4C C6 31 82 */	crclr cr1eq
/* 8148D544 | 48 0A 11 5D */	bl OSReport
.L_8148D548:
/* 8148D548 | 3B 00 00 1B */	li r24, 0x1b
/* 8148D54C | 48 00 00 14 */	b .L_8148D560
.L_8148D550:
/* 8148D550 | 7F 43 D3 78 */	mr r3, r26
/* 8148D554 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8148D558 | 48 00 0B CD */	bl CDBRecordFileGetDataSize
/* 8148D55C | 7C 78 1B 78 */	mr r24, r3
.L_8148D560:
/* 8148D560 | 48 00 1D 29 */	bl CDBUnlock
/* 8148D564 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8148D568 | 41 82 00 0C */	beq .L_8148D574
/* 8148D56C | 38 60 00 00 */	li r3, 0x0
/* 8148D570 | 48 00 02 0C */	b .L_8148D77C
.L_8148D574:
/* 8148D574 | 80 61 00 48 */	lwz r3, 0x48(r1)
/* 8148D578 | 38 03 04 00 */	addi r0, r3, 0x400
/* 8148D57C | 7C 1C 00 40 */	cmplw r28, r0
/* 8148D580 | 40 80 00 0C */	bge .L_8148D58C
/* 8148D584 | 38 60 00 14 */	li r3, 0x14
/* 8148D588 | 48 00 01 F4 */	b .L_8148D77C
.L_8148D58C:
/* 8148D58C | 7F 63 DB 78 */	mr r3, r27
/* 8148D590 | 38 9E 00 20 */	addi r4, r30, 0x20
/* 8148D594 | 38 A0 04 00 */	li r5, 0x400
/* 8148D598 | 4B EA 2C 99 */	bl memcpy
/* 8148D59C | 48 00 1C E1 */	bl CDBLock
/* 8148D5A0 | 80 1A 00 38 */	lwz r0, 0x38(r26)
/* 8148D5A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D5A8 | 40 82 00 0C */	bne .L_8148D5B4
/* 8148D5AC | 3B 00 00 1B */	li r24, 0x1b
/* 8148D5B0 | 48 00 00 24 */	b .L_8148D5D4
.L_8148D5B4:
/* 8148D5B4 | 7F 43 D3 78 */	mr r3, r26
/* 8148D5B8 | 48 00 0C ED */	bl CDBRecordFileTellData
/* 8148D5BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D5C0 | 40 80 00 0C */	bge .L_8148D5CC
/* 8148D5C4 | 3B 00 00 23 */	li r24, 0x23
/* 8148D5C8 | 48 00 00 0C */	b .L_8148D5D4
.L_8148D5CC:
/* 8148D5CC | 7C 7F 1B 78 */	mr r31, r3
/* 8148D5D0 | 3B 00 00 00 */	li r24, 0x0
.L_8148D5D4:
/* 8148D5D4 | 48 00 1C B5 */	bl CDBUnlock
/* 8148D5D8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8148D5DC | 41 82 00 0C */	beq .L_8148D5E8
/* 8148D5E0 | 38 60 00 00 */	li r3, 0x0
/* 8148D5E4 | 48 00 01 98 */	b .L_8148D77C
.L_8148D5E8:
/* 8148D5E8 | 48 00 1C 95 */	bl CDBLock
/* 8148D5EC | 80 1A 00 38 */	lwz r0, 0x38(r26)
/* 8148D5F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D5F4 | 40 82 00 0C */	bne .L_8148D600
/* 8148D5F8 | 3B 00 00 1B */	li r24, 0x1b
/* 8148D5FC | 48 00 00 18 */	b .L_8148D614
.L_8148D600:
/* 8148D600 | 7F 43 D3 78 */	mr r3, r26
/* 8148D604 | 38 80 00 00 */	li r4, 0x0
/* 8148D608 | 38 A0 00 01 */	li r5, 0x1
/* 8148D60C | 48 00 0C 01 */	bl CDBRecordFileSeekData
/* 8148D610 | 7C 78 1B 78 */	mr r24, r3
.L_8148D614:
/* 8148D614 | 48 00 1C 75 */	bl CDBUnlock
/* 8148D618 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8148D61C | 41 82 00 0C */	beq .L_8148D628
/* 8148D620 | 38 60 00 00 */	li r3, 0x0
/* 8148D624 | 48 00 01 58 */	b .L_8148D77C
.L_8148D628:
/* 8148D628 | 48 00 1C 55 */	bl CDBLock
/* 8148D62C | 80 1A 00 38 */	lwz r0, 0x38(r26)
/* 8148D630 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D634 | 40 82 00 30 */	bne .L_8148D664
/* 8148D638 | 38 60 00 02 */	li r3, 0x2
/* 8148D63C | 48 00 2F 55 */	bl CDBIsPrintDebugMessage
/* 8148D640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D644 | 41 82 00 18 */	beq .L_8148D65C
/* 8148D648 | 38 60 00 02 */	li r3, 0x2
/* 8148D64C | 48 00 2F 5D */	bl CDBReport_
/* 8148D650 | 38 79 01 78 */	addi r3, r25, 0x178
/* 8148D654 | 4C C6 31 82 */	crclr cr1eq
/* 8148D658 | 48 0A 10 49 */	bl OSReport
.L_8148D65C:
/* 8148D65C | 3B 00 00 1B */	li r24, 0x1b
/* 8148D660 | 48 00 00 1C */	b .L_8148D67C
.L_8148D664:
/* 8148D664 | 7F 43 D3 78 */	mr r3, r26
/* 8148D668 | 38 9B 04 00 */	addi r4, r27, 0x400
/* 8148D66C | 38 BC FC 00 */	subi r5, r28, 0x400
/* 8148D670 | 38 C1 00 48 */	addi r6, r1, 0x48
/* 8148D674 | 48 00 0A D1 */	bl CDBRecordFileReadData
/* 8148D678 | 7C 78 1B 78 */	mr r24, r3
.L_8148D67C:
/* 8148D67C | 48 00 1C 0D */	bl CDBUnlock
/* 8148D680 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8148D684 | 41 82 00 0C */	beq .L_8148D690
/* 8148D688 | 38 60 00 00 */	li r3, 0x0
/* 8148D68C | 48 00 00 F0 */	b .L_8148D77C
.L_8148D690:
/* 8148D690 | 48 00 1B ED */	bl CDBLock
/* 8148D694 | 80 1A 00 38 */	lwz r0, 0x38(r26)
/* 8148D698 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D69C | 40 82 00 0C */	bne .L_8148D6A8
/* 8148D6A0 | 3B 00 00 1B */	li r24, 0x1b
/* 8148D6A4 | 48 00 00 18 */	b .L_8148D6BC
.L_8148D6A8:
/* 8148D6A8 | 7F 43 D3 78 */	mr r3, r26
/* 8148D6AC | 7F E4 FB 78 */	mr r4, r31
/* 8148D6B0 | 38 A0 00 01 */	li r5, 0x1
/* 8148D6B4 | 48 00 0B 59 */	bl CDBRecordFileSeekData
/* 8148D6B8 | 7C 78 1B 78 */	mr r24, r3
.L_8148D6BC:
/* 8148D6BC | 48 00 1B CD */	bl CDBUnlock
/* 8148D6C0 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8148D6C4 | 41 82 00 0C */	beq .L_8148D6D0
/* 8148D6C8 | 38 60 00 00 */	li r3, 0x0
/* 8148D6CC | 48 00 00 B0 */	b .L_8148D77C
.L_8148D6D0:
/* 8148D6D0 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 8148D6D4 | 38 81 00 50 */	addi r4, r1, 0x50
/* 8148D6D8 | 48 00 35 AD */	bl CDBAttrGetIV
/* 8148D6DC | 80 81 00 48 */	lwz r4, 0x48(r1)
/* 8148D6E0 | 38 7B 04 00 */	addi r3, r27, 0x400
/* 8148D6E4 | 38 A1 00 50 */	addi r5, r1, 0x50
/* 8148D6E8 | 38 C1 00 40 */	addi r6, r1, 0x40
/* 8148D6EC | 38 E0 00 01 */	li r7, 0x1
/* 8148D6F0 | 4B FF FA 5D */	bl CDBCryptBuffer
/* 8148D6F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D6F8 | 41 82 00 08 */	beq .L_8148D700
/* 8148D6FC | 48 00 00 80 */	b .L_8148D77C
.L_8148D700:
/* 8148D700 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 8148D704 | 48 00 2A 09 */	bl CDBGetWiiIdKey
/* 8148D708 | 38 61 00 CC */	addi r3, r1, 0xcc
/* 8148D70C | 48 00 2A 1D */	bl CDBGetDeviceKey
/* 8148D710 | 7F 63 DB 78 */	mr r3, r27
/* 8148D714 | 48 00 36 09 */	bl CDBAttrClearSignature
/* 8148D718 | 80 61 00 40 */	lwz r3, 0x40(r1)
/* 8148D71C | 3B 03 04 00 */	addi r24, r3, 0x400
/* 8148D720 | 48 00 6A 25 */	bl NETGetSHA1Interface
/* 8148D724 | 7C 64 1B 78 */	mr r4, r3
/* 8148D728 | 38 61 01 00 */	addi r3, r1, 0x100
/* 8148D72C | 38 A1 00 C0 */	addi r5, r1, 0xc0
/* 8148D730 | 38 C0 00 40 */	li r6, 0x40
/* 8148D734 | 48 00 6D B9 */	bl NETHMACInit
/* 8148D738 | 7F 64 DB 78 */	mr r4, r27
/* 8148D73C | 7F 05 C3 78 */	mr r5, r24
/* 8148D740 | 38 61 01 00 */	addi r3, r1, 0x100
/* 8148D744 | 48 00 6F E5 */	bl NETHMACUpdate
/* 8148D748 | 38 61 01 00 */	addi r3, r1, 0x100
/* 8148D74C | 38 81 00 80 */	addi r4, r1, 0x80
/* 8148D750 | 48 00 6F E9 */	bl NETHMACGetDigest
/* 8148D754 | 38 7B 00 B0 */	addi r3, r27, 0xb0
/* 8148D758 | 38 81 00 80 */	addi r4, r1, 0x80
/* 8148D75C | 38 A0 00 14 */	li r5, 0x14
/* 8148D760 | 4B EA 2A D1 */	bl memcpy
/* 8148D764 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8148D768 | 41 82 00 10 */	beq .L_8148D778
/* 8148D76C | 80 61 00 40 */	lwz r3, 0x40(r1)
/* 8148D770 | 38 03 04 00 */	addi r0, r3, 0x400
/* 8148D774 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_8148D778:
/* 8148D778 | 38 60 00 00 */	li r3, 0x0
.L_8148D77C:
/* 8148D77C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8148D780 | 7D 4B 53 78 */	mr r11, r10
/* 8148D784 | 48 16 BD 7D */	bl _restgpr_24
/* 8148D788 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8148D78C | 7C 08 03 A6 */	mtlr r0
/* 8148D790 | 7D 41 53 78 */	mr r1, r10
/* 8148D794 | 4E 80 00 20 */	blr
.endfn CDBRecordEncrypt

# .text:0x183C | 0x8148D798 | size: 0x368
.fn CDBRecordDecrypt, global
/* 8148D798 | 54 2B 06 BE */	clrlwi r11, r1, 26
/* 8148D79C | 7C 2C 0B 78 */	mr r12, r1
/* 8148D7A0 | 21 6B FC 00 */	subfic r11, r11, -0x400
/* 8148D7A4 | 7C 21 59 6E */	stwux r1, r1, r11
/* 8148D7A8 | 7C 08 02 A6 */	mflr r0
/* 8148D7AC | 7D 8B 63 78 */	mr r11, r12
/* 8148D7B0 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8148D7B4 | 48 16 BD 01 */	bl _savegpr_24
/* 8148D7B8 | 83 A3 00 38 */	lwz r29, 0x38(r3)
/* 8148D7BC | 7C 78 1B 78 */	mr r24, r3
/* 8148D7C0 | 7C 99 23 78 */	mr r25, r4
/* 8148D7C4 | 7C BA 2B 78 */	mr r26, r5
/* 8148D7C8 | 7C DB 33 78 */	mr r27, r6
/* 8148D7CC | 7C FC 3B 78 */	mr r28, r7
/* 8148D7D0 | 38 61 00 F0 */	addi r3, r1, 0xf0
/* 8148D7D4 | 38 80 00 00 */	li r4, 0x0
/* 8148D7D8 | 38 A0 00 40 */	li r5, 0x40
/* 8148D7DC | 4B EA 2B 59 */	bl memset
/* 8148D7E0 | 38 61 02 00 */	addi r3, r1, 0x200
/* 8148D7E4 | 38 80 00 00 */	li r4, 0x0
/* 8148D7E8 | 38 A0 01 BC */	li r5, 0x1bc
/* 8148D7EC | 4B EA 2B 49 */	bl memset
/* 8148D7F0 | 7F 23 CB 78 */	mr r3, r25
/* 8148D7F4 | 7F 45 D3 78 */	mr r5, r26
/* 8148D7F8 | 38 80 00 00 */	li r4, 0x0
/* 8148D7FC | 4B EA 2B 39 */	bl memset
/* 8148D800 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8148D804 | 40 82 00 0C */	bne .L_8148D810
/* 8148D808 | 38 60 00 1B */	li r3, 0x1b
/* 8148D80C | 48 00 02 D8 */	b .L_8148DAE4
.L_8148D810:
/* 8148D810 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8148D814 | 40 82 00 0C */	bne .L_8148D820
/* 8148D818 | 38 60 00 01 */	li r3, 0x1
/* 8148D81C | 48 00 02 C8 */	b .L_8148DAE4
.L_8148D820:
/* 8148D820 | 48 00 1A 5D */	bl CDBLock
/* 8148D824 | 80 18 00 38 */	lwz r0, 0x38(r24)
/* 8148D828 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D82C | 40 82 00 34 */	bne .L_8148D860
/* 8148D830 | 38 60 00 02 */	li r3, 0x2
/* 8148D834 | 48 00 2D 5D */	bl CDBIsPrintDebugMessage
/* 8148D838 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D83C | 41 82 00 1C */	beq .L_8148D858
/* 8148D840 | 38 60 00 02 */	li r3, 0x2
/* 8148D844 | 48 00 2D 65 */	bl CDBReport_
/* 8148D848 | 3C 60 81 67 */	lis r3, lbl_8166BDAC@ha
/* 8148D84C | 38 63 BD AC */	addi r3, r3, lbl_8166BDAC@l
/* 8148D850 | 4C C6 31 82 */	crclr cr1eq
/* 8148D854 | 48 0A 0E 4D */	bl OSReport
.L_8148D858:
/* 8148D858 | 3B E0 00 1B */	li r31, 0x1b
/* 8148D85C | 48 00 00 14 */	b .L_8148D870
.L_8148D860:
/* 8148D860 | 7F 03 C3 78 */	mr r3, r24
/* 8148D864 | 38 81 00 44 */	addi r4, r1, 0x44
/* 8148D868 | 48 00 08 BD */	bl CDBRecordFileGetDataSize
/* 8148D86C | 7C 7F 1B 78 */	mr r31, r3
.L_8148D870:
/* 8148D870 | 48 00 1A 19 */	bl CDBUnlock
/* 8148D874 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148D878 | 41 82 00 0C */	beq .L_8148D884
/* 8148D87C | 38 60 00 00 */	li r3, 0x0
/* 8148D880 | 48 00 02 64 */	b .L_8148DAE4
.L_8148D884:
/* 8148D884 | 80 81 00 44 */	lwz r4, 0x44(r1)
/* 8148D888 | 38 04 04 00 */	addi r0, r4, 0x400
/* 8148D88C | 7C 1A 00 40 */	cmplw r26, r0
/* 8148D890 | 40 80 00 24 */	bge .L_8148D8B4
/* 8148D894 | 3C 60 00 04 */	lis r3, 0x4
/* 8148D898 | 38 03 E8 00 */	subi r0, r3, 0x1800
/* 8148D89C | 7C 04 00 40 */	cmplw r4, r0
/* 8148D8A0 | 40 81 00 0C */	ble .L_8148D8AC
/* 8148D8A4 | 38 60 00 20 */	li r3, 0x20
/* 8148D8A8 | 48 00 02 3C */	b .L_8148DAE4
.L_8148D8AC:
/* 8148D8AC | 38 60 00 14 */	li r3, 0x14
/* 8148D8B0 | 48 00 02 34 */	b .L_8148DAE4
.L_8148D8B4:
/* 8148D8B4 | 54 80 06 BF */	clrlwi. r0, r4, 26
/* 8148D8B8 | 41 82 00 0C */	beq .L_8148D8C4
/* 8148D8BC | 38 60 00 20 */	li r3, 0x20
/* 8148D8C0 | 48 00 02 24 */	b .L_8148DAE4
.L_8148D8C4:
/* 8148D8C4 | 7F 03 C3 78 */	mr r3, r24
/* 8148D8C8 | 48 00 02 39 */	bl CDBRecordFileReadAttrBuf
/* 8148D8CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D8D0 | 41 82 00 0C */	beq .L_8148D8DC
/* 8148D8D4 | 38 60 00 20 */	li r3, 0x20
/* 8148D8D8 | 48 00 02 0C */	b .L_8148DAE4
.L_8148D8DC:
/* 8148D8DC | 7F 23 CB 78 */	mr r3, r25
/* 8148D8E0 | 38 9D 00 20 */	addi r4, r29, 0x20
/* 8148D8E4 | 38 A0 04 00 */	li r5, 0x400
/* 8148D8E8 | 4B EA 29 49 */	bl memcpy
/* 8148D8EC | 80 18 00 38 */	lwz r0, 0x38(r24)
/* 8148D8F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D8F4 | 40 82 00 0C */	bne .L_8148D900
/* 8148D8F8 | 38 60 00 1B */	li r3, 0x1b
/* 8148D8FC | 48 00 00 24 */	b .L_8148D920
.L_8148D900:
/* 8148D900 | 7F 03 C3 78 */	mr r3, r24
/* 8148D904 | 48 00 09 D1 */	bl CDBRecordFileTellDataFile
/* 8148D908 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D90C | 40 80 00 0C */	bge .L_8148D918
/* 8148D910 | 38 60 00 23 */	li r3, 0x23
/* 8148D914 | 48 00 00 0C */	b .L_8148D920
.L_8148D918:
/* 8148D918 | 7C 7E 1B 78 */	mr r30, r3
/* 8148D91C | 38 60 00 00 */	li r3, 0x0
.L_8148D920:
/* 8148D920 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D924 | 41 82 00 08 */	beq .L_8148D92C
/* 8148D928 | 48 00 01 BC */	b .L_8148DAE4
.L_8148D92C:
/* 8148D92C | 80 18 00 38 */	lwz r0, 0x38(r24)
/* 8148D930 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D934 | 40 82 00 0C */	bne .L_8148D940
/* 8148D938 | 38 60 00 1B */	li r3, 0x1b
/* 8148D93C | 48 00 00 14 */	b .L_8148D950
.L_8148D940:
/* 8148D940 | 7F 03 C3 78 */	mr r3, r24
/* 8148D944 | 38 80 00 00 */	li r4, 0x0
/* 8148D948 | 38 A0 00 01 */	li r5, 0x1
/* 8148D94C | 48 00 09 49 */	bl CDBRecordFileSeekDataFile
.L_8148D950:
/* 8148D950 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D954 | 41 82 00 08 */	beq .L_8148D95C
/* 8148D958 | 48 00 01 8C */	b .L_8148DAE4
.L_8148D95C:
/* 8148D95C | 7F 03 C3 78 */	mr r3, r24
/* 8148D960 | 38 99 04 00 */	addi r4, r25, 0x400
/* 8148D964 | 38 BA FC 00 */	subi r5, r26, 0x400
/* 8148D968 | 38 C1 00 44 */	addi r6, r1, 0x44
/* 8148D96C | 48 00 08 91 */	bl CDBRecordFileReadDataFile
/* 8148D970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D974 | 41 82 00 08 */	beq .L_8148D97C
/* 8148D978 | 48 00 01 6C */	b .L_8148DAE4
.L_8148D97C:
/* 8148D97C | 80 18 00 38 */	lwz r0, 0x38(r24)
/* 8148D980 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148D984 | 40 82 00 0C */	bne .L_8148D990
/* 8148D988 | 38 60 00 1B */	li r3, 0x1b
/* 8148D98C | 48 00 00 14 */	b .L_8148D9A0
.L_8148D990:
/* 8148D990 | 7F 03 C3 78 */	mr r3, r24
/* 8148D994 | 7F C4 F3 78 */	mr r4, r30
/* 8148D998 | 38 A0 00 01 */	li r5, 0x1
/* 8148D99C | 48 00 08 F9 */	bl CDBRecordFileSeekDataFile
.L_8148D9A0:
/* 8148D9A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148D9A4 | 41 82 00 08 */	beq .L_8148D9AC
/* 8148D9A8 | 48 00 01 3C */	b .L_8148DAE4
.L_8148D9AC:
/* 8148D9AC | 7F 23 CB 78 */	mr r3, r25
/* 8148D9B0 | 38 81 02 00 */	addi r4, r1, 0x200
/* 8148D9B4 | 48 00 33 55 */	bl CDBAttrGetSignature
/* 8148D9B8 | 7F 23 CB 78 */	mr r3, r25
/* 8148D9BC | 48 00 33 61 */	bl CDBAttrClearSignature
/* 8148D9C0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8148D9C4 | 40 82 00 10 */	bne .L_8148D9D4
/* 8148D9C8 | 38 61 00 F0 */	addi r3, r1, 0xf0
/* 8148D9CC | 48 00 27 41 */	bl CDBGetWiiIdKey
/* 8148D9D0 | 48 00 00 10 */	b .L_8148D9E0
.L_8148D9D4:
/* 8148D9D4 | 7F 84 E3 78 */	mr r4, r28
/* 8148D9D8 | 38 61 00 F0 */	addi r3, r1, 0xf0
/* 8148D9DC | 48 00 27 45 */	bl CDBCopyWiiIdKey
.L_8148D9E0:
/* 8148D9E0 | 38 61 00 FC */	addi r3, r1, 0xfc
/* 8148D9E4 | 48 00 27 45 */	bl CDBGetDeviceKey
/* 8148D9E8 | 80 61 00 44 */	lwz r3, 0x44(r1)
/* 8148D9EC | 3B E3 04 00 */	addi r31, r3, 0x400
/* 8148D9F0 | 48 00 67 55 */	bl NETGetSHA1Interface
/* 8148D9F4 | 7C 64 1B 78 */	mr r4, r3
/* 8148D9F8 | 38 61 01 30 */	addi r3, r1, 0x130
/* 8148D9FC | 38 A1 00 F0 */	addi r5, r1, 0xf0
/* 8148DA00 | 38 C0 00 40 */	li r6, 0x40
/* 8148DA04 | 48 00 6A E9 */	bl NETHMACInit
/* 8148DA08 | 7F 24 CB 78 */	mr r4, r25
/* 8148DA0C | 7F E5 FB 78 */	mr r5, r31
/* 8148DA10 | 38 61 01 30 */	addi r3, r1, 0x130
/* 8148DA14 | 48 00 6D 15 */	bl NETHMACUpdate
/* 8148DA18 | 38 61 01 30 */	addi r3, r1, 0x130
/* 8148DA1C | 38 81 00 80 */	addi r4, r1, 0x80
/* 8148DA20 | 48 00 6D 19 */	bl NETHMACGetDigest
/* 8148DA24 | 38 61 00 80 */	addi r3, r1, 0x80
/* 8148DA28 | 38 81 02 00 */	addi r4, r1, 0x200
/* 8148DA2C | 38 A0 00 14 */	li r5, 0x14
/* 8148DA30 | 48 17 07 A5 */	bl memcmp
/* 8148DA34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DA38 | 41 82 00 0C */	beq .L_8148DA44
/* 8148DA3C | 38 60 00 20 */	li r3, 0x20
/* 8148DA40 | 48 00 00 A4 */	b .L_8148DAE4
.L_8148DA44:
/* 8148DA44 | 7F 23 CB 78 */	mr r3, r25
/* 8148DA48 | 38 81 00 C0 */	addi r4, r1, 0xc0
/* 8148DA4C | 48 00 31 21 */	bl CDBAttrGetKeyStr
/* 8148DA50 | 38 61 00 C0 */	addi r3, r1, 0xc0
/* 8148DA54 | 38 98 00 08 */	addi r4, r24, 0x8
/* 8148DA58 | 48 00 0B E5 */	bl CDBRecordKeyCompareByDate
/* 8148DA5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DA60 | 41 82 00 34 */	beq .L_8148DA94
/* 8148DA64 | 38 60 00 03 */	li r3, 0x3
/* 8148DA68 | 48 00 2B 29 */	bl CDBIsPrintDebugMessage
/* 8148DA6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DA70 | 41 82 00 1C */	beq .L_8148DA8C
/* 8148DA74 | 38 60 00 03 */	li r3, 0x3
/* 8148DA78 | 48 00 2B 31 */	bl CDBReport_
/* 8148DA7C | 3C 60 81 67 */	lis r3, lbl_8166C500@ha
/* 8148DA80 | 38 63 C5 00 */	addi r3, r3, lbl_8166C500@l
/* 8148DA84 | 4C C6 31 82 */	crclr cr1eq
/* 8148DA88 | 48 0A 0C 19 */	bl OSReport
.L_8148DA8C:
/* 8148DA8C | 38 60 00 20 */	li r3, 0x20
/* 8148DA90 | 48 00 00 54 */	b .L_8148DAE4
.L_8148DA94:
/* 8148DA94 | 38 7D 00 20 */	addi r3, r29, 0x20
/* 8148DA98 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8148DA9C | 48 00 31 E9 */	bl CDBAttrGetIV
/* 8148DAA0 | 80 81 00 44 */	lwz r4, 0x44(r1)
/* 8148DAA4 | 38 79 04 00 */	addi r3, r25, 0x400
/* 8148DAA8 | 38 A1 00 48 */	addi r5, r1, 0x48
/* 8148DAAC | 38 C0 00 00 */	li r6, 0x0
/* 8148DAB0 | 38 E0 00 00 */	li r7, 0x0
/* 8148DAB4 | 4B FF F6 99 */	bl CDBCryptBuffer
/* 8148DAB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148DABC | 41 82 00 08 */	beq .L_8148DAC4
/* 8148DAC0 | 48 00 00 24 */	b .L_8148DAE4
.L_8148DAC4:
/* 8148DAC4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8148DAC8 | 41 82 00 18 */	beq .L_8148DAE0
/* 8148DACC | 7F 23 CB 78 */	mr r3, r25
/* 8148DAD0 | 38 81 00 40 */	addi r4, r1, 0x40
/* 8148DAD4 | 48 00 32 89 */	bl CDBAttrGetFileSize
/* 8148DAD8 | 80 01 00 40 */	lwz r0, 0x40(r1)
/* 8148DADC | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_8148DAE0:
/* 8148DAE0 | 38 60 00 00 */	li r3, 0x0
.L_8148DAE4:
/* 8148DAE4 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8148DAE8 | 7D 4B 53 78 */	mr r11, r10
/* 8148DAEC | 48 16 BA 15 */	bl _restgpr_24
/* 8148DAF0 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8148DAF4 | 7C 08 03 A6 */	mtlr r0
/* 8148DAF8 | 7D 41 53 78 */	mr r1, r10
/* 8148DAFC | 4E 80 00 20 */	blr
.endfn CDBRecordDecrypt

# 0x81618180..0x81618190 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x81618180 | size: 0x10
.obj lbl_81618180, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81618180

# 0x8166BBC0..0x8166C580 | size: 0x9C0
.data
.balign 8

# .data:0x0 | 0x8166BBC0 | size: 0x40
.obj lbl_8166BBC0, global
	.4byte 0x28434442
	.4byte 0x29206572
	.4byte 0x726F7220
	.4byte 0x3A206361
	.4byte 0x6E277420
	.4byte 0x6F70656E
	.4byte 0x20746865
	.4byte 0x20726563
	.4byte 0x6F72643B
	.4byte 0x20746865
	.4byte 0x20646174
	.4byte 0x61626173
	.4byte 0x65206973
	.4byte 0x20636C6F
	.4byte 0x7365640A
	.4byte 0x00000000
.endobj lbl_8166BBC0

# .data:0x40 | 0x8166BC00 | size: 0x34
.obj lbl_8166BC00, global
	.4byte 0x63616E27
	.4byte 0x74206F70
	.4byte 0x656E2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x643B2074
	.4byte 0x68652064
	.4byte 0x61746162
	.4byte 0x61736520
	.4byte 0x69732052
	.4byte 0x4541444F
	.4byte 0x4E4C590A
	.4byte 0x00000000
.endobj lbl_8166BC00

# .data:0x74 | 0x8166BC34 | size: 0x104
.obj lbl_8166BC34, global
	.4byte 0x696E7661
	.4byte 0x6C696420
	.4byte 0x6B65790A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74207772
	.4byte 0x69746520
	.4byte 0x64617461
	.4byte 0x20696E20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72643B20
	.4byte 0x74686520
	.4byte 0x64617461
	.4byte 0x62617365
	.4byte 0x20697320
	.4byte 0x6F70656E
	.4byte 0x65642061
	.4byte 0x73205245
	.4byte 0x41444F4E
	.4byte 0x4C590A00
	.4byte 0x63616E27
	.4byte 0x74207772
	.4byte 0x69746520
	.4byte 0x64617461
	.4byte 0x20696E20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72643B20
	.4byte 0x7065726D
	.4byte 0x69737369
	.4byte 0x6F6E2064
	.4byte 0x656E6965
	.4byte 0x640A0000
	.4byte 0x63616E27
	.4byte 0x74207772
	.4byte 0x69746520
	.4byte 0x64617461
	.4byte 0x20696E20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72643B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74207772
	.4byte 0x69746520
	.4byte 0x64617461
	.4byte 0x20696E20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72643B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x73206F70
	.4byte 0x656E6564
	.4byte 0x20617320
	.4byte 0x52454144
	.4byte 0x4F4E4C59
	.4byte 0x0A000000
.endobj lbl_8166BC34

# .data:0x178 | 0x8166BD38 | size: 0x74
.obj lbl_8166BD38, global
	.4byte 0x63616E27
	.4byte 0x74207265
	.4byte 0x61642064
	.4byte 0x61746120
	.4byte 0x696E2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x643B2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206973
	.4byte 0x20636C6F
	.4byte 0x7365640A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206669
	.4byte 0x6C652073
	.4byte 0x697A6520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64203B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
.endobj lbl_8166BD38

# .data:0x1EC | 0x8166BDAC | size: 0x1DC
.obj lbl_8166BDAC, global
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206461
	.4byte 0x74612073
	.4byte 0x697A6520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64203B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74207265
	.4byte 0x64756365
	.4byte 0x2066696C
	.4byte 0x65207369
	.4byte 0x7A65206F
	.4byte 0x66207468
	.4byte 0x65207265
	.4byte 0x636F7264
	.4byte 0x203B2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206973
	.4byte 0x20636C6F
	.4byte 0x7365640A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74207265
	.4byte 0x64756365
	.4byte 0x2066696C
	.4byte 0x65207369
	.4byte 0x7A65206F
	.4byte 0x66207468
	.4byte 0x65207265
	.4byte 0x636F7264
	.4byte 0x203B2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206973
	.4byte 0x206F7065
	.4byte 0x6E656420
	.4byte 0x61732052
	.4byte 0x4541444F
	.4byte 0x4E4C590A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74207265
	.4byte 0x64756365
	.4byte 0x2066696C
	.4byte 0x65207369
	.4byte 0x7A65206F
	.4byte 0x66207468
	.4byte 0x65207265
	.4byte 0x636F7264
	.4byte 0x203B2066
	.4byte 0x696C6520
	.4byte 0x73697A65
	.4byte 0x206D7573
	.4byte 0x74206265
	.4byte 0x206F7665
	.4byte 0x72202564
	.4byte 0x20627974
	.4byte 0x65730A00
	.4byte 0x63616E27
	.4byte 0x74207265
	.4byte 0x64756365
	.4byte 0x20646174
	.4byte 0x61207369
	.4byte 0x7A65206F
	.4byte 0x66207468
	.4byte 0x65207265
	.4byte 0x636F7264
	.4byte 0x203B2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206973
	.4byte 0x20636C6F
	.4byte 0x7365640A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74207265
	.4byte 0x64756365
	.4byte 0x20646174
	.4byte 0x61207369
	.4byte 0x7A65206F
	.4byte 0x66207468
	.4byte 0x65207265
	.4byte 0x636F7264
	.4byte 0x203B2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206973
	.4byte 0x206F7065
	.4byte 0x6E656420
	.4byte 0x61732052
	.4byte 0x4541444F
	.4byte 0x4E4C590A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74207265
	.4byte 0x64756365
	.4byte 0x20646174
	.4byte 0x61207369
	.4byte 0x7A65206F
	.4byte 0x66207468
	.4byte 0x65207265
	.4byte 0x636F7264
	.4byte 0x3B207065
	.4byte 0x726D6973
	.4byte 0x73696F6E
	.4byte 0x2064656E
	.4byte 0x6965640A
	.4byte 0x00000000
.endobj lbl_8166BDAC

# .data:0x3C8 | 0x8166BF88 | size: 0x30
.obj lbl_8166BF88, global
	.string "can't remove the record ; the record is opened\n"
.endobj lbl_8166BF88

# .data:0x3F8 | 0x8166BFB8 | size: 0x1B8
.obj lbl_8166BFB8, global
	.4byte 0x63616E27
	.4byte 0x74207265
	.4byte 0x6D6F7665
	.4byte 0x20746865
	.4byte 0x20726563
	.4byte 0x6F726420
	.4byte 0x3B207065
	.4byte 0x726D6973
	.4byte 0x73696F6E
	.4byte 0x2064656E
	.4byte 0x6965640A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74207365
	.4byte 0x74206669
	.4byte 0x6C652074
	.4byte 0x79706520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x643B2074
	.4byte 0x68652064
	.4byte 0x61746162
	.4byte 0x61736520
	.4byte 0x6973206F
	.4byte 0x70656E65
	.4byte 0x64206173
	.4byte 0x20524541
	.4byte 0x444F4E4C
	.4byte 0x590A0000
	.4byte 0x63616E27
	.4byte 0x74207365
	.4byte 0x74206669
	.4byte 0x6C652074
	.4byte 0x79706520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64203B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74207365
	.4byte 0x74206669
	.4byte 0x6C652074
	.4byte 0x79706520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64203B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x73206F70
	.4byte 0x656E6564
	.4byte 0x20617320
	.4byte 0x52454144
	.4byte 0x4F4E4C59
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74207365
	.4byte 0x74206669
	.4byte 0x6C652074
	.4byte 0x79706520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64203B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x7264206D
	.4byte 0x75737420
	.4byte 0x65787369
	.4byte 0x7374206F
	.4byte 0x6E204E41
	.4byte 0x4E440A00
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206669
	.4byte 0x6C652074
	.4byte 0x79706520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64203B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206761
	.4byte 0x6D652063
	.4byte 0x6F646520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64203B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
.endobj lbl_8166BFB8

# .data:0x5B0 | 0x8166C170 | size: 0x264
.obj lbl_8166C170, global
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206D61
	.4byte 0x6B657220
	.4byte 0x636F6465
	.4byte 0x206F6620
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x7264203B
	.4byte 0x20746865
	.4byte 0x20726563
	.4byte 0x6F726420
	.4byte 0x69732063
	.4byte 0x6C6F7365
	.4byte 0x640A0000
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206D6F
	.4byte 0x64696669
	.4byte 0x65642074
	.4byte 0x696D6520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x643B2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206973
	.4byte 0x20636C6F
	.4byte 0x7365640A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206D6F
	.4byte 0x64696669
	.4byte 0x65642063
	.4byte 0x6F756E74
	.4byte 0x206F6620
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72643B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74207365
	.4byte 0x74206120
	.4byte 0x6E616D65
	.4byte 0x206F6620
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72643B20
	.4byte 0x74686520
	.4byte 0x64617461
	.4byte 0x62617365
	.4byte 0x20697320
	.4byte 0x6F70656E
	.4byte 0x65642061
	.4byte 0x73205245
	.4byte 0x41444F4E
	.4byte 0x4C590A00
	.4byte 0x63616E27
	.4byte 0x74206164
	.4byte 0x64206B65
	.4byte 0x79776F72
	.4byte 0x6420746F
	.4byte 0x20746865
	.4byte 0x20726563
	.4byte 0x6F72643B
	.4byte 0x20706572
	.4byte 0x6D697373
	.4byte 0x696F6E20
	.4byte 0x64656E69
	.4byte 0x65640A00
	.4byte 0x63616E27
	.4byte 0x74207365
	.4byte 0x74206120
	.4byte 0x6E616D65
	.4byte 0x206F6620
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72643B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74207365
	.4byte 0x74206120
	.4byte 0x6E616D65
	.4byte 0x206F6620
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72643B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x73206F70
	.4byte 0x656E6564
	.4byte 0x20617320
	.4byte 0x52454144
	.4byte 0x4F4E4C59
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206B65
	.4byte 0x79776F72
	.4byte 0x64206672
	.4byte 0x6F6D2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x643B2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206973
	.4byte 0x20636C6F
	.4byte 0x7365640A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206B65
	.4byte 0x79206672
	.4byte 0x6F6D2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x643B2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206973
	.4byte 0x20636C6F
	.4byte 0x7365640A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74206361
	.4byte 0x6C656E64
	.4byte 0x65722074
	.4byte 0x696D6520
	.4byte 0x66726F6D
	.4byte 0x20746865
	.4byte 0x20726563
	.4byte 0x6F72643B
	.4byte 0x20746865
	.4byte 0x20726563
	.4byte 0x6F726420
	.4byte 0x69732063
	.4byte 0x6C6F7365
	.4byte 0x640A0000
.endobj lbl_8166C170

# .data:0x814 | 0x8166C3D4 | size: 0x38
.obj lbl_8166C3D4, global
	.4byte 0x63616E27
	.4byte 0x74206765
	.4byte 0x74204344
	.4byte 0x42496420
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64203B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
.endobj lbl_8166C3D4

# .data:0x84C | 0x8166C40C | size: 0x4C
.obj lbl_8166C40C, global
	.4byte 0x63616E27
	.4byte 0x74207365
	.4byte 0x74206D6F
	.4byte 0x64696669
	.4byte 0x65642074
	.4byte 0x696D6520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x643B2074
	.4byte 0x68652064
	.4byte 0x61746162
	.4byte 0x61736520
	.4byte 0x6973206F
	.4byte 0x70656E65
	.4byte 0x64206173
	.4byte 0x20524541
	.4byte 0x444F4E4C
	.4byte 0x590A0000
.endobj lbl_8166C40C

# .data:0x898 | 0x8166C458 | size: 0xA8
.obj lbl_8166C458, global
	.4byte 0x63616E27
	.4byte 0x74207365
	.4byte 0x74206D6F
	.4byte 0x64696669
	.4byte 0x65642074
	.4byte 0x696D6520
	.4byte 0x6F662074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64203B20
	.4byte 0x74686520
	.4byte 0x7265636F
	.4byte 0x72642069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
	.4byte 0x43444252
	.4byte 0x65636F72
	.4byte 0x642E6300
	.4byte 0x43444252
	.4byte 0x65636F72
	.4byte 0x64447570
	.4byte 0x6C696361
	.4byte 0x74652069
	.4byte 0x6E76616C
	.4byte 0x7564206C
	.4byte 0x6F636174
	.4byte 0x696F6E0A
	.4byte 0x00000000
	.4byte 0x4E455441
	.4byte 0x45534372
	.4byte 0x65617465
	.4byte 0x0A000000
	.4byte 0x4E455441
	.4byte 0x4553456E
	.4byte 0x63727970
	.4byte 0x740A0000
	.4byte 0x4E455441
	.4byte 0x45534465
	.4byte 0x63727970
	.4byte 0x740A0000
	.4byte 0x00000000
.endobj lbl_8166C458

# .data:0x940 | 0x8166C500 | size: 0x18
.obj lbl_8166C500, global
	.4byte 0x83748340
	.4byte 0x8343838B
	.4byte 0x96BC82CC
	.4byte 0x89FCE282
	.4byte 0x82F08C9F
	.4byte 0x8F6F0A00
.endobj lbl_8166C500

# .data:0x958 | 0x8166C518 | size: 0x66
.obj lbl_8166C518, global
	.string "CDBRecordPrivateChangeOwner\n\000\000\000\000 i_pre-wiiid  = %lX\n\000\000\000\000 record-wiiid = %lX\n\000\000\000\000path =%s\n\000\000\000path2=%s\n"
.endobj lbl_8166C518

# .data:0x9BE | 0x8166C57E | size: 0x2
.obj gap_08_8166C57E_data, global
.hidden gap_08_8166C57E_data
	.2byte 0x0000
.endobj gap_08_8166C57E_data
