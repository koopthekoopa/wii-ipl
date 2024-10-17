.include "macros.inc"
.file "iplContest.c"

# 0x810B7508..0x810B8008 | size: 0xB00
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B7508 | size: 0x8D0
.obj g_session, local
	.skip 0x8D0
.endobj g_session

# .bss:0x8D0 | 0x810B7DD8 | size: 0x2C
.obj lbl_810B7DD8, global
	.skip 0x2C
.endobj lbl_810B7DD8

# .bss:0x8FC | 0x810B7E04 | size: 0x204
.obj lbl_810B7E04, global
	.skip 0x204
.endobj lbl_810B7E04

# 0x813D4694..0x813D5564 | size: 0xED0
.text
.balign 4

# .text:0x0 | 0x813D4694 | size: 0xBC
.fn IPLContestInitialize, global
/* 813D4694 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D4698 | 7C 08 02 A6 */	mflr r0
/* 813D469C | 38 A0 00 00 */	li r5, 0x0
/* 813D46A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D46A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D46A8 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D46AC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D46B0 | 7C 9E 23 78 */	mr r30, r4
/* 813D46B4 | 3C 80 00 01 */	lis r4, 0x1
/* 813D46B8 | 90 7F 75 08 */	stw r3, g_session@l(r31)
/* 813D46BC | 48 18 5F B9 */	bl fn_8155A674
/* 813D46C0 | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D46C4 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 813D46C8 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D46CC | 48 15 D5 05 */	bl fn_81531BD0
/* 813D46D0 | 3C 60 00 01 */	lis r3, 0x1
/* 813D46D4 | 38 E0 00 00 */	li r7, 0x0
/* 813D46D8 | 38 C3 FF 00 */	subi r6, r3, 0x100
/* 813D46DC | 38 00 03 CE */	li r0, 0x3ce
/* 813D46E0 | 38 60 00 01 */	li r3, 0x1
/* 813D46E4 | 90 FF 00 20 */	stw r7, 0x20(r31)
/* 813D46E8 | 38 BF 00 53 */	addi r5, r31, 0x53
/* 813D46EC | 38 9E FF FF */	subi r4, r30, 0x1
/* 813D46F0 | 90 DF 00 24 */	stw r6, 0x24(r31)
/* 813D46F4 | 90 FF 00 28 */	stw r7, 0x28(r31)
/* 813D46F8 | 90 FF 00 2C */	stw r7, 0x2c(r31)
/* 813D46FC | 90 FF 00 30 */	stw r7, 0x30(r31)
/* 813D4700 | 90 FF 00 44 */	stw r7, 0x44(r31)
/* 813D4704 | 90 FF 00 40 */	stw r7, 0x40(r31)
/* 813D4708 | 90 FF 00 48 */	stw r7, 0x48(r31)
/* 813D470C | 90 FF 00 4C */	stw r7, 0x4c(r31)
/* 813D4710 | 90 FF 00 50 */	stw r7, 0x50(r31)
/* 813D4714 | 90 FF 00 34 */	stw r7, 0x34(r31)
/* 813D4718 | 90 FF 00 38 */	stw r7, 0x38(r31)
/* 813D471C | 90 7F 00 3C */	stw r3, 0x3c(r31)
/* 813D4720 | 7C 09 03 A6 */	mtctr r0
.L_813D4724:
/* 813D4724 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 813D4728 | 8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 813D472C | 98 65 00 01 */	stb r3, 0x1(r5)
/* 813D4730 | 9C 05 00 02 */	stbu r0, 0x2(r5)
/* 813D4734 | 42 00 FF F0 */	bdnz .L_813D4724
/* 813D4738 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D473C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D4740 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D4744 | 7C 08 03 A6 */	mtlr r0
/* 813D4748 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D474C | 4E 80 00 20 */	blr
.endfn IPLContestInitialize

# .text:0xBC | 0x813D4750 | size: 0x14
.fn IPLContestStart, global
/* 813D4750 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D4754 | 38 00 00 01 */	li r0, 0x1
/* 813D4758 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D475C | 90 03 00 20 */	stw r0, 0x20(r3)
/* 813D4760 | 4E 80 00 20 */	blr
.endfn IPLContestStart

# .text:0xD0 | 0x813D4764 | size: 0x6E8
.fn IPLContestProcess, global
/* 813D4764 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813D4768 | 7C 08 02 A6 */	mflr r0
/* 813D476C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813D4770 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D4774 | 48 22 4D 55 */	bl _savegpr_29
/* 813D4778 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D477C | 3F C0 81 65 */	lis r30, lbl_81653520@ha
/* 813D4780 | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D4784 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 813D4788 | 3B DE 35 20 */	addi r30, r30, lbl_81653520@l
/* 813D478C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D4790 | 41 82 00 30 */	beq .L_813D47C0
/* 813D4794 | 40 80 00 14 */	bge .L_813D47A8
/* 813D4798 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D479C | 41 82 06 8C */	beq .L_813D4E28
/* 813D47A0 | 40 80 00 18 */	bge .L_813D47B8
/* 813D47A4 | 48 00 06 84 */	b .L_813D4E28
.L_813D47A8:
/* 813D47A8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D47AC | 41 82 06 7C */	beq .L_813D4E28
/* 813D47B0 | 40 80 06 78 */	bge .L_813D4E28
/* 813D47B4 | 48 00 04 60 */	b .L_813D4C14
.L_813D47B8:
/* 813D47B8 | 38 00 00 02 */	li r0, 0x2
/* 813D47BC | 90 1F 00 20 */	stw r0, 0x20(r31)
.L_813D47C0:
/* 813D47C0 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D47C4 | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D47C8 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 813D47CC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813D47D0 | 41 82 02 EC */	beq .L_813D4ABC
/* 813D47D4 | 40 80 00 1C */	bge .L_813D47F0
/* 813D47D8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D47DC | 41 82 00 B0 */	beq .L_813D488C
/* 813D47E0 | 40 80 02 2C */	bge .L_813D4A0C
/* 813D47E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D47E8 | 40 80 00 18 */	bge .L_813D4800
/* 813D47EC | 48 00 06 3C */	b .L_813D4E28
.L_813D47F0:
/* 813D47F0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813D47F4 | 41 82 06 34 */	beq .L_813D4E28
/* 813D47F8 | 40 80 06 30 */	bge .L_813D4E28
/* 813D47FC | 48 00 03 B0 */	b .L_813D4BAC
.L_813D4800:
/* 813D4800 | 3C 60 81 3D */	lis r3, iplContest_813D50C0@ha
/* 813D4804 | 3C 80 81 3D */	lis r4, iplContest_813D5130@ha
/* 813D4808 | 38 63 50 C0 */	addi r3, r3, iplContest_813D50C0@l
/* 813D480C | 38 A0 00 11 */	li r5, 0x11
/* 813D4810 | 38 84 51 30 */	addi r4, r4, iplContest_813D5130@l
/* 813D4814 | 48 0C 70 A5 */	bl NHTTPStartup
/* 813D4818 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D481C | 40 82 00 4C */	bne .L_813D4868
/* 813D4820 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 813D4824 | 38 A0 00 04 */	li r5, 0x4
/* 813D4828 | 80 DF 00 28 */	lwz r6, 0x28(r31)
/* 813D482C | 3C 60 FF FF */	lis r3, 0xffff
/* 813D4830 | 60 04 00 04 */	ori r4, r0, 0x4
/* 813D4834 | 90 BF 00 2C */	stw r5, 0x2c(r31)
/* 813D4838 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D483C | 38 03 34 18 */	addi r0, r3, 0x3418
/* 813D4840 | 90 9F 00 24 */	stw r4, 0x24(r31)
/* 813D4844 | 41 82 00 08 */	beq .L_813D484C
/* 813D4848 | 7C C0 33 78 */	mr r0, r6
.L_813D484C:
/* 813D484C | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4850 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 813D4854 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4858 | 90 04 00 28 */	stw r0, 0x28(r4)
/* 813D485C | 4C C6 31 82 */	crclr cr1eq
/* 813D4860 | 48 15 9E 41 */	bl OSReport
/* 813D4864 | 48 00 05 C4 */	b .L_813D4E28
.L_813D4868:
/* 813D4868 | 38 60 04 00 */	li r3, 0x400
/* 813D486C | 48 00 09 D5 */	bl iplContest_813D5240
/* 813D4870 | 38 00 00 01 */	li r0, 0x1
/* 813D4874 | 90 7F 07 F0 */	stw r3, 0x7f0(r31)
/* 813D4878 | 38 7E 00 23 */	addi r3, r30, 0x23
/* 813D487C | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813D4880 | 4C C6 31 82 */	crclr cr1eq
/* 813D4884 | 48 15 9E 1D */	bl OSReport
/* 813D4888 | 48 00 05 A0 */	b .L_813D4E28
.L_813D488C:
/* 813D488C | 3C E0 81 3D */	lis r7, sNHTTPReqCallback@ha
/* 813D4890 | 80 BF 07 F0 */	lwz r5, 0x7f0(r31)
/* 813D4894 | 38 7E 00 43 */	addi r3, r30, 0x43
/* 813D4898 | 38 80 00 00 */	li r4, 0x0
/* 813D489C | 38 E7 53 04 */	addi r7, r7, sNHTTPReqCallback@l
/* 813D48A0 | 38 C0 04 00 */	li r6, 0x400
/* 813D48A4 | 39 00 00 00 */	li r8, 0x0
/* 813D48A8 | 48 0C 72 D9 */	bl NHTTPCreateRequest
/* 813D48AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D48B0 | 90 7F 00 4C */	stw r3, 0x4c(r31)
/* 813D48B4 | 40 82 00 4C */	bne .L_813D4900
/* 813D48B8 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 813D48BC | 38 A0 00 04 */	li r5, 0x4
/* 813D48C0 | 80 DF 00 28 */	lwz r6, 0x28(r31)
/* 813D48C4 | 3C 60 FF FF */	lis r3, 0xffff
/* 813D48C8 | 60 04 00 04 */	ori r4, r0, 0x4
/* 813D48CC | 90 BF 00 2C */	stw r5, 0x2c(r31)
/* 813D48D0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D48D4 | 38 03 34 18 */	addi r0, r3, 0x3418
/* 813D48D8 | 90 9F 00 24 */	stw r4, 0x24(r31)
/* 813D48DC | 41 82 00 08 */	beq .L_813D48E4
/* 813D48E0 | 7C C0 33 78 */	mr r0, r6
.L_813D48E4:
/* 813D48E4 | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D48E8 | 38 7E 00 65 */	addi r3, r30, 0x65
/* 813D48EC | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D48F0 | 90 04 00 28 */	stw r0, 0x28(r4)
/* 813D48F4 | 4C C6 31 82 */	crclr cr1eq
/* 813D48F8 | 48 15 9D A9 */	bl OSReport
/* 813D48FC | 48 00 05 2C */	b .L_813D4E28
.L_813D4900:
/* 813D4900 | 88 1F 00 54 */	lbz r0, 0x54(r31)
/* 813D4904 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813D4908 | 40 82 00 58 */	bne .L_813D4960
/* 813D490C | 48 0C 7A 15 */	bl NHTTPSetProxyDefault
/* 813D4910 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4914 | 41 82 00 4C */	beq .L_813D4960
/* 813D4918 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 813D491C | 38 A0 00 04 */	li r5, 0x4
/* 813D4920 | 80 DF 00 28 */	lwz r6, 0x28(r31)
/* 813D4924 | 3C 60 FF FF */	lis r3, 0xffff
/* 813D4928 | 60 04 00 04 */	ori r4, r0, 0x4
/* 813D492C | 90 BF 00 2C */	stw r5, 0x2c(r31)
/* 813D4930 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D4934 | 38 03 33 50 */	addi r0, r3, 0x3350
/* 813D4938 | 90 9F 00 24 */	stw r4, 0x24(r31)
/* 813D493C | 41 82 00 08 */	beq .L_813D4944
/* 813D4940 | 7C C0 33 78 */	mr r0, r6
.L_813D4944:
/* 813D4944 | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4948 | 38 7E 00 88 */	addi r3, r30, 0x88
/* 813D494C | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4950 | 90 04 00 28 */	stw r0, 0x28(r4)
/* 813D4954 | 4C C6 31 82 */	crclr cr1eq
/* 813D4958 | 48 15 9D 49 */	bl OSReport
/* 813D495C | 48 00 04 CC */	b .L_813D4E28
.L_813D4960:
/* 813D4960 | 3F A0 81 0B */	lis r29, g_session@ha
/* 813D4964 | 3B BD 75 08 */	addi r29, r29, g_session@l
/* 813D4968 | 80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 813D496C | 48 0C 7B 49 */	bl NHTTPSetClientCertDefault
/* 813D4970 | 80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 813D4974 | 48 0C 7A E1 */	bl NHTTPSetRootCADefault
/* 813D4978 | 80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 813D497C | 38 80 00 00 */	li r4, 0x0
/* 813D4980 | 48 0C 77 D5 */	bl NHTTPSetVerifyOption
/* 813D4984 | 80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 813D4988 | 48 0C 74 A5 */	bl NHTTPSendRequestAsync
/* 813D498C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4990 | 90 7D 00 48 */	stw r3, 0x48(r29)
/* 813D4994 | 40 80 00 54 */	bge .L_813D49E8
/* 813D4998 | 80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 813D499C | 48 0C 72 C1 */	bl NHTTPDeleteRequest
/* 813D49A0 | 80 1D 00 24 */	lwz r0, 0x24(r29)
/* 813D49A4 | 38 A0 00 04 */	li r5, 0x4
/* 813D49A8 | 80 DD 00 28 */	lwz r6, 0x28(r29)
/* 813D49AC | 3C 60 FF FF */	lis r3, 0xffff
/* 813D49B0 | 60 04 00 04 */	ori r4, r0, 0x4
/* 813D49B4 | 90 BD 00 2C */	stw r5, 0x2c(r29)
/* 813D49B8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D49BC | 38 03 34 18 */	addi r0, r3, 0x3418
/* 813D49C0 | 90 9D 00 24 */	stw r4, 0x24(r29)
/* 813D49C4 | 41 82 00 08 */	beq .L_813D49CC
/* 813D49C8 | 7C C0 33 78 */	mr r0, r6
.L_813D49CC:
/* 813D49CC | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D49D0 | 38 7E 00 A6 */	addi r3, r30, 0xa6
/* 813D49D4 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D49D8 | 90 04 00 28 */	stw r0, 0x28(r4)
/* 813D49DC | 4C C6 31 82 */	crclr cr1eq
/* 813D49E0 | 48 15 9C C1 */	bl OSReport
/* 813D49E4 | 48 00 04 44 */	b .L_813D4E28
.L_813D49E8:
/* 813D49E8 | 38 00 00 02 */	li r0, 0x2
/* 813D49EC | 38 7E 00 C6 */	addi r3, r30, 0xc6
/* 813D49F0 | 90 1D 00 2C */	stw r0, 0x2c(r29)
/* 813D49F4 | 4C C6 31 82 */	crclr cr1eq
/* 813D49F8 | 48 15 9C A9 */	bl OSReport
/* 813D49FC | 48 16 12 85 */	bl OSGetTime
/* 813D4A00 | 90 9D 00 44 */	stw r4, 0x44(r29)
/* 813D4A04 | 90 7D 00 40 */	stw r3, 0x40(r29)
/* 813D4A08 | 48 00 04 20 */	b .L_813D4E28
.L_813D4A0C:
/* 813D4A0C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D4A10 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813D4A14 | 48 0C 74 B5 */	bl NHTTPGetProgress
/* 813D4A18 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 813D4A1C | 38 7E 00 E3 */	addi r3, r30, 0xe3
/* 813D4A20 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 813D4A24 | 4C C6 31 82 */	crclr cr1eq
/* 813D4A28 | 48 15 9C 79 */	bl OSReport
/* 813D4A2C | 48 16 12 55 */	bl OSGetTime
/* 813D4A30 | 3C C0 80 00 */	lis r6, 0x8000
/* 813D4A34 | 81 3F 00 44 */	lwz r9, 0x44(r31)
/* 813D4A38 | 80 C6 00 F8 */	lwz r6, 0xf8(r6)
/* 813D4A3C | 3C A0 00 01 */	lis r5, 0x1
/* 813D4A40 | 38 00 03 E8 */	li r0, 0x3e8
/* 813D4A44 | 7D 29 20 10 */	subfc r9, r9, r4
/* 813D4A48 | 54 C6 F0 BE */	srwi r6, r6, 2
/* 813D4A4C | 38 A5 5F 90 */	addi r5, r5, 0x5f90
/* 813D4A50 | 7D 06 03 96 */	divwu r8, r6, r0
/* 813D4A54 | 80 1F 00 40 */	lwz r0, 0x40(r31)
/* 813D4A58 | 38 E0 00 00 */	li r7, 0x0
/* 813D4A5C | 7C 00 19 10 */	subfe r0, r0, r3
/* 813D4A60 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813D4A64 | 7C 68 28 16 */	mulhwu r3, r8, r5
/* 813D4A68 | 7C 87 29 D6 */	mullw r4, r7, r5
/* 813D4A6C | 7C C8 29 D6 */	mullw r6, r8, r5
/* 813D4A70 | 7C A3 22 14 */	add r5, r3, r4
/* 813D4A74 | 7C 88 39 D6 */	mullw r4, r8, r7
/* 813D4A78 | 7C 66 48 10 */	subfc r3, r6, r9
/* 813D4A7C | 7C 65 22 14 */	add r3, r5, r4
/* 813D4A80 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 813D4A84 | 7C 63 01 10 */	subfe r3, r3, r0
/* 813D4A88 | 7C 60 01 10 */	subfe r3, r0, r0
/* 813D4A8C | 7C 63 00 D1 */	neg. r3, r3
/* 813D4A90 | 40 82 03 98 */	bne .L_813D4E28
/* 813D4A94 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813D4A98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4A9C | 41 80 03 8C */	blt .L_813D4E28
/* 813D4AA0 | 48 0C 73 E9 */	bl NHTTPCancelRequestAsync
/* 813D4AA4 | 38 7E 00 F3 */	addi r3, r30, 0xf3
/* 813D4AA8 | 4C C6 31 82 */	crclr cr1eq
/* 813D4AAC | 48 15 9B F5 */	bl OSReport
/* 813D4AB0 | 38 00 FF FF */	li r0, -0x1
/* 813D4AB4 | 90 1F 00 48 */	stw r0, 0x48(r31)
/* 813D4AB8 | 48 00 03 70 */	b .L_813D4E28
.L_813D4ABC:
/* 813D4ABC | 38 7E 01 1A */	addi r3, r30, 0x11a
/* 813D4AC0 | 48 22 44 3D */	bl strlen
/* 813D4AC4 | 7C 7D 1B 78 */	mr r29, r3
/* 813D4AC8 | 80 7F 00 50 */	lwz r3, 0x50(r31)
/* 813D4ACC | 38 9E 01 0B */	addi r4, r30, 0x10b
/* 813D4AD0 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 813D4AD4 | 48 0C 74 C9 */	bl NHTTPGetHeaderField
/* 813D4AD8 | 7C 03 E8 40 */	cmplw r3, r29
/* 813D4ADC | 40 82 00 80 */	bne .L_813D4B5C
/* 813D4AE0 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 813D4AE4 | 38 7E 01 1A */	addi r3, r30, 0x11a
/* 813D4AE8 | 48 22 D9 99 */	bl strcmp
/* 813D4AEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4AF0 | 40 82 00 6C */	bne .L_813D4B5C
/* 813D4AF4 | 80 7F 00 50 */	lwz r3, 0x50(r31)
/* 813D4AF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4AFC | 41 82 00 10 */	beq .L_813D4B0C
/* 813D4B00 | 48 0C 74 19 */	bl NHTTPDestroyResponse
/* 813D4B04 | 38 00 00 00 */	li r0, 0x0
/* 813D4B08 | 90 1F 00 50 */	stw r0, 0x50(r31)
.L_813D4B0C:
/* 813D4B0C | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D4B10 | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D4B14 | 80 7F 07 F0 */	lwz r3, 0x7f0(r31)
/* 813D4B18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4B1C | 41 82 00 14 */	beq .L_813D4B30
/* 813D4B20 | 38 80 00 00 */	li r4, 0x0
/* 813D4B24 | 48 00 07 7D */	bl iplContest_813D52A0
/* 813D4B28 | 38 00 00 00 */	li r0, 0x0
/* 813D4B2C | 90 1F 07 F0 */	stw r0, 0x7f0(r31)
.L_813D4B30:
/* 813D4B30 | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4B34 | 3C 60 81 3D */	lis r3, sNHTTPCleanupCallback@ha
/* 813D4B38 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4B3C | 38 00 00 05 */	li r0, 0x5
/* 813D4B40 | 90 04 00 2C */	stw r0, 0x2c(r4)
/* 813D4B44 | 38 63 54 E4 */	addi r3, r3, sNHTTPCleanupCallback@l
/* 813D4B48 | 48 0C 6D FD */	bl NHTTPCleanupAsync
/* 813D4B4C | 38 7E 01 23 */	addi r3, r30, 0x123
/* 813D4B50 | 4C C6 31 82 */	crclr cr1eq
/* 813D4B54 | 48 15 9B 4D */	bl OSReport
/* 813D4B58 | 48 00 02 D0 */	b .L_813D4E28
.L_813D4B5C:
/* 813D4B5C | 3C A0 81 0B */	lis r5, g_session@ha
/* 813D4B60 | 3C 60 FF FF */	lis r3, 0xffff
/* 813D4B64 | 38 A5 75 08 */	addi r5, r5, g_session@l
/* 813D4B68 | 38 C0 00 04 */	li r6, 0x4
/* 813D4B6C | 80 E5 00 28 */	lwz r7, 0x28(r5)
/* 813D4B70 | 38 03 34 18 */	addi r0, r3, 0x3418
/* 813D4B74 | 80 85 00 24 */	lwz r4, 0x24(r5)
/* 813D4B78 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813D4B7C | 90 C5 00 2C */	stw r6, 0x2c(r5)
/* 813D4B80 | 60 83 00 01 */	ori r3, r4, 0x1
/* 813D4B84 | 90 65 00 24 */	stw r3, 0x24(r5)
/* 813D4B88 | 41 82 00 08 */	beq .L_813D4B90
/* 813D4B8C | 7C E0 3B 78 */	mr r0, r7
.L_813D4B90:
/* 813D4B90 | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4B94 | 38 7E 01 42 */	addi r3, r30, 0x142
/* 813D4B98 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4B9C | 90 04 00 28 */	stw r0, 0x28(r4)
/* 813D4BA0 | 4C C6 31 82 */	crclr cr1eq
/* 813D4BA4 | 48 15 9A FD */	bl OSReport
/* 813D4BA8 | 48 00 02 80 */	b .L_813D4E28
.L_813D4BAC:
/* 813D4BAC | 80 7F 00 50 */	lwz r3, 0x50(r31)
/* 813D4BB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4BB4 | 41 82 00 10 */	beq .L_813D4BC4
/* 813D4BB8 | 48 0C 73 61 */	bl NHTTPDestroyResponse
/* 813D4BBC | 38 00 00 00 */	li r0, 0x0
/* 813D4BC0 | 90 1F 00 50 */	stw r0, 0x50(r31)
.L_813D4BC4:
/* 813D4BC4 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D4BC8 | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D4BCC | 80 7F 07 F0 */	lwz r3, 0x7f0(r31)
/* 813D4BD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4BD4 | 41 82 00 14 */	beq .L_813D4BE8
/* 813D4BD8 | 38 80 00 00 */	li r4, 0x0
/* 813D4BDC | 48 00 06 C5 */	bl iplContest_813D52A0
/* 813D4BE0 | 38 00 00 00 */	li r0, 0x0
/* 813D4BE4 | 90 1F 07 F0 */	stw r0, 0x7f0(r31)
.L_813D4BE8:
/* 813D4BE8 | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4BEC | 3C 60 81 3D */	lis r3, sNHTTPCleanupCallback@ha
/* 813D4BF0 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4BF4 | 38 00 00 05 */	li r0, 0x5
/* 813D4BF8 | 90 04 00 2C */	stw r0, 0x2c(r4)
/* 813D4BFC | 38 63 54 E4 */	addi r3, r3, sNHTTPCleanupCallback@l
/* 813D4C00 | 48 0C 6D 45 */	bl NHTTPCleanupAsync
/* 813D4C04 | 38 7E 01 64 */	addi r3, r30, 0x164
/* 813D4C08 | 4C C6 31 82 */	crclr cr1eq
/* 813D4C0C | 48 15 9A 95 */	bl OSReport
/* 813D4C10 | 48 00 02 18 */	b .L_813D4E28
.L_813D4C14:
/* 813D4C14 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 813D4C18 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 813D4C1C | 40 82 00 0C */	bne .L_813D4C28
/* 813D4C20 | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 813D4C24 | 41 82 00 30 */	beq .L_813D4C54
.L_813D4C28:
/* 813D4C28 | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4C2C | 38 A0 00 04 */	li r5, 0x4
/* 813D4C30 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4C34 | 38 7E 01 8E */	addi r3, r30, 0x18e
/* 813D4C38 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813D4C3C | 90 A4 00 20 */	stw r5, 0x20(r4)
/* 813D4C40 | 54 00 06 1E */	rlwinm r0, r0, 0, 24, 15
/* 813D4C44 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 813D4C48 | 4C C6 31 82 */	crclr cr1eq
/* 813D4C4C | 48 15 9A 55 */	bl OSReport
/* 813D4C50 | 48 00 01 D8 */	b .L_813D4E28
.L_813D4C54:
/* 813D4C54 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 813D4C58 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813D4C5C | 41 82 01 08 */	beq .L_813D4D64
/* 813D4C60 | 40 80 00 1C */	bge .L_813D4C7C
/* 813D4C64 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D4C68 | 41 82 00 68 */	beq .L_813D4CD0
/* 813D4C6C | 40 80 00 C8 */	bge .L_813D4D34
/* 813D4C70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D4C74 | 40 80 00 18 */	bge .L_813D4C8C
/* 813D4C78 | 48 00 01 B0 */	b .L_813D4E28
.L_813D4C7C:
/* 813D4C7C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813D4C80 | 41 82 01 98 */	beq .L_813D4E18
/* 813D4C84 | 40 80 01 A4 */	bge .L_813D4E28
/* 813D4C88 | 48 00 01 68 */	b .L_813D4DF0
.L_813D4C8C:
/* 813D4C8C | 3C 60 81 3D */	lis r3, iplContest_813D5138@ha
/* 813D4C90 | 3C 80 81 3D */	lis r4, iplContest_813D513C@ha
/* 813D4C94 | 3C A0 81 3D */	lis r5, iplContest_813D5144@ha
/* 813D4C98 | 3C C0 81 3D */	lis r6, iplContest_813D51DC@ha
/* 813D4C9C | 38 63 51 38 */	addi r3, r3, iplContest_813D5138@l
/* 813D4CA0 | 38 84 51 3C */	addi r4, r4, iplContest_813D513C@l
/* 813D4CA4 | 38 A5 51 44 */	addi r5, r5, iplContest_813D5144@l
/* 813D4CA8 | 38 C6 51 DC */	addi r6, r6, iplContest_813D51DC@l
/* 813D4CAC | 48 00 16 8D */	bl gsiMemoryCallbacksSet
/* 813D4CB0 | 38 6D 8C C0 */	li r3, lbl_81696D00@sda21
/* 813D4CB4 | 48 00 13 85 */	bl GSIStartAvailableCheckA
/* 813D4CB8 | 38 00 00 01 */	li r0, 0x1
/* 813D4CBC | 38 7E 01 C0 */	addi r3, r30, 0x1c0
/* 813D4CC0 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 813D4CC4 | 4C C6 31 82 */	crclr cr1eq
/* 813D4CC8 | 48 15 99 D9 */	bl OSReport
/* 813D4CCC | 48 00 01 5C */	b .L_813D4E28
.L_813D4CD0:
/* 813D4CD0 | 48 00 14 B9 */	bl GSIAvailableCheckThink
/* 813D4CD4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813D4CD8 | 41 82 00 14 */	beq .L_813D4CEC
/* 813D4CDC | 40 80 00 30 */	bge .L_813D4D0C
/* 813D4CE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D4CE4 | 40 80 01 44 */	bge .L_813D4E28
/* 813D4CE8 | 48 00 00 24 */	b .L_813D4D0C
.L_813D4CEC:
/* 813D4CEC | 38 60 00 01 */	li r3, 0x1
/* 813D4CF0 | 38 00 00 02 */	li r0, 0x2
/* 813D4CF4 | 90 7F 00 34 */	stw r3, 0x34(r31)
/* 813D4CF8 | 38 7E 01 E3 */	addi r3, r30, 0x1e3
/* 813D4CFC | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 813D4D00 | 4C C6 31 82 */	crclr cr1eq
/* 813D4D04 | 48 15 99 9D */	bl OSReport
/* 813D4D08 | 48 00 01 20 */	b .L_813D4E28
.L_813D4D0C:
/* 813D4D0C | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4D10 | 38 60 00 00 */	li r3, 0x0
/* 813D4D14 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4D18 | 38 00 00 05 */	li r0, 0x5
/* 813D4D1C | 90 64 00 34 */	stw r3, 0x34(r4)
/* 813D4D20 | 38 7E 02 0B */	addi r3, r30, 0x20b
/* 813D4D24 | 90 04 00 30 */	stw r0, 0x30(r4)
/* 813D4D28 | 4C C6 31 82 */	crclr cr1eq
/* 813D4D2C | 48 15 99 75 */	bl OSReport
/* 813D4D30 | 48 00 00 F8 */	b .L_813D4E28
.L_813D4D34:
/* 813D4D34 | 3C 60 81 3D */	lis r3, iplContest_813D54F8@ha
/* 813D4D38 | 38 63 54 F8 */	addi r3, r3, iplContest_813D54F8@l
/* 813D4D3C | 48 00 29 D1 */	bl NNStartNatDetection
/* 813D4D40 | 38 00 00 03 */	li r0, 0x3
/* 813D4D44 | 38 7E 02 35 */	addi r3, r30, 0x235
/* 813D4D48 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 813D4D4C | 4C C6 31 82 */	crclr cr1eq
/* 813D4D50 | 48 15 99 51 */	bl OSReport
/* 813D4D54 | 48 16 0F 2D */	bl OSGetTime
/* 813D4D58 | 90 9F 00 44 */	stw r4, 0x44(r31)
/* 813D4D5C | 90 7F 00 40 */	stw r3, 0x40(r31)
/* 813D4D60 | 48 00 00 C8 */	b .L_813D4E28
.L_813D4D64:
/* 813D4D64 | 48 00 2D CD */	bl NNThink
/* 813D4D68 | 48 16 0F 19 */	bl OSGetTime
/* 813D4D6C | 3C C0 80 00 */	lis r6, 0x8000
/* 813D4D70 | 81 3F 00 44 */	lwz r9, 0x44(r31)
/* 813D4D74 | 80 C6 00 F8 */	lwz r6, 0xf8(r6)
/* 813D4D78 | 3C A0 00 01 */	lis r5, 0x1
/* 813D4D7C | 38 00 03 E8 */	li r0, 0x3e8
/* 813D4D80 | 7D 29 20 10 */	subfc r9, r9, r4
/* 813D4D84 | 54 C6 F0 BE */	srwi r6, r6, 2
/* 813D4D88 | 38 A5 5F 90 */	addi r5, r5, 0x5f90
/* 813D4D8C | 7D 06 03 96 */	divwu r8, r6, r0
/* 813D4D90 | 80 1F 00 40 */	lwz r0, 0x40(r31)
/* 813D4D94 | 38 E0 00 00 */	li r7, 0x0
/* 813D4D98 | 7C 00 19 10 */	subfe r0, r0, r3
/* 813D4D9C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813D4DA0 | 7C 68 28 16 */	mulhwu r3, r8, r5
/* 813D4DA4 | 7C 87 29 D6 */	mullw r4, r7, r5
/* 813D4DA8 | 7C C8 29 D6 */	mullw r6, r8, r5
/* 813D4DAC | 7C A3 22 14 */	add r5, r3, r4
/* 813D4DB0 | 7C 88 39 D6 */	mullw r4, r8, r7
/* 813D4DB4 | 7C 66 48 10 */	subfc r3, r6, r9
/* 813D4DB8 | 7C 65 22 14 */	add r3, r5, r4
/* 813D4DBC | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 813D4DC0 | 7C 63 01 10 */	subfe r3, r3, r0
/* 813D4DC4 | 7C 60 01 10 */	subfe r3, r0, r0
/* 813D4DC8 | 7C 63 00 D1 */	neg. r3, r3
/* 813D4DCC | 40 82 00 5C */	bne .L_813D4E28
/* 813D4DD0 | 38 60 00 05 */	li r3, 0x5
/* 813D4DD4 | 38 00 00 01 */	li r0, 0x1
/* 813D4DD8 | 90 7F 00 30 */	stw r3, 0x30(r31)
/* 813D4DDC | 38 7E 02 67 */	addi r3, r30, 0x267
/* 813D4DE0 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 813D4DE4 | 4C C6 31 82 */	crclr cr1eq
/* 813D4DE8 | 48 15 98 B9 */	bl OSReport
/* 813D4DEC | 48 00 00 3C */	b .L_813D4E28
.L_813D4DF0:
/* 813D4DF0 | 48 00 21 31 */	bl NNFreeNegotiateList
/* 813D4DF4 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 813D4DF8 | 38 60 00 04 */	li r3, 0x4
/* 813D4DFC | 90 7F 00 20 */	stw r3, 0x20(r31)
/* 813D4E00 | 38 7E 02 7D */	addi r3, r30, 0x27d
/* 813D4E04 | 54 00 06 1E */	rlwinm r0, r0, 0, 24, 15
/* 813D4E08 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 813D4E0C | 4C C6 31 82 */	crclr cr1eq
/* 813D4E10 | 48 15 98 91 */	bl OSReport
/* 813D4E14 | 48 00 00 14 */	b .L_813D4E28
.L_813D4E18:
/* 813D4E18 | 54 60 06 1E */	rlwinm r0, r3, 0, 24, 15
/* 813D4E1C | 38 60 00 04 */	li r3, 0x4
/* 813D4E20 | 90 7F 00 20 */	stw r3, 0x20(r31)
/* 813D4E24 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_813D4E28:
/* 813D4E28 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D4E2C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813D4E30 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D4E34 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 813D4E38 | 48 22 46 DD */	bl _restgpr_29
/* 813D4E3C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813D4E40 | 7C 08 03 A6 */	mtlr r0
/* 813D4E44 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813D4E48 | 4E 80 00 20 */	blr
.endfn IPLContestProcess

# .text:0x7B8 | 0x813D4E4C | size: 0x24
.fn IPLContestGetResult, global
/* 813D4E4C | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4E50 | 3C 60 00 01 */	lis r3, 0x1
/* 813D4E54 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4E58 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 813D4E5C | 38 63 FF 00 */	subi r3, r3, 0x100
/* 813D4E60 | 54 80 04 2F */	rlwinm. r0, r4, 0, 16, 23
/* 813D4E64 | 4C 82 00 20 */	bnelr
/* 813D4E68 | 7C 83 23 78 */	mr r3, r4
/* 813D4E6C | 4E 80 00 20 */	blr
.endfn IPLContestGetResult

# .text:0x7DC | 0x813D4E70 | size: 0x18
.fn IPLContestGetErrorCode, global
/* 813D4E70 | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4E74 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4E78 | 80 04 00 28 */	lwz r0, 0x28(r4)
/* 813D4E7C | 7C 03 00 50 */	subf r0, r3, r0
/* 813D4E80 | 7C 60 00 D0 */	neg r3, r0
/* 813D4E84 | 4E 80 00 20 */	blr
.endfn IPLContestGetErrorCode

# .text:0x7F4 | 0x813D4E88 | size: 0x21C
.fn IPLGetNATSupportCode, global
/* 813D4E88 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 813D4E8C | 7C 08 02 A6 */	mflr r0
/* 813D4E90 | 3D 00 81 61 */	lis r8, lbl_81610558@ha
/* 813D4E94 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 813D4E98 | 39 08 05 58 */	addi r8, r8, lbl_81610558@l
/* 813D4E9C | 38 88 00 00 */	addi r4, r8, 0x0
/* 813D4EA0 | 38 00 00 03 */	li r0, 0x3
/* 813D4EA4 | 93 E1 01 3C */	stw r31, 0x13c(r1)
/* 813D4EA8 | 38 C1 00 38 */	addi r6, r1, 0x38
/* 813D4EAC | 38 A4 FF FC */	subi r5, r4, 0x4
/* 813D4EB0 | 7C 09 03 A6 */	mtctr r0
.L_813D4EB4:
/* 813D4EB4 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813D4EB8 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813D4EBC | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813D4EC0 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813D4EC4 | 42 00 FF F0 */	bdnz .L_813D4EB4
/* 813D4EC8 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 813D4ECC | 38 88 00 1C */	addi r4, r8, 0x1c
/* 813D4ED0 | 38 00 00 02 */	li r0, 0x2
/* 813D4ED4 | 38 E1 00 24 */	addi r7, r1, 0x24
/* 813D4ED8 | 90 A6 00 04 */	stw r5, 0x4(r6)
/* 813D4EDC | 38 A4 FF FC */	subi r5, r4, 0x4
/* 813D4EE0 | 7C 09 03 A6 */	mtctr r0
.L_813D4EE4:
/* 813D4EE4 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813D4EE8 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813D4EEC | 90 87 00 04 */	stw r4, 0x4(r7)
/* 813D4EF0 | 94 07 00 08 */	stwu r0, 0x8(r7)
/* 813D4EF4 | 42 00 FF F0 */	bdnz .L_813D4EE4
/* 813D4EF8 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 813D4EFC | 38 88 00 30 */	addi r4, r8, 0x30
/* 813D4F00 | 38 00 00 03 */	li r0, 0x3
/* 813D4F04 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 813D4F08 | 90 A7 00 04 */	stw r5, 0x4(r7)
/* 813D4F0C | 38 A4 FF FC */	subi r5, r4, 0x4
/* 813D4F10 | 7C 09 03 A6 */	mtctr r0
.L_813D4F14:
/* 813D4F14 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813D4F18 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813D4F1C | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813D4F20 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813D4F24 | 42 00 FF F0 */	bdnz .L_813D4F14
/* 813D4F28 | 80 A2 86 C0 */	lwz r5, lbl_81694AC0@sda21(r0)
/* 813D4F2C | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4F30 | 80 E2 86 C4 */	lwz r7, lbl_81694AC4@sda21(r0)
/* 813D4F34 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4F38 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813D4F3C | 38 00 00 1B */	li r0, 0x1b
/* 813D4F40 | 38 C1 00 54 */	addi r6, r1, 0x54
/* 813D4F44 | 38 A4 07 F0 */	addi r5, r4, 0x7f0
/* 813D4F48 | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 813D4F4C | 7C 09 03 A6 */	mtctr r0
.L_813D4F50:
/* 813D4F50 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813D4F54 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813D4F58 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813D4F5C | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813D4F60 | 42 00 FF F0 */	bdnz .L_813D4F50
/* 813D4F64 | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D4F68 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D4F6C | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813D4F70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D4F74 | 41 82 00 C0 */	beq .L_813D5034
/* 813D4F78 | 80 04 00 38 */	lwz r0, 0x38(r4)
/* 813D4F7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D4F80 | 41 82 00 0C */	beq .L_813D4F8C
/* 813D4F84 | 3B E0 2B AC */	li r31, 0x2bac
/* 813D4F88 | 48 00 00 B0 */	b .L_813D5038
.L_813D4F8C:
/* 813D4F8C | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813D4F90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D4F94 | 41 82 00 0C */	beq .L_813D4FA0
/* 813D4F98 | 3B E0 2B A2 */	li r31, 0x2ba2
/* 813D4F9C | 48 00 00 9C */	b .L_813D5038
.L_813D4FA0:
/* 813D4FA0 | 80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 813D4FA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D4FA8 | 40 82 00 28 */	bne .L_813D4FD0
/* 813D4FAC | A0 01 01 08 */	lhz r0, 0x108(r1)
/* 813D4FB0 | A0 81 00 F8 */	lhz r4, 0xf8(r1)
/* 813D4FB4 | 54 00 08 3C */	slwi r0, r0, 1
/* 813D4FB8 | A0 A1 01 18 */	lhz r5, 0x118(r1)
/* 813D4FBC | 7C 04 00 50 */	subf r0, r4, r0
/* 813D4FC0 | 7C 05 00 00 */	cmpw r5, r0
/* 813D4FC4 | 40 82 00 0C */	bne .L_813D4FD0
/* 813D4FC8 | 38 00 00 05 */	li r0, 0x5
/* 813D4FCC | 90 01 00 E8 */	stw r0, 0xe8(r1)
.L_813D4FD0:
/* 813D4FD0 | 80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 813D4FD4 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 813D4FD8 | 80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 813D4FDC | 38 E1 00 3C */	addi r7, r1, 0x3c
/* 813D4FE0 | 54 09 10 3A */	slwi r9, r0, 2
/* 813D4FE4 | 80 01 01 2C */	lwz r0, 0x12c(r1)
/* 813D4FE8 | 54 A8 10 3A */	slwi r8, r5, 2
/* 813D4FEC | 80 81 00 E0 */	lwz r4, 0xe0(r1)
/* 813D4FF0 | 7D 26 48 2E */	lwzx r9, r6, r9
/* 813D4FF4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813D4FF8 | 7C E7 40 2E */	lwzx r7, r7, r8
/* 813D4FFC | 54 86 10 3A */	slwi r6, r4, 2
/* 813D5000 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 813D5004 | 54 00 E8 FA */	rlwinm r0, r0, 29, 3, 29
/* 813D5008 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813D500C | 7C A5 30 2E */	lwzx r5, r5, r6
/* 813D5010 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 813D5014 | 1D 09 00 64 */	mulli r8, r9, 0x64
/* 813D5018 | 1C 87 27 10 */	mulli r4, r7, 0x2710
/* 813D501C | 1C C5 03 E8 */	mulli r6, r5, 0x3e8
/* 813D5020 | 7C A8 22 14 */	add r5, r8, r4
/* 813D5024 | 1C 80 00 0A */	mulli r4, r0, 0xa
/* 813D5028 | 7C 06 2A 14 */	add r0, r6, r5
/* 813D502C | 7F E4 02 14 */	add r31, r4, r0
/* 813D5030 | 48 00 00 08 */	b .L_813D5038
.L_813D5034:
/* 813D5034 | 3B E0 2B B6 */	li r31, 0x2bb6
.L_813D5038:
/* 813D5038 | 38 00 00 0A */	li r0, 0xa
/* 813D503C | 7C 03 03 D6 */	divw r0, r3, r0
/* 813D5040 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813D5044 | 41 82 00 28 */	beq .L_813D506C
/* 813D5048 | 40 80 00 10 */	bge .L_813D5058
/* 813D504C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D5050 | 40 80 00 14 */	bge .L_813D5064
/* 813D5054 | 48 00 00 24 */	b .L_813D5078
.L_813D5058:
/* 813D5058 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813D505C | 40 80 00 1C */	bge .L_813D5078
/* 813D5060 | 48 00 00 14 */	b .L_813D5074
.L_813D5064:
/* 813D5064 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813D5068 | 48 00 00 10 */	b .L_813D5078
.L_813D506C:
/* 813D506C | 3B FF 00 02 */	addi r31, r31, 0x2
/* 813D5070 | 48 00 00 08 */	b .L_813D5078
.L_813D5074:
/* 813D5074 | 3B FF 00 03 */	addi r31, r31, 0x3
.L_813D5078:
/* 813D5078 | 3C 60 81 65 */	lis r3, lbl_816537D1@ha
/* 813D507C | 7F E4 FB 78 */	mr r4, r31
/* 813D5080 | 38 63 37 D1 */	addi r3, r3, lbl_816537D1@l
/* 813D5084 | 4C C6 31 82 */	crclr cr1eq
/* 813D5088 | 48 15 96 19 */	bl OSReport
/* 813D508C | 7F E3 FB 78 */	mr r3, r31
/* 813D5090 | 83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 813D5094 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 813D5098 | 7C 08 03 A6 */	mtlr r0
/* 813D509C | 38 21 01 40 */	addi r1, r1, 0x140
/* 813D50A0 | 4E 80 00 20 */	blr
.endfn IPLGetNATSupportCode

# .text:0xA10 | 0x813D50A4 | size: 0x1C
.fn IPLContestShutdown, global
/* 813D50A4 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D50A8 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D50AC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813D50B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D50B4 | 4D 82 00 20 */	beqlr
/* 813D50B8 | 48 18 56 6C */	b fn_8155A724
/* 813D50BC | 4E 80 00 20 */	blr
.endfn IPLContestShutdown

# .text:0xA2C | 0x813D50C0 | size: 0x70
.fn iplContest_813D50C0, global
/* 813D50C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D50C4 | 7C 08 02 A6 */	mflr r0
/* 813D50C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D50CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D50D0 | 48 22 43 F9 */	bl _savegpr_29
/* 813D50D4 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813D50D8 | 7C 7D 1B 78 */	mr r29, r3
/* 813D50DC | 7C 9E 23 78 */	mr r30, r4
/* 813D50E0 | 40 80 00 08 */	bge .L_813D50E8
/* 813D50E4 | 3B C0 00 04 */	li r30, 0x4
.L_813D50E8:
/* 813D50E8 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D50EC | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D50F0 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D50F4 | 48 15 CB 15 */	bl fn_81531C08
/* 813D50F8 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813D50FC | 7F A4 EB 78 */	mr r4, r29
/* 813D5100 | 7F C5 F3 78 */	mr r5, r30
/* 813D5104 | 48 18 56 51 */	bl fn_8155A754
/* 813D5108 | 7C 7E 1B 78 */	mr r30, r3
/* 813D510C | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D5110 | 48 15 CB D5 */	bl fn_81531CE4
/* 813D5114 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D5118 | 7F C3 F3 78 */	mr r3, r30
/* 813D511C | 48 22 43 F9 */	bl _restgpr_29
/* 813D5120 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D5124 | 7C 08 03 A6 */	mtlr r0
/* 813D5128 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D512C | 4E 80 00 20 */	blr
.endfn iplContest_813D50C0

# .text:0xA9C | 0x813D5130 | size: 0x8
.fn iplContest_813D5130, global
/* 813D5130 | 38 80 00 00 */	li r4, 0x0
/* 813D5134 | 48 00 01 6C */	b iplContest_813D52A0
.endfn iplContest_813D5130

# .text:0xAA4 | 0x813D5138 | size: 0x4
.fn iplContest_813D5138, global
/* 813D5138 | 48 00 01 08 */	b iplContest_813D5240
.endfn iplContest_813D5138

# .text:0xAA8 | 0x813D513C | size: 0x8
.fn iplContest_813D513C, global
/* 813D513C | 38 80 00 00 */	li r4, 0x0
/* 813D5140 | 48 00 01 60 */	b iplContest_813D52A0
.endfn iplContest_813D513C

# .text:0xAB0 | 0x813D5144 | size: 0x98
.fn iplContest_813D5144, global
/* 813D5144 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D5148 | 7C 08 02 A6 */	mflr r0
/* 813D514C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D5150 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D5154 | 48 22 43 71 */	bl _savegpr_28
/* 813D5158 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D515C | 7C 7C 1B 78 */	mr r28, r3
/* 813D5160 | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D5164 | 7C 9D 23 78 */	mr r29, r4
/* 813D5168 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D516C | 48 15 CA 9D */	bl fn_81531C08
/* 813D5170 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813D5174 | 7F A4 EB 78 */	mr r4, r29
/* 813D5178 | 38 A0 00 04 */	li r5, 0x4
/* 813D517C | 48 18 55 D9 */	bl fn_8155A754
/* 813D5180 | 7C 7E 1B 78 */	mr r30, r3
/* 813D5184 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D5188 | 48 15 CB 5D */	bl fn_81531CE4
/* 813D518C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813D5190 | 40 82 00 0C */	bne .L_813D519C
/* 813D5194 | 3B C0 00 00 */	li r30, 0x0
/* 813D5198 | 48 00 00 28 */	b .L_813D51C0
.L_813D519C:
/* 813D519C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813D51A0 | 41 82 00 20 */	beq .L_813D51C0
/* 813D51A4 | 7F C3 F3 78 */	mr r3, r30
/* 813D51A8 | 7F 84 E3 78 */	mr r4, r28
/* 813D51AC | 7F A5 EB 78 */	mr r5, r29
/* 813D51B0 | 4B F5 B0 81 */	bl memcpy
/* 813D51B4 | 7F 83 E3 78 */	mr r3, r28
/* 813D51B8 | 38 80 00 00 */	li r4, 0x0
/* 813D51BC | 48 00 00 E5 */	bl iplContest_813D52A0
.L_813D51C0:
/* 813D51C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D51C4 | 7F C3 F3 78 */	mr r3, r30
/* 813D51C8 | 48 22 43 49 */	bl _restgpr_28
/* 813D51CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D51D0 | 7C 08 03 A6 */	mtlr r0
/* 813D51D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D51D8 | 4E 80 00 20 */	blr
.endfn iplContest_813D5144

# .text:0xB48 | 0x813D51DC | size: 0x64
.fn iplContest_813D51DC, global
/* 813D51DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D51E0 | 7C 08 02 A6 */	mflr r0
/* 813D51E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D51E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D51EC | 48 22 42 DD */	bl _savegpr_29
/* 813D51F0 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D51F4 | 7C 7D 1B 78 */	mr r29, r3
/* 813D51F8 | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D51FC | 7C 9E 23 78 */	mr r30, r4
/* 813D5200 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D5204 | 48 15 CA 05 */	bl fn_81531C08
/* 813D5208 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813D520C | 7F C4 F3 78 */	mr r4, r30
/* 813D5210 | 7F A5 EB 78 */	mr r5, r29
/* 813D5214 | 48 18 55 41 */	bl fn_8155A754
/* 813D5218 | 7C 7E 1B 78 */	mr r30, r3
/* 813D521C | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D5220 | 48 15 CA C5 */	bl fn_81531CE4
/* 813D5224 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813D5228 | 7F C3 F3 78 */	mr r3, r30
/* 813D522C | 48 22 42 E9 */	bl _restgpr_29
/* 813D5230 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D5234 | 7C 08 03 A6 */	mtlr r0
/* 813D5238 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D523C | 4E 80 00 20 */	blr
.endfn iplContest_813D51DC

# .text:0xBAC | 0x813D5240 | size: 0x60
.fn iplContest_813D5240, global
/* 813D5240 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D5244 | 7C 08 02 A6 */	mflr r0
/* 813D5248 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D524C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D5250 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D5254 | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D5258 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D525C | 7C 7E 1B 78 */	mr r30, r3
/* 813D5260 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D5264 | 48 15 C9 A5 */	bl fn_81531C08
/* 813D5268 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813D526C | 7F C4 F3 78 */	mr r4, r30
/* 813D5270 | 38 A0 00 04 */	li r5, 0x4
/* 813D5274 | 48 18 54 E1 */	bl fn_8155A754
/* 813D5278 | 7C 7E 1B 78 */	mr r30, r3
/* 813D527C | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D5280 | 48 15 CA 65 */	bl fn_81531CE4
/* 813D5284 | 7F C3 F3 78 */	mr r3, r30
/* 813D5288 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D528C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D5290 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D5294 | 7C 08 03 A6 */	mtlr r0
/* 813D5298 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D529C | 4E 80 00 20 */	blr
.endfn iplContest_813D5240

# .text:0xC0C | 0x813D52A0 | size: 0x64
.fn iplContest_813D52A0, global
/* 813D52A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D52A4 | 7C 08 02 A6 */	mflr r0
/* 813D52A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D52AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D52B0 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D52B4 | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D52B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D52BC | 7C 7E 1B 78 */	mr r30, r3
/* 813D52C0 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813D52C4 | 48 15 C9 45 */	bl fn_81531C08
/* 813D52C8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813D52CC | 41 82 00 10 */	beq .L_813D52DC
/* 813D52D0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813D52D4 | 7F C4 F3 78 */	mr r4, r30
/* 813D52D8 | 48 18 57 2D */	bl fn_8155AA04
.L_813D52DC:
/* 813D52DC | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D52E0 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D52E4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813D52E8 | 48 15 C9 FD */	bl fn_81531CE4
/* 813D52EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D52F0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D52F4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D52F8 | 7C 08 03 A6 */	mtlr r0
/* 813D52FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D5300 | 4E 80 00 20 */	blr
.endfn iplContest_813D52A0

# .text:0xC70 | 0x813D5304 | size: 0x1E0
.fn sNHTTPReqCallback, global
/* 813D5304 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D5308 | 7C 08 02 A6 */	mflr r0
/* 813D530C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D5310 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D5314 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D5318 | 3F E0 81 0B */	lis r31, g_session@ha
/* 813D531C | 3B FF 75 08 */	addi r31, r31, g_session@l
/* 813D5320 | 90 9F 00 50 */	stw r4, 0x50(r31)
/* 813D5324 | 40 82 00 B0 */	bne .L_813D53D4
/* 813D5328 | 7C 83 23 78 */	mr r3, r4
/* 813D532C | 48 0C 6D C9 */	bl NHTTPGetResultCode
/* 813D5330 | 2C 03 01 97 */	cmpwi r3, 0x197
/* 813D5334 | 41 82 00 20 */	beq .L_813D5354
/* 813D5338 | 40 80 00 58 */	bge .L_813D5390
/* 813D533C | 2C 03 00 C8 */	cmpwi r3, 0xc8
/* 813D5340 | 41 82 00 08 */	beq .L_813D5348
/* 813D5344 | 48 00 00 4C */	b .L_813D5390
.L_813D5348:
/* 813D5348 | 38 00 00 03 */	li r0, 0x3
/* 813D534C | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813D5350 | 48 00 01 80 */	b .L_813D54D0
.L_813D5354:
/* 813D5354 | 80 BF 00 28 */	lwz r5, 0x28(r31)
/* 813D5358 | 38 00 00 04 */	li r0, 0x4
/* 813D535C | 3C 60 FF FF */	lis r3, 0xffff
/* 813D5360 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813D5364 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D5368 | 38 83 32 EC */	addi r4, r3, 0x32ec
/* 813D536C | 41 82 00 08 */	beq .L_813D5374
/* 813D5370 | 7C A4 2B 78 */	mr r4, r5
.L_813D5374:
/* 813D5374 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D5378 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D537C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813D5380 | 90 83 00 28 */	stw r4, 0x28(r3)
/* 813D5384 | 60 00 00 04 */	ori r0, r0, 0x4
/* 813D5388 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 813D538C | 48 00 01 44 */	b .L_813D54D0
.L_813D5390:
/* 813D5390 | 3C A0 81 0B */	lis r5, g_session@ha
/* 813D5394 | 3C 60 FF FF */	lis r3, 0xffff
/* 813D5398 | 38 A5 75 08 */	addi r5, r5, g_session@l
/* 813D539C | 38 00 00 04 */	li r0, 0x4
/* 813D53A0 | 80 C5 00 28 */	lwz r6, 0x28(r5)
/* 813D53A4 | 38 83 34 18 */	addi r4, r3, 0x3418
/* 813D53A8 | 90 05 00 2C */	stw r0, 0x2c(r5)
/* 813D53AC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D53B0 | 41 82 00 08 */	beq .L_813D53B8
/* 813D53B4 | 7C C4 33 78 */	mr r4, r6
.L_813D53B8:
/* 813D53B8 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D53BC | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D53C0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813D53C4 | 90 83 00 28 */	stw r4, 0x28(r3)
/* 813D53C8 | 60 00 00 04 */	ori r0, r0, 0x4
/* 813D53CC | 90 03 00 24 */	stw r0, 0x24(r3)
/* 813D53D0 | 48 00 01 00 */	b .L_813D54D0
.L_813D53D4:
/* 813D53D4 | 38 00 00 04 */	li r0, 0x4
/* 813D53D8 | 2C 03 00 0C */	cmpwi r3, 0xc
/* 813D53DC | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 813D53E0 | 41 82 00 48 */	beq .L_813D5428
/* 813D53E4 | 40 80 00 10 */	bge .L_813D53F4
/* 813D53E8 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813D53EC | 41 82 00 14 */	beq .L_813D5400
/* 813D53F0 | 48 00 00 88 */	b .L_813D5478
.L_813D53F4:
/* 813D53F4 | 2C 03 00 0E */	cmpwi r3, 0xe
/* 813D53F8 | 40 80 00 80 */	bge .L_813D5478
/* 813D53FC | 48 00 00 54 */	b .L_813D5450
.L_813D5400:
/* 813D5400 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813D5404 | 3C 60 FF FF */	lis r3, 0xffff
/* 813D5408 | 38 03 34 7C */	addi r0, r3, 0x347c
/* 813D540C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D5410 | 41 82 00 08 */	beq .L_813D5418
/* 813D5414 | 7C 80 23 78 */	mr r0, r4
.L_813D5418:
/* 813D5418 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D541C | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D5420 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813D5424 | 48 00 00 80 */	b .L_813D54A4
.L_813D5428:
/* 813D5428 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813D542C | 3C 60 FF FF */	lis r3, 0xffff
/* 813D5430 | 38 03 33 50 */	addi r0, r3, 0x3350
/* 813D5434 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D5438 | 41 82 00 08 */	beq .L_813D5440
/* 813D543C | 7C 80 23 78 */	mr r0, r4
.L_813D5440:
/* 813D5440 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D5444 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D5448 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813D544C | 48 00 00 58 */	b .L_813D54A4
.L_813D5450:
/* 813D5450 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813D5454 | 3C 60 FF FF */	lis r3, 0xffff
/* 813D5458 | 38 03 33 50 */	addi r0, r3, 0x3350
/* 813D545C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D5460 | 41 82 00 08 */	beq .L_813D5468
/* 813D5464 | 7C 80 23 78 */	mr r0, r4
.L_813D5468:
/* 813D5468 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D546C | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D5470 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813D5474 | 48 00 00 30 */	b .L_813D54A4
.L_813D5478:
/* 813D5478 | 3C 80 81 0B */	lis r4, g_session@ha
/* 813D547C | 3C 60 FF FF */	lis r3, 0xffff
/* 813D5480 | 38 84 75 08 */	addi r4, r4, g_session@l
/* 813D5484 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813D5488 | 38 03 34 18 */	addi r0, r3, 0x3418
/* 813D548C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D5490 | 41 82 00 08 */	beq .L_813D5498
/* 813D5494 | 7C 80 23 78 */	mr r0, r4
.L_813D5498:
/* 813D5498 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D549C | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D54A0 | 90 03 00 28 */	stw r0, 0x28(r3)
.L_813D54A4:
/* 813D54A4 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D54A8 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D54AC | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813D54B0 | 60 00 00 04 */	ori r0, r0, 0x4
/* 813D54B4 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 813D54B8 | 48 0C 64 C1 */	bl NHTTPGetError
/* 813D54BC | 3C A0 81 65 */	lis r5, lbl_816537E6@ha
/* 813D54C0 | 7C 64 1B 78 */	mr r4, r3
/* 813D54C4 | 38 65 37 E6 */	addi r3, r5, lbl_816537E6@l
/* 813D54C8 | 4C C6 31 82 */	crclr cr1eq
/* 813D54CC | 48 15 91 D5 */	bl OSReport
.L_813D54D0:
/* 813D54D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D54D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D54D8 | 7C 08 03 A6 */	mtlr r0
/* 813D54DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D54E0 | 4E 80 00 20 */	blr
.endfn sNHTTPReqCallback

# .text:0xE50 | 0x813D54E4 | size: 0x14
.fn sNHTTPCleanupCallback, global
/* 813D54E4 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D54E8 | 38 00 00 03 */	li r0, 0x3
/* 813D54EC | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D54F0 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 813D54F4 | 4E 80 00 20 */	blr
.endfn sNHTTPCleanupCallback

# .text:0xE64 | 0x813D54F8 | size: 0x6C
.fn iplContest_813D54F8, global
/* 813D54F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D54FC | 41 82 00 44 */	beq .L_813D5540
/* 813D5500 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D5504 | 38 00 00 1B */	li r0, 0x1b
/* 813D5508 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D550C | 38 84 FF FC */	subi r4, r4, 0x4
/* 813D5510 | 38 A3 07 F0 */	addi r5, r3, 0x7f0
/* 813D5514 | 7C 09 03 A6 */	mtctr r0
.L_813D5518:
/* 813D5518 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813D551C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813D5520 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813D5524 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813D5528 | 42 00 FF F0 */	bdnz .L_813D5518
/* 813D552C | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D5530 | 38 00 00 00 */	li r0, 0x0
/* 813D5534 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D5538 | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 813D553C | 48 00 00 14 */	b .L_813D5550
.L_813D5540:
/* 813D5540 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D5544 | 38 00 00 01 */	li r0, 0x1
/* 813D5548 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D554C | 90 03 00 3C */	stw r0, 0x3c(r3)
.L_813D5550:
/* 813D5550 | 3C 60 81 0B */	lis r3, g_session@ha
/* 813D5554 | 38 00 00 04 */	li r0, 0x4
/* 813D5558 | 38 63 75 08 */	addi r3, r3, g_session@l
/* 813D555C | 90 03 00 30 */	stw r0, 0x30(r3)
/* 813D5560 | 4E 80 00 20 */	blr
.endfn iplContest_813D54F8

# 0x81610558..0x816105A0 | size: 0x48
.rodata
.balign 8

# .rodata:0x0 | 0x81610558 | size: 0x48
.obj lbl_81610558, global
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
.endobj lbl_81610558

# 0x81653520..0x81653810 | size: 0x2F0
.data
.balign 8

# .data:0x0 | 0x81653520 | size: 0x2B1
.obj lbl_81653520, global
	.4byte 0x5B657272
	.4byte 0x6F725D20
	.4byte 0x4661696C
	.4byte 0x65642074
	.4byte 0x6F207374
	.4byte 0x61727420
	.4byte 0x7570204E
	.4byte 0x48545450
	.4byte 0x2E0A0053
	.4byte 0x74617274
	.4byte 0x696E6720
	.4byte 0x48545450
	.4byte 0x20636F6E
	.4byte 0x65637474
	.4byte 0x696E6720
	.4byte 0x74657374
	.4byte 0x2E0A0068
	.4byte 0x7474703A
	.4byte 0x2F2F636F
	.4byte 0x6E6E7465
	.4byte 0x73742E6E
	.4byte 0x696E7465
	.4byte 0x6E646F77
	.4byte 0x6966692E
	.4byte 0x6E65742F
	.4byte 0x005B6572
	.4byte 0x726F725D
	.4byte 0x20466169
	.4byte 0x6C656420
	.4byte 0x746F2063
	.4byte 0x72656174
	.4byte 0x65207265
	.4byte 0x71756573
	.4byte 0x742E0A00
	.4byte 0x5B657272
	.4byte 0x6F725D20
	.4byte 0x4661696C
	.4byte 0x65642074
	.4byte 0x6F207365
	.4byte 0x74207072
	.4byte 0x6F78792E
	.4byte 0x0A005B65
	.4byte 0x72726F72
	.4byte 0x5D204661
	.4byte 0x696C6564
	.4byte 0x20746F20
	.4byte 0x73656E64
	.4byte 0x20657175
	.4byte 0x6573742E
	.4byte 0x0A004854
	.4byte 0x54502052
	.4byte 0x65717565
	.4byte 0x73742068
	.4byte 0x61732062
	.4byte 0x65656E20
	.4byte 0x73656E74
	.4byte 0x2E0A0072
	.4byte 0x65636569
	.4byte 0x7665643A
	.4byte 0x25642F25
	.4byte 0x640A005B
	.4byte 0x6572726F
	.4byte 0x725D204E
	.4byte 0x48545450
	.4byte 0x2074696D
	.4byte 0x656F7574
	.4byte 0x2E0A0058
	.4byte 0x2D4F7267
	.4byte 0x616E697A
	.4byte 0x6174696F
	.4byte 0x6E004E69
	.4byte 0x6E74656E
	.4byte 0x646F0048
	.4byte 0x54545020
	.4byte 0x74657374
	.4byte 0x20686173
	.4byte 0x20626565
	.4byte 0x6E20636F
	.4byte 0x6D706C65
	.4byte 0x7465642E
	.4byte 0x0A005B65
	.4byte 0x72726F72
	.4byte 0x5D20496E
	.4byte 0x76616C69
	.4byte 0x64207265
	.4byte 0x73706F6E
	.4byte 0x73652068
	.4byte 0x65616465
	.4byte 0x722E0A00
	.4byte 0x48545450
	.4byte 0x20746573
	.4byte 0x74206861
	.4byte 0x73206265
	.4byte 0x656E2063
	.4byte 0x6F6D706C
	.4byte 0x65746564
	.4byte 0x20776974
	.4byte 0x68206572
	.4byte 0x726F722E
	.4byte 0x0A00506F
	.4byte 0x7274206D
	.4byte 0x61707069
	.4byte 0x6E672064
	.4byte 0x65746563
	.4byte 0x74696F6E
	.4byte 0x696E6720
	.4byte 0x74657374
	.4byte 0x20686173
	.4byte 0x20626565
	.4byte 0x6E20736B
	.4byte 0x69707065
	.4byte 0x642E0A00
	.4byte 0x53746172
	.4byte 0x74696E67
	.4byte 0x2047616D
	.4byte 0x65537079
	.4byte 0x20617661
	.4byte 0x696C6162
	.4byte 0x6C652063
	.4byte 0x6865636B
	.4byte 0x2E0A0047
	.4byte 0x616D6553
	.4byte 0x70792073
	.4byte 0x65727665
	.4byte 0x72206973
	.4byte 0x20637572
	.4byte 0x72656E74
	.4byte 0x6C792061
	.4byte 0x7661696C
	.4byte 0x61626C65
	.4byte 0x2E0A0047
	.4byte 0x616D6553
	.4byte 0x70792073
	.4byte 0x65727665
	.4byte 0x72206973
	.4byte 0x20637572
	.4byte 0x72656E74
	.4byte 0x6C792075
	.4byte 0x6E617661
	.4byte 0x696C6162
	.4byte 0x6C652E0A
	.4byte 0x00506F72
	.4byte 0x74206D61
	.4byte 0x7070696E
	.4byte 0x67206465
	.4byte 0x74656374
	.4byte 0x696F6E69
	.4byte 0x6E672074
	.4byte 0x65737420
	.4byte 0x68617320
	.4byte 0x6265656E
	.4byte 0x20737461
	.4byte 0x72746564
	.4byte 0x2E0A005B
	.4byte 0x6572726F
	.4byte 0x725D204E
	.4byte 0x41542074
	.4byte 0x696D656F
	.4byte 0x75742E0A
	.4byte 0x00506F72
	.4byte 0x74206D61
	.4byte 0x7070696E
	.4byte 0x67206465
	.4byte 0x74656374
	.4byte 0x696F6E69
	.4byte 0x6E672074
	.4byte 0x65737420
	.4byte 0x68617320
	.4byte 0x6265656E
	.4byte 0x20636F6D
	.4byte 0x706C6574
	.4byte 0x65642E0A
	.byte 0x00
.endobj lbl_81653520

# .data:0x2B1 | 0x816537D1 | size: 0x15
.obj lbl_816537D1, global
	.string "Wii Support Code:%d\n"
.endobj lbl_816537D1

# .data:0x2C6 | 0x816537E6 | size: 0x27
.obj lbl_816537E6, global
	.string "[error] NHTTPReqCallback errorcode:%d\n"
.endobj lbl_816537E6

# .data:0x2ED | 0x8165380D | size: 0x3
.obj gap_08_8165380D_data, global
.hidden gap_08_8165380D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_08_8165380D_data

# 0x81694AC0..0x81694AC8 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694AC0 | size: 0x4
.obj lbl_81694AC0, global
	.4byte 0x00000001
.endobj lbl_81694AC0

# .sdata2:0x4 | 0x81694AC4 | size: 0x4
.obj lbl_81694AC4, global
	.4byte 0x00000002
.endobj lbl_81694AC4

# 0x81696D00..0x81696D08 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696D00 | size: 0x8
.obj lbl_81696D00, global
	.4byte 0x7769696E
	.4byte 0x61740000
.endobj lbl_81696D00
