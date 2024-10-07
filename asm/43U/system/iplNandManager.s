.include "macros.inc"
.file "iplNandManager.cpp"

# 0x8133D234..0x8133DC0C | size: 0x9D8
.text
.balign 4

# .text:0x0 | 0x8133D234 | size: 0x228
# ipl::nand::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl4nand7ManagerFPQ23EGG4Heap, global
/* 8133D234 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8133D238 | 7C 2C 0B 78 */	mr r12, r1
/* 8133D23C | 21 6B FF A0 */	subfic r11, r11, -0x60
/* 8133D240 | 7C 21 59 6E */	stwux r1, r1, r11
/* 8133D244 | 7C 08 02 A6 */	mflr r0
/* 8133D248 | 7D 8B 63 78 */	mr r11, r12
/* 8133D24C | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8133D250 | 48 2B C2 79 */	bl _savegpr_29
/* 8133D254 | 38 A0 FF FF */	li r5, -0x1
/* 8133D258 | 38 00 00 00 */	li r0, 0x0
/* 8133D25C | 90 A3 02 68 */	stw r5, 0x268(r3)
/* 8133D260 | 7C 86 23 78 */	mr r6, r4
/* 8133D264 | 7C 7D 1B 78 */	mr r29, r3
/* 8133D268 | 38 80 00 12 */	li r4, 0x12
/* 8133D26C | 90 03 02 6C */	stw r0, 0x26c(r3)
/* 8133D270 | 38 60 00 80 */	li r3, 0x80
/* 8133D274 | 3C A0 00 01 */	lis r5, 0x1
/* 8133D278 | 48 2B AE 7D */	bl fn_815F80F4
/* 8133D27C | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 8133D280 | 38 7D 00 04 */	addi r3, r29, 0x4
/* 8133D284 | 38 9D 00 24 */	addi r4, r29, 0x24
/* 8133D288 | 38 A0 00 80 */	li r5, 0x80
/* 8133D28C | 48 1F 3D 95 */	bl OSInitMessageQueue
/* 8133D290 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8133D294 | 38 1D 00 04 */	addi r0, r29, 0x4
/* 8133D298 | 38 7D 02 24 */	addi r3, r29, 0x224
/* 8133D29C | 38 8D 80 78 */	li r4, lbl_816960B8@sda21
/* 8133D2A0 | 90 05 00 50 */	stw r0, 0x50(r5)
/* 8133D2A4 | 38 A0 00 41 */	li r5, 0x41
/* 8133D2A8 | 48 2C 51 1D */	bl strncpy
/* 8133D2AC | 38 80 00 02 */	li r4, 0x2
/* 8133D2B0 | 38 60 00 01 */	li r3, 0x1
/* 8133D2B4 | 48 28 1C 05 */	bl ES_SetUid
/* 8133D2B8 | 38 60 00 01 */	li r3, 0x1
/* 8133D2BC | 48 28 0E 91 */	bl ES_OpenContentFile
/* 8133D2C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D2C4 | 90 7D 02 68 */	stw r3, 0x268(r29)
/* 8133D2C8 | 40 80 00 44 */	bge .L_8133D30C
/* 8133D2CC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133D2D0 | 3C C0 81 63 */	lis r6, lbl_81634E90@ha
/* 8133D2D4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D2D8 | 7C 65 1B 78 */	mr r5, r3
/* 8133D2DC | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D2E0 | 38 C6 4E 90 */	addi r6, r6, lbl_81634E90@l
/* 8133D2E4 | 38 8D 80 79 */	li r4, lbl_816960B9@sda21
/* 8133D2E8 | 38 E0 00 2B */	li r7, 0x2b
/* 8133D2EC | 48 01 94 0D */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D2F0 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D2F4 | 38 80 00 01 */	li r4, 0x1
/* 8133D2F8 | 38 A0 00 02 */	li r5, 0x2
/* 8133D2FC | 38 C0 00 00 */	li r6, 0x0
/* 8133D300 | 38 E0 00 00 */	li r7, 0x0
/* 8133D304 | 39 00 FF FF */	li r8, -0x1
/* 8133D308 | 48 01 92 0D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133D30C:
/* 8133D30C | 80 7D 02 68 */	lwz r3, 0x268(r29)
/* 8133D310 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8133D314 | 38 A0 00 20 */	li r5, 0x20
/* 8133D318 | 48 28 0F 39 */	bl ES_ReadContentFile
/* 8133D31C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D320 | 40 80 00 44 */	bge .L_8133D364
/* 8133D324 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133D328 | 3C C0 81 63 */	lis r6, lbl_81634E90@ha
/* 8133D32C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D330 | 7C 65 1B 78 */	mr r5, r3
/* 8133D334 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D338 | 38 C6 4E 90 */	addi r6, r6, lbl_81634E90@l
/* 8133D33C | 38 8D 80 79 */	li r4, lbl_816960B9@sda21
/* 8133D340 | 38 E0 00 34 */	li r7, 0x34
/* 8133D344 | 48 01 93 B5 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D348 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D34C | 38 80 00 01 */	li r4, 0x1
/* 8133D350 | 38 A0 00 02 */	li r5, 0x2
/* 8133D354 | 38 C0 00 00 */	li r6, 0x0
/* 8133D358 | 38 E0 00 00 */	li r7, 0x0
/* 8133D35C | 39 00 FF FF */	li r8, -0x1
/* 8133D360 | 48 01 91 B5 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133D364:
/* 8133D364 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8133D368 | 38 80 00 20 */	li r4, 0x20
/* 8133D36C | 38 03 00 1F */	addi r0, r3, 0x1f
/* 8133D370 | 54 1E 00 34 */	clrrwi r30, r0, 5
/* 8133D374 | 7F C3 F3 78 */	mr r3, r30
/* 8133D378 | 48 2B AD 55 */	bl __nwa__FUli
/* 8133D37C | 90 7D 02 6C */	stw r3, 0x26c(r29)
/* 8133D380 | 38 80 00 00 */	li r4, 0x0
/* 8133D384 | 80 7D 02 68 */	lwz r3, 0x268(r29)
/* 8133D388 | 38 A0 00 00 */	li r5, 0x0
/* 8133D38C | 48 28 0F 65 */	bl ES_SeekContentFile
/* 8133D390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D394 | 40 80 00 44 */	bge .L_8133D3D8
/* 8133D398 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133D39C | 3C C0 81 63 */	lis r6, lbl_81634E90@ha
/* 8133D3A0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D3A4 | 7C 65 1B 78 */	mr r5, r3
/* 8133D3A8 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D3AC | 38 C6 4E 90 */	addi r6, r6, lbl_81634E90@l
/* 8133D3B0 | 38 8D 80 79 */	li r4, lbl_816960B9@sda21
/* 8133D3B4 | 38 E0 00 42 */	li r7, 0x42
/* 8133D3B8 | 48 01 93 41 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D3BC | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D3C0 | 38 80 00 01 */	li r4, 0x1
/* 8133D3C4 | 38 A0 00 02 */	li r5, 0x2
/* 8133D3C8 | 38 C0 00 00 */	li r6, 0x0
/* 8133D3CC | 38 E0 00 00 */	li r7, 0x0
/* 8133D3D0 | 39 00 FF FF */	li r8, -0x1
/* 8133D3D4 | 48 01 91 41 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133D3D8:
/* 8133D3D8 | 80 7D 02 68 */	lwz r3, 0x268(r29)
/* 8133D3DC | 7F C5 F3 78 */	mr r5, r30
/* 8133D3E0 | 80 9D 02 6C */	lwz r4, 0x26c(r29)
/* 8133D3E4 | 48 28 0E 6D */	bl ES_ReadContentFile
/* 8133D3E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D3EC | 40 80 00 44 */	bge .L_8133D430
/* 8133D3F0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133D3F4 | 3C C0 81 63 */	lis r6, lbl_81634E90@ha
/* 8133D3F8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D3FC | 7C 65 1B 78 */	mr r5, r3
/* 8133D400 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D404 | 38 C6 4E 90 */	addi r6, r6, lbl_81634E90@l
/* 8133D408 | 38 8D 80 79 */	li r4, lbl_816960B9@sda21
/* 8133D40C | 38 E0 00 48 */	li r7, 0x48
/* 8133D410 | 48 01 92 E9 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D414 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D418 | 38 80 00 01 */	li r4, 0x1
/* 8133D41C | 38 A0 00 02 */	li r5, 0x2
/* 8133D420 | 38 C0 00 00 */	li r6, 0x0
/* 8133D424 | 38 E0 00 00 */	li r7, 0x0
/* 8133D428 | 39 00 FF FF */	li r8, -0x1
/* 8133D42C | 48 01 90 E9 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133D430:
/* 8133D430 | 80 7D 02 6C */	lwz r3, 0x26c(r29)
/* 8133D434 | 38 9D 02 70 */	addi r4, r29, 0x270
/* 8133D438 | 48 23 39 69 */	bl ARCInitHandle
/* 8133D43C | 7F A3 EB 78 */	mr r3, r29
/* 8133D440 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8133D444 | 7D 4B 53 78 */	mr r11, r10
/* 8133D448 | 48 2B C0 CD */	bl _restgpr_29
/* 8133D44C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8133D450 | 7C 08 03 A6 */	mtlr r0
/* 8133D454 | 7D 41 53 78 */	mr r1, r10
/* 8133D458 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4nand7ManagerFPQ23EGG4Heap

# .text:0x228 | 0x8133D45C | size: 0x4
# ipl::nand::Manager::openContentsAll()
.fn openContentsAll__Q33ipl4nand7ManagerFv, global
/* 8133D45C | 4E 80 00 20 */	blr
.endfn openContentsAll__Q33ipl4nand7ManagerFv

# .text:0x22C | 0x8133D460 | size: 0x88
# ipl::nand::Manager::closeContentsAll()
.fn closeContentsAll__Q33ipl4nand7ManagerFv, global
/* 8133D460 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133D464 | 7C 08 02 A6 */	mflr r0
/* 8133D468 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133D46C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133D470 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133D474 | 7C 7E 1B 78 */	mr r30, r3
/* 8133D478 | 80 63 02 68 */	lwz r3, 0x268(r3)
/* 8133D47C | 48 28 0F 01 */	bl ES_CloseContentFile
/* 8133D480 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D484 | 41 82 00 44 */	beq .L_8133D4C8
/* 8133D488 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133D48C | 3C C0 81 63 */	lis r6, lbl_81634E90@ha
/* 8133D490 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133D494 | 7C 65 1B 78 */	mr r5, r3
/* 8133D498 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D49C | 38 C6 4E 90 */	addi r6, r6, lbl_81634E90@l
/* 8133D4A0 | 38 8D 80 79 */	li r4, lbl_816960B9@sda21
/* 8133D4A4 | 38 E0 00 66 */	li r7, 0x66
/* 8133D4A8 | 48 01 92 51 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133D4AC | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133D4B0 | 38 80 00 01 */	li r4, 0x1
/* 8133D4B4 | 38 A0 00 02 */	li r5, 0x2
/* 8133D4B8 | 38 C0 00 00 */	li r6, 0x0
/* 8133D4BC | 38 E0 00 00 */	li r7, 0x0
/* 8133D4C0 | 39 00 FF FF */	li r8, -0x1
/* 8133D4C4 | 48 01 90 51 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133D4C8:
/* 8133D4C8 | 38 00 FF FF */	li r0, -0x1
/* 8133D4CC | 90 1E 02 68 */	stw r0, 0x268(r30)
/* 8133D4D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133D4D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133D4D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133D4DC | 7C 08 03 A6 */	mtlr r0
/* 8133D4E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133D4E4 | 4E 80 00 20 */	blr
.endfn closeContentsAll__Q33ipl4nand7ManagerFv

# .text:0x2B4 | 0x8133D4E8 | size: 0xEC
# ipl::nand::Manager::readAsync(EGG::Heap*, const char*, int, unsigned long, bool)
.fn readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb, global
/* 8133D4E8 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8133D4EC | 7C 08 02 A6 */	mflr r0
/* 8133D4F0 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8133D4F4 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8133D4F8 | 48 2B BF C5 */	bl _savegpr_26
/* 8133D4FC | 7C 7A 1B 78 */	mr r26, r3
/* 8133D500 | 7C 9B 23 78 */	mr r27, r4
/* 8133D504 | 7C BF 2B 78 */	mr r31, r5
/* 8133D508 | 7C DC 33 78 */	mr r28, r6
/* 8133D50C | 7C FD 3B 78 */	mr r29, r7
/* 8133D510 | 7D 1E 43 78 */	mr r30, r8
/* 8133D514 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133D518 | 38 9A 02 24 */	addi r4, r26, 0x224
/* 8133D51C | 38 A0 00 41 */	li r5, 0x41
/* 8133D520 | 48 2C 4E A5 */	bl strncpy
/* 8133D524 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133D528 | 48 2B B9 D5 */	bl strlen
/* 8133D52C | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133D530 | 7F E4 FB 78 */	mr r4, r31
/* 8133D534 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133D538 | 48 2C 4E FD */	bl strncat
/* 8133D53C | 7F 64 DB 78 */	mr r4, r27
/* 8133D540 | 38 60 01 90 */	li r3, 0x190
/* 8133D544 | 38 A0 00 04 */	li r5, 0x4
/* 8133D548 | 48 2B AB 69 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133D54C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D550 | 7C 7F 1B 78 */	mr r31, r3
/* 8133D554 | 41 82 00 28 */	beq .L_8133D57C
/* 8133D558 | 7F 64 DB 78 */	mr r4, r27
/* 8133D55C | 7F 88 E3 78 */	mr r8, r28
/* 8133D560 | 7F A9 EB 78 */	mr r9, r29
/* 8133D564 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8133D568 | 38 C0 00 00 */	li r6, 0x0
/* 8133D56C | 38 E0 00 00 */	li r7, 0x0
/* 8133D570 | 39 40 00 00 */	li r10, 0x0
/* 8133D574 | 4B FF DD C1 */	bl __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcP9ARCHandlePCciUlb
/* 8133D578 | 7C 7F 1B 78 */	mr r31, r3
.L_8133D57C:
/* 8133D57C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8133D580 | 41 82 00 20 */	beq .L_8133D5A0
/* 8133D584 | 3C 80 81 34 */	lis r4, doReadTask__Q33ipl4nand7ManagerFPv@ha
/* 8133D588 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8133D58C | 7F E5 FB 78 */	mr r5, r31
/* 8133D590 | 38 C0 00 00 */	li r6, 0x0
/* 8133D594 | 38 84 DA 28 */	addi r4, r4, doReadTask__Q33ipl4nand7ManagerFPv@l
/* 8133D598 | 48 2B AD 35 */	bl fn_815F82CC
/* 8133D59C | 48 00 00 1C */	b .L_8133D5B8
.L_8133D5A0:
/* 8133D5A0 | 3C 80 81 34 */	lis r4, doReadTask__Q33ipl4nand7ManagerFPv@ha
/* 8133D5A4 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8133D5A8 | 7F E5 FB 78 */	mr r5, r31
/* 8133D5AC | 38 C0 00 00 */	li r6, 0x0
/* 8133D5B0 | 38 84 DA 28 */	addi r4, r4, doReadTask__Q33ipl4nand7ManagerFPv@l
/* 8133D5B4 | 48 2B AC 95 */	bl fn_815F8248
.L_8133D5B8:
/* 8133D5B8 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8133D5BC | 7F E3 FB 78 */	mr r3, r31
/* 8133D5C0 | 48 2B BF 49 */	bl _restgpr_26
/* 8133D5C4 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8133D5C8 | 7C 08 03 A6 */	mtlr r0
/* 8133D5CC | 38 21 00 70 */	addi r1, r1, 0x70
/* 8133D5D0 | 4E 80 00 20 */	blr
.endfn readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb

# .text:0x3A0 | 0x8133D5D4 | size: 0xC0
# ipl::nand::Manager::read(EGG::Heap*, const char*, int, unsigned long, bool)
.fn read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb, global
/* 8133D5D4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8133D5D8 | 7C 08 02 A6 */	mflr r0
/* 8133D5DC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8133D5E0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8133D5E4 | 48 2B BE E1 */	bl _savegpr_28
/* 8133D5E8 | 7C 68 1B 78 */	mr r8, r3
/* 8133D5EC | 7C 9C 23 78 */	mr r28, r4
/* 8133D5F0 | 7C BF 2B 78 */	mr r31, r5
/* 8133D5F4 | 7C DD 33 78 */	mr r29, r6
/* 8133D5F8 | 7C FE 3B 78 */	mr r30, r7
/* 8133D5FC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133D600 | 38 88 02 24 */	addi r4, r8, 0x224
/* 8133D604 | 38 A0 00 41 */	li r5, 0x41
/* 8133D608 | 48 2C 4D BD */	bl strncpy
/* 8133D60C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133D610 | 48 2B B8 ED */	bl strlen
/* 8133D614 | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133D618 | 7F E4 FB 78 */	mr r4, r31
/* 8133D61C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133D620 | 48 2C 4E 15 */	bl strncat
/* 8133D624 | 7F 84 E3 78 */	mr r4, r28
/* 8133D628 | 38 60 01 90 */	li r3, 0x190
/* 8133D62C | 38 A0 00 04 */	li r5, 0x4
/* 8133D630 | 48 2B AA 81 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133D634 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D638 | 7C 7F 1B 78 */	mr r31, r3
/* 8133D63C | 41 82 00 28 */	beq .L_8133D664
/* 8133D640 | 7F 84 E3 78 */	mr r4, r28
/* 8133D644 | 7F A8 EB 78 */	mr r8, r29
/* 8133D648 | 7F C9 F3 78 */	mr r9, r30
/* 8133D64C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8133D650 | 38 C0 00 00 */	li r6, 0x0
/* 8133D654 | 38 E0 00 00 */	li r7, 0x0
/* 8133D658 | 39 40 00 00 */	li r10, 0x0
/* 8133D65C | 4B FF DC D9 */	bl __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcP9ARCHandlePCciUlb
/* 8133D660 | 7C 7F 1B 78 */	mr r31, r3
.L_8133D664:
/* 8133D664 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133D668 | 7F E3 FB 78 */	mr r3, r31
/* 8133D66C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8133D670 | 7D 89 03 A6 */	mtctr r12
/* 8133D674 | 4E 80 04 21 */	bctrl
/* 8133D678 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8133D67C | 7F E3 FB 78 */	mr r3, r31
/* 8133D680 | 48 2B BE 91 */	bl _restgpr_28
/* 8133D684 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8133D688 | 7C 08 03 A6 */	mtlr r0
/* 8133D68C | 38 21 00 60 */	addi r1, r1, 0x60
/* 8133D690 | 4E 80 00 20 */	blr
.endfn read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb

# .text:0x460 | 0x8133D694 | size: 0xAC
# ipl::nand::Manager::readSharedAsync(EGG::Heap*, const char*, int, int, unsigned long, unsigned long long, int)
.fn readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi, global
/* 8133D694 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8133D698 | 7C 08 02 A6 */	mflr r0
/* 8133D69C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8133D6A0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8133D6A4 | 48 2B BE 09 */	bl _savegpr_22
/* 8133D6A8 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8133D6AC | 7C 76 1B 78 */	mr r22, r3
/* 8133D6B0 | 7C B8 2B 78 */	mr r24, r5
/* 8133D6B4 | 7C 97 23 78 */	mr r23, r4
/* 8133D6B8 | 7C D9 33 78 */	mr r25, r6
/* 8133D6BC | 7C FA 3B 78 */	mr r26, r7
/* 8133D6C0 | 7D 1B 43 78 */	mr r27, r8
/* 8133D6C4 | 7D 3D 4B 78 */	mr r29, r9
/* 8133D6C8 | 7D 5C 53 78 */	mr r28, r10
/* 8133D6CC | 38 60 01 C8 */	li r3, 0x1c8
/* 8133D6D0 | 38 A0 00 04 */	li r5, 0x4
/* 8133D6D4 | 48 2B A9 DD */	bl __nw__FUlPQ23EGG4Heapi
/* 8133D6D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D6DC | 7C 7F 1B 78 */	mr r31, r3
/* 8133D6E0 | 41 82 00 2C */	beq .L_8133D70C
/* 8133D6E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133D6E8 | 7E E4 BB 78 */	mr r4, r23
/* 8133D6EC | 7F 05 C3 78 */	mr r5, r24
/* 8133D6F0 | 7F 26 CB 78 */	mr r6, r25
/* 8133D6F4 | 7F 47 D3 78 */	mr r7, r26
/* 8133D6F8 | 7F 68 DB 78 */	mr r8, r27
/* 8133D6FC | 7F 8A E3 78 */	mr r10, r28
/* 8133D700 | 7F A9 EB 78 */	mr r9, r29
/* 8133D704 | 4B FF EF D5 */	bl __ct__Q33ipl4nand10SharedFileFPQ23EGG4HeapPCcUliUlUxi
/* 8133D708 | 7C 7F 1B 78 */	mr r31, r3
.L_8133D70C:
/* 8133D70C | 3C 80 81 34 */	lis r4, doReadTask__Q33ipl4nand7ManagerFPv@ha
/* 8133D710 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 8133D714 | 7F E5 FB 78 */	mr r5, r31
/* 8133D718 | 38 C0 00 00 */	li r6, 0x0
/* 8133D71C | 38 84 DA 28 */	addi r4, r4, doReadTask__Q33ipl4nand7ManagerFPv@l
/* 8133D720 | 48 2B AB 29 */	bl fn_815F8248
/* 8133D724 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8133D728 | 7F E3 FB 78 */	mr r3, r31
/* 8133D72C | 48 2B BD CD */	bl _restgpr_22
/* 8133D730 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8133D734 | 7C 08 03 A6 */	mtlr r0
/* 8133D738 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8133D73C | 4E 80 00 20 */	blr
.endfn readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi

# .text:0x50C | 0x8133D740 | size: 0xB8
# ipl::nand::Manager::readMetaHeaderAsync(EGG::Heap*, unsigned long long, int, unsigned long, void (*)(void*), void*, int)
.fn readMetaHeaderAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapUxiUlPFPv_vPvi, global
/* 8133D740 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8133D744 | 7C 08 02 A6 */	mflr r0
/* 8133D748 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8133D74C | 39 61 00 40 */	addi r11, r1, 0x40
/* 8133D750 | 48 2B BD 61 */	bl _savegpr_23
/* 8133D754 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8133D758 | 7C B9 2B 78 */	mr r25, r5
/* 8133D75C | 7C 97 23 78 */	mr r23, r4
/* 8133D760 | 7C D8 33 78 */	mr r24, r6
/* 8133D764 | 7C FA 3B 78 */	mr r26, r7
/* 8133D768 | 7D 1B 43 78 */	mr r27, r8
/* 8133D76C | 7D 3C 4B 78 */	mr r28, r9
/* 8133D770 | 7D 5D 53 78 */	mr r29, r10
/* 8133D774 | 38 60 01 B8 */	li r3, 0x1b8
/* 8133D778 | 38 A0 00 04 */	li r5, 0x4
/* 8133D77C | 48 2B A9 35 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133D780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D784 | 7C 7F 1B 78 */	mr r31, r3
/* 8133D788 | 41 82 00 34 */	beq .L_8133D7BC
/* 8133D78C | 93 81 00 08 */	stw r28, 0x8(r1)
/* 8133D790 | 7E E4 BB 78 */	mr r4, r23
/* 8133D794 | 7F 08 C3 78 */	mr r8, r24
/* 8133D798 | 7F 27 CB 78 */	mr r7, r25
/* 8133D79C | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 8133D7A0 | 7F 49 D3 78 */	mr r9, r26
/* 8133D7A4 | 7F 6A DB 78 */	mr r10, r27
/* 8133D7A8 | 38 AD 80 78 */	li r5, lbl_816960B8@sda21
/* 8133D7AC | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8133D7B0 | 38 C0 00 00 */	li r6, 0x0
/* 8133D7B4 | 4B FF F4 81 */	bl __ct__Q33ipl4nand8MetaFileFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi
/* 8133D7B8 | 7C 7F 1B 78 */	mr r31, r3
.L_8133D7BC:
/* 8133D7BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133D7C0 | 3C 80 81 34 */	lis r4, doReadTask__Q33ipl4nand7ManagerFPv@ha
/* 8133D7C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133D7C8 | 7F E5 FB 78 */	mr r5, r31
/* 8133D7CC | 80 63 00 D8 */	lwz r3, 0xd8(r3)
/* 8133D7D0 | 38 84 DA 28 */	addi r4, r4, doReadTask__Q33ipl4nand7ManagerFPv@l
/* 8133D7D4 | 38 C0 00 00 */	li r6, 0x0
/* 8133D7D8 | 48 2B AA 71 */	bl fn_815F8248
/* 8133D7DC | 39 61 00 40 */	addi r11, r1, 0x40
/* 8133D7E0 | 7F E3 FB 78 */	mr r3, r31
/* 8133D7E4 | 48 2B BD 19 */	bl _restgpr_23
/* 8133D7E8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8133D7EC | 7C 08 03 A6 */	mtlr r0
/* 8133D7F0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8133D7F4 | 4E 80 00 20 */	blr
.endfn readMetaHeaderAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapUxiUlPFPv_vPvi

# .text:0x5C4 | 0x8133D7F8 | size: 0xBC
# ipl::nand::Manager::readMetaBodyAsync(EGG::Heap*, const char*, ARCHandle*, unsigned long long, int, unsigned long, void (*)(void*), void*, int)
.fn readMetaBodyAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi, global
/* 8133D7F8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8133D7FC | 7C 08 02 A6 */	mflr r0
/* 8133D800 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8133D804 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8133D808 | 48 2B BC 9D */	bl _savegpr_20
/* 8133D80C | 83 81 00 58 */	lwz r28, 0x58(r1)
/* 8133D810 | 7C 74 1B 78 */	mr r20, r3
/* 8133D814 | 7C B6 2B 78 */	mr r22, r5
/* 8133D818 | 83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 8133D81C | 83 C1 00 60 */	lwz r30, 0x60(r1)
/* 8133D820 | 7C 95 23 78 */	mr r21, r4
/* 8133D824 | 7C D7 33 78 */	mr r23, r6
/* 8133D828 | 7C F9 3B 78 */	mr r25, r7
/* 8133D82C | 7D 18 43 78 */	mr r24, r8
/* 8133D830 | 7D 3A 4B 78 */	mr r26, r9
/* 8133D834 | 7D 5B 53 78 */	mr r27, r10
/* 8133D838 | 38 60 01 B8 */	li r3, 0x1b8
/* 8133D83C | 38 A0 00 04 */	li r5, 0x4
/* 8133D840 | 48 2B A8 71 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133D844 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D848 | 7C 7F 1B 78 */	mr r31, r3
/* 8133D84C | 41 82 00 34 */	beq .L_8133D880
/* 8133D850 | 93 81 00 08 */	stw r28, 0x8(r1)
/* 8133D854 | 7E A4 AB 78 */	mr r4, r21
/* 8133D858 | 7E C5 B3 78 */	mr r5, r22
/* 8133D85C | 7E E6 BB 78 */	mr r6, r23
/* 8133D860 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 8133D864 | 7F 08 C3 78 */	mr r8, r24
/* 8133D868 | 7F 27 CB 78 */	mr r7, r25
/* 8133D86C | 7F 49 D3 78 */	mr r9, r26
/* 8133D870 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8133D874 | 7F 6A DB 78 */	mr r10, r27
/* 8133D878 | 4B FF F3 BD */	bl __ct__Q33ipl4nand8MetaFileFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi
/* 8133D87C | 7C 7F 1B 78 */	mr r31, r3
.L_8133D880:
/* 8133D880 | 3C 80 81 34 */	lis r4, doReadTask__Q33ipl4nand7ManagerFPv@ha
/* 8133D884 | 80 74 00 00 */	lwz r3, 0x0(r20)
/* 8133D888 | 7F E5 FB 78 */	mr r5, r31
/* 8133D88C | 38 C0 00 00 */	li r6, 0x0
/* 8133D890 | 38 84 DA 28 */	addi r4, r4, doReadTask__Q33ipl4nand7ManagerFPv@l
/* 8133D894 | 48 2B A9 B5 */	bl fn_815F8248
/* 8133D898 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8133D89C | 7F E3 FB 78 */	mr r3, r31
/* 8133D8A0 | 48 2B BC 51 */	bl _restgpr_20
/* 8133D8A4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8133D8A8 | 7C 08 03 A6 */	mtlr r0
/* 8133D8AC | 38 21 00 50 */	addi r1, r1, 0x50
/* 8133D8B0 | 4E 80 00 20 */	blr
.endfn readMetaBodyAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi

# .text:0x680 | 0x8133D8B4 | size: 0x94
# ipl::nand::Manager::readLayoutAsync(EGG::Heap*, const char*, bool)
.fn readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb, global
/* 8133D8B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133D8B8 | 7C 08 02 A6 */	mflr r0
/* 8133D8BC | 38 E0 00 00 */	li r7, 0x0
/* 8133D8C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133D8C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133D8C8 | 7C DF 33 78 */	mr r31, r6
/* 8133D8CC | 38 C0 00 00 */	li r6, 0x0
/* 8133D8D0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133D8D4 | 7C 7E 1B 78 */	mr r30, r3
/* 8133D8D8 | 48 00 00 B9 */	bl readLayout___Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleb
/* 8133D8DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133D8E0 | 7C 7F 1B 78 */	mr r31, r3
/* 8133D8E4 | 41 82 00 30 */	beq .L_8133D914
/* 8133D8E8 | 3C 60 81 63 */	lis r3, lbl_81634EA3@ha
/* 8133D8EC | 38 63 4E A3 */	addi r3, r3, lbl_81634EA3@l
/* 8133D8F0 | 4C C6 31 82 */	crclr cr1eq
/* 8133D8F4 | 48 1F 0D AD */	bl OSReport
/* 8133D8F8 | 3C 80 81 34 */	lis r4, doReadTask__Q33ipl4nand7ManagerFPv@ha
/* 8133D8FC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8133D900 | 7F E5 FB 78 */	mr r5, r31
/* 8133D904 | 38 C0 00 00 */	li r6, 0x0
/* 8133D908 | 38 84 DA 28 */	addi r4, r4, doReadTask__Q33ipl4nand7ManagerFPv@l
/* 8133D90C | 48 2B A9 C1 */	bl fn_815F82CC
/* 8133D910 | 48 00 00 1C */	b .L_8133D92C
.L_8133D914:
/* 8133D914 | 3C 80 81 34 */	lis r4, doReadTask__Q33ipl4nand7ManagerFPv@ha
/* 8133D918 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8133D91C | 7F E5 FB 78 */	mr r5, r31
/* 8133D920 | 38 C0 00 00 */	li r6, 0x0
/* 8133D924 | 38 84 DA 28 */	addi r4, r4, doReadTask__Q33ipl4nand7ManagerFPv@l
/* 8133D928 | 48 2B A9 21 */	bl fn_815F8248
.L_8133D92C:
/* 8133D92C | 7F E3 FB 78 */	mr r3, r31
/* 8133D930 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133D934 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133D938 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133D93C | 7C 08 03 A6 */	mtlr r0
/* 8133D940 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133D944 | 4E 80 00 20 */	blr
.endfn readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb

# .text:0x714 | 0x8133D948 | size: 0x48
# ipl::nand::Manager::readLayout(EGG::Heap*, const char*, bool)
.fn readLayout__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb, global
/* 8133D948 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133D94C | 7C 08 02 A6 */	mflr r0
/* 8133D950 | 38 C0 00 00 */	li r6, 0x0
/* 8133D954 | 38 E0 00 00 */	li r7, 0x0
/* 8133D958 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133D95C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133D960 | 48 00 00 31 */	bl readLayout___Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleb
/* 8133D964 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133D968 | 7C 7F 1B 78 */	mr r31, r3
/* 8133D96C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8133D970 | 7D 89 03 A6 */	mtctr r12
/* 8133D974 | 4E 80 04 21 */	bctrl
/* 8133D978 | 7F E3 FB 78 */	mr r3, r31
/* 8133D97C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133D980 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133D984 | 7C 08 03 A6 */	mtlr r0
/* 8133D988 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133D98C | 4E 80 00 20 */	blr
.endfn readLayout__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb

# .text:0x75C | 0x8133D990 | size: 0x98
# ipl::nand::Manager::readLayout_(EGG::Heap*, const char*, ARCHandle*, bool)
.fn readLayout___Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleb, global
/* 8133D990 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8133D994 | 7C 08 02 A6 */	mflr r0
/* 8133D998 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8133D99C | 39 61 00 60 */	addi r11, r1, 0x60
/* 8133D9A0 | 48 2B BB 25 */	bl _savegpr_28
/* 8133D9A4 | 7C 68 1B 78 */	mr r8, r3
/* 8133D9A8 | 7C 9C 23 78 */	mr r28, r4
/* 8133D9AC | 7C BD 2B 78 */	mr r29, r5
/* 8133D9B0 | 7C DE 33 78 */	mr r30, r6
/* 8133D9B4 | 7C FF 3B 78 */	mr r31, r7
/* 8133D9B8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133D9BC | 38 88 02 24 */	addi r4, r8, 0x224
/* 8133D9C0 | 38 A0 00 41 */	li r5, 0x41
/* 8133D9C4 | 48 2C 4A 01 */	bl strncpy
/* 8133D9C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133D9CC | 48 2B B5 31 */	bl strlen
/* 8133D9D0 | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133D9D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133D9D8 | 38 8D 80 7C */	li r4, lbl_816960BC@sda21
/* 8133D9DC | 48 2C 4A 59 */	bl strncat
/* 8133D9E0 | 7F 84 E3 78 */	mr r4, r28
/* 8133D9E4 | 38 60 00 0C */	li r3, 0xc
/* 8133D9E8 | 38 A0 00 04 */	li r5, 0x4
/* 8133D9EC | 48 2B A6 C5 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133D9F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133D9F4 | 41 82 00 1C */	beq .L_8133DA10
/* 8133D9F8 | 7F 84 E3 78 */	mr r4, r28
/* 8133D9FC | 7F A6 EB 78 */	mr r6, r29
/* 8133DA00 | 7F C7 F3 78 */	mr r7, r30
/* 8133DA04 | 7F E8 FB 78 */	mr r8, r31
/* 8133DA08 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8133DA0C | 4B FF E8 45 */	bl __ct__Q33ipl4nand10LayoutFileFPQ23EGG4HeapPCcPCcP9ARCHandleb
.L_8133DA10:
/* 8133DA10 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8133DA14 | 48 2B BA FD */	bl _restgpr_28
/* 8133DA18 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8133DA1C | 7C 08 03 A6 */	mtlr r0
/* 8133DA20 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8133DA24 | 4E 80 00 20 */	blr
.endfn readLayout___Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleb

# .text:0x7F4 | 0x8133DA28 | size: 0x10
# ipl::nand::Manager::doReadTask(void*)
.fn doReadTask__Q33ipl4nand7ManagerFPv, global
/* 8133DA28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133DA2C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8133DA30 | 7D 89 03 A6 */	mtctr r12
/* 8133DA34 | 4E 80 04 20 */	bctr
.endfn doReadTask__Q33ipl4nand7ManagerFPv

# .text:0x804 | 0x8133DA38 | size: 0x54
# ipl::nand::Manager::writeAsync(EGG::Heap*, const char*, void*, unsigned long, unsigned char)
.fn writeAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc, global
/* 8133DA38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133DA3C | 7C 08 02 A6 */	mflr r0
/* 8133DA40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133DA44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133DA48 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133DA4C | 7C 7E 1B 78 */	mr r30, r3
/* 8133DA50 | 48 00 00 7D */	bl write___Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc
/* 8133DA54 | 7C 7F 1B 78 */	mr r31, r3
/* 8133DA58 | 3C 80 81 34 */	lis r4, doWriteTask__Q33ipl4nand7ManagerFPv@ha
/* 8133DA5C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8133DA60 | 7F E5 FB 78 */	mr r5, r31
/* 8133DA64 | 38 84 DB 68 */	addi r4, r4, doWriteTask__Q33ipl4nand7ManagerFPv@l
/* 8133DA68 | 38 C0 00 00 */	li r6, 0x0
/* 8133DA6C | 48 2B A7 DD */	bl fn_815F8248
/* 8133DA70 | 7F E3 FB 78 */	mr r3, r31
/* 8133DA74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133DA78 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133DA7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133DA80 | 7C 08 03 A6 */	mtlr r0
/* 8133DA84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133DA88 | 4E 80 00 20 */	blr
.endfn writeAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc

# .text:0x858 | 0x8133DA8C | size: 0x40
# ipl::nand::Manager::write(EGG::Heap*, const char*, void*, unsigned long, unsigned char)
.fn write__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc, global
/* 8133DA8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133DA90 | 7C 08 02 A6 */	mflr r0
/* 8133DA94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133DA98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133DA9C | 48 00 00 31 */	bl write___Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc
/* 8133DAA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133DAA4 | 7C 7F 1B 78 */	mr r31, r3
/* 8133DAA8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8133DAAC | 7D 89 03 A6 */	mtctr r12
/* 8133DAB0 | 4E 80 04 21 */	bctrl
/* 8133DAB4 | 7F E3 FB 78 */	mr r3, r31
/* 8133DAB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133DABC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133DAC0 | 7C 08 03 A6 */	mtlr r0
/* 8133DAC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133DAC8 | 4E 80 00 20 */	blr
.endfn write__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc

# .text:0x898 | 0x8133DACC | size: 0x9C
# ipl::nand::Manager::write_(EGG::Heap*, const char*, void*, unsigned long, unsigned char)
.fn write___Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc, global
/* 8133DACC | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8133DAD0 | 7C 08 02 A6 */	mflr r0
/* 8133DAD4 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8133DAD8 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8133DADC | 48 2B B9 E5 */	bl _savegpr_27
/* 8133DAE0 | 7C 69 1B 78 */	mr r9, r3
/* 8133DAE4 | 7C 9B 23 78 */	mr r27, r4
/* 8133DAE8 | 7C BC 2B 78 */	mr r28, r5
/* 8133DAEC | 7C DD 33 78 */	mr r29, r6
/* 8133DAF0 | 7C FE 3B 78 */	mr r30, r7
/* 8133DAF4 | 7D 1F 43 78 */	mr r31, r8
/* 8133DAF8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133DAFC | 38 89 02 24 */	addi r4, r9, 0x224
/* 8133DB00 | 38 A0 00 41 */	li r5, 0x41
/* 8133DB04 | 48 2C 48 C1 */	bl strncpy
/* 8133DB08 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133DB0C | 48 2B B3 F1 */	bl strlen
/* 8133DB10 | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133DB14 | 7F 84 E3 78 */	mr r4, r28
/* 8133DB18 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133DB1C | 48 2C 49 19 */	bl strncat
/* 8133DB20 | 7F 64 DB 78 */	mr r4, r27
/* 8133DB24 | 38 60 01 90 */	li r3, 0x190
/* 8133DB28 | 38 A0 00 04 */	li r5, 0x4
/* 8133DB2C | 48 2B A5 85 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133DB30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133DB34 | 41 82 00 1C */	beq .L_8133DB50
/* 8133DB38 | 7F 64 DB 78 */	mr r4, r27
/* 8133DB3C | 7F 85 E3 78 */	mr r5, r28
/* 8133DB40 | 7F A6 EB 78 */	mr r6, r29
/* 8133DB44 | 7F C7 F3 78 */	mr r7, r30
/* 8133DB48 | 7F E8 FB 78 */	mr r8, r31
/* 8133DB4C | 4B FF D8 A9 */	bl __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcPUcUlUc
.L_8133DB50:
/* 8133DB50 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8133DB54 | 48 2B B9 B9 */	bl _restgpr_27
/* 8133DB58 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8133DB5C | 7C 08 03 A6 */	mtlr r0
/* 8133DB60 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8133DB64 | 4E 80 00 20 */	blr
.endfn write___Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc

# .text:0x934 | 0x8133DB68 | size: 0x10
# ipl::nand::Manager::doWriteTask(void*)
.fn doWriteTask__Q33ipl4nand7ManagerFPv, global
/* 8133DB68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133DB6C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8133DB70 | 7D 89 03 A6 */	mtctr r12
/* 8133DB74 | 4E 80 04 20 */	bctr
.endfn doWriteTask__Q33ipl4nand7ManagerFPv

# .text:0x944 | 0x8133DB78 | size: 0x18
# ipl::nand::Manager::sendToken(int)
.fn sendToken__Q33ipl4nand7ManagerFi, global
/* 8133DB78 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133DB7C | 3C E0 81 34 */	lis r7, doSendTokenTask__Q33ipl4nand7ManagerFPv@ha
/* 8133DB80 | 7C 86 23 78 */	mr r6, r4
/* 8133DB84 | 38 A0 00 00 */	li r5, 0x0
/* 8133DB88 | 38 87 DB 90 */	addi r4, r7, doSendTokenTask__Q33ipl4nand7ManagerFPv@l
/* 8133DB8C | 48 2B A6 BC */	b fn_815F8248
.endfn sendToken__Q33ipl4nand7ManagerFi

# .text:0x95C | 0x8133DB90 | size: 0x4
# ipl::nand::Manager::doSendTokenTask(void*)
.fn doSendTokenTask__Q33ipl4nand7ManagerFPv, global
/* 8133DB90 | 4E 80 00 20 */	blr
.endfn doSendTokenTask__Q33ipl4nand7ManagerFPv

# .text:0x960 | 0x8133DB94 | size: 0x78
# ipl::nand::Manager::receiveToken(int*)
.fn receiveToken__Q33ipl4nand7ManagerFPi, global
/* 8133DB94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133DB98 | 7C 08 02 A6 */	mflr r0
/* 8133DB9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133DBA0 | 38 00 00 00 */	li r0, 0x0
/* 8133DBA4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8133DBA8 | 7C 9F 23 78 */	mr r31, r4
/* 8133DBAC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133DBB0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133DBB4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133DBB8 | 80 63 00 50 */	lwz r3, 0x50(r3)
/* 8133DBBC | 48 2B A9 7D */	bl fn_815F8538
/* 8133DBC0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133DBC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133DBC8 | 41 82 00 10 */	beq .L_8133DBD8
/* 8133DBCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133DBD0 | 41 82 00 08 */	beq .L_8133DBD8
/* 8133DBD4 | 90 7F 00 00 */	stw r3, 0x0(r31)
.L_8133DBD8:
/* 8133DBD8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133DBDC | 38 80 00 00 */	li r4, 0x0
/* 8133DBE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133DBE4 | 41 82 00 10 */	beq .L_8133DBF4
/* 8133DBE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133DBEC | 41 82 00 08 */	beq .L_8133DBF4
/* 8133DBF0 | 38 80 00 01 */	li r4, 0x1
.L_8133DBF4:
/* 8133DBF4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8133DBF8 | 7C 83 23 78 */	mr r3, r4
/* 8133DBFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133DC00 | 7C 08 03 A6 */	mtlr r0
/* 8133DC04 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133DC08 | 4E 80 00 20 */	blr
.endfn receiveToken__Q33ipl4nand7ManagerFPi

# 0x81634E90..0x81634EF8 | size: 0x68
.data
.balign 8

# .data:0x0 | 0x81634E90 | size: 0x13
.obj lbl_81634E90, global
	.string "iplNandManager.cpp"
.endobj lbl_81634E90

# .data:0x13 | 0x81634EA3 | size: 0x55
.obj lbl_81634EA3, global
	.4byte 0x4A616D20
	.4byte 0x52657175
	.4byte 0x6573742A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x0A000000
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_81634EA3

# 0x816960B8..0x816960C8 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816960B8 | size: 0x1
.obj lbl_816960B8, global
	.byte 0x00
.endobj lbl_816960B8

# .sdata:0x1 | 0x816960B9 | size: 0x3
.obj lbl_816960B9, global
	.string "ES"
.endobj lbl_816960B9

# .sdata:0x4 | 0x816960BC | size: 0xC
.obj lbl_816960BC, global
	.4byte 0x2F6C6179
	.4byte 0x6F757400
	.4byte 0x00000000
.endobj lbl_816960BC
