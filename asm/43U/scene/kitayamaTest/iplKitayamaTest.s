.include "macros.inc"
.file "iplKitayamaTest.cpp"

# 0x813BE010..0x813BE9E8 | size: 0x9D8
.text
.balign 4

# .text:0x0 | 0x813BE010 | size: 0x6C
# ipl::scene::KitayamaTest::KitayamaTest(EGG::Heap*, int)
.fn __ct__Q33ipl5scene12KitayamaTestFPQ23EGG4Heapi, global
/* 813BE010 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BE014 | 7C 08 02 A6 */	mflr r0
/* 813BE018 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BE01C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BE020 | 48 23 B4 A9 */	bl _savegpr_29
/* 813BE024 | 7C 7D 1B 78 */	mr r29, r3
/* 813BE028 | 7C 9E 23 78 */	mr r30, r4
/* 813BE02C | 7C BF 2B 78 */	mr r31, r5
/* 813BE030 | 48 04 D1 D9 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 813BE034 | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene12KitayamaTest@ha
/* 813BE038 | 38 00 00 00 */	li r0, 0x0
/* 813BE03C | 38 A5 FD 14 */	addi r5, r5, __vt__Q33ipl5scene12KitayamaTest@l
/* 813BE040 | 93 DD 00 58 */	stw r30, 0x58(r29)
/* 813BE044 | 38 85 00 1C */	addi r4, r5, 0x1c
/* 813BE048 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BE04C | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 813BE050 | 7F A3 EB 78 */	mr r3, r29
/* 813BE054 | 90 9D 00 14 */	stw r4, 0x14(r29)
/* 813BE058 | 93 FD 00 5C */	stw r31, 0x5c(r29)
/* 813BE05C | 90 1D 00 68 */	stw r0, 0x68(r29)
/* 813BE060 | 90 1D 00 6C */	stw r0, 0x6c(r29)
/* 813BE064 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE068 | 48 23 B4 AD */	bl _restgpr_29
/* 813BE06C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BE070 | 7C 08 03 A6 */	mtlr r0
/* 813BE074 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BE078 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12KitayamaTestFPQ23EGG4Heapi

# .text:0x6C | 0x813BE07C | size: 0x5C
# ipl::scene::KitayamaTest::~KitayamaTest()
.fn __dt__Q33ipl5scene12KitayamaTestFv, global
/* 813BE07C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BE080 | 7C 08 02 A6 */	mflr r0
/* 813BE084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE088 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BE08C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BE090 | 7C 9F 23 78 */	mr r31, r4
/* 813BE094 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BE098 | 7C 7E 1B 78 */	mr r30, r3
/* 813BE09C | 41 82 00 20 */	beq .L_813BE0BC
/* 813BE0A0 | 41 82 00 0C */	beq .L_813BE0AC
/* 813BE0A4 | 38 80 00 00 */	li r4, 0x0
/* 813BE0A8 | 48 04 BB BD */	bl __dt__Q33ipl5scene4BaseFv
.L_813BE0AC:
/* 813BE0AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813BE0B0 | 40 81 00 0C */	ble .L_813BE0BC
/* 813BE0B4 | 7F C3 F3 78 */	mr r3, r30
/* 813BE0B8 | 48 23 A0 2D */	bl __dl__FPv
.L_813BE0BC:
/* 813BE0BC | 7F C3 F3 78 */	mr r3, r30
/* 813BE0C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BE0C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BE0C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BE0CC | 7C 08 03 A6 */	mtlr r0
/* 813BE0D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BE0D4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12KitayamaTestFv

# .text:0xC8 | 0x813BE0D8 | size: 0x4
# ipl::scene::KitayamaTest::prepare()
.fn prepare__Q33ipl5scene12KitayamaTestFv, global
/* 813BE0D8 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene12KitayamaTestFv

# .text:0xCC | 0x813BE0DC | size: 0xA4
# ipl::scene::KitayamaTest::create()
.fn create__Q33ipl5scene12KitayamaTestFv, global
/* 813BE0DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BE0E0 | 7C 08 02 A6 */	mflr r0
/* 813BE0E4 | 3C 80 81 65 */	lis r4, lbl_8164FB08@ha
/* 813BE0E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BE0EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BE0F0 | 7C 7F 1B 78 */	mr r31, r3
/* 813BE0F4 | 38 64 FB 08 */	addi r3, r4, lbl_8164FB08@l
/* 813BE0F8 | 4C C6 31 82 */	crclr cr1eq
/* 813BE0FC | 48 17 05 A5 */	bl OSReport
/* 813BE100 | 3C 60 00 03 */	lis r3, 0x3
/* 813BE104 | 80 9F 00 58 */	lwz r4, 0x58(r31)
/* 813BE108 | 38 63 89 C0 */	subi r3, r3, 0x7640
/* 813BE10C | 38 A0 00 04 */	li r5, 0x4
/* 813BE110 | 48 23 9F A1 */	bl __nw__FUlPQ23EGG4Heapi
/* 813BE114 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE118 | 41 82 00 08 */	beq .L_813BE120
/* 813BE11C | 48 00 08 CD */	bl __ct__Q33ipl8kitayama21NandSDWorker_AutoTestFv
.L_813BE120:
/* 813BE120 | 80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 813BE124 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 813BE128 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BE12C | 41 82 00 2C */	beq .L_813BE158
/* 813BE130 | 40 80 00 10 */	bge .L_813BE140
/* 813BE134 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BE138 | 40 80 00 14 */	bge .L_813BE14C
/* 813BE13C | 48 00 00 30 */	b .L_813BE16C
.L_813BE140:
/* 813BE140 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813BE144 | 40 80 00 28 */	bge .L_813BE16C
/* 813BE148 | 48 00 00 1C */	b .L_813BE164
.L_813BE14C:
/* 813BE14C | 38 00 00 01 */	li r0, 0x1
/* 813BE150 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 813BE154 | 48 00 00 18 */	b .L_813BE16C
.L_813BE158:
/* 813BE158 | 38 00 00 02 */	li r0, 0x2
/* 813BE15C | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 813BE160 | 48 00 00 0C */	b .L_813BE16C
.L_813BE164:
/* 813BE164 | 38 00 00 07 */	li r0, 0x7
/* 813BE168 | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_813BE16C:
/* 813BE16C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BE170 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BE174 | 7C 08 03 A6 */	mtlr r0
/* 813BE178 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BE17C | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene12KitayamaTestFv

# .text:0x170 | 0x813BE180 | size: 0x94
# ipl::scene::KitayamaTest::destroy()
.fn destroy__Q33ipl5scene12KitayamaTestFv, global
/* 813BE180 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BE184 | 7C 08 02 A6 */	mflr r0
/* 813BE188 | 38 80 00 01 */	li r4, 0x1
/* 813BE18C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BE190 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BE194 | 7C 7F 1B 78 */	mr r31, r3
/* 813BE198 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813BE19C | 48 00 08 91 */	bl __dt__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BE1A0 | 80 9F 00 68 */	lwz r4, 0x68(r31)
/* 813BE1A4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813BE1A8 | 41 82 00 20 */	beq .L_813BE1C8
/* 813BE1AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BE1B0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BE1B4 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813BE1B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE1BC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BE1C0 | 7D 89 03 A6 */	mtctr r12
/* 813BE1C4 | 4E 80 04 21 */	bctrl
.L_813BE1C8:
/* 813BE1C8 | 80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 813BE1CC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813BE1D0 | 41 82 00 20 */	beq .L_813BE1F0
/* 813BE1D4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BE1D8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BE1DC | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813BE1E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE1E4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BE1E8 | 7D 89 03 A6 */	mtctr r12
/* 813BE1EC | 4E 80 04 21 */	bctrl
.L_813BE1F0:
/* 813BE1F0 | 3C 60 81 65 */	lis r3, lbl_8164FB25@ha
/* 813BE1F4 | 38 63 FB 25 */	addi r3, r3, lbl_8164FB25@l
/* 813BE1F8 | 4C C6 31 82 */	crclr cr1eq
/* 813BE1FC | 48 17 04 A5 */	bl OSReport
/* 813BE200 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BE204 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BE208 | 7C 08 03 A6 */	mtlr r0
/* 813BE20C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BE210 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene12KitayamaTestFv

# .text:0x204 | 0x813BE214 | size: 0x4
# ipl::scene::KitayamaTest::calcCommon()
.fn calcCommon__Q33ipl5scene12KitayamaTestFv, global
/* 813BE214 | 4E 80 00 20 */	blr
.endfn calcCommon__Q33ipl5scene12KitayamaTestFv

# .text:0x208 | 0x813BE218 | size: 0x740
# ipl::scene::KitayamaTest::calcNormal()
.fn calcNormal__Q33ipl5scene12KitayamaTestFv, global
/* 813BE218 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 813BE21C | 7C 08 02 A6 */	mflr r0
/* 813BE220 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 813BE224 | 39 61 01 40 */	addi r11, r1, 0x140
/* 813BE228 | 48 23 B2 99 */	bl _savegpr_27
/* 813BE22C | 3F E0 81 65 */	lis r31, lbl_8164FB08@ha
/* 813BE230 | 7C 7D 1B 78 */	mr r29, r3
/* 813BE234 | 3B FF FB 08 */	addi r31, r31, lbl_8164FB08@l
/* 813BE238 | 3B C0 00 00 */	li r30, 0x0
/* 813BE23C | 4B F7 77 6D */	bl getMasterController__Q23ipl6SystemFv
/* 813BE240 | 80 1D 00 60 */	lwz r0, 0x60(r29)
/* 813BE244 | 7C 7C 1B 78 */	mr r28, r3
/* 813BE248 | 28 00 00 0C */	cmplwi r0, 0xc
/* 813BE24C | 41 81 06 F0 */	bgt .L_813BE93C
/* 813BE250 | 3C 80 81 65 */	lis r4, jumptable_8164FCE0@ha
/* 813BE254 | 54 00 10 3A */	slwi r0, r0, 2
/* 813BE258 | 38 84 FC E0 */	addi r4, r4, jumptable_8164FCE0@l
/* 813BE25C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813BE260 | 7C 89 03 A6 */	mtctr r4
/* 813BE264 | 4E 80 04 20 */	bctr
.L_813BE268:
/* 813BE268 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE26C | 38 80 08 00 */	li r4, 0x800
/* 813BE270 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BE274 | 7D 89 03 A6 */	mtctr r12
/* 813BE278 | 4E 80 04 21 */	bctrl
/* 813BE27C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE280 | 41 82 00 10 */	beq .L_813BE290
/* 813BE284 | 38 00 00 02 */	li r0, 0x2
/* 813BE288 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE28C | 48 00 06 B0 */	b .L_813BE93C
.L_813BE290:
/* 813BE290 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813BE294 | 7F 83 E3 78 */	mr r3, r28
/* 813BE298 | 38 80 04 00 */	li r4, 0x400
/* 813BE29C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BE2A0 | 7D 89 03 A6 */	mtctr r12
/* 813BE2A4 | 4E 80 04 21 */	bctrl
/* 813BE2A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE2AC | 41 82 06 90 */	beq .L_813BE93C
/* 813BE2B0 | 38 00 00 07 */	li r0, 0x7
/* 813BE2B4 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE2B8 | 48 00 06 84 */	b .L_813BE93C
.L_813BE2BC:
/* 813BE2BC | 3C 80 30 30 */	lis r4, 0x3030
/* 813BE2C0 | 3C 60 00 01 */	lis r3, 0x1
/* 813BE2C4 | 38 84 30 30 */	addi r4, r4, 0x3030
/* 813BE2C8 | 48 20 0B F1 */	bl fn_815BEEB8
/* 813BE2CC | 48 1B 61 D9 */	bl fn_815744A4
/* 813BE2D0 | 48 1B 60 A1 */	bl ISFS_OpenLib
/* 813BE2D4 | 38 7F 00 3C */	addi r3, r31, 0x3c
/* 813BE2D8 | 4B FA 1D D1 */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 813BE2DC | 38 7F 00 3C */	addi r3, r31, 0x3c
/* 813BE2E0 | 38 80 00 3F */	li r4, 0x3f
/* 813BE2E4 | 38 A0 00 00 */	li r5, 0x0
/* 813BE2E8 | 4B FA 19 35 */	bl Create__Q33ipl4nand7wrapperFPCcUcUc
/* 813BE2EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE2F0 | 40 82 01 10 */	bne .L_813BE400
/* 813BE2F4 | 38 7F 00 3C */	addi r3, r31, 0x3c
/* 813BE2F8 | 38 81 00 94 */	addi r4, r1, 0x94
/* 813BE2FC | 38 A0 00 02 */	li r5, 0x2
/* 813BE300 | 4B FA 19 91 */	bl Open__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 813BE304 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE308 | 41 82 00 28 */	beq .L_813BE330
/* 813BE30C | 7C 64 1B 78 */	mr r4, r3
/* 813BE310 | 38 7F 00 65 */	addi r3, r31, 0x65
/* 813BE314 | 4C C6 31 82 */	crclr cr1eq
/* 813BE318 | 48 17 03 89 */	bl OSReport
/* 813BE31C | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE320 | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE324 | 38 80 00 AD */	li r4, 0xad
/* 813BE328 | 4C C6 31 82 */	crclr cr1eq
/* 813BE32C | 48 17 04 05 */	bl OSPanic
.L_813BE330:
/* 813BE330 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BE334 | 3F 80 00 01 */	lis r28, 0x1
/* 813BE338 | 38 9C F0 A0 */	subi r4, r28, 0xf60
/* 813BE33C | 38 A0 00 20 */	li r5, 0x20
/* 813BE340 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE344 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BE348 | 7D 89 03 A6 */	mtctr r12
/* 813BE34C | 4E 80 04 21 */	bctrl
/* 813BE350 | 7C 7B 1B 78 */	mr r27, r3
/* 813BE354 | 38 BC F0 A0 */	subi r5, r28, 0xf60
/* 813BE358 | 38 80 00 55 */	li r4, 0x55
/* 813BE35C | 4B F7 1F D9 */	bl memset
/* 813BE360 | 3C 60 57 49 */	lis r3, 0x5749
/* 813BE364 | 38 00 00 00 */	li r0, 0x0
/* 813BE368 | 38 63 42 4E */	addi r3, r3, 0x424e
/* 813BE36C | 7F 64 DB 78 */	mr r4, r27
/* 813BE370 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 813BE374 | 38 61 00 94 */	addi r3, r1, 0x94
/* 813BE378 | 38 BC F0 A0 */	subi r5, r28, 0xf60
/* 813BE37C | 90 1B 00 04 */	stw r0, 0x4(r27)
/* 813BE380 | 4B FA 1A 5D */	bl Write__Q33ipl4nand7wrapperFP12NANDFileInfoPCvUl
/* 813BE384 | 28 03 F0 A0 */	cmplwi r3, 0xf0a0
/* 813BE388 | 41 82 00 28 */	beq .L_813BE3B0
/* 813BE38C | 7C 64 1B 78 */	mr r4, r3
/* 813BE390 | 38 7F 00 9C */	addi r3, r31, 0x9c
/* 813BE394 | 4C C6 31 82 */	crclr cr1eq
/* 813BE398 | 48 17 03 09 */	bl OSReport
/* 813BE39C | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE3A0 | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE3A4 | 38 80 00 B8 */	li r4, 0xb8
/* 813BE3A8 | 4C C6 31 82 */	crclr cr1eq
/* 813BE3AC | 48 17 03 85 */	bl OSPanic
.L_813BE3B0:
/* 813BE3B0 | 38 61 00 94 */	addi r3, r1, 0x94
/* 813BE3B4 | 4B FA 19 51 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 813BE3B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE3BC | 41 82 00 28 */	beq .L_813BE3E4
/* 813BE3C0 | 7C 64 1B 78 */	mr r4, r3
/* 813BE3C4 | 38 7F 00 B3 */	addi r3, r31, 0xb3
/* 813BE3C8 | 4C C6 31 82 */	crclr cr1eq
/* 813BE3CC | 48 17 02 D5 */	bl OSReport
/* 813BE3D0 | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE3D4 | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE3D8 | 38 80 00 BE */	li r4, 0xbe
/* 813BE3DC | 4C C6 31 82 */	crclr cr1eq
/* 813BE3E0 | 48 17 03 51 */	bl OSPanic
.L_813BE3E4:
/* 813BE3E4 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BE3E8 | 7F 64 DB 78 */	mr r4, r27
/* 813BE3EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE3F0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BE3F4 | 7D 89 03 A6 */	mtctr r12
/* 813BE3F8 | 4E 80 04 21 */	bctrl
/* 813BE3FC | 48 00 00 40 */	b .L_813BE43C
.L_813BE400:
/* 813BE400 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 813BE404 | 40 82 00 14 */	bne .L_813BE418
/* 813BE408 | 38 7F 00 CA */	addi r3, r31, 0xca
/* 813BE40C | 4C C6 31 82 */	crclr cr1eq
/* 813BE410 | 48 17 02 91 */	bl OSReport
/* 813BE414 | 48 00 00 28 */	b .L_813BE43C
.L_813BE418:
/* 813BE418 | 7C 64 1B 78 */	mr r4, r3
/* 813BE41C | 38 7F 00 E5 */	addi r3, r31, 0xe5
/* 813BE420 | 4C C6 31 82 */	crclr cr1eq
/* 813BE424 | 48 17 02 7D */	bl OSReport
/* 813BE428 | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE42C | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE430 | 38 80 00 C6 */	li r4, 0xc6
/* 813BE434 | 4C C6 31 82 */	crclr cr1eq
/* 813BE438 | 48 17 02 F9 */	bl OSPanic
.L_813BE43C:
/* 813BE43C | 38 7F 00 FD */	addi r3, r31, 0xfd
/* 813BE440 | 38 80 00 3F */	li r4, 0x3f
/* 813BE444 | 38 A0 00 00 */	li r5, 0x0
/* 813BE448 | 4B FA 17 D5 */	bl Create__Q33ipl4nand7wrapperFPCcUcUc
/* 813BE44C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE450 | 40 82 01 10 */	bne .L_813BE560
/* 813BE454 | 38 7F 00 FD */	addi r3, r31, 0xfd
/* 813BE458 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813BE45C | 38 A0 00 02 */	li r5, 0x2
/* 813BE460 | 4B FA 18 31 */	bl Open__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 813BE464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE468 | 41 82 00 28 */	beq .L_813BE490
/* 813BE46C | 7C 64 1B 78 */	mr r4, r3
/* 813BE470 | 38 7F 00 65 */	addi r3, r31, 0x65
/* 813BE474 | 4C C6 31 82 */	crclr cr1eq
/* 813BE478 | 48 17 02 29 */	bl OSReport
/* 813BE47C | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE480 | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE484 | 38 80 00 D5 */	li r4, 0xd5
/* 813BE488 | 4C C6 31 82 */	crclr cr1eq
/* 813BE48C | 48 17 02 A5 */	bl OSPanic
.L_813BE490:
/* 813BE490 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BE494 | 3F 80 00 01 */	lis r28, 0x1
/* 813BE498 | 38 9C F0 A0 */	subi r4, r28, 0xf60
/* 813BE49C | 38 A0 00 20 */	li r5, 0x20
/* 813BE4A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE4A4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BE4A8 | 7D 89 03 A6 */	mtctr r12
/* 813BE4AC | 4E 80 04 21 */	bctrl
/* 813BE4B0 | 7C 7B 1B 78 */	mr r27, r3
/* 813BE4B4 | 38 BC F0 A0 */	subi r5, r28, 0xf60
/* 813BE4B8 | 38 80 00 55 */	li r4, 0x55
/* 813BE4BC | 4B F7 1E 79 */	bl memset
/* 813BE4C0 | 3C 60 57 49 */	lis r3, 0x5749
/* 813BE4C4 | 38 00 00 00 */	li r0, 0x0
/* 813BE4C8 | 38 63 42 4E */	addi r3, r3, 0x424e
/* 813BE4CC | 7F 64 DB 78 */	mr r4, r27
/* 813BE4D0 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 813BE4D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BE4D8 | 38 BC F0 A0 */	subi r5, r28, 0xf60
/* 813BE4DC | 90 1B 00 04 */	stw r0, 0x4(r27)
/* 813BE4E0 | 4B FA 18 FD */	bl Write__Q33ipl4nand7wrapperFP12NANDFileInfoPCvUl
/* 813BE4E4 | 28 03 F0 A0 */	cmplwi r3, 0xf0a0
/* 813BE4E8 | 41 82 00 28 */	beq .L_813BE510
/* 813BE4EC | 7C 64 1B 78 */	mr r4, r3
/* 813BE4F0 | 38 7F 00 9C */	addi r3, r31, 0x9c
/* 813BE4F4 | 4C C6 31 82 */	crclr cr1eq
/* 813BE4F8 | 48 17 01 A9 */	bl OSReport
/* 813BE4FC | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE500 | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE504 | 38 80 00 E0 */	li r4, 0xe0
/* 813BE508 | 4C C6 31 82 */	crclr cr1eq
/* 813BE50C | 48 17 02 25 */	bl OSPanic
.L_813BE510:
/* 813BE510 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BE514 | 4B FA 17 F1 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 813BE518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE51C | 41 82 00 28 */	beq .L_813BE544
/* 813BE520 | 7C 64 1B 78 */	mr r4, r3
/* 813BE524 | 38 7F 00 B3 */	addi r3, r31, 0xb3
/* 813BE528 | 4C C6 31 82 */	crclr cr1eq
/* 813BE52C | 48 17 01 75 */	bl OSReport
/* 813BE530 | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE534 | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE538 | 38 80 00 E6 */	li r4, 0xe6
/* 813BE53C | 4C C6 31 82 */	crclr cr1eq
/* 813BE540 | 48 17 01 F1 */	bl OSPanic
.L_813BE544:
/* 813BE544 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BE548 | 7F 64 DB 78 */	mr r4, r27
/* 813BE54C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE550 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BE554 | 7D 89 03 A6 */	mtctr r12
/* 813BE558 | 4E 80 04 21 */	bctrl
/* 813BE55C | 48 00 00 40 */	b .L_813BE59C
.L_813BE560:
/* 813BE560 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 813BE564 | 40 82 00 14 */	bne .L_813BE578
/* 813BE568 | 38 7F 01 25 */	addi r3, r31, 0x125
/* 813BE56C | 4C C6 31 82 */	crclr cr1eq
/* 813BE570 | 48 17 01 31 */	bl OSReport
/* 813BE574 | 48 00 00 28 */	b .L_813BE59C
.L_813BE578:
/* 813BE578 | 7C 64 1B 78 */	mr r4, r3
/* 813BE57C | 38 7F 00 E5 */	addi r3, r31, 0xe5
/* 813BE580 | 4C C6 31 82 */	crclr cr1eq
/* 813BE584 | 48 17 01 1D */	bl OSReport
/* 813BE588 | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE58C | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE590 | 38 80 00 EE */	li r4, 0xee
/* 813BE594 | 4C C6 31 82 */	crclr cr1eq
/* 813BE598 | 48 17 01 99 */	bl OSPanic
.L_813BE59C:
/* 813BE59C | 38 7F 01 3F */	addi r3, r31, 0x13f
/* 813BE5A0 | 38 80 00 3F */	li r4, 0x3f
/* 813BE5A4 | 38 A0 00 00 */	li r5, 0x0
/* 813BE5A8 | 4B FA 1A 29 */	bl CreateDir__Q33ipl4nand7wrapperFPCcUcUc
/* 813BE5AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE5B0 | 41 82 00 30 */	beq .L_813BE5E0
/* 813BE5B4 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 813BE5B8 | 41 82 00 28 */	beq .L_813BE5E0
/* 813BE5BC | 7C 64 1B 78 */	mr r4, r3
/* 813BE5C0 | 38 7F 01 64 */	addi r3, r31, 0x164
/* 813BE5C4 | 4C C6 31 82 */	crclr cr1eq
/* 813BE5C8 | 48 17 00 D9 */	bl OSReport
/* 813BE5CC | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE5D0 | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE5D4 | 38 80 00 F8 */	li r4, 0xf8
/* 813BE5D8 | 4C C6 31 82 */	crclr cr1eq
/* 813BE5DC | 48 17 01 55 */	bl OSPanic
.L_813BE5E0:
/* 813BE5E0 | 38 7F 01 7F */	addi r3, r31, 0x17f
/* 813BE5E4 | 38 80 00 3F */	li r4, 0x3f
/* 813BE5E8 | 38 A0 00 00 */	li r5, 0x0
/* 813BE5EC | 4B FA 16 31 */	bl Create__Q33ipl4nand7wrapperFPCcUcUc
/* 813BE5F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE5F4 | 41 82 00 30 */	beq .L_813BE624
/* 813BE5F8 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 813BE5FC | 41 82 00 28 */	beq .L_813BE624
/* 813BE600 | 7C 64 1B 78 */	mr r4, r3
/* 813BE604 | 38 7F 00 E5 */	addi r3, r31, 0xe5
/* 813BE608 | 4C C6 31 82 */	crclr cr1eq
/* 813BE60C | 48 17 00 95 */	bl OSReport
/* 813BE610 | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813BE614 | 38 BF 00 8F */	addi r5, r31, 0x8f
/* 813BE618 | 38 80 00 FE */	li r4, 0xfe
/* 813BE61C | 4C C6 31 82 */	crclr cr1eq
/* 813BE620 | 48 17 01 11 */	bl OSPanic
.L_813BE624:
/* 813BE624 | 38 80 00 02 */	li r4, 0x2
/* 813BE628 | 38 60 00 01 */	li r3, 0x1
/* 813BE62C | 48 20 08 8D */	bl fn_815BEEB8
/* 813BE630 | 48 1B 5E 75 */	bl fn_815744A4
/* 813BE634 | 48 1B 5D 3D */	bl ISFS_OpenLib
/* 813BE638 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813BE63C | 3C 80 00 04 */	lis r4, 0x4
/* 813BE640 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813BE644 | 38 A0 00 40 */	li r5, 0x40
/* 813BE648 | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 813BE64C | 38 84 EA 60 */	subi r4, r4, 0x15a0
/* 813BE650 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE654 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BE658 | 7D 89 03 A6 */	mtctr r12
/* 813BE65C | 4E 80 04 21 */	bctrl
/* 813BE660 | 90 7D 00 68 */	stw r3, 0x68(r29)
/* 813BE664 | 3C 60 00 02 */	lis r3, 0x2
/* 813BE668 | 38 63 96 20 */	subi r3, r3, 0x69e0
/* 813BE66C | 38 80 00 60 */	li r4, 0x60
/* 813BE670 | 38 A0 00 20 */	li r5, 0x20
/* 813BE674 | 48 19 CF 7D */	bl fn_8155B5F0
/* 813BE678 | 7C 64 1B 78 */	mr r4, r3
/* 813BE67C | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 813BE680 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813BE684 | 38 A0 00 20 */	li r5, 0x20
/* 813BE688 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE68C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BE690 | 7D 89 03 A6 */	mtctr r12
/* 813BE694 | 4E 80 04 21 */	bctrl
/* 813BE698 | 38 00 00 03 */	li r0, 0x3
/* 813BE69C | 90 7D 00 6C */	stw r3, 0x6c(r29)
/* 813BE6A0 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE6A4 | 48 00 02 98 */	b .L_813BE93C
.L_813BE6A8:
/* 813BE6A8 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE6AC | 38 C0 00 18 */	li r6, 0x18
/* 813BE6B0 | 80 9D 00 68 */	lwz r4, 0x68(r29)
/* 813BE6B4 | 80 BD 00 6C */	lwz r5, 0x6c(r29)
/* 813BE6B8 | 48 00 03 CD */	bl start_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFPvPvi
/* 813BE6BC | 38 00 00 04 */	li r0, 0x4
/* 813BE6C0 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE6C4 | 48 00 02 78 */	b .L_813BE93C
.L_813BE6C8:
/* 813BE6C8 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE6CC | 48 00 04 99 */	bl process__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BE6D0 | 2C 03 00 51 */	cmpwi r3, 0x51
/* 813BE6D4 | 40 82 00 10 */	bne .L_813BE6E4
/* 813BE6D8 | 38 00 00 0C */	li r0, 0xc
/* 813BE6DC | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE6E0 | 48 00 02 5C */	b .L_813BE93C
.L_813BE6E4:
/* 813BE6E4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE6E8 | 48 00 04 7D */	bl process__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BE6EC | 2C 03 00 52 */	cmpwi r3, 0x52
/* 813BE6F0 | 40 82 02 4C */	bne .L_813BE93C
/* 813BE6F4 | 38 00 00 05 */	li r0, 0x5
/* 813BE6F8 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE6FC | 48 00 02 40 */	b .L_813BE93C
.L_813BE700:
/* 813BE700 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE704 | 38 C0 00 18 */	li r6, 0x18
/* 813BE708 | 80 9D 00 68 */	lwz r4, 0x68(r29)
/* 813BE70C | 80 BD 00 6C */	lwz r5, 0x6c(r29)
/* 813BE710 | 48 00 04 09 */	bl start_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFPvPvi
/* 813BE714 | 38 00 00 06 */	li r0, 0x6
/* 813BE718 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE71C | 48 00 02 20 */	b .L_813BE93C
.L_813BE720:
/* 813BE720 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE724 | 48 00 04 41 */	bl process__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BE728 | 2C 03 00 51 */	cmpwi r3, 0x51
/* 813BE72C | 40 82 00 10 */	bne .L_813BE73C
/* 813BE730 | 38 00 00 0C */	li r0, 0xc
/* 813BE734 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE738 | 48 00 02 04 */	b .L_813BE93C
.L_813BE73C:
/* 813BE73C | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE740 | 48 00 04 25 */	bl process__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BE744 | 2C 03 00 52 */	cmpwi r3, 0x52
/* 813BE748 | 40 82 01 F4 */	bne .L_813BE93C
/* 813BE74C | 38 00 00 0B */	li r0, 0xb
/* 813BE750 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE754 | 48 00 01 E8 */	b .L_813BE93C
.L_813BE758:
/* 813BE758 | 4B F7 55 31 */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 813BE75C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BE760 | 3C 80 00 04 */	lis r4, 0x4
/* 813BE764 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BE768 | 38 A0 00 40 */	li r5, 0x40
/* 813BE76C | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813BE770 | 38 84 EA 60 */	subi r4, r4, 0x15a0
/* 813BE774 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE778 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BE77C | 7D 89 03 A6 */	mtctr r12
/* 813BE780 | 4E 80 04 21 */	bctrl
/* 813BE784 | 38 00 00 08 */	li r0, 0x8
/* 813BE788 | 90 7D 00 68 */	stw r3, 0x68(r29)
/* 813BE78C | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE790 | 48 00 01 AC */	b .L_813BE93C
.L_813BE794:
/* 813BE794 | 4B F7 56 39 */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 813BE798 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE79C | 41 82 00 8C */	beq .L_813BE828
/* 813BE7A0 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813BE7A4 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813BE7A8 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 813BE7AC | 4B F7 EC B5 */	bl closeContentsAll__Q33ipl4nand7ManagerFv
/* 813BE7B0 | 88 1C 02 BC */	lbz r0, 0x2bc(r28)
/* 813BE7B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BE7B8 | 41 82 00 0C */	beq .L_813BE7C4
/* 813BE7BC | 38 00 00 00 */	li r0, 0x0
/* 813BE7C0 | 48 00 00 08 */	b .L_813BE7C8
.L_813BE7C4:
/* 813BE7C4 | 80 1C 00 7C */	lwz r0, 0x7c(r28)
.L_813BE7C8:
/* 813BE7C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BE7CC | 41 82 00 28 */	beq .L_813BE7F4
/* 813BE7D0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BE7D4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BE7D8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813BE7DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BE7E0 | 41 82 00 0C */	beq .L_813BE7EC
/* 813BE7E4 | 38 60 00 00 */	li r3, 0x0
/* 813BE7E8 | 48 00 00 08 */	b .L_813BE7F0
.L_813BE7EC:
/* 813BE7EC | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_813BE7F0:
/* 813BE7F0 | 4B F8 09 3D */	bl closeDatabase__Q33ipl3cdb7ManagerFv
.L_813BE7F4:
/* 813BE7F4 | 48 0C 78 AD */	bl CDBUninit
/* 813BE7F8 | 7C 64 1B 78 */	mr r4, r3
/* 813BE7FC | 38 7F 01 AE */	addi r3, r31, 0x1ae
/* 813BE800 | 4C C6 31 82 */	crclr cr1eq
/* 813BE804 | 48 16 FE 9D */	bl OSReport
/* 813BE808 | 48 17 8C C5 */	bl fn_815374CC
/* 813BE80C | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE810 | 38 A0 00 13 */	li r5, 0x13
/* 813BE814 | 80 9D 00 68 */	lwz r4, 0x68(r29)
/* 813BE818 | 48 00 02 B5 */	bl start_initialize_nand__Q33ipl8kitayama21NandSDWorker_AutoTestFPvi
/* 813BE81C | 38 00 00 09 */	li r0, 0x9
/* 813BE820 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE824 | 48 00 01 18 */	b .L_813BE93C
.L_813BE828:
/* 813BE828 | 38 7F 01 BA */	addi r3, r31, 0x1ba
/* 813BE82C | 4C C6 31 82 */	crclr cr1eq
/* 813BE830 | 48 16 FE 71 */	bl OSReport
/* 813BE834 | 48 00 01 08 */	b .L_813BE93C
.L_813BE838:
/* 813BE838 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE83C | 48 00 03 29 */	bl process__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BE840 | 2C 03 00 51 */	cmpwi r3, 0x51
/* 813BE844 | 41 82 00 14 */	beq .L_813BE858
/* 813BE848 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE84C | 48 00 03 19 */	bl process__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BE850 | 2C 03 00 52 */	cmpwi r3, 0x52
/* 813BE854 | 40 82 00 E8 */	bne .L_813BE93C
.L_813BE858:
/* 813BE858 | 38 00 00 0A */	li r0, 0xa
/* 813BE85C | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE860 | 48 00 00 DC */	b .L_813BE93C
.L_813BE864:
/* 813BE864 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813BE868 | 48 00 03 8D */	bl get_result__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BE86C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BE870 | 7C 7B 1B 78 */	mr r27, r3
/* 813BE874 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BE878 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BE87C | 4B F7 EB E1 */	bl openContentsAll__Q33ipl4nand7ManagerFv
/* 813BE880 | 80 1D 00 5C */	lwz r0, 0x5c(r29)
/* 813BE884 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BE888 | 41 82 00 2C */	beq .L_813BE8B4
/* 813BE88C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813BE890 | 38 80 00 12 */	li r4, 0x12
/* 813BE894 | 48 04 C8 A5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813BE898 | 7F 65 DB 78 */	mr r5, r27
/* 813BE89C | 38 80 00 01 */	li r4, 0x1
/* 813BE8A0 | 48 03 A7 C1 */	bl setInitializeResult__Q33ipl5scene7SettingFbi
/* 813BE8A4 | 38 00 00 0B */	li r0, 0xb
/* 813BE8A8 | 3B C0 00 01 */	li r30, 0x1
/* 813BE8AC | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE8B0 | 48 00 00 8C */	b .L_813BE93C
.L_813BE8B4:
/* 813BE8B4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813BE8B8 | 40 82 00 10 */	bne .L_813BE8C8
/* 813BE8BC | 38 00 00 0B */	li r0, 0xb
/* 813BE8C0 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE8C4 | 48 00 00 78 */	b .L_813BE93C
.L_813BE8C8:
/* 813BE8C8 | 38 00 00 0C */	li r0, 0xc
/* 813BE8CC | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 813BE8D0 | 48 00 00 6C */	b .L_813BE93C
.L_813BE8D4:
/* 813BE8D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE8D8 | 38 80 02 00 */	li r4, 0x200
/* 813BE8DC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BE8E0 | 7D 89 03 A6 */	mtctr r12
/* 813BE8E4 | 4E 80 04 21 */	bctrl
/* 813BE8E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BE8EC | 41 82 00 34 */	beq .L_813BE920
/* 813BE8F0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BE8F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BE8F8 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813BE8FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE900 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BE904 | 7D 89 03 A6 */	mtctr r12
/* 813BE908 | 4E 80 04 21 */	bctrl
/* 813BE90C | 7F A3 EB 78 */	mr r3, r29
/* 813BE910 | 38 80 00 04 */	li r4, 0x4
/* 813BE914 | 38 A0 00 00 */	li r5, 0x0
/* 813BE918 | 48 04 B6 7D */	bl reserveAllSceneDestruction__Q33ipl5scene4BaseFiPv
/* 813BE91C | 3B C0 00 01 */	li r30, 0x1
.L_813BE920:
/* 813BE920 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BE924 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BE928 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813BE92C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE930 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BE934 | 7D 89 03 A6 */	mtctr r12
/* 813BE938 | 4E 80 04 21 */	bctrl
.L_813BE93C:
/* 813BE93C | 39 61 01 40 */	addi r11, r1, 0x140
/* 813BE940 | 7F C3 F3 78 */	mr r3, r30
/* 813BE944 | 48 23 AB C9 */	bl _restgpr_27
/* 813BE948 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 813BE94C | 7C 08 03 A6 */	mtlr r0
/* 813BE950 | 38 21 01 40 */	addi r1, r1, 0x140
/* 813BE954 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene12KitayamaTestFv

# .text:0x948 | 0x813BE958 | size: 0x54
# ipl::scene::KitayamaTest::calcFadeout()
.fn calcFadeout__Q33ipl5scene12KitayamaTestFv, global
/* 813BE958 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BE95C | 7C 08 02 A6 */	mflr r0
/* 813BE960 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BE964 | 80 03 00 5C */	lwz r0, 0x5c(r3)
/* 813BE968 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813BE96C | 40 82 00 0C */	bne .L_813BE978
/* 813BE970 | 38 60 00 01 */	li r3, 0x1
/* 813BE974 | 48 00 00 28 */	b .L_813BE99C
.L_813BE978:
/* 813BE978 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BE97C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BE980 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813BE984 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BE988 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813BE98C | 7D 89 03 A6 */	mtctr r12
/* 813BE990 | 4E 80 04 21 */	bctrl
/* 813BE994 | 7C 60 00 34 */	cntlzw r0, r3
/* 813BE998 | 54 03 D9 7E */	srwi r3, r0, 5
.L_813BE99C:
/* 813BE99C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BE9A0 | 7C 08 03 A6 */	mtlr r0
/* 813BE9A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BE9A8 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene12KitayamaTestFv

# .text:0x99C | 0x813BE9AC | size: 0x24
# ipl::scene::KitayamaTest::draw()
.fn draw__Q33ipl5scene12KitayamaTestFv, global
/* 813BE9AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BE9B0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BE9B4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813BE9B8 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813BE9BC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BE9C0 | 4C 82 00 20 */	bnelr
/* 813BE9C4 | 38 60 00 00 */	li r3, 0x0
/* 813BE9C8 | 4B FA 40 A4 */	b setOrtho__Q33ipl7utility8GraphicsFUl
/* 813BE9CC | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene12KitayamaTestFv

# .text:0x9C0 | 0x813BE9D0 | size: 0x8
# ipl::scene::FaderSceneBase::calcFadein()
.fn calcFadein__Q33ipl5scene14FaderSceneBaseFv, global
/* 813BE9D0 | 38 60 00 01 */	li r3, 0x1
/* 813BE9D4 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene14FaderSceneBaseFv

# .text:0x9C8 | 0x813BE9D8 | size: 0x8
# ipl::scene::KitayamaTest::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene12KitayamaTestCFv, global
/* 813BE9D8 | 38 60 00 00 */	li r3, 0x0
/* 813BE9DC | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene12KitayamaTestCFv

# .text:0x9D0 | 0x813BE9E0 | size: 0x8
.fn "@20@__dt__Q33ipl5scene12KitayamaTestFv", global
/* 813BE9E0 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813BE9E4 | 4B FF F6 98 */	b __dt__Q33ipl5scene12KitayamaTestFv
.endfn "@20@__dt__Q33ipl5scene12KitayamaTestFv"

# 0x8164FB08..0x8164FD80 | size: 0x278
.data
.balign 8

# .data:0x0 | 0x8164FB08 | size: 0x1D
.obj lbl_8164FB08, global
	.string "Kitayamatest scene created.\n"
.endobj lbl_8164FB08

# .data:0x1D | 0x8164FB25 | size: 0x1BB
.obj lbl_8164FB25, global
	.4byte 0x4B697461
	.4byte 0x79616D61
	.4byte 0x74657374
	.4byte 0x20736365
	.4byte 0x6E652064
	.4byte 0x65737472
	.4byte 0x6F796564
	.4byte 0x2E0A002F
	.4byte 0x7469746C
	.4byte 0x652F3030
	.4byte 0x30313030
	.4byte 0x30302F33
	.4byte 0x30333033
	.4byte 0x3033302F
	.4byte 0x64617461
	.4byte 0x2F62616E
	.4byte 0x6E65722E
	.4byte 0x62696E00
	.4byte 0x204E414E
	.4byte 0x444F7065
	.4byte 0x6E206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A006970
	.4byte 0x6C4B6974
	.4byte 0x6179616D
	.4byte 0x61546573
	.4byte 0x742E6370
	.4byte 0x70005465
	.4byte 0x726D696E
	.4byte 0x61746564
	.4byte 0x2E0A0020
	.4byte 0x4E414E44
	.4byte 0x57726974
	.4byte 0x65206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A00204E
	.4byte 0x414E4443
	.4byte 0x6C6F7365
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x0062616E
	.4byte 0x6E65722E
	.4byte 0x62696E20
	.4byte 0x616C7265
	.4byte 0x61647920
	.4byte 0x65786973
	.4byte 0x742E0A00
	.4byte 0x204E414E
	.4byte 0x44437265
	.4byte 0x61746520
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25640A00
	.4byte 0x2F746974
	.4byte 0x6C652F30
	.4byte 0x30303130
	.4byte 0x3030302F
	.4byte 0x33303330
	.4byte 0x33303330
	.4byte 0x2F646174
	.4byte 0x612F7465
	.4byte 0x7374312E
	.4byte 0x62696E00
	.4byte 0x74657374
	.4byte 0x312E6269
	.4byte 0x6E20616C
	.4byte 0x72656164
	.4byte 0x79206578
	.4byte 0x6973742E
	.4byte 0x0A002F74
	.4byte 0x69746C65
	.4byte 0x2F303030
	.4byte 0x31303030
	.4byte 0x302F3330
	.4byte 0x33303330
	.4byte 0x33302F64
	.4byte 0x6174612F
	.4byte 0x6E6F636F
	.4byte 0x70790020
	.4byte 0x4E414E44
	.4byte 0x43726561
	.4byte 0x74654469
	.4byte 0x72206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A002F74
	.4byte 0x69746C65
	.4byte 0x2F303030
	.4byte 0x31303030
	.4byte 0x302F3330
	.4byte 0x33303330
	.4byte 0x33302F64
	.4byte 0x6174612F
	.4byte 0x6E6F636F
	.4byte 0x70792F74
	.4byte 0x65737431
	.4byte 0x2E747874
	.4byte 0x00434442
	.4byte 0x4552523A
	.4byte 0x2025640A
	.4byte 0x00576169
	.4byte 0x7420666F
	.4byte 0x72207374
	.4byte 0x6F702073
	.4byte 0x63686564
	.4byte 0x756C652E
	.4byte 0x2E2E0A00
	.byte 0x00, 0x00, 0x00
.endobj lbl_8164FB25

# .data:0x1D8 | 0x8164FCE0 | size: 0x34
.obj jumptable_8164FCE0, local
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE93C
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE268
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE2BC
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE6A8
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE6C8
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE700
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE720
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE758
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE794
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE838
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE864
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE8D4
	.rel calcNormal__Q33ipl5scene12KitayamaTestFv, .L_813BE8D4
.endobj jumptable_8164FCE0

# .data:0x20C | 0x8164FD14 | size: 0x6C
# ipl::scene::KitayamaTest::__vtable
.obj __vt__Q33ipl5scene12KitayamaTest, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene12KitayamaTestFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene12KitayamaTestFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene12KitayamaTestCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene12KitayamaTestFv
	.4byte create__Q33ipl5scene12KitayamaTestFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene12KitayamaTestFv
	.4byte destroy__Q33ipl5scene12KitayamaTestFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcCommon__Q33ipl5scene12KitayamaTestFv
	.4byte calcFadein__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcNormal__Q33ipl5scene12KitayamaTestFv
	.4byte calcFadeout__Q33ipl5scene12KitayamaTestFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene12KitayamaTest
