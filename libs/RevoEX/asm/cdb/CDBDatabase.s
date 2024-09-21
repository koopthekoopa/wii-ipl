.include "macros.inc"
.file "CDBDatabase.c"

# 0x814873A0..0x8148A318 | size: 0x2F78
.text
.balign 4

# .text:0x0 | 0x814873A0 | size: 0x44
.fn CDBDatabaseInit, global
/* 814873A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814873A4 | 7C 08 02 A6 */	mflr r0
/* 814873A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814873AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814873B0 | 7C 7F 1B 78 */	mr r31, r3
/* 814873B4 | 48 00 8D D5 */	bl CDBGetMakerCode
/* 814873B8 | B0 7F 00 00 */	sth r3, 0x0(r31)
/* 814873BC | 48 00 8D 81 */	bl CDBGetInitialCode
/* 814873C0 | 38 00 00 00 */	li r0, 0x0
/* 814873C4 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 814873C8 | 38 60 00 00 */	li r3, 0x0
/* 814873CC | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814873D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814873D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814873D8 | 7C 08 03 A6 */	mtlr r0
/* 814873DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814873E0 | 4E 80 00 20 */	blr
.endfn CDBDatabaseInit

# .text:0x44 | 0x814873E4 | size: 0x50
.fn CDBDatabaseOpen, global
/* 814873E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814873E8 | 7C 08 02 A6 */	mflr r0
/* 814873EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814873F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814873F4 | 7C 7F 1B 78 */	mr r31, r3
/* 814873F8 | 48 00 7E 85 */	bl CDBLock
/* 814873FC | 7F E3 FB 78 */	mr r3, r31
/* 81487400 | 38 80 00 03 */	li r4, 0x3
/* 81487404 | 48 00 7F CD */	bl CDBDatabaseAllocate
/* 81487408 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148740C | 3B E0 00 00 */	li r31, 0x0
/* 81487410 | 41 82 00 08 */	beq .L_81487418
/* 81487414 | 7C 7F 1B 78 */	mr r31, r3
.L_81487418:
/* 81487418 | 48 00 7E 71 */	bl CDBUnlock
/* 8148741C | 7F E3 FB 78 */	mr r3, r31
/* 81487420 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81487424 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81487428 | 7C 08 03 A6 */	mtlr r0
/* 8148742C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81487430 | 4E 80 00 20 */	blr
.endfn CDBDatabaseOpen

# .text:0x94 | 0x81487434 | size: 0xB0
.fn CDBDatabaseClose, global
/* 81487434 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81487438 | 7C 08 02 A6 */	mflr r0
/* 8148743C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81487440 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81487444 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81487448 | 7C 7E 1B 78 */	mr r30, r3
/* 8148744C | 48 00 7E 31 */	bl CDBLock
/* 81487450 | 83 FE 00 08 */	lwz r31, 0x8(r30)
/* 81487454 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81487458 | 41 82 00 14 */	beq .L_8148746C
/* 8148745C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 81487460 | 80 03 C0 10 */	lwz r0, -0x3ff0(r3)
/* 81487464 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81487468 | 40 82 00 34 */	bne .L_8148749C
.L_8148746C:
/* 8148746C | 38 60 00 02 */	li r3, 0x2
/* 81487470 | 48 00 91 21 */	bl CDBIsPrintDebugMessage
/* 81487474 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487478 | 41 82 00 1C */	beq .L_81487494
/* 8148747C | 38 60 00 02 */	li r3, 0x2
/* 81487480 | 48 00 91 29 */	bl CDBReport_
/* 81487484 | 3C 60 81 67 */	lis r3, lbl_8166B528@ha
/* 81487488 | 38 63 B5 28 */	addi r3, r3, lbl_8166B528@l
/* 8148748C | 4C C6 31 82 */	crclr cr1eq
/* 81487490 | 48 0A 72 11 */	bl OSReport
.L_81487494:
/* 81487494 | 3B E0 00 1B */	li r31, 0x1b
/* 81487498 | 48 00 00 2C */	b .L_814874C4
.L_8148749C:
/* 8148749C | 7F C3 F3 78 */	mr r3, r30
/* 814874A0 | 48 00 81 D5 */	bl CDBDatabaseFree
/* 814874A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814874A8 | 41 82 00 0C */	beq .L_814874B4
/* 814874AC | 7C 7F 1B 78 */	mr r31, r3
/* 814874B0 | 48 00 00 14 */	b .L_814874C4
.L_814874B4:
/* 814874B4 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 814874B8 | 38 00 00 00 */	li r0, 0x0
/* 814874BC | 90 03 C0 10 */	stw r0, -0x3ff0(r3)
/* 814874C0 | 3B E0 00 00 */	li r31, 0x0
.L_814874C4:
/* 814874C4 | 48 00 7D C5 */	bl CDBUnlock
/* 814874C8 | 7F E3 FB 78 */	mr r3, r31
/* 814874CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814874D0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814874D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814874D8 | 7C 08 03 A6 */	mtlr r0
/* 814874DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814874E0 | 4E 80 00 20 */	blr
.endfn CDBDatabaseClose

# .text:0x144 | 0x814874E4 | size: 0xEC
.fn CDBDatabasePrivateCreateRecordAtOnce, global
/* 814874E4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814874E8 | 7C 08 02 A6 */	mflr r0
/* 814874EC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814874F0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814874F4 | 48 17 1F B9 */	bl _savegpr_22
/* 814874F8 | 7C 76 1B 78 */	mr r22, r3
/* 814874FC | 7C 97 23 78 */	mr r23, r4
/* 81487500 | 7C B8 2B 78 */	mr r24, r5
/* 81487504 | 7C D9 33 78 */	mr r25, r6
/* 81487508 | 7C FA 3B 78 */	mr r26, r7
/* 8148750C | 7D 1B 43 78 */	mr r27, r8
/* 81487510 | 7D 3D 4B 78 */	mr r29, r9
/* 81487514 | 7D 5C 53 78 */	mr r28, r10
/* 81487518 | 48 00 7D 65 */	bl CDBLock
/* 8148751C | 7F 83 E3 78 */	mr r3, r28
/* 81487520 | 4B FF EC 6D */	bl CDBIsGameCodeStr
/* 81487524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487528 | 40 82 00 0C */	bne .L_81487534
/* 8148752C | 3B E0 00 04 */	li r31, 0x4
/* 81487530 | 48 00 00 80 */	b .L_814875B0
.L_81487534:
/* 81487534 | 7F A3 EB 78 */	mr r3, r29
/* 81487538 | 4B FF EC 25 */	bl CDBIsMakerCodeStr
/* 8148753C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487540 | 40 82 00 0C */	bne .L_8148754C
/* 81487544 | 3B E0 00 03 */	li r31, 0x3
/* 81487548 | 48 00 00 68 */	b .L_814875B0
.L_8148754C:
/* 8148754C | 7F A3 EB 78 */	mr r3, r29
/* 81487550 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81487554 | 4B FF F7 2D */	bl CDBConvMCStrToMCValue
/* 81487558 | 7F 83 E3 78 */	mr r3, r28
/* 8148755C | 38 81 00 14 */	addi r4, r1, 0x14
/* 81487560 | 4B FF F6 59 */	bl CDBConvGCStrToGCValue
/* 81487564 | A3 E1 00 10 */	lhz r31, 0x10(r1)
/* 81487568 | 83 C1 00 14 */	lwz r30, 0x14(r1)
/* 8148756C | 48 0A E7 15 */	bl OSGetTime
/* 81487570 | 7C 9C 23 78 */	mr r28, r4
/* 81487574 | 7C 7D 1B 78 */	mr r29, r3
/* 81487578 | 48 00 7D 05 */	bl CDBLock
/* 8148757C | 93 41 00 08 */	stw r26, 0x8(r1)
/* 81487580 | 7E C3 B3 78 */	mr r3, r22
/* 81487584 | 7E E4 BB 78 */	mr r4, r23
/* 81487588 | 7F 05 C3 78 */	mr r5, r24
/* 8148758C | 93 61 00 0C */	stw r27, 0xc(r1)
/* 81487590 | 7F 26 CB 78 */	mr r6, r25
/* 81487594 | 7F 88 E3 78 */	mr r8, r28
/* 81487598 | 7F A7 EB 78 */	mr r7, r29
/* 8148759C | 7F C9 F3 78 */	mr r9, r30
/* 814875A0 | 7F EA FB 78 */	mr r10, r31
/* 814875A4 | 48 00 03 61 */	bl CDBDatabaseCreateRecordImAtOnce_
/* 814875A8 | 7C 7F 1B 78 */	mr r31, r3
/* 814875AC | 48 00 7C DD */	bl CDBUnlock
.L_814875B0:
/* 814875B0 | 48 00 7C D9 */	bl CDBUnlock
/* 814875B4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814875B8 | 7F E3 FB 78 */	mr r3, r31
/* 814875BC | 48 17 1F 3D */	bl _restgpr_22
/* 814875C0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814875C4 | 7C 08 03 A6 */	mtlr r0
/* 814875C8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814875CC | 4E 80 00 20 */	blr
.endfn CDBDatabasePrivateCreateRecordAtOnce

# .text:0x230 | 0x814875D0 | size: 0x94
.fn CDBDatabaseCreateRecordAtOnce, global
/* 814875D0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814875D4 | 7C 08 02 A6 */	mflr r0
/* 814875D8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814875DC | 39 61 00 40 */	addi r11, r1, 0x40
/* 814875E0 | 48 17 1E CD */	bl _savegpr_22
/* 814875E4 | A3 83 00 00 */	lhz r28, 0x0(r3)
/* 814875E8 | 7C 76 1B 78 */	mr r22, r3
/* 814875EC | 83 A3 00 04 */	lwz r29, 0x4(r3)
/* 814875F0 | 7C 97 23 78 */	mr r23, r4
/* 814875F4 | 7C B8 2B 78 */	mr r24, r5
/* 814875F8 | 7C D9 33 78 */	mr r25, r6
/* 814875FC | 7C FA 3B 78 */	mr r26, r7
/* 81487600 | 7D 1B 43 78 */	mr r27, r8
/* 81487604 | 48 0A E6 7D */	bl OSGetTime
/* 81487608 | 7C 9E 23 78 */	mr r30, r4
/* 8148760C | 7C 7F 1B 78 */	mr r31, r3
/* 81487610 | 48 00 7C 6D */	bl CDBLock
/* 81487614 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 81487618 | 7E C3 B3 78 */	mr r3, r22
/* 8148761C | 7E E4 BB 78 */	mr r4, r23
/* 81487620 | 7F 05 C3 78 */	mr r5, r24
/* 81487624 | 93 61 00 0C */	stw r27, 0xc(r1)
/* 81487628 | 7F 26 CB 78 */	mr r6, r25
/* 8148762C | 7F C8 F3 78 */	mr r8, r30
/* 81487630 | 7F E7 FB 78 */	mr r7, r31
/* 81487634 | 7F A9 EB 78 */	mr r9, r29
/* 81487638 | 7F 8A E3 78 */	mr r10, r28
/* 8148763C | 48 00 02 C9 */	bl CDBDatabaseCreateRecordImAtOnce_
/* 81487640 | 7C 7C 1B 78 */	mr r28, r3
/* 81487644 | 48 00 7C 45 */	bl CDBUnlock
/* 81487648 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8148764C | 7F 83 E3 78 */	mr r3, r28
/* 81487650 | 48 17 1E A9 */	bl _restgpr_22
/* 81487654 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81487658 | 7C 08 03 A6 */	mtlr r0
/* 8148765C | 38 21 00 40 */	addi r1, r1, 0x40
/* 81487660 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCreateRecordAtOnce

# .text:0x2C4 | 0x81487664 | size: 0xCC
.fn CDBDatabaseCreateRecordAtOnceEx, global
/* 81487664 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81487668 | 7C 08 02 A6 */	mflr r0
/* 8148766C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81487670 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81487674 | 48 17 1E 39 */	bl _savegpr_22
/* 81487678 | 83 81 00 68 */	lwz r28, 0x68(r1)
/* 8148767C | 7C 97 23 78 */	mr r23, r4
/* 81487680 | 38 00 00 00 */	li r0, 0x0
/* 81487684 | 81 81 00 6C */	lwz r12, 0x6c(r1)
/* 81487688 | 81 61 00 70 */	lwz r11, 0x70(r1)
/* 8148768C | 7C 76 1B 78 */	mr r22, r3
/* 81487690 | 80 81 00 74 */	lwz r4, 0x74(r1)
/* 81487694 | 7C B8 2B 78 */	mr r24, r5
/* 81487698 | 91 21 00 24 */	stw r9, 0x24(r1)
/* 8148769C | 7C D9 33 78 */	mr r25, r6
/* 814876A0 | 7C FA 3B 78 */	mr r26, r7
/* 814876A4 | 7D 1B 43 78 */	mr r27, r8
/* 814876A8 | 91 41 00 20 */	stw r10, 0x20(r1)
/* 814876AC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814876B0 | 93 81 00 1C */	stw r28, 0x1c(r1)
/* 814876B4 | 91 81 00 18 */	stw r12, 0x18(r1)
/* 814876B8 | 91 61 00 14 */	stw r11, 0x14(r1)
/* 814876BC | 90 81 00 10 */	stw r4, 0x10(r1)
/* 814876C0 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 814876C4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814876C8 | 48 0A EA 65 */	bl OSCalendarTimeToTicks
/* 814876CC | A3 D6 00 00 */	lhz r30, 0x0(r22)
/* 814876D0 | 7C 9C 23 78 */	mr r28, r4
/* 814876D4 | 83 F6 00 04 */	lwz r31, 0x4(r22)
/* 814876D8 | 7C 7D 1B 78 */	mr r29, r3
/* 814876DC | 48 00 7B A1 */	bl CDBLock
/* 814876E0 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 814876E4 | 7E C3 B3 78 */	mr r3, r22
/* 814876E8 | 7E E4 BB 78 */	mr r4, r23
/* 814876EC | 7F 05 C3 78 */	mr r5, r24
/* 814876F0 | 93 61 00 0C */	stw r27, 0xc(r1)
/* 814876F4 | 7F 26 CB 78 */	mr r6, r25
/* 814876F8 | 7F 88 E3 78 */	mr r8, r28
/* 814876FC | 7F A7 EB 78 */	mr r7, r29
/* 81487700 | 7F E9 FB 78 */	mr r9, r31
/* 81487704 | 7F CA F3 78 */	mr r10, r30
/* 81487708 | 48 00 01 FD */	bl CDBDatabaseCreateRecordImAtOnce_
/* 8148770C | 7C 7E 1B 78 */	mr r30, r3
/* 81487710 | 48 00 7B 79 */	bl CDBUnlock
/* 81487714 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81487718 | 7F C3 F3 78 */	mr r3, r30
/* 8148771C | 48 17 1D DD */	bl _restgpr_22
/* 81487720 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81487724 | 7C 08 03 A6 */	mtlr r0
/* 81487728 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8148772C | 4E 80 00 20 */	blr
.endfn CDBDatabaseCreateRecordAtOnceEx

# .text:0x390 | 0x81487730 | size: 0xB0
.fn CDBDatabasePrivateCreateRecordAtOnceEx, global
/* 81487730 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81487734 | 7C 08 02 A6 */	mflr r0
/* 81487738 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8148773C | 39 61 00 60 */	addi r11, r1, 0x60
/* 81487740 | 48 17 1D 5D */	bl _savegpr_18
/* 81487744 | 83 41 00 68 */	lwz r26, 0x68(r1)
/* 81487748 | 7C 72 1B 78 */	mr r18, r3
/* 8148774C | 83 61 00 6C */	lwz r27, 0x6c(r1)
/* 81487750 | 7C 93 23 78 */	mr r19, r4
/* 81487754 | 83 81 00 70 */	lwz r28, 0x70(r1)
/* 81487758 | 7C B4 2B 78 */	mr r20, r5
/* 8148775C | 83 A1 00 74 */	lwz r29, 0x74(r1)
/* 81487760 | 7C D5 33 78 */	mr r21, r6
/* 81487764 | 83 C1 00 78 */	lwz r30, 0x78(r1)
/* 81487768 | 7C F6 3B 78 */	mr r22, r7
/* 8148776C | 83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 81487770 | 7D 17 43 78 */	mr r23, r8
/* 81487774 | 7D 38 4B 78 */	mr r24, r9
/* 81487778 | 7D 59 53 78 */	mr r25, r10
/* 8148777C | 48 00 7B 01 */	bl CDBLock
/* 81487780 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 81487784 | 7E 43 93 78 */	mr r3, r18
/* 81487788 | 7E 64 9B 78 */	mr r4, r19
/* 8148778C | 7E 85 A3 78 */	mr r5, r20
/* 81487790 | 93 61 00 0C */	stw r27, 0xc(r1)
/* 81487794 | 7E A6 AB 78 */	mr r6, r21
/* 81487798 | 7E C7 B3 78 */	mr r7, r22
/* 8148779C | 7E E8 BB 78 */	mr r8, r23
/* 814877A0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814877A4 | 7F 09 C3 78 */	mr r9, r24
/* 814877A8 | 7F 2A CB 78 */	mr r10, r25
/* 814877AC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814877B0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814877B4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814877B8 | 48 00 00 29 */	bl CDBDatabasePrivateCreateRecordAtOnceEx_
/* 814877BC | 7C 7F 1B 78 */	mr r31, r3
/* 814877C0 | 48 00 7A C9 */	bl CDBUnlock
/* 814877C4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814877C8 | 7F E3 FB 78 */	mr r3, r31
/* 814877CC | 48 17 1D 1D */	bl _restgpr_18
/* 814877D0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814877D4 | 7C 08 03 A6 */	mtlr r0
/* 814877D8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814877DC | 4E 80 00 20 */	blr
.endfn CDBDatabasePrivateCreateRecordAtOnceEx

# .text:0x440 | 0x814877E0 | size: 0x124
.fn CDBDatabasePrivateCreateRecordAtOnceEx_, global
/* 814877E0 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 814877E4 | 7C 08 02 A6 */	mflr r0
/* 814877E8 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 814877EC | 39 61 00 80 */	addi r11, r1, 0x80
/* 814877F0 | 48 17 1C AD */	bl _savegpr_18
/* 814877F4 | 83 01 00 9C */	lwz r24, 0x9c(r1)
/* 814877F8 | 7C 7C 1B 78 */	mr r28, r3
/* 814877FC | 83 61 00 88 */	lwz r27, 0x88(r1)
/* 81487800 | 7C 9D 23 78 */	mr r29, r4
/* 81487804 | 83 41 00 8C */	lwz r26, 0x8c(r1)
/* 81487808 | 7C BE 2B 78 */	mr r30, r5
/* 8148780C | 82 C1 00 90 */	lwz r22, 0x90(r1)
/* 81487810 | 7C DF 33 78 */	mr r31, r6
/* 81487814 | 82 E1 00 94 */	lwz r23, 0x94(r1)
/* 81487818 | 7C F2 3B 78 */	mr r18, r7
/* 8148781C | 83 21 00 98 */	lwz r25, 0x98(r1)
/* 81487820 | 7D 13 43 78 */	mr r19, r8
/* 81487824 | 7D 34 4B 78 */	mr r20, r9
/* 81487828 | 7D 55 53 78 */	mr r21, r10
/* 8148782C | 7F 03 C3 78 */	mr r3, r24
/* 81487830 | 4B FF E9 5D */	bl CDBIsGameCodeStr
/* 81487834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487838 | 40 82 00 0C */	bne .L_81487844
/* 8148783C | 38 60 00 04 */	li r3, 0x4
/* 81487840 | 48 00 00 AC */	b .L_814878EC
.L_81487844:
/* 81487844 | 7F 23 CB 78 */	mr r3, r25
/* 81487848 | 4B FF E9 15 */	bl CDBIsMakerCodeStr
/* 8148784C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487850 | 40 82 00 0C */	bne .L_8148785C
/* 81487854 | 38 60 00 03 */	li r3, 0x3
/* 81487858 | 48 00 00 94 */	b .L_814878EC
.L_8148785C:
/* 8148785C | 7F 23 CB 78 */	mr r3, r25
/* 81487860 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81487864 | 4B FF F4 1D */	bl CDBConvMCStrToMCValue
/* 81487868 | 7F 03 C3 78 */	mr r3, r24
/* 8148786C | 38 81 00 14 */	addi r4, r1, 0x14
/* 81487870 | 4B FF F3 49 */	bl CDBConvGCStrToGCValue
/* 81487874 | 38 00 00 00 */	li r0, 0x0
/* 81487878 | 92 41 00 2C */	stw r18, 0x2c(r1)
/* 8148787C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81487880 | 92 61 00 28 */	stw r19, 0x28(r1)
/* 81487884 | 92 81 00 24 */	stw r20, 0x24(r1)
/* 81487888 | 92 A1 00 20 */	stw r21, 0x20(r1)
/* 8148788C | 93 61 00 1C */	stw r27, 0x1c(r1)
/* 81487890 | 93 41 00 18 */	stw r26, 0x18(r1)
/* 81487894 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 81487898 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 8148789C | 48 0A E8 91 */	bl OSCalendarTimeToTicks
/* 814878A0 | A3 41 00 10 */	lhz r26, 0x10(r1)
/* 814878A4 | 7C 98 23 78 */	mr r24, r4
/* 814878A8 | 83 61 00 14 */	lwz r27, 0x14(r1)
/* 814878AC | 7C 79 1B 78 */	mr r25, r3
/* 814878B0 | 48 00 79 CD */	bl CDBLock
/* 814878B4 | 92 C1 00 08 */	stw r22, 0x8(r1)
/* 814878B8 | 7F 83 E3 78 */	mr r3, r28
/* 814878BC | 7F A4 EB 78 */	mr r4, r29
/* 814878C0 | 7F C5 F3 78 */	mr r5, r30
/* 814878C4 | 92 E1 00 0C */	stw r23, 0xc(r1)
/* 814878C8 | 7F E6 FB 78 */	mr r6, r31
/* 814878CC | 7F 08 C3 78 */	mr r8, r24
/* 814878D0 | 7F 27 CB 78 */	mr r7, r25
/* 814878D4 | 7F 69 DB 78 */	mr r9, r27
/* 814878D8 | 7F 4A D3 78 */	mr r10, r26
/* 814878DC | 48 00 00 29 */	bl CDBDatabaseCreateRecordImAtOnce_
/* 814878E0 | 7C 7A 1B 78 */	mr r26, r3
/* 814878E4 | 48 00 79 A5 */	bl CDBUnlock
/* 814878E8 | 7F 43 D3 78 */	mr r3, r26
.L_814878EC:
/* 814878EC | 39 61 00 80 */	addi r11, r1, 0x80
/* 814878F0 | 48 17 1B F9 */	bl _restgpr_18
/* 814878F4 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 814878F8 | 7C 08 03 A6 */	mtlr r0
/* 814878FC | 38 21 00 80 */	addi r1, r1, 0x80
/* 81487900 | 4E 80 00 20 */	blr
.endfn CDBDatabasePrivateCreateRecordAtOnceEx_

# .text:0x564 | 0x81487904 | size: 0x150
.fn CDBDatabaseCreateRecordImAtOnce_, global
/* 81487904 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81487908 | 7C 08 02 A6 */	mflr r0
/* 8148790C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81487910 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81487914 | 48 17 1B A1 */	bl _savegpr_24
/* 81487918 | 81 63 00 08 */	lwz r11, 0x8(r3)
/* 8148791C | 7C 78 1B 78 */	mr r24, r3
/* 81487920 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81487924 | 7C 99 23 78 */	mr r25, r4
/* 81487928 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 8148792C | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81487930 | 7C BA 2B 78 */	mr r26, r5
/* 81487934 | 7C DB 33 78 */	mr r27, r6
/* 81487938 | 7D 3C 4B 78 */	mr r28, r9
/* 8148793C | 7D 5D 53 78 */	mr r29, r10
/* 81487940 | 40 82 00 34 */	bne .L_81487974
/* 81487944 | 38 60 00 02 */	li r3, 0x2
/* 81487948 | 48 00 8C 49 */	bl CDBIsPrintDebugMessage
/* 8148794C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487950 | 41 82 00 1C */	beq .L_8148796C
/* 81487954 | 38 60 00 02 */	li r3, 0x2
/* 81487958 | 48 00 8C 51 */	bl CDBReport_
/* 8148795C | 3C 60 81 67 */	lis r3, lbl_8166B550@ha
/* 81487960 | 38 63 B5 50 */	addi r3, r3, lbl_8166B550@l
/* 81487964 | 4C C6 31 82 */	crclr cr1eq
/* 81487968 | 48 0A 6D 39 */	bl OSReport
.L_8148796C:
/* 8148796C | 38 60 00 1B */	li r3, 0x1b
/* 81487970 | 48 00 00 CC */	b .L_81487A3C
.L_81487974:
/* 81487974 | 3C 6B 00 01 */	addis r3, r11, 0x1
/* 81487978 | 80 63 C0 10 */	lwz r3, -0x3ff0(r3)
/* 8148797C | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 81487980 | 40 82 00 6C */	bne .L_814879EC
/* 81487984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487988 | 40 82 00 34 */	bne .L_814879BC
/* 8148798C | 38 60 00 02 */	li r3, 0x2
/* 81487990 | 48 00 8C 01 */	bl CDBIsPrintDebugMessage
/* 81487994 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487998 | 41 82 00 1C */	beq .L_814879B4
/* 8148799C | 38 60 00 02 */	li r3, 0x2
/* 814879A0 | 48 00 8C 09 */	bl CDBReport_
/* 814879A4 | 3C 60 81 67 */	lis r3, lbl_8166B550@ha
/* 814879A8 | 38 63 B5 50 */	addi r3, r3, lbl_8166B550@l
/* 814879AC | 4C C6 31 82 */	crclr cr1eq
/* 814879B0 | 48 0A 6C F1 */	bl OSReport
.L_814879B4:
/* 814879B4 | 38 60 00 1B */	li r3, 0x1b
/* 814879B8 | 48 00 00 84 */	b .L_81487A3C
.L_814879BC:
/* 814879BC | 38 60 00 02 */	li r3, 0x2
/* 814879C0 | 48 00 8B D1 */	bl CDBIsPrintDebugMessage
/* 814879C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814879C8 | 41 82 00 1C */	beq .L_814879E4
/* 814879CC | 38 60 00 02 */	li r3, 0x2
/* 814879D0 | 48 00 8B D9 */	bl CDBReport_
/* 814879D4 | 3C 60 81 67 */	lis r3, lbl_8166B57C@ha
/* 814879D8 | 38 63 B5 7C */	addi r3, r3, lbl_8166B57C@l
/* 814879DC | 4C C6 31 82 */	crclr cr1eq
/* 814879E0 | 48 0A 6C C1 */	bl OSReport
.L_814879E4:
/* 814879E4 | 38 60 00 1A */	li r3, 0x1a
/* 814879E8 | 48 00 00 54 */	b .L_81487A3C
.L_814879EC:
/* 814879EC | 3C 80 80 00 */	lis r4, 0x8000
/* 814879F0 | 7C E3 3B 78 */	mr r3, r7
/* 814879F4 | 80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 814879F8 | 7D 04 43 78 */	mr r4, r8
/* 814879FC | 38 A0 00 00 */	li r5, 0x0
/* 81487A00 | 54 06 F0 BE */	srwi r6, r0, 2
/* 81487A04 | 48 17 1C 0D */	bl __div2i
/* 81487A08 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 81487A0C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81487A10 | 4B FF E8 21 */	bl CDBClampCDBDate
/* 81487A14 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81487A18 | 7F 23 CB 78 */	mr r3, r25
/* 81487A1C | 7F 04 C3 78 */	mr r4, r24
/* 81487A20 | 7F 45 D3 78 */	mr r5, r26
/* 81487A24 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 81487A28 | 7F 66 DB 78 */	mr r6, r27
/* 81487A2C | 7F 88 E3 78 */	mr r8, r28
/* 81487A30 | 7F A9 EB 78 */	mr r9, r29
/* 81487A34 | 7F CA F3 78 */	mr r10, r30
/* 81487A38 | 48 00 46 41 */	bl CDBRecordCreateAtOnce
.L_81487A3C:
/* 81487A3C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81487A40 | 48 17 1A C1 */	bl _restgpr_24
/* 81487A44 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81487A48 | 7C 08 03 A6 */	mtlr r0
/* 81487A4C | 38 21 00 40 */	addi r1, r1, 0x40
/* 81487A50 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCreateRecordImAtOnce_

# .text:0x6B4 | 0x81487A54 | size: 0xE4
.fn CDBDatabaseFindByKey, global
/* 81487A54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81487A58 | 7C 08 02 A6 */	mflr r0
/* 81487A5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81487A60 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81487A64 | 7C BF 2B 78 */	mr r31, r5
/* 81487A68 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81487A6C | 7C 9E 23 78 */	mr r30, r4
/* 81487A70 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81487A74 | 7C 7D 1B 78 */	mr r29, r3
/* 81487A78 | 48 00 78 05 */	bl CDBLock
/* 81487A7C | 7F E3 FB 78 */	mr r3, r31
/* 81487A80 | 48 00 68 65 */	bl CDBRecordKeyIsValid
/* 81487A84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487A88 | 40 82 00 34 */	bne .L_81487ABC
/* 81487A8C | 38 60 00 02 */	li r3, 0x2
/* 81487A90 | 48 00 8B 01 */	bl CDBIsPrintDebugMessage
/* 81487A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487A98 | 41 82 00 1C */	beq .L_81487AB4
/* 81487A9C | 38 60 00 02 */	li r3, 0x2
/* 81487AA0 | 48 00 8B 09 */	bl CDBReport_
/* 81487AA4 | 3C 60 81 67 */	lis r3, lbl_8166B5A8@ha
/* 81487AA8 | 38 63 B5 A8 */	addi r3, r3, lbl_8166B5A8@l
/* 81487AAC | 4C C6 31 82 */	crclr cr1eq
/* 81487AB0 | 48 0A 6B F1 */	bl OSReport
.L_81487AB4:
/* 81487AB4 | 3B E0 00 05 */	li r31, 0x5
/* 81487AB8 | 48 00 00 5C */	b .L_81487B14
.L_81487ABC:
/* 81487ABC | 7F C3 F3 78 */	mr r3, r30
/* 81487AC0 | 7F A4 EB 78 */	mr r4, r29
/* 81487AC4 | 7F E5 FB 78 */	mr r5, r31
/* 81487AC8 | 48 00 45 4D */	bl CDBRecordInitDescriptor
/* 81487ACC | 7F C3 F3 78 */	mr r3, r30
/* 81487AD0 | 48 00 52 BD */	bl CDBRecordIsExistFile
/* 81487AD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487AD8 | 40 82 00 38 */	bne .L_81487B10
/* 81487ADC | 38 60 00 02 */	li r3, 0x2
/* 81487AE0 | 48 00 8A B1 */	bl CDBIsPrintDebugMessage
/* 81487AE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487AE8 | 41 82 00 20 */	beq .L_81487B08
/* 81487AEC | 38 60 00 02 */	li r3, 0x2
/* 81487AF0 | 48 00 8A B9 */	bl CDBReport_
/* 81487AF4 | 3C 60 81 67 */	lis r3, lbl_8166B5B8@ha
/* 81487AF8 | 7F E4 FB 78 */	mr r4, r31
/* 81487AFC | 38 63 B5 B8 */	addi r3, r3, lbl_8166B5B8@l
/* 81487B00 | 4C C6 31 82 */	crclr cr1eq
/* 81487B04 | 48 0A 6B 9D */	bl OSReport
.L_81487B08:
/* 81487B08 | 3B E0 00 23 */	li r31, 0x23
/* 81487B0C | 48 00 00 08 */	b .L_81487B14
.L_81487B10:
/* 81487B10 | 3B E0 00 00 */	li r31, 0x0
.L_81487B14:
/* 81487B14 | 48 00 77 75 */	bl CDBUnlock
/* 81487B18 | 7F E3 FB 78 */	mr r3, r31
/* 81487B1C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81487B20 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81487B24 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81487B28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81487B2C | 7C 08 03 A6 */	mtlr r0
/* 81487B30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81487B34 | 4E 80 00 20 */	blr
.endfn CDBDatabaseFindByKey

# .text:0x798 | 0x81487B38 | size: 0x100
.fn CDBDatabaseSearchConditionsIsMatch, global
/* 81487B38 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81487B3C | 7C 08 02 A6 */	mflr r0
/* 81487B40 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81487B44 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81487B48 | 7C 9F 23 78 */	mr r31, r4
/* 81487B4C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81487B50 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81487B54 | 7C 7E 1B 78 */	mr r30, r3
/* 81487B58 | 7F E3 FB 78 */	mr r3, r31
/* 81487B5C | 4B FF F1 55 */	bl CDBConvKeyStrToEpochValue
/* 81487B60 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81487B64 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81487B68 | 7C 00 18 40 */	cmplw r0, r3
/* 81487B6C | 41 81 00 10 */	bgt .L_81487B7C
/* 81487B70 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 81487B74 | 7C 03 00 40 */	cmplw r3, r0
/* 81487B78 | 40 81 00 0C */	ble .L_81487B84
.L_81487B7C:
/* 81487B7C | 38 60 00 00 */	li r3, 0x0
/* 81487B80 | 48 00 00 A0 */	b .L_81487C20
.L_81487B84:
/* 81487B84 | A0 1E 00 08 */	lhz r0, 0x8(r30)
/* 81487B88 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81487B8C | 41 82 00 28 */	beq .L_81487BB4
/* 81487B90 | 7F E3 FB 78 */	mr r3, r31
/* 81487B94 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81487B98 | 4B FF F6 25 */	bl CDBConvKeyStrToMakerCode
/* 81487B9C | A0 7E 00 08 */	lhz r3, 0x8(r30)
/* 81487BA0 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 81487BA4 | 7C 03 00 40 */	cmplw r3, r0
/* 81487BA8 | 41 82 00 0C */	beq .L_81487BB4
/* 81487BAC | 38 60 00 00 */	li r3, 0x0
/* 81487BB0 | 48 00 00 70 */	b .L_81487C20
.L_81487BB4:
/* 81487BB4 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 81487BB8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 81487BBC | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81487BC0 | 41 82 00 28 */	beq .L_81487BE8
/* 81487BC4 | 7F E3 FB 78 */	mr r3, r31
/* 81487BC8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81487BCC | 4B FF F5 9D */	bl CDBConvKeyStrToGameCode
/* 81487BD0 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 81487BD4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81487BD8 | 7C 03 00 40 */	cmplw r3, r0
/* 81487BDC | 41 82 00 0C */	beq .L_81487BE8
/* 81487BE0 | 38 60 00 00 */	li r3, 0x0
/* 81487BE4 | 48 00 00 3C */	b .L_81487C20
.L_81487BE8:
/* 81487BE8 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 81487BEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81487BF0 | 41 82 00 2C */	beq .L_81487C1C
/* 81487BF4 | 7F E3 FB 78 */	mr r3, r31
/* 81487BF8 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81487BFC | 4B FF F6 15 */	bl CDBConvKeyStrToType
/* 81487C00 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 81487C04 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81487C08 | 4B FF E5 B5 */	bl CDBCompareTypeStr
/* 81487C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487C10 | 41 82 00 0C */	beq .L_81487C1C
/* 81487C14 | 38 60 00 00 */	li r3, 0x0
/* 81487C18 | 48 00 00 08 */	b .L_81487C20
.L_81487C1C:
/* 81487C1C | 38 60 00 01 */	li r3, 0x1
.L_81487C20:
/* 81487C20 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81487C24 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81487C28 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81487C2C | 7C 08 03 A6 */	mtlr r0
/* 81487C30 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81487C34 | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearchConditionsIsMatch

# .text:0x898 | 0x81487C38 | size: 0xF4
.fn CDBDatabaseSearchCallCallback, global
/* 81487C38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81487C3C | 7C 08 02 A6 */	mflr r0
/* 81487C40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81487C44 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81487C48 | 7C 7F 1B 78 */	mr r31, r3
/* 81487C4C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81487C50 | 7C BE 2B 78 */	mr r30, r5
/* 81487C54 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81487C58 | 7C 9D 23 78 */	mr r29, r4
/* 81487C5C | 48 00 76 21 */	bl CDBLock
/* 81487C60 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81487C64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487C68 | 41 82 00 10 */	beq .L_81487C78
/* 81487C6C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81487C70 | 83 E3 C0 10 */	lwz r31, -0x3ff0(r3)
/* 81487C74 | 48 00 00 08 */	b .L_81487C7C
.L_81487C78:
/* 81487C78 | 3B E0 00 00 */	li r31, 0x0
.L_81487C7C:
/* 81487C7C | 48 00 76 0D */	bl CDBUnlock
/* 81487C80 | 7F A3 EB 78 */	mr r3, r29
/* 81487C84 | 38 9E 00 08 */	addi r4, r30, 0x8
/* 81487C88 | 4B FF FE B1 */	bl CDBDatabaseSearchConditionsIsMatch
/* 81487C8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487C90 | 41 82 00 7C */	beq .L_81487D0C
/* 81487C94 | 80 1D 00 24 */	lwz r0, 0x24(r29)
/* 81487C98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81487C9C | 41 82 00 30 */	beq .L_81487CCC
/* 81487CA0 | 57 E0 07 BD */	rlwinm. r0, r31, 0, 30, 30
/* 81487CA4 | 41 82 00 10 */	beq .L_81487CB4
/* 81487CA8 | 7F C3 F3 78 */	mr r3, r30
/* 81487CAC | 48 00 44 DD */	bl CDBRecordOpen
/* 81487CB0 | 48 00 00 0C */	b .L_81487CBC
.L_81487CB4:
/* 81487CB4 | 7F C3 F3 78 */	mr r3, r30
/* 81487CB8 | 48 00 46 C5 */	bl CDBRecordOpenReadOnly
.L_81487CBC:
/* 81487CBC | 2C 03 00 20 */	cmpwi r3, 0x20
/* 81487CC0 | 40 82 00 10 */	bne .L_81487CD0
/* 81487CC4 | 38 60 00 00 */	li r3, 0x0
/* 81487CC8 | 48 00 00 48 */	b .L_81487D10
.L_81487CCC:
/* 81487CCC | 38 60 00 00 */	li r3, 0x0
.L_81487CD0:
/* 81487CD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487CD4 | 40 82 00 3C */	bne .L_81487D10
/* 81487CD8 | 81 9D 00 18 */	lwz r12, 0x18(r29)
/* 81487CDC | 7F C4 F3 78 */	mr r4, r30
/* 81487CE0 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 81487CE4 | 7D 89 03 A6 */	mtctr r12
/* 81487CE8 | 4E 80 04 21 */	bctrl
/* 81487CEC | 90 7D 00 20 */	stw r3, 0x20(r29)
/* 81487CF0 | 80 1E 00 38 */	lwz r0, 0x38(r30)
/* 81487CF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81487CF8 | 41 82 00 14 */	beq .L_81487D0C
/* 81487CFC | 7F C3 F3 78 */	mr r3, r30
/* 81487D00 | 48 00 48 31 */	bl CDBRecordClose
/* 81487D04 | 48 00 00 08 */	b .L_81487D0C
/* 81487D08 | 48 00 00 08 */	b .L_81487D10
.L_81487D0C:
/* 81487D0C | 38 60 00 00 */	li r3, 0x0
.L_81487D10:
/* 81487D10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81487D14 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81487D18 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81487D1C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81487D20 | 7C 08 03 A6 */	mtlr r0
/* 81487D24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81487D28 | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearchCallCallback

# .text:0x98C | 0x81487D2C | size: 0x6FC
.fn CDBDatabaseSearchRecordLayer, global
/* 81487D2C | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 81487D30 | 7C 08 02 A6 */	mflr r0
/* 81487D34 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 81487D38 | 39 61 01 20 */	addi r11, r1, 0x120
/* 81487D3C | 48 17 17 51 */	bl _savegpr_14
/* 81487D40 | 81 6D AD 4C */	lwz r11, lbl_81698D8C@sda21(r0)
/* 81487D44 | 7C B4 2B 78 */	mr r20, r5
/* 81487D48 | 7C F6 3B 78 */	mr r22, r7
/* 81487D4C | 7D 38 4B 78 */	mr r24, r9
/* 81487D50 | 7C D5 33 78 */	mr r21, r6
/* 81487D54 | 7D 17 43 78 */	mr r23, r8
/* 81487D58 | 7C 93 23 78 */	mr r19, r4
/* 81487D5C | 81 C3 00 08 */	lwz r14, 0x8(r3)
/* 81487D60 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81487D64 | 7D 4F 53 78 */	mr r15, r10
/* 81487D68 | 7E 83 A3 78 */	mr r3, r20
/* 81487D6C | 7E A4 AB 78 */	mr r4, r21
/* 81487D70 | 7E C5 B3 78 */	mr r5, r22
/* 81487D74 | 7E E6 BB 78 */	mr r6, r23
/* 81487D78 | 7F 07 C3 78 */	mr r7, r24
/* 81487D7C | 3B CB 01 00 */	addi r30, r11, 0x100
/* 81487D80 | 3B AB 0A 94 */	addi r29, r11, 0xa94
/* 81487D84 | 3B 8B 14 28 */	addi r28, r11, 0x1428
/* 81487D88 | 4B FF ED 79 */	bl CDBConvDirStrToCDBDate
/* 81487D8C | 80 13 00 18 */	lwz r0, 0x18(r19)
/* 81487D90 | 7C 7F 1B 78 */	mr r31, r3
/* 81487D94 | 83 2D AD 4C */	lwz r25, lbl_81698D8C@sda21(r0)
/* 81487D98 | 3B 43 00 3B */	addi r26, r3, 0x3b
/* 81487D9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81487DA0 | 38 19 09 94 */	addi r0, r25, 0x994
/* 81487DA4 | 90 01 00 CC */	stw r0, 0xcc(r1)
/* 81487DA8 | 38 19 13 28 */	addi r0, r25, 0x1328
/* 81487DAC | 90 01 00 C8 */	stw r0, 0xc8(r1)
/* 81487DB0 | 40 82 00 0C */	bne .L_81487DBC
/* 81487DB4 | 38 60 00 01 */	li r3, 0x1
/* 81487DB8 | 48 00 06 58 */	b .L_81488410
.L_81487DBC:
/* 81487DBC | 38 61 00 68 */	addi r3, r1, 0x68
/* 81487DC0 | 38 80 00 00 */	li r4, 0x0
/* 81487DC4 | 48 00 67 05 */	bl CDBRecordKeyInitByOnlyDate
/* 81487DC8 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81487DCC | 38 8E 00 08 */	addi r4, r14, 0x8
/* 81487DD0 | 38 A0 04 00 */	li r5, 0x400
/* 81487DD4 | 48 00 68 C1 */	bl CDBRecordKeyArrayInit
/* 81487DD8 | 80 13 00 14 */	lwz r0, 0x14(r19)
/* 81487DDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81487DE0 | 40 82 00 18 */	bne .L_81487DF8
/* 81487DE4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81487DE8 | 48 00 68 C9 */	bl CDBRecordKeyArraySetReverse
/* 81487DEC | 38 61 00 68 */	addi r3, r1, 0x68
/* 81487DF0 | 38 80 FF FF */	li r4, -0x1
/* 81487DF4 | 48 00 66 D5 */	bl CDBRecordKeyInitByOnlyDate
.L_81487DF8:
/* 81487DF8 | 48 00 74 85 */	bl CDBLock
/* 81487DFC | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81487E00 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81487E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487E08 | 41 82 00 10 */	beq .L_81487E18
/* 81487E0C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81487E10 | 81 C3 C0 10 */	lwz r14, -0x3ff0(r3)
/* 81487E14 | 48 00 00 08 */	b .L_81487E1C
.L_81487E18:
/* 81487E18 | 39 C0 00 00 */	li r14, 0x0
.L_81487E1C:
/* 81487E1C | 48 00 74 6D */	bl CDBUnlock
/* 81487E20 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 81487E24 | 40 82 00 0C */	bne .L_81487E30
/* 81487E28 | 38 60 00 1B */	li r3, 0x1b
/* 81487E2C | 48 00 05 E4 */	b .L_81488410
.L_81487E30:
/* 81487E30 | 55 E0 07 FE */	clrlwi r0, r15, 31
/* 81487E34 | 3B 60 00 00 */	li r27, 0x0
/* 81487E38 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 81487E3C | 55 E0 07 BC */	rlwinm r0, r15, 0, 30, 30
/* 81487E40 | 3A 40 00 02 */	li r18, 0x2
/* 81487E44 | 39 E0 00 01 */	li r15, 0x1
/* 81487E48 | 90 01 00 D0 */	stw r0, 0xd0(r1)
/* 81487E4C | 39 C0 00 00 */	li r14, 0x0
/* 81487E50 | 48 00 05 B4 */	b .L_81488404
.L_81487E54:
/* 81487E54 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 81487E58 | 3B 60 00 01 */	li r27, 0x1
/* 81487E5C | 91 C1 00 20 */	stw r14, 0x20(r1)
/* 81487E60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81487E64 | 41 82 02 30 */	beq .L_81488094
/* 81487E68 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 81487E6C | 7E 84 A3 78 */	mr r4, r20
/* 81487E70 | 7E A5 AB 78 */	mr r5, r21
/* 81487E74 | 7E C6 B3 78 */	mr r6, r22
/* 81487E78 | 7E E7 BB 78 */	mr r7, r23
/* 81487E7C | 7F 08 C3 78 */	mr r8, r24
/* 81487E80 | 39 20 00 01 */	li r9, 0x1
/* 81487E84 | 39 40 00 00 */	li r10, 0x0
/* 81487E88 | 4B FF EA A5 */	bl CDBConvMinuteStrToFullPath
/* 81487E8C | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 81487E90 | 7F A3 EB 78 */	mr r3, r29
/* 81487E94 | 38 A0 00 01 */	li r5, 0x1
/* 81487E98 | 48 00 33 E9 */	bl CDBFSFindFirst
/* 81487E9C | 48 00 01 E0 */	b .L_8148807C
.L_81487EA0:
/* 81487EA0 | 7F A3 EB 78 */	mr r3, r29
/* 81487EA4 | 48 00 32 C1 */	bl CDBFindDataIsDirectory
/* 81487EA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487EAC | 41 82 01 C8 */	beq .L_81488074
/* 81487EB0 | 7F A3 EB 78 */	mr r3, r29
/* 81487EB4 | 48 00 32 95 */	bl CDBFindDataGetName
/* 81487EB8 | 48 00 2D 15 */	bl CDBFSIsMCGCDirNameOnSD
/* 81487EBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487EC0 | 41 82 01 B4 */	beq .L_81488074
/* 81487EC4 | 7F A3 EB 78 */	mr r3, r29
/* 81487EC8 | 48 00 32 81 */	bl CDBFindDataGetName
/* 81487ECC | 7C 69 1B 78 */	mr r9, r3
/* 81487ED0 | 91 C1 00 08 */	stw r14, 0x8(r1)
/* 81487ED4 | 80 61 00 C8 */	lwz r3, 0xc8(r1)
/* 81487ED8 | 7E 84 A3 78 */	mr r4, r20
/* 81487EDC | 7E A5 AB 78 */	mr r5, r21
/* 81487EE0 | 7E C6 B3 78 */	mr r6, r22
/* 81487EE4 | 7E E7 BB 78 */	mr r7, r23
/* 81487EE8 | 7F 08 C3 78 */	mr r8, r24
/* 81487EEC | 39 40 00 01 */	li r10, 0x1
/* 81487EF0 | 4B FF EA C9 */	bl CDBConvCodeStrToFullPath
/* 81487EF4 | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 81487EF8 | 7F 83 E3 78 */	mr r3, r28
/* 81487EFC | 38 A0 00 01 */	li r5, 0x1
/* 81487F00 | 48 00 33 81 */	bl CDBFSFindFirst
/* 81487F04 | 48 00 01 58 */	b .L_8148805C
.L_81487F08:
/* 81487F08 | 7F 83 E3 78 */	mr r3, r28
/* 81487F0C | 48 00 32 59 */	bl CDBFindDataIsDirectory
/* 81487F10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487F14 | 41 82 01 40 */	beq .L_81488054
/* 81487F18 | 7F 83 E3 78 */	mr r3, r28
/* 81487F1C | 48 00 32 2D */	bl CDBFindDataGetName
/* 81487F20 | 48 00 2C FD */	bl CDBFSIsTypeDirNameOnSD
/* 81487F24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487F28 | 41 82 01 2C */	beq .L_81488054
/* 81487F2C | 7F 83 E3 78 */	mr r3, r28
/* 81487F30 | 48 00 32 19 */	bl CDBFindDataGetName
/* 81487F34 | 7C 70 1B 78 */	mr r16, r3
/* 81487F38 | 7F A3 EB 78 */	mr r3, r29
/* 81487F3C | 48 00 32 0D */	bl CDBFindDataGetName
/* 81487F40 | 91 E1 00 08 */	stw r15, 0x8(r1)
/* 81487F44 | 7C 69 1B 78 */	mr r9, r3
/* 81487F48 | 7F 23 CB 78 */	mr r3, r25
/* 81487F4C | 7E 84 A3 78 */	mr r4, r20
/* 81487F50 | 91 C1 00 0C */	stw r14, 0xc(r1)
/* 81487F54 | 7E A5 AB 78 */	mr r5, r21
/* 81487F58 | 7E C6 B3 78 */	mr r6, r22
/* 81487F5C | 7E E7 BB 78 */	mr r7, r23
/* 81487F60 | 7F 08 C3 78 */	mr r8, r24
/* 81487F64 | 7E 0A 83 78 */	mr r10, r16
/* 81487F68 | 4B FF EA ED */	bl CDBConvTypeStrToFullPath
/* 81487F6C | 7F C3 F3 78 */	mr r3, r30
/* 81487F70 | 7F 24 CB 78 */	mr r4, r25
/* 81487F74 | 38 A0 00 01 */	li r5, 0x1
/* 81487F78 | 48 00 33 09 */	bl CDBFSFindFirst
/* 81487F7C | 48 00 00 C0 */	b .L_8148803C
.L_81487F80:
/* 81487F80 | 7F C3 F3 78 */	mr r3, r30
/* 81487F84 | 48 00 31 E1 */	bl CDBFindDataIsDirectory
/* 81487F88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487F8C | 40 82 00 A8 */	bne .L_81488034
/* 81487F90 | 7F C3 F3 78 */	mr r3, r30
/* 81487F94 | 48 00 31 B5 */	bl CDBFindDataGetName
/* 81487F98 | 48 00 2A 39 */	bl CDBFSIsCDBFileOnSD
/* 81487F9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81487FA0 | 41 82 00 94 */	beq .L_81488034
/* 81487FA4 | 7F 83 E3 78 */	mr r3, r28
/* 81487FA8 | 48 00 31 A1 */	bl CDBFindDataGetName
/* 81487FAC | 7C 71 1B 78 */	mr r17, r3
/* 81487FB0 | 7F A3 EB 78 */	mr r3, r29
/* 81487FB4 | 48 00 31 95 */	bl CDBFindDataGetName
/* 81487FB8 | 7C 70 1B 78 */	mr r16, r3
/* 81487FBC | 7F C3 F3 78 */	mr r3, r30
/* 81487FC0 | 48 00 31 89 */	bl CDBFindDataGetName
/* 81487FC4 | 7C 64 1B 78 */	mr r4, r3
/* 81487FC8 | 7E 05 83 78 */	mr r5, r16
/* 81487FCC | 7E 26 8B 78 */	mr r6, r17
/* 81487FD0 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81487FD4 | 48 00 65 05 */	bl CDBRecordKeyInitFromFileName2
/* 81487FD8 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81487FDC | 38 81 00 68 */	addi r4, r1, 0x68
/* 81487FE0 | 48 00 65 F5 */	bl CDBRecordKeyCompare
/* 81487FE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81487FE8 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 81487FEC | 40 81 00 48 */	ble .L_81488034
/* 81487FF0 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81487FF4 | 38 81 00 98 */	addi r4, r1, 0x98
/* 81487FF8 | 48 00 6B ED */	bl CDBRecordKeyArrayDicFind
/* 81487FFC | 7C 70 1B 78 */	mr r16, r3
/* 81488000 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81488004 | 48 00 66 FD */	bl CDBRecordKeyArrayEnd
/* 81488008 | 7C 10 18 40 */	cmplw r16, r3
/* 8148800C | 40 82 00 28 */	bne .L_81488034
/* 81488010 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81488014 | 48 00 66 D1 */	bl CDBRecordKeyArrayFull
/* 81488018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148801C | 41 82 00 08 */	beq .L_81488024
/* 81488020 | 3B 60 00 00 */	li r27, 0x0
.L_81488024:
/* 81488024 | 91 E1 00 C0 */	stw r15, 0xc0(r1)
/* 81488028 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8148802C | 38 81 00 98 */	addi r4, r1, 0x98
/* 81488030 | 48 00 67 E9 */	bl CDBRecordKeyArrayDicInsert
.L_81488034:
/* 81488034 | 7F C3 F3 78 */	mr r3, r30
/* 81488038 | 48 00 32 65 */	bl CDBFSFindNext
.L_8148803C:
/* 8148803C | 7F C3 F3 78 */	mr r3, r30
/* 81488040 | 48 00 31 41 */	bl CDBFindDataIsEnd
/* 81488044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488048 | 41 82 FF 38 */	beq .L_81487F80
/* 8148804C | 7F C3 F3 78 */	mr r3, r30
/* 81488050 | 48 00 32 69 */	bl CDBFSFindClose
.L_81488054:
/* 81488054 | 7F 83 E3 78 */	mr r3, r28
/* 81488058 | 48 00 32 45 */	bl CDBFSFindNext
.L_8148805C:
/* 8148805C | 7F 83 E3 78 */	mr r3, r28
/* 81488060 | 48 00 31 21 */	bl CDBFindDataIsEnd
/* 81488064 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488068 | 41 82 FE A0 */	beq .L_81487F08
/* 8148806C | 7F 83 E3 78 */	mr r3, r28
/* 81488070 | 48 00 32 49 */	bl CDBFSFindClose
.L_81488074:
/* 81488074 | 7F A3 EB 78 */	mr r3, r29
/* 81488078 | 48 00 32 25 */	bl CDBFSFindNext
.L_8148807C:
/* 8148807C | 7F A3 EB 78 */	mr r3, r29
/* 81488080 | 48 00 31 01 */	bl CDBFindDataIsEnd
/* 81488084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488088 | 41 82 FE 18 */	beq .L_81487EA0
/* 8148808C | 7F A3 EB 78 */	mr r3, r29
/* 81488090 | 48 00 32 29 */	bl CDBFSFindClose
.L_81488094:
/* 81488094 | 80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 81488098 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148809C | 41 82 02 58 */	beq .L_814882F4
/* 814880A0 | 80 61 00 CC */	lwz r3, 0xcc(r1)
/* 814880A4 | 7E 84 A3 78 */	mr r4, r20
/* 814880A8 | 7E A5 AB 78 */	mr r5, r21
/* 814880AC | 7E C6 B3 78 */	mr r6, r22
/* 814880B0 | 7E E7 BB 78 */	mr r7, r23
/* 814880B4 | 7F 08 C3 78 */	mr r8, r24
/* 814880B8 | 39 53 00 28 */	addi r10, r19, 0x28
/* 814880BC | 39 20 00 02 */	li r9, 0x2
/* 814880C0 | 4B FF E8 6D */	bl CDBConvMinuteStrToFullPath
/* 814880C4 | 80 81 00 CC */	lwz r4, 0xcc(r1)
/* 814880C8 | 7F A3 EB 78 */	mr r3, r29
/* 814880CC | 38 A0 00 02 */	li r5, 0x2
/* 814880D0 | 48 00 31 B1 */	bl CDBFSFindFirst
/* 814880D4 | 48 00 02 08 */	b .L_814882DC
.L_814880D8:
/* 814880D8 | 7F A3 EB 78 */	mr r3, r29
/* 814880DC | 48 00 30 89 */	bl CDBFindDataIsDirectory
/* 814880E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814880E4 | 41 82 01 F0 */	beq .L_814882D4
/* 814880E8 | 7F A3 EB 78 */	mr r3, r29
/* 814880EC | 48 00 30 5D */	bl CDBFindDataGetName
/* 814880F0 | 48 00 2A DD */	bl CDBFSIsMCGCDirNameOnSD
/* 814880F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814880F8 | 41 82 01 DC */	beq .L_814882D4
/* 814880FC | 7F A3 EB 78 */	mr r3, r29
/* 81488100 | 48 00 30 49 */	bl CDBFindDataGetName
/* 81488104 | 38 13 00 28 */	addi r0, r19, 0x28
/* 81488108 | 7C 69 1B 78 */	mr r9, r3
/* 8148810C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81488110 | 7E 84 A3 78 */	mr r4, r20
/* 81488114 | 80 61 00 C8 */	lwz r3, 0xc8(r1)
/* 81488118 | 7E A5 AB 78 */	mr r5, r21
/* 8148811C | 7E C6 B3 78 */	mr r6, r22
/* 81488120 | 7E E7 BB 78 */	mr r7, r23
/* 81488124 | 7F 08 C3 78 */	mr r8, r24
/* 81488128 | 39 40 00 02 */	li r10, 0x2
/* 8148812C | 4B FF E8 8D */	bl CDBConvCodeStrToFullPath
/* 81488130 | 80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 81488134 | 7F 83 E3 78 */	mr r3, r28
/* 81488138 | 38 A0 00 02 */	li r5, 0x2
/* 8148813C | 48 00 31 45 */	bl CDBFSFindFirst
/* 81488140 | 48 00 01 7C */	b .L_814882BC
.L_81488144:
/* 81488144 | 7F 83 E3 78 */	mr r3, r28
/* 81488148 | 48 00 30 1D */	bl CDBFindDataIsDirectory
/* 8148814C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488150 | 41 82 01 64 */	beq .L_814882B4
/* 81488154 | 7F 83 E3 78 */	mr r3, r28
/* 81488158 | 48 00 2F F1 */	bl CDBFindDataGetName
/* 8148815C | 48 00 2A C1 */	bl CDBFSIsTypeDirNameOnSD
/* 81488160 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488164 | 41 82 01 50 */	beq .L_814882B4
/* 81488168 | 7F 83 E3 78 */	mr r3, r28
/* 8148816C | 48 00 2F DD */	bl CDBFindDataGetName
/* 81488170 | 7C 70 1B 78 */	mr r16, r3
/* 81488174 | 7F A3 EB 78 */	mr r3, r29
/* 81488178 | 48 00 2F D1 */	bl CDBFindDataGetName
/* 8148817C | 92 41 00 08 */	stw r18, 0x8(r1)
/* 81488180 | 38 13 00 28 */	addi r0, r19, 0x28
/* 81488184 | 7C 69 1B 78 */	mr r9, r3
/* 81488188 | 7F 23 CB 78 */	mr r3, r25
/* 8148818C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81488190 | 7E 84 A3 78 */	mr r4, r20
/* 81488194 | 7E A5 AB 78 */	mr r5, r21
/* 81488198 | 7E C6 B3 78 */	mr r6, r22
/* 8148819C | 7E E7 BB 78 */	mr r7, r23
/* 814881A0 | 7F 08 C3 78 */	mr r8, r24
/* 814881A4 | 7E 0A 83 78 */	mr r10, r16
/* 814881A8 | 4B FF E8 AD */	bl CDBConvTypeStrToFullPath
/* 814881AC | 7F C3 F3 78 */	mr r3, r30
/* 814881B0 | 7F 24 CB 78 */	mr r4, r25
/* 814881B4 | 38 A0 00 02 */	li r5, 0x2
/* 814881B8 | 48 00 30 C9 */	bl CDBFSFindFirst
/* 814881BC | 48 00 00 E0 */	b .L_8148829C
.L_814881C0:
/* 814881C0 | 7F C3 F3 78 */	mr r3, r30
/* 814881C4 | 48 00 2F A1 */	bl CDBFindDataIsDirectory
/* 814881C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814881CC | 40 82 00 C8 */	bne .L_81488294
/* 814881D0 | 7F C3 F3 78 */	mr r3, r30
/* 814881D4 | 48 00 2F 75 */	bl CDBFindDataGetName
/* 814881D8 | 48 00 27 F9 */	bl CDBFSIsCDBFileOnSD
/* 814881DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814881E0 | 41 82 00 B4 */	beq .L_81488294
/* 814881E4 | 7F 83 E3 78 */	mr r3, r28
/* 814881E8 | 48 00 2F 61 */	bl CDBFindDataGetName
/* 814881EC | 7C 70 1B 78 */	mr r16, r3
/* 814881F0 | 7F A3 EB 78 */	mr r3, r29
/* 814881F4 | 48 00 2F 55 */	bl CDBFindDataGetName
/* 814881F8 | 7C 71 1B 78 */	mr r17, r3
/* 814881FC | 7F C3 F3 78 */	mr r3, r30
/* 81488200 | 48 00 2F 49 */	bl CDBFindDataGetName
/* 81488204 | 7C 64 1B 78 */	mr r4, r3
/* 81488208 | 7E 25 8B 78 */	mr r5, r17
/* 8148820C | 7E 06 83 78 */	mr r6, r16
/* 81488210 | 38 61 00 98 */	addi r3, r1, 0x98
/* 81488214 | 48 00 62 C5 */	bl CDBRecordKeyInitFromFileName2
/* 81488218 | 38 61 00 98 */	addi r3, r1, 0x98
/* 8148821C | 38 81 00 14 */	addi r4, r1, 0x14
/* 81488220 | 4B FF EA 91 */	bl CDBConvKeyStrToEpochValue
/* 81488224 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81488228 | 7C 1F 00 40 */	cmplw r31, r0
/* 8148822C | 41 81 00 68 */	bgt .L_81488294
/* 81488230 | 7C 00 D0 40 */	cmplw r0, r26
/* 81488234 | 41 81 00 60 */	bgt .L_81488294
/* 81488238 | 38 61 00 98 */	addi r3, r1, 0x98
/* 8148823C | 38 81 00 68 */	addi r4, r1, 0x68
/* 81488240 | 48 00 63 95 */	bl CDBRecordKeyCompare
/* 81488244 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81488248 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 8148824C | 40 81 00 48 */	ble .L_81488294
/* 81488250 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81488254 | 38 81 00 98 */	addi r4, r1, 0x98
/* 81488258 | 48 00 69 8D */	bl CDBRecordKeyArrayDicFind
/* 8148825C | 7C 70 1B 78 */	mr r16, r3
/* 81488260 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81488264 | 48 00 64 9D */	bl CDBRecordKeyArrayEnd
/* 81488268 | 7C 10 18 40 */	cmplw r16, r3
/* 8148826C | 40 82 00 28 */	bne .L_81488294
/* 81488270 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81488274 | 48 00 64 71 */	bl CDBRecordKeyArrayFull
/* 81488278 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148827C | 41 82 00 08 */	beq .L_81488284
/* 81488280 | 3B 60 00 00 */	li r27, 0x0
.L_81488284:
/* 81488284 | 92 41 00 C0 */	stw r18, 0xc0(r1)
/* 81488288 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8148828C | 38 81 00 98 */	addi r4, r1, 0x98
/* 81488290 | 48 00 65 89 */	bl CDBRecordKeyArrayDicInsert
.L_81488294:
/* 81488294 | 7F C3 F3 78 */	mr r3, r30
/* 81488298 | 48 00 30 05 */	bl CDBFSFindNext
.L_8148829C:
/* 8148829C | 7F C3 F3 78 */	mr r3, r30
/* 814882A0 | 48 00 2E E1 */	bl CDBFindDataIsEnd
/* 814882A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814882A8 | 41 82 FF 18 */	beq .L_814881C0
/* 814882AC | 7F C3 F3 78 */	mr r3, r30
/* 814882B0 | 48 00 30 09 */	bl CDBFSFindClose
.L_814882B4:
/* 814882B4 | 7F 83 E3 78 */	mr r3, r28
/* 814882B8 | 48 00 2F E5 */	bl CDBFSFindNext
.L_814882BC:
/* 814882BC | 7F 83 E3 78 */	mr r3, r28
/* 814882C0 | 48 00 2E C1 */	bl CDBFindDataIsEnd
/* 814882C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814882C8 | 41 82 FE 7C */	beq .L_81488144
/* 814882CC | 7F 83 E3 78 */	mr r3, r28
/* 814882D0 | 48 00 2F E9 */	bl CDBFSFindClose
.L_814882D4:
/* 814882D4 | 7F A3 EB 78 */	mr r3, r29
/* 814882D8 | 48 00 2F C5 */	bl CDBFSFindNext
.L_814882DC:
/* 814882DC | 7F A3 EB 78 */	mr r3, r29
/* 814882E0 | 48 00 2E A1 */	bl CDBFindDataIsEnd
/* 814882E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814882E8 | 41 82 FD F0 */	beq .L_814880D8
/* 814882EC | 7F A3 EB 78 */	mr r3, r29
/* 814882F0 | 48 00 2F C9 */	bl CDBFSFindClose
.L_814882F4:
/* 814882F4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814882F8 | 48 00 63 DD */	bl CDBRecordKeyArrayEmpty
/* 814882FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488300 | 40 82 01 0C */	bne .L_8148840C
/* 81488304 | 80 13 00 14 */	lwz r0, 0x14(r19)
/* 81488308 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148830C | 40 82 00 80 */	bne .L_8148838C
/* 81488310 | 3A 00 00 00 */	li r16, 0x0
/* 81488314 | 48 00 00 64 */	b .L_81488378
.L_81488318:
/* 81488318 | 7E 04 83 78 */	mr r4, r16
/* 8148831C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81488320 | 48 00 63 A5 */	bl CDBRecordKeyArrayAt
/* 81488324 | 7C 71 1B 78 */	mr r17, r3
/* 81488328 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 8148832C | 7E 25 8B 78 */	mr r5, r17
/* 81488330 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81488334 | 48 00 3C E1 */	bl CDBRecordInitDescriptor
/* 81488338 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 8148833C | 7E 64 9B 78 */	mr r4, r19
/* 81488340 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 81488344 | 4B FF F8 F5 */	bl CDBDatabaseSearchCallCallback
/* 81488348 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148834C | 41 82 00 08 */	beq .L_81488354
/* 81488350 | 48 00 00 C0 */	b .L_81488410
.L_81488354:
/* 81488354 | 7E 24 8B 78 */	mr r4, r17
/* 81488358 | 38 61 00 68 */	addi r3, r1, 0x68
/* 8148835C | 48 00 62 29 */	bl CDBRecordKeyCopy
/* 81488360 | 80 13 00 20 */	lwz r0, 0x20(r19)
/* 81488364 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488368 | 40 82 00 0C */	bne .L_81488374
/* 8148836C | 38 60 00 00 */	li r3, 0x0
/* 81488370 | 48 00 00 A0 */	b .L_81488410
.L_81488374:
/* 81488374 | 3A 10 00 01 */	addi r16, r16, 0x1
.L_81488378:
/* 81488378 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8148837C | 48 00 63 41 */	bl CDBRecordKeyArraySize
/* 81488380 | 7C 10 18 00 */	cmpw r16, r3
/* 81488384 | 41 80 FF 94 */	blt .L_81488318
/* 81488388 | 48 00 00 7C */	b .L_81488404
.L_8148838C:
/* 8148838C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81488390 | 48 00 63 2D */	bl CDBRecordKeyArraySize
/* 81488394 | 3A 03 FF FF */	subi r16, r3, 0x1
/* 81488398 | 48 00 00 64 */	b .L_814883FC
.L_8148839C:
/* 8148839C | 7E 04 83 78 */	mr r4, r16
/* 814883A0 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814883A4 | 48 00 63 21 */	bl CDBRecordKeyArrayAt
/* 814883A8 | 7C 71 1B 78 */	mr r17, r3
/* 814883AC | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814883B0 | 7E 25 8B 78 */	mr r5, r17
/* 814883B4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814883B8 | 48 00 3C 5D */	bl CDBRecordInitDescriptor
/* 814883BC | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814883C0 | 7E 64 9B 78 */	mr r4, r19
/* 814883C4 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 814883C8 | 4B FF F8 71 */	bl CDBDatabaseSearchCallCallback
/* 814883CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814883D0 | 41 82 00 08 */	beq .L_814883D8
/* 814883D4 | 48 00 00 3C */	b .L_81488410
.L_814883D8:
/* 814883D8 | 7E 24 8B 78 */	mr r4, r17
/* 814883DC | 38 61 00 68 */	addi r3, r1, 0x68
/* 814883E0 | 48 00 61 A5 */	bl CDBRecordKeyCopy
/* 814883E4 | 80 13 00 20 */	lwz r0, 0x20(r19)
/* 814883E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814883EC | 40 82 00 0C */	bne .L_814883F8
/* 814883F0 | 38 60 00 00 */	li r3, 0x0
/* 814883F4 | 48 00 00 1C */	b .L_81488410
.L_814883F8:
/* 814883F8 | 3A 10 FF FF */	subi r16, r16, 0x1
.L_814883FC:
/* 814883FC | 2C 10 00 00 */	cmpwi r16, 0x0
/* 81488400 | 40 80 FF 9C */	bge .L_8148839C
.L_81488404:
/* 81488404 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81488408 | 41 82 FA 4C */	beq .L_81487E54
.L_8148840C:
/* 8148840C | 38 60 00 00 */	li r3, 0x0
.L_81488410:
/* 81488410 | 39 61 01 20 */	addi r11, r1, 0x120
/* 81488414 | 48 17 10 C5 */	bl _restgpr_14
/* 81488418 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8148841C | 7C 08 03 A6 */	mtlr r0
/* 81488420 | 38 21 01 20 */	addi r1, r1, 0x120
/* 81488424 | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearchRecordLayer

# .text:0x1088 | 0x81488428 | size: 0x3A0
.fn CDBDatabaseSearchMinuteLayer, global
/* 81488428 | 94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8148842C | 7C 08 02 A6 */	mflr r0
/* 81488430 | 90 01 01 74 */	stw r0, 0x174(r1)
/* 81488434 | 39 61 01 70 */	addi r11, r1, 0x170
/* 81488438 | 48 17 10 61 */	bl _savegpr_17
/* 8148843C | 81 4D AD 4C */	lwz r10, lbl_81698D8C@sda21(r0)
/* 81488440 | 7C B5 2B 78 */	mr r21, r5
/* 81488444 | 7C 73 1B 78 */	mr r19, r3
/* 81488448 | 7C 94 23 78 */	mr r20, r4
/* 8148844C | 7C D6 33 78 */	mr r22, r6
/* 81488450 | 7C F7 3B 78 */	mr r23, r7
/* 81488454 | 7D 18 43 78 */	mr r24, r8
/* 81488458 | 7D 39 4B 78 */	mr r25, r9
/* 8148845C | 7E A3 AB 78 */	mr r3, r21
/* 81488460 | 3B 8A 1D BC */	addi r28, r10, 0x1dbc
/* 81488464 | 3B 6A 1C BC */	addi r27, r10, 0x1cbc
/* 81488468 | 48 17 C5 49 */	bl atoi
/* 8148846C | 7E C3 B3 78 */	mr r3, r22
/* 81488470 | 48 17 C5 41 */	bl atoi
/* 81488474 | 38 00 FF FF */	li r0, -0x1
/* 81488478 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148847C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81488480 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81488484 | 38 A0 00 3C */	li r5, 0x3c
/* 81488488 | 48 00 68 0D */	bl CDBIntArrayInit
/* 8148848C | 80 14 00 14 */	lwz r0, 0x14(r20)
/* 81488490 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488494 | 40 82 00 14 */	bne .L_814884A8
/* 81488498 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148849C | 48 00 68 15 */	bl CDBIntArraySetReverse
/* 814884A0 | 38 00 00 3C */	li r0, 0x3c
/* 814884A4 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_814884A8:
/* 814884A8 | 57 3E 07 FE */	clrlwi r30, r25, 31
/* 814884AC | 57 3D 07 BC */	rlwinm r29, r25, 0, 30, 30
/* 814884B0 | 3B 40 00 00 */	li r26, 0x0
/* 814884B4 | 3B E0 00 00 */	li r31, 0x0
/* 814884B8 | 48 00 02 EC */	b .L_814887A4
.L_814884BC:
/* 814884BC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814884C0 | 93 E1 00 18 */	stw r31, 0x18(r1)
/* 814884C4 | 3B 40 00 01 */	li r26, 0x1
/* 814884C8 | 41 82 00 C4 */	beq .L_8148858C
/* 814884CC | 7F 63 DB 78 */	mr r3, r27
/* 814884D0 | 7E A4 AB 78 */	mr r4, r21
/* 814884D4 | 7E C5 B3 78 */	mr r5, r22
/* 814884D8 | 7E E6 BB 78 */	mr r6, r23
/* 814884DC | 7F 07 C3 78 */	mr r7, r24
/* 814884E0 | 39 00 00 01 */	li r8, 0x1
/* 814884E4 | 39 20 00 00 */	li r9, 0x0
/* 814884E8 | 4B FF E3 C9 */	bl CDBConvHourStrToFullPath
/* 814884EC | 7F 83 E3 78 */	mr r3, r28
/* 814884F0 | 7F 64 DB 78 */	mr r4, r27
/* 814884F4 | 38 A0 00 01 */	li r5, 0x1
/* 814884F8 | 48 00 2D 89 */	bl CDBFSFindFirst
/* 814884FC | 48 00 00 78 */	b .L_81488574
.L_81488500:
/* 81488500 | 7F 83 E3 78 */	mr r3, r28
/* 81488504 | 48 00 2C 61 */	bl CDBFindDataIsDirectory
/* 81488508 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148850C | 41 82 00 60 */	beq .L_8148856C
/* 81488510 | 7F 83 E3 78 */	mr r3, r28
/* 81488514 | 48 00 2C 35 */	bl CDBFindDataGetName
/* 81488518 | 48 00 22 C1 */	bl CDBFSIsMinuteDirName
/* 8148851C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488520 | 41 82 00 4C */	beq .L_8148856C
/* 81488524 | 7F 83 E3 78 */	mr r3, r28
/* 81488528 | 48 00 2C 21 */	bl CDBFindDataGetName
/* 8148852C | 48 17 C4 85 */	bl atoi
/* 81488530 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81488534 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81488538 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148853C | 48 00 67 2D */	bl CDBIntCompare
/* 81488540 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81488544 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 81488548 | 40 81 00 24 */	ble .L_8148856C
/* 8148854C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488550 | 48 00 67 95 */	bl CDBIntArrayFull
/* 81488554 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488558 | 41 82 00 08 */	beq .L_81488560
/* 8148855C | 3B 40 00 00 */	li r26, 0x0
.L_81488560:
/* 81488560 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488564 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81488568 | 48 00 68 A5 */	bl CDBIntArrayDicInsert
.L_8148856C:
/* 8148856C | 7F 83 E3 78 */	mr r3, r28
/* 81488570 | 48 00 2D 2D */	bl CDBFSFindNext
.L_81488574:
/* 81488574 | 7F 83 E3 78 */	mr r3, r28
/* 81488578 | 48 00 2C 09 */	bl CDBFindDataIsEnd
/* 8148857C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488580 | 41 82 FF 80 */	beq .L_81488500
/* 81488584 | 7F 83 E3 78 */	mr r3, r28
/* 81488588 | 48 00 2D 31 */	bl CDBFSFindClose
.L_8148858C:
/* 8148858C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81488590 | 41 82 00 E4 */	beq .L_81488674
/* 81488594 | 7F 63 DB 78 */	mr r3, r27
/* 81488598 | 7E A4 AB 78 */	mr r4, r21
/* 8148859C | 7E C5 B3 78 */	mr r5, r22
/* 814885A0 | 7E E6 BB 78 */	mr r6, r23
/* 814885A4 | 7F 07 C3 78 */	mr r7, r24
/* 814885A8 | 39 34 00 28 */	addi r9, r20, 0x28
/* 814885AC | 39 00 00 02 */	li r8, 0x2
/* 814885B0 | 4B FF E3 01 */	bl CDBConvHourStrToFullPath
/* 814885B4 | 7F 83 E3 78 */	mr r3, r28
/* 814885B8 | 7F 64 DB 78 */	mr r4, r27
/* 814885BC | 38 A0 00 02 */	li r5, 0x2
/* 814885C0 | 48 00 2C C1 */	bl CDBFSFindFirst
/* 814885C4 | 48 00 00 98 */	b .L_8148865C
.L_814885C8:
/* 814885C8 | 7F 83 E3 78 */	mr r3, r28
/* 814885CC | 48 00 2B 99 */	bl CDBFindDataIsDirectory
/* 814885D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814885D4 | 41 82 00 80 */	beq .L_81488654
/* 814885D8 | 7F 83 E3 78 */	mr r3, r28
/* 814885DC | 48 00 2B 6D */	bl CDBFindDataGetName
/* 814885E0 | 48 00 21 F9 */	bl CDBFSIsMinuteDirName
/* 814885E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814885E8 | 41 82 00 6C */	beq .L_81488654
/* 814885EC | 7F 83 E3 78 */	mr r3, r28
/* 814885F0 | 48 00 2B 59 */	bl CDBFindDataGetName
/* 814885F4 | 48 17 C3 BD */	bl atoi
/* 814885F8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814885FC | 38 61 00 0C */	addi r3, r1, 0xc
/* 81488600 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81488604 | 48 00 66 65 */	bl CDBIntCompare
/* 81488608 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8148860C | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 81488610 | 40 81 00 44 */	ble .L_81488654
/* 81488614 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488618 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8148861C | 48 00 6B DD */	bl CDBIntArrayDicFind
/* 81488620 | 7C 72 1B 78 */	mr r18, r3
/* 81488624 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488628 | 48 00 66 D9 */	bl CDBIntArrayEnd
/* 8148862C | 7C 12 18 40 */	cmplw r18, r3
/* 81488630 | 40 82 00 24 */	bne .L_81488654
/* 81488634 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488638 | 48 00 66 AD */	bl CDBIntArrayFull
/* 8148863C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488640 | 41 82 00 08 */	beq .L_81488648
/* 81488644 | 3B 40 00 00 */	li r26, 0x0
.L_81488648:
/* 81488648 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148864C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81488650 | 48 00 67 BD */	bl CDBIntArrayDicInsert
.L_81488654:
/* 81488654 | 7F 83 E3 78 */	mr r3, r28
/* 81488658 | 48 00 2C 45 */	bl CDBFSFindNext
.L_8148865C:
/* 8148865C | 7F 83 E3 78 */	mr r3, r28
/* 81488660 | 48 00 2B 21 */	bl CDBFindDataIsEnd
/* 81488664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488668 | 41 82 FF 60 */	beq .L_814885C8
/* 8148866C | 7F 83 E3 78 */	mr r3, r28
/* 81488670 | 48 00 2C 49 */	bl CDBFSFindClose
.L_81488674:
/* 81488674 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488678 | 48 00 66 5D */	bl CDBIntArrayEmpty
/* 8148867C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488680 | 40 82 01 2C */	bne .L_814887AC
/* 81488684 | 80 14 00 14 */	lwz r0, 0x14(r20)
/* 81488688 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8148868C | 40 82 00 90 */	bne .L_8148871C
/* 81488690 | 3A 20 00 00 */	li r17, 0x0
/* 81488694 | 48 00 00 74 */	b .L_81488708
.L_81488698:
/* 81488698 | 7E 24 8B 78 */	mr r4, r17
/* 8148869C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814886A0 | 48 00 66 25 */	bl CDBIntArrayAt
/* 814886A4 | 7C 72 1B 78 */	mr r18, r3
/* 814886A8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814886AC | 80 92 00 00 */	lwz r4, 0x0(r18)
/* 814886B0 | 4B FF DF E1 */	bl CDBConvMinuteValueToMinuteStr
/* 814886B4 | 7E 63 9B 78 */	mr r3, r19
/* 814886B8 | 7E 84 A3 78 */	mr r4, r20
/* 814886BC | 7E A5 AB 78 */	mr r5, r21
/* 814886C0 | 7E C6 B3 78 */	mr r6, r22
/* 814886C4 | 7E E7 BB 78 */	mr r7, r23
/* 814886C8 | 7F 08 C3 78 */	mr r8, r24
/* 814886CC | 7F 2A CB 78 */	mr r10, r25
/* 814886D0 | 39 21 00 20 */	addi r9, r1, 0x20
/* 814886D4 | 4B FF F6 59 */	bl CDBDatabaseSearchRecordLayer
/* 814886D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814886DC | 41 82 00 08 */	beq .L_814886E4
/* 814886E0 | 48 00 00 D0 */	b .L_814887B0
.L_814886E4:
/* 814886E4 | 80 14 00 20 */	lwz r0, 0x20(r20)
/* 814886E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814886EC | 40 82 00 0C */	bne .L_814886F8
/* 814886F0 | 38 60 00 00 */	li r3, 0x0
/* 814886F4 | 48 00 00 BC */	b .L_814887B0
.L_814886F8:
/* 814886F8 | 7E 44 93 78 */	mr r4, r18
/* 814886FC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81488700 | 48 00 65 5D */	bl CDBIntCopy
/* 81488704 | 3A 31 00 01 */	addi r17, r17, 0x1
.L_81488708:
/* 81488708 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148870C | 48 00 65 B1 */	bl CDBIntArraySize
/* 81488710 | 7C 11 18 00 */	cmpw r17, r3
/* 81488714 | 41 80 FF 84 */	blt .L_81488698
/* 81488718 | 48 00 00 8C */	b .L_814887A4
.L_8148871C:
/* 8148871C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488720 | 48 00 65 9D */	bl CDBIntArraySize
/* 81488724 | 3A 43 FF FF */	subi r18, r3, 0x1
/* 81488728 | 48 00 00 74 */	b .L_8148879C
.L_8148872C:
/* 8148872C | 7E 44 93 78 */	mr r4, r18
/* 81488730 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488734 | 48 00 65 91 */	bl CDBIntArrayAt
/* 81488738 | 7C 71 1B 78 */	mr r17, r3
/* 8148873C | 38 61 00 20 */	addi r3, r1, 0x20
/* 81488740 | 80 91 00 00 */	lwz r4, 0x0(r17)
/* 81488744 | 4B FF DF 4D */	bl CDBConvMinuteValueToMinuteStr
/* 81488748 | 7E 63 9B 78 */	mr r3, r19
/* 8148874C | 7E 84 A3 78 */	mr r4, r20
/* 81488750 | 7E A5 AB 78 */	mr r5, r21
/* 81488754 | 7E C6 B3 78 */	mr r6, r22
/* 81488758 | 7E E7 BB 78 */	mr r7, r23
/* 8148875C | 7F 08 C3 78 */	mr r8, r24
/* 81488760 | 7F 2A CB 78 */	mr r10, r25
/* 81488764 | 39 21 00 20 */	addi r9, r1, 0x20
/* 81488768 | 4B FF F5 C5 */	bl CDBDatabaseSearchRecordLayer
/* 8148876C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488770 | 41 82 00 08 */	beq .L_81488778
/* 81488774 | 48 00 00 3C */	b .L_814887B0
.L_81488778:
/* 81488778 | 80 14 00 20 */	lwz r0, 0x20(r20)
/* 8148877C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488780 | 40 82 00 0C */	bne .L_8148878C
/* 81488784 | 38 60 00 00 */	li r3, 0x0
/* 81488788 | 48 00 00 28 */	b .L_814887B0
.L_8148878C:
/* 8148878C | 7E 24 8B 78 */	mr r4, r17
/* 81488790 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81488794 | 48 00 64 C9 */	bl CDBIntCopy
/* 81488798 | 3A 52 FF FF */	subi r18, r18, 0x1
.L_8148879C:
/* 8148879C | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814887A0 | 40 80 FF 8C */	bge .L_8148872C
.L_814887A4:
/* 814887A4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814887A8 | 41 82 FD 14 */	beq .L_814884BC
.L_814887AC:
/* 814887AC | 38 60 00 00 */	li r3, 0x0
.L_814887B0:
/* 814887B0 | 39 61 01 70 */	addi r11, r1, 0x170
/* 814887B4 | 48 17 0D 31 */	bl _restgpr_17
/* 814887B8 | 80 01 01 74 */	lwz r0, 0x174(r1)
/* 814887BC | 7C 08 03 A6 */	mtlr r0
/* 814887C0 | 38 21 01 70 */	addi r1, r1, 0x170
/* 814887C4 | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearchMinuteLayer

# .text:0x1428 | 0x814887C8 | size: 0x38C
.fn CDBDatabaseSearchHourLayer, global
/* 814887C8 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814887CC | 7C 08 02 A6 */	mflr r0
/* 814887D0 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814887D4 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 814887D8 | 48 17 0C C5 */	bl _savegpr_18
/* 814887DC | 81 2D AD 4C */	lwz r9, lbl_81698D8C@sda21(r0)
/* 814887E0 | 7C B6 2B 78 */	mr r22, r5
/* 814887E4 | 7C 74 1B 78 */	mr r20, r3
/* 814887E8 | 7C 95 23 78 */	mr r21, r4
/* 814887EC | 7C D7 33 78 */	mr r23, r6
/* 814887F0 | 7C F8 3B 78 */	mr r24, r7
/* 814887F4 | 7D 19 43 78 */	mr r25, r8
/* 814887F8 | 7E C3 B3 78 */	mr r3, r22
/* 814887FC | 3B 89 27 50 */	addi r28, r9, 0x2750
/* 81488800 | 3B 69 26 50 */	addi r27, r9, 0x2650
/* 81488804 | 48 17 C1 AD */	bl atoi
/* 81488808 | 7E E3 BB 78 */	mr r3, r23
/* 8148880C | 48 17 C1 A5 */	bl atoi
/* 81488810 | 38 00 FF FF */	li r0, -0x1
/* 81488814 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488818 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8148881C | 38 81 00 40 */	addi r4, r1, 0x40
/* 81488820 | 38 A0 00 0C */	li r5, 0xc
/* 81488824 | 48 00 64 71 */	bl CDBIntArrayInit
/* 81488828 | 80 15 00 14 */	lwz r0, 0x14(r21)
/* 8148882C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488830 | 40 82 00 14 */	bne .L_81488844
/* 81488834 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488838 | 48 00 64 79 */	bl CDBIntArraySetReverse
/* 8148883C | 38 00 00 18 */	li r0, 0x18
/* 81488840 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_81488844:
/* 81488844 | 57 3E 07 FE */	clrlwi r30, r25, 31
/* 81488848 | 57 3D 07 BC */	rlwinm r29, r25, 0, 30, 30
/* 8148884C | 3B 40 00 00 */	li r26, 0x0
/* 81488850 | 3B E0 00 00 */	li r31, 0x0
/* 81488854 | 48 00 02 DC */	b .L_81488B30
.L_81488858:
/* 81488858 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8148885C | 93 E1 00 18 */	stw r31, 0x18(r1)
/* 81488860 | 3B 40 00 01 */	li r26, 0x1
/* 81488864 | 41 82 00 C0 */	beq .L_81488924
/* 81488868 | 7F 63 DB 78 */	mr r3, r27
/* 8148886C | 7E C4 B3 78 */	mr r4, r22
/* 81488870 | 7E E5 BB 78 */	mr r5, r23
/* 81488874 | 7F 06 C3 78 */	mr r6, r24
/* 81488878 | 38 E0 00 01 */	li r7, 0x1
/* 8148887C | 39 00 00 00 */	li r8, 0x0
/* 81488880 | 4B FF DF B5 */	bl CDBConvDayStrToFullPath
/* 81488884 | 7F 83 E3 78 */	mr r3, r28
/* 81488888 | 7F 64 DB 78 */	mr r4, r27
/* 8148888C | 38 A0 00 01 */	li r5, 0x1
/* 81488890 | 48 00 29 F1 */	bl CDBFSFindFirst
/* 81488894 | 48 00 00 78 */	b .L_8148890C
.L_81488898:
/* 81488898 | 7F 83 E3 78 */	mr r3, r28
/* 8148889C | 48 00 28 C9 */	bl CDBFindDataIsDirectory
/* 814888A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814888A4 | 41 82 00 60 */	beq .L_81488904
/* 814888A8 | 7F 83 E3 78 */	mr r3, r28
/* 814888AC | 48 00 28 9D */	bl CDBFindDataGetName
/* 814888B0 | 48 00 1E 2D */	bl CDBFSIsHourDirName
/* 814888B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814888B8 | 41 82 00 4C */	beq .L_81488904
/* 814888BC | 7F 83 E3 78 */	mr r3, r28
/* 814888C0 | 48 00 28 89 */	bl CDBFindDataGetName
/* 814888C4 | 48 17 C0 ED */	bl atoi
/* 814888C8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814888CC | 38 61 00 0C */	addi r3, r1, 0xc
/* 814888D0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814888D4 | 48 00 63 95 */	bl CDBIntCompare
/* 814888D8 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 814888DC | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 814888E0 | 40 81 00 24 */	ble .L_81488904
/* 814888E4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814888E8 | 48 00 63 FD */	bl CDBIntArrayFull
/* 814888EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814888F0 | 41 82 00 08 */	beq .L_814888F8
/* 814888F4 | 3B 40 00 00 */	li r26, 0x0
.L_814888F8:
/* 814888F8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814888FC | 38 81 00 0C */	addi r4, r1, 0xc
/* 81488900 | 48 00 65 0D */	bl CDBIntArrayDicInsert
.L_81488904:
/* 81488904 | 7F 83 E3 78 */	mr r3, r28
/* 81488908 | 48 00 29 95 */	bl CDBFSFindNext
.L_8148890C:
/* 8148890C | 7F 83 E3 78 */	mr r3, r28
/* 81488910 | 48 00 28 71 */	bl CDBFindDataIsEnd
/* 81488914 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488918 | 41 82 FF 80 */	beq .L_81488898
/* 8148891C | 7F 83 E3 78 */	mr r3, r28
/* 81488920 | 48 00 29 99 */	bl CDBFSFindClose
.L_81488924:
/* 81488924 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81488928 | 41 82 00 E0 */	beq .L_81488A08
/* 8148892C | 7F 63 DB 78 */	mr r3, r27
/* 81488930 | 7E C4 B3 78 */	mr r4, r22
/* 81488934 | 7E E5 BB 78 */	mr r5, r23
/* 81488938 | 7F 06 C3 78 */	mr r6, r24
/* 8148893C | 39 15 00 28 */	addi r8, r21, 0x28
/* 81488940 | 38 E0 00 02 */	li r7, 0x2
/* 81488944 | 4B FF DE F1 */	bl CDBConvDayStrToFullPath
/* 81488948 | 7F 83 E3 78 */	mr r3, r28
/* 8148894C | 7F 64 DB 78 */	mr r4, r27
/* 81488950 | 38 A0 00 02 */	li r5, 0x2
/* 81488954 | 48 00 29 2D */	bl CDBFSFindFirst
/* 81488958 | 48 00 00 98 */	b .L_814889F0
.L_8148895C:
/* 8148895C | 7F 83 E3 78 */	mr r3, r28
/* 81488960 | 48 00 28 05 */	bl CDBFindDataIsDirectory
/* 81488964 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488968 | 41 82 00 80 */	beq .L_814889E8
/* 8148896C | 7F 83 E3 78 */	mr r3, r28
/* 81488970 | 48 00 27 D9 */	bl CDBFindDataGetName
/* 81488974 | 48 00 1D 69 */	bl CDBFSIsHourDirName
/* 81488978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148897C | 41 82 00 6C */	beq .L_814889E8
/* 81488980 | 7F 83 E3 78 */	mr r3, r28
/* 81488984 | 48 00 27 C5 */	bl CDBFindDataGetName
/* 81488988 | 48 17 C0 29 */	bl atoi
/* 8148898C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81488990 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81488994 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81488998 | 48 00 62 D1 */	bl CDBIntCompare
/* 8148899C | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 814889A0 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 814889A4 | 40 81 00 44 */	ble .L_814889E8
/* 814889A8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814889AC | 38 81 00 0C */	addi r4, r1, 0xc
/* 814889B0 | 48 00 68 49 */	bl CDBIntArrayDicFind
/* 814889B4 | 7C 73 1B 78 */	mr r19, r3
/* 814889B8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814889BC | 48 00 63 45 */	bl CDBIntArrayEnd
/* 814889C0 | 7C 13 18 40 */	cmplw r19, r3
/* 814889C4 | 40 82 00 24 */	bne .L_814889E8
/* 814889C8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814889CC | 48 00 63 19 */	bl CDBIntArrayFull
/* 814889D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814889D4 | 41 82 00 08 */	beq .L_814889DC
/* 814889D8 | 3B 40 00 00 */	li r26, 0x0
.L_814889DC:
/* 814889DC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814889E0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814889E4 | 48 00 64 29 */	bl CDBIntArrayDicInsert
.L_814889E8:
/* 814889E8 | 7F 83 E3 78 */	mr r3, r28
/* 814889EC | 48 00 28 B1 */	bl CDBFSFindNext
.L_814889F0:
/* 814889F0 | 7F 83 E3 78 */	mr r3, r28
/* 814889F4 | 48 00 27 8D */	bl CDBFindDataIsEnd
/* 814889F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814889FC | 41 82 FF 60 */	beq .L_8148895C
/* 81488A00 | 7F 83 E3 78 */	mr r3, r28
/* 81488A04 | 48 00 28 B5 */	bl CDBFSFindClose
.L_81488A08:
/* 81488A08 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488A0C | 48 00 62 C9 */	bl CDBIntArrayEmpty
/* 81488A10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488A14 | 40 82 01 24 */	bne .L_81488B38
/* 81488A18 | 80 15 00 14 */	lwz r0, 0x14(r21)
/* 81488A1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81488A20 | 40 82 00 8C */	bne .L_81488AAC
/* 81488A24 | 3A 40 00 00 */	li r18, 0x0
/* 81488A28 | 48 00 00 70 */	b .L_81488A98
.L_81488A2C:
/* 81488A2C | 7E 44 93 78 */	mr r4, r18
/* 81488A30 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488A34 | 48 00 62 91 */	bl CDBIntArrayAt
/* 81488A38 | 7C 73 1B 78 */	mr r19, r3
/* 81488A3C | 38 61 00 20 */	addi r3, r1, 0x20
/* 81488A40 | 80 93 00 00 */	lwz r4, 0x0(r19)
/* 81488A44 | 4B FF DC 3D */	bl CDBConvHourValueToHourStr
/* 81488A48 | 7E 83 A3 78 */	mr r3, r20
/* 81488A4C | 7E A4 AB 78 */	mr r4, r21
/* 81488A50 | 7E C5 B3 78 */	mr r5, r22
/* 81488A54 | 7E E6 BB 78 */	mr r6, r23
/* 81488A58 | 7F 07 C3 78 */	mr r7, r24
/* 81488A5C | 7F 29 CB 78 */	mr r9, r25
/* 81488A60 | 39 01 00 20 */	addi r8, r1, 0x20
/* 81488A64 | 4B FF F9 C5 */	bl CDBDatabaseSearchMinuteLayer
/* 81488A68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488A6C | 41 82 00 08 */	beq .L_81488A74
/* 81488A70 | 48 00 00 CC */	b .L_81488B3C
.L_81488A74:
/* 81488A74 | 80 15 00 20 */	lwz r0, 0x20(r21)
/* 81488A78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488A7C | 40 82 00 0C */	bne .L_81488A88
/* 81488A80 | 38 60 00 00 */	li r3, 0x0
/* 81488A84 | 48 00 00 B8 */	b .L_81488B3C
.L_81488A88:
/* 81488A88 | 7E 64 9B 78 */	mr r4, r19
/* 81488A8C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81488A90 | 48 00 61 CD */	bl CDBIntCopy
/* 81488A94 | 3A 52 00 01 */	addi r18, r18, 0x1
.L_81488A98:
/* 81488A98 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488A9C | 48 00 62 21 */	bl CDBIntArraySize
/* 81488AA0 | 7C 12 18 00 */	cmpw r18, r3
/* 81488AA4 | 41 80 FF 88 */	blt .L_81488A2C
/* 81488AA8 | 48 00 00 88 */	b .L_81488B30
.L_81488AAC:
/* 81488AAC | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488AB0 | 48 00 62 0D */	bl CDBIntArraySize
/* 81488AB4 | 3A 63 FF FF */	subi r19, r3, 0x1
/* 81488AB8 | 48 00 00 70 */	b .L_81488B28
.L_81488ABC:
/* 81488ABC | 7E 64 9B 78 */	mr r4, r19
/* 81488AC0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488AC4 | 48 00 62 01 */	bl CDBIntArrayAt
/* 81488AC8 | 7C 72 1B 78 */	mr r18, r3
/* 81488ACC | 38 61 00 20 */	addi r3, r1, 0x20
/* 81488AD0 | 80 92 00 00 */	lwz r4, 0x0(r18)
/* 81488AD4 | 4B FF DB AD */	bl CDBConvHourValueToHourStr
/* 81488AD8 | 7E 83 A3 78 */	mr r3, r20
/* 81488ADC | 7E A4 AB 78 */	mr r4, r21
/* 81488AE0 | 7E C5 B3 78 */	mr r5, r22
/* 81488AE4 | 7E E6 BB 78 */	mr r6, r23
/* 81488AE8 | 7F 07 C3 78 */	mr r7, r24
/* 81488AEC | 7F 29 CB 78 */	mr r9, r25
/* 81488AF0 | 39 01 00 20 */	addi r8, r1, 0x20
/* 81488AF4 | 4B FF F9 35 */	bl CDBDatabaseSearchMinuteLayer
/* 81488AF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488AFC | 41 82 00 08 */	beq .L_81488B04
/* 81488B00 | 48 00 00 3C */	b .L_81488B3C
.L_81488B04:
/* 81488B04 | 80 15 00 20 */	lwz r0, 0x20(r21)
/* 81488B08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488B0C | 40 82 00 0C */	bne .L_81488B18
/* 81488B10 | 38 60 00 00 */	li r3, 0x0
/* 81488B14 | 48 00 00 28 */	b .L_81488B3C
.L_81488B18:
/* 81488B18 | 7E 44 93 78 */	mr r4, r18
/* 81488B1C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81488B20 | 48 00 61 3D */	bl CDBIntCopy
/* 81488B24 | 3A 73 FF FF */	subi r19, r19, 0x1
.L_81488B28:
/* 81488B28 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 81488B2C | 40 80 FF 90 */	bge .L_81488ABC
.L_81488B30:
/* 81488B30 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81488B34 | 41 82 FD 24 */	beq .L_81488858
.L_81488B38:
/* 81488B38 | 38 60 00 00 */	li r3, 0x0
.L_81488B3C:
/* 81488B3C | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81488B40 | 48 17 09 A9 */	bl _restgpr_18
/* 81488B44 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 81488B48 | 7C 08 03 A6 */	mtlr r0
/* 81488B4C | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 81488B50 | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearchHourLayer

# .text:0x17B4 | 0x81488B54 | size: 0x3F0
.fn CDBDatabaseSearchDayLayer, global
/* 81488B54 | 94 21 FF 00 */	stwu r1, -0x100(r1)
/* 81488B58 | 7C 08 02 A6 */	mflr r0
/* 81488B5C | 90 01 01 04 */	stw r0, 0x104(r1)
/* 81488B60 | 39 61 01 00 */	addi r11, r1, 0x100
/* 81488B64 | 48 17 09 35 */	bl _savegpr_17
/* 81488B68 | 81 0D AD 4C */	lwz r8, lbl_81698D8C@sda21(r0)
/* 81488B6C | 7C B3 2B 78 */	mr r19, r5
/* 81488B70 | 7C 71 1B 78 */	mr r17, r3
/* 81488B74 | 7C 92 23 78 */	mr r18, r4
/* 81488B78 | 7C D4 33 78 */	mr r20, r6
/* 81488B7C | 7C F5 3B 78 */	mr r21, r7
/* 81488B80 | 7E 63 9B 78 */	mr r3, r19
/* 81488B84 | 3B 48 30 E4 */	addi r26, r8, 0x30e4
/* 81488B88 | 3B 28 2F E4 */	addi r25, r8, 0x2fe4
/* 81488B8C | 48 17 BE 25 */	bl atoi
/* 81488B90 | 7C 77 1B 78 */	mr r23, r3
/* 81488B94 | 7E 83 A3 78 */	mr r3, r20
/* 81488B98 | 48 17 BE 19 */	bl atoi
/* 81488B9C | 38 00 00 00 */	li r0, 0x0
/* 81488BA0 | 7C 76 1B 78 */	mr r22, r3
/* 81488BA4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81488BA8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488BAC | 38 81 00 40 */	addi r4, r1, 0x40
/* 81488BB0 | 38 A0 00 1F */	li r5, 0x1f
/* 81488BB4 | 48 00 60 E1 */	bl CDBIntArrayInit
/* 81488BB8 | 80 12 00 14 */	lwz r0, 0x14(r18)
/* 81488BBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488BC0 | 40 82 00 14 */	bne .L_81488BD4
/* 81488BC4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488BC8 | 48 00 60 E9 */	bl CDBIntArraySetReverse
/* 81488BCC | 38 00 00 20 */	li r0, 0x20
/* 81488BD0 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_81488BD4:
/* 81488BD4 | 56 BE 07 FE */	clrlwi r30, r21, 31
/* 81488BD8 | 56 BD 07 BC */	rlwinm r29, r21, 0, 30, 30
/* 81488BDC | 3B 00 00 00 */	li r24, 0x0
/* 81488BE0 | 3B E0 00 00 */	li r31, 0x0
/* 81488BE4 | 48 00 03 3C */	b .L_81488F20
.L_81488BE8:
/* 81488BE8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81488BEC | 93 E1 00 18 */	stw r31, 0x18(r1)
/* 81488BF0 | 3B 00 00 01 */	li r24, 0x1
/* 81488BF4 | 41 82 00 BC */	beq .L_81488CB0
/* 81488BF8 | 7F 23 CB 78 */	mr r3, r25
/* 81488BFC | 7E 64 9B 78 */	mr r4, r19
/* 81488C00 | 7E 85 A3 78 */	mr r5, r20
/* 81488C04 | 38 C0 00 01 */	li r6, 0x1
/* 81488C08 | 38 E0 00 00 */	li r7, 0x0
/* 81488C0C | 4B FF DB C5 */	bl CDBConvMonthStrToFullPath
/* 81488C10 | 7F 43 D3 78 */	mr r3, r26
/* 81488C14 | 7F 24 CB 78 */	mr r4, r25
/* 81488C18 | 38 A0 00 01 */	li r5, 0x1
/* 81488C1C | 48 00 26 65 */	bl CDBFSFindFirst
/* 81488C20 | 48 00 00 78 */	b .L_81488C98
.L_81488C24:
/* 81488C24 | 7F 43 D3 78 */	mr r3, r26
/* 81488C28 | 48 00 25 3D */	bl CDBFindDataIsDirectory
/* 81488C2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488C30 | 41 82 00 60 */	beq .L_81488C90
/* 81488C34 | 7F 43 D3 78 */	mr r3, r26
/* 81488C38 | 48 00 25 11 */	bl CDBFindDataGetName
/* 81488C3C | 48 00 19 A5 */	bl CDBFSIsDayDirName
/* 81488C40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488C44 | 41 82 00 4C */	beq .L_81488C90
/* 81488C48 | 7F 43 D3 78 */	mr r3, r26
/* 81488C4C | 48 00 24 FD */	bl CDBFindDataGetName
/* 81488C50 | 48 17 BD 61 */	bl atoi
/* 81488C54 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81488C58 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81488C5C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81488C60 | 48 00 60 09 */	bl CDBIntCompare
/* 81488C64 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81488C68 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 81488C6C | 40 81 00 24 */	ble .L_81488C90
/* 81488C70 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488C74 | 48 00 60 71 */	bl CDBIntArrayFull
/* 81488C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488C7C | 41 82 00 08 */	beq .L_81488C84
/* 81488C80 | 3B 00 00 00 */	li r24, 0x0
.L_81488C84:
/* 81488C84 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488C88 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81488C8C | 48 00 61 81 */	bl CDBIntArrayDicInsert
.L_81488C90:
/* 81488C90 | 7F 43 D3 78 */	mr r3, r26
/* 81488C94 | 48 00 26 09 */	bl CDBFSFindNext
.L_81488C98:
/* 81488C98 | 7F 43 D3 78 */	mr r3, r26
/* 81488C9C | 48 00 24 E5 */	bl CDBFindDataIsEnd
/* 81488CA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488CA4 | 41 82 FF 80 */	beq .L_81488C24
/* 81488CA8 | 7F 43 D3 78 */	mr r3, r26
/* 81488CAC | 48 00 26 0D */	bl CDBFSFindClose
.L_81488CB0:
/* 81488CB0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81488CB4 | 41 82 00 DC */	beq .L_81488D90
/* 81488CB8 | 7F 23 CB 78 */	mr r3, r25
/* 81488CBC | 7E 64 9B 78 */	mr r4, r19
/* 81488CC0 | 7E 85 A3 78 */	mr r5, r20
/* 81488CC4 | 38 F2 00 28 */	addi r7, r18, 0x28
/* 81488CC8 | 38 C0 00 02 */	li r6, 0x2
/* 81488CCC | 4B FF DB 05 */	bl CDBConvMonthStrToFullPath
/* 81488CD0 | 7F 43 D3 78 */	mr r3, r26
/* 81488CD4 | 7F 24 CB 78 */	mr r4, r25
/* 81488CD8 | 38 A0 00 02 */	li r5, 0x2
/* 81488CDC | 48 00 25 A5 */	bl CDBFSFindFirst
/* 81488CE0 | 48 00 00 98 */	b .L_81488D78
.L_81488CE4:
/* 81488CE4 | 7F 43 D3 78 */	mr r3, r26
/* 81488CE8 | 48 00 24 7D */	bl CDBFindDataIsDirectory
/* 81488CEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488CF0 | 41 82 00 80 */	beq .L_81488D70
/* 81488CF4 | 7F 43 D3 78 */	mr r3, r26
/* 81488CF8 | 48 00 24 51 */	bl CDBFindDataGetName
/* 81488CFC | 48 00 18 E5 */	bl CDBFSIsDayDirName
/* 81488D00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488D04 | 41 82 00 6C */	beq .L_81488D70
/* 81488D08 | 7F 43 D3 78 */	mr r3, r26
/* 81488D0C | 48 00 24 3D */	bl CDBFindDataGetName
/* 81488D10 | 48 17 BC A1 */	bl atoi
/* 81488D14 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81488D18 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81488D1C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81488D20 | 48 00 5F 49 */	bl CDBIntCompare
/* 81488D24 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81488D28 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 81488D2C | 40 81 00 44 */	ble .L_81488D70
/* 81488D30 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488D34 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81488D38 | 48 00 64 C1 */	bl CDBIntArrayDicFind
/* 81488D3C | 7C 7B 1B 78 */	mr r27, r3
/* 81488D40 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488D44 | 48 00 5F BD */	bl CDBIntArrayEnd
/* 81488D48 | 7C 1B 18 40 */	cmplw r27, r3
/* 81488D4C | 40 82 00 24 */	bne .L_81488D70
/* 81488D50 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488D54 | 48 00 5F 91 */	bl CDBIntArrayFull
/* 81488D58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488D5C | 41 82 00 08 */	beq .L_81488D64
/* 81488D60 | 3B 00 00 00 */	li r24, 0x0
.L_81488D64:
/* 81488D64 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488D68 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81488D6C | 48 00 60 A1 */	bl CDBIntArrayDicInsert
.L_81488D70:
/* 81488D70 | 7F 43 D3 78 */	mr r3, r26
/* 81488D74 | 48 00 25 29 */	bl CDBFSFindNext
.L_81488D78:
/* 81488D78 | 7F 43 D3 78 */	mr r3, r26
/* 81488D7C | 48 00 24 05 */	bl CDBFindDataIsEnd
/* 81488D80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488D84 | 41 82 FF 60 */	beq .L_81488CE4
/* 81488D88 | 7F 43 D3 78 */	mr r3, r26
/* 81488D8C | 48 00 25 2D */	bl CDBFSFindClose
.L_81488D90:
/* 81488D90 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488D94 | 48 00 5F 41 */	bl CDBIntArrayEmpty
/* 81488D98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488D9C | 40 82 01 8C */	bne .L_81488F28
/* 81488DA0 | 80 12 00 14 */	lwz r0, 0x14(r18)
/* 81488DA4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81488DA8 | 40 82 00 C0 */	bne .L_81488E68
/* 81488DAC | 3B 60 00 00 */	li r27, 0x0
/* 81488DB0 | 48 00 00 A4 */	b .L_81488E54
.L_81488DB4:
/* 81488DB4 | 7F 64 DB 78 */	mr r4, r27
/* 81488DB8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488DBC | 48 00 5F 09 */	bl CDBIntArrayAt
/* 81488DC0 | 7C 7C 1B 78 */	mr r28, r3
/* 81488DC4 | 7E E3 BB 78 */	mr r3, r23
/* 81488DC8 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81488DCC | 7E C4 B3 78 */	mr r4, r22
/* 81488DD0 | 4B FF D5 D9 */	bl CDBMakeCDBDateDayEnd
/* 81488DD4 | 80 12 00 00 */	lwz r0, 0x0(r18)
/* 81488DD8 | 7C 03 00 40 */	cmplw r3, r0
/* 81488DDC | 41 80 00 68 */	blt .L_81488E44
/* 81488DE0 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81488DE4 | 7E E3 BB 78 */	mr r3, r23
/* 81488DE8 | 7E C4 B3 78 */	mr r4, r22
/* 81488DEC | 4B FF D5 5D */	bl CDBMakeCDBDateDayBegin
/* 81488DF0 | 80 12 00 04 */	lwz r0, 0x4(r18)
/* 81488DF4 | 7C 00 18 40 */	cmplw r0, r3
/* 81488DF8 | 41 80 00 4C */	blt .L_81488E44
/* 81488DFC | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81488E00 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81488E04 | 4B FF D8 6D */	bl CDBConvDayValueToDayStr
/* 81488E08 | 7E 23 8B 78 */	mr r3, r17
/* 81488E0C | 7E 44 93 78 */	mr r4, r18
/* 81488E10 | 7E 65 9B 78 */	mr r5, r19
/* 81488E14 | 7E 86 A3 78 */	mr r6, r20
/* 81488E18 | 7E A8 AB 78 */	mr r8, r21
/* 81488E1C | 38 E1 00 20 */	addi r7, r1, 0x20
/* 81488E20 | 4B FF F9 A9 */	bl CDBDatabaseSearchHourLayer
/* 81488E24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488E28 | 41 82 00 08 */	beq .L_81488E30
/* 81488E2C | 48 00 01 00 */	b .L_81488F2C
.L_81488E30:
/* 81488E30 | 80 12 00 20 */	lwz r0, 0x20(r18)
/* 81488E34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488E38 | 40 82 00 0C */	bne .L_81488E44
/* 81488E3C | 38 60 00 00 */	li r3, 0x0
/* 81488E40 | 48 00 00 EC */	b .L_81488F2C
.L_81488E44:
/* 81488E44 | 7F 84 E3 78 */	mr r4, r28
/* 81488E48 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81488E4C | 48 00 5E 11 */	bl CDBIntCopy
/* 81488E50 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81488E54:
/* 81488E54 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488E58 | 48 00 5E 65 */	bl CDBIntArraySize
/* 81488E5C | 7C 1B 18 00 */	cmpw r27, r3
/* 81488E60 | 41 80 FF 54 */	blt .L_81488DB4
/* 81488E64 | 48 00 00 BC */	b .L_81488F20
.L_81488E68:
/* 81488E68 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488E6C | 48 00 5E 51 */	bl CDBIntArraySize
/* 81488E70 | 3B 83 FF FF */	subi r28, r3, 0x1
/* 81488E74 | 48 00 00 A4 */	b .L_81488F18
.L_81488E78:
/* 81488E78 | 7F 84 E3 78 */	mr r4, r28
/* 81488E7C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488E80 | 48 00 5E 45 */	bl CDBIntArrayAt
/* 81488E84 | 7C 7B 1B 78 */	mr r27, r3
/* 81488E88 | 7E E3 BB 78 */	mr r3, r23
/* 81488E8C | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 81488E90 | 7E C4 B3 78 */	mr r4, r22
/* 81488E94 | 4B FF D5 15 */	bl CDBMakeCDBDateDayEnd
/* 81488E98 | 80 12 00 00 */	lwz r0, 0x0(r18)
/* 81488E9C | 7C 03 00 40 */	cmplw r3, r0
/* 81488EA0 | 41 80 00 68 */	blt .L_81488F08
/* 81488EA4 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 81488EA8 | 7E E3 BB 78 */	mr r3, r23
/* 81488EAC | 7E C4 B3 78 */	mr r4, r22
/* 81488EB0 | 4B FF D4 99 */	bl CDBMakeCDBDateDayBegin
/* 81488EB4 | 80 12 00 04 */	lwz r0, 0x4(r18)
/* 81488EB8 | 7C 00 18 40 */	cmplw r0, r3
/* 81488EBC | 41 80 00 4C */	blt .L_81488F08
/* 81488EC0 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 81488EC4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81488EC8 | 4B FF D7 A9 */	bl CDBConvDayValueToDayStr
/* 81488ECC | 7E 23 8B 78 */	mr r3, r17
/* 81488ED0 | 7E 44 93 78 */	mr r4, r18
/* 81488ED4 | 7E 65 9B 78 */	mr r5, r19
/* 81488ED8 | 7E 86 A3 78 */	mr r6, r20
/* 81488EDC | 7E A8 AB 78 */	mr r8, r21
/* 81488EE0 | 38 E1 00 20 */	addi r7, r1, 0x20
/* 81488EE4 | 4B FF F8 E5 */	bl CDBDatabaseSearchHourLayer
/* 81488EE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81488EEC | 41 82 00 08 */	beq .L_81488EF4
/* 81488EF0 | 48 00 00 3C */	b .L_81488F2C
.L_81488EF4:
/* 81488EF4 | 80 12 00 20 */	lwz r0, 0x20(r18)
/* 81488EF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488EFC | 40 82 00 0C */	bne .L_81488F08
/* 81488F00 | 38 60 00 00 */	li r3, 0x0
/* 81488F04 | 48 00 00 28 */	b .L_81488F2C
.L_81488F08:
/* 81488F08 | 7F 64 DB 78 */	mr r4, r27
/* 81488F0C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81488F10 | 48 00 5D 4D */	bl CDBIntCopy
/* 81488F14 | 3B 9C FF FF */	subi r28, r28, 0x1
.L_81488F18:
/* 81488F18 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81488F1C | 40 80 FF 5C */	bge .L_81488E78
.L_81488F20:
/* 81488F20 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81488F24 | 41 82 FC C4 */	beq .L_81488BE8
.L_81488F28:
/* 81488F28 | 38 60 00 00 */	li r3, 0x0
.L_81488F2C:
/* 81488F2C | 39 61 01 00 */	addi r11, r1, 0x100
/* 81488F30 | 48 17 05 B5 */	bl _restgpr_17
/* 81488F34 | 80 01 01 04 */	lwz r0, 0x104(r1)
/* 81488F38 | 7C 08 03 A6 */	mtlr r0
/* 81488F3C | 38 21 01 00 */	addi r1, r1, 0x100
/* 81488F40 | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearchDayLayer

# .text:0x1BA4 | 0x81488F44 | size: 0x3C0
.fn CDBDatabaseSearchMonthLayer, global
/* 81488F44 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 81488F48 | 7C 08 02 A6 */	mflr r0
/* 81488F4C | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 81488F50 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81488F54 | 48 17 05 4D */	bl _savegpr_19
/* 81488F58 | 80 ED AD 4C */	lwz r7, lbl_81698D8C@sda21(r0)
/* 81488F5C | 7C B7 2B 78 */	mr r23, r5
/* 81488F60 | 7C 75 1B 78 */	mr r21, r3
/* 81488F64 | 7C 96 23 78 */	mr r22, r4
/* 81488F68 | 7C D8 33 78 */	mr r24, r6
/* 81488F6C | 7E E3 BB 78 */	mr r3, r23
/* 81488F70 | 3B 87 3A 78 */	addi r28, r7, 0x3a78
/* 81488F74 | 3B 67 39 78 */	addi r27, r7, 0x3978
/* 81488F78 | 48 17 BA 39 */	bl atoi
/* 81488F7C | 38 00 FF FF */	li r0, -0x1
/* 81488F80 | 7C 79 1B 78 */	mr r25, r3
/* 81488F84 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81488F88 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488F8C | 38 81 00 40 */	addi r4, r1, 0x40
/* 81488F90 | 38 A0 00 0C */	li r5, 0xc
/* 81488F94 | 48 00 5D 01 */	bl CDBIntArrayInit
/* 81488F98 | 80 16 00 14 */	lwz r0, 0x14(r22)
/* 81488F9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81488FA0 | 40 82 00 14 */	bne .L_81488FB4
/* 81488FA4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81488FA8 | 48 00 5D 09 */	bl CDBIntArraySetReverse
/* 81488FAC | 38 00 00 0C */	li r0, 0xc
/* 81488FB0 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_81488FB4:
/* 81488FB4 | 57 1E 07 FE */	clrlwi r30, r24, 31
/* 81488FB8 | 57 1D 07 BC */	rlwinm r29, r24, 0, 30, 30
/* 81488FBC | 3B 40 00 00 */	li r26, 0x0
/* 81488FC0 | 3B E0 00 00 */	li r31, 0x0
/* 81488FC4 | 48 00 03 1C */	b .L_814892E0
.L_81488FC8:
/* 81488FC8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81488FCC | 93 E1 00 18 */	stw r31, 0x18(r1)
/* 81488FD0 | 3B 40 00 01 */	li r26, 0x1
/* 81488FD4 | 41 82 00 B8 */	beq .L_8148908C
/* 81488FD8 | 7F 63 DB 78 */	mr r3, r27
/* 81488FDC | 7E E4 BB 78 */	mr r4, r23
/* 81488FE0 | 38 A0 00 01 */	li r5, 0x1
/* 81488FE4 | 38 C0 00 00 */	li r6, 0x0
/* 81488FE8 | 4B FF D7 9D */	bl CDBConvYearStrToFullPath
/* 81488FEC | 7F 83 E3 78 */	mr r3, r28
/* 81488FF0 | 7F 64 DB 78 */	mr r4, r27
/* 81488FF4 | 38 A0 00 01 */	li r5, 0x1
/* 81488FF8 | 48 00 22 89 */	bl CDBFSFindFirst
/* 81488FFC | 48 00 00 78 */	b .L_81489074
.L_81489000:
/* 81489000 | 7F 83 E3 78 */	mr r3, r28
/* 81489004 | 48 00 21 61 */	bl CDBFindDataIsDirectory
/* 81489008 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148900C | 41 82 00 60 */	beq .L_8148906C
/* 81489010 | 7F 83 E3 78 */	mr r3, r28
/* 81489014 | 48 00 21 35 */	bl CDBFindDataGetName
/* 81489018 | 48 00 14 CD */	bl CDBFSIsMonthDirName
/* 8148901C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489020 | 41 82 00 4C */	beq .L_8148906C
/* 81489024 | 7F 83 E3 78 */	mr r3, r28
/* 81489028 | 48 00 21 21 */	bl CDBFindDataGetName
/* 8148902C | 48 17 B9 85 */	bl atoi
/* 81489030 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81489034 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81489038 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8148903C | 48 00 5C 2D */	bl CDBIntCompare
/* 81489040 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81489044 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 81489048 | 40 81 00 24 */	ble .L_8148906C
/* 8148904C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489050 | 48 00 5C 95 */	bl CDBIntArrayFull
/* 81489054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489058 | 41 82 00 08 */	beq .L_81489060
/* 8148905C | 3B 40 00 00 */	li r26, 0x0
.L_81489060:
/* 81489060 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489064 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81489068 | 48 00 5D A5 */	bl CDBIntArrayDicInsert
.L_8148906C:
/* 8148906C | 7F 83 E3 78 */	mr r3, r28
/* 81489070 | 48 00 22 2D */	bl CDBFSFindNext
.L_81489074:
/* 81489074 | 7F 83 E3 78 */	mr r3, r28
/* 81489078 | 48 00 21 09 */	bl CDBFindDataIsEnd
/* 8148907C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489080 | 41 82 FF 80 */	beq .L_81489000
/* 81489084 | 7F 83 E3 78 */	mr r3, r28
/* 81489088 | 48 00 22 31 */	bl CDBFSFindClose
.L_8148908C:
/* 8148908C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81489090 | 41 82 00 D8 */	beq .L_81489168
/* 81489094 | 7F 63 DB 78 */	mr r3, r27
/* 81489098 | 7E E4 BB 78 */	mr r4, r23
/* 8148909C | 38 D6 00 28 */	addi r6, r22, 0x28
/* 814890A0 | 38 A0 00 02 */	li r5, 0x2
/* 814890A4 | 4B FF D6 E1 */	bl CDBConvYearStrToFullPath
/* 814890A8 | 7F 83 E3 78 */	mr r3, r28
/* 814890AC | 7F 64 DB 78 */	mr r4, r27
/* 814890B0 | 38 A0 00 02 */	li r5, 0x2
/* 814890B4 | 48 00 21 CD */	bl CDBFSFindFirst
/* 814890B8 | 48 00 00 98 */	b .L_81489150
.L_814890BC:
/* 814890BC | 7F 83 E3 78 */	mr r3, r28
/* 814890C0 | 48 00 20 A5 */	bl CDBFindDataIsDirectory
/* 814890C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814890C8 | 41 82 00 80 */	beq .L_81489148
/* 814890CC | 7F 83 E3 78 */	mr r3, r28
/* 814890D0 | 48 00 20 79 */	bl CDBFindDataGetName
/* 814890D4 | 48 00 14 11 */	bl CDBFSIsMonthDirName
/* 814890D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814890DC | 41 82 00 6C */	beq .L_81489148
/* 814890E0 | 7F 83 E3 78 */	mr r3, r28
/* 814890E4 | 48 00 20 65 */	bl CDBFindDataGetName
/* 814890E8 | 48 17 B8 C9 */	bl atoi
/* 814890EC | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814890F0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814890F4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814890F8 | 48 00 5B 71 */	bl CDBIntCompare
/* 814890FC | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81489100 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 81489104 | 40 81 00 44 */	ble .L_81489148
/* 81489108 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148910C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81489110 | 48 00 60 E9 */	bl CDBIntArrayDicFind
/* 81489114 | 7C 74 1B 78 */	mr r20, r3
/* 81489118 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148911C | 48 00 5B E5 */	bl CDBIntArrayEnd
/* 81489120 | 7C 14 18 40 */	cmplw r20, r3
/* 81489124 | 40 82 00 24 */	bne .L_81489148
/* 81489128 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148912C | 48 00 5B B9 */	bl CDBIntArrayFull
/* 81489130 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489134 | 41 82 00 08 */	beq .L_8148913C
/* 81489138 | 3B 40 00 00 */	li r26, 0x0
.L_8148913C:
/* 8148913C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489140 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81489144 | 48 00 5C C9 */	bl CDBIntArrayDicInsert
.L_81489148:
/* 81489148 | 7F 83 E3 78 */	mr r3, r28
/* 8148914C | 48 00 21 51 */	bl CDBFSFindNext
.L_81489150:
/* 81489150 | 7F 83 E3 78 */	mr r3, r28
/* 81489154 | 48 00 20 2D */	bl CDBFindDataIsEnd
/* 81489158 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148915C | 41 82 FF 60 */	beq .L_814890BC
/* 81489160 | 7F 83 E3 78 */	mr r3, r28
/* 81489164 | 48 00 21 55 */	bl CDBFSFindClose
.L_81489168:
/* 81489168 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148916C | 48 00 5B 69 */	bl CDBIntArrayEmpty
/* 81489170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489174 | 40 82 01 74 */	bne .L_814892E8
/* 81489178 | 80 16 00 14 */	lwz r0, 0x14(r22)
/* 8148917C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81489180 | 40 82 00 B4 */	bne .L_81489234
/* 81489184 | 3A 60 00 00 */	li r19, 0x0
/* 81489188 | 48 00 00 98 */	b .L_81489220
.L_8148918C:
/* 8148918C | 7E 64 9B 78 */	mr r4, r19
/* 81489190 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489194 | 48 00 5B 31 */	bl CDBIntArrayAt
/* 81489198 | 7C 74 1B 78 */	mr r20, r3
/* 8148919C | 7F 23 CB 78 */	mr r3, r25
/* 814891A0 | 80 94 00 00 */	lwz r4, 0x0(r20)
/* 814891A4 | 4B FF D2 D1 */	bl CDBMakeCDBDateMonthEnd
/* 814891A8 | 80 16 00 00 */	lwz r0, 0x0(r22)
/* 814891AC | 7C 03 00 40 */	cmplw r3, r0
/* 814891B0 | 41 80 00 60 */	blt .L_81489210
/* 814891B4 | 80 94 00 00 */	lwz r4, 0x0(r20)
/* 814891B8 | 7F 23 CB 78 */	mr r3, r25
/* 814891BC | 4B FF D2 55 */	bl CDBMakeCDBDateMonthBegin
/* 814891C0 | 80 16 00 04 */	lwz r0, 0x4(r22)
/* 814891C4 | 7C 00 18 40 */	cmplw r0, r3
/* 814891C8 | 41 80 00 48 */	blt .L_81489210
/* 814891CC | 80 94 00 00 */	lwz r4, 0x0(r20)
/* 814891D0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814891D4 | 4B FF D4 8D */	bl CDBConvMonthValueToMonthStr
/* 814891D8 | 7E A3 AB 78 */	mr r3, r21
/* 814891DC | 7E C4 B3 78 */	mr r4, r22
/* 814891E0 | 7E E5 BB 78 */	mr r5, r23
/* 814891E4 | 7F 07 C3 78 */	mr r7, r24
/* 814891E8 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 814891EC | 4B FF F9 69 */	bl CDBDatabaseSearchDayLayer
/* 814891F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814891F4 | 41 82 00 08 */	beq .L_814891FC
/* 814891F8 | 48 00 00 F4 */	b .L_814892EC
.L_814891FC:
/* 814891FC | 80 16 00 20 */	lwz r0, 0x20(r22)
/* 81489200 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81489204 | 40 82 00 0C */	bne .L_81489210
/* 81489208 | 38 60 00 00 */	li r3, 0x0
/* 8148920C | 48 00 00 E0 */	b .L_814892EC
.L_81489210:
/* 81489210 | 7E 84 A3 78 */	mr r4, r20
/* 81489214 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81489218 | 48 00 5A 45 */	bl CDBIntCopy
/* 8148921C | 3A 73 00 01 */	addi r19, r19, 0x1
.L_81489220:
/* 81489220 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489224 | 48 00 5A 99 */	bl CDBIntArraySize
/* 81489228 | 7C 13 18 00 */	cmpw r19, r3
/* 8148922C | 41 80 FF 60 */	blt .L_8148918C
/* 81489230 | 48 00 00 B0 */	b .L_814892E0
.L_81489234:
/* 81489234 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489238 | 48 00 5A 85 */	bl CDBIntArraySize
/* 8148923C | 3A 83 FF FF */	subi r20, r3, 0x1
/* 81489240 | 48 00 00 98 */	b .L_814892D8
.L_81489244:
/* 81489244 | 7E 84 A3 78 */	mr r4, r20
/* 81489248 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148924C | 48 00 5A 79 */	bl CDBIntArrayAt
/* 81489250 | 7C 73 1B 78 */	mr r19, r3
/* 81489254 | 7F 23 CB 78 */	mr r3, r25
/* 81489258 | 80 93 00 00 */	lwz r4, 0x0(r19)
/* 8148925C | 4B FF D2 19 */	bl CDBMakeCDBDateMonthEnd
/* 81489260 | 80 16 00 00 */	lwz r0, 0x0(r22)
/* 81489264 | 7C 03 00 40 */	cmplw r3, r0
/* 81489268 | 41 80 00 60 */	blt .L_814892C8
/* 8148926C | 80 93 00 00 */	lwz r4, 0x0(r19)
/* 81489270 | 7F 23 CB 78 */	mr r3, r25
/* 81489274 | 4B FF D1 9D */	bl CDBMakeCDBDateMonthBegin
/* 81489278 | 80 16 00 04 */	lwz r0, 0x4(r22)
/* 8148927C | 7C 00 18 40 */	cmplw r0, r3
/* 81489280 | 41 80 00 48 */	blt .L_814892C8
/* 81489284 | 80 93 00 00 */	lwz r4, 0x0(r19)
/* 81489288 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8148928C | 4B FF D3 D5 */	bl CDBConvMonthValueToMonthStr
/* 81489290 | 7E A3 AB 78 */	mr r3, r21
/* 81489294 | 7E C4 B3 78 */	mr r4, r22
/* 81489298 | 7E E5 BB 78 */	mr r5, r23
/* 8148929C | 7F 07 C3 78 */	mr r7, r24
/* 814892A0 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 814892A4 | 4B FF F8 B1 */	bl CDBDatabaseSearchDayLayer
/* 814892A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814892AC | 41 82 00 08 */	beq .L_814892B4
/* 814892B0 | 48 00 00 3C */	b .L_814892EC
.L_814892B4:
/* 814892B4 | 80 16 00 20 */	lwz r0, 0x20(r22)
/* 814892B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814892BC | 40 82 00 0C */	bne .L_814892C8
/* 814892C0 | 38 60 00 00 */	li r3, 0x0
/* 814892C4 | 48 00 00 28 */	b .L_814892EC
.L_814892C8:
/* 814892C8 | 7E 64 9B 78 */	mr r4, r19
/* 814892CC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814892D0 | 48 00 59 8D */	bl CDBIntCopy
/* 814892D4 | 3A 94 FF FF */	subi r20, r20, 0x1
.L_814892D8:
/* 814892D8 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814892DC | 40 80 FF 68 */	bge .L_81489244
.L_814892E0:
/* 814892E0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814892E4 | 41 82 FC E4 */	beq .L_81488FC8
.L_814892E8:
/* 814892E8 | 38 60 00 00 */	li r3, 0x0
.L_814892EC:
/* 814892EC | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 814892F0 | 48 17 01 FD */	bl _restgpr_19
/* 814892F4 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814892F8 | 7C 08 03 A6 */	mtlr r0
/* 814892FC | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 81489300 | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearchMonthLayer

# .text:0x1F64 | 0x81489304 | size: 0x378
.fn CDBDatabaseSearchYearLayer, global
/* 81489304 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81489308 | 7C 08 02 A6 */	mflr r0
/* 8148930C | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81489310 | 39 61 00 90 */	addi r11, r1, 0x90
/* 81489314 | 48 17 01 99 */	bl _savegpr_22
/* 81489318 | 80 CD AD 4C */	lwz r6, lbl_81698D8C@sda21(r0)
/* 8148931C | 7C 60 20 39 */	and. r0, r3, r4
/* 81489320 | 7C 78 1B 78 */	mr r24, r3
/* 81489324 | 7C 99 23 78 */	mr r25, r4
/* 81489328 | 7C BA 2B 78 */	mr r26, r5
/* 8148932C | 3B 86 43 0C */	addi r28, r6, 0x430c
/* 81489330 | 40 82 00 0C */	bne .L_8148933C
/* 81489334 | 38 60 00 01 */	li r3, 0x1
/* 81489338 | 48 00 03 2C */	b .L_81489664
.L_8148933C:
/* 8148933C | 38 00 00 00 */	li r0, 0x0
/* 81489340 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489344 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81489348 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8148934C | 38 A0 00 08 */	li r5, 0x8
/* 81489350 | 48 00 59 45 */	bl CDBIntArrayInit
/* 81489354 | 80 19 00 14 */	lwz r0, 0x14(r25)
/* 81489358 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148935C | 40 82 00 14 */	bne .L_81489370
/* 81489360 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489364 | 48 00 59 4D */	bl CDBIntArraySetReverse
/* 81489368 | 38 00 27 0F */	li r0, 0x270f
/* 8148936C | 90 01 00 08 */	stw r0, 0x8(r1)
.L_81489370:
/* 81489370 | 57 5E 07 FE */	clrlwi r30, r26, 31
/* 81489374 | 57 5D 07 BC */	rlwinm r29, r26, 0, 30, 30
/* 81489378 | 3B 60 00 00 */	li r27, 0x0
/* 8148937C | 3B E0 00 00 */	li r31, 0x0
/* 81489380 | 48 00 02 D8 */	b .L_81489658
.L_81489384:
/* 81489384 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81489388 | 93 E1 00 18 */	stw r31, 0x18(r1)
/* 8148938C | 3B 60 00 01 */	li r27, 0x1
/* 81489390 | 41 82 00 A0 */	beq .L_81489430
/* 81489394 | 7F 83 E3 78 */	mr r3, r28
/* 81489398 | 38 80 00 01 */	li r4, 0x1
/* 8148939C | 48 00 1E 11 */	bl CDBFSFindFirstRoot
/* 814893A0 | 48 00 00 78 */	b .L_81489418
.L_814893A4:
/* 814893A4 | 7F 83 E3 78 */	mr r3, r28
/* 814893A8 | 48 00 1D BD */	bl CDBFindDataIsDirectory
/* 814893AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814893B0 | 41 82 00 60 */	beq .L_81489410
/* 814893B4 | 7F 83 E3 78 */	mr r3, r28
/* 814893B8 | 48 00 1D 91 */	bl CDBFindDataGetName
/* 814893BC | 48 00 0F A5 */	bl CDBFSIsYearDirName
/* 814893C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814893C4 | 41 82 00 4C */	beq .L_81489410
/* 814893C8 | 7F 83 E3 78 */	mr r3, r28
/* 814893CC | 48 00 1D 7D */	bl CDBFindDataGetName
/* 814893D0 | 48 17 B5 E1 */	bl atoi
/* 814893D4 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814893D8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814893DC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814893E0 | 48 00 58 89 */	bl CDBIntCompare
/* 814893E4 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 814893E8 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 814893EC | 40 81 00 24 */	ble .L_81489410
/* 814893F0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814893F4 | 48 00 58 F1 */	bl CDBIntArrayFull
/* 814893F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814893FC | 41 82 00 08 */	beq .L_81489404
/* 81489400 | 3B 60 00 00 */	li r27, 0x0
.L_81489404:
/* 81489404 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489408 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8148940C | 48 00 5A 01 */	bl CDBIntArrayDicInsert
.L_81489410:
/* 81489410 | 7F 83 E3 78 */	mr r3, r28
/* 81489414 | 48 00 1E 89 */	bl CDBFSFindNext
.L_81489418:
/* 81489418 | 7F 83 E3 78 */	mr r3, r28
/* 8148941C | 48 00 1D 65 */	bl CDBFindDataIsEnd
/* 81489420 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489424 | 41 82 FF 80 */	beq .L_814893A4
/* 81489428 | 7F 83 E3 78 */	mr r3, r28
/* 8148942C | 48 00 1E 8D */	bl CDBFSFindClose
.L_81489430:
/* 81489430 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81489434 | 41 82 00 C4 */	beq .L_814894F8
/* 81489438 | 7F 83 E3 78 */	mr r3, r28
/* 8148943C | 38 B9 00 28 */	addi r5, r25, 0x28
/* 81489440 | 38 80 00 02 */	li r4, 0x2
/* 81489444 | 48 00 1D D5 */	bl CDBFSFindFirstRootEx
/* 81489448 | 48 00 00 98 */	b .L_814894E0
.L_8148944C:
/* 8148944C | 7F 83 E3 78 */	mr r3, r28
/* 81489450 | 48 00 1D 15 */	bl CDBFindDataIsDirectory
/* 81489454 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489458 | 41 82 00 80 */	beq .L_814894D8
/* 8148945C | 7F 83 E3 78 */	mr r3, r28
/* 81489460 | 48 00 1C E9 */	bl CDBFindDataGetName
/* 81489464 | 48 00 0E FD */	bl CDBFSIsYearDirName
/* 81489468 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148946C | 41 82 00 6C */	beq .L_814894D8
/* 81489470 | 7F 83 E3 78 */	mr r3, r28
/* 81489474 | 48 00 1C D5 */	bl CDBFindDataGetName
/* 81489478 | 48 17 B5 39 */	bl atoi
/* 8148947C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81489480 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81489484 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81489488 | 48 00 57 E1 */	bl CDBIntCompare
/* 8148948C | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81489490 | 7C 00 19 D7 */	mullw. r0, r0, r3
/* 81489494 | 40 81 00 44 */	ble .L_814894D8
/* 81489498 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148949C | 38 81 00 0C */	addi r4, r1, 0xc
/* 814894A0 | 48 00 5D 59 */	bl CDBIntArrayDicFind
/* 814894A4 | 7C 77 1B 78 */	mr r23, r3
/* 814894A8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814894AC | 48 00 58 55 */	bl CDBIntArrayEnd
/* 814894B0 | 7C 17 18 40 */	cmplw r23, r3
/* 814894B4 | 40 82 00 24 */	bne .L_814894D8
/* 814894B8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814894BC | 48 00 58 29 */	bl CDBIntArrayFull
/* 814894C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814894C4 | 41 82 00 08 */	beq .L_814894CC
/* 814894C8 | 3B 60 00 00 */	li r27, 0x0
.L_814894CC:
/* 814894CC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814894D0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814894D4 | 48 00 59 39 */	bl CDBIntArrayDicInsert
.L_814894D8:
/* 814894D8 | 7F 83 E3 78 */	mr r3, r28
/* 814894DC | 48 00 1D C1 */	bl CDBFSFindNext
.L_814894E0:
/* 814894E0 | 7F 83 E3 78 */	mr r3, r28
/* 814894E4 | 48 00 1C 9D */	bl CDBFindDataIsEnd
/* 814894E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814894EC | 41 82 FF 60 */	beq .L_8148944C
/* 814894F0 | 7F 83 E3 78 */	mr r3, r28
/* 814894F4 | 48 00 1D C5 */	bl CDBFSFindClose
.L_814894F8:
/* 814894F8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814894FC | 48 00 57 D9 */	bl CDBIntArrayEmpty
/* 81489500 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489504 | 40 82 01 5C */	bne .L_81489660
/* 81489508 | 80 19 00 14 */	lwz r0, 0x14(r25)
/* 8148950C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81489510 | 40 82 00 A8 */	bne .L_814895B8
/* 81489514 | 3A C0 00 00 */	li r22, 0x0
/* 81489518 | 48 00 00 8C */	b .L_814895A4
.L_8148951C:
/* 8148951C | 7E C4 B3 78 */	mr r4, r22
/* 81489520 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489524 | 48 00 57 A1 */	bl CDBIntArrayAt
/* 81489528 | 7C 77 1B 78 */	mr r23, r3
/* 8148952C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81489530 | 4B FF D0 B1 */	bl CDBMakeCDBDateYearEnd
/* 81489534 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 81489538 | 7C 03 00 40 */	cmplw r3, r0
/* 8148953C | 41 80 00 58 */	blt .L_81489594
/* 81489540 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 81489544 | 4B FF D0 39 */	bl CDBMakeCDBDateYearBegin
/* 81489548 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 8148954C | 7C 00 18 40 */	cmplw r0, r3
/* 81489550 | 41 80 00 44 */	blt .L_81489594
/* 81489554 | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 81489558 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8148955C | 4B FF D0 F5 */	bl CDBConvYearValueToYearStr
/* 81489560 | 7F 03 C3 78 */	mr r3, r24
/* 81489564 | 7F 24 CB 78 */	mr r4, r25
/* 81489568 | 7F 46 D3 78 */	mr r6, r26
/* 8148956C | 38 A1 00 40 */	addi r5, r1, 0x40
/* 81489570 | 4B FF F9 D5 */	bl CDBDatabaseSearchMonthLayer
/* 81489574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489578 | 41 82 00 08 */	beq .L_81489580
/* 8148957C | 48 00 00 E8 */	b .L_81489664
.L_81489580:
/* 81489580 | 80 19 00 20 */	lwz r0, 0x20(r25)
/* 81489584 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81489588 | 40 82 00 0C */	bne .L_81489594
/* 8148958C | 38 60 00 00 */	li r3, 0x0
/* 81489590 | 48 00 00 D4 */	b .L_81489664
.L_81489594:
/* 81489594 | 7E E4 BB 78 */	mr r4, r23
/* 81489598 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8148959C | 48 00 56 C1 */	bl CDBIntCopy
/* 814895A0 | 3A D6 00 01 */	addi r22, r22, 0x1
.L_814895A4:
/* 814895A4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814895A8 | 48 00 57 15 */	bl CDBIntArraySize
/* 814895AC | 7C 16 18 00 */	cmpw r22, r3
/* 814895B0 | 41 80 FF 6C */	blt .L_8148951C
/* 814895B4 | 48 00 00 A4 */	b .L_81489658
.L_814895B8:
/* 814895B8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814895BC | 48 00 57 01 */	bl CDBIntArraySize
/* 814895C0 | 3A E3 FF FF */	subi r23, r3, 0x1
/* 814895C4 | 48 00 00 8C */	b .L_81489650
.L_814895C8:
/* 814895C8 | 7E E4 BB 78 */	mr r4, r23
/* 814895CC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814895D0 | 48 00 56 F5 */	bl CDBIntArrayAt
/* 814895D4 | 7C 76 1B 78 */	mr r22, r3
/* 814895D8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814895DC | 4B FF D0 05 */	bl CDBMakeCDBDateYearEnd
/* 814895E0 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 814895E4 | 7C 03 00 40 */	cmplw r3, r0
/* 814895E8 | 41 80 00 58 */	blt .L_81489640
/* 814895EC | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 814895F0 | 4B FF CF 8D */	bl CDBMakeCDBDateYearBegin
/* 814895F4 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814895F8 | 7C 00 18 40 */	cmplw r0, r3
/* 814895FC | 41 80 00 44 */	blt .L_81489640
/* 81489600 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81489604 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81489608 | 4B FF D0 49 */	bl CDBConvYearValueToYearStr
/* 8148960C | 7F 03 C3 78 */	mr r3, r24
/* 81489610 | 7F 24 CB 78 */	mr r4, r25
/* 81489614 | 7F 46 D3 78 */	mr r6, r26
/* 81489618 | 38 A1 00 40 */	addi r5, r1, 0x40
/* 8148961C | 4B FF F9 29 */	bl CDBDatabaseSearchMonthLayer
/* 81489620 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489624 | 41 82 00 08 */	beq .L_8148962C
/* 81489628 | 48 00 00 3C */	b .L_81489664
.L_8148962C:
/* 8148962C | 80 19 00 20 */	lwz r0, 0x20(r25)
/* 81489630 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81489634 | 40 82 00 0C */	bne .L_81489640
/* 81489638 | 38 60 00 00 */	li r3, 0x0
/* 8148963C | 48 00 00 28 */	b .L_81489664
.L_81489640:
/* 81489640 | 7E C4 B3 78 */	mr r4, r22
/* 81489644 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81489648 | 48 00 56 15 */	bl CDBIntCopy
/* 8148964C | 3A F7 FF FF */	subi r23, r23, 0x1
.L_81489650:
/* 81489650 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 81489654 | 40 80 FF 74 */	bge .L_814895C8
.L_81489658:
/* 81489658 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8148965C | 41 82 FD 28 */	beq .L_81489384
.L_81489660:
/* 81489660 | 38 60 00 00 */	li r3, 0x0
.L_81489664:
/* 81489664 | 39 61 00 90 */	addi r11, r1, 0x90
/* 81489668 | 48 16 FE 91 */	bl _restgpr_22
/* 8148966C | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 81489670 | 7C 08 03 A6 */	mtlr r0
/* 81489674 | 38 21 00 90 */	addi r1, r1, 0x90
/* 81489678 | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearchYearLayer

# .text:0x22DC | 0x8148967C | size: 0xA0
.fn CDBDatabaseSearch, global
/* 8148967C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81489680 | 7C 08 02 A6 */	mflr r0
/* 81489684 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81489688 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8148968C | 48 16 FE 1D */	bl _savegpr_21
/* 81489690 | 83 A1 00 58 */	lwz r29, 0x58(r1)
/* 81489694 | 7C 75 1B 78 */	mr r21, r3
/* 81489698 | 83 C1 00 5C */	lwz r30, 0x5c(r1)
/* 8148969C | 7C 96 23 78 */	mr r22, r4
/* 814896A0 | 83 E1 00 60 */	lwz r31, 0x60(r1)
/* 814896A4 | 7C B7 2B 78 */	mr r23, r5
/* 814896A8 | 7C D8 33 78 */	mr r24, r6
/* 814896AC | 7C F9 3B 78 */	mr r25, r7
/* 814896B0 | 7D 1A 43 78 */	mr r26, r8
/* 814896B4 | 7D 3B 4B 78 */	mr r27, r9
/* 814896B8 | 7D 5C 53 78 */	mr r28, r10
/* 814896BC | 48 00 5B C1 */	bl CDBLock
/* 814896C0 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 814896C4 | 38 00 00 00 */	li r0, 0x0
/* 814896C8 | 7E A3 AB 78 */	mr r3, r21
/* 814896CC | 7E C4 B3 78 */	mr r4, r22
/* 814896D0 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 814896D4 | 7E E5 BB 78 */	mr r5, r23
/* 814896D8 | 7F 06 C3 78 */	mr r6, r24
/* 814896DC | 7F 27 CB 78 */	mr r7, r25
/* 814896E0 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 814896E4 | 7F 48 D3 78 */	mr r8, r26
/* 814896E8 | 7F 69 DB 78 */	mr r9, r27
/* 814896EC | 7F 8A E3 78 */	mr r10, r28
/* 814896F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814896F4 | 48 00 00 29 */	bl CDBDatabaseSearch_
/* 814896F8 | 7C 7F 1B 78 */	mr r31, r3
/* 814896FC | 48 00 5B 8D */	bl CDBUnlock
/* 81489700 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81489704 | 7F E3 FB 78 */	mr r3, r31
/* 81489708 | 48 16 FD ED */	bl _restgpr_21
/* 8148970C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81489710 | 7C 08 03 A6 */	mtlr r0
/* 81489714 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81489718 | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearch

# .text:0x237C | 0x8148971C | size: 0xD4
.fn CDBDatabaseSearch_, global
/* 8148971C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81489720 | 7C 08 02 A6 */	mflr r0
/* 81489724 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81489728 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8148972C | 48 16 FD 89 */	bl _savegpr_24
/* 81489730 | 7C 04 28 40 */	cmplw r4, r5
/* 81489734 | 83 81 00 68 */	lwz r28, 0x68(r1)
/* 81489738 | 83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 8148973C | 7C 78 1B 78 */	mr r24, r3
/* 81489740 | 83 C1 00 70 */	lwz r30, 0x70(r1)
/* 81489744 | 7D 19 43 78 */	mr r25, r8
/* 81489748 | 83 E1 00 74 */	lwz r31, 0x74(r1)
/* 8148974C | 7D 3A 4B 78 */	mr r26, r9
/* 81489750 | 7D 5B 53 78 */	mr r27, r10
/* 81489754 | 40 80 00 10 */	bge .L_81489764
/* 81489758 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8148975C | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 81489760 | 48 00 00 0C */	b .L_8148976C
.L_81489764:
/* 81489764 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81489768 | 90 81 00 0C */	stw r4, 0xc(r1)
.L_8148976C:
/* 8148976C | 90 C1 00 1C */	stw r6, 0x1c(r1)
/* 81489770 | 7C E3 3B 78 */	mr r3, r7
/* 81489774 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81489778 | 4B FF D5 09 */	bl CDBConvMCStrToMCValue
/* 8148977C | 7F 23 CB 78 */	mr r3, r25
/* 81489780 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81489784 | 4B FF D4 35 */	bl CDBConvGCStrToGCValue
/* 81489788 | 38 00 00 01 */	li r0, 0x1
/* 8148978C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81489790 | 93 41 00 18 */	stw r26, 0x18(r1)
/* 81489794 | 93 A1 00 20 */	stw r29, 0x20(r1)
/* 81489798 | 93 C1 00 24 */	stw r30, 0x24(r1)
/* 8148979C | 90 01 00 28 */	stw r0, 0x28(r1)
/* 814897A0 | 93 81 00 2C */	stw r28, 0x2c(r1)
/* 814897A4 | 40 82 00 14 */	bne .L_814897B8
/* 814897A8 | 38 00 00 00 */	li r0, 0x0
/* 814897AC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814897B0 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 814897B4 | 48 00 00 14 */	b .L_814897C8
.L_814897B8:
/* 814897B8 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814897BC | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814897C0 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 814897C4 | 90 01 00 30 */	stw r0, 0x30(r1)
.L_814897C8:
/* 814897C8 | 7F 03 C3 78 */	mr r3, r24
/* 814897CC | 7F 65 DB 78 */	mr r5, r27
/* 814897D0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814897D4 | 4B FF FB 31 */	bl CDBDatabaseSearchYearLayer
/* 814897D8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814897DC | 48 16 FD 25 */	bl _restgpr_24
/* 814897E0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814897E4 | 7C 08 03 A6 */	mtlr r0
/* 814897E8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814897EC | 4E 80 00 20 */	blr
.endfn CDBDatabaseSearch_

# .text:0x2450 | 0x814897F0 | size: 0x18
.fn CDBDatabaseInstanceInit, global
/* 814897F0 | 3C C3 00 01 */	addis r6, r3, 0x1
/* 814897F4 | 38 00 00 01 */	li r0, 0x1
/* 814897F8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814897FC | 90 86 C0 10 */	stw r4, -0x3ff0(r6)
/* 81489800 | 90 A6 C0 14 */	stw r5, -0x3fec(r6)
/* 81489804 | 4E 80 00 20 */	blr
.endfn CDBDatabaseInstanceInit

# .text:0x2468 | 0x81489808 | size: 0x8
.fn CDBDatabaseInstanceIsUsed, global
/* 81489808 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8148980C | 4E 80 00 20 */	blr
.endfn CDBDatabaseInstanceIsUsed

# .text:0x2470 | 0x81489810 | size: 0x48
.fn CDBIsSDAvailable, global
/* 81489810 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81489814 | 7C 08 02 A6 */	mflr r0
/* 81489818 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8148981C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81489820 | 3B E0 00 00 */	li r31, 0x0
/* 81489824 | 48 00 27 19 */	bl CDBFSSDIsMounted
/* 81489828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148982C | 41 82 00 14 */	beq .L_81489840
/* 81489830 | 48 00 27 1D */	bl CDBFSSDIsEjected
/* 81489834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489838 | 40 82 00 08 */	bne .L_81489840
/* 8148983C | 3B E0 00 01 */	li r31, 0x1
.L_81489840:
/* 81489840 | 7F E3 FB 78 */	mr r3, r31
/* 81489844 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81489848 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148984C | 7C 08 03 A6 */	mtlr r0
/* 81489850 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81489854 | 4E 80 00 20 */	blr
.endfn CDBIsSDAvailable

# .text:0x24B8 | 0x81489858 | size: 0x4
.fn CDBMountSD, global
/* 81489858 | 48 00 24 B0 */	b CDBFSSDMount
.endfn CDBMountSD

# .text:0x24BC | 0x8148985C | size: 0x34
.fn CDBUnmountSDForce, global
/* 8148985C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81489860 | 7C 08 02 A6 */	mflr r0
/* 81489864 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81489868 | 48 00 25 C1 */	bl CDBFSSDUnmount
/* 8148986C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489870 | 38 00 00 00 */	li r0, 0x0
/* 81489874 | 41 82 00 08 */	beq .L_8148987C
/* 81489878 | 7C 60 1B 78 */	mr r0, r3
.L_8148987C:
/* 8148987C | 7C 03 03 78 */	mr r3, r0
/* 81489880 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81489884 | 7C 08 03 A6 */	mtlr r0
/* 81489888 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8148988C | 4E 80 00 20 */	blr
.endfn CDBUnmountSDForce

# .text:0x24F0 | 0x81489890 | size: 0x10C
.fn CDBDatabaseCleanUpEmptyDirectoriesRecord, global
/* 81489890 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 81489894 | 7C 08 02 A6 */	mflr r0
/* 81489898 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 8148989C | 39 61 01 30 */	addi r11, r1, 0x130
/* 814898A0 | 48 16 FC 19 */	bl _savegpr_25
/* 814898A4 | 81 6D AD 4C */	lwz r11, lbl_81698D8C@sda21(r0)
/* 814898A8 | 7C 99 23 78 */	mr r25, r4
/* 814898AC | 83 A1 01 38 */	lwz r29, 0x138(r1)
/* 814898B0 | 7C BA 2B 78 */	mr r26, r5
/* 814898B4 | 80 01 01 3C */	lwz r0, 0x13c(r1)
/* 814898B8 | 7C DB 33 78 */	mr r27, r6
/* 814898BC | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 814898C0 | 7C FF 3B 78 */	mr r31, r7
/* 814898C4 | 7D 1E 43 78 */	mr r30, r8
/* 814898C8 | 7D 2C 4B 78 */	mr r12, r9
/* 814898CC | 7D 5C 53 78 */	mr r28, r10
/* 814898D0 | 7C 64 1B 78 */	mr r4, r3
/* 814898D4 | 7F E8 FB 78 */	mr r8, r31
/* 814898D8 | 7F C9 F3 78 */	mr r9, r30
/* 814898DC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814898E0 | 7F 25 CB 78 */	mr r5, r25
/* 814898E4 | 7F 46 D3 78 */	mr r6, r26
/* 814898E8 | 7F 67 DB 78 */	mr r7, r27
/* 814898EC | 7D 8A 63 78 */	mr r10, r12
/* 814898F0 | 3B CB 01 00 */	addi r30, r11, 0x100
/* 814898F4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814898F8 | 3B E0 00 00 */	li r31, 0x0
/* 814898FC | 4B FF D1 59 */	bl CDBConvTypeStrToFullPath
/* 81489900 | 7F C3 F3 78 */	mr r3, r30
/* 81489904 | 7F A5 EB 78 */	mr r5, r29
/* 81489908 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8148990C | 48 00 19 75 */	bl CDBFSFindFirst
/* 81489910 | 48 00 00 2C */	b .L_8148993C
.L_81489914:
/* 81489914 | 7F C3 F3 78 */	mr r3, r30
/* 81489918 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8148991C | 48 00 18 49 */	bl CDBFindDataIsDirectory
/* 81489920 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489924 | 41 82 00 10 */	beq .L_81489934
/* 81489928 | 7F C3 F3 78 */	mr r3, r30
/* 8148992C | 48 00 18 1D */	bl CDBFindDataGetName
/* 81489930 | 48 00 0E A9 */	bl CDBFSIsMinuteDirName
.L_81489934:
/* 81489934 | 7F C3 F3 78 */	mr r3, r30
/* 81489938 | 48 00 19 65 */	bl CDBFSFindNext
.L_8148993C:
/* 8148993C | 7F C3 F3 78 */	mr r3, r30
/* 81489940 | 48 00 18 41 */	bl CDBFindDataIsEnd
/* 81489944 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489948 | 41 82 FF CC */	beq .L_81489914
/* 8148994C | 7F C3 F3 78 */	mr r3, r30
/* 81489950 | 48 00 19 69 */	bl CDBFSFindClose
/* 81489954 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81489958 | 40 82 00 28 */	bne .L_81489980
/* 8148995C | 7F A4 EB 78 */	mr r4, r29
/* 81489960 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489964 | 48 00 19 71 */	bl CDBFSDeleteDir
/* 81489968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148996C | 41 82 00 08 */	beq .L_81489974
/* 81489970 | 48 00 00 14 */	b .L_81489984
.L_81489974:
/* 81489974 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81489978 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8148997C | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81489980:
/* 81489980 | 38 60 00 00 */	li r3, 0x0
.L_81489984:
/* 81489984 | 39 61 01 30 */	addi r11, r1, 0x130
/* 81489988 | 48 16 FB 7D */	bl _restgpr_25
/* 8148998C | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 81489990 | 7C 08 03 A6 */	mtlr r0
/* 81489994 | 38 21 01 30 */	addi r1, r1, 0x130
/* 81489998 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCleanUpEmptyDirectoriesRecord

# .text:0x25FC | 0x8148999C | size: 0x15C
.fn CDBDatabaseCleanUpEmptyDirectoriesType, global
/* 8148999C | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 814899A0 | 7C 08 02 A6 */	mflr r0
/* 814899A4 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 814899A8 | 39 61 01 40 */	addi r11, r1, 0x140
/* 814899AC | 48 16 FB 01 */	bl _savegpr_22
/* 814899B0 | 38 00 00 00 */	li r0, 0x0
/* 814899B4 | 81 6D AD 4C */	lwz r11, lbl_81698D8C@sda21(r0)
/* 814899B8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814899BC | 7C 76 1B 78 */	mr r22, r3
/* 814899C0 | 83 C1 01 48 */	lwz r30, 0x148(r1)
/* 814899C4 | 7C 97 23 78 */	mr r23, r4
/* 814899C8 | 7C B8 2B 78 */	mr r24, r5
/* 814899CC | 7C D9 33 78 */	mr r25, r6
/* 814899D0 | 7C FA 3B 78 */	mr r26, r7
/* 814899D4 | 7D 1B 43 78 */	mr r27, r8
/* 814899D8 | 7D 3C 4B 78 */	mr r28, r9
/* 814899DC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814899E0 | 7D 5D 53 78 */	mr r29, r10
/* 814899E4 | 7E C4 B3 78 */	mr r4, r22
/* 814899E8 | 7E E5 BB 78 */	mr r5, r23
/* 814899EC | 7F 06 C3 78 */	mr r6, r24
/* 814899F0 | 7F 27 CB 78 */	mr r7, r25
/* 814899F4 | 7F 48 D3 78 */	mr r8, r26
/* 814899F8 | 7F 69 DB 78 */	mr r9, r27
/* 814899FC | 3B EB 14 28 */	addi r31, r11, 0x1428
/* 81489A00 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81489A04 | 4B FF CF B5 */	bl CDBConvCodeStrToFullPath
/* 81489A08 | 7F E3 FB 78 */	mr r3, r31
/* 81489A0C | 7F A5 EB 78 */	mr r5, r29
/* 81489A10 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81489A14 | 48 00 18 6D */	bl CDBFSFindFirst
/* 81489A18 | 48 00 00 7C */	b .L_81489A94
.L_81489A1C:
/* 81489A1C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 81489A20 | 7F E3 FB 78 */	mr r3, r31
/* 81489A24 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81489A28 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81489A2C | 48 00 17 39 */	bl CDBFindDataIsDirectory
/* 81489A30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489A34 | 41 82 00 58 */	beq .L_81489A8C
/* 81489A38 | 7F E3 FB 78 */	mr r3, r31
/* 81489A3C | 48 00 17 0D */	bl CDBFindDataGetName
/* 81489A40 | 48 00 0E E5 */	bl CDBFSIsTypeDirName
/* 81489A44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489A48 | 41 82 00 44 */	beq .L_81489A8C
/* 81489A4C | 7F E3 FB 78 */	mr r3, r31
/* 81489A50 | 48 00 16 F9 */	bl CDBFindDataGetName
/* 81489A54 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 81489A58 | 7C 69 1B 78 */	mr r9, r3
/* 81489A5C | 7E C3 B3 78 */	mr r3, r22
/* 81489A60 | 7E E4 BB 78 */	mr r4, r23
/* 81489A64 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 81489A68 | 7F 05 C3 78 */	mr r5, r24
/* 81489A6C | 7F 26 CB 78 */	mr r6, r25
/* 81489A70 | 7F 47 D3 78 */	mr r7, r26
/* 81489A74 | 7F 68 DB 78 */	mr r8, r27
/* 81489A78 | 39 41 00 10 */	addi r10, r1, 0x10
/* 81489A7C | 4B FF FE 15 */	bl CDBDatabaseCleanUpEmptyDirectoriesRecord
/* 81489A80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489A84 | 41 82 00 08 */	beq .L_81489A8C
/* 81489A88 | 48 00 00 58 */	b .L_81489AE0
.L_81489A8C:
/* 81489A8C | 7F E3 FB 78 */	mr r3, r31
/* 81489A90 | 48 00 18 0D */	bl CDBFSFindNext
.L_81489A94:
/* 81489A94 | 7F E3 FB 78 */	mr r3, r31
/* 81489A98 | 48 00 16 E9 */	bl CDBFindDataIsEnd
/* 81489A9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489AA0 | 41 82 FF 7C */	beq .L_81489A1C
/* 81489AA4 | 7F E3 FB 78 */	mr r3, r31
/* 81489AA8 | 48 00 18 11 */	bl CDBFSFindClose
/* 81489AAC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81489AB0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81489AB4 | 40 82 00 28 */	bne .L_81489ADC
/* 81489AB8 | 7F A4 EB 78 */	mr r4, r29
/* 81489ABC | 38 61 00 18 */	addi r3, r1, 0x18
/* 81489AC0 | 48 00 18 15 */	bl CDBFSDeleteDir
/* 81489AC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489AC8 | 41 82 00 08 */	beq .L_81489AD0
/* 81489ACC | 48 00 00 14 */	b .L_81489AE0
.L_81489AD0:
/* 81489AD0 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81489AD4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81489AD8 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81489ADC:
/* 81489ADC | 38 60 00 00 */	li r3, 0x0
.L_81489AE0:
/* 81489AE0 | 39 61 01 40 */	addi r11, r1, 0x140
/* 81489AE4 | 48 16 FA 15 */	bl _restgpr_22
/* 81489AE8 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 81489AEC | 7C 08 03 A6 */	mtlr r0
/* 81489AF0 | 38 21 01 40 */	addi r1, r1, 0x140
/* 81489AF4 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCleanUpEmptyDirectoriesType

# .text:0x2758 | 0x81489AF8 | size: 0x14C
.fn CDBDatabaseCleanUpEmptyDirectoriesCode, global
/* 81489AF8 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 81489AFC | 7C 08 02 A6 */	mflr r0
/* 81489B00 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 81489B04 | 39 61 01 40 */	addi r11, r1, 0x140
/* 81489B08 | 48 16 F9 A9 */	bl _savegpr_23
/* 81489B0C | 81 6D AD 4C */	lwz r11, lbl_81698D8C@sda21(r0)
/* 81489B10 | 38 00 00 00 */	li r0, 0x0
/* 81489B14 | 7C 77 1B 78 */	mr r23, r3
/* 81489B18 | 7C 98 23 78 */	mr r24, r4
/* 81489B1C | 7C B9 2B 78 */	mr r25, r5
/* 81489B20 | 7C DA 33 78 */	mr r26, r6
/* 81489B24 | 7C FB 3B 78 */	mr r27, r7
/* 81489B28 | 7D 1C 43 78 */	mr r28, r8
/* 81489B2C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81489B30 | 7D 3D 4B 78 */	mr r29, r9
/* 81489B34 | 7D 5E 53 78 */	mr r30, r10
/* 81489B38 | 7E E4 BB 78 */	mr r4, r23
/* 81489B3C | 7F 05 C3 78 */	mr r5, r24
/* 81489B40 | 7F 26 CB 78 */	mr r6, r25
/* 81489B44 | 7F 47 D3 78 */	mr r7, r26
/* 81489B48 | 7F 68 DB 78 */	mr r8, r27
/* 81489B4C | 3B EB 0A 94 */	addi r31, r11, 0xa94
/* 81489B50 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81489B54 | 4B FF CD D9 */	bl CDBConvMinuteStrToFullPath
/* 81489B58 | 7F E3 FB 78 */	mr r3, r31
/* 81489B5C | 7F A5 EB 78 */	mr r5, r29
/* 81489B60 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81489B64 | 48 00 17 1D */	bl CDBFSFindFirst
/* 81489B68 | 48 00 00 78 */	b .L_81489BE0
.L_81489B6C:
/* 81489B6C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 81489B70 | 7F E3 FB 78 */	mr r3, r31
/* 81489B74 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81489B78 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81489B7C | 48 00 15 E9 */	bl CDBFindDataIsDirectory
/* 81489B80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489B84 | 41 82 00 54 */	beq .L_81489BD8
/* 81489B88 | 7F E3 FB 78 */	mr r3, r31
/* 81489B8C | 48 00 15 BD */	bl CDBFindDataGetName
/* 81489B90 | 48 00 0D 45 */	bl CDBFSIsCodeDirName
/* 81489B94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489B98 | 41 82 00 40 */	beq .L_81489BD8
/* 81489B9C | 7F E3 FB 78 */	mr r3, r31
/* 81489BA0 | 48 00 15 A9 */	bl CDBFindDataGetName
/* 81489BA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81489BA8 | 7C 68 1B 78 */	mr r8, r3
/* 81489BAC | 7E E3 BB 78 */	mr r3, r23
/* 81489BB0 | 7F 04 C3 78 */	mr r4, r24
/* 81489BB4 | 7F 25 CB 78 */	mr r5, r25
/* 81489BB8 | 7F 46 D3 78 */	mr r6, r26
/* 81489BBC | 7F 67 DB 78 */	mr r7, r27
/* 81489BC0 | 7F AA EB 78 */	mr r10, r29
/* 81489BC4 | 39 21 00 10 */	addi r9, r1, 0x10
/* 81489BC8 | 4B FF FD D5 */	bl CDBDatabaseCleanUpEmptyDirectoriesType
/* 81489BCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489BD0 | 41 82 00 08 */	beq .L_81489BD8
/* 81489BD4 | 48 00 00 58 */	b .L_81489C2C
.L_81489BD8:
/* 81489BD8 | 7F E3 FB 78 */	mr r3, r31
/* 81489BDC | 48 00 16 C1 */	bl CDBFSFindNext
.L_81489BE0:
/* 81489BE0 | 7F E3 FB 78 */	mr r3, r31
/* 81489BE4 | 48 00 15 9D */	bl CDBFindDataIsEnd
/* 81489BE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489BEC | 41 82 FF 80 */	beq .L_81489B6C
/* 81489BF0 | 7F E3 FB 78 */	mr r3, r31
/* 81489BF4 | 48 00 16 C5 */	bl CDBFSFindClose
/* 81489BF8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81489BFC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81489C00 | 40 82 00 28 */	bne .L_81489C28
/* 81489C04 | 7F A4 EB 78 */	mr r4, r29
/* 81489C08 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81489C0C | 48 00 16 C9 */	bl CDBFSDeleteDir
/* 81489C10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489C14 | 41 82 00 08 */	beq .L_81489C1C
/* 81489C18 | 48 00 00 14 */	b .L_81489C2C
.L_81489C1C:
/* 81489C1C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81489C20 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81489C24 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81489C28:
/* 81489C28 | 38 60 00 00 */	li r3, 0x0
.L_81489C2C:
/* 81489C2C | 39 61 01 40 */	addi r11, r1, 0x140
/* 81489C30 | 48 16 F8 CD */	bl _restgpr_23
/* 81489C34 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 81489C38 | 7C 08 03 A6 */	mtlr r0
/* 81489C3C | 38 21 01 40 */	addi r1, r1, 0x140
/* 81489C40 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCleanUpEmptyDirectoriesCode

# .text:0x28A4 | 0x81489C44 | size: 0x140
.fn CDBDatabaseCleanUpEmptyDirectoriesMinute, global
/* 81489C44 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 81489C48 | 7C 08 02 A6 */	mflr r0
/* 81489C4C | 90 01 01 34 */	stw r0, 0x134(r1)
/* 81489C50 | 39 61 01 30 */	addi r11, r1, 0x130
/* 81489C54 | 48 16 F8 61 */	bl _savegpr_24
/* 81489C58 | 81 4D AD 4C */	lwz r10, lbl_81698D8C@sda21(r0)
/* 81489C5C | 38 00 00 00 */	li r0, 0x0
/* 81489C60 | 7C 78 1B 78 */	mr r24, r3
/* 81489C64 | 7C 99 23 78 */	mr r25, r4
/* 81489C68 | 7C BA 2B 78 */	mr r26, r5
/* 81489C6C | 7C DB 33 78 */	mr r27, r6
/* 81489C70 | 7C FC 3B 78 */	mr r28, r7
/* 81489C74 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81489C78 | 7D 1D 43 78 */	mr r29, r8
/* 81489C7C | 7D 3E 4B 78 */	mr r30, r9
/* 81489C80 | 7F 04 C3 78 */	mr r4, r24
/* 81489C84 | 7F 25 CB 78 */	mr r5, r25
/* 81489C88 | 7F 46 D3 78 */	mr r6, r26
/* 81489C8C | 7F 67 DB 78 */	mr r7, r27
/* 81489C90 | 3B EA 1D BC */	addi r31, r10, 0x1dbc
/* 81489C94 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489C98 | 4B FF CC 19 */	bl CDBConvHourStrToFullPath
/* 81489C9C | 7F E3 FB 78 */	mr r3, r31
/* 81489CA0 | 7F A5 EB 78 */	mr r5, r29
/* 81489CA4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81489CA8 | 48 00 15 D9 */	bl CDBFSFindFirst
/* 81489CAC | 48 00 00 74 */	b .L_81489D20
.L_81489CB0:
/* 81489CB0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81489CB4 | 7F E3 FB 78 */	mr r3, r31
/* 81489CB8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81489CBC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81489CC0 | 48 00 14 A5 */	bl CDBFindDataIsDirectory
/* 81489CC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489CC8 | 41 82 00 50 */	beq .L_81489D18
/* 81489CCC | 7F E3 FB 78 */	mr r3, r31
/* 81489CD0 | 48 00 14 79 */	bl CDBFindDataGetName
/* 81489CD4 | 48 00 0B 05 */	bl CDBFSIsMinuteDirName
/* 81489CD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489CDC | 41 82 00 3C */	beq .L_81489D18
/* 81489CE0 | 7F E3 FB 78 */	mr r3, r31
/* 81489CE4 | 48 00 14 65 */	bl CDBFindDataGetName
/* 81489CE8 | 7C 67 1B 78 */	mr r7, r3
/* 81489CEC | 7F 03 C3 78 */	mr r3, r24
/* 81489CF0 | 7F 24 CB 78 */	mr r4, r25
/* 81489CF4 | 7F 45 D3 78 */	mr r5, r26
/* 81489CF8 | 7F 66 DB 78 */	mr r6, r27
/* 81489CFC | 7F A9 EB 78 */	mr r9, r29
/* 81489D00 | 7F CA F3 78 */	mr r10, r30
/* 81489D04 | 39 01 00 08 */	addi r8, r1, 0x8
/* 81489D08 | 4B FF FD F1 */	bl CDBDatabaseCleanUpEmptyDirectoriesCode
/* 81489D0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489D10 | 41 82 00 08 */	beq .L_81489D18
/* 81489D14 | 48 00 00 58 */	b .L_81489D6C
.L_81489D18:
/* 81489D18 | 7F E3 FB 78 */	mr r3, r31
/* 81489D1C | 48 00 15 81 */	bl CDBFSFindNext
.L_81489D20:
/* 81489D20 | 7F E3 FB 78 */	mr r3, r31
/* 81489D24 | 48 00 14 5D */	bl CDBFindDataIsEnd
/* 81489D28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489D2C | 41 82 FF 84 */	beq .L_81489CB0
/* 81489D30 | 7F E3 FB 78 */	mr r3, r31
/* 81489D34 | 48 00 15 85 */	bl CDBFSFindClose
/* 81489D38 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81489D3C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81489D40 | 40 82 00 28 */	bne .L_81489D68
/* 81489D44 | 7F A4 EB 78 */	mr r4, r29
/* 81489D48 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489D4C | 48 00 15 89 */	bl CDBFSDeleteDir
/* 81489D50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489D54 | 41 82 00 08 */	beq .L_81489D5C
/* 81489D58 | 48 00 00 14 */	b .L_81489D6C
.L_81489D5C:
/* 81489D5C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81489D60 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81489D64 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81489D68:
/* 81489D68 | 38 60 00 00 */	li r3, 0x0
.L_81489D6C:
/* 81489D6C | 39 61 01 30 */	addi r11, r1, 0x130
/* 81489D70 | 48 16 F7 91 */	bl _restgpr_24
/* 81489D74 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 81489D78 | 7C 08 03 A6 */	mtlr r0
/* 81489D7C | 38 21 01 30 */	addi r1, r1, 0x130
/* 81489D80 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCleanUpEmptyDirectoriesMinute

# .text:0x29E4 | 0x81489D84 | size: 0x134
.fn CDBDatabaseCleanUpEmptyDirectoriesHour, global
/* 81489D84 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 81489D88 | 7C 08 02 A6 */	mflr r0
/* 81489D8C | 90 01 01 34 */	stw r0, 0x134(r1)
/* 81489D90 | 39 61 01 30 */	addi r11, r1, 0x130
/* 81489D94 | 48 16 F7 25 */	bl _savegpr_25
/* 81489D98 | 81 2D AD 4C */	lwz r9, lbl_81698D8C@sda21(r0)
/* 81489D9C | 38 00 00 00 */	li r0, 0x0
/* 81489DA0 | 7C 79 1B 78 */	mr r25, r3
/* 81489DA4 | 7C 9A 23 78 */	mr r26, r4
/* 81489DA8 | 7C BB 2B 78 */	mr r27, r5
/* 81489DAC | 7C DC 33 78 */	mr r28, r6
/* 81489DB0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81489DB4 | 7C FD 3B 78 */	mr r29, r7
/* 81489DB8 | 7D 1E 43 78 */	mr r30, r8
/* 81489DBC | 7F 24 CB 78 */	mr r4, r25
/* 81489DC0 | 7F 45 D3 78 */	mr r5, r26
/* 81489DC4 | 7F 66 DB 78 */	mr r6, r27
/* 81489DC8 | 3B E9 27 50 */	addi r31, r9, 0x2750
/* 81489DCC | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489DD0 | 4B FF CA 65 */	bl CDBConvDayStrToFullPath
/* 81489DD4 | 7F E3 FB 78 */	mr r3, r31
/* 81489DD8 | 7F A5 EB 78 */	mr r5, r29
/* 81489DDC | 38 81 00 10 */	addi r4, r1, 0x10
/* 81489DE0 | 48 00 14 A1 */	bl CDBFSFindFirst
/* 81489DE4 | 48 00 00 70 */	b .L_81489E54
.L_81489DE8:
/* 81489DE8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81489DEC | 7F E3 FB 78 */	mr r3, r31
/* 81489DF0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81489DF4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81489DF8 | 48 00 13 6D */	bl CDBFindDataIsDirectory
/* 81489DFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489E00 | 41 82 00 4C */	beq .L_81489E4C
/* 81489E04 | 7F E3 FB 78 */	mr r3, r31
/* 81489E08 | 48 00 13 41 */	bl CDBFindDataGetName
/* 81489E0C | 48 00 08 D1 */	bl CDBFSIsHourDirName
/* 81489E10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489E14 | 41 82 00 38 */	beq .L_81489E4C
/* 81489E18 | 7F E3 FB 78 */	mr r3, r31
/* 81489E1C | 48 00 13 2D */	bl CDBFindDataGetName
/* 81489E20 | 7C 66 1B 78 */	mr r6, r3
/* 81489E24 | 7F 23 CB 78 */	mr r3, r25
/* 81489E28 | 7F 44 D3 78 */	mr r4, r26
/* 81489E2C | 7F 65 DB 78 */	mr r5, r27
/* 81489E30 | 7F A8 EB 78 */	mr r8, r29
/* 81489E34 | 7F C9 F3 78 */	mr r9, r30
/* 81489E38 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81489E3C | 4B FF FE 09 */	bl CDBDatabaseCleanUpEmptyDirectoriesMinute
/* 81489E40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489E44 | 41 82 00 08 */	beq .L_81489E4C
/* 81489E48 | 48 00 00 58 */	b .L_81489EA0
.L_81489E4C:
/* 81489E4C | 7F E3 FB 78 */	mr r3, r31
/* 81489E50 | 48 00 14 4D */	bl CDBFSFindNext
.L_81489E54:
/* 81489E54 | 7F E3 FB 78 */	mr r3, r31
/* 81489E58 | 48 00 13 29 */	bl CDBFindDataIsEnd
/* 81489E5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489E60 | 41 82 FF 88 */	beq .L_81489DE8
/* 81489E64 | 7F E3 FB 78 */	mr r3, r31
/* 81489E68 | 48 00 14 51 */	bl CDBFSFindClose
/* 81489E6C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81489E70 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81489E74 | 40 82 00 28 */	bne .L_81489E9C
/* 81489E78 | 7F A4 EB 78 */	mr r4, r29
/* 81489E7C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489E80 | 48 00 14 55 */	bl CDBFSDeleteDir
/* 81489E84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489E88 | 41 82 00 08 */	beq .L_81489E90
/* 81489E8C | 48 00 00 14 */	b .L_81489EA0
.L_81489E90:
/* 81489E90 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81489E94 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81489E98 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81489E9C:
/* 81489E9C | 38 60 00 00 */	li r3, 0x0
.L_81489EA0:
/* 81489EA0 | 39 61 01 30 */	addi r11, r1, 0x130
/* 81489EA4 | 48 16 F6 61 */	bl _restgpr_25
/* 81489EA8 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 81489EAC | 7C 08 03 A6 */	mtlr r0
/* 81489EB0 | 38 21 01 30 */	addi r1, r1, 0x130
/* 81489EB4 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCleanUpEmptyDirectoriesHour

# .text:0x2B18 | 0x81489EB8 | size: 0x128
.fn CDBDatabaseCleanUpEmptyDirectoriesDay, global
/* 81489EB8 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 81489EBC | 7C 08 02 A6 */	mflr r0
/* 81489EC0 | 90 01 01 34 */	stw r0, 0x134(r1)
/* 81489EC4 | 39 61 01 30 */	addi r11, r1, 0x130
/* 81489EC8 | 48 16 F5 F5 */	bl _savegpr_26
/* 81489ECC | 81 0D AD 4C */	lwz r8, lbl_81698D8C@sda21(r0)
/* 81489ED0 | 38 00 00 00 */	li r0, 0x0
/* 81489ED4 | 7C 7A 1B 78 */	mr r26, r3
/* 81489ED8 | 7C 9B 23 78 */	mr r27, r4
/* 81489EDC | 7C BC 2B 78 */	mr r28, r5
/* 81489EE0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81489EE4 | 7C DD 33 78 */	mr r29, r6
/* 81489EE8 | 7C FE 3B 78 */	mr r30, r7
/* 81489EEC | 7F 44 D3 78 */	mr r4, r26
/* 81489EF0 | 7F 65 DB 78 */	mr r5, r27
/* 81489EF4 | 3B E8 30 E4 */	addi r31, r8, 0x30e4
/* 81489EF8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489EFC | 4B FF C8 D5 */	bl CDBConvMonthStrToFullPath
/* 81489F00 | 7F E3 FB 78 */	mr r3, r31
/* 81489F04 | 7F A5 EB 78 */	mr r5, r29
/* 81489F08 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81489F0C | 48 00 13 75 */	bl CDBFSFindFirst
/* 81489F10 | 48 00 00 6C */	b .L_81489F7C
.L_81489F14:
/* 81489F14 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81489F18 | 7F E3 FB 78 */	mr r3, r31
/* 81489F1C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81489F20 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81489F24 | 48 00 12 41 */	bl CDBFindDataIsDirectory
/* 81489F28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489F2C | 41 82 00 48 */	beq .L_81489F74
/* 81489F30 | 7F E3 FB 78 */	mr r3, r31
/* 81489F34 | 48 00 12 15 */	bl CDBFindDataGetName
/* 81489F38 | 48 00 06 A9 */	bl CDBFSIsDayDirName
/* 81489F3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489F40 | 41 82 00 34 */	beq .L_81489F74
/* 81489F44 | 7F E3 FB 78 */	mr r3, r31
/* 81489F48 | 48 00 12 01 */	bl CDBFindDataGetName
/* 81489F4C | 7C 65 1B 78 */	mr r5, r3
/* 81489F50 | 7F 43 D3 78 */	mr r3, r26
/* 81489F54 | 7F 64 DB 78 */	mr r4, r27
/* 81489F58 | 7F A7 EB 78 */	mr r7, r29
/* 81489F5C | 7F C8 F3 78 */	mr r8, r30
/* 81489F60 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81489F64 | 4B FF FE 21 */	bl CDBDatabaseCleanUpEmptyDirectoriesHour
/* 81489F68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489F6C | 41 82 00 08 */	beq .L_81489F74
/* 81489F70 | 48 00 00 58 */	b .L_81489FC8
.L_81489F74:
/* 81489F74 | 7F E3 FB 78 */	mr r3, r31
/* 81489F78 | 48 00 13 25 */	bl CDBFSFindNext
.L_81489F7C:
/* 81489F7C | 7F E3 FB 78 */	mr r3, r31
/* 81489F80 | 48 00 12 01 */	bl CDBFindDataIsEnd
/* 81489F84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489F88 | 41 82 FF 8C */	beq .L_81489F14
/* 81489F8C | 7F E3 FB 78 */	mr r3, r31
/* 81489F90 | 48 00 13 29 */	bl CDBFSFindClose
/* 81489F94 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81489F98 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81489F9C | 40 82 00 28 */	bne .L_81489FC4
/* 81489FA0 | 7F A4 EB 78 */	mr r4, r29
/* 81489FA4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81489FA8 | 48 00 13 2D */	bl CDBFSDeleteDir
/* 81489FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81489FB0 | 41 82 00 08 */	beq .L_81489FB8
/* 81489FB4 | 48 00 00 14 */	b .L_81489FC8
.L_81489FB8:
/* 81489FB8 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81489FBC | 38 03 FF FF */	subi r0, r3, 0x1
/* 81489FC0 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81489FC4:
/* 81489FC4 | 38 60 00 00 */	li r3, 0x0
.L_81489FC8:
/* 81489FC8 | 39 61 01 30 */	addi r11, r1, 0x130
/* 81489FCC | 48 16 F5 3D */	bl _restgpr_26
/* 81489FD0 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 81489FD4 | 7C 08 03 A6 */	mtlr r0
/* 81489FD8 | 38 21 01 30 */	addi r1, r1, 0x130
/* 81489FDC | 4E 80 00 20 */	blr
.endfn CDBDatabaseCleanUpEmptyDirectoriesDay

# .text:0x2C40 | 0x81489FE0 | size: 0x124
.fn CDBDatabaseCleanUpEmptyDirectoriesMonth, global
/* 81489FE0 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 81489FE4 | 7C 08 02 A6 */	mflr r0
/* 81489FE8 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 81489FEC | 38 00 00 00 */	li r0, 0x0
/* 81489FF0 | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 81489FF4 | 93 C1 01 18 */	stw r30, 0x118(r1)
/* 81489FF8 | 7C BE 2B 78 */	mr r30, r5
/* 81489FFC | 7F C6 F3 78 */	mr r6, r30
/* 8148A000 | 93 A1 01 14 */	stw r29, 0x114(r1)
/* 8148A004 | 7C 9D 23 78 */	mr r29, r4
/* 8148A008 | 7F A5 EB 78 */	mr r5, r29
/* 8148A00C | 93 81 01 10 */	stw r28, 0x110(r1)
/* 8148A010 | 7C 7C 1B 78 */	mr r28, r3
/* 8148A014 | 7F 84 E3 78 */	mr r4, r28
/* 8148A018 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148A01C | 80 ED AD 4C */	lwz r7, lbl_81698D8C@sda21(r0)
/* 8148A020 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8148A024 | 3B E7 3A 78 */	addi r31, r7, 0x3a78
/* 8148A028 | 4B FF C7 5D */	bl CDBConvYearStrToFullPath
/* 8148A02C | 7F E3 FB 78 */	mr r3, r31
/* 8148A030 | 7F A5 EB 78 */	mr r5, r29
/* 8148A034 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8148A038 | 48 00 12 49 */	bl CDBFSFindFirst
/* 8148A03C | 48 00 00 68 */	b .L_8148A0A4
.L_8148A040:
/* 8148A040 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8148A044 | 7F E3 FB 78 */	mr r3, r31
/* 8148A048 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8148A04C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8148A050 | 48 00 11 15 */	bl CDBFindDataIsDirectory
/* 8148A054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A058 | 41 82 00 44 */	beq .L_8148A09C
/* 8148A05C | 7F E3 FB 78 */	mr r3, r31
/* 8148A060 | 48 00 10 E9 */	bl CDBFindDataGetName
/* 8148A064 | 48 00 04 81 */	bl CDBFSIsMonthDirName
/* 8148A068 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A06C | 41 82 00 30 */	beq .L_8148A09C
/* 8148A070 | 7F E3 FB 78 */	mr r3, r31
/* 8148A074 | 48 00 10 D5 */	bl CDBFindDataGetName
/* 8148A078 | 7C 64 1B 78 */	mr r4, r3
/* 8148A07C | 7F 83 E3 78 */	mr r3, r28
/* 8148A080 | 7F A6 EB 78 */	mr r6, r29
/* 8148A084 | 7F C7 F3 78 */	mr r7, r30
/* 8148A088 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8148A08C | 4B FF FE 2D */	bl CDBDatabaseCleanUpEmptyDirectoriesDay
/* 8148A090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A094 | 41 82 00 08 */	beq .L_8148A09C
/* 8148A098 | 48 00 00 4C */	b .L_8148A0E4
.L_8148A09C:
/* 8148A09C | 7F E3 FB 78 */	mr r3, r31
/* 8148A0A0 | 48 00 11 FD */	bl CDBFSFindNext
.L_8148A0A4:
/* 8148A0A4 | 7F E3 FB 78 */	mr r3, r31
/* 8148A0A8 | 48 00 10 D9 */	bl CDBFindDataIsEnd
/* 8148A0AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A0B0 | 41 82 FF 90 */	beq .L_8148A040
/* 8148A0B4 | 7F E3 FB 78 */	mr r3, r31
/* 8148A0B8 | 48 00 12 01 */	bl CDBFSFindClose
/* 8148A0BC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8148A0C0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8148A0C4 | 40 82 00 1C */	bne .L_8148A0E0
/* 8148A0C8 | 7F A4 EB 78 */	mr r4, r29
/* 8148A0CC | 38 61 00 10 */	addi r3, r1, 0x10
/* 8148A0D0 | 48 00 12 05 */	bl CDBFSDeleteDir
/* 8148A0D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A0D8 | 41 82 00 08 */	beq .L_8148A0E0
/* 8148A0DC | 48 00 00 08 */	b .L_8148A0E4
.L_8148A0E0:
/* 8148A0E0 | 38 60 00 00 */	li r3, 0x0
.L_8148A0E4:
/* 8148A0E4 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 8148A0E8 | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8148A0EC | 83 C1 01 18 */	lwz r30, 0x118(r1)
/* 8148A0F0 | 83 A1 01 14 */	lwz r29, 0x114(r1)
/* 8148A0F4 | 83 81 01 10 */	lwz r28, 0x110(r1)
/* 8148A0F8 | 7C 08 03 A6 */	mtlr r0
/* 8148A0FC | 38 21 01 20 */	addi r1, r1, 0x120
/* 8148A100 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCleanUpEmptyDirectoriesMonth

# .text:0x2D64 | 0x8148A104 | size: 0x214
.fn CDBDatabaseCleanUpEmptyDirectories, global
/* 8148A104 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148A108 | 7C 08 02 A6 */	mflr r0
/* 8148A10C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A110 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8148A114 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8148A118 | 7C 7F 1B 78 */	mr r31, r3
/* 8148A11C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8148A120 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148A124 | 7C 9D 23 78 */	mr r29, r4
/* 8148A128 | 80 AD AD 4C */	lwz r5, lbl_81698D8C@sda21(r0)
/* 8148A12C | 3B C5 43 0C */	addi r30, r5, 0x430c
/* 8148A130 | 40 82 00 0C */	bne .L_8148A13C
/* 8148A134 | 38 60 00 01 */	li r3, 0x1
/* 8148A138 | 48 00 01 C4 */	b .L_8148A2FC
.L_8148A13C:
/* 8148A13C | 48 00 51 41 */	bl CDBLock
/* 8148A140 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8148A144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A148 | 41 82 00 10 */	beq .L_8148A158
/* 8148A14C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 8148A150 | 83 E3 C0 10 */	lwz r31, -0x3ff0(r3)
/* 8148A154 | 48 00 00 08 */	b .L_8148A15C
.L_8148A158:
/* 8148A158 | 3B E0 00 00 */	li r31, 0x0
.L_8148A15C:
/* 8148A15C | 48 00 51 2D */	bl CDBUnlock
/* 8148A160 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148A164 | 40 82 00 34 */	bne .L_8148A198
/* 8148A168 | 38 60 00 02 */	li r3, 0x2
/* 8148A16C | 48 00 64 25 */	bl CDBIsPrintDebugMessage
/* 8148A170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A174 | 41 82 00 1C */	beq .L_8148A190
/* 8148A178 | 38 60 00 02 */	li r3, 0x2
/* 8148A17C | 48 00 64 2D */	bl CDBReport_
/* 8148A180 | 3C 60 81 67 */	lis r3, lbl_8166B5D0@ha
/* 8148A184 | 38 63 B5 D0 */	addi r3, r3, lbl_8166B5D0@l
/* 8148A188 | 4C C6 31 82 */	crclr cr1eq
/* 8148A18C | 48 0A 45 15 */	bl OSReport
.L_8148A190:
/* 8148A190 | 38 60 00 1B */	li r3, 0x1b
/* 8148A194 | 48 00 01 68 */	b .L_8148A2FC
.L_8148A198:
/* 8148A198 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8148A19C | 40 82 00 34 */	bne .L_8148A1D0
/* 8148A1A0 | 38 60 00 02 */	li r3, 0x2
/* 8148A1A4 | 48 00 63 ED */	bl CDBIsPrintDebugMessage
/* 8148A1A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A1AC | 41 82 00 1C */	beq .L_8148A1C8
/* 8148A1B0 | 38 60 00 02 */	li r3, 0x2
/* 8148A1B4 | 48 00 63 F5 */	bl CDBReport_
/* 8148A1B8 | 3C 60 81 67 */	lis r3, lbl_8166B618@ha
/* 8148A1BC | 38 63 B6 18 */	addi r3, r3, lbl_8166B618@l
/* 8148A1C0 | 4C C6 31 82 */	crclr cr1eq
/* 8148A1C4 | 48 0A 44 DD */	bl OSReport
.L_8148A1C8:
/* 8148A1C8 | 38 60 00 1A */	li r3, 0x1a
/* 8148A1CC | 48 00 01 30 */	b .L_8148A2FC
.L_8148A1D0:
/* 8148A1D0 | 57 A0 07 FF */	clrlwi. r0, r29, 31
/* 8148A1D4 | 41 82 00 78 */	beq .L_8148A24C
/* 8148A1D8 | 7F C3 F3 78 */	mr r3, r30
/* 8148A1DC | 38 80 00 01 */	li r4, 0x1
/* 8148A1E0 | 48 00 0F CD */	bl CDBFSFindFirstRoot
/* 8148A1E4 | 48 00 00 50 */	b .L_8148A234
.L_8148A1E8:
/* 8148A1E8 | 7F C3 F3 78 */	mr r3, r30
/* 8148A1EC | 48 00 0F 79 */	bl CDBFindDataIsDirectory
/* 8148A1F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A1F4 | 41 82 00 38 */	beq .L_8148A22C
/* 8148A1F8 | 7F C3 F3 78 */	mr r3, r30
/* 8148A1FC | 48 00 0F 4D */	bl CDBFindDataGetName
/* 8148A200 | 48 00 01 61 */	bl CDBFSIsYearDirName
/* 8148A204 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A208 | 41 82 00 24 */	beq .L_8148A22C
/* 8148A20C | 7F C3 F3 78 */	mr r3, r30
/* 8148A210 | 48 00 0F 39 */	bl CDBFindDataGetName
/* 8148A214 | 38 80 00 01 */	li r4, 0x1
/* 8148A218 | 38 A0 00 00 */	li r5, 0x0
/* 8148A21C | 4B FF FD C5 */	bl CDBDatabaseCleanUpEmptyDirectoriesMonth
/* 8148A220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A224 | 41 82 00 08 */	beq .L_8148A22C
/* 8148A228 | 48 00 00 D4 */	b .L_8148A2FC
.L_8148A22C:
/* 8148A22C | 7F C3 F3 78 */	mr r3, r30
/* 8148A230 | 48 00 10 6D */	bl CDBFSFindNext
.L_8148A234:
/* 8148A234 | 7F C3 F3 78 */	mr r3, r30
/* 8148A238 | 48 00 0F 49 */	bl CDBFindDataIsEnd
/* 8148A23C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A240 | 41 82 FF A8 */	beq .L_8148A1E8
/* 8148A244 | 7F C3 F3 78 */	mr r3, r30
/* 8148A248 | 48 00 10 71 */	bl CDBFSFindClose
.L_8148A24C:
/* 8148A24C | 48 00 62 F9 */	bl CDBVFSync
/* 8148A250 | 3B E0 00 00 */	li r31, 0x0
/* 8148A254 | 48 00 1C E9 */	bl CDBFSSDIsMounted
/* 8148A258 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A25C | 41 82 00 14 */	beq .L_8148A270
/* 8148A260 | 48 00 1C ED */	bl CDBFSSDIsEjected
/* 8148A264 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A268 | 40 82 00 08 */	bne .L_8148A270
/* 8148A26C | 3B E0 00 01 */	li r31, 0x1
.L_8148A270:
/* 8148A270 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8148A274 | 41 82 00 80 */	beq .L_8148A2F4
/* 8148A278 | 57 A0 07 BD */	rlwinm. r0, r29, 0, 30, 30
/* 8148A27C | 41 82 00 78 */	beq .L_8148A2F4
/* 8148A280 | 7F C3 F3 78 */	mr r3, r30
/* 8148A284 | 38 80 00 02 */	li r4, 0x2
/* 8148A288 | 48 00 0F 25 */	bl CDBFSFindFirstRoot
/* 8148A28C | 48 00 00 50 */	b .L_8148A2DC
.L_8148A290:
/* 8148A290 | 7F C3 F3 78 */	mr r3, r30
/* 8148A294 | 48 00 0E D1 */	bl CDBFindDataIsDirectory
/* 8148A298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A29C | 41 82 00 38 */	beq .L_8148A2D4
/* 8148A2A0 | 7F C3 F3 78 */	mr r3, r30
/* 8148A2A4 | 48 00 0E A5 */	bl CDBFindDataGetName
/* 8148A2A8 | 48 00 00 B9 */	bl CDBFSIsYearDirName
/* 8148A2AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A2B0 | 41 82 00 24 */	beq .L_8148A2D4
/* 8148A2B4 | 7F C3 F3 78 */	mr r3, r30
/* 8148A2B8 | 48 00 0E 91 */	bl CDBFindDataGetName
/* 8148A2BC | 38 80 00 02 */	li r4, 0x2
/* 8148A2C0 | 38 A0 00 00 */	li r5, 0x0
/* 8148A2C4 | 4B FF FD 1D */	bl CDBDatabaseCleanUpEmptyDirectoriesMonth
/* 8148A2C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A2CC | 41 82 00 08 */	beq .L_8148A2D4
/* 8148A2D0 | 48 00 00 2C */	b .L_8148A2FC
.L_8148A2D4:
/* 8148A2D4 | 7F C3 F3 78 */	mr r3, r30
/* 8148A2D8 | 48 00 0F C5 */	bl CDBFSFindNext
.L_8148A2DC:
/* 8148A2DC | 7F C3 F3 78 */	mr r3, r30
/* 8148A2E0 | 48 00 0E A1 */	bl CDBFindDataIsEnd
/* 8148A2E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8148A2E8 | 41 82 FF A8 */	beq .L_8148A290
/* 8148A2EC | 7F C3 F3 78 */	mr r3, r30
/* 8148A2F0 | 48 00 0F C9 */	bl CDBFSFindClose
.L_8148A2F4:
/* 8148A2F4 | 48 00 62 51 */	bl CDBVFSync
/* 8148A2F8 | 38 60 00 00 */	li r3, 0x0
.L_8148A2FC:
/* 8148A2FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8148A300 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148A304 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8148A308 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148A30C | 7C 08 03 A6 */	mtlr r0
/* 8148A310 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8148A314 | 4E 80 00 20 */	blr
.endfn CDBDatabaseCleanUpEmptyDirectories

# 0x8166B528..0x8166B660 | size: 0x138
.data
.balign 8

# .data:0x0 | 0x8166B528 | size: 0x28
.obj lbl_8166B528, global
	.4byte 0x43444244
	.4byte 0x61746162
	.4byte 0x61736543
	.4byte 0x6C6F7365
	.4byte 0x20646174
	.4byte 0x61626173
	.4byte 0x65206973
	.4byte 0x20636C6F
	.4byte 0x7365640A
	.4byte 0x00000000
.endobj lbl_8166B528

# .data:0x28 | 0x8166B550 | size: 0x2C
.obj lbl_8166B550, global
	.4byte 0x63616E27
	.4byte 0x74206372
	.4byte 0x65617465
	.4byte 0x20726563
	.4byte 0x6F72643B
	.4byte 0x20646174
	.4byte 0x61626173
	.4byte 0x65206973
	.4byte 0x20636C6F
	.4byte 0x7365640A
	.4byte 0x00000000
.endobj lbl_8166B550

# .data:0x54 | 0x8166B57C | size: 0x2C
.obj lbl_8166B57C, global
	.4byte 0x63616E27
	.4byte 0x74206372
	.4byte 0x65617465
	.4byte 0x20726563
	.4byte 0x6F72643B
	.4byte 0x20646174
	.4byte 0x61626173
	.4byte 0x65206973
	.4byte 0x20726561
	.4byte 0x646F6E6C
	.4byte 0x790A0000
.endobj lbl_8166B57C

# .data:0x80 | 0x8166B5A8 | size: 0x10
.obj lbl_8166B5A8, global
	.4byte 0x696E7661
	.4byte 0x6C696420
	.4byte 0x6B65790A
	.4byte 0x00000000
.endobj lbl_8166B5A8

# .data:0x90 | 0x8166B5B8 | size: 0x18
.obj lbl_8166B5B8, global
	.4byte 0x66696C65
	.4byte 0x206E6F74
	.4byte 0x20666F75
	.4byte 0x6E64203A
	.4byte 0x2025730A
	.4byte 0x00000000
.endobj lbl_8166B5B8

# .data:0xA8 | 0x8166B5D0 | size: 0x48
.obj lbl_8166B5D0, global
	.4byte 0x63616E27
	.4byte 0x74206578
	.4byte 0x65637574
	.4byte 0x65204344
	.4byte 0x42446174
	.4byte 0x61626173
	.4byte 0x65436C65
	.4byte 0x616E5570
	.4byte 0x456D7074
	.4byte 0x79446972
	.4byte 0x6563746F
	.4byte 0x72696573
	.4byte 0x3B206461
	.4byte 0x74616261
	.4byte 0x73652069
	.4byte 0x7320636C
	.4byte 0x6F736564
	.4byte 0x0A000000
.endobj lbl_8166B5D0

# .data:0xF0 | 0x8166B618 | size: 0x48
.obj lbl_8166B618, global
	.string "can't execute CDBDatabaseCleanUpEmptyDirectories; database is readonly\n"
.endobj lbl_8166B618
