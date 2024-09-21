.include "macros.inc"
.file "ncdsleep.c"

# 0x814933F4..0x814934A8 | size: 0xB4
.text
.balign 4

# .text:0x0 | 0x814933F4 | size: 0x8
.fn SleepStart, local
/* 814933F4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814933F8 | 48 0A 18 58 */	b OSResumeThread
.endfn SleepStart

# .text:0x8 | 0x814933FC | size: 0xAC
.fn NCDSleep, global
/* 814933FC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81493400 | 7C 08 02 A6 */	mflr r0
/* 81493404 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81493408 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8149340C | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 81493410 | 93 A1 00 44 */	stw r29, 0x44(r1)
/* 81493414 | 7C 7D 1B 78 */	mr r29, r3
/* 81493418 | 93 81 00 40 */	stw r28, 0x40(r1)
/* 8149341C | 7C 9C 23 78 */	mr r28, r4
/* 81493420 | 48 09 D4 65 */	bl OSDisableInterrupts
/* 81493424 | 7C 7F 1B 78 */	mr r31, r3
/* 81493428 | 48 0A 0B 39 */	bl OSGetCurrentThread
/* 8149342C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81493430 | 7C 7E 1B 78 */	mr r30, r3
/* 81493434 | 40 82 00 10 */	bne .L_81493444
/* 81493438 | 7F E3 FB 78 */	mr r3, r31
/* 8149343C | 48 09 D4 71 */	bl OSRestoreInterrupts
/* 81493440 | 48 00 00 48 */	b .L_81493488
.L_81493444:
/* 81493444 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81493448 | 48 09 94 9D */	bl OSCreateAlarm
/* 8149344C | 7F C4 F3 78 */	mr r4, r30
/* 81493450 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81493454 | 48 09 9B 79 */	bl fn_8152CFCC
/* 81493458 | 3C E0 81 49 */	lis r7, SleepStart@ha
/* 8149345C | 7F 86 E3 78 */	mr r6, r28
/* 81493460 | 7F A5 EB 78 */	mr r5, r29
/* 81493464 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81493468 | 38 E7 33 F4 */	addi r7, r7, SleepStart@l
/* 8149346C | 48 09 96 D9 */	bl OSSetAlarm
/* 81493470 | 7F C3 F3 78 */	mr r3, r30
/* 81493474 | 48 0A 1A 75 */	bl OSSuspendThread
/* 81493478 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149347C | 48 09 97 BD */	bl fn_8152CC38
/* 81493480 | 7F E3 FB 78 */	mr r3, r31
/* 81493484 | 48 09 D4 29 */	bl OSRestoreInterrupts
.L_81493488:
/* 81493488 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8149348C | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81493490 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81493494 | 83 A1 00 44 */	lwz r29, 0x44(r1)
/* 81493498 | 83 81 00 40 */	lwz r28, 0x40(r1)
/* 8149349C | 7C 08 03 A6 */	mtlr r0
/* 814934A0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814934A4 | 4E 80 00 20 */	blr
.endfn NCDSleep
