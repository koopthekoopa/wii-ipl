.include "macros.inc"
.file "pf_clib.c"

# 0x814B57C8..0x814B5AC8 | size: 0x300
.text
.balign 4

# .text:0x0 | 0x814B57C8 | size: 0x18
.fn VFipf_toupper, global
/* 814B57C8 | 2C 03 00 61 */	cmpwi r3, 0x61
/* 814B57CC | 4D 80 00 20 */	bltlr
/* 814B57D0 | 2C 03 00 7A */	cmpwi r3, 0x7a
/* 814B57D4 | 4D 81 00 20 */	bgtlr
/* 814B57D8 | 38 63 FF E0 */	subi r3, r3, 0x20
/* 814B57DC | 4E 80 00 20 */	blr
.endfn VFipf_toupper

# .text:0x18 | 0x814B57E0 | size: 0x128
.fn VFipf_memcpy, global
/* 814B57E0 | 54 60 07 BF */	clrlwi. r0, r3, 30
/* 814B57E4 | 7C 68 1B 78 */	mr r8, r3
/* 814B57E8 | 40 82 00 9C */	bne .L_814B5884
/* 814B57EC | 54 80 07 BF */	clrlwi. r0, r4, 30
/* 814B57F0 | 40 82 00 94 */	bne .L_814B5884
/* 814B57F4 | 28 05 00 03 */	cmplwi r5, 0x3
/* 814B57F8 | 54 A7 F0 BE */	srwi r7, r5, 2
/* 814B57FC | 40 81 00 88 */	ble .L_814B5884
/* 814B5800 | 54 E6 E8 FF */	srwi. r6, r7, 3
/* 814B5804 | 54 E0 10 3A */	slwi r0, r7, 2
/* 814B5808 | 7C 00 00 D0 */	neg r0, r0
/* 814B580C | 7C C9 03 A6 */	mtctr r6
/* 814B5810 | 41 82 00 58 */	beq .L_814B5868
.L_814B5814:
/* 814B5814 | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 814B5818 | 90 C8 00 00 */	stw r6, 0x0(r8)
/* 814B581C | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 814B5820 | 90 C8 00 04 */	stw r6, 0x4(r8)
/* 814B5824 | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 814B5828 | 90 C8 00 08 */	stw r6, 0x8(r8)
/* 814B582C | 80 C4 00 0C */	lwz r6, 0xc(r4)
/* 814B5830 | 90 C8 00 0C */	stw r6, 0xc(r8)
/* 814B5834 | 80 C4 00 10 */	lwz r6, 0x10(r4)
/* 814B5838 | 90 C8 00 10 */	stw r6, 0x10(r8)
/* 814B583C | 80 C4 00 14 */	lwz r6, 0x14(r4)
/* 814B5840 | 90 C8 00 14 */	stw r6, 0x14(r8)
/* 814B5844 | 80 C4 00 18 */	lwz r6, 0x18(r4)
/* 814B5848 | 90 C8 00 18 */	stw r6, 0x18(r8)
/* 814B584C | 80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 814B5850 | 38 84 00 20 */	addi r4, r4, 0x20
/* 814B5854 | 90 C8 00 1C */	stw r6, 0x1c(r8)
/* 814B5858 | 39 08 00 20 */	addi r8, r8, 0x20
/* 814B585C | 42 00 FF B8 */	bdnz .L_814B5814
/* 814B5860 | 70 E7 00 07 */	andi. r7, r7, 0x7
/* 814B5864 | 41 82 00 1C */	beq .L_814B5880
.L_814B5868:
/* 814B5868 | 7C E9 03 A6 */	mtctr r7
.L_814B586C:
/* 814B586C | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 814B5870 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814B5874 | 90 C8 00 00 */	stw r6, 0x0(r8)
/* 814B5878 | 39 08 00 04 */	addi r8, r8, 0x4
/* 814B587C | 42 00 FF F0 */	bdnz .L_814B586C
.L_814B5880:
/* 814B5880 | 7C A5 02 14 */	add r5, r5, r0
.L_814B5884:
/* 814B5884 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B5888 | 4D 82 00 20 */	beqlr
/* 814B588C | 54 A0 E8 FF */	srwi. r0, r5, 3
/* 814B5890 | 7C 09 03 A6 */	mtctr r0
/* 814B5894 | 41 82 00 58 */	beq .L_814B58EC
.L_814B5898:
/* 814B5898 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814B589C | 98 08 00 00 */	stb r0, 0x0(r8)
/* 814B58A0 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814B58A4 | 98 08 00 01 */	stb r0, 0x1(r8)
/* 814B58A8 | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 814B58AC | 98 08 00 02 */	stb r0, 0x2(r8)
/* 814B58B0 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 814B58B4 | 98 08 00 03 */	stb r0, 0x3(r8)
/* 814B58B8 | 88 04 00 04 */	lbz r0, 0x4(r4)
/* 814B58BC | 98 08 00 04 */	stb r0, 0x4(r8)
/* 814B58C0 | 88 04 00 05 */	lbz r0, 0x5(r4)
/* 814B58C4 | 98 08 00 05 */	stb r0, 0x5(r8)
/* 814B58C8 | 88 04 00 06 */	lbz r0, 0x6(r4)
/* 814B58CC | 98 08 00 06 */	stb r0, 0x6(r8)
/* 814B58D0 | 88 04 00 07 */	lbz r0, 0x7(r4)
/* 814B58D4 | 38 84 00 08 */	addi r4, r4, 0x8
/* 814B58D8 | 98 08 00 07 */	stb r0, 0x7(r8)
/* 814B58DC | 39 08 00 08 */	addi r8, r8, 0x8
/* 814B58E0 | 42 00 FF B8 */	bdnz .L_814B5898
/* 814B58E4 | 70 A5 00 07 */	andi. r5, r5, 0x7
/* 814B58E8 | 4D 82 00 20 */	beqlr
.L_814B58EC:
/* 814B58EC | 7C A9 03 A6 */	mtctr r5
.L_814B58F0:
/* 814B58F0 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814B58F4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B58F8 | 98 08 00 00 */	stb r0, 0x0(r8)
/* 814B58FC | 39 08 00 01 */	addi r8, r8, 0x1
/* 814B5900 | 42 00 FF F0 */	bdnz .L_814B58F0
/* 814B5904 | 4E 80 00 20 */	blr
.endfn VFipf_memcpy

# .text:0x140 | 0x814B5908 | size: 0xF8
.fn VFipf_memset, global
/* 814B5908 | 7C 69 1B 78 */	mr r9, r3
/* 814B590C | 48 00 00 10 */	b .L_814B591C
.L_814B5910:
/* 814B5910 | 98 89 00 00 */	stb r4, 0x0(r9)
/* 814B5914 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814B5918 | 38 A5 FF FF */	subi r5, r5, 0x1
.L_814B591C:
/* 814B591C | 55 20 07 BF */	clrlwi. r0, r9, 30
/* 814B5920 | 41 82 00 0C */	beq .L_814B592C
/* 814B5924 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B5928 | 40 82 FF E8 */	bne .L_814B5910
.L_814B592C:
/* 814B592C | 54 87 40 2E */	slwi r7, r4, 8
/* 814B5930 | 28 05 00 03 */	cmplwi r5, 0x3
/* 814B5934 | 7C 88 3B 78 */	or r8, r4, r7
/* 814B5938 | 54 86 C0 0E */	slwi r6, r4, 24
/* 814B593C | 54 80 80 1E */	slwi r0, r4, 16
/* 814B5940 | 54 A7 F0 BE */	srwi r7, r5, 2
/* 814B5944 | 7C C0 03 78 */	or r0, r6, r0
/* 814B5948 | 7D 08 03 78 */	or r8, r8, r0
/* 814B594C | 40 81 00 5C */	ble .L_814B59A8
/* 814B5950 | 54 E6 E8 FF */	srwi. r6, r7, 3
/* 814B5954 | 54 E0 10 3A */	slwi r0, r7, 2
/* 814B5958 | 7C 00 00 D0 */	neg r0, r0
/* 814B595C | 7C C9 03 A6 */	mtctr r6
/* 814B5960 | 41 82 00 34 */	beq .L_814B5994
.L_814B5964:
/* 814B5964 | 91 09 00 00 */	stw r8, 0x0(r9)
/* 814B5968 | 91 09 00 04 */	stw r8, 0x4(r9)
/* 814B596C | 91 09 00 08 */	stw r8, 0x8(r9)
/* 814B5970 | 91 09 00 0C */	stw r8, 0xc(r9)
/* 814B5974 | 91 09 00 10 */	stw r8, 0x10(r9)
/* 814B5978 | 91 09 00 14 */	stw r8, 0x14(r9)
/* 814B597C | 91 09 00 18 */	stw r8, 0x18(r9)
/* 814B5980 | 91 09 00 1C */	stw r8, 0x1c(r9)
/* 814B5984 | 39 29 00 20 */	addi r9, r9, 0x20
/* 814B5988 | 42 00 FF DC */	bdnz .L_814B5964
/* 814B598C | 70 E7 00 07 */	andi. r7, r7, 0x7
/* 814B5990 | 41 82 00 14 */	beq .L_814B59A4
.L_814B5994:
/* 814B5994 | 7C E9 03 A6 */	mtctr r7
.L_814B5998:
/* 814B5998 | 91 09 00 00 */	stw r8, 0x0(r9)
/* 814B599C | 39 29 00 04 */	addi r9, r9, 0x4
/* 814B59A0 | 42 00 FF F8 */	bdnz .L_814B5998
.L_814B59A4:
/* 814B59A4 | 7C A5 02 14 */	add r5, r5, r0
.L_814B59A8:
/* 814B59A8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B59AC | 4D 82 00 20 */	beqlr
/* 814B59B0 | 54 A0 E8 FF */	srwi. r0, r5, 3
/* 814B59B4 | 7C 09 03 A6 */	mtctr r0
/* 814B59B8 | 41 82 00 34 */	beq .L_814B59EC
.L_814B59BC:
/* 814B59BC | 98 89 00 00 */	stb r4, 0x0(r9)
/* 814B59C0 | 98 89 00 01 */	stb r4, 0x1(r9)
/* 814B59C4 | 98 89 00 02 */	stb r4, 0x2(r9)
/* 814B59C8 | 98 89 00 03 */	stb r4, 0x3(r9)
/* 814B59CC | 98 89 00 04 */	stb r4, 0x4(r9)
/* 814B59D0 | 98 89 00 05 */	stb r4, 0x5(r9)
/* 814B59D4 | 98 89 00 06 */	stb r4, 0x6(r9)
/* 814B59D8 | 98 89 00 07 */	stb r4, 0x7(r9)
/* 814B59DC | 39 29 00 08 */	addi r9, r9, 0x8
/* 814B59E0 | 42 00 FF DC */	bdnz .L_814B59BC
/* 814B59E4 | 70 A5 00 07 */	andi. r5, r5, 0x7
/* 814B59E8 | 4D 82 00 20 */	beqlr
.L_814B59EC:
/* 814B59EC | 7C A9 03 A6 */	mtctr r5
.L_814B59F0:
/* 814B59F0 | 98 89 00 00 */	stb r4, 0x0(r9)
/* 814B59F4 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814B59F8 | 42 00 FF F8 */	bdnz .L_814B59F0
/* 814B59FC | 4E 80 00 20 */	blr
.endfn VFipf_memset

# .text:0x238 | 0x814B5A00 | size: 0x20
.fn VFipf_strlen, global
/* 814B5A00 | 7C 64 1B 78 */	mr r4, r3
/* 814B5A04 | 48 00 00 08 */	b .L_814B5A0C
.L_814B5A08:
/* 814B5A08 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814B5A0C:
/* 814B5A0C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814B5A10 | 7C 00 07 75 */	extsb. r0, r0
/* 814B5A14 | 40 82 FF F4 */	bne .L_814B5A08
/* 814B5A18 | 7C 63 20 50 */	subf r3, r3, r4
/* 814B5A1C | 4E 80 00 20 */	blr
.endfn VFipf_strlen

# .text:0x258 | 0x814B5A20 | size: 0x24
.fn VFipf_strcpy, global
/* 814B5A20 | 7C 66 1B 78 */	mr r6, r3
/* 814B5A24 | 48 00 00 0C */	b .L_814B5A30
.L_814B5A28:
/* 814B5A28 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B5A2C | 38 C6 00 01 */	addi r6, r6, 0x1
.L_814B5A30:
/* 814B5A30 | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 814B5A34 | 7C A0 07 75 */	extsb. r0, r5
/* 814B5A38 | 98 A6 00 00 */	stb r5, 0x0(r6)
/* 814B5A3C | 40 82 FF EC */	bne .L_814B5A28
/* 814B5A40 | 4E 80 00 20 */	blr
.endfn VFipf_strcpy

# .text:0x27C | 0x814B5A44 | size: 0x38
.fn VFipf_strcmp, global
/* 814B5A44 | 48 00 00 0C */	b .L_814B5A50
.L_814B5A48:
/* 814B5A48 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B5A4C | 38 84 00 01 */	addi r4, r4, 0x1
.L_814B5A50:
/* 814B5A50 | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 814B5A54 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B5A58 | 41 82 00 18 */	beq .L_814B5A70
/* 814B5A5C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814B5A60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B5A64 | 41 82 00 0C */	beq .L_814B5A70
/* 814B5A68 | 7C 05 00 40 */	cmplw r5, r0
/* 814B5A6C | 41 82 FF DC */	beq .L_814B5A48
.L_814B5A70:
/* 814B5A70 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814B5A74 | 7C 60 28 50 */	subf r3, r0, r5
/* 814B5A78 | 4E 80 00 20 */	blr
.endfn VFipf_strcmp

# .text:0x2B4 | 0x814B5A7C | size: 0x4C
.fn VFipf_strncmp, global
/* 814B5A7C | 7C A9 03 A6 */	mtctr r5
/* 814B5A80 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B5A84 | 41 82 00 3C */	beq .L_814B5AC0
.L_814B5A88:
/* 814B5A88 | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 814B5A8C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B5A90 | 41 82 00 18 */	beq .L_814B5AA8
/* 814B5A94 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814B5A98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B5A9C | 41 82 00 0C */	beq .L_814B5AA8
/* 814B5AA0 | 7C 05 00 40 */	cmplw r5, r0
/* 814B5AA4 | 41 82 00 10 */	beq .L_814B5AB4
.L_814B5AA8:
/* 814B5AA8 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814B5AAC | 7C 60 28 50 */	subf r3, r0, r5
/* 814B5AB0 | 4E 80 00 20 */	blr
.L_814B5AB4:
/* 814B5AB4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814B5AB8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814B5ABC | 42 00 FF CC */	bdnz .L_814B5A88
.L_814B5AC0:
/* 814B5AC0 | 38 60 00 00 */	li r3, 0x0
/* 814B5AC4 | 4E 80 00 20 */	blr
.endfn VFipf_strncmp
