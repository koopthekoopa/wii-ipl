.include "macros.inc"
.file "BS2Update.c"

# 0x810B1580..0x810B38E0 | size: 0x2360
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B1580 | size: 0x2360
.obj BS2Update_810B1580, local
	.skip 0x2360
.endobj BS2Update_810B1580

# 0x8137F208..0x813801DC | size: 0xFD4
.text
.balign 4

# .text:0x0 | 0x8137F208 | size: 0x30
.fn getSuffix, local
/* 8137F208 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137F20C | 7C 08 02 A6 */	mflr r0
/* 8137F210 | 38 80 00 2E */	li r4, 0x2e
/* 8137F214 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137F218 | 48 28 33 F5 */	bl strrchr
/* 8137F21C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F220 | 41 82 00 08 */	beq .L_8137F228
/* 8137F224 | 38 63 00 01 */	addi r3, r3, 0x1
.L_8137F228:
/* 8137F228 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137F22C | 7C 08 03 A6 */	mtlr r0
/* 8137F230 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137F234 | 4E 80 00 20 */	blr
.endfn getSuffix

# .text:0x30 | 0x8137F238 | size: 0x120
.fn BS2UpdateInit, global
/* 8137F238 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137F23C | 7C 08 02 A6 */	mflr r0
/* 8137F240 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137F244 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137F248 | 48 27 A2 81 */	bl _savegpr_29
/* 8137F24C | 3F E0 81 64 */	lis r31, lbl_81646978@ha
/* 8137F250 | 3F C0 81 0B */	lis r30, BS2Update_810B1580@ha
/* 8137F254 | 3B FF 69 78 */	addi r31, r31, lbl_81646978@l
/* 8137F258 | 7C 7D 1B 78 */	mr r29, r3
/* 8137F25C | 3B DE 15 80 */	addi r30, r30, BS2Update_810B1580@l
/* 8137F260 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8137F264 | 4C C6 31 82 */	crclr cr1eq
/* 8137F268 | 4B FF BD 4D */	bl BS2Report
/* 8137F26C | 48 1A C3 E5 */	bl fn_8152B650
/* 8137F270 | 90 6D AB 00 */	stw r3, ConsoleType@sda21(r0)
/* 8137F274 | 48 1A C3 65 */	bl fn_8152B5D8
/* 8137F278 | 90 6D AA FC */	stw r3, VersionES@sda21(r0)
/* 8137F27C | 48 1B 20 85 */	bl fn_81531300
/* 8137F280 | 90 6D AA F8 */	stw r3, VersionMEM2@sda21(r0)
/* 8137F284 | 38 6D AA F0 */	li r3, VersionIOS@sda21
/* 8137F288 | 48 1A C3 5D */	bl fn_8152B5E4
/* 8137F28C | 80 8D AB 00 */	lwz r4, ConsoleType@sda21(r0)
/* 8137F290 | 38 7F 00 16 */	addi r3, r31, 0x16
/* 8137F294 | 4C C6 31 82 */	crclr cr1eq
/* 8137F298 | 4B FF BD 1D */	bl BS2Report
/* 8137F29C | 80 8D AA FC */	lwz r4, VersionES@sda21(r0)
/* 8137F2A0 | 38 7F 00 2C */	addi r3, r31, 0x2c
/* 8137F2A4 | 4C C6 31 82 */	crclr cr1eq
/* 8137F2A8 | 4B FF BD 0D */	bl BS2Report
/* 8137F2AC | 80 8D AA F8 */	lwz r4, VersionMEM2@sda21(r0)
/* 8137F2B0 | 38 7F 00 42 */	addi r3, r31, 0x42
/* 8137F2B4 | 4C C6 31 82 */	crclr cr1eq
/* 8137F2B8 | 4B FF BC FD */	bl BS2Report
/* 8137F2BC | 38 00 00 00 */	li r0, 0x0
/* 8137F2C0 | 93 AD AA C4 */	stw r29, Allocator@sda21(r0)
/* 8137F2C4 | 3C 60 80 48 */	lis r3, 0x8048
/* 8137F2C8 | 38 80 00 00 */	li r4, 0x0
/* 8137F2CC | 90 0D AA C8 */	stw r0, State@sda21(r0)
/* 8137F2D0 | 3C A0 00 04 */	lis r5, 0x4
/* 8137F2D4 | 90 0D AA CC */	stw r0, CurrentEntry@sda21(r0)
/* 8137F2D8 | 90 0D AA B8 */	stw r0, PtrEntries@sda21(r0)
/* 8137F2DC | 90 0D AA BC */	stw r0, NumEntries@sda21(r0)
/* 8137F2E0 | 4B FB 10 55 */	bl memset
/* 8137F2E4 | 3C 60 80 4C */	lis r3, 0x804c
/* 8137F2E8 | 38 80 00 00 */	li r4, 0x0
/* 8137F2EC | 3C A0 00 04 */	lis r5, 0x4
/* 8137F2F0 | 4B FB 10 45 */	bl memset
/* 8137F2F4 | 38 7E 08 00 */	addi r3, r30, 0x800
/* 8137F2F8 | 38 80 00 00 */	li r4, 0x0
/* 8137F2FC | 38 A0 08 00 */	li r5, 0x800
/* 8137F300 | 4B FB 10 35 */	bl memset
/* 8137F304 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 8137F308 | 4C C6 31 82 */	crclr cr1eq
/* 8137F30C | 4B FF BC A9 */	bl BS2Report
/* 8137F310 | 38 DE 13 18 */	addi r6, r30, 0x1318
/* 8137F314 | 3C 80 81 38 */	lis r4, UpdateThread@ha
/* 8137F318 | 38 7E 10 00 */	addi r3, r30, 0x1000
/* 8137F31C | 38 A0 00 00 */	li r5, 0x0
/* 8137F320 | 38 84 F3 58 */	addi r4, r4, UpdateThread@l
/* 8137F324 | 38 C6 10 00 */	addi r6, r6, 0x1000
/* 8137F328 | 38 E0 10 00 */	li r7, 0x1000
/* 8137F32C | 39 00 00 1F */	li r8, 0x1f
/* 8137F330 | 39 20 00 01 */	li r9, 0x1
/* 8137F334 | 48 1B 52 15 */	bl OSCreateThread
/* 8137F338 | 38 7E 10 00 */	addi r3, r30, 0x1000
/* 8137F33C | 48 1B 59 15 */	bl OSResumeThread
/* 8137F340 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137F344 | 48 27 A1 D1 */	bl _restgpr_29
/* 8137F348 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137F34C | 7C 08 03 A6 */	mtlr r0
/* 8137F350 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8137F354 | 4E 80 00 20 */	blr
.endfn BS2UpdateInit

# .text:0x150 | 0x8137F358 | size: 0xE44
.fn UpdateThread, local
/* 8137F358 | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8137F35C | 7C 08 02 A6 */	mflr r0
/* 8137F360 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8137F364 | 39 61 00 F0 */	addi r11, r1, 0xf0
/* 8137F368 | 48 27 A1 25 */	bl _savegpr_14
/* 8137F36C | 3E C0 81 64 */	lis r22, lbl_81646978@ha
/* 8137F370 | 3E A0 81 0B */	lis r21, BS2Update_810B1580@ha
/* 8137F374 | 3A D6 69 78 */	addi r22, r22, lbl_81646978@l
/* 8137F378 | 3A B5 15 80 */	addi r21, r21, BS2Update_810B1580@l
/* 8137F37C | 38 76 00 6E */	addi r3, r22, 0x6e
/* 8137F380 | 4C C6 31 82 */	crclr cr1eq
/* 8137F384 | 4B FF BC 31 */	bl BS2Report
/* 8137F388 | 39 E0 00 00 */	li r15, 0x0
/* 8137F38C | 38 00 00 00 */	li r0, 0x0
/* 8137F390 | 90 0D AA E0 */	stw r0, StartUpdate@sda21(r0)
/* 8137F394 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8137F398 | 3A 20 00 00 */	li r17, 0x0
/* 8137F39C | 3B C0 00 00 */	li r30, 0x0
/* 8137F3A0 | 90 0D AA E4 */	stw r0, CancelUpdate@sda21(r0)
/* 8137F3A4 | 3A 40 00 00 */	li r18, 0x0
/* 8137F3A8 | 3A 60 00 00 */	li r19, 0x0
/* 8137F3AC | 3A 80 00 00 */	li r20, 0x0
/* 8137F3B0 | 91 E1 00 08 */	stw r15, 0x8(r1)
/* 8137F3B4 | 3B E0 00 00 */	li r31, 0x0
/* 8137F3B8 | 91 E1 00 0C */	stw r15, 0xc(r1)
/* 8137F3BC | 91 E1 00 10 */	stw r15, 0x10(r1)
/* 8137F3C0 | 90 0D AA C8 */	stw r0, State@sda21(r0)
/* 8137F3C4 | 90 0D AA D4 */	stw r0, lbl_81698B14@sda21(r0)
/* 8137F3C8 | 48 23 FA 59 */	bl fn_815BEE20
/* 8137F3CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F3D0 | 41 82 00 0C */	beq .L_8137F3DC
/* 8137F3D4 | 38 00 00 00 */	li r0, 0x0
/* 8137F3D8 | 48 00 00 A0 */	b .L_8137F478
.L_8137F3DC:
/* 8137F3DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137F3E0 | 54 0E 06 3E */	clrlwi r14, r0, 24
/* 8137F3E4 | 48 1E B6 E9 */	bl SCGetProductArea
/* 8137F3E8 | 7C 60 07 74 */	extsb r0, r3
/* 8137F3EC | 28 00 00 0B */	cmplwi r0, 0xb
/* 8137F3F0 | 41 81 00 84 */	bgt .L_8137F474
/* 8137F3F4 | 3C 60 81 64 */	lis r3, jumptable_81646E78@ha
/* 8137F3F8 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137F3FC | 38 63 6E 78 */	addi r3, r3, jumptable_81646E78@l
/* 8137F400 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8137F404 | 7C 69 03 A6 */	mtctr r3
/* 8137F408 | 4E 80 04 20 */	bctr
.L_8137F40C:
/* 8137F40C | 28 0E 00 4A */	cmplwi r14, 0x4a
/* 8137F410 | 41 82 00 0C */	beq .L_8137F41C
/* 8137F414 | 28 0E 00 44 */	cmplwi r14, 0x44
/* 8137F418 | 40 82 00 5C */	bne .L_8137F474
.L_8137F41C:
/* 8137F41C | 38 00 00 01 */	li r0, 0x1
/* 8137F420 | 48 00 00 58 */	b .L_8137F478
.L_8137F424:
/* 8137F424 | 28 0E 00 45 */	cmplwi r14, 0x45
/* 8137F428 | 41 82 00 0C */	beq .L_8137F434
/* 8137F42C | 28 0E 00 44 */	cmplwi r14, 0x44
/* 8137F430 | 40 82 00 44 */	bne .L_8137F474
.L_8137F434:
/* 8137F434 | 38 00 00 01 */	li r0, 0x1
/* 8137F438 | 48 00 00 40 */	b .L_8137F478
.L_8137F43C:
/* 8137F43C | 28 0E 00 50 */	cmplwi r14, 0x50
/* 8137F440 | 41 82 00 0C */	beq .L_8137F44C
/* 8137F444 | 28 0E 00 44 */	cmplwi r14, 0x44
/* 8137F448 | 40 82 00 2C */	bne .L_8137F474
.L_8137F44C:
/* 8137F44C | 38 00 00 01 */	li r0, 0x1
/* 8137F450 | 48 00 00 28 */	b .L_8137F478
.L_8137F454:
/* 8137F454 | 28 0E 00 4B */	cmplwi r14, 0x4b
/* 8137F458 | 40 82 00 1C */	bne .L_8137F474
/* 8137F45C | 38 00 00 01 */	li r0, 0x1
/* 8137F460 | 48 00 00 18 */	b .L_8137F478
.L_8137F464:
/* 8137F464 | 28 0E 00 43 */	cmplwi r14, 0x43
/* 8137F468 | 40 82 00 0C */	bne .L_8137F474
/* 8137F46C | 38 00 00 01 */	li r0, 0x1
/* 8137F470 | 48 00 00 08 */	b .L_8137F478
.L_8137F474:
/* 8137F474 | 38 00 00 00 */	li r0, 0x0
.L_8137F478:
/* 8137F478 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137F47C | 40 82 00 18 */	bne .L_8137F494
/* 8137F480 | 38 76 00 83 */	addi r3, r22, 0x83
/* 8137F484 | 4C C6 31 82 */	crclr cr1eq
/* 8137F488 | 4B FF BB 2D */	bl BS2Report
/* 8137F48C | 3A 20 00 00 */	li r17, 0x0
/* 8137F490 | 48 00 09 A4 */	b .L_8137FE34
.L_8137F494:
/* 8137F494 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8137F498 | 38 80 00 08 */	li r4, 0x8
/* 8137F49C | 48 1E B6 21 */	bl SCGetProductAreaString
/* 8137F4A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F4A4 | 40 82 00 18 */	bne .L_8137F4BC
/* 8137F4A8 | 38 76 00 AA */	addi r3, r22, 0xaa
/* 8137F4AC | 4C C6 31 82 */	crclr cr1eq
/* 8137F4B0 | 4B FF BB 05 */	bl BS2Report
/* 8137F4B4 | 3A 20 00 00 */	li r17, 0x0
/* 8137F4B8 | 48 00 09 7C */	b .L_8137FE34
.L_8137F4BC:
/* 8137F4BC | 38 61 00 28 */	addi r3, r1, 0x28
/* 8137F4C0 | 38 96 00 D4 */	addi r4, r22, 0xd4
/* 8137F4C4 | 48 28 2E 41 */	bl strcpy
/* 8137F4C8 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8137F4CC | 38 8D 85 58 */	li r4, lbl_81696598@sda21
/* 8137F4D0 | 48 28 2F 39 */	bl strcat
/* 8137F4D4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8137F4D8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8137F4DC | 48 28 2F 2D */	bl strcat
/* 8137F4E0 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8137F4E4 | 48 1C 94 CD */	bl DVDConvertPathToEntrynum
/* 8137F4E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F4EC | 40 80 00 7C */	bge .L_8137F568
/* 8137F4F0 | 48 1E B5 DD */	bl SCGetProductArea
/* 8137F4F4 | 7C 60 07 74 */	extsb r0, r3
/* 8137F4F8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8137F4FC | 41 82 00 28 */	beq .L_8137F524
/* 8137F500 | 40 80 00 18 */	bge .L_8137F518
/* 8137F504 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8137F508 | 40 80 00 4C */	bge .L_8137F554
/* 8137F50C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137F510 | 40 80 00 14 */	bge .L_8137F524
/* 8137F514 | 48 00 00 40 */	b .L_8137F554
.L_8137F518:
/* 8137F518 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 8137F51C | 41 82 00 08 */	beq .L_8137F524
/* 8137F520 | 48 00 00 34 */	b .L_8137F554
.L_8137F524:
/* 8137F524 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8137F528 | 38 96 00 D4 */	addi r4, r22, 0xd4
/* 8137F52C | 48 28 2D D9 */	bl strcpy
/* 8137F530 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8137F534 | 48 1C 94 7D */	bl DVDConvertPathToEntrynum
/* 8137F538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F53C | 40 80 00 2C */	bge .L_8137F568
/* 8137F540 | 38 76 00 E1 */	addi r3, r22, 0xe1
/* 8137F544 | 4C C6 31 82 */	crclr cr1eq
/* 8137F548 | 4B FF BA 6D */	bl BS2Report
/* 8137F54C | 3A 20 00 00 */	li r17, 0x0
/* 8137F550 | 48 00 08 E4 */	b .L_8137FE34
.L_8137F554:
/* 8137F554 | 38 76 00 E1 */	addi r3, r22, 0xe1
/* 8137F558 | 4C C6 31 82 */	crclr cr1eq
/* 8137F55C | 4B FF BA 59 */	bl BS2Report
/* 8137F560 | 3A 20 00 00 */	li r17, 0x0
/* 8137F564 | 48 00 08 D0 */	b .L_8137FE34
.L_8137F568:
/* 8137F568 | 38 76 01 0E */	addi r3, r22, 0x10e
/* 8137F56C | 38 81 00 28 */	addi r4, r1, 0x28
/* 8137F570 | 4C C6 31 82 */	crclr cr1eq
/* 8137F574 | 4B FF BA 41 */	bl BS2Report
/* 8137F578 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8137F57C | 38 81 00 68 */	addi r4, r1, 0x68
/* 8137F580 | 48 1C 97 C1 */	bl fn_81548D40
/* 8137F584 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F588 | 40 82 00 18 */	bne .L_8137F5A0
/* 8137F58C | 38 76 01 1C */	addi r3, r22, 0x11c
/* 8137F590 | 4C C6 31 82 */	crclr cr1eq
/* 8137F594 | 4B FF BA 21 */	bl BS2Report
/* 8137F598 | 3A 20 00 00 */	li r17, 0x0
/* 8137F59C | 48 00 08 98 */	b .L_8137FE34
.L_8137F5A0:
/* 8137F5A0 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8137F5A4 | 38 95 23 20 */	addi r4, r21, 0x2320
/* 8137F5A8 | 38 A0 00 20 */	li r5, 0x20
/* 8137F5AC | 38 C0 00 00 */	li r6, 0x0
/* 8137F5B0 | 38 E0 00 02 */	li r7, 0x2
/* 8137F5B4 | 48 1C 9D 05 */	bl DVDReadPrio
/* 8137F5B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F5BC | 40 80 00 18 */	bge .L_8137F5D4
/* 8137F5C0 | 38 76 01 4B */	addi r3, r22, 0x14b
/* 8137F5C4 | 4C C6 31 82 */	crclr cr1eq
/* 8137F5C8 | 4B FF B9 ED */	bl BS2Report
/* 8137F5CC | 3A 20 00 00 */	li r17, 0x0
/* 8137F5D0 | 48 00 08 64 */	b .L_8137FE34
.L_8137F5D4:
/* 8137F5D4 | 3A F5 23 20 */	addi r23, r21, 0x2320
/* 8137F5D8 | 80 77 00 10 */	lwz r3, 0x10(r23)
/* 8137F5DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F5E0 | 40 82 00 18 */	bne .L_8137F5F8
/* 8137F5E4 | 38 76 01 7C */	addi r3, r22, 0x17c
/* 8137F5E8 | 4C C6 31 82 */	crclr cr1eq
/* 8137F5EC | 4B FF B9 C9 */	bl BS2Report
/* 8137F5F0 | 3A 20 00 00 */	li r17, 0x0
/* 8137F5F4 | 48 00 08 40 */	b .L_8137FE34
.L_8137F5F8:
/* 8137F5F8 | 28 03 00 20 */	cmplwi r3, 0x20
/* 8137F5FC | 40 81 00 18 */	ble .L_8137F614
/* 8137F600 | 38 76 01 8D */	addi r3, r22, 0x18d
/* 8137F604 | 4C C6 31 82 */	crclr cr1eq
/* 8137F608 | 4B FF B9 AD */	bl BS2Report
/* 8137F60C | 3A 20 00 00 */	li r17, 0x0
/* 8137F610 | 48 00 08 24 */	b .L_8137FE34
.L_8137F614:
/* 8137F614 | 80 17 00 14 */	lwz r0, 0x14(r23)
/* 8137F618 | 7C 03 02 14 */	add r0, r3, r0
/* 8137F61C | 28 00 02 00 */	cmplwi r0, 0x200
/* 8137F620 | 90 17 00 10 */	stw r0, 0x10(r23)
/* 8137F624 | 40 81 00 18 */	ble .L_8137F63C
/* 8137F628 | 38 76 01 AC */	addi r3, r22, 0x1ac
/* 8137F62C | 4C C6 31 82 */	crclr cr1eq
/* 8137F630 | 4B FF B9 85 */	bl BS2Report
/* 8137F634 | 3A 20 00 00 */	li r17, 0x0
/* 8137F638 | 48 00 07 FC */	b .L_8137FE34
.L_8137F63C:
/* 8137F63C | 38 61 00 68 */	addi r3, r1, 0x68
/* 8137F640 | 54 05 48 2C */	slwi r5, r0, 9
/* 8137F644 | 3C 80 80 48 */	lis r4, 0x8048
/* 8137F648 | 38 C0 00 20 */	li r6, 0x20
/* 8137F64C | 38 E0 00 02 */	li r7, 0x2
/* 8137F650 | 48 1C 9C 69 */	bl DVDReadPrio
/* 8137F654 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F658 | 40 80 00 18 */	bge .L_8137F670
/* 8137F65C | 38 76 01 D1 */	addi r3, r22, 0x1d1
/* 8137F660 | 4C C6 31 82 */	crclr cr1eq
/* 8137F664 | 4B FF B9 51 */	bl BS2Report
/* 8137F668 | 3A 20 00 00 */	li r17, 0x0
/* 8137F66C | 48 00 07 C8 */	b .L_8137FE34
.L_8137F670:
/* 8137F670 | 3B 75 08 00 */	addi r27, r21, 0x800
/* 8137F674 | 3A 00 00 00 */	li r16, 0x0
/* 8137F678 | 3B A0 00 00 */	li r29, 0x0
/* 8137F67C | 3B 80 00 00 */	li r28, 0x0
/* 8137F680 | 3F 20 04 00 */	lis r25, 0x400
/* 8137F684 | 3F 00 08 00 */	lis r24, 0x800
/* 8137F688 | 3F 40 80 48 */	lis r26, 0x8048
/* 8137F68C | 39 C0 00 00 */	li r14, 0x0
/* 8137F690 | 48 00 01 44 */	b .L_8137F7D4
.L_8137F694:
/* 8137F694 | 7C 7A EA 14 */	add r3, r26, r29
/* 8137F698 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137F69C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8137F6A0 | 41 82 01 28 */	beq .L_8137F7C8
/* 8137F6A4 | 48 1B 1C 5D */	bl fn_81531300
/* 8137F6A8 | 7C 03 C0 00 */	cmpw r3, r24
/* 8137F6AC | 41 82 00 28 */	beq .L_8137F6D4
/* 8137F6B0 | 40 80 00 38 */	bge .L_8137F6E8
/* 8137F6B4 | 7C 03 C8 00 */	cmpw r3, r25
/* 8137F6B8 | 41 82 00 08 */	beq .L_8137F6C0
/* 8137F6BC | 48 00 00 2C */	b .L_8137F6E8
.L_8137F6C0:
/* 8137F6C0 | 7C 7A EA 14 */	add r3, r26, r29
/* 8137F6C4 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8137F6C8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8137F6CC | 41 82 00 FC */	beq .L_8137F7C8
/* 8137F6D0 | 48 00 00 34 */	b .L_8137F704
.L_8137F6D4:
/* 8137F6D4 | 7C 7A EA 14 */	add r3, r26, r29
/* 8137F6D8 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8137F6DC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8137F6E0 | 41 82 00 E8 */	beq .L_8137F7C8
/* 8137F6E4 | 48 00 00 20 */	b .L_8137F704
.L_8137F6E8:
/* 8137F6E8 | 38 76 01 FB */	addi r3, r22, 0x1fb
/* 8137F6EC | 4C C6 31 82 */	crclr cr1eq
/* 8137F6F0 | 4B FF B8 C5 */	bl BS2Report
/* 8137F6F4 | 38 00 00 05 */	li r0, 0x5
/* 8137F6F8 | 3A 20 00 00 */	li r17, 0x0
/* 8137F6FC | 90 0D AA C8 */	stw r0, State@sda21(r0)
/* 8137F700 | 48 00 07 34 */	b .L_8137FE34
.L_8137F704:
/* 8137F704 | 7C 7A EA 14 */	add r3, r26, r29
/* 8137F708 | 38 81 00 68 */	addi r4, r1, 0x68
/* 8137F70C | 38 63 00 10 */	addi r3, r3, 0x10
/* 8137F710 | 48 1C 96 31 */	bl fn_81548D40
/* 8137F714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F718 | 40 80 00 20 */	bge .L_8137F738
/* 8137F71C | 7C 9A EA 14 */	add r4, r26, r29
/* 8137F720 | 38 76 02 1A */	addi r3, r22, 0x21a
/* 8137F724 | 38 84 00 10 */	addi r4, r4, 0x10
/* 8137F728 | 4C C6 31 82 */	crclr cr1eq
/* 8137F72C | 4B FF B8 89 */	bl BS2Report
/* 8137F730 | 39 E0 00 01 */	li r15, 0x1
/* 8137F734 | 48 00 00 94 */	b .L_8137F7C8
.L_8137F738:
/* 8137F738 | 80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8137F73C | 7C BA EA 14 */	add r5, r26, r29
/* 8137F740 | 90 05 00 08 */	stw r0, 0x8(r5)
/* 8137F744 | 7C 1A E8 2E */	lwzx r0, r26, r29
/* 8137F748 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137F74C | 40 82 00 10 */	bne .L_8137F75C
/* 8137F750 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 8137F754 | 3B DE 02 00 */	addi r30, r30, 0x200
/* 8137F758 | 48 00 00 70 */	b .L_8137F7C8
.L_8137F75C:
/* 8137F75C | 80 65 00 50 */	lwz r3, 0x50(r5)
/* 8137F760 | 80 85 00 54 */	lwz r4, 0x54(r5)
/* 8137F764 | A0 A5 00 58 */	lhz r5, 0x58(r5)
/* 8137F768 | 48 24 01 E5 */	bl fn_815BF94C
/* 8137F76C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F770 | 40 82 00 20 */	bne .L_8137F790
/* 8137F774 | 7C 9A EA 14 */	add r4, r26, r29
/* 8137F778 | 38 76 02 2B */	addi r3, r22, 0x22b
/* 8137F77C | 38 84 00 10 */	addi r4, r4, 0x10
/* 8137F780 | 4C C6 31 82 */	crclr cr1eq
/* 8137F784 | 4B FF B8 31 */	bl BS2Report
/* 8137F788 | 7D DB E1 2E */	stwx r14, r27, r28
/* 8137F78C | 48 00 00 3C */	b .L_8137F7C8
.L_8137F790:
/* 8137F790 | 7C 9A EA 14 */	add r4, r26, r29
/* 8137F794 | 38 6D 85 5A */	li r3, lbl_8169659A@sda21
/* 8137F798 | 38 84 00 10 */	addi r4, r4, 0x10
/* 8137F79C | 4C C6 31 82 */	crclr cr1eq
/* 8137F7A0 | 4B FF B8 15 */	bl BS2Report
/* 8137F7A4 | 3C 00 80 4C */	lis r0, 0x804c
/* 8137F7A8 | 7C 9A EA 14 */	add r4, r26, r29
/* 8137F7AC | 7C 60 F2 14 */	add r3, r0, r30
/* 8137F7B0 | 38 A0 02 00 */	li r5, 0x200
/* 8137F7B4 | 4B FB 0A 7D */	bl memcpy
/* 8137F7B8 | 38 00 00 01 */	li r0, 0x1
/* 8137F7BC | 3A 31 00 01 */	addi r17, r17, 0x1
/* 8137F7C0 | 7C 1B E1 2E */	stwx r0, r27, r28
/* 8137F7C4 | 3B DE 02 00 */	addi r30, r30, 0x200
.L_8137F7C8:
/* 8137F7C8 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 8137F7CC | 3B BD 02 00 */	addi r29, r29, 0x200
/* 8137F7D0 | 3B 9C 00 04 */	addi r28, r28, 0x4
.L_8137F7D4:
/* 8137F7D4 | 80 17 00 10 */	lwz r0, 0x10(r23)
/* 8137F7D8 | 7C 10 00 40 */	cmplw r16, r0
/* 8137F7DC | 41 80 FE B8 */	blt .L_8137F694
/* 8137F7E0 | 38 61 00 48 */	addi r3, r1, 0x48
/* 8137F7E4 | 38 96 02 44 */	addi r4, r22, 0x244
/* 8137F7E8 | 48 28 2B 1D */	bl strcpy
/* 8137F7EC | 38 61 00 48 */	addi r3, r1, 0x48
/* 8137F7F0 | 38 8D 85 58 */	li r4, lbl_81696598@sda21
/* 8137F7F4 | 48 28 2C 15 */	bl strcat
/* 8137F7F8 | 38 61 00 48 */	addi r3, r1, 0x48
/* 8137F7FC | 38 81 00 18 */	addi r4, r1, 0x18
/* 8137F800 | 48 28 2C 09 */	bl strcat
/* 8137F804 | 38 61 00 48 */	addi r3, r1, 0x48
/* 8137F808 | 48 1C 91 A9 */	bl DVDConvertPathToEntrynum
/* 8137F80C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F810 | 40 80 00 74 */	bge .L_8137F884
/* 8137F814 | 48 1E B2 B9 */	bl SCGetProductArea
/* 8137F818 | 7C 60 07 74 */	extsb r0, r3
/* 8137F81C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8137F820 | 41 82 00 28 */	beq .L_8137F848
/* 8137F824 | 40 80 00 18 */	bge .L_8137F83C
/* 8137F828 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8137F82C | 40 80 00 48 */	bge .L_8137F874
/* 8137F830 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137F834 | 40 80 00 14 */	bge .L_8137F848
/* 8137F838 | 48 00 00 3C */	b .L_8137F874
.L_8137F83C:
/* 8137F83C | 2C 00 00 0B */	cmpwi r0, 0xb
/* 8137F840 | 41 82 00 08 */	beq .L_8137F848
/* 8137F844 | 48 00 00 30 */	b .L_8137F874
.L_8137F848:
/* 8137F848 | 38 61 00 48 */	addi r3, r1, 0x48
/* 8137F84C | 38 96 02 44 */	addi r4, r22, 0x244
/* 8137F850 | 48 28 2A B5 */	bl strcpy
/* 8137F854 | 38 61 00 48 */	addi r3, r1, 0x48
/* 8137F858 | 48 1C 91 59 */	bl DVDConvertPathToEntrynum
/* 8137F85C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F860 | 40 80 00 24 */	bge .L_8137F884
/* 8137F864 | 38 76 02 55 */	addi r3, r22, 0x255
/* 8137F868 | 4C C6 31 82 */	crclr cr1eq
/* 8137F86C | 4B FF B7 49 */	bl BS2Report
/* 8137F870 | 48 00 04 D4 */	b .L_8137FD44
.L_8137F874:
/* 8137F874 | 38 76 02 55 */	addi r3, r22, 0x255
/* 8137F878 | 4C C6 31 82 */	crclr cr1eq
/* 8137F87C | 4B FF B7 39 */	bl BS2Report
/* 8137F880 | 48 00 04 C4 */	b .L_8137FD44
.L_8137F884:
/* 8137F884 | 38 76 01 0E */	addi r3, r22, 0x10e
/* 8137F888 | 38 81 00 48 */	addi r4, r1, 0x48
/* 8137F88C | 4C C6 31 82 */	crclr cr1eq
/* 8137F890 | 4B FF B7 25 */	bl BS2Report
/* 8137F894 | 38 61 00 48 */	addi r3, r1, 0x48
/* 8137F898 | 38 81 00 68 */	addi r4, r1, 0x68
/* 8137F89C | 48 1C 94 A5 */	bl fn_81548D40
/* 8137F8A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F8A4 | 40 82 00 14 */	bne .L_8137F8B8
/* 8137F8A8 | 38 76 01 1C */	addi r3, r22, 0x11c
/* 8137F8AC | 4C C6 31 82 */	crclr cr1eq
/* 8137F8B0 | 4B FF B7 05 */	bl BS2Report
/* 8137F8B4 | 48 00 04 90 */	b .L_8137FD44
.L_8137F8B8:
/* 8137F8B8 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8137F8BC | 38 95 23 40 */	addi r4, r21, 0x2340
/* 8137F8C0 | 38 A0 00 20 */	li r5, 0x20
/* 8137F8C4 | 38 C0 00 00 */	li r6, 0x0
/* 8137F8C8 | 38 E0 00 02 */	li r7, 0x2
/* 8137F8CC | 48 1C 99 ED */	bl DVDReadPrio
/* 8137F8D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F8D4 | 40 80 00 14 */	bge .L_8137F8E8
/* 8137F8D8 | 38 76 01 4B */	addi r3, r22, 0x14b
/* 8137F8DC | 4C C6 31 82 */	crclr cr1eq
/* 8137F8E0 | 4B FF B6 D5 */	bl BS2Report
/* 8137F8E4 | 48 00 04 60 */	b .L_8137FD44
.L_8137F8E8:
/* 8137F8E8 | 3B 95 23 40 */	addi r28, r21, 0x2340
/* 8137F8EC | 80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8137F8F0 | 80 9C 00 14 */	lwz r4, 0x14(r28)
/* 8137F8F4 | 7C A0 23 79 */	or. r0, r5, r4
/* 8137F8F8 | 40 82 00 14 */	bne .L_8137F90C
/* 8137F8FC | 38 76 01 7C */	addi r3, r22, 0x17c
/* 8137F900 | 4C C6 31 82 */	crclr cr1eq
/* 8137F904 | 4B FF B6 B1 */	bl BS2Report
/* 8137F908 | 48 00 04 3C */	b .L_8137FD44
.L_8137F90C:
/* 8137F90C | 38 75 23 20 */	addi r3, r21, 0x2320
/* 8137F910 | 7C A5 22 14 */	add r5, r5, r4
/* 8137F914 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8137F918 | 90 BC 00 10 */	stw r5, 0x10(r28)
/* 8137F91C | 7C 03 2A 14 */	add r0, r3, r5
/* 8137F920 | 28 00 02 00 */	cmplwi r0, 0x200
/* 8137F924 | 40 81 00 14 */	ble .L_8137F938
/* 8137F928 | 38 76 01 AC */	addi r3, r22, 0x1ac
/* 8137F92C | 4C C6 31 82 */	crclr cr1eq
/* 8137F930 | 4B FF B6 85 */	bl BS2Report
/* 8137F934 | 48 00 04 10 */	b .L_8137FD44
.L_8137F938:
/* 8137F938 | 54 63 48 2C */	slwi r3, r3, 9
/* 8137F93C | 3C 00 80 48 */	lis r0, 0x8048
/* 8137F940 | 7F A0 1A 14 */	add r29, r0, r3
/* 8137F944 | 56 26 48 2C */	slwi r6, r17, 9
/* 8137F948 | 3C 00 80 4C */	lis r0, 0x804c
/* 8137F94C | 38 61 00 68 */	addi r3, r1, 0x68
/* 8137F950 | 7F 60 32 14 */	add r27, r0, r6
/* 8137F954 | 7F A4 EB 78 */	mr r4, r29
/* 8137F958 | 54 A5 48 2C */	slwi r5, r5, 9
/* 8137F95C | 38 C0 00 20 */	li r6, 0x20
/* 8137F960 | 38 E0 00 02 */	li r7, 0x2
/* 8137F964 | 48 1C 99 55 */	bl DVDReadPrio
/* 8137F968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137F96C | 40 80 00 14 */	bge .L_8137F980
/* 8137F970 | 38 76 01 D1 */	addi r3, r22, 0x1d1
/* 8137F974 | 4C C6 31 82 */	crclr cr1eq
/* 8137F978 | 4B FF B6 3D */	bl BS2Report
/* 8137F97C | 48 00 03 C8 */	b .L_8137FD44
.L_8137F980:
/* 8137F980 | 3B 15 00 00 */	addi r24, r21, 0x0
/* 8137F984 | 3A 00 00 00 */	li r16, 0x0
/* 8137F988 | 39 C0 00 00 */	li r14, 0x0
/* 8137F98C | 3A E0 00 00 */	li r23, 0x0
/* 8137F990 | 3F C0 08 00 */	lis r30, 0x800
/* 8137F994 | 3B 20 00 00 */	li r25, 0x0
/* 8137F998 | 3B 40 FF FF */	li r26, -0x1
/* 8137F99C | 48 00 02 70 */	b .L_8137FC0C
.L_8137F9A0:
/* 8137F9A0 | 7C 9D 70 2E */	lwzx r4, r29, r14
/* 8137F9A4 | 38 76 02 8D */	addi r3, r22, 0x28d
/* 8137F9A8 | 4C C6 31 82 */	crclr cr1eq
/* 8137F9AC | 48 1A EC F5 */	bl OSReport
/* 8137F9B0 | 7C 9D 72 14 */	add r4, r29, r14
/* 8137F9B4 | 38 76 02 98 */	addi r3, r22, 0x298
/* 8137F9B8 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8137F9BC | 4C C6 31 82 */	crclr cr1eq
/* 8137F9C0 | 48 1A EC E1 */	bl OSReport
/* 8137F9C4 | 7C 9D 72 14 */	add r4, r29, r14
/* 8137F9C8 | 38 76 02 A8 */	addi r3, r22, 0x2a8
/* 8137F9CC | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8137F9D0 | 4C C6 31 82 */	crclr cr1eq
/* 8137F9D4 | 48 1A EC CD */	bl OSReport
/* 8137F9D8 | 7C 9D 72 14 */	add r4, r29, r14
/* 8137F9DC | 38 76 02 B3 */	addi r3, r22, 0x2b3
/* 8137F9E0 | 80 84 00 5C */	lwz r4, 0x5c(r4)
/* 8137F9E4 | 4C C6 31 82 */	crclr cr1eq
/* 8137F9E8 | 48 1A EC B9 */	bl OSReport
/* 8137F9EC | 7C 9D 72 14 */	add r4, r29, r14
/* 8137F9F0 | 38 76 02 C0 */	addi r3, r22, 0x2c0
/* 8137F9F4 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 8137F9F8 | 4C C6 31 82 */	crclr cr1eq
/* 8137F9FC | 48 1A EC A5 */	bl OSReport
/* 8137FA00 | 7C 9D 72 14 */	add r4, r29, r14
/* 8137FA04 | 38 76 02 D1 */	addi r3, r22, 0x2d1
/* 8137FA08 | 4C C6 31 82 */	crclr cr1eq
/* 8137FA0C | 38 84 00 10 */	addi r4, r4, 0x10
/* 8137FA10 | 48 1A EC 91 */	bl OSReport
/* 8137FA14 | 7C 9D 72 14 */	add r4, r29, r14
/* 8137FA18 | 38 76 02 DE */	addi r3, r22, 0x2de
/* 8137FA1C | 80 A4 00 50 */	lwz r5, 0x50(r4)
/* 8137FA20 | 80 C4 00 54 */	lwz r6, 0x54(r4)
/* 8137FA24 | 4C C6 31 82 */	crclr cr1eq
/* 8137FA28 | 48 1A EC 79 */	bl OSReport
/* 8137FA2C | 7C 9D 72 14 */	add r4, r29, r14
/* 8137FA30 | 38 76 02 EE */	addi r3, r22, 0x2ee
/* 8137FA34 | A0 84 00 58 */	lhz r4, 0x58(r4)
/* 8137FA38 | 4C C6 31 82 */	crclr cr1eq
/* 8137FA3C | 48 1A EC 65 */	bl OSReport
/* 8137FA40 | 7C 7D 72 14 */	add r3, r29, r14
/* 8137FA44 | 7F 38 B9 2E */	stwx r25, r24, r23
/* 8137FA48 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137FA4C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8137FA50 | 41 82 01 B0 */	beq .L_8137FC00
/* 8137FA54 | 48 1B 18 AD */	bl fn_81531300
/* 8137FA58 | 7C 03 F0 00 */	cmpw r3, r30
/* 8137FA5C | 41 82 00 2C */	beq .L_8137FA88
/* 8137FA60 | 40 80 00 3C */	bge .L_8137FA9C
/* 8137FA64 | 3C 00 04 00 */	lis r0, 0x400
/* 8137FA68 | 7C 03 00 00 */	cmpw r3, r0
/* 8137FA6C | 41 82 00 08 */	beq .L_8137FA74
/* 8137FA70 | 48 00 00 2C */	b .L_8137FA9C
.L_8137FA74:
/* 8137FA74 | 7C 7D 72 14 */	add r3, r29, r14
/* 8137FA78 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8137FA7C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8137FA80 | 41 82 01 80 */	beq .L_8137FC00
/* 8137FA84 | 48 00 00 30 */	b .L_8137FAB4
.L_8137FA88:
/* 8137FA88 | 7C 7D 72 14 */	add r3, r29, r14
/* 8137FA8C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8137FA90 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8137FA94 | 41 82 01 6C */	beq .L_8137FC00
/* 8137FA98 | 48 00 00 1C */	b .L_8137FAB4
.L_8137FA9C:
/* 8137FA9C | 38 76 01 FB */	addi r3, r22, 0x1fb
/* 8137FAA0 | 4C C6 31 82 */	crclr cr1eq
/* 8137FAA4 | 4B FF B5 11 */	bl BS2Report
/* 8137FAA8 | 38 00 00 05 */	li r0, 0x5
/* 8137FAAC | 90 0D AA C8 */	stw r0, State@sda21(r0)
/* 8137FAB0 | 48 00 02 94 */	b .L_8137FD44
.L_8137FAB4:
/* 8137FAB4 | 7C 7D 72 14 */	add r3, r29, r14
/* 8137FAB8 | 38 81 00 68 */	addi r4, r1, 0x68
/* 8137FABC | 38 63 00 10 */	addi r3, r3, 0x10
/* 8137FAC0 | 48 1C 92 81 */	bl fn_81548D40
/* 8137FAC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137FAC8 | 40 80 00 20 */	bge .L_8137FAE8
/* 8137FACC | 7C 9D 72 14 */	add r4, r29, r14
/* 8137FAD0 | 38 76 02 1A */	addi r3, r22, 0x21a
/* 8137FAD4 | 4C C6 31 82 */	crclr cr1eq
/* 8137FAD8 | 38 84 00 10 */	addi r4, r4, 0x10
/* 8137FADC | 4B FF B4 D9 */	bl BS2Report
/* 8137FAE0 | 39 E0 00 01 */	li r15, 0x1
/* 8137FAE4 | 48 00 01 1C */	b .L_8137FC00
.L_8137FAE8:
/* 8137FAE8 | 7C 1D 70 2E */	lwzx r0, r29, r14
/* 8137FAEC | 28 00 00 07 */	cmplwi r0, 0x7
/* 8137FAF0 | 40 82 01 10 */	bne .L_8137FC00
/* 8137FAF4 | 7C 9D 72 14 */	add r4, r29, r14
/* 8137FAF8 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 8137FAFC | 80 64 00 50 */	lwz r3, 0x50(r4)
/* 8137FB00 | 38 A0 00 00 */	li r5, 0x0
/* 8137FB04 | 80 84 00 54 */	lwz r4, 0x54(r4)
/* 8137FB08 | 48 23 EE 01 */	bl fn_815BE908
/* 8137FB0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137FB10 | 41 82 00 14 */	beq .L_8137FB24
/* 8137FB14 | 38 76 03 01 */	addi r3, r22, 0x301
/* 8137FB18 | 4C C6 31 82 */	crclr cr1eq
/* 8137FB1C | 4B FF B4 99 */	bl BS2Report
/* 8137FB20 | 48 00 00 E0 */	b .L_8137FC00
.L_8137FB24:
/* 8137FB24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137FB28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137FB2C | 40 82 00 D4 */	bne .L_8137FC00
/* 8137FB30 | 48 1E A8 6D */	bl SCGetWwwRestriction
/* 8137FB34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137FB38 | 41 82 00 34 */	beq .L_8137FB6C
/* 8137FB3C | 7C 7D 72 14 */	add r3, r29, r14
/* 8137FB40 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 8137FB44 | 7C 00 D0 38 */	and r0, r0, r26
/* 8137FB48 | 54 03 00 2E */	clrrwi r3, r0, 8
/* 8137FB4C | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 8137FB50 | 28 00 44 00 */	cmplwi r0, 0x4400
/* 8137FB54 | 40 82 00 18 */	bne .L_8137FB6C
/* 8137FB58 | 7F 38 B9 2E */	stwx r25, r24, r23
/* 8137FB5C | 38 76 03 1E */	addi r3, r22, 0x31e
/* 8137FB60 | 4C C6 31 82 */	crclr cr1eq
/* 8137FB64 | 48 1A EB 3D */	bl OSReport
/* 8137FB68 | 48 00 00 98 */	b .L_8137FC00
.L_8137FB6C:
/* 8137FB6C | 48 1E B0 B5 */	bl fn_8156AC20
/* 8137FB70 | 7C 60 07 74 */	extsb r0, r3
/* 8137FB74 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8137FB78 | 40 82 00 40 */	bne .L_8137FBB8
/* 8137FB7C | 48 1E A9 91 */	bl fn_8156A50C
/* 8137FB80 | 54 60 46 3E */	srwi r0, r3, 24
/* 8137FB84 | 28 00 00 6E */	cmplwi r0, 0x6e
/* 8137FB88 | 41 82 00 30 */	beq .L_8137FBB8
/* 8137FB8C | 7C 7D 72 14 */	add r3, r29, r14
/* 8137FB90 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 8137FB94 | 7C 03 D0 38 */	and r3, r0, r26
/* 8137FB98 | 3C 03 B7 BD */	subis r0, r3, 0x4843
/* 8137FB9C | 28 00 4A 50 */	cmplwi r0, 0x4a50
/* 8137FBA0 | 40 82 00 18 */	bne .L_8137FBB8
/* 8137FBA4 | 7F 38 B9 2E */	stwx r25, r24, r23
/* 8137FBA8 | 38 76 03 3A */	addi r3, r22, 0x33a
/* 8137FBAC | 4C C6 31 82 */	crclr cr1eq
/* 8137FBB0 | 48 1A EA F1 */	bl OSReport
/* 8137FBB4 | 48 00 00 4C */	b .L_8137FC00
.L_8137FBB8:
/* 8137FBB8 | 7C 9D 72 14 */	add r4, r29, r14
/* 8137FBBC | 38 6D 85 5A */	li r3, lbl_8169659A@sda21
/* 8137FBC0 | 4C C6 31 82 */	crclr cr1eq
/* 8137FBC4 | 38 84 00 10 */	addi r4, r4, 0x10
/* 8137FBC8 | 4B FF B3 ED */	bl BS2Report
/* 8137FBCC | 7C 7B FA 14 */	add r3, r27, r31
/* 8137FBD0 | 7C 9D 72 14 */	add r4, r29, r14
/* 8137FBD4 | 38 A0 02 00 */	li r5, 0x200
/* 8137FBD8 | 4B FB 06 59 */	bl memcpy
/* 8137FBDC | 7C 9D 72 14 */	add r4, r29, r14
/* 8137FBE0 | 38 00 00 01 */	li r0, 0x1
/* 8137FBE4 | 7C 18 B9 2E */	stwx r0, r24, r23
/* 8137FBE8 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 8137FBEC | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 8137FBF0 | 3B FF 02 00 */	addi r31, r31, 0x200
/* 8137FBF4 | 80 04 00 5C */	lwz r0, 0x5c(r4)
/* 8137FBF8 | 7E 52 1A 14 */	add r18, r18, r3
/* 8137FBFC | 7E 73 02 14 */	add r19, r19, r0
.L_8137FC00:
/* 8137FC00 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 8137FC04 | 39 CE 02 00 */	addi r14, r14, 0x200
/* 8137FC08 | 3A F7 00 04 */	addi r23, r23, 0x4
.L_8137FC0C:
/* 8137FC0C | 80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8137FC10 | 7C 10 00 40 */	cmplw r16, r0
/* 8137FC14 | 41 80 FD 8C */	blt .L_8137F9A0
/* 8137FC18 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 8137FC1C | 41 82 01 28 */	beq .L_8137FD44
/* 8137FC20 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8137FC24 | 48 1E AC 41 */	bl fn_8156A864
/* 8137FC28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137FC2C | 40 82 00 14 */	bne .L_8137FC40
/* 8137FC30 | 38 76 03 53 */	addi r3, r22, 0x353
/* 8137FC34 | 4C C6 31 82 */	crclr cr1eq
/* 8137FC38 | 4B FF B3 7D */	bl BS2Report
/* 8137FC3C | 48 00 01 08 */	b .L_8137FD44
.L_8137FC40:
/* 8137FC40 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8137FC44 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8137FC48 | 48 1E 7C A9 */	bl NAND_815678F0
/* 8137FC4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137FC50 | 41 82 00 14 */	beq .L_8137FC64
/* 8137FC54 | 38 76 03 74 */	addi r3, r22, 0x374
/* 8137FC58 | 4C C6 31 82 */	crclr cr1eq
/* 8137FC5C | 4B FF B3 59 */	bl BS2Report
/* 8137FC60 | 48 00 00 E4 */	b .L_8137FD44
.L_8137FC64:
/* 8137FC64 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8137FC68 | 3C 60 01 00 */	lis r3, 0x100
/* 8137FC6C | 38 03 40 00 */	addi r0, r3, 0x4000
/* 8137FC70 | 54 83 70 22 */	slwi r3, r4, 14
/* 8137FC74 | 7C 03 00 40 */	cmplw r3, r0
/* 8137FC78 | 41 80 00 14 */	blt .L_8137FC8C
/* 8137FC7C | 3C 63 FF 00 */	subis r3, r3, 0x100
/* 8137FC80 | 38 03 C0 00 */	subi r0, r3, 0x4000
/* 8137FC84 | 7C 12 00 40 */	cmplw r18, r0
/* 8137FC88 | 40 81 00 14 */	ble .L_8137FC9C
.L_8137FC8C:
/* 8137FC8C | 38 76 03 98 */	addi r3, r22, 0x398
/* 8137FC90 | 4C C6 31 82 */	crclr cr1eq
/* 8137FC94 | 4B FF B3 21 */	bl BS2Report
/* 8137FC98 | 48 00 00 AC */	b .L_8137FD44
.L_8137FC9C:
/* 8137FC9C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 8137FCA0 | 38 13 00 24 */	addi r0, r19, 0x24
/* 8137FCA4 | 7C 03 00 40 */	cmplw r3, r0
/* 8137FCA8 | 40 80 00 14 */	bge .L_8137FCBC
/* 8137FCAC | 38 76 03 BE */	addi r3, r22, 0x3be
/* 8137FCB0 | 4C C6 31 82 */	crclr cr1eq
/* 8137FCB4 | 4B FF B3 01 */	bl BS2Report
/* 8137FCB8 | 48 00 00 8C */	b .L_8137FD44
.L_8137FCBC:
/* 8137FCBC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8137FCC0 | 7C 14 00 40 */	cmplw r20, r0
/* 8137FCC4 | 40 81 00 14 */	ble .L_8137FCD8
/* 8137FCC8 | 38 76 03 E4 */	addi r3, r22, 0x3e4
/* 8137FCCC | 4C C6 31 82 */	crclr cr1eq
/* 8137FCD0 | 4B FF B2 E5 */	bl BS2Report
/* 8137FCD4 | 48 00 00 70 */	b .L_8137FD44
.L_8137FCD8:
/* 8137FCD8 | 38 75 23 40 */	addi r3, r21, 0x2340
/* 8137FCDC | 38 D5 23 20 */	addi r6, r21, 0x2320
/* 8137FCE0 | 80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8137FCE4 | 39 15 00 00 */	addi r8, r21, 0x0
/* 8137FCE8 | 38 95 08 00 */	addi r4, r21, 0x800
/* 8137FCEC | 80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8137FCF0 | 3A 00 00 00 */	li r16, 0x0
/* 8137FCF4 | 38 60 00 00 */	li r3, 0x0
/* 8137FCF8 | 7C A9 03 A6 */	mtctr r5
/* 8137FCFC | 28 05 00 00 */	cmplwi r5, 0x0
/* 8137FD00 | 40 81 00 2C */	ble .L_8137FD2C
.L_8137FD04:
/* 8137FD04 | 7C E8 18 2E */	lwzx r7, r8, r3
/* 8137FD08 | 7C 06 82 14 */	add r0, r6, r16
/* 8137FD0C | 54 00 10 3A */	slwi r0, r0, 2
/* 8137FD10 | 28 07 00 01 */	cmplwi r7, 0x1
/* 8137FD14 | 7C E4 01 2E */	stwx r7, r4, r0
/* 8137FD18 | 40 82 00 08 */	bne .L_8137FD20
/* 8137FD1C | 3A 31 00 01 */	addi r17, r17, 0x1
.L_8137FD20:
/* 8137FD20 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 8137FD24 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8137FD28 | 42 00 FF DC */	bdnz .L_8137FD04
.L_8137FD2C:
/* 8137FD2C | 38 75 23 20 */	addi r3, r21, 0x2320
/* 8137FD30 | 38 80 00 01 */	li r4, 0x1
/* 8137FD34 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8137FD38 | 90 8D AA D4 */	stw r4, lbl_81698B14@sda21(r0)
/* 8137FD3C | 7C 00 2A 14 */	add r0, r0, r5
/* 8137FD40 | 90 03 00 10 */	stw r0, 0x10(r3)
.L_8137FD44:
/* 8137FD44 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 8137FD48 | 41 82 00 14 */	beq .L_8137FD5C
/* 8137FD4C | 38 00 00 05 */	li r0, 0x5
/* 8137FD50 | 3A 20 00 00 */	li r17, 0x0
/* 8137FD54 | 90 0D AA C8 */	stw r0, State@sda21(r0)
/* 8137FD58 | 48 00 00 DC */	b .L_8137FE34
.L_8137FD5C:
/* 8137FD5C | 39 F5 08 00 */	addi r15, r21, 0x800
/* 8137FD60 | 3C 00 80 4C */	lis r0, 0x804c
/* 8137FD64 | 90 0D AA B8 */	stw r0, PtrEntries@sda21(r0)
/* 8137FD68 | 3A 95 23 20 */	addi r20, r21, 0x2320
/* 8137FD6C | 3A 00 00 00 */	li r16, 0x0
/* 8137FD70 | 3A 40 00 00 */	li r18, 0x0
/* 8137FD74 | 91 ED AA C0 */	stw r15, Entries@sda21(r0)
/* 8137FD78 | 3A 60 00 00 */	li r19, 0x0
/* 8137FD7C | 3D C0 80 48 */	lis r14, 0x8048
/* 8137FD80 | 48 00 00 A8 */	b .L_8137FE28
.L_8137FD84:
/* 8137FD84 | 7C 0F 98 2E */	lwzx r0, r15, r19
/* 8137FD88 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137FD8C | 40 82 00 90 */	bne .L_8137FE1C
/* 8137FD90 | 7C 8E 92 14 */	add r4, r14, r18
/* 8137FD94 | 38 76 03 FD */	addi r3, r22, 0x3fd
/* 8137FD98 | 38 84 00 10 */	addi r4, r4, 0x10
/* 8137FD9C | 4C C6 31 82 */	crclr cr1eq
/* 8137FDA0 | 4B FF B2 15 */	bl BS2Report
/* 8137FDA4 | 7C 8E 92 14 */	add r4, r14, r18
/* 8137FDA8 | 38 76 04 07 */	addi r3, r22, 0x407
/* 8137FDAC | 38 84 00 60 */	addi r4, r4, 0x60
/* 8137FDB0 | 4C C6 31 82 */	crclr cr1eq
/* 8137FDB4 | 4B FF B2 01 */	bl BS2Report
/* 8137FDB8 | 7C 8E 92 14 */	add r4, r14, r18
/* 8137FDBC | 38 76 04 11 */	addi r3, r22, 0x411
/* 8137FDC0 | 38 84 00 A0 */	addi r4, r4, 0xa0
/* 8137FDC4 | 4C C6 31 82 */	crclr cr1eq
/* 8137FDC8 | 4B FF B1 ED */	bl BS2Report
/* 8137FDCC | 7C 6E 92 14 */	add r3, r14, r18
/* 8137FDD0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137FDD4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 8137FDD8 | 41 82 00 0C */	beq .L_8137FDE4
/* 8137FDDC | 38 96 04 1B */	addi r4, r22, 0x41b
/* 8137FDE0 | 48 00 00 08 */	b .L_8137FDE8
.L_8137FDE4:
/* 8137FDE4 | 38 96 04 24 */	addi r4, r22, 0x424
.L_8137FDE8:
/* 8137FDE8 | 38 76 04 31 */	addi r3, r22, 0x431
/* 8137FDEC | 4C C6 31 82 */	crclr cr1eq
/* 8137FDF0 | 4B FF B1 C5 */	bl BS2Report
/* 8137FDF4 | 7C 6E 92 14 */	add r3, r14, r18
/* 8137FDF8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137FDFC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8137FE00 | 41 82 00 0C */	beq .L_8137FE0C
/* 8137FE04 | 38 8D 85 5E */	li r4, lbl_8169659E@sda21
/* 8137FE08 | 48 00 00 08 */	b .L_8137FE10
.L_8137FE0C:
/* 8137FE0C | 38 96 04 3B */	addi r4, r22, 0x43b
.L_8137FE10:
/* 8137FE10 | 38 76 04 46 */	addi r3, r22, 0x446
/* 8137FE14 | 4C C6 31 82 */	crclr cr1eq
/* 8137FE18 | 4B FF B1 9D */	bl BS2Report
.L_8137FE1C:
/* 8137FE1C | 3A 10 00 01 */	addi r16, r16, 0x1
/* 8137FE20 | 3A 52 02 00 */	addi r18, r18, 0x200
/* 8137FE24 | 3A 73 00 04 */	addi r19, r19, 0x4
.L_8137FE28:
/* 8137FE28 | 80 14 00 10 */	lwz r0, 0x10(r20)
/* 8137FE2C | 7C 10 00 40 */	cmplw r16, r0
/* 8137FE30 | 41 80 FF 54 */	blt .L_8137FD84
.L_8137FE34:
/* 8137FE34 | 92 2D AA BC */	stw r17, NumEntries@sda21(r0)
/* 8137FE38 | 80 0D AA BC */	lwz r0, NumEntries@sda21(r0)
/* 8137FE3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137FE40 | 40 82 00 2C */	bne .L_8137FE6C
/* 8137FE44 | 38 60 00 05 */	li r3, 0x5
/* 8137FE48 | 38 00 00 00 */	li r0, 0x0
/* 8137FE4C | 90 6D AA C8 */	stw r3, State@sda21(r0)
/* 8137FE50 | 38 76 04 50 */	addi r3, r22, 0x450
/* 8137FE54 | 90 0D AA E0 */	stw r0, StartUpdate@sda21(r0)
/* 8137FE58 | 90 0D AA E4 */	stw r0, CancelUpdate@sda21(r0)
/* 8137FE5C | 4C C6 31 82 */	crclr cr1eq
/* 8137FE60 | 4B FF B1 55 */	bl BS2Report
/* 8137FE64 | 38 60 00 00 */	li r3, 0x0
/* 8137FE68 | 48 00 03 1C */	b .L_81380184
.L_8137FE6C:
/* 8137FE6C | 3A 20 00 01 */	li r17, 0x1
/* 8137FE70 | 38 80 00 00 */	li r4, 0x0
/* 8137FE74 | 92 2D AA C8 */	stw r17, State@sda21(r0)
/* 8137FE78 | 3A 15 23 20 */	addi r16, r21, 0x2320
/* 8137FE7C | 39 F5 08 00 */	addi r15, r21, 0x800
/* 8137FE80 | 3E 40 80 48 */	lis r18, 0x8048
/* 8137FE84 | 90 8D AA E8 */	stw r4, lbl_81698B28@sda21(r0)
/* 8137FE88 | 39 C0 00 02 */	li r14, 0x2
.L_8137FE8C:
/* 8137FE8C | 80 0D AA E0 */	lwz r0, StartUpdate@sda21(r0)
/* 8137FE90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137FE94 | 41 82 02 B8 */	beq .L_8138014C
/* 8137FE98 | 80 10 00 10 */	lwz r0, 0x10(r16)
/* 8137FE9C | 7C 04 00 40 */	cmplw r4, r0
/* 8137FEA0 | 40 80 02 74 */	bge .L_81380114
/* 8137FEA4 | 38 76 04 66 */	addi r3, r22, 0x466
/* 8137FEA8 | 4C C6 31 82 */	crclr cr1eq
/* 8137FEAC | 4B FF B1 09 */	bl BS2Report
/* 8137FEB0 | 80 6D AA E8 */	lwz r3, lbl_81698B28@sda21(r0)
/* 8137FEB4 | 54 60 10 3A */	slwi r0, r3, 2
/* 8137FEB8 | 7C 0F 00 2E */	lwzx r0, r15, r0
/* 8137FEBC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137FEC0 | 40 82 02 2C */	bne .L_813800EC
/* 8137FEC4 | 54 60 48 2C */	slwi r0, r3, 9
/* 8137FEC8 | 38 76 04 75 */	addi r3, r22, 0x475
/* 8137FECC | 7C 92 02 14 */	add r4, r18, r0
/* 8137FED0 | 38 84 00 10 */	addi r4, r4, 0x10
/* 8137FED4 | 4C C6 31 82 */	crclr cr1eq
/* 8137FED8 | 4B FF B0 DD */	bl BS2Report
/* 8137FEDC | 80 AD AA E8 */	lwz r5, lbl_81698B28@sda21(r0)
/* 8137FEE0 | 91 CD AA C8 */	stw r14, State@sda21(r0)
/* 8137FEE4 | 54 A4 48 2C */	slwi r4, r5, 9
/* 8137FEE8 | 7C 72 22 14 */	add r3, r18, r4
/* 8137FEEC | 90 6D AA CC */	stw r3, CurrentEntry@sda21(r0)
/* 8137FEF0 | 7C 12 20 2E */	lwzx r0, r18, r4
/* 8137FEF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137FEF8 | 40 82 00 10 */	bne .L_8137FF08
/* 8137FEFC | 38 85 00 01 */	addi r4, r5, 0x1
/* 8137FF00 | 90 8D AA E8 */	stw r4, lbl_81698B28@sda21(r0)
/* 8137FF04 | 4B FF FF 88 */	b .L_8137FE8C
.L_8137FF08:
/* 8137FF08 | 7C 12 20 2E */	lwzx r0, r18, r4
/* 8137FF0C | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137FF10 | 40 82 00 F0 */	bne .L_81380000
/* 8137FF14 | 38 76 04 82 */	addi r3, r22, 0x482
/* 8137FF18 | 4C C6 31 82 */	crclr cr1eq
/* 8137FF1C | 4B FF B0 99 */	bl BS2Report
/* 8137FF20 | 82 6D AA E8 */	lwz r19, lbl_81698B28@sda21(r0)
/* 8137FF24 | 56 60 48 2C */	slwi r0, r19, 9
/* 8137FF28 | 7C 72 02 14 */	add r3, r18, r0
/* 8137FF2C | 38 63 00 10 */	addi r3, r3, 0x10
/* 8137FF30 | 4B FF F2 D9 */	bl getSuffix
/* 8137FF34 | 38 8D 85 65 */	li r4, lbl_816965A5@sda21
/* 8137FF38 | 48 28 25 49 */	bl strcmp
/* 8137FF3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137FF40 | 40 82 00 20 */	bne .L_8137FF60
/* 8137FF44 | 56 60 48 2C */	slwi r0, r19, 9
/* 8137FF48 | 3C 80 80 40 */	lis r4, 0x8040
/* 8137FF4C | 7C 72 02 14 */	add r3, r18, r0
/* 8137FF50 | 3C A0 00 08 */	lis r5, 0x8
/* 8137FF54 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8137FF58 | 48 24 50 B9 */	bl fn_815C5010
/* 8137FF5C | 48 00 00 08 */	b .L_8137FF64
.L_8137FF60:
/* 8137FF60 | 38 60 00 00 */	li r3, 0x0
.L_8137FF64:
/* 8137FF64 | 90 6D AA EC */	stw r3, lbl_81698B2C@sda21(r0)
/* 8137FF68 | 38 76 04 95 */	addi r3, r22, 0x495
/* 8137FF6C | 80 8D AA EC */	lwz r4, lbl_81698B2C@sda21(r0)
/* 8137FF70 | 4C C6 31 82 */	crclr cr1eq
/* 8137FF74 | 4B FF B0 41 */	bl BS2Report
/* 8137FF78 | 80 0D AA EC */	lwz r0, lbl_81698B2C@sda21(r0)
/* 8137FF7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137FF80 | 41 82 00 54 */	beq .L_8137FFD4
/* 8137FF84 | 80 6D AA E8 */	lwz r3, lbl_81698B28@sda21(r0)
/* 8137FF88 | 3C 00 80 48 */	lis r0, 0x8048
/* 8137FF8C | 80 AD AA EC */	lwz r5, lbl_81698B2C@sda21(r0)
/* 8137FF90 | 38 96 04 9E */	addi r4, r22, 0x49e
/* 8137FF94 | 54 63 48 2C */	slwi r3, r3, 9
/* 8137FF98 | 39 36 04 CD */	addi r9, r22, 0x4cd
/* 8137FF9C | 7C C0 1A 14 */	add r6, r0, r3
/* 8137FFA0 | 39 40 03 F5 */	li r10, 0x3f5
/* 8137FFA4 | 80 E6 00 50 */	lwz r7, 0x50(r6)
/* 8137FFA8 | 38 60 00 00 */	li r3, 0x0
/* 8137FFAC | 81 06 00 54 */	lwz r8, 0x54(r6)
/* 8137FFB0 | 4C C6 31 82 */	crclr cr1eq
/* 8137FFB4 | 48 1E 7D 75 */	bl NANDLoggingAddMessageAsync
/* 8137FFB8 | 38 75 23 20 */	addi r3, r21, 0x2320
/* 8137FFBC | 38 00 00 05 */	li r0, 0x5
/* 8137FFC0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8137FFC4 | 90 0D AA C8 */	stw r0, State@sda21(r0)
/* 8137FFC8 | 38 83 00 01 */	addi r4, r3, 0x1
/* 8137FFCC | 90 8D AA E8 */	stw r4, lbl_81698B28@sda21(r0)
/* 8137FFD0 | 48 00 01 90 */	b .L_81380160
.L_8137FFD4:
/* 8137FFD4 | 80 0D AA E8 */	lwz r0, lbl_81698B28@sda21(r0)
/* 8137FFD8 | 54 00 48 2C */	slwi r0, r0, 9
/* 8137FFDC | 7C 72 02 14 */	add r3, r18, r0
/* 8137FFE0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8137FFE4 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8137FFE8 | 41 82 00 08 */	beq .L_8137FFF0
/* 8137FFEC | 92 2D AA D0 */	stw r17, lbl_81698B10@sda21(r0)
.L_8137FFF0:
/* 8137FFF0 | 80 6D AA E8 */	lwz r3, lbl_81698B28@sda21(r0)
/* 8137FFF4 | 38 83 00 01 */	addi r4, r3, 0x1
/* 8137FFF8 | 90 8D AA E8 */	stw r4, lbl_81698B28@sda21(r0)
/* 8137FFFC | 4B FF FE 90 */	b .L_8137FE8C
.L_81380000:
/* 81380000 | 38 76 04 D9 */	addi r3, r22, 0x4d9
/* 81380004 | 4C C6 31 82 */	crclr cr1eq
/* 81380008 | 4B FF AF AD */	bl BS2Report
/* 8138000C | 82 6D AA E8 */	lwz r19, lbl_81698B28@sda21(r0)
/* 81380010 | 56 60 48 2C */	slwi r0, r19, 9
/* 81380014 | 7C 72 02 14 */	add r3, r18, r0
/* 81380018 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8138001C | 4B FF F1 ED */	bl getSuffix
/* 81380020 | 38 8D 85 65 */	li r4, lbl_816965A5@sda21
/* 81380024 | 48 28 24 5D */	bl strcmp
/* 81380028 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138002C | 40 82 00 20 */	bne .L_8138004C
/* 81380030 | 56 60 48 2C */	slwi r0, r19, 9
/* 81380034 | 3C 80 80 40 */	lis r4, 0x8040
/* 81380038 | 7C 72 02 14 */	add r3, r18, r0
/* 8138003C | 3C A0 00 08 */	lis r5, 0x8
/* 81380040 | 38 63 00 10 */	addi r3, r3, 0x10
/* 81380044 | 48 24 52 89 */	bl fn_815C52CC
/* 81380048 | 48 00 00 08 */	b .L_81380050
.L_8138004C:
/* 8138004C | 38 60 00 00 */	li r3, 0x0
.L_81380050:
/* 81380050 | 90 6D AA EC */	stw r3, lbl_81698B2C@sda21(r0)
/* 81380054 | 38 76 04 95 */	addi r3, r22, 0x495
/* 81380058 | 80 8D AA EC */	lwz r4, lbl_81698B2C@sda21(r0)
/* 8138005C | 4C C6 31 82 */	crclr cr1eq
/* 81380060 | 4B FF AF 55 */	bl BS2Report
/* 81380064 | 80 0D AA EC */	lwz r0, lbl_81698B2C@sda21(r0)
/* 81380068 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138006C | 41 82 00 54 */	beq .L_813800C0
/* 81380070 | 80 6D AA E8 */	lwz r3, lbl_81698B28@sda21(r0)
/* 81380074 | 3C 00 80 48 */	lis r0, 0x8048
/* 81380078 | 80 AD AA EC */	lwz r5, lbl_81698B2C@sda21(r0)
/* 8138007C | 38 96 04 9E */	addi r4, r22, 0x49e
/* 81380080 | 54 63 48 2C */	slwi r3, r3, 9
/* 81380084 | 39 36 04 CD */	addi r9, r22, 0x4cd
/* 81380088 | 7C C0 1A 14 */	add r6, r0, r3
/* 8138008C | 39 40 04 0F */	li r10, 0x40f
/* 81380090 | 80 E6 00 50 */	lwz r7, 0x50(r6)
/* 81380094 | 38 60 00 00 */	li r3, 0x0
/* 81380098 | 81 06 00 54 */	lwz r8, 0x54(r6)
/* 8138009C | 4C C6 31 82 */	crclr cr1eq
/* 813800A0 | 48 1E 7C 89 */	bl NANDLoggingAddMessageAsync
/* 813800A4 | 38 75 23 20 */	addi r3, r21, 0x2320
/* 813800A8 | 38 00 00 05 */	li r0, 0x5
/* 813800AC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813800B0 | 90 0D AA C8 */	stw r0, State@sda21(r0)
/* 813800B4 | 38 83 00 01 */	addi r4, r3, 0x1
/* 813800B8 | 90 8D AA E8 */	stw r4, lbl_81698B28@sda21(r0)
/* 813800BC | 48 00 00 A4 */	b .L_81380160
.L_813800C0:
/* 813800C0 | 80 0D AA E8 */	lwz r0, lbl_81698B28@sda21(r0)
/* 813800C4 | 54 00 48 2C */	slwi r0, r0, 9
/* 813800C8 | 7C 72 02 14 */	add r3, r18, r0
/* 813800CC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813800D0 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 813800D4 | 41 82 00 08 */	beq .L_813800DC
/* 813800D8 | 92 2D AA D0 */	stw r17, lbl_81698B10@sda21(r0)
.L_813800DC:
/* 813800DC | 80 6D AA E8 */	lwz r3, lbl_81698B28@sda21(r0)
/* 813800E0 | 38 83 00 01 */	addi r4, r3, 0x1
/* 813800E4 | 90 8D AA E8 */	stw r4, lbl_81698B28@sda21(r0)
/* 813800E8 | 4B FF FD A4 */	b .L_8137FE8C
.L_813800EC:
/* 813800EC | 54 60 48 2C */	slwi r0, r3, 9
/* 813800F0 | 38 76 04 EE */	addi r3, r22, 0x4ee
/* 813800F4 | 7C 92 02 14 */	add r4, r18, r0
/* 813800F8 | 38 84 00 10 */	addi r4, r4, 0x10
/* 813800FC | 4C C6 31 82 */	crclr cr1eq
/* 81380100 | 4B FF AE B5 */	bl BS2Report
/* 81380104 | 80 6D AA E8 */	lwz r3, lbl_81698B28@sda21(r0)
/* 81380108 | 38 83 00 01 */	addi r4, r3, 0x1
/* 8138010C | 90 8D AA E8 */	stw r4, lbl_81698B28@sda21(r0)
/* 81380110 | 4B FF FD 7C */	b .L_8137FE8C
.L_81380114:
/* 81380114 | 40 82 FD 78 */	bne .L_8137FE8C
/* 81380118 | 80 0D AA D0 */	lwz r0, lbl_81698B10@sda21(r0)
/* 8138011C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81380120 | 41 82 00 10 */	beq .L_81380130
/* 81380124 | 38 00 00 04 */	li r0, 0x4
/* 81380128 | 90 0D AA C8 */	stw r0, State@sda21(r0)
/* 8138012C | 48 00 00 0C */	b .L_81380138
.L_81380130:
/* 81380130 | 38 00 00 03 */	li r0, 0x3
/* 81380134 | 90 0D AA C8 */	stw r0, State@sda21(r0)
.L_81380138:
/* 81380138 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8138013C | 38 00 00 00 */	li r0, 0x0
/* 81380140 | 90 0D AA CC */	stw r0, CurrentEntry@sda21(r0)
/* 81380144 | 90 8D AA E8 */	stw r4, lbl_81698B28@sda21(r0)
/* 81380148 | 48 00 00 18 */	b .L_81380160
.L_8138014C:
/* 8138014C | 80 0D AA E4 */	lwz r0, CancelUpdate@sda21(r0)
/* 81380150 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81380154 | 41 82 FD 38 */	beq .L_8137FE8C
/* 81380158 | 38 00 00 06 */	li r0, 0x6
/* 8138015C | 90 0D AA C8 */	stw r0, State@sda21(r0)
.L_81380160:
/* 81380160 | 38 00 00 00 */	li r0, 0x0
/* 81380164 | 38 76 04 50 */	addi r3, r22, 0x450
/* 81380168 | 90 0D AA E0 */	stw r0, StartUpdate@sda21(r0)
/* 8138016C | 90 0D AA E4 */	stw r0, CancelUpdate@sda21(r0)
/* 81380170 | 90 0D AA D8 */	stw r0, lbl_81698B18@sda21(r0)
/* 81380174 | 90 0D AA DC */	stw r0, lbl_81698B1C@sda21(r0)
/* 81380178 | 4C C6 31 82 */	crclr cr1eq
/* 8138017C | 4B FF AE 39 */	bl BS2Report
/* 81380180 | 38 60 00 00 */	li r3, 0x0
.L_81380184:
/* 81380184 | 39 61 00 F0 */	addi r11, r1, 0xf0
/* 81380188 | 48 27 93 51 */	bl _restgpr_14
/* 8138018C | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 81380190 | 7C 08 03 A6 */	mtlr r0
/* 81380194 | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 81380198 | 4E 80 00 20 */	blr
.endfn UpdateThread

# .text:0xF94 | 0x8138019C | size: 0x8
.fn BS2UpdateState, global
/* 8138019C | 80 6D AA C8 */	lwz r3, State@sda21(r0)
/* 813801A0 | 4E 80 00 20 */	blr
.endfn BS2UpdateState

# .text:0xF9C | 0x813801A4 | size: 0xC
.fn BS2StartUpdate, global
/* 813801A4 | 38 00 00 01 */	li r0, 0x1
/* 813801A8 | 90 0D AA E0 */	stw r0, StartUpdate@sda21(r0)
/* 813801AC | 4E 80 00 20 */	blr
.endfn BS2StartUpdate

# .text:0xFA8 | 0x813801B0 | size: 0xC
.fn BS2CancelUpdate, global
/* 813801B0 | 38 00 00 01 */	li r0, 0x1
/* 813801B4 | 90 0D AA E4 */	stw r0, CancelUpdate@sda21(r0)
/* 813801B8 | 4E 80 00 20 */	blr
.endfn BS2CancelUpdate

# .text:0xFB4 | 0x813801BC | size: 0x8
.fn BS2GetUpdateEntry, global
/* 813801BC | 80 6D AA B8 */	lwz r3, PtrEntries@sda21(r0)
/* 813801C0 | 4E 80 00 20 */	blr
.endfn BS2GetUpdateEntry

# .text:0xFBC | 0x813801C4 | size: 0x8
.fn BS2GetUpdateEntryNum, global
/* 813801C4 | 80 6D AA BC */	lwz r3, NumEntries@sda21(r0)
/* 813801C8 | 4E 80 00 20 */	blr
.endfn BS2GetUpdateEntryNum

# .text:0xFC4 | 0x813801CC | size: 0x8
.fn BS2GetCurrentEntry, global
/* 813801CC | 80 6D AA CC */	lwz r3, CurrentEntry@sda21(r0)
/* 813801D0 | 4E 80 00 20 */	blr
.endfn BS2GetCurrentEntry

# .text:0xFCC | 0x813801D4 | size: 0x8
.fn BS2Update_813801D4, global
/* 813801D4 | 80 6D AA D4 */	lwz r3, lbl_81698B14@sda21(r0)
/* 813801D8 | 4E 80 00 20 */	blr
.endfn BS2Update_813801D4

# 0x81646978..0x81646EA8 | size: 0x530
.data
.balign 8

# .data:0x0 | 0x81646978 | size: 0x500
.obj lbl_81646978, global
	.4byte 0x696E6974
	.4byte 0x69616C69
	.4byte 0x7A652042
	.4byte 0x53325570
	.4byte 0x64617465
	.4byte 0x0A00436F
	.4byte 0x6E736F6C
	.4byte 0x65205479
	.4byte 0x70652020
	.4byte 0x3A202530
	.4byte 0x38580A00
	.4byte 0x486F6C6C
	.4byte 0x79776F6F
	.4byte 0x64205265
	.4byte 0x76203A20
	.4byte 0x25303858
	.4byte 0x0A004D45
	.4byte 0x4D322053
	.4byte 0x697A6520
	.4byte 0x20202020
	.4byte 0x3A202530
	.4byte 0x38580A00
	.4byte 0x43726561
	.4byte 0x74652075
	.4byte 0x70646174
	.4byte 0x65207468
	.4byte 0x72656164
	.4byte 0x0A005374
	.4byte 0x61727420
	.4byte 0x75706461
	.4byte 0x74652074
	.4byte 0x68726561
	.4byte 0x640A0045
	.4byte 0x72726F72
	.4byte 0x3A206661
	.4byte 0x696C6564
	.4byte 0x20746F20
	.4byte 0x63686563
	.4byte 0x6B207072
	.4byte 0x6F647563
	.4byte 0x74207265
	.4byte 0x67696F6E
	.4byte 0x2E004572
	.4byte 0x726F723A
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x746F2067
	.4byte 0x65742070
	.4byte 0x726F6475
	.4byte 0x63742069
	.4byte 0x6E666F72
	.4byte 0x6D617469
	.4byte 0x6F6E2E00
	.4byte 0x5F5F7570
	.4byte 0x64617465
	.4byte 0x2E696E66
	.4byte 0x00457272
	.4byte 0x6F723A20
	.4byte 0x75706461
	.4byte 0x74652069
	.4byte 0x6E666F72
	.4byte 0x6D617469
	.4byte 0x6F6E2066
	.4byte 0x696C6520
	.4byte 0x6973206E
	.4byte 0x6F742066
	.4byte 0x6F756E64
	.4byte 0x2E002573
	.4byte 0x20697320
	.4byte 0x666F756E
	.4byte 0x642E0A00
	.4byte 0x4572726F
	.4byte 0x723A2066
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x206F7065
	.4byte 0x6E207570
	.4byte 0x64617465
	.4byte 0x20696E66
	.4byte 0x6F726D61
	.4byte 0x74696F6E
	.4byte 0x2066696C
	.4byte 0x652E0045
	.4byte 0x72726F72
	.4byte 0x3A206661
	.4byte 0x696C6564
	.4byte 0x20746F20
	.4byte 0x72656164
	.4byte 0x20757064
	.4byte 0x61746520
	.4byte 0x696E666F
	.4byte 0x726D6174
	.4byte 0x696F6E20
	.4byte 0x68656164
	.4byte 0x65722E00
	.4byte 0x4572726F
	.4byte 0x723A206E
	.4byte 0x6F20656E
	.4byte 0x7472792E
	.4byte 0x00457272
	.4byte 0x6F723A20
	.4byte 0x666F756E
	.4byte 0x6420746F
	.4byte 0x6F206D61
	.4byte 0x6E792065
	.4byte 0x6E747269
	.4byte 0x65732E00
	.4byte 0x4572726F
	.4byte 0x723A2066
	.4byte 0x6F756E64
	.4byte 0x20746F6F
	.4byte 0x206D616E
	.4byte 0x79206578
	.4byte 0x74726120
	.4byte 0x656E7472
	.4byte 0x6965732E
	.4byte 0x00457272
	.4byte 0x6F723A20
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F207265
	.4byte 0x61642075
	.4byte 0x70646174
	.4byte 0x6520696E
	.4byte 0x666F726D
	.4byte 0x6174696F
	.4byte 0x6E2E0043
	.4byte 0x616E6E6F
	.4byte 0x74206765
	.4byte 0x74207068
	.4byte 0x79736963
	.4byte 0x616C204D
	.4byte 0x454D3220
	.4byte 0x73697A65
	.4byte 0x0A002573
	.4byte 0x20697320
	.4byte 0x6E6F7420
	.4byte 0x666F756E
	.4byte 0x640A0025
	.4byte 0x73206973
	.4byte 0x20616C72
	.4byte 0x65616479
	.4byte 0x20696E73
	.4byte 0x74616C6C
	.4byte 0x65640A00
	.4byte 0x5F5F7365
	.4byte 0x6174686F
	.4byte 0x6C646572
	.4byte 0x2E696E66
	.4byte 0x00457272
	.4byte 0x6F723A20
	.4byte 0x75706461
	.4byte 0x74652073
	.4byte 0x65617468
	.4byte 0x6F6C6465
	.4byte 0x7220696E
	.4byte 0x666F726D
	.4byte 0x6174696F
	.4byte 0x6E206669
	.4byte 0x6C652069
	.4byte 0x73206E6F
	.4byte 0x7420666F
	.4byte 0x756E642E
	.4byte 0x00747970
	.4byte 0x65203D20
	.4byte 0x25640A00
	.4byte 0x61747472
	.4byte 0x69627574
	.4byte 0x65203D20
	.4byte 0x25640A00
	.4byte 0x73697A65
	.4byte 0x203D2025
	.4byte 0x640A0069
	.4byte 0x6E6F6465
	.4byte 0x73203D20
	.4byte 0x25640A00
	.4byte 0x64657065
	.4byte 0x6E64656E
	.4byte 0x6379203D
	.4byte 0x2025640A
	.4byte 0x00706174
	.4byte 0x68203D20
	.4byte 0x25363473
	.4byte 0x0A007469
	.4byte 0x746C6549
	.4byte 0x64203D20
	.4byte 0x256C6C78
	.4byte 0x0A007469
	.4byte 0x746C6556
	.4byte 0x65727369
	.4byte 0x6F6E203D
	.4byte 0x2025640A
	.4byte 0x00466169
	.4byte 0x6C642074
	.4byte 0x6F206765
	.4byte 0x74206554
	.4byte 0x69636B65
	.4byte 0x74207669
	.4byte 0x6577732E
	.4byte 0x0A00496E
	.4byte 0x7465726E
	.4byte 0x65742043
	.4byte 0x48206973
	.4byte 0x20726573
	.4byte 0x74726963
	.4byte 0x74656421
	.4byte 0x0A004242
	.4byte 0x43692043
	.4byte 0x48206973
	.4byte 0x206F6E6C
	.4byte 0x7920666F
	.4byte 0x7220554B
	.4byte 0x210A0045
	.4byte 0x72726F72
	.4byte 0x3A206361
	.4byte 0x6E6E6F74
	.4byte 0x20676574
	.4byte 0x20636861
	.4byte 0x6E6E656C
	.4byte 0x20636F75
	.4byte 0x6E742E00
	.4byte 0x4572726F
	.4byte 0x723A2063
	.4byte 0x616E6E6F
	.4byte 0x74206765
	.4byte 0x74206672
	.4byte 0x65652075
	.4byte 0x73657220
	.4byte 0x626C6F63
	.4byte 0x6B732E00
	.4byte 0x53756666
	.4byte 0x69636965
	.4byte 0x6E742075
	.4byte 0x73657220
	.4byte 0x626C6F63
	.4byte 0x6B732064
	.4byte 0x6F65736E
	.4byte 0x27742065
	.4byte 0x78697374
	.4byte 0x2E005375
	.4byte 0x66666963
	.4byte 0x69656E74
	.4byte 0x20757365
	.4byte 0x7220696E
	.4byte 0x6F646573
	.4byte 0x20646F65
	.4byte 0x736E2774
	.4byte 0x20657869
	.4byte 0x73742E00
	.4byte 0x4E6F2065
	.4byte 0x6E6F7567
	.4byte 0x6820626C
	.4byte 0x616E6B20
	.4byte 0x6368616E
	.4byte 0x6E656C2E
	.4byte 0x0046696C
	.4byte 0x653A2025
	.4byte 0x730A004E
	.4byte 0x616D653A
	.4byte 0x2025730A
	.4byte 0x00496E66
	.4byte 0x6F3A2025
	.4byte 0x730A0043
	.4byte 0x72697469
	.4byte 0x63616C00
	.4byte 0x4E6F6E20
	.4byte 0x63726974
	.4byte 0x6963616C
	.4byte 0x00417474
	.4byte 0x723A2025
	.4byte 0x730A004E
	.4byte 0x6F742072
	.4byte 0x65626F6F
	.4byte 0x74002020
	.4byte 0x20202020
	.4byte 0x25730A00
	.4byte 0x52657475
	.4byte 0x726E2075
	.4byte 0x70646174
	.4byte 0x65207468
	.4byte 0x72656164
	.4byte 0x0A005072
	.4byte 0x6F677265
	.4byte 0x7373203A
	.4byte 0x2025640A
	.4byte 0x00496D70
	.4byte 0x6F727420
	.4byte 0x3A202573
	.4byte 0x0A004253
	.4byte 0x32574144
	.4byte 0x496D706F
	.4byte 0x72744456
	.4byte 0x44203A20
	.4byte 0x00726320
	.4byte 0x3D202564
	.4byte 0x0A004253
	.4byte 0x32206572
	.4byte 0x726F722E
	.4byte 0x205B2564
	.4byte 0x5D207469
	.4byte 0x746C6549
	.4byte 0x443A2030
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x20257320
	.4byte 0x6C696E65
	.4byte 0x3A202564
	.4byte 0x00425332
	.4byte 0x55706461
	.4byte 0x74652E63
	.4byte 0x00425332
	.4byte 0x57414449
	.4byte 0x6D706F72
	.4byte 0x74445644
	.4byte 0x4578203A
	.4byte 0x20004E6F
	.4byte 0x7420696D
	.4byte 0x706F7274
	.4byte 0x203A2025
	.4byte 0x730A0000
.endobj lbl_81646978

# .data:0x500 | 0x81646E78 | size: 0x30
.obj jumptable_81646E78, local
	.rel UpdateThread, .L_8137F40C
	.rel UpdateThread, .L_8137F424
	.rel UpdateThread, .L_8137F43C
	.rel UpdateThread, .L_8137F474
	.rel UpdateThread, .L_8137F474
	.rel UpdateThread, .L_8137F40C
	.rel UpdateThread, .L_8137F454
	.rel UpdateThread, .L_8137F474
	.rel UpdateThread, .L_8137F474
	.rel UpdateThread, .L_8137F474
	.rel UpdateThread, .L_8137F474
	.rel UpdateThread, .L_8137F464
.endobj jumptable_81646E78

# 0x81696598..0x816965B0 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696598 | size: 0x2
.obj lbl_81696598, global
	.string "."
.endobj lbl_81696598

# .sdata:0x2 | 0x8169659A | size: 0x4
.obj lbl_8169659A, global
	.string "%s\n"
.endobj lbl_8169659A

# .sdata:0x6 | 0x8169659E | size: 0x7
.obj lbl_8169659E, global
	.string "Reboot"
.endobj lbl_8169659E

# .sdata:0xD | 0x816965A5 | size: 0x4
.obj lbl_816965A5, global
	.string "wad"
.endobj lbl_816965A5

# .sdata:0x11 | 0x816965A9 | size: 0x7
.obj gap_11_816965A9_sdata, global
.hidden gap_11_816965A9_sdata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_11_816965A9_sdata

# 0x81698AF8..0x81698B48 | size: 0x50
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698AF8 | size: 0x4
.obj PtrEntries, local
	.skip 0x4
.endobj PtrEntries

# .sbss:0x4 | 0x81698AFC | size: 0x4
.obj NumEntries, local
	.skip 0x4
.endobj NumEntries

# .sbss:0x8 | 0x81698B00 | size: 0x4
.obj Entries, local
	.skip 0x4
.endobj Entries

# .sbss:0xC | 0x81698B04 | size: 0x4
.obj Allocator, local
	.skip 0x4
.endobj Allocator

# .sbss:0x10 | 0x81698B08 | size: 0x4
.obj State, local
	.skip 0x4
.endobj State

# .sbss:0x14 | 0x81698B0C | size: 0x4
.obj CurrentEntry, local
	.skip 0x4
.endobj CurrentEntry

# .sbss:0x18 | 0x81698B10 | size: 0x4
.obj lbl_81698B10, local
	.skip 0x4
.endobj lbl_81698B10

# .sbss:0x1C | 0x81698B14 | size: 0x4
.obj lbl_81698B14, local
	.skip 0x4
.endobj lbl_81698B14

# .sbss:0x20 | 0x81698B18 | size: 0x4
.obj lbl_81698B18, local
	.skip 0x4
.endobj lbl_81698B18

# .sbss:0x24 | 0x81698B1C | size: 0x4
.obj lbl_81698B1C, local
	.skip 0x4
.endobj lbl_81698B1C

# .sbss:0x28 | 0x81698B20 | size: 0x4
.obj StartUpdate, local
	.skip 0x4
.endobj StartUpdate

# .sbss:0x2C | 0x81698B24 | size: 0x4
.obj CancelUpdate, local
	.skip 0x4
.endobj CancelUpdate

# .sbss:0x30 | 0x81698B28 | size: 0x4
.obj lbl_81698B28, local
	.skip 0x4
.endobj lbl_81698B28

# .sbss:0x34 | 0x81698B2C | size: 0x4
.obj lbl_81698B2C, local
	.skip 0x4
.endobj lbl_81698B2C

# .sbss:0x38 | 0x81698B30 | size: 0x8
.obj VersionIOS, global
	.skip 0x8
.endobj VersionIOS

# .sbss:0x40 | 0x81698B38 | size: 0x4
.obj VersionMEM2, global
	.skip 0x4
.endobj VersionMEM2

# .sbss:0x44 | 0x81698B3C | size: 0x4
.obj VersionES, global
	.skip 0x4
.endobj VersionES

# .sbss:0x48 | 0x81698B40 | size: 0x4
.obj ConsoleType, global
	.skip 0x4
.endobj ConsoleType

# .sbss:0x4C | 0x81698B44 | size: 0x4
.obj gap_12_81698B44_sbss, global
.hidden gap_12_81698B44_sbss
	.skip 0x4
.endobj gap_12_81698B44_sbss
