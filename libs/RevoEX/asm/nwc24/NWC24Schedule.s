.include "macros.inc"
.file "NWC24Schedule.c"

# 0x810C9900..0x810C9A80 | size: 0x180
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C9900 | size: 0x18
.obj nwc24ScdCommandMutex, local
	.skip 0x18
.endobj nwc24ScdCommandMutex

# .bss:0x18 | 0x810C9918 | size: 0x18
.obj nwc24ScdCounterMutex, local
	.skip 0x18
.endobj nwc24ScdCounterMutex

# .bss:0x30 | 0x810C9930 | size: 0x10
.obj gap_00_810C9930_bss, global
.hidden gap_00_810C9930_bss
	.skip 0x10
.endobj gap_00_810C9930_bss

# .bss:0x40 | 0x810C9940 | size: 0x20
.obj nwc24ScdCommonBuffer, local
	.skip 0x20
.endobj nwc24ScdCommonBuffer

# .bss:0x60 | 0x810C9960 | size: 0x20
.obj nwc24ScdCommonResult, local
	.skip 0x20
.endobj nwc24ScdCommonResult

# .bss:0x80 | 0x810C9980 | size: 0x100
.obj nwc24ScdStatBuf, local
	.skip 0x100
.endobj nwc24ScdStatBuf

# 0x814AAD38..0x814ABD64 | size: 0x102C
.text
.balign 4

# .text:0x0 | 0x814AAD38 | size: 0xD0
.fn NWC24SuspendScheduler, global
/* 814AAD38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AAD3C | 7C 08 02 A6 */	mflr r0
/* 814AAD40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AAD44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814AAD48 | 3F E0 81 0D */	lis r31, nwc24ScdCommandMutex@ha
/* 814AAD4C | 3B FF 99 00 */	addi r31, r31, nwc24ScdCommandMutex@l
/* 814AAD50 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814AAD54 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AAD58 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AAD5C | 40 82 00 5C */	bne .L_814AADB8
/* 814AAD60 | 48 08 5B 25 */	bl OSDisableInterrupts
/* 814AAD64 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AAD68 | 7C 7E 1B 78 */	mr r30, r3
/* 814AAD6C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AAD70 | 40 82 00 40 */	bne .L_814AADB0
/* 814AAD74 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814AAD78 | 48 08 6E 59 */	bl fn_81531BD0
/* 814AAD7C | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AAD80 | 48 08 6E 51 */	bl fn_81531BD0
/* 814AAD84 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 814AAD88 | 38 80 00 00 */	li r4, 0x0
/* 814AAD8C | 38 A0 00 20 */	li r5, 0x20
/* 814AAD90 | 4B E8 55 A5 */	bl memset
/* 814AAD94 | 38 7F 00 60 */	addi r3, r31, 0x60
/* 814AAD98 | 38 80 00 00 */	li r4, 0x0
/* 814AAD9C | 38 A0 00 20 */	li r5, 0x20
/* 814AADA0 | 4B E8 55 95 */	bl memset
/* 814AADA4 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AADA8 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814AADAC | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814AADB0:
/* 814AADB0 | 7F C3 F3 78 */	mr r3, r30
/* 814AADB4 | 48 08 5A F9 */	bl OSRestoreInterrupts
.L_814AADB8:
/* 814AADB8 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AADBC | 48 08 6E 4D */	bl fn_81531C08
/* 814AADC0 | 48 00 0C 99 */	bl ExecSuspendScheduler
/* 814AADC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AADC8 | 7C 7E 1B 78 */	mr r30, r3
/* 814AADCC | 41 80 00 18 */	blt .L_814AADE4
/* 814AADD0 | 80 8D AD CC */	lwz r4, nwc24ScdSuspendCnt@sda21(r0)
/* 814AADD4 | 80 0D AD D0 */	lwz r0, nwc24ScdOpenCnt@sda21(r0)
/* 814AADD8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814AADDC | 90 8D AD CC */	stw r4, nwc24ScdSuspendCnt@sda21(r0)
/* 814AADE0 | 7F C0 18 50 */	subf r30, r0, r3
.L_814AADE4:
/* 814AADE4 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AADE8 | 48 08 6E FD */	bl fn_81531CE4
/* 814AADEC | 7F C3 F3 78 */	mr r3, r30
/* 814AADF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814AADF4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814AADF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AADFC | 7C 08 03 A6 */	mtlr r0
/* 814AAE00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AAE04 | 4E 80 00 20 */	blr
.endfn NWC24SuspendScheduler

# .text:0xD0 | 0x814AAE08 | size: 0xF0
.fn NWC24ResumeScheduler, global
/* 814AAE08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AAE0C | 7C 08 02 A6 */	mflr r0
/* 814AAE10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AAE14 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814AAE18 | 3F E0 81 0D */	lis r31, nwc24ScdCommandMutex@ha
/* 814AAE1C | 3B FF 99 00 */	addi r31, r31, nwc24ScdCommandMutex@l
/* 814AAE20 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814AAE24 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AAE28 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AAE2C | 40 82 00 5C */	bne .L_814AAE88
/* 814AAE30 | 48 08 5A 55 */	bl OSDisableInterrupts
/* 814AAE34 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AAE38 | 7C 7E 1B 78 */	mr r30, r3
/* 814AAE3C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AAE40 | 40 82 00 40 */	bne .L_814AAE80
/* 814AAE44 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814AAE48 | 48 08 6D 89 */	bl fn_81531BD0
/* 814AAE4C | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AAE50 | 48 08 6D 81 */	bl fn_81531BD0
/* 814AAE54 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 814AAE58 | 38 80 00 00 */	li r4, 0x0
/* 814AAE5C | 38 A0 00 20 */	li r5, 0x20
/* 814AAE60 | 4B E8 54 D5 */	bl memset
/* 814AAE64 | 38 7F 00 60 */	addi r3, r31, 0x60
/* 814AAE68 | 38 80 00 00 */	li r4, 0x0
/* 814AAE6C | 38 A0 00 20 */	li r5, 0x20
/* 814AAE70 | 4B E8 54 C5 */	bl memset
/* 814AAE74 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AAE78 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814AAE7C | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814AAE80:
/* 814AAE80 | 7F C3 F3 78 */	mr r3, r30
/* 814AAE84 | 48 08 5A 29 */	bl OSRestoreInterrupts
.L_814AAE88:
/* 814AAE88 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AAE8C | 48 08 6D 7D */	bl fn_81531C08
/* 814AAE90 | 80 0D AD D0 */	lwz r0, nwc24ScdOpenCnt@sda21(r0)
/* 814AAE94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AAE98 | 40 81 00 18 */	ble .L_814AAEB0
/* 814AAE9C | 80 0D AD CC */	lwz r0, nwc24ScdSuspendCnt@sda21(r0)
/* 814AAEA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AAEA4 | 40 82 00 0C */	bne .L_814AAEB0
/* 814AAEA8 | 3B C0 00 00 */	li r30, 0x0
/* 814AAEAC | 48 00 00 28 */	b .L_814AAED4
.L_814AAEB0:
/* 814AAEB0 | 48 00 0D 45 */	bl ExecResumeScheduler
/* 814AAEB4 | 80 8D AD CC */	lwz r4, nwc24ScdSuspendCnt@sda21(r0)
/* 814AAEB8 | 7C 7E 1B 78 */	mr r30, r3
/* 814AAEBC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AAEC0 | 40 81 00 14 */	ble .L_814AAED4
/* 814AAEC4 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814AAEC8 | 80 0D AD D0 */	lwz r0, nwc24ScdOpenCnt@sda21(r0)
/* 814AAECC | 90 8D AD CC */	stw r4, nwc24ScdSuspendCnt@sda21(r0)
/* 814AAED0 | 7F C0 18 50 */	subf r30, r0, r3
.L_814AAED4:
/* 814AAED4 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AAED8 | 48 08 6E 0D */	bl fn_81531CE4
/* 814AAEDC | 7F C3 F3 78 */	mr r3, r30
/* 814AAEE0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814AAEE4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814AAEE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AAEEC | 7C 08 03 A6 */	mtlr r0
/* 814AAEF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AAEF4 | 4E 80 00 20 */	blr
.endfn NWC24ResumeScheduler

# .text:0x1C0 | 0x814AAEF8 | size: 0x15C
.fn NWC24iGetSchedulerStat, global
/* 814AAEF8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814AAEFC | 7C 08 02 A6 */	mflr r0
/* 814AAF00 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814AAF04 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AAF08 | 48 14 E5 B9 */	bl _savegpr_27
/* 814AAF0C | 28 04 01 00 */	cmplwi r4, 0x100
/* 814AAF10 | 3F C0 81 0D */	lis r30, nwc24ScdCommandMutex@ha
/* 814AAF14 | 7C 7B 1B 78 */	mr r27, r3
/* 814AAF18 | 7C 9C 23 78 */	mr r28, r4
/* 814AAF1C | 3B DE 99 00 */	addi r30, r30, nwc24ScdCommandMutex@l
/* 814AAF20 | 40 81 00 0C */	ble .L_814AAF2C
/* 814AAF24 | 38 60 FF F8 */	li r3, -0x8
/* 814AAF28 | 48 00 01 14 */	b .L_814AB03C
.L_814AAF2C:
/* 814AAF2C | 48 08 90 35 */	bl OSGetCurrentThread
/* 814AAF30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AAF34 | 40 82 00 0C */	bne .L_814AAF40
/* 814AAF38 | 38 60 FF FF */	li r3, -0x1
/* 814AAF3C | 48 00 01 00 */	b .L_814AB03C
.L_814AAF40:
/* 814AAF40 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AAF44 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AAF48 | 40 82 00 5C */	bne .L_814AAFA4
/* 814AAF4C | 48 08 59 39 */	bl OSDisableInterrupts
/* 814AAF50 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AAF54 | 7C 7F 1B 78 */	mr r31, r3
/* 814AAF58 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AAF5C | 40 82 00 40 */	bne .L_814AAF9C
/* 814AAF60 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AAF64 | 48 08 6C 6D */	bl fn_81531BD0
/* 814AAF68 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 814AAF6C | 48 08 6C 65 */	bl fn_81531BD0
/* 814AAF70 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 814AAF74 | 38 80 00 00 */	li r4, 0x0
/* 814AAF78 | 38 A0 00 20 */	li r5, 0x20
/* 814AAF7C | 4B E8 53 B9 */	bl memset
/* 814AAF80 | 38 7E 00 60 */	addi r3, r30, 0x60
/* 814AAF84 | 38 80 00 00 */	li r4, 0x0
/* 814AAF88 | 38 A0 00 20 */	li r5, 0x20
/* 814AAF8C | 4B E8 53 A9 */	bl memset
/* 814AAF90 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AAF94 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814AAF98 | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814AAF9C:
/* 814AAF9C | 7F E3 FB 78 */	mr r3, r31
/* 814AAFA0 | 48 08 59 0D */	bl OSRestoreInterrupts
.L_814AAFA4:
/* 814AAFA4 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AAFA8 | 48 08 6C 61 */	bl fn_81531C08
/* 814AAFAC | 3F E0 81 67 */	lis r31, lbl_8166E0B0@ha
/* 814AAFB0 | 3C 80 81 67 */	lis r4, lbl_8166E0C8@ha
/* 814AAFB4 | 38 7F E0 B0 */	addi r3, r31, lbl_8166E0B0@l
/* 814AAFB8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AAFBC | 38 84 E0 C8 */	addi r4, r4, lbl_8166E0C8@l
/* 814AAFC0 | 38 C0 00 00 */	li r6, 0x0
/* 814AAFC4 | 48 00 38 81 */	bl NWC24iOpenResourceManager
/* 814AAFC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AAFCC | 7C 7D 1B 78 */	mr r29, r3
/* 814AAFD0 | 41 80 00 50 */	blt .L_814AB020
/* 814AAFD4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AAFD8 | 7F 68 DB 78 */	mr r8, r27
/* 814AAFDC | 7F 89 E3 78 */	mr r9, r28
/* 814AAFE0 | 38 7F E0 B0 */	addi r3, r31, lbl_8166E0B0@l
/* 814AAFE4 | 38 A0 00 1E */	li r5, 0x1e
/* 814AAFE8 | 38 C0 00 00 */	li r6, 0x0
/* 814AAFEC | 38 E0 00 00 */	li r7, 0x0
/* 814AAFF0 | 48 00 39 01 */	bl NWC24iIoctlResourceManager
/* 814AAFF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AAFF8 | 7C 7D 1B 78 */	mr r29, r3
/* 814AAFFC | 41 80 00 08 */	blt .L_814AB004
/* 814AB000 | 83 BB 00 00 */	lwz r29, 0x0(r27)
.L_814AB004:
/* 814AB004 | 3C 60 81 67 */	lis r3, lbl_8166E0B0@ha
/* 814AB008 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AB00C | 38 63 E0 B0 */	addi r3, r3, lbl_8166E0B0@l
/* 814AB010 | 48 00 38 AD */	bl NWC24iCloseResourceManager
/* 814AB014 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AB018 | 41 80 00 08 */	blt .L_814AB020
/* 814AB01C | 7C 7D 1B 78 */	mr r29, r3
.L_814AB020:
/* 814AB020 | 28 1C 00 10 */	cmplwi r28, 0x10
/* 814AB024 | 40 81 00 0C */	ble .L_814AB030
/* 814AB028 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 814AB02C | 4B FF 53 A9 */	bl NWC24iSetNewMsgArrived
.L_814AB030:
/* 814AB030 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB034 | 48 08 6C B1 */	bl fn_81531CE4
/* 814AB038 | 7F A3 EB 78 */	mr r3, r29
.L_814AB03C:
/* 814AB03C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AB040 | 48 14 E4 CD */	bl _restgpr_27
/* 814AB044 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814AB048 | 7C 08 03 A6 */	mtlr r0
/* 814AB04C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814AB050 | 4E 80 00 20 */	blr
.endfn NWC24iGetSchedulerStat

# .text:0x31C | 0x814AB054 | size: 0x1A0
.fn NWC24iSetScriptMode, global
/* 814AB054 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AB058 | 7C 08 02 A6 */	mflr r0
/* 814AB05C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AB060 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AB064 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AB068 | 3F C0 81 0D */	lis r30, nwc24ScdCommandMutex@ha
/* 814AB06C | 3B DE 99 00 */	addi r30, r30, nwc24ScdCommandMutex@l
/* 814AB070 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814AB074 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814AB078 | 7C 7C 1B 78 */	mr r28, r3
/* 814AB07C | 48 08 8E E5 */	bl OSGetCurrentThread
/* 814AB080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB084 | 40 82 00 0C */	bne .L_814AB090
/* 814AB088 | 38 60 FF FF */	li r3, -0x1
/* 814AB08C | 48 00 00 3C */	b .L_814AB0C8
.L_814AB090:
/* 814AB090 | 4B FF 52 69 */	bl NWC24IsMsgLibOpened
/* 814AB094 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB098 | 40 82 00 10 */	bne .L_814AB0A8
/* 814AB09C | 4B FF 52 71 */	bl NWC24IsMsgLibOpenedByTool
/* 814AB0A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB0A4 | 41 82 00 0C */	beq .L_814AB0B0
.L_814AB0A8:
/* 814AB0A8 | 38 60 FF F6 */	li r3, -0xa
/* 814AB0AC | 48 00 00 1C */	b .L_814AB0C8
.L_814AB0B0:
/* 814AB0B0 | 4B FF 52 71 */	bl NWC24IsMsgLibOpenBlocking
/* 814AB0B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB0B8 | 41 82 00 0C */	beq .L_814AB0C4
/* 814AB0BC | 38 60 FF E6 */	li r3, -0x1a
/* 814AB0C0 | 48 00 00 08 */	b .L_814AB0C8
.L_814AB0C4:
/* 814AB0C4 | 38 60 00 00 */	li r3, 0x0
.L_814AB0C8:
/* 814AB0C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB0CC | 40 80 00 08 */	bge .L_814AB0D4
/* 814AB0D0 | 48 00 01 04 */	b .L_814AB1D4
.L_814AB0D4:
/* 814AB0D4 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB0D8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB0DC | 40 82 00 5C */	bne .L_814AB138
/* 814AB0E0 | 48 08 57 A5 */	bl OSDisableInterrupts
/* 814AB0E4 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB0E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814AB0EC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB0F0 | 40 82 00 40 */	bne .L_814AB130
/* 814AB0F4 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB0F8 | 48 08 6A D9 */	bl fn_81531BD0
/* 814AB0FC | 38 7E 00 18 */	addi r3, r30, 0x18
/* 814AB100 | 48 08 6A D1 */	bl fn_81531BD0
/* 814AB104 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 814AB108 | 38 80 00 00 */	li r4, 0x0
/* 814AB10C | 38 A0 00 20 */	li r5, 0x20
/* 814AB110 | 4B E8 52 25 */	bl memset
/* 814AB114 | 38 7E 00 60 */	addi r3, r30, 0x60
/* 814AB118 | 38 80 00 00 */	li r4, 0x0
/* 814AB11C | 38 A0 00 20 */	li r5, 0x20
/* 814AB120 | 4B E8 52 15 */	bl memset
/* 814AB124 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB128 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814AB12C | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814AB130:
/* 814AB130 | 7F E3 FB 78 */	mr r3, r31
/* 814AB134 | 48 08 57 79 */	bl OSRestoreInterrupts
.L_814AB138:
/* 814AB138 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB13C | 48 08 6A CD */	bl fn_81531C08
/* 814AB140 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 814AB144 | 38 80 00 00 */	li r4, 0x0
/* 814AB148 | 38 A0 00 20 */	li r5, 0x20
/* 814AB14C | 4B E8 51 E9 */	bl memset
/* 814AB150 | 3F E0 81 67 */	lis r31, lbl_8166E0DC@ha
/* 814AB154 | 3C 80 81 67 */	lis r4, lbl_8166E0C8@ha
/* 814AB158 | 38 7F E0 DC */	addi r3, r31, lbl_8166E0DC@l
/* 814AB15C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AB160 | 38 84 E0 C8 */	addi r4, r4, lbl_8166E0C8@l
/* 814AB164 | 38 C0 00 00 */	li r6, 0x0
/* 814AB168 | 48 00 36 DD */	bl NWC24iOpenResourceManager
/* 814AB16C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB170 | 7C 7D 1B 78 */	mr r29, r3
/* 814AB174 | 41 80 00 54 */	blt .L_814AB1C8
/* 814AB178 | 93 9E 00 40 */	stw r28, 0x40(r30)
/* 814AB17C | 38 7F E0 DC */	addi r3, r31, lbl_8166E0DC@l
/* 814AB180 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AB184 | 38 DE 00 40 */	addi r6, r30, 0x40
/* 814AB188 | 39 1E 00 60 */	addi r8, r30, 0x60
/* 814AB18C | 38 A0 00 22 */	li r5, 0x22
/* 814AB190 | 38 E0 00 20 */	li r7, 0x20
/* 814AB194 | 39 20 00 20 */	li r9, 0x20
/* 814AB198 | 48 00 37 59 */	bl NWC24iIoctlResourceManager
/* 814AB19C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB1A0 | 7C 7D 1B 78 */	mr r29, r3
/* 814AB1A4 | 41 80 00 08 */	blt .L_814AB1AC
/* 814AB1A8 | 83 BE 00 60 */	lwz r29, 0x60(r30)
.L_814AB1AC:
/* 814AB1AC | 3C 60 81 67 */	lis r3, lbl_8166E0DC@ha
/* 814AB1B0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AB1B4 | 38 63 E0 DC */	addi r3, r3, lbl_8166E0DC@l
/* 814AB1B8 | 48 00 37 05 */	bl NWC24iCloseResourceManager
/* 814AB1BC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AB1C0 | 41 80 00 08 */	blt .L_814AB1C8
/* 814AB1C4 | 7C 7D 1B 78 */	mr r29, r3
.L_814AB1C8:
/* 814AB1C8 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB1CC | 48 08 6B 19 */	bl fn_81531CE4
/* 814AB1D0 | 7F A3 EB 78 */	mr r3, r29
.L_814AB1D4:
/* 814AB1D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AB1D8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AB1DC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AB1E0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814AB1E4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814AB1E8 | 7C 08 03 A6 */	mtlr r0
/* 814AB1EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AB1F0 | 4E 80 00 20 */	blr
.endfn NWC24iSetScriptMode

# .text:0x4BC | 0x814AB1F4 | size: 0x10
.fn NWC24AdjustUniversalTime, global
/* 814AB1F4 | 3C 60 80 00 */	lis r3, 0x8000
/* 814AB1F8 | 38 80 00 00 */	li r4, 0x0
/* 814AB1FC | 38 A0 00 00 */	li r5, 0x0
/* 814AB200 | 48 00 00 04 */	b NWC24ExecDownloadTask
.endfn NWC24AdjustUniversalTime

# .text:0x4CC | 0x814AB204 | size: 0x120
.fn NWC24ExecDownloadTask, global
/* 814AB204 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814AB208 | 7C 08 02 A6 */	mflr r0
/* 814AB20C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814AB210 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814AB214 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814AB218 | 3B C0 00 00 */	li r30, 0x0
/* 814AB21C | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814AB220 | 7C 7D 1B 78 */	mr r29, r3
/* 814AB224 | 80 6D 9C 60 */	lwz r3, pTempName$1371@sda21(r0)
/* 814AB228 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 814AB22C | 7C 9C 23 78 */	mr r28, r4
/* 814AB230 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814AB234 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814AB238 | 7C BE 2B 78 */	mr r30, r5
/* 814AB23C | 48 0B 9C 15 */	bl NANDPrivateGetStatus
/* 814AB240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB244 | 40 82 00 0C */	bne .L_814AB250
/* 814AB248 | 80 6D 9C 60 */	lwz r3, pTempName$1371@sda21(r0)
/* 814AB24C | 48 0B 8C 5D */	bl NANDPrivateDelete
.L_814AB250:
/* 814AB250 | 3F E0 81 0D */	lis r31, nwc24ScdStatBuf@ha
/* 814AB254 | 38 80 01 00 */	li r4, 0x100
/* 814AB258 | 38 7F 99 80 */	addi r3, r31, nwc24ScdStatBuf@l
/* 814AB25C | 4B FF FC 9D */	bl NWC24iGetSchedulerStat
/* 814AB260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB264 | 40 80 00 08 */	bge .L_814AB26C
/* 814AB268 | 48 00 00 9C */	b .L_814AB304
.L_814AB26C:
/* 814AB26C | 38 7F 99 80 */	addi r3, r31, nwc24ScdStatBuf@l
/* 814AB270 | 7F A4 EB 78 */	mr r4, r29
/* 814AB274 | 83 A3 00 14 */	lwz r29, 0x14(r3)
/* 814AB278 | 7F 85 E3 78 */	mr r5, r28
/* 814AB27C | 7F C6 F3 78 */	mr r6, r30
/* 814AB280 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AB284 | 48 00 04 89 */	bl NWC24iDownloadNowEx
/* 814AB288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB28C | 7C 7E 1B 78 */	mr r30, r3
/* 814AB290 | 41 80 00 1C */	blt .L_814AB2AC
/* 814AB294 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AB298 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AB29C | 41 82 00 10 */	beq .L_814AB2AC
/* 814AB2A0 | 48 00 03 ED */	bl NWC24iSaveMailNow
/* 814AB2A4 | 7C 7E 1B 78 */	mr r30, r3
/* 814AB2A8 | 48 00 00 08 */	b .L_814AB2B0
.L_814AB2AC:
/* 814AB2AC | 2C 03 FF F9 */	cmpwi r3, -0x7
.L_814AB2B0:
/* 814AB2B0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AB2B4 | 40 80 00 44 */	bge .L_814AB2F8
/* 814AB2B8 | 3F E0 81 0D */	lis r31, nwc24ScdStatBuf@ha
/* 814AB2BC | 38 80 01 00 */	li r4, 0x100
/* 814AB2C0 | 38 7F 99 80 */	addi r3, r31, nwc24ScdStatBuf@l
/* 814AB2C4 | 4B FF FC 35 */	bl NWC24iGetSchedulerStat
/* 814AB2C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB2CC | 41 80 00 1C */	blt .L_814AB2E8
/* 814AB2D0 | 38 7F 99 80 */	addi r3, r31, nwc24ScdStatBuf@l
/* 814AB2D4 | 57 A0 10 3A */	slwi r0, r29, 2
/* 814AB2D8 | 7C 63 02 14 */	add r3, r3, r0
/* 814AB2DC | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 814AB2E0 | 4B FF 53 75 */	bl NWC24iSetErrorCode
/* 814AB2E4 | 48 00 00 1C */	b .L_814AB300
.L_814AB2E8:
/* 814AB2E8 | 3C 7E FF FE */	subis r3, r30, 0x2
/* 814AB2EC | 38 63 5D 40 */	addi r3, r3, 0x5d40
/* 814AB2F0 | 4B FF 53 65 */	bl NWC24iSetErrorCode
/* 814AB2F4 | 48 00 00 0C */	b .L_814AB300
.L_814AB2F8:
/* 814AB2F8 | 38 60 00 00 */	li r3, 0x0
/* 814AB2FC | 4B FF 53 59 */	bl NWC24iSetErrorCode
.L_814AB300:
/* 814AB300 | 7F C3 F3 78 */	mr r3, r30
.L_814AB304:
/* 814AB304 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814AB308 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814AB30C | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814AB310 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814AB314 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 814AB318 | 7C 08 03 A6 */	mtlr r0
/* 814AB31C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814AB320 | 4E 80 00 20 */	blr
.endfn NWC24ExecDownloadTask

# .text:0x5EC | 0x814AB324 | size: 0x1BC
.fn NWC24iRequestGenerateUserId, global
/* 814AB324 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814AB328 | 7C 08 02 A6 */	mflr r0
/* 814AB32C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814AB330 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AB334 | 48 14 E1 8D */	bl _savegpr_27
/* 814AB338 | 3F A0 81 0D */	lis r29, nwc24ScdCommandMutex@ha
/* 814AB33C | 7C 7B 1B 78 */	mr r27, r3
/* 814AB340 | 7C 9F 23 78 */	mr r31, r4
/* 814AB344 | 3B BD 99 00 */	addi r29, r29, nwc24ScdCommandMutex@l
/* 814AB348 | 48 08 8C 19 */	bl OSGetCurrentThread
/* 814AB34C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB350 | 40 82 00 0C */	bne .L_814AB35C
/* 814AB354 | 38 60 FF FF */	li r3, -0x1
/* 814AB358 | 48 00 00 28 */	b .L_814AB380
.L_814AB35C:
/* 814AB35C | 4B FF 4F 9D */	bl NWC24IsMsgLibOpened
/* 814AB360 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB364 | 40 82 00 10 */	bne .L_814AB374
/* 814AB368 | 4B FF 4F A5 */	bl NWC24IsMsgLibOpenedByTool
/* 814AB36C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB370 | 41 82 00 0C */	beq .L_814AB37C
.L_814AB374:
/* 814AB374 | 38 60 FF F6 */	li r3, -0xa
/* 814AB378 | 48 00 00 08 */	b .L_814AB380
.L_814AB37C:
/* 814AB37C | 38 60 00 00 */	li r3, 0x0
.L_814AB380:
/* 814AB380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB384 | 40 80 00 08 */	bge .L_814AB38C
/* 814AB388 | 48 00 01 40 */	b .L_814AB4C8
.L_814AB38C:
/* 814AB38C | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB390 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB394 | 40 82 00 5C */	bne .L_814AB3F0
/* 814AB398 | 48 08 54 ED */	bl OSDisableInterrupts
/* 814AB39C | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB3A0 | 7C 7E 1B 78 */	mr r30, r3
/* 814AB3A4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB3A8 | 40 82 00 40 */	bne .L_814AB3E8
/* 814AB3AC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 814AB3B0 | 48 08 68 21 */	bl fn_81531BD0
/* 814AB3B4 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 814AB3B8 | 48 08 68 19 */	bl fn_81531BD0
/* 814AB3BC | 38 7D 00 40 */	addi r3, r29, 0x40
/* 814AB3C0 | 38 80 00 00 */	li r4, 0x0
/* 814AB3C4 | 38 A0 00 20 */	li r5, 0x20
/* 814AB3C8 | 4B E8 4F 6D */	bl memset
/* 814AB3CC | 38 7D 00 60 */	addi r3, r29, 0x60
/* 814AB3D0 | 38 80 00 00 */	li r4, 0x0
/* 814AB3D4 | 38 A0 00 20 */	li r5, 0x20
/* 814AB3D8 | 4B E8 4F 5D */	bl memset
/* 814AB3DC | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB3E0 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814AB3E4 | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814AB3E8:
/* 814AB3E8 | 7F C3 F3 78 */	mr r3, r30
/* 814AB3EC | 48 08 54 C1 */	bl OSRestoreInterrupts
.L_814AB3F0:
/* 814AB3F0 | 38 7D 00 00 */	addi r3, r29, 0x0
/* 814AB3F4 | 48 08 68 15 */	bl fn_81531C08
/* 814AB3F8 | 3F C0 81 67 */	lis r30, lbl_8166E0FC@ha
/* 814AB3FC | 3C 80 81 67 */	lis r4, lbl_8166E0C8@ha
/* 814AB400 | 38 7E E0 FC */	addi r3, r30, lbl_8166E0FC@l
/* 814AB404 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AB408 | 38 84 E0 C8 */	addi r4, r4, lbl_8166E0C8@l
/* 814AB40C | 38 C0 00 00 */	li r6, 0x0
/* 814AB410 | 48 00 34 35 */	bl NWC24iOpenResourceManager
/* 814AB414 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB418 | 7C 7C 1B 78 */	mr r28, r3
/* 814AB41C | 41 80 00 A0 */	blt .L_814AB4BC
/* 814AB420 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AB424 | 38 7E E0 FC */	addi r3, r30, lbl_8166E0FC@l
/* 814AB428 | 39 1D 00 60 */	addi r8, r29, 0x60
/* 814AB42C | 38 A0 00 0F */	li r5, 0xf
/* 814AB430 | 38 C0 00 00 */	li r6, 0x0
/* 814AB434 | 38 E0 00 00 */	li r7, 0x0
/* 814AB438 | 39 20 00 20 */	li r9, 0x20
/* 814AB43C | 48 00 34 B5 */	bl NWC24iIoctlResourceManager
/* 814AB440 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB444 | 7C 7C 1B 78 */	mr r28, r3
/* 814AB448 | 41 80 00 58 */	blt .L_814AB4A0
/* 814AB44C | 83 9D 00 60 */	lwz r28, 0x60(r29)
/* 814AB450 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814AB454 | 41 82 00 14 */	beq .L_814AB468
/* 814AB458 | 2C 1C FF DD */	cmpwi r28, -0x23
/* 814AB45C | 41 82 00 0C */	beq .L_814AB468
/* 814AB460 | 2C 1C FF DC */	cmpwi r28, -0x24
/* 814AB464 | 40 82 00 3C */	bne .L_814AB4A0
.L_814AB468:
/* 814AB468 | 38 00 00 00 */	li r0, 0x0
/* 814AB46C | 7C 1B 00 40 */	cmplw r27, r0
/* 814AB470 | 41 82 00 18 */	beq .L_814AB488
/* 814AB474 | 38 7D 00 60 */	addi r3, r29, 0x60
/* 814AB478 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814AB47C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814AB480 | 90 7B 00 04 */	stw r3, 0x4(r27)
/* 814AB484 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_814AB488:
/* 814AB488 | 38 00 00 00 */	li r0, 0x0
/* 814AB48C | 7C 1F 00 40 */	cmplw r31, r0
/* 814AB490 | 41 82 00 10 */	beq .L_814AB4A0
/* 814AB494 | 38 7D 00 60 */	addi r3, r29, 0x60
/* 814AB498 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814AB49C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814AB4A0:
/* 814AB4A0 | 3C 60 81 67 */	lis r3, lbl_8166E0FC@ha
/* 814AB4A4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AB4A8 | 38 63 E0 FC */	addi r3, r3, lbl_8166E0FC@l
/* 814AB4AC | 48 00 34 11 */	bl NWC24iCloseResourceManager
/* 814AB4B0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814AB4B4 | 41 80 00 08 */	blt .L_814AB4BC
/* 814AB4B8 | 7C 7C 1B 78 */	mr r28, r3
.L_814AB4BC:
/* 814AB4BC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 814AB4C0 | 48 08 68 25 */	bl fn_81531CE4
/* 814AB4C4 | 7F 83 E3 78 */	mr r3, r28
.L_814AB4C8:
/* 814AB4C8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AB4CC | 48 14 E0 41 */	bl _restgpr_27
/* 814AB4D0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814AB4D4 | 7C 08 03 A6 */	mtlr r0
/* 814AB4D8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814AB4DC | 4E 80 00 20 */	blr
.endfn NWC24iRequestGenerateUserId

# .text:0x7A8 | 0x814AB4E0 | size: 0x16C
.fn NWC24iRequestRegisterUserId, global
/* 814AB4E0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AB4E4 | 7C 08 02 A6 */	mflr r0
/* 814AB4E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AB4EC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AB4F0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AB4F4 | 3F C0 81 0D */	lis r30, nwc24ScdCommandMutex@ha
/* 814AB4F8 | 3B DE 99 00 */	addi r30, r30, nwc24ScdCommandMutex@l
/* 814AB4FC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814AB500 | 48 08 8A 61 */	bl OSGetCurrentThread
/* 814AB504 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB508 | 40 82 00 0C */	bne .L_814AB514
/* 814AB50C | 38 60 FF FF */	li r3, -0x1
/* 814AB510 | 48 00 00 28 */	b .L_814AB538
.L_814AB514:
/* 814AB514 | 4B FF 4D E5 */	bl NWC24IsMsgLibOpened
/* 814AB518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB51C | 40 82 00 10 */	bne .L_814AB52C
/* 814AB520 | 4B FF 4D ED */	bl NWC24IsMsgLibOpenedByTool
/* 814AB524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB528 | 41 82 00 0C */	beq .L_814AB534
.L_814AB52C:
/* 814AB52C | 38 60 FF F6 */	li r3, -0xa
/* 814AB530 | 48 00 00 08 */	b .L_814AB538
.L_814AB534:
/* 814AB534 | 38 60 00 00 */	li r3, 0x0
.L_814AB538:
/* 814AB538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB53C | 40 80 00 08 */	bge .L_814AB544
/* 814AB540 | 48 00 00 F0 */	b .L_814AB630
.L_814AB544:
/* 814AB544 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB548 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB54C | 40 82 00 5C */	bne .L_814AB5A8
/* 814AB550 | 48 08 53 35 */	bl OSDisableInterrupts
/* 814AB554 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB558 | 7C 7F 1B 78 */	mr r31, r3
/* 814AB55C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB560 | 40 82 00 40 */	bne .L_814AB5A0
/* 814AB564 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB568 | 48 08 66 69 */	bl fn_81531BD0
/* 814AB56C | 38 7E 00 18 */	addi r3, r30, 0x18
/* 814AB570 | 48 08 66 61 */	bl fn_81531BD0
/* 814AB574 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 814AB578 | 38 80 00 00 */	li r4, 0x0
/* 814AB57C | 38 A0 00 20 */	li r5, 0x20
/* 814AB580 | 4B E8 4D B5 */	bl memset
/* 814AB584 | 38 7E 00 60 */	addi r3, r30, 0x60
/* 814AB588 | 38 80 00 00 */	li r4, 0x0
/* 814AB58C | 38 A0 00 20 */	li r5, 0x20
/* 814AB590 | 4B E8 4D A5 */	bl memset
/* 814AB594 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB598 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814AB59C | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814AB5A0:
/* 814AB5A0 | 7F E3 FB 78 */	mr r3, r31
/* 814AB5A4 | 48 08 53 09 */	bl OSRestoreInterrupts
.L_814AB5A8:
/* 814AB5A8 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB5AC | 48 08 66 5D */	bl fn_81531C08
/* 814AB5B0 | 3F E0 81 67 */	lis r31, lbl_8166E118@ha
/* 814AB5B4 | 3C 80 81 67 */	lis r4, lbl_8166E0C8@ha
/* 814AB5B8 | 38 7F E1 18 */	addi r3, r31, lbl_8166E118@l
/* 814AB5BC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AB5C0 | 38 84 E0 C8 */	addi r4, r4, lbl_8166E0C8@l
/* 814AB5C4 | 38 C0 00 00 */	li r6, 0x0
/* 814AB5C8 | 48 00 32 7D */	bl NWC24iOpenResourceManager
/* 814AB5CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB5D0 | 7C 7D 1B 78 */	mr r29, r3
/* 814AB5D4 | 41 80 00 50 */	blt .L_814AB624
/* 814AB5D8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AB5DC | 38 7F E1 18 */	addi r3, r31, lbl_8166E118@l
/* 814AB5E0 | 39 1E 00 60 */	addi r8, r30, 0x60
/* 814AB5E4 | 38 A0 00 10 */	li r5, 0x10
/* 814AB5E8 | 38 C0 00 00 */	li r6, 0x0
/* 814AB5EC | 38 E0 00 00 */	li r7, 0x0
/* 814AB5F0 | 39 20 00 20 */	li r9, 0x20
/* 814AB5F4 | 48 00 32 FD */	bl NWC24iIoctlResourceManager
/* 814AB5F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB5FC | 7C 7D 1B 78 */	mr r29, r3
/* 814AB600 | 41 80 00 08 */	blt .L_814AB608
/* 814AB604 | 83 BE 00 60 */	lwz r29, 0x60(r30)
.L_814AB608:
/* 814AB608 | 3C 60 81 67 */	lis r3, lbl_8166E118@ha
/* 814AB60C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AB610 | 38 63 E1 18 */	addi r3, r3, lbl_8166E118@l
/* 814AB614 | 48 00 32 A9 */	bl NWC24iCloseResourceManager
/* 814AB618 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AB61C | 41 80 00 08 */	blt .L_814AB624
/* 814AB620 | 7C 7D 1B 78 */	mr r29, r3
.L_814AB624:
/* 814AB624 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB628 | 48 08 66 BD */	bl fn_81531CE4
/* 814AB62C | 7F A3 EB 78 */	mr r3, r29
.L_814AB630:
/* 814AB630 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AB634 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AB638 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AB63C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814AB640 | 7C 08 03 A6 */	mtlr r0
/* 814AB644 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AB648 | 4E 80 00 20 */	blr
.endfn NWC24iRequestRegisterUserId

# .text:0x914 | 0x814AB64C | size: 0x10
.fn NWC24iStartupSocket, global
/* 814AB64C | 7C 65 1B 78 */	mr r5, r3
/* 814AB650 | 38 60 00 00 */	li r3, 0x0
/* 814AB654 | 38 80 00 06 */	li r4, 0x6
/* 814AB658 | 48 00 05 AC */	b ExecNoParamCommand
.endfn NWC24iStartupSocket

# .text:0x924 | 0x814AB65C | size: 0x10
.fn NWC24iCleanupSocket, global
/* 814AB65C | 7C 65 1B 78 */	mr r5, r3
/* 814AB660 | 38 60 00 00 */	li r3, 0x0
/* 814AB664 | 38 80 00 07 */	li r4, 0x7
/* 814AB668 | 48 00 05 9C */	b ExecNoParamCommand
.endfn NWC24iCleanupSocket

# .text:0x934 | 0x814AB66C | size: 0x10
.fn NWC24iLockSocket, global
/* 814AB66C | 38 60 00 00 */	li r3, 0x0
/* 814AB670 | 38 80 00 08 */	li r4, 0x8
/* 814AB674 | 38 A0 00 00 */	li r5, 0x0
/* 814AB678 | 48 00 05 8C */	b ExecNoParamCommand
.endfn NWC24iLockSocket

# .text:0x944 | 0x814AB67C | size: 0x10
.fn NWC24iUnlockSocket, global
/* 814AB67C | 38 60 00 00 */	li r3, 0x0
/* 814AB680 | 38 80 00 09 */	li r4, 0x9
/* 814AB684 | 38 A0 00 00 */	li r5, 0x0
/* 814AB688 | 48 00 05 7C */	b ExecNoParamCommand
.endfn NWC24iUnlockSocket

# .text:0x954 | 0x814AB68C | size: 0x80
.fn NWC24iSaveMailNow, global
/* 814AB68C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AB690 | 7C 08 02 A6 */	mflr r0
/* 814AB694 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AB698 | 48 08 88 C9 */	bl OSGetCurrentThread
/* 814AB69C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB6A0 | 40 82 00 0C */	bne .L_814AB6AC
/* 814AB6A4 | 38 60 FF FF */	li r3, -0x1
/* 814AB6A8 | 48 00 00 38 */	b .L_814AB6E0
.L_814AB6AC:
/* 814AB6AC | 4B FF 4C 4D */	bl NWC24IsMsgLibOpened
/* 814AB6B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB6B4 | 40 82 00 10 */	bne .L_814AB6C4
/* 814AB6B8 | 4B FF 4C 55 */	bl NWC24IsMsgLibOpenedByTool
/* 814AB6BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB6C0 | 41 82 00 0C */	beq .L_814AB6CC
.L_814AB6C4:
/* 814AB6C4 | 38 60 FF F6 */	li r3, -0xa
/* 814AB6C8 | 48 00 00 18 */	b .L_814AB6E0
.L_814AB6CC:
/* 814AB6CC | 4B FF 4C 55 */	bl NWC24IsMsgLibOpenBlocking
/* 814AB6D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB6D4 | 38 60 00 00 */	li r3, 0x0
/* 814AB6D8 | 41 82 00 08 */	beq .L_814AB6E0
/* 814AB6DC | 38 60 FF E6 */	li r3, -0x1a
.L_814AB6E0:
/* 814AB6E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB6E4 | 40 80 00 08 */	bge .L_814AB6EC
/* 814AB6E8 | 48 00 00 14 */	b .L_814AB6FC
.L_814AB6EC:
/* 814AB6EC | 38 60 00 00 */	li r3, 0x0
/* 814AB6F0 | 38 80 00 0D */	li r4, 0xd
/* 814AB6F4 | 38 A0 00 00 */	li r5, 0x0
/* 814AB6F8 | 48 00 05 0D */	bl ExecNoParamCommand
.L_814AB6FC:
/* 814AB6FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AB700 | 7C 08 03 A6 */	mtlr r0
/* 814AB704 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AB708 | 4E 80 00 20 */	blr
.endfn NWC24iSaveMailNow

# .text:0x9D4 | 0x814AB70C | size: 0x1A0
.fn NWC24iDownloadNowEx, local
/* 814AB70C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814AB710 | 7C 08 02 A6 */	mflr r0
/* 814AB714 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814AB718 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AB71C | 48 14 DD 9D */	bl _savegpr_25
/* 814AB720 | 3F C0 81 0D */	lis r30, nwc24ScdCommandMutex@ha
/* 814AB724 | 7C 79 1B 78 */	mr r25, r3
/* 814AB728 | 7C 9A 23 78 */	mr r26, r4
/* 814AB72C | 7C BB 2B 78 */	mr r27, r5
/* 814AB730 | 7C DC 33 78 */	mr r28, r6
/* 814AB734 | 3B DE 99 00 */	addi r30, r30, nwc24ScdCommandMutex@l
/* 814AB738 | 48 08 88 29 */	bl OSGetCurrentThread
/* 814AB73C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB740 | 40 82 00 0C */	bne .L_814AB74C
/* 814AB744 | 38 60 FF FF */	li r3, -0x1
/* 814AB748 | 48 00 00 3C */	b .L_814AB784
.L_814AB74C:
/* 814AB74C | 4B FF 4B AD */	bl NWC24IsMsgLibOpened
/* 814AB750 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB754 | 40 82 00 10 */	bne .L_814AB764
/* 814AB758 | 4B FF 4B B5 */	bl NWC24IsMsgLibOpenedByTool
/* 814AB75C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB760 | 41 82 00 0C */	beq .L_814AB76C
.L_814AB764:
/* 814AB764 | 38 60 FF F6 */	li r3, -0xa
/* 814AB768 | 48 00 00 1C */	b .L_814AB784
.L_814AB76C:
/* 814AB76C | 4B FF 4B B5 */	bl NWC24IsMsgLibOpenBlocking
/* 814AB770 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB774 | 41 82 00 0C */	beq .L_814AB780
/* 814AB778 | 38 60 FF E6 */	li r3, -0x1a
/* 814AB77C | 48 00 00 08 */	b .L_814AB784
.L_814AB780:
/* 814AB780 | 38 60 00 00 */	li r3, 0x0
.L_814AB784:
/* 814AB784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB788 | 40 80 00 08 */	bge .L_814AB790
/* 814AB78C | 48 00 01 08 */	b .L_814AB894
.L_814AB790:
/* 814AB790 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB794 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB798 | 40 82 00 5C */	bne .L_814AB7F4
/* 814AB79C | 48 08 50 E9 */	bl OSDisableInterrupts
/* 814AB7A0 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB7A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814AB7A8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB7AC | 40 82 00 40 */	bne .L_814AB7EC
/* 814AB7B0 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB7B4 | 48 08 64 1D */	bl fn_81531BD0
/* 814AB7B8 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 814AB7BC | 48 08 64 15 */	bl fn_81531BD0
/* 814AB7C0 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 814AB7C4 | 38 80 00 00 */	li r4, 0x0
/* 814AB7C8 | 38 A0 00 20 */	li r5, 0x20
/* 814AB7CC | 4B E8 4B 69 */	bl memset
/* 814AB7D0 | 38 7E 00 60 */	addi r3, r30, 0x60
/* 814AB7D4 | 38 80 00 00 */	li r4, 0x0
/* 814AB7D8 | 38 A0 00 20 */	li r5, 0x20
/* 814AB7DC | 4B E8 4B 59 */	bl memset
/* 814AB7E0 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB7E4 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814AB7E8 | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814AB7EC:
/* 814AB7EC | 7F E3 FB 78 */	mr r3, r31
/* 814AB7F0 | 48 08 50 BD */	bl OSRestoreInterrupts
.L_814AB7F4:
/* 814AB7F4 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB7F8 | 48 08 64 11 */	bl fn_81531C08
/* 814AB7FC | 3F E0 81 67 */	lis r31, lbl_8166E134@ha
/* 814AB800 | 3C 80 81 67 */	lis r4, lbl_8166E0C8@ha
/* 814AB804 | 38 7F E1 34 */	addi r3, r31, lbl_8166E134@l
/* 814AB808 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AB80C | 38 84 E0 C8 */	addi r4, r4, lbl_8166E0C8@l
/* 814AB810 | 38 C0 00 00 */	li r6, 0x0
/* 814AB814 | 48 00 30 31 */	bl NWC24iOpenResourceManager
/* 814AB818 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB81C | 7C 7D 1B 78 */	mr r29, r3
/* 814AB820 | 41 80 00 68 */	blt .L_814AB888
/* 814AB824 | 38 DE 00 40 */	addi r6, r30, 0x40
/* 814AB828 | 93 5E 00 40 */	stw r26, 0x40(r30)
/* 814AB82C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AB830 | 38 7F E1 34 */	addi r3, r31, lbl_8166E134@l
/* 814AB834 | 93 66 00 04 */	stw r27, 0x4(r6)
/* 814AB838 | 39 1E 00 60 */	addi r8, r30, 0x60
/* 814AB83C | 38 A0 00 0E */	li r5, 0xe
/* 814AB840 | 38 E0 00 20 */	li r7, 0x20
/* 814AB844 | 93 86 00 08 */	stw r28, 0x8(r6)
/* 814AB848 | 39 20 00 20 */	li r9, 0x20
/* 814AB84C | 48 00 30 A5 */	bl NWC24iIoctlResourceManager
/* 814AB850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB854 | 7C 7D 1B 78 */	mr r29, r3
/* 814AB858 | 41 80 00 14 */	blt .L_814AB86C
/* 814AB85C | 38 7E 00 60 */	addi r3, r30, 0x60
/* 814AB860 | 83 BE 00 60 */	lwz r29, 0x60(r30)
/* 814AB864 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814AB868 | 90 19 00 00 */	stw r0, 0x0(r25)
.L_814AB86C:
/* 814AB86C | 3C 60 81 67 */	lis r3, lbl_8166E134@ha
/* 814AB870 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AB874 | 38 63 E1 34 */	addi r3, r3, lbl_8166E134@l
/* 814AB878 | 48 00 30 45 */	bl NWC24iCloseResourceManager
/* 814AB87C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AB880 | 41 80 00 08 */	blt .L_814AB888
/* 814AB884 | 7C 7D 1B 78 */	mr r29, r3
.L_814AB888:
/* 814AB888 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814AB88C | 48 08 64 59 */	bl fn_81531CE4
/* 814AB890 | 7F A3 EB 78 */	mr r3, r29
.L_814AB894:
/* 814AB894 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AB898 | 48 14 DC 6D */	bl _restgpr_25
/* 814AB89C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814AB8A0 | 7C 08 03 A6 */	mtlr r0
/* 814AB8A4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814AB8A8 | 4E 80 00 20 */	blr
.endfn NWC24iDownloadNowEx

# .text:0xB74 | 0x814AB8AC | size: 0xE0
.fn NWC24iTrySuspendForOpenLib, global
/* 814AB8AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AB8B0 | 7C 08 02 A6 */	mflr r0
/* 814AB8B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AB8B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814AB8BC | 3F E0 81 0D */	lis r31, nwc24ScdCommandMutex@ha
/* 814AB8C0 | 3B FF 99 00 */	addi r31, r31, nwc24ScdCommandMutex@l
/* 814AB8C4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814AB8C8 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB8CC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB8D0 | 40 82 00 5C */	bne .L_814AB92C
/* 814AB8D4 | 48 08 4F B1 */	bl OSDisableInterrupts
/* 814AB8D8 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB8DC | 7C 7E 1B 78 */	mr r30, r3
/* 814AB8E0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB8E4 | 40 82 00 40 */	bne .L_814AB924
/* 814AB8E8 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814AB8EC | 48 08 62 E5 */	bl fn_81531BD0
/* 814AB8F0 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AB8F4 | 48 08 62 DD */	bl fn_81531BD0
/* 814AB8F8 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 814AB8FC | 38 80 00 00 */	li r4, 0x0
/* 814AB900 | 38 A0 00 20 */	li r5, 0x20
/* 814AB904 | 4B E8 4A 31 */	bl memset
/* 814AB908 | 38 7F 00 60 */	addi r3, r31, 0x60
/* 814AB90C | 38 80 00 00 */	li r4, 0x0
/* 814AB910 | 38 A0 00 20 */	li r5, 0x20
/* 814AB914 | 4B E8 4A 21 */	bl memset
/* 814AB918 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB91C | 60 00 00 01 */	ori r0, r0, 0x1
/* 814AB920 | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814AB924:
/* 814AB924 | 7F C3 F3 78 */	mr r3, r30
/* 814AB928 | 48 08 4F 85 */	bl OSRestoreInterrupts
.L_814AB92C:
/* 814AB92C | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AB930 | 48 08 64 E9 */	bl fn_81531E18
/* 814AB934 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB938 | 40 82 00 0C */	bne .L_814AB944
/* 814AB93C | 38 60 FF EA */	li r3, -0x16
/* 814AB940 | 48 00 00 34 */	b .L_814AB974
.L_814AB944:
/* 814AB944 | 38 60 00 00 */	li r3, 0x0
/* 814AB948 | 48 00 01 21 */	bl ExecTrySuspendScheduler
/* 814AB94C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AB950 | 7C 7E 1B 78 */	mr r30, r3
/* 814AB954 | 41 80 00 14 */	blt .L_814AB968
/* 814AB958 | 80 6D AD D0 */	lwz r3, nwc24ScdOpenCnt@sda21(r0)
/* 814AB95C | 3B C0 00 00 */	li r30, 0x0
/* 814AB960 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814AB964 | 90 0D AD D0 */	stw r0, nwc24ScdOpenCnt@sda21(r0)
.L_814AB968:
/* 814AB968 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AB96C | 48 08 63 79 */	bl fn_81531CE4
/* 814AB970 | 7F C3 F3 78 */	mr r3, r30
.L_814AB974:
/* 814AB974 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AB978 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814AB97C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814AB980 | 7C 08 03 A6 */	mtlr r0
/* 814AB984 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AB988 | 4E 80 00 20 */	blr
.endfn NWC24iTrySuspendForOpenLib

# .text:0xC54 | 0x814AB98C | size: 0xCC
.fn NWC24iResumeForCloseLib, global
/* 814AB98C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AB990 | 7C 08 02 A6 */	mflr r0
/* 814AB994 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AB998 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814AB99C | 3F E0 81 0D */	lis r31, nwc24ScdCommandMutex@ha
/* 814AB9A0 | 3B FF 99 00 */	addi r31, r31, nwc24ScdCommandMutex@l
/* 814AB9A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814AB9A8 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB9AC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB9B0 | 40 82 00 5C */	bne .L_814ABA0C
/* 814AB9B4 | 48 08 4E D1 */	bl OSDisableInterrupts
/* 814AB9B8 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB9BC | 7C 7E 1B 78 */	mr r30, r3
/* 814AB9C0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814AB9C4 | 40 82 00 40 */	bne .L_814ABA04
/* 814AB9C8 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814AB9CC | 48 08 62 05 */	bl fn_81531BD0
/* 814AB9D0 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814AB9D4 | 48 08 61 FD */	bl fn_81531BD0
/* 814AB9D8 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 814AB9DC | 38 80 00 00 */	li r4, 0x0
/* 814AB9E0 | 38 A0 00 20 */	li r5, 0x20
/* 814AB9E4 | 4B E8 49 51 */	bl memset
/* 814AB9E8 | 38 7F 00 60 */	addi r3, r31, 0x60
/* 814AB9EC | 38 80 00 00 */	li r4, 0x0
/* 814AB9F0 | 38 A0 00 20 */	li r5, 0x20
/* 814AB9F4 | 4B E8 49 41 */	bl memset
/* 814AB9F8 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814AB9FC | 60 00 00 01 */	ori r0, r0, 0x1
/* 814ABA00 | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814ABA04:
/* 814ABA04 | 7F C3 F3 78 */	mr r3, r30
/* 814ABA08 | 48 08 4E A5 */	bl OSRestoreInterrupts
.L_814ABA0C:
/* 814ABA0C | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814ABA10 | 48 08 61 F9 */	bl fn_81531C08
/* 814ABA14 | 48 00 01 E1 */	bl ExecResumeScheduler
/* 814ABA18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABA1C | 7C 7E 1B 78 */	mr r30, r3
/* 814ABA20 | 41 80 00 14 */	blt .L_814ABA34
/* 814ABA24 | 80 6D AD D0 */	lwz r3, nwc24ScdOpenCnt@sda21(r0)
/* 814ABA28 | 3B C0 00 00 */	li r30, 0x0
/* 814ABA2C | 38 03 FF FF */	subi r0, r3, 0x1
/* 814ABA30 | 90 0D AD D0 */	stw r0, nwc24ScdOpenCnt@sda21(r0)
.L_814ABA34:
/* 814ABA34 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814ABA38 | 48 08 62 AD */	bl fn_81531CE4
/* 814ABA3C | 7F C3 F3 78 */	mr r3, r30
/* 814ABA40 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814ABA44 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814ABA48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814ABA4C | 7C 08 03 A6 */	mtlr r0
/* 814ABA50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814ABA54 | 4E 80 00 20 */	blr
.endfn NWC24iResumeForCloseLib

# .text:0xD20 | 0x814ABA58 | size: 0x10
.fn ExecSuspendScheduler, local
/* 814ABA58 | 38 60 00 00 */	li r3, 0x0
/* 814ABA5C | 38 80 00 01 */	li r4, 0x1
/* 814ABA60 | 38 A0 00 00 */	li r5, 0x0
/* 814ABA64 | 48 00 01 A0 */	b ExecNoParamCommand
.endfn ExecSuspendScheduler

# .text:0xD30 | 0x814ABA68 | size: 0x18C
.fn ExecTrySuspendScheduler, local
/* 814ABA68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814ABA6C | 7C 08 02 A6 */	mflr r0
/* 814ABA70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814ABA74 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814ABA78 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814ABA7C | 3F C0 81 0D */	lis r30, nwc24ScdCommandMutex@ha
/* 814ABA80 | 3B DE 99 00 */	addi r30, r30, nwc24ScdCommandMutex@l
/* 814ABA84 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814ABA88 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814ABA8C | 7C 7C 1B 78 */	mr r28, r3
/* 814ABA90 | 48 08 84 D1 */	bl OSGetCurrentThread
/* 814ABA94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABA98 | 40 82 00 0C */	bne .L_814ABAA4
/* 814ABA9C | 38 60 FF FF */	li r3, -0x1
/* 814ABAA0 | 48 00 00 28 */	b .L_814ABAC8
.L_814ABAA4:
/* 814ABAA4 | 4B FF 48 55 */	bl NWC24IsMsgLibOpened
/* 814ABAA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABAAC | 40 82 00 10 */	bne .L_814ABABC
/* 814ABAB0 | 4B FF 48 5D */	bl NWC24IsMsgLibOpenedByTool
/* 814ABAB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABAB8 | 41 82 00 0C */	beq .L_814ABAC4
.L_814ABABC:
/* 814ABABC | 38 60 FF F6 */	li r3, -0xa
/* 814ABAC0 | 48 00 00 08 */	b .L_814ABAC8
.L_814ABAC4:
/* 814ABAC4 | 38 60 00 00 */	li r3, 0x0
.L_814ABAC8:
/* 814ABAC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABACC | 40 80 00 08 */	bge .L_814ABAD4
/* 814ABAD0 | 48 00 01 04 */	b .L_814ABBD4
.L_814ABAD4:
/* 814ABAD4 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814ABAD8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814ABADC | 40 82 00 5C */	bne .L_814ABB38
/* 814ABAE0 | 48 08 4D A5 */	bl OSDisableInterrupts
/* 814ABAE4 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814ABAE8 | 7C 7F 1B 78 */	mr r31, r3
/* 814ABAEC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814ABAF0 | 40 82 00 40 */	bne .L_814ABB30
/* 814ABAF4 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814ABAF8 | 48 08 60 D9 */	bl fn_81531BD0
/* 814ABAFC | 38 7E 00 18 */	addi r3, r30, 0x18
/* 814ABB00 | 48 08 60 D1 */	bl fn_81531BD0
/* 814ABB04 | 38 7E 00 40 */	addi r3, r30, 0x40
/* 814ABB08 | 38 80 00 00 */	li r4, 0x0
/* 814ABB0C | 38 A0 00 20 */	li r5, 0x20
/* 814ABB10 | 4B E8 48 25 */	bl memset
/* 814ABB14 | 38 7E 00 60 */	addi r3, r30, 0x60
/* 814ABB18 | 38 80 00 00 */	li r4, 0x0
/* 814ABB1C | 38 A0 00 20 */	li r5, 0x20
/* 814ABB20 | 4B E8 48 15 */	bl memset
/* 814ABB24 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814ABB28 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814ABB2C | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814ABB30:
/* 814ABB30 | 7F E3 FB 78 */	mr r3, r31
/* 814ABB34 | 48 08 4D 79 */	bl OSRestoreInterrupts
.L_814ABB38:
/* 814ABB38 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814ABB3C | 48 08 62 DD */	bl fn_81531E18
/* 814ABB40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABB44 | 40 82 00 0C */	bne .L_814ABB50
/* 814ABB48 | 38 60 FF EA */	li r3, -0x16
/* 814ABB4C | 48 00 00 88 */	b .L_814ABBD4
.L_814ABB50:
/* 814ABB50 | 3F E0 81 67 */	lis r31, lbl_8166E148@ha
/* 814ABB54 | 3C 80 81 67 */	lis r4, lbl_8166E0C8@ha
/* 814ABB58 | 38 7F E1 48 */	addi r3, r31, lbl_8166E148@l
/* 814ABB5C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814ABB60 | 38 84 E0 C8 */	addi r4, r4, lbl_8166E0C8@l
/* 814ABB64 | 38 C0 00 00 */	li r6, 0x0
/* 814ABB68 | 48 00 2C DD */	bl NWC24iOpenResourceManager
/* 814ABB6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABB70 | 7C 7D 1B 78 */	mr r29, r3
/* 814ABB74 | 41 80 00 54 */	blt .L_814ABBC8
/* 814ABB78 | 93 9E 00 40 */	stw r28, 0x40(r30)
/* 814ABB7C | 38 7F E1 48 */	addi r3, r31, lbl_8166E148@l
/* 814ABB80 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814ABB84 | 38 DE 00 40 */	addi r6, r30, 0x40
/* 814ABB88 | 39 1E 00 60 */	addi r8, r30, 0x60
/* 814ABB8C | 38 A0 00 02 */	li r5, 0x2
/* 814ABB90 | 38 E0 00 20 */	li r7, 0x20
/* 814ABB94 | 39 20 00 20 */	li r9, 0x20
/* 814ABB98 | 48 00 2D 59 */	bl NWC24iIoctlResourceManager
/* 814ABB9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABBA0 | 7C 7D 1B 78 */	mr r29, r3
/* 814ABBA4 | 41 80 00 08 */	blt .L_814ABBAC
/* 814ABBA8 | 83 BE 00 60 */	lwz r29, 0x60(r30)
.L_814ABBAC:
/* 814ABBAC | 3C 60 81 67 */	lis r3, lbl_8166E148@ha
/* 814ABBB0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814ABBB4 | 38 63 E1 48 */	addi r3, r3, lbl_8166E148@l
/* 814ABBB8 | 48 00 2D 05 */	bl NWC24iCloseResourceManager
/* 814ABBBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABBC0 | 40 80 00 08 */	bge .L_814ABBC8
/* 814ABBC4 | 7C 7D 1B 78 */	mr r29, r3
.L_814ABBC8:
/* 814ABBC8 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 814ABBCC | 48 08 61 19 */	bl fn_81531CE4
/* 814ABBD0 | 7F A3 EB 78 */	mr r3, r29
.L_814ABBD4:
/* 814ABBD4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814ABBD8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814ABBDC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814ABBE0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814ABBE4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814ABBE8 | 7C 08 03 A6 */	mtlr r0
/* 814ABBEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814ABBF0 | 4E 80 00 20 */	blr
.endfn ExecTrySuspendScheduler

# .text:0xEBC | 0x814ABBF4 | size: 0x10
.fn ExecResumeScheduler, local
/* 814ABBF4 | 38 60 00 00 */	li r3, 0x0
/* 814ABBF8 | 38 80 00 03 */	li r4, 0x3
/* 814ABBFC | 38 A0 00 00 */	li r5, 0x0
/* 814ABC00 | 48 00 00 04 */	b ExecNoParamCommand
.endfn ExecResumeScheduler

# .text:0xECC | 0x814ABC04 | size: 0x160
.fn ExecNoParamCommand, local
/* 814ABC04 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814ABC08 | 7C 08 02 A6 */	mflr r0
/* 814ABC0C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814ABC10 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814ABC14 | 48 14 D8 AD */	bl _savegpr_27
/* 814ABC18 | 3F E0 81 0D */	lis r31, nwc24ScdCommandMutex@ha
/* 814ABC1C | 7C 7B 1B 78 */	mr r27, r3
/* 814ABC20 | 7C 9C 23 78 */	mr r28, r4
/* 814ABC24 | 7C BD 2B 78 */	mr r29, r5
/* 814ABC28 | 3B FF 99 00 */	addi r31, r31, nwc24ScdCommandMutex@l
/* 814ABC2C | 48 08 83 35 */	bl OSGetCurrentThread
/* 814ABC30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABC34 | 40 82 00 0C */	bne .L_814ABC40
/* 814ABC38 | 38 60 FF FF */	li r3, -0x1
/* 814ABC3C | 48 00 01 10 */	b .L_814ABD4C
.L_814ABC40:
/* 814ABC40 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814ABC44 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814ABC48 | 40 82 00 5C */	bne .L_814ABCA4
/* 814ABC4C | 48 08 4C 39 */	bl OSDisableInterrupts
/* 814ABC50 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814ABC54 | 7C 7E 1B 78 */	mr r30, r3
/* 814ABC58 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814ABC5C | 40 82 00 40 */	bne .L_814ABC9C
/* 814ABC60 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814ABC64 | 48 08 5F 6D */	bl fn_81531BD0
/* 814ABC68 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814ABC6C | 48 08 5F 65 */	bl fn_81531BD0
/* 814ABC70 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 814ABC74 | 38 80 00 00 */	li r4, 0x0
/* 814ABC78 | 38 A0 00 20 */	li r5, 0x20
/* 814ABC7C | 4B E8 46 B9 */	bl memset
/* 814ABC80 | 38 7F 00 60 */	addi r3, r31, 0x60
/* 814ABC84 | 38 80 00 00 */	li r4, 0x0
/* 814ABC88 | 38 A0 00 20 */	li r5, 0x20
/* 814ABC8C | 4B E8 46 A9 */	bl memset
/* 814ABC90 | 80 0D AD C8 */	lwz r0, nwc24ScdInitialized@sda21(r0)
/* 814ABC94 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814ABC98 | 90 0D AD C8 */	stw r0, nwc24ScdInitialized@sda21(r0)
.L_814ABC9C:
/* 814ABC9C | 7F C3 F3 78 */	mr r3, r30
/* 814ABCA0 | 48 08 4C 0D */	bl OSRestoreInterrupts
.L_814ABCA4:
/* 814ABCA4 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814ABCA8 | 48 08 5F 61 */	bl fn_81531C08
/* 814ABCAC | 3C 80 81 67 */	lis r4, lbl_8166E0C8@ha
/* 814ABCB0 | 7F 63 DB 78 */	mr r3, r27
/* 814ABCB4 | 38 84 E0 C8 */	addi r4, r4, lbl_8166E0C8@l
/* 814ABCB8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814ABCBC | 38 C0 00 00 */	li r6, 0x0
/* 814ABCC0 | 48 00 2B 85 */	bl NWC24iOpenResourceManager
/* 814ABCC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABCC8 | 7C 7E 1B 78 */	mr r30, r3
/* 814ABCCC | 41 80 00 74 */	blt .L_814ABD40
/* 814ABCD0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814ABCD4 | 7F 63 DB 78 */	mr r3, r27
/* 814ABCD8 | 7F 85 E3 78 */	mr r5, r28
/* 814ABCDC | 39 1F 00 60 */	addi r8, r31, 0x60
/* 814ABCE0 | 38 C0 00 00 */	li r6, 0x0
/* 814ABCE4 | 38 E0 00 00 */	li r7, 0x0
/* 814ABCE8 | 39 20 00 20 */	li r9, 0x20
/* 814ABCEC | 48 00 2C 05 */	bl NWC24iIoctlResourceManager
/* 814ABCF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABCF4 | 7C 7E 1B 78 */	mr r30, r3
/* 814ABCF8 | 41 80 00 30 */	blt .L_814ABD28
/* 814ABCFC | 83 DF 00 60 */	lwz r30, 0x60(r31)
/* 814ABD00 | 2C 1E FF FE */	cmpwi r30, -0x2
/* 814ABD04 | 41 82 00 0C */	beq .L_814ABD10
/* 814ABD08 | 2C 1E FF DF */	cmpwi r30, -0x21
/* 814ABD0C | 40 82 00 1C */	bne .L_814ABD28
.L_814ABD10:
/* 814ABD10 | 38 00 00 00 */	li r0, 0x0
/* 814ABD14 | 7C 1D 00 40 */	cmplw r29, r0
/* 814ABD18 | 41 82 00 10 */	beq .L_814ABD28
/* 814ABD1C | 38 7F 00 60 */	addi r3, r31, 0x60
/* 814ABD20 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814ABD24 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_814ABD28:
/* 814ABD28 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814ABD2C | 7F 63 DB 78 */	mr r3, r27
/* 814ABD30 | 48 00 2B 8D */	bl NWC24iCloseResourceManager
/* 814ABD34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ABD38 | 40 80 00 08 */	bge .L_814ABD40
/* 814ABD3C | 7C 7E 1B 78 */	mr r30, r3
.L_814ABD40:
/* 814ABD40 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 814ABD44 | 48 08 5F A1 */	bl fn_81531CE4
/* 814ABD48 | 7F C3 F3 78 */	mr r3, r30
.L_814ABD4C:
/* 814ABD4C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814ABD50 | 48 14 D7 BD */	bl _restgpr_27
/* 814ABD54 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814ABD58 | 7C 08 03 A6 */	mtlr r0
/* 814ABD5C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814ABD60 | 4E 80 00 20 */	blr
.endfn ExecNoParamCommand

# 0x8166E0B0..0x8166E160 | size: 0xB0
.data
.balign 8

# .data:0x0 | 0x8166E0B0 | size: 0x18
.obj lbl_8166E0B0, global
	.4byte 0x4E574332
	.4byte 0x34694765
	.4byte 0x74536368
	.4byte 0x6564756C
	.4byte 0x65725374
	.4byte 0x61740000
.endobj lbl_8166E0B0

# .data:0x18 | 0x8166E0C8 | size: 0x14
.obj lbl_8166E0C8, global
	.string "/dev/net/kd/request"
.endobj lbl_8166E0C8

# .data:0x2C | 0x8166E0DC | size: 0x14
.obj lbl_8166E0DC, global
	.string "NWC24iSetScriptMode"
.endobj lbl_8166E0DC

# .data:0x40 | 0x8166E0F0 | size: 0xC
.obj lbl_8166E0F0, global
	.4byte 0x646C636E
	.4byte 0x742E6269
	.4byte 0x6E000000
.endobj lbl_8166E0F0

# .data:0x4C | 0x8166E0FC | size: 0x1C
.obj lbl_8166E0FC, global
	.string "NWC24iRequestGenerateUserId"
.endobj lbl_8166E0FC

# .data:0x68 | 0x8166E118 | size: 0x1C
.obj lbl_8166E118, global
	.string "NWC24iRequestRegisterUserId"
.endobj lbl_8166E118

# .data:0x84 | 0x8166E134 | size: 0x14
.obj lbl_8166E134, global
	.string "NWC24iDownloadNowEx"
.endobj lbl_8166E134

# .data:0x98 | 0x8166E148 | size: 0x18
.obj lbl_8166E148, global
	.string "ExecTrySuspendScheduler"
.endobj lbl_8166E148

# 0x81697CA0..0x81697CA8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CA0 | size: 0x4
.obj pTempName$1371, local
	.4byte lbl_8166E0F0
.endobj pTempName$1371

# .sdata:0x4 | 0x81697CA4 | size: 0x4
.obj gap_11_81697CA4_sdata, global
.hidden gap_11_81697CA4_sdata
	.4byte 0x00000000
.endobj gap_11_81697CA4_sdata

# 0x81698E08..0x81698E18 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E08 | size: 0x4
.obj nwc24ScdInitialized, local
	.skip 0x4
.endobj nwc24ScdInitialized

# .sbss:0x4 | 0x81698E0C | size: 0x4
.obj nwc24ScdSuspendCnt, local
	.skip 0x4
.endobj nwc24ScdSuspendCnt

# .sbss:0x8 | 0x81698E10 | size: 0x4
.obj nwc24ScdOpenCnt, local
	.skip 0x4
.endobj nwc24ScdOpenCnt

# .sbss:0xC | 0x81698E14 | size: 0x4
.obj gap_12_81698E14_sbss, global
.hidden gap_12_81698E14_sbss
	.skip 0x4
.endobj gap_12_81698E14_sbss
