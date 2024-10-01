.include "macros.inc"
.file "wd_request.c"

# 0x814D98D0..0x814D9A88 | size: 0x1B8
.text
.balign 4

# .text:0x0 | 0x814D98D0 | size: 0xE4
.fn WD_Scan, global
/* 814D98D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D98D4 | 7C 08 02 A6 */	mflr r0
/* 814D98D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D98DC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D98E0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D98E4 | 7C BF 2B 78 */	mr r31, r5
/* 814D98E8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D98EC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D98F0 | 7C 9D 23 78 */	mr r29, r4
/* 814D98F4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814D98F8 | 7C 7C 1B 78 */	mr r28, r3
/* 814D98FC | 41 82 00 0C */	beq .L_814D9908
/* 814D9900 | 28 05 00 40 */	cmplwi r5, 0x40
/* 814D9904 | 40 80 00 10 */	bge .L_814D9914
.L_814D9908:
/* 814D9908 | 3C 60 80 01 */	lis r3, 0x8001
/* 814D990C | 38 63 80 01 */	subi r3, r3, 0x7fff
/* 814D9910 | 48 00 00 84 */	b .L_814D9994
.L_814D9914:
/* 814D9914 | 4B FF FE C9 */	bl WDi_GetWork
/* 814D9918 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D991C | 38 80 00 60 */	li r4, 0x60
/* 814D9920 | 38 A0 00 20 */	li r5, 0x20
/* 814D9924 | 48 09 A6 99 */	bl iosAllocAligned
/* 814D9928 | 38 83 00 10 */	addi r4, r3, 0x10
/* 814D992C | 38 00 00 27 */	li r0, 0x27
/* 814D9930 | 7C 7E 1B 78 */	mr r30, r3
/* 814D9934 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814D9938 | 38 C3 00 0F */	addi r6, r3, 0xf
/* 814D993C | 38 BC FF FF */	subi r5, r28, 0x1
/* 814D9940 | 7C 09 03 A6 */	mtctr r0
.L_814D9944:
/* 814D9944 | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 814D9948 | 8C 05 00 02 */	lbzu r0, 0x2(r5)
/* 814D994C | 98 86 00 01 */	stb r4, 0x1(r6)
/* 814D9950 | 9C 06 00 02 */	stbu r0, 0x2(r6)
/* 814D9954 | 42 00 FF F0 */	bdnz .L_814D9944
/* 814D9958 | 93 A3 00 08 */	stw r29, 0x8(r3)
/* 814D995C | 38 00 00 4E */	li r0, 0x4e
/* 814D9960 | 7F C6 F3 78 */	mr r6, r30
/* 814D9964 | 38 80 00 01 */	li r4, 0x1
/* 814D9968 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814D996C | 38 A0 00 01 */	li r5, 0x1
/* 814D9970 | 93 E3 00 0C */	stw r31, 0xc(r3)
/* 814D9974 | 38 60 10 0A */	li r3, 0x100a
/* 814D9978 | 4B FF FE 71 */	bl WDi_Ioctlv
/* 814D997C | 7C 7F 1B 78 */	mr r31, r3
/* 814D9980 | 4B FF FE 5D */	bl WDi_GetWork
/* 814D9984 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D9988 | 7F C4 F3 78 */	mr r4, r30
/* 814D998C | 48 09 A6 35 */	bl iosFree
/* 814D9990 | 7F E3 FB 78 */	mr r3, r31
.L_814D9994:
/* 814D9994 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D9998 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D999C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D99A0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D99A4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814D99A8 | 7C 08 03 A6 */	mtlr r0
/* 814D99AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D99B0 | 4E 80 00 20 */	blr
.endfn WD_Scan

# .text:0xE4 | 0x814D99B4 | size: 0xD4
.fn WD_GetInfo, global
/* 814D99B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D99B8 | 7C 08 02 A6 */	mflr r0
/* 814D99BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D99C0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D99C4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D99C8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D99CC | 7C 7D 1B 78 */	mr r29, r3
/* 814D99D0 | 4B FF FE 0D */	bl WDi_GetWork
/* 814D99D4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D99D8 | 38 80 00 98 */	li r4, 0x98
/* 814D99DC | 38 A0 00 20 */	li r5, 0x20
/* 814D99E0 | 48 09 A5 DD */	bl iosAllocAligned
/* 814D99E4 | 38 83 00 08 */	addi r4, r3, 0x8
/* 814D99E8 | 38 00 00 48 */	li r0, 0x48
/* 814D99EC | 7C 7E 1B 78 */	mr r30, r3
/* 814D99F0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814D99F4 | 38 C3 00 07 */	addi r6, r3, 0x7
/* 814D99F8 | 38 BD FF FF */	subi r5, r29, 0x1
/* 814D99FC | 7C 09 03 A6 */	mtctr r0
.L_814D9A00:
/* 814D9A00 | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 814D9A04 | 8C 05 00 02 */	lbzu r0, 0x2(r5)
/* 814D9A08 | 98 86 00 01 */	stb r4, 0x1(r6)
/* 814D9A0C | 9C 06 00 02 */	stbu r0, 0x2(r6)
/* 814D9A10 | 42 00 FF F0 */	bdnz .L_814D9A00
/* 814D9A14 | 38 00 00 90 */	li r0, 0x90
/* 814D9A18 | 7F C6 F3 78 */	mr r6, r30
/* 814D9A1C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814D9A20 | 38 60 10 0E */	li r3, 0x100e
/* 814D9A24 | 38 80 00 00 */	li r4, 0x0
/* 814D9A28 | 38 A0 00 01 */	li r5, 0x1
/* 814D9A2C | 4B FF FD BD */	bl WDi_Ioctlv
/* 814D9A30 | 38 00 00 48 */	li r0, 0x48
/* 814D9A34 | 7C 7F 1B 78 */	mr r31, r3
/* 814D9A38 | 38 BD FF FF */	subi r5, r29, 0x1
/* 814D9A3C | 38 9E 00 07 */	addi r4, r30, 0x7
/* 814D9A40 | 7C 09 03 A6 */	mtctr r0
.L_814D9A44:
/* 814D9A44 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 814D9A48 | 8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 814D9A4C | 98 65 00 01 */	stb r3, 0x1(r5)
/* 814D9A50 | 9C 05 00 02 */	stbu r0, 0x2(r5)
/* 814D9A54 | 42 00 FF F0 */	bdnz .L_814D9A44
/* 814D9A58 | 4B FF FD 85 */	bl WDi_GetWork
/* 814D9A5C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D9A60 | 7F C4 F3 78 */	mr r4, r30
/* 814D9A64 | 48 09 A5 5D */	bl iosFree
/* 814D9A68 | 7F E3 FB 78 */	mr r3, r31
/* 814D9A6C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D9A70 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D9A74 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D9A78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D9A7C | 7C 08 03 A6 */	mtlr r0
/* 814D9A80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D9A84 | 4E 80 00 20 */	blr
.endfn WD_GetInfo
