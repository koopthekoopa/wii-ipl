.include "macros.inc"
.file "d_nhttp.c"

# 0x8149B8B8..0x8149C524 | size: 0xC6C
.text
.balign 4

# .text:0x0 | 0x8149B8B8 | size: 0x8C
.fn NHTTPStartup, global
/* 8149B8B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149B8BC | 7C 08 02 A6 */	mflr r0
/* 8149B8C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149B8C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149B8C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149B8CC | 7C BE 2B 78 */	mr r30, r5
/* 8149B8D0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149B8D4 | 7C 9D 23 78 */	mr r29, r4
/* 8149B8D8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8149B8DC | 7C 7C 1B 78 */	mr r28, r3
/* 8149B8E0 | 48 00 13 59 */	bl NHTTPi_GetSystemInfoP
/* 8149B8E4 | 80 0D AD 78 */	lwz r0, nhttpRegistered@sda21(r0)
/* 8149B8E8 | 7C 7F 1B 78 */	mr r31, r3
/* 8149B8EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149B8F0 | 40 82 00 14 */	bne .L_8149B904
/* 8149B8F4 | 80 6D 9A F0 */	lwz r3, __NHTTPVersion@sda21(r0)
/* 8149B8F8 | 48 09 0E E1 */	bl OSRegisterVersion
/* 8149B8FC | 38 00 00 01 */	li r0, 0x1
/* 8149B900 | 90 0D AD 78 */	stw r0, nhttpRegistered@sda21(r0)
.L_8149B904:
/* 8149B904 | 7F E3 FB 78 */	mr r3, r31
/* 8149B908 | 7F 84 E3 78 */	mr r4, r28
/* 8149B90C | 7F A5 EB 78 */	mr r5, r29
/* 8149B910 | 7F C6 F3 78 */	mr r6, r30
/* 8149B914 | 4B FF A0 1D */	bl NHTTPi_Startup
/* 8149B918 | 7C 60 00 34 */	cntlzw r0, r3
/* 8149B91C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149B920 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8149B924 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149B928 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149B92C | 7C 60 00 D0 */	neg r3, r0
/* 8149B930 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8149B934 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149B938 | 7C 08 03 A6 */	mtlr r0
/* 8149B93C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149B940 | 4E 80 00 20 */	blr
.endfn NHTTPStartup

# .text:0x8C | 0x8149B944 | size: 0x34
.fn NHTTPCleanupAsync, global
/* 8149B944 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149B948 | 7C 08 02 A6 */	mflr r0
/* 8149B94C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149B950 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149B954 | 7C 7F 1B 78 */	mr r31, r3
/* 8149B958 | 48 00 12 E1 */	bl NHTTPi_GetSystemInfoP
/* 8149B95C | 7F E4 FB 78 */	mr r4, r31
/* 8149B960 | 4B FF A1 61 */	bl NHTTPi_CleanupAsync
/* 8149B964 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149B968 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149B96C | 7C 08 03 A6 */	mtlr r0
/* 8149B970 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149B974 | 4E 80 00 20 */	blr
.endfn NHTTPCleanupAsync

# .text:0xC0 | 0x8149B978 | size: 0x24
.fn NHTTPGetError, global
/* 8149B978 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149B97C | 7C 08 02 A6 */	mflr r0
/* 8149B980 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149B984 | 48 00 12 B5 */	bl NHTTPi_GetSystemInfoP
/* 8149B988 | 4B FF A2 29 */	bl NHTTPi_GetError
/* 8149B98C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149B990 | 7C 08 03 A6 */	mtlr r0
/* 8149B994 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149B998 | 4E 80 00 20 */	blr
.endfn NHTTPGetError

# .text:0xE4 | 0x8149B99C | size: 0x1E4
.fn NHTTPi_TemplateConnectionCallback, local
/* 8149B99C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149B9A0 | 7C 08 02 A6 */	mflr r0
/* 8149B9A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149B9A8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149B9AC | 7C 9F 23 78 */	mr r31, r4
/* 8149B9B0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149B9B4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149B9B8 | 7C BD 2B 78 */	mr r29, r5
/* 8149B9BC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8149B9C0 | 7C 7C 1B 78 */	mr r28, r3
/* 8149B9C4 | 48 00 12 75 */	bl NHTTPi_GetSystemInfoP
/* 8149B9C8 | 48 00 12 F5 */	bl NHTTPi_GetMutexInfoP
/* 8149B9CC | 7C 7E 1B 78 */	mr r30, r3
/* 8149B9D0 | 7F 84 E3 78 */	mr r4, r28
/* 8149B9D4 | 48 00 0E 45 */	bl NHTTPi_GetConnection
/* 8149B9D8 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 8149B9DC | 7C 7C 1B 78 */	mr r28, r3
/* 8149B9E0 | 38 00 00 00 */	li r0, 0x0
/* 8149B9E4 | 41 82 01 78 */	beq .L_8149BB5C
/* 8149B9E8 | 40 80 00 14 */	bge .L_8149B9FC
/* 8149B9EC | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8149B9F0 | 41 82 00 18 */	beq .L_8149BA08
/* 8149B9F4 | 40 80 00 74 */	bge .L_8149BA68
/* 8149B9F8 | 48 00 01 64 */	b .L_8149BB5C
.L_8149B9FC:
/* 8149B9FC | 2C 1F 00 05 */	cmpwi r31, 0x5
/* 8149BA00 | 40 80 01 5C */	bge .L_8149BB5C
/* 8149BA04 | 48 00 00 FC */	b .L_8149BB00
.L_8149BA08:
/* 8149BA08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BA0C | 41 82 00 50 */	beq .L_8149BA5C
/* 8149BA10 | 7F C3 F3 78 */	mr r3, r30
/* 8149BA14 | 7F 84 E3 78 */	mr r4, r28
/* 8149BA18 | 48 00 0D 81 */	bl NHTTPi_Connection2Request
/* 8149BA1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BA20 | 41 82 00 3C */	beq .L_8149BA5C
/* 8149BA24 | 83 E3 02 50 */	lwz r31, 0x250(r3)
/* 8149BA28 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149BA2C | 41 82 00 30 */	beq .L_8149BA5C
/* 8149BA30 | 7F 83 E3 78 */	mr r3, r28
/* 8149BA34 | 4B FF FD 69 */	bl NHTTPGetUserParam
/* 8149BA38 | 7F EC FB 78 */	mr r12, r31
/* 8149BA3C | 7C 67 1B 78 */	mr r7, r3
/* 8149BA40 | 38 9D 00 04 */	addi r4, r29, 0x4
/* 8149BA44 | 38 BD 00 08 */	addi r5, r29, 0x8
/* 8149BA48 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8149BA4C | 80 DD 00 0C */	lwz r6, 0xc(r29)
/* 8149BA50 | 7D 89 03 A6 */	mtctr r12
/* 8149BA54 | 4E 80 04 21 */	bctrl
/* 8149BA58 | 48 00 00 08 */	b .L_8149BA60
.L_8149BA5C:
/* 8149BA5C | 38 60 FF FF */	li r3, -0x1
.L_8149BA60:
/* 8149BA60 | 7C 60 1B 78 */	mr r0, r3
/* 8149BA64 | 48 00 00 F8 */	b .L_8149BB5C
.L_8149BA68:
/* 8149BA68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BA6C | 41 82 00 8C */	beq .L_8149BAF8
/* 8149BA70 | 7F C3 F3 78 */	mr r3, r30
/* 8149BA74 | 7F 84 E3 78 */	mr r4, r28
/* 8149BA78 | 48 00 0D 59 */	bl NHTTPi_Connection2Response
/* 8149BA7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BA80 | 41 82 00 78 */	beq .L_8149BAF8
/* 8149BA84 | 83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 8149BA88 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8149BA8C | 41 82 00 6C */	beq .L_8149BAF8
/* 8149BA90 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8149BA94 | 7F 83 E3 78 */	mr r3, r28
/* 8149BA98 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8149BA9C | 48 00 12 39 */	bl NHTTPi_GetVirtualContentLength
/* 8149BAA0 | 7C 7F 1B 78 */	mr r31, r3
/* 8149BAA4 | 7F 83 E3 78 */	mr r3, r28
/* 8149BAA8 | 4B FF FC F5 */	bl NHTTPGetUserParam
/* 8149BAAC | 3C C0 81 49 */	lis r6, NHTTPi_alloc@ha
/* 8149BAB0 | 3C E0 81 49 */	lis r7, NHTTPi_free@ha
/* 8149BAB4 | 7C 68 1B 78 */	mr r8, r3
/* 8149BAB8 | 7F CC F3 78 */	mr r12, r30
/* 8149BABC | 7F E5 FB 78 */	mr r5, r31
/* 8149BAC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149BAC4 | 38 9D 00 04 */	addi r4, r29, 0x4
/* 8149BAC8 | 38 C6 58 78 */	addi r6, r6, NHTTPi_alloc@l
/* 8149BACC | 38 E7 58 D4 */	addi r7, r7, NHTTPi_free@l
/* 8149BAD0 | 7D 89 03 A6 */	mtctr r12
/* 8149BAD4 | 4E 80 04 21 */	bctrl
/* 8149BAD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BADC | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 8149BAE0 | 41 82 00 18 */	beq .L_8149BAF8
/* 8149BAE4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8149BAE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149BAEC | 41 82 00 0C */	beq .L_8149BAF8
/* 8149BAF0 | 38 00 00 00 */	li r0, 0x0
/* 8149BAF4 | 90 1D 00 08 */	stw r0, 0x8(r29)
.L_8149BAF8:
/* 8149BAF8 | 38 00 00 00 */	li r0, 0x0
/* 8149BAFC | 48 00 00 60 */	b .L_8149BB5C
.L_8149BB00:
/* 8149BB00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BB04 | 41 82 00 54 */	beq .L_8149BB58
/* 8149BB08 | 83 A3 00 30 */	lwz r29, 0x30(r3)
/* 8149BB0C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8149BB10 | 41 82 00 48 */	beq .L_8149BB58
/* 8149BB14 | 7F C3 F3 78 */	mr r3, r30
/* 8149BB18 | 7F 84 E3 78 */	mr r4, r28
/* 8149BB1C | 48 00 0C B5 */	bl NHTTPi_Connection2Response
/* 8149BB20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BB24 | 7C 7F 1B 78 */	mr r31, r3
/* 8149BB28 | 41 82 00 30 */	beq .L_8149BB58
/* 8149BB2C | 7F 83 E3 78 */	mr r3, r28
/* 8149BB30 | 4B FF FC E1 */	bl NHTTPGetConnectionError
/* 8149BB34 | 7C 7E 1B 78 */	mr r30, r3
/* 8149BB38 | 7F 83 E3 78 */	mr r3, r28
/* 8149BB3C | 4B FF FC 61 */	bl NHTTPGetUserParam
/* 8149BB40 | 7F AC EB 78 */	mr r12, r29
/* 8149BB44 | 7C 65 1B 78 */	mr r5, r3
/* 8149BB48 | 7F C3 F3 78 */	mr r3, r30
/* 8149BB4C | 7F E4 FB 78 */	mr r4, r31
/* 8149BB50 | 7D 89 03 A6 */	mtctr r12
/* 8149BB54 | 4E 80 04 21 */	bctrl
.L_8149BB58:
/* 8149BB58 | 38 00 00 00 */	li r0, 0x0
.L_8149BB5C:
/* 8149BB5C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149BB60 | 7C 03 03 78 */	mr r3, r0
/* 8149BB64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149BB68 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149BB6C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8149BB70 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149BB74 | 7C 08 03 A6 */	mtlr r0
/* 8149BB78 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149BB7C | 4E 80 00 20 */	blr
.endfn NHTTPi_TemplateConnectionCallback

# .text:0x2C8 | 0x8149BB80 | size: 0xC
.fn NHTTPCreateRequest, global
/* 8149BB80 | 39 20 00 00 */	li r9, 0x0
/* 8149BB84 | 39 40 00 00 */	li r10, 0x0
/* 8149BB88 | 48 00 00 04 */	b NHTTPCreateRequestEx
.endfn NHTTPCreateRequest

# .text:0x2D4 | 0x8149BB8C | size: 0xD0
.fn NHTTPCreateRequestEx, global
/* 8149BB8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149BB90 | 7C 08 02 A6 */	mflr r0
/* 8149BB94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149BB98 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149BB9C | 48 15 D9 21 */	bl _savegpr_26
/* 8149BBA0 | 3D 60 81 4A */	lis r11, NHTTPi_TemplateConnectionCallback@ha
/* 8149BBA4 | 7C FA 3B 78 */	mr r26, r7
/* 8149BBA8 | 7D 3B 4B 78 */	mr r27, r9
/* 8149BBAC | 7D 5C 53 78 */	mr r28, r10
/* 8149BBB0 | 38 EB B9 9C */	addi r7, r11, NHTTPi_TemplateConnectionCallback@l
/* 8149BBB4 | 4B FF F7 DD */	bl NHTTPCreateConnection
/* 8149BBB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BBBC | 7C 7F 1B 78 */	mr r31, r3
/* 8149BBC0 | 38 80 00 00 */	li r4, 0x0
/* 8149BBC4 | 41 82 00 7C */	beq .L_8149BC40
/* 8149BBC8 | 48 00 10 71 */	bl NHTTPi_GetSystemInfoP
/* 8149BBCC | 7C 7E 1B 78 */	mr r30, r3
/* 8149BBD0 | 48 00 10 ED */	bl NHTTPi_GetMutexInfoP
/* 8149BBD4 | 7C 7D 1B 78 */	mr r29, r3
/* 8149BBD8 | 7F E4 FB 78 */	mr r4, r31
/* 8149BBDC | 48 00 0C 3D */	bl NHTTPi_GetConnection
/* 8149BBE0 | 7C 7F 1B 78 */	mr r31, r3
/* 8149BBE4 | 7F A3 EB 78 */	mr r3, r29
/* 8149BBE8 | 7F E4 FB 78 */	mr r4, r31
/* 8149BBEC | 48 00 0B AD */	bl NHTTPi_Connection2Request
/* 8149BBF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BBF4 | 7C 64 1B 78 */	mr r4, r3
/* 8149BBF8 | 41 82 00 48 */	beq .L_8149BC40
/* 8149BBFC | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8149BC00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149BC04 | 41 82 00 1C */	beq .L_8149BC20
/* 8149BC08 | 93 5F 00 30 */	stw r26, 0x30(r31)
/* 8149BC0C | 80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8149BC10 | 93 64 00 2C */	stw r27, 0x2c(r4)
/* 8149BC14 | 80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8149BC18 | 93 84 00 30 */	stw r28, 0x30(r4)
/* 8149BC1C | 48 00 00 28 */	b .L_8149BC44
.L_8149BC20:
/* 8149BC20 | 7F C3 F3 78 */	mr r3, r30
/* 8149BC24 | 4B FF B2 11 */	bl NHTTP_DestroyRequest
/* 8149BC28 | 7F A3 EB 78 */	mr r3, r29
/* 8149BC2C | 7F E4 FB 78 */	mr r4, r31
/* 8149BC30 | 48 00 0B 39 */	bl NHTTPi_OmitConnectionList
/* 8149BC34 | 7F E3 FB 78 */	mr r3, r31
/* 8149BC38 | 4B FF 9C 9D */	bl NHTTPi_free
/* 8149BC3C | 38 80 00 00 */	li r4, 0x0
.L_8149BC40:
/* 8149BC40 | 7C 83 23 78 */	mr r3, r4
.L_8149BC44:
/* 8149BC44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149BC48 | 48 15 D8 C1 */	bl _restgpr_26
/* 8149BC4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149BC50 | 7C 08 03 A6 */	mtlr r0
/* 8149BC54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149BC58 | 4E 80 00 20 */	blr
.endfn NHTTPCreateRequestEx

# .text:0x3A4 | 0x8149BC5C | size: 0x44
.fn NHTTPDeleteRequest, global
/* 8149BC5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149BC60 | 7C 08 02 A6 */	mflr r0
/* 8149BC64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149BC68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149BC6C | 7C 7F 1B 78 */	mr r31, r3
/* 8149BC70 | 48 00 0F C9 */	bl NHTTPi_GetSystemInfoP
/* 8149BC74 | 48 00 10 49 */	bl NHTTPi_GetMutexInfoP
/* 8149BC78 | 7F E4 FB 78 */	mr r4, r31
/* 8149BC7C | 48 00 0B 8D */	bl NHTTPi_Request2Connection
/* 8149BC80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BC84 | 41 82 00 08 */	beq .L_8149BC8C
/* 8149BC88 | 4B FF F8 51 */	bl NHTTPDeleteConnection
.L_8149BC8C:
/* 8149BC8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149BC90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149BC94 | 7C 08 03 A6 */	mtlr r0
/* 8149BC98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149BC9C | 4E 80 00 20 */	blr
.endfn NHTTPDeleteRequest

# .text:0x3E8 | 0x8149BCA0 | size: 0xC4
.fn NHTTPAddHeaderField, global
/* 8149BCA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149BCA4 | 7C 08 02 A6 */	mflr r0
/* 8149BCA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149BCAC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149BCB0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149BCB4 | 7C 7E 1B 78 */	mr r30, r3
/* 8149BCB8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149BCBC | 7C BD 2B 78 */	mr r29, r5
/* 8149BCC0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8149BCC4 | 7C 9C 23 78 */	mr r28, r4
/* 8149BCC8 | 48 00 0F 71 */	bl NHTTPi_GetSystemInfoP
/* 8149BCCC | 7C 7F 1B 78 */	mr r31, r3
/* 8149BCD0 | 48 00 0F ED */	bl NHTTPi_GetMutexInfoP
/* 8149BCD4 | 7F C4 F3 78 */	mr r4, r30
/* 8149BCD8 | 48 00 0B 49 */	bl NHTTPi_GetRequest
/* 8149BCDC | 7C 7E 1B 78 */	mr r30, r3
/* 8149BCE0 | 7F E3 FB 78 */	mr r3, r31
/* 8149BCE4 | 48 00 0F BD */	bl NHTTPi_GetBgnEndInfoP
/* 8149BCE8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8149BCEC | 7C 64 1B 78 */	mr r4, r3
/* 8149BCF0 | 40 82 00 0C */	bne .L_8149BCFC
/* 8149BCF4 | 38 60 FF FF */	li r3, -0x1
/* 8149BCF8 | 48 00 00 4C */	b .L_8149BD44
.L_8149BCFC:
/* 8149BCFC | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8149BD00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149BD04 | 41 82 00 24 */	beq .L_8149BD28
/* 8149BD08 | 3C 60 81 67 */	lis r3, lbl_8166D328@ha
/* 8149BD0C | 3C 80 81 67 */	lis r4, lbl_8166D314@ha
/* 8149BD10 | 38 63 D3 28 */	addi r3, r3, lbl_8166D328@l
/* 8149BD14 | 38 84 D3 14 */	addi r4, r4, lbl_8166D314@l
/* 8149BD18 | 4C C6 31 82 */	crclr cr1eq
/* 8149BD1C | 48 16 49 85 */	bl printf
/* 8149BD20 | 38 60 FF FF */	li r3, -0x1
/* 8149BD24 | 48 00 00 20 */	b .L_8149BD44
.L_8149BD28:
/* 8149BD28 | 7F C3 F3 78 */	mr r3, r30
/* 8149BD2C | 7F 85 E3 78 */	mr r5, r28
/* 8149BD30 | 7F A6 EB 78 */	mr r6, r29
/* 8149BD34 | 4B FF A0 09 */	bl NHTTP_AddHeaderField
/* 8149BD38 | 7C 60 00 34 */	cntlzw r0, r3
/* 8149BD3C | 54 00 D9 7E */	srwi r0, r0, 5
/* 8149BD40 | 7C 60 00 D0 */	neg r3, r0
.L_8149BD44:
/* 8149BD44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149BD48 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149BD4C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149BD50 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149BD54 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8149BD58 | 7C 08 03 A6 */	mtlr r0
/* 8149BD5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149BD60 | 4E 80 00 20 */	blr
.endfn NHTTPAddHeaderField

# .text:0x4AC | 0x8149BD64 | size: 0xC8
.fn NHTTPAddPostDataRaw, global
/* 8149BD64 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149BD68 | 7C 08 02 A6 */	mflr r0
/* 8149BD6C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149BD70 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149BD74 | 3F E0 81 67 */	lis r31, lbl_8166D270@ha
/* 8149BD78 | 3B FF D2 70 */	addi r31, r31, lbl_8166D270@l
/* 8149BD7C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149BD80 | 7C BE 2B 78 */	mr r30, r5
/* 8149BD84 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149BD88 | 7C 9D 23 78 */	mr r29, r4
/* 8149BD8C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8149BD90 | 7C 7C 1B 78 */	mr r28, r3
/* 8149BD94 | 48 00 0E A5 */	bl NHTTPi_GetSystemInfoP
/* 8149BD98 | 48 00 0F 25 */	bl NHTTPi_GetMutexInfoP
/* 8149BD9C | 7F 84 E3 78 */	mr r4, r28
/* 8149BDA0 | 48 00 0A 81 */	bl NHTTPi_GetRequest
/* 8149BDA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BDA8 | 40 82 00 0C */	bne .L_8149BDB4
/* 8149BDAC | 38 60 FF FF */	li r3, -0x1
/* 8149BDB0 | 48 00 00 5C */	b .L_8149BE0C
.L_8149BDB4:
/* 8149BDB4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8149BDB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149BDBC | 41 82 00 1C */	beq .L_8149BDD8
/* 8149BDC0 | 38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8149BDC4 | 38 9F 01 18 */	addi r4, r31, 0x118
/* 8149BDC8 | 4C C6 31 82 */	crclr cr1eq
/* 8149BDCC | 48 16 48 D5 */	bl printf
/* 8149BDD0 | 38 60 FF FF */	li r3, -0x1
/* 8149BDD4 | 48 00 00 38 */	b .L_8149BE0C
.L_8149BDD8:
/* 8149BDD8 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 8149BDDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149BDE0 | 41 82 00 18 */	beq .L_8149BDF8
/* 8149BDE4 | 38 7F 01 2C */	addi r3, r31, 0x12c
/* 8149BDE8 | 4C C6 31 82 */	crclr cr1eq
/* 8149BDEC | 48 16 48 B5 */	bl printf
/* 8149BDF0 | 38 60 FF FF */	li r3, -0x1
/* 8149BDF4 | 48 00 00 18 */	b .L_8149BE0C
.L_8149BDF8:
/* 8149BDF8 | 38 00 00 01 */	li r0, 0x1
/* 8149BDFC | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8149BE00 | 93 A3 02 48 */	stw r29, 0x248(r3)
/* 8149BE04 | 93 C3 02 4C */	stw r30, 0x24c(r3)
/* 8149BE08 | 38 60 00 00 */	li r3, 0x0
.L_8149BE0C:
/* 8149BE0C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149BE10 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149BE14 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149BE18 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149BE1C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8149BE20 | 7C 08 03 A6 */	mtlr r0
/* 8149BE24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149BE28 | 4E 80 00 20 */	blr
.endfn NHTTPAddPostDataRaw

# .text:0x574 | 0x8149BE2C | size: 0x5C
.fn NHTTPSendRequestAsync, global
/* 8149BE2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149BE30 | 7C 08 02 A6 */	mflr r0
/* 8149BE34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149BE38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149BE3C | 7C 7F 1B 78 */	mr r31, r3
/* 8149BE40 | 48 00 0D F9 */	bl NHTTPi_GetSystemInfoP
/* 8149BE44 | 48 00 0E 79 */	bl NHTTPi_GetMutexInfoP
/* 8149BE48 | 7F E4 FB 78 */	mr r4, r31
/* 8149BE4C | 48 00 09 BD */	bl NHTTPi_Request2Connection
/* 8149BE50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BE54 | 7C 7F 1B 78 */	mr r31, r3
/* 8149BE58 | 41 82 00 18 */	beq .L_8149BE70
/* 8149BE5C | 4B FF F8 19 */	bl NHTTPStartConnection
/* 8149BE60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BE64 | 40 82 00 0C */	bne .L_8149BE70
/* 8149BE68 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8149BE6C | 48 00 00 08 */	b .L_8149BE74
.L_8149BE70:
/* 8149BE70 | 38 60 FF FF */	li r3, -0x1
.L_8149BE74:
/* 8149BE74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149BE78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149BE7C | 7C 08 03 A6 */	mtlr r0
/* 8149BE80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149BE84 | 4E 80 00 20 */	blr
.endfn NHTTPSendRequestAsync

# .text:0x5D0 | 0x8149BE88 | size: 0x40
.fn NHTTPCancelRequestAsync, global
/* 8149BE88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149BE8C | 7C 08 02 A6 */	mflr r0
/* 8149BE90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149BE94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149BE98 | 7C 7F 1B 78 */	mr r31, r3
/* 8149BE9C | 48 00 0D 9D */	bl NHTTPi_GetSystemInfoP
/* 8149BEA0 | 7F E4 FB 78 */	mr r4, r31
/* 8149BEA4 | 4B FF B2 2D */	bl NHTTP_CancelRequestAsync
/* 8149BEA8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8149BEAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149BEB0 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8149BEB4 | 7C 60 00 D0 */	neg r3, r0
/* 8149BEB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149BEBC | 7C 08 03 A6 */	mtlr r0
/* 8149BEC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149BEC4 | 4E 80 00 20 */	blr
.endfn NHTTPCancelRequestAsync

# .text:0x610 | 0x8149BEC8 | size: 0x50
.fn NHTTPGetProgress, global
/* 8149BEC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149BECC | 7C 08 02 A6 */	mflr r0
/* 8149BED0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149BED4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149BED8 | 7C 9F 23 78 */	mr r31, r4
/* 8149BEDC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149BEE0 | 7C 7E 1B 78 */	mr r30, r3
/* 8149BEE4 | 48 00 0D 55 */	bl NHTTPi_GetSystemInfoP
/* 8149BEE8 | 7F C4 F3 78 */	mr r4, r30
/* 8149BEEC | 7F E5 FB 78 */	mr r5, r31
/* 8149BEF0 | 4B FF C8 A5 */	bl NHTTP_GetProgress
/* 8149BEF4 | 7C 60 00 34 */	cntlzw r0, r3
/* 8149BEF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149BEFC | 54 00 D9 7E */	srwi r0, r0, 5
/* 8149BF00 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149BF04 | 7C 60 00 D0 */	neg r3, r0
/* 8149BF08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149BF0C | 7C 08 03 A6 */	mtlr r0
/* 8149BF10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149BF14 | 4E 80 00 20 */	blr
.endfn NHTTPGetProgress

# .text:0x660 | 0x8149BF18 | size: 0x84
.fn NHTTPDestroyResponse, global
/* 8149BF18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149BF1C | 7C 08 02 A6 */	mflr r0
/* 8149BF20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149BF24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149BF28 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149BF2C | 7C 7E 1B 78 */	mr r30, r3
/* 8149BF30 | 48 00 0D 09 */	bl NHTTPi_GetSystemInfoP
/* 8149BF34 | 48 00 0D 89 */	bl NHTTPi_GetMutexInfoP
/* 8149BF38 | 7C 7F 1B 78 */	mr r31, r3
/* 8149BF3C | 7F C4 F3 78 */	mr r4, r30
/* 8149BF40 | 48 00 08 D1 */	bl NHTTPi_Response2Connection
/* 8149BF44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BF48 | 7C 7E 1B 78 */	mr r30, r3
/* 8149BF4C | 41 82 00 38 */	beq .L_8149BF84
/* 8149BF50 | 7F E3 FB 78 */	mr r3, r31
/* 8149BF54 | 7F C4 F3 78 */	mr r4, r30
/* 8149BF58 | 48 00 08 79 */	bl NHTTPi_Connection2Response
/* 8149BF5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BF60 | 41 82 00 10 */	beq .L_8149BF70
/* 8149BF64 | 80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8149BF68 | 7F E3 FB 78 */	mr r3, r31
/* 8149BF6C | 4B FF B2 D1 */	bl NHTTP_DestroyResponse
.L_8149BF70:
/* 8149BF70 | 7F E3 FB 78 */	mr r3, r31
/* 8149BF74 | 7F C4 F3 78 */	mr r4, r30
/* 8149BF78 | 48 00 07 F1 */	bl NHTTPi_OmitConnectionList
/* 8149BF7C | 7F C3 F3 78 */	mr r3, r30
/* 8149BF80 | 4B FF 99 55 */	bl NHTTPi_free
.L_8149BF84:
/* 8149BF84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149BF88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149BF8C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149BF90 | 7C 08 03 A6 */	mtlr r0
/* 8149BF94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149BF98 | 4E 80 00 20 */	blr
.endfn NHTTPDestroyResponse

# .text:0x6E4 | 0x8149BF9C | size: 0x6C
.fn NHTTPGetHeaderField, global
/* 8149BF9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149BFA0 | 7C 08 02 A6 */	mflr r0
/* 8149BFA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149BFA8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149BFAC | 7C BF 2B 78 */	mr r31, r5
/* 8149BFB0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149BFB4 | 7C 9E 23 78 */	mr r30, r4
/* 8149BFB8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149BFBC | 7C 7D 1B 78 */	mr r29, r3
/* 8149BFC0 | 48 00 0C 79 */	bl NHTTPi_GetSystemInfoP
/* 8149BFC4 | 48 00 0C F9 */	bl NHTTPi_GetMutexInfoP
/* 8149BFC8 | 7F A4 EB 78 */	mr r4, r29
/* 8149BFCC | 48 00 08 99 */	bl NHTTPi_GetResponse
/* 8149BFD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149BFD4 | 40 82 00 0C */	bne .L_8149BFE0
/* 8149BFD8 | 38 60 FF FF */	li r3, -0x1
/* 8149BFDC | 48 00 00 10 */	b .L_8149BFEC
.L_8149BFE0:
/* 8149BFE0 | 7F C4 F3 78 */	mr r4, r30
/* 8149BFE4 | 7F E5 FB 78 */	mr r5, r31
/* 8149BFE8 | 4B FF B4 55 */	bl NHTTP_GetHeaderField
.L_8149BFEC:
/* 8149BFEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149BFF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149BFF4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149BFF8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149BFFC | 7C 08 03 A6 */	mtlr r0
/* 8149C000 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149C004 | 4E 80 00 20 */	blr
.endfn NHTTPGetHeaderField

# .text:0x750 | 0x8149C008 | size: 0x84
.fn NHTTPGetHeaderAll, global
/* 8149C008 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149C00C | 7C 08 02 A6 */	mflr r0
/* 8149C010 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149C014 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149C018 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149C01C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149C020 | 7C 9D 23 78 */	mr r29, r4
/* 8149C024 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8149C028 | 7C 7C 1B 78 */	mr r28, r3
/* 8149C02C | 48 00 0C 0D */	bl NHTTPi_GetSystemInfoP
/* 8149C030 | 7C 7F 1B 78 */	mr r31, r3
/* 8149C034 | 48 00 0C 6D */	bl NHTTPi_GetBgnEndInfoP
/* 8149C038 | 7C 7E 1B 78 */	mr r30, r3
/* 8149C03C | 7F E3 FB 78 */	mr r3, r31
/* 8149C040 | 48 00 0C 7D */	bl NHTTPi_GetMutexInfoP
/* 8149C044 | 7F 84 E3 78 */	mr r4, r28
/* 8149C048 | 48 00 08 1D */	bl NHTTPi_GetResponse
/* 8149C04C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C050 | 7C 64 1B 78 */	mr r4, r3
/* 8149C054 | 40 82 00 0C */	bne .L_8149C060
/* 8149C058 | 38 60 FF FF */	li r3, -0x1
/* 8149C05C | 48 00 00 10 */	b .L_8149C06C
.L_8149C060:
/* 8149C060 | 7F C3 F3 78 */	mr r3, r30
/* 8149C064 | 7F A5 EB 78 */	mr r5, r29
/* 8149C068 | 4B FF B5 19 */	bl NHTTP_GetHeaderAll
.L_8149C06C:
/* 8149C06C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149C070 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149C074 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149C078 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149C07C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8149C080 | 7C 08 03 A6 */	mtlr r0
/* 8149C084 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149C088 | 4E 80 00 20 */	blr
.endfn NHTTPGetHeaderAll

# .text:0x7D4 | 0x8149C08C | size: 0x68
.fn NHTTPGetBodyAll, global
/* 8149C08C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149C090 | 7C 08 02 A6 */	mflr r0
/* 8149C094 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149C098 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149C09C | 7C 9F 23 78 */	mr r31, r4
/* 8149C0A0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149C0A4 | 7C 7E 1B 78 */	mr r30, r3
/* 8149C0A8 | 48 00 0B 91 */	bl NHTTPi_GetSystemInfoP
/* 8149C0AC | 48 00 0C 11 */	bl NHTTPi_GetMutexInfoP
/* 8149C0B0 | 7F C4 F3 78 */	mr r4, r30
/* 8149C0B4 | 48 00 07 5D */	bl NHTTPi_Response2Connection
/* 8149C0B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C0BC | 41 82 00 1C */	beq .L_8149C0D8
/* 8149C0C0 | 38 00 00 00 */	li r0, 0x0
/* 8149C0C4 | 7F E4 FB 78 */	mr r4, r31
/* 8149C0C8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8149C0CC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149C0D0 | 4B FF F6 31 */	bl NHTTPGetBodyBuffer
/* 8149C0D4 | 48 00 00 08 */	b .L_8149C0DC
.L_8149C0D8:
/* 8149C0D8 | 38 60 FF FF */	li r3, -0x1
.L_8149C0DC:
/* 8149C0DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149C0E0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149C0E4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149C0E8 | 7C 08 03 A6 */	mtlr r0
/* 8149C0EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149C0F0 | 4E 80 00 20 */	blr
.endfn NHTTPGetBodyAll

# .text:0x83C | 0x8149C0F4 | size: 0x60
.fn NHTTPGetResultCode, global
/* 8149C0F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C0F8 | 7C 08 02 A6 */	mflr r0
/* 8149C0FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C100 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149C104 | 7C 7F 1B 78 */	mr r31, r3
/* 8149C108 | 48 00 0B 31 */	bl NHTTPi_GetSystemInfoP
/* 8149C10C | 48 00 0B B1 */	bl NHTTPi_GetMutexInfoP
/* 8149C110 | 7F E4 FB 78 */	mr r4, r31
/* 8149C114 | 48 00 07 51 */	bl NHTTPi_GetResponse
/* 8149C118 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C11C | 40 82 00 0C */	bne .L_8149C128
/* 8149C120 | 38 60 FF FF */	li r3, -0x1
/* 8149C124 | 48 00 00 1C */	b .L_8149C140
.L_8149C128:
/* 8149C128 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8149C12C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149C130 | 41 82 00 0C */	beq .L_8149C13C
/* 8149C134 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8149C138 | 48 00 00 08 */	b .L_8149C140
.L_8149C13C:
/* 8149C13C | 38 60 FF FF */	li r3, -0x1
.L_8149C140:
/* 8149C140 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C144 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149C148 | 7C 08 03 A6 */	mtlr r0
/* 8149C14C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C150 | 4E 80 00 20 */	blr
.endfn NHTTPGetResultCode

# .text:0x89C | 0x8149C154 | size: 0x5C
.fn NHTTPSetVerifyOption, global
/* 8149C154 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C158 | 7C 08 02 A6 */	mflr r0
/* 8149C15C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C160 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149C164 | 7C 9F 23 78 */	mr r31, r4
/* 8149C168 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149C16C | 7C 7E 1B 78 */	mr r30, r3
/* 8149C170 | 48 00 0A C9 */	bl NHTTPi_GetSystemInfoP
/* 8149C174 | 48 00 0B 49 */	bl NHTTPi_GetMutexInfoP
/* 8149C178 | 7F C4 F3 78 */	mr r4, r30
/* 8149C17C | 48 00 06 A5 */	bl NHTTPi_GetRequest
/* 8149C180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C184 | 40 82 00 0C */	bne .L_8149C190
/* 8149C188 | 38 60 FF FF */	li r3, -0x1
/* 8149C18C | 48 00 00 0C */	b .L_8149C198
.L_8149C190:
/* 8149C190 | 93 E3 00 CC */	stw r31, 0xcc(r3)
/* 8149C194 | 38 60 00 00 */	li r3, 0x0
.L_8149C198:
/* 8149C198 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C19C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149C1A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149C1A4 | 7C 08 03 A6 */	mtlr r0
/* 8149C1A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C1AC | 4E 80 00 20 */	blr
.endfn NHTTPSetVerifyOption

# .text:0x8F8 | 0x8149C1B0 | size: 0x170
.fn NHTTPSetProxy, global
/* 8149C1B0 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8149C1B4 | 7C 08 02 A6 */	mflr r0
/* 8149C1B8 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8149C1BC | 39 61 00 70 */	addi r11, r1, 0x70
/* 8149C1C0 | 48 15 D2 FD */	bl _savegpr_26
/* 8149C1C4 | 3F C0 81 67 */	lis r30, lbl_8166D270@ha
/* 8149C1C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8149C1CC | 7C 9D 23 78 */	mr r29, r4
/* 8149C1D0 | 7C BC 2B 78 */	mr r28, r5
/* 8149C1D4 | 7C DA 33 78 */	mr r26, r6
/* 8149C1D8 | 7C FB 3B 78 */	mr r27, r7
/* 8149C1DC | 3B DE D2 70 */	addi r30, r30, lbl_8166D270@l
/* 8149C1E0 | 48 00 0A 59 */	bl NHTTPi_GetSystemInfoP
/* 8149C1E4 | 48 00 0A D9 */	bl NHTTPi_GetMutexInfoP
/* 8149C1E8 | 7F E4 FB 78 */	mr r4, r31
/* 8149C1EC | 48 00 06 35 */	bl NHTTPi_GetRequest
/* 8149C1F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C1F4 | 7C 7F 1B 78 */	mr r31, r3
/* 8149C1F8 | 41 82 00 0C */	beq .L_8149C204
/* 8149C1FC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8149C200 | 40 82 00 0C */	bne .L_8149C20C
.L_8149C204:
/* 8149C204 | 38 60 FF FF */	li r3, -0x1
/* 8149C208 | 48 00 01 00 */	b .L_8149C308
.L_8149C20C:
/* 8149C20C | 7F A3 EB 78 */	mr r3, r29
/* 8149C210 | 4B FF BC A1 */	bl NHTTPi_strlen
/* 8149C214 | 2C 03 01 00 */	cmpwi r3, 0x100
/* 8149C218 | 40 81 00 18 */	ble .L_8149C230
/* 8149C21C | 38 7E 01 A0 */	addi r3, r30, 0x1a0
/* 8149C220 | 4C C6 31 82 */	crclr cr1eq
/* 8149C224 | 48 16 44 7D */	bl printf
/* 8149C228 | 38 60 FF FF */	li r3, -0x1
/* 8149C22C | 48 00 00 DC */	b .L_8149C308
.L_8149C230:
/* 8149C230 | 7C 65 1B 78 */	mr r5, r3
/* 8149C234 | 7F A4 EB 78 */	mr r4, r29
/* 8149C238 | 38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8149C23C | 4B FF BC 71 */	bl NHTTPi_memcpy
/* 8149C240 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8149C244 | 93 9F 01 E0 */	stw r28, 0x1e0(r31)
/* 8149C248 | 41 82 00 B4 */	beq .L_8149C2FC
/* 8149C24C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8149C250 | 41 82 00 AC */	beq .L_8149C2FC
/* 8149C254 | 7F 43 D3 78 */	mr r3, r26
/* 8149C258 | 4B FF BC 59 */	bl NHTTPi_strlen
/* 8149C25C | 7C 7D 1B 78 */	mr r29, r3
/* 8149C260 | 7F 63 DB 78 */	mr r3, r27
/* 8149C264 | 4B FF BC 4D */	bl NHTTPi_strlen
/* 8149C268 | 2C 1D 00 20 */	cmpwi r29, 0x20
/* 8149C26C | 7C 7C 1B 78 */	mr r28, r3
/* 8149C270 | 40 81 00 18 */	ble .L_8149C288
/* 8149C274 | 38 7E 01 C8 */	addi r3, r30, 0x1c8
/* 8149C278 | 4C C6 31 82 */	crclr cr1eq
/* 8149C27C | 48 16 44 25 */	bl printf
/* 8149C280 | 38 60 FF FF */	li r3, -0x1
/* 8149C284 | 48 00 00 84 */	b .L_8149C308
.L_8149C288:
/* 8149C288 | 2C 03 00 20 */	cmpwi r3, 0x20
/* 8149C28C | 40 81 00 18 */	ble .L_8149C2A4
/* 8149C290 | 38 7E 01 EC */	addi r3, r30, 0x1ec
/* 8149C294 | 4C C6 31 82 */	crclr cr1eq
/* 8149C298 | 48 16 44 09 */	bl printf
/* 8149C29C | 38 60 FF FF */	li r3, -0x1
/* 8149C2A0 | 48 00 00 68 */	b .L_8149C308
.L_8149C2A4:
/* 8149C2A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149C2A8 | 38 80 00 41 */	li r4, 0x41
/* 8149C2AC | 4B FF BC 0D */	bl NHTTPi_memclr
/* 8149C2B0 | 7F 44 D3 78 */	mr r4, r26
/* 8149C2B4 | 7F A5 EB 78 */	mr r5, r29
/* 8149C2B8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149C2BC | 4B FF BB F1 */	bl NHTTPi_memcpy
/* 8149C2C0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149C2C4 | 38 8D 9A F4 */	li r4, lbl_81697B34@sda21
/* 8149C2C8 | 7C 63 EA 14 */	add r3, r3, r29
/* 8149C2CC | 38 A0 00 01 */	li r5, 0x1
/* 8149C2D0 | 4B FF BB DD */	bl NHTTPi_memcpy
/* 8149C2D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149C2D8 | 7F 64 DB 78 */	mr r4, r27
/* 8149C2DC | 7C 7D 1A 14 */	add r3, r29, r3
/* 8149C2E0 | 7F 85 E3 78 */	mr r5, r28
/* 8149C2E4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8149C2E8 | 4B FF BB C5 */	bl NHTTPi_memcpy
/* 8149C2EC | 38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 8149C2F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8149C2F4 | 4B FF C2 A5 */	bl NHTTPi_Base64Encode
/* 8149C2F8 | 90 7F 02 40 */	stw r3, 0x240(r31)
.L_8149C2FC:
/* 8149C2FC | 38 00 00 01 */	li r0, 0x1
/* 8149C300 | 38 60 00 00 */	li r3, 0x0
/* 8149C304 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_8149C308:
/* 8149C308 | 39 61 00 70 */	addi r11, r1, 0x70
/* 8149C30C | 48 15 D1 FD */	bl _restgpr_26
/* 8149C310 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8149C314 | 7C 08 03 A6 */	mtlr r0
/* 8149C318 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8149C31C | 4E 80 00 20 */	blr
.endfn NHTTPSetProxy

# .text:0xA68 | 0x8149C320 | size: 0x134
.fn NHTTPSetProxyDefault, global
/* 8149C320 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149C324 | 7C 08 02 A6 */	mflr r0
/* 8149C328 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149C32C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149C330 | 48 15 D1 91 */	bl _savegpr_27
/* 8149C334 | 3F E0 81 67 */	lis r31, lbl_8166D270@ha
/* 8149C338 | 7C 7B 1B 78 */	mr r27, r3
/* 8149C33C | 3B FF D2 70 */	addi r31, r31, lbl_8166D270@l
/* 8149C340 | 48 00 08 F9 */	bl NHTTPi_GetSystemInfoP
/* 8149C344 | 7C 7E 1B 78 */	mr r30, r3
/* 8149C348 | 48 00 09 75 */	bl NHTTPi_GetMutexInfoP
/* 8149C34C | 7F 64 DB 78 */	mr r4, r27
/* 8149C350 | 48 00 04 D1 */	bl NHTTPi_GetRequest
/* 8149C354 | 7C 7D 1B 78 */	mr r29, r3
/* 8149C358 | 7F C3 F3 78 */	mr r3, r30
/* 8149C35C | 48 00 09 45 */	bl NHTTPi_GetBgnEndInfoP
/* 8149C360 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8149C364 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149C368 | 41 82 00 0C */	beq .L_8149C374
/* 8149C36C | 3B C3 01 70 */	addi r30, r3, 0x170
/* 8149C370 | 48 00 00 08 */	b .L_8149C378
.L_8149C374:
/* 8149C374 | 3B C3 00 28 */	addi r30, r3, 0x28
.L_8149C378:
/* 8149C378 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8149C37C | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149C380 | 40 82 00 AC */	bne .L_8149C42C
/* 8149C384 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 8149C388 | 3B 80 00 00 */	li r28, 0x0
/* 8149C38C | 3B 60 00 00 */	li r27, 0x0
/* 8149C390 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149C394 | 40 82 00 0C */	bne .L_8149C3A0
/* 8149C398 | 3B 9E 01 06 */	addi r28, r30, 0x106
/* 8149C39C | 3B 7E 01 27 */	addi r27, r30, 0x127
.L_8149C3A0:
/* 8149C3A0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8149C3A4 | 41 82 00 0C */	beq .L_8149C3B0
/* 8149C3A8 | 7F 67 DB 78 */	mr r7, r27
/* 8149C3AC | 48 00 00 08 */	b .L_8149C3B4
.L_8149C3B0:
/* 8149C3B0 | 38 FF 02 10 */	addi r7, r31, 0x210
.L_8149C3B4:
/* 8149C3B4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8149C3B8 | A0 BE 01 04 */	lhz r5, 0x104(r30)
/* 8149C3BC | 38 7F 02 1C */	addi r3, r31, 0x21c
/* 8149C3C0 | 38 9E 00 04 */	addi r4, r30, 0x4
/* 8149C3C4 | 41 82 00 0C */	beq .L_8149C3D0
/* 8149C3C8 | 7F 86 E3 78 */	mr r6, r28
/* 8149C3CC | 48 00 00 08 */	b .L_8149C3D4
.L_8149C3D0:
/* 8149C3D0 | 38 DF 02 10 */	addi r6, r31, 0x210
.L_8149C3D4:
/* 8149C3D4 | 4C C6 31 82 */	crclr cr1eq
/* 8149C3D8 | 48 09 22 C9 */	bl OSReport
/* 8149C3DC | A0 BE 01 04 */	lhz r5, 0x104(r30)
/* 8149C3E0 | 7F A3 EB 78 */	mr r3, r29
/* 8149C3E4 | 7F 86 E3 78 */	mr r6, r28
/* 8149C3E8 | 7F 67 DB 78 */	mr r7, r27
/* 8149C3EC | 38 9E 00 04 */	addi r4, r30, 0x4
/* 8149C3F0 | 4B FF FD C1 */	bl NHTTPSetProxy
/* 8149C3F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C3F8 | 40 80 00 2C */	bge .L_8149C424
/* 8149C3FC | 7C 64 1B 78 */	mr r4, r3
/* 8149C400 | 38 7F 02 40 */	addi r3, r31, 0x240
/* 8149C404 | 4C C6 31 82 */	crclr cr1eq
/* 8149C408 | 48 09 22 99 */	bl OSReport
/* 8149C40C | 38 7F 02 5C */	addi r3, r31, 0x25c
/* 8149C410 | 38 BF 02 68 */	addi r5, r31, 0x268
/* 8149C414 | 38 80 03 7D */	li r4, 0x37d
/* 8149C418 | 4C C6 31 82 */	crclr cr1eq
/* 8149C41C | 48 09 23 15 */	bl OSPanic
/* 8149C420 | 48 00 00 18 */	b .L_8149C438
.L_8149C424:
/* 8149C424 | 38 60 00 00 */	li r3, 0x0
/* 8149C428 | 48 00 00 14 */	b .L_8149C43C
.L_8149C42C:
/* 8149C42C | 38 7F 02 78 */	addi r3, r31, 0x278
/* 8149C430 | 4C C6 31 82 */	crclr cr1eq
/* 8149C434 | 48 16 42 6D */	bl printf
.L_8149C438:
/* 8149C438 | 38 60 FF FF */	li r3, -0x1
.L_8149C43C:
/* 8149C43C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149C440 | 48 15 D0 CD */	bl _restgpr_27
/* 8149C444 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149C448 | 7C 08 03 A6 */	mtlr r0
/* 8149C44C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149C450 | 4E 80 00 20 */	blr
.endfn NHTTPSetProxyDefault

# .text:0xB9C | 0x8149C454 | size: 0x60
.fn NHTTPSetRootCADefault, global
/* 8149C454 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C458 | 7C 08 02 A6 */	mflr r0
/* 8149C45C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C460 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149C464 | 7C 7F 1B 78 */	mr r31, r3
/* 8149C468 | 48 00 07 D1 */	bl NHTTPi_GetSystemInfoP
/* 8149C46C | 48 00 08 51 */	bl NHTTPi_GetMutexInfoP
/* 8149C470 | 7F E4 FB 78 */	mr r4, r31
/* 8149C474 | 48 00 03 AD */	bl NHTTPi_GetRequest
/* 8149C478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C47C | 40 82 00 0C */	bne .L_8149C488
/* 8149C480 | 38 80 FF FF */	li r4, -0x1
/* 8149C484 | 48 00 00 18 */	b .L_8149C49C
.L_8149C488:
/* 8149C488 | 38 00 00 00 */	li r0, 0x0
/* 8149C48C | 38 80 00 00 */	li r4, 0x0
/* 8149C490 | 90 03 00 D8 */	stw r0, 0xd8(r3)
/* 8149C494 | 90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8149C498 | 90 03 00 C4 */	stw r0, 0xc4(r3)
.L_8149C49C:
/* 8149C49C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149C4A0 | 7C 83 23 78 */	mr r3, r4
/* 8149C4A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C4A8 | 7C 08 03 A6 */	mtlr r0
/* 8149C4AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C4B0 | 4E 80 00 20 */	blr
.endfn NHTTPSetRootCADefault

# .text:0xBFC | 0x8149C4B4 | size: 0x70
.fn NHTTPSetClientCertDefault, global
/* 8149C4B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C4B8 | 7C 08 02 A6 */	mflr r0
/* 8149C4BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C4C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149C4C4 | 7C 7F 1B 78 */	mr r31, r3
/* 8149C4C8 | 48 00 07 71 */	bl NHTTPi_GetSystemInfoP
/* 8149C4CC | 48 00 07 F1 */	bl NHTTPi_GetMutexInfoP
/* 8149C4D0 | 7F E4 FB 78 */	mr r4, r31
/* 8149C4D4 | 48 00 03 4D */	bl NHTTPi_GetRequest
/* 8149C4D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C4DC | 40 82 00 0C */	bne .L_8149C4E8
/* 8149C4E0 | 38 A0 FF FF */	li r5, -0x1
/* 8149C4E4 | 48 00 00 28 */	b .L_8149C50C
.L_8149C4E8:
/* 8149C4E8 | 38 80 00 00 */	li r4, 0x0
/* 8149C4EC | 38 00 00 01 */	li r0, 0x1
/* 8149C4F0 | 90 83 00 DC */	stw r4, 0xdc(r3)
/* 8149C4F4 | 38 A0 00 00 */	li r5, 0x0
/* 8149C4F8 | 90 03 00 C8 */	stw r0, 0xc8(r3)
/* 8149C4FC | 90 83 00 B0 */	stw r4, 0xb0(r3)
/* 8149C500 | 90 83 00 B4 */	stw r4, 0xb4(r3)
/* 8149C504 | 90 83 00 B8 */	stw r4, 0xb8(r3)
/* 8149C508 | 90 83 00 BC */	stw r4, 0xbc(r3)
.L_8149C50C:
/* 8149C50C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149C510 | 7C A3 2B 78 */	mr r3, r5
/* 8149C514 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C518 | 7C 08 03 A6 */	mtlr r0
/* 8149C51C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C520 | 4E 80 00 20 */	blr
.endfn NHTTPSetClientCertDefault

# 0x8166D270..0x8166D530 | size: 0x2C0
.data
.balign 8

# .data:0x0 | 0x8166D270 | size: 0xA4
.obj lbl_8166D270, global
	.4byte 0x3C3C2052
	.4byte 0x564C5F53
	.4byte 0x444B202D
	.4byte 0x204E4854
	.4byte 0x54502009
	.4byte 0x72656C65
	.4byte 0x61736520
	.4byte 0x6275696C
	.4byte 0x643A204A
	.4byte 0x756E2032
	.4byte 0x37203230
	.4byte 0x30372031
	.4byte 0x363A3237
	.4byte 0x3A353920
	.4byte 0x28307834
	.4byte 0x3139395F
	.4byte 0x36303732
	.4byte 0x3629203E
	.4byte 0x3E000000
	.4byte 0x3C3C2052
	.4byte 0x564C5F53
	.4byte 0x444B202D
	.4byte 0x204E4854
	.4byte 0x54502009
	.4byte 0x72656C65
	.4byte 0x61736520
	.4byte 0x6275696C
	.4byte 0x643A204A
	.4byte 0x756E2032
	.4byte 0x37203230
	.4byte 0x30372031
	.4byte 0x363A3237
	.4byte 0x3A353920
	.4byte 0x28307834
	.4byte 0x3139395F
	.4byte 0x36303732
	.4byte 0x36292055
	.4byte 0x4E4F4646
	.4byte 0x49434941
	.4byte 0x4C203E3E
	.4byte 0x00000000
.endobj lbl_8166D270

# .data:0xA4 | 0x8166D314 | size: 0x14
.obj lbl_8166D314, global
	.string "NHTTPAddHeaderField"
.endobj lbl_8166D314

# .data:0xB8 | 0x8166D328 | size: 0x208
.obj lbl_8166D328, global
	.4byte 0x25732063
	.4byte 0x616E2062
	.4byte 0x65206361
	.4byte 0x6C6C6564
	.4byte 0x20626566
	.4byte 0x6F726520
	.4byte 0x4E485454
	.4byte 0x50537461
	.4byte 0x7274436F
	.4byte 0x6E6E6563
	.4byte 0x74696F6E
	.4byte 0x28290A00
	.4byte 0x4E485454
	.4byte 0x50416464
	.4byte 0x506F7374
	.4byte 0x44617461
	.4byte 0x41736369
	.4byte 0x69000000
	.4byte 0x4E485454
	.4byte 0x50416464
	.4byte 0x506F7374
	.4byte 0x44617461
	.4byte 0x42696E61
	.4byte 0x72790000
	.4byte 0x4E485454
	.4byte 0x50416464
	.4byte 0x506F7374
	.4byte 0x44617461
	.4byte 0x52617700
	.4byte 0x616C7265
	.4byte 0x61647920
	.4byte 0x63616C6C
	.4byte 0x6564204E
	.4byte 0x48545450
	.4byte 0x41646450
	.4byte 0x6F737444
	.4byte 0x61746141
	.4byte 0x73636969
	.4byte 0x206F7220
	.4byte 0x4E485454
	.4byte 0x50416464
	.4byte 0x506F7374
	.4byte 0x44617461
	.4byte 0x42696E61
	.4byte 0x72792028
	.4byte 0x6578636C
	.4byte 0x75736976
	.4byte 0x65206675
	.4byte 0x636E7469
	.4byte 0x6F6E290A
	.4byte 0x00000000
	.4byte 0x4E485454
	.4byte 0x50536574
	.4byte 0x506F7374
	.4byte 0x44617461
	.4byte 0x456E636F
	.4byte 0x64696E67
	.4byte 0x00000000
	.4byte 0x70726F78
	.4byte 0x792D6164
	.4byte 0x64726573
	.4byte 0x73206578
	.4byte 0x63656564
	.4byte 0x65642032
	.4byte 0x35362063
	.4byte 0x68617261
	.4byte 0x63746572
	.4byte 0x730A0000
	.4byte 0x75736572
	.4byte 0x6E616D65
	.4byte 0x20657863
	.4byte 0x65656465
	.4byte 0x64203332
	.4byte 0x20636861
	.4byte 0x72616374
	.4byte 0x6572730A
	.4byte 0x00000000
	.4byte 0x70617373
	.4byte 0x776F7264
	.4byte 0x20657863
	.4byte 0x65656465
	.4byte 0x64203332
	.4byte 0x20636861
	.4byte 0x72616374
	.4byte 0x6572730A
	.4byte 0x00000000
	.4byte 0x5B6E6F2D
	.4byte 0x61757468
	.4byte 0x5D000000
	.4byte 0x5573696E
	.4byte 0x67207072
	.4byte 0x6F787920
	.4byte 0x73657276
	.4byte 0x65722025
	.4byte 0x733A2564
	.4byte 0x20282573
	.4byte 0x2F257329
	.4byte 0x2E0A0000
	.4byte 0x4E485454
	.4byte 0x50536574
	.4byte 0x50726F78
	.4byte 0x79206661
	.4byte 0x696C6564
	.4byte 0x2E282564
	.4byte 0x290A0000
	.4byte 0x645F6E68
	.4byte 0x7474702E
	.4byte 0x63000000
	.4byte 0x4E485454
	.4byte 0x50536574
	.4byte 0x50726F78
	.4byte 0x79000000
	.4byte 0x4E434420
	.4byte 0x70726F78
	.4byte 0x792D7365
	.4byte 0x7474696E
	.4byte 0x67732061
	.4byte 0x72652064
	.4byte 0x69736162
	.4byte 0x6C65640A
	.4byte 0x00000000
	.4byte 0x4E485454
	.4byte 0x50446973
	.4byte 0x61626C65
	.4byte 0x56657269
	.4byte 0x66794F70
	.4byte 0x74696F6E
	.4byte 0x466F7244
	.4byte 0x65627567
	.4byte 0x00000000
.endobj lbl_8166D328

# 0x81697B30..0x81697B38 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697B30 | size: 0x4
.obj __NHTTPVersion, global
	.4byte lbl_8166D270
.endobj __NHTTPVersion

# .sdata:0x4 | 0x81697B34 | size: 0x4
.obj lbl_81697B34, global
	.4byte 0x3A000000
.endobj lbl_81697B34

# 0x81698DB8..0x81698DC0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698DB8 | size: 0x4
.obj nhttpRegistered, local
	.skip 0x4
.endobj nhttpRegistered

# .sbss:0x4 | 0x81698DBC | size: 0x4
.obj gap_12_81698DBC_sbss, global
.hidden gap_12_81698DBC_sbss
	.skip 0x4
.endobj gap_12_81698DBC_sbss
