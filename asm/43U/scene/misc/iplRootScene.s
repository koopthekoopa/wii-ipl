.include "macros.inc"
.file "iplRootScene.cpp"

# 0x813DA8E8..0x813DAB08 | size: 0x220
.text
.balign 4

# .text:0x0 | 0x813DA8E8 | size: 0x14
# ipl::scene::RootScene::create()
.fn create__Q33ipl5scene9RootSceneFv, global
/* 813DA8E8 | 80 83 00 58 */	lwz r4, 0x58(r3)
/* 813DA8EC | 7C 65 1B 78 */	mr r5, r3
/* 813DA8F0 | 80 E3 00 54 */	lwz r7, 0x54(r3)
/* 813DA8F4 | 38 C0 00 00 */	li r6, 0x0
/* 813DA8F8 | 48 02 F5 90 */	b fn_81409E88
.endfn create__Q33ipl5scene9RootSceneFv

# .text:0x14 | 0x813DA8FC | size: 0x1AC
# ipl::scene::RootScene::proc_boot_scene(int*, int*)
.fn proc_boot_scene__Q33ipl5scene9RootSceneFPiPi, global
/* 813DA8FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813DA900 | 7C 08 02 A6 */	mflr r0
/* 813DA904 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813DA908 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DA90C | 48 21 EB B1 */	bl _savegpr_26
/* 813DA910 | 3B 60 00 00 */	li r27, 0x0
/* 813DA914 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813DA918 | 93 63 00 00 */	stw r27, 0x0(r3)
/* 813DA91C | 3B 80 00 01 */	li r28, 0x1
/* 813DA920 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813DA924 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA928 | 93 64 00 00 */	stw r27, 0x0(r4)
/* 813DA92C | 7C 9A 23 78 */	mr r26, r4
/* 813DA930 | 3B E0 00 00 */	li r31, 0x0
/* 813DA934 | 9B 9D 02 BE */	stb r28, 0x2be(r29)
/* 813DA938 | 9B 9D 02 BF */	stb r28, 0x2bf(r29)
/* 813DA93C | 48 18 FD F9 */	bl fn_8156A734
/* 813DA940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA944 | 40 82 00 38 */	bne .L_813DA97C
/* 813DA948 | 48 18 FE 31 */	bl fn_8156A778
/* 813DA94C | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813DA950 | 40 82 00 18 */	bne .L_813DA968
/* 813DA954 | 38 60 00 12 */	li r3, 0x12
/* 813DA958 | 38 00 00 02 */	li r0, 0x2
/* 813DA95C | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813DA960 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 813DA964 | 48 00 01 18 */	b .L_813DAA7C
.L_813DA968:
/* 813DA968 | 38 60 00 12 */	li r3, 0x12
/* 813DA96C | 38 00 00 05 */	li r0, 0x5
/* 813DA970 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813DA974 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 813DA978 | 48 00 01 04 */	b .L_813DAA7C
.L_813DA97C:
/* 813DA97C | 38 60 00 00 */	li r3, 0x0
/* 813DA980 | 4B F8 B8 39 */	bl IsLastTicketExpired__Q33ipl7utility6ESMiscFPUx
/* 813DA984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA988 | 41 82 00 18 */	beq .L_813DA9A0
/* 813DA98C | 38 00 00 1F */	li r0, 0x1f
/* 813DA990 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 813DA994 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 813DA998 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813DA99C | 48 00 00 E0 */	b .L_813DAA7C
.L_813DA9A0:
/* 813DA9A0 | 80 1D 02 1C */	lwz r0, 0x21c(r29)
/* 813DA9A4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813DA9A8 | 41 82 00 20 */	beq .L_813DA9C8
/* 813DA9AC | 40 80 00 10 */	bge .L_813DA9BC
/* 813DA9B0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DA9B4 | 40 80 00 30 */	bge .L_813DA9E4
/* 813DA9B8 | 48 00 00 A8 */	b .L_813DAA60
.L_813DA9BC:
/* 813DA9BC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813DA9C0 | 40 80 00 A0 */	bge .L_813DAA60
/* 813DA9C4 | 48 00 00 3C */	b .L_813DAA00
.L_813DA9C8:
/* 813DA9C8 | 38 00 00 20 */	li r0, 0x20
/* 813DA9CC | 3B E0 00 01 */	li r31, 0x1
/* 813DA9D0 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 813DA9D4 | 93 7A 00 00 */	stw r27, 0x0(r26)
/* 813DA9D8 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 813DA9DC | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813DA9E0 | 48 00 00 9C */	b .L_813DAA7C
.L_813DA9E4:
/* 813DA9E4 | 9B 7D 02 BE */	stb r27, 0x2be(r29)
/* 813DA9E8 | 38 00 00 1E */	li r0, 0x1e
/* 813DA9EC | 9B 7D 02 BF */	stb r27, 0x2bf(r29)
/* 813DA9F0 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 813DA9F4 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 813DA9F8 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813DA9FC | 48 00 00 80 */	b .L_813DAA7C
.L_813DAA00:
/* 813DAA00 | 80 1D 02 20 */	lwz r0, 0x220(r29)
/* 813DAA04 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813DAA08 | 40 82 00 20 */	bne .L_813DAA28
/* 813DAA0C | 38 00 00 20 */	li r0, 0x20
/* 813DAA10 | 3B E0 00 01 */	li r31, 0x1
/* 813DAA14 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 813DAA18 | 93 9A 00 00 */	stw r28, 0x0(r26)
/* 813DAA1C | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 813DAA20 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813DAA24 | 48 00 00 58 */	b .L_813DAA7C
.L_813DAA28:
/* 813DAA28 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813DAA2C | 40 82 00 20 */	bne .L_813DAA4C
/* 813DAA30 | 38 00 00 20 */	li r0, 0x20
/* 813DAA34 | 3B E0 00 01 */	li r31, 0x1
/* 813DAA38 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 813DAA3C | 93 7A 00 00 */	stw r27, 0x0(r26)
/* 813DAA40 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 813DAA44 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813DAA48 | 48 00 00 34 */	b .L_813DAA7C
.L_813DAA4C:
/* 813DAA4C | 9B 7D 02 BE */	stb r27, 0x2be(r29)
/* 813DAA50 | 38 00 00 1A */	li r0, 0x1a
/* 813DAA54 | 9B 7D 02 BF */	stb r27, 0x2bf(r29)
/* 813DAA58 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 813DAA5C | 48 00 00 20 */	b .L_813DAA7C
.L_813DAA60:
/* 813DAA60 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813DAA64 | 38 80 00 00 */	li r4, 0x0
/* 813DAA68 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813DAA6C | 38 00 00 1A */	li r0, 0x1a
/* 813DAA70 | 98 83 02 BE */	stb r4, 0x2be(r3)
/* 813DAA74 | 98 83 02 BF */	stb r4, 0x2bf(r3)
/* 813DAA78 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_813DAA7C:
/* 813DAA7C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813DAA80 | 41 82 00 10 */	beq .L_813DAA90
/* 813DAA84 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813DAA88 | 38 80 00 00 */	li r4, 0x0
/* 813DAA8C | 4B F8 73 95 */	bl setEnable__Q23ipl11TVRCManagerFi
.L_813DAA90:
/* 813DAA90 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813DAA94 | 48 21 EA 75 */	bl _restgpr_26
/* 813DAA98 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813DAA9C | 7C 08 03 A6 */	mtlr r0
/* 813DAAA0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813DAAA4 | 4E 80 00 20 */	blr
.endfn proc_boot_scene__Q33ipl5scene9RootSceneFPiPi

# .text:0x1C0 | 0x813DAAA8 | size: 0x58
# ipl::scene::RootScene::~RootScene()
.fn __dt__Q33ipl5scene9RootSceneFv, global
/* 813DAAA8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DAAAC | 7C 08 02 A6 */	mflr r0
/* 813DAAB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DAAB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DAAB8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DAABC | 7C 9F 23 78 */	mr r31, r4
/* 813DAAC0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DAAC4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DAAC8 | 41 82 00 1C */	beq .L_813DAAE4
/* 813DAACC | 38 80 00 00 */	li r4, 0x0
/* 813DAAD0 | 48 02 F1 95 */	bl fn_81409C64
/* 813DAAD4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813DAAD8 | 40 81 00 0C */	ble .L_813DAAE4
/* 813DAADC | 7F C3 F3 78 */	mr r3, r30
/* 813DAAE0 | 48 21 D6 05 */	bl __dl__FPv
.L_813DAAE4:
/* 813DAAE4 | 7F C3 F3 78 */	mr r3, r30
/* 813DAAE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DAAEC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DAAF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DAAF4 | 7C 08 03 A6 */	mtlr r0
/* 813DAAF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DAAFC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene9RootSceneFv

# .text:0x218 | 0x813DAB00 | size: 0x8
.fn "@20@__dt__Q33ipl5scene9RootSceneFv", global
/* 813DAB00 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813DAB04 | 4B FF FF A4 */	b __dt__Q33ipl5scene9RootSceneFv
.endfn "@20@__dt__Q33ipl5scene9RootSceneFv"

# 0x81654038..0x81654088 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x81654038 | size: 0x50
# ipl::scene::RootScene::__vtable
.obj __vt__Q33ipl5scene9RootScene, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene9RootSceneFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene9RootSceneFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene4BaseFv
	.4byte create__Q33ipl5scene9RootSceneFv
	.4byte calc__Q33ipl5scene4BaseFv
	.4byte draw__Q33ipl5scene4BaseFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene9RootScene
