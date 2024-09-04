.include "macros.inc"
.file "GSISha1.c"

# 0x813D6870..0x813D6E30 | size: 0x5C0
.text
.balign 4

# .text:0x0 | 0x813D6870 | size: 0x6C
.fn SHA1Reset, global
/* 813D6870 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6874 | 40 82 00 0C */	bne .L_813D6880
/* 813D6878 | 38 60 00 01 */	li r3, 0x1
/* 813D687C | 4E 80 00 20 */	blr
.L_813D6880:
/* 813D6880 | 3D 00 67 45 */	lis r8, 0x6745
/* 813D6884 | 3C E0 EF CE */	lis r7, 0xefce
/* 813D6888 | 39 20 00 00 */	li r9, 0x0
/* 813D688C | 3C C0 98 BB */	lis r6, 0x98bb
/* 813D6890 | 3C A0 10 32 */	lis r5, 0x1032
/* 813D6894 | 3C 80 C3 D3 */	lis r4, 0xc3d3
/* 813D6898 | 39 08 23 01 */	addi r8, r8, 0x2301
/* 813D689C | 38 E7 AB 89 */	subi r7, r7, 0x5477
/* 813D68A0 | 38 C6 DC FE */	subi r6, r6, 0x2302
/* 813D68A4 | 38 A5 54 76 */	addi r5, r5, 0x5476
/* 813D68A8 | 38 04 E1 F0 */	subi r0, r4, 0x1e10
/* 813D68AC | 91 23 00 14 */	stw r9, 0x14(r3)
/* 813D68B0 | 91 23 00 18 */	stw r9, 0x18(r3)
/* 813D68B4 | B1 23 00 1C */	sth r9, 0x1c(r3)
/* 813D68B8 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 813D68BC | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 813D68C0 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 813D68C4 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 813D68C8 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 813D68CC | 91 23 00 60 */	stw r9, 0x60(r3)
/* 813D68D0 | 91 23 00 64 */	stw r9, 0x64(r3)
/* 813D68D4 | 38 60 00 00 */	li r3, 0x0
/* 813D68D8 | 4E 80 00 20 */	blr
.endfn SHA1Reset

# .text:0x6C | 0x813D68DC | size: 0xDC
.fn SHA1Result, global
/* 813D68DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D68E0 | 7C 08 02 A6 */	mflr r0
/* 813D68E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D68E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D68EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D68F0 | 7C 9F 23 78 */	mr r31, r4
/* 813D68F4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D68F8 | 7C 7E 1B 78 */	mr r30, r3
/* 813D68FC | 41 82 00 0C */	beq .L_813D6908
/* 813D6900 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D6904 | 40 82 00 0C */	bne .L_813D6910
.L_813D6908:
/* 813D6908 | 38 60 00 01 */	li r3, 0x1
/* 813D690C | 48 00 00 94 */	b .L_813D69A0
.L_813D6910:
/* 813D6910 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 813D6914 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D6918 | 41 82 00 0C */	beq .L_813D6924
/* 813D691C | 7C 03 03 78 */	mr r3, r0
/* 813D6920 | 48 00 00 80 */	b .L_813D69A0
.L_813D6924:
/* 813D6924 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 813D6928 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D692C | 40 82 00 3C */	bne .L_813D6968
/* 813D6930 | 48 00 03 D9 */	bl SHA1PadMessage
/* 813D6934 | 38 00 00 40 */	li r0, 0x40
/* 813D6938 | 38 A0 00 00 */	li r5, 0x0
/* 813D693C | 38 80 00 00 */	li r4, 0x0
/* 813D6940 | 7C 09 03 A6 */	mtctr r0
.L_813D6944:
/* 813D6944 | 7C 7E 2A 14 */	add r3, r30, r5
/* 813D6948 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813D694C | 98 83 00 1E */	stb r4, 0x1e(r3)
/* 813D6950 | 42 00 FF F4 */	bdnz .L_813D6944
/* 813D6954 | 38 60 00 00 */	li r3, 0x0
/* 813D6958 | 38 00 00 01 */	li r0, 0x1
/* 813D695C | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813D6960 | 90 7E 00 18 */	stw r3, 0x18(r30)
/* 813D6964 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_813D6968:
/* 813D6968 | 38 00 00 14 */	li r0, 0x14
/* 813D696C | 38 80 00 00 */	li r4, 0x0
/* 813D6970 | 7C 09 03 A6 */	mtctr r0
.L_813D6974:
/* 813D6974 | 54 83 00 3A */	clrrwi r3, r4, 2
/* 813D6978 | 54 80 07 BE */	clrlwi r0, r4, 30
/* 813D697C | 20 00 00 03 */	subfic r0, r0, 0x3
/* 813D6980 | 7C 7E 18 2E */	lwzx r3, r30, r3
/* 813D6984 | 54 00 18 38 */	slwi r0, r0, 3
/* 813D6988 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813D698C | 7C 60 04 30 */	srw r0, r3, r0
/* 813D6990 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 813D6994 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813D6998 | 42 00 FF DC */	bdnz .L_813D6974
/* 813D699C | 38 60 00 00 */	li r3, 0x0
.L_813D69A0:
/* 813D69A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D69A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D69A8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D69AC | 7C 08 03 A6 */	mtlr r0
/* 813D69B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D69B4 | 4E 80 00 20 */	blr
.endfn SHA1Result

# .text:0x148 | 0x813D69B8 | size: 0x104
.fn SHA1Input, global
/* 813D69B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D69BC | 7C 08 02 A6 */	mflr r0
/* 813D69C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D69C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D69C8 | 48 22 2A FD */	bl _savegpr_28
/* 813D69CC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D69D0 | 7C 7C 1B 78 */	mr r28, r3
/* 813D69D4 | 7C 9D 23 78 */	mr r29, r4
/* 813D69D8 | 7C BE 2B 78 */	mr r30, r5
/* 813D69DC | 40 82 00 0C */	bne .L_813D69E8
/* 813D69E0 | 38 60 00 00 */	li r3, 0x0
/* 813D69E4 | 48 00 00 C0 */	b .L_813D6AA4
.L_813D69E8:
/* 813D69E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D69EC | 41 82 00 0C */	beq .L_813D69F8
/* 813D69F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D69F4 | 40 82 00 0C */	bne .L_813D6A00
.L_813D69F8:
/* 813D69F8 | 38 60 00 01 */	li r3, 0x1
/* 813D69FC | 48 00 00 A8 */	b .L_813D6AA4
.L_813D6A00:
/* 813D6A00 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 813D6A04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D6A08 | 41 82 00 14 */	beq .L_813D6A1C
/* 813D6A0C | 38 00 00 03 */	li r0, 0x3
/* 813D6A10 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 813D6A14 | 38 60 00 03 */	li r3, 0x3
/* 813D6A18 | 48 00 00 8C */	b .L_813D6AA4
.L_813D6A1C:
/* 813D6A1C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813D6A20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6A24 | 41 82 00 08 */	beq .L_813D6A2C
/* 813D6A28 | 48 00 00 7C */	b .L_813D6AA4
.L_813D6A2C:
/* 813D6A2C | 3B E0 00 01 */	li r31, 0x1
/* 813D6A30 | 48 00 00 58 */	b .L_813D6A88
.L_813D6A34:
/* 813D6A34 | A8 9C 00 1C */	lha r4, 0x1c(r28)
/* 813D6A38 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 813D6A3C | 7C 7C 22 14 */	add r3, r28, r4
/* 813D6A40 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813D6A44 | 98 03 00 1E */	stb r0, 0x1e(r3)
/* 813D6A48 | 80 1C 00 14 */	lwz r0, 0x14(r28)
/* 813D6A4C | B0 9C 00 1C */	sth r4, 0x1c(r28)
/* 813D6A50 | 34 00 00 08 */	addic. r0, r0, 0x8
/* 813D6A54 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 813D6A58 | 40 82 00 18 */	bne .L_813D6A70
/* 813D6A5C | 80 1C 00 18 */	lwz r0, 0x18(r28)
/* 813D6A60 | 34 00 00 01 */	addic. r0, r0, 0x1
/* 813D6A64 | 90 1C 00 18 */	stw r0, 0x18(r28)
/* 813D6A68 | 40 82 00 08 */	bne .L_813D6A70
/* 813D6A6C | 93 FC 00 64 */	stw r31, 0x64(r28)
.L_813D6A70:
/* 813D6A70 | A8 1C 00 1C */	lha r0, 0x1c(r28)
/* 813D6A74 | 2C 00 00 40 */	cmpwi r0, 0x40
/* 813D6A78 | 40 82 00 0C */	bne .L_813D6A84
/* 813D6A7C | 7F 83 E3 78 */	mr r3, r28
/* 813D6A80 | 48 00 00 3D */	bl SHA1ProcessMessageBlock
.L_813D6A84:
/* 813D6A84 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_813D6A88:
/* 813D6A88 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813D6A8C | 3B DE FF FF */	subi r30, r30, 0x1
/* 813D6A90 | 41 82 00 10 */	beq .L_813D6AA0
/* 813D6A94 | 80 1C 00 64 */	lwz r0, 0x64(r28)
/* 813D6A98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D6A9C | 41 82 FF 98 */	beq .L_813D6A34
.L_813D6AA0:
/* 813D6AA0 | 38 60 00 00 */	li r3, 0x0
.L_813D6AA4:
/* 813D6AA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D6AA8 | 48 22 2A 69 */	bl _restgpr_28
/* 813D6AAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D6AB0 | 7C 08 03 A6 */	mtlr r0
/* 813D6AB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D6AB8 | 4E 80 00 20 */	blr
.endfn SHA1Input

# .text:0x24C | 0x813D6ABC | size: 0x24C
.fn SHA1ProcessMessageBlock, global
/* 813D6ABC | 94 21 FE A0 */	stwu r1, -0x160(r1)
/* 813D6AC0 | 7C 08 02 A6 */	mflr r0
/* 813D6AC4 | 90 01 01 64 */	stw r0, 0x164(r1)
/* 813D6AC8 | 39 61 01 60 */	addi r11, r1, 0x160
/* 813D6ACC | 48 22 29 F5 */	bl _savegpr_27
/* 813D6AD0 | 3C A0 81 61 */	lis r5, lbl_816105A0@ha
/* 813D6AD4 | 85 65 05 A0 */	lwzu r11, lbl_816105A0@l(r5)
/* 813D6AD8 | 38 00 00 10 */	li r0, 0x10
/* 813D6ADC | 39 81 00 08 */	addi r12, r1, 0x8
/* 813D6AE0 | 81 45 00 04 */	lwz r10, 0x4(r5)
/* 813D6AE4 | 38 80 00 00 */	li r4, 0x0
/* 813D6AE8 | 81 25 00 08 */	lwz r9, 0x8(r5)
/* 813D6AEC | 81 05 00 0C */	lwz r8, 0xc(r5)
/* 813D6AF0 | 7C 09 03 A6 */	mtctr r0
.L_813D6AF4:
/* 813D6AF4 | 7C E3 22 14 */	add r7, r3, r4
/* 813D6AF8 | 88 A7 00 1E */	lbz r5, 0x1e(r7)
/* 813D6AFC | 88 07 00 1F */	lbz r0, 0x1f(r7)
/* 813D6B00 | 54 A6 C0 0E */	slwi r6, r5, 24
/* 813D6B04 | 88 A7 00 20 */	lbz r5, 0x20(r7)
/* 813D6B08 | 7C CC 21 2E */	stwx r6, r12, r4
/* 813D6B0C | 50 06 82 1E */	rlwimi r6, r0, 16, 8, 15
/* 813D6B10 | 88 07 00 21 */	lbz r0, 0x21(r7)
/* 813D6B14 | 50 A6 44 2E */	rlwimi r6, r5, 8, 16, 23
/* 813D6B18 | 7C C0 03 78 */	or r0, r6, r0
/* 813D6B1C | 7C 0C 21 2E */	stwx r0, r12, r4
/* 813D6B20 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813D6B24 | 42 00 FF D0 */	bdnz .L_813D6AF4
/* 813D6B28 | 38 80 00 40 */	li r4, 0x40
/* 813D6B2C | 7C 89 03 A6 */	mtctr r4
.L_813D6B30:
/* 813D6B30 | 39 81 00 08 */	addi r12, r1, 0x8
/* 813D6B34 | 7D 8C 22 14 */	add r12, r12, r4
/* 813D6B38 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813D6B3C | 80 EC FF C0 */	lwz r7, -0x40(r12)
/* 813D6B40 | 80 CC FF C8 */	lwz r6, -0x38(r12)
/* 813D6B44 | 80 AC FF F4 */	lwz r5, -0xc(r12)
/* 813D6B48 | 80 0C FF E0 */	lwz r0, -0x20(r12)
/* 813D6B4C | 7C E6 32 78 */	xor r6, r7, r6
/* 813D6B50 | 7C A0 02 78 */	xor r0, r5, r0
/* 813D6B54 | 7C C0 02 78 */	xor r0, r6, r0
/* 813D6B58 | 54 00 08 3E */	rotlwi r0, r0, 1
/* 813D6B5C | 90 0C 00 00 */	stw r0, 0x0(r12)
/* 813D6B60 | 42 00 FF D0 */	bdnz .L_813D6B30
/* 813D6B64 | 39 80 00 14 */	li r12, 0x14
/* 813D6B68 | 3B 61 00 08 */	addi r27, r1, 0x8
/* 813D6B6C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813D6B70 | 3B E0 00 00 */	li r31, 0x0
/* 813D6B74 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813D6B78 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813D6B7C | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813D6B80 | 80 E3 00 10 */	lwz r7, 0x10(r3)
/* 813D6B84 | 7D 89 03 A6 */	mtctr r12
.L_813D6B88:
/* 813D6B88 | 7C 9D 28 38 */	and r29, r4, r5
/* 813D6B8C | 7C CC 20 78 */	andc r12, r6, r4
/* 813D6B90 | 7F 9B F8 2E */	lwzx r28, r27, r31
/* 813D6B94 | 7F AC 63 78 */	or r12, r29, r12
/* 813D6B98 | 7D 87 62 14 */	add r12, r7, r12
/* 813D6B9C | 54 1E 28 3E */	rotlwi r30, r0, 5
/* 813D6BA0 | 7F AB E2 14 */	add r29, r11, r28
/* 813D6BA4 | 7C C7 33 78 */	mr r7, r6
/* 813D6BA8 | 7C A6 2B 78 */	mr r6, r5
/* 813D6BAC | 54 85 F0 3E */	rotrwi r5, r4, 2
/* 813D6BB0 | 7D 9E 62 14 */	add r12, r30, r12
/* 813D6BB4 | 7C 04 03 78 */	mr r4, r0
/* 813D6BB8 | 7C 1D 62 14 */	add r0, r29, r12
/* 813D6BBC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813D6BC0 | 42 00 FF C8 */	bdnz .L_813D6B88
/* 813D6BC4 | 39 80 00 14 */	li r12, 0x14
/* 813D6BC8 | 3B E1 00 08 */	addi r31, r1, 0x8
/* 813D6BCC | 39 60 00 50 */	li r11, 0x50
/* 813D6BD0 | 7D 89 03 A6 */	mtctr r12
.L_813D6BD4:
/* 813D6BD4 | 7C CC 22 78 */	xor r12, r6, r4
/* 813D6BD8 | 7F BF 58 2E */	lwzx r29, r31, r11
/* 813D6BDC | 7D 8C 2A 78 */	xor r12, r12, r5
/* 813D6BE0 | 54 1E 28 3E */	rotlwi r30, r0, 5
/* 813D6BE4 | 7D 87 62 14 */	add r12, r7, r12
/* 813D6BE8 | 7C C7 33 78 */	mr r7, r6
/* 813D6BEC | 7F AA EA 14 */	add r29, r10, r29
/* 813D6BF0 | 7C A6 2B 78 */	mr r6, r5
/* 813D6BF4 | 7D 9E 62 14 */	add r12, r30, r12
/* 813D6BF8 | 54 85 F0 3E */	rotrwi r5, r4, 2
/* 813D6BFC | 7D 9D 62 14 */	add r12, r29, r12
/* 813D6C00 | 7C 04 03 78 */	mr r4, r0
/* 813D6C04 | 7D 80 63 78 */	mr r0, r12
/* 813D6C08 | 39 6B 00 04 */	addi r11, r11, 0x4
/* 813D6C0C | 42 00 FF C8 */	bdnz .L_813D6BD4
/* 813D6C10 | 39 40 00 14 */	li r10, 0x14
/* 813D6C14 | 3B A1 00 08 */	addi r29, r1, 0x8
/* 813D6C18 | 39 60 00 A0 */	li r11, 0xa0
/* 813D6C1C | 7D 49 03 A6 */	mtctr r10
.L_813D6C20:
/* 813D6C20 | 7C AA 33 78 */	or r10, r5, r6
/* 813D6C24 | 7D 9D 58 2E */	lwzx r12, r29, r11
/* 813D6C28 | 7C BE 30 38 */	and r30, r5, r6
/* 813D6C2C | 54 1F 28 3E */	rotlwi r31, r0, 5
/* 813D6C30 | 7C 8A 50 38 */	and r10, r4, r10
/* 813D6C34 | 7D 89 62 14 */	add r12, r9, r12
/* 813D6C38 | 7F CA 53 78 */	or r10, r30, r10
/* 813D6C3C | 39 6B 00 04 */	addi r11, r11, 0x4
/* 813D6C40 | 7D 47 52 14 */	add r10, r7, r10
/* 813D6C44 | 7C C7 33 78 */	mr r7, r6
/* 813D6C48 | 7C A6 2B 78 */	mr r6, r5
/* 813D6C4C | 54 85 F0 3E */	rotrwi r5, r4, 2
/* 813D6C50 | 7D 5F 52 14 */	add r10, r31, r10
/* 813D6C54 | 7C 04 03 78 */	mr r4, r0
/* 813D6C58 | 7C 0C 52 14 */	add r0, r12, r10
/* 813D6C5C | 42 00 FF C4 */	bdnz .L_813D6C20
/* 813D6C60 | 39 20 00 14 */	li r9, 0x14
/* 813D6C64 | 3B E1 00 08 */	addi r31, r1, 0x8
/* 813D6C68 | 39 40 00 F0 */	li r10, 0xf0
/* 813D6C6C | 7D 29 03 A6 */	mtctr r9
.L_813D6C70:
/* 813D6C70 | 7C C9 22 78 */	xor r9, r6, r4
/* 813D6C74 | 7D 7F 50 2E */	lwzx r11, r31, r10
/* 813D6C78 | 7D 29 2A 78 */	xor r9, r9, r5
/* 813D6C7C | 54 0C 28 3E */	rotlwi r12, r0, 5
/* 813D6C80 | 7D 27 4A 14 */	add r9, r7, r9
/* 813D6C84 | 7C C7 33 78 */	mr r7, r6
/* 813D6C88 | 7D 68 5A 14 */	add r11, r8, r11
/* 813D6C8C | 7C A6 2B 78 */	mr r6, r5
/* 813D6C90 | 7D 2C 4A 14 */	add r9, r12, r9
/* 813D6C94 | 54 85 F0 3E */	rotrwi r5, r4, 2
/* 813D6C98 | 7D 6B 4A 14 */	add r11, r11, r9
/* 813D6C9C | 7C 04 03 78 */	mr r4, r0
/* 813D6CA0 | 7D 60 5B 78 */	mr r0, r11
/* 813D6CA4 | 39 4A 00 04 */	addi r10, r10, 0x4
/* 813D6CA8 | 42 00 FF C8 */	bdnz .L_813D6C70
/* 813D6CAC | 81 03 00 00 */	lwz r8, 0x0(r3)
/* 813D6CB0 | 38 00 00 00 */	li r0, 0x0
/* 813D6CB4 | 81 43 00 04 */	lwz r10, 0x4(r3)
/* 813D6CB8 | 7D 68 5A 14 */	add r11, r8, r11
/* 813D6CBC | 81 23 00 08 */	lwz r9, 0x8(r3)
/* 813D6CC0 | 7D 4A 22 14 */	add r10, r10, r4
/* 813D6CC4 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 813D6CC8 | 7D 29 2A 14 */	add r9, r9, r5
/* 813D6CCC | 81 03 00 0C */	lwz r8, 0xc(r3)
/* 813D6CD0 | 7C 84 3A 14 */	add r4, r4, r7
/* 813D6CD4 | 91 63 00 00 */	stw r11, 0x0(r3)
/* 813D6CD8 | 7C A8 32 14 */	add r5, r8, r6
/* 813D6CDC | 39 61 01 60 */	addi r11, r1, 0x160
/* 813D6CE0 | 91 43 00 04 */	stw r10, 0x4(r3)
/* 813D6CE4 | 91 23 00 08 */	stw r9, 0x8(r3)
/* 813D6CE8 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 813D6CEC | 90 83 00 10 */	stw r4, 0x10(r3)
/* 813D6CF0 | B0 03 00 1C */	sth r0, 0x1c(r3)
/* 813D6CF4 | 48 22 28 19 */	bl _restgpr_27
/* 813D6CF8 | 80 01 01 64 */	lwz r0, 0x164(r1)
/* 813D6CFC | 7C 08 03 A6 */	mtlr r0
/* 813D6D00 | 38 21 01 60 */	addi r1, r1, 0x160
/* 813D6D04 | 4E 80 00 20 */	blr
.endfn SHA1ProcessMessageBlock

# .text:0x498 | 0x813D6D08 | size: 0x128
.fn SHA1PadMessage, global
/* 813D6D08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D6D0C | 7C 08 02 A6 */	mflr r0
/* 813D6D10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D6D14 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D6D18 | 7C 7F 1B 78 */	mr r31, r3
/* 813D6D1C | A8 A3 00 1C */	lha r5, 0x1c(r3)
/* 813D6D20 | 2C 05 00 37 */	cmpwi r5, 0x37
/* 813D6D24 | 40 81 00 74 */	ble .L_813D6D98
/* 813D6D28 | 7C 83 2A 14 */	add r4, r3, r5
/* 813D6D2C | 38 00 00 80 */	li r0, 0x80
/* 813D6D30 | 98 04 00 1E */	stb r0, 0x1e(r4)
/* 813D6D34 | 38 05 00 01 */	addi r0, r5, 0x1
/* 813D6D38 | 38 C0 00 00 */	li r6, 0x0
/* 813D6D3C | B0 03 00 1C */	sth r0, 0x1c(r3)
/* 813D6D40 | 48 00 00 18 */	b .L_813D6D58
.L_813D6D44:
/* 813D6D44 | A8 A3 00 1C */	lha r5, 0x1c(r3)
/* 813D6D48 | 7C 83 2A 14 */	add r4, r3, r5
/* 813D6D4C | 38 05 00 01 */	addi r0, r5, 0x1
/* 813D6D50 | 98 C4 00 1E */	stb r6, 0x1e(r4)
/* 813D6D54 | B0 03 00 1C */	sth r0, 0x1c(r3)
.L_813D6D58:
/* 813D6D58 | A8 03 00 1C */	lha r0, 0x1c(r3)
/* 813D6D5C | 2C 00 00 40 */	cmpwi r0, 0x40
/* 813D6D60 | 41 80 FF E4 */	blt .L_813D6D44
/* 813D6D64 | 7F E3 FB 78 */	mr r3, r31
/* 813D6D68 | 4B FF FD 55 */	bl SHA1ProcessMessageBlock
/* 813D6D6C | 38 A0 00 00 */	li r5, 0x0
/* 813D6D70 | 48 00 00 18 */	b .L_813D6D88
.L_813D6D74:
/* 813D6D74 | A8 9F 00 1C */	lha r4, 0x1c(r31)
/* 813D6D78 | 7C 7F 22 14 */	add r3, r31, r4
/* 813D6D7C | 38 04 00 01 */	addi r0, r4, 0x1
/* 813D6D80 | 98 A3 00 1E */	stb r5, 0x1e(r3)
/* 813D6D84 | B0 1F 00 1C */	sth r0, 0x1c(r31)
.L_813D6D88:
/* 813D6D88 | A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 813D6D8C | 2C 00 00 38 */	cmpwi r0, 0x38
/* 813D6D90 | 41 80 FF E4 */	blt .L_813D6D74
/* 813D6D94 | 48 00 00 40 */	b .L_813D6DD4
.L_813D6D98:
/* 813D6D98 | 7C 83 2A 14 */	add r4, r3, r5
/* 813D6D9C | 38 00 00 80 */	li r0, 0x80
/* 813D6DA0 | 98 04 00 1E */	stb r0, 0x1e(r4)
/* 813D6DA4 | 38 05 00 01 */	addi r0, r5, 0x1
/* 813D6DA8 | 38 C0 00 00 */	li r6, 0x0
/* 813D6DAC | B0 03 00 1C */	sth r0, 0x1c(r3)
/* 813D6DB0 | 48 00 00 18 */	b .L_813D6DC8
.L_813D6DB4:
/* 813D6DB4 | A8 A3 00 1C */	lha r5, 0x1c(r3)
/* 813D6DB8 | 7C 83 2A 14 */	add r4, r3, r5
/* 813D6DBC | 38 05 00 01 */	addi r0, r5, 0x1
/* 813D6DC0 | 98 C4 00 1E */	stb r6, 0x1e(r4)
/* 813D6DC4 | B0 03 00 1C */	sth r0, 0x1c(r3)
.L_813D6DC8:
/* 813D6DC8 | A8 03 00 1C */	lha r0, 0x1c(r3)
/* 813D6DCC | 2C 00 00 38 */	cmpwi r0, 0x38
/* 813D6DD0 | 41 80 FF E4 */	blt .L_813D6DB4
.L_813D6DD4:
/* 813D6DD4 | 81 5F 00 18 */	lwz r10, 0x18(r31)
/* 813D6DD8 | 7F E3 FB 78 */	mr r3, r31
/* 813D6DDC | 80 DF 00 14 */	lwz r6, 0x14(r31)
/* 813D6DE0 | 55 49 46 3E */	srwi r9, r10, 24
/* 813D6DE4 | 55 48 86 3E */	extrwi r8, r10, 8, 8
/* 813D6DE8 | 55 47 C6 3E */	extrwi r7, r10, 8, 16
/* 813D6DEC | 54 C5 46 3E */	srwi r5, r6, 24
/* 813D6DF0 | 54 C4 86 3E */	extrwi r4, r6, 8, 8
/* 813D6DF4 | 54 C0 C6 3E */	extrwi r0, r6, 8, 16
/* 813D6DF8 | 99 3F 00 56 */	stb r9, 0x56(r31)
/* 813D6DFC | 99 1F 00 57 */	stb r8, 0x57(r31)
/* 813D6E00 | 98 FF 00 58 */	stb r7, 0x58(r31)
/* 813D6E04 | 99 5F 00 59 */	stb r10, 0x59(r31)
/* 813D6E08 | 98 BF 00 5A */	stb r5, 0x5a(r31)
/* 813D6E0C | 98 9F 00 5B */	stb r4, 0x5b(r31)
/* 813D6E10 | 98 1F 00 5C */	stb r0, 0x5c(r31)
/* 813D6E14 | 98 DF 00 5D */	stb r6, 0x5d(r31)
/* 813D6E18 | 4B FF FC A5 */	bl SHA1ProcessMessageBlock
/* 813D6E1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D6E20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D6E24 | 7C 08 03 A6 */	mtlr r0
/* 813D6E28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D6E2C | 4E 80 00 20 */	blr
.endfn SHA1PadMessage

# 0x816105A0..0x816105B0 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x816105A0 | size: 0x10
.obj lbl_816105A0, global
	.4byte 0x5A827999
	.4byte 0x6ED9EBA1
	.4byte 0x8F1BBCDC
	.4byte 0xCA62C1D6
.endobj lbl_816105A0
