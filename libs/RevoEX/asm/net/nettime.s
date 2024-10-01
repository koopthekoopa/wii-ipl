.include "macros.inc"
.file "nettime.c"

# 0x814934A8..0x8149358C | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x814934A8 | size: 0xE4
.fn NETGetUniversalCalendar, global
/* 814934A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814934AC | 7C 08 02 A6 */	mflr r0
/* 814934B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814934B4 | 80 0D AD 70 */	lwz r0, lbl_81698DB0@sda21(r0)
/* 814934B8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814934BC | 7C 7F 1B 78 */	mr r31, r3
/* 814934C0 | 80 6D AD 74 */	lwz r3, lbl_81698DB4@sda21(r0)
/* 814934C4 | 7C 60 03 79 */	or. r0, r3, r0
/* 814934C8 | 41 82 00 48 */	beq .L_81493510
/* 814934CC | 48 0A 28 6D */	bl __OSGetSystemTime
/* 814934D0 | 3C A0 80 00 */	lis r5, 0x8000
/* 814934D4 | 81 0D AD 74 */	lwz r8, lbl_81698DB4@sda21(r0)
/* 814934D8 | 80 C5 00 F8 */	lwz r6, 0xf8(r5)
/* 814934DC | 6C 65 80 00 */	xoris r5, r3, 0x8000
/* 814934E0 | 80 ED AD 70 */	lwz r7, lbl_81698DB0@sda21(r0)
/* 814934E4 | 38 00 00 00 */	li r0, 0x0
/* 814934E8 | 54 C3 F0 BE */	srwi r3, r6, 2
/* 814934EC | 1C 63 00 3C */	mulli r3, r3, 0x3c
/* 814934F0 | 7C 68 18 14 */	addc r3, r8, r3
/* 814934F4 | 7C 07 01 14 */	adde r0, r7, r0
/* 814934F8 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814934FC | 7C 64 18 10 */	subfc r3, r4, r3
/* 81493500 | 7C A5 01 10 */	subfe r5, r5, r0
/* 81493504 | 7C A0 01 10 */	subfe r5, r0, r0
/* 81493508 | 7C A5 00 D1 */	neg. r5, r5
/* 8149350C | 41 82 00 18 */	beq .L_81493524
.L_81493510:
/* 81493510 | 38 60 00 00 */	li r3, 0x0
/* 81493514 | 48 01 B2 9D */	bl NWC24iSynchronizeRtcCounter
/* 81493518 | 48 0A 28 21 */	bl __OSGetSystemTime
/* 8149351C | 90 8D AD 74 */	stw r4, lbl_81698DB4@sda21(r0)
/* 81493520 | 90 6D AD 70 */	stw r3, lbl_81698DB0@sda21(r0)
.L_81493524:
/* 81493524 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81493528 | 48 01 AE 8D */	bl NWC24iGetUniversalTime
/* 8149352C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81493530 | 41 80 00 38 */	blt .L_81493568
/* 81493534 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81493538 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8149353C | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 81493540 | 48 01 89 71 */	bl NWC24iEpochSecondsToDate
/* 81493544 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81493548 | 41 80 00 20 */	blt .L_81493568
/* 8149354C | 7F E3 FB 78 */	mr r3, r31
/* 81493550 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81493554 | 48 01 8C 71 */	bl NWC24iDateToOSCalendarTime
/* 81493558 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149355C | 41 80 00 0C */	blt .L_81493568
/* 81493560 | 38 60 00 01 */	li r3, 0x1
/* 81493564 | 48 00 00 14 */	b .L_81493578
.L_81493568:
/* 81493568 | 48 0A 27 19 */	bl OSGetTime
/* 8149356C | 7F E5 FB 78 */	mr r5, r31
/* 81493570 | 48 0A 29 F5 */	bl OSTicksToCalendarTime
/* 81493574 | 38 60 00 00 */	li r3, 0x0
.L_81493578:
/* 81493578 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149357C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81493580 | 7C 08 03 A6 */	mtlr r0
/* 81493584 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81493588 | 4E 80 00 20 */	blr
.endfn NETGetUniversalCalendar

# 0x81698DB0..0x81698DB8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698DB0 | size: 0x4
.obj lbl_81698DB0, global
	.skip 0x4
.endobj lbl_81698DB0

# .sbss:0x4 | 0x81698DB4 | size: 0x4
.obj lbl_81698DB4, global
	.skip 0x4
.endobj lbl_81698DB4
