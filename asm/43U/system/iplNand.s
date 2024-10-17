.include "macros.inc"
.file "iplNand.cpp"

# 0x8133B2E4..0x8133C6D8 | size: 0x13F4
.text
.balign 4

# .text:0x0 | 0x8133B2E4 | size: 0x10
# ipl::nand::Base::Base()
.fn __ct__Q33ipl4nand4BaseFv, global
/* 8133B2E4 | 3C 80 81 63 */	lis r4, __vt__Q33ipl4nand4Base@ha
/* 8133B2E8 | 38 84 4D 6C */	addi r4, r4, __vt__Q33ipl4nand4Base@l
/* 8133B2EC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8133B2F0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4nand4BaseFv

# .text:0x10 | 0x8133B2F4 | size: 0x40
# ipl::nand::Base::~Base()
.fn __dt__Q33ipl4nand4BaseFv, global
/* 8133B2F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133B2F8 | 7C 08 02 A6 */	mflr r0
/* 8133B2FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B300 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133B304 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133B308 | 7C 7F 1B 78 */	mr r31, r3
/* 8133B30C | 41 82 00 10 */	beq .L_8133B31C
/* 8133B310 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133B314 | 40 81 00 08 */	ble .L_8133B31C
/* 8133B318 | 48 2B CD CD */	bl __dl__FPv
.L_8133B31C:
/* 8133B31C | 7F E3 FB 78 */	mr r3, r31
/* 8133B320 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133B324 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133B328 | 7C 08 03 A6 */	mtlr r0
/* 8133B32C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133B330 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl4nand4BaseFv

# .text:0x50 | 0x8133B334 | size: 0xC0
# ipl::nand::File::File(EGG::Heap*, const char*, ARCHandle*, const char*, int, unsigned long, bool)
.fn __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcP9ARCHandlePCciUlb, global
/* 8133B334 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133B338 | 7C 08 02 A6 */	mflr r0
/* 8133B33C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133B340 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133B344 | 48 2B E1 85 */	bl _savegpr_29
/* 8133B348 | 3D 80 81 63 */	lis r12, __vt__Q33ipl4nand4File@ha
/* 8133B34C | 38 00 00 00 */	li r0, 0x0
/* 8133B350 | 7C 9E 23 78 */	mr r30, r4
/* 8133B354 | 39 60 00 01 */	li r11, 0x1
/* 8133B358 | 39 8C 4D 18 */	addi r12, r12, __vt__Q33ipl4nand4File@l
/* 8133B35C | 90 03 00 AC */	stw r0, 0xac(r3)
/* 8133B360 | 7C A4 2B 78 */	mr r4, r5
/* 8133B364 | 7C 7D 1B 78 */	mr r29, r3
/* 8133B368 | 90 03 01 84 */	stw r0, 0x184(r3)
/* 8133B36C | 7C FF 3B 78 */	mr r31, r7
/* 8133B370 | 38 A0 00 41 */	li r5, 0x41
/* 8133B374 | 91 83 00 00 */	stw r12, 0x0(r3)
/* 8133B378 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 8133B37C | 90 C3 00 4C */	stw r6, 0x4c(r3)
/* 8133B380 | 91 03 00 94 */	stw r8, 0x94(r3)
/* 8133B384 | 91 23 00 98 */	stw r9, 0x98(r3)
/* 8133B388 | 99 63 00 9C */	stb r11, 0x9c(r3)
/* 8133B38C | 98 03 00 9D */	stb r0, 0x9d(r3)
/* 8133B390 | 90 03 00 A0 */	stw r0, 0xa0(r3)
/* 8133B394 | 90 03 00 A4 */	stw r0, 0xa4(r3)
/* 8133B398 | 90 03 00 A8 */	stw r0, 0xa8(r3)
/* 8133B39C | 98 03 01 88 */	stb r0, 0x188(r3)
/* 8133B3A0 | 98 03 01 89 */	stb r0, 0x189(r3)
/* 8133B3A4 | 91 43 01 8C */	stw r10, 0x18c(r3)
/* 8133B3A8 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8133B3AC | 48 2C 70 19 */	bl strncpy
/* 8133B3B0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133B3B4 | 41 82 00 14 */	beq .L_8133B3C8
/* 8133B3B8 | 7F E4 FB 78 */	mr r4, r31
/* 8133B3BC | 38 7D 00 50 */	addi r3, r29, 0x50
/* 8133B3C0 | 38 A0 00 41 */	li r5, 0x41
/* 8133B3C4 | 48 2C 70 01 */	bl strncpy
.L_8133B3C8:
/* 8133B3C8 | 38 7D 00 F8 */	addi r3, r29, 0xf8
/* 8133B3CC | 38 80 00 00 */	li r4, 0x0
/* 8133B3D0 | 38 A0 00 8C */	li r5, 0x8c
/* 8133B3D4 | 4B FF 4F 61 */	bl memset
/* 8133B3D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133B3DC | 7F A3 EB 78 */	mr r3, r29
/* 8133B3E0 | 48 2B E1 35 */	bl _restgpr_29
/* 8133B3E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133B3E8 | 7C 08 03 A6 */	mtlr r0
/* 8133B3EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133B3F0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcP9ARCHandlePCciUlb

# .text:0x110 | 0x8133B3F4 | size: 0xC0
# ipl::nand::File::File(EGG::Heap*, const char*, unsigned char*, unsigned long, unsigned char)
.fn __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcPUcUlUc, global
/* 8133B3F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133B3F8 | 7C 08 02 A6 */	mflr r0
/* 8133B3FC | 3D 60 81 63 */	lis r11, __vt__Q33ipl4nand4File@ha
/* 8133B400 | 7C 8C 23 78 */	mr r12, r4
/* 8133B404 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133B408 | 7C A4 2B 78 */	mr r4, r5
/* 8133B40C | 39 40 00 00 */	li r10, 0x0
/* 8133B410 | 39 20 00 02 */	li r9, 0x2
/* 8133B414 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133B418 | 39 6B 4D 18 */	addi r11, r11, __vt__Q33ipl4nand4File@l
/* 8133B41C | 38 00 00 01 */	li r0, 0x1
/* 8133B420 | 7C 7F 1B 78 */	mr r31, r3
/* 8133B424 | 91 43 00 AC */	stw r10, 0xac(r3)
/* 8133B428 | 38 A0 00 41 */	li r5, 0x41
/* 8133B42C | 91 43 01 84 */	stw r10, 0x184(r3)
/* 8133B430 | 91 63 00 00 */	stw r11, 0x0(r3)
/* 8133B434 | 91 83 00 04 */	stw r12, 0x4(r3)
/* 8133B438 | 91 43 00 4C */	stw r10, 0x4c(r3)
/* 8133B43C | 91 43 00 94 */	stw r10, 0x94(r3)
/* 8133B440 | 90 E3 00 98 */	stw r7, 0x98(r3)
/* 8133B444 | 99 23 00 9C */	stb r9, 0x9c(r3)
/* 8133B448 | 99 03 00 9D */	stb r8, 0x9d(r3)
/* 8133B44C | 90 C3 00 A0 */	stw r6, 0xa0(r3)
/* 8133B450 | 91 43 00 A4 */	stw r10, 0xa4(r3)
/* 8133B454 | 91 43 00 A8 */	stw r10, 0xa8(r3)
/* 8133B458 | 99 43 01 88 */	stb r10, 0x188(r3)
/* 8133B45C | 99 43 01 89 */	stb r10, 0x189(r3)
/* 8133B460 | 90 03 01 8C */	stw r0, 0x18c(r3)
/* 8133B464 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8133B468 | 48 2C 6F 5D */	bl strncpy
/* 8133B46C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133B470 | 38 A0 FF E0 */	li r5, -0x20
/* 8133B474 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8133B478 | 48 2B CC 5D */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133B47C | 90 7F 00 A4 */	stw r3, 0xa4(r31)
/* 8133B480 | 80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 8133B484 | 80 BF 00 98 */	lwz r5, 0x98(r31)
/* 8133B488 | 4B FF 4D A9 */	bl memcpy
/* 8133B48C | 38 7F 00 F8 */	addi r3, r31, 0xf8
/* 8133B490 | 38 80 00 00 */	li r4, 0x0
/* 8133B494 | 38 A0 00 8C */	li r5, 0x8c
/* 8133B498 | 4B FF 4E 9D */	bl memset
/* 8133B49C | 7F E3 FB 78 */	mr r3, r31
/* 8133B4A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133B4A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133B4A8 | 7C 08 03 A6 */	mtlr r0
/* 8133B4AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133B4B0 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcPUcUlUc

# .text:0x1D0 | 0x8133B4B4 | size: 0x78
# ipl::nand::File::~File()
.fn __dt__Q33ipl4nand4FileFv, global
/* 8133B4B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133B4B8 | 7C 08 02 A6 */	mflr r0
/* 8133B4BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B4C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133B4C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133B4C8 | 7C 9F 23 78 */	mr r31, r4
/* 8133B4CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133B4D0 | 7C 7E 1B 78 */	mr r30, r3
/* 8133B4D4 | 41 82 00 3C */	beq .L_8133B510
/* 8133B4D8 | 88 03 00 9C */	lbz r0, 0x9c(r3)
/* 8133B4DC | 3C 80 81 63 */	lis r4, __vt__Q33ipl4nand4File@ha
/* 8133B4E0 | 38 84 4D 18 */	addi r4, r4, __vt__Q33ipl4nand4File@l
/* 8133B4E4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8133B4E8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8133B4EC | 40 82 00 14 */	bne .L_8133B500
/* 8133B4F0 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 8133B4F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B4F8 | 41 82 00 08 */	beq .L_8133B500
/* 8133B4FC | 48 2B CB F1 */	bl __dla__FPv
.L_8133B500:
/* 8133B500 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133B504 | 40 81 00 0C */	ble .L_8133B510
/* 8133B508 | 7F C3 F3 78 */	mr r3, r30
/* 8133B50C | 48 2B CB D9 */	bl __dl__FPv
.L_8133B510:
/* 8133B510 | 7F C3 F3 78 */	mr r3, r30
/* 8133B514 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133B518 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133B51C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133B520 | 7C 08 03 A6 */	mtlr r0
/* 8133B524 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133B528 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl4nand4FileFv

# .text:0x248 | 0x8133B52C | size: 0xF0
# ipl::nand::File::open_(unsigned char)
.fn open___Q33ipl4nand4FileFUc, global
/* 8133B52C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133B530 | 7C 08 02 A6 */	mflr r0
/* 8133B534 | 7C 85 23 78 */	mr r5, r4
/* 8133B538 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133B53C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133B540 | 7C 7F 1B 78 */	mr r31, r3
/* 8133B544 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8133B548 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B54C | 41 82 00 58 */	beq .L_8133B5A4
/* 8133B550 | 80 03 01 8C */	lwz r0, 0x18c(r3)
/* 8133B554 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B558 | 41 82 00 2C */	beq .L_8133B584
/* 8133B55C | 38 83 00 F8 */	addi r4, r3, 0xf8
/* 8133B560 | 38 63 00 50 */	addi r3, r3, 0x50
/* 8133B564 | 48 02 4C F5 */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8133B568 | 7C 64 1B 78 */	mr r4, r3
/* 8133B56C | 7F E3 FB 78 */	mr r3, r31
/* 8133B570 | 48 00 0E 45 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133B574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B578 | 40 82 00 0C */	bne .L_8133B584
/* 8133B57C | 38 60 00 00 */	li r3, 0x0
/* 8133B580 | 48 00 00 88 */	b .L_8133B608
.L_8133B584:
/* 8133B584 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8133B588 | 38 9F 00 08 */	addi r4, r31, 0x8
/* 8133B58C | 38 BF 00 B0 */	addi r5, r31, 0xb0
/* 8133B590 | 48 23 58 B1 */	bl ARCOpen
/* 8133B594 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8133B598 | 7C 00 00 34 */	cntlzw r0, r0
/* 8133B59C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8133B5A0 | 48 00 00 68 */	b .L_8133B608
.L_8133B5A4:
/* 8133B5A4 | 80 03 01 8C */	lwz r0, 0x18c(r3)
/* 8133B5A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B5AC | 41 82 00 20 */	beq .L_8133B5CC
/* 8133B5B0 | 38 83 00 F8 */	addi r4, r3, 0xf8
/* 8133B5B4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8133B5B8 | 48 02 4C A1 */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8133B5BC | 7C 64 1B 78 */	mr r4, r3
/* 8133B5C0 | 7F E3 FB 78 */	mr r3, r31
/* 8133B5C4 | 48 00 0D F1 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133B5C8 | 48 00 00 40 */	b .L_8133B608
.L_8133B5CC:
/* 8133B5CC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133B5D0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133B5D4 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8133B5D8 | 80 03 02 68 */	lwz r0, 0x268(r3)
/* 8133B5DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B5E0 | 40 80 00 0C */	bge .L_8133B5EC
/* 8133B5E4 | 38 60 00 00 */	li r3, 0x0
/* 8133B5E8 | 48 00 00 08 */	b .L_8133B5F0
.L_8133B5EC:
/* 8133B5EC | 38 63 02 70 */	addi r3, r3, 0x270
.L_8133B5F0:
/* 8133B5F0 | 38 9F 00 08 */	addi r4, r31, 0x8
/* 8133B5F4 | 38 BF 00 B0 */	addi r5, r31, 0xb0
/* 8133B5F8 | 48 23 58 49 */	bl ARCOpen
/* 8133B5FC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8133B600 | 7C 00 00 34 */	cntlzw r0, r0
/* 8133B604 | 54 03 D9 7E */	srwi r3, r0, 5
.L_8133B608:
/* 8133B608 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133B60C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133B610 | 7C 08 03 A6 */	mtlr r0
/* 8133B614 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133B618 | 4E 80 00 20 */	blr
.endfn open___Q33ipl4nand4FileFUc

# .text:0x338 | 0x8133B61C | size: 0x1B4
# ipl::nand::File::readBlock_(void*, int, int)
.fn readBlock___Q33ipl4nand4FileFPvii, global
/* 8133B61C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133B620 | 7C 08 02 A6 */	mflr r0
/* 8133B624 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133B628 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133B62C | 48 2B DE 95 */	bl _savegpr_27
/* 8133B630 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8133B634 | 7C 7B 1B 78 */	mr r27, r3
/* 8133B638 | 7C 9C 23 78 */	mr r28, r4
/* 8133B63C | 7C BD 2B 78 */	mr r29, r5
/* 8133B640 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B644 | 7C DE 33 78 */	mr r30, r6
/* 8133B648 | 41 82 00 5C */	beq .L_8133B6A4
/* 8133B64C | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133B650 | 48 23 5F 45 */	bl ARCGetStartOffset
/* 8133B654 | 80 1B 01 8C */	lwz r0, 0x18c(r27)
/* 8133B658 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B65C | 41 82 01 5C */	beq .L_8133B7B8
/* 8133B660 | 80 9B 00 94 */	lwz r4, 0x94(r27)
/* 8133B664 | 7C 1E 1A 14 */	add r0, r30, r3
/* 8133B668 | 38 7B 00 F8 */	addi r3, r27, 0xf8
/* 8133B66C | 38 A0 00 00 */	li r5, 0x0
/* 8133B670 | 7C 84 02 14 */	add r4, r4, r0
/* 8133B674 | 48 02 47 DD */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 8133B678 | 7C 64 1B 78 */	mr r4, r3
/* 8133B67C | 7F 63 DB 78 */	mr r3, r27
/* 8133B680 | 48 00 0D 35 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133B684 | 7F 84 E3 78 */	mr r4, r28
/* 8133B688 | 7F A5 EB 78 */	mr r5, r29
/* 8133B68C | 38 7B 00 F8 */	addi r3, r27, 0xf8
/* 8133B690 | 48 02 46 D9 */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 8133B694 | 7C 64 1B 78 */	mr r4, r3
/* 8133B698 | 7F 63 DB 78 */	mr r3, r27
/* 8133B69C | 48 00 0D 19 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133B6A0 | 48 00 01 18 */	b .L_8133B7B8
.L_8133B6A4:
/* 8133B6A4 | 80 03 01 8C */	lwz r0, 0x18c(r3)
/* 8133B6A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B6AC | 41 82 00 44 */	beq .L_8133B6F0
/* 8133B6B0 | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 8133B6B4 | 38 A0 00 00 */	li r5, 0x0
/* 8133B6B8 | 38 63 00 F8 */	addi r3, r3, 0xf8
/* 8133B6BC | 7C 80 32 14 */	add r4, r0, r6
/* 8133B6C0 | 48 02 47 91 */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 8133B6C4 | 7C 64 1B 78 */	mr r4, r3
/* 8133B6C8 | 7F 63 DB 78 */	mr r3, r27
/* 8133B6CC | 48 00 0C E9 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133B6D0 | 7F 84 E3 78 */	mr r4, r28
/* 8133B6D4 | 7F A5 EB 78 */	mr r5, r29
/* 8133B6D8 | 38 7B 00 F8 */	addi r3, r27, 0xf8
/* 8133B6DC | 48 02 46 8D */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 8133B6E0 | 7C 64 1B 78 */	mr r4, r3
/* 8133B6E4 | 7F 63 DB 78 */	mr r3, r27
/* 8133B6E8 | 48 00 0C CD */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133B6EC | 48 00 00 CC */	b .L_8133B7B8
.L_8133B6F0:
/* 8133B6F0 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133B6F4 | 48 23 5E A1 */	bl ARCGetStartOffset
/* 8133B6F8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133B6FC | 80 9B 00 94 */	lwz r4, 0x94(r27)
/* 8133B700 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133B704 | 7C 1E 1A 14 */	add r0, r30, r3
/* 8133B708 | 80 DF 00 6C */	lwz r6, 0x6c(r31)
/* 8133B70C | 7C 84 02 14 */	add r4, r4, r0
/* 8133B710 | 38 A0 00 00 */	li r5, 0x0
/* 8133B714 | 80 66 02 68 */	lwz r3, 0x268(r6)
/* 8133B718 | 48 28 2B D9 */	bl ES_SeekContentFile
/* 8133B71C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B720 | 7C 65 1B 78 */	mr r5, r3
/* 8133B724 | 40 80 00 38 */	bge .L_8133B75C
/* 8133B728 | 3C C0 81 63 */	lis r6, lbl_81634C90@ha
/* 8133B72C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133B730 | 38 8D 80 58 */	li r4, lbl_81696098@sda21
/* 8133B734 | 38 E0 00 E5 */	li r7, 0xe5
/* 8133B738 | 38 C6 4C 90 */	addi r6, r6, lbl_81634C90@l
/* 8133B73C | 48 01 AF BD */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133B740 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133B744 | 38 80 00 01 */	li r4, 0x1
/* 8133B748 | 38 A0 00 02 */	li r5, 0x2
/* 8133B74C | 38 C0 00 00 */	li r6, 0x0
/* 8133B750 | 38 E0 00 00 */	li r7, 0x0
/* 8133B754 | 39 00 FF FF */	li r8, -0x1
/* 8133B758 | 48 01 AD BD */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133B75C:
/* 8133B75C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133B760 | 7F 84 E3 78 */	mr r4, r28
/* 8133B764 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133B768 | 7F A5 EB 78 */	mr r5, r29
/* 8133B76C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8133B770 | 80 63 02 68 */	lwz r3, 0x268(r3)
/* 8133B774 | 48 28 2A DD */	bl ES_ReadContentFile
/* 8133B778 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B77C | 7C 65 1B 78 */	mr r5, r3
/* 8133B780 | 40 80 00 38 */	bge .L_8133B7B8
/* 8133B784 | 3C C0 81 63 */	lis r6, lbl_81634C90@ha
/* 8133B788 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133B78C | 38 8D 80 58 */	li r4, lbl_81696098@sda21
/* 8133B790 | 38 E0 00 ED */	li r7, 0xed
/* 8133B794 | 38 C6 4C 90 */	addi r6, r6, lbl_81634C90@l
/* 8133B798 | 48 01 AF 61 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133B79C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133B7A0 | 38 80 00 01 */	li r4, 0x1
/* 8133B7A4 | 38 A0 00 02 */	li r5, 0x2
/* 8133B7A8 | 38 C0 00 00 */	li r6, 0x0
/* 8133B7AC | 38 E0 00 00 */	li r7, 0x0
/* 8133B7B0 | 39 00 FF FF */	li r8, -0x1
/* 8133B7B4 | 48 01 AD 61 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133B7B8:
/* 8133B7B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133B7BC | 48 2B DD 51 */	bl _restgpr_27
/* 8133B7C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133B7C4 | 7C 08 03 A6 */	mtlr r0
/* 8133B7C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133B7CC | 4E 80 00 20 */	blr
.endfn readBlock___Q33ipl4nand4FileFPvii

# .text:0x4EC | 0x8133B7D0 | size: 0xBC
# ipl::nand::File::getDecodeSize_(const unsigned char*)
.fn getDecodeSize___Q33ipl4nand4FileFPCUc, global
/* 8133B7D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133B7D4 | 7C 08 02 A6 */	mflr r0
/* 8133B7D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133B7DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133B7E0 | 7C 9F 23 78 */	mr r31, r4
/* 8133B7E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133B7E8 | 7C 7E 1B 78 */	mr r30, r3
/* 8133B7EC | 38 63 00 08 */	addi r3, r3, 0x8
/* 8133B7F0 | 48 2B D7 0D */	bl strlen
/* 8133B7F4 | 7C 63 F2 14 */	add r3, r3, r30
/* 8133B7F8 | 38 8D 80 5B */	li r4, lbl_8169609B@sda21
/* 8133B7FC | 38 63 00 04 */	addi r3, r3, 0x4
/* 8133B800 | 48 2C D2 51 */	bl stricmp
/* 8133B804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B808 | 40 82 00 10 */	bne .L_8133B818
/* 8133B80C | 7F E3 FB 78 */	mr r3, r31
/* 8133B810 | 48 22 0A 5D */	bl CXGetUncompressedSize
/* 8133B814 | 48 00 00 60 */	b .L_8133B874
.L_8133B818:
/* 8133B818 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8133B81C | 2C 00 00 59 */	cmpwi r0, 0x59
/* 8133B820 | 40 82 00 28 */	bne .L_8133B848
/* 8133B824 | 88 1F 00 05 */	lbz r0, 0x5(r31)
/* 8133B828 | 88 BF 00 06 */	lbz r5, 0x6(r31)
/* 8133B82C | 88 9F 00 07 */	lbz r4, 0x7(r31)
/* 8133B830 | 54 00 80 1E */	slwi r0, r0, 16
/* 8133B834 | 88 7F 00 04 */	lbz r3, 0x4(r31)
/* 8133B838 | 50 A4 44 2E */	rlwimi r4, r5, 8, 16, 23
/* 8133B83C | 50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 8133B840 | 7C 83 03 78 */	or r3, r4, r0
/* 8133B844 | 48 00 00 30 */	b .L_8133B874
.L_8133B848:
/* 8133B848 | 2C 00 00 4C */	cmpwi r0, 0x4c
/* 8133B84C | 40 82 00 10 */	bne .L_8133B85C
/* 8133B850 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8133B854 | 48 22 0A 19 */	bl CXGetUncompressedSize
/* 8133B858 | 48 00 00 1C */	b .L_8133B874
.L_8133B85C:
/* 8133B85C | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 8133B860 | 88 7F 00 05 */	lbz r3, 0x5(r31)
/* 8133B864 | 54 00 40 2E */	slwi r0, r0, 8
/* 8133B868 | 88 9F 00 07 */	lbz r4, 0x7(r31)
/* 8133B86C | 50 60 82 1E */	rlwimi r0, r3, 16, 8, 15
/* 8133B870 | 7C 83 03 78 */	or r3, r4, r0
.L_8133B874:
/* 8133B874 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133B878 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133B87C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133B880 | 7C 08 03 A6 */	mtlr r0
/* 8133B884 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133B888 | 4E 80 00 20 */	blr
.endfn getDecodeSize___Q33ipl4nand4FileFPCUc

# .text:0x5A8 | 0x8133B88C | size: 0x84
# ipl::nand::File::getRawSize_()
.fn getRawSize___Q33ipl4nand4FileFv, global
/* 8133B88C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133B890 | 7C 08 02 A6 */	mflr r0
/* 8133B894 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133B898 | 38 00 00 00 */	li r0, 0x0
/* 8133B89C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8133B8A0 | 7C 7F 1B 78 */	mr r31, r3
/* 8133B8A4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133B8A8 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8133B8AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B8B0 | 41 82 00 14 */	beq .L_8133B8C4
/* 8133B8B4 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133B8B8 | 48 23 5C E5 */	bl ARCGetLength
/* 8133B8BC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8133B8C0 | 48 00 00 38 */	b .L_8133B8F8
.L_8133B8C4:
/* 8133B8C4 | 80 03 01 8C */	lwz r0, 0x18c(r3)
/* 8133B8C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B8CC | 41 82 00 20 */	beq .L_8133B8EC
/* 8133B8D0 | 38 63 00 F8 */	addi r3, r3, 0xf8
/* 8133B8D4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133B8D8 | 48 02 45 ED */	bl GetLength__Q33ipl4nand7wrapperFP12NANDFileInfoPUl
/* 8133B8DC | 7C 64 1B 78 */	mr r4, r3
/* 8133B8E0 | 7F E3 FB 78 */	mr r3, r31
/* 8133B8E4 | 48 00 0A D1 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133B8E8 | 48 00 00 10 */	b .L_8133B8F8
.L_8133B8EC:
/* 8133B8EC | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133B8F0 | 48 23 5C AD */	bl ARCGetLength
/* 8133B8F4 | 90 61 00 08 */	stw r3, 0x8(r1)
.L_8133B8F8:
/* 8133B8F8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8133B8FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133B900 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8133B904 | 7C 08 03 A6 */	mtlr r0
/* 8133B908 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133B90C | 4E 80 00 20 */	blr
.endfn getRawSize___Q33ipl4nand4FileFv

# .text:0x62C | 0x8133B910 | size: 0x30
# ipl::nand::File::isSliCompressed(const unsigned char*)
.fn isSliCompressed__Q33ipl4nand4FileFPCUc, global
/* 8133B910 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8133B914 | 38 60 00 00 */	li r3, 0x0
/* 8133B918 | 2C 00 00 59 */	cmpwi r0, 0x59
/* 8133B91C | 4C 82 00 20 */	bnelr
/* 8133B920 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 8133B924 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 8133B928 | 4C 82 00 20 */	bnelr
/* 8133B92C | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 8133B930 | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 8133B934 | 4C 82 00 20 */	bnelr
/* 8133B938 | 38 60 00 01 */	li r3, 0x1
/* 8133B93C | 4E 80 00 20 */	blr
.endfn isSliCompressed__Q33ipl4nand4FileFPCUc

# .text:0x65C | 0x8133B940 | size: 0x30
# ipl::nand::File::isAsrCompressed(const unsigned char*)
.fn isAsrCompressed__Q33ipl4nand4FileFPCUc, global
/* 8133B940 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8133B944 | 38 60 00 00 */	li r3, 0x0
/* 8133B948 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 8133B94C | 4C 82 00 20 */	bnelr
/* 8133B950 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 8133B954 | 2C 00 00 53 */	cmpwi r0, 0x53
/* 8133B958 | 4C 82 00 20 */	bnelr
/* 8133B95C | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 8133B960 | 2C 00 00 48 */	cmpwi r0, 0x48
/* 8133B964 | 4C 82 00 20 */	bnelr
/* 8133B968 | 38 60 00 01 */	li r3, 0x1
/* 8133B96C | 4E 80 00 20 */	blr
.endfn isAsrCompressed__Q33ipl4nand4FileFPCUc

# .text:0x68C | 0x8133B970 | size: 0x30
# ipl::nand::File::isAshCompressed(const unsigned char*)
.fn isAshCompressed__Q33ipl4nand4FileFPCUc, global
/* 8133B970 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8133B974 | 38 60 00 00 */	li r3, 0x0
/* 8133B978 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 8133B97C | 4C 82 00 20 */	bnelr
/* 8133B980 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 8133B984 | 2C 00 00 53 */	cmpwi r0, 0x53
/* 8133B988 | 4C 82 00 20 */	bnelr
/* 8133B98C | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 8133B990 | 2C 00 00 52 */	cmpwi r0, 0x52
/* 8133B994 | 4C 82 00 20 */	bnelr
/* 8133B998 | 38 60 00 01 */	li r3, 0x1
/* 8133B99C | 4E 80 00 20 */	blr
.endfn isAshCompressed__Q33ipl4nand4FileFPCUc

# .text:0x6BC | 0x8133B9A0 | size: 0x94
# ipl::nand::File::isLz7Compressed(const unsigned char*)
.fn isLz7Compressed__Q33ipl4nand4FileFPCUc, global
/* 8133B9A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133B9A4 | 7C 08 02 A6 */	mflr r0
/* 8133B9A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133B9AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133B9B0 | 7C 9F 23 78 */	mr r31, r4
/* 8133B9B4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133B9B8 | 7C 7E 1B 78 */	mr r30, r3
/* 8133B9BC | 38 63 00 08 */	addi r3, r3, 0x8
/* 8133B9C0 | 48 2B D5 3D */	bl strlen
/* 8133B9C4 | 7C 63 F2 14 */	add r3, r3, r30
/* 8133B9C8 | 38 8D 80 5B */	li r4, lbl_8169609B@sda21
/* 8133B9CC | 38 63 00 04 */	addi r3, r3, 0x4
/* 8133B9D0 | 48 2C D0 81 */	bl stricmp
/* 8133B9D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B9D8 | 40 82 00 0C */	bne .L_8133B9E4
/* 8133B9DC | 38 60 00 01 */	li r3, 0x1
/* 8133B9E0 | 48 00 00 3C */	b .L_8133BA1C
.L_8133B9E4:
/* 8133B9E4 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8133B9E8 | 38 60 00 00 */	li r3, 0x0
/* 8133B9EC | 2C 00 00 4C */	cmpwi r0, 0x4c
/* 8133B9F0 | 40 82 00 2C */	bne .L_8133BA1C
/* 8133B9F4 | 88 1F 00 01 */	lbz r0, 0x1(r31)
/* 8133B9F8 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 8133B9FC | 40 82 00 20 */	bne .L_8133BA1C
/* 8133BA00 | 88 1F 00 02 */	lbz r0, 0x2(r31)
/* 8133BA04 | 2C 00 00 37 */	cmpwi r0, 0x37
/* 8133BA08 | 40 82 00 14 */	bne .L_8133BA1C
/* 8133BA0C | 88 1F 00 03 */	lbz r0, 0x3(r31)
/* 8133BA10 | 2C 00 00 37 */	cmpwi r0, 0x37
/* 8133BA14 | 40 82 00 08 */	bne .L_8133BA1C
/* 8133BA18 | 38 60 00 01 */	li r3, 0x1
.L_8133BA1C:
/* 8133BA1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133BA20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133BA24 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133BA28 | 7C 08 03 A6 */	mtlr r0
/* 8133BA2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133BA30 | 4E 80 00 20 */	blr
.endfn isLz7Compressed__Q33ipl4nand4FileFPCUc

# .text:0x750 | 0x8133BA34 | size: 0xB8
# ipl::nand::File::isCompressed(const unsigned char*)
.fn isCompressed__Q33ipl4nand4FileFPCUc, global
/* 8133BA34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133BA38 | 7C 08 02 A6 */	mflr r0
/* 8133BA3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133BA40 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133BA44 | 7C 9F 23 78 */	mr r31, r4
/* 8133BA48 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133BA4C | 7C 7E 1B 78 */	mr r30, r3
/* 8133BA50 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133BA54 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8133BA58 | 7D 89 03 A6 */	mtctr r12
/* 8133BA5C | 4E 80 04 21 */	bctrl
/* 8133BA60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133BA64 | 40 82 00 64 */	bne .L_8133BAC8
/* 8133BA68 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8133BA6C | 7F C3 F3 78 */	mr r3, r30
/* 8133BA70 | 7F E4 FB 78 */	mr r4, r31
/* 8133BA74 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8133BA78 | 7D 89 03 A6 */	mtctr r12
/* 8133BA7C | 4E 80 04 21 */	bctrl
/* 8133BA80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133BA84 | 40 82 00 44 */	bne .L_8133BAC8
/* 8133BA88 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8133BA8C | 7F C3 F3 78 */	mr r3, r30
/* 8133BA90 | 7F E4 FB 78 */	mr r4, r31
/* 8133BA94 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8133BA98 | 7D 89 03 A6 */	mtctr r12
/* 8133BA9C | 4E 80 04 21 */	bctrl
/* 8133BAA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133BAA4 | 40 82 00 24 */	bne .L_8133BAC8
/* 8133BAA8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8133BAAC | 7F C3 F3 78 */	mr r3, r30
/* 8133BAB0 | 7F E4 FB 78 */	mr r4, r31
/* 8133BAB4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8133BAB8 | 7D 89 03 A6 */	mtctr r12
/* 8133BABC | 4E 80 04 21 */	bctrl
/* 8133BAC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133BAC4 | 41 82 00 0C */	beq .L_8133BAD0
.L_8133BAC8:
/* 8133BAC8 | 38 60 00 01 */	li r3, 0x1
/* 8133BACC | 48 00 00 08 */	b .L_8133BAD4
.L_8133BAD0:
/* 8133BAD0 | 38 60 00 00 */	li r3, 0x0
.L_8133BAD4:
/* 8133BAD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133BAD8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133BADC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133BAE0 | 7C 08 03 A6 */	mtlr r0
/* 8133BAE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133BAE8 | 4E 80 00 20 */	blr
.endfn isCompressed__Q33ipl4nand4FileFPCUc

# .text:0x808 | 0x8133BAEC | size: 0x74
# ipl::nand::File::uncompressLz7(const unsigned char*, unsigned char*)
.fn uncompressLz7__Q33ipl4nand4FileFPCUcPUc, global
/* 8133BAEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133BAF0 | 7C 08 02 A6 */	mflr r0
/* 8133BAF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133BAF8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133BAFC | 48 2B D9 CD */	bl _savegpr_29
/* 8133BB00 | 7C 7D 1B 78 */	mr r29, r3
/* 8133BB04 | 7C 9E 23 78 */	mr r30, r4
/* 8133BB08 | 7C BF 2B 78 */	mr r31, r5
/* 8133BB0C | 38 63 00 08 */	addi r3, r3, 0x8
/* 8133BB10 | 48 2B D3 ED */	bl strlen
/* 8133BB14 | 7C 63 EA 14 */	add r3, r3, r29
/* 8133BB18 | 38 8D 80 5B */	li r4, lbl_8169609B@sda21
/* 8133BB1C | 38 63 00 04 */	addi r3, r3, 0x4
/* 8133BB20 | 48 2C CF 31 */	bl stricmp
/* 8133BB24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133BB28 | 40 82 00 14 */	bne .L_8133BB3C
/* 8133BB2C | 7F C3 F3 78 */	mr r3, r30
/* 8133BB30 | 7F E4 FB 78 */	mr r4, r31
/* 8133BB34 | 48 22 07 79 */	bl CXUncompressLZ
/* 8133BB38 | 48 00 00 10 */	b .L_8133BB48
.L_8133BB3C:
/* 8133BB3C | 7F E4 FB 78 */	mr r4, r31
/* 8133BB40 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 8133BB44 | 48 22 07 69 */	bl CXUncompressLZ
.L_8133BB48:
/* 8133BB48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133BB4C | 48 2B D9 C9 */	bl _restgpr_29
/* 8133BB50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133BB54 | 7C 08 03 A6 */	mtlr r0
/* 8133BB58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133BB5C | 4E 80 00 20 */	blr
.endfn uncompressLz7__Q33ipl4nand4FileFPCUcPUc

# .text:0x87C | 0x8133BB60 | size: 0x300
# ipl::nand::File::read()
.fn read__Q33ipl4nand4FileFv, global
/* 8133BB60 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8133BB64 | 7C 2C 0B 78 */	mr r12, r1
/* 8133BB68 | 21 6B FF 60 */	subfic r11, r11, -0xa0
/* 8133BB6C | 7C 21 59 6E */	stwux r1, r1, r11
/* 8133BB70 | 7C 08 02 A6 */	mflr r0
/* 8133BB74 | 7D 8B 63 78 */	mr r11, r12
/* 8133BB78 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8133BB7C | 48 2B D9 45 */	bl _savegpr_27
/* 8133BB80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133BB84 | 7C 7F 1B 78 */	mr r31, r3
/* 8133BB88 | 38 80 00 01 */	li r4, 0x1
/* 8133BB8C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8133BB90 | 7D 89 03 A6 */	mtctr r12
/* 8133BB94 | 4E 80 04 21 */	bctrl
/* 8133BB98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133BB9C | 41 82 02 8C */	beq .L_8133BE28
/* 8133BBA0 | 80 1F 00 98 */	lwz r0, 0x98(r31)
/* 8133BBA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133BBA8 | 40 82 00 4C */	bne .L_8133BBF4
/* 8133BBAC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BBB0 | 7F E3 FB 78 */	mr r3, r31
/* 8133BBB4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8133BBB8 | 7D 89 03 A6 */	mtctr r12
/* 8133BBBC | 4E 80 04 21 */	bctrl
/* 8133BBC0 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 8133BBC4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133BBC8 | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8133BBCC | 90 1F 00 98 */	stw r0, 0x98(r31)
/* 8133BBD0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133BBD4 | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 8133BBD8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133BBDC | 40 82 00 08 */	bne .L_8133BBE4
/* 8133BBE0 | 80 83 00 04 */	lwz r4, 0x4(r3)
.L_8133BBE4:
/* 8133BBE4 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133BBE8 | 38 A0 FF E0 */	li r5, -0x20
/* 8133BBEC | 48 2B C4 E9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133BBF0 | 90 7F 00 A4 */	stw r3, 0xa4(r31)
.L_8133BBF4:
/* 8133BBF4 | 80 1F 00 98 */	lwz r0, 0x98(r31)
/* 8133BBF8 | 3B C1 00 40 */	addi r30, r1, 0x40
/* 8133BBFC | 28 00 00 40 */	cmplwi r0, 0x40
/* 8133BC00 | 41 80 00 0C */	blt .L_8133BC0C
/* 8133BC04 | 38 A0 00 40 */	li r5, 0x40
/* 8133BC08 | 48 00 00 08 */	b .L_8133BC10
.L_8133BC0C:
/* 8133BC0C | 38 A0 00 20 */	li r5, 0x20
.L_8133BC10:
/* 8133BC10 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BC14 | 7F E3 FB 78 */	mr r3, r31
/* 8133BC18 | 38 81 00 40 */	addi r4, r1, 0x40
/* 8133BC1C | 38 C0 00 00 */	li r6, 0x0
/* 8133BC20 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8133BC24 | 7D 89 03 A6 */	mtctr r12
/* 8133BC28 | 4E 80 04 21 */	bctrl
/* 8133BC2C | 88 01 00 40 */	lbz r0, 0x40(r1)
/* 8133BC30 | 3B A0 00 00 */	li r29, 0x0
/* 8133BC34 | 3B 60 00 00 */	li r27, 0x0
/* 8133BC38 | 2C 00 00 49 */	cmpwi r0, 0x49
/* 8133BC3C | 40 82 00 48 */	bne .L_8133BC84
/* 8133BC40 | 88 01 00 41 */	lbz r0, 0x41(r1)
/* 8133BC44 | 2C 00 00 4D */	cmpwi r0, 0x4d
/* 8133BC48 | 40 82 00 3C */	bne .L_8133BC84
/* 8133BC4C | 88 01 00 42 */	lbz r0, 0x42(r1)
/* 8133BC50 | 2C 00 00 44 */	cmpwi r0, 0x44
/* 8133BC54 | 40 82 00 30 */	bne .L_8133BC84
/* 8133BC58 | 88 01 00 43 */	lbz r0, 0x43(r1)
/* 8133BC5C | 2C 00 00 35 */	cmpwi r0, 0x35
/* 8133BC60 | 40 82 00 24 */	bne .L_8133BC84
/* 8133BC64 | 83 81 00 44 */	lwz r28, 0x44(r1)
/* 8133BC68 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8133BC6C | 38 81 00 50 */	addi r4, r1, 0x50
/* 8133BC70 | 3B A0 00 01 */	li r29, 0x1
/* 8133BC74 | 38 A0 00 10 */	li r5, 0x10
/* 8133BC78 | 4B FF 45 B9 */	bl memcpy
/* 8133BC7C | 3B 60 00 20 */	li r27, 0x20
/* 8133BC80 | 3B DE 00 20 */	addi r30, r30, 0x20
.L_8133BC84:
/* 8133BC84 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BC88 | 7F E3 FB 78 */	mr r3, r31
/* 8133BC8C | 7F C4 F3 78 */	mr r4, r30
/* 8133BC90 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8133BC94 | 7D 89 03 A6 */	mtctr r12
/* 8133BC98 | 4E 80 04 21 */	bctrl
/* 8133BC9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133BCA0 | 41 82 00 F0 */	beq .L_8133BD90
/* 8133BCA4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BCA8 | 7F E3 FB 78 */	mr r3, r31
/* 8133BCAC | 80 9F 00 A4 */	lwz r4, 0xa4(r31)
/* 8133BCB0 | 38 C0 00 00 */	li r6, 0x0
/* 8133BCB4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8133BCB8 | 80 BF 00 98 */	lwz r5, 0x98(r31)
/* 8133BCBC | 7D 89 03 A6 */	mtctr r12
/* 8133BCC0 | 4E 80 04 21 */	bctrl
/* 8133BCC4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BCC8 | 7F E3 FB 78 */	mr r3, r31
/* 8133BCCC | 80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 8133BCD0 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8133BCD4 | 7C 80 DA 14 */	add r4, r0, r27
/* 8133BCD8 | 7D 89 03 A6 */	mtctr r12
/* 8133BCDC | 4E 80 04 21 */	bctrl
/* 8133BCE0 | 90 7F 00 98 */	stw r3, 0x98(r31)
/* 8133BCE4 | 7C 64 1B 78 */	mr r4, r3
/* 8133BCE8 | 7F E3 FB 78 */	mr r3, r31
/* 8133BCEC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BCF0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8133BCF4 | 7D 89 03 A6 */	mtctr r12
/* 8133BCF8 | 4E 80 04 21 */	bctrl
/* 8133BCFC | 90 7F 00 A0 */	stw r3, 0xa0(r31)
/* 8133BD00 | 7F E3 FB 78 */	mr r3, r31
/* 8133BD04 | 7F C4 F3 78 */	mr r4, r30
/* 8133BD08 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BD0C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8133BD10 | 7D 89 03 A6 */	mtctr r12
/* 8133BD14 | 4E 80 04 21 */	bctrl
/* 8133BD18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133BD1C | 41 82 00 3C */	beq .L_8133BD58
/* 8133BD20 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BD24 | 7F E3 FB 78 */	mr r3, r31
/* 8133BD28 | 80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 8133BD2C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8133BD30 | 7C 80 DA 14 */	add r4, r0, r27
/* 8133BD34 | 80 BF 00 A0 */	lwz r5, 0xa0(r31)
/* 8133BD38 | 7D 89 03 A6 */	mtctr r12
/* 8133BD3C | 4E 80 04 21 */	bctrl
/* 8133BD40 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BD44 | 7F E3 FB 78 */	mr r3, r31
/* 8133BD48 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8133BD4C | 7D 89 03 A6 */	mtctr r12
/* 8133BD50 | 4E 80 04 21 */	bctrl
/* 8133BD54 | 48 00 00 14 */	b .L_8133BD68
.L_8133BD58:
/* 8133BD58 | 80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 8133BD5C | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 8133BD60 | 7C 80 DA 14 */	add r4, r0, r27
/* 8133BD64 | 4B FF 63 BD */	bl Rvl_decode
.L_8133BD68:
/* 8133BD68 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8133BD6C | 40 82 00 88 */	bne .L_8133BDF4
/* 8133BD70 | 80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 8133BD74 | 7F E3 FB 78 */	mr r3, r31
/* 8133BD78 | 7F 86 E3 78 */	mr r6, r28
/* 8133BD7C | 38 81 00 20 */	addi r4, r1, 0x20
/* 8133BD80 | 7C A0 DA 14 */	add r5, r0, r27
/* 8133BD84 | 48 00 00 E1 */	bl calcMD5___Q33ipl4nand4FileCFPCUcPCUcUl
/* 8133BD88 | 90 7F 00 A8 */	stw r3, 0xa8(r31)
/* 8133BD8C | 48 00 00 68 */	b .L_8133BDF4
.L_8133BD90:
/* 8133BD90 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BD94 | 7F E3 FB 78 */	mr r3, r31
/* 8133BD98 | 80 1F 00 98 */	lwz r0, 0x98(r31)
/* 8133BD9C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8133BDA0 | 7C 9B 00 50 */	subf r4, r27, r0
/* 8133BDA4 | 7D 89 03 A6 */	mtctr r12
/* 8133BDA8 | 4E 80 04 21 */	bctrl
/* 8133BDAC | 90 7F 00 A0 */	stw r3, 0xa0(r31)
/* 8133BDB0 | 7C 64 1B 78 */	mr r4, r3
/* 8133BDB4 | 80 1F 00 98 */	lwz r0, 0x98(r31)
/* 8133BDB8 | 7F E3 FB 78 */	mr r3, r31
/* 8133BDBC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BDC0 | 7F 66 DB 78 */	mr r6, r27
/* 8133BDC4 | 7C BB 00 50 */	subf r5, r27, r0
/* 8133BDC8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8133BDCC | 7D 89 03 A6 */	mtctr r12
/* 8133BDD0 | 4E 80 04 21 */	bctrl
/* 8133BDD4 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 8133BDD8 | 40 82 00 1C */	bne .L_8133BDF4
/* 8133BDDC | 80 BF 00 A0 */	lwz r5, 0xa0(r31)
/* 8133BDE0 | 7F E3 FB 78 */	mr r3, r31
/* 8133BDE4 | 7F 86 E3 78 */	mr r6, r28
/* 8133BDE8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8133BDEC | 48 00 00 79 */	bl calcMD5___Q33ipl4nand4FileCFPCUcPCUcUl
/* 8133BDF0 | 90 7F 00 A8 */	stw r3, 0xa8(r31)
.L_8133BDF4:
/* 8133BDF4 | 80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 8133BDF8 | 48 2B C2 F5 */	bl __dla__FPv
/* 8133BDFC | 38 00 00 00 */	li r0, 0x0
/* 8133BE00 | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 8133BE04 | 90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 8133BE08 | 80 9F 00 98 */	lwz r4, 0x98(r31)
/* 8133BE0C | 48 1F 1B 59 */	bl DCStoreRange
/* 8133BE10 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BE14 | 7F E3 FB 78 */	mr r3, r31
/* 8133BE18 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8133BE1C | 7D 89 03 A6 */	mtctr r12
/* 8133BE20 | 4E 80 04 21 */	bctrl
/* 8133BE24 | 2C 03 00 00 */	cmpwi r3, 0x0
.L_8133BE28:
/* 8133BE28 | 38 00 00 01 */	li r0, 0x1
/* 8133BE2C | 7F E3 FB 78 */	mr r3, r31
/* 8133BE30 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 8133BE34 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8133BE38 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8133BE3C | 7D 89 03 A6 */	mtctr r12
/* 8133BE40 | 4E 80 04 21 */	bctrl
/* 8133BE44 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8133BE48 | 7D 4B 53 78 */	mr r11, r10
/* 8133BE4C | 48 2B D6 C1 */	bl _restgpr_27
/* 8133BE50 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8133BE54 | 7C 08 03 A6 */	mtlr r0
/* 8133BE58 | 7D 41 53 78 */	mr r1, r10
/* 8133BE5C | 4E 80 00 20 */	blr
.endfn read__Q33ipl4nand4FileFv

# .text:0xB7C | 0x8133BE60 | size: 0x4
# ipl::nand::File::callback_()
.fn callback___Q33ipl4nand4FileFv, global
/* 8133BE60 | 4E 80 00 20 */	blr
.endfn callback___Q33ipl4nand4FileFv

# .text:0xB80 | 0x8133BE64 | size: 0x90
# ipl::nand::File::calcMD5_(const unsigned char*, const unsigned char*, unsigned long) const
.fn calcMD5___Q33ipl4nand4FileCFPCUcPCUcUl, global
/* 8133BE64 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8133BE68 | 7C 08 02 A6 */	mflr r0
/* 8133BE6C | 90 01 00 84 */	stw r0, 0x84(r1)
/* 8133BE70 | 39 61 00 80 */	addi r11, r1, 0x80
/* 8133BE74 | 48 2B D6 55 */	bl _savegpr_29
/* 8133BE78 | 7C 9D 23 78 */	mr r29, r4
/* 8133BE7C | 7C BE 2B 78 */	mr r30, r5
/* 8133BE80 | 7C DF 33 78 */	mr r31, r6
/* 8133BE84 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8133BE88 | 48 15 79 6D */	bl NETMD5Init
/* 8133BE8C | 7F C4 F3 78 */	mr r4, r30
/* 8133BE90 | 7F E5 FB 78 */	mr r5, r31
/* 8133BE94 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8133BE98 | 48 15 79 9D */	bl NETMD5Update
/* 8133BE9C | 38 61 00 18 */	addi r3, r1, 0x18
/* 8133BEA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133BEA4 | 48 15 7A 81 */	bl NETMD5GetDigest
/* 8133BEA8 | 38 00 00 10 */	li r0, 0x10
/* 8133BEAC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133BEB0 | 7C 09 03 A6 */	mtctr r0
.L_8133BEB4:
/* 8133BEB4 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 8133BEB8 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8133BEBC | 7C 04 00 40 */	cmplw r4, r0
/* 8133BEC0 | 41 82 00 0C */	beq .L_8133BECC
/* 8133BEC4 | 38 60 00 02 */	li r3, 0x2
/* 8133BEC8 | 48 00 00 14 */	b .L_8133BEDC
.L_8133BECC:
/* 8133BECC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8133BED0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8133BED4 | 42 00 FF E0 */	bdnz .L_8133BEB4
/* 8133BED8 | 38 60 00 01 */	li r3, 0x1
.L_8133BEDC:
/* 8133BEDC | 39 61 00 80 */	addi r11, r1, 0x80
/* 8133BEE0 | 48 2B D6 35 */	bl _restgpr_29
/* 8133BEE4 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8133BEE8 | 7C 08 03 A6 */	mtlr r0
/* 8133BEEC | 38 21 00 80 */	addi r1, r1, 0x80
/* 8133BEF0 | 4E 80 00 20 */	blr
.endfn calcMD5___Q33ipl4nand4FileCFPCUcPCUcUl

# .text:0xC10 | 0x8133BEF4 | size: 0xA8
# ipl::nand::File::close_()
.fn close___Q33ipl4nand4FileFv, global
/* 8133BEF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133BEF8 | 7C 08 02 A6 */	mflr r0
/* 8133BEFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133BF00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133BF04 | 7C 7F 1B 78 */	mr r31, r3
/* 8133BF08 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8133BF0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133BF10 | 41 82 00 40 */	beq .L_8133BF50
/* 8133BF14 | 80 03 01 8C */	lwz r0, 0x18c(r3)
/* 8133BF18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133BF1C | 41 82 00 1C */	beq .L_8133BF38
/* 8133BF20 | 38 63 00 F8 */	addi r3, r3, 0xf8
/* 8133BF24 | 48 02 3D E1 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8133BF28 | 7C 64 1B 78 */	mr r4, r3
/* 8133BF2C | 7F E3 FB 78 */	mr r3, r31
/* 8133BF30 | 48 00 04 85 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133BF34 | 48 00 00 54 */	b .L_8133BF88
.L_8133BF38:
/* 8133BF38 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133BF3C | 48 23 56 69 */	bl ARCClose
/* 8133BF40 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8133BF44 | 7C 00 00 34 */	cntlzw r0, r0
/* 8133BF48 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8133BF4C | 48 00 00 3C */	b .L_8133BF88
.L_8133BF50:
/* 8133BF50 | 80 03 01 8C */	lwz r0, 0x18c(r3)
/* 8133BF54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133BF58 | 41 82 00 1C */	beq .L_8133BF74
/* 8133BF5C | 38 63 00 F8 */	addi r3, r3, 0xf8
/* 8133BF60 | 48 02 3D A5 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8133BF64 | 7C 64 1B 78 */	mr r4, r3
/* 8133BF68 | 7F E3 FB 78 */	mr r3, r31
/* 8133BF6C | 48 00 04 49 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133BF70 | 48 00 00 18 */	b .L_8133BF88
.L_8133BF74:
/* 8133BF74 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 8133BF78 | 48 23 56 2D */	bl ARCClose
/* 8133BF7C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8133BF80 | 7C 00 00 34 */	cntlzw r0, r0
/* 8133BF84 | 54 03 D9 7E */	srwi r3, r0, 5
.L_8133BF88:
/* 8133BF88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133BF8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133BF90 | 7C 08 03 A6 */	mtlr r0
/* 8133BF94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133BF98 | 4E 80 00 20 */	blr
.endfn close___Q33ipl4nand4FileFv

# .text:0xCB8 | 0x8133BF9C | size: 0x14
# ipl::nand::File::getBuffer_(unsigned long)
.fn getBuffer___Q33ipl4nand4FileFUl, global
/* 8133BF9C | 7C 65 1B 78 */	mr r5, r3
/* 8133BFA0 | 7C 83 23 78 */	mr r3, r4
/* 8133BFA4 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8133BFA8 | 38 A0 00 20 */	li r5, 0x20
/* 8133BFAC | 48 2B C1 28 */	b __nwa__FUlPQ23EGG4Heapi
.endfn getBuffer___Q33ipl4nand4FileFUl

# .text:0xCCC | 0x8133BFB0 | size: 0x194
# ipl::nand::LangFile::LangFile(EGG::Heap*, const char*, const char*, ARCHandle*, bool)
.fn __ct__Q33ipl4nand8LangFileFPQ23EGG4HeapPCcPCcP9ARCHandleb, global
/* 8133BFB0 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8133BFB4 | 7C 08 02 A6 */	mflr r0
/* 8133BFB8 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8133BFBC | 39 61 00 70 */	addi r11, r1, 0x70
/* 8133BFC0 | 48 2B D4 F9 */	bl _savegpr_25
/* 8133BFC4 | 3D 20 81 63 */	lis r9, __vt__Q33ipl4nand8LangFile@ha
/* 8133BFC8 | 38 00 00 00 */	li r0, 0x0
/* 8133BFCC | 39 29 4C F8 */	addi r9, r9, __vt__Q33ipl4nand8LangFile@l
/* 8133BFD0 | 7C BB 2B 78 */	mr r27, r5
/* 8133BFD4 | 91 23 00 00 */	stw r9, 0x0(r3)
/* 8133BFD8 | 7C 9A 23 78 */	mr r26, r4
/* 8133BFDC | 7C 79 1B 78 */	mr r25, r3
/* 8133BFE0 | 7C DC 33 78 */	mr r28, r6
/* 8133BFE4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8133BFE8 | 7C FD 3B 78 */	mr r29, r7
/* 8133BFEC | 7D 1E 43 78 */	mr r30, r8
/* 8133BFF0 | 7F 64 DB 78 */	mr r4, r27
/* 8133BFF4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8133BFF8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133BFFC | 38 A0 00 41 */	li r5, 0x41
/* 8133C000 | 48 2C 63 C5 */	bl strncpy
/* 8133C004 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C008 | 48 2B CE F5 */	bl strlen
/* 8133C00C | 3C 80 81 63 */	lis r4, lbl_81634C9C@ha
/* 8133C010 | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133C014 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C018 | 38 84 4C 9C */	addi r4, r4, lbl_81634C9C@l
/* 8133C01C | 48 2C 64 19 */	bl strncat
/* 8133C020 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C024 | 48 2B CE D9 */	bl strlen
/* 8133C028 | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133C02C | 7F 84 E3 78 */	mr r4, r28
/* 8133C030 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C034 | 48 2C 64 01 */	bl strncat
/* 8133C038 | 7F 44 D3 78 */	mr r4, r26
/* 8133C03C | 38 60 01 90 */	li r3, 0x190
/* 8133C040 | 38 A0 00 04 */	li r5, 0x4
/* 8133C044 | 48 2B C0 6D */	bl __nw__FUlPQ23EGG4Heapi
/* 8133C048 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C04C | 41 82 00 24 */	beq .L_8133C070
/* 8133C050 | 7F 44 D3 78 */	mr r4, r26
/* 8133C054 | 7F A6 EB 78 */	mr r6, r29
/* 8133C058 | 7F CA F3 78 */	mr r10, r30
/* 8133C05C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8133C060 | 38 E0 00 00 */	li r7, 0x0
/* 8133C064 | 39 00 00 00 */	li r8, 0x0
/* 8133C068 | 39 20 00 00 */	li r9, 0x0
/* 8133C06C | 4B FF F2 C9 */	bl __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcP9ARCHandlePCciUlb
.L_8133C070:
/* 8133C070 | 90 79 00 04 */	stw r3, 0x4(r25)
/* 8133C074 | 48 02 74 ED */	bl getPath__Q33ipl7utility8LanguageFv
/* 8133C078 | 7C 7F 1B 78 */	mr r31, r3
/* 8133C07C | 7F 64 DB 78 */	mr r4, r27
/* 8133C080 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C084 | 38 A0 00 41 */	li r5, 0x41
/* 8133C088 | 48 2C 63 3D */	bl strncpy
/* 8133C08C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C090 | 48 2B CE 6D */	bl strlen
/* 8133C094 | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133C098 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C09C | 38 8D 80 60 */	li r4, lbl_816960A0@sda21
/* 8133C0A0 | 48 2C 63 95 */	bl strncat
/* 8133C0A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C0A8 | 48 2B CE 55 */	bl strlen
/* 8133C0AC | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133C0B0 | 7F E4 FB 78 */	mr r4, r31
/* 8133C0B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C0B8 | 48 2C 63 7D */	bl strncat
/* 8133C0BC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C0C0 | 48 2B CE 3D */	bl strlen
/* 8133C0C4 | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133C0C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C0CC | 38 8D 80 60 */	li r4, lbl_816960A0@sda21
/* 8133C0D0 | 48 2C 63 65 */	bl strncat
/* 8133C0D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C0D8 | 48 2B CE 25 */	bl strlen
/* 8133C0DC | 20 A3 00 41 */	subfic r5, r3, 0x41
/* 8133C0E0 | 7F 84 E3 78 */	mr r4, r28
/* 8133C0E4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133C0E8 | 48 2C 63 4D */	bl strncat
/* 8133C0EC | 7F 44 D3 78 */	mr r4, r26
/* 8133C0F0 | 38 60 01 90 */	li r3, 0x190
/* 8133C0F4 | 38 A0 00 04 */	li r5, 0x4
/* 8133C0F8 | 48 2B BF B9 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133C0FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C100 | 41 82 00 24 */	beq .L_8133C124
/* 8133C104 | 7F 44 D3 78 */	mr r4, r26
/* 8133C108 | 7F A6 EB 78 */	mr r6, r29
/* 8133C10C | 7F CA F3 78 */	mr r10, r30
/* 8133C110 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8133C114 | 38 E0 00 00 */	li r7, 0x0
/* 8133C118 | 39 00 00 00 */	li r8, 0x0
/* 8133C11C | 39 20 00 00 */	li r9, 0x0
/* 8133C120 | 4B FF F2 15 */	bl __ct__Q33ipl4nand4FileFPQ23EGG4HeapPCcP9ARCHandlePCciUlb
.L_8133C124:
/* 8133C124 | 90 79 00 08 */	stw r3, 0x8(r25)
/* 8133C128 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8133C12C | 7F 23 CB 78 */	mr r3, r25
/* 8133C130 | 48 2B D3 D5 */	bl _restgpr_25
/* 8133C134 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8133C138 | 7C 08 03 A6 */	mtlr r0
/* 8133C13C | 38 21 00 70 */	addi r1, r1, 0x70
/* 8133C140 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4nand8LangFileFPQ23EGG4HeapPCcPCcP9ARCHandleb

# .text:0xE60 | 0x8133C144 | size: 0xA8
# ipl::nand::LangFile::~LangFile()
.fn __dt__Q33ipl4nand8LangFileFv, global
/* 8133C144 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133C148 | 7C 08 02 A6 */	mflr r0
/* 8133C14C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C150 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133C154 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133C158 | 7C 9F 23 78 */	mr r31, r4
/* 8133C15C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133C160 | 7C 7E 1B 78 */	mr r30, r3
/* 8133C164 | 41 82 00 6C */	beq .L_8133C1D0
/* 8133C168 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8133C16C | 3C 80 81 63 */	lis r4, __vt__Q33ipl4nand8LangFile@ha
/* 8133C170 | 38 84 4C F8 */	addi r4, r4, __vt__Q33ipl4nand8LangFile@l
/* 8133C174 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133C178 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8133C17C | 41 82 00 20 */	beq .L_8133C19C
/* 8133C180 | 41 82 00 1C */	beq .L_8133C19C
/* 8133C184 | 7C 03 03 78 */	mr r3, r0
/* 8133C188 | 38 80 00 01 */	li r4, 0x1
/* 8133C18C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C190 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8133C194 | 7D 89 03 A6 */	mtctr r12
/* 8133C198 | 4E 80 04 21 */	bctrl
.L_8133C19C:
/* 8133C19C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8133C1A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C1A4 | 41 82 00 1C */	beq .L_8133C1C0
/* 8133C1A8 | 41 82 00 18 */	beq .L_8133C1C0
/* 8133C1AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C1B0 | 38 80 00 01 */	li r4, 0x1
/* 8133C1B4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8133C1B8 | 7D 89 03 A6 */	mtctr r12
/* 8133C1BC | 4E 80 04 21 */	bctrl
.L_8133C1C0:
/* 8133C1C0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133C1C4 | 40 81 00 0C */	ble .L_8133C1D0
/* 8133C1C8 | 7F C3 F3 78 */	mr r3, r30
/* 8133C1CC | 48 2B BF 19 */	bl __dl__FPv
.L_8133C1D0:
/* 8133C1D0 | 7F C3 F3 78 */	mr r3, r30
/* 8133C1D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133C1D8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133C1DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133C1E0 | 7C 08 03 A6 */	mtlr r0
/* 8133C1E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133C1E8 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl4nand8LangFileFv

# .text:0xF08 | 0x8133C1EC | size: 0x64
# ipl::nand::LangFile::read()
.fn read__Q33ipl4nand8LangFileFv, global
/* 8133C1EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133C1F0 | 7C 08 02 A6 */	mflr r0
/* 8133C1F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133C1F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133C1FC | 7C 7F 1B 78 */	mr r31, r3
/* 8133C200 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8133C204 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133C208 | 41 82 00 18 */	beq .L_8133C220
/* 8133C20C | 7C 03 03 78 */	mr r3, r0
/* 8133C210 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C214 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8133C218 | 7D 89 03 A6 */	mtctr r12
/* 8133C21C | 4E 80 04 21 */	bctrl
.L_8133C220:
/* 8133C220 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8133C224 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C228 | 41 82 00 14 */	beq .L_8133C23C
/* 8133C22C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C230 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8133C234 | 7D 89 03 A6 */	mtctr r12
/* 8133C238 | 4E 80 04 21 */	bctrl
.L_8133C23C:
/* 8133C23C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133C240 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133C244 | 7C 08 03 A6 */	mtlr r0
/* 8133C248 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133C24C | 4E 80 00 20 */	blr
.endfn read__Q33ipl4nand8LangFileFv

# .text:0xF6C | 0x8133C250 | size: 0x3C
# ipl::nand::LayoutFile::LayoutFile(EGG::Heap*, const char*, const char*, ARCHandle*, bool)
.fn __ct__Q33ipl4nand10LayoutFileFPQ23EGG4HeapPCcPCcP9ARCHandleb, global
/* 8133C250 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133C254 | 7C 08 02 A6 */	mflr r0
/* 8133C258 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133C25C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133C260 | 7C 7F 1B 78 */	mr r31, r3
/* 8133C264 | 4B FF FD 4D */	bl __ct__Q33ipl4nand8LangFileFPQ23EGG4HeapPCcPCcP9ARCHandleb
/* 8133C268 | 3C 80 81 63 */	lis r4, __vt__Q33ipl4nand10LayoutFile@ha
/* 8133C26C | 7F E3 FB 78 */	mr r3, r31
/* 8133C270 | 38 84 4C D8 */	addi r4, r4, __vt__Q33ipl4nand10LayoutFile@l
/* 8133C274 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 8133C278 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133C27C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133C280 | 7C 08 03 A6 */	mtlr r0
/* 8133C284 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133C288 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl4nand10LayoutFileFPQ23EGG4HeapPCcPCcP9ARCHandleb

# .text:0xFA8 | 0x8133C28C | size: 0x128
# ipl::nand::File::write()
.fn write__Q33ipl4nand4FileFv, global
/* 8133C28C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133C290 | 7C 08 02 A6 */	mflr r0
/* 8133C294 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8133C298 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133C29C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8133C2A0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8133C2A4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8133C2A8 | 7C 7E 1B 78 */	mr r30, r3
/* 8133C2AC | 80 85 00 0C */	lwz r4, 0xc(r5)
/* 8133C2B0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133C2B4 | 40 82 00 08 */	bne .L_8133C2BC
/* 8133C2B8 | 80 85 00 04 */	lwz r4, 0x4(r5)
.L_8133C2BC:
/* 8133C2BC | 38 60 10 00 */	li r3, 0x1000
/* 8133C2C0 | 38 A0 FF E0 */	li r5, -0x20
/* 8133C2C4 | 48 2B BE 11 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133C2C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8133C2CC | 38 80 00 02 */	li r4, 0x2
/* 8133C2D0 | 38 60 00 01 */	li r3, 0x1
/* 8133C2D4 | 48 28 2B E5 */	bl ES_SetUid
/* 8133C2D8 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 8133C2DC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133C2E0 | 48 02 41 D1 */	bl PrivateGetType__Q33ipl4nand7wrapperFPCcPUc
/* 8133C2E4 | 7C 64 1B 78 */	mr r4, r3
/* 8133C2E8 | 7F C3 F3 78 */	mr r3, r30
/* 8133C2EC | 48 00 00 C9 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133C2F0 | 80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8133C2F4 | 2C 00 FF F4 */	cmpwi r0, -0xc
/* 8133C2F8 | 40 82 00 28 */	bne .L_8133C320
/* 8133C2FC | 88 9E 00 9D */	lbz r4, 0x9d(r30)
/* 8133C300 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 8133C304 | 38 A0 00 00 */	li r5, 0x0
/* 8133C308 | 48 02 3E DD */	bl PrivateCreate__Q33ipl4nand7wrapperFPCcUcUc
/* 8133C30C | 7C 64 1B 78 */	mr r4, r3
/* 8133C310 | 7F C3 F3 78 */	mr r3, r30
/* 8133C314 | 48 00 00 A1 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133C318 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C31C | 41 82 00 60 */	beq .L_8133C37C
.L_8133C320:
/* 8133C320 | 7F E6 FB 78 */	mr r6, r31
/* 8133C324 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 8133C328 | 38 9E 00 F8 */	addi r4, r30, 0xf8
/* 8133C32C | 38 A0 00 02 */	li r5, 0x2
/* 8133C330 | 38 E0 10 00 */	li r7, 0x1000
/* 8133C334 | 48 02 3F 99 */	bl PrivateSafeOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUcPvUl
/* 8133C338 | 7C 64 1B 78 */	mr r4, r3
/* 8133C33C | 7F C3 F3 78 */	mr r3, r30
/* 8133C340 | 48 00 00 75 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133C344 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C348 | 41 82 00 34 */	beq .L_8133C37C
/* 8133C34C | 80 9E 00 A4 */	lwz r4, 0xa4(r30)
/* 8133C350 | 38 7E 00 F8 */	addi r3, r30, 0xf8
/* 8133C354 | 80 BE 00 98 */	lwz r5, 0x98(r30)
/* 8133C358 | 48 02 3A 85 */	bl Write__Q33ipl4nand7wrapperFP12NANDFileInfoPCvUl
/* 8133C35C | 7C 64 1B 78 */	mr r4, r3
/* 8133C360 | 7F C3 F3 78 */	mr r3, r30
/* 8133C364 | 48 00 00 51 */	bl nand_error_handling__Q33ipl4nand4FileFi
/* 8133C368 | 38 7E 00 F8 */	addi r3, r30, 0xf8
/* 8133C36C | 48 02 3B C5 */	bl SafeClose__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8133C370 | 7C 64 1B 78 */	mr r4, r3
/* 8133C374 | 7F C3 F3 78 */	mr r3, r30
/* 8133C378 | 48 00 00 3D */	bl nand_error_handling__Q33ipl4nand4FileFi
.L_8133C37C:
/* 8133C37C | 7F E3 FB 78 */	mr r3, r31
/* 8133C380 | 48 2B BD 6D */	bl __dla__FPv
/* 8133C384 | 80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8133C388 | 48 2B BD 65 */	bl __dla__FPv
/* 8133C38C | 38 60 00 00 */	li r3, 0x0
/* 8133C390 | 38 00 00 01 */	li r0, 0x1
/* 8133C394 | 90 7E 00 A4 */	stw r3, 0xa4(r30)
/* 8133C398 | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 8133C39C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133C3A0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8133C3A4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8133C3A8 | 7C 08 03 A6 */	mtlr r0
/* 8133C3AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133C3B0 | 4E 80 00 20 */	blr
.endfn write__Q33ipl4nand4FileFv

# .text:0x10D0 | 0x8133C3B4 | size: 0x110
# ipl::nand::File::nand_error_handling(int)
.fn nand_error_handling__Q33ipl4nand4FileFi, global
/* 8133C3B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133C3B8 | 7C 08 02 A6 */	mflr r0
/* 8133C3BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133C3C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133C3C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133C3C8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133C3CC | 3B C0 00 00 */	li r30, 0x0
/* 8133C3D0 | 90 83 01 84 */	stw r4, 0x184(r3)
/* 8133C3D4 | 41 80 00 0C */	blt .L_8133C3E0
/* 8133C3D8 | 38 60 00 01 */	li r3, 0x1
/* 8133C3DC | 48 00 00 D0 */	b .L_8133C4AC
.L_8133C3E0:
/* 8133C3E0 | 38 04 00 0F */	addi r0, r4, 0xf
/* 8133C3E4 | 28 00 00 0B */	cmplwi r0, 0xb
/* 8133C3E8 | 41 81 00 78 */	bgt .L_8133C460
/* 8133C3EC | 3C A0 81 63 */	lis r5, jumptable_81634CA8@ha
/* 8133C3F0 | 54 00 10 3A */	slwi r0, r0, 2
/* 8133C3F4 | 38 A5 4C A8 */	addi r5, r5, jumptable_81634CA8@l
/* 8133C3F8 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 8133C3FC | 7C A9 03 A6 */	mtctr r5
/* 8133C400 | 4E 80 04 20 */	bctr
.L_8133C404:
/* 8133C404 | 3B C0 00 01 */	li r30, 0x1
/* 8133C408 | 48 00 00 A0 */	b .L_8133C4A8
.L_8133C40C:
/* 8133C40C | 38 00 00 03 */	li r0, 0x3
/* 8133C410 | 90 03 00 A8 */	stw r0, 0xa8(r3)
/* 8133C414 | 48 00 00 94 */	b .L_8133C4A8
.L_8133C418:
/* 8133C418 | 38 00 00 01 */	li r0, 0x1
/* 8133C41C | 98 03 01 89 */	stb r0, 0x189(r3)
/* 8133C420 | 48 00 00 88 */	b .L_8133C4A8
.L_8133C424:
/* 8133C424 | 38 00 00 02 */	li r0, 0x2
/* 8133C428 | 90 03 00 A8 */	stw r0, 0xa8(r3)
/* 8133C42C | 48 00 00 7C */	b .L_8133C4A8
.L_8133C430:
/* 8133C430 | 38 00 00 01 */	li r0, 0x1
/* 8133C434 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8133C438 | 98 03 01 88 */	stb r0, 0x188(r3)
/* 8133C43C | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8133C440 | 38 80 00 01 */	li r4, 0x1
/* 8133C444 | 38 A0 00 01 */	li r5, 0x1
/* 8133C448 | 80 66 00 98 */	lwz r3, 0x98(r6)
/* 8133C44C | 38 C0 00 00 */	li r6, 0x0
/* 8133C450 | 38 E0 00 00 */	li r7, 0x0
/* 8133C454 | 39 00 FF FF */	li r8, -0x1
/* 8133C458 | 48 01 A0 BD */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8133C45C | 48 00 00 4C */	b .L_8133C4A8
.L_8133C460:
/* 8133C460 | 38 00 00 01 */	li r0, 0x1
/* 8133C464 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133C468 | 98 03 01 88 */	stb r0, 0x188(r3)
/* 8133C46C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133C470 | 3C C0 81 63 */	lis r6, lbl_81634C90@ha
/* 8133C474 | 7C 85 23 78 */	mr r5, r4
/* 8133C478 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133C47C | 38 C6 4C 90 */	addi r6, r6, lbl_81634C90@l
/* 8133C480 | 38 8D 80 62 */	li r4, lbl_816960A2@sda21
/* 8133C484 | 38 E0 03 28 */	li r7, 0x328
/* 8133C488 | 48 01 A2 71 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133C48C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133C490 | 38 80 00 01 */	li r4, 0x1
/* 8133C494 | 38 A0 00 02 */	li r5, 0x2
/* 8133C498 | 38 C0 00 00 */	li r6, 0x0
/* 8133C49C | 38 E0 00 00 */	li r7, 0x0
/* 8133C4A0 | 39 00 FF FF */	li r8, -0x1
/* 8133C4A4 | 48 01 A0 71 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133C4A8:
/* 8133C4A8 | 7F C3 F3 78 */	mr r3, r30
.L_8133C4AC:
/* 8133C4AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133C4B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133C4B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133C4B8 | 7C 08 03 A6 */	mtlr r0
/* 8133C4BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133C4C0 | 4E 80 00 20 */	blr
.endfn nand_error_handling__Q33ipl4nand4FileFi

# .text:0x11E0 | 0x8133C4C4 | size: 0x4
# ipl::nand::Base::write()
.fn write__Q33ipl4nand4BaseFv, global
/* 8133C4C4 | 4E 80 00 20 */	blr
.endfn write__Q33ipl4nand4BaseFv

# .text:0x11E4 | 0x8133C4C8 | size: 0xA8
# ipl::nand::LangFile::isFatalError()
.fn isFatalError__Q33ipl4nand8LangFileFv, global
/* 8133C4C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133C4CC | 7C 08 02 A6 */	mflr r0
/* 8133C4D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133C4D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133C4D8 | 48 2B CF F1 */	bl _savegpr_29
/* 8133C4DC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8133C4E0 | 7C 7D 1B 78 */	mr r29, r3
/* 8133C4E4 | 3B E0 00 01 */	li r31, 0x1
/* 8133C4E8 | 3B C0 00 00 */	li r30, 0x0
/* 8133C4EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133C4F0 | 41 82 00 24 */	beq .L_8133C514
/* 8133C4F4 | 7C 03 03 78 */	mr r3, r0
/* 8133C4F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C4FC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8133C500 | 7D 89 03 A6 */	mtctr r12
/* 8133C504 | 4E 80 04 21 */	bctrl
/* 8133C508 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C50C | 41 82 00 08 */	beq .L_8133C514
/* 8133C510 | 3B C0 00 01 */	li r30, 0x1
.L_8133C514:
/* 8133C514 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8133C518 | 40 82 00 3C */	bne .L_8133C554
/* 8133C51C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8133C520 | 3B C0 00 00 */	li r30, 0x0
/* 8133C524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C528 | 41 82 00 20 */	beq .L_8133C548
/* 8133C52C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C530 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8133C534 | 7D 89 03 A6 */	mtctr r12
/* 8133C538 | 4E 80 04 21 */	bctrl
/* 8133C53C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C540 | 41 82 00 08 */	beq .L_8133C548
/* 8133C544 | 3B C0 00 01 */	li r30, 0x1
.L_8133C548:
/* 8133C548 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8133C54C | 40 82 00 08 */	bne .L_8133C554
/* 8133C550 | 3B E0 00 00 */	li r31, 0x0
.L_8133C554:
/* 8133C554 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133C558 | 7F E3 FB 78 */	mr r3, r31
/* 8133C55C | 48 2B CF B9 */	bl _restgpr_29
/* 8133C560 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133C564 | 7C 08 03 A6 */	mtlr r0
/* 8133C568 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133C56C | 4E 80 00 20 */	blr
.endfn isFatalError__Q33ipl4nand8LangFileFv

# .text:0x128C | 0x8133C570 | size: 0x8
# ipl::nand::File::isFatalError()
.fn isFatalError__Q33ipl4nand4FileFv, global
/* 8133C570 | 88 63 01 88 */	lbz r3, 0x188(r3)
/* 8133C574 | 4E 80 00 20 */	blr
.endfn isFatalError__Q33ipl4nand4FileFv

# .text:0x1294 | 0x8133C578 | size: 0x44
# ipl::nand::LangFile::checkData()
.fn checkData__Q33ipl4nand8LangFileFv, global
/* 8133C578 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8133C57C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133C580 | 41 82 00 18 */	beq .L_8133C598
/* 8133C584 | 7C 03 03 78 */	mr r3, r0
/* 8133C588 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C58C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133C590 | 7D 89 03 A6 */	mtctr r12
/* 8133C594 | 4E 80 04 20 */	bctr
.L_8133C598:
/* 8133C598 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8133C59C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C5A0 | 41 82 00 14 */	beq .L_8133C5B4
/* 8133C5A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C5A8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133C5AC | 7D 89 03 A6 */	mtctr r12
/* 8133C5B0 | 4E 80 04 20 */	bctr
.L_8133C5B4:
/* 8133C5B4 | 38 60 00 00 */	li r3, 0x0
/* 8133C5B8 | 4E 80 00 20 */	blr
.endfn checkData__Q33ipl4nand8LangFileFv

# .text:0x12D8 | 0x8133C5BC | size: 0xA8
# ipl::nand::LangFile::isFinished()
.fn isFinished__Q33ipl4nand8LangFileFv, global
/* 8133C5BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133C5C0 | 7C 08 02 A6 */	mflr r0
/* 8133C5C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133C5C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133C5CC | 48 2B CE FD */	bl _savegpr_29
/* 8133C5D0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8133C5D4 | 7C 7D 1B 78 */	mr r29, r3
/* 8133C5D8 | 3B E0 00 00 */	li r31, 0x0
/* 8133C5DC | 3B C0 00 01 */	li r30, 0x1
/* 8133C5E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133C5E4 | 41 82 00 24 */	beq .L_8133C608
/* 8133C5E8 | 7C 03 03 78 */	mr r3, r0
/* 8133C5EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C5F0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133C5F4 | 7D 89 03 A6 */	mtctr r12
/* 8133C5F8 | 4E 80 04 21 */	bctrl
/* 8133C5FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C600 | 40 82 00 08 */	bne .L_8133C608
/* 8133C604 | 3B C0 00 00 */	li r30, 0x0
.L_8133C608:
/* 8133C608 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8133C60C | 41 82 00 3C */	beq .L_8133C648
/* 8133C610 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8133C614 | 3B C0 00 01 */	li r30, 0x1
/* 8133C618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C61C | 41 82 00 20 */	beq .L_8133C63C
/* 8133C620 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133C624 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133C628 | 7D 89 03 A6 */	mtctr r12
/* 8133C62C | 4E 80 04 21 */	bctrl
/* 8133C630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C634 | 40 82 00 08 */	bne .L_8133C63C
/* 8133C638 | 3B C0 00 00 */	li r30, 0x0
.L_8133C63C:
/* 8133C63C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8133C640 | 41 82 00 08 */	beq .L_8133C648
/* 8133C644 | 3B E0 00 01 */	li r31, 0x1
.L_8133C648:
/* 8133C648 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133C64C | 7F E3 FB 78 */	mr r3, r31
/* 8133C650 | 48 2B CE C5 */	bl _restgpr_29
/* 8133C654 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133C658 | 7C 08 03 A6 */	mtlr r0
/* 8133C65C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133C660 | 4E 80 00 20 */	blr
.endfn isFinished__Q33ipl4nand8LangFileFv

# .text:0x1380 | 0x8133C664 | size: 0x8
# ipl::nand::Base::isFatalError()
.fn isFatalError__Q33ipl4nand4BaseFv, global
/* 8133C664 | 38 60 00 00 */	li r3, 0x0
/* 8133C668 | 4E 80 00 20 */	blr
.endfn isFatalError__Q33ipl4nand4BaseFv

# .text:0x1388 | 0x8133C66C | size: 0x8
# ipl::nand::Base::checkData()
.fn checkData__Q33ipl4nand4BaseFv, global
/* 8133C66C | 38 60 00 00 */	li r3, 0x0
/* 8133C670 | 4E 80 00 20 */	blr
.endfn checkData__Q33ipl4nand4BaseFv

# .text:0x1390 | 0x8133C674 | size: 0x8
# ipl::nand::Base::isFinished()
.fn isFinished__Q33ipl4nand4BaseFv, global
/* 8133C674 | 38 60 00 00 */	li r3, 0x0
/* 8133C678 | 4E 80 00 20 */	blr
.endfn isFinished__Q33ipl4nand4BaseFv

# .text:0x1398 | 0x8133C67C | size: 0x4
# ipl::nand::Base::read()
.fn read__Q33ipl4nand4BaseFv, global
/* 8133C67C | 4E 80 00 20 */	blr
.endfn read__Q33ipl4nand4BaseFv

# .text:0x139C | 0x8133C680 | size: 0x58
# ipl::nand::LayoutFile::~LayoutFile()
.fn __dt__Q33ipl4nand10LayoutFileFv, global
/* 8133C680 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133C684 | 7C 08 02 A6 */	mflr r0
/* 8133C688 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133C68C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133C690 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133C694 | 7C 9F 23 78 */	mr r31, r4
/* 8133C698 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133C69C | 7C 7E 1B 78 */	mr r30, r3
/* 8133C6A0 | 41 82 00 1C */	beq .L_8133C6BC
/* 8133C6A4 | 38 80 00 00 */	li r4, 0x0
/* 8133C6A8 | 4B FF FA 9D */	bl __dt__Q33ipl4nand8LangFileFv
/* 8133C6AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133C6B0 | 40 81 00 0C */	ble .L_8133C6BC
/* 8133C6B4 | 7F C3 F3 78 */	mr r3, r30
/* 8133C6B8 | 48 2B BA 2D */	bl __dl__FPv
.L_8133C6BC:
/* 8133C6BC | 7F C3 F3 78 */	mr r3, r30
/* 8133C6C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133C6C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133C6C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133C6CC | 7C 08 03 A6 */	mtlr r0
/* 8133C6D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133C6D4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl4nand10LayoutFileFv

# 0x81634C90..0x81634D90 | size: 0x100
.data
.balign 8

# .data:0x0 | 0x81634C90 | size: 0xC
.obj lbl_81634C90, global
	.string "iplNand.cpp"
.endobj lbl_81634C90

# .data:0xC | 0x81634C9C | size: 0xC
.obj lbl_81634C9C, global
	.4byte 0x2F636F6D
	.4byte 0x6D6F6E2F
	.4byte 0x00000000
.endobj lbl_81634C9C

# .data:0x18 | 0x81634CA8 | size: 0x30
.obj jumptable_81634CA8, local
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C424
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C460
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C460
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C40C
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C418
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C460
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C418
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C460
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C460
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C404
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C424
	.rel nand_error_handling__Q33ipl4nand4FileFi, .L_8133C430
.endobj jumptable_81634CA8

# .data:0x48 | 0x81634CD8 | size: 0x20
# ipl::nand::LayoutFile::__vtable
.obj __vt__Q33ipl4nand10LayoutFile, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl4nand10LayoutFileFv
	.4byte read__Q33ipl4nand8LangFileFv
	.4byte write__Q33ipl4nand4BaseFv
	.4byte isFinished__Q33ipl4nand8LangFileFv
	.4byte checkData__Q33ipl4nand8LangFileFv
	.4byte isFatalError__Q33ipl4nand8LangFileFv
.endobj __vt__Q33ipl4nand10LayoutFile

# .data:0x68 | 0x81634CF8 | size: 0x20
# ipl::nand::LangFile::__vtable
.obj __vt__Q33ipl4nand8LangFile, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl4nand8LangFileFv
	.4byte read__Q33ipl4nand8LangFileFv
	.4byte write__Q33ipl4nand4BaseFv
	.4byte isFinished__Q33ipl4nand8LangFileFv
	.4byte checkData__Q33ipl4nand8LangFileFv
	.4byte isFatalError__Q33ipl4nand8LangFileFv
.endobj __vt__Q33ipl4nand8LangFile

# .data:0x88 | 0x81634D18 | size: 0x54
# ipl::nand::File::__vtable
.obj __vt__Q33ipl4nand4File, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl4nand4FileFv
	.4byte read__Q33ipl4nand4FileFv
	.4byte write__Q33ipl4nand4FileFv
	.4byte isFinished__Q33ipl4nand4FileFv
	.4byte checkData__Q33ipl4nand4FileFv
	.4byte isFatalError__Q33ipl4nand4FileFv
	.4byte open___Q33ipl4nand4FileFUc
	.4byte close___Q33ipl4nand4FileFv
	.4byte readBlock___Q33ipl4nand4FileFPvii
	.4byte getRawSize___Q33ipl4nand4FileFv
	.4byte getDecodeSize___Q33ipl4nand4FileFPCUc
	.4byte getBuffer___Q33ipl4nand4FileFUl
	.4byte uncompressLz7__Q33ipl4nand4FileFPCUcPUc
	.4byte isCompressed__Q33ipl4nand4FileFPCUc
	.4byte isSliCompressed__Q33ipl4nand4FileFPCUc
	.4byte isAsrCompressed__Q33ipl4nand4FileFPCUc
	.4byte isAshCompressed__Q33ipl4nand4FileFPCUc
	.4byte isLz7Compressed__Q33ipl4nand4FileFPCUc
	.4byte callback___Q33ipl4nand4FileFv
.endobj __vt__Q33ipl4nand4File

# .data:0xDC | 0x81634D6C | size: 0x20
# ipl::nand::Base::__vtable
.obj __vt__Q33ipl4nand4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl4nand4BaseFv
	.4byte read__Q33ipl4nand4BaseFv
	.4byte write__Q33ipl4nand4BaseFv
	.4byte isFinished__Q33ipl4nand4BaseFv
	.4byte checkData__Q33ipl4nand4BaseFv
	.4byte isFatalError__Q33ipl4nand4BaseFv
.endobj __vt__Q33ipl4nand4Base

# .data:0xFC | 0x81634D8C | size: 0x4
.obj gap_08_81634D8C_data, global
.hidden gap_08_81634D8C_data
	.4byte 0x00000000
.endobj gap_08_81634D8C_data

# 0x81696098..0x816960A8 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696098 | size: 0x3
.obj lbl_81696098, global
	.string "ES"
.endobj lbl_81696098

# .sdata:0x3 | 0x8169609B | size: 0x5
.obj lbl_8169609B, global
	.string ".lz7"
.endobj lbl_8169609B

# .sdata:0x8 | 0x816960A0 | size: 0x2
.obj lbl_816960A0, global
	.string "/"
.endobj lbl_816960A0

# .sdata:0xA | 0x816960A2 | size: 0x5
.obj lbl_816960A2, global
	.string "NAND"
.endobj lbl_816960A2

# .sdata:0xF | 0x816960A7 | size: 0x1
.obj gap_11_816960A7_sdata, global
.hidden gap_11_816960A7_sdata
	.byte 0x00
.endobj gap_11_816960A7_sdata
