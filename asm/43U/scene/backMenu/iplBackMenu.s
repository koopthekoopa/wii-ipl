.include "macros.inc"
.file "iplBackMenu.cpp"

# 0x8138EA64..0x8138EDE8 | size: 0x384
.text
.balign 4

# .text:0x0 | 0x8138EA64 | size: 0x54
# ipl::scene::BackMenu::BackMenu(EGG::Heap*)
.fn __ct__Q33ipl5scene8BackMenuFPQ23EGG4Heap, global
/* 8138EA64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EA68 | 7C 08 02 A6 */	mflr r0
/* 8138EA6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EA70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138EA74 | 7C 7F 1B 78 */	mr r31, r3
/* 8138EA78 | 48 07 C7 91 */	bl fn_8140B208
/* 8138EA7C | 3C 60 81 65 */	lis r3, lbl_81648778@ha
/* 8138EA80 | 38 80 00 00 */	li r4, 0x0
/* 8138EA84 | 38 63 87 78 */	addi r3, r3, lbl_81648778@l
/* 8138EA88 | 38 00 00 02 */	li r0, 0x2
/* 8138EA8C | 38 A3 00 1C */	addi r5, r3, 0x1c
/* 8138EA90 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8138EA94 | 7F E3 FB 78 */	mr r3, r31
/* 8138EA98 | 90 BF 00 14 */	stw r5, 0x14(r31)
/* 8138EA9C | 90 9F 00 5C */	stw r4, 0x5c(r31)
/* 8138EAA0 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 8138EAA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138EAA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EAAC | 7C 08 03 A6 */	mtlr r0
/* 8138EAB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138EAB4 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene8BackMenuFPQ23EGG4Heap

# .text:0x54 | 0x8138EAB8 | size: 0x4
# ipl::scene::BackMenu::prepare()
.fn prepare__Q33ipl5scene8BackMenuFv, global
/* 8138EAB8 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene8BackMenuFv

# .text:0x58 | 0x8138EABC | size: 0x8
# ipl::scene::BackMenu::isReady() const
.fn isReady__Q33ipl5scene8BackMenuCFv, global
/* 8138EABC | 38 60 00 01 */	li r3, 0x1
/* 8138EAC0 | 4E 80 00 20 */	blr
.endfn isReady__Q33ipl5scene8BackMenuCFv

# .text:0x60 | 0x8138EAC4 | size: 0xAC
# ipl::scene::BackMenu::create()
.fn create__Q33ipl5scene8BackMenuFv, global
/* 8138EAC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EAC8 | 7C 08 02 A6 */	mflr r0
/* 8138EACC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EAD0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138EAD4 | 7C 7F 1B 78 */	mr r31, r3
/* 8138EAD8 | 38 60 05 80 */	li r3, 0x580
/* 8138EADC | 48 26 95 C1 */	bl __nw__FUl
/* 8138EAE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138EAE4 | 41 82 00 20 */	beq .L_8138EB04
/* 8138EAE8 | 3C A0 81 65 */	lis r5, backToWiiMenu_arc@ha
/* 8138EAEC | 3C E0 81 65 */	lis r7, lbl_81648748@ha
/* 8138EAF0 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8138EAF4 | 38 A5 87 E0 */	addi r5, r5, backToWiiMenu_arc@l
/* 8138EAF8 | 38 E7 87 48 */	addi r7, r7, lbl_81648748@l
/* 8138EAFC | 38 CD 85 B8 */	li r6, lbl_816965F8@sda21
/* 8138EB00 | 4B FD B3 F5 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPvPCcPCc
.L_8138EB04:
/* 8138EB04 | 3C 80 81 65 */	lis r4, lbl_8164875F@ha
/* 8138EB08 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 8138EB0C | 38 A0 00 01 */	li r5, 0x1
/* 8138EB10 | 38 84 87 5F */	addi r4, r4, lbl_8164875F@l
/* 8138EB14 | 4B FD B8 59 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 8138EB18 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8138EB1C | 4B FD BB 19 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8138EB20 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8138EB24 | 38 80 FF FF */	li r4, -0x1
/* 8138EB28 | 4B FD BD D1 */	bl start__Q33ipl6layout6ObjectFi
/* 8138EB2C | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8138EB30 | 4B FD BB D5 */	bl calc__Q33ipl6layout6ObjectFv
/* 8138EB34 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138EB38 | 38 00 00 00 */	li r0, 0x0
/* 8138EB3C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138EB40 | 80 64 00 B0 */	lwz r3, 0xb0(r4)
/* 8138EB44 | 98 03 00 3D */	stb r0, 0x3d(r3)
/* 8138EB48 | 80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 8138EB4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138EB50 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138EB54 | 7D 89 03 A6 */	mtctr r12
/* 8138EB58 | 4E 80 04 21 */	bctrl
/* 8138EB5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EB60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138EB64 | 7C 08 03 A6 */	mtlr r0
/* 8138EB68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138EB6C | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene8BackMenuFv

# .text:0x10C | 0x8138EB70 | size: 0x8
# ipl::scene::BackMenu::calcCommon()
.fn calcCommon__Q33ipl5scene8BackMenuFv, global
/* 8138EB70 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 8138EB74 | 4B FD BB 90 */	b calc__Q33ipl6layout6ObjectFv
.endfn calcCommon__Q33ipl5scene8BackMenuFv

# .text:0x114 | 0x8138EB78 | size: 0x44
# ipl::scene::BackMenu::calcFadein()
.fn calcFadein__Q33ipl5scene8BackMenuFv, global
/* 8138EB78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EB7C | 7C 08 02 A6 */	mflr r0
/* 8138EB80 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138EB84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EB88 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138EB8C | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8138EB90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138EB94 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138EB98 | 7D 89 03 A6 */	mtctr r12
/* 8138EB9C | 4E 80 04 21 */	bctrl
/* 8138EBA0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8138EBA4 | 7C 00 00 34 */	cntlzw r0, r0
/* 8138EBA8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8138EBAC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EBB0 | 7C 08 03 A6 */	mtlr r0
/* 8138EBB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138EBB8 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene8BackMenuFv

# .text:0x158 | 0x8138EBBC | size: 0x6C
# ipl::scene::BackMenu::calcNormal()
.fn calcNormal__Q33ipl5scene8BackMenuFv, global
/* 8138EBBC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138EBC0 | 38 60 00 00 */	li r3, 0x0
/* 8138EBC4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138EBC8 | 38 C0 00 00 */	li r6, 0x0
/* 8138EBCC | 88 04 02 B0 */	lbz r0, 0x2b0(r4)
/* 8138EBD0 | 38 A0 00 00 */	li r5, 0x0
/* 8138EBD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138EBD8 | 41 82 00 20 */	beq .L_8138EBF8
/* 8138EBDC | 88 04 02 B6 */	lbz r0, 0x2b6(r4)
/* 8138EBE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138EBE4 | 41 82 00 14 */	beq .L_8138EBF8
/* 8138EBE8 | 88 04 02 B7 */	lbz r0, 0x2b7(r4)
/* 8138EBEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138EBF0 | 41 82 00 08 */	beq .L_8138EBF8
/* 8138EBF4 | 38 A0 00 01 */	li r5, 0x1
.L_8138EBF8:
/* 8138EBF8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8138EBFC | 41 82 00 1C */	beq .L_8138EC18
/* 8138EC00 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138EC04 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138EC08 | 88 04 02 B8 */	lbz r0, 0x2b8(r4)
/* 8138EC0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138EC10 | 41 82 00 08 */	beq .L_8138EC18
/* 8138EC14 | 38 C0 00 01 */	li r6, 0x1
.L_8138EC18:
/* 8138EC18 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8138EC1C | 4D 82 00 20 */	beqlr
/* 8138EC20 | 38 60 00 01 */	li r3, 0x1
/* 8138EC24 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene8BackMenuFv

# .text:0x1C4 | 0x8138EC28 | size: 0x1C
# ipl::scene::BackMenu::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene8BackMenuFv, global
/* 8138EC28 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138EC2C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138EC30 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8138EC34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138EC38 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8138EC3C | 7D 89 03 A6 */	mtctr r12
/* 8138EC40 | 4E 80 04 20 */	bctr
.endfn initCalcFadeout__Q33ipl5scene8BackMenuFv

# .text:0x1E0 | 0x8138EC44 | size: 0xE8
# ipl::scene::BackMenu::calcFadeout()
.fn calcFadeout__Q33ipl5scene8BackMenuFv, global
/* 8138EC44 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EC48 | 7C 08 02 A6 */	mflr r0
/* 8138EC4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EC50 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138EC54 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138EC58 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138EC5C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138EC60 | 7C 7E 1B 78 */	mr r30, r3
/* 8138EC64 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8138EC68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138EC6C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138EC70 | 7D 89 03 A6 */	mtctr r12
/* 8138EC74 | 4E 80 04 21 */	bctrl
/* 8138EC78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138EC7C | 40 82 00 10 */	bne .L_8138EC8C
/* 8138EC80 | 38 00 00 01 */	li r0, 0x1
/* 8138EC84 | 98 1F 02 BE */	stb r0, 0x2be(r31)
/* 8138EC88 | 98 1F 02 BF */	stb r0, 0x2bf(r31)
.L_8138EC8C:
/* 8138EC8C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138EC90 | 38 80 00 00 */	li r4, 0x0
/* 8138EC94 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138EC98 | 88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 8138EC9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138ECA0 | 41 82 00 14 */	beq .L_8138ECB4
/* 8138ECA4 | 88 03 02 B4 */	lbz r0, 0x2b4(r3)
/* 8138ECA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138ECAC | 41 82 00 08 */	beq .L_8138ECB4
/* 8138ECB0 | 38 80 00 01 */	li r4, 0x1
.L_8138ECB4:
/* 8138ECB4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8138ECB8 | 40 82 00 24 */	bne .L_8138ECDC
/* 8138ECBC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138ECC0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138ECC4 | 88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 8138ECC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138ECCC | 41 82 00 44 */	beq .L_8138ED10
/* 8138ECD0 | 88 03 02 BB */	lbz r0, 0x2bb(r3)
/* 8138ECD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8138ECD8 | 41 82 00 38 */	beq .L_8138ED10
.L_8138ECDC:
/* 8138ECDC | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 8138ECE0 | 38 00 00 01 */	li r0, 0x1
/* 8138ECE4 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 8138ECE8 | 7F C3 F3 78 */	mr r3, r30
/* 8138ECEC | 80 C7 00 B0 */	lwz r6, 0xb0(r7)
/* 8138ECF0 | 38 80 00 04 */	li r4, 0x4
/* 8138ECF4 | 38 A0 00 00 */	li r5, 0x0
/* 8138ECF8 | 98 06 00 3D */	stb r0, 0x3d(r6)
/* 8138ECFC | 80 C7 00 9C */	lwz r6, 0x9c(r7)
/* 8138ED00 | 90 06 00 08 */	stw r0, 0x8(r6)
/* 8138ED04 | 48 07 B2 91 */	bl fn_81409F94
/* 8138ED08 | 38 60 00 01 */	li r3, 0x1
/* 8138ED0C | 48 00 00 08 */	b .L_8138ED14
.L_8138ED10:
/* 8138ED10 | 38 60 00 00 */	li r3, 0x0
.L_8138ED14:
/* 8138ED14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138ED18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138ED1C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138ED20 | 7C 08 03 A6 */	mtlr r0
/* 8138ED24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138ED28 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene8BackMenuFv

# .text:0x2C8 | 0x8138ED2C | size: 0x50
# ipl::scene::BackMenu::draw()
.fn draw__Q33ipl5scene8BackMenuFv, global
/* 8138ED2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138ED30 | 7C 08 02 A6 */	mflr r0
/* 8138ED34 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138ED38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138ED3C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138ED40 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138ED44 | 7C 7F 1B 78 */	mr r31, r3
/* 8138ED48 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 8138ED4C | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 8138ED50 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8138ED54 | 40 82 00 14 */	bne .L_8138ED68
/* 8138ED58 | 38 60 00 00 */	li r3, 0x0
/* 8138ED5C | 4B FD 3D 11 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 8138ED60 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8138ED64 | 4B FD BA 39 */	bl draw__Q33ipl6layout6ObjectFv
.L_8138ED68:
/* 8138ED68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138ED6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138ED70 | 7C 08 03 A6 */	mtlr r0
/* 8138ED74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138ED78 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene8BackMenuFv

# .text:0x318 | 0x8138ED7C | size: 0x4
# ipl::scene::FaderSceneBase::calcCommonAfter()
.fn calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv, global
/* 8138ED7C | 4E 80 00 20 */	blr
.endfn calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv

# .text:0x31C | 0x8138ED80 | size: 0x4
# ipl::scene::FaderSceneBase::initCalcNormal()
.fn initCalcNormal__Q33ipl5scene14FaderSceneBaseFv, global
/* 8138ED80 | 4E 80 00 20 */	blr
.endfn initCalcNormal__Q33ipl5scene14FaderSceneBaseFv

# .text:0x320 | 0x8138ED84 | size: 0x5C
# ipl::scene::BackMenu::~BackMenu()
.fn __dt__Q33ipl5scene8BackMenuFv, global
/* 8138ED84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138ED88 | 7C 08 02 A6 */	mflr r0
/* 8138ED8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8138ED90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8138ED94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138ED98 | 7C 9F 23 78 */	mr r31, r4
/* 8138ED9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138EDA0 | 7C 7E 1B 78 */	mr r30, r3
/* 8138EDA4 | 41 82 00 20 */	beq .L_8138EDC4
/* 8138EDA8 | 41 82 00 0C */	beq .L_8138EDB4
/* 8138EDAC | 38 80 00 00 */	li r4, 0x0
/* 8138EDB0 | 48 07 AE B5 */	bl fn_81409C64
.L_8138EDB4:
/* 8138EDB4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8138EDB8 | 40 81 00 0C */	ble .L_8138EDC4
/* 8138EDBC | 7F C3 F3 78 */	mr r3, r30
/* 8138EDC0 | 48 26 93 25 */	bl __dl__FPv
.L_8138EDC4:
/* 8138EDC4 | 7F C3 F3 78 */	mr r3, r30
/* 8138EDC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138EDCC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138EDD0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EDD4 | 7C 08 03 A6 */	mtlr r0
/* 8138EDD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8138EDDC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene8BackMenuFv

# .text:0x37C | 0x8138EDE0 | size: 0x8
.fn "@20@__dt__Q33ipl5scene8BackMenuFv", global
/* 8138EDE0 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8138EDE4 | 4B FF FF A0 */	b __dt__Q33ipl5scene8BackMenuFv
.endfn "@20@__dt__Q33ipl5scene8BackMenuFv"

# 0x81648748..0x816487E0 | size: 0x98
.data
.balign 8

# .data:0x0 | 0x81648748 | size: 0x17
.obj lbl_81648748, global
	.string "my_BackToWiiMenu.brlyt"
.endobj lbl_81648748

# .data:0x17 | 0x8164875F | size: 0x19
.obj lbl_8164875F, global
	.4byte 0x6D795F42
	.4byte 0x61636B54
	.4byte 0x6F576969
	.4byte 0x4D656E75
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.byte 0x00
.endobj lbl_8164875F

# .data:0x30 | 0x81648778 | size: 0x68
.obj lbl_81648778, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene8BackMenuFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene8BackMenuFv"
	.4byte isReady__Q33ipl5scene8BackMenuCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene8BackMenuFv
	.4byte create__Q33ipl5scene8BackMenuFv
	.4byte fn_8140B254
	.4byte draw__Q33ipl5scene8BackMenuFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene8BackMenuFv
	.4byte calcCommon__Q33ipl5scene8BackMenuFv
	.4byte calcFadein__Q33ipl5scene8BackMenuFv
	.4byte calcNormal__Q33ipl5scene8BackMenuFv
	.4byte calcFadeout__Q33ipl5scene8BackMenuFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
.endobj lbl_81648778

# 0x816965F8..0x81696600 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816965F8 | size: 0x8
.obj lbl_816965F8, global
	.4byte 0x61726300
	.4byte 0x00000000
.endobj lbl_816965F8
