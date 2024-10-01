.include "macros.inc"
.file "iplChannelManager.cpp"

# 0x81337978..0x8133AA80 | size: 0x3108
.text
.balign 4

# .text:0x0 | 0x81337978 | size: 0x154
# ipl::channel::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl7channel7ManagerFPQ23EGG4Heap, global
/* 81337978 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133797C | 7C 08 02 A6 */	mflr r0
/* 81337980 | 3C A0 81 63 */	lis r5, __vt__Q33ipl7channel7Manager@ha
/* 81337984 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81337988 | 38 A5 4A FC */	addi r5, r5, __vt__Q33ipl7channel7Manager@l
/* 8133798C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81337990 | 3B E0 00 00 */	li r31, 0x0
/* 81337994 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81337998 | 7C 7E 1B 78 */	mr r30, r3
/* 8133799C | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813379A0 | 38 80 00 00 */	li r4, 0x0
/* 813379A4 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813379A8 | 38 A0 15 00 */	li r5, 0x1500
/* 813379AC | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 813379B0 | 9B E3 1B 80 */	stb r31, 0x1b80(r3)
/* 813379B4 | 9B E3 1B 81 */	stb r31, 0x1b81(r3)
/* 813379B8 | 9B E3 1B 90 */	stb r31, 0x1b90(r3)
/* 813379BC | 93 E3 1B 94 */	stw r31, 0x1b94(r3)
/* 813379C0 | 9B E3 1D A0 */	stb r31, 0x1da0(r3)
/* 813379C4 | 93 E3 1D A4 */	stw r31, 0x1da4(r3)
/* 813379C8 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813379CC | 4B FF 89 69 */	bl memset
/* 813379D0 | 3C 60 00 02 */	lis r3, 0x2
/* 813379D4 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813379D8 | 38 63 90 00 */	subi r3, r3, 0x7000
/* 813379DC | 38 A0 00 20 */	li r5, 0x20
/* 813379E0 | 48 2C 06 F5 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813379E4 | 90 7E 1B 84 */	stw r3, 0x1b84(r30)
/* 813379E8 | 3C 60 00 08 */	lis r3, 0x8
/* 813379EC | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813379F0 | 38 A0 00 20 */	li r5, 0x20
/* 813379F4 | 48 2C 06 E1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813379F8 | 90 7E 1B 88 */	stw r3, 0x1b88(r30)
/* 813379FC | 3C 60 00 08 */	lis r3, 0x8
/* 81337A00 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81337A04 | 38 A0 00 20 */	li r5, 0x20
/* 81337A08 | 48 2C 06 CD */	bl __nwa__FUlPQ23EGG4Heapi
/* 81337A0C | 90 7E 1B 8C */	stw r3, 0x1b8c(r30)
/* 81337A10 | 38 E0 00 00 */	li r7, 0x0
/* 81337A14 | 38 60 00 00 */	li r3, 0x0
/* 81337A18 | 38 00 00 0C */	li r0, 0xc
.L_81337A1C:
/* 81337A1C | 7C BE 1A 14 */	add r5, r30, r3
/* 81337A20 | 38 80 00 00 */	li r4, 0x0
/* 81337A24 | 7C 09 03 A6 */	mtctr r0
.L_81337A28:
/* 81337A28 | 7C C5 22 14 */	add r6, r5, r4
/* 81337A2C | 38 84 00 70 */	addi r4, r4, 0x70
/* 81337A30 | 93 E6 00 10 */	stw r31, 0x10(r6)
/* 81337A34 | 93 E6 00 0C */	stw r31, 0xc(r6)
/* 81337A38 | 93 E6 00 54 */	stw r31, 0x54(r6)
/* 81337A3C | 42 00 FF EC */	bdnz .L_81337A28
/* 81337A40 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81337A44 | 38 63 05 40 */	addi r3, r3, 0x540
/* 81337A48 | 2C 07 00 04 */	cmpwi r7, 0x4
/* 81337A4C | 41 80 FF D0 */	blt .L_81337A1C
/* 81337A50 | 38 7E 15 0C */	addi r3, r30, 0x150c
/* 81337A54 | 38 80 00 00 */	li r4, 0x0
/* 81337A58 | 38 A0 00 70 */	li r5, 0x70
/* 81337A5C | 4B FF 88 D9 */	bl memset
/* 81337A60 | 38 00 00 00 */	li r0, 0x0
/* 81337A64 | 38 7E 15 7C */	addi r3, r30, 0x157c
/* 81337A68 | 90 1E 15 10 */	stw r0, 0x1510(r30)
/* 81337A6C | 38 80 00 00 */	li r4, 0x0
/* 81337A70 | 38 A0 06 00 */	li r5, 0x600
/* 81337A74 | 90 1E 15 0C */	stw r0, 0x150c(r30)
/* 81337A78 | 90 1E 15 54 */	stw r0, 0x1554(r30)
/* 81337A7C | 4B FF 88 B9 */	bl memset
/* 81337A80 | 80 1E 15 D4 */	lwz r0, 0x15d4(r30)
/* 81337A84 | 38 7E 1B A0 */	addi r3, r30, 0x1ba0
/* 81337A88 | 38 80 00 00 */	li r4, 0x0
/* 81337A8C | 38 A0 02 00 */	li r5, 0x200
/* 81337A90 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81337A94 | 90 1E 15 D4 */	stw r0, 0x15d4(r30)
/* 81337A98 | 4B FF 88 9D */	bl memset
/* 81337A9C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81337AA0 | 7F C3 F3 78 */	mr r3, r30
/* 81337AA4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81337AA8 | 80 84 00 A8 */	lwz r4, 0xa8(r4)
/* 81337AAC | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81337AB0 | 90 1E 1B 7C */	stw r0, 0x1b7c(r30)
/* 81337AB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81337AB8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81337ABC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81337AC0 | 7C 08 03 A6 */	mtlr r0
/* 81337AC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81337AC8 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7channel7ManagerFPQ23EGG4Heap

# .text:0x154 | 0x81337ACC | size: 0xF0
# ipl::channel::Manager::~Manager()
.fn __dt__Q33ipl7channel7ManagerFv, global
/* 81337ACC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81337AD0 | 7C 08 02 A6 */	mflr r0
/* 81337AD4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81337AD8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81337ADC | 48 2C 19 DD */	bl _savegpr_25
/* 81337AE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81337AE4 | 7C 79 1B 78 */	mr r25, r3
/* 81337AE8 | 7C 9A 23 78 */	mr r26, r4
/* 81337AEC | 41 82 00 B4 */	beq .L_81337BA0
/* 81337AF0 | 3C C0 81 63 */	lis r6, __vt__Q33ipl7channel7Manager@ha
/* 81337AF4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81337AF8 | 38 C6 4A FC */	addi r6, r6, __vt__Q33ipl7channel7Manager@l
/* 81337AFC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81337B00 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 81337B04 | 48 00 13 4D */	bl getDiskChannelLocation__Q33ipl7channel7ManagerFPiPi
/* 81337B08 | 80 79 1B 84 */	lwz r3, 0x1b84(r25)
/* 81337B0C | 48 2C 05 E1 */	bl __dla__FPv
/* 81337B10 | 80 79 1B 88 */	lwz r3, 0x1b88(r25)
/* 81337B14 | 48 2C 05 D9 */	bl __dla__FPv
/* 81337B18 | 80 79 1B 8C */	lwz r3, 0x1b8c(r25)
/* 81337B1C | 48 2C 05 D1 */	bl __dla__FPv
/* 81337B20 | 3B 80 00 00 */	li r28, 0x0
/* 81337B24 | 3B E0 00 00 */	li r31, 0x0
.L_81337B28:
/* 81337B28 | 7F B9 FA 14 */	add r29, r25, r31
/* 81337B2C | 3B 60 00 00 */	li r27, 0x0
/* 81337B30 | 3B C0 00 00 */	li r30, 0x0
.L_81337B34:
/* 81337B34 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81337B38 | 7C 1C 00 00 */	cmpw r28, r0
/* 81337B3C | 41 82 00 34 */	beq .L_81337B70
/* 81337B40 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81337B44 | 7C 1B 00 00 */	cmpw r27, r0
/* 81337B48 | 41 82 00 28 */	beq .L_81337B70
/* 81337B4C | 7C 7D F2 14 */	add r3, r29, r30
/* 81337B50 | 80 63 00 54 */	lwz r3, 0x54(r3)
/* 81337B54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81337B58 | 41 82 00 18 */	beq .L_81337B70
/* 81337B5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81337B60 | 38 80 00 01 */	li r4, 0x1
/* 81337B64 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81337B68 | 7D 89 03 A6 */	mtctr r12
/* 81337B6C | 4E 80 04 21 */	bctrl
.L_81337B70:
/* 81337B70 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81337B74 | 3B DE 00 70 */	addi r30, r30, 0x70
/* 81337B78 | 2C 1B 00 0C */	cmpwi r27, 0xc
/* 81337B7C | 41 80 FF B8 */	blt .L_81337B34
/* 81337B80 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81337B84 | 3B FF 05 40 */	addi r31, r31, 0x540
/* 81337B88 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81337B8C | 41 80 FF 9C */	blt .L_81337B28
/* 81337B90 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81337B94 | 40 81 00 0C */	ble .L_81337BA0
/* 81337B98 | 7F 23 CB 78 */	mr r3, r25
/* 81337B9C | 48 2C 05 49 */	bl __dl__FPv
.L_81337BA0:
/* 81337BA0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81337BA4 | 7F 23 CB 78 */	mr r3, r25
/* 81337BA8 | 48 2C 19 5D */	bl _restgpr_25
/* 81337BAC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81337BB0 | 7C 08 03 A6 */	mtlr r0
/* 81337BB4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81337BB8 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl7channel7ManagerFv

# .text:0x244 | 0x81337BBC | size: 0x20
# ipl::channel::Manager::initManager()
.fn initManager__Q33ipl7channel7ManagerFv, global
/* 81337BBC | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 81337BC0 | 3C 80 81 34 */	lis r4, initManagerTask__Q33ipl7channel7ManagerFPv@ha
/* 81337BC4 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 81337BC8 | 7C 65 1B 78 */	mr r5, r3
/* 81337BCC | 80 66 00 D8 */	lwz r3, 0xd8(r6)
/* 81337BD0 | 38 84 90 40 */	addi r4, r4, initManagerTask__Q33ipl7channel7ManagerFPv@l
/* 81337BD4 | 38 C0 00 00 */	li r6, 0x0
/* 81337BD8 | 48 2C 06 70 */	b fn_815F8248
.endfn initManager__Q33ipl7channel7ManagerFv

# .text:0x264 | 0x81337BDC | size: 0x70
# ipl::channel::Manager::update()
.fn update__Q33ipl7channel7ManagerFv, global
/* 81337BDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81337BE0 | 7C 08 02 A6 */	mflr r0
/* 81337BE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81337BE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81337BEC | 7C 7F 1B 78 */	mr r31, r3
/* 81337BF0 | 88 0D A6 58 */	lbz r0, mDiskChannelFixed__Q33ipl7channel7Manager@sda21(r0)
/* 81337BF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81337BF8 | 41 82 00 08 */	beq .L_81337C00
/* 81337BFC | 48 00 1F 85 */	bl updateDiskState__Q33ipl7channel7ManagerFv
.L_81337C00:
/* 81337C00 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81337C04 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81337C08 | 41 82 00 24 */	beq .L_81337C2C
/* 81337C0C | 40 80 00 2C */	bge .L_81337C38
/* 81337C10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81337C14 | 40 80 00 08 */	bge .L_81337C1C
/* 81337C18 | 48 00 00 20 */	b .L_81337C38
.L_81337C1C:
/* 81337C1C | 7F E3 FB 78 */	mr r3, r31
/* 81337C20 | 48 00 1E 9D */	bl updateInitState__Q33ipl7channel7ManagerFv
/* 81337C24 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 81337C28 | 48 00 00 10 */	b .L_81337C38
.L_81337C2C:
/* 81337C2C | 7F E3 FB 78 */	mr r3, r31
/* 81337C30 | 48 00 1E F5 */	bl updateWaitSCFlush__Q33ipl7channel7ManagerFv
/* 81337C34 | 90 7F 00 08 */	stw r3, 0x8(r31)
.L_81337C38:
/* 81337C38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81337C3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81337C40 | 7C 08 03 A6 */	mtlr r0
/* 81337C44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81337C48 | 4E 80 00 20 */	blr
.endfn update__Q33ipl7channel7ManagerFv

# .text:0x2D4 | 0x81337C4C | size: 0x18
# ipl::channel::Manager::reserveRefresh()
.fn reserveRefresh__Q33ipl7channel7ManagerFv, global
/* 81337C4C | 80 0D A6 50 */	lwz r0, mNumFinished__Q33ipl7channel7Manager@sda21(r0)
/* 81337C50 | 28 00 00 30 */	cmplwi r0, 0x30
/* 81337C54 | 4C 82 00 20 */	bnelr
/* 81337C58 | 38 00 00 01 */	li r0, 0x1
/* 81337C5C | 98 03 1B 80 */	stb r0, 0x1b80(r3)
/* 81337C60 | 4E 80 00 20 */	blr
.endfn reserveRefresh__Q33ipl7channel7ManagerFv

# .text:0x2EC | 0x81337C64 | size: 0xB8
# ipl::channel::Manager::refreshAsync()
.fn refreshAsync__Q33ipl7channel7ManagerFv, global
/* 81337C64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81337C68 | 7C 08 02 A6 */	mflr r0
/* 81337C6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81337C70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81337C74 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81337C78 | 7C 7E 1B 78 */	mr r30, r3
/* 81337C7C | 88 03 1B 80 */	lbz r0, 0x1b80(r3)
/* 81337C80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81337C84 | 41 82 00 80 */	beq .L_81337D04
/* 81337C88 | 38 E0 00 00 */	li r7, 0x0
/* 81337C8C | 39 20 00 00 */	li r9, 0x0
/* 81337C90 | 90 ED A6 50 */	stw r7, mNumFinished__Q33ipl7channel7Manager@sda21(r0)
/* 81337C94 | 38 80 00 00 */	li r4, 0x0
/* 81337C98 | 38 00 00 0C */	li r0, 0xc
/* 81337C9C | 90 ED A6 54 */	stw r7, mNumValidChannel__Q33ipl7channel7Manager@sda21(r0)
/* 81337CA0 | 98 ED A6 58 */	stb r7, mDiskChannelFixed__Q33ipl7channel7Manager@sda21(r0)
/* 81337CA4 | 90 E3 00 08 */	stw r7, 0x8(r3)
.L_81337CA8:
/* 81337CA8 | 7D 03 22 14 */	add r8, r3, r4
/* 81337CAC | 38 A0 00 00 */	li r5, 0x0
/* 81337CB0 | 7C 09 03 A6 */	mtctr r0
.L_81337CB4:
/* 81337CB4 | 7C C8 2A 14 */	add r6, r8, r5
/* 81337CB8 | 38 A5 00 70 */	addi r5, r5, 0x70
/* 81337CBC | 90 E6 00 58 */	stw r7, 0x58(r6)
/* 81337CC0 | 42 00 FF F4 */	bdnz .L_81337CB4
/* 81337CC4 | 39 29 00 01 */	addi r9, r9, 0x1
/* 81337CC8 | 38 84 05 40 */	addi r4, r4, 0x540
/* 81337CCC | 2C 09 00 04 */	cmpwi r9, 0x4
/* 81337CD0 | 41 80 FF D8 */	blt .L_81337CA8
/* 81337CD4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81337CD8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81337CDC | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 81337CE0 | 48 02 00 95 */	bl initManager__Q33ipl8savedata7ManagerFv
/* 81337CE4 | 3C 80 81 34 */	lis r4, initManagerTask__Q33ipl7channel7ManagerFPv@ha
/* 81337CE8 | 80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 81337CEC | 7F C5 F3 78 */	mr r5, r30
/* 81337CF0 | 38 C0 00 00 */	li r6, 0x0
/* 81337CF4 | 38 84 90 40 */	addi r4, r4, initManagerTask__Q33ipl7channel7ManagerFPv@l
/* 81337CF8 | 48 2C 05 51 */	bl fn_815F8248
/* 81337CFC | 38 00 00 00 */	li r0, 0x0
/* 81337D00 | 98 1E 1B 80 */	stb r0, 0x1b80(r30)
.L_81337D04:
/* 81337D04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81337D08 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81337D0C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81337D10 | 7C 08 03 A6 */	mtlr r0
/* 81337D14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81337D18 | 4E 80 00 20 */	blr
.endfn refreshAsync__Q33ipl7channel7ManagerFv

# .text:0x3A4 | 0x81337D1C | size: 0x14
# ipl::channel::Manager::isInitialized() const
.fn isInitialized__Q33ipl7channel7ManagerCFv, global
/* 81337D1C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81337D20 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81337D24 | 80 84 00 94 */	lwz r4, 0x94(r4)
/* 81337D28 | 80 84 04 E0 */	lwz r4, 0x4e0(r4)
/* 81337D2C | 48 00 00 04 */	b isLoadedPage__Q33ipl7channel7ManagerCFi
.endfn isInitialized__Q33ipl7channel7ManagerCFv

# .text:0x3B8 | 0x81337D30 | size: 0x110
# ipl::channel::Manager::isLoadedPage(int) const
.fn isLoadedPage__Q33ipl7channel7ManagerCFi, global
/* 81337D30 | 1C C4 05 40 */	mulli r6, r4, 0x540
/* 81337D34 | 38 00 00 0C */	li r0, 0xc
/* 81337D38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81337D3C | 38 A0 00 00 */	li r5, 0x0
/* 81337D40 | 7C E3 32 14 */	add r7, r3, r6
/* 81337D44 | 7C 09 03 A6 */	mtctr r0
.L_81337D48:
/* 81337D48 | 7C C7 2A 14 */	add r6, r7, r5
/* 81337D4C | 80 06 00 58 */	lwz r0, 0x58(r6)
/* 81337D50 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81337D54 | 41 82 00 0C */	beq .L_81337D60
/* 81337D58 | 38 60 00 00 */	li r3, 0x0
/* 81337D5C | 48 00 00 DC */	b .L_81337E38
.L_81337D60:
/* 81337D60 | 38 A5 00 70 */	addi r5, r5, 0x70
/* 81337D64 | 42 00 FF E4 */	bdnz .L_81337D48
/* 81337D68 | 34 C4 FF FF */	subic. r6, r4, 0x1
/* 81337D6C | 41 80 00 60 */	blt .L_81337DCC
/* 81337D70 | 3C A0 81 61 */	lis r5, lbl_8160D5D0@ha
/* 81337D74 | 85 45 D5 D0 */	lwzu r10, lbl_8160D5D0@l(r5)
/* 81337D78 | 1C C6 05 40 */	mulli r6, r6, 0x540
/* 81337D7C | 38 00 00 03 */	li r0, 0x3
/* 81337D80 | 81 25 00 04 */	lwz r9, 0x4(r5)
/* 81337D84 | 38 E1 00 14 */	addi r7, r1, 0x14
/* 81337D88 | 81 05 00 08 */	lwz r8, 0x8(r5)
/* 81337D8C | 38 A0 00 00 */	li r5, 0x0
/* 81337D90 | 91 41 00 14 */	stw r10, 0x14(r1)
/* 81337D94 | 7D 43 32 14 */	add r10, r3, r6
/* 81337D98 | 91 21 00 18 */	stw r9, 0x18(r1)
/* 81337D9C | 91 01 00 1C */	stw r8, 0x1c(r1)
/* 81337DA0 | 7C 09 03 A6 */	mtctr r0
.L_81337DA4:
/* 81337DA4 | 7C 07 28 2E */	lwzx r0, r7, r5
/* 81337DA8 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 81337DAC | 7C CA 02 14 */	add r6, r10, r0
/* 81337DB0 | 80 06 00 58 */	lwz r0, 0x58(r6)
/* 81337DB4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81337DB8 | 41 82 00 0C */	beq .L_81337DC4
/* 81337DBC | 38 60 00 00 */	li r3, 0x0
/* 81337DC0 | 48 00 00 78 */	b .L_81337E38
.L_81337DC4:
/* 81337DC4 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 81337DC8 | 42 00 FF DC */	bdnz .L_81337DA4
.L_81337DCC:
/* 81337DCC | 38 C4 00 01 */	addi r6, r4, 0x1
/* 81337DD0 | 2C 06 00 04 */	cmpwi r6, 0x4
/* 81337DD4 | 40 80 00 60 */	bge .L_81337E34
/* 81337DD8 | 3C 80 81 61 */	lis r4, lbl_8160D5DC@ha
/* 81337DDC | 85 24 D5 DC */	lwzu r9, lbl_8160D5DC@l(r4)
/* 81337DE0 | 1C C6 05 40 */	mulli r6, r6, 0x540
/* 81337DE4 | 38 00 00 03 */	li r0, 0x3
/* 81337DE8 | 81 04 00 04 */	lwz r8, 0x4(r4)
/* 81337DEC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81337DF0 | 80 E4 00 08 */	lwz r7, 0x8(r4)
/* 81337DF4 | 38 80 00 00 */	li r4, 0x0
/* 81337DF8 | 91 21 00 08 */	stw r9, 0x8(r1)
/* 81337DFC | 7C C3 32 14 */	add r6, r3, r6
/* 81337E00 | 91 01 00 0C */	stw r8, 0xc(r1)
/* 81337E04 | 90 E1 00 10 */	stw r7, 0x10(r1)
/* 81337E08 | 7C 09 03 A6 */	mtctr r0
.L_81337E0C:
/* 81337E0C | 7C 05 20 2E */	lwzx r0, r5, r4
/* 81337E10 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 81337E14 | 7C 66 02 14 */	add r3, r6, r0
/* 81337E18 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 81337E1C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81337E20 | 41 82 00 0C */	beq .L_81337E2C
/* 81337E24 | 38 60 00 00 */	li r3, 0x0
/* 81337E28 | 48 00 00 10 */	b .L_81337E38
.L_81337E2C:
/* 81337E2C | 38 84 00 04 */	addi r4, r4, 0x4
/* 81337E30 | 42 00 FF DC */	bdnz .L_81337E0C
.L_81337E34:
/* 81337E34 | 38 60 00 01 */	li r3, 0x1
.L_81337E38:
/* 81337E38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81337E3C | 4E 80 00 20 */	blr
.endfn isLoadedPage__Q33ipl7channel7ManagerCFi

# .text:0x4C8 | 0x81337E40 | size: 0x24
# ipl::channel::Manager::isLoaded(int, int) const
.fn isLoaded__Q33ipl7channel7ManagerCFii, global
/* 81337E40 | 1C 84 05 40 */	mulli r4, r4, 0x540
/* 81337E44 | 1C 05 00 70 */	mulli r0, r5, 0x70
/* 81337E48 | 7C 63 22 14 */	add r3, r3, r4
/* 81337E4C | 7C 63 02 14 */	add r3, r3, r0
/* 81337E50 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 81337E54 | 38 03 FF FE */	subi r0, r3, 0x2
/* 81337E58 | 7C 00 00 34 */	cntlzw r0, r0
/* 81337E5C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81337E60 | 4E 80 00 20 */	blr
.endfn isLoaded__Q33ipl7channel7ManagerCFii

# .text:0x4EC | 0x81337E64 | size: 0x14
.fn iplChannelManager_81337E64, global
/* 81337E64 | 80 63 15 58 */	lwz r3, 0x1558(r3)
/* 81337E68 | 38 03 FF FE */	subi r0, r3, 0x2
/* 81337E6C | 7C 00 00 34 */	cntlzw r0, r0
/* 81337E70 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81337E74 | 4E 80 00 20 */	blr
.endfn iplChannelManager_81337E64

# .text:0x500 | 0x81337E78 | size: 0x128
# ipl::channel::Manager::hasChannel(unsigned long long, int*, int*) const
.fn hasChannel__Q33ipl7channel7ManagerCFUxPiPi, global
/* 81337E78 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81337E7C | 7C 08 02 A6 */	mflr r0
/* 81337E80 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81337E84 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81337E88 | 48 2C 16 21 */	bl _savegpr_21
/* 81337E8C | 38 00 FF FF */	li r0, -0x1
/* 81337E90 | 7C A0 00 39 */	and. r0, r5, r0
/* 81337E94 | 41 82 00 10 */	beq .L_81337EA4
/* 81337E98 | 39 20 FF FF */	li r9, -0x1
/* 81337E9C | 38 00 FF FF */	li r0, -0x1
/* 81337EA0 | 48 00 00 0C */	b .L_81337EAC
.L_81337EA4:
/* 81337EA4 | 39 20 FF FF */	li r9, -0x1
/* 81337EA8 | 38 00 00 00 */	li r0, 0x0
.L_81337EAC:
/* 81337EAC | 39 40 FF 00 */	li r10, -0x100
/* 81337EB0 | 38 80 FF FF */	li r4, -0x1
/* 81337EB4 | 7D 3D 50 38 */	and r29, r9, r10
/* 81337EB8 | 54 CC 06 3E */	clrlwi r12, r6, 24
/* 81337EBC | 7C 1E 20 38 */	and r30, r0, r4
/* 81337EC0 | 3B 80 00 00 */	li r28, 0x0
/* 81337EC4 | 7C CB E8 38 */	and r11, r6, r29
/* 81337EC8 | 3B 00 00 00 */	li r24, 0x0
/* 81337ECC | 7C AA F0 38 */	and r10, r5, r30
/* 81337ED0 | 3B 20 00 0C */	li r25, 0xc
.L_81337ED4:
/* 81337ED4 | 7F E3 C2 14 */	add r31, r3, r24
/* 81337ED8 | 3B 60 00 00 */	li r27, 0x0
/* 81337EDC | 3A E0 00 00 */	li r23, 0x0
/* 81337EE0 | 7F 29 03 A6 */	mtctr r25
.L_81337EE4:
/* 81337EE4 | 7E BF BA 14 */	add r21, r31, r23
/* 81337EE8 | 88 95 00 24 */	lbz r4, 0x24(r21)
/* 81337EEC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81337EF0 | 41 82 00 74 */	beq .L_81337F64
/* 81337EF4 | 88 95 00 44 */	lbz r4, 0x44(r21)
/* 81337EF8 | 28 04 00 03 */	cmplwi r4, 0x3
/* 81337EFC | 40 82 00 68 */	bne .L_81337F64
/* 81337F00 | 80 95 00 50 */	lwz r4, 0x50(r21)
/* 81337F04 | 83 55 00 4C */	lwz r26, 0x4c(r21)
/* 81337F08 | 7C 96 48 38 */	and r22, r4, r9
/* 81337F0C | 7F 55 00 38 */	and r21, r26, r0
/* 81337F10 | 7C D6 B2 78 */	xor r22, r6, r22
/* 81337F14 | 7C B5 AA 78 */	xor r21, r5, r21
/* 81337F18 | 7E D5 AB 79 */	or. r21, r22, r21
/* 81337F1C | 41 82 00 28 */	beq .L_81337F44
/* 81337F20 | 7C 95 E8 38 */	and r21, r4, r29
/* 81337F24 | 7F 56 F0 38 */	and r22, r26, r30
/* 81337F28 | 7E B5 5A 78 */	xor r21, r21, r11
/* 81337F2C | 7E D6 52 78 */	xor r22, r22, r10
/* 81337F30 | 7E B6 B3 79 */	or. r22, r21, r22
/* 81337F34 | 40 82 00 30 */	bne .L_81337F64
/* 81337F38 | 69 96 00 41 */	xori r22, r12, 0x41
/* 81337F3C | 2C 16 00 00 */	cmpwi r22, 0x0
/* 81337F40 | 40 82 00 24 */	bne .L_81337F64
.L_81337F44:
/* 81337F44 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81337F48 | 41 82 00 08 */	beq .L_81337F50
/* 81337F4C | 93 87 00 00 */	stw r28, 0x0(r7)
.L_81337F50:
/* 81337F50 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81337F54 | 41 82 00 08 */	beq .L_81337F5C
/* 81337F58 | 93 68 00 00 */	stw r27, 0x0(r8)
.L_81337F5C:
/* 81337F5C | 7F 43 D3 78 */	mr r3, r26
/* 81337F60 | 48 00 00 28 */	b .L_81337F88
.L_81337F64:
/* 81337F64 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81337F68 | 3A F7 00 70 */	addi r23, r23, 0x70
/* 81337F6C | 42 00 FF 78 */	bdnz .L_81337EE4
/* 81337F70 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81337F74 | 3B 18 05 40 */	addi r24, r24, 0x540
/* 81337F78 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81337F7C | 41 80 FF 58 */	blt .L_81337ED4
/* 81337F80 | 38 80 00 00 */	li r4, 0x0
/* 81337F84 | 38 60 00 00 */	li r3, 0x0
.L_81337F88:
/* 81337F88 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81337F8C | 48 2C 15 69 */	bl _restgpr_21
/* 81337F90 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81337F94 | 7C 08 03 A6 */	mtlr r0
/* 81337F98 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81337F9C | 4E 80 00 20 */	blr
.endfn hasChannel__Q33ipl7channel7ManagerCFUxPiPi

# .text:0x628 | 0x81337FA0 | size: 0xA0
# ipl::channel::Manager::isEnableUrlJump()
.fn isEnableUrlJump__Q33ipl7channel7ManagerFv, global
/* 81337FA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81337FA4 | 7C 08 02 A6 */	mflr r0
/* 81337FA8 | 3C 80 48 41 */	lis r4, 0x4841
/* 81337FAC | 38 A0 00 00 */	li r5, 0x0
/* 81337FB0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81337FB4 | 38 C4 44 41 */	addi r6, r4, 0x4441
/* 81337FB8 | 38 E0 00 00 */	li r7, 0x0
/* 81337FBC | 39 00 00 00 */	li r8, 0x0
/* 81337FC0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81337FC4 | 7C 7F 1B 78 */	mr r31, r3
/* 81337FC8 | 4B FF FE B1 */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 81337FCC | 7C 80 1B 79 */	or. r0, r4, r3
/* 81337FD0 | 7C 67 1B 78 */	mr r7, r3
/* 81337FD4 | 40 82 00 0C */	bne .L_81337FE0
/* 81337FD8 | 38 60 00 00 */	li r3, 0x0
/* 81337FDC | 48 00 00 50 */	b .L_8133802C
.L_81337FE0:
/* 81337FE0 | 3C A0 00 01 */	lis r5, 0x1
/* 81337FE4 | 7F E3 FB 78 */	mr r3, r31
/* 81337FE8 | 38 05 00 01 */	addi r0, r5, 0x1
/* 81337FEC | 7C 86 23 78 */	mr r6, r4
/* 81337FF0 | 7C E5 03 78 */	or r5, r7, r0
/* 81337FF4 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 81337FF8 | 39 01 00 08 */	addi r8, r1, 0x8
/* 81337FFC | 48 00 22 C1 */	bl titleIDtoPageIndex__Q33ipl7channel7ManagerCFUxPiPi
/* 81338000 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81338004 | 38 00 00 04 */	li r0, 0x4
/* 81338008 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8133800C | 38 60 FF FF */	li r3, -0x1
/* 81338010 | 1C A5 05 40 */	mulli r5, r5, 0x540
/* 81338014 | 1C 84 00 70 */	mulli r4, r4, 0x70
/* 81338018 | 7C BF 2A 14 */	add r5, r31, r5
/* 8133801C | 7C 85 22 14 */	add r4, r5, r4
/* 81338020 | A0 84 00 14 */	lhz r4, 0x14(r4)
/* 81338024 | 7C 00 20 10 */	subfc r0, r0, r4
/* 81338028 | 7C 63 01 90 */	subfze r3, r3
.L_8133802C:
/* 8133802C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81338030 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81338034 | 7C 08 03 A6 */	mtlr r0
/* 81338038 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133803C | 4E 80 00 20 */	blr
.endfn isEnableUrlJump__Q33ipl7channel7ManagerFv

# .text:0x6C8 | 0x81338040 | size: 0x60
# ipl::channel::Manager::setupUrlJump(const char*)
.fn setupUrlJump__Q33ipl7channel7ManagerFPCc, global
/* 81338040 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81338044 | 7C 08 02 A6 */	mflr r0
/* 81338048 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133804C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81338050 | 7C 9F 23 78 */	mr r31, r4
/* 81338054 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81338058 | 7C 7E 1B 78 */	mr r30, r3
/* 8133805C | 4B FF FF 45 */	bl isEnableUrlJump__Q33ipl7channel7ManagerFv
/* 81338060 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81338064 | 41 82 00 20 */	beq .L_81338084
/* 81338068 | 3C 80 48 41 */	lis r4, 0x4841
/* 8133806C | 7F C3 F3 78 */	mr r3, r30
/* 81338070 | 7F E7 FB 78 */	mr r7, r31
/* 81338074 | 38 A0 00 00 */	li r5, 0x0
/* 81338078 | 38 C4 44 41 */	addi r6, r4, 0x4441
/* 8133807C | 48 00 00 25 */	bl setupChannelJump__Q33ipl7channel7ManagerFUxPCc
/* 81338080 | 48 00 00 08 */	b .L_81338088
.L_81338084:
/* 81338084 | 38 60 00 00 */	li r3, 0x0
.L_81338088:
/* 81338088 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133808C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81338090 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81338094 | 7C 08 03 A6 */	mtlr r0
/* 81338098 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133809C | 4E 80 00 20 */	blr
.endfn setupUrlJump__Q33ipl7channel7ManagerFPCc

# .text:0x728 | 0x813380A0 | size: 0xA8
# ipl::channel::Manager::setupChannelJump(unsigned long long, const char*)
.fn setupChannelJump__Q33ipl7channel7ManagerFUxPCc, global
/* 813380A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813380A4 | 7C 08 02 A6 */	mflr r0
/* 813380A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813380AC | 39 01 00 08 */	addi r8, r1, 0x8
/* 813380B0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813380B4 | 7C FF 3B 78 */	mr r31, r7
/* 813380B8 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813380BC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813380C0 | 7C 7E 1B 78 */	mr r30, r3
/* 813380C4 | 4B FF FD B5 */	bl hasChannel__Q33ipl7channel7ManagerCFUxPiPi
/* 813380C8 | 7C 80 1B 79 */	or. r0, r4, r3
/* 813380CC | 40 82 00 0C */	bne .L_813380D8
/* 813380D0 | 38 60 00 00 */	li r3, 0x0
/* 813380D4 | 48 00 00 5C */	b .L_81338130
.L_813380D8:
/* 813380D8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813380DC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813380E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813380E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813380E8 | 90 9E 1B 98 */	stw r4, 0x1b98(r30)
/* 813380EC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813380F0 | 90 1E 1B 9C */	stw r0, 0x1b9c(r30)
/* 813380F4 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 813380F8 | 90 83 04 E0 */	stw r4, 0x4e0(r3)
/* 813380FC | 41 82 00 28 */	beq .L_81338124
/* 81338100 | 7F E4 FB 78 */	mr r4, r31
/* 81338104 | 38 7E 1B A0 */	addi r3, r30, 0x1ba0
/* 81338108 | 38 A0 02 00 */	li r5, 0x200
/* 8133810C | 48 2C A2 B9 */	bl strncpy
/* 81338110 | 38 60 00 00 */	li r3, 0x0
/* 81338114 | 38 00 00 01 */	li r0, 0x1
/* 81338118 | 98 7E 1D 9F */	stb r3, 0x1d9f(r30)
/* 8133811C | 98 1E 1D A0 */	stb r0, 0x1da0(r30)
/* 81338120 | 48 00 00 0C */	b .L_8133812C
.L_81338124:
/* 81338124 | 38 00 00 00 */	li r0, 0x0
/* 81338128 | 98 1E 1D A0 */	stb r0, 0x1da0(r30)
.L_8133812C:
/* 8133812C | 38 60 00 01 */	li r3, 0x1
.L_81338130:
/* 81338130 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81338134 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81338138 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8133813C | 7C 08 03 A6 */	mtlr r0
/* 81338140 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81338144 | 4E 80 00 20 */	blr
.endfn setupChannelJump__Q33ipl7channel7ManagerFUxPCc

# .text:0x7D0 | 0x81338148 | size: 0xC
# ipl::channel::Manager::getDiskThumbnail(bool)
.fn getDiskThumbnail__Q33ipl7channel7ManagerFb, global
/* 81338148 | 7C 85 23 78 */	mr r5, r4
/* 8133814C | 38 80 00 00 */	li r4, 0x0
/* 81338150 | 48 00 1E 60 */	b getDiskBannerData__Q33ipl7channel7ManagerFib
.endfn getDiskThumbnail__Q33ipl7channel7ManagerFb

# .text:0x7DC | 0x81338154 | size: 0xC
# ipl::channel::Manager::getDiskBanner(bool)
.fn getDiskBanner__Q33ipl7channel7ManagerFb, global
/* 81338154 | 7C 85 23 78 */	mr r5, r4
/* 81338158 | 38 80 00 01 */	li r4, 0x1
/* 8133815C | 48 00 1E 54 */	b getDiskBannerData__Q33ipl7channel7ManagerFib
.endfn getDiskBanner__Q33ipl7channel7ManagerFb

# .text:0x7E8 | 0x81338160 | size: 0x80
# ipl::channel::Manager::getDiskSound(bool)
.fn getDiskSound__Q33ipl7channel7ManagerFb, global
/* 81338160 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81338164 | 7C 08 02 A6 */	mflr r0
/* 81338168 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133816C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81338170 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81338174 | 7C 9F 23 78 */	mr r31, r4
/* 81338178 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8133817C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81338180 | 7C 7E 1B 78 */	mr r30, r3
/* 81338184 | 48 00 0C CD */	bl getDiskChannelLocation__Q33ipl7channel7ManagerFPiPi
/* 81338188 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8133818C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81338190 | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 81338194 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 81338198 | 7C 7E 1A 14 */	add r3, r30, r3
/* 8133819C | 7C 63 02 14 */	add r3, r3, r0
/* 813381A0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813381A4 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813381A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813381AC | 40 82 00 0C */	bne .L_813381B8
/* 813381B0 | 38 60 00 00 */	li r3, 0x0
/* 813381B4 | 48 00 00 14 */	b .L_813381C8
.L_813381B8:
/* 813381B8 | 7F C3 F3 78 */	mr r3, r30
/* 813381BC | 7F E5 FB 78 */	mr r5, r31
/* 813381C0 | 38 80 00 02 */	li r4, 0x2
/* 813381C4 | 48 00 1D ED */	bl getDiskBannerData__Q33ipl7channel7ManagerFib
.L_813381C8:
/* 813381C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813381CC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813381D0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813381D4 | 7C 08 03 A6 */	mtlr r0
/* 813381D8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813381DC | 4E 80 00 20 */	blr
.endfn getDiskSound__Q33ipl7channel7ManagerFb

# .text:0x868 | 0x813381E0 | size: 0xC8
# ipl::channel::Manager::loadThumbnailAsync(EGG::Heap*, int, int)
.fn loadThumbnailAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii, global
/* 813381E0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813381E4 | 7C 08 02 A6 */	mflr r0
/* 813381E8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813381EC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813381F0 | 48 2C 12 D1 */	bl _savegpr_27
/* 813381F4 | 1F A5 05 40 */	mulli r29, r5, 0x540
/* 813381F8 | 7C 9C 23 78 */	mr r28, r4
/* 813381FC | 7C 7B 1B 78 */	mr r27, r3
/* 81338200 | 1F C6 00 70 */	mulli r30, r6, 0x70
/* 81338204 | 7C 03 EA 14 */	add r0, r3, r29
/* 81338208 | 7C 80 F2 14 */	add r4, r0, r30
/* 8133820C | 88 04 00 24 */	lbz r0, 0x24(r4)
/* 81338210 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338214 | 41 82 00 10 */	beq .L_81338224
/* 81338218 | 88 04 00 44 */	lbz r0, 0x44(r4)
/* 8133821C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81338220 | 40 82 00 0C */	bne .L_8133822C
.L_81338224:
/* 81338224 | 38 60 00 00 */	li r3, 0x0
/* 81338228 | 48 00 00 68 */	b .L_81338290
.L_8133822C:
/* 8133822C | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 81338230 | 7C A4 2B 78 */	mr r4, r5
/* 81338234 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 81338238 | 7C C5 33 78 */	mr r5, r6
/* 8133823C | 83 E7 00 6C */	lwz r31, 0x6c(r7)
/* 81338240 | 48 00 00 69 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 81338244 | 38 C0 00 00 */	li r6, 0x0
/* 81338248 | 7C 1B EA 14 */	add r0, r27, r29
/* 8133824C | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 81338250 | 3C A0 81 63 */	lis r5, lbl_81634A28@ha
/* 81338254 | 7C 88 23 78 */	mr r8, r4
/* 81338258 | 7C 67 1B 78 */	mr r7, r3
/* 8133825C | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 81338260 | 7D 60 F2 14 */	add r11, r0, r30
/* 81338264 | 7F E3 FB 78 */	mr r3, r31
/* 81338268 | 7F 84 E3 78 */	mr r4, r28
/* 8133826C | 80 0B 00 20 */	lwz r0, 0x20(r11)
/* 81338270 | 38 A5 4A 28 */	addi r5, r5, lbl_81634A28@l
/* 81338274 | 38 CB 00 28 */	addi r6, r11, 0x28
/* 81338278 | 39 40 00 00 */	li r10, 0x0
/* 8133827C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81338280 | 81 2B 00 18 */	lwz r9, 0x18(r11)
/* 81338284 | 80 0B 00 1C */	lwz r0, 0x1c(r11)
/* 81338288 | 7D 29 02 14 */	add r9, r9, r0
/* 8133828C | 48 00 55 6D */	bl readMetaBodyAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi
.L_81338290:
/* 81338290 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338294 | 48 2C 12 79 */	bl _restgpr_27
/* 81338298 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133829C | 7C 08 03 A6 */	mtlr r0
/* 813382A0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813382A4 | 4E 80 00 20 */	blr
.endfn loadThumbnailAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii

# .text:0x930 | 0x813382A8 | size: 0x34
# ipl::channel::Manager::getTitleID(int, int) const
.fn getTitleID__Q33ipl7channel7ManagerCFii, global
/* 813382A8 | 1C 04 05 40 */	mulli r0, r4, 0x540
/* 813382AC | 1C 85 00 70 */	mulli r4, r5, 0x70
/* 813382B0 | 7C 03 02 14 */	add r0, r3, r0
/* 813382B4 | 7C 80 22 14 */	add r4, r0, r4
/* 813382B8 | 88 04 00 24 */	lbz r0, 0x24(r4)
/* 813382BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813382C0 | 41 82 00 10 */	beq .L_813382D0
/* 813382C4 | 80 64 00 4C */	lwz r3, 0x4c(r4)
/* 813382C8 | 80 84 00 50 */	lwz r4, 0x50(r4)
/* 813382CC | 4E 80 00 20 */	blr
.L_813382D0:
/* 813382D0 | 38 80 00 00 */	li r4, 0x0
/* 813382D4 | 38 60 00 00 */	li r3, 0x0
/* 813382D8 | 4E 80 00 20 */	blr
.endfn getTitleID__Q33ipl7channel7ManagerCFii

# .text:0x964 | 0x813382DC | size: 0xC8
# ipl::channel::Manager::loadBannerAsync(EGG::Heap*, int, int)
.fn loadBannerAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii, global
/* 813382DC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813382E0 | 7C 08 02 A6 */	mflr r0
/* 813382E4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813382E8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813382EC | 48 2C 11 D5 */	bl _savegpr_27
/* 813382F0 | 1F A5 05 40 */	mulli r29, r5, 0x540
/* 813382F4 | 7C 9C 23 78 */	mr r28, r4
/* 813382F8 | 7C 7B 1B 78 */	mr r27, r3
/* 813382FC | 1F C6 00 70 */	mulli r30, r6, 0x70
/* 81338300 | 7C 03 EA 14 */	add r0, r3, r29
/* 81338304 | 7C 80 F2 14 */	add r4, r0, r30
/* 81338308 | 88 04 00 24 */	lbz r0, 0x24(r4)
/* 8133830C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338310 | 41 82 00 10 */	beq .L_81338320
/* 81338314 | 88 04 00 44 */	lbz r0, 0x44(r4)
/* 81338318 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8133831C | 40 82 00 0C */	bne .L_81338328
.L_81338320:
/* 81338320 | 38 60 00 00 */	li r3, 0x0
/* 81338324 | 48 00 00 68 */	b .L_8133838C
.L_81338328:
/* 81338328 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 8133832C | 7C A4 2B 78 */	mr r4, r5
/* 81338330 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 81338334 | 7C C5 33 78 */	mr r5, r6
/* 81338338 | 83 E7 00 6C */	lwz r31, 0x6c(r7)
/* 8133833C | 4B FF FF 6D */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 81338340 | 38 C0 00 00 */	li r6, 0x0
/* 81338344 | 7C 1B EA 14 */	add r0, r27, r29
/* 81338348 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 8133834C | 3C A0 81 63 */	lis r5, lbl_81634A37@ha
/* 81338350 | 7C 88 23 78 */	mr r8, r4
/* 81338354 | 7C 67 1B 78 */	mr r7, r3
/* 81338358 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 8133835C | 7D 60 F2 14 */	add r11, r0, r30
/* 81338360 | 7F E3 FB 78 */	mr r3, r31
/* 81338364 | 7F 84 E3 78 */	mr r4, r28
/* 81338368 | 80 0B 00 20 */	lwz r0, 0x20(r11)
/* 8133836C | 38 A5 4A 37 */	addi r5, r5, lbl_81634A37@l
/* 81338370 | 38 CB 00 28 */	addi r6, r11, 0x28
/* 81338374 | 39 40 00 00 */	li r10, 0x0
/* 81338378 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8133837C | 81 2B 00 18 */	lwz r9, 0x18(r11)
/* 81338380 | 80 0B 00 1C */	lwz r0, 0x1c(r11)
/* 81338384 | 7D 29 02 14 */	add r9, r9, r0
/* 81338388 | 48 00 54 71 */	bl readMetaBodyAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi
.L_8133838C:
/* 8133838C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338390 | 48 2C 11 7D */	bl _restgpr_27
/* 81338394 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81338398 | 7C 08 03 A6 */	mtlr r0
/* 8133839C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813383A0 | 4E 80 00 20 */	blr
.endfn loadBannerAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii

# .text:0xA2C | 0x813383A4 | size: 0xD8
# ipl::channel::Manager::loadSoundAsync(EGG::Heap*, int, int)
.fn loadSoundAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii, global
/* 813383A4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813383A8 | 7C 08 02 A6 */	mflr r0
/* 813383AC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813383B0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813383B4 | 48 2C 11 0D */	bl _savegpr_27
/* 813383B8 | 1F A5 05 40 */	mulli r29, r5, 0x540
/* 813383BC | 7C 9C 23 78 */	mr r28, r4
/* 813383C0 | 7C 7B 1B 78 */	mr r27, r3
/* 813383C4 | 1F C6 00 70 */	mulli r30, r6, 0x70
/* 813383C8 | 7C 03 EA 14 */	add r0, r3, r29
/* 813383CC | 7C 80 F2 14 */	add r4, r0, r30
/* 813383D0 | 88 04 00 24 */	lbz r0, 0x24(r4)
/* 813383D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813383D8 | 41 82 00 20 */	beq .L_813383F8
/* 813383DC | 88 04 00 44 */	lbz r0, 0x44(r4)
/* 813383E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813383E4 | 41 82 00 14 */	beq .L_813383F8
/* 813383E8 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 813383EC | 80 04 00 54 */	lwz r0, 0x54(r4)
/* 813383F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813383F4 | 40 82 00 0C */	bne .L_81338400
.L_813383F8:
/* 813383F8 | 38 60 00 00 */	li r3, 0x0
/* 813383FC | 48 00 00 68 */	b .L_81338464
.L_81338400:
/* 81338400 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 81338404 | 7C A4 2B 78 */	mr r4, r5
/* 81338408 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 8133840C | 7C C5 33 78 */	mr r5, r6
/* 81338410 | 83 E7 00 6C */	lwz r31, 0x6c(r7)
/* 81338414 | 4B FF FE 95 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 81338418 | 38 C0 00 00 */	li r6, 0x0
/* 8133841C | 7C 1B EA 14 */	add r0, r27, r29
/* 81338420 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 81338424 | 3C A0 81 63 */	lis r5, lbl_81634A48@ha
/* 81338428 | 7C 88 23 78 */	mr r8, r4
/* 8133842C | 7C 67 1B 78 */	mr r7, r3
/* 81338430 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 81338434 | 7D 60 F2 14 */	add r11, r0, r30
/* 81338438 | 7F E3 FB 78 */	mr r3, r31
/* 8133843C | 7F 84 E3 78 */	mr r4, r28
/* 81338440 | 80 0B 00 20 */	lwz r0, 0x20(r11)
/* 81338444 | 38 A5 4A 48 */	addi r5, r5, lbl_81634A48@l
/* 81338448 | 38 CB 00 28 */	addi r6, r11, 0x28
/* 8133844C | 39 40 00 00 */	li r10, 0x0
/* 81338450 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81338454 | 81 2B 00 18 */	lwz r9, 0x18(r11)
/* 81338458 | 80 0B 00 1C */	lwz r0, 0x1c(r11)
/* 8133845C | 7D 29 02 14 */	add r9, r9, r0
/* 81338460 | 48 00 53 99 */	bl readMetaBodyAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi
.L_81338464:
/* 81338464 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338468 | 48 2C 10 A5 */	bl _restgpr_27
/* 8133846C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81338470 | 7C 08 03 A6 */	mtlr r0
/* 81338474 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81338478 | 4E 80 00 20 */	blr
.endfn loadSoundAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii

# .text:0xB04 | 0x8133847C | size: 0xEC
# ipl::channel::Manager::loadThumbnailRsoAsync(EGG::Heap*, int, int)
.fn loadThumbnailRsoAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii, global
/* 8133847C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81338480 | 7C 08 02 A6 */	mflr r0
/* 81338484 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81338488 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133848C | 48 2C 10 31 */	bl _savegpr_26
/* 81338490 | 1F 85 05 40 */	mulli r28, r5, 0x540
/* 81338494 | 7C 7A 1B 78 */	mr r26, r3
/* 81338498 | 7C 9B 23 78 */	mr r27, r4
/* 8133849C | 7C 63 E2 14 */	add r3, r3, r28
/* 813384A0 | 1F A6 00 70 */	mulli r29, r6, 0x70
/* 813384A4 | 38 83 00 24 */	addi r4, r3, 0x24
/* 813384A8 | 7C 04 E8 AE */	lbzx r0, r4, r29
/* 813384AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813384B0 | 41 82 00 14 */	beq .L_813384C4
/* 813384B4 | 7C 63 EA 14 */	add r3, r3, r29
/* 813384B8 | 88 03 00 44 */	lbz r0, 0x44(r3)
/* 813384BC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813384C0 | 40 82 00 0C */	bne .L_813384CC
.L_813384C4:
/* 813384C4 | 38 60 00 00 */	li r3, 0x0
/* 813384C8 | 48 00 00 88 */	b .L_81338550
.L_813384CC:
/* 813384CC | 7C 04 E8 AE */	lbzx r0, r4, r29
/* 813384D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813384D4 | 41 82 00 14 */	beq .L_813384E8
/* 813384D8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813384DC | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813384E0 | 54 1F 27 3E */	srwi r31, r0, 28
/* 813384E4 | 48 00 00 08 */	b .L_813384EC
.L_813384E8:
/* 813384E8 | 3B E0 00 00 */	li r31, 0x0
.L_813384EC:
/* 813384EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813384F0 | 40 82 00 0C */	bne .L_813384FC
/* 813384F4 | 38 60 00 00 */	li r3, 0x0
/* 813384F8 | 48 00 00 58 */	b .L_81338550
.L_813384FC:
/* 813384FC | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 81338500 | 7C A4 2B 78 */	mr r4, r5
/* 81338504 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 81338508 | 7F 43 D3 78 */	mr r3, r26
/* 8133850C | 83 C7 00 6C */	lwz r30, 0x6c(r7)
/* 81338510 | 7C C5 33 78 */	mr r5, r6
/* 81338514 | 4B FF FD 95 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 81338518 | 7C 1A E2 14 */	add r0, r26, r28
/* 8133851C | 3C A0 81 63 */	lis r5, lbl_81634A58@ha
/* 81338520 | 7C C0 EA 14 */	add r6, r0, r29
/* 81338524 | 7C 8A 23 78 */	mr r10, r4
/* 81338528 | 80 06 00 20 */	lwz r0, 0x20(r6)
/* 8133852C | 7C 69 1B 78 */	mr r9, r3
/* 81338530 | 7F C3 F3 78 */	mr r3, r30
/* 81338534 | 7F 64 DB 78 */	mr r4, r27
/* 81338538 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133853C | 7F E6 FB 78 */	mr r6, r31
/* 81338540 | 38 A5 4A 58 */	addi r5, r5, lbl_81634A58@l
/* 81338544 | 38 E0 00 00 */	li r7, 0x0
/* 81338548 | 39 00 00 00 */	li r8, 0x0
/* 8133854C | 48 00 51 49 */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
.L_81338550:
/* 81338550 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338554 | 48 2C 0F B5 */	bl _restgpr_26
/* 81338558 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133855C | 7C 08 03 A6 */	mtlr r0
/* 81338560 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81338564 | 4E 80 00 20 */	blr
.endfn loadThumbnailRsoAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii

# .text:0xBF0 | 0x81338568 | size: 0xEC
# ipl::channel::Manager::loadBannerRsoAsync(EGG::Heap*, int, int)
.fn loadBannerRsoAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii, global
/* 81338568 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133856C | 7C 08 02 A6 */	mflr r0
/* 81338570 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81338574 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338578 | 48 2C 0F 45 */	bl _savegpr_26
/* 8133857C | 1F 85 05 40 */	mulli r28, r5, 0x540
/* 81338580 | 7C 7A 1B 78 */	mr r26, r3
/* 81338584 | 7C 9B 23 78 */	mr r27, r4
/* 81338588 | 7C 63 E2 14 */	add r3, r3, r28
/* 8133858C | 1F A6 00 70 */	mulli r29, r6, 0x70
/* 81338590 | 38 83 00 24 */	addi r4, r3, 0x24
/* 81338594 | 7C 04 E8 AE */	lbzx r0, r4, r29
/* 81338598 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133859C | 41 82 00 14 */	beq .L_813385B0
/* 813385A0 | 7C 63 EA 14 */	add r3, r3, r29
/* 813385A4 | 88 03 00 44 */	lbz r0, 0x44(r3)
/* 813385A8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813385AC | 40 82 00 0C */	bne .L_813385B8
.L_813385B0:
/* 813385B0 | 38 60 00 00 */	li r3, 0x0
/* 813385B4 | 48 00 00 88 */	b .L_8133863C
.L_813385B8:
/* 813385B8 | 7C 04 E8 AE */	lbzx r0, r4, r29
/* 813385BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813385C0 | 41 82 00 14 */	beq .L_813385D4
/* 813385C4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813385C8 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813385CC | 54 1F 47 3E */	extrwi r31, r0, 4, 4
/* 813385D0 | 48 00 00 08 */	b .L_813385D8
.L_813385D4:
/* 813385D4 | 3B E0 00 00 */	li r31, 0x0
.L_813385D8:
/* 813385D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813385DC | 40 82 00 0C */	bne .L_813385E8
/* 813385E0 | 38 60 00 00 */	li r3, 0x0
/* 813385E4 | 48 00 00 58 */	b .L_8133863C
.L_813385E8:
/* 813385E8 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 813385EC | 7C A4 2B 78 */	mr r4, r5
/* 813385F0 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 813385F4 | 7F 43 D3 78 */	mr r3, r26
/* 813385F8 | 83 C7 00 6C */	lwz r30, 0x6c(r7)
/* 813385FC | 7C C5 33 78 */	mr r5, r6
/* 81338600 | 4B FF FC A9 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 81338604 | 7C 1A E2 14 */	add r0, r26, r28
/* 81338608 | 3C A0 81 63 */	lis r5, lbl_81634A6A@ha
/* 8133860C | 7C C0 EA 14 */	add r6, r0, r29
/* 81338610 | 7C 8A 23 78 */	mr r10, r4
/* 81338614 | 80 06 00 20 */	lwz r0, 0x20(r6)
/* 81338618 | 7C 69 1B 78 */	mr r9, r3
/* 8133861C | 7F C3 F3 78 */	mr r3, r30
/* 81338620 | 7F 64 DB 78 */	mr r4, r27
/* 81338624 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81338628 | 7F E6 FB 78 */	mr r6, r31
/* 8133862C | 38 A5 4A 6A */	addi r5, r5, lbl_81634A6A@l
/* 81338630 | 38 E0 00 00 */	li r7, 0x0
/* 81338634 | 39 00 00 00 */	li r8, 0x0
/* 81338638 | 48 00 50 5D */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
.L_8133863C:
/* 8133863C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338640 | 48 2C 0E C9 */	bl _restgpr_26
/* 81338644 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81338648 | 7C 08 03 A6 */	mtlr r0
/* 8133864C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81338650 | 4E 80 00 20 */	blr
.endfn loadBannerRsoAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii

# .text:0xCDC | 0x81338654 | size: 0xEC
# ipl::channel::Manager::loadThumbnailCSAsync(EGG::Heap*, int, int)
.fn loadThumbnailCSAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii, global
/* 81338654 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81338658 | 7C 08 02 A6 */	mflr r0
/* 8133865C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81338660 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338664 | 48 2C 0E 59 */	bl _savegpr_26
/* 81338668 | 1F 85 05 40 */	mulli r28, r5, 0x540
/* 8133866C | 7C 7A 1B 78 */	mr r26, r3
/* 81338670 | 7C 9B 23 78 */	mr r27, r4
/* 81338674 | 7C 63 E2 14 */	add r3, r3, r28
/* 81338678 | 1F A6 00 70 */	mulli r29, r6, 0x70
/* 8133867C | 38 83 00 24 */	addi r4, r3, 0x24
/* 81338680 | 7C 04 E8 AE */	lbzx r0, r4, r29
/* 81338684 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338688 | 41 82 00 14 */	beq .L_8133869C
/* 8133868C | 7C 63 EA 14 */	add r3, r3, r29
/* 81338690 | 88 03 00 44 */	lbz r0, 0x44(r3)
/* 81338694 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81338698 | 40 82 00 0C */	bne .L_813386A4
.L_8133869C:
/* 8133869C | 38 60 00 00 */	li r3, 0x0
/* 813386A0 | 48 00 00 88 */	b .L_81338728
.L_813386A4:
/* 813386A4 | 7C 04 E8 AE */	lbzx r0, r4, r29
/* 813386A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813386AC | 41 82 00 14 */	beq .L_813386C0
/* 813386B0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813386B4 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813386B8 | 54 1F 67 3E */	extrwi r31, r0, 4, 8
/* 813386BC | 48 00 00 08 */	b .L_813386C4
.L_813386C0:
/* 813386C0 | 3B E0 00 00 */	li r31, 0x0
.L_813386C4:
/* 813386C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813386C8 | 40 82 00 0C */	bne .L_813386D4
/* 813386CC | 38 60 00 00 */	li r3, 0x0
/* 813386D0 | 48 00 00 58 */	b .L_81338728
.L_813386D4:
/* 813386D4 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 813386D8 | 7C A4 2B 78 */	mr r4, r5
/* 813386DC | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 813386E0 | 7F 43 D3 78 */	mr r3, r26
/* 813386E4 | 83 C7 00 6C */	lwz r30, 0x6c(r7)
/* 813386E8 | 7C C5 33 78 */	mr r5, r6
/* 813386EC | 4B FF FB BD */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813386F0 | 7C 1A E2 14 */	add r0, r26, r28
/* 813386F4 | 3C A0 81 63 */	lis r5, lbl_81634A7E@ha
/* 813386F8 | 7C C0 EA 14 */	add r6, r0, r29
/* 813386FC | 7C 8A 23 78 */	mr r10, r4
/* 81338700 | 80 06 00 20 */	lwz r0, 0x20(r6)
/* 81338704 | 7C 69 1B 78 */	mr r9, r3
/* 81338708 | 7F C3 F3 78 */	mr r3, r30
/* 8133870C | 7F 64 DB 78 */	mr r4, r27
/* 81338710 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81338714 | 7F E6 FB 78 */	mr r6, r31
/* 81338718 | 38 A5 4A 7E */	addi r5, r5, lbl_81634A7E@l
/* 8133871C | 38 E0 00 00 */	li r7, 0x0
/* 81338720 | 39 00 00 00 */	li r8, 0x0
/* 81338724 | 48 00 4F 71 */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
.L_81338728:
/* 81338728 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133872C | 48 2C 0D DD */	bl _restgpr_26
/* 81338730 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81338734 | 7C 08 03 A6 */	mtlr r0
/* 81338738 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8133873C | 4E 80 00 20 */	blr
.endfn loadThumbnailCSAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii

# .text:0xDC8 | 0x81338740 | size: 0xEC
# ipl::channel::Manager::loadBannerCSAsync(EGG::Heap*, int, int)
.fn loadBannerCSAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii, global
/* 81338740 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81338744 | 7C 08 02 A6 */	mflr r0
/* 81338748 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8133874C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338750 | 48 2C 0D 6D */	bl _savegpr_26
/* 81338754 | 1F 85 05 40 */	mulli r28, r5, 0x540
/* 81338758 | 7C 7A 1B 78 */	mr r26, r3
/* 8133875C | 7C 9B 23 78 */	mr r27, r4
/* 81338760 | 7C 63 E2 14 */	add r3, r3, r28
/* 81338764 | 1F A6 00 70 */	mulli r29, r6, 0x70
/* 81338768 | 38 83 00 24 */	addi r4, r3, 0x24
/* 8133876C | 7C 04 E8 AE */	lbzx r0, r4, r29
/* 81338770 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338774 | 41 82 00 14 */	beq .L_81338788
/* 81338778 | 7C 63 EA 14 */	add r3, r3, r29
/* 8133877C | 88 03 00 44 */	lbz r0, 0x44(r3)
/* 81338780 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81338784 | 40 82 00 0C */	bne .L_81338790
.L_81338788:
/* 81338788 | 38 60 00 00 */	li r3, 0x0
/* 8133878C | 48 00 00 88 */	b .L_81338814
.L_81338790:
/* 81338790 | 7C 04 E8 AE */	lbzx r0, r4, r29
/* 81338794 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338798 | 41 82 00 14 */	beq .L_813387AC
/* 8133879C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813387A0 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813387A4 | 54 1F 87 3E */	extrwi r31, r0, 4, 12
/* 813387A8 | 48 00 00 08 */	b .L_813387B0
.L_813387AC:
/* 813387AC | 3B E0 00 00 */	li r31, 0x0
.L_813387B0:
/* 813387B0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813387B4 | 40 82 00 0C */	bne .L_813387C0
/* 813387B8 | 38 60 00 00 */	li r3, 0x0
/* 813387BC | 48 00 00 58 */	b .L_81338814
.L_813387C0:
/* 813387C0 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 813387C4 | 7C A4 2B 78 */	mr r4, r5
/* 813387C8 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 813387CC | 7F 43 D3 78 */	mr r3, r26
/* 813387D0 | 83 C7 00 6C */	lwz r30, 0x6c(r7)
/* 813387D4 | 7C C5 33 78 */	mr r5, r6
/* 813387D8 | 4B FF FA D1 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813387DC | 7C 1A E2 14 */	add r0, r26, r28
/* 813387E0 | 3C A0 81 63 */	lis r5, lbl_81634A8F@ha
/* 813387E4 | 7C C0 EA 14 */	add r6, r0, r29
/* 813387E8 | 7C 8A 23 78 */	mr r10, r4
/* 813387EC | 80 06 00 20 */	lwz r0, 0x20(r6)
/* 813387F0 | 7C 69 1B 78 */	mr r9, r3
/* 813387F4 | 7F C3 F3 78 */	mr r3, r30
/* 813387F8 | 7F 64 DB 78 */	mr r4, r27
/* 813387FC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81338800 | 7F E6 FB 78 */	mr r6, r31
/* 81338804 | 38 A5 4A 8F */	addi r5, r5, lbl_81634A8F@l
/* 81338808 | 38 E0 00 00 */	li r7, 0x0
/* 8133880C | 39 00 00 00 */	li r8, 0x0
/* 81338810 | 48 00 4E 85 */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
.L_81338814:
/* 81338814 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338818 | 48 2C 0C F1 */	bl _restgpr_26
/* 8133881C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81338820 | 7C 08 03 A6 */	mtlr r0
/* 81338824 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81338828 | 4E 80 00 20 */	blr
.endfn loadBannerCSAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii

# .text:0xEB4 | 0x8133882C | size: 0xDC
# ipl::channel::Manager::loadLockedMsgAsync(int, int)
.fn loadLockedMsgAsync__Q33ipl7channel7ManagerFii, global
/* 8133882C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81338830 | 7C 08 02 A6 */	mflr r0
/* 81338834 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81338838 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133883C | 48 2C 0C 85 */	bl _savegpr_27
/* 81338840 | 7C 7B 1B 78 */	mr r27, r3
/* 81338844 | 7C 9C 23 78 */	mr r28, r4
/* 81338848 | 7C BD 2B 78 */	mr r29, r5
/* 8133884C | 48 00 06 69 */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 81338850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81338854 | 41 82 00 9C */	beq .L_813388F0
/* 81338858 | 80 7B 1D A4 */	lwz r3, 0x1da4(r27)
/* 8133885C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81338860 | 41 82 00 1C */	beq .L_8133887C
/* 81338864 | 41 82 00 18 */	beq .L_8133887C
/* 81338868 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133886C | 38 80 00 01 */	li r4, 0x1
/* 81338870 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81338874 | 7D 89 03 A6 */	mtctr r12
/* 81338878 | 4E 80 04 21 */	bctrl
.L_8133887C:
/* 8133887C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81338880 | 7F 63 DB 78 */	mr r3, r27
/* 81338884 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81338888 | 7F 84 E3 78 */	mr r4, r28
/* 8133888C | 83 E5 00 6C */	lwz r31, 0x6c(r5)
/* 81338890 | 1F DD 00 70 */	mulli r30, r29, 0x70
/* 81338894 | 7F A5 EB 78 */	mr r5, r29
/* 81338898 | 1F BC 05 40 */	mulli r29, r28, 0x540
/* 8133889C | 4B FF FA 0D */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813388A0 | 38 C0 00 00 */	li r6, 0x0
/* 813388A4 | 7C 1B EA 14 */	add r0, r27, r29
/* 813388A8 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 813388AC | 3C A0 81 63 */	lis r5, lbl_81634AA2@ha
/* 813388B0 | 7C 67 1B 78 */	mr r7, r3
/* 813388B4 | 7D 60 F2 14 */	add r11, r0, r30
/* 813388B8 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 813388BC | 7C 88 23 78 */	mr r8, r4
/* 813388C0 | 7F E3 FB 78 */	mr r3, r31
/* 813388C4 | 38 A5 4A A2 */	addi r5, r5, lbl_81634AA2@l
/* 813388C8 | 80 0B 00 20 */	lwz r0, 0x20(r11)
/* 813388CC | 38 CB 00 28 */	addi r6, r11, 0x28
/* 813388D0 | 39 40 00 00 */	li r10, 0x0
/* 813388D4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813388D8 | 81 2B 00 18 */	lwz r9, 0x18(r11)
/* 813388DC | 80 0B 00 1C */	lwz r0, 0x1c(r11)
/* 813388E0 | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 813388E4 | 7D 29 02 14 */	add r9, r9, r0
/* 813388E8 | 48 00 4F 11 */	bl readMetaBodyAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi
/* 813388EC | 90 7B 1D A4 */	stw r3, 0x1da4(r27)
.L_813388F0:
/* 813388F0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813388F4 | 48 2C 0C 19 */	bl _restgpr_27
/* 813388F8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813388FC | 7C 08 03 A6 */	mtlr r0
/* 81338900 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81338904 | 4E 80 00 20 */	blr
.endfn loadLockedMsgAsync__Q33ipl7channel7ManagerFii

# .text:0xF90 | 0x81338908 | size: 0x24
# ipl::channel::Manager::isLoadedLockedMsg()
.fn isLoadedLockedMsg__Q33ipl7channel7ManagerFv, global
/* 81338908 | 80 63 1D A4 */	lwz r3, 0x1da4(r3)
/* 8133890C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81338910 | 40 82 00 0C */	bne .L_8133891C
/* 81338914 | 38 60 00 01 */	li r3, 0x1
/* 81338918 | 4E 80 00 20 */	blr
.L_8133891C:
/* 8133891C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81338920 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81338924 | 7D 89 03 A6 */	mtctr r12
/* 81338928 | 4E 80 04 20 */	bctr
.endfn isLoadedLockedMsg__Q33ipl7channel7ManagerFv

# .text:0xFB4 | 0x8133892C | size: 0x4
.fn iplChannelMgr_8133892C, local
/* 8133892C | 4E 80 00 20 */	blr
.endfn iplChannelMgr_8133892C

# .text:0xFB8 | 0x81338930 | size: 0x10
# ipl::nand::File::isFinished()
.fn isFinished__Q33ipl4nand4FileFv, global
/* 81338930 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 81338934 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81338938 | 7C 60 19 10 */	subfe r3, r0, r3
/* 8133893C | 4E 80 00 20 */	blr
.endfn isFinished__Q33ipl4nand4FileFv

# .text:0xFC8 | 0x81338940 | size: 0x5C
# ipl::channel::Manager::getLockedMsg()
.fn getLockedMsg__Q33ipl7channel7ManagerFv, global
/* 81338940 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81338944 | 7C 08 02 A6 */	mflr r0
/* 81338948 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133894C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81338950 | 7C 7F 1B 78 */	mr r31, r3
/* 81338954 | 80 63 1D A4 */	lwz r3, 0x1da4(r3)
/* 81338958 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133895C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81338960 | 7D 89 03 A6 */	mtctr r12
/* 81338964 | 4E 80 04 21 */	bctrl
/* 81338968 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8133896C | 41 82 00 0C */	beq .L_81338978
/* 81338970 | 38 60 00 00 */	li r3, 0x0
/* 81338974 | 48 00 00 14 */	b .L_81338988
.L_81338978:
/* 81338978 | 80 9F 1D A4 */	lwz r4, 0x1da4(r31)
/* 8133897C | 7F E3 FB 78 */	mr r3, r31
/* 81338980 | 80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 81338984 | 48 00 19 D9 */	bl getLockedMsgFromBuf__Q33ipl7channel7ManagerCFPCQ33ipl7channel22SChanMgrDiskInMessages
.L_81338988:
/* 81338988 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133898C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81338990 | 7C 08 03 A6 */	mtlr r0
/* 81338994 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81338998 | 4E 80 00 20 */	blr
.endfn getLockedMsg__Q33ipl7channel7ManagerFv

# .text:0x1024 | 0x8133899C | size: 0x8
# ipl::nand::File::checkData()
.fn checkData__Q33ipl4nand4FileFv, global
/* 8133899C | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 813389A0 | 4E 80 00 20 */	blr
.endfn checkData__Q33ipl4nand4FileFv

# .text:0x102C | 0x813389A4 | size: 0x1B8
# ipl::channel::Manager::moveChannelInfo(int, int, int, int)
.fn moveChannelInfo__Q33ipl7channel7ManagerFiiii, global
/* 813389A4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813389A8 | 7C 08 02 A6 */	mflr r0
/* 813389AC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813389B0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813389B4 | 48 2C 0B 01 */	bl _savegpr_24
/* 813389B8 | 1C 04 05 40 */	mulli r0, r4, 0x540
/* 813389BC | 39 60 00 00 */	li r11, 0x0
/* 813389C0 | 7C 99 23 78 */	mr r25, r4
/* 813389C4 | 99 61 00 08 */	stb r11, 0x8(r1)
/* 813389C8 | 7C DB 33 78 */	mr r27, r6
/* 813389CC | 1D 06 05 40 */	mulli r8, r6, 0x540
/* 813389D0 | 7C 83 02 14 */	add r4, r3, r0
/* 813389D4 | 99 61 00 09 */	stb r11, 0x9(r1)
/* 813389D8 | 7C FC 3B 78 */	mr r28, r7
/* 813389DC | 1F E5 00 70 */	mulli r31, r5, 0x70
/* 813389E0 | 99 61 00 0A */	stb r11, 0xa(r1)
/* 813389E4 | 7D 43 42 14 */	add r10, r3, r8
/* 813389E8 | 99 61 00 0B */	stb r11, 0xb(r1)
/* 813389EC | 39 20 00 03 */	li r9, 0x3
/* 813389F0 | 7D 84 FA 14 */	add r12, r4, r31
/* 813389F4 | 1C 87 00 70 */	mulli r4, r7, 0x70
/* 813389F8 | 91 61 00 0C */	stw r11, 0xc(r1)
/* 813389FC | 7C BA 2B 78 */	mr r26, r5
/* 81338A00 | 91 61 00 10 */	stw r11, 0x10(r1)
/* 81338A04 | 38 AC 00 0C */	addi r5, r12, 0xc
/* 81338A08 | 7C EA 22 14 */	add r7, r10, r4
/* 81338A0C | 91 61 00 14 */	stw r11, 0x14(r1)
/* 81338A10 | 39 67 00 24 */	addi r11, r7, 0x24
/* 81338A14 | 39 4C 00 24 */	addi r10, r12, 0x24
/* 81338A18 | 80 CC 00 0C */	lwz r6, 0xc(r12)
/* 81338A1C | 90 C7 00 0C */	stw r6, 0xc(r7)
/* 81338A20 | 80 CC 00 10 */	lwz r6, 0x10(r12)
/* 81338A24 | 90 C7 00 10 */	stw r6, 0x10(r7)
/* 81338A28 | A0 CC 00 14 */	lhz r6, 0x14(r12)
/* 81338A2C | B0 C7 00 14 */	sth r6, 0x14(r7)
/* 81338A30 | A0 CC 00 16 */	lhz r6, 0x16(r12)
/* 81338A34 | B0 C7 00 16 */	sth r6, 0x16(r7)
/* 81338A38 | 80 CC 00 18 */	lwz r6, 0x18(r12)
/* 81338A3C | 90 C7 00 18 */	stw r6, 0x18(r7)
/* 81338A40 | 80 CC 00 1C */	lwz r6, 0x1c(r12)
/* 81338A44 | 90 C7 00 1C */	stw r6, 0x1c(r7)
/* 81338A48 | 80 CC 00 20 */	lwz r6, 0x20(r12)
/* 81338A4C | 90 C7 00 20 */	stw r6, 0x20(r7)
/* 81338A50 | 88 CC 00 24 */	lbz r6, 0x24(r12)
/* 81338A54 | 98 C7 00 24 */	stb r6, 0x24(r7)
/* 81338A58 | 88 CC 00 25 */	lbz r6, 0x25(r12)
/* 81338A5C | 98 C7 00 25 */	stb r6, 0x25(r7)
/* 81338A60 | 88 CC 00 26 */	lbz r6, 0x26(r12)
/* 81338A64 | 98 C7 00 26 */	stb r6, 0x26(r7)
/* 81338A68 | 88 CC 00 27 */	lbz r6, 0x27(r12)
/* 81338A6C | 98 C7 00 27 */	stb r6, 0x27(r7)
/* 81338A70 | 7D 29 03 A6 */	mtctr r9
.L_81338A74:
/* 81338A74 | 80 EA 00 04 */	lwz r7, 0x4(r10)
/* 81338A78 | 84 CA 00 08 */	lwzu r6, 0x8(r10)
/* 81338A7C | 90 EB 00 04 */	stw r7, 0x4(r11)
/* 81338A80 | 94 CB 00 08 */	stwu r6, 0x8(r11)
/* 81338A84 | 42 00 FF F0 */	bdnz .L_81338A74
/* 81338A88 | 80 EA 00 04 */	lwz r7, 0x4(r10)
/* 81338A8C | 7C C3 02 14 */	add r6, r3, r0
/* 81338A90 | 7C 63 42 14 */	add r3, r3, r8
/* 81338A94 | 38 00 00 10 */	li r0, 0x10
/* 81338A98 | 90 EB 00 04 */	stw r7, 0x4(r11)
/* 81338A9C | 7D 06 FA 14 */	add r8, r6, r31
/* 81338AA0 | 7D 23 22 14 */	add r9, r3, r4
/* 81338AA4 | 3B C6 00 58 */	addi r30, r6, 0x58
/* 81338AA8 | 80 E8 00 44 */	lwz r7, 0x44(r8)
/* 81338AAC | 3B A9 00 44 */	addi r29, r9, 0x44
/* 81338AB0 | 80 68 00 48 */	lwz r3, 0x48(r8)
/* 81338AB4 | 38 C9 00 5B */	addi r6, r9, 0x5b
/* 81338AB8 | 38 88 00 5B */	addi r4, r8, 0x5b
/* 81338ABC | 90 E9 00 44 */	stw r7, 0x44(r9)
/* 81338AC0 | 90 69 00 48 */	stw r3, 0x48(r9)
/* 81338AC4 | 80 E8 00 4C */	lwz r7, 0x4c(r8)
/* 81338AC8 | 80 68 00 50 */	lwz r3, 0x50(r8)
/* 81338ACC | 90 E9 00 4C */	stw r7, 0x4c(r9)
/* 81338AD0 | 90 69 00 50 */	stw r3, 0x50(r9)
/* 81338AD4 | 80 68 00 54 */	lwz r3, 0x54(r8)
/* 81338AD8 | 90 69 00 54 */	stw r3, 0x54(r9)
/* 81338ADC | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 81338AE0 | 90 69 00 58 */	stw r3, 0x58(r9)
/* 81338AE4 | 7C 09 03 A6 */	mtctr r0
.L_81338AE8:
/* 81338AE8 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 81338AEC | 8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 81338AF0 | 98 66 00 01 */	stb r3, 0x1(r6)
/* 81338AF4 | 9C 06 00 02 */	stbu r0, 0x2(r6)
/* 81338AF8 | 42 00 FF F0 */	bdnz .L_81338AE8
/* 81338AFC | 7C A3 2B 78 */	mr r3, r5
/* 81338B00 | 38 80 00 00 */	li r4, 0x0
/* 81338B04 | 38 A0 00 70 */	li r5, 0x70
/* 81338B08 | 4B FF 78 2D */	bl memset
/* 81338B0C | 38 00 00 02 */	li r0, 0x2
/* 81338B10 | 3F 00 81 09 */	lis r24, smArg__Q23ipl6System@ha
/* 81338B14 | 7C 1E F9 2E */	stwx r0, r30, r31
/* 81338B18 | 3B 18 90 08 */	addi r24, r24, smArg__Q23ipl6System@l
/* 81338B1C | 7F 64 DB 78 */	mr r4, r27
/* 81338B20 | 7F 85 E3 78 */	mr r5, r28
/* 81338B24 | 80 78 00 94 */	lwz r3, 0x94(r24)
/* 81338B28 | 7F A6 EB 78 */	mr r6, r29
/* 81338B2C | 48 01 F2 79 */	bl setChanInfo__Q33ipl8savedata7ManagerFiiRCQ33ipl7channel12SChannelInfo
/* 81338B30 | 80 78 00 94 */	lwz r3, 0x94(r24)
/* 81338B34 | 7F 24 CB 78 */	mr r4, r25
/* 81338B38 | 7F 45 D3 78 */	mr r5, r26
/* 81338B3C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81338B40 | 48 01 F2 65 */	bl setChanInfo__Q33ipl8savedata7ManagerFiiRCQ33ipl7channel12SChannelInfo
/* 81338B44 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81338B48 | 48 2C 09 B9 */	bl _restgpr_24
/* 81338B4C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81338B50 | 7C 08 03 A6 */	mtlr r0
/* 81338B54 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81338B58 | 4E 80 00 20 */	blr
.endfn moveChannelInfo__Q33ipl7channel7ManagerFiiii

# .text:0x11E4 | 0x81338B5C | size: 0x11C
# ipl::channel::Manager::getTitleName(int, int, int) const
.fn getTitleName__Q33ipl7channel7ManagerCFiii, global
/* 81338B5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81338B60 | 7C 08 02 A6 */	mflr r0
/* 81338B64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81338B68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81338B6C | 48 2C 09 55 */	bl _savegpr_27
/* 81338B70 | 1F 84 05 40 */	mulli r28, r4, 0x540
/* 81338B74 | 7C 7B 1B 78 */	mr r27, r3
/* 81338B78 | 1F A5 00 70 */	mulli r29, r5, 0x70
/* 81338B7C | 7C 03 E2 14 */	add r0, r3, r28
/* 81338B80 | 7F E0 EA 14 */	add r31, r0, r29
/* 81338B84 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 81338B88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338B8C | 40 82 00 0C */	bne .L_81338B98
/* 81338B90 | 38 60 00 00 */	li r3, 0x0
/* 81338B94 | 48 00 00 CC */	b .L_81338C60
.L_81338B98:
/* 81338B98 | 1F C6 00 2A */	mulli r30, r6, 0x2a
/* 81338B9C | 4B FF CE 51 */	bl getLanguage__Q23ipl6SystemFv
/* 81338BA0 | 1C 03 00 54 */	mulli r0, r3, 0x54
/* 81338BA4 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81338BA8 | 7C 1E 02 14 */	add r0, r30, r0
/* 81338BAC | 7C 63 02 14 */	add r3, r3, r0
/* 81338BB0 | A0 03 00 5C */	lhz r0, 0x5c(r3)
/* 81338BB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338BB8 | 41 82 00 20 */	beq .L_81338BD8
/* 81338BBC | 4B FF CE 31 */	bl getLanguage__Q23ipl6SystemFv
/* 81338BC0 | 1C 63 00 54 */	mulli r3, r3, 0x54
/* 81338BC4 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81338BC8 | 7C 00 1A 14 */	add r0, r0, r3
/* 81338BCC | 7C 60 F2 14 */	add r3, r0, r30
/* 81338BD0 | 38 63 00 5C */	addi r3, r3, 0x5c
/* 81338BD4 | 48 00 00 8C */	b .L_81338C60
.L_81338BD8:
/* 81338BD8 | 4B FF CE B5 */	bl getRegion__Q23ipl6SystemFv
/* 81338BDC | 3C A0 81 61 */	lis r5, lbl_8160D2D0@ha
/* 81338BE0 | 7C 9B E2 14 */	add r4, r27, r28
/* 81338BE4 | 54 63 30 32 */	slwi r3, r3, 6
/* 81338BE8 | 38 00 00 10 */	li r0, 0x10
/* 81338BEC | 38 A5 D2 D0 */	addi r5, r5, lbl_8160D2D0@l
/* 81338BF0 | 7C DD 22 14 */	add r6, r29, r4
/* 81338BF4 | 7D 05 1A 14 */	add r8, r5, r3
/* 81338BF8 | 38 60 00 00 */	li r3, 0x0
/* 81338BFC | 7C 09 03 A6 */	mtctr r0
.L_81338C00:
/* 81338C00 | 7C E8 18 2E */	lwzx r7, r8, r3
/* 81338C04 | 80 06 00 10 */	lwz r0, 0x10(r6)
/* 81338C08 | 1C A7 00 54 */	mulli r5, r7, 0x54
/* 81338C0C | 7C 00 F2 14 */	add r0, r0, r30
/* 81338C10 | 7C 85 02 14 */	add r4, r5, r0
/* 81338C14 | A0 04 00 5C */	lhz r0, 0x5c(r4)
/* 81338C18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338C1C | 41 82 00 18 */	beq .L_81338C34
/* 81338C20 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81338C24 | 7C 00 2A 14 */	add r0, r0, r5
/* 81338C28 | 7C 60 F2 14 */	add r3, r0, r30
/* 81338C2C | 38 63 00 5C */	addi r3, r3, 0x5c
/* 81338C30 | 48 00 00 30 */	b .L_81338C60
.L_81338C34:
/* 81338C34 | 3C 07 00 01 */	addis r0, r7, 0x1
/* 81338C38 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81338C3C | 41 82 00 0C */	beq .L_81338C48
/* 81338C40 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81338C44 | 42 00 FF BC */	bdnz .L_81338C00
.L_81338C48:
/* 81338C48 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 81338C4C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81338C50 | 1C 00 00 54 */	mulli r0, r0, 0x54
/* 81338C54 | 7C 03 02 14 */	add r0, r3, r0
/* 81338C58 | 7C 60 F2 14 */	add r3, r0, r30
/* 81338C5C | 38 63 00 5C */	addi r3, r3, 0x5c
.L_81338C60:
/* 81338C60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81338C64 | 48 2C 08 A9 */	bl _restgpr_27
/* 81338C68 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81338C6C | 7C 08 03 A6 */	mtlr r0
/* 81338C70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81338C74 | 4E 80 00 20 */	blr
.endfn getTitleName__Q33ipl7channel7ManagerCFiii

# .text:0x1300 | 0x81338C78 | size: 0x98
# ipl::channel::Manager::checkNeedUpdate(int, int) const
.fn checkNeedUpdate__Q33ipl7channel7ManagerCFii, global
/* 81338C78 | 1C E4 05 40 */	mulli r7, r4, 0x540
/* 81338C7C | 1C C5 00 70 */	mulli r6, r5, 0x70
/* 81338C80 | 7C 03 3A 14 */	add r0, r3, r7
/* 81338C84 | 7C A0 32 14 */	add r5, r0, r6
/* 81338C88 | 88 05 00 24 */	lbz r0, 0x24(r5)
/* 81338C8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338C90 | 41 82 00 78 */	beq .L_81338D08
/* 81338C94 | 88 05 00 44 */	lbz r0, 0x44(r5)
/* 81338C98 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81338C9C | 40 82 00 6C */	bne .L_81338D08
/* 81338CA0 | 80 85 00 4C */	lwz r4, 0x4c(r5)
/* 81338CA4 | 3C 04 FF FF */	subis r0, r4, 0x1
/* 81338CA8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81338CAC | 40 82 00 5C */	bne .L_81338D08
/* 81338CB0 | 80 05 00 50 */	lwz r0, 0x50(r5)
/* 81338CB4 | 54 05 00 2E */	clrrwi r5, r0, 8
/* 81338CB8 | 3C 05 B7 BF */	subis r0, r5, 0x4841
/* 81338CBC | 28 00 47 00 */	cmplwi r0, 0x4700
/* 81338CC0 | 41 82 00 0C */	beq .L_81338CCC
/* 81338CC4 | 28 00 46 00 */	cmplwi r0, 0x4600
/* 81338CC8 | 40 82 00 18 */	bne .L_81338CE0
.L_81338CCC:
/* 81338CCC | 7C 03 3A 14 */	add r0, r3, r7
/* 81338CD0 | 7C 80 32 14 */	add r4, r0, r6
/* 81338CD4 | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 81338CD8 | 28 00 00 05 */	cmplwi r0, 0x5
/* 81338CDC | 40 81 00 24 */	ble .L_81338D00
.L_81338CE0:
/* 81338CE0 | 3C 05 B7 BF */	subis r0, r5, 0x4841
/* 81338CE4 | 28 00 42 00 */	cmplwi r0, 0x4200
/* 81338CE8 | 40 82 00 20 */	bne .L_81338D08
/* 81338CEC | 7C 03 3A 14 */	add r0, r3, r7
/* 81338CF0 | 7C 60 32 14 */	add r3, r0, r6
/* 81338CF4 | A0 03 00 14 */	lhz r0, 0x14(r3)
/* 81338CF8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81338CFC | 41 81 00 0C */	bgt .L_81338D08
.L_81338D00:
/* 81338D00 | 38 60 00 01 */	li r3, 0x1
/* 81338D04 | 4E 80 00 20 */	blr
.L_81338D08:
/* 81338D08 | 38 60 00 00 */	li r3, 0x0
/* 81338D0C | 4E 80 00 20 */	blr
.endfn checkNeedUpdate__Q33ipl7channel7ManagerCFii

# .text:0x1398 | 0x81338D10 | size: 0x68
# ipl::channel::Manager::isParentalRestricted(int, int) const
.fn isParentalRestricted__Q33ipl7channel7ManagerCFii, global
/* 81338D10 | 1C 04 05 40 */	mulli r0, r4, 0x540
/* 81338D14 | 1C 85 00 70 */	mulli r4, r5, 0x70
/* 81338D18 | 7C 03 02 14 */	add r0, r3, r0
/* 81338D1C | 7C 80 22 14 */	add r4, r0, r4
/* 81338D20 | 88 04 00 24 */	lbz r0, 0x24(r4)
/* 81338D24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338D28 | 41 82 00 48 */	beq .L_81338D70
/* 81338D2C | 88 04 00 44 */	lbz r0, 0x44(r4)
/* 81338D30 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81338D34 | 40 82 00 3C */	bne .L_81338D70
/* 81338D38 | 80 64 00 4C */	lwz r3, 0x4c(r4)
/* 81338D3C | 3C 03 FF FF */	subis r0, r3, 0x1
/* 81338D40 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81338D44 | 40 82 00 2C */	bne .L_81338D70
/* 81338D48 | 80 04 00 50 */	lwz r0, 0x50(r4)
/* 81338D4C | 54 03 00 2E */	clrrwi r3, r0, 8
/* 81338D50 | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 81338D54 | 28 00 47 00 */	cmplwi r0, 0x4700
/* 81338D58 | 40 82 00 18 */	bne .L_81338D70
/* 81338D5C | A0 04 00 14 */	lhz r0, 0x14(r4)
/* 81338D60 | 28 00 00 06 */	cmplwi r0, 0x6
/* 81338D64 | 41 80 00 0C */	blt .L_81338D70
/* 81338D68 | 38 60 00 01 */	li r3, 0x1
/* 81338D6C | 4E 80 00 20 */	blr
.L_81338D70:
/* 81338D70 | 38 60 00 00 */	li r3, 0x0
/* 81338D74 | 4E 80 00 20 */	blr
.endfn isParentalRestricted__Q33ipl7channel7ManagerCFii

# .text:0x1400 | 0x81338D78 | size: 0x4C
# ipl::channel::Manager::isInternetChannel(int, int) const
.fn isInternetChannel__Q33ipl7channel7ManagerCFii, global
/* 81338D78 | 1C 04 05 40 */	mulli r0, r4, 0x540
/* 81338D7C | 1C 85 00 70 */	mulli r4, r5, 0x70
/* 81338D80 | 7C 03 02 14 */	add r0, r3, r0
/* 81338D84 | 7C 60 22 14 */	add r3, r0, r4
/* 81338D88 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 81338D8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338D90 | 41 82 00 2C */	beq .L_81338DBC
/* 81338D94 | 88 03 00 44 */	lbz r0, 0x44(r3)
/* 81338D98 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81338D9C | 40 82 00 20 */	bne .L_81338DBC
/* 81338DA0 | 80 03 00 50 */	lwz r0, 0x50(r3)
/* 81338DA4 | 54 03 00 2E */	clrrwi r3, r0, 8
/* 81338DA8 | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 81338DAC | 28 00 44 00 */	cmplwi r0, 0x4400
/* 81338DB0 | 40 82 00 0C */	bne .L_81338DBC
/* 81338DB4 | 38 60 00 01 */	li r3, 0x1
/* 81338DB8 | 4E 80 00 20 */	blr
.L_81338DBC:
/* 81338DBC | 38 60 00 00 */	li r3, 0x0
/* 81338DC0 | 4E 80 00 20 */	blr
.endfn isInternetChannel__Q33ipl7channel7ManagerCFii

# .text:0x144C | 0x81338DC4 | size: 0x8C
# ipl::channel::Manager::setDiskChannelName()
.fn setDiskChannelName__Q33ipl7channel7ManagerFv, global
/* 81338DC4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81338DC8 | 7C 08 02 A6 */	mflr r0
/* 81338DCC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81338DD0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338DD4 | 48 2C 06 ED */	bl _savegpr_27
/* 81338DD8 | 7C 7B 1B 78 */	mr r27, r3
/* 81338DDC | 38 81 00 0C */	addi r4, r1, 0xc
/* 81338DE0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81338DE4 | 48 00 00 6D */	bl getDiskChannelLocation__Q33ipl7channel7ManagerFPiPi
/* 81338DE8 | 3B 80 00 00 */	li r28, 0x0
/* 81338DEC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81338DF0 | 7F 9E E3 78 */	mr r30, r28
/* 81338DF4 | 3B E0 00 00 */	li r31, 0x0
/* 81338DF8 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
.L_81338DFC:
/* 81338DFC | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 81338E00 | 38 80 00 00 */	li r4, 0x0
/* 81338E04 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81338E08 | 48 00 59 B5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81338E0C | 7C BB FA 14 */	add r5, r27, r31
/* 81338E10 | 7C 64 1B 78 */	mr r4, r3
/* 81338E14 | 38 65 15 D8 */	addi r3, r5, 0x15d8
/* 81338E18 | 38 A0 00 14 */	li r5, 0x14
/* 81338E1C | 48 2C F8 C9 */	bl fn_816086E4
/* 81338E20 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81338E24 | 7C 7B FA 14 */	add r3, r27, r31
/* 81338E28 | 28 1C 00 09 */	cmplwi r28, 0x9
/* 81338E2C | B3 C3 16 00 */	sth r30, 0x1600(r3)
/* 81338E30 | 3B FF 00 54 */	addi r31, r31, 0x54
/* 81338E34 | 40 81 FF C8 */	ble .L_81338DFC
/* 81338E38 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81338E3C | 48 2C 06 D1 */	bl _restgpr_27
/* 81338E40 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81338E44 | 7C 08 03 A6 */	mtlr r0
/* 81338E48 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81338E4C | 4E 80 00 20 */	blr
.endfn setDiskChannelName__Q33ipl7channel7ManagerFv

# .text:0x14D8 | 0x81338E50 | size: 0x64
# ipl::channel::Manager::getDiskChannelLocation(int*, int*)
.fn getDiskChannelLocation__Q33ipl7channel7ManagerFPiPi, global
/* 81338E50 | 38 E0 00 00 */	li r7, 0x0
/* 81338E54 | 39 40 00 00 */	li r10, 0x0
/* 81338E58 | 90 E5 00 00 */	stw r7, 0x0(r5)
/* 81338E5C | 38 C0 00 00 */	li r6, 0x0
/* 81338E60 | 38 00 00 0C */	li r0, 0xc
/* 81338E64 | 90 E4 00 00 */	stw r7, 0x0(r4)
.L_81338E68:
/* 81338E68 | 7D 23 32 14 */	add r9, r3, r6
/* 81338E6C | 39 60 00 00 */	li r11, 0x0
/* 81338E70 | 38 E0 00 00 */	li r7, 0x0
/* 81338E74 | 7C 09 03 A6 */	mtctr r0
.L_81338E78:
/* 81338E78 | 7D 09 3A 14 */	add r8, r9, r7
/* 81338E7C | 81 08 00 48 */	lwz r8, 0x48(r8)
/* 81338E80 | 2C 08 00 0F */	cmpwi r8, 0xf
/* 81338E84 | 40 82 00 10 */	bne .L_81338E94
/* 81338E88 | 91 44 00 00 */	stw r10, 0x0(r4)
/* 81338E8C | 91 65 00 00 */	stw r11, 0x0(r5)
/* 81338E90 | 4E 80 00 20 */	blr
.L_81338E94:
/* 81338E94 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 81338E98 | 38 E7 00 70 */	addi r7, r7, 0x70
/* 81338E9C | 42 00 FF DC */	bdnz .L_81338E78
/* 81338EA0 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 81338EA4 | 38 C6 05 40 */	addi r6, r6, 0x540
/* 81338EA8 | 2C 0A 00 04 */	cmpwi r10, 0x4
/* 81338EAC | 41 80 FF BC */	blt .L_81338E68
/* 81338EB0 | 4E 80 00 20 */	blr
.endfn getDiskChannelLocation__Q33ipl7channel7ManagerFPiPi

# .text:0x153C | 0x81338EB4 | size: 0xC4
# ipl::channel::Manager::getUnlockChannelState(int, int) const
.fn getUnlockChannelState__Q33ipl7channel7ManagerCFii, global
/* 81338EB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81338EB8 | 7C 08 02 A6 */	mflr r0
/* 81338EBC | 1C C5 00 70 */	mulli r6, r5, 0x70
/* 81338EC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81338EC4 | 1C 04 05 40 */	mulli r0, r4, 0x540
/* 81338EC8 | 7C 03 02 14 */	add r0, r3, r0
/* 81338ECC | 7C C0 32 14 */	add r6, r0, r6
/* 81338ED0 | 88 06 00 24 */	lbz r0, 0x24(r6)
/* 81338ED4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338ED8 | 41 82 00 10 */	beq .L_81338EE8
/* 81338EDC | 88 06 00 44 */	lbz r0, 0x44(r6)
/* 81338EE0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81338EE4 | 40 82 00 0C */	bne .L_81338EF0
.L_81338EE8:
/* 81338EE8 | 38 60 00 00 */	li r3, 0x0
/* 81338EEC | 48 00 00 7C */	b .L_81338F68
.L_81338EF0:
/* 81338EF0 | 4B FF F3 B9 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 81338EF4 | 7C 80 1B 79 */	or. r0, r4, r3
/* 81338EF8 | 7C 65 1B 78 */	mr r5, r3
/* 81338EFC | 40 82 00 0C */	bne .L_81338F08
/* 81338F00 | 38 60 00 00 */	li r3, 0x0
/* 81338F04 | 48 00 00 64 */	b .L_81338F68
.L_81338F08:
/* 81338F08 | 38 00 FF FF */	li r0, -0x1
/* 81338F0C | 7C 60 00 38 */	and r0, r3, r0
/* 81338F10 | 6C 00 00 01 */	xoris r0, r0, 0x1
/* 81338F14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81338F18 | 40 82 00 4C */	bne .L_81338F64
/* 81338F1C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81338F20 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81338F24 | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 81338F28 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 81338F2C | 2C 00 00 48 */	cmpwi r0, 0x48
/* 81338F30 | 40 82 00 0C */	bne .L_81338F3C
/* 81338F34 | 38 60 00 04 */	li r3, 0x4
/* 81338F38 | 48 00 00 30 */	b .L_81338F68
.L_81338F3C:
/* 81338F3C | 2C 00 00 46 */	cmpwi r0, 0x46
/* 81338F40 | 40 82 00 0C */	bne .L_81338F4C
/* 81338F44 | 38 60 00 03 */	li r3, 0x3
/* 81338F48 | 48 00 00 20 */	b .L_81338F68
.L_81338F4C:
/* 81338F4C | 7C 86 23 78 */	mr r6, r4
/* 81338F50 | 48 02 7C 01 */	bl isTitleAvailable__Q33ipl3bs27ManagerCFUx
/* 81338F54 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81338F58 | 7C 60 19 10 */	subfe r3, r0, r3
/* 81338F5C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81338F60 | 48 00 00 08 */	b .L_81338F68
.L_81338F64:
/* 81338F64 | 38 60 00 00 */	li r3, 0x0
.L_81338F68:
/* 81338F68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81338F6C | 7C 08 03 A6 */	mtlr r0
/* 81338F70 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81338F74 | 4E 80 00 20 */	blr
.endfn getUnlockChannelState__Q33ipl7channel7ManagerCFii

# .text:0x1600 | 0x81338F78 | size: 0x54
# ipl::channel::Manager::getUnlockTicket(int, int, ESTicketView*) const
.fn getUnlockTicket__Q33ipl7channel7ManagerCFiiP12ESTicketView, global
/* 81338F78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81338F7C | 7C 08 02 A6 */	mflr r0
/* 81338F80 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 81338F84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81338F88 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 81338F8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81338F90 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81338F94 | 7C DE 33 78 */	mr r30, r6
/* 81338F98 | 83 E7 00 A8 */	lwz r31, 0xa8(r7)
/* 81338F9C | 4B FF F3 0D */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 81338FA0 | 7C 65 1B 78 */	mr r5, r3
/* 81338FA4 | 7C 86 23 78 */	mr r6, r4
/* 81338FA8 | 7F E3 FB 78 */	mr r3, r31
/* 81338FAC | 7F C7 F3 78 */	mr r7, r30
/* 81338FB0 | 48 02 7C 15 */	bl getTicketFromNand__Q33ipl3bs27ManagerCFUxP12ESTicketView
/* 81338FB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81338FB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81338FBC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81338FC0 | 7C 08 03 A6 */	mtlr r0
/* 81338FC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81338FC8 | 4E 80 00 20 */	blr
.endfn getUnlockTicket__Q33ipl7channel7ManagerCFiiP12ESTicketView

# .text:0x1654 | 0x81338FCC | size: 0x54
# ipl::channel::Manager::loadLockedTitleAsync(int, int, ESTicketView&) const
.fn loadLockedTitleAsync__Q33ipl7channel7ManagerCFiiR12ESTicketView, global
/* 81338FCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81338FD0 | 7C 08 02 A6 */	mflr r0
/* 81338FD4 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 81338FD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81338FDC | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 81338FE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81338FE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81338FE8 | 7C DE 33 78 */	mr r30, r6
/* 81338FEC | 83 E7 00 A8 */	lwz r31, 0xa8(r7)
/* 81338FF0 | 4B FF F2 B9 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 81338FF4 | 7C 65 1B 78 */	mr r5, r3
/* 81338FF8 | 7C 86 23 78 */	mr r6, r4
/* 81338FFC | 7F E3 FB 78 */	mr r3, r31
/* 81339000 | 7F C7 F3 78 */	mr r7, r30
/* 81339004 | 48 02 7B D1 */	bl loadLockedTitleAsync__Q33ipl3bs27ManagerFUxR12ESTicketView
/* 81339008 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133900C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81339010 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81339014 | 7C 08 03 A6 */	mtlr r0
/* 81339018 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133901C | 4E 80 00 20 */	blr
.endfn loadLockedTitleAsync__Q33ipl7channel7ManagerCFiiR12ESTicketView

# .text:0x16A8 | 0x81339020 | size: 0x20
# ipl::channel::Manager::clearRsoExBuf(int, int)
.fn clearRsoExBuf__Q33ipl7channel7ManagerFii, global
/* 81339020 | 1C C4 05 40 */	mulli r6, r4, 0x540
/* 81339024 | 38 80 00 00 */	li r4, 0x0
/* 81339028 | 1C 05 00 70 */	mulli r0, r5, 0x70
/* 8133902C | 38 A0 00 20 */	li r5, 0x20
/* 81339030 | 7C 63 32 14 */	add r3, r3, r6
/* 81339034 | 7C 63 02 14 */	add r3, r3, r0
/* 81339038 | 38 63 00 5C */	addi r3, r3, 0x5c
/* 8133903C | 4B FF 72 F8 */	b memset
.endfn clearRsoExBuf__Q33ipl7channel7ManagerFii

# .text:0x16C8 | 0x81339040 | size: 0x180
# ipl::channel::Manager::initManagerTask(void*)
.fn initManagerTask__Q33ipl7channel7ManagerFPv, global
/* 81339040 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81339044 | 7C 08 02 A6 */	mflr r0
/* 81339048 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8133904C | 39 61 00 60 */	addi r11, r1, 0x60
/* 81339050 | 48 2C 04 59 */	bl _savegpr_21
/* 81339054 | 7C 7D 1B 78 */	mr r29, r3
/* 81339058 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8133905C | 48 00 09 F5 */	bl makeLoadOrderList__Q33ipl7channel7ManagerCFPi
/* 81339060 | 3F E0 81 61 */	lis r31, lbl_8160D5E8@ha
/* 81339064 | 3E E0 81 61 */	lis r23, lbl_8160D5F4@ha
/* 81339068 | 3B 01 00 08 */	addi r24, r1, 0x8
/* 8133906C | 3A C1 00 14 */	addi r22, r1, 0x14
/* 81339070 | 3B C1 00 20 */	addi r30, r1, 0x20
/* 81339074 | 3B FF D5 E8 */	addi r31, r31, lbl_8160D5E8@l
/* 81339078 | 3A F7 D5 F4 */	addi r23, r23, lbl_8160D5F4@l
/* 8133907C | 3B 80 00 00 */	li r28, 0x0
/* 81339080 | 3B 40 00 00 */	li r26, 0x0
.L_81339084:
/* 81339084 | 7F 7E D0 2E */	lwzx r27, r30, r26
/* 81339088 | 3B 20 00 00 */	li r25, 0x0
.L_8133908C:
/* 8133908C | 7F A3 EB 78 */	mr r3, r29
/* 81339090 | 7F 64 DB 78 */	mr r4, r27
/* 81339094 | 7F 25 CB 78 */	mr r5, r25
/* 81339098 | 48 00 04 C5 */	bl loadMetaHeaderAsync__Q33ipl7channel7ManagerFii
/* 8133909C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813390A0 | 2C 19 00 0C */	cmpwi r25, 0xc
/* 813390A4 | 41 80 FF E8 */	blt .L_8133908C
/* 813390A8 | 34 1B FF FF */	subic. r0, r27, 0x1
/* 813390AC | 41 80 00 44 */	blt .L_813390F0
/* 813390B0 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813390B4 | 3A A0 00 00 */	li r21, 0x0
/* 813390B8 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813390BC | 3B 20 00 00 */	li r25, 0x0
/* 813390C0 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 813390C4 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813390C8 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813390CC | 90 01 00 1C */	stw r0, 0x1c(r1)
.L_813390D0:
/* 813390D0 | 7C B6 C8 2E */	lwzx r5, r22, r25
/* 813390D4 | 7F A3 EB 78 */	mr r3, r29
/* 813390D8 | 38 9B FF FF */	subi r4, r27, 0x1
/* 813390DC | 48 00 04 81 */	bl loadMetaHeaderAsync__Q33ipl7channel7ManagerFii
/* 813390E0 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 813390E4 | 3B 39 00 04 */	addi r25, r25, 0x4
/* 813390E8 | 2C 15 00 03 */	cmpwi r21, 0x3
/* 813390EC | 41 80 FF E4 */	blt .L_813390D0
.L_813390F0:
/* 813390F0 | 38 1B 00 01 */	addi r0, r27, 0x1
/* 813390F4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813390F8 | 40 80 00 44 */	bge .L_8133913C
/* 813390FC | 80 97 00 00 */	lwz r4, 0x0(r23)
/* 81339100 | 3A A0 00 00 */	li r21, 0x0
/* 81339104 | 80 77 00 04 */	lwz r3, 0x4(r23)
/* 81339108 | 3B 20 00 00 */	li r25, 0x0
/* 8133910C | 80 17 00 08 */	lwz r0, 0x8(r23)
/* 81339110 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81339114 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81339118 | 90 01 00 10 */	stw r0, 0x10(r1)
.L_8133911C:
/* 8133911C | 7C B8 C8 2E */	lwzx r5, r24, r25
/* 81339120 | 7F A3 EB 78 */	mr r3, r29
/* 81339124 | 38 9B 00 01 */	addi r4, r27, 0x1
/* 81339128 | 48 00 04 35 */	bl loadMetaHeaderAsync__Q33ipl7channel7ManagerFii
/* 8133912C | 3A B5 00 01 */	addi r21, r21, 0x1
/* 81339130 | 3B 39 00 04 */	addi r25, r25, 0x4
/* 81339134 | 2C 15 00 03 */	cmpwi r21, 0x3
/* 81339138 | 41 80 FF E4 */	blt .L_8133911C
.L_8133913C:
/* 8133913C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81339140 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 81339144 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81339148 | 41 80 FF 3C */	blt .L_81339084
/* 8133914C | 48 23 17 49 */	bl fn_8156A894
/* 81339150 | 7C 80 1B 79 */	or. r0, r4, r3
/* 81339154 | 7C 65 1B 78 */	mr r5, r3
/* 81339158 | 41 82 00 1C */	beq .L_81339174
/* 8133915C | 90 7D 15 4C */	stw r3, 0x154c(r29)
/* 81339160 | 7F A3 EB 78 */	mr r3, r29
/* 81339164 | 7C 86 23 78 */	mr r6, r4
/* 81339168 | 90 9D 15 50 */	stw r4, 0x1550(r29)
/* 8133916C | 48 00 00 91 */	bl iplChannelManager_813391FC
/* 81339170 | 48 00 00 38 */	b .L_813391A8
.L_81339174:
/* 81339174 | 80 7D 15 54 */	lwz r3, 0x1554(r29)
/* 81339178 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133917C | 41 82 00 1C */	beq .L_81339198
/* 81339180 | 41 82 00 18 */	beq .L_81339198
/* 81339184 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81339188 | 38 80 00 01 */	li r4, 0x1
/* 8133918C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81339190 | 7D 89 03 A6 */	mtctr r12
/* 81339194 | 4E 80 04 21 */	bctrl
.L_81339198:
/* 81339198 | 38 7D 15 0C */	addi r3, r29, 0x150c
/* 8133919C | 38 80 00 00 */	li r4, 0x0
/* 813391A0 | 38 A0 00 70 */	li r5, 0x70
/* 813391A4 | 4B FF 71 91 */	bl memset
.L_813391A8:
/* 813391A8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813391AC | 48 2C 03 49 */	bl _restgpr_21
/* 813391B0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813391B4 | 7C 08 03 A6 */	mtlr r0
/* 813391B8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813391BC | 4E 80 00 20 */	blr
.endfn initManagerTask__Q33ipl7channel7ManagerFPv

# .text:0x1848 | 0x813391C0 | size: 0x30
.fn iplChannelManager_813391C0, global
/* 813391C0 | 38 00 00 00 */	li r0, 0x0
/* 813391C4 | 90 C3 15 50 */	stw r6, 0x1550(r3)
/* 813391C8 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 813391CC | 3C 80 81 34 */	lis r4, iplChannelManager_813391F0@ha
/* 813391D0 | 90 A3 15 4C */	stw r5, 0x154c(r3)
/* 813391D4 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 813391D8 | 7C 65 1B 78 */	mr r5, r3
/* 813391DC | 38 84 91 F0 */	addi r4, r4, iplChannelManager_813391F0@l
/* 813391E0 | 90 03 15 58 */	stw r0, 0x1558(r3)
/* 813391E4 | 38 C0 00 00 */	li r6, 0x0
/* 813391E8 | 80 67 00 D8 */	lwz r3, 0xd8(r7)
/* 813391EC | 48 2B F0 5C */	b fn_815F8248
.endfn iplChannelManager_813391C0

# .text:0x1878 | 0x813391F0 | size: 0xC
.fn iplChannelManager_813391F0, local
/* 813391F0 | 80 A3 15 4C */	lwz r5, 0x154c(r3)
/* 813391F4 | 80 C3 15 50 */	lwz r6, 0x1550(r3)
/* 813391F8 | 48 00 00 04 */	b iplChannelManager_813391FC
.endfn iplChannelManager_813391F0

# .text:0x1884 | 0x813391FC | size: 0x184
.fn iplChannelManager_813391FC, local
/* 813391FC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81339200 | 7C 08 02 A6 */	mflr r0
/* 81339204 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81339208 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133920C | 48 2C 02 B9 */	bl _savegpr_28
/* 81339210 | 80 03 15 58 */	lwz r0, 0x1558(r3)
/* 81339214 | 7C 7C 1B 78 */	mr r28, r3
/* 81339218 | 7C BE 2B 78 */	mr r30, r5
/* 8133921C | 7C DD 33 78 */	mr r29, r6
/* 81339220 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81339224 | 40 82 01 44 */	bne .L_81339368
/* 81339228 | 38 E0 00 03 */	li r7, 0x3
/* 8133922C | 38 00 00 0E */	li r0, 0xe
/* 81339230 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81339234 | 98 E3 15 44 */	stb r7, 0x1544(r3)
/* 81339238 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8133923C | 38 E0 00 00 */	li r7, 0x0
/* 81339240 | 90 03 15 48 */	stw r0, 0x1548(r3)
/* 81339244 | 39 00 00 00 */	li r8, 0x0
/* 81339248 | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 8133924C | 48 02 CC 91 */	bl GetValidTicketIndex__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewUl
/* 81339250 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81339254 | 40 82 00 10 */	bne .L_81339264
/* 81339258 | 38 00 00 01 */	li r0, 0x1
/* 8133925C | 38 60 00 00 */	li r3, 0x0
/* 81339260 | B0 1C 15 16 */	sth r0, 0x1516(r28)
.L_81339264:
/* 81339264 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81339268 | 90 7C 15 20 */	stw r3, 0x1520(r28)
/* 8133926C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81339270 | 38 00 00 00 */	li r0, 0x0
/* 81339274 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81339278 | 7F A6 EB 78 */	mr r6, r29
/* 8133927C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 81339280 | 7F C5 F3 78 */	mr r5, r30
/* 81339284 | 38 E1 00 10 */	addi r7, r1, 0x10
/* 81339288 | 48 02 C4 7D */	bl GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView
/* 8133928C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81339290 | 7C 65 1B 78 */	mr r5, r3
/* 81339294 | 41 82 00 38 */	beq .L_813392CC
/* 81339298 | 3C C0 81 63 */	lis r6, lbl_81634AB6@ha
/* 8133929C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813392A0 | 38 8D 80 48 */	li r4, lbl_81696088@sda21
/* 813392A4 | 38 E0 05 1B */	li r7, 0x51b
/* 813392A8 | 38 C6 4A B6 */	addi r6, r6, lbl_81634AB6@l
/* 813392AC | 48 01 D4 4D */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813392B0 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813392B4 | 38 80 00 01 */	li r4, 0x1
/* 813392B8 | 38 A0 00 02 */	li r5, 0x2
/* 813392BC | 38 C0 00 00 */	li r6, 0x0
/* 813392C0 | 38 E0 00 00 */	li r7, 0x0
/* 813392C4 | 39 00 FF FF */	li r8, -0x1
/* 813392C8 | 48 01 D2 4D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813392CC:
/* 813392CC | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813392D0 | A0 03 00 58 */	lhz r0, 0x58(r3)
/* 813392D4 | B0 1C 15 14 */	sth r0, 0x1514(r28)
/* 813392D8 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 813392DC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813392E0 | 41 82 00 20 */	beq .L_81339300
/* 813392E4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813392E8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813392EC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 813392F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813392F4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813392F8 | 7D 89 03 A6 */	mtctr r12
/* 813392FC | 4E 80 04 21 */	bctrl
.L_81339300:
/* 81339300 | 80 7C 15 54 */	lwz r3, 0x1554(r28)
/* 81339304 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81339308 | 41 82 00 1C */	beq .L_81339324
/* 8133930C | 41 82 00 18 */	beq .L_81339324
/* 81339310 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81339314 | 38 80 00 01 */	li r4, 0x1
/* 81339318 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8133931C | 7D 89 03 A6 */	mtctr r12
/* 81339320 | 4E 80 04 21 */	bctrl
.L_81339324:
/* 81339324 | 80 1C 15 20 */	lwz r0, 0x1520(r28)
/* 81339328 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133932C | 3D 20 81 34 */	lis r9, iplChannelManager_81339380@ha
/* 81339330 | 7F A6 EB 78 */	mr r6, r29
/* 81339334 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81339338 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133933C | 7F C5 F3 78 */	mr r5, r30
/* 81339340 | 39 29 93 80 */	addi r9, r9, iplChannelManager_81339380@l
/* 81339344 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 81339348 | 39 5C 15 0C */	addi r10, r28, 0x150c
/* 8133934C | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 81339350 | 38 E0 00 00 */	li r7, 0x0
/* 81339354 | 39 00 07 00 */	li r8, 0x700
/* 81339358 | 48 00 43 E9 */	bl readMetaHeaderAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapUxiUlPFPv_vPvi
/* 8133935C | 38 00 00 01 */	li r0, 0x1
/* 81339360 | 90 7C 15 54 */	stw r3, 0x1554(r28)
/* 81339364 | 90 1C 15 58 */	stw r0, 0x1558(r28)
.L_81339368:
/* 81339368 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133936C | 48 2C 01 A5 */	bl _restgpr_28
/* 81339370 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81339374 | 7C 08 03 A6 */	mtlr r0
/* 81339378 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8133937C | 4E 80 00 20 */	blr
.endfn iplChannelManager_813391FC

# .text:0x1A08 | 0x81339380 | size: 0x1DC
.fn iplChannelManager_81339380, local
/* 81339380 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81339384 | 7C 08 02 A6 */	mflr r0
/* 81339388 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133938C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81339390 | 7C 7F 1B 78 */	mr r31, r3
/* 81339394 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81339398 | 80 83 00 48 */	lwz r4, 0x48(r3)
/* 8133939C | 88 04 01 A8 */	lbz r0, 0x1a8(r4)
/* 813393A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813393A4 | 41 82 00 78 */	beq .L_8133941C
/* 813393A8 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 813393AC | 7C 83 23 78 */	mr r3, r4
/* 813393B0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813393B4 | 7D 89 03 A6 */	mtctr r12
/* 813393B8 | 4E 80 04 21 */	bctrl
/* 813393BC | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813393C0 | 41 82 00 20 */	beq .L_813393E0
/* 813393C4 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813393C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813393CC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813393D0 | 7D 89 03 A6 */	mtctr r12
/* 813393D4 | 4E 80 04 21 */	bctrl
/* 813393D8 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813393DC | 40 82 00 40 */	bne .L_8133941C
.L_813393E0:
/* 813393E0 | 7F E3 FB 78 */	mr r3, r31
/* 813393E4 | 38 80 00 00 */	li r4, 0x0
/* 813393E8 | 38 A0 00 70 */	li r5, 0x70
/* 813393EC | 4B FF 6F 49 */	bl memset
/* 813393F0 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813393F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813393F8 | 41 82 00 18 */	beq .L_81339410
/* 813393FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81339400 | 38 80 00 01 */	li r4, 0x1
/* 81339404 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81339408 | 7D 89 03 A6 */	mtctr r12
/* 8133940C | 4E 80 04 21 */	bctrl
.L_81339410:
/* 81339410 | 38 00 00 00 */	li r0, 0x0
/* 81339414 | 90 1F 00 48 */	stw r0, 0x48(r31)
/* 81339418 | 48 00 01 24 */	b .L_8133953C
.L_8133941C:
/* 8133941C | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 81339420 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81339424 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81339428 | 80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 8133942C | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 81339430 | 38 84 00 40 */	addi r4, r4, 0x40
/* 81339434 | 48 00 07 DD */	bl searchMetaHeader__Q33ipl7channel7ManagerFPCUc
/* 81339438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133943C | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 81339440 | 7C 66 1B 78 */	mr r6, r3
/* 81339444 | 41 80 00 28 */	blt .L_8133946C
/* 81339448 | 80 9F 00 48 */	lwz r4, 0x48(r31)
/* 8133944C | 38 BF 00 0C */	addi r5, r31, 0xc
/* 81339450 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 81339454 | 80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 81339458 | 7C 86 02 14 */	add r4, r6, r0
/* 8133945C | 38 84 00 40 */	addi r4, r4, 0x40
/* 81339460 | 48 00 08 05 */	bl checkHeaderBase__Q33ipl7channel7ManagerFPCUcPUl
/* 81339464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81339468 | 40 82 00 40 */	bne .L_813394A8
.L_8133946C:
/* 8133946C | 7F E3 FB 78 */	mr r3, r31
/* 81339470 | 38 80 00 00 */	li r4, 0x0
/* 81339474 | 38 A0 00 70 */	li r5, 0x70
/* 81339478 | 4B FF 6E BD */	bl memset
/* 8133947C | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 81339480 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81339484 | 41 82 00 18 */	beq .L_8133949C
/* 81339488 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133948C | 38 80 00 01 */	li r4, 0x1
/* 81339490 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81339494 | 7D 89 03 A6 */	mtctr r12
/* 81339498 | 4E 80 04 21 */	bctrl
.L_8133949C:
/* 8133949C | 38 00 00 00 */	li r0, 0x0
/* 813394A0 | 90 1F 00 48 */	stw r0, 0x48(r31)
/* 813394A4 | 48 00 00 98 */	b .L_8133953C
.L_813394A8:
/* 813394A8 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813394AC | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813394B0 | 80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 813394B4 | 7C 04 02 14 */	add r0, r4, r0
/* 813394B8 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 813394BC | 88 03 01 A8 */	lbz r0, 0x1a8(r3)
/* 813394C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813394C4 | 41 82 00 1C */	beq .L_813394E0
/* 813394C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813394CC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813394D0 | 7D 89 03 A6 */	mtctr r12
/* 813394D4 | 4E 80 04 21 */	bctrl
/* 813394D8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813394DC | 41 82 00 20 */	beq .L_813394FC
.L_813394E0:
/* 813394E0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813394E4 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 813394E8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813394EC | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813394F0 | 48 00 07 E1 */	bl checkHeaderMD5__Q33ipl7channel7ManagerFPUc
/* 813394F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813394F8 | 40 82 00 18 */	bne .L_81339510
.L_813394FC:
/* 813394FC | 7F E3 FB 78 */	mr r3, r31
/* 81339500 | 38 80 00 00 */	li r4, 0x0
/* 81339504 | 38 A0 00 70 */	li r5, 0x70
/* 81339508 | 4B FF 6E 2D */	bl memset
/* 8133950C | 48 00 00 30 */	b .L_8133953C
.L_81339510:
/* 81339510 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 81339514 | 38 9F 00 1C */	addi r4, r31, 0x1c
/* 81339518 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8133951C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81339520 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81339524 | 7C 05 02 14 */	add r0, r5, r0
/* 81339528 | 7C 63 02 14 */	add r3, r3, r0
/* 8133952C | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81339530 | 48 23 78 71 */	bl ARCInitHandle
/* 81339534 | 38 00 00 01 */	li r0, 0x1
/* 81339538 | 98 1F 00 18 */	stb r0, 0x18(r31)
.L_8133953C:
/* 8133953C | 38 00 00 02 */	li r0, 0x2
/* 81339540 | 90 1F 00 4C */	stw r0, 0x4c(r31)
/* 81339544 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81339548 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133954C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81339550 | 7C 08 03 A6 */	mtlr r0
/* 81339554 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81339558 | 4E 80 00 20 */	blr
.endfn iplChannelManager_81339380

# .text:0x1BE4 | 0x8133955C | size: 0x300
# ipl::channel::Manager::loadMetaHeaderAsync(int, int)
.fn loadMetaHeaderAsync__Q33ipl7channel7ManagerFii, global
/* 8133955C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81339560 | 7C 08 02 A6 */	mflr r0
/* 81339564 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81339568 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8133956C | 48 2B FF 51 */	bl _savegpr_26
/* 81339570 | 1C C4 05 40 */	mulli r6, r4, 0x540
/* 81339574 | 7C 7B 1B 78 */	mr r27, r3
/* 81339578 | 7C 9C 23 78 */	mr r28, r4
/* 8133957C | 7C BD 2B 78 */	mr r29, r5
/* 81339580 | 1C 05 00 70 */	mulli r0, r5, 0x70
/* 81339584 | 7C C3 32 14 */	add r6, r3, r6
/* 81339588 | 7D 86 02 14 */	add r12, r6, r0
/* 8133958C | 80 0C 00 58 */	lwz r0, 0x58(r12)
/* 81339590 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81339594 | 40 82 02 B0 */	bne .L_81339844
/* 81339598 | 3D 60 81 09 */	lis r11, smArg__Q23ipl6System@ha
/* 8133959C | 54 A0 20 36 */	slwi r0, r5, 4
/* 813395A0 | 39 6B 90 08 */	addi r11, r11, smArg__Q23ipl6System@l
/* 813395A4 | 1C C4 00 C0 */	mulli r6, r4, 0xc0
/* 813395A8 | 80 EB 00 94 */	lwz r7, 0x94(r11)
/* 813395AC | 7C C7 32 14 */	add r6, r7, r6
/* 813395B0 | 7C C6 02 14 */	add r6, r6, r0
/* 813395B4 | 80 06 00 30 */	lwz r0, 0x30(r6)
/* 813395B8 | 81 46 00 34 */	lwz r10, 0x34(r6)
/* 813395BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813395C0 | 81 26 00 38 */	lwz r9, 0x38(r6)
/* 813395C4 | 81 06 00 3C */	lwz r8, 0x3c(r6)
/* 813395C8 | 88 E1 00 14 */	lbz r7, 0x14(r1)
/* 813395CC | 88 01 00 15 */	lbz r0, 0x15(r1)
/* 813395D0 | 98 EC 00 44 */	stb r7, 0x44(r12)
/* 813395D4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813395D8 | 88 C1 00 16 */	lbz r6, 0x16(r1)
/* 813395DC | 98 0C 00 45 */	stb r0, 0x45(r12)
/* 813395E0 | 88 01 00 17 */	lbz r0, 0x17(r1)
/* 813395E4 | 98 CC 00 46 */	stb r6, 0x46(r12)
/* 813395E8 | 98 0C 00 47 */	stb r0, 0x47(r12)
/* 813395EC | 91 4C 00 48 */	stw r10, 0x48(r12)
/* 813395F0 | 91 2C 00 4C */	stw r9, 0x4c(r12)
/* 813395F4 | 91 41 00 18 */	stw r10, 0x18(r1)
/* 813395F8 | 91 21 00 1C */	stw r9, 0x1c(r1)
/* 813395FC | 91 01 00 20 */	stw r8, 0x20(r1)
/* 81339600 | 91 0C 00 50 */	stw r8, 0x50(r12)
/* 81339604 | 40 82 00 3C */	bne .L_81339640
/* 81339608 | 38 6C 00 0C */	addi r3, r12, 0xc
/* 8133960C | 38 80 00 00 */	li r4, 0x0
/* 81339610 | 38 A0 00 70 */	li r5, 0x70
/* 81339614 | 4B FF 6D 21 */	bl memset
/* 81339618 | 1C 7C 05 40 */	mulli r3, r28, 0x540
/* 8133961C | 80 AD A6 50 */	lwz r5, mNumFinished__Q33ipl7channel7Manager@sda21(r0)
/* 81339620 | 38 80 00 02 */	li r4, 0x2
/* 81339624 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81339628 | 1C 1D 00 70 */	mulli r0, r29, 0x70
/* 8133962C | 90 AD A6 50 */	stw r5, mNumFinished__Q33ipl7channel7Manager@sda21(r0)
/* 81339630 | 7C 7B 1A 14 */	add r3, r27, r3
/* 81339634 | 7C 63 02 14 */	add r3, r3, r0
/* 81339638 | 90 83 00 58 */	stw r4, 0x58(r3)
/* 8133963C | 48 00 02 08 */	b .L_81339844
.L_81339640:
/* 81339640 | 28 07 00 01 */	cmplwi r7, 0x1
/* 81339644 | 40 82 00 68 */	bne .L_813396AC
/* 81339648 | 38 00 00 01 */	li r0, 0x1
/* 8133964C | 98 0C 00 24 */	stb r0, 0x24(r12)
/* 81339650 | 80 0C 00 48 */	lwz r0, 0x48(r12)
/* 81339654 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 81339658 | 40 82 00 20 */	bne .L_81339678
/* 8133965C | 80 0C 00 10 */	lwz r0, 0x10(r12)
/* 81339660 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81339664 | 40 82 00 0C */	bne .L_81339670
/* 81339668 | 38 03 15 7C */	addi r0, r3, 0x157c
/* 8133966C | 90 0C 00 10 */	stw r0, 0x10(r12)
.L_81339670:
/* 81339670 | 38 00 00 01 */	li r0, 0x1
/* 81339674 | 98 0D A6 58 */	stb r0, mDiskChannelFixed__Q33ipl7channel7Manager@sda21(r0)
.L_81339678:
/* 81339678 | 1C 84 05 40 */	mulli r4, r4, 0x540
/* 8133967C | 81 0D A6 50 */	lwz r8, mNumFinished__Q33ipl7channel7Manager@sda21(r0)
/* 81339680 | 80 ED A6 54 */	lwz r7, mNumValidChannel__Q33ipl7channel7Manager@sda21(r0)
/* 81339684 | 38 C0 00 02 */	li r6, 0x2
/* 81339688 | 39 08 00 01 */	addi r8, r8, 0x1
/* 8133968C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81339690 | 1C 05 00 70 */	mulli r0, r5, 0x70
/* 81339694 | 7C 63 22 14 */	add r3, r3, r4
/* 81339698 | 91 0D A6 50 */	stw r8, mNumFinished__Q33ipl7channel7Manager@sda21(r0)
/* 8133969C | 90 ED A6 54 */	stw r7, mNumValidChannel__Q33ipl7channel7Manager@sda21(r0)
/* 813396A0 | 7C 63 02 14 */	add r3, r3, r0
/* 813396A4 | 90 C3 00 58 */	stw r6, 0x58(r3)
/* 813396A8 | 48 00 01 9C */	b .L_81339844
.L_813396AC:
/* 813396AC | 83 EC 00 4C */	lwz r31, 0x4c(r12)
/* 813396B0 | 38 E0 00 00 */	li r7, 0x0
/* 813396B4 | 83 CC 00 50 */	lwz r30, 0x50(r12)
/* 813396B8 | 39 00 00 00 */	li r8, 0x0
/* 813396BC | 80 6B 00 0C */	lwz r3, 0xc(r11)
/* 813396C0 | 7F E5 FB 78 */	mr r5, r31
/* 813396C4 | 7F C6 F3 78 */	mr r6, r30
/* 813396C8 | 48 02 C8 15 */	bl GetValidTicketIndex__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewUl
/* 813396CC | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813396D0 | 40 82 00 20 */	bne .L_813396F0
/* 813396D4 | 1C 9C 05 40 */	mulli r4, r28, 0x540
/* 813396D8 | 38 A0 00 01 */	li r5, 0x1
/* 813396DC | 38 60 00 00 */	li r3, 0x0
/* 813396E0 | 1C 1D 00 70 */	mulli r0, r29, 0x70
/* 813396E4 | 7C 9B 22 14 */	add r4, r27, r4
/* 813396E8 | 7C 84 02 14 */	add r4, r4, r0
/* 813396EC | B0 A4 00 16 */	sth r5, 0x16(r4)
.L_813396F0:
/* 813396F0 | 1C BC 05 40 */	mulli r5, r28, 0x540
/* 813396F4 | 3F 40 81 09 */	lis r26, smArg__Q23ipl6System@ha
/* 813396F8 | 38 00 00 00 */	li r0, 0x0
/* 813396FC | 3B 5A 90 08 */	addi r26, r26, smArg__Q23ipl6System@l
/* 81339700 | 7C FB 2A 14 */	add r7, r27, r5
/* 81339704 | 7F C6 F3 78 */	mr r6, r30
/* 81339708 | 1C 9D 00 70 */	mulli r4, r29, 0x70
/* 8133970C | 7F E5 FB 78 */	mr r5, r31
/* 81339710 | 7C 87 22 14 */	add r4, r7, r4
/* 81339714 | 38 E1 00 10 */	addi r7, r1, 0x10
/* 81339718 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 8133971C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81339720 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81339724 | 48 02 BF E1 */	bl GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView
/* 81339728 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133972C | 7C 65 1B 78 */	mr r5, r3
/* 81339730 | 41 82 00 38 */	beq .L_81339768
/* 81339734 | 3C C0 81 63 */	lis r6, lbl_81634AB6@ha
/* 81339738 | 80 7A 00 98 */	lwz r3, 0x98(r26)
/* 8133973C | 38 8D 80 48 */	li r4, lbl_81696088@sda21
/* 81339740 | 38 E0 05 BC */	li r7, 0x5bc
/* 81339744 | 38 C6 4A B6 */	addi r6, r6, lbl_81634AB6@l
/* 81339748 | 48 01 CF B1 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133974C | 80 7A 00 98 */	lwz r3, 0x98(r26)
/* 81339750 | 38 80 00 01 */	li r4, 0x1
/* 81339754 | 38 A0 00 02 */	li r5, 0x2
/* 81339758 | 38 C0 00 00 */	li r6, 0x0
/* 8133975C | 38 E0 00 00 */	li r7, 0x0
/* 81339760 | 39 00 FF FF */	li r8, -0x1
/* 81339764 | 48 01 CD B1 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_81339768:
/* 81339768 | 1C 7C 05 40 */	mulli r3, r28, 0x540
/* 8133976C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 81339770 | A0 84 00 58 */	lhz r4, 0x58(r4)
/* 81339774 | 1C 1D 00 70 */	mulli r0, r29, 0x70
/* 81339778 | 7C 7B 1A 14 */	add r3, r27, r3
/* 8133977C | 7C 63 02 14 */	add r3, r3, r0
/* 81339780 | B0 83 00 14 */	sth r4, 0x14(r3)
/* 81339784 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 81339788 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133978C | 41 82 00 20 */	beq .L_813397AC
/* 81339790 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81339794 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81339798 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8133979C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813397A0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813397A4 | 7D 89 03 A6 */	mtctr r12
/* 813397A8 | 4E 80 04 21 */	bctrl
.L_813397AC:
/* 813397AC | 1C 7C 05 40 */	mulli r3, r28, 0x540
/* 813397B0 | 1C 1D 00 70 */	mulli r0, r29, 0x70
/* 813397B4 | 7C 7B 1A 14 */	add r3, r27, r3
/* 813397B8 | 7C 63 02 14 */	add r3, r3, r0
/* 813397BC | 80 63 00 54 */	lwz r3, 0x54(r3)
/* 813397C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813397C4 | 41 82 00 1C */	beq .L_813397E0
/* 813397C8 | 41 82 00 18 */	beq .L_813397E0
/* 813397CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813397D0 | 38 80 00 01 */	li r4, 0x1
/* 813397D4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813397D8 | 7D 89 03 A6 */	mtctr r12
/* 813397DC | 4E 80 04 21 */	bctrl
.L_813397E0:
/* 813397E0 | 1C 9C 05 40 */	mulli r4, r28, 0x540
/* 813397E4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813397E8 | 3D 20 81 34 */	lis r9, cbReadMetaHeader__Q33ipl7channel7ManagerFPv@ha
/* 813397EC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813397F0 | 1C 1D 00 70 */	mulli r0, r29, 0x70
/* 813397F4 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 813397F8 | 7C 9B 22 14 */	add r4, r27, r4
/* 813397FC | 7F C6 F3 78 */	mr r6, r30
/* 81339800 | 7C 84 02 14 */	add r4, r4, r0
/* 81339804 | 7F E5 FB 78 */	mr r5, r31
/* 81339808 | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 8133980C | 39 44 00 0C */	addi r10, r4, 0xc
/* 81339810 | 39 29 98 5C */	addi r9, r9, cbReadMetaHeader__Q33ipl7channel7ManagerFPv@l
/* 81339814 | 38 E0 00 00 */	li r7, 0x0
/* 81339818 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133981C | 39 00 07 00 */	li r8, 0x700
/* 81339820 | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 81339824 | 48 00 3F 1D */	bl readMetaHeaderAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapUxiUlPFPv_vPvi
/* 81339828 | 1C BC 05 40 */	mulli r5, r28, 0x540
/* 8133982C | 38 00 00 01 */	li r0, 0x1
/* 81339830 | 1C 9D 00 70 */	mulli r4, r29, 0x70
/* 81339834 | 7C BB 2A 14 */	add r5, r27, r5
/* 81339838 | 7C 85 22 14 */	add r4, r5, r4
/* 8133983C | 90 64 00 54 */	stw r3, 0x54(r4)
/* 81339840 | 90 04 00 58 */	stw r0, 0x58(r4)
.L_81339844:
/* 81339844 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81339848 | 48 2B FC C1 */	bl _restgpr_26
/* 8133984C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81339850 | 7C 08 03 A6 */	mtlr r0
/* 81339854 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81339858 | 4E 80 00 20 */	blr
.endfn loadMetaHeaderAsync__Q33ipl7channel7ManagerFii

# .text:0x1EE4 | 0x8133985C | size: 0x1F4
# ipl::channel::Manager::cbReadMetaHeader(void*)
.fn cbReadMetaHeader__Q33ipl7channel7ManagerFPv, global
/* 8133985C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81339860 | 7C 08 02 A6 */	mflr r0
/* 81339864 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81339868 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133986C | 7C 7F 1B 78 */	mr r31, r3
/* 81339870 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81339874 | 80 83 00 48 */	lwz r4, 0x48(r3)
/* 81339878 | 88 04 01 A8 */	lbz r0, 0x1a8(r4)
/* 8133987C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81339880 | 41 82 00 78 */	beq .L_813398F8
/* 81339884 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 81339888 | 7C 83 23 78 */	mr r3, r4
/* 8133988C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81339890 | 7D 89 03 A6 */	mtctr r12
/* 81339894 | 4E 80 04 21 */	bctrl
/* 81339898 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8133989C | 41 82 00 20 */	beq .L_813398BC
/* 813398A0 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813398A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813398A8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813398AC | 7D 89 03 A6 */	mtctr r12
/* 813398B0 | 4E 80 04 21 */	bctrl
/* 813398B4 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813398B8 | 40 82 00 40 */	bne .L_813398F8
.L_813398BC:
/* 813398BC | 7F E3 FB 78 */	mr r3, r31
/* 813398C0 | 38 80 00 00 */	li r4, 0x0
/* 813398C4 | 38 A0 00 70 */	li r5, 0x70
/* 813398C8 | 4B FF 6A 6D */	bl memset
/* 813398CC | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813398D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813398D4 | 41 82 00 18 */	beq .L_813398EC
/* 813398D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813398DC | 38 80 00 01 */	li r4, 0x1
/* 813398E0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813398E4 | 7D 89 03 A6 */	mtctr r12
/* 813398E8 | 4E 80 04 21 */	bctrl
.L_813398EC:
/* 813398EC | 38 00 00 00 */	li r0, 0x0
/* 813398F0 | 90 1F 00 48 */	stw r0, 0x48(r31)
/* 813398F4 | 48 00 01 30 */	b .L_81339A24
.L_813398F8:
/* 813398F8 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813398FC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81339900 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81339904 | 80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 81339908 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8133990C | 38 84 00 40 */	addi r4, r4, 0x40
/* 81339910 | 48 00 03 01 */	bl searchMetaHeader__Q33ipl7channel7ManagerFPCUc
/* 81339914 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81339918 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8133991C | 7C 66 1B 78 */	mr r6, r3
/* 81339920 | 41 80 00 28 */	blt .L_81339948
/* 81339924 | 80 9F 00 48 */	lwz r4, 0x48(r31)
/* 81339928 | 38 BF 00 0C */	addi r5, r31, 0xc
/* 8133992C | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 81339930 | 80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 81339934 | 7C 86 02 14 */	add r4, r6, r0
/* 81339938 | 38 84 00 40 */	addi r4, r4, 0x40
/* 8133993C | 48 00 03 29 */	bl checkHeaderBase__Q33ipl7channel7ManagerFPCUcPUl
/* 81339940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81339944 | 40 82 00 40 */	bne .L_81339984
.L_81339948:
/* 81339948 | 7F E3 FB 78 */	mr r3, r31
/* 8133994C | 38 80 00 00 */	li r4, 0x0
/* 81339950 | 38 A0 00 70 */	li r5, 0x70
/* 81339954 | 4B FF 69 E1 */	bl memset
/* 81339958 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 8133995C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81339960 | 41 82 00 18 */	beq .L_81339978
/* 81339964 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81339968 | 38 80 00 01 */	li r4, 0x1
/* 8133996C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81339970 | 7D 89 03 A6 */	mtctr r12
/* 81339974 | 4E 80 04 21 */	bctrl
.L_81339978:
/* 81339978 | 38 00 00 00 */	li r0, 0x0
/* 8133997C | 90 1F 00 48 */	stw r0, 0x48(r31)
/* 81339980 | 48 00 00 A4 */	b .L_81339A24
.L_81339984:
/* 81339984 | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 81339988 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8133998C | 80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 81339990 | 7C 04 02 14 */	add r0, r4, r0
/* 81339994 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 81339998 | 88 03 01 A8 */	lbz r0, 0x1a8(r3)
/* 8133999C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813399A0 | 41 82 00 1C */	beq .L_813399BC
/* 813399A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813399A8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813399AC | 7D 89 03 A6 */	mtctr r12
/* 813399B0 | 4E 80 04 21 */	bctrl
/* 813399B4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813399B8 | 41 82 00 20 */	beq .L_813399D8
.L_813399BC:
/* 813399BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813399C0 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 813399C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813399C8 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813399CC | 48 00 03 05 */	bl checkHeaderMD5__Q33ipl7channel7ManagerFPUc
/* 813399D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813399D4 | 40 82 00 18 */	bne .L_813399EC
.L_813399D8:
/* 813399D8 | 7F E3 FB 78 */	mr r3, r31
/* 813399DC | 38 80 00 00 */	li r4, 0x0
/* 813399E0 | 38 A0 00 70 */	li r5, 0x70
/* 813399E4 | 4B FF 69 51 */	bl memset
/* 813399E8 | 48 00 00 3C */	b .L_81339A24
.L_813399EC:
/* 813399EC | 80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813399F0 | 38 9F 00 1C */	addi r4, r31, 0x1c
/* 813399F4 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 813399F8 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813399FC | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81339A00 | 7C 05 02 14 */	add r0, r5, r0
/* 81339A04 | 7C 63 02 14 */	add r3, r3, r0
/* 81339A08 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81339A0C | 48 23 73 95 */	bl ARCInitHandle
/* 81339A10 | 38 00 00 01 */	li r0, 0x1
/* 81339A14 | 98 1F 00 18 */	stb r0, 0x18(r31)
/* 81339A18 | 80 6D A6 54 */	lwz r3, mNumValidChannel__Q33ipl7channel7Manager@sda21(r0)
/* 81339A1C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81339A20 | 90 0D A6 54 */	stw r0, mNumValidChannel__Q33ipl7channel7Manager@sda21(r0)
.L_81339A24:
/* 81339A24 | 80 6D A6 50 */	lwz r3, mNumFinished__Q33ipl7channel7Manager@sda21(r0)
/* 81339A28 | 38 00 00 02 */	li r0, 0x2
/* 81339A2C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81339A30 | 90 6D A6 50 */	stw r3, mNumFinished__Q33ipl7channel7Manager@sda21(r0)
/* 81339A34 | 90 1F 00 4C */	stw r0, 0x4c(r31)
/* 81339A38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81339A3C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81339A40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81339A44 | 7C 08 03 A6 */	mtlr r0
/* 81339A48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81339A4C | 4E 80 00 20 */	blr
.endfn cbReadMetaHeader__Q33ipl7channel7ManagerFPv

# .text:0x20D8 | 0x81339A50 | size: 0x6C
# ipl::channel::Manager::makeLoadOrderList(int*) const
.fn makeLoadOrderList__Q33ipl7channel7ManagerCFPi, global
/* 81339A50 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81339A54 | 38 E0 00 01 */	li r7, 0x1
/* 81339A58 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81339A5C | 38 60 00 04 */	li r3, 0x4
/* 81339A60 | 80 A5 00 94 */	lwz r5, 0x94(r5)
/* 81339A64 | 80 C5 04 E0 */	lwz r6, 0x4e0(r5)
/* 81339A68 | 90 C4 00 00 */	stw r6, 0x0(r4)
/* 81339A6C | 38 06 00 01 */	addi r0, r6, 0x1
.L_81339A70:
/* 81339A70 | 7C A6 00 51 */	subf. r5, r6, r0
/* 81339A74 | 41 80 00 20 */	blt .L_81339A94
/* 81339A78 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81339A7C | 40 80 00 10 */	bge .L_81339A8C
/* 81339A80 | 7C 04 19 2E */	stwx r0, r4, r3
/* 81339A84 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81339A88 | 38 63 00 04 */	addi r3, r3, 0x4
.L_81339A8C:
/* 81339A8C | 7C 05 30 50 */	subf r0, r5, r6
/* 81339A90 | 48 00 00 20 */	b .L_81339AB0
.L_81339A94:
/* 81339A94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81339A98 | 41 80 00 10 */	blt .L_81339AA8
/* 81339A9C | 7C 04 19 2E */	stwx r0, r4, r3
/* 81339AA0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81339AA4 | 38 63 00 04 */	addi r3, r3, 0x4
.L_81339AA8:
/* 81339AA8 | 7C A5 30 50 */	subf r5, r5, r6
/* 81339AAC | 38 05 00 01 */	addi r0, r5, 0x1
.L_81339AB0:
/* 81339AB0 | 2C 07 00 04 */	cmpwi r7, 0x4
/* 81339AB4 | 40 82 FF BC */	bne .L_81339A70
/* 81339AB8 | 4E 80 00 20 */	blr
.endfn makeLoadOrderList__Q33ipl7channel7ManagerCFPi

# .text:0x2144 | 0x81339ABC | size: 0x68
# ipl::channel::Manager::updateInitState()
.fn updateInitState__Q33ipl7channel7ManagerFv, global
/* 81339ABC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81339AC0 | 7C 08 02 A6 */	mflr r0
/* 81339AC4 | 38 60 00 00 */	li r3, 0x0
/* 81339AC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81339ACC | 80 0D A6 50 */	lwz r0, mNumFinished__Q33ipl7channel7Manager@sda21(r0)
/* 81339AD0 | 28 00 00 30 */	cmplwi r0, 0x30
/* 81339AD4 | 40 82 00 40 */	bne .L_81339B14
/* 81339AD8 | 38 00 00 00 */	li r0, 0x0
/* 81339ADC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81339AE0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81339AE4 | 48 23 0D 99 */	bl fn_8156A87C
/* 81339AE8 | 80 6D A6 54 */	lwz r3, mNumValidChannel__Q33ipl7channel7Manager@sda21(r0)
/* 81339AEC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81339AF0 | 7C 03 00 40 */	cmplw r3, r0
/* 81339AF4 | 41 82 00 1C */	beq .L_81339B10
/* 81339AF8 | 48 23 0D 95 */	bl fn_8156A88C
/* 81339AFC | 80 0D A6 54 */	lwz r0, mNumValidChannel__Q33ipl7channel7Manager@sda21(r0)
/* 81339B00 | 20 60 00 30 */	subfic r3, r0, 0x30
/* 81339B04 | 48 23 0D 71 */	bl fn_8156A874
/* 81339B08 | 38 60 00 01 */	li r3, 0x1
/* 81339B0C | 48 00 00 08 */	b .L_81339B14
.L_81339B10:
/* 81339B10 | 38 60 00 02 */	li r3, 0x2
.L_81339B14:
/* 81339B14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81339B18 | 7C 08 03 A6 */	mtlr r0
/* 81339B1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81339B20 | 4E 80 00 20 */	blr
.endfn updateInitState__Q33ipl7channel7ManagerFv

# .text:0x21AC | 0x81339B24 | size: 0x5C
# ipl::channel::Manager::updateWaitSCFlush()
.fn updateWaitSCFlush__Q33ipl7channel7ManagerFv, global
/* 81339B24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81339B28 | 7C 08 02 A6 */	mflr r0
/* 81339B2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81339B30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81339B34 | 3B E0 00 01 */	li r31, 0x1
/* 81339B38 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81339B3C | 48 1F 6D 49 */	bl OSDisableInterrupts
/* 81339B40 | 7C 7E 1B 78 */	mr r30, r3
/* 81339B44 | 48 22 E8 01 */	bl fn_81568344
/* 81339B48 | 28 03 00 01 */	cmplwi r3, 0x1
/* 81339B4C | 41 82 00 10 */	beq .L_81339B5C
/* 81339B50 | 38 60 00 00 */	li r3, 0x0
/* 81339B54 | 48 22 FE 69 */	bl fn_815699BC
/* 81339B58 | 3B E0 00 02 */	li r31, 0x2
.L_81339B5C:
/* 81339B5C | 7F C3 F3 78 */	mr r3, r30
/* 81339B60 | 48 1F 6D 4D */	bl OSRestoreInterrupts
/* 81339B64 | 7F E3 FB 78 */	mr r3, r31
/* 81339B68 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81339B6C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81339B70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81339B74 | 7C 08 03 A6 */	mtlr r0
/* 81339B78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81339B7C | 4E 80 00 20 */	blr
.endfn updateWaitSCFlush__Q33ipl7channel7ManagerFv

# .text:0x2208 | 0x81339B80 | size: 0x90
# ipl::channel::Manager::updateDiskState()
.fn updateDiskState__Q33ipl7channel7ManagerFv, global
/* 81339B80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81339B84 | 7C 08 02 A6 */	mflr r0
/* 81339B88 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81339B8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81339B90 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81339B94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81339B98 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81339B9C | 7C 7E 1B 78 */	mr r30, r3
/* 81339BA0 | 80 84 00 A8 */	lwz r4, 0xa8(r4)
/* 81339BA4 | 83 E4 00 04 */	lwz r31, 0x4(r4)
/* 81339BA8 | 2C 1F 00 05 */	cmpwi r31, 0x5
/* 81339BAC | 40 82 00 28 */	bne .L_81339BD4
/* 81339BB0 | 80 03 1B 7C */	lwz r0, 0x1b7c(r3)
/* 81339BB4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81339BB8 | 41 82 00 1C */	beq .L_81339BD4
/* 81339BBC | 38 80 00 00 */	li r4, 0x0
/* 81339BC0 | 48 00 02 3D */	bl setDiskBannerInfo__Q33ipl7channel7ManagerFb
/* 81339BC4 | 38 00 00 01 */	li r0, 0x1
/* 81339BC8 | 98 7E 1B 90 */	stb r3, 0x1b90(r30)
/* 81339BCC | 98 1E 1B 81 */	stb r0, 0x1b81(r30)
/* 81339BD0 | 48 00 00 24 */	b .L_81339BF4
.L_81339BD4:
/* 81339BD4 | 2C 1F 00 05 */	cmpwi r31, 0x5
/* 81339BD8 | 41 82 00 1C */	beq .L_81339BF4
/* 81339BDC | 80 03 1B 7C */	lwz r0, 0x1b7c(r3)
/* 81339BE0 | 7C 1F 00 00 */	cmpw r31, r0
/* 81339BE4 | 41 82 00 10 */	beq .L_81339BF4
/* 81339BE8 | 7F C3 F3 78 */	mr r3, r30
/* 81339BEC | 38 80 00 01 */	li r4, 0x1
/* 81339BF0 | 48 00 02 0D */	bl setDiskBannerInfo__Q33ipl7channel7ManagerFb
.L_81339BF4:
/* 81339BF4 | 93 FE 1B 7C */	stw r31, 0x1b7c(r30)
/* 81339BF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81339BFC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81339C00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81339C04 | 7C 08 03 A6 */	mtlr r0
/* 81339C08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81339C0C | 4E 80 00 20 */	blr
.endfn updateDiskState__Q33ipl7channel7ManagerFv

# .text:0x2298 | 0x81339C10 | size: 0x54
# ipl::channel::Manager::searchMetaHeader(const unsigned char*)
.fn searchMetaHeader__Q33ipl7channel7ManagerFPCUc, global
/* 81339C10 | 38 00 00 A0 */	li r0, 0xa0
/* 81339C14 | 38 AD 80 4B */	li r5, lbl_8169608B@sda21
/* 81339C18 | 38 C0 00 00 */	li r6, 0x0
/* 81339C1C | 38 E0 00 00 */	li r7, 0x0
/* 81339C20 | 7C 09 03 A6 */	mtctr r0
.L_81339C24:
/* 81339C24 | 7C 05 30 AE */	lbzx r0, r5, r6
/* 81339C28 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 81339C2C | 7C 00 07 74 */	extsb r0, r0
/* 81339C30 | 7C 03 00 00 */	cmpw r3, r0
/* 81339C34 | 40 82 00 18 */	bne .L_81339C4C
/* 81339C38 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81339C3C | 2C 06 00 04 */	cmpwi r6, 0x4
/* 81339C40 | 40 82 00 10 */	bne .L_81339C50
/* 81339C44 | 38 67 FF FD */	subi r3, r7, 0x3
/* 81339C48 | 4E 80 00 20 */	blr
.L_81339C4C:
/* 81339C4C | 38 C0 00 00 */	li r6, 0x0
.L_81339C50:
/* 81339C50 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81339C54 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81339C58 | 42 00 FF CC */	bdnz .L_81339C24
/* 81339C5C | 38 60 FF FF */	li r3, -0x1
/* 81339C60 | 4E 80 00 20 */	blr
.endfn searchMetaHeader__Q33ipl7channel7ManagerFPCUc

# .text:0x22EC | 0x81339C64 | size: 0x6C
# ipl::channel::Manager::checkHeaderBase(const unsigned char*, unsigned long*)
.fn checkHeaderBase__Q33ipl7channel7ManagerFPCUcPUl, global
/* 81339C64 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81339C68 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81339C6C | 41 82 00 08 */	beq .L_81339C74
/* 81339C70 | 90 65 00 00 */	stw r3, 0x0(r5)
.L_81339C74:
/* 81339C74 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81339C78 | 2C 00 00 49 */	cmpwi r0, 0x49
/* 81339C7C | 40 82 00 38 */	bne .L_81339CB4
/* 81339C80 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81339C84 | 2C 00 00 4D */	cmpwi r0, 0x4d
/* 81339C88 | 40 82 00 2C */	bne .L_81339CB4
/* 81339C8C | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 81339C90 | 2C 00 00 45 */	cmpwi r0, 0x45
/* 81339C94 | 40 82 00 20 */	bne .L_81339CB4
/* 81339C98 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 81339C9C | 2C 00 00 54 */	cmpwi r0, 0x54
/* 81339CA0 | 40 82 00 14 */	bne .L_81339CB4
/* 81339CA4 | 28 03 00 1C */	cmplwi r3, 0x1c
/* 81339CA8 | 41 80 00 0C */	blt .L_81339CB4
/* 81339CAC | 28 03 06 00 */	cmplwi r3, 0x600
/* 81339CB0 | 40 81 00 0C */	ble .L_81339CBC
.L_81339CB4:
/* 81339CB4 | 38 60 00 00 */	li r3, 0x0
/* 81339CB8 | 4E 80 00 20 */	blr
.L_81339CBC:
/* 81339CBC | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 81339CC0 | 38 03 FF FD */	subi r0, r3, 0x3
/* 81339CC4 | 7C 00 00 34 */	cntlzw r0, r0
/* 81339CC8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81339CCC | 4E 80 00 20 */	blr
.endfn checkHeaderBase__Q33ipl7channel7ManagerFPCUcPUl

# .text:0x2358 | 0x81339CD0 | size: 0x9C
# ipl::channel::Manager::checkHeaderMD5(unsigned char*)
.fn checkHeaderMD5__Q33ipl7channel7ManagerFPUc, global
/* 81339CD0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81339CD4 | 7C 08 02 A6 */	mflr r0
/* 81339CD8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81339CDC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81339CE0 | 48 2B F7 E9 */	bl _savegpr_29
/* 81339CE4 | 83 E4 00 44 */	lwz r31, 0x44(r4)
/* 81339CE8 | 7C 7D 1B 78 */	mr r29, r3
/* 81339CEC | 38 00 00 10 */	li r0, 0x10
/* 81339CF0 | 7C 9E 23 78 */	mr r30, r4
/* 81339CF4 | 7C A4 FA 14 */	add r5, r4, r31
/* 81339CF8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81339CFC | 38 C0 00 00 */	li r6, 0x0
/* 81339D00 | 7C 09 03 A6 */	mtctr r0
.L_81339D04:
/* 81339D04 | 7C 85 32 14 */	add r4, r5, r6
/* 81339D08 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81339D0C | 88 04 FF F0 */	lbz r0, -0x10(r4)
/* 81339D10 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 81339D14 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81339D18 | 42 00 FF EC */	bdnz .L_81339D04
/* 81339D1C | 7F C3 F3 78 */	mr r3, r30
/* 81339D20 | 38 80 00 00 */	li r4, 0x0
/* 81339D24 | 38 A0 00 40 */	li r5, 0x40
/* 81339D28 | 4B FF 66 0D */	bl memset
/* 81339D2C | 7C 7F F2 14 */	add r3, r31, r30
/* 81339D30 | 38 80 00 00 */	li r4, 0x0
/* 81339D34 | 38 63 FF F0 */	subi r3, r3, 0x10
/* 81339D38 | 38 A0 00 10 */	li r5, 0x10
/* 81339D3C | 4B FF 65 F9 */	bl memset
/* 81339D40 | 7F A3 EB 78 */	mr r3, r29
/* 81339D44 | 7F C5 F3 78 */	mr r5, r30
/* 81339D48 | 7F E6 FB 78 */	mr r6, r31
/* 81339D4C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81339D50 | 48 00 00 1D */	bl calcMD5__Q33ipl7channel7ManagerCFPCUcPCUcUl
/* 81339D54 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81339D58 | 48 2B F7 BD */	bl _restgpr_29
/* 81339D5C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81339D60 | 7C 08 03 A6 */	mtlr r0
/* 81339D64 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81339D68 | 4E 80 00 20 */	blr
.endfn checkHeaderMD5__Q33ipl7channel7ManagerFPUc

# .text:0x23F4 | 0x81339D6C | size: 0x90
# ipl::channel::Manager::calcMD5(const unsigned char*, const unsigned char*, unsigned long) const
.fn calcMD5__Q33ipl7channel7ManagerCFPCUcPCUcUl, global
/* 81339D6C | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81339D70 | 7C 08 02 A6 */	mflr r0
/* 81339D74 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81339D78 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81339D7C | 48 2B F7 4D */	bl _savegpr_29
/* 81339D80 | 7C 9D 23 78 */	mr r29, r4
/* 81339D84 | 7C BE 2B 78 */	mr r30, r5
/* 81339D88 | 7C DF 33 78 */	mr r31, r6
/* 81339D8C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81339D90 | 48 15 9A 65 */	bl NETMD5Init
/* 81339D94 | 7F C4 F3 78 */	mr r4, r30
/* 81339D98 | 7F E5 FB 78 */	mr r5, r31
/* 81339D9C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81339DA0 | 48 15 9A 95 */	bl NETMD5Update
/* 81339DA4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81339DA8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81339DAC | 48 15 9B 79 */	bl NETMD5GetDigest
/* 81339DB0 | 38 00 00 10 */	li r0, 0x10
/* 81339DB4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81339DB8 | 7C 09 03 A6 */	mtctr r0
.L_81339DBC:
/* 81339DBC | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 81339DC0 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81339DC4 | 7C 04 00 40 */	cmplw r4, r0
/* 81339DC8 | 41 82 00 0C */	beq .L_81339DD4
/* 81339DCC | 38 60 00 00 */	li r3, 0x0
/* 81339DD0 | 48 00 00 14 */	b .L_81339DE4
.L_81339DD4:
/* 81339DD4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81339DD8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81339DDC | 42 00 FF E0 */	bdnz .L_81339DBC
/* 81339DE0 | 38 60 00 01 */	li r3, 0x1
.L_81339DE4:
/* 81339DE4 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81339DE8 | 48 2B F7 2D */	bl _restgpr_29
/* 81339DEC | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 81339DF0 | 7C 08 03 A6 */	mtlr r0
/* 81339DF4 | 38 21 00 80 */	addi r1, r1, 0x80
/* 81339DF8 | 4E 80 00 20 */	blr
.endfn calcMD5__Q33ipl7channel7ManagerCFPCUcPCUcUl

# .text:0x2484 | 0x81339DFC | size: 0x1B4
# ipl::channel::Manager::setDiskBannerInfo(bool)
.fn setDiskBannerInfo__Q33ipl7channel7ManagerFb, global
/* 81339DFC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81339E00 | 7C 08 02 A6 */	mflr r0
/* 81339E04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81339E08 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81339E0C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81339E10 | 7C 7F 1B 78 */	mr r31, r3
/* 81339E14 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81339E18 | 7C 9E 23 78 */	mr r30, r4
/* 81339E1C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81339E20 | 4B FF F0 31 */	bl getDiskChannelLocation__Q33ipl7channel7ManagerFPiPi
/* 81339E24 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81339E28 | 41 82 00 64 */	beq .L_81339E8C
/* 81339E2C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 81339E30 | 38 DF 15 7C */	addi r6, r31, 0x157c
/* 81339E34 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 81339E38 | 38 00 00 03 */	li r0, 0x3
/* 81339E3C | 1C A4 05 40 */	mulli r5, r4, 0x540
/* 81339E40 | 38 E0 00 00 */	li r7, 0x0
/* 81339E44 | 38 80 00 00 */	li r4, 0x0
/* 81339E48 | 1C 63 00 70 */	mulli r3, r3, 0x70
/* 81339E4C | 7C BF 2A 14 */	add r5, r31, r5
/* 81339E50 | 7C 65 1A 14 */	add r3, r5, r3
/* 81339E54 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 81339E58 | 7C 09 03 A6 */	mtctr r0
.L_81339E5C:
/* 81339E5C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81339E60 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81339E64 | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 81339E68 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 81339E6C | 7C 7F 1A 14 */	add r3, r31, r3
/* 81339E70 | 7C 07 02 14 */	add r0, r7, r0
/* 81339E74 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81339E78 | 7C 63 02 14 */	add r3, r3, r0
/* 81339E7C | 98 83 00 25 */	stb r4, 0x25(r3)
/* 81339E80 | 42 00 FF DC */	bdnz .L_81339E5C
/* 81339E84 | 38 60 00 01 */	li r3, 0x1
/* 81339E88 | 48 00 01 10 */	b .L_81339F98
.L_81339E8C:
/* 81339E8C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81339E90 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81339E94 | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 81339E98 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81339E9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81339EA0 | 40 82 00 0C */	bne .L_81339EAC
/* 81339EA4 | 38 60 00 00 */	li r3, 0x0
/* 81339EA8 | 48 00 00 F0 */	b .L_81339F98
.L_81339EAC:
/* 81339EAC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81339EB0 | 48 02 6B 39 */	bl getDiskBannerBuffer__Q33ipl3bs27ManagerFPPv
/* 81339EB4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81339EB8 | 7F E3 FB 78 */	mr r3, r31
/* 81339EBC | 38 A0 00 00 */	li r5, 0x0
/* 81339EC0 | 38 84 00 40 */	addi r4, r4, 0x40
/* 81339EC4 | 4B FF FD A1 */	bl checkHeaderBase__Q33ipl7channel7ManagerFPCUcPUl
/* 81339EC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81339ECC | 40 82 00 0C */	bne .L_81339ED8
/* 81339ED0 | 38 60 00 00 */	li r3, 0x0
/* 81339ED4 | 48 00 00 C4 */	b .L_81339F98
.L_81339ED8:
/* 81339ED8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81339EDC | 7F E3 FB 78 */	mr r3, r31
/* 81339EE0 | 4B FF FD F1 */	bl checkHeaderMD5__Q33ipl7channel7ManagerFPUc
/* 81339EE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81339EE8 | 40 82 00 0C */	bne .L_81339EF4
/* 81339EEC | 38 60 00 00 */	li r3, 0x0
/* 81339EF0 | 48 00 00 A8 */	b .L_81339F98
.L_81339EF4:
/* 81339EF4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81339EF8 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 81339EFC | 60 00 00 01 */	ori r0, r0, 0x1
/* 81339F00 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 81339F04 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81339F08 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81339F0C | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 81339F10 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81339F14 | 80 84 00 44 */	lwz r4, 0x44(r4)
/* 81339F18 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 81339F1C | 7C 7F 1A 14 */	add r3, r31, r3
/* 81339F20 | 7C 63 02 14 */	add r3, r3, r0
/* 81339F24 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 81339F28 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81339F2C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81339F30 | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 81339F34 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81339F38 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 81339F3C | 7C 7F 1A 14 */	add r3, r31, r3
/* 81339F40 | 7C 63 02 14 */	add r3, r3, r0
/* 81339F44 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 81339F48 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81339F4C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 81339F50 | 1C 00 05 40 */	mulli r0, r0, 0x540
/* 81339F54 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81339F58 | 1C 63 00 70 */	mulli r3, r3, 0x70
/* 81339F5C | 7C 1F 02 14 */	add r0, r31, r0
/* 81339F60 | 7C 60 1A 14 */	add r3, r0, r3
/* 81339F64 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81339F68 | 7C 04 02 14 */	add r0, r4, r0
/* 81339F6C | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81339F70 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81339F74 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 81339F78 | 1C 00 05 40 */	mulli r0, r0, 0x540
/* 81339F7C | 1C 63 00 70 */	mulli r3, r3, 0x70
/* 81339F80 | 7C 1F 02 14 */	add r0, r31, r0
/* 81339F84 | 7C 80 1A 14 */	add r4, r0, r3
/* 81339F88 | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 81339F8C | 38 84 00 28 */	addi r4, r4, 0x28
/* 81339F90 | 48 23 6E 11 */	bl ARCInitHandle
/* 81339F94 | 38 60 00 01 */	li r3, 0x1
.L_81339F98:
/* 81339F98 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81339F9C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81339FA0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81339FA4 | 7C 08 03 A6 */	mtlr r0
/* 81339FA8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81339FAC | 4E 80 00 20 */	blr
.endfn setDiskBannerInfo__Q33ipl7channel7ManagerFb

# .text:0x2638 | 0x81339FB0 | size: 0x30C
# ipl::channel::Manager::getDiskBannerData(int, bool)
.fn getDiskBannerData__Q33ipl7channel7ManagerFib, global
/* 81339FB0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81339FB4 | 7C 08 02 A6 */	mflr r0
/* 81339FB8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81339FBC | 39 61 00 50 */	addi r11, r1, 0x50
/* 81339FC0 | 48 2B F4 FD */	bl _savegpr_26
/* 81339FC4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81339FC8 | 3F 80 81 63 */	lis r28, lbl_81634A28@ha
/* 81339FCC | 7C 7A 1B 78 */	mr r26, r3
/* 81339FD0 | 7C 9B 23 78 */	mr r27, r4
/* 81339FD4 | 3B 9C 4A 28 */	addi r28, r28, lbl_81634A28@l
/* 81339FD8 | 41 82 00 0C */	beq .L_81339FE4
/* 81339FDC | 38 00 00 00 */	li r0, 0x0
/* 81339FE0 | 98 03 1B 81 */	stb r0, 0x1b81(r3)
.L_81339FE4:
/* 81339FE4 | 7F 43 D3 78 */	mr r3, r26
/* 81339FE8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81339FEC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81339FF0 | 4B FF EE 61 */	bl getDiskChannelLocation__Q33ipl7channel7ManagerFPiPi
/* 81339FF4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81339FF8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81339FFC | 1C 00 05 40 */	mulli r0, r0, 0x540
/* 8133A000 | 1C 63 00 70 */	mulli r3, r3, 0x70
/* 8133A004 | 7C 1A 02 14 */	add r0, r26, r0
/* 8133A008 | 7C 60 1A 14 */	add r3, r0, r3
/* 8133A00C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8133A010 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A014 | 41 82 00 10 */	beq .L_8133A024
/* 8133A018 | 88 1A 1B 90 */	lbz r0, 0x1b90(r26)
/* 8133A01C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A020 | 40 82 00 0C */	bne .L_8133A02C
.L_8133A024:
/* 8133A024 | 38 60 00 00 */	li r3, 0x0
/* 8133A028 | 48 00 02 7C */	b .L_8133A2A4
.L_8133A02C:
/* 8133A02C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8133A030 | 40 82 00 3C */	bne .L_8133A06C
/* 8133A034 | 38 63 00 28 */	addi r3, r3, 0x28
/* 8133A038 | 38 9C 00 00 */	addi r4, r28, 0x0
/* 8133A03C | 38 A1 00 20 */	addi r5, r1, 0x20
/* 8133A040 | 48 23 6E 01 */	bl ARCOpen
/* 8133A044 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8133A048 | 3B FA 1B 84 */	addi r31, r26, 0x1b84
/* 8133A04C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133A050 | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 8133A054 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 8133A058 | 7C 7A 1A 14 */	add r3, r26, r3
/* 8133A05C | 7C 63 02 14 */	add r3, r3, r0
/* 8133A060 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8133A064 | 83 C3 00 4C */	lwz r30, 0x4c(r3)
/* 8133A068 | 48 00 00 80 */	b .L_8133A0E8
.L_8133A06C:
/* 8133A06C | 2C 1B 00 01 */	cmpwi r27, 0x1
/* 8133A070 | 40 82 00 3C */	bne .L_8133A0AC
/* 8133A074 | 38 63 00 28 */	addi r3, r3, 0x28
/* 8133A078 | 38 9C 00 0F */	addi r4, r28, 0xf
/* 8133A07C | 38 A1 00 20 */	addi r5, r1, 0x20
/* 8133A080 | 48 23 6D C1 */	bl ARCOpen
/* 8133A084 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8133A088 | 3B FA 1B 88 */	addi r31, r26, 0x1b88
/* 8133A08C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133A090 | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 8133A094 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 8133A098 | 7C 7A 1A 14 */	add r3, r26, r3
/* 8133A09C | 7C 63 02 14 */	add r3, r3, r0
/* 8133A0A0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8133A0A4 | 83 C3 00 50 */	lwz r30, 0x50(r3)
/* 8133A0A8 | 48 00 00 40 */	b .L_8133A0E8
.L_8133A0AC:
/* 8133A0AC | 2C 1B 00 02 */	cmpwi r27, 0x2
/* 8133A0B0 | 40 82 00 38 */	bne .L_8133A0E8
/* 8133A0B4 | 38 63 00 28 */	addi r3, r3, 0x28
/* 8133A0B8 | 38 9C 00 20 */	addi r4, r28, 0x20
/* 8133A0BC | 38 A1 00 20 */	addi r5, r1, 0x20
/* 8133A0C0 | 48 23 6D 81 */	bl ARCOpen
/* 8133A0C4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8133A0C8 | 3B FA 1B 8C */	addi r31, r26, 0x1b8c
/* 8133A0CC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133A0D0 | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 8133A0D4 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 8133A0D8 | 7C 7A 1A 14 */	add r3, r26, r3
/* 8133A0DC | 7C 63 02 14 */	add r3, r3, r0
/* 8133A0E0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8133A0E4 | 83 C3 00 54 */	lwz r30, 0x54(r3)
.L_8133A0E8:
/* 8133A0E8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8133A0EC | 48 23 74 A9 */	bl ARCGetStartOffset
/* 8133A0F0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8133A0F4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133A0F8 | 1C 84 05 40 */	mulli r4, r4, 0x540
/* 8133A0FC | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 8133A100 | 7C 9A 22 14 */	add r4, r26, r4
/* 8133A104 | 7C 84 02 14 */	add r4, r4, r0
/* 8133A108 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 8133A10C | 7F A0 1A 14 */	add r29, r0, r3
/* 8133A110 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8133A114 | 2C 00 00 49 */	cmpwi r0, 0x49
/* 8133A118 | 40 82 00 40 */	bne .L_8133A158
/* 8133A11C | 88 1D 00 01 */	lbz r0, 0x1(r29)
/* 8133A120 | 2C 00 00 4D */	cmpwi r0, 0x4d
/* 8133A124 | 40 82 00 34 */	bne .L_8133A158
/* 8133A128 | 88 1D 00 02 */	lbz r0, 0x2(r29)
/* 8133A12C | 2C 00 00 44 */	cmpwi r0, 0x44
/* 8133A130 | 40 82 00 28 */	bne .L_8133A158
/* 8133A134 | 88 1D 00 03 */	lbz r0, 0x3(r29)
/* 8133A138 | 2C 00 00 35 */	cmpwi r0, 0x35
/* 8133A13C | 40 82 00 1C */	bne .L_8133A158
/* 8133A140 | 83 9D 00 04 */	lwz r28, 0x4(r29)
/* 8133A144 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8133A148 | 38 9D 00 10 */	addi r4, r29, 0x10
/* 8133A14C | 38 A0 00 10 */	li r5, 0x10
/* 8133A150 | 4B FF 60 E1 */	bl memcpy
/* 8133A154 | 48 00 00 0C */	b .L_8133A160
.L_8133A158:
/* 8133A158 | 38 60 00 00 */	li r3, 0x0
/* 8133A15C | 48 00 01 48 */	b .L_8133A2A4
.L_8133A160:
/* 8133A160 | 88 1D 00 20 */	lbz r0, 0x20(r29)
/* 8133A164 | 2C 00 00 4C */	cmpwi r0, 0x4c
/* 8133A168 | 40 82 00 AC */	bne .L_8133A214
/* 8133A16C | 88 1D 00 21 */	lbz r0, 0x21(r29)
/* 8133A170 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 8133A174 | 40 82 00 A0 */	bne .L_8133A214
/* 8133A178 | 88 1D 00 22 */	lbz r0, 0x22(r29)
/* 8133A17C | 2C 00 00 37 */	cmpwi r0, 0x37
/* 8133A180 | 40 82 00 94 */	bne .L_8133A214
/* 8133A184 | 88 1D 00 23 */	lbz r0, 0x23(r29)
/* 8133A188 | 2C 00 00 37 */	cmpwi r0, 0x37
/* 8133A18C | 40 82 00 88 */	bne .L_8133A214
/* 8133A190 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8133A194 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133A198 | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 8133A19C | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 8133A1A0 | 7C 7A 1A 14 */	add r3, r26, r3
/* 8133A1A4 | 7C 03 02 14 */	add r0, r3, r0
/* 8133A1A8 | 7C 60 DA 14 */	add r3, r0, r27
/* 8133A1AC | 88 03 00 25 */	lbz r0, 0x25(r3)
/* 8133A1B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A1B4 | 40 82 00 E0 */	bne .L_8133A294
/* 8133A1B8 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 8133A1BC | 48 22 20 B1 */	bl CXGetUncompressedSize
/* 8133A1C0 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8133A1C4 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 8133A1C8 | 48 22 20 E5 */	bl fn_8155C2AC
/* 8133A1CC | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8133A1D0 | 39 00 00 01 */	li r8, 0x1
/* 8133A1D4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133A1D8 | 7F 43 D3 78 */	mr r3, r26
/* 8133A1DC | 1C E4 05 40 */	mulli r7, r4, 0x540
/* 8133A1E0 | 7F 86 E3 78 */	mr r6, r28
/* 8133A1E4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8133A1E8 | 38 BD 00 20 */	addi r5, r29, 0x20
/* 8133A1EC | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 8133A1F0 | 7C FA 3A 14 */	add r7, r26, r7
/* 8133A1F4 | 7C 07 02 14 */	add r0, r7, r0
/* 8133A1F8 | 7C E0 DA 14 */	add r7, r0, r27
/* 8133A1FC | 99 07 00 25 */	stb r8, 0x25(r7)
/* 8133A200 | 4B FF FB 6D */	bl calcMD5__Q33ipl7channel7ManagerCFPCUcPCUcUl
/* 8133A204 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A208 | 40 82 00 8C */	bne .L_8133A294
/* 8133A20C | 38 60 00 00 */	li r3, 0x0
/* 8133A210 | 48 00 00 94 */	b .L_8133A2A4
.L_8133A214:
/* 8133A214 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8133A218 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133A21C | 1C 63 05 40 */	mulli r3, r3, 0x540
/* 8133A220 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 8133A224 | 7C 7A 1A 14 */	add r3, r26, r3
/* 8133A228 | 7C 03 02 14 */	add r0, r3, r0
/* 8133A22C | 7C 60 DA 14 */	add r3, r0, r27
/* 8133A230 | 88 03 00 25 */	lbz r0, 0x25(r3)
/* 8133A234 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A238 | 40 82 00 5C */	bne .L_8133A294
/* 8133A23C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133A240 | 7F C5 F3 78 */	mr r5, r30
/* 8133A244 | 38 9D 00 20 */	addi r4, r29, 0x20
/* 8133A248 | 4B FF 5F E9 */	bl memcpy
/* 8133A24C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8133A250 | 38 E0 00 01 */	li r7, 0x1
/* 8133A254 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8133A258 | 7F 43 D3 78 */	mr r3, r26
/* 8133A25C | 1C A4 05 40 */	mulli r5, r4, 0x540
/* 8133A260 | 7F 86 E3 78 */	mr r6, r28
/* 8133A264 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8133A268 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 8133A26C | 7C BA 2A 14 */	add r5, r26, r5
/* 8133A270 | 7C 05 02 14 */	add r0, r5, r0
/* 8133A274 | 7C A0 DA 14 */	add r5, r0, r27
/* 8133A278 | 98 E5 00 25 */	stb r7, 0x25(r5)
/* 8133A27C | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8133A280 | 4B FF FA ED */	bl calcMD5__Q33ipl7channel7ManagerCFPCUcPCUcUl
/* 8133A284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A288 | 40 82 00 0C */	bne .L_8133A294
/* 8133A28C | 38 60 00 00 */	li r3, 0x0
/* 8133A290 | 48 00 00 14 */	b .L_8133A2A4
.L_8133A294:
/* 8133A294 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133A298 | 7F C4 F3 78 */	mr r4, r30
/* 8133A29C | 48 1F 36 C9 */	bl DCStoreRange
/* 8133A2A0 | 80 7F 00 00 */	lwz r3, 0x0(r31)
.L_8133A2A4:
/* 8133A2A4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8133A2A8 | 48 2B F2 61 */	bl _restgpr_26
/* 8133A2AC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8133A2B0 | 7C 08 03 A6 */	mtlr r0
/* 8133A2B4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8133A2B8 | 4E 80 00 20 */	blr
.endfn getDiskBannerData__Q33ipl7channel7ManagerFib

# .text:0x2944 | 0x8133A2BC | size: 0xA0
# ipl::channel::Manager::titleIDtoPageIndex(unsigned long long, int*, int*) const
.fn titleIDtoPageIndex__Q33ipl7channel7ManagerCFUxPiPi, global
/* 8133A2BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A2C0 | 38 80 00 00 */	li r4, 0x0
/* 8133A2C4 | 38 00 00 0C */	li r0, 0xc
/* 8133A2C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133A2CC | 3B E0 00 00 */	li r31, 0x0
/* 8133A2D0 | 93 C1 00 08 */	stw r30, 0x8(r1)
.L_8133A2D4:
/* 8133A2D4 | 7D 83 22 14 */	add r12, r3, r4
/* 8133A2D8 | 3B C0 00 00 */	li r30, 0x0
/* 8133A2DC | 39 20 00 00 */	li r9, 0x0
/* 8133A2E0 | 7C 09 03 A6 */	mtctr r0
.L_8133A2E4:
/* 8133A2E4 | 7D 6C 4A 14 */	add r11, r12, r9
/* 8133A2E8 | 89 4B 00 24 */	lbz r10, 0x24(r11)
/* 8133A2EC | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 8133A2F0 | 41 82 00 34 */	beq .L_8133A324
/* 8133A2F4 | 89 4B 00 44 */	lbz r10, 0x44(r11)
/* 8133A2F8 | 28 0A 00 03 */	cmplwi r10, 0x3
/* 8133A2FC | 40 82 00 28 */	bne .L_8133A324
/* 8133A300 | 81 4B 00 4C */	lwz r10, 0x4c(r11)
/* 8133A304 | 81 6B 00 50 */	lwz r11, 0x50(r11)
/* 8133A308 | 7D 4A 2A 78 */	xor r10, r10, r5
/* 8133A30C | 7D 6B 32 78 */	xor r11, r11, r6
/* 8133A310 | 7D 6A 53 79 */	or. r10, r11, r10
/* 8133A314 | 40 82 00 10 */	bne .L_8133A324
/* 8133A318 | 93 E7 00 00 */	stw r31, 0x0(r7)
/* 8133A31C | 93 C8 00 00 */	stw r30, 0x0(r8)
/* 8133A320 | 48 00 00 2C */	b .L_8133A34C
.L_8133A324:
/* 8133A324 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8133A328 | 39 29 00 70 */	addi r9, r9, 0x70
/* 8133A32C | 42 00 FF B8 */	bdnz .L_8133A2E4
/* 8133A330 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8133A334 | 38 84 05 40 */	addi r4, r4, 0x540
/* 8133A338 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8133A33C | 41 80 FF 98 */	blt .L_8133A2D4
/* 8133A340 | 38 00 FF FF */	li r0, -0x1
/* 8133A344 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 8133A348 | 90 08 00 00 */	stw r0, 0x0(r8)
.L_8133A34C:
/* 8133A34C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133A350 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133A354 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A358 | 4E 80 00 20 */	blr
.endfn titleIDtoPageIndex__Q33ipl7channel7ManagerCFUxPiPi

# .text:0x29E4 | 0x8133A35C | size: 0xA8
# ipl::channel::Manager::getLockedMsgFromBuf(const ipl::channel::SChanMgrDiskInMessages*) const
.fn getLockedMsgFromBuf__Q33ipl7channel7ManagerCFPCQ33ipl7channel22SChanMgrDiskInMessages, global
/* 8133A35C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A360 | 7C 08 02 A6 */	mflr r0
/* 8133A364 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A368 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133A36C | 7C 9F 23 78 */	mr r31, r4
/* 8133A370 | 4B FF B6 7D */	bl getLanguage__Q23ipl6SystemFv
/* 8133A374 | 1C 03 02 F0 */	mulli r0, r3, 0x2f0
/* 8133A378 | 7C 1F 02 2E */	lhzx r0, r31, r0
/* 8133A37C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A380 | 41 82 00 14 */	beq .L_8133A394
/* 8133A384 | 4B FF B6 69 */	bl getLanguage__Q23ipl6SystemFv
/* 8133A388 | 1C 03 02 F0 */	mulli r0, r3, 0x2f0
/* 8133A38C | 7C 7F 02 14 */	add r3, r31, r0
/* 8133A390 | 48 00 00 60 */	b .L_8133A3F0
.L_8133A394:
/* 8133A394 | 4B FF B6 F9 */	bl getRegion__Q23ipl6SystemFv
/* 8133A398 | 3C 80 81 61 */	lis r4, lbl_8160D2D0@ha
/* 8133A39C | 54 63 30 32 */	slwi r3, r3, 6
/* 8133A3A0 | 38 84 D2 D0 */	addi r4, r4, lbl_8160D2D0@l
/* 8133A3A4 | 38 00 00 10 */	li r0, 0x10
/* 8133A3A8 | 7C C4 1A 14 */	add r6, r4, r3
/* 8133A3AC | 38 60 00 00 */	li r3, 0x0
/* 8133A3B0 | 7C 09 03 A6 */	mtctr r0
.L_8133A3B4:
/* 8133A3B4 | 7C A6 18 2E */	lwzx r5, r6, r3
/* 8133A3B8 | 1C 85 02 F0 */	mulli r4, r5, 0x2f0
/* 8133A3BC | 7C 1F 22 2E */	lhzx r0, r31, r4
/* 8133A3C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A3C4 | 41 82 00 0C */	beq .L_8133A3D0
/* 8133A3C8 | 7C 7F 22 14 */	add r3, r31, r4
/* 8133A3CC | 48 00 00 24 */	b .L_8133A3F0
.L_8133A3D0:
/* 8133A3D0 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 8133A3D4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 8133A3D8 | 41 82 00 0C */	beq .L_8133A3E4
/* 8133A3DC | 38 63 00 04 */	addi r3, r3, 0x4
/* 8133A3E0 | 42 00 FF D4 */	bdnz .L_8133A3B4
.L_8133A3E4:
/* 8133A3E4 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 8133A3E8 | 1C 00 02 F0 */	mulli r0, r0, 0x2f0
/* 8133A3EC | 7C 7F 02 14 */	add r3, r31, r0
.L_8133A3F0:
/* 8133A3F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133A3F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133A3F8 | 7C 08 03 A6 */	mtlr r0
/* 8133A3FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A400 | 4E 80 00 20 */	blr
.endfn getLockedMsgFromBuf__Q33ipl7channel7ManagerCFPCQ33ipl7channel22SChanMgrDiskInMessages

# .text:0x2A8C | 0x8133A404 | size: 0xDC
# ipl::channel::Manager::nand_error_handling(int)
.fn nand_error_handling__Q33ipl7channel7ManagerFi, global
/* 8133A404 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A408 | 7C 08 02 A6 */	mflr r0
/* 8133A40C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133A410 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A414 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133A418 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133A41C | 3B C0 00 00 */	li r30, 0x0
/* 8133A420 | 90 83 1B 94 */	stw r4, 0x1b94(r3)
/* 8133A424 | 41 80 00 0C */	blt .L_8133A430
/* 8133A428 | 38 60 00 01 */	li r3, 0x1
/* 8133A42C | 48 00 00 9C */	b .L_8133A4C8
.L_8133A430:
/* 8133A430 | 38 04 00 0F */	addi r0, r4, 0xf
/* 8133A434 | 28 00 00 0B */	cmplwi r0, 0xb
/* 8133A438 | 41 81 00 4C */	bgt .L_8133A484
/* 8133A43C | 3C 60 81 63 */	lis r3, jumptable_81634ACC@ha
/* 8133A440 | 54 00 10 3A */	slwi r0, r0, 2
/* 8133A444 | 38 63 4A CC */	addi r3, r3, jumptable_81634ACC@l
/* 8133A448 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8133A44C | 7C 69 03 A6 */	mtctr r3
/* 8133A450 | 4E 80 04 20 */	bctr
.L_8133A454:
/* 8133A454 | 3B C0 00 01 */	li r30, 0x1
/* 8133A458 | 48 00 00 6C */	b .L_8133A4C4
.L_8133A45C:
/* 8133A45C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133A460 | 38 80 00 01 */	li r4, 0x1
/* 8133A464 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133A468 | 38 A0 00 01 */	li r5, 0x1
/* 8133A46C | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 8133A470 | 38 C0 00 00 */	li r6, 0x0
/* 8133A474 | 38 E0 00 00 */	li r7, 0x0
/* 8133A478 | 39 00 FF FF */	li r8, -0x1
/* 8133A47C | 48 01 C0 99 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8133A480 | 48 00 00 44 */	b .L_8133A4C4
.L_8133A484:
/* 8133A484 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133A488 | 3C C0 81 63 */	lis r6, lbl_81634AB6@ha
/* 8133A48C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133A490 | 7C 85 23 78 */	mr r5, r4
/* 8133A494 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133A498 | 38 C6 4A B6 */	addi r6, r6, lbl_81634AB6@l
/* 8133A49C | 38 8D 80 50 */	li r4, lbl_81696090@sda21
/* 8133A4A0 | 38 E0 09 00 */	li r7, 0x900
/* 8133A4A4 | 48 01 C2 55 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8133A4A8 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8133A4AC | 38 80 00 01 */	li r4, 0x1
/* 8133A4B0 | 38 A0 00 02 */	li r5, 0x2
/* 8133A4B4 | 38 C0 00 00 */	li r6, 0x0
/* 8133A4B8 | 38 E0 00 00 */	li r7, 0x0
/* 8133A4BC | 39 00 FF FF */	li r8, -0x1
/* 8133A4C0 | 48 01 C0 55 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133A4C4:
/* 8133A4C4 | 7F C3 F3 78 */	mr r3, r30
.L_8133A4C8:
/* 8133A4C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133A4CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133A4D0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133A4D4 | 7C 08 03 A6 */	mtlr r0
/* 8133A4D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A4DC | 4E 80 00 20 */	blr
.endfn nand_error_handling__Q33ipl7channel7ManagerFi

# .text:0x2B68 | 0x8133A4E0 | size: 0x9C
.fn iplChannelManager_8133A4E0, local
/* 8133A4E0 | 39 80 00 00 */	li r12, 0x0
/* 8133A4E4 | 38 80 00 00 */	li r4, 0x0
/* 8133A4E8 | 38 00 00 0C */	li r0, 0xc
.L_8133A4EC:
/* 8133A4EC | 7D 63 22 14 */	add r11, r3, r4
/* 8133A4F0 | 38 E0 00 00 */	li r7, 0x0
/* 8133A4F4 | 7C 09 03 A6 */	mtctr r0
.L_8133A4F8:
/* 8133A4F8 | 7D 2B 3A 14 */	add r9, r11, r7
/* 8133A4FC | 89 09 00 24 */	lbz r8, 0x24(r9)
/* 8133A500 | 81 49 00 4C */	lwz r10, 0x4c(r9)
/* 8133A504 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 8133A508 | 81 09 00 50 */	lwz r8, 0x50(r9)
/* 8133A50C | 41 82 00 24 */	beq .L_8133A530
/* 8133A510 | 7D 09 32 78 */	xor r9, r8, r6
/* 8133A514 | 7D 48 2A 78 */	xor r8, r10, r5
/* 8133A518 | 7D 28 43 79 */	or. r8, r9, r8
/* 8133A51C | 40 82 00 14 */	bne .L_8133A530
/* 8133A520 | 7C 03 22 14 */	add r0, r3, r4
/* 8133A524 | 7C 60 3A 14 */	add r3, r0, r7
/* 8133A528 | 38 63 00 0C */	addi r3, r3, 0xc
/* 8133A52C | 4E 80 00 20 */	blr
.L_8133A530:
/* 8133A530 | 38 E7 00 70 */	addi r7, r7, 0x70
/* 8133A534 | 42 00 FF C4 */	bdnz .L_8133A4F8
/* 8133A538 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 8133A53C | 38 84 05 40 */	addi r4, r4, 0x540
/* 8133A540 | 2C 0C 00 04 */	cmpwi r12, 0x4
/* 8133A544 | 41 80 FF A8 */	blt .L_8133A4EC
/* 8133A548 | 88 03 15 24 */	lbz r0, 0x1524(r3)
/* 8133A54C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A550 | 41 82 00 24 */	beq .L_8133A574
/* 8133A554 | 80 03 15 4C */	lwz r0, 0x154c(r3)
/* 8133A558 | 80 83 15 50 */	lwz r4, 0x1550(r3)
/* 8133A55C | 7C 00 2A 78 */	xor r0, r0, r5
/* 8133A560 | 7C 84 32 78 */	xor r4, r4, r6
/* 8133A564 | 7C 80 03 79 */	or. r0, r4, r0
/* 8133A568 | 40 82 00 0C */	bne .L_8133A574
/* 8133A56C | 38 63 15 0C */	addi r3, r3, 0x150c
/* 8133A570 | 4E 80 00 20 */	blr
.L_8133A574:
/* 8133A574 | 38 60 00 00 */	li r3, 0x0
/* 8133A578 | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A4E0

# .text:0x2C04 | 0x8133A57C | size: 0x3C
.fn iplChannelManager_8133A57C, global
/* 8133A57C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A580 | 7C 08 02 A6 */	mflr r0
/* 8133A584 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A588 | 4B FF FF 59 */	bl iplChannelManager_8133A4E0
/* 8133A58C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A590 | 41 82 00 14 */	beq .L_8133A5A4
/* 8133A594 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8133A598 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 8133A59C | 54 03 87 3E */	extrwi r3, r0, 4, 12
/* 8133A5A0 | 48 00 00 08 */	b .L_8133A5A8
.L_8133A5A4:
/* 8133A5A4 | 38 60 00 00 */	li r3, 0x0
.L_8133A5A8:
/* 8133A5A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133A5AC | 7C 08 03 A6 */	mtlr r0
/* 8133A5B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A5B4 | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A57C

# .text:0x2C40 | 0x8133A5B8 | size: 0x38
.fn iplChannelManager_8133A5B8, global
/* 8133A5B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A5BC | 7C 08 02 A6 */	mflr r0
/* 8133A5C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A5C4 | 4B FF FF 1D */	bl iplChannelManager_8133A4E0
/* 8133A5C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A5CC | 41 82 00 10 */	beq .L_8133A5DC
/* 8133A5D0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8133A5D4 | 80 63 00 54 */	lwz r3, 0x54(r3)
/* 8133A5D8 | 48 00 00 08 */	b .L_8133A5E0
.L_8133A5DC:
/* 8133A5DC | 38 60 00 00 */	li r3, 0x0
.L_8133A5E0:
/* 8133A5E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133A5E4 | 7C 08 03 A6 */	mtlr r0
/* 8133A5E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A5EC | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A5B8

# .text:0x2C78 | 0x8133A5F0 | size: 0x44
.fn iplChannelManager_8133A5F0, global
/* 8133A5F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A5F4 | 7C 08 02 A6 */	mflr r0
/* 8133A5F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A5FC | 4B FF FE E5 */	bl iplChannelManager_8133A4E0
/* 8133A600 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A604 | 41 82 00 1C */	beq .L_8133A620
/* 8133A608 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8133A60C | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 8133A610 | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 8133A614 | 41 82 00 0C */	beq .L_8133A620
/* 8133A618 | 38 60 00 01 */	li r3, 0x1
/* 8133A61C | 48 00 00 08 */	b .L_8133A624
.L_8133A620:
/* 8133A620 | 38 60 00 00 */	li r3, 0x0
.L_8133A624:
/* 8133A624 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133A628 | 7C 08 03 A6 */	mtlr r0
/* 8133A62C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A630 | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A5F0

# .text:0x2CBC | 0x8133A634 | size: 0x44
.fn iplChannelManager_8133A634, global
/* 8133A634 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A638 | 7C 08 02 A6 */	mflr r0
/* 8133A63C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A640 | 4B FF FE A1 */	bl iplChannelManager_8133A4E0
/* 8133A644 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A648 | 41 82 00 1C */	beq .L_8133A664
/* 8133A64C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8133A650 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 8133A654 | 54 00 04 63 */	rlwinm. r0, r0, 0, 17, 17
/* 8133A658 | 41 82 00 0C */	beq .L_8133A664
/* 8133A65C | 38 60 00 01 */	li r3, 0x1
/* 8133A660 | 48 00 00 08 */	b .L_8133A668
.L_8133A664:
/* 8133A664 | 38 60 00 00 */	li r3, 0x0
.L_8133A668:
/* 8133A668 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133A66C | 7C 08 03 A6 */	mtlr r0
/* 8133A670 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A674 | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A634

# .text:0x2D00 | 0x8133A678 | size: 0x40
.fn iplChannelManager_8133A678, global
/* 8133A678 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A67C | 7C 08 02 A6 */	mflr r0
/* 8133A680 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A684 | 4B FF FE 5D */	bl iplChannelManager_8133A4E0
/* 8133A688 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A68C | 41 82 00 18 */	beq .L_8133A6A4
/* 8133A690 | A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8133A694 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A698 | 41 82 00 0C */	beq .L_8133A6A4
/* 8133A69C | 38 60 00 01 */	li r3, 0x1
/* 8133A6A0 | 48 00 00 08 */	b .L_8133A6A8
.L_8133A6A4:
/* 8133A6A4 | 38 60 00 00 */	li r3, 0x0
.L_8133A6A8:
/* 8133A6A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133A6AC | 7C 08 03 A6 */	mtlr r0
/* 8133A6B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A6B4 | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A678

# .text:0x2D40 | 0x8133A6B8 | size: 0x84
.fn iplChannelManager_8133A6B8, global
/* 8133A6B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A6BC | 7C 08 02 A6 */	mflr r0
/* 8133A6C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A6C4 | 4B FF FE 1D */	bl iplChannelManager_8133A4E0
/* 8133A6C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A6CC | 40 82 00 0C */	bne .L_8133A6D8
/* 8133A6D0 | 38 60 00 00 */	li r3, 0x0
/* 8133A6D4 | 48 00 00 58 */	b .L_8133A72C
.L_8133A6D8:
/* 8133A6D8 | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 8133A6DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A6E0 | 41 82 00 48 */	beq .L_8133A728
/* 8133A6E4 | 88 03 00 38 */	lbz r0, 0x38(r3)
/* 8133A6E8 | 28 00 00 03 */	cmplwi r0, 0x3
/* 8133A6EC | 40 82 00 3C */	bne .L_8133A728
/* 8133A6F0 | 80 83 00 40 */	lwz r4, 0x40(r3)
/* 8133A6F4 | 3C 04 FF FF */	subis r0, r4, 0x1
/* 8133A6F8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8133A6FC | 40 82 00 2C */	bne .L_8133A728
/* 8133A700 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 8133A704 | 54 04 00 2E */	clrrwi r4, r0, 8
/* 8133A708 | 3C 04 B7 BF */	subis r0, r4, 0x4841
/* 8133A70C | 28 00 47 00 */	cmplwi r0, 0x4700
/* 8133A710 | 40 82 00 18 */	bne .L_8133A728
/* 8133A714 | A0 03 00 08 */	lhz r0, 0x8(r3)
/* 8133A718 | 28 00 00 06 */	cmplwi r0, 0x6
/* 8133A71C | 41 80 00 0C */	blt .L_8133A728
/* 8133A720 | 38 60 00 01 */	li r3, 0x1
/* 8133A724 | 48 00 00 08 */	b .L_8133A72C
.L_8133A728:
/* 8133A728 | 38 60 00 00 */	li r3, 0x0
.L_8133A72C:
/* 8133A72C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133A730 | 7C 08 03 A6 */	mtlr r0
/* 8133A734 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A738 | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A6B8

# .text:0x2DC4 | 0x8133A73C | size: 0x68
.fn iplChannelManager_8133A73C, global
/* 8133A73C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A740 | 7C 08 02 A6 */	mflr r0
/* 8133A744 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A748 | 4B FF FD 99 */	bl iplChannelManager_8133A4E0
/* 8133A74C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A750 | 40 82 00 0C */	bne .L_8133A75C
/* 8133A754 | 38 60 00 00 */	li r3, 0x0
/* 8133A758 | 48 00 00 3C */	b .L_8133A794
.L_8133A75C:
/* 8133A75C | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 8133A760 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A764 | 41 82 00 2C */	beq .L_8133A790
/* 8133A768 | 88 03 00 38 */	lbz r0, 0x38(r3)
/* 8133A76C | 28 00 00 03 */	cmplwi r0, 0x3
/* 8133A770 | 40 82 00 20 */	bne .L_8133A790
/* 8133A774 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 8133A778 | 54 03 00 2E */	clrrwi r3, r0, 8
/* 8133A77C | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 8133A780 | 28 00 44 00 */	cmplwi r0, 0x4400
/* 8133A784 | 40 82 00 0C */	bne .L_8133A790
/* 8133A788 | 38 60 00 01 */	li r3, 0x1
/* 8133A78C | 48 00 00 08 */	b .L_8133A794
.L_8133A790:
/* 8133A790 | 38 60 00 00 */	li r3, 0x0
.L_8133A794:
/* 8133A794 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133A798 | 7C 08 03 A6 */	mtlr r0
/* 8133A79C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133A7A0 | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A73C

# .text:0x2E2C | 0x8133A7A4 | size: 0xB8
.fn iplChannelManager_8133A7A4, global
/* 8133A7A4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133A7A8 | 7C 08 02 A6 */	mflr r0
/* 8133A7AC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8133A7B0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133A7B4 | 48 2B ED 15 */	bl _savegpr_29
/* 8133A7B8 | 7C 9D 23 78 */	mr r29, r4
/* 8133A7BC | 7C BF 2B 78 */	mr r31, r5
/* 8133A7C0 | 7C DE 33 78 */	mr r30, r6
/* 8133A7C4 | 4B FF FD 1D */	bl iplChannelManager_8133A4E0
/* 8133A7C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A7CC | 40 82 00 0C */	bne .L_8133A7D8
/* 8133A7D0 | 38 60 00 00 */	li r3, 0x0
/* 8133A7D4 | 48 00 00 70 */	b .L_8133A844
.L_8133A7D8:
/* 8133A7D8 | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 8133A7DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A7E0 | 41 82 00 10 */	beq .L_8133A7F0
/* 8133A7E4 | 88 03 00 38 */	lbz r0, 0x38(r3)
/* 8133A7E8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8133A7EC | 40 82 00 0C */	bne .L_8133A7F8
.L_8133A7F0:
/* 8133A7F0 | 38 60 00 00 */	li r3, 0x0
/* 8133A7F4 | 48 00 00 50 */	b .L_8133A844
.L_8133A7F8:
/* 8133A7F8 | 38 00 00 00 */	li r0, 0x0
/* 8133A7FC | 3D 60 81 09 */	lis r11, smArg__Q23ipl6System@ha
/* 8133A800 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133A804 | 3C A0 81 63 */	lis r5, lbl_81634A37@ha
/* 8133A808 | 39 6B 90 08 */	addi r11, r11, smArg__Q23ipl6System@l
/* 8133A80C | 38 C3 00 1C */	addi r6, r3, 0x1c
/* 8133A810 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8133A814 | 7F A4 EB 78 */	mr r4, r29
/* 8133A818 | 7F C8 F3 78 */	mr r8, r30
/* 8133A81C | 7F E7 FB 78 */	mr r7, r31
/* 8133A820 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8133A824 | 38 A5 4A 37 */	addi r5, r5, lbl_81634A37@l
/* 8133A828 | 39 40 00 00 */	li r10, 0x0
/* 8133A82C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8133A830 | 81 23 00 0C */	lwz r9, 0xc(r3)
/* 8133A834 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8133A838 | 80 6B 00 6C */	lwz r3, 0x6c(r11)
/* 8133A83C | 7D 29 02 14 */	add r9, r9, r0
/* 8133A840 | 48 00 2F B9 */	bl readMetaBodyAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi
.L_8133A844:
/* 8133A844 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133A848 | 48 2B EC CD */	bl _restgpr_29
/* 8133A84C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133A850 | 7C 08 03 A6 */	mtlr r0
/* 8133A854 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8133A858 | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A7A4

# .text:0x2EE4 | 0x8133A85C | size: 0xC8
.fn iplChannelManager_8133A85C, global
/* 8133A85C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133A860 | 7C 08 02 A6 */	mflr r0
/* 8133A864 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8133A868 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133A86C | 48 2B EC 5D */	bl _savegpr_29
/* 8133A870 | 7C 9D 23 78 */	mr r29, r4
/* 8133A874 | 7C BF 2B 78 */	mr r31, r5
/* 8133A878 | 7C DE 33 78 */	mr r30, r6
/* 8133A87C | 4B FF FC 65 */	bl iplChannelManager_8133A4E0
/* 8133A880 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A884 | 40 82 00 0C */	bne .L_8133A890
/* 8133A888 | 38 60 00 00 */	li r3, 0x0
/* 8133A88C | 48 00 00 80 */	b .L_8133A90C
.L_8133A890:
/* 8133A890 | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 8133A894 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A898 | 41 82 00 20 */	beq .L_8133A8B8
/* 8133A89C | 88 03 00 38 */	lbz r0, 0x38(r3)
/* 8133A8A0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8133A8A4 | 41 82 00 14 */	beq .L_8133A8B8
/* 8133A8A8 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8133A8AC | 80 04 00 54 */	lwz r0, 0x54(r4)
/* 8133A8B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A8B4 | 40 82 00 0C */	bne .L_8133A8C0
.L_8133A8B8:
/* 8133A8B8 | 38 60 00 00 */	li r3, 0x0
/* 8133A8BC | 48 00 00 50 */	b .L_8133A90C
.L_8133A8C0:
/* 8133A8C0 | 38 00 00 00 */	li r0, 0x0
/* 8133A8C4 | 3D 60 81 09 */	lis r11, smArg__Q23ipl6System@ha
/* 8133A8C8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133A8CC | 3C A0 81 63 */	lis r5, lbl_81634A48@ha
/* 8133A8D0 | 39 6B 90 08 */	addi r11, r11, smArg__Q23ipl6System@l
/* 8133A8D4 | 38 C3 00 1C */	addi r6, r3, 0x1c
/* 8133A8D8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8133A8DC | 7F A4 EB 78 */	mr r4, r29
/* 8133A8E0 | 7F C8 F3 78 */	mr r8, r30
/* 8133A8E4 | 7F E7 FB 78 */	mr r7, r31
/* 8133A8E8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8133A8EC | 38 A5 4A 48 */	addi r5, r5, lbl_81634A48@l
/* 8133A8F0 | 39 40 00 00 */	li r10, 0x0
/* 8133A8F4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8133A8F8 | 81 23 00 0C */	lwz r9, 0xc(r3)
/* 8133A8FC | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8133A900 | 80 6B 00 6C */	lwz r3, 0x6c(r11)
/* 8133A904 | 7D 29 02 14 */	add r9, r9, r0
/* 8133A908 | 48 00 2E F1 */	bl readMetaBodyAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcP9ARCHandleUxiUlPFPv_vPvi
.L_8133A90C:
/* 8133A90C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133A910 | 48 2B EC 05 */	bl _restgpr_29
/* 8133A914 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133A918 | 7C 08 03 A6 */	mtlr r0
/* 8133A91C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8133A920 | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A85C

# .text:0x2FAC | 0x8133A924 | size: 0xCC
.fn iplChannelManager_8133A924, global
/* 8133A924 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133A928 | 7C 08 02 A6 */	mflr r0
/* 8133A92C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8133A930 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133A934 | 48 2B EB 8D */	bl _savegpr_27
/* 8133A938 | 7C 7B 1B 78 */	mr r27, r3
/* 8133A93C | 7C 9C 23 78 */	mr r28, r4
/* 8133A940 | 7C BE 2B 78 */	mr r30, r5
/* 8133A944 | 7C DD 33 78 */	mr r29, r6
/* 8133A948 | 4B FF FB 99 */	bl iplChannelManager_8133A4E0
/* 8133A94C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A950 | 7C 7F 1B 78 */	mr r31, r3
/* 8133A954 | 40 82 00 0C */	bne .L_8133A960
/* 8133A958 | 38 60 00 00 */	li r3, 0x0
/* 8133A95C | 48 00 00 7C */	b .L_8133A9D8
.L_8133A960:
/* 8133A960 | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 8133A964 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133A968 | 41 82 00 10 */	beq .L_8133A978
/* 8133A96C | 88 03 00 38 */	lbz r0, 0x38(r3)
/* 8133A970 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8133A974 | 40 82 00 0C */	bne .L_8133A980
.L_8133A978:
/* 8133A978 | 38 60 00 00 */	li r3, 0x0
/* 8133A97C | 48 00 00 5C */	b .L_8133A9D8
.L_8133A980:
/* 8133A980 | 7F 63 DB 78 */	mr r3, r27
/* 8133A984 | 7F A6 EB 78 */	mr r6, r29
/* 8133A988 | 7F C5 F3 78 */	mr r5, r30
/* 8133A98C | 4B FF FB F1 */	bl iplChannelManager_8133A57C
/* 8133A990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133A994 | 40 82 00 0C */	bne .L_8133A9A0
/* 8133A998 | 38 60 00 00 */	li r3, 0x0
/* 8133A99C | 48 00 00 3C */	b .L_8133A9D8
.L_8133A9A0:
/* 8133A9A0 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8133A9A4 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 8133A9A8 | 3C A0 81 63 */	lis r5, lbl_81634A8F@ha
/* 8133A9AC | 7C 66 1B 78 */	mr r6, r3
/* 8133A9B0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8133A9B4 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 8133A9B8 | 7F 84 E3 78 */	mr r4, r28
/* 8133A9BC | 7F AA EB 78 */	mr r10, r29
/* 8133A9C0 | 80 67 00 6C */	lwz r3, 0x6c(r7)
/* 8133A9C4 | 7F C9 F3 78 */	mr r9, r30
/* 8133A9C8 | 38 A5 4A 8F */	addi r5, r5, lbl_81634A8F@l
/* 8133A9CC | 38 E0 00 00 */	li r7, 0x0
/* 8133A9D0 | 39 00 00 00 */	li r8, 0x0
/* 8133A9D4 | 48 00 2C C1 */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
.L_8133A9D8:
/* 8133A9D8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133A9DC | 48 2B EB 31 */	bl _restgpr_27
/* 8133A9E0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133A9E4 | 7C 08 03 A6 */	mtlr r0
/* 8133A9E8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8133A9EC | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A924

# .text:0x3078 | 0x8133A9F0 | size: 0x60
.fn iplChannelManager_8133A9F0, global
/* 8133A9F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133A9F4 | 7C 08 02 A6 */	mflr r0
/* 8133A9F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133A9FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133AA00 | 7C 7F 1B 78 */	mr r31, r3
/* 8133AA04 | 80 03 15 54 */	lwz r0, 0x1554(r3)
/* 8133AA08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133AA0C | 41 82 00 20 */	beq .L_8133AA2C
/* 8133AA10 | 41 82 00 1C */	beq .L_8133AA2C
/* 8133AA14 | 7C 03 03 78 */	mr r3, r0
/* 8133AA18 | 38 80 00 01 */	li r4, 0x1
/* 8133AA1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133AA20 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8133AA24 | 7D 89 03 A6 */	mtctr r12
/* 8133AA28 | 4E 80 04 21 */	bctrl
.L_8133AA2C:
/* 8133AA2C | 38 7F 15 0C */	addi r3, r31, 0x150c
/* 8133AA30 | 38 80 00 00 */	li r4, 0x0
/* 8133AA34 | 38 A0 00 70 */	li r5, 0x70
/* 8133AA38 | 4B FF 58 FD */	bl memset
/* 8133AA3C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133AA40 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133AA44 | 7C 08 03 A6 */	mtlr r0
/* 8133AA48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133AA4C | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133A9F0

# .text:0x30D8 | 0x8133AA50 | size: 0x30
.fn iplChannelManager_8133AA50, global
/* 8133AA50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133AA54 | 7C 08 02 A6 */	mflr r0
/* 8133AA58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133AA5C | 4B FF FA 85 */	bl iplChannelManager_8133A4E0
/* 8133AA60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AA64 | 41 82 00 0C */	beq .L_8133AA70
/* 8133AA68 | 38 00 00 00 */	li r0, 0x0
/* 8133AA6C | 98 03 00 18 */	stb r0, 0x18(r3)
.L_8133AA70:
/* 8133AA70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133AA74 | 7C 08 03 A6 */	mtlr r0
/* 8133AA78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133AA7C | 4E 80 00 20 */	blr
.endfn iplChannelManager_8133AA50

# 0x8160D2D0..0x8160D600 | size: 0x330
.rodata
.balign 8

# .rodata:0x0 | 0x8160D2D0 | size: 0x300
.obj lbl_8160D2D0, global
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8160D2D0

# .rodata:0x300 | 0x8160D5D0 | size: 0xC
.obj lbl_8160D5D0, global
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x0000000B
.endobj lbl_8160D5D0

# .rodata:0x30C | 0x8160D5DC | size: 0xC
.obj lbl_8160D5DC, global
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000008
.endobj lbl_8160D5DC

# .rodata:0x318 | 0x8160D5E8 | size: 0xC
.obj lbl_8160D5E8, global
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x0000000B
.endobj lbl_8160D5E8

# .rodata:0x324 | 0x8160D5F4 | size: 0xC
.obj lbl_8160D5F4, global
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000008
.endobj lbl_8160D5F4

# 0x81634A28..0x81634B08 | size: 0xE0
.data
.balign 8

# .data:0x0 | 0x81634A28 | size: 0xF
.obj lbl_81634A28, global
	.string "/meta/icon.bin"
.endobj lbl_81634A28

# .data:0xF | 0x81634A37 | size: 0x11
.obj lbl_81634A37, global
	.string "/meta/banner.bin"
.endobj lbl_81634A37

# .data:0x20 | 0x81634A48 | size: 0x10
.obj lbl_81634A48, global
	.string "/meta/sound.bin"
.endobj lbl_81634A48

# .data:0x30 | 0x81634A58 | size: 0x12
.obj lbl_81634A58, global
	.string "/arc/icon.rso.lz7"
.endobj lbl_81634A58

# .data:0x42 | 0x81634A6A | size: 0x14
.obj lbl_81634A6A, global
	.string "/arc/banner.rso.lz7"
.endobj lbl_81634A6A

# .data:0x56 | 0x81634A7E | size: 0x11
.obj lbl_81634A7E, global
	.string "/arc/icon.cs.lz7"
.endobj lbl_81634A7E

# .data:0x67 | 0x81634A8F | size: 0x13
.obj lbl_81634A8F, global
	.string "/arc/banner.cs.lz7"
.endobj lbl_81634A8F

# .data:0x7A | 0x81634AA2 | size: 0x14
.obj lbl_81634AA2, global
	.string "/meta/diskInMsg.bin"
.endobj lbl_81634AA2

# .data:0x8E | 0x81634AB6 | size: 0x16
.obj lbl_81634AB6, global
	.string "iplChannelManager.cpp"
.endobj lbl_81634AB6

# .data:0xA4 | 0x81634ACC | size: 0x30
.obj jumptable_81634ACC, local
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A4C4
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A484
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A484
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A4C4
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A484
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A484
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A484
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A484
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A484
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A454
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A4C4
	.rel nand_error_handling__Q33ipl7channel7ManagerFi, .L_8133A45C
.endobj jumptable_81634ACC

# .data:0xD4 | 0x81634AFC | size: 0xC
# ipl::channel::Manager::__vtable
.obj __vt__Q33ipl7channel7Manager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl7channel7ManagerFv
.endobj __vt__Q33ipl7channel7Manager

# 0x81696088..0x81696098 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696088 | size: 0x3
.obj lbl_81696088, global
	.string "ES"
.endobj lbl_81696088

# .sdata:0x3 | 0x8169608B | size: 0x5
.obj lbl_8169608B, global
	.string "IMET"
.endobj lbl_8169608B

# .sdata:0x8 | 0x81696090 | size: 0x8
.obj lbl_81696090, global
	.4byte 0x4E414E44
	.4byte 0x00000000
.endobj lbl_81696090

# 0x81698690..0x816986A8 | size: 0x18
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698690 | size: 0x4
# ipl::channel::Manager::mNumFinished
.obj mNumFinished__Q33ipl7channel7Manager, global
	.skip 0x4
.endobj mNumFinished__Q33ipl7channel7Manager

# .sbss:0x4 | 0x81698694 | size: 0x4
# ipl::channel::Manager::mNumValidChannel
.obj mNumValidChannel__Q33ipl7channel7Manager, global
	.skip 0x4
.endobj mNumValidChannel__Q33ipl7channel7Manager

# .sbss:0x8 | 0x81698698 | size: 0x4
# ipl::channel::Manager::mDiskChannelFixed
.obj mDiskChannelFixed__Q33ipl7channel7Manager, global
	.skip 0x4
.endobj mDiskChannelFixed__Q33ipl7channel7Manager

# .sbss:0xC | 0x8169869C | size: 0x4
# ipl::channel::Manager::msCurPage
.obj msCurPage__Q33ipl7channel7Manager, global
	.skip 0x4
.endobj msCurPage__Q33ipl7channel7Manager

# .sbss:0x10 | 0x816986A0 | size: 0x4
# ipl::channel::Manager::msCurIndex
.obj msCurIndex__Q33ipl7channel7Manager, global
	.skip 0x4
.endobj msCurIndex__Q33ipl7channel7Manager

# .sbss:0x14 | 0x816986A4 | size: 0x4
.obj gap_12_816986A4_sbss, global
.hidden gap_12_816986A4_sbss
	.skip 0x4
.endobj gap_12_816986A4_sbss
