.include "macros.inc"
.file "MyBg.cpp"

# 0x814454D8..0x81445590 | size: 0xB8
.text
.balign 4

# .text:0x0 | 0x814454D8 | size: 0x48
# textinput::extend::bg::LayoutByNW4R::create(MEMAllocator*)
.fn create__Q49textinput6extend2bg12LayoutByNW4RFP12MEMAllocator, global
/* 814454D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814454DC | 7C 08 02 A6 */	mflr r0
/* 814454E0 | 38 A0 00 00 */	li r5, 0x0
/* 814454E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814454E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814454EC | 7C 7F 1B 78 */	mr r31, r3
/* 814454F0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814454F4 | 4B FF 0D 21 */	bl createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
/* 814454F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814454FC | 7F E3 FB 78 */	mr r3, r31
/* 81445500 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81445504 | 7D 89 03 A6 */	mtctr r12
/* 81445508 | 4E 80 04 21 */	bctrl
/* 8144550C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81445510 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81445514 | 7C 08 03 A6 */	mtlr r0
/* 81445518 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8144551C | 4E 80 00 20 */	blr
.endfn create__Q49textinput6extend2bg12LayoutByNW4RFP12MEMAllocator

# .text:0x48 | 0x81445520 | size: 0x58
# textinput::extend::bg::LayoutByNW4R::init()
.fn init__Q49textinput6extend2bg12LayoutByNW4RFv, global
/* 81445520 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81445524 | 7C 08 02 A6 */	mflr r0
/* 81445528 | 38 80 00 00 */	li r4, 0x0
/* 8144552C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81445530 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81445534 | 7C 7F 1B 78 */	mr r31, r3
/* 81445538 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8144553C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81445540 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81445544 | 7D 89 03 A6 */	mtctr r12
/* 81445548 | 4E 80 04 21 */	bctrl
/* 8144554C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81445550 | 38 9F 00 1C */	addi r4, r31, 0x1c
/* 81445554 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81445558 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8144555C | 7D 89 03 A6 */	mtctr r12
/* 81445560 | 4E 80 04 21 */	bctrl
/* 81445564 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81445568 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144556C | 7C 08 03 A6 */	mtlr r0
/* 81445570 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81445574 | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend2bg12LayoutByNW4RFv

# .text:0xA0 | 0x81445578 | size: 0x8
# textinput::extend::bg::LayoutByNW4R::@4@draw()
.fn "@4@draw__Q49textinput6extend2bg12LayoutByNW4RFv", global
/* 81445578 | 38 63 FF FC */	subi r3, r3, 0x4
/* 8144557C | 4B FF 9C B4 */	b draw__Q49textinput6extend2bg12LayoutByNW4RFv
.endfn "@4@draw__Q49textinput6extend2bg12LayoutByNW4RFv"

# .text:0xA8 | 0x81445580 | size: 0x8
# textinput::extend::bg::LayoutByNW4R::@4@init()
.fn "@4@init__Q49textinput6extend2bg12LayoutByNW4RFv", global
/* 81445580 | 38 63 FF FC */	subi r3, r3, 0x4
/* 81445584 | 4B FF FF 9C */	b init__Q49textinput6extend2bg12LayoutByNW4RFv
.endfn "@4@init__Q49textinput6extend2bg12LayoutByNW4RFv"

# .text:0xB0 | 0x81445588 | size: 0x8
.fn "@4@__dt__Q49textinput6extend2bg12LayoutByNW4RFv", global
/* 81445588 | 38 63 FF FC */	subi r3, r3, 0x4
/* 8144558C | 4B FF 6C 6C */	b __dt__Q49textinput6extend2bg12LayoutByNW4RFv
.endfn "@4@__dt__Q49textinput6extend2bg12LayoutByNW4RFv"
