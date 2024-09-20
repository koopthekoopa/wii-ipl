.include "macros.inc"
.file "iplCSMtx.cpp"

# 0x8145C668..0x8145CC3C | size: 0x5D4
.text
.balign 4

# .text:0x0 | 0x8145C668 | size: 0x2BC
# ipl::cs::mtx34::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145C668 | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8145C66C | 7C 08 02 A6 */	mflr r0
/* 8145C670 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8145C674 | 39 61 00 F0 */	addi r11, r1, 0xf0
/* 8145C678 | 48 19 CE 49 */	bl _savegpr_27
/* 8145C67C | 7C 7B 1B 78 */	mr r27, r3
/* 8145C680 | 7C BC 2B 78 */	mr r28, r5
/* 8145C684 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8145C688 | 3B C0 00 00 */	li r30, 0x0
/* 8145C68C | 38 80 00 00 */	li r4, 0x0
/* 8145C690 | 38 A0 00 C0 */	li r5, 0xc0
/* 8145C694 | 4B ED 3C A1 */	bl memset
/* 8145C698 | 3B A0 00 00 */	li r29, 0x0
/* 8145C69C | 3B E0 00 00 */	li r31, 0x0
.L_8145C6A0:
/* 8145C6A0 | 7F 63 DB 78 */	mr r3, r27
/* 8145C6A4 | 7F A4 EB 78 */	mr r4, r29
/* 8145C6A8 | 4B FF 00 55 */	bl CHANSVmGetArgFloat
/* 8145C6AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C6B0 | 41 82 00 28 */	beq .L_8145C6D8
/* 8145C6B4 | 7F 63 DB 78 */	mr r3, r27
/* 8145C6B8 | 7F A4 EB 78 */	mr r4, r29
/* 8145C6BC | 4B FF 00 41 */	bl CHANSVmGetArgFloat
/* 8145C6C0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8145C6C4 | 7C 65 1B 78 */	mr r5, r3
/* 8145C6C8 | 7F 63 DB 78 */	mr r3, r27
/* 8145C6CC | 7C 84 FA 14 */	add r4, r4, r31
/* 8145C6D0 | 4B FE E7 C9 */	bl CHANSVmCopyObject
/* 8145C6D4 | 48 00 00 28 */	b .L_8145C6FC
.L_8145C6D8:
/* 8145C6D8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8145C6DC | C8 22 8B D8 */	lfd f1, lbl_81694FD8@sda21(r0)
/* 8145C6E0 | 7F 63 DB 78 */	mr r3, r27
/* 8145C6E4 | 7C 84 FA 14 */	add r4, r4, r31
/* 8145C6E8 | 4B FE F3 05 */	bl CHANSVmSetFloat
/* 8145C6EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C6F0 | 41 82 00 0C */	beq .L_8145C6FC
/* 8145C6F4 | 38 60 00 00 */	li r3, 0x0
/* 8145C6F8 | 48 00 02 14 */	b .L_8145C90C
.L_8145C6FC:
/* 8145C6FC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8145C700 | 3B FF 00 10 */	addi r31, r31, 0x10
/* 8145C704 | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 8145C708 | 41 80 FF 98 */	blt .L_8145C6A0
/* 8145C70C | 7F 63 DB 78 */	mr r3, r27
/* 8145C710 | 7F 84 E3 78 */	mr r4, r28
/* 8145C714 | 38 A0 00 10 */	li r5, 0x10
/* 8145C718 | 4B FE E5 3D */	bl CHANSVmNewObjData
/* 8145C71C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C720 | 7C 7D 1B 78 */	mr r29, r3
/* 8145C724 | 41 82 01 E4 */	beq .L_8145C908
/* 8145C728 | 80 A2 8B D0 */	lwz r5, lbl_81694FD0@sda21(r0)
/* 8145C72C | 7F 63 DB 78 */	mr r3, r27
/* 8145C730 | 80 02 8B D4 */	lwz r0, lbl_81694FD4@sda21(r0)
/* 8145C734 | 7F A4 EB 78 */	mr r4, r29
/* 8145C738 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8145C73C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8145C740 | 38 A0 00 02 */	li r5, 0x2
/* 8145C744 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8145C748 | 4B FF 14 F9 */	bl CHANSVmNewArrayObject
/* 8145C74C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C750 | 41 82 01 B8 */	beq .L_8145C908
/* 8145C754 | 7F 63 DB 78 */	mr r3, r27
/* 8145C758 | 7F A4 EB 78 */	mr r4, r29
/* 8145C75C | 38 A0 00 00 */	li r5, 0x0
/* 8145C760 | 38 C0 00 00 */	li r6, 0x0
/* 8145C764 | 4B FF 0D 79 */	bl CHANSVmGetArrayElement2D
/* 8145C768 | 7C 64 1B 78 */	mr r4, r3
/* 8145C76C | 7F 63 DB 78 */	mr r3, r27
/* 8145C770 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8145C774 | 4B FE E7 25 */	bl CHANSVmCopyObject
/* 8145C778 | 7F 63 DB 78 */	mr r3, r27
/* 8145C77C | 7F A4 EB 78 */	mr r4, r29
/* 8145C780 | 38 A0 00 00 */	li r5, 0x0
/* 8145C784 | 38 C0 00 01 */	li r6, 0x1
/* 8145C788 | 4B FF 0D 55 */	bl CHANSVmGetArrayElement2D
/* 8145C78C | 7C 64 1B 78 */	mr r4, r3
/* 8145C790 | 7F 63 DB 78 */	mr r3, r27
/* 8145C794 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 8145C798 | 4B FE E7 01 */	bl CHANSVmCopyObject
/* 8145C79C | 7F 63 DB 78 */	mr r3, r27
/* 8145C7A0 | 7F A4 EB 78 */	mr r4, r29
/* 8145C7A4 | 38 A0 00 00 */	li r5, 0x0
/* 8145C7A8 | 38 C0 00 02 */	li r6, 0x2
/* 8145C7AC | 4B FF 0D 31 */	bl CHANSVmGetArrayElement2D
/* 8145C7B0 | 7C 64 1B 78 */	mr r4, r3
/* 8145C7B4 | 7F 63 DB 78 */	mr r3, r27
/* 8145C7B8 | 38 A1 00 30 */	addi r5, r1, 0x30
/* 8145C7BC | 4B FE E6 DD */	bl CHANSVmCopyObject
/* 8145C7C0 | 7F 63 DB 78 */	mr r3, r27
/* 8145C7C4 | 7F A4 EB 78 */	mr r4, r29
/* 8145C7C8 | 38 A0 00 00 */	li r5, 0x0
/* 8145C7CC | 38 C0 00 03 */	li r6, 0x3
/* 8145C7D0 | 4B FF 0D 0D */	bl CHANSVmGetArrayElement2D
/* 8145C7D4 | 7C 64 1B 78 */	mr r4, r3
/* 8145C7D8 | 7F 63 DB 78 */	mr r3, r27
/* 8145C7DC | 38 A1 00 40 */	addi r5, r1, 0x40
/* 8145C7E0 | 4B FE E6 B9 */	bl CHANSVmCopyObject
/* 8145C7E4 | 7F 63 DB 78 */	mr r3, r27
/* 8145C7E8 | 7F A4 EB 78 */	mr r4, r29
/* 8145C7EC | 38 A0 00 01 */	li r5, 0x1
/* 8145C7F0 | 38 C0 00 00 */	li r6, 0x0
/* 8145C7F4 | 4B FF 0C E9 */	bl CHANSVmGetArrayElement2D
/* 8145C7F8 | 7C 64 1B 78 */	mr r4, r3
/* 8145C7FC | 7F 63 DB 78 */	mr r3, r27
/* 8145C800 | 38 A1 00 50 */	addi r5, r1, 0x50
/* 8145C804 | 4B FE E6 95 */	bl CHANSVmCopyObject
/* 8145C808 | 7F 63 DB 78 */	mr r3, r27
/* 8145C80C | 7F A4 EB 78 */	mr r4, r29
/* 8145C810 | 38 A0 00 01 */	li r5, 0x1
/* 8145C814 | 38 C0 00 01 */	li r6, 0x1
/* 8145C818 | 4B FF 0C C5 */	bl CHANSVmGetArrayElement2D
/* 8145C81C | 7C 64 1B 78 */	mr r4, r3
/* 8145C820 | 7F 63 DB 78 */	mr r3, r27
/* 8145C824 | 38 A1 00 60 */	addi r5, r1, 0x60
/* 8145C828 | 4B FE E6 71 */	bl CHANSVmCopyObject
/* 8145C82C | 7F 63 DB 78 */	mr r3, r27
/* 8145C830 | 7F A4 EB 78 */	mr r4, r29
/* 8145C834 | 38 A0 00 01 */	li r5, 0x1
/* 8145C838 | 38 C0 00 02 */	li r6, 0x2
/* 8145C83C | 4B FF 0C A1 */	bl CHANSVmGetArrayElement2D
/* 8145C840 | 7C 64 1B 78 */	mr r4, r3
/* 8145C844 | 7F 63 DB 78 */	mr r3, r27
/* 8145C848 | 38 A1 00 70 */	addi r5, r1, 0x70
/* 8145C84C | 4B FE E6 4D */	bl CHANSVmCopyObject
/* 8145C850 | 7F 63 DB 78 */	mr r3, r27
/* 8145C854 | 7F A4 EB 78 */	mr r4, r29
/* 8145C858 | 38 A0 00 01 */	li r5, 0x1
/* 8145C85C | 38 C0 00 03 */	li r6, 0x3
/* 8145C860 | 4B FF 0C 7D */	bl CHANSVmGetArrayElement2D
/* 8145C864 | 7C 64 1B 78 */	mr r4, r3
/* 8145C868 | 7F 63 DB 78 */	mr r3, r27
/* 8145C86C | 38 A1 00 80 */	addi r5, r1, 0x80
/* 8145C870 | 4B FE E6 29 */	bl CHANSVmCopyObject
/* 8145C874 | 7F 63 DB 78 */	mr r3, r27
/* 8145C878 | 7F A4 EB 78 */	mr r4, r29
/* 8145C87C | 38 A0 00 02 */	li r5, 0x2
/* 8145C880 | 38 C0 00 00 */	li r6, 0x0
/* 8145C884 | 4B FF 0C 59 */	bl CHANSVmGetArrayElement2D
/* 8145C888 | 7C 64 1B 78 */	mr r4, r3
/* 8145C88C | 7F 63 DB 78 */	mr r3, r27
/* 8145C890 | 38 A1 00 90 */	addi r5, r1, 0x90
/* 8145C894 | 4B FE E6 05 */	bl CHANSVmCopyObject
/* 8145C898 | 7F 63 DB 78 */	mr r3, r27
/* 8145C89C | 7F A4 EB 78 */	mr r4, r29
/* 8145C8A0 | 38 A0 00 02 */	li r5, 0x2
/* 8145C8A4 | 38 C0 00 01 */	li r6, 0x1
/* 8145C8A8 | 4B FF 0C 35 */	bl CHANSVmGetArrayElement2D
/* 8145C8AC | 7C 64 1B 78 */	mr r4, r3
/* 8145C8B0 | 7F 63 DB 78 */	mr r3, r27
/* 8145C8B4 | 38 A1 00 A0 */	addi r5, r1, 0xa0
/* 8145C8B8 | 4B FE E5 E1 */	bl CHANSVmCopyObject
/* 8145C8BC | 7F 63 DB 78 */	mr r3, r27
/* 8145C8C0 | 7F A4 EB 78 */	mr r4, r29
/* 8145C8C4 | 38 A0 00 02 */	li r5, 0x2
/* 8145C8C8 | 38 C0 00 02 */	li r6, 0x2
/* 8145C8CC | 4B FF 0C 11 */	bl CHANSVmGetArrayElement2D
/* 8145C8D0 | 7C 64 1B 78 */	mr r4, r3
/* 8145C8D4 | 7F 63 DB 78 */	mr r3, r27
/* 8145C8D8 | 38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8145C8DC | 4B FE E5 BD */	bl CHANSVmCopyObject
/* 8145C8E0 | 7F 63 DB 78 */	mr r3, r27
/* 8145C8E4 | 7F A4 EB 78 */	mr r4, r29
/* 8145C8E8 | 38 A0 00 02 */	li r5, 0x2
/* 8145C8EC | 38 C0 00 03 */	li r6, 0x3
/* 8145C8F0 | 4B FF 0B ED */	bl CHANSVmGetArrayElement2D
/* 8145C8F4 | 7C 64 1B 78 */	mr r4, r3
/* 8145C8F8 | 7F 63 DB 78 */	mr r3, r27
/* 8145C8FC | 38 A1 00 C0 */	addi r5, r1, 0xc0
/* 8145C900 | 4B FE E5 99 */	bl CHANSVmCopyObject
/* 8145C904 | 3B C0 00 01 */	li r30, 0x1
.L_8145C908:
/* 8145C908 | 7F C3 F3 78 */	mr r3, r30
.L_8145C90C:
/* 8145C90C | 39 61 00 F0 */	addi r11, r1, 0xf0
/* 8145C910 | 48 19 CB FD */	bl _restgpr_27
/* 8145C914 | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8145C918 | 7C 08 03 A6 */	mtlr r0
/* 8145C91C | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 8145C920 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x2BC | 0x8145C924 | size: 0x94
# ipl::cs::mtx34::get(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*, int, int)
.fn get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii, global
/* 8145C924 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145C928 | 7C 08 02 A6 */	mflr r0
/* 8145C92C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145C930 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C934 | 48 19 CB 89 */	bl _savegpr_26
/* 8145C938 | 7C 9B 23 78 */	mr r27, r4
/* 8145C93C | 7C 7A 1B 78 */	mr r26, r3
/* 8145C940 | 7C BC 2B 78 */	mr r28, r5
/* 8145C944 | 7C DD 33 78 */	mr r29, r6
/* 8145C948 | 7C FE 3B 78 */	mr r30, r7
/* 8145C94C | 7F 63 DB 78 */	mr r3, r27
/* 8145C950 | 3B E0 00 00 */	li r31, 0x0
/* 8145C954 | 4B FF FB D5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145C958 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C95C | 41 82 00 40 */	beq .L_8145C99C
/* 8145C960 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8145C964 | 7F 43 D3 78 */	mr r3, r26
/* 8145C968 | 7F A5 EB 78 */	mr r5, r29
/* 8145C96C | 7F C6 F3 78 */	mr r6, r30
/* 8145C970 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145C974 | 4B FF 0B CD */	bl CHANSVmGetArrayElement2DFloat
/* 8145C978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C97C | 41 82 00 20 */	beq .L_8145C99C
/* 8145C980 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8145C984 | 7F 43 D3 78 */	mr r3, r26
/* 8145C988 | 7F 84 E3 78 */	mr r4, r28
/* 8145C98C | FC 20 08 18 */	frsp f1, f1
/* 8145C990 | 4B FE F0 5D */	bl CHANSVmSetFloat
/* 8145C994 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C998 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145C99C:
/* 8145C99C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C9A0 | 7F E3 FB 78 */	mr r3, r31
/* 8145C9A4 | 48 19 CB 65 */	bl _restgpr_26
/* 8145C9A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145C9AC | 7C 08 03 A6 */	mtlr r0
/* 8145C9B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145C9B4 | 4E 80 00 20 */	blr
.endfn get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii

# .text:0x350 | 0x8145C9B8 | size: 0xC
# ipl::cs::mtx34::get_00(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_00__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145C9B8 | 38 C0 00 00 */	li r6, 0x0
/* 8145C9BC | 38 E0 00 00 */	li r7, 0x0
/* 8145C9C0 | 4B FF FF 64 */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_00__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x35C | 0x8145C9C4 | size: 0xC
# ipl::cs::mtx34::get_01(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_01__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145C9C4 | 38 C0 00 00 */	li r6, 0x0
/* 8145C9C8 | 38 E0 00 01 */	li r7, 0x1
/* 8145C9CC | 4B FF FF 58 */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_01__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x368 | 0x8145C9D0 | size: 0xC
# ipl::cs::mtx34::get_02(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_02__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145C9D0 | 38 C0 00 00 */	li r6, 0x0
/* 8145C9D4 | 38 E0 00 02 */	li r7, 0x2
/* 8145C9D8 | 4B FF FF 4C */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_02__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x374 | 0x8145C9DC | size: 0xC
# ipl::cs::mtx34::get_03(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_03__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145C9DC | 38 C0 00 00 */	li r6, 0x0
/* 8145C9E0 | 38 E0 00 03 */	li r7, 0x3
/* 8145C9E4 | 4B FF FF 40 */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_03__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x380 | 0x8145C9E8 | size: 0xC
# ipl::cs::mtx34::get_10(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_10__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145C9E8 | 38 C0 00 01 */	li r6, 0x1
/* 8145C9EC | 38 E0 00 00 */	li r7, 0x0
/* 8145C9F0 | 4B FF FF 34 */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_10__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x38C | 0x8145C9F4 | size: 0xC
# ipl::cs::mtx34::get_11(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_11__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145C9F4 | 38 C0 00 01 */	li r6, 0x1
/* 8145C9F8 | 38 E0 00 01 */	li r7, 0x1
/* 8145C9FC | 4B FF FF 28 */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_11__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x398 | 0x8145CA00 | size: 0xC
# ipl::cs::mtx34::get_12(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_12__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CA00 | 38 C0 00 01 */	li r6, 0x1
/* 8145CA04 | 38 E0 00 02 */	li r7, 0x2
/* 8145CA08 | 4B FF FF 1C */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_12__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x3A4 | 0x8145CA0C | size: 0xC
# ipl::cs::mtx34::get_13(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_13__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CA0C | 38 C0 00 01 */	li r6, 0x1
/* 8145CA10 | 38 E0 00 03 */	li r7, 0x3
/* 8145CA14 | 4B FF FF 10 */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_13__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x3B0 | 0x8145CA18 | size: 0xC
# ipl::cs::mtx34::get_20(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_20__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CA18 | 38 C0 00 02 */	li r6, 0x2
/* 8145CA1C | 38 E0 00 00 */	li r7, 0x0
/* 8145CA20 | 4B FF FF 04 */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_20__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x3BC | 0x8145CA24 | size: 0xC
# ipl::cs::mtx34::get_21(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_21__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CA24 | 38 C0 00 02 */	li r6, 0x2
/* 8145CA28 | 38 E0 00 01 */	li r7, 0x1
/* 8145CA2C | 4B FF FE F8 */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_21__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x3C8 | 0x8145CA30 | size: 0xC
# ipl::cs::mtx34::get_22(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_22__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CA30 | 38 C0 00 02 */	li r6, 0x2
/* 8145CA34 | 38 E0 00 02 */	li r7, 0x2
/* 8145CA38 | 4B FF FE EC */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_22__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x3D4 | 0x8145CA3C | size: 0xC
# ipl::cs::mtx34::get_23(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_23__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CA3C | 38 C0 00 02 */	li r6, 0x2
/* 8145CA40 | 38 E0 00 03 */	li r7, 0x3
/* 8145CA44 | 4B FF FE E0 */	b get__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrii
.endfn get_23__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x3E0 | 0x8145CA48 | size: 0xA4
# ipl::cs::mtx34::set(CHANSVm*, CHANSVmObjHdr*, int, int)
.fn set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii, global
/* 8145CA48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145CA4C | 7C 08 02 A6 */	mflr r0
/* 8145CA50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145CA54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CA58 | 48 19 CA 65 */	bl _savegpr_26
/* 8145CA5C | 7C 9B 23 78 */	mr r27, r4
/* 8145CA60 | 7C 7A 1B 78 */	mr r26, r3
/* 8145CA64 | 7C BC 2B 78 */	mr r28, r5
/* 8145CA68 | 7C DD 33 78 */	mr r29, r6
/* 8145CA6C | 3B E0 00 00 */	li r31, 0x0
/* 8145CA70 | 38 80 00 00 */	li r4, 0x0
/* 8145CA74 | 4B FE FC 89 */	bl CHANSVmGetArgFloat
/* 8145CA78 | 7C 7E 1B 78 */	mr r30, r3
/* 8145CA7C | 7F 63 DB 78 */	mr r3, r27
/* 8145CA80 | 4B FF FA A9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145CA84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CA88 | 41 82 00 48 */	beq .L_8145CAD0
/* 8145CA8C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145CA90 | 41 82 00 40 */	beq .L_8145CAD0
/* 8145CA94 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8145CA98 | 7F 43 D3 78 */	mr r3, r26
/* 8145CA9C | 7F 85 E3 78 */	mr r5, r28
/* 8145CAA0 | 7F A6 EB 78 */	mr r6, r29
/* 8145CAA4 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8145CAA8 | 4B FF 0A 35 */	bl CHANSVmGetArrayElement2D
/* 8145CAAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CAB0 | 7C 64 1B 78 */	mr r4, r3
/* 8145CAB4 | 41 82 00 1C */	beq .L_8145CAD0
/* 8145CAB8 | 7F 43 D3 78 */	mr r3, r26
/* 8145CABC | 7F C5 F3 78 */	mr r5, r30
/* 8145CAC0 | 4B FE E3 D9 */	bl CHANSVmCopyObject
/* 8145CAC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CAC8 | 41 82 00 08 */	beq .L_8145CAD0
/* 8145CACC | 3B E0 00 01 */	li r31, 0x1
.L_8145CAD0:
/* 8145CAD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145CAD4 | 7F E3 FB 78 */	mr r3, r31
/* 8145CAD8 | 48 19 CA 31 */	bl _restgpr_26
/* 8145CADC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145CAE0 | 7C 08 03 A6 */	mtlr r0
/* 8145CAE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145CAE8 | 4E 80 00 20 */	blr
.endfn set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii

# .text:0x484 | 0x8145CAEC | size: 0xC
# ipl::cs::mtx34::set_00(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_00__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CAEC | 38 A0 00 00 */	li r5, 0x0
/* 8145CAF0 | 38 C0 00 00 */	li r6, 0x0
/* 8145CAF4 | 4B FF FF 54 */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_00__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x490 | 0x8145CAF8 | size: 0xC
# ipl::cs::mtx34::set_01(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_01__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CAF8 | 38 A0 00 00 */	li r5, 0x0
/* 8145CAFC | 38 C0 00 01 */	li r6, 0x1
/* 8145CB00 | 4B FF FF 48 */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_01__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x49C | 0x8145CB04 | size: 0xC
# ipl::cs::mtx34::set_02(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_02__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB04 | 38 A0 00 00 */	li r5, 0x0
/* 8145CB08 | 38 C0 00 02 */	li r6, 0x2
/* 8145CB0C | 4B FF FF 3C */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_02__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4A8 | 0x8145CB10 | size: 0xC
# ipl::cs::mtx34::set_03(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_03__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB10 | 38 A0 00 00 */	li r5, 0x0
/* 8145CB14 | 38 C0 00 03 */	li r6, 0x3
/* 8145CB18 | 4B FF FF 30 */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_03__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4B4 | 0x8145CB1C | size: 0xC
# ipl::cs::mtx34::set_10(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_10__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB1C | 38 A0 00 01 */	li r5, 0x1
/* 8145CB20 | 38 C0 00 00 */	li r6, 0x0
/* 8145CB24 | 4B FF FF 24 */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_10__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4C0 | 0x8145CB28 | size: 0xC
# ipl::cs::mtx34::set_11(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_11__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB28 | 38 A0 00 01 */	li r5, 0x1
/* 8145CB2C | 38 C0 00 01 */	li r6, 0x1
/* 8145CB30 | 4B FF FF 18 */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_11__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4CC | 0x8145CB34 | size: 0xC
# ipl::cs::mtx34::set_12(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_12__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB34 | 38 A0 00 01 */	li r5, 0x1
/* 8145CB38 | 38 C0 00 02 */	li r6, 0x2
/* 8145CB3C | 4B FF FF 0C */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_12__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4D8 | 0x8145CB40 | size: 0xC
# ipl::cs::mtx34::set_13(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_13__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB40 | 38 A0 00 01 */	li r5, 0x1
/* 8145CB44 | 38 C0 00 03 */	li r6, 0x3
/* 8145CB48 | 4B FF FF 00 */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_13__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4E4 | 0x8145CB4C | size: 0xC
# ipl::cs::mtx34::set_20(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_20__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB4C | 38 A0 00 02 */	li r5, 0x2
/* 8145CB50 | 38 C0 00 00 */	li r6, 0x0
/* 8145CB54 | 4B FF FE F4 */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_20__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4F0 | 0x8145CB58 | size: 0xC
# ipl::cs::mtx34::set_21(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_21__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB58 | 38 A0 00 02 */	li r5, 0x2
/* 8145CB5C | 38 C0 00 01 */	li r6, 0x1
/* 8145CB60 | 4B FF FE E8 */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_21__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x4FC | 0x8145CB64 | size: 0xC
# ipl::cs::mtx34::set_22(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_22__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB64 | 38 A0 00 02 */	li r5, 0x2
/* 8145CB68 | 38 C0 00 02 */	li r6, 0x2
/* 8145CB6C | 4B FF FE DC */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_22__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x508 | 0x8145CB70 | size: 0xC
# ipl::cs::mtx34::set_23(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_23__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB70 | 38 A0 00 02 */	li r5, 0x2
/* 8145CB74 | 38 C0 00 03 */	li r6, 0x3
/* 8145CB78 | 4B FF FE D0 */	b set__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrii
.endfn set_23__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x514 | 0x8145CB7C | size: 0x4C
# ipl::cs::mtx34::get_m(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_m__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145CB7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145CB80 | 7C 08 02 A6 */	mflr r0
/* 8145CB84 | 7C 86 23 78 */	mr r6, r4
/* 8145CB88 | 7C A4 2B 78 */	mr r4, r5
/* 8145CB8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145CB90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145CB94 | 3B E0 00 00 */	li r31, 0x0
/* 8145CB98 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8145CB9C | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145CBA0 | 4B FE E2 F9 */	bl CHANSVmCopyObject
/* 8145CBA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CBA8 | 41 82 00 08 */	beq .L_8145CBB0
/* 8145CBAC | 3B E0 00 01 */	li r31, 0x1
.L_8145CBB0:
/* 8145CBB0 | 7F E3 FB 78 */	mr r3, r31
/* 8145CBB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145CBB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145CBBC | 7C 08 03 A6 */	mtlr r0
/* 8145CBC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145CBC4 | 4E 80 00 20 */	blr
.endfn get_m__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x560 | 0x8145CBC8 | size: 0x74
# ipl::cs::mtx34::init(CHANSVm*)
.fn init__Q33ipl2cs5mtx34FP7CHANSVm, global
/* 8145CBC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145CBCC | 7C 08 02 A6 */	mflr r0
/* 8145CBD0 | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145CBD4 | 38 8D 98 A8 */	li r4, lbl_816978E8@sda21
/* 8145CBD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145CBDC | 38 A5 C6 68 */	addi r5, r5, ctor__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145CBE0 | 38 C0 00 00 */	li r6, 0x0
/* 8145CBE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145CBE8 | 3B E0 00 00 */	li r31, 0x0
/* 8145CBEC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145CBF0 | 7C 7E 1B 78 */	mr r30, r3
/* 8145CBF4 | 4B FE FC E1 */	bl CHANSVmAddNativeClass
/* 8145CBF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145CBFC | 7C 64 1B 78 */	mr r4, r3
/* 8145CC00 | 41 82 00 20 */	beq .L_8145CC20
/* 8145CC04 | 3C A0 81 61 */	lis r5, lbl_81617698@ha
/* 8145CC08 | 7F C3 F3 78 */	mr r3, r30
/* 8145CC0C | 38 C0 00 0D */	li r6, 0xd
/* 8145CC10 | 38 A5 76 98 */	addi r5, r5, lbl_81617698@l
/* 8145CC14 | 4B FF 00 45 */	bl CHANSVmAddNativePropertyAccessorsList
/* 8145CC18 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145CC1C | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145CC20:
/* 8145CC20 | 7F E3 FB 78 */	mr r3, r31
/* 8145CC24 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145CC28 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145CC2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145CC30 | 7C 08 03 A6 */	mtlr r0
/* 8145CC34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145CC38 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs5mtx34FP7CHANSVm

# 0x81617698..0x81617738 | size: 0xA0
.rodata
.balign 8

# .rodata:0x0 | 0x81617698 | size: 0xA0
.obj lbl_81617698, global
	.4byte lbl_816978EE
	.4byte get_00__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_00__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_816978F2
	.4byte get_01__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_01__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_816978F6
	.4byte get_02__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_02__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_816978FA
	.4byte get_03__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_03__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_816978FE
	.4byte get_10__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_10__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697902
	.4byte get_11__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_11__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697906
	.4byte get_12__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_12__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8169790A
	.4byte get_13__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_13__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8169790E
	.4byte get_20__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_20__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697912
	.4byte get_21__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_21__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697916
	.4byte get_22__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_22__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8169791A
	.4byte get_23__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte set_23__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8169791E
	.4byte get_m__Q33ipl2cs5mtx34FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81617698

# 0x81694FD0..0x81694FE0 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694FD0 | size: 0x4
.obj lbl_81694FD0, global
	.4byte 0x00000003
.endobj lbl_81694FD0

# .sdata2:0x4 | 0x81694FD4 | size: 0x4
.obj lbl_81694FD4, global
	.4byte 0x00000004
.endobj lbl_81694FD4

# .sdata2:0x8 | 0x81694FD8 | size: 0x8
.obj lbl_81694FD8, global
	.double 0
.endobj lbl_81694FD8

# 0x816978E8..0x81697920 | size: 0x38
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816978E8 | size: 0x6
.obj lbl_816978E8, global
	.string "MTX34"
.endobj lbl_816978E8

# .sdata:0x6 | 0x816978EE | size: 0x4
.obj lbl_816978EE, global
	.string "_00"
.endobj lbl_816978EE

# .sdata:0xA | 0x816978F2 | size: 0x4
.obj lbl_816978F2, global
	.string "_01"
.endobj lbl_816978F2

# .sdata:0xE | 0x816978F6 | size: 0x4
.obj lbl_816978F6, global
	.string "_02"
.endobj lbl_816978F6

# .sdata:0x12 | 0x816978FA | size: 0x4
.obj lbl_816978FA, global
	.string "_03"
.endobj lbl_816978FA

# .sdata:0x16 | 0x816978FE | size: 0x4
.obj lbl_816978FE, global
	.string "_10"
.endobj lbl_816978FE

# .sdata:0x1A | 0x81697902 | size: 0x4
.obj lbl_81697902, global
	.string "_11"
.endobj lbl_81697902

# .sdata:0x1E | 0x81697906 | size: 0x4
.obj lbl_81697906, global
	.string "_12"
.endobj lbl_81697906

# .sdata:0x22 | 0x8169790A | size: 0x4
.obj lbl_8169790A, global
	.string "_13"
.endobj lbl_8169790A

# .sdata:0x26 | 0x8169790E | size: 0x4
.obj lbl_8169790E, global
	.string "_20"
.endobj lbl_8169790E

# .sdata:0x2A | 0x81697912 | size: 0x4
.obj lbl_81697912, global
	.string "_21"
.endobj lbl_81697912

# .sdata:0x2E | 0x81697916 | size: 0x4
.obj lbl_81697916, global
	.string "_22"
.endobj lbl_81697916

# .sdata:0x32 | 0x8169791A | size: 0x4
.obj lbl_8169791A, global
	.string "_23"
.endobj lbl_8169791A

# .sdata:0x36 | 0x8169791E | size: 0x2
.obj lbl_8169791E, global
	.string "m"
.endobj lbl_8169791E
