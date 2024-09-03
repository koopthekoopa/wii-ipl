.include "macros.inc"
.file "iplWiiBannerFileInfo.cpp"

# 0x813C98CC..0x813C9DCC | size: 0x500
.text
.balign 4

# .text:0x0 | 0x813C98CC | size: 0xDC
# ipl::scene::WiiBannerFileInfo::init()
.fn init__Q33ipl5scene17WiiBannerFileInfoFv, global
/* 813C98CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C98D0 | 7C 08 02 A6 */	mflr r0
/* 813C98D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C98D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C98DC | 48 22 FB ED */	bl _savegpr_29
/* 813C98E0 | 3B E0 00 00 */	li r31, 0x0
/* 813C98E4 | 7C 7D 1B 78 */	mr r29, r3
/* 813C98E8 | 9B E3 00 00 */	stb r31, 0x0(r3)
/* 813C98EC | 38 80 00 00 */	li r4, 0x0
/* 813C98F0 | 38 A0 00 21 */	li r5, 0x21
/* 813C98F4 | B3 E3 00 02 */	sth r31, 0x2(r3)
/* 813C98F8 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 813C98FC | 9B E3 00 0C */	stb r31, 0xc(r3)
/* 813C9900 | 9B E3 00 0D */	stb r31, 0xd(r3)
/* 813C9904 | 9B E3 00 0E */	stb r31, 0xe(r3)
/* 813C9908 | 9B E3 00 0F */	stb r31, 0xf(r3)
/* 813C990C | 38 63 00 10 */	addi r3, r3, 0x10
/* 813C9910 | 48 23 CB 59 */	bl fn_81606468
/* 813C9914 | 38 7D 00 52 */	addi r3, r29, 0x52
/* 813C9918 | 38 80 00 00 */	li r4, 0x0
/* 813C991C | 38 A0 00 21 */	li r5, 0x21
/* 813C9920 | 48 23 CB 49 */	bl fn_81606468
/* 813C9924 | 80 7D 00 94 */	lwz r3, 0x94(r29)
/* 813C9928 | 38 80 00 00 */	li r4, 0x0
/* 813C992C | 38 A0 60 00 */	li r5, 0x6000
/* 813C9930 | 4B F6 6A 05 */	bl memset
/* 813C9934 | 3B C0 00 00 */	li r30, 0x0
.L_813C9938:
/* 813C9938 | 7C 7D FA 14 */	add r3, r29, r31
/* 813C993C | 38 80 00 00 */	li r4, 0x0
/* 813C9940 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 813C9944 | 38 A0 12 00 */	li r5, 0x1200
/* 813C9948 | 4B F6 69 ED */	bl memset
/* 813C994C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813C9950 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813C9954 | 2C 1E 00 08 */	cmpwi r30, 0x8
/* 813C9958 | 41 80 FF E0 */	blt .L_813C9938
/* 813C995C | 3C 80 00 01 */	lis r4, 0x1
/* 813C9960 | 38 7D 01 08 */	addi r3, r29, 0x108
/* 813C9964 | 38 A4 F0 A0 */	subi r5, r4, 0xf60
/* 813C9968 | 38 80 00 00 */	li r4, 0x0
/* 813C996C | 4B F6 69 C9 */	bl memset
/* 813C9970 | 38 00 00 00 */	li r0, 0x0
/* 813C9974 | 3C 7D 00 01 */	addis r3, r29, 0x1
/* 813C9978 | 90 1D 00 FC */	stw r0, 0xfc(r29)
/* 813C997C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C9980 | 90 1D 00 F8 */	stw r0, 0xf8(r29)
/* 813C9984 | 90 1D 01 00 */	stw r0, 0x100(r29)
/* 813C9988 | 90 1D 01 04 */	stw r0, 0x104(r29)
/* 813C998C | 90 03 F1 A8 */	stw r0, -0xe58(r3)
/* 813C9990 | 98 03 F1 AC */	stb r0, -0xe54(r3)
/* 813C9994 | 48 22 FB 81 */	bl _restgpr_29
/* 813C9998 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C999C | 7C 08 03 A6 */	mtlr r0
/* 813C99A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C99A4 | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene17WiiBannerFileInfoFv

# .text:0xDC | 0x813C99A8 | size: 0xC4
# ipl::scene::WiiBannerFileInfo::create()
.fn create__Q33ipl5scene17WiiBannerFileInfoFv, global
/* 813C99A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C99AC | 7C 08 02 A6 */	mflr r0
/* 813C99B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C99B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C99B8 | 48 22 FB 09 */	bl _savegpr_27
/* 813C99BC | A0 83 01 10 */	lhz r4, 0x110(r3)
/* 813C99C0 | 7C 7B 1B 78 */	mr r27, r3
/* 813C99C4 | 80 03 01 0C */	lwz r0, 0x10c(r3)
/* 813C99C8 | B0 83 00 02 */	sth r4, 0x2(r3)
/* 813C99CC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813C99D0 | 48 00 02 D5 */	bl resolve_icon__Q33ipl5scene17WiiBannerFileInfoFv
/* 813C99D4 | 38 7B 00 10 */	addi r3, r27, 0x10
/* 813C99D8 | 38 9B 01 28 */	addi r4, r27, 0x128
/* 813C99DC | 38 A0 00 40 */	li r5, 0x40
/* 813C99E0 | 4B F6 68 51 */	bl memcpy
/* 813C99E4 | 38 7B 00 52 */	addi r3, r27, 0x52
/* 813C99E8 | 38 9B 01 68 */	addi r4, r27, 0x168
/* 813C99EC | 38 A0 00 40 */	li r5, 0x40
/* 813C99F0 | 4B F6 68 41 */	bl memcpy
/* 813C99F4 | 80 7B 00 94 */	lwz r3, 0x94(r27)
/* 813C99F8 | 38 9B 01 A8 */	addi r4, r27, 0x1a8
/* 813C99FC | 38 A0 60 00 */	li r5, 0x6000
/* 813C9A00 | 4B F6 68 31 */	bl memcpy
/* 813C9A04 | 80 7B 00 94 */	lwz r3, 0x94(r27)
/* 813C9A08 | 38 80 60 00 */	li r4, 0x6000
/* 813C9A0C | 48 16 3F 59 */	bl DCStoreRange
/* 813C9A10 | 3B 80 00 00 */	li r28, 0x0
/* 813C9A14 | 3B E0 00 00 */	li r31, 0x0
/* 813C9A18 | 3B C0 00 00 */	li r30, 0x0
.L_813C9A1C:
/* 813C9A1C | 7F BB F2 14 */	add r29, r27, r30
/* 813C9A20 | 7C 9B FA 14 */	add r4, r27, r31
/* 813C9A24 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 813C9A28 | 38 84 61 A8 */	addi r4, r4, 0x61a8
/* 813C9A2C | 38 A0 12 00 */	li r5, 0x1200
/* 813C9A30 | 4B F6 68 01 */	bl memcpy
/* 813C9A34 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 813C9A38 | 38 80 12 00 */	li r4, 0x1200
/* 813C9A3C | 48 16 3F 29 */	bl DCStoreRange
/* 813C9A40 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813C9A44 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813C9A48 | 2C 1C 00 08 */	cmpwi r28, 0x8
/* 813C9A4C | 3B FF 12 00 */	addi r31, r31, 0x1200
/* 813C9A50 | 41 80 FF CC */	blt .L_813C9A1C
/* 813C9A54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C9A58 | 48 22 FA B5 */	bl _restgpr_27
/* 813C9A5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C9A60 | 7C 08 03 A6 */	mtlr r0
/* 813C9A64 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C9A68 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene17WiiBannerFileInfoFv

# .text:0x1A0 | 0x813C9A6C | size: 0x130
# ipl::scene::WiiBannerFileInfo::update()
.fn update__Q33ipl5scene17WiiBannerFileInfoFv, global
/* 813C9A6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C9A70 | 7C 08 02 A6 */	mflr r0
/* 813C9A74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C9A78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C9A7C | 48 22 FA 4D */	bl _savegpr_29
/* 813C9A80 | A8 83 00 0A */	lha r4, 0xa(r3)
/* 813C9A84 | 7C 7F 1B 78 */	mr r31, r3
/* 813C9A88 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 813C9A8C | 7C 00 07 74 */	extsb r0, r0
/* 813C9A90 | 7C 04 02 14 */	add r0, r4, r0
/* 813C9A94 | B0 03 00 0A */	sth r0, 0xa(r3)
/* 813C9A98 | A8 83 00 0A */	lha r4, 0xa(r3)
/* 813C9A9C | A8 03 00 08 */	lha r0, 0x8(r3)
/* 813C9AA0 | 7C 04 00 00 */	cmpw r4, r0
/* 813C9AA4 | 41 80 00 40 */	blt .L_813C9AE4
/* 813C9AA8 | 88 03 00 0D */	lbz r0, 0xd(r3)
/* 813C9AAC | 28 00 00 10 */	cmplwi r0, 0x10
/* 813C9AB0 | 40 82 00 24 */	bne .L_813C9AD4
/* 813C9AB4 | 88 A3 00 0F */	lbz r5, 0xf(r3)
/* 813C9AB8 | 38 00 FF FF */	li r0, -0x1
/* 813C9ABC | A8 83 00 08 */	lha r4, 0x8(r3)
/* 813C9AC0 | 7C 85 20 50 */	subf r4, r5, r4
/* 813C9AC4 | 38 84 FF FF */	subi r4, r4, 0x1
/* 813C9AC8 | B0 83 00 0A */	sth r4, 0xa(r3)
/* 813C9ACC | 98 03 00 0C */	stb r0, 0xc(r3)
/* 813C9AD0 | 48 00 00 14 */	b .L_813C9AE4
.L_813C9AD4:
/* 813C9AD4 | 38 80 00 00 */	li r4, 0x0
/* 813C9AD8 | 38 00 00 01 */	li r0, 0x1
/* 813C9ADC | B0 83 00 0A */	sth r4, 0xa(r3)
/* 813C9AE0 | 98 03 00 0C */	stb r0, 0xc(r3)
.L_813C9AE4:
/* 813C9AE4 | A8 03 00 0A */	lha r0, 0xa(r3)
/* 813C9AE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C9AEC | 40 80 00 2C */	bge .L_813C9B18
/* 813C9AF0 | 88 03 00 0D */	lbz r0, 0xd(r3)
/* 813C9AF4 | 28 00 00 10 */	cmplwi r0, 0x10
/* 813C9AF8 | 40 82 00 10 */	bne .L_813C9B08
/* 813C9AFC | 88 03 00 0E */	lbz r0, 0xe(r3)
/* 813C9B00 | B0 03 00 0A */	sth r0, 0xa(r3)
/* 813C9B04 | 48 00 00 0C */	b .L_813C9B10
.L_813C9B08:
/* 813C9B08 | 38 00 00 00 */	li r0, 0x0
/* 813C9B0C | B0 03 00 0A */	sth r0, 0xa(r3)
.L_813C9B10:
/* 813C9B10 | 38 00 00 01 */	li r0, 0x1
/* 813C9B14 | 98 03 00 0C */	stb r0, 0xc(r3)
.L_813C9B18:
/* 813C9B18 | 3B C0 00 00 */	li r30, 0x0
/* 813C9B1C | 3B A0 00 00 */	li r29, 0x0
.L_813C9B20:
/* 813C9B20 | 7F E3 FB 78 */	mr r3, r31
/* 813C9B24 | 7F A4 07 34 */	extsh r4, r29
/* 813C9B28 | 48 00 02 79 */	bl get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi
/* 813C9B2C | 54 63 10 3A */	slwi r3, r3, 2
/* 813C9B30 | A8 1F 00 0A */	lha r0, 0xa(r31)
/* 813C9B34 | 7F DE 1A 14 */	add r30, r30, r3
/* 813C9B38 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813C9B3C | 7C 00 F0 00 */	cmpw r0, r30
/* 813C9B40 | 40 81 00 10 */	ble .L_813C9B50
/* 813C9B44 | 7F A0 07 34 */	extsh r0, r29
/* 813C9B48 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813C9B4C | 41 80 FF D4 */	blt .L_813C9B20
.L_813C9B50:
/* 813C9B50 | 7F A4 07 34 */	extsh r4, r29
/* 813C9B54 | 38 7F 00 B8 */	addi r3, r31, 0xb8
/* 813C9B58 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813C9B5C | 38 A0 00 30 */	li r5, 0x30
/* 813C9B60 | 54 00 10 3A */	slwi r0, r0, 2
/* 813C9B64 | 38 C0 00 30 */	li r6, 0x30
/* 813C9B68 | 7C 9F 02 14 */	add r4, r31, r0
/* 813C9B6C | 38 E0 00 05 */	li r7, 0x5
/* 813C9B70 | 80 84 00 98 */	lwz r4, 0x98(r4)
/* 813C9B74 | 39 00 00 00 */	li r8, 0x0
/* 813C9B78 | 39 20 00 00 */	li r9, 0x0
/* 813C9B7C | 39 40 00 00 */	li r10, 0x0
/* 813C9B80 | 48 17 C0 F1 */	bl GXInitTexObj
/* 813C9B84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C9B88 | 48 22 F9 8D */	bl _restgpr_29
/* 813C9B8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C9B90 | 7C 08 03 A6 */	mtlr r0
/* 813C9B94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C9B98 | 4E 80 00 20 */	blr
.endfn update__Q33ipl5scene17WiiBannerFileInfoFv

# .text:0x2D0 | 0x813C9B9C | size: 0xAC
# ipl::scene::WiiBannerFileInfo::loadIconTexture()
.fn loadIconTexture__Q33ipl5scene17WiiBannerFileInfoFv, global
/* 813C9B9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C9BA0 | 7C 08 02 A6 */	mflr r0
/* 813C9BA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C9BA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C9BAC | 48 22 F9 1D */	bl _savegpr_29
/* 813C9BB0 | 7C 7D 1B 78 */	mr r29, r3
/* 813C9BB4 | 3B E0 00 00 */	li r31, 0x0
/* 813C9BB8 | 3B C0 00 00 */	li r30, 0x0
.L_813C9BBC:
/* 813C9BBC | 7F A3 EB 78 */	mr r3, r29
/* 813C9BC0 | 7F C4 07 34 */	extsh r4, r30
/* 813C9BC4 | 48 00 01 DD */	bl get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi
/* 813C9BC8 | 54 63 10 3A */	slwi r3, r3, 2
/* 813C9BCC | A8 1D 00 0A */	lha r0, 0xa(r29)
/* 813C9BD0 | 7F FF 1A 14 */	add r31, r31, r3
/* 813C9BD4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813C9BD8 | 7C 00 F8 00 */	cmpw r0, r31
/* 813C9BDC | 40 81 00 10 */	ble .L_813C9BEC
/* 813C9BE0 | 7F C0 07 34 */	extsh r0, r30
/* 813C9BE4 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813C9BE8 | 41 80 FF D4 */	blt .L_813C9BBC
.L_813C9BEC:
/* 813C9BEC | 7F C4 07 34 */	extsh r4, r30
/* 813C9BF0 | 38 7D 00 B8 */	addi r3, r29, 0xb8
/* 813C9BF4 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813C9BF8 | 38 A0 00 30 */	li r5, 0x30
/* 813C9BFC | 54 00 10 3A */	slwi r0, r0, 2
/* 813C9C00 | 38 C0 00 30 */	li r6, 0x30
/* 813C9C04 | 7C 9D 02 14 */	add r4, r29, r0
/* 813C9C08 | 38 E0 00 05 */	li r7, 0x5
/* 813C9C0C | 80 84 00 98 */	lwz r4, 0x98(r4)
/* 813C9C10 | 39 00 00 00 */	li r8, 0x0
/* 813C9C14 | 39 20 00 00 */	li r9, 0x0
/* 813C9C18 | 39 40 00 00 */	li r10, 0x0
/* 813C9C1C | 48 17 C0 55 */	bl GXInitTexObj
/* 813C9C20 | 38 7D 00 B8 */	addi r3, r29, 0xb8
/* 813C9C24 | 38 80 00 00 */	li r4, 0x0
/* 813C9C28 | 48 17 C5 85 */	bl GXLoadTexObj
/* 813C9C2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C9C30 | 38 7D 00 B8 */	addi r3, r29, 0xb8
/* 813C9C34 | 48 22 F8 E1 */	bl _restgpr_29
/* 813C9C38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C9C3C | 7C 08 03 A6 */	mtlr r0
/* 813C9C40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C9C44 | 4E 80 00 20 */	blr
.endfn loadIconTexture__Q33ipl5scene17WiiBannerFileInfoFv

# .text:0x37C | 0x813C9C48 | size: 0x5C
# ipl::scene::WiiBannerFileInfo::loadBannerTexture()
.fn loadBannerTexture__Q33ipl5scene17WiiBannerFileInfoFv, global
/* 813C9C48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9C4C | 7C 08 02 A6 */	mflr r0
/* 813C9C50 | 38 A0 00 C0 */	li r5, 0xc0
/* 813C9C54 | 38 C0 00 40 */	li r6, 0x40
/* 813C9C58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9C5C | 38 E0 00 05 */	li r7, 0x5
/* 813C9C60 | 39 00 00 00 */	li r8, 0x0
/* 813C9C64 | 39 20 00 00 */	li r9, 0x0
/* 813C9C68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9C6C | 7C 7F 1B 78 */	mr r31, r3
/* 813C9C70 | 39 40 00 00 */	li r10, 0x0
/* 813C9C74 | 80 83 00 94 */	lwz r4, 0x94(r3)
/* 813C9C78 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 813C9C7C | 48 17 BF F5 */	bl GXInitTexObj
/* 813C9C80 | 38 7F 00 D8 */	addi r3, r31, 0xd8
/* 813C9C84 | 38 80 00 00 */	li r4, 0x0
/* 813C9C88 | 48 17 C5 25 */	bl GXLoadTexObj
/* 813C9C8C | 38 7F 00 D8 */	addi r3, r31, 0xd8
/* 813C9C90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9C94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9C98 | 7C 08 03 A6 */	mtlr r0
/* 813C9C9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9CA0 | 4E 80 00 20 */	blr
.endfn loadBannerTexture__Q33ipl5scene17WiiBannerFileInfoFv

# .text:0x3D8 | 0x813C9CA4 | size: 0xFC
# ipl::scene::WiiBannerFileInfo::resolve_icon()
.fn resolve_icon__Q33ipl5scene17WiiBannerFileInfoFv, global
/* 813C9CA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C9CA8 | 7C 08 02 A6 */	mflr r0
/* 813C9CAC | 38 80 00 00 */	li r4, 0x0
/* 813C9CB0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C9CB4 | 38 00 00 00 */	li r0, 0x0
/* 813C9CB8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C9CBC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C9CC0 | 7C 7E 1B 78 */	mr r30, r3
/* 813C9CC4 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 813C9CC8 | B0 03 00 08 */	sth r0, 0x8(r3)
/* 813C9CCC | B0 03 00 0A */	sth r0, 0xa(r3)
/* 813C9CD0 | 48 00 00 D1 */	bl get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi
/* 813C9CD4 | 54 60 16 3A */	clrlslwi r0, r3, 26, 2
/* 813C9CD8 | 3B E0 00 00 */	li r31, 0x0
/* 813C9CDC | 98 1E 00 0E */	stb r0, 0xe(r30)
.L_813C9CE0:
/* 813C9CE0 | 7F C3 F3 78 */	mr r3, r30
/* 813C9CE4 | 7F E4 FB 78 */	mr r4, r31
/* 813C9CE8 | 48 00 00 B9 */	bl get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi
/* 813C9CEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C9CF0 | 41 82 00 2C */	beq .L_813C9D1C
/* 813C9CF4 | 7F C3 F3 78 */	mr r3, r30
/* 813C9CF8 | 7F E4 FB 78 */	mr r4, r31
/* 813C9CFC | 48 00 00 A5 */	bl get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi
/* 813C9D00 | A8 1E 00 08 */	lha r0, 0x8(r30)
/* 813C9D04 | 54 63 10 3A */	slwi r3, r3, 2
/* 813C9D08 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813C9D0C | 7C 00 1A 14 */	add r0, r0, r3
/* 813C9D10 | 2C 1F 00 08 */	cmpwi r31, 0x8
/* 813C9D14 | B0 1E 00 08 */	sth r0, 0x8(r30)
/* 813C9D18 | 41 80 FF C8 */	blt .L_813C9CE0
.L_813C9D1C:
/* 813C9D1C | 7F C3 F3 78 */	mr r3, r30
/* 813C9D20 | 38 9F FF FF */	subi r4, r31, 0x1
/* 813C9D24 | 48 00 00 7D */	bl get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi
/* 813C9D28 | 54 60 16 3A */	clrlslwi r0, r3, 26, 2
/* 813C9D2C | 7F C3 F3 78 */	mr r3, r30
/* 813C9D30 | 98 1E 00 0F */	stb r0, 0xf(r30)
/* 813C9D34 | 38 80 00 00 */	li r4, 0x0
/* 813C9D38 | 48 00 00 69 */	bl get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi
/* 813C9D3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C9D40 | 41 82 00 48 */	beq .L_813C9D88
/* 813C9D44 | 3B E0 00 00 */	li r31, 0x0
.L_813C9D48:
/* 813C9D48 | 7F C3 F3 78 */	mr r3, r30
/* 813C9D4C | 7F E4 FB 78 */	mr r4, r31
/* 813C9D50 | 48 00 00 51 */	bl get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi
/* 813C9D54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C9D58 | 41 82 00 10 */	beq .L_813C9D68
/* 813C9D5C | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 813C9D60 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813C9D64 | 98 1E 00 00 */	stb r0, 0x0(r30)
.L_813C9D68:
/* 813C9D68 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813C9D6C | 2C 1F 00 08 */	cmpwi r31, 0x8
/* 813C9D70 | 41 80 FF D8 */	blt .L_813C9D48
/* 813C9D74 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C9D78 | 38 00 00 01 */	li r0, 0x1
/* 813C9D7C | 54 63 06 F6 */	rlwinm r3, r3, 0, 27, 27
/* 813C9D80 | 98 7E 00 0D */	stb r3, 0xd(r30)
/* 813C9D84 | 98 1E 00 0C */	stb r0, 0xc(r30)
.L_813C9D88:
/* 813C9D88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C9D8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C9D90 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C9D94 | 7C 08 03 A6 */	mtlr r0
/* 813C9D98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C9D9C | 4E 80 00 20 */	blr
.endfn resolve_icon__Q33ipl5scene17WiiBannerFileInfoFv

# .text:0x4D4 | 0x813C9DA0 | size: 0x2C
# ipl::scene::WiiBannerFileInfo::get_iconspeed(int) const
.fn get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi, global
/* 813C9DA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C9DA4 | 41 80 00 0C */	blt .L_813C9DB0
/* 813C9DA8 | 2C 04 00 08 */	cmpwi r4, 0x8
/* 813C9DAC | 40 81 00 0C */	ble .L_813C9DB8
.L_813C9DB0:
/* 813C9DB0 | 38 60 00 00 */	li r3, 0x0
/* 813C9DB4 | 4E 80 00 20 */	blr
.L_813C9DB8:
/* 813C9DB8 | A0 63 00 02 */	lhz r3, 0x2(r3)
/* 813C9DBC | 54 80 08 3C */	slwi r0, r4, 1
/* 813C9DC0 | 7C 60 06 30 */	sraw r0, r3, r0
/* 813C9DC4 | 54 03 07 BE */	clrlwi r3, r0, 30
/* 813C9DC8 | 4E 80 00 20 */	blr
.endfn get_iconspeed__Q33ipl5scene17WiiBannerFileInfoCFi
