.include "macros.inc"
.file "NWC24SecretFList.c"

# 0x814ADCF8..0x814ADFAC | size: 0x2B4
.text
.balign 4

# .text:0x0 | 0x814ADCF8 | size: 0x3C
.fn NWC24iOpenSecretFriendList, global
/* 814ADCF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814ADCFC | 7C 08 02 A6 */	mflr r0
/* 814ADD00 | 38 80 00 00 */	li r4, 0x0
/* 814ADD04 | 38 A0 08 00 */	li r5, 0x800
/* 814ADD08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814ADD0C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814ADD10 | 38 63 2E 00 */	addi r3, r3, 0x2e00
/* 814ADD14 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814ADD18 | 4B FE F1 6D */	bl Mail_memset
/* 814ADD1C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ADD20 | 48 00 01 AD */	bl GetCachedSecretFLHeader
/* 814ADD24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814ADD28 | 7C 08 03 A6 */	mtlr r0
/* 814ADD2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814ADD30 | 4E 80 00 20 */	blr
.endfn NWC24iOpenSecretFriendList

# .text:0x3C | 0x814ADD34 | size: 0x84
.fn NWC24iInitSecretFriendList, global
/* 814ADD34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814ADD38 | 7C 08 02 A6 */	mflr r0
/* 814ADD3C | 38 80 00 00 */	li r4, 0x0
/* 814ADD40 | 38 A0 08 00 */	li r5, 0x800
/* 814ADD44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814ADD48 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814ADD4C | 7C 7F 1B 78 */	mr r31, r3
/* 814ADD50 | 80 CD AD A0 */	lwz r6, NWC24WorkP_81698DE0@sda21(r0)
/* 814ADD54 | 38 66 2E 00 */	addi r3, r6, 0x2e00
/* 814ADD58 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814ADD5C | 4B FE F1 29 */	bl Mail_memset
/* 814ADD60 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ADD64 | 48 00 01 69 */	bl GetCachedSecretFLHeader
/* 814ADD68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADD6C | 40 82 00 10 */	bne .L_814ADD7C
/* 814ADD70 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814ADD74 | 40 82 00 08 */	bne .L_814ADD7C
/* 814ADD78 | 48 00 00 2C */	b .L_814ADDA4
.L_814ADD7C:
/* 814ADD7C | 2C 03 FF E5 */	cmpwi r3, -0x1b
/* 814ADD80 | 40 82 00 20 */	bne .L_814ADDA0
/* 814ADD84 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814ADD88 | 48 00 01 45 */	bl GetCachedSecretFLHeader
/* 814ADD8C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814ADD90 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814ADD94 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814ADD98 | 40 81 00 08 */	ble .L_814ADDA0
/* 814ADD9C | 48 00 00 08 */	b .L_814ADDA4
.L_814ADDA0:
/* 814ADDA0 | 48 00 00 19 */	bl NWC24iCreateSecretFriendList
.L_814ADDA4:
/* 814ADDA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814ADDA8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814ADDAC | 7C 08 03 A6 */	mtlr r0
/* 814ADDB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814ADDB4 | 4E 80 00 20 */	blr
.endfn NWC24iInitSecretFriendList

# .text:0xC0 | 0x814ADDB8 | size: 0x114
.fn NWC24iCreateSecretFriendList, global
/* 814ADDB8 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814ADDBC | 7C 08 02 A6 */	mflr r0
/* 814ADDC0 | 38 80 00 00 */	li r4, 0x0
/* 814ADDC4 | 38 A0 08 00 */	li r5, 0x800
/* 814ADDC8 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814ADDCC | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814ADDD0 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814ADDD4 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814ADDD8 | 93 81 00 B0 */	stw r28, 0xb0(r1)
/* 814ADDDC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814ADDE0 | 3B A3 2E 00 */	addi r29, r3, 0x2e00
/* 814ADDE4 | 7F A3 EB 78 */	mr r3, r29
/* 814ADDE8 | 4B FE F0 9D */	bl Mail_memset
/* 814ADDEC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814ADDF0 | 38 80 00 00 */	li r4, 0x0
/* 814ADDF4 | 38 A0 00 20 */	li r5, 0x20
/* 814ADDF8 | 3B 83 04 00 */	addi r28, r3, 0x400
/* 814ADDFC | 7F 83 E3 78 */	mr r3, r28
/* 814ADE00 | 4B FE F0 85 */	bl Mail_memset
/* 814ADE04 | 3C 60 57 63 */	lis r3, 0x5763
/* 814ADE08 | 38 80 00 02 */	li r4, 0x2
/* 814ADE0C | 38 63 46 73 */	addi r3, r3, 0x4673
/* 814ADE10 | 38 00 01 50 */	li r0, 0x150
/* 814ADE14 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 814ADE18 | 3B E0 00 00 */	li r31, 0x0
/* 814ADE1C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ADE20 | 38 A0 00 01 */	li r5, 0x1
/* 814ADE24 | 90 9D 00 04 */	stw r4, 0x4(r29)
/* 814ADE28 | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 814ADE2C | 93 FD 00 0C */	stw r31, 0xc(r29)
/* 814ADE30 | 80 8D 9C 70 */	lwz r4, FLFilePath@sda21(r0)
/* 814ADE34 | 4B FE FD D5 */	bl NWC24FOpen
/* 814ADE38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADE3C | 41 82 00 08 */	beq .L_814ADE44
/* 814ADE40 | 48 00 00 6C */	b .L_814ADEAC
.L_814ADE44:
/* 814ADE44 | 7F A3 EB 78 */	mr r3, r29
/* 814ADE48 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814ADE4C | 38 80 08 00 */	li r4, 0x800
/* 814ADE50 | 4B FF 06 65 */	bl NWC24FWrite
/* 814ADE54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADE58 | 7C 7E 1B 78 */	mr r30, r3
/* 814ADE5C | 41 82 00 08 */	beq .L_814ADE64
/* 814ADE60 | 93 FD 00 08 */	stw r31, 0x8(r29)
.L_814ADE64:
/* 814ADE64 | 3B E0 00 00 */	li r31, 0x0
/* 814ADE68 | 48 00 00 24 */	b .L_814ADE8C
.L_814ADE6C:
/* 814ADE6C | 7F 83 E3 78 */	mr r3, r28
/* 814ADE70 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814ADE74 | 38 80 00 20 */	li r4, 0x20
/* 814ADE78 | 4B FF 06 3D */	bl NWC24FWrite
/* 814ADE7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADE80 | 7C 7E 1B 78 */	mr r30, r3
/* 814ADE84 | 40 82 00 14 */	bne .L_814ADE98
/* 814ADE88 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814ADE8C:
/* 814ADE8C | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 814ADE90 | 7C 1F 00 40 */	cmplw r31, r0
/* 814ADE94 | 41 80 FF D8 */	blt .L_814ADE6C
.L_814ADE98:
/* 814ADE98 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ADE9C | 4B FF 00 C1 */	bl NWC24FClose
/* 814ADEA0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814ADEA4 | 41 82 00 08 */	beq .L_814ADEAC
/* 814ADEA8 | 7F C3 F3 78 */	mr r3, r30
.L_814ADEAC:
/* 814ADEAC | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814ADEB0 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814ADEB4 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814ADEB8 | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814ADEBC | 83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 814ADEC0 | 7C 08 03 A6 */	mtlr r0
/* 814ADEC4 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814ADEC8 | 4E 80 00 20 */	blr
.endfn NWC24iCreateSecretFriendList

# .text:0x1D4 | 0x814ADECC | size: 0xE0
.fn GetCachedSecretFLHeader, local
/* 814ADECC | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814ADED0 | 7C 08 02 A6 */	mflr r0
/* 814ADED4 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814ADED8 | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 814ADEDC | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 814ADEE0 | 7C 7E 1B 78 */	mr r30, r3
/* 814ADEE4 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814ADEE8 | 38 84 2E 00 */	addi r4, r4, 0x2e00
/* 814ADEEC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814ADEF0 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 814ADEF4 | 3C 03 A8 9D */	subis r0, r3, 0x5763
/* 814ADEF8 | 28 00 46 73 */	cmplwi r0, 0x4673
/* 814ADEFC | 41 82 00 94 */	beq .L_814ADF90
/* 814ADF00 | 80 8D 9C 70 */	lwz r4, FLFilePath@sda21(r0)
/* 814ADF04 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ADF08 | 38 A0 00 02 */	li r5, 0x2
/* 814ADF0C | 4B FE FC FD */	bl NWC24FOpen
/* 814ADF10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADF14 | 41 82 00 08 */	beq .L_814ADF1C
/* 814ADF18 | 48 00 00 7C */	b .L_814ADF94
.L_814ADF1C:
/* 814ADF1C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ADF20 | 38 80 00 00 */	li r4, 0x0
/* 814ADF24 | 38 A0 00 00 */	li r5, 0x0
/* 814ADF28 | 4B FF 01 CD */	bl NWC24FSeek
/* 814ADF2C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814ADF30 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814ADF34 | 38 80 08 00 */	li r4, 0x800
/* 814ADF38 | 4B FF 03 AD */	bl NWC24FRead
/* 814ADF3C | 7C 7F 1B 78 */	mr r31, r3
/* 814ADF40 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ADF44 | 4B FF 00 19 */	bl NWC24FClose
/* 814ADF48 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814ADF4C | 41 82 00 08 */	beq .L_814ADF54
/* 814ADF50 | 7F E3 FB 78 */	mr r3, r31
.L_814ADF54:
/* 814ADF54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADF58 | 41 82 00 08 */	beq .L_814ADF60
/* 814ADF5C | 48 00 00 38 */	b .L_814ADF94
.L_814ADF60:
/* 814ADF60 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814ADF64 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 814ADF68 | 3C 03 A8 9D */	subis r0, r3, 0x5763
/* 814ADF6C | 28 00 46 73 */	cmplwi r0, 0x4673
/* 814ADF70 | 41 82 00 0C */	beq .L_814ADF7C
/* 814ADF74 | 38 60 FF F2 */	li r3, -0xe
/* 814ADF78 | 48 00 00 1C */	b .L_814ADF94
.L_814ADF7C:
/* 814ADF7C | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814ADF80 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814ADF84 | 41 82 00 0C */	beq .L_814ADF90
/* 814ADF88 | 38 60 FF E5 */	li r3, -0x1b
/* 814ADF8C | 48 00 00 08 */	b .L_814ADF94
.L_814ADF90:
/* 814ADF90 | 38 60 00 00 */	li r3, 0x0
.L_814ADF94:
/* 814ADF94 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814ADF98 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 814ADF9C | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 814ADFA0 | 7C 08 03 A6 */	mtlr r0
/* 814ADFA4 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814ADFA8 | 4E 80 00 20 */	blr
.endfn GetCachedSecretFLHeader

# 0x8166E180..0x8166E1A0 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166E180 | size: 0x20
.obj lbl_8166E180, global
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F776332
	.4byte 0x342F6E77
	.4byte 0x63323466
	.4byte 0x6C732E62
	.4byte 0x696E0000
	.4byte 0x00000000
.endobj lbl_8166E180

# 0x81697CB0..0x81697CB8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CB0 | size: 0x8
.obj FLFilePath, local
	.4byte lbl_8166E180
	.4byte 0x00000000
.endobj FLFilePath
