.include "macros.inc"
.file "CHANSVm.c"

# 0x8144A5AC..0x814576E8 | size: 0xD13C
.text
.balign 4

# .text:0x0 | 0x8144A5AC | size: 0xC0
.fn CHANSVmDebugPrintf, global
/* 8144A5AC | 94 21 FB 80 */	stwu r1, -0x480(r1)
/* 8144A5B0 | 7C 08 02 A6 */	mflr r0
/* 8144A5B4 | 90 01 04 84 */	stw r0, 0x484(r1)
/* 8144A5B8 | 93 E1 04 7C */	stw r31, 0x47c(r1)
/* 8144A5BC | 93 C1 04 78 */	stw r30, 0x478(r1)
/* 8144A5C0 | 7C 7E 1B 78 */	mr r30, r3
/* 8144A5C4 | 40 86 00 24 */	bne cr1, .L_8144A5E8
/* 8144A5C8 | D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8144A5CC | D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8144A5D0 | D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8144A5D4 | D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8144A5D8 | D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8144A5DC | D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8144A5E0 | D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8144A5E4 | D9 01 00 60 */	stfd f8, 0x60(r1)
.L_8144A5E8:
/* 8144A5E8 | 39 61 04 88 */	addi r11, r1, 0x488
/* 8144A5EC | 38 01 00 08 */	addi r0, r1, 0x8
/* 8144A5F0 | 3D 80 01 00 */	lis r12, 0x100
/* 8144A5F4 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8144A5F8 | 3B E1 00 68 */	addi r31, r1, 0x68
/* 8144A5FC | 38 61 00 74 */	addi r3, r1, 0x74
/* 8144A600 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8144A604 | 38 80 03 FE */	li r4, 0x3fe
/* 8144A608 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 8144A60C | 7F C5 F3 78 */	mr r5, r30
/* 8144A610 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 8144A614 | 7F E6 FB 78 */	mr r6, r31
/* 8144A618 | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 8144A61C | 91 01 00 1C */	stw r8, 0x1c(r1)
/* 8144A620 | 91 21 00 20 */	stw r9, 0x20(r1)
/* 8144A624 | 91 41 00 24 */	stw r10, 0x24(r1)
/* 8144A628 | 91 81 00 68 */	stw r12, 0x68(r1)
/* 8144A62C | 91 61 00 6C */	stw r11, 0x6c(r1)
/* 8144A630 | 90 01 00 70 */	stw r0, 0x70(r1)
/* 8144A634 | 48 1B 62 71 */	bl vsnprintf
/* 8144A638 | 38 00 00 00 */	li r0, 0x0
/* 8144A63C | 38 81 00 74 */	addi r4, r1, 0x74
/* 8144A640 | 98 01 04 72 */	stb r0, 0x472(r1)
/* 8144A644 | 38 6D 95 43 */	li r3, lbl_81697583@sda21
/* 8144A648 | 98 01 04 73 */	stb r0, 0x473(r1)
/* 8144A64C | 4C C6 31 82 */	crclr cr1eq
/* 8144A650 | 48 0E 40 51 */	bl OSReport
/* 8144A654 | 80 01 04 84 */	lwz r0, 0x484(r1)
/* 8144A658 | 83 E1 04 7C */	lwz r31, 0x47c(r1)
/* 8144A65C | 83 C1 04 78 */	lwz r30, 0x478(r1)
/* 8144A660 | 7C 08 03 A6 */	mtlr r0
/* 8144A664 | 38 21 04 80 */	addi r1, r1, 0x480
/* 8144A668 | 4E 80 00 20 */	blr
.endfn CHANSVmDebugPrintf

# .text:0xC0 | 0x8144A66C | size: 0xB8
.fn CHANSVmGetSourceLine, global
/* 8144A66C | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 8144A670 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144A674 | 41 82 00 A8 */	beq .L_8144A71C
/* 8144A678 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8144A67C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144A680 | 41 82 00 9C */	beq .L_8144A71C
/* 8144A684 | 80 C5 00 44 */	lwz r6, 0x44(r5)
/* 8144A688 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144A68C | 41 82 00 90 */	beq .L_8144A71C
/* 8144A690 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8144A694 | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 8144A698 | 7C 03 00 40 */	cmplw r3, r0
/* 8144A69C | 40 80 00 80 */	bge .L_8144A71C
/* 8144A6A0 | 54 60 C2 3E */	srwi r0, r3, 8
/* 8144A6A4 | 54 68 06 3E */	clrlwi r8, r3, 24
/* 8144A6A8 | 1C 60 00 24 */	mulli r3, r0, 0x24
/* 8144A6AC | 39 20 00 00 */	li r9, 0x0
/* 8144A6B0 | 38 08 00 01 */	addi r0, r8, 0x1
/* 8144A6B4 | 38 80 00 80 */	li r4, 0x80
/* 8144A6B8 | 7C 66 1A 14 */	add r3, r6, r3
/* 8144A6BC | 39 43 00 04 */	addi r10, r3, 0x4
/* 8144A6C0 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8144A6C4 | 7C 09 03 A6 */	mtctr r0
/* 8144A6C8 | 28 08 00 00 */	cmplwi r8, 0x0
/* 8144A6CC | 41 80 00 28 */	blt .L_8144A6F4
.L_8144A6D0:
/* 8144A6D0 | 55 20 E8 FE */	srwi r0, r9, 3
/* 8144A6D4 | 55 23 07 7E */	clrlwi r3, r9, 29
/* 8144A6D8 | 7C 0A 00 AE */	lbzx r0, r10, r0
/* 8144A6DC | 7C 83 1E 30 */	sraw r3, r4, r3
/* 8144A6E0 | 7C 60 00 39 */	and. r0, r3, r0
/* 8144A6E4 | 41 82 00 08 */	beq .L_8144A6EC
/* 8144A6E8 | 38 E7 00 02 */	addi r7, r7, 0x2
.L_8144A6EC:
/* 8144A6EC | 39 29 00 01 */	addi r9, r9, 0x1
/* 8144A6F0 | 42 00 FF E0 */	bdnz .L_8144A6D0
.L_8144A6F4:
/* 8144A6F4 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8144A6F8 | 7C 86 3A 14 */	add r4, r6, r7
/* 8144A6FC | 38 64 00 01 */	addi r3, r4, 0x1
/* 8144A700 | 7C 05 02 14 */	add r0, r5, r0
/* 8144A704 | 7C 03 00 40 */	cmplw r3, r0
/* 8144A708 | 40 80 00 14 */	bge .L_8144A71C
/* 8144A70C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8144A710 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 8144A714 | 50 03 44 2E */	rlwimi r3, r0, 8, 16, 23
/* 8144A718 | 4E 80 00 20 */	blr
.L_8144A71C:
/* 8144A71C | 38 60 00 00 */	li r3, 0x0
/* 8144A720 | 4E 80 00 20 */	blr
.endfn CHANSVmGetSourceLine

# .text:0x178 | 0x8144A724 | size: 0xFC
.fn CHANSVmAllocFromGarbage, local
/* 8144A724 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144A728 | 7C 08 02 A6 */	mflr r0
/* 8144A72C | 38 C0 00 00 */	li r6, 0x0
/* 8144A730 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144A734 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144A738 | 80 E3 00 3C */	lwz r7, 0x3c(r3)
/* 8144A73C | 48 00 00 C4 */	b .L_8144A800
.L_8144A740:
/* 8144A740 | 38 07 00 1F */	addi r0, r7, 0x1f
/* 8144A744 | 80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8144A748 | 54 00 00 34 */	clrrwi r0, r0, 5
/* 8144A74C | 7D 07 00 50 */	subf r8, r7, r0
/* 8144A750 | 7C 04 42 14 */	add r0, r4, r8
/* 8144A754 | 7C 05 00 40 */	cmplw r5, r0
/* 8144A758 | 41 80 00 A0 */	blt .L_8144A7F8
/* 8144A75C | 7C 00 28 50 */	subf r0, r0, r5
/* 8144A760 | 7F E7 42 14 */	add r31, r7, r8
/* 8144A764 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8144A768 | 40 80 00 24 */	bge .L_8144A78C
/* 8144A76C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144A770 | 40 82 00 10 */	bne .L_8144A780
/* 8144A774 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144A778 | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 8144A77C | 48 00 00 64 */	b .L_8144A7E0
.L_8144A780:
/* 8144A780 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144A784 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 8144A788 | 48 00 00 58 */	b .L_8144A7E0
.L_8144A78C:
/* 8144A78C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144A790 | 90 07 00 04 */	stw r0, 0x4(r7)
/* 8144A794 | 40 82 00 24 */	bne .L_8144A7B8
/* 8144A798 | 7C BF 22 14 */	add r5, r31, r4
/* 8144A79C | 90 A3 00 3C */	stw r5, 0x3c(r3)
/* 8144A7A0 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144A7A4 | 7C 1F 21 2E */	stwx r0, r31, r4
/* 8144A7A8 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 8144A7AC | 80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8144A7B0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8144A7B4 | 48 00 00 20 */	b .L_8144A7D4
.L_8144A7B8:
/* 8144A7B8 | 7C 7F 22 14 */	add r3, r31, r4
/* 8144A7BC | 90 66 00 00 */	stw r3, 0x0(r6)
/* 8144A7C0 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144A7C4 | 7C 1F 21 2E */	stwx r0, r31, r4
/* 8144A7C8 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 8144A7CC | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144A7D0 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_8144A7D4:
/* 8144A7D4 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 8144A7D8 | 7C 04 00 50 */	subf r0, r4, r0
/* 8144A7DC | 90 07 00 04 */	stw r0, 0x4(r7)
.L_8144A7E0:
/* 8144A7E0 | 7C 85 23 78 */	mr r5, r4
/* 8144A7E4 | 7F E3 FB 78 */	mr r3, r31
/* 8144A7E8 | 38 80 00 00 */	li r4, 0x0
/* 8144A7EC | 4B EE 5B 49 */	bl memset
/* 8144A7F0 | 7F E3 FB 78 */	mr r3, r31
/* 8144A7F4 | 48 00 00 18 */	b .L_8144A80C
.L_8144A7F8:
/* 8144A7F8 | 7C E6 3B 78 */	mr r6, r7
/* 8144A7FC | 80 E7 00 00 */	lwz r7, 0x0(r7)
.L_8144A800:
/* 8144A800 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8144A804 | 40 82 FF 3C */	bne .L_8144A740
/* 8144A808 | 38 60 00 00 */	li r3, 0x0
.L_8144A80C:
/* 8144A80C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144A810 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144A814 | 7C 08 03 A6 */	mtlr r0
/* 8144A818 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144A81C | 4E 80 00 20 */	blr
.endfn CHANSVmAllocFromGarbage

# .text:0x274 | 0x8144A820 | size: 0x20
.fn VmUpdateSmallestFreeHeapSize, local
/* 8144A820 | 80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8144A824 | 80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8144A828 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8144A82C | 7C 85 20 50 */	subf r4, r5, r4
/* 8144A830 | 7C 00 20 40 */	cmplw r0, r4
/* 8144A834 | 4C 81 00 20 */	blelr
/* 8144A838 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 8144A83C | 4E 80 00 20 */	blr
.endfn VmUpdateSmallestFreeHeapSize

# .text:0x294 | 0x8144A840 | size: 0xAC
.fn VmNewObjHdr, local
/* 8144A840 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144A844 | 7C 08 02 A6 */	mflr r0
/* 8144A848 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144A84C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144A850 | 48 1A EC 79 */	bl _savegpr_29
/* 8144A854 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144A858 | 7C 7D 1B 78 */	mr r29, r3
/* 8144A85C | 7C 9E 23 78 */	mr r30, r4
/* 8144A860 | 3B E0 00 00 */	li r31, 0x0
/* 8144A864 | 40 82 00 10 */	bne .L_8144A874
/* 8144A868 | 38 80 00 20 */	li r4, 0x20
/* 8144A86C | 4B FF FE B9 */	bl CHANSVmAllocFromGarbage
/* 8144A870 | 7C 7F 1B 78 */	mr r31, r3
.L_8144A874:
/* 8144A874 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144A878 | 40 82 00 40 */	bne .L_8144A8B8
/* 8144A87C | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 8144A880 | 80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 8144A884 | 7C 04 18 50 */	subf r0, r4, r3
/* 8144A888 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8144A88C | 41 80 00 2C */	blt .L_8144A8B8
/* 8144A890 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144A894 | 40 82 00 14 */	bne .L_8144A8A8
/* 8144A898 | 38 04 00 20 */	addi r0, r4, 0x20
/* 8144A89C | 7C 9F 23 78 */	mr r31, r4
/* 8144A8A0 | 90 1D 00 28 */	stw r0, 0x28(r29)
/* 8144A8A4 | 48 00 00 0C */	b .L_8144A8B0
.L_8144A8A8:
/* 8144A8A8 | 3B E3 FF F0 */	subi r31, r3, 0x10
/* 8144A8AC | 93 FD 00 2C */	stw r31, 0x2c(r29)
.L_8144A8B0:
/* 8144A8B0 | 7F A3 EB 78 */	mr r3, r29
/* 8144A8B4 | 4B FF FF 6D */	bl VmUpdateSmallestFreeHeapSize
.L_8144A8B8:
/* 8144A8B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144A8BC | 41 82 00 14 */	beq .L_8144A8D0
/* 8144A8C0 | 7F E3 FB 78 */	mr r3, r31
/* 8144A8C4 | 38 80 00 00 */	li r4, 0x0
/* 8144A8C8 | 38 A0 00 10 */	li r5, 0x10
/* 8144A8CC | 4B EE 5A 69 */	bl memset
.L_8144A8D0:
/* 8144A8D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144A8D4 | 7F E3 FB 78 */	mr r3, r31
/* 8144A8D8 | 48 1A EC 3D */	bl _restgpr_29
/* 8144A8DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144A8E0 | 7C 08 03 A6 */	mtlr r0
/* 8144A8E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144A8E8 | 4E 80 00 20 */	blr
.endfn VmNewObjHdr

# .text:0x340 | 0x8144A8EC | size: 0x94
.fn CHANSVmAllocFromHeap, local
/* 8144A8EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144A8F0 | 7C 08 02 A6 */	mflr r0
/* 8144A8F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144A8F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144A8FC | 48 1A EB C9 */	bl _savegpr_28
/* 8144A900 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144A904 | 7C 7C 1B 78 */	mr r28, r3
/* 8144A908 | 7C 9D 23 78 */	mr r29, r4
/* 8144A90C | 3B C0 00 00 */	li r30, 0x0
/* 8144A910 | 41 82 00 54 */	beq .L_8144A964
/* 8144A914 | 54 80 06 FF */	clrlwi. r0, r4, 27
/* 8144A918 | 40 82 00 4C */	bne .L_8144A964
/* 8144A91C | 4B FF FE 09 */	bl CHANSVmAllocFromGarbage
/* 8144A920 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144A924 | 7C 7E 1B 78 */	mr r30, r3
/* 8144A928 | 40 82 00 3C */	bne .L_8144A964
/* 8144A92C | 83 FC 00 28 */	lwz r31, 0x28(r28)
/* 8144A930 | 80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8144A934 | 7C 1F 00 50 */	subf r0, r31, r0
/* 8144A938 | 7C 00 E8 40 */	cmplw r0, r29
/* 8144A93C | 41 80 00 28 */	blt .L_8144A964
/* 8144A940 | 7C 1F EA 14 */	add r0, r31, r29
/* 8144A944 | 7F FE FB 78 */	mr r30, r31
/* 8144A948 | 90 1C 00 28 */	stw r0, 0x28(r28)
/* 8144A94C | 7F 83 E3 78 */	mr r3, r28
/* 8144A950 | 4B FF FE D1 */	bl VmUpdateSmallestFreeHeapSize
/* 8144A954 | 7F E3 FB 78 */	mr r3, r31
/* 8144A958 | 7F A5 EB 78 */	mr r5, r29
/* 8144A95C | 38 80 00 00 */	li r4, 0x0
/* 8144A960 | 4B EE 59 D5 */	bl memset
.L_8144A964:
/* 8144A964 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144A968 | 7F C3 F3 78 */	mr r3, r30
/* 8144A96C | 48 1A EB A5 */	bl _restgpr_28
/* 8144A970 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144A974 | 7C 08 03 A6 */	mtlr r0
/* 8144A978 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144A97C | 4E 80 00 20 */	blr
.endfn CHANSVmAllocFromHeap

# .text:0x3D4 | 0x8144A980 | size: 0x1D4
.fn VmFree, local
/* 8144A980 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144A984 | 7C 08 02 A6 */	mflr r0
/* 8144A988 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144A98C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144A990 | 48 1A EB 35 */	bl _savegpr_28
/* 8144A994 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 8144A998 | 7C 7D 1B 78 */	mr r29, r3
/* 8144A99C | 7C 9E 23 78 */	mr r30, r4
/* 8144A9A0 | 7C BC 2B 78 */	mr r28, r5
/* 8144A9A4 | 7C 00 20 40 */	cmplw r0, r4
/* 8144A9A8 | 41 81 01 94 */	bgt .L_8144AB3C
/* 8144A9AC | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 8144A9B0 | 7C 04 00 40 */	cmplw r4, r0
/* 8144A9B4 | 40 80 01 88 */	bge .L_8144AB3C
/* 8144A9B8 | 28 05 00 08 */	cmplwi r5, 0x8
/* 8144A9BC | 40 81 01 80 */	ble .L_8144AB3C
/* 8144A9C0 | 7F C3 F3 78 */	mr r3, r30
/* 8144A9C4 | 38 80 00 00 */	li r4, 0x0
/* 8144A9C8 | 4B EE 59 6D */	bl memset
/* 8144A9CC | 93 9E 00 04 */	stw r28, 0x4(r30)
/* 8144A9D0 | 83 FD 00 3C */	lwz r31, 0x3c(r29)
/* 8144A9D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144A9D8 | 40 82 00 0C */	bne .L_8144A9E4
/* 8144A9DC | 93 DD 00 3C */	stw r30, 0x3c(r29)
/* 8144A9E0 | 48 00 00 F0 */	b .L_8144AAD0
.L_8144A9E4:
/* 8144A9E4 | 7C 1E F8 40 */	cmplw r30, r31
/* 8144A9E8 | 40 80 00 9C */	bge .L_8144AA84
/* 8144A9EC | 93 DD 00 3C */	stw r30, 0x3c(r29)
/* 8144A9F0 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8144A9F4 | 7C 1E 32 14 */	add r0, r30, r6
/* 8144A9F8 | 7C 00 F8 40 */	cmplw r0, r31
/* 8144A9FC | 40 82 00 2C */	bne .L_8144AA28
/* 8144AA00 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8144AA04 | 7F E3 FB 78 */	mr r3, r31
/* 8144AA08 | 38 80 00 00 */	li r4, 0x0
/* 8144AA0C | 38 A0 00 08 */	li r5, 0x8
/* 8144AA10 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8144AA14 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8144AA18 | 7C 06 02 14 */	add r0, r6, r0
/* 8144AA1C | 90 1E 00 04 */	stw r0, 0x4(r30)
/* 8144AA20 | 4B EE 59 15 */	bl memset
/* 8144AA24 | 48 00 00 AC */	b .L_8144AAD0
.L_8144AA28:
/* 8144AA28 | 93 FE 00 00 */	stw r31, 0x0(r30)
/* 8144AA2C | 48 00 00 A4 */	b .L_8144AAD0
/* 8144AA30 | 48 00 00 54 */	b .L_8144AA84
.L_8144AA34:
/* 8144AA34 | 7C 1E 18 40 */	cmplw r30, r3
/* 8144AA38 | 40 80 00 48 */	bge .L_8144AA80
/* 8144AA3C | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8144AA40 | 7C 1E 32 14 */	add r0, r30, r6
/* 8144AA44 | 7C 00 18 40 */	cmplw r0, r3
/* 8144AA48 | 40 82 00 30 */	bne .L_8144AA78
/* 8144AA4C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8144AA50 | 38 80 00 00 */	li r4, 0x0
/* 8144AA54 | 38 A0 00 08 */	li r5, 0x8
/* 8144AA58 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8144AA5C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8144AA60 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144AA64 | 7C 06 02 14 */	add r0, r6, r0
/* 8144AA68 | 90 1E 00 04 */	stw r0, 0x4(r30)
/* 8144AA6C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8144AA70 | 4B EE 58 C5 */	bl memset
/* 8144AA74 | 48 00 00 1C */	b .L_8144AA90
.L_8144AA78:
/* 8144AA78 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 8144AA7C | 48 00 00 14 */	b .L_8144AA90
.L_8144AA80:
/* 8144AA80 | 7C 7F 1B 78 */	mr r31, r3
.L_8144AA84:
/* 8144AA84 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8144AA88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144AA8C | 40 82 FF A8 */	bne .L_8144AA34
.L_8144AA90:
/* 8144AA90 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8144AA94 | 7C 1F 02 14 */	add r0, r31, r0
/* 8144AA98 | 7C 00 F0 40 */	cmplw r0, r30
/* 8144AA9C | 40 82 00 30 */	bne .L_8144AACC
/* 8144AAA0 | 38 00 00 00 */	li r0, 0x0
/* 8144AAA4 | 7F C3 F3 78 */	mr r3, r30
/* 8144AAA8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8144AAAC | 38 80 00 00 */	li r4, 0x0
/* 8144AAB0 | 38 A0 00 08 */	li r5, 0x8
/* 8144AAB4 | 80 DF 00 04 */	lwz r6, 0x4(r31)
/* 8144AAB8 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8144AABC | 7C 06 02 14 */	add r0, r6, r0
/* 8144AAC0 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8144AAC4 | 4B EE 58 71 */	bl memset
/* 8144AAC8 | 48 00 00 08 */	b .L_8144AAD0
.L_8144AACC:
/* 8144AACC | 93 DF 00 00 */	stw r30, 0x0(r31)
.L_8144AAD0:
/* 8144AAD0 | 3B C0 00 00 */	li r30, 0x0
/* 8144AAD4 | 48 00 00 5C */	b .L_8144AB30
.L_8144AAD8:
/* 8144AAD8 | 3B 80 00 00 */	li r28, 0x0
/* 8144AADC | 48 00 00 0C */	b .L_8144AAE8
.L_8144AAE0:
/* 8144AAE0 | 7F FC FB 78 */	mr r28, r31
/* 8144AAE4 | 7C 1F 03 78 */	mr r31, r0
.L_8144AAE8:
/* 8144AAE8 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8144AAEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144AAF0 | 40 82 FF F0 */	bne .L_8144AAE0
/* 8144AAF4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8144AAF8 | 80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8144AAFC | 7C 1F 02 14 */	add r0, r31, r0
/* 8144AB00 | 7C 03 00 40 */	cmplw r3, r0
/* 8144AB04 | 40 82 00 38 */	bne .L_8144AB3C
/* 8144AB08 | 7F E3 FB 78 */	mr r3, r31
/* 8144AB0C | 38 80 00 00 */	li r4, 0x0
/* 8144AB10 | 38 A0 00 08 */	li r5, 0x8
/* 8144AB14 | 4B EE 58 21 */	bl memset
/* 8144AB18 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8144AB1C | 93 FD 00 28 */	stw r31, 0x28(r29)
/* 8144AB20 | 40 82 00 0C */	bne .L_8144AB2C
/* 8144AB24 | 93 DD 00 3C */	stw r30, 0x3c(r29)
/* 8144AB28 | 48 00 00 08 */	b .L_8144AB30
.L_8144AB2C:
/* 8144AB2C | 93 DC 00 00 */	stw r30, 0x0(r28)
.L_8144AB30:
/* 8144AB30 | 83 FD 00 3C */	lwz r31, 0x3c(r29)
/* 8144AB34 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144AB38 | 40 82 FF A0 */	bne .L_8144AAD8
.L_8144AB3C:
/* 8144AB3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144AB40 | 48 1A E9 D1 */	bl _restgpr_28
/* 8144AB44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144AB48 | 7C 08 03 A6 */	mtlr r0
/* 8144AB4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144AB50 | 4E 80 00 20 */	blr
.endfn VmFree

# .text:0x5A8 | 0x8144AB54 | size: 0x100
.fn CHANSVmDeleteObject, local
/* 8144AB54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144AB58 | 7C 08 02 A6 */	mflr r0
/* 8144AB5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144AB60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144AB64 | 48 1A E9 65 */	bl _savegpr_29
/* 8144AB68 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144AB6C | 7C 7D 1B 78 */	mr r29, r3
/* 8144AB70 | 7C 9E 23 78 */	mr r30, r4
/* 8144AB74 | 41 82 00 C4 */	beq .L_8144AC38
/* 8144AB78 | 88 04 00 09 */	lbz r0, 0x9(r4)
/* 8144AB7C | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 8144AB80 | 40 82 00 B0 */	bne .L_8144AC30
/* 8144AB84 | 88 04 00 0A */	lbz r0, 0xa(r4)
/* 8144AB88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144AB8C | 41 82 00 94 */	beq .L_8144AC20
/* 8144AB90 | 83 E4 00 00 */	lwz r31, 0x0(r4)
/* 8144AB94 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8144AB98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144AB9C | 40 82 00 0C */	bne .L_8144ABA8
/* 8144ABA0 | 38 00 00 01 */	li r0, 0x1
/* 8144ABA4 | 48 00 00 20 */	b .L_8144ABC4
.L_8144ABA8:
/* 8144ABA8 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8144ABAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144ABB0 | 41 82 00 10 */	beq .L_8144ABC0
/* 8144ABB4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8144ABB8 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 8144ABBC | 48 00 00 08 */	b .L_8144ABC4
.L_8144ABC0:
/* 8144ABC0 | 38 00 FF FF */	li r0, -0x1
.L_8144ABC4:
/* 8144ABC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144ABC8 | 40 82 00 58 */	bne .L_8144AC20
/* 8144ABCC | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 8144ABD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144ABD4 | 41 82 00 2C */	beq .L_8144AC00
/* 8144ABD8 | 81 83 00 08 */	lwz r12, 0x8(r3)
/* 8144ABDC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8144ABE0 | 41 82 00 20 */	beq .L_8144AC00
/* 8144ABE4 | 7F A3 EB 78 */	mr r3, r29
/* 8144ABE8 | 7F C4 F3 78 */	mr r4, r30
/* 8144ABEC | 38 A0 00 00 */	li r5, 0x0
/* 8144ABF0 | 7D 89 03 A6 */	mtctr r12
/* 8144ABF4 | 4E 80 04 21 */	bctrl
/* 8144ABF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144ABFC | 41 82 00 3C */	beq .L_8144AC38
.L_8144AC00:
/* 8144AC00 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8144AC04 | 7F A3 EB 78 */	mr r3, r29
/* 8144AC08 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 8144AC0C | 4B FF FD 75 */	bl VmFree
/* 8144AC10 | 7F E3 FB 78 */	mr r3, r31
/* 8144AC14 | 38 80 00 00 */	li r4, 0x0
/* 8144AC18 | 38 A0 00 10 */	li r5, 0x10
/* 8144AC1C | 4B EE 57 19 */	bl memset
.L_8144AC20:
/* 8144AC20 | 7F C3 F3 78 */	mr r3, r30
/* 8144AC24 | 38 80 00 00 */	li r4, 0x0
/* 8144AC28 | 38 A0 00 10 */	li r5, 0x10
/* 8144AC2C | 4B EE 57 09 */	bl memset
.L_8144AC30:
/* 8144AC30 | 38 60 00 00 */	li r3, 0x0
/* 8144AC34 | 48 00 00 08 */	b .L_8144AC3C
.L_8144AC38:
/* 8144AC38 | 38 60 FC 2A */	li r3, -0x3d6
.L_8144AC3C:
/* 8144AC3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144AC40 | 48 1A E8 D5 */	bl _restgpr_29
/* 8144AC44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144AC48 | 7C 08 03 A6 */	mtlr r0
/* 8144AC4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144AC50 | 4E 80 00 20 */	blr
.endfn CHANSVmDeleteObject

# .text:0x6A8 | 0x8144AC54 | size: 0x180
.fn CHANSVmNewObjData, global
/* 8144AC54 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144AC58 | 7C 08 02 A6 */	mflr r0
/* 8144AC5C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8144AC60 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144AC64 | 48 1A E8 55 */	bl _savegpr_25
/* 8144AC68 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144AC6C | 7C 7D 1B 78 */	mr r29, r3
/* 8144AC70 | 7C 9E 23 78 */	mr r30, r4
/* 8144AC74 | 7C BF 2B 78 */	mr r31, r5
/* 8144AC78 | 41 82 01 40 */	beq .L_8144ADB8
/* 8144AC7C | 88 04 00 0A */	lbz r0, 0xa(r4)
/* 8144AC80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144AC84 | 40 82 01 34 */	bne .L_8144ADB8
/* 8144AC88 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144AC8C | 41 82 01 2C */	beq .L_8144ADB8
/* 8144AC90 | 80 C3 00 6C */	lwz r6, 0x6c(r3)
/* 8144AC94 | 54 C0 C2 3A */	rlwinm r0, r6, 24, 8, 29
/* 8144AC98 | 7C 63 02 14 */	add r3, r3, r0
/* 8144AC9C | 80 63 00 70 */	lwz r3, 0x70(r3)
/* 8144ACA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144ACA4 | 41 82 00 18 */	beq .L_8144ACBC
/* 8144ACA8 | 54 C0 24 B6 */	clrlslwi r0, r6, 22, 4
/* 8144ACAC | 7C 83 02 14 */	add r4, r3, r0
/* 8144ACB0 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 8144ACB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144ACB8 | 41 82 00 84 */	beq .L_8144AD3C
.L_8144ACBC:
/* 8144ACBC | 3B 40 00 00 */	li r26, 0x0
/* 8144ACC0 | 3B 60 00 00 */	li r27, 0x0
/* 8144ACC4 | 3B 80 04 00 */	li r28, 0x400
.L_8144ACC8:
/* 8144ACC8 | 7F 3D DA 14 */	add r25, r29, r27
/* 8144ACCC | 80 79 00 70 */	lwz r3, 0x70(r25)
/* 8144ACD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144ACD4 | 40 82 00 1C */	bne .L_8144ACF0
/* 8144ACD8 | 7F A3 EB 78 */	mr r3, r29
/* 8144ACDC | 38 80 40 00 */	li r4, 0x4000
/* 8144ACE0 | 4B FF FC 0D */	bl CHANSVmAllocFromHeap
/* 8144ACE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144ACE8 | 41 82 00 4C */	beq .L_8144AD34
/* 8144ACEC | 90 79 00 70 */	stw r3, 0x70(r25)
.L_8144ACF0:
/* 8144ACF0 | 38 C0 00 00 */	li r6, 0x0
/* 8144ACF4 | 38 80 00 00 */	li r4, 0x0
/* 8144ACF8 | 7F 89 03 A6 */	mtctr r28
.L_8144ACFC:
/* 8144ACFC | 7C A3 22 14 */	add r5, r3, r4
/* 8144AD00 | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 8144AD04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144AD08 | 40 82 00 10 */	bne .L_8144AD18
/* 8144AD0C | 57 40 50 2A */	slwi r0, r26, 10
/* 8144AD10 | 7C C6 02 14 */	add r6, r6, r0
/* 8144AD14 | 48 00 00 28 */	b .L_8144AD3C
.L_8144AD18:
/* 8144AD18 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8144AD1C | 38 84 00 10 */	addi r4, r4, 0x10
/* 8144AD20 | 42 00 FF DC */	bdnz .L_8144ACFC
/* 8144AD24 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8144AD28 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 8144AD2C | 28 1A 00 80 */	cmplwi r26, 0x80
/* 8144AD30 | 41 80 FF 98 */	blt .L_8144ACC8
.L_8144AD34:
/* 8144AD34 | 3B 60 00 00 */	li r27, 0x0
/* 8144AD38 | 48 00 00 40 */	b .L_8144AD78
.L_8144AD3C:
/* 8144AD3C | 3C A0 00 02 */	lis r5, 0x2
/* 8144AD40 | 54 C0 24 B6 */	clrlslwi r0, r6, 22, 4
/* 8144AD44 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8144AD48 | 38 80 00 00 */	li r4, 0x0
/* 8144AD4C | 7F 63 02 14 */	add r27, r3, r0
/* 8144AD50 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 8144AD54 | 7C 06 28 10 */	subfc r0, r6, r5
/* 8144AD58 | 7C 00 01 10 */	subfe r0, r0, r0
/* 8144AD5C | 38 A0 00 10 */	li r5, 0x10
/* 8144AD60 | 7C C0 00 78 */	andc r0, r6, r0
/* 8144AD64 | 7F 63 DB 78 */	mr r3, r27
/* 8144AD68 | 90 1D 00 6C */	stw r0, 0x6c(r29)
/* 8144AD6C | 4B EE 55 C9 */	bl memset
/* 8144AD70 | 38 00 00 01 */	li r0, 0x1
/* 8144AD74 | 90 1B 00 0C */	stw r0, 0xc(r27)
.L_8144AD78:
/* 8144AD78 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8144AD7C | 41 82 00 3C */	beq .L_8144ADB8
/* 8144AD80 | 38 1F 00 1F */	addi r0, r31, 0x1f
/* 8144AD84 | 7F A3 EB 78 */	mr r3, r29
/* 8144AD88 | 54 1A 00 34 */	clrrwi r26, r0, 5
/* 8144AD8C | 7F 44 D3 78 */	mr r4, r26
/* 8144AD90 | 4B FF FB 5D */	bl CHANSVmAllocFromHeap
/* 8144AD94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144AD98 | 41 82 00 20 */	beq .L_8144ADB8
/* 8144AD9C | 38 00 00 01 */	li r0, 0x1
/* 8144ADA0 | 93 7E 00 00 */	stw r27, 0x0(r30)
/* 8144ADA4 | 98 1E 00 0A */	stb r0, 0xa(r30)
/* 8144ADA8 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 8144ADAC | 93 FB 00 04 */	stw r31, 0x4(r27)
/* 8144ADB0 | 93 5B 00 08 */	stw r26, 0x8(r27)
/* 8144ADB4 | 48 00 00 08 */	b .L_8144ADBC
.L_8144ADB8:
/* 8144ADB8 | 38 60 00 00 */	li r3, 0x0
.L_8144ADBC:
/* 8144ADBC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144ADC0 | 48 1A E7 45 */	bl _restgpr_25
/* 8144ADC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8144ADC8 | 7C 08 03 A6 */	mtlr r0
/* 8144ADCC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144ADD0 | 4E 80 00 20 */	blr
.endfn CHANSVmNewObjData

# .text:0x828 | 0x8144ADD4 | size: 0xB0
.fn CHANSVmNewObject, local
/* 8144ADD4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144ADD8 | 7C 08 02 A6 */	mflr r0
/* 8144ADDC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144ADE0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144ADE4 | 48 1A E6 E1 */	bl _savegpr_28
/* 8144ADE8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144ADEC | 7C 7C 1B 78 */	mr r28, r3
/* 8144ADF0 | 7C BD 2B 78 */	mr r29, r5
/* 8144ADF4 | 7C DE 33 78 */	mr r30, r6
/* 8144ADF8 | 7C FF 3B 78 */	mr r31, r7
/* 8144ADFC | 41 82 00 18 */	beq .L_8144AE14
/* 8144AE00 | 7F A3 EB 78 */	mr r3, r29
/* 8144AE04 | 38 80 00 00 */	li r4, 0x0
/* 8144AE08 | 38 A0 00 10 */	li r5, 0x10
/* 8144AE0C | 4B EE 55 29 */	bl memset
/* 8144AE10 | 48 00 00 14 */	b .L_8144AE24
.L_8144AE14:
/* 8144AE14 | 4B FF FA 2D */	bl VmNewObjHdr
/* 8144AE18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144AE1C | 7C 7D 1B 78 */	mr r29, r3
/* 8144AE20 | 41 82 00 48 */	beq .L_8144AE68
.L_8144AE24:
/* 8144AE24 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144AE28 | 41 82 00 20 */	beq .L_8144AE48
/* 8144AE2C | 7F 83 E3 78 */	mr r3, r28
/* 8144AE30 | 7F A4 EB 78 */	mr r4, r29
/* 8144AE34 | 7F E5 FB 78 */	mr r5, r31
/* 8144AE38 | 4B FF FE 1D */	bl CHANSVmNewObjData
/* 8144AE3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144AE40 | 41 82 00 28 */	beq .L_8144AE68
/* 8144AE44 | 48 00 00 18 */	b .L_8144AE5C
.L_8144AE48:
/* 8144AE48 | 28 1E 00 03 */	cmplwi r30, 0x3
/* 8144AE4C | 40 82 00 10 */	bne .L_8144AE5C
/* 8144AE50 | 3C 60 81 61 */	lis r3, CHANSVmConstStringDataEmpty@ha
/* 8144AE54 | 38 63 6C C8 */	addi r3, r3, CHANSVmConstStringDataEmpty@l
/* 8144AE58 | 90 7D 00 00 */	stw r3, 0x0(r29)
.L_8144AE5C:
/* 8144AE5C | 9B DD 00 08 */	stb r30, 0x8(r29)
/* 8144AE60 | 7F A3 EB 78 */	mr r3, r29
/* 8144AE64 | 48 00 00 08 */	b .L_8144AE6C
.L_8144AE68:
/* 8144AE68 | 38 60 00 00 */	li r3, 0x0
.L_8144AE6C:
/* 8144AE6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144AE70 | 48 1A E6 A1 */	bl _restgpr_28
/* 8144AE74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144AE78 | 7C 08 03 A6 */	mtlr r0
/* 8144AE7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144AE80 | 4E 80 00 20 */	blr
.endfn CHANSVmNewObject

# .text:0x8D8 | 0x8144AE84 | size: 0x14
.fn CHANSVmNewStringObject, global
/* 8144AE84 | 7C A7 2B 78 */	mr r7, r5
/* 8144AE88 | 7C 85 23 78 */	mr r5, r4
/* 8144AE8C | 38 80 00 00 */	li r4, 0x0
/* 8144AE90 | 38 C0 00 03 */	li r6, 0x3
/* 8144AE94 | 4B FF FF 40 */	b CHANSVmNewObject
.endfn CHANSVmNewStringObject

# .text:0x8EC | 0x8144AE98 | size: 0xE0
.fn CHANSVmCopyObject, global
/* 8144AE98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144AE9C | 7C 08 02 A6 */	mflr r0
/* 8144AEA0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144AEA4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144AEA8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144AEAC | 7C BF 2B 78 */	mr r31, r5
/* 8144AEB0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144AEB4 | 7C 9E 23 78 */	mr r30, r4
/* 8144AEB8 | 41 82 00 A4 */	beq .L_8144AF5C
/* 8144AEBC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144AEC0 | 41 82 00 18 */	beq .L_8144AED8
/* 8144AEC4 | 7F C3 F3 78 */	mr r3, r30
/* 8144AEC8 | 38 80 00 00 */	li r4, 0x0
/* 8144AECC | 38 A0 00 10 */	li r5, 0x10
/* 8144AED0 | 4B EE 54 65 */	bl memset
/* 8144AED4 | 48 00 00 18 */	b .L_8144AEEC
.L_8144AED8:
/* 8144AED8 | 38 80 00 00 */	li r4, 0x0
/* 8144AEDC | 4B FF F9 65 */	bl VmNewObjHdr
/* 8144AEE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144AEE4 | 7C 7E 1B 78 */	mr r30, r3
/* 8144AEE8 | 41 82 00 74 */	beq .L_8144AF5C
.L_8144AEEC:
/* 8144AEEC | 7F C3 F3 78 */	mr r3, r30
/* 8144AEF0 | 7F E4 FB 78 */	mr r4, r31
/* 8144AEF4 | 38 A0 00 10 */	li r5, 0x10
/* 8144AEF8 | 4B EE 53 39 */	bl memcpy
/* 8144AEFC | 88 1E 00 09 */	lbz r0, 0x9(r30)
/* 8144AF00 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 8144AF04 | 98 1E 00 09 */	stb r0, 0x9(r30)
/* 8144AF08 | 88 1E 00 0A */	lbz r0, 0xa(r30)
/* 8144AF0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144AF10 | 41 82 00 44 */	beq .L_8144AF54
/* 8144AF14 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8144AF18 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8144AF1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144AF20 | 40 82 00 0C */	bne .L_8144AF2C
/* 8144AF24 | 38 00 00 01 */	li r0, 0x1
/* 8144AF28 | 48 00 00 24 */	b .L_8144AF4C
.L_8144AF2C:
/* 8144AF2C | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 8144AF30 | 38 00 FF FF */	li r0, -0x1
/* 8144AF34 | 7C 04 00 40 */	cmplw r4, r0
/* 8144AF38 | 40 80 00 10 */	bge .L_8144AF48
/* 8144AF3C | 38 04 00 01 */	addi r0, r4, 0x1
/* 8144AF40 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8144AF44 | 48 00 00 08 */	b .L_8144AF4C
.L_8144AF48:
/* 8144AF48 | 38 00 00 00 */	li r0, 0x0
.L_8144AF4C:
/* 8144AF4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144AF50 | 41 82 00 0C */	beq .L_8144AF5C
.L_8144AF54:
/* 8144AF54 | 7F C3 F3 78 */	mr r3, r30
/* 8144AF58 | 48 00 00 08 */	b .L_8144AF60
.L_8144AF5C:
/* 8144AF5C | 38 60 00 00 */	li r3, 0x0
.L_8144AF60:
/* 8144AF60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144AF64 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144AF68 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144AF6C | 7C 08 03 A6 */	mtlr r0
/* 8144AF70 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144AF74 | 4E 80 00 20 */	blr
.endfn CHANSVmCopyObject

# .text:0x9CC | 0x8144AF78 | size: 0xE0
.fn VmPopObject, local
/* 8144AF78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144AF7C | 7C 08 02 A6 */	mflr r0
/* 8144AF80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144AF84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144AF88 | 48 1A E5 39 */	bl _savegpr_27
/* 8144AF8C | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 8144AF90 | 7C 7B 1B 78 */	mr r27, r3
/* 8144AF94 | 83 A3 00 2C */	lwz r29, 0x2c(r3)
/* 8144AF98 | 7C 9C 23 78 */	mr r28, r4
/* 8144AF9C | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 8144AFA0 | 3B C0 FC 2D */	li r30, -0x3d3
/* 8144AFA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144AFA8 | 41 82 00 94 */	beq .L_8144B03C
/* 8144AFAC | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8144AFB0 | 3B FD 00 10 */	addi r31, r29, 0x10
/* 8144AFB4 | 7C 1F 00 40 */	cmplw r31, r0
/* 8144AFB8 | 41 81 00 84 */	bgt .L_8144B03C
/* 8144AFBC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144AFC0 | 3B C0 00 00 */	li r30, 0x0
/* 8144AFC4 | 41 82 00 50 */	beq .L_8144B014
/* 8144AFC8 | 38 03 00 50 */	addi r0, r3, 0x50
/* 8144AFCC | 7C 04 00 40 */	cmplw r4, r0
/* 8144AFD0 | 40 82 00 0C */	bne .L_8144AFDC
/* 8144AFD4 | 4B FF FB 81 */	bl CHANSVmDeleteObject
/* 8144AFD8 | 7C 7E 1B 78 */	mr r30, r3
.L_8144AFDC:
/* 8144AFDC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144AFE0 | 40 82 00 40 */	bne .L_8144B020
/* 8144AFE4 | 7F 83 E3 78 */	mr r3, r28
/* 8144AFE8 | 7F A4 EB 78 */	mr r4, r29
/* 8144AFEC | 38 A0 00 10 */	li r5, 0x10
/* 8144AFF0 | 4B EE 52 41 */	bl memcpy
/* 8144AFF4 | 88 1C 00 09 */	lbz r0, 0x9(r28)
/* 8144AFF8 | 7F A3 EB 78 */	mr r3, r29
/* 8144AFFC | 38 80 00 00 */	li r4, 0x0
/* 8144B000 | 38 A0 00 10 */	li r5, 0x10
/* 8144B004 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 8144B008 | 98 1C 00 09 */	stb r0, 0x9(r28)
/* 8144B00C | 4B EE 53 29 */	bl memset
/* 8144B010 | 48 00 00 10 */	b .L_8144B020
.L_8144B014:
/* 8144B014 | 7F A4 EB 78 */	mr r4, r29
/* 8144B018 | 4B FF FB 3D */	bl CHANSVmDeleteObject
/* 8144B01C | 7C 7E 1B 78 */	mr r30, r3
.L_8144B020:
/* 8144B020 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144B024 | 40 82 00 18 */	bne .L_8144B03C
/* 8144B028 | 80 9B 00 60 */	lwz r4, 0x60(r27)
/* 8144B02C | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 8144B030 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8144B034 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 8144B038 | 93 FB 00 2C */	stw r31, 0x2c(r27)
.L_8144B03C:
/* 8144B03C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B040 | 7F C3 F3 78 */	mr r3, r30
/* 8144B044 | 48 1A E4 C9 */	bl _restgpr_27
/* 8144B048 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144B04C | 7C 08 03 A6 */	mtlr r0
/* 8144B050 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144B054 | 4E 80 00 20 */	blr
.endfn VmPopObject

# .text:0xAAC | 0x8144B058 | size: 0x34
.fn VmStrToU16FromU8, local
/* 8144B058 | 7C C4 2A 14 */	add r6, r4, r5
/* 8144B05C | 54 A4 08 3C */	slwi r4, r5, 1
/* 8144B060 | 38 00 00 00 */	li r0, 0x0
/* 8144B064 | 7C A9 03 A6 */	mtctr r5
/* 8144B068 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144B06C | 4D 82 00 20 */	beqlr
.L_8144B070:
/* 8144B070 | 38 84 FF FE */	subi r4, r4, 0x2
/* 8144B074 | 8C A6 FF FF */	lbzu r5, -0x1(r6)
/* 8144B078 | 7C E3 22 14 */	add r7, r3, r4
/* 8144B07C | 98 A7 00 01 */	stb r5, 0x1(r7)
/* 8144B080 | 7C 03 21 AE */	stbx r0, r3, r4
/* 8144B084 | 42 00 FF EC */	bdnz .L_8144B070
/* 8144B088 | 4E 80 00 20 */	blr
.endfn VmStrToU16FromU8

# .text:0xAE0 | 0x8144B08C | size: 0x44
.fn VmStrCpyToU8FromU16, local
/* 8144B08C | 7C 67 1B 78 */	mr r7, r3
/* 8144B090 | 38 C0 00 00 */	li r6, 0x0
/* 8144B094 | 7C A9 03 A6 */	mtctr r5
/* 8144B098 | 28 05 00 00 */	cmplwi r5, 0x0
/* 8144B09C | 4C 81 00 20 */	blelr
.L_8144B0A0:
/* 8144B0A0 | 7C 04 30 AE */	lbzx r0, r4, r6
/* 8144B0A4 | 7C A4 32 14 */	add r5, r4, r6
/* 8144B0A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144B0AC | 41 82 00 0C */	beq .L_8144B0B8
/* 8144B0B0 | 38 60 00 00 */	li r3, 0x0
/* 8144B0B4 | 4E 80 00 20 */	blr
.L_8144B0B8:
/* 8144B0B8 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 8144B0BC | 38 C6 00 02 */	addi r6, r6, 0x2
/* 8144B0C0 | 98 07 00 00 */	stb r0, 0x0(r7)
/* 8144B0C4 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8144B0C8 | 42 00 FF D8 */	bdnz .L_8144B0A0
/* 8144B0CC | 4E 80 00 20 */	blr
.endfn VmStrCpyToU8FromU16

# .text:0xB24 | 0x8144B0D0 | size: 0xB4
.fn CHANSVmStrCpyToU8FromStringObject, global
/* 8144B0D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144B0D4 | 7C 08 02 A6 */	mflr r0
/* 8144B0D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144B0DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B0E0 | 48 1A E3 E1 */	bl _savegpr_27
/* 8144B0E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B0E8 | 7C 7B 1B 78 */	mr r27, r3
/* 8144B0EC | 7C 9C 23 78 */	mr r28, r4
/* 8144B0F0 | 7C BD 2B 78 */	mr r29, r5
/* 8144B0F4 | 3B C0 00 00 */	li r30, 0x0
/* 8144B0F8 | 3B E0 00 00 */	li r31, 0x0
/* 8144B0FC | 41 82 00 6C */	beq .L_8144B168
/* 8144B100 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144B104 | 41 82 00 64 */	beq .L_8144B168
/* 8144B108 | 38 80 00 00 */	li r4, 0x0
/* 8144B10C | 4B EE 52 29 */	bl memset
/* 8144B110 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8144B114 | 41 82 00 54 */	beq .L_8144B168
/* 8144B118 | 88 1C 00 08 */	lbz r0, 0x8(r28)
/* 8144B11C | 28 00 00 03 */	cmplwi r0, 0x3
/* 8144B120 | 40 82 00 48 */	bne .L_8144B168
/* 8144B124 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8144B128 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144B12C | 54 00 F8 7E */	srwi r0, r0, 1
/* 8144B130 | 7C 00 E8 40 */	cmplw r0, r29
/* 8144B134 | 40 81 00 08 */	ble .L_8144B13C
/* 8144B138 | 7F A0 EB 78 */	mr r0, r29
.L_8144B13C:
/* 8144B13C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8144B140 | 7C 09 03 A6 */	mtctr r0
/* 8144B144 | 28 00 00 00 */	cmplwi r0, 0x0
/* 8144B148 | 40 81 00 20 */	ble .L_8144B168
.L_8144B14C:
/* 8144B14C | 7C 64 FA 14 */	add r3, r4, r31
/* 8144B150 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8144B154 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8144B158 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8144B15C | 98 1B 00 00 */	stb r0, 0x0(r27)
/* 8144B160 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8144B164 | 42 00 FF E8 */	bdnz .L_8144B14C
.L_8144B168:
/* 8144B168 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B16C | 7F C3 F3 78 */	mr r3, r30
/* 8144B170 | 48 1A E3 9D */	bl _restgpr_27
/* 8144B174 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144B178 | 7C 08 03 A6 */	mtlr r0
/* 8144B17C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144B180 | 4E 80 00 20 */	blr
.endfn CHANSVmStrCpyToU8FromStringObject

# .text:0xBD8 | 0x8144B184 | size: 0x54
.fn CHANSVm_8144B184, local
/* 8144B184 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144B188 | 7C 08 02 A6 */	mflr r0
/* 8144B18C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144B190 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8144B194 | FF E0 08 90 */	fmr f31, f1
/* 8144B198 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8144B19C | 3B E0 00 00 */	li r31, 0x0
/* 8144B1A0 | 48 1B 33 CD */	bl __fpclassifyd
/* 8144B1A4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8144B1A8 | 41 82 00 10 */	beq .L_8144B1B8
/* 8144B1AC | C8 02 8B 08 */	lfd f0, lbl_81694F08@sda21(r0)
/* 8144B1B0 | FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8144B1B4 | 40 82 00 08 */	bne .L_8144B1BC
.L_8144B1B8:
/* 8144B1B8 | 3B E0 00 01 */	li r31, 0x1
.L_8144B1BC:
/* 8144B1BC | 7F E3 FB 78 */	mr r3, r31
/* 8144B1C0 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8144B1C4 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8144B1C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144B1CC | 7C 08 03 A6 */	mtlr r0
/* 8144B1D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144B1D4 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B184

# .text:0xC2C | 0x8144B1D8 | size: 0x20
.fn CHANSVm_8144B1D8, local
/* 8144B1D8 | C8 02 8B 28 */	lfd f0, lbl_81694F28@sda21(r0)
/* 8144B1DC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8144B1E0 | 40 80 00 0C */	bge .L_8144B1EC
/* 8144B1E4 | C8 22 8B 30 */	lfd f1, lbl_81694F30@sda21(r0)
/* 8144B1E8 | 4E 80 00 20 */	blr
.L_8144B1EC:
/* 8144B1EC | 4C 81 00 20 */	blelr
/* 8144B1F0 | C8 22 8B 38 */	lfd f1, lbl_81694F38@sda21(r0)
/* 8144B1F4 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B1D8

# .text:0xC4C | 0x8144B1F8 | size: 0x50
.fn CHANSVm_8144B1F8, local
/* 8144B1F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144B1FC | 7C 08 02 A6 */	mflr r0
/* 8144B200 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144B204 | 3C 00 80 00 */	lis r0, 0x8000
/* 8144B208 | 7C 60 00 39 */	and. r0, r3, r0
/* 8144B20C | 41 82 00 28 */	beq .L_8144B234
/* 8144B210 | 7C 85 20 F8 */	nor r5, r4, r4
/* 8144B214 | 38 80 00 01 */	li r4, 0x1
/* 8144B218 | 7C 63 18 F8 */	nor r3, r3, r3
/* 8144B21C | 38 00 00 00 */	li r0, 0x0
/* 8144B220 | 7C 85 20 14 */	addc r4, r5, r4
/* 8144B224 | 7C 63 01 14 */	adde r3, r3, r0
/* 8144B228 | 48 1A E8 31 */	bl __cvt_ull_dbl
/* 8144B22C | FC 20 08 50 */	fneg f1, f1
/* 8144B230 | 48 00 00 08 */	b .L_8144B238
.L_8144B234:
/* 8144B234 | 48 1A E8 25 */	bl __cvt_ull_dbl
.L_8144B238:
/* 8144B238 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144B23C | 7C 08 03 A6 */	mtlr r0
/* 8144B240 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144B244 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B1F8

# .text:0xC9C | 0x8144B248 | size: 0xC4
.fn VmParseInt, local
/* 8144B248 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8144B24C | 7C 08 02 A6 */	mflr r0
/* 8144B250 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8144B254 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8144B258 | 48 1A E2 69 */	bl _savegpr_27
/* 8144B25C | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 8144B260 | 3B C0 00 00 */	li r30, 0x0
/* 8144B264 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144B268 | 7C 9B 23 78 */	mr r27, r4
/* 8144B26C | 28 00 00 03 */	cmplwi r0, 0x3
/* 8144B270 | 7C BC 2B 78 */	mr r28, r5
/* 8144B274 | 40 82 00 7C */	bne .L_8144B2F0
/* 8144B278 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144B27C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144B280 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144B284 | 41 82 00 6C */	beq .L_8144B2F0
/* 8144B288 | 28 00 00 80 */	cmplwi r0, 0x80
/* 8144B28C | 41 81 00 64 */	bgt .L_8144B2F0
/* 8144B290 | 54 1D F8 7E */	srwi r29, r0, 1
/* 8144B294 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8144B298 | 7F A5 EB 78 */	mr r5, r29
/* 8144B29C | 38 61 00 0C */	addi r3, r1, 0xc
/* 8144B2A0 | 4B FF FD ED */	bl VmStrCpyToU8FromU16
/* 8144B2A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B2A8 | 41 82 00 48 */	beq .L_8144B2F0
/* 8144B2AC | 3B E1 00 0C */	addi r31, r1, 0xc
/* 8144B2B0 | 7F 65 DB 78 */	mr r5, r27
/* 8144B2B4 | 7F DF E9 AE */	stbx r30, r31, r29
/* 8144B2B8 | 7F E3 FB 78 */	mr r3, r31
/* 8144B2BC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8144B2C0 | 48 1B 95 55 */	bl strtoull
/* 8144B2C4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8144B2C8 | 7C 00 F8 40 */	cmplw r0, r31
/* 8144B2CC | 40 82 00 0C */	bne .L_8144B2D8
/* 8144B2D0 | 38 80 00 00 */	li r4, 0x0
/* 8144B2D4 | 38 60 00 00 */	li r3, 0x0
.L_8144B2D8:
/* 8144B2D8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8144B2DC | 41 82 00 0C */	beq .L_8144B2E8
/* 8144B2E0 | 90 9C 00 04 */	stw r4, 0x4(r28)
/* 8144B2E4 | 90 7C 00 00 */	stw r3, 0x0(r28)
.L_8144B2E8:
/* 8144B2E8 | 38 60 00 01 */	li r3, 0x1
/* 8144B2EC | 48 00 00 08 */	b .L_8144B2F4
.L_8144B2F0:
/* 8144B2F0 | 38 60 00 00 */	li r3, 0x0
.L_8144B2F4:
/* 8144B2F4 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8144B2F8 | 48 1A E2 15 */	bl _restgpr_27
/* 8144B2FC | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8144B300 | 7C 08 03 A6 */	mtlr r0
/* 8144B304 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8144B308 | 4E 80 00 20 */	blr
.endfn VmParseInt

# .text:0xD60 | 0x8144B30C | size: 0xAC
.fn CHANSVm_8144B30C, local
/* 8144B30C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144B310 | 7C 08 02 A6 */	mflr r0
/* 8144B314 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144B318 | DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8144B31C | F3 E1 00 18 */	psq_st f31, 0x18(r1), 0, qr0
/* 8144B320 | 38 80 00 00 */	li r4, 0x0
/* 8144B324 | 38 C0 00 01 */	li r6, 0x1
/* 8144B328 | 38 E0 00 00 */	li r7, 0x0
/* 8144B32C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144B330 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144B334 | 7C BE 2B 78 */	mr r30, r5
/* 8144B338 | 38 A0 00 00 */	li r5, 0x0
/* 8144B33C | 4B FF FA 99 */	bl CHANSVmNewObject
/* 8144B340 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B344 | 7C 7F 1B 78 */	mr r31, r3
/* 8144B348 | 41 82 00 4C */	beq .L_8144B394
/* 8144B34C | C8 3E 00 00 */	lfd f1, 0x0(r30)
/* 8144B350 | 4B FF FE 35 */	bl CHANSVm_8144B184
/* 8144B354 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B358 | 41 82 00 14 */	beq .L_8144B36C
/* 8144B35C | 38 00 00 00 */	li r0, 0x0
/* 8144B360 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8144B364 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8144B368 | 48 00 00 2C */	b .L_8144B394
.L_8144B36C:
/* 8144B36C | C8 1E 00 00 */	lfd f0, 0x0(r30)
/* 8144B370 | FC 20 02 10 */	fabs f1, f0
/* 8144B374 | 48 1C 15 1D */	bl floor
/* 8144B378 | FF E0 08 90 */	fmr f31, f1
/* 8144B37C | C8 3E 00 00 */	lfd f1, 0x0(r30)
/* 8144B380 | 4B FF FE 59 */	bl CHANSVm_8144B1D8
/* 8144B384 | FC 21 07 F2 */	fmul f1, f1, f31
/* 8144B388 | 48 1A E8 D9 */	bl __cvt_dbl_ull
/* 8144B38C | 90 9F 00 04 */	stw r4, 0x4(r31)
/* 8144B390 | 90 7F 00 00 */	stw r3, 0x0(r31)
.L_8144B394:
/* 8144B394 | 7F E3 FB 78 */	mr r3, r31
/* 8144B398 | E3 E1 00 18 */	psq_l f31, 0x18(r1), 0, qr0
/* 8144B39C | CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8144B3A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144B3A4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144B3A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144B3AC | 7C 08 03 A6 */	mtlr r0
/* 8144B3B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144B3B4 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B30C

# .text:0xE0C | 0x8144B3B8 | size: 0x70
.fn CHANSVmConvertToIntFromStr, local
/* 8144B3B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144B3BC | 7C 08 02 A6 */	mflr r0
/* 8144B3C0 | 38 80 00 00 */	li r4, 0x0
/* 8144B3C4 | 38 C0 00 01 */	li r6, 0x1
/* 8144B3C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144B3CC | 38 E0 00 00 */	li r7, 0x0
/* 8144B3D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144B3D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144B3D8 | 7C BE 2B 78 */	mr r30, r5
/* 8144B3DC | 38 A0 00 00 */	li r5, 0x0
/* 8144B3E0 | 4B FF F9 F5 */	bl CHANSVmNewObject
/* 8144B3E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B3E8 | 7C 7F 1B 78 */	mr r31, r3
/* 8144B3EC | 41 82 00 20 */	beq .L_8144B40C
/* 8144B3F0 | 7F C3 F3 78 */	mr r3, r30
/* 8144B3F4 | 7F E5 FB 78 */	mr r5, r31
/* 8144B3F8 | 38 80 00 00 */	li r4, 0x0
/* 8144B3FC | 4B FF FE 4D */	bl VmParseInt
/* 8144B400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B404 | 40 82 00 08 */	bne .L_8144B40C
/* 8144B408 | 3B E0 00 00 */	li r31, 0x0
.L_8144B40C:
/* 8144B40C | 7F E3 FB 78 */	mr r3, r31
/* 8144B410 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144B414 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144B418 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144B41C | 7C 08 03 A6 */	mtlr r0
/* 8144B420 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144B424 | 4E 80 00 20 */	blr
.endfn CHANSVmConvertToIntFromStr

# .text:0xE7C | 0x8144B428 | size: 0x8
.fn CHANSVmConvertToIntFromArray, global
/* 8144B428 | 38 60 00 00 */	li r3, 0x0
/* 8144B42C | 4E 80 00 20 */	blr
.endfn CHANSVmConvertToIntFromArray

# .text:0xE84 | 0x8144B430 | size: 0x40
.fn CHANSVm_8144B430, global
/* 8144B430 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144B434 | 7C 08 02 A6 */	mflr r0
/* 8144B438 | 38 80 00 00 */	li r4, 0x0
/* 8144B43C | 38 A0 00 00 */	li r5, 0x0
/* 8144B440 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144B444 | 38 C0 00 02 */	li r6, 0x2
/* 8144B448 | 38 E0 00 00 */	li r7, 0x0
/* 8144B44C | 4B FF F9 89 */	bl CHANSVmNewObject
/* 8144B450 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B454 | 41 82 00 0C */	beq .L_8144B460
/* 8144B458 | C8 02 8B 08 */	lfd f0, lbl_81694F08@sda21(r0)
/* 8144B45C | D8 03 00 00 */	stfd f0, 0x0(r3)
.L_8144B460:
/* 8144B460 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144B464 | 7C 08 03 A6 */	mtlr r0
/* 8144B468 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144B46C | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B430

# .text:0xEC4 | 0x8144B470 | size: 0x64
.fn CHANSVm_8144B470, global
/* 8144B470 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144B474 | 7C 08 02 A6 */	mflr r0
/* 8144B478 | 38 80 00 00 */	li r4, 0x0
/* 8144B47C | 38 C0 00 02 */	li r6, 0x2
/* 8144B480 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144B484 | 38 E0 00 00 */	li r7, 0x0
/* 8144B488 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144B48C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144B490 | 7C BE 2B 78 */	mr r30, r5
/* 8144B494 | 38 A0 00 00 */	li r5, 0x0
/* 8144B498 | 4B FF F9 3D */	bl CHANSVmNewObject
/* 8144B49C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B4A0 | 7C 7F 1B 78 */	mr r31, r3
/* 8144B4A4 | 41 82 00 14 */	beq .L_8144B4B8
/* 8144B4A8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8144B4AC | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8144B4B0 | 4B FF FD 49 */	bl CHANSVm_8144B1F8
/* 8144B4B4 | D8 3F 00 00 */	stfd f1, 0x0(r31)
.L_8144B4B8:
/* 8144B4B8 | 7F E3 FB 78 */	mr r3, r31
/* 8144B4BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144B4C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144B4C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144B4C8 | 7C 08 03 A6 */	mtlr r0
/* 8144B4CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144B4D0 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B470

# .text:0xF28 | 0x8144B4D4 | size: 0x14C
.fn CHANSVm_8144B4D4, global
/* 8144B4D4 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8144B4D8 | 7C 08 02 A6 */	mflr r0
/* 8144B4DC | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8144B4E0 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8144B4E4 | 48 1A DF DD */	bl _savegpr_27
/* 8144B4E8 | 7C BC 2B 78 */	mr r28, r5
/* 8144B4EC | 38 80 00 00 */	li r4, 0x0
/* 8144B4F0 | 38 A0 00 00 */	li r5, 0x0
/* 8144B4F4 | 38 C0 00 02 */	li r6, 0x2
/* 8144B4F8 | 38 E0 00 00 */	li r7, 0x0
/* 8144B4FC | 4B FF F8 D9 */	bl CHANSVmNewObject
/* 8144B500 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B504 | 7C 7B 1B 78 */	mr r27, r3
/* 8144B508 | 41 82 00 FC */	beq .L_8144B604
/* 8144B50C | 88 1C 00 08 */	lbz r0, 0x8(r28)
/* 8144B510 | 3B C0 00 00 */	li r30, 0x0
/* 8144B514 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144B518 | 28 00 00 03 */	cmplwi r0, 0x3
/* 8144B51C | 40 82 00 D8 */	bne .L_8144B5F4
/* 8144B520 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8144B524 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144B528 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144B52C | 41 82 00 C8 */	beq .L_8144B5F4
/* 8144B530 | 28 00 00 80 */	cmplwi r0, 0x80
/* 8144B534 | 41 81 00 C0 */	bgt .L_8144B5F4
/* 8144B538 | 54 1D F8 7E */	srwi r29, r0, 1
/* 8144B53C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8144B540 | 7F A5 EB 78 */	mr r5, r29
/* 8144B544 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8144B548 | 4B FF FB 45 */	bl VmStrCpyToU8FromU16
/* 8144B54C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B550 | 41 82 00 A4 */	beq .L_8144B5F4
/* 8144B554 | 3B 81 00 0C */	addi r28, r1, 0xc
/* 8144B558 | 3F E0 81 61 */	lis r31, lbl_81616D28@ha
/* 8144B55C | 7F DC E9 EE */	stbux r30, r28, r29
/* 8144B560 | 3B FF 6D 28 */	addi r31, r31, lbl_81616D28@l
/* 8144B564 | 3B A0 00 00 */	li r29, 0x0
.L_8144B568:
/* 8144B568 | 7C 9F F0 2E */	lwzx r4, r31, r30
/* 8144B56C | 38 61 00 0C */	addi r3, r1, 0xc
/* 8144B570 | 48 1B 6F 11 */	bl strcmp
/* 8144B574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B578 | 40 82 00 14 */	bne .L_8144B58C
/* 8144B57C | 7C 7F F2 14 */	add r3, r31, r30
/* 8144B580 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8144B584 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144B588 | 48 00 00 58 */	b .L_8144B5E0
.L_8144B58C:
/* 8144B58C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8144B590 | 3B DE 00 08 */	addi r30, r30, 0x8
/* 8144B594 | 28 1D 00 04 */	cmplwi r29, 0x4
/* 8144B598 | 41 80 FF D0 */	blt .L_8144B568
/* 8144B59C | 38 61 00 0C */	addi r3, r1, 0xc
/* 8144B5A0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8144B5A4 | 38 A0 00 00 */	li r5, 0x0
/* 8144B5A8 | 48 1B 92 6D */	bl strtoull
/* 8144B5AC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8144B5B0 | 7C 00 E0 40 */	cmplw r0, r28
/* 8144B5B4 | 40 82 00 0C */	bne .L_8144B5C0
/* 8144B5B8 | 4B FF FC 41 */	bl CHANSVm_8144B1F8
/* 8144B5BC | 48 00 00 24 */	b .L_8144B5E0
.L_8144B5C0:
/* 8144B5C0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8144B5C4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8144B5C8 | 48 1B 88 01 */	bl strtod
/* 8144B5CC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8144B5D0 | 38 01 00 0C */	addi r0, r1, 0xc
/* 8144B5D4 | 7C 03 00 40 */	cmplw r3, r0
/* 8144B5D8 | 40 82 00 08 */	bne .L_8144B5E0
/* 8144B5DC | C8 22 8B 08 */	lfd f1, lbl_81694F08@sda21(r0)
.L_8144B5E0:
/* 8144B5E0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8144B5E4 | 41 82 00 08 */	beq .L_8144B5EC
/* 8144B5E8 | D8 3B 00 00 */	stfd f1, 0x0(r27)
.L_8144B5EC:
/* 8144B5EC | 38 00 00 01 */	li r0, 0x1
/* 8144B5F0 | 48 00 00 08 */	b .L_8144B5F8
.L_8144B5F4:
/* 8144B5F4 | 38 00 00 00 */	li r0, 0x0
.L_8144B5F8:
/* 8144B5F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144B5FC | 40 82 00 08 */	bne .L_8144B604
/* 8144B600 | 3B 60 00 00 */	li r27, 0x0
.L_8144B604:
/* 8144B604 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8144B608 | 7F 63 DB 78 */	mr r3, r27
/* 8144B60C | 48 1A DF 01 */	bl _restgpr_27
/* 8144B610 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8144B614 | 7C 08 03 A6 */	mtlr r0
/* 8144B618 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8144B61C | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B4D4

# .text:0x1074 | 0x8144B620 | size: 0xC
.fn CHANSVm_8144B620, global
/* 8144B620 | 3C 60 81 61 */	lis r3, lbl_81616CD8@ha
/* 8144B624 | 38 63 6C D8 */	addi r3, r3, lbl_81616CD8@l
/* 8144B628 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B620

# .text:0x1080 | 0x8144B62C | size: 0x58
.fn VmToStrFromIntCommon, local
/* 8144B62C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144B630 | 7C 08 02 A6 */	mflr r0
/* 8144B634 | 54 84 F8 7E */	srwi r4, r4, 1
/* 8144B638 | 38 AD 95 4A */	li r5, lbl_8169758A@sda21
/* 8144B63C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144B640 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144B644 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144B648 | 7C 7E 1B 78 */	mr r30, r3
/* 8144B64C | 4C C6 32 42 */	crset cr1eq
/* 8144B650 | 48 1B 53 59 */	bl snprintf
/* 8144B654 | 7C 7F 1B 78 */	mr r31, r3
/* 8144B658 | 7F C3 F3 78 */	mr r3, r30
/* 8144B65C | 7F C4 F3 78 */	mr r4, r30
/* 8144B660 | 7F E5 FB 78 */	mr r5, r31
/* 8144B664 | 4B FF F9 F5 */	bl VmStrToU16FromU8
/* 8144B668 | 57 E3 08 3C */	slwi r3, r31, 1
/* 8144B66C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144B670 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144B674 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144B678 | 7C 08 03 A6 */	mtlr r0
/* 8144B67C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144B680 | 4E 80 00 20 */	blr
.endfn VmToStrFromIntCommon

# .text:0x10D8 | 0x8144B684 | size: 0xB0
.fn CHANSVm_8144B684, global
/* 8144B684 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144B688 | 7C 08 02 A6 */	mflr r0
/* 8144B68C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144B690 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B694 | 48 1A DE 35 */	bl _savegpr_29
/* 8144B698 | 7C BE 2B 78 */	mr r30, r5
/* 8144B69C | 38 80 00 00 */	li r4, 0x0
/* 8144B6A0 | 38 A0 00 00 */	li r5, 0x0
/* 8144B6A4 | 38 C0 00 03 */	li r6, 0x3
/* 8144B6A8 | 38 E0 00 80 */	li r7, 0x80
/* 8144B6AC | 4B FF F7 29 */	bl CHANSVmNewObject
/* 8144B6B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B6B4 | 7C 7D 1B 78 */	mr r29, r3
/* 8144B6B8 | 41 82 00 58 */	beq .L_8144B710
/* 8144B6BC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144B6C0 | 38 80 00 40 */	li r4, 0x40
/* 8144B6C4 | 80 FE 00 00 */	lwz r7, 0x0(r30)
/* 8144B6C8 | 38 AD 95 51 */	li r5, lbl_81697591@sda21
/* 8144B6CC | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 8144B6D0 | 81 1E 00 04 */	lwz r8, 0x4(r30)
/* 8144B6D4 | 7F E3 FB 78 */	mr r3, r31
/* 8144B6D8 | 4C C6 31 82 */	crclr cr1eq
/* 8144B6DC | 48 1B 52 CD */	bl snprintf
/* 8144B6E0 | 7C 7E 1B 78 */	mr r30, r3
/* 8144B6E4 | 7F E3 FB 78 */	mr r3, r31
/* 8144B6E8 | 7F E4 FB 78 */	mr r4, r31
/* 8144B6EC | 7F C5 F3 78 */	mr r5, r30
/* 8144B6F0 | 4B FF F9 69 */	bl VmStrToU16FromU8
/* 8144B6F4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8144B6F8 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8144B6FC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8144B700 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8144B704 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144B708 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144B70C | 41 82 00 0C */	beq .L_8144B718
.L_8144B710:
/* 8144B710 | 7F A3 EB 78 */	mr r3, r29
/* 8144B714 | 48 00 00 08 */	b .L_8144B71C
.L_8144B718:
/* 8144B718 | 38 60 00 00 */	li r3, 0x0
.L_8144B71C:
/* 8144B71C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B720 | 48 1A DD F5 */	bl _restgpr_29
/* 8144B724 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144B728 | 7C 08 03 A6 */	mtlr r0
/* 8144B72C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144B730 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B684

# .text:0x1188 | 0x8144B734 | size: 0xDC
.fn CHANSVm_8144B734, global
/* 8144B734 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144B738 | 7C 08 02 A6 */	mflr r0
/* 8144B73C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144B740 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B744 | 48 1A DD 85 */	bl _savegpr_29
/* 8144B748 | 3F E0 81 61 */	lis r31, CHANSVmConstStringObjectUndefined@ha
/* 8144B74C | C8 25 00 00 */	lfd f1, 0x0(r5)
/* 8144B750 | 7C 7D 1B 78 */	mr r29, r3
/* 8144B754 | 7C BE 2B 78 */	mr r30, r5
/* 8144B758 | 3B FF 6C 78 */	addi r31, r31, CHANSVmConstStringObjectUndefined@l
/* 8144B75C | 4B FF FA 29 */	bl CHANSVm_8144B184
/* 8144B760 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B764 | 41 82 00 0C */	beq .L_8144B770
/* 8144B768 | 38 7F 00 70 */	addi r3, r31, 0x70
/* 8144B76C | 48 00 00 8C */	b .L_8144B7F8
.L_8144B770:
/* 8144B770 | C8 3E 00 00 */	lfd f1, 0x0(r30)
/* 8144B774 | C8 02 8B 18 */	lfd f0, lbl_81694F18@sda21(r0)
/* 8144B778 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8144B77C | 40 82 00 0C */	bne .L_8144B788
/* 8144B780 | 38 7F 00 80 */	addi r3, r31, 0x80
/* 8144B784 | 48 00 00 74 */	b .L_8144B7F8
.L_8144B788:
/* 8144B788 | C8 02 8B 20 */	lfd f0, lbl_81694F20@sda21(r0)
/* 8144B78C | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8144B790 | 40 82 00 0C */	bne .L_8144B79C
/* 8144B794 | 38 7F 00 90 */	addi r3, r31, 0x90
/* 8144B798 | 48 00 00 60 */	b .L_8144B7F8
.L_8144B79C:
/* 8144B79C | 7F A3 EB 78 */	mr r3, r29
/* 8144B7A0 | 38 80 00 00 */	li r4, 0x0
/* 8144B7A4 | 38 A0 00 00 */	li r5, 0x0
/* 8144B7A8 | 38 C0 00 03 */	li r6, 0x3
/* 8144B7AC | 38 E0 00 80 */	li r7, 0x80
/* 8144B7B0 | 4B FF F6 25 */	bl CHANSVmNewObject
/* 8144B7B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B7B8 | 7C 7F 1B 78 */	mr r31, r3
/* 8144B7BC | 41 82 00 30 */	beq .L_8144B7EC
/* 8144B7C0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144B7C4 | 38 80 00 80 */	li r4, 0x80
/* 8144B7C8 | C8 3E 00 00 */	lfd f1, 0x0(r30)
/* 8144B7CC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144B7D0 | 4B FF FE 5D */	bl VmToStrFromIntCommon
/* 8144B7D4 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8144B7D8 | 90 64 00 04 */	stw r3, 0x4(r4)
/* 8144B7DC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8144B7E0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144B7E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144B7E8 | 41 82 00 0C */	beq .L_8144B7F4
.L_8144B7EC:
/* 8144B7EC | 7F E3 FB 78 */	mr r3, r31
/* 8144B7F0 | 48 00 00 08 */	b .L_8144B7F8
.L_8144B7F4:
/* 8144B7F4 | 38 60 00 00 */	li r3, 0x0
.L_8144B7F8:
/* 8144B7F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B7FC | 48 1A DD 19 */	bl _restgpr_29
/* 8144B800 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144B804 | 7C 08 03 A6 */	mtlr r0
/* 8144B808 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144B80C | 4E 80 00 20 */	blr
.endfn CHANSVm_8144B734

# .text:0x1264 | 0x8144B810 | size: 0x10
.fn CHANSVm_8144B810, global
/* 8144B810 | 38 80 00 00 */	li r4, 0x0
/* 8144B814 | 38 C0 00 00 */	li r6, 0x0
/* 8144B818 | 38 E0 00 00 */	li r7, 0x0
/* 8144B81C | 48 00 20 C0 */	b CHANSVm_8144D8DC
.endfn CHANSVm_8144B810

# .text:0x1274 | 0x8144B820 | size: 0x50
.fn CHANSVmConvertObjectTypeError, local
/* 8144B820 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144B824 | 7C 08 02 A6 */	mflr r0
/* 8144B828 | 7C 86 23 78 */	mr r6, r4
/* 8144B82C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144B830 | 80 0D AD 18 */	lwz r0, CHANSVmDebugVerboseMode@sda21(r0)
/* 8144B834 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144B838 | 41 82 00 24 */	beq .L_8144B85C
/* 8144B83C | 3C 60 81 67 */	lis r3, lbl_816690E2@ha
/* 8144B840 | 3C 80 81 67 */	lis r4, lbl_816690C4@ha
/* 8144B844 | 88 E5 00 08 */	lbz r7, 0x8(r5)
/* 8144B848 | 38 63 90 E2 */	addi r3, r3, lbl_816690E2@l
/* 8144B84C | 38 84 90 C4 */	addi r4, r4, lbl_816690C4@l
/* 8144B850 | 38 A0 04 98 */	li r5, 0x498
/* 8144B854 | 4C C6 31 82 */	crclr cr1eq
/* 8144B858 | 4B FF ED 55 */	bl CHANSVmDebugPrintf
.L_8144B85C:
/* 8144B85C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144B860 | 38 60 00 00 */	li r3, 0x0
/* 8144B864 | 7C 08 03 A6 */	mtlr r0
/* 8144B868 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144B86C | 4E 80 00 20 */	blr
.endfn CHANSVmConvertObjectTypeError

# .text:0x12C4 | 0x8144B870 | size: 0x6C
.fn VmGetEnumedType, local
/* 8144B870 | 28 04 00 09 */	cmplwi r4, 0x9
/* 8144B874 | 41 81 00 4C */	bgt .L_8144B8C0
/* 8144B878 | 3C A0 81 67 */	lis r5, jumptable_81669100@ha
/* 8144B87C | 54 80 10 3A */	slwi r0, r4, 2
/* 8144B880 | 38 A5 91 00 */	addi r5, r5, jumptable_81669100@l
/* 8144B884 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 8144B888 | 7C A9 03 A6 */	mtctr r5
/* 8144B88C | 4E 80 04 20 */	bctr
.L_8144B890:
/* 8144B890 | 38 00 00 00 */	li r0, 0x0
/* 8144B894 | 48 00 00 34 */	b .L_8144B8C8
.L_8144B898:
/* 8144B898 | 38 00 00 01 */	li r0, 0x1
/* 8144B89C | 48 00 00 2C */	b .L_8144B8C8
.L_8144B8A0:
/* 8144B8A0 | 38 00 00 02 */	li r0, 0x2
/* 8144B8A4 | 48 00 00 24 */	b .L_8144B8C8
.L_8144B8A8:
/* 8144B8A8 | 38 00 00 03 */	li r0, 0x3
/* 8144B8AC | 48 00 00 1C */	b .L_8144B8C8
.L_8144B8B0:
/* 8144B8B0 | 38 00 00 04 */	li r0, 0x4
/* 8144B8B4 | 48 00 00 14 */	b .L_8144B8C8
.L_8144B8B8:
/* 8144B8B8 | 38 00 00 05 */	li r0, 0x5
/* 8144B8BC | 48 00 00 0C */	b .L_8144B8C8
.L_8144B8C0:
/* 8144B8C0 | 38 60 00 00 */	li r3, 0x0
/* 8144B8C4 | 4E 80 00 20 */	blr
.L_8144B8C8:
/* 8144B8C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B8CC | 41 82 00 08 */	beq .L_8144B8D4
/* 8144B8D0 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_8144B8D4:
/* 8144B8D4 | 38 60 00 01 */	li r3, 0x1
/* 8144B8D8 | 4E 80 00 20 */	blr
.endfn VmGetEnumedType

# .text:0x1330 | 0x8144B8DC | size: 0xBC
.fn CHANSVmConvertObjectType, local
/* 8144B8DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144B8E0 | 7C 08 02 A6 */	mflr r0
/* 8144B8E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144B8E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B8EC | 48 1A DB DD */	bl _savegpr_29
/* 8144B8F0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144B8F4 | 7C 7D 1B 78 */	mr r29, r3
/* 8144B8F8 | 7C 9E 23 78 */	mr r30, r4
/* 8144B8FC | 7C BF 2B 78 */	mr r31, r5
/* 8144B900 | 40 82 00 0C */	bne .L_8144B90C
/* 8144B904 | 38 60 00 00 */	li r3, 0x0
/* 8144B908 | 48 00 00 78 */	b .L_8144B980
.L_8144B90C:
/* 8144B90C | 88 05 00 08 */	lbz r0, 0x8(r5)
/* 8144B910 | 7C 04 00 40 */	cmplw r4, r0
/* 8144B914 | 40 82 00 0C */	bne .L_8144B920
/* 8144B918 | 7F E3 FB 78 */	mr r3, r31
/* 8144B91C | 48 00 00 64 */	b .L_8144B980
.L_8144B920:
/* 8144B920 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8144B924 | 4B FF FF 4D */	bl VmGetEnumedType
/* 8144B928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B92C | 41 82 00 18 */	beq .L_8144B944
/* 8144B930 | 88 9F 00 08 */	lbz r4, 0x8(r31)
/* 8144B934 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8144B938 | 4B FF FF 39 */	bl VmGetEnumedType
/* 8144B93C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B940 | 40 82 00 0C */	bne .L_8144B94C
.L_8144B944:
/* 8144B944 | 38 60 00 00 */	li r3, 0x0
/* 8144B948 | 48 00 00 38 */	b .L_8144B980
.L_8144B94C:
/* 8144B94C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8144B950 | 3C A0 81 61 */	lis r5, VmTypeConvertFuncTbl@ha
/* 8144B954 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8144B958 | 38 A5 6D 48 */	addi r5, r5, VmTypeConvertFuncTbl@l
/* 8144B95C | 1C E3 00 18 */	mulli r7, r3, 0x18
/* 8144B960 | 7F A3 EB 78 */	mr r3, r29
/* 8144B964 | 54 06 10 3A */	slwi r6, r0, 2
/* 8144B968 | 7F C4 F3 78 */	mr r4, r30
/* 8144B96C | 7C 05 3A 14 */	add r0, r5, r7
/* 8144B970 | 7F E5 FB 78 */	mr r5, r31
/* 8144B974 | 7D 86 00 2E */	lwzx r12, r6, r0
/* 8144B978 | 7D 89 03 A6 */	mtctr r12
/* 8144B97C | 4E 80 04 21 */	bctrl
.L_8144B980:
/* 8144B980 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B984 | 48 1A DB 91 */	bl _restgpr_29
/* 8144B988 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144B98C | 7C 08 03 A6 */	mtlr r0
/* 8144B990 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144B994 | 4E 80 00 20 */	blr
.endfn CHANSVmConvertObjectType

# .text:0x13EC | 0x8144B998 | size: 0x54
.fn CHANSVmSetInteger, global
/* 8144B998 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144B99C | 7C 08 02 A6 */	mflr r0
/* 8144B9A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144B9A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B9A8 | 48 1A DB 21 */	bl _savegpr_29
/* 8144B9AC | 7C 9D 23 78 */	mr r29, r4
/* 8144B9B0 | 7C BF 2B 78 */	mr r31, r5
/* 8144B9B4 | 7C DE 33 78 */	mr r30, r6
/* 8144B9B8 | 4B FF F1 9D */	bl CHANSVmDeleteObject
/* 8144B9BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144B9C0 | 40 82 00 14 */	bne .L_8144B9D4
/* 8144B9C4 | 38 00 00 01 */	li r0, 0x1
/* 8144B9C8 | 93 DD 00 04 */	stw r30, 0x4(r29)
/* 8144B9CC | 98 1D 00 08 */	stb r0, 0x8(r29)
/* 8144B9D0 | 93 FD 00 00 */	stw r31, 0x0(r29)
.L_8144B9D4:
/* 8144B9D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144B9D8 | 48 1A DB 3D */	bl _restgpr_29
/* 8144B9DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144B9E0 | 7C 08 03 A6 */	mtlr r0
/* 8144B9E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144B9E8 | 4E 80 00 20 */	blr
.endfn CHANSVmSetInteger

# .text:0x1440 | 0x8144B9EC | size: 0x5C
.fn CHANSVmSetFloat, global
/* 8144B9EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144B9F0 | 7C 08 02 A6 */	mflr r0
/* 8144B9F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144B9F8 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8144B9FC | FF E0 08 90 */	fmr f31, f1
/* 8144BA00 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8144BA04 | 7C 9F 23 78 */	mr r31, r4
/* 8144BA08 | 4B FF F1 4D */	bl CHANSVmDeleteObject
/* 8144BA0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144BA10 | 40 82 00 20 */	bne .L_8144BA30
/* 8144BA14 | C8 02 8B 10 */	lfd f0, lbl_81694F10@sda21(r0)
/* 8144BA18 | 38 00 00 02 */	li r0, 0x2
/* 8144BA1C | 98 1F 00 08 */	stb r0, 0x8(r31)
/* 8144BA20 | FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8144BA24 | 40 82 00 08 */	bne .L_8144BA2C
/* 8144BA28 | CB E2 8B 28 */	lfd f31, lbl_81694F28@sda21(r0)
.L_8144BA2C:
/* 8144BA2C | DB FF 00 00 */	stfd f31, 0x0(r31)
.L_8144BA30:
/* 8144BA30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144BA34 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8144BA38 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8144BA3C | 7C 08 03 A6 */	mtlr r0
/* 8144BA40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144BA44 | 4E 80 00 20 */	blr
.endfn CHANSVmSetFloat

# .text:0x149C | 0x8144BA48 | size: 0x94
.fn CHANSVmSetU16String, global
/* 8144BA48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144BA4C | 7C 08 02 A6 */	mflr r0
/* 8144BA50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144BA54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144BA58 | 48 1A DA 69 */	bl _savegpr_27
/* 8144BA5C | 7C 7B 1B 78 */	mr r27, r3
/* 8144BA60 | 7C 9C 23 78 */	mr r28, r4
/* 8144BA64 | 7C BD 2B 78 */	mr r29, r5
/* 8144BA68 | 7C DE 33 78 */	mr r30, r6
/* 8144BA6C | 4B FF F0 E9 */	bl CHANSVmDeleteObject
/* 8144BA70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144BA74 | 7C 7F 1B 78 */	mr r31, r3
/* 8144BA78 | 40 82 00 48 */	bne .L_8144BAC0
/* 8144BA7C | 7F 63 DB 78 */	mr r3, r27
/* 8144BA80 | 7F 85 E3 78 */	mr r5, r28
/* 8144BA84 | 7F C7 F3 78 */	mr r7, r30
/* 8144BA88 | 38 80 00 00 */	li r4, 0x0
/* 8144BA8C | 38 C0 00 03 */	li r6, 0x3
/* 8144BA90 | 4B FF F3 45 */	bl CHANSVmNewObject
/* 8144BA94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144BA98 | 40 82 00 0C */	bne .L_8144BAA4
/* 8144BA9C | 38 60 FC 54 */	li r3, -0x3ac
/* 8144BAA0 | 48 00 00 24 */	b .L_8144BAC4
.L_8144BAA4:
/* 8144BAA4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144BAA8 | 41 82 00 18 */	beq .L_8144BAC0
/* 8144BAAC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8144BAB0 | 7F A4 EB 78 */	mr r4, r29
/* 8144BAB4 | 7F C5 F3 78 */	mr r5, r30
/* 8144BAB8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144BABC | 4B EE 47 75 */	bl memcpy
.L_8144BAC0:
/* 8144BAC0 | 7F E3 FB 78 */	mr r3, r31
.L_8144BAC4:
/* 8144BAC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144BAC8 | 48 1A DA 45 */	bl _restgpr_27
/* 8144BACC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144BAD0 | 7C 08 03 A6 */	mtlr r0
/* 8144BAD4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144BAD8 | 4E 80 00 20 */	blr
.endfn CHANSVmSetU16String

# .text:0x1530 | 0x8144BADC | size: 0x94
.fn CHANSVmSetU16StringFromU8, global
/* 8144BADC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144BAE0 | 7C 08 02 A6 */	mflr r0
/* 8144BAE4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144BAE8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144BAEC | 48 1A D9 D5 */	bl _savegpr_27
/* 8144BAF0 | 7C 7B 1B 78 */	mr r27, r3
/* 8144BAF4 | 7C 9C 23 78 */	mr r28, r4
/* 8144BAF8 | 7C BD 2B 78 */	mr r29, r5
/* 8144BAFC | 7C DE 33 78 */	mr r30, r6
/* 8144BB00 | 4B FF F0 55 */	bl CHANSVmDeleteObject
/* 8144BB04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144BB08 | 7C 7F 1B 78 */	mr r31, r3
/* 8144BB0C | 40 82 00 48 */	bne .L_8144BB54
/* 8144BB10 | 7F 63 DB 78 */	mr r3, r27
/* 8144BB14 | 7F 85 E3 78 */	mr r5, r28
/* 8144BB18 | 57 C7 08 3C */	slwi r7, r30, 1
/* 8144BB1C | 38 80 00 00 */	li r4, 0x0
/* 8144BB20 | 38 C0 00 03 */	li r6, 0x3
/* 8144BB24 | 4B FF F2 B1 */	bl CHANSVmNewObject
/* 8144BB28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144BB2C | 40 82 00 0C */	bne .L_8144BB38
/* 8144BB30 | 38 60 FC 54 */	li r3, -0x3ac
/* 8144BB34 | 48 00 00 24 */	b .L_8144BB58
.L_8144BB38:
/* 8144BB38 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144BB3C | 41 82 00 18 */	beq .L_8144BB54
/* 8144BB40 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8144BB44 | 7F A4 EB 78 */	mr r4, r29
/* 8144BB48 | 7F C5 F3 78 */	mr r5, r30
/* 8144BB4C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144BB50 | 4B FF F5 09 */	bl VmStrToU16FromU8
.L_8144BB54:
/* 8144BB54 | 7F E3 FB 78 */	mr r3, r31
.L_8144BB58:
/* 8144BB58 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144BB5C | 48 1A D9 B1 */	bl _restgpr_27
/* 8144BB60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144BB64 | 7C 08 03 A6 */	mtlr r0
/* 8144BB68 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144BB6C | 4E 80 00 20 */	blr
.endfn CHANSVmSetU16StringFromU8

# .text:0x15C4 | 0x8144BB70 | size: 0x158
.fn CHANSVm_8144BB70, global
/* 8144BB70 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144BB74 | 7C 08 02 A6 */	mflr r0
/* 8144BB78 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8144BB7C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144BB80 | 48 1A D9 3D */	bl _savegpr_26
/* 8144BB84 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8144BB88 | 7C 7A 1B 78 */	mr r26, r3
/* 8144BB8C | 7C BB 2B 78 */	mr r27, r5
/* 8144BB90 | 7C DC 33 78 */	mr r28, r6
/* 8144BB94 | 7C FD 3B 78 */	mr r29, r7
/* 8144BB98 | 3B C0 FC 31 */	li r30, -0x3cf
/* 8144BB9C | 41 82 00 48 */	beq .L_8144BBE4
/* 8144BBA0 | 40 80 00 10 */	bge .L_8144BBB0
/* 8144BBA4 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144BBA8 | 40 80 00 14 */	bge .L_8144BBBC
/* 8144BBAC | 48 00 01 00 */	b .L_8144BCAC
.L_8144BBB0:
/* 8144BBB0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8144BBB4 | 40 80 00 F8 */	bge .L_8144BCAC
/* 8144BBB8 | 48 00 00 48 */	b .L_8144BC00
.L_8144BBBC:
/* 8144BBBC | 81 26 00 04 */	lwz r9, 0x4(r6)
/* 8144BBC0 | 7F 64 DB 78 */	mr r4, r27
/* 8144BBC4 | 80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8144BBC8 | 81 06 00 00 */	lwz r8, 0x0(r6)
/* 8144BBCC | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144BBD0 | 7C C9 28 14 */	addc r6, r9, r5
/* 8144BBD4 | 7C A8 01 14 */	adde r5, r8, r0
/* 8144BBD8 | 4B FF FD C1 */	bl CHANSVmSetInteger
/* 8144BBDC | 7C 7E 1B 78 */	mr r30, r3
/* 8144BBE0 | 48 00 00 CC */	b .L_8144BCAC
.L_8144BBE4:
/* 8144BBE4 | C8 26 00 00 */	lfd f1, 0x0(r6)
/* 8144BBE8 | 7F 64 DB 78 */	mr r4, r27
/* 8144BBEC | C8 07 00 00 */	lfd f0, 0x0(r7)
/* 8144BBF0 | FC 21 00 2A */	fadd f1, f1, f0
/* 8144BBF4 | 4B FF FD F9 */	bl CHANSVmSetFloat
/* 8144BBF8 | 7C 7E 1B 78 */	mr r30, r3
/* 8144BBFC | 48 00 00 B0 */	b .L_8144BCAC
.L_8144BC00:
/* 8144BC00 | 80 C7 00 00 */	lwz r6, 0x0(r7)
/* 8144BC04 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8144BC08 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8144BC0C | 3B C0 FC 42 */	li r30, -0x3be
/* 8144BC10 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8144BC14 | 38 C0 00 03 */	li r6, 0x3
/* 8144BC18 | 80 E4 00 04 */	lwz r7, 0x4(r4)
/* 8144BC1C | 38 80 00 00 */	li r4, 0x0
/* 8144BC20 | 7C E7 02 14 */	add r7, r7, r0
/* 8144BC24 | 4B FF F1 B1 */	bl CHANSVmNewObject
/* 8144BC28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144BC2C | 7C 7F 1B 78 */	mr r31, r3
/* 8144BC30 | 41 82 00 7C */	beq .L_8144BCAC
/* 8144BC34 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8144BC38 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8144BC3C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144BC40 | 41 82 00 14 */	beq .L_8144BC54
/* 8144BC44 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144BC48 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144BC4C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144BC50 | 4B EE 45 E1 */	bl memcpy
.L_8144BC54:
/* 8144BC54 | 80 FD 00 00 */	lwz r7, 0x0(r29)
/* 8144BC58 | 80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8144BC5C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144BC60 | 41 82 00 20 */	beq .L_8144BC80
/* 8144BC64 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8144BC68 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8144BC6C | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8144BC70 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144BC74 | 80 87 00 00 */	lwz r4, 0x0(r7)
/* 8144BC78 | 7C 66 02 14 */	add r3, r6, r0
/* 8144BC7C | 4B EE 45 B5 */	bl memcpy
.L_8144BC80:
/* 8144BC80 | 7F 43 D3 78 */	mr r3, r26
/* 8144BC84 | 7F 64 DB 78 */	mr r4, r27
/* 8144BC88 | 7F E5 FB 78 */	mr r5, r31
/* 8144BC8C | 48 00 A1 41 */	bl CHANSVm_81455DCC
/* 8144BC90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144BC94 | 7C 7E 1B 78 */	mr r30, r3
/* 8144BC98 | 40 82 00 14 */	bne .L_8144BCAC
/* 8144BC9C | 7F 43 D3 78 */	mr r3, r26
/* 8144BCA0 | 7F E4 FB 78 */	mr r4, r31
/* 8144BCA4 | 4B FF EE B1 */	bl CHANSVmDeleteObject
/* 8144BCA8 | 7C 7E 1B 78 */	mr r30, r3
.L_8144BCAC:
/* 8144BCAC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144BCB0 | 7F C3 F3 78 */	mr r3, r30
/* 8144BCB4 | 48 1A D8 55 */	bl _restgpr_26
/* 8144BCB8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8144BCBC | 7C 08 03 A6 */	mtlr r0
/* 8144BCC0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144BCC4 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144BB70

# .text:0x171C | 0x8144BCC8 | size: 0x7C
.fn CHANSVm_8144BCC8, global
/* 8144BCC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144BCCC | 7C 08 02 A6 */	mflr r0
/* 8144BCD0 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8144BCD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144BCD8 | 38 00 FC 32 */	li r0, -0x3ce
/* 8144BCDC | 41 82 00 3C */	beq .L_8144BD18
/* 8144BCE0 | 40 80 00 50 */	bge .L_8144BD30
/* 8144BCE4 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144BCE8 | 40 80 00 08 */	bge .L_8144BCF0
/* 8144BCEC | 48 00 00 44 */	b .L_8144BD30
.L_8144BCF0:
/* 8144BCF0 | 7C A4 2B 78 */	mr r4, r5
/* 8144BCF4 | 81 26 00 04 */	lwz r9, 0x4(r6)
/* 8144BCF8 | 80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8144BCFC | 81 06 00 00 */	lwz r8, 0x0(r6)
/* 8144BD00 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144BD04 | 7C C5 48 10 */	subfc r6, r5, r9
/* 8144BD08 | 7C A0 41 10 */	subfe r5, r0, r8
/* 8144BD0C | 4B FF FC 8D */	bl CHANSVmSetInteger
/* 8144BD10 | 7C 60 1B 78 */	mr r0, r3
/* 8144BD14 | 48 00 00 1C */	b .L_8144BD30
.L_8144BD18:
/* 8144BD18 | C8 26 00 00 */	lfd f1, 0x0(r6)
/* 8144BD1C | 7C A4 2B 78 */	mr r4, r5
/* 8144BD20 | C8 07 00 00 */	lfd f0, 0x0(r7)
/* 8144BD24 | FC 21 00 28 */	fsub f1, f1, f0
/* 8144BD28 | 4B FF FC C5 */	bl CHANSVmSetFloat
/* 8144BD2C | 7C 60 1B 78 */	mr r0, r3
.L_8144BD30:
/* 8144BD30 | 7C 03 03 78 */	mr r3, r0
/* 8144BD34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144BD38 | 7C 08 03 A6 */	mtlr r0
/* 8144BD3C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144BD40 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144BCC8

# .text:0x1798 | 0x8144BD44 | size: 0x8C
.fn CHANSVm_8144BD44, global
/* 8144BD44 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144BD48 | 7C 08 02 A6 */	mflr r0
/* 8144BD4C | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8144BD50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144BD54 | 38 00 FC 33 */	li r0, -0x3cd
/* 8144BD58 | 41 82 00 4C */	beq .L_8144BDA4
/* 8144BD5C | 40 80 00 60 */	bge .L_8144BDBC
/* 8144BD60 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144BD64 | 40 80 00 08 */	bge .L_8144BD6C
/* 8144BD68 | 48 00 00 54 */	b .L_8144BDBC
.L_8144BD6C:
/* 8144BD6C | 81 26 00 04 */	lwz r9, 0x4(r6)
/* 8144BD70 | 7C A4 2B 78 */	mr r4, r5
/* 8144BD74 | 81 07 00 04 */	lwz r8, 0x4(r7)
/* 8144BD78 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 8144BD7C | 7C A9 40 16 */	mulhwu r5, r9, r8
/* 8144BD80 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144BD84 | 7C C6 41 D6 */	mullw r6, r6, r8
/* 8144BD88 | 7C A5 32 14 */	add r5, r5, r6
/* 8144BD8C | 7C 09 01 D6 */	mullw r0, r9, r0
/* 8144BD90 | 7C C9 41 D6 */	mullw r6, r9, r8
/* 8144BD94 | 7C A5 02 14 */	add r5, r5, r0
/* 8144BD98 | 4B FF FC 01 */	bl CHANSVmSetInteger
/* 8144BD9C | 7C 60 1B 78 */	mr r0, r3
/* 8144BDA0 | 48 00 00 1C */	b .L_8144BDBC
.L_8144BDA4:
/* 8144BDA4 | C8 26 00 00 */	lfd f1, 0x0(r6)
/* 8144BDA8 | 7C A4 2B 78 */	mr r4, r5
/* 8144BDAC | C8 07 00 00 */	lfd f0, 0x0(r7)
/* 8144BDB0 | FC 21 00 32 */	fmul f1, f1, f0
/* 8144BDB4 | 4B FF FC 39 */	bl CHANSVmSetFloat
/* 8144BDB8 | 7C 60 1B 78 */	mr r0, r3
.L_8144BDBC:
/* 8144BDBC | 7C 03 03 78 */	mr r3, r0
/* 8144BDC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144BDC4 | 7C 08 03 A6 */	mtlr r0
/* 8144BDC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144BDCC | 4E 80 00 20 */	blr
.endfn CHANSVm_8144BD44

# .text:0x1824 | 0x8144BDD0 | size: 0xAC
.fn CHANSVm_8144BDD0, global
/* 8144BDD0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144BDD4 | 7C 08 02 A6 */	mflr r0
/* 8144BDD8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144BDDC | 39 61 00 18 */	addi r11, r1, 0x18
/* 8144BDE0 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8144BDE4 | 48 1A D6 E5 */	bl _savegpr_29
/* 8144BDE8 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8144BDEC | 7C 7D 1B 78 */	mr r29, r3
/* 8144BDF0 | 7C BE 2B 78 */	mr r30, r5
/* 8144BDF4 | 7C DF 33 78 */	mr r31, r6
/* 8144BDF8 | 38 00 FC 34 */	li r0, -0x3cc
/* 8144BDFC | 41 82 00 48 */	beq .L_8144BE44
/* 8144BE00 | 40 80 00 5C */	bge .L_8144BE5C
/* 8144BE04 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144BE08 | 40 80 00 08 */	bge .L_8144BE10
/* 8144BE0C | 48 00 00 50 */	b .L_8144BE5C
.L_8144BE10:
/* 8144BE10 | 80 67 00 00 */	lwz r3, 0x0(r7)
/* 8144BE14 | 80 87 00 04 */	lwz r4, 0x4(r7)
/* 8144BE18 | 4B FF F3 E1 */	bl CHANSVm_8144B1F8
/* 8144BE1C | FF E0 08 90 */	fmr f31, f1
/* 8144BE20 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8144BE24 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8144BE28 | 4B FF F3 D1 */	bl CHANSVm_8144B1F8
/* 8144BE2C | FC 21 F8 24 */	fdiv f1, f1, f31
/* 8144BE30 | 7F A3 EB 78 */	mr r3, r29
/* 8144BE34 | 7F C4 F3 78 */	mr r4, r30
/* 8144BE38 | 4B FF FB B5 */	bl CHANSVmSetFloat
/* 8144BE3C | 7C 60 1B 78 */	mr r0, r3
/* 8144BE40 | 48 00 00 1C */	b .L_8144BE5C
.L_8144BE44:
/* 8144BE44 | C8 26 00 00 */	lfd f1, 0x0(r6)
/* 8144BE48 | 7F C4 F3 78 */	mr r4, r30
/* 8144BE4C | C8 07 00 00 */	lfd f0, 0x0(r7)
/* 8144BE50 | FC 21 00 24 */	fdiv f1, f1, f0
/* 8144BE54 | 4B FF FB 99 */	bl CHANSVmSetFloat
/* 8144BE58 | 7C 60 1B 78 */	mr r0, r3
.L_8144BE5C:
/* 8144BE5C | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8144BE60 | 39 61 00 18 */	addi r11, r1, 0x18
/* 8144BE64 | 7C 03 03 78 */	mr r3, r0
/* 8144BE68 | 48 1A D6 AD */	bl _restgpr_29
/* 8144BE6C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144BE70 | 7C 08 03 A6 */	mtlr r0
/* 8144BE74 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144BE78 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144BDD0

# .text:0x18D0 | 0x8144BE7C | size: 0xA8
.fn CHANSVm_8144BE7C, global
/* 8144BE7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144BE80 | 7C 08 02 A6 */	mflr r0
/* 8144BE84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144BE88 | 39 61 00 18 */	addi r11, r1, 0x18
/* 8144BE8C | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8144BE90 | 48 1A D6 39 */	bl _savegpr_29
/* 8144BE94 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8144BE98 | 7C 7D 1B 78 */	mr r29, r3
/* 8144BE9C | 7C BE 2B 78 */	mr r30, r5
/* 8144BEA0 | 7C DF 33 78 */	mr r31, r6
/* 8144BEA4 | 38 60 FC 35 */	li r3, -0x3cb
/* 8144BEA8 | 41 82 00 48 */	beq .L_8144BEF0
/* 8144BEAC | 40 80 00 5C */	bge .L_8144BF08
/* 8144BEB0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144BEB4 | 40 80 00 08 */	bge .L_8144BEBC
/* 8144BEB8 | 48 00 00 50 */	b .L_8144BF08
.L_8144BEBC:
/* 8144BEBC | 80 67 00 00 */	lwz r3, 0x0(r7)
/* 8144BEC0 | 80 87 00 04 */	lwz r4, 0x4(r7)
/* 8144BEC4 | 4B FF F3 35 */	bl CHANSVm_8144B1F8
/* 8144BEC8 | FF E0 08 90 */	fmr f31, f1
/* 8144BECC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8144BED0 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8144BED4 | 4B FF F3 25 */	bl CHANSVm_8144B1F8
/* 8144BED8 | FC 40 F8 90 */	fmr f2, f31
/* 8144BEDC | 48 1C 0E 4D */	bl fmod
/* 8144BEE0 | 7F A3 EB 78 */	mr r3, r29
/* 8144BEE4 | 7F C4 F3 78 */	mr r4, r30
/* 8144BEE8 | 4B FF FB 05 */	bl CHANSVmSetFloat
/* 8144BEEC | 48 00 00 1C */	b .L_8144BF08
.L_8144BEF0:
/* 8144BEF0 | C8 26 00 00 */	lfd f1, 0x0(r6)
/* 8144BEF4 | C8 47 00 00 */	lfd f2, 0x0(r7)
/* 8144BEF8 | 48 1C 0E 31 */	bl fmod
/* 8144BEFC | 7F A3 EB 78 */	mr r3, r29
/* 8144BF00 | 7F C4 F3 78 */	mr r4, r30
/* 8144BF04 | 4B FF FA E9 */	bl CHANSVmSetFloat
.L_8144BF08:
/* 8144BF08 | 39 61 00 18 */	addi r11, r1, 0x18
/* 8144BF0C | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8144BF10 | 48 1A D6 05 */	bl _restgpr_29
/* 8144BF14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144BF18 | 7C 08 03 A6 */	mtlr r0
/* 8144BF1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144BF20 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144BE7C

# .text:0x1978 | 0x8144BF24 | size: 0x94
.fn VmULShift, local
/* 8144BF24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144BF28 | 7C 08 02 A6 */	mflr r0
/* 8144BF2C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144BF30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144BF34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144BF38 | 7C BF 2B 78 */	mr r31, r5
/* 8144BF3C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144BF40 | 7C 7E 1B 78 */	mr r30, r3
/* 8144BF44 | 38 60 FC 36 */	li r3, -0x3ca
/* 8144BF48 | 41 82 00 08 */	beq .L_8144BF50
/* 8144BF4C | 48 00 00 54 */	b .L_8144BFA0
.L_8144BF50:
/* 8144BF50 | 80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8144BF54 | 38 00 00 40 */	li r0, 0x40
/* 8144BF58 | 80 67 00 00 */	lwz r3, 0x0(r7)
/* 8144BF5C | 38 E0 00 00 */	li r7, 0x0
/* 8144BF60 | 7C 00 28 10 */	subfc r0, r0, r5
/* 8144BF64 | 7C 07 19 10 */	subfe r0, r7, r3
/* 8144BF68 | 7C 05 29 10 */	subfe r0, r5, r5
/* 8144BF6C | 7C 00 00 D1 */	neg. r0, r0
/* 8144BF70 | 41 82 00 1C */	beq .L_8144BF8C
/* 8144BF74 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144BF78 | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 8144BF7C | 48 1A D9 BD */	bl __shl2i
/* 8144BF80 | 7C 87 23 78 */	mr r7, r4
/* 8144BF84 | 7C 65 1B 78 */	mr r5, r3
/* 8144BF88 | 48 00 00 08 */	b .L_8144BF90
.L_8144BF8C:
/* 8144BF8C | 7C E5 3B 78 */	mr r5, r7
.L_8144BF90:
/* 8144BF90 | 7F C3 F3 78 */	mr r3, r30
/* 8144BF94 | 7F E4 FB 78 */	mr r4, r31
/* 8144BF98 | 7C E6 3B 78 */	mr r6, r7
/* 8144BF9C | 4B FF F9 FD */	bl CHANSVmSetInteger
.L_8144BFA0:
/* 8144BFA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144BFA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144BFA8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144BFAC | 7C 08 03 A6 */	mtlr r0
/* 8144BFB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144BFB4 | 4E 80 00 20 */	blr
.endfn VmULShift

# .text:0x1A0C | 0x8144BFB8 | size: 0x98
.fn VmARShift, local
/* 8144BFB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144BFBC | 7C 08 02 A6 */	mflr r0
/* 8144BFC0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144BFC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144BFC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144BFCC | 7C BF 2B 78 */	mr r31, r5
/* 8144BFD0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144BFD4 | 7C 7E 1B 78 */	mr r30, r3
/* 8144BFD8 | 38 60 FC 37 */	li r3, -0x3c9
/* 8144BFDC | 41 82 00 08 */	beq .L_8144BFE4
/* 8144BFE0 | 48 00 00 58 */	b .L_8144C038
.L_8144BFE4:
/* 8144BFE4 | 80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8144BFE8 | 38 00 00 40 */	li r0, 0x40
/* 8144BFEC | 80 87 00 00 */	lwz r4, 0x0(r7)
/* 8144BFF0 | 38 60 00 00 */	li r3, 0x0
/* 8144BFF4 | 7C 00 28 10 */	subfc r0, r0, r5
/* 8144BFF8 | 7C 03 21 10 */	subfe r0, r3, r4
/* 8144BFFC | 7C 05 29 10 */	subfe r0, r5, r5
/* 8144C000 | 7C 00 00 D1 */	neg. r0, r0
/* 8144C004 | 41 82 00 1C */	beq .L_8144C020
/* 8144C008 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144C00C | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 8144C010 | 48 1A D9 71 */	bl __shr2i
/* 8144C014 | 7C 86 23 78 */	mr r6, r4
/* 8144C018 | 7C 65 1B 78 */	mr r5, r3
/* 8144C01C | 48 00 00 10 */	b .L_8144C02C
.L_8144C020:
/* 8144C020 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 8144C024 | 7C 06 FE 70 */	srawi r6, r0, 31
/* 8144C028 | 7C 05 FE 70 */	srawi r5, r0, 31
.L_8144C02C:
/* 8144C02C | 7F C3 F3 78 */	mr r3, r30
/* 8144C030 | 7F E4 FB 78 */	mr r4, r31
/* 8144C034 | 4B FF F9 65 */	bl CHANSVmSetInteger
.L_8144C038:
/* 8144C038 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144C03C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144C040 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144C044 | 7C 08 03 A6 */	mtlr r0
/* 8144C048 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144C04C | 4E 80 00 20 */	blr
.endfn VmARShift

# .text:0x1AA4 | 0x8144C050 | size: 0x54
.fn VmBitAnd, local
/* 8144C050 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144C054 | 7C 08 02 A6 */	mflr r0
/* 8144C058 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144C05C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144C060 | 38 00 FC 38 */	li r0, -0x3c8
/* 8144C064 | 41 82 00 08 */	beq .L_8144C06C
/* 8144C068 | 48 00 00 28 */	b .L_8144C090
.L_8144C06C:
/* 8144C06C | 81 06 00 00 */	lwz r8, 0x0(r6)
/* 8144C070 | 7C A4 2B 78 */	mr r4, r5
/* 8144C074 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144C078 | 81 26 00 04 */	lwz r9, 0x4(r6)
/* 8144C07C | 80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8144C080 | 7D 05 00 38 */	and r5, r8, r0
/* 8144C084 | 7D 26 30 38 */	and r6, r9, r6
/* 8144C088 | 4B FF F9 11 */	bl CHANSVmSetInteger
/* 8144C08C | 7C 60 1B 78 */	mr r0, r3
.L_8144C090:
/* 8144C090 | 7C 03 03 78 */	mr r3, r0
/* 8144C094 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144C098 | 7C 08 03 A6 */	mtlr r0
/* 8144C09C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144C0A0 | 4E 80 00 20 */	blr
.endfn VmBitAnd

# .text:0x1AF8 | 0x8144C0A4 | size: 0x54
.fn VmBitOr, local
/* 8144C0A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144C0A8 | 7C 08 02 A6 */	mflr r0
/* 8144C0AC | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144C0B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144C0B4 | 38 00 FC 39 */	li r0, -0x3c7
/* 8144C0B8 | 41 82 00 08 */	beq .L_8144C0C0
/* 8144C0BC | 48 00 00 28 */	b .L_8144C0E4
.L_8144C0C0:
/* 8144C0C0 | 81 06 00 00 */	lwz r8, 0x0(r6)
/* 8144C0C4 | 7C A4 2B 78 */	mr r4, r5
/* 8144C0C8 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144C0CC | 81 26 00 04 */	lwz r9, 0x4(r6)
/* 8144C0D0 | 80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8144C0D4 | 7D 05 03 78 */	or r5, r8, r0
/* 8144C0D8 | 7D 26 33 78 */	or r6, r9, r6
/* 8144C0DC | 4B FF F8 BD */	bl CHANSVmSetInteger
/* 8144C0E0 | 7C 60 1B 78 */	mr r0, r3
.L_8144C0E4:
/* 8144C0E4 | 7C 03 03 78 */	mr r3, r0
/* 8144C0E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144C0EC | 7C 08 03 A6 */	mtlr r0
/* 8144C0F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144C0F4 | 4E 80 00 20 */	blr
.endfn VmBitOr

# .text:0x1B4C | 0x8144C0F8 | size: 0x54
.fn VmBitXor, local
/* 8144C0F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144C0FC | 7C 08 02 A6 */	mflr r0
/* 8144C100 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8144C104 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144C108 | 38 00 FC 3A */	li r0, -0x3c6
/* 8144C10C | 41 82 00 08 */	beq .L_8144C114
/* 8144C110 | 48 00 00 28 */	b .L_8144C138
.L_8144C114:
/* 8144C114 | 81 06 00 00 */	lwz r8, 0x0(r6)
/* 8144C118 | 7C A4 2B 78 */	mr r4, r5
/* 8144C11C | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144C120 | 81 26 00 04 */	lwz r9, 0x4(r6)
/* 8144C124 | 80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8144C128 | 7D 05 02 78 */	xor r5, r8, r0
/* 8144C12C | 7D 26 32 78 */	xor r6, r9, r6
/* 8144C130 | 4B FF F8 69 */	bl CHANSVmSetInteger
/* 8144C134 | 7C 60 1B 78 */	mr r0, r3
.L_8144C138:
/* 8144C138 | 7C 03 03 78 */	mr r3, r0
/* 8144C13C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144C140 | 7C 08 03 A6 */	mtlr r0
/* 8144C144 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144C148 | 4E 80 00 20 */	blr
.endfn VmBitXor

# .text:0x1BA0 | 0x8144C14C | size: 0x1AC
.fn VmCmpEq, local
/* 8144C14C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144C150 | 7C 08 02 A6 */	mflr r0
/* 8144C154 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144C158 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C15C | 48 1A D3 69 */	bl _savegpr_28
/* 8144C160 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8144C164 | 7C 7E 1B 78 */	mr r30, r3
/* 8144C168 | 7C BF 2B 78 */	mr r31, r5
/* 8144C16C | 41 82 00 A8 */	beq .L_8144C214
/* 8144C170 | 40 80 00 14 */	bge .L_8144C184
/* 8144C174 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144C178 | 41 82 00 1C */	beq .L_8144C194
/* 8144C17C | 40 80 00 70 */	bge .L_8144C1EC
/* 8144C180 | 48 00 01 40 */	b .L_8144C2C0
.L_8144C184:
/* 8144C184 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8144C188 | 41 82 00 F4 */	beq .L_8144C27C
/* 8144C18C | 40 80 01 34 */	bge .L_8144C2C0
/* 8144C190 | 48 00 00 9C */	b .L_8144C22C
.L_8144C194:
/* 8144C194 | 88 66 00 08 */	lbz r3, 0x8(r6)
/* 8144C198 | 88 07 00 08 */	lbz r0, 0x8(r7)
/* 8144C19C | 7C 03 00 40 */	cmplw r3, r0
/* 8144C1A0 | 40 82 00 44 */	bne .L_8144C1E4
/* 8144C1A4 | 28 03 00 07 */	cmplwi r3, 0x7
/* 8144C1A8 | 41 82 00 D4 */	beq .L_8144C27C
/* 8144C1AC | 28 03 00 08 */	cmplwi r3, 0x8
/* 8144C1B0 | 41 82 00 CC */	beq .L_8144C27C
/* 8144C1B4 | 28 03 00 09 */	cmplwi r3, 0x9
/* 8144C1B8 | 40 82 00 1C */	bne .L_8144C1D4
/* 8144C1BC | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144C1C0 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144C1C4 | 7C 03 00 50 */	subf r0, r3, r0
/* 8144C1C8 | 7C 00 00 34 */	cntlzw r0, r0
/* 8144C1CC | 54 1C D9 7E */	srwi r28, r0, 5
/* 8144C1D0 | 48 00 00 F8 */	b .L_8144C2C8
.L_8144C1D4:
/* 8144C1D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C1D8 | 40 82 00 0C */	bne .L_8144C1E4
/* 8144C1DC | 3B 80 00 01 */	li r28, 0x1
/* 8144C1E0 | 48 00 00 E8 */	b .L_8144C2C8
.L_8144C1E4:
/* 8144C1E4 | 3B 80 00 00 */	li r28, 0x0
/* 8144C1E8 | 48 00 00 E0 */	b .L_8144C2C8
.L_8144C1EC:
/* 8144C1EC | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 8144C1F0 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144C1F4 | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 8144C1F8 | 80 67 00 04 */	lwz r3, 0x4(r7)
/* 8144C1FC | 7C 80 02 78 */	xor r0, r4, r0
/* 8144C200 | 7C A3 1A 78 */	xor r3, r5, r3
/* 8144C204 | 7C 60 03 78 */	or r0, r3, r0
/* 8144C208 | 7C 00 00 34 */	cntlzw r0, r0
/* 8144C20C | 54 1C D9 7E */	srwi r28, r0, 5
/* 8144C210 | 48 00 00 B8 */	b .L_8144C2C8
.L_8144C214:
/* 8144C214 | C8 26 00 00 */	lfd f1, 0x0(r6)
/* 8144C218 | C8 07 00 00 */	lfd f0, 0x0(r7)
/* 8144C21C | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8144C220 | 7F 80 00 26 */	mfcr r28
/* 8144C224 | 57 9C 1F FE */	extrwi r28, r28, 1, 2
/* 8144C228 | 48 00 00 A0 */	b .L_8144C2C8
.L_8144C22C:
/* 8144C22C | 80 87 00 00 */	lwz r4, 0x0(r7)
/* 8144C230 | 3B 80 00 00 */	li r28, 0x0
/* 8144C234 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144C238 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8144C23C | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8144C240 | 7C 05 00 40 */	cmplw r5, r0
/* 8144C244 | 40 82 00 84 */	bne .L_8144C2C8
/* 8144C248 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144C24C | 3B A0 00 00 */	li r29, 0x0
/* 8144C250 | 41 82 00 18 */	beq .L_8144C268
/* 8144C254 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144C258 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144C25C | 48 1B 1F 79 */	bl memcmp
/* 8144C260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C264 | 40 82 00 08 */	bne .L_8144C26C
.L_8144C268:
/* 8144C268 | 3B A0 00 01 */	li r29, 0x1
.L_8144C26C:
/* 8144C26C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8144C270 | 41 82 00 58 */	beq .L_8144C2C8
/* 8144C274 | 3B 80 00 01 */	li r28, 0x1
/* 8144C278 | 48 00 00 50 */	b .L_8144C2C8
.L_8144C27C:
/* 8144C27C | 80 66 00 0C */	lwz r3, 0xc(r6)
/* 8144C280 | 3B 80 00 00 */	li r28, 0x0
/* 8144C284 | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 8144C288 | 7C 03 00 40 */	cmplw r3, r0
/* 8144C28C | 40 82 00 3C */	bne .L_8144C2C8
/* 8144C290 | 88 66 00 0A */	lbz r3, 0xa(r6)
/* 8144C294 | 88 07 00 0A */	lbz r0, 0xa(r7)
/* 8144C298 | 7C 03 00 40 */	cmplw r3, r0
/* 8144C29C | 40 82 00 2C */	bne .L_8144C2C8
/* 8144C2A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C2A4 | 41 82 00 14 */	beq .L_8144C2B8
/* 8144C2A8 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144C2AC | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144C2B0 | 7C 03 00 40 */	cmplw r3, r0
/* 8144C2B4 | 40 82 00 14 */	bne .L_8144C2C8
.L_8144C2B8:
/* 8144C2B8 | 3B 80 00 01 */	li r28, 0x1
/* 8144C2BC | 48 00 00 0C */	b .L_8144C2C8
.L_8144C2C0:
/* 8144C2C0 | 38 60 FC 3B */	li r3, -0x3c5
/* 8144C2C4 | 48 00 00 1C */	b .L_8144C2E0
.L_8144C2C8:
/* 8144C2C8 | 30 1C FF FF */	subic r0, r28, 0x1
/* 8144C2CC | 7F C3 F3 78 */	mr r3, r30
/* 8144C2D0 | 7C C0 E1 10 */	subfe r6, r0, r28
/* 8144C2D4 | 7F E4 FB 78 */	mr r4, r31
/* 8144C2D8 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144C2DC | 4B FF F6 BD */	bl CHANSVmSetInteger
.L_8144C2E0:
/* 8144C2E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C2E4 | 48 1A D2 2D */	bl _restgpr_28
/* 8144C2E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144C2EC | 7C 08 03 A6 */	mtlr r0
/* 8144C2F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144C2F4 | 4E 80 00 20 */	blr
.endfn VmCmpEq

# .text:0x1D4C | 0x8144C2F8 | size: 0x54
.fn VmCmpNeq, local
/* 8144C2F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144C2FC | 7C 08 02 A6 */	mflr r0
/* 8144C300 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144C304 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144C308 | 7C BF 2B 78 */	mr r31, r5
/* 8144C30C | 4B FF FE 41 */	bl VmCmpEq
/* 8144C310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C314 | 40 82 00 24 */	bne .L_8144C338
/* 8144C318 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8144C31C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8144C320 | 7C 84 03 78 */	or r4, r4, r0
/* 8144C324 | 7C 84 00 34 */	cntlzw r4, r4
/* 8144C328 | 54 84 D9 7E */	srwi r4, r4, 5
/* 8144C32C | 7C 80 FE 70 */	srawi r0, r4, 31
/* 8144C330 | 90 9F 00 04 */	stw r4, 0x4(r31)
/* 8144C334 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8144C338:
/* 8144C338 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144C33C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144C340 | 7C 08 03 A6 */	mtlr r0
/* 8144C344 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144C348 | 4E 80 00 20 */	blr
.endfn VmCmpNeq

# .text:0x1DA0 | 0x8144C34C | size: 0x11C
.fn VmCmpLt, local
/* 8144C34C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144C350 | 7C 08 02 A6 */	mflr r0
/* 8144C354 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144C358 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C35C | 48 1A D1 69 */	bl _savegpr_28
/* 8144C360 | 28 04 00 08 */	cmplwi r4, 0x8
/* 8144C364 | 7C 7C 1B 78 */	mr r28, r3
/* 8144C368 | 7C BD 2B 78 */	mr r29, r5
/* 8144C36C | 41 81 00 C4 */	bgt .L_8144C430
/* 8144C370 | 3C 60 81 67 */	lis r3, jumptable_81669138@ha
/* 8144C374 | 54 80 10 3A */	slwi r0, r4, 2
/* 8144C378 | 38 63 91 38 */	addi r3, r3, jumptable_81669138@l
/* 8144C37C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8144C380 | 7C 69 03 A6 */	mtctr r3
/* 8144C384 | 4E 80 04 20 */	bctr
.L_8144C388:
/* 8144C388 | 38 80 00 00 */	li r4, 0x0
/* 8144C38C | 48 00 00 AC */	b .L_8144C438
.L_8144C390:
/* 8144C390 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 8144C394 | 80 67 00 00 */	lwz r3, 0x0(r7)
/* 8144C398 | 80 C6 00 04 */	lwz r6, 0x4(r6)
/* 8144C39C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8144C3A0 | 80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8144C3A4 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8144C3A8 | 7C 65 30 10 */	subfc r3, r5, r6
/* 8144C3AC | 7C 84 01 10 */	subfe r4, r4, r0
/* 8144C3B0 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8144C3B4 | 7C 84 00 D0 */	neg r4, r4
/* 8144C3B8 | 48 00 00 80 */	b .L_8144C438
.L_8144C3BC:
/* 8144C3BC | C8 26 00 00 */	lfd f1, 0x0(r6)
/* 8144C3C0 | C8 07 00 00 */	lfd f0, 0x0(r7)
/* 8144C3C4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8144C3C8 | 7C 80 00 26 */	mfcr r4
/* 8144C3CC | 54 84 0F FE */	srwi r4, r4, 31
/* 8144C3D0 | 48 00 00 68 */	b .L_8144C438
.L_8144C3D4:
/* 8144C3D4 | 80 87 00 00 */	lwz r4, 0x0(r7)
/* 8144C3D8 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144C3DC | 83 C4 00 04 */	lwz r30, 0x4(r4)
/* 8144C3E0 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8144C3E4 | 7F C5 F3 78 */	mr r5, r30
/* 8144C3E8 | 7C 1F F0 40 */	cmplw r31, r30
/* 8144C3EC | 40 80 00 08 */	bge .L_8144C3F4
/* 8144C3F0 | 7F E5 FB 78 */	mr r5, r31
.L_8144C3F4:
/* 8144C3F4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144C3F8 | 41 82 00 14 */	beq .L_8144C40C
/* 8144C3FC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144C400 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144C404 | 48 1B 1D D1 */	bl memcmp
/* 8144C408 | 48 00 00 08 */	b .L_8144C410
.L_8144C40C:
/* 8144C40C | 38 60 00 00 */	li r3, 0x0
.L_8144C410:
/* 8144C410 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C414 | 38 80 00 00 */	li r4, 0x0
/* 8144C418 | 41 80 00 10 */	blt .L_8144C428
/* 8144C41C | 40 82 00 1C */	bne .L_8144C438
/* 8144C420 | 7C 1F F0 40 */	cmplw r31, r30
/* 8144C424 | 40 80 00 14 */	bge .L_8144C438
.L_8144C428:
/* 8144C428 | 38 80 00 01 */	li r4, 0x1
/* 8144C42C | 48 00 00 0C */	b .L_8144C438
.L_8144C430:
/* 8144C430 | 38 60 FC 3B */	li r3, -0x3c5
/* 8144C434 | 48 00 00 1C */	b .L_8144C450
.L_8144C438:
/* 8144C438 | 30 04 FF FF */	subic r0, r4, 0x1
/* 8144C43C | 7F 83 E3 78 */	mr r3, r28
/* 8144C440 | 7C C0 21 10 */	subfe r6, r0, r4
/* 8144C444 | 7F A4 EB 78 */	mr r4, r29
/* 8144C448 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144C44C | 4B FF F5 4D */	bl CHANSVmSetInteger
.L_8144C450:
/* 8144C450 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C454 | 48 1A D0 BD */	bl _restgpr_28
/* 8144C458 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144C45C | 7C 08 03 A6 */	mtlr r0
/* 8144C460 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144C464 | 4E 80 00 20 */	blr
.endfn VmCmpLt

# .text:0x1EBC | 0x8144C468 | size: 0x10
.fn VmCmpGt, local
/* 8144C468 | 7C C0 33 78 */	mr r0, r6
/* 8144C46C | 7C E6 3B 78 */	mr r6, r7
/* 8144C470 | 7C 07 03 78 */	mr r7, r0
/* 8144C474 | 4B FF FE D8 */	b VmCmpLt
.endfn VmCmpGt

# .text:0x1ECC | 0x8144C478 | size: 0x124
.fn VmCmpLeq, local
/* 8144C478 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144C47C | 7C 08 02 A6 */	mflr r0
/* 8144C480 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144C484 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C488 | 48 1A D0 3D */	bl _savegpr_28
/* 8144C48C | 28 04 00 08 */	cmplwi r4, 0x8
/* 8144C490 | 7C 7C 1B 78 */	mr r28, r3
/* 8144C494 | 7C BD 2B 78 */	mr r29, r5
/* 8144C498 | 41 81 00 CC */	bgt .L_8144C564
/* 8144C49C | 3C 60 81 67 */	lis r3, jumptable_8166915C@ha
/* 8144C4A0 | 54 80 10 3A */	slwi r0, r4, 2
/* 8144C4A4 | 38 63 91 5C */	addi r3, r3, jumptable_8166915C@l
/* 8144C4A8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8144C4AC | 7C 69 03 A6 */	mtctr r3
/* 8144C4B0 | 4E 80 04 20 */	bctr
.L_8144C4B4:
/* 8144C4B4 | 38 80 00 00 */	li r4, 0x0
/* 8144C4B8 | 48 00 00 B4 */	b .L_8144C56C
.L_8144C4BC:
/* 8144C4BC | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144C4C0 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144C4C4 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8144C4C8 | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 8144C4CC | 80 67 00 04 */	lwz r3, 0x4(r7)
/* 8144C4D0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8144C4D4 | 7C 65 18 10 */	subfc r3, r5, r3
/* 8144C4D8 | 7C 84 01 10 */	subfe r4, r4, r0
/* 8144C4DC | 7C 80 01 10 */	subfe r4, r0, r0
/* 8144C4E0 | 7C 84 00 D0 */	neg r4, r4
/* 8144C4E4 | 20 84 00 01 */	subfic r4, r4, 0x1
/* 8144C4E8 | 48 00 00 84 */	b .L_8144C56C
.L_8144C4EC:
/* 8144C4EC | C8 26 00 00 */	lfd f1, 0x0(r6)
/* 8144C4F0 | C8 07 00 00 */	lfd f0, 0x0(r7)
/* 8144C4F4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8144C4F8 | 4C 40 13 82 */	cror eq, lt, eq
/* 8144C4FC | 7C 80 00 26 */	mfcr r4
/* 8144C500 | 54 84 1F FE */	extrwi r4, r4, 1, 2
/* 8144C504 | 48 00 00 68 */	b .L_8144C56C
.L_8144C508:
/* 8144C508 | 80 87 00 00 */	lwz r4, 0x0(r7)
/* 8144C50C | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144C510 | 83 C4 00 04 */	lwz r30, 0x4(r4)
/* 8144C514 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8144C518 | 7F C5 F3 78 */	mr r5, r30
/* 8144C51C | 7C 1F F0 40 */	cmplw r31, r30
/* 8144C520 | 40 80 00 08 */	bge .L_8144C528
/* 8144C524 | 7F E5 FB 78 */	mr r5, r31
.L_8144C528:
/* 8144C528 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144C52C | 41 82 00 14 */	beq .L_8144C540
/* 8144C530 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144C534 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144C538 | 48 1B 1C 9D */	bl memcmp
/* 8144C53C | 48 00 00 08 */	b .L_8144C544
.L_8144C540:
/* 8144C540 | 38 60 00 00 */	li r3, 0x0
.L_8144C544:
/* 8144C544 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C548 | 38 80 00 00 */	li r4, 0x0
/* 8144C54C | 41 80 00 10 */	blt .L_8144C55C
/* 8144C550 | 40 82 00 1C */	bne .L_8144C56C
/* 8144C554 | 7C 1F F0 40 */	cmplw r31, r30
/* 8144C558 | 41 81 00 14 */	bgt .L_8144C56C
.L_8144C55C:
/* 8144C55C | 38 80 00 01 */	li r4, 0x1
/* 8144C560 | 48 00 00 0C */	b .L_8144C56C
.L_8144C564:
/* 8144C564 | 38 60 FC 3B */	li r3, -0x3c5
/* 8144C568 | 48 00 00 1C */	b .L_8144C584
.L_8144C56C:
/* 8144C56C | 30 04 FF FF */	subic r0, r4, 0x1
/* 8144C570 | 7F 83 E3 78 */	mr r3, r28
/* 8144C574 | 7C C0 21 10 */	subfe r6, r0, r4
/* 8144C578 | 7F A4 EB 78 */	mr r4, r29
/* 8144C57C | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144C580 | 4B FF F4 19 */	bl CHANSVmSetInteger
.L_8144C584:
/* 8144C584 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C588 | 48 1A CF 89 */	bl _restgpr_28
/* 8144C58C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144C590 | 7C 08 03 A6 */	mtlr r0
/* 8144C594 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144C598 | 4E 80 00 20 */	blr
.endfn VmCmpLeq

# .text:0x1FF0 | 0x8144C59C | size: 0x10
.fn VmCmpGeq, local
/* 8144C59C | 7C C0 33 78 */	mr r0, r6
/* 8144C5A0 | 7C E6 3B 78 */	mr r6, r7
/* 8144C5A4 | 7C 07 03 78 */	mr r7, r0
/* 8144C5A8 | 4B FF FE D0 */	b VmCmpLeq
.endfn VmCmpGeq

# .text:0x2000 | 0x8144C5AC | size: 0xD8
.fn CHANSVmGetBoolean, local
/* 8144C5AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144C5B0 | 7C 08 02 A6 */	mflr r0
/* 8144C5B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144C5B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C5BC | 48 1A CF 0D */	bl _savegpr_29
/* 8144C5C0 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 8144C5C4 | 7C 7D 1B 78 */	mr r29, r3
/* 8144C5C8 | 7C 9E 23 78 */	mr r30, r4
/* 8144C5CC | 28 00 00 09 */	cmplwi r0, 0x9
/* 8144C5D0 | 41 81 00 84 */	bgt .L_8144C654
/* 8144C5D4 | 3C 60 81 67 */	lis r3, jumptable_81669180@ha
/* 8144C5D8 | 54 00 10 3A */	slwi r0, r0, 2
/* 8144C5DC | 38 63 91 80 */	addi r3, r3, jumptable_81669180@l
/* 8144C5E0 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8144C5E4 | 7C 69 03 A6 */	mtctr r3
/* 8144C5E8 | 4E 80 04 20 */	bctr
.L_8144C5EC:
/* 8144C5EC | 3B E0 00 00 */	li r31, 0x0
/* 8144C5F0 | 48 00 00 6C */	b .L_8144C65C
.L_8144C5F4:
/* 8144C5F4 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8144C5F8 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8144C5FC | 7C 60 03 78 */	or r0, r3, r0
/* 8144C600 | 30 60 FF FF */	subic r3, r0, 0x1
/* 8144C604 | 7F E3 01 10 */	subfe r31, r3, r0
/* 8144C608 | 48 00 00 54 */	b .L_8144C65C
.L_8144C60C:
/* 8144C60C | C8 24 00 00 */	lfd f1, 0x0(r4)
/* 8144C610 | 3B E0 00 00 */	li r31, 0x0
/* 8144C614 | 4B FF EB 71 */	bl CHANSVm_8144B184
/* 8144C618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C61C | 40 82 00 40 */	bne .L_8144C65C
/* 8144C620 | C8 22 8B 28 */	lfd f1, lbl_81694F28@sda21(r0)
/* 8144C624 | C8 1E 00 00 */	lfd f0, 0x0(r30)
/* 8144C628 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8144C62C | 41 82 00 30 */	beq .L_8144C65C
/* 8144C630 | 3B E0 00 01 */	li r31, 0x1
/* 8144C634 | 48 00 00 28 */	b .L_8144C65C
.L_8144C638:
/* 8144C638 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8144C63C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8144C640 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8144C644 | 7F E0 19 10 */	subfe r31, r0, r3
/* 8144C648 | 48 00 00 14 */	b .L_8144C65C
.L_8144C64C:
/* 8144C64C | 3B E0 00 01 */	li r31, 0x1
/* 8144C650 | 48 00 00 0C */	b .L_8144C65C
.L_8144C654:
/* 8144C654 | 38 60 FC 48 */	li r3, -0x3b8
/* 8144C658 | 48 00 00 14 */	b .L_8144C66C
.L_8144C65C:
/* 8144C65C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8144C660 | 41 82 00 08 */	beq .L_8144C668
/* 8144C664 | 93 FD 00 00 */	stw r31, 0x0(r29)
.L_8144C668:
/* 8144C668 | 38 60 00 00 */	li r3, 0x0
.L_8144C66C:
/* 8144C66C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C670 | 48 1A CE A5 */	bl _restgpr_29
/* 8144C674 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144C678 | 7C 08 03 A6 */	mtlr r0
/* 8144C67C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144C680 | 4E 80 00 20 */	blr
.endfn CHANSVmGetBoolean

# .text:0x20D8 | 0x8144C684 | size: 0xC
.fn CHANSVmGetArgc, global
/* 8144C684 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 8144C688 | A0 63 00 14 */	lhz r3, 0x14(r3)
/* 8144C68C | 4E 80 00 20 */	blr
.endfn CHANSVmGetArgc

# .text:0x20E4 | 0x8144C690 | size: 0x30
.fn CHANSVmGetArg, global
/* 8144C690 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 8144C694 | A0 65 00 14 */	lhz r3, 0x14(r5)
/* 8144C698 | 7C 04 18 40 */	cmplw r4, r3
/* 8144C69C | 41 80 00 0C */	blt .L_8144C6A8
/* 8144C6A0 | 38 60 00 00 */	li r3, 0x0
/* 8144C6A4 | 4E 80 00 20 */	blr
.L_8144C6A8:
/* 8144C6A8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8144C6AC | 80 65 00 08 */	lwz r3, 0x8(r5)
/* 8144C6B0 | 7C 04 00 50 */	subf r0, r4, r0
/* 8144C6B4 | 54 00 20 36 */	slwi r0, r0, 4
/* 8144C6B8 | 7C 63 02 14 */	add r3, r3, r0
/* 8144C6BC | 4E 80 00 20 */	blr
.endfn CHANSVmGetArg

# .text:0x2114 | 0x8144C6C0 | size: 0x3C
.fn CHANSVmGetArgInteger, global
/* 8144C6C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144C6C4 | 7C 08 02 A6 */	mflr r0
/* 8144C6C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144C6CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144C6D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8144C6D4 | 4B FF FF BD */	bl CHANSVmGetArg
/* 8144C6D8 | 7C 65 1B 78 */	mr r5, r3
/* 8144C6DC | 7F E3 FB 78 */	mr r3, r31
/* 8144C6E0 | 38 80 00 01 */	li r4, 0x1
/* 8144C6E4 | 4B FF F1 F9 */	bl CHANSVmConvertObjectType
/* 8144C6E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144C6EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144C6F0 | 7C 08 03 A6 */	mtlr r0
/* 8144C6F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144C6F8 | 4E 80 00 20 */	blr
.endfn CHANSVmGetArgInteger

# .text:0x2150 | 0x8144C6FC | size: 0x3C
.fn CHANSVmGetArgFloat, global
/* 8144C6FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144C700 | 7C 08 02 A6 */	mflr r0
/* 8144C704 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144C708 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144C70C | 7C 7F 1B 78 */	mr r31, r3
/* 8144C710 | 4B FF FF 81 */	bl CHANSVmGetArg
/* 8144C714 | 7C 65 1B 78 */	mr r5, r3
/* 8144C718 | 7F E3 FB 78 */	mr r3, r31
/* 8144C71C | 38 80 00 02 */	li r4, 0x2
/* 8144C720 | 4B FF F1 BD */	bl CHANSVmConvertObjectType
/* 8144C724 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144C728 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144C72C | 7C 08 03 A6 */	mtlr r0
/* 8144C730 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144C734 | 4E 80 00 20 */	blr
.endfn CHANSVmGetArgFloat

# .text:0x218C | 0x8144C738 | size: 0x3C
.fn CHANSVmGetArgString, global
/* 8144C738 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144C73C | 7C 08 02 A6 */	mflr r0
/* 8144C740 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144C744 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144C748 | 7C 7F 1B 78 */	mr r31, r3
/* 8144C74C | 4B FF FF 45 */	bl CHANSVmGetArg
/* 8144C750 | 7C 65 1B 78 */	mr r5, r3
/* 8144C754 | 7F E3 FB 78 */	mr r3, r31
/* 8144C758 | 38 80 00 03 */	li r4, 0x3
/* 8144C75C | 4B FF F1 81 */	bl CHANSVmConvertObjectType
/* 8144C760 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144C764 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144C768 | 7C 08 03 A6 */	mtlr r0
/* 8144C76C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144C770 | 4E 80 00 20 */	blr
.endfn CHANSVmGetArgString

# .text:0x21C8 | 0x8144C774 | size: 0x8C
.fn CHANSVmFindNativeClass, global
/* 8144C774 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144C778 | 7C 08 02 A6 */	mflr r0
/* 8144C77C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144C780 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C784 | 48 1A CD 45 */	bl _savegpr_29
/* 8144C788 | 7C 9D 23 78 */	mr r29, r4
/* 8144C78C | 7C 7F 1B 78 */	mr r31, r3
/* 8144C790 | 7F A3 EB 78 */	mr r3, r29
/* 8144C794 | 48 1A C7 69 */	bl strlen
/* 8144C798 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C79C | 7C 7E 1B 78 */	mr r30, r3
/* 8144C7A0 | 41 82 00 44 */	beq .L_8144C7E4
/* 8144C7A4 | 83 FF 00 30 */	lwz r31, 0x30(r31)
/* 8144C7A8 | 48 00 00 34 */	b .L_8144C7DC
.L_8144C7AC:
/* 8144C7AC | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8144C7B0 | 7C 1E 00 40 */	cmplw r30, r0
/* 8144C7B4 | 40 82 00 24 */	bne .L_8144C7D8
/* 8144C7B8 | 7F A3 EB 78 */	mr r3, r29
/* 8144C7BC | 7F C5 F3 78 */	mr r5, r30
/* 8144C7C0 | 38 9F 00 1C */	addi r4, r31, 0x1c
/* 8144C7C4 | 48 1B 1A 11 */	bl memcmp
/* 8144C7C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C7CC | 40 82 00 0C */	bne .L_8144C7D8
/* 8144C7D0 | 7F E3 FB 78 */	mr r3, r31
/* 8144C7D4 | 48 00 00 14 */	b .L_8144C7E8
.L_8144C7D8:
/* 8144C7D8 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_8144C7DC:
/* 8144C7DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144C7E0 | 40 82 FF CC */	bne .L_8144C7AC
.L_8144C7E4:
/* 8144C7E4 | 38 60 00 00 */	li r3, 0x0
.L_8144C7E8:
/* 8144C7E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C7EC | 48 1A CD 29 */	bl _restgpr_29
/* 8144C7F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144C7F4 | 7C 08 03 A6 */	mtlr r0
/* 8144C7F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144C7FC | 4E 80 00 20 */	blr
.endfn CHANSVmFindNativeClass

# .text:0x2254 | 0x8144C800 | size: 0xD4
.fn CHANSVmAddNativeClass2, global
/* 8144C800 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144C804 | 7C 08 02 A6 */	mflr r0
/* 8144C808 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8144C80C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144C810 | 48 1A CC A9 */	bl _savegpr_25
/* 8144C814 | 7C 79 1B 78 */	mr r25, r3
/* 8144C818 | 7C 9A 23 78 */	mr r26, r4
/* 8144C81C | 7C BB 2B 78 */	mr r27, r5
/* 8144C820 | 7C DC 33 78 */	mr r28, r6
/* 8144C824 | 7C FD 3B 78 */	mr r29, r7
/* 8144C828 | 4B FF FF 4D */	bl CHANSVmFindNativeClass
/* 8144C82C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C830 | 40 82 00 88 */	bne .L_8144C8B8
/* 8144C834 | 7F 43 D3 78 */	mr r3, r26
/* 8144C838 | 48 1A C6 C5 */	bl strlen
/* 8144C83C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C840 | 7C 7E 1B 78 */	mr r30, r3
/* 8144C844 | 41 82 00 74 */	beq .L_8144C8B8
/* 8144C848 | 38 1E 00 3B */	addi r0, r30, 0x3b
/* 8144C84C | 7F 23 CB 78 */	mr r3, r25
/* 8144C850 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8144C854 | 4B FF E0 99 */	bl CHANSVmAllocFromHeap
/* 8144C858 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C85C | 7C 7F 1B 78 */	mr r31, r3
/* 8144C860 | 41 82 00 58 */	beq .L_8144C8B8
/* 8144C864 | 80 99 00 30 */	lwz r4, 0x30(r25)
/* 8144C868 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144C86C | 40 82 00 14 */	bne .L_8144C880
/* 8144C870 | 90 79 00 30 */	stw r3, 0x30(r25)
/* 8144C874 | 48 00 00 1C */	b .L_8144C890
/* 8144C878 | 48 00 00 08 */	b .L_8144C880
.L_8144C87C:
/* 8144C87C | 7C 04 03 78 */	mr r4, r0
.L_8144C880:
/* 8144C880 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8144C884 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144C888 | 40 82 FF F4 */	bne .L_8144C87C
/* 8144C88C | 90 64 00 00 */	stw r3, 0x0(r4)
.L_8144C890:
/* 8144C890 | 93 63 00 04 */	stw r27, 0x4(r3)
/* 8144C894 | 7F 44 D3 78 */	mr r4, r26
/* 8144C898 | 7F C5 F3 78 */	mr r5, r30
/* 8144C89C | 93 83 00 08 */	stw r28, 0x8(r3)
/* 8144C8A0 | 93 A3 00 0C */	stw r29, 0xc(r3)
/* 8144C8A4 | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 8144C8A8 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 8144C8AC | 4B EE 39 85 */	bl memcpy
/* 8144C8B0 | 7F E3 FB 78 */	mr r3, r31
/* 8144C8B4 | 48 00 00 08 */	b .L_8144C8BC
.L_8144C8B8:
/* 8144C8B8 | 38 60 00 00 */	li r3, 0x0
.L_8144C8BC:
/* 8144C8BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144C8C0 | 48 1A CC 45 */	bl _restgpr_25
/* 8144C8C4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8144C8C8 | 7C 08 03 A6 */	mtlr r0
/* 8144C8CC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144C8D0 | 4E 80 00 20 */	blr
.endfn CHANSVmAddNativeClass2

# .text:0x2328 | 0x8144C8D4 | size: 0x8
.fn CHANSVmAddNativeClass, global
/* 8144C8D4 | 38 E0 00 00 */	li r7, 0x0
/* 8144C8D8 | 4B FF FF 28 */	b CHANSVmAddNativeClass2
.endfn CHANSVmAddNativeClass

# .text:0x2330 | 0x8144C8DC | size: 0xE4
.fn VmAddNativeMethodName, local
/* 8144C8DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144C8E0 | 7C 08 02 A6 */	mflr r0
/* 8144C8E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144C8E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C8EC | 48 1A CB D5 */	bl _savegpr_27
/* 8144C8F0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144C8F4 | 7C 7B 1B 78 */	mr r27, r3
/* 8144C8F8 | 7C 9C 23 78 */	mr r28, r4
/* 8144C8FC | 7C BD 2B 78 */	mr r29, r5
/* 8144C900 | 3B C0 00 01 */	li r30, 0x1
/* 8144C904 | 41 82 00 A0 */	beq .L_8144C9A4
/* 8144C908 | 83 E3 00 34 */	lwz r31, 0x34(r3)
/* 8144C90C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144C910 | 40 82 00 0C */	bne .L_8144C91C
/* 8144C914 | 3B E3 00 34 */	addi r31, r3, 0x34
/* 8144C918 | 48 00 00 50 */	b .L_8144C968
.L_8144C91C:
/* 8144C91C | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8144C920 | 7C 1D 00 40 */	cmplw r29, r0
/* 8144C924 | 40 82 00 24 */	bne .L_8144C948
/* 8144C928 | 7F 83 E3 78 */	mr r3, r28
/* 8144C92C | 7F A5 EB 78 */	mr r5, r29
/* 8144C930 | 38 9F 00 08 */	addi r4, r31, 0x8
/* 8144C934 | 48 1B 18 A1 */	bl memcmp
/* 8144C938 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C93C | 40 82 00 0C */	bne .L_8144C948
/* 8144C940 | 7F C3 F3 78 */	mr r3, r30
/* 8144C944 | 48 00 00 64 */	b .L_8144C9A8
.L_8144C948:
/* 8144C948 | 28 1E FF FF */	cmplwi r30, 0xffff
/* 8144C94C | 40 80 00 58 */	bge .L_8144C9A4
/* 8144C950 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8144C954 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8144C958 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144C95C | 41 82 00 0C */	beq .L_8144C968
/* 8144C960 | 7C 1F 03 78 */	mr r31, r0
/* 8144C964 | 4B FF FF B8 */	b .L_8144C91C
.L_8144C968:
/* 8144C968 | 38 1D 00 27 */	addi r0, r29, 0x27
/* 8144C96C | 7F 63 DB 78 */	mr r3, r27
/* 8144C970 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8144C974 | 4B FF DF 79 */	bl CHANSVmAllocFromHeap
/* 8144C978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144C97C | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8144C980 | 41 82 00 24 */	beq .L_8144C9A4
/* 8144C984 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 8144C988 | 7F 84 E3 78 */	mr r4, r28
/* 8144C98C | 7F A5 EB 78 */	mr r5, r29
/* 8144C990 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8144C994 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8144C998 | 4B EE 38 99 */	bl memcpy
/* 8144C99C | 7F C3 F3 78 */	mr r3, r30
/* 8144C9A0 | 48 00 00 08 */	b .L_8144C9A8
.L_8144C9A4:
/* 8144C9A4 | 38 60 00 00 */	li r3, 0x0
.L_8144C9A8:
/* 8144C9A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144C9AC | 48 1A CB 61 */	bl _restgpr_27
/* 8144C9B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144C9B4 | 7C 08 03 A6 */	mtlr r0
/* 8144C9B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144C9BC | 4E 80 00 20 */	blr
.endfn VmAddNativeMethodName

# .text:0x2414 | 0x8144C9C0 | size: 0x58
.fn VmFindAndAddNativeProperty, local
/* 8144C9C0 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8144C9C4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144C9C8 | 40 82 00 14 */	bne .L_8144C9DC
/* 8144C9CC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144C9D0 | 41 82 00 40 */	beq .L_8144CA10
/* 8144C9D4 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 8144C9D8 | 48 00 00 38 */	b .L_8144CA10
.L_8144C9DC:
/* 8144C9DC | A0 06 00 04 */	lhz r0, 0x4(r6)
/* 8144C9E0 | 7C 05 00 40 */	cmplw r5, r0
/* 8144C9E4 | 40 82 00 0C */	bne .L_8144C9F0
/* 8144C9E8 | 38 60 FC 23 */	li r3, -0x3dd
/* 8144C9EC | 4E 80 00 20 */	blr
.L_8144C9F0:
/* 8144C9F0 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 8144C9F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144C9F8 | 41 82 00 0C */	beq .L_8144CA04
/* 8144C9FC | 7C 06 03 78 */	mr r6, r0
/* 8144CA00 | 4B FF FF DC */	b .L_8144C9DC
.L_8144CA04:
/* 8144CA04 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144CA08 | 41 82 00 08 */	beq .L_8144CA10
/* 8144CA0C | 90 86 00 00 */	stw r4, 0x0(r6)
.L_8144CA10:
/* 8144CA10 | 38 60 00 00 */	li r3, 0x0
/* 8144CA14 | 4E 80 00 20 */	blr
.endfn VmFindAndAddNativeProperty

# .text:0x246C | 0x8144CA18 | size: 0x58
.fn VmFindAndAddNativeMethod, local
/* 8144CA18 | 80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8144CA1C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144CA20 | 40 82 00 14 */	bne .L_8144CA34
/* 8144CA24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144CA28 | 41 82 00 40 */	beq .L_8144CA68
/* 8144CA2C | 90 83 00 10 */	stw r4, 0x10(r3)
/* 8144CA30 | 48 00 00 38 */	b .L_8144CA68
.L_8144CA34:
/* 8144CA34 | A0 06 00 04 */	lhz r0, 0x4(r6)
/* 8144CA38 | 7C 05 00 40 */	cmplw r5, r0
/* 8144CA3C | 40 82 00 0C */	bne .L_8144CA48
/* 8144CA40 | 38 60 FC 23 */	li r3, -0x3dd
/* 8144CA44 | 4E 80 00 20 */	blr
.L_8144CA48:
/* 8144CA48 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 8144CA4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144CA50 | 41 82 00 0C */	beq .L_8144CA5C
/* 8144CA54 | 7C 06 03 78 */	mr r6, r0
/* 8144CA58 | 4B FF FF DC */	b .L_8144CA34
.L_8144CA5C:
/* 8144CA5C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144CA60 | 41 82 00 08 */	beq .L_8144CA68
/* 8144CA64 | 90 86 00 00 */	stw r4, 0x0(r6)
.L_8144CA68:
/* 8144CA68 | 38 60 00 00 */	li r3, 0x0
/* 8144CA6C | 4E 80 00 20 */	blr
.endfn VmFindAndAddNativeMethod

# .text:0x24C4 | 0x8144CA70 | size: 0x108
.fn CHANSVmAddNativeMethodList, global
/* 8144CA70 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144CA74 | 7C 08 02 A6 */	mflr r0
/* 8144CA78 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8144CA7C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144CA80 | 48 1A CA 39 */	bl _savegpr_25
/* 8144CA84 | 7C 79 1B 78 */	mr r25, r3
/* 8144CA88 | 7C 9A 23 78 */	mr r26, r4
/* 8144CA8C | 7C BB 2B 78 */	mr r27, r5
/* 8144CA90 | 7C DC 33 78 */	mr r28, r6
/* 8144CA94 | 38 60 00 00 */	li r3, 0x0
/* 8144CA98 | 48 00 00 B0 */	b .L_8144CB48
.L_8144CA9C:
/* 8144CA9C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8144CAA0 | 83 DB 00 04 */	lwz r30, 0x4(r27)
/* 8144CAA4 | 83 FB 00 00 */	lwz r31, 0x0(r27)
/* 8144CAA8 | 3B A0 00 00 */	li r29, 0x0
/* 8144CAAC | 41 82 00 90 */	beq .L_8144CB3C
/* 8144CAB0 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8144CAB4 | 2C 00 00 2A */	cmpwi r0, 0x2a
/* 8144CAB8 | 40 82 00 0C */	bne .L_8144CAC4
/* 8144CABC | 3B A0 00 01 */	li r29, 0x1
/* 8144CAC0 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8144CAC4:
/* 8144CAC4 | 7F E3 FB 78 */	mr r3, r31
/* 8144CAC8 | 48 1A C4 35 */	bl strlen
/* 8144CACC | 7C 65 1B 78 */	mr r5, r3
/* 8144CAD0 | 7F 23 CB 78 */	mr r3, r25
/* 8144CAD4 | 7F E4 FB 78 */	mr r4, r31
/* 8144CAD8 | 4B FF FE 05 */	bl VmAddNativeMethodName
/* 8144CADC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CAE0 | 7C 7F 1B 78 */	mr r31, r3
/* 8144CAE4 | 41 82 00 58 */	beq .L_8144CB3C
/* 8144CAE8 | 7F 43 D3 78 */	mr r3, r26
/* 8144CAEC | 7F E5 FB 78 */	mr r5, r31
/* 8144CAF0 | 38 80 00 00 */	li r4, 0x0
/* 8144CAF4 | 4B FF FE CD */	bl VmFindAndAddNativeProperty
/* 8144CAF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CAFC | 40 82 00 44 */	bne .L_8144CB40
/* 8144CB00 | 7F 23 CB 78 */	mr r3, r25
/* 8144CB04 | 38 80 00 20 */	li r4, 0x20
/* 8144CB08 | 4B FF DD E5 */	bl CHANSVmAllocFromHeap
/* 8144CB0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CB10 | 40 82 00 0C */	bne .L_8144CB1C
/* 8144CB14 | 38 60 FC 1A */	li r3, -0x3e6
/* 8144CB18 | 48 00 00 28 */	b .L_8144CB40
.L_8144CB1C:
/* 8144CB1C | B3 E3 00 04 */	sth r31, 0x4(r3)
/* 8144CB20 | 7C 64 1B 78 */	mr r4, r3
/* 8144CB24 | 7F E5 FB 78 */	mr r5, r31
/* 8144CB28 | 93 C3 00 08 */	stw r30, 0x8(r3)
/* 8144CB2C | 9B A3 00 06 */	stb r29, 0x6(r3)
/* 8144CB30 | 7F 43 D3 78 */	mr r3, r26
/* 8144CB34 | 4B FF FE E5 */	bl VmFindAndAddNativeMethod
/* 8144CB38 | 48 00 00 08 */	b .L_8144CB40
.L_8144CB3C:
/* 8144CB3C | 38 60 FC 3C */	li r3, -0x3c4
.L_8144CB40:
/* 8144CB40 | 3B 7B 00 08 */	addi r27, r27, 0x8
/* 8144CB44 | 3B 9C FF FF */	subi r28, r28, 0x1
.L_8144CB48:
/* 8144CB48 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8144CB4C | 41 82 00 14 */	beq .L_8144CB60
/* 8144CB50 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8144CB54 | 41 82 00 0C */	beq .L_8144CB60
/* 8144CB58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CB5C | 41 82 FF 40 */	beq .L_8144CA9C
.L_8144CB60:
/* 8144CB60 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144CB64 | 48 1A C9 A1 */	bl _restgpr_25
/* 8144CB68 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8144CB6C | 7C 08 03 A6 */	mtlr r0
/* 8144CB70 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144CB74 | 4E 80 00 20 */	blr
.endfn CHANSVmAddNativeMethodList

# .text:0x25CC | 0x8144CB78 | size: 0xE0
.fn CHANSVmAddNativePropertyAccessors, global
/* 8144CB78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144CB7C | 7C 08 02 A6 */	mflr r0
/* 8144CB80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144CB84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144CB88 | 48 1A C9 35 */	bl _savegpr_26
/* 8144CB8C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144CB90 | 7C 7A 1B 78 */	mr r26, r3
/* 8144CB94 | 7C 9B 23 78 */	mr r27, r4
/* 8144CB98 | 7C BF 2B 78 */	mr r31, r5
/* 8144CB9C | 7C DC 33 78 */	mr r28, r6
/* 8144CBA0 | 7C FD 3B 78 */	mr r29, r7
/* 8144CBA4 | 3B C0 00 00 */	li r30, 0x0
/* 8144CBA8 | 41 82 00 94 */	beq .L_8144CC3C
/* 8144CBAC | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 8144CBB0 | 2C 00 00 2A */	cmpwi r0, 0x2a
/* 8144CBB4 | 40 82 00 0C */	bne .L_8144CBC0
/* 8144CBB8 | 3B C0 00 01 */	li r30, 0x1
/* 8144CBBC | 3B E5 00 01 */	addi r31, r5, 0x1
.L_8144CBC0:
/* 8144CBC0 | 7F E3 FB 78 */	mr r3, r31
/* 8144CBC4 | 48 1A C3 39 */	bl strlen
/* 8144CBC8 | 7C 65 1B 78 */	mr r5, r3
/* 8144CBCC | 7F 43 D3 78 */	mr r3, r26
/* 8144CBD0 | 7F E4 FB 78 */	mr r4, r31
/* 8144CBD4 | 4B FF FD 09 */	bl VmAddNativeMethodName
/* 8144CBD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CBDC | 7C 7F 1B 78 */	mr r31, r3
/* 8144CBE0 | 41 82 00 5C */	beq .L_8144CC3C
/* 8144CBE4 | 7F 63 DB 78 */	mr r3, r27
/* 8144CBE8 | 7F E5 FB 78 */	mr r5, r31
/* 8144CBEC | 38 80 00 00 */	li r4, 0x0
/* 8144CBF0 | 4B FF FE 29 */	bl VmFindAndAddNativeMethod
/* 8144CBF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CBF8 | 40 82 00 48 */	bne .L_8144CC40
/* 8144CBFC | 7F 43 D3 78 */	mr r3, r26
/* 8144CC00 | 38 80 00 20 */	li r4, 0x20
/* 8144CC04 | 4B FF DC E9 */	bl CHANSVmAllocFromHeap
/* 8144CC08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CC0C | 40 82 00 0C */	bne .L_8144CC18
/* 8144CC10 | 38 60 FC 1A */	li r3, -0x3e6
/* 8144CC14 | 48 00 00 2C */	b .L_8144CC40
.L_8144CC18:
/* 8144CC18 | B3 E3 00 04 */	sth r31, 0x4(r3)
/* 8144CC1C | 7C 64 1B 78 */	mr r4, r3
/* 8144CC20 | 7F E5 FB 78 */	mr r5, r31
/* 8144CC24 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 8144CC28 | 93 A3 00 0C */	stw r29, 0xc(r3)
/* 8144CC2C | 9B C3 00 06 */	stb r30, 0x6(r3)
/* 8144CC30 | 7F 63 DB 78 */	mr r3, r27
/* 8144CC34 | 4B FF FD 8D */	bl VmFindAndAddNativeProperty
/* 8144CC38 | 48 00 00 08 */	b .L_8144CC40
.L_8144CC3C:
/* 8144CC3C | 38 60 FC 47 */	li r3, -0x3b9
.L_8144CC40:
/* 8144CC40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144CC44 | 48 1A C8 C5 */	bl _restgpr_26
/* 8144CC48 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144CC4C | 7C 08 03 A6 */	mtlr r0
/* 8144CC50 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144CC54 | 4E 80 00 20 */	blr
.endfn CHANSVmAddNativePropertyAccessors

# .text:0x26AC | 0x8144CC58 | size: 0x7C
.fn CHANSVmAddNativePropertyAccessorsList, global
/* 8144CC58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144CC5C | 7C 08 02 A6 */	mflr r0
/* 8144CC60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144CC64 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144CC68 | 48 1A C8 5D */	bl _savegpr_28
/* 8144CC6C | 7C 7C 1B 78 */	mr r28, r3
/* 8144CC70 | 7C 9D 23 78 */	mr r29, r4
/* 8144CC74 | 7C BE 2B 78 */	mr r30, r5
/* 8144CC78 | 7C DF 33 78 */	mr r31, r6
/* 8144CC7C | 38 60 00 00 */	li r3, 0x0
/* 8144CC80 | 48 00 00 24 */	b .L_8144CCA4
.L_8144CC84:
/* 8144CC84 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8144CC88 | 7F 83 E3 78 */	mr r3, r28
/* 8144CC8C | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8144CC90 | 7F A4 EB 78 */	mr r4, r29
/* 8144CC94 | 80 FE 00 08 */	lwz r7, 0x8(r30)
/* 8144CC98 | 4B FF FE E1 */	bl CHANSVmAddNativePropertyAccessors
/* 8144CC9C | 3B DE 00 0C */	addi r30, r30, 0xc
/* 8144CCA0 | 3B FF FF FF */	subi r31, r31, 0x1
.L_8144CCA4:
/* 8144CCA4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144CCA8 | 41 82 00 14 */	beq .L_8144CCBC
/* 8144CCAC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144CCB0 | 41 82 00 0C */	beq .L_8144CCBC
/* 8144CCB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CCB8 | 41 82 FF CC */	beq .L_8144CC84
.L_8144CCBC:
/* 8144CCBC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144CCC0 | 48 1A C8 51 */	bl _restgpr_28
/* 8144CCC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144CCC8 | 7C 08 03 A6 */	mtlr r0
/* 8144CCCC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144CCD0 | 4E 80 00 20 */	blr
.endfn CHANSVmAddNativePropertyAccessorsList

# .text:0x2728 | 0x8144CCD4 | size: 0x108
.fn CHANSVm_8144CCD4, global
/* 8144CCD4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144CCD8 | 7C 08 02 A6 */	mflr r0
/* 8144CCDC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144CCE0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144CCE4 | 48 1A C7 DD */	bl _savegpr_27
/* 8144CCE8 | 7C 9C 23 78 */	mr r28, r4
/* 8144CCEC | 7C 7B 1B 78 */	mr r27, r3
/* 8144CCF0 | 7C BE 2B 78 */	mr r30, r5
/* 8144CCF4 | 7F 83 E3 78 */	mr r3, r28
/* 8144CCF8 | 48 1A C2 05 */	bl strlen
/* 8144CCFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CD00 | 7C 7D 1B 78 */	mr r29, r3
/* 8144CD04 | 41 82 00 BC */	beq .L_8144CDC0
/* 8144CD08 | 83 FB 00 38 */	lwz r31, 0x38(r27)
/* 8144CD0C | 48 00 00 40 */	b .L_8144CD4C
.L_8144CD10:
/* 8144CD10 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8144CD14 | 7C 1D 00 40 */	cmplw r29, r0
/* 8144CD18 | 40 82 00 24 */	bne .L_8144CD3C
/* 8144CD1C | 7F 83 E3 78 */	mr r3, r28
/* 8144CD20 | 7F A5 EB 78 */	mr r5, r29
/* 8144CD24 | 38 9F 00 18 */	addi r4, r31, 0x18
/* 8144CD28 | 48 1B 14 AD */	bl memcmp
/* 8144CD2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CD30 | 40 82 00 0C */	bne .L_8144CD3C
/* 8144CD34 | 7F E3 FB 78 */	mr r3, r31
/* 8144CD38 | 48 00 00 8C */	b .L_8144CDC4
.L_8144CD3C:
/* 8144CD3C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8144CD40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144CD44 | 41 82 00 10 */	beq .L_8144CD54
/* 8144CD48 | 7C 1F 03 78 */	mr r31, r0
.L_8144CD4C:
/* 8144CD4C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144CD50 | 40 82 FF C0 */	bne .L_8144CD10
.L_8144CD54:
/* 8144CD54 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144CD58 | 41 82 00 68 */	beq .L_8144CDC0
/* 8144CD5C | 38 1D 00 37 */	addi r0, r29, 0x37
/* 8144CD60 | 7F 63 DB 78 */	mr r3, r27
/* 8144CD64 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8144CD68 | 4B FF DB 85 */	bl CHANSVmAllocFromHeap
/* 8144CD6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CD70 | 7C 7E 1B 78 */	mr r30, r3
/* 8144CD74 | 41 82 00 4C */	beq .L_8144CDC0
/* 8144CD78 | 93 A3 00 14 */	stw r29, 0x14(r3)
/* 8144CD7C | 7F 84 E3 78 */	mr r4, r28
/* 8144CD80 | 7F A5 EB 78 */	mr r5, r29
/* 8144CD84 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8144CD88 | 4B EE 34 A9 */	bl memcpy
/* 8144CD8C | 7F C3 F3 78 */	mr r3, r30
/* 8144CD90 | 38 80 00 00 */	li r4, 0x0
/* 8144CD94 | 38 A0 00 10 */	li r5, 0x10
/* 8144CD98 | 4B EE 35 9D */	bl memset
/* 8144CD9C | 38 00 00 80 */	li r0, 0x80
/* 8144CDA0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144CDA4 | 98 1E 00 09 */	stb r0, 0x9(r30)
/* 8144CDA8 | 40 82 00 0C */	bne .L_8144CDB4
/* 8144CDAC | 93 DB 00 38 */	stw r30, 0x38(r27)
/* 8144CDB0 | 48 00 00 08 */	b .L_8144CDB8
.L_8144CDB4:
/* 8144CDB4 | 93 DF 00 10 */	stw r30, 0x10(r31)
.L_8144CDB8:
/* 8144CDB8 | 7F C3 F3 78 */	mr r3, r30
/* 8144CDBC | 48 00 00 08 */	b .L_8144CDC4
.L_8144CDC0:
/* 8144CDC0 | 38 60 00 00 */	li r3, 0x0
.L_8144CDC4:
/* 8144CDC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144CDC8 | 48 1A C7 45 */	bl _restgpr_27
/* 8144CDCC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144CDD0 | 7C 08 03 A6 */	mtlr r0
/* 8144CDD4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144CDD8 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144CCD4

# .text:0x2830 | 0x8144CDDC | size: 0xA4
.fn CHANSVmSetObjectAsNativeInstance, global
/* 8144CDDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144CDE0 | 7C 08 02 A6 */	mflr r0
/* 8144CDE4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144CDE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144CDEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144CDF0 | 3B E0 FC 43 */	li r31, -0x3bd
/* 8144CDF4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144CDF8 | 7C 9E 23 78 */	mr r30, r4
/* 8144CDFC | 41 82 00 68 */	beq .L_8144CE64
/* 8144CE00 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144CE04 | 40 82 00 18 */	bne .L_8144CE1C
/* 8144CE08 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144CE0C | 41 82 00 10 */	beq .L_8144CE1C
/* 8144CE10 | 7C C4 33 78 */	mr r4, r6
/* 8144CE14 | 4B FF F9 61 */	bl CHANSVmFindNativeClass
/* 8144CE18 | 7C 65 1B 78 */	mr r5, r3
.L_8144CE1C:
/* 8144CE1C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144CE20 | 41 82 00 44 */	beq .L_8144CE64
/* 8144CE24 | 88 1E 00 08 */	lbz r0, 0x8(r30)
/* 8144CE28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144CE2C | 41 82 00 20 */	beq .L_8144CE4C
/* 8144CE30 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8144CE34 | 40 82 00 2C */	bne .L_8144CE60
/* 8144CE38 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8144CE3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144CE40 | 41 82 00 0C */	beq .L_8144CE4C
/* 8144CE44 | 7C 00 28 40 */	cmplw r0, r5
/* 8144CE48 | 40 82 00 18 */	bne .L_8144CE60
.L_8144CE4C:
/* 8144CE4C | 38 00 00 08 */	li r0, 0x8
/* 8144CE50 | 90 BE 00 0C */	stw r5, 0xc(r30)
/* 8144CE54 | 3B E0 00 00 */	li r31, 0x0
/* 8144CE58 | 98 1E 00 08 */	stb r0, 0x8(r30)
/* 8144CE5C | 48 00 00 08 */	b .L_8144CE64
.L_8144CE60:
/* 8144CE60 | 3B E0 FC 23 */	li r31, -0x3dd
.L_8144CE64:
/* 8144CE64 | 7F E3 FB 78 */	mr r3, r31
/* 8144CE68 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144CE6C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144CE70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144CE74 | 7C 08 03 A6 */	mtlr r0
/* 8144CE78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144CE7C | 4E 80 00 20 */	blr
.endfn CHANSVmSetObjectAsNativeInstance

# .text:0x28D4 | 0x8144CE80 | size: 0xA4
.fn CHANSVmConstructGlobalObject, global
/* 8144CE80 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144CE84 | 7C 08 02 A6 */	mflr r0
/* 8144CE88 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144CE8C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144CE90 | 48 1A C6 35 */	bl _savegpr_28
/* 8144CE94 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144CE98 | 7C 7C 1B 78 */	mr r28, r3
/* 8144CE9C | 7C BD 2B 78 */	mr r29, r5
/* 8144CEA0 | 7C DE 33 78 */	mr r30, r6
/* 8144CEA4 | 3B E0 00 00 */	li r31, 0x0
/* 8144CEA8 | 41 82 00 60 */	beq .L_8144CF08
/* 8144CEAC | 38 A0 00 01 */	li r5, 0x1
/* 8144CEB0 | 4B FF FE 25 */	bl CHANSVm_8144CCD4
/* 8144CEB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CEB8 | 7C 7F 1B 78 */	mr r31, r3
/* 8144CEBC | 41 82 00 4C */	beq .L_8144CF08
/* 8144CEC0 | 7F 83 E3 78 */	mr r3, r28
/* 8144CEC4 | 7F E4 FB 78 */	mr r4, r31
/* 8144CEC8 | 7F A5 EB 78 */	mr r5, r29
/* 8144CECC | 38 C0 00 00 */	li r6, 0x0
/* 8144CED0 | 4B FF FF 0D */	bl CHANSVmSetObjectAsNativeInstance
/* 8144CED4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CED8 | 40 82 00 2C */	bne .L_8144CF04
/* 8144CEDC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144CEE0 | 41 82 00 28 */	beq .L_8144CF08
/* 8144CEE4 | 7F CC F3 78 */	mr r12, r30
/* 8144CEE8 | 7F 83 E3 78 */	mr r3, r28
/* 8144CEEC | 7F E5 FB 78 */	mr r5, r31
/* 8144CEF0 | 38 80 00 00 */	li r4, 0x0
/* 8144CEF4 | 7D 89 03 A6 */	mtctr r12
/* 8144CEF8 | 4E 80 04 21 */	bctrl
/* 8144CEFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CF00 | 40 82 00 08 */	bne .L_8144CF08
.L_8144CF04:
/* 8144CF04 | 3B E0 00 00 */	li r31, 0x0
.L_8144CF08:
/* 8144CF08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144CF0C | 7F E3 FB 78 */	mr r3, r31
/* 8144CF10 | 48 1A C6 01 */	bl _restgpr_28
/* 8144CF14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144CF18 | 7C 08 03 A6 */	mtlr r0
/* 8144CF1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144CF20 | 4E 80 00 20 */	blr
.endfn CHANSVmConstructGlobalObject

# .text:0x2978 | 0x8144CF24 | size: 0xE0
.fn CHANSVmNewBuiltinObject, global
/* 8144CF24 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144CF28 | 7C 08 02 A6 */	mflr r0
/* 8144CF2C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8144CF30 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144CF34 | 48 1A C5 81 */	bl _savegpr_24
/* 8144CF38 | 83 81 00 38 */	lwz r28, 0x38(r1)
/* 8144CF3C | 7C 78 1B 78 */	mr r24, r3
/* 8144CF40 | 83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8144CF44 | 7D 19 43 78 */	mr r25, r8
/* 8144CF48 | 83 C1 00 40 */	lwz r30, 0x40(r1)
/* 8144CF4C | 7D 3A 4B 78 */	mr r26, r9
/* 8144CF50 | 7D 5B 53 78 */	mr r27, r10
/* 8144CF54 | 4B FF F8 AD */	bl CHANSVmAddNativeClass2
/* 8144CF58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CF5C | 7C 7F 1B 78 */	mr r31, r3
/* 8144CF60 | 41 82 00 88 */	beq .L_8144CFE8
/* 8144CF64 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8144CF68 | 41 82 00 28 */	beq .L_8144CF90
/* 8144CF6C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8144CF70 | 41 82 00 20 */	beq .L_8144CF90
/* 8144CF74 | 7F 03 C3 78 */	mr r3, r24
/* 8144CF78 | 7F E4 FB 78 */	mr r4, r31
/* 8144CF7C | 7F 65 DB 78 */	mr r5, r27
/* 8144CF80 | 7F 86 E3 78 */	mr r6, r28
/* 8144CF84 | 4B FF FC D5 */	bl CHANSVmAddNativePropertyAccessorsList
/* 8144CF88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CF8C | 40 82 00 5C */	bne .L_8144CFE8
.L_8144CF90:
/* 8144CF90 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8144CF94 | 41 82 00 28 */	beq .L_8144CFBC
/* 8144CF98 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144CF9C | 41 82 00 20 */	beq .L_8144CFBC
/* 8144CFA0 | 7F 03 C3 78 */	mr r3, r24
/* 8144CFA4 | 7F E4 FB 78 */	mr r4, r31
/* 8144CFA8 | 7F A5 EB 78 */	mr r5, r29
/* 8144CFAC | 7F C6 F3 78 */	mr r6, r30
/* 8144CFB0 | 4B FF FA C1 */	bl CHANSVmAddNativeMethodList
/* 8144CFB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CFB8 | 40 82 00 30 */	bne .L_8144CFE8
.L_8144CFBC:
/* 8144CFBC | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8144CFC0 | 41 82 00 20 */	beq .L_8144CFE0
/* 8144CFC4 | 7F 03 C3 78 */	mr r3, r24
/* 8144CFC8 | 7F 24 CB 78 */	mr r4, r25
/* 8144CFCC | 7F E5 FB 78 */	mr r5, r31
/* 8144CFD0 | 7F 46 D3 78 */	mr r6, r26
/* 8144CFD4 | 4B FF FE AD */	bl CHANSVmConstructGlobalObject
/* 8144CFD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144CFDC | 41 82 00 0C */	beq .L_8144CFE8
.L_8144CFE0:
/* 8144CFE0 | 38 60 00 01 */	li r3, 0x1
/* 8144CFE4 | 48 00 00 08 */	b .L_8144CFEC
.L_8144CFE8:
/* 8144CFE8 | 38 60 00 00 */	li r3, 0x0
.L_8144CFEC:
/* 8144CFEC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144CFF0 | 48 1A C5 11 */	bl _restgpr_24
/* 8144CFF4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8144CFF8 | 7C 08 03 A6 */	mtlr r0
/* 8144CFFC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144D000 | 4E 80 00 20 */	blr
.endfn CHANSVmNewBuiltinObject

# .text:0x2A58 | 0x8144D004 | size: 0x90
.fn CHANSVmCheckNativeInstance, global
/* 8144D004 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144D008 | 7C 08 02 A6 */	mflr r0
/* 8144D00C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144D010 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D014 | 48 1A C4 B5 */	bl _savegpr_29
/* 8144D018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D01C | 7C 9D 23 78 */	mr r29, r4
/* 8144D020 | 41 82 00 58 */	beq .L_8144D078
/* 8144D024 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 8144D028 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8144D02C | 40 82 00 4C */	bne .L_8144D078
/* 8144D030 | 83 C3 00 0C */	lwz r30, 0xc(r3)
/* 8144D034 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144D038 | 41 82 00 40 */	beq .L_8144D078
/* 8144D03C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144D040 | 41 82 00 38 */	beq .L_8144D078
/* 8144D044 | 83 FE 00 18 */	lwz r31, 0x18(r30)
/* 8144D048 | 7F A3 EB 78 */	mr r3, r29
/* 8144D04C | 48 1A BE B1 */	bl strlen
/* 8144D050 | 7C 1F 18 40 */	cmplw r31, r3
/* 8144D054 | 40 82 00 24 */	bne .L_8144D078
/* 8144D058 | 7F A4 EB 78 */	mr r4, r29
/* 8144D05C | 7F E5 FB 78 */	mr r5, r31
/* 8144D060 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8144D064 | 48 1B 55 39 */	bl strncmp
/* 8144D068 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D06C | 40 82 00 0C */	bne .L_8144D078
/* 8144D070 | 38 60 00 01 */	li r3, 0x1
/* 8144D074 | 48 00 00 08 */	b .L_8144D07C
.L_8144D078:
/* 8144D078 | 38 60 00 00 */	li r3, 0x0
.L_8144D07C:
/* 8144D07C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D080 | 48 1A C4 95 */	bl _restgpr_29
/* 8144D084 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144D088 | 7C 08 03 A6 */	mtlr r0
/* 8144D08C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144D090 | 4E 80 00 20 */	blr
.endfn CHANSVmCheckNativeInstance

# .text:0x2AE8 | 0x8144D094 | size: 0x154
.fn CHANSVm_8144D094, global
/* 8144D094 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144D098 | 7C 08 02 A6 */	mflr r0
/* 8144D09C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8144D0A0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144D0A4 | 48 1A C4 15 */	bl _savegpr_25
/* 8144D0A8 | 7F 85 32 15 */	add. r28, r5, r6
/* 8144D0AC | 7C 7F 1B 78 */	mr r31, r3
/* 8144D0B0 | 7C 99 23 78 */	mr r25, r4
/* 8144D0B4 | 7C BB 2B 78 */	mr r27, r5
/* 8144D0B8 | 7C FA 3B 78 */	mr r26, r7
/* 8144D0BC | 40 82 00 0C */	bne .L_8144D0C8
/* 8144D0C0 | 38 60 00 01 */	li r3, 0x1
/* 8144D0C4 | 48 00 01 0C */	b .L_8144D1D0
.L_8144D0C8:
/* 8144D0C8 | 57 84 20 36 */	slwi r4, r28, 4
/* 8144D0CC | 38 04 00 37 */	addi r0, r4, 0x37
/* 8144D0D0 | 54 1E 00 34 */	clrrwi r30, r0, 5
/* 8144D0D4 | 7F C4 F3 78 */	mr r4, r30
/* 8144D0D8 | 4B FF D8 15 */	bl CHANSVmAllocFromHeap
/* 8144D0DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D0E0 | 7C 7D 1B 78 */	mr r29, r3
/* 8144D0E4 | 41 82 00 E8 */	beq .L_8144D1CC
/* 8144D0E8 | 93 C3 00 08 */	stw r30, 0x8(r3)
/* 8144D0EC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8144D0F0 | 93 83 00 0C */	stw r28, 0xc(r3)
/* 8144D0F4 | 80 99 00 00 */	lwz r4, 0x0(r25)
/* 8144D0F8 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144D0FC | 41 82 00 2C */	beq .L_8144D128
/* 8144D100 | 48 00 00 08 */	b .L_8144D108
.L_8144D104:
/* 8144D104 | 7C 04 03 78 */	mr r4, r0
.L_8144D108:
/* 8144D108 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8144D10C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144D110 | 40 82 FF F4 */	bne .L_8144D104
/* 8144D114 | 90 64 00 04 */	stw r3, 0x4(r4)
/* 8144D118 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8144D11C | 48 00 00 20 */	b .L_8144D13C
/* 8144D120 | 48 00 00 08 */	b .L_8144D128
.L_8144D124:
/* 8144D124 | 7C 04 03 78 */	mr r4, r0
.L_8144D128:
/* 8144D128 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8144D12C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144D130 | 40 82 FF F4 */	bne .L_8144D124
/* 8144D134 | 90 64 00 00 */	stw r3, 0x0(r4)
/* 8144D138 | 90 83 00 04 */	stw r4, 0x4(r3)
.L_8144D13C:
/* 8144D13C | 3B 60 00 00 */	li r27, 0x0
/* 8144D140 | 3B C0 00 00 */	li r30, 0x0
/* 8144D144 | 48 00 00 78 */	b .L_8144D1BC
.L_8144D148:
/* 8144D148 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8144D14C | 41 82 00 54 */	beq .L_8144D1A0
/* 8144D150 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8144D154 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8144D158 | 7C 1B 00 40 */	cmplw r27, r0
/* 8144D15C | 40 80 00 44 */	bge .L_8144D1A0
/* 8144D160 | 7F E3 FB 78 */	mr r3, r31
/* 8144D164 | 7F 64 DB 78 */	mr r4, r27
/* 8144D168 | 4B FF F5 29 */	bl CHANSVmGetArg
/* 8144D16C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D170 | 41 82 00 30 */	beq .L_8144D1A0
/* 8144D174 | 7F E3 FB 78 */	mr r3, r31
/* 8144D178 | 7F 64 DB 78 */	mr r4, r27
/* 8144D17C | 4B FF F5 15 */	bl CHANSVmGetArg
/* 8144D180 | 7C 9D F2 14 */	add r4, r29, r30
/* 8144D184 | 7C 65 1B 78 */	mr r5, r3
/* 8144D188 | 7F E3 FB 78 */	mr r3, r31
/* 8144D18C | 38 84 00 18 */	addi r4, r4, 0x18
/* 8144D190 | 4B FF DD 09 */	bl CHANSVmCopyObject
/* 8144D194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D198 | 41 82 00 34 */	beq .L_8144D1CC
/* 8144D19C | 48 00 00 18 */	b .L_8144D1B4
.L_8144D1A0:
/* 8144D1A0 | 7C 7D F2 14 */	add r3, r29, r30
/* 8144D1A4 | 38 80 00 00 */	li r4, 0x0
/* 8144D1A8 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8144D1AC | 38 A0 00 10 */	li r5, 0x10
/* 8144D1B0 | 4B EE 31 85 */	bl memset
.L_8144D1B4:
/* 8144D1B4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8144D1B8 | 3B DE 00 10 */	addi r30, r30, 0x10
.L_8144D1BC:
/* 8144D1BC | 7C 1B E0 40 */	cmplw r27, r28
/* 8144D1C0 | 41 80 FF 88 */	blt .L_8144D148
/* 8144D1C4 | 38 60 00 01 */	li r3, 0x1
/* 8144D1C8 | 48 00 00 08 */	b .L_8144D1D0
.L_8144D1CC:
/* 8144D1CC | 38 60 00 00 */	li r3, 0x0
.L_8144D1D0:
/* 8144D1D0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144D1D4 | 48 1A C3 31 */	bl _restgpr_25
/* 8144D1D8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8144D1DC | 7C 08 03 A6 */	mtlr r0
/* 8144D1E0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144D1E4 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144D094

# .text:0x2C3C | 0x8144D1E8 | size: 0x30
.fn VmArrayJoinEstimateStrSize, local
/* 8144D1E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D1EC | 38 80 00 00 */	li r4, 0x0
/* 8144D1F0 | 41 82 00 20 */	beq .L_8144D210
/* 8144D1F4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144D1F8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8144D1FC | 48 00 00 08 */	b .L_8144D204
.L_8144D200:
/* 8144D200 | 7C 04 03 78 */	mr r4, r0
.L_8144D204:
/* 8144D204 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8144D208 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144D20C | 40 82 FF F4 */	bne .L_8144D200
.L_8144D210:
/* 8144D210 | 7C 83 23 78 */	mr r3, r4
/* 8144D214 | 4E 80 00 20 */	blr
.endfn VmArrayJoinEstimateStrSize

# .text:0x2C6C | 0x8144D218 | size: 0x48
.fn CHANSVm_8144D218, global
/* 8144D218 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144D21C | 7C 08 02 A6 */	mflr r0
/* 8144D220 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144D224 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144D228 | 3B E0 00 00 */	li r31, 0x0
/* 8144D22C | 4B FF FF BD */	bl VmArrayJoinEstimateStrSize
/* 8144D230 | 48 00 00 10 */	b .L_8144D240
.L_8144D234:
/* 8144D234 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8144D238 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144D23C | 7F FF 02 14 */	add r31, r31, r0
.L_8144D240:
/* 8144D240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D244 | 40 82 FF F0 */	bne .L_8144D234
/* 8144D248 | 7F E3 FB 78 */	mr r3, r31
/* 8144D24C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144D250 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144D254 | 7C 08 03 A6 */	mtlr r0
/* 8144D258 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144D25C | 4E 80 00 20 */	blr
.endfn CHANSVm_8144D218

# .text:0x2CB4 | 0x8144D260 | size: 0xC0
.fn CHANSVm_8144D260, global
/* 8144D260 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144D264 | 7C 08 02 A6 */	mflr r0
/* 8144D268 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144D26C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D270 | 48 1A C2 51 */	bl _savegpr_27
/* 8144D274 | 7C 7B 1B 78 */	mr r27, r3
/* 8144D278 | 7C 9C 23 78 */	mr r28, r4
/* 8144D27C | 7C BD 2B 78 */	mr r29, r5
/* 8144D280 | 7C DE 33 78 */	mr r30, r6
.L_8144D284:
/* 8144D284 | 7F 83 E3 78 */	mr r3, r28
/* 8144D288 | 3B E0 00 00 */	li r31, 0x0
/* 8144D28C | 4B FF FF 5D */	bl VmArrayJoinEstimateStrSize
/* 8144D290 | 48 00 00 38 */	b .L_8144D2C8
.L_8144D294:
/* 8144D294 | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 8144D298 | 7C 1F 22 14 */	add r0, r31, r4
/* 8144D29C | 7C 1D 00 40 */	cmplw r29, r0
/* 8144D2A0 | 40 80 00 20 */	bge .L_8144D2C0
/* 8144D2A4 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8144D2A8 | 7C 00 EA 14 */	add r0, r0, r29
/* 8144D2AC | 7C 1F 00 50 */	subf r0, r31, r0
/* 8144D2B0 | 54 00 20 36 */	slwi r0, r0, 4
/* 8144D2B4 | 7C 63 02 14 */	add r3, r3, r0
/* 8144D2B8 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8144D2BC | 48 00 00 4C */	b .L_8144D308
.L_8144D2C0:
/* 8144D2C0 | 7F FF 22 14 */	add r31, r31, r4
/* 8144D2C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8144D2C8:
/* 8144D2C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D2CC | 40 82 FF C8 */	bne .L_8144D294
/* 8144D2D0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144D2D4 | 41 82 00 30 */	beq .L_8144D304
/* 8144D2D8 | 7C DF E8 50 */	subf r6, r31, r29
/* 8144D2DC | 7F 63 DB 78 */	mr r3, r27
/* 8144D2E0 | 7F 84 E3 78 */	mr r4, r28
/* 8144D2E4 | 38 A0 00 00 */	li r5, 0x0
/* 8144D2E8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8144D2EC | 38 E0 00 00 */	li r7, 0x0
/* 8144D2F0 | 4B FF FD A5 */	bl CHANSVm_8144D094
/* 8144D2F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D2F8 | 41 82 00 0C */	beq .L_8144D304
/* 8144D2FC | 3B C0 00 00 */	li r30, 0x0
/* 8144D300 | 4B FF FF 84 */	b .L_8144D284
.L_8144D304:
/* 8144D304 | 38 60 00 00 */	li r3, 0x0
.L_8144D308:
/* 8144D308 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D30C | 48 1A C2 01 */	bl _restgpr_27
/* 8144D310 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144D314 | 7C 08 03 A6 */	mtlr r0
/* 8144D318 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144D31C | 4E 80 00 20 */	blr
.endfn CHANSVm_8144D260

# .text:0x2D74 | 0x8144D320 | size: 0x48
.fn CHANSVmGetArrayElement, global
/* 8144D320 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144D324 | 7C 08 02 A6 */	mflr r0
/* 8144D328 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144D32C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144D330 | 41 82 00 24 */	beq .L_8144D354
/* 8144D334 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 8144D338 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8144D33C | 40 82 00 18 */	bne .L_8144D354
/* 8144D340 | 38 C0 00 00 */	li r6, 0x0
/* 8144D344 | 4B FF FF 1D */	bl CHANSVm_8144D260
/* 8144D348 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D34C | 41 82 00 08 */	beq .L_8144D354
/* 8144D350 | 48 00 00 08 */	b .L_8144D358
.L_8144D354:
/* 8144D354 | 38 60 00 00 */	li r3, 0x0
.L_8144D358:
/* 8144D358 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144D35C | 7C 08 03 A6 */	mtlr r0
/* 8144D360 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144D364 | 4E 80 00 20 */	blr
.endfn CHANSVmGetArrayElement

# .text:0x2DBC | 0x8144D368 | size: 0xEC
.fn CHANSVm_8144D368, global
/* 8144D368 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144D36C | 7C 08 02 A6 */	mflr r0
/* 8144D370 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144D374 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D378 | 48 1A C1 4D */	bl _savegpr_28
/* 8144D37C | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 8144D380 | 7C 7C 1B 78 */	mr r28, r3
/* 8144D384 | 7C BD 2B 78 */	mr r29, r5
/* 8144D388 | 3B C0 00 01 */	li r30, 0x1
/* 8144D38C | A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 8144D390 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 8144D394 | 40 82 00 4C */	bne .L_8144D3E0
/* 8144D398 | 38 80 00 00 */	li r4, 0x0
/* 8144D39C | 4B FF F2 F5 */	bl CHANSVmGetArg
/* 8144D3A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D3A4 | 41 82 00 3C */	beq .L_8144D3E0
/* 8144D3A8 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 8144D3AC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8144D3B0 | 40 82 00 30 */	bne .L_8144D3E0
/* 8144D3B4 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8144D3B8 | 38 80 FF FE */	li r4, -0x2
/* 8144D3BC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8144D3C0 | 38 60 00 00 */	li r3, 0x0
/* 8144D3C4 | 7C 06 20 10 */	subfc r0, r6, r4
/* 8144D3C8 | 7C 05 19 10 */	subfe r0, r5, r3
/* 8144D3CC | 7C 04 21 10 */	subfe r0, r4, r4
/* 8144D3D0 | 7C 00 00 D1 */	neg. r0, r0
/* 8144D3D4 | 40 82 00 0C */	bne .L_8144D3E0
/* 8144D3D8 | 7C DF 33 78 */	mr r31, r6
/* 8144D3DC | 3B C0 00 00 */	li r30, 0x0
.L_8144D3E0:
/* 8144D3E0 | 38 00 00 04 */	li r0, 0x4
/* 8144D3E4 | 7F 83 E3 78 */	mr r3, r28
/* 8144D3E8 | 98 1D 00 08 */	stb r0, 0x8(r29)
/* 8144D3EC | 7F A4 EB 78 */	mr r4, r29
/* 8144D3F0 | 38 A0 00 18 */	li r5, 0x18
/* 8144D3F4 | 80 1C 00 40 */	lwz r0, 0x40(r28)
/* 8144D3F8 | 90 1D 00 0C */	stw r0, 0xc(r29)
/* 8144D3FC | 4B FF D8 59 */	bl CHANSVmNewObjData
/* 8144D400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D404 | 41 82 00 34 */	beq .L_8144D438
/* 8144D408 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144D40C | 41 82 00 24 */	beq .L_8144D430
/* 8144D410 | 7F 83 E3 78 */	mr r3, r28
/* 8144D414 | 7F A4 EB 78 */	mr r4, r29
/* 8144D418 | 7F E5 FB 78 */	mr r5, r31
/* 8144D41C | 7F C7 F3 78 */	mr r7, r30
/* 8144D420 | 38 C0 00 00 */	li r6, 0x0
/* 8144D424 | 4B FF FC 71 */	bl CHANSVm_8144D094
/* 8144D428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D42C | 41 82 00 0C */	beq .L_8144D438
.L_8144D430:
/* 8144D430 | 38 60 00 01 */	li r3, 0x1
/* 8144D434 | 48 00 00 08 */	b .L_8144D43C
.L_8144D438:
/* 8144D438 | 38 60 00 00 */	li r3, 0x0
.L_8144D43C:
/* 8144D43C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D440 | 48 1A C0 D1 */	bl _restgpr_28
/* 8144D444 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144D448 | 7C 08 03 A6 */	mtlr r0
/* 8144D44C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144D450 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144D368

# .text:0x2EA8 | 0x8144D454 | size: 0x88
.fn CHANSVm_8144D454, global
/* 8144D454 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144D458 | 7C 08 02 A6 */	mflr r0
/* 8144D45C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144D460 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D464 | 48 1A C0 61 */	bl _savegpr_28
/* 8144D468 | 7C 9D 23 78 */	mr r29, r4
/* 8144D46C | 7C 7C 1B 78 */	mr r28, r3
/* 8144D470 | 7F A3 EB 78 */	mr r3, r29
/* 8144D474 | 4B FF FD A5 */	bl CHANSVm_8144D218
/* 8144D478 | 7C 7F 1B 78 */	mr r31, r3
/* 8144D47C | 3B C0 00 00 */	li r30, 0x0
/* 8144D480 | 48 00 00 30 */	b .L_8144D4B0
.L_8144D484:
/* 8144D484 | 7F 83 E3 78 */	mr r3, r28
/* 8144D488 | 7F A4 EB 78 */	mr r4, r29
/* 8144D48C | 7F C5 F3 78 */	mr r5, r30
/* 8144D490 | 38 C0 00 00 */	li r6, 0x0
/* 8144D494 | 4B FF FD CD */	bl CHANSVm_8144D260
/* 8144D498 | 7C 64 1B 78 */	mr r4, r3
/* 8144D49C | 7F 83 E3 78 */	mr r3, r28
/* 8144D4A0 | 4B FF D6 B5 */	bl CHANSVmDeleteObject
/* 8144D4A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D4A8 | 40 82 00 18 */	bne .L_8144D4C0
/* 8144D4AC | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8144D4B0:
/* 8144D4B0 | 7C 1E F8 40 */	cmplw r30, r31
/* 8144D4B4 | 41 80 FF D0 */	blt .L_8144D484
/* 8144D4B8 | 38 60 00 01 */	li r3, 0x1
/* 8144D4BC | 48 00 00 08 */	b .L_8144D4C4
.L_8144D4C0:
/* 8144D4C0 | 38 60 00 00 */	li r3, 0x0
.L_8144D4C4:
/* 8144D4C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D4C8 | 48 1A C0 49 */	bl _restgpr_28
/* 8144D4CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144D4D0 | 7C 08 03 A6 */	mtlr r0
/* 8144D4D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144D4D8 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144D454

# .text:0x2F30 | 0x8144D4DC | size: 0x64
.fn CHANSVmGetArrayElement2D, global
/* 8144D4DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144D4E0 | 7C 08 02 A6 */	mflr r0
/* 8144D4E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144D4E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144D4EC | 7C DF 33 78 */	mr r31, r6
/* 8144D4F0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144D4F4 | 7C 7E 1B 78 */	mr r30, r3
/* 8144D4F8 | 4B FF FE 29 */	bl CHANSVmGetArrayElement
/* 8144D4FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D500 | 7C 64 1B 78 */	mr r4, r3
/* 8144D504 | 41 82 00 20 */	beq .L_8144D524
/* 8144D508 | 7F C3 F3 78 */	mr r3, r30
/* 8144D50C | 7F E5 FB 78 */	mr r5, r31
/* 8144D510 | 38 C0 00 00 */	li r6, 0x0
/* 8144D514 | 4B FF FD 4D */	bl CHANSVm_8144D260
/* 8144D518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D51C | 41 82 00 08 */	beq .L_8144D524
/* 8144D520 | 48 00 00 08 */	b .L_8144D528
.L_8144D524:
/* 8144D524 | 38 60 00 00 */	li r3, 0x0
.L_8144D528:
/* 8144D528 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144D52C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144D530 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144D534 | 7C 08 03 A6 */	mtlr r0
/* 8144D538 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144D53C | 4E 80 00 20 */	blr
.endfn CHANSVmGetArrayElement2D

# .text:0x2F94 | 0x8144D540 | size: 0x3C
.fn CHANSVmGetArrayElement2DFloat, global
/* 8144D540 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144D544 | 7C 08 02 A6 */	mflr r0
/* 8144D548 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144D54C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144D550 | 7C 7F 1B 78 */	mr r31, r3
/* 8144D554 | 4B FF FF 89 */	bl CHANSVmGetArrayElement2D
/* 8144D558 | 7C 65 1B 78 */	mr r5, r3
/* 8144D55C | 7F E3 FB 78 */	mr r3, r31
/* 8144D560 | 38 80 00 02 */	li r4, 0x2
/* 8144D564 | 4B FF E3 79 */	bl CHANSVmConvertObjectType
/* 8144D568 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144D56C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144D570 | 7C 08 03 A6 */	mtlr r0
/* 8144D574 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144D578 | 4E 80 00 20 */	blr
.endfn CHANSVmGetArrayElement2DFloat

# .text:0x2FD0 | 0x8144D57C | size: 0x24
.fn CHANSVmGetArrayLength, global
/* 8144D57C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144D580 | 41 82 00 18 */	beq .L_8144D598
/* 8144D584 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 8144D588 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8144D58C | 40 82 00 0C */	bne .L_8144D598
/* 8144D590 | 7C 83 23 78 */	mr r3, r4
/* 8144D594 | 4B FF FC 84 */	b CHANSVm_8144D218
.L_8144D598:
/* 8144D598 | 38 60 00 00 */	li r3, 0x0
/* 8144D59C | 4E 80 00 20 */	blr
.endfn CHANSVmGetArrayLength

# .text:0x2FF4 | 0x8144D5A0 | size: 0x10C
.fn CHANSVm_8144D5A0, global
/* 8144D5A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144D5A4 | 7C 08 02 A6 */	mflr r0
/* 8144D5A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144D5AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D5B0 | 48 1A BF 11 */	bl _savegpr_27
/* 8144D5B4 | 7C 9B 23 78 */	mr r27, r4
/* 8144D5B8 | 3B A0 00 00 */	li r29, 0x0
/* 8144D5BC | 4B FF FC 2D */	bl VmArrayJoinEstimateStrSize
/* 8144D5C0 | 7C 7E 1B 78 */	mr r30, r3
/* 8144D5C4 | 48 00 00 BC */	b .L_8144D680
.L_8144D5C8:
/* 8144D5C8 | 83 9E 00 10 */	lwz r28, 0x10(r30)
/* 8144D5CC | 57 9F 20 36 */	slwi r31, r28, 4
/* 8144D5D0 | 48 00 00 98 */	b .L_8144D668
.L_8144D5D4:
/* 8144D5D4 | 7C 7E FA 14 */	add r3, r30, r31
/* 8144D5D8 | 88 C3 00 20 */	lbz r6, 0x20(r3)
/* 8144D5DC | 2C 06 00 03 */	cmpwi r6, 0x3
/* 8144D5E0 | 41 82 00 24 */	beq .L_8144D604
/* 8144D5E4 | 40 80 00 14 */	bge .L_8144D5F8
/* 8144D5E8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144D5EC | 41 82 00 70 */	beq .L_8144D65C
/* 8144D5F0 | 40 80 00 24 */	bge .L_8144D614
/* 8144D5F4 | 48 00 00 3C */	b .L_8144D630
.L_8144D5F8:
/* 8144D5F8 | 2C 06 00 05 */	cmpwi r6, 0x5
/* 8144D5FC | 40 80 00 34 */	bge .L_8144D630
/* 8144D600 | 48 00 00 1C */	b .L_8144D61C
.L_8144D604:
/* 8144D604 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8144D608 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144D60C | 7F BD 02 14 */	add r29, r29, r0
/* 8144D610 | 48 00 00 4C */	b .L_8144D65C
.L_8144D614:
/* 8144D614 | 3B BD 00 80 */	addi r29, r29, 0x80
/* 8144D618 | 48 00 00 44 */	b .L_8144D65C
.L_8144D61C:
/* 8144D61C | 7F 64 DB 78 */	mr r4, r27
/* 8144D620 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8144D624 | 4B FF FF 7D */	bl CHANSVm_8144D5A0
/* 8144D628 | 7F BD 1A 14 */	add r29, r29, r3
/* 8144D62C | 48 00 00 30 */	b .L_8144D65C
.L_8144D630:
/* 8144D630 | 80 0D AD 18 */	lwz r0, CHANSVmDebugVerboseMode@sda21(r0)
/* 8144D634 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144D638 | 41 82 00 58 */	beq .L_8144D690
/* 8144D63C | 3C 60 81 67 */	lis r3, lbl_81669B2D@ha
/* 8144D640 | 3C 80 81 67 */	lis r4, lbl_81669B12@ha
/* 8144D644 | 38 A0 01 3E */	li r5, 0x13e
/* 8144D648 | 38 63 9B 2D */	addi r3, r3, lbl_81669B2D@l
/* 8144D64C | 38 84 9B 12 */	addi r4, r4, lbl_81669B12@l
/* 8144D650 | 4C C6 31 82 */	crclr cr1eq
/* 8144D654 | 4B FF CF 59 */	bl CHANSVmDebugPrintf
/* 8144D658 | 48 00 00 38 */	b .L_8144D690
.L_8144D65C:
/* 8144D65C | 7F BD DA 14 */	add r29, r29, r27
/* 8144D660 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8144D664 | 3B FF 00 10 */	addi r31, r31, 0x10
.L_8144D668:
/* 8144D668 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8144D66C | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8144D670 | 7C 03 02 14 */	add r0, r3, r0
/* 8144D674 | 7C 1C 00 40 */	cmplw r28, r0
/* 8144D678 | 41 80 FF 5C */	blt .L_8144D5D4
/* 8144D67C | 83 DE 00 00 */	lwz r30, 0x0(r30)
.L_8144D680:
/* 8144D680 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144D684 | 40 82 FF 44 */	bne .L_8144D5C8
/* 8144D688 | 7F A3 EB 78 */	mr r3, r29
/* 8144D68C | 48 00 00 08 */	b .L_8144D694
.L_8144D690:
/* 8144D690 | 38 60 00 00 */	li r3, 0x0
.L_8144D694:
/* 8144D694 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D698 | 48 1A BE 75 */	bl _restgpr_27
/* 8144D69C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144D6A0 | 7C 08 03 A6 */	mtlr r0
/* 8144D6A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144D6A8 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144D5A0

# .text:0x3100 | 0x8144D6AC | size: 0x230
.fn VmArrayJoinSub, local
/* 8144D6AC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8144D6B0 | 7C 08 02 A6 */	mflr r0
/* 8144D6B4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8144D6B8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8144D6BC | 48 1A BD ED */	bl _savegpr_21
/* 8144D6C0 | 7D 1C 43 78 */	mr r28, r8
/* 8144D6C4 | 7C 78 1B 78 */	mr r24, r3
/* 8144D6C8 | 7C 83 23 78 */	mr r3, r4
/* 8144D6CC | 7C B9 2B 78 */	mr r25, r5
/* 8144D6D0 | 7C DA 33 78 */	mr r26, r6
/* 8144D6D4 | 7C FB 3B 78 */	mr r27, r7
/* 8144D6D8 | 7F 9D E3 78 */	mr r29, r28
/* 8144D6DC | 4B FF FB 0D */	bl VmArrayJoinEstimateStrSize
/* 8144D6E0 | 7C 7F 1B 78 */	mr r31, r3
/* 8144D6E4 | 48 00 01 A0 */	b .L_8144D884
.L_8144D6E8:
/* 8144D6E8 | 83 DF 00 10 */	lwz r30, 0x10(r31)
/* 8144D6EC | 57 D7 20 36 */	slwi r23, r30, 4
/* 8144D6F0 | 48 00 01 7C */	b .L_8144D86C
.L_8144D6F4:
/* 8144D6F4 | 7D 3F BA 14 */	add r9, r31, r23
/* 8144D6F8 | 88 C9 00 20 */	lbz r6, 0x20(r9)
/* 8144D6FC | 2C 06 00 02 */	cmpwi r6, 0x2
/* 8144D700 | 41 82 00 B0 */	beq .L_8144D7B0
/* 8144D704 | 40 80 00 14 */	bge .L_8144D718
/* 8144D708 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144D70C | 41 82 00 1C */	beq .L_8144D728
/* 8144D710 | 40 80 00 50 */	bge .L_8144D760
/* 8144D714 | 48 00 00 F0 */	b .L_8144D804
.L_8144D718:
/* 8144D718 | 2C 06 00 04 */	cmpwi r6, 0x4
/* 8144D71C | 41 82 00 C0 */	beq .L_8144D7DC
/* 8144D720 | 40 80 00 E4 */	bge .L_8144D804
/* 8144D724 | 48 00 00 0C */	b .L_8144D730
.L_8144D728:
/* 8144D728 | 3A A0 00 00 */	li r21, 0x0
/* 8144D72C | 48 00 01 04 */	b .L_8144D830
.L_8144D730:
/* 8144D730 | 80 89 00 18 */	lwz r4, 0x18(r9)
/* 8144D734 | 82 A4 00 04 */	lwz r21, 0x4(r4)
/* 8144D738 | 7C 1C AA 14 */	add r0, r28, r21
/* 8144D73C | 7C 00 D8 40 */	cmplw r0, r27
/* 8144D740 | 41 81 01 80 */	bgt .L_8144D8C0
/* 8144D744 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 8144D748 | 7E A5 AB 78 */	mr r5, r21
/* 8144D74C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144D750 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8144D754 | 7C 60 E2 14 */	add r3, r0, r28
/* 8144D758 | 4B EE 2A D9 */	bl memcpy
/* 8144D75C | 48 00 00 D4 */	b .L_8144D830
.L_8144D760:
/* 8144D760 | 38 1C 00 80 */	addi r0, r28, 0x80
/* 8144D764 | 7C 00 D8 40 */	cmplw r0, r27
/* 8144D768 | 41 81 01 58 */	bgt .L_8144D8C0
/* 8144D76C | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 8144D770 | 38 80 00 40 */	li r4, 0x40
/* 8144D774 | 80 E9 00 18 */	lwz r7, 0x18(r9)
/* 8144D778 | 38 AD 95 51 */	li r5, lbl_81697591@sda21
/* 8144D77C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8144D780 | 81 09 00 1C */	lwz r8, 0x1c(r9)
/* 8144D784 | 7E C0 E2 14 */	add r22, r0, r28
/* 8144D788 | 7E C3 B3 78 */	mr r3, r22
/* 8144D78C | 4C C6 31 82 */	crclr cr1eq
/* 8144D790 | 48 1B 32 19 */	bl snprintf
/* 8144D794 | 7C 75 1B 78 */	mr r21, r3
/* 8144D798 | 7E C3 B3 78 */	mr r3, r22
/* 8144D79C | 7E C4 B3 78 */	mr r4, r22
/* 8144D7A0 | 7E A5 AB 78 */	mr r5, r21
/* 8144D7A4 | 4B FF D8 B5 */	bl VmStrToU16FromU8
/* 8144D7A8 | 56 B5 08 3C */	slwi r21, r21, 1
/* 8144D7AC | 48 00 00 84 */	b .L_8144D830
.L_8144D7B0:
/* 8144D7B0 | 38 1C 00 80 */	addi r0, r28, 0x80
/* 8144D7B4 | 7C 00 D8 40 */	cmplw r0, r27
/* 8144D7B8 | 41 81 01 08 */	bgt .L_8144D8C0
/* 8144D7BC | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 8144D7C0 | 38 80 00 80 */	li r4, 0x80
/* 8144D7C4 | C8 29 00 18 */	lfd f1, 0x18(r9)
/* 8144D7C8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8144D7CC | 7C 60 E2 14 */	add r3, r0, r28
/* 8144D7D0 | 4B FF DE 5D */	bl VmToStrFromIntCommon
/* 8144D7D4 | 7C 75 1B 78 */	mr r21, r3
/* 8144D7D8 | 48 00 00 58 */	b .L_8144D830
.L_8144D7DC:
/* 8144D7DC | 7F 03 C3 78 */	mr r3, r24
/* 8144D7E0 | 7F 25 CB 78 */	mr r5, r25
/* 8144D7E4 | 7F 46 D3 78 */	mr r6, r26
/* 8144D7E8 | 7F 67 DB 78 */	mr r7, r27
/* 8144D7EC | 7F 88 E3 78 */	mr r8, r28
/* 8144D7F0 | 38 89 00 18 */	addi r4, r9, 0x18
/* 8144D7F4 | 3A A0 00 00 */	li r21, 0x0
/* 8144D7F8 | 4B FF FE B5 */	bl VmArrayJoinSub
/* 8144D7FC | 7C 7C 1B 78 */	mr r28, r3
/* 8144D800 | 48 00 00 30 */	b .L_8144D830
.L_8144D804:
/* 8144D804 | 80 0D AD 18 */	lwz r0, CHANSVmDebugVerboseMode@sda21(r0)
/* 8144D808 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144D80C | 41 82 00 B4 */	beq .L_8144D8C0
/* 8144D810 | 3C 60 81 67 */	lis r3, lbl_81669B2D@ha
/* 8144D814 | 3C 80 81 67 */	lis r4, lbl_81669B4B@ha
/* 8144D818 | 38 A0 01 85 */	li r5, 0x185
/* 8144D81C | 38 63 9B 2D */	addi r3, r3, lbl_81669B2D@l
/* 8144D820 | 38 84 9B 4B */	addi r4, r4, lbl_81669B4B@l
/* 8144D824 | 4C C6 31 82 */	crclr cr1eq
/* 8144D828 | 4B FF CD 85 */	bl CHANSVmDebugPrintf
/* 8144D82C | 48 00 00 94 */	b .L_8144D8C0
.L_8144D830:
/* 8144D830 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8144D834 | 7F 9C AA 14 */	add r28, r28, r21
/* 8144D838 | 41 82 00 2C */	beq .L_8144D864
/* 8144D83C | 7C 1C D2 14 */	add r0, r28, r26
/* 8144D840 | 7C 00 D8 40 */	cmplw r0, r27
/* 8144D844 | 41 81 00 7C */	bgt .L_8144D8C0
/* 8144D848 | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 8144D84C | 7F 24 CB 78 */	mr r4, r25
/* 8144D850 | 7F 45 D3 78 */	mr r5, r26
/* 8144D854 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8144D858 | 7C 60 E2 14 */	add r3, r0, r28
/* 8144D85C | 4B EE 29 D5 */	bl memcpy
/* 8144D860 | 7F 9C D2 14 */	add r28, r28, r26
.L_8144D864:
/* 8144D864 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8144D868 | 3A F7 00 10 */	addi r23, r23, 0x10
.L_8144D86C:
/* 8144D86C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8144D870 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8144D874 | 7C 03 02 14 */	add r0, r3, r0
/* 8144D878 | 7C 1E 00 40 */	cmplw r30, r0
/* 8144D87C | 41 80 FE 78 */	blt .L_8144D6F4
/* 8144D880 | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_8144D884:
/* 8144D884 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144D888 | 40 82 FE 60 */	bne .L_8144D6E8
/* 8144D88C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8144D890 | 41 82 00 28 */	beq .L_8144D8B8
/* 8144D894 | 7C 1D E0 40 */	cmplw r29, r28
/* 8144D898 | 40 80 00 20 */	bge .L_8144D8B8
/* 8144D89C | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 8144D8A0 | 7F 9A E0 50 */	subf r28, r26, r28
/* 8144D8A4 | 7F 45 D3 78 */	mr r5, r26
/* 8144D8A8 | 38 80 00 00 */	li r4, 0x0
/* 8144D8AC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8144D8B0 | 7C 60 E2 14 */	add r3, r0, r28
/* 8144D8B4 | 4B EE 2A 81 */	bl memset
.L_8144D8B8:
/* 8144D8B8 | 7F 83 E3 78 */	mr r3, r28
/* 8144D8BC | 48 00 00 08 */	b .L_8144D8C4
.L_8144D8C0:
/* 8144D8C0 | 38 60 00 00 */	li r3, 0x0
.L_8144D8C4:
/* 8144D8C4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8144D8C8 | 48 1A BC 2D */	bl _restgpr_21
/* 8144D8CC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8144D8D0 | 7C 08 03 A6 */	mtlr r0
/* 8144D8D4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8144D8D8 | 4E 80 00 20 */	blr
.endfn VmArrayJoinSub

# .text:0x3330 | 0x8144D8DC | size: 0xB4
.fn CHANSVm_8144D8DC, global
/* 8144D8DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144D8E0 | 7C 08 02 A6 */	mflr r0
/* 8144D8E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144D8E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D8EC | 48 1A BB D1 */	bl _savegpr_26
/* 8144D8F0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144D8F4 | 7C 7A 1B 78 */	mr r26, r3
/* 8144D8F8 | 7C 9F 23 78 */	mr r31, r4
/* 8144D8FC | 7C BB 2B 78 */	mr r27, r5
/* 8144D900 | 7C DC 33 78 */	mr r28, r6
/* 8144D904 | 7C FD 3B 78 */	mr r29, r7
/* 8144D908 | 40 82 00 10 */	bne .L_8144D918
/* 8144D90C | 3C 60 81 61 */	lis r3, lbl_81616CB8@ha
/* 8144D910 | 3B A0 00 02 */	li r29, 0x2
/* 8144D914 | 83 83 6C B8 */	lwz r28, lbl_81616CB8@l(r3)
.L_8144D918:
/* 8144D918 | 7F 63 DB 78 */	mr r3, r27
/* 8144D91C | 7F A4 EB 78 */	mr r4, r29
/* 8144D920 | 4B FF FC 81 */	bl CHANSVm_8144D5A0
/* 8144D924 | 7C 7E 1B 78 */	mr r30, r3
/* 8144D928 | 7F 43 D3 78 */	mr r3, r26
/* 8144D92C | 7F E5 FB 78 */	mr r5, r31
/* 8144D930 | 38 80 00 00 */	li r4, 0x0
/* 8144D934 | 7F C7 F3 78 */	mr r7, r30
/* 8144D938 | 38 C0 00 03 */	li r6, 0x3
/* 8144D93C | 4B FF D4 99 */	bl CHANSVmNewObject
/* 8144D940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D944 | 7C 7F 1B 78 */	mr r31, r3
/* 8144D948 | 41 82 00 2C */	beq .L_8144D974
/* 8144D94C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144D950 | 41 82 00 24 */	beq .L_8144D974
/* 8144D954 | 7F 64 DB 78 */	mr r4, r27
/* 8144D958 | 7F 85 E3 78 */	mr r5, r28
/* 8144D95C | 7F A6 EB 78 */	mr r6, r29
/* 8144D960 | 7F C7 F3 78 */	mr r7, r30
/* 8144D964 | 39 00 00 00 */	li r8, 0x0
/* 8144D968 | 4B FF FD 45 */	bl VmArrayJoinSub
/* 8144D96C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8144D970 | 90 64 00 04 */	stw r3, 0x4(r4)
.L_8144D974:
/* 8144D974 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D978 | 7F E3 FB 78 */	mr r3, r31
/* 8144D97C | 48 1A BB 8D */	bl _restgpr_26
/* 8144D980 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144D984 | 7C 08 03 A6 */	mtlr r0
/* 8144D988 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144D98C | 4E 80 00 20 */	blr
.endfn CHANSVm_8144D8DC

# .text:0x33E4 | 0x8144D990 | size: 0x9C
.fn VmMethod_join, global
/* 8144D990 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144D994 | 7C 08 02 A6 */	mflr r0
/* 8144D998 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144D99C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144D9A0 | 48 1A BB 29 */	bl _savegpr_29
/* 8144D9A4 | 7C 9E 23 78 */	mr r30, r4
/* 8144D9A8 | 7C 7D 1B 78 */	mr r29, r3
/* 8144D9AC | 7C BF 2B 78 */	mr r31, r5
/* 8144D9B0 | 38 80 00 00 */	li r4, 0x0
/* 8144D9B4 | 4B FF EC DD */	bl CHANSVmGetArg
/* 8144D9B8 | 7C 65 1B 78 */	mr r5, r3
/* 8144D9BC | 7F A3 EB 78 */	mr r3, r29
/* 8144D9C0 | 38 80 00 03 */	li r4, 0x3
/* 8144D9C4 | 4B FF DF 19 */	bl CHANSVmConvertObjectType
/* 8144D9C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144D9CC | 7C 66 1B 78 */	mr r6, r3
/* 8144D9D0 | 41 82 00 10 */	beq .L_8144D9E0
/* 8144D9D4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144D9D8 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 8144D9DC | 48 00 00 08 */	b .L_8144D9E4
.L_8144D9E0:
/* 8144D9E0 | 38 E0 00 00 */	li r7, 0x0
.L_8144D9E4:
/* 8144D9E4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144D9E8 | 7F A3 EB 78 */	mr r3, r29
/* 8144D9EC | 7F E4 FB 78 */	mr r4, r31
/* 8144D9F0 | 7F C5 F3 78 */	mr r5, r30
/* 8144D9F4 | 41 82 00 10 */	beq .L_8144DA04
/* 8144D9F8 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 8144D9FC | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 8144DA00 | 48 00 00 08 */	b .L_8144DA08
.L_8144DA04:
/* 8144DA04 | 38 C0 00 00 */	li r6, 0x0
.L_8144DA08:
/* 8144DA08 | 4B FF FE D5 */	bl CHANSVm_8144D8DC
/* 8144DA0C | 30 03 FF FF */	subic r0, r3, 0x1
/* 8144DA10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144DA14 | 7C 60 19 10 */	subfe r3, r0, r3
/* 8144DA18 | 48 1A BA FD */	bl _restgpr_29
/* 8144DA1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144DA20 | 7C 08 03 A6 */	mtlr r0
/* 8144DA24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144DA28 | 4E 80 00 20 */	blr
.endfn VmMethod_join

# .text:0x3480 | 0x8144DA2C | size: 0x214
.fn VmMethod_slice, global
/* 8144DA2C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144DA30 | 7C 08 02 A6 */	mflr r0
/* 8144DA34 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8144DA38 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144DA3C | 48 1A BA 81 */	bl _savegpr_26
/* 8144DA40 | 7C 9D 23 78 */	mr r29, r4
/* 8144DA44 | 7C 7C 1B 78 */	mr r28, r3
/* 8144DA48 | 7C BE 2B 78 */	mr r30, r5
/* 8144DA4C | 38 80 00 00 */	li r4, 0x0
/* 8144DA50 | 4B FF EC 41 */	bl CHANSVmGetArg
/* 8144DA54 | 7C 65 1B 78 */	mr r5, r3
/* 8144DA58 | 7F 83 E3 78 */	mr r3, r28
/* 8144DA5C | 38 80 00 01 */	li r4, 0x1
/* 8144DA60 | 4B FF DE 7D */	bl CHANSVmConvertObjectType
/* 8144DA64 | 7C 7A 1B 78 */	mr r26, r3
/* 8144DA68 | 7F 83 E3 78 */	mr r3, r28
/* 8144DA6C | 38 80 00 01 */	li r4, 0x1
/* 8144DA70 | 4B FF EC 21 */	bl CHANSVmGetArg
/* 8144DA74 | 7C 65 1B 78 */	mr r5, r3
/* 8144DA78 | 7F 83 E3 78 */	mr r3, r28
/* 8144DA7C | 38 80 00 01 */	li r4, 0x1
/* 8144DA80 | 4B FF DE 5D */	bl CHANSVmConvertObjectType
/* 8144DA84 | 7C 7B 1B 78 */	mr r27, r3
/* 8144DA88 | 7F A3 EB 78 */	mr r3, r29
/* 8144DA8C | 3B E0 00 00 */	li r31, 0x0
/* 8144DA90 | 4B FF F7 89 */	bl CHANSVm_8144D218
/* 8144DA94 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8144DA98 | 7C 69 1B 78 */	mr r9, r3
/* 8144DA9C | 41 82 00 70 */	beq .L_8144DB0C
/* 8144DAA0 | 80 FA 00 00 */	lwz r7, 0x0(r26)
/* 8144DAA4 | 38 C0 00 00 */	li r6, 0x0
/* 8144DAA8 | 83 FA 00 04 */	lwz r31, 0x4(r26)
/* 8144DAAC | 6C C5 80 00 */	xoris r5, r6, 0x8000
/* 8144DAB0 | 6C E4 80 00 */	xoris r4, r7, 0x8000
/* 8144DAB4 | 7C 1F 18 10 */	subfc r0, r31, r3
/* 8144DAB8 | 7C 84 29 10 */	subfe r4, r4, r5
/* 8144DABC | 7C 85 29 10 */	subfe r4, r5, r5
/* 8144DAC0 | 7C 84 00 D1 */	neg. r4, r4
/* 8144DAC4 | 41 82 00 0C */	beq .L_8144DAD0
/* 8144DAC8 | 7D 3F 4B 78 */	mr r31, r9
/* 8144DACC | 48 00 00 40 */	b .L_8144DB0C
.L_8144DAD0:
/* 8144DAD0 | 6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8144DAD4 | 7C 86 F8 10 */	subfc r4, r6, r31
/* 8144DAD8 | 7C 85 01 10 */	subfe r4, r5, r0
/* 8144DADC | 7C 80 01 10 */	subfe r4, r0, r0
/* 8144DAE0 | 7C 84 00 D1 */	neg. r4, r4
/* 8144DAE4 | 41 82 00 28 */	beq .L_8144DB0C
/* 8144DAE8 | 7F FF 18 14 */	addc r31, r31, r3
/* 8144DAEC | 7C E7 31 14 */	adde r7, r7, r6
/* 8144DAF0 | 6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8144DAF4 | 7C 86 F8 10 */	subfc r4, r6, r31
/* 8144DAF8 | 7C 85 01 10 */	subfe r4, r5, r0
/* 8144DAFC | 7C 80 01 10 */	subfe r4, r0, r0
/* 8144DB00 | 7C 84 00 D1 */	neg. r4, r4
/* 8144DB04 | 41 82 00 08 */	beq .L_8144DB0C
/* 8144DB08 | 3B E0 00 00 */	li r31, 0x0
.L_8144DB0C:
/* 8144DB0C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8144DB10 | 41 82 00 74 */	beq .L_8144DB84
/* 8144DB14 | 80 FB 00 00 */	lwz r7, 0x0(r27)
/* 8144DB18 | 38 C0 00 00 */	li r6, 0x0
/* 8144DB1C | 81 1B 00 04 */	lwz r8, 0x4(r27)
/* 8144DB20 | 6C C5 80 00 */	xoris r5, r6, 0x8000
/* 8144DB24 | 6C E4 80 00 */	xoris r4, r7, 0x8000
/* 8144DB28 | 7C 08 18 10 */	subfc r0, r8, r3
/* 8144DB2C | 7C 84 29 10 */	subfe r4, r4, r5
/* 8144DB30 | 7C 85 29 10 */	subfe r4, r5, r5
/* 8144DB34 | 7C 84 00 D1 */	neg. r4, r4
/* 8144DB38 | 41 82 00 0C */	beq .L_8144DB44
/* 8144DB3C | 7D 28 4B 78 */	mr r8, r9
/* 8144DB40 | 48 00 00 40 */	b .L_8144DB80
.L_8144DB44:
/* 8144DB44 | 6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8144DB48 | 7C 86 40 10 */	subfc r4, r6, r8
/* 8144DB4C | 7C 85 01 10 */	subfe r4, r5, r0
/* 8144DB50 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8144DB54 | 7C 84 00 D1 */	neg. r4, r4
/* 8144DB58 | 41 82 00 28 */	beq .L_8144DB80
/* 8144DB5C | 7D 08 18 14 */	addc r8, r8, r3
/* 8144DB60 | 7C E7 31 14 */	adde r7, r7, r6
/* 8144DB64 | 6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8144DB68 | 7C 66 40 10 */	subfc r3, r6, r8
/* 8144DB6C | 7C 65 01 10 */	subfe r3, r5, r0
/* 8144DB70 | 7C 60 01 10 */	subfe r3, r0, r0
/* 8144DB74 | 7C 63 00 D1 */	neg. r3, r3
/* 8144DB78 | 41 82 00 08 */	beq .L_8144DB80
/* 8144DB7C | 39 00 00 00 */	li r8, 0x0
.L_8144DB80:
/* 8144DB80 | 7D 09 43 78 */	mr r9, r8
.L_8144DB84:
/* 8144DB84 | 7C 09 F8 10 */	subfc r0, r9, r31
/* 8144DB88 | 7F 83 E3 78 */	mr r3, r28
/* 8144DB8C | 7C 89 01 94 */	addze r4, r9
/* 8144DB90 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8144DB94 | 7C A4 48 50 */	subf r5, r4, r9
/* 8144DB98 | 7C 1F 48 50 */	subf r0, r31, r9
/* 8144DB9C | 7C 00 28 78 */	andc r0, r0, r5
/* 8144DBA0 | 7F C4 F3 78 */	mr r4, r30
/* 8144DBA4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8144DBA8 | 38 A0 00 01 */	li r5, 0x1
/* 8144DBAC | 48 00 00 95 */	bl CHANSVmNewArrayObject
/* 8144DBB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DBB4 | 41 82 00 70 */	beq .L_8144DC24
/* 8144DBB8 | 3B 60 00 00 */	li r27, 0x0
/* 8144DBBC | 48 00 00 54 */	b .L_8144DC10
.L_8144DBC0:
/* 8144DBC0 | 7F 83 E3 78 */	mr r3, r28
/* 8144DBC4 | 7F C4 F3 78 */	mr r4, r30
/* 8144DBC8 | 7F 65 DB 78 */	mr r5, r27
/* 8144DBCC | 4B FF F7 55 */	bl CHANSVmGetArrayElement
/* 8144DBD0 | 7C 7A 1B 78 */	mr r26, r3
/* 8144DBD4 | 7F 83 E3 78 */	mr r3, r28
/* 8144DBD8 | 7F A4 EB 78 */	mr r4, r29
/* 8144DBDC | 7C BF DA 14 */	add r5, r31, r27
/* 8144DBE0 | 4B FF F7 41 */	bl CHANSVmGetArrayElement
/* 8144DBE4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8144DBE8 | 7C 65 1B 78 */	mr r5, r3
/* 8144DBEC | 41 82 00 38 */	beq .L_8144DC24
/* 8144DBF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DBF4 | 41 82 00 30 */	beq .L_8144DC24
/* 8144DBF8 | 7F 83 E3 78 */	mr r3, r28
/* 8144DBFC | 7F 44 D3 78 */	mr r4, r26
/* 8144DC00 | 4B FF D2 99 */	bl CHANSVmCopyObject
/* 8144DC04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DC08 | 41 82 00 1C */	beq .L_8144DC24
/* 8144DC0C | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_8144DC10:
/* 8144DC10 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8144DC14 | 7C 1B 00 40 */	cmplw r27, r0
/* 8144DC18 | 41 80 FF A8 */	blt .L_8144DBC0
/* 8144DC1C | 38 60 00 01 */	li r3, 0x1
/* 8144DC20 | 48 00 00 08 */	b .L_8144DC28
.L_8144DC24:
/* 8144DC24 | 38 60 00 00 */	li r3, 0x0
.L_8144DC28:
/* 8144DC28 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144DC2C | 48 1A B8 DD */	bl _restgpr_26
/* 8144DC30 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8144DC34 | 7C 08 03 A6 */	mtlr r0
/* 8144DC38 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144DC3C | 4E 80 00 20 */	blr
.endfn VmMethod_slice

# .text:0x3694 | 0x8144DC40 | size: 0x108
.fn CHANSVmNewArrayObject, global
/* 8144DC40 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144DC44 | 7C 08 02 A6 */	mflr r0
/* 8144DC48 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144DC4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144DC50 | 48 1A B8 71 */	bl _savegpr_27
/* 8144DC54 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144DC58 | 7C 7B 1B 78 */	mr r27, r3
/* 8144DC5C | 7C 9C 23 78 */	mr r28, r4
/* 8144DC60 | 7C BD 2B 78 */	mr r29, r5
/* 8144DC64 | 7C DE 33 78 */	mr r30, r6
/* 8144DC68 | 41 82 00 C4 */	beq .L_8144DD2C
/* 8144DC6C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8144DC70 | 41 82 00 BC */	beq .L_8144DD2C
/* 8144DC74 | 7F 85 E3 78 */	mr r5, r28
/* 8144DC78 | 38 80 00 00 */	li r4, 0x0
/* 8144DC7C | 38 C0 00 04 */	li r6, 0x4
/* 8144DC80 | 38 E0 00 18 */	li r7, 0x18
/* 8144DC84 | 4B FF D1 51 */	bl CHANSVmNewObject
/* 8144DC88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DC8C | 7C 7C 1B 78 */	mr r28, r3
/* 8144DC90 | 41 82 00 9C */	beq .L_8144DD2C
/* 8144DC94 | 80 1B 00 40 */	lwz r0, 0x40(r27)
/* 8144DC98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144DC9C | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8144DCA0 | 41 82 00 8C */	beq .L_8144DD2C
/* 8144DCA4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8144DCA8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144DCAC | 41 82 00 20 */	beq .L_8144DCCC
/* 8144DCB0 | 7F 63 DB 78 */	mr r3, r27
/* 8144DCB4 | 7F 84 E3 78 */	mr r4, r28
/* 8144DCB8 | 38 C0 00 00 */	li r6, 0x0
/* 8144DCBC | 38 E0 00 00 */	li r7, 0x0
/* 8144DCC0 | 4B FF F3 D5 */	bl CHANSVm_8144D094
/* 8144DCC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DCC8 | 41 82 00 64 */	beq .L_8144DD2C
.L_8144DCCC:
/* 8144DCCC | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8144DCD0 | 40 81 00 54 */	ble .L_8144DD24
/* 8144DCD4 | 3B E0 00 00 */	li r31, 0x0
/* 8144DCD8 | 48 00 00 40 */	b .L_8144DD18
.L_8144DCDC:
/* 8144DCDC | 7F 63 DB 78 */	mr r3, r27
/* 8144DCE0 | 7F 84 E3 78 */	mr r4, r28
/* 8144DCE4 | 7F E5 FB 78 */	mr r5, r31
/* 8144DCE8 | 38 C0 00 00 */	li r6, 0x0
/* 8144DCEC | 4B FF F5 75 */	bl CHANSVm_8144D260
/* 8144DCF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DCF4 | 7C 64 1B 78 */	mr r4, r3
/* 8144DCF8 | 41 82 00 34 */	beq .L_8144DD2C
/* 8144DCFC | 7F 63 DB 78 */	mr r3, r27
/* 8144DD00 | 38 BD FF FF */	subi r5, r29, 0x1
/* 8144DD04 | 38 DE 00 04 */	addi r6, r30, 0x4
/* 8144DD08 | 4B FF FF 39 */	bl CHANSVmNewArrayObject
/* 8144DD0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DD10 | 41 82 00 1C */	beq .L_8144DD2C
/* 8144DD14 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8144DD18:
/* 8144DD18 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8144DD1C | 7C 1F 00 40 */	cmplw r31, r0
/* 8144DD20 | 41 80 FF BC */	blt .L_8144DCDC
.L_8144DD24:
/* 8144DD24 | 7F 83 E3 78 */	mr r3, r28
/* 8144DD28 | 48 00 00 08 */	b .L_8144DD30
.L_8144DD2C:
/* 8144DD2C | 38 60 00 00 */	li r3, 0x0
.L_8144DD30:
/* 8144DD30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144DD34 | 48 1A B7 D9 */	bl _restgpr_27
/* 8144DD38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144DD3C | 7C 08 03 A6 */	mtlr r0
/* 8144DD40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144DD44 | 4E 80 00 20 */	blr
.endfn CHANSVmNewArrayObject

# .text:0x379C | 0x8144DD48 | size: 0xD8
.fn VmMethod_new2d, global
/* 8144DD48 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8144DD4C | 7C 08 02 A6 */	mflr r0
/* 8144DD50 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8144DD54 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8144DD58 | 48 1A B7 61 */	bl _savegpr_25
/* 8144DD5C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144DD60 | 7C 79 1B 78 */	mr r25, r3
/* 8144DD64 | 7C BA 2B 78 */	mr r26, r5
/* 8144DD68 | 41 82 00 9C */	beq .L_8144DE04
/* 8144DD6C | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 8144DD70 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8144DD74 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8144DD78 | 40 82 00 8C */	bne .L_8144DE04
/* 8144DD7C | 3B 60 00 00 */	li r27, 0x0
/* 8144DD80 | 3B C1 00 08 */	addi r30, r1, 0x8
/* 8144DD84 | 7F 7D DB 78 */	mr r29, r27
/* 8144DD88 | 3B E0 00 00 */	li r31, 0x0
/* 8144DD8C | 3B 80 FF FE */	li r28, -0x2
.L_8144DD90:
/* 8144DD90 | 7F 23 CB 78 */	mr r3, r25
/* 8144DD94 | 7F 64 DB 78 */	mr r4, r27
/* 8144DD98 | 4B FF E8 F9 */	bl CHANSVmGetArg
/* 8144DD9C | 7C 65 1B 78 */	mr r5, r3
/* 8144DDA0 | 7F 23 CB 78 */	mr r3, r25
/* 8144DDA4 | 38 80 00 01 */	li r4, 0x1
/* 8144DDA8 | 4B FF DB 35 */	bl CHANSVmConvertObjectType
/* 8144DDAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DDB0 | 41 82 00 54 */	beq .L_8144DE04
/* 8144DDB4 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8144DDB8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144DDBC | 7C 04 E0 10 */	subfc r0, r4, r28
/* 8144DDC0 | 7C 03 E9 10 */	subfe r0, r3, r29
/* 8144DDC4 | 7C 1C E1 10 */	subfe r0, r28, r28
/* 8144DDC8 | 7C 00 00 D1 */	neg. r0, r0
/* 8144DDCC | 40 82 00 38 */	bne .L_8144DE04
/* 8144DDD0 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8144DDD4 | 7C 9E F9 2E */	stwx r4, r30, r31
/* 8144DDD8 | 28 1B 00 02 */	cmplwi r27, 0x2
/* 8144DDDC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8144DDE0 | 41 80 FF B0 */	blt .L_8144DD90
/* 8144DDE4 | 7F 23 CB 78 */	mr r3, r25
/* 8144DDE8 | 7F 44 D3 78 */	mr r4, r26
/* 8144DDEC | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8144DDF0 | 38 A0 00 02 */	li r5, 0x2
/* 8144DDF4 | 4B FF FE 4D */	bl CHANSVmNewArrayObject
/* 8144DDF8 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8144DDFC | 7C 60 19 10 */	subfe r3, r0, r3
/* 8144DE00 | 48 00 00 08 */	b .L_8144DE08
.L_8144DE04:
/* 8144DE04 | 38 60 00 00 */	li r3, 0x0
.L_8144DE08:
/* 8144DE08 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8144DE0C | 48 1A B6 F9 */	bl _restgpr_25
/* 8144DE10 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8144DE14 | 7C 08 03 A6 */	mtlr r0
/* 8144DE18 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8144DE1C | 4E 80 00 20 */	blr
.endfn VmMethod_new2d

# .text:0x3874 | 0x8144DE20 | size: 0xD0
.fn VmMethod_shift, global
/* 8144DE20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144DE24 | 7C 08 02 A6 */	mflr r0
/* 8144DE28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144DE2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144DE30 | 48 1A B6 99 */	bl _savegpr_29
/* 8144DE34 | 7C 7D 1B 78 */	mr r29, r3
/* 8144DE38 | 7C 83 23 78 */	mr r3, r4
/* 8144DE3C | 7C BE 2B 78 */	mr r30, r5
/* 8144DE40 | 4B FF F3 A9 */	bl VmArrayJoinEstimateStrSize
/* 8144DE44 | 7C 7F 1B 78 */	mr r31, r3
/* 8144DE48 | 48 00 00 08 */	b .L_8144DE50
.L_8144DE4C:
/* 8144DE4C | 83 FF 00 00 */	lwz r31, 0x0(r31)
.L_8144DE50:
/* 8144DE50 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144DE54 | 41 82 00 10 */	beq .L_8144DE64
/* 8144DE58 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8144DE5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144DE60 | 41 82 FF EC */	beq .L_8144DE4C
.L_8144DE64:
/* 8144DE64 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144DE68 | 41 82 00 64 */	beq .L_8144DECC
/* 8144DE6C | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8144DE70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144DE74 | 41 82 00 58 */	beq .L_8144DECC
/* 8144DE78 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8144DE7C | 7F C4 F3 78 */	mr r4, r30
/* 8144DE80 | 7F A3 EB 78 */	mr r3, r29
/* 8144DE84 | 54 00 20 36 */	slwi r0, r0, 4
/* 8144DE88 | 7C BF 02 14 */	add r5, r31, r0
/* 8144DE8C | 3B C5 00 18 */	addi r30, r5, 0x18
/* 8144DE90 | 7F C5 F3 78 */	mr r5, r30
/* 8144DE94 | 4B FF D0 05 */	bl CHANSVmCopyObject
/* 8144DE98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DE9C | 41 82 00 38 */	beq .L_8144DED4
/* 8144DEA0 | 7F A3 EB 78 */	mr r3, r29
/* 8144DEA4 | 7F C4 F3 78 */	mr r4, r30
/* 8144DEA8 | 4B FF CC AD */	bl CHANSVmDeleteObject
/* 8144DEAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DEB0 | 40 82 00 24 */	bne .L_8144DED4
/* 8144DEB4 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8144DEB8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8144DEBC | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8144DEC0 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8144DEC4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8144DEC8 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_8144DECC:
/* 8144DECC | 38 60 00 01 */	li r3, 0x1
/* 8144DED0 | 48 00 00 08 */	b .L_8144DED8
.L_8144DED4:
/* 8144DED4 | 38 60 00 00 */	li r3, 0x0
.L_8144DED8:
/* 8144DED8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144DEDC | 48 1A B6 39 */	bl _restgpr_29
/* 8144DEE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144DEE4 | 7C 08 03 A6 */	mtlr r0
/* 8144DEE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144DEEC | 4E 80 00 20 */	blr
.endfn VmMethod_shift

# .text:0x3944 | 0x8144DEF0 | size: 0x80
.fn VmMethod_unshift, global
/* 8144DEF0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144DEF4 | 7C 08 02 A6 */	mflr r0
/* 8144DEF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144DEFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144DF00 | 48 1A B5 C9 */	bl _savegpr_29
/* 8144DF04 | 80 C3 00 60 */	lwz r6, 0x60(r3)
/* 8144DF08 | 7C BF 2B 78 */	mr r31, r5
/* 8144DF0C | 7C 7D 1B 78 */	mr r29, r3
/* 8144DF10 | 7C 9E 23 78 */	mr r30, r4
/* 8144DF14 | A0 A6 00 14 */	lhz r5, 0x14(r6)
/* 8144DF18 | 38 C0 00 00 */	li r6, 0x0
/* 8144DF1C | 38 E0 00 01 */	li r7, 0x1
/* 8144DF20 | 4B FF F1 75 */	bl CHANSVm_8144D094
/* 8144DF24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DF28 | 41 82 00 2C */	beq .L_8144DF54
/* 8144DF2C | 7F C3 F3 78 */	mr r3, r30
/* 8144DF30 | 4B FF F2 E9 */	bl CHANSVm_8144D218
/* 8144DF34 | 7C 66 1B 78 */	mr r6, r3
/* 8144DF38 | 7F A3 EB 78 */	mr r3, r29
/* 8144DF3C | 7F E4 FB 78 */	mr r4, r31
/* 8144DF40 | 38 A0 00 00 */	li r5, 0x0
/* 8144DF44 | 4B FF DA 55 */	bl CHANSVmSetInteger
/* 8144DF48 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144DF4C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144DF50 | 48 00 00 08 */	b .L_8144DF58
.L_8144DF54:
/* 8144DF54 | 38 60 00 00 */	li r3, 0x0
.L_8144DF58:
/* 8144DF58 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144DF5C | 48 1A B5 B9 */	bl _restgpr_29
/* 8144DF60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144DF64 | 7C 08 03 A6 */	mtlr r0
/* 8144DF68 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144DF6C | 4E 80 00 20 */	blr
.endfn VmMethod_unshift

# .text:0x39C4 | 0x8144DF70 | size: 0x80
.fn VmMethod_push, global
/* 8144DF70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144DF74 | 7C 08 02 A6 */	mflr r0
/* 8144DF78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144DF7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144DF80 | 48 1A B5 49 */	bl _savegpr_29
/* 8144DF84 | 80 C3 00 60 */	lwz r6, 0x60(r3)
/* 8144DF88 | 7C BF 2B 78 */	mr r31, r5
/* 8144DF8C | 7C 7D 1B 78 */	mr r29, r3
/* 8144DF90 | 7C 9E 23 78 */	mr r30, r4
/* 8144DF94 | A0 C6 00 14 */	lhz r6, 0x14(r6)
/* 8144DF98 | 38 A0 00 00 */	li r5, 0x0
/* 8144DF9C | 38 E0 00 01 */	li r7, 0x1
/* 8144DFA0 | 4B FF F0 F5 */	bl CHANSVm_8144D094
/* 8144DFA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144DFA8 | 41 82 00 2C */	beq .L_8144DFD4
/* 8144DFAC | 7F C3 F3 78 */	mr r3, r30
/* 8144DFB0 | 4B FF F2 69 */	bl CHANSVm_8144D218
/* 8144DFB4 | 7C 66 1B 78 */	mr r6, r3
/* 8144DFB8 | 7F A3 EB 78 */	mr r3, r29
/* 8144DFBC | 7F E4 FB 78 */	mr r4, r31
/* 8144DFC0 | 38 A0 00 00 */	li r5, 0x0
/* 8144DFC4 | 4B FF D9 D5 */	bl CHANSVmSetInteger
/* 8144DFC8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144DFCC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144DFD0 | 48 00 00 08 */	b .L_8144DFD8
.L_8144DFD4:
/* 8144DFD4 | 38 60 00 00 */	li r3, 0x0
.L_8144DFD8:
/* 8144DFD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144DFDC | 48 1A B5 39 */	bl _restgpr_29
/* 8144DFE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144DFE4 | 7C 08 03 A6 */	mtlr r0
/* 8144DFE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144DFEC | 4E 80 00 20 */	blr
.endfn VmMethod_push

# .text:0x3A44 | 0x8144DFF0 | size: 0xE8
.fn VmMethod_pop, global
/* 8144DFF0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144DFF4 | 7C 08 02 A6 */	mflr r0
/* 8144DFF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144DFFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144E000 | 48 1A B4 C5 */	bl _savegpr_28
/* 8144E004 | 7C 7C 1B 78 */	mr r28, r3
/* 8144E008 | 7C 83 23 78 */	mr r3, r4
/* 8144E00C | 7C BD 2B 78 */	mr r29, r5
/* 8144E010 | 4B FF F1 D9 */	bl VmArrayJoinEstimateStrSize
/* 8144E014 | 3B E0 00 00 */	li r31, 0x0
/* 8144E018 | 48 00 00 18 */	b .L_8144E030
.L_8144E01C:
/* 8144E01C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8144E020 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144E024 | 41 82 00 08 */	beq .L_8144E02C
/* 8144E028 | 7C 7F 1B 78 */	mr r31, r3
.L_8144E02C:
/* 8144E02C | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8144E030:
/* 8144E030 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E034 | 40 82 FF E8 */	bne .L_8144E01C
/* 8144E038 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8144E03C | 41 82 00 78 */	beq .L_8144E0B4
/* 8144E040 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8144E044 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8144E048 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8144E04C | 7C 63 02 14 */	add r3, r3, r0
/* 8144E050 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8144E054 | 54 00 20 36 */	slwi r0, r0, 4
/* 8144E058 | 7C 7F 02 14 */	add r3, r31, r0
/* 8144E05C | 3B C3 00 18 */	addi r30, r3, 0x18
/* 8144E060 | 41 82 00 34 */	beq .L_8144E094
/* 8144E064 | 7F A3 EB 78 */	mr r3, r29
/* 8144E068 | 7F C4 F3 78 */	mr r4, r30
/* 8144E06C | 38 A0 00 10 */	li r5, 0x10
/* 8144E070 | 4B EE 21 C1 */	bl memcpy
/* 8144E074 | 88 1D 00 09 */	lbz r0, 0x9(r29)
/* 8144E078 | 7F C3 F3 78 */	mr r3, r30
/* 8144E07C | 38 80 00 00 */	li r4, 0x0
/* 8144E080 | 38 A0 00 10 */	li r5, 0x10
/* 8144E084 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 8144E088 | 98 1D 00 09 */	stb r0, 0x9(r29)
/* 8144E08C | 4B EE 22 A9 */	bl memset
/* 8144E090 | 48 00 00 18 */	b .L_8144E0A8
.L_8144E094:
/* 8144E094 | 7F 83 E3 78 */	mr r3, r28
/* 8144E098 | 7F C4 F3 78 */	mr r4, r30
/* 8144E09C | 4B FF CA B9 */	bl CHANSVmDeleteObject
/* 8144E0A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E0A4 | 40 82 00 18 */	bne .L_8144E0BC
.L_8144E0A8:
/* 8144E0A8 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8144E0AC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8144E0B0 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_8144E0B4:
/* 8144E0B4 | 38 60 00 01 */	li r3, 0x1
/* 8144E0B8 | 48 00 00 08 */	b .L_8144E0C0
.L_8144E0BC:
/* 8144E0BC | 38 60 00 00 */	li r3, 0x0
.L_8144E0C0:
/* 8144E0C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144E0C4 | 48 1A B4 4D */	bl _restgpr_28
/* 8144E0C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144E0CC | 7C 08 03 A6 */	mtlr r0
/* 8144E0D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144E0D4 | 4E 80 00 20 */	blr
.endfn VmMethod_pop

# .text:0x3B2C | 0x8144E0D8 | size: 0x58
.fn VmGetProp_length, global
/* 8144E0D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E0DC | 7C 08 02 A6 */	mflr r0
/* 8144E0E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E0E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144E0E8 | 7C BF 2B 78 */	mr r31, r5
/* 8144E0EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144E0F0 | 7C 7E 1B 78 */	mr r30, r3
/* 8144E0F4 | 7C 83 23 78 */	mr r3, r4
/* 8144E0F8 | 4B FF F1 21 */	bl CHANSVm_8144D218
/* 8144E0FC | 7C 66 1B 78 */	mr r6, r3
/* 8144E100 | 7F C3 F3 78 */	mr r3, r30
/* 8144E104 | 7F E4 FB 78 */	mr r4, r31
/* 8144E108 | 38 A0 00 00 */	li r5, 0x0
/* 8144E10C | 4B FF D8 8D */	bl CHANSVmSetInteger
/* 8144E110 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E114 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144E118 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E11C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144E120 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E124 | 7C 08 03 A6 */	mtlr r0
/* 8144E128 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E12C | 4E 80 00 20 */	blr
.endfn VmGetProp_length

# .text:0x3B84 | 0x8144E130 | size: 0xEC
.fn VmSetProp_length, global
/* 8144E130 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144E134 | 7C 08 02 A6 */	mflr r0
/* 8144E138 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144E13C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144E140 | 48 1A B3 81 */	bl _savegpr_27
/* 8144E144 | 7C 9C 23 78 */	mr r28, r4
/* 8144E148 | 7C 7B 1B 78 */	mr r27, r3
/* 8144E14C | 7F 83 E3 78 */	mr r3, r28
/* 8144E150 | 3B C0 00 00 */	li r30, 0x0
/* 8144E154 | 4B FF F0 C5 */	bl CHANSVm_8144D218
/* 8144E158 | 7C 7D 1B 78 */	mr r29, r3
/* 8144E15C | 7F 63 DB 78 */	mr r3, r27
/* 8144E160 | 38 80 00 00 */	li r4, 0x0
/* 8144E164 | 4B FF E5 2D */	bl CHANSVmGetArg
/* 8144E168 | 7C 65 1B 78 */	mr r5, r3
/* 8144E16C | 7F 63 DB 78 */	mr r3, r27
/* 8144E170 | 38 80 00 01 */	li r4, 0x1
/* 8144E174 | 4B FF D7 69 */	bl CHANSVmConvertObjectType
/* 8144E178 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E17C | 41 82 00 7C */	beq .L_8144E1F8
/* 8144E180 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8144E184 | 38 80 FF FE */	li r4, -0x2
/* 8144E188 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8144E18C | 38 60 00 00 */	li r3, 0x0
/* 8144E190 | 7C 1F 20 10 */	subfc r0, r31, r4
/* 8144E194 | 7C 05 19 10 */	subfe r0, r5, r3
/* 8144E198 | 7C 04 21 10 */	subfe r0, r4, r4
/* 8144E19C | 7C 00 00 D1 */	neg. r0, r0
/* 8144E1A0 | 40 82 00 58 */	bne .L_8144E1F8
/* 8144E1A4 | 7C 1F E8 40 */	cmplw r31, r29
/* 8144E1A8 | 40 80 00 2C */	bge .L_8144E1D4
.L_8144E1AC:
/* 8144E1AC | 7F 63 DB 78 */	mr r3, r27
/* 8144E1B0 | 7F 84 E3 78 */	mr r4, r28
/* 8144E1B4 | 38 A0 00 00 */	li r5, 0x0
/* 8144E1B8 | 4B FF FE 39 */	bl VmMethod_pop
/* 8144E1BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E1C0 | 41 82 00 40 */	beq .L_8144E200
/* 8144E1C4 | 3B BD FF FF */	subi r29, r29, 0x1
/* 8144E1C8 | 7C 1D F8 40 */	cmplw r29, r31
/* 8144E1CC | 41 81 FF E0 */	bgt .L_8144E1AC
/* 8144E1D0 | 48 00 00 24 */	b .L_8144E1F4
.L_8144E1D4:
/* 8144E1D4 | 40 81 00 20 */	ble .L_8144E1F4
/* 8144E1D8 | 7F 63 DB 78 */	mr r3, r27
/* 8144E1DC | 7F 84 E3 78 */	mr r4, r28
/* 8144E1E0 | 38 BF FF FF */	subi r5, r31, 0x1
/* 8144E1E4 | 38 C0 00 01 */	li r6, 0x1
/* 8144E1E8 | 4B FF F0 79 */	bl CHANSVm_8144D260
/* 8144E1EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E1F0 | 41 82 00 10 */	beq .L_8144E200
.L_8144E1F4:
/* 8144E1F4 | 3B C0 00 01 */	li r30, 0x1
.L_8144E1F8:
/* 8144E1F8 | 7F C3 F3 78 */	mr r3, r30
/* 8144E1FC | 48 00 00 08 */	b .L_8144E204
.L_8144E200:
/* 8144E200 | 38 60 00 00 */	li r3, 0x0
.L_8144E204:
/* 8144E204 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144E208 | 48 1A B3 05 */	bl _restgpr_27
/* 8144E20C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144E210 | 7C 08 03 A6 */	mtlr r0
/* 8144E214 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144E218 | 4E 80 00 20 */	blr
.endfn VmSetProp_length

# .text:0x3C70 | 0x8144E21C | size: 0x298
.fn CHANSVm_8144E21C, global
/* 8144E21C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8144E220 | 7C 08 02 A6 */	mflr r0
/* 8144E224 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8144E228 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8144E22C | 48 1A B2 91 */	bl _savegpr_26
/* 8144E230 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144E234 | 7C 7A 1B 78 */	mr r26, r3
/* 8144E238 | 7C 9F 23 78 */	mr r31, r4
/* 8144E23C | 41 82 02 5C */	beq .L_8144E498
/* 8144E240 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 8144E244 | A3 84 00 14 */	lhz r28, 0x14(r4)
/* 8144E248 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8144E24C | 41 82 01 F4 */	beq .L_8144E440
/* 8144E250 | 28 1C 00 01 */	cmplwi r28, 0x1
/* 8144E254 | 40 82 00 B0 */	bne .L_8144E304
/* 8144E258 | 38 80 00 00 */	li r4, 0x0
/* 8144E25C | 4B FF E4 35 */	bl CHANSVmGetArg
/* 8144E260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E264 | 41 82 00 70 */	beq .L_8144E2D4
/* 8144E268 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 8144E26C | 28 00 00 03 */	cmplwi r0, 0x3
/* 8144E270 | 40 82 00 64 */	bne .L_8144E2D4
/* 8144E274 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144E278 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144E27C | 28 00 00 06 */	cmplwi r0, 0x6
/* 8144E280 | 40 82 00 54 */	bne .L_8144E2D4
/* 8144E284 | 3C 80 81 61 */	lis r4, lbl_81616ED0@ha
/* 8144E288 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144E28C | 80 84 6E D0 */	lwz r4, lbl_81616ED0@l(r4)
/* 8144E290 | 38 A0 00 06 */	li r5, 0x6
/* 8144E294 | 48 1A FF 41 */	bl memcmp
/* 8144E298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E29C | 40 82 00 38 */	bne .L_8144E2D4
/* 8144E2A0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8144E2A4 | 48 04 52 05 */	bl NETGetUniversalCalendar
/* 8144E2A8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8144E2AC | 48 0E 7E 81 */	bl OSCalendarTimeToTicks
/* 8144E2B0 | 3C A0 80 00 */	lis r5, 0x8000
/* 8144E2B4 | 38 00 03 E8 */	li r0, 0x3e8
/* 8144E2B8 | 80 C5 00 F8 */	lwz r6, 0xf8(r5)
/* 8144E2BC | 38 A0 00 00 */	li r5, 0x0
/* 8144E2C0 | 54 C6 F0 BE */	srwi r6, r6, 2
/* 8144E2C4 | 7C C6 03 96 */	divwu r6, r6, r0
/* 8144E2C8 | 48 1A B3 49 */	bl __div2i
/* 8144E2CC | 7C 67 1B 78 */	mr r7, r3
/* 8144E2D0 | 48 00 01 94 */	b .L_8144E464
.L_8144E2D4:
/* 8144E2D4 | 7F 43 D3 78 */	mr r3, r26
/* 8144E2D8 | 38 80 00 00 */	li r4, 0x0
/* 8144E2DC | 4B FF E3 B5 */	bl CHANSVmGetArg
/* 8144E2E0 | 7C 65 1B 78 */	mr r5, r3
/* 8144E2E4 | 7F 43 D3 78 */	mr r3, r26
/* 8144E2E8 | 38 80 00 01 */	li r4, 0x1
/* 8144E2EC | 4B FF D5 F1 */	bl CHANSVmConvertObjectType
/* 8144E2F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E2F4 | 41 82 00 10 */	beq .L_8144E304
/* 8144E2F8 | 80 E3 00 00 */	lwz r7, 0x0(r3)
/* 8144E2FC | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8144E300 | 48 00 01 64 */	b .L_8144E464
.L_8144E304:
/* 8144E304 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8144E308 | 38 80 00 00 */	li r4, 0x0
/* 8144E30C | 38 A0 00 28 */	li r5, 0x28
/* 8144E310 | 4B EE 20 25 */	bl memset
/* 8144E314 | 28 1C 00 07 */	cmplwi r28, 0x7
/* 8144E318 | 40 81 00 08 */	ble .L_8144E320
/* 8144E31C | 3B 80 00 07 */	li r28, 0x7
.L_8144E320:
/* 8144E320 | 3B 60 00 00 */	li r27, 0x0
/* 8144E324 | 3B C0 00 00 */	li r30, 0x0
/* 8144E328 | 3F A0 81 67 */	lis r29, jumptable_81669B88@ha
/* 8144E32C | 48 00 00 B8 */	b .L_8144E3E4
.L_8144E330:
/* 8144E330 | 7F 43 D3 78 */	mr r3, r26
/* 8144E334 | 7F 64 DB 78 */	mr r4, r27
/* 8144E338 | 4B FF E3 59 */	bl CHANSVmGetArg
/* 8144E33C | 7C 65 1B 78 */	mr r5, r3
/* 8144E340 | 7F 43 D3 78 */	mr r3, r26
/* 8144E344 | 38 80 00 01 */	li r4, 0x1
/* 8144E348 | 4B FF D5 95 */	bl CHANSVmConvertObjectType
/* 8144E34C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E350 | 41 82 00 9C */	beq .L_8144E3EC
/* 8144E354 | 28 1B 00 06 */	cmplwi r27, 0x6
/* 8144E358 | 41 81 00 4C */	bgt .L_8144E3A4
/* 8144E35C | 38 9D 9B 88 */	addi r4, r29, jumptable_81669B88@l
/* 8144E360 | 7C 84 F0 2E */	lwzx r4, r4, r30
/* 8144E364 | 7C 89 03 A6 */	mtctr r4
/* 8144E368 | 4E 80 04 20 */	bctr
.L_8144E36C:
/* 8144E36C | 38 81 00 1C */	addi r4, r1, 0x1c
/* 8144E370 | 48 00 00 64 */	b .L_8144E3D4
.L_8144E374:
/* 8144E374 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8144E378 | 48 00 00 5C */	b .L_8144E3D4
.L_8144E37C:
/* 8144E37C | 38 81 00 14 */	addi r4, r1, 0x14
/* 8144E380 | 48 00 00 54 */	b .L_8144E3D4
.L_8144E384:
/* 8144E384 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8144E388 | 48 00 00 4C */	b .L_8144E3D4
.L_8144E38C:
/* 8144E38C | 38 81 00 0C */	addi r4, r1, 0xc
/* 8144E390 | 48 00 00 44 */	b .L_8144E3D4
.L_8144E394:
/* 8144E394 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8144E398 | 48 00 00 3C */	b .L_8144E3D4
.L_8144E39C:
/* 8144E39C | 38 81 00 28 */	addi r4, r1, 0x28
/* 8144E3A0 | 48 00 00 34 */	b .L_8144E3D4
.L_8144E3A4:
/* 8144E3A4 | 80 0D AD 18 */	lwz r0, CHANSVmDebugVerboseMode@sda21(r0)
/* 8144E3A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144E3AC | 41 82 00 20 */	beq .L_8144E3CC
/* 8144E3B0 | 3C 60 81 67 */	lis r3, lbl_81669B67@ha
/* 8144E3B4 | 3C 80 81 67 */	lis r4, lbl_81669B5A@ha
/* 8144E3B8 | 38 63 9B 67 */	addi r3, r3, lbl_81669B67@l
/* 8144E3BC | 38 A0 00 D3 */	li r5, 0xd3
/* 8144E3C0 | 38 84 9B 5A */	addi r4, r4, lbl_81669B5A@l
/* 8144E3C4 | 4C C6 31 82 */	crclr cr1eq
/* 8144E3C8 | 4B FF C1 E5 */	bl CHANSVmDebugPrintf
.L_8144E3CC:
/* 8144E3CC | 38 60 00 00 */	li r3, 0x0
/* 8144E3D0 | 48 00 00 CC */	b .L_8144E49C
.L_8144E3D4:
/* 8144E3D4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144E3D8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8144E3DC | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8144E3E0 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_8144E3E4:
/* 8144E3E4 | 7C 1B E0 40 */	cmplw r27, r28
/* 8144E3E8 | 41 80 FF 48 */	blt .L_8144E330
.L_8144E3EC:
/* 8144E3EC | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8144E3F0 | 2C 00 07 D0 */	cmpwi r0, 0x7d0
/* 8144E3F4 | 40 80 00 0C */	bge .L_8144E400
/* 8144E3F8 | 38 00 07 D0 */	li r0, 0x7d0
/* 8144E3FC | 90 01 00 1C */	stw r0, 0x1c(r1)
.L_8144E400:
/* 8144E400 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E404 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8144E408 | 40 80 00 0C */	bge .L_8144E414
/* 8144E40C | 38 00 00 01 */	li r0, 0x1
/* 8144E410 | 90 01 00 14 */	stw r0, 0x14(r1)
.L_8144E414:
/* 8144E414 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8144E418 | 48 0E 7D 15 */	bl OSCalendarTimeToTicks
/* 8144E41C | 3C A0 80 00 */	lis r5, 0x8000
/* 8144E420 | 38 00 03 E8 */	li r0, 0x3e8
/* 8144E424 | 80 C5 00 F8 */	lwz r6, 0xf8(r5)
/* 8144E428 | 38 A0 00 00 */	li r5, 0x0
/* 8144E42C | 54 C6 F0 BE */	srwi r6, r6, 2
/* 8144E430 | 7C C6 03 96 */	divwu r6, r6, r0
/* 8144E434 | 48 1A B1 DD */	bl __div2i
/* 8144E438 | 7C 67 1B 78 */	mr r7, r3
/* 8144E43C | 48 00 00 28 */	b .L_8144E464
.L_8144E440:
/* 8144E440 | 48 0E 78 41 */	bl OSGetTime
/* 8144E444 | 3C A0 80 00 */	lis r5, 0x8000
/* 8144E448 | 38 00 03 E8 */	li r0, 0x3e8
/* 8144E44C | 80 C5 00 F8 */	lwz r6, 0xf8(r5)
/* 8144E450 | 38 A0 00 00 */	li r5, 0x0
/* 8144E454 | 54 C6 F0 BE */	srwi r6, r6, 2
/* 8144E458 | 7C C6 03 96 */	divwu r6, r6, r0
/* 8144E45C | 48 1A B1 B5 */	bl __div2i
/* 8144E460 | 7C 67 1B 78 */	mr r7, r3
.L_8144E464:
/* 8144E464 | 3C 60 80 00 */	lis r3, 0x8000
/* 8144E468 | 38 00 03 E8 */	li r0, 0x3e8
/* 8144E46C | 80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 8144E470 | 7F E5 FB 78 */	mr r5, r31
/* 8144E474 | 54 63 F0 BE */	srwi r3, r3, 2
/* 8144E478 | 7C C3 03 96 */	divwu r6, r3, r0
/* 8144E47C | 7C 04 30 16 */	mulhwu r0, r4, r6
/* 8144E480 | 7C 67 31 D6 */	mullw r3, r7, r6
/* 8144E484 | 7C 84 31 D6 */	mullw r4, r4, r6
/* 8144E488 | 7C 60 1A 14 */	add r3, r0, r3
/* 8144E48C | 48 0E 7A D9 */	bl OSTicksToCalendarTime
/* 8144E490 | 38 60 00 01 */	li r3, 0x1
/* 8144E494 | 48 00 00 08 */	b .L_8144E49C
.L_8144E498:
/* 8144E498 | 38 60 00 00 */	li r3, 0x0
.L_8144E49C:
/* 8144E49C | 39 61 00 50 */	addi r11, r1, 0x50
/* 8144E4A0 | 48 1A B0 69 */	bl _restgpr_26
/* 8144E4A4 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8144E4A8 | 7C 08 03 A6 */	mtlr r0
/* 8144E4AC | 38 21 00 50 */	addi r1, r1, 0x50
/* 8144E4B0 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144E21C

# .text:0x3F08 | 0x8144E4B4 | size: 0x40
.fn CHANSVm_8144E4B4, global
/* 8144E4B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E4B8 | 7C 08 02 A6 */	mflr r0
/* 8144E4BC | 7C A4 2B 78 */	mr r4, r5
/* 8144E4C0 | 38 A0 00 28 */	li r5, 0x28
/* 8144E4C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E4C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144E4CC | 7C 7F 1B 78 */	mr r31, r3
/* 8144E4D0 | 4B FF C7 85 */	bl CHANSVmNewObjData
/* 8144E4D4 | 7C 64 1B 78 */	mr r4, r3
/* 8144E4D8 | 7F E3 FB 78 */	mr r3, r31
/* 8144E4DC | 4B FF FD 41 */	bl CHANSVm_8144E21C
/* 8144E4E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E4E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144E4E8 | 7C 08 03 A6 */	mtlr r0
/* 8144E4EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E4F0 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144E4B4

# .text:0x3F48 | 0x8144E4F4 | size: 0x16C
.fn CHANSVm_8144E4F4, global
/* 8144E4F4 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8144E4F8 | 7C 08 02 A6 */	mflr r0
/* 8144E4FC | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8144E500 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8144E504 | 48 1A AF C1 */	bl _savegpr_28
/* 8144E508 | 3F E0 81 67 */	lis r31, lbl_81669070@ha
/* 8144E50C | 3B C1 00 30 */	addi r30, r1, 0x30
/* 8144E510 | 7C 7C 1B 78 */	mr r28, r3
/* 8144E514 | 7C BD 2B 78 */	mr r29, r5
/* 8144E518 | 7F C3 F3 78 */	mr r3, r30
/* 8144E51C | 3B FF 90 70 */	addi r31, r31, lbl_81669070@l
/* 8144E520 | 38 80 00 00 */	li r4, 0x0
/* 8144E524 | 38 A0 00 28 */	li r5, 0x28
/* 8144E528 | 4B EE 1E 0D */	bl memset
/* 8144E52C | 7F 83 E3 78 */	mr r3, r28
/* 8144E530 | 7F C4 F3 78 */	mr r4, r30
/* 8144E534 | 4B FF FC E9 */	bl CHANSVm_8144E21C
/* 8144E538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E53C | 41 82 00 EC */	beq .L_8144E628
/* 8144E540 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 8144E544 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144E548 | 41 80 00 E0 */	blt .L_8144E628
/* 8144E54C | 2C 00 00 3D */	cmpwi r0, 0x3d
/* 8144E550 | 41 81 00 D8 */	bgt .L_8144E628
/* 8144E554 | 81 41 00 34 */	lwz r10, 0x34(r1)
/* 8144E558 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8144E55C | 41 80 00 CC */	blt .L_8144E628
/* 8144E560 | 2C 0A 00 3B */	cmpwi r10, 0x3b
/* 8144E564 | 41 81 00 C4 */	bgt .L_8144E628
/* 8144E568 | 81 21 00 38 */	lwz r9, 0x38(r1)
/* 8144E56C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8144E570 | 41 80 00 B8 */	blt .L_8144E628
/* 8144E574 | 2C 09 00 17 */	cmpwi r9, 0x17
/* 8144E578 | 41 81 00 B0 */	bgt .L_8144E628
/* 8144E57C | 81 01 00 3C */	lwz r8, 0x3c(r1)
/* 8144E580 | 2C 08 00 01 */	cmpwi r8, 0x1
/* 8144E584 | 41 80 00 A4 */	blt .L_8144E628
/* 8144E588 | 2C 08 00 1F */	cmpwi r8, 0x1f
/* 8144E58C | 41 81 00 9C */	bgt .L_8144E628
/* 8144E590 | 80 61 00 40 */	lwz r3, 0x40(r1)
/* 8144E594 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144E598 | 41 80 00 90 */	blt .L_8144E628
/* 8144E59C | 2C 03 00 0B */	cmpwi r3, 0xb
/* 8144E5A0 | 41 81 00 88 */	bgt .L_8144E628
/* 8144E5A4 | 80 C1 00 44 */	lwz r6, 0x44(r1)
/* 8144E5A8 | 2C 06 07 6C */	cmpwi r6, 0x76c
/* 8144E5AC | 41 80 00 7C */	blt .L_8144E628
/* 8144E5B0 | 2C 06 27 0F */	cmpwi r6, 0x270f
/* 8144E5B4 | 41 81 00 74 */	bgt .L_8144E628
/* 8144E5B8 | 80 81 00 48 */	lwz r4, 0x48(r1)
/* 8144E5BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144E5C0 | 41 80 00 68 */	blt .L_8144E628
/* 8144E5C4 | 2C 04 00 06 */	cmpwi r4, 0x6
/* 8144E5C8 | 41 81 00 60 */	bgt .L_8144E628
/* 8144E5CC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8144E5D0 | 54 85 10 3A */	slwi r5, r4, 2
/* 8144E5D4 | 54 60 10 3A */	slwi r0, r3, 2
/* 8144E5D8 | 38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8144E5DC | 7C E3 00 2E */	lwzx r7, r3, r0
/* 8144E5E0 | 38 9F 0B 34 */	addi r4, r31, 0xb34
/* 8144E5E4 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 8144E5E8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8144E5EC | 7C C4 28 2E */	lwzx r6, r4, r5
/* 8144E5F0 | 38 BF 0B 80 */	addi r5, r31, 0xb80
/* 8144E5F4 | 38 80 00 20 */	li r4, 0x20
/* 8144E5F8 | 4C C6 31 82 */	crclr cr1eq
/* 8144E5FC | 48 1B 23 AD */	bl snprintf
/* 8144E600 | 28 03 00 20 */	cmplwi r3, 0x20
/* 8144E604 | 7C 66 1B 78 */	mr r6, r3
/* 8144E608 | 41 81 00 20 */	bgt .L_8144E628
/* 8144E60C | 7F 83 E3 78 */	mr r3, r28
/* 8144E610 | 7F A4 EB 78 */	mr r4, r29
/* 8144E614 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8144E618 | 4B FF D4 C5 */	bl CHANSVmSetU16StringFromU8
/* 8144E61C | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E620 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E624 | 48 00 00 24 */	b .L_8144E648
.L_8144E628:
/* 8144E628 | 7F 83 E3 78 */	mr r3, r28
/* 8144E62C | 7F A5 EB 78 */	mr r5, r29
/* 8144E630 | 38 80 00 00 */	li r4, 0x0
/* 8144E634 | 38 C0 00 03 */	li r6, 0x3
/* 8144E638 | 38 E0 00 00 */	li r7, 0x0
/* 8144E63C | 4B FF C7 99 */	bl CHANSVmNewObject
/* 8144E640 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8144E644 | 7C 60 19 10 */	subfe r3, r0, r3
.L_8144E648:
/* 8144E648 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8144E64C | 48 1A AE C5 */	bl _restgpr_28
/* 8144E650 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8144E654 | 7C 08 03 A6 */	mtlr r0
/* 8144E658 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8144E65C | 4E 80 00 20 */	blr
.endfn CHANSVm_8144E4F4

# .text:0x40B4 | 0x8144E660 | size: 0x40
.fn VmMethod_getDate, global
/* 8144E660 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E664 | 7C 08 02 A6 */	mflr r0
/* 8144E668 | 7C 86 23 78 */	mr r6, r4
/* 8144E66C | 7C A4 2B 78 */	mr r4, r5
/* 8144E670 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E674 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8144E678 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8144E67C | 80 C5 00 0C */	lwz r6, 0xc(r5)
/* 8144E680 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144E684 | 4B FF D3 15 */	bl CHANSVmSetInteger
/* 8144E688 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E68C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E690 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E694 | 7C 08 03 A6 */	mtlr r0
/* 8144E698 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E69C | 4E 80 00 20 */	blr
.endfn VmMethod_getDate

# .text:0x40F4 | 0x8144E6A0 | size: 0x40
.fn VmMethod_getDay, global
/* 8144E6A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E6A4 | 7C 08 02 A6 */	mflr r0
/* 8144E6A8 | 7C 86 23 78 */	mr r6, r4
/* 8144E6AC | 7C A4 2B 78 */	mr r4, r5
/* 8144E6B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E6B4 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8144E6B8 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8144E6BC | 80 C5 00 18 */	lwz r6, 0x18(r5)
/* 8144E6C0 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144E6C4 | 4B FF D2 D5 */	bl CHANSVmSetInteger
/* 8144E6C8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E6CC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E6D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E6D4 | 7C 08 03 A6 */	mtlr r0
/* 8144E6D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E6DC | 4E 80 00 20 */	blr
.endfn VmMethod_getDay

# .text:0x4134 | 0x8144E6E0 | size: 0x40
.fn VmMethod_getFullYear, global
/* 8144E6E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E6E4 | 7C 08 02 A6 */	mflr r0
/* 8144E6E8 | 7C 86 23 78 */	mr r6, r4
/* 8144E6EC | 7C A4 2B 78 */	mr r4, r5
/* 8144E6F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E6F4 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8144E6F8 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8144E6FC | 80 C5 00 14 */	lwz r6, 0x14(r5)
/* 8144E700 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144E704 | 4B FF D2 95 */	bl CHANSVmSetInteger
/* 8144E708 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E70C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E710 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E714 | 7C 08 03 A6 */	mtlr r0
/* 8144E718 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E71C | 4E 80 00 20 */	blr
.endfn VmMethod_getFullYear

# .text:0x4174 | 0x8144E720 | size: 0x40
.fn VmMethod_getHours, global
/* 8144E720 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E724 | 7C 08 02 A6 */	mflr r0
/* 8144E728 | 7C 86 23 78 */	mr r6, r4
/* 8144E72C | 7C A4 2B 78 */	mr r4, r5
/* 8144E730 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E734 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8144E738 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8144E73C | 80 C5 00 08 */	lwz r6, 0x8(r5)
/* 8144E740 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144E744 | 4B FF D2 55 */	bl CHANSVmSetInteger
/* 8144E748 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E74C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E750 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E754 | 7C 08 03 A6 */	mtlr r0
/* 8144E758 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E75C | 4E 80 00 20 */	blr
.endfn VmMethod_getHours

# .text:0x41B4 | 0x8144E760 | size: 0x40
.fn VmMethod_getMilliseconds, global
/* 8144E760 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E764 | 7C 08 02 A6 */	mflr r0
/* 8144E768 | 7C 86 23 78 */	mr r6, r4
/* 8144E76C | 7C A4 2B 78 */	mr r4, r5
/* 8144E770 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E774 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8144E778 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8144E77C | 80 C5 00 20 */	lwz r6, 0x20(r5)
/* 8144E780 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144E784 | 4B FF D2 15 */	bl CHANSVmSetInteger
/* 8144E788 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E78C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E790 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E794 | 7C 08 03 A6 */	mtlr r0
/* 8144E798 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E79C | 4E 80 00 20 */	blr
.endfn VmMethod_getMilliseconds

# .text:0x41F4 | 0x8144E7A0 | size: 0x40
.fn VmMethod_getMinutes, global
/* 8144E7A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E7A4 | 7C 08 02 A6 */	mflr r0
/* 8144E7A8 | 7C 86 23 78 */	mr r6, r4
/* 8144E7AC | 7C A4 2B 78 */	mr r4, r5
/* 8144E7B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E7B4 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8144E7B8 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8144E7BC | 80 C5 00 04 */	lwz r6, 0x4(r5)
/* 8144E7C0 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144E7C4 | 4B FF D1 D5 */	bl CHANSVmSetInteger
/* 8144E7C8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E7CC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E7D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E7D4 | 7C 08 03 A6 */	mtlr r0
/* 8144E7D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E7DC | 4E 80 00 20 */	blr
.endfn VmMethod_getMinutes

# .text:0x4234 | 0x8144E7E0 | size: 0x40
.fn VmMethod_getMonth, global
/* 8144E7E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E7E4 | 7C 08 02 A6 */	mflr r0
/* 8144E7E8 | 7C 86 23 78 */	mr r6, r4
/* 8144E7EC | 7C A4 2B 78 */	mr r4, r5
/* 8144E7F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E7F4 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8144E7F8 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8144E7FC | 80 C5 00 10 */	lwz r6, 0x10(r5)
/* 8144E800 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144E804 | 4B FF D1 95 */	bl CHANSVmSetInteger
/* 8144E808 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E80C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E810 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E814 | 7C 08 03 A6 */	mtlr r0
/* 8144E818 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E81C | 4E 80 00 20 */	blr
.endfn VmMethod_getMonth

# .text:0x4274 | 0x8144E820 | size: 0x40
.fn VmMethod_getSeconds, global
/* 8144E820 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E824 | 7C 08 02 A6 */	mflr r0
/* 8144E828 | 7C 86 23 78 */	mr r6, r4
/* 8144E82C | 7C A4 2B 78 */	mr r4, r5
/* 8144E830 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E834 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8144E838 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8144E83C | 80 C5 00 00 */	lwz r6, 0x0(r5)
/* 8144E840 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8144E844 | 4B FF D1 55 */	bl CHANSVmSetInteger
/* 8144E848 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E84C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E850 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E854 | 7C 08 03 A6 */	mtlr r0
/* 8144E858 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E85C | 4E 80 00 20 */	blr
.endfn VmMethod_getSeconds

# .text:0x42B4 | 0x8144E860 | size: 0x78
.fn VmMethod_getTime, global
/* 8144E860 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E864 | 7C 08 02 A6 */	mflr r0
/* 8144E868 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E86C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144E870 | 7C BF 2B 78 */	mr r31, r5
/* 8144E874 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144E878 | 7C 7E 1B 78 */	mr r30, r3
/* 8144E87C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144E880 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8144E884 | 48 0E 78 A9 */	bl OSCalendarTimeToTicks
/* 8144E888 | 3C A0 80 00 */	lis r5, 0x8000
/* 8144E88C | 38 00 03 E8 */	li r0, 0x3e8
/* 8144E890 | 80 C5 00 F8 */	lwz r6, 0xf8(r5)
/* 8144E894 | 38 A0 00 00 */	li r5, 0x0
/* 8144E898 | 54 C6 F0 BE */	srwi r6, r6, 2
/* 8144E89C | 7C C6 03 96 */	divwu r6, r6, r0
/* 8144E8A0 | 48 1A AD 71 */	bl __div2i
/* 8144E8A4 | 7C 86 23 78 */	mr r6, r4
/* 8144E8A8 | 7C 65 1B 78 */	mr r5, r3
/* 8144E8AC | 7F C3 F3 78 */	mr r3, r30
/* 8144E8B0 | 7F E4 FB 78 */	mr r4, r31
/* 8144E8B4 | 4B FF D0 E5 */	bl CHANSVmSetInteger
/* 8144E8B8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E8BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144E8C0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E8C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144E8C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E8CC | 7C 08 03 A6 */	mtlr r0
/* 8144E8D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E8D4 | 4E 80 00 20 */	blr
.endfn VmMethod_getTime

# .text:0x432C | 0x8144E8D8 | size: 0x98
.fn VmMethod_getRTC, global
/* 8144E8D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144E8DC | 7C 08 02 A6 */	mflr r0
/* 8144E8E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144E8E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144E8E8 | 48 1A AB DD */	bl _savegpr_28
/* 8144E8EC | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144E8F0 | 7C 7C 1B 78 */	mr r28, r3
/* 8144E8F4 | 7C BD 2B 78 */	mr r29, r5
/* 8144E8F8 | 83 C4 00 00 */	lwz r30, 0x0(r4)
/* 8144E8FC | 48 11 B9 B9 */	bl SCGetCounterBias
/* 8144E900 | 7C 7F 1B 78 */	mr r31, r3
/* 8144E904 | 7F C3 F3 78 */	mr r3, r30
/* 8144E908 | 48 0E 78 25 */	bl OSCalendarTimeToTicks
/* 8144E90C | 3C A0 80 00 */	lis r5, 0x8000
/* 8144E910 | 38 00 03 E8 */	li r0, 0x3e8
/* 8144E914 | 80 C5 00 F8 */	lwz r6, 0xf8(r5)
/* 8144E918 | 38 A0 00 00 */	li r5, 0x0
/* 8144E91C | 54 C6 F0 BE */	srwi r6, r6, 2
/* 8144E920 | 7C C6 03 96 */	divwu r6, r6, r0
/* 8144E924 | 48 1A AC ED */	bl __div2i
/* 8144E928 | 38 C0 03 E8 */	li r6, 0x3e8
/* 8144E92C | 38 A0 00 00 */	li r5, 0x0
/* 8144E930 | 48 1A AB F5 */	bl __div2u
/* 8144E934 | 7C BF 20 10 */	subfc r5, r31, r4
/* 8144E938 | 38 00 FF FF */	li r0, -0x1
/* 8144E93C | 7C A6 00 38 */	and r6, r5, r0
/* 8144E940 | 7F 83 E3 78 */	mr r3, r28
/* 8144E944 | 7F A4 EB 78 */	mr r4, r29
/* 8144E948 | 38 A0 00 00 */	li r5, 0x0
/* 8144E94C | 4B FF D0 4D */	bl CHANSVmSetInteger
/* 8144E950 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E954 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144E958 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E95C | 48 1A AB B5 */	bl _restgpr_28
/* 8144E960 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144E964 | 7C 08 03 A6 */	mtlr r0
/* 8144E968 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144E96C | 4E 80 00 20 */	blr
.endfn VmMethod_getRTC

# .text:0x43C4 | 0x8144E970 | size: 0x30
.fn VmMethod_E, global
/* 8144E970 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E974 | 7C 08 02 A6 */	mflr r0
/* 8144E978 | C8 22 8B 48 */	lfd f1, lbl_81694F48@sda21(r0)
/* 8144E97C | 7C A4 2B 78 */	mr r4, r5
/* 8144E980 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E984 | 4B FF D0 69 */	bl CHANSVmSetFloat
/* 8144E988 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E98C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E990 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E994 | 7C 08 03 A6 */	mtlr r0
/* 8144E998 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E99C | 4E 80 00 20 */	blr
.endfn VmMethod_E

# .text:0x43F4 | 0x8144E9A0 | size: 0x30
.fn VmMethod_LN10, global
/* 8144E9A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E9A4 | 7C 08 02 A6 */	mflr r0
/* 8144E9A8 | C8 22 8B 50 */	lfd f1, lbl_81694F50@sda21(r0)
/* 8144E9AC | 7C A4 2B 78 */	mr r4, r5
/* 8144E9B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E9B4 | 4B FF D0 39 */	bl CHANSVmSetFloat
/* 8144E9B8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E9BC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E9C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E9C4 | 7C 08 03 A6 */	mtlr r0
/* 8144E9C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E9CC | 4E 80 00 20 */	blr
.endfn VmMethod_LN10

# .text:0x4424 | 0x8144E9D0 | size: 0x30
.fn VmMethod_LBN2, global
/* 8144E9D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144E9D4 | 7C 08 02 A6 */	mflr r0
/* 8144E9D8 | C8 22 8B 58 */	lfd f1, lbl_81694F58@sda21(r0)
/* 8144E9DC | 7C A4 2B 78 */	mr r4, r5
/* 8144E9E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144E9E4 | 4B FF D0 09 */	bl CHANSVmSetFloat
/* 8144E9E8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144E9EC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144E9F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144E9F4 | 7C 08 03 A6 */	mtlr r0
/* 8144E9F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144E9FC | 4E 80 00 20 */	blr
.endfn VmMethod_LBN2

# .text:0x4454 | 0x8144EA00 | size: 0x30
.fn VmMethod_LOG2E, global
/* 8144EA00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144EA04 | 7C 08 02 A6 */	mflr r0
/* 8144EA08 | C8 22 8B 60 */	lfd f1, lbl_81694F60@sda21(r0)
/* 8144EA0C | 7C A4 2B 78 */	mr r4, r5
/* 8144EA10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144EA14 | 4B FF CF D9 */	bl CHANSVmSetFloat
/* 8144EA18 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144EA1C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144EA20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144EA24 | 7C 08 03 A6 */	mtlr r0
/* 8144EA28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144EA2C | 4E 80 00 20 */	blr
.endfn VmMethod_LOG2E

# .text:0x4484 | 0x8144EA30 | size: 0x30
.fn VmMethod_LOG10E, global
/* 8144EA30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144EA34 | 7C 08 02 A6 */	mflr r0
/* 8144EA38 | C8 22 8B 68 */	lfd f1, lbl_81694F68@sda21(r0)
/* 8144EA3C | 7C A4 2B 78 */	mr r4, r5
/* 8144EA40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144EA44 | 4B FF CF A9 */	bl CHANSVmSetFloat
/* 8144EA48 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144EA4C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144EA50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144EA54 | 7C 08 03 A6 */	mtlr r0
/* 8144EA58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144EA5C | 4E 80 00 20 */	blr
.endfn VmMethod_LOG10E

# .text:0x44B4 | 0x8144EA60 | size: 0x30
.fn VmMethod_PI, global
/* 8144EA60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144EA64 | 7C 08 02 A6 */	mflr r0
/* 8144EA68 | C8 22 8B 70 */	lfd f1, lbl_81694F70@sda21(r0)
/* 8144EA6C | 7C A4 2B 78 */	mr r4, r5
/* 8144EA70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144EA74 | 4B FF CF 79 */	bl CHANSVmSetFloat
/* 8144EA78 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144EA7C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144EA80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144EA84 | 7C 08 03 A6 */	mtlr r0
/* 8144EA88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144EA8C | 4E 80 00 20 */	blr
.endfn VmMethod_PI

# .text:0x44E4 | 0x8144EA90 | size: 0x30
.fn VmMethod_SQRT1_2, global
/* 8144EA90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144EA94 | 7C 08 02 A6 */	mflr r0
/* 8144EA98 | C8 22 8B 78 */	lfd f1, lbl_81694F78@sda21(r0)
/* 8144EA9C | 7C A4 2B 78 */	mr r4, r5
/* 8144EAA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144EAA4 | 4B FF CF 49 */	bl CHANSVmSetFloat
/* 8144EAA8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144EAAC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144EAB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144EAB4 | 7C 08 03 A6 */	mtlr r0
/* 8144EAB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144EABC | 4E 80 00 20 */	blr
.endfn VmMethod_SQRT1_2

# .text:0x4514 | 0x8144EAC0 | size: 0x30
.fn VmMethod_SQRT2, global
/* 8144EAC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144EAC4 | 7C 08 02 A6 */	mflr r0
/* 8144EAC8 | C8 22 8B 80 */	lfd f1, lbl_81694F80@sda21(r0)
/* 8144EACC | 7C A4 2B 78 */	mr r4, r5
/* 8144EAD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144EAD4 | 4B FF CF 19 */	bl CHANSVmSetFloat
/* 8144EAD8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144EADC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144EAE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144EAE4 | 7C 08 03 A6 */	mtlr r0
/* 8144EAE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144EAEC | 4E 80 00 20 */	blr
.endfn VmMethod_SQRT2

# .text:0x4544 | 0x8144EAF0 | size: 0x78
.fn VmMethod_abs, global
/* 8144EAF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144EAF4 | 7C 08 02 A6 */	mflr r0
/* 8144EAF8 | 38 80 00 00 */	li r4, 0x0
/* 8144EAFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144EB00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144EB04 | 7C BF 2B 78 */	mr r31, r5
/* 8144EB08 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144EB0C | 7C 7E 1B 78 */	mr r30, r3
/* 8144EB10 | 4B FF DB 81 */	bl CHANSVmGetArg
/* 8144EB14 | 7C 65 1B 78 */	mr r5, r3
/* 8144EB18 | 7F C3 F3 78 */	mr r3, r30
/* 8144EB1C | 38 80 00 02 */	li r4, 0x2
/* 8144EB20 | 4B FF CD BD */	bl CHANSVmConvertObjectType
/* 8144EB24 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8144EB28 | 7C 00 19 11 */	subfe. r0, r0, r3
/* 8144EB2C | 41 82 00 20 */	beq .L_8144EB4C
/* 8144EB30 | C8 03 00 00 */	lfd f0, 0x0(r3)
/* 8144EB34 | 7F C3 F3 78 */	mr r3, r30
/* 8144EB38 | 7F E4 FB 78 */	mr r4, r31
/* 8144EB3C | FC 20 02 10 */	fabs f1, f0
/* 8144EB40 | 4B FF CE AD */	bl CHANSVmSetFloat
/* 8144EB44 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144EB48 | 54 00 D9 7E */	srwi r0, r0, 5
.L_8144EB4C:
/* 8144EB4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144EB50 | 7C 03 03 78 */	mr r3, r0
/* 8144EB54 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144EB58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144EB5C | 7C 08 03 A6 */	mtlr r0
/* 8144EB60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144EB64 | 4E 80 00 20 */	blr
.endfn VmMethod_abs

# .text:0x45BC | 0x8144EB68 | size: 0xA0
.fn VmMethod_acos, global
/* 8144EB68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144EB6C | 7C 08 02 A6 */	mflr r0
/* 8144EB70 | 38 80 00 00 */	li r4, 0x0
/* 8144EB74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144EB78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144EB7C | 7C BF 2B 78 */	mr r31, r5
/* 8144EB80 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144EB84 | 7C 7E 1B 78 */	mr r30, r3
/* 8144EB88 | 4B FF DB 09 */	bl CHANSVmGetArg
/* 8144EB8C | 7C 65 1B 78 */	mr r5, r3
/* 8144EB90 | 7F C3 F3 78 */	mr r3, r30
/* 8144EB94 | 38 80 00 02 */	li r4, 0x2
/* 8144EB98 | 4B FF CD 45 */	bl CHANSVmConvertObjectType
/* 8144EB9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EBA0 | 41 82 00 4C */	beq .L_8144EBEC
/* 8144EBA4 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144EBA8 | C8 02 8B 30 */	lfd f0, lbl_81694F30@sda21(r0)
/* 8144EBAC | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8144EBB0 | 4C 40 13 82 */	cror eq, lt, eq
/* 8144EBB4 | 40 82 00 1C */	bne .L_8144EBD0
/* 8144EBB8 | C8 02 8B 38 */	lfd f0, lbl_81694F38@sda21(r0)
/* 8144EBBC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8144EBC0 | 4C 40 13 82 */	cror eq, lt, eq
/* 8144EBC4 | 40 82 00 0C */	bne .L_8144EBD0
/* 8144EBC8 | 48 1B E1 51 */	bl acos
/* 8144EBCC | 48 00 00 08 */	b .L_8144EBD4
.L_8144EBD0:
/* 8144EBD0 | C8 22 8B 08 */	lfd f1, lbl_81694F08@sda21(r0)
.L_8144EBD4:
/* 8144EBD4 | 7F C3 F3 78 */	mr r3, r30
/* 8144EBD8 | 7F E4 FB 78 */	mr r4, r31
/* 8144EBDC | 4B FF CE 11 */	bl CHANSVmSetFloat
/* 8144EBE0 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144EBE4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144EBE8 | 48 00 00 08 */	b .L_8144EBF0
.L_8144EBEC:
/* 8144EBEC | 38 60 00 00 */	li r3, 0x0
.L_8144EBF0:
/* 8144EBF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144EBF4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144EBF8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144EBFC | 7C 08 03 A6 */	mtlr r0
/* 8144EC00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144EC04 | 4E 80 00 20 */	blr
.endfn VmMethod_acos

# .text:0x465C | 0x8144EC08 | size: 0xA0
.fn VmMethod_asin, global
/* 8144EC08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144EC0C | 7C 08 02 A6 */	mflr r0
/* 8144EC10 | 38 80 00 00 */	li r4, 0x0
/* 8144EC14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144EC18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144EC1C | 7C BF 2B 78 */	mr r31, r5
/* 8144EC20 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144EC24 | 7C 7E 1B 78 */	mr r30, r3
/* 8144EC28 | 4B FF DA 69 */	bl CHANSVmGetArg
/* 8144EC2C | 7C 65 1B 78 */	mr r5, r3
/* 8144EC30 | 7F C3 F3 78 */	mr r3, r30
/* 8144EC34 | 38 80 00 02 */	li r4, 0x2
/* 8144EC38 | 4B FF CC A5 */	bl CHANSVmConvertObjectType
/* 8144EC3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EC40 | 41 82 00 4C */	beq .L_8144EC8C
/* 8144EC44 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144EC48 | C8 02 8B 30 */	lfd f0, lbl_81694F30@sda21(r0)
/* 8144EC4C | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8144EC50 | 4C 40 13 82 */	cror eq, lt, eq
/* 8144EC54 | 40 82 00 1C */	bne .L_8144EC70
/* 8144EC58 | C8 02 8B 38 */	lfd f0, lbl_81694F38@sda21(r0)
/* 8144EC5C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8144EC60 | 4C 40 13 82 */	cror eq, lt, eq
/* 8144EC64 | 40 82 00 0C */	bne .L_8144EC70
/* 8144EC68 | 48 1B E0 B5 */	bl asin
/* 8144EC6C | 48 00 00 08 */	b .L_8144EC74
.L_8144EC70:
/* 8144EC70 | C8 22 8B 08 */	lfd f1, lbl_81694F08@sda21(r0)
.L_8144EC74:
/* 8144EC74 | 7F C3 F3 78 */	mr r3, r30
/* 8144EC78 | 7F E4 FB 78 */	mr r4, r31
/* 8144EC7C | 4B FF CD 71 */	bl CHANSVmSetFloat
/* 8144EC80 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144EC84 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144EC88 | 48 00 00 08 */	b .L_8144EC90
.L_8144EC8C:
/* 8144EC8C | 38 60 00 00 */	li r3, 0x0
.L_8144EC90:
/* 8144EC90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144EC94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144EC98 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144EC9C | 7C 08 03 A6 */	mtlr r0
/* 8144ECA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144ECA4 | 4E 80 00 20 */	blr
.endfn VmMethod_asin

# .text:0x46FC | 0x8144ECA8 | size: 0x7C
.fn VmMethod_atan, global
/* 8144ECA8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144ECAC | 7C 08 02 A6 */	mflr r0
/* 8144ECB0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144ECB4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144ECB8 | 48 1A A8 11 */	bl _savegpr_29
/* 8144ECBC | 7C 7D 1B 78 */	mr r29, r3
/* 8144ECC0 | 7C BE 2B 78 */	mr r30, r5
/* 8144ECC4 | 38 80 00 00 */	li r4, 0x0
/* 8144ECC8 | 4B FF D9 C9 */	bl CHANSVmGetArg
/* 8144ECCC | 7C 65 1B 78 */	mr r5, r3
/* 8144ECD0 | 7F A3 EB 78 */	mr r3, r29
/* 8144ECD4 | 38 80 00 02 */	li r4, 0x2
/* 8144ECD8 | 4B FF CC 05 */	bl CHANSVmConvertObjectType
/* 8144ECDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144ECE0 | 3B E0 00 00 */	li r31, 0x0
/* 8144ECE4 | 41 82 00 24 */	beq .L_8144ED08
/* 8144ECE8 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144ECEC | 48 1B D7 25 */	bl atan
/* 8144ECF0 | 7F A3 EB 78 */	mr r3, r29
/* 8144ECF4 | 7F C4 F3 78 */	mr r4, r30
/* 8144ECF8 | 4B FF CC F5 */	bl CHANSVmSetFloat
/* 8144ECFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144ED00 | 40 82 00 08 */	bne .L_8144ED08
/* 8144ED04 | 3B E0 00 01 */	li r31, 0x1
.L_8144ED08:
/* 8144ED08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144ED0C | 7F E3 FB 78 */	mr r3, r31
/* 8144ED10 | 48 1A A8 05 */	bl _restgpr_29
/* 8144ED14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144ED18 | 7C 08 03 A6 */	mtlr r0
/* 8144ED1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144ED20 | 4E 80 00 20 */	blr
.endfn VmMethod_atan

# .text:0x4778 | 0x8144ED24 | size: 0xA8
.fn VmMethod_atan2, global
/* 8144ED24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144ED28 | 7C 08 02 A6 */	mflr r0
/* 8144ED2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144ED30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144ED34 | 48 1A A7 91 */	bl _savegpr_28
/* 8144ED38 | 7C 7C 1B 78 */	mr r28, r3
/* 8144ED3C | 7C BD 2B 78 */	mr r29, r5
/* 8144ED40 | 38 80 00 00 */	li r4, 0x0
/* 8144ED44 | 4B FF D9 4D */	bl CHANSVmGetArg
/* 8144ED48 | 7C 65 1B 78 */	mr r5, r3
/* 8144ED4C | 7F 83 E3 78 */	mr r3, r28
/* 8144ED50 | 38 80 00 02 */	li r4, 0x2
/* 8144ED54 | 4B FF CB 89 */	bl CHANSVmConvertObjectType
/* 8144ED58 | 7C 7E 1B 78 */	mr r30, r3
/* 8144ED5C | 7F 83 E3 78 */	mr r3, r28
/* 8144ED60 | 38 80 00 01 */	li r4, 0x1
/* 8144ED64 | 4B FF D9 2D */	bl CHANSVmGetArg
/* 8144ED68 | 7C 65 1B 78 */	mr r5, r3
/* 8144ED6C | 7F 83 E3 78 */	mr r3, r28
/* 8144ED70 | 38 80 00 02 */	li r4, 0x2
/* 8144ED74 | 4B FF CB 69 */	bl CHANSVmConvertObjectType
/* 8144ED78 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144ED7C | 3B E0 00 00 */	li r31, 0x0
/* 8144ED80 | 41 82 00 30 */	beq .L_8144EDB0
/* 8144ED84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144ED88 | 41 82 00 28 */	beq .L_8144EDB0
/* 8144ED8C | C8 3E 00 00 */	lfd f1, 0x0(r30)
/* 8144ED90 | C8 43 00 00 */	lfd f2, 0x0(r3)
/* 8144ED94 | 48 1B DF 8D */	bl atan2
/* 8144ED98 | 7F 83 E3 78 */	mr r3, r28
/* 8144ED9C | 7F A4 EB 78 */	mr r4, r29
/* 8144EDA0 | 4B FF CC 4D */	bl CHANSVmSetFloat
/* 8144EDA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EDA8 | 40 82 00 08 */	bne .L_8144EDB0
/* 8144EDAC | 3B E0 00 01 */	li r31, 0x1
.L_8144EDB0:
/* 8144EDB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EDB4 | 7F E3 FB 78 */	mr r3, r31
/* 8144EDB8 | 48 1A A7 59 */	bl _restgpr_28
/* 8144EDBC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144EDC0 | 7C 08 03 A6 */	mtlr r0
/* 8144EDC4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144EDC8 | 4E 80 00 20 */	blr
.endfn VmMethod_atan2

# .text:0x4820 | 0x8144EDCC | size: 0x7C
.fn VmMethod_ceil, global
/* 8144EDCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144EDD0 | 7C 08 02 A6 */	mflr r0
/* 8144EDD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144EDD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EDDC | 48 1A A6 ED */	bl _savegpr_29
/* 8144EDE0 | 7C 7D 1B 78 */	mr r29, r3
/* 8144EDE4 | 7C BE 2B 78 */	mr r30, r5
/* 8144EDE8 | 38 80 00 00 */	li r4, 0x0
/* 8144EDEC | 4B FF D8 A5 */	bl CHANSVmGetArg
/* 8144EDF0 | 7C 65 1B 78 */	mr r5, r3
/* 8144EDF4 | 7F A3 EB 78 */	mr r3, r29
/* 8144EDF8 | 38 80 00 02 */	li r4, 0x2
/* 8144EDFC | 4B FF CA E1 */	bl CHANSVmConvertObjectType
/* 8144EE00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EE04 | 3B E0 00 00 */	li r31, 0x0
/* 8144EE08 | 41 82 00 24 */	beq .L_8144EE2C
/* 8144EE0C | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144EE10 | 48 1B D8 41 */	bl ceil
/* 8144EE14 | 7F A3 EB 78 */	mr r3, r29
/* 8144EE18 | 7F C4 F3 78 */	mr r4, r30
/* 8144EE1C | 4B FF CB D1 */	bl CHANSVmSetFloat
/* 8144EE20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EE24 | 40 82 00 08 */	bne .L_8144EE2C
/* 8144EE28 | 3B E0 00 01 */	li r31, 0x1
.L_8144EE2C:
/* 8144EE2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EE30 | 7F E3 FB 78 */	mr r3, r31
/* 8144EE34 | 48 1A A6 E1 */	bl _restgpr_29
/* 8144EE38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144EE3C | 7C 08 03 A6 */	mtlr r0
/* 8144EE40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144EE44 | 4E 80 00 20 */	blr
.endfn VmMethod_ceil

# .text:0x489C | 0x8144EE48 | size: 0x7C
.fn VmMethod_cos, global
/* 8144EE48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144EE4C | 7C 08 02 A6 */	mflr r0
/* 8144EE50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144EE54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EE58 | 48 1A A6 71 */	bl _savegpr_29
/* 8144EE5C | 7C 7D 1B 78 */	mr r29, r3
/* 8144EE60 | 7C BE 2B 78 */	mr r30, r5
/* 8144EE64 | 38 80 00 00 */	li r4, 0x0
/* 8144EE68 | 4B FF D8 29 */	bl CHANSVmGetArg
/* 8144EE6C | 7C 65 1B 78 */	mr r5, r3
/* 8144EE70 | 7F A3 EB 78 */	mr r3, r29
/* 8144EE74 | 38 80 00 02 */	li r4, 0x2
/* 8144EE78 | 4B FF CA 65 */	bl CHANSVmConvertObjectType
/* 8144EE7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EE80 | 3B E0 00 00 */	li r31, 0x0
/* 8144EE84 | 41 82 00 24 */	beq .L_8144EEA8
/* 8144EE88 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144EE8C | 48 1B D9 31 */	bl cos
/* 8144EE90 | 7F A3 EB 78 */	mr r3, r29
/* 8144EE94 | 7F C4 F3 78 */	mr r4, r30
/* 8144EE98 | 4B FF CB 55 */	bl CHANSVmSetFloat
/* 8144EE9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EEA0 | 40 82 00 08 */	bne .L_8144EEA8
/* 8144EEA4 | 3B E0 00 01 */	li r31, 0x1
.L_8144EEA8:
/* 8144EEA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EEAC | 7F E3 FB 78 */	mr r3, r31
/* 8144EEB0 | 48 1A A6 65 */	bl _restgpr_29
/* 8144EEB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144EEB8 | 7C 08 03 A6 */	mtlr r0
/* 8144EEBC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144EEC0 | 4E 80 00 20 */	blr
.endfn VmMethod_cos

# .text:0x4918 | 0x8144EEC4 | size: 0x7C
.fn VmMethod_exp, global
/* 8144EEC4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144EEC8 | 7C 08 02 A6 */	mflr r0
/* 8144EECC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144EED0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EED4 | 48 1A A5 F5 */	bl _savegpr_29
/* 8144EED8 | 7C 7D 1B 78 */	mr r29, r3
/* 8144EEDC | 7C BE 2B 78 */	mr r30, r5
/* 8144EEE0 | 38 80 00 00 */	li r4, 0x0
/* 8144EEE4 | 4B FF D7 AD */	bl CHANSVmGetArg
/* 8144EEE8 | 7C 65 1B 78 */	mr r5, r3
/* 8144EEEC | 7F A3 EB 78 */	mr r3, r29
/* 8144EEF0 | 38 80 00 02 */	li r4, 0x2
/* 8144EEF4 | 4B FF C9 E9 */	bl CHANSVmConvertObjectType
/* 8144EEF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EEFC | 3B E0 00 00 */	li r31, 0x0
/* 8144EF00 | 41 82 00 24 */	beq .L_8144EF24
/* 8144EF04 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144EF08 | 48 1B DE 1D */	bl exp
/* 8144EF0C | 7F A3 EB 78 */	mr r3, r29
/* 8144EF10 | 7F C4 F3 78 */	mr r4, r30
/* 8144EF14 | 4B FF CA D9 */	bl CHANSVmSetFloat
/* 8144EF18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EF1C | 40 82 00 08 */	bne .L_8144EF24
/* 8144EF20 | 3B E0 00 01 */	li r31, 0x1
.L_8144EF24:
/* 8144EF24 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EF28 | 7F E3 FB 78 */	mr r3, r31
/* 8144EF2C | 48 1A A5 E9 */	bl _restgpr_29
/* 8144EF30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144EF34 | 7C 08 03 A6 */	mtlr r0
/* 8144EF38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144EF3C | 4E 80 00 20 */	blr
.endfn VmMethod_exp

# .text:0x4994 | 0x8144EF40 | size: 0x7C
.fn VmMethod_floor, global
/* 8144EF40 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144EF44 | 7C 08 02 A6 */	mflr r0
/* 8144EF48 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144EF4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EF50 | 48 1A A5 79 */	bl _savegpr_29
/* 8144EF54 | 7C 7D 1B 78 */	mr r29, r3
/* 8144EF58 | 7C BE 2B 78 */	mr r30, r5
/* 8144EF5C | 38 80 00 00 */	li r4, 0x0
/* 8144EF60 | 4B FF D7 31 */	bl CHANSVmGetArg
/* 8144EF64 | 7C 65 1B 78 */	mr r5, r3
/* 8144EF68 | 7F A3 EB 78 */	mr r3, r29
/* 8144EF6C | 38 80 00 02 */	li r4, 0x2
/* 8144EF70 | 4B FF C9 6D */	bl CHANSVmConvertObjectType
/* 8144EF74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EF78 | 3B E0 00 00 */	li r31, 0x0
/* 8144EF7C | 41 82 00 24 */	beq .L_8144EFA0
/* 8144EF80 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144EF84 | 48 1B D9 0D */	bl floor
/* 8144EF88 | 7F A3 EB 78 */	mr r3, r29
/* 8144EF8C | 7F C4 F3 78 */	mr r4, r30
/* 8144EF90 | 4B FF CA 5D */	bl CHANSVmSetFloat
/* 8144EF94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EF98 | 40 82 00 08 */	bne .L_8144EFA0
/* 8144EF9C | 3B E0 00 01 */	li r31, 0x1
.L_8144EFA0:
/* 8144EFA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EFA4 | 7F E3 FB 78 */	mr r3, r31
/* 8144EFA8 | 48 1A A5 6D */	bl _restgpr_29
/* 8144EFAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144EFB0 | 7C 08 03 A6 */	mtlr r0
/* 8144EFB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144EFB8 | 4E 80 00 20 */	blr
.endfn VmMethod_floor

# .text:0x4A10 | 0x8144EFBC | size: 0x7C
.fn VmMethod_log, global
/* 8144EFBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144EFC0 | 7C 08 02 A6 */	mflr r0
/* 8144EFC4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144EFC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144EFCC | 48 1A A4 FD */	bl _savegpr_29
/* 8144EFD0 | 7C 7D 1B 78 */	mr r29, r3
/* 8144EFD4 | 7C BE 2B 78 */	mr r30, r5
/* 8144EFD8 | 38 80 00 00 */	li r4, 0x0
/* 8144EFDC | 4B FF D6 B5 */	bl CHANSVmGetArg
/* 8144EFE0 | 7C 65 1B 78 */	mr r5, r3
/* 8144EFE4 | 7F A3 EB 78 */	mr r3, r29
/* 8144EFE8 | 38 80 00 02 */	li r4, 0x2
/* 8144EFEC | 4B FF C8 F1 */	bl CHANSVmConvertObjectType
/* 8144EFF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144EFF4 | 3B E0 00 00 */	li r31, 0x0
/* 8144EFF8 | 41 82 00 24 */	beq .L_8144F01C
/* 8144EFFC | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144F000 | 48 1B DD 2D */	bl log
/* 8144F004 | 7F A3 EB 78 */	mr r3, r29
/* 8144F008 | 7F C4 F3 78 */	mr r4, r30
/* 8144F00C | 4B FF C9 E1 */	bl CHANSVmSetFloat
/* 8144F010 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F014 | 40 82 00 08 */	bne .L_8144F01C
/* 8144F018 | 3B E0 00 01 */	li r31, 0x1
.L_8144F01C:
/* 8144F01C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F020 | 7F E3 FB 78 */	mr r3, r31
/* 8144F024 | 48 1A A4 F1 */	bl _restgpr_29
/* 8144F028 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F02C | 7C 08 03 A6 */	mtlr r0
/* 8144F030 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F034 | 4E 80 00 20 */	blr
.endfn VmMethod_log

# .text:0x4A8C | 0x8144F038 | size: 0x144
.fn VmMethod_max, global
/* 8144F038 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F03C | 7C 08 02 A6 */	mflr r0
/* 8144F040 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F044 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F048 | 48 1A A4 7D */	bl _savegpr_28
/* 8144F04C | 7C 7C 1B 78 */	mr r28, r3
/* 8144F050 | 7C BD 2B 78 */	mr r29, r5
/* 8144F054 | 38 80 00 00 */	li r4, 0x0
/* 8144F058 | 4B FF D6 39 */	bl CHANSVmGetArg
/* 8144F05C | 7C 7E 1B 78 */	mr r30, r3
/* 8144F060 | 7F 83 E3 78 */	mr r3, r28
/* 8144F064 | 38 80 00 01 */	li r4, 0x1
/* 8144F068 | 4B FF D6 29 */	bl CHANSVmGetArg
/* 8144F06C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144F070 | 41 82 00 F0 */	beq .L_8144F160
/* 8144F074 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F078 | 41 82 00 E8 */	beq .L_8144F160
/* 8144F07C | 88 9E 00 08 */	lbz r4, 0x8(r30)
/* 8144F080 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 8144F084 | 7C 04 00 40 */	cmplw r4, r0
/* 8144F088 | 40 82 00 5C */	bne .L_8144F0E4
/* 8144F08C | 28 04 00 01 */	cmplwi r4, 0x1
/* 8144F090 | 40 82 00 54 */	bne .L_8144F0E4
/* 8144F094 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8144F098 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8144F09C | 80 FE 00 04 */	lwz r7, 0x4(r30)
/* 8144F0A0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8144F0A4 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8144F0A8 | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8144F0AC | 7C 86 38 10 */	subfc r4, r6, r7
/* 8144F0B0 | 7C A5 01 10 */	subfe r5, r5, r0
/* 8144F0B4 | 7C A0 01 10 */	subfe r5, r0, r0
/* 8144F0B8 | 7C A5 00 D1 */	neg. r5, r5
/* 8144F0BC | 41 82 00 08 */	beq .L_8144F0C4
/* 8144F0C0 | 7C 7E 1B 78 */	mr r30, r3
.L_8144F0C4:
/* 8144F0C4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8144F0C8 | 7F 83 E3 78 */	mr r3, r28
/* 8144F0CC | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8144F0D0 | 7F A4 EB 78 */	mr r4, r29
/* 8144F0D4 | 4B FF C8 C5 */	bl CHANSVmSetInteger
/* 8144F0D8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144F0DC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144F0E0 | 48 00 00 84 */	b .L_8144F164
.L_8144F0E4:
/* 8144F0E4 | 7F 83 E3 78 */	mr r3, r28
/* 8144F0E8 | 38 80 00 00 */	li r4, 0x0
/* 8144F0EC | 4B FF D5 A5 */	bl CHANSVmGetArg
/* 8144F0F0 | 7C 65 1B 78 */	mr r5, r3
/* 8144F0F4 | 7F 83 E3 78 */	mr r3, r28
/* 8144F0F8 | 38 80 00 02 */	li r4, 0x2
/* 8144F0FC | 4B FF C7 E1 */	bl CHANSVmConvertObjectType
/* 8144F100 | 7C 7E 1B 78 */	mr r30, r3
/* 8144F104 | 7F 83 E3 78 */	mr r3, r28
/* 8144F108 | 38 80 00 01 */	li r4, 0x1
/* 8144F10C | 4B FF D5 85 */	bl CHANSVmGetArg
/* 8144F110 | 7C 65 1B 78 */	mr r5, r3
/* 8144F114 | 7F 83 E3 78 */	mr r3, r28
/* 8144F118 | 38 80 00 02 */	li r4, 0x2
/* 8144F11C | 4B FF C7 C1 */	bl CHANSVmConvertObjectType
/* 8144F120 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144F124 | 3B E0 00 00 */	li r31, 0x0
/* 8144F128 | 41 82 00 30 */	beq .L_8144F158
/* 8144F12C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F130 | 41 82 00 28 */	beq .L_8144F158
/* 8144F134 | C8 3E 00 00 */	lfd f1, 0x0(r30)
/* 8144F138 | C8 43 00 00 */	lfd f2, 0x0(r3)
/* 8144F13C | 48 1B B6 C9 */	bl fmax
/* 8144F140 | 7F 83 E3 78 */	mr r3, r28
/* 8144F144 | 7F A4 EB 78 */	mr r4, r29
/* 8144F148 | 4B FF C8 A5 */	bl CHANSVmSetFloat
/* 8144F14C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F150 | 40 82 00 08 */	bne .L_8144F158
/* 8144F154 | 3B E0 00 01 */	li r31, 0x1
.L_8144F158:
/* 8144F158 | 7F E3 FB 78 */	mr r3, r31
/* 8144F15C | 48 00 00 08 */	b .L_8144F164
.L_8144F160:
/* 8144F160 | 38 60 00 00 */	li r3, 0x0
.L_8144F164:
/* 8144F164 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F168 | 48 1A A3 A9 */	bl _restgpr_28
/* 8144F16C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F170 | 7C 08 03 A6 */	mtlr r0
/* 8144F174 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F178 | 4E 80 00 20 */	blr
.endfn VmMethod_max

# .text:0x4BD0 | 0x8144F17C | size: 0x144
.fn VmMethod_min, global
/* 8144F17C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F180 | 7C 08 02 A6 */	mflr r0
/* 8144F184 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F188 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F18C | 48 1A A3 39 */	bl _savegpr_28
/* 8144F190 | 7C 7C 1B 78 */	mr r28, r3
/* 8144F194 | 7C BD 2B 78 */	mr r29, r5
/* 8144F198 | 38 80 00 00 */	li r4, 0x0
/* 8144F19C | 4B FF D4 F5 */	bl CHANSVmGetArg
/* 8144F1A0 | 7C 7E 1B 78 */	mr r30, r3
/* 8144F1A4 | 7F 83 E3 78 */	mr r3, r28
/* 8144F1A8 | 38 80 00 01 */	li r4, 0x1
/* 8144F1AC | 4B FF D4 E5 */	bl CHANSVmGetArg
/* 8144F1B0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144F1B4 | 41 82 00 F0 */	beq .L_8144F2A4
/* 8144F1B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F1BC | 41 82 00 E8 */	beq .L_8144F2A4
/* 8144F1C0 | 88 9E 00 08 */	lbz r4, 0x8(r30)
/* 8144F1C4 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 8144F1C8 | 7C 04 00 40 */	cmplw r4, r0
/* 8144F1CC | 40 82 00 5C */	bne .L_8144F228
/* 8144F1D0 | 28 04 00 01 */	cmplwi r4, 0x1
/* 8144F1D4 | 40 82 00 54 */	bne .L_8144F228
/* 8144F1D8 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8144F1DC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8144F1E0 | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8144F1E4 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8144F1E8 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8144F1EC | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8144F1F0 | 7C 86 20 10 */	subfc r4, r6, r4
/* 8144F1F4 | 7C A5 01 10 */	subfe r5, r5, r0
/* 8144F1F8 | 7C A0 01 10 */	subfe r5, r0, r0
/* 8144F1FC | 7C A5 00 D1 */	neg. r5, r5
/* 8144F200 | 41 82 00 08 */	beq .L_8144F208
/* 8144F204 | 7C 7E 1B 78 */	mr r30, r3
.L_8144F208:
/* 8144F208 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8144F20C | 7F 83 E3 78 */	mr r3, r28
/* 8144F210 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8144F214 | 7F A4 EB 78 */	mr r4, r29
/* 8144F218 | 4B FF C7 81 */	bl CHANSVmSetInteger
/* 8144F21C | 7C 60 00 34 */	cntlzw r0, r3
/* 8144F220 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144F224 | 48 00 00 84 */	b .L_8144F2A8
.L_8144F228:
/* 8144F228 | 7F 83 E3 78 */	mr r3, r28
/* 8144F22C | 38 80 00 00 */	li r4, 0x0
/* 8144F230 | 4B FF D4 61 */	bl CHANSVmGetArg
/* 8144F234 | 7C 65 1B 78 */	mr r5, r3
/* 8144F238 | 7F 83 E3 78 */	mr r3, r28
/* 8144F23C | 38 80 00 02 */	li r4, 0x2
/* 8144F240 | 4B FF C6 9D */	bl CHANSVmConvertObjectType
/* 8144F244 | 7C 7E 1B 78 */	mr r30, r3
/* 8144F248 | 7F 83 E3 78 */	mr r3, r28
/* 8144F24C | 38 80 00 01 */	li r4, 0x1
/* 8144F250 | 4B FF D4 41 */	bl CHANSVmGetArg
/* 8144F254 | 7C 65 1B 78 */	mr r5, r3
/* 8144F258 | 7F 83 E3 78 */	mr r3, r28
/* 8144F25C | 38 80 00 02 */	li r4, 0x2
/* 8144F260 | 4B FF C6 7D */	bl CHANSVmConvertObjectType
/* 8144F264 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144F268 | 3B E0 00 00 */	li r31, 0x0
/* 8144F26C | 41 82 00 30 */	beq .L_8144F29C
/* 8144F270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F274 | 41 82 00 28 */	beq .L_8144F29C
/* 8144F278 | C8 3E 00 00 */	lfd f1, 0x0(r30)
/* 8144F27C | C8 43 00 00 */	lfd f2, 0x0(r3)
/* 8144F280 | 48 1B B5 F1 */	bl fmin
/* 8144F284 | 7F 83 E3 78 */	mr r3, r28
/* 8144F288 | 7F A4 EB 78 */	mr r4, r29
/* 8144F28C | 4B FF C7 61 */	bl CHANSVmSetFloat
/* 8144F290 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F294 | 40 82 00 08 */	bne .L_8144F29C
/* 8144F298 | 3B E0 00 01 */	li r31, 0x1
.L_8144F29C:
/* 8144F29C | 7F E3 FB 78 */	mr r3, r31
/* 8144F2A0 | 48 00 00 08 */	b .L_8144F2A8
.L_8144F2A4:
/* 8144F2A4 | 38 60 00 00 */	li r3, 0x0
.L_8144F2A8:
/* 8144F2A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F2AC | 48 1A A2 65 */	bl _restgpr_28
/* 8144F2B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F2B4 | 7C 08 03 A6 */	mtlr r0
/* 8144F2B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F2BC | 4E 80 00 20 */	blr
.endfn VmMethod_min

# .text:0x4D14 | 0x8144F2C0 | size: 0xA8
.fn VmMethod_pow, global
/* 8144F2C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F2C4 | 7C 08 02 A6 */	mflr r0
/* 8144F2C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F2CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F2D0 | 48 1A A1 F5 */	bl _savegpr_28
/* 8144F2D4 | 7C 7C 1B 78 */	mr r28, r3
/* 8144F2D8 | 7C BD 2B 78 */	mr r29, r5
/* 8144F2DC | 38 80 00 00 */	li r4, 0x0
/* 8144F2E0 | 4B FF D3 B1 */	bl CHANSVmGetArg
/* 8144F2E4 | 7C 65 1B 78 */	mr r5, r3
/* 8144F2E8 | 7F 83 E3 78 */	mr r3, r28
/* 8144F2EC | 38 80 00 02 */	li r4, 0x2
/* 8144F2F0 | 4B FF C5 ED */	bl CHANSVmConvertObjectType
/* 8144F2F4 | 7C 7E 1B 78 */	mr r30, r3
/* 8144F2F8 | 7F 83 E3 78 */	mr r3, r28
/* 8144F2FC | 38 80 00 01 */	li r4, 0x1
/* 8144F300 | 4B FF D3 91 */	bl CHANSVmGetArg
/* 8144F304 | 7C 65 1B 78 */	mr r5, r3
/* 8144F308 | 7F 83 E3 78 */	mr r3, r28
/* 8144F30C | 38 80 00 02 */	li r4, 0x2
/* 8144F310 | 4B FF C5 CD */	bl CHANSVmConvertObjectType
/* 8144F314 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144F318 | 3B E0 00 00 */	li r31, 0x0
/* 8144F31C | 41 82 00 30 */	beq .L_8144F34C
/* 8144F320 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F324 | 41 82 00 28 */	beq .L_8144F34C
/* 8144F328 | C8 3E 00 00 */	lfd f1, 0x0(r30)
/* 8144F32C | C8 43 00 00 */	lfd f2, 0x0(r3)
/* 8144F330 | 48 1B DA 01 */	bl pow
/* 8144F334 | 7F 83 E3 78 */	mr r3, r28
/* 8144F338 | 7F A4 EB 78 */	mr r4, r29
/* 8144F33C | 4B FF C6 B1 */	bl CHANSVmSetFloat
/* 8144F340 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F344 | 40 82 00 08 */	bne .L_8144F34C
/* 8144F348 | 3B E0 00 01 */	li r31, 0x1
.L_8144F34C:
/* 8144F34C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F350 | 7F E3 FB 78 */	mr r3, r31
/* 8144F354 | 48 1A A1 BD */	bl _restgpr_28
/* 8144F358 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F35C | 7C 08 03 A6 */	mtlr r0
/* 8144F360 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F364 | 4E 80 00 20 */	blr
.endfn VmMethod_pow

# .text:0x4DBC | 0x8144F368 | size: 0x70
.fn VmMethod_random, global
/* 8144F368 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F36C | 7C 08 02 A6 */	mflr r0
/* 8144F370 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F374 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8144F378 | 7C BF 2B 78 */	mr r31, r5
/* 8144F37C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8144F380 | 7C 7E 1B 78 */	mr r30, r3
/* 8144F384 | 48 1B 19 3D */	bl rand
/* 8144F388 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8144F38C | 3C 00 43 30 */	lis r0, 0x4330
/* 8144F390 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8144F394 | 7F C3 F3 78 */	mr r3, r30
/* 8144F398 | C8 42 8B 90 */	lfd f2, lbl_81694F90@sda21(r0)
/* 8144F39C | 7F E4 FB 78 */	mr r4, r31
/* 8144F3A0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8144F3A4 | C8 02 8B 88 */	lfd f0, lbl_81694F88@sda21(r0)
/* 8144F3A8 | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 8144F3AC | FC 21 10 28 */	fsub f1, f1, f2
/* 8144F3B0 | FC 21 00 24 */	fdiv f1, f1, f0
/* 8144F3B4 | 4B FF C6 39 */	bl CHANSVmSetFloat
/* 8144F3B8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144F3BC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144F3C0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144F3C4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8144F3C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F3CC | 7C 08 03 A6 */	mtlr r0
/* 8144F3D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F3D4 | 4E 80 00 20 */	blr
.endfn VmMethod_random

# .text:0x4E2C | 0x8144F3D8 | size: 0x9C
.fn VmMethod_round, global
/* 8144F3D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144F3DC | 7C 08 02 A6 */	mflr r0
/* 8144F3E0 | 38 80 00 00 */	li r4, 0x0
/* 8144F3E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144F3E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144F3EC | 7C BF 2B 78 */	mr r31, r5
/* 8144F3F0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144F3F4 | 7C 7E 1B 78 */	mr r30, r3
/* 8144F3F8 | 4B FF D2 99 */	bl CHANSVmGetArg
/* 8144F3FC | 7C 65 1B 78 */	mr r5, r3
/* 8144F400 | 7F C3 F3 78 */	mr r3, r30
/* 8144F404 | 38 80 00 02 */	li r4, 0x2
/* 8144F408 | 4B FF C4 D5 */	bl CHANSVmConvertObjectType
/* 8144F40C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F410 | 41 82 00 48 */	beq .L_8144F458
/* 8144F414 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144F418 | C8 02 8B 28 */	lfd f0, lbl_81694F28@sda21(r0)
/* 8144F41C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8144F420 | 40 81 00 14 */	ble .L_8144F434
/* 8144F424 | C8 02 8B 98 */	lfd f0, lbl_81694F98@sda21(r0)
/* 8144F428 | FC 20 08 2A */	fadd f1, f0, f1
/* 8144F42C | 48 1B D4 65 */	bl floor
/* 8144F430 | 48 00 00 10 */	b .L_8144F440
.L_8144F434:
/* 8144F434 | C8 02 8B 98 */	lfd f0, lbl_81694F98@sda21(r0)
/* 8144F438 | FC 21 00 28 */	fsub f1, f1, f0
/* 8144F43C | 48 1B D2 15 */	bl ceil
.L_8144F440:
/* 8144F440 | 7F C3 F3 78 */	mr r3, r30
/* 8144F444 | 7F E4 FB 78 */	mr r4, r31
/* 8144F448 | 4B FF C5 A5 */	bl CHANSVmSetFloat
/* 8144F44C | 7C 60 00 34 */	cntlzw r0, r3
/* 8144F450 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144F454 | 48 00 00 08 */	b .L_8144F45C
.L_8144F458:
/* 8144F458 | 38 60 00 00 */	li r3, 0x0
.L_8144F45C:
/* 8144F45C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144F460 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144F464 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144F468 | 7C 08 03 A6 */	mtlr r0
/* 8144F46C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144F470 | 4E 80 00 20 */	blr
.endfn VmMethod_round

# .text:0x4EC8 | 0x8144F474 | size: 0x7C
.fn VmMethod_sin, global
/* 8144F474 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F478 | 7C 08 02 A6 */	mflr r0
/* 8144F47C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F480 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F484 | 48 1A A0 45 */	bl _savegpr_29
/* 8144F488 | 7C 7D 1B 78 */	mr r29, r3
/* 8144F48C | 7C BE 2B 78 */	mr r30, r5
/* 8144F490 | 38 80 00 00 */	li r4, 0x0
/* 8144F494 | 4B FF D1 FD */	bl CHANSVmGetArg
/* 8144F498 | 7C 65 1B 78 */	mr r5, r3
/* 8144F49C | 7F A3 EB 78 */	mr r3, r29
/* 8144F4A0 | 38 80 00 02 */	li r4, 0x2
/* 8144F4A4 | 4B FF C4 39 */	bl CHANSVmConvertObjectType
/* 8144F4A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F4AC | 3B E0 00 00 */	li r31, 0x0
/* 8144F4B0 | 41 82 00 24 */	beq .L_8144F4D4
/* 8144F4B4 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144F4B8 | 48 1B D7 11 */	bl sin
/* 8144F4BC | 7F A3 EB 78 */	mr r3, r29
/* 8144F4C0 | 7F C4 F3 78 */	mr r4, r30
/* 8144F4C4 | 4B FF C5 29 */	bl CHANSVmSetFloat
/* 8144F4C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F4CC | 40 82 00 08 */	bne .L_8144F4D4
/* 8144F4D0 | 3B E0 00 01 */	li r31, 0x1
.L_8144F4D4:
/* 8144F4D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F4D8 | 7F E3 FB 78 */	mr r3, r31
/* 8144F4DC | 48 1A A0 39 */	bl _restgpr_29
/* 8144F4E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F4E4 | 7C 08 03 A6 */	mtlr r0
/* 8144F4E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F4EC | 4E 80 00 20 */	blr
.endfn VmMethod_sin

# .text:0x4F44 | 0x8144F4F0 | size: 0x8C
.fn VmMethod_sqrt, global
/* 8144F4F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144F4F4 | 7C 08 02 A6 */	mflr r0
/* 8144F4F8 | 38 80 00 00 */	li r4, 0x0
/* 8144F4FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144F500 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144F504 | 7C BF 2B 78 */	mr r31, r5
/* 8144F508 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144F50C | 7C 7E 1B 78 */	mr r30, r3
/* 8144F510 | 4B FF D1 81 */	bl CHANSVmGetArg
/* 8144F514 | 7C 65 1B 78 */	mr r5, r3
/* 8144F518 | 7F C3 F3 78 */	mr r3, r30
/* 8144F51C | 38 80 00 02 */	li r4, 0x2
/* 8144F520 | 4B FF C3 BD */	bl CHANSVmConvertObjectType
/* 8144F524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F528 | 41 82 00 38 */	beq .L_8144F560
/* 8144F52C | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144F530 | C8 02 8B 28 */	lfd f0, lbl_81694F28@sda21(r0)
/* 8144F534 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8144F538 | 40 80 00 0C */	bge .L_8144F544
/* 8144F53C | C8 22 8B 08 */	lfd f1, lbl_81694F08@sda21(r0)
/* 8144F540 | 48 00 00 08 */	b .L_8144F548
.L_8144F544:
/* 8144F544 | 48 1B DA 3D */	bl sqrt
.L_8144F548:
/* 8144F548 | 7F C3 F3 78 */	mr r3, r30
/* 8144F54C | 7F E4 FB 78 */	mr r4, r31
/* 8144F550 | 4B FF C4 9D */	bl CHANSVmSetFloat
/* 8144F554 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144F558 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144F55C | 48 00 00 08 */	b .L_8144F564
.L_8144F560:
/* 8144F560 | 38 60 00 00 */	li r3, 0x0
.L_8144F564:
/* 8144F564 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144F568 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144F56C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144F570 | 7C 08 03 A6 */	mtlr r0
/* 8144F574 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144F578 | 4E 80 00 20 */	blr
.endfn VmMethod_sqrt

# .text:0x4FD0 | 0x8144F57C | size: 0x7C
.fn VmMethod_tan, global
/* 8144F57C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F580 | 7C 08 02 A6 */	mflr r0
/* 8144F584 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F588 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F58C | 48 1A 9F 3D */	bl _savegpr_29
/* 8144F590 | 7C 7D 1B 78 */	mr r29, r3
/* 8144F594 | 7C BE 2B 78 */	mr r30, r5
/* 8144F598 | 38 80 00 00 */	li r4, 0x0
/* 8144F59C | 4B FF D0 F5 */	bl CHANSVmGetArg
/* 8144F5A0 | 7C 65 1B 78 */	mr r5, r3
/* 8144F5A4 | 7F A3 EB 78 */	mr r3, r29
/* 8144F5A8 | 38 80 00 02 */	li r4, 0x2
/* 8144F5AC | 4B FF C3 31 */	bl CHANSVmConvertObjectType
/* 8144F5B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F5B4 | 3B E0 00 00 */	li r31, 0x0
/* 8144F5B8 | 41 82 00 24 */	beq .L_8144F5DC
/* 8144F5BC | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8144F5C0 | 48 1B D6 E1 */	bl tan
/* 8144F5C4 | 7F A3 EB 78 */	mr r3, r29
/* 8144F5C8 | 7F C4 F3 78 */	mr r4, r30
/* 8144F5CC | 4B FF C4 21 */	bl CHANSVmSetFloat
/* 8144F5D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F5D4 | 40 82 00 08 */	bne .L_8144F5DC
/* 8144F5D8 | 3B E0 00 01 */	li r31, 0x1
.L_8144F5DC:
/* 8144F5DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F5E0 | 7F E3 FB 78 */	mr r3, r31
/* 8144F5E4 | 48 1A 9F 31 */	bl _restgpr_29
/* 8144F5E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F5EC | 7C 08 03 A6 */	mtlr r0
/* 8144F5F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F5F4 | 4E 80 00 20 */	blr
.endfn VmMethod_tan

# .text:0x504C | 0x8144F5F8 | size: 0xA4
.fn VmCtor_String, global
/* 8144F5F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F5FC | 7C 08 02 A6 */	mflr r0
/* 8144F600 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F604 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F608 | 48 1A 9E C1 */	bl _savegpr_29
/* 8144F60C | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 8144F610 | 7C 7D 1B 78 */	mr r29, r3
/* 8144F614 | 7C BE 2B 78 */	mr r30, r5
/* 8144F618 | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 8144F61C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8144F620 | 41 82 00 4C */	beq .L_8144F66C
/* 8144F624 | 38 80 00 00 */	li r4, 0x0
/* 8144F628 | 4B FF D0 69 */	bl CHANSVmGetArg
/* 8144F62C | 7C 65 1B 78 */	mr r5, r3
/* 8144F630 | 7F A3 EB 78 */	mr r3, r29
/* 8144F634 | 38 80 00 03 */	li r4, 0x3
/* 8144F638 | 4B FF C2 A5 */	bl CHANSVmConvertObjectType
/* 8144F63C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F640 | 7C 65 1B 78 */	mr r5, r3
/* 8144F644 | 3B E0 00 00 */	li r31, 0x0
/* 8144F648 | 41 82 00 1C */	beq .L_8144F664
/* 8144F64C | 7F A3 EB 78 */	mr r3, r29
/* 8144F650 | 7F C4 F3 78 */	mr r4, r30
/* 8144F654 | 4B FF B8 45 */	bl CHANSVmCopyObject
/* 8144F658 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F65C | 41 82 00 08 */	beq .L_8144F664
/* 8144F660 | 3B E0 00 01 */	li r31, 0x1
.L_8144F664:
/* 8144F664 | 7F E3 FB 78 */	mr r3, r31
/* 8144F668 | 48 00 00 1C */	b .L_8144F684
.L_8144F66C:
/* 8144F66C | 38 80 00 00 */	li r4, 0x0
/* 8144F670 | 38 C0 00 03 */	li r6, 0x3
/* 8144F674 | 38 E0 00 00 */	li r7, 0x0
/* 8144F678 | 4B FF B7 5D */	bl CHANSVmNewObject
/* 8144F67C | 30 03 FF FF */	subic r0, r3, 0x1
/* 8144F680 | 7C 60 19 10 */	subfe r3, r0, r3
.L_8144F684:
/* 8144F684 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F688 | 48 1A 9E 8D */	bl _restgpr_29
/* 8144F68C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F690 | 7C 08 03 A6 */	mtlr r0
/* 8144F694 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F698 | 4E 80 00 20 */	blr
.endfn VmCtor_String

# .text:0x50F0 | 0x8144F69C | size: 0xEC
.fn VmMethod_pFromCharCode, global
/* 8144F69C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F6A0 | 7C 08 02 A6 */	mflr r0
/* 8144F6A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F6A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F6AC | 48 1A 9E 11 */	bl _savegpr_26
/* 8144F6B0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8144F6B4 | 7C 7A 1B 78 */	mr r26, r3
/* 8144F6B8 | 7C BB 2B 78 */	mr r27, r5
/* 8144F6BC | 41 82 00 B0 */	beq .L_8144F76C
/* 8144F6C0 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 8144F6C4 | 28 00 00 07 */	cmplwi r0, 0x7
/* 8144F6C8 | 40 82 00 A4 */	bne .L_8144F76C
/* 8144F6CC | 80 E3 00 60 */	lwz r7, 0x60(r3)
/* 8144F6D0 | 38 80 00 00 */	li r4, 0x0
/* 8144F6D4 | 38 C0 00 03 */	li r6, 0x3
/* 8144F6D8 | A3 A7 00 14 */	lhz r29, 0x14(r7)
/* 8144F6DC | 57 A7 08 3C */	slwi r7, r29, 1
/* 8144F6E0 | 4B FF B6 F5 */	bl CHANSVmNewObject
/* 8144F6E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F6E8 | 41 82 00 84 */	beq .L_8144F76C
/* 8144F6EC | 3B 80 00 00 */	li r28, 0x0
/* 8144F6F0 | 3B E0 00 00 */	li r31, 0x0
/* 8144F6F4 | 3F C0 00 01 */	lis r30, 0x1
/* 8144F6F8 | 48 00 00 64 */	b .L_8144F75C
.L_8144F6FC:
/* 8144F6FC | 7F 43 D3 78 */	mr r3, r26
/* 8144F700 | 7F 84 E3 78 */	mr r4, r28
/* 8144F704 | 4B FF CF 8D */	bl CHANSVmGetArg
/* 8144F708 | 7C 65 1B 78 */	mr r5, r3
/* 8144F70C | 7F 43 D3 78 */	mr r3, r26
/* 8144F710 | 38 80 00 01 */	li r4, 0x1
/* 8144F714 | 4B FF C1 C9 */	bl CHANSVmConvertObjectType
/* 8144F718 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F71C | 41 82 00 14 */	beq .L_8144F730
/* 8144F720 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8144F724 | 38 1E FF FF */	subi r0, r30, 0x1
/* 8144F728 | 7C 64 00 38 */	and r4, r3, r0
/* 8144F72C | 48 00 00 08 */	b .L_8144F734
.L_8144F730:
/* 8144F730 | 38 80 00 00 */	li r4, 0x0
.L_8144F734:
/* 8144F734 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8144F738 | 54 80 C6 3E */	extrwi r0, r4, 8, 16
/* 8144F73C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8144F740 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144F744 | 7C 03 F9 AE */	stbx r0, r3, r31
/* 8144F748 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8144F74C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8144F750 | 7C 60 FA 14 */	add r3, r0, r31
/* 8144F754 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8144F758 | 98 83 00 01 */	stb r4, 0x1(r3)
.L_8144F75C:
/* 8144F75C | 7C 1C E8 40 */	cmplw r28, r29
/* 8144F760 | 41 80 FF 9C */	blt .L_8144F6FC
/* 8144F764 | 38 60 00 01 */	li r3, 0x1
/* 8144F768 | 48 00 00 08 */	b .L_8144F770
.L_8144F76C:
/* 8144F76C | 38 60 00 00 */	li r3, 0x0
.L_8144F770:
/* 8144F770 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F774 | 48 1A 9D 95 */	bl _restgpr_26
/* 8144F778 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F77C | 7C 08 03 A6 */	mtlr r0
/* 8144F780 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F784 | 4E 80 00 20 */	blr
.endfn VmMethod_pFromCharCode

# .text:0x51DC | 0x8144F788 | size: 0x40
.fn VmMethod_length, global
/* 8144F788 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144F78C | 7C 08 02 A6 */	mflr r0
/* 8144F790 | 7C 86 23 78 */	mr r6, r4
/* 8144F794 | 7C A4 2B 78 */	mr r4, r5
/* 8144F798 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144F79C | 38 A0 00 00 */	li r5, 0x0
/* 8144F7A0 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 8144F7A4 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8144F7A8 | 54 06 F8 7E */	srwi r6, r0, 1
/* 8144F7AC | 4B FF C1 ED */	bl CHANSVmSetInteger
/* 8144F7B0 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144F7B4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144F7B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144F7BC | 7C 08 03 A6 */	mtlr r0
/* 8144F7C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144F7C4 | 4E 80 00 20 */	blr
.endfn VmMethod_length

# .text:0x521C | 0x8144F7C8 | size: 0xE8
.fn VmMethod_charAt, global
/* 8144F7C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F7CC | 7C 08 02 A6 */	mflr r0
/* 8144F7D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F7D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F7D8 | 48 1A 9C E9 */	bl _savegpr_27
/* 8144F7DC | 7C 9C 23 78 */	mr r28, r4
/* 8144F7E0 | 7C 7B 1B 78 */	mr r27, r3
/* 8144F7E4 | 7C BD 2B 78 */	mr r29, r5
/* 8144F7E8 | 3B C0 00 00 */	li r30, 0x0
/* 8144F7EC | 38 80 00 00 */	li r4, 0x0
/* 8144F7F0 | 4B FF CE A1 */	bl CHANSVmGetArg
/* 8144F7F4 | 7C 65 1B 78 */	mr r5, r3
/* 8144F7F8 | 7F 63 DB 78 */	mr r3, r27
/* 8144F7FC | 38 80 00 01 */	li r4, 0x1
/* 8144F800 | 4B FF C0 DD */	bl CHANSVmConvertObjectType
/* 8144F804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F808 | 41 82 00 8C */	beq .L_8144F894
/* 8144F80C | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 8144F810 | 38 80 00 00 */	li r4, 0x0
/* 8144F814 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8144F818 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144F81C | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 8144F820 | 57 E5 08 3C */	slwi r5, r31, 1
/* 8144F824 | 54 63 08 3C */	slwi r3, r3, 1
/* 8144F828 | 53 E3 0F FE */	rlwimi r3, r31, 1, 31, 31
/* 8144F82C | 7C 00 28 10 */	subfc r0, r0, r5
/* 8144F830 | 7C 04 19 10 */	subfe r0, r4, r3
/* 8144F834 | 7C 05 29 10 */	subfe r0, r5, r5
/* 8144F838 | 7C 00 00 D1 */	neg. r0, r0
/* 8144F83C | 41 82 00 08 */	beq .L_8144F844
/* 8144F840 | 3B C0 00 02 */	li r30, 0x2
.L_8144F844:
/* 8144F844 | 7F 63 DB 78 */	mr r3, r27
/* 8144F848 | 7F A5 EB 78 */	mr r5, r29
/* 8144F84C | 7F C7 F3 78 */	mr r7, r30
/* 8144F850 | 38 80 00 00 */	li r4, 0x0
/* 8144F854 | 38 C0 00 03 */	li r6, 0x3
/* 8144F858 | 4B FF B5 7D */	bl CHANSVmNewObject
/* 8144F85C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F860 | 41 82 00 34 */	beq .L_8144F894
/* 8144F864 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144F868 | 41 82 00 24 */	beq .L_8144F88C
/* 8144F86C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8144F870 | 57 E0 08 3C */	slwi r0, r31, 1
/* 8144F874 | 80 DD 00 00 */	lwz r6, 0x0(r29)
/* 8144F878 | 7F C5 F3 78 */	mr r5, r30
/* 8144F87C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8144F880 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8144F884 | 7C 84 02 14 */	add r4, r4, r0
/* 8144F888 | 4B EE 09 A9 */	bl memcpy
.L_8144F88C:
/* 8144F88C | 38 60 00 01 */	li r3, 0x1
/* 8144F890 | 48 00 00 08 */	b .L_8144F898
.L_8144F894:
/* 8144F894 | 38 60 00 00 */	li r3, 0x0
.L_8144F898:
/* 8144F898 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F89C | 48 1A 9C 71 */	bl _restgpr_27
/* 8144F8A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F8A4 | 7C 08 03 A6 */	mtlr r0
/* 8144F8A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F8AC | 4E 80 00 20 */	blr
.endfn VmMethod_charAt

# .text:0x5304 | 0x8144F8B0 | size: 0xC8
.fn VmMethod_charCodeAt, global
/* 8144F8B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144F8B4 | 7C 08 02 A6 */	mflr r0
/* 8144F8B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144F8BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F8C0 | 48 1A 9C 05 */	bl _savegpr_28
/* 8144F8C4 | 7C 9D 23 78 */	mr r29, r4
/* 8144F8C8 | 7C 7C 1B 78 */	mr r28, r3
/* 8144F8CC | 7C BE 2B 78 */	mr r30, r5
/* 8144F8D0 | 3B E0 00 00 */	li r31, 0x0
/* 8144F8D4 | 38 80 00 00 */	li r4, 0x0
/* 8144F8D8 | 4B FF CD B9 */	bl CHANSVmGetArg
/* 8144F8DC | 7C 65 1B 78 */	mr r5, r3
/* 8144F8E0 | 7F 83 E3 78 */	mr r3, r28
/* 8144F8E4 | 38 80 00 01 */	li r4, 0x1
/* 8144F8E8 | 4B FF BF F5 */	bl CHANSVmConvertObjectType
/* 8144F8EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F8F0 | 41 82 00 6C */	beq .L_8144F95C
/* 8144F8F4 | 80 FD 00 00 */	lwz r7, 0x0(r29)
/* 8144F8F8 | 38 80 00 00 */	li r4, 0x0
/* 8144F8FC | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8144F900 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144F904 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 8144F908 | 54 C5 08 3C */	slwi r5, r6, 1
/* 8144F90C | 54 63 08 3C */	slwi r3, r3, 1
/* 8144F910 | 50 C3 0F FE */	rlwimi r3, r6, 1, 31, 31
/* 8144F914 | 7C 00 28 10 */	subfc r0, r0, r5
/* 8144F918 | 7C 04 19 10 */	subfe r0, r4, r3
/* 8144F91C | 7C 05 29 10 */	subfe r0, r5, r5
/* 8144F920 | 7C 00 00 D1 */	neg. r0, r0
/* 8144F924 | 41 82 00 18 */	beq .L_8144F93C
/* 8144F928 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8144F92C | 7C 60 2A 14 */	add r3, r0, r5
/* 8144F930 | 7C 05 00 AE */	lbzx r0, r5, r0
/* 8144F934 | 8B E3 00 01 */	lbz r31, 0x1(r3)
/* 8144F938 | 50 1F 44 2E */	rlwimi r31, r0, 8, 16, 23
.L_8144F93C:
/* 8144F93C | 7F 83 E3 78 */	mr r3, r28
/* 8144F940 | 7F C4 F3 78 */	mr r4, r30
/* 8144F944 | 7F E6 FB 78 */	mr r6, r31
/* 8144F948 | 38 A0 00 00 */	li r5, 0x0
/* 8144F94C | 4B FF C0 4D */	bl CHANSVmSetInteger
/* 8144F950 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144F954 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144F958 | 48 00 00 08 */	b .L_8144F960
.L_8144F95C:
/* 8144F95C | 38 60 00 00 */	li r3, 0x0
.L_8144F960:
/* 8144F960 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144F964 | 48 1A 9B AD */	bl _restgpr_28
/* 8144F968 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144F96C | 7C 08 03 A6 */	mtlr r0
/* 8144F970 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144F974 | 4E 80 00 20 */	blr
.endfn VmMethod_charCodeAt

# .text:0x53CC | 0x8144F978 | size: 0x88
.fn CHANSVmStringObjectDup, global
/* 8144F978 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144F97C | 7C 08 02 A6 */	mflr r0
/* 8144F980 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144F984 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8144F988 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144F98C | 3B E0 00 00 */	li r31, 0x0
/* 8144F990 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8144F994 | 7C BE 2B 78 */	mr r30, r5
/* 8144F998 | 41 82 00 4C */	beq .L_8144F9E4
/* 8144F99C | 88 05 00 08 */	lbz r0, 0x8(r5)
/* 8144F9A0 | 28 00 00 03 */	cmplwi r0, 0x3
/* 8144F9A4 | 40 82 00 40 */	bne .L_8144F9E4
/* 8144F9A8 | 80 FE 00 00 */	lwz r7, 0x0(r30)
/* 8144F9AC | 7C 85 23 78 */	mr r5, r4
/* 8144F9B0 | 38 80 00 00 */	li r4, 0x0
/* 8144F9B4 | 38 C0 00 03 */	li r6, 0x3
/* 8144F9B8 | 80 E7 00 04 */	lwz r7, 0x4(r7)
/* 8144F9BC | 4B FF B4 19 */	bl CHANSVmNewObject
/* 8144F9C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144F9C4 | 7C 7F 1B 78 */	mr r31, r3
/* 8144F9C8 | 41 82 00 1C */	beq .L_8144F9E4
/* 8144F9CC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8144F9D0 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8144F9D4 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8144F9D8 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8144F9DC | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 8144F9E0 | 4B EE 08 51 */	bl memcpy
.L_8144F9E4:
/* 8144F9E4 | 7F E3 FB 78 */	mr r3, r31
/* 8144F9E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144F9EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8144F9F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144F9F4 | 7C 08 03 A6 */	mtlr r0
/* 8144F9F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144F9FC | 4E 80 00 20 */	blr
.endfn CHANSVmStringObjectDup

# .text:0x5454 | 0x8144FA00 | size: 0x1A4
.fn CHANSVm_8144FA00, global
/* 8144FA00 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8144FA04 | 7C 08 02 A6 */	mflr r0
/* 8144FA08 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8144FA0C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144FA10 | 48 1A 9A A9 */	bl _savegpr_25
/* 8144FA14 | 7C 9F 23 78 */	mr r31, r4
/* 8144FA18 | 7C 7C 1B 78 */	mr r28, r3
/* 8144FA1C | 7C BD 2B 78 */	mr r29, r5
/* 8144FA20 | 7C DE 33 78 */	mr r30, r6
/* 8144FA24 | 7C F9 3B 78 */	mr r25, r7
/* 8144FA28 | 3B 40 00 00 */	li r26, 0x0
/* 8144FA2C | 38 80 00 00 */	li r4, 0x0
/* 8144FA30 | 4B FF CC 61 */	bl CHANSVmGetArg
/* 8144FA34 | 7C 65 1B 78 */	mr r5, r3
/* 8144FA38 | 7F 83 E3 78 */	mr r3, r28
/* 8144FA3C | 38 80 00 03 */	li r4, 0x3
/* 8144FA40 | 4B FF BE 9D */	bl CHANSVmConvertObjectType
/* 8144FA44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144FA48 | 7C 7B 1B 78 */	mr r27, r3
/* 8144FA4C | 41 82 01 18 */	beq .L_8144FB64
/* 8144FA50 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8144FA54 | 40 82 00 24 */	bne .L_8144FA78
/* 8144FA58 | 7F 83 E3 78 */	mr r3, r28
/* 8144FA5C | 38 80 00 01 */	li r4, 0x1
/* 8144FA60 | 4B FF CC 31 */	bl CHANSVmGetArg
/* 8144FA64 | 7C 65 1B 78 */	mr r5, r3
/* 8144FA68 | 7F 83 E3 78 */	mr r3, r28
/* 8144FA6C | 38 80 00 01 */	li r4, 0x1
/* 8144FA70 | 4B FF BE 6D */	bl CHANSVmConvertObjectType
/* 8144FA74 | 7C 7A 1B 78 */	mr r26, r3
.L_8144FA78:
/* 8144FA78 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8144FA7C | 20 1E 00 00 */	subfic r0, r30, 0x0
/* 8144FA80 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8144FA84 | 83 E6 00 04 */	lwz r31, 0x4(r6)
/* 8144FA88 | 7C 00 01 10 */	subfe r0, r0, r0
/* 8144FA8C | 7F F9 00 78 */	andc r25, r31, r0
/* 8144FA90 | 41 82 00 44 */	beq .L_8144FAD4
/* 8144FA94 | 3C 60 80 00 */	lis r3, 0x8000
/* 8144FA98 | 80 BA 00 04 */	lwz r5, 0x4(r26)
/* 8144FA9C | 38 63 FF FF */	subi r3, r3, 0x1
/* 8144FAA0 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8144FAA4 | 7C 05 18 10 */	subfc r0, r5, r3
/* 8144FAA8 | 38 00 00 00 */	li r0, 0x0
/* 8144FAAC | 7C 04 01 10 */	subfe r0, r4, r0
/* 8144FAB0 | 7C 03 19 10 */	subfe r0, r3, r3
/* 8144FAB4 | 7C 00 00 D1 */	neg. r0, r0
/* 8144FAB8 | 40 82 00 18 */	bne .L_8144FAD0
/* 8144FABC | 54 B9 08 3C */	slwi r25, r5, 1
/* 8144FAC0 | 7C 19 F8 40 */	cmplw r25, r31
/* 8144FAC4 | 40 81 00 10 */	ble .L_8144FAD4
/* 8144FAC8 | 7F F9 FB 78 */	mr r25, r31
/* 8144FACC | 48 00 00 08 */	b .L_8144FAD4
.L_8144FAD0:
/* 8144FAD0 | 3B 20 00 00 */	li r25, 0x0
.L_8144FAD4:
/* 8144FAD4 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8144FAD8 | 83 43 00 04 */	lwz r26, 0x4(r3)
/* 8144FADC | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8144FAE0 | 41 82 00 90 */	beq .L_8144FB70
/* 8144FAE4 | 7C 1F D0 40 */	cmplw r31, r26
/* 8144FAE8 | 41 80 00 7C */	blt .L_8144FB64
/* 8144FAEC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8144FAF0 | 83 66 00 00 */	lwz r27, 0x0(r6)
/* 8144FAF4 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 8144FAF8 | 41 82 00 34 */	beq .L_8144FB2C
/* 8144FAFC | 48 00 00 20 */	b .L_8144FB1C
.L_8144FB00:
/* 8144FB00 | 7F C4 F3 78 */	mr r4, r30
/* 8144FB04 | 7F 45 D3 78 */	mr r5, r26
/* 8144FB08 | 7C 7B CA 14 */	add r3, r27, r25
/* 8144FB0C | 48 1A E6 C9 */	bl memcmp
/* 8144FB10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144FB14 | 41 82 00 5C */	beq .L_8144FB70
/* 8144FB18 | 3B 39 00 02 */	addi r25, r25, 0x2
.L_8144FB1C:
/* 8144FB1C | 7C 19 D2 14 */	add r0, r25, r26
/* 8144FB20 | 7C 00 F8 40 */	cmplw r0, r31
/* 8144FB24 | 40 81 FF DC */	ble .L_8144FB00
/* 8144FB28 | 48 00 00 3C */	b .L_8144FB64
.L_8144FB2C:
/* 8144FB2C | 7C 19 D2 14 */	add r0, r25, r26
/* 8144FB30 | 7C 00 F8 40 */	cmplw r0, r31
/* 8144FB34 | 40 81 00 08 */	ble .L_8144FB3C
/* 8144FB38 | 7F 3A F8 50 */	subf r25, r26, r31
.L_8144FB3C:
/* 8144FB3C | 7F C4 F3 78 */	mr r4, r30
/* 8144FB40 | 7F 45 D3 78 */	mr r5, r26
/* 8144FB44 | 7C 7B CA 14 */	add r3, r27, r25
/* 8144FB48 | 48 1A E6 8D */	bl memcmp
/* 8144FB4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144FB50 | 41 82 00 20 */	beq .L_8144FB70
/* 8144FB54 | 28 19 00 02 */	cmplwi r25, 0x2
/* 8144FB58 | 41 80 00 0C */	blt .L_8144FB64
/* 8144FB5C | 3B 39 FF FE */	subi r25, r25, 0x2
/* 8144FB60 | 4B FF FF DC */	b .L_8144FB3C
.L_8144FB64:
/* 8144FB64 | 38 C0 FF FF */	li r6, -0x1
/* 8144FB68 | 38 A0 FF FF */	li r5, -0x1
/* 8144FB6C | 48 00 00 0C */	b .L_8144FB78
.L_8144FB70:
/* 8144FB70 | 57 26 F8 7E */	srwi r6, r25, 1
/* 8144FB74 | 38 A0 00 00 */	li r5, 0x0
.L_8144FB78:
/* 8144FB78 | 7F 83 E3 78 */	mr r3, r28
/* 8144FB7C | 7F A4 EB 78 */	mr r4, r29
/* 8144FB80 | 4B FF BE 19 */	bl CHANSVmSetInteger
/* 8144FB84 | 7C 60 00 34 */	cntlzw r0, r3
/* 8144FB88 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8144FB8C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144FB90 | 48 1A 99 75 */	bl _restgpr_25
/* 8144FB94 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8144FB98 | 7C 08 03 A6 */	mtlr r0
/* 8144FB9C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8144FBA0 | 4E 80 00 20 */	blr
.endfn CHANSVm_8144FA00

# .text:0x55F8 | 0x8144FBA4 | size: 0xC
.fn VmMethod_indexOf, global
/* 8144FBA4 | 38 C0 00 01 */	li r6, 0x1
/* 8144FBA8 | 38 E0 00 00 */	li r7, 0x0
/* 8144FBAC | 4B FF FE 54 */	b CHANSVm_8144FA00
.endfn VmMethod_indexOf

# .text:0x5604 | 0x8144FBB0 | size: 0xC
.fn VmMethod_lastIndexOf, global
/* 8144FBB0 | 38 C0 00 00 */	li r6, 0x0
/* 8144FBB4 | 38 E0 00 00 */	li r7, 0x0
/* 8144FBB8 | 4B FF FE 48 */	b CHANSVm_8144FA00
.endfn VmMethod_lastIndexOf

# .text:0x5610 | 0x8144FBBC | size: 0xC
.fn VmMethod_searc, global
/* 8144FBBC | 38 C0 00 01 */	li r6, 0x1
/* 8144FBC0 | 38 E0 00 01 */	li r7, 0x1
/* 8144FBC4 | 4B FF FE 3C */	b CHANSVm_8144FA00
.endfn VmMethod_searc

# .text:0x561C | 0x8144FBC8 | size: 0x210
.fn VmMethod_replace, global
/* 8144FBC8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8144FBCC | 7C 08 02 A6 */	mflr r0
/* 8144FBD0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8144FBD4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8144FBD8 | 48 1A 98 C9 */	bl _savegpr_19
/* 8144FBDC | 80 C3 00 60 */	lwz r6, 0x60(r3)
/* 8144FBE0 | 7C 7B 1B 78 */	mr r27, r3
/* 8144FBE4 | 7C 93 23 78 */	mr r19, r4
/* 8144FBE8 | 7C BC 2B 78 */	mr r28, r5
/* 8144FBEC | A0 06 00 14 */	lhz r0, 0x14(r6)
/* 8144FBF0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8144FBF4 | 41 80 01 AC */	blt .L_8144FDA0
/* 8144FBF8 | 38 80 00 00 */	li r4, 0x0
/* 8144FBFC | 4B FF CA 95 */	bl CHANSVmGetArg
/* 8144FC00 | 7C 65 1B 78 */	mr r5, r3
/* 8144FC04 | 7F 63 DB 78 */	mr r3, r27
/* 8144FC08 | 38 80 00 03 */	li r4, 0x3
/* 8144FC0C | 4B FF BC D1 */	bl CHANSVmConvertObjectType
/* 8144FC10 | 7C 7D 1B 78 */	mr r29, r3
/* 8144FC14 | 7F 63 DB 78 */	mr r3, r27
/* 8144FC18 | 38 80 00 01 */	li r4, 0x1
/* 8144FC1C | 4B FF CA 75 */	bl CHANSVmGetArg
/* 8144FC20 | 7C 65 1B 78 */	mr r5, r3
/* 8144FC24 | 7F 63 DB 78 */	mr r3, r27
/* 8144FC28 | 38 80 00 03 */	li r4, 0x3
/* 8144FC2C | 4B FF BC B1 */	bl CHANSVmConvertObjectType
/* 8144FC30 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8144FC34 | 41 82 01 6C */	beq .L_8144FDA0
/* 8144FC38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144FC3C | 41 82 01 64 */	beq .L_8144FDA0
/* 8144FC40 | 80 B3 00 00 */	lwz r5, 0x0(r19)
/* 8144FC44 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8144FC48 | 83 25 00 04 */	lwz r25, 0x4(r5)
/* 8144FC4C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8144FC50 | 82 E4 00 04 */	lwz r23, 0x4(r4)
/* 8144FC54 | 83 E5 00 00 */	lwz r31, 0x0(r5)
/* 8144FC58 | 7C 19 B8 40 */	cmplw r25, r23
/* 8144FC5C | 83 C4 00 00 */	lwz r30, 0x0(r4)
/* 8144FC60 | 83 A3 00 00 */	lwz r29, 0x0(r3)
/* 8144FC64 | 82 A3 00 04 */	lwz r21, 0x4(r3)
/* 8144FC68 | 41 80 01 38 */	blt .L_8144FDA0
/* 8144FC6C | 3A 60 00 00 */	li r19, 0x0
/* 8144FC70 | 3A 80 00 00 */	li r20, 0x0
.L_8144FC74:
/* 8144FC74 | 3A C0 00 00 */	li r22, 0x0
/* 8144FC78 | 3B 00 00 00 */	li r24, 0x0
/* 8144FC7C | 48 00 00 94 */	b .L_8144FD10
.L_8144FC80:
/* 8144FC80 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 8144FC84 | 41 82 00 20 */	beq .L_8144FCA4
/* 8144FC88 | 7F 5F C2 14 */	add r26, r31, r24
/* 8144FC8C | 7F C4 F3 78 */	mr r4, r30
/* 8144FC90 | 7F 43 D3 78 */	mr r3, r26
/* 8144FC94 | 7E E5 BB 78 */	mr r5, r23
/* 8144FC98 | 48 1A E5 3D */	bl memcmp
/* 8144FC9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144FCA0 | 40 82 00 44 */	bne .L_8144FCE4
.L_8144FCA4:
/* 8144FCA4 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8144FCA8 | 41 82 00 2C */	beq .L_8144FCD4
/* 8144FCAC | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8144FCB0 | 41 82 00 20 */	beq .L_8144FCD0
/* 8144FCB4 | 7C 16 AA 14 */	add r0, r22, r21
/* 8144FCB8 | 7C 00 A0 40 */	cmplw r0, r20
/* 8144FCBC | 41 81 01 00 */	bgt .L_8144FDBC
/* 8144FCC0 | 7F A4 EB 78 */	mr r4, r29
/* 8144FCC4 | 7E A5 AB 78 */	mr r5, r21
/* 8144FCC8 | 7C 73 B2 14 */	add r3, r19, r22
/* 8144FCCC | 4B EE 05 65 */	bl memcpy
.L_8144FCD0:
/* 8144FCD0 | 7E D6 AA 14 */	add r22, r22, r21
.L_8144FCD4:
/* 8144FCD4 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 8144FCD8 | 41 82 00 44 */	beq .L_8144FD1C
/* 8144FCDC | 7F 18 BA 14 */	add r24, r24, r23
/* 8144FCE0 | 48 00 00 30 */	b .L_8144FD10
.L_8144FCE4:
/* 8144FCE4 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8144FCE8 | 41 82 00 20 */	beq .L_8144FD08
/* 8144FCEC | 38 16 00 02 */	addi r0, r22, 0x2
/* 8144FCF0 | 7C 00 A0 40 */	cmplw r0, r20
/* 8144FCF4 | 41 81 00 C8 */	bgt .L_8144FDBC
/* 8144FCF8 | 7F 44 D3 78 */	mr r4, r26
/* 8144FCFC | 7C 73 B2 14 */	add r3, r19, r22
/* 8144FD00 | 38 A0 00 02 */	li r5, 0x2
/* 8144FD04 | 4B EE 05 2D */	bl memcpy
.L_8144FD08:
/* 8144FD08 | 3B 18 00 02 */	addi r24, r24, 0x2
/* 8144FD0C | 3A D6 00 02 */	addi r22, r22, 0x2
.L_8144FD10:
/* 8144FD10 | 7C 18 BA 14 */	add r0, r24, r23
/* 8144FD14 | 7C 00 C8 40 */	cmplw r0, r25
/* 8144FD18 | 40 81 FF 68 */	ble .L_8144FC80
.L_8144FD1C:
/* 8144FD1C | 7C 18 C8 40 */	cmplw r24, r25
/* 8144FD20 | 40 80 00 30 */	bge .L_8144FD50
/* 8144FD24 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8144FD28 | 7F 58 C8 50 */	subf r26, r24, r25
/* 8144FD2C | 41 82 00 20 */	beq .L_8144FD4C
/* 8144FD30 | 7C 16 D2 14 */	add r0, r22, r26
/* 8144FD34 | 7C 00 A0 40 */	cmplw r0, r20
/* 8144FD38 | 41 81 00 84 */	bgt .L_8144FDBC
/* 8144FD3C | 7F 45 D3 78 */	mr r5, r26
/* 8144FD40 | 7C 73 B2 14 */	add r3, r19, r22
/* 8144FD44 | 7C 9F C2 14 */	add r4, r31, r24
/* 8144FD48 | 4B EE 04 E9 */	bl memcpy
.L_8144FD4C:
/* 8144FD4C | 7E D6 D2 14 */	add r22, r22, r26
.L_8144FD50:
/* 8144FD50 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8144FD54 | 40 82 00 34 */	bne .L_8144FD88
/* 8144FD58 | 7E D4 B3 78 */	mr r20, r22
/* 8144FD5C | 7F 63 DB 78 */	mr r3, r27
/* 8144FD60 | 7F 85 E3 78 */	mr r5, r28
/* 8144FD64 | 7E C7 B3 78 */	mr r7, r22
/* 8144FD68 | 38 80 00 00 */	li r4, 0x0
/* 8144FD6C | 38 C0 00 03 */	li r6, 0x3
/* 8144FD70 | 4B FF B0 65 */	bl CHANSVmNewObject
/* 8144FD74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144FD78 | 41 82 00 44 */	beq .L_8144FDBC
/* 8144FD7C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8144FD80 | 82 63 00 00 */	lwz r19, 0x0(r3)
/* 8144FD84 | 4B FF FE F0 */	b .L_8144FC74
.L_8144FD88:
/* 8144FD88 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8144FD8C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8144FD90 | 7C 00 B0 50 */	subf r0, r0, r22
/* 8144FD94 | 7C 00 00 34 */	cntlzw r0, r0
/* 8144FD98 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8144FD9C | 48 00 00 24 */	b .L_8144FDC0
.L_8144FDA0:
/* 8144FDA0 | 7F 63 DB 78 */	mr r3, r27
/* 8144FDA4 | 7F 84 E3 78 */	mr r4, r28
/* 8144FDA8 | 7E 65 9B 78 */	mr r5, r19
/* 8144FDAC | 4B FF FB CD */	bl CHANSVmStringObjectDup
/* 8144FDB0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8144FDB4 | 7C 60 19 10 */	subfe r3, r0, r3
/* 8144FDB8 | 48 00 00 08 */	b .L_8144FDC0
.L_8144FDBC:
/* 8144FDBC | 38 60 00 00 */	li r3, 0x0
.L_8144FDC0:
/* 8144FDC0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8144FDC4 | 48 1A 97 29 */	bl _restgpr_19
/* 8144FDC8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8144FDCC | 7C 08 03 A6 */	mtlr r0
/* 8144FDD0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8144FDD4 | 4E 80 00 20 */	blr
.endfn VmMethod_replace

# .text:0x582C | 0x8144FDD8 | size: 0x1E4
.fn VmMethod_splice, global
/* 8144FDD8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144FDDC | 7C 08 02 A6 */	mflr r0
/* 8144FDE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144FDE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144FDE8 | 48 1A 96 D9 */	bl _savegpr_27
/* 8144FDEC | 7C 9D 23 78 */	mr r29, r4
/* 8144FDF0 | 7C 7C 1B 78 */	mr r28, r3
/* 8144FDF4 | 7C BE 2B 78 */	mr r30, r5
/* 8144FDF8 | 38 80 00 00 */	li r4, 0x0
/* 8144FDFC | 4B FF C8 95 */	bl CHANSVmGetArg
/* 8144FE00 | 7C 65 1B 78 */	mr r5, r3
/* 8144FE04 | 7F 83 E3 78 */	mr r3, r28
/* 8144FE08 | 38 80 00 01 */	li r4, 0x1
/* 8144FE0C | 4B FF BA D1 */	bl CHANSVmConvertObjectType
/* 8144FE10 | 7C 7B 1B 78 */	mr r27, r3
/* 8144FE14 | 7F 83 E3 78 */	mr r3, r28
/* 8144FE18 | 38 80 00 01 */	li r4, 0x1
/* 8144FE1C | 4B FF C8 75 */	bl CHANSVmGetArg
/* 8144FE20 | 7C 65 1B 78 */	mr r5, r3
/* 8144FE24 | 7F 83 E3 78 */	mr r3, r28
/* 8144FE28 | 38 80 00 01 */	li r4, 0x1
/* 8144FE2C | 4B FF BA B1 */	bl CHANSVmConvertObjectType
/* 8144FE30 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8144FE34 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8144FE38 | 3B E0 00 00 */	li r31, 0x0
/* 8144FE3C | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8144FE40 | 41 82 00 7C */	beq .L_8144FEBC
/* 8144FE44 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 8144FE48 | 38 E0 00 00 */	li r7, 0x0
/* 8144FE4C | 80 BB 00 04 */	lwz r5, 0x4(r27)
/* 8144FE50 | 6C E6 80 00 */	xoris r6, r7, 0x8000
/* 8144FE54 | 54 88 08 3C */	slwi r8, r4, 1
/* 8144FE58 | 54 BF 08 3C */	slwi r31, r5, 1
/* 8144FE5C | 50 A8 0F FE */	rlwimi r8, r5, 1, 31, 31
/* 8144FE60 | 6D 05 80 00 */	xoris r5, r8, 0x8000
/* 8144FE64 | 7C 9F 00 10 */	subfc r4, r31, r0
/* 8144FE68 | 7C A5 31 10 */	subfe r5, r5, r6
/* 8144FE6C | 7C A6 31 10 */	subfe r5, r6, r6
/* 8144FE70 | 7C A5 00 D1 */	neg. r5, r5
/* 8144FE74 | 41 82 00 0C */	beq .L_8144FE80
/* 8144FE78 | 7C 1F 03 78 */	mr r31, r0
/* 8144FE7C | 48 00 00 40 */	b .L_8144FEBC
.L_8144FE80:
/* 8144FE80 | 6D 04 80 00 */	xoris r4, r8, 0x8000
/* 8144FE84 | 7C A7 F8 10 */	subfc r5, r7, r31
/* 8144FE88 | 7C A6 21 10 */	subfe r5, r6, r4
/* 8144FE8C | 7C A4 21 10 */	subfe r5, r4, r4
/* 8144FE90 | 7C A5 00 D1 */	neg. r5, r5
/* 8144FE94 | 41 82 00 28 */	beq .L_8144FEBC
/* 8144FE98 | 7F FF 00 14 */	addc r31, r31, r0
/* 8144FE9C | 7C 88 39 14 */	adde r4, r8, r7
/* 8144FEA0 | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8144FEA4 | 7C A7 F8 10 */	subfc r5, r7, r31
/* 8144FEA8 | 7C A6 21 10 */	subfe r5, r6, r4
/* 8144FEAC | 7C A4 21 10 */	subfe r5, r4, r4
/* 8144FEB0 | 7C A5 00 D1 */	neg. r5, r5
/* 8144FEB4 | 41 82 00 08 */	beq .L_8144FEBC
/* 8144FEB8 | 3B E0 00 00 */	li r31, 0x0
.L_8144FEBC:
/* 8144FEBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144FEC0 | 41 82 00 80 */	beq .L_8144FF40
/* 8144FEC4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8144FEC8 | 38 C0 00 00 */	li r6, 0x0
/* 8144FECC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8144FED0 | 6C C5 80 00 */	xoris r5, r6, 0x8000
/* 8144FED4 | 54 87 08 3C */	slwi r7, r4, 1
/* 8144FED8 | 50 67 0F FE */	rlwimi r7, r3, 1, 31, 31
/* 8144FEDC | 54 68 08 3C */	slwi r8, r3, 1
/* 8144FEE0 | 6C E4 80 00 */	xoris r4, r7, 0x8000
/* 8144FEE4 | 7C 68 00 10 */	subfc r3, r8, r0
/* 8144FEE8 | 7C 84 29 10 */	subfe r4, r4, r5
/* 8144FEEC | 7C 85 29 10 */	subfe r4, r5, r5
/* 8144FEF0 | 7C 84 00 D1 */	neg. r4, r4
/* 8144FEF4 | 41 82 00 0C */	beq .L_8144FF00
/* 8144FEF8 | 7C 08 03 78 */	mr r8, r0
/* 8144FEFC | 48 00 00 40 */	b .L_8144FF3C
.L_8144FF00:
/* 8144FF00 | 6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8144FF04 | 7C 86 40 10 */	subfc r4, r6, r8
/* 8144FF08 | 7C 85 19 10 */	subfe r4, r5, r3
/* 8144FF0C | 7C 83 19 10 */	subfe r4, r3, r3
/* 8144FF10 | 7C 84 00 D1 */	neg. r4, r4
/* 8144FF14 | 41 82 00 28 */	beq .L_8144FF3C
/* 8144FF18 | 7D 08 00 14 */	addc r8, r8, r0
/* 8144FF1C | 7C 07 31 14 */	adde r0, r7, r6
/* 8144FF20 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8144FF24 | 7C 66 40 10 */	subfc r3, r6, r8
/* 8144FF28 | 7C 65 01 10 */	subfe r3, r5, r0
/* 8144FF2C | 7C 60 01 10 */	subfe r3, r0, r0
/* 8144FF30 | 7C 63 00 D1 */	neg. r3, r3
/* 8144FF34 | 41 82 00 08 */	beq .L_8144FF3C
/* 8144FF38 | 39 00 00 00 */	li r8, 0x0
.L_8144FF3C:
/* 8144FF3C | 7D 00 43 78 */	mr r0, r8
.L_8144FF40:
/* 8144FF40 | 7C 60 F8 10 */	subfc r3, r0, r31
/* 8144FF44 | 7C 9F 00 50 */	subf r4, r31, r0
/* 8144FF48 | 7C A0 01 94 */	addze r5, r0
/* 8144FF4C | 38 C0 00 03 */	li r6, 0x3
/* 8144FF50 | 7C 05 00 50 */	subf r0, r5, r0
/* 8144FF54 | 7F 83 E3 78 */	mr r3, r28
/* 8144FF58 | 7C 9B 00 78 */	andc r27, r4, r0
/* 8144FF5C | 7F C5 F3 78 */	mr r5, r30
/* 8144FF60 | 38 80 00 00 */	li r4, 0x0
/* 8144FF64 | 7F 67 DB 78 */	mr r7, r27
/* 8144FF68 | 4B FF AE 6D */	bl CHANSVmNewObject
/* 8144FF6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8144FF70 | 41 82 00 30 */	beq .L_8144FFA0
/* 8144FF74 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8144FF78 | 41 82 00 20 */	beq .L_8144FF98
/* 8144FF7C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8144FF80 | 7F 65 DB 78 */	mr r5, r27
/* 8144FF84 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8144FF88 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8144FF8C | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8144FF90 | 7C 80 FA 14 */	add r4, r0, r31
/* 8144FF94 | 4B EE 02 9D */	bl memcpy
.L_8144FF98:
/* 8144FF98 | 38 60 00 01 */	li r3, 0x1
/* 8144FF9C | 48 00 00 08 */	b .L_8144FFA4
.L_8144FFA0:
/* 8144FFA0 | 38 60 00 00 */	li r3, 0x0
.L_8144FFA4:
/* 8144FFA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144FFA8 | 48 1A 95 65 */	bl _restgpr_27
/* 8144FFAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144FFB0 | 7C 08 03 A6 */	mtlr r0
/* 8144FFB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144FFB8 | 4E 80 00 20 */	blr
.endfn VmMethod_splice

# .text:0x5A10 | 0x8144FFBC | size: 0x378
.fn VmMethod_split, global
/* 8144FFBC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8144FFC0 | 7C 08 02 A6 */	mflr r0
/* 8144FFC4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8144FFC8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8144FFCC | 48 1A 94 D5 */	bl _savegpr_19
/* 8144FFD0 | 3B 40 00 00 */	li r26, 0x0
/* 8144FFD4 | 7C 9D 23 78 */	mr r29, r4
/* 8144FFD8 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 8144FFDC | 7C 7B 1B 78 */	mr r27, r3
/* 8144FFE0 | 7C BC 2B 78 */	mr r28, r5
/* 8144FFE4 | 38 80 00 00 */	li r4, 0x0
/* 8144FFE8 | 4B FF C6 A9 */	bl CHANSVmGetArg
/* 8144FFEC | 7C 65 1B 78 */	mr r5, r3
/* 8144FFF0 | 7F 63 DB 78 */	mr r3, r27
/* 8144FFF4 | 38 80 00 03 */	li r4, 0x3
/* 8144FFF8 | 4B FF B8 E5 */	bl CHANSVmConvertObjectType
/* 8144FFFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450000 | 7C 7F 1B 78 */	mr r31, r3
/* 81450004 | 40 82 00 10 */	bne .L_81450014
/* 81450008 | 38 00 00 01 */	li r0, 0x1
/* 8145000C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81450010 | 48 00 01 F0 */	b .L_81450200
.L_81450014:
/* 81450014 | 80 7B 00 60 */	lwz r3, 0x60(r27)
/* 81450018 | 3B C0 FF FF */	li r30, -0x1
/* 8145001C | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 81450020 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81450024 | 40 81 00 54 */	ble .L_81450078
/* 81450028 | 7F 63 DB 78 */	mr r3, r27
/* 8145002C | 38 80 00 01 */	li r4, 0x1
/* 81450030 | 4B FF C6 61 */	bl CHANSVmGetArg
/* 81450034 | 7C 65 1B 78 */	mr r5, r3
/* 81450038 | 7F 63 DB 78 */	mr r3, r27
/* 8145003C | 38 80 00 01 */	li r4, 0x1
/* 81450040 | 4B FF B8 9D */	bl CHANSVmConvertObjectType
/* 81450044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450048 | 41 82 00 30 */	beq .L_81450078
/* 8145004C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81450050 | 38 00 FF FF */	li r0, -0x1
/* 81450054 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81450058 | 7C 00 20 10 */	subfc r0, r0, r4
/* 8145005C | 7C 1A 19 10 */	subfe r0, r26, r3
/* 81450060 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81450064 | 7C 00 00 D1 */	neg. r0, r0
/* 81450068 | 41 82 00 10 */	beq .L_81450078
/* 8145006C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81450070 | 7C 9E 23 78 */	mr r30, r4
/* 81450074 | 41 82 01 8C */	beq .L_81450200
.L_81450078:
/* 81450078 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8145007C | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81450080 | 82 C3 00 04 */	lwz r22, 0x4(r3)
/* 81450084 | 83 E4 00 00 */	lwz r31, 0x0(r4)
/* 81450088 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8145008C | 82 A3 00 00 */	lwz r21, 0x0(r3)
/* 81450090 | 83 04 00 04 */	lwz r24, 0x4(r4)
/* 81450094 | 40 82 00 10 */	bne .L_814500A4
/* 81450098 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8145009C | 40 82 01 E4 */	bne .L_81450280
/* 814500A0 | 48 00 01 60 */	b .L_81450200
.L_814500A4:
/* 814500A4 | 3A 80 00 00 */	li r20, 0x0
.L_814500A8:
/* 814500A8 | 3B 20 00 00 */	li r25, 0x0
/* 814500AC | 3A E0 00 00 */	li r23, 0x0
/* 814500B0 | 3B A0 00 00 */	li r29, 0x0
/* 814500B4 | 48 00 00 94 */	b .L_81450148
.L_814500B8:
/* 814500B8 | 7E A4 AB 78 */	mr r4, r21
/* 814500BC | 7E C5 B3 78 */	mr r5, r22
/* 814500C0 | 7C 7F CA 14 */	add r3, r31, r25
/* 814500C4 | 48 1A E1 11 */	bl memcmp
/* 814500C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814500CC | 40 82 00 78 */	bne .L_81450144
/* 814500D0 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814500D4 | 7E 77 C8 50 */	subf r19, r23, r25
/* 814500D8 | 41 82 00 54 */	beq .L_8145012C
/* 814500DC | 7F 63 DB 78 */	mr r3, r27
/* 814500E0 | 7E 84 A3 78 */	mr r4, r20
/* 814500E4 | 7F A5 EB 78 */	mr r5, r29
/* 814500E8 | 4B FF D2 39 */	bl CHANSVmGetArrayElement
/* 814500EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814500F0 | 7C 7A 1B 78 */	mr r26, r3
/* 814500F4 | 41 82 02 24 */	beq .L_81450318
/* 814500F8 | 7F 63 DB 78 */	mr r3, r27
/* 814500FC | 7F 45 D3 78 */	mr r5, r26
/* 81450100 | 7E 67 9B 78 */	mr r7, r19
/* 81450104 | 38 80 00 00 */	li r4, 0x0
/* 81450108 | 38 C0 00 03 */	li r6, 0x3
/* 8145010C | 4B FF AC C9 */	bl CHANSVmNewObject
/* 81450110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450114 | 41 82 02 04 */	beq .L_81450318
/* 81450118 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 8145011C | 7E 65 9B 78 */	mr r5, r19
/* 81450120 | 7C 9F BA 14 */	add r4, r31, r23
/* 81450124 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81450128 | 4B EE 01 09 */	bl memcpy
.L_8145012C:
/* 8145012C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81450130 | 7F 39 B2 14 */	add r25, r25, r22
/* 81450134 | 7C 1D F0 40 */	cmplw r29, r30
/* 81450138 | 7F 37 CB 78 */	mr r23, r25
/* 8145013C | 40 80 00 18 */	bge .L_81450154
/* 81450140 | 48 00 00 08 */	b .L_81450148
.L_81450144:
/* 81450144 | 3B 39 00 02 */	addi r25, r25, 0x2
.L_81450148:
/* 81450148 | 7C 19 B2 14 */	add r0, r25, r22
/* 8145014C | 7C 00 C0 40 */	cmplw r0, r24
/* 81450150 | 40 81 FF 68 */	ble .L_814500B8
.L_81450154:
/* 81450154 | 7C 1D F0 40 */	cmplw r29, r30
/* 81450158 | 40 80 00 64 */	bge .L_814501BC
/* 8145015C | 2C 14 00 00 */	cmpwi r20, 0x0
/* 81450160 | 7F 57 C0 50 */	subf r26, r23, r24
/* 81450164 | 41 82 00 54 */	beq .L_814501B8
/* 81450168 | 7F 63 DB 78 */	mr r3, r27
/* 8145016C | 7E 84 A3 78 */	mr r4, r20
/* 81450170 | 7F A5 EB 78 */	mr r5, r29
/* 81450174 | 4B FF D1 AD */	bl CHANSVmGetArrayElement
/* 81450178 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145017C | 7C 79 1B 78 */	mr r25, r3
/* 81450180 | 41 82 01 98 */	beq .L_81450318
/* 81450184 | 7F 63 DB 78 */	mr r3, r27
/* 81450188 | 7F 25 CB 78 */	mr r5, r25
/* 8145018C | 7F 47 D3 78 */	mr r7, r26
/* 81450190 | 38 80 00 00 */	li r4, 0x0
/* 81450194 | 38 C0 00 03 */	li r6, 0x3
/* 81450198 | 4B FF AC 3D */	bl CHANSVmNewObject
/* 8145019C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814501A0 | 41 82 01 78 */	beq .L_81450318
/* 814501A4 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 814501A8 | 7F 45 D3 78 */	mr r5, r26
/* 814501AC | 7C 9F BA 14 */	add r4, r31, r23
/* 814501B0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814501B4 | 4B EE 00 7D */	bl memcpy
.L_814501B8:
/* 814501B8 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814501BC:
/* 814501BC | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814501C0 | 40 82 00 2C */	bne .L_814501EC
/* 814501C4 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 814501C8 | 7F 63 DB 78 */	mr r3, r27
/* 814501CC | 7F 84 E3 78 */	mr r4, r28
/* 814501D0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814501D4 | 38 A0 00 01 */	li r5, 0x1
/* 814501D8 | 4B FF DA 69 */	bl CHANSVmNewArrayObject
/* 814501DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814501E0 | 7C 74 1B 78 */	mr r20, r3
/* 814501E4 | 41 82 01 34 */	beq .L_81450318
/* 814501E8 | 4B FF FE C0 */	b .L_814500A8
.L_814501EC:
/* 814501EC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814501F0 | 7C 00 E8 50 */	subf r0, r0, r29
/* 814501F4 | 7C 00 00 34 */	cntlzw r0, r0
/* 814501F8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814501FC | 48 00 01 20 */	b .L_8145031C
.L_81450200:
/* 81450200 | 7F 63 DB 78 */	mr r3, r27
/* 81450204 | 7F 84 E3 78 */	mr r4, r28
/* 81450208 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8145020C | 38 A0 00 01 */	li r5, 0x1
/* 81450210 | 4B FF DA 31 */	bl CHANSVmNewArrayObject
/* 81450214 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81450218 | 7C 7A 1B 78 */	mr r26, r3
/* 8145021C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81450220 | 41 82 00 1C */	beq .L_8145023C
/* 81450224 | 7F 63 DB 78 */	mr r3, r27
/* 81450228 | 7F 44 D3 78 */	mr r4, r26
/* 8145022C | 38 A0 00 00 */	li r5, 0x0
/* 81450230 | 4B FF D0 F1 */	bl CHANSVmGetArrayElement
/* 81450234 | 7C 64 1B 78 */	mr r4, r3
/* 81450238 | 48 00 00 08 */	b .L_81450240
.L_8145023C:
/* 8145023C | 38 80 00 00 */	li r4, 0x0
.L_81450240:
/* 81450240 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81450244 | 3B 80 00 00 */	li r28, 0x0
/* 81450248 | 41 82 00 30 */	beq .L_81450278
/* 8145024C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81450250 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81450254 | 41 82 00 20 */	beq .L_81450274
/* 81450258 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145025C | 41 82 00 1C */	beq .L_81450278
/* 81450260 | 7F 63 DB 78 */	mr r3, r27
/* 81450264 | 7F A5 EB 78 */	mr r5, r29
/* 81450268 | 4B FF F7 11 */	bl CHANSVmStringObjectDup
/* 8145026C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450270 | 41 82 00 08 */	beq .L_81450278
.L_81450274:
/* 81450274 | 3B 80 00 01 */	li r28, 0x1
.L_81450278:
/* 81450278 | 7F 83 E3 78 */	mr r3, r28
/* 8145027C | 48 00 00 A0 */	b .L_8145031C
.L_81450280:
/* 81450280 | 57 00 F8 7E */	srwi r0, r24, 1
/* 81450284 | 7F 63 DB 78 */	mr r3, r27
/* 81450288 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8145028C | 7F 84 E3 78 */	mr r4, r28
/* 81450290 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81450294 | 38 A0 00 01 */	li r5, 0x1
/* 81450298 | 4B FF D9 A9 */	bl CHANSVmNewArrayObject
/* 8145029C | 7C 7A 1B 78 */	mr r26, r3
/* 814502A0 | 3B A0 00 00 */	li r29, 0x0
/* 814502A4 | 3B 80 00 00 */	li r28, 0x0
/* 814502A8 | 48 00 00 5C */	b .L_81450304
.L_814502AC:
/* 814502AC | 7F 63 DB 78 */	mr r3, r27
/* 814502B0 | 7F 44 D3 78 */	mr r4, r26
/* 814502B4 | 7F A5 EB 78 */	mr r5, r29
/* 814502B8 | 4B FF D0 69 */	bl CHANSVmGetArrayElement
/* 814502BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814502C0 | 7C 7E 1B 78 */	mr r30, r3
/* 814502C4 | 41 82 00 54 */	beq .L_81450318
/* 814502C8 | 7F 63 DB 78 */	mr r3, r27
/* 814502CC | 7F C5 F3 78 */	mr r5, r30
/* 814502D0 | 38 80 00 00 */	li r4, 0x0
/* 814502D4 | 38 C0 00 03 */	li r6, 0x3
/* 814502D8 | 38 E0 00 02 */	li r7, 0x2
/* 814502DC | 4B FF AA F9 */	bl CHANSVmNewObject
/* 814502E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814502E4 | 41 82 00 34 */	beq .L_81450318
/* 814502E8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814502EC | 7C 9F E2 14 */	add r4, r31, r28
/* 814502F0 | 38 A0 00 02 */	li r5, 0x2
/* 814502F4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814502F8 | 4B ED FF 39 */	bl memcpy
/* 814502FC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81450300 | 3B 9C 00 02 */	addi r28, r28, 0x2
.L_81450304:
/* 81450304 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81450308 | 7C 1D 00 40 */	cmplw r29, r0
/* 8145030C | 41 80 FF A0 */	blt .L_814502AC
/* 81450310 | 38 60 00 01 */	li r3, 0x1
/* 81450314 | 48 00 00 08 */	b .L_8145031C
.L_81450318:
/* 81450318 | 38 60 00 00 */	li r3, 0x0
.L_8145031C:
/* 8145031C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81450320 | 48 1A 91 CD */	bl _restgpr_19
/* 81450324 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81450328 | 7C 08 03 A6 */	mtlr r0
/* 8145032C | 38 21 00 50 */	addi r1, r1, 0x50
/* 81450330 | 4E 80 00 20 */	blr
.endfn VmMethod_split

# .text:0x5D88 | 0x81450334 | size: 0xB4
.fn VmMethod_toLowerCase, global
/* 81450334 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81450338 | 7C 08 02 A6 */	mflr r0
/* 8145033C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81450340 | 7C 80 23 78 */	mr r0, r4
/* 81450344 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81450348 | 7C BF 2B 78 */	mr r31, r5
/* 8145034C | 7F E4 FB 78 */	mr r4, r31
/* 81450350 | 7C 05 03 78 */	mr r5, r0
/* 81450354 | 4B FF F6 25 */	bl CHANSVmStringObjectDup
/* 81450358 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145035C | 41 82 00 74 */	beq .L_814503D0
/* 81450360 | 38 A0 00 00 */	li r5, 0x0
/* 81450364 | 48 00 00 54 */	b .L_814503B8
.L_81450368:
/* 81450368 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8145036C | 7C 80 2A 14 */	add r4, r0, r5
/* 81450370 | 7C 05 00 AE */	lbzx r0, r5, r0
/* 81450374 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 81450378 | 50 03 44 2E */	rlwimi r3, r0, 8, 16, 23
/* 8145037C | 28 03 00 41 */	cmplwi r3, 0x41
/* 81450380 | 41 80 00 18 */	blt .L_81450398
/* 81450384 | 28 03 00 5A */	cmplwi r3, 0x5a
/* 81450388 | 41 81 00 10 */	bgt .L_81450398
/* 8145038C | 60 60 00 20 */	ori r0, r3, 0x20
/* 81450390 | 98 04 00 01 */	stb r0, 0x1(r4)
/* 81450394 | 48 00 00 20 */	b .L_814503B4
.L_81450398:
/* 81450398 | 28 03 FF 21 */	cmplwi r3, 0xff21
/* 8145039C | 41 80 00 18 */	blt .L_814503B4
/* 814503A0 | 28 03 FF 3A */	cmplwi r3, 0xff3a
/* 814503A4 | 41 81 00 10 */	bgt .L_814503B4
/* 814503A8 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 814503AC | 38 03 00 20 */	addi r0, r3, 0x20
/* 814503B0 | 98 04 00 01 */	stb r0, 0x1(r4)
.L_814503B4:
/* 814503B4 | 38 A5 00 02 */	addi r5, r5, 0x2
.L_814503B8:
/* 814503B8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814503BC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814503C0 | 7C 05 00 40 */	cmplw r5, r0
/* 814503C4 | 41 80 FF A4 */	blt .L_81450368
/* 814503C8 | 38 60 00 01 */	li r3, 0x1
/* 814503CC | 48 00 00 08 */	b .L_814503D4
.L_814503D0:
/* 814503D0 | 38 60 00 00 */	li r3, 0x0
.L_814503D4:
/* 814503D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814503D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814503DC | 7C 08 03 A6 */	mtlr r0
/* 814503E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814503E4 | 4E 80 00 20 */	blr
.endfn VmMethod_toLowerCase

# .text:0x5E3C | 0x814503E8 | size: 0xB4
.fn VmMethod_toUpperCase, global
/* 814503E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814503EC | 7C 08 02 A6 */	mflr r0
/* 814503F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814503F4 | 7C 80 23 78 */	mr r0, r4
/* 814503F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814503FC | 7C BF 2B 78 */	mr r31, r5
/* 81450400 | 7F E4 FB 78 */	mr r4, r31
/* 81450404 | 7C 05 03 78 */	mr r5, r0
/* 81450408 | 4B FF F5 71 */	bl CHANSVmStringObjectDup
/* 8145040C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450410 | 41 82 00 74 */	beq .L_81450484
/* 81450414 | 38 A0 00 00 */	li r5, 0x0
/* 81450418 | 48 00 00 54 */	b .L_8145046C
.L_8145041C:
/* 8145041C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81450420 | 7C 80 2A 14 */	add r4, r0, r5
/* 81450424 | 7C 05 00 AE */	lbzx r0, r5, r0
/* 81450428 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 8145042C | 50 03 44 2E */	rlwimi r3, r0, 8, 16, 23
/* 81450430 | 28 03 00 61 */	cmplwi r3, 0x61
/* 81450434 | 41 80 00 18 */	blt .L_8145044C
/* 81450438 | 28 03 00 7A */	cmplwi r3, 0x7a
/* 8145043C | 41 81 00 10 */	bgt .L_8145044C
/* 81450440 | 70 60 00 DF */	andi. r0, r3, 0xdf
/* 81450444 | 98 04 00 01 */	stb r0, 0x1(r4)
/* 81450448 | 48 00 00 20 */	b .L_81450468
.L_8145044C:
/* 8145044C | 28 03 FF 41 */	cmplwi r3, 0xff41
/* 81450450 | 41 80 00 18 */	blt .L_81450468
/* 81450454 | 28 03 FF 5A */	cmplwi r3, 0xff5a
/* 81450458 | 41 81 00 10 */	bgt .L_81450468
/* 8145045C | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 81450460 | 38 03 FF E0 */	subi r0, r3, 0x20
/* 81450464 | 98 04 00 01 */	stb r0, 0x1(r4)
.L_81450468:
/* 81450468 | 38 A5 00 02 */	addi r5, r5, 0x2
.L_8145046C:
/* 8145046C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81450470 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81450474 | 7C 05 00 40 */	cmplw r5, r0
/* 81450478 | 41 80 FF A4 */	blt .L_8145041C
/* 8145047C | 38 60 00 01 */	li r3, 0x1
/* 81450480 | 48 00 00 08 */	b .L_81450488
.L_81450484:
/* 81450484 | 38 60 00 00 */	li r3, 0x0
.L_81450488:
/* 81450488 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145048C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81450490 | 7C 08 03 A6 */	mtlr r0
/* 81450494 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81450498 | 4E 80 00 20 */	blr
.endfn VmMethod_toUpperCase

# .text:0x5EF0 | 0x8145049C | size: 0x6BC
.fn CHANSVm_8145049C, global
/* 8145049C | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 814504A0 | 7C 08 02 A6 */	mflr r0
/* 814504A4 | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 814504A8 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 814504AC | 48 1A 8F E1 */	bl _savegpr_14
/* 814504B0 | 7C 6F 1B 78 */	mr r15, r3
/* 814504B4 | 7C 90 23 78 */	mr r16, r4
/* 814504B8 | 7C B1 2B 78 */	mr r17, r5
/* 814504BC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814504C0 | 38 80 00 00 */	li r4, 0x0
/* 814504C4 | 38 A0 00 10 */	li r5, 0x10
/* 814504C8 | 4B ED FE 6D */	bl memset
/* 814504CC | 80 6F 00 60 */	lwz r3, 0x60(r15)
/* 814504D0 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 814504D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814504D8 | 41 82 06 48 */	beq .L_81450B20
/* 814504DC | 7D E3 7B 78 */	mr r3, r15
/* 814504E0 | 7E 24 8B 78 */	mr r4, r17
/* 814504E4 | 4B FF C1 AD */	bl CHANSVmGetArg
/* 814504E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814504EC | 41 82 06 50 */	beq .L_81450B3C
/* 814504F0 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 814504F4 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814504F8 | 40 82 06 44 */	bne .L_81450B3C
/* 814504FC | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81450500 | 3B E1 00 20 */	addi r31, r1, 0x20
/* 81450504 | 82 CF 00 68 */	lwz r22, 0x68(r15)
/* 81450508 | 3A A0 00 00 */	li r21, 0x0
/* 8145050C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81450510 | 3A 80 00 00 */	li r20, 0x0
/* 81450514 | 56 C0 F8 7E */	srwi r0, r22, 1
/* 81450518 | 83 84 00 00 */	lwz r28, 0x0(r4)
/* 8145051C | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81450520 | 54 7B 00 3C */	clrrwi r27, r3, 1
/* 81450524 | 82 EF 00 64 */	lwz r23, 0x64(r15)
/* 81450528 | 3B A0 00 00 */	li r29, 0x0
/* 8145052C | 3A 60 00 00 */	li r19, 0x0
.L_81450530:
/* 81450530 | 3B 40 00 00 */	li r26, 0x0
/* 81450534 | 3B 20 00 00 */	li r25, 0x0
/* 81450538 | 3B C0 00 01 */	li r30, 0x1
/* 8145053C | 48 00 05 94 */	b .L_81450AD0
.L_81450540:
/* 81450540 | 7C 1C D0 AE */	lbzx r0, r28, r26
/* 81450544 | 7C 7C D2 14 */	add r3, r28, r26
/* 81450548 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145054C | 40 82 00 10 */	bne .L_8145055C
/* 81450550 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81450554 | 28 00 00 25 */	cmplwi r0, 0x25
/* 81450558 | 41 82 00 10 */	beq .L_81450568
.L_8145055C:
/* 8145055C | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 81450560 | 7C 1A D8 40 */	cmplw r26, r27
/* 81450564 | 41 80 05 6C */	blt .L_81450AD0
.L_81450568:
/* 81450568 | 38 1A 00 02 */	addi r0, r26, 0x2
/* 8145056C | 7C 00 D8 40 */	cmplw r0, r27
/* 81450570 | 40 80 00 2C */	bge .L_8145059C
/* 81450574 | 7C 7C D2 14 */	add r3, r28, r26
/* 81450578 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 8145057C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81450580 | 40 82 00 1C */	bne .L_8145059C
/* 81450584 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 81450588 | 28 00 00 25 */	cmplwi r0, 0x25
/* 8145058C | 40 82 00 10 */	bne .L_8145059C
/* 81450590 | 3A 40 00 01 */	li r18, 0x1
/* 81450594 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 81450598 | 48 00 00 08 */	b .L_814505A0
.L_8145059C:
/* 8145059C | 3A 40 00 00 */	li r18, 0x0
.L_814505A0:
/* 814505A0 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814505A4 | 7D D9 D0 50 */	subf r14, r25, r26
/* 814505A8 | 41 82 00 28 */	beq .L_814505D0
/* 814505AC | 7C 14 72 14 */	add r0, r20, r14
/* 814505B0 | 7C 00 E8 40 */	cmplw r0, r29
/* 814505B4 | 41 81 05 88 */	bgt .L_81450B3C
/* 814505B8 | 7D C5 73 78 */	mr r5, r14
/* 814505BC | 7C 75 A2 14 */	add r3, r21, r20
/* 814505C0 | 7C 9C CA 14 */	add r4, r28, r25
/* 814505C4 | 4B ED FC 6D */	bl memcpy
/* 814505C8 | 7E 94 72 14 */	add r20, r20, r14
/* 814505CC | 48 00 00 08 */	b .L_814505D4
.L_814505D0:
/* 814505D0 | 7F BD 72 14 */	add r29, r29, r14
.L_814505D4:
/* 814505D4 | 7C 1A D8 40 */	cmplw r26, r27
/* 814505D8 | 7F 59 D3 78 */	mr r25, r26
/* 814505DC | 40 80 04 FC */	bge .L_81450AD8
/* 814505E0 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814505E4 | 41 82 00 0C */	beq .L_814505F0
/* 814505E8 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 814505EC | 48 00 04 E0 */	b .L_81450ACC
.L_814505F0:
/* 814505F0 | 38 00 00 25 */	li r0, 0x25
/* 814505F4 | 38 81 00 21 */	addi r4, r1, 0x21
/* 814505F8 | 98 01 00 20 */	stb r0, 0x20(r1)
/* 814505FC | 38 00 00 00 */	li r0, 0x0
/* 81450600 | 39 C0 00 00 */	li r14, 0x0
/* 81450604 | 3B 00 00 01 */	li r24, 0x1
/* 81450608 | 90 01 00 80 */	stw r0, 0x80(r1)
/* 8145060C | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 81450610 | 48 00 00 50 */	b .L_81450660
.L_81450614:
/* 81450614 | 88 A3 00 01 */	lbz r5, 0x1(r3)
/* 81450618 | 38 05 FF E0 */	subi r0, r5, 0x20
/* 8145061C | 28 00 00 20 */	cmplwi r0, 0x20
/* 81450620 | 41 81 00 58 */	bgt .L_81450678
/* 81450624 | 3C 60 81 67 */	lis r3, jumptable_81669D34@ha
/* 81450628 | 54 00 10 3A */	slwi r0, r0, 2
/* 8145062C | 38 63 9D 34 */	addi r3, r3, jumptable_81669D34@l
/* 81450630 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81450634 | 7C 69 03 A6 */	mtctr r3
/* 81450638 | 4E 80 04 20 */	bctr
.L_8145063C:
/* 8145063C | 38 00 00 01 */	li r0, 0x1
/* 81450640 | 90 01 00 80 */	stw r0, 0x80(r1)
.L_81450644:
/* 81450644 | 38 18 00 01 */	addi r0, r24, 0x1
/* 81450648 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8145064C | 40 80 FE F4 */	bge .L_81450540
/* 81450650 | 98 A4 00 00 */	stb r5, 0x0(r4)
/* 81450654 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 81450658 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 8145065C | 38 84 00 01 */	addi r4, r4, 0x1
.L_81450660:
/* 81450660 | 7C 1A D8 40 */	cmplw r26, r27
/* 81450664 | 40 80 00 14 */	bge .L_81450678
/* 81450668 | 7C 1C D0 AE */	lbzx r0, r28, r26
/* 8145066C | 7C 7C D2 14 */	add r3, r28, r26
/* 81450670 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81450674 | 41 82 FF A0 */	beq .L_81450614
.L_81450678:
/* 81450678 | 7C 7F C2 14 */	add r3, r31, r24
/* 8145067C | 48 00 00 20 */	b .L_8145069C
.L_81450680:
/* 81450680 | 38 18 00 01 */	addi r0, r24, 0x1
/* 81450684 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81450688 | 40 80 FE B8 */	bge .L_81450540
/* 8145068C | 98 83 00 00 */	stb r4, 0x0(r3)
/* 81450690 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 81450694 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450698 | 38 63 00 01 */	addi r3, r3, 0x1
.L_8145069C:
/* 8145069C | 7C 1A D8 40 */	cmplw r26, r27
/* 814506A0 | 40 80 00 28 */	bge .L_814506C8
/* 814506A4 | 7C 1C D0 AE */	lbzx r0, r28, r26
/* 814506A8 | 7C 9C D2 14 */	add r4, r28, r26
/* 814506AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814506B0 | 40 82 00 18 */	bne .L_814506C8
/* 814506B4 | 88 84 00 01 */	lbz r4, 0x1(r4)
/* 814506B8 | 28 04 00 30 */	cmplwi r4, 0x30
/* 814506BC | 41 80 00 0C */	blt .L_814506C8
/* 814506C0 | 28 04 00 39 */	cmplwi r4, 0x39
/* 814506C4 | 40 81 FF BC */	ble .L_81450680
.L_814506C8:
/* 814506C8 | 7C 1A D8 40 */	cmplw r26, r27
/* 814506CC | 40 80 00 90 */	bge .L_8145075C
/* 814506D0 | 7C 1C D0 AE */	lbzx r0, r28, r26
/* 814506D4 | 7C 7C D2 14 */	add r3, r28, r26
/* 814506D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814506DC | 40 82 00 80 */	bne .L_8145075C
/* 814506E0 | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 814506E4 | 28 03 00 2E */	cmplwi r3, 0x2e
/* 814506E8 | 40 82 00 74 */	bne .L_8145075C
/* 814506EC | 38 18 00 01 */	addi r0, r24, 0x1
/* 814506F0 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814506F4 | 40 80 FE 4C */	bge .L_81450540
/* 814506F8 | 7C 7F C1 AE */	stbx r3, r31, r24
/* 814506FC | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450700 | 7C 7F C2 14 */	add r3, r31, r24
/* 81450704 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 81450708 | 48 00 00 20 */	b .L_81450728
.L_8145070C:
/* 8145070C | 38 18 00 01 */	addi r0, r24, 0x1
/* 81450710 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81450714 | 40 80 FE 2C */	bge .L_81450540
/* 81450718 | 98 83 00 00 */	stb r4, 0x0(r3)
/* 8145071C | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 81450720 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450724 | 38 63 00 01 */	addi r3, r3, 0x1
.L_81450728:
/* 81450728 | 7C 1A D8 40 */	cmplw r26, r27
/* 8145072C | 40 80 00 30 */	bge .L_8145075C
/* 81450730 | 7C 1C D0 AE */	lbzx r0, r28, r26
/* 81450734 | 7C 9C D2 14 */	add r4, r28, r26
/* 81450738 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145073C | 40 82 00 20 */	bne .L_8145075C
/* 81450740 | 88 84 00 01 */	lbz r4, 0x1(r4)
/* 81450744 | 28 04 00 30 */	cmplwi r4, 0x30
/* 81450748 | 41 80 00 14 */	blt .L_8145075C
/* 8145074C | 28 04 00 39 */	cmplwi r4, 0x39
/* 81450750 | 40 81 FF BC */	ble .L_8145070C
/* 81450754 | 48 00 00 08 */	b .L_8145075C
.L_81450758:
/* 81450758 | 3B 5A 00 02 */	addi r26, r26, 0x2
.L_8145075C:
/* 8145075C | 7C 1A D8 40 */	cmplw r26, r27
/* 81450760 | 40 80 00 38 */	bge .L_81450798
/* 81450764 | 7C 1C D0 AE */	lbzx r0, r28, r26
/* 81450768 | 7C 7C D2 14 */	add r3, r28, r26
/* 8145076C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81450770 | 40 82 00 28 */	bne .L_81450798
/* 81450774 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81450778 | 28 00 00 68 */	cmplwi r0, 0x68
/* 8145077C | 41 82 FF DC */	beq .L_81450758
/* 81450780 | 28 00 00 6C */	cmplwi r0, 0x6c
/* 81450784 | 41 82 FF D4 */	beq .L_81450758
/* 81450788 | 28 00 00 4C */	cmplwi r0, 0x4c
/* 8145078C | 41 82 FF CC */	beq .L_81450758
/* 81450790 | 28 00 00 76 */	cmplwi r0, 0x76
/* 81450794 | 41 82 FF C4 */	beq .L_81450758
.L_81450798:
/* 81450798 | 7C 1A D8 40 */	cmplw r26, r27
/* 8145079C | 40 80 03 34 */	bge .L_81450AD0
/* 814507A0 | 7C 1C D0 AE */	lbzx r0, r28, r26
/* 814507A4 | 7C 7C D2 14 */	add r3, r28, r26
/* 814507A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814507AC | 40 82 03 24 */	bne .L_81450AD0
/* 814507B0 | 88 A3 00 01 */	lbz r5, 0x1(r3)
/* 814507B4 | 38 05 FF BF */	subi r0, r5, 0x41
/* 814507B8 | 28 00 00 37 */	cmplwi r0, 0x37
/* 814507BC | 41 81 03 14 */	bgt .L_81450AD0
/* 814507C0 | 3C 60 81 67 */	lis r3, jumptable_81669C54@ha
/* 814507C4 | 54 00 10 3A */	slwi r0, r0, 2
/* 814507C8 | 38 63 9C 54 */	addi r3, r3, jumptable_81669C54@l
/* 814507CC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814507D0 | 7C 69 03 A6 */	mtctr r3
/* 814507D4 | 4E 80 04 20 */	bctr
.L_814507D8:
/* 814507D8 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 814507DC | 48 00 00 1C */	b .L_814507F8
.L_814507E0:
/* 814507E0 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 814507E4 | 48 00 01 00 */	b .L_814508E4
.L_814507E8:
/* 814507E8 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 814507EC | 48 00 01 48 */	b .L_81450934
.L_814507F0:
/* 814507F0 | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 814507F4 | 48 00 01 84 */	b .L_81450978
.L_814507F8:
/* 814507F8 | 38 18 00 03 */	addi r0, r24, 0x3
/* 814507FC | 28 00 00 20 */	cmplwi r0, 0x20
/* 81450800 | 40 80 FD 40 */	bge .L_81450540
/* 81450804 | 38 00 00 6C */	li r0, 0x6c
/* 81450808 | 7D E3 7B 78 */	mr r3, r15
/* 8145080C | 7C 1F C1 AE */	stbx r0, r31, r24
/* 81450810 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450814 | 38 00 00 6C */	li r0, 0x6c
/* 81450818 | 7C 91 F2 14 */	add r4, r17, r30
/* 8145081C | 7C 1F C1 AE */	stbx r0, r31, r24
/* 81450820 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450824 | 38 00 00 00 */	li r0, 0x0
/* 81450828 | 7C BF C1 AE */	stbx r5, r31, r24
/* 8145082C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450830 | 7C 1F C1 AE */	stbx r0, r31, r24
/* 81450834 | 4B FF BE 5D */	bl CHANSVmGetArg
/* 81450838 | 7C 65 1B 78 */	mr r5, r3
/* 8145083C | 7D E3 7B 78 */	mr r3, r15
/* 81450840 | 38 80 00 01 */	li r4, 0x1
/* 81450844 | 4B FF B0 99 */	bl CHANSVmConvertObjectType
/* 81450848 | 7C 64 1B 78 */	mr r4, r3
.L_8145084C:
/* 8145084C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81450850 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81450854 | 41 82 02 78 */	beq .L_81450ACC
/* 81450858 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 8145085C | 41 82 00 20 */	beq .L_8145087C
/* 81450860 | C8 24 00 00 */	lfd f1, 0x0(r4)
/* 81450864 | 7E E3 BB 78 */	mr r3, r23
/* 81450868 | 7E C4 B3 78 */	mr r4, r22
/* 8145086C | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81450870 | 4C C6 32 42 */	crset cr1eq
/* 81450874 | 48 1B 01 35 */	bl snprintf
/* 81450878 | 48 00 00 20 */	b .L_81450898
.L_8145087C:
/* 8145087C | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 81450880 | 7E E3 BB 78 */	mr r3, r23
/* 81450884 | 81 04 00 04 */	lwz r8, 0x4(r4)
/* 81450888 | 7E C4 B3 78 */	mr r4, r22
/* 8145088C | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81450890 | 4C C6 31 82 */	crclr cr1eq
/* 81450894 | 48 1B 01 15 */	bl snprintf
.L_81450898:
/* 81450898 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145089C | 41 80 FC A4 */	blt .L_81450540
/* 814508A0 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814508A4 | 54 6E 08 3C */	slwi r14, r3, 1
/* 814508A8 | 41 82 00 28 */	beq .L_814508D0
/* 814508AC | 7C 14 72 14 */	add r0, r20, r14
/* 814508B0 | 7C 00 E8 40 */	cmplw r0, r29
/* 814508B4 | 41 81 02 88 */	bgt .L_81450B3C
/* 814508B8 | 7E E4 BB 78 */	mr r4, r23
/* 814508BC | 7C 75 A2 14 */	add r3, r21, r20
/* 814508C0 | 55 C5 F8 7E */	srwi r5, r14, 1
/* 814508C4 | 4B FF A7 95 */	bl VmStrToU16FromU8
/* 814508C8 | 7E 94 72 14 */	add r20, r20, r14
/* 814508CC | 48 00 02 00 */	b .L_81450ACC
.L_814508D0:
/* 814508D0 | 7C 13 70 40 */	cmplw r19, r14
/* 814508D4 | 40 80 00 08 */	bge .L_814508DC
/* 814508D8 | 7D D3 73 78 */	mr r19, r14
.L_814508DC:
/* 814508DC | 7F BD 72 14 */	add r29, r29, r14
/* 814508E0 | 48 00 01 EC */	b .L_81450ACC
.L_814508E4:
/* 814508E4 | 38 18 00 02 */	addi r0, r24, 0x2
/* 814508E8 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814508EC | 40 80 FC 54 */	bge .L_81450540
/* 814508F0 | 38 00 00 6C */	li r0, 0x6c
/* 814508F4 | 7D E3 7B 78 */	mr r3, r15
/* 814508F8 | 7C 1F C1 AE */	stbx r0, r31, r24
/* 814508FC | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450900 | 38 00 00 00 */	li r0, 0x0
/* 81450904 | 7C 91 F2 14 */	add r4, r17, r30
/* 81450908 | 7C BF C1 AE */	stbx r5, r31, r24
/* 8145090C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450910 | 7C 1F C1 AE */	stbx r0, r31, r24
/* 81450914 | 4B FF BD 7D */	bl CHANSVmGetArg
/* 81450918 | 7C 65 1B 78 */	mr r5, r3
/* 8145091C | 7D E3 7B 78 */	mr r3, r15
/* 81450920 | 38 80 00 02 */	li r4, 0x2
/* 81450924 | 4B FF AF B9 */	bl CHANSVmConvertObjectType
/* 81450928 | 7C 64 1B 78 */	mr r4, r3
/* 8145092C | 39 C0 00 01 */	li r14, 0x1
/* 81450930 | 4B FF FF 1C */	b .L_8145084C
.L_81450934:
/* 81450934 | 7D E3 7B 78 */	mr r3, r15
/* 81450938 | 7C 91 F2 14 */	add r4, r17, r30
/* 8145093C | 4B FF BD 55 */	bl CHANSVmGetArg
/* 81450940 | 7C 65 1B 78 */	mr r5, r3
/* 81450944 | 7D E3 7B 78 */	mr r3, r15
/* 81450948 | 38 80 00 01 */	li r4, 0x1
/* 8145094C | 4B FF AF 91 */	bl CHANSVmConvertObjectType
/* 81450950 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450954 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81450958 | 41 82 01 74 */	beq .L_81450ACC
/* 8145095C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81450960 | 3A 41 00 08 */	addi r18, r1, 0x8
/* 81450964 | 39 C0 00 00 */	li r14, 0x0
/* 81450968 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8145096C | 38 00 00 00 */	li r0, 0x0
/* 81450970 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81450974 | 48 00 00 80 */	b .L_814509F4
.L_81450978:
/* 81450978 | 7D E3 7B 78 */	mr r3, r15
/* 8145097C | 7C 91 F2 14 */	add r4, r17, r30
/* 81450980 | 4B FF BD 11 */	bl CHANSVmGetArg
/* 81450984 | 7C 65 1B 78 */	mr r5, r3
/* 81450988 | 7D E3 7B 78 */	mr r3, r15
/* 8145098C | 38 80 00 03 */	li r4, 0x3
/* 81450990 | 4B FF AF 4D */	bl CHANSVmConvertObjectType
/* 81450994 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450998 | 90 61 00 88 */	stw r3, 0x88(r1)
/* 8145099C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814509A0 | 41 82 01 2C */	beq .L_81450ACC
/* 814509A4 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 814509A8 | 7D E3 7B 78 */	mr r3, r15
/* 814509AC | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814509B0 | 38 80 00 00 */	li r4, 0x0
/* 814509B4 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 814509B8 | 38 C0 00 03 */	li r6, 0x3
/* 814509BC | 54 12 00 3C */	clrrwi r18, r0, 1
/* 814509C0 | 38 F2 00 02 */	addi r7, r18, 0x2
/* 814509C4 | 4B FF A4 11 */	bl CHANSVmNewObject
/* 814509C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814509CC | 7C 6E 1B 78 */	mr r14, r3
/* 814509D0 | 41 82 01 6C */	beq .L_81450B3C
/* 814509D4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814509D8 | 7E 45 93 78 */	mr r5, r18
/* 814509DC | 80 61 00 88 */	lwz r3, 0x88(r1)
/* 814509E0 | 82 44 00 00 */	lwz r18, 0x0(r4)
/* 814509E4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814509E8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814509EC | 7E 43 93 78 */	mr r3, r18
/* 814509F0 | 4B ED F8 41 */	bl memcpy
.L_814509F4:
/* 814509F4 | 80 01 00 80 */	lwz r0, 0x80(r1)
/* 814509F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814509FC | 40 82 FB 44 */	bne .L_81450540
/* 81450A00 | 38 18 00 02 */	addi r0, r24, 0x2
/* 81450A04 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81450A08 | 40 80 FB 38 */	bge .L_81450540
/* 81450A0C | 38 00 00 6C */	li r0, 0x6c
/* 81450A10 | 7F E4 FB 78 */	mr r4, r31
/* 81450A14 | 7C 1F C1 AE */	stbx r0, r31, r24
/* 81450A18 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450A1C | 38 00 00 73 */	li r0, 0x73
/* 81450A20 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81450A24 | 7C 1F C1 AE */	stbx r0, r31, r24
/* 81450A28 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81450A2C | 38 00 00 00 */	li r0, 0x0
/* 81450A30 | 7C 1F C1 AE */	stbx r0, r31, r24
/* 81450A34 | 7F 05 C3 78 */	mr r5, r24
/* 81450A38 | 4B FF A6 21 */	bl VmStrToU16FromU8
/* 81450A3C | 57 05 08 3C */	slwi r5, r24, 1
/* 81450A40 | 38 00 00 00 */	li r0, 0x0
/* 81450A44 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81450A48 | 7E E3 BB 78 */	mr r3, r23
/* 81450A4C | 7C 04 2B 2E */	sthx r0, r4, r5
/* 81450A50 | 38 A1 00 40 */	addi r5, r1, 0x40
/* 81450A54 | 80 81 00 84 */	lwz r4, 0x84(r1)
/* 81450A58 | 7E 46 93 78 */	mr r6, r18
/* 81450A5C | 4C C6 31 82 */	crclr cr1eq
/* 81450A60 | 48 1B 7B 71 */	bl swprintf
/* 81450A64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450A68 | 7C 72 1B 78 */	mr r18, r3
/* 81450A6C | 41 80 FA D4 */	blt .L_81450540
/* 81450A70 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 81450A74 | 41 82 00 18 */	beq .L_81450A8C
/* 81450A78 | 7D E3 7B 78 */	mr r3, r15
/* 81450A7C | 7D C4 73 78 */	mr r4, r14
/* 81450A80 | 4B FF A0 D5 */	bl CHANSVmDeleteObject
/* 81450A84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450A88 | 40 82 00 B4 */	bne .L_81450B3C
.L_81450A8C:
/* 81450A8C | 2C 15 00 00 */	cmpwi r21, 0x0
/* 81450A90 | 56 4E 08 3C */	slwi r14, r18, 1
/* 81450A94 | 41 82 00 28 */	beq .L_81450ABC
/* 81450A98 | 7C 14 72 14 */	add r0, r20, r14
/* 81450A9C | 7C 00 E8 40 */	cmplw r0, r29
/* 81450AA0 | 41 81 00 9C */	bgt .L_81450B3C
/* 81450AA4 | 7E E4 BB 78 */	mr r4, r23
/* 81450AA8 | 7D C5 73 78 */	mr r5, r14
/* 81450AAC | 7C 75 A2 14 */	add r3, r21, r20
/* 81450AB0 | 4B ED F7 81 */	bl memcpy
/* 81450AB4 | 7E 94 72 14 */	add r20, r20, r14
/* 81450AB8 | 48 00 00 14 */	b .L_81450ACC
.L_81450ABC:
/* 81450ABC | 7C 13 70 40 */	cmplw r19, r14
/* 81450AC0 | 40 80 00 08 */	bge .L_81450AC8
/* 81450AC4 | 7D D3 73 78 */	mr r19, r14
.L_81450AC8:
/* 81450AC8 | 7F BD 72 14 */	add r29, r29, r14
.L_81450ACC:
/* 81450ACC | 7F 59 D3 78 */	mr r25, r26
.L_81450AD0:
/* 81450AD0 | 7C 1A D8 40 */	cmplw r26, r27
/* 81450AD4 | 41 80 FA 6C */	blt .L_81450540
.L_81450AD8:
/* 81450AD8 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 81450ADC | 40 82 00 34 */	bne .L_81450B10
/* 81450AE0 | 7D E3 7B 78 */	mr r3, r15
/* 81450AE4 | 7E 05 83 78 */	mr r5, r16
/* 81450AE8 | 7F A7 EB 78 */	mr r7, r29
/* 81450AEC | 38 80 00 00 */	li r4, 0x0
/* 81450AF0 | 38 C0 00 03 */	li r6, 0x3
/* 81450AF4 | 4B FF A2 E1 */	bl CHANSVmNewObject
/* 81450AF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450AFC | 7C 70 1B 78 */	mr r16, r3
/* 81450B00 | 41 82 00 3C */	beq .L_81450B3C
/* 81450B04 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81450B08 | 82 A3 00 00 */	lwz r21, 0x0(r3)
/* 81450B0C | 4B FF FA 24 */	b .L_81450530
.L_81450B10:
/* 81450B10 | 7C 14 E8 40 */	cmplw r20, r29
/* 81450B14 | 40 82 00 28 */	bne .L_81450B3C
/* 81450B18 | 7E 03 83 78 */	mr r3, r16
/* 81450B1C | 48 00 00 24 */	b .L_81450B40
.L_81450B20:
/* 81450B20 | 7D E3 7B 78 */	mr r3, r15
/* 81450B24 | 7E 05 83 78 */	mr r5, r16
/* 81450B28 | 38 80 00 00 */	li r4, 0x0
/* 81450B2C | 38 C0 00 03 */	li r6, 0x3
/* 81450B30 | 38 E0 00 00 */	li r7, 0x0
/* 81450B34 | 4B FF A2 A1 */	bl CHANSVmNewObject
/* 81450B38 | 48 00 00 08 */	b .L_81450B40
.L_81450B3C:
/* 81450B3C | 38 60 00 00 */	li r3, 0x0
.L_81450B40:
/* 81450B40 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 81450B44 | 48 1A 89 95 */	bl _restgpr_14
/* 81450B48 | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 81450B4C | 7C 08 03 A6 */	mtlr r0
/* 81450B50 | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 81450B54 | 4E 80 00 20 */	blr
.endfn CHANSVm_8145049C

# .text:0x65AC | 0x81450B58 | size: 0x4C
.fn VmMethod_pFormat, global
/* 81450B58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81450B5C | 7C 08 02 A6 */	mflr r0
/* 81450B60 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81450B64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81450B68 | 41 82 00 28 */	beq .L_81450B90
/* 81450B6C | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 81450B70 | 28 00 00 07 */	cmplwi r0, 0x7
/* 81450B74 | 40 82 00 1C */	bne .L_81450B90
/* 81450B78 | 7C A4 2B 78 */	mr r4, r5
/* 81450B7C | 38 A0 00 00 */	li r5, 0x0
/* 81450B80 | 4B FF F9 1D */	bl CHANSVm_8145049C
/* 81450B84 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81450B88 | 7C 60 19 10 */	subfe r3, r0, r3
/* 81450B8C | 48 00 00 08 */	b .L_81450B94
.L_81450B90:
/* 81450B90 | 38 60 00 00 */	li r3, 0x0
.L_81450B94:
/* 81450B94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81450B98 | 7C 08 03 A6 */	mtlr r0
/* 81450B9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81450BA0 | 4E 80 00 20 */	blr
.endfn VmMethod_pFormat

# .text:0x65F8 | 0x81450BA4 | size: 0x24
.fn CHANSVm_81450BA4, global
/* 81450BA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450BA8 | 41 82 00 18 */	beq .L_81450BC0
/* 81450BAC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81450BB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450BB4 | 41 82 00 0C */	beq .L_81450BC0
/* 81450BB8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81450BBC | 4E 80 00 20 */	blr
.L_81450BC0:
/* 81450BC0 | 38 60 00 00 */	li r3, 0x0
/* 81450BC4 | 4E 80 00 20 */	blr
.endfn CHANSVm_81450BA4

# .text:0x661C | 0x81450BC8 | size: 0x24
.fn CHANSVm_81450BC8, global
/* 81450BC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450BCC | 41 82 00 18 */	beq .L_81450BE4
/* 81450BD0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81450BD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450BD8 | 41 82 00 0C */	beq .L_81450BE4
/* 81450BDC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81450BE0 | 4E 80 00 20 */	blr
.L_81450BE4:
/* 81450BE4 | 38 60 00 00 */	li r3, 0x0
/* 81450BE8 | 4E 80 00 20 */	blr
.endfn CHANSVm_81450BC8

# .text:0x6640 | 0x81450BEC | size: 0x20
.fn vmBlobInitValue, local
/* 81450BEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450BF0 | 4D 82 00 20 */	beqlr
/* 81450BF4 | 38 03 00 0C */	addi r0, r3, 0xc
/* 81450BF8 | 38 A0 00 00 */	li r5, 0x0
/* 81450BFC | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81450C00 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81450C04 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81450C08 | 4E 80 00 20 */	blr
.endfn vmBlobInitValue

# .text:0x6660 | 0x81450C0C | size: 0xAC
.fn vmBlobCreateDirect, local
/* 81450C0C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81450C10 | 7C 08 02 A6 */	mflr r0
/* 81450C14 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81450C18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81450C1C | 48 1A 88 AD */	bl _savegpr_29
/* 81450C20 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81450C24 | 7C 7D 1B 78 */	mr r29, r3
/* 81450C28 | 7C 9E 23 78 */	mr r30, r4
/* 81450C2C | 7C BF 2B 78 */	mr r31, r5
/* 81450C30 | 41 82 00 18 */	beq .L_81450C48
/* 81450C34 | 4B FF 9F 21 */	bl CHANSVmDeleteObject
/* 81450C38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450C3C | 41 82 00 0C */	beq .L_81450C48
/* 81450C40 | 38 60 00 00 */	li r3, 0x0
/* 81450C44 | 48 00 00 5C */	b .L_81450CA0
.L_81450C48:
/* 81450C48 | 7F A3 EB 78 */	mr r3, r29
/* 81450C4C | 7F C5 F3 78 */	mr r5, r30
/* 81450C50 | 38 FF 00 0C */	addi r7, r31, 0xc
/* 81450C54 | 38 80 00 00 */	li r4, 0x0
/* 81450C58 | 38 C0 00 08 */	li r6, 0x8
/* 81450C5C | 4B FF A1 79 */	bl CHANSVmNewObject
/* 81450C60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450C64 | 7C 7E 1B 78 */	mr r30, r3
/* 81450C68 | 41 82 00 1C */	beq .L_81450C84
/* 81450C6C | 7F A3 EB 78 */	mr r3, r29
/* 81450C70 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 81450C74 | 4B FF BB 01 */	bl CHANSVmFindNativeClass
/* 81450C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450C7C | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 81450C80 | 40 82 00 0C */	bne .L_81450C8C
.L_81450C84:
/* 81450C84 | 38 60 00 00 */	li r3, 0x0
/* 81450C88 | 48 00 00 18 */	b .L_81450CA0
.L_81450C8C:
/* 81450C8C | 7F C3 F3 78 */	mr r3, r30
/* 81450C90 | 4B FF FF 15 */	bl CHANSVm_81450BA4
/* 81450C94 | 7F E4 FB 78 */	mr r4, r31
/* 81450C98 | 4B FF FF 55 */	bl vmBlobInitValue
/* 81450C9C | 7F C3 F3 78 */	mr r3, r30
.L_81450CA0:
/* 81450CA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81450CA4 | 48 1A 88 71 */	bl _restgpr_29
/* 81450CA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81450CAC | 7C 08 03 A6 */	mtlr r0
/* 81450CB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81450CB4 | 4E 80 00 20 */	blr
.endfn vmBlobCreateDirect

# .text:0x670C | 0x81450CB8 | size: 0x5C
.fn vmBlobGetDataBufferDirect, local
/* 81450CB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81450CBC | 7C 08 02 A6 */	mflr r0
/* 81450CC0 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 81450CC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81450CC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81450CCC | 7C 7F 1B 78 */	mr r31, r3
/* 81450CD0 | 4B FF C3 35 */	bl CHANSVmCheckNativeInstance
/* 81450CD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450CD8 | 41 82 00 10 */	beq .L_81450CE8
/* 81450CDC | 7F E3 FB 78 */	mr r3, r31
/* 81450CE0 | 4B FF FE C5 */	bl CHANSVm_81450BA4
/* 81450CE4 | 48 00 00 08 */	b .L_81450CEC
.L_81450CE8:
/* 81450CE8 | 38 60 00 00 */	li r3, 0x0
.L_81450CEC:
/* 81450CEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450CF0 | 41 82 00 0C */	beq .L_81450CFC
/* 81450CF4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81450CF8 | 48 00 00 08 */	b .L_81450D00
.L_81450CFC:
/* 81450CFC | 38 60 00 00 */	li r3, 0x0
.L_81450D00:
/* 81450D00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81450D04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81450D08 | 7C 08 03 A6 */	mtlr r0
/* 81450D0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81450D10 | 4E 80 00 20 */	blr
.endfn vmBlobGetDataBufferDirect

# .text:0x6768 | 0x81450D14 | size: 0xB8
.fn CHANSVm_81450D14, global
/* 81450D14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450D18 | 40 82 00 0C */	bne .L_81450D24
/* 81450D1C | 38 60 00 00 */	li r3, 0x0
/* 81450D20 | 4E 80 00 20 */	blr
.L_81450D24:
/* 81450D24 | 39 20 00 00 */	li r9, 0x0
/* 81450D28 | 6C A8 80 00 */	xoris r8, r5, 0x8000
/* 81450D2C | 6D 24 80 00 */	xoris r4, r9, 0x8000
/* 81450D30 | 7C 09 30 10 */	subfc r0, r9, r6
/* 81450D34 | 7C 84 41 10 */	subfe r4, r4, r8
/* 81450D38 | 7C 88 41 10 */	subfe r4, r8, r8
/* 81450D3C | 7C 84 00 D1 */	neg. r4, r4
/* 81450D40 | 40 82 00 24 */	bne .L_81450D64
/* 81450D44 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81450D48 | 6D 20 80 00 */	xoris r0, r9, 0x8000
/* 81450D4C | 7C 86 20 10 */	subfc r4, r6, r4
/* 81450D50 | 7C 88 01 10 */	subfe r4, r8, r0
/* 81450D54 | 7C 80 01 10 */	subfe r4, r0, r0
/* 81450D58 | 7C 84 00 D1 */	neg. r4, r4
/* 81450D5C | 40 82 00 08 */	bne .L_81450D64
/* 81450D60 | 48 00 00 58 */	b .L_81450DB8
.L_81450D64:
/* 81450D64 | 81 23 00 04 */	lwz r9, 0x4(r3)
/* 81450D68 | 6C A4 80 00 */	xoris r4, r5, 0x8000
/* 81450D6C | 39 00 00 00 */	li r8, 0x0
/* 81450D70 | 20 A9 00 00 */	subfic r5, r9, 0x0
/* 81450D74 | 7C 08 01 90 */	subfze r0, r8
/* 81450D78 | 6C 03 80 00 */	xoris r3, r0, 0x8000
/* 81450D7C | 7C 05 30 10 */	subfc r0, r5, r6
/* 81450D80 | 7C 63 21 10 */	subfe r3, r3, r4
/* 81450D84 | 7C 64 21 10 */	subfe r3, r4, r4
/* 81450D88 | 7C 63 00 D1 */	neg. r3, r3
/* 81450D8C | 40 82 00 24 */	bne .L_81450DB0
/* 81450D90 | 6D 03 80 00 */	xoris r3, r8, 0x8000
/* 81450D94 | 7C 08 30 10 */	subfc r0, r8, r6
/* 81450D98 | 7C 63 21 10 */	subfe r3, r3, r4
/* 81450D9C | 7C 64 21 10 */	subfe r3, r4, r4
/* 81450DA0 | 7C 63 00 D1 */	neg. r3, r3
/* 81450DA4 | 41 82 00 0C */	beq .L_81450DB0
/* 81450DA8 | 7C C9 30 14 */	addc r6, r9, r6
/* 81450DAC | 48 00 00 0C */	b .L_81450DB8
.L_81450DB0:
/* 81450DB0 | 38 60 00 00 */	li r3, 0x0
/* 81450DB4 | 4E 80 00 20 */	blr
.L_81450DB8:
/* 81450DB8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81450DBC | 41 82 00 08 */	beq .L_81450DC4
/* 81450DC0 | 90 C7 00 00 */	stw r6, 0x0(r7)
.L_81450DC4:
/* 81450DC4 | 38 60 00 01 */	li r3, 0x1
/* 81450DC8 | 4E 80 00 20 */	blr
.endfn CHANSVm_81450D14

# .text:0x6820 | 0x81450DCC | size: 0xA8
.fn VmCtor_Blob, local
/* 81450DCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81450DD0 | 7C 08 02 A6 */	mflr r0
/* 81450DD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81450DD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81450DDC | 48 1A 86 ED */	bl _savegpr_29
/* 81450DE0 | 7C 7D 1B 78 */	mr r29, r3
/* 81450DE4 | 7C BE 2B 78 */	mr r30, r5
/* 81450DE8 | 38 80 00 00 */	li r4, 0x0
/* 81450DEC | 4B FF B8 A5 */	bl CHANSVmGetArg
/* 81450DF0 | 7C 65 1B 78 */	mr r5, r3
/* 81450DF4 | 7F A3 EB 78 */	mr r3, r29
/* 81450DF8 | 38 80 00 01 */	li r4, 0x1
/* 81450DFC | 4B FF AA E1 */	bl CHANSVmConvertObjectType
/* 81450E00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450E04 | 3B E0 00 00 */	li r31, 0x0
/* 81450E08 | 41 82 00 18 */	beq .L_81450E20
/* 81450E0C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81450E10 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81450E14 | 7C 60 03 79 */	or. r0, r3, r0
/* 81450E18 | 41 82 00 08 */	beq .L_81450E20
/* 81450E1C | 7C 7F 1B 78 */	mr r31, r3
.L_81450E20:
/* 81450E20 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81450E24 | 40 82 00 0C */	bne .L_81450E30
/* 81450E28 | 38 60 00 00 */	li r3, 0x0
/* 81450E2C | 48 00 00 30 */	b .L_81450E5C
.L_81450E30:
/* 81450E30 | 7F A3 EB 78 */	mr r3, r29
/* 81450E34 | 7F C4 F3 78 */	mr r4, r30
/* 81450E38 | 38 BF 00 0C */	addi r5, r31, 0xc
/* 81450E3C | 4B FF 9E 19 */	bl CHANSVmNewObjData
/* 81450E40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450E44 | 40 82 00 0C */	bne .L_81450E50
/* 81450E48 | 38 60 00 00 */	li r3, 0x0
/* 81450E4C | 48 00 00 10 */	b .L_81450E5C
.L_81450E50:
/* 81450E50 | 7F E4 FB 78 */	mr r4, r31
/* 81450E54 | 4B FF FD 99 */	bl vmBlobInitValue
/* 81450E58 | 38 60 00 01 */	li r3, 0x1
.L_81450E5C:
/* 81450E5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81450E60 | 48 1A 86 B5 */	bl _restgpr_29
/* 81450E64 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81450E68 | 7C 08 03 A6 */	mtlr r0
/* 81450E6C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81450E70 | 4E 80 00 20 */	blr
.endfn VmCtor_Blob

# .text:0x68C8 | 0x81450E74 | size: 0x28
.fn VmDtor_Blob, local
/* 81450E74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81450E78 | 7C 08 02 A6 */	mflr r0
/* 81450E7C | 7C 83 23 78 */	mr r3, r4
/* 81450E80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81450E84 | 4B FF FD 21 */	bl CHANSVm_81450BA4
/* 81450E88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81450E8C | 38 60 00 01 */	li r3, 0x1
/* 81450E90 | 7C 08 03 A6 */	mtlr r0
/* 81450E94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81450E98 | 4E 80 00 20 */	blr
.endfn VmDtor_Blob

# .text:0x68F0 | 0x81450E9C | size: 0x68
.fn VmMethod_offset, global
/* 81450E9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81450EA0 | 7C 08 02 A6 */	mflr r0
/* 81450EA4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81450EA8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81450EAC | 7C BF 2B 78 */	mr r31, r5
/* 81450EB0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81450EB4 | 7C 7E 1B 78 */	mr r30, r3
/* 81450EB8 | 7C 83 23 78 */	mr r3, r4
/* 81450EBC | 4B FF FC E9 */	bl CHANSVm_81450BA4
/* 81450EC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450EC4 | 41 82 00 24 */	beq .L_81450EE8
/* 81450EC8 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81450ECC | 7F C3 F3 78 */	mr r3, r30
/* 81450ED0 | 7F E4 FB 78 */	mr r4, r31
/* 81450ED4 | 38 A0 00 00 */	li r5, 0x0
/* 81450ED8 | 4B FF AA C1 */	bl CHANSVmSetInteger
/* 81450EDC | 7C 60 00 34 */	cntlzw r0, r3
/* 81450EE0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81450EE4 | 48 00 00 08 */	b .L_81450EEC
.L_81450EE8:
/* 81450EE8 | 38 60 00 00 */	li r3, 0x0
.L_81450EEC:
/* 81450EEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81450EF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81450EF4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81450EF8 | 7C 08 03 A6 */	mtlr r0
/* 81450EFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81450F00 | 4E 80 00 20 */	blr
.endfn VmMethod_offset

# .text:0x6958 | 0x81450F04 | size: 0xC4
.fn VmMethod_seek, global
/* 81450F04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81450F08 | 7C 08 02 A6 */	mflr r0
/* 81450F0C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81450F10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81450F14 | 48 1A 85 B1 */	bl _savegpr_28
/* 81450F18 | 7C 9D 23 78 */	mr r29, r4
/* 81450F1C | 7C 7C 1B 78 */	mr r28, r3
/* 81450F20 | 7C BE 2B 78 */	mr r30, r5
/* 81450F24 | 7F A3 EB 78 */	mr r3, r29
/* 81450F28 | 4B FF FC 7D */	bl CHANSVm_81450BA4
/* 81450F2C | 7C 7F 1B 78 */	mr r31, r3
/* 81450F30 | 7F 83 E3 78 */	mr r3, r28
/* 81450F34 | 38 80 00 00 */	li r4, 0x0
/* 81450F38 | 4B FF B7 59 */	bl CHANSVmGetArg
/* 81450F3C | 7C 65 1B 78 */	mr r5, r3
/* 81450F40 | 7F 83 E3 78 */	mr r3, r28
/* 81450F44 | 38 80 00 01 */	li r4, 0x1
/* 81450F48 | 4B FF A9 95 */	bl CHANSVmConvertObjectType
/* 81450F4C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81450F50 | 7C 64 1B 78 */	mr r4, r3
/* 81450F54 | 41 82 00 0C */	beq .L_81450F60
/* 81450F58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450F5C | 40 82 00 0C */	bne .L_81450F68
.L_81450F60:
/* 81450F60 | 38 60 00 00 */	li r3, 0x0
/* 81450F64 | 48 00 00 4C */	b .L_81450FB0
.L_81450F68:
/* 81450F68 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 81450F6C | 7F E3 FB 78 */	mr r3, r31
/* 81450F70 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 81450F74 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81450F78 | 4B FF FD 9D */	bl CHANSVm_81450D14
/* 81450F7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81450F80 | 41 82 00 10 */	beq .L_81450F90
/* 81450F84 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81450F88 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81450F8C | 48 00 00 0C */	b .L_81450F98
.L_81450F90:
/* 81450F90 | 38 60 00 00 */	li r3, 0x0
/* 81450F94 | 48 00 00 1C */	b .L_81450FB0
.L_81450F98:
/* 81450F98 | 7F 83 E3 78 */	mr r3, r28
/* 81450F9C | 7F C4 F3 78 */	mr r4, r30
/* 81450FA0 | 7F A5 EB 78 */	mr r5, r29
/* 81450FA4 | 4B FF 9E F5 */	bl CHANSVmCopyObject
/* 81450FA8 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81450FAC | 7C 60 19 10 */	subfe r3, r0, r3
.L_81450FB0:
/* 81450FB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81450FB4 | 48 1A 85 5D */	bl _restgpr_28
/* 81450FB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81450FBC | 7C 08 03 A6 */	mtlr r0
/* 81450FC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81450FC4 | 4E 80 00 20 */	blr
.endfn VmMethod_seek

# .text:0x6A1C | 0x81450FC8 | size: 0xF0
.fn VmMethod_skip, global
/* 81450FC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81450FCC | 7C 08 02 A6 */	mflr r0
/* 81450FD0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81450FD4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81450FD8 | 48 1A 84 ED */	bl _savegpr_28
/* 81450FDC | 7C 9D 23 78 */	mr r29, r4
/* 81450FE0 | 7C 7C 1B 78 */	mr r28, r3
/* 81450FE4 | 7C BE 2B 78 */	mr r30, r5
/* 81450FE8 | 7F A3 EB 78 */	mr r3, r29
/* 81450FEC | 4B FF FB B9 */	bl CHANSVm_81450BA4
/* 81450FF0 | 7C 7F 1B 78 */	mr r31, r3
/* 81450FF4 | 7F 83 E3 78 */	mr r3, r28
/* 81450FF8 | 38 80 00 00 */	li r4, 0x0
/* 81450FFC | 4B FF B6 95 */	bl CHANSVmGetArg
/* 81451000 | 7C 65 1B 78 */	mr r5, r3
/* 81451004 | 7F 83 E3 78 */	mr r3, r28
/* 81451008 | 38 80 00 01 */	li r4, 0x1
/* 8145100C | 4B FF A8 D1 */	bl CHANSVmConvertObjectType
/* 81451010 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81451014 | 41 82 00 0C */	beq .L_81451020
/* 81451018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145101C | 40 82 00 0C */	bne .L_81451028
.L_81451020:
/* 81451020 | 38 60 00 00 */	li r3, 0x0
/* 81451024 | 48 00 00 7C */	b .L_814510A0
.L_81451028:
/* 81451028 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8145102C | 38 E0 00 00 */	li r7, 0x0
/* 81451030 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81451034 | 6C E5 80 00 */	xoris r5, r7, 0x8000
/* 81451038 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8145103C | 7C C6 20 14 */	addc r6, r6, r4
/* 81451040 | 7C 07 01 14 */	adde r0, r7, r0
/* 81451044 | 6C 04 80 00 */	xoris r4, r0, 0x8000
/* 81451048 | 7C 07 30 10 */	subfc r0, r7, r6
/* 8145104C | 7C A5 21 10 */	subfe r5, r5, r4
/* 81451050 | 7C A4 21 10 */	subfe r5, r4, r4
/* 81451054 | 7C A5 00 D1 */	neg. r5, r5
/* 81451058 | 40 82 00 28 */	bne .L_81451080
/* 8145105C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81451060 | 6C E0 80 00 */	xoris r0, r7, 0x8000
/* 81451064 | 7C 66 18 10 */	subfc r3, r6, r3
/* 81451068 | 7C 64 01 10 */	subfe r3, r4, r0
/* 8145106C | 7C 60 01 10 */	subfe r3, r0, r0
/* 81451070 | 7C 63 00 D1 */	neg. r3, r3
/* 81451074 | 40 82 00 0C */	bne .L_81451080
/* 81451078 | 90 DF 00 00 */	stw r6, 0x0(r31)
/* 8145107C | 48 00 00 0C */	b .L_81451088
.L_81451080:
/* 81451080 | 38 60 00 00 */	li r3, 0x0
/* 81451084 | 48 00 00 1C */	b .L_814510A0
.L_81451088:
/* 81451088 | 7F 83 E3 78 */	mr r3, r28
/* 8145108C | 7F C4 F3 78 */	mr r4, r30
/* 81451090 | 7F A5 EB 78 */	mr r5, r29
/* 81451094 | 4B FF 9E 05 */	bl CHANSVmCopyObject
/* 81451098 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8145109C | 7C 60 19 10 */	subfe r3, r0, r3
.L_814510A0:
/* 814510A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814510A4 | 48 1A 84 6D */	bl _restgpr_28
/* 814510A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814510AC | 7C 08 03 A6 */	mtlr r0
/* 814510B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814510B4 | 4E 80 00 20 */	blr
.endfn VmMethod_skip

# .text:0x6B0C | 0x814510B8 | size: 0x68
.fn VmMethod_getLength, global
/* 814510B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814510BC | 7C 08 02 A6 */	mflr r0
/* 814510C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814510C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814510C8 | 7C BF 2B 78 */	mr r31, r5
/* 814510CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814510D0 | 7C 7E 1B 78 */	mr r30, r3
/* 814510D4 | 7C 83 23 78 */	mr r3, r4
/* 814510D8 | 4B FF FA CD */	bl CHANSVm_81450BA4
/* 814510DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814510E0 | 41 82 00 24 */	beq .L_81451104
/* 814510E4 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 814510E8 | 7F C3 F3 78 */	mr r3, r30
/* 814510EC | 7F E4 FB 78 */	mr r4, r31
/* 814510F0 | 38 A0 00 00 */	li r5, 0x0
/* 814510F4 | 4B FF A8 A5 */	bl CHANSVmSetInteger
/* 814510F8 | 7C 60 00 34 */	cntlzw r0, r3
/* 814510FC | 54 03 D9 7E */	srwi r3, r0, 5
/* 81451100 | 48 00 00 08 */	b .L_81451108
.L_81451104:
/* 81451104 | 38 60 00 00 */	li r3, 0x0
.L_81451108:
/* 81451108 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145110C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81451110 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81451114 | 7C 08 03 A6 */	mtlr r0
/* 81451118 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145111C | 4E 80 00 20 */	blr
.endfn VmMethod_getLength

# .text:0x6B74 | 0x81451120 | size: 0xF8
.fn VmMethod_setLength, global
/* 81451120 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81451124 | 7C 08 02 A6 */	mflr r0
/* 81451128 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145112C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451130 | 48 1A 83 99 */	bl _savegpr_29
/* 81451134 | 7C 9D 23 78 */	mr r29, r4
/* 81451138 | 7C 7E 1B 78 */	mr r30, r3
/* 8145113C | 7F A3 EB 78 */	mr r3, r29
/* 81451140 | 4B FF FA 65 */	bl CHANSVm_81450BA4
/* 81451144 | 7C 7F 1B 78 */	mr r31, r3
/* 81451148 | 7F C3 F3 78 */	mr r3, r30
/* 8145114C | 38 80 00 00 */	li r4, 0x0
/* 81451150 | 4B FF B5 41 */	bl CHANSVmGetArg
/* 81451154 | 7C 65 1B 78 */	mr r5, r3
/* 81451158 | 7F C3 F3 78 */	mr r3, r30
/* 8145115C | 38 80 00 01 */	li r4, 0x1
/* 81451160 | 4B FF A7 7D */	bl CHANSVmConvertObjectType
/* 81451164 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81451168 | 41 82 00 0C */	beq .L_81451174
/* 8145116C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451170 | 40 82 00 0C */	bne .L_8145117C
.L_81451174:
/* 81451174 | 38 60 00 00 */	li r3, 0x0
/* 81451178 | 48 00 00 88 */	b .L_81451200
.L_8145117C:
/* 8145117C | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 81451180 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81451184 | 7C 1E 00 40 */	cmplw r30, r0
/* 81451188 | 41 81 00 74 */	bgt .L_814511FC
/* 8145118C | 7F A3 EB 78 */	mr r3, r29
/* 81451190 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 81451194 | 4B FF BE 71 */	bl CHANSVmCheckNativeInstance
/* 81451198 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145119C | 41 82 00 14 */	beq .L_814511B0
/* 814511A0 | 7F A3 EB 78 */	mr r3, r29
/* 814511A4 | 4B FF FA 01 */	bl CHANSVm_81450BA4
/* 814511A8 | 7C 7F 1B 78 */	mr r31, r3
/* 814511AC | 48 00 00 08 */	b .L_814511B4
.L_814511B0:
/* 814511B0 | 3B E0 00 00 */	li r31, 0x0
.L_814511B4:
/* 814511B4 | 7F A3 EB 78 */	mr r3, r29
/* 814511B8 | 4B FF FA 11 */	bl CHANSVm_81450BC8
/* 814511BC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814511C0 | 40 82 00 0C */	bne .L_814511CC
/* 814511C4 | 38 60 00 00 */	li r3, 0x0
/* 814511C8 | 48 00 00 38 */	b .L_81451200
.L_814511CC:
/* 814511CC | 38 03 FF F4 */	subi r0, r3, 0xc
/* 814511D0 | 7C 1E 00 00 */	cmpw r30, r0
/* 814511D4 | 41 81 00 20 */	bgt .L_814511F4
/* 814511D8 | 93 DF 00 04 */	stw r30, 0x4(r31)
/* 814511DC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814511E0 | 7C 1E 00 40 */	cmplw r30, r0
/* 814511E4 | 40 80 00 08 */	bge .L_814511EC
/* 814511E8 | 93 DF 00 00 */	stw r30, 0x0(r31)
.L_814511EC:
/* 814511EC | 38 60 00 01 */	li r3, 0x1
/* 814511F0 | 48 00 00 10 */	b .L_81451200
.L_814511F4:
/* 814511F4 | 38 60 00 00 */	li r3, 0x0
/* 814511F8 | 48 00 00 08 */	b .L_81451200
.L_814511FC:
/* 814511FC | 38 60 00 00 */	li r3, 0x0
.L_81451200:
/* 81451200 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451204 | 48 1A 83 11 */	bl _restgpr_29
/* 81451208 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145120C | 7C 08 03 A6 */	mtlr r0
/* 81451210 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81451214 | 4E 80 00 20 */	blr
.endfn VmMethod_setLength

# .text:0x6C6C | 0x81451218 | size: 0xFC
.fn VmMethod_fill, global
/* 81451218 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145121C | 7C 08 02 A6 */	mflr r0
/* 81451220 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81451224 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451228 | 48 1A 82 A1 */	bl _savegpr_29
/* 8145122C | 7C 7F 1B 78 */	mr r31, r3
/* 81451230 | 7C 83 23 78 */	mr r3, r4
/* 81451234 | 4B FF F9 71 */	bl CHANSVm_81450BA4
/* 81451238 | 7C 7D 1B 78 */	mr r29, r3
/* 8145123C | 7F E3 FB 78 */	mr r3, r31
/* 81451240 | 38 80 00 00 */	li r4, 0x0
/* 81451244 | 4B FF B4 4D */	bl CHANSVmGetArg
/* 81451248 | 7C 65 1B 78 */	mr r5, r3
/* 8145124C | 7F E3 FB 78 */	mr r3, r31
/* 81451250 | 38 80 00 01 */	li r4, 0x1
/* 81451254 | 4B FF A6 89 */	bl CHANSVmConvertObjectType
/* 81451258 | 7C 7E 1B 78 */	mr r30, r3
/* 8145125C | 7F E3 FB 78 */	mr r3, r31
/* 81451260 | 38 80 00 01 */	li r4, 0x1
/* 81451264 | 4B FF B4 2D */	bl CHANSVmGetArg
/* 81451268 | 7C 65 1B 78 */	mr r5, r3
/* 8145126C | 7F E3 FB 78 */	mr r3, r31
/* 81451270 | 38 80 00 01 */	li r4, 0x1
/* 81451274 | 4B FF A6 69 */	bl CHANSVmConvertObjectType
/* 81451278 | 2C 9D 00 00 */	cmpwi cr1, r29, 0x0
/* 8145127C | 7C 64 1B 78 */	mr r4, r3
/* 81451280 | 41 86 00 0C */	beq cr1, .L_8145128C
/* 81451284 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81451288 | 40 82 00 0C */	bne .L_81451294
.L_8145128C:
/* 8145128C | 38 60 00 00 */	li r3, 0x0
/* 81451290 | 48 00 00 6C */	b .L_814512FC
.L_81451294:
/* 81451294 | 41 86 00 18 */	beq cr1, .L_814512AC
/* 81451298 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145129C | 7F A3 EB 78 */	mr r3, r29
/* 814512A0 | 48 00 00 75 */	bl CHANSVm_81451314
/* 814512A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814512A8 | 48 00 00 08 */	b .L_814512B0
.L_814512AC:
/* 814512AC | 3B E0 00 00 */	li r31, 0x0
.L_814512B0:
/* 814512B0 | 7F A3 EB 78 */	mr r3, r29
/* 814512B4 | 7F E6 FB 78 */	mr r6, r31
/* 814512B8 | 38 A0 00 00 */	li r5, 0x0
/* 814512BC | 48 00 00 8D */	bl CHANSVm_81451348
/* 814512C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814512C4 | 41 82 00 34 */	beq .L_814512F8
/* 814512C8 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814512CC | 7F E5 FB 78 */	mr r5, r31
/* 814512D0 | 80 DD 00 08 */	lwz r6, 0x8(r29)
/* 814512D4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814512D8 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814512DC | 7C 66 1A 14 */	add r3, r6, r3
/* 814512E0 | 4B ED F0 55 */	bl memset
/* 814512E4 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814512E8 | 38 60 00 01 */	li r3, 0x1
/* 814512EC | 7C 00 FA 14 */	add r0, r0, r31
/* 814512F0 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814512F4 | 48 00 00 08 */	b .L_814512FC
.L_814512F8:
/* 814512F8 | 38 60 00 00 */	li r3, 0x0
.L_814512FC:
/* 814512FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451300 | 48 1A 82 15 */	bl _restgpr_29
/* 81451304 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81451308 | 7C 08 03 A6 */	mtlr r0
/* 8145130C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81451310 | 4E 80 00 20 */	blr
.endfn VmMethod_fill

# .text:0x6D68 | 0x81451314 | size: 0x34
.fn CHANSVm_81451314, global
/* 81451314 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81451318 | 41 82 00 0C */	beq .L_81451324
/* 8145131C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81451320 | 4E 80 00 20 */	blr
.L_81451324:
/* 81451324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451328 | 41 82 00 18 */	beq .L_81451340
/* 8145132C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81451330 | 7C 00 28 40 */	cmplw r0, r5
/* 81451334 | 41 80 00 0C */	blt .L_81451340
/* 81451338 | 7C 65 00 50 */	subf r3, r5, r0
/* 8145133C | 4E 80 00 20 */	blr
.L_81451340:
/* 81451340 | 38 60 00 00 */	li r3, 0x0
/* 81451344 | 4E 80 00 20 */	blr
.endfn CHANSVm_81451314

# .text:0x6D9C | 0x81451348 | size: 0x50
.fn CHANSVm_81451348, global
/* 81451348 | 38 E0 00 00 */	li r7, 0x0
/* 8145134C | 6C A4 80 00 */	xoris r4, r5, 0x8000
/* 81451350 | 6C E5 80 00 */	xoris r5, r7, 0x8000
/* 81451354 | 81 03 00 00 */	lwz r8, 0x0(r3)
/* 81451358 | 7C 07 30 10 */	subfc r0, r7, r6
/* 8145135C | 7C A5 21 10 */	subfe r5, r5, r4
/* 81451360 | 7C A4 21 10 */	subfe r5, r4, r4
/* 81451364 | 7C A5 00 D1 */	neg. r5, r5
/* 81451368 | 40 82 00 28 */	bne .L_81451390
/* 8145136C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81451370 | 6C E0 80 00 */	xoris r0, r7, 0x8000
/* 81451374 | 7C 68 18 50 */	subf r3, r8, r3
/* 81451378 | 7C 66 18 10 */	subfc r3, r6, r3
/* 8145137C | 7C 64 01 10 */	subfe r3, r4, r0
/* 81451380 | 7C 60 01 10 */	subfe r3, r0, r0
/* 81451384 | 7C 63 00 D1 */	neg. r3, r3
/* 81451388 | 40 82 00 08 */	bne .L_81451390
/* 8145138C | 38 E0 00 01 */	li r7, 0x1
.L_81451390:
/* 81451390 | 7C E3 3B 78 */	mr r3, r7
/* 81451394 | 4E 80 00 20 */	blr
.endfn CHANSVm_81451348

# .text:0x6DEC | 0x81451398 | size: 0xC8
.fn VmMethod_getString, global
/* 81451398 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145139C | 7C 08 02 A6 */	mflr r0
/* 814513A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814513A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814513A8 | 48 1A 81 1D */	bl _savegpr_28
/* 814513AC | 7C 7C 1B 78 */	mr r28, r3
/* 814513B0 | 7C 83 23 78 */	mr r3, r4
/* 814513B4 | 7C BD 2B 78 */	mr r29, r5
/* 814513B8 | 4B FF F7 ED */	bl CHANSVm_81450BA4
/* 814513BC | 7C 7F 1B 78 */	mr r31, r3
/* 814513C0 | 7F 83 E3 78 */	mr r3, r28
/* 814513C4 | 38 80 00 00 */	li r4, 0x0
/* 814513C8 | 4B FF B2 C9 */	bl CHANSVmGetArg
/* 814513CC | 7C 65 1B 78 */	mr r5, r3
/* 814513D0 | 7F 83 E3 78 */	mr r3, r28
/* 814513D4 | 38 80 00 01 */	li r4, 0x1
/* 814513D8 | 4B FF A5 05 */	bl CHANSVmConvertObjectType
/* 814513DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814513E0 | 41 82 00 0C */	beq .L_814513EC
/* 814513E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814513E8 | 40 82 00 0C */	bne .L_814513F4
.L_814513EC:
/* 814513EC | 38 60 00 00 */	li r3, 0x0
/* 814513F0 | 48 00 00 58 */	b .L_81451448
.L_814513F4:
/* 814513F4 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 814513F8 | 7F E3 FB 78 */	mr r3, r31
/* 814513FC | 38 A0 00 00 */	li r5, 0x0
/* 81451400 | 7F C6 F3 78 */	mr r6, r30
/* 81451404 | 4B FF FF 45 */	bl CHANSVm_81451348
/* 81451408 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145140C | 41 82 00 38 */	beq .L_81451444
/* 81451410 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 81451414 | 7F 83 E3 78 */	mr r3, r28
/* 81451418 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8145141C | 7F A4 EB 78 */	mr r4, r29
/* 81451420 | 7F C6 F3 78 */	mr r6, r30
/* 81451424 | 7C A5 02 14 */	add r5, r5, r0
/* 81451428 | 4B FF A6 B5 */	bl CHANSVmSetU16StringFromU8
/* 8145142C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81451430 | 7C 60 00 34 */	cntlzw r0, r3
/* 81451434 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81451438 | 7C 04 F2 14 */	add r0, r4, r30
/* 8145143C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81451440 | 48 00 00 08 */	b .L_81451448
.L_81451444:
/* 81451444 | 38 60 00 00 */	li r3, 0x0
.L_81451448:
/* 81451448 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145144C | 48 1A 80 C5 */	bl _restgpr_28
/* 81451450 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81451454 | 7C 08 03 A6 */	mtlr r0
/* 81451458 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145145C | 4E 80 00 20 */	blr
.endfn VmMethod_getString

# .text:0x6EB4 | 0x81451460 | size: 0x12C
.fn VmMethod_setString, global
/* 81451460 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81451464 | 7C 08 02 A6 */	mflr r0
/* 81451468 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145146C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451470 | 48 1A 80 51 */	bl _savegpr_27
/* 81451474 | 7C 7B 1B 78 */	mr r27, r3
/* 81451478 | 7C 83 23 78 */	mr r3, r4
/* 8145147C | 4B FF F7 29 */	bl CHANSVm_81450BA4
/* 81451480 | 7C 7F 1B 78 */	mr r31, r3
/* 81451484 | 7F 63 DB 78 */	mr r3, r27
/* 81451488 | 38 80 00 00 */	li r4, 0x0
/* 8145148C | 4B FF B2 05 */	bl CHANSVmGetArg
/* 81451490 | 7C 65 1B 78 */	mr r5, r3
/* 81451494 | 7F 63 DB 78 */	mr r3, r27
/* 81451498 | 38 80 00 03 */	li r4, 0x3
/* 8145149C | 4B FF A4 41 */	bl CHANSVmConvertObjectType
/* 814514A0 | 7C 7E 1B 78 */	mr r30, r3
/* 814514A4 | 4B FF F7 01 */	bl CHANSVm_81450BA4
/* 814514A8 | 7C 7D 1B 78 */	mr r29, r3
/* 814514AC | 7F C3 F3 78 */	mr r3, r30
/* 814514B0 | 4B FF F7 19 */	bl CHANSVm_81450BC8
/* 814514B4 | 54 7C F8 7E */	srwi r28, r3, 1
/* 814514B8 | 7F 63 DB 78 */	mr r3, r27
/* 814514BC | 38 80 00 01 */	li r4, 0x1
/* 814514C0 | 4B FF B1 D1 */	bl CHANSVmGetArg
/* 814514C4 | 7C 65 1B 78 */	mr r5, r3
/* 814514C8 | 7F 63 DB 78 */	mr r3, r27
/* 814514CC | 38 80 00 01 */	li r4, 0x1
/* 814514D0 | 4B FF A4 0D */	bl CHANSVmConvertObjectType
/* 814514D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814514D8 | 41 82 00 14 */	beq .L_814514EC
/* 814514DC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814514E0 | 41 82 00 0C */	beq .L_814514EC
/* 814514E4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814514E8 | 40 82 00 0C */	bne .L_814514F4
.L_814514EC:
/* 814514EC | 38 60 00 00 */	li r3, 0x0
/* 814514F0 | 48 00 00 84 */	b .L_81451574
.L_814514F4:
/* 814514F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814514F8 | 40 82 00 0C */	bne .L_81451504
/* 814514FC | 7F 9E E3 78 */	mr r30, r28
/* 81451500 | 48 00 00 14 */	b .L_81451514
.L_81451504:
/* 81451504 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 81451508 | 7C 1E E0 40 */	cmplw r30, r28
/* 8145150C | 40 80 00 08 */	bge .L_81451514
/* 81451510 | 7F DC F3 78 */	mr r28, r30
.L_81451514:
/* 81451514 | 7F E3 FB 78 */	mr r3, r31
/* 81451518 | 7F C6 F3 78 */	mr r6, r30
/* 8145151C | 38 A0 00 00 */	li r5, 0x0
/* 81451520 | 4B FF FE 29 */	bl CHANSVm_81451348
/* 81451524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451528 | 41 82 00 48 */	beq .L_81451570
/* 8145152C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81451530 | 7F C5 F3 78 */	mr r5, r30
/* 81451534 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81451538 | 38 80 00 00 */	li r4, 0x0
/* 8145153C | 7C 63 02 14 */	add r3, r3, r0
/* 81451540 | 4B ED ED F5 */	bl memset
/* 81451544 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81451548 | 7F A4 EB 78 */	mr r4, r29
/* 8145154C | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81451550 | 7F 85 E3 78 */	mr r5, r28
/* 81451554 | 7C 63 02 14 */	add r3, r3, r0
/* 81451558 | 4B FF 9B 35 */	bl VmStrCpyToU8FromU16
/* 8145155C | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81451560 | 38 60 00 01 */	li r3, 0x1
/* 81451564 | 7C 00 F2 14 */	add r0, r0, r30
/* 81451568 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8145156C | 48 00 00 08 */	b .L_81451574
.L_81451570:
/* 81451570 | 38 60 00 00 */	li r3, 0x0
.L_81451574:
/* 81451574 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451578 | 48 1A 7F 95 */	bl _restgpr_27
/* 8145157C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81451580 | 7C 08 03 A6 */	mtlr r0
/* 81451584 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81451588 | 4E 80 00 20 */	blr
.endfn VmMethod_setString

# .text:0x6FE0 | 0x8145158C | size: 0xE0
.fn VmMethod_getWString, global
/* 8145158C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81451590 | 7C 08 02 A6 */	mflr r0
/* 81451594 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81451598 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145159C | 48 1A 7F 29 */	bl _savegpr_28
/* 814515A0 | 7C 7C 1B 78 */	mr r28, r3
/* 814515A4 | 7C 83 23 78 */	mr r3, r4
/* 814515A8 | 7C BD 2B 78 */	mr r29, r5
/* 814515AC | 4B FF F5 F9 */	bl CHANSVm_81450BA4
/* 814515B0 | 7C 7E 1B 78 */	mr r30, r3
/* 814515B4 | 7F 83 E3 78 */	mr r3, r28
/* 814515B8 | 38 80 00 00 */	li r4, 0x0
/* 814515BC | 4B FF B0 D5 */	bl CHANSVmGetArg
/* 814515C0 | 7C 65 1B 78 */	mr r5, r3
/* 814515C4 | 7F 83 E3 78 */	mr r3, r28
/* 814515C8 | 38 80 00 01 */	li r4, 0x1
/* 814515CC | 4B FF A3 11 */	bl CHANSVmConvertObjectType
/* 814515D0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814515D4 | 7C 7F 1B 78 */	mr r31, r3
/* 814515D8 | 41 82 00 0C */	beq .L_814515E4
/* 814515DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814515E0 | 40 82 00 0C */	bne .L_814515EC
.L_814515E4:
/* 814515E4 | 38 60 00 00 */	li r3, 0x0
/* 814515E8 | 48 00 00 6C */	b .L_81451654
.L_814515EC:
/* 814515EC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814515F0 | 7F C3 F3 78 */	mr r3, r30
/* 814515F4 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 814515F8 | 54 05 08 3C */	slwi r5, r0, 1
/* 814515FC | 50 85 0F FE */	rlwimi r5, r4, 1, 31, 31
/* 81451600 | 54 86 08 3C */	slwi r6, r4, 1
/* 81451604 | 4B FF FD 45 */	bl CHANSVm_81451348
/* 81451608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145160C | 41 82 00 44 */	beq .L_81451650
/* 81451610 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81451614 | 7F 83 E3 78 */	mr r3, r28
/* 81451618 | 80 FE 00 08 */	lwz r7, 0x8(r30)
/* 8145161C | 7F A4 EB 78 */	mr r4, r29
/* 81451620 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81451624 | 54 06 08 3C */	slwi r6, r0, 1
/* 81451628 | 7C A7 2A 14 */	add r5, r7, r5
/* 8145162C | 4B FF A4 1D */	bl CHANSVmSetU16String
/* 81451630 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81451634 | 7C 60 00 34 */	cntlzw r0, r3
/* 81451638 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8145163C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81451640 | 54 80 08 3C */	slwi r0, r4, 1
/* 81451644 | 7C 00 28 14 */	addc r0, r0, r5
/* 81451648 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8145164C | 48 00 00 08 */	b .L_81451654
.L_81451650:
/* 81451650 | 38 60 00 00 */	li r3, 0x0
.L_81451654:
/* 81451654 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451658 | 48 1A 7E B9 */	bl _restgpr_28
/* 8145165C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81451660 | 7C 08 03 A6 */	mtlr r0
/* 81451664 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81451668 | 4E 80 00 20 */	blr
.endfn VmMethod_getWString

# .text:0x70C0 | 0x8145166C | size: 0x19C
.fn VmMethod_setWString, global
/* 8145166C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81451670 | 7C 08 02 A6 */	mflr r0
/* 81451674 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81451678 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145167C | 48 1A 7E 45 */	bl _savegpr_27
/* 81451680 | 7C 7B 1B 78 */	mr r27, r3
/* 81451684 | 7C 83 23 78 */	mr r3, r4
/* 81451688 | 4B FF F5 1D */	bl CHANSVm_81450BA4
/* 8145168C | 7C 7F 1B 78 */	mr r31, r3
/* 81451690 | 7F 63 DB 78 */	mr r3, r27
/* 81451694 | 38 80 00 00 */	li r4, 0x0
/* 81451698 | 4B FF AF F9 */	bl CHANSVmGetArg
/* 8145169C | 7C 65 1B 78 */	mr r5, r3
/* 814516A0 | 7F 63 DB 78 */	mr r3, r27
/* 814516A4 | 38 80 00 03 */	li r4, 0x3
/* 814516A8 | 4B FF A2 35 */	bl CHANSVmConvertObjectType
/* 814516AC | 7C 7C 1B 78 */	mr r28, r3
/* 814516B0 | 4B FF F4 F5 */	bl CHANSVm_81450BA4
/* 814516B4 | 7C 7E 1B 78 */	mr r30, r3
/* 814516B8 | 7F 83 E3 78 */	mr r3, r28
/* 814516BC | 4B FF F5 0D */	bl CHANSVm_81450BC8
/* 814516C0 | 7C 7D 1B 78 */	mr r29, r3
/* 814516C4 | 7F 63 DB 78 */	mr r3, r27
/* 814516C8 | 38 80 00 01 */	li r4, 0x1
/* 814516CC | 4B FF AF C5 */	bl CHANSVmGetArg
/* 814516D0 | 7C 65 1B 78 */	mr r5, r3
/* 814516D4 | 7F 63 DB 78 */	mr r3, r27
/* 814516D8 | 38 80 00 01 */	li r4, 0x1
/* 814516DC | 4B FF A2 01 */	bl CHANSVmConvertObjectType
/* 814516E0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814516E4 | 41 82 00 14 */	beq .L_814516F8
/* 814516E8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814516EC | 41 82 00 0C */	beq .L_814516F8
/* 814516F0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814516F4 | 40 82 00 0C */	bne .L_81451700
.L_814516F8:
/* 814516F8 | 38 60 00 00 */	li r3, 0x0
/* 814516FC | 48 00 00 F4 */	b .L_814517F0
.L_81451700:
/* 81451700 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451704 | 40 82 00 0C */	bne .L_81451710
/* 81451708 | 7F BC EB 78 */	mr r28, r29
/* 8145170C | 48 00 00 78 */	b .L_81451784
.L_81451710:
/* 81451710 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 81451714 | 38 A0 00 00 */	li r5, 0x0
/* 81451718 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 8145171C | 6C A4 80 00 */	xoris r4, r5, 0x8000
/* 81451720 | 6C C0 80 00 */	xoris r0, r6, 0x8000
/* 81451724 | 54 C6 08 3C */	slwi r6, r6, 1
/* 81451728 | 7C 65 38 10 */	subfc r3, r5, r7
/* 8145172C | 54 FC 08 3C */	slwi r28, r7, 1
/* 81451730 | 7C 84 01 10 */	subfe r4, r4, r0
/* 81451734 | 50 E6 0F FE */	rlwimi r6, r7, 1, 31, 31
/* 81451738 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8145173C | 7C 84 00 D1 */	neg. r4, r4
/* 81451740 | 40 82 00 20 */	bne .L_81451760
/* 81451744 | 6C C4 80 00 */	xoris r4, r6, 0x8000
/* 81451748 | 6C A3 80 00 */	xoris r3, r5, 0x8000
/* 8145174C | 7C 05 E0 10 */	subfc r0, r5, r28
/* 81451750 | 7C 63 21 10 */	subfe r3, r3, r4
/* 81451754 | 7C 64 21 10 */	subfe r3, r4, r4
/* 81451758 | 7C 63 00 D1 */	neg. r3, r3
/* 8145175C | 41 82 00 0C */	beq .L_81451768
.L_81451760:
/* 81451760 | 38 60 00 00 */	li r3, 0x0
/* 81451764 | 48 00 00 8C */	b .L_814517F0
.L_81451768:
/* 81451768 | 6C A3 80 00 */	xoris r3, r5, 0x8000
/* 8145176C | 7C 1D E0 10 */	subfc r0, r29, r28
/* 81451770 | 7C 63 21 10 */	subfe r3, r3, r4
/* 81451774 | 7C 64 21 10 */	subfe r3, r4, r4
/* 81451778 | 7C 63 00 D1 */	neg. r3, r3
/* 8145177C | 41 82 00 08 */	beq .L_81451784
/* 81451780 | 7F 9D E3 78 */	mr r29, r28
.L_81451784:
/* 81451784 | 7F E3 FB 78 */	mr r3, r31
/* 81451788 | 7F 86 E3 78 */	mr r6, r28
/* 8145178C | 38 A0 00 00 */	li r5, 0x0
/* 81451790 | 4B FF FB B9 */	bl CHANSVm_81451348
/* 81451794 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451798 | 41 82 00 54 */	beq .L_814517EC
/* 8145179C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814517A0 | 7F C4 F3 78 */	mr r4, r30
/* 814517A4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814517A8 | 7F A5 EB 78 */	mr r5, r29
/* 814517AC | 7C 63 02 14 */	add r3, r3, r0
/* 814517B0 | 4B ED EA 81 */	bl memcpy
/* 814517B4 | 7C 1D E0 40 */	cmplw r29, r28
/* 814517B8 | 40 80 00 20 */	bge .L_814517D8
/* 814517BC | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814517C0 | 7C BD E0 50 */	subf r5, r29, r28
/* 814517C4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814517C8 | 38 80 00 00 */	li r4, 0x0
/* 814517CC | 7C 1D 02 14 */	add r0, r29, r0
/* 814517D0 | 7C 63 02 14 */	add r3, r3, r0
/* 814517D4 | 4B ED EB 61 */	bl memset
.L_814517D8:
/* 814517D8 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814517DC | 38 60 00 01 */	li r3, 0x1
/* 814517E0 | 7C 00 E2 14 */	add r0, r0, r28
/* 814517E4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814517E8 | 48 00 00 08 */	b .L_814517F0
.L_814517EC:
/* 814517EC | 38 60 00 00 */	li r3, 0x0
.L_814517F0:
/* 814517F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814517F4 | 48 1A 7D 19 */	bl _restgpr_27
/* 814517F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814517FC | 7C 08 03 A6 */	mtlr r0
/* 81451800 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81451804 | 4E 80 00 20 */	blr
.endfn VmMethod_setWString

# .text:0x725C | 0x81451808 | size: 0xD4
.fn VmMethod_isEqual, global
/* 81451808 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145180C | 7C 08 02 A6 */	mflr r0
/* 81451810 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81451814 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451818 | 48 1A 7C AD */	bl _savegpr_28
/* 8145181C | 7C 7C 1B 78 */	mr r28, r3
/* 81451820 | 7C 83 23 78 */	mr r3, r4
/* 81451824 | 7C BD 2B 78 */	mr r29, r5
/* 81451828 | 4B FF F3 7D */	bl CHANSVm_81450BA4
/* 8145182C | 7C 7F 1B 78 */	mr r31, r3
/* 81451830 | 7F 83 E3 78 */	mr r3, r28
/* 81451834 | 38 80 00 00 */	li r4, 0x0
/* 81451838 | 4B FF AE 59 */	bl CHANSVmGetArg
/* 8145183C | 7C 7E 1B 78 */	mr r30, r3
/* 81451840 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 81451844 | 4B FF B7 C1 */	bl CHANSVmCheckNativeInstance
/* 81451848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145184C | 41 82 00 14 */	beq .L_81451860
/* 81451850 | 7F C3 F3 78 */	mr r3, r30
/* 81451854 | 4B FF F3 51 */	bl CHANSVm_81450BA4
/* 81451858 | 7C 64 1B 78 */	mr r4, r3
/* 8145185C | 48 00 00 08 */	b .L_81451864
.L_81451860:
/* 81451860 | 38 80 00 00 */	li r4, 0x0
.L_81451864:
/* 81451864 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81451868 | 41 82 00 0C */	beq .L_81451874
/* 8145186C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81451870 | 40 82 00 0C */	bne .L_8145187C
.L_81451874:
/* 81451874 | 38 60 00 00 */	li r3, 0x0
/* 81451878 | 48 00 00 4C */	b .L_814518C4
.L_8145187C:
/* 8145187C | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 81451880 | 3B C0 00 00 */	li r30, 0x0
/* 81451884 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81451888 | 7C 05 00 40 */	cmplw r5, r0
/* 8145188C | 40 82 00 1C */	bne .L_814518A8
/* 81451890 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81451894 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81451898 | 48 1A C9 3D */	bl memcmp
/* 8145189C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814518A0 | 40 82 00 08 */	bne .L_814518A8
/* 814518A4 | 3B C0 00 01 */	li r30, 0x1
.L_814518A8:
/* 814518A8 | 7F 83 E3 78 */	mr r3, r28
/* 814518AC | 7F A4 EB 78 */	mr r4, r29
/* 814518B0 | 7F C6 F3 78 */	mr r6, r30
/* 814518B4 | 7F C5 FE 70 */	srawi r5, r30, 31
/* 814518B8 | 4B FF A0 E1 */	bl CHANSVmSetInteger
/* 814518BC | 7C 60 00 34 */	cntlzw r0, r3
/* 814518C0 | 54 03 D9 7E */	srwi r3, r0, 5
.L_814518C4:
/* 814518C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814518C8 | 48 1A 7C 49 */	bl _restgpr_28
/* 814518CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814518D0 | 7C 08 03 A6 */	mtlr r0
/* 814518D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814518D8 | 4E 80 00 20 */	blr
.endfn VmMethod_isEqual

# .text:0x7330 | 0x814518DC | size: 0x220
.fn VmMethod_copyRangeFrom, global
/* 814518DC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814518E0 | 7C 08 02 A6 */	mflr r0
/* 814518E4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814518E8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814518EC | 48 1A 7B C9 */	bl _savegpr_24
/* 814518F0 | 7C 7B 1B 78 */	mr r27, r3
/* 814518F4 | 7C 83 23 78 */	mr r3, r4
/* 814518F8 | 7C BC 2B 78 */	mr r28, r5
/* 814518FC | 4B FF F2 A9 */	bl CHANSVm_81450BA4
/* 81451900 | 7C 7E 1B 78 */	mr r30, r3
/* 81451904 | 7F 63 DB 78 */	mr r3, r27
/* 81451908 | 38 80 00 00 */	li r4, 0x0
/* 8145190C | 4B FF AD 85 */	bl CHANSVmGetArg
/* 81451910 | 7C 65 1B 78 */	mr r5, r3
/* 81451914 | 7F 63 DB 78 */	mr r3, r27
/* 81451918 | 38 80 00 01 */	li r4, 0x1
/* 8145191C | 4B FF 9F C1 */	bl CHANSVmConvertObjectType
/* 81451920 | 7C 79 1B 78 */	mr r25, r3
/* 81451924 | 7F 63 DB 78 */	mr r3, r27
/* 81451928 | 38 80 00 01 */	li r4, 0x1
/* 8145192C | 4B FF AD 65 */	bl CHANSVmGetArg
/* 81451930 | 7C 7A 1B 78 */	mr r26, r3
/* 81451934 | 7F 63 DB 78 */	mr r3, r27
/* 81451938 | 38 80 00 02 */	li r4, 0x2
/* 8145193C | 4B FF AD 55 */	bl CHANSVmGetArg
/* 81451940 | 7C 65 1B 78 */	mr r5, r3
/* 81451944 | 7F 63 DB 78 */	mr r3, r27
/* 81451948 | 38 80 00 01 */	li r4, 0x1
/* 8145194C | 4B FF 9F 91 */	bl CHANSVmConvertObjectType
/* 81451950 | 7C 7D 1B 78 */	mr r29, r3
/* 81451954 | 7F 63 DB 78 */	mr r3, r27
/* 81451958 | 38 80 00 03 */	li r4, 0x3
/* 8145195C | 4B FF AD 35 */	bl CHANSVmGetArg
/* 81451960 | 7C 65 1B 78 */	mr r5, r3
/* 81451964 | 7F 63 DB 78 */	mr r3, r27
/* 81451968 | 38 80 00 01 */	li r4, 0x1
/* 8145196C | 4B FF 9F 71 */	bl CHANSVmConvertObjectType
/* 81451970 | 7C 78 1B 78 */	mr r24, r3
/* 81451974 | 7F 43 D3 78 */	mr r3, r26
/* 81451978 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 8145197C | 4B FF B6 89 */	bl CHANSVmCheckNativeInstance
/* 81451980 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451984 | 41 82 00 14 */	beq .L_81451998
/* 81451988 | 7F 43 D3 78 */	mr r3, r26
/* 8145198C | 4B FF F2 19 */	bl CHANSVm_81450BA4
/* 81451990 | 7C 7F 1B 78 */	mr r31, r3
/* 81451994 | 48 00 00 08 */	b .L_8145199C
.L_81451998:
/* 81451998 | 3B E0 00 00 */	li r31, 0x0
.L_8145199C:
/* 8145199C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814519A0 | 41 82 00 1C */	beq .L_814519BC
/* 814519A4 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814519A8 | 41 82 00 14 */	beq .L_814519BC
/* 814519AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814519B0 | 41 82 00 0C */	beq .L_814519BC
/* 814519B4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814519B8 | 40 82 00 0C */	bne .L_814519C4
.L_814519BC:
/* 814519BC | 38 60 00 00 */	li r3, 0x0
/* 814519C0 | 48 00 01 24 */	b .L_81451AE4
.L_814519C4:
/* 814519C4 | 3B 40 00 00 */	li r26, 0x0
/* 814519C8 | 7F C3 F3 78 */	mr r3, r30
/* 814519CC | 93 41 00 0C */	stw r26, 0xc(r1)
/* 814519D0 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814519D4 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 814519D8 | 80 B9 00 00 */	lwz r5, 0x0(r25)
/* 814519DC | 80 D9 00 04 */	lwz r6, 0x4(r25)
/* 814519E0 | 4B FF F3 35 */	bl CHANSVm_81450D14
/* 814519E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814519E8 | 41 82 00 F8 */	beq .L_81451AE0
/* 814519EC | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 814519F0 | 7F E3 FB 78 */	mr r3, r31
/* 814519F4 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 814519F8 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814519FC | 4B FF F3 19 */	bl CHANSVm_81450D14
/* 81451A00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451A04 | 41 82 00 DC */	beq .L_81451AE0
/* 81451A08 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81451A0C | 7F E3 FB 78 */	mr r3, r31
/* 81451A10 | 7F 04 C3 78 */	mr r4, r24
/* 81451A14 | 4B FF F9 01 */	bl CHANSVm_81451314
/* 81451A18 | 6F 44 80 00 */	xoris r4, r26, 0x8000
/* 81451A1C | 7C 1A 18 10 */	subfc r0, r26, r3
/* 81451A20 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451A24 | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 81451A28 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451A2C | 7C 7D 1B 78 */	mr r29, r3
/* 81451A30 | 7C 00 00 D1 */	neg. r0, r0
/* 81451A34 | 40 82 00 24 */	bne .L_81451A58
/* 81451A38 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 81451A3C | 7C 07 00 50 */	subf r0, r7, r0
/* 81451A40 | 7C 03 00 10 */	subfc r0, r3, r0
/* 81451A44 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451A48 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451A4C | 7C 00 00 D1 */	neg. r0, r0
/* 81451A50 | 40 82 00 08 */	bne .L_81451A58
/* 81451A54 | 3B 40 00 01 */	li r26, 0x1
.L_81451A58:
/* 81451A58 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81451A5C | 41 82 00 84 */	beq .L_81451AE0
/* 81451A60 | 38 A0 00 00 */	li r5, 0x0
/* 81451A64 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 81451A68 | 6C A4 80 00 */	xoris r4, r5, 0x8000
/* 81451A6C | 7C 05 18 10 */	subfc r0, r5, r3
/* 81451A70 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451A74 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451A78 | 7C 00 00 D1 */	neg. r0, r0
/* 81451A7C | 40 82 00 24 */	bne .L_81451AA0
/* 81451A80 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81451A84 | 7C 06 00 50 */	subf r0, r6, r0
/* 81451A88 | 7C 03 00 10 */	subfc r0, r3, r0
/* 81451A8C | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451A90 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451A94 | 7C 00 00 D1 */	neg. r0, r0
/* 81451A98 | 40 82 00 08 */	bne .L_81451AA0
/* 81451A9C | 38 A0 00 01 */	li r5, 0x1
.L_81451AA0:
/* 81451AA0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81451AA4 | 41 82 00 3C */	beq .L_81451AE0
/* 81451AA8 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81451AAC | 7F A5 EB 78 */	mr r5, r29
/* 81451AB0 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81451AB4 | 7C 63 3A 14 */	add r3, r3, r7
/* 81451AB8 | 7C 80 32 14 */	add r4, r0, r6
/* 81451ABC | 48 1A C5 F5 */	bl memmove
/* 81451AC0 | 7F 63 DB 78 */	mr r3, r27
/* 81451AC4 | 7F 84 E3 78 */	mr r4, r28
/* 81451AC8 | 7F A6 EB 78 */	mr r6, r29
/* 81451ACC | 38 A0 00 00 */	li r5, 0x0
/* 81451AD0 | 4B FF 9E C9 */	bl CHANSVmSetInteger
/* 81451AD4 | 7C 60 00 34 */	cntlzw r0, r3
/* 81451AD8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81451ADC | 48 00 00 08 */	b .L_81451AE4
.L_81451AE0:
/* 81451AE0 | 38 60 00 00 */	li r3, 0x0
.L_81451AE4:
/* 81451AE4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81451AE8 | 48 1A 7A 19 */	bl _restgpr_24
/* 81451AEC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81451AF0 | 7C 08 03 A6 */	mtlr r0
/* 81451AF4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81451AF8 | 4E 80 00 20 */	blr
.endfn VmMethod_copyRangeFrom

# .text:0x7550 | 0x81451AFC | size: 0xE4
.fn VmMethod_getBlob, global
/* 81451AFC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81451B00 | 7C 08 02 A6 */	mflr r0
/* 81451B04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81451B08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451B0C | 48 1A 79 B9 */	bl _savegpr_28
/* 81451B10 | 7C 7C 1B 78 */	mr r28, r3
/* 81451B14 | 7C 83 23 78 */	mr r3, r4
/* 81451B18 | 7C BD 2B 78 */	mr r29, r5
/* 81451B1C | 4B FF F0 89 */	bl CHANSVm_81450BA4
/* 81451B20 | 7C 7E 1B 78 */	mr r30, r3
/* 81451B24 | 7F 83 E3 78 */	mr r3, r28
/* 81451B28 | 38 80 00 00 */	li r4, 0x0
/* 81451B2C | 4B FF AB 65 */	bl CHANSVmGetArg
/* 81451B30 | 7C 65 1B 78 */	mr r5, r3
/* 81451B34 | 7F 83 E3 78 */	mr r3, r28
/* 81451B38 | 38 80 00 01 */	li r4, 0x1
/* 81451B3C | 4B FF 9D A1 */	bl CHANSVmConvertObjectType
/* 81451B40 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81451B44 | 7C 64 1B 78 */	mr r4, r3
/* 81451B48 | 40 82 00 0C */	bne .L_81451B54
/* 81451B4C | 38 60 00 00 */	li r3, 0x0
/* 81451B50 | 48 00 00 78 */	b .L_81451BC8
.L_81451B54:
/* 81451B54 | 41 82 00 18 */	beq .L_81451B6C
/* 81451B58 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81451B5C | 7F C3 F3 78 */	mr r3, r30
/* 81451B60 | 4B FF F7 B5 */	bl CHANSVm_81451314
/* 81451B64 | 7C 7F 1B 78 */	mr r31, r3
/* 81451B68 | 48 00 00 08 */	b .L_81451B70
.L_81451B6C:
/* 81451B6C | 3B E0 00 00 */	li r31, 0x0
.L_81451B70:
/* 81451B70 | 7F C3 F3 78 */	mr r3, r30
/* 81451B74 | 7F E6 FB 78 */	mr r6, r31
/* 81451B78 | 38 A0 00 00 */	li r5, 0x0
/* 81451B7C | 4B FF F7 CD */	bl CHANSVm_81451348
/* 81451B80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451B84 | 41 82 00 40 */	beq .L_81451BC4
/* 81451B88 | 80 DE 00 08 */	lwz r6, 0x8(r30)
/* 81451B8C | 7F 83 E3 78 */	mr r3, r28
/* 81451B90 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81451B94 | 7F A4 EB 78 */	mr r4, r29
/* 81451B98 | 7F E5 FB 78 */	mr r5, r31
/* 81451B9C | 7F E7 FB 78 */	mr r7, r31
/* 81451BA0 | 7C C6 02 14 */	add r6, r6, r0
/* 81451BA4 | 48 00 2D CD */	bl CHANSVmNewBlobObject
/* 81451BA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451BAC | 41 82 00 18 */	beq .L_81451BC4
/* 81451BB0 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81451BB4 | 38 60 00 01 */	li r3, 0x1
/* 81451BB8 | 7C 00 FA 14 */	add r0, r0, r31
/* 81451BBC | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81451BC0 | 48 00 00 08 */	b .L_81451BC8
.L_81451BC4:
/* 81451BC4 | 38 60 00 00 */	li r3, 0x0
.L_81451BC8:
/* 81451BC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451BCC | 48 1A 79 45 */	bl _restgpr_28
/* 81451BD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81451BD4 | 7C 08 03 A6 */	mtlr r0
/* 81451BD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81451BDC | 4E 80 00 20 */	blr
.endfn VmMethod_getBlob

# .text:0x7634 | 0x81451BE0 | size: 0x158
.fn VmMethod_setBlob, global
/* 81451BE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81451BE4 | 7C 08 02 A6 */	mflr r0
/* 81451BE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81451BEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451BF0 | 48 1A 78 D5 */	bl _savegpr_28
/* 81451BF4 | 7C 7C 1B 78 */	mr r28, r3
/* 81451BF8 | 7C 83 23 78 */	mr r3, r4
/* 81451BFC | 4B FF EF A9 */	bl CHANSVm_81450BA4
/* 81451C00 | 7C 7D 1B 78 */	mr r29, r3
/* 81451C04 | 7F 83 E3 78 */	mr r3, r28
/* 81451C08 | 38 80 00 00 */	li r4, 0x0
/* 81451C0C | 4B FF AA 85 */	bl CHANSVmGetArg
/* 81451C10 | 7C 7F 1B 78 */	mr r31, r3
/* 81451C14 | 7F 83 E3 78 */	mr r3, r28
/* 81451C18 | 38 80 00 01 */	li r4, 0x1
/* 81451C1C | 4B FF AA 75 */	bl CHANSVmGetArg
/* 81451C20 | 7C 65 1B 78 */	mr r5, r3
/* 81451C24 | 7F 83 E3 78 */	mr r3, r28
/* 81451C28 | 38 80 00 01 */	li r4, 0x1
/* 81451C2C | 4B FF 9C B1 */	bl CHANSVmConvertObjectType
/* 81451C30 | 7C 7E 1B 78 */	mr r30, r3
/* 81451C34 | 7F E3 FB 78 */	mr r3, r31
/* 81451C38 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 81451C3C | 4B FF B3 C9 */	bl CHANSVmCheckNativeInstance
/* 81451C40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451C44 | 41 82 00 14 */	beq .L_81451C58
/* 81451C48 | 7F E3 FB 78 */	mr r3, r31
/* 81451C4C | 4B FF EF 59 */	bl CHANSVm_81450BA4
/* 81451C50 | 7C 7F 1B 78 */	mr r31, r3
/* 81451C54 | 48 00 00 08 */	b .L_81451C5C
.L_81451C58:
/* 81451C58 | 3B E0 00 00 */	li r31, 0x0
.L_81451C5C:
/* 81451C5C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81451C60 | 41 82 00 0C */	beq .L_81451C6C
/* 81451C64 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81451C68 | 40 82 00 0C */	bne .L_81451C74
.L_81451C6C:
/* 81451C6C | 38 60 00 00 */	li r3, 0x0
/* 81451C70 | 48 00 00 B0 */	b .L_81451D20
.L_81451C74:
/* 81451C74 | 40 82 00 0C */	bne .L_81451C80
/* 81451C78 | 38 60 00 00 */	li r3, 0x0
/* 81451C7C | 48 00 00 A4 */	b .L_81451D20
.L_81451C80:
/* 81451C80 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81451C84 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81451C88 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81451C8C | 7F 83 00 50 */	subf r28, r3, r0
/* 81451C90 | 40 82 00 0C */	bne .L_81451C9C
/* 81451C94 | 7F 9E E3 78 */	mr r30, r28
/* 81451C98 | 48 00 00 14 */	b .L_81451CAC
.L_81451C9C:
/* 81451C9C | 83 DE 00 04 */	lwz r30, 0x4(r30)
/* 81451CA0 | 7C 1E E0 40 */	cmplw r30, r28
/* 81451CA4 | 40 80 00 08 */	bge .L_81451CAC
/* 81451CA8 | 7F DC F3 78 */	mr r28, r30
.L_81451CAC:
/* 81451CAC | 7F A3 EB 78 */	mr r3, r29
/* 81451CB0 | 7F C6 F3 78 */	mr r6, r30
/* 81451CB4 | 38 A0 00 00 */	li r5, 0x0
/* 81451CB8 | 4B FF F6 91 */	bl CHANSVm_81451348
/* 81451CBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451CC0 | 41 82 00 5C */	beq .L_81451D1C
/* 81451CC4 | 80 DD 00 08 */	lwz r6, 0x8(r29)
/* 81451CC8 | 7F 85 E3 78 */	mr r5, r28
/* 81451CCC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81451CD0 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81451CD4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81451CD8 | 7C 66 1A 14 */	add r3, r6, r3
/* 81451CDC | 7C 84 02 14 */	add r4, r4, r0
/* 81451CE0 | 48 1A C3 D1 */	bl memmove
/* 81451CE4 | 7C 1C F0 40 */	cmplw r28, r30
/* 81451CE8 | 40 80 00 20 */	bge .L_81451D08
/* 81451CEC | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 81451CF0 | 7C BC F0 50 */	subf r5, r28, r30
/* 81451CF4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81451CF8 | 38 80 00 00 */	li r4, 0x0
/* 81451CFC | 7C 1C 02 14 */	add r0, r28, r0
/* 81451D00 | 7C 63 02 14 */	add r3, r3, r0
/* 81451D04 | 4B ED E6 31 */	bl memset
.L_81451D08:
/* 81451D08 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 81451D0C | 38 60 00 01 */	li r3, 0x1
/* 81451D10 | 7C 00 F2 14 */	add r0, r0, r30
/* 81451D14 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 81451D18 | 48 00 00 08 */	b .L_81451D20
.L_81451D1C:
/* 81451D1C | 38 60 00 00 */	li r3, 0x0
.L_81451D20:
/* 81451D20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451D24 | 48 1A 77 ED */	bl _restgpr_28
/* 81451D28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81451D2C | 7C 08 03 A6 */	mtlr r0
/* 81451D30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81451D34 | 4E 80 00 20 */	blr
.endfn VmMethod_setBlob

# .text:0x778C | 0x81451D38 | size: 0x148
.fn VmMethod_getHexString, global
/* 81451D38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81451D3C | 7C 08 02 A6 */	mflr r0
/* 81451D40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81451D44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451D48 | 48 1A 77 7D */	bl _savegpr_28
/* 81451D4C | 7C 7C 1B 78 */	mr r28, r3
/* 81451D50 | 7C 83 23 78 */	mr r3, r4
/* 81451D54 | 7C BD 2B 78 */	mr r29, r5
/* 81451D58 | 4B FF EE 4D */	bl CHANSVm_81450BA4
/* 81451D5C | 7C 7E 1B 78 */	mr r30, r3
/* 81451D60 | 7F 83 E3 78 */	mr r3, r28
/* 81451D64 | 38 80 00 00 */	li r4, 0x0
/* 81451D68 | 4B FF A9 29 */	bl CHANSVmGetArg
/* 81451D6C | 7C 65 1B 78 */	mr r5, r3
/* 81451D70 | 7F 83 E3 78 */	mr r3, r28
/* 81451D74 | 38 80 00 01 */	li r4, 0x1
/* 81451D78 | 4B FF 9B 65 */	bl CHANSVmConvertObjectType
/* 81451D7C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81451D80 | 7C 64 1B 78 */	mr r4, r3
/* 81451D84 | 40 82 00 0C */	bne .L_81451D90
/* 81451D88 | 38 60 00 00 */	li r3, 0x0
/* 81451D8C | 48 00 00 DC */	b .L_81451E68
.L_81451D90:
/* 81451D90 | 41 82 00 18 */	beq .L_81451DA8
/* 81451D94 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81451D98 | 7F C3 F3 78 */	mr r3, r30
/* 81451D9C | 4B FF F5 79 */	bl CHANSVm_81451314
/* 81451DA0 | 7C 7F 1B 78 */	mr r31, r3
/* 81451DA4 | 48 00 00 08 */	b .L_81451DAC
.L_81451DA8:
/* 81451DA8 | 3B E0 00 00 */	li r31, 0x0
.L_81451DAC:
/* 81451DAC | 7F C3 F3 78 */	mr r3, r30
/* 81451DB0 | 7F E6 FB 78 */	mr r6, r31
/* 81451DB4 | 38 A0 00 00 */	li r5, 0x0
/* 81451DB8 | 4B FF F5 91 */	bl CHANSVm_81451348
/* 81451DBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451DC0 | 41 82 00 A4 */	beq .L_81451E64
/* 81451DC4 | 7F 83 E3 78 */	mr r3, r28
/* 81451DC8 | 7F A5 EB 78 */	mr r5, r29
/* 81451DCC | 57 E7 10 3A */	slwi r7, r31, 2
/* 81451DD0 | 38 80 00 00 */	li r4, 0x0
/* 81451DD4 | 38 C0 00 03 */	li r6, 0x3
/* 81451DD8 | 4B FF 8F FD */	bl CHANSVmNewObject
/* 81451DDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451DE0 | 41 82 00 84 */	beq .L_81451E64
/* 81451DE4 | 7F A3 EB 78 */	mr r3, r29
/* 81451DE8 | 4B FF ED BD */	bl CHANSVm_81450BA4
/* 81451DEC | 80 DE 00 08 */	lwz r6, 0x8(r30)
/* 81451DF0 | 38 80 00 00 */	li r4, 0x0
/* 81451DF4 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81451DF8 | 38 A0 00 00 */	li r5, 0x0
/* 81451DFC | 81 0D 96 A4 */	lwz r8, lbl_816976E4@sda21(r0)
/* 81451E00 | 7C C6 02 14 */	add r6, r6, r0
/* 81451E04 | 7F E9 03 A6 */	mtctr r31
/* 81451E08 | 28 1F 00 00 */	cmplwi r31, 0x0
/* 81451E0C | 40 81 00 44 */	ble .L_81451E50
.L_81451E10:
/* 81451E10 | 88 E6 00 00 */	lbz r7, 0x0(r6)
/* 81451E14 | 38 05 00 01 */	addi r0, r5, 0x1
/* 81451E18 | 54 00 08 3C */	slwi r0, r0, 1
/* 81451E1C | 38 A5 00 02 */	addi r5, r5, 0x2
/* 81451E20 | 54 E7 E7 3E */	extrwi r7, r7, 4, 24
/* 81451E24 | 7C E8 38 AE */	lbzx r7, r8, r7
/* 81451E28 | 7C E7 07 74 */	extsb r7, r7
/* 81451E2C | 7C E3 23 2E */	sthx r7, r3, r4
/* 81451E30 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81451E34 | 88 E6 00 00 */	lbz r7, 0x0(r6)
/* 81451E38 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81451E3C | 54 E7 07 3E */	clrlwi r7, r7, 28
/* 81451E40 | 7C E8 38 AE */	lbzx r7, r8, r7
/* 81451E44 | 7C E7 07 74 */	extsb r7, r7
/* 81451E48 | 7C E3 03 2E */	sthx r7, r3, r0
/* 81451E4C | 42 00 FF C4 */	bdnz .L_81451E10
.L_81451E50:
/* 81451E50 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81451E54 | 38 60 00 01 */	li r3, 0x1
/* 81451E58 | 7C 00 FA 14 */	add r0, r0, r31
/* 81451E5C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81451E60 | 48 00 00 08 */	b .L_81451E68
.L_81451E64:
/* 81451E64 | 38 60 00 00 */	li r3, 0x0
.L_81451E68:
/* 81451E68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81451E6C | 48 1A 76 A5 */	bl _restgpr_28
/* 81451E70 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81451E74 | 7C 08 03 A6 */	mtlr r0
/* 81451E78 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81451E7C | 4E 80 00 20 */	blr
.endfn VmMethod_getHexString

# .text:0x78D4 | 0x81451E80 | size: 0xB4
.fn VmMethod_calcSHA1Digest, global
/* 81451E80 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81451E84 | 7C 08 02 A6 */	mflr r0
/* 81451E88 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81451E8C | 39 61 00 80 */	addi r11, r1, 0x80
/* 81451E90 | 48 1A 76 39 */	bl _savegpr_29
/* 81451E94 | 7C 7E 1B 78 */	mr r30, r3
/* 81451E98 | 7C 83 23 78 */	mr r3, r4
/* 81451E9C | 7C BD 2B 78 */	mr r29, r5
/* 81451EA0 | 4B FF ED 05 */	bl CHANSVm_81450BA4
/* 81451EA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451EA8 | 7C 7F 1B 78 */	mr r31, r3
/* 81451EAC | 40 82 00 0C */	bne .L_81451EB8
/* 81451EB0 | 38 60 00 00 */	li r3, 0x0
/* 81451EB4 | 48 00 00 68 */	b .L_81451F1C
.L_81451EB8:
/* 81451EB8 | 7F C3 F3 78 */	mr r3, r30
/* 81451EBC | 7F A4 EB 78 */	mr r4, r29
/* 81451EC0 | 38 A0 00 14 */	li r5, 0x14
/* 81451EC4 | 4B FF ED 49 */	bl vmBlobCreateDirect
/* 81451EC8 | 7C 7E 1B 78 */	mr r30, r3
/* 81451ECC | 4B FF ED ED */	bl vmBlobGetDataBufferDirect
/* 81451ED0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81451ED4 | 7C 7D 1B 78 */	mr r29, r3
/* 81451ED8 | 41 82 00 0C */	beq .L_81451EE4
/* 81451EDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451EE0 | 40 82 00 0C */	bne .L_81451EEC
.L_81451EE4:
/* 81451EE4 | 38 60 00 00 */	li r3, 0x0
/* 81451EE8 | 48 00 00 34 */	b .L_81451F1C
.L_81451EEC:
/* 81451EEC | 83 DF 00 04 */	lwz r30, 0x4(r31)
/* 81451EF0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81451EF4 | 83 FF 00 08 */	lwz r31, 0x8(r31)
/* 81451EF8 | 48 04 20 1D */	bl NETSHA1Init
/* 81451EFC | 7F E4 FB 78 */	mr r4, r31
/* 81451F00 | 7F C5 F3 78 */	mr r5, r30
/* 81451F04 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81451F08 | 48 04 20 5D */	bl NETSHA1Update
/* 81451F0C | 7F A4 EB 78 */	mr r4, r29
/* 81451F10 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81451F14 | 48 04 21 05 */	bl NETSHA1GetDigest
/* 81451F18 | 38 60 00 01 */	li r3, 0x1
.L_81451F1C:
/* 81451F1C | 39 61 00 80 */	addi r11, r1, 0x80
/* 81451F20 | 48 1A 75 F5 */	bl _restgpr_29
/* 81451F24 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 81451F28 | 7C 08 03 A6 */	mtlr r0
/* 81451F2C | 38 21 00 80 */	addi r1, r1, 0x80
/* 81451F30 | 4E 80 00 20 */	blr
.endfn VmMethod_calcSHA1Digest

# .text:0x7988 | 0x81451F34 | size: 0x184
.fn VmMethod_calcRangeSHA1Digest, global
/* 81451F34 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81451F38 | 7C 08 02 A6 */	mflr r0
/* 81451F3C | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81451F40 | 39 61 00 90 */	addi r11, r1, 0x90
/* 81451F44 | 48 1A 75 79 */	bl _savegpr_26
/* 81451F48 | 7C 7A 1B 78 */	mr r26, r3
/* 81451F4C | 7C 83 23 78 */	mr r3, r4
/* 81451F50 | 7C BB 2B 78 */	mr r27, r5
/* 81451F54 | 4B FF EC 51 */	bl CHANSVm_81450BA4
/* 81451F58 | 7C 7D 1B 78 */	mr r29, r3
/* 81451F5C | 7F 43 D3 78 */	mr r3, r26
/* 81451F60 | 38 80 00 00 */	li r4, 0x0
/* 81451F64 | 4B FF A7 2D */	bl CHANSVmGetArg
/* 81451F68 | 7C 65 1B 78 */	mr r5, r3
/* 81451F6C | 7F 43 D3 78 */	mr r3, r26
/* 81451F70 | 38 80 00 01 */	li r4, 0x1
/* 81451F74 | 4B FF 99 69 */	bl CHANSVmConvertObjectType
/* 81451F78 | 7C 7E 1B 78 */	mr r30, r3
/* 81451F7C | 7F 43 D3 78 */	mr r3, r26
/* 81451F80 | 38 80 00 01 */	li r4, 0x1
/* 81451F84 | 4B FF A7 0D */	bl CHANSVmGetArg
/* 81451F88 | 7C 65 1B 78 */	mr r5, r3
/* 81451F8C | 7F 43 D3 78 */	mr r3, r26
/* 81451F90 | 38 80 00 01 */	li r4, 0x1
/* 81451F94 | 4B FF 99 49 */	bl CHANSVmConvertObjectType
/* 81451F98 | 3B E0 00 00 */	li r31, 0x0
/* 81451F9C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81451FA0 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81451FA4 | 7C 7C 1B 78 */	mr r28, r3
/* 81451FA8 | 41 82 00 0C */	beq .L_81451FB4
/* 81451FAC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81451FB0 | 40 82 00 0C */	bne .L_81451FBC
.L_81451FB4:
/* 81451FB4 | 38 60 00 00 */	li r3, 0x0
/* 81451FB8 | 48 00 00 E8 */	b .L_814520A0
.L_81451FBC:
/* 81451FBC | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81451FC0 | 7F A3 EB 78 */	mr r3, r29
/* 81451FC4 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81451FC8 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81451FCC | 4B FF ED 49 */	bl CHANSVm_81450D14
/* 81451FD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81451FD4 | 41 82 00 C8 */	beq .L_8145209C
/* 81451FD8 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81451FDC | 7F A3 EB 78 */	mr r3, r29
/* 81451FE0 | 7F 84 E3 78 */	mr r4, r28
/* 81451FE4 | 4B FF F3 31 */	bl CHANSVm_81451314
/* 81451FE8 | 6F E4 80 00 */	xoris r4, r31, 0x8000
/* 81451FEC | 7C 1F 18 10 */	subfc r0, r31, r3
/* 81451FF0 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451FF4 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81451FF8 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81451FFC | 7C 7C 1B 78 */	mr r28, r3
/* 81452000 | 7C 00 00 D1 */	neg. r0, r0
/* 81452004 | 40 82 00 24 */	bne .L_81452028
/* 81452008 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8145200C | 7C 05 00 50 */	subf r0, r5, r0
/* 81452010 | 7C 03 00 10 */	subfc r0, r3, r0
/* 81452014 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452018 | 7C 04 21 10 */	subfe r0, r4, r4
/* 8145201C | 7C 00 00 D1 */	neg. r0, r0
/* 81452020 | 40 82 00 08 */	bne .L_81452028
/* 81452024 | 3B E0 00 01 */	li r31, 0x1
.L_81452028:
/* 81452028 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145202C | 41 82 00 70 */	beq .L_8145209C
/* 81452030 | 7F 43 D3 78 */	mr r3, r26
/* 81452034 | 7F 64 DB 78 */	mr r4, r27
/* 81452038 | 38 A0 00 14 */	li r5, 0x14
/* 8145203C | 4B FF EB D1 */	bl vmBlobCreateDirect
/* 81452040 | 7C 7E 1B 78 */	mr r30, r3
/* 81452044 | 4B FF EC 75 */	bl vmBlobGetDataBufferDirect
/* 81452048 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145204C | 7C 7F 1B 78 */	mr r31, r3
/* 81452050 | 41 82 00 0C */	beq .L_8145205C
/* 81452054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452058 | 40 82 00 0C */	bne .L_81452064
.L_8145205C:
/* 8145205C | 38 60 00 00 */	li r3, 0x0
/* 81452060 | 48 00 00 40 */	b .L_814520A0
.L_81452064:
/* 81452064 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81452068 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8145206C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81452070 | 7F C4 02 14 */	add r30, r4, r0
/* 81452074 | 48 04 1E A1 */	bl NETSHA1Init
/* 81452078 | 7F C4 F3 78 */	mr r4, r30
/* 8145207C | 7F 85 E3 78 */	mr r5, r28
/* 81452080 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81452084 | 48 04 1E E1 */	bl NETSHA1Update
/* 81452088 | 7F E4 FB 78 */	mr r4, r31
/* 8145208C | 38 61 00 0C */	addi r3, r1, 0xc
/* 81452090 | 48 04 1F 89 */	bl NETSHA1GetDigest
/* 81452094 | 38 60 00 01 */	li r3, 0x1
/* 81452098 | 48 00 00 08 */	b .L_814520A0
.L_8145209C:
/* 8145209C | 38 60 00 00 */	li r3, 0x0
.L_814520A0:
/* 814520A0 | 39 61 00 90 */	addi r11, r1, 0x90
/* 814520A4 | 48 1A 74 65 */	bl _restgpr_26
/* 814520A8 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 814520AC | 7C 08 03 A6 */	mtlr r0
/* 814520B0 | 38 21 00 90 */	addi r1, r1, 0x90
/* 814520B4 | 4E 80 00 20 */	blr
.endfn VmMethod_calcRangeSHA1Digest

# .text:0x7B0C | 0x814520B8 | size: 0xB4
.fn VmMethod_calcMD5Digest, global
/* 814520B8 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814520BC | 7C 08 02 A6 */	mflr r0
/* 814520C0 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814520C4 | 39 61 00 70 */	addi r11, r1, 0x70
/* 814520C8 | 48 1A 74 01 */	bl _savegpr_29
/* 814520CC | 7C 7E 1B 78 */	mr r30, r3
/* 814520D0 | 7C 83 23 78 */	mr r3, r4
/* 814520D4 | 7C BD 2B 78 */	mr r29, r5
/* 814520D8 | 4B FF EA CD */	bl CHANSVm_81450BA4
/* 814520DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814520E0 | 7C 7F 1B 78 */	mr r31, r3
/* 814520E4 | 40 82 00 0C */	bne .L_814520F0
/* 814520E8 | 38 60 00 00 */	li r3, 0x0
/* 814520EC | 48 00 00 68 */	b .L_81452154
.L_814520F0:
/* 814520F0 | 7F C3 F3 78 */	mr r3, r30
/* 814520F4 | 7F A4 EB 78 */	mr r4, r29
/* 814520F8 | 38 A0 00 10 */	li r5, 0x10
/* 814520FC | 4B FF EB 11 */	bl vmBlobCreateDirect
/* 81452100 | 7C 7E 1B 78 */	mr r30, r3
/* 81452104 | 4B FF EB B5 */	bl vmBlobGetDataBufferDirect
/* 81452108 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145210C | 7C 7D 1B 78 */	mr r29, r3
/* 81452110 | 41 82 00 0C */	beq .L_8145211C
/* 81452114 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452118 | 40 82 00 0C */	bne .L_81452124
.L_8145211C:
/* 8145211C | 38 60 00 00 */	li r3, 0x0
/* 81452120 | 48 00 00 34 */	b .L_81452154
.L_81452124:
/* 81452124 | 83 DF 00 04 */	lwz r30, 0x4(r31)
/* 81452128 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145212C | 83 FF 00 08 */	lwz r31, 0x8(r31)
/* 81452130 | 48 04 16 C5 */	bl NETMD5Init
/* 81452134 | 7F E4 FB 78 */	mr r4, r31
/* 81452138 | 7F C5 F3 78 */	mr r5, r30
/* 8145213C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452140 | 48 04 16 F5 */	bl NETMD5Update
/* 81452144 | 7F A4 EB 78 */	mr r4, r29
/* 81452148 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145214C | 48 04 17 D9 */	bl NETMD5GetDigest
/* 81452150 | 38 60 00 01 */	li r3, 0x1
.L_81452154:
/* 81452154 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81452158 | 48 1A 73 BD */	bl _restgpr_29
/* 8145215C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81452160 | 7C 08 03 A6 */	mtlr r0
/* 81452164 | 38 21 00 70 */	addi r1, r1, 0x70
/* 81452168 | 4E 80 00 20 */	blr
.endfn VmMethod_calcMD5Digest

# .text:0x7BC0 | 0x8145216C | size: 0x184
.fn VmMethod_calcRangeMD5Digest, global
/* 8145216C | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81452170 | 7C 08 02 A6 */	mflr r0
/* 81452174 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81452178 | 39 61 00 80 */	addi r11, r1, 0x80
/* 8145217C | 48 1A 73 41 */	bl _savegpr_26
/* 81452180 | 7C 7A 1B 78 */	mr r26, r3
/* 81452184 | 7C 83 23 78 */	mr r3, r4
/* 81452188 | 7C BB 2B 78 */	mr r27, r5
/* 8145218C | 4B FF EA 19 */	bl CHANSVm_81450BA4
/* 81452190 | 7C 7D 1B 78 */	mr r29, r3
/* 81452194 | 7F 43 D3 78 */	mr r3, r26
/* 81452198 | 38 80 00 00 */	li r4, 0x0
/* 8145219C | 4B FF A4 F5 */	bl CHANSVmGetArg
/* 814521A0 | 7C 65 1B 78 */	mr r5, r3
/* 814521A4 | 7F 43 D3 78 */	mr r3, r26
/* 814521A8 | 38 80 00 01 */	li r4, 0x1
/* 814521AC | 4B FF 97 31 */	bl CHANSVmConvertObjectType
/* 814521B0 | 7C 7E 1B 78 */	mr r30, r3
/* 814521B4 | 7F 43 D3 78 */	mr r3, r26
/* 814521B8 | 38 80 00 01 */	li r4, 0x1
/* 814521BC | 4B FF A4 D5 */	bl CHANSVmGetArg
/* 814521C0 | 7C 65 1B 78 */	mr r5, r3
/* 814521C4 | 7F 43 D3 78 */	mr r3, r26
/* 814521C8 | 38 80 00 01 */	li r4, 0x1
/* 814521CC | 4B FF 97 11 */	bl CHANSVmConvertObjectType
/* 814521D0 | 3B E0 00 00 */	li r31, 0x0
/* 814521D4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814521D8 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 814521DC | 7C 7C 1B 78 */	mr r28, r3
/* 814521E0 | 41 82 00 0C */	beq .L_814521EC
/* 814521E4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814521E8 | 40 82 00 0C */	bne .L_814521F4
.L_814521EC:
/* 814521EC | 38 60 00 00 */	li r3, 0x0
/* 814521F0 | 48 00 00 E8 */	b .L_814522D8
.L_814521F4:
/* 814521F4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 814521F8 | 7F A3 EB 78 */	mr r3, r29
/* 814521FC | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81452200 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81452204 | 4B FF EB 11 */	bl CHANSVm_81450D14
/* 81452208 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145220C | 41 82 00 C8 */	beq .L_814522D4
/* 81452210 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81452214 | 7F A3 EB 78 */	mr r3, r29
/* 81452218 | 7F 84 E3 78 */	mr r4, r28
/* 8145221C | 4B FF F0 F9 */	bl CHANSVm_81451314
/* 81452220 | 6F E4 80 00 */	xoris r4, r31, 0x8000
/* 81452224 | 7C 1F 18 10 */	subfc r0, r31, r3
/* 81452228 | 7C 04 21 10 */	subfe r0, r4, r4
/* 8145222C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81452230 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452234 | 7C 7C 1B 78 */	mr r28, r3
/* 81452238 | 7C 00 00 D1 */	neg. r0, r0
/* 8145223C | 40 82 00 24 */	bne .L_81452260
/* 81452240 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 81452244 | 7C 05 00 50 */	subf r0, r5, r0
/* 81452248 | 7C 03 00 10 */	subfc r0, r3, r0
/* 8145224C | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452250 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452254 | 7C 00 00 D1 */	neg. r0, r0
/* 81452258 | 40 82 00 08 */	bne .L_81452260
/* 8145225C | 3B E0 00 01 */	li r31, 0x1
.L_81452260:
/* 81452260 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81452264 | 41 82 00 70 */	beq .L_814522D4
/* 81452268 | 7F 43 D3 78 */	mr r3, r26
/* 8145226C | 7F 64 DB 78 */	mr r4, r27
/* 81452270 | 38 A0 00 10 */	li r5, 0x10
/* 81452274 | 4B FF E9 99 */	bl vmBlobCreateDirect
/* 81452278 | 7C 7E 1B 78 */	mr r30, r3
/* 8145227C | 4B FF EA 3D */	bl vmBlobGetDataBufferDirect
/* 81452280 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81452284 | 7C 7F 1B 78 */	mr r31, r3
/* 81452288 | 41 82 00 0C */	beq .L_81452294
/* 8145228C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452290 | 40 82 00 0C */	bne .L_8145229C
.L_81452294:
/* 81452294 | 38 60 00 00 */	li r3, 0x0
/* 81452298 | 48 00 00 40 */	b .L_814522D8
.L_8145229C:
/* 8145229C | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814522A0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814522A4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814522A8 | 7F C4 02 14 */	add r30, r4, r0
/* 814522AC | 48 04 15 49 */	bl NETMD5Init
/* 814522B0 | 7F C4 F3 78 */	mr r4, r30
/* 814522B4 | 7F 85 E3 78 */	mr r5, r28
/* 814522B8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814522BC | 48 04 15 79 */	bl NETMD5Update
/* 814522C0 | 7F E4 FB 78 */	mr r4, r31
/* 814522C4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814522C8 | 48 04 16 5D */	bl NETMD5GetDigest
/* 814522CC | 38 60 00 01 */	li r3, 0x1
/* 814522D0 | 48 00 00 08 */	b .L_814522D8
.L_814522D4:
/* 814522D4 | 38 60 00 00 */	li r3, 0x0
.L_814522D8:
/* 814522D8 | 39 61 00 80 */	addi r11, r1, 0x80
/* 814522DC | 48 1A 72 2D */	bl _restgpr_26
/* 814522E0 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 814522E4 | 7C 08 03 A6 */	mtlr r0
/* 814522E8 | 38 21 00 80 */	addi r1, r1, 0x80
/* 814522EC | 4E 80 00 20 */	blr
.endfn VmMethod_calcRangeMD5Digest

# .text:0x7D44 | 0x814522F0 | size: 0x7C
.fn VmMethod_calcCRC16, global
/* 814522F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814522F4 | 7C 08 02 A6 */	mflr r0
/* 814522F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814522FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81452300 | 7C BF 2B 78 */	mr r31, r5
/* 81452304 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81452308 | 7C 7E 1B 78 */	mr r30, r3
/* 8145230C | 7C 83 23 78 */	mr r3, r4
/* 81452310 | 4B FF E8 95 */	bl CHANSVm_81450BA4
/* 81452314 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452318 | 7C 64 1B 78 */	mr r4, r3
/* 8145231C | 40 82 00 0C */	bne .L_81452328
/* 81452320 | 38 60 00 00 */	li r3, 0x0
/* 81452324 | 48 00 00 30 */	b .L_81452354
.L_81452328:
/* 81452328 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8145232C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81452330 | 48 04 12 5D */	bl NETCalcCRC16
/* 81452334 | 7C 60 1B 78 */	mr r0, r3
/* 81452338 | 7F C3 F3 78 */	mr r3, r30
/* 8145233C | 7F E4 FB 78 */	mr r4, r31
/* 81452340 | 38 A0 00 00 */	li r5, 0x0
/* 81452344 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 81452348 | 4B FF 96 51 */	bl CHANSVmSetInteger
/* 8145234C | 7C 60 00 34 */	cntlzw r0, r3
/* 81452350 | 54 03 D9 7E */	srwi r3, r0, 5
.L_81452354:
/* 81452354 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81452358 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145235C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81452360 | 7C 08 03 A6 */	mtlr r0
/* 81452364 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81452368 | 4E 80 00 20 */	blr
.endfn VmMethod_calcCRC16

# .text:0x7DC0 | 0x8145236C | size: 0x148
.fn VmMethod_calcRangeCRC16, global
/* 8145236C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81452370 | 7C 08 02 A6 */	mflr r0
/* 81452374 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81452378 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145237C | 48 1A 71 41 */	bl _savegpr_26
/* 81452380 | 7C 7A 1B 78 */	mr r26, r3
/* 81452384 | 7C 83 23 78 */	mr r3, r4
/* 81452388 | 7C BB 2B 78 */	mr r27, r5
/* 8145238C | 4B FF E8 19 */	bl CHANSVm_81450BA4
/* 81452390 | 7C 7D 1B 78 */	mr r29, r3
/* 81452394 | 7F 43 D3 78 */	mr r3, r26
/* 81452398 | 38 80 00 00 */	li r4, 0x0
/* 8145239C | 4B FF A2 F5 */	bl CHANSVmGetArg
/* 814523A0 | 7C 65 1B 78 */	mr r5, r3
/* 814523A4 | 7F 43 D3 78 */	mr r3, r26
/* 814523A8 | 38 80 00 01 */	li r4, 0x1
/* 814523AC | 4B FF 95 31 */	bl CHANSVmConvertObjectType
/* 814523B0 | 7C 7E 1B 78 */	mr r30, r3
/* 814523B4 | 7F 43 D3 78 */	mr r3, r26
/* 814523B8 | 38 80 00 01 */	li r4, 0x1
/* 814523BC | 4B FF A2 D5 */	bl CHANSVmGetArg
/* 814523C0 | 7C 65 1B 78 */	mr r5, r3
/* 814523C4 | 7F 43 D3 78 */	mr r3, r26
/* 814523C8 | 38 80 00 01 */	li r4, 0x1
/* 814523CC | 4B FF 95 11 */	bl CHANSVmConvertObjectType
/* 814523D0 | 3B E0 00 00 */	li r31, 0x0
/* 814523D4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814523D8 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 814523DC | 7C 7C 1B 78 */	mr r28, r3
/* 814523E0 | 41 82 00 0C */	beq .L_814523EC
/* 814523E4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814523E8 | 40 82 00 0C */	bne .L_814523F4
.L_814523EC:
/* 814523EC | 38 60 00 00 */	li r3, 0x0
/* 814523F0 | 48 00 00 AC */	b .L_8145249C
.L_814523F4:
/* 814523F4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 814523F8 | 7F A3 EB 78 */	mr r3, r29
/* 814523FC | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81452400 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81452404 | 4B FF E9 11 */	bl CHANSVm_81450D14
/* 81452408 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145240C | 41 82 00 8C */	beq .L_81452498
/* 81452410 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81452414 | 7F A3 EB 78 */	mr r3, r29
/* 81452418 | 7F 84 E3 78 */	mr r4, r28
/* 8145241C | 4B FF EE F9 */	bl CHANSVm_81451314
/* 81452420 | 6F E4 80 00 */	xoris r4, r31, 0x8000
/* 81452424 | 7C 1F 18 10 */	subfc r0, r31, r3
/* 81452428 | 7C 04 21 10 */	subfe r0, r4, r4
/* 8145242C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81452430 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452434 | 7C 00 00 D1 */	neg. r0, r0
/* 81452438 | 40 82 00 24 */	bne .L_8145245C
/* 8145243C | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 81452440 | 7C 05 00 50 */	subf r0, r5, r0
/* 81452444 | 7C 03 00 10 */	subfc r0, r3, r0
/* 81452448 | 7C 04 21 10 */	subfe r0, r4, r4
/* 8145244C | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452450 | 7C 00 00 D1 */	neg. r0, r0
/* 81452454 | 40 82 00 08 */	bne .L_8145245C
/* 81452458 | 3B E0 00 01 */	li r31, 0x1
.L_8145245C:
/* 8145245C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81452460 | 41 82 00 38 */	beq .L_81452498
/* 81452464 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 81452468 | 7C 64 1B 78 */	mr r4, r3
/* 8145246C | 7C 60 2A 14 */	add r3, r0, r5
/* 81452470 | 48 04 11 1D */	bl NETCalcCRC16
/* 81452474 | 7C 60 1B 78 */	mr r0, r3
/* 81452478 | 7F 43 D3 78 */	mr r3, r26
/* 8145247C | 7F 64 DB 78 */	mr r4, r27
/* 81452480 | 38 A0 00 00 */	li r5, 0x0
/* 81452484 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 81452488 | 4B FF 95 11 */	bl CHANSVmSetInteger
/* 8145248C | 7C 60 00 34 */	cntlzw r0, r3
/* 81452490 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81452494 | 48 00 00 08 */	b .L_8145249C
.L_81452498:
/* 81452498 | 38 60 00 00 */	li r3, 0x0
.L_8145249C:
/* 8145249C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814524A0 | 48 1A 70 69 */	bl _restgpr_26
/* 814524A4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814524A8 | 7C 08 03 A6 */	mtlr r0
/* 814524AC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814524B0 | 4E 80 00 20 */	blr
.endfn VmMethod_calcRangeCRC16

# .text:0x7F08 | 0x814524B4 | size: 0x78
.fn VmMethod_calcCRC32, global
/* 814524B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814524B8 | 7C 08 02 A6 */	mflr r0
/* 814524BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814524C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814524C4 | 7C BF 2B 78 */	mr r31, r5
/* 814524C8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814524CC | 7C 7E 1B 78 */	mr r30, r3
/* 814524D0 | 7C 83 23 78 */	mr r3, r4
/* 814524D4 | 4B FF E6 D1 */	bl CHANSVm_81450BA4
/* 814524D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814524DC | 7C 64 1B 78 */	mr r4, r3
/* 814524E0 | 40 82 00 0C */	bne .L_814524EC
/* 814524E4 | 38 60 00 00 */	li r3, 0x0
/* 814524E8 | 48 00 00 2C */	b .L_81452514
.L_814524EC:
/* 814524EC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814524F0 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814524F4 | 48 04 11 CD */	bl NETCalcCRC32
/* 814524F8 | 7C 66 1B 78 */	mr r6, r3
/* 814524FC | 7F C3 F3 78 */	mr r3, r30
/* 81452500 | 7F E4 FB 78 */	mr r4, r31
/* 81452504 | 38 A0 00 00 */	li r5, 0x0
/* 81452508 | 4B FF 94 91 */	bl CHANSVmSetInteger
/* 8145250C | 7C 60 00 34 */	cntlzw r0, r3
/* 81452510 | 54 03 D9 7E */	srwi r3, r0, 5
.L_81452514:
/* 81452514 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81452518 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145251C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81452520 | 7C 08 03 A6 */	mtlr r0
/* 81452524 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81452528 | 4E 80 00 20 */	blr
.endfn VmMethod_calcCRC32

# .text:0x7F80 | 0x8145252C | size: 0x144
.fn VmMethod_calcRangeCRC32, global
/* 8145252C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81452530 | 7C 08 02 A6 */	mflr r0
/* 81452534 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81452538 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145253C | 48 1A 6F 81 */	bl _savegpr_26
/* 81452540 | 7C 7A 1B 78 */	mr r26, r3
/* 81452544 | 7C 83 23 78 */	mr r3, r4
/* 81452548 | 7C BB 2B 78 */	mr r27, r5
/* 8145254C | 4B FF E6 59 */	bl CHANSVm_81450BA4
/* 81452550 | 7C 7D 1B 78 */	mr r29, r3
/* 81452554 | 7F 43 D3 78 */	mr r3, r26
/* 81452558 | 38 80 00 00 */	li r4, 0x0
/* 8145255C | 4B FF A1 35 */	bl CHANSVmGetArg
/* 81452560 | 7C 65 1B 78 */	mr r5, r3
/* 81452564 | 7F 43 D3 78 */	mr r3, r26
/* 81452568 | 38 80 00 01 */	li r4, 0x1
/* 8145256C | 4B FF 93 71 */	bl CHANSVmConvertObjectType
/* 81452570 | 7C 7E 1B 78 */	mr r30, r3
/* 81452574 | 7F 43 D3 78 */	mr r3, r26
/* 81452578 | 38 80 00 01 */	li r4, 0x1
/* 8145257C | 4B FF A1 15 */	bl CHANSVmGetArg
/* 81452580 | 7C 65 1B 78 */	mr r5, r3
/* 81452584 | 7F 43 D3 78 */	mr r3, r26
/* 81452588 | 38 80 00 01 */	li r4, 0x1
/* 8145258C | 4B FF 93 51 */	bl CHANSVmConvertObjectType
/* 81452590 | 3B E0 00 00 */	li r31, 0x0
/* 81452594 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81452598 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8145259C | 7C 7C 1B 78 */	mr r28, r3
/* 814525A0 | 41 82 00 0C */	beq .L_814525AC
/* 814525A4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814525A8 | 40 82 00 0C */	bne .L_814525B4
.L_814525AC:
/* 814525AC | 38 60 00 00 */	li r3, 0x0
/* 814525B0 | 48 00 00 A8 */	b .L_81452658
.L_814525B4:
/* 814525B4 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 814525B8 | 7F A3 EB 78 */	mr r3, r29
/* 814525BC | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 814525C0 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814525C4 | 4B FF E7 51 */	bl CHANSVm_81450D14
/* 814525C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814525CC | 41 82 00 88 */	beq .L_81452654
/* 814525D0 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814525D4 | 7F A3 EB 78 */	mr r3, r29
/* 814525D8 | 7F 84 E3 78 */	mr r4, r28
/* 814525DC | 4B FF ED 39 */	bl CHANSVm_81451314
/* 814525E0 | 6F E4 80 00 */	xoris r4, r31, 0x8000
/* 814525E4 | 7C 1F 18 10 */	subfc r0, r31, r3
/* 814525E8 | 7C 04 21 10 */	subfe r0, r4, r4
/* 814525EC | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814525F0 | 7C 04 21 10 */	subfe r0, r4, r4
/* 814525F4 | 7C 00 00 D1 */	neg. r0, r0
/* 814525F8 | 40 82 00 24 */	bne .L_8145261C
/* 814525FC | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 81452600 | 7C 05 00 50 */	subf r0, r5, r0
/* 81452604 | 7C 03 00 10 */	subfc r0, r3, r0
/* 81452608 | 7C 04 21 10 */	subfe r0, r4, r4
/* 8145260C | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452610 | 7C 00 00 D1 */	neg. r0, r0
/* 81452614 | 40 82 00 08 */	bne .L_8145261C
/* 81452618 | 3B E0 00 01 */	li r31, 0x1
.L_8145261C:
/* 8145261C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81452620 | 41 82 00 34 */	beq .L_81452654
/* 81452624 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 81452628 | 7C 64 1B 78 */	mr r4, r3
/* 8145262C | 7C 60 2A 14 */	add r3, r0, r5
/* 81452630 | 48 04 10 91 */	bl NETCalcCRC32
/* 81452634 | 7C 66 1B 78 */	mr r6, r3
/* 81452638 | 7F 43 D3 78 */	mr r3, r26
/* 8145263C | 7F 64 DB 78 */	mr r4, r27
/* 81452640 | 38 A0 00 00 */	li r5, 0x0
/* 81452644 | 4B FF 93 55 */	bl CHANSVmSetInteger
/* 81452648 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145264C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81452650 | 48 00 00 08 */	b .L_81452658
.L_81452654:
/* 81452654 | 38 60 00 00 */	li r3, 0x0
.L_81452658:
/* 81452658 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145265C | 48 1A 6E AD */	bl _restgpr_26
/* 81452660 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81452664 | 7C 08 03 A6 */	mtlr r0
/* 81452668 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145266C | 4E 80 00 20 */	blr
.endfn VmMethod_calcRangeCRC32

# .text:0x80C4 | 0x81452670 | size: 0x100
.fn VmMethod_calcHMAC, global
/* 81452670 | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 81452674 | 7C 08 02 A6 */	mflr r0
/* 81452678 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8145267C | 39 61 00 F0 */	addi r11, r1, 0xf0
/* 81452680 | 48 1A 6E 41 */	bl _savegpr_27
/* 81452684 | 7C 7B 1B 78 */	mr r27, r3
/* 81452688 | 7C 83 23 78 */	mr r3, r4
/* 8145268C | 7C BC 2B 78 */	mr r28, r5
/* 81452690 | 4B FF E5 15 */	bl CHANSVm_81450BA4
/* 81452694 | 7C 7E 1B 78 */	mr r30, r3
/* 81452698 | 7F 63 DB 78 */	mr r3, r27
/* 8145269C | 38 80 00 00 */	li r4, 0x0
/* 814526A0 | 4B FF 9F F1 */	bl CHANSVmGetArg
/* 814526A4 | 7C 7D 1B 78 */	mr r29, r3
/* 814526A8 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 814526AC | 4B FF A9 59 */	bl CHANSVmCheckNativeInstance
/* 814526B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814526B4 | 41 82 00 14 */	beq .L_814526C8
/* 814526B8 | 7F A3 EB 78 */	mr r3, r29
/* 814526BC | 4B FF E4 E9 */	bl CHANSVm_81450BA4
/* 814526C0 | 7C 7F 1B 78 */	mr r31, r3
/* 814526C4 | 48 00 00 08 */	b .L_814526CC
.L_814526C8:
/* 814526C8 | 3B E0 00 00 */	li r31, 0x0
.L_814526CC:
/* 814526CC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814526D0 | 41 82 00 0C */	beq .L_814526DC
/* 814526D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814526D8 | 40 82 00 0C */	bne .L_814526E4
.L_814526DC:
/* 814526DC | 38 60 00 00 */	li r3, 0x0
/* 814526E0 | 48 00 00 78 */	b .L_81452758
.L_814526E4:
/* 814526E4 | 7F 63 DB 78 */	mr r3, r27
/* 814526E8 | 7F 84 E3 78 */	mr r4, r28
/* 814526EC | 38 A0 00 14 */	li r5, 0x14
/* 814526F0 | 4B FF E5 1D */	bl vmBlobCreateDirect
/* 814526F4 | 7C 7D 1B 78 */	mr r29, r3
/* 814526F8 | 4B FF E5 C1 */	bl vmBlobGetDataBufferDirect
/* 814526FC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81452700 | 7C 7C 1B 78 */	mr r28, r3
/* 81452704 | 41 82 00 0C */	beq .L_81452710
/* 81452708 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145270C | 40 82 00 0C */	bne .L_81452718
.L_81452710:
/* 81452710 | 38 60 00 00 */	li r3, 0x0
/* 81452714 | 48 00 00 44 */	b .L_81452758
.L_81452718:
/* 81452718 | 83 BE 00 04 */	lwz r29, 0x4(r30)
/* 8145271C | 83 DE 00 08 */	lwz r30, 0x8(r30)
/* 81452720 | 48 04 1A 25 */	bl NETGetSHA1Interface
/* 81452724 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 81452728 | 7C 64 1B 78 */	mr r4, r3
/* 8145272C | 80 DF 00 04 */	lwz r6, 0x4(r31)
/* 81452730 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452734 | 48 04 1D B9 */	bl NETHMACInit
/* 81452738 | 7F C4 F3 78 */	mr r4, r30
/* 8145273C | 7F A5 EB 78 */	mr r5, r29
/* 81452740 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452744 | 48 04 1F E5 */	bl NETHMACUpdate
/* 81452748 | 7F 84 E3 78 */	mr r4, r28
/* 8145274C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452750 | 48 04 1F E9 */	bl NETHMACGetDigest
/* 81452754 | 38 60 00 01 */	li r3, 0x1
.L_81452758:
/* 81452758 | 39 61 00 F0 */	addi r11, r1, 0xf0
/* 8145275C | 48 1A 6D B1 */	bl _restgpr_27
/* 81452760 | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 81452764 | 7C 08 03 A6 */	mtlr r0
/* 81452768 | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 8145276C | 4E 80 00 20 */	blr
.endfn VmMethod_calcHMAC

# .text:0x81C4 | 0x81452770 | size: 0x1DC
.fn VmMethod_calcRangeHMAC, global
/* 81452770 | 94 21 FF 00 */	stwu r1, -0x100(r1)
/* 81452774 | 7C 08 02 A6 */	mflr r0
/* 81452778 | 90 01 01 04 */	stw r0, 0x104(r1)
/* 8145277C | 39 61 01 00 */	addi r11, r1, 0x100
/* 81452780 | 48 1A 6D 39 */	bl _savegpr_25
/* 81452784 | 7C 79 1B 78 */	mr r25, r3
/* 81452788 | 7C 83 23 78 */	mr r3, r4
/* 8145278C | 7C BA 2B 78 */	mr r26, r5
/* 81452790 | 4B FF E4 15 */	bl CHANSVm_81450BA4
/* 81452794 | 7C 7C 1B 78 */	mr r28, r3
/* 81452798 | 7F 23 CB 78 */	mr r3, r25
/* 8145279C | 38 80 00 00 */	li r4, 0x0
/* 814527A0 | 4B FF 9E F1 */	bl CHANSVmGetArg
/* 814527A4 | 7C 7E 1B 78 */	mr r30, r3
/* 814527A8 | 7F 23 CB 78 */	mr r3, r25
/* 814527AC | 38 80 00 01 */	li r4, 0x1
/* 814527B0 | 4B FF 9E E1 */	bl CHANSVmGetArg
/* 814527B4 | 7C 65 1B 78 */	mr r5, r3
/* 814527B8 | 7F 23 CB 78 */	mr r3, r25
/* 814527BC | 38 80 00 01 */	li r4, 0x1
/* 814527C0 | 4B FF 91 1D */	bl CHANSVmConvertObjectType
/* 814527C4 | 7C 7D 1B 78 */	mr r29, r3
/* 814527C8 | 7F 23 CB 78 */	mr r3, r25
/* 814527CC | 38 80 00 02 */	li r4, 0x2
/* 814527D0 | 4B FF 9E C1 */	bl CHANSVmGetArg
/* 814527D4 | 7C 65 1B 78 */	mr r5, r3
/* 814527D8 | 7F 23 CB 78 */	mr r3, r25
/* 814527DC | 38 80 00 01 */	li r4, 0x1
/* 814527E0 | 4B FF 90 FD */	bl CHANSVmConvertObjectType
/* 814527E4 | 7C 7B 1B 78 */	mr r27, r3
/* 814527E8 | 7F C3 F3 78 */	mr r3, r30
/* 814527EC | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 814527F0 | 4B FF A8 15 */	bl CHANSVmCheckNativeInstance
/* 814527F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814527F8 | 41 82 00 14 */	beq .L_8145280C
/* 814527FC | 7F C3 F3 78 */	mr r3, r30
/* 81452800 | 4B FF E3 A5 */	bl CHANSVm_81450BA4
/* 81452804 | 7C 7E 1B 78 */	mr r30, r3
/* 81452808 | 48 00 00 08 */	b .L_81452810
.L_8145280C:
/* 8145280C | 3B C0 00 00 */	li r30, 0x0
.L_81452810:
/* 81452810 | 3B E0 00 00 */	li r31, 0x0
/* 81452814 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81452818 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8145281C | 41 82 00 14 */	beq .L_81452830
/* 81452820 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81452824 | 41 82 00 0C */	beq .L_81452830
/* 81452828 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145282C | 40 82 00 0C */	bne .L_81452838
.L_81452830:
/* 81452830 | 38 60 00 00 */	li r3, 0x0
/* 81452834 | 48 00 01 00 */	b .L_81452934
.L_81452838:
/* 81452838 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145283C | 7F 83 E3 78 */	mr r3, r28
/* 81452840 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 81452844 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81452848 | 4B FF E4 CD */	bl CHANSVm_81450D14
/* 8145284C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452850 | 41 82 00 E0 */	beq .L_81452930
/* 81452854 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81452858 | 7F 83 E3 78 */	mr r3, r28
/* 8145285C | 7F 64 DB 78 */	mr r4, r27
/* 81452860 | 4B FF EA B5 */	bl CHANSVm_81451314
/* 81452864 | 6F E4 80 00 */	xoris r4, r31, 0x8000
/* 81452868 | 7C 1F 18 10 */	subfc r0, r31, r3
/* 8145286C | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452870 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81452874 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452878 | 7C 7B 1B 78 */	mr r27, r3
/* 8145287C | 7C 00 00 D1 */	neg. r0, r0
/* 81452880 | 40 82 00 24 */	bne .L_814528A4
/* 81452884 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 81452888 | 7C 05 00 50 */	subf r0, r5, r0
/* 8145288C | 7C 03 00 10 */	subfc r0, r3, r0
/* 81452890 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452894 | 7C 04 21 10 */	subfe r0, r4, r4
/* 81452898 | 7C 00 00 D1 */	neg. r0, r0
/* 8145289C | 40 82 00 08 */	bne .L_814528A4
/* 814528A0 | 3B E0 00 01 */	li r31, 0x1
.L_814528A4:
/* 814528A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814528A8 | 41 82 00 88 */	beq .L_81452930
/* 814528AC | 7F 23 CB 78 */	mr r3, r25
/* 814528B0 | 7F 44 D3 78 */	mr r4, r26
/* 814528B4 | 38 A0 00 14 */	li r5, 0x14
/* 814528B8 | 4B FF E3 55 */	bl vmBlobCreateDirect
/* 814528BC | 7C 7D 1B 78 */	mr r29, r3
/* 814528C0 | 4B FF E3 F9 */	bl vmBlobGetDataBufferDirect
/* 814528C4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814528C8 | 7C 7F 1B 78 */	mr r31, r3
/* 814528CC | 41 82 00 14 */	beq .L_814528E0
/* 814528D0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814528D4 | 41 82 00 0C */	beq .L_814528E0
/* 814528D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814528DC | 40 82 00 0C */	bne .L_814528E8
.L_814528E0:
/* 814528E0 | 38 60 00 00 */	li r3, 0x0
/* 814528E4 | 48 00 00 50 */	b .L_81452934
.L_814528E8:
/* 814528E8 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814528EC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814528F0 | 7F A3 02 14 */	add r29, r3, r0
/* 814528F4 | 48 04 18 51 */	bl NETGetSHA1Interface
/* 814528F8 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 814528FC | 7C 64 1B 78 */	mr r4, r3
/* 81452900 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81452904 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81452908 | 48 04 1B E5 */	bl NETHMACInit
/* 8145290C | 7F A4 EB 78 */	mr r4, r29
/* 81452910 | 7F 65 DB 78 */	mr r5, r27
/* 81452914 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81452918 | 48 04 1E 11 */	bl NETHMACUpdate
/* 8145291C | 7F E4 FB 78 */	mr r4, r31
/* 81452920 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81452924 | 48 04 1E 15 */	bl NETHMACGetDigest
/* 81452928 | 38 60 00 01 */	li r3, 0x1
/* 8145292C | 48 00 00 08 */	b .L_81452934
.L_81452930:
/* 81452930 | 38 60 00 00 */	li r3, 0x0
.L_81452934:
/* 81452934 | 39 61 01 00 */	addi r11, r1, 0x100
/* 81452938 | 48 1A 6B CD */	bl _restgpr_25
/* 8145293C | 80 01 01 04 */	lwz r0, 0x104(r1)
/* 81452940 | 7C 08 03 A6 */	mtlr r0
/* 81452944 | 38 21 01 00 */	addi r1, r1, 0x100
/* 81452948 | 4E 80 00 20 */	blr
.endfn VmMethod_calcRangeHMAC

# .text:0x83A0 | 0x8145294C | size: 0xC4
.fn VmMethod_getU8, global
/* 8145294C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81452950 | 7C 08 02 A6 */	mflr r0
/* 81452954 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81452958 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145295C | 48 1A 6B 6D */	bl _savegpr_29
/* 81452960 | 7C 7D 1B 78 */	mr r29, r3
/* 81452964 | 7C 83 23 78 */	mr r3, r4
/* 81452968 | 7C BE 2B 78 */	mr r30, r5
/* 8145296C | 4B FF E2 39 */	bl CHANSVm_81450BA4
/* 81452970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452974 | 7C 7F 1B 78 */	mr r31, r3
/* 81452978 | 40 82 00 0C */	bne .L_81452984
/* 8145297C | 38 60 00 00 */	li r3, 0x0
/* 81452980 | 48 00 00 78 */	b .L_814529F8
.L_81452984:
/* 81452984 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81452988 | 38 00 00 00 */	li r0, 0x0
/* 8145298C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81452990 | 38 60 00 01 */	li r3, 0x1
/* 81452994 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81452998 | 7C 85 20 50 */	subf r4, r5, r4
/* 8145299C | 7C 63 20 10 */	subfc r3, r3, r4
/* 814529A0 | 7C 60 01 10 */	subfe r3, r0, r0
/* 814529A4 | 7C 60 01 10 */	subfe r3, r0, r0
/* 814529A8 | 7C 63 00 D1 */	neg. r3, r3
/* 814529AC | 40 82 00 48 */	bne .L_814529F4
/* 814529B0 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814529B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814529B8 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814529BC | 38 A0 00 01 */	li r5, 0x1
/* 814529C0 | 7C 84 02 14 */	add r4, r4, r0
/* 814529C4 | 4B ED D8 6D */	bl memcpy
/* 814529C8 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 814529CC | 7F A3 EB 78 */	mr r3, r29
/* 814529D0 | 7F C4 F3 78 */	mr r4, r30
/* 814529D4 | 38 A0 00 00 */	li r5, 0x0
/* 814529D8 | 38 06 00 01 */	addi r0, r6, 0x1
/* 814529DC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814529E0 | 88 C1 00 08 */	lbz r6, 0x8(r1)
/* 814529E4 | 4B FF 8F B5 */	bl CHANSVmSetInteger
/* 814529E8 | 7C 60 00 34 */	cntlzw r0, r3
/* 814529EC | 54 03 D9 7E */	srwi r3, r0, 5
/* 814529F0 | 48 00 00 08 */	b .L_814529F8
.L_814529F4:
/* 814529F4 | 38 60 00 00 */	li r3, 0x0
.L_814529F8:
/* 814529F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814529FC | 48 1A 6B 19 */	bl _restgpr_29
/* 81452A00 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81452A04 | 7C 08 03 A6 */	mtlr r0
/* 81452A08 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81452A0C | 4E 80 00 20 */	blr
.endfn VmMethod_getU8

# .text:0x8464 | 0x81452A10 | size: 0xC4
.fn VmMethod_getU16, global
/* 81452A10 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81452A14 | 7C 08 02 A6 */	mflr r0
/* 81452A18 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81452A1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452A20 | 48 1A 6A A9 */	bl _savegpr_29
/* 81452A24 | 7C 7D 1B 78 */	mr r29, r3
/* 81452A28 | 7C 83 23 78 */	mr r3, r4
/* 81452A2C | 7C BE 2B 78 */	mr r30, r5
/* 81452A30 | 4B FF E1 75 */	bl CHANSVm_81450BA4
/* 81452A34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452A38 | 7C 7F 1B 78 */	mr r31, r3
/* 81452A3C | 40 82 00 0C */	bne .L_81452A48
/* 81452A40 | 38 60 00 00 */	li r3, 0x0
/* 81452A44 | 48 00 00 78 */	b .L_81452ABC
.L_81452A48:
/* 81452A48 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81452A4C | 38 00 00 00 */	li r0, 0x0
/* 81452A50 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81452A54 | 38 60 00 02 */	li r3, 0x2
/* 81452A58 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81452A5C | 7C 85 20 50 */	subf r4, r5, r4
/* 81452A60 | 7C 63 20 10 */	subfc r3, r3, r4
/* 81452A64 | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452A68 | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452A6C | 7C 63 00 D1 */	neg. r3, r3
/* 81452A70 | 40 82 00 48 */	bne .L_81452AB8
/* 81452A74 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81452A78 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452A7C | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81452A80 | 38 A0 00 02 */	li r5, 0x2
/* 81452A84 | 7C 84 02 14 */	add r4, r4, r0
/* 81452A88 | 4B ED D7 A9 */	bl memcpy
/* 81452A8C | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81452A90 | 7F A3 EB 78 */	mr r3, r29
/* 81452A94 | 7F C4 F3 78 */	mr r4, r30
/* 81452A98 | 38 A0 00 00 */	li r5, 0x0
/* 81452A9C | 38 06 00 02 */	addi r0, r6, 0x2
/* 81452AA0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81452AA4 | A0 C1 00 08 */	lhz r6, 0x8(r1)
/* 81452AA8 | 4B FF 8E F1 */	bl CHANSVmSetInteger
/* 81452AAC | 7C 60 00 34 */	cntlzw r0, r3
/* 81452AB0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81452AB4 | 48 00 00 08 */	b .L_81452ABC
.L_81452AB8:
/* 81452AB8 | 38 60 00 00 */	li r3, 0x0
.L_81452ABC:
/* 81452ABC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452AC0 | 48 1A 6A 55 */	bl _restgpr_29
/* 81452AC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81452AC8 | 7C 08 03 A6 */	mtlr r0
/* 81452ACC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81452AD0 | 4E 80 00 20 */	blr
.endfn VmMethod_getU16

# .text:0x8528 | 0x81452AD4 | size: 0xC4
.fn VmMethod_getU32, global
/* 81452AD4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81452AD8 | 7C 08 02 A6 */	mflr r0
/* 81452ADC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81452AE0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452AE4 | 48 1A 69 E5 */	bl _savegpr_29
/* 81452AE8 | 7C 7D 1B 78 */	mr r29, r3
/* 81452AEC | 7C 83 23 78 */	mr r3, r4
/* 81452AF0 | 7C BE 2B 78 */	mr r30, r5
/* 81452AF4 | 4B FF E0 B1 */	bl CHANSVm_81450BA4
/* 81452AF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452AFC | 7C 7F 1B 78 */	mr r31, r3
/* 81452B00 | 40 82 00 0C */	bne .L_81452B0C
/* 81452B04 | 38 60 00 00 */	li r3, 0x0
/* 81452B08 | 48 00 00 78 */	b .L_81452B80
.L_81452B0C:
/* 81452B0C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81452B10 | 38 00 00 00 */	li r0, 0x0
/* 81452B14 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81452B18 | 38 60 00 04 */	li r3, 0x4
/* 81452B1C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81452B20 | 7C 85 20 50 */	subf r4, r5, r4
/* 81452B24 | 7C 63 20 10 */	subfc r3, r3, r4
/* 81452B28 | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452B2C | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452B30 | 7C 63 00 D1 */	neg. r3, r3
/* 81452B34 | 40 82 00 48 */	bne .L_81452B7C
/* 81452B38 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81452B3C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452B40 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81452B44 | 38 A0 00 04 */	li r5, 0x4
/* 81452B48 | 7C 84 02 14 */	add r4, r4, r0
/* 81452B4C | 4B ED D6 E5 */	bl memcpy
/* 81452B50 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81452B54 | 7F A3 EB 78 */	mr r3, r29
/* 81452B58 | 7F C4 F3 78 */	mr r4, r30
/* 81452B5C | 38 A0 00 00 */	li r5, 0x0
/* 81452B60 | 38 06 00 04 */	addi r0, r6, 0x4
/* 81452B64 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81452B68 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81452B6C | 4B FF 8E 2D */	bl CHANSVmSetInteger
/* 81452B70 | 7C 60 00 34 */	cntlzw r0, r3
/* 81452B74 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81452B78 | 48 00 00 08 */	b .L_81452B80
.L_81452B7C:
/* 81452B7C | 38 60 00 00 */	li r3, 0x0
.L_81452B80:
/* 81452B80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452B84 | 48 1A 69 91 */	bl _restgpr_29
/* 81452B88 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81452B8C | 7C 08 03 A6 */	mtlr r0
/* 81452B90 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81452B94 | 4E 80 00 20 */	blr
.endfn VmMethod_getU32

# .text:0x85EC | 0x81452B98 | size: 0xC8
.fn VmMethod_getS8, global
/* 81452B98 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81452B9C | 7C 08 02 A6 */	mflr r0
/* 81452BA0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81452BA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452BA8 | 48 1A 69 21 */	bl _savegpr_29
/* 81452BAC | 7C 7D 1B 78 */	mr r29, r3
/* 81452BB0 | 7C 83 23 78 */	mr r3, r4
/* 81452BB4 | 7C BE 2B 78 */	mr r30, r5
/* 81452BB8 | 4B FF DF ED */	bl CHANSVm_81450BA4
/* 81452BBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452BC0 | 7C 7F 1B 78 */	mr r31, r3
/* 81452BC4 | 40 82 00 0C */	bne .L_81452BD0
/* 81452BC8 | 38 60 00 00 */	li r3, 0x0
/* 81452BCC | 48 00 00 7C */	b .L_81452C48
.L_81452BD0:
/* 81452BD0 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81452BD4 | 38 00 00 00 */	li r0, 0x0
/* 81452BD8 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81452BDC | 38 60 00 01 */	li r3, 0x1
/* 81452BE0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81452BE4 | 7C 85 20 50 */	subf r4, r5, r4
/* 81452BE8 | 7C 63 20 10 */	subfc r3, r3, r4
/* 81452BEC | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452BF0 | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452BF4 | 7C 63 00 D1 */	neg. r3, r3
/* 81452BF8 | 40 82 00 4C */	bne .L_81452C44
/* 81452BFC | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81452C00 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452C04 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81452C08 | 38 A0 00 01 */	li r5, 0x1
/* 81452C0C | 7C 84 02 14 */	add r4, r4, r0
/* 81452C10 | 4B ED D6 21 */	bl memcpy
/* 81452C14 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 81452C18 | 7F A3 EB 78 */	mr r3, r29
/* 81452C1C | 7F C4 F3 78 */	mr r4, r30
/* 81452C20 | 38 05 00 01 */	addi r0, r5, 0x1
/* 81452C24 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81452C28 | 88 C1 00 08 */	lbz r6, 0x8(r1)
/* 81452C2C | 7C C6 07 74 */	extsb r6, r6
/* 81452C30 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81452C34 | 4B FF 8D 65 */	bl CHANSVmSetInteger
/* 81452C38 | 7C 60 00 34 */	cntlzw r0, r3
/* 81452C3C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81452C40 | 48 00 00 08 */	b .L_81452C48
.L_81452C44:
/* 81452C44 | 38 60 00 00 */	li r3, 0x0
.L_81452C48:
/* 81452C48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452C4C | 48 1A 68 C9 */	bl _restgpr_29
/* 81452C50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81452C54 | 7C 08 03 A6 */	mtlr r0
/* 81452C58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81452C5C | 4E 80 00 20 */	blr
.endfn VmMethod_getS8

# .text:0x86B4 | 0x81452C60 | size: 0xC4
.fn VmMethod_getS16, global
/* 81452C60 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81452C64 | 7C 08 02 A6 */	mflr r0
/* 81452C68 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81452C6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452C70 | 48 1A 68 59 */	bl _savegpr_29
/* 81452C74 | 7C 7D 1B 78 */	mr r29, r3
/* 81452C78 | 7C 83 23 78 */	mr r3, r4
/* 81452C7C | 7C BE 2B 78 */	mr r30, r5
/* 81452C80 | 4B FF DF 25 */	bl CHANSVm_81450BA4
/* 81452C84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452C88 | 7C 7F 1B 78 */	mr r31, r3
/* 81452C8C | 40 82 00 0C */	bne .L_81452C98
/* 81452C90 | 38 60 00 00 */	li r3, 0x0
/* 81452C94 | 48 00 00 78 */	b .L_81452D0C
.L_81452C98:
/* 81452C98 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81452C9C | 38 00 00 00 */	li r0, 0x0
/* 81452CA0 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81452CA4 | 38 60 00 02 */	li r3, 0x2
/* 81452CA8 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81452CAC | 7C 85 20 50 */	subf r4, r5, r4
/* 81452CB0 | 7C 63 20 10 */	subfc r3, r3, r4
/* 81452CB4 | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452CB8 | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452CBC | 7C 63 00 D1 */	neg. r3, r3
/* 81452CC0 | 40 82 00 48 */	bne .L_81452D08
/* 81452CC4 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81452CC8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452CCC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81452CD0 | 38 A0 00 02 */	li r5, 0x2
/* 81452CD4 | 7C 84 02 14 */	add r4, r4, r0
/* 81452CD8 | 4B ED D5 59 */	bl memcpy
/* 81452CDC | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 81452CE0 | 7F A3 EB 78 */	mr r3, r29
/* 81452CE4 | 7F C4 F3 78 */	mr r4, r30
/* 81452CE8 | 38 05 00 02 */	addi r0, r5, 0x2
/* 81452CEC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81452CF0 | A8 C1 00 08 */	lha r6, 0x8(r1)
/* 81452CF4 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81452CF8 | 4B FF 8C A1 */	bl CHANSVmSetInteger
/* 81452CFC | 7C 60 00 34 */	cntlzw r0, r3
/* 81452D00 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81452D04 | 48 00 00 08 */	b .L_81452D0C
.L_81452D08:
/* 81452D08 | 38 60 00 00 */	li r3, 0x0
.L_81452D0C:
/* 81452D0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452D10 | 48 1A 68 05 */	bl _restgpr_29
/* 81452D14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81452D18 | 7C 08 03 A6 */	mtlr r0
/* 81452D1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81452D20 | 4E 80 00 20 */	blr
.endfn VmMethod_getS16

# .text:0x8778 | 0x81452D24 | size: 0xC4
.fn VmMethod_getS32, global
/* 81452D24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81452D28 | 7C 08 02 A6 */	mflr r0
/* 81452D2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81452D30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452D34 | 48 1A 67 95 */	bl _savegpr_29
/* 81452D38 | 7C 7D 1B 78 */	mr r29, r3
/* 81452D3C | 7C 83 23 78 */	mr r3, r4
/* 81452D40 | 7C BE 2B 78 */	mr r30, r5
/* 81452D44 | 4B FF DE 61 */	bl CHANSVm_81450BA4
/* 81452D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452D4C | 7C 7F 1B 78 */	mr r31, r3
/* 81452D50 | 40 82 00 0C */	bne .L_81452D5C
/* 81452D54 | 38 60 00 00 */	li r3, 0x0
/* 81452D58 | 48 00 00 78 */	b .L_81452DD0
.L_81452D5C:
/* 81452D5C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81452D60 | 38 00 00 00 */	li r0, 0x0
/* 81452D64 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81452D68 | 38 60 00 04 */	li r3, 0x4
/* 81452D6C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81452D70 | 7C 85 20 50 */	subf r4, r5, r4
/* 81452D74 | 7C 63 20 10 */	subfc r3, r3, r4
/* 81452D78 | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452D7C | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452D80 | 7C 63 00 D1 */	neg. r3, r3
/* 81452D84 | 40 82 00 48 */	bne .L_81452DCC
/* 81452D88 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81452D8C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452D90 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81452D94 | 38 A0 00 04 */	li r5, 0x4
/* 81452D98 | 7C 84 02 14 */	add r4, r4, r0
/* 81452D9C | 4B ED D4 95 */	bl memcpy
/* 81452DA0 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 81452DA4 | 7F A3 EB 78 */	mr r3, r29
/* 81452DA8 | 7F C4 F3 78 */	mr r4, r30
/* 81452DAC | 38 05 00 04 */	addi r0, r5, 0x4
/* 81452DB0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81452DB4 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81452DB8 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81452DBC | 4B FF 8B DD */	bl CHANSVmSetInteger
/* 81452DC0 | 7C 60 00 34 */	cntlzw r0, r3
/* 81452DC4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81452DC8 | 48 00 00 08 */	b .L_81452DD0
.L_81452DCC:
/* 81452DCC | 38 60 00 00 */	li r3, 0x0
.L_81452DD0:
/* 81452DD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452DD4 | 48 1A 67 41 */	bl _restgpr_29
/* 81452DD8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81452DDC | 7C 08 03 A6 */	mtlr r0
/* 81452DE0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81452DE4 | 4E 80 00 20 */	blr
.endfn VmMethod_getS32

# .text:0x883C | 0x81452DE8 | size: 0xC4
.fn VmMethod_getS64, global
/* 81452DE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81452DEC | 7C 08 02 A6 */	mflr r0
/* 81452DF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81452DF4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452DF8 | 48 1A 66 D1 */	bl _savegpr_29
/* 81452DFC | 7C 7D 1B 78 */	mr r29, r3
/* 81452E00 | 7C 83 23 78 */	mr r3, r4
/* 81452E04 | 7C BE 2B 78 */	mr r30, r5
/* 81452E08 | 4B FF DD 9D */	bl CHANSVm_81450BA4
/* 81452E0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452E10 | 7C 7F 1B 78 */	mr r31, r3
/* 81452E14 | 40 82 00 0C */	bne .L_81452E20
/* 81452E18 | 38 60 00 00 */	li r3, 0x0
/* 81452E1C | 48 00 00 78 */	b .L_81452E94
.L_81452E20:
/* 81452E20 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81452E24 | 38 00 00 00 */	li r0, 0x0
/* 81452E28 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81452E2C | 38 60 00 08 */	li r3, 0x8
/* 81452E30 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81452E34 | 7C 85 20 50 */	subf r4, r5, r4
/* 81452E38 | 7C 63 20 10 */	subfc r3, r3, r4
/* 81452E3C | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452E40 | 7C 60 01 10 */	subfe r3, r0, r0
/* 81452E44 | 7C 63 00 D1 */	neg. r3, r3
/* 81452E48 | 40 82 00 48 */	bne .L_81452E90
/* 81452E4C | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81452E50 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81452E54 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81452E58 | 38 A0 00 08 */	li r5, 0x8
/* 81452E5C | 7C 84 02 14 */	add r4, r4, r0
/* 81452E60 | 4B ED D3 D1 */	bl memcpy
/* 81452E64 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 81452E68 | 7F A3 EB 78 */	mr r3, r29
/* 81452E6C | 7F C4 F3 78 */	mr r4, r30
/* 81452E70 | 38 05 00 08 */	addi r0, r5, 0x8
/* 81452E74 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81452E78 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81452E7C | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 81452E80 | 4B FF 8B 19 */	bl CHANSVmSetInteger
/* 81452E84 | 7C 60 00 34 */	cntlzw r0, r3
/* 81452E88 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81452E8C | 48 00 00 08 */	b .L_81452E94
.L_81452E90:
/* 81452E90 | 38 60 00 00 */	li r3, 0x0
.L_81452E94:
/* 81452E94 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81452E98 | 48 1A 66 7D */	bl _restgpr_29
/* 81452E9C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81452EA0 | 7C 08 03 A6 */	mtlr r0
/* 81452EA4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81452EA8 | 4E 80 00 20 */	blr
.endfn VmMethod_getS64

# .text:0x8900 | 0x81452EAC | size: 0xD8
.fn VmMethod_setU8, global
/* 81452EAC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81452EB0 | 7C 08 02 A6 */	mflr r0
/* 81452EB4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81452EB8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81452EBC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81452EC0 | 7C 7E 1B 78 */	mr r30, r3
/* 81452EC4 | 7C 83 23 78 */	mr r3, r4
/* 81452EC8 | 4B FF DC DD */	bl CHANSVm_81450BA4
/* 81452ECC | 7C 7F 1B 78 */	mr r31, r3
/* 81452ED0 | 7F C3 F3 78 */	mr r3, r30
/* 81452ED4 | 38 80 00 00 */	li r4, 0x0
/* 81452ED8 | 4B FF 97 B9 */	bl CHANSVmGetArg
/* 81452EDC | 7C 65 1B 78 */	mr r5, r3
/* 81452EE0 | 7F C3 F3 78 */	mr r3, r30
/* 81452EE4 | 38 80 00 01 */	li r4, 0x1
/* 81452EE8 | 4B FF 89 F5 */	bl CHANSVmConvertObjectType
/* 81452EEC | 38 00 00 00 */	li r0, 0x0
/* 81452EF0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81452EF4 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81452EF8 | 41 82 00 0C */	beq .L_81452F04
/* 81452EFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452F00 | 40 82 00 0C */	bne .L_81452F0C
.L_81452F04:
/* 81452F04 | 38 60 00 00 */	li r3, 0x0
/* 81452F08 | 48 00 00 64 */	b .L_81452F6C
.L_81452F0C:
/* 81452F0C | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81452F10 | 38 80 00 01 */	li r4, 0x1
/* 81452F14 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 81452F18 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81452F1C | 7C A6 28 50 */	subf r5, r6, r5
/* 81452F20 | 7C 84 28 10 */	subfc r4, r4, r5
/* 81452F24 | 7C 80 01 10 */	subfe r4, r0, r0
/* 81452F28 | 7C 80 01 10 */	subfe r4, r0, r0
/* 81452F2C | 7C 84 00 D1 */	neg. r4, r4
/* 81452F30 | 40 82 00 38 */	bne .L_81452F68
/* 81452F34 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81452F38 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81452F3C | 38 A0 00 01 */	li r5, 0x1
/* 81452F40 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81452F44 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81452F48 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81452F4C | 7C 63 02 14 */	add r3, r3, r0
/* 81452F50 | 4B ED D2 E1 */	bl memcpy
/* 81452F54 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81452F58 | 38 60 00 01 */	li r3, 0x1
/* 81452F5C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81452F60 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81452F64 | 48 00 00 08 */	b .L_81452F6C
.L_81452F68:
/* 81452F68 | 38 60 00 00 */	li r3, 0x0
.L_81452F6C:
/* 81452F6C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81452F70 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81452F74 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81452F78 | 7C 08 03 A6 */	mtlr r0
/* 81452F7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81452F80 | 4E 80 00 20 */	blr
.endfn VmMethod_setU8

# .text:0x89D8 | 0x81452F84 | size: 0xD8
.fn VmMethod_setU16, global
/* 81452F84 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81452F88 | 7C 08 02 A6 */	mflr r0
/* 81452F8C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81452F90 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81452F94 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81452F98 | 7C 7E 1B 78 */	mr r30, r3
/* 81452F9C | 7C 83 23 78 */	mr r3, r4
/* 81452FA0 | 4B FF DC 05 */	bl CHANSVm_81450BA4
/* 81452FA4 | 7C 7F 1B 78 */	mr r31, r3
/* 81452FA8 | 7F C3 F3 78 */	mr r3, r30
/* 81452FAC | 38 80 00 00 */	li r4, 0x0
/* 81452FB0 | 4B FF 96 E1 */	bl CHANSVmGetArg
/* 81452FB4 | 7C 65 1B 78 */	mr r5, r3
/* 81452FB8 | 7F C3 F3 78 */	mr r3, r30
/* 81452FBC | 38 80 00 01 */	li r4, 0x1
/* 81452FC0 | 4B FF 89 1D */	bl CHANSVmConvertObjectType
/* 81452FC4 | 38 00 00 00 */	li r0, 0x0
/* 81452FC8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81452FCC | B0 01 00 08 */	sth r0, 0x8(r1)
/* 81452FD0 | 41 82 00 0C */	beq .L_81452FDC
/* 81452FD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81452FD8 | 40 82 00 0C */	bne .L_81452FE4
.L_81452FDC:
/* 81452FDC | 38 60 00 00 */	li r3, 0x0
/* 81452FE0 | 48 00 00 64 */	b .L_81453044
.L_81452FE4:
/* 81452FE4 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81452FE8 | 38 80 00 02 */	li r4, 0x2
/* 81452FEC | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 81452FF0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81452FF4 | 7C A6 28 50 */	subf r5, r6, r5
/* 81452FF8 | 7C 84 28 10 */	subfc r4, r4, r5
/* 81452FFC | 7C 80 01 10 */	subfe r4, r0, r0
/* 81453000 | 7C 80 01 10 */	subfe r4, r0, r0
/* 81453004 | 7C 84 00 D1 */	neg. r4, r4
/* 81453008 | 40 82 00 38 */	bne .L_81453040
/* 8145300C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81453010 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81453014 | 38 A0 00 02 */	li r5, 0x2
/* 81453018 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8145301C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81453020 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81453024 | 7C 63 02 14 */	add r3, r3, r0
/* 81453028 | 4B ED D2 09 */	bl memcpy
/* 8145302C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81453030 | 38 60 00 01 */	li r3, 0x1
/* 81453034 | 38 04 00 02 */	addi r0, r4, 0x2
/* 81453038 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8145303C | 48 00 00 08 */	b .L_81453044
.L_81453040:
/* 81453040 | 38 60 00 00 */	li r3, 0x0
.L_81453044:
/* 81453044 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81453048 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8145304C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81453050 | 7C 08 03 A6 */	mtlr r0
/* 81453054 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81453058 | 4E 80 00 20 */	blr
.endfn VmMethod_setU16

# .text:0x8AB0 | 0x8145305C | size: 0xD8
.fn VmMethod_setU32, global
/* 8145305C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81453060 | 7C 08 02 A6 */	mflr r0
/* 81453064 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81453068 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8145306C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81453070 | 7C 7E 1B 78 */	mr r30, r3
/* 81453074 | 7C 83 23 78 */	mr r3, r4
/* 81453078 | 4B FF DB 2D */	bl CHANSVm_81450BA4
/* 8145307C | 7C 7F 1B 78 */	mr r31, r3
/* 81453080 | 7F C3 F3 78 */	mr r3, r30
/* 81453084 | 38 80 00 00 */	li r4, 0x0
/* 81453088 | 4B FF 96 09 */	bl CHANSVmGetArg
/* 8145308C | 7C 65 1B 78 */	mr r5, r3
/* 81453090 | 7F C3 F3 78 */	mr r3, r30
/* 81453094 | 38 80 00 01 */	li r4, 0x1
/* 81453098 | 4B FF 88 45 */	bl CHANSVmConvertObjectType
/* 8145309C | 38 00 00 00 */	li r0, 0x0
/* 814530A0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814530A4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814530A8 | 41 82 00 0C */	beq .L_814530B4
/* 814530AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814530B0 | 40 82 00 0C */	bne .L_814530BC
.L_814530B4:
/* 814530B4 | 38 60 00 00 */	li r3, 0x0
/* 814530B8 | 48 00 00 64 */	b .L_8145311C
.L_814530BC:
/* 814530BC | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 814530C0 | 38 80 00 04 */	li r4, 0x4
/* 814530C4 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 814530C8 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814530CC | 7C A6 28 50 */	subf r5, r6, r5
/* 814530D0 | 7C 84 28 10 */	subfc r4, r4, r5
/* 814530D4 | 7C 80 01 10 */	subfe r4, r0, r0
/* 814530D8 | 7C 80 01 10 */	subfe r4, r0, r0
/* 814530DC | 7C 84 00 D1 */	neg. r4, r4
/* 814530E0 | 40 82 00 38 */	bne .L_81453118
/* 814530E4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814530E8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814530EC | 38 A0 00 04 */	li r5, 0x4
/* 814530F0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814530F4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814530F8 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814530FC | 7C 63 02 14 */	add r3, r3, r0
/* 81453100 | 4B ED D1 31 */	bl memcpy
/* 81453104 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81453108 | 38 60 00 01 */	li r3, 0x1
/* 8145310C | 38 04 00 04 */	addi r0, r4, 0x4
/* 81453110 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81453114 | 48 00 00 08 */	b .L_8145311C
.L_81453118:
/* 81453118 | 38 60 00 00 */	li r3, 0x0
.L_8145311C:
/* 8145311C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81453120 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81453124 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81453128 | 7C 08 03 A6 */	mtlr r0
/* 8145312C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81453130 | 4E 80 00 20 */	blr
.endfn VmMethod_setU32

# .text:0x8B88 | 0x81453134 | size: 0xD8
.fn VmMethod_setS8, global
/* 81453134 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81453138 | 7C 08 02 A6 */	mflr r0
/* 8145313C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81453140 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81453144 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81453148 | 7C 7E 1B 78 */	mr r30, r3
/* 8145314C | 7C 83 23 78 */	mr r3, r4
/* 81453150 | 4B FF DA 55 */	bl CHANSVm_81450BA4
/* 81453154 | 7C 7F 1B 78 */	mr r31, r3
/* 81453158 | 7F C3 F3 78 */	mr r3, r30
/* 8145315C | 38 80 00 00 */	li r4, 0x0
/* 81453160 | 4B FF 95 31 */	bl CHANSVmGetArg
/* 81453164 | 7C 65 1B 78 */	mr r5, r3
/* 81453168 | 7F C3 F3 78 */	mr r3, r30
/* 8145316C | 38 80 00 01 */	li r4, 0x1
/* 81453170 | 4B FF 87 6D */	bl CHANSVmConvertObjectType
/* 81453174 | 38 00 00 00 */	li r0, 0x0
/* 81453178 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145317C | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81453180 | 41 82 00 0C */	beq .L_8145318C
/* 81453184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453188 | 40 82 00 0C */	bne .L_81453194
.L_8145318C:
/* 8145318C | 38 60 00 00 */	li r3, 0x0
/* 81453190 | 48 00 00 64 */	b .L_814531F4
.L_81453194:
/* 81453194 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81453198 | 38 80 00 01 */	li r4, 0x1
/* 8145319C | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 814531A0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814531A4 | 7C A6 28 50 */	subf r5, r6, r5
/* 814531A8 | 7C 84 28 10 */	subfc r4, r4, r5
/* 814531AC | 7C 80 01 10 */	subfe r4, r0, r0
/* 814531B0 | 7C 80 01 10 */	subfe r4, r0, r0
/* 814531B4 | 7C 84 00 D1 */	neg. r4, r4
/* 814531B8 | 40 82 00 38 */	bne .L_814531F0
/* 814531BC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814531C0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814531C4 | 38 A0 00 01 */	li r5, 0x1
/* 814531C8 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814531CC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814531D0 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814531D4 | 7C 63 02 14 */	add r3, r3, r0
/* 814531D8 | 4B ED D0 59 */	bl memcpy
/* 814531DC | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814531E0 | 38 60 00 01 */	li r3, 0x1
/* 814531E4 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814531E8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814531EC | 48 00 00 08 */	b .L_814531F4
.L_814531F0:
/* 814531F0 | 38 60 00 00 */	li r3, 0x0
.L_814531F4:
/* 814531F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814531F8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814531FC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81453200 | 7C 08 03 A6 */	mtlr r0
/* 81453204 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81453208 | 4E 80 00 20 */	blr
.endfn VmMethod_setS8

# .text:0x8C60 | 0x8145320C | size: 0xD8
.fn VmMethod_setS16, global
/* 8145320C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81453210 | 7C 08 02 A6 */	mflr r0
/* 81453214 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81453218 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8145321C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81453220 | 7C 7E 1B 78 */	mr r30, r3
/* 81453224 | 7C 83 23 78 */	mr r3, r4
/* 81453228 | 4B FF D9 7D */	bl CHANSVm_81450BA4
/* 8145322C | 7C 7F 1B 78 */	mr r31, r3
/* 81453230 | 7F C3 F3 78 */	mr r3, r30
/* 81453234 | 38 80 00 00 */	li r4, 0x0
/* 81453238 | 4B FF 94 59 */	bl CHANSVmGetArg
/* 8145323C | 7C 65 1B 78 */	mr r5, r3
/* 81453240 | 7F C3 F3 78 */	mr r3, r30
/* 81453244 | 38 80 00 01 */	li r4, 0x1
/* 81453248 | 4B FF 86 95 */	bl CHANSVmConvertObjectType
/* 8145324C | 38 00 00 00 */	li r0, 0x0
/* 81453250 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81453254 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 81453258 | 41 82 00 0C */	beq .L_81453264
/* 8145325C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453260 | 40 82 00 0C */	bne .L_8145326C
.L_81453264:
/* 81453264 | 38 60 00 00 */	li r3, 0x0
/* 81453268 | 48 00 00 64 */	b .L_814532CC
.L_8145326C:
/* 8145326C | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81453270 | 38 80 00 02 */	li r4, 0x2
/* 81453274 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 81453278 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8145327C | 7C A6 28 50 */	subf r5, r6, r5
/* 81453280 | 7C 84 28 10 */	subfc r4, r4, r5
/* 81453284 | 7C 80 01 10 */	subfe r4, r0, r0
/* 81453288 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8145328C | 7C 84 00 D1 */	neg. r4, r4
/* 81453290 | 40 82 00 38 */	bne .L_814532C8
/* 81453294 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81453298 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8145329C | 38 A0 00 02 */	li r5, 0x2
/* 814532A0 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814532A4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814532A8 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814532AC | 7C 63 02 14 */	add r3, r3, r0
/* 814532B0 | 4B ED CF 81 */	bl memcpy
/* 814532B4 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 814532B8 | 38 60 00 01 */	li r3, 0x1
/* 814532BC | 38 04 00 02 */	addi r0, r4, 0x2
/* 814532C0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814532C4 | 48 00 00 08 */	b .L_814532CC
.L_814532C8:
/* 814532C8 | 38 60 00 00 */	li r3, 0x0
.L_814532CC:
/* 814532CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814532D0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814532D4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814532D8 | 7C 08 03 A6 */	mtlr r0
/* 814532DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814532E0 | 4E 80 00 20 */	blr
.endfn VmMethod_setS16

# .text:0x8D38 | 0x814532E4 | size: 0xD8
.fn VmMethod_setS32, global
/* 814532E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814532E8 | 7C 08 02 A6 */	mflr r0
/* 814532EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814532F0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814532F4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814532F8 | 7C 7E 1B 78 */	mr r30, r3
/* 814532FC | 7C 83 23 78 */	mr r3, r4
/* 81453300 | 4B FF D8 A5 */	bl CHANSVm_81450BA4
/* 81453304 | 7C 7F 1B 78 */	mr r31, r3
/* 81453308 | 7F C3 F3 78 */	mr r3, r30
/* 8145330C | 38 80 00 00 */	li r4, 0x0
/* 81453310 | 4B FF 93 81 */	bl CHANSVmGetArg
/* 81453314 | 7C 65 1B 78 */	mr r5, r3
/* 81453318 | 7F C3 F3 78 */	mr r3, r30
/* 8145331C | 38 80 00 01 */	li r4, 0x1
/* 81453320 | 4B FF 85 BD */	bl CHANSVmConvertObjectType
/* 81453324 | 38 00 00 00 */	li r0, 0x0
/* 81453328 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145332C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81453330 | 41 82 00 0C */	beq .L_8145333C
/* 81453334 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453338 | 40 82 00 0C */	bne .L_81453344
.L_8145333C:
/* 8145333C | 38 60 00 00 */	li r3, 0x0
/* 81453340 | 48 00 00 64 */	b .L_814533A4
.L_81453344:
/* 81453344 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81453348 | 38 80 00 04 */	li r4, 0x4
/* 8145334C | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 81453350 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81453354 | 7C A6 28 50 */	subf r5, r6, r5
/* 81453358 | 7C 84 28 10 */	subfc r4, r4, r5
/* 8145335C | 7C 80 01 10 */	subfe r4, r0, r0
/* 81453360 | 7C 80 01 10 */	subfe r4, r0, r0
/* 81453364 | 7C 84 00 D1 */	neg. r4, r4
/* 81453368 | 40 82 00 38 */	bne .L_814533A0
/* 8145336C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81453370 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81453374 | 38 A0 00 04 */	li r5, 0x4
/* 81453378 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8145337C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81453380 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81453384 | 7C 63 02 14 */	add r3, r3, r0
/* 81453388 | 4B ED CE A9 */	bl memcpy
/* 8145338C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81453390 | 38 60 00 01 */	li r3, 0x1
/* 81453394 | 38 04 00 04 */	addi r0, r4, 0x4
/* 81453398 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8145339C | 48 00 00 08 */	b .L_814533A4
.L_814533A0:
/* 814533A0 | 38 60 00 00 */	li r3, 0x0
.L_814533A4:
/* 814533A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814533A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814533AC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814533B0 | 7C 08 03 A6 */	mtlr r0
/* 814533B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814533B8 | 4E 80 00 20 */	blr
.endfn VmMethod_setS32

# .text:0x8E10 | 0x814533BC | size: 0xE4
.fn VmMethod_setS64, global
/* 814533BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814533C0 | 7C 08 02 A6 */	mflr r0
/* 814533C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814533C8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814533CC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814533D0 | 7C 7E 1B 78 */	mr r30, r3
/* 814533D4 | 7C 83 23 78 */	mr r3, r4
/* 814533D8 | 4B FF D7 CD */	bl CHANSVm_81450BA4
/* 814533DC | 7C 7F 1B 78 */	mr r31, r3
/* 814533E0 | 7F C3 F3 78 */	mr r3, r30
/* 814533E4 | 38 80 00 00 */	li r4, 0x0
/* 814533E8 | 4B FF 92 A9 */	bl CHANSVmGetArg
/* 814533EC | 7C 65 1B 78 */	mr r5, r3
/* 814533F0 | 7F C3 F3 78 */	mr r3, r30
/* 814533F4 | 38 80 00 01 */	li r4, 0x1
/* 814533F8 | 4B FF 84 E5 */	bl CHANSVmConvertObjectType
/* 814533FC | 38 00 00 00 */	li r0, 0x0
/* 81453400 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81453404 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81453408 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8145340C | 41 82 00 0C */	beq .L_81453418
/* 81453410 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453414 | 40 82 00 0C */	bne .L_81453420
.L_81453418:
/* 81453418 | 38 60 00 00 */	li r3, 0x0
/* 8145341C | 48 00 00 6C */	b .L_81453488
.L_81453420:
/* 81453420 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81453424 | 38 80 00 08 */	li r4, 0x8
/* 81453428 | 80 BF 00 04 */	lwz r5, 0x4(r31)
/* 8145342C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81453430 | 7C A6 28 50 */	subf r5, r6, r5
/* 81453434 | 7C 84 28 10 */	subfc r4, r4, r5
/* 81453438 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8145343C | 7C 80 01 10 */	subfe r4, r0, r0
/* 81453440 | 7C 84 00 D1 */	neg. r4, r4
/* 81453444 | 40 82 00 40 */	bne .L_81453484
/* 81453448 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8145344C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81453450 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81453454 | 38 A0 00 08 */	li r5, 0x8
/* 81453458 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8145345C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81453460 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81453464 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81453468 | 7C 63 02 14 */	add r3, r3, r0
/* 8145346C | 4B ED CD C5 */	bl memcpy
/* 81453470 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81453474 | 38 60 00 01 */	li r3, 0x1
/* 81453478 | 38 04 00 08 */	addi r0, r4, 0x8
/* 8145347C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81453480 | 48 00 00 08 */	b .L_81453488
.L_81453484:
/* 81453484 | 38 60 00 00 */	li r3, 0x0
.L_81453488:
/* 81453488 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145348C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81453490 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81453494 | 7C 08 03 A6 */	mtlr r0
/* 81453498 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145349C | 4E 80 00 20 */	blr
.endfn VmMethod_setS64

# .text:0x8EF4 | 0x814534A0 | size: 0x1D0
.fn vmBlobParsePackFormatString, global
/* 814534A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814534A4 | 7C 08 02 A6 */	mflr r0
/* 814534A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814534AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814534B0 | 48 1A 60 0D */	bl _savegpr_26
/* 814534B4 | 3B C0 00 01 */	li r30, 0x1
/* 814534B8 | 3B A0 00 00 */	li r29, 0x0
/* 814534BC | 3B 80 00 00 */	li r28, 0x0
/* 814534C0 | 3D 80 81 67 */	lis r12, vmBlobPackFormatList@ha
/* 814534C4 | 39 40 00 19 */	li r10, 0x19
/* 814534C8 | 48 00 00 A4 */	b .L_8145356C
.L_814534CC:
/* 814534CC | 55 20 08 3C */	slwi r0, r9, 1
/* 814534D0 | 3B 4C 9E 08 */	addi r26, r12, vmBlobPackFormatList@l
/* 814534D4 | 7D 67 02 2E */	lhzx r11, r7, r0
/* 814534D8 | 3B 60 00 00 */	li r27, 0x0
/* 814534DC | 7D 49 03 A6 */	mtctr r10
.L_814534E0:
/* 814534E0 | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814534E4 | 7C 0B 00 40 */	cmplw r11, r0
/* 814534E8 | 40 82 00 14 */	bne .L_814534FC
/* 814534EC | 83 FA 00 08 */	lwz r31, 0x8(r26)
/* 814534F0 | 83 DA 00 04 */	lwz r30, 0x4(r26)
/* 814534F4 | 83 BA 00 0C */	lwz r29, 0xc(r26)
/* 814534F8 | 48 00 00 10 */	b .L_81453508
.L_814534FC:
/* 814534FC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81453500 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 81453504 | 42 00 FF DC */	bdnz .L_814534E0
.L_81453508:
/* 81453508 | 28 1B 00 19 */	cmplwi r27, 0x19
/* 8145350C | 41 80 00 10 */	blt .L_8145351C
/* 81453510 | 3B C0 00 01 */	li r30, 0x1
/* 81453514 | 3B E0 00 00 */	li r31, 0x0
/* 81453518 | 48 00 01 0C */	b .L_81453624
.L_8145351C:
/* 8145351C | 28 1F 00 02 */	cmplwi r31, 0x2
/* 81453520 | 41 82 00 0C */	beq .L_8145352C
/* 81453524 | 28 1F 00 03 */	cmplwi r31, 0x3
/* 81453528 | 40 82 00 58 */	bne .L_81453580
.L_8145352C:
/* 8145352C | 28 1F 00 03 */	cmplwi r31, 0x3
/* 81453530 | 40 82 00 38 */	bne .L_81453568
/* 81453534 | 7C 09 40 50 */	subf r0, r9, r8
/* 81453538 | 55 2B 08 3C */	slwi r11, r9, 1
/* 8145353C | 7C 09 03 A6 */	mtctr r0
/* 81453540 | 7C 09 40 40 */	cmplw r9, r8
/* 81453544 | 40 80 00 24 */	bge .L_81453568
.L_81453548:
/* 81453548 | 7C 07 5A 2E */	lhzx r0, r7, r11
/* 8145354C | 28 00 00 0D */	cmplwi r0, 0xd
/* 81453550 | 41 82 00 18 */	beq .L_81453568
/* 81453554 | 28 00 00 0A */	cmplwi r0, 0xa
/* 81453558 | 41 82 00 10 */	beq .L_81453568
/* 8145355C | 39 29 00 01 */	addi r9, r9, 0x1
/* 81453560 | 39 6B 00 02 */	addi r11, r11, 0x2
/* 81453564 | 42 00 FF E4 */	bdnz .L_81453548
.L_81453568:
/* 81453568 | 39 29 00 01 */	addi r9, r9, 0x1
.L_8145356C:
/* 8145356C | 7C 09 40 40 */	cmplw r9, r8
/* 81453570 | 41 80 FF 5C */	blt .L_814534CC
/* 81453574 | 3B E0 00 01 */	li r31, 0x1
/* 81453578 | 39 60 00 00 */	li r11, 0x0
/* 8145357C | 48 00 00 A8 */	b .L_81453624
.L_81453580:
/* 81453580 | 39 29 00 01 */	addi r9, r9, 0x1
/* 81453584 | 39 80 00 00 */	li r12, 0x0
/* 81453588 | 7C 09 40 50 */	subf r0, r9, r8
/* 8145358C | 3B 80 00 00 */	li r28, 0x0
/* 81453590 | 55 2A 08 3C */	slwi r10, r9, 1
/* 81453594 | 7C 09 03 A6 */	mtctr r0
/* 81453598 | 7C 09 40 40 */	cmplw r9, r8
/* 8145359C | 40 80 00 7C */	bge .L_81453618
.L_814535A0:
/* 814535A0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814535A4 | 7C 07 52 2E */	lhzx r0, r7, r10
/* 814535A8 | 40 82 00 30 */	bne .L_814535D8
/* 814535AC | 28 00 00 2A */	cmplwi r0, 0x2a
/* 814535B0 | 40 82 00 28 */	bne .L_814535D8
/* 814535B4 | 57 A0 07 FF */	clrlwi. r0, r29, 31
/* 814535B8 | 41 82 00 10 */	beq .L_814535C8
/* 814535BC | 3B 80 FF FF */	li r28, -0x1
/* 814535C0 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814535C4 | 48 00 00 60 */	b .L_81453624
.L_814535C8:
/* 814535C8 | 3B C0 00 01 */	li r30, 0x1
/* 814535CC | 3B E0 00 00 */	li r31, 0x0
/* 814535D0 | 3B 80 00 00 */	li r28, 0x0
/* 814535D4 | 48 00 00 50 */	b .L_81453624
.L_814535D8:
/* 814535D8 | 28 00 00 30 */	cmplwi r0, 0x30
/* 814535DC | 41 80 00 3C */	blt .L_81453618
/* 814535E0 | 28 00 00 39 */	cmplwi r0, 0x39
/* 814535E4 | 41 81 00 34 */	bgt .L_81453618
/* 814535E8 | 1F 9C 00 0A */	mulli r28, r28, 0xa
/* 814535EC | 39 80 00 01 */	li r12, 0x1
/* 814535F0 | 7D 00 E2 14 */	add r8, r0, r28
/* 814535F4 | 37 88 FF D0 */	subic. r28, r8, 0x30
/* 814535F8 | 40 80 00 14 */	bge .L_8145360C
/* 814535FC | 3B C0 00 01 */	li r30, 0x1
/* 81453600 | 3B E0 00 00 */	li r31, 0x0
/* 81453604 | 3B 80 00 00 */	li r28, 0x0
/* 81453608 | 48 00 00 1C */	b .L_81453624
.L_8145360C:
/* 8145360C | 39 29 00 01 */	addi r9, r9, 0x1
/* 81453610 | 39 4A 00 02 */	addi r10, r10, 0x2
/* 81453614 | 42 00 FF 8C */	bdnz .L_814535A0
.L_81453618:
/* 81453618 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8145361C | 40 82 00 08 */	bne .L_81453624
/* 81453620 | 3B 80 00 01 */	li r28, 0x1
.L_81453624:
/* 81453624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453628 | 41 82 00 08 */	beq .L_81453630
/* 8145362C | 91 63 00 00 */	stw r11, 0x0(r3)
.L_81453630:
/* 81453630 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81453634 | 41 82 00 08 */	beq .L_8145363C
/* 81453638 | 93 E4 00 00 */	stw r31, 0x0(r4)
.L_8145363C:
/* 8145363C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81453640 | 41 82 00 08 */	beq .L_81453648
/* 81453644 | 93 C5 00 00 */	stw r30, 0x0(r5)
.L_81453648:
/* 81453648 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8145364C | 41 82 00 08 */	beq .L_81453654
/* 81453650 | 93 86 00 00 */	stw r28, 0x0(r6)
.L_81453654:
/* 81453654 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81453658 | 7D 23 4B 78 */	mr r3, r9
/* 8145365C | 48 1A 5E AD */	bl _restgpr_26
/* 81453660 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81453664 | 7C 08 03 A6 */	mtlr r0
/* 81453668 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145366C | 4E 80 00 20 */	blr
.endfn vmBlobParsePackFormatString

# .text:0x90C4 | 0x81453670 | size: 0xA70
.fn vmBlobPackCommon, local
/* 81453670 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81453674 | 7C 08 02 A6 */	mflr r0
/* 81453678 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8145367C | 39 61 00 70 */	addi r11, r1, 0x70
/* 81453680 | 48 1A 5E 19 */	bl _savegpr_17
/* 81453684 | 7C 7E 1B 78 */	mr r30, r3
/* 81453688 | 7C 83 23 78 */	mr r3, r4
/* 8145368C | 7C B1 2B 78 */	mr r17, r5
/* 81453690 | 7C DF 33 78 */	mr r31, r6
/* 81453694 | 4B FF D5 11 */	bl CHANSVm_81450BA4
/* 81453698 | 7C 75 1B 78 */	mr r21, r3
/* 8145369C | 7F C3 F3 78 */	mr r3, r30
/* 814536A0 | 38 80 00 00 */	li r4, 0x0
/* 814536A4 | 4B FF 8F ED */	bl CHANSVmGetArg
/* 814536A8 | 7C 65 1B 78 */	mr r5, r3
/* 814536AC | 7F C3 F3 78 */	mr r3, r30
/* 814536B0 | 38 80 00 03 */	li r4, 0x3
/* 814536B4 | 4B FF 82 29 */	bl CHANSVmConvertObjectType
/* 814536B8 | 7C 72 1B 78 */	mr r18, r3
/* 814536BC | 4B FF D4 E9 */	bl CHANSVm_81450BA4
/* 814536C0 | 7C 74 1B 78 */	mr r20, r3
/* 814536C4 | 7E 43 93 78 */	mr r3, r18
/* 814536C8 | 4B FF D5 01 */	bl CHANSVm_81450BC8
/* 814536CC | 54 73 F8 7E */	srwi r19, r3, 1
/* 814536D0 | 7F C3 F3 78 */	mr r3, r30
/* 814536D4 | 38 80 00 01 */	li r4, 0x1
/* 814536D8 | 4B FF 8F B9 */	bl CHANSVmGetArg
/* 814536DC | 7C 65 1B 78 */	mr r5, r3
/* 814536E0 | 7F C3 F3 78 */	mr r3, r30
/* 814536E4 | 38 80 00 04 */	li r4, 0x4
/* 814536E8 | 4B FF 81 F5 */	bl CHANSVmConvertObjectType
/* 814536EC | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814536F0 | 7C 72 1B 78 */	mr r18, r3
/* 814536F4 | 40 82 00 0C */	bne .L_81453700
/* 814536F8 | 38 60 00 00 */	li r3, 0x0
/* 814536FC | 48 00 09 CC */	b .L_814540C8
.L_81453700:
/* 81453700 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81453704 | 40 82 00 0C */	bne .L_81453710
/* 81453708 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8145370C | 41 82 09 B8 */	beq .L_814540C4
.L_81453710:
/* 81453710 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81453714 | 3A E0 00 00 */	li r23, 0x0
/* 81453718 | 3A C0 00 00 */	li r22, 0x0
/* 8145371C | 41 82 00 0C */	beq .L_81453728
/* 81453720 | 3B 00 00 00 */	li r24, 0x0
/* 81453724 | 48 00 00 08 */	b .L_8145372C
.L_81453728:
/* 81453728 | 83 15 00 00 */	lwz r24, 0x0(r21)
.L_8145372C:
/* 8145372C | 3B 60 00 00 */	li r27, 0x0
/* 81453730 | 3B 40 00 01 */	li r26, 0x1
.L_81453734:
/* 81453734 | 93 61 00 24 */	stw r27, 0x24(r1)
/* 81453738 | 7E 87 A3 78 */	mr r7, r20
/* 8145373C | 7E 68 9B 78 */	mr r8, r19
/* 81453740 | 7E C9 B3 78 */	mr r9, r22
/* 81453744 | 93 61 00 20 */	stw r27, 0x20(r1)
/* 81453748 | 38 61 00 24 */	addi r3, r1, 0x24
/* 8145374C | 38 81 00 20 */	addi r4, r1, 0x20
/* 81453750 | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 81453754 | 93 41 00 1C */	stw r26, 0x1c(r1)
/* 81453758 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 8145375C | 93 41 00 18 */	stw r26, 0x18(r1)
/* 81453760 | 4B FF FD 41 */	bl vmBlobParsePackFormatString
/* 81453764 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81453768 | 7C 76 1B 78 */	mr r22, r3
/* 8145376C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81453770 | 41 82 02 4C */	beq .L_814539BC
/* 81453774 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81453778 | 41 82 09 4C */	beq .L_814540C4
/* 8145377C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81453780 | 40 80 00 1C */	bge .L_8145379C
/* 81453784 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81453788 | 41 82 00 AC */	beq .L_81453834
/* 8145378C | 40 80 00 BC */	bge .L_81453848
/* 81453790 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81453794 | 40 80 00 18 */	bge .L_814537AC
/* 81453798 | 48 00 02 0C */	b .L_814539A4
.L_8145379C:
/* 8145379C | 2C 00 00 0E */	cmpwi r0, 0xe
/* 814537A0 | 41 82 01 80 */	beq .L_81453920
/* 814537A4 | 40 80 02 00 */	bge .L_814539A4
/* 814537A8 | 48 00 00 F4 */	b .L_8145389C
.L_814537AC:
/* 814537AC | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814537B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814537B4 | 40 80 00 6C */	bge .L_81453820
/* 814537B8 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814537BC | 41 82 00 1C */	beq .L_814537D8
/* 814537C0 | 7F C3 F3 78 */	mr r3, r30
/* 814537C4 | 7E 44 93 78 */	mr r4, r18
/* 814537C8 | 7E E5 BB 78 */	mr r5, r23
/* 814537CC | 4B FF 9B 55 */	bl CHANSVmGetArrayElement
/* 814537D0 | 7C 79 1B 78 */	mr r25, r3
/* 814537D4 | 48 00 00 14 */	b .L_814537E8
.L_814537D8:
/* 814537D8 | 7F C3 F3 78 */	mr r3, r30
/* 814537DC | 38 97 00 01 */	addi r4, r23, 0x1
/* 814537E0 | 4B FF 8E B1 */	bl CHANSVmGetArg
/* 814537E4 | 7C 79 1B 78 */	mr r25, r3
.L_814537E8:
/* 814537E8 | 7F 23 CB 78 */	mr r3, r25
/* 814537EC | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 814537F0 | 4B FF 98 15 */	bl CHANSVmCheckNativeInstance
/* 814537F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814537F8 | 41 82 00 10 */	beq .L_81453808
/* 814537FC | 7F 23 CB 78 */	mr r3, r25
/* 81453800 | 4B FF D3 A5 */	bl CHANSVm_81450BA4
/* 81453804 | 48 00 00 08 */	b .L_8145380C
.L_81453808:
/* 81453808 | 38 60 00 00 */	li r3, 0x0
.L_8145380C:
/* 8145380C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453810 | 41 82 08 B4 */	beq .L_814540C4
/* 81453814 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81453818 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145381C | 7C 04 00 50 */	subf r0, r4, r0
.L_81453820:
/* 81453820 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81453824 | 41 80 08 A0 */	blt .L_814540C4
/* 81453828 | 7F 18 02 14 */	add r24, r24, r0
/* 8145382C | 3A F7 00 01 */	addi r23, r23, 0x1
/* 81453830 | 48 00 01 74 */	b .L_814539A4
.L_81453834:
/* 81453834 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81453838 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145383C | 41 80 08 88 */	blt .L_814540C4
/* 81453840 | 7F 18 02 14 */	add r24, r24, r0
/* 81453844 | 48 00 01 60 */	b .L_814539A4
.L_81453848:
/* 81453848 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 8145384C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453850 | 40 80 00 30 */	bge .L_81453880
/* 81453854 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81453858 | 41 82 00 18 */	beq .L_81453870
/* 8145385C | 7F C3 F3 78 */	mr r3, r30
/* 81453860 | 7E 44 93 78 */	mr r4, r18
/* 81453864 | 4B FF 9D 19 */	bl CHANSVmGetArrayLength
/* 81453868 | 7C 77 18 50 */	subf r3, r23, r3
/* 8145386C | 48 00 00 14 */	b .L_81453880
.L_81453870:
/* 81453870 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 81453874 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 81453878 | 7C 77 00 50 */	subf r3, r23, r0
/* 8145387C | 38 63 FF FF */	subi r3, r3, 0x1
.L_81453880:
/* 81453880 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453884 | 41 80 08 40 */	blt .L_814540C4
/* 81453888 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8145388C | 7E F7 1A 14 */	add r23, r23, r3
/* 81453890 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 81453894 | 7F 18 02 14 */	add r24, r24, r0
/* 81453898 | 48 00 01 0C */	b .L_814539A4
.L_8145389C:
/* 8145389C | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 814538A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814538A4 | 40 80 00 60 */	bge .L_81453904
/* 814538A8 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 814538AC | 41 82 00 28 */	beq .L_814538D4
/* 814538B0 | 7F C3 F3 78 */	mr r3, r30
/* 814538B4 | 7E 44 93 78 */	mr r4, r18
/* 814538B8 | 7E E5 BB 78 */	mr r5, r23
/* 814538BC | 4B FF 9A 65 */	bl CHANSVmGetArrayElement
/* 814538C0 | 7C 65 1B 78 */	mr r5, r3
/* 814538C4 | 7F C3 F3 78 */	mr r3, r30
/* 814538C8 | 38 80 00 03 */	li r4, 0x3
/* 814538CC | 4B FF 80 11 */	bl CHANSVmConvertObjectType
/* 814538D0 | 48 00 00 20 */	b .L_814538F0
.L_814538D4:
/* 814538D4 | 7F C3 F3 78 */	mr r3, r30
/* 814538D8 | 38 97 00 01 */	addi r4, r23, 0x1
/* 814538DC | 4B FF 8D B5 */	bl CHANSVmGetArg
/* 814538E0 | 7C 65 1B 78 */	mr r5, r3
/* 814538E4 | 7F C3 F3 78 */	mr r3, r30
/* 814538E8 | 38 80 00 03 */	li r4, 0x3
/* 814538EC | 4B FF 7F F1 */	bl CHANSVmConvertObjectType
.L_814538F0:
/* 814538F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814538F4 | 41 82 07 D0 */	beq .L_814540C4
/* 814538F8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814538FC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81453900 | 54 03 F8 7E */	srwi r3, r0, 1
.L_81453904:
/* 81453904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453908 | 41 80 07 BC */	blt .L_814540C4
/* 8145390C | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81453910 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 81453914 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 81453918 | 7F 18 02 14 */	add r24, r24, r0
/* 8145391C | 48 00 00 88 */	b .L_814539A4
.L_81453920:
/* 81453920 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81453924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453928 | 40 80 00 60 */	bge .L_81453988
/* 8145392C | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81453930 | 41 82 00 28 */	beq .L_81453958
/* 81453934 | 7F C3 F3 78 */	mr r3, r30
/* 81453938 | 7E 44 93 78 */	mr r4, r18
/* 8145393C | 7E E5 BB 78 */	mr r5, r23
/* 81453940 | 4B FF 99 E1 */	bl CHANSVmGetArrayElement
/* 81453944 | 7C 65 1B 78 */	mr r5, r3
/* 81453948 | 7F C3 F3 78 */	mr r3, r30
/* 8145394C | 38 80 00 03 */	li r4, 0x3
/* 81453950 | 4B FF 7F 8D */	bl CHANSVmConvertObjectType
/* 81453954 | 48 00 00 20 */	b .L_81453974
.L_81453958:
/* 81453958 | 7F C3 F3 78 */	mr r3, r30
/* 8145395C | 38 97 00 01 */	addi r4, r23, 0x1
/* 81453960 | 4B FF 8D 31 */	bl CHANSVmGetArg
/* 81453964 | 7C 65 1B 78 */	mr r5, r3
/* 81453968 | 7F C3 F3 78 */	mr r3, r30
/* 8145396C | 38 80 00 03 */	li r4, 0x3
/* 81453970 | 4B FF 7F 6D */	bl CHANSVmConvertObjectType
.L_81453974:
/* 81453974 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453978 | 41 82 07 4C */	beq .L_814540C4
/* 8145397C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81453980 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81453984 | 54 03 F8 7E */	srwi r3, r0, 1
.L_81453988:
/* 81453988 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145398C | 41 80 07 38 */	blt .L_814540C4
/* 81453990 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81453994 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 81453998 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8145399C | 7C 00 01 94 */	addze r0, r0
/* 814539A0 | 7F 18 02 14 */	add r24, r24, r0
.L_814539A4:
/* 814539A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814539A8 | 40 82 FD 8C */	bne .L_81453734
/* 814539AC | 80 15 00 04 */	lwz r0, 0x4(r21)
/* 814539B0 | 7C 18 00 40 */	cmplw r24, r0
/* 814539B4 | 41 81 07 10 */	bgt .L_814540C4
/* 814539B8 | 4B FF FD 7C */	b .L_81453734
.L_814539BC:
/* 814539BC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814539C0 | 41 82 00 44 */	beq .L_81453A04
/* 814539C4 | 7F C3 F3 78 */	mr r3, r30
/* 814539C8 | 7E 24 8B 78 */	mr r4, r17
/* 814539CC | 7F 05 C3 78 */	mr r5, r24
/* 814539D0 | 4B FF D2 3D */	bl vmBlobCreateDirect
/* 814539D4 | 7C 71 1B 78 */	mr r17, r3
/* 814539D8 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 814539DC | 4B FF 96 29 */	bl CHANSVmCheckNativeInstance
/* 814539E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814539E4 | 41 82 00 10 */	beq .L_814539F4
/* 814539E8 | 7E 23 8B 78 */	mr r3, r17
/* 814539EC | 4B FF D1 B9 */	bl CHANSVm_81450BA4
/* 814539F0 | 48 00 00 08 */	b .L_814539F8
.L_814539F4:
/* 814539F4 | 38 60 00 00 */	li r3, 0x0
.L_814539F8:
/* 814539F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814539FC | 7C 75 1B 78 */	mr r21, r3
/* 81453A00 | 41 82 06 C4 */	beq .L_814540C4
.L_81453A04:
/* 81453A04 | 3B 81 00 28 */	addi r28, r1, 0x28
/* 81453A08 | 3A E0 00 00 */	li r23, 0x0
/* 81453A0C | 3A C0 00 00 */	li r22, 0x0
/* 81453A10 | 3B 60 00 00 */	li r27, 0x0
/* 81453A14 | 3B 40 00 01 */	li r26, 0x1
.L_81453A18:
/* 81453A18 | 93 61 00 14 */	stw r27, 0x14(r1)
/* 81453A1C | 7E 87 A3 78 */	mr r7, r20
/* 81453A20 | 7E 68 9B 78 */	mr r8, r19
/* 81453A24 | 7E C9 B3 78 */	mr r9, r22
/* 81453A28 | 93 61 00 10 */	stw r27, 0x10(r1)
/* 81453A2C | 38 61 00 14 */	addi r3, r1, 0x14
/* 81453A30 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81453A34 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81453A38 | 93 41 00 0C */	stw r26, 0xc(r1)
/* 81453A3C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81453A40 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 81453A44 | 4B FF FA 5D */	bl vmBlobParsePackFormatString
/* 81453A48 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81453A4C | 7C 76 1B 78 */	mr r22, r3
/* 81453A50 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81453A54 | 41 82 06 58 */	beq .L_814540AC
/* 81453A58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81453A5C | 41 82 06 68 */	beq .L_814540C4
/* 81453A60 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81453A64 | 40 80 00 1C */	bge .L_81453A80
/* 81453A68 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81453A6C | 41 82 01 20 */	beq .L_81453B8C
/* 81453A70 | 40 80 01 70 */	bge .L_81453BE0
/* 81453A74 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81453A78 | 40 80 00 18 */	bge .L_81453A90
/* 81453A7C | 48 00 06 48 */	b .L_814540C4
.L_81453A80:
/* 81453A80 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 81453A84 | 41 82 04 B0 */	beq .L_81453F34
/* 81453A88 | 40 80 06 3C */	bge .L_814540C4
/* 81453A8C | 48 00 03 84 */	b .L_81453E10
.L_81453A90:
/* 81453A90 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81453A94 | 41 82 00 1C */	beq .L_81453AB0
/* 81453A98 | 7F C3 F3 78 */	mr r3, r30
/* 81453A9C | 7E 44 93 78 */	mr r4, r18
/* 81453AA0 | 7E E5 BB 78 */	mr r5, r23
/* 81453AA4 | 4B FF 98 7D */	bl CHANSVmGetArrayElement
/* 81453AA8 | 7C 71 1B 78 */	mr r17, r3
/* 81453AAC | 48 00 00 14 */	b .L_81453AC0
.L_81453AB0:
/* 81453AB0 | 7F C3 F3 78 */	mr r3, r30
/* 81453AB4 | 38 97 00 01 */	addi r4, r23, 0x1
/* 81453AB8 | 4B FF 8B D9 */	bl CHANSVmGetArg
/* 81453ABC | 7C 71 1B 78 */	mr r17, r3
.L_81453AC0:
/* 81453AC0 | 7E 23 8B 78 */	mr r3, r17
/* 81453AC4 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 81453AC8 | 4B FF 95 3D */	bl CHANSVmCheckNativeInstance
/* 81453ACC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453AD0 | 41 82 00 14 */	beq .L_81453AE4
/* 81453AD4 | 7E 23 8B 78 */	mr r3, r17
/* 81453AD8 | 4B FF D0 CD */	bl CHANSVm_81450BA4
/* 81453ADC | 7C 7D 1B 78 */	mr r29, r3
/* 81453AE0 | 48 00 00 08 */	b .L_81453AE8
.L_81453AE4:
/* 81453AE4 | 3B A0 00 00 */	li r29, 0x0
.L_81453AE8:
/* 81453AE8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81453AEC | 3A F7 00 01 */	addi r23, r23, 0x1
/* 81453AF0 | 41 82 05 D4 */	beq .L_814540C4
/* 81453AF4 | 83 01 00 08 */	lwz r24, 0x8(r1)
/* 81453AF8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81453AFC | 40 80 00 10 */	bge .L_81453B0C
/* 81453B00 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81453B04 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 81453B08 | 7F 03 00 50 */	subf r24, r3, r0
.L_81453B0C:
/* 81453B0C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81453B10 | 41 80 05 B4 */	blt .L_814540C4
/* 81453B14 | 7E A3 AB 78 */	mr r3, r21
/* 81453B18 | 7F 06 C3 78 */	mr r6, r24
/* 81453B1C | 7F 05 FE 70 */	srawi r5, r24, 31
/* 81453B20 | 4B FF D8 29 */	bl CHANSVm_81451348
/* 81453B24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453B28 | 41 82 05 9C */	beq .L_814540C4
/* 81453B2C | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 81453B30 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 81453B34 | 80 75 00 08 */	lwz r3, 0x8(r21)
/* 81453B38 | 7F 24 00 50 */	subf r25, r4, r0
/* 81453B3C | 80 15 00 00 */	lwz r0, 0x0(r21)
/* 81453B40 | 7C 19 C0 40 */	cmplw r25, r24
/* 81453B44 | 7E 23 02 14 */	add r17, r3, r0
/* 81453B48 | 40 81 00 08 */	ble .L_81453B50
/* 81453B4C | 7F 19 C3 78 */	mr r25, r24
.L_81453B50:
/* 81453B50 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 81453B54 | 7E 23 8B 78 */	mr r3, r17
/* 81453B58 | 7F 25 CB 78 */	mr r5, r25
/* 81453B5C | 7C 80 22 14 */	add r4, r0, r4
/* 81453B60 | 48 1A A5 51 */	bl memmove
/* 81453B64 | 7C 19 C0 40 */	cmplw r25, r24
/* 81453B68 | 40 80 00 14 */	bge .L_81453B7C
/* 81453B6C | 7C 71 CA 14 */	add r3, r17, r25
/* 81453B70 | 7C B9 C0 50 */	subf r5, r25, r24
/* 81453B74 | 38 80 00 00 */	li r4, 0x0
/* 81453B78 | 4B ED C7 BD */	bl memset
.L_81453B7C:
/* 81453B7C | 80 15 00 00 */	lwz r0, 0x0(r21)
/* 81453B80 | 7C 00 C2 14 */	add r0, r0, r24
/* 81453B84 | 90 15 00 00 */	stw r0, 0x0(r21)
/* 81453B88 | 4B FF FE 90 */	b .L_81453A18
.L_81453B8C:
/* 81453B8C | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81453B90 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81453B94 | 41 80 05 30 */	blt .L_814540C4
/* 81453B98 | 7E A3 AB 78 */	mr r3, r21
/* 81453B9C | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81453BA0 | 4B FF D7 A9 */	bl CHANSVm_81451348
/* 81453BA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453BA8 | 41 82 05 1C */	beq .L_814540C4
/* 81453BAC | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81453BB0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81453BB4 | 40 81 FE 64 */	ble .L_81453A18
/* 81453BB8 | 80 75 00 08 */	lwz r3, 0x8(r21)
/* 81453BBC | 38 80 00 00 */	li r4, 0x0
/* 81453BC0 | 80 15 00 00 */	lwz r0, 0x0(r21)
/* 81453BC4 | 7C 63 02 14 */	add r3, r3, r0
/* 81453BC8 | 4B ED C7 6D */	bl memset
/* 81453BCC | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 81453BD0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81453BD4 | 7C 03 02 14 */	add r0, r3, r0
/* 81453BD8 | 90 15 00 00 */	stw r0, 0x0(r21)
/* 81453BDC | 4B FF FE 3C */	b .L_81453A18
.L_81453BE0:
/* 81453BE0 | 83 01 00 08 */	lwz r24, 0x8(r1)
/* 81453BE4 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81453BE8 | 40 80 00 30 */	bge .L_81453C18
/* 81453BEC | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81453BF0 | 41 82 00 18 */	beq .L_81453C08
/* 81453BF4 | 7F C3 F3 78 */	mr r3, r30
/* 81453BF8 | 7E 44 93 78 */	mr r4, r18
/* 81453BFC | 4B FF 99 81 */	bl CHANSVmGetArrayLength
/* 81453C00 | 7F 17 18 50 */	subf r24, r23, r3
/* 81453C04 | 48 00 00 14 */	b .L_81453C18
.L_81453C08:
/* 81453C08 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 81453C0C | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 81453C10 | 7C 77 00 50 */	subf r3, r23, r0
/* 81453C14 | 3B 03 FF FF */	subi r24, r3, 0x1
.L_81453C18:
/* 81453C18 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81453C1C | 41 80 04 A8 */	blt .L_814540C4
/* 81453C20 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81453C24 | 7E A3 AB 78 */	mr r3, r21
/* 81453C28 | 38 A0 00 00 */	li r5, 0x0
/* 81453C2C | 7C C0 C1 D6 */	mullw r6, r0, r24
/* 81453C30 | 4B FF D7 19 */	bl CHANSVm_81451348
/* 81453C34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453C38 | 41 82 04 8C */	beq .L_814540C4
/* 81453C3C | 3B 20 00 00 */	li r25, 0x0
/* 81453C40 | 48 00 01 C4 */	b .L_81453E04
.L_81453C44:
/* 81453C44 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81453C48 | 93 61 00 2C */	stw r27, 0x2c(r1)
/* 81453C4C | 93 61 00 28 */	stw r27, 0x28(r1)
/* 81453C50 | 41 82 00 28 */	beq .L_81453C78
/* 81453C54 | 7F C3 F3 78 */	mr r3, r30
/* 81453C58 | 7E 44 93 78 */	mr r4, r18
/* 81453C5C | 7E E5 BB 78 */	mr r5, r23
/* 81453C60 | 4B FF 96 C1 */	bl CHANSVmGetArrayElement
/* 81453C64 | 7C 65 1B 78 */	mr r5, r3
/* 81453C68 | 7F C3 F3 78 */	mr r3, r30
/* 81453C6C | 38 80 00 01 */	li r4, 0x1
/* 81453C70 | 4B FF 7C 6D */	bl CHANSVmConvertObjectType
/* 81453C74 | 48 00 00 20 */	b .L_81453C94
.L_81453C78:
/* 81453C78 | 7F C3 F3 78 */	mr r3, r30
/* 81453C7C | 38 97 00 01 */	addi r4, r23, 0x1
/* 81453C80 | 4B FF 8A 11 */	bl CHANSVmGetArg
/* 81453C84 | 7C 65 1B 78 */	mr r5, r3
/* 81453C88 | 7F C3 F3 78 */	mr r3, r30
/* 81453C8C | 38 80 00 01 */	li r4, 0x1
/* 81453C90 | 4B FF 7C 4D */	bl CHANSVmConvertObjectType
.L_81453C94:
/* 81453C94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453C98 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 81453C9C | 41 82 04 28 */	beq .L_814540C4
/* 81453CA0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81453CA4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81453CA8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81453CAC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81453CB0 | 41 82 00 24 */	beq .L_81453CD4
/* 81453CB4 | 40 80 00 14 */	bge .L_81453CC8
/* 81453CB8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81453CBC | 41 82 00 18 */	beq .L_81453CD4
/* 81453CC0 | 40 80 00 6C */	bge .L_81453D2C
/* 81453CC4 | 48 00 04 00 */	b .L_814540C4
.L_81453CC8:
/* 81453CC8 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81453CCC | 40 80 03 F8 */	bge .L_814540C4
/* 81453CD0 | 48 00 00 5C */	b .L_81453D2C
.L_81453CD4:
/* 81453CD4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81453CD8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81453CDC | 41 82 00 3C */	beq .L_81453D18
/* 81453CE0 | 40 80 00 1C */	bge .L_81453CFC
/* 81453CE4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81453CE8 | 41 82 00 28 */	beq .L_81453D10
/* 81453CEC | 40 80 03 D8 */	bge .L_814540C4
/* 81453CF0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81453CF4 | 40 80 00 14 */	bge .L_81453D08
/* 81453CF8 | 48 00 03 CC */	b .L_814540C4
.L_81453CFC:
/* 81453CFC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81453D00 | 41 82 00 20 */	beq .L_81453D20
/* 81453D04 | 48 00 03 C0 */	b .L_814540C4
.L_81453D08:
/* 81453D08 | 98 61 00 28 */	stb r3, 0x28(r1)
/* 81453D0C | 48 00 00 60 */	b .L_81453D6C
.L_81453D10:
/* 81453D10 | B0 61 00 28 */	sth r3, 0x28(r1)
/* 81453D14 | 48 00 00 58 */	b .L_81453D6C
.L_81453D18:
/* 81453D18 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81453D1C | 48 00 00 50 */	b .L_81453D6C
.L_81453D20:
/* 81453D20 | 90 61 00 2C */	stw r3, 0x2c(r1)
/* 81453D24 | 90 81 00 28 */	stw r4, 0x28(r1)
/* 81453D28 | 48 00 00 44 */	b .L_81453D6C
.L_81453D2C:
/* 81453D2C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81453D30 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81453D34 | 41 82 03 90 */	beq .L_814540C4
/* 81453D38 | 40 80 00 14 */	bge .L_81453D4C
/* 81453D3C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81453D40 | 41 82 00 18 */	beq .L_81453D58
/* 81453D44 | 40 80 00 1C */	bge .L_81453D60
/* 81453D48 | 48 00 03 7C */	b .L_814540C4
.L_81453D4C:
/* 81453D4C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81453D50 | 40 80 03 74 */	bge .L_814540C4
/* 81453D54 | 48 00 00 14 */	b .L_81453D68
.L_81453D58:
/* 81453D58 | 98 61 00 28 */	stb r3, 0x28(r1)
/* 81453D5C | 48 00 00 10 */	b .L_81453D6C
.L_81453D60:
/* 81453D60 | B0 61 00 28 */	sth r3, 0x28(r1)
/* 81453D64 | 48 00 00 08 */	b .L_81453D6C
.L_81453D68:
/* 81453D68 | 90 61 00 28 */	stw r3, 0x28(r1)
.L_81453D6C:
/* 81453D6C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81453D70 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81453D74 | 40 80 00 08 */	bge .L_81453D7C
/* 81453D78 | 48 00 00 60 */	b .L_81453DD8
.L_81453D7C:
/* 81453D7C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81453D80 | 40 80 00 58 */	bge .L_81453DD8
/* 81453D84 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81453D88 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81453D8C | 41 82 00 2C */	beq .L_81453DB8
/* 81453D90 | 40 80 00 10 */	bge .L_81453DA0
/* 81453D94 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81453D98 | 41 82 00 14 */	beq .L_81453DAC
/* 81453D9C | 48 00 00 3C */	b .L_81453DD8
.L_81453DA0:
/* 81453DA0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81453DA4 | 41 82 00 20 */	beq .L_81453DC4
/* 81453DA8 | 48 00 00 30 */	b .L_81453DD8
.L_81453DAC:
/* 81453DAC | A0 01 00 28 */	lhz r0, 0x28(r1)
/* 81453DB0 | 7C 00 E7 2C */	sthbrx r0, r0, r28
/* 81453DB4 | 48 00 00 24 */	b .L_81453DD8
.L_81453DB8:
/* 81453DB8 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 81453DBC | 7C 00 E5 2C */	stwbrx r0, r0, r28
/* 81453DC0 | 48 00 00 18 */	b .L_81453DD8
.L_81453DC4:
/* 81453DC4 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 81453DC8 | 80 81 00 2C */	lwz r4, 0x2c(r1)
/* 81453DCC | 48 00 03 15 */	bl CHANSVm_814540E0
/* 81453DD0 | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81453DD4 | 90 61 00 28 */	stw r3, 0x28(r1)
.L_81453DD8:
/* 81453DD8 | 80 75 00 08 */	lwz r3, 0x8(r21)
/* 81453DDC | 38 81 00 28 */	addi r4, r1, 0x28
/* 81453DE0 | 80 15 00 00 */	lwz r0, 0x0(r21)
/* 81453DE4 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81453DE8 | 7C 63 02 14 */	add r3, r3, r0
/* 81453DEC | 4B ED C4 45 */	bl memcpy
/* 81453DF0 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 81453DF4 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81453DF8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81453DFC | 7C 03 02 14 */	add r0, r3, r0
/* 81453E00 | 90 15 00 00 */	stw r0, 0x0(r21)
.L_81453E04:
/* 81453E04 | 7C 19 C0 40 */	cmplw r25, r24
/* 81453E08 | 41 80 FE 3C */	blt .L_81453C44
/* 81453E0C | 4B FF FC 0C */	b .L_81453A18
.L_81453E10:
/* 81453E10 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81453E14 | 41 82 00 2C */	beq .L_81453E40
/* 81453E18 | 7F C3 F3 78 */	mr r3, r30
/* 81453E1C | 7E 44 93 78 */	mr r4, r18
/* 81453E20 | 7E E5 BB 78 */	mr r5, r23
/* 81453E24 | 4B FF 94 FD */	bl CHANSVmGetArrayElement
/* 81453E28 | 7C 65 1B 78 */	mr r5, r3
/* 81453E2C | 7F C3 F3 78 */	mr r3, r30
/* 81453E30 | 38 80 00 03 */	li r4, 0x3
/* 81453E34 | 4B FF 7A A9 */	bl CHANSVmConvertObjectType
/* 81453E38 | 7C 71 1B 78 */	mr r17, r3
/* 81453E3C | 48 00 00 24 */	b .L_81453E60
.L_81453E40:
/* 81453E40 | 7F C3 F3 78 */	mr r3, r30
/* 81453E44 | 38 97 00 01 */	addi r4, r23, 0x1
/* 81453E48 | 4B FF 88 49 */	bl CHANSVmGetArg
/* 81453E4C | 7C 65 1B 78 */	mr r5, r3
/* 81453E50 | 7F C3 F3 78 */	mr r3, r30
/* 81453E54 | 38 80 00 03 */	li r4, 0x3
/* 81453E58 | 4B FF 7A 85 */	bl CHANSVmConvertObjectType
/* 81453E5C | 7C 71 1B 78 */	mr r17, r3
.L_81453E60:
/* 81453E60 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 81453E64 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 81453E68 | 41 82 02 5C */	beq .L_814540C4
/* 81453E6C | 83 01 00 08 */	lwz r24, 0x8(r1)
/* 81453E70 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81453E74 | 40 80 00 10 */	bge .L_81453E84
/* 81453E78 | 80 71 00 00 */	lwz r3, 0x0(r17)
/* 81453E7C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81453E80 | 54 18 F8 7E */	srwi r24, r0, 1
.L_81453E84:
/* 81453E84 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81453E88 | 41 80 02 3C */	blt .L_814540C4
/* 81453E8C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81453E90 | 7E A3 AB 78 */	mr r3, r21
/* 81453E94 | 38 A0 00 00 */	li r5, 0x0
/* 81453E98 | 7C C0 C1 D6 */	mullw r6, r0, r24
/* 81453E9C | 4B FF D4 AD */	bl CHANSVm_81451348
/* 81453EA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453EA4 | 41 82 02 20 */	beq .L_814540C4
/* 81453EA8 | 7E 23 8B 78 */	mr r3, r17
/* 81453EAC | 4B FF CC F9 */	bl CHANSVm_81450BA4
/* 81453EB0 | 7C 79 1B 78 */	mr r25, r3
/* 81453EB4 | 7E 23 8B 78 */	mr r3, r17
/* 81453EB8 | 4B FF CD 11 */	bl CHANSVm_81450BC8
/* 81453EBC | 54 7D F8 7E */	srwi r29, r3, 1
/* 81453EC0 | 80 75 00 08 */	lwz r3, 0x8(r21)
/* 81453EC4 | 80 15 00 00 */	lwz r0, 0x0(r21)
/* 81453EC8 | 7C 1D C0 40 */	cmplw r29, r24
/* 81453ECC | 7E 23 02 14 */	add r17, r3, r0
/* 81453ED0 | 40 81 00 08 */	ble .L_81453ED8
/* 81453ED4 | 7F 1D C3 78 */	mr r29, r24
.L_81453ED8:
/* 81453ED8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81453EDC | 7E 23 8B 78 */	mr r3, r17
/* 81453EE0 | 38 80 00 00 */	li r4, 0x0
/* 81453EE4 | 7C A0 C1 D6 */	mullw r5, r0, r24
/* 81453EE8 | 4B ED C4 4D */	bl memset
/* 81453EEC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81453EF0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81453EF4 | 40 82 00 18 */	bne .L_81453F0C
/* 81453EF8 | 7E 23 8B 78 */	mr r3, r17
/* 81453EFC | 7F 24 CB 78 */	mr r4, r25
/* 81453F00 | 7F A5 EB 78 */	mr r5, r29
/* 81453F04 | 4B FF 71 89 */	bl VmStrCpyToU8FromU16
/* 81453F08 | 48 00 00 14 */	b .L_81453F1C
.L_81453F0C:
/* 81453F0C | 7C A0 E9 D6 */	mullw r5, r0, r29
/* 81453F10 | 7E 23 8B 78 */	mr r3, r17
/* 81453F14 | 7F 24 CB 78 */	mr r4, r25
/* 81453F18 | 4B ED C3 19 */	bl memcpy
.L_81453F1C:
/* 81453F1C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81453F20 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 81453F24 | 7C 00 C1 D6 */	mullw r0, r0, r24
/* 81453F28 | 7C 03 02 14 */	add r0, r3, r0
/* 81453F2C | 90 15 00 00 */	stw r0, 0x0(r21)
/* 81453F30 | 4B FF FA E8 */	b .L_81453A18
.L_81453F34:
/* 81453F34 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81453F38 | 41 82 00 2C */	beq .L_81453F64
/* 81453F3C | 7F C3 F3 78 */	mr r3, r30
/* 81453F40 | 7E 44 93 78 */	mr r4, r18
/* 81453F44 | 7E E5 BB 78 */	mr r5, r23
/* 81453F48 | 4B FF 93 D9 */	bl CHANSVmGetArrayElement
/* 81453F4C | 7C 65 1B 78 */	mr r5, r3
/* 81453F50 | 7F C3 F3 78 */	mr r3, r30
/* 81453F54 | 38 80 00 03 */	li r4, 0x3
/* 81453F58 | 4B FF 79 85 */	bl CHANSVmConvertObjectType
/* 81453F5C | 7C 79 1B 78 */	mr r25, r3
/* 81453F60 | 48 00 00 24 */	b .L_81453F84
.L_81453F64:
/* 81453F64 | 7F C3 F3 78 */	mr r3, r30
/* 81453F68 | 38 97 00 01 */	addi r4, r23, 0x1
/* 81453F6C | 4B FF 87 25 */	bl CHANSVmGetArg
/* 81453F70 | 7C 65 1B 78 */	mr r5, r3
/* 81453F74 | 7F C3 F3 78 */	mr r3, r30
/* 81453F78 | 38 80 00 03 */	li r4, 0x3
/* 81453F7C | 4B FF 79 61 */	bl CHANSVmConvertObjectType
/* 81453F80 | 7C 79 1B 78 */	mr r25, r3
.L_81453F84:
/* 81453F84 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81453F88 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 81453F8C | 41 82 01 38 */	beq .L_814540C4
/* 81453F90 | 82 21 00 08 */	lwz r17, 0x8(r1)
/* 81453F94 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 81453F98 | 40 80 00 10 */	bge .L_81453FA8
/* 81453F9C | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 81453FA0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81453FA4 | 54 11 F8 7E */	srwi r17, r0, 1
.L_81453FA8:
/* 81453FA8 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 81453FAC | 41 80 01 18 */	blt .L_814540C4
/* 81453FB0 | 38 11 00 01 */	addi r0, r17, 0x1
/* 81453FB4 | 7E A3 AB 78 */	mr r3, r21
/* 81453FB8 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 81453FBC | 7F 00 01 94 */	addze r24, r0
/* 81453FC0 | 7F 06 C3 78 */	mr r6, r24
/* 81453FC4 | 7F 05 FE 70 */	srawi r5, r24, 31
/* 81453FC8 | 4B FF D3 81 */	bl CHANSVm_81451348
/* 81453FCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81453FD0 | 41 82 00 F4 */	beq .L_814540C4
/* 81453FD4 | 7F 23 CB 78 */	mr r3, r25
/* 81453FD8 | 4B FF CB CD */	bl CHANSVm_81450BA4
/* 81453FDC | 7C 7D 1B 78 */	mr r29, r3
/* 81453FE0 | 7F 23 CB 78 */	mr r3, r25
/* 81453FE4 | 4B FF CB E5 */	bl CHANSVm_81450BC8
/* 81453FE8 | 80 75 00 08 */	lwz r3, 0x8(r21)
/* 81453FEC | 7F 05 C3 78 */	mr r5, r24
/* 81453FF0 | 80 15 00 00 */	lwz r0, 0x0(r21)
/* 81453FF4 | 38 80 00 00 */	li r4, 0x0
/* 81453FF8 | 7F 23 02 14 */	add r25, r3, r0
/* 81453FFC | 7F 23 CB 78 */	mr r3, r25
/* 81454000 | 4B ED C3 35 */	bl memset
/* 81454004 | 38 C0 00 00 */	li r6, 0x0
/* 81454008 | 38 60 00 00 */	li r3, 0x0
/* 8145400C | 7E 29 03 A6 */	mtctr r17
/* 81454010 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 81454014 | 40 81 00 88 */	ble .L_8145409C
.L_81454018:
/* 81454018 | 7C FD 1A 2E */	lhzx r7, r29, r3
/* 8145401C | 28 07 00 30 */	cmplwi r7, 0x30
/* 81454020 | 41 80 00 14 */	blt .L_81454034
/* 81454024 | 28 07 00 39 */	cmplwi r7, 0x39
/* 81454028 | 41 81 00 0C */	bgt .L_81454034
/* 8145402C | 38 E7 FF D0 */	subi r7, r7, 0x30
/* 81454030 | 48 00 00 38 */	b .L_81454068
.L_81454034:
/* 81454034 | 28 07 00 61 */	cmplwi r7, 0x61
/* 81454038 | 41 80 00 14 */	blt .L_8145404C
/* 8145403C | 28 07 00 66 */	cmplwi r7, 0x66
/* 81454040 | 41 81 00 0C */	bgt .L_8145404C
/* 81454044 | 38 E7 FF A9 */	subi r7, r7, 0x57
/* 81454048 | 48 00 00 20 */	b .L_81454068
.L_8145404C:
/* 8145404C | 28 07 00 41 */	cmplwi r7, 0x41
/* 81454050 | 41 80 00 14 */	blt .L_81454064
/* 81454054 | 28 07 00 46 */	cmplwi r7, 0x46
/* 81454058 | 41 81 00 0C */	bgt .L_81454064
/* 8145405C | 38 E7 FF C9 */	subi r7, r7, 0x37
/* 81454060 | 48 00 00 08 */	b .L_81454068
.L_81454064:
/* 81454064 | 38 E0 00 00 */	li r7, 0x0
.L_81454068:
/* 81454068 | 54 C5 07 FF */	clrlwi. r5, r6, 31
/* 8145406C | 40 82 00 08 */	bne .L_81454074
/* 81454070 | 54 E7 20 36 */	slwi r7, r7, 4
.L_81454074:
/* 81454074 | 88 99 00 00 */	lbz r4, 0x0(r25)
/* 81454078 | 54 E0 06 3E */	clrlwi r0, r7, 24
/* 8145407C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81454080 | 7C 80 03 78 */	or r0, r4, r0
/* 81454084 | 98 19 00 00 */	stb r0, 0x0(r25)
/* 81454088 | 41 82 00 08 */	beq .L_81454090
/* 8145408C | 3B 39 00 01 */	addi r25, r25, 0x1
.L_81454090:
/* 81454090 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81454094 | 38 63 00 02 */	addi r3, r3, 0x2
/* 81454098 | 42 00 FF 80 */	bdnz .L_81454018
.L_8145409C:
/* 8145409C | 80 15 00 00 */	lwz r0, 0x0(r21)
/* 814540A0 | 7C 00 C2 14 */	add r0, r0, r24
/* 814540A4 | 90 15 00 00 */	stw r0, 0x0(r21)
/* 814540A8 | 4B FF F9 70 */	b .L_81453A18
.L_814540AC:
/* 814540AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814540B0 | 41 82 00 0C */	beq .L_814540BC
/* 814540B4 | 38 00 00 00 */	li r0, 0x0
/* 814540B8 | 90 15 00 00 */	stw r0, 0x0(r21)
.L_814540BC:
/* 814540BC | 38 60 00 01 */	li r3, 0x1
/* 814540C0 | 48 00 00 08 */	b .L_814540C8
.L_814540C4:
/* 814540C4 | 38 60 00 00 */	li r3, 0x0
.L_814540C8:
/* 814540C8 | 39 61 00 70 */	addi r11, r1, 0x70
/* 814540CC | 48 1A 54 19 */	bl _restgpr_17
/* 814540D0 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814540D4 | 7C 08 03 A6 */	mtlr r0
/* 814540D8 | 38 21 00 70 */	addi r1, r1, 0x70
/* 814540DC | 4E 80 00 20 */	blr
.endfn vmBlobPackCommon

# .text:0x9B34 | 0x814540E0 | size: 0x6C
.fn CHANSVm_814540E0, global
/* 814540E0 | 3C C0 00 01 */	lis r6, 0x1
/* 814540E4 | 54 68 C0 0E */	slwi r8, r3, 24
/* 814540E8 | 54 67 40 2E */	slwi r7, r3, 8
/* 814540EC | 54 85 C0 3E */	rotrwi r5, r4, 8
/* 814540F0 | 50 87 46 3E */	rlwimi r7, r4, 8, 24, 31
/* 814540F4 | 39 26 FF 00 */	subi r9, r6, 0x100
/* 814540F8 | 50 88 C2 3E */	rlwimi r8, r4, 24, 8, 31
/* 814540FC | 54 60 C2 3E */	srwi r0, r3, 8
/* 81454100 | 54 86 40 3E */	rotlwi r6, r4, 8
/* 81454104 | 54 E7 06 3E */	clrlwi r7, r7, 24
/* 81454108 | 7D 08 48 38 */	and r8, r8, r9
/* 8145410C | 50 65 C0 0E */	rlwimi r5, r3, 24, 0, 7
/* 81454110 | 3D 60 FF 00 */	lis r11, 0xff00
/* 81454114 | 50 66 40 2E */	rlwimi r6, r3, 8, 0, 23
/* 81454118 | 7C A5 58 38 */	and r5, r5, r11
/* 8145411C | 54 8C C0 0E */	slwi r12, r4, 24
/* 81454120 | 54 8A 42 1E */	rlwinm r10, r4, 8, 8, 15
/* 81454124 | 7D 04 3B 78 */	or r4, r8, r7
/* 81454128 | 54 63 46 3E */	srwi r3, r3, 24
/* 8145412C | 7C 00 48 38 */	and r0, r0, r9
/* 81454130 | 7D 87 58 38 */	and r7, r12, r11
/* 81454134 | 7D 44 23 78 */	or r4, r10, r4
/* 81454138 | 7C 60 03 78 */	or r0, r3, r0
/* 8145413C | 50 C5 02 1E */	rlwimi r5, r6, 0, 8, 15
/* 81454140 | 7C E3 23 78 */	or r3, r7, r4
/* 81454144 | 7C A4 03 78 */	or r4, r5, r0
/* 81454148 | 4E 80 00 20 */	blr
.endfn CHANSVm_814540E0

# .text:0x9BA0 | 0x8145414C | size: 0x8
.fn VmMethod_pCreate, global
/* 8145414C | 38 C0 00 01 */	li r6, 0x1
/* 81454150 | 4B FF F5 20 */	b vmBlobPackCommon
.endfn VmMethod_pCreate

# .text:0x9BA8 | 0x81454154 | size: 0x8
.fn VmMethod_pack, global
/* 81454154 | 38 C0 00 00 */	li r6, 0x0
/* 81454158 | 4B FF F5 18 */	b vmBlobPackCommon
.endfn VmMethod_pack

# .text:0x9BB0 | 0x8145415C | size: 0x814
.fn VmMethod_unpack, global
/* 8145415C | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81454160 | 7C 08 02 A6 */	mflr r0
/* 81454164 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81454168 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8145416C | 48 1A 53 31 */	bl _savegpr_18
/* 81454170 | 7C 7E 1B 78 */	mr r30, r3
/* 81454174 | 7C 83 23 78 */	mr r3, r4
/* 81454178 | 7C BF 2B 78 */	mr r31, r5
/* 8145417C | 4B FF CA 29 */	bl CHANSVm_81450BA4
/* 81454180 | 7C 79 1B 78 */	mr r25, r3
/* 81454184 | 7F C3 F3 78 */	mr r3, r30
/* 81454188 | 38 80 00 00 */	li r4, 0x0
/* 8145418C | 4B FF 85 05 */	bl CHANSVmGetArg
/* 81454190 | 7C 65 1B 78 */	mr r5, r3
/* 81454194 | 7F C3 F3 78 */	mr r3, r30
/* 81454198 | 38 80 00 03 */	li r4, 0x3
/* 8145419C | 4B FF 77 41 */	bl CHANSVmConvertObjectType
/* 814541A0 | 7C 73 1B 78 */	mr r19, r3
/* 814541A4 | 4B FF CA 01 */	bl CHANSVm_81450BA4
/* 814541A8 | 7C 75 1B 78 */	mr r21, r3
/* 814541AC | 7E 63 9B 78 */	mr r3, r19
/* 814541B0 | 4B FF CA 19 */	bl CHANSVm_81450BC8
/* 814541B4 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814541B8 | 54 74 F8 7E */	srwi r20, r3, 1
/* 814541BC | 41 82 00 0C */	beq .L_814541C8
/* 814541C0 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814541C4 | 40 82 00 0C */	bne .L_814541D0
.L_814541C8:
/* 814541C8 | 38 60 00 00 */	li r3, 0x0
/* 814541CC | 48 00 07 8C */	b .L_81454958
.L_814541D0:
/* 814541D0 | 82 F9 00 00 */	lwz r23, 0x0(r25)
/* 814541D4 | 3A C0 00 00 */	li r22, 0x0
/* 814541D8 | 39 20 00 00 */	li r9, 0x0
/* 814541DC | 3B 80 00 00 */	li r28, 0x0
/* 814541E0 | 3B 60 00 01 */	li r27, 0x1
.L_814541E4:
/* 814541E4 | 93 81 00 28 */	stw r28, 0x28(r1)
/* 814541E8 | 7E A7 AB 78 */	mr r7, r21
/* 814541EC | 7E 88 A3 78 */	mr r8, r20
/* 814541F0 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814541F4 | 93 81 00 24 */	stw r28, 0x24(r1)
/* 814541F8 | 38 81 00 24 */	addi r4, r1, 0x24
/* 814541FC | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81454200 | 38 C1 00 1C */	addi r6, r1, 0x1c
/* 81454204 | 93 61 00 20 */	stw r27, 0x20(r1)
/* 81454208 | 93 61 00 1C */	stw r27, 0x1c(r1)
/* 8145420C | 4B FF F2 95 */	bl vmBlobParsePackFormatString
/* 81454210 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81454214 | 7C 69 1B 78 */	mr r9, r3
/* 81454218 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8145421C | 41 82 01 3C */	beq .L_81454358
/* 81454220 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81454224 | 41 82 07 30 */	beq .L_81454954
/* 81454228 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8145422C | 40 80 00 1C */	bge .L_81454248
/* 81454230 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81454234 | 41 82 00 4C */	beq .L_81454280
/* 81454238 | 40 80 00 5C */	bge .L_81454294
/* 8145423C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81454240 | 40 80 00 18 */	bge .L_81454258
/* 81454244 | 48 00 01 04 */	b .L_81454348
.L_81454248:
/* 81454248 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 8145424C | 41 82 00 C8 */	beq .L_81454314
/* 81454250 | 40 80 00 F8 */	bge .L_81454348
/* 81454254 | 48 00 00 80 */	b .L_814542D4
.L_81454258:
/* 81454258 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8145425C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81454260 | 40 80 00 0C */	bge .L_8145426C
/* 81454264 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 81454268 | 7C 17 00 50 */	subf r0, r23, r0
.L_8145426C:
/* 8145426C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81454270 | 41 80 06 E4 */	blt .L_81454954
/* 81454274 | 7E F7 02 14 */	add r23, r23, r0
/* 81454278 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8145427C | 48 00 00 CC */	b .L_81454348
.L_81454280:
/* 81454280 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81454284 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81454288 | 41 80 06 CC */	blt .L_81454954
/* 8145428C | 7E F7 02 14 */	add r23, r23, r0
/* 81454290 | 48 00 00 B8 */	b .L_81454348
.L_81454294:
/* 81454294 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81454298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145429C | 40 80 00 1C */	bge .L_814542B8
/* 814542A0 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814542A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814542A8 | 41 82 06 AC */	beq .L_81454954
/* 814542AC | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814542B0 | 7C 17 00 50 */	subf r0, r23, r0
/* 814542B4 | 7C 60 1B 96 */	divwu r3, r0, r3
.L_814542B8:
/* 814542B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814542BC | 41 80 06 98 */	blt .L_81454954
/* 814542C0 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 814542C4 | 7E D6 1A 14 */	add r22, r22, r3
/* 814542C8 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 814542CC | 7E F7 02 14 */	add r23, r23, r0
/* 814542D0 | 48 00 00 78 */	b .L_81454348
.L_814542D4:
/* 814542D4 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 814542D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814542DC | 40 80 00 1C */	bge .L_814542F8
/* 814542E0 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814542E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814542E8 | 41 82 06 6C */	beq .L_81454954
/* 814542EC | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814542F0 | 7C 17 00 50 */	subf r0, r23, r0
/* 814542F4 | 7C 60 1B 96 */	divwu r3, r0, r3
.L_814542F8:
/* 814542F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814542FC | 41 80 06 58 */	blt .L_81454954
/* 81454300 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81454304 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 81454308 | 7C 00 19 D6 */	mullw r0, r0, r3
/* 8145430C | 7E F7 02 14 */	add r23, r23, r0
/* 81454310 | 48 00 00 38 */	b .L_81454348
.L_81454314:
/* 81454314 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81454318 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145431C | 40 80 00 10 */	bge .L_8145432C
/* 81454320 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 81454324 | 7C 17 00 50 */	subf r0, r23, r0
/* 81454328 | 54 03 08 3C */	slwi r3, r0, 1
.L_8145432C:
/* 8145432C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454330 | 41 80 06 24 */	blt .L_81454954
/* 81454334 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81454338 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8145433C | 7C 00 0E 70 */	srawi r0, r0, 1
/* 81454340 | 7C 00 01 94 */	addze r0, r0
/* 81454344 | 7E F7 02 14 */	add r23, r23, r0
.L_81454348:
/* 81454348 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 8145434C | 7C 17 00 40 */	cmplw r23, r0
/* 81454350 | 41 81 06 04 */	bgt .L_81454954
/* 81454354 | 4B FF FE 90 */	b .L_814541E4
.L_81454358:
/* 81454358 | 92 C1 00 18 */	stw r22, 0x18(r1)
/* 8145435C | 7F C3 F3 78 */	mr r3, r30
/* 81454360 | 7F E4 FB 78 */	mr r4, r31
/* 81454364 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 81454368 | 38 A0 00 01 */	li r5, 0x1
/* 8145436C | 4B FF 98 D5 */	bl CHANSVmNewArrayObject
/* 81454370 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454374 | 41 82 05 E0 */	beq .L_81454954
/* 81454378 | 3B A1 00 30 */	addi r29, r1, 0x30
/* 8145437C | 3B 00 00 00 */	li r24, 0x0
/* 81454380 | 3A E0 00 00 */	li r23, 0x0
/* 81454384 | 3B 80 00 00 */	li r28, 0x0
/* 81454388 | 3B 60 00 01 */	li r27, 0x1
.L_8145438C:
/* 8145438C | 93 61 00 10 */	stw r27, 0x10(r1)
/* 81454390 | 7E A7 AB 78 */	mr r7, r21
/* 81454394 | 7E 88 A3 78 */	mr r8, r20
/* 81454398 | 7E E9 BB 78 */	mr r9, r23
/* 8145439C | 93 81 00 0C */	stw r28, 0xc(r1)
/* 814543A0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814543A4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814543A8 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814543AC | 93 61 00 08 */	stw r27, 0x8(r1)
/* 814543B0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814543B4 | 4B FF F0 ED */	bl vmBlobParsePackFormatString
/* 814543B8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814543BC | 7C 77 1B 78 */	mr r23, r3
/* 814543C0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814543C4 | 41 82 05 88 */	beq .L_8145494C
/* 814543C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814543CC | 41 82 05 88 */	beq .L_81454954
/* 814543D0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814543D4 | 40 80 00 1C */	bge .L_814543F0
/* 814543D8 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814543DC | 41 82 00 B4 */	beq .L_81454490
/* 814543E0 | 40 80 00 E4 */	bge .L_814544C4
/* 814543E4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814543E8 | 40 80 00 18 */	bge .L_81454400
/* 814543EC | 48 00 05 68 */	b .L_81454954
.L_814543F0:
/* 814543F0 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 814543F4 | 41 82 04 40 */	beq .L_81454834
/* 814543F8 | 40 80 05 5C */	bge .L_81454954
/* 814543FC | 48 00 02 E0 */	b .L_814546DC
.L_81454400:
/* 81454400 | 82 41 00 08 */	lwz r18, 0x8(r1)
/* 81454404 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81454408 | 40 80 00 10 */	bge .L_81454418
/* 8145440C | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 81454410 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 81454414 | 7E 43 00 50 */	subf r18, r3, r0
.L_81454418:
/* 81454418 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 8145441C | 41 80 05 38 */	blt .L_81454954
/* 81454420 | 7F 23 CB 78 */	mr r3, r25
/* 81454424 | 7E 46 93 78 */	mr r6, r18
/* 81454428 | 7E 45 FE 70 */	srawi r5, r18, 31
/* 8145442C | 4B FF CF 1D */	bl CHANSVm_81451348
/* 81454430 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454434 | 41 82 05 20 */	beq .L_81454954
/* 81454438 | 80 D9 00 08 */	lwz r6, 0x8(r25)
/* 8145443C | 7F C3 F3 78 */	mr r3, r30
/* 81454440 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 81454444 | 7F E4 FB 78 */	mr r4, r31
/* 81454448 | 7F 05 C3 78 */	mr r5, r24
/* 8145444C | 7E 66 02 14 */	add r19, r6, r0
/* 81454450 | 4B FF 8E D1 */	bl CHANSVmGetArrayElement
/* 81454454 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454458 | 7C 64 1B 78 */	mr r4, r3
/* 8145445C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81454460 | 41 82 04 F4 */	beq .L_81454954
/* 81454464 | 7F C3 F3 78 */	mr r3, r30
/* 81454468 | 7E 45 93 78 */	mr r5, r18
/* 8145446C | 7E 66 9B 78 */	mr r6, r19
/* 81454470 | 7E 47 93 78 */	mr r7, r18
/* 81454474 | 48 00 04 FD */	bl CHANSVmNewBlobObject
/* 81454478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145447C | 41 82 04 D8 */	beq .L_81454954
/* 81454480 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 81454484 | 7C 00 92 14 */	add r0, r0, r18
/* 81454488 | 90 19 00 00 */	stw r0, 0x0(r25)
/* 8145448C | 4B FF FF 00 */	b .L_8145438C
.L_81454490:
/* 81454490 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81454494 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81454498 | 41 80 04 BC */	blt .L_81454954
/* 8145449C | 7F 23 CB 78 */	mr r3, r25
/* 814544A0 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 814544A4 | 4B FF CE A5 */	bl CHANSVm_81451348
/* 814544A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814544AC | 41 82 04 A8 */	beq .L_81454954
/* 814544B0 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 814544B4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814544B8 | 7C 03 02 14 */	add r0, r3, r0
/* 814544BC | 90 19 00 00 */	stw r0, 0x0(r25)
/* 814544C0 | 4B FF FE CC */	b .L_8145438C
.L_814544C4:
/* 814544C4 | 82 C1 00 08 */	lwz r22, 0x8(r1)
/* 814544C8 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814544CC | 40 80 00 20 */	bge .L_814544EC
/* 814544D0 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814544D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814544D8 | 41 82 04 7C */	beq .L_81454954
/* 814544DC | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 814544E0 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814544E4 | 7C 03 00 50 */	subf r0, r3, r0
/* 814544E8 | 7E C0 23 96 */	divwu r22, r0, r4
.L_814544EC:
/* 814544EC | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814544F0 | 41 80 04 64 */	blt .L_81454954
/* 814544F4 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814544F8 | 7F 23 CB 78 */	mr r3, r25
/* 814544FC | 38 A0 00 00 */	li r5, 0x0
/* 81454500 | 7C C0 B1 D6 */	mullw r6, r0, r22
/* 81454504 | 4B FF CE 45 */	bl CHANSVm_81451348
/* 81454508 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145450C | 41 82 04 48 */	beq .L_81454954
/* 81454510 | 3B 40 00 00 */	li r26, 0x0
/* 81454514 | 48 00 01 BC */	b .L_814546D0
.L_81454518:
/* 81454518 | 93 81 00 34 */	stw r28, 0x34(r1)
/* 8145451C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81454520 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 81454524 | 93 81 00 30 */	stw r28, 0x30(r1)
/* 81454528 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 8145452C | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 81454530 | 7C 84 02 14 */	add r4, r4, r0
/* 81454534 | 4B ED BC FD */	bl memcpy
/* 81454538 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8145453C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81454540 | 40 80 00 08 */	bge .L_81454548
/* 81454544 | 48 00 00 60 */	b .L_814545A4
.L_81454548:
/* 81454548 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8145454C | 40 80 00 58 */	bge .L_814545A4
/* 81454550 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81454554 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81454558 | 41 82 00 2C */	beq .L_81454584
/* 8145455C | 40 80 00 10 */	bge .L_8145456C
/* 81454560 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81454564 | 41 82 00 14 */	beq .L_81454578
/* 81454568 | 48 00 00 3C */	b .L_814545A4
.L_8145456C:
/* 8145456C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81454570 | 41 82 00 20 */	beq .L_81454590
/* 81454574 | 48 00 00 30 */	b .L_814545A4
.L_81454578:
/* 81454578 | A0 01 00 30 */	lhz r0, 0x30(r1)
/* 8145457C | 7C 00 EF 2C */	sthbrx r0, r0, r29
/* 81454580 | 48 00 00 24 */	b .L_814545A4
.L_81454584:
/* 81454584 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 81454588 | 7C 00 ED 2C */	stwbrx r0, r0, r29
/* 8145458C | 48 00 00 18 */	b .L_814545A4
.L_81454590:
/* 81454590 | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 81454594 | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 81454598 | 4B FF FB 49 */	bl CHANSVm_814540E0
/* 8145459C | 90 81 00 34 */	stw r4, 0x34(r1)
/* 814545A0 | 90 61 00 30 */	stw r3, 0x30(r1)
.L_814545A4:
/* 814545A4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814545A8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814545AC | 41 82 00 24 */	beq .L_814545D0
/* 814545B0 | 40 80 00 14 */	bge .L_814545C4
/* 814545B4 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 814545B8 | 41 82 00 18 */	beq .L_814545D0
/* 814545BC | 40 80 00 7C */	bge .L_81454638
/* 814545C0 | 48 00 03 94 */	b .L_81454954
.L_814545C4:
/* 814545C4 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814545C8 | 40 80 03 8C */	bge .L_81454954
/* 814545CC | 48 00 00 6C */	b .L_81454638
.L_814545D0:
/* 814545D0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814545D4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814545D8 | 41 82 00 48 */	beq .L_81454620
/* 814545DC | 40 80 00 1C */	bge .L_814545F8
/* 814545E0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814545E4 | 41 82 00 30 */	beq .L_81454614
/* 814545E8 | 40 80 03 6C */	bge .L_81454954
/* 814545EC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814545F0 | 40 80 00 14 */	bge .L_81454604
/* 814545F4 | 48 00 03 60 */	b .L_81454954
.L_814545F8:
/* 814545F8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814545FC | 41 82 00 30 */	beq .L_8145462C
/* 81454600 | 48 00 03 54 */	b .L_81454954
.L_81454604:
/* 81454604 | 8A 61 00 30 */	lbz r19, 0x30(r1)
/* 81454608 | 7E 73 07 74 */	extsb r19, r19
/* 8145460C | 7E 72 FE 70 */	srawi r18, r19, 31
/* 81454610 | 48 00 00 74 */	b .L_81454684
.L_81454614:
/* 81454614 | AA 61 00 30 */	lha r19, 0x30(r1)
/* 81454618 | 7E 72 FE 70 */	srawi r18, r19, 31
/* 8145461C | 48 00 00 68 */	b .L_81454684
.L_81454620:
/* 81454620 | 82 61 00 30 */	lwz r19, 0x30(r1)
/* 81454624 | 7E 72 FE 70 */	srawi r18, r19, 31
/* 81454628 | 48 00 00 5C */	b .L_81454684
.L_8145462C:
/* 8145462C | 82 41 00 30 */	lwz r18, 0x30(r1)
/* 81454630 | 82 61 00 34 */	lwz r19, 0x34(r1)
/* 81454634 | 48 00 00 50 */	b .L_81454684
.L_81454638:
/* 81454638 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8145463C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81454640 | 41 82 03 14 */	beq .L_81454954
/* 81454644 | 40 80 00 14 */	bge .L_81454658
/* 81454648 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8145464C | 41 82 00 18 */	beq .L_81454664
/* 81454650 | 40 80 00 20 */	bge .L_81454670
/* 81454654 | 48 00 03 00 */	b .L_81454954
.L_81454658:
/* 81454658 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8145465C | 40 80 02 F8 */	bge .L_81454954
/* 81454660 | 48 00 00 1C */	b .L_8145467C
.L_81454664:
/* 81454664 | 8A 61 00 30 */	lbz r19, 0x30(r1)
/* 81454668 | 3A 40 00 00 */	li r18, 0x0
/* 8145466C | 48 00 00 18 */	b .L_81454684
.L_81454670:
/* 81454670 | A2 61 00 30 */	lhz r19, 0x30(r1)
/* 81454674 | 3A 40 00 00 */	li r18, 0x0
/* 81454678 | 48 00 00 0C */	b .L_81454684
.L_8145467C:
/* 8145467C | 82 61 00 30 */	lwz r19, 0x30(r1)
/* 81454680 | 3A 40 00 00 */	li r18, 0x0
.L_81454684:
/* 81454684 | 7F C3 F3 78 */	mr r3, r30
/* 81454688 | 7F E4 FB 78 */	mr r4, r31
/* 8145468C | 7F 05 C3 78 */	mr r5, r24
/* 81454690 | 4B FF 8C 91 */	bl CHANSVmGetArrayElement
/* 81454694 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454698 | 7C 64 1B 78 */	mr r4, r3
/* 8145469C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814546A0 | 41 82 02 B4 */	beq .L_81454954
/* 814546A4 | 7F C3 F3 78 */	mr r3, r30
/* 814546A8 | 7E 66 9B 78 */	mr r6, r19
/* 814546AC | 7E 45 93 78 */	mr r5, r18
/* 814546B0 | 4B FF 72 E9 */	bl CHANSVmSetInteger
/* 814546B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814546B8 | 40 82 02 9C */	bne .L_81454954
/* 814546BC | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 814546C0 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814546C4 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814546C8 | 7C 03 02 14 */	add r0, r3, r0
/* 814546CC | 90 19 00 00 */	stw r0, 0x0(r25)
.L_814546D0:
/* 814546D0 | 7C 1A B0 40 */	cmplw r26, r22
/* 814546D4 | 41 80 FE 44 */	blt .L_81454518
/* 814546D8 | 4B FF FC B4 */	b .L_8145438C
.L_814546DC:
/* 814546DC | 82 61 00 08 */	lwz r19, 0x8(r1)
/* 814546E0 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 814546E4 | 40 80 00 20 */	bge .L_81454704
/* 814546E8 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814546EC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814546F0 | 41 82 02 64 */	beq .L_81454954
/* 814546F4 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 814546F8 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814546FC | 7C 03 00 50 */	subf r0, r3, r0
/* 81454700 | 7E 60 23 96 */	divwu r19, r0, r4
.L_81454704:
/* 81454704 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 81454708 | 41 80 02 4C */	blt .L_81454954
/* 8145470C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81454710 | 7F 23 CB 78 */	mr r3, r25
/* 81454714 | 38 A0 00 00 */	li r5, 0x0
/* 81454718 | 7C C0 99 D6 */	mullw r6, r0, r19
/* 8145471C | 4B FF CC 2D */	bl CHANSVm_81451348
/* 81454720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454724 | 41 82 02 30 */	beq .L_81454954
/* 81454728 | 80 D9 00 08 */	lwz r6, 0x8(r25)
/* 8145472C | 7F C3 F3 78 */	mr r3, r30
/* 81454730 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 81454734 | 7F E4 FB 78 */	mr r4, r31
/* 81454738 | 7F 05 C3 78 */	mr r5, r24
/* 8145473C | 7E 46 02 14 */	add r18, r6, r0
/* 81454740 | 4B FF 8B E1 */	bl CHANSVmGetArrayElement
/* 81454744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454748 | 7C 76 1B 78 */	mr r22, r3
/* 8145474C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81454750 | 41 82 02 04 */	beq .L_81454954
/* 81454754 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81454758 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8145475C | 40 82 00 24 */	bne .L_81454780
/* 81454760 | 7F C3 F3 78 */	mr r3, r30
/* 81454764 | 7E C4 B3 78 */	mr r4, r22
/* 81454768 | 7E 45 93 78 */	mr r5, r18
/* 8145476C | 7E 66 9B 78 */	mr r6, r19
/* 81454770 | 4B FF 73 6D */	bl CHANSVmSetU16StringFromU8
/* 81454774 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454778 | 40 82 01 DC */	bne .L_81454954
/* 8145477C | 48 00 00 20 */	b .L_8145479C
.L_81454780:
/* 81454780 | 7C C0 99 D6 */	mullw r6, r0, r19
/* 81454784 | 7F C3 F3 78 */	mr r3, r30
/* 81454788 | 7E C4 B3 78 */	mr r4, r22
/* 8145478C | 7E 45 93 78 */	mr r5, r18
/* 81454790 | 4B FF 72 B9 */	bl CHANSVmSetU16String
/* 81454794 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454798 | 40 82 01 BC */	bne .L_81454954
.L_8145479C:
/* 8145479C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814547A0 | 28 00 00 0B */	cmplwi r0, 0xb
/* 814547A4 | 41 82 00 0C */	beq .L_814547B0
/* 814547A8 | 28 00 00 0D */	cmplwi r0, 0xd
/* 814547AC | 40 82 00 70 */	bne .L_8145481C
.L_814547B0:
/* 814547B0 | 7E C3 B3 78 */	mr r3, r22
/* 814547B4 | 4B FF C3 F1 */	bl CHANSVm_81450BA4
/* 814547B8 | 7C 7A 1B 78 */	mr r26, r3
/* 814547BC | 7E C3 B3 78 */	mr r3, r22
/* 814547C0 | 4B FF C4 09 */	bl CHANSVm_81450BC8
/* 814547C4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814547C8 | 41 82 00 54 */	beq .L_8145481C
/* 814547CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814547D0 | 41 82 00 4C */	beq .L_8145481C
/* 814547D4 | 88 16 00 08 */	lbz r0, 0x8(r22)
/* 814547D8 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814547DC | 40 82 00 40 */	bne .L_8145481C
/* 814547E0 | 54 65 F8 7E */	srwi r5, r3, 1
/* 814547E4 | 38 80 00 00 */	li r4, 0x0
/* 814547E8 | 48 00 00 0C */	b .L_814547F4
.L_814547EC:
/* 814547EC | 3B 5A 00 02 */	addi r26, r26, 0x2
/* 814547F0 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814547F4:
/* 814547F4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814547F8 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 814547FC | 41 82 00 14 */	beq .L_81454810
/* 81454800 | 88 7A 00 00 */	lbz r3, 0x0(r26)
/* 81454804 | 88 1A 00 01 */	lbz r0, 0x1(r26)
/* 81454808 | 50 60 44 2F */	rlwimi. r0, r3, 8, 16, 23
/* 8145480C | 40 82 FF E0 */	bne .L_814547EC
.L_81454810:
/* 81454810 | 80 76 00 00 */	lwz r3, 0x0(r22)
/* 81454814 | 54 80 08 3C */	slwi r0, r4, 1
/* 81454818 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_8145481C:
/* 8145481C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81454820 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 81454824 | 7C 00 99 D6 */	mullw r0, r0, r19
/* 81454828 | 7C 03 02 14 */	add r0, r3, r0
/* 8145482C | 90 19 00 00 */	stw r0, 0x0(r25)
/* 81454830 | 4B FF FB 5C */	b .L_8145438C
.L_81454834:
/* 81454834 | 82 61 00 08 */	lwz r19, 0x8(r1)
/* 81454838 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8145483C | 40 80 00 14 */	bge .L_81454850
/* 81454840 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 81454844 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 81454848 | 7C 03 00 50 */	subf r0, r3, r0
/* 8145484C | 54 13 08 3C */	slwi r19, r0, 1
.L_81454850:
/* 81454850 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 81454854 | 41 80 01 00 */	blt .L_81454954
/* 81454858 | 38 13 00 01 */	addi r0, r19, 0x1
/* 8145485C | 7F 23 CB 78 */	mr r3, r25
/* 81454860 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 81454864 | 7F 40 01 94 */	addze r26, r0
/* 81454868 | 7F 46 D3 78 */	mr r6, r26
/* 8145486C | 7F 45 FE 70 */	srawi r5, r26, 31
/* 81454870 | 4B FF CA D9 */	bl CHANSVm_81451348
/* 81454874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454878 | 41 82 00 DC */	beq .L_81454954
/* 8145487C | 80 D9 00 08 */	lwz r6, 0x8(r25)
/* 81454880 | 7F C3 F3 78 */	mr r3, r30
/* 81454884 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 81454888 | 7F E4 FB 78 */	mr r4, r31
/* 8145488C | 7F 05 C3 78 */	mr r5, r24
/* 81454890 | 7E C6 02 14 */	add r22, r6, r0
/* 81454894 | 4B FF 8A 8D */	bl CHANSVmGetArrayElement
/* 81454898 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145489C | 7C 72 1B 78 */	mr r18, r3
/* 814548A0 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814548A4 | 41 82 00 B0 */	beq .L_81454954
/* 814548A8 | 7F C3 F3 78 */	mr r3, r30
/* 814548AC | 7E 45 93 78 */	mr r5, r18
/* 814548B0 | 56 67 08 3C */	slwi r7, r19, 1
/* 814548B4 | 38 80 00 00 */	li r4, 0x0
/* 814548B8 | 38 C0 00 03 */	li r6, 0x3
/* 814548BC | 4B FF 65 19 */	bl CHANSVmNewObject
/* 814548C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814548C4 | 41 82 00 90 */	beq .L_81454954
/* 814548C8 | 7E 43 93 78 */	mr r3, r18
/* 814548CC | 4B FF C2 D9 */	bl CHANSVm_81450BA4
/* 814548D0 | 7E 60 0E 70 */	srawi r0, r19, 1
/* 814548D4 | 80 AD 96 A8 */	lwz r5, lbl_816976E8@sda21(r0)
/* 814548D8 | 7C 00 01 95 */	addze. r0, r0
/* 814548DC | 38 C0 00 00 */	li r6, 0x0
/* 814548E0 | 7C 09 03 A6 */	mtctr r0
/* 814548E4 | 40 81 00 38 */	ble .L_8145491C
.L_814548E8:
/* 814548E8 | 88 16 00 00 */	lbz r0, 0x0(r22)
/* 814548EC | 3A D6 00 01 */	addi r22, r22, 0x1
/* 814548F0 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814548F4 | 54 04 E7 3E */	extrwi r4, r0, 4, 24
/* 814548F8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814548FC | 7C 85 20 AE */	lbzx r4, r5, r4
/* 81454900 | 7C 84 07 74 */	extsb r4, r4
/* 81454904 | B0 83 00 00 */	sth r4, 0x0(r3)
/* 81454908 | 7C 05 00 AE */	lbzx r0, r5, r0
/* 8145490C | 7C 00 07 74 */	extsb r0, r0
/* 81454910 | B0 03 00 02 */	sth r0, 0x2(r3)
/* 81454914 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81454918 | 42 00 FF D0 */	bdnz .L_814548E8
.L_8145491C:
/* 8145491C | 54 C0 08 3C */	slwi r0, r6, 1
/* 81454920 | 7C 00 98 00 */	cmpw r0, r19
/* 81454924 | 40 80 00 18 */	bge .L_8145493C
/* 81454928 | 88 16 00 00 */	lbz r0, 0x0(r22)
/* 8145492C | 54 00 E7 3E */	extrwi r0, r0, 4, 24
/* 81454930 | 7C 05 00 AE */	lbzx r0, r5, r0
/* 81454934 | 7C 00 07 74 */	extsb r0, r0
/* 81454938 | B0 03 00 00 */	sth r0, 0x0(r3)
.L_8145493C:
/* 8145493C | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 81454940 | 7C 00 D2 14 */	add r0, r0, r26
/* 81454944 | 90 19 00 00 */	stw r0, 0x0(r25)
/* 81454948 | 4B FF FA 44 */	b .L_8145438C
.L_8145494C:
/* 8145494C | 38 60 00 01 */	li r3, 0x1
/* 81454950 | 48 00 00 08 */	b .L_81454958
.L_81454954:
/* 81454954 | 38 60 00 00 */	li r3, 0x0
.L_81454958:
/* 81454958 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8145495C | 48 1A 4B 8D */	bl _restgpr_18
/* 81454960 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81454964 | 7C 08 03 A6 */	mtlr r0
/* 81454968 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8145496C | 4E 80 00 20 */	blr
.endfn VmMethod_unpack

# .text:0xA3C4 | 0x81454970 | size: 0xB4
.fn CHANSVmNewBlobObject, global
/* 81454970 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81454974 | 7C 08 02 A6 */	mflr r0
/* 81454978 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145497C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81454980 | 48 1A 4B 49 */	bl _savegpr_29
/* 81454984 | 7C 07 28 40 */	cmplw r7, r5
/* 81454988 | 7C 9D 23 78 */	mr r29, r4
/* 8145498C | 7C DE 33 78 */	mr r30, r6
/* 81454990 | 7C FF 3B 78 */	mr r31, r7
/* 81454994 | 40 81 00 08 */	ble .L_8145499C
/* 81454998 | 7C BF 2B 78 */	mr r31, r5
.L_8145499C:
/* 8145499C | 7F A4 EB 78 */	mr r4, r29
/* 814549A0 | 4B FF C2 6D */	bl vmBlobCreateDirect
/* 814549A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814549A8 | 7C 7D 1B 78 */	mr r29, r3
/* 814549AC | 40 82 00 0C */	bne .L_814549B8
/* 814549B0 | 38 60 00 00 */	li r3, 0x0
/* 814549B4 | 48 00 00 58 */	b .L_81454A0C
.L_814549B8:
/* 814549B8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814549BC | 41 82 00 4C */	beq .L_81454A08
/* 814549C0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814549C4 | 41 82 00 44 */	beq .L_81454A08
/* 814549C8 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 814549CC | 4B FF 86 39 */	bl CHANSVmCheckNativeInstance
/* 814549D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814549D4 | 41 82 00 10 */	beq .L_814549E4
/* 814549D8 | 7F A3 EB 78 */	mr r3, r29
/* 814549DC | 4B FF C1 C9 */	bl CHANSVm_81450BA4
/* 814549E0 | 48 00 00 08 */	b .L_814549E8
.L_814549E4:
/* 814549E4 | 38 60 00 00 */	li r3, 0x0
.L_814549E8:
/* 814549E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814549EC | 40 82 00 0C */	bne .L_814549F8
/* 814549F0 | 38 60 00 00 */	li r3, 0x0
/* 814549F4 | 48 00 00 18 */	b .L_81454A0C
.L_814549F8:
/* 814549F8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814549FC | 7F C4 F3 78 */	mr r4, r30
/* 81454A00 | 7F E5 FB 78 */	mr r5, r31
/* 81454A04 | 4B ED B8 2D */	bl memcpy
.L_81454A08:
/* 81454A08 | 7F A3 EB 78 */	mr r3, r29
.L_81454A0C:
/* 81454A0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81454A10 | 48 1A 4B 05 */	bl _restgpr_29
/* 81454A14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81454A18 | 7C 08 03 A6 */	mtlr r0
/* 81454A1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81454A20 | 4E 80 00 20 */	blr
.endfn CHANSVmNewBlobObject

# .text:0xA478 | 0x81454A24 | size: 0x40
.fn VmGetProp_width, global
/* 81454A24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81454A28 | 7C 08 02 A6 */	mflr r0
/* 81454A2C | 7C 86 23 78 */	mr r6, r4
/* 81454A30 | 7C A4 2B 78 */	mr r4, r5
/* 81454A34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81454A38 | 38 A0 00 00 */	li r5, 0x0
/* 81454A3C | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 81454A40 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 81454A44 | A0 C6 00 08 */	lhz r6, 0x8(r6)
/* 81454A48 | 4B FF 6F 51 */	bl CHANSVmSetInteger
/* 81454A4C | 7C 60 00 34 */	cntlzw r0, r3
/* 81454A50 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81454A54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81454A58 | 7C 08 03 A6 */	mtlr r0
/* 81454A5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81454A60 | 4E 80 00 20 */	blr
.endfn VmGetProp_width

# .text:0xA4B8 | 0x81454A64 | size: 0x40
.fn VmGetProp_height, global
/* 81454A64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81454A68 | 7C 08 02 A6 */	mflr r0
/* 81454A6C | 7C 86 23 78 */	mr r6, r4
/* 81454A70 | 7C A4 2B 78 */	mr r4, r5
/* 81454A74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81454A78 | 38 A0 00 00 */	li r5, 0x0
/* 81454A7C | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 81454A80 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 81454A84 | A0 C6 00 0A */	lhz r6, 0xa(r6)
/* 81454A88 | 4B FF 6F 11 */	bl CHANSVmSetInteger
/* 81454A8C | 7C 60 00 34 */	cntlzw r0, r3
/* 81454A90 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81454A94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81454A98 | 7C 08 03 A6 */	mtlr r0
/* 81454A9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81454AA0 | 4E 80 00 20 */	blr
.endfn VmGetProp_height

# .text:0xA4F8 | 0x81454AA4 | size: 0x40
.fn VmGetProp_format, global
/* 81454AA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81454AA8 | 7C 08 02 A6 */	mflr r0
/* 81454AAC | 7C 86 23 78 */	mr r6, r4
/* 81454AB0 | 7C A4 2B 78 */	mr r4, r5
/* 81454AB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81454AB8 | 38 A0 00 00 */	li r5, 0x0
/* 81454ABC | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 81454AC0 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 81454AC4 | 88 C6 00 0C */	lbz r6, 0xc(r6)
/* 81454AC8 | 4B FF 6E D1 */	bl CHANSVmSetInteger
/* 81454ACC | 7C 60 00 34 */	cntlzw r0, r3
/* 81454AD0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81454AD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81454AD8 | 7C 08 03 A6 */	mtlr r0
/* 81454ADC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81454AE0 | 4E 80 00 20 */	blr
.endfn VmGetProp_format

# .text:0xA538 | 0x81454AE4 | size: 0xC
.fn CHANSVmImageRegisterAllocator, global
/* 81454AE4 | 90 6D AD 14 */	stw r3, lbl_81698D54@sda21(r0)
/* 81454AE8 | 90 8D AD 10 */	stw r4, VmImageCtorCallback@sda21(r0)
/* 81454AEC | 4E 80 00 20 */	blr
.endfn CHANSVmImageRegisterAllocator

# .text:0xA544 | 0x81454AF0 | size: 0x170
.fn CHANSVmNewImageObject, global
/* 81454AF0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81454AF4 | 7C 08 02 A6 */	mflr r0
/* 81454AF8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81454AFC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81454B00 | 48 1A 49 B1 */	bl _savegpr_23
/* 81454B04 | 54 C0 07 7F */	clrlwi. r0, r6, 29
/* 81454B08 | 7C 77 1B 78 */	mr r23, r3
/* 81454B0C | 7C 98 23 78 */	mr r24, r4
/* 81454B10 | 7C B9 2B 78 */	mr r25, r5
/* 81454B14 | 7C DA 33 78 */	mr r26, r6
/* 81454B18 | 7C FB 3B 78 */	mr r27, r7
/* 81454B1C | 7D 1C 43 78 */	mr r28, r8
/* 81454B20 | 40 82 01 24 */	bne .L_81454C44
/* 81454B24 | 54 E0 07 7F */	clrlwi. r0, r7, 29
/* 81454B28 | 40 82 01 1C */	bne .L_81454C44
/* 81454B2C | 2C 08 00 06 */	cmpwi r8, 0x6
/* 81454B30 | 41 82 00 2C */	beq .L_81454B5C
/* 81454B34 | 40 80 00 28 */	bge .L_81454B5C
/* 81454B38 | 2C 08 00 03 */	cmpwi r8, 0x3
/* 81454B3C | 40 80 00 18 */	bge .L_81454B54
/* 81454B40 | 2C 08 00 01 */	cmpwi r8, 0x1
/* 81454B44 | 40 80 00 08 */	bge .L_81454B4C
/* 81454B48 | 48 00 00 14 */	b .L_81454B5C
.L_81454B4C:
/* 81454B4C | 3B E0 00 08 */	li r31, 0x8
/* 81454B50 | 48 00 00 10 */	b .L_81454B60
.L_81454B54:
/* 81454B54 | 3B E0 00 10 */	li r31, 0x10
/* 81454B58 | 48 00 00 08 */	b .L_81454B60
.L_81454B5C:
/* 81454B5C | 3B E0 00 20 */	li r31, 0x20
.L_81454B60:
/* 81454B60 | 7C 86 39 D6 */	mullw r4, r6, r7
/* 81454B64 | 80 0D AD 14 */	lwz r0, lbl_81698D54@sda21(r0)
/* 81454B68 | 7E E3 BB 78 */	mr r3, r23
/* 81454B6C | 20 00 00 00 */	subfic r0, r0, 0x0
/* 81454B70 | 7F 05 C3 78 */	mr r5, r24
/* 81454B74 | 7C 00 01 10 */	subfe r0, r0, r0
/* 81454B78 | 7C FF 21 D6 */	mullw r7, r31, r4
/* 81454B7C | 38 80 00 00 */	li r4, 0x0
/* 81454B80 | 38 C0 00 08 */	li r6, 0x8
/* 81454B84 | 54 FD E8 FE */	srwi r29, r7, 3
/* 81454B88 | 7F A7 00 78 */	andc r7, r29, r0
/* 81454B8C | 38 E7 00 20 */	addi r7, r7, 0x20
/* 81454B90 | 4B FF 62 45 */	bl CHANSVmNewObject
/* 81454B94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454B98 | 7C 78 1B 78 */	mr r24, r3
/* 81454B9C | 41 82 00 A0 */	beq .L_81454C3C
/* 81454BA0 | 7E E3 BB 78 */	mr r3, r23
/* 81454BA4 | 7F 04 C3 78 */	mr r4, r24
/* 81454BA8 | 38 A0 00 00 */	li r5, 0x0
/* 81454BAC | 38 CD 97 4C */	li r6, lbl_8169778C@sda21
/* 81454BB0 | 4B FF 82 2D */	bl CHANSVmSetObjectAsNativeInstance
/* 81454BB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454BB8 | 40 82 00 8C */	bne .L_81454C44
/* 81454BBC | 80 78 00 00 */	lwz r3, 0x0(r24)
/* 81454BC0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81454BC4 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 81454BC8 | B3 5E 00 08 */	sth r26, 0x8(r30)
/* 81454BCC | B3 7E 00 0A */	sth r27, 0xa(r30)
/* 81454BD0 | 9B 9E 00 0C */	stb r28, 0xc(r30)
/* 81454BD4 | 9B FE 00 0D */	stb r31, 0xd(r30)
/* 81454BD8 | 41 82 00 64 */	beq .L_81454C3C
/* 81454BDC | 81 8D AD 14 */	lwz r12, lbl_81698D54@sda21(r0)
/* 81454BE0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81454BE4 | 41 82 00 1C */	beq .L_81454C00
/* 81454BE8 | 7E E3 BB 78 */	mr r3, r23
/* 81454BEC | 7F A4 EB 78 */	mr r4, r29
/* 81454BF0 | 7D 89 03 A6 */	mtctr r12
/* 81454BF4 | 4E 80 04 21 */	bctrl
/* 81454BF8 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 81454BFC | 48 00 00 0C */	b .L_81454C08
.L_81454C00:
/* 81454C00 | 38 1E 00 20 */	addi r0, r30, 0x20
/* 81454C04 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81454C08:
/* 81454C08 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81454C0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81454C10 | 41 82 00 34 */	beq .L_81454C44
/* 81454C14 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81454C18 | 93 BE 00 04 */	stw r29, 0x4(r30)
/* 81454C1C | 41 82 00 20 */	beq .L_81454C3C
/* 81454C20 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81454C24 | 7F 24 CB 78 */	mr r4, r25
/* 81454C28 | 7F A5 EB 78 */	mr r5, r29
/* 81454C2C | 4B ED B6 05 */	bl memcpy
/* 81454C30 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81454C34 | 7F A4 EB 78 */	mr r4, r29
/* 81454C38 | 48 0D 8D 2D */	bl DCStoreRange
.L_81454C3C:
/* 81454C3C | 7F 03 C3 78 */	mr r3, r24
/* 81454C40 | 48 00 00 08 */	b .L_81454C48
.L_81454C44:
/* 81454C44 | 38 60 00 00 */	li r3, 0x0
.L_81454C48:
/* 81454C48 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81454C4C | 48 1A 48 B1 */	bl _restgpr_23
/* 81454C50 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81454C54 | 7C 08 03 A6 */	mtlr r0
/* 81454C58 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81454C5C | 4E 80 00 20 */	blr
.endfn CHANSVmNewImageObject

# .text:0xA6B4 | 0x81454C60 | size: 0x64
.fn VmCtor_Image, global
/* 81454C60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81454C64 | 7C 08 02 A6 */	mflr r0
/* 81454C68 | 38 A0 00 00 */	li r5, 0x0
/* 81454C6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81454C70 | 81 8D AD 10 */	lwz r12, VmImageCtorCallback@sda21(r0)
/* 81454C74 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81454C78 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81454C7C | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 81454C80 | 41 82 00 2C */	beq .L_81454CAC
/* 81454C84 | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 81454C88 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81454C8C | 41 82 00 24 */	beq .L_81454CB0
/* 81454C90 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 81454C94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81454C98 | 41 82 00 18 */	beq .L_81454CB0
/* 81454C9C | 7D 89 03 A6 */	mtctr r12
/* 81454CA0 | 4E 80 04 21 */	bctrl
/* 81454CA4 | 7C 65 1B 78 */	mr r5, r3
/* 81454CA8 | 48 00 00 08 */	b .L_81454CB0
.L_81454CAC:
/* 81454CAC | 38 A0 00 01 */	li r5, 0x1
.L_81454CB0:
/* 81454CB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81454CB4 | 7C A3 2B 78 */	mr r3, r5
/* 81454CB8 | 7C 08 03 A6 */	mtlr r0
/* 81454CBC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81454CC0 | 4E 80 00 20 */	blr
.endfn VmCtor_Image

# .text:0xA718 | 0x81454CC4 | size: 0x10C
.fn VmMethod_write, global
/* 81454CC4 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 81454CC8 | 7C 08 02 A6 */	mflr r0
/* 81454CCC | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 81454CD0 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81454CD4 | 48 1A 47 ED */	bl _savegpr_27
/* 81454CD8 | 7C 7B 1B 78 */	mr r27, r3
/* 81454CDC | 38 80 00 00 */	li r4, 0x0
/* 81454CE0 | 4B FF 79 B1 */	bl CHANSVmGetArg
/* 81454CE4 | 7C 65 1B 78 */	mr r5, r3
/* 81454CE8 | 7F 63 DB 78 */	mr r3, r27
/* 81454CEC | 38 80 00 03 */	li r4, 0x3
/* 81454CF0 | 4B FF 6B ED */	bl CHANSVmConvertObjectType
/* 81454CF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454CF8 | 7C 7B 1B 78 */	mr r27, r3
/* 81454CFC | 41 82 00 B8 */	beq .L_81454DB4
/* 81454D00 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81454D04 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81454D08 | 40 82 00 AC */	bne .L_81454DB4
/* 81454D0C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81454D10 | 3B 80 00 00 */	li r28, 0x0
/* 81454D14 | 3B C0 00 80 */	li r30, 0x80
/* 81454D18 | 3B E0 00 00 */	li r31, 0x0
/* 81454D1C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81454D20 | 54 1D 00 3C */	clrrwi r29, r0, 1
/* 81454D24 | 48 00 00 88 */	b .L_81454DAC
.L_81454D28:
/* 81454D28 | 7C 7C E8 50 */	subf r3, r28, r29
/* 81454D2C | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 81454D30 | 28 03 00 80 */	cmplwi r3, 0x80
/* 81454D34 | 38 00 00 80 */	li r0, 0x80
/* 81454D38 | 40 80 00 08 */	bge .L_81454D40
/* 81454D3C | 7C 60 1B 78 */	mr r0, r3
.L_81454D40:
/* 81454D40 | 54 00 F8 7E */	srwi r0, r0, 1
/* 81454D44 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81454D48 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81454D4C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81454D50 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81454D54 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 81454D58 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81454D5C | 7C A0 E2 14 */	add r5, r0, r28
/* 81454D60 | 48 11 7C B9 */	bl ENCConvertStringUnicodeToSjis
/* 81454D64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454D68 | 7C 64 1B 78 */	mr r4, r3
/* 81454D6C | 40 82 00 28 */	bne .L_81454D94
/* 81454D70 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81454D74 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81454D78 | 7C A4 2B 78 */	mr r4, r5
/* 81454D7C | 38 6D 95 43 */	li r3, lbl_81697583@sda21
/* 81454D80 | 7F E5 01 EE */	stbux r31, r5, r0
/* 81454D84 | 9B E5 00 01 */	stb r31, 0x1(r5)
/* 81454D88 | 4C C6 31 82 */	crclr cr1eq
/* 81454D8C | 48 0D 99 15 */	bl OSReport
/* 81454D90 | 48 00 00 18 */	b .L_81454DA8
.L_81454D94:
/* 81454D94 | 3C 60 81 67 */	lis r3, lbl_8166A07E@ha
/* 81454D98 | 38 63 A0 7E */	addi r3, r3, lbl_8166A07E@l
/* 81454D9C | 4C C6 31 82 */	crclr cr1eq
/* 81454DA0 | 48 0D 99 01 */	bl OSReport
/* 81454DA4 | 48 00 00 10 */	b .L_81454DB4
.L_81454DA8:
/* 81454DA8 | 3B 9C 00 80 */	addi r28, r28, 0x80
.L_81454DAC:
/* 81454DAC | 7C 1C E8 40 */	cmplw r28, r29
/* 81454DB0 | 41 80 FF 78 */	blt .L_81454D28
.L_81454DB4:
/* 81454DB4 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81454DB8 | 38 60 00 01 */	li r3, 0x1
/* 81454DBC | 48 1A 47 51 */	bl _restgpr_27
/* 81454DC0 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 81454DC4 | 7C 08 03 A6 */	mtlr r0
/* 81454DC8 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 81454DCC | 4E 80 00 20 */	blr
.endfn VmMethod_write

# .text:0xA824 | 0x81454DD0 | size: 0x39C
.fn CHANSVmInit, global
/* 81454DD0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81454DD4 | 7C 08 02 A6 */	mflr r0
/* 81454DD8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81454DDC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81454DE0 | 48 1A 46 E5 */	bl _savegpr_28
/* 81454DE4 | 3F E0 81 61 */	lis r31, CHANSVmConstStringObjectUndefined@ha
/* 81454DE8 | 7C 9E 23 78 */	mr r30, r4
/* 81454DEC | 7C BC 2B 78 */	mr r28, r5
/* 81454DF0 | 7C 7D 1B 78 */	mr r29, r3
/* 81454DF4 | 3B FF 6C 78 */	addi r31, r31, CHANSVmConstStringObjectUndefined@l
/* 81454DF8 | 38 80 00 00 */	li r4, 0x0
/* 81454DFC | 38 A0 02 70 */	li r5, 0x270
/* 81454E00 | 4B ED B5 35 */	bl memset
/* 81454E04 | 38 1E 00 1F */	addi r0, r30, 0x1f
/* 81454E08 | 7C 7E E2 14 */	add r3, r30, r28
/* 81454E0C | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81454E10 | 54 63 00 34 */	clrrwi r3, r3, 5
/* 81454E14 | 38 00 08 20 */	li r0, 0x820
/* 81454E18 | 7C 64 18 50 */	subf r3, r4, r3
/* 81454E1C | 90 9D 00 08 */	stw r4, 0x8(r29)
/* 81454E20 | 7C 03 00 40 */	cmplw r3, r0
/* 81454E24 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 81454E28 | 90 1D 00 68 */	stw r0, 0x68(r29)
/* 81454E2C | 40 80 00 0C */	bge .L_81454E38
/* 81454E30 | 38 60 FC 1A */	li r3, -0x3e6
/* 81454E34 | 48 00 03 20 */	b .L_81455154
.L_81454E38:
/* 81454E38 | 39 04 08 20 */	addi r8, r4, 0x820
/* 81454E3C | 38 E3 F7 E0 */	subi r7, r3, 0x820
/* 81454E40 | 7C 08 3A 14 */	add r0, r8, r7
/* 81454E44 | 90 9D 00 64 */	stw r4, 0x64(r29)
/* 81454E48 | 7F A3 EB 78 */	mr r3, r29
/* 81454E4C | 38 80 00 00 */	li r4, 0x0
/* 81454E50 | 91 1D 00 08 */	stw r8, 0x8(r29)
/* 81454E54 | 38 A0 00 00 */	li r5, 0x0
/* 81454E58 | 38 C0 00 00 */	li r6, 0x0
/* 81454E5C | 90 FD 00 0C */	stw r7, 0xc(r29)
/* 81454E60 | 91 1D 00 20 */	stw r8, 0x20(r29)
/* 81454E64 | 90 1D 00 24 */	stw r0, 0x24(r29)
/* 81454E68 | 91 1D 00 28 */	stw r8, 0x28(r29)
/* 81454E6C | 90 1D 00 2C */	stw r0, 0x2c(r29)
/* 81454E70 | 48 00 08 71 */	bl VmPushFuncReturnInfo
/* 81454E74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454E78 | 7C 7E 1B 78 */	mr r30, r3
/* 81454E7C | 40 82 02 C4 */	bne .L_81455140
/* 81454E80 | 3C A0 81 45 */	lis r5, CHANSVm_8144D368@ha
/* 81454E84 | 3C C0 81 45 */	lis r6, CHANSVm_8144D454@ha
/* 81454E88 | 38 A5 D3 68 */	addi r5, r5, CHANSVm_8144D368@l
/* 81454E8C | 7F A3 EB 78 */	mr r3, r29
/* 81454E90 | 7C A7 2B 78 */	mr r7, r5
/* 81454E94 | 38 C6 D4 54 */	addi r6, r6, CHANSVm_8144D454@l
/* 81454E98 | 38 82 8B 40 */	li r4, lbl_81694F40@sda21
/* 81454E9C | 4B FF 79 65 */	bl CHANSVmAddNativeClass2
/* 81454EA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454EA4 | 7C 7C 1B 78 */	mr r28, r3
/* 81454EA8 | 41 82 00 4C */	beq .L_81454EF4
/* 81454EAC | 34 BF 02 14 */	addic. r5, r31, 0x214
/* 81454EB0 | 41 82 00 1C */	beq .L_81454ECC
/* 81454EB4 | 7F A3 EB 78 */	mr r3, r29
/* 81454EB8 | 7F 84 E3 78 */	mr r4, r28
/* 81454EBC | 38 C0 00 01 */	li r6, 0x1
/* 81454EC0 | 4B FF 7D 99 */	bl CHANSVmAddNativePropertyAccessorsList
/* 81454EC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454EC8 | 40 82 00 2C */	bne .L_81454EF4
.L_81454ECC:
/* 81454ECC | 34 BF 02 20 */	addic. r5, r31, 0x220
/* 81454ED0 | 41 82 00 1C */	beq .L_81454EEC
/* 81454ED4 | 7F A3 EB 78 */	mr r3, r29
/* 81454ED8 | 7F 84 E3 78 */	mr r4, r28
/* 81454EDC | 38 C0 00 07 */	li r6, 0x7
/* 81454EE0 | 4B FF 7B 91 */	bl CHANSVmAddNativeMethodList
/* 81454EE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454EE8 | 40 82 00 0C */	bne .L_81454EF4
.L_81454EEC:
/* 81454EEC | 38 00 00 01 */	li r0, 0x1
/* 81454EF0 | 48 00 00 08 */	b .L_81454EF8
.L_81454EF4:
/* 81454EF4 | 38 00 00 00 */	li r0, 0x0
.L_81454EF8:
/* 81454EF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81454EFC | 41 82 00 24 */	beq .L_81454F20
/* 81454F00 | 7F A3 EB 78 */	mr r3, r29
/* 81454F04 | 38 82 8B 40 */	li r4, lbl_81694F40@sda21
/* 81454F08 | 4B FF 78 6D */	bl CHANSVmFindNativeClass
/* 81454F0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454F10 | 41 82 00 10 */	beq .L_81454F20
/* 81454F14 | 90 7D 00 40 */	stw r3, 0x40(r29)
/* 81454F18 | 38 00 00 01 */	li r0, 0x1
/* 81454F1C | 48 00 00 08 */	b .L_81454F24
.L_81454F20:
/* 81454F20 | 38 00 00 00 */	li r0, 0x0
.L_81454F24:
/* 81454F24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81454F28 | 41 82 02 14 */	beq .L_8145513C
/* 81454F2C | 3C A0 81 45 */	lis r5, CHANSVm_8144E4B4@ha
/* 81454F30 | 3C E0 81 45 */	lis r7, CHANSVm_8144E4F4@ha
/* 81454F34 | 7F A3 EB 78 */	mr r3, r29
/* 81454F38 | 38 8D 97 6C */	li r4, lbl_816977AC@sda21
/* 81454F3C | 38 A5 E4 B4 */	addi r5, r5, CHANSVm_8144E4B4@l
/* 81454F40 | 38 E7 E4 F4 */	addi r7, r7, CHANSVm_8144E4F4@l
/* 81454F44 | 38 C0 00 00 */	li r6, 0x0
/* 81454F48 | 4B FF 78 B9 */	bl CHANSVmAddNativeClass2
/* 81454F4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454F50 | 7C 64 1B 78 */	mr r4, r3
/* 81454F54 | 40 82 00 0C */	bne .L_81454F60
/* 81454F58 | 38 00 00 00 */	li r0, 0x0
/* 81454F5C | 48 00 00 1C */	b .L_81454F78
.L_81454F60:
/* 81454F60 | 7F A3 EB 78 */	mr r3, r29
/* 81454F64 | 38 BF 02 68 */	addi r5, r31, 0x268
/* 81454F68 | 38 C0 00 0A */	li r6, 0xa
/* 81454F6C | 4B FF 7B 05 */	bl CHANSVmAddNativeMethodList
/* 81454F70 | 7C 60 00 34 */	cntlzw r0, r3
/* 81454F74 | 54 00 D9 7E */	srwi r0, r0, 5
.L_81454F78:
/* 81454F78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81454F7C | 41 82 01 C0 */	beq .L_8145513C
/* 81454F80 | 38 00 00 08 */	li r0, 0x8
/* 81454F84 | 38 9F 03 18 */	addi r4, r31, 0x318
/* 81454F88 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81454F8C | 38 00 00 12 */	li r0, 0x12
/* 81454F90 | 7F A3 EB 78 */	mr r3, r29
/* 81454F94 | 39 5F 02 B8 */	addi r10, r31, 0x2b8
/* 81454F98 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81454F9C | 38 8D 97 71 */	li r4, lbl_816977B1@sda21
/* 81454FA0 | 38 A0 00 00 */	li r5, 0x0
/* 81454FA4 | 38 C0 00 00 */	li r6, 0x0
/* 81454FA8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81454FAC | 38 E0 00 00 */	li r7, 0x0
/* 81454FB0 | 39 0D 97 77 */	li r8, lbl_816977B7@sda21
/* 81454FB4 | 39 20 00 00 */	li r9, 0x0
/* 81454FB8 | 4B FF 7F 6D */	bl CHANSVmNewBuiltinObject
/* 81454FBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81454FC0 | 41 82 01 7C */	beq .L_8145513C
/* 81454FC4 | 38 00 00 01 */	li r0, 0x1
/* 81454FC8 | 3C A0 81 45 */	lis r5, VmCtor_String@ha
/* 81454FCC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81454FD0 | 38 7F 03 B4 */	addi r3, r31, 0x3b4
/* 81454FD4 | 38 A5 F5 F8 */	addi r5, r5, VmCtor_String@l
/* 81454FD8 | 38 00 00 0C */	li r0, 0xc
/* 81454FDC | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81454FE0 | 7F A3 EB 78 */	mr r3, r29
/* 81454FE4 | 7C A7 2B 78 */	mr r7, r5
/* 81454FE8 | 39 5F 03 A8 */	addi r10, r31, 0x3a8
/* 81454FEC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81454FF0 | 38 82 8B A0 */	li r4, lbl_81694FA0@sda21
/* 81454FF4 | 38 C0 00 00 */	li r6, 0x0
/* 81454FF8 | 39 00 00 00 */	li r8, 0x0
/* 81454FFC | 39 20 00 00 */	li r9, 0x0
/* 81455000 | 4B FF 7F 25 */	bl CHANSVmNewBuiltinObject
/* 81455004 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455008 | 41 82 00 24 */	beq .L_8145502C
/* 8145500C | 7F A3 EB 78 */	mr r3, r29
/* 81455010 | 38 82 8B A0 */	li r4, lbl_81694FA0@sda21
/* 81455014 | 4B FF 77 61 */	bl CHANSVmFindNativeClass
/* 81455018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145501C | 41 82 00 10 */	beq .L_8145502C
/* 81455020 | 90 7D 00 44 */	stw r3, 0x44(r29)
/* 81455024 | 38 00 00 01 */	li r0, 0x1
/* 81455028 | 48 00 00 08 */	b .L_81455030
.L_8145502C:
/* 8145502C | 38 00 00 00 */	li r0, 0x0
.L_81455030:
/* 81455030 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455034 | 41 82 01 08 */	beq .L_8145513C
/* 81455038 | 3C A0 81 45 */	lis r5, VmCtor_Blob@ha
/* 8145503C | 3C C0 81 45 */	lis r6, VmDtor_Blob@ha
/* 81455040 | 7F A3 EB 78 */	mr r3, r29
/* 81455044 | 38 82 8B A7 */	li r4, lbl_81694FA7@sda21
/* 81455048 | 38 A5 0D CC */	addi r5, r5, VmCtor_Blob@l
/* 8145504C | 38 C6 0E 74 */	addi r6, r6, VmDtor_Blob@l
/* 81455050 | 38 E0 00 00 */	li r7, 0x0
/* 81455054 | 4B FF 77 AD */	bl CHANSVmAddNativeClass2
/* 81455058 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145505C | 7C 7C 1B 78 */	mr r28, r3
/* 81455060 | 40 82 00 0C */	bne .L_8145506C
/* 81455064 | 38 00 00 00 */	li r0, 0x0
/* 81455068 | 48 00 00 3C */	b .L_814550A4
.L_8145506C:
/* 8145506C | 7F A3 EB 78 */	mr r3, r29
/* 81455070 | 7F 84 E3 78 */	mr r4, r28
/* 81455074 | 38 BF 04 14 */	addi r5, r31, 0x414
/* 81455078 | 38 C0 00 02 */	li r6, 0x2
/* 8145507C | 4B FF 7B DD */	bl CHANSVmAddNativePropertyAccessorsList
/* 81455080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455084 | 40 82 00 18 */	bne .L_8145509C
/* 81455088 | 7F A3 EB 78 */	mr r3, r29
/* 8145508C | 7F 84 E3 78 */	mr r4, r28
/* 81455090 | 38 BF 04 2C */	addi r5, r31, 0x42c
/* 81455094 | 38 C0 00 29 */	li r6, 0x29
/* 81455098 | 4B FF 79 D9 */	bl CHANSVmAddNativeMethodList
.L_8145509C:
/* 8145509C | 7C 60 00 34 */	cntlzw r0, r3
/* 814550A0 | 54 00 D9 7E */	srwi r0, r0, 5
.L_814550A4:
/* 814550A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814550A8 | 41 82 00 94 */	beq .L_8145513C
/* 814550AC | 3B 80 00 00 */	li r28, 0x0
/* 814550B0 | 3C C0 81 45 */	lis r6, VmCtor_Image@ha
/* 814550B4 | 93 8D AD 14 */	stw r28, lbl_81698D54@sda21(r0)
/* 814550B8 | 38 00 00 03 */	li r0, 0x3
/* 814550BC | 7F A3 EB 78 */	mr r3, r29
/* 814550C0 | 38 C6 4C 60 */	addi r6, r6, VmCtor_Image@l
/* 814550C4 | 93 8D AD 10 */	stw r28, VmImageCtorCallback@sda21(r0)
/* 814550C8 | 39 5F 05 74 */	addi r10, r31, 0x574
/* 814550CC | 38 8D 97 4C */	li r4, lbl_8169778C@sda21
/* 814550D0 | 38 A0 00 00 */	li r5, 0x0
/* 814550D4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814550D8 | 38 E0 00 00 */	li r7, 0x0
/* 814550DC | 39 00 00 00 */	li r8, 0x0
/* 814550E0 | 39 20 00 00 */	li r9, 0x0
/* 814550E4 | 93 81 00 0C */	stw r28, 0xc(r1)
/* 814550E8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814550EC | 4B FF 7E 39 */	bl CHANSVmNewBuiltinObject
/* 814550F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814550F4 | 41 82 00 48 */	beq .L_8145513C
/* 814550F8 | 93 81 00 08 */	stw r28, 0x8(r1)
/* 814550FC | 38 62 8B AC */	li r3, lbl_81694FAC@sda21
/* 81455100 | 3D 00 81 67 */	lis r8, lbl_8166A0A7@ha
/* 81455104 | 38 00 00 01 */	li r0, 0x1
/* 81455108 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8145510C | 7F A3 EB 78 */	mr r3, r29
/* 81455110 | 39 08 A0 A7 */	addi r8, r8, lbl_8166A0A7@l
/* 81455114 | 38 8D 97 7C */	li r4, lbl_816977BC@sda21
/* 81455118 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8145511C | 38 A0 00 00 */	li r5, 0x0
/* 81455120 | 38 C0 00 00 */	li r6, 0x0
/* 81455124 | 38 E0 00 00 */	li r7, 0x0
/* 81455128 | 39 20 00 00 */	li r9, 0x0
/* 8145512C | 39 40 00 00 */	li r10, 0x0
/* 81455130 | 4B FF 7D F5 */	bl CHANSVmNewBuiltinObject
/* 81455134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455138 | 40 82 00 08 */	bne .L_81455140
.L_8145513C:
/* 8145513C | 3B C0 FC 26 */	li r30, -0x3da
.L_81455140:
/* 81455140 | 38 7D 00 50 */	addi r3, r29, 0x50
/* 81455144 | 38 80 00 00 */	li r4, 0x0
/* 81455148 | 38 A0 00 10 */	li r5, 0x10
/* 8145514C | 4B ED B1 E9 */	bl memset
/* 81455150 | 7F C3 F3 78 */	mr r3, r30
.L_81455154:
/* 81455154 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81455158 | 48 1A 43 B9 */	bl _restgpr_28
/* 8145515C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81455160 | 7C 08 03 A6 */	mtlr r0
/* 81455164 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81455168 | 4E 80 00 20 */	blr
.endfn CHANSVmInit

# .text:0xABC0 | 0x8145516C | size: 0x2C
.fn CHANSVmGetFreeExeBufp, global
/* 8145516C | 88 03 00 4C */	lbz r0, 0x4c(r3)
/* 81455170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455174 | 40 82 00 14 */	bne .L_81455188
/* 81455178 | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 8145517C | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81455180 | 7C 04 00 40 */	cmplw r4, r0
/* 81455184 | 41 80 00 0C */	blt .L_81455190
.L_81455188:
/* 81455188 | 38 60 00 00 */	li r3, 0x0
/* 8145518C | 4E 80 00 20 */	blr
.L_81455190:
/* 81455190 | 7C 83 23 78 */	mr r3, r4
/* 81455194 | 4E 80 00 20 */	blr
.endfn CHANSVmGetFreeExeBufp

# .text:0xABEC | 0x81455198 | size: 0x28
.fn CHANSVmGetFreeExeSize, global
/* 81455198 | 88 03 00 4C */	lbz r0, 0x4c(r3)
/* 8145519C | 80 83 00 28 */	lwz r4, 0x28(r3)
/* 814551A0 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 814551A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814551A8 | 7C 64 18 50 */	subf r3, r4, r3
/* 814551AC | 40 82 00 0C */	bne .L_814551B8
/* 814551B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814551B4 | 4C 80 00 20 */	bgelr
.L_814551B8:
/* 814551B8 | 38 60 00 00 */	li r3, 0x0
/* 814551BC | 4E 80 00 20 */	blr
.endfn CHANSVmGetFreeExeSize

# .text:0xAC14 | 0x814551C0 | size: 0x3F8
.fn CHANSVmAddExe, global
/* 814551C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814551C4 | 7C 08 02 A6 */	mflr r0
/* 814551C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814551CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814551D0 | 48 1A 42 F1 */	bl _savegpr_27
/* 814551D4 | 83 63 00 28 */	lwz r27, 0x28(r3)
/* 814551D8 | 7C 7E 1B 78 */	mr r30, r3
/* 814551DC | 7C BD 2B 78 */	mr r29, r5
/* 814551E0 | 38 8D 97 84 */	li r4, lbl_816977C4@sda21
/* 814551E4 | 83 9B 00 08 */	lwz r28, 0x8(r27)
/* 814551E8 | 7F 63 DB 78 */	mr r3, r27
/* 814551EC | 38 A0 00 04 */	li r5, 0x4
/* 814551F0 | 48 1A 8F E5 */	bl memcmp
/* 814551F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814551F8 | 40 82 00 14 */	bne .L_8145520C
/* 814551FC | 28 1C 00 80 */	cmplwi r28, 0x80
/* 81455200 | 41 80 00 0C */	blt .L_8145520C
/* 81455204 | 57 80 06 FF */	clrlwi. r0, r28, 27
/* 81455208 | 41 82 00 0C */	beq .L_81455214
.L_8145520C:
/* 8145520C | 38 60 FC 1B */	li r3, -0x3e5
/* 81455210 | 48 00 03 90 */	b .L_814555A0
.L_81455214:
/* 81455214 | 88 1B 00 0C */	lbz r0, 0xc(r27)
/* 81455218 | 7C 00 E8 40 */	cmplw r0, r29
/* 8145521C | 41 82 00 0C */	beq .L_81455228
/* 81455220 | 38 60 FC 63 */	li r3, -0x39d
/* 81455224 | 48 00 03 7C */	b .L_814555A0
.L_81455228:
/* 81455228 | 88 1B 00 04 */	lbz r0, 0x4(r27)
/* 8145522C | 28 00 00 03 */	cmplwi r0, 0x3
/* 81455230 | 41 82 00 0C */	beq .L_8145523C
/* 81455234 | 38 60 FC 56 */	li r3, -0x3aa
/* 81455238 | 48 00 03 68 */	b .L_814555A0
.L_8145523C:
/* 8145523C | 7F C3 F3 78 */	mr r3, r30
/* 81455240 | 4B FF FF 59 */	bl CHANSVmGetFreeExeSize
/* 81455244 | 7C 03 E0 40 */	cmplw r3, r28
/* 81455248 | 40 80 00 0C */	bge .L_81455254
/* 8145524C | 38 60 FC 1A */	li r3, -0x3e6
/* 81455250 | 48 00 03 50 */	b .L_814555A0
.L_81455254:
/* 81455254 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 81455258 | 38 60 00 00 */	li r3, 0x0
/* 8145525C | 38 1C FF E0 */	subi r0, r28, 0x20
/* 81455260 | 3B FB 00 20 */	addi r31, r27, 0x20
/* 81455264 | 7C 84 E2 14 */	add r4, r4, r28
/* 81455268 | 90 9E 00 28 */	stw r4, 0x28(r30)
/* 8145526C | 90 7B 00 20 */	stw r3, 0x20(r27)
/* 81455270 | 90 1B 00 24 */	stw r0, 0x24(r27)
/* 81455274 | 93 7B 00 28 */	stw r27, 0x28(r27)
/* 81455278 | 80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8145527C | 28 00 00 60 */	cmplwi r0, 0x60
/* 81455280 | 41 80 FF 8C */	blt .L_8145520C
/* 81455284 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81455288 | 7C 03 00 40 */	cmplw r3, r0
/* 8145528C | 41 80 FF 80 */	blt .L_8145520C
/* 81455290 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81455294 | 7C 03 20 40 */	cmplw r3, r4
/* 81455298 | 41 80 FF 74 */	blt .L_8145520C
/* 8145529C | 7C C0 22 14 */	add r6, r0, r4
/* 814552A0 | 7C 03 30 40 */	cmplw r3, r6
/* 814552A4 | 41 80 FF 68 */	blt .L_8145520C
/* 814552A8 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814552AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814552B0 | 41 82 00 28 */	beq .L_814552D8
/* 814552B4 | 80 BF 00 24 */	lwz r5, 0x24(r31)
/* 814552B8 | 7C 05 30 40 */	cmplw r5, r6
/* 814552BC | 41 80 FF 50 */	blt .L_8145520C
/* 814552C0 | 7C 03 28 40 */	cmplw r3, r5
/* 814552C4 | 41 80 FF 48 */	blt .L_8145520C
/* 814552C8 | 54 00 18 38 */	slwi r0, r0, 3
/* 814552CC | 7C C5 02 14 */	add r6, r5, r0
/* 814552D0 | 7C 03 30 40 */	cmplw r3, r6
/* 814552D4 | 41 80 FF 38 */	blt .L_8145520C
.L_814552D8:
/* 814552D8 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 814552DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814552E0 | 41 82 00 28 */	beq .L_81455308
/* 814552E4 | 80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 814552E8 | 7C 05 30 40 */	cmplw r5, r6
/* 814552EC | 41 80 FF 20 */	blt .L_8145520C
/* 814552F0 | 7C 03 28 40 */	cmplw r3, r5
/* 814552F4 | 41 80 FF 18 */	blt .L_8145520C
/* 814552F8 | 54 00 10 3A */	slwi r0, r0, 2
/* 814552FC | 7C C5 02 14 */	add r6, r5, r0
/* 81455300 | 7C 03 30 40 */	cmplw r3, r6
/* 81455304 | 41 80 FF 08 */	blt .L_8145520C
.L_81455308:
/* 81455308 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8145530C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455310 | 41 82 00 28 */	beq .L_81455338
/* 81455314 | 80 BF 00 34 */	lwz r5, 0x34(r31)
/* 81455318 | 7C 05 30 40 */	cmplw r5, r6
/* 8145531C | 41 80 FE F0 */	blt .L_8145520C
/* 81455320 | 7C 03 28 40 */	cmplw r3, r5
/* 81455324 | 41 80 FE E8 */	blt .L_8145520C
/* 81455328 | 54 00 08 3C */	slwi r0, r0, 1
/* 8145532C | 7C C5 02 14 */	add r6, r5, r0
/* 81455330 | 7C 03 30 40 */	cmplw r3, r6
/* 81455334 | 41 80 FE D8 */	blt .L_8145520C
.L_81455338:
/* 81455338 | 80 BF 00 44 */	lwz r5, 0x44(r31)
/* 8145533C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81455340 | 41 82 00 2C */	beq .L_8145536C
/* 81455344 | 7C 05 30 40 */	cmplw r5, r6
/* 81455348 | 38 04 00 FF */	addi r0, r4, 0xff
/* 8145534C | 54 00 C2 3E */	srwi r0, r0, 8
/* 81455350 | 41 80 FE BC */	blt .L_8145520C
/* 81455354 | 7C 03 28 40 */	cmplw r3, r5
/* 81455358 | 41 80 FE B4 */	blt .L_8145520C
/* 8145535C | 1C 00 00 24 */	mulli r0, r0, 0x24
/* 81455360 | 7C 05 02 14 */	add r0, r5, r0
/* 81455364 | 7C 03 00 40 */	cmplw r3, r0
/* 81455368 | 41 80 FE A4 */	blt .L_8145520C
.L_8145536C:
/* 8145536C | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81455370 | 38 80 00 01 */	li r4, 0x1
/* 81455374 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455378 | 40 82 00 18 */	bne .L_81455390
/* 8145537C | 93 FE 00 18 */	stw r31, 0x18(r30)
/* 81455380 | 48 00 00 20 */	b .L_814553A0
/* 81455384 | 48 00 00 0C */	b .L_81455390
.L_81455388:
/* 81455388 | 7C 03 03 78 */	mr r3, r0
/* 8145538C | 38 84 00 01 */	addi r4, r4, 0x1
.L_81455390:
/* 81455390 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81455394 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455398 | 40 82 FF F0 */	bne .L_81455388
/* 8145539C | 93 E3 00 00 */	stw r31, 0x0(r3)
.L_814553A0:
/* 814553A0 | 90 9E 00 10 */	stw r4, 0x10(r30)
/* 814553A4 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 814553A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814553AC | 41 82 00 1C */	beq .L_814553C8
/* 814553B0 | 54 04 20 36 */	slwi r4, r0, 4
/* 814553B4 | 7F C3 F3 78 */	mr r3, r30
/* 814553B8 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 814553BC | 54 04 00 34 */	clrrwi r4, r0, 5
/* 814553C0 | 4B FF 55 2D */	bl CHANSVmAllocFromHeap
/* 814553C4 | 90 7F 00 18 */	stw r3, 0x18(r31)
.L_814553C8:
/* 814553C8 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 814553CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814553D0 | 41 82 00 1C */	beq .L_814553EC
/* 814553D4 | 54 04 10 3A */	slwi r4, r0, 2
/* 814553D8 | 7F C3 F3 78 */	mr r3, r30
/* 814553DC | 38 04 00 1F */	addi r0, r4, 0x1f
/* 814553E0 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 814553E4 | 4B FF 55 09 */	bl CHANSVmAllocFromHeap
/* 814553E8 | 90 7F 00 38 */	stw r3, 0x38(r31)
.L_814553EC:
/* 814553EC | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 814553F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814553F4 | 41 82 00 1C */	beq .L_81455410
/* 814553F8 | 54 04 20 36 */	slwi r4, r0, 4
/* 814553FC | 7F C3 F3 78 */	mr r3, r30
/* 81455400 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 81455404 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81455408 | 4B FF 54 E5 */	bl CHANSVmAllocFromHeap
/* 8145540C | 90 7F 00 3C */	stw r3, 0x3c(r31)
.L_81455410:
/* 81455410 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81455414 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455418 | 41 82 00 10 */	beq .L_81455428
/* 8145541C | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81455420 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455424 | 41 82 00 34 */	beq .L_81455458
.L_81455428:
/* 81455428 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8145542C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455430 | 41 82 00 10 */	beq .L_81455440
/* 81455434 | 80 1F 00 38 */	lwz r0, 0x38(r31)
/* 81455438 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145543C | 41 82 00 1C */	beq .L_81455458
.L_81455440:
/* 81455440 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 81455444 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455448 | 41 82 00 18 */	beq .L_81455460
/* 8145544C | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 81455450 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455454 | 40 82 00 0C */	bne .L_81455460
.L_81455458:
/* 81455458 | 38 60 FC 1A */	li r3, -0x3e6
/* 8145545C | 48 00 01 44 */	b .L_814555A0
.L_81455460:
/* 81455460 | 3B 60 00 00 */	li r27, 0x0
/* 81455464 | 3B A0 00 00 */	li r29, 0x0
/* 81455468 | 48 00 00 20 */	b .L_81455488
.L_8145546C:
/* 8145546C | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81455470 | 38 80 00 00 */	li r4, 0x0
/* 81455474 | 38 A0 00 10 */	li r5, 0x10
/* 81455478 | 7C 60 EA 14 */	add r3, r0, r29
/* 8145547C | 4B ED AE B9 */	bl memset
/* 81455480 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81455484 | 3B BD 00 10 */	addi r29, r29, 0x10
.L_81455488:
/* 81455488 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8145548C | 7C 1B 00 40 */	cmplw r27, r0
/* 81455490 | 41 80 FF DC */	blt .L_8145546C
/* 81455494 | 7F E3 FB 78 */	mr r3, r31
/* 81455498 | 48 00 01 39 */	bl CHANSConvertModuleOfsToPtr
/* 8145549C | 83 9F 00 2C */	lwz r28, 0x2c(r31)
/* 814554A0 | 3B 60 00 01 */	li r27, 0x1
/* 814554A4 | 3B A0 00 04 */	li r29, 0x4
/* 814554A8 | 48 00 00 5C */	b .L_81455504
.L_814554AC:
/* 814554AC | 7C 7C E8 2E */	lwzx r3, r28, r29
/* 814554B0 | 54 65 46 3F */	srwi. r5, r3, 24
/* 814554B4 | 41 82 00 40 */	beq .L_814554F4
/* 814554B8 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814554BC | 54 64 02 3E */	clrlwi r4, r3, 8
/* 814554C0 | 7C 65 E2 14 */	add r3, r5, r28
/* 814554C4 | 7C 64 1A 14 */	add r3, r4, r3
/* 814554C8 | 7C 1F 02 14 */	add r0, r31, r0
/* 814554CC | 7C 03 00 40 */	cmplw r3, r0
/* 814554D0 | 41 81 00 24 */	bgt .L_814554F4
/* 814554D4 | 7F C3 F3 78 */	mr r3, r30
/* 814554D8 | 7C 9C 22 14 */	add r4, r28, r4
/* 814554DC | 4B FF 74 01 */	bl VmAddNativeMethodName
/* 814554E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814554E4 | 41 82 00 10 */	beq .L_814554F4
/* 814554E8 | 80 9F 00 38 */	lwz r4, 0x38(r31)
/* 814554EC | 7C 64 E9 2E */	stwx r3, r4, r29
/* 814554F0 | 48 00 00 0C */	b .L_814554FC
.L_814554F4:
/* 814554F4 | 38 00 00 00 */	li r0, 0x0
/* 814554F8 | 48 00 00 1C */	b .L_81455514
.L_814554FC:
/* 814554FC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81455500 | 3B BD 00 04 */	addi r29, r29, 0x4
.L_81455504:
/* 81455504 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 81455508 | 7C 1B 00 40 */	cmplw r27, r0
/* 8145550C | 41 80 FF A0 */	blt .L_814554AC
/* 81455510 | 38 00 00 01 */	li r0, 0x1
.L_81455514:
/* 81455514 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455518 | 41 82 FC F4 */	beq .L_8145520C
/* 8145551C | 80 DF 00 34 */	lwz r6, 0x34(r31)
/* 81455520 | 38 E0 00 00 */	li r7, 0x0
/* 81455524 | 38 60 00 00 */	li r3, 0x0
/* 81455528 | 48 00 00 5C */	b .L_81455584
.L_8145552C:
/* 8145552C | 88 06 00 00 */	lbz r0, 0x0(r6)
/* 81455530 | 88 A6 00 01 */	lbz r5, 0x1(r6)
/* 81455534 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 81455538 | 50 05 44 2E */	rlwimi r5, r0, 8, 16, 23
/* 8145553C | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 81455540 | 40 82 00 34 */	bne .L_81455574
/* 81455544 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81455548 | 7C 86 2A 14 */	add r4, r6, r5
/* 8145554C | 7C 1F 02 14 */	add r0, r31, r0
/* 81455550 | 7C 04 00 40 */	cmplw r4, r0
/* 81455554 | 41 81 00 20 */	bgt .L_81455574
/* 81455558 | 80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 8145555C | 7C C4 19 2E */	stwx r6, r4, r3
/* 81455560 | 7C C6 2A 14 */	add r6, r6, r5
/* 81455564 | 80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 81455568 | 7C 80 1A 14 */	add r4, r0, r3
/* 8145556C | 90 A4 00 04 */	stw r5, 0x4(r4)
/* 81455570 | 48 00 00 0C */	b .L_8145557C
.L_81455574:
/* 81455574 | 38 00 00 00 */	li r0, 0x0
/* 81455578 | 48 00 00 1C */	b .L_81455594
.L_8145557C:
/* 8145557C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81455580 | 38 63 00 10 */	addi r3, r3, 0x10
.L_81455584:
/* 81455584 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 81455588 | 7C 07 00 40 */	cmplw r7, r0
/* 8145558C | 41 80 FF A0 */	blt .L_8145552C
/* 81455590 | 38 00 00 01 */	li r0, 0x1
.L_81455594:
/* 81455594 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455598 | 41 82 FC 74 */	beq .L_8145520C
/* 8145559C | 38 60 00 00 */	li r3, 0x0
.L_814555A0:
/* 814555A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814555A4 | 48 1A 3F 69 */	bl _restgpr_27
/* 814555A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814555AC | 7C 08 03 A6 */	mtlr r0
/* 814555B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814555B4 | 4E 80 00 20 */	blr
.endfn CHANSVmAddExe

# .text:0xB00C | 0x814555B8 | size: 0x18
.fn VmOffsU32ToPtr, local
/* 814555B8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814555BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814555C0 | 4D 82 00 20 */	beqlr
/* 814555C4 | 7C 00 22 14 */	add r0, r0, r4
/* 814555C8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814555CC | 4E 80 00 20 */	blr
.endfn VmOffsU32ToPtr

# .text:0xB024 | 0x814555D0 | size: 0x84
.fn CHANSConvertModuleOfsToPtr, global
/* 814555D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814555D4 | 7C 08 02 A6 */	mflr r0
/* 814555D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814555DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814555E0 | 7C 7F 1B 78 */	mr r31, r3
/* 814555E4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814555E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814555EC | 41 82 00 0C */	beq .L_814555F8
/* 814555F0 | 7C 00 1A 14 */	add r0, r0, r3
/* 814555F4 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814555F8:
/* 814555F8 | 7F E4 FB 78 */	mr r4, r31
/* 814555FC | 38 63 00 10 */	addi r3, r3, 0x10
/* 81455600 | 4B FF FF B9 */	bl VmOffsU32ToPtr
/* 81455604 | 7F E4 FB 78 */	mr r4, r31
/* 81455608 | 38 7F 00 24 */	addi r3, r31, 0x24
/* 8145560C | 4B FF FF AD */	bl VmOffsU32ToPtr
/* 81455610 | 7F E4 FB 78 */	mr r4, r31
/* 81455614 | 38 7F 00 2C */	addi r3, r31, 0x2c
/* 81455618 | 4B FF FF A1 */	bl VmOffsU32ToPtr
/* 8145561C | 7F E4 FB 78 */	mr r4, r31
/* 81455620 | 38 7F 00 34 */	addi r3, r31, 0x34
/* 81455624 | 4B FF FF 95 */	bl VmOffsU32ToPtr
/* 81455628 | 7F E4 FB 78 */	mr r4, r31
/* 8145562C | 38 7F 00 40 */	addi r3, r31, 0x40
/* 81455630 | 4B FF FF 89 */	bl VmOffsU32ToPtr
/* 81455634 | 7F E4 FB 78 */	mr r4, r31
/* 81455638 | 38 7F 00 44 */	addi r3, r31, 0x44
/* 8145563C | 4B FF FF 7D */	bl VmOffsU32ToPtr
/* 81455640 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81455644 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81455648 | 7C 08 03 A6 */	mtlr r0
/* 8145564C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81455650 | 4E 80 00 20 */	blr
.endfn CHANSConvertModuleOfsToPtr

# .text:0xB0A8 | 0x81455654 | size: 0x8C
.fn CHANSVm_81455654, global
/* 81455654 | 80 C3 00 60 */	lwz r6, 0x60(r3)
/* 81455658 | 38 60 00 00 */	li r3, 0x0
/* 8145565C | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 81455660 | 80 05 00 14 */	lwz r0, 0x14(r5)
/* 81455664 | 7C 04 00 40 */	cmplw r4, r0
/* 81455668 | 40 80 00 24 */	bge .L_8145568C
/* 8145566C | 80 65 00 18 */	lwz r3, 0x18(r5)
/* 81455670 | 54 80 20 36 */	slwi r0, r4, 4
/* 81455674 | 7C 63 02 14 */	add r3, r3, r0
/* 81455678 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 8145567C | 28 00 00 06 */	cmplwi r0, 0x6
/* 81455680 | 4C 82 00 20 */	bnelr
/* 81455684 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81455688 | 4E 80 00 20 */	blr
.L_8145568C:
/* 8145568C | A0 06 00 18 */	lhz r0, 0x18(r6)
/* 81455690 | 7C 80 20 51 */	subf. r4, r0, r4
/* 81455694 | 4D 80 00 20 */	bltlr
/* 81455698 | 88 06 00 1A */	lbz r0, 0x1a(r6)
/* 8145569C | 7C 04 00 00 */	cmpw r4, r0
/* 814556A0 | 41 80 00 28 */	blt .L_814556C8
/* 814556A4 | A0 66 00 14 */	lhz r3, 0x14(r6)
/* 814556A8 | 7C 80 20 50 */	subf r4, r0, r4
/* 814556AC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814556B0 | 7C 04 00 51 */	subf. r0, r4, r0
/* 814556B4 | 41 80 00 24 */	blt .L_814556D8
/* 814556B8 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814556BC | 54 00 20 36 */	slwi r0, r0, 4
/* 814556C0 | 7C 63 02 14 */	add r3, r3, r0
/* 814556C4 | 4E 80 00 20 */	blr
.L_814556C8:
/* 814556C8 | 54 80 20 36 */	slwi r0, r4, 4
/* 814556CC | 7C 66 02 14 */	add r3, r6, r0
/* 814556D0 | 38 63 00 20 */	addi r3, r3, 0x20
/* 814556D4 | 4E 80 00 20 */	blr
.L_814556D8:
/* 814556D8 | 38 60 00 00 */	li r3, 0x0
/* 814556DC | 4E 80 00 20 */	blr
.endfn CHANSVm_81455654

# .text:0xB134 | 0x814556E0 | size: 0x1AC
.fn VmPushFuncReturnInfo, local
/* 814556E0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814556E4 | 7C 08 02 A6 */	mflr r0
/* 814556E8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814556EC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814556F0 | 48 1A 3D C5 */	bl _savegpr_24
/* 814556F4 | 80 E3 00 60 */	lwz r7, 0x60(r3)
/* 814556F8 | 7C 79 1B 78 */	mr r25, r3
/* 814556FC | 7C 9A 23 78 */	mr r26, r4
/* 81455700 | 7C BB 2B 78 */	mr r27, r5
/* 81455704 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81455708 | 7C DC 33 78 */	mr r28, r6
/* 8145570C | 3B C0 FC 3E */	li r30, -0x3c2
/* 81455710 | 41 82 00 18 */	beq .L_81455728
/* 81455714 | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 81455718 | 7C 00 20 40 */	cmplw r0, r4
/* 8145571C | 40 80 00 0C */	bge .L_81455728
/* 81455720 | 38 60 FC 3E */	li r3, -0x3c2
/* 81455724 | 48 00 01 50 */	b .L_81455874
.L_81455728:
/* 81455728 | 28 06 00 FF */	cmplwi r6, 0xff
/* 8145572C | 41 81 01 44 */	bgt .L_81455870
/* 81455730 | 83 A3 00 2C */	lwz r29, 0x2c(r3)
/* 81455734 | 3B E0 FF FF */	li r31, -0x1
/* 81455738 | 48 00 00 54 */	b .L_8145578C
.L_8145573C:
/* 8145573C | 80 19 00 28 */	lwz r0, 0x28(r25)
/* 81455740 | 3B BD FF F0 */	subi r29, r29, 0x10
/* 81455744 | 7C 00 E8 40 */	cmplw r0, r29
/* 81455748 | 40 81 00 0C */	ble .L_81455754
/* 8145574C | 38 60 FC 1A */	li r3, -0x3e6
/* 81455750 | 48 00 01 24 */	b .L_81455874
.L_81455754:
/* 81455754 | 7F A3 EB 78 */	mr r3, r29
/* 81455758 | 38 80 00 00 */	li r4, 0x0
/* 8145575C | 38 A0 00 10 */	li r5, 0x10
/* 81455760 | 4B ED AB D5 */	bl memset
/* 81455764 | 80 99 00 60 */	lwz r4, 0x60(r25)
/* 81455768 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8145576C | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 81455770 | 7C 03 F8 40 */	cmplw r3, r31
/* 81455774 | 40 80 00 10 */	bge .L_81455784
/* 81455778 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8145577C | 90 04 00 0C */	stw r0, 0xc(r4)
/* 81455780 | 48 00 00 0C */	b .L_8145578C
.L_81455784:
/* 81455784 | 38 60 FC 3E */	li r3, -0x3c2
/* 81455788 | 48 00 00 EC */	b .L_81455874
.L_8145578C:
/* 8145578C | 7C 1A D8 40 */	cmplw r26, r27
/* 81455790 | 41 80 FF AC */	blt .L_8145573C
/* 81455794 | 93 B9 00 2C */	stw r29, 0x2c(r25)
/* 81455798 | 7F 23 CB 78 */	mr r3, r25
/* 8145579C | 4B FF 50 85 */	bl VmUpdateSmallestFreeHeapSize
/* 814557A0 | 57 80 20 36 */	slwi r0, r28, 4
/* 814557A4 | 3B E0 00 00 */	li r31, 0x0
/* 814557A8 | 37 00 00 20 */	addic. r24, r0, 0x20
/* 814557AC | 41 82 00 40 */	beq .L_814557EC
/* 814557B0 | 57 00 07 7F */	clrlwi. r0, r24, 29
/* 814557B4 | 40 82 00 38 */	bne .L_814557EC
/* 814557B8 | 80 19 00 28 */	lwz r0, 0x28(r25)
/* 814557BC | 80 79 00 2C */	lwz r3, 0x2c(r25)
/* 814557C0 | 7C 00 18 50 */	subf r0, r0, r3
/* 814557C4 | 7C 00 C0 40 */	cmplw r0, r24
/* 814557C8 | 41 80 00 24 */	blt .L_814557EC
/* 814557CC | 7F F8 18 50 */	subf r31, r24, r3
/* 814557D0 | 7F 23 CB 78 */	mr r3, r25
/* 814557D4 | 93 F9 00 2C */	stw r31, 0x2c(r25)
/* 814557D8 | 4B FF 50 49 */	bl VmUpdateSmallestFreeHeapSize
/* 814557DC | 7F E3 FB 78 */	mr r3, r31
/* 814557E0 | 7F 05 C3 78 */	mr r5, r24
/* 814557E4 | 38 80 00 00 */	li r4, 0x0
/* 814557E8 | 4B ED AB 4D */	bl memset
.L_814557EC:
/* 814557EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814557F0 | 41 82 00 80 */	beq .L_81455870
/* 814557F4 | 80 79 00 60 */	lwz r3, 0x60(r25)
/* 814557F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814557FC | 41 82 00 20 */	beq .L_8145581C
/* 81455800 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81455804 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 81455808 | 80 79 00 60 */	lwz r3, 0x60(r25)
/* 8145580C | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81455810 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81455814 | 80 19 00 60 */	lwz r0, 0x60(r25)
/* 81455818 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8145581C:
/* 8145581C | 93 F9 00 60 */	stw r31, 0x60(r25)
/* 81455820 | 7C 1C DA 14 */	add r0, r28, r27
/* 81455824 | 20 00 20 00 */	subfic r0, r0, 0x2000
/* 81455828 | 3B 00 00 00 */	li r24, 0x0
/* 8145582C | 93 BF 00 08 */	stw r29, 0x8(r31)
/* 81455830 | 3B 20 00 00 */	li r25, 0x0
/* 81455834 | B3 5F 00 14 */	sth r26, 0x14(r31)
/* 81455838 | B3 7F 00 16 */	sth r27, 0x16(r31)
/* 8145583C | 9B 9F 00 1A */	stb r28, 0x1a(r31)
/* 81455840 | B0 1F 00 18 */	sth r0, 0x18(r31)
/* 81455844 | 48 00 00 20 */	b .L_81455864
.L_81455848:
/* 81455848 | 7C 7F CA 14 */	add r3, r31, r25
/* 8145584C | 38 80 00 00 */	li r4, 0x0
/* 81455850 | 38 63 00 20 */	addi r3, r3, 0x20
/* 81455854 | 38 A0 00 10 */	li r5, 0x10
/* 81455858 | 4B ED AA DD */	bl memset
/* 8145585C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81455860 | 3B 39 00 10 */	addi r25, r25, 0x10
.L_81455864:
/* 81455864 | 7C 18 E0 40 */	cmplw r24, r28
/* 81455868 | 41 80 FF E0 */	blt .L_81455848
/* 8145586C | 3B C0 00 00 */	li r30, 0x0
.L_81455870:
/* 81455870 | 7F C3 F3 78 */	mr r3, r30
.L_81455874:
/* 81455874 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81455878 | 48 1A 3C 89 */	bl _restgpr_24
/* 8145587C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81455880 | 7C 08 03 A6 */	mtlr r0
/* 81455884 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81455888 | 4E 80 00 20 */	blr
.endfn VmPushFuncReturnInfo

# .text:0xB2E0 | 0x8145588C | size: 0x1D4
.fn VmReturnWithValue, local
/* 8145588C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81455890 | 7C 08 02 A6 */	mflr r0
/* 81455894 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81455898 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145589C | 48 1A 3C 25 */	bl _savegpr_27
/* 814558A0 | 7C 7F 1B 78 */	mr r31, r3
/* 814558A4 | 7C 9B 23 78 */	mr r27, r4
/* 814558A8 | 3B 80 00 00 */	li r28, 0x0
/* 814558AC | 3B A0 00 00 */	li r29, 0x0
/* 814558B0 | 3B C0 00 00 */	li r30, 0x0
/* 814558B4 | 48 00 00 28 */	b .L_814558DC
.L_814558B8:
/* 814558B8 | 7C 83 F2 14 */	add r4, r3, r30
/* 814558BC | 7F E3 FB 78 */	mr r3, r31
/* 814558C0 | 38 84 00 20 */	addi r4, r4, 0x20
/* 814558C4 | 4B FF 52 91 */	bl CHANSVmDeleteObject
/* 814558C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814558CC | 41 82 00 08 */	beq .L_814558D4
/* 814558D0 | 48 00 01 78 */	b .L_81455A48
.L_814558D4:
/* 814558D4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814558D8 | 3B DE 00 10 */	addi r30, r30, 0x10
.L_814558DC:
/* 814558DC | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 814558E0 | 88 03 00 1A */	lbz r0, 0x1a(r3)
/* 814558E4 | 7C 1D 00 40 */	cmplw r29, r0
/* 814558E8 | 41 80 FF D0 */	blt .L_814558B8
/* 814558EC | 48 00 00 1C */	b .L_81455908
.L_814558F0:
/* 814558F0 | 7F E3 FB 78 */	mr r3, r31
/* 814558F4 | 38 80 00 00 */	li r4, 0x0
/* 814558F8 | 4B FF 56 81 */	bl VmPopObject
/* 814558FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455900 | 41 82 00 08 */	beq .L_81455908
/* 81455904 | 48 00 01 44 */	b .L_81455A48
.L_81455908:
/* 81455908 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8145590C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81455910 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455914 | 40 82 FF DC */	bne .L_814558F0
/* 81455918 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8145591C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81455920 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 81455924 | 41 82 00 08 */	beq .L_8145592C
/* 81455928 | 3B 9F 00 50 */	addi r28, r31, 0x50
.L_8145592C:
/* 8145592C | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81455930 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 81455934 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81455938 | 48 00 00 1C */	b .L_81455954
.L_8145593C:
/* 8145593C | 7F E3 FB 78 */	mr r3, r31
/* 81455940 | 7F 84 E3 78 */	mr r4, r28
/* 81455944 | 4B FF 56 35 */	bl VmPopObject
/* 81455948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145594C | 41 82 00 08 */	beq .L_81455954
/* 81455950 | 48 00 00 F8 */	b .L_81455A48
.L_81455954:
/* 81455954 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81455958 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8145595C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455960 | 40 82 FF DC */	bne .L_8145593C
/* 81455964 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81455968 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145596C | 41 82 00 2C */	beq .L_81455998
/* 81455970 | A0 63 00 14 */	lhz r3, 0x14(r3)
/* 81455974 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 81455978 | 7C 00 18 40 */	cmplw r0, r3
/* 8145597C | 40 80 00 0C */	bge .L_81455988
/* 81455980 | 38 60 FC 41 */	li r3, -0x3bf
/* 81455984 | 48 00 00 B8 */	b .L_81455A3C
.L_81455988:
/* 81455988 | 7C 03 00 50 */	subf r0, r3, r0
/* 8145598C | 38 60 00 00 */	li r3, 0x0
/* 81455990 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 81455994 | 48 00 00 A8 */	b .L_81455A3C
.L_81455998:
/* 81455998 | 3B C0 00 00 */	li r30, 0x0
/* 8145599C | 48 00 00 30 */	b .L_814559CC
.L_814559A0:
/* 814559A0 | 7F E3 FB 78 */	mr r3, r31
/* 814559A4 | 7F C4 F3 78 */	mr r4, r30
/* 814559A8 | 4B FF FC AD */	bl CHANSVm_81455654
/* 814559AC | 7C 64 1B 78 */	mr r4, r3
/* 814559B0 | 7F E3 FB 78 */	mr r3, r31
/* 814559B4 | 4B FF 51 A1 */	bl CHANSVmDeleteObject
/* 814559B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814559BC | 41 82 00 0C */	beq .L_814559C8
/* 814559C0 | 38 60 FC 41 */	li r3, -0x3bf
/* 814559C4 | 48 00 00 84 */	b .L_81455A48
.L_814559C8:
/* 814559C8 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814559CC:
/* 814559CC | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 814559D0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814559D4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814559D8 | 7C 1E 00 40 */	cmplw r30, r0
/* 814559DC | 41 80 FF C4 */	blt .L_814559A0
/* 814559E0 | 83 9F 00 38 */	lwz r28, 0x38(r31)
/* 814559E4 | 48 00 00 4C */	b .L_81455A30
.L_814559E8:
/* 814559E8 | 88 1C 00 09 */	lbz r0, 0x9(r28)
/* 814559EC | 7F E3 FB 78 */	mr r3, r31
/* 814559F0 | 7F 84 E3 78 */	mr r4, r28
/* 814559F4 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 814559F8 | 98 1C 00 09 */	stb r0, 0x9(r28)
/* 814559FC | 4B FF 51 59 */	bl CHANSVmDeleteObject
/* 81455A00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455A04 | 41 82 00 0C */	beq .L_81455A10
/* 81455A08 | 38 60 FC 41 */	li r3, -0x3bf
/* 81455A0C | 48 00 00 3C */	b .L_81455A48
.L_81455A10:
/* 81455A10 | 80 BC 00 14 */	lwz r5, 0x14(r28)
/* 81455A14 | 7F E3 FB 78 */	mr r3, r31
/* 81455A18 | 7F 84 E3 78 */	mr r4, r28
/* 81455A1C | 38 05 00 37 */	addi r0, r5, 0x37
/* 81455A20 | 54 05 00 34 */	clrrwi r5, r0, 5
/* 81455A24 | 4B FF 4F 5D */	bl VmFree
/* 81455A28 | 83 9C 00 10 */	lwz r28, 0x10(r28)
/* 81455A2C | 93 9F 00 38 */	stw r28, 0x38(r31)
.L_81455A30:
/* 81455A30 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81455A34 | 40 82 FF B4 */	bne .L_814559E8
/* 81455A38 | 38 60 FC 19 */	li r3, -0x3e7
.L_81455A3C:
/* 81455A3C | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 81455A40 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 81455A44 | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_81455A48:
/* 81455A48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81455A4C | 48 1A 3A C1 */	bl _restgpr_27
/* 81455A50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81455A54 | 7C 08 03 A6 */	mtlr r0
/* 81455A58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81455A5C | 4E 80 00 20 */	blr
.endfn VmReturnWithValue

# .text:0xB4B4 | 0x81455A60 | size: 0x2F4
.fn CHANSVmLinkModules, global
/* 81455A60 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81455A64 | 7C 08 02 A6 */	mflr r0
/* 81455A68 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81455A6C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81455A70 | 48 1A 3A 35 */	bl _savegpr_20
/* 81455A74 | 88 03 00 4C */	lbz r0, 0x4c(r3)
/* 81455A78 | 7C 76 1B 78 */	mr r22, r3
/* 81455A7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455A80 | 40 82 02 B8 */	bne .L_81455D38
/* 81455A84 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81455A88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455A8C | 41 82 02 AC */	beq .L_81455D38
/* 81455A90 | 38 00 00 01 */	li r0, 0x1
/* 81455A94 | 82 E3 00 18 */	lwz r23, 0x18(r3)
/* 81455A98 | 98 03 00 4C */	stb r0, 0x4c(r3)
/* 81455A9C | 3B 00 00 00 */	li r24, 0x0
/* 81455AA0 | 3B C0 00 09 */	li r30, 0x9
/* 81455AA4 | 3B E0 00 80 */	li r31, 0x80
/* 81455AA8 | 3B A0 00 07 */	li r29, 0x7
/* 81455AAC | 3B 80 00 06 */	li r28, 0x6
/* 81455AB0 | 48 00 02 34 */	b .L_81455CE4
.L_81455AB4:
/* 81455AB4 | 80 76 00 60 */	lwz r3, 0x60(r22)
/* 81455AB8 | 92 E3 00 04 */	stw r23, 0x4(r3)
/* 81455ABC | 83 37 00 40 */	lwz r25, 0x40(r23)
/* 81455AC0 | 83 56 00 38 */	lwz r26, 0x38(r22)
/* 81455AC4 | 48 00 00 AC */	b .L_81455B70
.L_81455AC8:
/* 81455AC8 | 3B 60 00 00 */	li r27, 0x0
/* 81455ACC | 3A 80 00 00 */	li r20, 0x0
/* 81455AD0 | 3A A0 00 00 */	li r21, 0x0
/* 81455AD4 | 48 00 00 8C */	b .L_81455B60
.L_81455AD8:
/* 81455AD8 | 80 BA 00 14 */	lwz r5, 0x14(r26)
/* 81455ADC | 7C D9 A8 2E */	lwzx r6, r25, r21
/* 81455AE0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81455AE4 | 41 82 00 70 */	beq .L_81455B54
/* 81455AE8 | 54 C3 02 3E */	clrlwi r3, r6, 8
/* 81455AEC | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 81455AF0 | 7C 99 1A 14 */	add r4, r25, r3
/* 81455AF4 | 7C 64 2A 14 */	add r3, r4, r5
/* 81455AF8 | 7C 17 02 14 */	add r0, r23, r0
/* 81455AFC | 7C 03 00 40 */	cmplw r3, r0
/* 81455B00 | 41 81 00 54 */	bgt .L_81455B54
/* 81455B04 | 54 C0 46 3E */	srwi r0, r6, 24
/* 81455B08 | 7C 05 00 40 */	cmplw r5, r0
/* 81455B0C | 40 82 00 48 */	bne .L_81455B54
/* 81455B10 | 38 7A 00 18 */	addi r3, r26, 0x18
/* 81455B14 | 48 1A 86 C1 */	bl memcmp
/* 81455B18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455B1C | 40 82 00 38 */	bne .L_81455B54
/* 81455B20 | 80 17 00 18 */	lwz r0, 0x18(r23)
/* 81455B24 | 7C 60 A2 14 */	add r3, r0, r20
/* 81455B28 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81455B2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455B30 | 41 82 00 0C */	beq .L_81455B3C
/* 81455B34 | 38 60 FC 45 */	li r3, -0x3bb
/* 81455B38 | 48 00 00 44 */	b .L_81455B7C
.L_81455B3C:
/* 81455B3C | 9B 83 00 08 */	stb r28, 0x8(r3)
/* 81455B40 | 80 77 00 18 */	lwz r3, 0x18(r23)
/* 81455B44 | 7F 43 A1 2E */	stwx r26, r3, r20
/* 81455B48 | 80 17 00 18 */	lwz r0, 0x18(r23)
/* 81455B4C | 7C 60 A2 14 */	add r3, r0, r20
/* 81455B50 | 9B E3 00 09 */	stb r31, 0x9(r3)
.L_81455B54:
/* 81455B54 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81455B58 | 3A 94 00 10 */	addi r20, r20, 0x10
/* 81455B5C | 3A B5 00 04 */	addi r21, r21, 0x4
.L_81455B60:
/* 81455B60 | 80 17 00 14 */	lwz r0, 0x14(r23)
/* 81455B64 | 7C 1B 00 40 */	cmplw r27, r0
/* 81455B68 | 41 80 FF 70 */	blt .L_81455AD8
/* 81455B6C | 83 5A 00 10 */	lwz r26, 0x10(r26)
.L_81455B70:
/* 81455B70 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81455B74 | 40 82 FF 54 */	bne .L_81455AC8
/* 81455B78 | 38 60 00 00 */	li r3, 0x0
.L_81455B7C:
/* 81455B7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455B80 | 41 82 00 08 */	beq .L_81455B88
/* 81455B84 | 48 00 01 B8 */	b .L_81455D3C
.L_81455B88:
/* 81455B88 | 83 77 00 40 */	lwz r27, 0x40(r23)
/* 81455B8C | 83 56 00 30 */	lwz r26, 0x30(r22)
/* 81455B90 | 48 00 00 B0 */	b .L_81455C40
.L_81455B94:
/* 81455B94 | 3B 20 00 00 */	li r25, 0x0
/* 81455B98 | 3A A0 00 00 */	li r21, 0x0
/* 81455B9C | 3A 80 00 00 */	li r20, 0x0
/* 81455BA0 | 48 00 00 90 */	b .L_81455C30
.L_81455BA4:
/* 81455BA4 | 80 BA 00 18 */	lwz r5, 0x18(r26)
/* 81455BA8 | 7C DB A0 2E */	lwzx r6, r27, r20
/* 81455BAC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81455BB0 | 41 82 00 74 */	beq .L_81455C24
/* 81455BB4 | 54 C3 02 3E */	clrlwi r3, r6, 8
/* 81455BB8 | 80 17 00 04 */	lwz r0, 0x4(r23)
/* 81455BBC | 7C 9B 1A 14 */	add r4, r27, r3
/* 81455BC0 | 7C 64 2A 14 */	add r3, r4, r5
/* 81455BC4 | 7C 17 02 14 */	add r0, r23, r0
/* 81455BC8 | 7C 03 00 40 */	cmplw r3, r0
/* 81455BCC | 41 81 00 58 */	bgt .L_81455C24
/* 81455BD0 | 54 C0 46 3E */	srwi r0, r6, 24
/* 81455BD4 | 7C 05 00 40 */	cmplw r5, r0
/* 81455BD8 | 40 82 00 4C */	bne .L_81455C24
/* 81455BDC | 38 7A 00 1C */	addi r3, r26, 0x1c
/* 81455BE0 | 48 1A 85 F5 */	bl memcmp
/* 81455BE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455BE8 | 40 82 00 3C */	bne .L_81455C24
/* 81455BEC | 80 17 00 18 */	lwz r0, 0x18(r23)
/* 81455BF0 | 7C 60 AA 14 */	add r3, r0, r21
/* 81455BF4 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81455BF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455BFC | 41 82 00 0C */	beq .L_81455C08
/* 81455C00 | 38 60 FC 44 */	li r3, -0x3bc
/* 81455C04 | 48 00 00 48 */	b .L_81455C4C
.L_81455C08:
/* 81455C08 | 9B A3 00 08 */	stb r29, 0x8(r3)
/* 81455C0C | 80 17 00 18 */	lwz r0, 0x18(r23)
/* 81455C10 | 7C 60 AA 14 */	add r3, r0, r21
/* 81455C14 | 93 43 00 0C */	stw r26, 0xc(r3)
/* 81455C18 | 80 17 00 18 */	lwz r0, 0x18(r23)
/* 81455C1C | 7C 60 AA 14 */	add r3, r0, r21
/* 81455C20 | 9B E3 00 09 */	stb r31, 0x9(r3)
.L_81455C24:
/* 81455C24 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81455C28 | 3A B5 00 10 */	addi r21, r21, 0x10
/* 81455C2C | 3A 94 00 04 */	addi r20, r20, 0x4
.L_81455C30:
/* 81455C30 | 80 17 00 14 */	lwz r0, 0x14(r23)
/* 81455C34 | 7C 19 00 40 */	cmplw r25, r0
/* 81455C38 | 41 80 FF 6C */	blt .L_81455BA4
/* 81455C3C | 83 5A 00 00 */	lwz r26, 0x0(r26)
.L_81455C40:
/* 81455C40 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81455C44 | 40 82 FF 50 */	bne .L_81455B94
/* 81455C48 | 38 60 00 00 */	li r3, 0x0
.L_81455C4C:
/* 81455C4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455C50 | 41 82 00 08 */	beq .L_81455C58
/* 81455C54 | 48 00 00 E8 */	b .L_81455D3C
.L_81455C58:
/* 81455C58 | 3A 80 00 00 */	li r20, 0x0
/* 81455C5C | 3B 20 00 00 */	li r25, 0x0
/* 81455C60 | 48 00 00 60 */	b .L_81455CC0
.L_81455C64:
/* 81455C64 | 80 77 00 24 */	lwz r3, 0x24(r23)
/* 81455C68 | 80 17 00 14 */	lwz r0, 0x14(r23)
/* 81455C6C | 7C 63 CA 14 */	add r3, r3, r25
/* 81455C70 | A0 83 00 04 */	lhz r4, 0x4(r3)
/* 81455C74 | 7C 04 00 40 */	cmplw r4, r0
/* 81455C78 | 40 80 00 38 */	bge .L_81455CB0
/* 81455C7C | 7E C3 B3 78 */	mr r3, r22
/* 81455C80 | 4B FF F9 D5 */	bl CHANSVm_81455654
/* 81455C84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455C88 | 41 82 00 10 */	beq .L_81455C98
/* 81455C8C | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81455C90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455C94 | 41 82 00 0C */	beq .L_81455CA0
.L_81455C98:
/* 81455C98 | 38 60 FC 3D */	li r3, -0x3c3
/* 81455C9C | 48 00 00 34 */	b .L_81455CD0
.L_81455CA0:
/* 81455CA0 | 9B C3 00 08 */	stb r30, 0x8(r3)
/* 81455CA4 | 92 83 00 00 */	stw r20, 0x0(r3)
/* 81455CA8 | 9B E3 00 09 */	stb r31, 0x9(r3)
/* 81455CAC | 48 00 00 0C */	b .L_81455CB8
.L_81455CB0:
/* 81455CB0 | 38 60 FC 3D */	li r3, -0x3c3
/* 81455CB4 | 48 00 00 1C */	b .L_81455CD0
.L_81455CB8:
/* 81455CB8 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 81455CBC | 3B 39 00 08 */	addi r25, r25, 0x8
.L_81455CC0:
/* 81455CC0 | 80 17 00 20 */	lwz r0, 0x20(r23)
/* 81455CC4 | 7C 14 00 40 */	cmplw r20, r0
/* 81455CC8 | 41 80 FF 9C */	blt .L_81455C64
/* 81455CCC | 38 60 00 00 */	li r3, 0x0
.L_81455CD0:
/* 81455CD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455CD4 | 41 82 00 08 */	beq .L_81455CDC
/* 81455CD8 | 48 00 00 64 */	b .L_81455D3C
.L_81455CDC:
/* 81455CDC | 82 F7 00 00 */	lwz r23, 0x0(r23)
/* 81455CE0 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_81455CE4:
/* 81455CE4 | 80 16 00 10 */	lwz r0, 0x10(r22)
/* 81455CE8 | 7C 18 00 40 */	cmplw r24, r0
/* 81455CEC | 41 80 FD C8 */	blt .L_81455AB4
/* 81455CF0 | 80 16 00 28 */	lwz r0, 0x28(r22)
/* 81455CF4 | 38 76 00 50 */	addi r3, r22, 0x50
/* 81455CF8 | 80 D6 00 2C */	lwz r6, 0x2c(r22)
/* 81455CFC | 38 80 00 00 */	li r4, 0x0
/* 81455D00 | 90 16 00 20 */	stw r0, 0x20(r22)
/* 81455D04 | 38 A0 00 10 */	li r5, 0x10
/* 81455D08 | 7C 00 30 50 */	subf r0, r0, r6
/* 81455D0C | 90 D6 00 24 */	stw r6, 0x24(r22)
/* 81455D10 | 90 16 00 1C */	stw r0, 0x1c(r22)
/* 81455D14 | 4B ED A6 21 */	bl memset
/* 81455D18 | 80 B6 00 18 */	lwz r5, 0x18(r22)
/* 81455D1C | 38 00 00 01 */	li r0, 0x1
/* 81455D20 | 80 96 00 60 */	lwz r4, 0x60(r22)
/* 81455D24 | 38 60 00 00 */	li r3, 0x0
/* 81455D28 | 90 A4 00 04 */	stw r5, 0x4(r4)
/* 81455D2C | 80 96 00 60 */	lwz r4, 0x60(r22)
/* 81455D30 | 90 04 00 10 */	stw r0, 0x10(r4)
/* 81455D34 | 48 00 00 08 */	b .L_81455D3C
.L_81455D38:
/* 81455D38 | 38 60 FC 24 */	li r3, -0x3dc
.L_81455D3C:
/* 81455D3C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81455D40 | 48 1A 37 B1 */	bl _restgpr_20
/* 81455D44 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81455D48 | 7C 08 03 A6 */	mtlr r0
/* 81455D4C | 38 21 00 40 */	addi r1, r1, 0x40
/* 81455D50 | 4E 80 00 20 */	blr
.endfn CHANSVmLinkModules

# .text:0xB7A8 | 0x81455D54 | size: 0x34
.fn VmGetOperandp, local
/* 81455D54 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 81455D58 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 81455D5C | 80 C3 00 10 */	lwz r6, 0x10(r3)
/* 81455D60 | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 81455D64 | 7C 66 2A 14 */	add r3, r6, r5
/* 81455D68 | 7C 03 00 40 */	cmplw r3, r0
/* 81455D6C | 41 80 00 0C */	blt .L_81455D78
/* 81455D70 | 38 60 00 00 */	li r3, 0x0
/* 81455D74 | 4E 80 00 20 */	blr
.L_81455D78:
/* 81455D78 | 80 67 00 10 */	lwz r3, 0x10(r7)
/* 81455D7C | 7C 06 22 14 */	add r0, r6, r4
/* 81455D80 | 7C 63 02 14 */	add r3, r3, r0
/* 81455D84 | 4E 80 00 20 */	blr
.endfn VmGetOperandp

# .text:0xB7DC | 0x81455D88 | size: 0x44
.fn VmLoadImmInteger, local
/* 81455D88 | 39 20 00 00 */	li r9, 0x0
/* 81455D8C | 38 00 00 00 */	li r0, 0x0
/* 81455D90 | 7C C9 03 A6 */	mtctr r6
/* 81455D94 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81455D98 | 41 82 00 28 */	beq .L_81455DC0
.L_81455D9C:
/* 81455D9C | 88 C5 00 00 */	lbz r6, 0x0(r5)
/* 81455DA0 | 54 07 40 2E */	slwi r7, r0, 8
/* 81455DA4 | 55 28 40 2E */	slwi r8, r9, 8
/* 81455DA8 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81455DAC | 51 27 46 3E */	rlwimi r7, r9, 8, 24, 31
/* 81455DB0 | 7C C0 FE 70 */	srawi r0, r6, 31
/* 81455DB4 | 7D 09 33 78 */	or r9, r8, r6
/* 81455DB8 | 7C E0 03 78 */	or r0, r7, r0
/* 81455DBC | 42 00 FF E0 */	bdnz .L_81455D9C
.L_81455DC0:
/* 81455DC0 | 7D 26 4B 78 */	mr r6, r9
/* 81455DC4 | 7C 05 03 78 */	mr r5, r0
/* 81455DC8 | 4B FF 5B D0 */	b CHANSVmSetInteger
.endfn VmLoadImmInteger

# .text:0xB820 | 0x81455DCC | size: 0x94
.fn CHANSVm_81455DCC, local
/* 81455DCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81455DD0 | 7C 08 02 A6 */	mflr r0
/* 81455DD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81455DD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81455DDC | 48 1A 36 E9 */	bl _savegpr_28
/* 81455DE0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81455DE4 | 7C 7C 1B 78 */	mr r28, r3
/* 81455DE8 | 7C 9D 23 78 */	mr r29, r4
/* 81455DEC | 7C BE 2B 78 */	mr r30, r5
/* 81455DF0 | 41 82 00 0C */	beq .L_81455DFC
/* 81455DF4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81455DF8 | 40 82 00 0C */	bne .L_81455E04
.L_81455DFC:
/* 81455DFC | 38 60 FC 1F */	li r3, -0x3e1
/* 81455E00 | 48 00 00 48 */	b .L_81455E48
.L_81455E04:
/* 81455E04 | 88 04 00 09 */	lbz r0, 0x9(r4)
/* 81455E08 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81455E0C | 41 82 00 0C */	beq .L_81455E18
/* 81455E10 | 38 60 FC 51 */	li r3, -0x3af
/* 81455E14 | 48 00 00 34 */	b .L_81455E48
.L_81455E18:
/* 81455E18 | 4B FF 4D 3D */	bl CHANSVmDeleteObject
/* 81455E1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455E20 | 7C 7F 1B 78 */	mr r31, r3
/* 81455E24 | 40 82 00 20 */	bne .L_81455E44
/* 81455E28 | 7F 83 E3 78 */	mr r3, r28
/* 81455E2C | 7F A4 EB 78 */	mr r4, r29
/* 81455E30 | 7F C5 F3 78 */	mr r5, r30
/* 81455E34 | 4B FF 50 65 */	bl CHANSVmCopyObject
/* 81455E38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455E3C | 40 82 00 08 */	bne .L_81455E44
/* 81455E40 | 3B E0 FC 28 */	li r31, -0x3d8
.L_81455E44:
/* 81455E44 | 7F E3 FB 78 */	mr r3, r31
.L_81455E48:
/* 81455E48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81455E4C | 48 1A 36 C5 */	bl _restgpr_28
/* 81455E50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81455E54 | 7C 08 03 A6 */	mtlr r0
/* 81455E58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81455E5C | 4E 80 00 20 */	blr
.endfn CHANSVm_81455DCC

# .text:0xB8B4 | 0x81455E60 | size: 0x80
.fn VmDelCommon, local
/* 81455E60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81455E64 | 7C 08 02 A6 */	mflr r0
/* 81455E68 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81455E6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81455E70 | 38 00 FC 2A */	li r0, -0x3d6
/* 81455E74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81455E78 | 7C 9F 23 78 */	mr r31, r4
/* 81455E7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81455E80 | 7C 7E 1B 78 */	mr r30, r3
/* 81455E84 | 41 82 00 40 */	beq .L_81455EC4
/* 81455E88 | 4B FF 4C CD */	bl CHANSVmDeleteObject
/* 81455E8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81455E90 | 7C 60 1B 78 */	mr r0, r3
/* 81455E94 | 40 82 00 30 */	bne .L_81455EC4
/* 81455E98 | 88 1F 00 08 */	lbz r0, 0x8(r31)
/* 81455E9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81455EA0 | 40 82 00 1C */	bne .L_81455EBC
/* 81455EA4 | 7F C3 F3 78 */	mr r3, r30
/* 81455EA8 | 38 9E 00 50 */	addi r4, r30, 0x50
/* 81455EAC | 38 C0 00 01 */	li r6, 0x1
/* 81455EB0 | 38 A0 00 00 */	li r5, 0x0
/* 81455EB4 | 4B FF 5A E5 */	bl CHANSVmSetInteger
/* 81455EB8 | 48 00 00 08 */	b .L_81455EC0
.L_81455EBC:
/* 81455EBC | 38 60 FC 2A */	li r3, -0x3d6
.L_81455EC0:
/* 81455EC0 | 7C 60 1B 78 */	mr r0, r3
.L_81455EC4:
/* 81455EC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81455EC8 | 7C 03 03 78 */	mr r3, r0
/* 81455ECC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81455ED0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81455ED4 | 7C 08 03 A6 */	mtlr r0
/* 81455ED8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81455EDC | 4E 80 00 20 */	blr
.endfn VmDelCommon

# .text:0xB934 | 0x81455EE0 | size: 0x464
.fn VmCallMethod, local
/* 81455EE0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81455EE4 | 7C 08 02 A6 */	mflr r0
/* 81455EE8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81455EEC | 39 61 00 50 */	addi r11, r1, 0x50
/* 81455EF0 | 48 1A 35 B9 */	bl _savegpr_21
/* 81455EF4 | 88 03 00 58 */	lbz r0, 0x58(r3)
/* 81455EF8 | 3B E3 00 50 */	addi r31, r3, 0x50
/* 81455EFC | 7C 75 1B 78 */	mr r21, r3
/* 81455F00 | 7C 96 23 78 */	mr r22, r4
/* 81455F04 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 81455F08 | 7C B7 2B 78 */	mr r23, r5
/* 81455F0C | 7C D8 33 78 */	mr r24, r6
/* 81455F10 | 3B 80 00 00 */	li r28, 0x0
/* 81455F14 | 3B 60 00 00 */	li r27, 0x0
/* 81455F18 | 3B 40 00 00 */	li r26, 0x0
/* 81455F1C | 3B 20 00 00 */	li r25, 0x0
/* 81455F20 | 40 80 00 1C */	bge .L_81455F3C
/* 81455F24 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81455F28 | 41 82 00 24 */	beq .L_81455F4C
/* 81455F2C | 40 80 00 94 */	bge .L_81455FC0
/* 81455F30 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81455F34 | 40 80 00 78 */	bge .L_81455FAC
/* 81455F38 | 48 00 00 88 */	b .L_81455FC0
.L_81455F3C:
/* 81455F3C | 2C 00 00 09 */	cmpwi r0, 0x9
/* 81455F40 | 41 82 00 34 */	beq .L_81455F74
/* 81455F44 | 40 80 00 7C */	bge .L_81455FC0
/* 81455F48 | 48 00 00 18 */	b .L_81455F60
.L_81455F4C:
/* 81455F4C | 83 63 00 40 */	lwz r27, 0x40(r3)
/* 81455F50 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81455F54 | 40 82 00 90 */	bne .L_81455FE4
/* 81455F58 | 38 60 FC 5D */	li r3, -0x3a3
/* 81455F5C | 48 00 03 D0 */	b .L_8145632C
.L_81455F60:
/* 81455F60 | 83 7F 00 0C */	lwz r27, 0xc(r31)
/* 81455F64 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81455F68 | 40 82 00 7C */	bne .L_81455FE4
/* 81455F6C | 38 60 FC 5D */	li r3, -0x3a3
/* 81455F70 | 48 00 03 BC */	b .L_8145632C
.L_81455F74:
/* 81455F74 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 81455F78 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81455F7C | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 81455F80 | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 81455F84 | 7C 06 00 40 */	cmplw r6, r0
/* 81455F88 | 41 80 00 0C */	blt .L_81455F94
/* 81455F8C | 38 60 FC 5D */	li r3, -0x3a3
/* 81455F90 | 48 00 03 9C */	b .L_8145632C
.L_81455F94:
/* 81455F94 | 80 A5 00 24 */	lwz r5, 0x24(r5)
/* 81455F98 | 54 C0 18 38 */	slwi r0, r6, 3
/* 81455F9C | 7C A5 02 14 */	add r5, r5, r0
/* 81455FA0 | 8B 45 00 06 */	lbz r26, 0x6(r5)
/* 81455FA4 | 8B 25 00 07 */	lbz r25, 0x7(r5)
/* 81455FA8 | 48 00 00 3C */	b .L_81455FE4
.L_81455FAC:
/* 81455FAC | 83 63 00 44 */	lwz r27, 0x44(r3)
/* 81455FB0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81455FB4 | 40 82 00 30 */	bne .L_81455FE4
/* 81455FB8 | 38 60 FC 5D */	li r3, -0x3a3
/* 81455FBC | 48 00 03 70 */	b .L_8145632C
.L_81455FC0:
/* 81455FC0 | 28 17 00 01 */	cmplwi r23, 0x1
/* 81455FC4 | 40 82 00 0C */	bne .L_81455FD0
/* 81455FC8 | 38 60 FC 64 */	li r3, -0x39c
/* 81455FCC | 48 00 03 60 */	b .L_8145632C
.L_81455FD0:
/* 81455FD0 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 81455FD4 | 38 60 FC 5F */	li r3, -0x3a1
/* 81455FD8 | 40 82 03 54 */	bne .L_8145632C
/* 81455FDC | 38 60 FC 60 */	li r3, -0x3a0
/* 81455FE0 | 48 00 03 4C */	b .L_8145632C
.L_81455FE4:
/* 81455FE4 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 81455FE8 | 80 A3 00 10 */	lwz r5, 0x10(r3)
/* 81455FEC | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 81455FF0 | 7F A5 22 14 */	add r29, r5, r4
/* 81455FF4 | 80 06 00 10 */	lwz r0, 0x10(r6)
/* 81455FF8 | 7C 1D 28 40 */	cmplw r29, r5
/* 81455FFC | 7F C0 2A 14 */	add r30, r0, r5
/* 81456000 | 41 80 00 10 */	blt .L_81456010
/* 81456004 | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 81456008 | 7C 1D 00 40 */	cmplw r29, r0
/* 8145600C | 40 81 00 0C */	ble .L_81456018
.L_81456010:
/* 81456010 | 38 60 FC 1D */	li r3, -0x3e3
/* 81456014 | 48 00 03 18 */	b .L_8145632C
.L_81456018:
/* 81456018 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8145601C | 40 82 00 08 */	bne .L_81456024
/* 81456020 | 93 A3 00 10 */	stw r29, 0x10(r3)
.L_81456024:
/* 81456024 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81456028 | 38 80 00 00 */	li r4, 0x0
/* 8145602C | 38 A0 00 10 */	li r5, 0x10
/* 81456030 | 4B ED A3 05 */	bl memset
/* 81456034 | 28 17 00 01 */	cmplwi r23, 0x1
/* 81456038 | 40 82 00 0C */	bne .L_81456044
/* 8145603C | 38 A0 00 00 */	li r5, 0x0
/* 81456040 | 48 00 00 50 */	b .L_81456090
.L_81456044:
/* 81456044 | 80 75 00 60 */	lwz r3, 0x60(r21)
/* 81456048 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 8145604C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81456050 | 88 BE 00 02 */	lbz r5, 0x2(r30)
/* 81456054 | 50 05 44 2E */	rlwimi r5, r0, 8, 16, 23
/* 81456058 | 80 83 00 38 */	lwz r4, 0x38(r3)
/* 8145605C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81456060 | 41 82 FF 60 */	beq .L_81455FC0
/* 81456064 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81456068 | 7C 05 00 40 */	cmplw r5, r0
/* 8145606C | 40 80 FF 54 */	bge .L_81455FC0
/* 81456070 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81456074 | 41 82 00 0C */	beq .L_81456080
/* 81456078 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8145607C | 41 82 FF 44 */	beq .L_81455FC0
.L_81456080:
/* 81456080 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81456084 | 41 82 00 0C */	beq .L_81456090
/* 81456088 | 54 A0 10 3A */	slwi r0, r5, 2
/* 8145608C | 7C A4 00 2E */	lwzx r5, r4, r0
.L_81456090:
/* 81456090 | 38 17 FF FE */	subi r0, r23, 0x2
/* 81456094 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81456098 | 41 81 00 98 */	bgt .L_81456130
/* 8145609C | 38 77 FF FD */	subi r3, r23, 0x3
/* 814560A0 | 7C A0 00 34 */	cntlzw r0, r5
/* 814560A4 | 7C 63 00 34 */	cntlzw r3, r3
/* 814560A8 | 80 DB 00 14 */	lwz r6, 0x14(r27)
/* 814560AC | 54 64 D9 7E */	srwi r4, r3, 5
/* 814560B0 | 54 03 D9 7E */	srwi r3, r0, 5
.L_814560B4:
/* 814560B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814560B8 | 40 82 00 0C */	bne .L_814560C4
/* 814560BC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814560C0 | 40 82 00 0C */	bne .L_814560CC
.L_814560C4:
/* 814560C4 | 38 60 FC 5F */	li r3, -0x3a1
/* 814560C8 | 48 00 02 64 */	b .L_8145632C
.L_814560CC:
/* 814560CC | A0 06 00 04 */	lhz r0, 0x4(r6)
/* 814560D0 | 7C 05 00 40 */	cmplw r5, r0
/* 814560D4 | 40 82 00 54 */	bne .L_81456128
/* 814560D8 | 88 1F 00 08 */	lbz r0, 0x8(r31)
/* 814560DC | 28 00 00 07 */	cmplwi r0, 0x7
/* 814560E0 | 40 82 00 18 */	bne .L_814560F8
/* 814560E4 | 88 06 00 06 */	lbz r0, 0x6(r6)
/* 814560E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814560EC | 40 82 00 0C */	bne .L_814560F8
/* 814560F0 | 38 60 FC 5A */	li r3, -0x3a6
/* 814560F4 | 48 00 02 38 */	b .L_8145632C
.L_814560F8:
/* 814560F8 | 28 17 00 02 */	cmplwi r23, 0x2
/* 814560FC | 40 82 00 18 */	bne .L_81456114
/* 81456100 | 83 86 00 08 */	lwz r28, 0x8(r6)
/* 81456104 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81456108 | 40 82 00 EC */	bne .L_814561F4
/* 8145610C | 38 60 FC 61 */	li r3, -0x39f
/* 81456110 | 48 00 02 1C */	b .L_8145632C
.L_81456114:
/* 81456114 | 83 86 00 0C */	lwz r28, 0xc(r6)
/* 81456118 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8145611C | 40 82 00 D8 */	bne .L_814561F4
/* 81456120 | 38 60 FC 62 */	li r3, -0x39e
/* 81456124 | 48 00 02 08 */	b .L_8145632C
.L_81456128:
/* 81456128 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 8145612C | 4B FF FF 88 */	b .L_814560B4
.L_81456130:
/* 81456130 | 7C 7E B2 14 */	add r3, r30, r22
/* 81456134 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81456138 | 88 83 FF FF */	lbz r4, -0x1(r3)
/* 8145613C | 41 82 00 54 */	beq .L_81456190
/* 81456140 | 80 7B 00 10 */	lwz r3, 0x10(r27)
.L_81456144:
/* 81456144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456148 | 40 82 00 0C */	bne .L_81456154
/* 8145614C | 38 60 FC 60 */	li r3, -0x3a0
/* 81456150 | 48 00 01 DC */	b .L_8145632C
.L_81456154:
/* 81456154 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 81456158 | 7C 05 00 40 */	cmplw r5, r0
/* 8145615C | 40 82 00 2C */	bne .L_81456188
/* 81456160 | 88 1F 00 08 */	lbz r0, 0x8(r31)
/* 81456164 | 28 00 00 07 */	cmplwi r0, 0x7
/* 81456168 | 40 82 00 18 */	bne .L_81456180
/* 8145616C | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 81456170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81456174 | 40 82 00 0C */	bne .L_81456180
/* 81456178 | 38 60 FC 5B */	li r3, -0x3a5
/* 8145617C | 48 00 01 B0 */	b .L_8145632C
.L_81456180:
/* 81456180 | 83 83 00 08 */	lwz r28, 0x8(r3)
/* 81456184 | 48 00 00 70 */	b .L_814561F4
.L_81456188:
/* 81456188 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145618C | 4B FF FF B8 */	b .L_81456144
.L_81456190:
/* 81456190 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81456194 | 41 82 00 60 */	beq .L_814561F4
/* 81456198 | 88 1F 00 08 */	lbz r0, 0x8(r31)
/* 8145619C | 28 00 00 07 */	cmplwi r0, 0x7
/* 814561A0 | 41 82 00 18 */	beq .L_814561B8
/* 814561A4 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814561A8 | 38 60 FC 64 */	li r3, -0x39c
/* 814561AC | 40 82 01 80 */	bne .L_8145632C
/* 814561B0 | 38 60 FC 60 */	li r3, -0x3a0
/* 814561B4 | 48 00 01 78 */	b .L_8145632C
.L_814561B8:
/* 814561B8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814561BC | 41 82 00 24 */	beq .L_814561E0
/* 814561C0 | 38 00 00 08 */	li r0, 0x8
/* 814561C4 | 93 61 00 14 */	stw r27, 0x14(r1)
/* 814561C8 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 814561CC | 83 9B 00 04 */	lwz r28, 0x4(r27)
/* 814561D0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814561D4 | 40 82 00 20 */	bne .L_814561F4
/* 814561D8 | 38 60 FC 58 */	li r3, -0x3a8
/* 814561DC | 48 00 01 50 */	b .L_8145632C
.L_814561E0:
/* 814561E0 | 83 9B 00 0C */	lwz r28, 0xc(r27)
/* 814561E4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814561E8 | 40 82 00 0C */	bne .L_814561F4
/* 814561EC | 38 60 FC 5C */	li r3, -0x3a4
/* 814561F0 | 48 00 01 3C */	b .L_8145632C
.L_814561F4:
/* 814561F4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814561F8 | 7E A3 AB 78 */	mr r3, r21
/* 814561FC | 41 82 00 08 */	beq .L_81456204
/* 81456200 | 7C 9A 23 78 */	mr r26, r4
.L_81456204:
/* 81456204 | 7F 45 D3 78 */	mr r5, r26
/* 81456208 | 7F 26 CB 78 */	mr r6, r25
/* 8145620C | 4B FF F4 D5 */	bl VmPushFuncReturnInfo
/* 81456210 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456214 | 7C 76 1B 78 */	mr r22, r3
/* 81456218 | 40 82 01 10 */	bne .L_81456328
/* 8145621C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81456220 | 41 82 00 C0 */	beq .L_814562E0
/* 81456224 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81456228 | 41 82 00 38 */	beq .L_81456260
/* 8145622C | 7F 8C E3 78 */	mr r12, r28
/* 81456230 | 7E A3 AB 78 */	mr r3, r21
/* 81456234 | 7F E4 FB 78 */	mr r4, r31
/* 81456238 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8145623C | 7D 89 03 A6 */	mtctr r12
/* 81456240 | 4E 80 04 21 */	bctrl
/* 81456244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456248 | 40 82 00 18 */	bne .L_81456260
/* 8145624C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81456250 | 3A C0 FC 25 */	li r22, -0x3db
/* 81456254 | 41 82 00 78 */	beq .L_814562CC
/* 81456258 | 3A C0 FC 46 */	li r22, -0x3ba
/* 8145625C | 48 00 00 70 */	b .L_814562CC
.L_81456260:
/* 81456260 | 38 17 FF FD */	subi r0, r23, 0x3
/* 81456264 | 7E A3 AB 78 */	mr r3, r21
/* 81456268 | 7C 00 00 34 */	cntlzw r0, r0
/* 8145626C | 54 04 D9 7E */	srwi r4, r0, 5
/* 81456270 | 4B FF F6 1D */	bl VmReturnWithValue
/* 81456274 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456278 | 7C 76 1B 78 */	mr r22, r3
/* 8145627C | 40 82 00 50 */	bne .L_814562CC
/* 81456280 | 28 17 00 03 */	cmplwi r23, 0x3
/* 81456284 | 41 82 00 48 */	beq .L_814562CC
/* 81456288 | 7E A3 AB 78 */	mr r3, r21
/* 8145628C | 7F E4 FB 78 */	mr r4, r31
/* 81456290 | 4B FF 48 C5 */	bl CHANSVmDeleteObject
/* 81456294 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456298 | 7C 76 1B 78 */	mr r22, r3
/* 8145629C | 40 82 00 30 */	bne .L_814562CC
/* 814562A0 | 7F E3 FB 78 */	mr r3, r31
/* 814562A4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814562A8 | 38 A0 00 10 */	li r5, 0x10
/* 814562AC | 4B ED 9F 85 */	bl memcpy
/* 814562B0 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 814562B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814562B8 | 38 80 00 00 */	li r4, 0x0
/* 814562BC | 38 A0 00 10 */	li r5, 0x10
/* 814562C0 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 814562C4 | 98 1F 00 09 */	stb r0, 0x9(r31)
/* 814562C8 | 4B ED A0 6D */	bl memset
.L_814562CC:
/* 814562CC | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814562D0 | 40 82 00 58 */	bne .L_81456328
/* 814562D4 | 80 75 00 60 */	lwz r3, 0x60(r21)
/* 814562D8 | 93 A3 00 10 */	stw r29, 0x10(r3)
/* 814562DC | 48 00 00 4C */	b .L_81456328
.L_814562E0:
/* 814562E0 | 80 95 00 60 */	lwz r4, 0x60(r21)
/* 814562E4 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814562E8 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 814562EC | 54 00 18 38 */	slwi r0, r0, 3
/* 814562F0 | 80 65 00 24 */	lwz r3, 0x24(r5)
/* 814562F4 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 814562F8 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814562FC | 41 80 00 10 */	blt .L_8145630C
/* 81456300 | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 81456304 | 7C 03 00 40 */	cmplw r3, r0
/* 81456308 | 41 80 00 0C */	blt .L_81456314
.L_8145630C:
/* 8145630C | 38 60 FC 1D */	li r3, -0x3e3
/* 81456310 | 48 00 00 1C */	b .L_8145632C
.L_81456314:
/* 81456314 | 90 64 00 10 */	stw r3, 0x10(r4)
/* 81456318 | 7E A3 AB 78 */	mr r3, r21
/* 8145631C | 7F E4 FB 78 */	mr r4, r31
/* 81456320 | 4B FF 48 35 */	bl CHANSVmDeleteObject
/* 81456324 | 7C 76 1B 78 */	mr r22, r3
.L_81456328:
/* 81456328 | 7E C3 B3 78 */	mr r3, r22
.L_8145632C:
/* 8145632C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81456330 | 48 1A 31 C5 */	bl _restgpr_21
/* 81456334 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81456338 | 7C 08 03 A6 */	mtlr r0
/* 8145633C | 38 21 00 50 */	addi r1, r1, 0x50
/* 81456340 | 4E 80 00 20 */	blr
.endfn VmCallMethod

# .text:0xBD98 | 0x81456344 | size: 0x10
.fn CHANSVmSetSignal, global
/* 81456344 | 38 00 00 01 */	li r0, 0x1
/* 81456348 | 90 83 00 48 */	stw r4, 0x48(r3)
/* 8145634C | 98 03 00 4D */	stb r0, 0x4d(r3)
/* 81456350 | 4E 80 00 20 */	blr
.endfn CHANSVmSetSignal

# .text:0xBDA8 | 0x81456354 | size: 0x1394
.fn CHANSVmStep, global
/* 81456354 | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 81456358 | 7C 08 02 A6 */	mflr r0
/* 8145635C | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 81456360 | DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 81456364 | F3 E1 00 E8 */	psq_st f31, 0xe8(r1), 0, qr0
/* 81456368 | DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8145636C | F3 C1 00 D8 */	psq_st f30, 0xd8(r1), 0, qr0
/* 81456370 | DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 81456374 | F3 A1 00 C8 */	psq_st f29, 0xc8(r1), 0, qr0
/* 81456378 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 8145637C | 48 1A 31 11 */	bl _savegpr_14
/* 81456380 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81456384 | 3F 80 81 61 */	lis r28, CHANSVmConstStringObjectUndefined@ha
/* 81456388 | 7C 6F 1B 78 */	mr r15, r3
/* 8145638C | 7C 90 23 78 */	mr r16, r4
/* 81456390 | 3B 9C 6C 78 */	addi r28, r28, CHANSVmConstStringObjectUndefined@l
/* 81456394 | 40 82 00 08 */	bne .L_8145639C
/* 81456398 | 3A 00 00 01 */	li r16, 0x1
.L_8145639C:
/* 8145639C | 38 61 00 60 */	addi r3, r1, 0x60
/* 814563A0 | 38 80 00 00 */	li r4, 0x0
/* 814563A4 | 38 A0 00 10 */	li r5, 0x10
/* 814563A8 | 4B ED 9F 8D */	bl memset
/* 814563AC | CB E2 8B B8 */	lfd f31, lbl_81694FB8@sda21(r0)
/* 814563B0 | 3B 01 00 30 */	addi r24, r1, 0x30
/* 814563B4 | CB C2 8B 28 */	lfd f30, lbl_81694F28@sda21(r0)
/* 814563B8 | 3B A0 00 00 */	li r29, 0x0
/* 814563BC | 3B C0 FF FE */	li r30, -0x2
/* 814563C0 | 48 00 12 E8 */	b .L_814576A8
.L_814563C4:
/* 814563C4 | 88 0F 00 4D */	lbz r0, 0x4d(r15)
/* 814563C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814563CC | 41 82 00 20 */	beq .L_814563EC
/* 814563D0 | 88 0F 00 4E */	lbz r0, 0x4e(r15)
/* 814563D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814563D8 | 40 82 00 14 */	bne .L_814563EC
/* 814563DC | 38 00 00 00 */	li r0, 0x0
/* 814563E0 | 38 60 FC 50 */	li r3, -0x3b0
/* 814563E4 | 98 0F 00 4D */	stb r0, 0x4d(r15)
/* 814563E8 | 48 00 12 D0 */	b .L_814576B8
.L_814563EC:
/* 814563EC | 80 8F 00 60 */	lwz r4, 0x60(r15)
/* 814563F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814563F4 | 41 82 00 28 */	beq .L_8145641C
/* 814563F8 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 814563FC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81456400 | 41 82 00 1C */	beq .L_8145641C
/* 81456404 | 80 C4 00 10 */	lwz r6, 0x10(r4)
/* 81456408 | 28 06 00 01 */	cmplwi r6, 0x1
/* 8145640C | 41 80 00 10 */	blt .L_8145641C
/* 81456410 | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 81456414 | 7C 06 00 40 */	cmplw r6, r0
/* 81456418 | 41 80 00 0C */	blt .L_81456424
.L_8145641C:
/* 8145641C | 38 60 FC 1D */	li r3, -0x3e3
/* 81456420 | 48 00 12 98 */	b .L_814576B8
.L_81456424:
/* 81456424 | 80 6F 00 28 */	lwz r3, 0x28(r15)
/* 81456428 | 80 0F 00 20 */	lwz r0, 0x20(r15)
/* 8145642C | 7C 03 00 40 */	cmplw r3, r0
/* 81456430 | 41 80 00 14 */	blt .L_81456444
/* 81456434 | 80 6F 00 24 */	lwz r3, 0x24(r15)
/* 81456438 | 80 0F 00 2C */	lwz r0, 0x2c(r15)
/* 8145643C | 7C 03 00 40 */	cmplw r3, r0
/* 81456440 | 40 80 00 0C */	bge .L_8145644C
.L_81456444:
/* 81456444 | 38 60 FC 1E */	li r3, -0x3e2
/* 81456448 | 48 00 12 70 */	b .L_814576B8
.L_8145644C:
/* 8145644C | 88 0F 00 4F */	lbz r0, 0x4f(r15)
/* 81456450 | 80 65 00 10 */	lwz r3, 0x10(r5)
/* 81456454 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81456458 | 7E 43 30 AE */	lbzx r18, r3, r6
/* 8145645C | 41 82 00 08 */	beq .L_81456464
/* 81456460 | 3A 40 00 00 */	li r18, 0x0
.L_81456464:
/* 81456464 | 56 40 06 33 */	rlwinm. r0, r18, 0, 24, 25
/* 81456468 | 40 82 0E AC */	bne .L_81457314
/* 8145646C | 28 12 00 3F */	cmplwi r18, 0x3f
/* 81456470 | 3A A0 00 01 */	li r21, 0x1
/* 81456474 | 41 81 0E 98 */	bgt .L_8145730C
/* 81456478 | 3C 60 81 67 */	lis r3, jumptable_8166A1B0@ha
/* 8145647C | 56 40 10 3A */	slwi r0, r18, 2
/* 81456480 | 38 63 A1 B0 */	addi r3, r3, jumptable_8166A1B0@l
/* 81456484 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81456488 | 7C 69 03 A6 */	mtctr r3
/* 8145648C | 4E 80 04 20 */	bctr
.L_81456490:
/* 81456490 | 39 C0 00 01 */	li r14, 0x1
/* 81456494 | 48 00 00 18 */	b .L_814564AC
.L_81456498:
/* 81456498 | 39 C0 00 02 */	li r14, 0x2
/* 8145649C | 48 00 00 10 */	b .L_814564AC
.L_814564A0:
/* 814564A0 | 39 C0 00 04 */	li r14, 0x4
/* 814564A4 | 48 00 00 08 */	b .L_814564AC
.L_814564A8:
/* 814564A8 | 39 C0 00 08 */	li r14, 0x8
.L_814564AC:
/* 814564AC | 3A AE 00 01 */	addi r21, r14, 0x1
/* 814564B0 | 7D E3 7B 78 */	mr r3, r15
/* 814564B4 | 7E A5 AB 78 */	mr r5, r21
/* 814564B8 | 38 80 00 01 */	li r4, 0x1
/* 814564BC | 4B FF F8 99 */	bl VmGetOperandp
/* 814564C0 | 7C 65 1B 78 */	mr r5, r3
/* 814564C4 | 7D E3 7B 78 */	mr r3, r15
/* 814564C8 | 7D C6 73 78 */	mr r6, r14
/* 814564CC | 38 8F 00 50 */	addi r4, r15, 0x50
/* 814564D0 | 4B FF F8 B9 */	bl VmLoadImmInteger
/* 814564D4 | 7C 6E 1B 78 */	mr r14, r3
/* 814564D8 | 48 00 11 78 */	b .L_81457650
.L_814564DC:
/* 814564DC | 7D E3 7B 78 */	mr r3, r15
/* 814564E0 | 3A A0 00 09 */	li r21, 0x9
/* 814564E4 | 38 80 00 01 */	li r4, 0x1
/* 814564E8 | 38 A0 00 09 */	li r5, 0x9
/* 814564EC | 4B FF F8 69 */	bl VmGetOperandp
/* 814564F0 | 7C 64 1B 78 */	mr r4, r3
/* 814564F4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814564F8 | 38 A0 00 08 */	li r5, 0x8
/* 814564FC | 4B ED 9D 35 */	bl memcpy
/* 81456500 | C8 21 00 28 */	lfd f1, 0x28(r1)
/* 81456504 | 7D E3 7B 78 */	mr r3, r15
/* 81456508 | 38 8F 00 50 */	addi r4, r15, 0x50
/* 8145650C | 4B FF 54 E1 */	bl CHANSVmSetFloat
/* 81456510 | 7C 6E 1B 78 */	mr r14, r3
/* 81456514 | 48 00 11 3C */	b .L_81457650
.L_81456518:
/* 81456518 | 3C 60 81 45 */	lis r3, CHANSVm_8144BB70@ha
/* 8145651C | 3A C0 00 2B */	li r22, 0x2b
/* 81456520 | 3A 83 BB 70 */	addi r20, r3, CHANSVm_8144BB70@l
/* 81456524 | 48 00 00 D0 */	b .L_814565F4
.L_81456528:
/* 81456528 | 3C 60 81 45 */	lis r3, CHANSVm_8144BCC8@ha
/* 8145652C | 3A C0 00 2D */	li r22, 0x2d
/* 81456530 | 3A 83 BC C8 */	addi r20, r3, CHANSVm_8144BCC8@l
/* 81456534 | 48 00 00 C0 */	b .L_814565F4
.L_81456538:
/* 81456538 | 3C 60 81 45 */	lis r3, CHANSVm_8144BD44@ha
/* 8145653C | 3A C0 00 2A */	li r22, 0x2a
/* 81456540 | 3A 83 BD 44 */	addi r20, r3, CHANSVm_8144BD44@l
/* 81456544 | 48 00 00 B0 */	b .L_814565F4
.L_81456548:
/* 81456548 | 3C 60 81 45 */	lis r3, CHANSVm_8144BDD0@ha
/* 8145654C | 3A C0 00 2F */	li r22, 0x2f
/* 81456550 | 3A 83 BD D0 */	addi r20, r3, CHANSVm_8144BDD0@l
/* 81456554 | 48 00 00 A0 */	b .L_814565F4
.L_81456558:
/* 81456558 | 3C 60 81 45 */	lis r3, CHANSVm_8144BE7C@ha
/* 8145655C | 3A C0 00 25 */	li r22, 0x25
/* 81456560 | 3A 83 BE 7C */	addi r20, r3, CHANSVm_8144BE7C@l
/* 81456564 | 48 00 00 90 */	b .L_814565F4
.L_81456568:
/* 81456568 | 3C 60 81 45 */	lis r3, VmBitAnd@ha
/* 8145656C | 3A C0 00 42 */	li r22, 0x42
/* 81456570 | 3A 83 C0 50 */	addi r20, r3, VmBitAnd@l
/* 81456574 | 48 00 00 80 */	b .L_814565F4
.L_81456578:
/* 81456578 | 3C 60 81 45 */	lis r3, VmBitOr@ha
/* 8145657C | 3A C0 00 42 */	li r22, 0x42
/* 81456580 | 3A 83 C0 A4 */	addi r20, r3, VmBitOr@l
/* 81456584 | 48 00 00 70 */	b .L_814565F4
.L_81456588:
/* 81456588 | 3C 60 81 45 */	lis r3, VmBitXor@ha
/* 8145658C | 3A C0 00 42 */	li r22, 0x42
/* 81456590 | 3A 83 C0 F8 */	addi r20, r3, VmBitXor@l
/* 81456594 | 48 00 00 60 */	b .L_814565F4
.L_81456598:
/* 81456598 | 3C 60 81 45 */	lis r3, VmCmpEq@ha
/* 8145659C | 3A C0 00 3D */	li r22, 0x3d
/* 814565A0 | 3A 83 C1 4C */	addi r20, r3, VmCmpEq@l
/* 814565A4 | 48 00 00 50 */	b .L_814565F4
.L_814565A8:
/* 814565A8 | 3C 60 81 45 */	lis r3, VmCmpNeq@ha
/* 814565AC | 3A C0 00 3D */	li r22, 0x3d
/* 814565B0 | 3A 83 C2 F8 */	addi r20, r3, VmCmpNeq@l
/* 814565B4 | 48 00 00 40 */	b .L_814565F4
.L_814565B8:
/* 814565B8 | 3C 60 81 45 */	lis r3, VmCmpLt@ha
/* 814565BC | 3A C0 00 43 */	li r22, 0x43
/* 814565C0 | 3A 83 C3 4C */	addi r20, r3, VmCmpLt@l
/* 814565C4 | 48 00 00 30 */	b .L_814565F4
.L_814565C8:
/* 814565C8 | 3C 60 81 45 */	lis r3, VmCmpGt@ha
/* 814565CC | 3A C0 00 43 */	li r22, 0x43
/* 814565D0 | 3A 83 C4 68 */	addi r20, r3, VmCmpGt@l
/* 814565D4 | 48 00 00 20 */	b .L_814565F4
.L_814565D8:
/* 814565D8 | 3C 60 81 45 */	lis r3, VmCmpLeq@ha
/* 814565DC | 3A C0 00 43 */	li r22, 0x43
/* 814565E0 | 3A 83 C4 78 */	addi r20, r3, VmCmpLeq@l
/* 814565E4 | 48 00 00 10 */	b .L_814565F4
.L_814565E8:
/* 814565E8 | 3C 60 81 45 */	lis r3, VmCmpGeq@ha
/* 814565EC | 3A C0 00 43 */	li r22, 0x43
/* 814565F0 | 3A 83 C5 9C */	addi r20, r3, VmCmpGeq@l
.L_814565F4:
/* 814565F4 | 7D E3 7B 78 */	mr r3, r15
/* 814565F8 | 3A 4F 00 50 */	addi r18, r15, 0x50
/* 814565FC | 3A 21 00 60 */	addi r17, r1, 0x60
/* 81456600 | 3A A0 00 02 */	li r21, 0x2
/* 81456604 | 38 80 00 01 */	li r4, 0x1
/* 81456608 | 38 A0 00 02 */	li r5, 0x2
/* 8145660C | 4B FF F7 49 */	bl VmGetOperandp
/* 81456610 | 7C 65 1B 78 */	mr r5, r3
/* 81456614 | 7D E3 7B 78 */	mr r3, r15
/* 81456618 | 7E 24 8B 78 */	mr r4, r17
/* 8145661C | 38 C0 00 01 */	li r6, 0x1
/* 81456620 | 4B FF F7 69 */	bl VmLoadImmInteger
/* 81456624 | 7C 6E 1B 78 */	mr r14, r3
.L_81456628:
/* 81456628 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 8145662C | 40 82 10 24 */	bne .L_81457650
/* 81456630 | 8B 71 00 08 */	lbz r27, 0x8(r17)
/* 81456634 | 3B 40 00 00 */	li r26, 0x0
/* 81456638 | 89 D2 00 08 */	lbz r14, 0x8(r18)
/* 8145663C | 3B E0 00 00 */	li r31, 0x0
.L_81456640:
/* 81456640 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81456644 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81456648 | 7F 64 DB 78 */	mr r4, r27
/* 8145664C | 7C 63 FA 14 */	add r3, r3, r31
/* 81456650 | 40 82 00 08 */	bne .L_81456658
/* 81456654 | 7D C4 73 78 */	mr r4, r14
.L_81456658:
/* 81456658 | 4B FF 52 19 */	bl VmGetEnumedType
/* 8145665C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456660 | 41 82 00 A8 */	beq .L_81456708
/* 81456664 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81456668 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8145666C | 28 1A 00 02 */	cmplwi r26, 0x2
/* 81456670 | 41 80 FF D0 */	blt .L_81456640
/* 81456674 | 38 16 FF DB */	subi r0, r22, 0x25
/* 81456678 | 28 00 00 2E */	cmplwi r0, 0x2e
/* 8145667C | 41 81 00 44 */	bgt .L_814566C0
/* 81456680 | 3C 60 81 67 */	lis r3, jumptable_8166A0F4@ha
/* 81456684 | 54 00 10 3A */	slwi r0, r0, 2
/* 81456688 | 38 63 A0 F4 */	addi r3, r3, jumptable_8166A0F4@l
/* 8145668C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81456690 | 7C 69 03 A6 */	mtctr r3
/* 81456694 | 4E 80 04 20 */	bctr
.L_81456698:
/* 81456698 | 38 9C 01 60 */	addi r4, r28, 0x160
/* 8145669C | 48 00 00 50 */	b .L_814566EC
.L_814566A0:
/* 814566A0 | 38 9C 01 84 */	addi r4, r28, 0x184
/* 814566A4 | 48 00 00 48 */	b .L_814566EC
.L_814566A8:
/* 814566A8 | 38 9C 01 A8 */	addi r4, r28, 0x1a8
/* 814566AC | 48 00 00 40 */	b .L_814566EC
.L_814566B0:
/* 814566B0 | 38 9C 01 CC */	addi r4, r28, 0x1cc
/* 814566B4 | 48 00 00 38 */	b .L_814566EC
.L_814566B8:
/* 814566B8 | 38 9C 01 F0 */	addi r4, r28, 0x1f0
/* 814566BC | 48 00 00 30 */	b .L_814566EC
.L_814566C0:
/* 814566C0 | 80 0D AD 18 */	lwz r0, CHANSVmDebugVerboseMode@sda21(r0)
/* 814566C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814566C8 | 41 82 00 40 */	beq .L_81456708
/* 814566CC | 3C 60 81 67 */	lis r3, lbl_8166A0B0@ha
/* 814566D0 | 3C 80 81 67 */	lis r4, lbl_81669128@ha
/* 814566D4 | 7E C5 B3 78 */	mr r5, r22
/* 814566D8 | 38 63 A0 B0 */	addi r3, r3, lbl_8166A0B0@l
/* 814566DC | 38 84 91 28 */	addi r4, r4, lbl_81669128@l
/* 814566E0 | 4C C6 31 82 */	crclr cr1eq
/* 814566E4 | 4B FF 3E C9 */	bl CHANSVmDebugPrintf
/* 814566E8 | 48 00 00 20 */	b .L_81456708
.L_814566EC:
/* 814566EC | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 814566F0 | 39 C0 00 00 */	li r14, 0x0
/* 814566F4 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 814566F8 | 1C 00 00 06 */	mulli r0, r0, 0x6
/* 814566FC | 7C 04 02 14 */	add r0, r4, r0
/* 81456700 | 7E 63 00 AE */	lbzx r19, r3, r0
/* 81456704 | 48 00 00 08 */	b .L_8145670C
.L_81456708:
/* 81456708 | 39 C0 FC 21 */	li r14, -0x3df
.L_8145670C:
/* 8145670C | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 81456710 | 40 82 0F 40 */	bne .L_81457650
/* 81456714 | 28 16 00 43 */	cmplwi r22, 0x43
/* 81456718 | 41 82 00 0C */	beq .L_81456724
/* 8145671C | 28 16 00 3D */	cmplwi r22, 0x3d
/* 81456720 | 40 82 00 0C */	bne .L_8145672C
.L_81456724:
/* 81456724 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 81456728 | 41 82 00 2C */	beq .L_81456754
.L_8145672C:
/* 8145672C | 7D E3 7B 78 */	mr r3, r15
/* 81456730 | 7E 64 9B 78 */	mr r4, r19
/* 81456734 | 7E 45 93 78 */	mr r5, r18
/* 81456738 | 4B FF 51 A5 */	bl CHANSVmConvertObjectType
/* 8145673C | 7C 72 1B 78 */	mr r18, r3
/* 81456740 | 7D E3 7B 78 */	mr r3, r15
/* 81456744 | 7E 64 9B 78 */	mr r4, r19
/* 81456748 | 7E 25 8B 78 */	mr r5, r17
/* 8145674C | 4B FF 51 91 */	bl CHANSVmConvertObjectType
/* 81456750 | 7C 71 1B 78 */	mr r17, r3
.L_81456754:
/* 81456754 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81456758 | 41 82 00 0C */	beq .L_81456764
/* 8145675C | 2C 11 00 00 */	cmpwi r17, 0x0
/* 81456760 | 40 82 00 0C */	bne .L_8145676C
.L_81456764:
/* 81456764 | 38 60 FC 21 */	li r3, -0x3df
/* 81456768 | 48 00 0F 50 */	b .L_814576B8
.L_8145676C:
/* 8145676C | 7E 8C A3 78 */	mr r12, r20
/* 81456770 | 7D E3 7B 78 */	mr r3, r15
/* 81456774 | 7E 64 9B 78 */	mr r4, r19
/* 81456778 | 7E 46 93 78 */	mr r6, r18
/* 8145677C | 7E 27 8B 78 */	mr r7, r17
/* 81456780 | 38 AF 00 50 */	addi r5, r15, 0x50
/* 81456784 | 7D 89 03 A6 */	mtctr r12
/* 81456788 | 4E 80 04 21 */	bctrl
/* 8145678C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456790 | 7C 6E 1B 78 */	mr r14, r3
/* 81456794 | 40 82 0E BC */	bne .L_81457650
/* 81456798 | 7D E3 7B 78 */	mr r3, r15
/* 8145679C | 38 81 00 60 */	addi r4, r1, 0x60
/* 814567A0 | 4B FF 43 B5 */	bl CHANSVmDeleteObject
/* 814567A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814567A8 | 7C 6E 1B 78 */	mr r14, r3
/* 814567AC | 40 82 00 50 */	bne .L_814567FC
/* 814567B0 | 38 0F 00 50 */	addi r0, r15, 0x50
/* 814567B4 | 7C 12 00 40 */	cmplw r18, r0
/* 814567B8 | 41 82 00 44 */	beq .L_814567FC
/* 814567BC | 38 01 00 60 */	addi r0, r1, 0x60
/* 814567C0 | 7C 12 00 40 */	cmplw r18, r0
/* 814567C4 | 41 82 00 38 */	beq .L_814567FC
/* 814567C8 | 88 12 00 09 */	lbz r0, 0x9(r18)
/* 814567CC | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 814567D0 | 40 82 00 2C */	bne .L_814567FC
/* 814567D4 | 7D E3 7B 78 */	mr r3, r15
/* 814567D8 | 7E 44 93 78 */	mr r4, r18
/* 814567DC | 4B FF 43 79 */	bl CHANSVmDeleteObject
/* 814567E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814567E4 | 7C 6E 1B 78 */	mr r14, r3
/* 814567E8 | 40 82 00 14 */	bne .L_814567FC
/* 814567EC | 7D E3 7B 78 */	mr r3, r15
/* 814567F0 | 7E 44 93 78 */	mr r4, r18
/* 814567F4 | 38 A0 00 20 */	li r5, 0x20
/* 814567F8 | 4B FF 41 89 */	bl VmFree
.L_814567FC:
/* 814567FC | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 81456800 | 40 82 0E 50 */	bne .L_81457650
/* 81456804 | 38 0F 00 50 */	addi r0, r15, 0x50
/* 81456808 | 7C 11 00 40 */	cmplw r17, r0
/* 8145680C | 41 82 0E 44 */	beq .L_81457650
/* 81456810 | 38 01 00 60 */	addi r0, r1, 0x60
/* 81456814 | 7C 11 00 40 */	cmplw r17, r0
/* 81456818 | 41 82 0E 38 */	beq .L_81457650
/* 8145681C | 88 11 00 09 */	lbz r0, 0x9(r17)
/* 81456820 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81456824 | 40 82 0E 2C */	bne .L_81457650
/* 81456828 | 7D E3 7B 78 */	mr r3, r15
/* 8145682C | 7E 24 8B 78 */	mr r4, r17
/* 81456830 | 4B FF 43 25 */	bl CHANSVmDeleteObject
/* 81456834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456838 | 7C 6E 1B 78 */	mr r14, r3
/* 8145683C | 40 82 0E 14 */	bne .L_81457650
/* 81456840 | 7D E3 7B 78 */	mr r3, r15
/* 81456844 | 7E 24 8B 78 */	mr r4, r17
/* 81456848 | 38 A0 00 20 */	li r5, 0x20
/* 8145684C | 4B FF 41 35 */	bl VmFree
/* 81456850 | 48 00 0E 00 */	b .L_81457650
.L_81456854:
/* 81456854 | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 81456858 | 38 00 FF FF */	li r0, -0x1
/* 8145685C | 38 80 00 00 */	li r4, 0x0
/* 81456860 | 7C 03 00 40 */	cmplw r3, r0
/* 81456864 | 40 80 00 44 */	bge .L_814568A8
/* 81456868 | 7D E3 7B 78 */	mr r3, r15
/* 8145686C | 38 80 00 01 */	li r4, 0x1
/* 81456870 | 4B FF 3F D1 */	bl VmNewObjHdr
/* 81456874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456878 | 7C 64 1B 78 */	mr r4, r3
/* 8145687C | 41 82 00 2C */	beq .L_814568A8
/* 81456880 | 7D E3 7B 78 */	mr r3, r15
/* 81456884 | 38 AF 00 50 */	addi r5, r15, 0x50
/* 81456888 | 4B FF 46 11 */	bl CHANSVmCopyObject
/* 8145688C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456890 | 7C 64 1B 78 */	mr r4, r3
/* 81456894 | 41 82 00 14 */	beq .L_814568A8
/* 81456898 | 80 AF 00 60 */	lwz r5, 0x60(r15)
/* 8145689C | 80 65 00 0C */	lwz r3, 0xc(r5)
/* 814568A0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814568A4 | 90 05 00 0C */	stw r0, 0xc(r5)
.L_814568A8:
/* 814568A8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814568AC | 40 82 00 0C */	bne .L_814568B8
/* 814568B0 | 39 C0 FC 1A */	li r14, -0x3e6
/* 814568B4 | 48 00 0D 9C */	b .L_81457650
.L_814568B8:
/* 814568B8 | 39 C0 00 00 */	li r14, 0x0
/* 814568BC | 48 00 0D 94 */	b .L_81457650
.L_814568C0:
/* 814568C0 | 7D E3 7B 78 */	mr r3, r15
/* 814568C4 | 38 8F 00 50 */	addi r4, r15, 0x50
/* 814568C8 | 4B FF 46 B1 */	bl VmPopObject
/* 814568CC | 7C 6E 1B 78 */	mr r14, r3
/* 814568D0 | 48 00 0D 80 */	b .L_81457650
.L_814568D4:
/* 814568D4 | 3C 60 81 45 */	lis r3, CHANSVm_8144BB70@ha
/* 814568D8 | 3A C0 00 2B */	li r22, 0x2b
/* 814568DC | 3A 83 BB 70 */	addi r20, r3, CHANSVm_8144BB70@l
/* 814568E0 | 48 00 00 F0 */	b .L_814569D0
.L_814568E4:
/* 814568E4 | 3C 60 81 45 */	lis r3, CHANSVm_8144BCC8@ha
/* 814568E8 | 3A C0 00 2D */	li r22, 0x2d
/* 814568EC | 3A 83 BC C8 */	addi r20, r3, CHANSVm_8144BCC8@l
/* 814568F0 | 48 00 00 E0 */	b .L_814569D0
.L_814568F4:
/* 814568F4 | 3C 60 81 45 */	lis r3, CHANSVm_8144BD44@ha
/* 814568F8 | 3A C0 00 2A */	li r22, 0x2a
/* 814568FC | 3A 83 BD 44 */	addi r20, r3, CHANSVm_8144BD44@l
/* 81456900 | 48 00 00 D0 */	b .L_814569D0
.L_81456904:
/* 81456904 | 3C 60 81 45 */	lis r3, CHANSVm_8144BDD0@ha
/* 81456908 | 3A C0 00 2F */	li r22, 0x2f
/* 8145690C | 3A 83 BD D0 */	addi r20, r3, CHANSVm_8144BDD0@l
/* 81456910 | 48 00 00 C0 */	b .L_814569D0
.L_81456914:
/* 81456914 | 3C 60 81 45 */	lis r3, CHANSVm_8144BE7C@ha
/* 81456918 | 3A C0 00 25 */	li r22, 0x25
/* 8145691C | 3A 83 BE 7C */	addi r20, r3, CHANSVm_8144BE7C@l
/* 81456920 | 48 00 00 B0 */	b .L_814569D0
.L_81456924:
/* 81456924 | 3C 60 81 45 */	lis r3, VmBitAnd@ha
/* 81456928 | 3A C0 00 42 */	li r22, 0x42
/* 8145692C | 3A 83 C0 50 */	addi r20, r3, VmBitAnd@l
/* 81456930 | 48 00 00 A0 */	b .L_814569D0
.L_81456934:
/* 81456934 | 3C 60 81 45 */	lis r3, VmBitOr@ha
/* 81456938 | 3A C0 00 42 */	li r22, 0x42
/* 8145693C | 3A 83 C0 A4 */	addi r20, r3, VmBitOr@l
/* 81456940 | 48 00 00 90 */	b .L_814569D0
.L_81456944:
/* 81456944 | 3C 60 81 45 */	lis r3, VmBitXor@ha
/* 81456948 | 3A C0 00 42 */	li r22, 0x42
/* 8145694C | 3A 83 C0 F8 */	addi r20, r3, VmBitXor@l
/* 81456950 | 48 00 00 80 */	b .L_814569D0
.L_81456954:
/* 81456954 | 3C 60 81 45 */	lis r3, VmULShift@ha
/* 81456958 | 3A C0 00 53 */	li r22, 0x53
/* 8145695C | 3A 83 BF 24 */	addi r20, r3, VmULShift@l
/* 81456960 | 48 00 00 70 */	b .L_814569D0
.L_81456964:
/* 81456964 | 3C 60 81 45 */	lis r3, VmARShift@ha
/* 81456968 | 3A C0 00 53 */	li r22, 0x53
/* 8145696C | 3A 83 BF B8 */	addi r20, r3, VmARShift@l
/* 81456970 | 48 00 00 60 */	b .L_814569D0
.L_81456974:
/* 81456974 | 3C 60 81 45 */	lis r3, VmCmpEq@ha
/* 81456978 | 3A C0 00 43 */	li r22, 0x43
/* 8145697C | 3A 83 C1 4C */	addi r20, r3, VmCmpEq@l
/* 81456980 | 48 00 00 50 */	b .L_814569D0
.L_81456984:
/* 81456984 | 3C 60 81 45 */	lis r3, VmCmpNeq@ha
/* 81456988 | 3A C0 00 43 */	li r22, 0x43
/* 8145698C | 3A 83 C2 F8 */	addi r20, r3, VmCmpNeq@l
/* 81456990 | 48 00 00 40 */	b .L_814569D0
.L_81456994:
/* 81456994 | 3C 60 81 45 */	lis r3, VmCmpLt@ha
/* 81456998 | 3A C0 00 43 */	li r22, 0x43
/* 8145699C | 3A 83 C3 4C */	addi r20, r3, VmCmpLt@l
/* 814569A0 | 48 00 00 30 */	b .L_814569D0
.L_814569A4:
/* 814569A4 | 3C 60 81 45 */	lis r3, VmCmpGt@ha
/* 814569A8 | 3A C0 00 43 */	li r22, 0x43
/* 814569AC | 3A 83 C4 68 */	addi r20, r3, VmCmpGt@l
/* 814569B0 | 48 00 00 20 */	b .L_814569D0
.L_814569B4:
/* 814569B4 | 3C 60 81 45 */	lis r3, VmCmpLeq@ha
/* 814569B8 | 3A C0 00 43 */	li r22, 0x43
/* 814569BC | 3A 83 C4 78 */	addi r20, r3, VmCmpLeq@l
/* 814569C0 | 48 00 00 10 */	b .L_814569D0
.L_814569C4:
/* 814569C4 | 3C 60 81 45 */	lis r3, VmCmpGeq@ha
/* 814569C8 | 3A C0 00 43 */	li r22, 0x43
/* 814569CC | 3A 83 C5 9C */	addi r20, r3, VmCmpGeq@l
.L_814569D0:
/* 814569D0 | 3A 41 00 60 */	addi r18, r1, 0x60
/* 814569D4 | 7D E3 7B 78 */	mr r3, r15
/* 814569D8 | 7E 44 93 78 */	mr r4, r18
/* 814569DC | 3A 2F 00 50 */	addi r17, r15, 0x50
/* 814569E0 | 4B FF 45 99 */	bl VmPopObject
/* 814569E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814569E8 | 7C 6E 1B 78 */	mr r14, r3
/* 814569EC | 40 82 0C 64 */	bne .L_81457650
/* 814569F0 | 4B FF FC 38 */	b .L_81456628
.L_814569F4:
/* 814569F4 | 7D E3 7B 78 */	mr r3, r15
/* 814569F8 | 38 8F 00 50 */	addi r4, r15, 0x50
/* 814569FC | 4B FF 41 59 */	bl CHANSVmDeleteObject
/* 81456A00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456A04 | 7C 6E 1B 78 */	mr r14, r3
/* 81456A08 | 40 82 00 14 */	bne .L_81456A1C
/* 81456A0C | 7D E3 7B 78 */	mr r3, r15
/* 81456A10 | 38 80 00 00 */	li r4, 0x0
/* 81456A14 | 4B FF EE 79 */	bl VmReturnWithValue
/* 81456A18 | 7C 6E 1B 78 */	mr r14, r3
.L_81456A1C:
/* 81456A1C | 3A A0 00 00 */	li r21, 0x0
/* 81456A20 | 48 00 0C 30 */	b .L_81457650
.L_81456A24:
/* 81456A24 | 7D E3 7B 78 */	mr r3, r15
/* 81456A28 | 38 80 00 00 */	li r4, 0x0
/* 81456A2C | 4B FF EE 61 */	bl VmReturnWithValue
/* 81456A30 | 7C 6E 1B 78 */	mr r14, r3
/* 81456A34 | 3A A0 00 00 */	li r21, 0x0
/* 81456A38 | 48 00 0C 18 */	b .L_81457650
.L_81456A3C:
/* 81456A3C | 88 0F 00 58 */	lbz r0, 0x58(r15)
/* 81456A40 | 39 CF 00 50 */	addi r14, r15, 0x50
/* 81456A44 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81456A48 | 41 82 00 38 */	beq .L_81456A80
/* 81456A4C | 40 80 00 14 */	bge .L_81456A60
/* 81456A50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81456A54 | 41 82 00 7C */	beq .L_81456AD0
/* 81456A58 | 40 80 00 14 */	bge .L_81456A6C
/* 81456A5C | 48 00 00 74 */	b .L_81456AD0
.L_81456A60:
/* 81456A60 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81456A64 | 40 80 00 6C */	bge .L_81456AD0
/* 81456A68 | 48 00 00 44 */	b .L_81456AAC
.L_81456A6C:
/* 81456A6C | 80 0E 00 00 */	lwz r0, 0x0(r14)
/* 81456A70 | 80 6E 00 04 */	lwz r3, 0x4(r14)
/* 81456A74 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81456A78 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81456A7C | 48 00 00 5C */	b .L_81456AD8
.L_81456A80:
/* 81456A80 | C8 0E 00 00 */	lfd f0, 0x0(r14)
/* 81456A84 | FC 20 02 10 */	fabs f1, f0
/* 81456A88 | 48 1B 5E 09 */	bl floor
/* 81456A8C | FF A0 08 90 */	fmr f29, f1
/* 81456A90 | C8 2E 00 00 */	lfd f1, 0x0(r14)
/* 81456A94 | 4B FF 47 45 */	bl CHANSVm_8144B1D8
/* 81456A98 | FC 21 07 72 */	fmul f1, f1, f29
/* 81456A9C | 48 1A 30 F9 */	bl __cvt_dbl_usll
/* 81456AA0 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 81456AA4 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81456AA8 | 48 00 00 30 */	b .L_81456AD8
.L_81456AAC:
/* 81456AAC | 7D C3 73 78 */	mr r3, r14
/* 81456AB0 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81456AB4 | 38 80 00 00 */	li r4, 0x0
/* 81456AB8 | 4B FF 47 91 */	bl VmParseInt
/* 81456ABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456AC0 | 40 82 00 18 */	bne .L_81456AD8
/* 81456AC4 | 93 A1 00 1C */	stw r29, 0x1c(r1)
/* 81456AC8 | 93 A1 00 18 */	stw r29, 0x18(r1)
/* 81456ACC | 48 00 00 0C */	b .L_81456AD8
.L_81456AD0:
/* 81456AD0 | 93 A1 00 1C */	stw r29, 0x1c(r1)
/* 81456AD4 | 93 A1 00 18 */	stw r29, 0x18(r1)
.L_81456AD8:
/* 81456AD8 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81456ADC | 7D E3 7B 78 */	mr r3, r15
/* 81456AE0 | 80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 81456AE4 | 7D C4 73 78 */	mr r4, r14
/* 81456AE8 | 7C 05 00 F8 */	nor r5, r0, r0
/* 81456AEC | 7C C6 30 F8 */	nor r6, r6, r6
/* 81456AF0 | 4B FF 4E A9 */	bl CHANSVmSetInteger
/* 81456AF4 | 7C 6E 1B 78 */	mr r14, r3
/* 81456AF8 | 48 00 0B 58 */	b .L_81457650
.L_81456AFC:
/* 81456AFC | 39 CF 00 50 */	addi r14, r15, 0x50
/* 81456B00 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81456B04 | 7D C4 73 78 */	mr r4, r14
/* 81456B08 | 4B FF 5A A5 */	bl CHANSVmGetBoolean
/* 81456B0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456B10 | 40 82 00 20 */	bne .L_81456B30
/* 81456B14 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81456B18 | 7D E3 7B 78 */	mr r3, r15
/* 81456B1C | 7D C4 73 78 */	mr r4, r14
/* 81456B20 | 7C 00 00 34 */	cntlzw r0, r0
/* 81456B24 | 54 06 D9 7E */	srwi r6, r0, 5
/* 81456B28 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81456B2C | 4B FF 4E 6D */	bl CHANSVmSetInteger
.L_81456B30:
/* 81456B30 | 7C 6E 1B 78 */	mr r14, r3
/* 81456B34 | 48 00 0B 1C */	b .L_81457650
.L_81456B38:
/* 81456B38 | 88 0F 00 58 */	lbz r0, 0x58(r15)
/* 81456B3C | 3A 2F 00 50 */	addi r17, r15, 0x50
/* 81456B40 | 39 C0 FC 4C */	li r14, -0x3b4
/* 81456B44 | 28 00 00 05 */	cmplwi r0, 0x5
/* 81456B48 | 40 82 0B 08 */	bne .L_81457650
/* 81456B4C | 7D E3 7B 78 */	mr r3, r15
/* 81456B50 | 38 81 00 50 */	addi r4, r1, 0x50
/* 81456B54 | 7E 25 8B 78 */	mr r5, r17
/* 81456B58 | 4B FF 43 41 */	bl CHANSVmCopyObject
/* 81456B5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456B60 | 41 82 0A F0 */	beq .L_81457650
/* 81456B64 | 80 A1 00 54 */	lwz r5, 0x54(r1)
/* 81456B68 | 7D E3 7B 78 */	mr r3, r15
/* 81456B6C | 38 81 00 50 */	addi r4, r1, 0x50
/* 81456B70 | 38 C0 00 00 */	li r6, 0x0
/* 81456B74 | 4B FF 66 ED */	bl CHANSVm_8144D260
/* 81456B78 | 7C 65 1B 78 */	mr r5, r3
/* 81456B7C | 7D E3 7B 78 */	mr r3, r15
/* 81456B80 | 7E 24 8B 78 */	mr r4, r17
/* 81456B84 | 4B FF F2 49 */	bl CHANSVm_81455DCC
/* 81456B88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456B8C | 7C 6E 1B 78 */	mr r14, r3
/* 81456B90 | 40 82 0A C0 */	bne .L_81457650
/* 81456B94 | 7D E3 7B 78 */	mr r3, r15
/* 81456B98 | 38 81 00 50 */	addi r4, r1, 0x50
/* 81456B9C | 4B FF 3F B9 */	bl CHANSVmDeleteObject
/* 81456BA0 | 7C 6E 1B 78 */	mr r14, r3
/* 81456BA4 | 48 00 0A AC */	b .L_81457650
.L_81456BA8:
/* 81456BA8 | 7D E3 7B 78 */	mr r3, r15
/* 81456BAC | 38 80 00 01 */	li r4, 0x1
/* 81456BB0 | 38 A0 00 04 */	li r5, 0x4
/* 81456BB4 | 4B FF F1 A1 */	bl VmGetOperandp
/* 81456BB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456BBC | 40 82 00 0C */	bne .L_81456BC8
/* 81456BC0 | 38 60 FC 1D */	li r3, -0x3e3
/* 81456BC4 | 48 00 0A F4 */	b .L_814576B8
.L_81456BC8:
/* 81456BC8 | 7D E3 7B 78 */	mr r3, r15
/* 81456BCC | 38 80 00 04 */	li r4, 0x4
/* 81456BD0 | 38 A0 00 00 */	li r5, 0x0
/* 81456BD4 | 38 C0 00 00 */	li r6, 0x0
/* 81456BD8 | 4B FF F3 09 */	bl VmCallMethod
/* 81456BDC | 7C 6E 1B 78 */	mr r14, r3
/* 81456BE0 | 3A A0 00 00 */	li r21, 0x0
/* 81456BE4 | 48 00 0A 6C */	b .L_81457650
.L_81456BE8:
/* 81456BE8 | 88 0F 00 58 */	lbz r0, 0x58(r15)
/* 81456BEC | 28 00 00 07 */	cmplwi r0, 0x7
/* 81456BF0 | 40 82 00 0C */	bne .L_81456BFC
/* 81456BF4 | 39 C0 00 01 */	li r14, 0x1
/* 81456BF8 | 48 00 00 10 */	b .L_81456C08
.L_81456BFC:
/* 81456BFC | 39 C0 FC 5E */	li r14, -0x3a2
/* 81456C00 | 48 00 0A 50 */	b .L_81457650
.L_81456C04:
/* 81456C04 | 39 C0 00 00 */	li r14, 0x0
.L_81456C08:
/* 81456C08 | 7D E3 7B 78 */	mr r3, r15
/* 81456C0C | 38 80 00 01 */	li r4, 0x1
/* 81456C10 | 38 A0 00 02 */	li r5, 0x2
/* 81456C14 | 4B FF F1 41 */	bl VmGetOperandp
/* 81456C18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456C1C | 40 82 00 0C */	bne .L_81456C28
/* 81456C20 | 38 60 FC 1D */	li r3, -0x3e3
/* 81456C24 | 48 00 0A 94 */	b .L_814576B8
.L_81456C28:
/* 81456C28 | 7D E3 7B 78 */	mr r3, r15
/* 81456C2C | 7D C6 73 78 */	mr r6, r14
/* 81456C30 | 38 80 00 02 */	li r4, 0x2
/* 81456C34 | 38 A0 00 01 */	li r5, 0x1
/* 81456C38 | 4B FF F2 A9 */	bl VmCallMethod
/* 81456C3C | 7C 6E 1B 78 */	mr r14, r3
/* 81456C40 | 3A A0 00 00 */	li r21, 0x0
/* 81456C44 | 48 00 0A 0C */	b .L_81457650
.L_81456C48:
/* 81456C48 | 7D E3 7B 78 */	mr r3, r15
/* 81456C4C | 38 80 00 01 */	li r4, 0x1
/* 81456C50 | 38 A0 00 03 */	li r5, 0x3
/* 81456C54 | 4B FF F1 01 */	bl VmGetOperandp
/* 81456C58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456C5C | 40 82 00 0C */	bne .L_81456C68
/* 81456C60 | 38 60 FC 1D */	li r3, -0x3e3
/* 81456C64 | 48 00 0A 54 */	b .L_814576B8
.L_81456C68:
/* 81456C68 | 28 12 00 32 */	cmplwi r18, 0x32
/* 81456C6C | 7D E3 7B 78 */	mr r3, r15
/* 81456C70 | 38 80 00 03 */	li r4, 0x3
/* 81456C74 | 38 A0 00 03 */	li r5, 0x3
/* 81456C78 | 40 82 00 08 */	bne .L_81456C80
/* 81456C7C | 38 A0 00 02 */	li r5, 0x2
.L_81456C80:
/* 81456C80 | 38 C0 00 00 */	li r6, 0x0
/* 81456C84 | 4B FF F2 5D */	bl VmCallMethod
/* 81456C88 | 7C 6E 1B 78 */	mr r14, r3
/* 81456C8C | 3A A0 00 00 */	li r21, 0x0
/* 81456C90 | 48 00 09 C0 */	b .L_81457650
.L_81456C94:
/* 81456C94 | 88 0F 00 58 */	lbz r0, 0x58(r15)
/* 81456C98 | 3A 2F 00 50 */	addi r17, r15, 0x50
/* 81456C9C | 39 C0 FC 4E */	li r14, -0x3b2
/* 81456CA0 | 28 00 00 05 */	cmplwi r0, 0x5
/* 81456CA4 | 40 82 09 AC */	bne .L_81457650
/* 81456CA8 | 7D E3 7B 78 */	mr r3, r15
/* 81456CAC | 38 81 00 40 */	addi r4, r1, 0x40
/* 81456CB0 | 7E 25 8B 78 */	mr r5, r17
/* 81456CB4 | 4B FF 41 E5 */	bl CHANSVmCopyObject
/* 81456CB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456CBC | 41 82 09 94 */	beq .L_81457650
/* 81456CC0 | 7D E3 7B 78 */	mr r3, r15
/* 81456CC4 | 7E 24 8B 78 */	mr r4, r17
/* 81456CC8 | 4B FF 42 B1 */	bl VmPopObject
/* 81456CCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456CD0 | 7C 6E 1B 78 */	mr r14, r3
/* 81456CD4 | 40 82 09 7C */	bne .L_81457650
/* 81456CD8 | 80 A1 00 44 */	lwz r5, 0x44(r1)
/* 81456CDC | 7D E3 7B 78 */	mr r3, r15
/* 81456CE0 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81456CE4 | 38 C0 00 01 */	li r6, 0x1
/* 81456CE8 | 4B FF 65 79 */	bl CHANSVm_8144D260
/* 81456CEC | 7C 64 1B 78 */	mr r4, r3
/* 81456CF0 | 7D E3 7B 78 */	mr r3, r15
/* 81456CF4 | 7E 25 8B 78 */	mr r5, r17
/* 81456CF8 | 4B FF F0 D5 */	bl CHANSVm_81455DCC
/* 81456CFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456D00 | 7C 6E 1B 78 */	mr r14, r3
/* 81456D04 | 40 82 09 4C */	bne .L_81457650
/* 81456D08 | 7D E3 7B 78 */	mr r3, r15
/* 81456D0C | 38 81 00 40 */	addi r4, r1, 0x40
/* 81456D10 | 4B FF 3E 45 */	bl CHANSVmDeleteObject
/* 81456D14 | 7C 6E 1B 78 */	mr r14, r3
/* 81456D18 | 48 00 09 38 */	b .L_81457650
.L_81456D1C:
/* 81456D1C | 7D E3 7B 78 */	mr r3, r15
/* 81456D20 | 3A A0 00 03 */	li r21, 0x3
/* 81456D24 | 38 80 00 01 */	li r4, 0x1
/* 81456D28 | 38 A0 00 03 */	li r5, 0x3
/* 81456D2C | 4B FF F0 29 */	bl VmGetOperandp
/* 81456D30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456D34 | 7C 71 1B 78 */	mr r17, r3
/* 81456D38 | 40 82 00 0C */	bne .L_81456D44
/* 81456D3C | 38 60 FC 1D */	li r3, -0x3e3
/* 81456D40 | 48 00 09 78 */	b .L_814576B8
.L_81456D44:
/* 81456D44 | 39 CF 00 50 */	addi r14, r15, 0x50
/* 81456D48 | 7D E3 7B 78 */	mr r3, r15
/* 81456D4C | 7D C4 73 78 */	mr r4, r14
/* 81456D50 | 4B FF 3E 05 */	bl CHANSVmDeleteObject
/* 81456D54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456D58 | 40 82 00 60 */	bne .L_81456DB8
/* 81456D5C | 80 AF 00 60 */	lwz r5, 0x60(r15)
/* 81456D60 | 88 11 00 00 */	lbz r0, 0x0(r17)
/* 81456D64 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 81456D68 | 88 D1 00 01 */	lbz r6, 0x1(r17)
/* 81456D6C | 50 06 44 2E */	rlwimi r6, r0, 8, 16, 23
/* 81456D70 | 80 04 00 30 */	lwz r0, 0x30(r4)
/* 81456D74 | 7C 06 00 40 */	cmplw r6, r0
/* 81456D78 | 40 80 00 18 */	bge .L_81456D90
/* 81456D7C | 80 84 00 3C */	lwz r4, 0x3c(r4)
/* 81456D80 | 54 C6 20 36 */	slwi r6, r6, 4
/* 81456D84 | 7C 04 30 2E */	lwzx r0, r4, r6
/* 81456D88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81456D8C | 40 82 00 0C */	bne .L_81456D98
.L_81456D90:
/* 81456D90 | 38 60 FC 4F */	li r3, -0x3b1
/* 81456D94 | 48 00 00 24 */	b .L_81456DB8
.L_81456D98:
/* 81456D98 | 38 00 00 03 */	li r0, 0x3
/* 81456D9C | 98 0E 00 08 */	stb r0, 0x8(r14)
/* 81456DA0 | 38 00 00 01 */	li r0, 0x1
/* 81456DA4 | 98 0E 00 0A */	stb r0, 0xa(r14)
/* 81456DA8 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 81456DAC | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 81456DB0 | 7C 00 32 14 */	add r0, r0, r6
/* 81456DB4 | 90 0E 00 00 */	stw r0, 0x0(r14)
.L_81456DB8:
/* 81456DB8 | 7C 6E 1B 78 */	mr r14, r3
/* 81456DBC | 48 00 08 94 */	b .L_81457650
.L_81456DC0:
/* 81456DC0 | 3A 2F 00 50 */	addi r17, r15, 0x50
/* 81456DC4 | 7D E3 7B 78 */	mr r3, r15
/* 81456DC8 | 7F 04 C3 78 */	mr r4, r24
/* 81456DCC | 39 C0 FC 52 */	li r14, -0x3ae
/* 81456DD0 | 7E 25 8B 78 */	mr r5, r17
/* 81456DD4 | 4B FF 40 C5 */	bl CHANSVmCopyObject
/* 81456DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456DDC | 41 82 00 DC */	beq .L_81456EB8
/* 81456DE0 | 7D E3 7B 78 */	mr r3, r15
/* 81456DE4 | 7E 24 8B 78 */	mr r4, r17
/* 81456DE8 | 4B FF 41 91 */	bl VmPopObject
/* 81456DEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456DF0 | 7C 6E 1B 78 */	mr r14, r3
/* 81456DF4 | 40 82 00 C4 */	bne .L_81456EB8
/* 81456DF8 | 88 11 00 08 */	lbz r0, 0x8(r17)
/* 81456DFC | 28 00 00 04 */	cmplwi r0, 0x4
/* 81456E00 | 40 82 00 B4 */	bne .L_81456EB4
/* 81456E04 | 88 01 00 38 */	lbz r0, 0x38(r1)
/* 81456E08 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81456E0C | 41 82 00 44 */	beq .L_81456E50
/* 81456E10 | 40 80 00 10 */	bge .L_81456E20
/* 81456E14 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81456E18 | 40 80 00 14 */	bge .L_81456E2C
/* 81456E1C | 48 00 00 98 */	b .L_81456EB4
.L_81456E20:
/* 81456E20 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81456E24 | 40 80 00 90 */	bge .L_81456EB4
/* 81456E28 | 48 00 00 50 */	b .L_81456E78
.L_81456E2C:
/* 81456E2C | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 81456E30 | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 81456E34 | 7C 04 F0 10 */	subfc r0, r4, r30
/* 81456E38 | 7C 03 E9 10 */	subfe r0, r3, r29
/* 81456E3C | 7C 1E F1 10 */	subfe r0, r30, r30
/* 81456E40 | 7C 00 00 D1 */	neg. r0, r0
/* 81456E44 | 40 82 00 70 */	bne .L_81456EB4
/* 81456E48 | 7C 99 23 78 */	mr r25, r4
/* 81456E4C | 48 00 00 6C */	b .L_81456EB8
.L_81456E50:
/* 81456E50 | C8 21 00 30 */	lfd f1, 0x30(r1)
/* 81456E54 | FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 81456E58 | 4C 41 13 82 */	cror eq, gt, eq
/* 81456E5C | 40 82 00 58 */	bne .L_81456EB4
/* 81456E60 | FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 81456E64 | 4C 40 13 82 */	cror eq, lt, eq
/* 81456E68 | 40 82 00 4C */	bne .L_81456EB4
/* 81456E6C | 48 1A 25 2D */	bl __cvt_fp2unsigned
/* 81456E70 | 7C 79 1B 78 */	mr r25, r3
/* 81456E74 | 48 00 00 44 */	b .L_81456EB8
.L_81456E78:
/* 81456E78 | 7F 03 C3 78 */	mr r3, r24
/* 81456E7C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81456E80 | 38 80 00 0A */	li r4, 0xa
/* 81456E84 | 4B FF 43 C5 */	bl VmParseInt
/* 81456E88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456E8C | 41 82 00 28 */	beq .L_81456EB4
/* 81456E90 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 81456E94 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81456E98 | 7C 04 F0 10 */	subfc r0, r4, r30
/* 81456E9C | 7C 03 E9 10 */	subfe r0, r3, r29
/* 81456EA0 | 7C 1E F1 10 */	subfe r0, r30, r30
/* 81456EA4 | 7C 00 00 D1 */	neg. r0, r0
/* 81456EA8 | 40 82 00 0C */	bne .L_81456EB4
/* 81456EAC | 7C 99 23 78 */	mr r25, r4
/* 81456EB0 | 48 00 00 08 */	b .L_81456EB8
.L_81456EB4:
/* 81456EB4 | 39 C0 FC 52 */	li r14, -0x3ae
.L_81456EB8:
/* 81456EB8 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 81456EBC | 40 82 07 94 */	bne .L_81457650
/* 81456EC0 | 38 00 00 05 */	li r0, 0x5
/* 81456EC4 | 93 31 00 04 */	stw r25, 0x4(r17)
/* 81456EC8 | 7D E3 7B 78 */	mr r3, r15
/* 81456ECC | 7F 04 C3 78 */	mr r4, r24
/* 81456ED0 | 98 11 00 08 */	stb r0, 0x8(r17)
/* 81456ED4 | 4B FF 3C 81 */	bl CHANSVmDeleteObject
/* 81456ED8 | 7C 6E 1B 78 */	mr r14, r3
/* 81456EDC | 48 00 07 74 */	b .L_81457650
.L_81456EE0:
/* 81456EE0 | 7D E3 7B 78 */	mr r3, r15
/* 81456EE4 | 3A A0 00 05 */	li r21, 0x5
/* 81456EE8 | 38 80 00 01 */	li r4, 0x1
/* 81456EEC | 38 A0 00 05 */	li r5, 0x5
/* 81456EF0 | 4B FF EE 65 */	bl VmGetOperandp
/* 81456EF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456EF8 | 7C 76 1B 78 */	mr r22, r3
/* 81456EFC | 40 82 00 0C */	bne .L_81456F08
/* 81456F00 | 38 60 FC 1D */	li r3, -0x3e3
/* 81456F04 | 48 00 07 B4 */	b .L_814576B8
.L_81456F08:
/* 81456F08 | 88 16 00 00 */	lbz r0, 0x0(r22)
/* 81456F0C | 7D E3 7B 78 */	mr r3, r15
/* 81456F10 | 88 96 00 01 */	lbz r4, 0x1(r22)
/* 81456F14 | 39 C0 FC 53 */	li r14, -0x3ad
/* 81456F18 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 81456F1C | 3B 40 00 00 */	li r26, 0x0
/* 81456F20 | 4B FF E7 35 */	bl CHANSVm_81455654
/* 81456F24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456F28 | 7C 72 1B 78 */	mr r18, r3
/* 81456F2C | 3A 2F 00 50 */	addi r17, r15, 0x50
/* 81456F30 | 41 82 01 44 */	beq .L_81457074
/* 81456F34 | 88 11 00 08 */	lbz r0, 0x8(r17)
/* 81456F38 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81456F3C | 40 82 01 38 */	bne .L_81457074
/* 81456F40 | 82 91 00 04 */	lwz r20, 0x4(r17)
/* 81456F44 | 80 91 00 00 */	lwz r4, 0x0(r17)
/* 81456F48 | 7C 14 F0 10 */	subfc r0, r20, r30
/* 81456F4C | 7C 04 E9 10 */	subfe r0, r4, r29
/* 81456F50 | 7C 1E F1 10 */	subfe r0, r30, r30
/* 81456F54 | 7C 00 00 D1 */	neg. r0, r0
/* 81456F58 | 40 82 01 1C */	bne .L_81457074
/* 81456F5C | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81456F60 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81456F64 | 41 82 00 08 */	beq .L_81456F6C
/* 81456F68 | 48 00 00 FC */	b .L_81457064
.L_81456F6C:
/* 81456F6C | 4B FF 62 AD */	bl CHANSVm_8144D218
/* 81456F70 | 7C 6E 1B 78 */	mr r14, r3
/* 81456F74 | 7E 9A A3 78 */	mr r26, r20
/* 81456F78 | 3B 60 00 00 */	li r27, 0x0
/* 81456F7C | 48 00 00 40 */	b .L_81456FBC
.L_81456F80:
/* 81456F80 | 7D E3 7B 78 */	mr r3, r15
/* 81456F84 | 7E 44 93 78 */	mr r4, r18
/* 81456F88 | 7F 65 DB 78 */	mr r5, r27
/* 81456F8C | 4B FF 63 95 */	bl CHANSVmGetArrayElement
/* 81456F90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456F94 | 41 82 00 30 */	beq .L_81456FC4
/* 81456F98 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81456F9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81456FA0 | 41 82 00 18 */	beq .L_81456FB8
/* 81456FA4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81456FA8 | 40 82 00 0C */	bne .L_81456FB4
/* 81456FAC | 7F 74 DB 78 */	mr r20, r27
/* 81456FB0 | 48 00 00 18 */	b .L_81456FC8
.L_81456FB4:
/* 81456FB4 | 3B 5A FF FF */	subi r26, r26, 0x1
.L_81456FB8:
/* 81456FB8 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81456FBC:
/* 81456FBC | 7C 1B 70 40 */	cmplw r27, r14
/* 81456FC0 | 41 80 FF C0 */	blt .L_81456F80
.L_81456FC4:
/* 81456FC4 | 38 60 00 00 */	li r3, 0x0
.L_81456FC8:
/* 81456FC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456FCC | 41 82 00 94 */	beq .L_81457060
/* 81456FD0 | 7D E3 7B 78 */	mr r3, r15
/* 81456FD4 | 7E 24 8B 78 */	mr r4, r17
/* 81456FD8 | 3B 40 00 01 */	li r26, 0x1
/* 81456FDC | 4B FF 3B 79 */	bl CHANSVmDeleteObject
/* 81456FE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81456FE4 | 40 82 00 8C */	bne .L_81457070
/* 81456FE8 | 7D E3 7B 78 */	mr r3, r15
/* 81456FEC | 7E 25 8B 78 */	mr r5, r17
/* 81456FF0 | 38 80 00 00 */	li r4, 0x0
/* 81456FF4 | 38 C0 00 03 */	li r6, 0x3
/* 81456FF8 | 38 E0 00 80 */	li r7, 0x80
/* 81456FFC | 4B FF 3D D9 */	bl CHANSVmNewObject
/* 81457000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457004 | 41 82 00 6C */	beq .L_81457070
/* 81457008 | 80 71 00 00 */	lwz r3, 0x0(r17)
/* 8145700C | 7E 88 A3 78 */	mr r8, r20
/* 81457010 | 38 80 00 40 */	li r4, 0x40
/* 81457014 | 38 AD 95 51 */	li r5, lbl_81697591@sda21
/* 81457018 | 82 43 00 00 */	lwz r18, 0x0(r3)
/* 8145701C | 38 E0 00 00 */	li r7, 0x0
/* 81457020 | 7E 43 93 78 */	mr r3, r18
/* 81457024 | 4C C6 31 82 */	crclr cr1eq
/* 81457028 | 48 1A 99 81 */	bl snprintf
/* 8145702C | 7C 6E 1B 78 */	mr r14, r3
/* 81457030 | 7E 43 93 78 */	mr r3, r18
/* 81457034 | 7E 44 93 78 */	mr r4, r18
/* 81457038 | 7D C5 73 78 */	mr r5, r14
/* 8145703C | 4B FF 40 1D */	bl VmStrToU16FromU8
/* 81457040 | 80 71 00 00 */	lwz r3, 0x0(r17)
/* 81457044 | 55 C0 08 3C */	slwi r0, r14, 1
/* 81457048 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8145704C | 80 71 00 00 */	lwz r3, 0x0(r17)
/* 81457050 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81457054 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81457058 | 41 82 00 18 */	beq .L_81457070
/* 8145705C | 48 00 00 08 */	b .L_81457064
.L_81457060:
/* 81457060 | 3B 40 00 00 */	li r26, 0x0
.L_81457064:
/* 81457064 | 39 C0 00 00 */	li r14, 0x0
/* 81457068 | 93 41 00 0C */	stw r26, 0xc(r1)
/* 8145706C | 48 00 00 08 */	b .L_81457074
.L_81457070:
/* 81457070 | 39 C0 FC 53 */	li r14, -0x3ad
.L_81457074:
/* 81457074 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 81457078 | 40 82 05 D8 */	bne .L_81457650
/* 8145707C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81457080 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81457084 | 40 82 05 CC */	bne .L_81457650
/* 81457088 | 88 16 00 02 */	lbz r0, 0x2(r22)
/* 8145708C | 88 76 00 03 */	lbz r3, 0x3(r22)
/* 81457090 | 50 03 44 2E */	rlwimi r3, r0, 8, 16, 23
/* 81457094 | 54 60 04 E7 */	rlwinm. r0, r3, 0, 19, 19
/* 81457098 | 54 63 04 FE */	clrlwi r3, r3, 19
/* 8145709C | 41 82 00 1C */	beq .L_814570B8
/* 814570A0 | 80 8F 00 60 */	lwz r4, 0x60(r15)
/* 814570A4 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814570A8 | 38 A4 00 10 */	addi r5, r4, 0x10
/* 814570AC | 7C 63 02 14 */	add r3, r3, r0
/* 814570B0 | 38 C3 E0 04 */	subi r6, r3, 0x1ffc
/* 814570B4 | 48 00 00 18 */	b .L_814570CC
.L_814570B8:
/* 814570B8 | 80 8F 00 60 */	lwz r4, 0x60(r15)
/* 814570BC | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814570C0 | 38 A4 00 10 */	addi r5, r4, 0x10
/* 814570C4 | 7C 63 02 14 */	add r3, r3, r0
/* 814570C8 | 38 C3 00 05 */	addi r6, r3, 0x5
.L_814570CC:
/* 814570CC | 28 06 00 01 */	cmplwi r6, 0x1
/* 814570D0 | 41 80 00 14 */	blt .L_814570E4
/* 814570D4 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814570D8 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814570DC | 7C 06 00 40 */	cmplw r6, r0
/* 814570E0 | 41 80 00 0C */	blt .L_814570EC
.L_814570E4:
/* 814570E4 | 38 60 FC 1D */	li r3, -0x3e3
/* 814570E8 | 48 00 05 D0 */	b .L_814576B8
.L_814570EC:
/* 814570EC | 90 C5 00 00 */	stw r6, 0x0(r5)
/* 814570F0 | 3A A0 00 00 */	li r21, 0x0
/* 814570F4 | 48 00 05 5C */	b .L_81457650
.L_814570F8:
/* 814570F8 | 7D E3 7B 78 */	mr r3, r15
/* 814570FC | 3A A0 00 03 */	li r21, 0x3
/* 81457100 | 38 80 00 01 */	li r4, 0x1
/* 81457104 | 38 A0 00 03 */	li r5, 0x3
/* 81457108 | 4B FF EC 4D */	bl VmGetOperandp
/* 8145710C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457110 | 40 82 00 0C */	bne .L_8145711C
/* 81457114 | 38 60 FC 1D */	li r3, -0x3e3
/* 81457118 | 48 00 05 A0 */	b .L_814576B8
.L_8145711C:
/* 8145711C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81457120 | 39 CF 00 50 */	addi r14, r15, 0x50
/* 81457124 | 8A 23 00 01 */	lbz r17, 0x1(r3)
/* 81457128 | 7D E3 7B 78 */	mr r3, r15
/* 8145712C | 7D C4 73 78 */	mr r4, r14
/* 81457130 | 50 11 44 2E */	rlwimi r17, r0, 8, 16, 23
/* 81457134 | 4B FF 3A 21 */	bl CHANSVmDeleteObject
/* 81457138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145713C | 40 82 00 84 */	bne .L_814571C0
/* 81457140 | 7D E3 7B 78 */	mr r3, r15
/* 81457144 | 7E 24 8B 78 */	mr r4, r17
/* 81457148 | 7E 25 8B 78 */	mr r5, r17
/* 8145714C | 38 C0 00 00 */	li r6, 0x0
/* 81457150 | 4B FF E5 91 */	bl VmPushFuncReturnInfo
/* 81457154 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457158 | 40 82 00 68 */	bne .L_814571C0
/* 8145715C | 80 CF 00 40 */	lwz r6, 0x40(r15)
/* 81457160 | 38 00 00 04 */	li r0, 0x4
/* 81457164 | 98 0E 00 08 */	stb r0, 0x8(r14)
/* 81457168 | 7D E3 7B 78 */	mr r3, r15
/* 8145716C | 7D C4 73 78 */	mr r4, r14
/* 81457170 | 38 A0 00 18 */	li r5, 0x18
/* 81457174 | 90 CE 00 0C */	stw r6, 0xc(r14)
/* 81457178 | 4B FF 3A DD */	bl CHANSVmNewObjData
/* 8145717C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457180 | 41 82 00 2C */	beq .L_814571AC
/* 81457184 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 81457188 | 41 82 00 2C */	beq .L_814571B4
/* 8145718C | 7D E3 7B 78 */	mr r3, r15
/* 81457190 | 7D C4 73 78 */	mr r4, r14
/* 81457194 | 7E 25 8B 78 */	mr r5, r17
/* 81457198 | 38 C0 00 00 */	li r6, 0x0
/* 8145719C | 38 E0 00 01 */	li r7, 0x1
/* 814571A0 | 4B FF 5E F5 */	bl CHANSVm_8144D094
/* 814571A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814571A8 | 40 82 00 0C */	bne .L_814571B4
.L_814571AC:
/* 814571AC | 38 60 FC 55 */	li r3, -0x3ab
/* 814571B0 | 48 00 00 10 */	b .L_814571C0
.L_814571B4:
/* 814571B4 | 7D E3 7B 78 */	mr r3, r15
/* 814571B8 | 38 80 00 00 */	li r4, 0x0
/* 814571BC | 4B FF E6 D1 */	bl VmReturnWithValue
.L_814571C0:
/* 814571C0 | 7C 6E 1B 78 */	mr r14, r3
/* 814571C4 | 48 00 04 8C */	b .L_81457650
.L_814571C8:
/* 814571C8 | 7D E3 7B 78 */	mr r3, r15
/* 814571CC | 38 80 00 01 */	li r4, 0x1
/* 814571D0 | 38 A0 00 04 */	li r5, 0x4
/* 814571D4 | 4B FF EB 81 */	bl VmGetOperandp
/* 814571D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814571DC | 40 82 00 0C */	bne .L_814571E8
/* 814571E0 | 38 60 FC 1D */	li r3, -0x3e3
/* 814571E4 | 48 00 04 D4 */	b .L_814576B8
.L_814571E8:
/* 814571E8 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 814571EC | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814571F0 | 54 84 80 1E */	slwi r4, r4, 16
/* 814571F4 | 88 63 00 02 */	lbz r3, 0x2(r3)
/* 814571F8 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 814571FC | 7C 66 23 78 */	or r6, r3, r4
/* 81457200 | 54 C0 02 11 */	rlwinm. r0, r6, 0, 8, 8
/* 81457204 | 41 82 00 20 */	beq .L_81457224
/* 81457208 | 80 8F 00 60 */	lwz r4, 0x60(r15)
/* 8145720C | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 81457210 | 38 A4 00 10 */	addi r5, r4, 0x10
/* 81457214 | 3C 63 FF 00 */	subis r3, r3, 0x100
/* 81457218 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8145721C | 7C C6 02 14 */	add r6, r6, r0
/* 81457220 | 48 00 00 18 */	b .L_81457238
.L_81457224:
/* 81457224 | 80 8F 00 60 */	lwz r4, 0x60(r15)
/* 81457228 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 8145722C | 38 A4 00 10 */	addi r5, r4, 0x10
/* 81457230 | 7C 66 02 14 */	add r3, r6, r0
/* 81457234 | 38 C3 00 04 */	addi r6, r3, 0x4
.L_81457238:
/* 81457238 | 28 06 00 01 */	cmplwi r6, 0x1
/* 8145723C | 41 80 00 14 */	blt .L_81457250
/* 81457240 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81457244 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81457248 | 7C 06 00 40 */	cmplw r6, r0
/* 8145724C | 41 80 00 0C */	blt .L_81457258
.L_81457250:
/* 81457250 | 38 60 FC 1D */	li r3, -0x3e3
/* 81457254 | 48 00 04 64 */	b .L_814576B8
.L_81457258:
/* 81457258 | 90 C5 00 00 */	stw r6, 0x0(r5)
/* 8145725C | 3A A0 00 00 */	li r21, 0x0
/* 81457260 | 39 C0 00 00 */	li r14, 0x0
/* 81457264 | 48 00 03 EC */	b .L_81457650
.L_81457268:
/* 81457268 | 7D E3 7B 78 */	mr r3, r15
/* 8145726C | 38 8F 00 50 */	addi r4, r15, 0x50
/* 81457270 | 38 BC 00 A0 */	addi r5, r28, 0xa0
/* 81457274 | 4B FF EB 59 */	bl CHANSVm_81455DCC
/* 81457278 | 7C 6E 1B 78 */	mr r14, r3
/* 8145727C | 48 00 03 D4 */	b .L_81457650
.L_81457280:
/* 81457280 | 7D E3 7B 78 */	mr r3, r15
/* 81457284 | 3A A0 00 03 */	li r21, 0x3
/* 81457288 | 38 80 00 01 */	li r4, 0x1
/* 8145728C | 38 A0 00 03 */	li r5, 0x3
/* 81457290 | 4B FF EA C5 */	bl VmGetOperandp
/* 81457294 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457298 | 7C 65 1B 78 */	mr r5, r3
/* 8145729C | 40 82 00 0C */	bne .L_814572A8
/* 814572A0 | 38 60 FC 1D */	li r3, -0x3e3
/* 814572A4 | 48 00 04 14 */	b .L_814576B8
.L_814572A8:
/* 814572A8 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 814572AC | 7D E3 7B 78 */	mr r3, r15
/* 814572B0 | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 814572B4 | 50 80 44 2E */	rlwimi r0, r4, 8, 16, 23
/* 814572B8 | 54 04 04 FE */	clrlwi r4, r0, 19
/* 814572BC | 4B FF E3 99 */	bl CHANSVm_81455654
/* 814572C0 | 7C 64 1B 78 */	mr r4, r3
/* 814572C4 | 7D E3 7B 78 */	mr r3, r15
/* 814572C8 | 4B FF EB 99 */	bl VmDelCommon
/* 814572CC | 7C 6E 1B 78 */	mr r14, r3
/* 814572D0 | 48 00 03 80 */	b .L_81457650
.L_814572D4:
/* 814572D4 | 88 0F 00 58 */	lbz r0, 0x58(r15)
/* 814572D8 | 38 8F 00 50 */	addi r4, r15, 0x50
/* 814572DC | 38 60 FC 59 */	li r3, -0x3a7
/* 814572E0 | 28 00 00 05 */	cmplwi r0, 0x5
/* 814572E4 | 40 82 00 20 */	bne .L_81457304
/* 814572E8 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 814572EC | 7D E3 7B 78 */	mr r3, r15
/* 814572F0 | 38 C0 00 00 */	li r6, 0x0
/* 814572F4 | 4B FF 5F 6D */	bl CHANSVm_8144D260
/* 814572F8 | 7C 64 1B 78 */	mr r4, r3
/* 814572FC | 7D E3 7B 78 */	mr r3, r15
/* 81457300 | 4B FF EB 61 */	bl VmDelCommon
.L_81457304:
/* 81457304 | 7C 6E 1B 78 */	mr r14, r3
/* 81457308 | 48 00 03 48 */	b .L_81457650
.L_8145730C:
/* 8145730C | 39 C0 FC 65 */	li r14, -0x39b
/* 81457310 | 48 00 03 40 */	b .L_81457650
.L_81457314:
/* 81457314 | 28 00 00 40 */	cmplwi r0, 0x40
/* 81457318 | 40 82 00 98 */	bne .L_814573B0
/* 8145731C | 7D E3 7B 78 */	mr r3, r15
/* 81457320 | 3A A0 00 02 */	li r21, 0x2
/* 81457324 | 38 80 00 00 */	li r4, 0x0
/* 81457328 | 38 A0 00 02 */	li r5, 0x2
/* 8145732C | 4B FF EA 29 */	bl VmGetOperandp
/* 81457330 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457334 | 40 82 00 0C */	bne .L_81457340
/* 81457338 | 38 60 FC 1D */	li r3, -0x3e3
/* 8145733C | 48 00 03 7C */	b .L_814576B8
.L_81457340:
/* 81457340 | 56 40 06 B4 */	rlwinm r0, r18, 0, 26, 26
/* 81457344 | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 81457348 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 8145734C | 52 43 40 2E */	rlwimi r3, r18, 8, 0, 23
/* 81457350 | 54 64 04 FE */	clrlwi r4, r3, 19
/* 81457354 | 41 82 00 34 */	beq .L_81457388
/* 81457358 | 40 80 00 50 */	bge .L_814573A8
/* 8145735C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81457360 | 41 82 00 08 */	beq .L_81457368
/* 81457364 | 48 00 00 44 */	b .L_814573A8
.L_81457368:
/* 81457368 | 7D E3 7B 78 */	mr r3, r15
/* 8145736C | 4B FF E2 E9 */	bl CHANSVm_81455654
/* 81457370 | 7C 65 1B 78 */	mr r5, r3
/* 81457374 | 7D E3 7B 78 */	mr r3, r15
/* 81457378 | 38 8F 00 50 */	addi r4, r15, 0x50
/* 8145737C | 4B FF EA 51 */	bl CHANSVm_81455DCC
/* 81457380 | 7C 6E 1B 78 */	mr r14, r3
/* 81457384 | 48 00 02 CC */	b .L_81457650
.L_81457388:
/* 81457388 | 7D E3 7B 78 */	mr r3, r15
/* 8145738C | 4B FF E2 C9 */	bl CHANSVm_81455654
/* 81457390 | 7C 64 1B 78 */	mr r4, r3
/* 81457394 | 7D E3 7B 78 */	mr r3, r15
/* 81457398 | 38 AF 00 50 */	addi r5, r15, 0x50
/* 8145739C | 4B FF EA 31 */	bl CHANSVm_81455DCC
/* 814573A0 | 7C 6E 1B 78 */	mr r14, r3
/* 814573A4 | 48 00 02 AC */	b .L_81457650
.L_814573A8:
/* 814573A8 | 38 60 11 62 */	li r3, 0x1162
/* 814573AC | 48 00 03 0C */	b .L_814576B8
.L_814573B0:
/* 814573B0 | 7D E3 7B 78 */	mr r3, r15
/* 814573B4 | 3A A0 00 02 */	li r21, 0x2
/* 814573B8 | 38 80 00 00 */	li r4, 0x0
/* 814573BC | 38 A0 00 02 */	li r5, 0x2
/* 814573C0 | 4B FF E9 95 */	bl VmGetOperandp
/* 814573C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814573C8 | 7C 71 1B 78 */	mr r17, r3
/* 814573CC | 40 82 00 0C */	bne .L_814573D8
/* 814573D0 | 38 60 FC 1D */	li r3, -0x3e3
/* 814573D4 | 48 00 02 E4 */	b .L_814576B8
.L_814573D8:
/* 814573D8 | 56 40 06 74 */	rlwinm r0, r18, 0, 25, 26
/* 814573DC | 2C 00 00 40 */	cmpwi r0, 0x40
/* 814573E0 | 41 82 01 C8 */	beq .L_814575A8
/* 814573E4 | 40 80 00 1C */	bge .L_81457400
/* 814573E8 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814573EC | 41 82 01 90 */	beq .L_8145757C
/* 814573F0 | 40 80 01 DC */	bge .L_814575CC
/* 814573F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814573F8 | 41 82 00 14 */	beq .L_8145740C
/* 814573FC | 48 00 01 D0 */	b .L_814575CC
.L_81457400:
/* 81457400 | 2C 00 00 60 */	cmpwi r0, 0x60
/* 81457404 | 41 82 01 B8 */	beq .L_814575BC
/* 81457408 | 48 00 01 C4 */	b .L_814575CC
.L_8145740C:
/* 8145740C | 80 AF 00 60 */	lwz r5, 0x60(r15)
/* 81457410 | 38 60 FC 49 */	li r3, -0x3b7
/* 81457414 | 80 8F 00 2C */	lwz r4, 0x2c(r15)
/* 81457418 | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 8145741C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81457420 | 41 82 01 54 */	beq .L_81457574
/* 81457424 | 80 0F 00 24 */	lwz r0, 0x24(r15)
/* 81457428 | 38 A4 00 10 */	addi r5, r4, 0x10
/* 8145742C | 7C 05 00 40 */	cmplw r5, r0
/* 81457430 | 41 81 01 44 */	bgt .L_81457574
/* 81457434 | 88 A4 00 08 */	lbz r5, 0x8(r4)
/* 81457438 | 39 C0 00 00 */	li r14, 0x0
/* 8145743C | 88 0F 00 58 */	lbz r0, 0x58(r15)
/* 81457440 | 7C 05 00 40 */	cmplw r5, r0
/* 81457444 | 40 82 01 08 */	bne .L_8145754C
/* 81457448 | 28 05 00 09 */	cmplwi r5, 0x9
/* 8145744C | 41 81 00 F8 */	bgt .L_81457544
/* 81457450 | 3C 60 81 67 */	lis r3, jumptable_8166A0CC@ha
/* 81457454 | 54 A0 10 3A */	slwi r0, r5, 2
/* 81457458 | 38 63 A0 CC */	addi r3, r3, jumptable_8166A0CC@l
/* 8145745C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81457460 | 7C 69 03 A6 */	mtctr r3
/* 81457464 | 4E 80 04 20 */	bctr
.L_81457468:
/* 81457468 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8145746C | 80 0F 00 50 */	lwz r0, 0x50(r15)
/* 81457470 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81457474 | 80 6F 00 54 */	lwz r3, 0x54(r15)
/* 81457478 | 7C A0 02 78 */	xor r0, r5, r0
/* 8145747C | 7C 83 1A 78 */	xor r3, r4, r3
/* 81457480 | 7C 60 03 78 */	or r0, r3, r0
/* 81457484 | 7C 00 00 34 */	cntlzw r0, r0
/* 81457488 | 54 0E D9 7E */	srwi r14, r0, 5
/* 8145748C | 48 00 00 C0 */	b .L_8145754C
.L_81457490:
/* 81457490 | C8 24 00 00 */	lfd f1, 0x0(r4)
/* 81457494 | C8 0F 00 50 */	lfd f0, 0x50(r15)
/* 81457498 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8145749C | 7D C0 00 26 */	mfcr r14
/* 814574A0 | 55 CE 1F FE */	extrwi r14, r14, 1, 2
/* 814574A4 | 48 00 00 A8 */	b .L_8145754C
.L_814574A8:
/* 814574A8 | 80 CF 00 50 */	lwz r6, 0x50(r15)
/* 814574AC | 39 C0 00 00 */	li r14, 0x0
/* 814574B0 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 814574B4 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 814574B8 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814574BC | 7C 05 00 40 */	cmplw r5, r0
/* 814574C0 | 40 82 00 8C */	bne .L_8145754C
/* 814574C4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814574C8 | 3A 80 00 00 */	li r20, 0x0
/* 814574CC | 41 82 00 18 */	beq .L_814574E4
/* 814574D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814574D4 | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 814574D8 | 48 1A 6C FD */	bl memcmp
/* 814574DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814574E0 | 40 82 00 08 */	bne .L_814574E8
.L_814574E4:
/* 814574E4 | 3A 80 00 01 */	li r20, 0x1
.L_814574E8:
/* 814574E8 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814574EC | 41 82 00 60 */	beq .L_8145754C
/* 814574F0 | 39 C0 00 01 */	li r14, 0x1
/* 814574F4 | 48 00 00 58 */	b .L_8145754C
.L_814574F8:
/* 814574F8 | 39 C0 00 01 */	li r14, 0x1
/* 814574FC | 48 00 00 50 */	b .L_8145754C
.L_81457500:
/* 81457500 | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 81457504 | 39 C0 00 00 */	li r14, 0x0
/* 81457508 | 80 0F 00 5C */	lwz r0, 0x5c(r15)
/* 8145750C | 7C 03 00 40 */	cmplw r3, r0
/* 81457510 | 40 82 00 3C */	bne .L_8145754C
/* 81457514 | 88 64 00 0A */	lbz r3, 0xa(r4)
/* 81457518 | 88 0F 00 5A */	lbz r0, 0x5a(r15)
/* 8145751C | 7C 03 00 40 */	cmplw r3, r0
/* 81457520 | 40 82 00 2C */	bne .L_8145754C
/* 81457524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457528 | 41 82 00 14 */	beq .L_8145753C
/* 8145752C | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 81457530 | 80 0F 00 50 */	lwz r0, 0x50(r15)
/* 81457534 | 7C 03 00 40 */	cmplw r3, r0
/* 81457538 | 40 82 00 14 */	bne .L_8145754C
.L_8145753C:
/* 8145753C | 39 C0 00 01 */	li r14, 0x1
/* 81457540 | 48 00 00 0C */	b .L_8145754C
.L_81457544:
/* 81457544 | 38 60 FC 4A */	li r3, -0x3b6
/* 81457548 | 48 00 00 0C */	b .L_81457554
.L_8145754C:
/* 8145754C | 7D D7 73 78 */	mr r23, r14
/* 81457550 | 38 60 00 00 */	li r3, 0x0
.L_81457554:
/* 81457554 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457558 | 40 82 00 1C */	bne .L_81457574
/* 8145755C | 2C 17 00 00 */	cmpwi r23, 0x0
/* 81457560 | 41 82 00 10 */	beq .L_81457570
/* 81457564 | 7D E3 7B 78 */	mr r3, r15
/* 81457568 | 38 80 00 00 */	li r4, 0x0
/* 8145756C | 4B FF 3A 0D */	bl VmPopObject
.L_81457570:
/* 81457570 | 92 E1 00 0C */	stw r23, 0xc(r1)
.L_81457574:
/* 81457574 | 7C 6E 1B 78 */	mr r14, r3
/* 81457578 | 48 00 00 5C */	b .L_814575D4
.L_8145757C:
/* 8145757C | 38 61 00 0C */	addi r3, r1, 0xc
/* 81457580 | 38 8F 00 50 */	addi r4, r15, 0x50
/* 81457584 | 4B FF 50 29 */	bl CHANSVmGetBoolean
/* 81457588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145758C | 7C 6E 1B 78 */	mr r14, r3
/* 81457590 | 40 82 00 44 */	bne .L_814575D4
/* 81457594 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81457598 | 7C 00 00 34 */	cntlzw r0, r0
/* 8145759C | 54 00 D9 7E */	srwi r0, r0, 5
/* 814575A0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814575A4 | 48 00 00 30 */	b .L_814575D4
.L_814575A8:
/* 814575A8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814575AC | 38 8F 00 50 */	addi r4, r15, 0x50
/* 814575B0 | 4B FF 4F FD */	bl CHANSVmGetBoolean
/* 814575B4 | 7C 6E 1B 78 */	mr r14, r3
/* 814575B8 | 48 00 00 1C */	b .L_814575D4
.L_814575BC:
/* 814575BC | 38 00 00 01 */	li r0, 0x1
/* 814575C0 | 39 C0 00 00 */	li r14, 0x0
/* 814575C4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814575C8 | 48 00 00 0C */	b .L_814575D4
.L_814575CC:
/* 814575CC | 38 60 11 82 */	li r3, 0x1182
/* 814575D0 | 48 00 00 E8 */	b .L_814576B8
.L_814575D4:
/* 814575D4 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 814575D8 | 40 82 00 78 */	bne .L_81457650
/* 814575DC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814575E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814575E4 | 41 82 00 6C */	beq .L_81457650
/* 814575E8 | 88 71 00 01 */	lbz r3, 0x1(r17)
/* 814575EC | 52 43 40 2E */	rlwimi r3, r18, 8, 0, 23
/* 814575F0 | 54 60 04 E7 */	rlwinm. r0, r3, 0, 19, 19
/* 814575F4 | 54 66 04 FE */	clrlwi r6, r3, 19
/* 814575F8 | 41 82 00 1C */	beq .L_81457614
/* 814575FC | 80 8F 00 60 */	lwz r4, 0x60(r15)
/* 81457600 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 81457604 | 38 A4 00 10 */	addi r5, r4, 0x10
/* 81457608 | 7C 66 02 14 */	add r3, r6, r0
/* 8145760C | 38 C3 E0 01 */	subi r6, r3, 0x1fff
/* 81457610 | 48 00 00 18 */	b .L_81457628
.L_81457614:
/* 81457614 | 80 8F 00 60 */	lwz r4, 0x60(r15)
/* 81457618 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 8145761C | 38 A4 00 10 */	addi r5, r4, 0x10
/* 81457620 | 7C 66 02 14 */	add r3, r6, r0
/* 81457624 | 38 C3 00 02 */	addi r6, r3, 0x2
.L_81457628:
/* 81457628 | 28 06 00 01 */	cmplwi r6, 0x1
/* 8145762C | 41 80 00 14 */	blt .L_81457640
/* 81457630 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81457634 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81457638 | 7C 06 00 40 */	cmplw r6, r0
/* 8145763C | 41 80 00 0C */	blt .L_81457648
.L_81457640:
/* 81457640 | 38 60 FC 1D */	li r3, -0x3e3
/* 81457644 | 48 00 00 74 */	b .L_814576B8
.L_81457648:
/* 81457648 | 90 C5 00 00 */	stw r6, 0x0(r5)
/* 8145764C | 3A A0 00 00 */	li r21, 0x0
.L_81457650:
/* 81457650 | 2C 0E 00 00 */	cmpwi r14, 0x0
/* 81457654 | 41 82 00 0C */	beq .L_81457660
/* 81457658 | 7D C3 73 78 */	mr r3, r14
/* 8145765C | 48 00 00 5C */	b .L_814576B8
.L_81457660:
/* 81457660 | 2C 15 FF FF */	cmpwi r21, -0x1
/* 81457664 | 40 82 00 0C */	bne .L_81457670
/* 81457668 | 38 60 11 A0 */	li r3, 0x11a0
/* 8145766C | 48 00 00 4C */	b .L_814576B8
.L_81457670:
/* 81457670 | 80 AF 00 60 */	lwz r5, 0x60(r15)
/* 81457674 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81457678 | 41 82 00 24 */	beq .L_8145769C
/* 8145767C | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 81457680 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81457684 | 41 82 00 18 */	beq .L_8145769C
/* 81457688 | 80 65 00 10 */	lwz r3, 0x10(r5)
/* 8145768C | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 81457690 | 7C 63 AA 14 */	add r3, r3, r21
/* 81457694 | 7C 03 00 40 */	cmplw r3, r0
/* 81457698 | 41 80 00 0C */	blt .L_814576A4
.L_8145769C:
/* 8145769C | 38 60 FC 1D */	li r3, -0x3e3
/* 814576A0 | 48 00 00 18 */	b .L_814576B8
.L_814576A4:
/* 814576A4 | 90 65 00 10 */	stw r3, 0x10(r5)
.L_814576A8:
/* 814576A8 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 814576AC | 3A 10 FF FF */	subi r16, r16, 0x1
/* 814576B0 | 40 82 ED 14 */	bne .L_814563C4
/* 814576B4 | 38 60 00 00 */	li r3, 0x0
.L_814576B8:
/* 814576B8 | E3 E1 00 E8 */	psq_l f31, 0xe8(r1), 0, qr0
/* 814576BC | CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 814576C0 | E3 C1 00 D8 */	psq_l f30, 0xd8(r1), 0, qr0
/* 814576C4 | CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 814576C8 | E3 A1 00 C8 */	psq_l f29, 0xc8(r1), 0, qr0
/* 814576CC | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 814576D0 | CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 814576D4 | 48 1A 1E 05 */	bl _restgpr_14
/* 814576D8 | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 814576DC | 7C 08 03 A6 */	mtlr r0
/* 814576E0 | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 814576E4 | 4E 80 00 20 */	blr
.endfn CHANSVmStep

# 0x81616C78..0x81617210 | size: 0x598
.rodata
.balign 8

# .rodata:0x0 | 0x81616C78 | size: 0x10
.obj CHANSVmConstStringObjectUndefined, global
	.4byte lbl_81669070
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x00000000
.endobj CHANSVmConstStringObjectUndefined

# .rodata:0x10 | 0x81616C88 | size: 0x10
.obj lbl_81616C88, global
	.4byte lbl_81697578
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81616C88

# .rodata:0x20 | 0x81616C98 | size: 0x10
.obj lbl_81616C98, global
	.4byte lbl_81669083
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81616C98

# .rodata:0x30 | 0x81616CA8 | size: 0x10
.obj lbl_81616CA8, global
	.4byte lbl_81669094
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81616CA8

# .rodata:0x40 | 0x81616CB8 | size: 0x10
.obj lbl_81616CB8, global
	.4byte lbl_8169757F
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81616CB8

# .rodata:0x50 | 0x81616CC8 | size: 0x10
.obj CHANSVmConstStringDataEmpty, global
	.4byte lbl_81697582
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj CHANSVmConstStringDataEmpty

# .rodata:0x60 | 0x81616CD8 | size: 0x50
.obj lbl_81616CD8, global
	.4byte CHANSVmConstStringObjectUndefined
	.4byte 0x00000000
	.4byte 0x03800100
	.4byte 0x00000000
	.4byte lbl_81616C88
	.4byte 0x00000000
	.4byte 0x03800100
	.4byte 0x00000000
	.4byte lbl_81616C98
	.4byte 0x00000000
	.4byte 0x03800100
	.4byte 0x00000000
	.4byte lbl_81616CA8
	.4byte 0x00000000
	.4byte 0x03800100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x00000000
.endobj lbl_81616CD8

# .rodata:0xB0 | 0x81616D28 | size: 0x20
.obj lbl_81616D28, global
	.4byte lbl_816690A7
	.4byte lbl_81694F18
	.4byte lbl_816690B0
	.4byte lbl_81694F18
	.4byte lbl_816690BA
	.4byte lbl_81694F20
	.4byte lbl_81697586
	.4byte lbl_81694F08
.endobj lbl_81616D28

# .rodata:0xD0 | 0x81616D48 | size: 0x188
.obj VmTypeConvertFuncTbl, global
	.4byte 0x00000000
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte 0x00000000
	.4byte CHANSVm_8144B30C
	.4byte CHANSVmConvertToIntFromStr
	.4byte CHANSVmConvertToIntFromArray
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVm_8144B430
	.4byte CHANSVm_8144B470
	.4byte 0x00000000
	.4byte CHANSVm_8144B4D4
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVm_8144B620
	.4byte CHANSVm_8144B684
	.4byte CHANSVm_8144B734
	.4byte 0x00000000
	.4byte CHANSVm_8144B810
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte 0x00000000
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte CHANSVmConvertObjectTypeError
	.4byte 0x00000000
	.4byte 0x00020203
	.4byte 0x00000201
	.4byte 0x02030300
	.4byte 0x02020203
	.4byte 0x03000303
	.4byte 0x03030300
	.4byte 0x00030303
	.4byte 0x03000000
	.4byte 0x00000000
	.4byte 0x00020202
	.4byte 0x00000201
	.4byte 0x02020000
	.4byte 0x02020202
	.4byte 0x00000202
	.4byte 0x02020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x02020000
	.4byte 0x00020202
	.4byte 0x00000002
	.4byte 0x02030300
	.4byte 0x00000003
	.4byte 0x03000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x02020000
	.4byte 0x00020202
	.4byte 0x00000002
	.4byte 0x02030300
	.4byte 0x00000003
	.4byte 0x04000000
	.4byte 0x00000000
	.4byte 0x00010101
	.4byte 0x00000101
	.4byte 0x01010000
	.4byte 0x01010101
	.4byte 0x00000101
	.4byte 0x01010000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81697596
	.4byte VmGetProp_length
	.4byte VmSetProp_length
	.4byte lbl_8169759D
	.4byte VmMethod_join
	.4byte lbl_816975A2
	.4byte VmMethod_new2d
	.4byte lbl_816975A8
	.4byte VmMethod_pop
	.4byte lbl_816975AC
	.4byte VmMethod_push
	.4byte lbl_816975B1
	.4byte VmMethod_shift
	.4byte lbl_816975B7
	.4byte VmMethod_slice
	.4byte lbl_816975BD
	.4byte VmMethod_unshift
.endobj VmTypeConvertFuncTbl

# .rodata:0x258 | 0x81616ED0 | size: 0x340
.obj lbl_81616ED0, global
	.4byte lbl_816975C5
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81697618
	.4byte VmMethod_getDate
	.4byte lbl_81697620
	.4byte VmMethod_getDay
	.4byte lbl_81669C0F
	.4byte VmMethod_getFullYear
	.4byte lbl_81669C1B
	.4byte VmMethod_getHours
	.4byte lbl_81669C24
	.4byte VmMethod_getMilliseconds
	.4byte lbl_81669C34
	.4byte VmMethod_getMinutes
	.4byte lbl_81669C3F
	.4byte VmMethod_getMonth
	.4byte lbl_81669C48
	.4byte VmMethod_getSeconds
	.4byte lbl_81697627
	.4byte VmMethod_getTime
	.4byte lbl_8169762F
	.4byte VmMethod_getRTC
	.4byte lbl_81697636
	.4byte VmMethod_E
	.4byte 0x00000000
	.4byte lbl_81697638
	.4byte VmMethod_LN10
	.4byte 0x00000000
	.4byte lbl_8169763D
	.4byte VmMethod_LBN2
	.4byte 0x00000000
	.4byte lbl_81697641
	.4byte VmMethod_LOG2E
	.4byte 0x00000000
	.4byte lbl_81697647
	.4byte VmMethod_LOG10E
	.4byte 0x00000000
	.4byte lbl_8169764E
	.4byte VmMethod_PI
	.4byte 0x00000000
	.4byte lbl_81697651
	.4byte VmMethod_SQRT1_2
	.4byte 0x00000000
	.4byte lbl_81697659
	.4byte VmMethod_SQRT2
	.4byte 0x00000000
	.4byte lbl_8169765F
	.4byte VmMethod_abs
	.4byte lbl_81697663
	.4byte VmMethod_acos
	.4byte lbl_81697668
	.4byte VmMethod_asin
	.4byte lbl_8169766D
	.4byte VmMethod_atan
	.4byte lbl_81697672
	.4byte VmMethod_atan2
	.4byte lbl_81697678
	.4byte VmMethod_ceil
	.4byte lbl_8169767D
	.4byte VmMethod_cos
	.4byte lbl_81697681
	.4byte VmMethod_exp
	.4byte lbl_81697685
	.4byte VmMethod_floor
	.4byte lbl_8169768B
	.4byte VmMethod_log
	.4byte lbl_8169768F
	.4byte VmMethod_max
	.4byte lbl_81697693
	.4byte VmMethod_min
	.4byte lbl_81697697
	.4byte VmMethod_pow
	.4byte lbl_8169769B
	.4byte VmMethod_random
	.4byte lbl_816976A2
	.4byte VmMethod_round
	.4byte lbl_816976A8
	.4byte VmMethod_sin
	.4byte lbl_816976AC
	.4byte VmMethod_sqrt
	.4byte lbl_816976B1
	.4byte VmMethod_tan
	.4byte lbl_81697596
	.4byte VmMethod_length
	.4byte 0x00000000
	.4byte lbl_816976B5
	.4byte VmMethod_charAt
	.4byte lbl_81669DB8
	.4byte VmMethod_charCodeAt
	.4byte lbl_81669DC3
	.4byte VmMethod_pFromCharCode
	.4byte lbl_816976BC
	.4byte VmMethod_pFormat
	.4byte lbl_816976C4
	.4byte VmMethod_indexOf
	.4byte lbl_81669DD1
	.4byte VmMethod_lastIndexOf
	.4byte lbl_816976CC
	.4byte VmMethod_replace
	.4byte lbl_816976D4
	.4byte VmMethod_searc
	.4byte lbl_816975B7
	.4byte VmMethod_splice
	.4byte lbl_816976DB
	.4byte VmMethod_split
	.4byte lbl_81669DDD
	.4byte VmMethod_toLowerCase
	.4byte lbl_81669DE9
	.4byte VmMethod_toUpperCase
	.4byte lbl_816976EC
	.4byte VmMethod_offset
	.4byte VmMethod_seek
	.4byte lbl_81697596
	.4byte VmMethod_getLength
	.4byte VmMethod_setLength
	.4byte lbl_816976F3
	.4byte VmMethod_pCreate
	.4byte lbl_816976FB
	.4byte VmMethod_seek
	.4byte lbl_81697700
	.4byte VmMethod_skip
	.4byte lbl_81697705
	.4byte VmMethod_isEqual
	.4byte lbl_81669F98
	.4byte VmMethod_getLength
	.4byte lbl_81669FA2
	.4byte VmMethod_setLength
	.4byte lbl_8169770D
	.4byte VmMethod_fill
	.4byte lbl_81697712
	.4byte VmMethod_getU8
	.4byte lbl_81697718
	.4byte VmMethod_getU16
	.4byte lbl_8169771F
	.4byte VmMethod_getU32
	.4byte lbl_81697726
	.4byte VmMethod_getS8
	.4byte lbl_8169772C
	.4byte VmMethod_getS16
	.4byte lbl_81697733
	.4byte VmMethod_getS32
	.4byte lbl_8169773A
	.4byte VmMethod_getS64
	.4byte lbl_81697741
	.4byte VmMethod_setU8
	.4byte lbl_81697747
	.4byte VmMethod_setU16
	.4byte lbl_8169774E
	.4byte VmMethod_setU32
	.4byte lbl_81697755
	.4byte VmMethod_setS8
	.4byte lbl_8169775B
	.4byte VmMethod_setS16
	.4byte lbl_81697762
	.4byte VmMethod_setS32
	.4byte lbl_81697769
	.4byte VmMethod_setS64
	.4byte lbl_81669FAC
	.4byte VmMethod_getString
	.4byte lbl_81669FB6
	.4byte VmMethod_getWString
	.4byte lbl_81669FC1
	.4byte VmMethod_setString
	.4byte lbl_81669FCB
	.4byte VmMethod_setWString
	.4byte lbl_81697770
	.4byte VmMethod_getBlob
	.4byte lbl_81697778
	.4byte VmMethod_setBlob
	.4byte lbl_81669FD6
	.4byte VmMethod_getHexString
	.4byte lbl_81669FE3
	.4byte VmMethod_copyRangeFrom
	.4byte lbl_81669FF1
	.4byte VmMethod_calcSHA1Digest
	.4byte lbl_8166A000
	.4byte VmMethod_calcMD5Digest
	.4byte lbl_8166A00E
	.4byte VmMethod_calcCRC16
	.4byte lbl_8166A018
	.4byte VmMethod_calcCRC32
	.4byte lbl_8166A022
	.4byte VmMethod_calcHMAC
	.4byte lbl_8166A02B
	.4byte VmMethod_calcRangeSHA1Digest
	.4byte lbl_8166A03F
	.4byte VmMethod_calcRangeMD5Digest
	.4byte lbl_8166A052
	.4byte VmMethod_calcRangeCRC16
	.4byte lbl_8166A061
	.4byte VmMethod_calcRangeCRC32
	.4byte lbl_8166A070
	.4byte VmMethod_calcRangeHMAC
	.4byte lbl_81697780
	.4byte VmMethod_pack
	.4byte lbl_81697785
	.4byte VmMethod_unpack
	.4byte lbl_81697792
	.4byte VmGetProp_width
	.4byte 0x00000000
	.4byte lbl_81697798
	.4byte VmGetProp_height
	.4byte 0x00000000
	.4byte lbl_8169779F
	.4byte VmGetProp_format
	.4byte 0x00000000
.endobj lbl_81616ED0

# 0x81669070..0x8166A2B0 | size: 0x1240
.data
.balign 8

# .data:0x0 | 0x81669070 | size: 0x13
.obj lbl_81669070, global
	.4byte 0x0075006E
	.4byte 0x00640065
	.4byte 0x00660069
	.4byte 0x006E0065
	.byte 0x00, 0x64, 0x00
.endobj lbl_81669070

# .data:0x13 | 0x81669083 | size: 0x11
.obj lbl_81669083, global
	.4byte 0x0049006E
	.4byte 0x00660069
	.4byte 0x006E0069
	.4byte 0x00740079
	.byte 0x00
.endobj lbl_81669083

# .data:0x24 | 0x81669094 | size: 0x13
.obj lbl_81669094, global
	.4byte 0x002D0049
	.4byte 0x006E0066
	.4byte 0x0069006E
	.4byte 0x00690074
	.byte 0x00, 0x79, 0x00
.endobj lbl_81669094

# .data:0x37 | 0x816690A7 | size: 0x9
.obj lbl_816690A7, global
	.string "Infinity"
.endobj lbl_816690A7

# .data:0x40 | 0x816690B0 | size: 0xA
.obj lbl_816690B0, global
	.string "+Infinity"
.endobj lbl_816690B0

# .data:0x4A | 0x816690BA | size: 0xA
.obj lbl_816690BA, global
	.string "-Infinity"
.endobj lbl_816690BA

# .data:0x54 | 0x816690C4 | size: 0x1E
.obj lbl_816690C4, global
	.string "CHANSVmConvertObjectTypeError"
.endobj lbl_816690C4

# .data:0x72 | 0x816690E2 | size: 0x1E
.obj lbl_816690E2, global
	.4byte 0x25732025
	.4byte 0x642C2074
	.4byte 0x79706520
	.4byte 0x746F2025
	.4byte 0x64206672
	.4byte 0x6F6D2025
	.4byte 0x640A0000
	.2byte 0x0000
.endobj lbl_816690E2

# .data:0x90 | 0x81669100 | size: 0x28
.obj jumptable_81669100, local
	.rel VmGetEnumedType, .L_8144B890
	.rel VmGetEnumedType, .L_8144B898
	.rel VmGetEnumedType, .L_8144B8A0
	.rel VmGetEnumedType, .L_8144B8A8
	.rel VmGetEnumedType, .L_8144B8B0
	.rel VmGetEnumedType, .L_8144B8C0
	.rel VmGetEnumedType, .L_8144B8C0
	.rel VmGetEnumedType, .L_8144B8B8
	.rel VmGetEnumedType, .L_8144B8B8
	.rel VmGetEnumedType, .L_8144B8B8
.endobj jumptable_81669100

# .data:0xB8 | 0x81669128 | size: 0x10
.obj lbl_81669128, global
	.string "VmGetResultType"
.endobj lbl_81669128

# .data:0xC8 | 0x81669138 | size: 0x24
.obj jumptable_81669138, local
	.rel VmCmpLt, .L_8144C388
	.rel VmCmpLt, .L_8144C390
	.rel VmCmpLt, .L_8144C3BC
	.rel VmCmpLt, .L_8144C3D4
	.rel VmCmpLt, .L_8144C388
	.rel VmCmpLt, .L_8144C430
	.rel VmCmpLt, .L_8144C430
	.rel VmCmpLt, .L_8144C430
	.rel VmCmpLt, .L_8144C388
.endobj jumptable_81669138

# .data:0xEC | 0x8166915C | size: 0x24
.obj jumptable_8166915C, local
	.rel VmCmpLeq, .L_8144C4B4
	.rel VmCmpLeq, .L_8144C4BC
	.rel VmCmpLeq, .L_8144C4EC
	.rel VmCmpLeq, .L_8144C508
	.rel VmCmpLeq, .L_8144C4B4
	.rel VmCmpLeq, .L_8144C564
	.rel VmCmpLeq, .L_8144C564
	.rel VmCmpLeq, .L_8144C564
	.rel VmCmpLeq, .L_8144C4B4
.endobj jumptable_8166915C

# .data:0x110 | 0x81669180 | size: 0x28
.obj jumptable_81669180, local
	.rel CHANSVmGetBoolean, .L_8144C5EC
	.rel CHANSVmGetBoolean, .L_8144C5F4
	.rel CHANSVmGetBoolean, .L_8144C60C
	.rel CHANSVmGetBoolean, .L_8144C638
	.rel CHANSVmGetBoolean, .L_8144C64C
	.rel CHANSVmGetBoolean, .L_8144C654
	.rel CHANSVmGetBoolean, .L_8144C654
	.rel CHANSVmGetBoolean, .L_8144C64C
	.rel CHANSVmGetBoolean, .L_8144C64C
	.rel CHANSVmGetBoolean, .L_8144C64C
.endobj jumptable_81669180

# .data:0x138 | 0x816691A8 | size: 0x15
.obj lbl_816691A8, global
	.string "CHANS_VM_ERR_NO_1000"
.endobj lbl_816691A8

# .data:0x14D | 0x816691BD | size: 0x12
.obj lbl_816691BD, global
	.string "CHANS_VM_ERR_EXIT"
.endobj lbl_816691BD

# .data:0x15F | 0x816691CF | size: 0x17
.obj lbl_816691CF, global
	.string "CHANS_VM_ERR_NO_MEMORY"
.endobj lbl_816691CF

# .data:0x176 | 0x816691E6 | size: 0x20
.obj lbl_816691E6, global
	.string "CHANS_VM_ERR_INVALID_EXE_FORMAT"
.endobj lbl_816691E6

# .data:0x196 | 0x81669206 | size: 0x11
.obj lbl_81669206, global
	.string "CHANS_VM_ERR_ARG"
.endobj lbl_81669206

# .data:0x1A7 | 0x81669217 | size: 0x18
.obj lbl_81669217, global
	.string "CHANS_VM_ERR_CODE_RANGE"
.endobj lbl_81669217

# .data:0x1BF | 0x8166922F | size: 0x18
.obj lbl_8166922F, global
	.string "CHANS_VM_ERR_HEAP_RANGE"
.endobj lbl_8166922F

# .data:0x1D7 | 0x81669247 | size: 0x1E
.obj lbl_81669247, global
	.string "CHANS_VM_ERR_OBJECT_NOT_FOUND"
.endobj lbl_81669247

# .data:0x1F5 | 0x81669265 | size: 0x17
.obj lbl_81669265, global
	.string "CHANS_VM_ERR_ALIGNMENT"
.endobj lbl_81669265

# .data:0x20C | 0x8166927C | size: 0x19
.obj lbl_8166927C, global
	.string "CHANS_VM_ERR_RESULT_TYPE"
.endobj lbl_8166927C

# .data:0x225 | 0x81669295 | size: 0x1E
.obj lbl_81669295, global
	.string "CHANS_VM_ERR_TOO_MANY_DEFINED"
.endobj lbl_81669295

# .data:0x243 | 0x816692B3 | size: 0x1D
.obj lbl_816692B3, global
	.string "CHANS_VM_ERR_ALREADY_DEFINED"
.endobj lbl_816692B3

# .data:0x260 | 0x816692D0 | size: 0x19
.obj lbl_816692D0, global
	.string "CHANS_VM_ERR_LINK_FAILED"
.endobj lbl_816692D0

# .data:0x279 | 0x816692E9 | size: 0x23
.obj lbl_816692E9, global
	.string "CHANS_VM_ERR_IN_METHOD_OR_PROPERTY"
.endobj lbl_816692E9

# .data:0x29C | 0x8166930C | size: 0x20
.obj lbl_8166930C, global
	.string "CHANS_VM_ERR_NATIVE_METHOD_INIT"
.endobj lbl_8166930C

# .data:0x2BC | 0x8166932C | size: 0x19
.obj lbl_8166932C, global
	.string "CHANS_VM_ERR_LOAD_OBJECT"
.endobj lbl_8166932C

# .data:0x2D5 | 0x81669345 | size: 0x1A
.obj lbl_81669345, global
	.string "CHANS_VM_ERR_STORE_OBJECT"
.endobj lbl_81669345

# .data:0x2EF | 0x8166935F | size: 0x1E
.obj lbl_8166935F, global
	.string "CHANS_VM_ERR_DIVISION_BY_ZERO"
.endobj lbl_8166935F

# .data:0x30D | 0x8166937D | size: 0x1B
.obj lbl_8166937D, global
	.string "CHANS_VM_ERR_DELETE_OBJECT"
.endobj lbl_8166937D

# .data:0x328 | 0x81669398 | size: 0x1B
.obj lbl_81669398, global
	.string "CHANS_VM_ERR_DELETE_OBJHDR"
.endobj lbl_81669398

# .data:0x343 | 0x816693B3 | size: 0x1C
.obj lbl_816693B3, global
	.string "CHANS_VM_ERR_DELETE_OBJDATA"
.endobj lbl_816693B3

# .data:0x35F | 0x816693CF | size: 0x18
.obj lbl_816693CF, global
	.string "CHANS_VM_ERR_POP_OBJECT"
.endobj lbl_816693CF

# .data:0x377 | 0x816693E7 | size: 0x1B
.obj lbl_816693E7, global
	.string "CHANS_VM_ERR_STR_U8_TO_U16"
.endobj lbl_816693E7

# .data:0x392 | 0x81669402 | size: 0x19
.obj lbl_81669402, global
	.string "CHANS_VM_ERR_SET_INTEGER"
.endobj lbl_81669402

# .data:0x3AB | 0x8166941B | size: 0x17
.obj lbl_8166941B, global
	.string "CHANS_VM_ERR_SET_FLOAT"
.endobj lbl_8166941B

# .data:0x3C2 | 0x81669432 | size: 0x11
.obj lbl_81669432, global
	.string "CHANS_VM_ERR_ADD"
.endobj lbl_81669432

# .data:0x3D3 | 0x81669443 | size: 0x11
.obj lbl_81669443, global
	.string "CHANS_VM_ERR_SUB"
.endobj lbl_81669443

# .data:0x3E4 | 0x81669454 | size: 0x11
.obj lbl_81669454, global
	.string "CHANS_VM_ERR_MUL"
.endobj lbl_81669454

# .data:0x3F5 | 0x81669465 | size: 0x11
.obj lbl_81669465, global
	.string "CHANS_VM_ERR_DIV"
.endobj lbl_81669465

# .data:0x406 | 0x81669476 | size: 0x11
.obj lbl_81669476, global
	.string "CHANS_VM_ERR_MOD"
.endobj lbl_81669476

# .data:0x417 | 0x81669487 | size: 0x15
.obj lbl_81669487, global
	.string "CHANS_VM_ERR_ULSHIFT"
.endobj lbl_81669487

# .data:0x42C | 0x8166949C | size: 0x15
.obj lbl_8166949C, global
	.string "CHANS_VM_ERR_ARSHIFT"
.endobj lbl_8166949C

# .data:0x441 | 0x816694B1 | size: 0x15
.obj lbl_816694B1, global
	.string "CHANS_VM_ERR_BIT_AND"
.endobj lbl_816694B1

# .data:0x456 | 0x816694C6 | size: 0x14
.obj lbl_816694C6, global
	.string "CHANS_VM_ERR_BIT_OR"
.endobj lbl_816694C6

# .data:0x46A | 0x816694DA | size: 0x15
.obj lbl_816694DA, global
	.string "CHANS_VM_ERR_BIT_XOR"
.endobj lbl_816694DA

# .data:0x47F | 0x816694EF | size: 0x11
.obj lbl_816694EF, global
	.string "CHANS_VM_ERR_CMP"
.endobj lbl_816694EF

# .data:0x490 | 0x81669500 | size: 0x1F
.obj lbl_81669500, global
	.string "CHANS_VM_ERR_ADD_NATIVE_METHOD"
.endobj lbl_81669500

# .data:0x4AF | 0x8166951F | size: 0x20
.obj lbl_8166951F, global
	.string "CHANS_VM_ERR_SET_LOCAL_FUNCTION"
.endobj lbl_8166951F

# .data:0x4CF | 0x8166953F | size: 0x23
.obj lbl_8166953F, global
	.string "CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO"
.endobj lbl_8166953F

# .data:0x4F2 | 0x81669562 | size: 0x16
.obj lbl_81669562, global
	.string "CHANS_VM_ERR_LOAD_IMM"
.endobj lbl_81669562

# .data:0x508 | 0x81669578 | size: 0x18
.obj lbl_81669578, global
	.string "CHANS_VM_ERR_LOAD_CONST"
.endobj lbl_81669578

# .data:0x520 | 0x81669590 | size: 0x14
.obj lbl_81669590, global
	.string "CHANS_VM_ERR_RETURN"
.endobj lbl_81669590

# .data:0x534 | 0x816695A4 | size: 0x14
.obj lbl_816695A4, global
	.string "CHANS_VM_ERR_STRCAT"
.endobj lbl_816695A4

# .data:0x548 | 0x816695B8 | size: 0x25
.obj lbl_816695B8, global
	.string "CHANS_VM_ERR_SET_OBJECT_NATIVE_CLASS"
.endobj lbl_816695B8

# .data:0x56D | 0x816695DD | size: 0x28
.obj lbl_816695DD, global
	.string "CHANS_VM_ERR_RESOLVE_NATIVE_METHOD_CALL"
.endobj lbl_816695DD

# .data:0x595 | 0x81669605 | size: 0x2D
.obj lbl_81669605, global
	.string "CHANS_VM_ERR_RESOLVE_GLOBAL_OBJECT_REFERENCE"
.endobj lbl_81669605

# .data:0x5C2 | 0x81669632 | size: 0x11
.obj lbl_81669632, global
	.string "CHANS_VM_ERR_NEW"
.endobj lbl_81669632

# .data:0x5D3 | 0x81669643 | size: 0x21
.obj lbl_81669643, global
	.string "CHANS_VM_ERR_ADD_NATIVE_PROPERTY"
.endobj lbl_81669643

# .data:0x5F4 | 0x81669664 | size: 0x19
.obj lbl_81669664, global
	.string "CHANS_VM_ERR_GET_BOOLEAN"
.endobj lbl_81669664

# .data:0x60D | 0x8166967D | size: 0x12
.obj lbl_8166967D, global
	.string "CHANS_VM_ERR_CASE"
.endobj lbl_8166967D

# .data:0x61F | 0x8166968F | size: 0x23
.obj lbl_8166968F, global
	.string "CHANS_VM_ERR_CHECK_STRICT_EQUALITY"
.endobj lbl_8166968F

# .data:0x642 | 0x816696B2 | size: 0x1B
.obj lbl_816696B2, global
	.string "CHANS_VM_ERR_ADD_REFERENCE"
.endobj lbl_816696B2

# .data:0x65D | 0x816696CD | size: 0x1B
.obj lbl_816696CD, global
	.string "CHANS_VM_ERR_LOAD_INDIRECT"
.endobj lbl_816696CD

# .data:0x678 | 0x816696E8 | size: 0x19
.obj lbl_816696E8, global
	.string "CHANS_VM_ERR_CALL_METHOD"
.endobj lbl_816696E8

# .data:0x691 | 0x81669701 | size: 0x1C
.obj lbl_81669701, global
	.string "CHANS_VM_ERR_STORE_INDIRECT"
.endobj lbl_81669701

# .data:0x6AD | 0x8166971D | size: 0x1F
.obj lbl_8166971D, global
	.string "CHANS_VM_ERR_LOAD_STRING_CONST"
.endobj lbl_8166971D

# .data:0x6CC | 0x8166973C | size: 0x14
.obj lbl_8166973C, global
	.string "CHANS_VM_ERR_SIGNAL"
.endobj lbl_8166973C

# .data:0x6E0 | 0x81669750 | size: 0x1C
.obj lbl_81669750, global
	.string "CHANS_VM_ERR_STORE_READONLY"
.endobj lbl_81669750

# .data:0x6FC | 0x8166976C | size: 0x17
.obj lbl_8166976C, global
	.string "CHANS_VM_ERR_SET_INDEX"
.endobj lbl_8166976C

# .data:0x713 | 0x81669783 | size: 0x1F
.obj lbl_81669783, global
	.string "CHANS_VM_ERR_GET_PROPERTY_NAME"
.endobj lbl_81669783

# .data:0x732 | 0x816697A2 | size: 0x18
.obj lbl_816697A2, global
	.string "CHANS_VM_ERR_SET_STRING"
.endobj lbl_816697A2

# .data:0x74A | 0x816697BA | size: 0x1C
.obj lbl_816697BA, global
	.string "CHANS_VM_ERR_CALL_NEW_ARRAY"
.endobj lbl_816697BA

# .data:0x766 | 0x816697D6 | size: 0x1C
.obj lbl_816697D6, global
	.string "CHANS_VM_ERR_OPCODE_VERSION"
.endobj lbl_816697D6

# .data:0x782 | 0x816697F2 | size: 0x21
.obj lbl_816697F2, global
	.string "CHANS_VM_ERR_NOT_SUPPORTED_FLOAT"
.endobj lbl_816697F2

# .data:0x7A3 | 0x81669813 | size: 0x1D
.obj lbl_81669813, global
	.string "CHANS_VM_ERR_NOT_CONSTRUCTOR"
.endobj lbl_81669813

# .data:0x7C0 | 0x81669830 | size: 0x1D
.obj lbl_81669830, global
	.string "CHANS_VM_ERR_DELETE_INDIRECT"
.endobj lbl_81669830

# .data:0x7DD | 0x8166984D | size: 0x26
.obj lbl_8166984D, global
	.string "CHANS_VM_ERR_FORBIDDEN_CLASS_PROPERTY"
.endobj lbl_8166984D

# .data:0x803 | 0x81669873 | size: 0x24
.obj lbl_81669873, global
	.string "CHANS_VM_ERR_FORBIDDEN_CLASS_METHOD"
.endobj lbl_81669873

# .data:0x827 | 0x81669897 | size: 0x16
.obj lbl_81669897, global
	.string "CHANS_VM_ERR_NEED_NEW"
.endobj lbl_81669897

# .data:0x83D | 0x816698AD | size: 0x1C
.obj lbl_816698AD, global
	.string "CHANS_VM_ERR_INVALID_OBJECT"
.endobj lbl_816698AD

# .data:0x859 | 0x816698C9 | size: 0x21
.obj lbl_816698C9, global
	.string "CHANS_VM_ERR_INVALID_OBJECT_TYPE"
.endobj lbl_816698C9

# .data:0x87A | 0x816698EA | size: 0x1E
.obj lbl_816698EA, global
	.string "CHANS_VM_ERR_NO_SUCH_PROPERTY"
.endobj lbl_816698EA

# .data:0x898 | 0x81669908 | size: 0x1C
.obj lbl_81669908, global
	.string "CHANS_VM_ERR_NO_SUCH_METHOD"
.endobj lbl_81669908

# .data:0x8B4 | 0x81669924 | size: 0x23
.obj lbl_81669924, global
	.string "CHANS_VM_ERR_NOT_READABLE_PROPERTY"
.endobj lbl_81669924

# .data:0x8D7 | 0x81669947 | size: 0x23
.obj lbl_81669947, global
	.string "CHANS_VM_ERR_NOT_WRITABLE_PROPERTY"
.endobj lbl_81669947

# .data:0x8FA | 0x8166996A | size: 0x1E
.obj lbl_8166996A, global
	.string "CHANS_VM_ERR_INVALID_EXE_TYPE"
.endobj lbl_8166996A

# .data:0x918 | 0x81669988 | size: 0x1E
.obj lbl_81669988, global
	.string "CHANS_VM_ERR_NO_SUCH_FUNCTION"
.endobj lbl_81669988

# .data:0x936 | 0x816699A6 | size: 0x1E
.obj lbl_816699A6, global
	.4byte 0x4348414E
	.4byte 0x535F564D
	.4byte 0x5F455252
	.4byte 0x5F524553
	.4byte 0x45525645
	.4byte 0x445F4F50
	.4byte 0x434F4445
	.2byte 0x0000
.endobj lbl_816699A6

# .data:0x954 | 0x816699C4 | size: 0x14E
.obj vmErrorList, local
	.4byte lbl_816691A8
	.4byte lbl_816691BD
	.4byte lbl_816691CF
	.4byte lbl_816691E6
	.4byte lbl_81669206
	.4byte lbl_81669217
	.4byte lbl_8166922F
	.4byte lbl_81669247
	.4byte lbl_81669265
	.4byte lbl_8166927C
	.4byte lbl_81669295
	.4byte lbl_816692B3
	.4byte lbl_816692D0
	.4byte lbl_816692E9
	.4byte lbl_8166930C
	.4byte lbl_8166932C
	.4byte lbl_81669345
	.4byte lbl_8166935F
	.4byte lbl_8166937D
	.4byte lbl_81669398
	.4byte lbl_816693B3
	.4byte lbl_816693CF
	.4byte lbl_816693E7
	.4byte lbl_81669402
	.4byte lbl_8166941B
	.4byte lbl_81669432
	.4byte lbl_81669443
	.4byte lbl_81669454
	.4byte lbl_81669465
	.4byte lbl_81669476
	.4byte lbl_81669487
	.4byte lbl_8166949C
	.4byte lbl_816694B1
	.4byte lbl_816694C6
	.4byte lbl_816694DA
	.4byte lbl_816694EF
	.4byte lbl_81669500
	.4byte lbl_8166951F
	.4byte lbl_8166953F
	.4byte lbl_81669562
	.4byte lbl_81669578
	.4byte lbl_81669590
	.4byte lbl_816695A4
	.4byte lbl_816695B8
	.4byte lbl_816695DD
	.4byte lbl_81669605
	.4byte lbl_81669632
	.4byte lbl_81669643
	.4byte lbl_81669664
	.4byte lbl_8166967D
	.4byte lbl_8166968F
	.4byte lbl_816696B2
	.4byte lbl_816696CD
	.4byte lbl_816696E8
	.4byte lbl_81669701
	.4byte lbl_8166971D
	.4byte lbl_8166973C
	.4byte lbl_81669750
	.4byte lbl_8166976C
	.4byte lbl_81669783
	.4byte lbl_816697A2
	.4byte lbl_816697BA
	.4byte lbl_816697D6
	.4byte lbl_816697F2
	.4byte lbl_81669813
	.4byte lbl_81669830
	.4byte lbl_8166984D
	.4byte lbl_81669873
	.4byte lbl_81669897
	.4byte lbl_816698AD
	.4byte lbl_816698C9
	.4byte lbl_816698EA
	.4byte lbl_81669908
	.4byte lbl_81669924
	.4byte lbl_81669947
	.4byte lbl_8166996A
	.4byte lbl_81669988
	.4byte lbl_816699A6
	.4byte 0x4348414E
	.4byte 0x535F564D
	.4byte 0x5F4F4B00
	.4byte 0x28756E6B
	.4byte 0x6E6F776E
	.2byte 0x2900
.endobj vmErrorList

# .data:0xAA2 | 0x81669B12 | size: 0x1B
.obj lbl_81669B12, global
	.string "VmArrayJoinEstimateStrSize"
.endobj lbl_81669B12

# .data:0xABD | 0x81669B2D | size: 0x1E
.obj lbl_81669B2D, global
	.string "%s %d: unsupported type 0x%x\n"
.endobj lbl_81669B2D

# .data:0xADB | 0x81669B4B | size: 0xF
.obj lbl_81669B4B, global
	.string "VmArrayJoinSub"
.endobj lbl_81669B4B

# .data:0xAEA | 0x81669B5A | size: 0xD
.obj lbl_81669B5A, global
	.string "VmDateCommon"
.endobj lbl_81669B5A

# .data:0xAF7 | 0x81669B67 | size: 0x21
.obj lbl_81669B67, global
	.4byte 0x696E7465
	.4byte 0x726E616C
	.4byte 0x20657272
	.4byte 0x6F722069
	.4byte 0x6E202573
	.4byte 0x206C696E
	.4byte 0x65202564
	.4byte 0x0A000000
	.byte 0x00
.endobj lbl_81669B67

# .data:0xB18 | 0x81669B88 | size: 0x1C
.obj jumptable_81669B88, local
	.rel CHANSVm_8144E21C, .L_8144E36C
	.rel CHANSVm_8144E21C, .L_8144E374
	.rel CHANSVm_8144E21C, .L_8144E37C
	.rel CHANSVm_8144E21C, .L_8144E384
	.rel CHANSVm_8144E21C, .L_8144E38C
	.rel CHANSVm_8144E21C, .L_8144E394
	.rel CHANSVm_8144E21C, .L_8144E39C
.endobj jumptable_81669B88

# .data:0xB34 | 0x81669BA4 | size: 0x6B
.obj gap_08_81669BA4_data, global
.hidden gap_08_81669BA4_data
	.4byte lbl_816975CC
	.4byte lbl_816975D0
	.4byte lbl_816975D4
	.4byte lbl_816975D8
	.4byte lbl_816975DC
	.4byte lbl_816975E0
	.4byte lbl_816975E4
	.4byte lbl_816975E8
	.4byte lbl_816975EC
	.4byte lbl_816975F0
	.4byte lbl_816975F4
	.4byte lbl_816975F8
	.4byte lbl_816975FC
	.4byte lbl_81697600
	.4byte lbl_81697604
	.4byte lbl_81697608
	.4byte lbl_8169760C
	.4byte lbl_81697610
	.4byte lbl_81697614
	.4byte 0x25732025
	.4byte 0x73202530
	.4byte 0x32642025
	.4byte 0x3032643A
	.4byte 0x25303264
	.4byte 0x3A253032
	.4byte 0x64202530
	.byte 0x34, 0x64, 0x00
.endobj gap_08_81669BA4_data

# .data:0xB9F | 0x81669C0F | size: 0xC
.obj lbl_81669C0F, global
	.string "getFullYear"
.endobj lbl_81669C0F

# .data:0xBAB | 0x81669C1B | size: 0x9
.obj lbl_81669C1B, global
	.string "getHours"
.endobj lbl_81669C1B

# .data:0xBB4 | 0x81669C24 | size: 0x10
.obj lbl_81669C24, global
	.string "getMilliseconds"
.endobj lbl_81669C24

# .data:0xBC4 | 0x81669C34 | size: 0xB
.obj lbl_81669C34, global
	.string "getMinutes"
.endobj lbl_81669C34

# .data:0xBCF | 0x81669C3F | size: 0x9
.obj lbl_81669C3F, global
	.string "getMonth"
.endobj lbl_81669C3F

# .data:0xBD8 | 0x81669C48 | size: 0xC
.obj lbl_81669C48, global
	.4byte 0x67657453
	.4byte 0x65636F6E
	.4byte 0x64730000
.endobj lbl_81669C48

# .data:0xBE4 | 0x81669C54 | size: 0xE0
.obj jumptable_81669C54, local
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_814507E0
	.rel CHANSVm_8145049C, .L_814507E0
	.rel CHANSVm_8145049C, .L_814507E0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_814507D8
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_814507E8
	.rel CHANSVm_8145049C, .L_814507D8
	.rel CHANSVm_8145049C, .L_814507E0
	.rel CHANSVm_8145049C, .L_814507E0
	.rel CHANSVm_8145049C, .L_814507E0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_814507D8
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_814507D8
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_814507F0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_814507D8
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_81450AD0
	.rel CHANSVm_8145049C, .L_814507D8
.endobj jumptable_81669C54

# .data:0xCC4 | 0x81669D34 | size: 0x84
.obj jumptable_81669D34, local
	.rel CHANSVm_8145049C, .L_81450644
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_8145063C
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450644
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450644
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450644
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450678
	.rel CHANSVm_8145049C, .L_81450540
.endobj jumptable_81669D34

# .data:0xD48 | 0x81669DB8 | size: 0xB
.obj lbl_81669DB8, global
	.string "charCodeAt"
.endobj lbl_81669DB8

# .data:0xD53 | 0x81669DC3 | size: 0xE
.obj lbl_81669DC3, global
	.string "*fromCharCode"
.endobj lbl_81669DC3

# .data:0xD61 | 0x81669DD1 | size: 0xC
.obj lbl_81669DD1, global
	.string "lastIndexOf"
.endobj lbl_81669DD1

# .data:0xD6D | 0x81669DDD | size: 0xC
.obj lbl_81669DDD, global
	.string "toLowerCase"
.endobj lbl_81669DDD

# .data:0xD79 | 0x81669DE9 | size: 0xC
.obj lbl_81669DE9, global
	.string "toUpperCase"
.endobj lbl_81669DE9

# .data:0xD85 | 0x81669DF5 | size: 0x13
.obj lbl_81669DF5, global
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38396162
	.4byte 0x63646566
	.byte 0x00, 0x00, 0x00
.endobj lbl_81669DF5

# .data:0xD98 | 0x81669E08 | size: 0x190
.obj vmBlobPackFormatList, global
	.4byte 0x00000044
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000078
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000063
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x00000043
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000073
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x00000053
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000069
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x00000049
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0000006C
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0000004C
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000071
	.4byte 0x00000008
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0000004E
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000076
	.4byte 0x00000002
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000056
	.4byte 0x00000004
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000061
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000077
	.4byte 0x00000002
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x00000057
	.4byte 0x00000002
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x00000048
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x00000023
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
.endobj vmBlobPackFormatList

# .data:0xF28 | 0x81669F98 | size: 0xA
.obj lbl_81669F98, global
	.string "getLength"
.endobj lbl_81669F98

# .data:0xF32 | 0x81669FA2 | size: 0xA
.obj lbl_81669FA2, global
	.string "setLength"
.endobj lbl_81669FA2

# .data:0xF3C | 0x81669FAC | size: 0xA
.obj lbl_81669FAC, global
	.string "getString"
.endobj lbl_81669FAC

# .data:0xF46 | 0x81669FB6 | size: 0xB
.obj lbl_81669FB6, global
	.string "getWString"
.endobj lbl_81669FB6

# .data:0xF51 | 0x81669FC1 | size: 0xA
.obj lbl_81669FC1, global
	.string "setString"
.endobj lbl_81669FC1

# .data:0xF5B | 0x81669FCB | size: 0xB
.obj lbl_81669FCB, global
	.string "setWString"
.endobj lbl_81669FCB

# .data:0xF66 | 0x81669FD6 | size: 0xD
.obj lbl_81669FD6, global
	.string "getHexString"
.endobj lbl_81669FD6

# .data:0xF73 | 0x81669FE3 | size: 0xE
.obj lbl_81669FE3, global
	.string "copyRangeFrom"
.endobj lbl_81669FE3

# .data:0xF81 | 0x81669FF1 | size: 0xF
.obj lbl_81669FF1, global
	.string "calcSHA1Digest"
.endobj lbl_81669FF1

# .data:0xF90 | 0x8166A000 | size: 0xE
.obj lbl_8166A000, global
	.string "calcMD5Digest"
.endobj lbl_8166A000

# .data:0xF9E | 0x8166A00E | size: 0xA
.obj lbl_8166A00E, global
	.string "calcCRC16"
.endobj lbl_8166A00E

# .data:0xFA8 | 0x8166A018 | size: 0xA
.obj lbl_8166A018, global
	.string "calcCRC32"
.endobj lbl_8166A018

# .data:0xFB2 | 0x8166A022 | size: 0x9
.obj lbl_8166A022, global
	.string "calcHMAC"
.endobj lbl_8166A022

# .data:0xFBB | 0x8166A02B | size: 0x14
.obj lbl_8166A02B, global
	.string "calcRangeSHA1Digest"
.endobj lbl_8166A02B

# .data:0xFCF | 0x8166A03F | size: 0x13
.obj lbl_8166A03F, global
	.string "calcRangeMD5Digest"
.endobj lbl_8166A03F

# .data:0xFE2 | 0x8166A052 | size: 0xF
.obj lbl_8166A052, global
	.string "calcRangeCRC16"
.endobj lbl_8166A052

# .data:0xFF1 | 0x8166A061 | size: 0xF
.obj lbl_8166A061, global
	.string "calcRangeCRC32"
.endobj lbl_8166A061

# .data:0x1000 | 0x8166A070 | size: 0xE
.obj lbl_8166A070, global
	.string "calcRangeHMAC"
.endobj lbl_8166A070

# .data:0x100E | 0x8166A07E | size: 0x29
.obj lbl_8166A07E, global
	.string "document.write(): conversion error (%d)\n"
.endobj lbl_8166A07E

# .data:0x1037 | 0x8166A0A7 | size: 0x9
.obj lbl_8166A0A7, global
	.string "document"
.endobj lbl_8166A0A7

# .data:0x1040 | 0x8166A0B0 | size: 0x1C
.obj lbl_8166A0B0, global
	.4byte 0x25733A20
	.4byte 0x6E6F2074
	.4byte 0x61626C65
	.4byte 0x20666F72
	.4byte 0x206F7020
	.4byte 0x27256327
	.4byte 0x0A000000
.endobj lbl_8166A0B0

# .data:0x105C | 0x8166A0CC | size: 0x28
.obj jumptable_8166A0CC, local
	.rel CHANSVmStep, .L_814574F8
	.rel CHANSVmStep, .L_81457468
	.rel CHANSVmStep, .L_81457490
	.rel CHANSVmStep, .L_814574A8
	.rel CHANSVmStep, .L_81457500
	.rel CHANSVmStep, .L_81457544
	.rel CHANSVmStep, .L_81457544
	.rel CHANSVmStep, .L_81457500
	.rel CHANSVmStep, .L_81457500
	.rel CHANSVmStep, .L_81457500
.endobj jumptable_8166A0CC

# .data:0x1084 | 0x8166A0F4 | size: 0xBC
.obj jumptable_8166A0F4, local
	.rel CHANSVmStep, .L_814566A0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566A0
	.rel CHANSVmStep, .L_81456698
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566A0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566A0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566B0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566B8
	.rel CHANSVmStep, .L_814566A8
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566C0
	.rel CHANSVmStep, .L_814566B8
.endobj jumptable_8166A0F4

# .data:0x1140 | 0x8166A1B0 | size: 0x100
.obj jumptable_8166A1B0, local
	.rel CHANSVmStep, .L_814569F4
	.rel CHANSVmStep, .L_81456A24
	.rel CHANSVmStep, .L_81456BE8
	.rel CHANSVmStep, .L_814570F8
	.rel CHANSVmStep, .L_81456854
	.rel CHANSVmStep, .L_814568C0
	.rel CHANSVmStep, .L_814568D4
	.rel CHANSVmStep, .L_814568E4
	.rel CHANSVmStep, .L_814568F4
	.rel CHANSVmStep, .L_81456904
	.rel CHANSVmStep, .L_81456914
	.rel CHANSVmStep, .L_81456924
	.rel CHANSVmStep, .L_81456934
	.rel CHANSVmStep, .L_81456944
	.rel CHANSVmStep, .L_81456954
	.rel CHANSVmStep, .L_81456964
	.rel CHANSVmStep, .L_81456974
	.rel CHANSVmStep, .L_81456984
	.rel CHANSVmStep, .L_81456994
	.rel CHANSVmStep, .L_814569A4
	.rel CHANSVmStep, .L_814569B4
	.rel CHANSVmStep, .L_814569C4
	.rel CHANSVmStep, .L_81456A3C
	.rel CHANSVmStep, .L_81456AFC
	.rel CHANSVmStep, .L_81456490
	.rel CHANSVmStep, .L_81456518
	.rel CHANSVmStep, .L_81456528
	.rel CHANSVmStep, .L_81456538
	.rel CHANSVmStep, .L_81456548
	.rel CHANSVmStep, .L_81456558
	.rel CHANSVmStep, .L_81456568
	.rel CHANSVmStep, .L_81456578
	.rel CHANSVmStep, .L_81456588
	.rel CHANSVmStep, .L_81456598
	.rel CHANSVmStep, .L_814565A8
	.rel CHANSVmStep, .L_814565B8
	.rel CHANSVmStep, .L_814565C8
	.rel CHANSVmStep, .L_814565D8
	.rel CHANSVmStep, .L_814565E8
	.rel CHANSVmStep, .L_81456498
	.rel CHANSVmStep, .L_814564A0
	.rel CHANSVmStep, .L_814564A8
	.rel CHANSVmStep, .L_814564DC
	.rel CHANSVmStep, .L_81457268
	.rel CHANSVmStep, .L_81456D1C
	.rel CHANSVmStep, .L_81456DC0
	.rel CHANSVmStep, .L_8145730C
	.rel CHANSVmStep, .L_8145730C
	.rel CHANSVmStep, .L_81456BA8
	.rel CHANSVmStep, .L_81456C04
	.rel CHANSVmStep, .L_81456C48
	.rel CHANSVmStep, .L_81456C48
	.rel CHANSVmStep, .L_81456EE0
	.rel CHANSVmStep, .L_814571C8
	.rel CHANSVmStep, .L_81457280
	.rel CHANSVmStep, .L_814572D4
	.rel CHANSVmStep, .L_8145730C
	.rel CHANSVmStep, .L_8145730C
	.rel CHANSVmStep, .L_8145730C
	.rel CHANSVmStep, .L_8145730C
	.rel CHANSVmStep, .L_8145730C
	.rel CHANSVmStep, .L_8145730C
	.rel CHANSVmStep, .L_81456B38
	.rel CHANSVmStep, .L_81456C94
.endobj jumptable_8166A1B0

# 0x81694F08..0x81694FC0 | size: 0xB8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694F08 | size: 0x8
.obj lbl_81694F08, global
	.8byte 0x7FFFFFFFFFFFFFFF # NaN
.endobj lbl_81694F08

# .sdata2:0x8 | 0x81694F10 | size: 0x8
.obj lbl_81694F10, global
	.double -0
.endobj lbl_81694F10

# .sdata2:0x10 | 0x81694F18 | size: 0x8
.obj lbl_81694F18, global
	.double inf
.endobj lbl_81694F18

# .sdata2:0x18 | 0x81694F20 | size: 0x8
.obj lbl_81694F20, global
	.double -inf
.endobj lbl_81694F20

# .sdata2:0x20 | 0x81694F28 | size: 0x8
.obj lbl_81694F28, global
	.double 0
.endobj lbl_81694F28

# .sdata2:0x28 | 0x81694F30 | size: 0x8
.obj lbl_81694F30, global
	.double -1
.endobj lbl_81694F30

# .sdata2:0x30 | 0x81694F38 | size: 0x8
.obj lbl_81694F38, global
	.double 1
.endobj lbl_81694F38

# .sdata2:0x38 | 0x81694F40 | size: 0x8
.obj lbl_81694F40, global
	.4byte 0x41727261
	.4byte 0x79000000
.endobj lbl_81694F40

# .sdata2:0x40 | 0x81694F48 | size: 0x8
.obj lbl_81694F48, global
	.double 2.718281828459045
.endobj lbl_81694F48

# .sdata2:0x48 | 0x81694F50 | size: 0x8
.obj lbl_81694F50, global
	.double 2.302585092994046
.endobj lbl_81694F50

# .sdata2:0x50 | 0x81694F58 | size: 0x8
.obj lbl_81694F58, global
	.double 0.6931471805599453
.endobj lbl_81694F58

# .sdata2:0x58 | 0x81694F60 | size: 0x8
.obj lbl_81694F60, global
	.double 1.4426950408889634
.endobj lbl_81694F60

# .sdata2:0x60 | 0x81694F68 | size: 0x8
.obj lbl_81694F68, global
	.double 0.4342944819032518
.endobj lbl_81694F68

# .sdata2:0x68 | 0x81694F70 | size: 0x8
.obj lbl_81694F70, global
	.double 3.141592653589793
.endobj lbl_81694F70

# .sdata2:0x70 | 0x81694F78 | size: 0x8
.obj lbl_81694F78, global
	.double 0.7071067811865476
.endobj lbl_81694F78

# .sdata2:0x78 | 0x81694F80 | size: 0x8
.obj lbl_81694F80, global
	.double 1.4142135623730951
.endobj lbl_81694F80

# .sdata2:0x80 | 0x81694F88 | size: 0x8
.obj lbl_81694F88, global
	.double 32767
.endobj lbl_81694F88

# .sdata2:0x88 | 0x81694F90 | size: 0x8
.obj lbl_81694F90, global
	.double 4503601774854144
.endobj lbl_81694F90

# .sdata2:0x90 | 0x81694F98 | size: 0x8
.obj lbl_81694F98, global
	.double 0.5
.endobj lbl_81694F98

# .sdata2:0x98 | 0x81694FA0 | size: 0x7
.obj lbl_81694FA0, global
	.string "String"
.endobj lbl_81694FA0

# .sdata2:0x9F | 0x81694FA7 | size: 0x5
.obj lbl_81694FA7, global
	.string "Blob"
.endobj lbl_81694FA7

# .sdata2:0xA4 | 0x81694FAC | size: 0xC
.obj lbl_81694FAC, global
	.4byte lbl_816977A6
	.4byte VmMethod_write
	.4byte 0x00000000
.endobj lbl_81694FAC

# .sdata2:0xB0 | 0x81694FB8 | size: 0x8
.obj lbl_81694FB8, global
	.double 4294967294
.endobj lbl_81694FB8

# 0x81697578..0x816977D0 | size: 0x258
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697578 | size: 0x7
.obj lbl_81697578, global
	.4byte 0x004E0061
	.byte 0x00, 0x4E, 0x00
.endobj lbl_81697578

# .sdata:0x7 | 0x8169757F | size: 0x3
.obj lbl_8169757F, global
	.byte 0x00, 0x2C, 0x00
.endobj lbl_8169757F

# .sdata:0xA | 0x81697582 | size: 0x1
.obj lbl_81697582, global
	.byte 0x00
.endobj lbl_81697582

# .sdata:0xB | 0x81697583 | size: 0x3
.obj lbl_81697583, global
	.string "%s"
.endobj lbl_81697583

# .sdata:0xE | 0x81697586 | size: 0x4
.obj lbl_81697586, global
	.string "NaN"
.endobj lbl_81697586

# .sdata:0x12 | 0x8169758A | size: 0x7
.obj lbl_8169758A, global
	.string "%.16lg"
.endobj lbl_8169758A

# .sdata:0x19 | 0x81697591 | size: 0x5
.obj lbl_81697591, global
	.string "%lld"
.endobj lbl_81697591

# .sdata:0x1E | 0x81697596 | size: 0x7
.obj lbl_81697596, global
	.string "length"
.endobj lbl_81697596

# .sdata:0x25 | 0x8169759D | size: 0x5
.obj lbl_8169759D, global
	.string "join"
.endobj lbl_8169759D

# .sdata:0x2A | 0x816975A2 | size: 0x6
.obj lbl_816975A2, global
	.string "new2d"
.endobj lbl_816975A2

# .sdata:0x30 | 0x816975A8 | size: 0x4
.obj lbl_816975A8, global
	.string "pop"
.endobj lbl_816975A8

# .sdata:0x34 | 0x816975AC | size: 0x5
.obj lbl_816975AC, global
	.string "push"
.endobj lbl_816975AC

# .sdata:0x39 | 0x816975B1 | size: 0x6
.obj lbl_816975B1, global
	.string "shift"
.endobj lbl_816975B1

# .sdata:0x3F | 0x816975B7 | size: 0x6
.obj lbl_816975B7, global
	.string "slice"
.endobj lbl_816975B7

# .sdata:0x45 | 0x816975BD | size: 0x8
.obj lbl_816975BD, global
	.string "unshift"
.endobj lbl_816975BD

# .sdata:0x4D | 0x816975C5 | size: 0x7
.obj lbl_816975C5, global
	.4byte 0x00550054
	.byte 0x00, 0x43, 0x00
.endobj lbl_816975C5

# .sdata:0x54 | 0x816975CC | size: 0x4
.obj lbl_816975CC, global
	.string "Sun"
.endobj lbl_816975CC

# .sdata:0x58 | 0x816975D0 | size: 0x4
.obj lbl_816975D0, global
	.string "Mon"
.endobj lbl_816975D0

# .sdata:0x5C | 0x816975D4 | size: 0x4
.obj lbl_816975D4, global
	.string "Tue"
.endobj lbl_816975D4

# .sdata:0x60 | 0x816975D8 | size: 0x4
.obj lbl_816975D8, global
	.string "Wed"
.endobj lbl_816975D8

# .sdata:0x64 | 0x816975DC | size: 0x4
.obj lbl_816975DC, global
	.string "Thu"
.endobj lbl_816975DC

# .sdata:0x68 | 0x816975E0 | size: 0x4
.obj lbl_816975E0, global
	.string "Fri"
.endobj lbl_816975E0

# .sdata:0x6C | 0x816975E4 | size: 0x4
.obj lbl_816975E4, global
	.string "Sat"
.endobj lbl_816975E4

# .sdata:0x70 | 0x816975E8 | size: 0x4
.obj lbl_816975E8, global
	.string "Jan"
.endobj lbl_816975E8

# .sdata:0x74 | 0x816975EC | size: 0x4
.obj lbl_816975EC, global
	.string "Feb"
.endobj lbl_816975EC

# .sdata:0x78 | 0x816975F0 | size: 0x4
.obj lbl_816975F0, global
	.string "Mar"
.endobj lbl_816975F0

# .sdata:0x7C | 0x816975F4 | size: 0x4
.obj lbl_816975F4, global
	.string "Apr"
.endobj lbl_816975F4

# .sdata:0x80 | 0x816975F8 | size: 0x4
.obj lbl_816975F8, global
	.string "May"
.endobj lbl_816975F8

# .sdata:0x84 | 0x816975FC | size: 0x4
.obj lbl_816975FC, global
	.string "Jun"
.endobj lbl_816975FC

# .sdata:0x88 | 0x81697600 | size: 0x4
.obj lbl_81697600, global
	.string "Jul"
.endobj lbl_81697600

# .sdata:0x8C | 0x81697604 | size: 0x4
.obj lbl_81697604, global
	.string "Aug"
.endobj lbl_81697604

# .sdata:0x90 | 0x81697608 | size: 0x4
.obj lbl_81697608, global
	.string "Sep"
.endobj lbl_81697608

# .sdata:0x94 | 0x8169760C | size: 0x4
.obj lbl_8169760C, global
	.string "Oct"
.endobj lbl_8169760C

# .sdata:0x98 | 0x81697610 | size: 0x4
.obj lbl_81697610, global
	.string "Nov"
.endobj lbl_81697610

# .sdata:0x9C | 0x81697614 | size: 0x4
.obj lbl_81697614, global
	.string "Dec"
.endobj lbl_81697614

# .sdata:0xA0 | 0x81697618 | size: 0x8
.obj lbl_81697618, global
	.string "getDate"
.endobj lbl_81697618

# .sdata:0xA8 | 0x81697620 | size: 0x7
.obj lbl_81697620, global
	.string "getDay"
.endobj lbl_81697620

# .sdata:0xAF | 0x81697627 | size: 0x8
.obj lbl_81697627, global
	.string "getTime"
.endobj lbl_81697627

# .sdata:0xB7 | 0x8169762F | size: 0x7
.obj lbl_8169762F, global
	.string "getRTC"
.endobj lbl_8169762F

# .sdata:0xBE | 0x81697636 | size: 0x2
.obj lbl_81697636, global
	.string "E"
.endobj lbl_81697636

# .sdata:0xC0 | 0x81697638 | size: 0x5
.obj lbl_81697638, global
	.string "LN10"
.endobj lbl_81697638

# .sdata:0xC5 | 0x8169763D | size: 0x4
.obj lbl_8169763D, global
	.string "LN2"
.endobj lbl_8169763D

# .sdata:0xC9 | 0x81697641 | size: 0x6
.obj lbl_81697641, global
	.string "LOG2E"
.endobj lbl_81697641

# .sdata:0xCF | 0x81697647 | size: 0x7
.obj lbl_81697647, global
	.string "LOG10E"
.endobj lbl_81697647

# .sdata:0xD6 | 0x8169764E | size: 0x3
.obj lbl_8169764E, global
	.string "PI"
.endobj lbl_8169764E

# .sdata:0xD9 | 0x81697651 | size: 0x8
.obj lbl_81697651, global
	.string "SQRT1_2"
.endobj lbl_81697651

# .sdata:0xE1 | 0x81697659 | size: 0x6
.obj lbl_81697659, global
	.string "SQRT2"
.endobj lbl_81697659

# .sdata:0xE7 | 0x8169765F | size: 0x4
.obj lbl_8169765F, global
	.string "abs"
.endobj lbl_8169765F

# .sdata:0xEB | 0x81697663 | size: 0x5
.obj lbl_81697663, global
	.string "acos"
.endobj lbl_81697663

# .sdata:0xF0 | 0x81697668 | size: 0x5
.obj lbl_81697668, global
	.string "asin"
.endobj lbl_81697668

# .sdata:0xF5 | 0x8169766D | size: 0x5
.obj lbl_8169766D, global
	.string "atan"
.endobj lbl_8169766D

# .sdata:0xFA | 0x81697672 | size: 0x6
.obj lbl_81697672, global
	.string "atan2"
.endobj lbl_81697672

# .sdata:0x100 | 0x81697678 | size: 0x5
.obj lbl_81697678, global
	.string "ceil"
.endobj lbl_81697678

# .sdata:0x105 | 0x8169767D | size: 0x4
.obj lbl_8169767D, global
	.string "cos"
.endobj lbl_8169767D

# .sdata:0x109 | 0x81697681 | size: 0x4
.obj lbl_81697681, global
	.string "exp"
.endobj lbl_81697681

# .sdata:0x10D | 0x81697685 | size: 0x6
.obj lbl_81697685, global
	.string "floor"
.endobj lbl_81697685

# .sdata:0x113 | 0x8169768B | size: 0x4
.obj lbl_8169768B, global
	.string "log"
.endobj lbl_8169768B

# .sdata:0x117 | 0x8169768F | size: 0x4
.obj lbl_8169768F, global
	.string "max"
.endobj lbl_8169768F

# .sdata:0x11B | 0x81697693 | size: 0x4
.obj lbl_81697693, global
	.string "min"
.endobj lbl_81697693

# .sdata:0x11F | 0x81697697 | size: 0x4
.obj lbl_81697697, global
	.string "pow"
.endobj lbl_81697697

# .sdata:0x123 | 0x8169769B | size: 0x7
.obj lbl_8169769B, global
	.string "random"
.endobj lbl_8169769B

# .sdata:0x12A | 0x816976A2 | size: 0x6
.obj lbl_816976A2, global
	.string "round"
.endobj lbl_816976A2

# .sdata:0x130 | 0x816976A8 | size: 0x4
.obj lbl_816976A8, global
	.string "sin"
.endobj lbl_816976A8

# .sdata:0x134 | 0x816976AC | size: 0x5
.obj lbl_816976AC, global
	.string "sqrt"
.endobj lbl_816976AC

# .sdata:0x139 | 0x816976B1 | size: 0x4
.obj lbl_816976B1, global
	.string "tan"
.endobj lbl_816976B1

# .sdata:0x13D | 0x816976B5 | size: 0x7
.obj lbl_816976B5, global
	.string "charAt"
.endobj lbl_816976B5

# .sdata:0x144 | 0x816976BC | size: 0x8
.obj lbl_816976BC, global
	.string "*format"
.endobj lbl_816976BC

# .sdata:0x14C | 0x816976C4 | size: 0x8
.obj lbl_816976C4, global
	.string "indexOf"
.endobj lbl_816976C4

# .sdata:0x154 | 0x816976CC | size: 0x8
.obj lbl_816976CC, global
	.string "replace"
.endobj lbl_816976CC

# .sdata:0x15C | 0x816976D4 | size: 0x7
.obj lbl_816976D4, global
	.string "search"
.endobj lbl_816976D4

# .sdata:0x163 | 0x816976DB | size: 0x9
.obj lbl_816976DB, global
	.4byte 0x73706C69
	.4byte 0x74000000
	.byte 0x00
.endobj lbl_816976DB

# .sdata:0x16C | 0x816976E4 | size: 0x4
.obj lbl_816976E4, global
	.4byte lbl_81669DF5
.endobj lbl_816976E4

# .sdata:0x170 | 0x816976E8 | size: 0x4
.obj lbl_816976E8, global
	.4byte lbl_81669DF5
.endobj lbl_816976E8

# .sdata:0x174 | 0x816976EC | size: 0x7
.obj lbl_816976EC, global
	.string "offset"
.endobj lbl_816976EC

# .sdata:0x17B | 0x816976F3 | size: 0x8
.obj lbl_816976F3, global
	.string "*create"
.endobj lbl_816976F3

# .sdata:0x183 | 0x816976FB | size: 0x5
.obj lbl_816976FB, global
	.string "seek"
.endobj lbl_816976FB

# .sdata:0x188 | 0x81697700 | size: 0x5
.obj lbl_81697700, global
	.string "skip"
.endobj lbl_81697700

# .sdata:0x18D | 0x81697705 | size: 0x8
.obj lbl_81697705, global
	.string "isEqual"
.endobj lbl_81697705

# .sdata:0x195 | 0x8169770D | size: 0x5
.obj lbl_8169770D, global
	.string "fill"
.endobj lbl_8169770D

# .sdata:0x19A | 0x81697712 | size: 0x6
.obj lbl_81697712, global
	.string "getU8"
.endobj lbl_81697712

# .sdata:0x1A0 | 0x81697718 | size: 0x7
.obj lbl_81697718, global
	.string "getU16"
.endobj lbl_81697718

# .sdata:0x1A7 | 0x8169771F | size: 0x7
.obj lbl_8169771F, global
	.string "getU32"
.endobj lbl_8169771F

# .sdata:0x1AE | 0x81697726 | size: 0x6
.obj lbl_81697726, global
	.string "getS8"
.endobj lbl_81697726

# .sdata:0x1B4 | 0x8169772C | size: 0x7
.obj lbl_8169772C, global
	.string "getS16"
.endobj lbl_8169772C

# .sdata:0x1BB | 0x81697733 | size: 0x7
.obj lbl_81697733, global
	.string "getS32"
.endobj lbl_81697733

# .sdata:0x1C2 | 0x8169773A | size: 0x7
.obj lbl_8169773A, global
	.string "getS64"
.endobj lbl_8169773A

# .sdata:0x1C9 | 0x81697741 | size: 0x6
.obj lbl_81697741, global
	.string "setU8"
.endobj lbl_81697741

# .sdata:0x1CF | 0x81697747 | size: 0x7
.obj lbl_81697747, global
	.string "setU16"
.endobj lbl_81697747

# .sdata:0x1D6 | 0x8169774E | size: 0x7
.obj lbl_8169774E, global
	.string "setU32"
.endobj lbl_8169774E

# .sdata:0x1DD | 0x81697755 | size: 0x6
.obj lbl_81697755, global
	.string "setS8"
.endobj lbl_81697755

# .sdata:0x1E3 | 0x8169775B | size: 0x7
.obj lbl_8169775B, global
	.string "setS16"
.endobj lbl_8169775B

# .sdata:0x1EA | 0x81697762 | size: 0x7
.obj lbl_81697762, global
	.string "setS32"
.endobj lbl_81697762

# .sdata:0x1F1 | 0x81697769 | size: 0x7
.obj lbl_81697769, global
	.string "setS64"
.endobj lbl_81697769

# .sdata:0x1F8 | 0x81697770 | size: 0x8
.obj lbl_81697770, global
	.string "getBlob"
.endobj lbl_81697770

# .sdata:0x200 | 0x81697778 | size: 0x8
.obj lbl_81697778, global
	.string "setBlob"
.endobj lbl_81697778

# .sdata:0x208 | 0x81697780 | size: 0x5
.obj lbl_81697780, global
	.string "pack"
.endobj lbl_81697780

# .sdata:0x20D | 0x81697785 | size: 0x7
.obj lbl_81697785, global
	.string "unpack"
.endobj lbl_81697785

# .sdata:0x214 | 0x8169778C | size: 0x6
.obj lbl_8169778C, global
	.string "Image"
.endobj lbl_8169778C

# .sdata:0x21A | 0x81697792 | size: 0x6
.obj lbl_81697792, global
	.string "width"
.endobj lbl_81697792

# .sdata:0x220 | 0x81697798 | size: 0x7
.obj lbl_81697798, global
	.string "height"
.endobj lbl_81697798

# .sdata:0x227 | 0x8169779F | size: 0x7
.obj lbl_8169779F, global
	.string "format"
.endobj lbl_8169779F

# .sdata:0x22E | 0x816977A6 | size: 0x6
.obj lbl_816977A6, global
	.string "write"
.endobj lbl_816977A6

# .sdata:0x234 | 0x816977AC | size: 0x5
.obj lbl_816977AC, global
	.string "Date"
.endobj lbl_816977AC

# .sdata:0x239 | 0x816977B1 | size: 0x6
.obj lbl_816977B1, global
	.string "@Math"
.endobj lbl_816977B1

# .sdata:0x23F | 0x816977B7 | size: 0x5
.obj lbl_816977B7, global
	.string "Math"
.endobj lbl_816977B7

# .sdata:0x244 | 0x816977BC | size: 0x8
.obj lbl_816977BC, global
	.string "@WinEmu"
.endobj lbl_816977BC

# .sdata:0x24C | 0x816977C4 | size: 0xC
.obj lbl_816977C4, global
	.4byte 0x52434845
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816977C4

# 0x81698D50..0x81698D60 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698D50 | size: 0x4
.obj VmImageCtorCallback, global
	.skip 0x4
.endobj VmImageCtorCallback

# .sbss:0x4 | 0x81698D54 | size: 0x4
.obj lbl_81698D54, global
	.skip 0x4
.endobj lbl_81698D54

# .sbss:0x8 | 0x81698D58 | size: 0x8
.obj CHANSVmDebugVerboseMode, global
	.skip 0x8
.endobj CHANSVmDebugVerboseMode
