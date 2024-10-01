.include "macros.inc"
.file "d_nhttp_private.c"

# 0x8149B390..0x8149B8B8 | size: 0x528
.text
.balign 4

# .text:0x0 | 0x8149B390 | size: 0x148
.fn NHTTPCreateConnection, global
/* 8149B390 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149B394 | 7C 08 02 A6 */	mflr r0
/* 8149B398 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149B39C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149B3A0 | 48 15 E1 0D */	bl _savegpr_22
/* 8149B3A4 | 7C 76 1B 78 */	mr r22, r3
/* 8149B3A8 | 7C 97 23 78 */	mr r23, r4
/* 8149B3AC | 7C B8 2B 78 */	mr r24, r5
/* 8149B3B0 | 7C D9 33 78 */	mr r25, r6
/* 8149B3B4 | 7C FA 3B 78 */	mr r26, r7
/* 8149B3B8 | 7D 1B 43 78 */	mr r27, r8
/* 8149B3BC | 48 00 18 7D */	bl NHTTPi_GetSystemInfoP
/* 8149B3C0 | 7C 7D 1B 78 */	mr r29, r3
/* 8149B3C4 | 48 00 18 DD */	bl NHTTPi_GetBgnEndInfoP
/* 8149B3C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8149B3CC | 7F A3 EB 78 */	mr r3, r29
/* 8149B3D0 | 48 00 18 ED */	bl NHTTPi_GetMutexInfoP
/* 8149B3D4 | 3F C0 00 01 */	lis r30, 0x1
/* 8149B3D8 | 7C 7C 1B 78 */	mr r28, r3
/* 8149B3DC | 38 7E 80 60 */	subi r3, r30, 0x7fa0
/* 8149B3E0 | 38 80 00 20 */	li r4, 0x20
/* 8149B3E4 | 4B FF A4 95 */	bl NHTTPi_alloc
/* 8149B3E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B3EC | 7C 7D 1B 78 */	mr r29, r3
/* 8149B3F0 | 40 82 00 18 */	bne .L_8149B408
/* 8149B3F4 | 7F E3 FB 78 */	mr r3, r31
/* 8149B3F8 | 38 80 00 01 */	li r4, 0x1
/* 8149B3FC | 4B FF A5 1D */	bl NHTTPi_SetError
/* 8149B400 | 38 60 00 00 */	li r3, 0x0
/* 8149B404 | 48 00 00 BC */	b .L_8149B4C0
.L_8149B408:
/* 8149B408 | 38 9E 80 60 */	subi r4, r30, 0x7fa0
/* 8149B40C | 4B FF CA AD */	bl NHTTPi_memclr
/* 8149B410 | 7F E3 FB 78 */	mr r3, r31
/* 8149B414 | 7E C4 B3 78 */	mr r4, r22
/* 8149B418 | 7E E5 BB 78 */	mr r5, r23
/* 8149B41C | 7F 06 C3 78 */	mr r6, r24
/* 8149B420 | 7F 27 CB 78 */	mr r7, r25
/* 8149B424 | 7F 68 DB 78 */	mr r8, r27
/* 8149B428 | 39 20 00 00 */	li r9, 0x0
/* 8149B42C | 39 40 00 00 */	li r10, 0x0
/* 8149B430 | 4B FF B4 49 */	bl NHTTP_CreateRequest
/* 8149B434 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B438 | 90 7D 00 10 */	stw r3, 0x10(r29)
/* 8149B43C | 40 82 00 14 */	bne .L_8149B450
/* 8149B440 | 7F A3 EB 78 */	mr r3, r29
/* 8149B444 | 4B FF A4 91 */	bl NHTTPi_free
/* 8149B448 | 38 60 00 00 */	li r3, 0x0
/* 8149B44C | 48 00 00 74 */	b .L_8149B4C0
.L_8149B450:
/* 8149B450 | 80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8149B454 | 3B E0 00 00 */	li r31, 0x0
/* 8149B458 | 38 00 FF FF */	li r0, -0x1
/* 8149B45C | 7F 83 E3 78 */	mr r3, r28
/* 8149B460 | 90 9D 00 14 */	stw r4, 0x14(r29)
/* 8149B464 | 7F A4 EB 78 */	mr r4, r29
/* 8149B468 | 93 FD 00 00 */	stw r31, 0x0(r29)
/* 8149B46C | 93 5D 00 1C */	stw r26, 0x1c(r29)
/* 8149B470 | 93 FD 00 24 */	stw r31, 0x24(r29)
/* 8149B474 | 93 FD 00 28 */	stw r31, 0x28(r29)
/* 8149B478 | 90 1D 00 18 */	stw r0, 0x18(r29)
/* 8149B47C | 48 00 12 BD */	bl NHTTPi_CommitConnectionList
/* 8149B480 | 38 60 00 0F */	li r3, 0xf
/* 8149B484 | 38 00 00 01 */	li r0, 0x1
/* 8149B488 | 90 7D 00 04 */	stw r3, 0x4(r29)
/* 8149B48C | 7F A3 EB 78 */	mr r3, r29
/* 8149B490 | 38 80 00 00 */	li r4, 0x0
/* 8149B494 | 93 FD 00 08 */	stw r31, 0x8(r29)
/* 8149B498 | 90 1D 00 0C */	stw r0, 0xc(r29)
/* 8149B49C | 48 00 18 29 */	bl NHTTPi_SetVirtualContentLength
/* 8149B4A0 | 93 FD 00 30 */	stw r31, 0x30(r29)
/* 8149B4A4 | 3C BD 00 01 */	addis r5, r29, 0x1
/* 8149B4A8 | 38 7D 00 40 */	addi r3, r29, 0x40
/* 8149B4AC | 38 9E 80 00 */	addi r4, r30, -0x8000
/* 8149B4B0 | 93 E5 80 40 */	stw r31, -0x7fc0(r5)
/* 8149B4B4 | 93 E5 80 44 */	stw r31, -0x7fbc(r5)
/* 8149B4B8 | 4B FF CA 01 */	bl NHTTPi_memclr
/* 8149B4BC | 7F A3 EB 78 */	mr r3, r29
.L_8149B4C0:
/* 8149B4C0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149B4C4 | 48 15 E0 35 */	bl _restgpr_22
/* 8149B4C8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149B4CC | 7C 08 03 A6 */	mtlr r0
/* 8149B4D0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149B4D4 | 4E 80 00 20 */	blr
.endfn NHTTPCreateConnection

# .text:0x148 | 0x8149B4D8 | size: 0x19C
.fn NHTTPDeleteConnection, global
/* 8149B4D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149B4DC | 7C 08 02 A6 */	mflr r0
/* 8149B4E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149B4E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149B4E8 | 48 15 DF D9 */	bl _savegpr_27
/* 8149B4EC | 7C 7B 1B 78 */	mr r27, r3
/* 8149B4F0 | 48 00 17 49 */	bl NHTTPi_GetSystemInfoP
/* 8149B4F4 | 7C 7D 1B 78 */	mr r29, r3
/* 8149B4F8 | 48 00 17 C5 */	bl NHTTPi_GetMutexInfoP
/* 8149B4FC | 7C 7C 1B 78 */	mr r28, r3
/* 8149B500 | 7F A3 EB 78 */	mr r3, r29
/* 8149B504 | 48 00 17 B1 */	bl NHTTPi_GetThreadInfoP
/* 8149B508 | 7C 7E 1B 78 */	mr r30, r3
/* 8149B50C | 7F 83 E3 78 */	mr r3, r28
/* 8149B510 | 7F 64 DB 78 */	mr r4, r27
/* 8149B514 | 48 00 13 05 */	bl NHTTPi_GetConnection
/* 8149B518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B51C | 7C 7B 1B 78 */	mr r27, r3
/* 8149B520 | 40 82 00 0C */	bne .L_8149B52C
/* 8149B524 | 38 60 FF FF */	li r3, -0x1
/* 8149B528 | 48 00 01 34 */	b .L_8149B65C
.L_8149B52C:
/* 8149B52C | 7F C3 F3 78 */	mr r3, r30
/* 8149B530 | 38 80 00 01 */	li r4, 0x1
/* 8149B534 | 4B FF AB E1 */	bl NHTTPi_CheckCurrentThread
/* 8149B538 | 80 9B 00 18 */	lwz r4, 0x18(r27)
/* 8149B53C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149B540 | 41 80 00 14 */	blt .L_8149B554
/* 8149B544 | 7F A3 EB 78 */	mr r3, r29
/* 8149B548 | 4B FF BB 89 */	bl NHTTP_CancelRequestAsync
/* 8149B54C | 38 00 FF FF */	li r0, -0x1
/* 8149B550 | 90 1B 00 18 */	stw r0, 0x18(r27)
.L_8149B554:
/* 8149B554 | 80 9B 00 10 */	lwz r4, 0x10(r27)
/* 8149B558 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149B55C | 41 82 00 18 */	beq .L_8149B574
/* 8149B560 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8149B564 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149B568 | 40 82 00 0C */	bne .L_8149B574
/* 8149B56C | 7F A3 EB 78 */	mr r3, r29
/* 8149B570 | 4B FF B8 C5 */	bl NHTTP_DestroyRequest
.L_8149B574:
/* 8149B574 | 80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8149B578 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149B57C | 41 82 00 C8 */	beq .L_8149B644
/* 8149B580 | 80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8149B584 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149B588 | 40 82 00 10 */	bne .L_8149B598
/* 8149B58C | 7F 83 E3 78 */	mr r3, r28
/* 8149B590 | 4B FF BC AD */	bl NHTTP_DestroyResponse
/* 8149B594 | 48 00 00 B0 */	b .L_8149B644
.L_8149B598:
/* 8149B598 | 48 00 16 A1 */	bl NHTTPi_GetSystemInfoP
/* 8149B59C | 7C 7E 1B 78 */	mr r30, r3
/* 8149B5A0 | 48 00 17 15 */	bl NHTTPi_GetThreadInfoP
/* 8149B5A4 | 7C 7D 1B 78 */	mr r29, r3
/* 8149B5A8 | 7F C3 F3 78 */	mr r3, r30
/* 8149B5AC | 48 00 17 11 */	bl NHTTPi_GetMutexInfoP
/* 8149B5B0 | 7F 64 DB 78 */	mr r4, r27
/* 8149B5B4 | 48 00 12 65 */	bl NHTTPi_GetConnection
/* 8149B5B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B5BC | 7C 7E 1B 78 */	mr r30, r3
/* 8149B5C0 | 41 82 00 78 */	beq .L_8149B638
/* 8149B5C4 | 48 00 16 75 */	bl NHTTPi_GetSystemInfoP
/* 8149B5C8 | 48 00 16 F5 */	bl NHTTPi_GetMutexInfoP
/* 8149B5CC | 7F 64 DB 78 */	mr r4, r27
/* 8149B5D0 | 48 00 12 49 */	bl NHTTPi_GetConnection
/* 8149B5D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B5D8 | 40 82 00 0C */	bne .L_8149B5E4
/* 8149B5DC | 3B E0 FF FF */	li r31, -0x1
/* 8149B5E0 | 48 00 00 08 */	b .L_8149B5E8
.L_8149B5E4:
/* 8149B5E4 | 83 E3 00 00 */	lwz r31, 0x0(r3)
.L_8149B5E8:
/* 8149B5E8 | 7F A3 EB 78 */	mr r3, r29
/* 8149B5EC | 38 80 00 01 */	li r4, 0x1
/* 8149B5F0 | 4B FF AB 25 */	bl NHTTPi_CheckCurrentThread
/* 8149B5F4 | 2C 1F FF FF */	cmpwi r31, -0x1
/* 8149B5F8 | 41 82 00 40 */	beq .L_8149B638
/* 8149B5FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149B600 | 41 82 00 38 */	beq .L_8149B638
/* 8149B604 | 48 00 16 35 */	bl NHTTPi_GetSystemInfoP
/* 8149B608 | 48 00 16 B5 */	bl NHTTPi_GetMutexInfoP
/* 8149B60C | 7F 64 DB 78 */	mr r4, r27
/* 8149B610 | 48 00 12 09 */	bl NHTTPi_GetConnection
/* 8149B614 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B618 | 41 82 00 0C */	beq .L_8149B624
/* 8149B61C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8149B620 | 48 00 00 08 */	b .L_8149B628
.L_8149B624:
/* 8149B624 | 38 00 FF FF */	li r0, -0x1
.L_8149B628:
/* 8149B628 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 8149B62C | 40 82 00 0C */	bne .L_8149B638
/* 8149B630 | 7F C3 F3 78 */	mr r3, r30
/* 8149B634 | 48 00 0E F1 */	bl NHTTPi_WaitForCompletion
.L_8149B638:
/* 8149B638 | 80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8149B63C | 7F 83 E3 78 */	mr r3, r28
/* 8149B640 | 4B FF BB FD */	bl NHTTP_DestroyResponse
.L_8149B644:
/* 8149B644 | 7F 83 E3 78 */	mr r3, r28
/* 8149B648 | 7F 64 DB 78 */	mr r4, r27
/* 8149B64C | 48 00 11 1D */	bl NHTTPi_OmitConnectionList
/* 8149B650 | 7F 63 DB 78 */	mr r3, r27
/* 8149B654 | 4B FF A2 81 */	bl NHTTPi_free
/* 8149B658 | 38 60 00 00 */	li r3, 0x0
.L_8149B65C:
/* 8149B65C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149B660 | 48 15 DE AD */	bl _restgpr_27
/* 8149B664 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149B668 | 7C 08 03 A6 */	mtlr r0
/* 8149B66C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149B670 | 4E 80 00 20 */	blr
.endfn NHTTPDeleteConnection

# .text:0x2E4 | 0x8149B674 | size: 0x8C
.fn NHTTPStartConnection, global
/* 8149B674 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149B678 | 7C 08 02 A6 */	mflr r0
/* 8149B67C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149B680 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149B684 | 7C 7F 1B 78 */	mr r31, r3
/* 8149B688 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149B68C | 48 00 15 AD */	bl NHTTPi_GetSystemInfoP
/* 8149B690 | 7C 7E 1B 78 */	mr r30, r3
/* 8149B694 | 48 00 16 29 */	bl NHTTPi_GetMutexInfoP
/* 8149B698 | 7F E4 FB 78 */	mr r4, r31
/* 8149B69C | 48 00 11 7D */	bl NHTTPi_GetConnection
/* 8149B6A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B6A4 | 7C 7F 1B 78 */	mr r31, r3
/* 8149B6A8 | 40 82 00 0C */	bne .L_8149B6B4
/* 8149B6AC | 38 60 FF FF */	li r3, -0x1
/* 8149B6B0 | 48 00 00 38 */	b .L_8149B6E8
.L_8149B6B4:
/* 8149B6B4 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8149B6B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149B6BC | 40 82 00 0C */	bne .L_8149B6C8
/* 8149B6C0 | 38 60 FF FF */	li r3, -0x1
/* 8149B6C4 | 48 00 00 24 */	b .L_8149B6E8
.L_8149B6C8:
/* 8149B6C8 | 7F C3 F3 78 */	mr r3, r30
/* 8149B6CC | 4B FF B9 45 */	bl NHTTP_SendRequestAsync
/* 8149B6D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B6D4 | 90 7F 00 18 */	stw r3, 0x18(r31)
/* 8149B6D8 | 41 80 00 0C */	blt .L_8149B6E4
/* 8149B6DC | 38 00 00 01 */	li r0, 0x1
/* 8149B6E0 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8149B6E4:
/* 8149B6E4 | 38 60 00 00 */	li r3, 0x0
.L_8149B6E8:
/* 8149B6E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149B6EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149B6F0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149B6F4 | 7C 08 03 A6 */	mtlr r0
/* 8149B6F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149B6FC | 4E 80 00 20 */	blr
.endfn NHTTPStartConnection

# .text:0x370 | 0x8149B700 | size: 0x9C
.fn NHTTPGetBodyBuffer, global
/* 8149B700 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149B704 | 7C 08 02 A6 */	mflr r0
/* 8149B708 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149B70C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149B710 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149B714 | 7C BE 2B 78 */	mr r30, r5
/* 8149B718 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149B71C | 7C 9D 23 78 */	mr r29, r4
/* 8149B720 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8149B724 | 7C 7C 1B 78 */	mr r28, r3
/* 8149B728 | 48 00 15 11 */	bl NHTTPi_GetSystemInfoP
/* 8149B72C | 48 00 15 91 */	bl NHTTPi_GetMutexInfoP
/* 8149B730 | 7C 7F 1B 78 */	mr r31, r3
/* 8149B734 | 7F 84 E3 78 */	mr r4, r28
/* 8149B738 | 48 00 10 E1 */	bl NHTTPi_GetConnection
/* 8149B73C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B740 | 7C 64 1B 78 */	mr r4, r3
/* 8149B744 | 41 82 00 34 */	beq .L_8149B778
/* 8149B748 | 7F E3 FB 78 */	mr r3, r31
/* 8149B74C | 48 00 10 85 */	bl NHTTPi_Connection2Response
/* 8149B750 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B754 | 41 82 00 1C */	beq .L_8149B770
/* 8149B758 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 8149B75C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 8149B760 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8149B764 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8149B768 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8149B76C | 48 00 00 10 */	b .L_8149B77C
.L_8149B770:
/* 8149B770 | 38 60 FF FF */	li r3, -0x1
/* 8149B774 | 48 00 00 08 */	b .L_8149B77C
.L_8149B778:
/* 8149B778 | 38 60 FF FF */	li r3, -0x1
.L_8149B77C:
/* 8149B77C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149B780 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149B784 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149B788 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149B78C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8149B790 | 7C 08 03 A6 */	mtlr r0
/* 8149B794 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149B798 | 4E 80 00 20 */	blr
.endfn NHTTPGetBodyBuffer

# .text:0x40C | 0x8149B79C | size: 0x74
.fn NHTTPGetUserParam, global
/* 8149B79C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149B7A0 | 7C 08 02 A6 */	mflr r0
/* 8149B7A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149B7A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149B7AC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149B7B0 | 7C 7E 1B 78 */	mr r30, r3
/* 8149B7B4 | 48 00 14 85 */	bl NHTTPi_GetSystemInfoP
/* 8149B7B8 | 48 00 15 05 */	bl NHTTPi_GetMutexInfoP
/* 8149B7BC | 7C 7F 1B 78 */	mr r31, r3
/* 8149B7C0 | 7F C4 F3 78 */	mr r4, r30
/* 8149B7C4 | 48 00 10 55 */	bl NHTTPi_GetConnection
/* 8149B7C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B7CC | 7C 64 1B 78 */	mr r4, r3
/* 8149B7D0 | 41 82 00 24 */	beq .L_8149B7F4
/* 8149B7D4 | 7F E3 FB 78 */	mr r3, r31
/* 8149B7D8 | 48 00 0F F9 */	bl NHTTPi_Connection2Response
/* 8149B7DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B7E0 | 41 82 00 0C */	beq .L_8149B7EC
/* 8149B7E4 | 80 63 04 38 */	lwz r3, 0x438(r3)
/* 8149B7E8 | 48 00 00 10 */	b .L_8149B7F8
.L_8149B7EC:
/* 8149B7EC | 38 60 00 00 */	li r3, 0x0
/* 8149B7F0 | 48 00 00 08 */	b .L_8149B7F8
.L_8149B7F4:
/* 8149B7F4 | 38 60 00 00 */	li r3, 0x0
.L_8149B7F8:
/* 8149B7F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149B7FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149B800 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149B804 | 7C 08 03 A6 */	mtlr r0
/* 8149B808 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149B80C | 4E 80 00 20 */	blr
.endfn NHTTPGetUserParam

# .text:0x480 | 0x8149B810 | size: 0x4C
.fn NHTTPGetConnectionError, global
/* 8149B810 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149B814 | 7C 08 02 A6 */	mflr r0
/* 8149B818 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149B81C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149B820 | 7C 7F 1B 78 */	mr r31, r3
/* 8149B824 | 48 00 14 15 */	bl NHTTPi_GetSystemInfoP
/* 8149B828 | 48 00 14 95 */	bl NHTTPi_GetMutexInfoP
/* 8149B82C | 7F E4 FB 78 */	mr r4, r31
/* 8149B830 | 48 00 0F E9 */	bl NHTTPi_GetConnection
/* 8149B834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B838 | 41 82 00 0C */	beq .L_8149B844
/* 8149B83C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8149B840 | 48 00 00 08 */	b .L_8149B848
.L_8149B844:
/* 8149B844 | 38 60 FF FF */	li r3, -0x1
.L_8149B848:
/* 8149B848 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149B84C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149B850 | 7C 08 03 A6 */	mtlr r0
/* 8149B854 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149B858 | 4E 80 00 20 */	blr
.endfn NHTTPGetConnectionError

# .text:0x4CC | 0x8149B85C | size: 0x5C
.fn NHTTPSetSocketBufferSize, global
/* 8149B85C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149B860 | 7C 08 02 A6 */	mflr r0
/* 8149B864 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149B868 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149B86C | 7C 9F 23 78 */	mr r31, r4
/* 8149B870 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149B874 | 7C 7E 1B 78 */	mr r30, r3
/* 8149B878 | 48 00 13 C1 */	bl NHTTPi_GetSystemInfoP
/* 8149B87C | 48 00 14 41 */	bl NHTTPi_GetMutexInfoP
/* 8149B880 | 7F C4 F3 78 */	mr r4, r30
/* 8149B884 | 48 00 0F 9D */	bl NHTTPi_GetRequest
/* 8149B888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B88C | 40 82 00 0C */	bne .L_8149B898
/* 8149B890 | 38 60 FF FF */	li r3, -0x1
/* 8149B894 | 48 00 00 0C */	b .L_8149B8A0
.L_8149B898:
/* 8149B898 | 93 E3 02 44 */	stw r31, 0x244(r3)
/* 8149B89C | 38 60 00 00 */	li r3, 0x0
.L_8149B8A0:
/* 8149B8A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149B8A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149B8A8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149B8AC | 7C 08 03 A6 */	mtlr r0
/* 8149B8B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149B8B4 | 4E 80 00 20 */	blr
.endfn NHTTPSetSocketBufferSize
