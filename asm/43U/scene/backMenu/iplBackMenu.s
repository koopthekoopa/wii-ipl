.include "macros.inc"
.file "iplBackMenu.cpp"

# 0x8138EA64..0x8138EDE8 | size: 0x384
.text
.balign 4

# .text:0x0 | 0x8138EA64 | size: 0x54
# ipl::scene::BackMenu::BackMenu(EGG::Heap*)
.fn __ct__Q33ipl5scene8BackMenuFPQ23EGG4Heap, global
/* 8138EA64 0005CE64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EA68 0005CE68  7C 08 02 A6 */	mflr r0
/* 8138EA6C 0005CE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EA70 0005CE70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138EA74 0005CE74  7C 7F 1B 78 */	mr r31, r3
/* 8138EA78 0005CE78  48 07 C7 91 */	bl fn_8140B208
/* 8138EA7C 0005CE7C  3C 60 81 65 */	lis r3, lbl_81648778@ha
/* 8138EA80 0005CE80  38 80 00 00 */	li r4, 0x0
/* 8138EA84 0005CE84  38 63 87 78 */	addi r3, r3, lbl_81648778@l
/* 8138EA88 0005CE88  38 00 00 02 */	li r0, 0x2
/* 8138EA8C 0005CE8C  38 A3 00 1C */	addi r5, r3, 0x1c
/* 8138EA90 0005CE90  90 7F 00 00 */	stw r3, 0x0(r31)
/* 8138EA94 0005CE94  7F E3 FB 78 */	mr r3, r31
/* 8138EA98 0005CE98  90 BF 00 14 */	stw r5, 0x14(r31)
/* 8138EA9C 0005CE9C  90 9F 00 5C */	stw r4, 0x5c(r31)
/* 8138EAA0 0005CEA0  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8138EAA4 0005CEA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138EAA8 0005CEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EAAC 0005CEAC  7C 08 03 A6 */	mtlr r0
/* 8138EAB0 0005CEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8138EAB4 0005CEB4  4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene8BackMenuFPQ23EGG4Heap

# .text:0x54 | 0x8138EAB8 | size: 0x4
# ipl::scene::BackMenu::prepare()
.fn prepare__Q33ipl5scene8BackMenuFv, global
/* 8138EAB8 0005CEB8  4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene8BackMenuFv

# .text:0x58 | 0x8138EABC | size: 0x8
# ipl::scene::BackMenu::isReady() const
.fn isReady__Q33ipl5scene8BackMenuCFv, global
/* 8138EABC 0005CEBC  38 60 00 01 */	li r3, 0x1
/* 8138EAC0 0005CEC0  4E 80 00 20 */	blr
.endfn isReady__Q33ipl5scene8BackMenuCFv

# .text:0x60 | 0x8138EAC4 | size: 0xAC
# ipl::scene::BackMenu::create()
.fn create__Q33ipl5scene8BackMenuFv, global
/* 8138EAC4 0005CEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EAC8 0005CEC8  7C 08 02 A6 */	mflr r0
/* 8138EACC 0005CECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EAD0 0005CED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138EAD4 0005CED4  7C 7F 1B 78 */	mr r31, r3
/* 8138EAD8 0005CED8  38 60 05 80 */	li r3, 0x580
/* 8138EADC 0005CEDC  48 26 95 C1 */	bl __nw__FUl
/* 8138EAE0 0005CEE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8138EAE4 0005CEE4  41 82 00 20 */	beq .L_8138EB04
/* 8138EAE8 0005CEE8  3C A0 81 65 */	lis r5, backToWiiMenu_arc@ha
/* 8138EAEC 0005CEEC  3C E0 81 65 */	lis r7, lbl_81648748@ha
/* 8138EAF0 0005CEF0  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8138EAF4 0005CEF4  38 A5 87 E0 */	addi r5, r5, backToWiiMenu_arc@l
/* 8138EAF8 0005CEF8  38 E7 87 48 */	addi r7, r7, lbl_81648748@l
/* 8138EAFC 0005CEFC  38 CD 85 B8 */	li r6, lbl_816965F8@sda21
/* 8138EB00 0005CF00  4B FD B3 F5 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPvPCcPCc
.L_8138EB04:
/* 8138EB04 0005CF04  3C 80 81 65 */	lis r4, lbl_8164875F@ha
/* 8138EB08 0005CF08  90 7F 00 58 */	stw r3, 0x58(r31)
/* 8138EB0C 0005CF0C  38 A0 00 01 */	li r5, 0x1
/* 8138EB10 0005CF10  38 84 87 5F */	addi r4, r4, lbl_8164875F@l
/* 8138EB14 0005CF14  4B FD B8 59 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 8138EB18 0005CF18  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8138EB1C 0005CF1C  4B FD BB 19 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8138EB20 0005CF20  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8138EB24 0005CF24  38 80 FF FF */	li r4, -0x1
/* 8138EB28 0005CF28  4B FD BD D1 */	bl start__Q33ipl6layout6ObjectFi
/* 8138EB2C 0005CF2C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8138EB30 0005CF30  4B FD BB D5 */	bl calc__Q33ipl6layout6ObjectFv
/* 8138EB34 0005CF34  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138EB38 0005CF38  38 00 00 00 */	li r0, 0x0
/* 8138EB3C 0005CF3C  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138EB40 0005CF40  80 64 00 B0 */	lwz r3, 0xb0(r4)
/* 8138EB44 0005CF44  98 03 00 3D */	stb r0, 0x3d(r3)
/* 8138EB48 0005CF48  80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 8138EB4C 0005CF4C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138EB50 0005CF50  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8138EB54 0005CF54  7D 89 03 A6 */	mtctr r12
/* 8138EB58 0005CF58  4E 80 04 21 */	bctrl
/* 8138EB5C 0005CF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EB60 0005CF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138EB64 0005CF64  7C 08 03 A6 */	mtlr r0
/* 8138EB68 0005CF68  38 21 00 10 */	addi r1, r1, 0x10
/* 8138EB6C 0005CF6C  4E 80 00 20 */	blr
.endfn create__Q33ipl5scene8BackMenuFv

# .text:0x10C | 0x8138EB70 | size: 0x8
# ipl::scene::BackMenu::calcCommon()
.fn calcCommon__Q33ipl5scene8BackMenuFv, global
/* 8138EB70 0005CF70  80 63 00 58 */	lwz r3, 0x58(r3)
/* 8138EB74 0005CF74  4B FD BB 90 */	b calc__Q33ipl6layout6ObjectFv
.endfn calcCommon__Q33ipl5scene8BackMenuFv

# .text:0x114 | 0x8138EB78 | size: 0x44
# ipl::scene::BackMenu::calcFadein()
.fn calcFadein__Q33ipl5scene8BackMenuFv, global
/* 8138EB78 0005CF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EB7C 0005CF7C  7C 08 02 A6 */	mflr r0
/* 8138EB80 0005CF80  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138EB84 0005CF84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EB88 0005CF88  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138EB8C 0005CF8C  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8138EB90 0005CF90  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138EB94 0005CF94  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138EB98 0005CF98  7D 89 03 A6 */	mtctr r12
/* 8138EB9C 0005CF9C  4E 80 04 21 */	bctrl
/* 8138EBA0 0005CFA0  38 03 FF FF */	subi r0, r3, 0x1
/* 8138EBA4 0005CFA4  7C 00 00 34 */	cntlzw r0, r0
/* 8138EBA8 0005CFA8  54 03 D9 7E */	srwi r3, r0, 5
/* 8138EBAC 0005CFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EBB0 0005CFB0  7C 08 03 A6 */	mtlr r0
/* 8138EBB4 0005CFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8138EBB8 0005CFB8  4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene8BackMenuFv

# .text:0x158 | 0x8138EBBC | size: 0x6C
# ipl::scene::BackMenu::calcNormal()
.fn calcNormal__Q33ipl5scene8BackMenuFv, global
/* 8138EBBC 0005CFBC  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138EBC0 0005CFC0  38 60 00 00 */	li r3, 0x0
/* 8138EBC4 0005CFC4  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138EBC8 0005CFC8  38 C0 00 00 */	li r6, 0x0
/* 8138EBCC 0005CFCC  88 04 02 B0 */	lbz r0, 0x2b0(r4)
/* 8138EBD0 0005CFD0  38 A0 00 00 */	li r5, 0x0
/* 8138EBD4 0005CFD4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8138EBD8 0005CFD8  41 82 00 20 */	beq .L_8138EBF8
/* 8138EBDC 0005CFDC  88 04 02 B6 */	lbz r0, 0x2b6(r4)
/* 8138EBE0 0005CFE0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8138EBE4 0005CFE4  41 82 00 14 */	beq .L_8138EBF8
/* 8138EBE8 0005CFE8  88 04 02 B7 */	lbz r0, 0x2b7(r4)
/* 8138EBEC 0005CFEC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8138EBF0 0005CFF0  41 82 00 08 */	beq .L_8138EBF8
/* 8138EBF4 0005CFF4  38 A0 00 01 */	li r5, 0x1
.L_8138EBF8:
/* 8138EBF8 0005CFF8  2C 05 00 00 */	cmpwi r5, 0x0
/* 8138EBFC 0005CFFC  41 82 00 1C */	beq .L_8138EC18
/* 8138EC00 0005D000  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138EC04 0005D004  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138EC08 0005D008  88 04 02 B8 */	lbz r0, 0x2b8(r4)
/* 8138EC0C 0005D00C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8138EC10 0005D010  41 82 00 08 */	beq .L_8138EC18
/* 8138EC14 0005D014  38 C0 00 01 */	li r6, 0x1
.L_8138EC18:
/* 8138EC18 0005D018  2C 06 00 00 */	cmpwi r6, 0x0
/* 8138EC1C 0005D01C  4D 82 00 20 */	beqlr
/* 8138EC20 0005D020  38 60 00 01 */	li r3, 0x1
/* 8138EC24 0005D024  4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene8BackMenuFv

# .text:0x1C4 | 0x8138EC28 | size: 0x1C
# ipl::scene::BackMenu::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene8BackMenuFv, global
/* 8138EC28 0005D028  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138EC2C 0005D02C  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138EC30 0005D030  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8138EC34 0005D034  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138EC38 0005D038  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8138EC3C 0005D03C  7D 89 03 A6 */	mtctr r12
/* 8138EC40 0005D040  4E 80 04 20 */	bctr
.endfn initCalcFadeout__Q33ipl5scene8BackMenuFv

# .text:0x1E0 | 0x8138EC44 | size: 0xE8
# ipl::scene::BackMenu::calcFadeout()
.fn calcFadeout__Q33ipl5scene8BackMenuFv, global
/* 8138EC44 0005D044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138EC48 0005D048  7C 08 02 A6 */	mflr r0
/* 8138EC4C 0005D04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8138EC50 0005D050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138EC54 0005D054  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8138EC58 0005D058  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8138EC5C 0005D05C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138EC60 0005D060  7C 7E 1B 78 */	mr r30, r3
/* 8138EC64 0005D064  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8138EC68 0005D068  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8138EC6C 0005D06C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8138EC70 0005D070  7D 89 03 A6 */	mtctr r12
/* 8138EC74 0005D074  4E 80 04 21 */	bctrl
/* 8138EC78 0005D078  2C 03 00 00 */	cmpwi r3, 0x0
/* 8138EC7C 0005D07C  40 82 00 10 */	bne .L_8138EC8C
/* 8138EC80 0005D080  38 00 00 01 */	li r0, 0x1
/* 8138EC84 0005D084  98 1F 02 BE */	stb r0, 0x2be(r31)
/* 8138EC88 0005D088  98 1F 02 BF */	stb r0, 0x2bf(r31)
.L_8138EC8C:
/* 8138EC8C 0005D08C  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138EC90 0005D090  38 80 00 00 */	li r4, 0x0
/* 8138EC94 0005D094  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138EC98 0005D098  88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 8138EC9C 0005D09C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8138ECA0 0005D0A0  41 82 00 14 */	beq .L_8138ECB4
/* 8138ECA4 0005D0A4  88 03 02 B4 */	lbz r0, 0x2b4(r3)
/* 8138ECA8 0005D0A8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8138ECAC 0005D0AC  41 82 00 08 */	beq .L_8138ECB4
/* 8138ECB0 0005D0B0  38 80 00 01 */	li r4, 0x1
.L_8138ECB4:
/* 8138ECB4 0005D0B4  2C 04 00 00 */	cmpwi r4, 0x0
/* 8138ECB8 0005D0B8  40 82 00 24 */	bne .L_8138ECDC
/* 8138ECBC 0005D0BC  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8138ECC0 0005D0C0  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8138ECC4 0005D0C4  88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 8138ECC8 0005D0C8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8138ECCC 0005D0CC  41 82 00 44 */	beq .L_8138ED10
/* 8138ECD0 0005D0D0  88 03 02 BB */	lbz r0, 0x2bb(r3)
/* 8138ECD4 0005D0D4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8138ECD8 0005D0D8  41 82 00 38 */	beq .L_8138ED10
.L_8138ECDC:
/* 8138ECDC 0005D0DC  3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 8138ECE0 0005D0E0  38 00 00 01 */	li r0, 0x1
/* 8138ECE4 0005D0E4  38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 8138ECE8 0005D0E8  7F C3 F3 78 */	mr r3, r30
/* 8138ECEC 0005D0EC  80 C7 00 B0 */	lwz r6, 0xb0(r7)
/* 8138ECF0 0005D0F0  38 80 00 04 */	li r4, 0x4
/* 8138ECF4 0005D0F4  38 A0 00 00 */	li r5, 0x0
/* 8138ECF8 0005D0F8  98 06 00 3D */	stb r0, 0x3d(r6)
/* 8138ECFC 0005D0FC  80 C7 00 9C */	lwz r6, 0x9c(r7)
/* 8138ED00 0005D100  90 06 00 08 */	stw r0, 0x8(r6)
/* 8138ED04 0005D104  48 07 B2 91 */	bl fn_81409F94
/* 8138ED08 0005D108  38 60 00 01 */	li r3, 0x1
/* 8138ED0C 0005D10C  48 00 00 08 */	b .L_8138ED14
.L_8138ED10:
/* 8138ED10 0005D110  38 60 00 00 */	li r3, 0x0
.L_8138ED14:
/* 8138ED14 0005D114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138ED18 0005D118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138ED1C 0005D11C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138ED20 0005D120  7C 08 03 A6 */	mtlr r0
/* 8138ED24 0005D124  38 21 00 10 */	addi r1, r1, 0x10
/* 8138ED28 0005D128  4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene8BackMenuFv

# .text:0x2C8 | 0x8138ED2C | size: 0x50
# ipl::scene::BackMenu::draw()
.fn draw__Q33ipl5scene8BackMenuFv, global
/* 8138ED2C 0005D12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138ED30 0005D130  7C 08 02 A6 */	mflr r0
/* 8138ED34 0005D134  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8138ED38 0005D138  90 01 00 14 */	stw r0, 0x14(r1)
/* 8138ED3C 0005D13C  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8138ED40 0005D140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138ED44 0005D144  7C 7F 1B 78 */	mr r31, r3
/* 8138ED48 0005D148  80 64 00 64 */	lwz r3, 0x64(r4)
/* 8138ED4C 0005D14C  80 03 01 00 */	lwz r0, 0x100(r3)
/* 8138ED50 0005D150  2C 00 00 01 */	cmpwi r0, 0x1
/* 8138ED54 0005D154  40 82 00 14 */	bne .L_8138ED68
/* 8138ED58 0005D158  38 60 00 00 */	li r3, 0x0
/* 8138ED5C 0005D15C  4B FD 3D 11 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 8138ED60 0005D160  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8138ED64 0005D164  4B FD BA 39 */	bl draw__Q33ipl6layout6ObjectFv
.L_8138ED68:
/* 8138ED68 0005D168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138ED6C 0005D16C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138ED70 0005D170  7C 08 03 A6 */	mtlr r0
/* 8138ED74 0005D174  38 21 00 10 */	addi r1, r1, 0x10
/* 8138ED78 0005D178  4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene8BackMenuFv

# .text:0x318 | 0x8138ED7C | size: 0x4
# ipl::scene::FaderSceneBase::calcCommonAfter()
.fn calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv, global
/* 8138ED7C 0005D17C  4E 80 00 20 */	blr
.endfn calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv

# .text:0x31C | 0x8138ED80 | size: 0x4
# ipl::scene::FaderSceneBase::initCalcNormal()
.fn initCalcNormal__Q33ipl5scene14FaderSceneBaseFv, global
/* 8138ED80 0005D180  4E 80 00 20 */	blr
.endfn initCalcNormal__Q33ipl5scene14FaderSceneBaseFv

# .text:0x320 | 0x8138ED84 | size: 0x5C
# ipl::scene::BackMenu::~BackMenu()
.fn __dt__Q33ipl5scene8BackMenuFv, global
/* 8138ED84 0005D184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8138ED88 0005D188  7C 08 02 A6 */	mflr r0
/* 8138ED8C 0005D18C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8138ED90 0005D190  90 01 00 14 */	stw r0, 0x14(r1)
/* 8138ED94 0005D194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8138ED98 0005D198  7C 9F 23 78 */	mr r31, r4
/* 8138ED9C 0005D19C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8138EDA0 0005D1A0  7C 7E 1B 78 */	mr r30, r3
/* 8138EDA4 0005D1A4  41 82 00 20 */	beq .L_8138EDC4
/* 8138EDA8 0005D1A8  41 82 00 0C */	beq .L_8138EDB4
/* 8138EDAC 0005D1AC  38 80 00 00 */	li r4, 0x0
/* 8138EDB0 0005D1B0  48 07 AE B5 */	bl fn_81409C64
.L_8138EDB4:
/* 8138EDB4 0005D1B4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8138EDB8 0005D1B8  40 81 00 0C */	ble .L_8138EDC4
/* 8138EDBC 0005D1BC  7F C3 F3 78 */	mr r3, r30
/* 8138EDC0 0005D1C0  48 26 93 25 */	bl __dl__FPv
.L_8138EDC4:
/* 8138EDC4 0005D1C4  7F C3 F3 78 */	mr r3, r30
/* 8138EDC8 0005D1C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8138EDCC 0005D1CC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8138EDD0 0005D1D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8138EDD4 0005D1D4  7C 08 03 A6 */	mtlr r0
/* 8138EDD8 0005D1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8138EDDC 0005D1DC  4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene8BackMenuFv

# .text:0x37C | 0x8138EDE0 | size: 0x8
.fn "@20@__dt__Q33ipl5scene8BackMenuFv", global
/* 8138EDE0 0005D1E0  38 63 FF EC */	subi r3, r3, 0x14
/* 8138EDE4 0005D1E4  4B FF FF A0 */	b __dt__Q33ipl5scene8BackMenuFv
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
