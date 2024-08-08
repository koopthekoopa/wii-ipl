.include "macros.inc"
.file "iplThread.cpp"

# 0x81364B88..0x81364D78 | size: 0x1F0
.text
.balign 4

# .text:0x0 | 0x81364B88 | size: 0x48
# ipl::utility::ut_thread::ThreadMain_(void*)
.fn ThreadMain___Q33ipl7utility9ut_threadFPv, global
/* 81364B88 00032F88  7C 60 1B 78 */	mr r0, r3
/* 81364B8C 00032F8C  38 60 00 04 */	li r3, 0x4
/* 81364B90 00032F90  64 63 00 04 */	oris r3, r3, 0x4
/* 81364B94 00032F94  7C 72 E3 A6 */	mtspr GQR2, r3
/* 81364B98 00032F98  38 60 00 05 */	li r3, 0x5
/* 81364B9C 00032F9C  64 63 00 05 */	oris r3, r3, 0x5
/* 81364BA0 00032FA0  7C 73 E3 A6 */	mtspr GQR3, r3
/* 81364BA4 00032FA4  38 60 00 06 */	li r3, 0x6
/* 81364BA8 00032FA8  64 63 00 06 */	oris r3, r3, 0x6
/* 81364BAC 00032FAC  7C 74 E3 A6 */	mtspr GQR4, r3
/* 81364BB0 00032FB0  38 60 00 07 */	li r3, 0x7
/* 81364BB4 00032FB4  64 63 00 07 */	oris r3, r3, 0x7
/* 81364BB8 00032FB8  7C 75 E3 A6 */	mtspr GQR5, r3
/* 81364BBC 00032FBC  7C 03 03 78 */	mr r3, r0
/* 81364BC0 00032FC0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81364BC4 00032FC4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81364BC8 00032FC8  7D 89 03 A6 */	mtctr r12
/* 81364BCC 00032FCC  4E 80 04 20 */	bctr
.endfn ThreadMain___Q33ipl7utility9ut_threadFPv

# .text:0x48 | 0x81364BD0 | size: 0x24
# ipl::utility::ut_thread::ut_thread()
.fn __ct__Q33ipl7utility9ut_threadFv, global
/* 81364BD0 00032FD0  3C A0 81 64 */	lis r5, __vt__Q33ipl7utility9ut_thread@ha
/* 81364BD4 00032FD4  38 80 00 00 */	li r4, 0x0
/* 81364BD8 00032FD8  38 A5 12 90 */	addi r5, r5, __vt__Q33ipl7utility9ut_thread@l
/* 81364BDC 00032FDC  38 00 00 10 */	li r0, 0x10
/* 81364BE0 00032FE0  90 A3 00 00 */	stw r5, 0x0(r3)
/* 81364BE4 00032FE4  90 83 03 20 */	stw r4, 0x320(r3)
/* 81364BE8 00032FE8  90 83 03 24 */	stw r4, 0x324(r3)
/* 81364BEC 00032FEC  90 03 03 28 */	stw r0, 0x328(r3)
/* 81364BF0 00032FF0  4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility9ut_threadFv

# .text:0x6C | 0x81364BF4 | size: 0x40
# ipl::utility::ut_thread::~ut_thread()
.fn __dt__Q33ipl7utility9ut_threadFv, global
/* 81364BF4 00032FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364BF8 00032FF8  7C 08 02 A6 */	mflr r0
/* 81364BFC 00032FFC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81364C00 00033000  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364C04 00033004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81364C08 00033008  7C 7F 1B 78 */	mr r31, r3
/* 81364C0C 0003300C  41 82 00 10 */	beq .L_81364C1C
/* 81364C10 00033010  2C 04 00 00 */	cmpwi r4, 0x0
/* 81364C14 00033014  40 81 00 08 */	ble .L_81364C1C
/* 81364C18 00033018  48 29 34 CD */	bl __dl__FPv
.L_81364C1C:
/* 81364C1C 0003301C  7F E3 FB 78 */	mr r3, r31
/* 81364C20 00033020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81364C24 00033024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364C28 00033028  7C 08 03 A6 */	mtlr r0
/* 81364C2C 0003302C  38 21 00 10 */	addi r1, r1, 0x10
/* 81364C30 00033030  4E 80 00 20 */	blr
.endfn __dt__Q33ipl7utility9ut_threadFv

# .text:0xAC | 0x81364C34 | size: 0x7C
# ipl::utility::ut_thread::Create(void*, unsigned long, int, bool)
.fn Create__Q33ipl7utility9ut_threadFPvUlib, global
/* 81364C34 00033034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364C38 00033038  7C 08 02 A6 */	mflr r0
/* 81364C3C 0003303C  7C C8 33 78 */	mr r8, r6
/* 81364C40 00033040  7C 89 23 78 */	mr r9, r4
/* 81364C44 00033044  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364C48 00033048  7C A0 2B 78 */	mr r0, r5
/* 81364C4C 0003304C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81364C50 00033050  7C FF 3B 78 */	mr r31, r7
/* 81364C54 00033054  7C 07 03 78 */	mr r7, r0
/* 81364C58 00033058  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81364C5C 0003305C  7C 7E 1B 78 */	mr r30, r3
/* 81364C60 00033060  90 A3 03 24 */	stw r5, 0x324(r3)
/* 81364C64 00033064  7F C5 F3 78 */	mr r5, r30
/* 81364C68 00033068  90 C3 03 28 */	stw r6, 0x328(r3)
/* 81364C6C 0003306C  3C C0 81 36 */	lis r6, ThreadMain___Q33ipl7utility9ut_threadFPv@ha
/* 81364C70 00033070  90 83 03 20 */	stw r4, 0x320(r3)
/* 81364C74 00033074  38 86 4B 88 */	addi r4, r6, ThreadMain___Q33ipl7utility9ut_threadFPv@l
/* 81364C78 00033078  7C C9 02 14 */	add r6, r9, r0
/* 81364C7C 0003307C  39 20 00 00 */	li r9, 0x0
/* 81364C80 00033080  38 63 00 08 */	addi r3, r3, 0x8
/* 81364C84 00033084  48 1C F8 C5 */	bl fn_81534548
/* 81364C88 00033088  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81364C8C 0003308C  41 82 00 0C */	beq .L_81364C98
/* 81364C90 00033090  38 7E 00 08 */	addi r3, r30, 0x8
/* 81364C94 00033094  48 1C FF BD */	bl fn_81534C50
.L_81364C98:
/* 81364C98 00033098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364C9C 0003309C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81364CA0 000330A0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81364CA4 000330A4  7C 08 03 A6 */	mtlr r0
/* 81364CA8 000330A8  38 21 00 10 */	addi r1, r1, 0x10
/* 81364CAC 000330AC  4E 80 00 20 */	blr
.endfn Create__Q33ipl7utility9ut_threadFPvUlib

# .text:0x128 | 0x81364CB0 | size: 0x8
# ipl::utility::ut_thread::Resume()
.fn Resume__Q33ipl7utility9ut_threadFv, global
/* 81364CB0 000330B0  38 63 00 08 */	addi r3, r3, 0x8
/* 81364CB4 000330B4  48 1C FF 9C */	b fn_81534C50
.endfn Resume__Q33ipl7utility9ut_threadFv

# .text:0x130 | 0x81364CB8 | size: 0x8
# ipl::utility::ut_thread::Suspend()
.fn Suspend__Q33ipl7utility9ut_threadFv, global
/* 81364CB8 000330B8  38 63 00 08 */	addi r3, r3, 0x8
/* 81364CBC 000330BC  48 1D 02 2C */	b fn_81534EE8
.endfn Suspend__Q33ipl7utility9ut_threadFv

# .text:0x138 | 0x81364CC0 | size: 0x34
# ipl::utility::ut_thread::WaitForThreadExit()
.fn WaitForThreadExit__Q33ipl7utility9ut_threadFv, global
/* 81364CC0 000330C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364CC4 000330C4  7C 08 02 A6 */	mflr r0
/* 81364CC8 000330C8  38 63 00 08 */	addi r3, r3, 0x8
/* 81364CCC 000330CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364CD0 000330D0  38 00 00 00 */	li r0, 0x0
/* 81364CD4 000330D4  38 81 00 08 */	addi r4, r1, 0x8
/* 81364CD8 000330D8  90 01 00 08 */	stw r0, 0x8(r1)
/* 81364CDC 000330DC  48 1C FD 95 */	bl fn_81534A70
/* 81364CE0 000330E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364CE4 000330E4  80 61 00 08 */	lwz r3, 0x8(r1)
/* 81364CE8 000330E8  7C 08 03 A6 */	mtlr r0
/* 81364CEC 000330EC  38 21 00 10 */	addi r1, r1, 0x10
/* 81364CF0 000330F0  4E 80 00 20 */	blr
.endfn WaitForThreadExit__Q33ipl7utility9ut_threadFv

# .text:0x16C | 0x81364CF4 | size: 0x2C
# ipl::utility::ut_thread::IsThreadTerminated()
.fn IsThreadTerminated__Q33ipl7utility9ut_threadFv, global
/* 81364CF4 000330F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364CF8 000330F8  7C 08 02 A6 */	mflr r0
/* 81364CFC 000330FC  38 63 00 08 */	addi r3, r3, 0x8
/* 81364D00 00033100  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364D04 00033104  48 1C F2 7D */	bl fn_81533F80
/* 81364D08 00033108  30 03 FF FF */	subic r0, r3, 0x1
/* 81364D0C 0003310C  7C 60 19 10 */	subfe r3, r0, r3
/* 81364D10 00033110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364D14 00033114  7C 08 03 A6 */	mtlr r0
/* 81364D18 00033118  38 21 00 10 */	addi r1, r1, 0x10
/* 81364D1C 0003311C  4E 80 00 20 */	blr
.endfn IsThreadTerminated__Q33ipl7utility9ut_threadFv

# .text:0x198 | 0x81364D20 | size: 0x2C
# ipl::utility::ut_thread::IsThreadSuspended()
.fn IsThreadSuspended__Q33ipl7utility9ut_threadFv, global
/* 81364D20 00033120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364D24 00033124  7C 08 02 A6 */	mflr r0
/* 81364D28 00033128  38 63 00 08 */	addi r3, r3, 0x8
/* 81364D2C 0003312C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364D30 00033130  48 1C F2 3D */	bl fn_81533F6C
/* 81364D34 00033134  30 03 FF FF */	subic r0, r3, 0x1
/* 81364D38 00033138  7C 60 19 10 */	subfe r3, r0, r3
/* 81364D3C 0003313C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364D40 00033140  7C 08 03 A6 */	mtlr r0
/* 81364D44 00033144  38 21 00 10 */	addi r1, r1, 0x10
/* 81364D48 00033148  4E 80 00 20 */	blr
.endfn IsThreadSuspended__Q33ipl7utility9ut_threadFv

# .text:0x1C4 | 0x81364D4C | size: 0x2C
# ipl::utility::ut_thread::SetThreadPriority(int)
.fn SetThreadPriority__Q33ipl7utility9ut_threadFi, global
/* 81364D4C 0003314C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364D50 00033150  7C 08 02 A6 */	mflr r0
/* 81364D54 00033154  38 63 00 08 */	addi r3, r3, 0x8
/* 81364D58 00033158  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364D5C 0003315C  48 1D 05 01 */	bl fn_8153525C
/* 81364D60 00033160  30 03 FF FF */	subic r0, r3, 0x1
/* 81364D64 00033164  7C 60 19 10 */	subfe r3, r0, r3
/* 81364D68 00033168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364D6C 0003316C  7C 08 03 A6 */	mtlr r0
/* 81364D70 00033170  38 21 00 10 */	addi r1, r1, 0x10
/* 81364D74 00033174  4E 80 00 20 */	blr
.endfn SetThreadPriority__Q33ipl7utility9ut_threadFi

# 0x81641290..0x816412C0 | size: 0x30
.data
.balign 8

# .data:0x0 | 0x81641290 | size: 0x30
# ipl::utility::ut_thread::__vtable
.obj __vt__Q33ipl7utility9ut_thread, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl7utility9ut_threadFv
	.4byte 0x00000000
	.4byte Create__Q33ipl7utility9ut_threadFPvUlib
	.4byte Resume__Q33ipl7utility9ut_threadFv
	.4byte Suspend__Q33ipl7utility9ut_threadFv
	.4byte WaitForThreadExit__Q33ipl7utility9ut_threadFv
	.4byte IsThreadTerminated__Q33ipl7utility9ut_threadFv
	.4byte IsThreadSuspended__Q33ipl7utility9ut_threadFv
	.4byte SetThreadPriority__Q33ipl7utility9ut_threadFi
	.4byte 0x00000000
.endobj __vt__Q33ipl7utility9ut_thread
