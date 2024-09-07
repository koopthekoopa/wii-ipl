.include "macros.inc"
.file "iplAPScanThread.cpp"

# 0x813FC39C..0x813FC520 | size: 0x184
.text
.balign 4

# .text:0x0 | 0x813FC39C | size: 0x3C
# ipl::scene::APScanThread::APScanThread()
.fn __ct__Q33ipl5scene12APScanThreadFv, global
/* 813FC39C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FC3A0 | 7C 08 02 A6 */	mflr r0
/* 813FC3A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FC3A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FC3AC | 7C 7F 1B 78 */	mr r31, r3
/* 813FC3B0 | 4B F6 88 21 */	bl __ct__Q33ipl7utility9ut_threadFv
/* 813FC3B4 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene12APScanThread@ha
/* 813FC3B8 | 7F E3 FB 78 */	mr r3, r31
/* 813FC3BC | 38 84 7A D8 */	addi r4, r4, __vt__Q33ipl5scene12APScanThread@l
/* 813FC3C0 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 813FC3C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FC3C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FC3CC | 7C 08 03 A6 */	mtlr r0
/* 813FC3D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FC3D4 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12APScanThreadFv

# .text:0x3C | 0x813FC3D8 | size: 0x58
# ipl::scene::APScanThread::~APScanThread()
.fn __dt__Q33ipl5scene12APScanThreadFv, global
/* 813FC3D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FC3DC | 7C 08 02 A6 */	mflr r0
/* 813FC3E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FC3E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FC3E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FC3EC | 7C 9F 23 78 */	mr r31, r4
/* 813FC3F0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FC3F4 | 7C 7E 1B 78 */	mr r30, r3
/* 813FC3F8 | 41 82 00 1C */	beq .L_813FC414
/* 813FC3FC | 38 80 00 00 */	li r4, 0x0
/* 813FC400 | 4B F6 87 F5 */	bl __dt__Q33ipl7utility9ut_threadFv
/* 813FC404 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813FC408 | 40 81 00 0C */	ble .L_813FC414
/* 813FC40C | 7F C3 F3 78 */	mr r3, r30
/* 813FC410 | 48 1F BC D5 */	bl __dl__FPv
.L_813FC414:
/* 813FC414 | 7F C3 F3 78 */	mr r3, r30
/* 813FC418 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FC41C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FC420 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FC424 | 7C 08 03 A6 */	mtlr r0
/* 813FC428 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FC42C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12APScanThreadFv

# .text:0x94 | 0x813FC430 | size: 0x4C
# ipl::scene::APScanThread::Run()
.fn Run__Q33ipl5scene12APScanThreadFv, global
/* 813FC430 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FC434 | 7C 08 02 A6 */	mflr r0
/* 813FC438 | 7C 64 1B 78 */	mr r4, r3
/* 813FC43C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FC440 | 38 A4 03 2C */	addi r5, r4, 0x32c
/* 813FC444 | 38 80 08 00 */	li r4, 0x800
/* 813FC448 | 80 63 03 7C */	lwz r3, 0x37c(r3)
/* 813FC44C | 48 0D DA 1D */	bl fn_814D9E68
/* 813FC450 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FC454 | 7C 64 1B 78 */	mr r4, r3
/* 813FC458 | 41 82 00 14 */	beq .L_813FC46C
/* 813FC45C | 3C 60 81 65 */	lis r3, lbl_81657AA0@ha
/* 813FC460 | 38 63 7A A0 */	addi r3, r3, lbl_81657AA0@l
/* 813FC464 | 4C C6 31 82 */	crclr cr1eq
/* 813FC468 | 48 13 22 39 */	bl OSReport
.L_813FC46C:
/* 813FC46C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FC470 | 7C 08 03 A6 */	mtlr r0
/* 813FC474 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FC478 | 4E 80 00 20 */	blr
.endfn Run__Q33ipl5scene12APScanThreadFv

# .text:0xE0 | 0x813FC47C | size: 0x8
# ipl::scene::APScanThread::setResultData(unsigned short*)
.fn setResultData__Q33ipl5scene12APScanThreadFPUs, global
/* 813FC47C | 90 83 03 7C */	stw r4, 0x37c(r3)
/* 813FC480 | 48 00 00 04 */	b setParam__Q33ipl5scene12APScanThreadFv
.endfn setResultData__Q33ipl5scene12APScanThreadFPUs

# .text:0xE8 | 0x813FC484 | size: 0x9C
# ipl::scene::APScanThread::setParam()
.fn setParam__Q33ipl5scene12APScanThreadFv, global
/* 813FC484 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FC488 | 7C 08 02 A6 */	mflr r0
/* 813FC48C | 38 80 00 FF */	li r4, 0xff
/* 813FC490 | 38 A0 00 06 */	li r5, 0x6
/* 813FC494 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FC498 | 38 00 01 2C */	li r0, 0x12c
/* 813FC49C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FC4A0 | 3B E0 00 00 */	li r31, 0x0
/* 813FC4A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FC4A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813FC4AC | B3 E3 03 2C */	sth r31, 0x32c(r3)
/* 813FC4B0 | B0 03 03 2E */	sth r0, 0x32e(r3)
/* 813FC4B4 | 38 63 03 30 */	addi r3, r3, 0x330
/* 813FC4B8 | 4B F3 3E 7D */	bl memset
/* 813FC4BC | B3 FE 03 36 */	sth r31, 0x336(r30)
/* 813FC4C0 | 38 7E 03 3A */	addi r3, r30, 0x33a
/* 813FC4C4 | 38 80 00 00 */	li r4, 0x0
/* 813FC4C8 | 38 A0 00 20 */	li r5, 0x20
/* 813FC4CC | B3 FE 03 38 */	sth r31, 0x338(r30)
/* 813FC4D0 | 4B F3 3E 65 */	bl memset
/* 813FC4D4 | 38 7E 03 5A */	addi r3, r30, 0x35a
/* 813FC4D8 | 38 80 00 FF */	li r4, 0xff
/* 813FC4DC | 38 A0 00 20 */	li r5, 0x20
/* 813FC4E0 | 4B F3 3E 55 */	bl memset
/* 813FC4E4 | 38 7E 03 2C */	addi r3, r30, 0x32c
/* 813FC4E8 | 48 0D D6 F1 */	bl fn_814D9BD8
/* 813FC4EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FC4F0 | 7C 64 1B 78 */	mr r4, r3
/* 813FC4F4 | 41 82 00 14 */	beq .L_813FC508
/* 813FC4F8 | 3C 60 81 65 */	lis r3, lbl_81657ABB@ha
/* 813FC4FC | 38 63 7A BB */	addi r3, r3, lbl_81657ABB@l
/* 813FC500 | 4C C6 31 82 */	crclr cr1eq
/* 813FC504 | 48 13 21 9D */	bl OSReport
.L_813FC508:
/* 813FC508 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FC50C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FC510 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FC514 | 7C 08 03 A6 */	mtlr r0
/* 813FC518 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FC51C | 4E 80 00 20 */	blr
.endfn setParam__Q33ipl5scene12APScanThreadFv

# 0x81657AA0..0x81657B08 | size: 0x68
.data
.balign 8

# .data:0x0 | 0x81657AA0 | size: 0x1B
.obj lbl_81657AA0, global
	.string "ERROR(%d): UpdateScanInfo\n"
.endobj lbl_81657AA0

# .data:0x1B | 0x81657ABB | size: 0x1D
.obj lbl_81657ABB, global
	.string "ERROR(%d): StartupScanParam\n"
.endobj lbl_81657ABB

# .data:0x38 | 0x81657AD8 | size: 0x30
# ipl::scene::APScanThread::__vtable
.obj __vt__Q33ipl5scene12APScanThread, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene12APScanThreadFv
	.4byte Run__Q33ipl5scene12APScanThreadFv
	.4byte Create__Q33ipl7utility9ut_threadFPvUlib
	.4byte Resume__Q33ipl7utility9ut_threadFv
	.4byte Suspend__Q33ipl7utility9ut_threadFv
	.4byte WaitForThreadExit__Q33ipl7utility9ut_threadFv
	.4byte IsThreadTerminated__Q33ipl7utility9ut_threadFv
	.4byte IsThreadSuspended__Q33ipl7utility9ut_threadFv
	.4byte SetThreadPriority__Q33ipl7utility9ut_threadFi
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene12APScanThread
