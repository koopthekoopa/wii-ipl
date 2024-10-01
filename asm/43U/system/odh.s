.include "macros.inc"
.file "odh.cpp"

# 0x8135B53C..0x8135EE98 | size: 0x395C
.text
.balign 4

# .text:0x0 | 0x8135B53C | size: 0x64
.fn ODHEncodeRGB565, global
/* 8135B53C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135B540 | 7C 08 02 A6 */	mflr r0
/* 8135B544 | 7C CC 33 78 */	mr r12, r6
/* 8135B548 | 7C EB 3B 78 */	mr r11, r7
/* 8135B54C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135B550 | 7D 2A 4B 78 */	mr r10, r9
/* 8135B554 | 38 00 00 00 */	li r0, 0x0
/* 8135B558 | 7D 87 63 78 */	mr r7, r12
/* 8135B55C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8135B560 | 7C BF 2B 78 */	mr r31, r5
/* 8135B564 | 7F E6 FB 78 */	mr r6, r31
/* 8135B568 | 7D 69 5B 78 */	mr r9, r11
/* 8135B56C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8135B570 | 7C 9E 23 78 */	mr r30, r4
/* 8135B574 | 7C 64 1B 78 */	mr r4, r3
/* 8135B578 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8135B57C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8135B580 | 7F C5 F3 78 */	mr r5, r30
/* 8135B584 | 48 00 02 6D */	bl compressGbaOdh__9CArGBAOdhFPUcPUciiiUlPUci
/* 8135B588 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135B58C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8135B590 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8135B594 | 7C 08 03 A6 */	mtlr r0
/* 8135B598 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135B59C | 4E 80 00 20 */	blr
.endfn ODHEncodeRGB565

# .text:0x64 | 0x8135B5A0 | size: 0x50
.fn ODHDecodeRGB565, global
/* 8135B5A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135B5A4 | 7C 08 02 A6 */	mflr r0
/* 8135B5A8 | 7C 8C 23 78 */	mr r12, r4
/* 8135B5AC | 7C AB 2B 78 */	mr r11, r5
/* 8135B5B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135B5B4 | 7C CA 33 78 */	mr r10, r6
/* 8135B5B8 | 7C E0 3B 78 */	mr r0, r7
/* 8135B5BC | 7D 09 43 78 */	mr r9, r8
/* 8135B5C0 | 7C 64 1B 78 */	mr r4, r3
/* 8135B5C4 | 7D 47 53 78 */	mr r7, r10
/* 8135B5C8 | 7D 85 63 78 */	mr r5, r12
/* 8135B5CC | 7D 66 5B 78 */	mr r6, r11
/* 8135B5D0 | 7C 08 03 78 */	mr r8, r0
/* 8135B5D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8135B5D8 | 39 40 00 00 */	li r10, 0x0
/* 8135B5DC | 48 00 00 8D */	bl decompressGbaOdh__9CArGBAOdhFPUciPUciPUcii
/* 8135B5E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135B5E4 | 7C 08 03 A6 */	mtlr r0
/* 8135B5E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135B5EC | 4E 80 00 20 */	blr
.endfn ODHDecodeRGB565

# .text:0xB4 | 0x8135B5F0 | size: 0x50
.fn ODHDecodeRGBA8, global
/* 8135B5F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135B5F4 | 7C 08 02 A6 */	mflr r0
/* 8135B5F8 | 7C 8C 23 78 */	mr r12, r4
/* 8135B5FC | 7C AB 2B 78 */	mr r11, r5
/* 8135B600 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135B604 | 7C CA 33 78 */	mr r10, r6
/* 8135B608 | 7C E0 3B 78 */	mr r0, r7
/* 8135B60C | 7D 09 43 78 */	mr r9, r8
/* 8135B610 | 7C 64 1B 78 */	mr r4, r3
/* 8135B614 | 7D 47 53 78 */	mr r7, r10
/* 8135B618 | 7D 85 63 78 */	mr r5, r12
/* 8135B61C | 7D 66 5B 78 */	mr r6, r11
/* 8135B620 | 7C 08 03 78 */	mr r8, r0
/* 8135B624 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8135B628 | 39 40 00 01 */	li r10, 0x1
/* 8135B62C | 48 00 00 3D */	bl decompressGbaOdh__9CArGBAOdhFPUciPUciPUcii
/* 8135B630 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135B634 | 7C 08 03 A6 */	mtlr r0
/* 8135B638 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135B63C | 4E 80 00 20 */	blr
.endfn ODHDecodeRGBA8

# .text:0x104 | 0x8135B640 | size: 0x14
.fn ODHGetWidth, global
/* 8135B640 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8135B644 | 54 03 05 7E */	clrlwi r3, r0, 21
/* 8135B648 | 38 03 00 07 */	addi r0, r3, 0x7
/* 8135B64C | 54 03 05 78 */	rlwinm r3, r0, 0, 21, 28
/* 8135B650 | 4E 80 00 20 */	blr
.endfn ODHGetWidth

# .text:0x118 | 0x8135B654 | size: 0x14
.fn ODHGetHeight, global
/* 8135B654 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8135B658 | 54 03 AD 7E */	extrwi r3, r0, 11, 10
/* 8135B65C | 38 03 00 07 */	addi r0, r3, 0x7
/* 8135B660 | 54 03 05 78 */	rlwinm r3, r0, 0, 21, 28
/* 8135B664 | 4E 80 00 20 */	blr
.endfn ODHGetHeight

# .text:0x12C | 0x8135B668 | size: 0x188
# CArGBAOdh::decompressGbaOdh(unsigned char*, int, unsigned char*, int, unsigned char*, int, int)
.fn decompressGbaOdh__9CArGBAOdhFPUciPUciPUcii, global
/* 8135B668 | 94 21 FB 50 */	stwu r1, -0x4b0(r1)
/* 8135B66C | 7C 08 02 A6 */	mflr r0
/* 8135B670 | 90 01 04 B4 */	stw r0, 0x4b4(r1)
/* 8135B674 | 39 61 04 B0 */	addi r11, r1, 0x4b0
/* 8135B678 | 48 29 DE 3D */	bl _savegpr_24
/* 8135B67C | 2C 05 00 10 */	cmpwi r5, 0x10
/* 8135B680 | 3F E0 81 64 */	lis r31, hufftreePtr@ha
/* 8135B684 | 7C 78 1B 78 */	mr r24, r3
/* 8135B688 | 7C B9 2B 78 */	mr r25, r5
/* 8135B68C | 7C DA 33 78 */	mr r26, r6
/* 8135B690 | 7D 3B 4B 78 */	mr r27, r9
/* 8135B694 | 7D 5C 53 78 */	mr r28, r10
/* 8135B698 | 3B FF 92 D8 */	addi r31, r31, hufftreePtr@l
/* 8135B69C | 41 81 00 18 */	bgt .L_8135B6B4
/* 8135B6A0 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 8135B6A4 | 4C C6 31 82 */	crclr cr1eq
/* 8135B6A8 | 48 1D 2F F9 */	bl OSReport
/* 8135B6AC | 38 60 00 00 */	li r3, 0x0
/* 8135B6B0 | 48 00 01 28 */	b .L_8135B7D8
.L_8135B6B4:
/* 8135B6B4 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8135B6B8 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8135B6BC | 54 05 05 7E */	clrlwi r5, r0, 21
/* 8135B6C0 | 54 03 AD 7E */	extrwi r3, r0, 11, 10
/* 8135B6C4 | 38 A5 00 07 */	addi r5, r5, 0x7
/* 8135B6C8 | 38 03 00 07 */	addi r0, r3, 0x7
/* 8135B6CC | 54 BE 05 78 */	rlwinm r30, r5, 0, 21, 28
/* 8135B6D0 | 54 1D 05 78 */	rlwinm r29, r0, 0, 21, 28
/* 8135B6D4 | 40 82 00 10 */	bne .L_8135B6E4
/* 8135B6D8 | 7C 1E E9 D6 */	mullw r0, r30, r29
/* 8135B6DC | 54 03 08 3C */	slwi r3, r0, 1
/* 8135B6E0 | 48 00 00 20 */	b .L_8135B700
.L_8135B6E4:
/* 8135B6E4 | 2C 0A 00 01 */	cmpwi r10, 0x1
/* 8135B6E8 | 40 82 00 10 */	bne .L_8135B6F8
/* 8135B6EC | 7C 1E E9 D6 */	mullw r0, r30, r29
/* 8135B6F0 | 54 03 10 3A */	slwi r3, r0, 2
/* 8135B6F4 | 48 00 00 0C */	b .L_8135B700
.L_8135B6F8:
/* 8135B6F8 | 7C 1E E9 D6 */	mullw r0, r30, r29
/* 8135B6FC | 1C 60 00 03 */	mulli r3, r0, 0x3
.L_8135B700:
/* 8135B700 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8135B704 | 40 82 00 08 */	bne .L_8135B70C
/* 8135B708 | 7C 67 1B 78 */	mr r7, r3
.L_8135B70C:
/* 8135B70C | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8135B710 | 40 82 00 08 */	bne .L_8135B718
/* 8135B714 | 1F 60 00 03 */	mulli r27, r0, 0x3
.L_8135B718:
/* 8135B718 | 7C 03 38 00 */	cmpw r3, r7
/* 8135B71C | 40 81 00 18 */	ble .L_8135B734
/* 8135B720 | 38 7F 00 36 */	addi r3, r31, 0x36
/* 8135B724 | 4C C6 31 82 */	crclr cr1eq
/* 8135B728 | 48 1D 2F 79 */	bl OSReport
/* 8135B72C | 38 60 00 00 */	li r3, 0x0
/* 8135B730 | 48 00 00 A8 */	b .L_8135B7D8
.L_8135B734:
/* 8135B734 | 7C 86 23 78 */	mr r6, r4
/* 8135B738 | 7F 03 C3 78 */	mr r3, r24
/* 8135B73C | 7D 05 43 78 */	mr r5, r8
/* 8135B740 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135B744 | 48 00 12 05 */	bl cdj_d_initializeDecompressOdh__9CArGBAOdhFP16SArCDJ_OdhMasterPUcPUc
/* 8135B748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B74C | 41 82 00 1C */	beq .L_8135B768
/* 8135B750 | 7C 64 1B 78 */	mr r4, r3
/* 8135B754 | 38 7F 00 62 */	addi r3, r31, 0x62
/* 8135B758 | 4C C6 31 82 */	crclr cr1eq
/* 8135B75C | 48 1D 2F 45 */	bl OSReport
/* 8135B760 | 38 60 00 00 */	li r3, 0x0
/* 8135B764 | 48 00 00 74 */	b .L_8135B7D8
.L_8135B768:
/* 8135B768 | 7F 03 C3 78 */	mr r3, r24
/* 8135B76C | 7F 25 CB 78 */	mr r5, r25
/* 8135B770 | 7F 66 DB 78 */	mr r6, r27
/* 8135B774 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135B778 | 48 00 13 6D */	bl cdj_d_decompressLoop__9CArGBAOdhFP16SArCDJ_OdhMasterii
/* 8135B77C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B780 | 41 82 00 1C */	beq .L_8135B79C
/* 8135B784 | 7C 64 1B 78 */	mr r4, r3
/* 8135B788 | 38 7F 00 8C */	addi r3, r31, 0x8c
/* 8135B78C | 4C C6 31 82 */	crclr cr1eq
/* 8135B790 | 48 1D 2F 11 */	bl OSReport
/* 8135B794 | 38 60 00 00 */	li r3, 0x0
/* 8135B798 | 48 00 00 40 */	b .L_8135B7D8
.L_8135B79C:
/* 8135B79C | 7F 03 C3 78 */	mr r3, r24
/* 8135B7A0 | 7F 45 D3 78 */	mr r5, r26
/* 8135B7A4 | 7F 86 E3 78 */	mr r6, r28
/* 8135B7A8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135B7AC | 48 00 22 11 */	bl cdj_d_colorDeconv__9CArGBAOdhFP16SArCDJ_OdhMasterPUci
/* 8135B7B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B7B4 | 41 82 00 1C */	beq .L_8135B7D0
/* 8135B7B8 | 7C 64 1B 78 */	mr r4, r3
/* 8135B7BC | 38 7F 00 B9 */	addi r3, r31, 0xb9
/* 8135B7C0 | 4C C6 31 82 */	crclr cr1eq
/* 8135B7C4 | 48 1D 2E DD */	bl OSReport
/* 8135B7C8 | 38 60 00 00 */	li r3, 0x0
/* 8135B7CC | 48 00 00 0C */	b .L_8135B7D8
.L_8135B7D0:
/* 8135B7D0 | 57 A0 80 1E */	slwi r0, r29, 16
/* 8135B7D4 | 7C 03 F3 78 */	or r3, r0, r30
.L_8135B7D8:
/* 8135B7D8 | 39 61 04 B0 */	addi r11, r1, 0x4b0
/* 8135B7DC | 48 29 DD 25 */	bl _restgpr_24
/* 8135B7E0 | 80 01 04 B4 */	lwz r0, 0x4b4(r1)
/* 8135B7E4 | 7C 08 03 A6 */	mtlr r0
/* 8135B7E8 | 38 21 04 B0 */	addi r1, r1, 0x4b0
/* 8135B7EC | 4E 80 00 20 */	blr
.endfn decompressGbaOdh__9CArGBAOdhFPUciPUciPUcii

# .text:0x2B4 | 0x8135B7F0 | size: 0x194
# CArGBAOdh::compressGbaOdh(unsigned char*, unsigned char*, int, int, int, unsigned long, unsigned char*, int)
.fn compressGbaOdh__9CArGBAOdhFPUcPUciiiUlPUci, global
/* 8135B7F0 | 94 21 FB 50 */	stwu r1, -0x4b0(r1)
/* 8135B7F4 | 7C 08 02 A6 */	mflr r0
/* 8135B7F8 | 90 01 04 B4 */	stw r0, 0x4b4(r1)
/* 8135B7FC | 39 61 04 B0 */	addi r11, r1, 0x4b0
/* 8135B800 | 48 29 DC B5 */	bl _savegpr_24
/* 8135B804 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8135B808 | 3F E0 81 64 */	lis r31, hufftreePtr@ha
/* 8135B80C | 83 A1 04 B8 */	lwz r29, 0x4b8(r1)
/* 8135B810 | 7C 78 1B 78 */	mr r24, r3
/* 8135B814 | 7C 9E 23 78 */	mr r30, r4
/* 8135B818 | 7C B9 2B 78 */	mr r25, r5
/* 8135B81C | 7D 1A 43 78 */	mr r26, r8
/* 8135B820 | 7D 3B 4B 78 */	mr r27, r9
/* 8135B824 | 7D 5C 53 78 */	mr r28, r10
/* 8135B828 | 3B FF 92 D8 */	addi r31, r31, hufftreePtr@l
/* 8135B82C | 40 82 00 0C */	bne .L_8135B838
/* 8135B830 | 7C 06 39 D6 */	mullw r0, r6, r7
/* 8135B834 | 54 1B 08 3C */	slwi r27, r0, 1
.L_8135B838:
/* 8135B838 | B0 C1 00 08 */	sth r6, 0x8(r1)
/* 8135B83C | 55 06 06 3E */	clrlwi r6, r8, 24
/* 8135B840 | 7F 03 C3 78 */	mr r3, r24
/* 8135B844 | 7F 28 CB 78 */	mr r8, r25
/* 8135B848 | B0 E1 00 0A */	sth r7, 0xa(r1)
/* 8135B84C | 7F 87 E3 78 */	mr r7, r28
/* 8135B850 | 7F 69 DB 78 */	mr r9, r27
/* 8135B854 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8135B858 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8135B85C | 48 00 01 29 */	bl cdj_c_initializeCompressOdh__9CArGBAOdhFP16SArCDJ_OdhMasterPUsUcPUcPUcUl
/* 8135B860 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B864 | 41 82 00 1C */	beq .L_8135B880
/* 8135B868 | 7C 64 1B 78 */	mr r4, r3
/* 8135B86C | 38 7F 00 EB */	addi r3, r31, 0xeb
/* 8135B870 | 4C C6 31 82 */	crclr cr1eq
/* 8135B874 | 48 1D 2E 2D */	bl OSReport
/* 8135B878 | 38 60 00 00 */	li r3, 0x0
/* 8135B87C | 48 00 00 F0 */	b .L_8135B96C
.L_8135B880:
/* 8135B880 | 7F 03 C3 78 */	mr r3, r24
/* 8135B884 | 7F C5 F3 78 */	mr r5, r30
/* 8135B888 | 7F A6 EB 78 */	mr r6, r29
/* 8135B88C | 38 81 00 0C */	addi r4, r1, 0xc
/* 8135B890 | 48 00 07 55 */	bl cdj_c_colorConv__9CArGBAOdhFP16SArCDJ_OdhMasterPUci
/* 8135B894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B898 | 41 82 00 1C */	beq .L_8135B8B4
/* 8135B89C | 7C 64 1B 78 */	mr r4, r3
/* 8135B8A0 | 38 7F 01 13 */	addi r3, r31, 0x113
/* 8135B8A4 | 4C C6 31 82 */	crclr cr1eq
/* 8135B8A8 | 48 1D 2D F9 */	bl OSReport
/* 8135B8AC | 38 60 00 00 */	li r3, 0x0
/* 8135B8B0 | 48 00 00 BC */	b .L_8135B96C
.L_8135B8B4:
/* 8135B8B4 | 7F 03 C3 78 */	mr r3, r24
/* 8135B8B8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8135B8BC | 48 00 02 65 */	bl cdj_c_compressLoop__9CArGBAOdhFP16SArCDJ_OdhMaster
/* 8135B8C0 | 7C 7E 1B 78 */	mr r30, r3
/* 8135B8C4 | 3B A0 00 01 */	li r29, 0x1
/* 8135B8C8 | 48 00 00 94 */	b .L_8135B95C
.L_8135B8CC:
/* 8135B8CC | 88 A1 00 10 */	lbz r5, 0x10(r1)
/* 8135B8D0 | 7F A4 EB 78 */	mr r4, r29
/* 8135B8D4 | 7F C6 F3 78 */	mr r6, r30
/* 8135B8D8 | 38 7F 01 41 */	addi r3, r31, 0x141
/* 8135B8DC | 4C C6 31 82 */	crclr cr1eq
/* 8135B8E0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8135B8E4 | 48 1D 2D BD */	bl OSReport
/* 8135B8E8 | 37 5A FF FB */	subic. r26, r26, 0x5
/* 8135B8EC | 40 81 00 58 */	ble .L_8135B944
/* 8135B8F0 | 7F 03 C3 78 */	mr r3, r24
/* 8135B8F4 | 7F 87 E3 78 */	mr r7, r28
/* 8135B8F8 | 7F 28 CB 78 */	mr r8, r25
/* 8135B8FC | 7F 69 DB 78 */	mr r9, r27
/* 8135B900 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8135B904 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8135B908 | 57 46 06 3E */	clrlwi r6, r26, 24
/* 8135B90C | 48 00 00 79 */	bl cdj_c_initializeCompressOdh__9CArGBAOdhFP16SArCDJ_OdhMasterPUsUcPUcPUcUl
/* 8135B910 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B914 | 41 82 00 1C */	beq .L_8135B930
/* 8135B918 | 7C 64 1B 78 */	mr r4, r3
/* 8135B91C | 38 7F 01 79 */	addi r3, r31, 0x179
/* 8135B920 | 4C C6 31 82 */	crclr cr1eq
/* 8135B924 | 48 1D 2D 7D */	bl OSReport
/* 8135B928 | 38 60 00 00 */	li r3, 0x0
/* 8135B92C | 48 00 00 40 */	b .L_8135B96C
.L_8135B930:
/* 8135B930 | 7F 03 C3 78 */	mr r3, r24
/* 8135B934 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8135B938 | 48 00 01 E9 */	bl cdj_c_compressLoop__9CArGBAOdhFP16SArCDJ_OdhMaster
/* 8135B93C | 7C 7E 1B 78 */	mr r30, r3
/* 8135B940 | 48 00 00 1C */	b .L_8135B95C
.L_8135B944:
/* 8135B944 | 7F C4 F3 78 */	mr r4, r30
/* 8135B948 | 38 7F 01 A2 */	addi r3, r31, 0x1a2
/* 8135B94C | 4C C6 31 82 */	crclr cr1eq
/* 8135B950 | 48 1D 2D 51 */	bl OSReport
/* 8135B954 | 38 60 00 00 */	li r3, 0x0
/* 8135B958 | 48 00 00 14 */	b .L_8135B96C
.L_8135B95C:
/* 8135B95C | 3C 1E 80 00 */	addis r0, r30, 0x8000
/* 8135B960 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8135B964 | 41 82 FF 68 */	beq .L_8135B8CC
/* 8135B968 | 7F C3 F3 78 */	mr r3, r30
.L_8135B96C:
/* 8135B96C | 39 61 04 B0 */	addi r11, r1, 0x4b0
/* 8135B970 | 48 29 DB 91 */	bl _restgpr_24
/* 8135B974 | 80 01 04 B4 */	lwz r0, 0x4b4(r1)
/* 8135B978 | 7C 08 03 A6 */	mtlr r0
/* 8135B97C | 38 21 04 B0 */	addi r1, r1, 0x4b0
/* 8135B980 | 4E 80 00 20 */	blr
.endfn compressGbaOdh__9CArGBAOdhFPUcPUciiiUlPUci

# .text:0x448 | 0x8135B984 | size: 0x19C
# CArGBAOdh::cdj_c_initializeCompressOdh(SArCDJ_OdhMaster*, unsigned short*, unsigned char, unsigned char*, unsigned char*, unsigned long)
.fn cdj_c_initializeCompressOdh__9CArGBAOdhFP16SArCDJ_OdhMasterPUsUcPUcPUcUl, global
/* 8135B984 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135B988 | 7C 08 02 A6 */	mflr r0
/* 8135B98C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135B990 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135B994 | 48 29 DB 29 */	bl _savegpr_26
/* 8135B998 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8135B99C | 7C 9E 23 78 */	mr r30, r4
/* 8135B9A0 | 7D 3F 4B 78 */	mr r31, r9
/* 8135B9A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B9A8 | 41 82 00 20 */	beq .L_8135B9C8
/* 8135B9AC | 28 00 07 FF */	cmplwi r0, 0x7ff
/* 8135B9B0 | 41 81 00 18 */	bgt .L_8135B9C8
/* 8135B9B4 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 8135B9B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B9BC | 41 82 00 0C */	beq .L_8135B9C8
/* 8135B9C0 | 28 00 07 FF */	cmplwi r0, 0x7ff
/* 8135B9C4 | 40 81 00 10 */	ble .L_8135B9D4
.L_8135B9C8:
/* 8135B9C8 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135B9CC | 38 63 00 01 */	addi r3, r3, 0x1
/* 8135B9D0 | 48 00 01 38 */	b .L_8135BB08
.L_8135B9D4:
/* 8135B9D4 | 28 06 00 64 */	cmplwi r6, 0x64
/* 8135B9D8 | 40 81 00 10 */	ble .L_8135B9E8
/* 8135B9DC | 3C 60 80 00 */	lis r3, 0x8000
/* 8135B9E0 | 38 63 00 02 */	addi r3, r3, 0x2
/* 8135B9E4 | 48 00 01 24 */	b .L_8135BB08
.L_8135B9E8:
/* 8135B9E8 | 90 E4 00 2C */	stw r7, 0x2c(r4)
/* 8135B9EC | 3F 80 81 61 */	lis r28, gArDC_L_Table@ha
/* 8135B9F0 | 3C E0 81 61 */	lis r7, gArDC_C_Table@ha
/* 8135B9F4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8135B9F8 | 91 04 02 30 */	stw r8, 0x230(r4)
/* 8135B9FC | 3B 64 00 20 */	addi r27, r4, 0x20
/* 8135BA00 | 3B 9C DE E8 */	addi r28, r28, gArDC_L_Table@l
/* 8135BA04 | 3B A4 00 1C */	addi r29, r4, 0x1c
/* 8135BA08 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 8135BA0C | 39 84 00 10 */	addi r12, r4, 0x10
/* 8135BA10 | 39 64 00 14 */	addi r11, r4, 0x14
/* 8135BA14 | 39 44 00 24 */	addi r10, r4, 0x24
/* 8135BA18 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 8135BA1C | 38 04 00 28 */	addi r0, r4, 0x28
/* 8135BA20 | 38 E7 DF 28 */	addi r7, r7, gArDC_C_Table@l
/* 8135BA24 | A3 45 00 02 */	lhz r26, 0x2(r5)
/* 8135BA28 | B3 44 00 02 */	sth r26, 0x2(r4)
/* 8135BA2C | 98 C4 00 04 */	stb r6, 0x4(r4)
/* 8135BA30 | A3 45 00 00 */	lhz r26, 0x0(r5)
/* 8135BA34 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8135BA38 | 7F 5A 1E 70 */	srawi r26, r26, 3
/* 8135BA3C | 7F 5A 01 94 */	addze r26, r26
/* 8135BA40 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8135BA44 | B3 44 00 06 */	sth r26, 0x6(r4)
/* 8135BA48 | A0 A5 00 02 */	lhz r5, 0x2(r5)
/* 8135BA4C | 38 A5 FF FF */	subi r5, r5, 0x1
/* 8135BA50 | 93 64 04 34 */	stw r27, 0x434(r4)
/* 8135BA54 | 7C A5 1E 70 */	srawi r5, r5, 3
/* 8135BA58 | 7C A5 01 94 */	addze r5, r5
/* 8135BA5C | 93 64 04 38 */	stw r27, 0x438(r4)
/* 8135BA60 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8135BA64 | B0 A4 00 08 */	sth r5, 0x8(r4)
/* 8135BA68 | 93 84 04 3C */	stw r28, 0x43c(r4)
/* 8135BA6C | 93 84 04 40 */	stw r28, 0x440(r4)
/* 8135BA70 | 91 04 04 44 */	stw r8, 0x444(r4)
/* 8135BA74 | 93 A4 04 48 */	stw r29, 0x448(r4)
/* 8135BA78 | 91 84 04 4C */	stw r12, 0x44c(r4)
/* 8135BA7C | 91 64 04 50 */	stw r11, 0x450(r4)
/* 8135BA80 | 91 24 04 54 */	stw r9, 0x454(r4)
/* 8135BA84 | 91 44 04 58 */	stw r10, 0x458(r4)
/* 8135BA88 | 90 04 04 5C */	stw r0, 0x45c(r4)
/* 8135BA8C | 90 E4 04 60 */	stw r7, 0x460(r4)
/* 8135BA90 | 93 84 04 64 */	stw r28, 0x464(r4)
/* 8135BA94 | 91 04 04 68 */	stw r8, 0x468(r4)
/* 8135BA98 | 93 A4 04 6C */	stw r29, 0x46c(r4)
/* 8135BA9C | 91 84 04 70 */	stw r12, 0x470(r4)
/* 8135BAA0 | 91 64 04 74 */	stw r11, 0x474(r4)
/* 8135BAA4 | 91 24 04 78 */	stw r9, 0x478(r4)
/* 8135BAA8 | 40 82 00 08 */	bne .L_8135BAB0
/* 8135BAAC | 38 C0 00 01 */	li r6, 0x1
.L_8135BAB0:
/* 8135BAB0 | 28 06 00 32 */	cmplwi r6, 0x32
/* 8135BAB4 | 7F C4 F3 78 */	mr r4, r30
/* 8135BAB8 | 40 80 00 10 */	bge .L_8135BAC8
/* 8135BABC | 38 00 13 88 */	li r0, 0x1388
/* 8135BAC0 | 7C A0 33 96 */	divwu r5, r0, r6
/* 8135BAC4 | 48 00 00 0C */	b .L_8135BAD0
.L_8135BAC8:
/* 8135BAC8 | 54 C0 08 3C */	slwi r0, r6, 1
/* 8135BACC | 20 A0 00 C8 */	subfic r5, r0, 0xc8
.L_8135BAD0:
/* 8135BAD0 | 48 00 03 91 */	bl cdj_c_setQuantizationTable__9CArGBAOdhFP16SArCDJ_OdhMasterUl
/* 8135BAD4 | 38 A0 00 00 */	li r5, 0x0
/* 8135BAD8 | 38 1F FF F0 */	subi r0, r31, 0x10
/* 8135BADC | 38 80 00 20 */	li r4, 0x20
/* 8135BAE0 | B0 BE 00 0A */	sth r5, 0xa(r30)
/* 8135BAE4 | 38 60 00 00 */	li r3, 0x0
/* 8135BAE8 | B0 BE 00 0C */	sth r5, 0xc(r30)
/* 8135BAEC | 90 BE 00 10 */	stw r5, 0x10(r30)
/* 8135BAF0 | 90 9E 00 14 */	stw r4, 0x14(r30)
/* 8135BAF4 | 93 FE 00 18 */	stw r31, 0x18(r30)
/* 8135BAF8 | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8135BAFC | 90 BE 00 20 */	stw r5, 0x20(r30)
/* 8135BB00 | 90 BE 00 24 */	stw r5, 0x24(r30)
/* 8135BB04 | 90 BE 00 28 */	stw r5, 0x28(r30)
.L_8135BB08:
/* 8135BB08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135BB0C | 48 29 D9 FD */	bl _restgpr_26
/* 8135BB10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135BB14 | 7C 08 03 A6 */	mtlr r0
/* 8135BB18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135BB1C | 4E 80 00 20 */	blr
.endfn cdj_c_initializeCompressOdh__9CArGBAOdhFP16SArCDJ_OdhMasterPUsUcPUcPUcUl

# .text:0x5E4 | 0x8135BB20 | size: 0x284
# CArGBAOdh::cdj_c_compressLoop(SArCDJ_OdhMaster*)
.fn cdj_c_compressLoop__9CArGBAOdhFP16SArCDJ_OdhMaster, global
/* 8135BB20 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8135BB24 | 7C 08 02 A6 */	mflr r0
/* 8135BB28 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8135BB2C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135BB30 | 48 29 D9 81 */	bl _savegpr_23
/* 8135BB34 | 3F A0 81 61 */	lis r29, odh_zigzag_order@ha
/* 8135BB38 | 3C A0 40 00 */	lis r5, 0x4000
/* 8135BB3C | 3B BD D9 68 */	addi r29, r29, odh_zigzag_order@l
/* 8135BB40 | 7C 7A 1B 78 */	mr r26, r3
/* 8135BB44 | 7C 9B 23 78 */	mr r27, r4
/* 8135BB48 | 3B C5 40 00 */	addi r30, r5, 0x4000
/* 8135BB4C | 3B E0 00 00 */	li r31, 0x0
/* 8135BB50 | 3B 20 00 40 */	li r25, 0x40
/* 8135BB54 | 3B 00 00 40 */	li r24, 0x40
/* 8135BB58 | 3A E0 00 40 */	li r23, 0x40
.L_8135BB5C:
/* 8135BB5C | A0 1B 00 0C */	lhz r0, 0xc(r27)
/* 8135BB60 | 7F 43 D3 78 */	mr r3, r26
/* 8135BB64 | A0 BB 00 06 */	lhz r5, 0x6(r27)
/* 8135BB68 | 38 9B 01 30 */	addi r4, r27, 0x130
/* 8135BB6C | 54 00 30 32 */	slwi r0, r0, 6
/* 8135BB70 | A0 DB 00 0A */	lhz r6, 0xa(r27)
/* 8135BB74 | 7D 05 01 D6 */	mullw r8, r5, r0
/* 8135BB78 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135BB7C | 54 C9 18 38 */	slwi r9, r6, 3
/* 8135BB80 | 54 A6 18 38 */	slwi r6, r5, 3
/* 8135BB84 | 38 FB 02 34 */	addi r7, r27, 0x234
/* 8135BB88 | 7F 89 42 14 */	add r28, r9, r8
/* 8135BB8C | 7C A0 E2 14 */	add r5, r0, r28
/* 8135BB90 | 48 00 07 D1 */	bl fdct_fast__9CArGBAOdhFPUlPUcUlPUl
/* 8135BB94 | 7F A4 EB 78 */	mr r4, r29
/* 8135BB98 | 38 E0 00 00 */	li r7, 0x0
/* 8135BB9C | 38 60 00 00 */	li r3, 0x0
/* 8135BBA0 | 7F 29 03 A6 */	mtctr r25
.L_8135BBA4:
/* 8135BBA4 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135BBA8 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135BBAC | 80 A5 01 30 */	lwz r5, 0x130(r5)
/* 8135BBB0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135BBB4 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135BBB8 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135BBBC | 54 A6 80 1E */	slwi r6, r5, 16
/* 8135BBC0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135BBC4 | 7C BB 02 14 */	add r5, r27, r0
/* 8135BBC8 | 90 C5 00 30 */	stw r6, 0x30(r5)
/* 8135BBCC | 42 00 FF D8 */	bdnz .L_8135BBA4
/* 8135BBD0 | 93 DB 01 30 */	stw r30, 0x130(r27)
/* 8135BBD4 | 7F 43 D3 78 */	mr r3, r26
/* 8135BBD8 | 38 9B 00 2E */	addi r4, r27, 0x2e
/* 8135BBDC | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135BBE0 | 48 00 0A 25 */	bl huffmanCoder__9CArGBAOdhFPUsP21SArCDJ_HuffmanRequest
/* 8135BBE4 | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 8135BBE8 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8135BBEC | 40 82 00 10 */	bne .L_8135BBFC
/* 8135BBF0 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135BBF4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135BBF8 | 48 00 01 94 */	b .L_8135BD8C
.L_8135BBFC:
/* 8135BBFC | A0 FB 00 06 */	lhz r7, 0x6(r27)
/* 8135BC00 | 7F 43 D3 78 */	mr r3, r26
/* 8135BC04 | A0 DB 00 08 */	lhz r6, 0x8(r27)
/* 8135BC08 | 38 9B 01 30 */	addi r4, r27, 0x130
/* 8135BC0C | 54 E5 30 32 */	slwi r5, r7, 6
/* 8135BC10 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135BC14 | 7C A6 29 D6 */	mullw r5, r6, r5
/* 8135BC18 | 54 E6 18 38 */	slwi r6, r7, 3
/* 8135BC1C | 38 FB 03 34 */	addi r7, r27, 0x334
/* 8135BC20 | 7F 9C 2A 14 */	add r28, r28, r5
/* 8135BC24 | 7C A0 E2 14 */	add r5, r0, r28
/* 8135BC28 | 48 00 07 39 */	bl fdct_fast__9CArGBAOdhFPUlPUcUlPUl
/* 8135BC2C | 7F A4 EB 78 */	mr r4, r29
/* 8135BC30 | 38 E0 00 00 */	li r7, 0x0
/* 8135BC34 | 38 60 00 00 */	li r3, 0x0
/* 8135BC38 | 7F 09 03 A6 */	mtctr r24
.L_8135BC3C:
/* 8135BC3C | 7C BB 1A 14 */	add r5, r27, r3
/* 8135BC40 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135BC44 | 80 A5 01 30 */	lwz r5, 0x130(r5)
/* 8135BC48 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135BC4C | 54 00 10 3A */	slwi r0, r0, 2
/* 8135BC50 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135BC54 | 54 A6 04 3E */	clrlwi r6, r5, 16
/* 8135BC58 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135BC5C | 7C BB 02 14 */	add r5, r27, r0
/* 8135BC60 | 90 C5 00 30 */	stw r6, 0x30(r5)
/* 8135BC64 | 42 00 FF D8 */	bdnz .L_8135BC3C
/* 8135BC68 | A0 FB 00 06 */	lhz r7, 0x6(r27)
/* 8135BC6C | 7F 43 D3 78 */	mr r3, r26
/* 8135BC70 | A0 DB 00 08 */	lhz r6, 0x8(r27)
/* 8135BC74 | 38 9B 01 30 */	addi r4, r27, 0x130
/* 8135BC78 | 54 E5 30 32 */	slwi r5, r7, 6
/* 8135BC7C | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135BC80 | 7C A6 29 D6 */	mullw r5, r6, r5
/* 8135BC84 | 54 E6 18 38 */	slwi r6, r7, 3
/* 8135BC88 | 38 FB 03 34 */	addi r7, r27, 0x334
/* 8135BC8C | 7F 9C 2A 14 */	add r28, r28, r5
/* 8135BC90 | 7C A0 E2 14 */	add r5, r0, r28
/* 8135BC94 | 48 00 06 CD */	bl fdct_fast__9CArGBAOdhFPUlPUcUlPUl
/* 8135BC98 | 7F A4 EB 78 */	mr r4, r29
/* 8135BC9C | 38 E0 00 00 */	li r7, 0x0
/* 8135BCA0 | 38 60 00 00 */	li r3, 0x0
/* 8135BCA4 | 7E E9 03 A6 */	mtctr r23
.L_8135BCA8:
/* 8135BCA8 | 88 C4 00 00 */	lbz r6, 0x0(r4)
/* 8135BCAC | 7C BB 1A 14 */	add r5, r27, r3
/* 8135BCB0 | 80 05 01 30 */	lwz r0, 0x130(r5)
/* 8135BCB4 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135BCB8 | 54 C5 10 3A */	slwi r5, r6, 2
/* 8135BCBC | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135BCC0 | 7C DB 2A 14 */	add r6, r27, r5
/* 8135BCC4 | 54 00 80 1E */	slwi r0, r0, 16
/* 8135BCC8 | 80 A6 00 30 */	lwz r5, 0x30(r6)
/* 8135BCCC | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135BCD0 | 7C A0 03 78 */	or r0, r5, r0
/* 8135BCD4 | 90 06 00 30 */	stw r0, 0x30(r6)
/* 8135BCD8 | 42 00 FF D0 */	bdnz .L_8135BCA8
/* 8135BCDC | 93 DB 01 30 */	stw r30, 0x130(r27)
/* 8135BCE0 | 7F 43 D3 78 */	mr r3, r26
/* 8135BCE4 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135BCE8 | 38 BB 04 58 */	addi r5, r27, 0x458
/* 8135BCEC | 48 00 09 19 */	bl huffmanCoder__9CArGBAOdhFPUsP21SArCDJ_HuffmanRequest
/* 8135BCF0 | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 8135BCF4 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8135BCF8 | 40 82 00 10 */	bne .L_8135BD08
/* 8135BCFC | 3C 60 80 00 */	lis r3, 0x8000
/* 8135BD00 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135BD04 | 48 00 00 88 */	b .L_8135BD8C
.L_8135BD08:
/* 8135BD08 | A0 7B 00 0A */	lhz r3, 0xa(r27)
/* 8135BD0C | A0 1B 00 06 */	lhz r0, 0x6(r27)
/* 8135BD10 | 38 83 00 01 */	addi r4, r3, 0x1
/* 8135BD14 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 8135BD18 | B0 9B 00 0A */	sth r4, 0xa(r27)
/* 8135BD1C | 7C 03 00 40 */	cmplw r3, r0
/* 8135BD20 | 40 82 00 14 */	bne .L_8135BD34
/* 8135BD24 | A0 7B 00 0C */	lhz r3, 0xc(r27)
/* 8135BD28 | B3 FB 00 0A */	sth r31, 0xa(r27)
/* 8135BD2C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8135BD30 | B0 1B 00 0C */	sth r0, 0xc(r27)
.L_8135BD34:
/* 8135BD34 | A0 7B 00 0C */	lhz r3, 0xc(r27)
/* 8135BD38 | A0 1B 00 08 */	lhz r0, 0x8(r27)
/* 8135BD3C | 7C 03 00 40 */	cmplw r3, r0
/* 8135BD40 | 41 80 FE 1C */	blt .L_8135BB5C
/* 8135BD44 | 7F 43 D3 78 */	mr r3, r26
/* 8135BD48 | 7F 64 DB 78 */	mr r4, r27
/* 8135BD4C | 48 00 00 59 */	bl cdj_c_flashBuffer__9CArGBAOdhFP16SArCDJ_OdhMaster
/* 8135BD50 | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 8135BD54 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8135BD58 | 40 82 00 10 */	bne .L_8135BD68
/* 8135BD5C | 3C 60 80 00 */	lis r3, 0x8000
/* 8135BD60 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135BD64 | 48 00 00 28 */	b .L_8135BD8C
.L_8135BD68:
/* 8135BD68 | 80 BB 00 1C */	lwz r5, 0x1c(r27)
/* 8135BD6C | 7F 43 D3 78 */	mr r3, r26
/* 8135BD70 | 80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8135BD74 | 7F 64 DB 78 */	mr r4, r27
/* 8135BD78 | 7C A5 00 50 */	subf r5, r5, r0
/* 8135BD7C | 48 00 01 FD */	bl cdj_c_makeHeader__9CArGBAOdhFP16SArCDJ_OdhMasterUl
/* 8135BD80 | 80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 8135BD84 | 80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8135BD88 | 7C 63 00 50 */	subf r3, r3, r0
.L_8135BD8C:
/* 8135BD8C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135BD90 | 48 29 D7 6D */	bl _restgpr_23
/* 8135BD94 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8135BD98 | 7C 08 03 A6 */	mtlr r0
/* 8135BD9C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8135BDA0 | 4E 80 00 20 */	blr
.endfn cdj_c_compressLoop__9CArGBAOdhFP16SArCDJ_OdhMaster

# .text:0x868 | 0x8135BDA4 | size: 0xBC
# CArGBAOdh::cdj_c_flashBuffer(SArCDJ_OdhMaster*)
.fn cdj_c_flashBuffer__9CArGBAOdhFP16SArCDJ_OdhMaster, global
/* 8135BDA4 | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 8135BDA8 | 38 00 00 7F */	li r0, 0x7f
/* 8135BDAC | 80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8135BDB0 | 38 63 FF F9 */	subi r3, r3, 0x7
/* 8135BDB4 | 7C 00 18 30 */	slw r0, r0, r3
/* 8135BDB8 | 90 64 00 14 */	stw r3, 0x14(r4)
/* 8135BDBC | 7C A0 03 78 */	or r0, r5, r0
/* 8135BDC0 | 90 04 00 10 */	stw r0, 0x10(r4)
/* 8135BDC4 | 48 00 00 58 */	b .L_8135BE1C
.L_8135BDC8:
/* 8135BDC8 | 80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 8135BDCC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8135BDD0 | 40 82 00 10 */	bne .L_8135BDE0
/* 8135BDD4 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135BDD8 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135BDDC | 4E 80 00 20 */	blr
.L_8135BDE0:
/* 8135BDE0 | 80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8135BDE4 | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 8135BDE8 | 80 64 02 30 */	lwz r3, 0x230(r4)
/* 8135BDEC | 54 A5 46 3E */	srwi r5, r5, 24
/* 8135BDF0 | 7C 06 00 50 */	subf r0, r6, r0
/* 8135BDF4 | 7C A3 01 AE */	stbx r5, r3, r0
/* 8135BDF8 | 80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 8135BDFC | 80 64 00 14 */	lwz r3, 0x14(r4)
/* 8135BE00 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 8135BE04 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 8135BE08 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8135BE0C | 90 A4 00 1C */	stw r5, 0x1c(r4)
/* 8135BE10 | 54 00 40 2E */	slwi r0, r0, 8
/* 8135BE14 | 90 64 00 14 */	stw r3, 0x14(r4)
/* 8135BE18 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_8135BE1C:
/* 8135BE1C | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8135BE20 | 28 00 00 18 */	cmplwi r0, 0x18
/* 8135BE24 | 40 81 FF A4 */	ble .L_8135BDC8
/* 8135BE28 | 38 A0 00 FF */	li r5, 0xff
/* 8135BE2C | 48 00 00 18 */	b .L_8135BE44
.L_8135BE30:
/* 8135BE30 | 80 64 02 30 */	lwz r3, 0x230(r4)
/* 8135BE34 | 7C A3 31 AE */	stbx r5, r3, r6
/* 8135BE38 | 80 64 00 1C */	lwz r3, 0x1c(r4)
/* 8135BE3C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8135BE40 | 90 04 00 1C */	stw r0, 0x1c(r4)
.L_8135BE44:
/* 8135BE44 | 80 64 00 1C */	lwz r3, 0x1c(r4)
/* 8135BE48 | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 8135BE4C | 7C C3 00 50 */	subf r6, r3, r0
/* 8135BE50 | 54 C0 07 BF */	clrlwi. r0, r6, 30
/* 8135BE54 | 40 82 FF DC */	bne .L_8135BE30
/* 8135BE58 | 38 60 00 00 */	li r3, 0x0
/* 8135BE5C | 4E 80 00 20 */	blr
.endfn cdj_c_flashBuffer__9CArGBAOdhFP16SArCDJ_OdhMaster

# .text:0x924 | 0x8135BE60 | size: 0x118
# CArGBAOdh::cdj_c_setQuantizationTable(SArCDJ_OdhMaster*, unsigned long)
.fn cdj_c_setQuantizationTable__9CArGBAOdhFP16SArCDJ_OdhMasterUl, global
/* 8135BE60 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8135BE64 | 7C 08 02 A6 */	mflr r0
/* 8135BE68 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8135BE6C | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 8135BE70 | 48 29 D6 51 */	bl _savegpr_27
/* 8135BE74 | 3D 40 81 61 */	lis r10, gArCdj_std_quant_tbl@ha
/* 8135BE78 | 39 61 00 08 */	addi r11, r1, 0x8
/* 8135BE7C | 39 4A DD E8 */	addi r10, r10, gArCdj_std_quant_tbl@l
/* 8135BE80 | 3B 60 00 00 */	li r27, 0x0
/* 8135BE84 | 38 60 00 00 */	li r3, 0x0
/* 8135BE88 | 39 00 00 64 */	li r8, 0x64
/* 8135BE8C | 38 00 00 40 */	li r0, 0x40
.L_8135BE90:
/* 8135BE90 | 7C EA 1A 14 */	add r7, r10, r3
/* 8135BE94 | 7C CB 1A 14 */	add r6, r11, r3
/* 8135BE98 | 39 80 00 00 */	li r12, 0x0
/* 8135BE9C | 7C 09 03 A6 */	mtctr r0
.L_8135BEA0:
/* 8135BEA0 | 89 27 00 00 */	lbz r9, 0x0(r7)
/* 8135BEA4 | 7D 25 49 D6 */	mullw r9, r5, r9
/* 8135BEA8 | 39 29 00 32 */	addi r9, r9, 0x32
/* 8135BEAC | 7D 29 43 97 */	divwu. r9, r9, r8
/* 8135BEB0 | 40 82 00 08 */	bne .L_8135BEB8
/* 8135BEB4 | 39 20 00 01 */	li r9, 0x1
.L_8135BEB8:
/* 8135BEB8 | 28 09 00 FF */	cmplwi r9, 0xff
/* 8135BEBC | 40 81 00 08 */	ble .L_8135BEC4
/* 8135BEC0 | 39 20 00 FF */	li r9, 0xff
.L_8135BEC4:
/* 8135BEC4 | 99 26 00 00 */	stb r9, 0x0(r6)
/* 8135BEC8 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 8135BECC | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8135BED0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135BED4 | 42 00 FF CC */	bdnz .L_8135BEA0
/* 8135BED8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8135BEDC | 38 63 00 40 */	addi r3, r3, 0x40
/* 8135BEE0 | 28 1B 00 02 */	cmplwi r27, 0x2
/* 8135BEE4 | 41 80 FF AC */	blt .L_8135BE90
/* 8135BEE8 | 3D 80 81 61 */	lis r12, gArAANScales@ha
/* 8135BEEC | 3B E1 00 08 */	addi r31, r1, 0x8
/* 8135BEF0 | 39 8C DE 68 */	addi r12, r12, gArAANScales@l
/* 8135BEF4 | 3B A0 00 00 */	li r29, 0x0
/* 8135BEF8 | 38 60 00 00 */	li r3, 0x0
/* 8135BEFC | 38 A0 00 00 */	li r5, 0x0
/* 8135BF00 | 3D 40 04 00 */	lis r10, 0x400
/* 8135BF04 | 38 00 00 40 */	li r0, 0x40
.L_8135BF08:
/* 8135BF08 | 7F C4 1A 14 */	add r30, r4, r3
/* 8135BF0C | 7D 1F 2A 14 */	add r8, r31, r5
/* 8135BF10 | 3B 80 00 00 */	li r28, 0x0
/* 8135BF14 | 38 C0 00 00 */	li r6, 0x0
/* 8135BF18 | 38 E0 00 00 */	li r7, 0x0
/* 8135BF1C | 7C 09 03 A6 */	mtctr r0
.L_8135BF20:
/* 8135BF20 | 7F 6C 3A 2E */	lhzx r27, r12, r7
/* 8135BF24 | 7D 3E 32 14 */	add r9, r30, r6
/* 8135BF28 | 89 68 00 00 */	lbz r11, 0x0(r8)
/* 8135BF2C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8135BF30 | 38 C6 00 04 */	addi r6, r6, 0x4
/* 8135BF34 | 38 E7 00 02 */	addi r7, r7, 0x2
/* 8135BF38 | 7F 7B 59 D6 */	mullw r27, r27, r11
/* 8135BF3C | 39 08 00 01 */	addi r8, r8, 0x1
/* 8135BF40 | 7D 6A DB 96 */	divwu r11, r10, r27
/* 8135BF44 | 91 69 02 34 */	stw r11, 0x234(r9)
/* 8135BF48 | 42 00 FF D8 */	bdnz .L_8135BF20
/* 8135BF4C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8135BF50 | 38 A5 00 40 */	addi r5, r5, 0x40
/* 8135BF54 | 28 1D 00 02 */	cmplwi r29, 0x2
/* 8135BF58 | 38 63 01 00 */	addi r3, r3, 0x100
/* 8135BF5C | 41 80 FF AC */	blt .L_8135BF08
/* 8135BF60 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 8135BF64 | 48 29 D5 A9 */	bl _restgpr_27
/* 8135BF68 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8135BF6C | 7C 08 03 A6 */	mtlr r0
/* 8135BF70 | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 8135BF74 | 4E 80 00 20 */	blr
.endfn cdj_c_setQuantizationTable__9CArGBAOdhFP16SArCDJ_OdhMasterUl

# .text:0xA3C | 0x8135BF78 | size: 0x6C
# CArGBAOdh::cdj_c_makeHeader(SArCDJ_OdhMaster*, unsigned long)
.fn cdj_c_makeHeader__9CArGBAOdhFP16SArCDJ_OdhMasterUl, global
/* 8135BF78 | 80 64 02 30 */	lwz r3, 0x230(r4)
/* 8135BF7C | 38 00 00 41 */	li r0, 0x41
/* 8135BF80 | 39 00 00 4A */	li r8, 0x4a
/* 8135BF84 | 38 E0 00 50 */	li r7, 0x50
/* 8135BF88 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 8135BF8C | 38 C0 00 47 */	li r6, 0x47
/* 8135BF90 | 38 00 00 00 */	li r0, 0x0
/* 8135BF94 | 80 64 02 30 */	lwz r3, 0x230(r4)
/* 8135BF98 | 99 03 00 01 */	stb r8, 0x1(r3)
/* 8135BF9C | 80 64 02 30 */	lwz r3, 0x230(r4)
/* 8135BFA0 | 98 E3 00 02 */	stb r7, 0x2(r3)
/* 8135BFA4 | 80 64 02 30 */	lwz r3, 0x230(r4)
/* 8135BFA8 | 98 C3 00 03 */	stb r6, 0x3(r3)
/* 8135BFAC | A0 64 00 02 */	lhz r3, 0x2(r4)
/* 8135BFB0 | 89 04 00 04 */	lbz r8, 0x4(r4)
/* 8135BFB4 | 54 66 58 28 */	slwi r6, r3, 11
/* 8135BFB8 | A0 E4 00 00 */	lhz r7, 0x0(r4)
/* 8135BFBC | 55 08 C0 0E */	slwi r8, r8, 24
/* 8135BFC0 | 80 64 02 30 */	lwz r3, 0x230(r4)
/* 8135BFC4 | 7C E6 33 78 */	or r6, r7, r6
/* 8135BFC8 | 7D 06 33 78 */	or r6, r8, r6
/* 8135BFCC | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 8135BFD0 | 80 64 02 30 */	lwz r3, 0x230(r4)
/* 8135BFD4 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 8135BFD8 | 80 64 02 30 */	lwz r3, 0x230(r4)
/* 8135BFDC | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8135BFE0 | 4E 80 00 20 */	blr
.endfn cdj_c_makeHeader__9CArGBAOdhFP16SArCDJ_OdhMasterUl

# .text:0xAA8 | 0x8135BFE4 | size: 0x134
# CArGBAOdh::cdj_c_colorConv(SArCDJ_OdhMaster*, unsigned char*, int)
.fn cdj_c_colorConv__9CArGBAOdhFP16SArCDJ_OdhMasterPUci, global
/* 8135BFE4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8135BFE8 | 7C 08 02 A6 */	mflr r0
/* 8135BFEC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8135BFF0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8135BFF4 | 48 29 D4 B1 */	bl _savegpr_20
/* 8135BFF8 | A1 04 00 00 */	lhz r8, 0x0(r4)
/* 8135BFFC | 7C 79 1B 78 */	mr r25, r3
/* 8135C000 | 7C 9A 23 78 */	mr r26, r4
/* 8135C004 | 7C BB 2B 78 */	mr r27, r5
/* 8135C008 | 55 00 07 FF */	clrlwi. r0, r8, 31
/* 8135C00C | 7C DC 33 78 */	mr r28, r6
/* 8135C010 | 40 82 00 10 */	bne .L_8135C020
/* 8135C014 | A3 E4 00 02 */	lhz r31, 0x2(r4)
/* 8135C018 | 57 E0 07 FF */	clrlwi. r0, r31, 31
/* 8135C01C | 41 82 00 0C */	beq .L_8135C028
.L_8135C020:
/* 8135C020 | 38 60 00 01 */	li r3, 0x1
/* 8135C024 | 48 00 00 DC */	b .L_8135C100
.L_8135C028:
/* 8135C028 | 38 00 00 02 */	li r0, 0x2
/* 8135C02C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8135C030 | 38 60 00 00 */	li r3, 0x0
/* 8135C034 | 7C 09 03 A6 */	mtctr r0
.L_8135C038:
/* 8135C038 | 7C E4 1A 2E */	lhzx r7, r4, r3
/* 8135C03C | 54 E9 07 7F */	clrlwi. r9, r7, 29
/* 8135C040 | 41 82 00 14 */	beq .L_8135C054
/* 8135C044 | 38 07 00 08 */	addi r0, r7, 0x8
/* 8135C048 | 7C 09 00 50 */	subf r0, r9, r0
/* 8135C04C | 7C 05 1B 2E */	sthx r0, r5, r3
/* 8135C050 | 48 00 00 08 */	b .L_8135C058
.L_8135C054:
/* 8135C054 | 7C E5 1B 2E */	sthx r7, r5, r3
.L_8135C058:
/* 8135C058 | 38 63 00 02 */	addi r3, r3, 0x2
/* 8135C05C | 42 00 FF DC */	bdnz .L_8135C038
/* 8135C060 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 8135C064 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8135C068 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 8135C06C | 83 C4 00 2C */	lwz r30, 0x2c(r4)
/* 8135C070 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135C074 | 7E DE 02 14 */	add r22, r30, r0
/* 8135C078 | 7E B6 02 14 */	add r21, r22, r0
/* 8135C07C | 40 82 00 0C */	bne .L_8135C088
/* 8135C080 | 55 1D 1B 74 */	rlwinm r29, r8, 3, 13, 26
/* 8135C084 | 48 00 00 14 */	b .L_8135C098
.L_8135C088:
/* 8135C088 | 2C 06 00 01 */	cmpwi r6, 0x1
/* 8135C08C | 55 1D 13 B4 */	rlwinm r29, r8, 2, 14, 26
/* 8135C090 | 40 82 00 08 */	bne .L_8135C098
/* 8135C094 | 55 1D 23 32 */	rlwinm r29, r8, 4, 12, 25
.L_8135C098:
/* 8135C098 | A3 01 00 10 */	lhz r24, 0x10(r1)
/* 8135C09C | 3A 80 00 00 */	li r20, 0x0
/* 8135C0A0 | 3E E0 81 61 */	lis r23, gArConvPlttTbl@ha
/* 8135C0A4 | 48 00 00 50 */	b .L_8135C0F4
.L_8135C0A8:
/* 8135C0A8 | 7E 80 16 70 */	srawi r0, r20, 2
/* 8135C0AC | 93 81 00 08 */	stw r28, 0x8(r1)
/* 8135C0B0 | 7C 00 01 94 */	addze r0, r0
/* 8135C0B4 | 56 83 1E F8 */	clrlslwi r3, r20, 30, 3
/* 8135C0B8 | 7C 80 E9 D6 */	mullw r4, r0, r29
/* 8135C0BC | A1 1A 00 00 */	lhz r8, 0x0(r26)
/* 8135C0C0 | 7C 1B 1A 14 */	add r0, r27, r3
/* 8135C0C4 | A1 3A 00 02 */	lhz r9, 0x2(r26)
/* 8135C0C8 | 7F 23 CB 78 */	mr r3, r25
/* 8135C0CC | 7F C5 F3 78 */	mr r5, r30
/* 8135C0D0 | 7E C6 B3 78 */	mr r6, r22
/* 8135C0D4 | 7E A7 AB 78 */	mr r7, r21
/* 8135C0D8 | 7C 84 02 14 */	add r4, r4, r0
/* 8135C0DC | 39 57 DF 68 */	addi r10, r23, gArConvPlttTbl@l
/* 8135C0E0 | 48 00 00 39 */	bl LineConv11__9CArGBAOdhFPUcPUcPUcPUcUsUsPCli
/* 8135C0E4 | 7F DE C2 14 */	add r30, r30, r24
/* 8135C0E8 | 7E D6 C2 14 */	add r22, r22, r24
/* 8135C0EC | 7E B5 C2 14 */	add r21, r21, r24
/* 8135C0F0 | 3A 94 00 01 */	addi r20, r20, 0x1
.L_8135C0F4:
/* 8135C0F4 | 7C 14 F8 00 */	cmpw r20, r31
/* 8135C0F8 | 41 80 FF B0 */	blt .L_8135C0A8
/* 8135C0FC | 38 60 00 00 */	li r3, 0x0
.L_8135C100:
/* 8135C100 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8135C104 | 48 29 D3 ED */	bl _restgpr_20
/* 8135C108 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8135C10C | 7C 08 03 A6 */	mtlr r0
/* 8135C110 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8135C114 | 4E 80 00 20 */	blr
.endfn cdj_c_colorConv__9CArGBAOdhFP16SArCDJ_OdhMasterPUci

# .text:0xBDC | 0x8135C118 | size: 0x248
# CArGBAOdh::LineConv11(unsigned char*, unsigned char*, unsigned char*, unsigned char*, unsigned short, unsigned short, const long*, int)
.fn LineConv11__9CArGBAOdhFPUcPUcPUcPUcUsUsPCli, global
/* 8135C118 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8135C11C | 7C 08 02 A6 */	mflr r0
/* 8135C120 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8135C124 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8135C128 | 48 29 D3 91 */	bl _savegpr_25
/* 8135C12C | 7C 68 49 D6 */	mullw r3, r8, r9
/* 8135C130 | 81 81 00 68 */	lwz r12, 0x68(r1)
/* 8135C134 | C9 82 81 C0 */	lfd f12, lbl_816945C0@sda21(r0)
/* 8135C138 | 39 60 00 00 */	li r11, 0x0
/* 8135C13C | C1 62 81 A0 */	lfs f11, lbl_816945A0@sda21(r0)
/* 8135C140 | C1 42 81 A4 */	lfs f10, lbl_816945A4@sda21(r0)
/* 8135C144 | 54 60 08 3C */	slwi r0, r3, 1
/* 8135C148 | 7C 64 1A 14 */	add r3, r4, r3
/* 8135C14C | 7D 24 02 14 */	add r9, r4, r0
/* 8135C150 | C1 22 81 A8 */	lfs f9, lbl_816945A8@sda21(r0)
/* 8135C154 | 3C 00 43 30 */	lis r0, 0x4330
/* 8135C158 | C0 E2 81 AC */	lfs f7, lbl_816945AC@sda21(r0)
/* 8135C15C | C0 A2 81 B0 */	lfs f5, lbl_816945B0@sda21(r0)
/* 8135C160 | C0 62 81 B4 */	lfs f3, lbl_816945B4@sda21(r0)
/* 8135C164 | C8 22 81 B8 */	lfd f1, lbl_816945B8@sda21(r0)
/* 8135C168 | 7D 09 03 A6 */	mtctr r8
/* 8135C16C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8135C170 | 40 81 01 D8 */	ble .L_8135C348
.L_8135C174:
/* 8135C174 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8135C178 | 40 82 00 2C */	bne .L_8135C1A4
/* 8135C17C | 55 68 18 34 */	extlwi r8, r11, 27, 3
/* 8135C180 | 55 7D 0F 7C */	clrlslwi r29, r11, 30, 1
/* 8135C184 | 7D 04 42 14 */	add r8, r4, r8
/* 8135C188 | 7D 1D 40 EE */	lbzux r8, r29, r8
/* 8135C18C | 8B 3D 00 01 */	lbz r25, 0x1(r29)
/* 8135C190 | 51 19 44 2E */	rlwimi r25, r8, 8, 16, 23
/* 8135C194 | 57 3A AE FE */	extrwi r26, r25, 5, 16
/* 8135C198 | 57 3C D6 FE */	extrwi r28, r25, 5, 21
/* 8135C19C | 57 28 06 FE */	clrlwi r8, r25, 27
/* 8135C1A0 | 48 00 01 28 */	b .L_8135C2C8
.L_8135C1A4:
/* 8135C1A4 | 2C 0C 00 01 */	cmpwi r12, 0x1
/* 8135C1A8 | 40 82 00 30 */	bne .L_8135C1D8
/* 8135C1AC | 55 68 20 32 */	extlwi r8, r11, 26, 4
/* 8135C1B0 | 55 7D 0F 7C */	clrlslwi r29, r11, 30, 1
/* 8135C1B4 | 7D 04 42 14 */	add r8, r4, r8
/* 8135C1B8 | 7F DD 42 14 */	add r30, r29, r8
/* 8135C1BC | 89 1E 00 01 */	lbz r8, 0x1(r30)
/* 8135C1C0 | 8B BE 00 20 */	lbz r29, 0x20(r30)
/* 8135C1C4 | 7D 1A 1E 70 */	srawi r26, r8, 3
/* 8135C1C8 | 89 1E 00 21 */	lbz r8, 0x21(r30)
/* 8135C1CC | 7F BC 1E 70 */	srawi r28, r29, 3
/* 8135C1D0 | 7D 08 1E 70 */	srawi r8, r8, 3
/* 8135C1D4 | 48 00 00 F4 */	b .L_8135C2C8
.L_8135C1D8:
/* 8135C1D8 | 55 7D 07 7E */	clrlwi r29, r11, 29
/* 8135C1DC | 55 68 10 34 */	extlwi r8, r11, 27, 2
/* 8135C1E0 | 7D 1D 42 14 */	add r8, r29, r8
/* 8135C1E4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8135C1E8 | 7F C4 40 AE */	lbzx r30, r4, r8
/* 8135C1EC | 7F A3 40 AE */	lbzx r29, r3, r8
/* 8135C1F0 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 8135C1F4 | 7D 09 40 AE */	lbzx r8, r9, r8
/* 8135C1F8 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8135C1FC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8135C200 | EC 40 60 28 */	fsubs f2, f0, f12
/* 8135C204 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8135C208 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8135C20C | EC 42 58 28 */	fsubs f2, f2, f11
/* 8135C210 | 91 01 00 1C */	stw r8, 0x1c(r1)
/* 8135C214 | EC 00 60 28 */	fsubs f0, f0, f12
/* 8135C218 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8135C21C | ED 09 00 B2 */	fmuls f8, f9, f2
/* 8135C220 | EC C0 50 28 */	fsubs f6, f0, f10
/* 8135C224 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8135C228 | EC 80 60 28 */	fsubs f4, f0, f12
/* 8135C22C | FC 01 01 B2 */	fmul f0, f1, f6
/* 8135C230 | ED A4 50 28 */	fsubs f13, f4, f10
/* 8135C234 | EC 45 01 B2 */	fmuls f2, f5, f6
/* 8135C238 | FC 08 00 2A */	fadd f0, f8, f0
/* 8135C23C | EC C7 03 72 */	fmuls f6, f7, f13
/* 8135C240 | EC 88 10 28 */	fsubs f4, f8, f2
/* 8135C244 | EC 43 03 72 */	fmuls f2, f3, f13
/* 8135C248 | FC 00 00 1E */	fctiwz f0, f0
/* 8135C24C | EC C8 30 2A */	fadds f6, f8, f6
/* 8135C250 | EC 44 10 28 */	fsubs f2, f4, f2
/* 8135C254 | D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8135C258 | FC 80 30 1E */	fctiwz f4, f6
/* 8135C25C | FC 00 10 1E */	fctiwz f0, f2
/* 8135C260 | 81 01 00 34 */	lwz r8, 0x34(r1)
/* 8135C264 | D8 81 00 20 */	stfd f4, 0x20(r1)
/* 8135C268 | 83 41 00 24 */	lwz r26, 0x24(r1)
/* 8135C26C | D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8135C270 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8135C274 | 83 81 00 2C */	lwz r28, 0x2c(r1)
/* 8135C278 | 40 80 00 08 */	bge .L_8135C280
/* 8135C27C | 3B 40 00 00 */	li r26, 0x0
.L_8135C280:
/* 8135C280 | 2C 1A 00 FF */	cmpwi r26, 0xff
/* 8135C284 | 40 81 00 08 */	ble .L_8135C28C
/* 8135C288 | 3B 40 00 FF */	li r26, 0xff
.L_8135C28C:
/* 8135C28C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8135C290 | 40 80 00 08 */	bge .L_8135C298
/* 8135C294 | 3B 80 00 00 */	li r28, 0x0
.L_8135C298:
/* 8135C298 | 2C 1C 00 FF */	cmpwi r28, 0xff
/* 8135C29C | 40 81 00 08 */	ble .L_8135C2A4
/* 8135C2A0 | 3B 80 00 FF */	li r28, 0xff
.L_8135C2A4:
/* 8135C2A4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8135C2A8 | 40 80 00 08 */	bge .L_8135C2B0
/* 8135C2AC | 39 00 00 00 */	li r8, 0x0
.L_8135C2B0:
/* 8135C2B0 | 2C 08 00 FF */	cmpwi r8, 0xff
/* 8135C2B4 | 40 81 00 08 */	ble .L_8135C2BC
/* 8135C2B8 | 39 00 00 FF */	li r8, 0xff
.L_8135C2BC:
/* 8135C2BC | 7F 5A 1E 70 */	srawi r26, r26, 3
/* 8135C2C0 | 7F 9C 1E 70 */	srawi r28, r28, 3
/* 8135C2C4 | 7D 08 1E 70 */	srawi r8, r8, 3
.L_8135C2C8:
/* 8135C2C8 | 57 5D 10 3A */	slwi r29, r26, 2
/* 8135C2CC | 55 08 10 3A */	slwi r8, r8, 2
/* 8135C2D0 | 7F 6A EA 14 */	add r27, r10, r29
/* 8135C2D4 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 8135C2D8 | 57 9D 10 3A */	slwi r29, r28, 2
/* 8135C2DC | 7F 4A 42 14 */	add r26, r10, r8
/* 8135C2E0 | 7F 8A EA 14 */	add r28, r10, r29
/* 8135C2E4 | 81 1B 01 80 */	lwz r8, 0x180(r27)
/* 8135C2E8 | 83 BA 02 80 */	lwz r29, 0x280(r26)
/* 8135C2EC | 83 FC 02 00 */	lwz r31, 0x200(r28)
/* 8135C2F0 | 7F DD 42 14 */	add r30, r29, r8
/* 8135C2F4 | 83 BA 04 00 */	lwz r29, 0x400(r26)
/* 8135C2F8 | 7F DF F2 14 */	add r30, r31, r30
/* 8135C2FC | 81 1B 03 00 */	lwz r8, 0x300(r27)
/* 8135C300 | 7F D9 86 70 */	srawi r25, r30, 16
/* 8135C304 | 83 FC 03 80 */	lwz r31, 0x380(r28)
/* 8135C308 | 7F BD 42 14 */	add r29, r29, r8
/* 8135C30C | 83 DA 01 00 */	lwz r30, 0x100(r26)
/* 8135C310 | 7F BF EA 14 */	add r29, r31, r29
/* 8135C314 | 81 1B 00 00 */	lwz r8, 0x0(r27)
/* 8135C318 | 83 FC 00 80 */	lwz r31, 0x80(r28)
/* 8135C31C | 7F BA 86 70 */	srawi r26, r29, 16
/* 8135C320 | 7D 1E 42 14 */	add r8, r30, r8
/* 8135C324 | 7D 1F 42 14 */	add r8, r31, r8
/* 8135C328 | 7D 08 86 70 */	srawi r8, r8, 16
/* 8135C32C | 99 05 00 00 */	stb r8, 0x0(r5)
/* 8135C330 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8135C334 | 9B 26 00 00 */	stb r25, 0x0(r6)
/* 8135C338 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8135C33C | 9B 47 00 00 */	stb r26, 0x0(r7)
/* 8135C340 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135C344 | 42 00 FE 30 */	bdnz .L_8135C174
.L_8135C348:
/* 8135C348 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8135C34C | 48 29 D1 B9 */	bl _restgpr_25
/* 8135C350 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8135C354 | 7C 08 03 A6 */	mtlr r0
/* 8135C358 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8135C35C | 4E 80 00 20 */	blr
.endfn LineConv11__9CArGBAOdhFPUcPUcPUcPUcUsUsPCli

# .text:0xE24 | 0x8135C360 | size: 0x2A4
# CArGBAOdh::fdct_fast(unsigned long*, unsigned char*, unsigned long, unsigned long*)
.fn fdct_fast__9CArGBAOdhFPUlPUcUlPUl, global
/* 8135C360 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135C364 | 7C 08 02 A6 */	mflr r0
/* 8135C368 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135C36C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135C370 | 48 29 D1 51 */	bl _savegpr_27
/* 8135C374 | 39 80 00 00 */	li r12, 0x0
/* 8135C378 | 38 60 00 00 */	li r3, 0x0
/* 8135C37C | 38 00 00 08 */	li r0, 0x8
.L_8135C380:
/* 8135C380 | 7D 45 62 14 */	add r10, r5, r12
/* 8135C384 | 7D 64 1A 14 */	add r11, r4, r3
/* 8135C388 | 3B 60 00 00 */	li r27, 0x0
/* 8135C38C | 39 00 00 00 */	li r8, 0x0
/* 8135C390 | 7C 09 03 A6 */	mtctr r0
.L_8135C394:
/* 8135C394 | 7D 3B 31 D6 */	mullw r9, r27, r6
/* 8135C398 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8135C39C | 7D 2A 48 AE */	lbzx r9, r10, r9
/* 8135C3A0 | 39 29 FF 80 */	subi r9, r9, 0x80
/* 8135C3A4 | 7D 2B 41 2E */	stwx r9, r11, r8
/* 8135C3A8 | 39 08 00 20 */	addi r8, r8, 0x20
/* 8135C3AC | 42 00 FF E8 */	bdnz .L_8135C394
/* 8135C3B0 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 8135C3B4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135C3B8 | 2C 0C 00 08 */	cmpwi r12, 0x8
/* 8135C3BC | 41 80 FF C4 */	blt .L_8135C380
/* 8135C3C0 | 38 00 00 08 */	li r0, 0x8
/* 8135C3C4 | 7C 83 23 78 */	mr r3, r4
/* 8135C3C8 | 7C 09 03 A6 */	mtctr r0
.L_8135C3CC:
/* 8135C3CC | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8135C3D0 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8135C3D4 | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8135C3D8 | 7F A5 02 14 */	add r29, r5, r0
/* 8135C3DC | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 8135C3E0 | 7C 00 28 50 */	subf r0, r0, r5
/* 8135C3E4 | 81 23 00 14 */	lwz r9, 0x14(r3)
/* 8135C3E8 | 7C A6 40 50 */	subf r5, r6, r8
/* 8135C3EC | 81 43 00 08 */	lwz r10, 0x8(r3)
/* 8135C3F0 | 81 63 00 10 */	lwz r11, 0x10(r3)
/* 8135C3F4 | 7D 08 32 14 */	add r8, r8, r6
/* 8135C3F8 | 81 83 00 0C */	lwz r12, 0xc(r3)
/* 8135C3FC | 7F E9 50 50 */	subf r31, r9, r10
/* 8135C400 | 7F 85 02 14 */	add r28, r5, r0
/* 8135C404 | 7D 2A 4A 14 */	add r9, r10, r9
/* 8135C408 | 7F CC 5A 14 */	add r30, r12, r11
/* 8135C40C | 7C CB 60 50 */	subf r6, r11, r12
/* 8135C410 | 7C BF 2A 14 */	add r5, r31, r5
/* 8135C414 | 7D 88 4A 14 */	add r12, r8, r9
/* 8135C418 | 7D 46 FA 14 */	add r10, r6, r31
/* 8135C41C | 7F 7E E8 50 */	subf r27, r30, r29
/* 8135C420 | 7F E9 40 50 */	subf r31, r9, r8
/* 8135C424 | 7D 7D F2 14 */	add r11, r29, r30
/* 8135C428 | 7D 1F DA 14 */	add r8, r31, r27
/* 8135C42C | 7C DC 50 50 */	subf r6, r28, r10
/* 8135C430 | 7D 2B 62 14 */	add r9, r11, r12
/* 8135C434 | 91 23 00 00 */	stw r9, 0x0(r3)
/* 8135C438 | 7D 2C 58 50 */	subf r9, r12, r11
/* 8135C43C | 1D 08 00 B5 */	mulli r8, r8, 0xb5
/* 8135C440 | 91 23 00 10 */	stw r9, 0x10(r3)
/* 8135C444 | 7D 0B 46 70 */	srawi r11, r8, 8
/* 8135C448 | 1D 06 00 62 */	mulli r8, r6, 0x62
/* 8135C44C | 7C DB 5A 14 */	add r6, r27, r11
/* 8135C450 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 8135C454 | 7D 2B D8 50 */	subf r9, r11, r27
/* 8135C458 | 1C CA 00 8B */	mulli r6, r10, 0x8b
/* 8135C45C | 7D 0A 46 70 */	srawi r10, r8, 8
/* 8135C460 | 91 23 00 18 */	stw r9, 0x18(r3)
/* 8135C464 | 7C C8 46 70 */	srawi r8, r6, 8
/* 8135C468 | 1C DC 01 4E */	mulli r6, r28, 0x14e
/* 8135C46C | 7D 0A 42 14 */	add r8, r10, r8
/* 8135C470 | 7C C6 46 70 */	srawi r6, r6, 8
/* 8135C474 | 1C A5 00 B5 */	mulli r5, r5, 0xb5
/* 8135C478 | 7D 2A 32 14 */	add r9, r10, r6
/* 8135C47C | 7C A5 46 70 */	srawi r5, r5, 8
/* 8135C480 | 7C C5 00 50 */	subf r6, r5, r0
/* 8135C484 | 7D 40 2A 14 */	add r10, r0, r5
/* 8135C488 | 7C 06 42 14 */	add r0, r6, r8
/* 8135C48C | 7C C8 30 50 */	subf r6, r8, r6
/* 8135C490 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8135C494 | 7C AA 4A 14 */	add r5, r10, r9
/* 8135C498 | 7C 09 50 50 */	subf r0, r9, r10
/* 8135C49C | 90 C3 00 0C */	stw r6, 0xc(r3)
/* 8135C4A0 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8135C4A4 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 8135C4A8 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8135C4AC | 42 00 FF 20 */	bdnz .L_8135C3CC
/* 8135C4B0 | 38 00 00 08 */	li r0, 0x8
/* 8135C4B4 | 7C 83 23 78 */	mr r3, r4
/* 8135C4B8 | 7C 09 03 A6 */	mtctr r0
.L_8135C4BC:
/* 8135C4BC | 80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 8135C4C0 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8135C4C4 | 80 C3 00 C0 */	lwz r6, 0xc0(r3)
/* 8135C4C8 | 81 03 00 20 */	lwz r8, 0x20(r3)
/* 8135C4CC | 7F E5 02 14 */	add r31, r5, r0
/* 8135C4D0 | 7F C0 28 50 */	subf r30, r0, r5
/* 8135C4D4 | 81 23 00 A0 */	lwz r9, 0xa0(r3)
/* 8135C4D8 | 7C A6 40 50 */	subf r5, r6, r8
/* 8135C4DC | 81 43 00 40 */	lwz r10, 0x40(r3)
/* 8135C4E0 | 81 63 00 80 */	lwz r11, 0x80(r3)
/* 8135C4E4 | 7D 08 32 14 */	add r8, r8, r6
/* 8135C4E8 | 81 83 00 60 */	lwz r12, 0x60(r3)
/* 8135C4EC | 7F A9 50 50 */	subf r29, r9, r10
/* 8135C4F0 | 7D 2A 4A 14 */	add r9, r10, r9
/* 8135C4F4 | 7C 05 F2 14 */	add r0, r5, r30
/* 8135C4F8 | 7D 4C 5A 14 */	add r10, r12, r11
/* 8135C4FC | 7C CB 60 50 */	subf r6, r11, r12
/* 8135C500 | 7D 8A F8 50 */	subf r12, r10, r31
/* 8135C504 | 7F 89 40 50 */	subf r28, r9, r8
/* 8135C508 | 7D 66 EA 14 */	add r11, r6, r29
/* 8135C50C | 7C BD 2A 14 */	add r5, r29, r5
/* 8135C510 | 7F A8 4A 14 */	add r29, r8, r9
/* 8135C514 | 7D 5F 52 14 */	add r10, r31, r10
/* 8135C518 | 7D 1C 62 14 */	add r8, r28, r12
/* 8135C51C | 7C C0 58 50 */	subf r6, r0, r11
/* 8135C520 | 7D 2A EA 14 */	add r9, r10, r29
/* 8135C524 | 91 23 00 00 */	stw r9, 0x0(r3)
/* 8135C528 | 7D 3D 50 50 */	subf r9, r29, r10
/* 8135C52C | 1D 08 00 B5 */	mulli r8, r8, 0xb5
/* 8135C530 | 91 23 00 80 */	stw r9, 0x80(r3)
/* 8135C534 | 7D 0A 46 70 */	srawi r10, r8, 8
/* 8135C538 | 1D 06 00 62 */	mulli r8, r6, 0x62
/* 8135C53C | 7C CC 52 14 */	add r6, r12, r10
/* 8135C540 | 90 C3 00 40 */	stw r6, 0x40(r3)
/* 8135C544 | 7D 2A 60 50 */	subf r9, r10, r12
/* 8135C548 | 1C CB 00 8B */	mulli r6, r11, 0x8b
/* 8135C54C | 7D 08 46 70 */	srawi r8, r8, 8
/* 8135C550 | 91 23 00 C0 */	stw r9, 0xc0(r3)
/* 8135C554 | 7C C6 46 70 */	srawi r6, r6, 8
/* 8135C558 | 1C 00 01 4E */	mulli r0, r0, 0x14e
/* 8135C55C | 7D 28 32 14 */	add r9, r8, r6
/* 8135C560 | 7C 06 46 70 */	srawi r6, r0, 8
/* 8135C564 | 1C 05 00 B5 */	mulli r0, r5, 0xb5
/* 8135C568 | 7D 08 32 14 */	add r8, r8, r6
/* 8135C56C | 7C 00 46 70 */	srawi r0, r0, 8
/* 8135C570 | 7C A0 F0 50 */	subf r5, r0, r30
/* 8135C574 | 7D 5E 02 14 */	add r10, r30, r0
/* 8135C578 | 7C 05 4A 14 */	add r0, r5, r9
/* 8135C57C | 7C C9 28 50 */	subf r6, r9, r5
/* 8135C580 | 90 03 00 A0 */	stw r0, 0xa0(r3)
/* 8135C584 | 7C AA 42 14 */	add r5, r10, r8
/* 8135C588 | 7C 08 50 50 */	subf r0, r8, r10
/* 8135C58C | 90 C3 00 60 */	stw r6, 0x60(r3)
/* 8135C590 | 90 A3 00 20 */	stw r5, 0x20(r3)
/* 8135C594 | 90 03 00 E0 */	stw r0, 0xe0(r3)
/* 8135C598 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135C59C | 42 00 FF 20 */	bdnz .L_8135C4BC
/* 8135C5A0 | 39 60 00 00 */	li r11, 0x0
/* 8135C5A4 | 38 60 00 00 */	li r3, 0x0
/* 8135C5A8 | 38 00 00 08 */	li r0, 0x8
.L_8135C5AC:
/* 8135C5AC | 7D 27 1A 14 */	add r9, r7, r3
/* 8135C5B0 | 7D 44 1A 14 */	add r10, r4, r3
/* 8135C5B4 | 38 A0 00 00 */	li r5, 0x0
/* 8135C5B8 | 7C 09 03 A6 */	mtctr r0
.L_8135C5BC:
/* 8135C5BC | 7D 0A 28 2E */	lwzx r8, r10, r5
/* 8135C5C0 | 7C C9 28 2E */	lwzx r6, r9, r5
/* 8135C5C4 | 7C C8 31 D6 */	mullw r6, r8, r6
/* 8135C5C8 | 38 C6 40 00 */	addi r6, r6, 0x4000
/* 8135C5CC | 7C C6 7E 70 */	srawi r6, r6, 15
/* 8135C5D0 | 7C CA 29 2E */	stwx r6, r10, r5
/* 8135C5D4 | 38 A5 00 20 */	addi r5, r5, 0x20
/* 8135C5D8 | 42 00 FF E4 */	bdnz .L_8135C5BC
/* 8135C5DC | 39 6B 00 01 */	addi r11, r11, 0x1
/* 8135C5E0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135C5E4 | 2C 0B 00 08 */	cmpwi r11, 0x8
/* 8135C5E8 | 41 80 FF C4 */	blt .L_8135C5AC
/* 8135C5EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135C5F0 | 48 29 CF 1D */	bl _restgpr_27
/* 8135C5F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135C5F8 | 7C 08 03 A6 */	mtlr r0
/* 8135C5FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135C600 | 4E 80 00 20 */	blr
.endfn fdct_fast__9CArGBAOdhFPUlPUcUlPUl

# .text:0x10C8 | 0x8135C604 | size: 0x28C
# CArGBAOdh::huffmanCoder(unsigned short*, SArCDJ_HuffmanRequest*)
.fn huffmanCoder__9CArGBAOdhFPUsP21SArCDJ_HuffmanRequest, global
/* 8135C604 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135C608 | 7C 08 02 A6 */	mflr r0
/* 8135C60C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135C610 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135C614 | 48 29 CE A9 */	bl _savegpr_26
/* 8135C618 | 80 C5 00 14 */	lwz r6, 0x14(r5)
/* 8135C61C | 7C 9D 23 78 */	mr r29, r4
/* 8135C620 | 3B 64 00 02 */	addi r27, r4, 0x2
/* 8135C624 | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 8135C628 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 8135C62C | 7C 7A 1B 78 */	mr r26, r3
/* 8135C630 | 80 E5 00 10 */	lwz r7, 0x10(r5)
/* 8135C634 | 7C BC 2B 78 */	mr r28, r5
/* 8135C638 | 7C 06 00 50 */	subf r0, r6, r0
/* 8135C63C | 38 80 00 00 */	li r4, 0x0
/* 8135C640 | 7C 07 02 14 */	add r0, r7, r0
/* 8135C644 | 3B E0 00 01 */	li r31, 0x1
/* 8135C648 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_8135C64C:
/* 8135C64C | 54 80 10 3A */	slwi r0, r4, 2
/* 8135C650 | A0 7B 00 00 */	lhz r3, 0x0(r27)
/* 8135C654 | 7C 9C 00 2E */	lwzx r4, r28, r0
/* 8135C658 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 8135C65C | 54 63 80 1E */	slwi r3, r3, 16
/* 8135C660 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8135C664 | 7C 63 86 70 */	srawi r3, r3, 16
/* 8135C668 | 7C C0 18 51 */	subf. r6, r0, r3
/* 8135C66C | 90 64 00 00 */	stw r3, 0x0(r4)
/* 8135C670 | 40 80 00 10 */	bge .L_8135C680
/* 8135C674 | 7C 06 00 D0 */	neg r0, r6
/* 8135C678 | 38 C6 FF FF */	subi r6, r6, 0x1
/* 8135C67C | 48 00 00 08 */	b .L_8135C684
.L_8135C680:
/* 8135C680 | 7C C0 33 78 */	mr r0, r6
.L_8135C684:
/* 8135C684 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135C688 | 40 82 00 0C */	bne .L_8135C694
/* 8135C68C | 38 E0 00 00 */	li r7, 0x0
/* 8135C690 | 48 00 00 18 */	b .L_8135C6A8
.L_8135C694:
/* 8135C694 | 38 E0 00 01 */	li r7, 0x1
/* 8135C698 | 48 00 00 08 */	b .L_8135C6A0
.L_8135C69C:
/* 8135C69C | 38 E7 00 01 */	addi r7, r7, 0x1
.L_8135C6A0:
/* 8135C6A0 | 7C 00 0E 71 */	srawi. r0, r0, 1
/* 8135C6A4 | 40 82 FF F8 */	bne .L_8135C69C
.L_8135C6A8:
/* 8135C6A8 | 80 BC 00 08 */	lwz r5, 0x8(r28)
/* 8135C6AC | 54 E0 10 3A */	slwi r0, r7, 2
/* 8135C6B0 | 7F E4 38 30 */	slw r4, r31, r7
/* 8135C6B4 | 7F 43 D3 78 */	mr r3, r26
/* 8135C6B8 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 8135C6BC | 38 04 FF FF */	subi r0, r4, 0x1
/* 8135C6C0 | 7C C4 00 38 */	and r4, r6, r0
/* 8135C6C4 | 7F 86 E3 78 */	mr r6, r28
/* 8135C6C8 | 54 A0 02 3E */	clrlwi r0, r5, 8
/* 8135C6CC | 7C A5 C6 70 */	srawi r5, r5, 24
/* 8135C6D0 | 7C 00 38 30 */	slw r0, r0, r7
/* 8135C6D4 | 7C 84 03 78 */	or r4, r4, r0
/* 8135C6D8 | 7C A5 3A 14 */	add r5, r5, r7
/* 8135C6DC | 48 00 01 B5 */	bl EmitBit__9CArGBAOdhFllP21SArCDJ_HuffmanRequest
/* 8135C6E0 | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 8135C6E4 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8135C6E8 | 40 82 00 10 */	bne .L_8135C6F8
/* 8135C6EC | 3C 60 80 00 */	lis r3, 0x8000
/* 8135C6F0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135C6F4 | 48 00 01 84 */	b .L_8135C878
.L_8135C6F8:
/* 8135C6F8 | 38 C0 00 00 */	li r6, 0x0
.L_8135C6FC:
/* 8135C6FC | A0 1B 00 00 */	lhz r0, 0x0(r27)
/* 8135C700 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 8135C704 | 54 1E 80 1E */	slwi r30, r0, 16
/* 8135C708 | 7F DE 86 71 */	srawi. r30, r30, 16
/* 8135C70C | 40 82 00 0C */	bne .L_8135C718
/* 8135C710 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8135C714 | 4B FF FF E8 */	b .L_8135C6FC
.L_8135C718:
/* 8135C718 | 2C 1E 40 00 */	cmpwi r30, 0x4000
/* 8135C71C | 41 82 01 08 */	beq .L_8135C824
/* 8135C720 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8135C724 | 7C C0 33 78 */	mr r0, r6
/* 8135C728 | 40 82 00 0C */	bne .L_8135C734
/* 8135C72C | 38 E0 00 00 */	li r7, 0x0
/* 8135C730 | 48 00 00 18 */	b .L_8135C748
.L_8135C734:
/* 8135C734 | 38 E0 00 01 */	li r7, 0x1
/* 8135C738 | 48 00 00 08 */	b .L_8135C740
.L_8135C73C:
/* 8135C73C | 38 E7 00 01 */	addi r7, r7, 0x1
.L_8135C740:
/* 8135C740 | 7C 00 0E 71 */	srawi. r0, r0, 1
/* 8135C744 | 40 82 FF F8 */	bne .L_8135C73C
.L_8135C748:
/* 8135C748 | 80 BC 00 0C */	lwz r5, 0xc(r28)
/* 8135C74C | 54 E0 10 3A */	slwi r0, r7, 2
/* 8135C750 | 7F E4 38 30 */	slw r4, r31, r7
/* 8135C754 | 7F 43 D3 78 */	mr r3, r26
/* 8135C758 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 8135C75C | 38 04 FF FF */	subi r0, r4, 0x1
/* 8135C760 | 7C C4 00 38 */	and r4, r6, r0
/* 8135C764 | 7F 86 E3 78 */	mr r6, r28
/* 8135C768 | 54 A0 02 3E */	clrlwi r0, r5, 8
/* 8135C76C | 7C A5 C6 70 */	srawi r5, r5, 24
/* 8135C770 | 7C 00 38 30 */	slw r0, r0, r7
/* 8135C774 | 7C 84 03 78 */	or r4, r4, r0
/* 8135C778 | 7C A5 3A 14 */	add r5, r5, r7
/* 8135C77C | 48 00 01 15 */	bl EmitBit__9CArGBAOdhFllP21SArCDJ_HuffmanRequest
/* 8135C780 | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 8135C784 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8135C788 | 40 82 00 10 */	bne .L_8135C798
/* 8135C78C | 3C 60 80 00 */	lis r3, 0x8000
/* 8135C790 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135C794 | 48 00 00 E4 */	b .L_8135C878
.L_8135C798:
/* 8135C798 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8135C79C | 40 80 00 10 */	bge .L_8135C7AC
/* 8135C7A0 | 7C 1E 00 D0 */	neg r0, r30
/* 8135C7A4 | 3B DE FF FF */	subi r30, r30, 0x1
/* 8135C7A8 | 48 00 00 08 */	b .L_8135C7B0
.L_8135C7AC:
/* 8135C7AC | 7F C0 F3 78 */	mr r0, r30
.L_8135C7B0:
/* 8135C7B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135C7B4 | 40 82 00 0C */	bne .L_8135C7C0
/* 8135C7B8 | 38 E0 00 00 */	li r7, 0x0
/* 8135C7BC | 48 00 00 18 */	b .L_8135C7D4
.L_8135C7C0:
/* 8135C7C0 | 38 E0 00 01 */	li r7, 0x1
/* 8135C7C4 | 48 00 00 08 */	b .L_8135C7CC
.L_8135C7C8:
/* 8135C7C8 | 38 E7 00 01 */	addi r7, r7, 0x1
.L_8135C7CC:
/* 8135C7CC | 7C 00 0E 71 */	srawi. r0, r0, 1
/* 8135C7D0 | 40 82 FF F8 */	bne .L_8135C7C8
.L_8135C7D4:
/* 8135C7D4 | 80 BC 00 08 */	lwz r5, 0x8(r28)
/* 8135C7D8 | 54 E0 10 3A */	slwi r0, r7, 2
/* 8135C7DC | 7F E4 38 30 */	slw r4, r31, r7
/* 8135C7E0 | 7F 43 D3 78 */	mr r3, r26
/* 8135C7E4 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 8135C7E8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8135C7EC | 7F C4 00 38 */	and r4, r30, r0
/* 8135C7F0 | 7F 86 E3 78 */	mr r6, r28
/* 8135C7F4 | 54 A0 02 3E */	clrlwi r0, r5, 8
/* 8135C7F8 | 7C A5 C6 70 */	srawi r5, r5, 24
/* 8135C7FC | 7C 00 38 30 */	slw r0, r0, r7
/* 8135C800 | 7C 84 03 78 */	or r4, r4, r0
/* 8135C804 | 7C A5 3A 14 */	add r5, r5, r7
/* 8135C808 | 48 00 00 89 */	bl EmitBit__9CArGBAOdhFllP21SArCDJ_HuffmanRequest
/* 8135C80C | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 8135C810 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8135C814 | 40 82 FE E4 */	bne .L_8135C6F8
/* 8135C818 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135C81C | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135C820 | 48 00 00 58 */	b .L_8135C878
.L_8135C824:
/* 8135C824 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8135C828 | 41 82 00 38 */	beq .L_8135C860
/* 8135C82C | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8135C830 | 7F 43 D3 78 */	mr r3, r26
/* 8135C834 | 7F 86 E3 78 */	mr r6, r28
/* 8135C838 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8135C83C | 54 04 02 3E */	clrlwi r4, r0, 8
/* 8135C840 | 7C 05 C6 70 */	srawi r5, r0, 24
/* 8135C844 | 48 00 00 4D */	bl EmitBit__9CArGBAOdhFllP21SArCDJ_HuffmanRequest
/* 8135C848 | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 8135C84C | 28 00 00 04 */	cmplwi r0, 0x4
/* 8135C850 | 40 82 00 10 */	bne .L_8135C860
/* 8135C854 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135C858 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135C85C | 48 00 00 1C */	b .L_8135C878
.L_8135C860:
/* 8135C860 | 57 60 07 BD */	rlwinm. r0, r27, 0, 30, 30
/* 8135C864 | 41 82 00 10 */	beq .L_8135C874
/* 8135C868 | 7F BB EB 78 */	mr r27, r29
/* 8135C86C | 38 80 00 01 */	li r4, 0x1
/* 8135C870 | 4B FF FD DC */	b .L_8135C64C
.L_8135C874:
/* 8135C874 | 38 60 00 00 */	li r3, 0x0
.L_8135C878:
/* 8135C878 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135C87C | 48 29 CC 8D */	bl _restgpr_26
/* 8135C880 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135C884 | 7C 08 03 A6 */	mtlr r0
/* 8135C888 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135C88C | 4E 80 00 20 */	blr
.endfn huffmanCoder__9CArGBAOdhFPUsP21SArCDJ_HuffmanRequest

# .text:0x1354 | 0x8135C890 | size: 0xB8
# CArGBAOdh::EmitBit(long, long, SArCDJ_HuffmanRequest*)
.fn EmitBit__9CArGBAOdhFllP21SArCDJ_HuffmanRequest, global
/* 8135C890 | 80 E6 00 1C */	lwz r7, 0x1c(r6)
/* 8135C894 | 81 06 00 18 */	lwz r8, 0x18(r6)
/* 8135C898 | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 8135C89C | 80 E8 00 00 */	lwz r7, 0x0(r8)
/* 8135C8A0 | 7C 05 00 50 */	subf r0, r5, r0
/* 8135C8A4 | 7C 80 00 30 */	slw r0, r4, r0
/* 8135C8A8 | 7C E0 03 78 */	or r0, r7, r0
/* 8135C8AC | 90 08 00 00 */	stw r0, 0x0(r8)
/* 8135C8B0 | 80 86 00 1C */	lwz r4, 0x1c(r6)
/* 8135C8B4 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8135C8B8 | 7C 05 00 50 */	subf r0, r5, r0
/* 8135C8BC | 90 04 00 00 */	stw r0, 0x0(r4)
/* 8135C8C0 | 48 00 00 70 */	b .L_8135C930
.L_8135C8C4:
/* 8135C8C4 | 80 86 00 14 */	lwz r4, 0x14(r6)
/* 8135C8C8 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8135C8CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135C8D0 | 40 82 00 10 */	bne .L_8135C8E0
/* 8135C8D4 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135C8D8 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135C8DC | 4E 80 00 20 */	blr
.L_8135C8E0:
/* 8135C8E0 | 80 A6 00 18 */	lwz r5, 0x18(r6)
/* 8135C8E4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8135C8E8 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8135C8EC | 54 00 46 3E */	srwi r0, r0, 24
/* 8135C8F0 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 8135C8F4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8135C8F8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 8135C8FC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8135C900 | 80 A6 00 14 */	lwz r5, 0x14(r6)
/* 8135C904 | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 8135C908 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8135C90C | 90 05 00 00 */	stw r0, 0x0(r5)
/* 8135C910 | 80 86 00 18 */	lwz r4, 0x18(r6)
/* 8135C914 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8135C918 | 54 00 40 2E */	slwi r0, r0, 8
/* 8135C91C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 8135C920 | 80 A6 00 1C */	lwz r5, 0x1c(r6)
/* 8135C924 | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 8135C928 | 38 04 00 08 */	addi r0, r4, 0x8
/* 8135C92C | 90 05 00 00 */	stw r0, 0x0(r5)
.L_8135C930:
/* 8135C930 | 80 86 00 1C */	lwz r4, 0x1c(r6)
/* 8135C934 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8135C938 | 28 00 00 18 */	cmplwi r0, 0x18
/* 8135C93C | 40 81 FF 88 */	ble .L_8135C8C4
/* 8135C940 | 38 60 00 00 */	li r3, 0x0
/* 8135C944 | 4E 80 00 20 */	blr
.endfn EmitBit__9CArGBAOdhFllP21SArCDJ_HuffmanRequest

# .text:0x140C | 0x8135C948 | size: 0x19C
# CArGBAOdh::cdj_d_initializeDecompressOdh(SArCDJ_OdhMaster*, unsigned char*, unsigned char*)
.fn cdj_d_initializeDecompressOdh__9CArGBAOdhFP16SArCDJ_OdhMasterPUcPUc, global
/* 8135C948 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135C94C | 7C 08 02 A6 */	mflr r0
/* 8135C950 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135C954 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135C958 | 88 06 00 00 */	lbz r0, 0x0(r6)
/* 8135C95C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 8135C960 | 40 82 00 28 */	bne .L_8135C988
/* 8135C964 | 88 06 00 01 */	lbz r0, 0x1(r6)
/* 8135C968 | 2C 00 00 4A */	cmpwi r0, 0x4a
/* 8135C96C | 40 82 00 1C */	bne .L_8135C988
/* 8135C970 | 88 06 00 02 */	lbz r0, 0x2(r6)
/* 8135C974 | 2C 00 00 50 */	cmpwi r0, 0x50
/* 8135C978 | 40 82 00 10 */	bne .L_8135C988
/* 8135C97C | 88 06 00 03 */	lbz r0, 0x3(r6)
/* 8135C980 | 2C 00 00 47 */	cmpwi r0, 0x47
/* 8135C984 | 41 82 00 10 */	beq .L_8135C994
.L_8135C988:
/* 8135C988 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135C98C | 38 63 00 05 */	addi r3, r3, 0x5
/* 8135C990 | 48 00 01 40 */	b .L_8135CAD0
.L_8135C994:
/* 8135C994 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8135C998 | 54 0B 05 7F */	clrlwi. r11, r0, 21
/* 8135C99C | B1 64 00 00 */	sth r11, 0x0(r4)
/* 8135C9A0 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8135C9A4 | 54 0A AD 7E */	extrwi r10, r0, 11, 10
/* 8135C9A8 | B1 44 00 02 */	sth r10, 0x2(r4)
/* 8135C9AC | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8135C9B0 | 54 07 57 FE */	extrwi r7, r0, 1, 9
/* 8135C9B4 | 39 27 00 01 */	addi r9, r7, 0x1
/* 8135C9B8 | 99 24 00 0E */	stb r9, 0xe(r4)
/* 8135C9BC | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8135C9C0 | 54 07 4F FE */	extrwi r7, r0, 1, 8
/* 8135C9C4 | 39 07 00 01 */	addi r8, r7, 0x1
/* 8135C9C8 | 99 04 00 0F */	stb r8, 0xf(r4)
/* 8135C9CC | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8135C9D0 | 54 1F 46 3E */	srwi r31, r0, 24
/* 8135C9D4 | 9B E4 00 04 */	stb r31, 0x4(r4)
/* 8135C9D8 | 41 82 00 1C */	beq .L_8135C9F4
/* 8135C9DC | 28 0B 07 FF */	cmplwi r11, 0x7ff
/* 8135C9E0 | 41 81 00 14 */	bgt .L_8135C9F4
/* 8135C9E4 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8135C9E8 | 41 82 00 0C */	beq .L_8135C9F4
/* 8135C9EC | 28 0A 07 FF */	cmplwi r10, 0x7ff
/* 8135C9F0 | 40 81 00 10 */	ble .L_8135CA00
.L_8135C9F4:
/* 8135C9F4 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135C9F8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8135C9FC | 48 00 00 D4 */	b .L_8135CAD0
.L_8135CA00:
/* 8135CA00 | 28 1F 00 64 */	cmplwi r31, 0x64
/* 8135CA04 | 40 81 00 10 */	ble .L_8135CA14
/* 8135CA08 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135CA0C | 38 63 00 02 */	addi r3, r3, 0x2
/* 8135CA10 | 48 00 00 C0 */	b .L_8135CAD0
.L_8135CA14:
/* 8135CA14 | 55 20 1D 78 */	clrlslwi r0, r9, 24, 3
/* 8135CA18 | 38 EB FF FF */	subi r7, r11, 0x1
/* 8135CA1C | 7D 67 03 D6 */	divw r11, r7, r0
/* 8135CA20 | 39 4A FF FF */	subi r10, r10, 0x1
/* 8135CA24 | 55 00 1D 78 */	clrlslwi r0, r8, 24, 3
/* 8135CA28 | 90 A4 00 2C */	stw r5, 0x2c(r4)
/* 8135CA2C | 39 20 00 00 */	li r9, 0x0
/* 8135CA30 | 39 86 00 10 */	addi r12, r6, 0x10
/* 8135CA34 | 7D 4A 03 D6 */	divw r10, r10, r0
/* 8135CA38 | 39 04 00 20 */	addi r8, r4, 0x20
/* 8135CA3C | 38 E4 00 14 */	addi r7, r4, 0x14
/* 8135CA40 | 91 84 02 30 */	stw r12, 0x230(r4)
/* 8135CA44 | 38 C0 00 10 */	li r6, 0x10
/* 8135CA48 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 8135CA4C | 38 A4 00 24 */	addi r5, r4, 0x24
/* 8135CA50 | 38 04 00 28 */	addi r0, r4, 0x28
/* 8135CA54 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 8135CA58 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8135CA5C | B1 64 00 06 */	sth r11, 0x6(r4)
/* 8135CA60 | B1 24 00 0A */	sth r9, 0xa(r4)
/* 8135CA64 | B1 44 00 08 */	sth r10, 0x8(r4)
/* 8135CA68 | B1 24 00 0C */	sth r9, 0xc(r4)
/* 8135CA6C | 91 24 00 14 */	stw r9, 0x14(r4)
/* 8135CA70 | 91 24 00 20 */	stw r9, 0x20(r4)
/* 8135CA74 | 91 24 00 24 */	stw r9, 0x24(r4)
/* 8135CA78 | 91 24 00 28 */	stw r9, 0x28(r4)
/* 8135CA7C | 91 04 04 34 */	stw r8, 0x434(r4)
/* 8135CA80 | 91 04 04 38 */	stw r8, 0x438(r4)
/* 8135CA84 | 91 84 04 44 */	stw r12, 0x444(r4)
/* 8135CA88 | 90 E4 04 50 */	stw r7, 0x450(r4)
/* 8135CA8C | 90 C4 04 54 */	stw r6, 0x454(r4)
/* 8135CA90 | 90 A4 04 58 */	stw r5, 0x458(r4)
/* 8135CA94 | 90 04 04 5C */	stw r0, 0x45c(r4)
/* 8135CA98 | 91 84 04 68 */	stw r12, 0x468(r4)
/* 8135CA9C | 90 E4 04 74 */	stw r7, 0x474(r4)
/* 8135CAA0 | 90 C4 04 78 */	stw r6, 0x478(r4)
/* 8135CAA4 | 40 82 00 08 */	bne .L_8135CAAC
/* 8135CAA8 | 3B E0 00 01 */	li r31, 0x1
.L_8135CAAC:
/* 8135CAAC | 28 1F 00 32 */	cmplwi r31, 0x32
/* 8135CAB0 | 40 80 00 10 */	bge .L_8135CAC0
/* 8135CAB4 | 38 00 13 88 */	li r0, 0x1388
/* 8135CAB8 | 7C A0 FB 96 */	divwu r5, r0, r31
/* 8135CABC | 48 00 00 0C */	b .L_8135CAC8
.L_8135CAC0:
/* 8135CAC0 | 57 E0 08 3C */	slwi r0, r31, 1
/* 8135CAC4 | 20 A0 00 C8 */	subfic r5, r0, 0xc8
.L_8135CAC8:
/* 8135CAC8 | 48 00 0E 29 */	bl cdj_d_setDequantizationTable__9CArGBAOdhFP16SArCDJ_OdhMasterUl
/* 8135CACC | 38 60 00 00 */	li r3, 0x0
.L_8135CAD0:
/* 8135CAD0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135CAD4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135CAD8 | 7C 08 03 A6 */	mtlr r0
/* 8135CADC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135CAE0 | 4E 80 00 20 */	blr
.endfn cdj_d_initializeDecompressOdh__9CArGBAOdhFP16SArCDJ_OdhMasterPUcPUc

# .text:0x15A8 | 0x8135CAE4 | size: 0xE0C
# CArGBAOdh::cdj_d_decompressLoop(SArCDJ_OdhMaster*, int, int)
.fn cdj_d_decompressLoop__9CArGBAOdhFP16SArCDJ_OdhMasterii, global
/* 8135CAE4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8135CAE8 | 7C 08 02 A6 */	mflr r0
/* 8135CAEC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8135CAF0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8135CAF4 | 48 29 C9 99 */	bl _savegpr_14
/* 8135CAF8 | A0 04 00 06 */	lhz r0, 0x6(r4)
/* 8135CAFC | 3E 80 81 61 */	lis r20, odh_natural_order@ha
/* 8135CB00 | 3E 60 81 64 */	lis r19, hufftreePtr@ha
/* 8135CB04 | 7C 7A 1B 78 */	mr r26, r3
/* 8135CB08 | 1F A0 00 38 */	mulli r29, r0, 0x38
/* 8135CB0C | 3A 94 D9 A8 */	addi r20, r20, odh_natural_order@l
/* 8135CB10 | 7C 9B 23 78 */	mr r27, r4
/* 8135CB14 | 7C BF 2B 78 */	mr r31, r5
/* 8135CB18 | 7C DC 33 78 */	mr r28, r6
/* 8135CB1C | 54 1E 18 38 */	slwi r30, r0, 3
/* 8135CB20 | 57 B2 08 3C */	slwi r18, r29, 1
/* 8135CB24 | 54 11 20 36 */	slwi r17, r0, 4
/* 8135CB28 | 3A D3 92 D8 */	addi r22, r19, hufftreePtr@l
/* 8135CB2C | 3E A0 81 61 */	lis r21, range_limit@ha
/* 8135CB30 | 3A E0 00 00 */	li r23, 0x0
/* 8135CB34 | 39 C0 00 40 */	li r14, 0x40
/* 8135CB38 | 3B 20 00 40 */	li r25, 0x40
/* 8135CB3C | 3B 00 00 40 */	li r24, 0x40
.L_8135CB40:
/* 8135CB40 | 88 7B 00 0E */	lbz r3, 0xe(r27)
/* 8135CB44 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8135CB48 | 40 82 02 8C */	bne .L_8135CDD4
/* 8135CB4C | 88 1B 00 0F */	lbz r0, 0xf(r27)
/* 8135CB50 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8135CB54 | 40 82 02 80 */	bne .L_8135CDD4
/* 8135CB58 | 7F 43 D3 78 */	mr r3, r26
/* 8135CB5C | 7F E8 FB 78 */	mr r8, r31
/* 8135CB60 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135CB64 | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135CB68 | 38 D3 92 D8 */	addi r6, r19, hufftreePtr@l
/* 8135CB6C | 38 E0 00 00 */	li r7, 0x0
/* 8135CB70 | 48 00 1A AD */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135CB74 | 80 9B 04 44 */	lwz r4, 0x444(r27)
/* 8135CB78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135CB7C | 80 1B 04 54 */	lwz r0, 0x454(r27)
/* 8135CB80 | 90 9B 04 68 */	stw r4, 0x468(r27)
/* 8135CB84 | 90 1B 04 78 */	stw r0, 0x478(r27)
/* 8135CB88 | 41 82 00 08 */	beq .L_8135CB90
/* 8135CB8C | 48 00 0D 4C */	b .L_8135D8D8
.L_8135CB90:
/* 8135CB90 | 38 00 00 40 */	li r0, 0x40
/* 8135CB94 | 7E 84 A3 78 */	mr r4, r20
/* 8135CB98 | 38 E0 00 00 */	li r7, 0x0
/* 8135CB9C | 38 60 00 00 */	li r3, 0x0
/* 8135CBA0 | 7C 09 03 A6 */	mtctr r0
.L_8135CBA4:
/* 8135CBA4 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135CBA8 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135CBAC | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135CBB0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135CBB4 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135CBB8 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135CBBC | 7C BB 02 14 */	add r5, r27, r0
/* 8135CBC0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135CBC4 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135CBC8 | 42 00 FF DC */	bdnz .L_8135CBA4
/* 8135CBCC | A0 1B 00 0C */	lhz r0, 0xc(r27)
/* 8135CBD0 | A0 7B 00 06 */	lhz r3, 0x6(r27)
/* 8135CBD4 | 54 00 30 32 */	slwi r0, r0, 6
/* 8135CBD8 | A0 9B 00 0A */	lhz r4, 0xa(r27)
/* 8135CBDC | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135CBE0 | 54 83 18 38 */	slwi r3, r4, 3
/* 8135CBE4 | 7C E3 02 14 */	add r7, r3, r0
/* 8135CBE8 | 7C 67 EA 14 */	add r3, r7, r29
/* 8135CBEC | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135CBF0 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135CBF4 | 40 81 00 10 */	ble .L_8135CC04
/* 8135CBF8 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135CBFC | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135CC00 | 48 00 0C D8 */	b .L_8135D8D8
.L_8135CC04:
/* 8135CC04 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135CC08 | 7F 43 D3 78 */	mr r3, r26
/* 8135CC0C | 7F C8 F3 78 */	mr r8, r30
/* 8135CC10 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135CC14 | 38 BB 02 34 */	addi r5, r27, 0x234
/* 8135CC18 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135CC1C | 7C E0 3A 14 */	add r7, r0, r7
/* 8135CC20 | 48 00 1E C5 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135CC24 | 7F 43 D3 78 */	mr r3, r26
/* 8135CC28 | 7F E8 FB 78 */	mr r8, r31
/* 8135CC2C | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135CC30 | 38 BB 04 58 */	addi r5, r27, 0x458
/* 8135CC34 | 38 D6 00 08 */	addi r6, r22, 0x8
/* 8135CC38 | 38 E0 00 01 */	li r7, 0x1
/* 8135CC3C | 48 00 19 E1 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135CC40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135CC44 | 41 82 00 08 */	beq .L_8135CC4C
/* 8135CC48 | 48 00 0C 90 */	b .L_8135D8D8
.L_8135CC4C:
/* 8135CC4C | 38 00 00 40 */	li r0, 0x40
/* 8135CC50 | 7E 84 A3 78 */	mr r4, r20
/* 8135CC54 | 38 E0 00 00 */	li r7, 0x0
/* 8135CC58 | 38 60 00 00 */	li r3, 0x0
/* 8135CC5C | 7C 09 03 A6 */	mtctr r0
.L_8135CC60:
/* 8135CC60 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135CC64 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135CC68 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135CC6C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135CC70 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135CC74 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135CC78 | 7C BB 02 14 */	add r5, r27, r0
/* 8135CC7C | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135CC80 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135CC84 | 42 00 FF DC */	bdnz .L_8135CC60
/* 8135CC88 | A0 1B 00 0C */	lhz r0, 0xc(r27)
/* 8135CC8C | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 8135CC90 | 54 04 30 32 */	slwi r4, r0, 6
/* 8135CC94 | A0 7B 00 08 */	lhz r3, 0x8(r27)
/* 8135CC98 | 54 C0 30 32 */	slwi r0, r6, 6
/* 8135CC9C | A0 BB 00 0A */	lhz r5, 0xa(r27)
/* 8135CCA0 | 7C 86 21 D6 */	mullw r4, r6, r4
/* 8135CCA4 | 54 A5 18 38 */	slwi r5, r5, 3
/* 8135CCA8 | 7C 63 01 D6 */	mullw r3, r3, r0
/* 8135CCAC | 7C 05 22 14 */	add r0, r5, r4
/* 8135CCB0 | 7C E3 02 14 */	add r7, r3, r0
/* 8135CCB4 | 7C 67 EA 14 */	add r3, r7, r29
/* 8135CCB8 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135CCBC | 7C 00 E0 00 */	cmpw r0, r28
/* 8135CCC0 | 40 81 00 10 */	ble .L_8135CCD0
/* 8135CCC4 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135CCC8 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135CCCC | 48 00 0C 0C */	b .L_8135D8D8
.L_8135CCD0:
/* 8135CCD0 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135CCD4 | 7F 43 D3 78 */	mr r3, r26
/* 8135CCD8 | 7F C8 F3 78 */	mr r8, r30
/* 8135CCDC | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135CCE0 | 38 BB 03 34 */	addi r5, r27, 0x334
/* 8135CCE4 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135CCE8 | 7C E0 3A 14 */	add r7, r0, r7
/* 8135CCEC | 48 00 1D F9 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135CCF0 | 7F 43 D3 78 */	mr r3, r26
/* 8135CCF4 | 7F E8 FB 78 */	mr r8, r31
/* 8135CCF8 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135CCFC | 38 BB 04 58 */	addi r5, r27, 0x458
/* 8135CD00 | 38 D6 00 08 */	addi r6, r22, 0x8
/* 8135CD04 | 38 E0 00 02 */	li r7, 0x2
/* 8135CD08 | 48 00 19 15 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135CD0C | 80 9B 04 68 */	lwz r4, 0x468(r27)
/* 8135CD10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135CD14 | 80 1B 04 78 */	lwz r0, 0x478(r27)
/* 8135CD18 | 90 9B 04 44 */	stw r4, 0x444(r27)
/* 8135CD1C | 90 1B 04 54 */	stw r0, 0x454(r27)
/* 8135CD20 | 41 82 00 08 */	beq .L_8135CD28
/* 8135CD24 | 48 00 0B B4 */	b .L_8135D8D8
.L_8135CD28:
/* 8135CD28 | 38 00 00 40 */	li r0, 0x40
/* 8135CD2C | 7E 84 A3 78 */	mr r4, r20
/* 8135CD30 | 38 E0 00 00 */	li r7, 0x0
/* 8135CD34 | 38 60 00 00 */	li r3, 0x0
/* 8135CD38 | 7C 09 03 A6 */	mtctr r0
.L_8135CD3C:
/* 8135CD3C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135CD40 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135CD44 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135CD48 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135CD4C | 54 00 10 3A */	slwi r0, r0, 2
/* 8135CD50 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135CD54 | 7C BB 02 14 */	add r5, r27, r0
/* 8135CD58 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135CD5C | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135CD60 | 42 00 FF DC */	bdnz .L_8135CD3C
/* 8135CD64 | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 8135CD68 | A0 9B 00 0C */	lhz r4, 0xc(r27)
/* 8135CD6C | A0 7B 00 08 */	lhz r3, 0x8(r27)
/* 8135CD70 | 54 C0 30 32 */	slwi r0, r6, 6
/* 8135CD74 | 54 84 30 32 */	slwi r4, r4, 6
/* 8135CD78 | A0 BB 00 0A */	lhz r5, 0xa(r27)
/* 8135CD7C | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135CD80 | 54 A5 18 38 */	slwi r5, r5, 3
/* 8135CD84 | 7C 86 21 D6 */	mullw r4, r6, r4
/* 8135CD88 | 54 03 08 3C */	slwi r3, r0, 1
/* 8135CD8C | 7C 05 22 14 */	add r0, r5, r4
/* 8135CD90 | 7C E3 02 14 */	add r7, r3, r0
/* 8135CD94 | 7C 67 EA 14 */	add r3, r7, r29
/* 8135CD98 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135CD9C | 7C 00 E0 00 */	cmpw r0, r28
/* 8135CDA0 | 40 81 00 10 */	ble .L_8135CDB0
/* 8135CDA4 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135CDA8 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135CDAC | 48 00 0B 2C */	b .L_8135D8D8
.L_8135CDB0:
/* 8135CDB0 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135CDB4 | 7F 43 D3 78 */	mr r3, r26
/* 8135CDB8 | 7F C8 F3 78 */	mr r8, r30
/* 8135CDBC | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135CDC0 | 38 BB 03 34 */	addi r5, r27, 0x334
/* 8135CDC4 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135CDC8 | 7C E0 3A 14 */	add r7, r0, r7
/* 8135CDCC | 48 00 1D 19 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135CDD0 | 48 00 0A C8 */	b .L_8135D898
.L_8135CDD4:
/* 8135CDD4 | 28 03 00 02 */	cmplwi r3, 0x2
/* 8135CDD8 | 40 82 03 20 */	bne .L_8135D0F8
/* 8135CDDC | 88 1B 00 0F */	lbz r0, 0xf(r27)
/* 8135CDE0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8135CDE4 | 40 82 03 14 */	bne .L_8135D0F8
/* 8135CDE8 | 7F 43 D3 78 */	mr r3, r26
/* 8135CDEC | 7F E8 FB 78 */	mr r8, r31
/* 8135CDF0 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135CDF4 | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135CDF8 | 38 D3 92 D8 */	addi r6, r19, hufftreePtr@l
/* 8135CDFC | 38 E0 00 00 */	li r7, 0x0
/* 8135CE00 | 48 00 18 1D */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135CE04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135CE08 | 41 82 00 08 */	beq .L_8135CE10
/* 8135CE0C | 48 00 0A CC */	b .L_8135D8D8
.L_8135CE10:
/* 8135CE10 | 38 00 00 40 */	li r0, 0x40
/* 8135CE14 | 7E 84 A3 78 */	mr r4, r20
/* 8135CE18 | 38 E0 00 00 */	li r7, 0x0
/* 8135CE1C | 38 60 00 00 */	li r3, 0x0
/* 8135CE20 | 7C 09 03 A6 */	mtctr r0
.L_8135CE24:
/* 8135CE24 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135CE28 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135CE2C | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135CE30 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135CE34 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135CE38 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135CE3C | 7C BB 02 14 */	add r5, r27, r0
/* 8135CE40 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135CE44 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135CE48 | 42 00 FF DC */	bdnz .L_8135CE24
/* 8135CE4C | A0 1B 00 0C */	lhz r0, 0xc(r27)
/* 8135CE50 | A0 7B 00 06 */	lhz r3, 0x6(r27)
/* 8135CE54 | 54 00 30 32 */	slwi r0, r0, 6
/* 8135CE58 | A0 9B 00 0A */	lhz r4, 0xa(r27)
/* 8135CE5C | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135CE60 | 54 83 20 36 */	slwi r3, r4, 4
/* 8135CE64 | 54 00 08 3C */	slwi r0, r0, 1
/* 8135CE68 | 7D E3 02 14 */	add r15, r3, r0
/* 8135CE6C | 7E 0F 92 14 */	add r16, r15, r18
/* 8135CE70 | 3A 10 00 08 */	addi r16, r16, 0x8
/* 8135CE74 | 7C 10 E0 00 */	cmpw r16, r28
/* 8135CE78 | 40 81 00 10 */	ble .L_8135CE88
/* 8135CE7C | 3C 60 80 00 */	lis r3, 0x8000
/* 8135CE80 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135CE84 | 48 00 0A 54 */	b .L_8135D8D8
.L_8135CE88:
/* 8135CE88 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135CE8C | 7F 43 D3 78 */	mr r3, r26
/* 8135CE90 | 7E 28 8B 78 */	mr r8, r17
/* 8135CE94 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135CE98 | 38 BB 02 34 */	addi r5, r27, 0x234
/* 8135CE9C | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135CEA0 | 7C E0 7A 14 */	add r7, r0, r15
/* 8135CEA4 | 48 00 1C 41 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135CEA8 | 7F 43 D3 78 */	mr r3, r26
/* 8135CEAC | 7F E8 FB 78 */	mr r8, r31
/* 8135CEB0 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135CEB4 | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135CEB8 | 38 D3 92 D8 */	addi r6, r19, hufftreePtr@l
/* 8135CEBC | 38 E0 00 00 */	li r7, 0x0
/* 8135CEC0 | 48 00 17 5D */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135CEC4 | 80 1B 04 44 */	lwz r0, 0x444(r27)
/* 8135CEC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135CECC | 90 1B 04 68 */	stw r0, 0x468(r27)
/* 8135CED0 | 41 82 00 08 */	beq .L_8135CED8
/* 8135CED4 | 48 00 0A 04 */	b .L_8135D8D8
.L_8135CED8:
/* 8135CED8 | 38 00 00 40 */	li r0, 0x40
/* 8135CEDC | 7E 84 A3 78 */	mr r4, r20
/* 8135CEE0 | 38 E0 00 00 */	li r7, 0x0
/* 8135CEE4 | 38 60 00 00 */	li r3, 0x0
/* 8135CEE8 | 7C 09 03 A6 */	mtctr r0
.L_8135CEEC:
/* 8135CEEC | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135CEF0 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135CEF4 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135CEF8 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135CEFC | 54 00 10 3A */	slwi r0, r0, 2
/* 8135CF00 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135CF04 | 7C BB 02 14 */	add r5, r27, r0
/* 8135CF08 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135CF0C | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135CF10 | 42 00 FF DC */	bdnz .L_8135CEEC
/* 8135CF14 | 38 10 00 08 */	addi r0, r16, 0x8
/* 8135CF18 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135CF1C | 40 81 00 10 */	ble .L_8135CF2C
/* 8135CF20 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135CF24 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135CF28 | 48 00 09 B0 */	b .L_8135D8D8
.L_8135CF2C:
/* 8135CF2C | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135CF30 | 7F 43 D3 78 */	mr r3, r26
/* 8135CF34 | 7E 28 8B 78 */	mr r8, r17
/* 8135CF38 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135CF3C | 7C EF 02 14 */	add r7, r15, r0
/* 8135CF40 | 38 BB 02 34 */	addi r5, r27, 0x234
/* 8135CF44 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135CF48 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 8135CF4C | 48 00 1B 99 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135CF50 | 7F 43 D3 78 */	mr r3, r26
/* 8135CF54 | 7F E8 FB 78 */	mr r8, r31
/* 8135CF58 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135CF5C | 38 BB 04 58 */	addi r5, r27, 0x458
/* 8135CF60 | 38 D6 00 08 */	addi r6, r22, 0x8
/* 8135CF64 | 38 E0 00 01 */	li r7, 0x1
/* 8135CF68 | 48 00 16 B5 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135CF6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135CF70 | 41 82 00 08 */	beq .L_8135CF78
/* 8135CF74 | 48 00 09 64 */	b .L_8135D8D8
.L_8135CF78:
/* 8135CF78 | 38 00 00 40 */	li r0, 0x40
/* 8135CF7C | 7E 84 A3 78 */	mr r4, r20
/* 8135CF80 | 38 E0 00 00 */	li r7, 0x0
/* 8135CF84 | 38 60 00 00 */	li r3, 0x0
/* 8135CF88 | 7C 09 03 A6 */	mtctr r0
.L_8135CF8C:
/* 8135CF8C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135CF90 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135CF94 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135CF98 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135CF9C | 54 00 10 3A */	slwi r0, r0, 2
/* 8135CFA0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135CFA4 | 7C BB 02 14 */	add r5, r27, r0
/* 8135CFA8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135CFAC | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135CFB0 | 42 00 FF DC */	bdnz .L_8135CF8C
/* 8135CFB4 | A0 1B 00 0C */	lhz r0, 0xc(r27)
/* 8135CFB8 | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 8135CFBC | 54 04 30 32 */	slwi r4, r0, 6
/* 8135CFC0 | A0 7B 00 08 */	lhz r3, 0x8(r27)
/* 8135CFC4 | 54 C0 38 30 */	slwi r0, r6, 7
/* 8135CFC8 | A0 BB 00 0A */	lhz r5, 0xa(r27)
/* 8135CFCC | 7C 86 21 D6 */	mullw r4, r6, r4
/* 8135CFD0 | 54 A5 18 38 */	slwi r5, r5, 3
/* 8135CFD4 | 7C 63 01 D6 */	mullw r3, r3, r0
/* 8135CFD8 | 7C 05 22 14 */	add r0, r5, r4
/* 8135CFDC | 7C E3 02 14 */	add r7, r3, r0
/* 8135CFE0 | 7C 67 EA 14 */	add r3, r7, r29
/* 8135CFE4 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135CFE8 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135CFEC | 40 81 00 10 */	ble .L_8135CFFC
/* 8135CFF0 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135CFF4 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135CFF8 | 48 00 08 E0 */	b .L_8135D8D8
.L_8135CFFC:
/* 8135CFFC | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D000 | 7F 43 D3 78 */	mr r3, r26
/* 8135D004 | 7F C8 F3 78 */	mr r8, r30
/* 8135D008 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D00C | 38 BB 03 34 */	addi r5, r27, 0x334
/* 8135D010 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D014 | 7C E0 3A 14 */	add r7, r0, r7
/* 8135D018 | 48 00 1A CD */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D01C | 7F 43 D3 78 */	mr r3, r26
/* 8135D020 | 7F E8 FB 78 */	mr r8, r31
/* 8135D024 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D028 | 38 BB 04 58 */	addi r5, r27, 0x458
/* 8135D02C | 38 D6 00 08 */	addi r6, r22, 0x8
/* 8135D030 | 38 E0 00 02 */	li r7, 0x2
/* 8135D034 | 48 00 15 E9 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D038 | 80 1B 04 68 */	lwz r0, 0x468(r27)
/* 8135D03C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D040 | 90 1B 04 44 */	stw r0, 0x444(r27)
/* 8135D044 | 41 82 00 08 */	beq .L_8135D04C
/* 8135D048 | 48 00 08 90 */	b .L_8135D8D8
.L_8135D04C:
/* 8135D04C | 38 00 00 40 */	li r0, 0x40
/* 8135D050 | 7E 84 A3 78 */	mr r4, r20
/* 8135D054 | 38 E0 00 00 */	li r7, 0x0
/* 8135D058 | 38 60 00 00 */	li r3, 0x0
/* 8135D05C | 7C 09 03 A6 */	mtctr r0
.L_8135D060:
/* 8135D060 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D064 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D068 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D06C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D070 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D074 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D078 | 7C BB 02 14 */	add r5, r27, r0
/* 8135D07C | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D080 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D084 | 42 00 FF DC */	bdnz .L_8135D060
/* 8135D088 | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 8135D08C | A0 9B 00 0C */	lhz r4, 0xc(r27)
/* 8135D090 | A0 7B 00 08 */	lhz r3, 0x8(r27)
/* 8135D094 | 54 C0 38 30 */	slwi r0, r6, 7
/* 8135D098 | 54 84 30 32 */	slwi r4, r4, 6
/* 8135D09C | A0 BB 00 0A */	lhz r5, 0xa(r27)
/* 8135D0A0 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135D0A4 | 54 A5 18 38 */	slwi r5, r5, 3
/* 8135D0A8 | 7C 86 21 D6 */	mullw r4, r6, r4
/* 8135D0AC | 54 03 08 3C */	slwi r3, r0, 1
/* 8135D0B0 | 7C 05 22 14 */	add r0, r5, r4
/* 8135D0B4 | 7C E3 02 14 */	add r7, r3, r0
/* 8135D0B8 | 7C 67 EA 14 */	add r3, r7, r29
/* 8135D0BC | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135D0C0 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D0C4 | 40 81 00 10 */	ble .L_8135D0D4
/* 8135D0C8 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D0CC | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D0D0 | 48 00 08 08 */	b .L_8135D8D8
.L_8135D0D4:
/* 8135D0D4 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D0D8 | 7F 43 D3 78 */	mr r3, r26
/* 8135D0DC | 7F C8 F3 78 */	mr r8, r30
/* 8135D0E0 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D0E4 | 38 BB 03 34 */	addi r5, r27, 0x334
/* 8135D0E8 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D0EC | 7C E0 3A 14 */	add r7, r0, r7
/* 8135D0F0 | 48 00 19 F5 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D0F4 | 48 00 07 A4 */	b .L_8135D898
.L_8135D0F8:
/* 8135D0F8 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8135D0FC | 40 82 03 30 */	bne .L_8135D42C
/* 8135D100 | 88 1B 00 0F */	lbz r0, 0xf(r27)
/* 8135D104 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8135D108 | 40 82 03 24 */	bne .L_8135D42C
/* 8135D10C | 7F 43 D3 78 */	mr r3, r26
/* 8135D110 | 7F E8 FB 78 */	mr r8, r31
/* 8135D114 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D118 | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135D11C | 38 D3 92 D8 */	addi r6, r19, hufftreePtr@l
/* 8135D120 | 38 E0 00 00 */	li r7, 0x0
/* 8135D124 | 48 00 14 F9 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D128 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D12C | 41 82 00 08 */	beq .L_8135D134
/* 8135D130 | 48 00 07 A8 */	b .L_8135D8D8
.L_8135D134:
/* 8135D134 | 38 00 00 40 */	li r0, 0x40
/* 8135D138 | 7E 84 A3 78 */	mr r4, r20
/* 8135D13C | 38 E0 00 00 */	li r7, 0x0
/* 8135D140 | 38 60 00 00 */	li r3, 0x0
/* 8135D144 | 7C 09 03 A6 */	mtctr r0
.L_8135D148:
/* 8135D148 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D14C | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D150 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D154 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D158 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D15C | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D160 | 7C BB 02 14 */	add r5, r27, r0
/* 8135D164 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D168 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D16C | 42 00 FF DC */	bdnz .L_8135D148
/* 8135D170 | A0 1B 00 0C */	lhz r0, 0xc(r27)
/* 8135D174 | A0 7B 00 06 */	lhz r3, 0x6(r27)
/* 8135D178 | 54 00 30 32 */	slwi r0, r0, 6
/* 8135D17C | A0 9B 00 0A */	lhz r4, 0xa(r27)
/* 8135D180 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135D184 | 54 83 18 38 */	slwi r3, r4, 3
/* 8135D188 | 54 00 08 3C */	slwi r0, r0, 1
/* 8135D18C | 7D E3 02 14 */	add r15, r3, r0
/* 8135D190 | 7C 6F EA 14 */	add r3, r15, r29
/* 8135D194 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135D198 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D19C | 40 81 00 10 */	ble .L_8135D1AC
/* 8135D1A0 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D1A4 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D1A8 | 48 00 07 30 */	b .L_8135D8D8
.L_8135D1AC:
/* 8135D1AC | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D1B0 | 7F 43 D3 78 */	mr r3, r26
/* 8135D1B4 | 7F C8 F3 78 */	mr r8, r30
/* 8135D1B8 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D1BC | 38 BB 02 34 */	addi r5, r27, 0x234
/* 8135D1C0 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D1C4 | 7C E0 7A 14 */	add r7, r0, r15
/* 8135D1C8 | 48 00 19 1D */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D1CC | 7F 43 D3 78 */	mr r3, r26
/* 8135D1D0 | 7F E8 FB 78 */	mr r8, r31
/* 8135D1D4 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D1D8 | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135D1DC | 38 D3 92 D8 */	addi r6, r19, hufftreePtr@l
/* 8135D1E0 | 38 E0 00 00 */	li r7, 0x0
/* 8135D1E4 | 48 00 14 39 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D1E8 | 80 1B 04 44 */	lwz r0, 0x444(r27)
/* 8135D1EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D1F0 | 90 1B 04 68 */	stw r0, 0x468(r27)
/* 8135D1F4 | 41 82 00 08 */	beq .L_8135D1FC
/* 8135D1F8 | 48 00 06 E0 */	b .L_8135D8D8
.L_8135D1FC:
/* 8135D1FC | 38 00 00 40 */	li r0, 0x40
/* 8135D200 | 7E 84 A3 78 */	mr r4, r20
/* 8135D204 | 38 E0 00 00 */	li r7, 0x0
/* 8135D208 | 38 60 00 00 */	li r3, 0x0
/* 8135D20C | 7C 09 03 A6 */	mtctr r0
.L_8135D210:
/* 8135D210 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D214 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D218 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D21C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D220 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D224 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D228 | 7C BB 02 14 */	add r5, r27, r0
/* 8135D22C | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D230 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D234 | 42 00 FF DC */	bdnz .L_8135D210
/* 8135D238 | A0 1B 00 06 */	lhz r0, 0x6(r27)
/* 8135D23C | 54 00 30 32 */	slwi r0, r0, 6
/* 8135D240 | 7D EF 02 14 */	add r15, r15, r0
/* 8135D244 | 7C 6F EA 14 */	add r3, r15, r29
/* 8135D248 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135D24C | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D250 | 40 81 00 10 */	ble .L_8135D260
/* 8135D254 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D258 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D25C | 48 00 06 7C */	b .L_8135D8D8
.L_8135D260:
/* 8135D260 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D264 | 7F 43 D3 78 */	mr r3, r26
/* 8135D268 | 7F C8 F3 78 */	mr r8, r30
/* 8135D26C | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D270 | 38 BB 02 34 */	addi r5, r27, 0x234
/* 8135D274 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D278 | 7C E0 7A 14 */	add r7, r0, r15
/* 8135D27C | 48 00 18 69 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D280 | 7F 43 D3 78 */	mr r3, r26
/* 8135D284 | 7F E8 FB 78 */	mr r8, r31
/* 8135D288 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D28C | 38 BB 04 58 */	addi r5, r27, 0x458
/* 8135D290 | 38 D6 00 08 */	addi r6, r22, 0x8
/* 8135D294 | 38 E0 00 01 */	li r7, 0x1
/* 8135D298 | 48 00 13 85 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D29C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D2A0 | 41 82 00 08 */	beq .L_8135D2A8
/* 8135D2A4 | 48 00 06 34 */	b .L_8135D8D8
.L_8135D2A8:
/* 8135D2A8 | 38 00 00 40 */	li r0, 0x40
/* 8135D2AC | 7E 84 A3 78 */	mr r4, r20
/* 8135D2B0 | 38 E0 00 00 */	li r7, 0x0
/* 8135D2B4 | 38 60 00 00 */	li r3, 0x0
/* 8135D2B8 | 7C 09 03 A6 */	mtctr r0
.L_8135D2BC:
/* 8135D2BC | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D2C0 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D2C4 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D2C8 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D2CC | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D2D0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D2D4 | 7C BB 02 14 */	add r5, r27, r0
/* 8135D2D8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D2DC | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D2E0 | 42 00 FF DC */	bdnz .L_8135D2BC
/* 8135D2E4 | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 8135D2E8 | A0 9B 00 0C */	lhz r4, 0xc(r27)
/* 8135D2EC | A0 7B 00 08 */	lhz r3, 0x8(r27)
/* 8135D2F0 | 54 C0 30 32 */	slwi r0, r6, 6
/* 8135D2F4 | 54 84 30 32 */	slwi r4, r4, 6
/* 8135D2F8 | A0 BB 00 0A */	lhz r5, 0xa(r27)
/* 8135D2FC | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135D300 | 54 A5 18 38 */	slwi r5, r5, 3
/* 8135D304 | 7C 86 21 D6 */	mullw r4, r6, r4
/* 8135D308 | 54 03 08 3C */	slwi r3, r0, 1
/* 8135D30C | 7C 05 22 14 */	add r0, r5, r4
/* 8135D310 | 7C E3 02 14 */	add r7, r3, r0
/* 8135D314 | 7C 67 EA 14 */	add r3, r7, r29
/* 8135D318 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135D31C | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D320 | 40 81 00 10 */	ble .L_8135D330
/* 8135D324 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D328 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D32C | 48 00 05 AC */	b .L_8135D8D8
.L_8135D330:
/* 8135D330 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D334 | 7F 43 D3 78 */	mr r3, r26
/* 8135D338 | 7F C8 F3 78 */	mr r8, r30
/* 8135D33C | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D340 | 38 BB 03 34 */	addi r5, r27, 0x334
/* 8135D344 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D348 | 7C E0 3A 14 */	add r7, r0, r7
/* 8135D34C | 48 00 17 99 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D350 | 7F 43 D3 78 */	mr r3, r26
/* 8135D354 | 7F E8 FB 78 */	mr r8, r31
/* 8135D358 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D35C | 38 BB 04 58 */	addi r5, r27, 0x458
/* 8135D360 | 38 D6 00 08 */	addi r6, r22, 0x8
/* 8135D364 | 38 E0 00 02 */	li r7, 0x2
/* 8135D368 | 48 00 12 B5 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D36C | 80 1B 04 68 */	lwz r0, 0x468(r27)
/* 8135D370 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D374 | 90 1B 04 44 */	stw r0, 0x444(r27)
/* 8135D378 | 41 82 00 08 */	beq .L_8135D380
/* 8135D37C | 48 00 05 5C */	b .L_8135D8D8
.L_8135D380:
/* 8135D380 | 38 00 00 40 */	li r0, 0x40
/* 8135D384 | 7E 84 A3 78 */	mr r4, r20
/* 8135D388 | 38 E0 00 00 */	li r7, 0x0
/* 8135D38C | 38 60 00 00 */	li r3, 0x0
/* 8135D390 | 7C 09 03 A6 */	mtctr r0
.L_8135D394:
/* 8135D394 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D398 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D39C | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D3A0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D3A4 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D3A8 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D3AC | 7C BB 02 14 */	add r5, r27, r0
/* 8135D3B0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D3B4 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D3B8 | 42 00 FF DC */	bdnz .L_8135D394
/* 8135D3BC | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 8135D3C0 | A0 9B 00 0C */	lhz r4, 0xc(r27)
/* 8135D3C4 | A0 7B 00 08 */	lhz r3, 0x8(r27)
/* 8135D3C8 | 54 C0 30 32 */	slwi r0, r6, 6
/* 8135D3CC | 54 84 30 32 */	slwi r4, r4, 6
/* 8135D3D0 | A0 BB 00 0A */	lhz r5, 0xa(r27)
/* 8135D3D4 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135D3D8 | 54 A5 18 38 */	slwi r5, r5, 3
/* 8135D3DC | 7C 86 21 D6 */	mullw r4, r6, r4
/* 8135D3E0 | 54 03 10 3A */	slwi r3, r0, 2
/* 8135D3E4 | 7C 05 22 14 */	add r0, r5, r4
/* 8135D3E8 | 7C E3 02 14 */	add r7, r3, r0
/* 8135D3EC | 7C 67 EA 14 */	add r3, r7, r29
/* 8135D3F0 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135D3F4 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D3F8 | 40 81 00 10 */	ble .L_8135D408
/* 8135D3FC | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D400 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D404 | 48 00 04 D4 */	b .L_8135D8D8
.L_8135D408:
/* 8135D408 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D40C | 7F 43 D3 78 */	mr r3, r26
/* 8135D410 | 7F C8 F3 78 */	mr r8, r30
/* 8135D414 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D418 | 38 BB 03 34 */	addi r5, r27, 0x334
/* 8135D41C | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D420 | 7C E0 3A 14 */	add r7, r0, r7
/* 8135D424 | 48 00 16 C1 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D428 | 48 00 04 70 */	b .L_8135D898
.L_8135D42C:
/* 8135D42C | 28 03 00 02 */	cmplwi r3, 0x2
/* 8135D430 | 40 82 04 68 */	bne .L_8135D898
/* 8135D434 | 88 1B 00 0F */	lbz r0, 0xf(r27)
/* 8135D438 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8135D43C | 40 82 04 5C */	bne .L_8135D898
/* 8135D440 | 7F 43 D3 78 */	mr r3, r26
/* 8135D444 | 7F E8 FB 78 */	mr r8, r31
/* 8135D448 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D44C | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135D450 | 38 D3 92 D8 */	addi r6, r19, hufftreePtr@l
/* 8135D454 | 38 E0 00 00 */	li r7, 0x0
/* 8135D458 | 48 00 11 C5 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D45C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D460 | 41 82 00 08 */	beq .L_8135D468
/* 8135D464 | 48 00 04 74 */	b .L_8135D8D8
.L_8135D468:
/* 8135D468 | 38 00 00 40 */	li r0, 0x40
/* 8135D46C | 7E 84 A3 78 */	mr r4, r20
/* 8135D470 | 38 E0 00 00 */	li r7, 0x0
/* 8135D474 | 38 60 00 00 */	li r3, 0x0
/* 8135D478 | 7C 09 03 A6 */	mtctr r0
.L_8135D47C:
/* 8135D47C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D480 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D484 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D488 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D48C | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D490 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D494 | 7C BB 02 14 */	add r5, r27, r0
/* 8135D498 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D49C | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D4A0 | 42 00 FF DC */	bdnz .L_8135D47C
/* 8135D4A4 | A0 1B 00 0C */	lhz r0, 0xc(r27)
/* 8135D4A8 | A0 7B 00 06 */	lhz r3, 0x6(r27)
/* 8135D4AC | 54 00 30 32 */	slwi r0, r0, 6
/* 8135D4B0 | A0 9B 00 0A */	lhz r4, 0xa(r27)
/* 8135D4B4 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135D4B8 | 54 83 20 36 */	slwi r3, r4, 4
/* 8135D4BC | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D4C0 | 7D E3 02 14 */	add r15, r3, r0
/* 8135D4C4 | 7C 6F 92 14 */	add r3, r15, r18
/* 8135D4C8 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135D4CC | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D4D0 | 40 81 00 10 */	ble .L_8135D4E0
/* 8135D4D4 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D4D8 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D4DC | 48 00 03 FC */	b .L_8135D8D8
.L_8135D4E0:
/* 8135D4E0 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D4E4 | 7F 43 D3 78 */	mr r3, r26
/* 8135D4E8 | 7E 28 8B 78 */	mr r8, r17
/* 8135D4EC | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D4F0 | 38 BB 02 34 */	addi r5, r27, 0x234
/* 8135D4F4 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D4F8 | 7C E0 7A 14 */	add r7, r0, r15
/* 8135D4FC | 48 00 15 E9 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D500 | 7F 43 D3 78 */	mr r3, r26
/* 8135D504 | 7F E8 FB 78 */	mr r8, r31
/* 8135D508 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D50C | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135D510 | 38 D3 92 D8 */	addi r6, r19, hufftreePtr@l
/* 8135D514 | 38 E0 00 00 */	li r7, 0x0
/* 8135D518 | 48 00 11 05 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D51C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D520 | 41 82 00 08 */	beq .L_8135D528
/* 8135D524 | 48 00 03 B4 */	b .L_8135D8D8
.L_8135D528:
/* 8135D528 | 38 00 00 40 */	li r0, 0x40
/* 8135D52C | 7E 84 A3 78 */	mr r4, r20
/* 8135D530 | 38 E0 00 00 */	li r7, 0x0
/* 8135D534 | 38 60 00 00 */	li r3, 0x0
/* 8135D538 | 7C 09 03 A6 */	mtctr r0
.L_8135D53C:
/* 8135D53C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D540 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D544 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D548 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D54C | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D550 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D554 | 7C BB 02 14 */	add r5, r27, r0
/* 8135D558 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D55C | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D560 | 42 00 FF DC */	bdnz .L_8135D53C
/* 8135D564 | 39 EF 00 08 */	addi r15, r15, 0x8
/* 8135D568 | 7C 6F 92 14 */	add r3, r15, r18
/* 8135D56C | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135D570 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D574 | 40 81 00 10 */	ble .L_8135D584
/* 8135D578 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D57C | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D580 | 48 00 03 58 */	b .L_8135D8D8
.L_8135D584:
/* 8135D584 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D588 | 7F 43 D3 78 */	mr r3, r26
/* 8135D58C | 7E 28 8B 78 */	mr r8, r17
/* 8135D590 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D594 | 38 BB 02 34 */	addi r5, r27, 0x234
/* 8135D598 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D59C | 7C E0 7A 14 */	add r7, r0, r15
/* 8135D5A0 | 48 00 15 45 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D5A4 | 7F 43 D3 78 */	mr r3, r26
/* 8135D5A8 | 7F E8 FB 78 */	mr r8, r31
/* 8135D5AC | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D5B0 | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135D5B4 | 38 D3 92 D8 */	addi r6, r19, hufftreePtr@l
/* 8135D5B8 | 38 E0 00 00 */	li r7, 0x0
/* 8135D5BC | 48 00 10 61 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D5C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D5C4 | 41 82 00 08 */	beq .L_8135D5CC
/* 8135D5C8 | 48 00 03 10 */	b .L_8135D8D8
.L_8135D5CC:
/* 8135D5CC | 38 00 00 40 */	li r0, 0x40
/* 8135D5D0 | 7E 84 A3 78 */	mr r4, r20
/* 8135D5D4 | 38 E0 00 00 */	li r7, 0x0
/* 8135D5D8 | 38 60 00 00 */	li r3, 0x0
/* 8135D5DC | 7C 09 03 A6 */	mtctr r0
.L_8135D5E0:
/* 8135D5E0 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D5E4 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D5E8 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D5EC | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D5F0 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D5F4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D5F8 | 7C BB 02 14 */	add r5, r27, r0
/* 8135D5FC | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D600 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D604 | 42 00 FF DC */	bdnz .L_8135D5E0
/* 8135D608 | A0 1B 00 06 */	lhz r0, 0x6(r27)
/* 8135D60C | 54 00 38 30 */	slwi r0, r0, 7
/* 8135D610 | 7C 6F 02 14 */	add r3, r15, r0
/* 8135D614 | 39 E3 FF F8 */	subi r15, r3, 0x8
/* 8135D618 | 7E 0F 92 14 */	add r16, r15, r18
/* 8135D61C | 3A 10 00 08 */	addi r16, r16, 0x8
/* 8135D620 | 7C 10 E0 00 */	cmpw r16, r28
/* 8135D624 | 40 81 00 10 */	ble .L_8135D634
/* 8135D628 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D62C | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D630 | 48 00 02 A8 */	b .L_8135D8D8
.L_8135D634:
/* 8135D634 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D638 | 7F 43 D3 78 */	mr r3, r26
/* 8135D63C | 7E 28 8B 78 */	mr r8, r17
/* 8135D640 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D644 | 38 BB 02 34 */	addi r5, r27, 0x234
/* 8135D648 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D64C | 7C E0 7A 14 */	add r7, r0, r15
/* 8135D650 | 48 00 14 95 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D654 | 7F 43 D3 78 */	mr r3, r26
/* 8135D658 | 7F E8 FB 78 */	mr r8, r31
/* 8135D65C | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D660 | 38 BB 04 34 */	addi r5, r27, 0x434
/* 8135D664 | 38 D3 92 D8 */	addi r6, r19, hufftreePtr@l
/* 8135D668 | 38 E0 00 00 */	li r7, 0x0
/* 8135D66C | 48 00 0F B1 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D670 | 80 1B 04 44 */	lwz r0, 0x444(r27)
/* 8135D674 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D678 | 90 1B 04 68 */	stw r0, 0x468(r27)
/* 8135D67C | 41 82 00 08 */	beq .L_8135D684
/* 8135D680 | 48 00 02 58 */	b .L_8135D8D8
.L_8135D684:
/* 8135D684 | 7E 84 A3 78 */	mr r4, r20
/* 8135D688 | 38 E0 00 00 */	li r7, 0x0
/* 8135D68C | 38 60 00 00 */	li r3, 0x0
/* 8135D690 | 7D C9 03 A6 */	mtctr r14
.L_8135D694:
/* 8135D694 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D698 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D69C | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D6A0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D6A4 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D6A8 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D6AC | 7C BB 02 14 */	add r5, r27, r0
/* 8135D6B0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D6B4 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D6B8 | 42 00 FF DC */	bdnz .L_8135D694
/* 8135D6BC | 38 10 00 08 */	addi r0, r16, 0x8
/* 8135D6C0 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D6C4 | 40 81 00 10 */	ble .L_8135D6D4
/* 8135D6C8 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D6CC | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D6D0 | 48 00 02 08 */	b .L_8135D8D8
.L_8135D6D4:
/* 8135D6D4 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D6D8 | 7F 43 D3 78 */	mr r3, r26
/* 8135D6DC | 7E 28 8B 78 */	mr r8, r17
/* 8135D6E0 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D6E4 | 7C EF 02 14 */	add r7, r15, r0
/* 8135D6E8 | 38 BB 02 34 */	addi r5, r27, 0x234
/* 8135D6EC | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D6F0 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 8135D6F4 | 48 00 13 F1 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D6F8 | 7F 43 D3 78 */	mr r3, r26
/* 8135D6FC | 7F E8 FB 78 */	mr r8, r31
/* 8135D700 | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D704 | 38 BB 04 58 */	addi r5, r27, 0x458
/* 8135D708 | 38 D6 00 08 */	addi r6, r22, 0x8
/* 8135D70C | 38 E0 00 01 */	li r7, 0x1
/* 8135D710 | 48 00 0F 0D */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D718 | 41 82 00 08 */	beq .L_8135D720
/* 8135D71C | 48 00 01 BC */	b .L_8135D8D8
.L_8135D720:
/* 8135D720 | 7E 84 A3 78 */	mr r4, r20
/* 8135D724 | 38 E0 00 00 */	li r7, 0x0
/* 8135D728 | 38 60 00 00 */	li r3, 0x0
/* 8135D72C | 7F 29 03 A6 */	mtctr r25
.L_8135D730:
/* 8135D730 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D734 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D738 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D73C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D740 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D744 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D748 | 7C BB 02 14 */	add r5, r27, r0
/* 8135D74C | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D750 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D754 | 42 00 FF DC */	bdnz .L_8135D730
/* 8135D758 | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 8135D75C | A0 9B 00 0C */	lhz r4, 0xc(r27)
/* 8135D760 | A0 7B 00 08 */	lhz r3, 0x8(r27)
/* 8135D764 | 54 C0 30 32 */	slwi r0, r6, 6
/* 8135D768 | 54 84 30 32 */	slwi r4, r4, 6
/* 8135D76C | A0 BB 00 0A */	lhz r5, 0xa(r27)
/* 8135D770 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135D774 | 54 A5 18 38 */	slwi r5, r5, 3
/* 8135D778 | 7C 86 21 D6 */	mullw r4, r6, r4
/* 8135D77C | 54 03 10 3A */	slwi r3, r0, 2
/* 8135D780 | 7C 05 22 14 */	add r0, r5, r4
/* 8135D784 | 7C E3 02 14 */	add r7, r3, r0
/* 8135D788 | 7C 67 EA 14 */	add r3, r7, r29
/* 8135D78C | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135D790 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D794 | 40 81 00 10 */	ble .L_8135D7A4
/* 8135D798 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D79C | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D7A0 | 48 00 01 38 */	b .L_8135D8D8
.L_8135D7A4:
/* 8135D7A4 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D7A8 | 7F 43 D3 78 */	mr r3, r26
/* 8135D7AC | 7F C8 F3 78 */	mr r8, r30
/* 8135D7B0 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D7B4 | 38 BB 03 34 */	addi r5, r27, 0x334
/* 8135D7B8 | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D7BC | 7C E0 3A 14 */	add r7, r0, r7
/* 8135D7C0 | 48 00 13 25 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
/* 8135D7C4 | 7F 43 D3 78 */	mr r3, r26
/* 8135D7C8 | 7F E8 FB 78 */	mr r8, r31
/* 8135D7CC | 38 9B 00 30 */	addi r4, r27, 0x30
/* 8135D7D0 | 38 BB 04 58 */	addi r5, r27, 0x458
/* 8135D7D4 | 38 D6 00 08 */	addi r6, r22, 0x8
/* 8135D7D8 | 38 E0 00 02 */	li r7, 0x2
/* 8135D7DC | 48 00 0E 41 */	bl huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl
/* 8135D7E0 | 80 1B 04 68 */	lwz r0, 0x468(r27)
/* 8135D7E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135D7E8 | 90 1B 04 44 */	stw r0, 0x444(r27)
/* 8135D7EC | 41 82 00 08 */	beq .L_8135D7F4
/* 8135D7F0 | 48 00 00 E8 */	b .L_8135D8D8
.L_8135D7F4:
/* 8135D7F4 | 7E 84 A3 78 */	mr r4, r20
/* 8135D7F8 | 38 E0 00 00 */	li r7, 0x0
/* 8135D7FC | 38 60 00 00 */	li r3, 0x0
/* 8135D800 | 7F 09 03 A6 */	mtctr r24
.L_8135D804:
/* 8135D804 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8135D808 | 7C BB 1A 14 */	add r5, r27, r3
/* 8135D80C | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 8135D810 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 8135D814 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135D818 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135D81C | 7C BB 02 14 */	add r5, r27, r0
/* 8135D820 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8135D824 | 90 C5 01 30 */	stw r6, 0x130(r5)
/* 8135D828 | 42 00 FF DC */	bdnz .L_8135D804
/* 8135D82C | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 8135D830 | A0 9B 00 0C */	lhz r4, 0xc(r27)
/* 8135D834 | A0 7B 00 08 */	lhz r3, 0x8(r27)
/* 8135D838 | 54 C0 30 32 */	slwi r0, r6, 6
/* 8135D83C | 54 84 30 32 */	slwi r4, r4, 6
/* 8135D840 | A0 BB 00 0A */	lhz r5, 0xa(r27)
/* 8135D844 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135D848 | 54 A5 18 38 */	slwi r5, r5, 3
/* 8135D84C | 7C 86 21 D6 */	mullw r4, r6, r4
/* 8135D850 | 54 03 18 38 */	slwi r3, r0, 3
/* 8135D854 | 7C 05 22 14 */	add r0, r5, r4
/* 8135D858 | 7C E3 02 14 */	add r7, r3, r0
/* 8135D85C | 7C 67 EA 14 */	add r3, r7, r29
/* 8135D860 | 38 03 00 08 */	addi r0, r3, 0x8
/* 8135D864 | 7C 00 E0 00 */	cmpw r0, r28
/* 8135D868 | 40 81 00 10 */	ble .L_8135D878
/* 8135D86C | 3C 60 80 00 */	lis r3, 0x8000
/* 8135D870 | 38 63 00 06 */	addi r3, r3, 0x6
/* 8135D874 | 48 00 00 64 */	b .L_8135D8D8
.L_8135D878:
/* 8135D878 | 80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 8135D87C | 7F 43 D3 78 */	mr r3, r26
/* 8135D880 | 7F C8 F3 78 */	mr r8, r30
/* 8135D884 | 38 95 D9 E8 */	addi r4, r21, range_limit@l
/* 8135D888 | 38 BB 03 34 */	addi r5, r27, 0x334
/* 8135D88C | 38 DB 01 30 */	addi r6, r27, 0x130
/* 8135D890 | 7C E0 3A 14 */	add r7, r0, r7
/* 8135D894 | 48 00 12 51 */	bl idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl
.L_8135D898:
/* 8135D898 | A0 7B 00 0A */	lhz r3, 0xa(r27)
/* 8135D89C | A0 1B 00 06 */	lhz r0, 0x6(r27)
/* 8135D8A0 | 38 83 00 01 */	addi r4, r3, 0x1
/* 8135D8A4 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 8135D8A8 | B0 9B 00 0A */	sth r4, 0xa(r27)
/* 8135D8AC | 7C 03 00 40 */	cmplw r3, r0
/* 8135D8B0 | 40 82 00 14 */	bne .L_8135D8C4
/* 8135D8B4 | A0 7B 00 0C */	lhz r3, 0xc(r27)
/* 8135D8B8 | B2 FB 00 0A */	sth r23, 0xa(r27)
/* 8135D8BC | 38 03 00 01 */	addi r0, r3, 0x1
/* 8135D8C0 | B0 1B 00 0C */	sth r0, 0xc(r27)
.L_8135D8C4:
/* 8135D8C4 | A0 7B 00 0C */	lhz r3, 0xc(r27)
/* 8135D8C8 | A0 1B 00 08 */	lhz r0, 0x8(r27)
/* 8135D8CC | 7C 03 00 40 */	cmplw r3, r0
/* 8135D8D0 | 41 80 F2 70 */	blt .L_8135CB40
/* 8135D8D4 | 38 60 00 00 */	li r3, 0x0
.L_8135D8D8:
/* 8135D8D8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8135D8DC | 48 29 BB FD */	bl _restgpr_14
/* 8135D8E0 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8135D8E4 | 7C 08 03 A6 */	mtlr r0
/* 8135D8E8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8135D8EC | 4E 80 00 20 */	blr
.endfn cdj_d_decompressLoop__9CArGBAOdhFP16SArCDJ_OdhMasterii

# .text:0x23B4 | 0x8135D8F0 | size: 0xCC
# CArGBAOdh::cdj_d_setDequantizationTable(SArCDJ_OdhMaster*, unsigned long)
.fn cdj_d_setDequantizationTable__9CArGBAOdhFP16SArCDJ_OdhMasterUl, global
/* 8135D8F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135D8F4 | 7C 08 02 A6 */	mflr r0
/* 8135D8F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135D8FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135D900 | 48 29 BB BD */	bl _savegpr_26
/* 8135D904 | 3D 80 81 61 */	lis r12, gArAANScales@ha
/* 8135D908 | 3F C0 81 61 */	lis r30, gArCdj_std_quant_tbl@ha
/* 8135D90C | 39 8C DE 68 */	addi r12, r12, gArAANScales@l
/* 8135D910 | 3B 40 00 00 */	li r26, 0x0
/* 8135D914 | 3B DE DD E8 */	addi r30, r30, gArCdj_std_quant_tbl@l
/* 8135D918 | 38 60 00 00 */	li r3, 0x0
/* 8135D91C | 38 C0 00 00 */	li r6, 0x0
/* 8135D920 | 3B E0 00 64 */	li r31, 0x64
/* 8135D924 | 38 00 00 40 */	li r0, 0x40
.L_8135D928:
/* 8135D928 | 7F A4 1A 14 */	add r29, r4, r3
/* 8135D92C | 7D 3E 32 14 */	add r9, r30, r6
/* 8135D930 | 3B 80 00 00 */	li r28, 0x0
/* 8135D934 | 38 E0 00 00 */	li r7, 0x0
/* 8135D938 | 39 00 00 00 */	li r8, 0x0
/* 8135D93C | 7C 09 03 A6 */	mtctr r0
.L_8135D940:
/* 8135D940 | 89 49 00 00 */	lbz r10, 0x0(r9)
/* 8135D944 | 7D 45 51 D6 */	mullw r10, r5, r10
/* 8135D948 | 39 4A 00 32 */	addi r10, r10, 0x32
/* 8135D94C | 7F 6A FB 97 */	divwu. r27, r10, r31
/* 8135D950 | 40 82 00 08 */	bne .L_8135D958
/* 8135D954 | 3B 60 00 01 */	li r27, 0x1
.L_8135D958:
/* 8135D958 | 28 1B 00 FF */	cmplwi r27, 0xff
/* 8135D95C | 40 81 00 08 */	ble .L_8135D964
/* 8135D960 | 3B 60 00 FF */	li r27, 0xff
.L_8135D964:
/* 8135D964 | 7D 6C 42 2E */	lhzx r11, r12, r8
/* 8135D968 | 7D 5D 3A 14 */	add r10, r29, r7
/* 8135D96C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8135D970 | 38 E7 00 04 */	addi r7, r7, 0x4
/* 8135D974 | 7D 7B 59 D6 */	mullw r11, r27, r11
/* 8135D978 | 39 08 00 02 */	addi r8, r8, 0x2
/* 8135D97C | 39 29 00 01 */	addi r9, r9, 0x1
/* 8135D980 | 39 6B 08 00 */	addi r11, r11, 0x800
/* 8135D984 | 55 6B A3 3E */	srwi r11, r11, 12
/* 8135D988 | 91 6A 02 34 */	stw r11, 0x234(r10)
/* 8135D98C | 42 00 FF B4 */	bdnz .L_8135D940
/* 8135D990 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8135D994 | 38 C6 00 40 */	addi r6, r6, 0x40
/* 8135D998 | 28 1A 00 02 */	cmplwi r26, 0x2
/* 8135D99C | 38 63 01 00 */	addi r3, r3, 0x100
/* 8135D9A0 | 41 80 FF 88 */	blt .L_8135D928
/* 8135D9A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135D9A8 | 48 29 BB 61 */	bl _restgpr_26
/* 8135D9AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135D9B0 | 7C 08 03 A6 */	mtlr r0
/* 8135D9B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135D9B8 | 4E 80 00 20 */	blr
.endfn cdj_d_setDequantizationTable__9CArGBAOdhFP16SArCDJ_OdhMasterUl

# .text:0x2480 | 0x8135D9BC | size: 0x290
# CArGBAOdh::cdj_d_colorDeconv(SArCDJ_OdhMaster*, unsigned char*, int)
.fn cdj_d_colorDeconv__9CArGBAOdhFP16SArCDJ_OdhMasterPUci, global
/* 8135D9BC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8135D9C0 | 7C 08 02 A6 */	mflr r0
/* 8135D9C4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8135D9C8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8135D9CC | 48 29 BA E1 */	bl _savegpr_22
/* 8135D9D0 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 8135D9D4 | 7C 77 1B 78 */	mr r23, r3
/* 8135D9D8 | 7C 98 23 78 */	mr r24, r4
/* 8135D9DC | 7C B9 2B 78 */	mr r25, r5
/* 8135D9E0 | 54 03 07 FF */	clrlwi. r3, r0, 31
/* 8135D9E4 | 7C DA 33 78 */	mr r26, r6
/* 8135D9E8 | 40 82 00 10 */	bne .L_8135D9F8
/* 8135D9EC | A0 A4 00 02 */	lhz r5, 0x2(r4)
/* 8135D9F0 | 54 A3 07 FF */	clrlwi. r3, r5, 31
/* 8135D9F4 | 41 82 00 0C */	beq .L_8135DA00
.L_8135D9F8:
/* 8135D9F8 | 38 60 00 01 */	li r3, 0x1
/* 8135D9FC | 48 00 02 38 */	b .L_8135DC34
.L_8135DA00:
/* 8135DA00 | 7C 60 29 D6 */	mullw r3, r0, r5
/* 8135DA04 | 83 C4 00 2C */	lwz r30, 0x2c(r4)
/* 8135DA08 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8135DA0C | 7F BE 1A 14 */	add r29, r30, r3
/* 8135DA10 | 7F 9D 1A 14 */	add r28, r29, r3
/* 8135DA14 | 40 82 00 0C */	bne .L_8135DA20
/* 8135DA18 | 54 1B 1B 74 */	rlwinm r27, r0, 3, 13, 26
/* 8135DA1C | 48 00 00 14 */	b .L_8135DA30
.L_8135DA20:
/* 8135DA20 | 2C 06 00 01 */	cmpwi r6, 0x1
/* 8135DA24 | 54 1B 13 B4 */	rlwinm r27, r0, 2, 14, 26
/* 8135DA28 | 40 82 00 08 */	bne .L_8135DA30
/* 8135DA2C | 54 1B 23 32 */	rlwinm r27, r0, 4, 12, 25
.L_8135DA30:
/* 8135DA30 | 88 A4 00 0E */	lbz r5, 0xe(r4)
/* 8135DA34 | 28 05 00 01 */	cmplwi r5, 0x1
/* 8135DA38 | 40 82 00 78 */	bne .L_8135DAB0
/* 8135DA3C | 88 64 00 0F */	lbz r3, 0xf(r4)
/* 8135DA40 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8135DA44 | 40 82 00 6C */	bne .L_8135DAB0
/* 8135DA48 | 3B E0 00 00 */	li r31, 0x0
/* 8135DA4C | 3E C0 81 61 */	lis r22, gArDeconvPlttTbl@ha
/* 8135DA50 | 48 00 00 50 */	b .L_8135DAA0
.L_8135DA54:
/* 8135DA54 | 7F E3 16 70 */	srawi r3, r31, 2
/* 8135DA58 | 57 E4 1E F8 */	clrlslwi r4, r31, 30, 3
/* 8135DA5C | 7C 63 01 94 */	addze r3, r3
/* 8135DA60 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 8135DA64 | 7D 03 D9 D6 */	mullw r8, r3, r27
/* 8135DA68 | 7C 99 22 14 */	add r4, r25, r4
/* 8135DA6C | 7E E3 BB 78 */	mr r3, r23
/* 8135DA70 | 7F C5 F3 78 */	mr r5, r30
/* 8135DA74 | 7F A6 EB 78 */	mr r6, r29
/* 8135DA78 | 7F 87 E3 78 */	mr r7, r28
/* 8135DA7C | 7C 88 22 14 */	add r4, r8, r4
/* 8135DA80 | 54 08 04 3E */	clrlwi r8, r0, 16
/* 8135DA84 | 39 56 E3 E8 */	addi r10, r22, gArDeconvPlttTbl@l
/* 8135DA88 | 48 00 01 C5 */	bl LineDeconv11__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli
/* 8135DA8C | A0 18 00 00 */	lhz r0, 0x0(r24)
/* 8135DA90 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8135DA94 | 7F DE 02 14 */	add r30, r30, r0
/* 8135DA98 | 7F BD 02 14 */	add r29, r29, r0
/* 8135DA9C | 7F 9C 02 14 */	add r28, r28, r0
.L_8135DAA0:
/* 8135DAA0 | A1 38 00 02 */	lhz r9, 0x2(r24)
/* 8135DAA4 | 7C 1F 48 00 */	cmpw r31, r9
/* 8135DAA8 | 41 80 FF AC */	blt .L_8135DA54
/* 8135DAAC | 48 00 01 84 */	b .L_8135DC30
.L_8135DAB0:
/* 8135DAB0 | 28 05 00 02 */	cmplwi r5, 0x2
/* 8135DAB4 | 40 82 00 7C */	bne .L_8135DB30
/* 8135DAB8 | 88 64 00 0F */	lbz r3, 0xf(r4)
/* 8135DABC | 28 03 00 01 */	cmplwi r3, 0x1
/* 8135DAC0 | 40 82 00 70 */	bne .L_8135DB30
/* 8135DAC4 | 3B E0 00 00 */	li r31, 0x0
/* 8135DAC8 | 3E C0 81 61 */	lis r22, gArDeconvPlttTbl@ha
/* 8135DACC | 48 00 00 54 */	b .L_8135DB20
.L_8135DAD0:
/* 8135DAD0 | 7F E3 16 70 */	srawi r3, r31, 2
/* 8135DAD4 | 57 E4 1E F8 */	clrlslwi r4, r31, 30, 3
/* 8135DAD8 | 7C 63 01 94 */	addze r3, r3
/* 8135DADC | 93 41 00 08 */	stw r26, 0x8(r1)
/* 8135DAE0 | 7D 03 D9 D6 */	mullw r8, r3, r27
/* 8135DAE4 | 7C 99 22 14 */	add r4, r25, r4
/* 8135DAE8 | 7E E3 BB 78 */	mr r3, r23
/* 8135DAEC | 7F C5 F3 78 */	mr r5, r30
/* 8135DAF0 | 7F A6 EB 78 */	mr r6, r29
/* 8135DAF4 | 7F 87 E3 78 */	mr r7, r28
/* 8135DAF8 | 7C 88 22 14 */	add r4, r8, r4
/* 8135DAFC | 54 08 04 3E */	clrlwi r8, r0, 16
/* 8135DB00 | 39 56 E3 E8 */	addi r10, r22, gArDeconvPlttTbl@l
/* 8135DB04 | 48 00 02 D1 */	bl LineDeconv21__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli
/* 8135DB08 | A0 18 00 00 */	lhz r0, 0x0(r24)
/* 8135DB0C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8135DB10 | 7C 03 0E 70 */	srawi r3, r0, 1
/* 8135DB14 | 7F DE 02 14 */	add r30, r30, r0
/* 8135DB18 | 7F BD 1A 14 */	add r29, r29, r3
/* 8135DB1C | 7F 9C 1A 14 */	add r28, r28, r3
.L_8135DB20:
/* 8135DB20 | A1 38 00 02 */	lhz r9, 0x2(r24)
/* 8135DB24 | 7C 1F 48 00 */	cmpw r31, r9
/* 8135DB28 | 41 80 FF A8 */	blt .L_8135DAD0
/* 8135DB2C | 48 00 01 04 */	b .L_8135DC30
.L_8135DB30:
/* 8135DB30 | 28 05 00 01 */	cmplwi r5, 0x1
/* 8135DB34 | 40 82 00 7C */	bne .L_8135DBB0
/* 8135DB38 | 88 64 00 0F */	lbz r3, 0xf(r4)
/* 8135DB3C | 28 03 00 02 */	cmplwi r3, 0x2
/* 8135DB40 | 40 82 00 70 */	bne .L_8135DBB0
/* 8135DB44 | 3B E0 00 00 */	li r31, 0x0
/* 8135DB48 | 3E C0 81 61 */	lis r22, gArDeconvPlttTbl@ha
/* 8135DB4C | 48 00 00 54 */	b .L_8135DBA0
.L_8135DB50:
/* 8135DB50 | 7F E3 16 70 */	srawi r3, r31, 2
/* 8135DB54 | 57 E4 1E F8 */	clrlslwi r4, r31, 30, 3
/* 8135DB58 | 7C 63 01 94 */	addze r3, r3
/* 8135DB5C | 93 41 00 08 */	stw r26, 0x8(r1)
/* 8135DB60 | 7D 03 D9 D6 */	mullw r8, r3, r27
/* 8135DB64 | 7C 99 22 14 */	add r4, r25, r4
/* 8135DB68 | 7E E3 BB 78 */	mr r3, r23
/* 8135DB6C | 7F C5 F3 78 */	mr r5, r30
/* 8135DB70 | 7F A6 EB 78 */	mr r6, r29
/* 8135DB74 | 7F 87 E3 78 */	mr r7, r28
/* 8135DB78 | 7C 88 22 14 */	add r4, r8, r4
/* 8135DB7C | 54 08 04 3E */	clrlwi r8, r0, 16
/* 8135DB80 | 39 56 E3 E8 */	addi r10, r22, gArDeconvPlttTbl@l
/* 8135DB84 | 48 00 04 81 */	bl LineDeconv12__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli
/* 8135DB88 | A0 18 00 00 */	lhz r0, 0x0(r24)
/* 8135DB8C | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8135DB90 | 54 03 08 3C */	slwi r3, r0, 1
/* 8135DB94 | 7F BD 02 14 */	add r29, r29, r0
/* 8135DB98 | 7F DE 1A 14 */	add r30, r30, r3
/* 8135DB9C | 7F 9C 02 14 */	add r28, r28, r0
.L_8135DBA0:
/* 8135DBA0 | A1 38 00 02 */	lhz r9, 0x2(r24)
/* 8135DBA4 | 7C 1F 48 00 */	cmpw r31, r9
/* 8135DBA8 | 41 80 FF A8 */	blt .L_8135DB50
/* 8135DBAC | 48 00 00 84 */	b .L_8135DC30
.L_8135DBB0:
/* 8135DBB0 | 28 05 00 02 */	cmplwi r5, 0x2
/* 8135DBB4 | 40 82 00 7C */	bne .L_8135DC30
/* 8135DBB8 | 88 64 00 0F */	lbz r3, 0xf(r4)
/* 8135DBBC | 28 03 00 02 */	cmplwi r3, 0x2
/* 8135DBC0 | 40 82 00 70 */	bne .L_8135DC30
/* 8135DBC4 | 3B E0 00 00 */	li r31, 0x0
/* 8135DBC8 | 3E C0 81 61 */	lis r22, gArDeconvPlttTbl@ha
/* 8135DBCC | 48 00 00 58 */	b .L_8135DC24
.L_8135DBD0:
/* 8135DBD0 | 7F E3 16 70 */	srawi r3, r31, 2
/* 8135DBD4 | 57 E4 1E F8 */	clrlslwi r4, r31, 30, 3
/* 8135DBD8 | 7C 63 01 94 */	addze r3, r3
/* 8135DBDC | 93 41 00 08 */	stw r26, 0x8(r1)
/* 8135DBE0 | 7D 03 D9 D6 */	mullw r8, r3, r27
/* 8135DBE4 | 7C 99 22 14 */	add r4, r25, r4
/* 8135DBE8 | 7E E3 BB 78 */	mr r3, r23
/* 8135DBEC | 7F C5 F3 78 */	mr r5, r30
/* 8135DBF0 | 7F A6 EB 78 */	mr r6, r29
/* 8135DBF4 | 7F 87 E3 78 */	mr r7, r28
/* 8135DBF8 | 7C 88 22 14 */	add r4, r8, r4
/* 8135DBFC | 54 08 04 3E */	clrlwi r8, r0, 16
/* 8135DC00 | 39 56 E3 E8 */	addi r10, r22, gArDeconvPlttTbl@l
/* 8135DC04 | 48 00 06 49 */	bl LineDeconv22__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli
/* 8135DC08 | A0 18 00 00 */	lhz r0, 0x0(r24)
/* 8135DC0C | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8135DC10 | 7C 04 0E 70 */	srawi r4, r0, 1
/* 8135DC14 | 54 03 08 3C */	slwi r3, r0, 1
/* 8135DC18 | 7F DE 1A 14 */	add r30, r30, r3
/* 8135DC1C | 7F BD 22 14 */	add r29, r29, r4
/* 8135DC20 | 7F 9C 22 14 */	add r28, r28, r4
.L_8135DC24:
/* 8135DC24 | A1 38 00 02 */	lhz r9, 0x2(r24)
/* 8135DC28 | 7C 1F 48 00 */	cmpw r31, r9
/* 8135DC2C | 41 80 FF A4 */	blt .L_8135DBD0
.L_8135DC30:
/* 8135DC30 | 38 60 00 00 */	li r3, 0x0
.L_8135DC34:
/* 8135DC34 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8135DC38 | 48 29 B8 C1 */	bl _restgpr_22
/* 8135DC3C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8135DC40 | 7C 08 03 A6 */	mtlr r0
/* 8135DC44 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8135DC48 | 4E 80 00 20 */	blr
.endfn cdj_d_colorDeconv__9CArGBAOdhFP16SArCDJ_OdhMasterPUci

# .text:0x2710 | 0x8135DC4C | size: 0x164
# CArGBAOdh::LineDeconv11(unsigned char*, unsigned char*, unsigned char*, unsigned char*, unsigned short, unsigned short, const SArDeconvTbl*, int)
.fn LineDeconv11__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli, global
/* 8135DC4C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8135DC50 | 7C 08 02 A6 */	mflr r0
/* 8135DC54 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8135DC58 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8135DC5C | 48 29 B8 35 */	bl _savegpr_15
/* 8135DC60 | 7D 28 49 D6 */	mullw r9, r8, r9
/* 8135DC64 | 82 C1 00 58 */	lwz r22, 0x58(r1)
/* 8135DC68 | 7C 6F 1B 78 */	mr r15, r3
/* 8135DC6C | 7C 90 23 78 */	mr r16, r4
/* 8135DC70 | 7C B1 2B 78 */	mr r17, r5
/* 8135DC74 | 7C D2 33 78 */	mr r18, r6
/* 8135DC78 | 55 20 08 3C */	slwi r0, r9, 1
/* 8135DC7C | 7C F3 3B 78 */	mr r19, r7
/* 8135DC80 | 7D 14 43 78 */	mr r20, r8
/* 8135DC84 | 7D 55 53 78 */	mr r21, r10
/* 8135DC88 | 7F 84 4A 14 */	add r28, r4, r9
/* 8135DC8C | 7F 64 02 14 */	add r27, r4, r0
/* 8135DC90 | 3A E0 00 00 */	li r23, 0x0
/* 8135DC94 | 3B E0 00 FF */	li r31, 0xff
/* 8135DC98 | 48 00 00 F8 */	b .L_8135DD90
.L_8135DC9C:
/* 8135DC9C | 8B 13 00 00 */	lbz r24, 0x0(r19)
/* 8135DCA0 | 7D E3 7B 78 */	mr r3, r15
/* 8135DCA4 | 8B 51 00 00 */	lbz r26, 0x0(r17)
/* 8135DCA8 | 57 00 08 3C */	slwi r0, r24, 1
/* 8135DCAC | 8B 32 00 00 */	lbz r25, 0x0(r18)
/* 8135DCB0 | 7C 15 02 AE */	lhax r0, r21, r0
/* 8135DCB4 | 7C 9A 02 14 */	add r4, r26, r0
/* 8135DCB8 | 48 00 00 F9 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135DCBC | 57 24 15 BA */	clrlslwi r4, r25, 24, 2
/* 8135DCC0 | 57 00 15 BA */	clrlslwi r0, r24, 24, 2
/* 8135DCC4 | 7C 95 22 14 */	add r4, r21, r4
/* 8135DCC8 | 7C 7D 1B 78 */	mr r29, r3
/* 8135DCCC | 7C 75 02 14 */	add r3, r21, r0
/* 8135DCD0 | 80 84 02 00 */	lwz r4, 0x200(r4)
/* 8135DCD4 | 80 03 06 00 */	lwz r0, 0x600(r3)
/* 8135DCD8 | 7D E3 7B 78 */	mr r3, r15
/* 8135DCDC | 7C 04 02 14 */	add r0, r4, r0
/* 8135DCE0 | 7C 00 86 70 */	srawi r0, r0, 16
/* 8135DCE4 | 7C 9A 02 14 */	add r4, r26, r0
/* 8135DCE8 | 48 00 00 C9 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135DCEC | 57 20 0D FC */	clrlslwi r0, r25, 24, 1
/* 8135DCF0 | 7C 7E 1B 78 */	mr r30, r3
/* 8135DCF4 | 7C 95 02 14 */	add r4, r21, r0
/* 8135DCF8 | 7D E3 7B 78 */	mr r3, r15
/* 8135DCFC | A8 04 0A 00 */	lha r0, 0xa00(r4)
/* 8135DD00 | 7C 9A 02 14 */	add r4, r26, r0
/* 8135DD04 | 48 00 00 AD */	bl ScaleLimit__9CArGBAOdhFl
/* 8135DD08 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 8135DD0C | 40 82 00 34 */	bne .L_8135DD40
/* 8135DD10 | 57 C4 1D 74 */	rlwinm r4, r30, 3, 21, 26
/* 8135DD14 | 56 E0 18 34 */	extlwi r0, r23, 27, 3
/* 8135DD18 | 7C 65 1E 70 */	srawi r5, r3, 3
/* 8135DD1C | 56 E3 0F 7C */	clrlslwi r3, r23, 30, 1
/* 8135DD20 | 53 A4 44 28 */	rlwimi r4, r29, 8, 16, 20
/* 8135DD24 | 7C 10 02 14 */	add r0, r16, r0
/* 8135DD28 | 7C A4 23 78 */	or r4, r5, r4
/* 8135DD2C | 7C 63 02 14 */	add r3, r3, r0
/* 8135DD30 | 7C 80 46 70 */	srawi r0, r4, 8
/* 8135DD34 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 8135DD38 | 98 83 00 01 */	stb r4, 0x1(r3)
/* 8135DD3C | 48 00 00 44 */	b .L_8135DD80
.L_8135DD40:
/* 8135DD40 | 2C 16 00 01 */	cmpwi r22, 0x1
/* 8135DD44 | 40 82 00 24 */	bne .L_8135DD68
/* 8135DD48 | 56 E0 20 32 */	extlwi r0, r23, 26, 4
/* 8135DD4C | 56 E4 0F 7C */	clrlslwi r4, r23, 30, 1
/* 8135DD50 | 7C 10 02 14 */	add r0, r16, r0
/* 8135DD54 | 7F E4 01 EE */	stbux r31, r4, r0
/* 8135DD58 | 9B A4 00 01 */	stb r29, 0x1(r4)
/* 8135DD5C | 9B C4 00 20 */	stb r30, 0x20(r4)
/* 8135DD60 | 98 64 00 21 */	stb r3, 0x21(r4)
/* 8135DD64 | 48 00 00 1C */	b .L_8135DD80
.L_8135DD68:
/* 8135DD68 | 56 E3 07 7E */	clrlwi r3, r23, 29
/* 8135DD6C | 56 E0 10 34 */	extlwi r0, r23, 27, 2
/* 8135DD70 | 7C 03 02 14 */	add r0, r3, r0
/* 8135DD74 | 7F 50 01 AE */	stbx r26, r16, r0
/* 8135DD78 | 7F 3C 01 AE */	stbx r25, r28, r0
/* 8135DD7C | 7F 1B 01 AE */	stbx r24, r27, r0
.L_8135DD80:
/* 8135DD80 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 8135DD84 | 3A 52 00 01 */	addi r18, r18, 0x1
/* 8135DD88 | 3A 73 00 01 */	addi r19, r19, 0x1
/* 8135DD8C | 3A F7 00 01 */	addi r23, r23, 0x1
.L_8135DD90:
/* 8135DD90 | 7C 17 A0 00 */	cmpw r23, r20
/* 8135DD94 | 41 80 FF 08 */	blt .L_8135DC9C
/* 8135DD98 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8135DD9C | 48 29 B7 41 */	bl _restgpr_15
/* 8135DDA0 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8135DDA4 | 7C 08 03 A6 */	mtlr r0
/* 8135DDA8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8135DDAC | 4E 80 00 20 */	blr
.endfn LineDeconv11__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli

# .text:0x2874 | 0x8135DDB0 | size: 0x24
# CArGBAOdh::ScaleLimit(long)
.fn ScaleLimit__9CArGBAOdhFl, global
/* 8135DDB0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8135DDB4 | 40 80 00 0C */	bge .L_8135DDC0
/* 8135DDB8 | 38 80 00 00 */	li r4, 0x0
/* 8135DDBC | 48 00 00 10 */	b .L_8135DDCC
.L_8135DDC0:
/* 8135DDC0 | 2C 04 00 FF */	cmpwi r4, 0xff
/* 8135DDC4 | 40 81 00 08 */	ble .L_8135DDCC
/* 8135DDC8 | 38 80 00 FF */	li r4, 0xff
.L_8135DDCC:
/* 8135DDCC | 7C 83 23 78 */	mr r3, r4
/* 8135DDD0 | 4E 80 00 20 */	blr
.endfn ScaleLimit__9CArGBAOdhFl

# .text:0x2898 | 0x8135DDD4 | size: 0x230
# CArGBAOdh::LineDeconv21(unsigned char*, unsigned char*, unsigned char*, unsigned char*, unsigned short, unsigned short, const SArDeconvTbl*, int)
.fn LineDeconv21__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli, global
/* 8135DDD4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8135DDD8 | 7C 08 02 A6 */	mflr r0
/* 8135DDDC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8135DDE0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8135DDE4 | 48 29 B6 A9 */	bl _savegpr_14
/* 8135DDE8 | 7C 08 49 D6 */	mullw r0, r8, r9
/* 8135DDEC | 7C 6F 1B 78 */	mr r15, r3
/* 8135DDF0 | 82 A1 00 68 */	lwz r21, 0x68(r1)
/* 8135DDF4 | 7C 90 23 78 */	mr r16, r4
/* 8135DDF8 | B1 01 00 08 */	sth r8, 0x8(r1)
/* 8135DDFC | 7C B1 2B 78 */	mr r17, r5
/* 8135DE00 | 54 03 08 3C */	slwi r3, r0, 1
/* 8135DE04 | 7C 04 02 14 */	add r0, r4, r0
/* 8135DE08 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8135DE0C | 7C D2 33 78 */	mr r18, r6
/* 8135DE10 | 7C F3 3B 78 */	mr r19, r7
/* 8135DE14 | 7D 54 53 78 */	mr r20, r10
/* 8135DE18 | 7F E4 1A 14 */	add r31, r4, r3
/* 8135DE1C | 3A E0 00 00 */	li r23, 0x0
/* 8135DE20 | 48 00 01 C0 */	b .L_8135DFE0
.L_8135DE24:
/* 8135DE24 | 8B 13 00 00 */	lbz r24, 0x0(r19)
/* 8135DE28 | 7D E3 7B 78 */	mr r3, r15
/* 8135DE2C | 8B 51 00 00 */	lbz r26, 0x0(r17)
/* 8135DE30 | 57 00 08 3C */	slwi r0, r24, 1
/* 8135DE34 | 8B 32 00 00 */	lbz r25, 0x0(r18)
/* 8135DE38 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8135DE3C | 7C 14 02 AE */	lhax r0, r20, r0
/* 8135DE40 | 7C 9A 02 14 */	add r4, r26, r0
/* 8135DE44 | 4B FF FF 6D */	bl ScaleLimit__9CArGBAOdhFl
/* 8135DE48 | 57 04 15 BA */	clrlslwi r4, r24, 24, 2
/* 8135DE4C | 57 20 15 BA */	clrlslwi r0, r25, 24, 2
/* 8135DE50 | 7F D4 22 14 */	add r30, r20, r4
/* 8135DE54 | 7C 6E 1B 78 */	mr r14, r3
/* 8135DE58 | 7F B4 02 14 */	add r29, r20, r0
/* 8135DE5C | 80 1E 06 00 */	lwz r0, 0x600(r30)
/* 8135DE60 | 80 9D 02 00 */	lwz r4, 0x200(r29)
/* 8135DE64 | 7D E3 7B 78 */	mr r3, r15
/* 8135DE68 | 7C 04 02 14 */	add r0, r4, r0
/* 8135DE6C | 7C 00 86 70 */	srawi r0, r0, 16
/* 8135DE70 | 7C 9A 02 14 */	add r4, r26, r0
/* 8135DE74 | 4B FF FF 3D */	bl ScaleLimit__9CArGBAOdhFl
/* 8135DE78 | 57 20 0D FC */	clrlslwi r0, r25, 24, 1
/* 8135DE7C | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8135DE80 | 7F 94 02 14 */	add r28, r20, r0
/* 8135DE84 | 7D E3 7B 78 */	mr r3, r15
/* 8135DE88 | A8 1C 0A 00 */	lha r0, 0xa00(r28)
/* 8135DE8C | 7C 9A 02 14 */	add r4, r26, r0
/* 8135DE90 | 4B FF FF 21 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135DE94 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8135DE98 | 40 82 00 38 */	bne .L_8135DED0
/* 8135DE9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135DEA0 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 8135DEA4 | 56 E5 18 34 */	extlwi r5, r23, 27, 3
/* 8135DEA8 | 56 E4 0F 7C */	clrlslwi r4, r23, 30, 1
/* 8135DEAC | 54 00 1D 74 */	rlwinm r0, r0, 3, 21, 26
/* 8135DEB0 | 51 C0 44 28 */	rlwimi r0, r14, 8, 16, 20
/* 8135DEB4 | 7E C5 22 14 */	add r22, r5, r4
/* 8135DEB8 | 7C 63 03 78 */	or r3, r3, r0
/* 8135DEBC | 7C 60 46 70 */	srawi r0, r3, 8
/* 8135DEC0 | 7F 70 B2 14 */	add r27, r16, r22
/* 8135DEC4 | 7C 10 B1 AE */	stbx r0, r16, r22
/* 8135DEC8 | 98 7B 00 01 */	stb r3, 0x1(r27)
/* 8135DECC | 48 00 00 58 */	b .L_8135DF24
.L_8135DED0:
/* 8135DED0 | 2C 15 00 01 */	cmpwi r21, 0x1
/* 8135DED4 | 40 82 00 30 */	bne .L_8135DF04
/* 8135DED8 | 56 E4 20 32 */	extlwi r4, r23, 26, 4
/* 8135DEDC | 56 E0 0F 7C */	clrlslwi r0, r23, 30, 1
/* 8135DEE0 | 7E C4 02 14 */	add r22, r4, r0
/* 8135DEE4 | 38 00 00 FF */	li r0, 0xff
/* 8135DEE8 | 7C 10 B1 AE */	stbx r0, r16, r22
/* 8135DEEC | 7F 70 B2 14 */	add r27, r16, r22
/* 8135DEF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135DEF4 | 99 DB 00 01 */	stb r14, 0x1(r27)
/* 8135DEF8 | 98 1B 00 20 */	stb r0, 0x20(r27)
/* 8135DEFC | 98 7B 00 21 */	stb r3, 0x21(r27)
/* 8135DF00 | 48 00 00 24 */	b .L_8135DF24
.L_8135DF04:
/* 8135DF04 | 56 E3 07 7E */	clrlwi r3, r23, 29
/* 8135DF08 | 56 E0 10 34 */	extlwi r0, r23, 27, 2
/* 8135DF0C | 7E C3 02 14 */	add r22, r3, r0
/* 8135DF10 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8135DF14 | 7F 50 B1 AE */	stbx r26, r16, r22
/* 8135DF18 | 7F 70 B2 14 */	add r27, r16, r22
/* 8135DF1C | 7F 23 B1 AE */	stbx r25, r3, r22
/* 8135DF20 | 7F 1F B1 AE */	stbx r24, r31, r22
.L_8135DF24:
/* 8135DF24 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8135DF28 | 7D E3 7B 78 */	mr r3, r15
/* 8135DF2C | 89 D1 00 01 */	lbz r14, 0x1(r17)
/* 8135DF30 | 7C 14 02 AE */	lhax r0, r20, r0
/* 8135DF34 | 7C 8E 02 14 */	add r4, r14, r0
/* 8135DF38 | 4B FF FE 79 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135DF3C | 80 9D 02 00 */	lwz r4, 0x200(r29)
/* 8135DF40 | 7C 7A 1B 78 */	mr r26, r3
/* 8135DF44 | 80 1E 06 00 */	lwz r0, 0x600(r30)
/* 8135DF48 | 7D E3 7B 78 */	mr r3, r15
/* 8135DF4C | 7C 04 02 14 */	add r0, r4, r0
/* 8135DF50 | 7C 00 86 70 */	srawi r0, r0, 16
/* 8135DF54 | 7C 8E 02 14 */	add r4, r14, r0
/* 8135DF58 | 4B FF FE 59 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135DF5C | A8 1C 0A 00 */	lha r0, 0xa00(r28)
/* 8135DF60 | 7C 7C 1B 78 */	mr r28, r3
/* 8135DF64 | 7D E3 7B 78 */	mr r3, r15
/* 8135DF68 | 7C 8E 02 14 */	add r4, r14, r0
/* 8135DF6C | 4B FF FE 45 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135DF70 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8135DF74 | 40 82 00 24 */	bne .L_8135DF98
/* 8135DF78 | 57 80 1D 74 */	rlwinm r0, r28, 3, 21, 26
/* 8135DF7C | 7C 63 1E 70 */	srawi r3, r3, 3
/* 8135DF80 | 53 40 44 28 */	rlwimi r0, r26, 8, 16, 20
/* 8135DF84 | 7C 63 03 78 */	or r3, r3, r0
/* 8135DF88 | 7C 60 46 70 */	srawi r0, r3, 8
/* 8135DF8C | 98 1B 00 02 */	stb r0, 0x2(r27)
/* 8135DF90 | 98 7B 00 03 */	stb r3, 0x3(r27)
/* 8135DF94 | 48 00 00 3C */	b .L_8135DFD0
.L_8135DF98:
/* 8135DF98 | 2C 15 00 01 */	cmpwi r21, 0x1
/* 8135DF9C | 40 82 00 1C */	bne .L_8135DFB8
/* 8135DFA0 | 38 00 00 FF */	li r0, 0xff
/* 8135DFA4 | 98 1B 00 02 */	stb r0, 0x2(r27)
/* 8135DFA8 | 9B 5B 00 03 */	stb r26, 0x3(r27)
/* 8135DFAC | 9B 9B 00 22 */	stb r28, 0x22(r27)
/* 8135DFB0 | 98 7B 00 23 */	stb r3, 0x23(r27)
/* 8135DFB4 | 48 00 00 1C */	b .L_8135DFD0
.L_8135DFB8:
/* 8135DFB8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8135DFBC | 7C 7F B2 14 */	add r3, r31, r22
/* 8135DFC0 | 99 DB 00 01 */	stb r14, 0x1(r27)
/* 8135DFC4 | 7C 80 B2 14 */	add r4, r0, r22
/* 8135DFC8 | 9B 24 00 01 */	stb r25, 0x1(r4)
/* 8135DFCC | 9B 03 00 01 */	stb r24, 0x1(r3)
.L_8135DFD0:
/* 8135DFD0 | 3A 31 00 02 */	addi r17, r17, 0x2
/* 8135DFD4 | 3A 52 00 01 */	addi r18, r18, 0x1
/* 8135DFD8 | 3A 73 00 01 */	addi r19, r19, 0x1
/* 8135DFDC | 3A F7 00 02 */	addi r23, r23, 0x2
.L_8135DFE0:
/* 8135DFE0 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8135DFE4 | 7C 17 00 00 */	cmpw r23, r0
/* 8135DFE8 | 41 80 FE 3C */	blt .L_8135DE24
/* 8135DFEC | 39 61 00 60 */	addi r11, r1, 0x60
/* 8135DFF0 | 48 29 B4 E9 */	bl _restgpr_14
/* 8135DFF4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8135DFF8 | 7C 08 03 A6 */	mtlr r0
/* 8135DFFC | 38 21 00 60 */	addi r1, r1, 0x60
/* 8135E000 | 4E 80 00 20 */	blr
.endfn LineDeconv21__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli

# .text:0x2AC8 | 0x8135E004 | size: 0x248
# CArGBAOdh::LineDeconv12(unsigned char*, unsigned char*, unsigned char*, unsigned char*, unsigned short, unsigned short, const SArDeconvTbl*, int)
.fn LineDeconv12__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli, global
/* 8135E004 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8135E008 | 7C 08 02 A6 */	mflr r0
/* 8135E00C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8135E010 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8135E014 | 48 29 B4 79 */	bl _savegpr_14
/* 8135E018 | 7C 08 49 D6 */	mullw r0, r8, r9
/* 8135E01C | 7C 6F 1B 78 */	mr r15, r3
/* 8135E020 | 82 A1 00 68 */	lwz r21, 0x68(r1)
/* 8135E024 | 7C 90 23 78 */	mr r16, r4
/* 8135E028 | B1 01 00 08 */	sth r8, 0x8(r1)
/* 8135E02C | 7C B1 2B 78 */	mr r17, r5
/* 8135E030 | 54 03 08 3C */	slwi r3, r0, 1
/* 8135E034 | 7C 04 02 14 */	add r0, r4, r0
/* 8135E038 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8135E03C | 7C D2 33 78 */	mr r18, r6
/* 8135E040 | 7C F3 3B 78 */	mr r19, r7
/* 8135E044 | 7D 54 53 78 */	mr r20, r10
/* 8135E048 | 7F C4 1A 14 */	add r30, r4, r3
/* 8135E04C | 7F E8 2A 14 */	add r31, r8, r5
/* 8135E050 | 3A C0 00 00 */	li r22, 0x0
/* 8135E054 | 48 00 01 D4 */	b .L_8135E228
.L_8135E058:
/* 8135E058 | 8A F3 00 00 */	lbz r23, 0x0(r19)
/* 8135E05C | 7D E3 7B 78 */	mr r3, r15
/* 8135E060 | 8B 31 00 00 */	lbz r25, 0x0(r17)
/* 8135E064 | 56 E0 08 3C */	slwi r0, r23, 1
/* 8135E068 | 8B 12 00 00 */	lbz r24, 0x0(r18)
/* 8135E06C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8135E070 | 7C 14 02 AE */	lhax r0, r20, r0
/* 8135E074 | 7C 99 02 14 */	add r4, r25, r0
/* 8135E078 | 4B FF FD 39 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E07C | 56 E4 15 BA */	clrlslwi r4, r23, 24, 2
/* 8135E080 | 57 00 15 BA */	clrlslwi r0, r24, 24, 2
/* 8135E084 | 7F B4 22 14 */	add r29, r20, r4
/* 8135E088 | 7C 6E 1B 78 */	mr r14, r3
/* 8135E08C | 7F 94 02 14 */	add r28, r20, r0
/* 8135E090 | 80 1D 06 00 */	lwz r0, 0x600(r29)
/* 8135E094 | 80 9C 02 00 */	lwz r4, 0x200(r28)
/* 8135E098 | 7D E3 7B 78 */	mr r3, r15
/* 8135E09C | 7C 04 02 14 */	add r0, r4, r0
/* 8135E0A0 | 7C 00 86 70 */	srawi r0, r0, 16
/* 8135E0A4 | 7C 99 02 14 */	add r4, r25, r0
/* 8135E0A8 | 4B FF FD 09 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E0AC | 57 00 0D FC */	clrlslwi r0, r24, 24, 1
/* 8135E0B0 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8135E0B4 | 7F 74 02 14 */	add r27, r20, r0
/* 8135E0B8 | 7D E3 7B 78 */	mr r3, r15
/* 8135E0BC | A8 1B 0A 00 */	lha r0, 0xa00(r27)
/* 8135E0C0 | 7C 99 02 14 */	add r4, r25, r0
/* 8135E0C4 | 4B FF FC ED */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E0C8 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8135E0CC | 40 82 00 38 */	bne .L_8135E104
/* 8135E0D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135E0D4 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 8135E0D8 | 56 C5 18 34 */	extlwi r5, r22, 27, 3
/* 8135E0DC | 56 C4 0F 7C */	clrlslwi r4, r22, 30, 1
/* 8135E0E0 | 54 00 1D 74 */	rlwinm r0, r0, 3, 21, 26
/* 8135E0E4 | 51 C0 44 28 */	rlwimi r0, r14, 8, 16, 20
/* 8135E0E8 | 7C 85 22 14 */	add r4, r5, r4
/* 8135E0EC | 7C 63 03 78 */	or r3, r3, r0
/* 8135E0F0 | 7C 60 46 70 */	srawi r0, r3, 8
/* 8135E0F4 | 7F 50 22 14 */	add r26, r16, r4
/* 8135E0F8 | 7C 10 21 AE */	stbx r0, r16, r4
/* 8135E0FC | 98 7A 00 01 */	stb r3, 0x1(r26)
/* 8135E100 | 48 00 00 58 */	b .L_8135E158
.L_8135E104:
/* 8135E104 | 2C 15 00 01 */	cmpwi r21, 0x1
/* 8135E108 | 40 82 00 30 */	bne .L_8135E138
/* 8135E10C | 56 C4 20 32 */	extlwi r4, r22, 26, 4
/* 8135E110 | 56 C0 0F 7C */	clrlslwi r0, r22, 30, 1
/* 8135E114 | 7C 04 02 14 */	add r0, r4, r0
/* 8135E118 | 7F 50 02 14 */	add r26, r16, r0
/* 8135E11C | 38 00 00 FF */	li r0, 0xff
/* 8135E120 | 98 1A 00 00 */	stb r0, 0x0(r26)
/* 8135E124 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135E128 | 99 DA 00 01 */	stb r14, 0x1(r26)
/* 8135E12C | 98 1A 00 20 */	stb r0, 0x20(r26)
/* 8135E130 | 98 7A 00 21 */	stb r3, 0x21(r26)
/* 8135E134 | 48 00 00 24 */	b .L_8135E158
.L_8135E138:
/* 8135E138 | 56 C3 07 7E */	clrlwi r3, r22, 29
/* 8135E13C | 56 C0 10 34 */	extlwi r0, r22, 27, 2
/* 8135E140 | 7C 03 02 14 */	add r0, r3, r0
/* 8135E144 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8135E148 | 7F 30 01 AE */	stbx r25, r16, r0
/* 8135E14C | 7F 50 02 14 */	add r26, r16, r0
/* 8135E150 | 7F 03 01 AE */	stbx r24, r3, r0
/* 8135E154 | 7E FE 01 AE */	stbx r23, r30, r0
.L_8135E158:
/* 8135E158 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8135E15C | 7D E3 7B 78 */	mr r3, r15
/* 8135E160 | 89 DF 00 00 */	lbz r14, 0x0(r31)
/* 8135E164 | 7C 14 02 AE */	lhax r0, r20, r0
/* 8135E168 | 7C 8E 02 14 */	add r4, r14, r0
/* 8135E16C | 4B FF FC 45 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E170 | 80 9C 02 00 */	lwz r4, 0x200(r28)
/* 8135E174 | 7C 79 1B 78 */	mr r25, r3
/* 8135E178 | 80 1D 06 00 */	lwz r0, 0x600(r29)
/* 8135E17C | 7D E3 7B 78 */	mr r3, r15
/* 8135E180 | 7C 04 02 14 */	add r0, r4, r0
/* 8135E184 | 7C 00 86 70 */	srawi r0, r0, 16
/* 8135E188 | 7C 8E 02 14 */	add r4, r14, r0
/* 8135E18C | 4B FF FC 25 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E190 | A8 1B 0A 00 */	lha r0, 0xa00(r27)
/* 8135E194 | 7C 7B 1B 78 */	mr r27, r3
/* 8135E198 | 7D E3 7B 78 */	mr r3, r15
/* 8135E19C | 7C 8E 02 14 */	add r4, r14, r0
/* 8135E1A0 | 4B FF FC 11 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E1A4 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 8135E1A8 | 40 82 00 24 */	bne .L_8135E1CC
/* 8135E1AC | 57 60 1D 74 */	rlwinm r0, r27, 3, 21, 26
/* 8135E1B0 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 8135E1B4 | 53 20 44 28 */	rlwimi r0, r25, 8, 16, 20
/* 8135E1B8 | 7C 63 03 78 */	or r3, r3, r0
/* 8135E1BC | 7C 60 46 70 */	srawi r0, r3, 8
/* 8135E1C0 | 98 1A 00 08 */	stb r0, 0x8(r26)
/* 8135E1C4 | 98 7A 00 09 */	stb r3, 0x9(r26)
/* 8135E1C8 | 48 00 00 4C */	b .L_8135E214
.L_8135E1CC:
/* 8135E1CC | 2C 15 00 01 */	cmpwi r21, 0x1
/* 8135E1D0 | 40 82 00 1C */	bne .L_8135E1EC
/* 8135E1D4 | 38 00 00 FF */	li r0, 0xff
/* 8135E1D8 | 98 1A 00 08 */	stb r0, 0x8(r26)
/* 8135E1DC | 9B 3A 00 09 */	stb r25, 0x9(r26)
/* 8135E1E0 | 9B 7A 00 28 */	stb r27, 0x28(r26)
/* 8135E1E4 | 98 7A 00 29 */	stb r3, 0x29(r26)
/* 8135E1E8 | 48 00 00 2C */	b .L_8135E214
.L_8135E1EC:
/* 8135E1EC | 56 C3 07 7E */	clrlwi r3, r22, 29
/* 8135E1F0 | 56 C0 10 34 */	extlwi r0, r22, 27, 2
/* 8135E1F4 | 7C A3 02 14 */	add r5, r3, r0
/* 8135E1F8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8135E1FC | 7C 70 2A 14 */	add r3, r16, r5
/* 8135E200 | 99 C3 00 08 */	stb r14, 0x8(r3)
/* 8135E204 | 7C 80 2A 14 */	add r4, r0, r5
/* 8135E208 | 7C 7E 2A 14 */	add r3, r30, r5
/* 8135E20C | 9B 04 00 08 */	stb r24, 0x8(r4)
/* 8135E210 | 9A E3 00 08 */	stb r23, 0x8(r3)
.L_8135E214:
/* 8135E214 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 8135E218 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8135E21C | 3A 52 00 01 */	addi r18, r18, 0x1
/* 8135E220 | 3A 73 00 01 */	addi r19, r19, 0x1
/* 8135E224 | 3A D6 00 01 */	addi r22, r22, 0x1
.L_8135E228:
/* 8135E228 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8135E22C | 7C 16 00 00 */	cmpw r22, r0
/* 8135E230 | 41 80 FE 28 */	blt .L_8135E058
/* 8135E234 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8135E238 | 48 29 B2 A1 */	bl _restgpr_14
/* 8135E23C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8135E240 | 7C 08 03 A6 */	mtlr r0
/* 8135E244 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8135E248 | 4E 80 00 20 */	blr
.endfn LineDeconv12__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli

# .text:0x2D10 | 0x8135E24C | size: 0x3D0
# CArGBAOdh::LineDeconv22(unsigned char*, unsigned char*, unsigned char*, unsigned char*, unsigned short, unsigned short, const SArDeconvTbl*, int)
.fn LineDeconv22__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli, global
/* 8135E24C | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8135E250 | 7C 08 02 A6 */	mflr r0
/* 8135E254 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8135E258 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8135E25C | 48 29 B2 31 */	bl _savegpr_14
/* 8135E260 | 7D 28 49 D6 */	mullw r9, r8, r9
/* 8135E264 | 83 81 00 78 */	lwz r28, 0x78(r1)
/* 8135E268 | B1 01 00 08 */	sth r8, 0x8(r1)
/* 8135E26C | 7C 77 1B 78 */	mr r23, r3
/* 8135E270 | 7C 98 23 78 */	mr r24, r4
/* 8135E274 | 7C B9 2B 78 */	mr r25, r5
/* 8135E278 | 55 20 08 3C */	slwi r0, r9, 1
/* 8135E27C | 7C DA 33 78 */	mr r26, r6
/* 8135E280 | 7C EE 3B 78 */	mr r14, r7
/* 8135E284 | 7D 5B 53 78 */	mr r27, r10
/* 8135E288 | 7E A4 4A 14 */	add r21, r4, r9
/* 8135E28C | 7E 84 02 14 */	add r20, r4, r0
/* 8135E290 | 3B A0 00 00 */	li r29, 0x0
/* 8135E294 | 48 00 03 64 */	b .L_8135E5F8
.L_8135E298:
/* 8135E298 | 8B CE 00 00 */	lbz r30, 0x0(r14)
/* 8135E29C | 7E E3 BB 78 */	mr r3, r23
/* 8135E2A0 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8135E2A4 | 57 D6 08 3C */	slwi r22, r30, 1
/* 8135E2A8 | 89 F9 00 00 */	lbz r15, 0x0(r25)
/* 8135E2AC | 7C 19 02 14 */	add r0, r25, r0
/* 8135E2B0 | 8B FA 00 00 */	lbz r31, 0x0(r26)
/* 8135E2B4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8135E2B8 | 7C 1B B2 AE */	lhax r0, r27, r22
/* 8135E2BC | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E2C0 | 4B FF FA F1 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E2C4 | 57 C4 15 BA */	clrlslwi r4, r30, 24, 2
/* 8135E2C8 | 57 E0 15 BA */	clrlslwi r0, r31, 24, 2
/* 8135E2CC | 7E 7B 22 14 */	add r19, r27, r4
/* 8135E2D0 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8135E2D4 | 7E 5B 02 14 */	add r18, r27, r0
/* 8135E2D8 | 80 13 06 00 */	lwz r0, 0x600(r19)
/* 8135E2DC | 80 92 02 00 */	lwz r4, 0x200(r18)
/* 8135E2E0 | 7E E3 BB 78 */	mr r3, r23
/* 8135E2E4 | 7C 04 02 14 */	add r0, r4, r0
/* 8135E2E8 | 7C 00 86 70 */	srawi r0, r0, 16
/* 8135E2EC | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E2F0 | 4B FF FA C1 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E2F4 | 57 E0 0D FC */	clrlslwi r0, r31, 24, 1
/* 8135E2F8 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8135E2FC | 7E 3B 02 14 */	add r17, r27, r0
/* 8135E300 | 7E E3 BB 78 */	mr r3, r23
/* 8135E304 | A8 11 0A 00 */	lha r0, 0xa00(r17)
/* 8135E308 | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E30C | 4B FF FA A5 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E310 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8135E314 | 40 82 00 3C */	bne .L_8135E350
/* 8135E318 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135E31C | 57 A6 18 34 */	extlwi r6, r29, 27, 3
/* 8135E320 | 57 A5 0F 7C */	clrlslwi r5, r29, 30, 1
/* 8135E324 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 8135E328 | 54 04 1D 74 */	rlwinm r4, r0, 3, 21, 26
/* 8135E32C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8135E330 | 50 04 44 28 */	rlwimi r4, r0, 8, 16, 20
/* 8135E334 | 7C 06 2A 14 */	add r0, r6, r5
/* 8135E338 | 7C 63 23 78 */	or r3, r3, r4
/* 8135E33C | 7E 18 02 14 */	add r16, r24, r0
/* 8135E340 | 7C 60 46 70 */	srawi r0, r3, 8
/* 8135E344 | 98 10 00 00 */	stb r0, 0x0(r16)
/* 8135E348 | 98 70 00 01 */	stb r3, 0x1(r16)
/* 8135E34C | 48 00 00 58 */	b .L_8135E3A4
.L_8135E350:
/* 8135E350 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 8135E354 | 40 82 00 34 */	bne .L_8135E388
/* 8135E358 | 57 A4 20 32 */	extlwi r4, r29, 26, 4
/* 8135E35C | 57 A0 0F 7C */	clrlslwi r0, r29, 30, 1
/* 8135E360 | 7C 04 02 14 */	add r0, r4, r0
/* 8135E364 | 7E 18 02 14 */	add r16, r24, r0
/* 8135E368 | 38 00 00 FF */	li r0, 0xff
/* 8135E36C | 98 10 00 00 */	stb r0, 0x0(r16)
/* 8135E370 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8135E374 | 98 10 00 01 */	stb r0, 0x1(r16)
/* 8135E378 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135E37C | 98 10 00 20 */	stb r0, 0x20(r16)
/* 8135E380 | 98 70 00 21 */	stb r3, 0x21(r16)
/* 8135E384 | 48 00 00 20 */	b .L_8135E3A4
.L_8135E388:
/* 8135E388 | 57 A3 07 7E */	clrlwi r3, r29, 29
/* 8135E38C | 57 A0 10 34 */	extlwi r0, r29, 27, 2
/* 8135E390 | 7C 03 02 14 */	add r0, r3, r0
/* 8135E394 | 7D F8 01 AE */	stbx r15, r24, r0
/* 8135E398 | 7E 18 02 14 */	add r16, r24, r0
/* 8135E39C | 7F F5 01 AE */	stbx r31, r21, r0
/* 8135E3A0 | 7F D4 01 AE */	stbx r30, r20, r0
.L_8135E3A4:
/* 8135E3A4 | 89 F9 00 01 */	lbz r15, 0x1(r25)
/* 8135E3A8 | 7E E3 BB 78 */	mr r3, r23
/* 8135E3AC | 7C 1B B2 AE */	lhax r0, r27, r22
/* 8135E3B0 | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E3B4 | 4B FF F9 FD */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E3B8 | 80 92 02 00 */	lwz r4, 0x200(r18)
/* 8135E3BC | 80 13 06 00 */	lwz r0, 0x600(r19)
/* 8135E3C0 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8135E3C4 | 7E E3 BB 78 */	mr r3, r23
/* 8135E3C8 | 7C 04 02 14 */	add r0, r4, r0
/* 8135E3CC | 7C 00 86 70 */	srawi r0, r0, 16
/* 8135E3D0 | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E3D4 | 4B FF F9 DD */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E3D8 | A8 11 0A 00 */	lha r0, 0xa00(r17)
/* 8135E3DC | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 8135E3E0 | 7E E3 BB 78 */	mr r3, r23
/* 8135E3E4 | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E3E8 | 4B FF F9 C9 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E3EC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8135E3F0 | 40 82 00 2C */	bne .L_8135E41C
/* 8135E3F4 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8135E3F8 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 8135E3FC | 54 04 1D 74 */	rlwinm r4, r0, 3, 21, 26
/* 8135E400 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 8135E404 | 50 04 44 28 */	rlwimi r4, r0, 8, 16, 20
/* 8135E408 | 7C 63 23 78 */	or r3, r3, r4
/* 8135E40C | 7C 60 46 70 */	srawi r0, r3, 8
/* 8135E410 | 98 10 00 02 */	stb r0, 0x2(r16)
/* 8135E414 | 98 70 00 03 */	stb r3, 0x3(r16)
/* 8135E418 | 48 00 00 50 */	b .L_8135E468
.L_8135E41C:
/* 8135E41C | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 8135E420 | 40 82 00 24 */	bne .L_8135E444
/* 8135E424 | 38 00 00 FF */	li r0, 0xff
/* 8135E428 | 98 10 00 02 */	stb r0, 0x2(r16)
/* 8135E42C | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 8135E430 | 98 10 00 03 */	stb r0, 0x3(r16)
/* 8135E434 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8135E438 | 98 10 00 22 */	stb r0, 0x22(r16)
/* 8135E43C | 98 70 00 23 */	stb r3, 0x23(r16)
/* 8135E440 | 48 00 00 28 */	b .L_8135E468
.L_8135E444:
/* 8135E444 | 57 A3 07 7E */	clrlwi r3, r29, 29
/* 8135E448 | 57 A0 10 34 */	extlwi r0, r29, 27, 2
/* 8135E44C | 7C 03 02 14 */	add r0, r3, r0
/* 8135E450 | 7E 18 02 14 */	add r16, r24, r0
/* 8135E454 | 99 F0 00 01 */	stb r15, 0x1(r16)
/* 8135E458 | 7C 95 02 14 */	add r4, r21, r0
/* 8135E45C | 7C 74 02 14 */	add r3, r20, r0
/* 8135E460 | 9B E4 00 01 */	stb r31, 0x1(r4)
/* 8135E464 | 9B C3 00 01 */	stb r30, 0x1(r3)
.L_8135E468:
/* 8135E468 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8135E46C | 3B 39 00 02 */	addi r25, r25, 0x2
/* 8135E470 | 7C 1B B2 AE */	lhax r0, r27, r22
/* 8135E474 | 89 E3 00 00 */	lbz r15, 0x0(r3)
/* 8135E478 | 7E E3 BB 78 */	mr r3, r23
/* 8135E47C | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E480 | 4B FF F9 31 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E484 | 80 92 02 00 */	lwz r4, 0x200(r18)
/* 8135E488 | 80 13 06 00 */	lwz r0, 0x600(r19)
/* 8135E48C | 90 61 00 20 */	stw r3, 0x20(r1)
/* 8135E490 | 7E E3 BB 78 */	mr r3, r23
/* 8135E494 | 7C 04 02 14 */	add r0, r4, r0
/* 8135E498 | 7C 00 86 70 */	srawi r0, r0, 16
/* 8135E49C | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E4A0 | 4B FF F9 11 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E4A4 | A8 11 0A 00 */	lha r0, 0xa00(r17)
/* 8135E4A8 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 8135E4AC | 7E E3 BB 78 */	mr r3, r23
/* 8135E4B0 | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E4B4 | 4B FF F8 FD */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E4B8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8135E4BC | 40 82 00 2C */	bne .L_8135E4E8
/* 8135E4C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135E4C4 | 7C 63 1E 70 */	srawi r3, r3, 3
/* 8135E4C8 | 54 04 1D 74 */	rlwinm r4, r0, 3, 21, 26
/* 8135E4CC | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8135E4D0 | 50 04 44 28 */	rlwimi r4, r0, 8, 16, 20
/* 8135E4D4 | 7C 63 23 78 */	or r3, r3, r4
/* 8135E4D8 | 7C 60 46 70 */	srawi r0, r3, 8
/* 8135E4DC | 98 10 00 08 */	stb r0, 0x8(r16)
/* 8135E4E0 | 98 70 00 09 */	stb r3, 0x9(r16)
/* 8135E4E4 | 48 00 00 50 */	b .L_8135E534
.L_8135E4E8:
/* 8135E4E8 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 8135E4EC | 40 82 00 24 */	bne .L_8135E510
/* 8135E4F0 | 38 00 00 FF */	li r0, 0xff
/* 8135E4F4 | 98 10 00 08 */	stb r0, 0x8(r16)
/* 8135E4F8 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8135E4FC | 98 10 00 09 */	stb r0, 0x9(r16)
/* 8135E500 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135E504 | 98 10 00 28 */	stb r0, 0x28(r16)
/* 8135E508 | 98 70 00 29 */	stb r3, 0x29(r16)
/* 8135E50C | 48 00 00 28 */	b .L_8135E534
.L_8135E510:
/* 8135E510 | 57 A3 07 7E */	clrlwi r3, r29, 29
/* 8135E514 | 57 A0 10 34 */	extlwi r0, r29, 27, 2
/* 8135E518 | 7C 03 02 14 */	add r0, r3, r0
/* 8135E51C | 7E 18 02 14 */	add r16, r24, r0
/* 8135E520 | 99 F0 00 08 */	stb r15, 0x8(r16)
/* 8135E524 | 7C 95 02 14 */	add r4, r21, r0
/* 8135E528 | 7C 74 02 14 */	add r3, r20, r0
/* 8135E52C | 9B E4 00 08 */	stb r31, 0x8(r4)
/* 8135E530 | 9B C3 00 08 */	stb r30, 0x8(r3)
.L_8135E534:
/* 8135E534 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8135E538 | 7C 1B B2 AE */	lhax r0, r27, r22
/* 8135E53C | 89 E3 00 01 */	lbz r15, 0x1(r3)
/* 8135E540 | 7E E3 BB 78 */	mr r3, r23
/* 8135E544 | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E548 | 4B FF F8 69 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E54C | 80 92 02 00 */	lwz r4, 0x200(r18)
/* 8135E550 | 7C 72 1B 78 */	mr r18, r3
/* 8135E554 | 80 13 06 00 */	lwz r0, 0x600(r19)
/* 8135E558 | 7E E3 BB 78 */	mr r3, r23
/* 8135E55C | 7C 04 02 14 */	add r0, r4, r0
/* 8135E560 | 7C 00 86 70 */	srawi r0, r0, 16
/* 8135E564 | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E568 | 4B FF F8 49 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E56C | A8 11 0A 00 */	lha r0, 0xa00(r17)
/* 8135E570 | 7C 71 1B 78 */	mr r17, r3
/* 8135E574 | 7E E3 BB 78 */	mr r3, r23
/* 8135E578 | 7C 8F 02 14 */	add r4, r15, r0
/* 8135E57C | 4B FF F8 35 */	bl ScaleLimit__9CArGBAOdhFl
/* 8135E580 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8135E584 | 40 82 00 24 */	bne .L_8135E5A8
/* 8135E588 | 56 20 1D 74 */	rlwinm r0, r17, 3, 21, 26
/* 8135E58C | 7C 63 1E 70 */	srawi r3, r3, 3
/* 8135E590 | 52 40 44 28 */	rlwimi r0, r18, 8, 16, 20
/* 8135E594 | 7C 63 03 78 */	or r3, r3, r0
/* 8135E598 | 7C 60 46 70 */	srawi r0, r3, 8
/* 8135E59C | 98 10 00 0A */	stb r0, 0xa(r16)
/* 8135E5A0 | 98 70 00 0B */	stb r3, 0xb(r16)
/* 8135E5A4 | 48 00 00 48 */	b .L_8135E5EC
.L_8135E5A8:
/* 8135E5A8 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 8135E5AC | 40 82 00 1C */	bne .L_8135E5C8
/* 8135E5B0 | 38 00 00 FF */	li r0, 0xff
/* 8135E5B4 | 98 10 00 0A */	stb r0, 0xa(r16)
/* 8135E5B8 | 9A 50 00 0B */	stb r18, 0xb(r16)
/* 8135E5BC | 9A 30 00 2A */	stb r17, 0x2a(r16)
/* 8135E5C0 | 98 70 00 2B */	stb r3, 0x2b(r16)
/* 8135E5C4 | 48 00 00 28 */	b .L_8135E5EC
.L_8135E5C8:
/* 8135E5C8 | 57 A3 07 7E */	clrlwi r3, r29, 29
/* 8135E5CC | 57 A0 10 34 */	extlwi r0, r29, 27, 2
/* 8135E5D0 | 7C 03 02 14 */	add r0, r3, r0
/* 8135E5D4 | 7C 78 02 14 */	add r3, r24, r0
/* 8135E5D8 | 99 E3 00 09 */	stb r15, 0x9(r3)
/* 8135E5DC | 7C 95 02 14 */	add r4, r21, r0
/* 8135E5E0 | 7C 74 02 14 */	add r3, r20, r0
/* 8135E5E4 | 9B E4 00 09 */	stb r31, 0x9(r4)
/* 8135E5E8 | 9B C3 00 09 */	stb r30, 0x9(r3)
.L_8135E5EC:
/* 8135E5EC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8135E5F0 | 39 CE 00 01 */	addi r14, r14, 0x1
/* 8135E5F4 | 3B BD 00 02 */	addi r29, r29, 0x2
.L_8135E5F8:
/* 8135E5F8 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 8135E5FC | 7C 1D 00 00 */	cmpw r29, r0
/* 8135E600 | 41 80 FC 98 */	blt .L_8135E298
/* 8135E604 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8135E608 | 48 29 AE D1 */	bl _restgpr_14
/* 8135E60C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8135E610 | 7C 08 03 A6 */	mtlr r0
/* 8135E614 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8135E618 | 4E 80 00 20 */	blr
.endfn LineDeconv22__9CArGBAOdhFPUcPUcPUcPUcUsUsPC12SArDeconvTbli

# .text:0x30E0 | 0x8135E61C | size: 0x4C8
# CArGBAOdh::huffmanDecoder(unsigned long*, SArCDJ_HuffmanRequest*, unsigned short**, int, unsigned long)
.fn huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl, global
/* 8135E61C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8135E620 | 7C 08 02 A6 */	mflr r0
/* 8135E624 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8135E628 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135E62C | 48 29 AE 85 */	bl _savegpr_23
/* 8135E630 | 83 85 00 20 */	lwz r28, 0x20(r5)
/* 8135E634 | 80 65 00 1C */	lwz r3, 0x1c(r5)
/* 8135E638 | 38 1C 00 04 */	addi r0, r28, 0x4
/* 8135E63C | 81 85 00 10 */	lwz r12, 0x10(r5)
/* 8135E640 | 7C 00 40 40 */	cmplw r0, r8
/* 8135E644 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 8135E648 | 40 81 00 10 */	ble .L_8135E658
/* 8135E64C | 3C 60 80 00 */	lis r3, 0x8000
/* 8135E650 | 38 63 00 03 */	addi r3, r3, 0x3
/* 8135E654 | 48 00 04 78 */	b .L_8135EACC
.L_8135E658:
/* 8135E658 | 88 0C 00 01 */	lbz r0, 0x1(r12)
/* 8135E65C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8135E660 | 89 4C 00 02 */	lbz r10, 0x2(r12)
/* 8135E664 | 39 60 00 0B */	li r11, 0xb
/* 8135E668 | 89 2C 00 03 */	lbz r9, 0x3(r12)
/* 8135E66C | 54 00 80 1E */	slwi r0, r0, 16
/* 8135E670 | 88 6C 00 00 */	lbz r3, 0x0(r12)
/* 8135E674 | 51 49 44 2E */	rlwimi r9, r10, 8, 16, 23
/* 8135E678 | 50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 8135E67C | 7D 20 03 78 */	or r0, r9, r0
/* 8135E680 | 7C 00 F8 30 */	slw r0, r0, r31
/* 8135E684 | 40 82 00 08 */	bne .L_8135E68C
/* 8135E688 | 39 60 00 09 */	li r11, 0x9
.L_8135E68C:
/* 8135E68C | 38 60 00 01 */	li r3, 0x1
/* 8135E690 | 3A E0 00 00 */	li r23, 0x0
/* 8135E694 | 7D 69 03 A6 */	mtctr r11
/* 8135E698 | 2C 0B 00 01 */	cmpwi r11, 0x1
/* 8135E69C | 41 80 00 70 */	blt .L_8135E70C
.L_8135E6A0:
/* 8135E6A0 | 21 23 00 20 */	subfic r9, r3, 0x20
/* 8135E6A4 | 83 06 00 00 */	lwz r24, 0x0(r6)
/* 8135E6A8 | 7C 09 4C 30 */	srw r9, r0, r9
/* 8135E6AC | 56 EA 08 3C */	slwi r10, r23, 1
/* 8135E6B0 | 55 29 07 FF */	clrlwi. r9, r9, 31
/* 8135E6B4 | 7D 38 52 2E */	lhzx r9, r24, r10
/* 8135E6B8 | 55 2A 04 BE */	clrlwi r10, r9, 18
/* 8135E6BC | 40 82 00 24 */	bne .L_8135E6E0
/* 8135E6C0 | 55 29 04 21 */	rlwinm. r9, r9, 0, 16, 16
/* 8135E6C4 | 41 82 00 14 */	beq .L_8135E6D8
/* 8135E6C8 | 7D 37 52 14 */	add r9, r23, r10
/* 8135E6CC | 55 29 08 3C */	slwi r9, r9, 1
/* 8135E6D0 | 7F B8 4A 2E */	lhzx r29, r24, r9
/* 8135E6D4 | 48 00 00 38 */	b .L_8135E70C
.L_8135E6D8:
/* 8135E6D8 | 7E F7 52 14 */	add r23, r23, r10
/* 8135E6DC | 48 00 00 28 */	b .L_8135E704
.L_8135E6E0:
/* 8135E6E0 | 55 29 04 63 */	rlwinm. r9, r9, 0, 17, 17
/* 8135E6E4 | 41 82 00 18 */	beq .L_8135E6FC
/* 8135E6E8 | 7D 37 52 14 */	add r9, r23, r10
/* 8135E6EC | 39 29 00 01 */	addi r9, r9, 0x1
/* 8135E6F0 | 55 29 08 3C */	slwi r9, r9, 1
/* 8135E6F4 | 7F B8 4A 2E */	lhzx r29, r24, r9
/* 8135E6F8 | 48 00 00 14 */	b .L_8135E70C
.L_8135E6FC:
/* 8135E6FC | 7D 37 52 14 */	add r9, r23, r10
/* 8135E700 | 3A E9 00 01 */	addi r23, r9, 0x1
.L_8135E704:
/* 8135E704 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8135E708 | 42 00 FF 98 */	bdnz .L_8135E6A0
.L_8135E70C:
/* 8135E70C | 7C 03 58 00 */	cmpw r3, r11
/* 8135E710 | 40 81 00 10 */	ble .L_8135E720
/* 8135E714 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135E718 | 38 63 00 03 */	addi r3, r3, 0x3
/* 8135E71C | 48 00 03 B0 */	b .L_8135EACC
.L_8135E720:
/* 8135E720 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8135E724 | 40 81 00 3C */	ble .L_8135E760
/* 8135E728 | 21 43 00 20 */	subfic r10, r3, 0x20
/* 8135E72C | 3B 00 00 01 */	li r24, 0x1
/* 8135E730 | 7F 0B E8 30 */	slw r11, r24, r29
/* 8135E734 | 39 3D FF FF */	subi r9, r29, 0x1
/* 8135E738 | 7D 5D 50 50 */	subf r10, r29, r10
/* 8135E73C | 3A EB FF FF */	subi r23, r11, 0x1
/* 8135E740 | 7F 09 48 30 */	slw r9, r24, r9
/* 8135E744 | 7C 00 54 30 */	srw r0, r0, r10
/* 8135E748 | 7E EB 00 38 */	and r11, r23, r0
/* 8135E74C | 7D 60 48 39 */	and. r0, r11, r9
/* 8135E750 | 40 82 00 14 */	bne .L_8135E764
/* 8135E754 | 38 0B 00 01 */	addi r0, r11, 0x1
/* 8135E758 | 7C 0B BB 38 */	orc r11, r0, r23
/* 8135E75C | 48 00 00 08 */	b .L_8135E764
.L_8135E760:
/* 8135E760 | 39 60 00 00 */	li r11, 0x0
.L_8135E764:
/* 8135E764 | 54 EA 08 3A */	extlwi r10, r7, 30, 1
/* 8135E768 | 7C 03 EA 14 */	add r0, r3, r29
/* 8135E76C | 7C 65 50 2E */	lwzx r3, r5, r10
/* 8135E770 | 7F FF 02 14 */	add r31, r31, r0
/* 8135E774 | 57 E0 E8 FE */	srwi r0, r31, 3
/* 8135E778 | 3B C0 00 01 */	li r30, 0x1
/* 8135E77C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8135E780 | 7D 2B 1A 14 */	add r9, r11, r3
/* 8135E784 | 91 24 00 00 */	stw r9, 0x0(r4)
/* 8135E788 | 7C 65 50 2E */	lwzx r3, r5, r10
/* 8135E78C | 91 23 00 00 */	stw r9, 0x0(r3)
/* 8135E790 | 7C 09 03 A6 */	mtctr r0
/* 8135E794 | 28 1F 00 08 */	cmplwi r31, 0x8
/* 8135E798 | 41 80 00 14 */	blt .L_8135E7AC
.L_8135E79C:
/* 8135E79C | 39 8C 00 01 */	addi r12, r12, 0x1
/* 8135E7A0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8135E7A4 | 3B FF FF F8 */	subi r31, r31, 0x8
/* 8135E7A8 | 42 00 FF F4 */	bdnz .L_8135E79C
.L_8135E7AC:
/* 8135E7AC | 38 00 00 00 */	li r0, 0x0
/* 8135E7B0 | 38 60 00 01 */	li r3, 0x1
/* 8135E7B4 | 3B 60 00 06 */	li r27, 0x6
.L_8135E7B8:
/* 8135E7B8 | 39 3C 00 04 */	addi r9, r28, 0x4
/* 8135E7BC | 7C 09 40 40 */	cmplw r9, r8
/* 8135E7C0 | 40 81 00 10 */	ble .L_8135E7D0
/* 8135E7C4 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135E7C8 | 38 63 00 03 */	addi r3, r3, 0x3
/* 8135E7CC | 48 00 03 00 */	b .L_8135EACC
.L_8135E7D0:
/* 8135E7D0 | 89 2C 00 01 */	lbz r9, 0x1(r12)
/* 8135E7D4 | 39 40 00 01 */	li r10, 0x1
/* 8135E7D8 | 8B 0C 00 02 */	lbz r24, 0x2(r12)
/* 8135E7DC | 39 60 00 00 */	li r11, 0x0
/* 8135E7E0 | 8B 4C 00 03 */	lbz r26, 0x3(r12)
/* 8135E7E4 | 55 29 80 1E */	slwi r9, r9, 16
/* 8135E7E8 | 8B 2C 00 00 */	lbz r25, 0x0(r12)
/* 8135E7EC | 53 1A 44 2E */	rlwimi r26, r24, 8, 16, 23
/* 8135E7F0 | 53 29 C0 0E */	rlwimi r9, r25, 24, 0, 7
/* 8135E7F4 | 7F 49 4B 78 */	or r9, r26, r9
/* 8135E7F8 | 7D 29 F8 30 */	slw r9, r9, r31
/* 8135E7FC | 7F 69 03 A6 */	mtctr r27
.L_8135E800:
/* 8135E800 | 23 2A 00 20 */	subfic r25, r10, 0x20
/* 8135E804 | 83 06 00 04 */	lwz r24, 0x4(r6)
/* 8135E808 | 7D 39 CC 30 */	srw r25, r9, r25
/* 8135E80C | 55 7A 08 3C */	slwi r26, r11, 1
/* 8135E810 | 57 39 07 FF */	clrlwi. r25, r25, 31
/* 8135E814 | 7F 38 D2 2E */	lhzx r25, r24, r26
/* 8135E818 | 57 37 04 BE */	clrlwi r23, r25, 18
/* 8135E81C | 40 82 00 24 */	bne .L_8135E840
/* 8135E820 | 57 39 04 21 */	rlwinm. r25, r25, 0, 16, 16
/* 8135E824 | 41 82 00 14 */	beq .L_8135E838
/* 8135E828 | 7D 6B BA 14 */	add r11, r11, r23
/* 8135E82C | 55 6B 08 3C */	slwi r11, r11, 1
/* 8135E830 | 7F B8 5A 2E */	lhzx r29, r24, r11
/* 8135E834 | 48 00 00 38 */	b .L_8135E86C
.L_8135E838:
/* 8135E838 | 7D 6B BA 14 */	add r11, r11, r23
/* 8135E83C | 48 00 00 28 */	b .L_8135E864
.L_8135E840:
/* 8135E840 | 57 39 04 63 */	rlwinm. r25, r25, 0, 17, 17
/* 8135E844 | 41 82 00 18 */	beq .L_8135E85C
/* 8135E848 | 7D 6B BA 14 */	add r11, r11, r23
/* 8135E84C | 55 6B 08 3C */	slwi r11, r11, 1
/* 8135E850 | 7D 78 5A 14 */	add r11, r24, r11
/* 8135E854 | A3 AB 00 02 */	lhz r29, 0x2(r11)
/* 8135E858 | 48 00 00 14 */	b .L_8135E86C
.L_8135E85C:
/* 8135E85C | 7D 6B BA 14 */	add r11, r11, r23
/* 8135E860 | 39 6B 00 01 */	addi r11, r11, 0x1
.L_8135E864:
/* 8135E864 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 8135E868 | 42 00 FF 98 */	bdnz .L_8135E800
.L_8135E86C:
/* 8135E86C | 2C 0A 00 06 */	cmpwi r10, 0x6
/* 8135E870 | 40 81 00 10 */	ble .L_8135E880
/* 8135E874 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135E878 | 38 63 00 03 */	addi r3, r3, 0x3
/* 8135E87C | 48 00 02 50 */	b .L_8135EACC
.L_8135E880:
/* 8135E880 | 2C 1D 00 07 */	cmpwi r29, 0x7
/* 8135E884 | 40 82 00 2C */	bne .L_8135E8B0
/* 8135E888 | 7F FF 52 14 */	add r31, r31, r10
/* 8135E88C | 57 E0 E8 FE */	srwi r0, r31, 3
/* 8135E890 | 7C 09 03 A6 */	mtctr r0
/* 8135E894 | 28 1F 00 08 */	cmplwi r31, 0x8
/* 8135E898 | 41 80 01 FC */	blt .L_8135EA94
.L_8135E89C:
/* 8135E89C | 39 8C 00 01 */	addi r12, r12, 0x1
/* 8135E8A0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8135E8A4 | 3B FF FF F8 */	subi r31, r31, 0x8
/* 8135E8A8 | 42 00 FF F4 */	bdnz .L_8135E89C
/* 8135E8AC | 48 00 01 E8 */	b .L_8135EA94
.L_8135E8B0:
/* 8135E8B0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8135E8B4 | 40 81 00 38 */	ble .L_8135E8EC
/* 8135E8B8 | 21 6A 00 20 */	subfic r11, r10, 0x20
/* 8135E8BC | 7C 7A E8 30 */	slw r26, r3, r29
/* 8135E8C0 | 7F 3D 58 50 */	subf r25, r29, r11
/* 8135E8C4 | 39 7D FF FF */	subi r11, r29, 0x1
/* 8135E8C8 | 3B 5A FF FF */	subi r26, r26, 0x1
/* 8135E8CC | 7D 39 CC 30 */	srw r25, r9, r25
/* 8135E8D0 | 7C 69 58 30 */	slw r9, r3, r11
/* 8135E8D4 | 7F 4B C8 38 */	and r11, r26, r25
/* 8135E8D8 | 7D 69 48 39 */	and. r9, r11, r9
/* 8135E8DC | 40 82 00 14 */	bne .L_8135E8F0
/* 8135E8E0 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135E8E4 | 38 63 00 03 */	addi r3, r3, 0x3
/* 8135E8E8 | 48 00 01 E4 */	b .L_8135EACC
.L_8135E8EC:
/* 8135E8EC | 39 60 00 00 */	li r11, 0x0
.L_8135E8F0:
/* 8135E8F0 | 57 C9 10 3A */	slwi r9, r30, 2
/* 8135E8F4 | 7D 69 03 A6 */	mtctr r11
/* 8135E8F8 | 28 0B 00 00 */	cmplwi r11, 0x0
/* 8135E8FC | 40 81 00 14 */	ble .L_8135E910
.L_8135E900:
/* 8135E900 | 7C 04 49 2E */	stwx r0, r4, r9
/* 8135E904 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8135E908 | 39 29 00 04 */	addi r9, r9, 0x4
/* 8135E90C | 42 00 FF F4 */	bdnz .L_8135E900
.L_8135E910:
/* 8135E910 | 7D 2A EA 14 */	add r9, r10, r29
/* 8135E914 | 7F FF 4A 14 */	add r31, r31, r9
/* 8135E918 | 57 E9 E8 FE */	srwi r9, r31, 3
/* 8135E91C | 7D 29 03 A6 */	mtctr r9
/* 8135E920 | 28 1F 00 08 */	cmplwi r31, 0x8
/* 8135E924 | 41 80 00 14 */	blt .L_8135E938
.L_8135E928:
/* 8135E928 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 8135E92C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8135E930 | 3B FF FF F8 */	subi r31, r31, 0x8
/* 8135E934 | 42 00 FF F4 */	bdnz .L_8135E928
.L_8135E938:
/* 8135E938 | 39 3C 00 04 */	addi r9, r28, 0x4
/* 8135E93C | 7C 09 40 40 */	cmplw r9, r8
/* 8135E940 | 40 81 00 10 */	ble .L_8135E950
/* 8135E944 | 3C 60 80 00 */	lis r3, 0x8000
/* 8135E948 | 38 63 00 03 */	addi r3, r3, 0x3
/* 8135E94C | 48 00 01 80 */	b .L_8135EACC
.L_8135E950:
/* 8135E950 | 89 2C 00 01 */	lbz r9, 0x1(r12)
/* 8135E954 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 8135E958 | 8B 2C 00 02 */	lbz r25, 0x2(r12)
/* 8135E95C | 3B 40 00 0B */	li r26, 0xb
/* 8135E960 | 89 6C 00 03 */	lbz r11, 0x3(r12)
/* 8135E964 | 55 29 80 1E */	slwi r9, r9, 16
/* 8135E968 | 89 4C 00 00 */	lbz r10, 0x0(r12)
/* 8135E96C | 53 2B 44 2E */	rlwimi r11, r25, 8, 16, 23
/* 8135E970 | 51 49 C0 0E */	rlwimi r9, r10, 24, 0, 7
/* 8135E974 | 7D 69 4B 78 */	or r9, r11, r9
/* 8135E978 | 7D 29 F8 30 */	slw r9, r9, r31
/* 8135E97C | 40 82 00 08 */	bne .L_8135E984
/* 8135E980 | 3B 40 00 09 */	li r26, 0x9
.L_8135E984:
/* 8135E984 | 39 40 00 01 */	li r10, 0x1
/* 8135E988 | 3A E0 00 00 */	li r23, 0x0
/* 8135E98C | 7F 49 03 A6 */	mtctr r26
/* 8135E990 | 2C 1A 00 01 */	cmpwi r26, 0x1
/* 8135E994 | 41 80 00 70 */	blt .L_8135EA04
.L_8135E998:
/* 8135E998 | 21 6A 00 20 */	subfic r11, r10, 0x20
/* 8135E99C | 83 06 00 00 */	lwz r24, 0x0(r6)
/* 8135E9A0 | 7D 2B 5C 30 */	srw r11, r9, r11
/* 8135E9A4 | 56 F9 08 3C */	slwi r25, r23, 1
/* 8135E9A8 | 55 6B 07 FF */	clrlwi. r11, r11, 31
/* 8135E9AC | 7D 78 CA 2E */	lhzx r11, r24, r25
/* 8135E9B0 | 55 79 04 BE */	clrlwi r25, r11, 18
/* 8135E9B4 | 40 82 00 24 */	bne .L_8135E9D8
/* 8135E9B8 | 55 6B 04 21 */	rlwinm. r11, r11, 0, 16, 16
/* 8135E9BC | 41 82 00 14 */	beq .L_8135E9D0
/* 8135E9C0 | 7D 77 CA 14 */	add r11, r23, r25
/* 8135E9C4 | 55 6B 08 3C */	slwi r11, r11, 1
/* 8135E9C8 | 7F B8 5A 2E */	lhzx r29, r24, r11
/* 8135E9CC | 48 00 00 38 */	b .L_8135EA04
.L_8135E9D0:
/* 8135E9D0 | 7E F7 CA 14 */	add r23, r23, r25
/* 8135E9D4 | 48 00 00 28 */	b .L_8135E9FC
.L_8135E9D8:
/* 8135E9D8 | 55 6B 04 63 */	rlwinm. r11, r11, 0, 17, 17
/* 8135E9DC | 41 82 00 18 */	beq .L_8135E9F4
/* 8135E9E0 | 7D 77 CA 14 */	add r11, r23, r25
/* 8135E9E4 | 55 6B 08 3C */	slwi r11, r11, 1
/* 8135E9E8 | 7D 78 5A 14 */	add r11, r24, r11
/* 8135E9EC | A3 AB 00 02 */	lhz r29, 0x2(r11)
/* 8135E9F0 | 48 00 00 14 */	b .L_8135EA04
.L_8135E9F4:
/* 8135E9F4 | 7D 77 CA 14 */	add r11, r23, r25
/* 8135E9F8 | 3A EB 00 01 */	addi r23, r11, 0x1
.L_8135E9FC:
/* 8135E9FC | 39 4A 00 01 */	addi r10, r10, 0x1
/* 8135EA00 | 42 00 FF 98 */	bdnz .L_8135E998
.L_8135EA04:
/* 8135EA04 | 7C 0A D0 00 */	cmpw r10, r26
/* 8135EA08 | 40 81 00 10 */	ble .L_8135EA18
/* 8135EA0C | 3C 60 80 00 */	lis r3, 0x8000
/* 8135EA10 | 38 63 00 03 */	addi r3, r3, 0x3
/* 8135EA14 | 48 00 00 B8 */	b .L_8135EACC
.L_8135EA18:
/* 8135EA18 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8135EA1C | 40 81 00 38 */	ble .L_8135EA54
/* 8135EA20 | 21 6A 00 20 */	subfic r11, r10, 0x20
/* 8135EA24 | 7C 79 E8 30 */	slw r25, r3, r29
/* 8135EA28 | 7F 5D 58 50 */	subf r26, r29, r11
/* 8135EA2C | 39 7D FF FF */	subi r11, r29, 0x1
/* 8135EA30 | 3A F9 FF FF */	subi r23, r25, 0x1
/* 8135EA34 | 7D 3A D4 30 */	srw r26, r9, r26
/* 8135EA38 | 7C 69 58 30 */	slw r9, r3, r11
/* 8135EA3C | 7E EB D0 38 */	and r11, r23, r26
/* 8135EA40 | 7D 69 48 39 */	and. r9, r11, r9
/* 8135EA44 | 40 82 00 14 */	bne .L_8135EA58
/* 8135EA48 | 39 2B 00 01 */	addi r9, r11, 0x1
/* 8135EA4C | 7D 2B BB 38 */	orc r11, r9, r23
/* 8135EA50 | 48 00 00 08 */	b .L_8135EA58
.L_8135EA54:
/* 8135EA54 | 39 60 00 00 */	li r11, 0x0
.L_8135EA58:
/* 8135EA58 | 7D 2A EA 14 */	add r9, r10, r29
/* 8135EA5C | 57 CA 10 3A */	slwi r10, r30, 2
/* 8135EA60 | 7F FF 4A 14 */	add r31, r31, r9
/* 8135EA64 | 7D 64 51 2E */	stwx r11, r4, r10
/* 8135EA68 | 57 E9 E8 FE */	srwi r9, r31, 3
/* 8135EA6C | 7D 29 03 A6 */	mtctr r9
/* 8135EA70 | 28 1F 00 08 */	cmplwi r31, 0x8
/* 8135EA74 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8135EA78 | 41 80 00 14 */	blt .L_8135EA8C
.L_8135EA7C:
/* 8135EA7C | 39 8C 00 01 */	addi r12, r12, 0x1
/* 8135EA80 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8135EA84 | 3B FF FF F8 */	subi r31, r31, 0x8
/* 8135EA88 | 42 00 FF F4 */	bdnz .L_8135EA7C
.L_8135EA8C:
/* 8135EA8C | 2C 1E 00 40 */	cmpwi r30, 0x40
/* 8135EA90 | 41 80 FD 28 */	blt .L_8135E7B8
.L_8135EA94:
/* 8135EA94 | 20 1E 00 40 */	subfic r0, r30, 0x40
/* 8135EA98 | 57 C3 10 3A */	slwi r3, r30, 2
/* 8135EA9C | 38 C0 00 00 */	li r6, 0x0
/* 8135EAA0 | 7C 09 03 A6 */	mtctr r0
/* 8135EAA4 | 2C 1E 00 40 */	cmpwi r30, 0x40
/* 8135EAA8 | 40 80 00 10 */	bge .L_8135EAB8
.L_8135EAAC:
/* 8135EAAC | 7C C4 19 2E */	stwx r6, r4, r3
/* 8135EAB0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8135EAB4 | 42 00 FF F8 */	bdnz .L_8135EAAC
.L_8135EAB8:
/* 8135EAB8 | 93 85 00 20 */	stw r28, 0x20(r5)
/* 8135EABC | 38 60 00 00 */	li r3, 0x0
/* 8135EAC0 | 80 85 00 1C */	lwz r4, 0x1c(r5)
/* 8135EAC4 | 91 85 00 10 */	stw r12, 0x10(r5)
/* 8135EAC8 | 93 E4 00 00 */	stw r31, 0x0(r4)
.L_8135EACC:
/* 8135EACC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135EAD0 | 48 29 AA 2D */	bl _restgpr_23
/* 8135EAD4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8135EAD8 | 7C 08 03 A6 */	mtlr r0
/* 8135EADC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8135EAE0 | 4E 80 00 20 */	blr
.endfn huffmanDecoder__9CArGBAOdhFPUlP21SArCDJ_HuffmanRequestPPUsiUl

# .text:0x35A8 | 0x8135EAE4 | size: 0x3B4
# CArGBAOdh::idct_fast(const unsigned char*, unsigned long*, unsigned long*, unsigned char*, unsigned long)
.fn idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl, global
/* 8135EAE4 | 94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8135EAE8 | 7C 08 02 A6 */	mflr r0
/* 8135EAEC | 90 01 01 34 */	stw r0, 0x134(r1)
/* 8135EAF0 | 39 61 01 30 */	addi r11, r1, 0x130
/* 8135EAF4 | 48 29 A9 BD */	bl _savegpr_23
/* 8135EAF8 | 38 00 00 08 */	li r0, 0x8
/* 8135EAFC | 39 61 00 08 */	addi r11, r1, 0x8
/* 8135EB00 | 7C 09 03 A6 */	mtctr r0
.L_8135EB04:
/* 8135EB04 | 81 26 00 20 */	lwz r9, 0x20(r6)
/* 8135EB08 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8135EB0C | 40 82 00 88 */	bne .L_8135EB94
/* 8135EB10 | 80 06 00 40 */	lwz r0, 0x40(r6)
/* 8135EB14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135EB18 | 40 82 00 7C */	bne .L_8135EB94
/* 8135EB1C | 80 06 00 60 */	lwz r0, 0x60(r6)
/* 8135EB20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135EB24 | 40 82 00 70 */	bne .L_8135EB94
/* 8135EB28 | 80 06 00 80 */	lwz r0, 0x80(r6)
/* 8135EB2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135EB30 | 40 82 00 64 */	bne .L_8135EB94
/* 8135EB34 | 80 06 00 A0 */	lwz r0, 0xa0(r6)
/* 8135EB38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135EB3C | 40 82 00 58 */	bne .L_8135EB94
/* 8135EB40 | 80 06 00 C0 */	lwz r0, 0xc0(r6)
/* 8135EB44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135EB48 | 40 82 00 4C */	bne .L_8135EB94
/* 8135EB4C | 80 06 00 E0 */	lwz r0, 0xe0(r6)
/* 8135EB50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135EB54 | 40 82 00 40 */	bne .L_8135EB94
/* 8135EB58 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8135EB5C | 38 C6 00 04 */	addi r6, r6, 0x4
/* 8135EB60 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 8135EB64 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 8135EB68 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8135EB6C | 90 0B 00 00 */	stw r0, 0x0(r11)
/* 8135EB70 | 90 0B 00 20 */	stw r0, 0x20(r11)
/* 8135EB74 | 90 0B 00 40 */	stw r0, 0x40(r11)
/* 8135EB78 | 90 0B 00 60 */	stw r0, 0x60(r11)
/* 8135EB7C | 90 0B 00 80 */	stw r0, 0x80(r11)
/* 8135EB80 | 90 0B 00 A0 */	stw r0, 0xa0(r11)
/* 8135EB84 | 90 0B 00 C0 */	stw r0, 0xc0(r11)
/* 8135EB88 | 90 0B 00 E0 */	stw r0, 0xe0(r11)
/* 8135EB8C | 39 6B 00 04 */	addi r11, r11, 0x4
/* 8135EB90 | 48 00 01 28 */	b .L_8135ECB8
.L_8135EB94:
/* 8135EB94 | 83 A6 00 40 */	lwz r29, 0x40(r6)
/* 8135EB98 | 80 65 00 40 */	lwz r3, 0x40(r5)
/* 8135EB9C | 83 86 00 C0 */	lwz r28, 0xc0(r6)
/* 8135EBA0 | 7F 1D 19 D6 */	mullw r24, r29, r3
/* 8135EBA4 | 81 45 00 C0 */	lwz r10, 0xc0(r5)
/* 8135EBA8 | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 8135EBAC | 83 66 00 60 */	lwz r27, 0x60(r6)
/* 8135EBB0 | 83 45 00 60 */	lwz r26, 0x60(r5)
/* 8135EBB4 | 81 86 00 A0 */	lwz r12, 0xa0(r6)
/* 8135EBB8 | 7F 29 01 D6 */	mullw r25, r9, r0
/* 8135EBBC | 81 25 00 A0 */	lwz r9, 0xa0(r5)
/* 8135EBC0 | 80 66 00 E0 */	lwz r3, 0xe0(r6)
/* 8135EBC4 | 80 05 00 E0 */	lwz r0, 0xe0(r5)
/* 8135EBC8 | 83 E6 00 00 */	lwz r31, 0x0(r6)
/* 8135EBCC | 83 A6 00 80 */	lwz r29, 0x80(r6)
/* 8135EBD0 | 7D 5C 51 D6 */	mullw r10, r28, r10
/* 8135EBD4 | 83 C5 00 00 */	lwz r30, 0x0(r5)
/* 8135EBD8 | 83 85 00 80 */	lwz r28, 0x80(r5)
/* 8135EBDC | 38 C6 00 04 */	addi r6, r6, 0x4
/* 8135EBE0 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 8135EBE4 | 7E E3 01 D6 */	mullw r23, r3, r0
/* 8135EBE8 | 7C 6A C0 50 */	subf r3, r10, r24
/* 8135EBEC | 7C 18 52 14 */	add r0, r24, r10
/* 8135EBF0 | 7D 57 C8 50 */	subf r10, r23, r25
/* 8135EBF4 | 7E F9 BA 14 */	add r23, r25, r23
/* 8135EBF8 | 1C 63 01 6A */	mulli r3, r3, 0x16a
/* 8135EBFC | 7C 63 46 70 */	srawi r3, r3, 8
/* 8135EC00 | 7F 1B D1 D6 */	mullw r24, r27, r26
/* 8135EC04 | 7C 60 18 50 */	subf r3, r0, r3
/* 8135EC08 | 7D 2C 49 D6 */	mullw r9, r12, r9
/* 8135EC0C | 7D 89 C2 14 */	add r12, r9, r24
/* 8135EC10 | 7F 78 48 50 */	subf r27, r24, r9
/* 8135EC14 | 7D 3B 52 14 */	add r9, r27, r10
/* 8135EC18 | 7F 4C B8 50 */	subf r26, r12, r23
/* 8135EC1C | 7F 17 62 14 */	add r24, r23, r12
/* 8135EC20 | 1D 29 01 D9 */	mulli r9, r9, 0x1d9
/* 8135EC24 | 7D 9F F1 D6 */	mullw r12, r31, r30
/* 8135EC28 | 7D 29 46 70 */	srawi r9, r9, 8
/* 8135EC2C | 7F 3D E1 D6 */	mullw r25, r29, r28
/* 8135EC30 | 7E EC CA 14 */	add r23, r12, r25
/* 8135EC34 | 1F 7B FD 63 */	mulli r27, r27, -0x29d
/* 8135EC38 | 7F 39 60 50 */	subf r25, r25, r12
/* 8135EC3C | 7F 97 02 14 */	add r28, r23, r0
/* 8135EC40 | 7C 00 B8 50 */	subf r0, r0, r23
/* 8135EC44 | 7D 9C C2 14 */	add r12, r28, r24
/* 8135EC48 | 91 8B 00 00 */	stw r12, 0x0(r11)
/* 8135EC4C | 7D 98 E0 50 */	subf r12, r24, r28
/* 8135EC50 | 7F 7B 46 70 */	srawi r27, r27, 8
/* 8135EC54 | 7F 99 1A 14 */	add r28, r25, r3
/* 8135EC58 | 7F 69 DA 14 */	add r27, r9, r27
/* 8135EC5C | 91 8B 00 E0 */	stw r12, 0xe0(r11)
/* 8135EC60 | 7F 18 D8 50 */	subf r24, r24, r27
/* 8135EC64 | 7D 9C C2 14 */	add r12, r28, r24
/* 8135EC68 | 7F 63 C8 50 */	subf r27, r3, r25
/* 8135EC6C | 1F 5A 01 6A */	mulli r26, r26, 0x16a
/* 8135EC70 | 91 8B 00 20 */	stw r12, 0x20(r11)
/* 8135EC74 | 7C 78 E0 50 */	subf r3, r24, r28
/* 8135EC78 | 90 6B 00 C0 */	stw r3, 0xc0(r11)
/* 8135EC7C | 7F 4C 46 70 */	srawi r12, r26, 8
/* 8135EC80 | 1D 4A 01 15 */	mulli r10, r10, 0x115
/* 8135EC84 | 7D 98 60 50 */	subf r12, r24, r12
/* 8135EC88 | 7C 7B 62 14 */	add r3, r27, r12
/* 8135EC8C | 90 6B 00 40 */	stw r3, 0x40(r11)
/* 8135EC90 | 7D 4A 46 70 */	srawi r10, r10, 8
/* 8135EC94 | 7C 6C D8 50 */	subf r3, r12, r27
/* 8135EC98 | 7D 29 50 50 */	subf r9, r9, r10
/* 8135EC9C | 90 6B 00 A0 */	stw r3, 0xa0(r11)
/* 8135ECA0 | 7D 29 62 14 */	add r9, r9, r12
/* 8135ECA4 | 7C 60 4A 14 */	add r3, r0, r9
/* 8135ECA8 | 90 6B 00 80 */	stw r3, 0x80(r11)
/* 8135ECAC | 7C 09 00 50 */	subf r0, r9, r0
/* 8135ECB0 | 90 0B 00 60 */	stw r0, 0x60(r11)
/* 8135ECB4 | 39 6B 00 04 */	addi r11, r11, 0x4
.L_8135ECB8:
/* 8135ECB8 | 42 00 FE 4C */	bdnz .L_8135EB04
/* 8135ECBC | 38 00 00 08 */	li r0, 0x8
/* 8135ECC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8135ECC4 | 38 A0 00 00 */	li r5, 0x0
/* 8135ECC8 | 7C 09 03 A6 */	mtctr r0
.L_8135ECCC:
/* 8135ECCC | 7C 05 41 D6 */	mullw r0, r5, r8
/* 8135ECD0 | 81 43 00 04 */	lwz r10, 0x4(r3)
/* 8135ECD4 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8135ECD8 | 7F E7 02 14 */	add r31, r7, r0
/* 8135ECDC | 40 82 00 80 */	bne .L_8135ED5C
/* 8135ECE0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8135ECE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135ECE8 | 40 82 00 74 */	bne .L_8135ED5C
/* 8135ECEC | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8135ECF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135ECF4 | 40 82 00 68 */	bne .L_8135ED5C
/* 8135ECF8 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8135ECFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135ED00 | 40 82 00 5C */	bne .L_8135ED5C
/* 8135ED04 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8135ED08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135ED0C | 40 82 00 50 */	bne .L_8135ED5C
/* 8135ED10 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 8135ED14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135ED18 | 40 82 00 44 */	bne .L_8135ED5C
/* 8135ED1C | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8135ED20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135ED24 | 40 82 00 38 */	bne .L_8135ED5C
/* 8135ED28 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8135ED2C | 38 63 00 20 */	addi r3, r3, 0x20
/* 8135ED30 | 54 00 DD BE */	extrwi r0, r0, 10, 17
/* 8135ED34 | 7C 04 00 AE */	lbzx r0, r4, r0
/* 8135ED38 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 8135ED3C | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 8135ED40 | 98 1F 00 02 */	stb r0, 0x2(r31)
/* 8135ED44 | 98 1F 00 03 */	stb r0, 0x3(r31)
/* 8135ED48 | 98 1F 00 04 */	stb r0, 0x4(r31)
/* 8135ED4C | 98 1F 00 05 */	stb r0, 0x5(r31)
/* 8135ED50 | 98 1F 00 06 */	stb r0, 0x6(r31)
/* 8135ED54 | 98 1F 00 07 */	stb r0, 0x7(r31)
/* 8135ED58 | 48 00 01 20 */	b .L_8135EE78
.L_8135ED5C:
/* 8135ED5C | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8135ED60 | 81 23 00 18 */	lwz r9, 0x18(r3)
/* 8135ED64 | 83 43 00 08 */	lwz r26, 0x8(r3)
/* 8135ED68 | 7D 60 50 50 */	subf r11, r0, r10
/* 8135ED6C | 7F 2A 02 14 */	add r25, r10, r0
/* 8135ED70 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8135ED74 | 7C 09 D0 50 */	subf r0, r9, r26
/* 8135ED78 | 81 43 00 14 */	lwz r10, 0x14(r3)
/* 8135ED7C | 1D 80 01 6A */	mulli r12, r0, 0x16a
/* 8135ED80 | 83 63 00 10 */	lwz r27, 0x10(r3)
/* 8135ED84 | 83 A3 00 00 */	lwz r29, 0x0(r3)
/* 8135ED88 | 7F 0A 32 14 */	add r24, r10, r6
/* 8135ED8C | 7C 06 50 50 */	subf r0, r6, r10
/* 8135ED90 | 7D 40 5A 14 */	add r10, r0, r11
/* 8135ED94 | 7D 3A 4A 14 */	add r9, r26, r9
/* 8135ED98 | 7C DD DA 14 */	add r6, r29, r27
/* 8135ED9C | 1F 4A 01 D9 */	mulli r26, r10, 0x1d9
/* 8135EDA0 | 7D 8C 46 70 */	srawi r12, r12, 8
/* 8135EDA4 | 7F C6 4A 14 */	add r30, r6, r9
/* 8135EDA8 | 7D 59 C2 14 */	add r10, r25, r24
/* 8135EDAC | 7F 98 C8 50 */	subf r28, r24, r25
/* 8135EDB0 | 7F 09 60 50 */	subf r24, r9, r12
/* 8135EDB4 | 7F 3B E8 50 */	subf r25, r27, r29
/* 8135EDB8 | 7D 9E 52 14 */	add r12, r30, r10
/* 8135EDBC | 55 9D DD BE */	extrwi r29, r12, 10, 17
/* 8135EDC0 | 7C C9 30 50 */	subf r6, r9, r6
/* 8135EDC4 | 1F 60 FD 63 */	mulli r27, r0, -0x29d
/* 8135EDC8 | 7D 8A F0 50 */	subf r12, r10, r30
/* 8135EDCC | 7F A4 E8 AE */	lbzx r29, r4, r29
/* 8135EDD0 | 7C 18 C8 50 */	subf r0, r24, r25
/* 8135EDD4 | 55 9E DD BE */	extrwi r30, r12, 10, 17
/* 8135EDD8 | 7F 4C 46 70 */	srawi r12, r26, 8
/* 8135EDDC | 9B BF 00 00 */	stb r29, 0x0(r31)
/* 8135EDE0 | 7F 7D 46 70 */	srawi r29, r27, 8
/* 8135EDE4 | 7F C4 F0 AE */	lbzx r30, r4, r30
/* 8135EDE8 | 7F AC EA 14 */	add r29, r12, r29
/* 8135EDEC | 7F 59 C2 14 */	add r26, r25, r24
/* 8135EDF0 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8135EDF4 | 7F 0A E8 50 */	subf r24, r10, r29
/* 8135EDF8 | 9B DF 00 07 */	stb r30, 0x7(r31)
/* 8135EDFC | 1F BC 01 6A */	mulli r29, r28, 0x16a
/* 8135EE00 | 7D 5A C2 14 */	add r10, r26, r24
/* 8135EE04 | 7D 38 D0 50 */	subf r9, r24, r26
/* 8135EE08 | 55 4A DD BE */	extrwi r10, r10, 10, 17
/* 8135EE0C | 7F C4 50 AE */	lbzx r30, r4, r10
/* 8135EE10 | 7F BD 46 70 */	srawi r29, r29, 8
/* 8135EE14 | 7F 18 E8 50 */	subf r24, r24, r29
/* 8135EE18 | 55 2A DD BE */	extrwi r10, r9, 10, 17
/* 8135EE1C | 1F AB 01 15 */	mulli r29, r11, 0x115
/* 8135EE20 | 9B DF 00 01 */	stb r30, 0x1(r31)
/* 8135EE24 | 7D 20 C2 14 */	add r9, r0, r24
/* 8135EE28 | 7D 64 50 AE */	lbzx r11, r4, r10
/* 8135EE2C | 7C 18 00 50 */	subf r0, r24, r0
/* 8135EE30 | 55 2A DD BE */	extrwi r10, r9, 10, 17
/* 8135EE34 | 99 7F 00 06 */	stb r11, 0x6(r31)
/* 8135EE38 | 7F BD 46 70 */	srawi r29, r29, 8
/* 8135EE3C | 54 09 DD BE */	extrwi r9, r0, 10, 17
/* 8135EE40 | 7D 64 50 AE */	lbzx r11, r4, r10
/* 8135EE44 | 7C 0C E8 50 */	subf r0, r12, r29
/* 8135EE48 | 7D 44 48 AE */	lbzx r10, r4, r9
/* 8135EE4C | 7D 80 C2 14 */	add r12, r0, r24
/* 8135EE50 | 99 7F 00 02 */	stb r11, 0x2(r31)
/* 8135EE54 | 7C 06 62 14 */	add r0, r6, r12
/* 8135EE58 | 54 09 DD BE */	extrwi r9, r0, 10, 17
/* 8135EE5C | 99 5F 00 05 */	stb r10, 0x5(r31)
/* 8135EE60 | 7C 0C 30 50 */	subf r0, r12, r6
/* 8135EE64 | 7C C4 48 AE */	lbzx r6, r4, r9
/* 8135EE68 | 54 00 DD BE */	extrwi r0, r0, 10, 17
/* 8135EE6C | 7C 04 00 AE */	lbzx r0, r4, r0
/* 8135EE70 | 98 DF 00 04 */	stb r6, 0x4(r31)
/* 8135EE74 | 98 1F 00 03 */	stb r0, 0x3(r31)
.L_8135EE78:
/* 8135EE78 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8135EE7C | 42 00 FE 50 */	bdnz .L_8135ECCC
/* 8135EE80 | 39 61 01 30 */	addi r11, r1, 0x130
/* 8135EE84 | 48 29 A6 79 */	bl _restgpr_23
/* 8135EE88 | 80 01 01 34 */	lwz r0, 0x134(r1)
/* 8135EE8C | 7C 08 03 A6 */	mtlr r0
/* 8135EE90 | 38 21 01 30 */	addi r1, r1, 0x130
/* 8135EE94 | 4E 80 00 20 */	blr
.endfn idct_fast__9CArGBAOdhFPCUcPUlPUlPUcUl

# 0x8160D968..0x8160F048 | size: 0x16E0
.rodata
.balign 8

# .rodata:0x0 | 0x8160D968 | size: 0x40
.obj odh_zigzag_order, local
	.byte 0x00, 0x01, 0x05, 0x06, 0x0E, 0x0F, 0x1B, 0x1C
	.byte 0x02, 0x04, 0x07, 0x0D, 0x10, 0x1A, 0x1D, 0x2A
	.byte 0x03, 0x08, 0x0C, 0x11, 0x19, 0x1E, 0x29, 0x2B
	.byte 0x09, 0x0B, 0x12, 0x18, 0x1F, 0x28, 0x2C, 0x35
	.byte 0x0A, 0x13, 0x17, 0x20, 0x27, 0x2D, 0x34, 0x36
	.byte 0x14, 0x16, 0x21, 0x26, 0x2E, 0x33, 0x37, 0x3C
	.byte 0x15, 0x22, 0x25, 0x2F, 0x32, 0x38, 0x3B, 0x3D
	.byte 0x23, 0x24, 0x30, 0x31, 0x39, 0x3A, 0x3E, 0x3F
.endobj odh_zigzag_order

# .rodata:0x40 | 0x8160D9A8 | size: 0x40
.obj odh_natural_order, local
	.byte 0x00, 0x01, 0x08, 0x10, 0x09, 0x02, 0x03, 0x0A
	.byte 0x11, 0x18, 0x20, 0x19, 0x12, 0x0B, 0x04, 0x05
	.byte 0x0C, 0x13, 0x1A, 0x21, 0x28, 0x30, 0x29, 0x22
	.byte 0x1B, 0x14, 0x0D, 0x06, 0x07, 0x0E, 0x15, 0x1C
	.byte 0x23, 0x2A, 0x31, 0x38, 0x39, 0x32, 0x2B, 0x24
	.byte 0x1D, 0x16, 0x0F, 0x17, 0x1E, 0x25, 0x2C, 0x33
	.byte 0x3A, 0x3B, 0x34, 0x2D, 0x26, 0x1F, 0x27, 0x2E
	.byte 0x35, 0x3C, 0x3D, 0x36, 0x2F, 0x37, 0x3E, 0x3F
.endobj odh_natural_order

# .rodata:0x80 | 0x8160D9E8 | size: 0x400
.obj range_limit, local
	.4byte 0x80818283
	.4byte 0x84858687
	.4byte 0x88898A8B
	.4byte 0x8C8D8E8F
	.4byte 0x90919293
	.4byte 0x94959697
	.4byte 0x98999A9B
	.4byte 0x9C9D9E9F
	.4byte 0xA0A1A2A3
	.4byte 0xA4A5A6A7
	.4byte 0xA8A9AAAB
	.4byte 0xACADAEAF
	.4byte 0xB0B1B2B3
	.4byte 0xB4B5B6B7
	.4byte 0xB8B9BABB
	.4byte 0xBCBDBEBF
	.4byte 0xC0C1C2C3
	.4byte 0xC4C5C6C7
	.4byte 0xC8C9CACB
	.4byte 0xCCCDCECF
	.4byte 0xD0D1D2D3
	.4byte 0xD4D5D6D7
	.4byte 0xD8D9DADB
	.4byte 0xDCDDDEDF
	.4byte 0xE0E1E2E3
	.4byte 0xE4E5E6E7
	.4byte 0xE8E9EAEB
	.4byte 0xECEDEEEF
	.4byte 0xF0F1F2F3
	.4byte 0xF4F5F6F7
	.4byte 0xF8F9FAFB
	.4byte 0xFCFDFEFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x10111213
	.4byte 0x14151617
	.4byte 0x18191A1B
	.4byte 0x1C1D1E1F
	.4byte 0x20212223
	.4byte 0x24252627
	.4byte 0x28292A2B
	.4byte 0x2C2D2E2F
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38393A3B
	.4byte 0x3C3D3E3F
	.4byte 0x40414243
	.4byte 0x44454647
	.4byte 0x48494A4B
	.4byte 0x4C4D4E4F
	.4byte 0x50515253
	.4byte 0x54555657
	.4byte 0x58595A5B
	.4byte 0x5C5D5E5F
	.4byte 0x60616263
	.4byte 0x64656667
	.4byte 0x68696A6B
	.4byte 0x6C6D6E6F
	.4byte 0x70717273
	.4byte 0x74757677
	.4byte 0x78797A7B
	.4byte 0x7C7D7E7F
.endobj range_limit

# .rodata:0x480 | 0x8160DDE8 | size: 0x80
.obj gArCdj_std_quant_tbl, local
	.byte 0x10, 0x0B, 0x0A, 0x10, 0x18, 0x28, 0x33, 0x3D
	.byte 0x0C, 0x0C, 0x0E, 0x13, 0x1A, 0x3A, 0x3C, 0x37
	.byte 0x0E, 0x0D, 0x10, 0x18, 0x28, 0x39, 0x45, 0x38
	.byte 0x0E, 0x11, 0x16, 0x1D, 0x33, 0x57, 0x50, 0x3E
	.byte 0x12, 0x16, 0x25, 0x38, 0x44, 0x6D, 0x67, 0x4D
	.byte 0x18, 0x23, 0x37, 0x40, 0x51, 0x68, 0x71, 0x5C
	.byte 0x31, 0x40, 0x4E, 0x57, 0x67, 0x79, 0x78, 0x65
	.byte 0x48, 0x5C, 0x5F, 0x62, 0x70, 0x64, 0x67, 0x63
	.byte 0x11, 0x12, 0x18, 0x2F, 0x63, 0x63, 0x63, 0x63
	.byte 0x12, 0x15, 0x1A, 0x42, 0x63, 0x63, 0x63, 0x63
	.byte 0x18, 0x1A, 0x38, 0x63, 0x63, 0x63, 0x63, 0x63
	.byte 0x2F, 0x42, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
	.byte 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
	.byte 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
	.byte 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
	.byte 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
.endobj gArCdj_std_quant_tbl

# .rodata:0x500 | 0x8160DE68 | size: 0x80
.obj gArAANScales, local
	.4byte 0x400058C5
	.4byte 0x539F4B42
	.4byte 0x40003249
	.4byte 0x22A311A8
	.4byte 0x58C57B21
	.4byte 0x73FC6862
	.4byte 0x58C545BF
	.4byte 0x300B187E
	.4byte 0x539F73FC
	.4byte 0x6D416254
	.4byte 0x539F41B3
	.4byte 0x2D411712
	.4byte 0x4B426862
	.4byte 0x6254587E
	.4byte 0x4B423B21
	.4byte 0x28BA14C3
	.4byte 0x400058C5
	.4byte 0x539F4B42
	.4byte 0x40003249
	.4byte 0x22A311A8
	.4byte 0x324945BF
	.4byte 0x41B33B21
	.4byte 0x32492782
	.4byte 0x1B370DE0
	.4byte 0x22A3300B
	.4byte 0x2D4128BA
	.4byte 0x22A31B37
	.4byte 0x12BF098E
	.4byte 0x11A8187E
	.4byte 0x171214C3
	.4byte 0x11A80DE0
	.4byte 0x098E04DF
.endobj gArAANScales

# .rodata:0x580 | 0x8160DEE8 | size: 0x40
.obj gArDC_L_Table, local
	.4byte 0x02000000
	.4byte 0x03000002
	.4byte 0x03000003
	.4byte 0x03000004
	.4byte 0x03000005
	.4byte 0x03000006
	.4byte 0x0400000E
	.4byte 0x0500001E
	.4byte 0x0600003E
	.4byte 0x0700007E
	.4byte 0x080000FE
	.4byte 0x090001FE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj gArDC_L_Table

# .rodata:0x5C0 | 0x8160DF28 | size: 0x40
.obj gArDC_C_Table, local
	.4byte 0x02000000
	.4byte 0x02000001
	.4byte 0x02000002
	.4byte 0x03000006
	.4byte 0x0400000E
	.4byte 0x0500001E
	.4byte 0x0600003E
	.4byte 0x0700007E
	.4byte 0x080000FE
	.4byte 0x090001FE
	.4byte 0x0A0003FE
	.4byte 0x0B0007FE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj gArDC_C_Table

# .rodata:0x600 | 0x8160DF68 | size: 0x480
.obj gArConvPlttTbl, local
	.4byte 0x00000000
	.4byte 0x00026458
	.4byte 0x0004C8B0
	.4byte 0x00072D08
	.4byte 0x00099160
	.4byte 0x000BF5B8
	.4byte 0x000E5A10
	.4byte 0x0010BE68
	.4byte 0x001322C0
	.4byte 0x00158718
	.4byte 0x0017EB70
	.4byte 0x001A4FC8
	.4byte 0x001CB420
	.4byte 0x001F1878
	.4byte 0x00217CD0
	.4byte 0x0023E128
	.4byte 0x00264580
	.4byte 0x0028A9D8
	.4byte 0x002B0E30
	.4byte 0x002D7288
	.4byte 0x002FD6E0
	.4byte 0x00323B38
	.4byte 0x00349F90
	.4byte 0x003703E8
	.4byte 0x00396840
	.4byte 0x003BCC98
	.4byte 0x003E30F0
	.4byte 0x00409548
	.4byte 0x0042F9A0
	.4byte 0x00455DF8
	.4byte 0x0047C250
	.4byte 0x004A26A8
	.4byte 0x00000000
	.4byte 0x0004B230
	.4byte 0x00096460
	.4byte 0x000E1690
	.4byte 0x0012C8C0
	.4byte 0x00177AF0
	.4byte 0x001C2D20
	.4byte 0x0020DF50
	.4byte 0x00259180
	.4byte 0x002A43B0
	.4byte 0x002EF5E0
	.4byte 0x0033A810
	.4byte 0x00385A40
	.4byte 0x003D0C70
	.4byte 0x0041BEA0
	.4byte 0x004670D0
	.4byte 0x004B2300
	.4byte 0x004FD530
	.4byte 0x00548760
	.4byte 0x00593990
	.4byte 0x005DEBC0
	.4byte 0x00629DF0
	.4byte 0x00675020
	.4byte 0x006C0250
	.4byte 0x0070B480
	.4byte 0x007566B0
	.4byte 0x007A18E0
	.4byte 0x007ECB10
	.4byte 0x00837D40
	.4byte 0x00882F70
	.4byte 0x008CE1A0
	.4byte 0x009193D0
	.4byte 0x00008000
	.4byte 0x00016978
	.4byte 0x000252F0
	.4byte 0x00033C68
	.4byte 0x000425E0
	.4byte 0x00050F58
	.4byte 0x0005F8D0
	.4byte 0x0006E248
	.4byte 0x0007CBC0
	.4byte 0x0008B538
	.4byte 0x00099EB0
	.4byte 0x000A8828
	.4byte 0x000B71A0
	.4byte 0x000C5B18
	.4byte 0x000D4490
	.4byte 0x000E2E08
	.4byte 0x000F1780
	.4byte 0x001000F8
	.4byte 0x0010EA70
	.4byte 0x0011D3E8
	.4byte 0x0012BD60
	.4byte 0x0013A6D8
	.4byte 0x00149050
	.4byte 0x001579C8
	.4byte 0x00166340
	.4byte 0x00174CB8
	.4byte 0x00183630
	.4byte 0x00191FA8
	.4byte 0x001A0920
	.4byte 0x001AF298
	.4byte 0x001BDC10
	.4byte 0x001CC588
	.4byte 0x00000000
	.4byte 0xFFFEA668
	.4byte 0xFFFD4CD0
	.4byte 0xFFFBF338
	.4byte 0xFFFA99A0
	.4byte 0xFFF94008
	.4byte 0xFFF7E670
	.4byte 0xFFF68CD8
	.4byte 0xFFF53340
	.4byte 0xFFF3D9A8
	.4byte 0xFFF28010
	.4byte 0xFFF12678
	.4byte 0xFFEFCCE0
	.4byte 0xFFEE7348
	.4byte 0xFFED19B0
	.4byte 0xFFEBC018
	.4byte 0xFFEA6680
	.4byte 0xFFE90CE8
	.4byte 0xFFE7B350
	.4byte 0xFFE659B8
	.4byte 0xFFE50020
	.4byte 0xFFE3A688
	.4byte 0xFFE24CF0
	.4byte 0xFFE0F358
	.4byte 0xFFDF99C0
	.4byte 0xFFDE4028
	.4byte 0xFFDCE690
	.4byte 0xFFDB8CF8
	.4byte 0xFFDA3360
	.4byte 0xFFD8D9C8
	.4byte 0xFFD78030
	.4byte 0xFFD62698
	.4byte 0x00000000
	.4byte 0xFFFD5998
	.4byte 0xFFFAB330
	.4byte 0xFFF80CC8
	.4byte 0xFFF56660
	.4byte 0xFFF2BFF8
	.4byte 0xFFF01990
	.4byte 0xFFED7328
	.4byte 0xFFEACCC0
	.4byte 0xFFE82658
	.4byte 0xFFE57FF0
	.4byte 0xFFE2D988
	.4byte 0xFFE03320
	.4byte 0xFFDD8CB8
	.4byte 0xFFDAE650
	.4byte 0xFFD83FE8
	.4byte 0xFFD59980
	.4byte 0xFFD2F318
	.4byte 0xFFD04CB0
	.4byte 0xFFCDA648
	.4byte 0xFFCAFFE0
	.4byte 0xFFC85978
	.4byte 0xFFC5B310
	.4byte 0xFFC30CA8
	.4byte 0xFFC06640
	.4byte 0xFFBDBFD8
	.4byte 0xFFBB1970
	.4byte 0xFFB87308
	.4byte 0xFFB5CCA0
	.4byte 0xFFB32638
	.4byte 0xFFB07FD0
	.4byte 0xFFADD968
	.4byte 0x00807FFF
	.4byte 0x00847FFF
	.4byte 0x00887FFF
	.4byte 0x008C7FFF
	.4byte 0x00907FFF
	.4byte 0x00947FFF
	.4byte 0x00987FFF
	.4byte 0x009C7FFF
	.4byte 0x00A07FFF
	.4byte 0x00A47FFF
	.4byte 0x00A87FFF
	.4byte 0x00AC7FFF
	.4byte 0x00B07FFF
	.4byte 0x00B47FFF
	.4byte 0x00B87FFF
	.4byte 0x00BC7FFF
	.4byte 0x00C07FFF
	.4byte 0x00C47FFF
	.4byte 0x00C87FFF
	.4byte 0x00CC7FFF
	.4byte 0x00D07FFF
	.4byte 0x00D47FFF
	.4byte 0x00D87FFF
	.4byte 0x00DC7FFF
	.4byte 0x00E07FFF
	.4byte 0x00E47FFF
	.4byte 0x00E87FFF
	.4byte 0x00EC7FFF
	.4byte 0x00F07FFF
	.4byte 0x00F47FFF
	.4byte 0x00F87FFF
	.4byte 0x00FC7FFF
	.4byte 0x00807FFF
	.4byte 0x00847FFF
	.4byte 0x00887FFF
	.4byte 0x008C7FFF
	.4byte 0x00907FFF
	.4byte 0x00947FFF
	.4byte 0x00987FFF
	.4byte 0x009C7FFF
	.4byte 0x00A07FFF
	.4byte 0x00A47FFF
	.4byte 0x00A87FFF
	.4byte 0x00AC7FFF
	.4byte 0x00B07FFF
	.4byte 0x00B47FFF
	.4byte 0x00B87FFF
	.4byte 0x00BC7FFF
	.4byte 0x00C07FFF
	.4byte 0x00C47FFF
	.4byte 0x00C87FFF
	.4byte 0x00CC7FFF
	.4byte 0x00D07FFF
	.4byte 0x00D47FFF
	.4byte 0x00D87FFF
	.4byte 0x00DC7FFF
	.4byte 0x00E07FFF
	.4byte 0x00E47FFF
	.4byte 0x00E87FFF
	.4byte 0x00EC7FFF
	.4byte 0x00F07FFF
	.4byte 0x00F47FFF
	.4byte 0x00F87FFF
	.4byte 0x00FC7FFF
	.4byte 0x00000000
	.4byte 0xFFFCA688
	.4byte 0xFFF94D10
	.4byte 0xFFF5F398
	.4byte 0xFFF29A20
	.4byte 0xFFEF40A8
	.4byte 0xFFEBE730
	.4byte 0xFFE88DB8
	.4byte 0xFFE53440
	.4byte 0xFFE1DAC8
	.4byte 0xFFDE8150
	.4byte 0xFFDB27D8
	.4byte 0xFFD7CE60
	.4byte 0xFFD474E8
	.4byte 0xFFD11B70
	.4byte 0xFFCDC1F8
	.4byte 0xFFCA6880
	.4byte 0xFFC70F08
	.4byte 0xFFC3B590
	.4byte 0xFFC05C18
	.4byte 0xFFBD02A0
	.4byte 0xFFB9A928
	.4byte 0xFFB64FB0
	.4byte 0xFFB2F638
	.4byte 0xFFAF9CC0
	.4byte 0xFFAC4348
	.4byte 0xFFA8E9D0
	.4byte 0xFFA59058
	.4byte 0xFFA236E0
	.4byte 0xFF9EDD68
	.4byte 0xFF9B83F0
	.4byte 0xFF982A78
	.4byte 0x00000000
	.4byte 0xFFFF5978
	.4byte 0xFFFEB2F0
	.4byte 0xFFFE0C68
	.4byte 0xFFFD65E0
	.4byte 0xFFFCBF58
	.4byte 0xFFFC18D0
	.4byte 0xFFFB7248
	.4byte 0xFFFACBC0
	.4byte 0xFFFA2538
	.4byte 0xFFF97EB0
	.4byte 0xFFF8D828
	.4byte 0xFFF831A0
	.4byte 0xFFF78B18
	.4byte 0xFFF6E490
	.4byte 0xFFF63E08
	.4byte 0xFFF59780
	.4byte 0xFFF4F0F8
	.4byte 0xFFF44A70
	.4byte 0xFFF3A3E8
	.4byte 0xFFF2FD60
	.4byte 0xFFF256D8
	.4byte 0xFFF1B050
	.4byte 0xFFF109C8
	.4byte 0xFFF06340
	.4byte 0xFFEFBCB8
	.4byte 0xFFEF1630
	.4byte 0xFFEE6FA8
	.4byte 0xFFEDC920
	.4byte 0xFFED2298
	.4byte 0xFFEC7C10
	.4byte 0xFFEBD588
.endobj gArConvPlttTbl

# .rodata:0xA80 | 0x8160E3E8 | size: 0xC00
.obj gArDeconvPlttTbl, local
	.4byte 0xFF4DFF4E
	.4byte 0xFF4FFF51
	.4byte 0xFF52FF54
	.4byte 0xFF55FF56
	.4byte 0xFF58FF59
	.4byte 0xFF5BFF5C
	.4byte 0xFF5DFF5F
	.4byte 0xFF60FF62
	.4byte 0xFF63FF64
	.4byte 0xFF66FF67
	.4byte 0xFF69FF6A
	.4byte 0xFF6BFF6D
	.4byte 0xFF6EFF70
	.4byte 0xFF71FF72
	.4byte 0xFF74FF75
	.4byte 0xFF77FF78
	.4byte 0xFF79FF7B
	.4byte 0xFF7CFF7E
	.4byte 0xFF7FFF80
	.4byte 0xFF82FF83
	.4byte 0xFF85FF86
	.4byte 0xFF87FF89
	.4byte 0xFF8AFF8C
	.4byte 0xFF8DFF8E
	.4byte 0xFF90FF91
	.4byte 0xFF93FF94
	.4byte 0xFF95FF97
	.4byte 0xFF98FF9A
	.4byte 0xFF9BFF9C
	.4byte 0xFF9EFF9F
	.4byte 0xFFA1FFA2
	.4byte 0xFFA3FFA5
	.4byte 0xFFA6FFA8
	.4byte 0xFFA9FFAA
	.4byte 0xFFACFFAD
	.4byte 0xFFAFFFB0
	.4byte 0xFFB1FFB3
	.4byte 0xFFB4FFB6
	.4byte 0xFFB7FFB8
	.4byte 0xFFBAFFBB
	.4byte 0xFFBDFFBE
	.4byte 0xFFC0FFC1
	.4byte 0xFFC2FFC4
	.4byte 0xFFC5FFC7
	.4byte 0xFFC8FFC9
	.4byte 0xFFCBFFCC
	.4byte 0xFFCEFFCF
	.4byte 0xFFD0FFD2
	.4byte 0xFFD3FFD5
	.4byte 0xFFD6FFD7
	.4byte 0xFFD9FFDA
	.4byte 0xFFDCFFDD
	.4byte 0xFFDEFFE0
	.4byte 0xFFE1FFE3
	.4byte 0xFFE4FFE5
	.4byte 0xFFE7FFE8
	.4byte 0xFFEAFFEB
	.4byte 0xFFECFFEE
	.4byte 0xFFEFFFF1
	.4byte 0xFFF2FFF3
	.4byte 0xFFF5FFF6
	.4byte 0xFFF8FFF9
	.4byte 0xFFFAFFFC
	.4byte 0xFFFDFFFF
	.4byte 0x00000001
	.4byte 0x00030004
	.4byte 0x00060007
	.4byte 0x0008000A
	.4byte 0x000B000D
	.4byte 0x000E000F
	.4byte 0x00110012
	.4byte 0x00140015
	.4byte 0x00160018
	.4byte 0x0019001B
	.4byte 0x001C001D
	.4byte 0x001F0020
	.4byte 0x00220023
	.4byte 0x00240026
	.4byte 0x00270029
	.4byte 0x002A002B
	.4byte 0x002D002E
	.4byte 0x00300031
	.4byte 0x00320034
	.4byte 0x00350037
	.4byte 0x00380039
	.4byte 0x003B003C
	.4byte 0x003E003F
	.4byte 0x00400042
	.4byte 0x00430045
	.4byte 0x00460048
	.4byte 0x0049004A
	.4byte 0x004C004D
	.4byte 0x004F0050
	.4byte 0x00510053
	.4byte 0x00540056
	.4byte 0x00570058
	.4byte 0x005A005B
	.4byte 0x005D005E
	.4byte 0x005F0061
	.4byte 0x00620064
	.4byte 0x00650066
	.4byte 0x00680069
	.4byte 0x006B006C
	.4byte 0x006D006F
	.4byte 0x00700072
	.4byte 0x00730074
	.4byte 0x00760077
	.4byte 0x0079007A
	.4byte 0x007B007D
	.4byte 0x007E0080
	.4byte 0x00810082
	.4byte 0x00840085
	.4byte 0x00870088
	.4byte 0x0089008B
	.4byte 0x008C008E
	.4byte 0x008F0090
	.4byte 0x00920093
	.4byte 0x00950096
	.4byte 0x00970099
	.4byte 0x009A009C
	.4byte 0x009D009E
	.4byte 0x00A000A1
	.4byte 0x00A300A4
	.4byte 0x00A500A7
	.4byte 0x00A800AA
	.4byte 0x00AB00AC
	.4byte 0x00AE00AF
	.4byte 0x00B100B2
	.4byte 0x002C8D00
	.4byte 0x002C34E6
	.4byte 0x002BDCCC
	.4byte 0x002B84B2
	.4byte 0x002B2C98
	.4byte 0x002AD47E
	.4byte 0x002A7C64
	.4byte 0x002A244A
	.4byte 0x0029CC30
	.4byte 0x00297416
	.4byte 0x00291BFC
	.4byte 0x0028C3E2
	.4byte 0x00286BC8
	.4byte 0x002813AE
	.4byte 0x0027BB94
	.4byte 0x0027637A
	.4byte 0x00270B60
	.4byte 0x0026B346
	.4byte 0x00265B2C
	.4byte 0x00260312
	.4byte 0x0025AAF8
	.4byte 0x002552DE
	.4byte 0x0024FAC4
	.4byte 0x0024A2AA
	.4byte 0x00244A90
	.4byte 0x0023F276
	.4byte 0x00239A5C
	.4byte 0x00234242
	.4byte 0x0022EA28
	.4byte 0x0022920E
	.4byte 0x002239F4
	.4byte 0x0021E1DA
	.4byte 0x002189C0
	.4byte 0x002131A6
	.4byte 0x0020D98C
	.4byte 0x00208172
	.4byte 0x00202958
	.4byte 0x001FD13E
	.4byte 0x001F7924
	.4byte 0x001F210A
	.4byte 0x001EC8F0
	.4byte 0x001E70D6
	.4byte 0x001E18BC
	.4byte 0x001DC0A2
	.4byte 0x001D6888
	.4byte 0x001D106E
	.4byte 0x001CB854
	.4byte 0x001C603A
	.4byte 0x001C0820
	.4byte 0x001BB006
	.4byte 0x001B57EC
	.4byte 0x001AFFD2
	.4byte 0x001AA7B8
	.4byte 0x001A4F9E
	.4byte 0x0019F784
	.4byte 0x00199F6A
	.4byte 0x00194750
	.4byte 0x0018EF36
	.4byte 0x0018971C
	.4byte 0x00183F02
	.4byte 0x0017E6E8
	.4byte 0x00178ECE
	.4byte 0x001736B4
	.4byte 0x0016DE9A
	.4byte 0x00168680
	.4byte 0x00162E66
	.4byte 0x0015D64C
	.4byte 0x00157E32
	.4byte 0x00152618
	.4byte 0x0014CDFE
	.4byte 0x001475E4
	.4byte 0x00141DCA
	.4byte 0x0013C5B0
	.4byte 0x00136D96
	.4byte 0x0013157C
	.4byte 0x0012BD62
	.4byte 0x00126548
	.4byte 0x00120D2E
	.4byte 0x0011B514
	.4byte 0x00115CFA
	.4byte 0x001104E0
	.4byte 0x0010ACC6
	.4byte 0x001054AC
	.4byte 0x000FFC92
	.4byte 0x000FA478
	.4byte 0x000F4C5E
	.4byte 0x000EF444
	.4byte 0x000E9C2A
	.4byte 0x000E4410
	.4byte 0x000DEBF6
	.4byte 0x000D93DC
	.4byte 0x000D3BC2
	.4byte 0x000CE3A8
	.4byte 0x000C8B8E
	.4byte 0x000C3374
	.4byte 0x000BDB5A
	.4byte 0x000B8340
	.4byte 0x000B2B26
	.4byte 0x000AD30C
	.4byte 0x000A7AF2
	.4byte 0x000A22D8
	.4byte 0x0009CABE
	.4byte 0x000972A4
	.4byte 0x00091A8A
	.4byte 0x0008C270
	.4byte 0x00086A56
	.4byte 0x0008123C
	.4byte 0x0007BA22
	.4byte 0x00076208
	.4byte 0x000709EE
	.4byte 0x0006B1D4
	.4byte 0x000659BA
	.4byte 0x000601A0
	.4byte 0x0005A986
	.4byte 0x0005516C
	.4byte 0x0004F952
	.4byte 0x0004A138
	.4byte 0x0004491E
	.4byte 0x0003F104
	.4byte 0x000398EA
	.4byte 0x000340D0
	.4byte 0x0002E8B6
	.4byte 0x0002909C
	.4byte 0x00023882
	.4byte 0x0001E068
	.4byte 0x0001884E
	.4byte 0x00013034
	.4byte 0x0000D81A
	.4byte 0x00008000
	.4byte 0x000027E6
	.4byte 0xFFFFCFCC
	.4byte 0xFFFF77B2
	.4byte 0xFFFF1F98
	.4byte 0xFFFEC77E
	.4byte 0xFFFE6F64
	.4byte 0xFFFE174A
	.4byte 0xFFFDBF30
	.4byte 0xFFFD6716
	.4byte 0xFFFD0EFC
	.4byte 0xFFFCB6E2
	.4byte 0xFFFC5EC8
	.4byte 0xFFFC06AE
	.4byte 0xFFFBAE94
	.4byte 0xFFFB567A
	.4byte 0xFFFAFE60
	.4byte 0xFFFAA646
	.4byte 0xFFFA4E2C
	.4byte 0xFFF9F612
	.4byte 0xFFF99DF8
	.4byte 0xFFF945DE
	.4byte 0xFFF8EDC4
	.4byte 0xFFF895AA
	.4byte 0xFFF83D90
	.4byte 0xFFF7E576
	.4byte 0xFFF78D5C
	.4byte 0xFFF73542
	.4byte 0xFFF6DD28
	.4byte 0xFFF6850E
	.4byte 0xFFF62CF4
	.4byte 0xFFF5D4DA
	.4byte 0xFFF57CC0
	.4byte 0xFFF524A6
	.4byte 0xFFF4CC8C
	.4byte 0xFFF47472
	.4byte 0xFFF41C58
	.4byte 0xFFF3C43E
	.4byte 0xFFF36C24
	.4byte 0xFFF3140A
	.4byte 0xFFF2BBF0
	.4byte 0xFFF263D6
	.4byte 0xFFF20BBC
	.4byte 0xFFF1B3A2
	.4byte 0xFFF15B88
	.4byte 0xFFF1036E
	.4byte 0xFFF0AB54
	.4byte 0xFFF0533A
	.4byte 0xFFEFFB20
	.4byte 0xFFEFA306
	.4byte 0xFFEF4AEC
	.4byte 0xFFEEF2D2
	.4byte 0xFFEE9AB8
	.4byte 0xFFEE429E
	.4byte 0xFFEDEA84
	.4byte 0xFFED926A
	.4byte 0xFFED3A50
	.4byte 0xFFECE236
	.4byte 0xFFEC8A1C
	.4byte 0xFFEC3202
	.4byte 0xFFEBD9E8
	.4byte 0xFFEB81CE
	.4byte 0xFFEB29B4
	.4byte 0xFFEAD19A
	.4byte 0xFFEA7980
	.4byte 0xFFEA2166
	.4byte 0xFFE9C94C
	.4byte 0xFFE97132
	.4byte 0xFFE91918
	.4byte 0xFFE8C0FE
	.4byte 0xFFE868E4
	.4byte 0xFFE810CA
	.4byte 0xFFE7B8B0
	.4byte 0xFFE76096
	.4byte 0xFFE7087C
	.4byte 0xFFE6B062
	.4byte 0xFFE65848
	.4byte 0xFFE6002E
	.4byte 0xFFE5A814
	.4byte 0xFFE54FFA
	.4byte 0xFFE4F7E0
	.4byte 0xFFE49FC6
	.4byte 0xFFE447AC
	.4byte 0xFFE3EF92
	.4byte 0xFFE39778
	.4byte 0xFFE33F5E
	.4byte 0xFFE2E744
	.4byte 0xFFE28F2A
	.4byte 0xFFE23710
	.4byte 0xFFE1DEF6
	.4byte 0xFFE186DC
	.4byte 0xFFE12EC2
	.4byte 0xFFE0D6A8
	.4byte 0xFFE07E8E
	.4byte 0xFFE02674
	.4byte 0xFFDFCE5A
	.4byte 0xFFDF7640
	.4byte 0xFFDF1E26
	.4byte 0xFFDEC60C
	.4byte 0xFFDE6DF2
	.4byte 0xFFDE15D8
	.4byte 0xFFDDBDBE
	.4byte 0xFFDD65A4
	.4byte 0xFFDD0D8A
	.4byte 0xFFDCB570
	.4byte 0xFFDC5D56
	.4byte 0xFFDC053C
	.4byte 0xFFDBAD22
	.4byte 0xFFDB5508
	.4byte 0xFFDAFCEE
	.4byte 0xFFDAA4D4
	.4byte 0xFFDA4CBA
	.4byte 0xFFD9F4A0
	.4byte 0xFFD99C86
	.4byte 0xFFD9446C
	.4byte 0xFFD8EC52
	.4byte 0xFFD89438
	.4byte 0xFFD83C1E
	.4byte 0xFFD7E404
	.4byte 0xFFD78BEA
	.4byte 0xFFD733D0
	.4byte 0xFFD6DBB6
	.4byte 0xFFD6839C
	.4byte 0xFFD62B82
	.4byte 0xFFD5D368
	.4byte 0xFFD57B4E
	.4byte 0xFFD52334
	.4byte 0xFFD4CB1A
	.4byte 0x005B6900
	.4byte 0x005AB22E
	.4byte 0x0059FB5C
	.4byte 0x0059448A
	.4byte 0x00588DB8
	.4byte 0x0057D6E6
	.4byte 0x00572014
	.4byte 0x00566942
	.4byte 0x0055B270
	.4byte 0x0054FB9E
	.4byte 0x005444CC
	.4byte 0x00538DFA
	.4byte 0x0052D728
	.4byte 0x00522056
	.4byte 0x00516984
	.4byte 0x0050B2B2
	.4byte 0x004FFBE0
	.4byte 0x004F450E
	.4byte 0x004E8E3C
	.4byte 0x004DD76A
	.4byte 0x004D2098
	.4byte 0x004C69C6
	.4byte 0x004BB2F4
	.4byte 0x004AFC22
	.4byte 0x004A4550
	.4byte 0x00498E7E
	.4byte 0x0048D7AC
	.4byte 0x004820DA
	.4byte 0x00476A08
	.4byte 0x0046B336
	.4byte 0x0045FC64
	.4byte 0x00454592
	.4byte 0x00448EC0
	.4byte 0x0043D7EE
	.4byte 0x0043211C
	.4byte 0x00426A4A
	.4byte 0x0041B378
	.4byte 0x0040FCA6
	.4byte 0x004045D4
	.4byte 0x003F8F02
	.4byte 0x003ED830
	.4byte 0x003E215E
	.4byte 0x003D6A8C
	.4byte 0x003CB3BA
	.4byte 0x003BFCE8
	.4byte 0x003B4616
	.4byte 0x003A8F44
	.4byte 0x0039D872
	.4byte 0x003921A0
	.4byte 0x00386ACE
	.4byte 0x0037B3FC
	.4byte 0x0036FD2A
	.4byte 0x00364658
	.4byte 0x00358F86
	.4byte 0x0034D8B4
	.4byte 0x003421E2
	.4byte 0x00336B10
	.4byte 0x0032B43E
	.4byte 0x0031FD6C
	.4byte 0x0031469A
	.4byte 0x00308FC8
	.4byte 0x002FD8F6
	.4byte 0x002F2224
	.4byte 0x002E6B52
	.4byte 0x002DB480
	.4byte 0x002CFDAE
	.4byte 0x002C46DC
	.4byte 0x002B900A
	.4byte 0x002AD938
	.4byte 0x002A2266
	.4byte 0x00296B94
	.4byte 0x0028B4C2
	.4byte 0x0027FDF0
	.4byte 0x0027471E
	.4byte 0x0026904C
	.4byte 0x0025D97A
	.4byte 0x002522A8
	.4byte 0x00246BD6
	.4byte 0x0023B504
	.4byte 0x0022FE32
	.4byte 0x00224760
	.4byte 0x0021908E
	.4byte 0x0020D9BC
	.4byte 0x002022EA
	.4byte 0x001F6C18
	.4byte 0x001EB546
	.4byte 0x001DFE74
	.4byte 0x001D47A2
	.4byte 0x001C90D0
	.4byte 0x001BD9FE
	.4byte 0x001B232C
	.4byte 0x001A6C5A
	.4byte 0x0019B588
	.4byte 0x0018FEB6
	.4byte 0x001847E4
	.4byte 0x00179112
	.4byte 0x0016DA40
	.4byte 0x0016236E
	.4byte 0x00156C9C
	.4byte 0x0014B5CA
	.4byte 0x0013FEF8
	.4byte 0x00134826
	.4byte 0x00129154
	.4byte 0x0011DA82
	.4byte 0x001123B0
	.4byte 0x00106CDE
	.4byte 0x000FB60C
	.4byte 0x000EFF3A
	.4byte 0x000E4868
	.4byte 0x000D9196
	.4byte 0x000CDAC4
	.4byte 0x000C23F2
	.4byte 0x000B6D20
	.4byte 0x000AB64E
	.4byte 0x0009FF7C
	.4byte 0x000948AA
	.4byte 0x000891D8
	.4byte 0x0007DB06
	.4byte 0x00072434
	.4byte 0x00066D62
	.4byte 0x0005B690
	.4byte 0x0004FFBE
	.4byte 0x000448EC
	.4byte 0x0003921A
	.4byte 0x0002DB48
	.4byte 0x00022476
	.4byte 0x00016DA4
	.4byte 0x0000B6D2
	.4byte 0x00000000
	.4byte 0xFFFF492E
	.4byte 0xFFFE925C
	.4byte 0xFFFDDB8A
	.4byte 0xFFFD24B8
	.4byte 0xFFFC6DE6
	.4byte 0xFFFBB714
	.4byte 0xFFFB0042
	.4byte 0xFFFA4970
	.4byte 0xFFF9929E
	.4byte 0xFFF8DBCC
	.4byte 0xFFF824FA
	.4byte 0xFFF76E28
	.4byte 0xFFF6B756
	.4byte 0xFFF60084
	.4byte 0xFFF549B2
	.4byte 0xFFF492E0
	.4byte 0xFFF3DC0E
	.4byte 0xFFF3253C
	.4byte 0xFFF26E6A
	.4byte 0xFFF1B798
	.4byte 0xFFF100C6
	.4byte 0xFFF049F4
	.4byte 0xFFEF9322
	.4byte 0xFFEEDC50
	.4byte 0xFFEE257E
	.4byte 0xFFED6EAC
	.4byte 0xFFECB7DA
	.4byte 0xFFEC0108
	.4byte 0xFFEB4A36
	.4byte 0xFFEA9364
	.4byte 0xFFE9DC92
	.4byte 0xFFE925C0
	.4byte 0xFFE86EEE
	.4byte 0xFFE7B81C
	.4byte 0xFFE7014A
	.4byte 0xFFE64A78
	.4byte 0xFFE593A6
	.4byte 0xFFE4DCD4
	.4byte 0xFFE42602
	.4byte 0xFFE36F30
	.4byte 0xFFE2B85E
	.4byte 0xFFE2018C
	.4byte 0xFFE14ABA
	.4byte 0xFFE093E8
	.4byte 0xFFDFDD16
	.4byte 0xFFDF2644
	.4byte 0xFFDE6F72
	.4byte 0xFFDDB8A0
	.4byte 0xFFDD01CE
	.4byte 0xFFDC4AFC
	.4byte 0xFFDB942A
	.4byte 0xFFDADD58
	.4byte 0xFFDA2686
	.4byte 0xFFD96FB4
	.4byte 0xFFD8B8E2
	.4byte 0xFFD80210
	.4byte 0xFFD74B3E
	.4byte 0xFFD6946C
	.4byte 0xFFD5DD9A
	.4byte 0xFFD526C8
	.4byte 0xFFD46FF6
	.4byte 0xFFD3B924
	.4byte 0xFFD30252
	.4byte 0xFFD24B80
	.4byte 0xFFD194AE
	.4byte 0xFFD0DDDC
	.4byte 0xFFD0270A
	.4byte 0xFFCF7038
	.4byte 0xFFCEB966
	.4byte 0xFFCE0294
	.4byte 0xFFCD4BC2
	.4byte 0xFFCC94F0
	.4byte 0xFFCBDE1E
	.4byte 0xFFCB274C
	.4byte 0xFFCA707A
	.4byte 0xFFC9B9A8
	.4byte 0xFFC902D6
	.4byte 0xFFC84C04
	.4byte 0xFFC79532
	.4byte 0xFFC6DE60
	.4byte 0xFFC6278E
	.4byte 0xFFC570BC
	.4byte 0xFFC4B9EA
	.4byte 0xFFC40318
	.4byte 0xFFC34C46
	.4byte 0xFFC29574
	.4byte 0xFFC1DEA2
	.4byte 0xFFC127D0
	.4byte 0xFFC070FE
	.4byte 0xFFBFBA2C
	.4byte 0xFFBF035A
	.4byte 0xFFBE4C88
	.4byte 0xFFBD95B6
	.4byte 0xFFBCDEE4
	.4byte 0xFFBC2812
	.4byte 0xFFBB7140
	.4byte 0xFFBABA6E
	.4byte 0xFFBA039C
	.4byte 0xFFB94CCA
	.4byte 0xFFB895F8
	.4byte 0xFFB7DF26
	.4byte 0xFFB72854
	.4byte 0xFFB67182
	.4byte 0xFFB5BAB0
	.4byte 0xFFB503DE
	.4byte 0xFFB44D0C
	.4byte 0xFFB3963A
	.4byte 0xFFB2DF68
	.4byte 0xFFB22896
	.4byte 0xFFB171C4
	.4byte 0xFFB0BAF2
	.4byte 0xFFB00420
	.4byte 0xFFAF4D4E
	.4byte 0xFFAE967C
	.4byte 0xFFADDFAA
	.4byte 0xFFAD28D8
	.4byte 0xFFAC7206
	.4byte 0xFFABBB34
	.4byte 0xFFAB0462
	.4byte 0xFFAA4D90
	.4byte 0xFFA996BE
	.4byte 0xFFA8DFEC
	.4byte 0xFFA8291A
	.4byte 0xFFA77248
	.4byte 0xFFA6BB76
	.4byte 0xFFA604A4
	.4byte 0xFFA54DD2
	.4byte 0xFF1DFF1F
	.4byte 0xFF21FF22
	.4byte 0xFF24FF26
	.4byte 0xFF28FF2A
	.4byte 0xFF2BFF2D
	.4byte 0xFF2FFF31
	.4byte 0xFF32FF34
	.4byte 0xFF36FF38
	.4byte 0xFF3AFF3B
	.4byte 0xFF3DFF3F
	.4byte 0xFF41FF42
	.4byte 0xFF44FF46
	.4byte 0xFF48FF49
	.4byte 0xFF4BFF4D
	.4byte 0xFF4FFF51
	.4byte 0xFF52FF54
	.4byte 0xFF56FF58
	.4byte 0xFF59FF5B
	.4byte 0xFF5DFF5F
	.4byte 0xFF61FF62
	.4byte 0xFF64FF66
	.4byte 0xFF68FF69
	.4byte 0xFF6BFF6D
	.4byte 0xFF6FFF70
	.4byte 0xFF72FF74
	.4byte 0xFF76FF78
	.4byte 0xFF79FF7B
	.4byte 0xFF7DFF7F
	.4byte 0xFF80FF82
	.4byte 0xFF84FF86
	.4byte 0xFF88FF89
	.4byte 0xFF8BFF8D
	.4byte 0xFF8FFF90
	.4byte 0xFF92FF94
	.4byte 0xFF96FF97
	.4byte 0xFF99FF9B
	.4byte 0xFF9DFF9F
	.4byte 0xFFA0FFA2
	.4byte 0xFFA4FFA6
	.4byte 0xFFA7FFA9
	.4byte 0xFFABFFAD
	.4byte 0xFFAEFFB0
	.4byte 0xFFB2FFB4
	.4byte 0xFFB6FFB7
	.4byte 0xFFB9FFBB
	.4byte 0xFFBDFFBE
	.4byte 0xFFC0FFC2
	.4byte 0xFFC4FFC6
	.4byte 0xFFC7FFC9
	.4byte 0xFFCBFFCD
	.4byte 0xFFCEFFD0
	.4byte 0xFFD2FFD4
	.4byte 0xFFD5FFD7
	.4byte 0xFFD9FFDB
	.4byte 0xFFDDFFDE
	.4byte 0xFFE0FFE2
	.4byte 0xFFE4FFE5
	.4byte 0xFFE7FFE9
	.4byte 0xFFEBFFED
	.4byte 0xFFEEFFF0
	.4byte 0xFFF2FFF4
	.4byte 0xFFF5FFF7
	.4byte 0xFFF9FFFB
	.4byte 0xFFFCFFFE
	.4byte 0x00000002
	.4byte 0x00040005
	.4byte 0x00070009
	.4byte 0x000B000C
	.4byte 0x000E0010
	.4byte 0x00120013
	.4byte 0x00150017
	.4byte 0x0019001B
	.4byte 0x001C001E
	.4byte 0x00200022
	.4byte 0x00230025
	.4byte 0x00270029
	.4byte 0x002B002C
	.4byte 0x002E0030
	.4byte 0x00320033
	.4byte 0x00350037
	.4byte 0x0039003A
	.4byte 0x003C003E
	.4byte 0x00400042
	.4byte 0x00430045
	.4byte 0x00470049
	.4byte 0x004A004C
	.4byte 0x004E0050
	.4byte 0x00520053
	.4byte 0x00550057
	.4byte 0x0059005A
	.4byte 0x005C005E
	.4byte 0x00600061
	.4byte 0x00630065
	.4byte 0x00670069
	.4byte 0x006A006C
	.4byte 0x006E0070
	.4byte 0x00710073
	.4byte 0x00750077
	.4byte 0x0078007A
	.4byte 0x007C007E
	.4byte 0x00800081
	.4byte 0x00830085
	.4byte 0x00870088
	.4byte 0x008A008C
	.4byte 0x008E0090
	.4byte 0x00910093
	.4byte 0x00950097
	.4byte 0x0098009A
	.4byte 0x009C009E
	.4byte 0x009F00A1
	.4byte 0x00A300A5
	.4byte 0x00A700A8
	.4byte 0x00AA00AC
	.4byte 0x00AE00AF
	.4byte 0x00B100B3
	.4byte 0x00B500B7
	.4byte 0x00B800BA
	.4byte 0x00BC00BE
	.4byte 0x00BF00C1
	.4byte 0x00C300C5
	.4byte 0x00C600C8
	.4byte 0x00CA00CC
	.4byte 0x00CE00CF
	.4byte 0x00D100D3
	.4byte 0x00D500D6
	.4byte 0x00D800DA
	.4byte 0x00DC00DE
	.4byte 0x00DF00E1
.endobj gArDeconvPlttTbl

# .rodata:0x1680 | 0x8160EFE8 | size: 0x30
.obj gArDc_luminance_huffTable, local
	.4byte 0x00018002
	.4byte 0x00030000
	.4byte 0xC003C004
	.4byte 0x80050001
	.4byte 0x00020003
	.4byte 0x00040005
	.4byte 0x80010006
	.4byte 0x80010007
	.4byte 0x80010008
	.4byte 0x80010009
	.4byte 0x8001000A
	.4byte 0x8001000B
.endobj gArDc_luminance_huffTable

# .rodata:0x16B0 | 0x8160F018 | size: 0x30
.obj gArDc_chrominance_huffTable, local
	.4byte 0x0001C002
	.4byte 0x80030000
	.4byte 0x00010002
	.4byte 0x80010003
	.4byte 0x80010004
	.4byte 0x80010005
	.4byte 0x80010006
	.4byte 0x80010007
	.4byte 0x80010008
	.4byte 0x80010009
	.4byte 0x8001000A
	.4byte 0x8001000B
.endobj gArDc_chrominance_huffTable

# 0x816392D8..0x816394A8 | size: 0x1D0
.data
.balign 8

# .data:0x0 | 0x816392D8 | size: 0x1D0
.obj hufftreePtr, global
	.4byte gArDc_luminance_huffTable
	.4byte gArDc_luminance_huffTable
	.4byte gArDc_chrominance_huffTable
	.4byte gArDc_luminance_huffTable
	.4byte 0x6465636F
	.4byte 0x6D707265
	.4byte 0x73734762
	.4byte 0x614F6468
	.4byte 0x203A2073
	.4byte 0x6F757263
	.4byte 0x65207369
	.4byte 0x7A652065
	.4byte 0x72726F72
	.4byte 0x0A006465
	.4byte 0x636F6D70
	.4byte 0x72657373
	.4byte 0x4762614F
	.4byte 0x6468203A
	.4byte 0x20646573
	.4byte 0x74696E61
	.4byte 0x74696F6E
	.4byte 0x20627566
	.4byte 0x66657220
	.4byte 0x6F766572
	.4byte 0x0A006465
	.4byte 0x636F6D70
	.4byte 0x72657373
	.4byte 0x4762614F
	.4byte 0x6468203A
	.4byte 0x20494E49
	.4byte 0x5449414C
	.4byte 0x495A4520
	.4byte 0x4552524F
	.4byte 0x52202530
	.4byte 0x38780A00
	.4byte 0x6465636F
	.4byte 0x6D707265
	.4byte 0x73734762
	.4byte 0x614F6468
	.4byte 0x203A2044
	.4byte 0x45434F4D
	.4byte 0x50524553
	.4byte 0x53494E47
	.4byte 0x20455252
	.4byte 0x4F522025
	.4byte 0x3038780A
	.4byte 0x00646563
	.4byte 0x6F6D7072
	.4byte 0x65737347
	.4byte 0x62614F64
	.4byte 0x68203A20
	.4byte 0x434F4C4F
	.4byte 0x52204445
	.4byte 0x434F4E56
	.4byte 0x45525349
	.4byte 0x4F4E2045
	.4byte 0x52524F52
	.4byte 0x20253038
	.4byte 0x780A0063
	.4byte 0x6F6D7072
	.4byte 0x65737347
	.4byte 0x62614F64
	.4byte 0x68203A20
	.4byte 0x494E4954
	.4byte 0x49414C49
	.4byte 0x5A452045
	.4byte 0x52524F52
	.4byte 0x20253038
	.4byte 0x780A0063
	.4byte 0x6F6D7072
	.4byte 0x65737347
	.4byte 0x62614F64
	.4byte 0x68203A20
	.4byte 0x434F4C4F
	.4byte 0x5220434F
	.4byte 0x4E564552
	.4byte 0x53494F4E
	.4byte 0x20455252
	.4byte 0x4F522025
	.4byte 0x3038780A
	.4byte 0x00636F6D
	.4byte 0x70726573
	.4byte 0x73476261
	.4byte 0x4F646820
	.4byte 0x3A20434F
	.4byte 0x4D505245
	.4byte 0x5353204F
	.4byte 0x56455220
	.4byte 0x414E4420
	.4byte 0x52455452
	.4byte 0x59202564
	.4byte 0x20713D25
	.4byte 0x642C2025
	.4byte 0x3038780A
	.4byte 0x00636F6D
	.4byte 0x70726573
	.4byte 0x73476261
	.4byte 0x4F646820
	.4byte 0x3A20494E
	.4byte 0x49544941
	.4byte 0x4C495A45
	.4byte 0x20455252
	.4byte 0x4F523220
	.4byte 0x25303878
	.4byte 0x0A00636F
	.4byte 0x6D707265
	.4byte 0x73734762
	.4byte 0x614F6468
	.4byte 0x203A2043
	.4byte 0x4F4D5052
	.4byte 0x45535349
	.4byte 0x4E472045
	.4byte 0x52524F52
	.4byte 0x20253038
	.4byte 0x780A0000
	.4byte 0x00000000
.endobj hufftreePtr

# 0x816945A0..0x816945C8 | size: 0x28
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816945A0 | size: 0x4
.obj lbl_816945A0, global
	.float 16
.endobj lbl_816945A0

# .sdata2:0x4 | 0x816945A4 | size: 0x4
.obj lbl_816945A4, global
	.float 128
.endobj lbl_816945A4

# .sdata2:0x8 | 0x816945A8 | size: 0x4
.obj lbl_816945A8, global
	.float 1.1643835
.endobj lbl_816945A8

# .sdata2:0xC | 0x816945AC | size: 0x4
.obj lbl_816945AC, global
	.float 1.5960271
.endobj lbl_816945AC

# .sdata2:0x10 | 0x816945B0 | size: 0x4
.obj lbl_816945B0, global
	.float 0.3917616
.endobj lbl_816945B0

# .sdata2:0x14 | 0x816945B4 | size: 0x4
.obj lbl_816945B4, global
	.float 0.8129681
.endobj lbl_816945B4

# .sdata2:0x18 | 0x816945B8 | size: 0x8
.obj lbl_816945B8, global
	.double 2.01723105
.endobj lbl_816945B8

# .sdata2:0x20 | 0x816945C0 | size: 0x8
.obj lbl_816945C0, global
	.double 4503599627370496
.endobj lbl_816945C0
