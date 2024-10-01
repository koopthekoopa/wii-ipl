.include "macros.inc"
.file "NWC24Time.c"

# 0x810C9A80..0x810C9B60 | size: 0xE0
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C9A80 | size: 0x80
.obj buf$677, local
	.skip 0x80
.endobj buf$677

# .bss:0x80 | 0x810C9B00 | size: 0x18
.obj nwc24TimeCommandMutex, local
	.skip 0x18
.endobj nwc24TimeCommandMutex

# .bss:0x98 | 0x810C9B18 | size: 0x20
.obj nwc24TimeCommonBuffer, local
	.skip 0x20
.endobj nwc24TimeCommonBuffer

# .bss:0xB8 | 0x810C9B38 | size: 0x20
.obj nwc24TimeCommonResult, local
	.skip 0x20
.endobj nwc24TimeCommonResult

# .bss:0xD8 | 0x810C9B58 | size: 0x8
.obj gap_00_810C9B58_bss, global
.hidden gap_00_810C9B58_bss
	.skip 0x8
.endobj gap_00_810C9B58_bss

# 0x814AE3B4..0x814AE844 | size: 0x490
.text
.balign 4

# .text:0x0 | 0x814AE3B4 | size: 0x140
.fn NWC24iGetUniversalTime, global
/* 814AE3B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AE3B8 | 7C 08 02 A6 */	mflr r0
/* 814AE3BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE3C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AE3C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814AE3C8 | 7C 7F 1B 78 */	mr r31, r3
/* 814AE3CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814AE3D0 | 40 82 00 18 */	bne .L_814AE3E8
/* 814AE3D4 | 38 00 00 00 */	li r0, 0x0
/* 814AE3D8 | 38 60 FF FD */	li r3, -0x3
/* 814AE3DC | 90 0D AD E4 */	stw r0, nwc24TimeDifference+0x4@sda21(r0)
/* 814AE3E0 | 90 0D AD E0 */	stw r0, nwc24TimeDifference@sda21(r0)
/* 814AE3E4 | 48 00 00 F8 */	b .L_814AE4DC
.L_814AE3E8:
/* 814AE3E8 | 80 0D AD E8 */	lwz r0, whenCached$712@sda21(r0)
/* 814AE3EC | 80 6D AD EC */	lwz r3, whenCached$712+0x4@sda21(r0)
/* 814AE3F0 | 7C 60 03 79 */	or. r0, r3, r0
/* 814AE3F4 | 41 82 00 50 */	beq .L_814AE444
/* 814AE3F8 | 48 08 79 41 */	bl __OSGetSystemTime
/* 814AE3FC | 3C A0 80 00 */	lis r5, 0x8000
/* 814AE400 | 81 0D AD EC */	lwz r8, whenCached$712+0x4@sda21(r0)
/* 814AE404 | 80 C5 00 F8 */	lwz r6, 0xf8(r5)
/* 814AE408 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 814AE40C | 80 ED AD E8 */	lwz r7, whenCached$712@sda21(r0)
/* 814AE410 | 38 A0 00 00 */	li r5, 0x0
/* 814AE414 | 54 C3 F0 BE */	srwi r3, r6, 2
/* 814AE418 | 7C C8 18 14 */	addc r6, r8, r3
/* 814AE41C | 7C 67 29 14 */	adde r3, r7, r5
/* 814AE420 | 6C 65 80 00 */	xoris r5, r3, 0x8000
/* 814AE424 | 7C 66 20 10 */	subfc r3, r6, r4
/* 814AE428 | 7C A5 01 10 */	subfe r5, r5, r0
/* 814AE42C | 7C A0 01 10 */	subfe r5, r0, r0
/* 814AE430 | 7C A5 00 D1 */	neg. r5, r5
/* 814AE434 | 41 82 00 10 */	beq .L_814AE444
/* 814AE438 | 80 0D AD DC */	lwz r0, nwc24TimeRtc@sda21(r0)
/* 814AE43C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AE440 | 40 82 00 78 */	bne .L_814AE4B8
.L_814AE444:
/* 814AE444 | 38 6D AD E0 */	li r3, nwc24TimeDifference@sda21
/* 814AE448 | 48 00 00 AD */	bl NWC24iGetTimeDifference
/* 814AE44C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE450 | 40 80 00 08 */	bge .L_814AE458
/* 814AE454 | 48 00 00 88 */	b .L_814AE4DC
.L_814AE458:
/* 814AE458 | 48 0B 9E ED */	bl fn_81568344
/* 814AE45C | 28 03 00 02 */	cmplwi r3, 0x2
/* 814AE460 | 40 82 00 0C */	bne .L_814AE46C
/* 814AE464 | 38 60 FF FF */	li r3, -0x1
/* 814AE468 | 48 00 00 38 */	b .L_814AE4A0
.L_814AE46C:
/* 814AE46C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE470 | 40 82 FF E8 */	bne .L_814AE458
/* 814AE474 | 48 0B BE 41 */	bl SCGetCounterBias
/* 814AE478 | 7C 7E 1B 78 */	mr r30, r3
/* 814AE47C | 48 08 78 05 */	bl OSGetTime
/* 814AE480 | 3C C0 80 00 */	lis r6, 0x8000
/* 814AE484 | 38 A0 00 00 */	li r5, 0x0
/* 814AE488 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 814AE48C | 54 06 F0 BE */	srwi r6, r0, 2
/* 814AE490 | 48 14 B1 81 */	bl __div2i
/* 814AE494 | 7C 1E 20 10 */	subfc r0, r30, r4
/* 814AE498 | 38 60 00 00 */	li r3, 0x0
/* 814AE49C | 90 0D AD DC */	stw r0, nwc24TimeRtc@sda21(r0)
.L_814AE4A0:
/* 814AE4A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE4A4 | 41 82 00 08 */	beq .L_814AE4AC
/* 814AE4A8 | 48 00 00 34 */	b .L_814AE4DC
.L_814AE4AC:
/* 814AE4AC | 48 08 78 8D */	bl __OSGetSystemTime
/* 814AE4B0 | 90 8D AD EC */	stw r4, whenCached$712+0x4@sda21(r0)
/* 814AE4B4 | 90 6D AD E8 */	stw r3, whenCached$712@sda21(r0)
.L_814AE4B8:
/* 814AE4B8 | 80 CD AD E4 */	lwz r6, nwc24TimeDifference+0x4@sda21(r0)
/* 814AE4BC | 38 00 00 00 */	li r0, 0x0
/* 814AE4C0 | 80 8D AD DC */	lwz r4, nwc24TimeRtc@sda21(r0)
/* 814AE4C4 | 38 60 00 00 */	li r3, 0x0
/* 814AE4C8 | 80 AD AD E0 */	lwz r5, nwc24TimeDifference@sda21(r0)
/* 814AE4CC | 7C 86 20 14 */	addc r4, r6, r4
/* 814AE4D0 | 7C 05 01 14 */	adde r0, r5, r0
/* 814AE4D4 | 90 9F 00 04 */	stw r4, 0x4(r31)
/* 814AE4D8 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814AE4DC:
/* 814AE4DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AE4E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814AE4E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814AE4E8 | 7C 08 03 A6 */	mtlr r0
/* 814AE4EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AE4F0 | 4E 80 00 20 */	blr
.endfn NWC24iGetUniversalTime

# .text:0x140 | 0x814AE4F4 | size: 0x174
.fn NWC24iGetTimeDifference, global
/* 814AE4F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AE4F8 | 7C 08 02 A6 */	mflr r0
/* 814AE4FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AE500 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AE504 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AE508 | 3F C0 81 0D */	lis r30, buf$677@ha
/* 814AE50C | 3B DE 9A 80 */	addi r30, r30, buf$677@l
/* 814AE510 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814AE514 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814AE518 | 7C 7C 1B 78 */	mr r28, r3
/* 814AE51C | 48 08 5A 45 */	bl OSGetCurrentThread
/* 814AE520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE524 | 40 82 00 0C */	bne .L_814AE530
/* 814AE528 | 38 60 FF FF */	li r3, -0x1
/* 814AE52C | 48 00 00 08 */	b .L_814AE534
.L_814AE530:
/* 814AE530 | 38 60 00 00 */	li r3, 0x0
.L_814AE534:
/* 814AE534 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE538 | 40 80 00 08 */	bge .L_814AE540
/* 814AE53C | 48 00 01 0C */	b .L_814AE648
.L_814AE540:
/* 814AE540 | 80 0D AD D8 */	lwz r0, nwc24TimeInitialized@sda21(r0)
/* 814AE544 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AE548 | 40 82 00 50 */	bne .L_814AE598
/* 814AE54C | 48 08 23 39 */	bl OSDisableInterrupts
/* 814AE550 | 80 0D AD D8 */	lwz r0, nwc24TimeInitialized@sda21(r0)
/* 814AE554 | 7C 7F 1B 78 */	mr r31, r3
/* 814AE558 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AE55C | 40 82 00 34 */	bne .L_814AE590
/* 814AE560 | 38 7E 00 80 */	addi r3, r30, 0x80
/* 814AE564 | 48 08 36 6D */	bl fn_81531BD0
/* 814AE568 | 38 7E 00 A0 */	addi r3, r30, 0xa0
/* 814AE56C | 38 80 00 00 */	li r4, 0x0
/* 814AE570 | 38 A0 00 20 */	li r5, 0x20
/* 814AE574 | 4B E8 1D C1 */	bl memset
/* 814AE578 | 38 7E 00 C0 */	addi r3, r30, 0xc0
/* 814AE57C | 38 80 00 00 */	li r4, 0x0
/* 814AE580 | 38 A0 00 20 */	li r5, 0x20
/* 814AE584 | 4B E8 1D B1 */	bl memset
/* 814AE588 | 38 00 00 01 */	li r0, 0x1
/* 814AE58C | 90 0D AD D8 */	stw r0, nwc24TimeInitialized@sda21(r0)
.L_814AE590:
/* 814AE590 | 7F E3 FB 78 */	mr r3, r31
/* 814AE594 | 48 08 23 19 */	bl OSRestoreInterrupts
.L_814AE598:
/* 814AE598 | 38 7E 00 80 */	addi r3, r30, 0x80
/* 814AE59C | 48 08 36 6D */	bl fn_81531C08
/* 814AE5A0 | 3F E0 81 67 */	lis r31, lbl_8166E1A0@ha
/* 814AE5A4 | 3C 80 81 67 */	lis r4, lbl_8166E1B8@ha
/* 814AE5A8 | 38 7F E1 A0 */	addi r3, r31, lbl_8166E1A0@l
/* 814AE5AC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AE5B0 | 38 84 E1 B8 */	addi r4, r4, lbl_8166E1B8@l
/* 814AE5B4 | 38 C0 00 00 */	li r6, 0x0
/* 814AE5B8 | 48 00 02 8D */	bl NWC24iOpenResourceManager
/* 814AE5BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE5C0 | 7C 7D 1B 78 */	mr r29, r3
/* 814AE5C4 | 41 80 00 78 */	blt .L_814AE63C
/* 814AE5C8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AE5CC | 38 7F E1 A0 */	addi r3, r31, lbl_8166E1A0@l
/* 814AE5D0 | 39 1E 00 C0 */	addi r8, r30, 0xc0
/* 814AE5D4 | 38 A0 00 18 */	li r5, 0x18
/* 814AE5D8 | 38 C0 00 00 */	li r6, 0x0
/* 814AE5DC | 38 E0 00 00 */	li r7, 0x0
/* 814AE5E0 | 39 20 00 20 */	li r9, 0x20
/* 814AE5E4 | 48 00 03 0D */	bl NWC24iIoctlResourceManager
/* 814AE5E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE5EC | 7C 7D 1B 78 */	mr r29, r3
/* 814AE5F0 | 41 80 00 30 */	blt .L_814AE620
/* 814AE5F4 | 83 BE 00 C0 */	lwz r29, 0xc0(r30)
/* 814AE5F8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AE5FC | 40 82 00 24 */	bne .L_814AE620
/* 814AE600 | 38 00 00 00 */	li r0, 0x0
/* 814AE604 | 7C 1C 00 40 */	cmplw r28, r0
/* 814AE608 | 41 82 00 18 */	beq .L_814AE620
/* 814AE60C | 38 7E 00 C0 */	addi r3, r30, 0xc0
/* 814AE610 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814AE614 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814AE618 | 90 7C 00 04 */	stw r3, 0x4(r28)
/* 814AE61C | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_814AE620:
/* 814AE620 | 3C 60 81 67 */	lis r3, lbl_8166E1A0@ha
/* 814AE624 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AE628 | 38 63 E1 A0 */	addi r3, r3, lbl_8166E1A0@l
/* 814AE62C | 48 00 02 91 */	bl NWC24iCloseResourceManager
/* 814AE630 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AE634 | 41 80 00 08 */	blt .L_814AE63C
/* 814AE638 | 7C 7D 1B 78 */	mr r29, r3
.L_814AE63C:
/* 814AE63C | 38 7E 00 80 */	addi r3, r30, 0x80
/* 814AE640 | 48 08 36 A5 */	bl fn_81531CE4
/* 814AE644 | 7F A3 EB 78 */	mr r3, r29
.L_814AE648:
/* 814AE648 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AE64C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AE650 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AE654 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814AE658 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814AE65C | 7C 08 03 A6 */	mtlr r0
/* 814AE660 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AE664 | 4E 80 00 20 */	blr
.endfn NWC24iGetTimeDifference

# .text:0x2B4 | 0x814AE668 | size: 0x148
.fn NWC24iSetRtcCounter, global
/* 814AE668 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814AE66C | 7C 08 02 A6 */	mflr r0
/* 814AE670 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814AE674 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AE678 | 48 14 AE 49 */	bl _savegpr_27
/* 814AE67C | 3F C0 81 0D */	lis r30, buf$677@ha
/* 814AE680 | 7C 7B 1B 78 */	mr r27, r3
/* 814AE684 | 7C 9C 23 78 */	mr r28, r4
/* 814AE688 | 3B DE 9A 80 */	addi r30, r30, buf$677@l
/* 814AE68C | 48 08 58 D5 */	bl OSGetCurrentThread
/* 814AE690 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE694 | 40 82 00 0C */	bne .L_814AE6A0
/* 814AE698 | 38 60 FF FF */	li r3, -0x1
/* 814AE69C | 48 00 00 08 */	b .L_814AE6A4
.L_814AE6A0:
/* 814AE6A0 | 38 60 00 00 */	li r3, 0x0
.L_814AE6A4:
/* 814AE6A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE6A8 | 40 80 00 08 */	bge .L_814AE6B0
/* 814AE6AC | 48 00 00 EC */	b .L_814AE798
.L_814AE6B0:
/* 814AE6B0 | 80 0D AD D8 */	lwz r0, nwc24TimeInitialized@sda21(r0)
/* 814AE6B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AE6B8 | 40 82 00 50 */	bne .L_814AE708
/* 814AE6BC | 48 08 21 C9 */	bl OSDisableInterrupts
/* 814AE6C0 | 80 0D AD D8 */	lwz r0, nwc24TimeInitialized@sda21(r0)
/* 814AE6C4 | 7C 7F 1B 78 */	mr r31, r3
/* 814AE6C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AE6CC | 40 82 00 34 */	bne .L_814AE700
/* 814AE6D0 | 38 7E 00 80 */	addi r3, r30, 0x80
/* 814AE6D4 | 48 08 34 FD */	bl fn_81531BD0
/* 814AE6D8 | 38 7E 00 A0 */	addi r3, r30, 0xa0
/* 814AE6DC | 38 80 00 00 */	li r4, 0x0
/* 814AE6E0 | 38 A0 00 20 */	li r5, 0x20
/* 814AE6E4 | 4B E8 1C 51 */	bl memset
/* 814AE6E8 | 38 7E 00 C0 */	addi r3, r30, 0xc0
/* 814AE6EC | 38 80 00 00 */	li r4, 0x0
/* 814AE6F0 | 38 A0 00 20 */	li r5, 0x20
/* 814AE6F4 | 4B E8 1C 41 */	bl memset
/* 814AE6F8 | 38 00 00 01 */	li r0, 0x1
/* 814AE6FC | 90 0D AD D8 */	stw r0, nwc24TimeInitialized@sda21(r0)
.L_814AE700:
/* 814AE700 | 7F E3 FB 78 */	mr r3, r31
/* 814AE704 | 48 08 21 A9 */	bl OSRestoreInterrupts
.L_814AE708:
/* 814AE708 | 38 7E 00 80 */	addi r3, r30, 0x80
/* 814AE70C | 48 08 34 FD */	bl fn_81531C08
/* 814AE710 | 3F E0 81 67 */	lis r31, lbl_8166E1CC@ha
/* 814AE714 | 3C 80 81 67 */	lis r4, lbl_8166E1B8@ha
/* 814AE718 | 38 7F E1 CC */	addi r3, r31, lbl_8166E1CC@l
/* 814AE71C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AE720 | 38 84 E1 B8 */	addi r4, r4, lbl_8166E1B8@l
/* 814AE724 | 38 C0 00 00 */	li r6, 0x0
/* 814AE728 | 48 00 01 1D */	bl NWC24iOpenResourceManager
/* 814AE72C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE730 | 7C 7D 1B 78 */	mr r29, r3
/* 814AE734 | 41 80 00 58 */	blt .L_814AE78C
/* 814AE738 | 38 DE 00 A0 */	addi r6, r30, 0xa0
/* 814AE73C | 93 7E 00 A0 */	stw r27, 0xa0(r30)
/* 814AE740 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AE744 | 38 7F E1 CC */	addi r3, r31, lbl_8166E1CC@l
/* 814AE748 | 93 86 00 04 */	stw r28, 0x4(r6)
/* 814AE74C | 39 1E 00 C0 */	addi r8, r30, 0xc0
/* 814AE750 | 38 A0 00 17 */	li r5, 0x17
/* 814AE754 | 38 E0 00 20 */	li r7, 0x20
/* 814AE758 | 39 20 00 20 */	li r9, 0x20
/* 814AE75C | 48 00 01 95 */	bl NWC24iIoctlResourceManager
/* 814AE760 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE764 | 7C 7D 1B 78 */	mr r29, r3
/* 814AE768 | 41 80 00 08 */	blt .L_814AE770
/* 814AE76C | 83 BE 00 C0 */	lwz r29, 0xc0(r30)
.L_814AE770:
/* 814AE770 | 3C 60 81 67 */	lis r3, lbl_8166E1CC@ha
/* 814AE774 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AE778 | 38 63 E1 CC */	addi r3, r3, lbl_8166E1CC@l
/* 814AE77C | 48 00 01 41 */	bl NWC24iCloseResourceManager
/* 814AE780 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AE784 | 41 80 00 08 */	blt .L_814AE78C
/* 814AE788 | 7C 7D 1B 78 */	mr r29, r3
.L_814AE78C:
/* 814AE78C | 38 7E 00 80 */	addi r3, r30, 0x80
/* 814AE790 | 48 08 35 55 */	bl fn_81531CE4
/* 814AE794 | 7F A3 EB 78 */	mr r3, r29
.L_814AE798:
/* 814AE798 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814AE79C | 48 14 AD 71 */	bl _restgpr_27
/* 814AE7A0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814AE7A4 | 7C 08 03 A6 */	mtlr r0
/* 814AE7A8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814AE7AC | 4E 80 00 20 */	blr
.endfn NWC24iSetRtcCounter

# .text:0x3FC | 0x814AE7B0 | size: 0x94
.fn NWC24iSynchronizeRtcCounter, global
/* 814AE7B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AE7B4 | 7C 08 02 A6 */	mflr r0
/* 814AE7B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AE7BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814AE7C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814AE7C4 | 7C 7E 1B 78 */	mr r30, r3
.L_814AE7C8:
/* 814AE7C8 | 48 0B 9B 7D */	bl fn_81568344
/* 814AE7CC | 28 03 00 02 */	cmplwi r3, 0x2
/* 814AE7D0 | 40 82 00 0C */	bne .L_814AE7DC
/* 814AE7D4 | 38 60 FF FF */	li r3, -0x1
/* 814AE7D8 | 48 00 00 34 */	b .L_814AE80C
.L_814AE7DC:
/* 814AE7DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE7E0 | 40 82 FF E8 */	bne .L_814AE7C8
/* 814AE7E4 | 48 0B BA D1 */	bl SCGetCounterBias
/* 814AE7E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814AE7EC | 48 08 74 95 */	bl OSGetTime
/* 814AE7F0 | 3C C0 80 00 */	lis r6, 0x8000
/* 814AE7F4 | 38 A0 00 00 */	li r5, 0x0
/* 814AE7F8 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 814AE7FC | 54 06 F0 BE */	srwi r6, r0, 2
/* 814AE800 | 48 14 AE 11 */	bl __div2i
/* 814AE804 | 7F FF 20 10 */	subfc r31, r31, r4
/* 814AE808 | 38 60 00 00 */	li r3, 0x0
.L_814AE80C:
/* 814AE80C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE810 | 41 82 00 08 */	beq .L_814AE818
/* 814AE814 | 48 00 00 18 */	b .L_814AE82C
.L_814AE818:
/* 814AE818 | 7C 1E 00 D0 */	neg r0, r30
/* 814AE81C | 7F E3 FB 78 */	mr r3, r31
/* 814AE820 | 7C 00 F3 78 */	or r0, r0, r30
/* 814AE824 | 54 04 0F FE */	srwi r4, r0, 31
/* 814AE828 | 4B FF FE 41 */	bl NWC24iSetRtcCounter
.L_814AE82C:
/* 814AE82C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AE830 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814AE834 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814AE838 | 7C 08 03 A6 */	mtlr r0
/* 814AE83C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AE840 | 4E 80 00 20 */	blr
.endfn NWC24iSynchronizeRtcCounter

# 0x8166E1A0..0x8166E1E0 | size: 0x40
.data
.balign 8

# .data:0x0 | 0x8166E1A0 | size: 0x18
.obj lbl_8166E1A0, global
	.string "NWC24iGetTimeDifference"
.endobj lbl_8166E1A0

# .data:0x18 | 0x8166E1B8 | size: 0x14
.obj lbl_8166E1B8, global
	.4byte 0x2F646576
	.4byte 0x2F6E6574
	.4byte 0x2F6B642F
	.4byte 0x74696D65
	.4byte 0x00000000
.endobj lbl_8166E1B8

# .data:0x2C | 0x8166E1CC | size: 0x14
.obj lbl_8166E1CC, global
	.string "NWC24iSetRtcCounter"
.endobj lbl_8166E1CC

# 0x81698E18..0x81698E30 | size: 0x18
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E18 | size: 0x4
.obj nwc24TimeInitialized, local
	.skip 0x4
.endobj nwc24TimeInitialized

# .sbss:0x4 | 0x81698E1C | size: 0x4
.obj nwc24TimeRtc, local
	.skip 0x4
.endobj nwc24TimeRtc

# .sbss:0x8 | 0x81698E20 | size: 0x8
.obj nwc24TimeDifference, local
	.skip 0x8
.endobj nwc24TimeDifference

# .sbss:0x10 | 0x81698E28 | size: 0x8
.obj whenCached$712, local
	.skip 0x8
.endobj whenCached$712
