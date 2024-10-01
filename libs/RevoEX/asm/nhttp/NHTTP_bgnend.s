.include "macros.inc"
.file "NHTTP_bgnend.c"

# 0x81495848..0x81495BB8 | size: 0x370
.text
.balign 4

# .text:0x0 | 0x81495848 | size: 0x30
.fn NHTTPi_InitBgnEndInfo, global
/* 81495848 | 38 80 00 00 */	li r4, 0x0
/* 8149584C | 38 00 FF FF */	li r0, -0x1
/* 81495850 | 90 83 07 D4 */	stw r4, 0x7d4(r3)
/* 81495854 | 90 83 07 D8 */	stw r4, 0x7d8(r3)
/* 81495858 | 90 83 07 C4 */	stw r4, 0x7c4(r3)
/* 8149585C | 90 83 07 C8 */	stw r4, 0x7c8(r3)
/* 81495860 | 90 83 07 CC */	stw r4, 0x7cc(r3)
/* 81495864 | 90 03 07 D0 */	stw r0, 0x7d0(r3)
/* 81495868 | 90 83 07 DC */	stw r4, 0x7dc(r3)
/* 8149586C | 90 83 07 E0 */	stw r4, 0x7e0(r3)
/* 81495870 | 90 83 07 E4 */	stw r4, 0x7e4(r3)
/* 81495874 | 4E 80 00 20 */	blr
.endfn NHTTPi_InitBgnEndInfo

# .text:0x30 | 0x81495878 | size: 0x5C
.fn NHTTPi_alloc, global
/* 81495878 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149587C | 7C 08 02 A6 */	mflr r0
/* 81495880 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81495884 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81495888 | 7C 9F 23 78 */	mr r31, r4
/* 8149588C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81495890 | 7C 7E 1B 78 */	mr r30, r3
/* 81495894 | 48 00 73 A5 */	bl NHTTPi_GetSystemInfoP
/* 81495898 | 81 83 07 C4 */	lwz r12, 0x7c4(r3)
/* 8149589C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814958A0 | 41 82 00 18 */	beq .L_814958B8
/* 814958A4 | 7F C3 F3 78 */	mr r3, r30
/* 814958A8 | 7F E4 FB 78 */	mr r4, r31
/* 814958AC | 7D 89 03 A6 */	mtctr r12
/* 814958B0 | 4E 80 04 21 */	bctrl
/* 814958B4 | 48 00 00 08 */	b .L_814958BC
.L_814958B8:
/* 814958B8 | 38 60 00 00 */	li r3, 0x0
.L_814958BC:
/* 814958BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814958C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814958C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814958C8 | 7C 08 03 A6 */	mtlr r0
/* 814958CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814958D0 | 4E 80 00 20 */	blr
.endfn NHTTPi_alloc

# .text:0x8C | 0x814958D4 | size: 0x44
.fn NHTTPi_free, global
/* 814958D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814958D8 | 7C 08 02 A6 */	mflr r0
/* 814958DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814958E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814958E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814958E8 | 48 00 73 51 */	bl NHTTPi_GetSystemInfoP
/* 814958EC | 81 83 07 C8 */	lwz r12, 0x7c8(r3)
/* 814958F0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814958F4 | 41 82 00 10 */	beq .L_81495904
/* 814958F8 | 7F E3 FB 78 */	mr r3, r31
/* 814958FC | 7D 89 03 A6 */	mtctr r12
/* 81495900 | 4E 80 04 21 */	bctrl
.L_81495904:
/* 81495904 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81495908 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149590C | 7C 08 03 A6 */	mtlr r0
/* 81495910 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81495914 | 4E 80 00 20 */	blr
.endfn NHTTPi_free

# .text:0xD0 | 0x81495918 | size: 0x8
.fn NHTTPi_SetError, global
/* 81495918 | 90 83 07 D8 */	stw r4, 0x7d8(r3)
/* 8149591C | 4E 80 00 20 */	blr
.endfn NHTTPi_SetError

# .text:0xD8 | 0x81495920 | size: 0x8
.fn NHTTPi_SetSSLError, global
/* 81495920 | 90 83 07 D4 */	stw r4, 0x7d4(r3)
/* 81495924 | 4E 80 00 20 */	blr
.endfn NHTTPi_SetSSLError

# .text:0xE0 | 0x81495928 | size: 0x8
.fn NHTTPi_GetSSLError, global
/* 81495928 | 80 63 07 D4 */	lwz r3, 0x7d4(r3)
/* 8149592C | 4E 80 00 20 */	blr
.endfn NHTTPi_GetSSLError

# .text:0xE8 | 0x81495930 | size: 0x190
.fn NHTTPi_Startup, global
/* 81495930 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81495934 | 7C 08 02 A6 */	mflr r0
/* 81495938 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149593C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81495940 | 48 16 3B 71 */	bl _savegpr_23
/* 81495944 | 3F C0 81 67 */	lis r30, lbl_8166D058@ha
/* 81495948 | 7C 7F 1B 78 */	mr r31, r3
/* 8149594C | 7C 99 23 78 */	mr r25, r4
/* 81495950 | 7C B7 2B 78 */	mr r23, r5
/* 81495954 | 7C D8 33 78 */	mr r24, r6
/* 81495958 | 3B DE D0 58 */	addi r30, r30, lbl_8166D058@l
/* 8149595C | 48 00 73 45 */	bl NHTTPi_GetBgnEndInfoP
/* 81495960 | 7C 7D 1B 78 */	mr r29, r3
/* 81495964 | 7F E3 FB 78 */	mr r3, r31
/* 81495968 | 48 00 73 3D */	bl NHTTPi_GetListInfoP
/* 8149596C | 7C 7C 1B 78 */	mr r28, r3
/* 81495970 | 7F E3 FB 78 */	mr r3, r31
/* 81495974 | 48 00 73 39 */	bl NHTTPi_GetReqInfoP
/* 81495978 | 7C 7B 1B 78 */	mr r27, r3
/* 8149597C | 7F E3 FB 78 */	mr r3, r31
/* 81495980 | 48 00 73 3D */	bl NHTTPi_GetMutexInfoP
/* 81495984 | 7C 7A 1B 78 */	mr r26, r3
/* 81495988 | 7F E3 FB 78 */	mr r3, r31
/* 8149598C | 48 00 73 29 */	bl NHTTPi_GetThreadInfoP
/* 81495990 | 93 3D 07 C4 */	stw r25, 0x7c4(r29)
/* 81495994 | 7C 79 1B 78 */	mr r25, r3
/* 81495998 | 3B E0 00 00 */	li r31, 0x0
/* 8149599C | 7F 83 E3 78 */	mr r3, r28
/* 814959A0 | 92 FD 07 C8 */	stw r23, 0x7c8(r29)
/* 814959A4 | 93 FD 07 D8 */	stw r31, 0x7d8(r29)
/* 814959A8 | 93 FD 07 D4 */	stw r31, 0x7d4(r29)
/* 814959AC | 93 FD 07 DC */	stw r31, 0x7dc(r29)
/* 814959B0 | 48 00 03 AD */	bl NHTTPi_InitListInfo
/* 814959B4 | 7F 63 DB 78 */	mr r3, r27
/* 814959B8 | 48 00 0E B5 */	bl NHTTPi_InitRequestInfo
/* 814959BC | 7F 43 D3 78 */	mr r3, r26
/* 814959C0 | 48 00 05 F9 */	bl NHTTPi_initLockReqList
/* 814959C4 | 48 00 73 29 */	bl NHTTPi_InitConnectionList
/* 814959C8 | 38 00 FF FF */	li r0, -0x1
/* 814959CC | 90 1D 07 D0 */	stw r0, 0x7d0(r29)
/* 814959D0 | 48 00 72 69 */	bl NHTTPi_GetSystemInfoP
/* 814959D4 | 81 83 07 C4 */	lwz r12, 0x7c4(r3)
/* 814959D8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814959DC | 41 82 00 18 */	beq .L_814959F4
/* 814959E0 | 38 60 20 00 */	li r3, 0x2000
/* 814959E4 | 38 80 00 08 */	li r4, 0x8
/* 814959E8 | 7D 89 03 A6 */	mtctr r12
/* 814959EC | 4E 80 04 21 */	bctrl
/* 814959F0 | 7C 7F 1B 78 */	mr r31, r3
.L_814959F4:
/* 814959F4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814959F8 | 93 FD 07 E0 */	stw r31, 0x7e0(r29)
/* 814959FC | 40 82 00 18 */	bne .L_81495A14
/* 81495A00 | 38 00 00 01 */	li r0, 0x1
/* 81495A04 | 90 1D 07 D8 */	stw r0, 0x7d8(r29)
/* 81495A08 | 48 00 05 F1 */	bl NHTTPi_exitLockReqList
/* 81495A0C | 38 60 00 00 */	li r3, 0x0
/* 81495A10 | 48 00 00 98 */	b .L_81495AA8
.L_81495A14:
/* 81495A14 | 7F 23 CB 78 */	mr r3, r25
/* 81495A18 | 7F 04 C3 78 */	mr r4, r24
/* 81495A1C | 7F E5 FB 78 */	mr r5, r31
/* 81495A20 | 48 00 05 E5 */	bl NHTTPi_createCommThread
/* 81495A24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81495A28 | 40 82 00 40 */	bne .L_81495A68
/* 81495A2C | 38 00 00 09 */	li r0, 0x9
/* 81495A30 | 90 1D 07 D8 */	stw r0, 0x7d8(r29)
/* 81495A34 | 83 DD 07 E0 */	lwz r30, 0x7e0(r29)
/* 81495A38 | 48 00 72 01 */	bl NHTTPi_GetSystemInfoP
/* 81495A3C | 81 83 07 C8 */	lwz r12, 0x7c8(r3)
/* 81495A40 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81495A44 | 41 82 00 10 */	beq .L_81495A54
/* 81495A48 | 7F C3 F3 78 */	mr r3, r30
/* 81495A4C | 7D 89 03 A6 */	mtctr r12
/* 81495A50 | 4E 80 04 21 */	bctrl
.L_81495A54:
/* 81495A54 | 38 00 00 00 */	li r0, 0x0
/* 81495A58 | 90 1D 07 E0 */	stw r0, 0x7e0(r29)
/* 81495A5C | 48 00 05 9D */	bl NHTTPi_exitLockReqList
/* 81495A60 | 38 60 00 00 */	li r3, 0x0
/* 81495A64 | 48 00 00 44 */	b .L_81495AA8
.L_81495A68:
/* 81495A68 | 7F A3 EB 78 */	mr r3, r29
/* 81495A6C | 4B FF CE F9 */	bl NCDGetCurrentIpConfig
/* 81495A70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81495A74 | 40 80 00 28 */	bge .L_81495A9C
/* 81495A78 | 7C 64 1B 78 */	mr r4, r3
/* 81495A7C | 38 7E 00 00 */	addi r3, r30, 0x0
/* 81495A80 | 4C C6 31 82 */	crclr cr1eq
/* 81495A84 | 48 09 8C 1D */	bl OSReport
/* 81495A88 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 81495A8C | 38 BE 00 30 */	addi r5, r30, 0x30
/* 81495A90 | 38 80 00 E6 */	li r4, 0xe6
/* 81495A94 | 4C C6 31 82 */	crclr cr1eq
/* 81495A98 | 48 09 8C 99 */	bl OSPanic
.L_81495A9C:
/* 81495A9C | 38 00 00 01 */	li r0, 0x1
/* 81495AA0 | 38 60 00 01 */	li r3, 0x1
/* 81495AA4 | 90 1D 07 CC */	stw r0, 0x7cc(r29)
.L_81495AA8:
/* 81495AA8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81495AAC | 48 16 3A 51 */	bl _restgpr_23
/* 81495AB0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81495AB4 | 7C 08 03 A6 */	mtlr r0
/* 81495AB8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81495ABC | 4E 80 00 20 */	blr
.endfn NHTTPi_Startup

# .text:0x278 | 0x81495AC0 | size: 0xF0
.fn NHTTPi_CleanupAsync, global
/* 81495AC0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81495AC4 | 7C 08 02 A6 */	mflr r0
/* 81495AC8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81495ACC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81495AD0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81495AD4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81495AD8 | 7C 9D 23 78 */	mr r29, r4
/* 81495ADC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81495AE0 | 7C 7C 1B 78 */	mr r28, r3
/* 81495AE4 | 48 00 71 BD */	bl NHTTPi_GetBgnEndInfoP
/* 81495AE8 | 7C 7E 1B 78 */	mr r30, r3
/* 81495AEC | 7F 83 E3 78 */	mr r3, r28
/* 81495AF0 | 48 00 71 C5 */	bl NHTTPi_GetThreadInfoP
/* 81495AF4 | 7C 7F 1B 78 */	mr r31, r3
/* 81495AF8 | 38 80 00 01 */	li r4, 0x1
/* 81495AFC | 48 00 06 19 */	bl NHTTPi_CheckCurrentThread
/* 81495B00 | 7F 83 E3 78 */	mr r3, r28
/* 81495B04 | 48 00 16 91 */	bl NHTTPi_cancelAllRequests
/* 81495B08 | 7F E3 FB 78 */	mr r3, r31
/* 81495B0C | 7F C4 F3 78 */	mr r4, r30
/* 81495B10 | 48 00 05 89 */	bl NHTTPi_destroyCommThread
/* 81495B14 | 83 FE 07 E0 */	lwz r31, 0x7e0(r30)
/* 81495B18 | 48 00 71 21 */	bl NHTTPi_GetSystemInfoP
/* 81495B1C | 81 83 07 C8 */	lwz r12, 0x7c8(r3)
/* 81495B20 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81495B24 | 41 82 00 10 */	beq .L_81495B34
/* 81495B28 | 7F E3 FB 78 */	mr r3, r31
/* 81495B2C | 7D 89 03 A6 */	mtctr r12
/* 81495B30 | 4E 80 04 21 */	bctrl
.L_81495B34:
/* 81495B34 | 3B E0 00 00 */	li r31, 0x0
/* 81495B38 | 93 FE 07 E0 */	stw r31, 0x7e0(r30)
/* 81495B3C | 48 00 04 BD */	bl NHTTPi_exitLockReqList
/* 81495B40 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81495B44 | 93 FE 07 CC */	stw r31, 0x7cc(r30)
/* 81495B48 | 41 82 00 10 */	beq .L_81495B58
/* 81495B4C | 7F AC EB 78 */	mr r12, r29
/* 81495B50 | 7D 89 03 A6 */	mtctr r12
/* 81495B54 | 4E 80 04 21 */	bctrl
.L_81495B58:
/* 81495B58 | 48 00 6D 51 */	bl NHTTPi_GetConnectionListLength
/* 81495B5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81495B60 | 7C 64 1B 78 */	mr r4, r3
/* 81495B64 | 41 82 00 14 */	beq .L_81495B78
/* 81495B68 | 3C 60 81 67 */	lis r3, lbl_8166D0A0@ha
/* 81495B6C | 38 63 D0 A0 */	addi r3, r3, lbl_8166D0A0@l
/* 81495B70 | 4C C6 31 82 */	crclr cr1eq
/* 81495B74 | 48 16 AB 2D */	bl printf
.L_81495B78:
/* 81495B78 | 80 7E 07 D0 */	lwz r3, 0x7d0(r30)
/* 81495B7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81495B80 | 41 80 00 10 */	blt .L_81495B90
/* 81495B84 | 48 01 D5 D9 */	bl SOClose
/* 81495B88 | 38 00 FF FF */	li r0, -0x1
/* 81495B8C | 90 1E 07 D0 */	stw r0, 0x7d0(r30)
.L_81495B90:
/* 81495B90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81495B94 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81495B98 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81495B9C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81495BA0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81495BA4 | 7C 08 03 A6 */	mtlr r0
/* 81495BA8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81495BAC | 4E 80 00 20 */	blr
.endfn NHTTPi_CleanupAsync

# .text:0x368 | 0x81495BB0 | size: 0x8
.fn NHTTPi_GetError, global
/* 81495BB0 | 80 63 07 D8 */	lwz r3, 0x7d8(r3)
/* 81495BB4 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetError

# 0x8166D058..0x8166D0E0 | size: 0x88
.data
.balign 8

# .data:0x0 | 0x8166D058 | size: 0x48
.obj lbl_8166D058, global
	.4byte 0x4E434447
	.4byte 0x65744375
	.4byte 0x7272656E
	.4byte 0x74497043
	.4byte 0x6F6E6669
	.4byte 0x67206572
	.4byte 0x72203D20
	.4byte 0x25640A00
	.4byte 0x4E485454
	.4byte 0x505F6267
	.4byte 0x6E656E64
	.4byte 0x2E630000
	.4byte 0x4E434447
	.4byte 0x65744375
	.4byte 0x7272656E
	.4byte 0x74497043
	.4byte 0x6F6E6669
	.4byte 0x67000000
.endobj lbl_8166D058

# .data:0x48 | 0x8166D0A0 | size: 0x40
.obj lbl_8166D0A0, global
	.4byte 0x2A776172
	.4byte 0x6E696E67
	.4byte 0x3A202564
	.4byte 0x20636F6E
	.4byte 0x6E656374
	.4byte 0x696F6E73
	.4byte 0x20726573
	.4byte 0x74732120
	.4byte 0x506C6561
	.4byte 0x73652066
	.4byte 0x72656520
	.4byte 0x636F6E6E
	.4byte 0x65637469
	.4byte 0x6F6E732E
	.4byte 0x0A000000
	.4byte 0x00000000
.endobj lbl_8166D0A0
