.include "macros.inc"
.file "iplNakamuraTest.cpp"

# 0x813D7F90..0x813D8D9C | size: 0xE0C
.text
.balign 4

# .text:0x0 | 0x813D7F90 | size: 0xA8
# ipl::scene::NakamuraTest::NakamuraTest(EGG::Heap*)
.fn __ct__Q33ipl5scene12NakamuraTestFPQ23EGG4Heap, global
/* 813D7F90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D7F94 | 7C 08 02 A6 */	mflr r0
/* 813D7F98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D7F9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D7FA0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D7FA4 | 7C 7E 1B 78 */	mr r30, r3
/* 813D7FA8 | 48 03 32 61 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 813D7FAC | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene12NakamuraTest@ha
/* 813D7FB0 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813D7FB4 | 38 84 3B AC */	addi r4, r4, __vt__Q33ipl5scene12NakamuraTest@l
/* 813D7FB8 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 813D7FBC | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 813D7FC0 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813D7FC4 | 48 00 0F 7D */	bl __ct__Q33ipl5scene8NetSetupFv
/* 813D7FC8 | 38 00 00 00 */	li r0, 0x0
/* 813D7FCC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D7FD0 | 90 1E 28 18 */	stw r0, 0x2818(r30)
/* 813D7FD4 | 3F E0 00 2A */	lis r31, 0x2a
/* 813D7FD8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D7FDC | 38 A0 00 04 */	li r5, 0x4
/* 813D7FE0 | 90 1E 28 1C */	stw r0, 0x281c(r30)
/* 813D7FE4 | 38 9F 99 99 */	subi r4, r31, 0x6667
/* 813D7FE8 | 90 1E 2B 88 */	stw r0, 0x2b88(r30)
/* 813D7FEC | 90 1E 2B 58 */	stw r0, 0x2b58(r30)
/* 813D7FF0 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813D7FF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D7FF8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813D7FFC | 7D 89 03 A6 */	mtctr r12
/* 813D8000 | 4E 80 04 21 */	bctrl
/* 813D8004 | 90 7E 28 14 */	stw r3, 0x2814(r30)
/* 813D8008 | 38 9F 99 99 */	subi r4, r31, 0x6667
/* 813D800C | 38 A0 00 02 */	li r5, 0x2
/* 813D8010 | 48 21 F5 CD */	bl fn_815F75DC
/* 813D8014 | 90 7E 28 10 */	stw r3, 0x2810(r30)
/* 813D8018 | 90 6D AB 90 */	stw r3, lbl_81698BD0@sda21(r0)
/* 813D801C | 7F C3 F3 78 */	mr r3, r30
/* 813D8020 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D8024 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D8028 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D802C | 7C 08 03 A6 */	mtlr r0
/* 813D8030 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D8034 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12NakamuraTestFPQ23EGG4Heap

# .text:0xA8 | 0x813D8038 | size: 0xB8
# ipl::scene::NakamuraTest::~NakamuraTest()
.fn __dt__Q33ipl5scene12NakamuraTestFv, global
/* 813D8038 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D803C | 7C 08 02 A6 */	mflr r0
/* 813D8040 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8044 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D8048 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D804C | 7C 9F 23 78 */	mr r31, r4
/* 813D8050 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D8054 | 7C 7E 1B 78 */	mr r30, r3
/* 813D8058 | 41 82 00 7C */	beq .L_813D80D4
/* 813D805C | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene12NakamuraTest@ha
/* 813D8060 | 38 84 3B AC */	addi r4, r4, __vt__Q33ipl5scene12NakamuraTest@l
/* 813D8064 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 813D8068 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813D806C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813D8070 | 80 63 28 10 */	lwz r3, 0x2810(r3)
/* 813D8074 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8078 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813D807C | 7D 89 03 A6 */	mtctr r12
/* 813D8080 | 4E 80 04 21 */	bctrl
/* 813D8084 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D8088 | 80 9E 28 14 */	lwz r4, 0x2814(r30)
/* 813D808C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D8090 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813D8094 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8098 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D809C | 7D 89 03 A6 */	mtctr r12
/* 813D80A0 | 4E 80 04 21 */	bctrl
/* 813D80A4 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813D80A8 | 38 80 FF FF */	li r4, -0x1
/* 813D80AC | 48 00 0F 15 */	bl __dt__Q33ipl5scene8NetSetupFv
/* 813D80B0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813D80B4 | 41 82 00 10 */	beq .L_813D80C4
/* 813D80B8 | 7F C3 F3 78 */	mr r3, r30
/* 813D80BC | 38 80 00 00 */	li r4, 0x0
/* 813D80C0 | 48 03 1B A5 */	bl __dt__Q33ipl5scene4BaseFv
.L_813D80C4:
/* 813D80C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813D80C8 | 40 81 00 0C */	ble .L_813D80D4
/* 813D80CC | 7F C3 F3 78 */	mr r3, r30
/* 813D80D0 | 48 22 00 15 */	bl __dl__FPv
.L_813D80D4:
/* 813D80D4 | 7F C3 F3 78 */	mr r3, r30
/* 813D80D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D80DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D80E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D80E4 | 7C 08 03 A6 */	mtlr r0
/* 813D80E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D80EC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12NakamuraTestFv

# .text:0x160 | 0x813D80F0 | size: 0x4
# ipl::scene::NakamuraTest::prepare()
.fn prepare__Q33ipl5scene12NakamuraTestFv, global
/* 813D80F0 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene12NakamuraTestFv

# .text:0x164 | 0x813D80F4 | size: 0x70
# ipl::scene::NakamuraTest::create()
.fn create__Q33ipl5scene12NakamuraTestFv, global
/* 813D80F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D80F8 | 7C 08 02 A6 */	mflr r0
/* 813D80FC | 3C 80 81 65 */	lis r4, lbl_816538B0@ha
/* 813D8100 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D8104 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D8108 | 7C 7F 1B 78 */	mr r31, r3
/* 813D810C | 38 64 38 B0 */	addi r3, r4, lbl_816538B0@l
/* 813D8110 | 4C C6 31 82 */	crclr cr1eq
/* 813D8114 | 48 15 65 8D */	bl OSReport
/* 813D8118 | 38 60 00 00 */	li r3, 0x0
/* 813D811C | 38 00 00 01 */	li r0, 0x1
/* 813D8120 | 90 7F 28 18 */	stw r3, 0x2818(r31)
/* 813D8124 | 90 7F 28 1C */	stw r3, 0x281c(r31)
/* 813D8128 | 90 7F 28 20 */	stw r3, 0x2820(r31)
/* 813D812C | 90 1F 2B 58 */	stw r0, 0x2b58(r31)
/* 813D8130 | 90 7F 2B 54 */	stw r3, 0x2b54(r31)
/* 813D8134 | 90 7F 2B 5C */	stw r3, 0x2b5c(r31)
/* 813D8138 | 98 7F 2B 60 */	stb r3, 0x2b60(r31)
/* 813D813C | 90 7F 2B 6C */	stw r3, 0x2b6c(r31)
/* 813D8140 | 90 7F 2B 68 */	stw r3, 0x2b68(r31)
/* 813D8144 | 90 7F 2B 74 */	stw r3, 0x2b74(r31)
/* 813D8148 | 90 7F 2B 70 */	stw r3, 0x2b70(r31)
/* 813D814C | 90 7F 2B 7C */	stw r3, 0x2b7c(r31)
/* 813D8150 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D8154 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D8158 | 7C 08 03 A6 */	mtlr r0
/* 813D815C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D8160 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene12NakamuraTestFv

# .text:0x1D4 | 0x813D8164 | size: 0x10
# ipl::scene::NakamuraTest::destroy()
.fn destroy__Q33ipl5scene12NakamuraTestFv, global
/* 813D8164 | 3C 60 81 65 */	lis r3, lbl_816538CD@ha
/* 813D8168 | 38 63 38 CD */	addi r3, r3, lbl_816538CD@l
/* 813D816C | 4C C6 31 82 */	crclr cr1eq
/* 813D8170 | 48 15 65 30 */	b OSReport
.endfn destroy__Q33ipl5scene12NakamuraTestFv

# .text:0x1E4 | 0x813D8174 | size: 0x4
# ipl::scene::NakamuraTest::calcCommon()
.fn calcCommon__Q33ipl5scene12NakamuraTestFv, global
/* 813D8174 | 4E 80 00 20 */	blr
.endfn calcCommon__Q33ipl5scene12NakamuraTestFv

# .text:0x1E8 | 0x813D8178 | size: 0xB24
# ipl::scene::NakamuraTest::calcNormal()
.fn calcNormal__Q33ipl5scene12NakamuraTestFv, global
/* 813D8178 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813D817C | 7C 08 02 A6 */	mflr r0
/* 813D8180 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813D8184 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813D8188 | 48 22 13 3D */	bl _savegpr_28
/* 813D818C | 3F E0 81 65 */	lis r31, lbl_816538B0@ha
/* 813D8190 | 7C 7D 1B 78 */	mr r29, r3
/* 813D8194 | 3B FF 38 B0 */	addi r31, r31, lbl_816538B0@l
/* 813D8198 | 3B C0 00 00 */	li r30, 0x0
/* 813D819C | 4B F5 D8 0D */	bl getMasterController__Q23ipl6SystemFv
/* 813D81A0 | 80 1D 2B 58 */	lwz r0, 0x2b58(r29)
/* 813D81A4 | 28 00 00 11 */	cmplwi r0, 0x11
/* 813D81A8 | 41 81 0A D8 */	bgt .L_813D8C80
/* 813D81AC | 3C 60 81 65 */	lis r3, jumptable_81653B64@ha
/* 813D81B0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813D81B4 | 38 63 3B 64 */	addi r3, r3, jumptable_81653B64@l
/* 813D81B8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D81BC | 7C 69 03 A6 */	mtctr r3
/* 813D81C0 | 4E 80 04 20 */	bctr
.L_813D81C4:
/* 813D81C4 | 4B F5 BC 09 */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 813D81C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D81CC | 40 82 00 18 */	bne .L_813D81E4
/* 813D81D0 | 4B F5 BA B9 */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 813D81D4 | 38 7F 00 3C */	addi r3, r31, 0x3c
/* 813D81D8 | 4C C6 31 82 */	crclr cr1eq
/* 813D81DC | 48 15 64 C5 */	bl OSReport
/* 813D81E0 | 48 00 0A A0 */	b .L_813D8C80
.L_813D81E4:
/* 813D81E4 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D81E8 | 3C 80 00 01 */	lis r4, 0x1
/* 813D81EC | 38 A0 00 04 */	li r5, 0x4
/* 813D81F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D81F4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813D81F8 | 7D 89 03 A6 */	mtctr r12
/* 813D81FC | 4E 80 04 21 */	bctrl
/* 813D8200 | 3B 80 00 00 */	li r28, 0x0
/* 813D8204 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813D8208 | 90 7D 28 18 */	stw r3, 0x2818(r29)
/* 813D820C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813D8210 | 38 80 00 12 */	li r4, 0x12
/* 813D8214 | 93 9D 2B 54 */	stw r28, 0x2b54(r29)
/* 813D8218 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813D821C | 48 03 2F 1D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813D8220 | 48 02 02 99 */	bl getProfileID__Q33ipl5scene7SettingFv
/* 813D8224 | 7C 60 1B 78 */	mr r0, r3
/* 813D8228 | 80 9D 28 18 */	lwz r4, 0x2818(r29)
/* 813D822C | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D8230 | 54 05 06 3E */	clrlwi r5, r0, 24
/* 813D8234 | 48 00 0D F1 */	bl setup__Q33ipl5scene8NetSetupFPvUc
/* 813D8238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D823C | 41 82 00 1C */	beq .L_813D8258
/* 813D8240 | 38 00 00 02 */	li r0, 0x2
/* 813D8244 | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813D8248 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D824C | 4C C6 31 82 */	crclr cr1eq
/* 813D8250 | 48 15 64 51 */	bl OSReport
/* 813D8254 | 48 00 0A 2C */	b .L_813D8C80
.L_813D8258:
/* 813D8258 | 38 00 00 11 */	li r0, 0x11
/* 813D825C | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D8260 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8264 | 48 00 0D B1 */	bl getlasterror__Q33ipl5scene8NetSetupFv
/* 813D8268 | 80 9D 28 18 */	lwz r4, 0x2818(r29)
/* 813D826C | 90 7D 2B 54 */	stw r3, 0x2b54(r29)
/* 813D8270 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D8274 | 41 82 00 1C */	beq .L_813D8290
/* 813D8278 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D827C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8280 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D8284 | 7D 89 03 A6 */	mtctr r12
/* 813D8288 | 4E 80 04 21 */	bctrl
/* 813D828C | 93 9D 28 18 */	stw r28, 0x2818(r29)
.L_813D8290:
/* 813D8290 | 38 7F 00 68 */	addi r3, r31, 0x68
/* 813D8294 | 4C C6 31 82 */	crclr cr1eq
/* 813D8298 | 48 15 64 09 */	bl OSReport
/* 813D829C | 48 00 09 E4 */	b .L_813D8C80
.L_813D82A0:
/* 813D82A0 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D82A4 | 48 00 10 79 */	bl getstate__Q33ipl5scene8NetSetupFv
/* 813D82A8 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813D82AC | 41 82 00 44 */	beq .L_813D82F0
/* 813D82B0 | 40 80 00 10 */	bge .L_813D82C0
/* 813D82B4 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813D82B8 | 40 80 00 14 */	bge .L_813D82CC
/* 813D82BC | 48 00 09 C4 */	b .L_813D8C80
.L_813D82C0:
/* 813D82C0 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813D82C4 | 40 80 09 BC */	bge .L_813D8C80
/* 813D82C8 | 48 00 00 80 */	b .L_813D8348
.L_813D82CC:
/* 813D82CC | 38 00 00 03 */	li r0, 0x3
/* 813D82D0 | 38 7F 00 81 */	addi r3, r31, 0x81
/* 813D82D4 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D82D8 | 4C C6 31 82 */	crclr cr1eq
/* 813D82DC | 48 15 63 C5 */	bl OSReport
/* 813D82E0 | 38 7F 00 95 */	addi r3, r31, 0x95
/* 813D82E4 | 4C C6 31 82 */	crclr cr1eq
/* 813D82E8 | 48 15 63 B9 */	bl OSReport
/* 813D82EC | 48 00 09 94 */	b .L_813D8C80
.L_813D82F0:
/* 813D82F0 | 38 00 00 11 */	li r0, 0x11
/* 813D82F4 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D82F8 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D82FC | 48 00 11 A9 */	bl cleanup__Q33ipl5scene8NetSetupFv
/* 813D8300 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D8304 | 48 00 0D 11 */	bl getlasterror__Q33ipl5scene8NetSetupFv
/* 813D8308 | 80 9D 28 18 */	lwz r4, 0x2818(r29)
/* 813D830C | 90 7D 2B 54 */	stw r3, 0x2b54(r29)
/* 813D8310 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D8314 | 41 82 00 20 */	beq .L_813D8334
/* 813D8318 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D831C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8320 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D8324 | 7D 89 03 A6 */	mtctr r12
/* 813D8328 | 4E 80 04 21 */	bctrl
/* 813D832C | 38 00 00 00 */	li r0, 0x0
/* 813D8330 | 90 1D 28 18 */	stw r0, 0x2818(r29)
.L_813D8334:
/* 813D8334 | 80 9D 2B 54 */	lwz r4, 0x2b54(r29)
/* 813D8338 | 38 7F 00 AF */	addi r3, r31, 0xaf
/* 813D833C | 4C C6 31 82 */	crclr cr1eq
/* 813D8340 | 48 15 63 61 */	bl OSReport
/* 813D8344 | 48 00 09 3C */	b .L_813D8C80
.L_813D8348:
/* 813D8348 | 38 00 00 11 */	li r0, 0x11
/* 813D834C | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D8350 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8354 | 48 00 11 51 */	bl cleanup__Q33ipl5scene8NetSetupFv
/* 813D8358 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D835C | 48 00 0C B9 */	bl getlasterror__Q33ipl5scene8NetSetupFv
/* 813D8360 | 80 9D 28 18 */	lwz r4, 0x2818(r29)
/* 813D8364 | 90 7D 2B 54 */	stw r3, 0x2b54(r29)
/* 813D8368 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D836C | 41 82 00 20 */	beq .L_813D838C
/* 813D8370 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D8374 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8378 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D837C | 7D 89 03 A6 */	mtctr r12
/* 813D8380 | 4E 80 04 21 */	bctrl
/* 813D8384 | 38 00 00 00 */	li r0, 0x0
/* 813D8388 | 90 1D 28 18 */	stw r0, 0x2818(r29)
.L_813D838C:
/* 813D838C | 80 9D 2B 54 */	lwz r4, 0x2b54(r29)
/* 813D8390 | 38 7F 00 AF */	addi r3, r31, 0xaf
/* 813D8394 | 4C C6 31 82 */	crclr cr1eq
/* 813D8398 | 48 15 63 09 */	bl OSReport
/* 813D839C | 48 00 08 E4 */	b .L_813D8C80
.L_813D83A0:
/* 813D83A0 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D83A4 | 3C 80 00 01 */	lis r4, 0x1
/* 813D83A8 | 38 A0 00 04 */	li r5, 0x4
/* 813D83AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D83B0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813D83B4 | 7D 89 03 A6 */	mtctr r12
/* 813D83B8 | 4E 80 04 21 */	bctrl
/* 813D83BC | 90 7D 28 1C */	stw r3, 0x281c(r29)
/* 813D83C0 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D83C4 | 48 00 0C 3D */	bl getproxy__Q33ipl5scene8NetSetupFv
/* 813D83C8 | 7C 64 1B 78 */	mr r4, r3
/* 813D83CC | 80 7D 28 1C */	lwz r3, 0x281c(r29)
/* 813D83D0 | 4B FF C2 C5 */	bl IPLContestInitialize
/* 813D83D4 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D83D8 | 38 80 40 00 */	li r4, 0x4000
/* 813D83DC | 38 A0 00 04 */	li r5, 0x4
/* 813D83E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D83E4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813D83E8 | 7D 89 03 A6 */	mtctr r12
/* 813D83EC | 4E 80 04 21 */	bctrl
/* 813D83F0 | 7C 65 1B 78 */	mr r5, r3
/* 813D83F4 | 90 7D 2B 50 */	stw r3, 0x2b50(r29)
/* 813D83F8 | 3C 80 81 3E */	lis r4, conntestthread__Q33ipl5scene12NakamuraTestFPv@ha
/* 813D83FC | 38 7D 28 38 */	addi r3, r29, 0x2838
/* 813D8400 | 38 C5 40 00 */	addi r6, r5, 0x4000
/* 813D8404 | 38 A0 00 00 */	li r5, 0x0
/* 813D8408 | 38 84 8C C8 */	addi r4, r4, conntestthread__Q33ipl5scene12NakamuraTestFPv@l
/* 813D840C | 38 E0 40 00 */	li r7, 0x4000
/* 813D8410 | 39 00 00 12 */	li r8, 0x12
/* 813D8414 | 39 20 00 01 */	li r9, 0x1
/* 813D8418 | 48 15 C1 31 */	bl OSCreateThread
/* 813D841C | 38 7D 28 38 */	addi r3, r29, 0x2838
/* 813D8420 | 48 15 C8 31 */	bl OSResumeThread
/* 813D8424 | 38 00 00 04 */	li r0, 0x4
/* 813D8428 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D842C | 48 00 08 54 */	b .L_813D8C80
.L_813D8430:
/* 813D8430 | 38 7D 28 38 */	addi r3, r29, 0x2838
/* 813D8434 | 48 15 BB 4D */	bl OSIsThreadTerminated
/* 813D8438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D843C | 41 82 08 44 */	beq .L_813D8C80
/* 813D8440 | 80 9D 2B 50 */	lwz r4, 0x2b50(r29)
/* 813D8444 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D8448 | 41 82 00 20 */	beq .L_813D8468
/* 813D844C | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D8450 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8454 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D8458 | 7D 89 03 A6 */	mtctr r12
/* 813D845C | 4E 80 04 21 */	bctrl
/* 813D8460 | 38 00 00 00 */	li r0, 0x0
/* 813D8464 | 90 1D 2B 50 */	stw r0, 0x2b50(r29)
.L_813D8468:
/* 813D8468 | 38 00 00 05 */	li r0, 0x5
/* 813D846C | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8470 | 4B F5 BA D5 */	bl resetNWC24Regist__Q23ipl6SystemFv
/* 813D8474 | 48 00 08 0C */	b .L_813D8C80
.L_813D8478:
/* 813D8478 | 38 00 00 06 */	li r0, 0x6
/* 813D847C | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8480 | 4B FF C9 CD */	bl IPLContestGetResult
/* 813D8484 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8488 | 40 82 07 F8 */	bne .L_813D8C80
/* 813D848C | 4B F5 BA D1 */	bl processNWC24Regist__Q23ipl6SystemFv
/* 813D8490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8494 | 40 82 07 EC */	bne .L_813D8C80
/* 813D8498 | 38 00 00 05 */	li r0, 0x5
/* 813D849C | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D84A0 | 48 00 07 E0 */	b .L_813D8C80
.L_813D84A4:
/* 813D84A4 | 4B FF C9 A9 */	bl IPLContestGetResult
/* 813D84A8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813D84AC | 90 7D 2B 5C */	stw r3, 0x2b5c(r29)
/* 813D84B0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813D84B4 | 80 04 02 C4 */	lwz r0, 0x2c4(r4)
/* 813D84B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D84BC | 41 82 00 20 */	beq .L_813D84DC
/* 813D84C0 | 38 7F 00 BB */	addi r3, r31, 0xbb
/* 813D84C4 | 4C C6 31 82 */	crclr cr1eq
/* 813D84C8 | 48 15 61 D9 */	bl OSReport
/* 813D84CC | 38 60 00 10 */	li r3, 0x10
/* 813D84D0 | 38 00 00 00 */	li r0, 0x0
/* 813D84D4 | 90 7D 2B 5C */	stw r3, 0x2b5c(r29)
/* 813D84D8 | 98 1D 2B 60 */	stb r0, 0x2b60(r29)
.L_813D84DC:
/* 813D84DC | 80 7D 2B 5C */	lwz r3, 0x2b5c(r29)
/* 813D84E0 | 28 03 FF 00 */	cmplwi r3, 0xff00
/* 813D84E4 | 40 82 00 14 */	bne .L_813D84F8
/* 813D84E8 | 38 7F 00 CD */	addi r3, r31, 0xcd
/* 813D84EC | 4C C6 31 82 */	crclr cr1eq
/* 813D84F0 | 48 15 61 B1 */	bl OSReport
/* 813D84F4 | 48 00 00 50 */	b .L_813D8544
.L_813D84F8:
/* 813D84F8 | 28 03 00 10 */	cmplwi r3, 0x10
/* 813D84FC | 40 82 00 14 */	bne .L_813D8510
/* 813D8500 | 38 7F 00 F4 */	addi r3, r31, 0xf4
/* 813D8504 | 4C C6 31 82 */	crclr cr1eq
/* 813D8508 | 48 15 61 99 */	bl OSReport
/* 813D850C | 48 00 00 38 */	b .L_813D8544
.L_813D8510:
/* 813D8510 | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 813D8514 | 41 82 00 14 */	beq .L_813D8528
/* 813D8518 | 38 7F 01 15 */	addi r3, r31, 0x115
/* 813D851C | 4C C6 31 82 */	crclr cr1eq
/* 813D8520 | 48 15 61 81 */	bl OSReport
/* 813D8524 | 48 00 00 20 */	b .L_813D8544
.L_813D8528:
/* 813D8528 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 813D852C | 38 7F 01 2C */	addi r3, r31, 0x12c
/* 813D8530 | 38 8D 8D 03 */	li r4, lbl_81696D43@sda21
/* 813D8534 | 41 82 00 08 */	beq .L_813D853C
/* 813D8538 | 38 8D 8D 00 */	li r4, lbl_81696D40@sda21
.L_813D853C:
/* 813D853C | 4C C6 31 82 */	crclr cr1eq
/* 813D8540 | 48 15 61 61 */	bl OSReport
.L_813D8544:
/* 813D8544 | 80 1D 2B 5C */	lwz r0, 0x2b5c(r29)
/* 813D8548 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D854C | 41 82 00 38 */	beq .L_813D8584
/* 813D8550 | 28 00 00 10 */	cmplwi r0, 0x10
/* 813D8554 | 40 82 00 1C */	bne .L_813D8570
/* 813D8558 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D855C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D8560 | 80 03 02 C4 */	lwz r0, 0x2c4(r3)
/* 813D8564 | 7C 00 00 D0 */	neg r0, r0
/* 813D8568 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D856C | 48 00 00 54 */	b .L_813D85C0
.L_813D8570:
/* 813D8570 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D8574 | 48 00 0A A9 */	bl getconntype__Q33ipl5scene8NetSetupFv
/* 813D8578 | 4B FF C8 F9 */	bl IPLContestGetErrorCode
/* 813D857C | 90 7D 2B 54 */	stw r3, 0x2b54(r29)
/* 813D8580 | 48 00 00 40 */	b .L_813D85C0
.L_813D8584:
/* 813D8584 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D8588 | 38 80 00 12 */	li r4, 0x12
/* 813D858C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D8590 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813D8594 | 48 03 2B A5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813D8598 | 7C 7C 1B 78 */	mr r28, r3
/* 813D859C | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D85A0 | 48 00 0A 7D */	bl getconntype__Q33ipl5scene8NetSetupFv
/* 813D85A4 | 4B FF C8 E5 */	bl IPLGetNATSupportCode
/* 813D85A8 | 80 BD 2B 54 */	lwz r5, 0x2b54(r29)
/* 813D85AC | 7C 67 1B 78 */	mr r7, r3
/* 813D85B0 | 88 DD 2B 60 */	lbz r6, 0x2b60(r29)
/* 813D85B4 | 7F 83 E3 78 */	mr r3, r28
/* 813D85B8 | 38 80 00 01 */	li r4, 0x1
/* 813D85BC | 48 01 FF 65 */	bl setConnectTestResult__Q33ipl5scene7SettingFiibi
.L_813D85C0:
/* 813D85C0 | 38 00 00 07 */	li r0, 0x7
/* 813D85C4 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D85C8 | 48 00 06 B8 */	b .L_813D8C80
.L_813D85CC:
/* 813D85CC | 4B FF CA D9 */	bl IPLContestShutdown
/* 813D85D0 | 80 9D 28 1C */	lwz r4, 0x281c(r29)
/* 813D85D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D85D8 | 41 82 00 20 */	beq .L_813D85F8
/* 813D85DC | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D85E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D85E4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D85E8 | 7D 89 03 A6 */	mtctr r12
/* 813D85EC | 4E 80 04 21 */	bctrl
/* 813D85F0 | 38 00 00 00 */	li r0, 0x0
/* 813D85F4 | 90 1D 28 1C */	stw r0, 0x281c(r29)
.L_813D85F8:
/* 813D85F8 | 80 1D 2B 54 */	lwz r0, 0x2b54(r29)
/* 813D85FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D8600 | 41 82 00 40 */	beq .L_813D8640
/* 813D8604 | 38 00 00 11 */	li r0, 0x11
/* 813D8608 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D860C | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8610 | 48 00 0E 95 */	bl cleanup__Q33ipl5scene8NetSetupFv
/* 813D8614 | 80 9D 28 18 */	lwz r4, 0x2818(r29)
/* 813D8618 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D861C | 41 82 06 64 */	beq .L_813D8C80
/* 813D8620 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D8624 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8628 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D862C | 7D 89 03 A6 */	mtctr r12
/* 813D8630 | 4E 80 04 21 */	bctrl
/* 813D8634 | 38 00 00 00 */	li r0, 0x0
/* 813D8638 | 90 1D 28 18 */	stw r0, 0x2818(r29)
/* 813D863C | 48 00 06 44 */	b .L_813D8C80
.L_813D8640:
/* 813D8640 | 38 00 00 08 */	li r0, 0x8
/* 813D8644 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8648 | 48 00 06 38 */	b .L_813D8C80
.L_813D864C:
/* 813D864C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D8650 | 38 80 00 12 */	li r4, 0x12
/* 813D8654 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D8658 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813D865C | 48 03 2A DD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813D8660 | 7C 7C 1B 78 */	mr r28, r3
/* 813D8664 | 48 01 FE B5 */	bl getUpdateTiming__Q33ipl5scene7SettingFv
/* 813D8668 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813D866C | 40 82 00 10 */	bne .L_813D867C
/* 813D8670 | 38 00 00 09 */	li r0, 0x9
/* 813D8674 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8678 | 48 00 06 08 */	b .L_813D8C80
.L_813D867C:
/* 813D867C | 7F 83 E3 78 */	mr r3, r28
/* 813D8680 | 48 01 FE 99 */	bl getUpdateTiming__Q33ipl5scene7SettingFv
/* 813D8684 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 813D8688 | 40 82 05 F8 */	bne .L_813D8C80
/* 813D868C | 38 00 00 0E */	li r0, 0xe
/* 813D8690 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8694 | 48 00 05 EC */	b .L_813D8C80
.L_813D8698:
/* 813D8698 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D869C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D86A0 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 813D86A4 | 4B F6 4D BD */	bl closeContentsAll__Q33ipl4nand7ManagerFv
/* 813D86A8 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813D86AC | 38 80 00 02 */	li r4, 0x2
/* 813D86B0 | 38 60 00 01 */	li r3, 0x1
/* 813D86B4 | 48 1E 73 55 */	bl fn_815BFA08
/* 813D86B8 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 813D86BC | 3C 60 81 3E */	lis r3, nhttpalloc__Q33ipl5scene12NakamuraTestFUli@ha
/* 813D86C0 | 3C 80 81 3E */	lis r4, nhttpfree__Q33ipl5scene12NakamuraTestFPv@ha
/* 813D86C4 | 38 A0 00 13 */	li r5, 0x13
/* 813D86C8 | B0 1D 2B 78 */	sth r0, 0x2b78(r29)
/* 813D86CC | 38 63 8D 3C */	addi r3, r3, nhttpalloc__Q33ipl5scene12NakamuraTestFUli@l
/* 813D86D0 | 38 84 8D 68 */	addi r4, r4, nhttpfree__Q33ipl5scene12NakamuraTestFPv@l
/* 813D86D4 | 48 0C 31 E5 */	bl fn_8149B8B8
/* 813D86D8 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D86DC | 3C 80 00 27 */	lis r4, 0x27
/* 813D86E0 | 38 A0 00 04 */	li r5, 0x4
/* 813D86E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D86E8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813D86EC | 7D 89 03 A6 */	mtctr r12
/* 813D86F0 | 4E 80 04 21 */	bctrl
/* 813D86F4 | 90 7D 28 1C */	stw r3, 0x281c(r29)
/* 813D86F8 | 3C 80 00 27 */	lis r4, 0x27
/* 813D86FC | 38 A0 00 00 */	li r5, 0x0
/* 813D8700 | 48 18 1F 75 */	bl fn_8155A674
/* 813D8704 | 90 7D 28 20 */	stw r3, 0x2820(r29)
/* 813D8708 | 7C 64 1B 78 */	mr r4, r3
/* 813D870C | 38 7D 28 24 */	addi r3, r29, 0x2824
/* 813D8710 | 38 A0 00 04 */	li r5, 0x4
/* 813D8714 | 48 18 2F 75 */	bl fn_8155B688
/* 813D8718 | 38 7D 28 24 */	addi r3, r29, 0x2824
/* 813D871C | 48 21 99 15 */	bl fn_815F2030
/* 813D8720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8724 | 90 7D 2B 7C */	stw r3, 0x2b7c(r29)
/* 813D8728 | 41 82 01 4C */	beq .L_813D8874
/* 813D872C | 3C 60 81 61 */	lis r3, lbl_816105B0@ha
/* 813D8730 | 38 00 00 08 */	li r0, 0x8
/* 813D8734 | 38 63 05 B0 */	addi r3, r3, lbl_816105B0@l
/* 813D8738 | 38 A1 00 37 */	addi r5, r1, 0x37
/* 813D873C | 38 83 FF FF */	subi r4, r3, 0x1
/* 813D8740 | 7C 09 03 A6 */	mtctr r0
.L_813D8744:
/* 813D8744 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 813D8748 | 8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 813D874C | 98 65 00 01 */	stb r3, 0x1(r5)
/* 813D8750 | 9C 05 00 02 */	stbu r0, 0x2(r5)
/* 813D8754 | 42 00 FF F0 */	bdnz .L_813D8744
/* 813D8758 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 813D875C | 38 61 00 18 */	addi r3, r1, 0x18
/* 813D8760 | 38 80 00 04 */	li r4, 0x4
/* 813D8764 | 98 05 00 01 */	stb r0, 0x1(r5)
/* 813D8768 | 48 19 23 55 */	bl SCGetProductAreaString
/* 813D876C | 38 7F 01 40 */	addi r3, r31, 0x140
/* 813D8770 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813D8774 | 4C C6 31 82 */	crclr cr1eq
/* 813D8778 | 48 15 5F 29 */	bl OSReport
/* 813D877C | 48 21 A6 D5 */	bl fn_815F2E50
/* 813D8780 | 7C 7C 1B 78 */	mr r28, r3
/* 813D8784 | 38 7F 01 56 */	addi r3, r31, 0x156
/* 813D8788 | 7F 84 E3 78 */	mr r4, r28
/* 813D878C | 4C C6 31 82 */	crclr cr1eq
/* 813D8790 | 48 15 5F 11 */	bl OSReport
/* 813D8794 | 80 7D 2B 7C */	lwz r3, 0x2b7c(r29)
/* 813D8798 | 7F 85 E3 78 */	mr r5, r28
/* 813D879C | 38 81 00 38 */	addi r4, r1, 0x38
/* 813D87A0 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 813D87A4 | 38 E0 00 00 */	li r7, 0x0
/* 813D87A8 | 48 21 99 11 */	bl fn_815F20B8
/* 813D87AC | 7C 7C 1B 78 */	mr r28, r3
/* 813D87B0 | 38 7F 01 6D */	addi r3, r31, 0x16d
/* 813D87B4 | 4C C6 31 82 */	crclr cr1eq
/* 813D87B8 | 48 15 5E E9 */	bl OSReport
/* 813D87BC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813D87C0 | 40 80 00 B4 */	bge .L_813D8874
/* 813D87C4 | 38 1C 13 94 */	addi r0, r28, 0x1394
/* 813D87C8 | 28 00 00 0C */	cmplwi r0, 0xc
/* 813D87CC | 41 81 00 94 */	bgt .L_813D8860
/* 813D87D0 | 3C 60 81 65 */	lis r3, jumptable_81653B30@ha
/* 813D87D4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813D87D8 | 38 63 3B 30 */	addi r3, r3, jumptable_81653B30@l
/* 813D87DC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D87E0 | 7C 69 03 A6 */	mtctr r3
/* 813D87E4 | 4E 80 04 20 */	bctr
.L_813D87E8:
/* 813D87E8 | 38 7F 01 7A */	addi r3, r31, 0x17a
/* 813D87EC | 4C C6 31 82 */	crclr cr1eq
/* 813D87F0 | 48 15 5E B1 */	bl OSReport
.L_813D87F4:
/* 813D87F4 | 38 7F 01 86 */	addi r3, r31, 0x186
/* 813D87F8 | 4C C6 31 82 */	crclr cr1eq
/* 813D87FC | 48 15 5E A5 */	bl OSReport
.L_813D8800:
/* 813D8800 | 38 7F 01 95 */	addi r3, r31, 0x195
/* 813D8804 | 4C C6 31 82 */	crclr cr1eq
/* 813D8808 | 48 15 5E 99 */	bl OSReport
.L_813D880C:
/* 813D880C | 38 7F 01 A3 */	addi r3, r31, 0x1a3
/* 813D8810 | 4C C6 31 82 */	crclr cr1eq
/* 813D8814 | 48 15 5E 8D */	bl OSReport
.L_813D8818:
/* 813D8818 | 38 7F 01 AE */	addi r3, r31, 0x1ae
/* 813D881C | 4C C6 31 82 */	crclr cr1eq
/* 813D8820 | 48 15 5E 81 */	bl OSReport
.L_813D8824:
/* 813D8824 | 38 7F 01 B8 */	addi r3, r31, 0x1b8
/* 813D8828 | 4C C6 31 82 */	crclr cr1eq
/* 813D882C | 48 15 5E 75 */	bl OSReport
/* 813D8830 | 38 00 7D 04 */	li r0, 0x7d04
/* 813D8834 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D8838 | 48 00 00 30 */	b .L_813D8868
.L_813D883C:
/* 813D883C | 38 00 7D 01 */	li r0, 0x7d01
/* 813D8840 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D8844 | 48 00 00 24 */	b .L_813D8868
.L_813D8848:
/* 813D8848 | 38 00 7D 02 */	li r0, 0x7d02
/* 813D884C | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D8850 | 48 00 00 18 */	b .L_813D8868
.L_813D8854:
/* 813D8854 | 38 00 7D 03 */	li r0, 0x7d03
/* 813D8858 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D885C | 48 00 00 0C */	b .L_813D8868
.L_813D8860:
/* 813D8860 | 38 00 7D 04 */	li r0, 0x7d04
/* 813D8864 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
.L_813D8868:
/* 813D8868 | 38 00 00 0C */	li r0, 0xc
/* 813D886C | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8870 | 48 00 04 10 */	b .L_813D8C80
.L_813D8874:
/* 813D8874 | 38 00 00 0A */	li r0, 0xa
/* 813D8878 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D887C | 48 00 04 04 */	b .L_813D8C80
.L_813D8880:
/* 813D8880 | 80 7D 2B 7C */	lwz r3, 0x2b7c(r29)
/* 813D8884 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813D8888 | 48 21 70 99 */	bl fn_815EF920
/* 813D888C | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813D8890 | 7C 7C 1B 78 */	mr r28, r3
/* 813D8894 | 80 81 00 2C */	lwz r4, 0x2c(r1)
/* 813D8898 | 7C 80 03 79 */	or. r0, r4, r0
/* 813D889C | 41 82 00 24 */	beq .L_813D88C0
/* 813D88A0 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 813D88A4 | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 813D88A8 | 90 9D 2B 6C */	stw r4, 0x2b6c(r29)
/* 813D88AC | 90 1D 2B 68 */	stw r0, 0x2b68(r29)
/* 813D88B0 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813D88B4 | 80 81 00 2C */	lwz r4, 0x2c(r1)
/* 813D88B8 | 90 9D 2B 74 */	stw r4, 0x2b74(r29)
/* 813D88BC | 90 1D 2B 70 */	stw r0, 0x2b70(r29)
.L_813D88C0:
/* 813D88C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D88C4 | 40 82 00 18 */	bne .L_813D88DC
/* 813D88C8 | 38 60 00 01 */	li r3, 0x1
/* 813D88CC | 38 00 00 0C */	li r0, 0xc
/* 813D88D0 | 98 7D 2B 60 */	stb r3, 0x2b60(r29)
/* 813D88D4 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D88D8 | 48 00 03 A8 */	b .L_813D8C80
.L_813D88DC:
/* 813D88DC | 40 80 03 A4 */	bge .L_813D8C80
/* 813D88E0 | 7F 84 E3 78 */	mr r4, r28
/* 813D88E4 | 38 7F 01 C2 */	addi r3, r31, 0x1c2
/* 813D88E8 | 4C C6 31 82 */	crclr cr1eq
/* 813D88EC | 48 15 5D B5 */	bl OSReport
/* 813D88F0 | 38 A1 00 0A */	addi r5, r1, 0xa
/* 813D88F4 | 38 80 00 02 */	li r4, 0x2
/* 813D88F8 | 38 60 00 01 */	li r3, 0x1
/* 813D88FC | 48 1E 71 0D */	bl fn_815BFA08
/* 813D8900 | A0 7D 2B 78 */	lhz r3, 0x2b78(r29)
/* 813D8904 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 813D8908 | 7C 03 00 40 */	cmplw r3, r0
/* 813D890C | 41 82 00 10 */	beq .L_813D891C
/* 813D8910 | 38 00 00 01 */	li r0, 0x1
/* 813D8914 | 98 1D 2B 60 */	stb r0, 0x2b60(r29)
/* 813D8918 | 48 00 00 0C */	b .L_813D8924
.L_813D891C:
/* 813D891C | 38 00 00 00 */	li r0, 0x0
/* 813D8920 | 98 1D 2B 60 */	stb r0, 0x2b60(r29)
.L_813D8924:
/* 813D8924 | 38 1C 13 94 */	addi r0, r28, 0x1394
/* 813D8928 | 28 00 00 0C */	cmplwi r0, 0xc
/* 813D892C | 41 81 00 94 */	bgt .L_813D89C0
/* 813D8930 | 3C 60 81 65 */	lis r3, jumptable_81653AFC@ha
/* 813D8934 | 54 00 10 3A */	slwi r0, r0, 2
/* 813D8938 | 38 63 3A FC */	addi r3, r3, jumptable_81653AFC@l
/* 813D893C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813D8940 | 7C 69 03 A6 */	mtctr r3
/* 813D8944 | 4E 80 04 20 */	bctr
.L_813D8948:
/* 813D8948 | 38 7F 01 7A */	addi r3, r31, 0x17a
/* 813D894C | 4C C6 31 82 */	crclr cr1eq
/* 813D8950 | 48 15 5D 51 */	bl OSReport
.L_813D8954:
/* 813D8954 | 38 7F 01 86 */	addi r3, r31, 0x186
/* 813D8958 | 4C C6 31 82 */	crclr cr1eq
/* 813D895C | 48 15 5D 45 */	bl OSReport
.L_813D8960:
/* 813D8960 | 38 7F 01 95 */	addi r3, r31, 0x195
/* 813D8964 | 4C C6 31 82 */	crclr cr1eq
/* 813D8968 | 48 15 5D 39 */	bl OSReport
.L_813D896C:
/* 813D896C | 38 7F 01 A3 */	addi r3, r31, 0x1a3
/* 813D8970 | 4C C6 31 82 */	crclr cr1eq
/* 813D8974 | 48 15 5D 2D */	bl OSReport
.L_813D8978:
/* 813D8978 | 38 7F 01 AE */	addi r3, r31, 0x1ae
/* 813D897C | 4C C6 31 82 */	crclr cr1eq
/* 813D8980 | 48 15 5D 21 */	bl OSReport
.L_813D8984:
/* 813D8984 | 38 7F 01 B8 */	addi r3, r31, 0x1b8
/* 813D8988 | 4C C6 31 82 */	crclr cr1eq
/* 813D898C | 48 15 5D 15 */	bl OSReport
/* 813D8990 | 38 00 7D 04 */	li r0, 0x7d04
/* 813D8994 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D8998 | 48 00 00 A4 */	b .L_813D8A3C
.L_813D899C:
/* 813D899C | 38 00 7D 01 */	li r0, 0x7d01
/* 813D89A0 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D89A4 | 48 00 00 98 */	b .L_813D8A3C
.L_813D89A8:
/* 813D89A8 | 38 00 7D 02 */	li r0, 0x7d02
/* 813D89AC | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D89B0 | 48 00 00 8C */	b .L_813D8A3C
.L_813D89B4:
/* 813D89B4 | 38 00 7D 03 */	li r0, 0x7d03
/* 813D89B8 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D89BC | 48 00 00 80 */	b .L_813D8A3C
.L_813D89C0:
/* 813D89C0 | 2C 1C FC 17 */	cmpwi r28, -0x3e9
/* 813D89C4 | 41 81 00 18 */	bgt .L_813D89DC
/* 813D89C8 | 2C 1C FC 11 */	cmpwi r28, -0x3ef
/* 813D89CC | 41 80 00 10 */	blt .L_813D89DC
/* 813D89D0 | 38 00 7D 05 */	li r0, 0x7d05
/* 813D89D4 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D89D8 | 48 00 00 64 */	b .L_813D8A3C
.L_813D89DC:
/* 813D89DC | 2C 1C E8 90 */	cmpwi r28, -0x1770
/* 813D89E0 | 41 81 00 18 */	bgt .L_813D89F8
/* 813D89E4 | 2C 1C E4 A8 */	cmpwi r28, -0x1b58
/* 813D89E8 | 40 81 00 10 */	ble .L_813D89F8
/* 813D89EC | 38 00 7D 06 */	li r0, 0x7d06
/* 813D89F0 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D89F4 | 48 00 00 48 */	b .L_813D8A3C
.L_813D89F8:
/* 813D89F8 | 2C 1C E4 A8 */	cmpwi r28, -0x1b58
/* 813D89FC | 41 81 00 18 */	bgt .L_813D8A14
/* 813D8A00 | 2C 1C E0 C0 */	cmpwi r28, -0x1f40
/* 813D8A04 | 40 81 00 10 */	ble .L_813D8A14
/* 813D8A08 | 38 00 7D 07 */	li r0, 0x7d07
/* 813D8A0C | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D8A10 | 48 00 00 2C */	b .L_813D8A3C
.L_813D8A14:
/* 813D8A14 | 2C 1C FC 10 */	cmpwi r28, -0x3f0
/* 813D8A18 | 41 81 00 1C */	bgt .L_813D8A34
/* 813D8A1C | 2C 1C F8 30 */	cmpwi r28, -0x7d0
/* 813D8A20 | 40 81 00 14 */	ble .L_813D8A34
/* 813D8A24 | 38 1C 03 E8 */	addi r0, r28, 0x3e8
/* 813D8A28 | 20 00 7D 00 */	subfic r0, r0, 0x7d00
/* 813D8A2C | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D8A30 | 48 00 00 0C */	b .L_813D8A3C
.L_813D8A34:
/* 813D8A34 | 38 00 7D 04 */	li r0, 0x7d04
/* 813D8A38 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
.L_813D8A3C:
/* 813D8A3C | 38 00 00 0C */	li r0, 0xc
/* 813D8A40 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8A44 | 48 00 02 3C */	b .L_813D8C80
.L_813D8A48:
/* 813D8A48 | 80 7D 2B 7C */	lwz r3, 0x2b7c(r29)
/* 813D8A4C | 48 21 98 69 */	bl fn_815F22B4
/* 813D8A50 | 80 7D 28 20 */	lwz r3, 0x2820(r29)
/* 813D8A54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8A58 | 41 82 00 10 */	beq .L_813D8A68
/* 813D8A5C | 48 18 1C C9 */	bl fn_8155A724
/* 813D8A60 | 38 00 00 00 */	li r0, 0x0
/* 813D8A64 | 90 1D 28 20 */	stw r0, 0x2820(r29)
.L_813D8A68:
/* 813D8A68 | 80 9D 28 1C */	lwz r4, 0x281c(r29)
/* 813D8A6C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D8A70 | 41 82 00 20 */	beq .L_813D8A90
/* 813D8A74 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D8A78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8A7C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D8A80 | 7D 89 03 A6 */	mtctr r12
/* 813D8A84 | 4E 80 04 21 */	bctrl
/* 813D8A88 | 38 00 00 00 */	li r0, 0x0
/* 813D8A8C | 90 1D 28 1C */	stw r0, 0x281c(r29)
.L_813D8A90:
/* 813D8A90 | 38 00 00 00 */	li r0, 0x0
/* 813D8A94 | 3C 60 81 3E */	lis r3, nhttpcleanupcallback__Q33ipl5scene12NakamuraTestFv@ha
/* 813D8A98 | 90 0D AB 94 */	stw r0, lbl_81698BD4@sda21(r0)
/* 813D8A9C | 38 63 8D 80 */	addi r3, r3, nhttpcleanupcallback__Q33ipl5scene12NakamuraTestFv@l
/* 813D8AA0 | 48 0C 2E A5 */	bl fn_8149B944
/* 813D8AA4 | 38 00 00 0D */	li r0, 0xd
/* 813D8AA8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813D8AAC | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8AB0 | 38 80 00 02 */	li r4, 0x2
/* 813D8AB4 | 38 60 00 01 */	li r3, 0x1
/* 813D8AB8 | 48 1E 6F 51 */	bl fn_815BFA08
/* 813D8ABC | A0 9D 2B 78 */	lhz r4, 0x2b78(r29)
/* 813D8AC0 | 38 7F 01 DC */	addi r3, r31, 0x1dc
/* 813D8AC4 | A0 A1 00 08 */	lhz r5, 0x8(r1)
/* 813D8AC8 | 4C C6 31 82 */	crclr cr1eq
/* 813D8ACC | 48 15 5B D5 */	bl OSReport
/* 813D8AD0 | 38 00 00 01 */	li r0, 0x1
/* 813D8AD4 | 98 1D 2B 60 */	stb r0, 0x2b60(r29)
/* 813D8AD8 | 48 00 01 A8 */	b .L_813D8C80
.L_813D8ADC:
/* 813D8ADC | 80 0D AB 94 */	lwz r0, lbl_81698BD4@sda21(r0)
/* 813D8AE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D8AE4 | 41 82 01 9C */	beq .L_813D8C80
/* 813D8AE8 | 38 00 00 0B */	li r0, 0xb
/* 813D8AEC | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8AF0 | 48 00 01 90 */	b .L_813D8C80
.L_813D8AF4:
/* 813D8AF4 | 38 00 00 0F */	li r0, 0xf
/* 813D8AF8 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8AFC | 48 00 01 84 */	b .L_813D8C80
.L_813D8B00:
/* 813D8B00 | 38 00 00 0F */	li r0, 0xf
/* 813D8B04 | 38 7F 02 00 */	addi r3, r31, 0x200
/* 813D8B08 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8B0C | 4C C6 31 82 */	crclr cr1eq
/* 813D8B10 | 48 15 5B 91 */	bl OSReport
/* 813D8B14 | 48 00 01 6C */	b .L_813D8C80
.L_813D8B18:
/* 813D8B18 | 38 7F 02 22 */	addi r3, r31, 0x222
/* 813D8B1C | 4C C6 31 82 */	crclr cr1eq
/* 813D8B20 | 48 15 5B 81 */	bl OSReport
/* 813D8B24 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D8B28 | 48 00 09 7D */	bl cleanup__Q33ipl5scene8NetSetupFv
/* 813D8B2C | 38 7F 02 3F */	addi r3, r31, 0x23f
/* 813D8B30 | 4C C6 31 82 */	crclr cr1eq
/* 813D8B34 | 48 15 5B 6D */	bl OSReport
/* 813D8B38 | 80 9D 28 18 */	lwz r4, 0x2818(r29)
/* 813D8B3C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D8B40 | 41 82 00 20 */	beq .L_813D8B60
/* 813D8B44 | 80 7D 28 10 */	lwz r3, 0x2810(r29)
/* 813D8B48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8B4C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D8B50 | 7D 89 03 A6 */	mtctr r12
/* 813D8B54 | 4E 80 04 21 */	bctrl
/* 813D8B58 | 38 00 00 00 */	li r0, 0x0
/* 813D8B5C | 90 1D 28 18 */	stw r0, 0x2818(r29)
.L_813D8B60:
/* 813D8B60 | 80 1D 2B 54 */	lwz r0, 0x2b54(r29)
/* 813D8B64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D8B68 | 40 82 00 10 */	bne .L_813D8B78
/* 813D8B6C | 38 00 00 10 */	li r0, 0x10
/* 813D8B70 | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8B74 | 48 00 01 0C */	b .L_813D8C80
.L_813D8B78:
/* 813D8B78 | 38 00 00 11 */	li r0, 0x11
/* 813D8B7C | 90 1D 2B 58 */	stw r0, 0x2b58(r29)
/* 813D8B80 | 48 00 01 00 */	b .L_813D8C80
.L_813D8B84:
/* 813D8B84 | 80 1D 2B 70 */	lwz r0, 0x2b70(r29)
/* 813D8B88 | 80 7D 2B 74 */	lwz r3, 0x2b74(r29)
/* 813D8B8C | 7C 60 03 79 */	or. r0, r3, r0
/* 813D8B90 | 40 82 00 34 */	bne .L_813D8BC4
/* 813D8B94 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D8B98 | 38 80 00 12 */	li r4, 0x12
/* 813D8B9C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D8BA0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813D8BA4 | 48 03 25 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813D8BA8 | 80 BD 2B 54 */	lwz r5, 0x2b54(r29)
/* 813D8BAC | 38 80 00 03 */	li r4, 0x3
/* 813D8BB0 | 88 DD 2B 60 */	lbz r6, 0x2b60(r29)
/* 813D8BB4 | 38 E0 00 00 */	li r7, 0x0
/* 813D8BB8 | 48 01 F9 69 */	bl setConnectTestResult__Q33ipl5scene7SettingFiibi
/* 813D8BBC | 3B C0 00 01 */	li r30, 0x1
/* 813D8BC0 | 48 00 00 C0 */	b .L_813D8C80
.L_813D8BC4:
/* 813D8BC4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D8BC8 | 38 80 00 12 */	li r4, 0x12
/* 813D8BCC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D8BD0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813D8BD4 | 48 03 25 65 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813D8BD8 | 80 BD 2B 54 */	lwz r5, 0x2b54(r29)
/* 813D8BDC | 38 80 00 01 */	li r4, 0x1
/* 813D8BE0 | 88 DD 2B 60 */	lbz r6, 0x2b60(r29)
/* 813D8BE4 | 38 E0 00 00 */	li r7, 0x0
/* 813D8BE8 | 48 01 F9 39 */	bl setConnectTestResult__Q33ipl5scene7SettingFiibi
/* 813D8BEC | 3B C0 00 01 */	li r30, 0x1
/* 813D8BF0 | 48 00 00 90 */	b .L_813D8C80
.L_813D8BF4:
/* 813D8BF4 | 38 00 00 04 */	li r0, 0x4
/* 813D8BF8 | 3C 60 00 01 */	lis r3, 0x1
/* 813D8BFC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813D8C00 | 38 83 FF FE */	subi r4, r3, 0x2
/* 813D8C04 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 813D8C08 | 38 E1 00 10 */	addi r7, r1, 0x10
/* 813D8C0C | 38 60 00 00 */	li r3, 0x0
/* 813D8C10 | 38 A0 10 03 */	li r5, 0x1003
/* 813D8C14 | 48 0D BB 59 */	bl SOGetInterfaceOpt
/* 813D8C18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D8C1C | 40 82 00 38 */	bne .L_813D8C54
/* 813D8C20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D8C24 | 2C 00 FF 91 */	cmpwi r0, -0x6f
/* 813D8C28 | 40 82 00 2C */	bne .L_813D8C54
/* 813D8C2C | 38 60 FF 91 */	li r3, -0x6f
/* 813D8C30 | 48 0B BF 25 */	bl NETGetStartupErrorCode
/* 813D8C34 | 7C 63 00 D0 */	neg r3, r3
/* 813D8C38 | 38 00 00 64 */	li r0, 0x64
/* 813D8C3C | 7C 03 03 D6 */	divw r0, r3, r0
/* 813D8C40 | 38 7D 00 58 */	addi r3, r29, 0x58
/* 813D8C44 | 1C 00 00 64 */	mulli r0, r0, 0x64
/* 813D8C48 | 90 1D 2B 54 */	stw r0, 0x2b54(r29)
/* 813D8C4C | 48 00 03 D1 */	bl getconntype__Q33ipl5scene8NetSetupFv
/* 813D8C50 | 90 7D 2B 54 */	stw r3, 0x2b54(r29)
.L_813D8C54:
/* 813D8C54 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D8C58 | 38 80 00 12 */	li r4, 0x12
/* 813D8C5C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D8C60 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813D8C64 | 48 03 24 D5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813D8C68 | 80 BD 2B 54 */	lwz r5, 0x2b54(r29)
/* 813D8C6C | 38 80 00 02 */	li r4, 0x2
/* 813D8C70 | 88 DD 2B 60 */	lbz r6, 0x2b60(r29)
/* 813D8C74 | 38 E0 00 00 */	li r7, 0x0
/* 813D8C78 | 48 01 F8 A9 */	bl setConnectTestResult__Q33ipl5scene7SettingFiibi
/* 813D8C7C | 3B C0 00 01 */	li r30, 0x1
.L_813D8C80:
/* 813D8C80 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813D8C84 | 7F C3 F3 78 */	mr r3, r30
/* 813D8C88 | 48 22 08 89 */	bl _restgpr_28
/* 813D8C8C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813D8C90 | 7C 08 03 A6 */	mtlr r0
/* 813D8C94 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813D8C98 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene12NakamuraTestFv

# .text:0xD0C | 0x813D8C9C | size: 0x8
# ipl::scene::NakamuraTest::calcFadeout()
.fn calcFadeout__Q33ipl5scene12NakamuraTestFv, global
/* 813D8C9C | 38 60 00 01 */	li r3, 0x1
/* 813D8CA0 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene12NakamuraTestFv

# .text:0xD14 | 0x813D8CA4 | size: 0x24
# ipl::scene::NakamuraTest::draw()
.fn draw__Q33ipl5scene12NakamuraTestFv, global
/* 813D8CA4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813D8CA8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813D8CAC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813D8CB0 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813D8CB4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D8CB8 | 4C 82 00 20 */	bnelr
/* 813D8CBC | 38 60 00 00 */	li r3, 0x0
/* 813D8CC0 | 4B F8 9D AC */	b setOrtho__Q33ipl7utility8GraphicsFUl
/* 813D8CC4 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene12NakamuraTestFv

# .text:0xD38 | 0x813D8CC8 | size: 0x74
# ipl::scene::NakamuraTest::conntestthread(void*)
.fn conntestthread__Q33ipl5scene12NakamuraTestFPv, global
/* 813D8CC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D8CCC | 7C 08 02 A6 */	mflr r0
/* 813D8CD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D8CD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D8CD8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813D8CDC | 4B FF BA 75 */	bl IPLContestStart
/* 813D8CE0 | 3C 60 00 02 */	lis r3, 0x2
/* 813D8CE4 | 3F C0 80 00 */	lis r30, 0x8000
/* 813D8CE8 | 3B E3 E8 48 */	subi r31, r3, 0x17b8
.L_813D8CEC:
/* 813D8CEC | 4B FF BA 79 */	bl IPLContestProcess
/* 813D8CF0 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813D8CF4 | 41 82 00 0C */	beq .L_813D8D00
/* 813D8CF8 | 40 80 00 10 */	bge .L_813D8D08
/* 813D8CFC | 48 00 00 0C */	b .L_813D8D08
.L_813D8D00:
/* 813D8D00 | 38 60 00 00 */	li r3, 0x0
/* 813D8D04 | 48 00 00 20 */	b .L_813D8D24
.L_813D8D08:
/* 813D8D08 | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 813D8D0C | 38 60 00 00 */	li r3, 0x0
/* 813D8D10 | 54 00 F0 BE */	srwi r0, r0, 2
/* 813D8D14 | 7C 00 FB 96 */	divwu r0, r0, r31
/* 813D8D18 | 54 04 E8 FE */	srwi r4, r0, 3
/* 813D8D1C | 48 15 CE B1 */	bl OSSleepTicks
/* 813D8D20 | 4B FF FF CC */	b .L_813D8CEC
.L_813D8D24:
/* 813D8D24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D8D28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D8D2C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813D8D30 | 7C 08 03 A6 */	mtlr r0
/* 813D8D34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D8D38 | 4E 80 00 20 */	blr
.endfn conntestthread__Q33ipl5scene12NakamuraTestFPv

# .text:0xDAC | 0x813D8D3C | size: 0x2C
# ipl::scene::NakamuraTest::nhttpalloc(unsigned long, int)
.fn nhttpalloc__Q33ipl5scene12NakamuraTestFUli, global
/* 813D8D3C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813D8D40 | 7C 60 1B 78 */	mr r0, r3
/* 813D8D44 | 7C 85 23 78 */	mr r5, r4
/* 813D8D48 | 40 80 00 08 */	bge .L_813D8D50
/* 813D8D4C | 38 A0 00 04 */	li r5, 0x4
.L_813D8D50:
/* 813D8D50 | 80 6D AB 90 */	lwz r3, lbl_81698BD0@sda21(r0)
/* 813D8D54 | 7C 04 03 78 */	mr r4, r0
/* 813D8D58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8D5C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813D8D60 | 7D 89 03 A6 */	mtctr r12
/* 813D8D64 | 4E 80 04 20 */	bctr
.endfn nhttpalloc__Q33ipl5scene12NakamuraTestFUli

# .text:0xDD8 | 0x813D8D68 | size: 0x18
# ipl::scene::NakamuraTest::nhttpfree(void*)
.fn nhttpfree__Q33ipl5scene12NakamuraTestFPv, global
/* 813D8D68 | 7C 64 1B 78 */	mr r4, r3
/* 813D8D6C | 80 6D AB 90 */	lwz r3, lbl_81698BD0@sda21(r0)
/* 813D8D70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813D8D74 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813D8D78 | 7D 89 03 A6 */	mtctr r12
/* 813D8D7C | 4E 80 04 20 */	bctr
.endfn nhttpfree__Q33ipl5scene12NakamuraTestFPv

# .text:0xDF0 | 0x813D8D80 | size: 0xC
# ipl::scene::NakamuraTest::nhttpcleanupcallback()
.fn nhttpcleanupcallback__Q33ipl5scene12NakamuraTestFv, global
/* 813D8D80 | 38 00 00 01 */	li r0, 0x1
/* 813D8D84 | 90 0D AB 94 */	stw r0, lbl_81698BD4@sda21(r0)
/* 813D8D88 | 4E 80 00 20 */	blr
.endfn nhttpcleanupcallback__Q33ipl5scene12NakamuraTestFv

# .text:0xDFC | 0x813D8D8C | size: 0x8
# ipl::scene::NakamuraTest::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene12NakamuraTestCFv, global
/* 813D8D8C | 38 60 00 00 */	li r3, 0x0
/* 813D8D90 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene12NakamuraTestCFv

# .text:0xE04 | 0x813D8D94 | size: 0x8
.fn "@20@__dt__Q33ipl5scene12NakamuraTestFv", global
/* 813D8D94 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813D8D98 | 4B FF F2 A0 */	b __dt__Q33ipl5scene12NakamuraTestFv
.endfn "@20@__dt__Q33ipl5scene12NakamuraTestFv"

# 0x816105B0..0x816105C8 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x816105B0 | size: 0x18
.obj lbl_816105B0, global
	.byte 0x6E, 0x75, 0x73, 0x2E, 0x73, 0x68, 0x6F, 0x70
	.byte 0x2E, 0x77, 0x69, 0x69, 0x2E, 0x63, 0x6F, 0x6D
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
.endobj lbl_816105B0

# 0x816538B0..0x81653C18 | size: 0x368
.data
.balign 8

# .data:0x0 | 0x816538B0 | size: 0x1D
.obj lbl_816538B0, global
	.string "Nakamuratest scene created.\n"
.endobj lbl_816538B0

# .data:0x1D | 0x816538CD | size: 0x22F
.obj lbl_816538CD, global
	.4byte 0x4E616B61
	.4byte 0x6D757261
	.4byte 0x74657374
	.4byte 0x20736365
	.4byte 0x6E652064
	.4byte 0x65737472
	.4byte 0x6F796564
	.4byte 0x2E0A005B
	.4byte 0x52656365
	.4byte 0x69766520
	.4byte 0x53636865
	.4byte 0x64756C65
	.4byte 0x725D2057
	.4byte 0x6169742E
	.4byte 0x2E0A004E
	.4byte 0x65745365
	.4byte 0x74757020
	.4byte 0x53746172
	.4byte 0x740A005B
	.4byte 0x6572726F
	.4byte 0x725D204E
	.4byte 0x65745365
	.4byte 0x74757020
	.4byte 0x6661696C
	.4byte 0x65640A00
	.4byte 0x4E657453
	.4byte 0x65747570
	.4byte 0x20436F6D
	.4byte 0x706C6574
	.4byte 0x65640A00
	.4byte 0x53746172
	.4byte 0x74696E67
	.4byte 0x20436F6E
	.4byte 0x6E656374
	.4byte 0x696E6720
	.4byte 0x54657374
	.4byte 0x0A005B65
	.4byte 0x72726F72
	.4byte 0x5D202564
	.4byte 0x0A005769
	.4byte 0x69494420
	.4byte 0x4572726F
	.4byte 0x724F6363
	.4byte 0x75720A00
	.4byte 0x5B726573
	.4byte 0x756C745D
	.4byte 0x20746573
	.4byte 0x74206861
	.4byte 0x73206E6F
	.4byte 0x74206265
	.4byte 0x656E2063
	.4byte 0x6F6D706C
	.4byte 0x65746564
	.4byte 0x2E0A005B
	.4byte 0x72657375
	.4byte 0x6C745D20
	.4byte 0x57696920
	.4byte 0x49442072
	.4byte 0x65676973
	.4byte 0x74657220
	.4byte 0x6572726F
	.4byte 0x722E0A00
	.4byte 0x5B726573
	.4byte 0x756C745D
	.4byte 0x20687474
	.4byte 0x70203A20
	.4byte 0x6572726F
	.4byte 0x720A005B
	.4byte 0x72657375
	.4byte 0x6C745D20
	.4byte 0x68747470
	.4byte 0x203A2025
	.4byte 0x730A004E
	.4byte 0x55502072
	.4byte 0x6567696F
	.4byte 0x6E20636F
	.4byte 0x6465203A
	.4byte 0x2025730A
	.4byte 0x004E5550
	.4byte 0x20636F75
	.4byte 0x6E747279
	.4byte 0x20636F64
	.4byte 0x65203A20
	.4byte 0x25730A00
	.4byte 0x4E55505F
	.4byte 0x53746172
	.4byte 0x7428290A
	.4byte 0x00464149
	.4byte 0x4C20414C
	.4byte 0x4C4F430A
	.4byte 0x00464149
	.4byte 0x4C20494E
	.4byte 0x5445524E
	.4byte 0x414C0A00
	.4byte 0x494E5641
	.4byte 0x4C49445F
	.4byte 0x464C4147
	.4byte 0x0A004E4F
	.4byte 0x54205245
	.4byte 0x4144590A
	.4byte 0x00424144
	.4byte 0x20484541
	.4byte 0x500A0042
	.4byte 0x41442053
	.4byte 0x495A450A
	.4byte 0x004E5550
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x6572726F
	.4byte 0x72636F64
	.4byte 0x65203A25
	.4byte 0x640A0073
	.4byte 0x79737465
	.4byte 0x6D6D656E
	.4byte 0x75207665
	.4byte 0x722E2062
	.4byte 0x65666F72
	.4byte 0x653A2564
	.4byte 0x20616674
	.4byte 0x65723A25
	.4byte 0x640A004E
	.4byte 0x6574776F
	.4byte 0x726B2075
	.4byte 0x70646174
	.4byte 0x65206861
	.4byte 0x73206265
	.4byte 0x656E2073
	.4byte 0x6B697070
	.4byte 0x65642E0A
	.4byte 0x00446973
	.4byte 0x636F6E6E
	.4byte 0x65637469
	.4byte 0x6E672066
	.4byte 0x726F6D20
	.4byte 0x6E657477
	.4byte 0x6F726B2E
	.4byte 0x0A004669
	.4byte 0x6E697368
	.4byte 0x65640A00
	.byte 0x00, 0x00, 0x00
.endobj lbl_816538CD

# .data:0x24C | 0x81653AFC | size: 0x34
.obj jumptable_81653AFC, local
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8984
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8978
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D89B4
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D89A8
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D89A8
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D89A8
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D89A8
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D899C
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D89A8
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D896C
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8960
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8954
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8948
.endobj jumptable_81653AFC

# .data:0x280 | 0x81653B30 | size: 0x34
.obj jumptable_81653B30, local
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8824
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8818
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8854
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8848
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8848
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8848
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8848
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D883C
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8848
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D880C
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8800
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D87F4
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D87E8
.endobj jumptable_81653B30

# .data:0x2B4 | 0x81653B64 | size: 0x48
.obj jumptable_81653B64, local
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8C80
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D81C4
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D82A0
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D83A0
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8430
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8478
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D84A4
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D85CC
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D864C
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8698
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8880
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8AF4
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8A48
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8ADC
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8B00
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8B18
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8B84
	.rel calcNormal__Q33ipl5scene12NakamuraTestFv, .L_813D8BF4
.endobj jumptable_81653B64

# .data:0x2FC | 0x81653BAC | size: 0x6C
# ipl::scene::NakamuraTest::__vtable
.obj __vt__Q33ipl5scene12NakamuraTest, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene12NakamuraTestFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene12NakamuraTestFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene12NakamuraTestCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene12NakamuraTestFv
	.4byte create__Q33ipl5scene12NakamuraTestFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene12NakamuraTestFv
	.4byte destroy__Q33ipl5scene12NakamuraTestFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcCommon__Q33ipl5scene12NakamuraTestFv
	.4byte calcFadein__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcNormal__Q33ipl5scene12NakamuraTestFv
	.4byte calcFadeout__Q33ipl5scene12NakamuraTestFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene12NakamuraTest

# 0x81696D40..0x81696D48 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696D40 | size: 0x3
.obj lbl_81696D40, global
	.string "ng"
.endobj lbl_81696D40

# .sdata:0x3 | 0x81696D43 | size: 0x5
.obj lbl_81696D43, global
	.4byte 0x6F6B0000
	.byte 0x00
.endobj lbl_81696D43

# 0x81698BD0..0x81698BD8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698BD0 | size: 0x4
.obj lbl_81698BD0, global
	.skip 0x4
.endobj lbl_81698BD0

# .sbss:0x4 | 0x81698BD4 | size: 0x4
.obj lbl_81698BD4, global
	.skip 0x4
.endobj lbl_81698BD4
