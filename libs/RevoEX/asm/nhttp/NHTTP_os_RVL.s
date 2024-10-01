.include "macros.inc"
.file "NHTTP_os_RVL.c"

# 0x81495FAC..0x814961D0 | size: 0x224
.text
.balign 4

# .text:0x0 | 0x81495FAC | size: 0xC
.fn NHTTPi_InitMutexInfo, global
/* 81495FAC | 38 00 00 00 */	li r0, 0x0
/* 81495FB0 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81495FB4 | 4E 80 00 20 */	blr
.endfn NHTTPi_InitMutexInfo

# .text:0xC | 0x81495FB8 | size: 0x40
.fn NHTTPi_initLockReqList, global
/* 81495FB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81495FBC | 7C 08 02 A6 */	mflr r0
/* 81495FC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81495FC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81495FC8 | 7C 7F 1B 78 */	mr r31, r3
/* 81495FCC | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81495FD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81495FD4 | 40 82 00 10 */	bne .L_81495FE4
/* 81495FD8 | 48 09 BB F9 */	bl fn_81531BD0
/* 81495FDC | 38 00 00 01 */	li r0, 0x1
/* 81495FE0 | 90 1F 00 18 */	stw r0, 0x18(r31)
.L_81495FE4:
/* 81495FE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81495FE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81495FEC | 7C 08 03 A6 */	mtlr r0
/* 81495FF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81495FF4 | 4E 80 00 20 */	blr
.endfn NHTTPi_initLockReqList

# .text:0x4C | 0x81495FF8 | size: 0x4
.fn NHTTPi_exitLockReqList, global
/* 81495FF8 | 4E 80 00 20 */	blr
.endfn NHTTPi_exitLockReqList

# .text:0x50 | 0x81495FFC | size: 0x4
.fn NHTTPi_lockReqList, global
/* 81495FFC | 48 09 BC 0C */	b fn_81531C08
.endfn NHTTPi_lockReqList

# .text:0x54 | 0x81496000 | size: 0x4
.fn NHTTPi_unlockReqList, global
/* 81496000 | 48 09 BC E4 */	b fn_81531CE4
.endfn NHTTPi_unlockReqList

# .text:0x58 | 0x81496004 | size: 0x94
.fn NHTTPi_createCommThread, global
/* 81496004 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81496008 | 7C 08 02 A6 */	mflr r0
/* 8149600C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81496010 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81496014 | 7C BF 2B 78 */	mr r31, r5
/* 81496018 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149601C | 7C 9E 23 78 */	mr r30, r4
/* 81496020 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81496024 | 7C 7D 1B 78 */	mr r29, r3
/* 81496028 | 48 00 27 65 */	bl NHTTPi_IsCreateCommThreadMessageQueue
/* 8149602C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496030 | 40 82 00 1C */	bne .L_8149604C
/* 81496034 | 7F A3 EB 78 */	mr r3, r29
/* 81496038 | 38 9D 00 20 */	addi r4, r29, 0x20
/* 8149603C | 38 A0 00 03 */	li r5, 0x3
/* 81496040 | 48 09 AF E1 */	bl OSInitMessageQueue
/* 81496044 | 7F A3 EB 78 */	mr r3, r29
/* 81496048 | 48 00 27 39 */	bl NHTTPi_IsCreateCommThreadMessageQueueOn
.L_8149604C:
/* 8149604C | 3C 80 81 49 */	lis r4, NHTTPi_CommThreadProc@ha
/* 81496050 | 7F C8 F3 78 */	mr r8, r30
/* 81496054 | 38 7D 00 30 */	addi r3, r29, 0x30
/* 81496058 | 38 DF 20 00 */	addi r6, r31, 0x2000
/* 8149605C | 38 84 61 AC */	addi r4, r4, NHTTPi_CommThreadProc@l
/* 81496060 | 38 A0 00 00 */	li r5, 0x0
/* 81496064 | 38 E0 20 00 */	li r7, 0x2000
/* 81496068 | 39 20 00 00 */	li r9, 0x0
/* 8149606C | 48 09 E4 DD */	bl OSCreateThread
/* 81496070 | 38 7D 00 30 */	addi r3, r29, 0x30
/* 81496074 | 48 09 EB DD */	bl OSResumeThread
/* 81496078 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149607C | 38 60 00 01 */	li r3, 0x1
/* 81496080 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81496084 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81496088 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149608C | 7C 08 03 A6 */	mtlr r0
/* 81496090 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81496094 | 4E 80 00 20 */	blr
.endfn NHTTPi_createCommThread

# .text:0xEC | 0x81496098 | size: 0x48
.fn NHTTPi_destroyCommThread, global
/* 81496098 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149609C | 7C 08 02 A6 */	mflr r0
/* 814960A0 | 38 A0 00 00 */	li r5, 0x0
/* 814960A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814960A8 | 38 00 00 01 */	li r0, 0x1
/* 814960AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814960B0 | 7C 7F 1B 78 */	mr r31, r3
/* 814960B4 | 90 04 07 DC */	stw r0, 0x7dc(r4)
/* 814960B8 | 38 80 00 00 */	li r4, 0x0
/* 814960BC | 48 09 AF C5 */	bl OSSendMessage
/* 814960C0 | 38 7F 00 30 */	addi r3, r31, 0x30
/* 814960C4 | 38 80 00 00 */	li r4, 0x0
/* 814960C8 | 48 09 E9 A9 */	bl OSJoinThread
/* 814960CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814960D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814960D4 | 7C 08 03 A6 */	mtlr r0
/* 814960D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814960DC | 4E 80 00 20 */	blr
.endfn NHTTPi_destroyCommThread

# .text:0x134 | 0x814960E0 | size: 0x28
.fn NHTTPi_idleCommThread, global
/* 814960E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814960E4 | 7C 08 02 A6 */	mflr r0
/* 814960E8 | 38 A0 00 01 */	li r5, 0x1
/* 814960EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814960F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814960F4 | 48 09 B0 55 */	bl OSReceiveMessage
/* 814960F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814960FC | 7C 08 03 A6 */	mtlr r0
/* 81496100 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81496104 | 4E 80 00 20 */	blr
.endfn NHTTPi_idleCommThread

# .text:0x15C | 0x81496108 | size: 0xC
.fn NHTTPi_kickCommThread, global
/* 81496108 | 38 80 00 00 */	li r4, 0x0
/* 8149610C | 38 A0 00 00 */	li r5, 0x0
/* 81496110 | 48 09 AF 70 */	b OSSendMessage
.endfn NHTTPi_kickCommThread

# .text:0x168 | 0x81496114 | size: 0x98
.fn NHTTPi_CheckCurrentThread, global
/* 81496114 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81496118 | 7C 08 02 A6 */	mflr r0
/* 8149611C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81496120 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81496124 | 3F E0 81 67 */	lis r31, lbl_8166D100@ha
/* 81496128 | 3B FF D1 00 */	addi r31, r31, lbl_8166D100@l
/* 8149612C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81496130 | 7C 9E 23 78 */	mr r30, r4
/* 81496134 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81496138 | 7C 7D 1B 78 */	mr r29, r3
/* 8149613C | 48 09 DE 25 */	bl OSGetCurrentThread
/* 81496140 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496144 | 38 1D 00 30 */	addi r0, r29, 0x30
/* 81496148 | 41 82 00 48 */	beq .L_81496190
/* 8149614C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81496150 | 40 82 00 0C */	bne .L_8149615C
/* 81496154 | 7C 03 00 40 */	cmplw r3, r0
/* 81496158 | 40 82 00 14 */	bne .L_8149616C
.L_8149615C:
/* 8149615C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81496160 | 41 82 00 30 */	beq .L_81496190
/* 81496164 | 7C 03 00 40 */	cmplw r3, r0
/* 81496168 | 40 82 00 28 */	bne .L_81496190
.L_8149616C:
/* 8149616C | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 81496170 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 81496174 | 4C C6 31 82 */	crclr cr1eq
/* 81496178 | 48 09 85 29 */	bl OSReport
/* 8149617C | 38 7F 00 30 */	addi r3, r31, 0x30
/* 81496180 | 38 80 00 DF */	li r4, 0xdf
/* 81496184 | 38 AD 9A 88 */	li r5, lbl_81697AC8@sda21
/* 81496188 | 4C C6 31 82 */	crclr cr1eq
/* 8149618C | 48 09 85 A5 */	bl OSPanic
.L_81496190:
/* 81496190 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81496194 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81496198 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149619C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814961A0 | 7C 08 03 A6 */	mtlr r0
/* 814961A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814961A8 | 4E 80 00 20 */	blr
.endfn NHTTPi_CheckCurrentThread

# .text:0x200 | 0x814961AC | size: 0x24
.fn NHTTPi_CommThreadProc, global
/* 814961AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814961B0 | 7C 08 02 A6 */	mflr r0
/* 814961B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814961B8 | 48 00 4F D5 */	bl NHTTPi_CommThreadProcMain
/* 814961BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814961C0 | 38 60 00 00 */	li r3, 0x0
/* 814961C4 | 7C 08 03 A6 */	mtlr r0
/* 814961C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814961CC | 4E 80 00 20 */	blr
.endfn NHTTPi_CommThreadProc

# 0x8166D100..0x8166D140 | size: 0x40
.data
.balign 8

# .data:0x0 | 0x8166D100 | size: 0x40
.obj lbl_8166D100, global
	.4byte 0x4E485454
	.4byte 0x50695F43
	.4byte 0x6865636B
	.4byte 0x43757272
	.4byte 0x656E7454
	.4byte 0x68726561
	.4byte 0x64000000
	.4byte 0x25733A69
	.4byte 0x6C6C6567
	.4byte 0x616C2074
	.4byte 0x68726561
	.4byte 0x640A0000
	.4byte 0x4E485454
	.4byte 0x505F6F73
	.4byte 0x5F52564C
	.4byte 0x2E630000
.endobj lbl_8166D100

# 0x81697AC8..0x81697AD0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697AC8 | size: 0x8
.obj lbl_81697AC8, global
	.4byte 0x68616C74
	.4byte 0x0A000000
.endobj lbl_81697AC8
