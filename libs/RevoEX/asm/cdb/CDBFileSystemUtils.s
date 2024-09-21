.include "macros.inc"
.file "CDBFileSystemUtils.c"

# 0x8148A318..0x8148ACC8 | size: 0x9B0
.text
.balign 4

# .text:0x0 | 0x8148A318 | size: 0x48
.fn CDBFSConcatenatePath, global
/* 8148A318 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148A31C | 7C 08 02 A6 */	mflr r0
/* 8148A320 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148A324 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148A328 | 7C 9F 23 78 */	mr r31, r4
/* 8148A32C | 38 8D 99 A8 */	li r4, lbl_816979E8@sda21
/* 8148A330 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148A334 | 7C 7E 1B 78 */	mr r30, r3
/* 8148A338 | 48 17 80 D1 */	bl strcat
/* 8148A33C | 7F C3 F3 78 */	mr r3, r30
/* 8148A340 | 7F E4 FB 78 */	mr r4, r31
/* 8148A344 | 48 17 80 C5 */	bl strcat
/* 8148A348 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148A34C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148A350 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148A354 | 7C 08 03 A6 */	mtlr r0
/* 8148A358 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148A35C | 4E 80 00 20 */	blr
.endfn CDBFSConcatenatePath

# .text:0x48 | 0x8148A360 | size: 0x184
.fn CDBFSIsYearDirName, global
/* 8148A360 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148A364 | 7C 08 02 A6 */	mflr r0
/* 8148A368 | 38 80 00 05 */	li r4, 0x5
/* 8148A36C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148A370 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148A374 | 7C 7F 1B 78 */	mr r31, r3
/* 8148A378 | 48 00 62 95 */	bl CDBSafeStrLen
/* 8148A37C | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8148A380 | 40 82 01 4C */	bne .L_8148A4CC
/* 8148A384 | 88 9F 00 00 */	lbz r4, 0x0(r31)
/* 8148A388 | 38 00 00 00 */	li r0, 0x0
/* 8148A38C | 7C 84 07 75 */	extsb. r4, r4
/* 8148A390 | 41 80 00 0C */	blt .L_8148A39C
/* 8148A394 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A398 | 41 80 00 08 */	blt .L_8148A3A0
.L_8148A39C:
/* 8148A39C | 38 00 00 01 */	li r0, 0x1
.L_8148A3A0:
/* 8148A3A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A3A4 | 41 82 00 0C */	beq .L_8148A3B0
/* 8148A3A8 | 38 00 00 00 */	li r0, 0x0
/* 8148A3AC | 48 00 00 20 */	b .L_8148A3CC
.L_8148A3B0:
/* 8148A3B0 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A3B4 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A3B8 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A3BC | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A3C0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A3C4 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A3C8 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A3CC:
/* 8148A3CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A3D0 | 41 82 00 FC */	beq .L_8148A4CC
/* 8148A3D4 | 88 9F 00 01 */	lbz r4, 0x1(r31)
/* 8148A3D8 | 38 00 00 00 */	li r0, 0x0
/* 8148A3DC | 7C 84 07 75 */	extsb. r4, r4
/* 8148A3E0 | 41 80 00 0C */	blt .L_8148A3EC
/* 8148A3E4 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A3E8 | 41 80 00 08 */	blt .L_8148A3F0
.L_8148A3EC:
/* 8148A3EC | 38 00 00 01 */	li r0, 0x1
.L_8148A3F0:
/* 8148A3F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A3F4 | 41 82 00 0C */	beq .L_8148A400
/* 8148A3F8 | 38 00 00 00 */	li r0, 0x0
/* 8148A3FC | 48 00 00 20 */	b .L_8148A41C
.L_8148A400:
/* 8148A400 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A404 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A408 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A40C | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A410 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A414 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A418 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A41C:
/* 8148A41C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A420 | 41 82 00 AC */	beq .L_8148A4CC
/* 8148A424 | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 8148A428 | 38 00 00 00 */	li r0, 0x0
/* 8148A42C | 7C 84 07 75 */	extsb. r4, r4
/* 8148A430 | 41 80 00 0C */	blt .L_8148A43C
/* 8148A434 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A438 | 41 80 00 08 */	blt .L_8148A440
.L_8148A43C:
/* 8148A43C | 38 00 00 01 */	li r0, 0x1
.L_8148A440:
/* 8148A440 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A444 | 41 82 00 0C */	beq .L_8148A450
/* 8148A448 | 38 00 00 00 */	li r0, 0x0
/* 8148A44C | 48 00 00 20 */	b .L_8148A46C
.L_8148A450:
/* 8148A450 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A454 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A458 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A45C | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A460 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A464 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A468 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A46C:
/* 8148A46C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A470 | 41 82 00 5C */	beq .L_8148A4CC
/* 8148A474 | 88 9F 00 03 */	lbz r4, 0x3(r31)
/* 8148A478 | 38 00 00 00 */	li r0, 0x0
/* 8148A47C | 7C 84 07 75 */	extsb. r4, r4
/* 8148A480 | 41 80 00 0C */	blt .L_8148A48C
/* 8148A484 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A488 | 41 80 00 08 */	blt .L_8148A490
.L_8148A48C:
/* 8148A48C | 38 00 00 01 */	li r0, 0x1
.L_8148A490:
/* 8148A490 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A494 | 41 82 00 0C */	beq .L_8148A4A0
/* 8148A498 | 38 00 00 00 */	li r0, 0x0
/* 8148A49C | 48 00 00 20 */	b .L_8148A4BC
.L_8148A4A0:
/* 8148A4A0 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A4A4 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A4A8 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A4AC | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A4B0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A4B4 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A4B8 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A4BC:
/* 8148A4BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A4C0 | 41 82 00 0C */	beq .L_8148A4CC
/* 8148A4C4 | 38 60 00 01 */	li r3, 0x1
/* 8148A4C8 | 48 00 00 08 */	b .L_8148A4D0
.L_8148A4CC:
/* 8148A4CC | 38 60 00 00 */	li r3, 0x0
.L_8148A4D0:
/* 8148A4D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148A4D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148A4D8 | 7C 08 03 A6 */	mtlr r0
/* 8148A4DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148A4E0 | 4E 80 00 20 */	blr
.endfn CDBFSIsYearDirName

# .text:0x1CC | 0x8148A4E4 | size: 0xFC
.fn CDBFSIsMonthDirName, global
/* 8148A4E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148A4E8 | 7C 08 02 A6 */	mflr r0
/* 8148A4EC | 38 80 00 03 */	li r4, 0x3
/* 8148A4F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148A4F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148A4F8 | 7C 7F 1B 78 */	mr r31, r3
/* 8148A4FC | 48 00 61 11 */	bl CDBSafeStrLen
/* 8148A500 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148A504 | 40 82 00 C4 */	bne .L_8148A5C8
/* 8148A508 | 88 9F 00 00 */	lbz r4, 0x0(r31)
/* 8148A50C | 38 00 00 00 */	li r0, 0x0
/* 8148A510 | 7C 84 07 75 */	extsb. r4, r4
/* 8148A514 | 41 80 00 0C */	blt .L_8148A520
/* 8148A518 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A51C | 41 80 00 08 */	blt .L_8148A524
.L_8148A520:
/* 8148A520 | 38 00 00 01 */	li r0, 0x1
.L_8148A524:
/* 8148A524 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A528 | 41 82 00 0C */	beq .L_8148A534
/* 8148A52C | 38 00 00 00 */	li r0, 0x0
/* 8148A530 | 48 00 00 20 */	b .L_8148A550
.L_8148A534:
/* 8148A534 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A538 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A53C | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A540 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A544 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A548 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A54C | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A550:
/* 8148A550 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A554 | 41 82 00 74 */	beq .L_8148A5C8
/* 8148A558 | 88 9F 00 01 */	lbz r4, 0x1(r31)
/* 8148A55C | 38 00 00 00 */	li r0, 0x0
/* 8148A560 | 7C 84 07 75 */	extsb. r4, r4
/* 8148A564 | 41 80 00 0C */	blt .L_8148A570
/* 8148A568 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A56C | 41 80 00 08 */	blt .L_8148A574
.L_8148A570:
/* 8148A570 | 38 00 00 01 */	li r0, 0x1
.L_8148A574:
/* 8148A574 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A578 | 41 82 00 0C */	beq .L_8148A584
/* 8148A57C | 38 00 00 00 */	li r0, 0x0
/* 8148A580 | 48 00 00 20 */	b .L_8148A5A0
.L_8148A584:
/* 8148A584 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A588 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A58C | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A590 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A594 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A598 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A59C | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A5A0:
/* 8148A5A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A5A4 | 41 82 00 24 */	beq .L_8148A5C8
/* 8148A5A8 | 7F E3 FB 78 */	mr r3, r31
/* 8148A5AC | 48 17 A4 05 */	bl atoi
/* 8148A5B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A5B4 | 41 80 00 14 */	blt .L_8148A5C8
/* 8148A5B8 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8148A5BC | 41 81 00 0C */	bgt .L_8148A5C8
/* 8148A5C0 | 38 60 00 01 */	li r3, 0x1
/* 8148A5C4 | 48 00 00 08 */	b .L_8148A5CC
.L_8148A5C8:
/* 8148A5C8 | 38 60 00 00 */	li r3, 0x0
.L_8148A5CC:
/* 8148A5CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148A5D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148A5D4 | 7C 08 03 A6 */	mtlr r0
/* 8148A5D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148A5DC | 4E 80 00 20 */	blr
.endfn CDBFSIsMonthDirName

# .text:0x2C8 | 0x8148A5E0 | size: 0xFC
.fn CDBFSIsDayDirName, global
/* 8148A5E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148A5E4 | 7C 08 02 A6 */	mflr r0
/* 8148A5E8 | 38 80 00 03 */	li r4, 0x3
/* 8148A5EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148A5F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148A5F4 | 7C 7F 1B 78 */	mr r31, r3
/* 8148A5F8 | 48 00 60 15 */	bl CDBSafeStrLen
/* 8148A5FC | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148A600 | 40 82 00 C4 */	bne .L_8148A6C4
/* 8148A604 | 88 9F 00 00 */	lbz r4, 0x0(r31)
/* 8148A608 | 38 00 00 00 */	li r0, 0x0
/* 8148A60C | 7C 84 07 75 */	extsb. r4, r4
/* 8148A610 | 41 80 00 0C */	blt .L_8148A61C
/* 8148A614 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A618 | 41 80 00 08 */	blt .L_8148A620
.L_8148A61C:
/* 8148A61C | 38 00 00 01 */	li r0, 0x1
.L_8148A620:
/* 8148A620 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A624 | 41 82 00 0C */	beq .L_8148A630
/* 8148A628 | 38 00 00 00 */	li r0, 0x0
/* 8148A62C | 48 00 00 20 */	b .L_8148A64C
.L_8148A630:
/* 8148A630 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A634 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A638 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A63C | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A640 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A644 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A648 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A64C:
/* 8148A64C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A650 | 41 82 00 74 */	beq .L_8148A6C4
/* 8148A654 | 88 9F 00 01 */	lbz r4, 0x1(r31)
/* 8148A658 | 38 00 00 00 */	li r0, 0x0
/* 8148A65C | 7C 84 07 75 */	extsb. r4, r4
/* 8148A660 | 41 80 00 0C */	blt .L_8148A66C
/* 8148A664 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A668 | 41 80 00 08 */	blt .L_8148A670
.L_8148A66C:
/* 8148A66C | 38 00 00 01 */	li r0, 0x1
.L_8148A670:
/* 8148A670 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A674 | 41 82 00 0C */	beq .L_8148A680
/* 8148A678 | 38 00 00 00 */	li r0, 0x0
/* 8148A67C | 48 00 00 20 */	b .L_8148A69C
.L_8148A680:
/* 8148A680 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A684 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A688 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A68C | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A690 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A694 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A698 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A69C:
/* 8148A69C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A6A0 | 41 82 00 24 */	beq .L_8148A6C4
/* 8148A6A4 | 7F E3 FB 78 */	mr r3, r31
/* 8148A6A8 | 48 17 A3 09 */	bl atoi
/* 8148A6AC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8148A6B0 | 41 80 00 14 */	blt .L_8148A6C4
/* 8148A6B4 | 2C 03 00 1F */	cmpwi r3, 0x1f
/* 8148A6B8 | 41 81 00 0C */	bgt .L_8148A6C4
/* 8148A6BC | 38 60 00 01 */	li r3, 0x1
/* 8148A6C0 | 48 00 00 08 */	b .L_8148A6C8
.L_8148A6C4:
/* 8148A6C4 | 38 60 00 00 */	li r3, 0x0
.L_8148A6C8:
/* 8148A6C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148A6CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148A6D0 | 7C 08 03 A6 */	mtlr r0
/* 8148A6D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148A6D8 | 4E 80 00 20 */	blr
.endfn CDBFSIsDayDirName

# .text:0x3C4 | 0x8148A6DC | size: 0xFC
.fn CDBFSIsHourDirName, global
/* 8148A6DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148A6E0 | 7C 08 02 A6 */	mflr r0
/* 8148A6E4 | 38 80 00 03 */	li r4, 0x3
/* 8148A6E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148A6EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148A6F0 | 7C 7F 1B 78 */	mr r31, r3
/* 8148A6F4 | 48 00 5F 19 */	bl CDBSafeStrLen
/* 8148A6F8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148A6FC | 40 82 00 C4 */	bne .L_8148A7C0
/* 8148A700 | 88 9F 00 00 */	lbz r4, 0x0(r31)
/* 8148A704 | 38 00 00 00 */	li r0, 0x0
/* 8148A708 | 7C 84 07 75 */	extsb. r4, r4
/* 8148A70C | 41 80 00 0C */	blt .L_8148A718
/* 8148A710 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A714 | 41 80 00 08 */	blt .L_8148A71C
.L_8148A718:
/* 8148A718 | 38 00 00 01 */	li r0, 0x1
.L_8148A71C:
/* 8148A71C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A720 | 41 82 00 0C */	beq .L_8148A72C
/* 8148A724 | 38 00 00 00 */	li r0, 0x0
/* 8148A728 | 48 00 00 20 */	b .L_8148A748
.L_8148A72C:
/* 8148A72C | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A730 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A734 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A738 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A73C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A740 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A744 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A748:
/* 8148A748 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A74C | 41 82 00 74 */	beq .L_8148A7C0
/* 8148A750 | 88 9F 00 01 */	lbz r4, 0x1(r31)
/* 8148A754 | 38 00 00 00 */	li r0, 0x0
/* 8148A758 | 7C 84 07 75 */	extsb. r4, r4
/* 8148A75C | 41 80 00 0C */	blt .L_8148A768
/* 8148A760 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A764 | 41 80 00 08 */	blt .L_8148A76C
.L_8148A768:
/* 8148A768 | 38 00 00 01 */	li r0, 0x1
.L_8148A76C:
/* 8148A76C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A770 | 41 82 00 0C */	beq .L_8148A77C
/* 8148A774 | 38 00 00 00 */	li r0, 0x0
/* 8148A778 | 48 00 00 20 */	b .L_8148A798
.L_8148A77C:
/* 8148A77C | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A780 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A784 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A788 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A78C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A790 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A794 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A798:
/* 8148A798 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A79C | 41 82 00 24 */	beq .L_8148A7C0
/* 8148A7A0 | 7F E3 FB 78 */	mr r3, r31
/* 8148A7A4 | 48 17 A2 0D */	bl atoi
/* 8148A7A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A7AC | 41 80 00 14 */	blt .L_8148A7C0
/* 8148A7B0 | 2C 03 00 17 */	cmpwi r3, 0x17
/* 8148A7B4 | 41 81 00 0C */	bgt .L_8148A7C0
/* 8148A7B8 | 38 60 00 01 */	li r3, 0x1
/* 8148A7BC | 48 00 00 08 */	b .L_8148A7C4
.L_8148A7C0:
/* 8148A7C0 | 38 60 00 00 */	li r3, 0x0
.L_8148A7C4:
/* 8148A7C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148A7C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148A7CC | 7C 08 03 A6 */	mtlr r0
/* 8148A7D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148A7D4 | 4E 80 00 20 */	blr
.endfn CDBFSIsHourDirName

# .text:0x4C0 | 0x8148A7D8 | size: 0xFC
.fn CDBFSIsMinuteDirName, global
/* 8148A7D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148A7DC | 7C 08 02 A6 */	mflr r0
/* 8148A7E0 | 38 80 00 03 */	li r4, 0x3
/* 8148A7E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148A7E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148A7EC | 7C 7F 1B 78 */	mr r31, r3
/* 8148A7F0 | 48 00 5E 1D */	bl CDBSafeStrLen
/* 8148A7F4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148A7F8 | 40 82 00 C4 */	bne .L_8148A8BC
/* 8148A7FC | 88 9F 00 00 */	lbz r4, 0x0(r31)
/* 8148A800 | 38 00 00 00 */	li r0, 0x0
/* 8148A804 | 7C 84 07 75 */	extsb. r4, r4
/* 8148A808 | 41 80 00 0C */	blt .L_8148A814
/* 8148A80C | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A810 | 41 80 00 08 */	blt .L_8148A818
.L_8148A814:
/* 8148A814 | 38 00 00 01 */	li r0, 0x1
.L_8148A818:
/* 8148A818 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A81C | 41 82 00 0C */	beq .L_8148A828
/* 8148A820 | 38 00 00 00 */	li r0, 0x0
/* 8148A824 | 48 00 00 20 */	b .L_8148A844
.L_8148A828:
/* 8148A828 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A82C | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A830 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A834 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A838 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A83C | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A840 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A844:
/* 8148A844 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A848 | 41 82 00 74 */	beq .L_8148A8BC
/* 8148A84C | 88 9F 00 01 */	lbz r4, 0x1(r31)
/* 8148A850 | 38 00 00 00 */	li r0, 0x0
/* 8148A854 | 7C 84 07 75 */	extsb. r4, r4
/* 8148A858 | 41 80 00 0C */	blt .L_8148A864
/* 8148A85C | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148A860 | 41 80 00 08 */	blt .L_8148A868
.L_8148A864:
/* 8148A864 | 38 00 00 01 */	li r0, 0x1
.L_8148A868:
/* 8148A868 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A86C | 41 82 00 0C */	beq .L_8148A878
/* 8148A870 | 38 00 00 00 */	li r0, 0x0
/* 8148A874 | 48 00 00 20 */	b .L_8148A894
.L_8148A878:
/* 8148A878 | 3C 60 81 69 */	lis r3, _current_locale@ha
/* 8148A87C | 54 80 08 3C */	slwi r0, r4, 1
/* 8148A880 | 38 63 3B 88 */	addi r3, r3, _current_locale@l
/* 8148A884 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8148A888 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8148A88C | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148A890 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_8148A894:
/* 8148A894 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A898 | 41 82 00 24 */	beq .L_8148A8BC
/* 8148A89C | 7F E3 FB 78 */	mr r3, r31
/* 8148A8A0 | 48 17 A1 11 */	bl atoi
/* 8148A8A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A8A8 | 41 80 00 14 */	blt .L_8148A8BC
/* 8148A8AC | 2C 03 00 3B */	cmpwi r3, 0x3b
/* 8148A8B0 | 41 81 00 0C */	bgt .L_8148A8BC
/* 8148A8B4 | 38 60 00 01 */	li r3, 0x1
/* 8148A8B8 | 48 00 00 08 */	b .L_8148A8C0
.L_8148A8BC:
/* 8148A8BC | 38 60 00 00 */	li r3, 0x0
.L_8148A8C0:
/* 8148A8C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148A8C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148A8C8 | 7C 08 03 A6 */	mtlr r0
/* 8148A8CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148A8D0 | 4E 80 00 20 */	blr
.endfn CDBFSIsMinuteDirName

# .text:0x5BC | 0x8148A8D4 | size: 0x50
.fn CDBFSIsCodeDirName, global
/* 8148A8D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148A8D8 | 7C 08 02 A6 */	mflr r0
/* 8148A8DC | 38 80 00 08 */	li r4, 0x8
/* 8148A8E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148A8E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148A8E8 | 7C 7F 1B 78 */	mr r31, r3
/* 8148A8EC | 48 00 5D 21 */	bl CDBSafeStrLen
/* 8148A8F0 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 8148A8F4 | 40 82 00 18 */	bne .L_8148A90C
/* 8148A8F8 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8148A8FC | 2C 00 00 5F */	cmpwi r0, 0x5f
/* 8148A900 | 40 82 00 0C */	bne .L_8148A90C
/* 8148A904 | 38 60 00 01 */	li r3, 0x1
/* 8148A908 | 48 00 00 08 */	b .L_8148A910
.L_8148A90C:
/* 8148A90C | 38 60 00 00 */	li r3, 0x0
.L_8148A910:
/* 8148A910 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148A914 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148A918 | 7C 08 03 A6 */	mtlr r0
/* 8148A91C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148A920 | 4E 80 00 20 */	blr
.endfn CDBFSIsCodeDirName

# .text:0x60C | 0x8148A924 | size: 0xAC
.fn CDBFSIsTypeDirName, global
/* 8148A924 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148A928 | 7C 08 02 A6 */	mflr r0
/* 8148A92C | 38 80 00 06 */	li r4, 0x6
/* 8148A930 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148A934 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148A938 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148A93C | 7C 7E 1B 78 */	mr r30, r3
/* 8148A940 | 48 00 5C CD */	bl CDBSafeStrLen
/* 8148A944 | 7C 7F 1B 78 */	mr r31, r3
/* 8148A948 | 7F C3 F3 78 */	mr r3, r30
/* 8148A94C | 38 80 00 03 */	li r4, 0x3
/* 8148A950 | 48 00 5C BD */	bl CDBSafeStrLen
/* 8148A954 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8148A958 | 40 82 00 18 */	bne .L_8148A970
/* 8148A95C | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8148A960 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 8148A964 | 40 82 00 0C */	bne .L_8148A970
/* 8148A968 | 38 00 00 01 */	li r0, 0x1
/* 8148A96C | 48 00 00 30 */	b .L_8148A99C
.L_8148A970:
/* 8148A970 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148A974 | 40 82 00 24 */	bne .L_8148A998
/* 8148A978 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8148A97C | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 8148A980 | 40 82 00 18 */	bne .L_8148A998
/* 8148A984 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 8148A988 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 8148A98C | 40 82 00 0C */	bne .L_8148A998
/* 8148A990 | 38 00 00 01 */	li r0, 0x1
/* 8148A994 | 48 00 00 08 */	b .L_8148A99C
.L_8148A998:
/* 8148A998 | 38 00 00 00 */	li r0, 0x0
.L_8148A99C:
/* 8148A99C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148A9A0 | 40 82 00 14 */	bne .L_8148A9B4
/* 8148A9A4 | 2C 1F 00 06 */	cmpwi r31, 0x6
/* 8148A9A8 | 40 80 00 0C */	bge .L_8148A9B4
/* 8148A9AC | 38 60 00 01 */	li r3, 0x1
/* 8148A9B0 | 48 00 00 08 */	b .L_8148A9B8
.L_8148A9B4:
/* 8148A9B4 | 38 60 00 00 */	li r3, 0x0
.L_8148A9B8:
/* 8148A9B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148A9BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148A9C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148A9C4 | 7C 08 03 A6 */	mtlr r0
/* 8148A9C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148A9CC | 4E 80 00 20 */	blr
.endfn CDBFSIsTypeDirName

# .text:0x6B8 | 0x8148A9D0 | size: 0x1FC
.fn CDBFSIsCDBFileOnSD, global
/* 8148A9D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148A9D4 | 7C 08 02 A6 */	mflr r0
/* 8148A9D8 | 38 80 00 0D */	li r4, 0xd
/* 8148A9DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148A9E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148A9E4 | 7C 7F 1B 78 */	mr r31, r3
/* 8148A9E8 | 48 00 5C 25 */	bl CDBSafeStrLen
/* 8148A9EC | 2C 03 00 0C */	cmpwi r3, 0xc
/* 8148A9F0 | 40 82 01 C4 */	bne .L_8148ABB4
/* 8148A9F4 | 3C 80 81 69 */	lis r4, _current_locale@ha
/* 8148A9F8 | 38 00 00 04 */	li r0, 0x4
/* 8148A9FC | 38 84 3B 88 */	addi r4, r4, _current_locale@l
/* 8148AA00 | 7F E3 FB 78 */	mr r3, r31
/* 8148AA04 | 80 C4 00 38 */	lwz r6, 0x38(r4)
/* 8148AA08 | 38 E0 00 00 */	li r7, 0x0
/* 8148AA0C | 7C 09 03 A6 */	mtctr r0
.L_8148AA10:
/* 8148AA10 | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 8148AA14 | 38 00 00 00 */	li r0, 0x0
/* 8148AA18 | 7C A5 07 75 */	extsb. r5, r5
/* 8148AA1C | 41 80 00 0C */	blt .L_8148AA28
/* 8148AA20 | 2C 05 01 00 */	cmpwi r5, 0x100
/* 8148AA24 | 41 80 00 08 */	blt .L_8148AA2C
.L_8148AA28:
/* 8148AA28 | 38 00 00 01 */	li r0, 0x1
.L_8148AA2C:
/* 8148AA2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AA30 | 41 82 00 0C */	beq .L_8148AA3C
/* 8148AA34 | 38 00 00 00 */	li r0, 0x0
/* 8148AA38 | 48 00 00 14 */	b .L_8148AA4C
.L_8148AA3C:
/* 8148AA3C | 80 86 00 08 */	lwz r4, 0x8(r6)
/* 8148AA40 | 54 A0 08 3C */	slwi r0, r5, 1
/* 8148AA44 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 8148AA48 | 54 00 05 6A */	rlwinm r0, r0, 0, 21, 21
.L_8148AA4C:
/* 8148AA4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AA50 | 40 82 00 0C */	bne .L_8148AA5C
/* 8148AA54 | 38 60 00 00 */	li r3, 0x0
/* 8148AA58 | 48 00 01 60 */	b .L_8148ABB8
.L_8148AA5C:
/* 8148AA5C | 88 A3 00 01 */	lbz r5, 0x1(r3)
/* 8148AA60 | 38 00 00 00 */	li r0, 0x0
/* 8148AA64 | 7C A5 07 75 */	extsb. r5, r5
/* 8148AA68 | 41 80 00 0C */	blt .L_8148AA74
/* 8148AA6C | 2C 05 01 00 */	cmpwi r5, 0x100
/* 8148AA70 | 41 80 00 08 */	blt .L_8148AA78
.L_8148AA74:
/* 8148AA74 | 38 00 00 01 */	li r0, 0x1
.L_8148AA78:
/* 8148AA78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AA7C | 41 82 00 0C */	beq .L_8148AA88
/* 8148AA80 | 38 00 00 00 */	li r0, 0x0
/* 8148AA84 | 48 00 00 14 */	b .L_8148AA98
.L_8148AA88:
/* 8148AA88 | 80 86 00 08 */	lwz r4, 0x8(r6)
/* 8148AA8C | 54 A0 08 3C */	slwi r0, r5, 1
/* 8148AA90 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 8148AA94 | 54 00 05 6A */	rlwinm r0, r0, 0, 21, 21
.L_8148AA98:
/* 8148AA98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AA9C | 40 82 00 0C */	bne .L_8148AAA8
/* 8148AAA0 | 38 60 00 00 */	li r3, 0x0
/* 8148AAA4 | 48 00 01 14 */	b .L_8148ABB8
.L_8148AAA8:
/* 8148AAA8 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8148AAAC | 38 63 00 02 */	addi r3, r3, 0x2
/* 8148AAB0 | 42 00 FF 60 */	bdnz .L_8148AA10
/* 8148AAB4 | 88 1F 00 08 */	lbz r0, 0x8(r31)
/* 8148AAB8 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 8148AABC | 41 82 00 0C */	beq .L_8148AAC8
/* 8148AAC0 | 38 60 00 00 */	li r3, 0x0
/* 8148AAC4 | 48 00 00 F4 */	b .L_8148ABB8
.L_8148AAC8:
/* 8148AAC8 | 88 9F 00 09 */	lbz r4, 0x9(r31)
/* 8148AACC | 38 00 00 00 */	li r0, 0x0
/* 8148AAD0 | 7C 84 07 75 */	extsb. r4, r4
/* 8148AAD4 | 41 80 00 0C */	blt .L_8148AAE0
/* 8148AAD8 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148AADC | 41 80 00 08 */	blt .L_8148AAE4
.L_8148AAE0:
/* 8148AAE0 | 38 00 00 01 */	li r0, 0x1
.L_8148AAE4:
/* 8148AAE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AAE8 | 41 82 00 0C */	beq .L_8148AAF4
/* 8148AAEC | 38 00 00 00 */	li r0, 0x0
/* 8148AAF0 | 48 00 00 14 */	b .L_8148AB04
.L_8148AAF4:
/* 8148AAF4 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 8148AAF8 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148AAFC | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148AB00 | 54 00 05 6A */	rlwinm r0, r0, 0, 21, 21
.L_8148AB04:
/* 8148AB04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AB08 | 40 82 00 0C */	bne .L_8148AB14
/* 8148AB0C | 38 60 00 00 */	li r3, 0x0
/* 8148AB10 | 48 00 00 A8 */	b .L_8148ABB8
.L_8148AB14:
/* 8148AB14 | 88 9F 00 0A */	lbz r4, 0xa(r31)
/* 8148AB18 | 38 00 00 00 */	li r0, 0x0
/* 8148AB1C | 7C 84 07 75 */	extsb. r4, r4
/* 8148AB20 | 41 80 00 0C */	blt .L_8148AB2C
/* 8148AB24 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148AB28 | 41 80 00 08 */	blt .L_8148AB30
.L_8148AB2C:
/* 8148AB2C | 38 00 00 01 */	li r0, 0x1
.L_8148AB30:
/* 8148AB30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AB34 | 41 82 00 0C */	beq .L_8148AB40
/* 8148AB38 | 38 00 00 00 */	li r0, 0x0
/* 8148AB3C | 48 00 00 14 */	b .L_8148AB50
.L_8148AB40:
/* 8148AB40 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 8148AB44 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148AB48 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148AB4C | 54 00 05 6A */	rlwinm r0, r0, 0, 21, 21
.L_8148AB50:
/* 8148AB50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AB54 | 40 82 00 0C */	bne .L_8148AB60
/* 8148AB58 | 38 60 00 00 */	li r3, 0x0
/* 8148AB5C | 48 00 00 5C */	b .L_8148ABB8
.L_8148AB60:
/* 8148AB60 | 88 9F 00 0B */	lbz r4, 0xb(r31)
/* 8148AB64 | 38 00 00 00 */	li r0, 0x0
/* 8148AB68 | 7C 84 07 75 */	extsb. r4, r4
/* 8148AB6C | 41 80 00 0C */	blt .L_8148AB78
/* 8148AB70 | 2C 04 01 00 */	cmpwi r4, 0x100
/* 8148AB74 | 41 80 00 08 */	blt .L_8148AB7C
.L_8148AB78:
/* 8148AB78 | 38 00 00 01 */	li r0, 0x1
.L_8148AB7C:
/* 8148AB7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AB80 | 41 82 00 0C */	beq .L_8148AB8C
/* 8148AB84 | 38 00 00 00 */	li r0, 0x0
/* 8148AB88 | 48 00 00 14 */	b .L_8148AB9C
.L_8148AB8C:
/* 8148AB8C | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 8148AB90 | 54 80 08 3C */	slwi r0, r4, 1
/* 8148AB94 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148AB98 | 54 00 05 6A */	rlwinm r0, r0, 0, 21, 21
.L_8148AB9C:
/* 8148AB9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148ABA0 | 40 82 00 0C */	bne .L_8148ABAC
/* 8148ABA4 | 38 60 00 00 */	li r3, 0x0
/* 8148ABA8 | 48 00 00 10 */	b .L_8148ABB8
.L_8148ABAC:
/* 8148ABAC | 38 60 00 01 */	li r3, 0x1
/* 8148ABB0 | 48 00 00 08 */	b .L_8148ABB8
.L_8148ABB4:
/* 8148ABB4 | 38 60 00 00 */	li r3, 0x0
.L_8148ABB8:
/* 8148ABB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148ABBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148ABC0 | 7C 08 03 A6 */	mtlr r0
/* 8148ABC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148ABC8 | 4E 80 00 20 */	blr
.endfn CDBFSIsCDBFileOnSD

# .text:0x8B4 | 0x8148ABCC | size: 0x50
.fn CDBFSIsMCGCDirNameOnSD, global
/* 8148ABCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148ABD0 | 7C 08 02 A6 */	mflr r0
/* 8148ABD4 | 38 80 00 08 */	li r4, 0x8
/* 8148ABD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148ABDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148ABE0 | 7C 7F 1B 78 */	mr r31, r3
/* 8148ABE4 | 48 00 5A 29 */	bl CDBSafeStrLen
/* 8148ABE8 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 8148ABEC | 40 82 00 18 */	bne .L_8148AC04
/* 8148ABF0 | 88 1F 00 04 */	lbz r0, 0x4(r31)
/* 8148ABF4 | 2C 00 00 5F */	cmpwi r0, 0x5f
/* 8148ABF8 | 40 82 00 0C */	bne .L_8148AC04
/* 8148ABFC | 38 60 00 01 */	li r3, 0x1
/* 8148AC00 | 48 00 00 08 */	b .L_8148AC08
.L_8148AC04:
/* 8148AC04 | 38 60 00 00 */	li r3, 0x0
.L_8148AC08:
/* 8148AC08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148AC0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148AC10 | 7C 08 03 A6 */	mtlr r0
/* 8148AC14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148AC18 | 4E 80 00 20 */	blr
.endfn CDBFSIsMCGCDirNameOnSD

# .text:0x904 | 0x8148AC1C | size: 0xAC
.fn CDBFSIsTypeDirNameOnSD, global
/* 8148AC1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148AC20 | 7C 08 02 A6 */	mflr r0
/* 8148AC24 | 38 80 00 06 */	li r4, 0x6
/* 8148AC28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148AC2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8148AC30 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8148AC34 | 7C 7E 1B 78 */	mr r30, r3
/* 8148AC38 | 48 00 59 D5 */	bl CDBSafeStrLen
/* 8148AC3C | 7C 7F 1B 78 */	mr r31, r3
/* 8148AC40 | 7F C3 F3 78 */	mr r3, r30
/* 8148AC44 | 38 80 00 03 */	li r4, 0x3
/* 8148AC48 | 48 00 59 C5 */	bl CDBSafeStrLen
/* 8148AC4C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8148AC50 | 40 82 00 18 */	bne .L_8148AC68
/* 8148AC54 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8148AC58 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 8148AC5C | 40 82 00 0C */	bne .L_8148AC68
/* 8148AC60 | 38 00 00 01 */	li r0, 0x1
/* 8148AC64 | 48 00 00 30 */	b .L_8148AC94
.L_8148AC68:
/* 8148AC68 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8148AC6C | 40 82 00 24 */	bne .L_8148AC90
/* 8148AC70 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8148AC74 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 8148AC78 | 40 82 00 18 */	bne .L_8148AC90
/* 8148AC7C | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 8148AC80 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 8148AC84 | 40 82 00 0C */	bne .L_8148AC90
/* 8148AC88 | 38 00 00 01 */	li r0, 0x1
/* 8148AC8C | 48 00 00 08 */	b .L_8148AC94
.L_8148AC90:
/* 8148AC90 | 38 00 00 00 */	li r0, 0x0
.L_8148AC94:
/* 8148AC94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148AC98 | 40 82 00 14 */	bne .L_8148ACAC
/* 8148AC9C | 2C 1F 00 06 */	cmpwi r31, 0x6
/* 8148ACA0 | 40 80 00 0C */	bge .L_8148ACAC
/* 8148ACA4 | 38 60 00 01 */	li r3, 0x1
/* 8148ACA8 | 48 00 00 08 */	b .L_8148ACB0
.L_8148ACAC:
/* 8148ACAC | 38 60 00 00 */	li r3, 0x0
.L_8148ACB0:
/* 8148ACB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148ACB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148ACB8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8148ACBC | 7C 08 03 A6 */	mtlr r0
/* 8148ACC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148ACC4 | 4E 80 00 20 */	blr
.endfn CDBFSIsTypeDirNameOnSD

# 0x816979E8..0x816979F0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816979E8 | size: 0x8
.obj lbl_816979E8, global
	.4byte 0x2F000000
	.4byte 0x00000000
.endobj lbl_816979E8
