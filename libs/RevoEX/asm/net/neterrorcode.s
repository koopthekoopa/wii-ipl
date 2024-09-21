.include "macros.inc"
.file "neterrorcode.c"

# 0x814948DC..0x81494D7C | size: 0x4A0
.text
.balign 4

# .text:0x0 | 0x814948DC | size: 0x278
.fn NETiGetConnectionTypeFromConfigList, global
/* 814948DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814948E0 | 38 00 00 63 */	li r0, 0x63
/* 814948E4 | 41 82 00 D4 */	beq .L_814949B8
/* 814948E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814948EC | 40 82 02 60 */	bne .L_81494B4C
/* 814948F0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814948F4 | 40 82 02 58 */	bne .L_81494B4C
/* 814948F8 | 38 00 00 04 */	li r0, 0x4
/* 814948FC | 38 A0 00 00 */	li r5, 0x0
/* 81494900 | 38 80 00 01 */	li r4, 0x1
/* 81494904 | 7C 09 03 A6 */	mtctr r0
.L_81494908:
/* 81494908 | 7C 60 20 39 */	and. r0, r3, r4
/* 8149490C | 41 82 00 08 */	beq .L_81494914
/* 81494910 | 48 00 00 A0 */	b .L_814949B0
.L_81494914:
/* 81494914 | 54 84 08 3C */	slwi r4, r4, 1
/* 81494918 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8149491C | 7C 60 20 39 */	and. r0, r3, r4
/* 81494920 | 41 82 00 08 */	beq .L_81494928
/* 81494924 | 48 00 00 8C */	b .L_814949B0
.L_81494928:
/* 81494928 | 54 84 08 3C */	slwi r4, r4, 1
/* 8149492C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494930 | 7C 60 20 39 */	and. r0, r3, r4
/* 81494934 | 41 82 00 08 */	beq .L_8149493C
/* 81494938 | 48 00 00 78 */	b .L_814949B0
.L_8149493C:
/* 8149493C | 54 84 08 3C */	slwi r4, r4, 1
/* 81494940 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494944 | 7C 60 20 39 */	and. r0, r3, r4
/* 81494948 | 41 82 00 08 */	beq .L_81494950
/* 8149494C | 48 00 00 64 */	b .L_814949B0
.L_81494950:
/* 81494950 | 54 84 08 3C */	slwi r4, r4, 1
/* 81494954 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494958 | 7C 60 20 39 */	and. r0, r3, r4
/* 8149495C | 41 82 00 08 */	beq .L_81494964
/* 81494960 | 48 00 00 50 */	b .L_814949B0
.L_81494964:
/* 81494964 | 54 84 08 3C */	slwi r4, r4, 1
/* 81494968 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8149496C | 7C 60 20 39 */	and. r0, r3, r4
/* 81494970 | 41 82 00 08 */	beq .L_81494978
/* 81494974 | 48 00 00 3C */	b .L_814949B0
.L_81494978:
/* 81494978 | 54 84 08 3C */	slwi r4, r4, 1
/* 8149497C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494980 | 7C 60 20 39 */	and. r0, r3, r4
/* 81494984 | 41 82 00 08 */	beq .L_8149498C
/* 81494988 | 48 00 00 28 */	b .L_814949B0
.L_8149498C:
/* 8149498C | 54 84 08 3C */	slwi r4, r4, 1
/* 81494990 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494994 | 7C 60 20 39 */	and. r0, r3, r4
/* 81494998 | 41 82 00 08 */	beq .L_814949A0
/* 8149499C | 48 00 00 14 */	b .L_814949B0
.L_814949A0:
/* 814949A0 | 54 84 08 3C */	slwi r4, r4, 1
/* 814949A4 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814949A8 | 42 00 FF 60 */	bdnz .L_81494908
/* 814949AC | 38 A0 FF FF */	li r5, -0x1
.L_814949B0:
/* 814949B0 | 38 05 00 14 */	addi r0, r5, 0x14
/* 814949B4 | 48 00 01 98 */	b .L_81494B4C
.L_814949B8:
/* 814949B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814949BC | 41 82 00 CC */	beq .L_81494A88
/* 814949C0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814949C4 | 40 82 01 88 */	bne .L_81494B4C
/* 814949C8 | 38 00 00 04 */	li r0, 0x4
/* 814949CC | 38 A0 00 00 */	li r5, 0x0
/* 814949D0 | 38 60 00 01 */	li r3, 0x1
/* 814949D4 | 7C 09 03 A6 */	mtctr r0
.L_814949D8:
/* 814949D8 | 7C 80 18 39 */	and. r0, r4, r3
/* 814949DC | 41 82 00 08 */	beq .L_814949E4
/* 814949E0 | 48 00 00 A0 */	b .L_81494A80
.L_814949E4:
/* 814949E4 | 54 63 08 3C */	slwi r3, r3, 1
/* 814949E8 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814949EC | 7C 80 18 39 */	and. r0, r4, r3
/* 814949F0 | 41 82 00 08 */	beq .L_814949F8
/* 814949F4 | 48 00 00 8C */	b .L_81494A80
.L_814949F8:
/* 814949F8 | 54 63 08 3C */	slwi r3, r3, 1
/* 814949FC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494A00 | 7C 80 18 39 */	and. r0, r4, r3
/* 81494A04 | 41 82 00 08 */	beq .L_81494A0C
/* 81494A08 | 48 00 00 78 */	b .L_81494A80
.L_81494A0C:
/* 81494A0C | 54 63 08 3C */	slwi r3, r3, 1
/* 81494A10 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494A14 | 7C 80 18 39 */	and. r0, r4, r3
/* 81494A18 | 41 82 00 08 */	beq .L_81494A20
/* 81494A1C | 48 00 00 64 */	b .L_81494A80
.L_81494A20:
/* 81494A20 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494A24 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494A28 | 7C 80 18 39 */	and. r0, r4, r3
/* 81494A2C | 41 82 00 08 */	beq .L_81494A34
/* 81494A30 | 48 00 00 50 */	b .L_81494A80
.L_81494A34:
/* 81494A34 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494A38 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494A3C | 7C 80 18 39 */	and. r0, r4, r3
/* 81494A40 | 41 82 00 08 */	beq .L_81494A48
/* 81494A44 | 48 00 00 3C */	b .L_81494A80
.L_81494A48:
/* 81494A48 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494A4C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494A50 | 7C 80 18 39 */	and. r0, r4, r3
/* 81494A54 | 41 82 00 08 */	beq .L_81494A5C
/* 81494A58 | 48 00 00 28 */	b .L_81494A80
.L_81494A5C:
/* 81494A5C | 54 63 08 3C */	slwi r3, r3, 1
/* 81494A60 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494A64 | 7C 80 18 39 */	and. r0, r4, r3
/* 81494A68 | 41 82 00 08 */	beq .L_81494A70
/* 81494A6C | 48 00 00 14 */	b .L_81494A80
.L_81494A70:
/* 81494A70 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494A74 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81494A78 | 42 00 FF 60 */	bdnz .L_814949D8
/* 81494A7C | 38 A0 FF FF */	li r5, -0x1
.L_81494A80:
/* 81494A80 | 38 05 00 1E */	addi r0, r5, 0x1e
/* 81494A84 | 48 00 00 C8 */	b .L_81494B4C
.L_81494A88:
/* 81494A88 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81494A8C | 41 82 00 C0 */	beq .L_81494B4C
/* 81494A90 | 38 00 00 04 */	li r0, 0x4
/* 81494A94 | 38 80 00 00 */	li r4, 0x0
/* 81494A98 | 38 60 00 01 */	li r3, 0x1
/* 81494A9C | 7C 09 03 A6 */	mtctr r0
.L_81494AA0:
/* 81494AA0 | 7C A0 18 39 */	and. r0, r5, r3
/* 81494AA4 | 41 82 00 08 */	beq .L_81494AAC
/* 81494AA8 | 48 00 00 A0 */	b .L_81494B48
.L_81494AAC:
/* 81494AAC | 54 63 08 3C */	slwi r3, r3, 1
/* 81494AB0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81494AB4 | 7C A0 18 39 */	and. r0, r5, r3
/* 81494AB8 | 41 82 00 08 */	beq .L_81494AC0
/* 81494ABC | 48 00 00 8C */	b .L_81494B48
.L_81494AC0:
/* 81494AC0 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494AC4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81494AC8 | 7C A0 18 39 */	and. r0, r5, r3
/* 81494ACC | 41 82 00 08 */	beq .L_81494AD4
/* 81494AD0 | 48 00 00 78 */	b .L_81494B48
.L_81494AD4:
/* 81494AD4 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494AD8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81494ADC | 7C A0 18 39 */	and. r0, r5, r3
/* 81494AE0 | 41 82 00 08 */	beq .L_81494AE8
/* 81494AE4 | 48 00 00 64 */	b .L_81494B48
.L_81494AE8:
/* 81494AE8 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494AEC | 38 84 00 01 */	addi r4, r4, 0x1
/* 81494AF0 | 7C A0 18 39 */	and. r0, r5, r3
/* 81494AF4 | 41 82 00 08 */	beq .L_81494AFC
/* 81494AF8 | 48 00 00 50 */	b .L_81494B48
.L_81494AFC:
/* 81494AFC | 54 63 08 3C */	slwi r3, r3, 1
/* 81494B00 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81494B04 | 7C A0 18 39 */	and. r0, r5, r3
/* 81494B08 | 41 82 00 08 */	beq .L_81494B10
/* 81494B0C | 48 00 00 3C */	b .L_81494B48
.L_81494B10:
/* 81494B10 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494B14 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81494B18 | 7C A0 18 39 */	and. r0, r5, r3
/* 81494B1C | 41 82 00 08 */	beq .L_81494B24
/* 81494B20 | 48 00 00 28 */	b .L_81494B48
.L_81494B24:
/* 81494B24 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494B28 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81494B2C | 7C A0 18 39 */	and. r0, r5, r3
/* 81494B30 | 41 82 00 08 */	beq .L_81494B38
/* 81494B34 | 48 00 00 14 */	b .L_81494B48
.L_81494B38:
/* 81494B38 | 54 63 08 3C */	slwi r3, r3, 1
/* 81494B3C | 38 84 00 01 */	addi r4, r4, 0x1
/* 81494B40 | 42 00 FF 60 */	bdnz .L_81494AA0
/* 81494B44 | 38 80 FF FF */	li r4, -0x1
.L_81494B48:
/* 81494B48 | 38 04 00 28 */	addi r0, r4, 0x28
.L_81494B4C:
/* 81494B4C | 7C 03 03 78 */	mr r3, r0
/* 81494B50 | 4E 80 00 20 */	blr
.endfn NETiGetConnectionTypeFromConfigList

# .text:0x278 | 0x81494B54 | size: 0x80
.fn NETGetStartupErrorCode, global
/* 81494B54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81494B58 | 7C 08 02 A6 */	mflr r0
/* 81494B5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81494B60 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81494B64 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81494B68 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81494B6C | 3B E0 00 63 */	li r31, 0x63
/* 81494B70 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81494B74 | 7C 7E 1B 78 */	mr r30, r3
/* 81494B78 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81494B7C | 4B FF E4 79 */	bl NCDiGetEnabledConfigList
/* 81494B80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81494B84 | 41 80 00 18 */	blt .L_81494B9C
/* 81494B88 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81494B8C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81494B90 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 81494B94 | 4B FF FD 49 */	bl NETiGetConnectionTypeFromConfigList
/* 81494B98 | 7C 7F 1B 78 */	mr r31, r3
.L_81494B9C:
/* 81494B9C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81494BA0 | 40 80 00 0C */	bge .L_81494BAC
/* 81494BA4 | 3F C0 80 00 */	lis r30, 0x8000
/* 81494BA8 | 3B E0 00 63 */	li r31, 0x63
.L_81494BAC:
/* 81494BAC | 7F C3 F3 78 */	mr r3, r30
/* 81494BB0 | 7F E4 FB 78 */	mr r4, r31
/* 81494BB4 | 48 00 00 51 */	bl GetStartupErrorCode
/* 81494BB8 | 7C 7F 18 50 */	subf r3, r31, r3
/* 81494BBC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81494BC0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81494BC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81494BC8 | 7C 08 03 A6 */	mtlr r0
/* 81494BCC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81494BD0 | 4E 80 00 20 */	blr
.endfn NETGetStartupErrorCode

# .text:0x2F8 | 0x81494BD4 | size: 0x30
.fn NETGetStartupErrorCodeEx, global
/* 81494BD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81494BD8 | 7C 08 02 A6 */	mflr r0
/* 81494BDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81494BE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81494BE4 | 7C 9F 23 78 */	mr r31, r4
/* 81494BE8 | 48 00 00 1D */	bl GetStartupErrorCode
/* 81494BEC | 7C 7F 18 50 */	subf r3, r31, r3
/* 81494BF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81494BF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81494BF8 | 7C 08 03 A6 */	mtlr r0
/* 81494BFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81494C00 | 4E 80 00 20 */	blr
.endfn NETGetStartupErrorCodeEx

# .text:0x328 | 0x81494C04 | size: 0x178
.fn GetStartupErrorCode, global
/* 81494C04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81494C08 | 7C 08 02 A6 */	mflr r0
/* 81494C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81494C10 | 7C 65 1B 78 */	mr r5, r3
/* 81494C14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81494C18 | 41 80 00 0C */	blt .L_81494C24
/* 81494C1C | 38 60 00 00 */	li r3, 0x0
/* 81494C20 | 48 00 01 4C */	b .L_81494D6C
.L_81494C24:
/* 81494C24 | 2C 03 FF C2 */	cmpwi r3, -0x3e
/* 81494C28 | 41 82 00 A8 */	beq .L_81494CD0
/* 81494C2C | 40 80 00 5C */	bge .L_81494C88
/* 81494C30 | 2C 03 FF 91 */	cmpwi r3, -0x6f
/* 81494C34 | 41 82 00 A8 */	beq .L_81494CDC
/* 81494C38 | 40 80 00 30 */	bge .L_81494C68
/* 81494C3C | 2C 03 FF 87 */	cmpwi r3, -0x79
/* 81494C40 | 41 82 00 A8 */	beq .L_81494CE8
/* 81494C44 | 40 80 00 18 */	bge .L_81494C5C
/* 81494C48 | 3C 80 80 00 */	lis r4, 0x8000
/* 81494C4C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81494C50 | 7C 03 00 00 */	cmpw r3, r0
/* 81494C54 | 40 80 00 FC */	bge .L_81494D50
/* 81494C58 | 48 00 00 EC */	b .L_81494D44
.L_81494C5C:
/* 81494C5C | 2C 03 FF 90 */	cmpwi r3, -0x70
/* 81494C60 | 40 80 00 B0 */	bge .L_81494D10
/* 81494C64 | 48 00 00 EC */	b .L_81494D50
.L_81494C68:
/* 81494C68 | 2C 03 FF B4 */	cmpwi r3, -0x4c
/* 81494C6C | 41 82 00 A4 */	beq .L_81494D10
/* 81494C70 | 40 80 00 E0 */	bge .L_81494D50
/* 81494C74 | 2C 03 FF 9D */	cmpwi r3, -0x63
/* 81494C78 | 40 80 00 D8 */	bge .L_81494D50
/* 81494C7C | 2C 03 FF 9A */	cmpwi r3, -0x66
/* 81494C80 | 40 80 00 B8 */	bge .L_81494D38
/* 81494C84 | 48 00 00 CC */	b .L_81494D50
.L_81494C88:
/* 81494C88 | 2C 03 FF D9 */	cmpwi r3, -0x27
/* 81494C8C | 41 82 00 84 */	beq .L_81494D10
/* 81494C90 | 40 80 00 1C */	bge .L_81494CAC
/* 81494C94 | 2C 03 FF D3 */	cmpwi r3, -0x2d
/* 81494C98 | 41 82 00 20 */	beq .L_81494CB8
/* 81494C9C | 40 80 00 B4 */	bge .L_81494D50
/* 81494CA0 | 2C 03 FF D0 */	cmpwi r3, -0x30
/* 81494CA4 | 41 82 00 6C */	beq .L_81494D10
/* 81494CA8 | 48 00 00 A8 */	b .L_81494D50
.L_81494CAC:
/* 81494CAC | 2C 03 FF E4 */	cmpwi r3, -0x1c
/* 81494CB0 | 41 82 00 14 */	beq .L_81494CC4
/* 81494CB4 | 48 00 00 9C */	b .L_81494D50
.L_81494CB8:
/* 81494CB8 | 3C 60 FF FF */	lis r3, 0xffff
/* 81494CBC | 38 63 3B E8 */	addi r3, r3, 0x3be8
/* 81494CC0 | 48 00 00 AC */	b .L_81494D6C
.L_81494CC4:
/* 81494CC4 | 3C 60 FF FF */	lis r3, 0xffff
/* 81494CC8 | 38 63 3B 84 */	addi r3, r3, 0x3b84
/* 81494CCC | 48 00 00 A0 */	b .L_81494D6C
.L_81494CD0:
/* 81494CD0 | 3C 60 FF FF */	lis r3, 0xffff
/* 81494CD4 | 38 63 3B 20 */	addi r3, r3, 0x3b20
/* 81494CD8 | 48 00 00 94 */	b .L_81494D6C
.L_81494CDC:
/* 81494CDC | 3C 60 FF FF */	lis r3, 0xffff
/* 81494CE0 | 38 63 32 24 */	addi r3, r3, 0x3224
/* 81494CE4 | 48 00 00 88 */	b .L_81494D6C
.L_81494CE8:
/* 81494CE8 | 2C 04 00 14 */	cmpwi r4, 0x14
/* 81494CEC | 41 80 00 18 */	blt .L_81494D04
/* 81494CF0 | 2C 04 00 1E */	cmpwi r4, 0x1e
/* 81494CF4 | 40 80 00 10 */	bge .L_81494D04
/* 81494CF8 | 3C 60 FF FF */	lis r3, 0xffff
/* 81494CFC | 38 63 37 38 */	addi r3, r3, 0x3738
/* 81494D00 | 48 00 00 6C */	b .L_81494D6C
.L_81494D04:
/* 81494D04 | 3C 60 FF FF */	lis r3, 0xffff
/* 81494D08 | 38 63 38 C8 */	addi r3, r3, 0x38c8
/* 81494D0C | 48 00 00 60 */	b .L_81494D6C
.L_81494D10:
/* 81494D10 | 2C 04 00 14 */	cmpwi r4, 0x14
/* 81494D14 | 41 80 00 18 */	blt .L_81494D2C
/* 81494D18 | 2C 04 00 1E */	cmpwi r4, 0x1e
/* 81494D1C | 40 80 00 10 */	bge .L_81494D2C
/* 81494D20 | 3C 60 FF FF */	lis r3, 0xffff
/* 81494D24 | 38 63 37 38 */	addi r3, r3, 0x3738
/* 81494D28 | 48 00 00 44 */	b .L_81494D6C
.L_81494D2C:
/* 81494D2C | 3C 60 FF FF */	lis r3, 0xffff
/* 81494D30 | 38 63 37 9C */	addi r3, r3, 0x379c
/* 81494D34 | 48 00 00 38 */	b .L_81494D6C
.L_81494D38:
/* 81494D38 | 3C 60 FF FF */	lis r3, 0xffff
/* 81494D3C | 38 63 34 E0 */	addi r3, r3, 0x34e0
/* 81494D40 | 48 00 00 2C */	b .L_81494D6C
.L_81494D44:
/* 81494D44 | 3C 60 FF FF */	lis r3, 0xffff
/* 81494D48 | 38 63 3C 4C */	addi r3, r3, 0x3c4c
/* 81494D4C | 48 00 00 20 */	b .L_81494D6C
.L_81494D50:
/* 81494D50 | 3C 60 81 67 */	lis r3, lbl_8166CF38@ha
/* 81494D54 | 7C A4 2B 78 */	mr r4, r5
/* 81494D58 | 38 63 CF 38 */	addi r3, r3, lbl_8166CF38@l
/* 81494D5C | 4C C6 31 82 */	crclr cr1eq
/* 81494D60 | 48 09 99 41 */	bl OSReport
/* 81494D64 | 3C 60 FF FF */	lis r3, 0xffff
/* 81494D68 | 38 63 3C 4C */	addi r3, r3, 0x3c4c
.L_81494D6C:
/* 81494D6C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81494D70 | 7C 08 03 A6 */	mtlr r0
/* 81494D74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81494D78 | 4E 80 00 20 */	blr
.endfn GetStartupErrorCode

# 0x8166CF38..0x8166CF58 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166CF38 | size: 0x20
.obj lbl_8166CF38, global
	.4byte 0x556E6B6E
	.4byte 0x6F776E20
	.4byte 0x534F5374
	.4byte 0x61727475
	.4byte 0x70204572
	.4byte 0x726F723A
	.4byte 0x2025640A
	.4byte 0x00000000
.endobj lbl_8166CF38
