.include "macros.inc"
.file "www_thread.cpp"

# 0x8136E6B4..0x8136E894 | size: 0x1E0
.text
.balign 4

# .text:0x0 | 0x8136E6B4 | size: 0x48
# ext_ead::www::ut_thread::ThreadMain_(void*)
.fn ThreadMain___Q37ext_ead3www9ut_threadFPv, global
/* 8136E6B4 0003CAB4  7C 60 1B 78 */	mr r0, r3
/* 8136E6B8 0003CAB8  38 60 00 04 */	li r3, 0x4
/* 8136E6BC 0003CABC  64 63 00 04 */	oris r3, r3, 0x4
/* 8136E6C0 0003CAC0  7C 72 E3 A6 */	mtspr GQR2, r3
/* 8136E6C4 0003CAC4  38 60 00 05 */	li r3, 0x5
/* 8136E6C8 0003CAC8  64 63 00 05 */	oris r3, r3, 0x5
/* 8136E6CC 0003CACC  7C 73 E3 A6 */	mtspr GQR3, r3
/* 8136E6D0 0003CAD0  38 60 00 06 */	li r3, 0x6
/* 8136E6D4 0003CAD4  64 63 00 06 */	oris r3, r3, 0x6
/* 8136E6D8 0003CAD8  7C 74 E3 A6 */	mtspr GQR4, r3
/* 8136E6DC 0003CADC  38 60 00 07 */	li r3, 0x7
/* 8136E6E0 0003CAE0  64 63 00 07 */	oris r3, r3, 0x7
/* 8136E6E4 0003CAE4  7C 75 E3 A6 */	mtspr GQR5, r3
/* 8136E6E8 0003CAE8  7C 03 03 78 */	mr r3, r0
/* 8136E6EC 0003CAEC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136E6F0 0003CAF0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136E6F4 0003CAF4  7D 89 03 A6 */	mtctr r12
/* 8136E6F8 0003CAF8  4E 80 04 20 */	bctr
.endfn ThreadMain___Q37ext_ead3www9ut_threadFPv

# .text:0x48 | 0x8136E6FC | size: 0x24
# ext_ead::www::ut_thread::ut_thread()
.fn __ct__Q37ext_ead3www9ut_threadFv, global
/* 8136E6FC 0003CAFC  3C A0 81 64 */	lis r5, lbl_81643ADC@ha
/* 8136E700 0003CB00  38 80 00 00 */	li r4, 0x0
/* 8136E704 0003CB04  38 A5 3A DC */	addi r5, r5, lbl_81643ADC@l
/* 8136E708 0003CB08  38 00 00 10 */	li r0, 0x10
/* 8136E70C 0003CB0C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8136E710 0003CB10  90 83 03 20 */	stw r4, 0x320(r3)
/* 8136E714 0003CB14  90 83 03 24 */	stw r4, 0x324(r3)
/* 8136E718 0003CB18  90 03 03 28 */	stw r0, 0x328(r3)
/* 8136E71C 0003CB1C  4E 80 00 20 */	blr
.endfn __ct__Q37ext_ead3www9ut_threadFv

# .text:0x6C | 0x8136E720 | size: 0x40
# ext_ead::www::ut_thread::~ut_thread()
.fn __dt__Q37ext_ead3www9ut_threadFv, global
/* 8136E720 0003CB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E724 0003CB24  7C 08 02 A6 */	mflr r0
/* 8136E728 0003CB28  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136E72C 0003CB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E730 0003CB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136E734 0003CB34  7C 7F 1B 78 */	mr r31, r3
/* 8136E738 0003CB38  41 82 00 10 */	beq .L_8136E748
/* 8136E73C 0003CB3C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8136E740 0003CB40  40 81 00 08 */	ble .L_8136E748
/* 8136E744 0003CB44  48 28 99 A1 */	bl __dl__FPv
.L_8136E748:
/* 8136E748 0003CB48  7F E3 FB 78 */	mr r3, r31
/* 8136E74C 0003CB4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136E750 0003CB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E754 0003CB54  7C 08 03 A6 */	mtlr r0
/* 8136E758 0003CB58  38 21 00 10 */	addi r1, r1, 0x10
/* 8136E75C 0003CB5C  4E 80 00 20 */	blr
.endfn __dt__Q37ext_ead3www9ut_threadFv

# .text:0xAC | 0x8136E760 | size: 0x7C
# ext_ead::www::ut_thread::Create(void*, unsigned long, int, bool)
.fn Create__Q37ext_ead3www9ut_threadFPvUlib, global
/* 8136E760 0003CB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E764 0003CB64  7C 08 02 A6 */	mflr r0
/* 8136E768 0003CB68  7C C8 33 78 */	mr r8, r6
/* 8136E76C 0003CB6C  7C 89 23 78 */	mr r9, r4
/* 8136E770 0003CB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E774 0003CB74  7C A0 2B 78 */	mr r0, r5
/* 8136E778 0003CB78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136E77C 0003CB7C  7C FF 3B 78 */	mr r31, r7
/* 8136E780 0003CB80  7C 07 03 78 */	mr r7, r0
/* 8136E784 0003CB84  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136E788 0003CB88  7C 7E 1B 78 */	mr r30, r3
/* 8136E78C 0003CB8C  90 A3 03 24 */	stw r5, 0x324(r3)
/* 8136E790 0003CB90  7F C5 F3 78 */	mr r5, r30
/* 8136E794 0003CB94  90 C3 03 28 */	stw r6, 0x328(r3)
/* 8136E798 0003CB98  3C C0 81 37 */	lis r6, ThreadMain___Q37ext_ead3www9ut_threadFPv@ha
/* 8136E79C 0003CB9C  90 83 03 20 */	stw r4, 0x320(r3)
/* 8136E7A0 0003CBA0  38 86 E6 B4 */	addi r4, r6, ThreadMain___Q37ext_ead3www9ut_threadFPv@l
/* 8136E7A4 0003CBA4  7C C9 02 14 */	add r6, r9, r0
/* 8136E7A8 0003CBA8  39 20 00 00 */	li r9, 0x0
/* 8136E7AC 0003CBAC  38 63 00 08 */	addi r3, r3, 0x8
/* 8136E7B0 0003CBB0  48 1C 5D 99 */	bl fn_81534548
/* 8136E7B4 0003CBB4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136E7B8 0003CBB8  41 82 00 0C */	beq .L_8136E7C4
/* 8136E7BC 0003CBBC  38 7E 00 08 */	addi r3, r30, 0x8
/* 8136E7C0 0003CBC0  48 1C 64 91 */	bl fn_81534C50
.L_8136E7C4:
/* 8136E7C4 0003CBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E7C8 0003CBC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136E7CC 0003CBCC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136E7D0 0003CBD0  7C 08 03 A6 */	mtlr r0
/* 8136E7D4 0003CBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8136E7D8 0003CBD8  4E 80 00 20 */	blr
.endfn Create__Q37ext_ead3www9ut_threadFPvUlib

# .text:0x128 | 0x8136E7DC | size: 0x8
# ext_ead::www::ut_thread::Resume()
.fn Resume__Q37ext_ead3www9ut_threadFv, global
/* 8136E7DC 0003CBDC  38 63 00 08 */	addi r3, r3, 0x8
/* 8136E7E0 0003CBE0  48 1C 64 70 */	b fn_81534C50
.endfn Resume__Q37ext_ead3www9ut_threadFv

# .text:0x130 | 0x8136E7E4 | size: 0x8
# ext_ead::www::ut_thread::Suspend()
.fn Suspend__Q37ext_ead3www9ut_threadFv, global
/* 8136E7E4 0003CBE4  38 63 00 08 */	addi r3, r3, 0x8
/* 8136E7E8 0003CBE8  48 1C 67 00 */	b fn_81534EE8
.endfn Suspend__Q37ext_ead3www9ut_threadFv

# .text:0x138 | 0x8136E7EC | size: 0x50
# ext_ead::www::ut_thread::WaitForThreadExit()
.fn WaitForThreadExit__Q37ext_ead3www9ut_threadFv, global
/* 8136E7EC 0003CBEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E7F0 0003CBF0  7C 08 02 A6 */	mflr r0
/* 8136E7F4 0003CBF4  38 63 00 08 */	addi r3, r3, 0x8
/* 8136E7F8 0003CBF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E7FC 0003CBFC  38 00 00 00 */	li r0, 0x0
/* 8136E800 0003CC00  38 81 00 08 */	addi r4, r1, 0x8
/* 8136E804 0003CC04  90 01 00 08 */	stw r0, 0x8(r1)
/* 8136E808 0003CC08  48 1C 62 69 */	bl fn_81534A70
/* 8136E80C 0003CC0C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136E810 0003CC10  41 82 00 18 */	beq .L_8136E828
/* 8136E814 0003CC14  3C 80 81 64 */	lis r4, lbl_81643AB8@ha
/* 8136E818 0003CC18  38 60 00 03 */	li r3, 0x3
/* 8136E81C 0003CC1C  38 84 3A B8 */	addi r4, r4, lbl_81643AB8@l
/* 8136E820 0003CC20  4C C6 31 82 */	crclr cr1eq
/* 8136E824 0003CC24  48 00 00 71 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_8136E828:
/* 8136E828 0003CC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E82C 0003CC2C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8136E830 0003CC30  7C 08 03 A6 */	mtlr r0
/* 8136E834 0003CC34  38 21 00 10 */	addi r1, r1, 0x10
/* 8136E838 0003CC38  4E 80 00 20 */	blr
.endfn WaitForThreadExit__Q37ext_ead3www9ut_threadFv

# .text:0x188 | 0x8136E83C | size: 0x2C
# ext_ead::www::ut_thread::IsThreadTerminated()
.fn IsThreadTerminated__Q37ext_ead3www9ut_threadFv, global
/* 8136E83C 0003CC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E840 0003CC40  7C 08 02 A6 */	mflr r0
/* 8136E844 0003CC44  38 63 00 08 */	addi r3, r3, 0x8
/* 8136E848 0003CC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E84C 0003CC4C  48 1C 57 35 */	bl fn_81533F80
/* 8136E850 0003CC50  30 03 FF FF */	subic r0, r3, 0x1
/* 8136E854 0003CC54  7C 60 19 10 */	subfe r3, r0, r3
/* 8136E858 0003CC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E85C 0003CC5C  7C 08 03 A6 */	mtlr r0
/* 8136E860 0003CC60  38 21 00 10 */	addi r1, r1, 0x10
/* 8136E864 0003CC64  4E 80 00 20 */	blr
.endfn IsThreadTerminated__Q37ext_ead3www9ut_threadFv

# .text:0x1B4 | 0x8136E868 | size: 0x2C
# ext_ead::www::ut_thread::IsThreadSuspended()
.fn IsThreadSuspended__Q37ext_ead3www9ut_threadFv, global
/* 8136E868 0003CC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E86C 0003CC6C  7C 08 02 A6 */	mflr r0
/* 8136E870 0003CC70  38 63 00 08 */	addi r3, r3, 0x8
/* 8136E874 0003CC74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E878 0003CC78  48 1C 56 F5 */	bl fn_81533F6C
/* 8136E87C 0003CC7C  30 03 FF FF */	subic r0, r3, 0x1
/* 8136E880 0003CC80  7C 60 19 10 */	subfe r3, r0, r3
/* 8136E884 0003CC84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E888 0003CC88  7C 08 03 A6 */	mtlr r0
/* 8136E88C 0003CC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8136E890 0003CC90  4E 80 00 20 */	blr
.endfn IsThreadSuspended__Q37ext_ead3www9ut_threadFv

# 0x81643AB8..0x81643B08 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x81643AB8 | size: 0x24
.obj lbl_81643AB8, global
	.4byte 0x75745F74
	.4byte 0x68726561
	.4byte 0x643A206A
	.4byte 0x6F696E65
	.4byte 0x64207375
	.4byte 0x63636573
	.4byte 0x7366756C
	.4byte 0x6C792E0A
	.4byte 0x00000000
.endobj lbl_81643AB8

# .data:0x24 | 0x81643ADC | size: 0x2C
.obj lbl_81643ADC, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q37ext_ead3www9ut_threadFv
	.4byte 0x00000000
	.4byte Create__Q37ext_ead3www9ut_threadFPvUlib
	.4byte Resume__Q37ext_ead3www9ut_threadFv
	.4byte Suspend__Q37ext_ead3www9ut_threadFv
	.4byte WaitForThreadExit__Q37ext_ead3www9ut_threadFv
	.4byte IsThreadTerminated__Q37ext_ead3www9ut_threadFv
	.4byte IsThreadSuspended__Q37ext_ead3www9ut_threadFv
	.4byte 0x00000000
.endobj lbl_81643ADC
