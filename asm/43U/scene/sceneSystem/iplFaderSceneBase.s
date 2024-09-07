.include "macros.inc"
.file "iplFaderSceneBase.cpp"

# 0x8140B208..0x8140B3B0 | size: 0x1A8
.text
.balign 4

# .text:0x0 | 0x8140B208 | size: 0x4C
# ipl::scene::FaderSceneBase::FaderSceneBase(EGG::Heap*)
.fn __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap, global
/* 8140B208 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140B20C | 7C 08 02 A6 */	mflr r0
/* 8140B210 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140B214 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140B218 | 7C 7F 1B 78 */	mr r31, r3
/* 8140B21C | 4B FF E9 D1 */	bl __ct__Q33ipl5scene4BaseFPQ23EGG4Heap
/* 8140B220 | 3C 80 81 66 */	lis r4, __vt__Q33ipl5scene14FaderSceneBase@ha
/* 8140B224 | 38 00 00 00 */	li r0, 0x0
/* 8140B228 | 38 84 89 30 */	addi r4, r4, __vt__Q33ipl5scene14FaderSceneBase@l
/* 8140B22C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 8140B230 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 8140B234 | 7F E3 FB 78 */	mr r3, r31
/* 8140B238 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 8140B23C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8140B240 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140B244 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140B248 | 7C 08 03 A6 */	mtlr r0
/* 8140B24C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140B250 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap

# .text:0x4C | 0x8140B254 | size: 0x14C
# ipl::scene::FaderSceneBase::calc()
.fn calc__Q33ipl5scene14FaderSceneBaseFv, global
/* 8140B254 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140B258 | 7C 08 02 A6 */	mflr r0
/* 8140B25C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140B260 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140B264 | 7C 7F 1B 78 */	mr r31, r3
/* 8140B268 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 8140B26C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8140B270 | 41 82 00 14 */	beq .L_8140B284
/* 8140B274 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140B278 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8140B27C | 7D 89 03 A6 */	mtctr r12
/* 8140B280 | 4E 80 04 21 */	bctrl
.L_8140B284:
/* 8140B284 | 80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8140B288 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140B28C | 41 82 00 6C */	beq .L_8140B2F8
/* 8140B290 | 40 80 00 14 */	bge .L_8140B2A4
/* 8140B294 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140B298 | 41 82 00 1C */	beq .L_8140B2B4
/* 8140B29C | 40 80 00 40 */	bge .L_8140B2DC
/* 8140B2A0 | 48 00 00 CC */	b .L_8140B36C
.L_8140B2A4:
/* 8140B2A4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8140B2A8 | 41 82 00 94 */	beq .L_8140B33C
/* 8140B2AC | 40 80 00 C0 */	bge .L_8140B36C
/* 8140B2B0 | 48 00 00 70 */	b .L_8140B320
.L_8140B2B4:
/* 8140B2B4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140B2B8 | 7F E3 FB 78 */	mr r3, r31
/* 8140B2BC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8140B2C0 | 7D 89 03 A6 */	mtctr r12
/* 8140B2C4 | 4E 80 04 21 */	bctrl
/* 8140B2C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140B2CC | 41 82 00 A0 */	beq .L_8140B36C
/* 8140B2D0 | 38 00 00 01 */	li r0, 0x1
/* 8140B2D4 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 8140B2D8 | 48 00 00 94 */	b .L_8140B36C
.L_8140B2DC:
/* 8140B2DC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140B2E0 | 7F E3 FB 78 */	mr r3, r31
/* 8140B2E4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8140B2E8 | 7D 89 03 A6 */	mtctr r12
/* 8140B2EC | 4E 80 04 21 */	bctrl
/* 8140B2F0 | 38 00 00 02 */	li r0, 0x2
/* 8140B2F4 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_8140B2F8:
/* 8140B2F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140B2FC | 7F E3 FB 78 */	mr r3, r31
/* 8140B300 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8140B304 | 7D 89 03 A6 */	mtctr r12
/* 8140B308 | 4E 80 04 21 */	bctrl
/* 8140B30C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140B310 | 41 82 00 5C */	beq .L_8140B36C
/* 8140B314 | 38 00 00 03 */	li r0, 0x3
/* 8140B318 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 8140B31C | 48 00 00 50 */	b .L_8140B36C
.L_8140B320:
/* 8140B320 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140B324 | 7F E3 FB 78 */	mr r3, r31
/* 8140B328 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8140B32C | 7D 89 03 A6 */	mtctr r12
/* 8140B330 | 4E 80 04 21 */	bctrl
/* 8140B334 | 38 00 00 04 */	li r0, 0x4
/* 8140B338 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_8140B33C:
/* 8140B33C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140B340 | 7F E3 FB 78 */	mr r3, r31
/* 8140B344 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8140B348 | 7D 89 03 A6 */	mtctr r12
/* 8140B34C | 4E 80 04 21 */	bctrl
/* 8140B350 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140B354 | 41 82 00 18 */	beq .L_8140B36C
/* 8140B358 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8140B35C | 38 00 00 05 */	li r0, 0x5
/* 8140B360 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 8140B364 | 60 60 00 02 */	ori r0, r3, 0x2
/* 8140B368 | 90 1F 00 2C */	stw r0, 0x2c(r31)
.L_8140B36C:
/* 8140B36C | 80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8140B370 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8140B374 | 41 82 00 18 */	beq .L_8140B38C
/* 8140B378 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140B37C | 7F E3 FB 78 */	mr r3, r31
/* 8140B380 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8140B384 | 7D 89 03 A6 */	mtctr r12
/* 8140B388 | 4E 80 04 21 */	bctrl
.L_8140B38C:
/* 8140B38C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140B390 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140B394 | 7C 08 03 A6 */	mtlr r0
/* 8140B398 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140B39C | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene14FaderSceneBaseFv

# .text:0x198 | 0x8140B3A0 | size: 0x8
# ipl::scene::FaderSceneBase::calcNormal()
.fn calcNormal__Q33ipl5scene14FaderSceneBaseFv, global
/* 8140B3A0 | 38 60 00 01 */	li r3, 0x1
/* 8140B3A4 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene14FaderSceneBaseFv

# .text:0x1A0 | 0x8140B3A8 | size: 0x8
.fn "@20@__dt__Q33ipl5scene14FaderSceneBaseFv", global
/* 8140B3A8 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8140B3AC | 4B F7 63 F0 */	b __dt__Q33ipl5scene14FaderSceneBaseFv
.endfn "@20@__dt__Q33ipl5scene14FaderSceneBaseFv"

# 0x81658930..0x81658998 | size: 0x68
.data
.balign 8

# .data:0x0 | 0x81658930 | size: 0x68
# ipl::scene::FaderSceneBase::__vtable
.obj __vt__Q33ipl5scene14FaderSceneBase, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene14FaderSceneBaseFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene14FaderSceneBaseFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene4BaseFv
	.4byte create__Q33ipl5scene4BaseFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene4BaseFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadeout__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
.endobj __vt__Q33ipl5scene14FaderSceneBase
