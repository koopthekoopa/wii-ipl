.include "macros.inc"
.file "CDBSystem.c"

# 0x810C8B00..0x810C8B60 | size: 0x60
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C8B00 | size: 0x20
.obj lbl_810C8B00, global
	.skip 0x20
.endobj lbl_810C8B00

# .bss:0x20 | 0x810C8B20 | size: 0x40
.obj lbl_810C8B20, global
	.skip 0x40
.endobj lbl_810C8B20

# 0x8148F270..0x81490644 | size: 0x13D4
.text
.balign 4

# .text:0x0 | 0x8148F270 | size: 0xC
.fn MutexInitialized, global
/* 8148F270 | 38 00 00 01 */	li r0, 0x1
/* 8148F274 | 90 0D AD 38 */	stw r0, lbl_81698D78@sda21(r0)
/* 8148F278 | 4E 80 00 20 */	blr
.endfn MutexInitialized

# .text:0xC | 0x8148F27C | size: 0xC
.fn CDBLock, global
/* 8148F27C | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F280 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F284 | 48 0A 29 84 */	b fn_81531C08
.endfn CDBLock

# .text:0x18 | 0x8148F288 | size: 0xC
.fn CDBUnlock, global
/* 8148F288 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F28C | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F290 | 48 0A 2A 54 */	b fn_81531CE4
.endfn CDBUnlock

# .text:0x24 | 0x8148F294 | size: 0xBC
.fn CDBDatabaseInstancePoolInit, global
/* 8148F294 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148F298 | 7C 08 02 A6 */	mflr r0
/* 8148F29C | 38 A0 00 00 */	li r5, 0x0
/* 8148F2A0 | 3C 83 00 02 */	addis r4, r3, 0x2
/* 8148F2A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148F2A8 | 38 04 E2 00 */	subi r0, r4, 0x1e00
/* 8148F2AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148F2B0 | 54 1F 06 BF */	clrlwi. r31, r0, 26
/* 8148F2B4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148F2B8 | 7C 7E 1B 78 */	mr r30, r3
/* 8148F2BC | 90 6D AD 54 */	stw r3, lbl_81698D94@sda21(r0)
/* 8148F2C0 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 8148F2C4 | 80 6D AD 54 */	lwz r3, lbl_81698D94@sda21(r0)
/* 8148F2C8 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 8148F2CC | 90 A3 C0 18 */	stw r5, -0x3fe8(r3)
/* 8148F2D0 | 41 82 00 38 */	beq .L_8148F308
/* 8148F2D4 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F2D8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8148F2DC | 41 80 00 2C */	blt .L_8148F308
/* 8148F2E0 | 3C 60 81 67 */	lis r3, lbl_8166C5C8@ha
/* 8148F2E4 | 38 63 C5 C8 */	addi r3, r3, lbl_8166C5C8@l
/* 8148F2E8 | 4C C6 31 82 */	crclr cr1eq
/* 8148F2EC | 48 09 F3 B5 */	bl OSReport
/* 8148F2F0 | 3C 60 81 67 */	lis r3, lbl_8166C5DC@ha
/* 8148F2F4 | 7F E6 FB 78 */	mr r6, r31
/* 8148F2F8 | 38 63 C5 DC */	addi r3, r3, lbl_8166C5DC@l
/* 8148F2FC | 38 A0 00 00 */	li r5, 0x0
/* 8148F300 | 4C C6 31 82 */	crclr cr1eq
/* 8148F304 | 48 09 F3 9D */	bl OSReport
.L_8148F308:
/* 8148F308 | 3C 7E 00 02 */	addis r3, r30, 0x2
/* 8148F30C | 38 63 E2 00 */	subi r3, r3, 0x1e00
/* 8148F310 | 48 00 2F 69 */	bl CDBCryptBufSysInit
/* 8148F314 | 80 0D AD 38 */	lwz r0, lbl_81698D78@sda21(r0)
/* 8148F318 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148F31C | 40 82 00 10 */	bne .L_8148F32C
/* 8148F320 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F324 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F328 | 48 0A 28 A9 */	bl fn_81531BD0
.L_8148F32C:
/* 8148F32C | 3C 7E 00 02 */	addis r3, r30, 0x2
/* 8148F330 | 38 03 96 60 */	subi r0, r3, 0x69a0
/* 8148F334 | 90 0D AD 4C */	stw r0, lbl_81698D8C@sda21(r0)
/* 8148F338 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148F33C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148F340 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148F344 | 7C 08 03 A6 */	mtlr r0
/* 8148F348 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148F34C | 4E 80 00 20 */	blr
.endfn CDBDatabaseInstancePoolInit

# .text:0xE0 | 0x8148F350 | size: 0x80
.fn CDBRecordPoolInit, global
/* 8148F350 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148F354 | 7C 08 02 A6 */	mflr r0
/* 8148F358 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8148F35C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148F360 | 38 03 80 30 */	subi r0, r3, 0x7fd0
/* 8148F364 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148F368 | 3B E0 00 00 */	li r31, 0x0
/* 8148F36C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148F370 | 3B C0 00 00 */	li r30, 0x0
/* 8148F374 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148F378 | 3B A0 00 00 */	li r29, 0x0
/* 8148F37C | 90 0D AD 50 */	stw r0, lbl_81698D90@sda21(r0)
.L_8148F380:
/* 8148F380 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F384 | 7C 60 F2 14 */	add r3, r0, r30
/* 8148F388 | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 8148F38C | 80 0D AD 38 */	lwz r0, lbl_81698D78@sda21(r0)
/* 8148F390 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148F394 | 40 82 00 10 */	bne .L_8148F3A4
/* 8148F398 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F39C | 7C 60 F2 14 */	add r3, r0, r30
/* 8148F3A0 | 48 0A 28 31 */	bl fn_81531BD0
.L_8148F3A4:
/* 8148F3A4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8148F3A8 | 3B DE 04 70 */	addi r30, r30, 0x470
/* 8148F3AC | 2C 1D 00 05 */	cmpwi r29, 0x5
/* 8148F3B0 | 41 80 FF D0 */	blt .L_8148F380
/* 8148F3B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148F3B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148F3BC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148F3C0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148F3C4 | 7C 08 03 A6 */	mtlr r0
/* 8148F3C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148F3CC | 4E 80 00 20 */	blr
.endfn CDBRecordPoolInit

# .text:0x160 | 0x8148F3D0 | size: 0x2A4
.fn CDBDatabaseAllocate, global
/* 8148F3D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148F3D4 | 7C 08 02 A6 */	mflr r0
/* 8148F3D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148F3DC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148F3E0 | 3F E0 81 67 */	lis r31, lbl_8166C5C8@ha
/* 8148F3E4 | 3B FF C5 C8 */	addi r31, r31, lbl_8166C5C8@l
/* 8148F3E8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148F3EC | 7C 9E 23 78 */	mr r30, r4
/* 8148F3F0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148F3F4 | 7C 7D 1B 78 */	mr r29, r3
/* 8148F3F8 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F3FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148F400 | 40 82 00 18 */	bne .L_8148F418
/* 8148F404 | 38 7F 00 50 */	addi r3, r31, 0x50
/* 8148F408 | 38 BF 00 5C */	addi r5, r31, 0x5c
/* 8148F40C | 38 80 01 85 */	li r4, 0x185
/* 8148F410 | 4C C6 31 82 */	crclr cr1eq
/* 8148F414 | 48 09 F3 1D */	bl OSPanic
.L_8148F418:
/* 8148F418 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F41C | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F420 | 48 0A 27 E9 */	bl fn_81531C08
/* 8148F424 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 8148F428 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8148F42C | 41 82 00 DC */	beq .L_8148F508
/* 8148F430 | 38 00 00 02 */	li r0, 0x2
/* 8148F434 | 80 6D AD 54 */	lwz r3, lbl_81698D94@sda21(r0)
/* 8148F438 | 7C 09 03 A6 */	mtctr r0
.L_8148F43C:
/* 8148F43C | 7C 04 18 40 */	cmplw r4, r3
/* 8148F440 | 40 82 00 84 */	bne .L_8148F4C4
/* 8148F444 | 3C 64 00 01 */	addis r3, r4, 0x1
/* 8148F448 | 80 03 C0 10 */	lwz r0, -0x3ff0(r3)
/* 8148F44C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148F450 | 40 82 00 3C */	bne .L_8148F48C
/* 8148F454 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F458 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148F45C | 41 80 00 1C */	blt .L_8148F478
/* 8148F460 | 38 7F 00 84 */	addi r3, r31, 0x84
/* 8148F464 | 4C C6 31 82 */	crclr cr1eq
/* 8148F468 | 48 09 F2 39 */	bl OSReport
/* 8148F46C | 38 7F 00 9C */	addi r3, r31, 0x9c
/* 8148F470 | 4C C6 31 82 */	crclr cr1eq
/* 8148F474 | 48 09 F2 2D */	bl OSReport
.L_8148F478:
/* 8148F478 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F47C | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F480 | 48 0A 28 65 */	bl fn_81531CE4
/* 8148F484 | 38 60 00 24 */	li r3, 0x24
/* 8148F488 | 48 00 01 D0 */	b .L_8148F658
.L_8148F48C:
/* 8148F48C | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F490 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F494 | 41 80 00 1C */	blt .L_8148F4B0
/* 8148F498 | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148F49C | 4C C6 31 82 */	crclr cr1eq
/* 8148F4A0 | 48 09 F2 01 */	bl OSReport
/* 8148F4A4 | 38 7F 00 D0 */	addi r3, r31, 0xd0
/* 8148F4A8 | 4C C6 31 82 */	crclr cr1eq
/* 8148F4AC | 48 09 F1 F5 */	bl OSReport
.L_8148F4B0:
/* 8148F4B0 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F4B4 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F4B8 | 48 0A 28 2D */	bl fn_81531CE4
/* 8148F4BC | 38 60 00 1C */	li r3, 0x1c
/* 8148F4C0 | 48 00 01 98 */	b .L_8148F658
.L_8148F4C4:
/* 8148F4C4 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 8148F4C8 | 38 63 C0 18 */	subi r3, r3, 0x3fe8
/* 8148F4CC | 42 00 FF 70 */	bdnz .L_8148F43C
/* 8148F4D0 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F4D4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F4D8 | 41 80 00 1C */	blt .L_8148F4F4
/* 8148F4DC | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148F4E0 | 4C C6 31 82 */	crclr cr1eq
/* 8148F4E4 | 48 09 F1 BD */	bl OSReport
/* 8148F4E8 | 38 7F 00 F8 */	addi r3, r31, 0xf8
/* 8148F4EC | 4C C6 31 82 */	crclr cr1eq
/* 8148F4F0 | 48 09 F1 B1 */	bl OSReport
.L_8148F4F4:
/* 8148F4F4 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F4F8 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F4FC | 48 0A 27 E9 */	bl fn_81531CE4
/* 8148F500 | 38 60 00 18 */	li r3, 0x18
/* 8148F504 | 48 00 01 54 */	b .L_8148F658
.L_8148F508:
/* 8148F508 | 80 CD AD 54 */	lwz r6, lbl_81698D94@sda21(r0)
/* 8148F50C | 38 00 00 02 */	li r0, 0x2
/* 8148F510 | 57 C5 07 BC */	rlwinm r5, r30, 0, 30, 30
/* 8148F514 | 7C C4 33 78 */	mr r4, r6
/* 8148F518 | 7C 09 03 A6 */	mtctr r0
.L_8148F51C:
/* 8148F51C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8148F520 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148F524 | 41 82 00 8C */	beq .L_8148F5B0
/* 8148F528 | 3C 64 00 01 */	addis r3, r4, 0x1
/* 8148F52C | 80 03 C0 10 */	lwz r0, -0x3ff0(r3)
/* 8148F530 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8148F534 | 41 82 00 3C */	beq .L_8148F570
/* 8148F538 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F53C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F540 | 41 80 00 1C */	blt .L_8148F55C
/* 8148F544 | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148F548 | 4C C6 31 82 */	crclr cr1eq
/* 8148F54C | 48 09 F1 55 */	bl OSReport
/* 8148F550 | 38 7F 01 20 */	addi r3, r31, 0x120
/* 8148F554 | 4C C6 31 82 */	crclr cr1eq
/* 8148F558 | 48 09 F1 49 */	bl OSReport
.L_8148F55C:
/* 8148F55C | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F560 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F564 | 48 0A 27 81 */	bl fn_81531CE4
/* 8148F568 | 38 60 00 19 */	li r3, 0x19
/* 8148F56C | 48 00 00 EC */	b .L_8148F658
.L_8148F570:
/* 8148F570 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8148F574 | 41 82 00 3C */	beq .L_8148F5B0
/* 8148F578 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F57C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F580 | 41 80 00 1C */	blt .L_8148F59C
/* 8148F584 | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148F588 | 4C C6 31 82 */	crclr cr1eq
/* 8148F58C | 48 09 F1 15 */	bl OSReport
/* 8148F590 | 38 7F 01 88 */	addi r3, r31, 0x188
/* 8148F594 | 4C C6 31 82 */	crclr cr1eq
/* 8148F598 | 48 09 F1 09 */	bl OSReport
.L_8148F59C:
/* 8148F59C | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F5A0 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F5A4 | 48 0A 27 41 */	bl fn_81531CE4
/* 8148F5A8 | 38 60 00 19 */	li r3, 0x19
/* 8148F5AC | 48 00 00 AC */	b .L_8148F658
.L_8148F5B0:
/* 8148F5B0 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 8148F5B4 | 38 84 C0 18 */	subi r4, r4, 0x3fe8
/* 8148F5B8 | 42 00 FF 64 */	bdnz .L_8148F51C
/* 8148F5BC | 38 00 00 02 */	li r0, 0x2
/* 8148F5C0 | 7C C3 33 78 */	mr r3, r6
/* 8148F5C4 | 38 E0 00 00 */	li r7, 0x0
/* 8148F5C8 | 7C 09 03 A6 */	mtctr r0
.L_8148F5CC:
/* 8148F5CC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8148F5D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148F5D4 | 40 82 00 40 */	bne .L_8148F614
/* 8148F5D8 | 3C 60 00 01 */	lis r3, 0x1
/* 8148F5DC | 7F C4 F3 78 */	mr r4, r30
/* 8148F5E0 | 38 03 C0 18 */	subi r0, r3, 0x3fe8
/* 8148F5E4 | 7F A5 EB 78 */	mr r5, r29
/* 8148F5E8 | 7F C7 01 D6 */	mullw r30, r7, r0
/* 8148F5EC | 7C 66 F2 14 */	add r3, r6, r30
/* 8148F5F0 | 4B FF A2 01 */	bl CDBDatabaseInstanceInit
/* 8148F5F4 | 80 0D AD 54 */	lwz r0, lbl_81698D94@sda21(r0)
/* 8148F5F8 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F5FC | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F600 | 7C 00 F2 14 */	add r0, r0, r30
/* 8148F604 | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8148F608 | 48 0A 26 DD */	bl fn_81531CE4
/* 8148F60C | 38 60 00 00 */	li r3, 0x0
/* 8148F610 | 48 00 00 48 */	b .L_8148F658
.L_8148F614:
/* 8148F614 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 8148F618 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8148F61C | 38 63 C0 18 */	subi r3, r3, 0x3fe8
/* 8148F620 | 42 00 FF AC */	bdnz .L_8148F5CC
/* 8148F624 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F628 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F62C | 41 80 00 1C */	blt .L_8148F648
/* 8148F630 | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148F634 | 4C C6 31 82 */	crclr cr1eq
/* 8148F638 | 48 09 F0 69 */	bl OSReport
/* 8148F63C | 38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 8148F640 | 4C C6 31 82 */	crclr cr1eq
/* 8148F644 | 48 09 F0 5D */	bl OSReport
.L_8148F648:
/* 8148F648 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F64C | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F650 | 48 0A 26 95 */	bl fn_81531CE4
/* 8148F654 | 38 60 00 16 */	li r3, 0x16
.L_8148F658:
/* 8148F658 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148F65C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148F660 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148F664 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148F668 | 7C 08 03 A6 */	mtlr r0
/* 8148F66C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148F670 | 4E 80 00 20 */	blr
.endfn CDBDatabaseAllocate

# .text:0x404 | 0x8148F674 | size: 0x108
.fn CDBDatabaseFree, global
/* 8148F674 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8148F678 | 7C 08 02 A6 */	mflr r0
/* 8148F67C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8148F680 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8148F684 | 48 16 9E 35 */	bl _savegpr_25
/* 8148F688 | 83 63 00 08 */	lwz r27, 0x8(r3)
/* 8148F68C | 7C 79 1B 78 */	mr r25, r3
/* 8148F690 | 3B 40 00 00 */	li r26, 0x0
/* 8148F694 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8148F698 | 40 82 00 0C */	bne .L_8148F6A4
/* 8148F69C | 38 60 00 1B */	li r3, 0x1b
/* 8148F6A0 | 48 00 00 C4 */	b .L_8148F764
.L_8148F6A4:
/* 8148F6A4 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F6A8 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F6AC | 48 0A 25 5D */	bl fn_81531C08
/* 8148F6B0 | 3B 80 00 00 */	li r28, 0x0
/* 8148F6B4 | 3B A0 00 00 */	li r29, 0x0
/* 8148F6B8 | 3F C0 81 67 */	lis r30, lbl_8166C688@ha
/* 8148F6BC | 3F E0 81 67 */	lis r31, lbl_8166C7D8@ha
.L_8148F6C0:
/* 8148F6C0 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F6C4 | 7C 60 EA 14 */	add r3, r0, r29
/* 8148F6C8 | 4B FF C9 09 */	bl CDBRecordInstanceIsUsed
/* 8148F6CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148F6D0 | 41 82 00 4C */	beq .L_8148F71C
/* 8148F6D4 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F6D8 | 7C 60 EA 14 */	add r3, r0, r29
/* 8148F6DC | 80 03 04 68 */	lwz r0, 0x468(r3)
/* 8148F6E0 | 7C 00 C8 40 */	cmplw r0, r25
/* 8148F6E4 | 40 82 00 38 */	bne .L_8148F71C
/* 8148F6E8 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F6EC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F6F0 | 41 80 00 28 */	blt .L_8148F718
/* 8148F6F4 | 38 7E C6 88 */	addi r3, r30, lbl_8166C688@l
/* 8148F6F8 | 4C C6 31 82 */	crclr cr1eq
/* 8148F6FC | 48 09 EF A5 */	bl OSReport
/* 8148F700 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F704 | 38 7F C7 D8 */	addi r3, r31, lbl_8166C7D8@l
/* 8148F708 | 7C 80 EA 14 */	add r4, r0, r29
/* 8148F70C | 4C C6 31 82 */	crclr cr1eq
/* 8148F710 | 38 84 04 38 */	addi r4, r4, 0x438
/* 8148F714 | 48 09 EF 8D */	bl OSReport
.L_8148F718:
/* 8148F718 | 3B 40 00 01 */	li r26, 0x1
.L_8148F71C:
/* 8148F71C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8148F720 | 3B BD 04 70 */	addi r29, r29, 0x470
/* 8148F724 | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 8148F728 | 41 80 FF 98 */	blt .L_8148F6C0
/* 8148F72C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8148F730 | 41 82 00 18 */	beq .L_8148F748
/* 8148F734 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F738 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F73C | 48 0A 25 A9 */	bl fn_81531CE4
/* 8148F740 | 38 60 00 21 */	li r3, 0x21
/* 8148F744 | 48 00 00 20 */	b .L_8148F764
.L_8148F748:
/* 8148F748 | 38 00 00 00 */	li r0, 0x0
/* 8148F74C | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F750 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 8148F754 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F758 | 90 19 00 08 */	stw r0, 0x8(r25)
/* 8148F75C | 48 0A 25 89 */	bl fn_81531CE4
/* 8148F760 | 38 60 00 00 */	li r3, 0x0
.L_8148F764:
/* 8148F764 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8148F768 | 48 16 9D 9D */	bl _restgpr_25
/* 8148F76C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8148F770 | 7C 08 03 A6 */	mtlr r0
/* 8148F774 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8148F778 | 4E 80 00 20 */	blr
.endfn CDBDatabaseFree

# .text:0x50C | 0x8148F77C | size: 0xB8
.fn CDBDatabaseCheckOpenDatabase, global
/* 8148F77C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148F780 | 7C 08 02 A6 */	mflr r0
/* 8148F784 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148F788 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148F78C | 48 16 9D 35 */	bl _savegpr_27
/* 8148F790 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F794 | 3B 60 00 00 */	li r27, 0x0
/* 8148F798 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F79C | 48 0A 24 6D */	bl fn_81531C08
/* 8148F7A0 | 3B 80 00 00 */	li r28, 0x0
/* 8148F7A4 | 3B A0 00 00 */	li r29, 0x0
/* 8148F7A8 | 3F C0 81 67 */	lis r30, lbl_8166C688@ha
/* 8148F7AC | 3F E0 81 67 */	lis r31, lbl_8166C804@ha
.L_8148F7B0:
/* 8148F7B0 | 80 0D AD 54 */	lwz r0, lbl_81698D94@sda21(r0)
/* 8148F7B4 | 7C 60 EA 14 */	add r3, r0, r29
/* 8148F7B8 | 4B FF A0 51 */	bl CDBDatabaseInstanceIsUsed
/* 8148F7BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148F7C0 | 41 82 00 2C */	beq .L_8148F7EC
/* 8148F7C4 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F7C8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F7CC | 41 80 00 1C */	blt .L_8148F7E8
/* 8148F7D0 | 38 7E C6 88 */	addi r3, r30, lbl_8166C688@l
/* 8148F7D4 | 4C C6 31 82 */	crclr cr1eq
/* 8148F7D8 | 48 09 EE C9 */	bl OSReport
/* 8148F7DC | 38 7F C8 04 */	addi r3, r31, lbl_8166C804@l
/* 8148F7E0 | 4C C6 31 82 */	crclr cr1eq
/* 8148F7E4 | 48 09 EE BD */	bl OSReport
.L_8148F7E8:
/* 8148F7E8 | 3B 60 00 01 */	li r27, 0x1
.L_8148F7EC:
/* 8148F7EC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8148F7F0 | 3F BD 00 01 */	addis r29, r29, 0x1
/* 8148F7F4 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 8148F7F8 | 3B BD C0 18 */	subi r29, r29, 0x3fe8
/* 8148F7FC | 41 80 FF B4 */	blt .L_8148F7B0
/* 8148F800 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F804 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F808 | 48 0A 24 DD */	bl fn_81531CE4
/* 8148F80C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8148F810 | 38 60 00 00 */	li r3, 0x0
/* 8148F814 | 41 82 00 08 */	beq .L_8148F81C
/* 8148F818 | 38 60 00 22 */	li r3, 0x22
.L_8148F81C:
/* 8148F81C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148F820 | 48 16 9C ED */	bl _restgpr_27
/* 8148F824 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148F828 | 7C 08 03 A6 */	mtlr r0
/* 8148F82C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148F830 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCheckOpenDatabase

# .text:0x5C4 | 0x8148F834 | size: 0xC0
.fn CDBDatabaseCheckOpenRecord, global
/* 8148F834 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148F838 | 7C 08 02 A6 */	mflr r0
/* 8148F83C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148F840 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148F844 | 48 16 9C 7D */	bl _savegpr_27
/* 8148F848 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F84C | 3B 60 00 00 */	li r27, 0x0
/* 8148F850 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F854 | 48 0A 23 B5 */	bl fn_81531C08
/* 8148F858 | 3B 80 00 00 */	li r28, 0x0
/* 8148F85C | 3B A0 00 00 */	li r29, 0x0
/* 8148F860 | 3F C0 81 67 */	lis r30, lbl_8166C688@ha
/* 8148F864 | 3F E0 81 67 */	lis r31, lbl_8166C818@ha
.L_8148F868:
/* 8148F868 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F86C | 7C 60 EA 14 */	add r3, r0, r29
/* 8148F870 | 4B FF C7 61 */	bl CDBRecordInstanceIsUsed
/* 8148F874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148F878 | 41 82 00 38 */	beq .L_8148F8B0
/* 8148F87C | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F880 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F884 | 41 80 00 28 */	blt .L_8148F8AC
/* 8148F888 | 38 7E C6 88 */	addi r3, r30, lbl_8166C688@l
/* 8148F88C | 4C C6 31 82 */	crclr cr1eq
/* 8148F890 | 48 09 EE 11 */	bl OSReport
/* 8148F894 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F898 | 38 7F C8 18 */	addi r3, r31, lbl_8166C818@l
/* 8148F89C | 7C 80 EA 14 */	add r4, r0, r29
/* 8148F8A0 | 4C C6 31 82 */	crclr cr1eq
/* 8148F8A4 | 38 84 04 38 */	addi r4, r4, 0x438
/* 8148F8A8 | 48 09 ED F9 */	bl OSReport
.L_8148F8AC:
/* 8148F8AC | 3B 60 00 01 */	li r27, 0x1
.L_8148F8B0:
/* 8148F8B0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8148F8B4 | 3B BD 04 70 */	addi r29, r29, 0x470
/* 8148F8B8 | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 8148F8BC | 41 80 FF AC */	blt .L_8148F868
/* 8148F8C0 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F8C4 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F8C8 | 48 0A 24 1D */	bl fn_81531CE4
/* 8148F8CC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8148F8D0 | 38 60 00 00 */	li r3, 0x0
/* 8148F8D4 | 41 82 00 08 */	beq .L_8148F8DC
/* 8148F8D8 | 38 60 00 21 */	li r3, 0x21
.L_8148F8DC:
/* 8148F8DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148F8E0 | 48 16 9C 2D */	bl _restgpr_27
/* 8148F8E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148F8E8 | 7C 08 03 A6 */	mtlr r0
/* 8148F8EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148F8F0 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCheckOpenRecord

# .text:0x684 | 0x8148F8F4 | size: 0x260
.fn CDBRecordAllocate, global
/* 8148F8F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148F8F8 | 7C 08 02 A6 */	mflr r0
/* 8148F8FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148F900 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148F904 | 48 16 9B B9 */	bl _savegpr_26
/* 8148F908 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8148F90C | 3F E0 81 67 */	lis r31, lbl_8166C5C8@ha
/* 8148F910 | 3C A0 81 0D */	lis r5, lbl_810C8B00@ha
/* 8148F914 | 7C 7D 1B 78 */	mr r29, r3
/* 8148F918 | 83 46 00 08 */	lwz r26, 0x8(r6)
/* 8148F91C | 7C 9E 23 78 */	mr r30, r4
/* 8148F920 | 3B FF C5 C8 */	addi r31, r31, lbl_8166C5C8@l
/* 8148F924 | 38 65 8B 00 */	addi r3, r5, lbl_810C8B00@l
/* 8148F928 | 48 0A 22 E1 */	bl fn_81531C08
/* 8148F92C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8148F930 | 40 82 00 3C */	bne .L_8148F96C
/* 8148F934 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F938 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F93C | 41 80 00 1C */	blt .L_8148F958
/* 8148F940 | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148F944 | 4C C6 31 82 */	crclr cr1eq
/* 8148F948 | 48 09 ED 59 */	bl OSReport
/* 8148F94C | 38 7F 02 84 */	addi r3, r31, 0x284
/* 8148F950 | 4C C6 31 82 */	crclr cr1eq
/* 8148F954 | 48 09 ED 4D */	bl OSReport
.L_8148F958:
/* 8148F958 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F95C | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F960 | 48 0A 23 85 */	bl fn_81531CE4
/* 8148F964 | 38 60 00 1B */	li r3, 0x1b
/* 8148F968 | 48 00 01 D4 */	b .L_8148FB3C
.L_8148F96C:
/* 8148F96C | 3C 7A 00 01 */	addis r3, r26, 0x1
/* 8148F970 | 80 03 C0 10 */	lwz r0, -0x3ff0(r3)
/* 8148F974 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8148F978 | 40 82 00 44 */	bne .L_8148F9BC
/* 8148F97C | 57 C0 07 BD */	rlwinm. r0, r30, 0, 30, 30
/* 8148F980 | 41 82 00 3C */	beq .L_8148F9BC
/* 8148F984 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148F988 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148F98C | 41 80 00 1C */	blt .L_8148F9A8
/* 8148F990 | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148F994 | 4C C6 31 82 */	crclr cr1eq
/* 8148F998 | 48 09 ED 09 */	bl OSReport
/* 8148F99C | 38 7F 02 B0 */	addi r3, r31, 0x2b0
/* 8148F9A0 | 4C C6 31 82 */	crclr cr1eq
/* 8148F9A4 | 48 09 EC FD */	bl OSReport
.L_8148F9A8:
/* 8148F9A8 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148F9AC | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148F9B0 | 48 0A 23 35 */	bl fn_81531CE4
/* 8148F9B4 | 38 60 00 1A */	li r3, 0x1a
/* 8148F9B8 | 48 00 01 84 */	b .L_8148FB3C
.L_8148F9BC:
/* 8148F9BC | 57 DB 07 BC */	rlwinm r27, r30, 0, 30, 30
/* 8148F9C0 | 3B 40 00 00 */	li r26, 0x0
/* 8148F9C4 | 3B 80 00 00 */	li r28, 0x0
.L_8148F9C8:
/* 8148F9C8 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F9CC | 7C 60 E2 14 */	add r3, r0, r28
/* 8148F9D0 | 4B FF C6 01 */	bl CDBRecordInstanceIsUsed
/* 8148F9D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148F9D8 | 41 82 00 BC */	beq .L_8148FA94
/* 8148F9DC | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F9E0 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8148F9E4 | 7C 80 E2 14 */	add r4, r0, r28
/* 8148F9E8 | 38 84 04 38 */	addi r4, r4, 0x438
/* 8148F9EC | 4B FF EB E9 */	bl CDBRecordKeyCompare
/* 8148F9F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148F9F4 | 40 82 00 A0 */	bne .L_8148FA94
/* 8148F9F8 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148F9FC | 80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8148FA00 | 7C 80 E2 14 */	add r4, r0, r28
/* 8148FA04 | 80 04 04 60 */	lwz r0, 0x460(r4)
/* 8148FA08 | 7C 03 00 00 */	cmpw r3, r0
/* 8148FA0C | 40 82 00 88 */	bne .L_8148FA94
/* 8148FA10 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8148FA14 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8148FA18 | 41 82 00 3C */	beq .L_8148FA54
/* 8148FA1C | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FA20 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148FA24 | 41 80 00 1C */	blt .L_8148FA40
/* 8148FA28 | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148FA2C | 4C C6 31 82 */	crclr cr1eq
/* 8148FA30 | 48 09 EC 71 */	bl OSReport
/* 8148FA34 | 38 7F 02 F0 */	addi r3, r31, 0x2f0
/* 8148FA38 | 4C C6 31 82 */	crclr cr1eq
/* 8148FA3C | 48 09 EC 65 */	bl OSReport
.L_8148FA40:
/* 8148FA40 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148FA44 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148FA48 | 48 0A 22 9D */	bl fn_81531CE4
/* 8148FA4C | 38 60 00 19 */	li r3, 0x19
/* 8148FA50 | 48 00 00 EC */	b .L_8148FB3C
.L_8148FA54:
/* 8148FA54 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8148FA58 | 41 82 00 3C */	beq .L_8148FA94
/* 8148FA5C | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FA60 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148FA64 | 41 80 00 1C */	blt .L_8148FA80
/* 8148FA68 | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148FA6C | 4C C6 31 82 */	crclr cr1eq
/* 8148FA70 | 48 09 EC 31 */	bl OSReport
/* 8148FA74 | 38 7F 03 50 */	addi r3, r31, 0x350
/* 8148FA78 | 4C C6 31 82 */	crclr cr1eq
/* 8148FA7C | 48 09 EC 25 */	bl OSReport
.L_8148FA80:
/* 8148FA80 | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148FA84 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148FA88 | 48 0A 22 5D */	bl fn_81531CE4
/* 8148FA8C | 38 60 00 19 */	li r3, 0x19
/* 8148FA90 | 48 00 00 AC */	b .L_8148FB3C
.L_8148FA94:
/* 8148FA94 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8148FA98 | 3B 9C 04 70 */	addi r28, r28, 0x470
/* 8148FA9C | 2C 1A 00 05 */	cmpwi r26, 0x5
/* 8148FAA0 | 41 80 FF 28 */	blt .L_8148F9C8
/* 8148FAA4 | 3B 60 00 00 */	li r27, 0x0
/* 8148FAA8 | 3B 80 00 00 */	li r28, 0x0
.L_8148FAAC:
/* 8148FAAC | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148FAB0 | 7C 60 E2 14 */	add r3, r0, r28
/* 8148FAB4 | 4B FF C5 1D */	bl CDBRecordInstanceIsUsed
/* 8148FAB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FABC | 40 82 00 3C */	bne .L_8148FAF8
/* 8148FAC0 | 1F 7B 04 70 */	mulli r27, r27, 0x470
/* 8148FAC4 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148FAC8 | 7F A4 EB 78 */	mr r4, r29
/* 8148FACC | 7F C5 F3 78 */	mr r5, r30
/* 8148FAD0 | 7C 60 DA 14 */	add r3, r0, r27
/* 8148FAD4 | 4B FF C4 89 */	bl CDBRecordInstanceInit
/* 8148FAD8 | 80 0D AD 50 */	lwz r0, lbl_81698D90@sda21(r0)
/* 8148FADC | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148FAE0 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148FAE4 | 7C 00 DA 14 */	add r0, r0, r27
/* 8148FAE8 | 90 1D 00 38 */	stw r0, 0x38(r29)
/* 8148FAEC | 48 0A 21 F9 */	bl fn_81531CE4
/* 8148FAF0 | 38 60 00 00 */	li r3, 0x0
/* 8148FAF4 | 48 00 00 48 */	b .L_8148FB3C
.L_8148FAF8:
/* 8148FAF8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8148FAFC | 3B 9C 04 70 */	addi r28, r28, 0x470
/* 8148FB00 | 2C 1B 00 05 */	cmpwi r27, 0x5
/* 8148FB04 | 41 80 FF A8 */	blt .L_8148FAAC
/* 8148FB08 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FB0C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148FB10 | 41 80 00 1C */	blt .L_8148FB2C
/* 8148FB14 | 38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8148FB18 | 4C C6 31 82 */	crclr cr1eq
/* 8148FB1C | 48 09 EB 85 */	bl OSReport
/* 8148FB20 | 38 7F 03 B4 */	addi r3, r31, 0x3b4
/* 8148FB24 | 4C C6 31 82 */	crclr cr1eq
/* 8148FB28 | 48 09 EB 79 */	bl OSReport
.L_8148FB2C:
/* 8148FB2C | 3C 60 81 0D */	lis r3, lbl_810C8B00@ha
/* 8148FB30 | 38 63 8B 00 */	addi r3, r3, lbl_810C8B00@l
/* 8148FB34 | 48 0A 21 B1 */	bl fn_81531CE4
/* 8148FB38 | 38 60 00 16 */	li r3, 0x16
.L_8148FB3C:
/* 8148FB3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8148FB40 | 48 16 99 C9 */	bl _restgpr_26
/* 8148FB44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148FB48 | 7C 08 03 A6 */	mtlr r0
/* 8148FB4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148FB50 | 4E 80 00 20 */	blr
.endfn CDBRecordAllocate

# .text:0x8E4 | 0x8148FB54 | size: 0x78
.fn CDBRecordFree, global
/* 8148FB54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148FB58 | 7C 08 02 A6 */	mflr r0
/* 8148FB5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148FB60 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148FB64 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148FB68 | 3F C0 81 0D */	lis r30, lbl_810C8B00@ha
/* 8148FB6C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148FB70 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8148FB74 | 7C 7C 1B 78 */	mr r28, r3
/* 8148FB78 | 83 A3 00 38 */	lwz r29, 0x38(r3)
/* 8148FB7C | 38 7E 8B 00 */	addi r3, r30, lbl_810C8B00@l
/* 8148FB80 | 48 0A 20 89 */	bl fn_81531C08
/* 8148FB84 | 7F A3 EB 78 */	mr r3, r29
/* 8148FB88 | 48 0A 20 81 */	bl fn_81531C08
/* 8148FB8C | 3B E0 00 00 */	li r31, 0x0
/* 8148FB90 | 7F A3 EB 78 */	mr r3, r29
/* 8148FB94 | 93 FD 00 18 */	stw r31, 0x18(r29)
/* 8148FB98 | 48 0A 21 4D */	bl fn_81531CE4
/* 8148FB9C | 93 FD 00 1C */	stw r31, 0x1c(r29)
/* 8148FBA0 | 38 7E 8B 00 */	addi r3, r30, lbl_810C8B00@l
/* 8148FBA4 | 93 FC 00 38 */	stw r31, 0x38(r28)
/* 8148FBA8 | 48 0A 21 3D */	bl fn_81531CE4
/* 8148FBAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148FBB0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148FBB4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148FBB8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148FBBC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8148FBC0 | 7C 08 03 A6 */	mtlr r0
/* 8148FBC4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148FBC8 | 4E 80 00 20 */	blr
.endfn CDBRecordFree

# .text:0x95C | 0x8148FBCC | size: 0xC
.fn _CDBOnVFErrorOccured, global
/* 8148FBCC | 90 6D AD 48 */	stw r3, lbl_81698D88@sda21(r0)
/* 8148FBD0 | 38 60 00 0C */	li r3, 0xc
/* 8148FBD4 | 4E 80 00 20 */	blr
.endfn _CDBOnVFErrorOccured

# .text:0x968 | 0x8148FBD8 | size: 0xC
.fn _CDBOnNANDErrorOccured, global
/* 8148FBD8 | 90 6D AD 44 */	stw r3, lbl_81698D84@sda21(r0)
/* 8148FBDC | 38 60 00 0D */	li r3, 0xd
/* 8148FBE0 | 4E 80 00 20 */	blr
.endfn _CDBOnNANDErrorOccured

# .text:0x974 | 0x8148FBE4 | size: 0x8
.fn CDBGetLastVFError, global
/* 8148FBE4 | 80 6D AD 48 */	lwz r3, lbl_81698D88@sda21(r0)
/* 8148FBE8 | 4E 80 00 20 */	blr
.endfn CDBGetLastVFError

# .text:0x97C | 0x8148FBEC | size: 0x8
.fn CDBGetLastNANDError, global
/* 8148FBEC | 80 6D AD 44 */	lwz r3, lbl_81698D84@sda21(r0)
/* 8148FBF0 | 4E 80 00 20 */	blr
.endfn CDBGetLastNANDError

# .text:0x984 | 0x8148FBF4 | size: 0x8
.fn CDBGetFatalVFErrorFlag, global
/* 8148FBF4 | 80 6D AD 3C */	lwz r3, lbl_81698D7C@sda21(r0)
/* 8148FBF8 | 4E 80 00 20 */	blr
.endfn CDBGetFatalVFErrorFlag

# .text:0x98C | 0x8148FBFC | size: 0xC
.fn CDBSetFatalVFErrorFlag, global
/* 8148FBFC | 38 00 00 01 */	li r0, 0x1
/* 8148FC00 | 90 0D AD 3C */	stw r0, lbl_81698D7C@sda21(r0)
/* 8148FC04 | 4E 80 00 20 */	blr
.endfn CDBSetFatalVFErrorFlag

# .text:0x998 | 0x8148FC08 | size: 0x134
.fn CDBTryToCreate_wiiiddat, global
/* 8148FC08 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8148FC0C | 7C 08 02 A6 */	mflr r0
/* 8148FC10 | 38 80 00 01 */	li r4, 0x1
/* 8148FC14 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8148FC18 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8148FC1C | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 8148FC20 | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8148FC24 | 3F C0 81 67 */	lis r30, lbl_8166C5C8@ha
/* 8148FC28 | 3B DE C5 C8 */	addi r30, r30, lbl_8166C5C8@l
/* 8148FC2C | 93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8148FC30 | 7C 7D 1B 78 */	mr r29, r3
/* 8148FC34 | 38 60 00 01 */	li r3, 0x1
/* 8148FC38 | 4B ED 0B 59 */	bl NANDCheck
/* 8148FC3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FC40 | 41 82 00 2C */	beq .L_8148FC6C
/* 8148FC44 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FC48 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148FC4C | 41 80 00 D4 */	blt .L_8148FD20
/* 8148FC50 | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8148FC54 | 4C C6 31 82 */	crclr cr1eq
/* 8148FC58 | 48 09 EA 49 */	bl OSReport
/* 8148FC5C | 38 7E 03 D0 */	addi r3, r30, 0x3d0
/* 8148FC60 | 4C C6 31 82 */	crclr cr1eq
/* 8148FC64 | 48 09 EA 3D */	bl OSReport
/* 8148FC68 | 48 00 00 B8 */	b .L_8148FD20
.L_8148FC6C:
/* 8148FC6C | 3F E0 81 0D */	lis r31, CDB_WIIID_DAT_PATH@ha
/* 8148FC70 | 38 80 00 3F */	li r4, 0x3f
/* 8148FC74 | 38 7F 89 90 */	addi r3, r31, CDB_WIIID_DAT_PATH@l
/* 8148FC78 | 38 A0 00 00 */	li r5, 0x0
/* 8148FC7C | 48 0D 40 1D */	bl NANDCreate
/* 8148FC80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FC84 | 41 82 00 2C */	beq .L_8148FCB0
/* 8148FC88 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FC8C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8148FC90 | 41 80 00 90 */	blt .L_8148FD20
/* 8148FC94 | 38 7E 03 E4 */	addi r3, r30, 0x3e4
/* 8148FC98 | 4C C6 31 82 */	crclr cr1eq
/* 8148FC9C | 48 09 EA 05 */	bl OSReport
/* 8148FCA0 | 38 7E 03 F4 */	addi r3, r30, 0x3f4
/* 8148FCA4 | 4C C6 31 82 */	crclr cr1eq
/* 8148FCA8 | 48 09 E9 F9 */	bl OSReport
/* 8148FCAC | 48 00 00 74 */	b .L_8148FD20
.L_8148FCB0:
/* 8148FCB0 | 38 7F 89 90 */	addi r3, r31, CDB_WIIID_DAT_PATH@l
/* 8148FCB4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8148FCB8 | 38 A0 00 02 */	li r5, 0x2
/* 8148FCBC | 48 0D 55 B1 */	bl NANDOpen
/* 8148FCC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FCC4 | 40 82 00 5C */	bne .L_8148FD20
/* 8148FCC8 | 7F A4 EB 78 */	mr r4, r29
/* 8148FCCC | 38 61 00 0C */	addi r3, r1, 0xc
/* 8148FCD0 | 38 A0 00 28 */	li r5, 0x28
/* 8148FCD4 | 48 0D 44 0D */	bl NANDWrite
/* 8148FCD8 | 2C 03 00 28 */	cmpwi r3, 0x28
/* 8148FCDC | 41 82 00 10 */	beq .L_8148FCEC
/* 8148FCE0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8148FCE4 | 48 0D 58 09 */	bl NANDClose
/* 8148FCE8 | 48 00 00 38 */	b .L_8148FD20
.L_8148FCEC:
/* 8148FCEC | 38 61 00 0C */	addi r3, r1, 0xc
/* 8148FCF0 | 48 0D 57 FD */	bl NANDClose
/* 8148FCF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FCF8 | 40 82 00 28 */	bne .L_8148FD20
/* 8148FCFC | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FD00 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8148FD04 | 41 80 00 1C */	blt .L_8148FD20
/* 8148FD08 | 38 7E 03 E4 */	addi r3, r30, 0x3e4
/* 8148FD0C | 4C C6 31 82 */	crclr cr1eq
/* 8148FD10 | 48 09 E9 91 */	bl OSReport
/* 8148FD14 | 38 7E 04 14 */	addi r3, r30, 0x414
/* 8148FD18 | 4C C6 31 82 */	crclr cr1eq
/* 8148FD1C | 48 09 E9 85 */	bl OSReport
.L_8148FD20:
/* 8148FD20 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8148FD24 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8148FD28 | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8148FD2C | 83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 8148FD30 | 7C 08 03 A6 */	mtlr r0
/* 8148FD34 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 8148FD38 | 4E 80 00 20 */	blr
.endfn CDBTryToCreate_wiiiddat

# .text:0xACC | 0x8148FD3C | size: 0x2BC
.fn CDBInitHashedMacAddr, global
/* 8148FD3C | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8148FD40 | 7C 2C 0B 78 */	mr r12, r1
/* 8148FD44 | 21 6B FE 60 */	subfic r11, r11, -0x1a0
/* 8148FD48 | 7C 21 59 6E */	stwux r1, r1, r11
/* 8148FD4C | 7C 08 02 A6 */	mflr r0
/* 8148FD50 | 3C 60 81 0D */	lis r3, CDB_WIIID_DAT_PATH@ha
/* 8148FD54 | 38 A0 00 01 */	li r5, 0x1
/* 8148FD58 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8148FD5C | 38 81 00 E0 */	addi r4, r1, 0xe0
/* 8148FD60 | 38 63 89 90 */	addi r3, r3, CDB_WIIID_DAT_PATH@l
/* 8148FD64 | 93 EC FF FC */	stw r31, -0x4(r12)
/* 8148FD68 | 3F E0 81 67 */	lis r31, lbl_8166C5C8@ha
/* 8148FD6C | 3B FF C5 C8 */	addi r31, r31, lbl_8166C5C8@l
/* 8148FD70 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 8148FD74 | 93 AC FF F4 */	stw r29, -0xc(r12)
/* 8148FD78 | 93 8C FF F0 */	stw r28, -0x10(r12)
/* 8148FD7C | 48 0D 54 F1 */	bl NANDOpen
/* 8148FD80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FD84 | 40 82 01 14 */	bne .L_8148FE98
/* 8148FD88 | 38 61 00 E0 */	addi r3, r1, 0xe0
/* 8148FD8C | 38 81 00 40 */	addi r4, r1, 0x40
/* 8148FD90 | 38 A0 00 40 */	li r5, 0x40
/* 8148FD94 | 48 0D 42 6D */	bl NANDRead
/* 8148FD98 | 2C 03 00 28 */	cmpwi r3, 0x28
/* 8148FD9C | 41 82 00 80 */	beq .L_8148FE1C
/* 8148FDA0 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FDA4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8148FDA8 | 41 80 00 0C */	blt .L_8148FDB4
/* 8148FDAC | 38 00 00 01 */	li r0, 0x1
/* 8148FDB0 | 48 00 00 08 */	b .L_8148FDB8
.L_8148FDB4:
/* 8148FDB4 | 38 00 00 00 */	li r0, 0x0
.L_8148FDB8:
/* 8148FDB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148FDBC | 41 82 00 1C */	beq .L_8148FDD8
/* 8148FDC0 | 38 7F 03 E4 */	addi r3, r31, 0x3e4
/* 8148FDC4 | 4C C6 31 82 */	crclr cr1eq
/* 8148FDC8 | 48 09 E8 D9 */	bl OSReport
/* 8148FDCC | 38 7F 04 40 */	addi r3, r31, 0x440
/* 8148FDD0 | 4C C6 31 82 */	crclr cr1eq
/* 8148FDD4 | 48 09 E8 CD */	bl OSReport
.L_8148FDD8:
/* 8148FDD8 | 38 61 00 E0 */	addi r3, r1, 0xe0
/* 8148FDDC | 48 0D 57 11 */	bl NANDClose
/* 8148FDE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FDE4 | 41 82 00 10 */	beq .L_8148FDF4
/* 8148FDE8 | 90 6D AD 44 */	stw r3, lbl_81698D84@sda21(r0)
/* 8148FDEC | 38 60 00 0D */	li r3, 0xd
/* 8148FDF0 | 48 00 01 E4 */	b .L_8148FFD4
.L_8148FDF4:
/* 8148FDF4 | 3C 60 81 0D */	lis r3, CDB_WIIID_DAT_PATH@ha
/* 8148FDF8 | 38 63 89 90 */	addi r3, r3, CDB_WIIID_DAT_PATH@l
/* 8148FDFC | 48 0D 3F FD */	bl NANDDelete
/* 8148FE00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FE04 | 41 82 00 10 */	beq .L_8148FE14
/* 8148FE08 | 90 6D AD 44 */	stw r3, lbl_81698D84@sda21(r0)
/* 8148FE0C | 38 60 00 0D */	li r3, 0xd
/* 8148FE10 | 48 00 01 C4 */	b .L_8148FFD4
.L_8148FE14:
/* 8148FE14 | 3B C0 00 00 */	li r30, 0x0
/* 8148FE18 | 48 00 00 84 */	b .L_8148FE9C
.L_8148FE1C:
/* 8148FE1C | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FE20 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8148FE24 | 41 80 00 0C */	blt .L_8148FE30
/* 8148FE28 | 38 00 00 01 */	li r0, 0x1
/* 8148FE2C | 48 00 00 08 */	b .L_8148FE34
.L_8148FE30:
/* 8148FE30 | 38 00 00 00 */	li r0, 0x0
.L_8148FE34:
/* 8148FE34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148FE38 | 41 82 00 1C */	beq .L_8148FE54
/* 8148FE3C | 38 7F 03 E4 */	addi r3, r31, 0x3e4
/* 8148FE40 | 4C C6 31 82 */	crclr cr1eq
/* 8148FE44 | 48 09 E8 5D */	bl OSReport
/* 8148FE48 | 38 7F 04 70 */	addi r3, r31, 0x470
/* 8148FE4C | 4C C6 31 82 */	crclr cr1eq
/* 8148FE50 | 48 09 E8 51 */	bl OSReport
.L_8148FE54:
/* 8148FE54 | 38 61 00 54 */	addi r3, r1, 0x54
/* 8148FE58 | 3B C0 00 01 */	li r30, 0x1
/* 8148FE5C | 38 80 00 00 */	li r4, 0x0
/* 8148FE60 | 38 A0 00 14 */	li r5, 0x14
/* 8148FE64 | 4B EA 04 D1 */	bl memset
/* 8148FE68 | 3C 60 81 0D */	lis r3, lbl_810C8B20@ha
/* 8148FE6C | 38 81 00 40 */	addi r4, r1, 0x40
/* 8148FE70 | 38 63 8B 20 */	addi r3, r3, lbl_810C8B20@l
/* 8148FE74 | 38 A0 00 28 */	li r5, 0x28
/* 8148FE78 | 4B EA 03 B9 */	bl memcpy
/* 8148FE7C | 38 61 00 E0 */	addi r3, r1, 0xe0
/* 8148FE80 | 48 0D 56 6D */	bl NANDClose
/* 8148FE84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FE88 | 41 82 00 14 */	beq .L_8148FE9C
/* 8148FE8C | 90 6D AD 44 */	stw r3, lbl_81698D84@sda21(r0)
/* 8148FE90 | 38 60 00 0D */	li r3, 0xd
/* 8148FE94 | 48 00 01 40 */	b .L_8148FFD4
.L_8148FE98:
/* 8148FE98 | 3B C0 00 00 */	li r30, 0x0
.L_8148FE9C:
/* 8148FE9C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8148FEA0 | 40 82 00 A8 */	bne .L_8148FF48
/* 8148FEA4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8148FEA8 | 48 00 2D 59 */	bl NCDGetWirelessMacAddress
/* 8148FEAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148FEB0 | 40 80 00 44 */	bge .L_8148FEF4
/* 8148FEB4 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FEB8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148FEBC | 41 80 00 0C */	blt .L_8148FEC8
/* 8148FEC0 | 38 00 00 01 */	li r0, 0x1
/* 8148FEC4 | 48 00 00 08 */	b .L_8148FECC
.L_8148FEC8:
/* 8148FEC8 | 38 00 00 00 */	li r0, 0x0
.L_8148FECC:
/* 8148FECC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148FED0 | 41 82 00 1C */	beq .L_8148FEEC
/* 8148FED4 | 38 7F 00 84 */	addi r3, r31, 0x84
/* 8148FED8 | 4C C6 31 82 */	crclr cr1eq
/* 8148FEDC | 48 09 E7 C5 */	bl OSReport
/* 8148FEE0 | 38 7F 04 8C */	addi r3, r31, 0x48c
/* 8148FEE4 | 4C C6 31 82 */	crclr cr1eq
/* 8148FEE8 | 48 09 E7 B9 */	bl OSReport
.L_8148FEEC:
/* 8148FEEC | 38 60 00 24 */	li r3, 0x24
/* 8148FEF0 | 48 00 00 E4 */	b .L_8148FFD4
.L_8148FEF4:
/* 8148FEF4 | 38 00 00 79 */	li r0, 0x79
/* 8148FEF8 | 38 60 00 75 */	li r3, 0x75
/* 8148FEFC | 3F C0 81 0D */	lis r30, lbl_810C8B20@ha
/* 8148FF00 | 98 61 00 26 */	stb r3, 0x26(r1)
/* 8148FF04 | 38 7E 8B 20 */	addi r3, r30, lbl_810C8B20@l
/* 8148FF08 | 38 80 00 00 */	li r4, 0x0
/* 8148FF0C | 98 01 00 27 */	stb r0, 0x27(r1)
/* 8148FF10 | 38 A0 00 28 */	li r5, 0x28
/* 8148FF14 | 98 01 00 28 */	stb r0, 0x28(r1)
/* 8148FF18 | 4B EA 04 1D */	bl memset
/* 8148FF1C | 38 61 00 80 */	addi r3, r1, 0x80
/* 8148FF20 | 48 00 3F F5 */	bl NETSHA1Init
/* 8148FF24 | 38 61 00 80 */	addi r3, r1, 0x80
/* 8148FF28 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8148FF2C | 38 A0 00 09 */	li r5, 0x9
/* 8148FF30 | 48 00 40 35 */	bl NETSHA1Update
/* 8148FF34 | 38 61 00 80 */	addi r3, r1, 0x80
/* 8148FF38 | 38 9E 8B 20 */	addi r4, r30, lbl_810C8B20@l
/* 8148FF3C | 48 00 40 DD */	bl NETSHA1GetDigest
/* 8148FF40 | 38 7E 8B 20 */	addi r3, r30, lbl_810C8B20@l
/* 8148FF44 | 4B FF FC C5 */	bl CDBTryToCreate_wiiiddat
.L_8148FF48:
/* 8148FF48 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8148FF4C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8148FF50 | 41 80 00 0C */	blt .L_8148FF5C
/* 8148FF54 | 38 00 00 01 */	li r0, 0x1
/* 8148FF58 | 48 00 00 08 */	b .L_8148FF60
.L_8148FF5C:
/* 8148FF5C | 38 00 00 00 */	li r0, 0x0
.L_8148FF60:
/* 8148FF60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148FF64 | 41 82 00 6C */	beq .L_8148FFD0
/* 8148FF68 | 38 7F 04 B0 */	addi r3, r31, 0x4b0
/* 8148FF6C | 4C C6 31 82 */	crclr cr1eq
/* 8148FF70 | 48 09 E7 31 */	bl OSReport
/* 8148FF74 | 3F C0 81 0D */	lis r30, lbl_810C8B20@ha
/* 8148FF78 | 3B A0 00 00 */	li r29, 0x0
/* 8148FF7C | 3B DE 8B 20 */	addi r30, r30, lbl_810C8B20@l
/* 8148FF80 | 3B E0 00 00 */	li r31, 0x0
.L_8148FF84:
/* 8148FF84 | 3B 80 00 00 */	li r28, 0x0
.L_8148FF88:
/* 8148FF88 | 7C 9C FA 14 */	add r4, r28, r31
/* 8148FF8C | 38 6D 9A 08 */	li r3, lbl_81697A48@sda21
/* 8148FF90 | 7C 84 F0 AE */	lbzx r4, r4, r30
/* 8148FF94 | 4C C6 31 82 */	crclr cr1eq
/* 8148FF98 | 48 09 E7 09 */	bl OSReport
/* 8148FF9C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8148FFA0 | 2C 1C 00 0A */	cmpwi r28, 0xa
/* 8148FFA4 | 41 80 FF E4 */	blt .L_8148FF88
/* 8148FFA8 | 38 6D 9A 10 */	li r3, lbl_81697A50@sda21
/* 8148FFAC | 4C C6 31 82 */	crclr cr1eq
/* 8148FFB0 | 48 09 E6 F1 */	bl OSReport
/* 8148FFB4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8148FFB8 | 3B FF 00 0A */	addi r31, r31, 0xa
/* 8148FFBC | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 8148FFC0 | 41 80 FF C4 */	blt .L_8148FF84
/* 8148FFC4 | 38 6D 9A 14 */	li r3, lbl_81697A54@sda21
/* 8148FFC8 | 4C C6 31 82 */	crclr cr1eq
/* 8148FFCC | 48 09 E6 D5 */	bl OSReport
.L_8148FFD0:
/* 8148FFD0 | 38 60 00 00 */	li r3, 0x0
.L_8148FFD4:
/* 8148FFD4 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8148FFD8 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8148FFDC | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 8148FFE0 | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 8148FFE4 | 83 AA FF F4 */	lwz r29, -0xc(r10)
/* 8148FFE8 | 83 8A FF F0 */	lwz r28, -0x10(r10)
/* 8148FFEC | 7C 08 03 A6 */	mtlr r0
/* 8148FFF0 | 7D 41 53 78 */	mr r1, r10
/* 8148FFF4 | 4E 80 00 20 */	blr
.endfn CDBInitHashedMacAddr

# .text:0xD88 | 0x8148FFF8 | size: 0x38
.fn CDBGetWiiId, global
/* 8148FFF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148FFFC | 7C 08 02 A6 */	mflr r0
/* 81490000 | 3C 80 81 0D */	lis r4, lbl_810C8B20@ha
/* 81490004 | 38 A0 00 08 */	li r5, 0x8
/* 81490008 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149000C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81490010 | 38 84 8B 20 */	addi r4, r4, lbl_810C8B20@l
/* 81490014 | 4B EA 02 1D */	bl memcpy
/* 81490018 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149001C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81490020 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81490024 | 7C 08 03 A6 */	mtlr r0
/* 81490028 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149002C | 4E 80 00 20 */	blr
.endfn CDBGetWiiId

# .text:0xDC0 | 0x81490030 | size: 0x34
.fn CDBGetWiiHighId, global
/* 81490030 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490034 | 7C 08 02 A6 */	mflr r0
/* 81490038 | 3C 80 81 0D */	lis r4, lbl_810C8B20@ha
/* 8149003C | 38 A0 00 04 */	li r5, 0x4
/* 81490040 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490044 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81490048 | 38 84 8B 20 */	addi r4, r4, lbl_810C8B20@l
/* 8149004C | 4B EA 01 E5 */	bl memcpy
/* 81490050 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81490054 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81490058 | 7C 08 03 A6 */	mtlr r0
/* 8149005C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490060 | 4E 80 00 20 */	blr
.endfn CDBGetWiiHighId

# .text:0xDF4 | 0x81490064 | size: 0x38
.fn CDBGetWiiHighIdEx, global
/* 81490064 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81490068 | 7C 08 02 A6 */	mflr r0
/* 8149006C | 38 A0 00 04 */	li r5, 0x4
/* 81490070 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81490074 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81490078 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8149007C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81490080 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81490084 | 4B EA 01 AD */	bl memcpy
/* 81490088 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149008C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81490090 | 7C 08 03 A6 */	mtlr r0
/* 81490094 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81490098 | 4E 80 00 20 */	blr
.endfn CDBGetWiiHighIdEx

# .text:0xE2C | 0x8149009C | size: 0x38
.fn CDBGetWiiLowId, global
/* 8149009C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814900A0 | 7C 08 02 A6 */	mflr r0
/* 814900A4 | 3C 80 81 0D */	lis r4, lbl_810C8B20@ha
/* 814900A8 | 38 A0 00 04 */	li r5, 0x4
/* 814900AC | 38 84 8B 20 */	addi r4, r4, lbl_810C8B20@l
/* 814900B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814900B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814900B8 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814900BC | 4B EA 01 75 */	bl memcpy
/* 814900C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814900C4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814900C8 | 7C 08 03 A6 */	mtlr r0
/* 814900CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814900D0 | 4E 80 00 20 */	blr
.endfn CDBGetWiiLowId

# .text:0xE64 | 0x814900D4 | size: 0x38
.fn CDBGetWiiLowIdEx, global
/* 814900D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814900D8 | 7C 08 02 A6 */	mflr r0
/* 814900DC | 38 A0 00 04 */	li r5, 0x4
/* 814900E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814900E4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814900E8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814900EC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814900F0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814900F4 | 4B EA 01 3D */	bl memcpy
/* 814900F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814900FC | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81490100 | 7C 08 03 A6 */	mtlr r0
/* 81490104 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81490108 | 4E 80 00 20 */	blr
.endfn CDBGetWiiLowIdEx

# .text:0xE9C | 0x8149010C | size: 0x14
.fn CDBGetWiiIdKey, global
/* 8149010C | 3C 80 81 0D */	lis r4, lbl_810C8B20@ha
/* 81490110 | 38 A0 00 0C */	li r5, 0xc
/* 81490114 | 38 84 8B 20 */	addi r4, r4, lbl_810C8B20@l
/* 81490118 | 38 84 00 08 */	addi r4, r4, 0x8
/* 8149011C | 4B EA 01 14 */	b memcpy
.endfn CDBGetWiiIdKey

# .text:0xEB0 | 0x81490120 | size: 0x8
.fn CDBCopyWiiIdKey, global
/* 81490120 | 38 A0 00 0C */	li r5, 0xc
/* 81490124 | 4B EA 01 0C */	b memcpy
.endfn CDBCopyWiiIdKey

# .text:0xEB8 | 0x81490128 | size: 0x14
.fn CDBGetDeviceKey, global
/* 81490128 | 3C 80 81 0D */	lis r4, lbl_810C8B20@ha
/* 8149012C | 38 A0 00 14 */	li r5, 0x14
/* 81490130 | 38 84 8B 20 */	addi r4, r4, lbl_810C8B20@l
/* 81490134 | 38 84 00 14 */	addi r4, r4, 0x14
/* 81490138 | 4B EA 00 F8 */	b memcpy
.endfn CDBGetDeviceKey

# .text:0xECC | 0x8149013C | size: 0x4C
.fn CDBGetInitialCode, global
/* 8149013C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490140 | 7C 08 02 A6 */	mflr r0
/* 81490144 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490148 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149014C | 48 09 C6 9D */	bl fn_8152C7E8
/* 81490150 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81490154 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81490158 | 40 82 00 18 */	bne .L_81490170
/* 8149015C | 48 09 C7 11 */	bl fn_8152C86C
/* 81490160 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 81490164 | 40 82 00 0C */	bne .L_81490170
/* 81490168 | 48 0B E2 31 */	bl fn_8154E398
/* 8149016C | 83 E3 00 00 */	lwz r31, 0x0(r3)
.L_81490170:
/* 81490170 | 7F E3 FB 78 */	mr r3, r31
/* 81490174 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81490178 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149017C | 7C 08 03 A6 */	mtlr r0
/* 81490180 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490184 | 4E 80 00 20 */	blr
.endfn CDBGetInitialCode

# .text:0xF18 | 0x81490188 | size: 0x1E4
.fn CDBGetMakerCode, global
/* 81490188 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8149018C | 7C 08 02 A6 */	mflr r0
/* 81490190 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81490194 | 38 00 58 58 */	li r0, 0x5858
/* 81490198 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8149019C | 3F E0 81 67 */	lis r31, lbl_8166C5C8@ha
/* 814901A0 | 3B FF C5 C8 */	addi r31, r31, lbl_8166C5C8@l
/* 814901A4 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 814901A8 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814901AC | 48 09 C6 C1 */	bl fn_8152C86C
/* 814901B0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814901B4 | 2C 00 00 80 */	cmpwi r0, 0x80
/* 814901B8 | 41 82 00 2C */	beq .L_814901E4
/* 814901BC | 40 80 00 10 */	bge .L_814901CC
/* 814901C0 | 2C 00 00 40 */	cmpwi r0, 0x40
/* 814901C4 | 41 82 00 14 */	beq .L_814901D8
/* 814901C8 | 48 00 00 B8 */	b .L_81490280
.L_814901CC:
/* 814901CC | 2C 00 00 82 */	cmpwi r0, 0x82
/* 814901D0 | 40 80 00 B0 */	bge .L_81490280
/* 814901D4 | 48 00 00 20 */	b .L_814901F4
.L_814901D8:
/* 814901D8 | 38 00 00 01 */	li r0, 0x1
/* 814901DC | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814901E0 | 48 00 00 A0 */	b .L_81490280
.L_814901E4:
/* 814901E4 | 48 0B E1 B5 */	bl fn_8154E398
/* 814901E8 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 814901EC | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814901F0 | 48 00 00 90 */	b .L_81490280
.L_814901F4:
/* 814901F4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814901F8 | 48 0D 6F E1 */	bl NANDGetHomeDir
/* 814901FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81490200 | 7C 7E 1B 78 */	mr r30, r3
/* 81490204 | 41 82 00 30 */	beq .L_81490234
/* 81490208 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 8149020C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81490210 | 41 80 00 70 */	blt .L_81490280
/* 81490214 | 38 7F 03 E4 */	addi r3, r31, 0x3e4
/* 81490218 | 4C C6 31 82 */	crclr cr1eq
/* 8149021C | 48 09 E4 85 */	bl OSReport
/* 81490220 | 7F C4 F3 78 */	mr r4, r30
/* 81490224 | 38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 81490228 | 4C C6 31 82 */	crclr cr1eq
/* 8149022C | 48 09 E4 75 */	bl OSReport
/* 81490230 | 48 00 00 50 */	b .L_81490280
.L_81490234:
/* 81490234 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81490238 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8149023C | 48 0D 4B B1 */	bl NANDGetStatus
/* 81490240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81490244 | 7C 7E 1B 78 */	mr r30, r3
/* 81490248 | 41 82 00 30 */	beq .L_81490278
/* 8149024C | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 81490250 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81490254 | 41 80 00 2C */	blt .L_81490280
/* 81490258 | 38 7F 03 E4 */	addi r3, r31, 0x3e4
/* 8149025C | 4C C6 31 82 */	crclr cr1eq
/* 81490260 | 48 09 E4 41 */	bl OSReport
/* 81490264 | 7F C4 F3 78 */	mr r4, r30
/* 81490268 | 38 7F 05 00 */	addi r3, r31, 0x500
/* 8149026C | 4C C6 31 82 */	crclr cr1eq
/* 81490270 | 48 09 E4 31 */	bl OSReport
/* 81490274 | 48 00 00 0C */	b .L_81490280
.L_81490278:
/* 81490278 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8149027C | B0 01 00 08 */	sth r0, 0x8(r1)
.L_81490280:
/* 81490280 | 88 81 00 08 */	lbz r4, 0x8(r1)
/* 81490284 | 38 00 00 00 */	li r0, 0x0
/* 81490288 | 7C 84 07 75 */	extsb. r4, r4
/* 8149028C | 41 80 00 0C */	blt .L_81490298
/* 81490290 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 81490294 | 41 80 00 08 */	blt .L_8149029C
.L_81490298:
/* 81490298 | 38 00 00 01 */	li r0, 0x1
.L_8149029C:
/* 8149029C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814902A0 | 41 82 00 0C */	beq .L_814902AC
/* 814902A4 | 38 00 00 00 */	li r0, 0x0
/* 814902A8 | 48 00 00 20 */	b .L_814902C8
.L_814902AC:
/* 814902AC | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 814902B0 | 54 80 08 3C */	slwi r0, r4, 1
/* 814902B4 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 814902B8 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 814902BC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814902C0 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814902C4 | 54 00 06 72 */	rlwinm r0, r0, 0, 25, 25
.L_814902C8:
/* 814902C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814902CC | 41 82 00 54 */	beq .L_81490320
/* 814902D0 | 88 81 00 09 */	lbz r4, 0x9(r1)
/* 814902D4 | 38 00 00 00 */	li r0, 0x0
/* 814902D8 | 7C 84 07 75 */	extsb. r4, r4
/* 814902DC | 41 80 00 0C */	blt .L_814902E8
/* 814902E0 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 814902E4 | 41 80 00 08 */	blt .L_814902EC
.L_814902E8:
/* 814902E8 | 38 00 00 01 */	li r0, 0x1
.L_814902EC:
/* 814902EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814902F0 | 41 82 00 0C */	beq .L_814902FC
/* 814902F4 | 38 00 00 00 */	li r0, 0x0
/* 814902F8 | 48 00 00 20 */	b .L_81490318
.L_814902FC:
/* 814902FC | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 81490300 | 54 80 08 3C */	slwi r0, r4, 1
/* 81490304 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 81490308 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8149030C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81490310 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81490314 | 54 00 06 72 */	rlwinm r0, r0, 0, 25, 25
.L_81490318:
/* 81490318 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149031C | 40 82 00 34 */	bne .L_81490350
.L_81490320:
/* 81490320 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81490324 | 38 00 00 23 */	li r0, 0x23
/* 81490328 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8149032C | 7C 60 07 75 */	extsb. r0, r3
/* 81490330 | 41 80 00 18 */	blt .L_81490348
/* 81490334 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81490338 | 41 81 00 10 */	bgt .L_81490348
/* 8149033C | 38 03 00 30 */	addi r0, r3, 0x30
/* 81490340 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81490344 | 48 00 00 0C */	b .L_81490350
.L_81490348:
/* 81490348 | 38 00 00 23 */	li r0, 0x23
/* 8149034C | 98 01 00 09 */	stb r0, 0x9(r1)
.L_81490350:
/* 81490350 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 81490354 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 81490358 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8149035C | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 81490360 | 7C 08 03 A6 */	mtlr r0
/* 81490364 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81490368 | 4E 80 00 20 */	blr
.endfn CDBGetMakerCode

# .text:0x10FC | 0x8149036C | size: 0xD4
.fn CDBCheckMakerCodeStr, global
/* 8149036C | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 81490370 | 38 00 00 00 */	li r0, 0x0
/* 81490374 | 7C A5 07 75 */	extsb. r5, r5
/* 81490378 | 41 80 00 0C */	blt .L_81490384
/* 8149037C | 2C 05 01 00 */	cmpwi r5, 0x100
/* 81490380 | 41 80 00 08 */	blt .L_81490388
.L_81490384:
/* 81490384 | 38 00 00 01 */	li r0, 0x1
.L_81490388:
/* 81490388 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149038C | 41 82 00 0C */	beq .L_81490398
/* 81490390 | 38 00 00 00 */	li r0, 0x0
/* 81490394 | 48 00 00 20 */	b .L_814903B4
.L_81490398:
/* 81490398 | 3C 80 81 69 */	lis r4, _current_locale@ha
/* 8149039C | 54 A0 08 3C */	slwi r0, r5, 1
/* 814903A0 | 38 84 3B 88 */	addi r4, r4, _current_locale@l
/* 814903A4 | 80 84 00 38 */	lwz r4, 0x38(r4)
/* 814903A8 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 814903AC | 7C 04 02 2E */	lhzx r0, r4, r0
/* 814903B0 | 54 00 06 72 */	rlwinm r0, r0, 0, 25, 25
.L_814903B4:
/* 814903B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814903B8 | 41 82 00 54 */	beq .L_8149040C
/* 814903BC | 88 A3 00 01 */	lbz r5, 0x1(r3)
/* 814903C0 | 38 00 00 00 */	li r0, 0x0
/* 814903C4 | 7C A5 07 75 */	extsb. r5, r5
/* 814903C8 | 41 80 00 0C */	blt .L_814903D4
/* 814903CC | 2C 05 01 00 */	cmpwi r5, 0x100
/* 814903D0 | 41 80 00 08 */	blt .L_814903D8
.L_814903D4:
/* 814903D4 | 38 00 00 01 */	li r0, 0x1
.L_814903D8:
/* 814903D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814903DC | 41 82 00 0C */	beq .L_814903E8
/* 814903E0 | 38 00 00 00 */	li r0, 0x0
/* 814903E4 | 48 00 00 20 */	b .L_81490404
.L_814903E8:
/* 814903E8 | 3C 80 81 69 */	lis r4, _current_locale@ha
/* 814903EC | 54 A0 08 3C */	slwi r0, r5, 1
/* 814903F0 | 38 84 3B 88 */	addi r4, r4, _current_locale@l
/* 814903F4 | 80 84 00 38 */	lwz r4, 0x38(r4)
/* 814903F8 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 814903FC | 7C 04 02 2E */	lhzx r0, r4, r0
/* 81490400 | 54 00 06 72 */	rlwinm r0, r0, 0, 25, 25
.L_81490404:
/* 81490404 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81490408 | 4C 82 00 20 */	bnelr
.L_8149040C:
/* 8149040C | 88 83 00 01 */	lbz r4, 0x1(r3)
/* 81490410 | 38 00 00 23 */	li r0, 0x23
/* 81490414 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 81490418 | 7C 80 07 75 */	extsb. r0, r4
/* 8149041C | 41 80 00 18 */	blt .L_81490434
/* 81490420 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81490424 | 41 81 00 10 */	bgt .L_81490434
/* 81490428 | 38 04 00 30 */	addi r0, r4, 0x30
/* 8149042C | 98 03 00 01 */	stb r0, 0x1(r3)
/* 81490430 | 4E 80 00 20 */	blr
.L_81490434:
/* 81490434 | 38 00 00 23 */	li r0, 0x23
/* 81490438 | 98 03 00 01 */	stb r0, 0x1(r3)
/* 8149043C | 4E 80 00 20 */	blr
.endfn CDBCheckMakerCodeStr

# .text:0x11D0 | 0x81490440 | size: 0x9C
.fn CDBRecordBelongedDBOpenedAsRW, global
/* 81490440 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81490444 | 38 C0 00 00 */	li r6, 0x0
/* 81490448 | 40 82 00 0C */	bne .L_81490454
/* 8149044C | 38 60 00 00 */	li r3, 0x0
/* 81490450 | 4E 80 00 20 */	blr
.L_81490454:
/* 81490454 | 80 8D AD 54 */	lwz r4, lbl_81698D94@sda21(r0)
/* 81490458 | 38 A0 00 00 */	li r5, 0x0
/* 8149045C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 81490460 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81490464 | 41 82 00 28 */	beq .L_8149048C
/* 81490468 | 3C 64 00 01 */	addis r3, r4, 0x1
/* 8149046C | 80 03 C0 10 */	lwz r0, -0x3ff0(r3)
/* 81490470 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 81490474 | 41 82 00 18 */	beq .L_8149048C
/* 81490478 | 3C 60 00 01 */	lis r3, 0x1
/* 8149047C | 38 03 C0 18 */	subi r0, r3, 0x3fe8
/* 81490480 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 81490484 | 7C C4 02 14 */	add r6, r4, r0
/* 81490488 | 48 00 00 3C */	b .L_814904C4
.L_8149048C:
/* 8149048C | 3C 64 00 01 */	addis r3, r4, 0x1
/* 81490490 | 38 A0 00 01 */	li r5, 0x1
/* 81490494 | 80 03 C0 18 */	lwz r0, -0x3fe8(r3)
/* 81490498 | 38 63 C0 18 */	subi r3, r3, 0x3fe8
/* 8149049C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814904A0 | 41 82 00 24 */	beq .L_814904C4
/* 814904A4 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 814904A8 | 80 03 C0 10 */	lwz r0, -0x3ff0(r3)
/* 814904AC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814904B0 | 41 82 00 14 */	beq .L_814904C4
/* 814904B4 | 3C 60 00 01 */	lis r3, 0x1
/* 814904B8 | 38 03 C0 18 */	subi r0, r3, 0x3fe8
/* 814904BC | 7C 05 01 D6 */	mullw r0, r5, r0
/* 814904C0 | 7C C4 02 14 */	add r6, r4, r0
.L_814904C4:
/* 814904C4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814904C8 | 40 82 00 0C */	bne .L_814904D4
/* 814904CC | 38 60 00 00 */	li r3, 0x0
/* 814904D0 | 4E 80 00 20 */	blr
.L_814904D4:
/* 814904D4 | 38 60 00 01 */	li r3, 0x1
/* 814904D8 | 4E 80 00 20 */	blr
.endfn CDBRecordBelongedDBOpenedAsRW

# .text:0x126C | 0x814904DC | size: 0x68
.fn CDBSetVFSyncMode, global
/* 814904DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814904E0 | 7C 08 02 A6 */	mflr r0
/* 814904E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814904E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814904EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814904F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814904F4 | 41 82 00 14 */	beq .L_81490508
/* 814904F8 | 38 6D 9A 1C */	li r3, lbl_81697A5C@sda21
/* 814904FC | 38 80 00 00 */	li r4, 0x0
/* 81490500 | 48 04 0E 29 */	bl fn_814D1328
/* 81490504 | 48 00 00 10 */	b .L_81490514
.L_81490508:
/* 81490508 | 38 6D 9A 1C */	li r3, lbl_81697A5C@sda21
/* 8149050C | 38 80 00 01 */	li r4, 0x1
/* 81490510 | 48 04 0E 19 */	bl fn_814D1328
.L_81490514:
/* 81490514 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81490518 | 41 82 00 10 */	beq .L_81490528
/* 8149051C | 90 6D AD 48 */	stw r3, lbl_81698D88@sda21(r0)
/* 81490520 | 38 60 00 0C */	li r3, 0xc
/* 81490524 | 48 00 00 0C */	b .L_81490530
.L_81490528:
/* 81490528 | 93 ED 9A 18 */	stw r31, lbl_81697A58@sda21(r0)
/* 8149052C | 38 60 00 00 */	li r3, 0x0
.L_81490530:
/* 81490530 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81490534 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81490538 | 7C 08 03 A6 */	mtlr r0
/* 8149053C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490540 | 4E 80 00 20 */	blr
.endfn CDBSetVFSyncMode

# .text:0x12D4 | 0x81490544 | size: 0x4C
.fn CDBVFSync, global
/* 81490544 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490548 | 7C 08 02 A6 */	mflr r0
/* 8149054C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490550 | 80 0D 9A 18 */	lwz r0, lbl_81697A58@sda21(r0)
/* 81490554 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81490558 | 40 82 00 24 */	bne .L_8149057C
/* 8149055C | 38 6D 9A 1C */	li r3, lbl_81697A5C@sda21
/* 81490560 | 38 80 00 01 */	li r4, 0x1
/* 81490564 | 48 04 0D 31 */	bl fn_814D1294
/* 81490568 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149056C | 41 82 00 10 */	beq .L_8149057C
/* 81490570 | 90 6D AD 48 */	stw r3, lbl_81698D88@sda21(r0)
/* 81490574 | 38 60 00 0C */	li r3, 0xc
/* 81490578 | 48 00 00 08 */	b .L_81490580
.L_8149057C:
/* 8149057C | 38 60 00 00 */	li r3, 0x0
.L_81490580:
/* 81490580 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81490584 | 7C 08 03 A6 */	mtlr r0
/* 81490588 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149058C | 4E 80 00 20 */	blr
.endfn CDBVFSync

# .text:0x1320 | 0x81490590 | size: 0x18
.fn CDBIsPrintDebugMessage, global
/* 81490590 | 80 0D AD 40 */	lwz r0, lbl_81698D80@sda21(r0)
/* 81490594 | 54 64 0F FE */	srwi r4, r3, 31
/* 81490598 | 7C 05 FE 70 */	srawi r5, r0, 31
/* 8149059C | 7C 03 00 10 */	subfc r0, r3, r0
/* 814905A0 | 7C 65 21 14 */	adde r3, r5, r4
/* 814905A4 | 4E 80 00 20 */	blr
.endfn CDBIsPrintDebugMessage

# .text:0x1338 | 0x814905A8 | size: 0x64
.fn CDBReport_, global
/* 814905A8 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 814905AC | 3C 80 81 67 */	lis r4, lbl_8166C5C8@ha
/* 814905B0 | 38 84 C5 C8 */	addi r4, r4, lbl_8166C5C8@l
/* 814905B4 | 41 82 00 3C */	beq .L_814905F0
/* 814905B8 | 40 80 00 14 */	bge .L_814905CC
/* 814905BC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814905C0 | 41 82 00 18 */	beq .L_814905D8
/* 814905C4 | 40 80 00 20 */	bge .L_814905E4
/* 814905C8 | 4E 80 00 20 */	blr
.L_814905CC:
/* 814905CC | 2C 03 00 05 */	cmpwi r3, 0x5
/* 814905D0 | 4C 80 00 20 */	bgelr
/* 814905D4 | 48 00 00 28 */	b .L_814905FC
.L_814905D8:
/* 814905D8 | 38 64 00 84 */	addi r3, r4, 0x84
/* 814905DC | 4C C6 31 82 */	crclr cr1eq
/* 814905E0 | 48 09 E0 C0 */	b OSReport
.L_814905E4:
/* 814905E4 | 38 64 00 C0 */	addi r3, r4, 0xc0
/* 814905E8 | 4C C6 31 82 */	crclr cr1eq
/* 814905EC | 48 09 E0 B4 */	b OSReport
.L_814905F0:
/* 814905F0 | 38 64 00 00 */	addi r3, r4, 0x0
/* 814905F4 | 4C C6 31 82 */	crclr cr1eq
/* 814905F8 | 48 09 E0 A8 */	b OSReport
.L_814905FC:
/* 814905FC | 38 64 03 E4 */	addi r3, r4, 0x3e4
/* 81490600 | 4C C6 31 82 */	crclr cr1eq
/* 81490604 | 48 09 E0 9C */	b OSReport
/* 81490608 | 4E 80 00 20 */	blr
.endfn CDBReport_

# .text:0x139C | 0x8149060C | size: 0x38
.fn CDBSafeStrLen, global
/* 8149060C | 38 A0 00 00 */	li r5, 0x0
/* 81490610 | 7C 89 03 A6 */	mtctr r4
/* 81490614 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81490618 | 40 81 00 24 */	ble .L_8149063C
.L_8149061C:
/* 8149061C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81490620 | 7C 00 07 75 */	extsb. r0, r0
/* 81490624 | 40 82 00 0C */	bne .L_81490630
/* 81490628 | 7C A3 2B 78 */	mr r3, r5
/* 8149062C | 4E 80 00 20 */	blr
.L_81490630:
/* 81490630 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81490634 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81490638 | 42 00 FF E4 */	bdnz .L_8149061C
.L_8149063C:
/* 8149063C | 38 60 FF FF */	li r3, -0x1
/* 81490640 | 4E 80 00 20 */	blr
.endfn CDBSafeStrLen

# 0x8166C5C8..0x8166CAE8 | size: 0x520
.data
.balign 8

# .data:0x0 | 0x8166C5C8 | size: 0x14
.obj lbl_8166C5C8, global
	.4byte 0x28434442
	.4byte 0x29207761
	.4byte 0x726E696E
	.4byte 0x67203A20
	.4byte 0x00000000
.endobj lbl_8166C5C8

# .data:0x14 | 0x8166C5DC | size: 0xAC
.obj lbl_8166C5DC, global
	.4byte 0x8A8482E8
	.4byte 0x939682C4
	.4byte 0x82E782EA
	.4byte 0x82BD97CC
	.4byte 0x88E682AA
	.4byte 0x3634836F
	.4byte 0x83438367
	.4byte 0x83418389
	.4byte 0x83438381
	.4byte 0x83938367
	.4byte 0x82B382EA
	.4byte 0x82C482A2
	.4byte 0x82DC82B9
	.4byte 0x82F12825
	.4byte 0x64290A00
	.4byte 0x43444253
	.4byte 0x79737465
	.4byte 0x6D2E6300
	.4byte 0x28434442
	.4byte 0x29206572
	.4byte 0x726F7220
	.4byte 0x3A204344
	.4byte 0x42496E69
	.4byte 0x74282920
	.4byte 0x6973206E
	.4byte 0x6F742063
	.4byte 0x616C6C65
	.4byte 0x640A0000
	.4byte 0x28434442
	.4byte 0x29206661
	.4byte 0x74616C20
	.4byte 0x6572726F
	.4byte 0x72203A20
	.4byte 0x00000000
	.4byte 0x43444244
	.4byte 0x61746162
	.4byte 0x61736541
	.4byte 0x6C6C6F63
	.4byte 0x61746520
	.4byte 0x73797374
	.4byte 0x656D2065
	.4byte 0x72726F72
	.4byte 0x0A000000
.endobj lbl_8166C5DC

# .data:0xC0 | 0x8166C688 | size: 0x150
.obj lbl_8166C688, global
	.4byte 0x28434442
	.4byte 0x29206572
	.4byte 0x726F7220
	.4byte 0x3A200000
	.4byte 0x64617461
	.4byte 0x62617365
	.4byte 0x20646573
	.4byte 0x63726970
	.4byte 0x74657220
	.4byte 0x68617320
	.4byte 0x6F70656E
	.4byte 0x65642061
	.4byte 0x6C726561
	.4byte 0x64790A00
	.4byte 0x64617461
	.4byte 0x62617365
	.4byte 0x20646573
	.4byte 0x63726970
	.4byte 0x74657220
	.4byte 0x6973206E
	.4byte 0x6F742069
	.4byte 0x6E697469
	.4byte 0x616C697A
	.4byte 0x65640A00
	.4byte 0x63616E27
	.4byte 0x74206F70
	.4byte 0x656E2074
	.4byte 0x68652064
	.4byte 0x61746162
	.4byte 0x61736520
	.4byte 0x61732057
	.4byte 0x52495445
	.4byte 0x206D6F64
	.4byte 0x653B2061
	.4byte 0x6E6F7468
	.4byte 0x65722064
	.4byte 0x61746162
	.4byte 0x61736520
	.4byte 0x64697363
	.4byte 0x72697074
	.4byte 0x6572206F
	.4byte 0x70656E65
	.4byte 0x64207468
	.4byte 0x65206461
	.4byte 0x74616261
	.4byte 0x73652061
	.4byte 0x73205752
	.4byte 0x49544520
	.4byte 0x6D6F6465
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74206F70
	.4byte 0x656E2074
	.4byte 0x68652064
	.4byte 0x61746162
	.4byte 0x61736520
	.4byte 0x61732057
	.4byte 0x52495445
	.4byte 0x206D6F64
	.4byte 0x653B206F
	.4byte 0x74686572
	.4byte 0x20646174
	.4byte 0x61626173
	.4byte 0x65206469
	.4byte 0x73637269
	.4byte 0x70746572
	.4byte 0x28732920
	.4byte 0x6F70656E
	.4byte 0x65642074
	.4byte 0x68652064
	.4byte 0x61746162
	.4byte 0x61736520
	.4byte 0x61732052
	.4byte 0x45414420
	.4byte 0x6D6F6465
	.4byte 0x0A000000
	.4byte 0x63616E27
	.4byte 0x74206F70
	.4byte 0x656E2064
	.4byte 0x61746162
	.4byte 0x61736573
	.4byte 0x20616E79
	.4byte 0x206D6F72
	.4byte 0x650A0000
.endobj lbl_8166C688

# .data:0x210 | 0x8166C7D8 | size: 0x2C
.obj lbl_8166C7D8, global
	.4byte 0x63616E27
	.4byte 0x7420636C
	.4byte 0x6F736520
	.4byte 0x64617461
	.4byte 0x62617365
	.4byte 0x3B207265
	.4byte 0x636F7264
	.4byte 0x20257320
	.4byte 0x6973206F
	.4byte 0x70656E65
	.4byte 0x640A0000
.endobj lbl_8166C7D8

# .data:0x23C | 0x8166C804 | size: 0x14
.obj lbl_8166C804, global
	.string "database is opened\n"
.endobj lbl_8166C804

# .data:0x250 | 0x8166C818 | size: 0x2D0
.obj lbl_8166C818, global
	.4byte 0x7265636F
	.4byte 0x72642025
	.4byte 0x73206973
	.4byte 0x206F7065
	.4byte 0x6E65640A
	.4byte 0x00000000
	.4byte 0x7265636F
	.4byte 0x72642025
	.4byte 0x73206F6E
	.4byte 0x20534420
	.4byte 0x6973206F
	.4byte 0x70656E65
	.4byte 0x640A0000
	.4byte 0x63616E27
	.4byte 0x74206F70
	.4byte 0x656E2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x643B2064
	.4byte 0x61746162
	.4byte 0x61736520
	.4byte 0x69732063
	.4byte 0x6C6F7365
	.4byte 0x640A0000
	.4byte 0x63616E27
	.4byte 0x74206F70
	.4byte 0x656E2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206173
	.4byte 0x20575249
	.4byte 0x5445206D
	.4byte 0x6F64653B
	.4byte 0x20646174
	.4byte 0x61626173
	.4byte 0x65206973
	.4byte 0x20726561
	.4byte 0x646F6E6C
	.4byte 0x79206D6F
	.4byte 0x64650A00
	.4byte 0x63616E27
	.4byte 0x74206F70
	.4byte 0x656E2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206173
	.4byte 0x20575249
	.4byte 0x5445206D
	.4byte 0x6F64653B
	.4byte 0x20616E6F
	.4byte 0x74686572
	.4byte 0x20726563
	.4byte 0x6F726420
	.4byte 0x64697363
	.4byte 0x72697074
	.4byte 0x6572206F
	.4byte 0x70656E65
	.4byte 0x64207468
	.4byte 0x65207265
	.4byte 0x636F7264
	.4byte 0x20617320
	.4byte 0x57524954
	.4byte 0x45206D6F
	.4byte 0x64650A00
	.4byte 0x63616E27
	.4byte 0x74206F70
	.4byte 0x656E2074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206173
	.4byte 0x20575249
	.4byte 0x5445206D
	.4byte 0x6F64653B
	.4byte 0x206F7468
	.4byte 0x65722072
	.4byte 0x65636F72
	.4byte 0x64206469
	.4byte 0x73637269
	.4byte 0x70746572
	.4byte 0x28732920
	.4byte 0x6F70656E
	.4byte 0x65642074
	.4byte 0x68652072
	.4byte 0x65636F72
	.4byte 0x64206173
	.4byte 0x20524541
	.4byte 0x44206D6F
	.4byte 0x6465200A
	.4byte 0x00000000
	.4byte 0x63616E27
	.4byte 0x74206F70
	.4byte 0x656E2072
	.4byte 0x65636F72
	.4byte 0x6420616E
	.4byte 0x79206D6F
	.4byte 0x72650A00
	.4byte 0x6661696C
	.4byte 0x6564204E
	.4byte 0x414E4443
	.4byte 0x6865636B
	.4byte 0x0A000000
	.4byte 0x28434442
	.4byte 0x2920696E
	.4byte 0x666F203A
	.4byte 0x20000000
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F206372
	.4byte 0x65617465
	.4byte 0x20636462
	.4byte 0x77696969
	.4byte 0x642E6461
	.4byte 0x740A0000
	.4byte 0x63646277
	.4byte 0x69696964
	.4byte 0x2E646174
	.4byte 0x20686173
	.4byte 0x20626565
	.4byte 0x6E206372
	.4byte 0x65617465
	.4byte 0x64207375
	.4byte 0x63636573
	.4byte 0x7366756C
	.4byte 0x6C790A00
	.4byte 0x63646277
	.4byte 0x69696964
	.4byte 0x2E646174
	.4byte 0x82AA89F3
	.4byte 0x82EA82C4
	.4byte 0x82A282E9
	.4byte 0x82A98CC3
	.4byte 0x82A28374
	.4byte 0x8348815B
	.4byte 0x837D8362
	.4byte 0x836782C5
	.4byte 0x82B70A00
	.4byte 0x63646277
	.4byte 0x69696964
	.4byte 0x2E646174
	.4byte 0x82F08E67
	.4byte 0x977082B5
	.4byte 0x82DC82B7
	.4byte 0x0A000000
	.4byte 0x4E434447
	.4byte 0x65745769
	.4byte 0x72656C65
	.4byte 0x73734D61
	.4byte 0x63416464
	.4byte 0x72657373
	.4byte 0x20666169
	.4byte 0x6C65640A
	.4byte 0x00000000
	.4byte 0x4D414383
	.4byte 0x6E836283
	.4byte 0x56838532
	.4byte 0x30836F83
	.4byte 0x43836720
	.4byte 0x2B20835B
	.4byte 0x838D3230
	.4byte 0x836F8343
	.4byte 0x8367203D
	.4byte 0x207B0A00
	.4byte 0x28434442
	.4byte 0x29204E41
	.4byte 0x4E444765
	.4byte 0x74486F6D
	.4byte 0x65446972
	.4byte 0x28293A20
	.4byte 0x6572726F
	.4byte 0x72202564
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x28434442
	.4byte 0x29204E41
	.4byte 0x4E444765
	.4byte 0x74537461
	.4byte 0x74757328
	.4byte 0x293A2065
	.4byte 0x72726F72
	.4byte 0x20256400
.endobj lbl_8166C818

# 0x81697A48..0x81697A60 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697A48 | size: 0x8
.obj lbl_81697A48, global
	.4byte 0x25303258
	.4byte 0x20000000
.endobj lbl_81697A48

# .sdata:0x8 | 0x81697A50 | size: 0x4
.obj lbl_81697A50, global
	.4byte 0x0A000000
.endobj lbl_81697A50

# .sdata:0xC | 0x81697A54 | size: 0x4
.obj lbl_81697A54, global
	.string "};\n"
.endobj lbl_81697A54

# .sdata:0x10 | 0x81697A58 | size: 0x4
.obj lbl_81697A58, global
	.4byte 0x00000001
.endobj lbl_81697A58

# .sdata:0x14 | 0x81697A5C | size: 0x4
.obj lbl_81697A5C, global
	.string "CDB"
.endobj lbl_81697A5C

# 0x81698D78..0x81698D98 | size: 0x20
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698D78 | size: 0x4
.obj lbl_81698D78, global
	.skip 0x4
.endobj lbl_81698D78

# .sbss:0x4 | 0x81698D7C | size: 0x4
.obj lbl_81698D7C, global
	.skip 0x4
.endobj lbl_81698D7C

# .sbss:0x8 | 0x81698D80 | size: 0x4
.obj lbl_81698D80, global
	.skip 0x4
.endobj lbl_81698D80

# .sbss:0xC | 0x81698D84 | size: 0x4
.obj lbl_81698D84, global
	.skip 0x4
.endobj lbl_81698D84

# .sbss:0x10 | 0x81698D88 | size: 0x4
.obj lbl_81698D88, global
	.skip 0x4
.endobj lbl_81698D88

# .sbss:0x14 | 0x81698D8C | size: 0x4
.obj lbl_81698D8C, global
	.skip 0x4
.endobj lbl_81698D8C

# .sbss:0x18 | 0x81698D90 | size: 0x4
.obj lbl_81698D90, global
	.skip 0x4
.endobj lbl_81698D90

# .sbss:0x1C | 0x81698D94 | size: 0x4
.obj lbl_81698D94, global
	.skip 0x4
.endobj lbl_81698D94
