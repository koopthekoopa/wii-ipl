.include "macros.inc"
.file "iplChannelRsoThread.cpp"

# 0x813598BC - 0x81359A70
.text
.balign 4

# ipl::channel::RsoThread::RsoThread(EGG::Heap*)
.fn __ct__Q33ipl7channel9RsoThreadFPQ23EGG4Heap, global
/* 813598BC 00027CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813598C0 00027CC0  7C 08 02 A6 */	mflr r0
/* 813598C4 00027CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 813598C8 00027CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813598CC 00027CCC  7C 9F 23 78 */	mr r31, r4
/* 813598D0 00027CD0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813598D4 00027CD4  7C 7E 1B 78 */	mr r30, r3
/* 813598D8 00027CD8  48 00 B2 F9 */	bl __ct__Q33ipl7utility9ut_threadFv
/* 813598DC 00027CDC  3C 80 81 64 */	lis r4, lbl_81639200@ha
/* 813598E0 00027CE0  38 00 00 00 */	li r0, 0x0
/* 813598E4 00027CE4  38 84 92 00 */	addi r4, r4, lbl_81639200@l
/* 813598E8 00027CE8  3C 60 00 01 */	lis r3, 0x1
/* 813598EC 00027CEC  90 9E 00 00 */	stw r4, 0x0(r30)
/* 813598F0 00027CF0  7F E4 FB 78 */	mr r4, r31
/* 813598F4 00027CF4  38 63 80 00 */	addi r3, r3, -0x8000
/* 813598F8 00027CF8  38 A0 00 20 */	li r5, 0x20
/* 813598FC 00027CFC  98 1E 03 30 */	stb r0, 0x330(r30)
/* 81359900 00027D00  90 1E 03 34 */	stw r0, 0x334(r30)
/* 81359904 00027D04  48 29 E7 D1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81359908 00027D08  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 8135990C 00027D0C  7F C3 F3 78 */	mr r3, r30
/* 81359910 00027D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359914 00027D14  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81359918 00027D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135991C 00027D1C  7C 08 03 A6 */	mtlr r0
/* 81359920 00027D20  38 21 00 10 */	addi r1, r1, 0x10
/* 81359924 00027D24  4E 80 00 20 */	blr
.endfn __ct__Q33ipl7channel9RsoThreadFPQ23EGG4Heap

# ipl::channel::RsoThread::~RsoThread()
.fn __dt__Q33ipl7channel9RsoThreadFv, global
/* 81359928 00027D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135992C 00027D2C  7C 08 02 A6 */	mflr r0
/* 81359930 00027D30  2C 03 00 00 */	cmpwi r3, 0x0
/* 81359934 00027D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 81359938 00027D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135993C 00027D3C  7C 9F 23 78 */	mr r31, r4
/* 81359940 00027D40  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81359944 00027D44  7C 7E 1B 78 */	mr r30, r3
/* 81359948 00027D48  41 82 00 34 */	beq .L_8135997C
/* 8135994C 00027D4C  3C 80 81 64 */	lis r4, lbl_81639200@ha
/* 81359950 00027D50  38 84 92 00 */	addi r4, r4, lbl_81639200@l
/* 81359954 00027D54  90 83 00 00 */	stw r4, 0x0(r3)
/* 81359958 00027D58  80 63 03 2C */	lwz r3, 0x32c(r3)
/* 8135995C 00027D5C  48 29 E7 91 */	bl __dla__FPv
/* 81359960 00027D60  7F C3 F3 78 */	mr r3, r30
/* 81359964 00027D64  38 80 00 00 */	li r4, 0x0
/* 81359968 00027D68  48 00 B2 8D */	bl __dt__Q33ipl7utility9ut_threadFv
/* 8135996C 00027D6C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81359970 00027D70  40 81 00 0C */	ble .L_8135997C
/* 81359974 00027D74  7F C3 F3 78 */	mr r3, r30
/* 81359978 00027D78  48 29 E7 6D */	bl __dl__FPv
.L_8135997C:
/* 8135997C 00027D7C  7F C3 F3 78 */	mr r3, r30
/* 81359980 00027D80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359984 00027D84  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81359988 00027D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135998C 00027D8C  7C 08 03 A6 */	mtlr r0
/* 81359990 00027D90  38 21 00 10 */	addi r1, r1, 0x10
/* 81359994 00027D94  4E 80 00 20 */	blr
.endfn __dt__Q33ipl7channel9RsoThreadFv

# ipl::channel::RsoThread::Run()
.fn Run__Q33ipl7channel9RsoThreadFv, global
/* 81359998 00027D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135999C 00027D9C  7C 08 02 A6 */	mflr r0
/* 813599A0 00027DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813599A4 00027DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813599A8 00027DA8  7C 7F 1B 78 */	mr r31, r3
/* 813599AC 00027DAC  81 83 03 34 */	lwz r12, 0x334(r3)
/* 813599B0 00027DB0  2C 0C 00 00 */	cmpwi r12, 0x0
/* 813599B4 00027DB4  41 82 00 0C */	beq .L_813599C0
/* 813599B8 00027DB8  7D 89 03 A6 */	mtctr r12
/* 813599BC 00027DBC  4E 80 04 21 */	bctrl
.L_813599C0:
/* 813599C0 00027DC0  38 00 00 00 */	li r0, 0x0
/* 813599C4 00027DC4  7F E3 FB 78 */	mr r3, r31
/* 813599C8 00027DC8  98 1F 03 30 */	stb r0, 0x330(r31)
/* 813599CC 00027DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813599D0 00027DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813599D4 00027DD4  7C 08 03 A6 */	mtlr r0
/* 813599D8 00027DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 813599DC 00027DDC  4E 80 00 20 */	blr
.endfn Run__Q33ipl7channel9RsoThreadFv

# ipl::channel::RsoThread::start()
.fn start__Q33ipl7channel9RsoThreadFv, global
/* 813599E0 00027DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813599E4 00027DE4  7C 08 02 A6 */	mflr r0
/* 813599E8 00027DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 813599EC 00027DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813599F0 00027DF0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813599F4 00027DF4  7C 7E 1B 78 */	mr r30, r3
/* 813599F8 00027DF8  88 03 03 30 */	lbz r0, 0x330(r3)
/* 813599FC 00027DFC  2C 00 00 00 */	cmpwi r0, 0x0
/* 81359A00 00027E00  40 82 00 44 */	bne .L_81359A44
/* 81359A04 00027E04  38 00 00 01 */	li r0, 0x1
/* 81359A08 00027E08  3F E0 00 01 */	lis r31, 0x1
/* 81359A0C 00027E0C  98 03 03 30 */	stb r0, 0x330(r3)
/* 81359A10 00027E10  38 BF 80 00 */	addi r5, r31, -0x8000
/* 81359A14 00027E14  80 63 03 2C */	lwz r3, 0x32c(r3)
/* 81359A18 00027E18  38 80 00 00 */	li r4, 0x0
/* 81359A1C 00027E1C  4B FD 69 19 */	bl memset
/* 81359A20 00027E20  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81359A24 00027E24  7F C3 F3 78 */	mr r3, r30
/* 81359A28 00027E28  38 BF 80 00 */	addi r5, r31, -0x8000
/* 81359A2C 00027E2C  80 9E 03 2C */	lwz r4, 0x32c(r30)
/* 81359A30 00027E30  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81359A34 00027E34  38 C0 00 11 */	li r6, 0x11
/* 81359A38 00027E38  38 E0 00 01 */	li r7, 0x1
/* 81359A3C 00027E3C  7D 89 03 A6 */	mtctr r12
/* 81359A40 00027E40  4E 80 04 21 */	bctrl
.L_81359A44:
/* 81359A44 00027E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359A48 00027E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359A4C 00027E4C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81359A50 00027E50  7C 08 03 A6 */	mtlr r0
/* 81359A54 00027E54  38 21 00 10 */	addi r1, r1, 0x10
/* 81359A58 00027E58  4E 80 00 20 */	blr
.endfn start__Q33ipl7channel9RsoThreadFv

# ipl::channel::RsoThread::setCalcFunc(void (*)(void))
.fn setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v, global
/* 81359A5C 00027E5C  90 83 03 34 */	stw r4, 0x334(r3)
/* 81359A60 00027E60  38 83 03 58 */	addi r4, r3, 0x358
/* 81359A64 00027E64  38 A0 00 01 */	li r5, 0x1
/* 81359A68 00027E68  38 63 03 38 */	addi r3, r3, 0x338
/* 81359A6C 00027E6C  48 1D 75 B4 */	b fn_81531020
.endfn setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v

# 0x81639200 - 0x81639230
.data
.balign 8

.obj lbl_81639200, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl7channel9RsoThreadFv
	.4byte Run__Q33ipl7channel9RsoThreadFv
	.4byte Create__Q33ipl7utility9ut_threadFPvUlib
	.4byte Resume__Q33ipl7utility9ut_threadFv
	.4byte Suspend__Q33ipl7utility9ut_threadFv
	.4byte WaitForThreadExit__Q33ipl7utility9ut_threadFv
	.4byte IsThreadTerminated__Q33ipl7utility9ut_threadFv
	.4byte IsThreadSuspended__Q33ipl7utility9ut_threadFv
	.4byte SetThreadPriority__Q33ipl7utility9ut_threadFi
	.4byte 0x00000000
.endobj lbl_81639200
