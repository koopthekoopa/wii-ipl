.include "macros.inc"
.file "CDBRecordKey.c"

# 0x8148E2E4..0x8148EC5C | size: 0x978
.text
.balign 4

# .text:0x0 | 0x8148E2E4 | size: 0x94
.fn CDBRecordKeyIsValid, global
/* 8148E2E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148E2E8 | 7C 08 02 A6 */	mflr r0
/* 8148E2EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E2F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148E2F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148E2F8 | 7C 7F 1B 78 */	mr r31, r3
/* 8148E2FC | 40 82 00 0C */	bne .L_8148E308
/* 8148E300 | 38 60 00 00 */	li r3, 0x0
/* 8148E304 | 48 00 00 60 */	b .L_8148E364
.L_8148E308:
/* 8148E308 | 48 16 AB F5 */	bl strlen
/* 8148E30C | 28 03 00 17 */	cmplwi r3, 0x17
/* 8148E310 | 41 80 00 50 */	blt .L_8148E360
/* 8148E314 | 88 1F 00 0A */	lbz r0, 0xa(r31)
/* 8148E318 | 2C 00 00 5F */	cmpwi r0, 0x5f
/* 8148E31C | 40 82 00 44 */	bne .L_8148E360
/* 8148E320 | 88 1F 00 0F */	lbz r0, 0xf(r31)
/* 8148E324 | 2C 00 00 5F */	cmpwi r0, 0x5f
/* 8148E328 | 40 82 00 38 */	bne .L_8148E360
/* 8148E32C | 88 1F 00 12 */	lbz r0, 0x12(r31)
/* 8148E330 | 2C 00 00 5F */	cmpwi r0, 0x5f
/* 8148E334 | 40 82 00 2C */	bne .L_8148E360
/* 8148E338 | 88 1F 00 16 */	lbz r0, 0x16(r31)
/* 8148E33C | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 8148E340 | 40 82 00 20 */	bne .L_8148E360
/* 8148E344 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8148E348 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148E34C | 41 80 00 14 */	blt .L_8148E360
/* 8148E350 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8148E354 | 41 81 00 0C */	bgt .L_8148E360
/* 8148E358 | 38 60 00 01 */	li r3, 0x1
/* 8148E35C | 48 00 00 08 */	b .L_8148E364
.L_8148E360:
/* 8148E360 | 38 60 00 00 */	li r3, 0x0
.L_8148E364:
/* 8148E364 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148E368 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148E36C | 7C 08 03 A6 */	mtlr r0
/* 8148E370 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148E374 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyIsValid

# .text:0x94 | 0x8148E378 | size: 0x104
.fn CDBRecordKeyInit, global
/* 8148E378 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8148E37C | 7C 08 02 A6 */	mflr r0
/* 8148E380 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8148E384 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8148E388 | 48 16 B1 35 */	bl _savegpr_26
/* 8148E38C | 7C 7A 1B 78 */	mr r26, r3
/* 8148E390 | 7C 9B 23 78 */	mr r27, r4
/* 8148E394 | 7C BC 2B 78 */	mr r28, r5
/* 8148E398 | 7C C3 33 78 */	mr r3, r6
/* 8148E39C | 7C FD 3B 78 */	mr r29, r7
/* 8148E3A0 | 7D 1E 43 78 */	mr r30, r8
/* 8148E3A4 | 7D 3F 4B 78 */	mr r31, r9
/* 8148E3A8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148E3AC | 4B FF 88 89 */	bl CDBConvMCValueToMCStr
/* 8148E3B0 | 7F 83 E3 78 */	mr r3, r28
/* 8148E3B4 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8148E3B8 | 4B FF 88 2D */	bl CDBConvGCValueToGCStr
/* 8148E3BC | 48 00 1C 3D */	bl CDBGetWiiId
/* 8148E3C0 | 90 7A 00 20 */	stw r3, 0x20(r26)
/* 8148E3C4 | 7F C3 F3 78 */	mr r3, r30
/* 8148E3C8 | 90 9A 00 24 */	stw r4, 0x24(r26)
/* 8148E3CC | 93 FA 00 28 */	stw r31, 0x28(r26)
/* 8148E3D0 | 48 16 AB 2D */	bl strlen
/* 8148E3D4 | 7C 7F 1B 78 */	mr r31, r3
/* 8148E3D8 | 7F C4 F3 78 */	mr r4, r30
/* 8148E3DC | 38 61 00 0C */	addi r3, r1, 0xc
/* 8148E3E0 | 48 17 3F 25 */	bl strcpy
/* 8148E3E4 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148E3E8 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 8148E3EC | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148E3F0 | 80 83 00 38 */	lwz r4, 0x38(r3)
/* 8148E3F4 | 7F E9 03 A6 */	mtctr r31
/* 8148E3F8 | 28 1F 00 00 */	cmplwi r31, 0x0
/* 8148E3FC | 40 81 00 40 */	ble .L_8148E43C
.L_8148E400:
/* 8148E400 | 88 A6 00 00 */	lbz r5, 0x0(r6)
/* 8148E404 | 38 00 00 00 */	li r0, 0x0
/* 8148E408 | 7C A5 07 75 */	extsb. r5, r5
/* 8148E40C | 41 80 00 0C */	blt .L_8148E418
/* 8148E410 | 2C 05 01 00 */	cmpwi r5, 0x100
/* 8148E414 | 41 80 00 08 */	blt .L_8148E41C
.L_8148E418:
/* 8148E418 | 38 00 00 01 */	li r0, 0x1
.L_8148E41C:
/* 8148E41C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148E420 | 41 82 00 08 */	beq .L_8148E428
/* 8148E424 | 48 00 00 0C */	b .L_8148E430
.L_8148E428:
/* 8148E428 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 8148E42C | 7C A3 28 AE */	lbzx r5, r3, r5
.L_8148E430:
/* 8148E430 | 98 A6 00 00 */	stb r5, 0x0(r6)
/* 8148E434 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8148E438 | 42 00 FF C8 */	bdnz .L_8148E400
.L_8148E43C:
/* 8148E43C | 3C 80 81 67 */	lis r4, lbl_8166C5A0@ha
/* 8148E440 | 7F 43 D3 78 */	mr r3, r26
/* 8148E444 | 7F 65 DB 78 */	mr r5, r27
/* 8148E448 | 7F A8 EB 78 */	mr r8, r29
/* 8148E44C | 38 84 C5 A0 */	addi r4, r4, lbl_8166C5A0@l
/* 8148E450 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 8148E454 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 8148E458 | 39 21 00 0C */	addi r9, r1, 0xc
/* 8148E45C | 4C C6 31 82 */	crclr cr1eq
/* 8148E460 | 48 17 26 21 */	bl sprintf
/* 8148E464 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8148E468 | 48 16 B0 A1 */	bl _restgpr_26
/* 8148E46C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8148E470 | 7C 08 03 A6 */	mtlr r0
/* 8148E474 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8148E478 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyInit

# .text:0x198 | 0x8148E47C | size: 0x4C
.fn CDBRecordKeySetSerialNumber, global
/* 8148E47C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148E480 | 7C 08 02 A6 */	mflr r0
/* 8148E484 | 7C 85 23 78 */	mr r5, r4
/* 8148E488 | 38 8D 99 F0 */	li r4, lbl_81697A30@sda21
/* 8148E48C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148E490 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148E494 | 7C 7F 1B 78 */	mr r31, r3
/* 8148E498 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148E49C | 4C C6 31 82 */	crclr cr1eq
/* 8148E4A0 | 48 17 25 E1 */	bl sprintf
/* 8148E4A4 | 38 7F 00 13 */	addi r3, r31, 0x13
/* 8148E4A8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148E4AC | 38 A0 00 03 */	li r5, 0x3
/* 8148E4B0 | 4B EA 1D 81 */	bl memcpy
/* 8148E4B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148E4B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148E4BC | 7C 08 03 A6 */	mtlr r0
/* 8148E4C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148E4C4 | 4E 80 00 20 */	blr
.endfn CDBRecordKeySetSerialNumber

# .text:0x1E4 | 0x8148E4C8 | size: 0x10
.fn CDBRecordKeyInitByOnlyDate, global
/* 8148E4C8 | 7C 85 23 78 */	mr r5, r4
/* 8148E4CC | 38 8D 99 F8 */	li r4, lbl_81697A38@sda21
/* 8148E4D0 | 4C C6 31 82 */	crclr cr1eq
/* 8148E4D4 | 48 17 25 AC */	b sprintf
.endfn CDBRecordKeyInitByOnlyDate

# .text:0x1F4 | 0x8148E4D8 | size: 0xAC
.fn CDBRecordKeyInitFromFileName2, global
/* 8148E4D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148E4DC | 7C 08 02 A6 */	mflr r0
/* 8148E4E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148E4E4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148E4E8 | 7C DF 33 78 */	mr r31, r6
/* 8148E4EC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148E4F0 | 7C BE 2B 78 */	mr r30, r5
/* 8148E4F4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8148E4F8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148E4FC | 7C 9D 23 78 */	mr r29, r4
/* 8148E500 | 38 8D 9A 00 */	li r4, lbl_81697A40@sda21
/* 8148E504 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8148E508 | 7C 7C 1B 78 */	mr r28, r3
/* 8148E50C | 7F A3 EB 78 */	mr r3, r29
/* 8148E510 | 4C C6 31 82 */	crclr cr1eq
/* 8148E514 | 48 17 3C 79 */	bl sscanf
/* 8148E518 | 38 7D 00 09 */	addi r3, r29, 0x9
/* 8148E51C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8148E520 | 38 8D 9A 04 */	li r4, lbl_81697A44@sda21
/* 8148E524 | 4C C6 31 82 */	crclr cr1eq
/* 8148E528 | 48 17 3C 65 */	bl sscanf
/* 8148E52C | 3C 80 81 67 */	lis r4, lbl_8166C5B4@ha
/* 8148E530 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8148E534 | 80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8148E538 | 7F 83 E3 78 */	mr r3, r28
/* 8148E53C | 7F C6 F3 78 */	mr r6, r30
/* 8148E540 | 7F E8 FB 78 */	mr r8, r31
/* 8148E544 | 38 84 C5 B4 */	addi r4, r4, lbl_8166C5B4@l
/* 8148E548 | 4C C6 31 82 */	crclr cr1eq
/* 8148E54C | 48 17 25 35 */	bl sprintf
/* 8148E550 | 48 00 1A A9 */	bl CDBGetWiiId
/* 8148E554 | 38 00 00 02 */	li r0, 0x2
/* 8148E558 | 90 9C 00 24 */	stw r4, 0x24(r28)
/* 8148E55C | 90 7C 00 20 */	stw r3, 0x20(r28)
/* 8148E560 | 90 1C 00 28 */	stw r0, 0x28(r28)
/* 8148E564 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148E568 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148E56C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148E570 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8148E574 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148E578 | 7C 08 03 A6 */	mtlr r0
/* 8148E57C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148E580 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyInitFromFileName2

# .text:0x2A0 | 0x8148E584 | size: 0x50
.fn CDBRecordKeyCopy, global
/* 8148E584 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148E588 | 7C 08 02 A6 */	mflr r0
/* 8148E58C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148E590 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148E594 | 7C 9F 23 78 */	mr r31, r4
/* 8148E598 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148E59C | 7C 7E 1B 78 */	mr r30, r3
/* 8148E5A0 | 48 17 3D 65 */	bl strcpy
/* 8148E5A4 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8148E5A8 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8148E5AC | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8148E5B0 | 90 9E 00 24 */	stw r4, 0x24(r30)
/* 8148E5B4 | 90 7E 00 20 */	stw r3, 0x20(r30)
/* 8148E5B8 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 8148E5BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148E5C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148E5C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148E5C8 | 7C 08 03 A6 */	mtlr r0
/* 8148E5CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148E5D0 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyCopy

# .text:0x2F0 | 0x8148E5D4 | size: 0x68
.fn CDBRecordKeyCompare, global
/* 8148E5D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148E5D8 | 7C 08 02 A6 */	mflr r0
/* 8148E5DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148E5E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148E5E4 | 7C 9F 23 78 */	mr r31, r4
/* 8148E5E8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148E5EC | 7C 7E 1B 78 */	mr r30, r3
/* 8148E5F0 | 48 17 3E 91 */	bl strcmp
/* 8148E5F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E5F8 | 41 82 00 08 */	beq .L_8148E600
/* 8148E5FC | 48 00 00 28 */	b .L_8148E624
.L_8148E600:
/* 8148E600 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8148E604 | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8148E608 | 7C 03 00 00 */	cmpw r3, r0
/* 8148E60C | 40 82 00 0C */	bne .L_8148E618
/* 8148E610 | 38 60 00 00 */	li r3, 0x0
/* 8148E614 | 48 00 00 10 */	b .L_8148E624
.L_8148E618:
/* 8148E618 | 38 60 FF FF */	li r3, -0x1
/* 8148E61C | 40 80 00 08 */	bge .L_8148E624
/* 8148E620 | 38 60 00 01 */	li r3, 0x1
.L_8148E624:
/* 8148E624 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148E628 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148E62C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148E630 | 7C 08 03 A6 */	mtlr r0
/* 8148E634 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148E638 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyCompare

# .text:0x358 | 0x8148E63C | size: 0x48
.fn CDBRecordKeyCompareByDate, global
/* 8148E63C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8148E640 | 7C 08 02 A6 */	mflr r0
/* 8148E644 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8148E648 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8148E64C | 7C 9F 23 78 */	mr r31, r4
/* 8148E650 | 38 81 00 28 */	addi r4, r1, 0x28
/* 8148E654 | 4B FF 86 B1 */	bl CDBConvKeyStrToEpochStr
/* 8148E658 | 7F E3 FB 78 */	mr r3, r31
/* 8148E65C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148E660 | 4B FF 86 A5 */	bl CDBConvKeyStrToEpochStr
/* 8148E664 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148E668 | 38 81 00 28 */	addi r4, r1, 0x28
/* 8148E66C | 48 17 3E 15 */	bl strcmp
/* 8148E670 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8148E674 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8148E678 | 7C 08 03 A6 */	mtlr r0
/* 8148E67C | 38 21 00 50 */	addi r1, r1, 0x50
/* 8148E680 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyCompareByDate

# .text:0x3A0 | 0x8148E684 | size: 0x10
.fn CDBRecordKeyGetKeyStr, global
/* 8148E684 | 7C 60 1B 78 */	mr r0, r3
/* 8148E688 | 7C 83 23 78 */	mr r3, r4
/* 8148E68C | 7C 04 03 78 */	mr r4, r0
/* 8148E690 | 48 17 3C 74 */	b strcpy
.endfn CDBRecordKeyGetKeyStr

# .text:0x3B0 | 0x8148E694 | size: 0x1C
.fn CDBRecordKeyArrayInit, global
/* 8148E694 | 38 C0 00 00 */	li r6, 0x0
/* 8148E698 | 38 00 00 01 */	li r0, 0x1
/* 8148E69C | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 8148E6A0 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8148E6A4 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8148E6A8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8148E6AC | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArrayInit

# .text:0x3CC | 0x8148E6B0 | size: 0xC
.fn CDBRecordKeyArraySetReverse, global
/* 8148E6B0 | 38 00 FF FF */	li r0, -0x1
/* 8148E6B4 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8148E6B8 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArraySetReverse

# .text:0x3D8 | 0x8148E6BC | size: 0x8
.fn CDBRecordKeyArraySize, global
/* 8148E6BC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148E6C0 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArraySize

# .text:0x3E0 | 0x8148E6C4 | size: 0x10
.fn CDBRecordKeyArrayAt, global
/* 8148E6C4 | 1C 04 00 30 */	mulli r0, r4, 0x30
/* 8148E6C8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148E6CC | 7C 63 02 14 */	add r3, r3, r0
/* 8148E6D0 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArrayAt

# .text:0x3F0 | 0x8148E6D4 | size: 0x10
.fn CDBRecordKeyArrayEmpty, global
/* 8148E6D4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8148E6D8 | 7C 00 00 34 */	cntlzw r0, r0
/* 8148E6DC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8148E6E0 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArrayEmpty

# .text:0x400 | 0x8148E6E4 | size: 0x1C
.fn CDBRecordKeyArrayFull, global
/* 8148E6E4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8148E6E8 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8148E6EC | 7C 04 FE 70 */	srawi r4, r0, 31
/* 8148E6F0 | 54 A3 0F FE */	srwi r3, r5, 31
/* 8148E6F4 | 7C 05 00 10 */	subfc r0, r5, r0
/* 8148E6F8 | 7C 64 19 14 */	adde r3, r4, r3
/* 8148E6FC | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArrayFull

# .text:0x41C | 0x8148E700 | size: 0x14
.fn CDBRecordKeyArrayEnd, global
/* 8148E700 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8148E704 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148E708 | 1C 00 00 30 */	mulli r0, r0, 0x30
/* 8148E70C | 7C 63 02 14 */	add r3, r3, r0
/* 8148E710 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArrayEnd

# .text:0x430 | 0x8148E714 | size: 0x104
.fn CDBRecordKeyArrayDicInsertR, global
/* 8148E714 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148E718 | 7C 08 02 A6 */	mflr r0
/* 8148E71C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148E720 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148E724 | 48 16 AD 9D */	bl _savegpr_27
/* 8148E728 | 7C 05 30 00 */	cmpw r5, r6
/* 8148E72C | 7C 7B 1B 78 */	mr r27, r3
/* 8148E730 | 7C 9C 23 78 */	mr r28, r4
/* 8148E734 | 7C BD 2B 78 */	mr r29, r5
/* 8148E738 | 7C DE 33 78 */	mr r30, r6
/* 8148E73C | 41 82 00 10 */	beq .L_8148E74C
/* 8148E740 | 38 06 FF FF */	subi r0, r6, 0x1
/* 8148E744 | 7C 05 00 00 */	cmpw r5, r0
/* 8148E748 | 40 82 00 50 */	bne .L_8148E798
.L_8148E74C:
/* 8148E74C | 1C 05 00 30 */	mulli r0, r5, 0x30
/* 8148E750 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8148E754 | 7F 83 E3 78 */	mr r3, r28
/* 8148E758 | 7C 84 02 14 */	add r4, r4, r0
/* 8148E75C | 4B FF FE 79 */	bl CDBRecordKeyCompare
/* 8148E760 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E764 | 40 80 00 0C */	bge .L_8148E770
/* 8148E768 | 7F A3 EB 78 */	mr r3, r29
/* 8148E76C | 48 00 00 94 */	b .L_8148E800
.L_8148E770:
/* 8148E770 | 1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8148E774 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8148E778 | 7F 83 E3 78 */	mr r3, r28
/* 8148E77C | 7C 84 02 14 */	add r4, r4, r0
/* 8148E780 | 4B FF FE 55 */	bl CDBRecordKeyCompare
/* 8148E784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E788 | 41 80 00 08 */	blt .L_8148E790
/* 8148E78C | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8148E790:
/* 8148E790 | 7F C3 F3 78 */	mr r3, r30
/* 8148E794 | 48 00 00 6C */	b .L_8148E800
.L_8148E798:
/* 8148E798 | 7C C5 30 50 */	subf r6, r5, r6
/* 8148E79C | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8148E7A0 | 54 C0 0F FE */	srwi r0, r6, 31
/* 8148E7A4 | 7F 83 E3 78 */	mr r3, r28
/* 8148E7A8 | 7C 00 32 14 */	add r0, r0, r6
/* 8148E7AC | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8148E7B0 | 7F E5 02 14 */	add r31, r5, r0
/* 8148E7B4 | 1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8148E7B8 | 7C 84 02 14 */	add r4, r4, r0
/* 8148E7BC | 4B FF FE 19 */	bl CDBRecordKeyCompare
/* 8148E7C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E7C4 | 40 80 00 1C */	bge .L_8148E7E0
/* 8148E7C8 | 7F 63 DB 78 */	mr r3, r27
/* 8148E7CC | 7F 84 E3 78 */	mr r4, r28
/* 8148E7D0 | 7F A5 EB 78 */	mr r5, r29
/* 8148E7D4 | 7F E6 FB 78 */	mr r6, r31
/* 8148E7D8 | 4B FF FF 3D */	bl CDBRecordKeyArrayDicInsertR
/* 8148E7DC | 48 00 00 24 */	b .L_8148E800
.L_8148E7E0:
/* 8148E7E0 | 40 81 00 1C */	ble .L_8148E7FC
/* 8148E7E4 | 7F 63 DB 78 */	mr r3, r27
/* 8148E7E8 | 7F 84 E3 78 */	mr r4, r28
/* 8148E7EC | 7F E5 FB 78 */	mr r5, r31
/* 8148E7F0 | 7F C6 F3 78 */	mr r6, r30
/* 8148E7F4 | 4B FF FF 21 */	bl CDBRecordKeyArrayDicInsertR
/* 8148E7F8 | 48 00 00 08 */	b .L_8148E800
.L_8148E7FC:
/* 8148E7FC | 7F E3 FB 78 */	mr r3, r31
.L_8148E800:
/* 8148E800 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148E804 | 48 16 AD 09 */	bl _restgpr_27
/* 8148E808 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148E80C | 7C 08 03 A6 */	mtlr r0
/* 8148E810 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148E814 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArrayDicInsertR

# .text:0x534 | 0x8148E818 | size: 0x2C8
.fn CDBRecordKeyArrayDicInsert, global
/* 8148E818 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148E81C | 7C 08 02 A6 */	mflr r0
/* 8148E820 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148E824 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148E828 | 7C 9F 23 78 */	mr r31, r4
/* 8148E82C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148E830 | 7C 7E 1B 78 */	mr r30, r3
/* 8148E834 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148E838 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 8148E83C | 2C 85 00 00 */	cmpwi cr1, r5, 0x0
/* 8148E840 | 40 86 00 34 */	bne cr1, .L_8148E874
/* 8148E844 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8148E848 | 7C 05 00 00 */	cmpw r5, r0
/* 8148E84C | 40 80 00 20 */	bge .L_8148E86C
/* 8148E850 | 1C 05 00 30 */	mulli r0, r5, 0x30
/* 8148E854 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148E858 | 7C 63 02 14 */	add r3, r3, r0
/* 8148E85C | 4B FF FD 29 */	bl CDBRecordKeyCopy
/* 8148E860 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8148E864 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148E868 | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_8148E86C:
/* 8148E86C | 7F E3 FB 78 */	mr r3, r31
/* 8148E870 | 48 00 02 54 */	b .L_8148EAC4
.L_8148E874:
/* 8148E874 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8148E878 | 7C 00 28 00 */	cmpw r0, r5
/* 8148E87C | 41 81 01 C4 */	bgt .L_8148EA40
/* 8148E880 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8148E884 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148E888 | 40 82 00 D8 */	bne .L_8148E960
/* 8148E88C | 41 86 00 18 */	beq cr1, .L_8148E8A4
/* 8148E890 | 38 05 FF FF */	subi r0, r5, 0x1
/* 8148E894 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148E898 | 1C 00 00 30 */	mulli r0, r0, 0x30
/* 8148E89C | 7F A3 02 14 */	add r29, r3, r0
/* 8148E8A0 | 48 00 00 08 */	b .L_8148E8A8
.L_8148E8A4:
/* 8148E8A4 | 83 A3 00 00 */	lwz r29, 0x0(r3)
.L_8148E8A8:
/* 8148E8A8 | 7F A3 EB 78 */	mr r3, r29
/* 8148E8AC | 7F E4 FB 78 */	mr r4, r31
/* 8148E8B0 | 4B FF FD 25 */	bl CDBRecordKeyCompare
/* 8148E8B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E8B8 | 40 80 00 0C */	bge .L_8148E8C4
/* 8148E8BC | 7F A3 EB 78 */	mr r3, r29
/* 8148E8C0 | 48 00 02 04 */	b .L_8148EAC4
.L_8148E8C4:
/* 8148E8C4 | 80 DE 00 08 */	lwz r6, 0x8(r30)
/* 8148E8C8 | 7F C3 F3 78 */	mr r3, r30
/* 8148E8CC | 7F E4 FB 78 */	mr r4, r31
/* 8148E8D0 | 38 A0 00 00 */	li r5, 0x0
/* 8148E8D4 | 38 C6 FF FF */	subi r6, r6, 0x1
/* 8148E8D8 | 90 DE 00 08 */	stw r6, 0x8(r30)
/* 8148E8DC | 38 C6 FF FF */	subi r6, r6, 0x1
/* 8148E8E0 | 4B FF FE 35 */	bl CDBRecordKeyArrayDicInsertR
/* 8148E8E4 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8148E8E8 | 7C 7D 1B 78 */	mr r29, r3
/* 8148E8EC | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148E8F0 | 7C 83 28 50 */	subf r4, r3, r5
/* 8148E8F4 | 7C 00 28 00 */	cmpw r0, r5
/* 8148E8F8 | 1C A4 00 30 */	mulli r5, r4, 0x30
/* 8148E8FC | 41 81 00 08 */	bgt .L_8148E904
/* 8148E900 | 38 A5 FF D0 */	subi r5, r5, 0x30
.L_8148E904:
/* 8148E904 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148E908 | 40 81 00 20 */	ble .L_8148E928
/* 8148E90C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148E910 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8148E914 | 1C 60 00 30 */	mulli r3, r0, 0x30
/* 8148E918 | 1C 1D 00 30 */	mulli r0, r29, 0x30
/* 8148E91C | 7C 64 1A 14 */	add r3, r4, r3
/* 8148E920 | 7C 84 02 14 */	add r4, r4, r0
/* 8148E924 | 48 16 F7 8D */	bl memmove
.L_8148E928:
/* 8148E928 | 1F BD 00 30 */	mulli r29, r29, 0x30
/* 8148E92C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148E930 | 7F E4 FB 78 */	mr r4, r31
/* 8148E934 | 7C 60 EA 14 */	add r3, r0, r29
/* 8148E938 | 4B FF FC 4D */	bl CDBRecordKeyCopy
/* 8148E93C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8148E940 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148E944 | 7C 03 00 00 */	cmpw r3, r0
/* 8148E948 | 40 80 00 0C */	bge .L_8148E954
/* 8148E94C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148E950 | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_8148E954:
/* 8148E954 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148E958 | 7C 60 EA 14 */	add r3, r0, r29
/* 8148E95C | 48 00 01 68 */	b .L_8148EAC4
.L_8148E960:
/* 8148E960 | 83 A3 00 00 */	lwz r29, 0x0(r3)
/* 8148E964 | 7F E3 FB 78 */	mr r3, r31
/* 8148E968 | 7F A4 EB 78 */	mr r4, r29
/* 8148E96C | 4B FF FC 69 */	bl CDBRecordKeyCompare
/* 8148E970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148E974 | 40 80 00 0C */	bge .L_8148E980
/* 8148E978 | 7F A3 EB 78 */	mr r3, r29
/* 8148E97C | 48 00 01 48 */	b .L_8148EAC4
.L_8148E980:
/* 8148E980 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8148E984 | 34 83 FF FF */	subic. r4, r3, 0x1
/* 8148E988 | 90 9E 00 08 */	stw r4, 0x8(r30)
/* 8148E98C | 41 80 00 20 */	blt .L_8148E9AC
/* 8148E990 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8148E994 | 34 03 FF FF */	subic. r0, r3, 0x1
/* 8148E998 | 41 80 00 14 */	blt .L_8148E9AC
/* 8148E99C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8148E9A0 | 1C A4 00 30 */	mulli r5, r4, 0x30
/* 8148E9A4 | 38 83 00 30 */	addi r4, r3, 0x30
/* 8148E9A8 | 48 16 F7 09 */	bl memmove
.L_8148E9AC:
/* 8148E9AC | 80 DE 00 08 */	lwz r6, 0x8(r30)
/* 8148E9B0 | 7F C3 F3 78 */	mr r3, r30
/* 8148E9B4 | 7F E4 FB 78 */	mr r4, r31
/* 8148E9B8 | 38 A0 00 00 */	li r5, 0x0
/* 8148E9BC | 38 C6 FF FF */	subi r6, r6, 0x1
/* 8148E9C0 | 4B FF FD 55 */	bl CDBRecordKeyArrayDicInsertR
/* 8148E9C4 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8148E9C8 | 7C 7D 1B 78 */	mr r29, r3
/* 8148E9CC | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148E9D0 | 7C 83 28 50 */	subf r4, r3, r5
/* 8148E9D4 | 7C 00 28 00 */	cmpw r0, r5
/* 8148E9D8 | 1C A4 00 30 */	mulli r5, r4, 0x30
/* 8148E9DC | 41 81 00 08 */	bgt .L_8148E9E4
/* 8148E9E0 | 38 A5 FF D0 */	subi r5, r5, 0x30
.L_8148E9E4:
/* 8148E9E4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148E9E8 | 40 81 00 20 */	ble .L_8148EA08
/* 8148E9EC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148E9F0 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8148E9F4 | 1C 60 00 30 */	mulli r3, r0, 0x30
/* 8148E9F8 | 1C 1D 00 30 */	mulli r0, r29, 0x30
/* 8148E9FC | 7C 64 1A 14 */	add r3, r4, r3
/* 8148EA00 | 7C 84 02 14 */	add r4, r4, r0
/* 8148EA04 | 48 16 F6 AD */	bl memmove
.L_8148EA08:
/* 8148EA08 | 1F BD 00 30 */	mulli r29, r29, 0x30
/* 8148EA0C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148EA10 | 7F E4 FB 78 */	mr r4, r31
/* 8148EA14 | 7C 60 EA 14 */	add r3, r0, r29
/* 8148EA18 | 4B FF FB 6D */	bl CDBRecordKeyCopy
/* 8148EA1C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8148EA20 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148EA24 | 7C 03 00 00 */	cmpw r3, r0
/* 8148EA28 | 40 80 00 0C */	bge .L_8148EA34
/* 8148EA2C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148EA30 | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_8148EA34:
/* 8148EA34 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148EA38 | 7C 60 EA 14 */	add r3, r0, r29
/* 8148EA3C | 48 00 00 88 */	b .L_8148EAC4
.L_8148EA40:
/* 8148EA40 | 38 C5 FF FF */	subi r6, r5, 0x1
/* 8148EA44 | 38 A0 00 00 */	li r5, 0x0
/* 8148EA48 | 4B FF FC CD */	bl CDBRecordKeyArrayDicInsertR
/* 8148EA4C | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8148EA50 | 7C 7D 1B 78 */	mr r29, r3
/* 8148EA54 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148EA58 | 7C 83 28 50 */	subf r4, r3, r5
/* 8148EA5C | 7C 00 28 00 */	cmpw r0, r5
/* 8148EA60 | 1C A4 00 30 */	mulli r5, r4, 0x30
/* 8148EA64 | 41 81 00 08 */	bgt .L_8148EA6C
/* 8148EA68 | 38 A5 FF D0 */	subi r5, r5, 0x30
.L_8148EA6C:
/* 8148EA6C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148EA70 | 40 81 00 20 */	ble .L_8148EA90
/* 8148EA74 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148EA78 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8148EA7C | 1C 60 00 30 */	mulli r3, r0, 0x30
/* 8148EA80 | 1C 1D 00 30 */	mulli r0, r29, 0x30
/* 8148EA84 | 7C 64 1A 14 */	add r3, r4, r3
/* 8148EA88 | 7C 84 02 14 */	add r4, r4, r0
/* 8148EA8C | 48 16 F6 25 */	bl memmove
.L_8148EA90:
/* 8148EA90 | 1F BD 00 30 */	mulli r29, r29, 0x30
/* 8148EA94 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148EA98 | 7F E4 FB 78 */	mr r4, r31
/* 8148EA9C | 7C 60 EA 14 */	add r3, r0, r29
/* 8148EAA0 | 4B FF FA E5 */	bl CDBRecordKeyCopy
/* 8148EAA4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8148EAA8 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8148EAAC | 7C 03 00 00 */	cmpw r3, r0
/* 8148EAB0 | 40 80 00 0C */	bge .L_8148EABC
/* 8148EAB4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148EAB8 | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_8148EABC:
/* 8148EABC | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8148EAC0 | 7C 60 EA 14 */	add r3, r0, r29
.L_8148EAC4:
/* 8148EAC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148EAC8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148EACC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148EAD0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148EAD4 | 7C 08 03 A6 */	mtlr r0
/* 8148EAD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148EADC | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArrayDicInsert

# .text:0x7FC | 0x8148EAE0 | size: 0x104
.fn CDBRecordKeyArrayDicFindR, global
/* 8148EAE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148EAE4 | 7C 08 02 A6 */	mflr r0
/* 8148EAE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148EAEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148EAF0 | 48 16 A9 D1 */	bl _savegpr_27
/* 8148EAF4 | 7C 05 30 00 */	cmpw r5, r6
/* 8148EAF8 | 7C 7B 1B 78 */	mr r27, r3
/* 8148EAFC | 7C 9C 23 78 */	mr r28, r4
/* 8148EB00 | 7C BD 2B 78 */	mr r29, r5
/* 8148EB04 | 7C DE 33 78 */	mr r30, r6
/* 8148EB08 | 41 82 00 10 */	beq .L_8148EB18
/* 8148EB0C | 38 06 FF FF */	subi r0, r6, 0x1
/* 8148EB10 | 7C 05 00 00 */	cmpw r5, r0
/* 8148EB14 | 40 82 00 50 */	bne .L_8148EB64
.L_8148EB18:
/* 8148EB18 | 1C 05 00 30 */	mulli r0, r5, 0x30
/* 8148EB1C | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8148EB20 | 7F 83 E3 78 */	mr r3, r28
/* 8148EB24 | 7C 84 02 14 */	add r4, r4, r0
/* 8148EB28 | 4B FF FA AD */	bl CDBRecordKeyCompare
/* 8148EB2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148EB30 | 40 82 00 0C */	bne .L_8148EB3C
/* 8148EB34 | 7F A3 EB 78 */	mr r3, r29
/* 8148EB38 | 48 00 00 94 */	b .L_8148EBCC
.L_8148EB3C:
/* 8148EB3C | 1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8148EB40 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8148EB44 | 7F 83 E3 78 */	mr r3, r28
/* 8148EB48 | 7C 84 02 14 */	add r4, r4, r0
/* 8148EB4C | 4B FF FA 89 */	bl CDBRecordKeyCompare
/* 8148EB50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148EB54 | 38 60 FF FF */	li r3, -0x1
/* 8148EB58 | 40 82 00 74 */	bne .L_8148EBCC
/* 8148EB5C | 7F C3 F3 78 */	mr r3, r30
/* 8148EB60 | 48 00 00 6C */	b .L_8148EBCC
.L_8148EB64:
/* 8148EB64 | 7C C5 30 50 */	subf r6, r5, r6
/* 8148EB68 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8148EB6C | 54 C0 0F FE */	srwi r0, r6, 31
/* 8148EB70 | 7F 83 E3 78 */	mr r3, r28
/* 8148EB74 | 7C 00 32 14 */	add r0, r0, r6
/* 8148EB78 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8148EB7C | 7F E5 02 14 */	add r31, r5, r0
/* 8148EB80 | 1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8148EB84 | 7C 84 02 14 */	add r4, r4, r0
/* 8148EB88 | 4B FF FA 4D */	bl CDBRecordKeyCompare
/* 8148EB8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148EB90 | 40 80 00 1C */	bge .L_8148EBAC
/* 8148EB94 | 7F 63 DB 78 */	mr r3, r27
/* 8148EB98 | 7F 84 E3 78 */	mr r4, r28
/* 8148EB9C | 7F A5 EB 78 */	mr r5, r29
/* 8148EBA0 | 7F E6 FB 78 */	mr r6, r31
/* 8148EBA4 | 4B FF FF 3D */	bl CDBRecordKeyArrayDicFindR
/* 8148EBA8 | 48 00 00 24 */	b .L_8148EBCC
.L_8148EBAC:
/* 8148EBAC | 40 81 00 1C */	ble .L_8148EBC8
/* 8148EBB0 | 7F 63 DB 78 */	mr r3, r27
/* 8148EBB4 | 7F 84 E3 78 */	mr r4, r28
/* 8148EBB8 | 7F E5 FB 78 */	mr r5, r31
/* 8148EBBC | 7F C6 F3 78 */	mr r6, r30
/* 8148EBC0 | 4B FF FF 21 */	bl CDBRecordKeyArrayDicFindR
/* 8148EBC4 | 48 00 00 08 */	b .L_8148EBCC
.L_8148EBC8:
/* 8148EBC8 | 7F E3 FB 78 */	mr r3, r31
.L_8148EBCC:
/* 8148EBCC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148EBD0 | 48 16 A9 3D */	bl _restgpr_27
/* 8148EBD4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148EBD8 | 7C 08 03 A6 */	mtlr r0
/* 8148EBDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148EBE0 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArrayDicFindR

# .text:0x900 | 0x8148EBE4 | size: 0x78
.fn CDBRecordKeyArrayDicFind, global
/* 8148EBE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148EBE8 | 7C 08 02 A6 */	mflr r0
/* 8148EBEC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148EBF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148EBF4 | 7C 7F 1B 78 */	mr r31, r3
/* 8148EBF8 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 8148EBFC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148EC00 | 40 82 00 14 */	bne .L_8148EC14
/* 8148EC04 | 1C 05 00 30 */	mulli r0, r5, 0x30
/* 8148EC08 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148EC0C | 7C 63 02 14 */	add r3, r3, r0
/* 8148EC10 | 48 00 00 38 */	b .L_8148EC48
.L_8148EC14:
/* 8148EC14 | 38 C5 FF FF */	subi r6, r5, 0x1
/* 8148EC18 | 38 A0 00 00 */	li r5, 0x0
/* 8148EC1C | 4B FF FE C5 */	bl CDBRecordKeyArrayDicFindR
/* 8148EC20 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8148EC24 | 41 82 00 14 */	beq .L_8148EC38
/* 8148EC28 | 1C 03 00 30 */	mulli r0, r3, 0x30
/* 8148EC2C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8148EC30 | 7C 63 02 14 */	add r3, r3, r0
/* 8148EC34 | 48 00 00 14 */	b .L_8148EC48
.L_8148EC38:
/* 8148EC38 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8148EC3C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8148EC40 | 1C 00 00 30 */	mulli r0, r0, 0x30
/* 8148EC44 | 7C 63 02 14 */	add r3, r3, r0
.L_8148EC48:
/* 8148EC48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148EC4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148EC50 | 7C 08 03 A6 */	mtlr r0
/* 8148EC54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148EC58 | 4E 80 00 20 */	blr
.endfn CDBRecordKeyArrayDicFind

# 0x8166C5A0..0x8166C5C8 | size: 0x28
.data
.balign 8

# .data:0x0 | 0x8166C5A0 | size: 0x14
.obj lbl_8166C5A0, global
	.string "%010u_%s_%s_%03d.%s"
.endobj lbl_8166C5A0

# .data:0x14 | 0x8166C5B4 | size: 0x14
.obj lbl_8166C5B4, global
	.4byte 0x25303130
	.4byte 0x755F2573
	.4byte 0x5F253033
	.4byte 0x642E2573
	.4byte 0x00000000
.endobj lbl_8166C5B4

# 0x81697A30..0x81697A48 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697A30 | size: 0x8
.obj lbl_81697A30, global
	.4byte 0x25303364
	.4byte 0x00000000
.endobj lbl_81697A30

# .sdata:0x8 | 0x81697A38 | size: 0x8
.obj lbl_81697A38, global
	.4byte 0x25303130
	.4byte 0x75000000
.endobj lbl_81697A38

# .sdata:0x10 | 0x81697A40 | size: 0x4
.obj lbl_81697A40, global
	.4byte 0x25580000
.endobj lbl_81697A40

# .sdata:0x14 | 0x81697A44 | size: 0x4
.obj lbl_81697A44, global
	.4byte 0x25640000
.endobj lbl_81697A44
