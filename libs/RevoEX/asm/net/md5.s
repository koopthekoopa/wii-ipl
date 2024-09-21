.include "macros.inc"
.file "md5.c"

# 0x814937F4..0x81493F14 | size: 0x720
.text
.balign 4

# .text:0x0 | 0x814937F4 | size: 0x40
.fn NETMD5Init, global
/* 814937F4 | 3C E0 67 45 */	lis r7, 0x6745
/* 814937F8 | 3C C0 EF CE */	lis r6, 0xefce
/* 814937FC | 38 00 00 00 */	li r0, 0x0
/* 81493800 | 3C A0 98 BB */	lis r5, 0x98bb
/* 81493804 | 3C 80 10 32 */	lis r4, 0x1032
/* 81493808 | 38 E7 23 01 */	addi r7, r7, 0x2301
/* 8149380C | 38 C6 AB 89 */	subi r6, r6, 0x5477
/* 81493810 | 38 A5 DC FE */	subi r5, r5, 0x2302
/* 81493814 | 38 84 54 76 */	addi r4, r4, 0x5476
/* 81493818 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 8149381C | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 81493820 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 81493824 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 81493828 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8149382C | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81493830 | 4E 80 00 20 */	blr
.endfn NETMD5Init

# .text:0x40 | 0x81493834 | size: 0xF0
.fn NETMD5Update, global
/* 81493834 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81493838 | 7C 08 02 A6 */	mflr r0
/* 8149383C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81493840 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81493844 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81493848 | 7C 9E 23 78 */	mr r30, r4
/* 8149384C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81493850 | 7C BD 2B 78 */	mr r29, r5
/* 81493854 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81493858 | 7C 7C 1B 78 */	mr r28, r3
/* 8149385C | 80 E3 00 14 */	lwz r7, 0x14(r3)
/* 81493860 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81493864 | 7C C7 28 14 */	addc r6, r7, r5
/* 81493868 | 54 E7 06 BE */	clrlwi r7, r7, 26
/* 8149386C | 7C 00 01 94 */	addze r0, r0
/* 81493870 | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 81493874 | 23 E7 00 40 */	subfic r31, r7, 0x40
/* 81493878 | 7C 1F 28 40 */	cmplw r31, r5
/* 8149387C | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81493880 | 40 81 00 1C */	ble .L_8149389C
/* 81493884 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81493888 | 41 82 00 7C */	beq .L_81493904
/* 8149388C | 7C 63 3A 14 */	add r3, r3, r7
/* 81493890 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81493894 | 4B E9 C9 9D */	bl memcpy
/* 81493898 | 48 00 00 6C */	b .L_81493904
.L_8149389C:
/* 8149389C | 7C 63 3A 14 */	add r3, r3, r7
/* 814938A0 | 7F E5 FB 78 */	mr r5, r31
/* 814938A4 | 38 63 00 18 */	addi r3, r3, 0x18
/* 814938A8 | 4B E9 C9 89 */	bl memcpy
/* 814938AC | 7F 83 E3 78 */	mr r3, r28
/* 814938B0 | 48 00 01 9D */	bl ProcessBlock
/* 814938B4 | 7F BF E8 50 */	subf r29, r31, r29
/* 814938B8 | 7F DE FA 14 */	add r30, r30, r31
/* 814938BC | 57 BF D1 BE */	srwi r31, r29, 6
/* 814938C0 | 48 00 00 24 */	b .L_814938E4
.L_814938C4:
/* 814938C4 | 7F C4 F3 78 */	mr r4, r30
/* 814938C8 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 814938CC | 38 A0 00 40 */	li r5, 0x40
/* 814938D0 | 4B E9 C9 61 */	bl memcpy
/* 814938D4 | 7F 83 E3 78 */	mr r3, r28
/* 814938D8 | 3B DE 00 40 */	addi r30, r30, 0x40
/* 814938DC | 48 00 01 71 */	bl ProcessBlock
/* 814938E0 | 3B FF FF FF */	subi r31, r31, 0x1
.L_814938E4:
/* 814938E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814938E8 | 41 81 FF DC */	bgt .L_814938C4
/* 814938EC | 57 BD 06 BF */	clrlwi. r29, r29, 26
/* 814938F0 | 41 82 00 14 */	beq .L_81493904
/* 814938F4 | 7F C4 F3 78 */	mr r4, r30
/* 814938F8 | 7F A5 EB 78 */	mr r5, r29
/* 814938FC | 38 7C 00 18 */	addi r3, r28, 0x18
/* 81493900 | 4B E9 C9 31 */	bl memcpy
.L_81493904:
/* 81493904 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81493908 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149390C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81493910 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81493914 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81493918 | 7C 08 03 A6 */	mtlr r0
/* 8149391C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81493920 | 4E 80 00 20 */	blr
.endfn NETMD5Update

# .text:0x130 | 0x81493924 | size: 0x128
.fn NETMD5GetDigest, global
/* 81493924 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81493928 | 7C 08 02 A6 */	mflr r0
/* 8149392C | 38 A0 00 01 */	li r5, 0x1
/* 81493930 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81493934 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81493938 | 7C 9F 23 78 */	mr r31, r4
/* 8149393C | 38 8D 9A 68 */	li r4, lbl_81697AA8@sda21
/* 81493940 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81493944 | 7C 7E 1B 78 */	mr r30, r3
/* 81493948 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149394C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81493950 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81493954 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 81493958 | 54 1D 18 38 */	slwi r29, r0, 3
/* 8149395C | 54 DC 18 38 */	slwi r28, r6, 3
/* 81493960 | 50 DD 1F 7E */	rlwimi r29, r6, 3, 29, 31
/* 81493964 | 4B FF FE D1 */	bl NETMD5Update
/* 81493968 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8149396C | 54 00 06 BE */	clrlwi r0, r0, 26
/* 81493970 | 20 A0 00 40 */	subfic r5, r0, 0x40
/* 81493974 | 28 05 00 08 */	cmplwi r5, 0x8
/* 81493978 | 40 80 00 24 */	bge .L_8149399C
/* 8149397C | 7C 7E 02 14 */	add r3, r30, r0
/* 81493980 | 38 80 00 00 */	li r4, 0x0
/* 81493984 | 38 63 00 18 */	addi r3, r3, 0x18
/* 81493988 | 4B E9 C9 AD */	bl memset
/* 8149398C | 7F C3 F3 78 */	mr r3, r30
/* 81493990 | 48 00 00 BD */	bl ProcessBlock
/* 81493994 | 38 00 00 00 */	li r0, 0x0
/* 81493998 | 38 A0 00 40 */	li r5, 0x40
.L_8149399C:
/* 8149399C | 28 05 00 08 */	cmplwi r5, 0x8
/* 814939A0 | 40 81 00 18 */	ble .L_814939B8
/* 814939A4 | 7C 7E 02 14 */	add r3, r30, r0
/* 814939A8 | 38 A5 FF F8 */	subi r5, r5, 0x8
/* 814939AC | 38 63 00 18 */	addi r3, r3, 0x18
/* 814939B0 | 38 80 00 00 */	li r4, 0x0
/* 814939B4 | 4B E9 C9 81 */	bl memset
.L_814939B8:
/* 814939B8 | 57 85 42 1E */	rlwinm r5, r28, 8, 8, 15
/* 814939BC | 57 84 C4 2E */	rlwinm r4, r28, 24, 16, 23
/* 814939C0 | 57 A3 42 1E */	rlwinm r3, r29, 8, 8, 15
/* 814939C4 | 57 A0 C4 2E */	rlwinm r0, r29, 24, 16, 23
/* 814939C8 | 53 85 C0 0E */	rlwimi r5, r28, 24, 0, 7
/* 814939CC | 53 84 46 3E */	rlwimi r4, r28, 8, 24, 31
/* 814939D0 | 7C A4 23 78 */	or r4, r5, r4
/* 814939D4 | 53 A3 C0 0E */	rlwimi r3, r29, 24, 0, 7
/* 814939D8 | 53 A0 46 3E */	rlwimi r0, r29, 8, 24, 31
/* 814939DC | 90 9E 00 50 */	stw r4, 0x50(r30)
/* 814939E0 | 7C 60 03 78 */	or r0, r3, r0
/* 814939E4 | 7F C3 F3 78 */	mr r3, r30
/* 814939E8 | 90 1E 00 54 */	stw r0, 0x54(r30)
/* 814939EC | 48 00 00 61 */	bl ProcessBlock
/* 814939F0 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814939F4 | 7C 00 FD 2C */	stwbrx r0, r0, r31
/* 814939F8 | 38 1F 00 04 */	addi r0, r31, 0x4
/* 814939FC | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81493A00 | 7C 60 05 2C */	stwbrx r3, r0, r0
/* 81493A04 | 38 1F 00 08 */	addi r0, r31, 0x8
/* 81493A08 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81493A0C | 7C 60 05 2C */	stwbrx r3, r0, r0
/* 81493A10 | 38 1F 00 0C */	addi r0, r31, 0xc
/* 81493A14 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 81493A18 | 7C 60 05 2C */	stwbrx r3, r0, r0
/* 81493A1C | 7F C3 F3 78 */	mr r3, r30
/* 81493A20 | 38 80 00 00 */	li r4, 0x0
/* 81493A24 | 38 A0 00 58 */	li r5, 0x58
/* 81493A28 | 4B E9 C9 0D */	bl memset
/* 81493A2C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81493A30 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81493A34 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81493A38 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81493A3C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81493A40 | 7C 08 03 A6 */	mtlr r0
/* 81493A44 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81493A48 | 4E 80 00 20 */	blr
.endfn NETMD5GetDigest

# .text:0x258 | 0x81493A4C | size: 0x4C8
.fn ProcessBlock, local
/* 81493A4C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81493A50 | 39 03 00 18 */	addi r8, r3, 0x18
/* 81493A54 | 3D 20 81 67 */	lis r9, lbl_8166CD20@ha
/* 81493A58 | 39 40 00 04 */	li r10, 0x4
/* 81493A5C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81493A60 | 7D 04 43 78 */	mr r4, r8
/* 81493A64 | 39 29 CD 20 */	addi r9, r9, lbl_8166CD20@l
/* 81493A68 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81493A6C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81493A70 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81493A74 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 81493A78 | 80 C3 00 08 */	lwz r6, 0x8(r3)
/* 81493A7C | 80 E3 00 0C */	lwz r7, 0xc(r3)
/* 81493A80 | 7D 49 03 A6 */	mtctr r10
.L_81493A84:
/* 81493A84 | 81 89 00 00 */	lwz r12, 0x0(r9)
/* 81493A88 | 7F C0 24 2C */	lwbrx r30, r0, r4
/* 81493A8C | 7F E0 24 2C */	lwbrx r31, r0, r4
/* 81493A90 | 7C AB 30 38 */	and r11, r5, r6
/* 81493A94 | 7C EA 28 78 */	andc r10, r7, r5
/* 81493A98 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81493A9C | 7D 6B 53 78 */	or r11, r11, r10
/* 81493AA0 | 7D 60 5A 14 */	add r11, r0, r11
/* 81493AA4 | 7D 5F 62 14 */	add r10, r31, r12
/* 81493AA8 | 7C 0C 5A 14 */	add r0, r12, r11
/* 81493AAC | 83 E9 00 04 */	lwz r31, 0x4(r9)
/* 81493AB0 | 7C 1E 02 14 */	add r0, r30, r0
/* 81493AB4 | 7D 4B 52 14 */	add r10, r11, r10
/* 81493AB8 | 54 00 3E 7E */	srwi r0, r0, 25
/* 81493ABC | 51 40 38 30 */	rlwimi r0, r10, 7, 0, 24
/* 81493AC0 | 7C 05 02 14 */	add r0, r5, r0
/* 81493AC4 | 7F C0 24 2C */	lwbrx r30, r0, r4
/* 81493AC8 | 7D 80 24 2C */	lwbrx r12, r0, r4
/* 81493ACC | 7C 0B 28 38 */	and r11, r0, r5
/* 81493AD0 | 7C CA 00 78 */	andc r10, r6, r0
/* 81493AD4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81493AD8 | 7D 6B 53 78 */	or r11, r11, r10
/* 81493ADC | 7D 67 5A 14 */	add r11, r7, r11
/* 81493AE0 | 7D 4C FA 14 */	add r10, r12, r31
/* 81493AE4 | 7C FF 5A 14 */	add r7, r31, r11
/* 81493AE8 | 81 89 00 08 */	lwz r12, 0x8(r9)
/* 81493AEC | 7C FE 3A 14 */	add r7, r30, r7
/* 81493AF0 | 7D 4B 52 14 */	add r10, r11, r10
/* 81493AF4 | 54 E7 65 3E */	srwi r7, r7, 20
/* 81493AF8 | 51 47 60 26 */	rlwimi r7, r10, 12, 0, 19
/* 81493AFC | 7C E0 3A 14 */	add r7, r0, r7
/* 81493B00 | 7F C0 24 2C */	lwbrx r30, r0, r4
/* 81493B04 | 7F E0 24 2C */	lwbrx r31, r0, r4
/* 81493B08 | 7C EB 00 38 */	and r11, r7, r0
/* 81493B0C | 7C AA 38 78 */	andc r10, r5, r7
/* 81493B10 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81493B14 | 7D 6B 53 78 */	or r11, r11, r10
/* 81493B18 | 7D 66 5A 14 */	add r11, r6, r11
/* 81493B1C | 7D 5F 62 14 */	add r10, r31, r12
/* 81493B20 | 7C CC 5A 14 */	add r6, r12, r11
/* 81493B24 | 83 E9 00 0C */	lwz r31, 0xc(r9)
/* 81493B28 | 7C DE 32 14 */	add r6, r30, r6
/* 81493B2C | 7D 4B 52 14 */	add r10, r11, r10
/* 81493B30 | 54 C6 8B FE */	srwi r6, r6, 15
/* 81493B34 | 51 46 88 1C */	rlwimi r6, r10, 17, 0, 14
/* 81493B38 | 7C C7 32 14 */	add r6, r7, r6
/* 81493B3C | 7D 80 24 2C */	lwbrx r12, r0, r4
/* 81493B40 | 7F C0 24 2C */	lwbrx r30, r0, r4
/* 81493B44 | 7C CB 38 38 */	and r11, r6, r7
/* 81493B48 | 7C 0A 30 78 */	andc r10, r0, r6
/* 81493B4C | 39 29 00 10 */	addi r9, r9, 0x10
/* 81493B50 | 7D 6B 53 78 */	or r11, r11, r10
/* 81493B54 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81493B58 | 7D 65 5A 14 */	add r11, r5, r11
/* 81493B5C | 7D 5E FA 14 */	add r10, r30, r31
/* 81493B60 | 7C BF 5A 14 */	add r5, r31, r11
/* 81493B64 | 7C AC 2A 14 */	add r5, r12, r5
/* 81493B68 | 7D 4B 52 14 */	add r10, r11, r10
/* 81493B6C | 54 A5 B2 BE */	srwi r5, r5, 10
/* 81493B70 | 51 45 B0 12 */	rlwimi r5, r10, 22, 0, 9
/* 81493B74 | 7C A6 2A 14 */	add r5, r6, r5
/* 81493B78 | 42 00 FF 0C */	bdnz .L_81493A84
/* 81493B7C | 3C 80 81 67 */	lis r4, lbl_8166CE20@ha
/* 81493B80 | 39 40 00 04 */	li r10, 0x4
/* 81493B84 | 38 84 CE 20 */	addi r4, r4, lbl_8166CE20@l
/* 81493B88 | 7D 49 03 A6 */	mtctr r10
.L_81493B8C:
/* 81493B8C | 81 44 00 00 */	lwz r10, 0x0(r4)
/* 81493B90 | 83 E9 00 00 */	lwz r31, 0x0(r9)
/* 81493B94 | 55 4A 10 3A */	slwi r10, r10, 2
/* 81493B98 | 7D 48 52 14 */	add r10, r8, r10
/* 81493B9C | 7F C0 54 2C */	lwbrx r30, r0, r10
/* 81493BA0 | 7F A0 54 2C */	lwbrx r29, r0, r10
/* 81493BA4 | 7C AC 38 38 */	and r12, r5, r7
/* 81493BA8 | 7C CB 38 78 */	andc r11, r6, r7
/* 81493BAC | 81 44 00 04 */	lwz r10, 0x4(r4)
/* 81493BB0 | 7D 8C 5B 78 */	or r12, r12, r11
/* 81493BB4 | 7D 80 62 14 */	add r12, r0, r12
/* 81493BB8 | 7D 7D FA 14 */	add r11, r29, r31
/* 81493BBC | 55 40 10 3A */	slwi r0, r10, 2
/* 81493BC0 | 7D 5F 62 14 */	add r10, r31, r12
/* 81493BC4 | 7D 6C 5A 14 */	add r11, r12, r11
/* 81493BC8 | 7D 5E 52 14 */	add r10, r30, r10
/* 81493BCC | 7D 88 02 14 */	add r12, r8, r0
/* 81493BD0 | 55 4A 2E FE */	srwi r10, r10, 27
/* 81493BD4 | 83 E9 00 04 */	lwz r31, 0x4(r9)
/* 81493BD8 | 51 6A 28 34 */	rlwimi r10, r11, 5, 0, 26
/* 81493BDC | 7C 05 52 14 */	add r0, r5, r10
/* 81493BE0 | 7F A0 64 2C */	lwbrx r29, r0, r12
/* 81493BE4 | 7F C0 64 2C */	lwbrx r30, r0, r12
/* 81493BE8 | 7C 0C 30 38 */	and r12, r0, r6
/* 81493BEC | 7C AB 30 78 */	andc r11, r5, r6
/* 81493BF0 | 81 44 00 08 */	lwz r10, 0x8(r4)
/* 81493BF4 | 7D 8C 5B 78 */	or r12, r12, r11
/* 81493BF8 | 7D 87 62 14 */	add r12, r7, r12
/* 81493BFC | 7D 7E FA 14 */	add r11, r30, r31
/* 81493C00 | 55 47 10 3A */	slwi r7, r10, 2
/* 81493C04 | 7D 5F 62 14 */	add r10, r31, r12
/* 81493C08 | 7D 6C 5A 14 */	add r11, r12, r11
/* 81493C0C | 7D 5D 52 14 */	add r10, r29, r10
/* 81493C10 | 7D 88 3A 14 */	add r12, r8, r7
/* 81493C14 | 55 4A 4D FE */	srwi r10, r10, 23
/* 81493C18 | 83 E9 00 08 */	lwz r31, 0x8(r9)
/* 81493C1C | 51 6A 48 2C */	rlwimi r10, r11, 9, 0, 22
/* 81493C20 | 7C E0 52 14 */	add r7, r0, r10
/* 81493C24 | 7F A0 64 2C */	lwbrx r29, r0, r12
/* 81493C28 | 7F C0 64 2C */	lwbrx r30, r0, r12
/* 81493C2C | 7C EC 28 38 */	and r12, r7, r5
/* 81493C30 | 7C 0B 28 78 */	andc r11, r0, r5
/* 81493C34 | 81 44 00 0C */	lwz r10, 0xc(r4)
/* 81493C38 | 7D 8C 5B 78 */	or r12, r12, r11
/* 81493C3C | 7D 86 62 14 */	add r12, r6, r12
/* 81493C40 | 7D 7E FA 14 */	add r11, r30, r31
/* 81493C44 | 55 46 10 3A */	slwi r6, r10, 2
/* 81493C48 | 7D 5F 62 14 */	add r10, r31, r12
/* 81493C4C | 7D 6C 5A 14 */	add r11, r12, r11
/* 81493C50 | 7D 5D 52 14 */	add r10, r29, r10
/* 81493C54 | 7D 88 32 14 */	add r12, r8, r6
/* 81493C58 | 55 4A 74 BE */	srwi r10, r10, 18
/* 81493C5C | 83 E9 00 0C */	lwz r31, 0xc(r9)
/* 81493C60 | 51 6A 70 22 */	rlwimi r10, r11, 14, 0, 17
/* 81493C64 | 7C C7 52 14 */	add r6, r7, r10
/* 81493C68 | 7F A0 64 2C */	lwbrx r29, r0, r12
/* 81493C6C | 7D 80 64 2C */	lwbrx r12, r0, r12
/* 81493C70 | 7C CB 00 38 */	and r11, r6, r0
/* 81493C74 | 7C EA 00 78 */	andc r10, r7, r0
/* 81493C78 | 39 29 00 10 */	addi r9, r9, 0x10
/* 81493C7C | 7D 6B 53 78 */	or r11, r11, r10
/* 81493C80 | 38 84 00 10 */	addi r4, r4, 0x10
/* 81493C84 | 7D 65 5A 14 */	add r11, r5, r11
/* 81493C88 | 7D 4C FA 14 */	add r10, r12, r31
/* 81493C8C | 7C BF 5A 14 */	add r5, r31, r11
/* 81493C90 | 7C BD 2A 14 */	add r5, r29, r5
/* 81493C94 | 7D 4B 52 14 */	add r10, r11, r10
/* 81493C98 | 54 A5 A3 3E */	srwi r5, r5, 12
/* 81493C9C | 51 45 A0 16 */	rlwimi r5, r10, 20, 0, 11
/* 81493CA0 | 7C A6 2A 14 */	add r5, r6, r5
/* 81493CA4 | 42 00 FE E8 */	bdnz .L_81493B8C
/* 81493CA8 | 39 40 00 04 */	li r10, 0x4
/* 81493CAC | 7D 49 03 A6 */	mtctr r10
.L_81493CB0:
/* 81493CB0 | 81 44 00 00 */	lwz r10, 0x0(r4)
/* 81493CB4 | 83 E9 00 00 */	lwz r31, 0x0(r9)
/* 81493CB8 | 55 4A 10 3A */	slwi r10, r10, 2
/* 81493CBC | 7D 48 52 14 */	add r10, r8, r10
/* 81493CC0 | 7F A0 54 2C */	lwbrx r29, r0, r10
/* 81493CC4 | 7D 80 54 2C */	lwbrx r12, r0, r10
/* 81493CC8 | 7C EA 2A 78 */	xor r10, r7, r5
/* 81493CCC | 7D 4B 32 78 */	xor r11, r10, r6
/* 81493CD0 | 81 44 00 04 */	lwz r10, 0x4(r4)
/* 81493CD4 | 7F C0 5A 14 */	add r30, r0, r11
/* 81493CD8 | 7D 8C FA 14 */	add r12, r12, r31
/* 81493CDC | 7D 7F F2 14 */	add r11, r31, r30
/* 81493CE0 | 55 40 10 3A */	slwi r0, r10, 2
/* 81493CE4 | 7D 5D 5A 14 */	add r10, r29, r11
/* 81493CE8 | 83 E9 00 04 */	lwz r31, 0x4(r9)
/* 81493CEC | 7D 7E 62 14 */	add r11, r30, r12
/* 81493CF0 | 7D 88 02 14 */	add r12, r8, r0
/* 81493CF4 | 55 4A 27 3E */	srwi r10, r10, 28
/* 81493CF8 | 51 6A 20 36 */	rlwimi r10, r11, 4, 0, 27
/* 81493CFC | 7C 05 52 14 */	add r0, r5, r10
/* 81493D00 | 7F A0 64 2C */	lwbrx r29, r0, r12
/* 81493D04 | 7D 80 64 2C */	lwbrx r12, r0, r12
/* 81493D08 | 7C CA 02 78 */	xor r10, r6, r0
/* 81493D0C | 7D 4B 2A 78 */	xor r11, r10, r5
/* 81493D10 | 81 44 00 08 */	lwz r10, 0x8(r4)
/* 81493D14 | 7F C7 5A 14 */	add r30, r7, r11
/* 81493D18 | 7D 8C FA 14 */	add r12, r12, r31
/* 81493D1C | 7D 7F F2 14 */	add r11, r31, r30
/* 81493D20 | 55 47 10 3A */	slwi r7, r10, 2
/* 81493D24 | 7D 5D 5A 14 */	add r10, r29, r11
/* 81493D28 | 83 E9 00 08 */	lwz r31, 0x8(r9)
/* 81493D2C | 7D 7E 62 14 */	add r11, r30, r12
/* 81493D30 | 7D 88 3A 14 */	add r12, r8, r7
/* 81493D34 | 55 4A 5D 7E */	srwi r10, r10, 21
/* 81493D38 | 51 6A 58 28 */	rlwimi r10, r11, 11, 0, 20
/* 81493D3C | 7C E0 52 14 */	add r7, r0, r10
/* 81493D40 | 7F A0 64 2C */	lwbrx r29, r0, r12
/* 81493D44 | 7D 80 64 2C */	lwbrx r12, r0, r12
/* 81493D48 | 7C AA 3A 78 */	xor r10, r5, r7
/* 81493D4C | 7D 4B 02 78 */	xor r11, r10, r0
/* 81493D50 | 81 44 00 0C */	lwz r10, 0xc(r4)
/* 81493D54 | 7F C6 5A 14 */	add r30, r6, r11
/* 81493D58 | 7D 8C FA 14 */	add r12, r12, r31
/* 81493D5C | 7D 7F F2 14 */	add r11, r31, r30
/* 81493D60 | 55 46 10 3A */	slwi r6, r10, 2
/* 81493D64 | 7D 5D 5A 14 */	add r10, r29, r11
/* 81493D68 | 7D 7E 62 14 */	add r11, r30, r12
/* 81493D6C | 7D 88 32 14 */	add r12, r8, r6
/* 81493D70 | 55 4A 84 3E */	srwi r10, r10, 16
/* 81493D74 | 51 6A 80 1E */	rlwimi r10, r11, 16, 0, 15
/* 81493D78 | 81 69 00 0C */	lwz r11, 0xc(r9)
/* 81493D7C | 7C C7 52 14 */	add r6, r7, r10
/* 81493D80 | 7F A0 64 2C */	lwbrx r29, r0, r12
/* 81493D84 | 7D 80 64 2C */	lwbrx r12, r0, r12
/* 81493D88 | 7C 0A 32 78 */	xor r10, r0, r6
/* 81493D8C | 7D 4A 3A 78 */	xor r10, r10, r7
/* 81493D90 | 39 29 00 10 */	addi r9, r9, 0x10
/* 81493D94 | 7F C5 52 14 */	add r30, r5, r10
/* 81493D98 | 38 84 00 10 */	addi r4, r4, 0x10
/* 81493D9C | 7D 4C 5A 14 */	add r10, r12, r11
/* 81493DA0 | 7C AB F2 14 */	add r5, r11, r30
/* 81493DA4 | 7C BD 2A 14 */	add r5, r29, r5
/* 81493DA8 | 7D 5E 52 14 */	add r10, r30, r10
/* 81493DAC | 54 A5 BA 7E */	srwi r5, r5, 9
/* 81493DB0 | 51 45 B8 10 */	rlwimi r5, r10, 23, 0, 8
/* 81493DB4 | 7C A6 2A 14 */	add r5, r6, r5
/* 81493DB8 | 42 00 FE F8 */	bdnz .L_81493CB0
/* 81493DBC | 39 40 00 04 */	li r10, 0x4
/* 81493DC0 | 7D 49 03 A6 */	mtctr r10
.L_81493DC4:
/* 81493DC4 | 81 44 00 00 */	lwz r10, 0x0(r4)
/* 81493DC8 | 83 E9 00 00 */	lwz r31, 0x0(r9)
/* 81493DCC | 55 4A 10 3A */	slwi r10, r10, 2
/* 81493DD0 | 7D 48 52 14 */	add r10, r8, r10
/* 81493DD4 | 7F A0 54 2C */	lwbrx r29, r0, r10
/* 81493DD8 | 7D 80 54 2C */	lwbrx r12, r0, r10
/* 81493DDC | 7C AA 3B 38 */	orc r10, r5, r7
/* 81493DE0 | 7C CB 52 78 */	xor r11, r6, r10
/* 81493DE4 | 81 44 00 04 */	lwz r10, 0x4(r4)
/* 81493DE8 | 7F C0 5A 14 */	add r30, r0, r11
/* 81493DEC | 7D 8C FA 14 */	add r12, r12, r31
/* 81493DF0 | 7D 7F F2 14 */	add r11, r31, r30
/* 81493DF4 | 55 40 10 3A */	slwi r0, r10, 2
/* 81493DF8 | 7D 5D 5A 14 */	add r10, r29, r11
/* 81493DFC | 83 E9 00 04 */	lwz r31, 0x4(r9)
/* 81493E00 | 7D 7E 62 14 */	add r11, r30, r12
/* 81493E04 | 7D 88 02 14 */	add r12, r8, r0
/* 81493E08 | 55 4A 36 BE */	srwi r10, r10, 26
/* 81493E0C | 51 6A 30 32 */	rlwimi r10, r11, 6, 0, 25
/* 81493E10 | 7C 05 52 14 */	add r0, r5, r10
/* 81493E14 | 7F A0 64 2C */	lwbrx r29, r0, r12
/* 81493E18 | 7D 80 64 2C */	lwbrx r12, r0, r12
/* 81493E1C | 7C 0A 33 38 */	orc r10, r0, r6
/* 81493E20 | 7C AB 52 78 */	xor r11, r5, r10
/* 81493E24 | 81 44 00 08 */	lwz r10, 0x8(r4)
/* 81493E28 | 7F C7 5A 14 */	add r30, r7, r11
/* 81493E2C | 7D 8C FA 14 */	add r12, r12, r31
/* 81493E30 | 7D 7F F2 14 */	add r11, r31, r30
/* 81493E34 | 55 47 10 3A */	slwi r7, r10, 2
/* 81493E38 | 7D 5D 5A 14 */	add r10, r29, r11
/* 81493E3C | 83 E9 00 08 */	lwz r31, 0x8(r9)
/* 81493E40 | 7D 7E 62 14 */	add r11, r30, r12
/* 81493E44 | 7D 88 3A 14 */	add r12, r8, r7
/* 81493E48 | 55 4A 55 BE */	srwi r10, r10, 22
/* 81493E4C | 51 6A 50 2A */	rlwimi r10, r11, 10, 0, 21
/* 81493E50 | 7C E0 52 14 */	add r7, r0, r10
/* 81493E54 | 7F A0 64 2C */	lwbrx r29, r0, r12
/* 81493E58 | 7D 80 64 2C */	lwbrx r12, r0, r12
/* 81493E5C | 7C EA 2B 38 */	orc r10, r7, r5
/* 81493E60 | 7C 0B 52 78 */	xor r11, r0, r10
/* 81493E64 | 81 44 00 0C */	lwz r10, 0xc(r4)
/* 81493E68 | 7F C6 5A 14 */	add r30, r6, r11
/* 81493E6C | 7D 8C FA 14 */	add r12, r12, r31
/* 81493E70 | 7D 7F F2 14 */	add r11, r31, r30
/* 81493E74 | 55 46 10 3A */	slwi r6, r10, 2
/* 81493E78 | 7D 5D 5A 14 */	add r10, r29, r11
/* 81493E7C | 7D 7E 62 14 */	add r11, r30, r12
/* 81493E80 | 7D 88 32 14 */	add r12, r8, r6
/* 81493E84 | 55 4A 7C 7E */	srwi r10, r10, 17
/* 81493E88 | 51 6A 78 20 */	rlwimi r10, r11, 15, 0, 16
/* 81493E8C | 81 69 00 0C */	lwz r11, 0xc(r9)
/* 81493E90 | 7C C7 52 14 */	add r6, r7, r10
/* 81493E94 | 7F A0 64 2C */	lwbrx r29, r0, r12
/* 81493E98 | 7D 80 64 2C */	lwbrx r12, r0, r12
/* 81493E9C | 7C CA 03 38 */	orc r10, r6, r0
/* 81493EA0 | 7C EA 52 78 */	xor r10, r7, r10
/* 81493EA4 | 39 29 00 10 */	addi r9, r9, 0x10
/* 81493EA8 | 7F C5 52 14 */	add r30, r5, r10
/* 81493EAC | 38 84 00 10 */	addi r4, r4, 0x10
/* 81493EB0 | 7D 4C 5A 14 */	add r10, r12, r11
/* 81493EB4 | 7C AB F2 14 */	add r5, r11, r30
/* 81493EB8 | 7C BD 2A 14 */	add r5, r29, r5
/* 81493EBC | 7D 5E 52 14 */	add r10, r30, r10
/* 81493EC0 | 54 A5 AA FE */	srwi r5, r5, 11
/* 81493EC4 | 51 45 A8 14 */	rlwimi r5, r10, 21, 0, 10
/* 81493EC8 | 7C A6 2A 14 */	add r5, r6, r5
/* 81493ECC | 42 00 FE F8 */	bdnz .L_81493DC4
/* 81493ED0 | 81 23 00 00 */	lwz r9, 0x0(r3)
/* 81493ED4 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 81493ED8 | 7D 29 02 14 */	add r9, r9, r0
/* 81493EDC | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 81493EE0 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81493EE4 | 7C A8 2A 14 */	add r5, r8, r5
/* 81493EE8 | 7C 84 32 14 */	add r4, r4, r6
/* 81493EEC | 91 23 00 00 */	stw r9, 0x0(r3)
/* 81493EF0 | 7C 00 3A 14 */	add r0, r0, r7
/* 81493EF4 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 81493EF8 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 81493EFC | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81493F00 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81493F04 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81493F08 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81493F0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81493F10 | 4E 80 00 20 */	blr
.endfn ProcessBlock

# 0x8166CD20..0x8166CEE0 | size: 0x1C0
.data
.balign 8

# .data:0x0 | 0x8166CD20 | size: 0x100
.obj lbl_8166CD20, global
	.4byte 0xD76AA478
	.4byte 0xE8C7B756
	.4byte 0x242070DB
	.4byte 0xC1BDCEEE
	.4byte 0xF57C0FAF
	.4byte 0x4787C62A
	.4byte 0xA8304613
	.4byte 0xFD469501
	.4byte 0x698098D8
	.4byte 0x8B44F7AF
	.4byte 0xFFFF5BB1
	.4byte 0x895CD7BE
	.4byte 0x6B901122
	.4byte 0xFD987193
	.4byte 0xA679438E
	.4byte 0x49B40821
	.4byte 0xF61E2562
	.4byte 0xC040B340
	.4byte 0x265E5A51
	.4byte 0xE9B6C7AA
	.4byte 0xD62F105D
	.4byte 0x02441453
	.4byte 0xD8A1E681
	.4byte 0xE7D3FBC8
	.4byte 0x21E1CDE6
	.4byte 0xC33707D6
	.4byte 0xF4D50D87
	.4byte 0x455A14ED
	.4byte 0xA9E3E905
	.4byte 0xFCEFA3F8
	.4byte 0x676F02D9
	.4byte 0x8D2A4C8A
	.4byte 0xFFFA3942
	.4byte 0x8771F681
	.4byte 0x6D9D6122
	.4byte 0xFDE5380C
	.4byte 0xA4BEEA44
	.4byte 0x4BDECFA9
	.4byte 0xF6BB4B60
	.4byte 0xBEBFBC70
	.4byte 0x289B7EC6
	.4byte 0xEAA127FA
	.4byte 0xD4EF3085
	.4byte 0x04881D05
	.4byte 0xD9D4D039
	.4byte 0xE6DB99E5
	.4byte 0x1FA27CF8
	.4byte 0xC4AC5665
	.4byte 0xF4292244
	.4byte 0x432AFF97
	.4byte 0xAB9423A7
	.4byte 0xFC93A039
	.4byte 0x655B59C3
	.4byte 0x8F0CCC92
	.4byte 0xFFEFF47D
	.4byte 0x85845DD1
	.4byte 0x6FA87E4F
	.4byte 0xFE2CE6E0
	.4byte 0xA3014314
	.4byte 0x4E0811A1
	.4byte 0xF7537E82
	.4byte 0xBD3AF235
	.4byte 0x2AD7D2BB
	.4byte 0xEB86D391
.endobj lbl_8166CD20

# .data:0x100 | 0x8166CE20 | size: 0xC0
.obj lbl_8166CE20, global
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000009
	.4byte 0x0000000E
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x0000000D
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x0000000C
	.4byte 0x00000005
	.4byte 0x00000008
	.4byte 0x0000000B
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000009
	.4byte 0x0000000C
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0000000E
	.4byte 0x00000005
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000006
	.4byte 0x0000000D
	.4byte 0x00000004
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000009
.endobj lbl_8166CE20

# 0x81697AA8..0x81697AB0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697AA8 | size: 0x8
.obj lbl_81697AA8, global
	.4byte 0x80000000
	.4byte 0x00000000
.endobj lbl_81697AA8
